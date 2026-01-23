; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!169038 () Bool)

(assert start!169038)

(declare-fun b!1723760 () Bool)

(declare-fun b_free!47043 () Bool)

(declare-fun b_next!47747 () Bool)

(assert (=> b!1723760 (= b_free!47043 (not b_next!47747))))

(declare-fun tp!492063 () Bool)

(declare-fun b_and!126231 () Bool)

(assert (=> b!1723760 (= tp!492063 b_and!126231)))

(declare-fun b_free!47045 () Bool)

(declare-fun b_next!47749 () Bool)

(assert (=> b!1723760 (= b_free!47045 (not b_next!47749))))

(declare-fun tp!492065 () Bool)

(declare-fun b_and!126233 () Bool)

(assert (=> b!1723760 (= tp!492065 b_and!126233)))

(declare-fun b!1723768 () Bool)

(declare-fun b_free!47047 () Bool)

(declare-fun b_next!47751 () Bool)

(assert (=> b!1723768 (= b_free!47047 (not b_next!47751))))

(declare-fun tp!492069 () Bool)

(declare-fun b_and!126235 () Bool)

(assert (=> b!1723768 (= tp!492069 b_and!126235)))

(declare-fun b_free!47049 () Bool)

(declare-fun b_next!47753 () Bool)

(assert (=> b!1723768 (= b_free!47049 (not b_next!47753))))

(declare-fun tp!492062 () Bool)

(declare-fun b_and!126237 () Bool)

(assert (=> b!1723768 (= tp!492062 b_and!126237)))

(declare-fun b!1723782 () Bool)

(declare-fun b_free!47051 () Bool)

(declare-fun b_next!47755 () Bool)

(assert (=> b!1723782 (= b_free!47051 (not b_next!47755))))

(declare-fun tp!492061 () Bool)

(declare-fun b_and!126239 () Bool)

(assert (=> b!1723782 (= tp!492061 b_and!126239)))

(declare-fun b_free!47053 () Bool)

(declare-fun b_next!47757 () Bool)

(assert (=> b!1723782 (= b_free!47053 (not b_next!47757))))

(declare-fun tp!492071 () Bool)

(declare-fun b_and!126241 () Bool)

(assert (=> b!1723782 (= tp!492071 b_and!126241)))

(declare-fun b!1723796 () Bool)

(declare-fun e!1102703 () Bool)

(assert (=> b!1723796 (= e!1102703 true)))

(declare-fun b!1723795 () Bool)

(declare-fun e!1102702 () Bool)

(assert (=> b!1723795 (= e!1102702 e!1102703)))

(declare-fun b!1723794 () Bool)

(declare-fun e!1102701 () Bool)

(assert (=> b!1723794 (= e!1102701 e!1102702)))

(declare-fun b!1723780 () Bool)

(assert (=> b!1723780 e!1102701))

(assert (= b!1723795 b!1723796))

(assert (= b!1723794 b!1723795))

(assert (= b!1723780 b!1723794))

(declare-datatypes ((List!18948 0))(
  ( (Nil!18878) (Cons!18878 (h!24279 (_ BitVec 16)) (t!159851 List!18948)) )
))
(declare-datatypes ((TokenValue!3437 0))(
  ( (FloatLiteralValue!6874 (text!24504 List!18948)) (TokenValueExt!3436 (__x!12176 Int)) (Broken!17185 (value!105036 List!18948)) (Object!3506) (End!3437) (Def!3437) (Underscore!3437) (Match!3437) (Else!3437) (Error!3437) (Case!3437) (If!3437) (Extends!3437) (Abstract!3437) (Class!3437) (Val!3437) (DelimiterValue!6874 (del!3497 List!18948)) (KeywordValue!3443 (value!105037 List!18948)) (CommentValue!6874 (value!105038 List!18948)) (WhitespaceValue!6874 (value!105039 List!18948)) (IndentationValue!3437 (value!105040 List!18948)) (String!21516) (Int32!3437) (Broken!17186 (value!105041 List!18948)) (Boolean!3438) (Unit!32722) (OperatorValue!3440 (op!3497 List!18948)) (IdentifierValue!6874 (value!105042 List!18948)) (IdentifierValue!6875 (value!105043 List!18948)) (WhitespaceValue!6875 (value!105044 List!18948)) (True!6874) (False!6874) (Broken!17187 (value!105045 List!18948)) (Broken!17188 (value!105046 List!18948)) (True!6875) (RightBrace!3437) (RightBracket!3437) (Colon!3437) (Null!3437) (Comma!3437) (LeftBracket!3437) (False!6875) (LeftBrace!3437) (ImaginaryLiteralValue!3437 (text!24505 List!18948)) (StringLiteralValue!10311 (value!105047 List!18948)) (EOFValue!3437 (value!105048 List!18948)) (IdentValue!3437 (value!105049 List!18948)) (DelimiterValue!6875 (value!105050 List!18948)) (DedentValue!3437 (value!105051 List!18948)) (NewLineValue!3437 (value!105052 List!18948)) (IntegerValue!10311 (value!105053 (_ BitVec 32)) (text!24506 List!18948)) (IntegerValue!10312 (value!105054 Int) (text!24507 List!18948)) (Times!3437) (Or!3437) (Equal!3437) (Minus!3437) (Broken!17189 (value!105055 List!18948)) (And!3437) (Div!3437) (LessEqual!3437) (Mod!3437) (Concat!8112) (Not!3437) (Plus!3437) (SpaceValue!3437 (value!105056 List!18948)) (IntegerValue!10313 (value!105057 Int) (text!24508 List!18948)) (StringLiteralValue!10312 (text!24509 List!18948)) (FloatLiteralValue!6875 (text!24510 List!18948)) (BytesLiteralValue!3437 (value!105058 List!18948)) (CommentValue!6875 (value!105059 List!18948)) (StringLiteralValue!10313 (value!105060 List!18948)) (ErrorTokenValue!3437 (msg!3498 List!18948)) )
))
(declare-datatypes ((C!9524 0))(
  ( (C!9525 (val!5358 Int)) )
))
(declare-datatypes ((List!18949 0))(
  ( (Nil!18879) (Cons!18879 (h!24280 C!9524) (t!159852 List!18949)) )
))
(declare-datatypes ((Regex!4675 0))(
  ( (ElementMatch!4675 (c!281906 C!9524)) (Concat!8113 (regOne!9862 Regex!4675) (regTwo!9862 Regex!4675)) (EmptyExpr!4675) (Star!4675 (reg!5004 Regex!4675)) (EmptyLang!4675) (Union!4675 (regOne!9863 Regex!4675) (regTwo!9863 Regex!4675)) )
))
(declare-datatypes ((String!21517 0))(
  ( (String!21518 (value!105061 String)) )
))
(declare-datatypes ((IArray!12563 0))(
  ( (IArray!12564 (innerList!6339 List!18949)) )
))
(declare-datatypes ((Conc!6279 0))(
  ( (Node!6279 (left!15070 Conc!6279) (right!15400 Conc!6279) (csize!12788 Int) (cheight!6490 Int)) (Leaf!9173 (xs!9155 IArray!12563) (csize!12789 Int)) (Empty!6279) )
))
(declare-datatypes ((BalanceConc!12502 0))(
  ( (BalanceConc!12503 (c!281907 Conc!6279)) )
))
(declare-datatypes ((TokenValueInjection!6534 0))(
  ( (TokenValueInjection!6535 (toValue!4854 Int) (toChars!4713 Int)) )
))
(declare-datatypes ((Rule!6494 0))(
  ( (Rule!6495 (regex!3347 Regex!4675) (tag!3661 String!21517) (isSeparator!3347 Bool) (transformation!3347 TokenValueInjection!6534)) )
))
(declare-datatypes ((Token!6260 0))(
  ( (Token!6261 (value!105062 TokenValue!3437) (rule!5301 Rule!6494) (size!15002 Int) (originalCharacters!4161 List!18949)) )
))
(declare-datatypes ((tuple2!18566 0))(
  ( (tuple2!18567 (_1!10685 Token!6260) (_2!10685 List!18949)) )
))
(declare-fun lt!659883 () tuple2!18566)

(declare-fun lambda!69188 () Int)

(declare-fun order!11543 () Int)

(declare-fun order!11545 () Int)

(declare-fun dynLambda!8726 (Int Int) Int)

(declare-fun dynLambda!8727 (Int Int) Int)

(assert (=> b!1723796 (< (dynLambda!8726 order!11543 (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883))))) (dynLambda!8727 order!11545 lambda!69188))))

(declare-fun order!11547 () Int)

(declare-fun dynLambda!8728 (Int Int) Int)

(assert (=> b!1723796 (< (dynLambda!8728 order!11547 (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883))))) (dynLambda!8727 order!11545 lambda!69188))))

(declare-fun tp!492068 () Bool)

(declare-fun token!523 () Token!6260)

(declare-fun e!1102693 () Bool)

(declare-fun b!1723756 () Bool)

(declare-fun e!1102674 () Bool)

(declare-fun inv!21 (TokenValue!3437) Bool)

(assert (=> b!1723756 (= e!1102674 (and (inv!21 (value!105062 token!523)) e!1102693 tp!492068))))

(declare-fun b!1723757 () Bool)

(declare-fun e!1102685 () Bool)

(declare-fun e!1102682 () Bool)

(assert (=> b!1723757 (= e!1102685 (not e!1102682))))

(declare-fun res!773587 () Bool)

(assert (=> b!1723757 (=> res!773587 e!1102682)))

(declare-fun rule!422 () Rule!6494)

(declare-fun lt!659893 () List!18949)

(declare-fun matchR!2149 (Regex!4675 List!18949) Bool)

(assert (=> b!1723757 (= res!773587 (not (matchR!2149 (regex!3347 rule!422) lt!659893)))))

(declare-datatypes ((LexerInterface!2976 0))(
  ( (LexerInterfaceExt!2973 (__x!12177 Int)) (Lexer!2974) )
))
(declare-fun thiss!24550 () LexerInterface!2976)

(declare-fun ruleValid!846 (LexerInterface!2976 Rule!6494) Bool)

(assert (=> b!1723757 (ruleValid!846 thiss!24550 rule!422)))

(declare-datatypes ((Unit!32723 0))(
  ( (Unit!32724) )
))
(declare-fun lt!659868 () Unit!32723)

(declare-datatypes ((List!18950 0))(
  ( (Nil!18880) (Cons!18880 (h!24281 Rule!6494) (t!159853 List!18950)) )
))
(declare-fun rules!3447 () List!18950)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!370 (LexerInterface!2976 Rule!6494 List!18950) Unit!32723)

(assert (=> b!1723757 (= lt!659868 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!370 thiss!24550 rule!422 rules!3447))))

(declare-fun e!1102688 () Bool)

(declare-fun tp!492072 () Bool)

(declare-fun e!1102679 () Bool)

(declare-fun b!1723758 () Bool)

(declare-fun inv!24390 (String!21517) Bool)

(declare-fun inv!24395 (TokenValueInjection!6534) Bool)

(assert (=> b!1723758 (= e!1102688 (and tp!492072 (inv!24390 (tag!3661 rule!422)) (inv!24395 (transformation!3347 rule!422)) e!1102679))))

(declare-fun b!1723759 () Bool)

(declare-fun e!1102683 () Bool)

(assert (=> b!1723759 (= e!1102682 e!1102683)))

(declare-fun res!773583 () Bool)

(assert (=> b!1723759 (=> res!773583 e!1102683)))

(declare-fun suffix!1421 () List!18949)

(declare-fun lt!659896 () Regex!4675)

(declare-fun prefixMatch!560 (Regex!4675 List!18949) Bool)

(declare-fun ++!5172 (List!18949 List!18949) List!18949)

(declare-fun head!3904 (List!18949) C!9524)

(assert (=> b!1723759 (= res!773583 (prefixMatch!560 lt!659896 (++!5172 lt!659893 (Cons!18879 (head!3904 suffix!1421) Nil!18879))))))

(declare-fun rulesRegex!705 (LexerInterface!2976 List!18950) Regex!4675)

(assert (=> b!1723759 (= lt!659896 (rulesRegex!705 thiss!24550 rules!3447))))

(declare-fun e!1102689 () Bool)

(assert (=> b!1723760 (= e!1102689 (and tp!492063 tp!492065))))

(declare-fun b!1723761 () Bool)

(declare-fun e!1102694 () Bool)

(declare-fun e!1102678 () Bool)

(assert (=> b!1723761 (= e!1102694 e!1102678)))

(declare-fun res!773585 () Bool)

(assert (=> b!1723761 (=> res!773585 e!1102678)))

(declare-datatypes ((Option!3718 0))(
  ( (None!3717) (Some!3717 (v!25124 tuple2!18566)) )
))
(declare-fun lt!659891 () Option!3718)

(declare-fun lt!659895 () List!18949)

(assert (=> b!1723761 (= res!773585 (or (not (= lt!659895 (_2!10685 lt!659883))) (not (= lt!659891 (Some!3717 (tuple2!18567 (_1!10685 lt!659883) lt!659895))))))))

(assert (=> b!1723761 (= (_2!10685 lt!659883) lt!659895)))

(declare-fun lt!659898 () Unit!32723)

(declare-fun lt!659877 () List!18949)

(declare-fun lt!659897 () List!18949)

(declare-fun lemmaSamePrefixThenSameSuffix!732 (List!18949 List!18949 List!18949 List!18949 List!18949) Unit!32723)

(assert (=> b!1723761 (= lt!659898 (lemmaSamePrefixThenSameSuffix!732 lt!659897 (_2!10685 lt!659883) lt!659897 lt!659895 lt!659877))))

(declare-fun getSuffix!782 (List!18949 List!18949) List!18949)

(assert (=> b!1723761 (= lt!659895 (getSuffix!782 lt!659877 lt!659897))))

(declare-fun lt!659888 () Int)

(declare-fun lt!659887 () TokenValue!3437)

(assert (=> b!1723761 (= lt!659891 (Some!3717 (tuple2!18567 (Token!6261 lt!659887 (rule!5301 (_1!10685 lt!659883)) lt!659888 lt!659897) (_2!10685 lt!659883))))))

(declare-fun maxPrefixOneRule!906 (LexerInterface!2976 Rule!6494 List!18949) Option!3718)

(assert (=> b!1723761 (= lt!659891 (maxPrefixOneRule!906 thiss!24550 (rule!5301 (_1!10685 lt!659883)) lt!659877))))

(declare-fun size!15003 (List!18949) Int)

(assert (=> b!1723761 (= lt!659888 (size!15003 lt!659897))))

(declare-fun apply!5152 (TokenValueInjection!6534 BalanceConc!12502) TokenValue!3437)

(declare-fun seqFromList!2321 (List!18949) BalanceConc!12502)

(assert (=> b!1723761 (= lt!659887 (apply!5152 (transformation!3347 (rule!5301 (_1!10685 lt!659883))) (seqFromList!2321 lt!659897)))))

(declare-fun lt!659874 () Unit!32723)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!305 (LexerInterface!2976 List!18950 List!18949 List!18949 List!18949 Rule!6494) Unit!32723)

(assert (=> b!1723761 (= lt!659874 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!305 thiss!24550 rules!3447 lt!659897 lt!659877 (_2!10685 lt!659883) (rule!5301 (_1!10685 lt!659883))))))

(declare-fun res!773588 () Bool)

(declare-fun e!1102670 () Bool)

(assert (=> start!169038 (=> (not res!773588) (not e!1102670))))

(get-info :version)

(assert (=> start!169038 (= res!773588 ((_ is Lexer!2974) thiss!24550))))

(assert (=> start!169038 e!1102670))

(declare-fun e!1102676 () Bool)

(assert (=> start!169038 e!1102676))

(assert (=> start!169038 e!1102688))

(assert (=> start!169038 true))

(declare-fun inv!24396 (Token!6260) Bool)

(assert (=> start!169038 (and (inv!24396 token!523) e!1102674)))

(declare-fun e!1102684 () Bool)

(assert (=> start!169038 e!1102684))

(declare-fun b!1723762 () Bool)

(declare-fun tp!492066 () Bool)

(assert (=> b!1723762 (= e!1102693 (and tp!492066 (inv!24390 (tag!3661 (rule!5301 token!523))) (inv!24395 (transformation!3347 (rule!5301 token!523))) e!1102689))))

(declare-fun b!1723763 () Bool)

(declare-fun e!1102691 () Bool)

(assert (=> b!1723763 (= e!1102691 e!1102685)))

(declare-fun res!773580 () Bool)

(assert (=> b!1723763 (=> (not res!773580) (not e!1102685))))

(declare-fun lt!659870 () tuple2!18566)

(assert (=> b!1723763 (= res!773580 (= (_1!10685 lt!659870) token!523))))

(declare-fun lt!659872 () Option!3718)

(declare-fun get!5609 (Option!3718) tuple2!18566)

(assert (=> b!1723763 (= lt!659870 (get!5609 lt!659872))))

(declare-fun b!1723764 () Bool)

(declare-fun res!773584 () Bool)

(assert (=> b!1723764 (=> (not res!773584) (not e!1102670))))

(declare-fun isEmpty!11873 (List!18950) Bool)

(assert (=> b!1723764 (= res!773584 (not (isEmpty!11873 rules!3447)))))

(declare-fun b!1723765 () Bool)

(declare-fun e!1102690 () Bool)

(declare-fun lt!659881 () Rule!6494)

(assert (=> b!1723765 (= e!1102690 (= (rule!5301 (_1!10685 lt!659883)) lt!659881))))

(declare-fun b!1723766 () Bool)

(declare-fun res!773582 () Bool)

(declare-fun e!1102687 () Bool)

(assert (=> b!1723766 (=> res!773582 e!1102687)))

(declare-fun lt!659876 () BalanceConc!12502)

(declare-fun dynLambda!8729 (Int TokenValue!3437) BalanceConc!12502)

(assert (=> b!1723766 (= res!773582 (not (= lt!659876 (dynLambda!8729 (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) (value!105062 (_1!10685 lt!659883))))))))

(declare-fun b!1723767 () Bool)

(declare-fun res!773572 () Bool)

(declare-fun e!1102672 () Bool)

(assert (=> b!1723767 (=> res!773572 e!1102672)))

(assert (=> b!1723767 (= res!773572 (not (matchR!2149 (regex!3347 (rule!5301 (_1!10685 lt!659883))) lt!659897)))))

(assert (=> b!1723768 (= e!1102679 (and tp!492069 tp!492062))))

(declare-fun b!1723769 () Bool)

(declare-fun e!1102692 () Bool)

(declare-fun tp!492064 () Bool)

(assert (=> b!1723769 (= e!1102684 (and e!1102692 tp!492064))))

(declare-fun b!1723770 () Bool)

(declare-fun e!1102675 () Bool)

(assert (=> b!1723770 (= e!1102678 e!1102675)))

(declare-fun res!773579 () Bool)

(assert (=> b!1723770 (=> res!773579 e!1102675)))

(declare-fun lt!659892 () Int)

(declare-fun lt!659879 () BalanceConc!12502)

(declare-fun size!15004 (BalanceConc!12502) Int)

(assert (=> b!1723770 (= res!773579 (<= lt!659892 (size!15004 lt!659879)))))

(assert (=> b!1723770 (matchR!2149 lt!659896 lt!659893)))

(declare-fun lt!659889 () Unit!32723)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!96 (LexerInterface!2976 List!18950 List!18949 Token!6260 Rule!6494 List!18949) Unit!32723)

(assert (=> b!1723770 (= lt!659889 (lemmaMaxPrefixThenMatchesRulesRegex!96 thiss!24550 rules!3447 lt!659893 token!523 rule!422 Nil!18879))))

(declare-fun b!1723771 () Bool)

(declare-fun res!773591 () Bool)

(assert (=> b!1723771 (=> (not res!773591) (not e!1102685))))

(assert (=> b!1723771 (= res!773591 (= (rule!5301 token!523) rule!422))))

(declare-fun b!1723772 () Bool)

(declare-fun e!1102686 () Bool)

(assert (=> b!1723772 (= e!1102686 e!1102690)))

(declare-fun res!773589 () Bool)

(assert (=> b!1723772 (=> (not res!773589) (not e!1102690))))

(declare-fun list!7628 (BalanceConc!12502) List!18949)

(declare-fun charsOf!1996 (Token!6260) BalanceConc!12502)

(assert (=> b!1723772 (= res!773589 (matchR!2149 (regex!3347 lt!659881) (list!7628 (charsOf!1996 (_1!10685 lt!659883)))))))

(declare-datatypes ((Option!3719 0))(
  ( (None!3718) (Some!3718 (v!25125 Rule!6494)) )
))
(declare-fun lt!659871 () Option!3719)

(declare-fun get!5610 (Option!3719) Rule!6494)

(assert (=> b!1723772 (= lt!659881 (get!5610 lt!659871))))

(declare-fun b!1723773 () Bool)

(declare-fun res!773573 () Bool)

(assert (=> b!1723773 (=> (not res!773573) (not e!1102670))))

(declare-fun contains!3369 (List!18950 Rule!6494) Bool)

(assert (=> b!1723773 (= res!773573 (contains!3369 rules!3447 rule!422))))

(declare-fun b!1723774 () Bool)

(declare-fun res!773576 () Bool)

(assert (=> b!1723774 (=> (not res!773576) (not e!1102685))))

(declare-fun isEmpty!11874 (List!18949) Bool)

(assert (=> b!1723774 (= res!773576 (isEmpty!11874 (_2!10685 lt!659870)))))

(declare-fun b!1723775 () Bool)

(declare-fun rulesValidInductive!1110 (LexerInterface!2976 List!18950) Bool)

(assert (=> b!1723775 (= e!1102675 (rulesValidInductive!1110 thiss!24550 rules!3447))))

(assert (=> b!1723775 (matchR!2149 lt!659896 lt!659897)))

(declare-fun lt!659875 () Unit!32723)

(assert (=> b!1723775 (= lt!659875 (lemmaMaxPrefixThenMatchesRulesRegex!96 thiss!24550 rules!3447 lt!659877 (_1!10685 lt!659883) (rule!5301 (_1!10685 lt!659883)) (_2!10685 lt!659883)))))

(declare-fun b!1723776 () Bool)

(declare-fun tp_is_empty!7593 () Bool)

(declare-fun tp!492070 () Bool)

(assert (=> b!1723776 (= e!1102676 (and tp_is_empty!7593 tp!492070))))

(declare-fun b!1723777 () Bool)

(declare-fun res!773590 () Bool)

(assert (=> b!1723777 (=> (not res!773590) (not e!1102670))))

(declare-fun rulesInvariant!2645 (LexerInterface!2976 List!18950) Bool)

(assert (=> b!1723777 (= res!773590 (rulesInvariant!2645 thiss!24550 rules!3447))))

(declare-fun b!1723778 () Bool)

(assert (=> b!1723778 (= e!1102670 e!1102691)))

(declare-fun res!773581 () Bool)

(assert (=> b!1723778 (=> (not res!773581) (not e!1102691))))

(declare-fun isDefined!3061 (Option!3718) Bool)

(assert (=> b!1723778 (= res!773581 (isDefined!3061 lt!659872))))

(declare-fun maxPrefix!1530 (LexerInterface!2976 List!18950 List!18949) Option!3718)

(assert (=> b!1723778 (= lt!659872 (maxPrefix!1530 thiss!24550 rules!3447 lt!659893))))

(assert (=> b!1723778 (= lt!659893 (list!7628 lt!659879))))

(assert (=> b!1723778 (= lt!659879 (charsOf!1996 token!523))))

(declare-fun b!1723779 () Bool)

(declare-fun tp!492067 () Bool)

(declare-fun e!1102677 () Bool)

(assert (=> b!1723779 (= e!1102692 (and tp!492067 (inv!24390 (tag!3661 (h!24281 rules!3447))) (inv!24395 (transformation!3347 (h!24281 rules!3447))) e!1102677))))

(declare-fun e!1102680 () Bool)

(assert (=> b!1723780 (= e!1102672 e!1102680)))

(declare-fun res!773577 () Bool)

(assert (=> b!1723780 (=> res!773577 e!1102680)))

(declare-fun Forall!722 (Int) Bool)

(assert (=> b!1723780 (= res!773577 (not (Forall!722 lambda!69188)))))

(declare-fun lt!659882 () Unit!32723)

(declare-fun lemmaInv!554 (TokenValueInjection!6534) Unit!32723)

(assert (=> b!1723780 (= lt!659882 (lemmaInv!554 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))))))

(declare-fun b!1723781 () Bool)

(declare-fun res!773578 () Bool)

(assert (=> b!1723781 (=> res!773578 e!1102682)))

(assert (=> b!1723781 (= res!773578 (isEmpty!11874 suffix!1421))))

(assert (=> b!1723782 (= e!1102677 (and tp!492061 tp!492071))))

(declare-fun b!1723783 () Bool)

(assert (=> b!1723783 (= e!1102680 e!1102687)))

(declare-fun res!773592 () Bool)

(assert (=> b!1723783 (=> res!773592 e!1102687)))

(declare-fun dynLambda!8730 (Int BalanceConc!12502) TokenValue!3437)

(assert (=> b!1723783 (= res!773592 (not (= (list!7628 (dynLambda!8729 (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) (dynLambda!8730 (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) lt!659876))) lt!659897)))))

(declare-fun lt!659894 () Unit!32723)

(declare-fun lemmaSemiInverse!493 (TokenValueInjection!6534 BalanceConc!12502) Unit!32723)

(assert (=> b!1723783 (= lt!659894 (lemmaSemiInverse!493 (transformation!3347 (rule!5301 (_1!10685 lt!659883))) lt!659876))))

(declare-fun b!1723784 () Bool)

(assert (=> b!1723784 (= e!1102687 e!1102694)))

(declare-fun res!773586 () Bool)

(assert (=> b!1723784 (=> res!773586 e!1102694)))

(declare-fun lt!659878 () Option!3718)

(declare-fun lt!659873 () TokenValue!3437)

(assert (=> b!1723784 (= res!773586 (not (= lt!659878 (Some!3717 (tuple2!18567 (Token!6261 lt!659873 (rule!5301 (_1!10685 lt!659883)) lt!659892 lt!659897) (_2!10685 lt!659883))))))))

(assert (=> b!1723784 (= lt!659892 (size!15004 lt!659876))))

(assert (=> b!1723784 (= lt!659873 (apply!5152 (transformation!3347 (rule!5301 (_1!10685 lt!659883))) lt!659876))))

(declare-fun lt!659886 () Unit!32723)

(declare-fun lemmaCharactersSize!419 (Token!6260) Unit!32723)

(assert (=> b!1723784 (= lt!659886 (lemmaCharactersSize!419 (_1!10685 lt!659883)))))

(declare-fun lt!659890 () Unit!32723)

(declare-fun lemmaEqSameImage!272 (TokenValueInjection!6534 BalanceConc!12502 BalanceConc!12502) Unit!32723)

(assert (=> b!1723784 (= lt!659890 (lemmaEqSameImage!272 (transformation!3347 (rule!5301 (_1!10685 lt!659883))) lt!659876 (seqFromList!2321 (originalCharacters!4161 (_1!10685 lt!659883)))))))

(declare-fun b!1723785 () Bool)

(assert (=> b!1723785 (= e!1102683 e!1102672)))

(declare-fun res!773574 () Bool)

(assert (=> b!1723785 (=> res!773574 e!1102672)))

(declare-fun isPrefix!1588 (List!18949 List!18949) Bool)

(assert (=> b!1723785 (= res!773574 (not (isPrefix!1588 lt!659897 lt!659877)))))

(assert (=> b!1723785 (isPrefix!1588 lt!659897 (++!5172 lt!659897 (_2!10685 lt!659883)))))

(declare-fun lt!659884 () Unit!32723)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1098 (List!18949 List!18949) Unit!32723)

(assert (=> b!1723785 (= lt!659884 (lemmaConcatTwoListThenFirstIsPrefix!1098 lt!659897 (_2!10685 lt!659883)))))

(assert (=> b!1723785 (= lt!659897 (list!7628 lt!659876))))

(assert (=> b!1723785 (= lt!659876 (charsOf!1996 (_1!10685 lt!659883)))))

(assert (=> b!1723785 e!1102686))

(declare-fun res!773575 () Bool)

(assert (=> b!1723785 (=> (not res!773575) (not e!1102686))))

(declare-fun isDefined!3062 (Option!3719) Bool)

(assert (=> b!1723785 (= res!773575 (isDefined!3062 lt!659871))))

(declare-fun getRuleFromTag!397 (LexerInterface!2976 List!18950 String!21517) Option!3719)

(assert (=> b!1723785 (= lt!659871 (getRuleFromTag!397 thiss!24550 rules!3447 (tag!3661 (rule!5301 (_1!10685 lt!659883)))))))

(declare-fun lt!659885 () Unit!32723)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!397 (LexerInterface!2976 List!18950 List!18949 Token!6260) Unit!32723)

(assert (=> b!1723785 (= lt!659885 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!397 thiss!24550 rules!3447 lt!659877 (_1!10685 lt!659883)))))

(assert (=> b!1723785 (= lt!659883 (get!5609 lt!659878))))

(declare-fun lt!659880 () Unit!32723)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!500 (LexerInterface!2976 List!18950 List!18949 List!18949) Unit!32723)

(assert (=> b!1723785 (= lt!659880 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!500 thiss!24550 rules!3447 lt!659893 suffix!1421))))

(assert (=> b!1723785 (= lt!659878 (maxPrefix!1530 thiss!24550 rules!3447 lt!659877))))

(assert (=> b!1723785 (isPrefix!1588 lt!659893 lt!659877)))

(declare-fun lt!659869 () Unit!32723)

(assert (=> b!1723785 (= lt!659869 (lemmaConcatTwoListThenFirstIsPrefix!1098 lt!659893 suffix!1421))))

(assert (=> b!1723785 (= lt!659877 (++!5172 lt!659893 suffix!1421))))

(assert (= (and start!169038 res!773588) b!1723764))

(assert (= (and b!1723764 res!773584) b!1723777))

(assert (= (and b!1723777 res!773590) b!1723773))

(assert (= (and b!1723773 res!773573) b!1723778))

(assert (= (and b!1723778 res!773581) b!1723763))

(assert (= (and b!1723763 res!773580) b!1723774))

(assert (= (and b!1723774 res!773576) b!1723771))

(assert (= (and b!1723771 res!773591) b!1723757))

(assert (= (and b!1723757 (not res!773587)) b!1723781))

(assert (= (and b!1723781 (not res!773578)) b!1723759))

(assert (= (and b!1723759 (not res!773583)) b!1723785))

(assert (= (and b!1723785 res!773575) b!1723772))

(assert (= (and b!1723772 res!773589) b!1723765))

(assert (= (and b!1723785 (not res!773574)) b!1723767))

(assert (= (and b!1723767 (not res!773572)) b!1723780))

(assert (= (and b!1723780 (not res!773577)) b!1723783))

(assert (= (and b!1723783 (not res!773592)) b!1723766))

(assert (= (and b!1723766 (not res!773582)) b!1723784))

(assert (= (and b!1723784 (not res!773586)) b!1723761))

(assert (= (and b!1723761 (not res!773585)) b!1723770))

(assert (= (and b!1723770 (not res!773579)) b!1723775))

(assert (= (and start!169038 ((_ is Cons!18879) suffix!1421)) b!1723776))

(assert (= b!1723758 b!1723768))

(assert (= start!169038 b!1723758))

(assert (= b!1723762 b!1723760))

(assert (= b!1723756 b!1723762))

(assert (= start!169038 b!1723756))

(assert (= b!1723779 b!1723782))

(assert (= b!1723769 b!1723779))

(assert (= (and start!169038 ((_ is Cons!18880) rules!3447)) b!1723769))

(declare-fun b_lambda!54751 () Bool)

(assert (=> (not b_lambda!54751) (not b!1723766)))

(declare-fun t!159834 () Bool)

(declare-fun tb!102321 () Bool)

(assert (=> (and b!1723760 (= (toChars!4713 (transformation!3347 (rule!5301 token!523))) (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883))))) t!159834) tb!102321))

(declare-fun b!1723801 () Bool)

(declare-fun e!1102706 () Bool)

(declare-fun tp!492075 () Bool)

(declare-fun inv!24397 (Conc!6279) Bool)

(assert (=> b!1723801 (= e!1102706 (and (inv!24397 (c!281907 (dynLambda!8729 (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) (value!105062 (_1!10685 lt!659883))))) tp!492075))))

(declare-fun result!122996 () Bool)

(declare-fun inv!24398 (BalanceConc!12502) Bool)

(assert (=> tb!102321 (= result!122996 (and (inv!24398 (dynLambda!8729 (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) (value!105062 (_1!10685 lt!659883)))) e!1102706))))

(assert (= tb!102321 b!1723801))

(declare-fun m!2130013 () Bool)

(assert (=> b!1723801 m!2130013))

(declare-fun m!2130015 () Bool)

(assert (=> tb!102321 m!2130015))

(assert (=> b!1723766 t!159834))

(declare-fun b_and!126243 () Bool)

(assert (= b_and!126233 (and (=> t!159834 result!122996) b_and!126243)))

(declare-fun tb!102323 () Bool)

(declare-fun t!159836 () Bool)

(assert (=> (and b!1723768 (= (toChars!4713 (transformation!3347 rule!422)) (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883))))) t!159836) tb!102323))

(declare-fun result!123000 () Bool)

(assert (= result!123000 result!122996))

(assert (=> b!1723766 t!159836))

(declare-fun b_and!126245 () Bool)

(assert (= b_and!126237 (and (=> t!159836 result!123000) b_and!126245)))

(declare-fun t!159838 () Bool)

(declare-fun tb!102325 () Bool)

(assert (=> (and b!1723782 (= (toChars!4713 (transformation!3347 (h!24281 rules!3447))) (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883))))) t!159838) tb!102325))

(declare-fun result!123002 () Bool)

(assert (= result!123002 result!122996))

(assert (=> b!1723766 t!159838))

(declare-fun b_and!126247 () Bool)

(assert (= b_and!126241 (and (=> t!159838 result!123002) b_and!126247)))

(declare-fun b_lambda!54753 () Bool)

(assert (=> (not b_lambda!54753) (not b!1723783)))

(declare-fun t!159840 () Bool)

(declare-fun tb!102327 () Bool)

(assert (=> (and b!1723760 (= (toChars!4713 (transformation!3347 (rule!5301 token!523))) (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883))))) t!159840) tb!102327))

(declare-fun tp!492076 () Bool)

(declare-fun e!1102707 () Bool)

(declare-fun b!1723802 () Bool)

(assert (=> b!1723802 (= e!1102707 (and (inv!24397 (c!281907 (dynLambda!8729 (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) (dynLambda!8730 (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) lt!659876)))) tp!492076))))

(declare-fun result!123004 () Bool)

(assert (=> tb!102327 (= result!123004 (and (inv!24398 (dynLambda!8729 (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) (dynLambda!8730 (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) lt!659876))) e!1102707))))

(assert (= tb!102327 b!1723802))

(declare-fun m!2130017 () Bool)

(assert (=> b!1723802 m!2130017))

(declare-fun m!2130019 () Bool)

(assert (=> tb!102327 m!2130019))

(assert (=> b!1723783 t!159840))

(declare-fun b_and!126249 () Bool)

(assert (= b_and!126243 (and (=> t!159840 result!123004) b_and!126249)))

(declare-fun tb!102329 () Bool)

(declare-fun t!159842 () Bool)

(assert (=> (and b!1723768 (= (toChars!4713 (transformation!3347 rule!422)) (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883))))) t!159842) tb!102329))

(declare-fun result!123006 () Bool)

(assert (= result!123006 result!123004))

(assert (=> b!1723783 t!159842))

(declare-fun b_and!126251 () Bool)

(assert (= b_and!126245 (and (=> t!159842 result!123006) b_and!126251)))

(declare-fun t!159844 () Bool)

(declare-fun tb!102331 () Bool)

(assert (=> (and b!1723782 (= (toChars!4713 (transformation!3347 (h!24281 rules!3447))) (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883))))) t!159844) tb!102331))

(declare-fun result!123008 () Bool)

(assert (= result!123008 result!123004))

(assert (=> b!1723783 t!159844))

(declare-fun b_and!126253 () Bool)

(assert (= b_and!126247 (and (=> t!159844 result!123008) b_and!126253)))

(declare-fun b_lambda!54755 () Bool)

(assert (=> (not b_lambda!54755) (not b!1723783)))

(declare-fun t!159846 () Bool)

(declare-fun tb!102333 () Bool)

(assert (=> (and b!1723760 (= (toValue!4854 (transformation!3347 (rule!5301 token!523))) (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883))))) t!159846) tb!102333))

(declare-fun result!123010 () Bool)

(assert (=> tb!102333 (= result!123010 (inv!21 (dynLambda!8730 (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) lt!659876)))))

(declare-fun m!2130021 () Bool)

(assert (=> tb!102333 m!2130021))

(assert (=> b!1723783 t!159846))

(declare-fun b_and!126255 () Bool)

(assert (= b_and!126231 (and (=> t!159846 result!123010) b_and!126255)))

(declare-fun tb!102335 () Bool)

(declare-fun t!159848 () Bool)

(assert (=> (and b!1723768 (= (toValue!4854 (transformation!3347 rule!422)) (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883))))) t!159848) tb!102335))

(declare-fun result!123014 () Bool)

(assert (= result!123014 result!123010))

(assert (=> b!1723783 t!159848))

(declare-fun b_and!126257 () Bool)

(assert (= b_and!126235 (and (=> t!159848 result!123014) b_and!126257)))

(declare-fun t!159850 () Bool)

(declare-fun tb!102337 () Bool)

(assert (=> (and b!1723782 (= (toValue!4854 (transformation!3347 (h!24281 rules!3447))) (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883))))) t!159850) tb!102337))

(declare-fun result!123016 () Bool)

(assert (= result!123016 result!123010))

(assert (=> b!1723783 t!159850))

(declare-fun b_and!126259 () Bool)

(assert (= b_and!126239 (and (=> t!159850 result!123016) b_and!126259)))

(declare-fun m!2130023 () Bool)

(assert (=> b!1723767 m!2130023))

(declare-fun m!2130025 () Bool)

(assert (=> b!1723766 m!2130025))

(declare-fun m!2130027 () Bool)

(assert (=> b!1723757 m!2130027))

(declare-fun m!2130029 () Bool)

(assert (=> b!1723757 m!2130029))

(declare-fun m!2130031 () Bool)

(assert (=> b!1723757 m!2130031))

(declare-fun m!2130033 () Bool)

(assert (=> start!169038 m!2130033))

(declare-fun m!2130035 () Bool)

(assert (=> b!1723774 m!2130035))

(declare-fun m!2130037 () Bool)

(assert (=> b!1723759 m!2130037))

(declare-fun m!2130039 () Bool)

(assert (=> b!1723759 m!2130039))

(assert (=> b!1723759 m!2130039))

(declare-fun m!2130041 () Bool)

(assert (=> b!1723759 m!2130041))

(declare-fun m!2130043 () Bool)

(assert (=> b!1723759 m!2130043))

(declare-fun m!2130045 () Bool)

(assert (=> b!1723783 m!2130045))

(assert (=> b!1723783 m!2130045))

(declare-fun m!2130047 () Bool)

(assert (=> b!1723783 m!2130047))

(assert (=> b!1723783 m!2130047))

(declare-fun m!2130049 () Bool)

(assert (=> b!1723783 m!2130049))

(declare-fun m!2130051 () Bool)

(assert (=> b!1723783 m!2130051))

(declare-fun m!2130053 () Bool)

(assert (=> b!1723762 m!2130053))

(declare-fun m!2130055 () Bool)

(assert (=> b!1723762 m!2130055))

(declare-fun m!2130057 () Bool)

(assert (=> b!1723780 m!2130057))

(declare-fun m!2130059 () Bool)

(assert (=> b!1723780 m!2130059))

(declare-fun m!2130061 () Bool)

(assert (=> b!1723777 m!2130061))

(declare-fun m!2130063 () Bool)

(assert (=> b!1723781 m!2130063))

(declare-fun m!2130065 () Bool)

(assert (=> b!1723775 m!2130065))

(declare-fun m!2130067 () Bool)

(assert (=> b!1723775 m!2130067))

(declare-fun m!2130069 () Bool)

(assert (=> b!1723775 m!2130069))

(declare-fun m!2130071 () Bool)

(assert (=> b!1723778 m!2130071))

(declare-fun m!2130073 () Bool)

(assert (=> b!1723778 m!2130073))

(declare-fun m!2130075 () Bool)

(assert (=> b!1723778 m!2130075))

(declare-fun m!2130077 () Bool)

(assert (=> b!1723778 m!2130077))

(declare-fun m!2130079 () Bool)

(assert (=> b!1723758 m!2130079))

(declare-fun m!2130081 () Bool)

(assert (=> b!1723758 m!2130081))

(declare-fun m!2130083 () Bool)

(assert (=> b!1723772 m!2130083))

(assert (=> b!1723772 m!2130083))

(declare-fun m!2130085 () Bool)

(assert (=> b!1723772 m!2130085))

(assert (=> b!1723772 m!2130085))

(declare-fun m!2130087 () Bool)

(assert (=> b!1723772 m!2130087))

(declare-fun m!2130089 () Bool)

(assert (=> b!1723772 m!2130089))

(declare-fun m!2130091 () Bool)

(assert (=> b!1723785 m!2130091))

(declare-fun m!2130093 () Bool)

(assert (=> b!1723785 m!2130093))

(declare-fun m!2130095 () Bool)

(assert (=> b!1723785 m!2130095))

(declare-fun m!2130097 () Bool)

(assert (=> b!1723785 m!2130097))

(declare-fun m!2130099 () Bool)

(assert (=> b!1723785 m!2130099))

(assert (=> b!1723785 m!2130083))

(declare-fun m!2130101 () Bool)

(assert (=> b!1723785 m!2130101))

(declare-fun m!2130103 () Bool)

(assert (=> b!1723785 m!2130103))

(declare-fun m!2130105 () Bool)

(assert (=> b!1723785 m!2130105))

(declare-fun m!2130107 () Bool)

(assert (=> b!1723785 m!2130107))

(declare-fun m!2130109 () Bool)

(assert (=> b!1723785 m!2130109))

(declare-fun m!2130111 () Bool)

(assert (=> b!1723785 m!2130111))

(assert (=> b!1723785 m!2130091))

(declare-fun m!2130113 () Bool)

(assert (=> b!1723785 m!2130113))

(declare-fun m!2130115 () Bool)

(assert (=> b!1723785 m!2130115))

(declare-fun m!2130117 () Bool)

(assert (=> b!1723785 m!2130117))

(declare-fun m!2130119 () Bool)

(assert (=> b!1723761 m!2130119))

(declare-fun m!2130121 () Bool)

(assert (=> b!1723761 m!2130121))

(declare-fun m!2130123 () Bool)

(assert (=> b!1723761 m!2130123))

(declare-fun m!2130125 () Bool)

(assert (=> b!1723761 m!2130125))

(declare-fun m!2130127 () Bool)

(assert (=> b!1723761 m!2130127))

(assert (=> b!1723761 m!2130119))

(declare-fun m!2130129 () Bool)

(assert (=> b!1723761 m!2130129))

(declare-fun m!2130131 () Bool)

(assert (=> b!1723761 m!2130131))

(declare-fun m!2130133 () Bool)

(assert (=> b!1723784 m!2130133))

(declare-fun m!2130135 () Bool)

(assert (=> b!1723784 m!2130135))

(assert (=> b!1723784 m!2130133))

(declare-fun m!2130137 () Bool)

(assert (=> b!1723784 m!2130137))

(declare-fun m!2130139 () Bool)

(assert (=> b!1723784 m!2130139))

(declare-fun m!2130141 () Bool)

(assert (=> b!1723784 m!2130141))

(declare-fun m!2130143 () Bool)

(assert (=> b!1723779 m!2130143))

(declare-fun m!2130145 () Bool)

(assert (=> b!1723779 m!2130145))

(declare-fun m!2130147 () Bool)

(assert (=> b!1723764 m!2130147))

(declare-fun m!2130149 () Bool)

(assert (=> b!1723763 m!2130149))

(declare-fun m!2130151 () Bool)

(assert (=> b!1723756 m!2130151))

(declare-fun m!2130153 () Bool)

(assert (=> b!1723770 m!2130153))

(declare-fun m!2130155 () Bool)

(assert (=> b!1723770 m!2130155))

(declare-fun m!2130157 () Bool)

(assert (=> b!1723770 m!2130157))

(declare-fun m!2130159 () Bool)

(assert (=> b!1723773 m!2130159))

(check-sat (not b!1723779) (not b!1723780) (not b!1723769) b_and!126255 (not b_lambda!54751) (not b_next!47755) (not b!1723778) b_and!126259 (not b!1723783) (not b_lambda!54753) (not b!1723781) (not b!1723759) (not b!1723773) (not tb!102327) (not b!1723802) (not b_lambda!54755) (not b!1723767) (not b!1723758) (not b!1723775) (not b!1723785) (not b!1723772) (not b!1723756) b_and!126257 b_and!126249 (not b!1723761) (not b_next!47747) tp_is_empty!7593 (not b!1723801) (not b_next!47757) (not b!1723784) (not b!1723763) (not b!1723764) (not b_next!47751) (not b!1723774) (not start!169038) (not b!1723776) (not b_next!47753) (not b!1723770) (not b!1723762) b_and!126251 (not b!1723777) b_and!126253 (not b_next!47749) (not tb!102333) (not b!1723757) (not tb!102321))
(check-sat b_and!126255 (not b_next!47755) (not b_next!47747) b_and!126259 (not b_next!47757) (not b_next!47751) (not b_next!47753) b_and!126251 b_and!126257 b_and!126249 b_and!126253 (not b_next!47749))
(get-model)

(declare-fun b!1723927 () Bool)

(declare-fun e!1102783 () Bool)

(declare-fun lt!659913 () Bool)

(assert (=> b!1723927 (= e!1102783 (not lt!659913))))

(declare-fun b!1723928 () Bool)

(declare-fun e!1102784 () Bool)

(declare-fun nullable!1410 (Regex!4675) Bool)

(assert (=> b!1723928 (= e!1102784 (nullable!1410 (regex!3347 (rule!5301 (_1!10685 lt!659883)))))))

(declare-fun b!1723929 () Bool)

(declare-fun e!1102789 () Bool)

(assert (=> b!1723929 (= e!1102789 e!1102783)))

(declare-fun c!281935 () Bool)

(assert (=> b!1723929 (= c!281935 ((_ is EmptyLang!4675) (regex!3347 (rule!5301 (_1!10685 lt!659883)))))))

(declare-fun b!1723930 () Bool)

(declare-fun call!109778 () Bool)

(assert (=> b!1723930 (= e!1102789 (= lt!659913 call!109778))))

(declare-fun bm!109773 () Bool)

(assert (=> bm!109773 (= call!109778 (isEmpty!11874 lt!659897))))

(declare-fun b!1723932 () Bool)

(declare-fun res!773659 () Bool)

(declare-fun e!1102788 () Bool)

(assert (=> b!1723932 (=> res!773659 e!1102788)))

(assert (=> b!1723932 (= res!773659 (not ((_ is ElementMatch!4675) (regex!3347 (rule!5301 (_1!10685 lt!659883))))))))

(assert (=> b!1723932 (= e!1102783 e!1102788)))

(declare-fun b!1723933 () Bool)

(declare-fun e!1102787 () Bool)

(assert (=> b!1723933 (= e!1102787 (= (head!3904 lt!659897) (c!281906 (regex!3347 (rule!5301 (_1!10685 lt!659883))))))))

(declare-fun b!1723934 () Bool)

(declare-fun e!1102785 () Bool)

(assert (=> b!1723934 (= e!1102785 (not (= (head!3904 lt!659897) (c!281906 (regex!3347 (rule!5301 (_1!10685 lt!659883)))))))))

(declare-fun b!1723935 () Bool)

(declare-fun res!773665 () Bool)

(assert (=> b!1723935 (=> res!773665 e!1102785)))

(declare-fun tail!2575 (List!18949) List!18949)

(assert (=> b!1723935 (= res!773665 (not (isEmpty!11874 (tail!2575 lt!659897))))))

(declare-fun b!1723936 () Bool)

(declare-fun e!1102786 () Bool)

(assert (=> b!1723936 (= e!1102786 e!1102785)))

(declare-fun res!773663 () Bool)

(assert (=> b!1723936 (=> res!773663 e!1102785)))

(assert (=> b!1723936 (= res!773663 call!109778)))

(declare-fun b!1723937 () Bool)

(declare-fun res!773661 () Bool)

(assert (=> b!1723937 (=> res!773661 e!1102788)))

(assert (=> b!1723937 (= res!773661 e!1102787)))

(declare-fun res!773660 () Bool)

(assert (=> b!1723937 (=> (not res!773660) (not e!1102787))))

(assert (=> b!1723937 (= res!773660 lt!659913)))

(declare-fun b!1723938 () Bool)

(declare-fun derivativeStep!1178 (Regex!4675 C!9524) Regex!4675)

(assert (=> b!1723938 (= e!1102784 (matchR!2149 (derivativeStep!1178 (regex!3347 (rule!5301 (_1!10685 lt!659883))) (head!3904 lt!659897)) (tail!2575 lt!659897)))))

(declare-fun b!1723931 () Bool)

(declare-fun res!773664 () Bool)

(assert (=> b!1723931 (=> (not res!773664) (not e!1102787))))

(assert (=> b!1723931 (= res!773664 (not call!109778))))

(declare-fun d!528144 () Bool)

(assert (=> d!528144 e!1102789))

(declare-fun c!281936 () Bool)

(assert (=> d!528144 (= c!281936 ((_ is EmptyExpr!4675) (regex!3347 (rule!5301 (_1!10685 lt!659883)))))))

(assert (=> d!528144 (= lt!659913 e!1102784)))

(declare-fun c!281934 () Bool)

(assert (=> d!528144 (= c!281934 (isEmpty!11874 lt!659897))))

(declare-fun validRegex!1884 (Regex!4675) Bool)

(assert (=> d!528144 (validRegex!1884 (regex!3347 (rule!5301 (_1!10685 lt!659883))))))

(assert (=> d!528144 (= (matchR!2149 (regex!3347 (rule!5301 (_1!10685 lt!659883))) lt!659897) lt!659913)))

(declare-fun b!1723939 () Bool)

(declare-fun res!773666 () Bool)

(assert (=> b!1723939 (=> (not res!773666) (not e!1102787))))

(assert (=> b!1723939 (= res!773666 (isEmpty!11874 (tail!2575 lt!659897)))))

(declare-fun b!1723940 () Bool)

(assert (=> b!1723940 (= e!1102788 e!1102786)))

(declare-fun res!773662 () Bool)

(assert (=> b!1723940 (=> (not res!773662) (not e!1102786))))

(assert (=> b!1723940 (= res!773662 (not lt!659913))))

(assert (= (and d!528144 c!281934) b!1723928))

(assert (= (and d!528144 (not c!281934)) b!1723938))

(assert (= (and d!528144 c!281936) b!1723930))

(assert (= (and d!528144 (not c!281936)) b!1723929))

(assert (= (and b!1723929 c!281935) b!1723927))

(assert (= (and b!1723929 (not c!281935)) b!1723932))

(assert (= (and b!1723932 (not res!773659)) b!1723937))

(assert (= (and b!1723937 res!773660) b!1723931))

(assert (= (and b!1723931 res!773664) b!1723939))

(assert (= (and b!1723939 res!773666) b!1723933))

(assert (= (and b!1723937 (not res!773661)) b!1723940))

(assert (= (and b!1723940 res!773662) b!1723936))

(assert (= (and b!1723936 (not res!773663)) b!1723935))

(assert (= (and b!1723935 (not res!773665)) b!1723934))

(assert (= (or b!1723930 b!1723931 b!1723936) bm!109773))

(declare-fun m!2130229 () Bool)

(assert (=> b!1723928 m!2130229))

(declare-fun m!2130231 () Bool)

(assert (=> d!528144 m!2130231))

(declare-fun m!2130233 () Bool)

(assert (=> d!528144 m!2130233))

(declare-fun m!2130235 () Bool)

(assert (=> b!1723935 m!2130235))

(assert (=> b!1723935 m!2130235))

(declare-fun m!2130237 () Bool)

(assert (=> b!1723935 m!2130237))

(assert (=> bm!109773 m!2130231))

(assert (=> b!1723939 m!2130235))

(assert (=> b!1723939 m!2130235))

(assert (=> b!1723939 m!2130237))

(declare-fun m!2130239 () Bool)

(assert (=> b!1723933 m!2130239))

(assert (=> b!1723934 m!2130239))

(assert (=> b!1723938 m!2130239))

(assert (=> b!1723938 m!2130239))

(declare-fun m!2130245 () Bool)

(assert (=> b!1723938 m!2130245))

(assert (=> b!1723938 m!2130235))

(assert (=> b!1723938 m!2130245))

(assert (=> b!1723938 m!2130235))

(declare-fun m!2130249 () Bool)

(assert (=> b!1723938 m!2130249))

(assert (=> b!1723767 d!528144))

(declare-fun d!528170 () Bool)

(assert (=> d!528170 (= (get!5609 lt!659872) (v!25124 lt!659872))))

(assert (=> b!1723763 d!528170))

(declare-fun d!528174 () Bool)

(declare-fun lt!659919 () Int)

(assert (=> d!528174 (= lt!659919 (size!15003 (list!7628 lt!659876)))))

(declare-fun size!15006 (Conc!6279) Int)

(assert (=> d!528174 (= lt!659919 (size!15006 (c!281907 lt!659876)))))

(assert (=> d!528174 (= (size!15004 lt!659876) lt!659919)))

(declare-fun bs!402314 () Bool)

(assert (= bs!402314 d!528174))

(assert (=> bs!402314 m!2130107))

(assert (=> bs!402314 m!2130107))

(declare-fun m!2130261 () Bool)

(assert (=> bs!402314 m!2130261))

(declare-fun m!2130263 () Bool)

(assert (=> bs!402314 m!2130263))

(assert (=> b!1723784 d!528174))

(declare-fun b!1723952 () Bool)

(declare-fun e!1102797 () Bool)

(assert (=> b!1723952 (= e!1102797 true)))

(declare-fun d!528180 () Bool)

(assert (=> d!528180 e!1102797))

(assert (= d!528180 b!1723952))

(declare-fun lambda!69194 () Int)

(declare-fun order!11549 () Int)

(declare-fun dynLambda!8731 (Int Int) Int)

(assert (=> b!1723952 (< (dynLambda!8726 order!11543 (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883))))) (dynLambda!8731 order!11549 lambda!69194))))

(assert (=> b!1723952 (< (dynLambda!8728 order!11547 (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883))))) (dynLambda!8731 order!11549 lambda!69194))))

(assert (=> d!528180 (= (dynLambda!8730 (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) lt!659876) (dynLambda!8730 (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) (seqFromList!2321 (originalCharacters!4161 (_1!10685 lt!659883)))))))

(declare-fun lt!659922 () Unit!32723)

(declare-fun Forall2of!78 (Int BalanceConc!12502 BalanceConc!12502) Unit!32723)

(assert (=> d!528180 (= lt!659922 (Forall2of!78 lambda!69194 lt!659876 (seqFromList!2321 (originalCharacters!4161 (_1!10685 lt!659883)))))))

(assert (=> d!528180 (= (list!7628 lt!659876) (list!7628 (seqFromList!2321 (originalCharacters!4161 (_1!10685 lt!659883)))))))

(assert (=> d!528180 (= (lemmaEqSameImage!272 (transformation!3347 (rule!5301 (_1!10685 lt!659883))) lt!659876 (seqFromList!2321 (originalCharacters!4161 (_1!10685 lt!659883)))) lt!659922)))

(declare-fun b_lambda!54763 () Bool)

(assert (=> (not b_lambda!54763) (not d!528180)))

(assert (=> d!528180 t!159846))

(declare-fun b_and!126279 () Bool)

(assert (= b_and!126255 (and (=> t!159846 result!123010) b_and!126279)))

(assert (=> d!528180 t!159848))

(declare-fun b_and!126281 () Bool)

(assert (= b_and!126257 (and (=> t!159848 result!123014) b_and!126281)))

(assert (=> d!528180 t!159850))

(declare-fun b_and!126283 () Bool)

(assert (= b_and!126259 (and (=> t!159850 result!123016) b_and!126283)))

(declare-fun b_lambda!54765 () Bool)

(assert (=> (not b_lambda!54765) (not d!528180)))

(declare-fun tb!102345 () Bool)

(declare-fun t!159861 () Bool)

(assert (=> (and b!1723760 (= (toValue!4854 (transformation!3347 (rule!5301 token!523))) (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883))))) t!159861) tb!102345))

(declare-fun result!123024 () Bool)

(assert (=> tb!102345 (= result!123024 (inv!21 (dynLambda!8730 (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) (seqFromList!2321 (originalCharacters!4161 (_1!10685 lt!659883))))))))

(declare-fun m!2130265 () Bool)

(assert (=> tb!102345 m!2130265))

(assert (=> d!528180 t!159861))

(declare-fun b_and!126285 () Bool)

(assert (= b_and!126279 (and (=> t!159861 result!123024) b_and!126285)))

(declare-fun tb!102347 () Bool)

(declare-fun t!159863 () Bool)

(assert (=> (and b!1723768 (= (toValue!4854 (transformation!3347 rule!422)) (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883))))) t!159863) tb!102347))

(declare-fun result!123026 () Bool)

(assert (= result!123026 result!123024))

(assert (=> d!528180 t!159863))

(declare-fun b_and!126287 () Bool)

(assert (= b_and!126281 (and (=> t!159863 result!123026) b_and!126287)))

(declare-fun t!159865 () Bool)

(declare-fun tb!102349 () Bool)

(assert (=> (and b!1723782 (= (toValue!4854 (transformation!3347 (h!24281 rules!3447))) (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883))))) t!159865) tb!102349))

(declare-fun result!123028 () Bool)

(assert (= result!123028 result!123024))

(assert (=> d!528180 t!159865))

(declare-fun b_and!126289 () Bool)

(assert (= b_and!126283 (and (=> t!159865 result!123028) b_and!126289)))

(assert (=> d!528180 m!2130133))

(declare-fun m!2130267 () Bool)

(assert (=> d!528180 m!2130267))

(assert (=> d!528180 m!2130133))

(declare-fun m!2130269 () Bool)

(assert (=> d!528180 m!2130269))

(assert (=> d!528180 m!2130133))

(declare-fun m!2130271 () Bool)

(assert (=> d!528180 m!2130271))

(assert (=> d!528180 m!2130045))

(assert (=> d!528180 m!2130107))

(assert (=> b!1723784 d!528180))

(declare-fun d!528182 () Bool)

(assert (=> d!528182 (= (size!15002 (_1!10685 lt!659883)) (size!15003 (originalCharacters!4161 (_1!10685 lt!659883))))))

(declare-fun Unit!32725 () Unit!32723)

(assert (=> d!528182 (= (lemmaCharactersSize!419 (_1!10685 lt!659883)) Unit!32725)))

(declare-fun bs!402315 () Bool)

(assert (= bs!402315 d!528182))

(declare-fun m!2130273 () Bool)

(assert (=> bs!402315 m!2130273))

(assert (=> b!1723784 d!528182))

(declare-fun d!528184 () Bool)

(declare-fun fromListB!1063 (List!18949) BalanceConc!12502)

(assert (=> d!528184 (= (seqFromList!2321 (originalCharacters!4161 (_1!10685 lt!659883))) (fromListB!1063 (originalCharacters!4161 (_1!10685 lt!659883))))))

(declare-fun bs!402316 () Bool)

(assert (= bs!402316 d!528184))

(declare-fun m!2130275 () Bool)

(assert (=> bs!402316 m!2130275))

(assert (=> b!1723784 d!528184))

(declare-fun d!528186 () Bool)

(assert (=> d!528186 (= (apply!5152 (transformation!3347 (rule!5301 (_1!10685 lt!659883))) lt!659876) (dynLambda!8730 (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) lt!659876))))

(declare-fun b_lambda!54767 () Bool)

(assert (=> (not b_lambda!54767) (not d!528186)))

(assert (=> d!528186 t!159846))

(declare-fun b_and!126291 () Bool)

(assert (= b_and!126285 (and (=> t!159846 result!123010) b_and!126291)))

(assert (=> d!528186 t!159848))

(declare-fun b_and!126293 () Bool)

(assert (= b_and!126287 (and (=> t!159848 result!123014) b_and!126293)))

(assert (=> d!528186 t!159850))

(declare-fun b_and!126295 () Bool)

(assert (= b_and!126289 (and (=> t!159850 result!123016) b_and!126295)))

(assert (=> d!528186 m!2130045))

(assert (=> b!1723784 d!528186))

(declare-fun d!528188 () Bool)

(assert (=> d!528188 (= (isEmpty!11873 rules!3447) ((_ is Nil!18880) rules!3447))))

(assert (=> b!1723764 d!528188))

(declare-fun b!1724044 () Bool)

(declare-fun res!773728 () Bool)

(declare-fun e!1102842 () Bool)

(assert (=> b!1724044 (=> (not res!773728) (not e!1102842))))

(declare-fun lt!660019 () Token!6260)

(assert (=> b!1724044 (= res!773728 (matchR!2149 (regex!3347 (get!5610 (getRuleFromTag!397 thiss!24550 rules!3447 (tag!3661 (rule!5301 lt!660019))))) (list!7628 (charsOf!1996 lt!660019))))))

(declare-fun b!1724047 () Bool)

(declare-fun e!1102841 () Unit!32723)

(declare-fun Unit!32726 () Unit!32723)

(assert (=> b!1724047 (= e!1102841 Unit!32726)))

(declare-fun d!528194 () Bool)

(assert (=> d!528194 (isDefined!3061 (maxPrefix!1530 thiss!24550 rules!3447 (++!5172 lt!659893 suffix!1421)))))

(declare-fun lt!660016 () Unit!32723)

(assert (=> d!528194 (= lt!660016 e!1102841)))

(declare-fun c!281956 () Bool)

(declare-fun isEmpty!11876 (Option!3718) Bool)

(assert (=> d!528194 (= c!281956 (isEmpty!11876 (maxPrefix!1530 thiss!24550 rules!3447 (++!5172 lt!659893 suffix!1421))))))

(declare-fun lt!660005 () Unit!32723)

(declare-fun lt!660015 () Unit!32723)

(assert (=> d!528194 (= lt!660005 lt!660015)))

(assert (=> d!528194 e!1102842))

(declare-fun res!773727 () Bool)

(assert (=> d!528194 (=> (not res!773727) (not e!1102842))))

(assert (=> d!528194 (= res!773727 (isDefined!3062 (getRuleFromTag!397 thiss!24550 rules!3447 (tag!3661 (rule!5301 lt!660019)))))))

(assert (=> d!528194 (= lt!660015 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!397 thiss!24550 rules!3447 lt!659893 lt!660019))))

(declare-fun lt!660014 () Unit!32723)

(declare-fun lt!660004 () Unit!32723)

(assert (=> d!528194 (= lt!660014 lt!660004)))

(declare-fun lt!660010 () List!18949)

(assert (=> d!528194 (isPrefix!1588 lt!660010 (++!5172 lt!659893 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!258 (List!18949 List!18949 List!18949) Unit!32723)

(assert (=> d!528194 (= lt!660004 (lemmaPrefixStaysPrefixWhenAddingToSuffix!258 lt!660010 lt!659893 suffix!1421))))

(assert (=> d!528194 (= lt!660010 (list!7628 (charsOf!1996 lt!660019)))))

(declare-fun lt!660009 () Unit!32723)

(declare-fun lt!660006 () Unit!32723)

(assert (=> d!528194 (= lt!660009 lt!660006)))

(declare-fun lt!660011 () List!18949)

(declare-fun lt!660012 () List!18949)

(assert (=> d!528194 (isPrefix!1588 lt!660011 (++!5172 lt!660011 lt!660012))))

(assert (=> d!528194 (= lt!660006 (lemmaConcatTwoListThenFirstIsPrefix!1098 lt!660011 lt!660012))))

(assert (=> d!528194 (= lt!660012 (_2!10685 (get!5609 (maxPrefix!1530 thiss!24550 rules!3447 lt!659893))))))

(assert (=> d!528194 (= lt!660011 (list!7628 (charsOf!1996 lt!660019)))))

(declare-datatypes ((List!18952 0))(
  ( (Nil!18882) (Cons!18882 (h!24283 Token!6260) (t!159915 List!18952)) )
))
(declare-fun head!3905 (List!18952) Token!6260)

(declare-datatypes ((IArray!12565 0))(
  ( (IArray!12566 (innerList!6340 List!18952)) )
))
(declare-datatypes ((Conc!6280 0))(
  ( (Node!6280 (left!15071 Conc!6280) (right!15401 Conc!6280) (csize!12790 Int) (cheight!6491 Int)) (Leaf!9174 (xs!9156 IArray!12565) (csize!12791 Int)) (Empty!6280) )
))
(declare-datatypes ((BalanceConc!12504 0))(
  ( (BalanceConc!12505 (c!282036 Conc!6280)) )
))
(declare-fun list!7630 (BalanceConc!12504) List!18952)

(declare-datatypes ((tuple2!18568 0))(
  ( (tuple2!18569 (_1!10686 BalanceConc!12504) (_2!10686 BalanceConc!12502)) )
))
(declare-fun lex!1397 (LexerInterface!2976 List!18950 BalanceConc!12502) tuple2!18568)

(assert (=> d!528194 (= lt!660019 (head!3905 (list!7630 (_1!10686 (lex!1397 thiss!24550 rules!3447 (seqFromList!2321 lt!659893))))))))

(assert (=> d!528194 (not (isEmpty!11873 rules!3447))))

(assert (=> d!528194 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!500 thiss!24550 rules!3447 lt!659893 suffix!1421) lt!660016)))

(declare-fun b!1724046 () Bool)

(declare-fun Unit!32727 () Unit!32723)

(assert (=> b!1724046 (= e!1102841 Unit!32727)))

(declare-fun lt!660017 () List!18949)

(assert (=> b!1724046 (= lt!660017 (++!5172 lt!659893 suffix!1421))))

(declare-fun lt!660020 () Unit!32723)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!266 (LexerInterface!2976 Rule!6494 List!18950 List!18949) Unit!32723)

(assert (=> b!1724046 (= lt!660020 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!266 thiss!24550 (rule!5301 lt!660019) rules!3447 lt!660017))))

(assert (=> b!1724046 (isEmpty!11876 (maxPrefixOneRule!906 thiss!24550 (rule!5301 lt!660019) lt!660017))))

(declare-fun lt!660018 () Unit!32723)

(assert (=> b!1724046 (= lt!660018 lt!660020)))

(declare-fun lt!660008 () List!18949)

(assert (=> b!1724046 (= lt!660008 (list!7628 (charsOf!1996 lt!660019)))))

(declare-fun lt!660007 () Unit!32723)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!262 (LexerInterface!2976 Rule!6494 List!18949 List!18949) Unit!32723)

(assert (=> b!1724046 (= lt!660007 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!262 thiss!24550 (rule!5301 lt!660019) lt!660008 (++!5172 lt!659893 suffix!1421)))))

(assert (=> b!1724046 (not (matchR!2149 (regex!3347 (rule!5301 lt!660019)) lt!660008))))

(declare-fun lt!660013 () Unit!32723)

(assert (=> b!1724046 (= lt!660013 lt!660007)))

(assert (=> b!1724046 false))

(declare-fun b!1724045 () Bool)

(assert (=> b!1724045 (= e!1102842 (= (rule!5301 lt!660019) (get!5610 (getRuleFromTag!397 thiss!24550 rules!3447 (tag!3661 (rule!5301 lt!660019))))))))

(assert (= (and d!528194 res!773727) b!1724044))

(assert (= (and b!1724044 res!773728) b!1724045))

(assert (= (and d!528194 c!281956) b!1724046))

(assert (= (and d!528194 (not c!281956)) b!1724047))

(declare-fun m!2130403 () Bool)

(assert (=> b!1724044 m!2130403))

(declare-fun m!2130405 () Bool)

(assert (=> b!1724044 m!2130405))

(declare-fun m!2130407 () Bool)

(assert (=> b!1724044 m!2130407))

(declare-fun m!2130409 () Bool)

(assert (=> b!1724044 m!2130409))

(assert (=> b!1724044 m!2130403))

(assert (=> b!1724044 m!2130409))

(declare-fun m!2130411 () Bool)

(assert (=> b!1724044 m!2130411))

(assert (=> b!1724044 m!2130407))

(declare-fun m!2130413 () Bool)

(assert (=> d!528194 m!2130413))

(assert (=> d!528194 m!2130073))

(declare-fun m!2130415 () Bool)

(assert (=> d!528194 m!2130415))

(declare-fun m!2130417 () Bool)

(assert (=> d!528194 m!2130417))

(assert (=> d!528194 m!2130403))

(declare-fun m!2130419 () Bool)

(assert (=> d!528194 m!2130419))

(declare-fun m!2130421 () Bool)

(assert (=> d!528194 m!2130421))

(assert (=> d!528194 m!2130407))

(assert (=> d!528194 m!2130409))

(declare-fun m!2130423 () Bool)

(assert (=> d!528194 m!2130423))

(assert (=> d!528194 m!2130109))

(declare-fun m!2130425 () Bool)

(assert (=> d!528194 m!2130425))

(declare-fun m!2130427 () Bool)

(assert (=> d!528194 m!2130427))

(declare-fun m!2130429 () Bool)

(assert (=> d!528194 m!2130429))

(assert (=> d!528194 m!2130423))

(declare-fun m!2130431 () Bool)

(assert (=> d!528194 m!2130431))

(assert (=> d!528194 m!2130403))

(assert (=> d!528194 m!2130407))

(assert (=> d!528194 m!2130109))

(declare-fun m!2130433 () Bool)

(assert (=> d!528194 m!2130433))

(assert (=> d!528194 m!2130147))

(assert (=> d!528194 m!2130433))

(declare-fun m!2130435 () Bool)

(assert (=> d!528194 m!2130435))

(assert (=> d!528194 m!2130109))

(assert (=> d!528194 m!2130415))

(assert (=> d!528194 m!2130433))

(declare-fun m!2130437 () Bool)

(assert (=> d!528194 m!2130437))

(assert (=> d!528194 m!2130073))

(declare-fun m!2130439 () Bool)

(assert (=> d!528194 m!2130439))

(assert (=> d!528194 m!2130429))

(declare-fun m!2130441 () Bool)

(assert (=> d!528194 m!2130441))

(declare-fun m!2130443 () Bool)

(assert (=> b!1724046 m!2130443))

(assert (=> b!1724046 m!2130109))

(declare-fun m!2130445 () Bool)

(assert (=> b!1724046 m!2130445))

(assert (=> b!1724046 m!2130407))

(declare-fun m!2130447 () Bool)

(assert (=> b!1724046 m!2130447))

(declare-fun m!2130449 () Bool)

(assert (=> b!1724046 m!2130449))

(declare-fun m!2130451 () Bool)

(assert (=> b!1724046 m!2130451))

(assert (=> b!1724046 m!2130449))

(assert (=> b!1724046 m!2130407))

(assert (=> b!1724046 m!2130409))

(assert (=> b!1724046 m!2130109))

(assert (=> b!1724045 m!2130403))

(assert (=> b!1724045 m!2130403))

(assert (=> b!1724045 m!2130405))

(assert (=> b!1723785 d!528194))

(declare-fun d!528224 () Bool)

(declare-fun lt!660023 () BalanceConc!12502)

(assert (=> d!528224 (= (list!7628 lt!660023) (originalCharacters!4161 (_1!10685 lt!659883)))))

(assert (=> d!528224 (= lt!660023 (dynLambda!8729 (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) (value!105062 (_1!10685 lt!659883))))))

(assert (=> d!528224 (= (charsOf!1996 (_1!10685 lt!659883)) lt!660023)))

(declare-fun b_lambda!54775 () Bool)

(assert (=> (not b_lambda!54775) (not d!528224)))

(assert (=> d!528224 t!159834))

(declare-fun b_and!126315 () Bool)

(assert (= b_and!126249 (and (=> t!159834 result!122996) b_and!126315)))

(assert (=> d!528224 t!159836))

(declare-fun b_and!126317 () Bool)

(assert (= b_and!126251 (and (=> t!159836 result!123000) b_and!126317)))

(assert (=> d!528224 t!159838))

(declare-fun b_and!126319 () Bool)

(assert (= b_and!126253 (and (=> t!159838 result!123002) b_and!126319)))

(declare-fun m!2130453 () Bool)

(assert (=> d!528224 m!2130453))

(assert (=> d!528224 m!2130025))

(assert (=> b!1723785 d!528224))

(declare-fun d!528226 () Bool)

(declare-fun e!1102851 () Bool)

(assert (=> d!528226 e!1102851))

(declare-fun res!773739 () Bool)

(assert (=> d!528226 (=> res!773739 e!1102851)))

(declare-fun lt!660026 () Bool)

(assert (=> d!528226 (= res!773739 (not lt!660026))))

(declare-fun e!1102850 () Bool)

(assert (=> d!528226 (= lt!660026 e!1102850)))

(declare-fun res!773737 () Bool)

(assert (=> d!528226 (=> res!773737 e!1102850)))

(assert (=> d!528226 (= res!773737 ((_ is Nil!18879) lt!659897))))

(assert (=> d!528226 (= (isPrefix!1588 lt!659897 lt!659877) lt!660026)))

(declare-fun b!1724059 () Bool)

(assert (=> b!1724059 (= e!1102851 (>= (size!15003 lt!659877) (size!15003 lt!659897)))))

(declare-fun b!1724058 () Bool)

(declare-fun e!1102849 () Bool)

(assert (=> b!1724058 (= e!1102849 (isPrefix!1588 (tail!2575 lt!659897) (tail!2575 lt!659877)))))

(declare-fun b!1724056 () Bool)

(assert (=> b!1724056 (= e!1102850 e!1102849)))

(declare-fun res!773738 () Bool)

(assert (=> b!1724056 (=> (not res!773738) (not e!1102849))))

(assert (=> b!1724056 (= res!773738 (not ((_ is Nil!18879) lt!659877)))))

(declare-fun b!1724057 () Bool)

(declare-fun res!773740 () Bool)

(assert (=> b!1724057 (=> (not res!773740) (not e!1102849))))

(assert (=> b!1724057 (= res!773740 (= (head!3904 lt!659897) (head!3904 lt!659877)))))

(assert (= (and d!528226 (not res!773737)) b!1724056))

(assert (= (and b!1724056 res!773738) b!1724057))

(assert (= (and b!1724057 res!773740) b!1724058))

(assert (= (and d!528226 (not res!773739)) b!1724059))

(declare-fun m!2130455 () Bool)

(assert (=> b!1724059 m!2130455))

(assert (=> b!1724059 m!2130131))

(assert (=> b!1724058 m!2130235))

(declare-fun m!2130457 () Bool)

(assert (=> b!1724058 m!2130457))

(assert (=> b!1724058 m!2130235))

(assert (=> b!1724058 m!2130457))

(declare-fun m!2130459 () Bool)

(assert (=> b!1724058 m!2130459))

(assert (=> b!1724057 m!2130239))

(declare-fun m!2130461 () Bool)

(assert (=> b!1724057 m!2130461))

(assert (=> b!1723785 d!528226))

(declare-fun b!1724072 () Bool)

(declare-fun e!1102862 () Option!3719)

(assert (=> b!1724072 (= e!1102862 (Some!3718 (h!24281 rules!3447)))))

(declare-fun b!1724073 () Bool)

(declare-fun e!1102860 () Bool)

(declare-fun lt!660034 () Option!3719)

(assert (=> b!1724073 (= e!1102860 (= (tag!3661 (get!5610 lt!660034)) (tag!3661 (rule!5301 (_1!10685 lt!659883)))))))

(declare-fun b!1724074 () Bool)

(declare-fun e!1102863 () Option!3719)

(assert (=> b!1724074 (= e!1102862 e!1102863)))

(declare-fun c!281962 () Bool)

(assert (=> b!1724074 (= c!281962 (and ((_ is Cons!18880) rules!3447) (not (= (tag!3661 (h!24281 rules!3447)) (tag!3661 (rule!5301 (_1!10685 lt!659883)))))))))

(declare-fun b!1724075 () Bool)

(declare-fun lt!660035 () Unit!32723)

(declare-fun lt!660033 () Unit!32723)

(assert (=> b!1724075 (= lt!660035 lt!660033)))

(assert (=> b!1724075 (rulesInvariant!2645 thiss!24550 (t!159853 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!137 (LexerInterface!2976 Rule!6494 List!18950) Unit!32723)

(assert (=> b!1724075 (= lt!660033 (lemmaInvariantOnRulesThenOnTail!137 thiss!24550 (h!24281 rules!3447) (t!159853 rules!3447)))))

(assert (=> b!1724075 (= e!1102863 (getRuleFromTag!397 thiss!24550 (t!159853 rules!3447) (tag!3661 (rule!5301 (_1!10685 lt!659883)))))))

(declare-fun d!528228 () Bool)

(declare-fun e!1102861 () Bool)

(assert (=> d!528228 e!1102861))

(declare-fun res!773745 () Bool)

(assert (=> d!528228 (=> res!773745 e!1102861)))

(declare-fun isEmpty!11877 (Option!3719) Bool)

(assert (=> d!528228 (= res!773745 (isEmpty!11877 lt!660034))))

(assert (=> d!528228 (= lt!660034 e!1102862)))

(declare-fun c!281961 () Bool)

(assert (=> d!528228 (= c!281961 (and ((_ is Cons!18880) rules!3447) (= (tag!3661 (h!24281 rules!3447)) (tag!3661 (rule!5301 (_1!10685 lt!659883))))))))

(assert (=> d!528228 (rulesInvariant!2645 thiss!24550 rules!3447)))

(assert (=> d!528228 (= (getRuleFromTag!397 thiss!24550 rules!3447 (tag!3661 (rule!5301 (_1!10685 lt!659883)))) lt!660034)))

(declare-fun b!1724076 () Bool)

(assert (=> b!1724076 (= e!1102863 None!3718)))

(declare-fun b!1724077 () Bool)

(assert (=> b!1724077 (= e!1102861 e!1102860)))

(declare-fun res!773746 () Bool)

(assert (=> b!1724077 (=> (not res!773746) (not e!1102860))))

(assert (=> b!1724077 (= res!773746 (contains!3369 rules!3447 (get!5610 lt!660034)))))

(assert (= (and d!528228 c!281961) b!1724072))

(assert (= (and d!528228 (not c!281961)) b!1724074))

(assert (= (and b!1724074 c!281962) b!1724075))

(assert (= (and b!1724074 (not c!281962)) b!1724076))

(assert (= (and d!528228 (not res!773745)) b!1724077))

(assert (= (and b!1724077 res!773746) b!1724073))

(declare-fun m!2130463 () Bool)

(assert (=> b!1724073 m!2130463))

(declare-fun m!2130465 () Bool)

(assert (=> b!1724075 m!2130465))

(declare-fun m!2130467 () Bool)

(assert (=> b!1724075 m!2130467))

(declare-fun m!2130469 () Bool)

(assert (=> b!1724075 m!2130469))

(declare-fun m!2130471 () Bool)

(assert (=> d!528228 m!2130471))

(assert (=> d!528228 m!2130061))

(assert (=> b!1724077 m!2130463))

(assert (=> b!1724077 m!2130463))

(declare-fun m!2130473 () Bool)

(assert (=> b!1724077 m!2130473))

(assert (=> b!1723785 d!528228))

(declare-fun d!528230 () Bool)

(assert (=> d!528230 (= (get!5609 lt!659878) (v!25124 lt!659878))))

(assert (=> b!1723785 d!528230))

(declare-fun b!1724087 () Bool)

(declare-fun e!1102868 () List!18949)

(assert (=> b!1724087 (= e!1102868 (Cons!18879 (h!24280 lt!659897) (++!5172 (t!159852 lt!659897) (_2!10685 lt!659883))))))

(declare-fun lt!660038 () List!18949)

(declare-fun b!1724089 () Bool)

(declare-fun e!1102869 () Bool)

(assert (=> b!1724089 (= e!1102869 (or (not (= (_2!10685 lt!659883) Nil!18879)) (= lt!660038 lt!659897)))))

(declare-fun b!1724088 () Bool)

(declare-fun res!773751 () Bool)

(assert (=> b!1724088 (=> (not res!773751) (not e!1102869))))

(assert (=> b!1724088 (= res!773751 (= (size!15003 lt!660038) (+ (size!15003 lt!659897) (size!15003 (_2!10685 lt!659883)))))))

(declare-fun b!1724086 () Bool)

(assert (=> b!1724086 (= e!1102868 (_2!10685 lt!659883))))

(declare-fun d!528232 () Bool)

(assert (=> d!528232 e!1102869))

(declare-fun res!773752 () Bool)

(assert (=> d!528232 (=> (not res!773752) (not e!1102869))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2695 (List!18949) (InoxSet C!9524))

(assert (=> d!528232 (= res!773752 (= (content!2695 lt!660038) ((_ map or) (content!2695 lt!659897) (content!2695 (_2!10685 lt!659883)))))))

(assert (=> d!528232 (= lt!660038 e!1102868)))

(declare-fun c!281965 () Bool)

(assert (=> d!528232 (= c!281965 ((_ is Nil!18879) lt!659897))))

(assert (=> d!528232 (= (++!5172 lt!659897 (_2!10685 lt!659883)) lt!660038)))

(assert (= (and d!528232 c!281965) b!1724086))

(assert (= (and d!528232 (not c!281965)) b!1724087))

(assert (= (and d!528232 res!773752) b!1724088))

(assert (= (and b!1724088 res!773751) b!1724089))

(declare-fun m!2130475 () Bool)

(assert (=> b!1724087 m!2130475))

(declare-fun m!2130477 () Bool)

(assert (=> b!1724088 m!2130477))

(assert (=> b!1724088 m!2130131))

(declare-fun m!2130479 () Bool)

(assert (=> b!1724088 m!2130479))

(declare-fun m!2130481 () Bool)

(assert (=> d!528232 m!2130481))

(declare-fun m!2130483 () Bool)

(assert (=> d!528232 m!2130483))

(declare-fun m!2130485 () Bool)

(assert (=> d!528232 m!2130485))

(assert (=> b!1723785 d!528232))

(declare-fun d!528234 () Bool)

(declare-fun e!1102872 () Bool)

(assert (=> d!528234 e!1102872))

(declare-fun res!773755 () Bool)

(assert (=> d!528234 (=> res!773755 e!1102872)))

(declare-fun lt!660039 () Bool)

(assert (=> d!528234 (= res!773755 (not lt!660039))))

(declare-fun e!1102871 () Bool)

(assert (=> d!528234 (= lt!660039 e!1102871)))

(declare-fun res!773753 () Bool)

(assert (=> d!528234 (=> res!773753 e!1102871)))

(assert (=> d!528234 (= res!773753 ((_ is Nil!18879) lt!659897))))

(assert (=> d!528234 (= (isPrefix!1588 lt!659897 (++!5172 lt!659897 (_2!10685 lt!659883))) lt!660039)))

(declare-fun b!1724093 () Bool)

(assert (=> b!1724093 (= e!1102872 (>= (size!15003 (++!5172 lt!659897 (_2!10685 lt!659883))) (size!15003 lt!659897)))))

(declare-fun b!1724092 () Bool)

(declare-fun e!1102870 () Bool)

(assert (=> b!1724092 (= e!1102870 (isPrefix!1588 (tail!2575 lt!659897) (tail!2575 (++!5172 lt!659897 (_2!10685 lt!659883)))))))

(declare-fun b!1724090 () Bool)

(assert (=> b!1724090 (= e!1102871 e!1102870)))

(declare-fun res!773754 () Bool)

(assert (=> b!1724090 (=> (not res!773754) (not e!1102870))))

(assert (=> b!1724090 (= res!773754 (not ((_ is Nil!18879) (++!5172 lt!659897 (_2!10685 lt!659883)))))))

(declare-fun b!1724091 () Bool)

(declare-fun res!773756 () Bool)

(assert (=> b!1724091 (=> (not res!773756) (not e!1102870))))

(assert (=> b!1724091 (= res!773756 (= (head!3904 lt!659897) (head!3904 (++!5172 lt!659897 (_2!10685 lt!659883)))))))

(assert (= (and d!528234 (not res!773753)) b!1724090))

(assert (= (and b!1724090 res!773754) b!1724091))

(assert (= (and b!1724091 res!773756) b!1724092))

(assert (= (and d!528234 (not res!773755)) b!1724093))

(assert (=> b!1724093 m!2130091))

(declare-fun m!2130487 () Bool)

(assert (=> b!1724093 m!2130487))

(assert (=> b!1724093 m!2130131))

(assert (=> b!1724092 m!2130235))

(assert (=> b!1724092 m!2130091))

(declare-fun m!2130489 () Bool)

(assert (=> b!1724092 m!2130489))

(assert (=> b!1724092 m!2130235))

(assert (=> b!1724092 m!2130489))

(declare-fun m!2130491 () Bool)

(assert (=> b!1724092 m!2130491))

(assert (=> b!1724091 m!2130239))

(assert (=> b!1724091 m!2130091))

(declare-fun m!2130493 () Bool)

(assert (=> b!1724091 m!2130493))

(assert (=> b!1723785 d!528234))

(declare-fun d!528236 () Bool)

(assert (=> d!528236 (= (isDefined!3062 lt!659871) (not (isEmpty!11877 lt!659871)))))

(declare-fun bs!402323 () Bool)

(assert (= bs!402323 d!528236))

(declare-fun m!2130495 () Bool)

(assert (=> bs!402323 m!2130495))

(assert (=> b!1723785 d!528236))

(declare-fun d!528238 () Bool)

(declare-fun list!7631 (Conc!6279) List!18949)

(assert (=> d!528238 (= (list!7628 lt!659876) (list!7631 (c!281907 lt!659876)))))

(declare-fun bs!402324 () Bool)

(assert (= bs!402324 d!528238))

(declare-fun m!2130497 () Bool)

(assert (=> bs!402324 m!2130497))

(assert (=> b!1723785 d!528238))

(declare-fun d!528240 () Bool)

(assert (=> d!528240 (isPrefix!1588 lt!659897 (++!5172 lt!659897 (_2!10685 lt!659883)))))

(declare-fun lt!660042 () Unit!32723)

(declare-fun choose!10494 (List!18949 List!18949) Unit!32723)

(assert (=> d!528240 (= lt!660042 (choose!10494 lt!659897 (_2!10685 lt!659883)))))

(assert (=> d!528240 (= (lemmaConcatTwoListThenFirstIsPrefix!1098 lt!659897 (_2!10685 lt!659883)) lt!660042)))

(declare-fun bs!402325 () Bool)

(assert (= bs!402325 d!528240))

(assert (=> bs!402325 m!2130091))

(assert (=> bs!402325 m!2130091))

(assert (=> bs!402325 m!2130093))

(declare-fun m!2130499 () Bool)

(assert (=> bs!402325 m!2130499))

(assert (=> b!1723785 d!528240))

(declare-fun d!528242 () Bool)

(declare-fun e!1102875 () Bool)

(assert (=> d!528242 e!1102875))

(declare-fun res!773761 () Bool)

(assert (=> d!528242 (=> (not res!773761) (not e!1102875))))

(assert (=> d!528242 (= res!773761 (isDefined!3062 (getRuleFromTag!397 thiss!24550 rules!3447 (tag!3661 (rule!5301 (_1!10685 lt!659883))))))))

(declare-fun lt!660045 () Unit!32723)

(declare-fun choose!10495 (LexerInterface!2976 List!18950 List!18949 Token!6260) Unit!32723)

(assert (=> d!528242 (= lt!660045 (choose!10495 thiss!24550 rules!3447 lt!659877 (_1!10685 lt!659883)))))

(assert (=> d!528242 (rulesInvariant!2645 thiss!24550 rules!3447)))

(assert (=> d!528242 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!397 thiss!24550 rules!3447 lt!659877 (_1!10685 lt!659883)) lt!660045)))

(declare-fun b!1724098 () Bool)

(declare-fun res!773762 () Bool)

(assert (=> b!1724098 (=> (not res!773762) (not e!1102875))))

(assert (=> b!1724098 (= res!773762 (matchR!2149 (regex!3347 (get!5610 (getRuleFromTag!397 thiss!24550 rules!3447 (tag!3661 (rule!5301 (_1!10685 lt!659883)))))) (list!7628 (charsOf!1996 (_1!10685 lt!659883)))))))

(declare-fun b!1724099 () Bool)

(assert (=> b!1724099 (= e!1102875 (= (rule!5301 (_1!10685 lt!659883)) (get!5610 (getRuleFromTag!397 thiss!24550 rules!3447 (tag!3661 (rule!5301 (_1!10685 lt!659883)))))))))

(assert (= (and d!528242 res!773761) b!1724098))

(assert (= (and b!1724098 res!773762) b!1724099))

(assert (=> d!528242 m!2130101))

(assert (=> d!528242 m!2130101))

(declare-fun m!2130501 () Bool)

(assert (=> d!528242 m!2130501))

(declare-fun m!2130503 () Bool)

(assert (=> d!528242 m!2130503))

(assert (=> d!528242 m!2130061))

(assert (=> b!1724098 m!2130101))

(assert (=> b!1724098 m!2130085))

(declare-fun m!2130505 () Bool)

(assert (=> b!1724098 m!2130505))

(assert (=> b!1724098 m!2130101))

(declare-fun m!2130507 () Bool)

(assert (=> b!1724098 m!2130507))

(assert (=> b!1724098 m!2130083))

(assert (=> b!1724098 m!2130083))

(assert (=> b!1724098 m!2130085))

(assert (=> b!1724099 m!2130101))

(assert (=> b!1724099 m!2130101))

(assert (=> b!1724099 m!2130507))

(assert (=> b!1723785 d!528242))

(declare-fun b!1724101 () Bool)

(declare-fun e!1102876 () List!18949)

(assert (=> b!1724101 (= e!1102876 (Cons!18879 (h!24280 lt!659893) (++!5172 (t!159852 lt!659893) suffix!1421)))))

(declare-fun b!1724103 () Bool)

(declare-fun e!1102877 () Bool)

(declare-fun lt!660046 () List!18949)

(assert (=> b!1724103 (= e!1102877 (or (not (= suffix!1421 Nil!18879)) (= lt!660046 lt!659893)))))

(declare-fun b!1724102 () Bool)

(declare-fun res!773763 () Bool)

(assert (=> b!1724102 (=> (not res!773763) (not e!1102877))))

(assert (=> b!1724102 (= res!773763 (= (size!15003 lt!660046) (+ (size!15003 lt!659893) (size!15003 suffix!1421))))))

(declare-fun b!1724100 () Bool)

(assert (=> b!1724100 (= e!1102876 suffix!1421)))

(declare-fun d!528244 () Bool)

(assert (=> d!528244 e!1102877))

(declare-fun res!773764 () Bool)

(assert (=> d!528244 (=> (not res!773764) (not e!1102877))))

(assert (=> d!528244 (= res!773764 (= (content!2695 lt!660046) ((_ map or) (content!2695 lt!659893) (content!2695 suffix!1421))))))

(assert (=> d!528244 (= lt!660046 e!1102876)))

(declare-fun c!281966 () Bool)

(assert (=> d!528244 (= c!281966 ((_ is Nil!18879) lt!659893))))

(assert (=> d!528244 (= (++!5172 lt!659893 suffix!1421) lt!660046)))

(assert (= (and d!528244 c!281966) b!1724100))

(assert (= (and d!528244 (not c!281966)) b!1724101))

(assert (= (and d!528244 res!773764) b!1724102))

(assert (= (and b!1724102 res!773763) b!1724103))

(declare-fun m!2130509 () Bool)

(assert (=> b!1724101 m!2130509))

(declare-fun m!2130511 () Bool)

(assert (=> b!1724102 m!2130511))

(declare-fun m!2130513 () Bool)

(assert (=> b!1724102 m!2130513))

(declare-fun m!2130515 () Bool)

(assert (=> b!1724102 m!2130515))

(declare-fun m!2130517 () Bool)

(assert (=> d!528244 m!2130517))

(declare-fun m!2130519 () Bool)

(assert (=> d!528244 m!2130519))

(declare-fun m!2130521 () Bool)

(assert (=> d!528244 m!2130521))

(assert (=> b!1723785 d!528244))

(declare-fun d!528246 () Bool)

(assert (=> d!528246 (isPrefix!1588 lt!659893 (++!5172 lt!659893 suffix!1421))))

(declare-fun lt!660047 () Unit!32723)

(assert (=> d!528246 (= lt!660047 (choose!10494 lt!659893 suffix!1421))))

(assert (=> d!528246 (= (lemmaConcatTwoListThenFirstIsPrefix!1098 lt!659893 suffix!1421) lt!660047)))

(declare-fun bs!402326 () Bool)

(assert (= bs!402326 d!528246))

(assert (=> bs!402326 m!2130109))

(assert (=> bs!402326 m!2130109))

(declare-fun m!2130523 () Bool)

(assert (=> bs!402326 m!2130523))

(declare-fun m!2130525 () Bool)

(assert (=> bs!402326 m!2130525))

(assert (=> b!1723785 d!528246))

(declare-fun b!1724134 () Bool)

(declare-fun res!773791 () Bool)

(declare-fun e!1102892 () Bool)

(assert (=> b!1724134 (=> (not res!773791) (not e!1102892))))

(declare-fun lt!660109 () Option!3718)

(assert (=> b!1724134 (= res!773791 (= (value!105062 (_1!10685 (get!5609 lt!660109))) (apply!5152 (transformation!3347 (rule!5301 (_1!10685 (get!5609 lt!660109)))) (seqFromList!2321 (originalCharacters!4161 (_1!10685 (get!5609 lt!660109)))))))))

(declare-fun call!109785 () Option!3718)

(declare-fun bm!109780 () Bool)

(assert (=> bm!109780 (= call!109785 (maxPrefixOneRule!906 thiss!24550 (h!24281 rules!3447) lt!659877))))

(declare-fun b!1724135 () Bool)

(declare-fun res!773788 () Bool)

(assert (=> b!1724135 (=> (not res!773788) (not e!1102892))))

(assert (=> b!1724135 (= res!773788 (< (size!15003 (_2!10685 (get!5609 lt!660109))) (size!15003 lt!659877)))))

(declare-fun b!1724136 () Bool)

(declare-fun e!1102891 () Bool)

(assert (=> b!1724136 (= e!1102891 e!1102892)))

(declare-fun res!773787 () Bool)

(assert (=> b!1724136 (=> (not res!773787) (not e!1102892))))

(assert (=> b!1724136 (= res!773787 (isDefined!3061 lt!660109))))

(declare-fun b!1724137 () Bool)

(declare-fun e!1102890 () Option!3718)

(assert (=> b!1724137 (= e!1102890 call!109785)))

(declare-fun b!1724139 () Bool)

(assert (=> b!1724139 (= e!1102892 (contains!3369 rules!3447 (rule!5301 (_1!10685 (get!5609 lt!660109)))))))

(declare-fun b!1724140 () Bool)

(declare-fun res!773786 () Bool)

(assert (=> b!1724140 (=> (not res!773786) (not e!1102892))))

(assert (=> b!1724140 (= res!773786 (= (++!5172 (list!7628 (charsOf!1996 (_1!10685 (get!5609 lt!660109)))) (_2!10685 (get!5609 lt!660109))) lt!659877))))

(declare-fun b!1724141 () Bool)

(declare-fun res!773790 () Bool)

(assert (=> b!1724141 (=> (not res!773790) (not e!1102892))))

(assert (=> b!1724141 (= res!773790 (matchR!2149 (regex!3347 (rule!5301 (_1!10685 (get!5609 lt!660109)))) (list!7628 (charsOf!1996 (_1!10685 (get!5609 lt!660109))))))))

(declare-fun b!1724142 () Bool)

(declare-fun lt!660112 () Option!3718)

(declare-fun lt!660110 () Option!3718)

(assert (=> b!1724142 (= e!1102890 (ite (and ((_ is None!3717) lt!660112) ((_ is None!3717) lt!660110)) None!3717 (ite ((_ is None!3717) lt!660110) lt!660112 (ite ((_ is None!3717) lt!660112) lt!660110 (ite (>= (size!15002 (_1!10685 (v!25124 lt!660112))) (size!15002 (_1!10685 (v!25124 lt!660110)))) lt!660112 lt!660110)))))))

(assert (=> b!1724142 (= lt!660112 call!109785)))

(assert (=> b!1724142 (= lt!660110 (maxPrefix!1530 thiss!24550 (t!159853 rules!3447) lt!659877))))

(declare-fun b!1724138 () Bool)

(declare-fun res!773789 () Bool)

(assert (=> b!1724138 (=> (not res!773789) (not e!1102892))))

(assert (=> b!1724138 (= res!773789 (= (list!7628 (charsOf!1996 (_1!10685 (get!5609 lt!660109)))) (originalCharacters!4161 (_1!10685 (get!5609 lt!660109)))))))

(declare-fun d!528248 () Bool)

(assert (=> d!528248 e!1102891))

(declare-fun res!773785 () Bool)

(assert (=> d!528248 (=> res!773785 e!1102891)))

(assert (=> d!528248 (= res!773785 (isEmpty!11876 lt!660109))))

(assert (=> d!528248 (= lt!660109 e!1102890)))

(declare-fun c!281972 () Bool)

(assert (=> d!528248 (= c!281972 (and ((_ is Cons!18880) rules!3447) ((_ is Nil!18880) (t!159853 rules!3447))))))

(declare-fun lt!660111 () Unit!32723)

(declare-fun lt!660113 () Unit!32723)

(assert (=> d!528248 (= lt!660111 lt!660113)))

(assert (=> d!528248 (isPrefix!1588 lt!659877 lt!659877)))

(declare-fun lemmaIsPrefixRefl!1073 (List!18949 List!18949) Unit!32723)

(assert (=> d!528248 (= lt!660113 (lemmaIsPrefixRefl!1073 lt!659877 lt!659877))))

(assert (=> d!528248 (rulesValidInductive!1110 thiss!24550 rules!3447)))

(assert (=> d!528248 (= (maxPrefix!1530 thiss!24550 rules!3447 lt!659877) lt!660109)))

(assert (= (and d!528248 c!281972) b!1724137))

(assert (= (and d!528248 (not c!281972)) b!1724142))

(assert (= (or b!1724137 b!1724142) bm!109780))

(assert (= (and d!528248 (not res!773785)) b!1724136))

(assert (= (and b!1724136 res!773787) b!1724138))

(assert (= (and b!1724138 res!773789) b!1724135))

(assert (= (and b!1724135 res!773788) b!1724140))

(assert (= (and b!1724140 res!773786) b!1724134))

(assert (= (and b!1724134 res!773791) b!1724141))

(assert (= (and b!1724141 res!773790) b!1724139))

(declare-fun m!2130579 () Bool)

(assert (=> b!1724140 m!2130579))

(declare-fun m!2130581 () Bool)

(assert (=> b!1724140 m!2130581))

(assert (=> b!1724140 m!2130581))

(declare-fun m!2130583 () Bool)

(assert (=> b!1724140 m!2130583))

(assert (=> b!1724140 m!2130583))

(declare-fun m!2130585 () Bool)

(assert (=> b!1724140 m!2130585))

(declare-fun m!2130587 () Bool)

(assert (=> d!528248 m!2130587))

(declare-fun m!2130589 () Bool)

(assert (=> d!528248 m!2130589))

(declare-fun m!2130591 () Bool)

(assert (=> d!528248 m!2130591))

(assert (=> d!528248 m!2130065))

(declare-fun m!2130593 () Bool)

(assert (=> b!1724136 m!2130593))

(declare-fun m!2130595 () Bool)

(assert (=> bm!109780 m!2130595))

(assert (=> b!1724139 m!2130579))

(declare-fun m!2130597 () Bool)

(assert (=> b!1724139 m!2130597))

(declare-fun m!2130599 () Bool)

(assert (=> b!1724142 m!2130599))

(assert (=> b!1724134 m!2130579))

(declare-fun m!2130601 () Bool)

(assert (=> b!1724134 m!2130601))

(assert (=> b!1724134 m!2130601))

(declare-fun m!2130603 () Bool)

(assert (=> b!1724134 m!2130603))

(assert (=> b!1724135 m!2130579))

(declare-fun m!2130605 () Bool)

(assert (=> b!1724135 m!2130605))

(assert (=> b!1724135 m!2130455))

(assert (=> b!1724138 m!2130579))

(assert (=> b!1724138 m!2130581))

(assert (=> b!1724138 m!2130581))

(assert (=> b!1724138 m!2130583))

(assert (=> b!1724141 m!2130579))

(assert (=> b!1724141 m!2130581))

(assert (=> b!1724141 m!2130581))

(assert (=> b!1724141 m!2130583))

(assert (=> b!1724141 m!2130583))

(declare-fun m!2130607 () Bool)

(assert (=> b!1724141 m!2130607))

(assert (=> b!1723785 d!528248))

(declare-fun d!528254 () Bool)

(declare-fun e!1102898 () Bool)

(assert (=> d!528254 e!1102898))

(declare-fun res!773801 () Bool)

(assert (=> d!528254 (=> res!773801 e!1102898)))

(declare-fun lt!660122 () Bool)

(assert (=> d!528254 (= res!773801 (not lt!660122))))

(declare-fun e!1102897 () Bool)

(assert (=> d!528254 (= lt!660122 e!1102897)))

(declare-fun res!773799 () Bool)

(assert (=> d!528254 (=> res!773799 e!1102897)))

(assert (=> d!528254 (= res!773799 ((_ is Nil!18879) lt!659893))))

(assert (=> d!528254 (= (isPrefix!1588 lt!659893 lt!659877) lt!660122)))

(declare-fun b!1724155 () Bool)

(assert (=> b!1724155 (= e!1102898 (>= (size!15003 lt!659877) (size!15003 lt!659893)))))

(declare-fun b!1724154 () Bool)

(declare-fun e!1102896 () Bool)

(assert (=> b!1724154 (= e!1102896 (isPrefix!1588 (tail!2575 lt!659893) (tail!2575 lt!659877)))))

(declare-fun b!1724152 () Bool)

(assert (=> b!1724152 (= e!1102897 e!1102896)))

(declare-fun res!773800 () Bool)

(assert (=> b!1724152 (=> (not res!773800) (not e!1102896))))

(assert (=> b!1724152 (= res!773800 (not ((_ is Nil!18879) lt!659877)))))

(declare-fun b!1724153 () Bool)

(declare-fun res!773802 () Bool)

(assert (=> b!1724153 (=> (not res!773802) (not e!1102896))))

(assert (=> b!1724153 (= res!773802 (= (head!3904 lt!659893) (head!3904 lt!659877)))))

(assert (= (and d!528254 (not res!773799)) b!1724152))

(assert (= (and b!1724152 res!773800) b!1724153))

(assert (= (and b!1724153 res!773802) b!1724154))

(assert (= (and d!528254 (not res!773801)) b!1724155))

(assert (=> b!1724155 m!2130455))

(assert (=> b!1724155 m!2130513))

(declare-fun m!2130609 () Bool)

(assert (=> b!1724154 m!2130609))

(assert (=> b!1724154 m!2130457))

(assert (=> b!1724154 m!2130609))

(assert (=> b!1724154 m!2130457))

(declare-fun m!2130611 () Bool)

(assert (=> b!1724154 m!2130611))

(declare-fun m!2130613 () Bool)

(assert (=> b!1724153 m!2130613))

(assert (=> b!1724153 m!2130461))

(assert (=> b!1723785 d!528254))

(declare-fun d!528256 () Bool)

(declare-fun isBalanced!1964 (Conc!6279) Bool)

(assert (=> d!528256 (= (inv!24398 (dynLambda!8729 (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) (dynLambda!8730 (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) lt!659876))) (isBalanced!1964 (c!281907 (dynLambda!8729 (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) (dynLambda!8730 (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) lt!659876)))))))

(declare-fun bs!402329 () Bool)

(assert (= bs!402329 d!528256))

(declare-fun m!2130647 () Bool)

(assert (=> bs!402329 m!2130647))

(assert (=> tb!102327 d!528256))

(declare-fun b!1724156 () Bool)

(declare-fun e!1102899 () Bool)

(declare-fun lt!660123 () Bool)

(assert (=> b!1724156 (= e!1102899 (not lt!660123))))

(declare-fun b!1724157 () Bool)

(declare-fun e!1102900 () Bool)

(assert (=> b!1724157 (= e!1102900 (nullable!1410 (regex!3347 lt!659881)))))

(declare-fun b!1724158 () Bool)

(declare-fun e!1102905 () Bool)

(assert (=> b!1724158 (= e!1102905 e!1102899)))

(declare-fun c!281975 () Bool)

(assert (=> b!1724158 (= c!281975 ((_ is EmptyLang!4675) (regex!3347 lt!659881)))))

(declare-fun b!1724159 () Bool)

(declare-fun call!109787 () Bool)

(assert (=> b!1724159 (= e!1102905 (= lt!660123 call!109787))))

(declare-fun bm!109782 () Bool)

(assert (=> bm!109782 (= call!109787 (isEmpty!11874 (list!7628 (charsOf!1996 (_1!10685 lt!659883)))))))

(declare-fun b!1724161 () Bool)

(declare-fun res!773803 () Bool)

(declare-fun e!1102904 () Bool)

(assert (=> b!1724161 (=> res!773803 e!1102904)))

(assert (=> b!1724161 (= res!773803 (not ((_ is ElementMatch!4675) (regex!3347 lt!659881))))))

(assert (=> b!1724161 (= e!1102899 e!1102904)))

(declare-fun b!1724162 () Bool)

(declare-fun e!1102903 () Bool)

(assert (=> b!1724162 (= e!1102903 (= (head!3904 (list!7628 (charsOf!1996 (_1!10685 lt!659883)))) (c!281906 (regex!3347 lt!659881))))))

(declare-fun b!1724163 () Bool)

(declare-fun e!1102901 () Bool)

(assert (=> b!1724163 (= e!1102901 (not (= (head!3904 (list!7628 (charsOf!1996 (_1!10685 lt!659883)))) (c!281906 (regex!3347 lt!659881)))))))

(declare-fun b!1724164 () Bool)

(declare-fun res!773809 () Bool)

(assert (=> b!1724164 (=> res!773809 e!1102901)))

(assert (=> b!1724164 (= res!773809 (not (isEmpty!11874 (tail!2575 (list!7628 (charsOf!1996 (_1!10685 lt!659883)))))))))

(declare-fun b!1724165 () Bool)

(declare-fun e!1102902 () Bool)

(assert (=> b!1724165 (= e!1102902 e!1102901)))

(declare-fun res!773807 () Bool)

(assert (=> b!1724165 (=> res!773807 e!1102901)))

(assert (=> b!1724165 (= res!773807 call!109787)))

(declare-fun b!1724166 () Bool)

(declare-fun res!773805 () Bool)

(assert (=> b!1724166 (=> res!773805 e!1102904)))

(assert (=> b!1724166 (= res!773805 e!1102903)))

(declare-fun res!773804 () Bool)

(assert (=> b!1724166 (=> (not res!773804) (not e!1102903))))

(assert (=> b!1724166 (= res!773804 lt!660123)))

(declare-fun b!1724167 () Bool)

(assert (=> b!1724167 (= e!1102900 (matchR!2149 (derivativeStep!1178 (regex!3347 lt!659881) (head!3904 (list!7628 (charsOf!1996 (_1!10685 lt!659883))))) (tail!2575 (list!7628 (charsOf!1996 (_1!10685 lt!659883))))))))

(declare-fun b!1724160 () Bool)

(declare-fun res!773808 () Bool)

(assert (=> b!1724160 (=> (not res!773808) (not e!1102903))))

(assert (=> b!1724160 (= res!773808 (not call!109787))))

(declare-fun d!528262 () Bool)

(assert (=> d!528262 e!1102905))

(declare-fun c!281976 () Bool)

(assert (=> d!528262 (= c!281976 ((_ is EmptyExpr!4675) (regex!3347 lt!659881)))))

(assert (=> d!528262 (= lt!660123 e!1102900)))

(declare-fun c!281974 () Bool)

(assert (=> d!528262 (= c!281974 (isEmpty!11874 (list!7628 (charsOf!1996 (_1!10685 lt!659883)))))))

(assert (=> d!528262 (validRegex!1884 (regex!3347 lt!659881))))

(assert (=> d!528262 (= (matchR!2149 (regex!3347 lt!659881) (list!7628 (charsOf!1996 (_1!10685 lt!659883)))) lt!660123)))

(declare-fun b!1724168 () Bool)

(declare-fun res!773810 () Bool)

(assert (=> b!1724168 (=> (not res!773810) (not e!1102903))))

(assert (=> b!1724168 (= res!773810 (isEmpty!11874 (tail!2575 (list!7628 (charsOf!1996 (_1!10685 lt!659883))))))))

(declare-fun b!1724169 () Bool)

(assert (=> b!1724169 (= e!1102904 e!1102902)))

(declare-fun res!773806 () Bool)

(assert (=> b!1724169 (=> (not res!773806) (not e!1102902))))

(assert (=> b!1724169 (= res!773806 (not lt!660123))))

(assert (= (and d!528262 c!281974) b!1724157))

(assert (= (and d!528262 (not c!281974)) b!1724167))

(assert (= (and d!528262 c!281976) b!1724159))

(assert (= (and d!528262 (not c!281976)) b!1724158))

(assert (= (and b!1724158 c!281975) b!1724156))

(assert (= (and b!1724158 (not c!281975)) b!1724161))

(assert (= (and b!1724161 (not res!773803)) b!1724166))

(assert (= (and b!1724166 res!773804) b!1724160))

(assert (= (and b!1724160 res!773808) b!1724168))

(assert (= (and b!1724168 res!773810) b!1724162))

(assert (= (and b!1724166 (not res!773805)) b!1724169))

(assert (= (and b!1724169 res!773806) b!1724165))

(assert (= (and b!1724165 (not res!773807)) b!1724164))

(assert (= (and b!1724164 (not res!773809)) b!1724163))

(assert (= (or b!1724159 b!1724160 b!1724165) bm!109782))

(declare-fun m!2130649 () Bool)

(assert (=> b!1724157 m!2130649))

(assert (=> d!528262 m!2130085))

(declare-fun m!2130651 () Bool)

(assert (=> d!528262 m!2130651))

(declare-fun m!2130653 () Bool)

(assert (=> d!528262 m!2130653))

(assert (=> b!1724164 m!2130085))

(declare-fun m!2130655 () Bool)

(assert (=> b!1724164 m!2130655))

(assert (=> b!1724164 m!2130655))

(declare-fun m!2130657 () Bool)

(assert (=> b!1724164 m!2130657))

(assert (=> bm!109782 m!2130085))

(assert (=> bm!109782 m!2130651))

(assert (=> b!1724168 m!2130085))

(assert (=> b!1724168 m!2130655))

(assert (=> b!1724168 m!2130655))

(assert (=> b!1724168 m!2130657))

(assert (=> b!1724162 m!2130085))

(declare-fun m!2130659 () Bool)

(assert (=> b!1724162 m!2130659))

(assert (=> b!1724163 m!2130085))

(assert (=> b!1724163 m!2130659))

(assert (=> b!1724167 m!2130085))

(assert (=> b!1724167 m!2130659))

(assert (=> b!1724167 m!2130659))

(declare-fun m!2130661 () Bool)

(assert (=> b!1724167 m!2130661))

(assert (=> b!1724167 m!2130085))

(assert (=> b!1724167 m!2130655))

(assert (=> b!1724167 m!2130661))

(assert (=> b!1724167 m!2130655))

(declare-fun m!2130663 () Bool)

(assert (=> b!1724167 m!2130663))

(assert (=> b!1723772 d!528262))

(declare-fun d!528264 () Bool)

(assert (=> d!528264 (= (list!7628 (charsOf!1996 (_1!10685 lt!659883))) (list!7631 (c!281907 (charsOf!1996 (_1!10685 lt!659883)))))))

(declare-fun bs!402330 () Bool)

(assert (= bs!402330 d!528264))

(declare-fun m!2130665 () Bool)

(assert (=> bs!402330 m!2130665))

(assert (=> b!1723772 d!528264))

(assert (=> b!1723772 d!528224))

(declare-fun d!528266 () Bool)

(assert (=> d!528266 (= (get!5610 lt!659871) (v!25125 lt!659871))))

(assert (=> b!1723772 d!528266))

(declare-fun d!528268 () Bool)

(declare-fun c!281982 () Bool)

(assert (=> d!528268 (= c!281982 ((_ is Node!6279) (c!281907 (dynLambda!8729 (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) (dynLambda!8730 (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) lt!659876)))))))

(declare-fun e!1102916 () Bool)

(assert (=> d!528268 (= (inv!24397 (c!281907 (dynLambda!8729 (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) (dynLambda!8730 (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) lt!659876)))) e!1102916)))

(declare-fun b!1724188 () Bool)

(declare-fun inv!24401 (Conc!6279) Bool)

(assert (=> b!1724188 (= e!1102916 (inv!24401 (c!281907 (dynLambda!8729 (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) (dynLambda!8730 (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) lt!659876)))))))

(declare-fun b!1724189 () Bool)

(declare-fun e!1102917 () Bool)

(assert (=> b!1724189 (= e!1102916 e!1102917)))

(declare-fun res!773819 () Bool)

(assert (=> b!1724189 (= res!773819 (not ((_ is Leaf!9173) (c!281907 (dynLambda!8729 (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) (dynLambda!8730 (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) lt!659876))))))))

(assert (=> b!1724189 (=> res!773819 e!1102917)))

(declare-fun b!1724190 () Bool)

(declare-fun inv!24402 (Conc!6279) Bool)

(assert (=> b!1724190 (= e!1102917 (inv!24402 (c!281907 (dynLambda!8729 (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) (dynLambda!8730 (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) lt!659876)))))))

(assert (= (and d!528268 c!281982) b!1724188))

(assert (= (and d!528268 (not c!281982)) b!1724189))

(assert (= (and b!1724189 (not res!773819)) b!1724190))

(declare-fun m!2130679 () Bool)

(assert (=> b!1724188 m!2130679))

(declare-fun m!2130681 () Bool)

(assert (=> b!1724190 m!2130681))

(assert (=> b!1723802 d!528268))

(declare-fun d!528272 () Bool)

(declare-fun lt!660127 () Int)

(assert (=> d!528272 (= lt!660127 (size!15003 (list!7628 lt!659879)))))

(assert (=> d!528272 (= lt!660127 (size!15006 (c!281907 lt!659879)))))

(assert (=> d!528272 (= (size!15004 lt!659879) lt!660127)))

(declare-fun bs!402331 () Bool)

(assert (= bs!402331 d!528272))

(assert (=> bs!402331 m!2130075))

(assert (=> bs!402331 m!2130075))

(declare-fun m!2130683 () Bool)

(assert (=> bs!402331 m!2130683))

(declare-fun m!2130685 () Bool)

(assert (=> bs!402331 m!2130685))

(assert (=> b!1723770 d!528272))

(declare-fun b!1724191 () Bool)

(declare-fun e!1102918 () Bool)

(declare-fun lt!660128 () Bool)

(assert (=> b!1724191 (= e!1102918 (not lt!660128))))

(declare-fun b!1724192 () Bool)

(declare-fun e!1102919 () Bool)

(assert (=> b!1724192 (= e!1102919 (nullable!1410 lt!659896))))

(declare-fun b!1724193 () Bool)

(declare-fun e!1102924 () Bool)

(assert (=> b!1724193 (= e!1102924 e!1102918)))

(declare-fun c!281984 () Bool)

(assert (=> b!1724193 (= c!281984 ((_ is EmptyLang!4675) lt!659896))))

(declare-fun b!1724194 () Bool)

(declare-fun call!109788 () Bool)

(assert (=> b!1724194 (= e!1102924 (= lt!660128 call!109788))))

(declare-fun bm!109783 () Bool)

(assert (=> bm!109783 (= call!109788 (isEmpty!11874 lt!659893))))

(declare-fun b!1724196 () Bool)

(declare-fun res!773820 () Bool)

(declare-fun e!1102923 () Bool)

(assert (=> b!1724196 (=> res!773820 e!1102923)))

(assert (=> b!1724196 (= res!773820 (not ((_ is ElementMatch!4675) lt!659896)))))

(assert (=> b!1724196 (= e!1102918 e!1102923)))

(declare-fun b!1724197 () Bool)

(declare-fun e!1102922 () Bool)

(assert (=> b!1724197 (= e!1102922 (= (head!3904 lt!659893) (c!281906 lt!659896)))))

(declare-fun b!1724198 () Bool)

(declare-fun e!1102920 () Bool)

(assert (=> b!1724198 (= e!1102920 (not (= (head!3904 lt!659893) (c!281906 lt!659896))))))

(declare-fun b!1724199 () Bool)

(declare-fun res!773826 () Bool)

(assert (=> b!1724199 (=> res!773826 e!1102920)))

(assert (=> b!1724199 (= res!773826 (not (isEmpty!11874 (tail!2575 lt!659893))))))

(declare-fun b!1724200 () Bool)

(declare-fun e!1102921 () Bool)

(assert (=> b!1724200 (= e!1102921 e!1102920)))

(declare-fun res!773824 () Bool)

(assert (=> b!1724200 (=> res!773824 e!1102920)))

(assert (=> b!1724200 (= res!773824 call!109788)))

(declare-fun b!1724201 () Bool)

(declare-fun res!773822 () Bool)

(assert (=> b!1724201 (=> res!773822 e!1102923)))

(assert (=> b!1724201 (= res!773822 e!1102922)))

(declare-fun res!773821 () Bool)

(assert (=> b!1724201 (=> (not res!773821) (not e!1102922))))

(assert (=> b!1724201 (= res!773821 lt!660128)))

(declare-fun b!1724202 () Bool)

(assert (=> b!1724202 (= e!1102919 (matchR!2149 (derivativeStep!1178 lt!659896 (head!3904 lt!659893)) (tail!2575 lt!659893)))))

(declare-fun b!1724195 () Bool)

(declare-fun res!773825 () Bool)

(assert (=> b!1724195 (=> (not res!773825) (not e!1102922))))

(assert (=> b!1724195 (= res!773825 (not call!109788))))

(declare-fun d!528274 () Bool)

(assert (=> d!528274 e!1102924))

(declare-fun c!281985 () Bool)

(assert (=> d!528274 (= c!281985 ((_ is EmptyExpr!4675) lt!659896))))

(assert (=> d!528274 (= lt!660128 e!1102919)))

(declare-fun c!281983 () Bool)

(assert (=> d!528274 (= c!281983 (isEmpty!11874 lt!659893))))

(assert (=> d!528274 (validRegex!1884 lt!659896)))

(assert (=> d!528274 (= (matchR!2149 lt!659896 lt!659893) lt!660128)))

(declare-fun b!1724203 () Bool)

(declare-fun res!773827 () Bool)

(assert (=> b!1724203 (=> (not res!773827) (not e!1102922))))

(assert (=> b!1724203 (= res!773827 (isEmpty!11874 (tail!2575 lt!659893)))))

(declare-fun b!1724204 () Bool)

(assert (=> b!1724204 (= e!1102923 e!1102921)))

(declare-fun res!773823 () Bool)

(assert (=> b!1724204 (=> (not res!773823) (not e!1102921))))

(assert (=> b!1724204 (= res!773823 (not lt!660128))))

(assert (= (and d!528274 c!281983) b!1724192))

(assert (= (and d!528274 (not c!281983)) b!1724202))

(assert (= (and d!528274 c!281985) b!1724194))

(assert (= (and d!528274 (not c!281985)) b!1724193))

(assert (= (and b!1724193 c!281984) b!1724191))

(assert (= (and b!1724193 (not c!281984)) b!1724196))

(assert (= (and b!1724196 (not res!773820)) b!1724201))

(assert (= (and b!1724201 res!773821) b!1724195))

(assert (= (and b!1724195 res!773825) b!1724203))

(assert (= (and b!1724203 res!773827) b!1724197))

(assert (= (and b!1724201 (not res!773822)) b!1724204))

(assert (= (and b!1724204 res!773823) b!1724200))

(assert (= (and b!1724200 (not res!773824)) b!1724199))

(assert (= (and b!1724199 (not res!773826)) b!1724198))

(assert (= (or b!1724194 b!1724195 b!1724200) bm!109783))

(declare-fun m!2130687 () Bool)

(assert (=> b!1724192 m!2130687))

(declare-fun m!2130689 () Bool)

(assert (=> d!528274 m!2130689))

(declare-fun m!2130691 () Bool)

(assert (=> d!528274 m!2130691))

(assert (=> b!1724199 m!2130609))

(assert (=> b!1724199 m!2130609))

(declare-fun m!2130693 () Bool)

(assert (=> b!1724199 m!2130693))

(assert (=> bm!109783 m!2130689))

(assert (=> b!1724203 m!2130609))

(assert (=> b!1724203 m!2130609))

(assert (=> b!1724203 m!2130693))

(assert (=> b!1724197 m!2130613))

(assert (=> b!1724198 m!2130613))

(assert (=> b!1724202 m!2130613))

(assert (=> b!1724202 m!2130613))

(declare-fun m!2130695 () Bool)

(assert (=> b!1724202 m!2130695))

(assert (=> b!1724202 m!2130609))

(assert (=> b!1724202 m!2130695))

(assert (=> b!1724202 m!2130609))

(declare-fun m!2130697 () Bool)

(assert (=> b!1724202 m!2130697))

(assert (=> b!1723770 d!528274))

(declare-fun d!528276 () Bool)

(assert (=> d!528276 (matchR!2149 (rulesRegex!705 thiss!24550 rules!3447) (list!7628 (charsOf!1996 token!523)))))

(declare-fun lt!660136 () Unit!32723)

(declare-fun choose!10499 (LexerInterface!2976 List!18950 List!18949 Token!6260 Rule!6494 List!18949) Unit!32723)

(assert (=> d!528276 (= lt!660136 (choose!10499 thiss!24550 rules!3447 lt!659893 token!523 rule!422 Nil!18879))))

(assert (=> d!528276 (not (isEmpty!11873 rules!3447))))

(assert (=> d!528276 (= (lemmaMaxPrefixThenMatchesRulesRegex!96 thiss!24550 rules!3447 lt!659893 token!523 rule!422 Nil!18879) lt!660136)))

(declare-fun bs!402334 () Bool)

(assert (= bs!402334 d!528276))

(assert (=> bs!402334 m!2130043))

(declare-fun m!2130725 () Bool)

(assert (=> bs!402334 m!2130725))

(declare-fun m!2130727 () Bool)

(assert (=> bs!402334 m!2130727))

(assert (=> bs!402334 m!2130077))

(assert (=> bs!402334 m!2130725))

(declare-fun m!2130729 () Bool)

(assert (=> bs!402334 m!2130729))

(assert (=> bs!402334 m!2130147))

(assert (=> bs!402334 m!2130043))

(assert (=> bs!402334 m!2130077))

(assert (=> b!1723770 d!528276))

(declare-fun d!528286 () Bool)

(assert (=> d!528286 (= (isDefined!3061 lt!659872) (not (isEmpty!11876 lt!659872)))))

(declare-fun bs!402335 () Bool)

(assert (= bs!402335 d!528286))

(declare-fun m!2130731 () Bool)

(assert (=> bs!402335 m!2130731))

(assert (=> b!1723778 d!528286))

(declare-fun b!1724221 () Bool)

(declare-fun res!773848 () Bool)

(declare-fun e!1102938 () Bool)

(assert (=> b!1724221 (=> (not res!773848) (not e!1102938))))

(declare-fun lt!660137 () Option!3718)

(assert (=> b!1724221 (= res!773848 (= (value!105062 (_1!10685 (get!5609 lt!660137))) (apply!5152 (transformation!3347 (rule!5301 (_1!10685 (get!5609 lt!660137)))) (seqFromList!2321 (originalCharacters!4161 (_1!10685 (get!5609 lt!660137)))))))))

(declare-fun bm!109784 () Bool)

(declare-fun call!109789 () Option!3718)

(assert (=> bm!109784 (= call!109789 (maxPrefixOneRule!906 thiss!24550 (h!24281 rules!3447) lt!659893))))

(declare-fun b!1724222 () Bool)

(declare-fun res!773845 () Bool)

(assert (=> b!1724222 (=> (not res!773845) (not e!1102938))))

(assert (=> b!1724222 (= res!773845 (< (size!15003 (_2!10685 (get!5609 lt!660137))) (size!15003 lt!659893)))))

(declare-fun b!1724223 () Bool)

(declare-fun e!1102937 () Bool)

(assert (=> b!1724223 (= e!1102937 e!1102938)))

(declare-fun res!773844 () Bool)

(assert (=> b!1724223 (=> (not res!773844) (not e!1102938))))

(assert (=> b!1724223 (= res!773844 (isDefined!3061 lt!660137))))

(declare-fun b!1724224 () Bool)

(declare-fun e!1102936 () Option!3718)

(assert (=> b!1724224 (= e!1102936 call!109789)))

(declare-fun b!1724226 () Bool)

(assert (=> b!1724226 (= e!1102938 (contains!3369 rules!3447 (rule!5301 (_1!10685 (get!5609 lt!660137)))))))

(declare-fun b!1724227 () Bool)

(declare-fun res!773843 () Bool)

(assert (=> b!1724227 (=> (not res!773843) (not e!1102938))))

(assert (=> b!1724227 (= res!773843 (= (++!5172 (list!7628 (charsOf!1996 (_1!10685 (get!5609 lt!660137)))) (_2!10685 (get!5609 lt!660137))) lt!659893))))

(declare-fun b!1724228 () Bool)

(declare-fun res!773847 () Bool)

(assert (=> b!1724228 (=> (not res!773847) (not e!1102938))))

(assert (=> b!1724228 (= res!773847 (matchR!2149 (regex!3347 (rule!5301 (_1!10685 (get!5609 lt!660137)))) (list!7628 (charsOf!1996 (_1!10685 (get!5609 lt!660137))))))))

(declare-fun b!1724229 () Bool)

(declare-fun lt!660140 () Option!3718)

(declare-fun lt!660138 () Option!3718)

(assert (=> b!1724229 (= e!1102936 (ite (and ((_ is None!3717) lt!660140) ((_ is None!3717) lt!660138)) None!3717 (ite ((_ is None!3717) lt!660138) lt!660140 (ite ((_ is None!3717) lt!660140) lt!660138 (ite (>= (size!15002 (_1!10685 (v!25124 lt!660140))) (size!15002 (_1!10685 (v!25124 lt!660138)))) lt!660140 lt!660138)))))))

(assert (=> b!1724229 (= lt!660140 call!109789)))

(assert (=> b!1724229 (= lt!660138 (maxPrefix!1530 thiss!24550 (t!159853 rules!3447) lt!659893))))

(declare-fun b!1724225 () Bool)

(declare-fun res!773846 () Bool)

(assert (=> b!1724225 (=> (not res!773846) (not e!1102938))))

(assert (=> b!1724225 (= res!773846 (= (list!7628 (charsOf!1996 (_1!10685 (get!5609 lt!660137)))) (originalCharacters!4161 (_1!10685 (get!5609 lt!660137)))))))

(declare-fun d!528288 () Bool)

(assert (=> d!528288 e!1102937))

(declare-fun res!773842 () Bool)

(assert (=> d!528288 (=> res!773842 e!1102937)))

(assert (=> d!528288 (= res!773842 (isEmpty!11876 lt!660137))))

(assert (=> d!528288 (= lt!660137 e!1102936)))

(declare-fun c!281987 () Bool)

(assert (=> d!528288 (= c!281987 (and ((_ is Cons!18880) rules!3447) ((_ is Nil!18880) (t!159853 rules!3447))))))

(declare-fun lt!660139 () Unit!32723)

(declare-fun lt!660141 () Unit!32723)

(assert (=> d!528288 (= lt!660139 lt!660141)))

(assert (=> d!528288 (isPrefix!1588 lt!659893 lt!659893)))

(assert (=> d!528288 (= lt!660141 (lemmaIsPrefixRefl!1073 lt!659893 lt!659893))))

(assert (=> d!528288 (rulesValidInductive!1110 thiss!24550 rules!3447)))

(assert (=> d!528288 (= (maxPrefix!1530 thiss!24550 rules!3447 lt!659893) lt!660137)))

(assert (= (and d!528288 c!281987) b!1724224))

(assert (= (and d!528288 (not c!281987)) b!1724229))

(assert (= (or b!1724224 b!1724229) bm!109784))

(assert (= (and d!528288 (not res!773842)) b!1724223))

(assert (= (and b!1724223 res!773844) b!1724225))

(assert (= (and b!1724225 res!773846) b!1724222))

(assert (= (and b!1724222 res!773845) b!1724227))

(assert (= (and b!1724227 res!773843) b!1724221))

(assert (= (and b!1724221 res!773848) b!1724228))

(assert (= (and b!1724228 res!773847) b!1724226))

(declare-fun m!2130733 () Bool)

(assert (=> b!1724227 m!2130733))

(declare-fun m!2130735 () Bool)

(assert (=> b!1724227 m!2130735))

(assert (=> b!1724227 m!2130735))

(declare-fun m!2130737 () Bool)

(assert (=> b!1724227 m!2130737))

(assert (=> b!1724227 m!2130737))

(declare-fun m!2130739 () Bool)

(assert (=> b!1724227 m!2130739))

(declare-fun m!2130741 () Bool)

(assert (=> d!528288 m!2130741))

(declare-fun m!2130743 () Bool)

(assert (=> d!528288 m!2130743))

(declare-fun m!2130745 () Bool)

(assert (=> d!528288 m!2130745))

(assert (=> d!528288 m!2130065))

(declare-fun m!2130747 () Bool)

(assert (=> b!1724223 m!2130747))

(declare-fun m!2130749 () Bool)

(assert (=> bm!109784 m!2130749))

(assert (=> b!1724226 m!2130733))

(declare-fun m!2130751 () Bool)

(assert (=> b!1724226 m!2130751))

(declare-fun m!2130753 () Bool)

(assert (=> b!1724229 m!2130753))

(assert (=> b!1724221 m!2130733))

(declare-fun m!2130755 () Bool)

(assert (=> b!1724221 m!2130755))

(assert (=> b!1724221 m!2130755))

(declare-fun m!2130757 () Bool)

(assert (=> b!1724221 m!2130757))

(assert (=> b!1724222 m!2130733))

(declare-fun m!2130759 () Bool)

(assert (=> b!1724222 m!2130759))

(assert (=> b!1724222 m!2130513))

(assert (=> b!1724225 m!2130733))

(assert (=> b!1724225 m!2130735))

(assert (=> b!1724225 m!2130735))

(assert (=> b!1724225 m!2130737))

(assert (=> b!1724228 m!2130733))

(assert (=> b!1724228 m!2130735))

(assert (=> b!1724228 m!2130735))

(assert (=> b!1724228 m!2130737))

(assert (=> b!1724228 m!2130737))

(declare-fun m!2130761 () Bool)

(assert (=> b!1724228 m!2130761))

(assert (=> b!1723778 d!528288))

(declare-fun d!528290 () Bool)

(assert (=> d!528290 (= (list!7628 lt!659879) (list!7631 (c!281907 lt!659879)))))

(declare-fun bs!402336 () Bool)

(assert (= bs!402336 d!528290))

(declare-fun m!2130763 () Bool)

(assert (=> bs!402336 m!2130763))

(assert (=> b!1723778 d!528290))

(declare-fun d!528292 () Bool)

(declare-fun lt!660142 () BalanceConc!12502)

(assert (=> d!528292 (= (list!7628 lt!660142) (originalCharacters!4161 token!523))))

(assert (=> d!528292 (= lt!660142 (dynLambda!8729 (toChars!4713 (transformation!3347 (rule!5301 token!523))) (value!105062 token!523)))))

(assert (=> d!528292 (= (charsOf!1996 token!523) lt!660142)))

(declare-fun b_lambda!54777 () Bool)

(assert (=> (not b_lambda!54777) (not d!528292)))

(declare-fun t!159873 () Bool)

(declare-fun tb!102357 () Bool)

(assert (=> (and b!1723760 (= (toChars!4713 (transformation!3347 (rule!5301 token!523))) (toChars!4713 (transformation!3347 (rule!5301 token!523)))) t!159873) tb!102357))

(declare-fun b!1724230 () Bool)

(declare-fun e!1102939 () Bool)

(declare-fun tp!492078 () Bool)

(assert (=> b!1724230 (= e!1102939 (and (inv!24397 (c!281907 (dynLambda!8729 (toChars!4713 (transformation!3347 (rule!5301 token!523))) (value!105062 token!523)))) tp!492078))))

(declare-fun result!123036 () Bool)

(assert (=> tb!102357 (= result!123036 (and (inv!24398 (dynLambda!8729 (toChars!4713 (transformation!3347 (rule!5301 token!523))) (value!105062 token!523))) e!1102939))))

(assert (= tb!102357 b!1724230))

(declare-fun m!2130765 () Bool)

(assert (=> b!1724230 m!2130765))

(declare-fun m!2130767 () Bool)

(assert (=> tb!102357 m!2130767))

(assert (=> d!528292 t!159873))

(declare-fun b_and!126321 () Bool)

(assert (= b_and!126315 (and (=> t!159873 result!123036) b_and!126321)))

(declare-fun t!159875 () Bool)

(declare-fun tb!102359 () Bool)

(assert (=> (and b!1723768 (= (toChars!4713 (transformation!3347 rule!422)) (toChars!4713 (transformation!3347 (rule!5301 token!523)))) t!159875) tb!102359))

(declare-fun result!123038 () Bool)

(assert (= result!123038 result!123036))

(assert (=> d!528292 t!159875))

(declare-fun b_and!126323 () Bool)

(assert (= b_and!126317 (and (=> t!159875 result!123038) b_and!126323)))

(declare-fun tb!102361 () Bool)

(declare-fun t!159877 () Bool)

(assert (=> (and b!1723782 (= (toChars!4713 (transformation!3347 (h!24281 rules!3447))) (toChars!4713 (transformation!3347 (rule!5301 token!523)))) t!159877) tb!102361))

(declare-fun result!123040 () Bool)

(assert (= result!123040 result!123036))

(assert (=> d!528292 t!159877))

(declare-fun b_and!126325 () Bool)

(assert (= b_and!126319 (and (=> t!159877 result!123040) b_and!126325)))

(declare-fun m!2130769 () Bool)

(assert (=> d!528292 m!2130769))

(declare-fun m!2130771 () Bool)

(assert (=> d!528292 m!2130771))

(assert (=> b!1723778 d!528292))

(declare-fun b!1724251 () Bool)

(declare-fun e!1102954 () Bool)

(declare-fun e!1102952 () Bool)

(assert (=> b!1724251 (= e!1102954 e!1102952)))

(declare-fun c!281992 () Bool)

(assert (=> b!1724251 (= c!281992 ((_ is IntegerValue!10312) (value!105062 token!523)))))

(declare-fun b!1724252 () Bool)

(declare-fun inv!17 (TokenValue!3437) Bool)

(assert (=> b!1724252 (= e!1102952 (inv!17 (value!105062 token!523)))))

(declare-fun d!528294 () Bool)

(declare-fun c!281993 () Bool)

(assert (=> d!528294 (= c!281993 ((_ is IntegerValue!10311) (value!105062 token!523)))))

(assert (=> d!528294 (= (inv!21 (value!105062 token!523)) e!1102954)))

(declare-fun b!1724253 () Bool)

(declare-fun res!773861 () Bool)

(declare-fun e!1102953 () Bool)

(assert (=> b!1724253 (=> res!773861 e!1102953)))

(assert (=> b!1724253 (= res!773861 (not ((_ is IntegerValue!10313) (value!105062 token!523))))))

(assert (=> b!1724253 (= e!1102952 e!1102953)))

(declare-fun b!1724254 () Bool)

(declare-fun inv!15 (TokenValue!3437) Bool)

(assert (=> b!1724254 (= e!1102953 (inv!15 (value!105062 token!523)))))

(declare-fun b!1724255 () Bool)

(declare-fun inv!16 (TokenValue!3437) Bool)

(assert (=> b!1724255 (= e!1102954 (inv!16 (value!105062 token!523)))))

(assert (= (and d!528294 c!281993) b!1724255))

(assert (= (and d!528294 (not c!281993)) b!1724251))

(assert (= (and b!1724251 c!281992) b!1724252))

(assert (= (and b!1724251 (not c!281992)) b!1724253))

(assert (= (and b!1724253 (not res!773861)) b!1724254))

(declare-fun m!2130783 () Bool)

(assert (=> b!1724252 m!2130783))

(declare-fun m!2130785 () Bool)

(assert (=> b!1724254 m!2130785))

(declare-fun m!2130787 () Bool)

(assert (=> b!1724255 m!2130787))

(assert (=> b!1723756 d!528294))

(declare-fun d!528302 () Bool)

(declare-fun res!773864 () Bool)

(declare-fun e!1102957 () Bool)

(assert (=> d!528302 (=> (not res!773864) (not e!1102957))))

(declare-fun rulesValid!1250 (LexerInterface!2976 List!18950) Bool)

(assert (=> d!528302 (= res!773864 (rulesValid!1250 thiss!24550 rules!3447))))

(assert (=> d!528302 (= (rulesInvariant!2645 thiss!24550 rules!3447) e!1102957)))

(declare-fun b!1724258 () Bool)

(declare-datatypes ((List!18954 0))(
  ( (Nil!18884) (Cons!18884 (h!24285 String!21517) (t!159917 List!18954)) )
))
(declare-fun noDuplicateTag!1250 (LexerInterface!2976 List!18950 List!18954) Bool)

(assert (=> b!1724258 (= e!1102957 (noDuplicateTag!1250 thiss!24550 rules!3447 Nil!18884))))

(assert (= (and d!528302 res!773864) b!1724258))

(declare-fun m!2130789 () Bool)

(assert (=> d!528302 m!2130789))

(declare-fun m!2130791 () Bool)

(assert (=> b!1724258 m!2130791))

(assert (=> b!1723777 d!528302))

(declare-fun d!528304 () Bool)

(assert (=> d!528304 (= (isEmpty!11874 (_2!10685 lt!659870)) ((_ is Nil!18879) (_2!10685 lt!659870)))))

(assert (=> b!1723774 d!528304))

(declare-fun d!528306 () Bool)

(declare-fun lt!660149 () Bool)

(declare-fun content!2697 (List!18950) (InoxSet Rule!6494))

(assert (=> d!528306 (= lt!660149 (select (content!2697 rules!3447) rule!422))))

(declare-fun e!1102962 () Bool)

(assert (=> d!528306 (= lt!660149 e!1102962)))

(declare-fun res!773869 () Bool)

(assert (=> d!528306 (=> (not res!773869) (not e!1102962))))

(assert (=> d!528306 (= res!773869 ((_ is Cons!18880) rules!3447))))

(assert (=> d!528306 (= (contains!3369 rules!3447 rule!422) lt!660149)))

(declare-fun b!1724263 () Bool)

(declare-fun e!1102963 () Bool)

(assert (=> b!1724263 (= e!1102962 e!1102963)))

(declare-fun res!773870 () Bool)

(assert (=> b!1724263 (=> res!773870 e!1102963)))

(assert (=> b!1724263 (= res!773870 (= (h!24281 rules!3447) rule!422))))

(declare-fun b!1724264 () Bool)

(assert (=> b!1724264 (= e!1102963 (contains!3369 (t!159853 rules!3447) rule!422))))

(assert (= (and d!528306 res!773869) b!1724263))

(assert (= (and b!1724263 (not res!773870)) b!1724264))

(declare-fun m!2130793 () Bool)

(assert (=> d!528306 m!2130793))

(declare-fun m!2130795 () Bool)

(assert (=> d!528306 m!2130795))

(declare-fun m!2130797 () Bool)

(assert (=> b!1724264 m!2130797))

(assert (=> b!1723773 d!528306))

(declare-fun b!1724265 () Bool)

(declare-fun e!1102966 () Bool)

(declare-fun e!1102964 () Bool)

(assert (=> b!1724265 (= e!1102966 e!1102964)))

(declare-fun c!281994 () Bool)

(assert (=> b!1724265 (= c!281994 ((_ is IntegerValue!10312) (dynLambda!8730 (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) lt!659876)))))

(declare-fun b!1724266 () Bool)

(assert (=> b!1724266 (= e!1102964 (inv!17 (dynLambda!8730 (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) lt!659876)))))

(declare-fun d!528308 () Bool)

(declare-fun c!281995 () Bool)

(assert (=> d!528308 (= c!281995 ((_ is IntegerValue!10311) (dynLambda!8730 (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) lt!659876)))))

(assert (=> d!528308 (= (inv!21 (dynLambda!8730 (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) lt!659876)) e!1102966)))

(declare-fun b!1724267 () Bool)

(declare-fun res!773871 () Bool)

(declare-fun e!1102965 () Bool)

(assert (=> b!1724267 (=> res!773871 e!1102965)))

(assert (=> b!1724267 (= res!773871 (not ((_ is IntegerValue!10313) (dynLambda!8730 (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) lt!659876))))))

(assert (=> b!1724267 (= e!1102964 e!1102965)))

(declare-fun b!1724268 () Bool)

(assert (=> b!1724268 (= e!1102965 (inv!15 (dynLambda!8730 (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) lt!659876)))))

(declare-fun b!1724269 () Bool)

(assert (=> b!1724269 (= e!1102966 (inv!16 (dynLambda!8730 (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) lt!659876)))))

(assert (= (and d!528308 c!281995) b!1724269))

(assert (= (and d!528308 (not c!281995)) b!1724265))

(assert (= (and b!1724265 c!281994) b!1724266))

(assert (= (and b!1724265 (not c!281994)) b!1724267))

(assert (= (and b!1724267 (not res!773871)) b!1724268))

(declare-fun m!2130799 () Bool)

(assert (=> b!1724266 m!2130799))

(declare-fun m!2130801 () Bool)

(assert (=> b!1724268 m!2130801))

(declare-fun m!2130803 () Bool)

(assert (=> b!1724269 m!2130803))

(assert (=> tb!102333 d!528308))

(declare-fun d!528310 () Bool)

(assert (=> d!528310 true))

(declare-fun lt!660161 () Bool)

(declare-fun lambda!69197 () Int)

(declare-fun forall!4255 (List!18950 Int) Bool)

(assert (=> d!528310 (= lt!660161 (forall!4255 rules!3447 lambda!69197))))

(declare-fun e!1102984 () Bool)

(assert (=> d!528310 (= lt!660161 e!1102984)))

(declare-fun res!773883 () Bool)

(assert (=> d!528310 (=> res!773883 e!1102984)))

(assert (=> d!528310 (= res!773883 (not ((_ is Cons!18880) rules!3447)))))

(assert (=> d!528310 (= (rulesValidInductive!1110 thiss!24550 rules!3447) lt!660161)))

(declare-fun b!1724292 () Bool)

(declare-fun e!1102983 () Bool)

(assert (=> b!1724292 (= e!1102984 e!1102983)))

(declare-fun res!773882 () Bool)

(assert (=> b!1724292 (=> (not res!773882) (not e!1102983))))

(assert (=> b!1724292 (= res!773882 (ruleValid!846 thiss!24550 (h!24281 rules!3447)))))

(declare-fun b!1724293 () Bool)

(assert (=> b!1724293 (= e!1102983 (rulesValidInductive!1110 thiss!24550 (t!159853 rules!3447)))))

(assert (= (and d!528310 (not res!773883)) b!1724292))

(assert (= (and b!1724292 res!773882) b!1724293))

(declare-fun m!2130817 () Bool)

(assert (=> d!528310 m!2130817))

(declare-fun m!2130819 () Bool)

(assert (=> b!1724292 m!2130819))

(declare-fun m!2130821 () Bool)

(assert (=> b!1724293 m!2130821))

(assert (=> b!1723775 d!528310))

(declare-fun b!1724300 () Bool)

(declare-fun e!1102988 () Bool)

(declare-fun lt!660163 () Bool)

(assert (=> b!1724300 (= e!1102988 (not lt!660163))))

(declare-fun b!1724301 () Bool)

(declare-fun e!1102989 () Bool)

(assert (=> b!1724301 (= e!1102989 (nullable!1410 lt!659896))))

(declare-fun b!1724302 () Bool)

(declare-fun e!1102994 () Bool)

(assert (=> b!1724302 (= e!1102994 e!1102988)))

(declare-fun c!282003 () Bool)

(assert (=> b!1724302 (= c!282003 ((_ is EmptyLang!4675) lt!659896))))

(declare-fun b!1724303 () Bool)

(declare-fun call!109790 () Bool)

(assert (=> b!1724303 (= e!1102994 (= lt!660163 call!109790))))

(declare-fun bm!109785 () Bool)

(assert (=> bm!109785 (= call!109790 (isEmpty!11874 lt!659897))))

(declare-fun b!1724305 () Bool)

(declare-fun res!773888 () Bool)

(declare-fun e!1102993 () Bool)

(assert (=> b!1724305 (=> res!773888 e!1102993)))

(assert (=> b!1724305 (= res!773888 (not ((_ is ElementMatch!4675) lt!659896)))))

(assert (=> b!1724305 (= e!1102988 e!1102993)))

(declare-fun b!1724306 () Bool)

(declare-fun e!1102992 () Bool)

(assert (=> b!1724306 (= e!1102992 (= (head!3904 lt!659897) (c!281906 lt!659896)))))

(declare-fun b!1724307 () Bool)

(declare-fun e!1102990 () Bool)

(assert (=> b!1724307 (= e!1102990 (not (= (head!3904 lt!659897) (c!281906 lt!659896))))))

(declare-fun b!1724308 () Bool)

(declare-fun res!773894 () Bool)

(assert (=> b!1724308 (=> res!773894 e!1102990)))

(assert (=> b!1724308 (= res!773894 (not (isEmpty!11874 (tail!2575 lt!659897))))))

(declare-fun b!1724309 () Bool)

(declare-fun e!1102991 () Bool)

(assert (=> b!1724309 (= e!1102991 e!1102990)))

(declare-fun res!773892 () Bool)

(assert (=> b!1724309 (=> res!773892 e!1102990)))

(assert (=> b!1724309 (= res!773892 call!109790)))

(declare-fun b!1724310 () Bool)

(declare-fun res!773890 () Bool)

(assert (=> b!1724310 (=> res!773890 e!1102993)))

(assert (=> b!1724310 (= res!773890 e!1102992)))

(declare-fun res!773889 () Bool)

(assert (=> b!1724310 (=> (not res!773889) (not e!1102992))))

(assert (=> b!1724310 (= res!773889 lt!660163)))

(declare-fun b!1724311 () Bool)

(assert (=> b!1724311 (= e!1102989 (matchR!2149 (derivativeStep!1178 lt!659896 (head!3904 lt!659897)) (tail!2575 lt!659897)))))

(declare-fun b!1724304 () Bool)

(declare-fun res!773893 () Bool)

(assert (=> b!1724304 (=> (not res!773893) (not e!1102992))))

(assert (=> b!1724304 (= res!773893 (not call!109790))))

(declare-fun d!528314 () Bool)

(assert (=> d!528314 e!1102994))

(declare-fun c!282004 () Bool)

(assert (=> d!528314 (= c!282004 ((_ is EmptyExpr!4675) lt!659896))))

(assert (=> d!528314 (= lt!660163 e!1102989)))

(declare-fun c!282002 () Bool)

(assert (=> d!528314 (= c!282002 (isEmpty!11874 lt!659897))))

(assert (=> d!528314 (validRegex!1884 lt!659896)))

(assert (=> d!528314 (= (matchR!2149 lt!659896 lt!659897) lt!660163)))

(declare-fun b!1724312 () Bool)

(declare-fun res!773895 () Bool)

(assert (=> b!1724312 (=> (not res!773895) (not e!1102992))))

(assert (=> b!1724312 (= res!773895 (isEmpty!11874 (tail!2575 lt!659897)))))

(declare-fun b!1724313 () Bool)

(assert (=> b!1724313 (= e!1102993 e!1102991)))

(declare-fun res!773891 () Bool)

(assert (=> b!1724313 (=> (not res!773891) (not e!1102991))))

(assert (=> b!1724313 (= res!773891 (not lt!660163))))

(assert (= (and d!528314 c!282002) b!1724301))

(assert (= (and d!528314 (not c!282002)) b!1724311))

(assert (= (and d!528314 c!282004) b!1724303))

(assert (= (and d!528314 (not c!282004)) b!1724302))

(assert (= (and b!1724302 c!282003) b!1724300))

(assert (= (and b!1724302 (not c!282003)) b!1724305))

(assert (= (and b!1724305 (not res!773888)) b!1724310))

(assert (= (and b!1724310 res!773889) b!1724304))

(assert (= (and b!1724304 res!773893) b!1724312))

(assert (= (and b!1724312 res!773895) b!1724306))

(assert (= (and b!1724310 (not res!773890)) b!1724313))

(assert (= (and b!1724313 res!773891) b!1724309))

(assert (= (and b!1724309 (not res!773892)) b!1724308))

(assert (= (and b!1724308 (not res!773894)) b!1724307))

(assert (= (or b!1724303 b!1724304 b!1724309) bm!109785))

(assert (=> b!1724301 m!2130687))

(assert (=> d!528314 m!2130231))

(assert (=> d!528314 m!2130691))

(assert (=> b!1724308 m!2130235))

(assert (=> b!1724308 m!2130235))

(assert (=> b!1724308 m!2130237))

(assert (=> bm!109785 m!2130231))

(assert (=> b!1724312 m!2130235))

(assert (=> b!1724312 m!2130235))

(assert (=> b!1724312 m!2130237))

(assert (=> b!1724306 m!2130239))

(assert (=> b!1724307 m!2130239))

(assert (=> b!1724311 m!2130239))

(assert (=> b!1724311 m!2130239))

(declare-fun m!2130831 () Bool)

(assert (=> b!1724311 m!2130831))

(assert (=> b!1724311 m!2130235))

(assert (=> b!1724311 m!2130831))

(assert (=> b!1724311 m!2130235))

(declare-fun m!2130833 () Bool)

(assert (=> b!1724311 m!2130833))

(assert (=> b!1723775 d!528314))

(declare-fun d!528318 () Bool)

(assert (=> d!528318 (matchR!2149 (rulesRegex!705 thiss!24550 rules!3447) (list!7628 (charsOf!1996 (_1!10685 lt!659883))))))

(declare-fun lt!660164 () Unit!32723)

(assert (=> d!528318 (= lt!660164 (choose!10499 thiss!24550 rules!3447 lt!659877 (_1!10685 lt!659883) (rule!5301 (_1!10685 lt!659883)) (_2!10685 lt!659883)))))

(assert (=> d!528318 (not (isEmpty!11873 rules!3447))))

(assert (=> d!528318 (= (lemmaMaxPrefixThenMatchesRulesRegex!96 thiss!24550 rules!3447 lt!659877 (_1!10685 lt!659883) (rule!5301 (_1!10685 lt!659883)) (_2!10685 lt!659883)) lt!660164)))

(declare-fun bs!402337 () Bool)

(assert (= bs!402337 d!528318))

(assert (=> bs!402337 m!2130043))

(assert (=> bs!402337 m!2130085))

(declare-fun m!2130835 () Bool)

(assert (=> bs!402337 m!2130835))

(assert (=> bs!402337 m!2130083))

(assert (=> bs!402337 m!2130085))

(declare-fun m!2130837 () Bool)

(assert (=> bs!402337 m!2130837))

(assert (=> bs!402337 m!2130147))

(assert (=> bs!402337 m!2130043))

(assert (=> bs!402337 m!2130083))

(assert (=> b!1723775 d!528318))

(declare-fun d!528320 () Bool)

(declare-fun res!773900 () Bool)

(declare-fun e!1103000 () Bool)

(assert (=> d!528320 (=> (not res!773900) (not e!1103000))))

(assert (=> d!528320 (= res!773900 (not (isEmpty!11874 (originalCharacters!4161 token!523))))))

(assert (=> d!528320 (= (inv!24396 token!523) e!1103000)))

(declare-fun b!1724324 () Bool)

(declare-fun res!773901 () Bool)

(assert (=> b!1724324 (=> (not res!773901) (not e!1103000))))

(assert (=> b!1724324 (= res!773901 (= (originalCharacters!4161 token!523) (list!7628 (dynLambda!8729 (toChars!4713 (transformation!3347 (rule!5301 token!523))) (value!105062 token!523)))))))

(declare-fun b!1724325 () Bool)

(assert (=> b!1724325 (= e!1103000 (= (size!15002 token!523) (size!15003 (originalCharacters!4161 token!523))))))

(assert (= (and d!528320 res!773900) b!1724324))

(assert (= (and b!1724324 res!773901) b!1724325))

(declare-fun b_lambda!54779 () Bool)

(assert (=> (not b_lambda!54779) (not b!1724324)))

(assert (=> b!1724324 t!159873))

(declare-fun b_and!126327 () Bool)

(assert (= b_and!126321 (and (=> t!159873 result!123036) b_and!126327)))

(assert (=> b!1724324 t!159875))

(declare-fun b_and!126329 () Bool)

(assert (= b_and!126323 (and (=> t!159875 result!123038) b_and!126329)))

(assert (=> b!1724324 t!159877))

(declare-fun b_and!126331 () Bool)

(assert (= b_and!126325 (and (=> t!159877 result!123040) b_and!126331)))

(declare-fun m!2130851 () Bool)

(assert (=> d!528320 m!2130851))

(assert (=> b!1724324 m!2130771))

(assert (=> b!1724324 m!2130771))

(declare-fun m!2130859 () Bool)

(assert (=> b!1724324 m!2130859))

(declare-fun m!2130863 () Bool)

(assert (=> b!1724325 m!2130863))

(assert (=> start!169038 d!528320))

(declare-fun d!528324 () Bool)

(assert (=> d!528324 (= (isEmpty!11874 suffix!1421) ((_ is Nil!18879) suffix!1421))))

(assert (=> b!1723781 d!528324))

(declare-fun d!528328 () Bool)

(assert (=> d!528328 (= (inv!24390 (tag!3661 (rule!5301 token!523))) (= (mod (str.len (value!105061 (tag!3661 (rule!5301 token!523)))) 2) 0))))

(assert (=> b!1723762 d!528328))

(declare-fun d!528332 () Bool)

(declare-fun res!773906 () Bool)

(declare-fun e!1103005 () Bool)

(assert (=> d!528332 (=> (not res!773906) (not e!1103005))))

(declare-fun semiInverseModEq!1323 (Int Int) Bool)

(assert (=> d!528332 (= res!773906 (semiInverseModEq!1323 (toChars!4713 (transformation!3347 (rule!5301 token!523))) (toValue!4854 (transformation!3347 (rule!5301 token!523)))))))

(assert (=> d!528332 (= (inv!24395 (transformation!3347 (rule!5301 token!523))) e!1103005)))

(declare-fun b!1724332 () Bool)

(declare-fun equivClasses!1264 (Int Int) Bool)

(assert (=> b!1724332 (= e!1103005 (equivClasses!1264 (toChars!4713 (transformation!3347 (rule!5301 token!523))) (toValue!4854 (transformation!3347 (rule!5301 token!523)))))))

(assert (= (and d!528332 res!773906) b!1724332))

(declare-fun m!2130867 () Bool)

(assert (=> d!528332 m!2130867))

(declare-fun m!2130869 () Bool)

(assert (=> b!1724332 m!2130869))

(assert (=> b!1723762 d!528332))

(declare-fun d!528334 () Bool)

(assert (=> d!528334 (= (list!7628 (dynLambda!8729 (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) (dynLambda!8730 (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) lt!659876))) (list!7631 (c!281907 (dynLambda!8729 (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) (dynLambda!8730 (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) lt!659876)))))))

(declare-fun bs!402338 () Bool)

(assert (= bs!402338 d!528334))

(declare-fun m!2130871 () Bool)

(assert (=> bs!402338 m!2130871))

(assert (=> b!1723783 d!528334))

(declare-fun bs!402340 () Bool)

(declare-fun d!528336 () Bool)

(assert (= bs!402340 (and d!528336 b!1723780)))

(declare-fun lambda!69203 () Int)

(assert (=> bs!402340 (= lambda!69203 lambda!69188)))

(declare-fun b!1724357 () Bool)

(declare-fun e!1103018 () Bool)

(assert (=> b!1724357 (= e!1103018 true)))

(assert (=> d!528336 e!1103018))

(assert (= d!528336 b!1724357))

(assert (=> b!1724357 (< (dynLambda!8726 order!11543 (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883))))) (dynLambda!8727 order!11545 lambda!69203))))

(assert (=> b!1724357 (< (dynLambda!8728 order!11547 (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883))))) (dynLambda!8727 order!11545 lambda!69203))))

(assert (=> d!528336 (= (list!7628 (dynLambda!8729 (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) (dynLambda!8730 (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) lt!659876))) (list!7628 lt!659876))))

(declare-fun lt!660172 () Unit!32723)

(declare-fun ForallOf!266 (Int BalanceConc!12502) Unit!32723)

(assert (=> d!528336 (= lt!660172 (ForallOf!266 lambda!69203 lt!659876))))

(assert (=> d!528336 (= (lemmaSemiInverse!493 (transformation!3347 (rule!5301 (_1!10685 lt!659883))) lt!659876) lt!660172)))

(declare-fun b_lambda!54781 () Bool)

(assert (=> (not b_lambda!54781) (not d!528336)))

(assert (=> d!528336 t!159840))

(declare-fun b_and!126333 () Bool)

(assert (= b_and!126327 (and (=> t!159840 result!123004) b_and!126333)))

(assert (=> d!528336 t!159842))

(declare-fun b_and!126335 () Bool)

(assert (= b_and!126329 (and (=> t!159842 result!123006) b_and!126335)))

(assert (=> d!528336 t!159844))

(declare-fun b_and!126337 () Bool)

(assert (= b_and!126331 (and (=> t!159844 result!123008) b_and!126337)))

(declare-fun b_lambda!54783 () Bool)

(assert (=> (not b_lambda!54783) (not d!528336)))

(assert (=> d!528336 t!159846))

(declare-fun b_and!126339 () Bool)

(assert (= b_and!126291 (and (=> t!159846 result!123010) b_and!126339)))

(assert (=> d!528336 t!159848))

(declare-fun b_and!126341 () Bool)

(assert (= b_and!126293 (and (=> t!159848 result!123014) b_and!126341)))

(assert (=> d!528336 t!159850))

(declare-fun b_and!126343 () Bool)

(assert (= b_and!126295 (and (=> t!159850 result!123016) b_and!126343)))

(assert (=> d!528336 m!2130045))

(assert (=> d!528336 m!2130107))

(assert (=> d!528336 m!2130045))

(assert (=> d!528336 m!2130047))

(assert (=> d!528336 m!2130047))

(assert (=> d!528336 m!2130049))

(declare-fun m!2130889 () Bool)

(assert (=> d!528336 m!2130889))

(assert (=> b!1723783 d!528336))

(declare-fun d!528348 () Bool)

(assert (=> d!528348 (= (inv!24398 (dynLambda!8729 (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) (value!105062 (_1!10685 lt!659883)))) (isBalanced!1964 (c!281907 (dynLambda!8729 (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) (value!105062 (_1!10685 lt!659883))))))))

(declare-fun bs!402342 () Bool)

(assert (= bs!402342 d!528348))

(declare-fun m!2130891 () Bool)

(assert (=> bs!402342 m!2130891))

(assert (=> tb!102321 d!528348))

(declare-fun d!528350 () Bool)

(assert (=> d!528350 (= (apply!5152 (transformation!3347 (rule!5301 (_1!10685 lt!659883))) (seqFromList!2321 lt!659897)) (dynLambda!8730 (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) (seqFromList!2321 lt!659897)))))

(declare-fun b_lambda!54785 () Bool)

(assert (=> (not b_lambda!54785) (not d!528350)))

(declare-fun t!159879 () Bool)

(declare-fun tb!102363 () Bool)

(assert (=> (and b!1723760 (= (toValue!4854 (transformation!3347 (rule!5301 token!523))) (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883))))) t!159879) tb!102363))

(declare-fun result!123042 () Bool)

(assert (=> tb!102363 (= result!123042 (inv!21 (dynLambda!8730 (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) (seqFromList!2321 lt!659897))))))

(declare-fun m!2130893 () Bool)

(assert (=> tb!102363 m!2130893))

(assert (=> d!528350 t!159879))

(declare-fun b_and!126345 () Bool)

(assert (= b_and!126339 (and (=> t!159879 result!123042) b_and!126345)))

(declare-fun tb!102365 () Bool)

(declare-fun t!159881 () Bool)

(assert (=> (and b!1723768 (= (toValue!4854 (transformation!3347 rule!422)) (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883))))) t!159881) tb!102365))

(declare-fun result!123044 () Bool)

(assert (= result!123044 result!123042))

(assert (=> d!528350 t!159881))

(declare-fun b_and!126347 () Bool)

(assert (= b_and!126341 (and (=> t!159881 result!123044) b_and!126347)))

(declare-fun tb!102367 () Bool)

(declare-fun t!159883 () Bool)

(assert (=> (and b!1723782 (= (toValue!4854 (transformation!3347 (h!24281 rules!3447))) (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883))))) t!159883) tb!102367))

(declare-fun result!123046 () Bool)

(assert (= result!123046 result!123042))

(assert (=> d!528350 t!159883))

(declare-fun b_and!126349 () Bool)

(assert (= b_and!126343 (and (=> t!159883 result!123046) b_and!126349)))

(assert (=> d!528350 m!2130119))

(declare-fun m!2130895 () Bool)

(assert (=> d!528350 m!2130895))

(assert (=> b!1723761 d!528350))

(declare-fun d!528352 () Bool)

(assert (=> d!528352 (= (maxPrefixOneRule!906 thiss!24550 (rule!5301 (_1!10685 lt!659883)) lt!659877) (Some!3717 (tuple2!18567 (Token!6261 (apply!5152 (transformation!3347 (rule!5301 (_1!10685 lt!659883))) (seqFromList!2321 lt!659897)) (rule!5301 (_1!10685 lt!659883)) (size!15003 lt!659897) lt!659897) (_2!10685 lt!659883))))))

(declare-fun lt!660186 () Unit!32723)

(declare-fun choose!10502 (LexerInterface!2976 List!18950 List!18949 List!18949 List!18949 Rule!6494) Unit!32723)

(assert (=> d!528352 (= lt!660186 (choose!10502 thiss!24550 rules!3447 lt!659897 lt!659877 (_2!10685 lt!659883) (rule!5301 (_1!10685 lt!659883))))))

(assert (=> d!528352 (not (isEmpty!11873 rules!3447))))

(assert (=> d!528352 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!305 thiss!24550 rules!3447 lt!659897 lt!659877 (_2!10685 lt!659883) (rule!5301 (_1!10685 lt!659883))) lt!660186)))

(declare-fun bs!402347 () Bool)

(assert (= bs!402347 d!528352))

(assert (=> bs!402347 m!2130119))

(declare-fun m!2130933 () Bool)

(assert (=> bs!402347 m!2130933))

(assert (=> bs!402347 m!2130147))

(assert (=> bs!402347 m!2130119))

(assert (=> bs!402347 m!2130121))

(assert (=> bs!402347 m!2130129))

(assert (=> bs!402347 m!2130131))

(assert (=> b!1723761 d!528352))

(declare-fun d!528374 () Bool)

(declare-fun lt!660189 () Int)

(assert (=> d!528374 (>= lt!660189 0)))

(declare-fun e!1103045 () Int)

(assert (=> d!528374 (= lt!660189 e!1103045)))

(declare-fun c!282021 () Bool)

(assert (=> d!528374 (= c!282021 ((_ is Nil!18879) lt!659897))))

(assert (=> d!528374 (= (size!15003 lt!659897) lt!660189)))

(declare-fun b!1724401 () Bool)

(assert (=> b!1724401 (= e!1103045 0)))

(declare-fun b!1724402 () Bool)

(assert (=> b!1724402 (= e!1103045 (+ 1 (size!15003 (t!159852 lt!659897))))))

(assert (= (and d!528374 c!282021) b!1724401))

(assert (= (and d!528374 (not c!282021)) b!1724402))

(declare-fun m!2130935 () Bool)

(assert (=> b!1724402 m!2130935))

(assert (=> b!1723761 d!528374))

(declare-fun d!528376 () Bool)

(declare-fun lt!660193 () List!18949)

(assert (=> d!528376 (= (++!5172 lt!659897 lt!660193) lt!659877)))

(declare-fun e!1103052 () List!18949)

(assert (=> d!528376 (= lt!660193 e!1103052)))

(declare-fun c!282024 () Bool)

(assert (=> d!528376 (= c!282024 ((_ is Cons!18879) lt!659897))))

(assert (=> d!528376 (>= (size!15003 lt!659877) (size!15003 lt!659897))))

(assert (=> d!528376 (= (getSuffix!782 lt!659877 lt!659897) lt!660193)))

(declare-fun b!1724412 () Bool)

(assert (=> b!1724412 (= e!1103052 (getSuffix!782 (tail!2575 lt!659877) (t!159852 lt!659897)))))

(declare-fun b!1724413 () Bool)

(assert (=> b!1724413 (= e!1103052 lt!659877)))

(assert (= (and d!528376 c!282024) b!1724412))

(assert (= (and d!528376 (not c!282024)) b!1724413))

(declare-fun m!2130945 () Bool)

(assert (=> d!528376 m!2130945))

(assert (=> d!528376 m!2130455))

(assert (=> d!528376 m!2130131))

(assert (=> b!1724412 m!2130457))

(assert (=> b!1724412 m!2130457))

(declare-fun m!2130947 () Bool)

(assert (=> b!1724412 m!2130947))

(assert (=> b!1723761 d!528376))

(declare-fun d!528382 () Bool)

(assert (=> d!528382 (= (seqFromList!2321 lt!659897) (fromListB!1063 lt!659897))))

(declare-fun bs!402348 () Bool)

(assert (= bs!402348 d!528382))

(declare-fun m!2130949 () Bool)

(assert (=> bs!402348 m!2130949))

(assert (=> b!1723761 d!528382))

(declare-fun d!528384 () Bool)

(declare-fun e!1103090 () Bool)

(assert (=> d!528384 e!1103090))

(declare-fun res!773965 () Bool)

(assert (=> d!528384 (=> res!773965 e!1103090)))

(declare-fun lt!660209 () Option!3718)

(assert (=> d!528384 (= res!773965 (isEmpty!11876 lt!660209))))

(declare-fun e!1103092 () Option!3718)

(assert (=> d!528384 (= lt!660209 e!1103092)))

(declare-fun c!282027 () Bool)

(declare-datatypes ((tuple2!18574 0))(
  ( (tuple2!18575 (_1!10689 List!18949) (_2!10689 List!18949)) )
))
(declare-fun lt!660208 () tuple2!18574)

(assert (=> d!528384 (= c!282027 (isEmpty!11874 (_1!10689 lt!660208)))))

(declare-fun findLongestMatch!328 (Regex!4675 List!18949) tuple2!18574)

(assert (=> d!528384 (= lt!660208 (findLongestMatch!328 (regex!3347 (rule!5301 (_1!10685 lt!659883))) lt!659877))))

(assert (=> d!528384 (ruleValid!846 thiss!24550 (rule!5301 (_1!10685 lt!659883)))))

(assert (=> d!528384 (= (maxPrefixOneRule!906 thiss!24550 (rule!5301 (_1!10685 lt!659883)) lt!659877) lt!660209)))

(declare-fun b!1724485 () Bool)

(declare-fun e!1103093 () Bool)

(assert (=> b!1724485 (= e!1103093 (= (size!15002 (_1!10685 (get!5609 lt!660209))) (size!15003 (originalCharacters!4161 (_1!10685 (get!5609 lt!660209))))))))

(declare-fun b!1724486 () Bool)

(assert (=> b!1724486 (= e!1103090 e!1103093)))

(declare-fun res!773962 () Bool)

(assert (=> b!1724486 (=> (not res!773962) (not e!1103093))))

(assert (=> b!1724486 (= res!773962 (matchR!2149 (regex!3347 (rule!5301 (_1!10685 lt!659883))) (list!7628 (charsOf!1996 (_1!10685 (get!5609 lt!660209))))))))

(declare-fun b!1724487 () Bool)

(assert (=> b!1724487 (= e!1103092 (Some!3717 (tuple2!18567 (Token!6261 (apply!5152 (transformation!3347 (rule!5301 (_1!10685 lt!659883))) (seqFromList!2321 (_1!10689 lt!660208))) (rule!5301 (_1!10685 lt!659883)) (size!15004 (seqFromList!2321 (_1!10689 lt!660208))) (_1!10689 lt!660208)) (_2!10689 lt!660208))))))

(declare-fun lt!660206 () Unit!32723)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!385 (Regex!4675 List!18949) Unit!32723)

(assert (=> b!1724487 (= lt!660206 (longestMatchIsAcceptedByMatchOrIsEmpty!385 (regex!3347 (rule!5301 (_1!10685 lt!659883))) lt!659877))))

(declare-fun res!773961 () Bool)

(declare-fun findLongestMatchInner!401 (Regex!4675 List!18949 Int List!18949 List!18949 Int) tuple2!18574)

(assert (=> b!1724487 (= res!773961 (isEmpty!11874 (_1!10689 (findLongestMatchInner!401 (regex!3347 (rule!5301 (_1!10685 lt!659883))) Nil!18879 (size!15003 Nil!18879) lt!659877 lt!659877 (size!15003 lt!659877)))))))

(declare-fun e!1103091 () Bool)

(assert (=> b!1724487 (=> res!773961 e!1103091)))

(assert (=> b!1724487 e!1103091))

(declare-fun lt!660207 () Unit!32723)

(assert (=> b!1724487 (= lt!660207 lt!660206)))

(declare-fun lt!660205 () Unit!32723)

(assert (=> b!1724487 (= lt!660205 (lemmaSemiInverse!493 (transformation!3347 (rule!5301 (_1!10685 lt!659883))) (seqFromList!2321 (_1!10689 lt!660208))))))

(declare-fun b!1724488 () Bool)

(declare-fun res!773966 () Bool)

(assert (=> b!1724488 (=> (not res!773966) (not e!1103093))))

(assert (=> b!1724488 (= res!773966 (= (++!5172 (list!7628 (charsOf!1996 (_1!10685 (get!5609 lt!660209)))) (_2!10685 (get!5609 lt!660209))) lt!659877))))

(declare-fun b!1724489 () Bool)

(declare-fun res!773964 () Bool)

(assert (=> b!1724489 (=> (not res!773964) (not e!1103093))))

(assert (=> b!1724489 (= res!773964 (= (rule!5301 (_1!10685 (get!5609 lt!660209))) (rule!5301 (_1!10685 lt!659883))))))

(declare-fun b!1724490 () Bool)

(assert (=> b!1724490 (= e!1103091 (matchR!2149 (regex!3347 (rule!5301 (_1!10685 lt!659883))) (_1!10689 (findLongestMatchInner!401 (regex!3347 (rule!5301 (_1!10685 lt!659883))) Nil!18879 (size!15003 Nil!18879) lt!659877 lt!659877 (size!15003 lt!659877)))))))

(declare-fun b!1724491 () Bool)

(declare-fun res!773960 () Bool)

(assert (=> b!1724491 (=> (not res!773960) (not e!1103093))))

(assert (=> b!1724491 (= res!773960 (< (size!15003 (_2!10685 (get!5609 lt!660209))) (size!15003 lt!659877)))))

(declare-fun b!1724492 () Bool)

(assert (=> b!1724492 (= e!1103092 None!3717)))

(declare-fun b!1724493 () Bool)

(declare-fun res!773963 () Bool)

(assert (=> b!1724493 (=> (not res!773963) (not e!1103093))))

(assert (=> b!1724493 (= res!773963 (= (value!105062 (_1!10685 (get!5609 lt!660209))) (apply!5152 (transformation!3347 (rule!5301 (_1!10685 (get!5609 lt!660209)))) (seqFromList!2321 (originalCharacters!4161 (_1!10685 (get!5609 lt!660209)))))))))

(assert (= (and d!528384 c!282027) b!1724492))

(assert (= (and d!528384 (not c!282027)) b!1724487))

(assert (= (and b!1724487 (not res!773961)) b!1724490))

(assert (= (and d!528384 (not res!773965)) b!1724486))

(assert (= (and b!1724486 res!773962) b!1724488))

(assert (= (and b!1724488 res!773966) b!1724491))

(assert (= (and b!1724491 res!773960) b!1724489))

(assert (= (and b!1724489 res!773964) b!1724493))

(assert (= (and b!1724493 res!773963) b!1724485))

(declare-fun m!2130971 () Bool)

(assert (=> b!1724490 m!2130971))

(assert (=> b!1724490 m!2130455))

(assert (=> b!1724490 m!2130971))

(assert (=> b!1724490 m!2130455))

(declare-fun m!2130973 () Bool)

(assert (=> b!1724490 m!2130973))

(declare-fun m!2130975 () Bool)

(assert (=> b!1724490 m!2130975))

(declare-fun m!2130977 () Bool)

(assert (=> d!528384 m!2130977))

(declare-fun m!2130979 () Bool)

(assert (=> d!528384 m!2130979))

(declare-fun m!2130981 () Bool)

(assert (=> d!528384 m!2130981))

(declare-fun m!2130983 () Bool)

(assert (=> d!528384 m!2130983))

(declare-fun m!2130985 () Bool)

(assert (=> b!1724488 m!2130985))

(declare-fun m!2130987 () Bool)

(assert (=> b!1724488 m!2130987))

(assert (=> b!1724488 m!2130987))

(declare-fun m!2130989 () Bool)

(assert (=> b!1724488 m!2130989))

(assert (=> b!1724488 m!2130989))

(declare-fun m!2130991 () Bool)

(assert (=> b!1724488 m!2130991))

(declare-fun m!2130993 () Bool)

(assert (=> b!1724487 m!2130993))

(declare-fun m!2130995 () Bool)

(assert (=> b!1724487 m!2130995))

(assert (=> b!1724487 m!2130993))

(declare-fun m!2130997 () Bool)

(assert (=> b!1724487 m!2130997))

(declare-fun m!2130999 () Bool)

(assert (=> b!1724487 m!2130999))

(assert (=> b!1724487 m!2130993))

(declare-fun m!2131001 () Bool)

(assert (=> b!1724487 m!2131001))

(declare-fun m!2131003 () Bool)

(assert (=> b!1724487 m!2131003))

(assert (=> b!1724487 m!2130993))

(assert (=> b!1724487 m!2130455))

(assert (=> b!1724487 m!2130971))

(assert (=> b!1724487 m!2130971))

(assert (=> b!1724487 m!2130455))

(assert (=> b!1724487 m!2130973))

(assert (=> b!1724491 m!2130985))

(declare-fun m!2131005 () Bool)

(assert (=> b!1724491 m!2131005))

(assert (=> b!1724491 m!2130455))

(assert (=> b!1724485 m!2130985))

(declare-fun m!2131007 () Bool)

(assert (=> b!1724485 m!2131007))

(assert (=> b!1724489 m!2130985))

(assert (=> b!1724493 m!2130985))

(declare-fun m!2131009 () Bool)

(assert (=> b!1724493 m!2131009))

(assert (=> b!1724493 m!2131009))

(declare-fun m!2131011 () Bool)

(assert (=> b!1724493 m!2131011))

(assert (=> b!1724486 m!2130985))

(assert (=> b!1724486 m!2130987))

(assert (=> b!1724486 m!2130987))

(assert (=> b!1724486 m!2130989))

(assert (=> b!1724486 m!2130989))

(declare-fun m!2131013 () Bool)

(assert (=> b!1724486 m!2131013))

(assert (=> b!1723761 d!528384))

(declare-fun d!528386 () Bool)

(assert (=> d!528386 (= (_2!10685 lt!659883) lt!659895)))

(declare-fun lt!660212 () Unit!32723)

(declare-fun choose!10503 (List!18949 List!18949 List!18949 List!18949 List!18949) Unit!32723)

(assert (=> d!528386 (= lt!660212 (choose!10503 lt!659897 (_2!10685 lt!659883) lt!659897 lt!659895 lt!659877))))

(assert (=> d!528386 (isPrefix!1588 lt!659897 lt!659877)))

(assert (=> d!528386 (= (lemmaSamePrefixThenSameSuffix!732 lt!659897 (_2!10685 lt!659883) lt!659897 lt!659895 lt!659877) lt!660212)))

(declare-fun bs!402350 () Bool)

(assert (= bs!402350 d!528386))

(declare-fun m!2131015 () Bool)

(assert (=> bs!402350 m!2131015))

(assert (=> bs!402350 m!2130113))

(assert (=> b!1723761 d!528386))

(declare-fun d!528388 () Bool)

(assert (=> d!528388 (= (inv!24390 (tag!3661 rule!422)) (= (mod (str.len (value!105061 (tag!3661 rule!422))) 2) 0))))

(assert (=> b!1723758 d!528388))

(declare-fun d!528390 () Bool)

(declare-fun res!773967 () Bool)

(declare-fun e!1103094 () Bool)

(assert (=> d!528390 (=> (not res!773967) (not e!1103094))))

(assert (=> d!528390 (= res!773967 (semiInverseModEq!1323 (toChars!4713 (transformation!3347 rule!422)) (toValue!4854 (transformation!3347 rule!422))))))

(assert (=> d!528390 (= (inv!24395 (transformation!3347 rule!422)) e!1103094)))

(declare-fun b!1724494 () Bool)

(assert (=> b!1724494 (= e!1103094 (equivClasses!1264 (toChars!4713 (transformation!3347 rule!422)) (toValue!4854 (transformation!3347 rule!422))))))

(assert (= (and d!528390 res!773967) b!1724494))

(declare-fun m!2131017 () Bool)

(assert (=> d!528390 m!2131017))

(declare-fun m!2131019 () Bool)

(assert (=> b!1724494 m!2131019))

(assert (=> b!1723758 d!528390))

(declare-fun d!528392 () Bool)

(assert (=> d!528392 (= (inv!24390 (tag!3661 (h!24281 rules!3447))) (= (mod (str.len (value!105061 (tag!3661 (h!24281 rules!3447)))) 2) 0))))

(assert (=> b!1723779 d!528392))

(declare-fun d!528394 () Bool)

(declare-fun res!773968 () Bool)

(declare-fun e!1103095 () Bool)

(assert (=> d!528394 (=> (not res!773968) (not e!1103095))))

(assert (=> d!528394 (= res!773968 (semiInverseModEq!1323 (toChars!4713 (transformation!3347 (h!24281 rules!3447))) (toValue!4854 (transformation!3347 (h!24281 rules!3447)))))))

(assert (=> d!528394 (= (inv!24395 (transformation!3347 (h!24281 rules!3447))) e!1103095)))

(declare-fun b!1724495 () Bool)

(assert (=> b!1724495 (= e!1103095 (equivClasses!1264 (toChars!4713 (transformation!3347 (h!24281 rules!3447))) (toValue!4854 (transformation!3347 (h!24281 rules!3447)))))))

(assert (= (and d!528394 res!773968) b!1724495))

(declare-fun m!2131021 () Bool)

(assert (=> d!528394 m!2131021))

(declare-fun m!2131023 () Bool)

(assert (=> b!1724495 m!2131023))

(assert (=> b!1723779 d!528394))

(declare-fun b!1724496 () Bool)

(declare-fun e!1103096 () Bool)

(declare-fun lt!660213 () Bool)

(assert (=> b!1724496 (= e!1103096 (not lt!660213))))

(declare-fun b!1724497 () Bool)

(declare-fun e!1103097 () Bool)

(assert (=> b!1724497 (= e!1103097 (nullable!1410 (regex!3347 rule!422)))))

(declare-fun b!1724498 () Bool)

(declare-fun e!1103102 () Bool)

(assert (=> b!1724498 (= e!1103102 e!1103096)))

(declare-fun c!282029 () Bool)

(assert (=> b!1724498 (= c!282029 ((_ is EmptyLang!4675) (regex!3347 rule!422)))))

(declare-fun b!1724499 () Bool)

(declare-fun call!109794 () Bool)

(assert (=> b!1724499 (= e!1103102 (= lt!660213 call!109794))))

(declare-fun bm!109789 () Bool)

(assert (=> bm!109789 (= call!109794 (isEmpty!11874 lt!659893))))

(declare-fun b!1724501 () Bool)

(declare-fun res!773969 () Bool)

(declare-fun e!1103101 () Bool)

(assert (=> b!1724501 (=> res!773969 e!1103101)))

(assert (=> b!1724501 (= res!773969 (not ((_ is ElementMatch!4675) (regex!3347 rule!422))))))

(assert (=> b!1724501 (= e!1103096 e!1103101)))

(declare-fun b!1724502 () Bool)

(declare-fun e!1103100 () Bool)

(assert (=> b!1724502 (= e!1103100 (= (head!3904 lt!659893) (c!281906 (regex!3347 rule!422))))))

(declare-fun b!1724503 () Bool)

(declare-fun e!1103098 () Bool)

(assert (=> b!1724503 (= e!1103098 (not (= (head!3904 lt!659893) (c!281906 (regex!3347 rule!422)))))))

(declare-fun b!1724504 () Bool)

(declare-fun res!773975 () Bool)

(assert (=> b!1724504 (=> res!773975 e!1103098)))

(assert (=> b!1724504 (= res!773975 (not (isEmpty!11874 (tail!2575 lt!659893))))))

(declare-fun b!1724505 () Bool)

(declare-fun e!1103099 () Bool)

(assert (=> b!1724505 (= e!1103099 e!1103098)))

(declare-fun res!773973 () Bool)

(assert (=> b!1724505 (=> res!773973 e!1103098)))

(assert (=> b!1724505 (= res!773973 call!109794)))

(declare-fun b!1724506 () Bool)

(declare-fun res!773971 () Bool)

(assert (=> b!1724506 (=> res!773971 e!1103101)))

(assert (=> b!1724506 (= res!773971 e!1103100)))

(declare-fun res!773970 () Bool)

(assert (=> b!1724506 (=> (not res!773970) (not e!1103100))))

(assert (=> b!1724506 (= res!773970 lt!660213)))

(declare-fun b!1724507 () Bool)

(assert (=> b!1724507 (= e!1103097 (matchR!2149 (derivativeStep!1178 (regex!3347 rule!422) (head!3904 lt!659893)) (tail!2575 lt!659893)))))

(declare-fun b!1724500 () Bool)

(declare-fun res!773974 () Bool)

(assert (=> b!1724500 (=> (not res!773974) (not e!1103100))))

(assert (=> b!1724500 (= res!773974 (not call!109794))))

(declare-fun d!528396 () Bool)

(assert (=> d!528396 e!1103102))

(declare-fun c!282030 () Bool)

(assert (=> d!528396 (= c!282030 ((_ is EmptyExpr!4675) (regex!3347 rule!422)))))

(assert (=> d!528396 (= lt!660213 e!1103097)))

(declare-fun c!282028 () Bool)

(assert (=> d!528396 (= c!282028 (isEmpty!11874 lt!659893))))

(assert (=> d!528396 (validRegex!1884 (regex!3347 rule!422))))

(assert (=> d!528396 (= (matchR!2149 (regex!3347 rule!422) lt!659893) lt!660213)))

(declare-fun b!1724508 () Bool)

(declare-fun res!773976 () Bool)

(assert (=> b!1724508 (=> (not res!773976) (not e!1103100))))

(assert (=> b!1724508 (= res!773976 (isEmpty!11874 (tail!2575 lt!659893)))))

(declare-fun b!1724509 () Bool)

(assert (=> b!1724509 (= e!1103101 e!1103099)))

(declare-fun res!773972 () Bool)

(assert (=> b!1724509 (=> (not res!773972) (not e!1103099))))

(assert (=> b!1724509 (= res!773972 (not lt!660213))))

(assert (= (and d!528396 c!282028) b!1724497))

(assert (= (and d!528396 (not c!282028)) b!1724507))

(assert (= (and d!528396 c!282030) b!1724499))

(assert (= (and d!528396 (not c!282030)) b!1724498))

(assert (= (and b!1724498 c!282029) b!1724496))

(assert (= (and b!1724498 (not c!282029)) b!1724501))

(assert (= (and b!1724501 (not res!773969)) b!1724506))

(assert (= (and b!1724506 res!773970) b!1724500))

(assert (= (and b!1724500 res!773974) b!1724508))

(assert (= (and b!1724508 res!773976) b!1724502))

(assert (= (and b!1724506 (not res!773971)) b!1724509))

(assert (= (and b!1724509 res!773972) b!1724505))

(assert (= (and b!1724505 (not res!773973)) b!1724504))

(assert (= (and b!1724504 (not res!773975)) b!1724503))

(assert (= (or b!1724499 b!1724500 b!1724505) bm!109789))

(declare-fun m!2131025 () Bool)

(assert (=> b!1724497 m!2131025))

(assert (=> d!528396 m!2130689))

(declare-fun m!2131027 () Bool)

(assert (=> d!528396 m!2131027))

(assert (=> b!1724504 m!2130609))

(assert (=> b!1724504 m!2130609))

(assert (=> b!1724504 m!2130693))

(assert (=> bm!109789 m!2130689))

(assert (=> b!1724508 m!2130609))

(assert (=> b!1724508 m!2130609))

(assert (=> b!1724508 m!2130693))

(assert (=> b!1724502 m!2130613))

(assert (=> b!1724503 m!2130613))

(assert (=> b!1724507 m!2130613))

(assert (=> b!1724507 m!2130613))

(declare-fun m!2131029 () Bool)

(assert (=> b!1724507 m!2131029))

(assert (=> b!1724507 m!2130609))

(assert (=> b!1724507 m!2131029))

(assert (=> b!1724507 m!2130609))

(declare-fun m!2131031 () Bool)

(assert (=> b!1724507 m!2131031))

(assert (=> b!1723757 d!528396))

(declare-fun d!528398 () Bool)

(declare-fun res!773981 () Bool)

(declare-fun e!1103105 () Bool)

(assert (=> d!528398 (=> (not res!773981) (not e!1103105))))

(assert (=> d!528398 (= res!773981 (validRegex!1884 (regex!3347 rule!422)))))

(assert (=> d!528398 (= (ruleValid!846 thiss!24550 rule!422) e!1103105)))

(declare-fun b!1724514 () Bool)

(declare-fun res!773982 () Bool)

(assert (=> b!1724514 (=> (not res!773982) (not e!1103105))))

(assert (=> b!1724514 (= res!773982 (not (nullable!1410 (regex!3347 rule!422))))))

(declare-fun b!1724515 () Bool)

(assert (=> b!1724515 (= e!1103105 (not (= (tag!3661 rule!422) (String!21518 ""))))))

(assert (= (and d!528398 res!773981) b!1724514))

(assert (= (and b!1724514 res!773982) b!1724515))

(assert (=> d!528398 m!2131027))

(assert (=> b!1724514 m!2131025))

(assert (=> b!1723757 d!528398))

(declare-fun d!528400 () Bool)

(assert (=> d!528400 (ruleValid!846 thiss!24550 rule!422)))

(declare-fun lt!660216 () Unit!32723)

(declare-fun choose!10504 (LexerInterface!2976 Rule!6494 List!18950) Unit!32723)

(assert (=> d!528400 (= lt!660216 (choose!10504 thiss!24550 rule!422 rules!3447))))

(assert (=> d!528400 (contains!3369 rules!3447 rule!422)))

(assert (=> d!528400 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!370 thiss!24550 rule!422 rules!3447) lt!660216)))

(declare-fun bs!402351 () Bool)

(assert (= bs!402351 d!528400))

(assert (=> bs!402351 m!2130029))

(declare-fun m!2131033 () Bool)

(assert (=> bs!402351 m!2131033))

(assert (=> bs!402351 m!2130159))

(assert (=> b!1723757 d!528400))

(declare-fun d!528402 () Bool)

(declare-fun c!282031 () Bool)

(assert (=> d!528402 (= c!282031 ((_ is Node!6279) (c!281907 (dynLambda!8729 (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) (value!105062 (_1!10685 lt!659883))))))))

(declare-fun e!1103106 () Bool)

(assert (=> d!528402 (= (inv!24397 (c!281907 (dynLambda!8729 (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) (value!105062 (_1!10685 lt!659883))))) e!1103106)))

(declare-fun b!1724516 () Bool)

(assert (=> b!1724516 (= e!1103106 (inv!24401 (c!281907 (dynLambda!8729 (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) (value!105062 (_1!10685 lt!659883))))))))

(declare-fun b!1724517 () Bool)

(declare-fun e!1103107 () Bool)

(assert (=> b!1724517 (= e!1103106 e!1103107)))

(declare-fun res!773983 () Bool)

(assert (=> b!1724517 (= res!773983 (not ((_ is Leaf!9173) (c!281907 (dynLambda!8729 (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) (value!105062 (_1!10685 lt!659883)))))))))

(assert (=> b!1724517 (=> res!773983 e!1103107)))

(declare-fun b!1724518 () Bool)

(assert (=> b!1724518 (= e!1103107 (inv!24402 (c!281907 (dynLambda!8729 (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) (value!105062 (_1!10685 lt!659883))))))))

(assert (= (and d!528402 c!282031) b!1724516))

(assert (= (and d!528402 (not c!282031)) b!1724517))

(assert (= (and b!1724517 (not res!773983)) b!1724518))

(declare-fun m!2131035 () Bool)

(assert (=> b!1724516 m!2131035))

(declare-fun m!2131037 () Bool)

(assert (=> b!1724518 m!2131037))

(assert (=> b!1723801 d!528402))

(declare-fun d!528404 () Bool)

(declare-fun c!282034 () Bool)

(assert (=> d!528404 (= c!282034 (isEmpty!11874 (++!5172 lt!659893 (Cons!18879 (head!3904 suffix!1421) Nil!18879))))))

(declare-fun e!1103110 () Bool)

(assert (=> d!528404 (= (prefixMatch!560 lt!659896 (++!5172 lt!659893 (Cons!18879 (head!3904 suffix!1421) Nil!18879))) e!1103110)))

(declare-fun b!1724523 () Bool)

(declare-fun lostCause!520 (Regex!4675) Bool)

(assert (=> b!1724523 (= e!1103110 (not (lostCause!520 lt!659896)))))

(declare-fun b!1724524 () Bool)

(assert (=> b!1724524 (= e!1103110 (prefixMatch!560 (derivativeStep!1178 lt!659896 (head!3904 (++!5172 lt!659893 (Cons!18879 (head!3904 suffix!1421) Nil!18879)))) (tail!2575 (++!5172 lt!659893 (Cons!18879 (head!3904 suffix!1421) Nil!18879)))))))

(assert (= (and d!528404 c!282034) b!1724523))

(assert (= (and d!528404 (not c!282034)) b!1724524))

(assert (=> d!528404 m!2130039))

(declare-fun m!2131039 () Bool)

(assert (=> d!528404 m!2131039))

(declare-fun m!2131041 () Bool)

(assert (=> b!1724523 m!2131041))

(assert (=> b!1724524 m!2130039))

(declare-fun m!2131043 () Bool)

(assert (=> b!1724524 m!2131043))

(assert (=> b!1724524 m!2131043))

(declare-fun m!2131045 () Bool)

(assert (=> b!1724524 m!2131045))

(assert (=> b!1724524 m!2130039))

(declare-fun m!2131047 () Bool)

(assert (=> b!1724524 m!2131047))

(assert (=> b!1724524 m!2131045))

(assert (=> b!1724524 m!2131047))

(declare-fun m!2131049 () Bool)

(assert (=> b!1724524 m!2131049))

(assert (=> b!1723759 d!528404))

(declare-fun b!1724526 () Bool)

(declare-fun e!1103111 () List!18949)

(assert (=> b!1724526 (= e!1103111 (Cons!18879 (h!24280 lt!659893) (++!5172 (t!159852 lt!659893) (Cons!18879 (head!3904 suffix!1421) Nil!18879))))))

(declare-fun e!1103112 () Bool)

(declare-fun b!1724528 () Bool)

(declare-fun lt!660217 () List!18949)

(assert (=> b!1724528 (= e!1103112 (or (not (= (Cons!18879 (head!3904 suffix!1421) Nil!18879) Nil!18879)) (= lt!660217 lt!659893)))))

(declare-fun b!1724527 () Bool)

(declare-fun res!773984 () Bool)

(assert (=> b!1724527 (=> (not res!773984) (not e!1103112))))

(assert (=> b!1724527 (= res!773984 (= (size!15003 lt!660217) (+ (size!15003 lt!659893) (size!15003 (Cons!18879 (head!3904 suffix!1421) Nil!18879)))))))

(declare-fun b!1724525 () Bool)

(assert (=> b!1724525 (= e!1103111 (Cons!18879 (head!3904 suffix!1421) Nil!18879))))

(declare-fun d!528406 () Bool)

(assert (=> d!528406 e!1103112))

(declare-fun res!773985 () Bool)

(assert (=> d!528406 (=> (not res!773985) (not e!1103112))))

(assert (=> d!528406 (= res!773985 (= (content!2695 lt!660217) ((_ map or) (content!2695 lt!659893) (content!2695 (Cons!18879 (head!3904 suffix!1421) Nil!18879)))))))

(assert (=> d!528406 (= lt!660217 e!1103111)))

(declare-fun c!282035 () Bool)

(assert (=> d!528406 (= c!282035 ((_ is Nil!18879) lt!659893))))

(assert (=> d!528406 (= (++!5172 lt!659893 (Cons!18879 (head!3904 suffix!1421) Nil!18879)) lt!660217)))

(assert (= (and d!528406 c!282035) b!1724525))

(assert (= (and d!528406 (not c!282035)) b!1724526))

(assert (= (and d!528406 res!773985) b!1724527))

(assert (= (and b!1724527 res!773984) b!1724528))

(declare-fun m!2131051 () Bool)

(assert (=> b!1724526 m!2131051))

(declare-fun m!2131053 () Bool)

(assert (=> b!1724527 m!2131053))

(assert (=> b!1724527 m!2130513))

(declare-fun m!2131055 () Bool)

(assert (=> b!1724527 m!2131055))

(declare-fun m!2131057 () Bool)

(assert (=> d!528406 m!2131057))

(assert (=> d!528406 m!2130519))

(declare-fun m!2131059 () Bool)

(assert (=> d!528406 m!2131059))

(assert (=> b!1723759 d!528406))

(declare-fun d!528408 () Bool)

(assert (=> d!528408 (= (head!3904 suffix!1421) (h!24280 suffix!1421))))

(assert (=> b!1723759 d!528408))

(declare-fun d!528410 () Bool)

(declare-fun lt!660220 () Unit!32723)

(declare-fun lemma!334 (List!18950 LexerInterface!2976 List!18950) Unit!32723)

(assert (=> d!528410 (= lt!660220 (lemma!334 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!69212 () Int)

(declare-datatypes ((List!18956 0))(
  ( (Nil!18886) (Cons!18886 (h!24287 Regex!4675) (t!159919 List!18956)) )
))
(declare-fun generalisedUnion!342 (List!18956) Regex!4675)

(declare-fun map!3887 (List!18950 Int) List!18956)

(assert (=> d!528410 (= (rulesRegex!705 thiss!24550 rules!3447) (generalisedUnion!342 (map!3887 rules!3447 lambda!69212)))))

(declare-fun bs!402352 () Bool)

(assert (= bs!402352 d!528410))

(declare-fun m!2131061 () Bool)

(assert (=> bs!402352 m!2131061))

(declare-fun m!2131063 () Bool)

(assert (=> bs!402352 m!2131063))

(assert (=> bs!402352 m!2131063))

(declare-fun m!2131065 () Bool)

(assert (=> bs!402352 m!2131065))

(assert (=> b!1723759 d!528410))

(declare-fun d!528412 () Bool)

(declare-fun choose!10505 (Int) Bool)

(assert (=> d!528412 (= (Forall!722 lambda!69188) (choose!10505 lambda!69188))))

(declare-fun bs!402353 () Bool)

(assert (= bs!402353 d!528412))

(declare-fun m!2131067 () Bool)

(assert (=> bs!402353 m!2131067))

(assert (=> b!1723780 d!528412))

(declare-fun d!528414 () Bool)

(declare-fun e!1103115 () Bool)

(assert (=> d!528414 e!1103115))

(declare-fun res!773988 () Bool)

(assert (=> d!528414 (=> (not res!773988) (not e!1103115))))

(assert (=> d!528414 (= res!773988 (semiInverseModEq!1323 (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883))))))))

(declare-fun Unit!32732 () Unit!32723)

(assert (=> d!528414 (= (lemmaInv!554 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) Unit!32732)))

(declare-fun b!1724531 () Bool)

(assert (=> b!1724531 (= e!1103115 (equivClasses!1264 (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883))))))))

(assert (= (and d!528414 res!773988) b!1724531))

(declare-fun m!2131069 () Bool)

(assert (=> d!528414 m!2131069))

(declare-fun m!2131071 () Bool)

(assert (=> b!1724531 m!2131071))

(assert (=> b!1723780 d!528414))

(declare-fun b!1724536 () Bool)

(declare-fun e!1103118 () Bool)

(declare-fun tp!492134 () Bool)

(assert (=> b!1724536 (= e!1103118 (and tp_is_empty!7593 tp!492134))))

(assert (=> b!1723776 (= tp!492070 e!1103118)))

(assert (= (and b!1723776 ((_ is Cons!18879) (t!159852 suffix!1421))) b!1724536))

(declare-fun e!1103121 () Bool)

(assert (=> b!1723762 (= tp!492066 e!1103121)))

(declare-fun b!1724548 () Bool)

(declare-fun tp!492148 () Bool)

(declare-fun tp!492147 () Bool)

(assert (=> b!1724548 (= e!1103121 (and tp!492148 tp!492147))))

(declare-fun b!1724550 () Bool)

(declare-fun tp!492145 () Bool)

(declare-fun tp!492146 () Bool)

(assert (=> b!1724550 (= e!1103121 (and tp!492145 tp!492146))))

(declare-fun b!1724549 () Bool)

(declare-fun tp!492149 () Bool)

(assert (=> b!1724549 (= e!1103121 tp!492149)))

(declare-fun b!1724547 () Bool)

(assert (=> b!1724547 (= e!1103121 tp_is_empty!7593)))

(assert (= (and b!1723762 ((_ is ElementMatch!4675) (regex!3347 (rule!5301 token!523)))) b!1724547))

(assert (= (and b!1723762 ((_ is Concat!8113) (regex!3347 (rule!5301 token!523)))) b!1724548))

(assert (= (and b!1723762 ((_ is Star!4675) (regex!3347 (rule!5301 token!523)))) b!1724549))

(assert (= (and b!1723762 ((_ is Union!4675) (regex!3347 (rule!5301 token!523)))) b!1724550))

(declare-fun b!1724551 () Bool)

(declare-fun e!1103122 () Bool)

(declare-fun tp!492150 () Bool)

(assert (=> b!1724551 (= e!1103122 (and tp_is_empty!7593 tp!492150))))

(assert (=> b!1723756 (= tp!492068 e!1103122)))

(assert (= (and b!1723756 ((_ is Cons!18879) (originalCharacters!4161 token!523))) b!1724551))

(declare-fun e!1103123 () Bool)

(assert (=> b!1723758 (= tp!492072 e!1103123)))

(declare-fun b!1724553 () Bool)

(declare-fun tp!492154 () Bool)

(declare-fun tp!492153 () Bool)

(assert (=> b!1724553 (= e!1103123 (and tp!492154 tp!492153))))

(declare-fun b!1724555 () Bool)

(declare-fun tp!492151 () Bool)

(declare-fun tp!492152 () Bool)

(assert (=> b!1724555 (= e!1103123 (and tp!492151 tp!492152))))

(declare-fun b!1724554 () Bool)

(declare-fun tp!492155 () Bool)

(assert (=> b!1724554 (= e!1103123 tp!492155)))

(declare-fun b!1724552 () Bool)

(assert (=> b!1724552 (= e!1103123 tp_is_empty!7593)))

(assert (= (and b!1723758 ((_ is ElementMatch!4675) (regex!3347 rule!422))) b!1724552))

(assert (= (and b!1723758 ((_ is Concat!8113) (regex!3347 rule!422))) b!1724553))

(assert (= (and b!1723758 ((_ is Star!4675) (regex!3347 rule!422))) b!1724554))

(assert (= (and b!1723758 ((_ is Union!4675) (regex!3347 rule!422))) b!1724555))

(declare-fun tp!492164 () Bool)

(declare-fun e!1103129 () Bool)

(declare-fun tp!492163 () Bool)

(declare-fun b!1724564 () Bool)

(assert (=> b!1724564 (= e!1103129 (and (inv!24397 (left!15070 (c!281907 (dynLambda!8729 (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) (dynLambda!8730 (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) lt!659876))))) tp!492164 (inv!24397 (right!15400 (c!281907 (dynLambda!8729 (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) (dynLambda!8730 (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) lt!659876))))) tp!492163))))

(declare-fun b!1724566 () Bool)

(declare-fun e!1103128 () Bool)

(declare-fun tp!492162 () Bool)

(assert (=> b!1724566 (= e!1103128 tp!492162)))

(declare-fun b!1724565 () Bool)

(declare-fun inv!24403 (IArray!12563) Bool)

(assert (=> b!1724565 (= e!1103129 (and (inv!24403 (xs!9155 (c!281907 (dynLambda!8729 (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) (dynLambda!8730 (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) lt!659876))))) e!1103128))))

(assert (=> b!1723802 (= tp!492076 (and (inv!24397 (c!281907 (dynLambda!8729 (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) (dynLambda!8730 (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) lt!659876)))) e!1103129))))

(assert (= (and b!1723802 ((_ is Node!6279) (c!281907 (dynLambda!8729 (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) (dynLambda!8730 (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) lt!659876))))) b!1724564))

(assert (= b!1724565 b!1724566))

(assert (= (and b!1723802 ((_ is Leaf!9173) (c!281907 (dynLambda!8729 (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) (dynLambda!8730 (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) lt!659876))))) b!1724565))

(declare-fun m!2131073 () Bool)

(assert (=> b!1724564 m!2131073))

(declare-fun m!2131075 () Bool)

(assert (=> b!1724564 m!2131075))

(declare-fun m!2131077 () Bool)

(assert (=> b!1724565 m!2131077))

(assert (=> b!1723802 m!2130017))

(declare-fun e!1103130 () Bool)

(assert (=> b!1723779 (= tp!492067 e!1103130)))

(declare-fun b!1724568 () Bool)

(declare-fun tp!492168 () Bool)

(declare-fun tp!492167 () Bool)

(assert (=> b!1724568 (= e!1103130 (and tp!492168 tp!492167))))

(declare-fun b!1724570 () Bool)

(declare-fun tp!492165 () Bool)

(declare-fun tp!492166 () Bool)

(assert (=> b!1724570 (= e!1103130 (and tp!492165 tp!492166))))

(declare-fun b!1724569 () Bool)

(declare-fun tp!492169 () Bool)

(assert (=> b!1724569 (= e!1103130 tp!492169)))

(declare-fun b!1724567 () Bool)

(assert (=> b!1724567 (= e!1103130 tp_is_empty!7593)))

(assert (= (and b!1723779 ((_ is ElementMatch!4675) (regex!3347 (h!24281 rules!3447)))) b!1724567))

(assert (= (and b!1723779 ((_ is Concat!8113) (regex!3347 (h!24281 rules!3447)))) b!1724568))

(assert (= (and b!1723779 ((_ is Star!4675) (regex!3347 (h!24281 rules!3447)))) b!1724569))

(assert (= (and b!1723779 ((_ is Union!4675) (regex!3347 (h!24281 rules!3447)))) b!1724570))

(declare-fun b!1724571 () Bool)

(declare-fun tp!492171 () Bool)

(declare-fun tp!492172 () Bool)

(declare-fun e!1103132 () Bool)

(assert (=> b!1724571 (= e!1103132 (and (inv!24397 (left!15070 (c!281907 (dynLambda!8729 (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) (value!105062 (_1!10685 lt!659883)))))) tp!492172 (inv!24397 (right!15400 (c!281907 (dynLambda!8729 (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) (value!105062 (_1!10685 lt!659883)))))) tp!492171))))

(declare-fun b!1724573 () Bool)

(declare-fun e!1103131 () Bool)

(declare-fun tp!492170 () Bool)

(assert (=> b!1724573 (= e!1103131 tp!492170)))

(declare-fun b!1724572 () Bool)

(assert (=> b!1724572 (= e!1103132 (and (inv!24403 (xs!9155 (c!281907 (dynLambda!8729 (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) (value!105062 (_1!10685 lt!659883)))))) e!1103131))))

(assert (=> b!1723801 (= tp!492075 (and (inv!24397 (c!281907 (dynLambda!8729 (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) (value!105062 (_1!10685 lt!659883))))) e!1103132))))

(assert (= (and b!1723801 ((_ is Node!6279) (c!281907 (dynLambda!8729 (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) (value!105062 (_1!10685 lt!659883)))))) b!1724571))

(assert (= b!1724572 b!1724573))

(assert (= (and b!1723801 ((_ is Leaf!9173) (c!281907 (dynLambda!8729 (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))) (value!105062 (_1!10685 lt!659883)))))) b!1724572))

(declare-fun m!2131079 () Bool)

(assert (=> b!1724571 m!2131079))

(declare-fun m!2131081 () Bool)

(assert (=> b!1724571 m!2131081))

(declare-fun m!2131083 () Bool)

(assert (=> b!1724572 m!2131083))

(assert (=> b!1723801 m!2130013))

(declare-fun b!1724584 () Bool)

(declare-fun b_free!47059 () Bool)

(declare-fun b_next!47763 () Bool)

(assert (=> b!1724584 (= b_free!47059 (not b_next!47763))))

(declare-fun t!159904 () Bool)

(declare-fun tb!102387 () Bool)

(assert (=> (and b!1724584 (= (toValue!4854 (transformation!3347 (h!24281 (t!159853 rules!3447)))) (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883))))) t!159904) tb!102387))

(declare-fun result!123082 () Bool)

(assert (= result!123082 result!123010))

(assert (=> d!528180 t!159904))

(declare-fun tb!102389 () Bool)

(declare-fun t!159906 () Bool)

(assert (=> (and b!1724584 (= (toValue!4854 (transformation!3347 (h!24281 (t!159853 rules!3447)))) (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883))))) t!159906) tb!102389))

(declare-fun result!123084 () Bool)

(assert (= result!123084 result!123042))

(assert (=> d!528350 t!159906))

(assert (=> d!528336 t!159904))

(declare-fun t!159908 () Bool)

(declare-fun tb!102391 () Bool)

(assert (=> (and b!1724584 (= (toValue!4854 (transformation!3347 (h!24281 (t!159853 rules!3447)))) (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883))))) t!159908) tb!102391))

(declare-fun result!123086 () Bool)

(assert (= result!123086 result!123024))

(assert (=> d!528180 t!159908))

(assert (=> d!528186 t!159904))

(assert (=> b!1723783 t!159904))

(declare-fun tp!492181 () Bool)

(declare-fun b_and!126373 () Bool)

(assert (=> b!1724584 (= tp!492181 (and (=> t!159908 result!123086) (=> t!159906 result!123084) (=> t!159904 result!123082) b_and!126373))))

(declare-fun b_free!47061 () Bool)

(declare-fun b_next!47765 () Bool)

(assert (=> b!1724584 (= b_free!47061 (not b_next!47765))))

(declare-fun t!159910 () Bool)

(declare-fun tb!102393 () Bool)

(assert (=> (and b!1724584 (= (toChars!4713 (transformation!3347 (h!24281 (t!159853 rules!3447)))) (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883))))) t!159910) tb!102393))

(declare-fun result!123088 () Bool)

(assert (= result!123088 result!123004))

(assert (=> d!528336 t!159910))

(declare-fun t!159912 () Bool)

(declare-fun tb!102395 () Bool)

(assert (=> (and b!1724584 (= (toChars!4713 (transformation!3347 (h!24281 (t!159853 rules!3447)))) (toChars!4713 (transformation!3347 (rule!5301 token!523)))) t!159912) tb!102395))

(declare-fun result!123090 () Bool)

(assert (= result!123090 result!123036))

(assert (=> b!1724324 t!159912))

(assert (=> d!528292 t!159912))

(assert (=> b!1723783 t!159910))

(declare-fun tb!102397 () Bool)

(declare-fun t!159914 () Bool)

(assert (=> (and b!1724584 (= (toChars!4713 (transformation!3347 (h!24281 (t!159853 rules!3447)))) (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883))))) t!159914) tb!102397))

(declare-fun result!123092 () Bool)

(assert (= result!123092 result!122996))

(assert (=> d!528224 t!159914))

(assert (=> b!1723766 t!159914))

(declare-fun tp!492182 () Bool)

(declare-fun b_and!126375 () Bool)

(assert (=> b!1724584 (= tp!492182 (and (=> t!159914 result!123092) (=> t!159912 result!123090) (=> t!159910 result!123088) b_and!126375))))

(declare-fun e!1103142 () Bool)

(assert (=> b!1724584 (= e!1103142 (and tp!492181 tp!492182))))

(declare-fun e!1103144 () Bool)

(declare-fun tp!492183 () Bool)

(declare-fun b!1724583 () Bool)

(assert (=> b!1724583 (= e!1103144 (and tp!492183 (inv!24390 (tag!3661 (h!24281 (t!159853 rules!3447)))) (inv!24395 (transformation!3347 (h!24281 (t!159853 rules!3447)))) e!1103142))))

(declare-fun b!1724582 () Bool)

(declare-fun e!1103143 () Bool)

(declare-fun tp!492184 () Bool)

(assert (=> b!1724582 (= e!1103143 (and e!1103144 tp!492184))))

(assert (=> b!1723769 (= tp!492064 e!1103143)))

(assert (= b!1724583 b!1724584))

(assert (= b!1724582 b!1724583))

(assert (= (and b!1723769 ((_ is Cons!18880) (t!159853 rules!3447))) b!1724582))

(declare-fun m!2131085 () Bool)

(assert (=> b!1724583 m!2131085))

(declare-fun m!2131087 () Bool)

(assert (=> b!1724583 m!2131087))

(declare-fun b_lambda!54803 () Bool)

(assert (= b_lambda!54779 (or (and b!1723760 b_free!47045) (and b!1723768 b_free!47049 (= (toChars!4713 (transformation!3347 rule!422)) (toChars!4713 (transformation!3347 (rule!5301 token!523))))) (and b!1723782 b_free!47053 (= (toChars!4713 (transformation!3347 (h!24281 rules!3447))) (toChars!4713 (transformation!3347 (rule!5301 token!523))))) (and b!1724584 b_free!47061 (= (toChars!4713 (transformation!3347 (h!24281 (t!159853 rules!3447)))) (toChars!4713 (transformation!3347 (rule!5301 token!523))))) b_lambda!54803)))

(declare-fun b_lambda!54805 () Bool)

(assert (= b_lambda!54777 (or (and b!1723760 b_free!47045) (and b!1723768 b_free!47049 (= (toChars!4713 (transformation!3347 rule!422)) (toChars!4713 (transformation!3347 (rule!5301 token!523))))) (and b!1723782 b_free!47053 (= (toChars!4713 (transformation!3347 (h!24281 rules!3447))) (toChars!4713 (transformation!3347 (rule!5301 token!523))))) (and b!1724584 b_free!47061 (= (toChars!4713 (transformation!3347 (h!24281 (t!159853 rules!3447)))) (toChars!4713 (transformation!3347 (rule!5301 token!523))))) b_lambda!54805)))

(declare-fun b_lambda!54807 () Bool)

(assert (= b_lambda!54755 (or (and b!1723760 b_free!47043 (= (toValue!4854 (transformation!3347 (rule!5301 token!523))) (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))))) (and b!1723768 b_free!47047 (= (toValue!4854 (transformation!3347 rule!422)) (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))))) (and b!1723782 b_free!47051 (= (toValue!4854 (transformation!3347 (h!24281 rules!3447))) (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))))) (and b!1724584 b_free!47059 (= (toValue!4854 (transformation!3347 (h!24281 (t!159853 rules!3447)))) (toValue!4854 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))))) b_lambda!54807)))

(declare-fun b_lambda!54809 () Bool)

(assert (= b_lambda!54751 (or (and b!1723760 b_free!47045 (= (toChars!4713 (transformation!3347 (rule!5301 token!523))) (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))))) (and b!1723768 b_free!47049 (= (toChars!4713 (transformation!3347 rule!422)) (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))))) (and b!1723782 b_free!47053 (= (toChars!4713 (transformation!3347 (h!24281 rules!3447))) (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))))) (and b!1724584 b_free!47061 (= (toChars!4713 (transformation!3347 (h!24281 (t!159853 rules!3447)))) (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))))) b_lambda!54809)))

(declare-fun b_lambda!54811 () Bool)

(assert (= b_lambda!54753 (or (and b!1723760 b_free!47045 (= (toChars!4713 (transformation!3347 (rule!5301 token!523))) (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))))) (and b!1723768 b_free!47049 (= (toChars!4713 (transformation!3347 rule!422)) (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))))) (and b!1723782 b_free!47053 (= (toChars!4713 (transformation!3347 (h!24281 rules!3447))) (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))))) (and b!1724584 b_free!47061 (= (toChars!4713 (transformation!3347 (h!24281 (t!159853 rules!3447)))) (toChars!4713 (transformation!3347 (rule!5301 (_1!10685 lt!659883)))))) b_lambda!54811)))

(check-sat (not d!528184) (not b!1724228) (not b_lambda!54763) (not d!528248) (not b!1724134) (not tb!102363) (not d!528236) (not b!1724412) (not b!1724488) (not d!528332) (not d!528228) (not b!1723802) (not b!1724141) (not b!1724157) (not b!1724514) (not b!1724497) (not b!1724198) (not b!1723928) (not b!1724153) (not b!1724045) (not b!1724102) (not b!1724087) (not b!1724555) (not b!1724188) (not bm!109783) (not b!1724516) (not d!528274) b_and!126345 (not b!1724058) (not b!1724088) (not b!1724502) (not b!1724490) (not d!528320) (not d!528292) (not tb!102357) (not b!1724491) (not b!1724564) (not b!1724192) (not b!1724582) (not b!1724571) (not d!528246) (not b!1724098) (not b!1724485) (not b!1724548) (not bm!109782) (not b!1724292) (not b!1723933) (not b!1724325) (not b!1724164) (not b!1724494) (not b!1724569) (not b!1724046) (not b!1724099) (not d!528180) b_and!126349 (not b!1724162) (not b_lambda!54785) (not b!1724523) (not b!1724572) (not b_lambda!54807) (not b!1723939) (not d!528302) (not b_lambda!54781) (not b!1724168) (not d!528242) (not b!1724155) (not b!1724092) (not d!528272) (not b!1724573) (not b!1724154) (not b!1724229) (not b!1724203) (not b!1724226) (not d!528144) (not b_lambda!54803) (not d!528174) (not b!1724504) (not b_lambda!54811) (not b!1724258) (not d!528404) (not b_lambda!54775) (not b!1724311) (not b!1724312) (not bm!109780) (not b!1724230) (not b_next!47755) b_and!126335 (not b!1724140) (not d!528336) (not b_lambda!54805) (not d!528394) (not d!528286) (not b!1724565) (not b!1724507) (not b!1724306) (not b!1724225) (not b_next!47747) (not d!528386) (not b!1723938) (not b!1724493) b_and!126347 (not b!1724568) (not d!528396) (not b!1724550) (not b!1724489) (not b!1724293) (not b_lambda!54809) (not b!1724222) (not b_lambda!54765) (not bm!109785) (not d!528264) (not b!1724059) (not b!1724101) (not b!1724554) (not b!1724527) (not b!1724583) (not d!528182) (not b!1724142) (not d!528224) (not b!1724057) (not b!1724301) (not b!1724197) (not d!528406) (not b!1724227) (not b!1724091) b_and!126337 (not b!1724190) (not b!1724077) (not b!1724566) (not b!1724073) (not d!528276) (not b!1724495) (not b!1724570) tp_is_empty!7593 (not d!528352) (not d!528410) (not b!1724199) (not d!528400) (not b!1724044) (not b!1723801) (not b!1724553) (not b!1724503) (not d!528290) (not d!528412) (not d!528238) (not b_next!47757) (not b!1724487) (not d!528314) (not d!528334) b_and!126333 (not b!1724093) (not d!528244) (not d!528318) (not b!1724549) (not b!1724324) (not b!1724307) (not d!528262) (not b!1724254) (not b!1724163) (not d!528288) (not d!528348) (not b!1724167) (not b!1724308) (not b!1724252) (not b_next!47751) (not b_lambda!54767) (not b!1724526) (not b!1724135) (not b_lambda!54783) (not b!1724518) (not d!528310) (not bm!109784) (not d!528398) (not d!528414) (not d!528390) (not b!1724075) (not b!1724332) b_and!126375 (not b!1724138) (not b!1724531) (not b!1723935) (not b!1724551) (not d!528306) (not b_next!47753) (not b!1724524) (not d!528384) (not b!1724202) (not d!528382) (not b!1724536) (not b!1724402) (not b!1724264) (not d!528232) (not bm!109773) (not b!1723934) (not b!1724139) (not b!1724268) (not d!528376) (not b!1724223) (not b!1724255) (not b!1724486) (not b!1724136) (not b!1724221) (not b_next!47749) (not b!1724508) b_and!126373 (not d!528194) (not d!528240) (not b_next!47763) (not bm!109789) (not b!1724266) (not b!1724269) (not b_next!47765) (not d!528256) (not tb!102345))
(check-sat b_and!126345 b_and!126349 b_and!126337 (not b_next!47757) b_and!126333 (not b_next!47751) (not b_next!47765) (not b_next!47755) b_and!126335 b_and!126347 (not b_next!47747) b_and!126375 (not b_next!47753) (not b_next!47749) b_and!126373 (not b_next!47763))
