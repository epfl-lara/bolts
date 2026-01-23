; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43378 () Bool)

(assert start!43378)

(declare-fun b!457239 () Bool)

(declare-fun b_free!12729 () Bool)

(declare-fun b_next!12729 () Bool)

(assert (=> b!457239 (= b_free!12729 (not b_next!12729))))

(declare-fun tp!126757 () Bool)

(declare-fun b_and!49169 () Bool)

(assert (=> b!457239 (= tp!126757 b_and!49169)))

(declare-fun b_free!12731 () Bool)

(declare-fun b_next!12731 () Bool)

(assert (=> b!457239 (= b_free!12731 (not b_next!12731))))

(declare-fun tp!126758 () Bool)

(declare-fun b_and!49171 () Bool)

(assert (=> b!457239 (= tp!126758 b_and!49171)))

(declare-fun b!457214 () Bool)

(declare-fun b_free!12733 () Bool)

(declare-fun b_next!12733 () Bool)

(assert (=> b!457214 (= b_free!12733 (not b_next!12733))))

(declare-fun tp!126763 () Bool)

(declare-fun b_and!49173 () Bool)

(assert (=> b!457214 (= tp!126763 b_and!49173)))

(declare-fun b_free!12735 () Bool)

(declare-fun b_next!12735 () Bool)

(assert (=> b!457214 (= b_free!12735 (not b_next!12735))))

(declare-fun tp!126759 () Bool)

(declare-fun b_and!49175 () Bool)

(assert (=> b!457214 (= tp!126759 b_and!49175)))

(declare-fun b!457230 () Bool)

(declare-fun b_free!12737 () Bool)

(declare-fun b_next!12737 () Bool)

(assert (=> b!457230 (= b_free!12737 (not b_next!12737))))

(declare-fun tp!126751 () Bool)

(declare-fun b_and!49177 () Bool)

(assert (=> b!457230 (= tp!126751 b_and!49177)))

(declare-fun b_free!12739 () Bool)

(declare-fun b_next!12739 () Bool)

(assert (=> b!457230 (= b_free!12739 (not b_next!12739))))

(declare-fun tp!126753 () Bool)

(declare-fun b_and!49179 () Bool)

(assert (=> b!457230 (= tp!126753 b_and!49179)))

(declare-fun bs!56740 () Bool)

(declare-fun b!457221 () Bool)

(declare-fun b!457223 () Bool)

(assert (= bs!56740 (and b!457221 b!457223)))

(declare-fun lambda!13390 () Int)

(declare-fun lambda!13389 () Int)

(assert (=> bs!56740 (not (= lambda!13390 lambda!13389))))

(declare-fun b!457254 () Bool)

(declare-fun e!279826 () Bool)

(assert (=> b!457254 (= e!279826 true)))

(declare-fun b!457253 () Bool)

(declare-fun e!279825 () Bool)

(assert (=> b!457253 (= e!279825 e!279826)))

(declare-fun b!457252 () Bool)

(declare-fun e!279824 () Bool)

(assert (=> b!457252 (= e!279824 e!279825)))

(assert (=> b!457221 e!279824))

(assert (= b!457253 b!457254))

(assert (= b!457252 b!457253))

(declare-datatypes ((List!4440 0))(
  ( (Nil!4430) (Cons!4430 (h!9827 (_ BitVec 16)) (t!71600 List!4440)) )
))
(declare-datatypes ((TokenValue!883 0))(
  ( (FloatLiteralValue!1766 (text!6626 List!4440)) (TokenValueExt!882 (__x!3253 Int)) (Broken!4415 (value!28828 List!4440)) (Object!892) (End!883) (Def!883) (Underscore!883) (Match!883) (Else!883) (Error!883) (Case!883) (If!883) (Extends!883) (Abstract!883) (Class!883) (Val!883) (DelimiterValue!1766 (del!943 List!4440)) (KeywordValue!889 (value!28829 List!4440)) (CommentValue!1766 (value!28830 List!4440)) (WhitespaceValue!1766 (value!28831 List!4440)) (IndentationValue!883 (value!28832 List!4440)) (String!5494) (Int32!883) (Broken!4416 (value!28833 List!4440)) (Boolean!884) (Unit!8022) (OperatorValue!886 (op!943 List!4440)) (IdentifierValue!1766 (value!28834 List!4440)) (IdentifierValue!1767 (value!28835 List!4440)) (WhitespaceValue!1767 (value!28836 List!4440)) (True!1766) (False!1766) (Broken!4417 (value!28837 List!4440)) (Broken!4418 (value!28838 List!4440)) (True!1767) (RightBrace!883) (RightBracket!883) (Colon!883) (Null!883) (Comma!883) (LeftBracket!883) (False!1767) (LeftBrace!883) (ImaginaryLiteralValue!883 (text!6627 List!4440)) (StringLiteralValue!2649 (value!28839 List!4440)) (EOFValue!883 (value!28840 List!4440)) (IdentValue!883 (value!28841 List!4440)) (DelimiterValue!1767 (value!28842 List!4440)) (DedentValue!883 (value!28843 List!4440)) (NewLineValue!883 (value!28844 List!4440)) (IntegerValue!2649 (value!28845 (_ BitVec 32)) (text!6628 List!4440)) (IntegerValue!2650 (value!28846 Int) (text!6629 List!4440)) (Times!883) (Or!883) (Equal!883) (Minus!883) (Broken!4419 (value!28847 List!4440)) (And!883) (Div!883) (LessEqual!883) (Mod!883) (Concat!1968) (Not!883) (Plus!883) (SpaceValue!883 (value!28848 List!4440)) (IntegerValue!2651 (value!28849 Int) (text!6630 List!4440)) (StringLiteralValue!2650 (text!6631 List!4440)) (FloatLiteralValue!1767 (text!6632 List!4440)) (BytesLiteralValue!883 (value!28850 List!4440)) (CommentValue!1767 (value!28851 List!4440)) (StringLiteralValue!2651 (value!28852 List!4440)) (ErrorTokenValue!883 (msg!944 List!4440)) )
))
(declare-datatypes ((C!3092 0))(
  ( (C!3093 (val!1432 Int)) )
))
(declare-datatypes ((List!4441 0))(
  ( (Nil!4431) (Cons!4431 (h!9828 C!3092) (t!71601 List!4441)) )
))
(declare-datatypes ((IArray!3089 0))(
  ( (IArray!3090 (innerList!1602 List!4441)) )
))
(declare-datatypes ((Conc!1544 0))(
  ( (Node!1544 (left!3737 Conc!1544) (right!4067 Conc!1544) (csize!3318 Int) (cheight!1755 Int)) (Leaf!2314 (xs!4175 IArray!3089) (csize!3319 Int)) (Empty!1544) )
))
(declare-datatypes ((BalanceConc!3096 0))(
  ( (BalanceConc!3097 (c!92346 Conc!1544)) )
))
(declare-datatypes ((TokenValueInjection!1538 0))(
  ( (TokenValueInjection!1539 (toValue!1680 Int) (toChars!1539 Int)) )
))
(declare-datatypes ((String!5495 0))(
  ( (String!5496 (value!28853 String)) )
))
(declare-datatypes ((Regex!1085 0))(
  ( (ElementMatch!1085 (c!92347 C!3092)) (Concat!1969 (regOne!2682 Regex!1085) (regTwo!2682 Regex!1085)) (EmptyExpr!1085) (Star!1085 (reg!1414 Regex!1085)) (EmptyLang!1085) (Union!1085 (regOne!2683 Regex!1085) (regTwo!2683 Regex!1085)) )
))
(declare-datatypes ((Rule!1522 0))(
  ( (Rule!1523 (regex!861 Regex!1085) (tag!1121 String!5495) (isSeparator!861 Bool) (transformation!861 TokenValueInjection!1538)) )
))
(declare-datatypes ((List!4442 0))(
  ( (Nil!4432) (Cons!4432 (h!9829 Rule!1522) (t!71602 List!4442)) )
))
(declare-fun rules!1920 () List!4442)

(get-info :version)

(assert (= (and b!457221 ((_ is Cons!4432) rules!1920)) b!457252))

(declare-fun order!3927 () Int)

(declare-fun order!3925 () Int)

(declare-fun dynLambda!2690 (Int Int) Int)

(declare-fun dynLambda!2691 (Int Int) Int)

(assert (=> b!457254 (< (dynLambda!2690 order!3925 (toValue!1680 (transformation!861 (h!9829 rules!1920)))) (dynLambda!2691 order!3927 lambda!13390))))

(declare-fun order!3929 () Int)

(declare-fun dynLambda!2692 (Int Int) Int)

(assert (=> b!457254 (< (dynLambda!2692 order!3929 (toChars!1539 (transformation!861 (h!9829 rules!1920)))) (dynLambda!2691 order!3927 lambda!13390))))

(assert (=> b!457221 true))

(declare-fun b!457211 () Bool)

(declare-fun res!203234 () Bool)

(declare-fun e!279816 () Bool)

(assert (=> b!457211 (=> (not res!203234) (not e!279816))))

(declare-datatypes ((Token!1466 0))(
  ( (Token!1467 (value!28854 TokenValue!883) (rule!1556 Rule!1522) (size!3633 Int) (originalCharacters!904 List!4441)) )
))
(declare-fun separatorToken!170 () Token!1466)

(assert (=> b!457211 (= res!203234 (isSeparator!861 (rule!1556 separatorToken!170)))))

(declare-fun b!457212 () Bool)

(declare-fun e!279807 () Bool)

(declare-fun e!279810 () Bool)

(assert (=> b!457212 (= e!279807 e!279810)))

(declare-fun res!203242 () Bool)

(assert (=> b!457212 (=> res!203242 e!279810)))

(declare-fun lt!203738 () List!4441)

(declare-fun lt!203722 () List!4441)

(declare-fun lt!203740 () List!4441)

(assert (=> b!457212 (= res!203242 (or (not (= lt!203740 lt!203738)) (not (= lt!203738 lt!203722)) (not (= lt!203740 lt!203722))))))

(declare-datatypes ((LexerInterface!747 0))(
  ( (LexerInterfaceExt!744 (__x!3254 Int)) (Lexer!745) )
))
(declare-fun thiss!17480 () LexerInterface!747)

(declare-datatypes ((List!4443 0))(
  ( (Nil!4433) (Cons!4433 (h!9830 Token!1466) (t!71603 List!4443)) )
))
(declare-fun tokens!465 () List!4443)

(declare-fun printList!421 (LexerInterface!747 List!4443) List!4441)

(assert (=> b!457212 (= lt!203738 (printList!421 thiss!17480 (Cons!4433 (h!9830 tokens!465) Nil!4433)))))

(declare-fun lt!203723 () BalanceConc!3096)

(declare-fun list!1969 (BalanceConc!3096) List!4441)

(assert (=> b!457212 (= lt!203740 (list!1969 lt!203723))))

(declare-datatypes ((IArray!3091 0))(
  ( (IArray!3092 (innerList!1603 List!4443)) )
))
(declare-datatypes ((Conc!1545 0))(
  ( (Node!1545 (left!3738 Conc!1545) (right!4068 Conc!1545) (csize!3320 Int) (cheight!1756 Int)) (Leaf!2315 (xs!4176 IArray!3091) (csize!3321 Int)) (Empty!1545) )
))
(declare-datatypes ((BalanceConc!3098 0))(
  ( (BalanceConc!3099 (c!92348 Conc!1545)) )
))
(declare-fun lt!203731 () BalanceConc!3098)

(declare-fun printTailRec!433 (LexerInterface!747 BalanceConc!3098 Int BalanceConc!3096) BalanceConc!3096)

(assert (=> b!457212 (= lt!203723 (printTailRec!433 thiss!17480 lt!203731 0 (BalanceConc!3097 Empty!1544)))))

(declare-fun print!472 (LexerInterface!747 BalanceConc!3098) BalanceConc!3096)

(assert (=> b!457212 (= lt!203723 (print!472 thiss!17480 lt!203731))))

(declare-fun singletonSeq!407 (Token!1466) BalanceConc!3098)

(assert (=> b!457212 (= lt!203731 (singletonSeq!407 (h!9830 tokens!465)))))

(declare-fun b!457213 () Bool)

(declare-fun res!203244 () Bool)

(assert (=> b!457213 (=> (not res!203244) (not e!279816))))

(assert (=> b!457213 (= res!203244 ((_ is Cons!4433) tokens!465))))

(declare-fun e!279806 () Bool)

(assert (=> b!457214 (= e!279806 (and tp!126763 tp!126759))))

(declare-fun b!457215 () Bool)

(declare-fun lt!203725 () List!4441)

(declare-fun e!279792 () Bool)

(declare-fun lt!203732 () List!4441)

(declare-fun ++!1292 (List!4441 List!4441) List!4441)

(assert (=> b!457215 (= e!279792 (not (= lt!203732 (++!1292 lt!203722 lt!203725))))))

(declare-fun b!457216 () Bool)

(declare-fun e!279797 () Bool)

(declare-fun e!279791 () Bool)

(assert (=> b!457216 (= e!279797 (not e!279791))))

(declare-fun res!203241 () Bool)

(assert (=> b!457216 (=> res!203241 e!279791)))

(declare-fun lt!203721 () BalanceConc!3098)

(declare-fun printWithSeparatorTokenWhenNeededRec!420 (LexerInterface!747 List!4442 BalanceConc!3098 Token!1466 Int) BalanceConc!3096)

(assert (=> b!457216 (= res!203241 (not (= lt!203725 (list!1969 (printWithSeparatorTokenWhenNeededRec!420 thiss!17480 rules!1920 lt!203721 separatorToken!170 0)))))))

(declare-fun seqFromList!1087 (List!4443) BalanceConc!3098)

(assert (=> b!457216 (= lt!203721 (seqFromList!1087 (t!71603 tokens!465)))))

(declare-fun lt!203734 () List!4441)

(declare-fun lt!203736 () List!4441)

(assert (=> b!457216 (= lt!203734 lt!203736)))

(declare-fun lt!203729 () List!4441)

(assert (=> b!457216 (= lt!203736 (++!1292 lt!203722 lt!203729))))

(declare-fun lt!203741 () List!4441)

(assert (=> b!457216 (= lt!203734 (++!1292 (++!1292 lt!203722 lt!203741) lt!203725))))

(declare-datatypes ((Unit!8023 0))(
  ( (Unit!8024) )
))
(declare-fun lt!203739 () Unit!8023)

(declare-fun lemmaConcatAssociativity!598 (List!4441 List!4441 List!4441) Unit!8023)

(assert (=> b!457216 (= lt!203739 (lemmaConcatAssociativity!598 lt!203722 lt!203741 lt!203725))))

(declare-fun charsOf!504 (Token!1466) BalanceConc!3096)

(assert (=> b!457216 (= lt!203722 (list!1969 (charsOf!504 (h!9830 tokens!465))))))

(assert (=> b!457216 (= lt!203729 (++!1292 lt!203741 lt!203725))))

(declare-fun printWithSeparatorTokenWhenNeededList!428 (LexerInterface!747 List!4442 List!4443 Token!1466) List!4441)

(assert (=> b!457216 (= lt!203725 (printWithSeparatorTokenWhenNeededList!428 thiss!17480 rules!1920 (t!71603 tokens!465) separatorToken!170))))

(assert (=> b!457216 (= lt!203741 (list!1969 (charsOf!504 separatorToken!170)))))

(declare-fun b!457217 () Bool)

(declare-fun res!203228 () Bool)

(assert (=> b!457217 (=> (not res!203228) (not e!279797))))

(declare-fun lt!203727 () List!4441)

(declare-fun seqFromList!1088 (List!4441) BalanceConc!3096)

(assert (=> b!457217 (= res!203228 (= (list!1969 (seqFromList!1088 lt!203732)) lt!203727))))

(declare-fun b!457218 () Bool)

(declare-fun res!203247 () Bool)

(assert (=> b!457218 (=> res!203247 e!279810)))

(declare-fun rulesProduceIndividualToken!496 (LexerInterface!747 List!4442 Token!1466) Bool)

(assert (=> b!457218 (= res!203247 (not (rulesProduceIndividualToken!496 thiss!17480 rules!1920 (h!9830 tokens!465))))))

(declare-fun res!203231 () Bool)

(declare-fun e!279809 () Bool)

(assert (=> start!43378 (=> (not res!203231) (not e!279809))))

(assert (=> start!43378 (= res!203231 ((_ is Lexer!745) thiss!17480))))

(assert (=> start!43378 e!279809))

(assert (=> start!43378 true))

(declare-fun e!279802 () Bool)

(assert (=> start!43378 e!279802))

(declare-fun e!279793 () Bool)

(declare-fun inv!5512 (Token!1466) Bool)

(assert (=> start!43378 (and (inv!5512 separatorToken!170) e!279793)))

(declare-fun e!279813 () Bool)

(assert (=> start!43378 e!279813))

(declare-fun b!457219 () Bool)

(declare-fun tp!126756 () Bool)

(declare-fun e!279805 () Bool)

(declare-fun inv!21 (TokenValue!883) Bool)

(assert (=> b!457219 (= e!279793 (and (inv!21 (value!28854 separatorToken!170)) e!279805 tp!126756))))

(declare-fun tp!126762 () Bool)

(declare-fun e!279801 () Bool)

(declare-fun e!279812 () Bool)

(declare-fun b!457220 () Bool)

(declare-fun inv!5509 (String!5495) Bool)

(declare-fun inv!5513 (TokenValueInjection!1538) Bool)

(assert (=> b!457220 (= e!279812 (and tp!126762 (inv!5509 (tag!1121 (h!9829 rules!1920))) (inv!5513 (transformation!861 (h!9829 rules!1920))) e!279801))))

(declare-fun e!279815 () Bool)

(assert (=> b!457221 (= e!279810 e!279815)))

(declare-fun res!203229 () Bool)

(assert (=> b!457221 (=> res!203229 e!279815)))

(declare-datatypes ((tuple2!5394 0))(
  ( (tuple2!5395 (_1!2913 Token!1466) (_2!2913 BalanceConc!3096)) )
))
(declare-datatypes ((Option!1156 0))(
  ( (None!1155) (Some!1155 (v!15486 tuple2!5394)) )
))
(declare-fun isDefined!995 (Option!1156) Bool)

(declare-fun maxPrefixZipperSequence!426 (LexerInterface!747 List!4442 BalanceConc!3096) Option!1156)

(assert (=> b!457221 (= res!203229 (not (isDefined!995 (maxPrefixZipperSequence!426 thiss!17480 rules!1920 (seqFromList!1088 (originalCharacters!904 (h!9830 tokens!465)))))))))

(declare-fun lt!203742 () Unit!8023)

(declare-fun forallContained!414 (List!4443 Int Token!1466) Unit!8023)

(assert (=> b!457221 (= lt!203742 (forallContained!414 tokens!465 lambda!13390 (h!9830 tokens!465)))))

(assert (=> b!457221 (= lt!203722 (originalCharacters!904 (h!9830 tokens!465)))))

(declare-fun e!279796 () Bool)

(declare-fun b!457222 () Bool)

(declare-fun tp!126761 () Bool)

(assert (=> b!457222 (= e!279813 (and (inv!5512 (h!9830 tokens!465)) e!279796 tp!126761))))

(declare-fun res!203248 () Bool)

(assert (=> b!457223 (=> (not res!203248) (not e!279816))))

(declare-fun forall!1288 (List!4443 Int) Bool)

(assert (=> b!457223 (= res!203248 (forall!1288 tokens!465 lambda!13389))))

(declare-fun b!457224 () Bool)

(assert (=> b!457224 (= e!279791 e!279807)))

(declare-fun res!203240 () Bool)

(assert (=> b!457224 (=> res!203240 e!279807)))

(assert (=> b!457224 (= res!203240 e!279792)))

(declare-fun res!203237 () Bool)

(assert (=> b!457224 (=> (not res!203237) (not e!279792))))

(declare-fun lt!203728 () Bool)

(assert (=> b!457224 (= res!203237 (not lt!203728))))

(assert (=> b!457224 (= lt!203728 (= lt!203732 lt!203736))))

(declare-fun b!457225 () Bool)

(declare-fun e!279811 () Bool)

(declare-datatypes ((tuple2!5396 0))(
  ( (tuple2!5397 (_1!2914 Token!1466) (_2!2914 List!4441)) )
))
(declare-datatypes ((Option!1157 0))(
  ( (None!1156) (Some!1156 (v!15487 tuple2!5396)) )
))
(declare-fun lt!203735 () Option!1157)

(declare-fun get!1625 (Option!1157) tuple2!5396)

(declare-fun head!1112 (List!4443) Token!1466)

(assert (=> b!457225 (= e!279811 (= (_1!2914 (get!1625 lt!203735)) (head!1112 tokens!465)))))

(declare-fun b!457226 () Bool)

(declare-fun res!203246 () Bool)

(assert (=> b!457226 (=> (not res!203246) (not e!279816))))

(declare-fun sepAndNonSepRulesDisjointChars!450 (List!4442 List!4442) Bool)

(assert (=> b!457226 (= res!203246 (sepAndNonSepRulesDisjointChars!450 rules!1920 rules!1920))))

(declare-fun b!457227 () Bool)

(declare-fun res!203235 () Bool)

(declare-fun e!279800 () Bool)

(assert (=> b!457227 (=> (not res!203235) (not e!279800))))

(declare-fun lt!203733 () tuple2!5396)

(declare-fun isEmpty!3402 (List!4441) Bool)

(assert (=> b!457227 (= res!203235 (isEmpty!3402 (_2!2914 lt!203733)))))

(declare-fun b!457228 () Bool)

(declare-fun res!203233 () Bool)

(assert (=> b!457228 (=> (not res!203233) (not e!279809))))

(declare-fun rulesInvariant!713 (LexerInterface!747 List!4442) Bool)

(assert (=> b!457228 (= res!203233 (rulesInvariant!713 thiss!17480 rules!1920))))

(declare-fun e!279799 () Bool)

(declare-fun b!457229 () Bool)

(declare-fun e!279798 () Bool)

(declare-fun tp!126752 () Bool)

(assert (=> b!457229 (= e!279798 (and tp!126752 (inv!5509 (tag!1121 (rule!1556 (h!9830 tokens!465)))) (inv!5513 (transformation!861 (rule!1556 (h!9830 tokens!465)))) e!279799))))

(assert (=> b!457230 (= e!279799 (and tp!126751 tp!126753))))

(declare-fun b!457231 () Bool)

(declare-fun e!279817 () Bool)

(assert (=> b!457231 (= e!279817 true)))

(declare-fun lt!203724 () Bool)

(declare-fun rulesProduceEachTokenIndividually!539 (LexerInterface!747 List!4442 BalanceConc!3098) Bool)

(assert (=> b!457231 (= lt!203724 (rulesProduceEachTokenIndividually!539 thiss!17480 rules!1920 lt!203721))))

(declare-fun e!279794 () Bool)

(assert (=> b!457231 e!279794))

(declare-fun res!203236 () Bool)

(assert (=> b!457231 (=> res!203236 e!279794)))

(declare-fun isEmpty!3403 (List!4443) Bool)

(assert (=> b!457231 (= res!203236 (isEmpty!3403 tokens!465))))

(declare-fun lt!203737 () Unit!8023)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!262 (LexerInterface!747 List!4442 List!4443 Token!1466) Unit!8023)

(assert (=> b!457231 (= lt!203737 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!262 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!457232 () Bool)

(declare-fun res!203232 () Bool)

(assert (=> b!457232 (=> (not res!203232) (not e!279809))))

(declare-fun isEmpty!3404 (List!4442) Bool)

(assert (=> b!457232 (= res!203232 (not (isEmpty!3404 rules!1920)))))

(declare-fun b!457233 () Bool)

(declare-fun res!203249 () Bool)

(assert (=> b!457233 (=> res!203249 e!279810)))

(declare-fun isEmpty!3405 (BalanceConc!3098) Bool)

(declare-datatypes ((tuple2!5398 0))(
  ( (tuple2!5399 (_1!2915 BalanceConc!3098) (_2!2915 BalanceConc!3096)) )
))
(declare-fun lex!539 (LexerInterface!747 List!4442 BalanceConc!3096) tuple2!5398)

(assert (=> b!457233 (= res!203249 (isEmpty!3405 (_1!2915 (lex!539 thiss!17480 rules!1920 (seqFromList!1088 lt!203722)))))))

(declare-fun b!457234 () Bool)

(assert (=> b!457234 (= e!279816 e!279797)))

(declare-fun res!203239 () Bool)

(assert (=> b!457234 (=> (not res!203239) (not e!279797))))

(assert (=> b!457234 (= res!203239 (= lt!203732 lt!203727))))

(declare-fun lt!203730 () BalanceConc!3098)

(assert (=> b!457234 (= lt!203727 (list!1969 (printWithSeparatorTokenWhenNeededRec!420 thiss!17480 rules!1920 lt!203730 separatorToken!170 0)))))

(assert (=> b!457234 (= lt!203732 (printWithSeparatorTokenWhenNeededList!428 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!457235 () Bool)

(assert (=> b!457235 (= e!279809 e!279816)))

(declare-fun res!203250 () Bool)

(assert (=> b!457235 (=> (not res!203250) (not e!279816))))

(assert (=> b!457235 (= res!203250 (rulesProduceEachTokenIndividually!539 thiss!17480 rules!1920 lt!203730))))

(assert (=> b!457235 (= lt!203730 (seqFromList!1087 tokens!465))))

(declare-fun b!457236 () Bool)

(declare-fun tp!126754 () Bool)

(assert (=> b!457236 (= e!279805 (and tp!126754 (inv!5509 (tag!1121 (rule!1556 separatorToken!170))) (inv!5513 (transformation!861 (rule!1556 separatorToken!170))) e!279806))))

(declare-fun tp!126755 () Bool)

(declare-fun b!457237 () Bool)

(assert (=> b!457237 (= e!279796 (and (inv!21 (value!28854 (h!9830 tokens!465))) e!279798 tp!126755))))

(declare-fun b!457238 () Bool)

(declare-fun matchR!403 (Regex!1085 List!4441) Bool)

(assert (=> b!457238 (= e!279800 (matchR!403 (regex!861 (rule!1556 (h!9830 tokens!465))) lt!203722))))

(assert (=> b!457239 (= e!279801 (and tp!126757 tp!126758))))

(declare-fun b!457240 () Bool)

(declare-fun res!203230 () Bool)

(assert (=> b!457240 (=> (not res!203230) (not e!279816))))

(assert (=> b!457240 (= res!203230 (rulesProduceIndividualToken!496 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!457241 () Bool)

(assert (=> b!457241 (= e!279815 e!279817)))

(declare-fun res!203245 () Bool)

(assert (=> b!457241 (=> res!203245 e!279817)))

(assert (=> b!457241 (= res!203245 lt!203728)))

(assert (=> b!457241 e!279800))

(declare-fun res!203238 () Bool)

(assert (=> b!457241 (=> (not res!203238) (not e!279800))))

(assert (=> b!457241 (= res!203238 (= (_1!2914 lt!203733) (h!9830 tokens!465)))))

(declare-fun lt!203726 () Option!1157)

(assert (=> b!457241 (= lt!203733 (get!1625 lt!203726))))

(declare-fun isDefined!996 (Option!1157) Bool)

(assert (=> b!457241 (isDefined!996 lt!203726)))

(declare-fun maxPrefix!463 (LexerInterface!747 List!4442 List!4441) Option!1157)

(assert (=> b!457241 (= lt!203726 (maxPrefix!463 thiss!17480 rules!1920 lt!203722))))

(declare-fun b!457242 () Bool)

(assert (=> b!457242 (= e!279794 e!279811)))

(declare-fun res!203243 () Bool)

(assert (=> b!457242 (=> (not res!203243) (not e!279811))))

(assert (=> b!457242 (= res!203243 (isDefined!996 lt!203735))))

(assert (=> b!457242 (= lt!203735 (maxPrefix!463 thiss!17480 rules!1920 lt!203732))))

(declare-fun b!457243 () Bool)

(declare-fun tp!126760 () Bool)

(assert (=> b!457243 (= e!279802 (and e!279812 tp!126760))))

(assert (= (and start!43378 res!203231) b!457232))

(assert (= (and b!457232 res!203232) b!457228))

(assert (= (and b!457228 res!203233) b!457235))

(assert (= (and b!457235 res!203250) b!457240))

(assert (= (and b!457240 res!203230) b!457211))

(assert (= (and b!457211 res!203234) b!457223))

(assert (= (and b!457223 res!203248) b!457226))

(assert (= (and b!457226 res!203246) b!457213))

(assert (= (and b!457213 res!203244) b!457234))

(assert (= (and b!457234 res!203239) b!457217))

(assert (= (and b!457217 res!203228) b!457216))

(assert (= (and b!457216 (not res!203241)) b!457224))

(assert (= (and b!457224 res!203237) b!457215))

(assert (= (and b!457224 (not res!203240)) b!457212))

(assert (= (and b!457212 (not res!203242)) b!457218))

(assert (= (and b!457218 (not res!203247)) b!457233))

(assert (= (and b!457233 (not res!203249)) b!457221))

(assert (= (and b!457221 (not res!203229)) b!457241))

(assert (= (and b!457241 res!203238) b!457227))

(assert (= (and b!457227 res!203235) b!457238))

(assert (= (and b!457241 (not res!203245)) b!457231))

(assert (= (and b!457231 (not res!203236)) b!457242))

(assert (= (and b!457242 res!203243) b!457225))

(assert (= b!457220 b!457239))

(assert (= b!457243 b!457220))

(assert (= (and start!43378 ((_ is Cons!4432) rules!1920)) b!457243))

(assert (= b!457236 b!457214))

(assert (= b!457219 b!457236))

(assert (= start!43378 b!457219))

(assert (= b!457229 b!457230))

(assert (= b!457237 b!457229))

(assert (= b!457222 b!457237))

(assert (= (and start!43378 ((_ is Cons!4433) tokens!465)) b!457222))

(declare-fun m!724405 () Bool)

(assert (=> b!457233 m!724405))

(assert (=> b!457233 m!724405))

(declare-fun m!724407 () Bool)

(assert (=> b!457233 m!724407))

(declare-fun m!724409 () Bool)

(assert (=> b!457233 m!724409))

(declare-fun m!724411 () Bool)

(assert (=> b!457225 m!724411))

(declare-fun m!724413 () Bool)

(assert (=> b!457225 m!724413))

(declare-fun m!724415 () Bool)

(assert (=> b!457238 m!724415))

(declare-fun m!724417 () Bool)

(assert (=> b!457242 m!724417))

(declare-fun m!724419 () Bool)

(assert (=> b!457242 m!724419))

(declare-fun m!724421 () Bool)

(assert (=> b!457212 m!724421))

(declare-fun m!724423 () Bool)

(assert (=> b!457212 m!724423))

(declare-fun m!724425 () Bool)

(assert (=> b!457212 m!724425))

(declare-fun m!724427 () Bool)

(assert (=> b!457212 m!724427))

(declare-fun m!724429 () Bool)

(assert (=> b!457212 m!724429))

(declare-fun m!724431 () Bool)

(assert (=> b!457227 m!724431))

(declare-fun m!724433 () Bool)

(assert (=> b!457241 m!724433))

(declare-fun m!724435 () Bool)

(assert (=> b!457241 m!724435))

(declare-fun m!724437 () Bool)

(assert (=> b!457241 m!724437))

(declare-fun m!724439 () Bool)

(assert (=> b!457234 m!724439))

(assert (=> b!457234 m!724439))

(declare-fun m!724441 () Bool)

(assert (=> b!457234 m!724441))

(declare-fun m!724443 () Bool)

(assert (=> b!457234 m!724443))

(declare-fun m!724445 () Bool)

(assert (=> b!457231 m!724445))

(declare-fun m!724447 () Bool)

(assert (=> b!457231 m!724447))

(declare-fun m!724449 () Bool)

(assert (=> b!457231 m!724449))

(declare-fun m!724451 () Bool)

(assert (=> b!457226 m!724451))

(declare-fun m!724453 () Bool)

(assert (=> b!457223 m!724453))

(declare-fun m!724455 () Bool)

(assert (=> b!457237 m!724455))

(declare-fun m!724457 () Bool)

(assert (=> b!457221 m!724457))

(assert (=> b!457221 m!724457))

(declare-fun m!724459 () Bool)

(assert (=> b!457221 m!724459))

(assert (=> b!457221 m!724459))

(declare-fun m!724461 () Bool)

(assert (=> b!457221 m!724461))

(declare-fun m!724463 () Bool)

(assert (=> b!457221 m!724463))

(declare-fun m!724465 () Bool)

(assert (=> b!457236 m!724465))

(declare-fun m!724467 () Bool)

(assert (=> b!457236 m!724467))

(declare-fun m!724469 () Bool)

(assert (=> b!457232 m!724469))

(declare-fun m!724471 () Bool)

(assert (=> b!457219 m!724471))

(declare-fun m!724473 () Bool)

(assert (=> b!457228 m!724473))

(declare-fun m!724475 () Bool)

(assert (=> b!457240 m!724475))

(declare-fun m!724477 () Bool)

(assert (=> b!457218 m!724477))

(declare-fun m!724479 () Bool)

(assert (=> b!457235 m!724479))

(declare-fun m!724481 () Bool)

(assert (=> b!457235 m!724481))

(declare-fun m!724483 () Bool)

(assert (=> start!43378 m!724483))

(declare-fun m!724485 () Bool)

(assert (=> b!457220 m!724485))

(declare-fun m!724487 () Bool)

(assert (=> b!457220 m!724487))

(declare-fun m!724489 () Bool)

(assert (=> b!457215 m!724489))

(declare-fun m!724491 () Bool)

(assert (=> b!457222 m!724491))

(declare-fun m!724493 () Bool)

(assert (=> b!457217 m!724493))

(assert (=> b!457217 m!724493))

(declare-fun m!724495 () Bool)

(assert (=> b!457217 m!724495))

(declare-fun m!724497 () Bool)

(assert (=> b!457216 m!724497))

(declare-fun m!724499 () Bool)

(assert (=> b!457216 m!724499))

(declare-fun m!724501 () Bool)

(assert (=> b!457216 m!724501))

(declare-fun m!724503 () Bool)

(assert (=> b!457216 m!724503))

(declare-fun m!724505 () Bool)

(assert (=> b!457216 m!724505))

(assert (=> b!457216 m!724503))

(assert (=> b!457216 m!724499))

(declare-fun m!724507 () Bool)

(assert (=> b!457216 m!724507))

(declare-fun m!724509 () Bool)

(assert (=> b!457216 m!724509))

(declare-fun m!724511 () Bool)

(assert (=> b!457216 m!724511))

(declare-fun m!724513 () Bool)

(assert (=> b!457216 m!724513))

(declare-fun m!724515 () Bool)

(assert (=> b!457216 m!724515))

(declare-fun m!724517 () Bool)

(assert (=> b!457216 m!724517))

(assert (=> b!457216 m!724509))

(declare-fun m!724519 () Bool)

(assert (=> b!457216 m!724519))

(assert (=> b!457216 m!724513))

(declare-fun m!724521 () Bool)

(assert (=> b!457216 m!724521))

(declare-fun m!724523 () Bool)

(assert (=> b!457229 m!724523))

(declare-fun m!724525 () Bool)

(assert (=> b!457229 m!724525))

(check-sat b_and!49171 (not b!457225) (not b_next!12737) (not b!457232) b_and!49177 (not b_next!12731) (not b!457235) (not b!457221) (not b!457237) (not b!457219) b_and!49173 b_and!49175 (not b_next!12735) (not b!457226) (not b!457215) (not b!457216) (not b!457228) (not b!457227) (not b!457233) (not b!457240) (not start!43378) (not b!457217) (not b!457220) (not b_next!12739) (not b!457212) (not b!457241) b_and!49179 (not b!457231) (not b!457229) (not b!457242) (not b!457236) (not b!457243) b_and!49169 (not b!457223) (not b_next!12729) (not b_next!12733) (not b!457218) (not b!457234) (not b!457222) (not b!457238) (not b!457252))
(check-sat b_and!49171 (not b_next!12737) b_and!49177 (not b_next!12731) (not b_next!12739) b_and!49179 b_and!49169 b_and!49173 b_and!49175 (not b_next!12735) (not b_next!12729) (not b_next!12733))
