; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!176098 () Bool)

(assert start!176098)

(declare-fun b!1773608 () Bool)

(declare-fun b_free!49095 () Bool)

(declare-fun b_next!49799 () Bool)

(assert (=> b!1773608 (= b_free!49095 (not b_next!49799))))

(declare-fun tp!502673 () Bool)

(declare-fun b_and!135103 () Bool)

(assert (=> b!1773608 (= tp!502673 b_and!135103)))

(declare-fun b_free!49097 () Bool)

(declare-fun b_next!49801 () Bool)

(assert (=> b!1773608 (= b_free!49097 (not b_next!49801))))

(declare-fun tp!502667 () Bool)

(declare-fun b_and!135105 () Bool)

(assert (=> b!1773608 (= tp!502667 b_and!135105)))

(declare-fun b!1773584 () Bool)

(declare-fun b_free!49099 () Bool)

(declare-fun b_next!49803 () Bool)

(assert (=> b!1773584 (= b_free!49099 (not b_next!49803))))

(declare-fun tp!502678 () Bool)

(declare-fun b_and!135107 () Bool)

(assert (=> b!1773584 (= tp!502678 b_and!135107)))

(declare-fun b_free!49101 () Bool)

(declare-fun b_next!49805 () Bool)

(assert (=> b!1773584 (= b_free!49101 (not b_next!49805))))

(declare-fun tp!502674 () Bool)

(declare-fun b_and!135109 () Bool)

(assert (=> b!1773584 (= tp!502674 b_and!135109)))

(declare-fun b!1773609 () Bool)

(declare-fun b_free!49103 () Bool)

(declare-fun b_next!49807 () Bool)

(assert (=> b!1773609 (= b_free!49103 (not b_next!49807))))

(declare-fun tp!502675 () Bool)

(declare-fun b_and!135111 () Bool)

(assert (=> b!1773609 (= tp!502675 b_and!135111)))

(declare-fun b_free!49105 () Bool)

(declare-fun b_next!49809 () Bool)

(assert (=> b!1773609 (= b_free!49105 (not b_next!49809))))

(declare-fun tp!502672 () Bool)

(declare-fun b_and!135113 () Bool)

(assert (=> b!1773609 (= tp!502672 b_and!135113)))

(declare-fun b!1773620 () Bool)

(declare-fun e!1134895 () Bool)

(assert (=> b!1773620 (= e!1134895 true)))

(declare-fun b!1773619 () Bool)

(declare-fun e!1134894 () Bool)

(assert (=> b!1773619 (= e!1134894 e!1134895)))

(declare-fun b!1773618 () Bool)

(declare-fun e!1134893 () Bool)

(assert (=> b!1773618 (= e!1134893 e!1134894)))

(declare-fun b!1773601 () Bool)

(assert (=> b!1773601 e!1134893))

(assert (= b!1773619 b!1773620))

(assert (= b!1773618 b!1773619))

(assert (= b!1773601 b!1773618))

(declare-fun order!12489 () Int)

(declare-datatypes ((List!19589 0))(
  ( (Nil!19519) (Cons!19519 (h!24920 (_ BitVec 16)) (t!165636 List!19589)) )
))
(declare-datatypes ((TokenValue!3581 0))(
  ( (FloatLiteralValue!7162 (text!25512 List!19589)) (TokenValueExt!3580 (__x!12464 Int)) (Broken!17905 (value!109140 List!19589)) (Object!3650) (End!3581) (Def!3581) (Underscore!3581) (Match!3581) (Else!3581) (Error!3581) (Case!3581) (If!3581) (Extends!3581) (Abstract!3581) (Class!3581) (Val!3581) (DelimiterValue!7162 (del!3641 List!19589)) (KeywordValue!3587 (value!109141 List!19589)) (CommentValue!7162 (value!109142 List!19589)) (WhitespaceValue!7162 (value!109143 List!19589)) (IndentationValue!3581 (value!109144 List!19589)) (String!22236) (Int32!3581) (Broken!17906 (value!109145 List!19589)) (Boolean!3582) (Unit!33731) (OperatorValue!3584 (op!3641 List!19589)) (IdentifierValue!7162 (value!109146 List!19589)) (IdentifierValue!7163 (value!109147 List!19589)) (WhitespaceValue!7163 (value!109148 List!19589)) (True!7162) (False!7162) (Broken!17907 (value!109149 List!19589)) (Broken!17908 (value!109150 List!19589)) (True!7163) (RightBrace!3581) (RightBracket!3581) (Colon!3581) (Null!3581) (Comma!3581) (LeftBracket!3581) (False!7163) (LeftBrace!3581) (ImaginaryLiteralValue!3581 (text!25513 List!19589)) (StringLiteralValue!10743 (value!109151 List!19589)) (EOFValue!3581 (value!109152 List!19589)) (IdentValue!3581 (value!109153 List!19589)) (DelimiterValue!7163 (value!109154 List!19589)) (DedentValue!3581 (value!109155 List!19589)) (NewLineValue!3581 (value!109156 List!19589)) (IntegerValue!10743 (value!109157 (_ BitVec 32)) (text!25514 List!19589)) (IntegerValue!10744 (value!109158 Int) (text!25515 List!19589)) (Times!3581) (Or!3581) (Equal!3581) (Minus!3581) (Broken!17909 (value!109159 List!19589)) (And!3581) (Div!3581) (LessEqual!3581) (Mod!3581) (Concat!8400) (Not!3581) (Plus!3581) (SpaceValue!3581 (value!109160 List!19589)) (IntegerValue!10745 (value!109161 Int) (text!25516 List!19589)) (StringLiteralValue!10744 (text!25517 List!19589)) (FloatLiteralValue!7163 (text!25518 List!19589)) (BytesLiteralValue!3581 (value!109162 List!19589)) (CommentValue!7163 (value!109163 List!19589)) (StringLiteralValue!10745 (value!109164 List!19589)) (ErrorTokenValue!3581 (msg!3642 List!19589)) )
))
(declare-datatypes ((C!9812 0))(
  ( (C!9813 (val!5502 Int)) )
))
(declare-datatypes ((List!19590 0))(
  ( (Nil!19520) (Cons!19520 (h!24921 C!9812) (t!165637 List!19590)) )
))
(declare-datatypes ((Regex!4819 0))(
  ( (ElementMatch!4819 (c!288824 C!9812)) (Concat!8401 (regOne!10150 Regex!4819) (regTwo!10150 Regex!4819)) (EmptyExpr!4819) (Star!4819 (reg!5148 Regex!4819)) (EmptyLang!4819) (Union!4819 (regOne!10151 Regex!4819) (regTwo!10151 Regex!4819)) )
))
(declare-datatypes ((String!22237 0))(
  ( (String!22238 (value!109165 String)) )
))
(declare-datatypes ((IArray!12991 0))(
  ( (IArray!12992 (innerList!6553 List!19590)) )
))
(declare-datatypes ((Conc!6493 0))(
  ( (Node!6493 (left!15632 Conc!6493) (right!15962 Conc!6493) (csize!13216 Int) (cheight!6704 Int)) (Leaf!9459 (xs!9369 IArray!12991) (csize!13217 Int)) (Empty!6493) )
))
(declare-datatypes ((BalanceConc!12930 0))(
  ( (BalanceConc!12931 (c!288825 Conc!6493)) )
))
(declare-datatypes ((TokenValueInjection!6822 0))(
  ( (TokenValueInjection!6823 (toValue!5018 Int) (toChars!4877 Int)) )
))
(declare-datatypes ((Rule!6782 0))(
  ( (Rule!6783 (regex!3491 Regex!4819) (tag!3875 String!22237) (isSeparator!3491 Bool) (transformation!3491 TokenValueInjection!6822)) )
))
(declare-datatypes ((Token!6548 0))(
  ( (Token!6549 (value!109166 TokenValue!3581) (rule!5543 Rule!6782) (size!15506 Int) (originalCharacters!4305 List!19590)) )
))
(declare-datatypes ((tuple2!19126 0))(
  ( (tuple2!19127 (_1!10965 Token!6548) (_2!10965 List!19590)) )
))
(declare-fun lt!686977 () tuple2!19126)

(declare-fun order!12487 () Int)

(declare-fun lambda!70490 () Int)

(declare-fun dynLambda!9498 (Int Int) Int)

(declare-fun dynLambda!9499 (Int Int) Int)

(assert (=> b!1773620 (< (dynLambda!9498 order!12487 (toValue!5018 (transformation!3491 (rule!5543 (_1!10965 lt!686977))))) (dynLambda!9499 order!12489 lambda!70490))))

(declare-fun order!12491 () Int)

(declare-fun dynLambda!9500 (Int Int) Int)

(assert (=> b!1773620 (< (dynLambda!9500 order!12491 (toChars!4877 (transformation!3491 (rule!5543 (_1!10965 lt!686977))))) (dynLambda!9499 order!12489 lambda!70490))))

(declare-fun b!1773579 () Bool)

(declare-fun e!1134883 () Bool)

(declare-fun e!1134875 () Bool)

(assert (=> b!1773579 (= e!1134883 e!1134875)))

(declare-fun res!798843 () Bool)

(assert (=> b!1773579 (=> (not res!798843) (not e!1134875))))

(declare-fun lt!686981 () tuple2!19126)

(declare-fun token!523 () Token!6548)

(assert (=> b!1773579 (= res!798843 (= (_1!10965 lt!686981) token!523))))

(declare-datatypes ((Option!4004 0))(
  ( (None!4003) (Some!4003 (v!25482 tuple2!19126)) )
))
(declare-fun lt!686986 () Option!4004)

(declare-fun get!5967 (Option!4004) tuple2!19126)

(assert (=> b!1773579 (= lt!686981 (get!5967 lt!686986))))

(declare-fun b!1773580 () Bool)

(declare-fun res!798848 () Bool)

(declare-fun e!1134881 () Bool)

(assert (=> b!1773580 (=> (not res!798848) (not e!1134881))))

(declare-datatypes ((LexerInterface!3120 0))(
  ( (LexerInterfaceExt!3117 (__x!12465 Int)) (Lexer!3118) )
))
(declare-fun thiss!24550 () LexerInterface!3120)

(declare-datatypes ((List!19591 0))(
  ( (Nil!19521) (Cons!19521 (h!24922 Rule!6782) (t!165638 List!19591)) )
))
(declare-fun rules!3447 () List!19591)

(declare-fun rulesInvariant!2789 (LexerInterface!3120 List!19591) Bool)

(assert (=> b!1773580 (= res!798848 (rulesInvariant!2789 thiss!24550 rules!3447))))

(declare-fun b!1773581 () Bool)

(declare-fun res!798850 () Bool)

(assert (=> b!1773581 (=> (not res!798850) (not e!1134881))))

(declare-fun rule!422 () Rule!6782)

(declare-fun contains!3523 (List!19591 Rule!6782) Bool)

(assert (=> b!1773581 (= res!798850 (contains!3523 rules!3447 rule!422))))

(declare-fun tp!502669 () Bool)

(declare-fun e!1134871 () Bool)

(declare-fun e!1134878 () Bool)

(declare-fun b!1773582 () Bool)

(declare-fun inv!25369 (String!22237) Bool)

(declare-fun inv!25374 (TokenValueInjection!6822) Bool)

(assert (=> b!1773582 (= e!1134878 (and tp!502669 (inv!25369 (tag!3875 (rule!5543 token!523))) (inv!25374 (transformation!3491 (rule!5543 token!523))) e!1134871))))

(declare-fun b!1773583 () Bool)

(declare-fun e!1134863 () Bool)

(declare-fun e!1134872 () Bool)

(assert (=> b!1773583 (= e!1134863 e!1134872)))

(declare-fun res!798844 () Bool)

(assert (=> b!1773583 (=> res!798844 e!1134872)))

(declare-fun lt!686982 () List!19590)

(declare-fun lt!686985 () BalanceConc!12930)

(declare-fun list!7933 (BalanceConc!12930) List!19590)

(declare-fun dynLambda!9501 (Int TokenValue!3581) BalanceConc!12930)

(declare-fun dynLambda!9502 (Int BalanceConc!12930) TokenValue!3581)

(assert (=> b!1773583 (= res!798844 (not (= (list!7933 (dynLambda!9501 (toChars!4877 (transformation!3491 (rule!5543 (_1!10965 lt!686977)))) (dynLambda!9502 (toValue!5018 (transformation!3491 (rule!5543 (_1!10965 lt!686977)))) lt!686985))) lt!686982)))))

(declare-datatypes ((Unit!33732 0))(
  ( (Unit!33733) )
))
(declare-fun lt!686997 () Unit!33732)

(declare-fun lemmaSemiInverse!629 (TokenValueInjection!6822 BalanceConc!12930) Unit!33732)

(assert (=> b!1773583 (= lt!686997 (lemmaSemiInverse!629 (transformation!3491 (rule!5543 (_1!10965 lt!686977))) lt!686985))))

(declare-fun e!1134882 () Bool)

(assert (=> b!1773584 (= e!1134882 (and tp!502678 tp!502674))))

(declare-fun b!1773585 () Bool)

(declare-fun e!1134868 () Bool)

(declare-fun e!1134867 () Bool)

(assert (=> b!1773585 (= e!1134868 e!1134867)))

(declare-fun res!798853 () Bool)

(assert (=> b!1773585 (=> res!798853 e!1134867)))

(declare-fun lt!687009 () List!19590)

(declare-fun isPrefix!1731 (List!19590 List!19590) Bool)

(assert (=> b!1773585 (= res!798853 (not (isPrefix!1731 lt!686982 lt!687009)))))

(declare-fun ++!5315 (List!19590 List!19590) List!19590)

(assert (=> b!1773585 (isPrefix!1731 lt!686982 (++!5315 lt!686982 (_2!10965 lt!686977)))))

(declare-fun lt!687014 () Unit!33732)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1240 (List!19590 List!19590) Unit!33732)

(assert (=> b!1773585 (= lt!687014 (lemmaConcatTwoListThenFirstIsPrefix!1240 lt!686982 (_2!10965 lt!686977)))))

(assert (=> b!1773585 (= lt!686982 (list!7933 lt!686985))))

(declare-fun charsOf!2140 (Token!6548) BalanceConc!12930)

(assert (=> b!1773585 (= lt!686985 (charsOf!2140 (_1!10965 lt!686977)))))

(declare-fun e!1134870 () Bool)

(assert (=> b!1773585 e!1134870))

(declare-fun res!798847 () Bool)

(assert (=> b!1773585 (=> (not res!798847) (not e!1134870))))

(declare-datatypes ((Option!4005 0))(
  ( (None!4004) (Some!4004 (v!25483 Rule!6782)) )
))
(declare-fun lt!686988 () Option!4005)

(declare-fun isDefined!3347 (Option!4005) Bool)

(assert (=> b!1773585 (= res!798847 (isDefined!3347 lt!686988))))

(declare-fun getRuleFromTag!539 (LexerInterface!3120 List!19591 String!22237) Option!4005)

(assert (=> b!1773585 (= lt!686988 (getRuleFromTag!539 thiss!24550 rules!3447 (tag!3875 (rule!5543 (_1!10965 lt!686977)))))))

(declare-fun lt!686984 () Unit!33732)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!539 (LexerInterface!3120 List!19591 List!19590 Token!6548) Unit!33732)

(assert (=> b!1773585 (= lt!686984 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!539 thiss!24550 rules!3447 lt!687009 (_1!10965 lt!686977)))))

(declare-fun lt!687000 () Option!4004)

(assert (=> b!1773585 (= lt!686977 (get!5967 lt!687000))))

(declare-fun suffix!1421 () List!19590)

(declare-fun lt!687002 () List!19590)

(declare-fun lt!686992 () Unit!33732)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!642 (LexerInterface!3120 List!19591 List!19590 List!19590) Unit!33732)

(assert (=> b!1773585 (= lt!686992 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!642 thiss!24550 rules!3447 lt!687002 suffix!1421))))

(declare-fun maxPrefix!1674 (LexerInterface!3120 List!19591 List!19590) Option!4004)

(assert (=> b!1773585 (= lt!687000 (maxPrefix!1674 thiss!24550 rules!3447 lt!687009))))

(assert (=> b!1773585 (isPrefix!1731 lt!687002 lt!687009)))

(declare-fun lt!686979 () Unit!33732)

(assert (=> b!1773585 (= lt!686979 (lemmaConcatTwoListThenFirstIsPrefix!1240 lt!687002 suffix!1421))))

(assert (=> b!1773585 (= lt!687009 (++!5315 lt!687002 suffix!1421))))

(declare-fun b!1773586 () Bool)

(declare-fun res!798849 () Bool)

(assert (=> b!1773586 (=> (not res!798849) (not e!1134875))))

(assert (=> b!1773586 (= res!798849 (= (rule!5543 token!523) rule!422))))

(declare-fun b!1773587 () Bool)

(declare-fun e!1134864 () Bool)

(declare-fun tp_is_empty!7881 () Bool)

(declare-fun tp!502671 () Bool)

(assert (=> b!1773587 (= e!1134864 (and tp_is_empty!7881 tp!502671))))

(declare-fun b!1773588 () Bool)

(assert (=> b!1773588 (= e!1134881 e!1134883)))

(declare-fun res!798845 () Bool)

(assert (=> b!1773588 (=> (not res!798845) (not e!1134883))))

(declare-fun isDefined!3348 (Option!4004) Bool)

(assert (=> b!1773588 (= res!798845 (isDefined!3348 lt!686986))))

(assert (=> b!1773588 (= lt!686986 (maxPrefix!1674 thiss!24550 rules!3447 lt!687002))))

(declare-fun lt!686978 () BalanceConc!12930)

(assert (=> b!1773588 (= lt!687002 (list!7933 lt!686978))))

(assert (=> b!1773588 (= lt!686978 (charsOf!2140 token!523))))

(declare-fun b!1773589 () Bool)

(declare-fun e!1134861 () Bool)

(assert (=> b!1773589 (= e!1134861 true)))

(declare-fun lt!686996 () Unit!33732)

(declare-fun e!1134885 () Unit!33732)

(assert (=> b!1773589 (= lt!686996 e!1134885)))

(declare-fun c!288823 () Bool)

(declare-fun lt!687011 () Int)

(declare-fun size!15507 (BalanceConc!12930) Int)

(assert (=> b!1773589 (= c!288823 (> lt!687011 (size!15507 lt!686978)))))

(declare-fun lt!686998 () Regex!4819)

(declare-fun matchR!2292 (Regex!4819 List!19590) Bool)

(assert (=> b!1773589 (matchR!2292 lt!686998 lt!687002)))

(declare-fun lt!687013 () Unit!33732)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!198 (LexerInterface!3120 List!19591 List!19590 Token!6548 Rule!6782 List!19590) Unit!33732)

(assert (=> b!1773589 (= lt!687013 (lemmaMaxPrefixThenMatchesRulesRegex!198 thiss!24550 rules!3447 lt!687002 token!523 rule!422 Nil!19520))))

(declare-fun res!798854 () Bool)

(assert (=> start!176098 (=> (not res!798854) (not e!1134881))))

(get-info :version)

(assert (=> start!176098 (= res!798854 ((_ is Lexer!3118) thiss!24550))))

(assert (=> start!176098 e!1134881))

(assert (=> start!176098 e!1134864))

(declare-fun e!1134880 () Bool)

(assert (=> start!176098 e!1134880))

(assert (=> start!176098 true))

(declare-fun e!1134862 () Bool)

(declare-fun inv!25375 (Token!6548) Bool)

(assert (=> start!176098 (and (inv!25375 token!523) e!1134862)))

(declare-fun e!1134869 () Bool)

(assert (=> start!176098 e!1134869))

(declare-fun b!1773590 () Bool)

(declare-fun e!1134884 () Bool)

(declare-fun tp!502668 () Bool)

(declare-fun e!1134886 () Bool)

(assert (=> b!1773590 (= e!1134886 (and tp!502668 (inv!25369 (tag!3875 (h!24922 rules!3447))) (inv!25374 (transformation!3491 (h!24922 rules!3447))) e!1134884))))

(declare-fun b!1773591 () Bool)

(declare-fun e!1134873 () Bool)

(assert (=> b!1773591 (= e!1134870 e!1134873)))

(declare-fun res!798858 () Bool)

(assert (=> b!1773591 (=> (not res!798858) (not e!1134873))))

(declare-fun lt!686999 () Rule!6782)

(assert (=> b!1773591 (= res!798858 (matchR!2292 (regex!3491 lt!686999) (list!7933 (charsOf!2140 (_1!10965 lt!686977)))))))

(declare-fun get!5968 (Option!4005) Rule!6782)

(assert (=> b!1773591 (= lt!686999 (get!5968 lt!686988))))

(declare-fun b!1773592 () Bool)

(declare-fun e!1134866 () Bool)

(assert (=> b!1773592 (= e!1134866 e!1134861)))

(declare-fun res!798852 () Bool)

(assert (=> b!1773592 (=> res!798852 e!1134861)))

(declare-fun lt!687006 () List!19590)

(declare-fun lt!687012 () Option!4004)

(assert (=> b!1773592 (= res!798852 (or (not (= lt!687006 (_2!10965 lt!686977))) (not (= lt!687012 (Some!4003 (tuple2!19127 (_1!10965 lt!686977) lt!687006))))))))

(assert (=> b!1773592 (= (_2!10965 lt!686977) lt!687006)))

(declare-fun lt!687008 () Unit!33732)

(declare-fun lemmaSamePrefixThenSameSuffix!842 (List!19590 List!19590 List!19590 List!19590 List!19590) Unit!33732)

(assert (=> b!1773592 (= lt!687008 (lemmaSamePrefixThenSameSuffix!842 lt!686982 (_2!10965 lt!686977) lt!686982 lt!687006 lt!687009))))

(declare-fun getSuffix!898 (List!19590 List!19590) List!19590)

(assert (=> b!1773592 (= lt!687006 (getSuffix!898 lt!687009 lt!686982))))

(declare-fun lt!687004 () TokenValue!3581)

(declare-fun lt!687010 () Int)

(assert (=> b!1773592 (= lt!687012 (Some!4003 (tuple2!19127 (Token!6549 lt!687004 (rule!5543 (_1!10965 lt!686977)) lt!687010 lt!686982) (_2!10965 lt!686977))))))

(declare-fun maxPrefixOneRule!1043 (LexerInterface!3120 Rule!6782 List!19590) Option!4004)

(assert (=> b!1773592 (= lt!687012 (maxPrefixOneRule!1043 thiss!24550 (rule!5543 (_1!10965 lt!686977)) lt!687009))))

(declare-fun size!15508 (List!19590) Int)

(assert (=> b!1773592 (= lt!687010 (size!15508 lt!686982))))

(declare-fun apply!5291 (TokenValueInjection!6822 BalanceConc!12930) TokenValue!3581)

(declare-fun seqFromList!2460 (List!19590) BalanceConc!12930)

(assert (=> b!1773592 (= lt!687004 (apply!5291 (transformation!3491 (rule!5543 (_1!10965 lt!686977))) (seqFromList!2460 lt!686982)))))

(declare-fun lt!686987 () Unit!33732)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!421 (LexerInterface!3120 List!19591 List!19590 List!19590 List!19590 Rule!6782) Unit!33732)

(assert (=> b!1773592 (= lt!686987 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!421 thiss!24550 rules!3447 lt!686982 lt!687009 (_2!10965 lt!686977) (rule!5543 (_1!10965 lt!686977))))))

(declare-fun b!1773593 () Bool)

(declare-fun res!798860 () Bool)

(assert (=> b!1773593 (=> res!798860 e!1134867)))

(assert (=> b!1773593 (= res!798860 (not (matchR!2292 (regex!3491 (rule!5543 (_1!10965 lt!686977))) lt!686982)))))

(declare-fun b!1773594 () Bool)

(declare-fun tp!502677 () Bool)

(assert (=> b!1773594 (= e!1134880 (and tp!502677 (inv!25369 (tag!3875 rule!422)) (inv!25374 (transformation!3491 rule!422)) e!1134882))))

(declare-fun b!1773595 () Bool)

(declare-fun res!798861 () Bool)

(assert (=> b!1773595 (=> (not res!798861) (not e!1134881))))

(declare-fun isEmpty!12330 (List!19591) Bool)

(assert (=> b!1773595 (= res!798861 (not (isEmpty!12330 rules!3447)))))

(declare-fun b!1773596 () Bool)

(declare-fun res!798862 () Bool)

(assert (=> b!1773596 (=> res!798862 e!1134872)))

(assert (=> b!1773596 (= res!798862 (not (= lt!686985 (dynLambda!9501 (toChars!4877 (transformation!3491 (rule!5543 (_1!10965 lt!686977)))) (value!109166 (_1!10965 lt!686977))))))))

(declare-fun b!1773597 () Bool)

(declare-fun res!798857 () Bool)

(assert (=> b!1773597 (=> (not res!798857) (not e!1134875))))

(declare-fun isEmpty!12331 (List!19590) Bool)

(assert (=> b!1773597 (= res!798857 (isEmpty!12331 (_2!10965 lt!686981)))))

(declare-fun b!1773598 () Bool)

(declare-fun e!1134865 () Bool)

(assert (=> b!1773598 (= e!1134865 e!1134868)))

(declare-fun res!798855 () Bool)

(assert (=> b!1773598 (=> res!798855 e!1134868)))

(declare-fun lt!686991 () List!19590)

(declare-fun prefixMatch!702 (Regex!4819 List!19590) Bool)

(assert (=> b!1773598 (= res!798855 (prefixMatch!702 lt!686998 lt!686991))))

(declare-fun head!4126 (List!19590) C!9812)

(assert (=> b!1773598 (= lt!686991 (++!5315 lt!687002 (Cons!19520 (head!4126 suffix!1421) Nil!19520)))))

(declare-fun rulesRegex!847 (LexerInterface!3120 List!19591) Regex!4819)

(assert (=> b!1773598 (= lt!686998 (rulesRegex!847 thiss!24550 rules!3447))))

(declare-fun b!1773599 () Bool)

(declare-fun tp!502676 () Bool)

(declare-fun inv!21 (TokenValue!3581) Bool)

(assert (=> b!1773599 (= e!1134862 (and (inv!21 (value!109166 token!523)) e!1134878 tp!502676))))

(declare-fun b!1773600 () Bool)

(declare-fun tp!502670 () Bool)

(assert (=> b!1773600 (= e!1134869 (and e!1134886 tp!502670))))

(assert (=> b!1773601 (= e!1134867 e!1134863)))

(declare-fun res!798851 () Bool)

(assert (=> b!1773601 (=> res!798851 e!1134863)))

(declare-fun Forall!858 (Int) Bool)

(assert (=> b!1773601 (= res!798851 (not (Forall!858 lambda!70490)))))

(declare-fun lt!686994 () Unit!33732)

(declare-fun lemmaInv!690 (TokenValueInjection!6822) Unit!33732)

(assert (=> b!1773601 (= lt!686994 (lemmaInv!690 (transformation!3491 (rule!5543 (_1!10965 lt!686977)))))))

(declare-fun b!1773602 () Bool)

(declare-fun Unit!33734 () Unit!33732)

(assert (=> b!1773602 (= e!1134885 Unit!33734)))

(declare-fun lt!686989 () Unit!33732)

(assert (=> b!1773602 (= lt!686989 (lemmaMaxPrefixThenMatchesRulesRegex!198 thiss!24550 rules!3447 lt!687009 (_1!10965 lt!686977) (rule!5543 (_1!10965 lt!686977)) (_2!10965 lt!686977)))))

(assert (=> b!1773602 (matchR!2292 lt!686998 lt!686982)))

(declare-fun lt!687003 () List!19590)

(assert (=> b!1773602 (= lt!687003 (getSuffix!898 lt!687009 lt!687002))))

(declare-fun lt!687005 () Unit!33732)

(assert (=> b!1773602 (= lt!687005 (lemmaSamePrefixThenSameSuffix!842 lt!687002 suffix!1421 lt!687002 lt!687003 lt!687009))))

(assert (=> b!1773602 (= suffix!1421 lt!687003)))

(declare-fun lt!686990 () Unit!33732)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!267 (List!19590 List!19590) Unit!33732)

(assert (=> b!1773602 (= lt!686990 (lemmaAddHeadSuffixToPrefixStillPrefix!267 lt!687002 lt!687009))))

(assert (=> b!1773602 (isPrefix!1731 (++!5315 lt!687002 (Cons!19520 (head!4126 lt!687003) Nil!19520)) lt!687009)))

(declare-fun lt!686993 () Unit!33732)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!139 (List!19590 List!19590 List!19590) Unit!33732)

(assert (=> b!1773602 (= lt!686993 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!139 lt!686982 lt!686991 lt!687009))))

(assert (=> b!1773602 (isPrefix!1731 lt!686991 lt!686982)))

(declare-fun lt!686995 () Unit!33732)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!130 (Regex!4819 List!19590 List!19590) Unit!33732)

(assert (=> b!1773602 (= lt!686995 (lemmaNotPrefixMatchThenCannotMatchLonger!130 lt!686998 lt!686991 lt!686982))))

(assert (=> b!1773602 false))

(declare-fun b!1773603 () Bool)

(assert (=> b!1773603 (= e!1134872 e!1134866)))

(declare-fun res!798856 () Bool)

(assert (=> b!1773603 (=> res!798856 e!1134866)))

(declare-fun lt!687007 () TokenValue!3581)

(assert (=> b!1773603 (= res!798856 (not (= lt!687000 (Some!4003 (tuple2!19127 (Token!6549 lt!687007 (rule!5543 (_1!10965 lt!686977)) lt!687011 lt!686982) (_2!10965 lt!686977))))))))

(assert (=> b!1773603 (= lt!687011 (size!15507 lt!686985))))

(assert (=> b!1773603 (= lt!687007 (apply!5291 (transformation!3491 (rule!5543 (_1!10965 lt!686977))) lt!686985))))

(declare-fun lt!687001 () Unit!33732)

(declare-fun lemmaCharactersSize!549 (Token!6548) Unit!33732)

(assert (=> b!1773603 (= lt!687001 (lemmaCharactersSize!549 (_1!10965 lt!686977)))))

(declare-fun lt!686980 () Unit!33732)

(declare-fun lemmaEqSameImage!402 (TokenValueInjection!6822 BalanceConc!12930 BalanceConc!12930) Unit!33732)

(assert (=> b!1773603 (= lt!686980 (lemmaEqSameImage!402 (transformation!3491 (rule!5543 (_1!10965 lt!686977))) lt!686985 (seqFromList!2460 (originalCharacters!4305 (_1!10965 lt!686977)))))))

(declare-fun b!1773604 () Bool)

(assert (=> b!1773604 (= e!1134875 (not e!1134865))))

(declare-fun res!798859 () Bool)

(assert (=> b!1773604 (=> res!798859 e!1134865)))

(assert (=> b!1773604 (= res!798859 (not (matchR!2292 (regex!3491 rule!422) lt!687002)))))

(declare-fun ruleValid!989 (LexerInterface!3120 Rule!6782) Bool)

(assert (=> b!1773604 (ruleValid!989 thiss!24550 rule!422)))

(declare-fun lt!686983 () Unit!33732)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!512 (LexerInterface!3120 Rule!6782 List!19591) Unit!33732)

(assert (=> b!1773604 (= lt!686983 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!512 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1773605 () Bool)

(declare-fun Unit!33735 () Unit!33732)

(assert (=> b!1773605 (= e!1134885 Unit!33735)))

(declare-fun b!1773606 () Bool)

(assert (=> b!1773606 (= e!1134873 (= (rule!5543 (_1!10965 lt!686977)) lt!686999))))

(declare-fun b!1773607 () Bool)

(declare-fun res!798846 () Bool)

(assert (=> b!1773607 (=> res!798846 e!1134865)))

(assert (=> b!1773607 (= res!798846 (isEmpty!12331 suffix!1421))))

(assert (=> b!1773608 (= e!1134871 (and tp!502673 tp!502667))))

(assert (=> b!1773609 (= e!1134884 (and tp!502675 tp!502672))))

(assert (= (and start!176098 res!798854) b!1773595))

(assert (= (and b!1773595 res!798861) b!1773580))

(assert (= (and b!1773580 res!798848) b!1773581))

(assert (= (and b!1773581 res!798850) b!1773588))

(assert (= (and b!1773588 res!798845) b!1773579))

(assert (= (and b!1773579 res!798843) b!1773597))

(assert (= (and b!1773597 res!798857) b!1773586))

(assert (= (and b!1773586 res!798849) b!1773604))

(assert (= (and b!1773604 (not res!798859)) b!1773607))

(assert (= (and b!1773607 (not res!798846)) b!1773598))

(assert (= (and b!1773598 (not res!798855)) b!1773585))

(assert (= (and b!1773585 res!798847) b!1773591))

(assert (= (and b!1773591 res!798858) b!1773606))

(assert (= (and b!1773585 (not res!798853)) b!1773593))

(assert (= (and b!1773593 (not res!798860)) b!1773601))

(assert (= (and b!1773601 (not res!798851)) b!1773583))

(assert (= (and b!1773583 (not res!798844)) b!1773596))

(assert (= (and b!1773596 (not res!798862)) b!1773603))

(assert (= (and b!1773603 (not res!798856)) b!1773592))

(assert (= (and b!1773592 (not res!798852)) b!1773589))

(assert (= (and b!1773589 c!288823) b!1773602))

(assert (= (and b!1773589 (not c!288823)) b!1773605))

(assert (= (and start!176098 ((_ is Cons!19520) suffix!1421)) b!1773587))

(assert (= b!1773594 b!1773584))

(assert (= start!176098 b!1773594))

(assert (= b!1773582 b!1773608))

(assert (= b!1773599 b!1773582))

(assert (= start!176098 b!1773599))

(assert (= b!1773590 b!1773609))

(assert (= b!1773600 b!1773590))

(assert (= (and start!176098 ((_ is Cons!19521) rules!3447)) b!1773600))

(declare-fun b_lambda!57831 () Bool)

(assert (=> (not b_lambda!57831) (not b!1773583)))

(declare-fun t!165619 () Bool)

(declare-fun tb!107439 () Bool)

(assert (=> (and b!1773608 (= (toChars!4877 (transformation!3491 (rule!5543 token!523))) (toChars!4877 (transformation!3491 (rule!5543 (_1!10965 lt!686977))))) t!165619) tb!107439))

(declare-fun tp!502681 () Bool)

(declare-fun e!1134898 () Bool)

(declare-fun b!1773625 () Bool)

(declare-fun inv!25376 (Conc!6493) Bool)

(assert (=> b!1773625 (= e!1134898 (and (inv!25376 (c!288825 (dynLambda!9501 (toChars!4877 (transformation!3491 (rule!5543 (_1!10965 lt!686977)))) (dynLambda!9502 (toValue!5018 (transformation!3491 (rule!5543 (_1!10965 lt!686977)))) lt!686985)))) tp!502681))))

(declare-fun result!129234 () Bool)

(declare-fun inv!25377 (BalanceConc!12930) Bool)

(assert (=> tb!107439 (= result!129234 (and (inv!25377 (dynLambda!9501 (toChars!4877 (transformation!3491 (rule!5543 (_1!10965 lt!686977)))) (dynLambda!9502 (toValue!5018 (transformation!3491 (rule!5543 (_1!10965 lt!686977)))) lt!686985))) e!1134898))))

(assert (= tb!107439 b!1773625))

(declare-fun m!2193257 () Bool)

(assert (=> b!1773625 m!2193257))

(declare-fun m!2193259 () Bool)

(assert (=> tb!107439 m!2193259))

(assert (=> b!1773583 t!165619))

(declare-fun b_and!135115 () Bool)

(assert (= b_and!135105 (and (=> t!165619 result!129234) b_and!135115)))

(declare-fun t!165621 () Bool)

(declare-fun tb!107441 () Bool)

(assert (=> (and b!1773584 (= (toChars!4877 (transformation!3491 rule!422)) (toChars!4877 (transformation!3491 (rule!5543 (_1!10965 lt!686977))))) t!165621) tb!107441))

(declare-fun result!129238 () Bool)

(assert (= result!129238 result!129234))

(assert (=> b!1773583 t!165621))

(declare-fun b_and!135117 () Bool)

(assert (= b_and!135109 (and (=> t!165621 result!129238) b_and!135117)))

(declare-fun tb!107443 () Bool)

(declare-fun t!165623 () Bool)

(assert (=> (and b!1773609 (= (toChars!4877 (transformation!3491 (h!24922 rules!3447))) (toChars!4877 (transformation!3491 (rule!5543 (_1!10965 lt!686977))))) t!165623) tb!107443))

(declare-fun result!129240 () Bool)

(assert (= result!129240 result!129234))

(assert (=> b!1773583 t!165623))

(declare-fun b_and!135119 () Bool)

(assert (= b_and!135113 (and (=> t!165623 result!129240) b_and!135119)))

(declare-fun b_lambda!57833 () Bool)

(assert (=> (not b_lambda!57833) (not b!1773583)))

(declare-fun t!165625 () Bool)

(declare-fun tb!107445 () Bool)

(assert (=> (and b!1773608 (= (toValue!5018 (transformation!3491 (rule!5543 token!523))) (toValue!5018 (transformation!3491 (rule!5543 (_1!10965 lt!686977))))) t!165625) tb!107445))

(declare-fun result!129242 () Bool)

(assert (=> tb!107445 (= result!129242 (inv!21 (dynLambda!9502 (toValue!5018 (transformation!3491 (rule!5543 (_1!10965 lt!686977)))) lt!686985)))))

(declare-fun m!2193261 () Bool)

(assert (=> tb!107445 m!2193261))

(assert (=> b!1773583 t!165625))

(declare-fun b_and!135121 () Bool)

(assert (= b_and!135103 (and (=> t!165625 result!129242) b_and!135121)))

(declare-fun t!165627 () Bool)

(declare-fun tb!107447 () Bool)

(assert (=> (and b!1773584 (= (toValue!5018 (transformation!3491 rule!422)) (toValue!5018 (transformation!3491 (rule!5543 (_1!10965 lt!686977))))) t!165627) tb!107447))

(declare-fun result!129246 () Bool)

(assert (= result!129246 result!129242))

(assert (=> b!1773583 t!165627))

(declare-fun b_and!135123 () Bool)

(assert (= b_and!135107 (and (=> t!165627 result!129246) b_and!135123)))

(declare-fun tb!107449 () Bool)

(declare-fun t!165629 () Bool)

(assert (=> (and b!1773609 (= (toValue!5018 (transformation!3491 (h!24922 rules!3447))) (toValue!5018 (transformation!3491 (rule!5543 (_1!10965 lt!686977))))) t!165629) tb!107449))

(declare-fun result!129248 () Bool)

(assert (= result!129248 result!129242))

(assert (=> b!1773583 t!165629))

(declare-fun b_and!135125 () Bool)

(assert (= b_and!135111 (and (=> t!165629 result!129248) b_and!135125)))

(declare-fun b_lambda!57835 () Bool)

(assert (=> (not b_lambda!57835) (not b!1773596)))

(declare-fun tb!107451 () Bool)

(declare-fun t!165631 () Bool)

(assert (=> (and b!1773608 (= (toChars!4877 (transformation!3491 (rule!5543 token!523))) (toChars!4877 (transformation!3491 (rule!5543 (_1!10965 lt!686977))))) t!165631) tb!107451))

(declare-fun b!1773628 () Bool)

(declare-fun e!1134902 () Bool)

(declare-fun tp!502682 () Bool)

(assert (=> b!1773628 (= e!1134902 (and (inv!25376 (c!288825 (dynLambda!9501 (toChars!4877 (transformation!3491 (rule!5543 (_1!10965 lt!686977)))) (value!109166 (_1!10965 lt!686977))))) tp!502682))))

(declare-fun result!129250 () Bool)

(assert (=> tb!107451 (= result!129250 (and (inv!25377 (dynLambda!9501 (toChars!4877 (transformation!3491 (rule!5543 (_1!10965 lt!686977)))) (value!109166 (_1!10965 lt!686977)))) e!1134902))))

(assert (= tb!107451 b!1773628))

(declare-fun m!2193263 () Bool)

(assert (=> b!1773628 m!2193263))

(declare-fun m!2193265 () Bool)

(assert (=> tb!107451 m!2193265))

(assert (=> b!1773596 t!165631))

(declare-fun b_and!135127 () Bool)

(assert (= b_and!135115 (and (=> t!165631 result!129250) b_and!135127)))

(declare-fun t!165633 () Bool)

(declare-fun tb!107453 () Bool)

(assert (=> (and b!1773584 (= (toChars!4877 (transformation!3491 rule!422)) (toChars!4877 (transformation!3491 (rule!5543 (_1!10965 lt!686977))))) t!165633) tb!107453))

(declare-fun result!129252 () Bool)

(assert (= result!129252 result!129250))

(assert (=> b!1773596 t!165633))

(declare-fun b_and!135129 () Bool)

(assert (= b_and!135117 (and (=> t!165633 result!129252) b_and!135129)))

(declare-fun t!165635 () Bool)

(declare-fun tb!107455 () Bool)

(assert (=> (and b!1773609 (= (toChars!4877 (transformation!3491 (h!24922 rules!3447))) (toChars!4877 (transformation!3491 (rule!5543 (_1!10965 lt!686977))))) t!165635) tb!107455))

(declare-fun result!129254 () Bool)

(assert (= result!129254 result!129250))

(assert (=> b!1773596 t!165635))

(declare-fun b_and!135131 () Bool)

(assert (= b_and!135119 (and (=> t!165635 result!129254) b_and!135131)))

(declare-fun m!2193267 () Bool)

(assert (=> b!1773588 m!2193267))

(declare-fun m!2193269 () Bool)

(assert (=> b!1773588 m!2193269))

(declare-fun m!2193271 () Bool)

(assert (=> b!1773588 m!2193271))

(declare-fun m!2193273 () Bool)

(assert (=> b!1773588 m!2193273))

(declare-fun m!2193275 () Bool)

(assert (=> b!1773593 m!2193275))

(declare-fun m!2193277 () Bool)

(assert (=> b!1773599 m!2193277))

(declare-fun m!2193279 () Bool)

(assert (=> b!1773607 m!2193279))

(declare-fun m!2193281 () Bool)

(assert (=> b!1773592 m!2193281))

(declare-fun m!2193283 () Bool)

(assert (=> b!1773592 m!2193283))

(declare-fun m!2193285 () Bool)

(assert (=> b!1773592 m!2193285))

(declare-fun m!2193287 () Bool)

(assert (=> b!1773592 m!2193287))

(declare-fun m!2193289 () Bool)

(assert (=> b!1773592 m!2193289))

(declare-fun m!2193291 () Bool)

(assert (=> b!1773592 m!2193291))

(assert (=> b!1773592 m!2193285))

(declare-fun m!2193293 () Bool)

(assert (=> b!1773592 m!2193293))

(declare-fun m!2193295 () Bool)

(assert (=> b!1773603 m!2193295))

(declare-fun m!2193297 () Bool)

(assert (=> b!1773603 m!2193297))

(declare-fun m!2193299 () Bool)

(assert (=> b!1773603 m!2193299))

(declare-fun m!2193301 () Bool)

(assert (=> b!1773603 m!2193301))

(assert (=> b!1773603 m!2193297))

(declare-fun m!2193303 () Bool)

(assert (=> b!1773603 m!2193303))

(declare-fun m!2193305 () Bool)

(assert (=> b!1773596 m!2193305))

(declare-fun m!2193307 () Bool)

(assert (=> b!1773581 m!2193307))

(declare-fun m!2193309 () Bool)

(assert (=> b!1773579 m!2193309))

(declare-fun m!2193311 () Bool)

(assert (=> b!1773583 m!2193311))

(assert (=> b!1773583 m!2193311))

(declare-fun m!2193313 () Bool)

(assert (=> b!1773583 m!2193313))

(assert (=> b!1773583 m!2193313))

(declare-fun m!2193315 () Bool)

(assert (=> b!1773583 m!2193315))

(declare-fun m!2193317 () Bool)

(assert (=> b!1773583 m!2193317))

(declare-fun m!2193319 () Bool)

(assert (=> b!1773598 m!2193319))

(declare-fun m!2193321 () Bool)

(assert (=> b!1773598 m!2193321))

(declare-fun m!2193323 () Bool)

(assert (=> b!1773598 m!2193323))

(declare-fun m!2193325 () Bool)

(assert (=> b!1773598 m!2193325))

(declare-fun m!2193327 () Bool)

(assert (=> b!1773602 m!2193327))

(declare-fun m!2193329 () Bool)

(assert (=> b!1773602 m!2193329))

(declare-fun m!2193331 () Bool)

(assert (=> b!1773602 m!2193331))

(declare-fun m!2193333 () Bool)

(assert (=> b!1773602 m!2193333))

(declare-fun m!2193335 () Bool)

(assert (=> b!1773602 m!2193335))

(assert (=> b!1773602 m!2193331))

(declare-fun m!2193337 () Bool)

(assert (=> b!1773602 m!2193337))

(declare-fun m!2193339 () Bool)

(assert (=> b!1773602 m!2193339))

(declare-fun m!2193341 () Bool)

(assert (=> b!1773602 m!2193341))

(declare-fun m!2193343 () Bool)

(assert (=> b!1773602 m!2193343))

(declare-fun m!2193345 () Bool)

(assert (=> b!1773602 m!2193345))

(declare-fun m!2193347 () Bool)

(assert (=> b!1773602 m!2193347))

(declare-fun m!2193349 () Bool)

(assert (=> b!1773594 m!2193349))

(declare-fun m!2193351 () Bool)

(assert (=> b!1773594 m!2193351))

(declare-fun m!2193353 () Bool)

(assert (=> b!1773601 m!2193353))

(declare-fun m!2193355 () Bool)

(assert (=> b!1773601 m!2193355))

(declare-fun m!2193357 () Bool)

(assert (=> b!1773585 m!2193357))

(declare-fun m!2193359 () Bool)

(assert (=> b!1773585 m!2193359))

(declare-fun m!2193361 () Bool)

(assert (=> b!1773585 m!2193361))

(declare-fun m!2193363 () Bool)

(assert (=> b!1773585 m!2193363))

(declare-fun m!2193365 () Bool)

(assert (=> b!1773585 m!2193365))

(declare-fun m!2193367 () Bool)

(assert (=> b!1773585 m!2193367))

(declare-fun m!2193369 () Bool)

(assert (=> b!1773585 m!2193369))

(declare-fun m!2193371 () Bool)

(assert (=> b!1773585 m!2193371))

(declare-fun m!2193373 () Bool)

(assert (=> b!1773585 m!2193373))

(declare-fun m!2193375 () Bool)

(assert (=> b!1773585 m!2193375))

(declare-fun m!2193377 () Bool)

(assert (=> b!1773585 m!2193377))

(assert (=> b!1773585 m!2193369))

(declare-fun m!2193379 () Bool)

(assert (=> b!1773585 m!2193379))

(declare-fun m!2193381 () Bool)

(assert (=> b!1773585 m!2193381))

(declare-fun m!2193383 () Bool)

(assert (=> b!1773585 m!2193383))

(declare-fun m!2193385 () Bool)

(assert (=> b!1773585 m!2193385))

(declare-fun m!2193387 () Bool)

(assert (=> b!1773590 m!2193387))

(declare-fun m!2193389 () Bool)

(assert (=> b!1773590 m!2193389))

(declare-fun m!2193391 () Bool)

(assert (=> b!1773582 m!2193391))

(declare-fun m!2193393 () Bool)

(assert (=> b!1773582 m!2193393))

(declare-fun m!2193395 () Bool)

(assert (=> b!1773580 m!2193395))

(declare-fun m!2193397 () Bool)

(assert (=> b!1773597 m!2193397))

(declare-fun m!2193399 () Bool)

(assert (=> b!1773589 m!2193399))

(declare-fun m!2193401 () Bool)

(assert (=> b!1773589 m!2193401))

(declare-fun m!2193403 () Bool)

(assert (=> b!1773589 m!2193403))

(assert (=> b!1773591 m!2193357))

(assert (=> b!1773591 m!2193357))

(declare-fun m!2193405 () Bool)

(assert (=> b!1773591 m!2193405))

(assert (=> b!1773591 m!2193405))

(declare-fun m!2193407 () Bool)

(assert (=> b!1773591 m!2193407))

(declare-fun m!2193409 () Bool)

(assert (=> b!1773591 m!2193409))

(declare-fun m!2193411 () Bool)

(assert (=> b!1773604 m!2193411))

(declare-fun m!2193413 () Bool)

(assert (=> b!1773604 m!2193413))

(declare-fun m!2193415 () Bool)

(assert (=> b!1773604 m!2193415))

(declare-fun m!2193417 () Bool)

(assert (=> b!1773595 m!2193417))

(declare-fun m!2193419 () Bool)

(assert (=> start!176098 m!2193419))

(check-sat (not b!1773597) (not b_lambda!57831) (not b!1773589) (not start!176098) (not b!1773594) (not b!1773599) (not b!1773581) (not b!1773585) (not tb!107439) (not b!1773600) (not b_next!49801) (not b!1773601) (not b!1773592) (not b!1773595) (not b!1773602) (not tb!107451) (not b!1773603) (not b_next!49803) (not tb!107445) b_and!135121 (not b!1773590) b_and!135125 (not b!1773625) (not b_lambda!57833) (not b!1773588) (not b_next!49805) tp_is_empty!7881 (not b!1773587) b_and!135127 (not b!1773582) b_and!135123 (not b!1773591) (not b!1773580) (not b_next!49807) (not b!1773593) (not b!1773604) b_and!135131 (not b!1773583) (not b_lambda!57835) (not b!1773598) (not b!1773628) (not b!1773579) b_and!135129 (not b!1773607) (not b_next!49799) (not b_next!49809))
(check-sat (not b_next!49801) (not b_next!49803) b_and!135121 b_and!135125 b_and!135123 (not b_next!49807) b_and!135131 b_and!135129 (not b_next!49805) b_and!135127 (not b_next!49799) (not b_next!49809))
