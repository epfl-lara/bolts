; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!104904 () Bool)

(assert start!104904)

(declare-fun b!1183322 () Bool)

(declare-fun b_free!28309 () Bool)

(declare-fun b_next!29013 () Bool)

(assert (=> b!1183322 (= b_free!28309 (not b_next!29013))))

(declare-fun tp!337299 () Bool)

(declare-fun b_and!81349 () Bool)

(assert (=> b!1183322 (= tp!337299 b_and!81349)))

(declare-fun b_free!28311 () Bool)

(declare-fun b_next!29015 () Bool)

(assert (=> b!1183322 (= b_free!28311 (not b_next!29015))))

(declare-fun tp!337298 () Bool)

(declare-fun b_and!81351 () Bool)

(assert (=> b!1183322 (= tp!337298 b_and!81351)))

(declare-fun b!1183332 () Bool)

(declare-fun b_free!28313 () Bool)

(declare-fun b_next!29017 () Bool)

(assert (=> b!1183332 (= b_free!28313 (not b_next!29017))))

(declare-fun tp!337297 () Bool)

(declare-fun b_and!81353 () Bool)

(assert (=> b!1183332 (= tp!337297 b_and!81353)))

(declare-fun b_free!28315 () Bool)

(declare-fun b_next!29019 () Bool)

(assert (=> b!1183332 (= b_free!28315 (not b_next!29019))))

(declare-fun tp!337291 () Bool)

(declare-fun b_and!81355 () Bool)

(assert (=> b!1183332 (= tp!337291 b_and!81355)))

(declare-fun b!1183348 () Bool)

(declare-fun e!759810 () Bool)

(assert (=> b!1183348 (= e!759810 true)))

(declare-fun b!1183347 () Bool)

(declare-fun e!759809 () Bool)

(assert (=> b!1183347 (= e!759809 e!759810)))

(declare-fun b!1183346 () Bool)

(declare-fun e!759808 () Bool)

(assert (=> b!1183346 (= e!759808 e!759809)))

(declare-fun b!1183334 () Bool)

(assert (=> b!1183334 e!759808))

(assert (= b!1183347 b!1183348))

(assert (= b!1183346 b!1183347))

(declare-datatypes ((C!6986 0))(
  ( (C!6987 (val!3789 Int)) )
))
(declare-datatypes ((List!11848 0))(
  ( (Nil!11824) (Cons!11824 (h!17225 C!6986) (t!111624 List!11848)) )
))
(declare-datatypes ((IArray!7753 0))(
  ( (IArray!7754 (innerList!3934 List!11848)) )
))
(declare-datatypes ((Conc!3874 0))(
  ( (Node!3874 (left!10298 Conc!3874) (right!10628 Conc!3874) (csize!7978 Int) (cheight!4085 Int)) (Leaf!5937 (xs!6579 IArray!7753) (csize!7979 Int)) (Empty!3874) )
))
(declare-datatypes ((List!11849 0))(
  ( (Nil!11825) (Cons!11825 (h!17226 (_ BitVec 16)) (t!111625 List!11849)) )
))
(declare-datatypes ((BalanceConc!7770 0))(
  ( (BalanceConc!7771 (c!196952 Conc!3874)) )
))
(declare-datatypes ((TokenValue!2130 0))(
  ( (FloatLiteralValue!4260 (text!15355 List!11849)) (TokenValueExt!2129 (__x!7971 Int)) (Broken!10650 (value!66856 List!11849)) (Object!2153) (End!2130) (Def!2130) (Underscore!2130) (Match!2130) (Else!2130) (Error!2130) (Case!2130) (If!2130) (Extends!2130) (Abstract!2130) (Class!2130) (Val!2130) (DelimiterValue!4260 (del!2190 List!11849)) (KeywordValue!2136 (value!66857 List!11849)) (CommentValue!4260 (value!66858 List!11849)) (WhitespaceValue!4260 (value!66859 List!11849)) (IndentationValue!2130 (value!66860 List!11849)) (String!14319) (Int32!2130) (Broken!10651 (value!66861 List!11849)) (Boolean!2131) (Unit!18142) (OperatorValue!2133 (op!2190 List!11849)) (IdentifierValue!4260 (value!66862 List!11849)) (IdentifierValue!4261 (value!66863 List!11849)) (WhitespaceValue!4261 (value!66864 List!11849)) (True!4260) (False!4260) (Broken!10652 (value!66865 List!11849)) (Broken!10653 (value!66866 List!11849)) (True!4261) (RightBrace!2130) (RightBracket!2130) (Colon!2130) (Null!2130) (Comma!2130) (LeftBracket!2130) (False!4261) (LeftBrace!2130) (ImaginaryLiteralValue!2130 (text!15356 List!11849)) (StringLiteralValue!6390 (value!66867 List!11849)) (EOFValue!2130 (value!66868 List!11849)) (IdentValue!2130 (value!66869 List!11849)) (DelimiterValue!4261 (value!66870 List!11849)) (DedentValue!2130 (value!66871 List!11849)) (NewLineValue!2130 (value!66872 List!11849)) (IntegerValue!6390 (value!66873 (_ BitVec 32)) (text!15357 List!11849)) (IntegerValue!6391 (value!66874 Int) (text!15358 List!11849)) (Times!2130) (Or!2130) (Equal!2130) (Minus!2130) (Broken!10654 (value!66875 List!11849)) (And!2130) (Div!2130) (LessEqual!2130) (Mod!2130) (Concat!5464) (Not!2130) (Plus!2130) (SpaceValue!2130 (value!66876 List!11849)) (IntegerValue!6392 (value!66877 Int) (text!15359 List!11849)) (StringLiteralValue!6391 (text!15360 List!11849)) (FloatLiteralValue!4261 (text!15361 List!11849)) (BytesLiteralValue!2130 (value!66878 List!11849)) (CommentValue!4261 (value!66879 List!11849)) (StringLiteralValue!6392 (value!66880 List!11849)) (ErrorTokenValue!2130 (msg!2191 List!11849)) )
))
(declare-datatypes ((Regex!3334 0))(
  ( (ElementMatch!3334 (c!196953 C!6986)) (Concat!5465 (regOne!7180 Regex!3334) (regTwo!7180 Regex!3334)) (EmptyExpr!3334) (Star!3334 (reg!3663 Regex!3334)) (EmptyLang!3334) (Union!3334 (regOne!7181 Regex!3334) (regTwo!7181 Regex!3334)) )
))
(declare-datatypes ((String!14320 0))(
  ( (String!14321 (value!66881 String)) )
))
(declare-datatypes ((TokenValueInjection!3960 0))(
  ( (TokenValueInjection!3961 (toValue!3177 Int) (toChars!3036 Int)) )
))
(declare-datatypes ((Rule!3928 0))(
  ( (Rule!3929 (regex!2064 Regex!3334) (tag!2326 String!14320) (isSeparator!2064 Bool) (transformation!2064 TokenValueInjection!3960)) )
))
(declare-datatypes ((List!11850 0))(
  ( (Nil!11826) (Cons!11826 (h!17227 Rule!3928) (t!111626 List!11850)) )
))
(declare-fun rules!4386 () List!11850)

(assert (= (and b!1183334 (is-Cons!11826 rules!4386)) b!1183346))

(declare-fun order!7301 () Int)

(declare-fun lambda!48748 () Int)

(declare-fun order!7299 () Int)

(declare-fun dynLambda!5247 (Int Int) Int)

(declare-fun dynLambda!5248 (Int Int) Int)

(assert (=> b!1183348 (< (dynLambda!5247 order!7299 (toValue!3177 (transformation!2064 (h!17227 rules!4386)))) (dynLambda!5248 order!7301 lambda!48748))))

(declare-fun order!7303 () Int)

(declare-fun dynLambda!5249 (Int Int) Int)

(assert (=> b!1183348 (< (dynLambda!5249 order!7303 (toChars!3036 (transformation!2064 (h!17227 rules!4386)))) (dynLambda!5248 order!7301 lambda!48748))))

(declare-fun b!1183318 () Bool)

(declare-fun res!534767 () Bool)

(declare-fun e!759791 () Bool)

(assert (=> b!1183318 (=> (not res!534767) (not e!759791))))

(declare-datatypes ((LexerInterface!1759 0))(
  ( (LexerInterfaceExt!1756 (__x!7972 Int)) (Lexer!1757) )
))
(declare-fun thiss!27592 () LexerInterface!1759)

(declare-datatypes ((Token!3790 0))(
  ( (Token!3791 (value!66882 TokenValue!2130) (rule!3485 Rule!3928) (size!9336 Int) (originalCharacters!2618 List!11848)) )
))
(declare-datatypes ((List!11851 0))(
  ( (Nil!11827) (Cons!11827 (h!17228 Token!3790) (t!111627 List!11851)) )
))
(declare-fun l!6534 () List!11851)

(declare-fun rulesProduceEachTokenIndividuallyList!625 (LexerInterface!1759 List!11850 List!11851) Bool)

(assert (=> b!1183318 (= res!534767 (rulesProduceEachTokenIndividuallyList!625 thiss!27592 rules!4386 l!6534))))

(declare-fun b!1183319 () Bool)

(declare-fun tp!337294 () Bool)

(declare-fun e!759798 () Bool)

(declare-fun e!759794 () Bool)

(declare-fun inv!21 (TokenValue!2130) Bool)

(assert (=> b!1183319 (= e!759798 (and (inv!21 (value!66882 (h!17228 l!6534))) e!759794 tp!337294))))

(declare-fun b!1183320 () Bool)

(declare-fun res!534773 () Bool)

(assert (=> b!1183320 (=> (not res!534773) (not e!759791))))

(declare-fun rulesInvariant!1633 (LexerInterface!1759 List!11850) Bool)

(assert (=> b!1183320 (= res!534773 (rulesInvariant!1633 thiss!27592 rules!4386))))

(declare-fun lt!407205 () List!11851)

(declare-fun b!1183321 () Bool)

(declare-fun e!759800 () Bool)

(assert (=> b!1183321 (= e!759800 (rulesProduceEachTokenIndividuallyList!625 thiss!27592 rules!4386 (t!111627 lt!407205)))))

(declare-fun e!759790 () Bool)

(assert (=> b!1183322 (= e!759790 (and tp!337299 tp!337298))))

(declare-fun b!1183323 () Bool)

(declare-fun e!759795 () Bool)

(declare-fun e!759787 () Bool)

(declare-fun tp!337292 () Bool)

(assert (=> b!1183323 (= e!759795 (and e!759787 tp!337292))))

(declare-fun b!1183324 () Bool)

(declare-fun lt!407206 () List!11851)

(declare-fun e!759797 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!153 (LexerInterface!1759 List!11851 List!11850) Bool)

(assert (=> b!1183324 (= e!759797 (tokensListTwoByTwoPredicateSeparableList!153 thiss!27592 lt!407206 rules!4386))))

(declare-fun b!1183325 () Bool)

(declare-fun res!534769 () Bool)

(assert (=> b!1183325 (=> (not res!534769) (not e!759791))))

(assert (=> b!1183325 (= res!534769 (tokensListTwoByTwoPredicateSeparableList!153 thiss!27592 (t!111627 l!6534) rules!4386))))

(declare-fun b!1183326 () Bool)

(declare-fun res!534772 () Bool)

(assert (=> b!1183326 (=> (not res!534772) (not e!759791))))

(assert (=> b!1183326 (= res!534772 (rulesProduceEachTokenIndividuallyList!625 thiss!27592 rules!4386 (t!111627 l!6534)))))

(declare-fun b!1183328 () Bool)

(declare-fun res!534766 () Bool)

(assert (=> b!1183328 (=> (not res!534766) (not e!759791))))

(declare-fun isEmpty!7129 (List!11850) Bool)

(assert (=> b!1183328 (= res!534766 (not (isEmpty!7129 rules!4386)))))

(declare-fun b!1183329 () Bool)

(declare-fun tp!337296 () Bool)

(declare-fun inv!15649 (String!14320) Bool)

(declare-fun inv!15652 (TokenValueInjection!3960) Bool)

(assert (=> b!1183329 (= e!759794 (and tp!337296 (inv!15649 (tag!2326 (rule!3485 (h!17228 l!6534)))) (inv!15652 (transformation!2064 (rule!3485 (h!17228 l!6534)))) e!759790))))

(declare-fun b!1183330 () Bool)

(declare-fun tp!337295 () Bool)

(declare-fun e!759792 () Bool)

(declare-fun inv!15653 (Token!3790) Bool)

(assert (=> b!1183330 (= e!759792 (and (inv!15653 (h!17228 l!6534)) e!759798 tp!337295))))

(declare-fun tp!337293 () Bool)

(declare-fun b!1183331 () Bool)

(declare-fun e!759796 () Bool)

(assert (=> b!1183331 (= e!759787 (and tp!337293 (inv!15649 (tag!2326 (h!17227 rules!4386))) (inv!15652 (transformation!2064 (h!17227 rules!4386))) e!759796))))

(assert (=> b!1183332 (= e!759796 (and tp!337297 tp!337291))))

(declare-fun b!1183333 () Bool)

(declare-fun e!759786 () Bool)

(assert (=> b!1183333 (= e!759786 (rulesProduceEachTokenIndividuallyList!625 thiss!27592 rules!4386 (t!111627 lt!407206)))))

(declare-fun b!1183327 () Bool)

(declare-fun e!759801 () Bool)

(assert (=> b!1183327 (= e!759801 e!759786)))

(declare-fun res!534763 () Bool)

(assert (=> b!1183327 (=> (not res!534763) (not e!759786))))

(declare-fun rulesProduceIndividualToken!788 (LexerInterface!1759 List!11850 Token!3790) Bool)

(assert (=> b!1183327 (= res!534763 (rulesProduceIndividualToken!788 thiss!27592 rules!4386 (h!17228 lt!407206)))))

(declare-fun res!534762 () Bool)

(assert (=> start!104904 (=> (not res!534762) (not e!759791))))

(assert (=> start!104904 (= res!534762 (is-Lexer!1757 thiss!27592))))

(assert (=> start!104904 e!759791))

(assert (=> start!104904 true))

(assert (=> start!104904 e!759795))

(assert (=> start!104904 e!759792))

(assert (=> b!1183334 (= e!759791 (not true))))

(declare-fun subseq!318 (List!11851 List!11851) Bool)

(assert (=> b!1183334 (subseq!318 lt!407205 l!6534)))

(declare-datatypes ((Unit!18143 0))(
  ( (Unit!18144) )
))
(declare-fun lt!407203 () Unit!18143)

(declare-fun i!1621 () Int)

(declare-fun lemmaDropSubseq!81 (List!11851 Int) Unit!18143)

(assert (=> b!1183334 (= lt!407203 (lemmaDropSubseq!81 l!6534 i!1621))))

(declare-fun e!759788 () Bool)

(assert (=> b!1183334 (= (rulesProduceEachTokenIndividuallyList!625 thiss!27592 rules!4386 lt!407205) e!759788)))

(declare-fun res!534761 () Bool)

(assert (=> b!1183334 (=> res!534761 e!759788)))

(assert (=> b!1183334 (= res!534761 (not (is-Cons!11827 lt!407205)))))

(declare-fun drop!542 (List!11851 Int) List!11851)

(assert (=> b!1183334 (= lt!407205 (drop!542 l!6534 i!1621))))

(assert (=> b!1183334 e!759797))

(declare-fun res!534770 () Bool)

(assert (=> b!1183334 (=> (not res!534770) (not e!759797))))

(declare-fun forall!3131 (List!11851 Int) Bool)

(assert (=> b!1183334 (= res!534770 (forall!3131 lt!407206 lambda!48748))))

(declare-fun lt!407202 () Unit!18143)

(declare-fun lemmaForallSubseq!182 (List!11851 List!11851 Int) Unit!18143)

(assert (=> b!1183334 (= lt!407202 (lemmaForallSubseq!182 lt!407206 (t!111627 l!6534) lambda!48748))))

(assert (=> b!1183334 (subseq!318 lt!407206 (t!111627 l!6534))))

(declare-fun lt!407201 () Unit!18143)

(assert (=> b!1183334 (= lt!407201 (lemmaDropSubseq!81 (t!111627 l!6534) (- i!1621 1)))))

(assert (=> b!1183334 (= (rulesProduceEachTokenIndividuallyList!625 thiss!27592 rules!4386 lt!407206) e!759801)))

(declare-fun res!534771 () Bool)

(assert (=> b!1183334 (=> res!534771 e!759801)))

(assert (=> b!1183334 (= res!534771 (not (is-Cons!11827 lt!407206)))))

(assert (=> b!1183334 (= lt!407206 (drop!542 (t!111627 l!6534) (- i!1621 1)))))

(declare-fun lt!407204 () Unit!18143)

(declare-fun tokensListTwoByTwoPredicateSeparableTokensDropList!57 (LexerInterface!1759 List!11851 Int List!11850) Unit!18143)

(assert (=> b!1183334 (= lt!407204 (tokensListTwoByTwoPredicateSeparableTokensDropList!57 thiss!27592 (t!111627 l!6534) (- i!1621 1) rules!4386))))

(declare-fun b!1183335 () Bool)

(declare-fun res!534765 () Bool)

(assert (=> b!1183335 (=> (not res!534765) (not e!759791))))

(assert (=> b!1183335 (= res!534765 (and (not (is-Nil!11827 l!6534)) (> i!1621 0)))))

(declare-fun b!1183336 () Bool)

(declare-fun res!534764 () Bool)

(assert (=> b!1183336 (=> (not res!534764) (not e!759791))))

(assert (=> b!1183336 (= res!534764 (tokensListTwoByTwoPredicateSeparableList!153 thiss!27592 l!6534 rules!4386))))

(declare-fun b!1183337 () Bool)

(assert (=> b!1183337 (= e!759788 e!759800)))

(declare-fun res!534768 () Bool)

(assert (=> b!1183337 (=> (not res!534768) (not e!759800))))

(assert (=> b!1183337 (= res!534768 (rulesProduceIndividualToken!788 thiss!27592 rules!4386 (h!17228 lt!407205)))))

(assert (= (and start!104904 res!534762) b!1183328))

(assert (= (and b!1183328 res!534766) b!1183320))

(assert (= (and b!1183320 res!534773) b!1183318))

(assert (= (and b!1183318 res!534767) b!1183336))

(assert (= (and b!1183336 res!534764) b!1183335))

(assert (= (and b!1183335 res!534765) b!1183326))

(assert (= (and b!1183326 res!534772) b!1183325))

(assert (= (and b!1183325 res!534769) b!1183334))

(assert (= (and b!1183334 (not res!534771)) b!1183327))

(assert (= (and b!1183327 res!534763) b!1183333))

(assert (= (and b!1183334 res!534770) b!1183324))

(assert (= (and b!1183334 (not res!534761)) b!1183337))

(assert (= (and b!1183337 res!534768) b!1183321))

(assert (= b!1183331 b!1183332))

(assert (= b!1183323 b!1183331))

(assert (= (and start!104904 (is-Cons!11826 rules!4386)) b!1183323))

(assert (= b!1183329 b!1183322))

(assert (= b!1183319 b!1183329))

(assert (= b!1183330 b!1183319))

(assert (= (and start!104904 (is-Cons!11827 l!6534)) b!1183330))

(declare-fun m!1359209 () Bool)

(assert (=> b!1183320 m!1359209))

(declare-fun m!1359211 () Bool)

(assert (=> b!1183336 m!1359211))

(declare-fun m!1359213 () Bool)

(assert (=> b!1183328 m!1359213))

(declare-fun m!1359215 () Bool)

(assert (=> b!1183337 m!1359215))

(declare-fun m!1359217 () Bool)

(assert (=> b!1183333 m!1359217))

(declare-fun m!1359219 () Bool)

(assert (=> b!1183321 m!1359219))

(declare-fun m!1359221 () Bool)

(assert (=> b!1183319 m!1359221))

(declare-fun m!1359223 () Bool)

(assert (=> b!1183327 m!1359223))

(declare-fun m!1359225 () Bool)

(assert (=> b!1183329 m!1359225))

(declare-fun m!1359227 () Bool)

(assert (=> b!1183329 m!1359227))

(declare-fun m!1359229 () Bool)

(assert (=> b!1183324 m!1359229))

(declare-fun m!1359231 () Bool)

(assert (=> b!1183325 m!1359231))

(declare-fun m!1359233 () Bool)

(assert (=> b!1183318 m!1359233))

(declare-fun m!1359235 () Bool)

(assert (=> b!1183331 m!1359235))

(declare-fun m!1359237 () Bool)

(assert (=> b!1183331 m!1359237))

(declare-fun m!1359239 () Bool)

(assert (=> b!1183330 m!1359239))

(declare-fun m!1359241 () Bool)

(assert (=> b!1183334 m!1359241))

(declare-fun m!1359243 () Bool)

(assert (=> b!1183334 m!1359243))

(declare-fun m!1359245 () Bool)

(assert (=> b!1183334 m!1359245))

(declare-fun m!1359247 () Bool)

(assert (=> b!1183334 m!1359247))

(declare-fun m!1359249 () Bool)

(assert (=> b!1183334 m!1359249))

(declare-fun m!1359251 () Bool)

(assert (=> b!1183334 m!1359251))

(declare-fun m!1359253 () Bool)

(assert (=> b!1183334 m!1359253))

(declare-fun m!1359255 () Bool)

(assert (=> b!1183334 m!1359255))

(declare-fun m!1359257 () Bool)

(assert (=> b!1183334 m!1359257))

(declare-fun m!1359259 () Bool)

(assert (=> b!1183334 m!1359259))

(declare-fun m!1359261 () Bool)

(assert (=> b!1183334 m!1359261))

(declare-fun m!1359263 () Bool)

(assert (=> b!1183326 m!1359263))

(push 1)

(assert (not b!1183334))

(assert (not b!1183325))

(assert (not b_next!29013))

(assert (not b!1183321))

(assert (not b!1183323))

(assert (not b_next!29015))

(assert (not b!1183329))

(assert (not b!1183336))

(assert b_and!81355)

(assert (not b_next!29017))

(assert b_and!81353)

(assert (not b!1183326))

(assert (not b!1183346))

(assert (not b_next!29019))

(assert (not b!1183331))

(assert (not b!1183320))

(assert (not b!1183328))

(assert (not b!1183337))

(assert (not b!1183330))

(assert (not b!1183324))

(assert b_and!81351)

(assert (not b!1183327))

(assert (not b!1183318))

(assert b_and!81349)

(assert (not b!1183333))

(assert (not b!1183319))

(check-sat)

(pop 1)

(push 1)

(assert b_and!81353)

(assert (not b_next!29013))

(assert (not b_next!29019))

(assert b_and!81351)

(assert (not b_next!29015))

(assert b_and!81349)

(assert b_and!81355)

(assert (not b_next!29017))

(check-sat)

(pop 1)

