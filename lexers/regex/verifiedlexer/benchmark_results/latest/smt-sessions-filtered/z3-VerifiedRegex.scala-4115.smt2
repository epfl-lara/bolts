; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!220308 () Bool)

(assert start!220308)

(declare-fun b!2257790 () Bool)

(declare-fun b_free!66557 () Bool)

(declare-fun b_next!67261 () Bool)

(assert (=> b!2257790 (= b_free!66557 (not b_next!67261))))

(declare-fun tp!713826 () Bool)

(declare-fun b_and!177281 () Bool)

(assert (=> b!2257790 (= tp!713826 b_and!177281)))

(declare-fun b_free!66559 () Bool)

(declare-fun b_next!67263 () Bool)

(assert (=> b!2257790 (= b_free!66559 (not b_next!67263))))

(declare-fun tp!713818 () Bool)

(declare-fun b_and!177283 () Bool)

(assert (=> b!2257790 (= tp!713818 b_and!177283)))

(declare-fun b!2257781 () Bool)

(declare-fun b_free!66561 () Bool)

(declare-fun b_next!67265 () Bool)

(assert (=> b!2257781 (= b_free!66561 (not b_next!67265))))

(declare-fun tp!713830 () Bool)

(declare-fun b_and!177285 () Bool)

(assert (=> b!2257781 (= tp!713830 b_and!177285)))

(declare-fun b_free!66563 () Bool)

(declare-fun b_next!67267 () Bool)

(assert (=> b!2257781 (= b_free!66563 (not b_next!67267))))

(declare-fun tp!713822 () Bool)

(declare-fun b_and!177287 () Bool)

(assert (=> b!2257781 (= tp!713822 b_and!177287)))

(declare-fun b!2257775 () Bool)

(declare-fun b_free!66565 () Bool)

(declare-fun b_next!67269 () Bool)

(assert (=> b!2257775 (= b_free!66565 (not b_next!67269))))

(declare-fun tp!713824 () Bool)

(declare-fun b_and!177289 () Bool)

(assert (=> b!2257775 (= tp!713824 b_and!177289)))

(declare-fun b_free!66567 () Bool)

(declare-fun b_next!67271 () Bool)

(assert (=> b!2257775 (= b_free!66567 (not b_next!67271))))

(declare-fun tp!713814 () Bool)

(declare-fun b_and!177291 () Bool)

(assert (=> b!2257775 (= tp!713814 b_and!177291)))

(declare-fun b!2257780 () Bool)

(declare-fun b_free!66569 () Bool)

(declare-fun b_next!67273 () Bool)

(assert (=> b!2257780 (= b_free!66569 (not b_next!67273))))

(declare-fun tp!713825 () Bool)

(declare-fun b_and!177293 () Bool)

(assert (=> b!2257780 (= tp!713825 b_and!177293)))

(declare-fun b_free!66571 () Bool)

(declare-fun b_next!67275 () Bool)

(assert (=> b!2257780 (= b_free!66571 (not b_next!67275))))

(declare-fun tp!713816 () Bool)

(declare-fun b_and!177295 () Bool)

(assert (=> b!2257780 (= tp!713816 b_and!177295)))

(declare-fun b!2257769 () Bool)

(declare-fun res!965236 () Bool)

(declare-fun e!1445505 () Bool)

(assert (=> b!2257769 (=> (not res!965236) (not e!1445505))))

(declare-datatypes ((LexerInterface!3858 0))(
  ( (LexerInterfaceExt!3855 (__x!17906 Int)) (Lexer!3856) )
))
(declare-fun thiss!16613 () LexerInterface!3858)

(declare-datatypes ((List!26901 0))(
  ( (Nil!26807) (Cons!26807 (h!32208 (_ BitVec 16)) (t!201369 List!26901)) )
))
(declare-datatypes ((TokenValue!4423 0))(
  ( (FloatLiteralValue!8846 (text!31406 List!26901)) (TokenValueExt!4422 (__x!17907 Int)) (Broken!22115 (value!135232 List!26901)) (Object!4516) (End!4423) (Def!4423) (Underscore!4423) (Match!4423) (Else!4423) (Error!4423) (Case!4423) (If!4423) (Extends!4423) (Abstract!4423) (Class!4423) (Val!4423) (DelimiterValue!8846 (del!4483 List!26901)) (KeywordValue!4429 (value!135233 List!26901)) (CommentValue!8846 (value!135234 List!26901)) (WhitespaceValue!8846 (value!135235 List!26901)) (IndentationValue!4423 (value!135236 List!26901)) (String!29218) (Int32!4423) (Broken!22116 (value!135237 List!26901)) (Boolean!4424) (Unit!39731) (OperatorValue!4426 (op!4483 List!26901)) (IdentifierValue!8846 (value!135238 List!26901)) (IdentifierValue!8847 (value!135239 List!26901)) (WhitespaceValue!8847 (value!135240 List!26901)) (True!8846) (False!8846) (Broken!22117 (value!135241 List!26901)) (Broken!22118 (value!135242 List!26901)) (True!8847) (RightBrace!4423) (RightBracket!4423) (Colon!4423) (Null!4423) (Comma!4423) (LeftBracket!4423) (False!8847) (LeftBrace!4423) (ImaginaryLiteralValue!4423 (text!31407 List!26901)) (StringLiteralValue!13269 (value!135243 List!26901)) (EOFValue!4423 (value!135244 List!26901)) (IdentValue!4423 (value!135245 List!26901)) (DelimiterValue!8847 (value!135246 List!26901)) (DedentValue!4423 (value!135247 List!26901)) (NewLineValue!4423 (value!135248 List!26901)) (IntegerValue!13269 (value!135249 (_ BitVec 32)) (text!31408 List!26901)) (IntegerValue!13270 (value!135250 Int) (text!31409 List!26901)) (Times!4423) (Or!4423) (Equal!4423) (Minus!4423) (Broken!22119 (value!135251 List!26901)) (And!4423) (Div!4423) (LessEqual!4423) (Mod!4423) (Concat!11032) (Not!4423) (Plus!4423) (SpaceValue!4423 (value!135252 List!26901)) (IntegerValue!13271 (value!135253 Int) (text!31410 List!26901)) (StringLiteralValue!13270 (text!31411 List!26901)) (FloatLiteralValue!8847 (text!31412 List!26901)) (BytesLiteralValue!4423 (value!135254 List!26901)) (CommentValue!8847 (value!135255 List!26901)) (StringLiteralValue!13271 (value!135256 List!26901)) (ErrorTokenValue!4423 (msg!4484 List!26901)) )
))
(declare-datatypes ((C!13364 0))(
  ( (C!13365 (val!7730 Int)) )
))
(declare-datatypes ((List!26902 0))(
  ( (Nil!26808) (Cons!26808 (h!32209 C!13364) (t!201370 List!26902)) )
))
(declare-datatypes ((IArray!17345 0))(
  ( (IArray!17346 (innerList!8730 List!26902)) )
))
(declare-datatypes ((Conc!8670 0))(
  ( (Node!8670 (left!20353 Conc!8670) (right!20683 Conc!8670) (csize!17570 Int) (cheight!8881 Int)) (Leaf!12786 (xs!11612 IArray!17345) (csize!17571 Int)) (Empty!8670) )
))
(declare-datatypes ((BalanceConc!17068 0))(
  ( (BalanceConc!17069 (c!358730 Conc!8670)) )
))
(declare-datatypes ((String!29219 0))(
  ( (String!29220 (value!135257 String)) )
))
(declare-datatypes ((Regex!6609 0))(
  ( (ElementMatch!6609 (c!358731 C!13364)) (Concat!11033 (regOne!13730 Regex!6609) (regTwo!13730 Regex!6609)) (EmptyExpr!6609) (Star!6609 (reg!6938 Regex!6609)) (EmptyLang!6609) (Union!6609 (regOne!13731 Regex!6609) (regTwo!13731 Regex!6609)) )
))
(declare-datatypes ((TokenValueInjection!8386 0))(
  ( (TokenValueInjection!8387 (toValue!6003 Int) (toChars!5862 Int)) )
))
(declare-datatypes ((Rule!8322 0))(
  ( (Rule!8323 (regex!4261 Regex!6609) (tag!4751 String!29219) (isSeparator!4261 Bool) (transformation!4261 TokenValueInjection!8386)) )
))
(declare-datatypes ((List!26903 0))(
  ( (Nil!26809) (Cons!26809 (h!32210 Rule!8322) (t!201371 List!26903)) )
))
(declare-fun rules!1750 () List!26903)

(declare-fun rulesInvariant!3360 (LexerInterface!3858 List!26903) Bool)

(assert (=> b!2257769 (= res!965236 (rulesInvariant!3360 thiss!16613 rules!1750))))

(declare-fun b!2257770 () Bool)

(declare-fun res!965228 () Bool)

(assert (=> b!2257770 (=> (not res!965228) (not e!1445505))))

(declare-fun r!2363 () Rule!8322)

(declare-fun contains!4613 (List!26903 Rule!8322) Bool)

(assert (=> b!2257770 (= res!965228 (contains!4613 rules!1750 r!2363))))

(declare-fun b!2257771 () Bool)

(declare-fun e!1445513 () Bool)

(declare-datatypes ((Token!8000 0))(
  ( (Token!8001 (value!135258 TokenValue!4423) (rule!6569 Rule!8322) (size!20995 Int) (originalCharacters!5031 List!26902)) )
))
(declare-datatypes ((List!26904 0))(
  ( (Nil!26810) (Cons!26810 (h!32211 Token!8000) (t!201372 List!26904)) )
))
(declare-fun tokens!456 () List!26904)

(declare-fun head!4836 (List!26904) Token!8000)

(assert (=> b!2257771 (= e!1445513 (= (rule!6569 (head!4836 tokens!456)) r!2363))))

(declare-fun b!2257772 () Bool)

(declare-fun res!965225 () Bool)

(assert (=> b!2257772 (=> (not res!965225) (not e!1445505))))

(declare-fun otherR!12 () Rule!8322)

(assert (=> b!2257772 (= res!965225 (contains!4613 rules!1750 otherR!12))))

(declare-fun b!2257773 () Bool)

(declare-fun e!1445495 () Bool)

(declare-fun e!1445523 () Bool)

(assert (=> b!2257773 (= e!1445495 e!1445523)))

(declare-fun res!965233 () Bool)

(assert (=> b!2257773 (=> res!965233 e!1445523)))

(declare-fun lt!839152 () Int)

(declare-fun lt!839154 () Int)

(assert (=> b!2257773 (= res!965233 (< lt!839152 lt!839154))))

(declare-fun otherP!12 () List!26902)

(declare-fun matchR!2870 (Regex!6609 List!26902) Bool)

(assert (=> b!2257773 (not (matchR!2870 (regex!4261 otherR!12) otherP!12))))

(declare-datatypes ((Unit!39732 0))(
  ( (Unit!39733) )
))
(declare-fun lt!839153 () Unit!39732)

(declare-fun input!1722 () List!26902)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!401 (LexerInterface!3858 Rule!8322 List!26902 List!26902) Unit!39732)

(assert (=> b!2257773 (= lt!839153 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!401 thiss!16613 otherR!12 otherP!12 input!1722))))

(declare-fun e!1445501 () Bool)

(declare-fun e!1445496 () Bool)

(declare-fun tp!713821 () Bool)

(declare-fun b!2257774 () Bool)

(declare-fun inv!36335 (String!29219) Bool)

(declare-fun inv!36338 (TokenValueInjection!8386) Bool)

(assert (=> b!2257774 (= e!1445501 (and tp!713821 (inv!36335 (tag!4751 otherR!12)) (inv!36338 (transformation!4261 otherR!12)) e!1445496))))

(declare-fun b!2257776 () Bool)

(declare-fun e!1445510 () Bool)

(assert (=> b!2257776 (= e!1445510 e!1445495)))

(declare-fun res!965224 () Bool)

(assert (=> b!2257776 (=> res!965224 e!1445495)))

(declare-datatypes ((tuple2!26382 0))(
  ( (tuple2!26383 (_1!15701 Token!8000) (_2!15701 List!26902)) )
))
(declare-datatypes ((Option!5237 0))(
  ( (None!5236) (Some!5236 (v!30264 tuple2!26382)) )
))
(declare-fun lt!839151 () Option!5237)

(assert (=> b!2257776 (= res!965224 (not (= lt!839151 None!5236)))))

(declare-fun isEmpty!15142 (Option!5237) Bool)

(assert (=> b!2257776 (isEmpty!15142 lt!839151)))

(declare-fun maxPrefixOneRule!1336 (LexerInterface!3858 Rule!8322 List!26902) Option!5237)

(assert (=> b!2257776 (= lt!839151 (maxPrefixOneRule!1336 thiss!16613 otherR!12 input!1722))))

(declare-fun lt!839158 () Unit!39732)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!409 (LexerInterface!3858 Rule!8322 List!26903 List!26902) Unit!39732)

(assert (=> b!2257776 (= lt!839158 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!409 thiss!16613 otherR!12 rules!1750 input!1722))))

(declare-fun b!2257777 () Bool)

(declare-fun validRegex!2472 (Regex!6609) Bool)

(assert (=> b!2257777 (= e!1445523 (validRegex!2472 (regex!4261 otherR!12)))))

(declare-fun b!2257778 () Bool)

(declare-fun e!1445502 () Bool)

(declare-fun size!20996 (BalanceConc!17068) Int)

(declare-fun charsOf!2649 (Token!8000) BalanceConc!17068)

(declare-fun size!20997 (List!26902) Int)

(assert (=> b!2257778 (= e!1445502 (<= (size!20996 (charsOf!2649 (head!4836 tokens!456))) (size!20997 otherP!12)))))

(declare-fun b!2257779 () Bool)

(declare-fun res!965221 () Bool)

(declare-fun e!1445511 () Bool)

(assert (=> b!2257779 (=> (not res!965221) (not e!1445511))))

(assert (=> b!2257779 (= res!965221 (not (= r!2363 otherR!12)))))

(declare-fun e!1445520 () Bool)

(assert (=> b!2257780 (= e!1445520 (and tp!713825 tp!713816))))

(declare-fun e!1445506 () Bool)

(assert (=> b!2257781 (= e!1445506 (and tp!713830 tp!713822))))

(declare-fun b!2257782 () Bool)

(declare-fun e!1445507 () Bool)

(declare-fun tp_is_empty!10439 () Bool)

(declare-fun tp!713827 () Bool)

(assert (=> b!2257782 (= e!1445507 (and tp_is_empty!10439 tp!713827))))

(declare-fun b!2257783 () Bool)

(declare-fun e!1445499 () Bool)

(assert (=> b!2257783 (= e!1445499 (<= (size!20997 otherP!12) (size!20996 (charsOf!2649 (head!4836 tokens!456)))))))

(declare-fun b!2257784 () Bool)

(declare-fun e!1445518 () Bool)

(declare-fun tp!713817 () Bool)

(assert (=> b!2257784 (= e!1445518 (and tp_is_empty!10439 tp!713817))))

(declare-fun b!2257785 () Bool)

(declare-fun e!1445516 () Bool)

(assert (=> b!2257785 (= e!1445505 e!1445516)))

(declare-fun res!965222 () Bool)

(assert (=> b!2257785 (=> (not res!965222) (not e!1445516))))

(declare-fun suffix!886 () List!26902)

(declare-datatypes ((IArray!17347 0))(
  ( (IArray!17348 (innerList!8731 List!26904)) )
))
(declare-datatypes ((Conc!8671 0))(
  ( (Node!8671 (left!20354 Conc!8671) (right!20684 Conc!8671) (csize!17572 Int) (cheight!8882 Int)) (Leaf!12787 (xs!11613 IArray!17347) (csize!17573 Int)) (Empty!8671) )
))
(declare-datatypes ((BalanceConc!17070 0))(
  ( (BalanceConc!17071 (c!358732 Conc!8671)) )
))
(declare-datatypes ((tuple2!26384 0))(
  ( (tuple2!26385 (_1!15702 BalanceConc!17070) (_2!15702 BalanceConc!17068)) )
))
(declare-fun lt!839150 () tuple2!26384)

(declare-datatypes ((tuple2!26386 0))(
  ( (tuple2!26387 (_1!15703 List!26904) (_2!15703 List!26902)) )
))
(declare-fun list!10321 (BalanceConc!17070) List!26904)

(declare-fun list!10322 (BalanceConc!17068) List!26902)

(assert (=> b!2257785 (= res!965222 (= (tuple2!26387 (list!10321 (_1!15702 lt!839150)) (list!10322 (_2!15702 lt!839150))) (tuple2!26387 tokens!456 suffix!886)))))

(declare-fun lex!1697 (LexerInterface!3858 List!26903 BalanceConc!17068) tuple2!26384)

(declare-fun seqFromList!2965 (List!26902) BalanceConc!17068)

(assert (=> b!2257785 (= lt!839150 (lex!1697 thiss!16613 rules!1750 (seqFromList!2965 input!1722)))))

(declare-fun b!2257786 () Bool)

(declare-fun res!965229 () Bool)

(assert (=> b!2257786 (=> (not res!965229) (not e!1445505))))

(declare-fun isEmpty!15143 (List!26903) Bool)

(assert (=> b!2257786 (= res!965229 (not (isEmpty!15143 rules!1750)))))

(declare-fun b!2257787 () Bool)

(declare-fun e!1445508 () Bool)

(assert (=> b!2257787 (= e!1445508 (not (matchR!2870 (regex!4261 r!2363) (list!10322 (charsOf!2649 (head!4836 tokens!456))))))))

(declare-fun b!2257788 () Bool)

(declare-fun e!1445512 () Unit!39732)

(declare-fun Unit!39734 () Unit!39732)

(assert (=> b!2257788 (= e!1445512 Unit!39734)))

(declare-fun lt!839156 () Unit!39732)

(declare-fun lemmaSameIndexThenSameElement!128 (List!26903 Rule!8322 Rule!8322) Unit!39732)

(assert (=> b!2257788 (= lt!839156 (lemmaSameIndexThenSameElement!128 rules!1750 r!2363 otherR!12))))

(assert (=> b!2257788 false))

(declare-fun b!2257789 () Bool)

(declare-fun res!965231 () Bool)

(assert (=> b!2257789 (=> res!965231 e!1445523)))

(assert (=> b!2257789 (= res!965231 e!1445499)))

(declare-fun res!965234 () Bool)

(assert (=> b!2257789 (=> (not res!965234) (not e!1445499))))

(declare-fun size!20998 (List!26904) Int)

(assert (=> b!2257789 (= res!965234 (> (size!20998 tokens!456) 0))))

(declare-fun e!1445497 () Bool)

(assert (=> b!2257790 (= e!1445497 (and tp!713826 tp!713818))))

(declare-fun b!2257791 () Bool)

(declare-fun e!1445515 () Bool)

(declare-fun e!1445493 () Bool)

(assert (=> b!2257791 (= e!1445515 e!1445493)))

(declare-fun res!965232 () Bool)

(assert (=> b!2257791 (=> res!965232 e!1445493)))

(assert (=> b!2257791 (= res!965232 (> lt!839154 lt!839152))))

(declare-fun getIndex!282 (List!26903 Rule!8322) Int)

(assert (=> b!2257791 (= lt!839152 (getIndex!282 rules!1750 otherR!12))))

(assert (=> b!2257791 (= lt!839154 (getIndex!282 rules!1750 r!2363))))

(declare-fun ruleValid!1353 (LexerInterface!3858 Rule!8322) Bool)

(assert (=> b!2257791 (ruleValid!1353 thiss!16613 otherR!12)))

(declare-fun lt!839155 () Unit!39732)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!760 (LexerInterface!3858 Rule!8322 List!26903) Unit!39732)

(assert (=> b!2257791 (= lt!839155 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!760 thiss!16613 otherR!12 rules!1750))))

(declare-fun tp!713823 () Bool)

(declare-fun e!1445498 () Bool)

(declare-fun b!2257792 () Bool)

(declare-fun e!1445492 () Bool)

(declare-fun inv!36339 (Token!8000) Bool)

(assert (=> b!2257792 (= e!1445498 (and (inv!36339 (h!32211 tokens!456)) e!1445492 tp!713823))))

(declare-fun tp!713819 () Bool)

(declare-fun b!2257793 () Bool)

(declare-fun e!1445521 () Bool)

(assert (=> b!2257793 (= e!1445521 (and tp!713819 (inv!36335 (tag!4751 r!2363)) (inv!36338 (transformation!4261 r!2363)) e!1445506))))

(declare-fun b!2257794 () Bool)

(declare-fun res!965239 () Bool)

(assert (=> b!2257794 (=> (not res!965239) (not e!1445511))))

(declare-fun isPrefix!2251 (List!26902 List!26902) Bool)

(assert (=> b!2257794 (= res!965239 (isPrefix!2251 otherP!12 input!1722))))

(declare-fun b!2257795 () Bool)

(declare-fun Unit!39735 () Unit!39732)

(assert (=> b!2257795 (= e!1445512 Unit!39735)))

(declare-fun b!2257796 () Bool)

(declare-fun e!1445509 () Bool)

(declare-fun e!1445514 () Bool)

(declare-fun tp!713815 () Bool)

(assert (=> b!2257796 (= e!1445509 (and e!1445514 tp!713815))))

(declare-fun e!1445504 () Bool)

(declare-fun tp!713829 () Bool)

(declare-fun b!2257797 () Bool)

(declare-fun inv!21 (TokenValue!4423) Bool)

(assert (=> b!2257797 (= e!1445492 (and (inv!21 (value!135258 (h!32211 tokens!456))) e!1445504 tp!713829))))

(declare-fun b!2257798 () Bool)

(assert (=> b!2257798 (= e!1445511 (not e!1445515))))

(declare-fun res!965238 () Bool)

(assert (=> b!2257798 (=> res!965238 e!1445515)))

(assert (=> b!2257798 (= res!965238 e!1445508)))

(declare-fun res!965240 () Bool)

(assert (=> b!2257798 (=> (not res!965240) (not e!1445508))))

(declare-fun lt!839157 () Bool)

(assert (=> b!2257798 (= res!965240 (not lt!839157))))

(assert (=> b!2257798 (ruleValid!1353 thiss!16613 r!2363)))

(declare-fun lt!839160 () Unit!39732)

(assert (=> b!2257798 (= lt!839160 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!760 thiss!16613 r!2363 rules!1750))))

(declare-fun tp!713831 () Bool)

(declare-fun b!2257799 () Bool)

(assert (=> b!2257799 (= e!1445504 (and tp!713831 (inv!36335 (tag!4751 (rule!6569 (h!32211 tokens!456)))) (inv!36338 (transformation!4261 (rule!6569 (h!32211 tokens!456)))) e!1445520))))

(declare-fun res!965235 () Bool)

(assert (=> start!220308 (=> (not res!965235) (not e!1445505))))

(get-info :version)

(assert (=> start!220308 (= res!965235 ((_ is Lexer!3856) thiss!16613))))

(assert (=> start!220308 e!1445505))

(assert (=> start!220308 true))

(assert (=> start!220308 e!1445507))

(assert (=> start!220308 e!1445501))

(assert (=> start!220308 e!1445518))

(declare-fun e!1445494 () Bool)

(assert (=> start!220308 e!1445494))

(assert (=> start!220308 e!1445509))

(assert (=> start!220308 e!1445521))

(assert (=> start!220308 e!1445498))

(assert (=> b!2257775 (= e!1445496 (and tp!713824 tp!713814))))

(declare-fun b!2257800 () Bool)

(declare-fun tp!713828 () Bool)

(assert (=> b!2257800 (= e!1445494 (and tp_is_empty!10439 tp!713828))))

(declare-fun b!2257801 () Bool)

(assert (=> b!2257801 (= e!1445516 e!1445511)))

(declare-fun res!965237 () Bool)

(assert (=> b!2257801 (=> (not res!965237) (not e!1445511))))

(assert (=> b!2257801 (= res!965237 e!1445502)))

(declare-fun res!965230 () Bool)

(assert (=> b!2257801 (=> res!965230 e!1445502)))

(assert (=> b!2257801 (= res!965230 lt!839157)))

(declare-fun isEmpty!15144 (List!26904) Bool)

(assert (=> b!2257801 (= lt!839157 (isEmpty!15144 tokens!456))))

(declare-fun b!2257802 () Bool)

(assert (=> b!2257802 (= e!1445493 e!1445510)))

(declare-fun res!965223 () Bool)

(assert (=> b!2257802 (=> res!965223 e!1445510)))

(assert (=> b!2257802 (= res!965223 (not ((_ is Nil!26810) tokens!456)))))

(declare-fun lt!839159 () Unit!39732)

(assert (=> b!2257802 (= lt!839159 e!1445512)))

(declare-fun c!358729 () Bool)

(assert (=> b!2257802 (= c!358729 (= lt!839154 lt!839152))))

(declare-fun tp!713820 () Bool)

(declare-fun b!2257803 () Bool)

(assert (=> b!2257803 (= e!1445514 (and tp!713820 (inv!36335 (tag!4751 (h!32210 rules!1750))) (inv!36338 (transformation!4261 (h!32210 rules!1750))) e!1445497))))

(declare-fun b!2257804 () Bool)

(declare-fun res!965227 () Bool)

(assert (=> b!2257804 (=> (not res!965227) (not e!1445511))))

(assert (=> b!2257804 (= res!965227 e!1445513)))

(declare-fun res!965226 () Bool)

(assert (=> b!2257804 (=> res!965226 e!1445513)))

(assert (=> b!2257804 (= res!965226 lt!839157)))

(assert (= (and start!220308 res!965235) b!2257786))

(assert (= (and b!2257786 res!965229) b!2257769))

(assert (= (and b!2257769 res!965236) b!2257770))

(assert (= (and b!2257770 res!965228) b!2257772))

(assert (= (and b!2257772 res!965225) b!2257785))

(assert (= (and b!2257785 res!965222) b!2257801))

(assert (= (and b!2257801 (not res!965230)) b!2257778))

(assert (= (and b!2257801 res!965237) b!2257804))

(assert (= (and b!2257804 (not res!965226)) b!2257771))

(assert (= (and b!2257804 res!965227) b!2257794))

(assert (= (and b!2257794 res!965239) b!2257779))

(assert (= (and b!2257779 res!965221) b!2257798))

(assert (= (and b!2257798 res!965240) b!2257787))

(assert (= (and b!2257798 (not res!965238)) b!2257791))

(assert (= (and b!2257791 (not res!965232)) b!2257802))

(assert (= (and b!2257802 c!358729) b!2257788))

(assert (= (and b!2257802 (not c!358729)) b!2257795))

(assert (= (and b!2257802 (not res!965223)) b!2257776))

(assert (= (and b!2257776 (not res!965224)) b!2257773))

(assert (= (and b!2257773 (not res!965233)) b!2257789))

(assert (= (and b!2257789 res!965234) b!2257783))

(assert (= (and b!2257789 (not res!965231)) b!2257777))

(assert (= (and start!220308 ((_ is Cons!26808) input!1722)) b!2257782))

(assert (= b!2257774 b!2257775))

(assert (= start!220308 b!2257774))

(assert (= (and start!220308 ((_ is Cons!26808) suffix!886)) b!2257784))

(assert (= (and start!220308 ((_ is Cons!26808) otherP!12)) b!2257800))

(assert (= b!2257803 b!2257790))

(assert (= b!2257796 b!2257803))

(assert (= (and start!220308 ((_ is Cons!26809) rules!1750)) b!2257796))

(assert (= b!2257793 b!2257781))

(assert (= start!220308 b!2257793))

(assert (= b!2257799 b!2257780))

(assert (= b!2257797 b!2257799))

(assert (= b!2257792 b!2257797))

(assert (= (and start!220308 ((_ is Cons!26810) tokens!456)) b!2257792))

(declare-fun m!2687851 () Bool)

(assert (=> b!2257792 m!2687851))

(declare-fun m!2687853 () Bool)

(assert (=> b!2257786 m!2687853))

(declare-fun m!2687855 () Bool)

(assert (=> b!2257778 m!2687855))

(assert (=> b!2257778 m!2687855))

(declare-fun m!2687857 () Bool)

(assert (=> b!2257778 m!2687857))

(assert (=> b!2257778 m!2687857))

(declare-fun m!2687859 () Bool)

(assert (=> b!2257778 m!2687859))

(declare-fun m!2687861 () Bool)

(assert (=> b!2257778 m!2687861))

(assert (=> b!2257783 m!2687861))

(assert (=> b!2257783 m!2687855))

(assert (=> b!2257783 m!2687855))

(assert (=> b!2257783 m!2687857))

(assert (=> b!2257783 m!2687857))

(assert (=> b!2257783 m!2687859))

(assert (=> b!2257787 m!2687855))

(assert (=> b!2257787 m!2687855))

(assert (=> b!2257787 m!2687857))

(assert (=> b!2257787 m!2687857))

(declare-fun m!2687863 () Bool)

(assert (=> b!2257787 m!2687863))

(assert (=> b!2257787 m!2687863))

(declare-fun m!2687865 () Bool)

(assert (=> b!2257787 m!2687865))

(declare-fun m!2687867 () Bool)

(assert (=> b!2257798 m!2687867))

(declare-fun m!2687869 () Bool)

(assert (=> b!2257798 m!2687869))

(declare-fun m!2687871 () Bool)

(assert (=> b!2257793 m!2687871))

(declare-fun m!2687873 () Bool)

(assert (=> b!2257793 m!2687873))

(declare-fun m!2687875 () Bool)

(assert (=> b!2257797 m!2687875))

(declare-fun m!2687877 () Bool)

(assert (=> b!2257772 m!2687877))

(declare-fun m!2687879 () Bool)

(assert (=> b!2257801 m!2687879))

(declare-fun m!2687881 () Bool)

(assert (=> b!2257773 m!2687881))

(declare-fun m!2687883 () Bool)

(assert (=> b!2257773 m!2687883))

(declare-fun m!2687885 () Bool)

(assert (=> b!2257770 m!2687885))

(declare-fun m!2687887 () Bool)

(assert (=> b!2257794 m!2687887))

(declare-fun m!2687889 () Bool)

(assert (=> b!2257777 m!2687889))

(declare-fun m!2687891 () Bool)

(assert (=> b!2257791 m!2687891))

(declare-fun m!2687893 () Bool)

(assert (=> b!2257791 m!2687893))

(declare-fun m!2687895 () Bool)

(assert (=> b!2257791 m!2687895))

(declare-fun m!2687897 () Bool)

(assert (=> b!2257791 m!2687897))

(declare-fun m!2687899 () Bool)

(assert (=> b!2257769 m!2687899))

(assert (=> b!2257771 m!2687855))

(declare-fun m!2687901 () Bool)

(assert (=> b!2257785 m!2687901))

(declare-fun m!2687903 () Bool)

(assert (=> b!2257785 m!2687903))

(declare-fun m!2687905 () Bool)

(assert (=> b!2257785 m!2687905))

(assert (=> b!2257785 m!2687905))

(declare-fun m!2687907 () Bool)

(assert (=> b!2257785 m!2687907))

(declare-fun m!2687909 () Bool)

(assert (=> b!2257776 m!2687909))

(declare-fun m!2687911 () Bool)

(assert (=> b!2257776 m!2687911))

(declare-fun m!2687913 () Bool)

(assert (=> b!2257776 m!2687913))

(declare-fun m!2687915 () Bool)

(assert (=> b!2257774 m!2687915))

(declare-fun m!2687917 () Bool)

(assert (=> b!2257774 m!2687917))

(declare-fun m!2687919 () Bool)

(assert (=> b!2257799 m!2687919))

(declare-fun m!2687921 () Bool)

(assert (=> b!2257799 m!2687921))

(declare-fun m!2687923 () Bool)

(assert (=> b!2257789 m!2687923))

(declare-fun m!2687925 () Bool)

(assert (=> b!2257803 m!2687925))

(declare-fun m!2687927 () Bool)

(assert (=> b!2257803 m!2687927))

(declare-fun m!2687929 () Bool)

(assert (=> b!2257788 m!2687929))

(check-sat (not b!2257793) (not b!2257782) tp_is_empty!10439 b_and!177285 (not b_next!67265) (not b!2257789) (not b_next!67275) (not b!2257798) (not b!2257794) (not b!2257771) b_and!177295 (not b!2257783) (not b_next!67261) (not b!2257784) b_and!177291 (not b_next!67273) (not b!2257797) (not b!2257785) (not b!2257799) (not b!2257773) (not b_next!67263) (not b!2257801) (not b!2257772) (not b!2257786) (not b_next!67271) b_and!177289 (not b!2257791) (not b!2257787) (not b!2257774) b_and!177287 (not b!2257777) (not b!2257776) (not b!2257792) (not b!2257770) (not b_next!67267) (not b!2257803) (not b!2257769) b_and!177283 (not b!2257796) (not b_next!67269) (not b!2257788) (not b!2257778) (not b!2257800) b_and!177293 b_and!177281)
(check-sat (not b_next!67261) b_and!177291 (not b_next!67273) (not b_next!67263) (not b_next!67271) b_and!177285 b_and!177289 (not b_next!67265) b_and!177287 (not b_next!67275) (not b_next!67267) b_and!177283 (not b_next!67269) b_and!177295 b_and!177293 b_and!177281)
(get-model)

(declare-fun d!668982 () Bool)

(declare-fun lt!839172 () Int)

(assert (=> d!668982 (= lt!839172 (size!20997 (list!10322 (charsOf!2649 (head!4836 tokens!456)))))))

(declare-fun size!21001 (Conc!8670) Int)

(assert (=> d!668982 (= lt!839172 (size!21001 (c!358730 (charsOf!2649 (head!4836 tokens!456)))))))

(assert (=> d!668982 (= (size!20996 (charsOf!2649 (head!4836 tokens!456))) lt!839172)))

(declare-fun bs!455287 () Bool)

(assert (= bs!455287 d!668982))

(assert (=> bs!455287 m!2687857))

(assert (=> bs!455287 m!2687863))

(assert (=> bs!455287 m!2687863))

(declare-fun m!2687957 () Bool)

(assert (=> bs!455287 m!2687957))

(declare-fun m!2687959 () Bool)

(assert (=> bs!455287 m!2687959))

(assert (=> b!2257778 d!668982))

(declare-fun d!668988 () Bool)

(declare-fun lt!839175 () BalanceConc!17068)

(assert (=> d!668988 (= (list!10322 lt!839175) (originalCharacters!5031 (head!4836 tokens!456)))))

(declare-fun dynLambda!11627 (Int TokenValue!4423) BalanceConc!17068)

(assert (=> d!668988 (= lt!839175 (dynLambda!11627 (toChars!5862 (transformation!4261 (rule!6569 (head!4836 tokens!456)))) (value!135258 (head!4836 tokens!456))))))

(assert (=> d!668988 (= (charsOf!2649 (head!4836 tokens!456)) lt!839175)))

(declare-fun b_lambda!72081 () Bool)

(assert (=> (not b_lambda!72081) (not d!668988)))

(declare-fun t!201374 () Bool)

(declare-fun tb!133791 () Bool)

(assert (=> (and b!2257790 (= (toChars!5862 (transformation!4261 (h!32210 rules!1750))) (toChars!5862 (transformation!4261 (rule!6569 (head!4836 tokens!456))))) t!201374) tb!133791))

(declare-fun b!2257854 () Bool)

(declare-fun e!1445562 () Bool)

(declare-fun tp!713834 () Bool)

(declare-fun inv!36342 (Conc!8670) Bool)

(assert (=> b!2257854 (= e!1445562 (and (inv!36342 (c!358730 (dynLambda!11627 (toChars!5862 (transformation!4261 (rule!6569 (head!4836 tokens!456)))) (value!135258 (head!4836 tokens!456))))) tp!713834))))

(declare-fun result!163106 () Bool)

(declare-fun inv!36343 (BalanceConc!17068) Bool)

(assert (=> tb!133791 (= result!163106 (and (inv!36343 (dynLambda!11627 (toChars!5862 (transformation!4261 (rule!6569 (head!4836 tokens!456)))) (value!135258 (head!4836 tokens!456)))) e!1445562))))

(assert (= tb!133791 b!2257854))

(declare-fun m!2687965 () Bool)

(assert (=> b!2257854 m!2687965))

(declare-fun m!2687967 () Bool)

(assert (=> tb!133791 m!2687967))

(assert (=> d!668988 t!201374))

(declare-fun b_and!177297 () Bool)

(assert (= b_and!177283 (and (=> t!201374 result!163106) b_and!177297)))

(declare-fun tb!133793 () Bool)

(declare-fun t!201376 () Bool)

(assert (=> (and b!2257781 (= (toChars!5862 (transformation!4261 r!2363)) (toChars!5862 (transformation!4261 (rule!6569 (head!4836 tokens!456))))) t!201376) tb!133793))

(declare-fun result!163110 () Bool)

(assert (= result!163110 result!163106))

(assert (=> d!668988 t!201376))

(declare-fun b_and!177299 () Bool)

(assert (= b_and!177287 (and (=> t!201376 result!163110) b_and!177299)))

(declare-fun tb!133795 () Bool)

(declare-fun t!201378 () Bool)

(assert (=> (and b!2257775 (= (toChars!5862 (transformation!4261 otherR!12)) (toChars!5862 (transformation!4261 (rule!6569 (head!4836 tokens!456))))) t!201378) tb!133795))

(declare-fun result!163112 () Bool)

(assert (= result!163112 result!163106))

(assert (=> d!668988 t!201378))

(declare-fun b_and!177301 () Bool)

(assert (= b_and!177291 (and (=> t!201378 result!163112) b_and!177301)))

(declare-fun t!201380 () Bool)

(declare-fun tb!133797 () Bool)

(assert (=> (and b!2257780 (= (toChars!5862 (transformation!4261 (rule!6569 (h!32211 tokens!456)))) (toChars!5862 (transformation!4261 (rule!6569 (head!4836 tokens!456))))) t!201380) tb!133797))

(declare-fun result!163114 () Bool)

(assert (= result!163114 result!163106))

(assert (=> d!668988 t!201380))

(declare-fun b_and!177303 () Bool)

(assert (= b_and!177295 (and (=> t!201380 result!163114) b_and!177303)))

(declare-fun m!2687969 () Bool)

(assert (=> d!668988 m!2687969))

(declare-fun m!2687971 () Bool)

(assert (=> d!668988 m!2687971))

(assert (=> b!2257778 d!668988))

(declare-fun d!668994 () Bool)

(assert (=> d!668994 (= (head!4836 tokens!456) (h!32211 tokens!456))))

(assert (=> b!2257778 d!668994))

(declare-fun d!668996 () Bool)

(declare-fun lt!839178 () Int)

(assert (=> d!668996 (>= lt!839178 0)))

(declare-fun e!1445565 () Int)

(assert (=> d!668996 (= lt!839178 e!1445565)))

(declare-fun c!358741 () Bool)

(assert (=> d!668996 (= c!358741 ((_ is Nil!26808) otherP!12))))

(assert (=> d!668996 (= (size!20997 otherP!12) lt!839178)))

(declare-fun b!2257859 () Bool)

(assert (=> b!2257859 (= e!1445565 0)))

(declare-fun b!2257860 () Bool)

(assert (=> b!2257860 (= e!1445565 (+ 1 (size!20997 (t!201370 otherP!12))))))

(assert (= (and d!668996 c!358741) b!2257859))

(assert (= (and d!668996 (not c!358741)) b!2257860))

(declare-fun m!2687973 () Bool)

(assert (=> b!2257860 m!2687973))

(assert (=> b!2257778 d!668996))

(declare-fun d!668998 () Bool)

(assert (=> d!668998 (= (inv!36335 (tag!4751 (rule!6569 (h!32211 tokens!456)))) (= (mod (str.len (value!135257 (tag!4751 (rule!6569 (h!32211 tokens!456))))) 2) 0))))

(assert (=> b!2257799 d!668998))

(declare-fun d!669000 () Bool)

(declare-fun res!965284 () Bool)

(declare-fun e!1445568 () Bool)

(assert (=> d!669000 (=> (not res!965284) (not e!1445568))))

(declare-fun semiInverseModEq!1716 (Int Int) Bool)

(assert (=> d!669000 (= res!965284 (semiInverseModEq!1716 (toChars!5862 (transformation!4261 (rule!6569 (h!32211 tokens!456)))) (toValue!6003 (transformation!4261 (rule!6569 (h!32211 tokens!456))))))))

(assert (=> d!669000 (= (inv!36338 (transformation!4261 (rule!6569 (h!32211 tokens!456)))) e!1445568)))

(declare-fun b!2257863 () Bool)

(declare-fun equivClasses!1635 (Int Int) Bool)

(assert (=> b!2257863 (= e!1445568 (equivClasses!1635 (toChars!5862 (transformation!4261 (rule!6569 (h!32211 tokens!456)))) (toValue!6003 (transformation!4261 (rule!6569 (h!32211 tokens!456))))))))

(assert (= (and d!669000 res!965284) b!2257863))

(declare-fun m!2687975 () Bool)

(assert (=> d!669000 m!2687975))

(declare-fun m!2687977 () Bool)

(assert (=> b!2257863 m!2687977))

(assert (=> b!2257799 d!669000))

(declare-fun d!669002 () Bool)

(assert (=> d!669002 (= (isEmpty!15144 tokens!456) ((_ is Nil!26810) tokens!456))))

(assert (=> b!2257801 d!669002))

(declare-fun d!669004 () Bool)

(assert (=> d!669004 (= (inv!36335 (tag!4751 (h!32210 rules!1750))) (= (mod (str.len (value!135257 (tag!4751 (h!32210 rules!1750)))) 2) 0))))

(assert (=> b!2257803 d!669004))

(declare-fun d!669006 () Bool)

(declare-fun res!965285 () Bool)

(declare-fun e!1445569 () Bool)

(assert (=> d!669006 (=> (not res!965285) (not e!1445569))))

(assert (=> d!669006 (= res!965285 (semiInverseModEq!1716 (toChars!5862 (transformation!4261 (h!32210 rules!1750))) (toValue!6003 (transformation!4261 (h!32210 rules!1750)))))))

(assert (=> d!669006 (= (inv!36338 (transformation!4261 (h!32210 rules!1750))) e!1445569)))

(declare-fun b!2257864 () Bool)

(assert (=> b!2257864 (= e!1445569 (equivClasses!1635 (toChars!5862 (transformation!4261 (h!32210 rules!1750))) (toValue!6003 (transformation!4261 (h!32210 rules!1750)))))))

(assert (= (and d!669006 res!965285) b!2257864))

(declare-fun m!2687979 () Bool)

(assert (=> d!669006 m!2687979))

(declare-fun m!2687981 () Bool)

(assert (=> b!2257864 m!2687981))

(assert (=> b!2257803 d!669006))

(assert (=> b!2257783 d!668996))

(assert (=> b!2257783 d!668982))

(assert (=> b!2257783 d!668988))

(assert (=> b!2257783 d!668994))

(declare-fun d!669008 () Bool)

(declare-fun list!10325 (Conc!8671) List!26904)

(assert (=> d!669008 (= (list!10321 (_1!15702 lt!839150)) (list!10325 (c!358732 (_1!15702 lt!839150))))))

(declare-fun bs!455290 () Bool)

(assert (= bs!455290 d!669008))

(declare-fun m!2687983 () Bool)

(assert (=> bs!455290 m!2687983))

(assert (=> b!2257785 d!669008))

(declare-fun d!669010 () Bool)

(declare-fun list!10326 (Conc!8670) List!26902)

(assert (=> d!669010 (= (list!10322 (_2!15702 lt!839150)) (list!10326 (c!358730 (_2!15702 lt!839150))))))

(declare-fun bs!455291 () Bool)

(assert (= bs!455291 d!669010))

(declare-fun m!2687985 () Bool)

(assert (=> bs!455291 m!2687985))

(assert (=> b!2257785 d!669010))

(declare-fun b!2258027 () Bool)

(declare-fun e!1445661 () Bool)

(declare-fun lt!839220 () tuple2!26384)

(assert (=> b!2258027 (= e!1445661 (= (_2!15702 lt!839220) (seqFromList!2965 input!1722)))))

(declare-fun b!2258028 () Bool)

(declare-fun e!1445662 () Bool)

(assert (=> b!2258028 (= e!1445661 e!1445662)))

(declare-fun res!965366 () Bool)

(assert (=> b!2258028 (= res!965366 (< (size!20996 (_2!15702 lt!839220)) (size!20996 (seqFromList!2965 input!1722))))))

(assert (=> b!2258028 (=> (not res!965366) (not e!1445662))))

(declare-fun d!669012 () Bool)

(declare-fun e!1445660 () Bool)

(assert (=> d!669012 e!1445660))

(declare-fun res!965365 () Bool)

(assert (=> d!669012 (=> (not res!965365) (not e!1445660))))

(assert (=> d!669012 (= res!965365 e!1445661)))

(declare-fun c!358781 () Bool)

(declare-fun size!21002 (BalanceConc!17070) Int)

(assert (=> d!669012 (= c!358781 (> (size!21002 (_1!15702 lt!839220)) 0))))

(declare-fun lexTailRecV2!735 (LexerInterface!3858 List!26903 BalanceConc!17068 BalanceConc!17068 BalanceConc!17068 BalanceConc!17070) tuple2!26384)

(assert (=> d!669012 (= lt!839220 (lexTailRecV2!735 thiss!16613 rules!1750 (seqFromList!2965 input!1722) (BalanceConc!17069 Empty!8670) (seqFromList!2965 input!1722) (BalanceConc!17071 Empty!8671)))))

(assert (=> d!669012 (= (lex!1697 thiss!16613 rules!1750 (seqFromList!2965 input!1722)) lt!839220)))

(declare-fun b!2258029 () Bool)

(declare-fun res!965367 () Bool)

(assert (=> b!2258029 (=> (not res!965367) (not e!1445660))))

(declare-fun lexList!1060 (LexerInterface!3858 List!26903 List!26902) tuple2!26386)

(assert (=> b!2258029 (= res!965367 (= (list!10321 (_1!15702 lt!839220)) (_1!15703 (lexList!1060 thiss!16613 rules!1750 (list!10322 (seqFromList!2965 input!1722))))))))

(declare-fun b!2258030 () Bool)

(assert (=> b!2258030 (= e!1445660 (= (list!10322 (_2!15702 lt!839220)) (_2!15703 (lexList!1060 thiss!16613 rules!1750 (list!10322 (seqFromList!2965 input!1722))))))))

(declare-fun b!2258031 () Bool)

(declare-fun isEmpty!15147 (BalanceConc!17070) Bool)

(assert (=> b!2258031 (= e!1445662 (not (isEmpty!15147 (_1!15702 lt!839220))))))

(assert (= (and d!669012 c!358781) b!2258028))

(assert (= (and d!669012 (not c!358781)) b!2258027))

(assert (= (and b!2258028 res!965366) b!2258031))

(assert (= (and d!669012 res!965365) b!2258029))

(assert (= (and b!2258029 res!965367) b!2258030))

(declare-fun m!2688085 () Bool)

(assert (=> b!2258030 m!2688085))

(assert (=> b!2258030 m!2687905))

(declare-fun m!2688087 () Bool)

(assert (=> b!2258030 m!2688087))

(assert (=> b!2258030 m!2688087))

(declare-fun m!2688089 () Bool)

(assert (=> b!2258030 m!2688089))

(declare-fun m!2688091 () Bool)

(assert (=> b!2258029 m!2688091))

(assert (=> b!2258029 m!2687905))

(assert (=> b!2258029 m!2688087))

(assert (=> b!2258029 m!2688087))

(assert (=> b!2258029 m!2688089))

(declare-fun m!2688093 () Bool)

(assert (=> b!2258028 m!2688093))

(assert (=> b!2258028 m!2687905))

(declare-fun m!2688095 () Bool)

(assert (=> b!2258028 m!2688095))

(declare-fun m!2688097 () Bool)

(assert (=> d!669012 m!2688097))

(assert (=> d!669012 m!2687905))

(assert (=> d!669012 m!2687905))

(declare-fun m!2688099 () Bool)

(assert (=> d!669012 m!2688099))

(declare-fun m!2688101 () Bool)

(assert (=> b!2258031 m!2688101))

(assert (=> b!2257785 d!669012))

(declare-fun d!669068 () Bool)

(declare-fun fromListB!1326 (List!26902) BalanceConc!17068)

(assert (=> d!669068 (= (seqFromList!2965 input!1722) (fromListB!1326 input!1722))))

(declare-fun bs!455297 () Bool)

(assert (= bs!455297 d!669068))

(declare-fun m!2688113 () Bool)

(assert (=> bs!455297 m!2688113))

(assert (=> b!2257785 d!669068))

(declare-fun d!669070 () Bool)

(assert (=> d!669070 (= (isEmpty!15143 rules!1750) ((_ is Nil!26809) rules!1750))))

(assert (=> b!2257786 d!669070))

(declare-fun b!2258069 () Bool)

(declare-fun e!1445685 () Bool)

(declare-fun head!4838 (List!26902) C!13364)

(assert (=> b!2258069 (= e!1445685 (not (= (head!4838 (list!10322 (charsOf!2649 (head!4836 tokens!456)))) (c!358731 (regex!4261 r!2363)))))))

(declare-fun b!2258070 () Bool)

(declare-fun e!1445687 () Bool)

(declare-fun lt!839230 () Bool)

(assert (=> b!2258070 (= e!1445687 (not lt!839230))))

(declare-fun b!2258071 () Bool)

(declare-fun e!1445682 () Bool)

(assert (=> b!2258071 (= e!1445682 e!1445687)))

(declare-fun c!358791 () Bool)

(assert (=> b!2258071 (= c!358791 ((_ is EmptyLang!6609) (regex!4261 r!2363)))))

(declare-fun b!2258072 () Bool)

(declare-fun call!135738 () Bool)

(assert (=> b!2258072 (= e!1445682 (= lt!839230 call!135738))))

(declare-fun b!2258073 () Bool)

(declare-fun e!1445681 () Bool)

(assert (=> b!2258073 (= e!1445681 (= (head!4838 (list!10322 (charsOf!2649 (head!4836 tokens!456)))) (c!358731 (regex!4261 r!2363))))))

(declare-fun b!2258074 () Bool)

(declare-fun res!965395 () Bool)

(assert (=> b!2258074 (=> (not res!965395) (not e!1445681))))

(assert (=> b!2258074 (= res!965395 (not call!135738))))

(declare-fun b!2258075 () Bool)

(declare-fun res!965391 () Bool)

(assert (=> b!2258075 (=> (not res!965391) (not e!1445681))))

(declare-fun isEmpty!15148 (List!26902) Bool)

(declare-fun tail!3257 (List!26902) List!26902)

(assert (=> b!2258075 (= res!965391 (isEmpty!15148 (tail!3257 (list!10322 (charsOf!2649 (head!4836 tokens!456))))))))

(declare-fun bm!135733 () Bool)

(assert (=> bm!135733 (= call!135738 (isEmpty!15148 (list!10322 (charsOf!2649 (head!4836 tokens!456)))))))

(declare-fun d!669072 () Bool)

(assert (=> d!669072 e!1445682))

(declare-fun c!358789 () Bool)

(assert (=> d!669072 (= c!358789 ((_ is EmptyExpr!6609) (regex!4261 r!2363)))))

(declare-fun e!1445683 () Bool)

(assert (=> d!669072 (= lt!839230 e!1445683)))

(declare-fun c!358790 () Bool)

(assert (=> d!669072 (= c!358790 (isEmpty!15148 (list!10322 (charsOf!2649 (head!4836 tokens!456)))))))

(assert (=> d!669072 (validRegex!2472 (regex!4261 r!2363))))

(assert (=> d!669072 (= (matchR!2870 (regex!4261 r!2363) (list!10322 (charsOf!2649 (head!4836 tokens!456)))) lt!839230)))

(declare-fun b!2258076 () Bool)

(declare-fun nullable!1814 (Regex!6609) Bool)

(assert (=> b!2258076 (= e!1445683 (nullable!1814 (regex!4261 r!2363)))))

(declare-fun b!2258077 () Bool)

(declare-fun res!965396 () Bool)

(declare-fun e!1445686 () Bool)

(assert (=> b!2258077 (=> res!965396 e!1445686)))

(assert (=> b!2258077 (= res!965396 (not ((_ is ElementMatch!6609) (regex!4261 r!2363))))))

(assert (=> b!2258077 (= e!1445687 e!1445686)))

(declare-fun b!2258078 () Bool)

(declare-fun derivativeStep!1476 (Regex!6609 C!13364) Regex!6609)

(assert (=> b!2258078 (= e!1445683 (matchR!2870 (derivativeStep!1476 (regex!4261 r!2363) (head!4838 (list!10322 (charsOf!2649 (head!4836 tokens!456))))) (tail!3257 (list!10322 (charsOf!2649 (head!4836 tokens!456))))))))

(declare-fun b!2258079 () Bool)

(declare-fun e!1445684 () Bool)

(assert (=> b!2258079 (= e!1445686 e!1445684)))

(declare-fun res!965394 () Bool)

(assert (=> b!2258079 (=> (not res!965394) (not e!1445684))))

(assert (=> b!2258079 (= res!965394 (not lt!839230))))

(declare-fun b!2258080 () Bool)

(declare-fun res!965393 () Bool)

(assert (=> b!2258080 (=> res!965393 e!1445685)))

(assert (=> b!2258080 (= res!965393 (not (isEmpty!15148 (tail!3257 (list!10322 (charsOf!2649 (head!4836 tokens!456)))))))))

(declare-fun b!2258081 () Bool)

(declare-fun res!965392 () Bool)

(assert (=> b!2258081 (=> res!965392 e!1445686)))

(assert (=> b!2258081 (= res!965392 e!1445681)))

(declare-fun res!965398 () Bool)

(assert (=> b!2258081 (=> (not res!965398) (not e!1445681))))

(assert (=> b!2258081 (= res!965398 lt!839230)))

(declare-fun b!2258082 () Bool)

(assert (=> b!2258082 (= e!1445684 e!1445685)))

(declare-fun res!965397 () Bool)

(assert (=> b!2258082 (=> res!965397 e!1445685)))

(assert (=> b!2258082 (= res!965397 call!135738)))

(assert (= (and d!669072 c!358790) b!2258076))

(assert (= (and d!669072 (not c!358790)) b!2258078))

(assert (= (and d!669072 c!358789) b!2258072))

(assert (= (and d!669072 (not c!358789)) b!2258071))

(assert (= (and b!2258071 c!358791) b!2258070))

(assert (= (and b!2258071 (not c!358791)) b!2258077))

(assert (= (and b!2258077 (not res!965396)) b!2258081))

(assert (= (and b!2258081 res!965398) b!2258074))

(assert (= (and b!2258074 res!965395) b!2258075))

(assert (= (and b!2258075 res!965391) b!2258073))

(assert (= (and b!2258081 (not res!965392)) b!2258079))

(assert (= (and b!2258079 res!965394) b!2258082))

(assert (= (and b!2258082 (not res!965397)) b!2258080))

(assert (= (and b!2258080 (not res!965393)) b!2258069))

(assert (= (or b!2258072 b!2258074 b!2258082) bm!135733))

(assert (=> bm!135733 m!2687863))

(declare-fun m!2688151 () Bool)

(assert (=> bm!135733 m!2688151))

(assert (=> d!669072 m!2687863))

(assert (=> d!669072 m!2688151))

(declare-fun m!2688153 () Bool)

(assert (=> d!669072 m!2688153))

(assert (=> b!2258080 m!2687863))

(declare-fun m!2688155 () Bool)

(assert (=> b!2258080 m!2688155))

(assert (=> b!2258080 m!2688155))

(declare-fun m!2688157 () Bool)

(assert (=> b!2258080 m!2688157))

(assert (=> b!2258069 m!2687863))

(declare-fun m!2688159 () Bool)

(assert (=> b!2258069 m!2688159))

(assert (=> b!2258078 m!2687863))

(assert (=> b!2258078 m!2688159))

(assert (=> b!2258078 m!2688159))

(declare-fun m!2688161 () Bool)

(assert (=> b!2258078 m!2688161))

(assert (=> b!2258078 m!2687863))

(assert (=> b!2258078 m!2688155))

(assert (=> b!2258078 m!2688161))

(assert (=> b!2258078 m!2688155))

(declare-fun m!2688163 () Bool)

(assert (=> b!2258078 m!2688163))

(declare-fun m!2688165 () Bool)

(assert (=> b!2258076 m!2688165))

(assert (=> b!2258075 m!2687863))

(assert (=> b!2258075 m!2688155))

(assert (=> b!2258075 m!2688155))

(assert (=> b!2258075 m!2688157))

(assert (=> b!2258073 m!2687863))

(assert (=> b!2258073 m!2688159))

(assert (=> b!2257787 d!669072))

(declare-fun d!669082 () Bool)

(assert (=> d!669082 (= (list!10322 (charsOf!2649 (head!4836 tokens!456))) (list!10326 (c!358730 (charsOf!2649 (head!4836 tokens!456)))))))

(declare-fun bs!455300 () Bool)

(assert (= bs!455300 d!669082))

(declare-fun m!2688169 () Bool)

(assert (=> bs!455300 m!2688169))

(assert (=> b!2257787 d!669082))

(assert (=> b!2257787 d!668988))

(assert (=> b!2257787 d!668994))

(declare-fun d!669086 () Bool)

(declare-fun lt!839236 () Int)

(assert (=> d!669086 (>= lt!839236 0)))

(declare-fun e!1445695 () Int)

(assert (=> d!669086 (= lt!839236 e!1445695)))

(declare-fun c!358794 () Bool)

(assert (=> d!669086 (= c!358794 ((_ is Nil!26810) tokens!456))))

(assert (=> d!669086 (= (size!20998 tokens!456) lt!839236)))

(declare-fun b!2258095 () Bool)

(assert (=> b!2258095 (= e!1445695 0)))

(declare-fun b!2258096 () Bool)

(assert (=> b!2258096 (= e!1445695 (+ 1 (size!20998 (t!201372 tokens!456))))))

(assert (= (and d!669086 c!358794) b!2258095))

(assert (= (and d!669086 (not c!358794)) b!2258096))

(declare-fun m!2688175 () Bool)

(assert (=> b!2258096 m!2688175))

(assert (=> b!2257789 d!669086))

(declare-fun d!669090 () Bool)

(assert (=> d!669090 (= r!2363 otherR!12)))

(declare-fun lt!839239 () Unit!39732)

(declare-fun choose!13211 (List!26903 Rule!8322 Rule!8322) Unit!39732)

(assert (=> d!669090 (= lt!839239 (choose!13211 rules!1750 r!2363 otherR!12))))

(assert (=> d!669090 (contains!4613 rules!1750 r!2363)))

(assert (=> d!669090 (= (lemmaSameIndexThenSameElement!128 rules!1750 r!2363 otherR!12) lt!839239)))

(declare-fun bs!455301 () Bool)

(assert (= bs!455301 d!669090))

(declare-fun m!2688181 () Bool)

(assert (=> bs!455301 m!2688181))

(assert (=> bs!455301 m!2687885))

(assert (=> b!2257788 d!669090))

(declare-fun d!669092 () Bool)

(declare-fun res!965411 () Bool)

(declare-fun e!1445707 () Bool)

(assert (=> d!669092 (=> (not res!965411) (not e!1445707))))

(declare-fun rulesValid!1560 (LexerInterface!3858 List!26903) Bool)

(assert (=> d!669092 (= res!965411 (rulesValid!1560 thiss!16613 rules!1750))))

(assert (=> d!669092 (= (rulesInvariant!3360 thiss!16613 rules!1750) e!1445707)))

(declare-fun b!2258125 () Bool)

(declare-datatypes ((List!26906 0))(
  ( (Nil!26812) (Cons!26812 (h!32213 String!29219) (t!201422 List!26906)) )
))
(declare-fun noDuplicateTag!1558 (LexerInterface!3858 List!26903 List!26906) Bool)

(assert (=> b!2258125 (= e!1445707 (noDuplicateTag!1558 thiss!16613 rules!1750 Nil!26812))))

(assert (= (and d!669092 res!965411) b!2258125))

(declare-fun m!2688191 () Bool)

(assert (=> d!669092 m!2688191))

(declare-fun m!2688193 () Bool)

(assert (=> b!2258125 m!2688193))

(assert (=> b!2257769 d!669092))

(declare-fun d!669094 () Bool)

(declare-fun lt!839242 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3570 (List!26903) (InoxSet Rule!8322))

(assert (=> d!669094 (= lt!839242 (select (content!3570 rules!1750) r!2363))))

(declare-fun e!1445726 () Bool)

(assert (=> d!669094 (= lt!839242 e!1445726)))

(declare-fun res!965416 () Bool)

(assert (=> d!669094 (=> (not res!965416) (not e!1445726))))

(assert (=> d!669094 (= res!965416 ((_ is Cons!26809) rules!1750))))

(assert (=> d!669094 (= (contains!4613 rules!1750 r!2363) lt!839242)))

(declare-fun b!2258146 () Bool)

(declare-fun e!1445727 () Bool)

(assert (=> b!2258146 (= e!1445726 e!1445727)))

(declare-fun res!965417 () Bool)

(assert (=> b!2258146 (=> res!965417 e!1445727)))

(assert (=> b!2258146 (= res!965417 (= (h!32210 rules!1750) r!2363))))

(declare-fun b!2258147 () Bool)

(assert (=> b!2258147 (= e!1445727 (contains!4613 (t!201371 rules!1750) r!2363))))

(assert (= (and d!669094 res!965416) b!2258146))

(assert (= (and b!2258146 (not res!965417)) b!2258147))

(declare-fun m!2688199 () Bool)

(assert (=> d!669094 m!2688199))

(declare-fun m!2688201 () Bool)

(assert (=> d!669094 m!2688201))

(declare-fun m!2688203 () Bool)

(assert (=> b!2258147 m!2688203))

(assert (=> b!2257770 d!669094))

(declare-fun b!2258178 () Bool)

(declare-fun e!1445755 () Int)

(assert (=> b!2258178 (= e!1445755 (+ 1 (getIndex!282 (t!201371 rules!1750) otherR!12)))))

(declare-fun b!2258177 () Bool)

(declare-fun e!1445754 () Int)

(assert (=> b!2258177 (= e!1445754 e!1445755)))

(declare-fun c!358799 () Bool)

(assert (=> b!2258177 (= c!358799 (and ((_ is Cons!26809) rules!1750) (not (= (h!32210 rules!1750) otherR!12))))))

(declare-fun d!669096 () Bool)

(declare-fun lt!839245 () Int)

(assert (=> d!669096 (>= lt!839245 0)))

(assert (=> d!669096 (= lt!839245 e!1445754)))

(declare-fun c!358800 () Bool)

(assert (=> d!669096 (= c!358800 (and ((_ is Cons!26809) rules!1750) (= (h!32210 rules!1750) otherR!12)))))

(assert (=> d!669096 (contains!4613 rules!1750 otherR!12)))

(assert (=> d!669096 (= (getIndex!282 rules!1750 otherR!12) lt!839245)))

(declare-fun b!2258179 () Bool)

(assert (=> b!2258179 (= e!1445755 (- 1))))

(declare-fun b!2258176 () Bool)

(assert (=> b!2258176 (= e!1445754 0)))

(assert (= (and d!669096 c!358800) b!2258176))

(assert (= (and d!669096 (not c!358800)) b!2258177))

(assert (= (and b!2258177 c!358799) b!2258178))

(assert (= (and b!2258177 (not c!358799)) b!2258179))

(declare-fun m!2688213 () Bool)

(assert (=> b!2258178 m!2688213))

(assert (=> d!669096 m!2687877))

(assert (=> b!2257791 d!669096))

(declare-fun b!2258182 () Bool)

(declare-fun e!1445757 () Int)

(assert (=> b!2258182 (= e!1445757 (+ 1 (getIndex!282 (t!201371 rules!1750) r!2363)))))

(declare-fun b!2258181 () Bool)

(declare-fun e!1445756 () Int)

(assert (=> b!2258181 (= e!1445756 e!1445757)))

(declare-fun c!358801 () Bool)

(assert (=> b!2258181 (= c!358801 (and ((_ is Cons!26809) rules!1750) (not (= (h!32210 rules!1750) r!2363))))))

(declare-fun d!669098 () Bool)

(declare-fun lt!839246 () Int)

(assert (=> d!669098 (>= lt!839246 0)))

(assert (=> d!669098 (= lt!839246 e!1445756)))

(declare-fun c!358802 () Bool)

(assert (=> d!669098 (= c!358802 (and ((_ is Cons!26809) rules!1750) (= (h!32210 rules!1750) r!2363)))))

(assert (=> d!669098 (contains!4613 rules!1750 r!2363)))

(assert (=> d!669098 (= (getIndex!282 rules!1750 r!2363) lt!839246)))

(declare-fun b!2258183 () Bool)

(assert (=> b!2258183 (= e!1445757 (- 1))))

(declare-fun b!2258180 () Bool)

(assert (=> b!2258180 (= e!1445756 0)))

(assert (= (and d!669098 c!358802) b!2258180))

(assert (= (and d!669098 (not c!358802)) b!2258181))

(assert (= (and b!2258181 c!358801) b!2258182))

(assert (= (and b!2258181 (not c!358801)) b!2258183))

(declare-fun m!2688215 () Bool)

(assert (=> b!2258182 m!2688215))

(assert (=> d!669098 m!2687885))

(assert (=> b!2257791 d!669098))

(declare-fun d!669100 () Bool)

(declare-fun res!965422 () Bool)

(declare-fun e!1445760 () Bool)

(assert (=> d!669100 (=> (not res!965422) (not e!1445760))))

(assert (=> d!669100 (= res!965422 (validRegex!2472 (regex!4261 otherR!12)))))

(assert (=> d!669100 (= (ruleValid!1353 thiss!16613 otherR!12) e!1445760)))

(declare-fun b!2258188 () Bool)

(declare-fun res!965423 () Bool)

(assert (=> b!2258188 (=> (not res!965423) (not e!1445760))))

(assert (=> b!2258188 (= res!965423 (not (nullable!1814 (regex!4261 otherR!12))))))

(declare-fun b!2258189 () Bool)

(assert (=> b!2258189 (= e!1445760 (not (= (tag!4751 otherR!12) (String!29220 ""))))))

(assert (= (and d!669100 res!965422) b!2258188))

(assert (= (and b!2258188 res!965423) b!2258189))

(assert (=> d!669100 m!2687889))

(declare-fun m!2688217 () Bool)

(assert (=> b!2258188 m!2688217))

(assert (=> b!2257791 d!669100))

(declare-fun d!669102 () Bool)

(assert (=> d!669102 (ruleValid!1353 thiss!16613 otherR!12)))

(declare-fun lt!839249 () Unit!39732)

(declare-fun choose!13212 (LexerInterface!3858 Rule!8322 List!26903) Unit!39732)

(assert (=> d!669102 (= lt!839249 (choose!13212 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!669102 (contains!4613 rules!1750 otherR!12)))

(assert (=> d!669102 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!760 thiss!16613 otherR!12 rules!1750) lt!839249)))

(declare-fun bs!455302 () Bool)

(assert (= bs!455302 d!669102))

(assert (=> bs!455302 m!2687895))

(declare-fun m!2688219 () Bool)

(assert (=> bs!455302 m!2688219))

(assert (=> bs!455302 m!2687877))

(assert (=> b!2257791 d!669102))

(declare-fun d!669104 () Bool)

(assert (=> d!669104 (= (inv!36335 (tag!4751 r!2363)) (= (mod (str.len (value!135257 (tag!4751 r!2363))) 2) 0))))

(assert (=> b!2257793 d!669104))

(declare-fun d!669106 () Bool)

(declare-fun res!965424 () Bool)

(declare-fun e!1445761 () Bool)

(assert (=> d!669106 (=> (not res!965424) (not e!1445761))))

(assert (=> d!669106 (= res!965424 (semiInverseModEq!1716 (toChars!5862 (transformation!4261 r!2363)) (toValue!6003 (transformation!4261 r!2363))))))

(assert (=> d!669106 (= (inv!36338 (transformation!4261 r!2363)) e!1445761)))

(declare-fun b!2258190 () Bool)

(assert (=> b!2258190 (= e!1445761 (equivClasses!1635 (toChars!5862 (transformation!4261 r!2363)) (toValue!6003 (transformation!4261 r!2363))))))

(assert (= (and d!669106 res!965424) b!2258190))

(declare-fun m!2688221 () Bool)

(assert (=> d!669106 m!2688221))

(declare-fun m!2688223 () Bool)

(assert (=> b!2258190 m!2688223))

(assert (=> b!2257793 d!669106))

(declare-fun d!669108 () Bool)

(declare-fun res!965429 () Bool)

(declare-fun e!1445764 () Bool)

(assert (=> d!669108 (=> (not res!965429) (not e!1445764))))

(assert (=> d!669108 (= res!965429 (not (isEmpty!15148 (originalCharacters!5031 (h!32211 tokens!456)))))))

(assert (=> d!669108 (= (inv!36339 (h!32211 tokens!456)) e!1445764)))

(declare-fun b!2258195 () Bool)

(declare-fun res!965430 () Bool)

(assert (=> b!2258195 (=> (not res!965430) (not e!1445764))))

(assert (=> b!2258195 (= res!965430 (= (originalCharacters!5031 (h!32211 tokens!456)) (list!10322 (dynLambda!11627 (toChars!5862 (transformation!4261 (rule!6569 (h!32211 tokens!456)))) (value!135258 (h!32211 tokens!456))))))))

(declare-fun b!2258196 () Bool)

(assert (=> b!2258196 (= e!1445764 (= (size!20995 (h!32211 tokens!456)) (size!20997 (originalCharacters!5031 (h!32211 tokens!456)))))))

(assert (= (and d!669108 res!965429) b!2258195))

(assert (= (and b!2258195 res!965430) b!2258196))

(declare-fun b_lambda!72089 () Bool)

(assert (=> (not b_lambda!72089) (not b!2258195)))

(declare-fun t!201406 () Bool)

(declare-fun tb!133823 () Bool)

(assert (=> (and b!2257790 (= (toChars!5862 (transformation!4261 (h!32210 rules!1750))) (toChars!5862 (transformation!4261 (rule!6569 (h!32211 tokens!456))))) t!201406) tb!133823))

(declare-fun b!2258197 () Bool)

(declare-fun e!1445765 () Bool)

(declare-fun tp!713902 () Bool)

(assert (=> b!2258197 (= e!1445765 (and (inv!36342 (c!358730 (dynLambda!11627 (toChars!5862 (transformation!4261 (rule!6569 (h!32211 tokens!456)))) (value!135258 (h!32211 tokens!456))))) tp!713902))))

(declare-fun result!163150 () Bool)

(assert (=> tb!133823 (= result!163150 (and (inv!36343 (dynLambda!11627 (toChars!5862 (transformation!4261 (rule!6569 (h!32211 tokens!456)))) (value!135258 (h!32211 tokens!456)))) e!1445765))))

(assert (= tb!133823 b!2258197))

(declare-fun m!2688225 () Bool)

(assert (=> b!2258197 m!2688225))

(declare-fun m!2688227 () Bool)

(assert (=> tb!133823 m!2688227))

(assert (=> b!2258195 t!201406))

(declare-fun b_and!177329 () Bool)

(assert (= b_and!177297 (and (=> t!201406 result!163150) b_and!177329)))

(declare-fun t!201408 () Bool)

(declare-fun tb!133825 () Bool)

(assert (=> (and b!2257781 (= (toChars!5862 (transformation!4261 r!2363)) (toChars!5862 (transformation!4261 (rule!6569 (h!32211 tokens!456))))) t!201408) tb!133825))

(declare-fun result!163152 () Bool)

(assert (= result!163152 result!163150))

(assert (=> b!2258195 t!201408))

(declare-fun b_and!177331 () Bool)

(assert (= b_and!177299 (and (=> t!201408 result!163152) b_and!177331)))

(declare-fun tb!133827 () Bool)

(declare-fun t!201410 () Bool)

(assert (=> (and b!2257775 (= (toChars!5862 (transformation!4261 otherR!12)) (toChars!5862 (transformation!4261 (rule!6569 (h!32211 tokens!456))))) t!201410) tb!133827))

(declare-fun result!163154 () Bool)

(assert (= result!163154 result!163150))

(assert (=> b!2258195 t!201410))

(declare-fun b_and!177333 () Bool)

(assert (= b_and!177301 (and (=> t!201410 result!163154) b_and!177333)))

(declare-fun t!201412 () Bool)

(declare-fun tb!133829 () Bool)

(assert (=> (and b!2257780 (= (toChars!5862 (transformation!4261 (rule!6569 (h!32211 tokens!456)))) (toChars!5862 (transformation!4261 (rule!6569 (h!32211 tokens!456))))) t!201412) tb!133829))

(declare-fun result!163156 () Bool)

(assert (= result!163156 result!163150))

(assert (=> b!2258195 t!201412))

(declare-fun b_and!177335 () Bool)

(assert (= b_and!177303 (and (=> t!201412 result!163156) b_and!177335)))

(declare-fun m!2688229 () Bool)

(assert (=> d!669108 m!2688229))

(declare-fun m!2688231 () Bool)

(assert (=> b!2258195 m!2688231))

(assert (=> b!2258195 m!2688231))

(declare-fun m!2688233 () Bool)

(assert (=> b!2258195 m!2688233))

(declare-fun m!2688235 () Bool)

(assert (=> b!2258196 m!2688235))

(assert (=> b!2257792 d!669108))

(assert (=> b!2257771 d!668994))

(declare-fun b!2258208 () Bool)

(declare-fun e!1445774 () Bool)

(assert (=> b!2258208 (= e!1445774 (isPrefix!2251 (tail!3257 otherP!12) (tail!3257 input!1722)))))

(declare-fun b!2258206 () Bool)

(declare-fun e!1445772 () Bool)

(assert (=> b!2258206 (= e!1445772 e!1445774)))

(declare-fun res!965442 () Bool)

(assert (=> b!2258206 (=> (not res!965442) (not e!1445774))))

(assert (=> b!2258206 (= res!965442 (not ((_ is Nil!26808) input!1722)))))

(declare-fun b!2258209 () Bool)

(declare-fun e!1445773 () Bool)

(assert (=> b!2258209 (= e!1445773 (>= (size!20997 input!1722) (size!20997 otherP!12)))))

(declare-fun b!2258207 () Bool)

(declare-fun res!965439 () Bool)

(assert (=> b!2258207 (=> (not res!965439) (not e!1445774))))

(assert (=> b!2258207 (= res!965439 (= (head!4838 otherP!12) (head!4838 input!1722)))))

(declare-fun d!669110 () Bool)

(assert (=> d!669110 e!1445773))

(declare-fun res!965440 () Bool)

(assert (=> d!669110 (=> res!965440 e!1445773)))

(declare-fun lt!839252 () Bool)

(assert (=> d!669110 (= res!965440 (not lt!839252))))

(assert (=> d!669110 (= lt!839252 e!1445772)))

(declare-fun res!965441 () Bool)

(assert (=> d!669110 (=> res!965441 e!1445772)))

(assert (=> d!669110 (= res!965441 ((_ is Nil!26808) otherP!12))))

(assert (=> d!669110 (= (isPrefix!2251 otherP!12 input!1722) lt!839252)))

(assert (= (and d!669110 (not res!965441)) b!2258206))

(assert (= (and b!2258206 res!965442) b!2258207))

(assert (= (and b!2258207 res!965439) b!2258208))

(assert (= (and d!669110 (not res!965440)) b!2258209))

(declare-fun m!2688237 () Bool)

(assert (=> b!2258208 m!2688237))

(declare-fun m!2688239 () Bool)

(assert (=> b!2258208 m!2688239))

(assert (=> b!2258208 m!2688237))

(assert (=> b!2258208 m!2688239))

(declare-fun m!2688241 () Bool)

(assert (=> b!2258208 m!2688241))

(declare-fun m!2688243 () Bool)

(assert (=> b!2258209 m!2688243))

(assert (=> b!2258209 m!2687861))

(declare-fun m!2688245 () Bool)

(assert (=> b!2258207 m!2688245))

(declare-fun m!2688247 () Bool)

(assert (=> b!2258207 m!2688247))

(assert (=> b!2257794 d!669110))

(declare-fun b!2258210 () Bool)

(declare-fun e!1445779 () Bool)

(assert (=> b!2258210 (= e!1445779 (not (= (head!4838 otherP!12) (c!358731 (regex!4261 otherR!12)))))))

(declare-fun b!2258211 () Bool)

(declare-fun e!1445781 () Bool)

(declare-fun lt!839253 () Bool)

(assert (=> b!2258211 (= e!1445781 (not lt!839253))))

(declare-fun b!2258212 () Bool)

(declare-fun e!1445776 () Bool)

(assert (=> b!2258212 (= e!1445776 e!1445781)))

(declare-fun c!358805 () Bool)

(assert (=> b!2258212 (= c!358805 ((_ is EmptyLang!6609) (regex!4261 otherR!12)))))

(declare-fun b!2258213 () Bool)

(declare-fun call!135739 () Bool)

(assert (=> b!2258213 (= e!1445776 (= lt!839253 call!135739))))

(declare-fun b!2258214 () Bool)

(declare-fun e!1445775 () Bool)

(assert (=> b!2258214 (= e!1445775 (= (head!4838 otherP!12) (c!358731 (regex!4261 otherR!12))))))

(declare-fun b!2258215 () Bool)

(declare-fun res!965447 () Bool)

(assert (=> b!2258215 (=> (not res!965447) (not e!1445775))))

(assert (=> b!2258215 (= res!965447 (not call!135739))))

(declare-fun b!2258216 () Bool)

(declare-fun res!965443 () Bool)

(assert (=> b!2258216 (=> (not res!965443) (not e!1445775))))

(assert (=> b!2258216 (= res!965443 (isEmpty!15148 (tail!3257 otherP!12)))))

(declare-fun bm!135734 () Bool)

(assert (=> bm!135734 (= call!135739 (isEmpty!15148 otherP!12))))

(declare-fun d!669112 () Bool)

(assert (=> d!669112 e!1445776))

(declare-fun c!358803 () Bool)

(assert (=> d!669112 (= c!358803 ((_ is EmptyExpr!6609) (regex!4261 otherR!12)))))

(declare-fun e!1445777 () Bool)

(assert (=> d!669112 (= lt!839253 e!1445777)))

(declare-fun c!358804 () Bool)

(assert (=> d!669112 (= c!358804 (isEmpty!15148 otherP!12))))

(assert (=> d!669112 (validRegex!2472 (regex!4261 otherR!12))))

(assert (=> d!669112 (= (matchR!2870 (regex!4261 otherR!12) otherP!12) lt!839253)))

(declare-fun b!2258217 () Bool)

(assert (=> b!2258217 (= e!1445777 (nullable!1814 (regex!4261 otherR!12)))))

(declare-fun b!2258218 () Bool)

(declare-fun res!965448 () Bool)

(declare-fun e!1445780 () Bool)

(assert (=> b!2258218 (=> res!965448 e!1445780)))

(assert (=> b!2258218 (= res!965448 (not ((_ is ElementMatch!6609) (regex!4261 otherR!12))))))

(assert (=> b!2258218 (= e!1445781 e!1445780)))

(declare-fun b!2258219 () Bool)

(assert (=> b!2258219 (= e!1445777 (matchR!2870 (derivativeStep!1476 (regex!4261 otherR!12) (head!4838 otherP!12)) (tail!3257 otherP!12)))))

(declare-fun b!2258220 () Bool)

(declare-fun e!1445778 () Bool)

(assert (=> b!2258220 (= e!1445780 e!1445778)))

(declare-fun res!965446 () Bool)

(assert (=> b!2258220 (=> (not res!965446) (not e!1445778))))

(assert (=> b!2258220 (= res!965446 (not lt!839253))))

(declare-fun b!2258221 () Bool)

(declare-fun res!965445 () Bool)

(assert (=> b!2258221 (=> res!965445 e!1445779)))

(assert (=> b!2258221 (= res!965445 (not (isEmpty!15148 (tail!3257 otherP!12))))))

(declare-fun b!2258222 () Bool)

(declare-fun res!965444 () Bool)

(assert (=> b!2258222 (=> res!965444 e!1445780)))

(assert (=> b!2258222 (= res!965444 e!1445775)))

(declare-fun res!965450 () Bool)

(assert (=> b!2258222 (=> (not res!965450) (not e!1445775))))

(assert (=> b!2258222 (= res!965450 lt!839253)))

(declare-fun b!2258223 () Bool)

(assert (=> b!2258223 (= e!1445778 e!1445779)))

(declare-fun res!965449 () Bool)

(assert (=> b!2258223 (=> res!965449 e!1445779)))

(assert (=> b!2258223 (= res!965449 call!135739)))

(assert (= (and d!669112 c!358804) b!2258217))

(assert (= (and d!669112 (not c!358804)) b!2258219))

(assert (= (and d!669112 c!358803) b!2258213))

(assert (= (and d!669112 (not c!358803)) b!2258212))

(assert (= (and b!2258212 c!358805) b!2258211))

(assert (= (and b!2258212 (not c!358805)) b!2258218))

(assert (= (and b!2258218 (not res!965448)) b!2258222))

(assert (= (and b!2258222 res!965450) b!2258215))

(assert (= (and b!2258215 res!965447) b!2258216))

(assert (= (and b!2258216 res!965443) b!2258214))

(assert (= (and b!2258222 (not res!965444)) b!2258220))

(assert (= (and b!2258220 res!965446) b!2258223))

(assert (= (and b!2258223 (not res!965449)) b!2258221))

(assert (= (and b!2258221 (not res!965445)) b!2258210))

(assert (= (or b!2258213 b!2258215 b!2258223) bm!135734))

(declare-fun m!2688249 () Bool)

(assert (=> bm!135734 m!2688249))

(assert (=> d!669112 m!2688249))

(assert (=> d!669112 m!2687889))

(assert (=> b!2258221 m!2688237))

(assert (=> b!2258221 m!2688237))

(declare-fun m!2688251 () Bool)

(assert (=> b!2258221 m!2688251))

(assert (=> b!2258210 m!2688245))

(assert (=> b!2258219 m!2688245))

(assert (=> b!2258219 m!2688245))

(declare-fun m!2688253 () Bool)

(assert (=> b!2258219 m!2688253))

(assert (=> b!2258219 m!2688237))

(assert (=> b!2258219 m!2688253))

(assert (=> b!2258219 m!2688237))

(declare-fun m!2688255 () Bool)

(assert (=> b!2258219 m!2688255))

(assert (=> b!2258217 m!2688217))

(assert (=> b!2258216 m!2688237))

(assert (=> b!2258216 m!2688237))

(assert (=> b!2258216 m!2688251))

(assert (=> b!2258214 m!2688245))

(assert (=> b!2257773 d!669112))

(declare-fun d!669114 () Bool)

(assert (=> d!669114 (not (matchR!2870 (regex!4261 otherR!12) otherP!12))))

(declare-fun lt!839256 () Unit!39732)

(declare-fun choose!13213 (LexerInterface!3858 Rule!8322 List!26902 List!26902) Unit!39732)

(assert (=> d!669114 (= lt!839256 (choose!13213 thiss!16613 otherR!12 otherP!12 input!1722))))

(assert (=> d!669114 (isPrefix!2251 otherP!12 input!1722)))

(assert (=> d!669114 (= (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!401 thiss!16613 otherR!12 otherP!12 input!1722) lt!839256)))

(declare-fun bs!455303 () Bool)

(assert (= bs!455303 d!669114))

(assert (=> bs!455303 m!2687881))

(declare-fun m!2688257 () Bool)

(assert (=> bs!455303 m!2688257))

(assert (=> bs!455303 m!2687887))

(assert (=> b!2257773 d!669114))

(declare-fun d!669116 () Bool)

(declare-fun lt!839257 () Bool)

(assert (=> d!669116 (= lt!839257 (select (content!3570 rules!1750) otherR!12))))

(declare-fun e!1445782 () Bool)

(assert (=> d!669116 (= lt!839257 e!1445782)))

(declare-fun res!965451 () Bool)

(assert (=> d!669116 (=> (not res!965451) (not e!1445782))))

(assert (=> d!669116 (= res!965451 ((_ is Cons!26809) rules!1750))))

(assert (=> d!669116 (= (contains!4613 rules!1750 otherR!12) lt!839257)))

(declare-fun b!2258224 () Bool)

(declare-fun e!1445783 () Bool)

(assert (=> b!2258224 (= e!1445782 e!1445783)))

(declare-fun res!965452 () Bool)

(assert (=> b!2258224 (=> res!965452 e!1445783)))

(assert (=> b!2258224 (= res!965452 (= (h!32210 rules!1750) otherR!12))))

(declare-fun b!2258225 () Bool)

(assert (=> b!2258225 (= e!1445783 (contains!4613 (t!201371 rules!1750) otherR!12))))

(assert (= (and d!669116 res!965451) b!2258224))

(assert (= (and b!2258224 (not res!965452)) b!2258225))

(assert (=> d!669116 m!2688199))

(declare-fun m!2688259 () Bool)

(assert (=> d!669116 m!2688259))

(declare-fun m!2688261 () Bool)

(assert (=> b!2258225 m!2688261))

(assert (=> b!2257772 d!669116))

(declare-fun d!669118 () Bool)

(assert (=> d!669118 (= (inv!36335 (tag!4751 otherR!12)) (= (mod (str.len (value!135257 (tag!4751 otherR!12))) 2) 0))))

(assert (=> b!2257774 d!669118))

(declare-fun d!669120 () Bool)

(declare-fun res!965453 () Bool)

(declare-fun e!1445784 () Bool)

(assert (=> d!669120 (=> (not res!965453) (not e!1445784))))

(assert (=> d!669120 (= res!965453 (semiInverseModEq!1716 (toChars!5862 (transformation!4261 otherR!12)) (toValue!6003 (transformation!4261 otherR!12))))))

(assert (=> d!669120 (= (inv!36338 (transformation!4261 otherR!12)) e!1445784)))

(declare-fun b!2258226 () Bool)

(assert (=> b!2258226 (= e!1445784 (equivClasses!1635 (toChars!5862 (transformation!4261 otherR!12)) (toValue!6003 (transformation!4261 otherR!12))))))

(assert (= (and d!669120 res!965453) b!2258226))

(declare-fun m!2688263 () Bool)

(assert (=> d!669120 m!2688263))

(declare-fun m!2688265 () Bool)

(assert (=> b!2258226 m!2688265))

(assert (=> b!2257774 d!669120))

(declare-fun d!669122 () Bool)

(declare-fun c!358811 () Bool)

(assert (=> d!669122 (= c!358811 ((_ is IntegerValue!13269) (value!135258 (h!32211 tokens!456))))))

(declare-fun e!1445793 () Bool)

(assert (=> d!669122 (= (inv!21 (value!135258 (h!32211 tokens!456))) e!1445793)))

(declare-fun b!2258237 () Bool)

(declare-fun e!1445792 () Bool)

(declare-fun inv!15 (TokenValue!4423) Bool)

(assert (=> b!2258237 (= e!1445792 (inv!15 (value!135258 (h!32211 tokens!456))))))

(declare-fun b!2258238 () Bool)

(declare-fun res!965456 () Bool)

(assert (=> b!2258238 (=> res!965456 e!1445792)))

(assert (=> b!2258238 (= res!965456 (not ((_ is IntegerValue!13271) (value!135258 (h!32211 tokens!456)))))))

(declare-fun e!1445791 () Bool)

(assert (=> b!2258238 (= e!1445791 e!1445792)))

(declare-fun b!2258239 () Bool)

(declare-fun inv!17 (TokenValue!4423) Bool)

(assert (=> b!2258239 (= e!1445791 (inv!17 (value!135258 (h!32211 tokens!456))))))

(declare-fun b!2258240 () Bool)

(assert (=> b!2258240 (= e!1445793 e!1445791)))

(declare-fun c!358810 () Bool)

(assert (=> b!2258240 (= c!358810 ((_ is IntegerValue!13270) (value!135258 (h!32211 tokens!456))))))

(declare-fun b!2258241 () Bool)

(declare-fun inv!16 (TokenValue!4423) Bool)

(assert (=> b!2258241 (= e!1445793 (inv!16 (value!135258 (h!32211 tokens!456))))))

(assert (= (and d!669122 c!358811) b!2258241))

(assert (= (and d!669122 (not c!358811)) b!2258240))

(assert (= (and b!2258240 c!358810) b!2258239))

(assert (= (and b!2258240 (not c!358810)) b!2258238))

(assert (= (and b!2258238 (not res!965456)) b!2258237))

(declare-fun m!2688267 () Bool)

(assert (=> b!2258237 m!2688267))

(declare-fun m!2688269 () Bool)

(assert (=> b!2258239 m!2688269))

(declare-fun m!2688271 () Bool)

(assert (=> b!2258241 m!2688271))

(assert (=> b!2257797 d!669122))

(declare-fun d!669124 () Bool)

(declare-fun res!965457 () Bool)

(declare-fun e!1445794 () Bool)

(assert (=> d!669124 (=> (not res!965457) (not e!1445794))))

(assert (=> d!669124 (= res!965457 (validRegex!2472 (regex!4261 r!2363)))))

(assert (=> d!669124 (= (ruleValid!1353 thiss!16613 r!2363) e!1445794)))

(declare-fun b!2258242 () Bool)

(declare-fun res!965458 () Bool)

(assert (=> b!2258242 (=> (not res!965458) (not e!1445794))))

(assert (=> b!2258242 (= res!965458 (not (nullable!1814 (regex!4261 r!2363))))))

(declare-fun b!2258243 () Bool)

(assert (=> b!2258243 (= e!1445794 (not (= (tag!4751 r!2363) (String!29220 ""))))))

(assert (= (and d!669124 res!965457) b!2258242))

(assert (= (and b!2258242 res!965458) b!2258243))

(assert (=> d!669124 m!2688153))

(assert (=> b!2258242 m!2688165))

(assert (=> b!2257798 d!669124))

(declare-fun d!669126 () Bool)

(assert (=> d!669126 (ruleValid!1353 thiss!16613 r!2363)))

(declare-fun lt!839258 () Unit!39732)

(assert (=> d!669126 (= lt!839258 (choose!13212 thiss!16613 r!2363 rules!1750))))

(assert (=> d!669126 (contains!4613 rules!1750 r!2363)))

(assert (=> d!669126 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!760 thiss!16613 r!2363 rules!1750) lt!839258)))

(declare-fun bs!455304 () Bool)

(assert (= bs!455304 d!669126))

(assert (=> bs!455304 m!2687867))

(declare-fun m!2688273 () Bool)

(assert (=> bs!455304 m!2688273))

(assert (=> bs!455304 m!2687885))

(assert (=> b!2257798 d!669126))

(declare-fun b!2258262 () Bool)

(declare-fun e!1445813 () Bool)

(declare-fun call!135746 () Bool)

(assert (=> b!2258262 (= e!1445813 call!135746)))

(declare-fun b!2258263 () Bool)

(declare-fun res!965471 () Bool)

(declare-fun e!1445810 () Bool)

(assert (=> b!2258263 (=> (not res!965471) (not e!1445810))))

(assert (=> b!2258263 (= res!965471 call!135746)))

(declare-fun e!1445814 () Bool)

(assert (=> b!2258263 (= e!1445814 e!1445810)))

(declare-fun b!2258264 () Bool)

(declare-fun res!965469 () Bool)

(declare-fun e!1445815 () Bool)

(assert (=> b!2258264 (=> res!965469 e!1445815)))

(assert (=> b!2258264 (= res!965469 (not ((_ is Concat!11033) (regex!4261 otherR!12))))))

(assert (=> b!2258264 (= e!1445814 e!1445815)))

(declare-fun d!669128 () Bool)

(declare-fun res!965470 () Bool)

(declare-fun e!1445809 () Bool)

(assert (=> d!669128 (=> res!965470 e!1445809)))

(assert (=> d!669128 (= res!965470 ((_ is ElementMatch!6609) (regex!4261 otherR!12)))))

(assert (=> d!669128 (= (validRegex!2472 (regex!4261 otherR!12)) e!1445809)))

(declare-fun bm!135741 () Bool)

(declare-fun call!135748 () Bool)

(declare-fun call!135747 () Bool)

(assert (=> bm!135741 (= call!135748 call!135747)))

(declare-fun b!2258265 () Bool)

(declare-fun e!1445811 () Bool)

(assert (=> b!2258265 (= e!1445811 e!1445814)))

(declare-fun c!358817 () Bool)

(assert (=> b!2258265 (= c!358817 ((_ is Union!6609) (regex!4261 otherR!12)))))

(declare-fun b!2258266 () Bool)

(assert (=> b!2258266 (= e!1445810 call!135748)))

(declare-fun b!2258267 () Bool)

(declare-fun e!1445812 () Bool)

(assert (=> b!2258267 (= e!1445811 e!1445812)))

(declare-fun res!965473 () Bool)

(assert (=> b!2258267 (= res!965473 (not (nullable!1814 (reg!6938 (regex!4261 otherR!12)))))))

(assert (=> b!2258267 (=> (not res!965473) (not e!1445812))))

(declare-fun bm!135742 () Bool)

(declare-fun c!358816 () Bool)

(assert (=> bm!135742 (= call!135747 (validRegex!2472 (ite c!358816 (reg!6938 (regex!4261 otherR!12)) (ite c!358817 (regTwo!13731 (regex!4261 otherR!12)) (regOne!13730 (regex!4261 otherR!12))))))))

(declare-fun b!2258268 () Bool)

(assert (=> b!2258268 (= e!1445812 call!135747)))

(declare-fun bm!135743 () Bool)

(assert (=> bm!135743 (= call!135746 (validRegex!2472 (ite c!358817 (regOne!13731 (regex!4261 otherR!12)) (regTwo!13730 (regex!4261 otherR!12)))))))

(declare-fun b!2258269 () Bool)

(assert (=> b!2258269 (= e!1445809 e!1445811)))

(assert (=> b!2258269 (= c!358816 ((_ is Star!6609) (regex!4261 otherR!12)))))

(declare-fun b!2258270 () Bool)

(assert (=> b!2258270 (= e!1445815 e!1445813)))

(declare-fun res!965472 () Bool)

(assert (=> b!2258270 (=> (not res!965472) (not e!1445813))))

(assert (=> b!2258270 (= res!965472 call!135748)))

(assert (= (and d!669128 (not res!965470)) b!2258269))

(assert (= (and b!2258269 c!358816) b!2258267))

(assert (= (and b!2258269 (not c!358816)) b!2258265))

(assert (= (and b!2258267 res!965473) b!2258268))

(assert (= (and b!2258265 c!358817) b!2258263))

(assert (= (and b!2258265 (not c!358817)) b!2258264))

(assert (= (and b!2258263 res!965471) b!2258266))

(assert (= (and b!2258264 (not res!965469)) b!2258270))

(assert (= (and b!2258270 res!965472) b!2258262))

(assert (= (or b!2258263 b!2258262) bm!135743))

(assert (= (or b!2258266 b!2258270) bm!135741))

(assert (= (or b!2258268 bm!135741) bm!135742))

(declare-fun m!2688275 () Bool)

(assert (=> b!2258267 m!2688275))

(declare-fun m!2688277 () Bool)

(assert (=> bm!135742 m!2688277))

(declare-fun m!2688279 () Bool)

(assert (=> bm!135743 m!2688279))

(assert (=> b!2257777 d!669128))

(declare-fun d!669130 () Bool)

(assert (=> d!669130 (= (isEmpty!15142 lt!839151) (not ((_ is Some!5236) lt!839151)))))

(assert (=> b!2257776 d!669130))

(declare-fun b!2258289 () Bool)

(declare-fun e!1445826 () Bool)

(declare-fun lt!839272 () Option!5237)

(declare-fun get!8091 (Option!5237) tuple2!26382)

(assert (=> b!2258289 (= e!1445826 (= (size!20995 (_1!15701 (get!8091 lt!839272))) (size!20997 (originalCharacters!5031 (_1!15701 (get!8091 lt!839272))))))))

(declare-fun b!2258290 () Bool)

(declare-fun res!965493 () Bool)

(assert (=> b!2258290 (=> (not res!965493) (not e!1445826))))

(assert (=> b!2258290 (= res!965493 (< (size!20997 (_2!15701 (get!8091 lt!839272))) (size!20997 input!1722)))))

(declare-fun b!2258291 () Bool)

(declare-fun e!1445824 () Bool)

(declare-datatypes ((tuple2!26390 0))(
  ( (tuple2!26391 (_1!15705 List!26902) (_2!15705 List!26902)) )
))
(declare-fun findLongestMatchInner!695 (Regex!6609 List!26902 Int List!26902 List!26902 Int) tuple2!26390)

(assert (=> b!2258291 (= e!1445824 (matchR!2870 (regex!4261 otherR!12) (_1!15705 (findLongestMatchInner!695 (regex!4261 otherR!12) Nil!26808 (size!20997 Nil!26808) input!1722 input!1722 (size!20997 input!1722)))))))

(declare-fun b!2258292 () Bool)

(declare-fun res!965489 () Bool)

(assert (=> b!2258292 (=> (not res!965489) (not e!1445826))))

(declare-fun apply!6573 (TokenValueInjection!8386 BalanceConc!17068) TokenValue!4423)

(assert (=> b!2258292 (= res!965489 (= (value!135258 (_1!15701 (get!8091 lt!839272))) (apply!6573 (transformation!4261 (rule!6569 (_1!15701 (get!8091 lt!839272)))) (seqFromList!2965 (originalCharacters!5031 (_1!15701 (get!8091 lt!839272)))))))))

(declare-fun b!2258293 () Bool)

(declare-fun res!965491 () Bool)

(assert (=> b!2258293 (=> (not res!965491) (not e!1445826))))

(assert (=> b!2258293 (= res!965491 (= (rule!6569 (_1!15701 (get!8091 lt!839272))) otherR!12))))

(declare-fun b!2258295 () Bool)

(declare-fun e!1445825 () Option!5237)

(declare-fun lt!839269 () tuple2!26390)

(assert (=> b!2258295 (= e!1445825 (Some!5236 (tuple2!26383 (Token!8001 (apply!6573 (transformation!4261 otherR!12) (seqFromList!2965 (_1!15705 lt!839269))) otherR!12 (size!20996 (seqFromList!2965 (_1!15705 lt!839269))) (_1!15705 lt!839269)) (_2!15705 lt!839269))))))

(declare-fun lt!839270 () Unit!39732)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!668 (Regex!6609 List!26902) Unit!39732)

(assert (=> b!2258295 (= lt!839270 (longestMatchIsAcceptedByMatchOrIsEmpty!668 (regex!4261 otherR!12) input!1722))))

(declare-fun res!965488 () Bool)

(assert (=> b!2258295 (= res!965488 (isEmpty!15148 (_1!15705 (findLongestMatchInner!695 (regex!4261 otherR!12) Nil!26808 (size!20997 Nil!26808) input!1722 input!1722 (size!20997 input!1722)))))))

(assert (=> b!2258295 (=> res!965488 e!1445824)))

(assert (=> b!2258295 e!1445824))

(declare-fun lt!839271 () Unit!39732)

(assert (=> b!2258295 (= lt!839271 lt!839270)))

(declare-fun lt!839273 () Unit!39732)

(declare-fun lemmaSemiInverse!1018 (TokenValueInjection!8386 BalanceConc!17068) Unit!39732)

(assert (=> b!2258295 (= lt!839273 (lemmaSemiInverse!1018 (transformation!4261 otherR!12) (seqFromList!2965 (_1!15705 lt!839269))))))

(declare-fun b!2258296 () Bool)

(declare-fun res!965494 () Bool)

(assert (=> b!2258296 (=> (not res!965494) (not e!1445826))))

(declare-fun ++!6525 (List!26902 List!26902) List!26902)

(assert (=> b!2258296 (= res!965494 (= (++!6525 (list!10322 (charsOf!2649 (_1!15701 (get!8091 lt!839272)))) (_2!15701 (get!8091 lt!839272))) input!1722))))

(declare-fun b!2258297 () Bool)

(assert (=> b!2258297 (= e!1445825 None!5236)))

(declare-fun d!669132 () Bool)

(declare-fun e!1445827 () Bool)

(assert (=> d!669132 e!1445827))

(declare-fun res!965490 () Bool)

(assert (=> d!669132 (=> res!965490 e!1445827)))

(assert (=> d!669132 (= res!965490 (isEmpty!15142 lt!839272))))

(assert (=> d!669132 (= lt!839272 e!1445825)))

(declare-fun c!358820 () Bool)

(assert (=> d!669132 (= c!358820 (isEmpty!15148 (_1!15705 lt!839269)))))

(declare-fun findLongestMatch!624 (Regex!6609 List!26902) tuple2!26390)

(assert (=> d!669132 (= lt!839269 (findLongestMatch!624 (regex!4261 otherR!12) input!1722))))

(assert (=> d!669132 (ruleValid!1353 thiss!16613 otherR!12)))

(assert (=> d!669132 (= (maxPrefixOneRule!1336 thiss!16613 otherR!12 input!1722) lt!839272)))

(declare-fun b!2258294 () Bool)

(assert (=> b!2258294 (= e!1445827 e!1445826)))

(declare-fun res!965492 () Bool)

(assert (=> b!2258294 (=> (not res!965492) (not e!1445826))))

(assert (=> b!2258294 (= res!965492 (matchR!2870 (regex!4261 otherR!12) (list!10322 (charsOf!2649 (_1!15701 (get!8091 lt!839272))))))))

(assert (= (and d!669132 c!358820) b!2258297))

(assert (= (and d!669132 (not c!358820)) b!2258295))

(assert (= (and b!2258295 (not res!965488)) b!2258291))

(assert (= (and d!669132 (not res!965490)) b!2258294))

(assert (= (and b!2258294 res!965492) b!2258296))

(assert (= (and b!2258296 res!965494) b!2258290))

(assert (= (and b!2258290 res!965493) b!2258293))

(assert (= (and b!2258293 res!965491) b!2258292))

(assert (= (and b!2258292 res!965489) b!2258289))

(declare-fun m!2688281 () Bool)

(assert (=> b!2258293 m!2688281))

(assert (=> b!2258292 m!2688281))

(declare-fun m!2688283 () Bool)

(assert (=> b!2258292 m!2688283))

(assert (=> b!2258292 m!2688283))

(declare-fun m!2688285 () Bool)

(assert (=> b!2258292 m!2688285))

(assert (=> b!2258290 m!2688281))

(declare-fun m!2688287 () Bool)

(assert (=> b!2258290 m!2688287))

(assert (=> b!2258290 m!2688243))

(declare-fun m!2688289 () Bool)

(assert (=> b!2258295 m!2688289))

(declare-fun m!2688291 () Bool)

(assert (=> b!2258295 m!2688291))

(assert (=> b!2258295 m!2688289))

(assert (=> b!2258295 m!2688243))

(declare-fun m!2688293 () Bool)

(assert (=> b!2258295 m!2688293))

(declare-fun m!2688295 () Bool)

(assert (=> b!2258295 m!2688295))

(assert (=> b!2258295 m!2688295))

(declare-fun m!2688297 () Bool)

(assert (=> b!2258295 m!2688297))

(assert (=> b!2258295 m!2688295))

(declare-fun m!2688299 () Bool)

(assert (=> b!2258295 m!2688299))

(assert (=> b!2258295 m!2688243))

(declare-fun m!2688301 () Bool)

(assert (=> b!2258295 m!2688301))

(assert (=> b!2258295 m!2688295))

(declare-fun m!2688303 () Bool)

(assert (=> b!2258295 m!2688303))

(assert (=> b!2258296 m!2688281))

(declare-fun m!2688305 () Bool)

(assert (=> b!2258296 m!2688305))

(assert (=> b!2258296 m!2688305))

(declare-fun m!2688307 () Bool)

(assert (=> b!2258296 m!2688307))

(assert (=> b!2258296 m!2688307))

(declare-fun m!2688309 () Bool)

(assert (=> b!2258296 m!2688309))

(assert (=> b!2258289 m!2688281))

(declare-fun m!2688311 () Bool)

(assert (=> b!2258289 m!2688311))

(declare-fun m!2688313 () Bool)

(assert (=> d!669132 m!2688313))

(declare-fun m!2688315 () Bool)

(assert (=> d!669132 m!2688315))

(declare-fun m!2688317 () Bool)

(assert (=> d!669132 m!2688317))

(assert (=> d!669132 m!2687895))

(assert (=> b!2258291 m!2688289))

(assert (=> b!2258291 m!2688243))

(assert (=> b!2258291 m!2688289))

(assert (=> b!2258291 m!2688243))

(assert (=> b!2258291 m!2688293))

(declare-fun m!2688319 () Bool)

(assert (=> b!2258291 m!2688319))

(assert (=> b!2258294 m!2688281))

(assert (=> b!2258294 m!2688305))

(assert (=> b!2258294 m!2688305))

(assert (=> b!2258294 m!2688307))

(assert (=> b!2258294 m!2688307))

(declare-fun m!2688321 () Bool)

(assert (=> b!2258294 m!2688321))

(assert (=> b!2257776 d!669132))

(declare-fun d!669134 () Bool)

(assert (=> d!669134 (isEmpty!15142 (maxPrefixOneRule!1336 thiss!16613 otherR!12 input!1722))))

(declare-fun lt!839276 () Unit!39732)

(declare-fun choose!13214 (LexerInterface!3858 Rule!8322 List!26903 List!26902) Unit!39732)

(assert (=> d!669134 (= lt!839276 (choose!13214 thiss!16613 otherR!12 rules!1750 input!1722))))

(assert (=> d!669134 (not (isEmpty!15143 rules!1750))))

(assert (=> d!669134 (= (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!409 thiss!16613 otherR!12 rules!1750 input!1722) lt!839276)))

(declare-fun bs!455305 () Bool)

(assert (= bs!455305 d!669134))

(assert (=> bs!455305 m!2687911))

(assert (=> bs!455305 m!2687911))

(declare-fun m!2688323 () Bool)

(assert (=> bs!455305 m!2688323))

(declare-fun m!2688325 () Bool)

(assert (=> bs!455305 m!2688325))

(assert (=> bs!455305 m!2687853))

(assert (=> b!2257776 d!669134))

(declare-fun b!2258311 () Bool)

(declare-fun e!1445830 () Bool)

(declare-fun tp!713913 () Bool)

(declare-fun tp!713914 () Bool)

(assert (=> b!2258311 (= e!1445830 (and tp!713913 tp!713914))))

(declare-fun b!2258308 () Bool)

(assert (=> b!2258308 (= e!1445830 tp_is_empty!10439)))

(declare-fun b!2258309 () Bool)

(declare-fun tp!713917 () Bool)

(declare-fun tp!713915 () Bool)

(assert (=> b!2258309 (= e!1445830 (and tp!713917 tp!713915))))

(declare-fun b!2258310 () Bool)

(declare-fun tp!713916 () Bool)

(assert (=> b!2258310 (= e!1445830 tp!713916)))

(assert (=> b!2257799 (= tp!713831 e!1445830)))

(assert (= (and b!2257799 ((_ is ElementMatch!6609) (regex!4261 (rule!6569 (h!32211 tokens!456))))) b!2258308))

(assert (= (and b!2257799 ((_ is Concat!11033) (regex!4261 (rule!6569 (h!32211 tokens!456))))) b!2258309))

(assert (= (and b!2257799 ((_ is Star!6609) (regex!4261 (rule!6569 (h!32211 tokens!456))))) b!2258310))

(assert (= (and b!2257799 ((_ is Union!6609) (regex!4261 (rule!6569 (h!32211 tokens!456))))) b!2258311))

(declare-fun b!2258316 () Bool)

(declare-fun e!1445833 () Bool)

(declare-fun tp!713920 () Bool)

(assert (=> b!2258316 (= e!1445833 (and tp_is_empty!10439 tp!713920))))

(assert (=> b!2257800 (= tp!713828 e!1445833)))

(assert (= (and b!2257800 ((_ is Cons!26808) (t!201370 otherP!12))) b!2258316))

(declare-fun b!2258317 () Bool)

(declare-fun e!1445834 () Bool)

(declare-fun tp!713921 () Bool)

(assert (=> b!2258317 (= e!1445834 (and tp_is_empty!10439 tp!713921))))

(assert (=> b!2257782 (= tp!713827 e!1445834)))

(assert (= (and b!2257782 ((_ is Cons!26808) (t!201370 input!1722))) b!2258317))

(declare-fun b!2258321 () Bool)

(declare-fun e!1445835 () Bool)

(declare-fun tp!713922 () Bool)

(declare-fun tp!713923 () Bool)

(assert (=> b!2258321 (= e!1445835 (and tp!713922 tp!713923))))

(declare-fun b!2258318 () Bool)

(assert (=> b!2258318 (= e!1445835 tp_is_empty!10439)))

(declare-fun b!2258319 () Bool)

(declare-fun tp!713926 () Bool)

(declare-fun tp!713924 () Bool)

(assert (=> b!2258319 (= e!1445835 (and tp!713926 tp!713924))))

(declare-fun b!2258320 () Bool)

(declare-fun tp!713925 () Bool)

(assert (=> b!2258320 (= e!1445835 tp!713925)))

(assert (=> b!2257793 (= tp!713819 e!1445835)))

(assert (= (and b!2257793 ((_ is ElementMatch!6609) (regex!4261 r!2363))) b!2258318))

(assert (= (and b!2257793 ((_ is Concat!11033) (regex!4261 r!2363))) b!2258319))

(assert (= (and b!2257793 ((_ is Star!6609) (regex!4261 r!2363))) b!2258320))

(assert (= (and b!2257793 ((_ is Union!6609) (regex!4261 r!2363))) b!2258321))

(declare-fun b!2258335 () Bool)

(declare-fun b_free!66581 () Bool)

(declare-fun b_next!67285 () Bool)

(assert (=> b!2258335 (= b_free!66581 (not b_next!67285))))

(declare-fun tp!713941 () Bool)

(declare-fun b_and!177337 () Bool)

(assert (=> b!2258335 (= tp!713941 b_and!177337)))

(declare-fun b_free!66583 () Bool)

(declare-fun b_next!67287 () Bool)

(assert (=> b!2258335 (= b_free!66583 (not b_next!67287))))

(declare-fun t!201414 () Bool)

(declare-fun tb!133831 () Bool)

(assert (=> (and b!2258335 (= (toChars!5862 (transformation!4261 (rule!6569 (h!32211 (t!201372 tokens!456))))) (toChars!5862 (transformation!4261 (rule!6569 (head!4836 tokens!456))))) t!201414) tb!133831))

(declare-fun result!163164 () Bool)

(assert (= result!163164 result!163106))

(assert (=> d!668988 t!201414))

(declare-fun t!201416 () Bool)

(declare-fun tb!133833 () Bool)

(assert (=> (and b!2258335 (= (toChars!5862 (transformation!4261 (rule!6569 (h!32211 (t!201372 tokens!456))))) (toChars!5862 (transformation!4261 (rule!6569 (h!32211 tokens!456))))) t!201416) tb!133833))

(declare-fun result!163166 () Bool)

(assert (= result!163166 result!163150))

(assert (=> b!2258195 t!201416))

(declare-fun b_and!177339 () Bool)

(declare-fun tp!713940 () Bool)

(assert (=> b!2258335 (= tp!713940 (and (=> t!201414 result!163164) (=> t!201416 result!163166) b_and!177339))))

(declare-fun e!1445850 () Bool)

(assert (=> b!2258335 (= e!1445850 (and tp!713941 tp!713940))))

(declare-fun b!2258334 () Bool)

(declare-fun tp!713937 () Bool)

(declare-fun e!1445848 () Bool)

(assert (=> b!2258334 (= e!1445848 (and tp!713937 (inv!36335 (tag!4751 (rule!6569 (h!32211 (t!201372 tokens!456))))) (inv!36338 (transformation!4261 (rule!6569 (h!32211 (t!201372 tokens!456))))) e!1445850))))

(declare-fun b!2258333 () Bool)

(declare-fun e!1445852 () Bool)

(declare-fun tp!713938 () Bool)

(assert (=> b!2258333 (= e!1445852 (and (inv!21 (value!135258 (h!32211 (t!201372 tokens!456)))) e!1445848 tp!713938))))

(declare-fun e!1445849 () Bool)

(assert (=> b!2257792 (= tp!713823 e!1445849)))

(declare-fun tp!713939 () Bool)

(declare-fun b!2258332 () Bool)

(assert (=> b!2258332 (= e!1445849 (and (inv!36339 (h!32211 (t!201372 tokens!456))) e!1445852 tp!713939))))

(assert (= b!2258334 b!2258335))

(assert (= b!2258333 b!2258334))

(assert (= b!2258332 b!2258333))

(assert (= (and b!2257792 ((_ is Cons!26810) (t!201372 tokens!456))) b!2258332))

(declare-fun m!2688327 () Bool)

(assert (=> b!2258334 m!2688327))

(declare-fun m!2688329 () Bool)

(assert (=> b!2258334 m!2688329))

(declare-fun m!2688331 () Bool)

(assert (=> b!2258333 m!2688331))

(declare-fun m!2688333 () Bool)

(assert (=> b!2258332 m!2688333))

(declare-fun b!2258339 () Bool)

(declare-fun e!1445854 () Bool)

(declare-fun tp!713942 () Bool)

(declare-fun tp!713943 () Bool)

(assert (=> b!2258339 (= e!1445854 (and tp!713942 tp!713943))))

(declare-fun b!2258336 () Bool)

(assert (=> b!2258336 (= e!1445854 tp_is_empty!10439)))

(declare-fun b!2258337 () Bool)

(declare-fun tp!713946 () Bool)

(declare-fun tp!713944 () Bool)

(assert (=> b!2258337 (= e!1445854 (and tp!713946 tp!713944))))

(declare-fun b!2258338 () Bool)

(declare-fun tp!713945 () Bool)

(assert (=> b!2258338 (= e!1445854 tp!713945)))

(assert (=> b!2257803 (= tp!713820 e!1445854)))

(assert (= (and b!2257803 ((_ is ElementMatch!6609) (regex!4261 (h!32210 rules!1750)))) b!2258336))

(assert (= (and b!2257803 ((_ is Concat!11033) (regex!4261 (h!32210 rules!1750)))) b!2258337))

(assert (= (and b!2257803 ((_ is Star!6609) (regex!4261 (h!32210 rules!1750)))) b!2258338))

(assert (= (and b!2257803 ((_ is Union!6609) (regex!4261 (h!32210 rules!1750)))) b!2258339))

(declare-fun b!2258343 () Bool)

(declare-fun e!1445855 () Bool)

(declare-fun tp!713947 () Bool)

(declare-fun tp!713948 () Bool)

(assert (=> b!2258343 (= e!1445855 (and tp!713947 tp!713948))))

(declare-fun b!2258340 () Bool)

(assert (=> b!2258340 (= e!1445855 tp_is_empty!10439)))

(declare-fun b!2258341 () Bool)

(declare-fun tp!713951 () Bool)

(declare-fun tp!713949 () Bool)

(assert (=> b!2258341 (= e!1445855 (and tp!713951 tp!713949))))

(declare-fun b!2258342 () Bool)

(declare-fun tp!713950 () Bool)

(assert (=> b!2258342 (= e!1445855 tp!713950)))

(assert (=> b!2257774 (= tp!713821 e!1445855)))

(assert (= (and b!2257774 ((_ is ElementMatch!6609) (regex!4261 otherR!12))) b!2258340))

(assert (= (and b!2257774 ((_ is Concat!11033) (regex!4261 otherR!12))) b!2258341))

(assert (= (and b!2257774 ((_ is Star!6609) (regex!4261 otherR!12))) b!2258342))

(assert (= (and b!2257774 ((_ is Union!6609) (regex!4261 otherR!12))) b!2258343))

(declare-fun b!2258344 () Bool)

(declare-fun e!1445856 () Bool)

(declare-fun tp!713952 () Bool)

(assert (=> b!2258344 (= e!1445856 (and tp_is_empty!10439 tp!713952))))

(assert (=> b!2257784 (= tp!713817 e!1445856)))

(assert (= (and b!2257784 ((_ is Cons!26808) (t!201370 suffix!886))) b!2258344))

(declare-fun b!2258345 () Bool)

(declare-fun e!1445857 () Bool)

(declare-fun tp!713953 () Bool)

(assert (=> b!2258345 (= e!1445857 (and tp_is_empty!10439 tp!713953))))

(assert (=> b!2257797 (= tp!713829 e!1445857)))

(assert (= (and b!2257797 ((_ is Cons!26808) (originalCharacters!5031 (h!32211 tokens!456)))) b!2258345))

(declare-fun b!2258356 () Bool)

(declare-fun b_free!66585 () Bool)

(declare-fun b_next!67289 () Bool)

(assert (=> b!2258356 (= b_free!66585 (not b_next!67289))))

(declare-fun tp!713964 () Bool)

(declare-fun b_and!177341 () Bool)

(assert (=> b!2258356 (= tp!713964 b_and!177341)))

(declare-fun b_free!66587 () Bool)

(declare-fun b_next!67291 () Bool)

(assert (=> b!2258356 (= b_free!66587 (not b_next!67291))))

(declare-fun t!201418 () Bool)

(declare-fun tb!133835 () Bool)

(assert (=> (and b!2258356 (= (toChars!5862 (transformation!4261 (h!32210 (t!201371 rules!1750)))) (toChars!5862 (transformation!4261 (rule!6569 (head!4836 tokens!456))))) t!201418) tb!133835))

(declare-fun result!163170 () Bool)

(assert (= result!163170 result!163106))

(assert (=> d!668988 t!201418))

(declare-fun tb!133837 () Bool)

(declare-fun t!201420 () Bool)

(assert (=> (and b!2258356 (= (toChars!5862 (transformation!4261 (h!32210 (t!201371 rules!1750)))) (toChars!5862 (transformation!4261 (rule!6569 (h!32211 tokens!456))))) t!201420) tb!133837))

(declare-fun result!163172 () Bool)

(assert (= result!163172 result!163150))

(assert (=> b!2258195 t!201420))

(declare-fun b_and!177343 () Bool)

(declare-fun tp!713963 () Bool)

(assert (=> b!2258356 (= tp!713963 (and (=> t!201418 result!163170) (=> t!201420 result!163172) b_and!177343))))

(declare-fun e!1445866 () Bool)

(assert (=> b!2258356 (= e!1445866 (and tp!713964 tp!713963))))

(declare-fun tp!713965 () Bool)

(declare-fun b!2258355 () Bool)

(declare-fun e!1445868 () Bool)

(assert (=> b!2258355 (= e!1445868 (and tp!713965 (inv!36335 (tag!4751 (h!32210 (t!201371 rules!1750)))) (inv!36338 (transformation!4261 (h!32210 (t!201371 rules!1750)))) e!1445866))))

(declare-fun b!2258354 () Bool)

(declare-fun e!1445869 () Bool)

(declare-fun tp!713962 () Bool)

(assert (=> b!2258354 (= e!1445869 (and e!1445868 tp!713962))))

(assert (=> b!2257796 (= tp!713815 e!1445869)))

(assert (= b!2258355 b!2258356))

(assert (= b!2258354 b!2258355))

(assert (= (and b!2257796 ((_ is Cons!26809) (t!201371 rules!1750))) b!2258354))

(declare-fun m!2688335 () Bool)

(assert (=> b!2258355 m!2688335))

(declare-fun m!2688337 () Bool)

(assert (=> b!2258355 m!2688337))

(declare-fun b_lambda!72091 () Bool)

(assert (= b_lambda!72089 (or (and b!2257780 b_free!66571) (and b!2257775 b_free!66567 (= (toChars!5862 (transformation!4261 otherR!12)) (toChars!5862 (transformation!4261 (rule!6569 (h!32211 tokens!456)))))) (and b!2257790 b_free!66559 (= (toChars!5862 (transformation!4261 (h!32210 rules!1750))) (toChars!5862 (transformation!4261 (rule!6569 (h!32211 tokens!456)))))) (and b!2258335 b_free!66583 (= (toChars!5862 (transformation!4261 (rule!6569 (h!32211 (t!201372 tokens!456))))) (toChars!5862 (transformation!4261 (rule!6569 (h!32211 tokens!456)))))) (and b!2258356 b_free!66587 (= (toChars!5862 (transformation!4261 (h!32210 (t!201371 rules!1750)))) (toChars!5862 (transformation!4261 (rule!6569 (h!32211 tokens!456)))))) (and b!2257781 b_free!66563 (= (toChars!5862 (transformation!4261 r!2363)) (toChars!5862 (transformation!4261 (rule!6569 (h!32211 tokens!456)))))) b_lambda!72091)))

(check-sat (not b!2258339) (not d!669106) (not d!669072) b_and!177343 b_and!177331 (not d!669090) (not b!2258221) (not d!668982) (not b!2258334) (not b_next!67261) b_and!177339 (not d!669092) (not d!669098) (not b!2258214) (not d!669010) (not d!669006) (not b!2258267) tp_is_empty!10439 (not b!2258219) (not b!2258188) (not d!669096) (not d!669102) (not b!2258190) (not b!2258225) (not b!2258333) (not b!2258332) (not b_next!67273) (not b!2258290) (not b!2258242) (not b!2258344) (not b!2258078) (not b!2258354) (not b!2258217) (not b!2258345) (not d!669112) (not b!2258195) (not b!2258073) (not b_next!67263) (not b!2258310) (not d!669124) (not bm!135734) (not b!2258317) (not d!669094) (not b_next!67271) (not tb!133823) b_and!177333 b_and!177285 (not b!2258028) (not b!2258343) (not bm!135742) b_and!177329 (not b!2258291) (not b!2258295) b_and!177335 b_and!177289 (not b!2258197) (not b!2258080) (not b_next!67265) (not b!2258341) (not d!669012) (not b!2257863) (not b!2258029) (not b!2258316) (not d!669132) (not b!2258355) (not bm!135733) (not b!2258147) (not b!2258125) (not b!2258069) (not d!668988) (not b!2258292) (not b!2258342) (not b!2258096) (not b_next!67275) (not b!2258293) (not d!669134) (not b_lambda!72091) (not d!669068) (not b!2258239) (not b!2258178) b_and!177337 (not b!2258338) (not d!669120) (not b_next!67267) b_and!177341 (not b!2258320) (not b_next!67289) (not d!669100) (not d!669126) (not b!2258337) (not b!2258031) (not d!669114) (not b_next!67287) (not b!2258321) (not d!669000) (not b!2258209) (not b!2258319) (not b!2257860) (not b!2258196) (not b!2258210) (not b!2258311) (not tb!133791) (not d!669082) (not b!2257854) (not b!2258076) (not b!2258075) (not d!669108) (not b_next!67269) (not b!2258030) (not bm!135743) (not d!669008) (not b_lambda!72081) (not b!2258237) (not b_next!67291) (not b!2258296) (not b!2258289) (not b!2258207) (not b!2258226) (not d!669116) (not b!2258241) (not b!2258216) (not b_next!67285) (not b!2258182) (not b!2257864) (not b!2258309) (not b!2258208) b_and!177293 b_and!177281 (not b!2258294))
(check-sat (not b_next!67273) (not b_next!67263) (not b_next!67271) (not b_next!67265) (not b_next!67275) b_and!177337 (not b_next!67289) (not b_next!67287) (not b_next!67269) (not b_next!67291) (not b_next!67285) b_and!177343 b_and!177331 (not b_next!67261) b_and!177339 b_and!177333 b_and!177285 b_and!177329 b_and!177335 b_and!177289 (not b_next!67267) b_and!177341 b_and!177293 b_and!177281)
