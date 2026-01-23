; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!167802 () Bool)

(assert start!167802)

(declare-fun b!1714724 () Bool)

(declare-fun b_free!46531 () Bool)

(declare-fun b_next!47235 () Bool)

(assert (=> b!1714724 (= b_free!46531 (not b_next!47235))))

(declare-fun tp!489785 () Bool)

(declare-fun b_and!124303 () Bool)

(assert (=> b!1714724 (= tp!489785 b_and!124303)))

(declare-fun b_free!46533 () Bool)

(declare-fun b_next!47237 () Bool)

(assert (=> b!1714724 (= b_free!46533 (not b_next!47237))))

(declare-fun tp!489795 () Bool)

(declare-fun b_and!124305 () Bool)

(assert (=> b!1714724 (= tp!489795 b_and!124305)))

(declare-fun b!1714735 () Bool)

(declare-fun b_free!46535 () Bool)

(declare-fun b_next!47239 () Bool)

(assert (=> b!1714735 (= b_free!46535 (not b_next!47239))))

(declare-fun tp!489790 () Bool)

(declare-fun b_and!124307 () Bool)

(assert (=> b!1714735 (= tp!489790 b_and!124307)))

(declare-fun b_free!46537 () Bool)

(declare-fun b_next!47241 () Bool)

(assert (=> b!1714735 (= b_free!46537 (not b_next!47241))))

(declare-fun tp!489792 () Bool)

(declare-fun b_and!124309 () Bool)

(assert (=> b!1714735 (= tp!489792 b_and!124309)))

(declare-fun b!1714723 () Bool)

(declare-fun b_free!46539 () Bool)

(declare-fun b_next!47243 () Bool)

(assert (=> b!1714723 (= b_free!46539 (not b_next!47243))))

(declare-fun tp!489789 () Bool)

(declare-fun b_and!124311 () Bool)

(assert (=> b!1714723 (= tp!489789 b_and!124311)))

(declare-fun b_free!46541 () Bool)

(declare-fun b_next!47245 () Bool)

(assert (=> b!1714723 (= b_free!46541 (not b_next!47245))))

(declare-fun tp!489793 () Bool)

(declare-fun b_and!124313 () Bool)

(assert (=> b!1714723 (= tp!489793 b_and!124313)))

(declare-fun b!1714750 () Bool)

(declare-fun e!1096543 () Bool)

(assert (=> b!1714750 (= e!1096543 true)))

(declare-fun b!1714749 () Bool)

(declare-fun e!1096542 () Bool)

(assert (=> b!1714749 (= e!1096542 e!1096543)))

(declare-fun b!1714748 () Bool)

(declare-fun e!1096541 () Bool)

(assert (=> b!1714748 (= e!1096541 e!1096542)))

(declare-fun b!1714725 () Bool)

(assert (=> b!1714725 e!1096541))

(assert (= b!1714749 b!1714750))

(assert (= b!1714748 b!1714749))

(assert (= b!1714725 b!1714748))

(declare-fun lambda!68936 () Int)

(declare-fun order!11289 () Int)

(declare-fun order!11287 () Int)

(declare-datatypes ((List!18793 0))(
  ( (Nil!18723) (Cons!18723 (h!24124 (_ BitVec 16)) (t!158608 List!18793)) )
))
(declare-datatypes ((TokenValue!3399 0))(
  ( (FloatLiteralValue!6798 (text!24238 List!18793)) (TokenValueExt!3398 (__x!12100 Int)) (Broken!16995 (value!103953 List!18793)) (Object!3468) (End!3399) (Def!3399) (Underscore!3399) (Match!3399) (Else!3399) (Error!3399) (Case!3399) (If!3399) (Extends!3399) (Abstract!3399) (Class!3399) (Val!3399) (DelimiterValue!6798 (del!3459 List!18793)) (KeywordValue!3405 (value!103954 List!18793)) (CommentValue!6798 (value!103955 List!18793)) (WhitespaceValue!6798 (value!103956 List!18793)) (IndentationValue!3399 (value!103957 List!18793)) (String!21326) (Int32!3399) (Broken!16996 (value!103958 List!18793)) (Boolean!3400) (Unit!32554) (OperatorValue!3402 (op!3459 List!18793)) (IdentifierValue!6798 (value!103959 List!18793)) (IdentifierValue!6799 (value!103960 List!18793)) (WhitespaceValue!6799 (value!103961 List!18793)) (True!6798) (False!6798) (Broken!16997 (value!103962 List!18793)) (Broken!16998 (value!103963 List!18793)) (True!6799) (RightBrace!3399) (RightBracket!3399) (Colon!3399) (Null!3399) (Comma!3399) (LeftBracket!3399) (False!6799) (LeftBrace!3399) (ImaginaryLiteralValue!3399 (text!24239 List!18793)) (StringLiteralValue!10197 (value!103964 List!18793)) (EOFValue!3399 (value!103965 List!18793)) (IdentValue!3399 (value!103966 List!18793)) (DelimiterValue!6799 (value!103967 List!18793)) (DedentValue!3399 (value!103968 List!18793)) (NewLineValue!3399 (value!103969 List!18793)) (IntegerValue!10197 (value!103970 (_ BitVec 32)) (text!24240 List!18793)) (IntegerValue!10198 (value!103971 Int) (text!24241 List!18793)) (Times!3399) (Or!3399) (Equal!3399) (Minus!3399) (Broken!16999 (value!103972 List!18793)) (And!3399) (Div!3399) (LessEqual!3399) (Mod!3399) (Concat!8036) (Not!3399) (Plus!3399) (SpaceValue!3399 (value!103973 List!18793)) (IntegerValue!10199 (value!103974 Int) (text!24242 List!18793)) (StringLiteralValue!10198 (text!24243 List!18793)) (FloatLiteralValue!6799 (text!24244 List!18793)) (BytesLiteralValue!3399 (value!103975 List!18793)) (CommentValue!6799 (value!103976 List!18793)) (StringLiteralValue!10199 (value!103977 List!18793)) (ErrorTokenValue!3399 (msg!3460 List!18793)) )
))
(declare-datatypes ((C!9448 0))(
  ( (C!9449 (val!5320 Int)) )
))
(declare-datatypes ((List!18794 0))(
  ( (Nil!18724) (Cons!18724 (h!24125 C!9448) (t!158609 List!18794)) )
))
(declare-datatypes ((String!21327 0))(
  ( (String!21328 (value!103978 String)) )
))
(declare-datatypes ((Regex!4637 0))(
  ( (ElementMatch!4637 (c!280960 C!9448)) (Concat!8037 (regOne!9786 Regex!4637) (regTwo!9786 Regex!4637)) (EmptyExpr!4637) (Star!4637 (reg!4966 Regex!4637)) (EmptyLang!4637) (Union!4637 (regOne!9787 Regex!4637) (regTwo!9787 Regex!4637)) )
))
(declare-datatypes ((IArray!12459 0))(
  ( (IArray!12460 (innerList!6287 List!18794)) )
))
(declare-datatypes ((Conc!6227 0))(
  ( (Node!6227 (left!14923 Conc!6227) (right!15253 Conc!6227) (csize!12684 Int) (cheight!6438 Int)) (Leaf!9102 (xs!9103 IArray!12459) (csize!12685 Int)) (Empty!6227) )
))
(declare-datatypes ((BalanceConc!12398 0))(
  ( (BalanceConc!12399 (c!280961 Conc!6227)) )
))
(declare-datatypes ((TokenValueInjection!6458 0))(
  ( (TokenValueInjection!6459 (toValue!4816 Int) (toChars!4675 Int)) )
))
(declare-datatypes ((Rule!6418 0))(
  ( (Rule!6419 (regex!3309 Regex!4637) (tag!3609 String!21327) (isSeparator!3309 Bool) (transformation!3309 TokenValueInjection!6458)) )
))
(declare-datatypes ((Token!6184 0))(
  ( (Token!6185 (value!103979 TokenValue!3399) (rule!5247 Rule!6418) (size!14884 Int) (originalCharacters!4123 List!18794)) )
))
(declare-datatypes ((tuple2!18438 0))(
  ( (tuple2!18439 (_1!10621 Token!6184) (_2!10621 List!18794)) )
))
(declare-fun lt!655005 () tuple2!18438)

(declare-fun dynLambda!8523 (Int Int) Int)

(declare-fun dynLambda!8524 (Int Int) Int)

(assert (=> b!1714750 (< (dynLambda!8523 order!11287 (toValue!4816 (transformation!3309 (rule!5247 (_1!10621 lt!655005))))) (dynLambda!8524 order!11289 lambda!68936))))

(declare-fun order!11291 () Int)

(declare-fun dynLambda!8525 (Int Int) Int)

(assert (=> b!1714750 (< (dynLambda!8525 order!11291 (toChars!4675 (transformation!3309 (rule!5247 (_1!10621 lt!655005))))) (dynLambda!8524 order!11289 lambda!68936))))

(declare-fun b!1714713 () Bool)

(declare-fun res!768789 () Bool)

(declare-fun e!1096529 () Bool)

(assert (=> b!1714713 (=> res!768789 e!1096529)))

(declare-fun suffix!1421 () List!18794)

(declare-fun lt!655014 () List!18794)

(declare-datatypes ((LexerInterface!2938 0))(
  ( (LexerInterfaceExt!2935 (__x!12101 Int)) (Lexer!2936) )
))
(declare-fun thiss!24550 () LexerInterface!2938)

(declare-datatypes ((List!18795 0))(
  ( (Nil!18725) (Cons!18725 (h!24126 Rule!6418) (t!158610 List!18795)) )
))
(declare-fun rules!3447 () List!18795)

(declare-fun prefixMatch!522 (Regex!4637 List!18794) Bool)

(declare-fun rulesRegex!667 (LexerInterface!2938 List!18795) Regex!4637)

(declare-fun ++!5134 (List!18794 List!18794) List!18794)

(declare-fun head!3852 (List!18794) C!9448)

(assert (=> b!1714713 (= res!768789 (prefixMatch!522 (rulesRegex!667 thiss!24550 rules!3447) (++!5134 lt!655014 (Cons!18724 (head!3852 suffix!1421) Nil!18724))))))

(declare-fun b!1714714 () Bool)

(declare-fun res!768795 () Bool)

(declare-fun e!1096517 () Bool)

(assert (=> b!1714714 (=> res!768795 e!1096517)))

(declare-fun lt!655018 () List!18794)

(declare-fun matchR!2111 (Regex!4637 List!18794) Bool)

(assert (=> b!1714714 (= res!768795 (not (matchR!2111 (regex!3309 (rule!5247 (_1!10621 lt!655005))) lt!655018)))))

(declare-fun b!1714715 () Bool)

(assert (=> b!1714715 (= e!1096529 e!1096517)))

(declare-fun res!768790 () Bool)

(assert (=> b!1714715 (=> res!768790 e!1096517)))

(declare-fun lt!655004 () List!18794)

(declare-fun isPrefix!1550 (List!18794 List!18794) Bool)

(assert (=> b!1714715 (= res!768790 (not (isPrefix!1550 lt!655018 lt!655004)))))

(assert (=> b!1714715 (isPrefix!1550 lt!655018 (++!5134 lt!655018 (_2!10621 lt!655005)))))

(declare-datatypes ((Unit!32555 0))(
  ( (Unit!32556) )
))
(declare-fun lt!655011 () Unit!32555)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1060 (List!18794 List!18794) Unit!32555)

(assert (=> b!1714715 (= lt!655011 (lemmaConcatTwoListThenFirstIsPrefix!1060 lt!655018 (_2!10621 lt!655005)))))

(declare-fun lt!655002 () BalanceConc!12398)

(declare-fun list!7562 (BalanceConc!12398) List!18794)

(assert (=> b!1714715 (= lt!655018 (list!7562 lt!655002))))

(declare-fun charsOf!1958 (Token!6184) BalanceConc!12398)

(assert (=> b!1714715 (= lt!655002 (charsOf!1958 (_1!10621 lt!655005)))))

(declare-fun e!1096527 () Bool)

(assert (=> b!1714715 e!1096527))

(declare-fun res!768804 () Bool)

(assert (=> b!1714715 (=> (not res!768804) (not e!1096527))))

(declare-datatypes ((Option!3642 0))(
  ( (None!3641) (Some!3641 (v!25034 Rule!6418)) )
))
(declare-fun lt!655017 () Option!3642)

(declare-fun isDefined!2985 (Option!3642) Bool)

(assert (=> b!1714715 (= res!768804 (isDefined!2985 lt!655017))))

(declare-fun getRuleFromTag!359 (LexerInterface!2938 List!18795 String!21327) Option!3642)

(assert (=> b!1714715 (= lt!655017 (getRuleFromTag!359 thiss!24550 rules!3447 (tag!3609 (rule!5247 (_1!10621 lt!655005)))))))

(declare-fun lt!655015 () Unit!32555)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!359 (LexerInterface!2938 List!18795 List!18794 Token!6184) Unit!32555)

(assert (=> b!1714715 (= lt!655015 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!359 thiss!24550 rules!3447 lt!655004 (_1!10621 lt!655005)))))

(declare-datatypes ((Option!3643 0))(
  ( (None!3642) (Some!3642 (v!25035 tuple2!18438)) )
))
(declare-fun lt!655003 () Option!3643)

(declare-fun get!5514 (Option!3643) tuple2!18438)

(assert (=> b!1714715 (= lt!655005 (get!5514 lt!655003))))

(declare-fun lt!655009 () Unit!32555)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!462 (LexerInterface!2938 List!18795 List!18794 List!18794) Unit!32555)

(assert (=> b!1714715 (= lt!655009 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!462 thiss!24550 rules!3447 lt!655014 suffix!1421))))

(declare-fun maxPrefix!1492 (LexerInterface!2938 List!18795 List!18794) Option!3643)

(assert (=> b!1714715 (= lt!655003 (maxPrefix!1492 thiss!24550 rules!3447 lt!655004))))

(assert (=> b!1714715 (isPrefix!1550 lt!655014 lt!655004)))

(declare-fun lt!655016 () Unit!32555)

(assert (=> b!1714715 (= lt!655016 (lemmaConcatTwoListThenFirstIsPrefix!1060 lt!655014 suffix!1421))))

(assert (=> b!1714715 (= lt!655004 (++!5134 lt!655014 suffix!1421))))

(declare-fun b!1714716 () Bool)

(declare-fun e!1096528 () Bool)

(declare-fun lt!655012 () Rule!6418)

(assert (=> b!1714716 (= e!1096528 (= (rule!5247 (_1!10621 lt!655005)) lt!655012))))

(declare-fun b!1714717 () Bool)

(declare-fun e!1096533 () Bool)

(declare-fun e!1096522 () Bool)

(declare-fun tp!489786 () Bool)

(assert (=> b!1714717 (= e!1096533 (and e!1096522 tp!489786))))

(declare-fun b!1714718 () Bool)

(declare-fun e!1096516 () Bool)

(declare-fun e!1096518 () Bool)

(assert (=> b!1714718 (= e!1096516 e!1096518)))

(declare-fun res!768794 () Bool)

(assert (=> b!1714718 (=> (not res!768794) (not e!1096518))))

(declare-fun lt!655020 () Option!3643)

(declare-fun isDefined!2986 (Option!3643) Bool)

(assert (=> b!1714718 (= res!768794 (isDefined!2986 lt!655020))))

(assert (=> b!1714718 (= lt!655020 (maxPrefix!1492 thiss!24550 rules!3447 lt!655014))))

(declare-fun token!523 () Token!6184)

(assert (=> b!1714718 (= lt!655014 (list!7562 (charsOf!1958 token!523)))))

(declare-fun e!1096524 () Bool)

(declare-fun tp!489788 () Bool)

(declare-fun e!1096526 () Bool)

(declare-fun b!1714719 () Bool)

(declare-fun inv!21 (TokenValue!3399) Bool)

(assert (=> b!1714719 (= e!1096524 (and (inv!21 (value!103979 token!523)) e!1096526 tp!489788))))

(declare-fun b!1714720 () Bool)

(declare-fun e!1096513 () Bool)

(declare-fun tp_is_empty!7517 () Bool)

(declare-fun tp!489794 () Bool)

(assert (=> b!1714720 (= e!1096513 (and tp_is_empty!7517 tp!489794))))

(declare-fun b!1714721 () Bool)

(declare-fun e!1096521 () Bool)

(assert (=> b!1714721 (= e!1096521 (not e!1096529))))

(declare-fun res!768805 () Bool)

(assert (=> b!1714721 (=> res!768805 e!1096529)))

(declare-fun rule!422 () Rule!6418)

(assert (=> b!1714721 (= res!768805 (not (matchR!2111 (regex!3309 rule!422) lt!655014)))))

(declare-fun ruleValid!808 (LexerInterface!2938 Rule!6418) Bool)

(assert (=> b!1714721 (ruleValid!808 thiss!24550 rule!422)))

(declare-fun lt!655007 () Unit!32555)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!332 (LexerInterface!2938 Rule!6418 List!18795) Unit!32555)

(assert (=> b!1714721 (= lt!655007 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!332 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1714722 () Bool)

(declare-fun res!768791 () Bool)

(assert (=> b!1714722 (=> (not res!768791) (not e!1096516))))

(declare-fun rulesInvariant!2607 (LexerInterface!2938 List!18795) Bool)

(assert (=> b!1714722 (= res!768791 (rulesInvariant!2607 thiss!24550 rules!3447))))

(declare-fun e!1096531 () Bool)

(assert (=> b!1714723 (= e!1096531 (and tp!489789 tp!489793))))

(declare-fun e!1096530 () Bool)

(assert (=> b!1714724 (= e!1096530 (and tp!489785 tp!489795))))

(declare-fun e!1096523 () Bool)

(assert (=> b!1714725 (= e!1096517 e!1096523)))

(declare-fun res!768803 () Bool)

(assert (=> b!1714725 (=> res!768803 e!1096523)))

(declare-fun Forall!684 (Int) Bool)

(assert (=> b!1714725 (= res!768803 (not (Forall!684 lambda!68936)))))

(declare-fun lt!655019 () Unit!32555)

(declare-fun lemmaInv!516 (TokenValueInjection!6458) Unit!32555)

(assert (=> b!1714725 (= lt!655019 (lemmaInv!516 (transformation!3309 (rule!5247 (_1!10621 lt!655005)))))))

(declare-fun e!1096532 () Bool)

(declare-fun tp!489791 () Bool)

(declare-fun b!1714726 () Bool)

(declare-fun inv!24143 (String!21327) Bool)

(declare-fun inv!24148 (TokenValueInjection!6458) Bool)

(assert (=> b!1714726 (= e!1096522 (and tp!489791 (inv!24143 (tag!3609 (h!24126 rules!3447))) (inv!24148 (transformation!3309 (h!24126 rules!3447))) e!1096532))))

(declare-fun b!1714727 () Bool)

(declare-fun e!1096519 () Bool)

(assert (=> b!1714727 (= e!1096523 e!1096519)))

(declare-fun res!768798 () Bool)

(assert (=> b!1714727 (=> res!768798 e!1096519)))

(declare-fun dynLambda!8526 (Int TokenValue!3399) BalanceConc!12398)

(declare-fun dynLambda!8527 (Int BalanceConc!12398) TokenValue!3399)

(assert (=> b!1714727 (= res!768798 (not (= (list!7562 (dynLambda!8526 (toChars!4675 (transformation!3309 (rule!5247 (_1!10621 lt!655005)))) (dynLambda!8527 (toValue!4816 (transformation!3309 (rule!5247 (_1!10621 lt!655005)))) lt!655002))) lt!655018)))))

(declare-fun lt!655013 () Unit!32555)

(declare-fun lemmaSemiInverse!455 (TokenValueInjection!6458 BalanceConc!12398) Unit!32555)

(assert (=> b!1714727 (= lt!655013 (lemmaSemiInverse!455 (transformation!3309 (rule!5247 (_1!10621 lt!655005))) lt!655002))))

(declare-fun b!1714728 () Bool)

(declare-fun res!768800 () Bool)

(assert (=> b!1714728 (=> (not res!768800) (not e!1096521))))

(declare-fun lt!655008 () tuple2!18438)

(declare-fun isEmpty!11769 (List!18794) Bool)

(assert (=> b!1714728 (= res!768800 (isEmpty!11769 (_2!10621 lt!655008)))))

(declare-fun b!1714729 () Bool)

(declare-fun tp!489796 () Bool)

(assert (=> b!1714729 (= e!1096526 (and tp!489796 (inv!24143 (tag!3609 (rule!5247 token!523))) (inv!24148 (transformation!3309 (rule!5247 token!523))) e!1096530))))

(declare-fun b!1714730 () Bool)

(assert (=> b!1714730 (= e!1096527 e!1096528)))

(declare-fun res!768801 () Bool)

(assert (=> b!1714730 (=> (not res!768801) (not e!1096528))))

(assert (=> b!1714730 (= res!768801 (matchR!2111 (regex!3309 lt!655012) (list!7562 (charsOf!1958 (_1!10621 lt!655005)))))))

(declare-fun get!5515 (Option!3642) Rule!6418)

(assert (=> b!1714730 (= lt!655012 (get!5515 lt!655017))))

(declare-fun b!1714731 () Bool)

(declare-fun res!768802 () Bool)

(assert (=> b!1714731 (=> res!768802 e!1096529)))

(assert (=> b!1714731 (= res!768802 (isEmpty!11769 suffix!1421))))

(declare-fun b!1714732 () Bool)

(assert (=> b!1714732 (= e!1096519 true)))

(declare-fun lt!655006 () Unit!32555)

(declare-fun lemmaCharactersSize!381 (Token!6184) Unit!32555)

(assert (=> b!1714732 (= lt!655006 (lemmaCharactersSize!381 (_1!10621 lt!655005)))))

(declare-fun lt!655010 () Unit!32555)

(declare-fun lemmaEqSameImage!234 (TokenValueInjection!6458 BalanceConc!12398 BalanceConc!12398) Unit!32555)

(declare-fun seqFromList!2283 (List!18794) BalanceConc!12398)

(assert (=> b!1714732 (= lt!655010 (lemmaEqSameImage!234 (transformation!3309 (rule!5247 (_1!10621 lt!655005))) lt!655002 (seqFromList!2283 (originalCharacters!4123 (_1!10621 lt!655005)))))))

(declare-fun tp!489787 () Bool)

(declare-fun b!1714733 () Bool)

(declare-fun e!1096534 () Bool)

(assert (=> b!1714733 (= e!1096534 (and tp!489787 (inv!24143 (tag!3609 rule!422)) (inv!24148 (transformation!3309 rule!422)) e!1096531))))

(declare-fun res!768796 () Bool)

(assert (=> start!167802 (=> (not res!768796) (not e!1096516))))

(get-info :version)

(assert (=> start!167802 (= res!768796 ((_ is Lexer!2936) thiss!24550))))

(assert (=> start!167802 e!1096516))

(assert (=> start!167802 e!1096513))

(assert (=> start!167802 e!1096534))

(assert (=> start!167802 true))

(declare-fun inv!24149 (Token!6184) Bool)

(assert (=> start!167802 (and (inv!24149 token!523) e!1096524)))

(assert (=> start!167802 e!1096533))

(declare-fun b!1714734 () Bool)

(declare-fun res!768797 () Bool)

(assert (=> b!1714734 (=> (not res!768797) (not e!1096521))))

(assert (=> b!1714734 (= res!768797 (= (rule!5247 token!523) rule!422))))

(assert (=> b!1714735 (= e!1096532 (and tp!489790 tp!489792))))

(declare-fun b!1714736 () Bool)

(declare-fun res!768799 () Bool)

(assert (=> b!1714736 (=> res!768799 e!1096519)))

(assert (=> b!1714736 (= res!768799 (not (= lt!655002 (dynLambda!8526 (toChars!4675 (transformation!3309 (rule!5247 (_1!10621 lt!655005)))) (value!103979 (_1!10621 lt!655005))))))))

(declare-fun b!1714737 () Bool)

(declare-fun res!768806 () Bool)

(assert (=> b!1714737 (=> (not res!768806) (not e!1096516))))

(declare-fun contains!3331 (List!18795 Rule!6418) Bool)

(assert (=> b!1714737 (= res!768806 (contains!3331 rules!3447 rule!422))))

(declare-fun b!1714738 () Bool)

(declare-fun res!768792 () Bool)

(assert (=> b!1714738 (=> (not res!768792) (not e!1096516))))

(declare-fun isEmpty!11770 (List!18795) Bool)

(assert (=> b!1714738 (= res!768792 (not (isEmpty!11770 rules!3447)))))

(declare-fun b!1714739 () Bool)

(assert (=> b!1714739 (= e!1096518 e!1096521)))

(declare-fun res!768793 () Bool)

(assert (=> b!1714739 (=> (not res!768793) (not e!1096521))))

(assert (=> b!1714739 (= res!768793 (= (_1!10621 lt!655008) token!523))))

(assert (=> b!1714739 (= lt!655008 (get!5514 lt!655020))))

(assert (= (and start!167802 res!768796) b!1714738))

(assert (= (and b!1714738 res!768792) b!1714722))

(assert (= (and b!1714722 res!768791) b!1714737))

(assert (= (and b!1714737 res!768806) b!1714718))

(assert (= (and b!1714718 res!768794) b!1714739))

(assert (= (and b!1714739 res!768793) b!1714728))

(assert (= (and b!1714728 res!768800) b!1714734))

(assert (= (and b!1714734 res!768797) b!1714721))

(assert (= (and b!1714721 (not res!768805)) b!1714731))

(assert (= (and b!1714731 (not res!768802)) b!1714713))

(assert (= (and b!1714713 (not res!768789)) b!1714715))

(assert (= (and b!1714715 res!768804) b!1714730))

(assert (= (and b!1714730 res!768801) b!1714716))

(assert (= (and b!1714715 (not res!768790)) b!1714714))

(assert (= (and b!1714714 (not res!768795)) b!1714725))

(assert (= (and b!1714725 (not res!768803)) b!1714727))

(assert (= (and b!1714727 (not res!768798)) b!1714736))

(assert (= (and b!1714736 (not res!768799)) b!1714732))

(assert (= (and start!167802 ((_ is Cons!18724) suffix!1421)) b!1714720))

(assert (= b!1714733 b!1714723))

(assert (= start!167802 b!1714733))

(assert (= b!1714729 b!1714724))

(assert (= b!1714719 b!1714729))

(assert (= start!167802 b!1714719))

(assert (= b!1714726 b!1714735))

(assert (= b!1714717 b!1714726))

(assert (= (and start!167802 ((_ is Cons!18725) rules!3447)) b!1714717))

(declare-fun b_lambda!54139 () Bool)

(assert (=> (not b_lambda!54139) (not b!1714727)))

(declare-fun tb!101233 () Bool)

(declare-fun t!158591 () Bool)

(assert (=> (and b!1714724 (= (toChars!4675 (transformation!3309 (rule!5247 token!523))) (toChars!4675 (transformation!3309 (rule!5247 (_1!10621 lt!655005))))) t!158591) tb!101233))

(declare-fun e!1096546 () Bool)

(declare-fun b!1714755 () Bool)

(declare-fun tp!489799 () Bool)

(declare-fun inv!24150 (Conc!6227) Bool)

(assert (=> b!1714755 (= e!1096546 (and (inv!24150 (c!280961 (dynLambda!8526 (toChars!4675 (transformation!3309 (rule!5247 (_1!10621 lt!655005)))) (dynLambda!8527 (toValue!4816 (transformation!3309 (rule!5247 (_1!10621 lt!655005)))) lt!655002)))) tp!489799))))

(declare-fun result!121644 () Bool)

(declare-fun inv!24151 (BalanceConc!12398) Bool)

(assert (=> tb!101233 (= result!121644 (and (inv!24151 (dynLambda!8526 (toChars!4675 (transformation!3309 (rule!5247 (_1!10621 lt!655005)))) (dynLambda!8527 (toValue!4816 (transformation!3309 (rule!5247 (_1!10621 lt!655005)))) lt!655002))) e!1096546))))

(assert (= tb!101233 b!1714755))

(declare-fun m!2118811 () Bool)

(assert (=> b!1714755 m!2118811))

(declare-fun m!2118813 () Bool)

(assert (=> tb!101233 m!2118813))

(assert (=> b!1714727 t!158591))

(declare-fun b_and!124315 () Bool)

(assert (= b_and!124305 (and (=> t!158591 result!121644) b_and!124315)))

(declare-fun tb!101235 () Bool)

(declare-fun t!158593 () Bool)

(assert (=> (and b!1714735 (= (toChars!4675 (transformation!3309 (h!24126 rules!3447))) (toChars!4675 (transformation!3309 (rule!5247 (_1!10621 lt!655005))))) t!158593) tb!101235))

(declare-fun result!121648 () Bool)

(assert (= result!121648 result!121644))

(assert (=> b!1714727 t!158593))

(declare-fun b_and!124317 () Bool)

(assert (= b_and!124309 (and (=> t!158593 result!121648) b_and!124317)))

(declare-fun tb!101237 () Bool)

(declare-fun t!158595 () Bool)

(assert (=> (and b!1714723 (= (toChars!4675 (transformation!3309 rule!422)) (toChars!4675 (transformation!3309 (rule!5247 (_1!10621 lt!655005))))) t!158595) tb!101237))

(declare-fun result!121650 () Bool)

(assert (= result!121650 result!121644))

(assert (=> b!1714727 t!158595))

(declare-fun b_and!124319 () Bool)

(assert (= b_and!124313 (and (=> t!158595 result!121650) b_and!124319)))

(declare-fun b_lambda!54141 () Bool)

(assert (=> (not b_lambda!54141) (not b!1714727)))

(declare-fun tb!101239 () Bool)

(declare-fun t!158597 () Bool)

(assert (=> (and b!1714724 (= (toValue!4816 (transformation!3309 (rule!5247 token!523))) (toValue!4816 (transformation!3309 (rule!5247 (_1!10621 lt!655005))))) t!158597) tb!101239))

(declare-fun result!121652 () Bool)

(assert (=> tb!101239 (= result!121652 (inv!21 (dynLambda!8527 (toValue!4816 (transformation!3309 (rule!5247 (_1!10621 lt!655005)))) lt!655002)))))

(declare-fun m!2118815 () Bool)

(assert (=> tb!101239 m!2118815))

(assert (=> b!1714727 t!158597))

(declare-fun b_and!124321 () Bool)

(assert (= b_and!124303 (and (=> t!158597 result!121652) b_and!124321)))

(declare-fun tb!101241 () Bool)

(declare-fun t!158599 () Bool)

(assert (=> (and b!1714735 (= (toValue!4816 (transformation!3309 (h!24126 rules!3447))) (toValue!4816 (transformation!3309 (rule!5247 (_1!10621 lt!655005))))) t!158599) tb!101241))

(declare-fun result!121656 () Bool)

(assert (= result!121656 result!121652))

(assert (=> b!1714727 t!158599))

(declare-fun b_and!124323 () Bool)

(assert (= b_and!124307 (and (=> t!158599 result!121656) b_and!124323)))

(declare-fun t!158601 () Bool)

(declare-fun tb!101243 () Bool)

(assert (=> (and b!1714723 (= (toValue!4816 (transformation!3309 rule!422)) (toValue!4816 (transformation!3309 (rule!5247 (_1!10621 lt!655005))))) t!158601) tb!101243))

(declare-fun result!121658 () Bool)

(assert (= result!121658 result!121652))

(assert (=> b!1714727 t!158601))

(declare-fun b_and!124325 () Bool)

(assert (= b_and!124311 (and (=> t!158601 result!121658) b_and!124325)))

(declare-fun b_lambda!54143 () Bool)

(assert (=> (not b_lambda!54143) (not b!1714736)))

(declare-fun t!158603 () Bool)

(declare-fun tb!101245 () Bool)

(assert (=> (and b!1714724 (= (toChars!4675 (transformation!3309 (rule!5247 token!523))) (toChars!4675 (transformation!3309 (rule!5247 (_1!10621 lt!655005))))) t!158603) tb!101245))

(declare-fun b!1714758 () Bool)

(declare-fun e!1096550 () Bool)

(declare-fun tp!489800 () Bool)

(assert (=> b!1714758 (= e!1096550 (and (inv!24150 (c!280961 (dynLambda!8526 (toChars!4675 (transformation!3309 (rule!5247 (_1!10621 lt!655005)))) (value!103979 (_1!10621 lt!655005))))) tp!489800))))

(declare-fun result!121660 () Bool)

(assert (=> tb!101245 (= result!121660 (and (inv!24151 (dynLambda!8526 (toChars!4675 (transformation!3309 (rule!5247 (_1!10621 lt!655005)))) (value!103979 (_1!10621 lt!655005)))) e!1096550))))

(assert (= tb!101245 b!1714758))

(declare-fun m!2118817 () Bool)

(assert (=> b!1714758 m!2118817))

(declare-fun m!2118819 () Bool)

(assert (=> tb!101245 m!2118819))

(assert (=> b!1714736 t!158603))

(declare-fun b_and!124327 () Bool)

(assert (= b_and!124315 (and (=> t!158603 result!121660) b_and!124327)))

(declare-fun t!158605 () Bool)

(declare-fun tb!101247 () Bool)

(assert (=> (and b!1714735 (= (toChars!4675 (transformation!3309 (h!24126 rules!3447))) (toChars!4675 (transformation!3309 (rule!5247 (_1!10621 lt!655005))))) t!158605) tb!101247))

(declare-fun result!121662 () Bool)

(assert (= result!121662 result!121660))

(assert (=> b!1714736 t!158605))

(declare-fun b_and!124329 () Bool)

(assert (= b_and!124317 (and (=> t!158605 result!121662) b_and!124329)))

(declare-fun t!158607 () Bool)

(declare-fun tb!101249 () Bool)

(assert (=> (and b!1714723 (= (toChars!4675 (transformation!3309 rule!422)) (toChars!4675 (transformation!3309 (rule!5247 (_1!10621 lt!655005))))) t!158607) tb!101249))

(declare-fun result!121664 () Bool)

(assert (= result!121664 result!121660))

(assert (=> b!1714736 t!158607))

(declare-fun b_and!124331 () Bool)

(assert (= b_and!124319 (and (=> t!158607 result!121664) b_and!124331)))

(declare-fun m!2118821 () Bool)

(assert (=> b!1714718 m!2118821))

(declare-fun m!2118823 () Bool)

(assert (=> b!1714718 m!2118823))

(declare-fun m!2118825 () Bool)

(assert (=> b!1714718 m!2118825))

(assert (=> b!1714718 m!2118825))

(declare-fun m!2118827 () Bool)

(assert (=> b!1714718 m!2118827))

(declare-fun m!2118829 () Bool)

(assert (=> b!1714738 m!2118829))

(declare-fun m!2118831 () Bool)

(assert (=> b!1714726 m!2118831))

(declare-fun m!2118833 () Bool)

(assert (=> b!1714726 m!2118833))

(declare-fun m!2118835 () Bool)

(assert (=> b!1714736 m!2118835))

(declare-fun m!2118837 () Bool)

(assert (=> b!1714728 m!2118837))

(declare-fun m!2118839 () Bool)

(assert (=> start!167802 m!2118839))

(declare-fun m!2118841 () Bool)

(assert (=> b!1714731 m!2118841))

(declare-fun m!2118843 () Bool)

(assert (=> b!1714733 m!2118843))

(declare-fun m!2118845 () Bool)

(assert (=> b!1714733 m!2118845))

(declare-fun m!2118847 () Bool)

(assert (=> b!1714719 m!2118847))

(declare-fun m!2118849 () Bool)

(assert (=> b!1714732 m!2118849))

(declare-fun m!2118851 () Bool)

(assert (=> b!1714732 m!2118851))

(assert (=> b!1714732 m!2118851))

(declare-fun m!2118853 () Bool)

(assert (=> b!1714732 m!2118853))

(declare-fun m!2118855 () Bool)

(assert (=> b!1714737 m!2118855))

(declare-fun m!2118857 () Bool)

(assert (=> b!1714730 m!2118857))

(assert (=> b!1714730 m!2118857))

(declare-fun m!2118859 () Bool)

(assert (=> b!1714730 m!2118859))

(assert (=> b!1714730 m!2118859))

(declare-fun m!2118861 () Bool)

(assert (=> b!1714730 m!2118861))

(declare-fun m!2118863 () Bool)

(assert (=> b!1714730 m!2118863))

(declare-fun m!2118865 () Bool)

(assert (=> b!1714722 m!2118865))

(declare-fun m!2118867 () Bool)

(assert (=> b!1714729 m!2118867))

(declare-fun m!2118869 () Bool)

(assert (=> b!1714729 m!2118869))

(declare-fun m!2118871 () Bool)

(assert (=> b!1714727 m!2118871))

(assert (=> b!1714727 m!2118871))

(declare-fun m!2118873 () Bool)

(assert (=> b!1714727 m!2118873))

(assert (=> b!1714727 m!2118873))

(declare-fun m!2118875 () Bool)

(assert (=> b!1714727 m!2118875))

(declare-fun m!2118877 () Bool)

(assert (=> b!1714727 m!2118877))

(declare-fun m!2118879 () Bool)

(assert (=> b!1714721 m!2118879))

(declare-fun m!2118881 () Bool)

(assert (=> b!1714721 m!2118881))

(declare-fun m!2118883 () Bool)

(assert (=> b!1714721 m!2118883))

(declare-fun m!2118885 () Bool)

(assert (=> b!1714725 m!2118885))

(declare-fun m!2118887 () Bool)

(assert (=> b!1714725 m!2118887))

(declare-fun m!2118889 () Bool)

(assert (=> b!1714715 m!2118889))

(declare-fun m!2118891 () Bool)

(assert (=> b!1714715 m!2118891))

(declare-fun m!2118893 () Bool)

(assert (=> b!1714715 m!2118893))

(assert (=> b!1714715 m!2118893))

(declare-fun m!2118895 () Bool)

(assert (=> b!1714715 m!2118895))

(declare-fun m!2118897 () Bool)

(assert (=> b!1714715 m!2118897))

(declare-fun m!2118899 () Bool)

(assert (=> b!1714715 m!2118899))

(declare-fun m!2118901 () Bool)

(assert (=> b!1714715 m!2118901))

(declare-fun m!2118903 () Bool)

(assert (=> b!1714715 m!2118903))

(declare-fun m!2118905 () Bool)

(assert (=> b!1714715 m!2118905))

(declare-fun m!2118907 () Bool)

(assert (=> b!1714715 m!2118907))

(declare-fun m!2118909 () Bool)

(assert (=> b!1714715 m!2118909))

(declare-fun m!2118911 () Bool)

(assert (=> b!1714715 m!2118911))

(declare-fun m!2118913 () Bool)

(assert (=> b!1714715 m!2118913))

(assert (=> b!1714715 m!2118857))

(declare-fun m!2118915 () Bool)

(assert (=> b!1714715 m!2118915))

(declare-fun m!2118917 () Bool)

(assert (=> b!1714713 m!2118917))

(declare-fun m!2118919 () Bool)

(assert (=> b!1714713 m!2118919))

(declare-fun m!2118921 () Bool)

(assert (=> b!1714713 m!2118921))

(assert (=> b!1714713 m!2118917))

(assert (=> b!1714713 m!2118921))

(declare-fun m!2118923 () Bool)

(assert (=> b!1714713 m!2118923))

(declare-fun m!2118925 () Bool)

(assert (=> b!1714714 m!2118925))

(declare-fun m!2118927 () Bool)

(assert (=> b!1714739 m!2118927))

(check-sat (not b!1714715) tp_is_empty!7517 (not b_next!47245) (not b!1714727) b_and!124323 (not b!1714729) (not b_next!47239) (not b!1714725) (not b!1714720) (not b_lambda!54139) (not b_lambda!54143) (not tb!101239) (not b!1714730) (not b!1714728) (not b!1714717) (not tb!101245) b_and!124327 b_and!124331 (not b!1714732) (not b_lambda!54141) (not b!1714719) (not b!1714758) (not b_next!47237) b_and!124325 (not b_next!47243) (not b!1714755) (not b!1714718) (not b_next!47235) (not b!1714733) (not b!1714739) (not b!1714726) (not b!1714737) b_and!124329 (not tb!101233) (not b!1714713) (not b_next!47241) (not b!1714721) (not b!1714738) (not b!1714722) (not b!1714714) (not b!1714731) b_and!124321 (not start!167802))
(check-sat b_and!124327 b_and!124331 (not b_next!47245) (not b_next!47243) b_and!124323 (not b_next!47239) (not b_next!47235) b_and!124329 (not b_next!47241) b_and!124321 (not b_next!47237) b_and!124325)
