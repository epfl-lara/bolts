; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!391338 () Bool)

(assert start!391338)

(declare-fun b!4125067 () Bool)

(declare-fun b_free!116819 () Bool)

(declare-fun b_next!117523 () Bool)

(assert (=> b!4125067 (= b_free!116819 (not b_next!117523))))

(declare-fun tp!1257053 () Bool)

(declare-fun b_and!319309 () Bool)

(assert (=> b!4125067 (= tp!1257053 b_and!319309)))

(declare-fun b_free!116821 () Bool)

(declare-fun b_next!117525 () Bool)

(assert (=> b!4125067 (= b_free!116821 (not b_next!117525))))

(declare-fun tp!1257058 () Bool)

(declare-fun b_and!319311 () Bool)

(assert (=> b!4125067 (= tp!1257058 b_and!319311)))

(declare-fun b!4125055 () Bool)

(declare-fun b_free!116823 () Bool)

(declare-fun b_next!117527 () Bool)

(assert (=> b!4125055 (= b_free!116823 (not b_next!117527))))

(declare-fun tp!1257052 () Bool)

(declare-fun b_and!319313 () Bool)

(assert (=> b!4125055 (= tp!1257052 b_and!319313)))

(declare-fun b_free!116825 () Bool)

(declare-fun b_next!117529 () Bool)

(assert (=> b!4125055 (= b_free!116825 (not b_next!117529))))

(declare-fun tp!1257048 () Bool)

(declare-fun b_and!319315 () Bool)

(assert (=> b!4125055 (= tp!1257048 b_and!319315)))

(declare-fun b!4125065 () Bool)

(declare-fun b_free!116827 () Bool)

(declare-fun b_next!117531 () Bool)

(assert (=> b!4125065 (= b_free!116827 (not b_next!117531))))

(declare-fun tp!1257050 () Bool)

(declare-fun b_and!319317 () Bool)

(assert (=> b!4125065 (= tp!1257050 b_and!319317)))

(declare-fun b_free!116829 () Bool)

(declare-fun b_next!117533 () Bool)

(assert (=> b!4125065 (= b_free!116829 (not b_next!117533))))

(declare-fun tp!1257051 () Bool)

(declare-fun b_and!319319 () Bool)

(assert (=> b!4125065 (= tp!1257051 b_and!319319)))

(declare-fun res!1685948 () Bool)

(declare-fun e!2559630 () Bool)

(assert (=> start!391338 (=> (not res!1685948) (not e!2559630))))

(declare-datatypes ((LexerInterface!6889 0))(
  ( (LexerInterfaceExt!6886 (__x!27277 Int)) (Lexer!6887) )
))
(declare-fun thiss!25645 () LexerInterface!6889)

(get-info :version)

(assert (=> start!391338 (= res!1685948 ((_ is Lexer!6887) thiss!25645))))

(assert (=> start!391338 e!2559630))

(declare-fun e!2559641 () Bool)

(assert (=> start!391338 e!2559641))

(declare-fun e!2559633 () Bool)

(assert (=> start!391338 e!2559633))

(assert (=> start!391338 true))

(declare-fun e!2559632 () Bool)

(assert (=> start!391338 e!2559632))

(declare-fun e!2559631 () Bool)

(assert (=> start!391338 e!2559631))

(declare-fun e!2559637 () Bool)

(assert (=> start!391338 e!2559637))

(declare-fun b!4125052 () Bool)

(declare-fun res!1685944 () Bool)

(declare-fun e!2559638 () Bool)

(assert (=> b!4125052 (=> (not res!1685944) (not e!2559638))))

(declare-datatypes ((List!44763 0))(
  ( (Nil!44639) (Cons!44639 (h!50059 (_ BitVec 16)) (t!341068 List!44763)) )
))
(declare-datatypes ((TokenValue!7530 0))(
  ( (FloatLiteralValue!15060 (text!53155 List!44763)) (TokenValueExt!7529 (__x!27278 Int)) (Broken!37650 (value!228578 List!44763)) (Object!7653) (End!7530) (Def!7530) (Underscore!7530) (Match!7530) (Else!7530) (Error!7530) (Case!7530) (If!7530) (Extends!7530) (Abstract!7530) (Class!7530) (Val!7530) (DelimiterValue!15060 (del!7590 List!44763)) (KeywordValue!7536 (value!228579 List!44763)) (CommentValue!15060 (value!228580 List!44763)) (WhitespaceValue!15060 (value!228581 List!44763)) (IndentationValue!7530 (value!228582 List!44763)) (String!51399) (Int32!7530) (Broken!37651 (value!228583 List!44763)) (Boolean!7531) (Unit!63976) (OperatorValue!7533 (op!7590 List!44763)) (IdentifierValue!15060 (value!228584 List!44763)) (IdentifierValue!15061 (value!228585 List!44763)) (WhitespaceValue!15061 (value!228586 List!44763)) (True!15060) (False!15060) (Broken!37652 (value!228587 List!44763)) (Broken!37653 (value!228588 List!44763)) (True!15061) (RightBrace!7530) (RightBracket!7530) (Colon!7530) (Null!7530) (Comma!7530) (LeftBracket!7530) (False!15061) (LeftBrace!7530) (ImaginaryLiteralValue!7530 (text!53156 List!44763)) (StringLiteralValue!22590 (value!228589 List!44763)) (EOFValue!7530 (value!228590 List!44763)) (IdentValue!7530 (value!228591 List!44763)) (DelimiterValue!15061 (value!228592 List!44763)) (DedentValue!7530 (value!228593 List!44763)) (NewLineValue!7530 (value!228594 List!44763)) (IntegerValue!22590 (value!228595 (_ BitVec 32)) (text!53157 List!44763)) (IntegerValue!22591 (value!228596 Int) (text!53158 List!44763)) (Times!7530) (Or!7530) (Equal!7530) (Minus!7530) (Broken!37654 (value!228597 List!44763)) (And!7530) (Div!7530) (LessEqual!7530) (Mod!7530) (Concat!19735) (Not!7530) (Plus!7530) (SpaceValue!7530 (value!228598 List!44763)) (IntegerValue!22592 (value!228599 Int) (text!53159 List!44763)) (StringLiteralValue!22591 (text!53160 List!44763)) (FloatLiteralValue!15061 (text!53161 List!44763)) (BytesLiteralValue!7530 (value!228600 List!44763)) (CommentValue!15061 (value!228601 List!44763)) (StringLiteralValue!22592 (value!228602 List!44763)) (ErrorTokenValue!7530 (msg!7591 List!44763)) )
))
(declare-datatypes ((String!51400 0))(
  ( (String!51401 (value!228603 String)) )
))
(declare-datatypes ((C!24596 0))(
  ( (C!24597 (val!14408 Int)) )
))
(declare-datatypes ((List!44764 0))(
  ( (Nil!44640) (Cons!44640 (h!50060 C!24596) (t!341069 List!44764)) )
))
(declare-datatypes ((IArray!27027 0))(
  ( (IArray!27028 (innerList!13571 List!44764)) )
))
(declare-datatypes ((Conc!13511 0))(
  ( (Node!13511 (left!33431 Conc!13511) (right!33761 Conc!13511) (csize!27252 Int) (cheight!13722 Int)) (Leaf!20876 (xs!16817 IArray!27027) (csize!27253 Int)) (Empty!13511) )
))
(declare-datatypes ((BalanceConc!26616 0))(
  ( (BalanceConc!26617 (c!708034 Conc!13511)) )
))
(declare-datatypes ((Regex!12205 0))(
  ( (ElementMatch!12205 (c!708035 C!24596)) (Concat!19736 (regOne!24922 Regex!12205) (regTwo!24922 Regex!12205)) (EmptyExpr!12205) (Star!12205 (reg!12534 Regex!12205)) (EmptyLang!12205) (Union!12205 (regOne!24923 Regex!12205) (regTwo!24923 Regex!12205)) )
))
(declare-datatypes ((TokenValueInjection!14488 0))(
  ( (TokenValueInjection!14489 (toValue!9952 Int) (toChars!9811 Int)) )
))
(declare-datatypes ((Rule!14400 0))(
  ( (Rule!14401 (regex!7300 Regex!12205) (tag!8160 String!51400) (isSeparator!7300 Bool) (transformation!7300 TokenValueInjection!14488)) )
))
(declare-datatypes ((List!44765 0))(
  ( (Nil!44641) (Cons!44641 (h!50061 Rule!14400) (t!341070 List!44765)) )
))
(declare-fun rules!3756 () List!44765)

(declare-fun r!4008 () Rule!14400)

(declare-fun rBis!149 () Rule!14400)

(declare-fun getIndex!648 (List!44765 Rule!14400) Int)

(assert (=> b!4125052 (= res!1685944 (< (getIndex!648 rules!3756 rBis!149) (getIndex!648 rules!3756 r!4008)))))

(declare-fun b!4125053 () Bool)

(declare-fun tp_is_empty!21333 () Bool)

(declare-fun tp!1257056 () Bool)

(assert (=> b!4125053 (= e!2559633 (and tp_is_empty!21333 tp!1257056))))

(declare-fun b!4125054 () Bool)

(declare-fun res!1685945 () Bool)

(declare-fun e!2559635 () Bool)

(assert (=> b!4125054 (=> res!1685945 e!2559635)))

(declare-fun contains!8972 (List!44765 Rule!14400) Bool)

(assert (=> b!4125054 (= res!1685945 (not (contains!8972 (t!341070 rules!3756) rBis!149)))))

(declare-fun e!2559634 () Bool)

(assert (=> b!4125055 (= e!2559634 (and tp!1257052 tp!1257048))))

(declare-fun b!4125056 () Bool)

(declare-fun res!1685947 () Bool)

(assert (=> b!4125056 (=> (not res!1685947) (not e!2559630))))

(declare-fun p!2912 () List!44764)

(declare-fun isEmpty!26571 (List!44764) Bool)

(assert (=> b!4125056 (= res!1685947 (not (isEmpty!26571 p!2912)))))

(declare-fun b!4125057 () Bool)

(declare-fun res!1685936 () Bool)

(assert (=> b!4125057 (=> (not res!1685936) (not e!2559638))))

(declare-fun ruleValid!3108 (LexerInterface!6889 Rule!14400) Bool)

(assert (=> b!4125057 (= res!1685936 (ruleValid!3108 thiss!25645 r!4008))))

(declare-fun b!4125058 () Bool)

(declare-fun e!2559639 () Bool)

(declare-fun tp!1257049 () Bool)

(assert (=> b!4125058 (= e!2559641 (and e!2559639 tp!1257049))))

(declare-fun b!4125059 () Bool)

(assert (=> b!4125059 (= e!2559635 (ruleValid!3108 thiss!25645 (h!50061 rules!3756)))))

(declare-fun b!4125060 () Bool)

(declare-fun res!1685946 () Bool)

(assert (=> b!4125060 (=> (not res!1685946) (not e!2559630))))

(declare-fun isEmpty!26572 (List!44765) Bool)

(assert (=> b!4125060 (= res!1685946 (not (isEmpty!26572 rules!3756)))))

(declare-fun b!4125061 () Bool)

(declare-fun res!1685935 () Bool)

(assert (=> b!4125061 (=> (not res!1685935) (not e!2559630))))

(assert (=> b!4125061 (= res!1685935 (contains!8972 rules!3756 r!4008))))

(declare-fun b!4125062 () Bool)

(declare-fun tp!1257055 () Bool)

(assert (=> b!4125062 (= e!2559631 (and tp_is_empty!21333 tp!1257055))))

(declare-fun b!4125063 () Bool)

(declare-fun res!1685937 () Bool)

(assert (=> b!4125063 (=> (not res!1685937) (not e!2559630))))

(assert (=> b!4125063 (= res!1685937 (contains!8972 rules!3756 rBis!149))))

(declare-fun tp!1257047 () Bool)

(declare-fun b!4125064 () Bool)

(declare-fun inv!59219 (String!51400) Bool)

(declare-fun inv!59221 (TokenValueInjection!14488) Bool)

(assert (=> b!4125064 (= e!2559637 (and tp!1257047 (inv!59219 (tag!8160 rBis!149)) (inv!59221 (transformation!7300 rBis!149)) e!2559634))))

(declare-fun e!2559643 () Bool)

(assert (=> b!4125065 (= e!2559643 (and tp!1257050 tp!1257051))))

(declare-fun b!4125066 () Bool)

(declare-fun res!1685941 () Bool)

(assert (=> b!4125066 (=> (not res!1685941) (not e!2559630))))

(declare-fun input!3238 () List!44764)

(declare-fun isPrefix!4235 (List!44764 List!44764) Bool)

(assert (=> b!4125066 (= res!1685941 (isPrefix!4235 p!2912 input!3238))))

(declare-fun e!2559642 () Bool)

(assert (=> b!4125067 (= e!2559642 (and tp!1257053 tp!1257058))))

(declare-fun b!4125068 () Bool)

(declare-fun res!1685940 () Bool)

(assert (=> b!4125068 (=> res!1685940 e!2559635)))

(assert (=> b!4125068 (= res!1685940 (not (contains!8972 (t!341070 rules!3756) r!4008)))))

(declare-fun b!4125069 () Bool)

(declare-fun res!1685942 () Bool)

(assert (=> b!4125069 (=> (not res!1685942) (not e!2559638))))

(declare-fun matchR!6036 (Regex!12205 List!44764) Bool)

(assert (=> b!4125069 (= res!1685942 (matchR!6036 (regex!7300 r!4008) p!2912))))

(declare-fun b!4125070 () Bool)

(declare-fun res!1685943 () Bool)

(assert (=> b!4125070 (=> (not res!1685943) (not e!2559630))))

(declare-fun rulesInvariant!6186 (LexerInterface!6889 List!44765) Bool)

(assert (=> b!4125070 (= res!1685943 (rulesInvariant!6186 thiss!25645 rules!3756))))

(declare-fun b!4125071 () Bool)

(assert (=> b!4125071 (= e!2559638 (not e!2559635))))

(declare-fun res!1685938 () Bool)

(assert (=> b!4125071 (=> res!1685938 e!2559635)))

(assert (=> b!4125071 (= res!1685938 (or (and ((_ is Cons!44641) rules!3756) (= (h!50061 rules!3756) rBis!149)) (not ((_ is Cons!44641) rules!3756)) (= (h!50061 rules!3756) rBis!149)))))

(declare-datatypes ((Unit!63977 0))(
  ( (Unit!63978) )
))
(declare-fun lt!1471723 () Unit!63977)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2152 (LexerInterface!6889 Rule!14400 List!44765) Unit!63977)

(assert (=> b!4125071 (= lt!1471723 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2152 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4125071 (ruleValid!3108 thiss!25645 rBis!149)))

(declare-fun lt!1471726 () Unit!63977)

(assert (=> b!4125071 (= lt!1471726 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2152 thiss!25645 rBis!149 rules!3756))))

(declare-fun tp!1257057 () Bool)

(declare-fun b!4125072 () Bool)

(assert (=> b!4125072 (= e!2559632 (and tp!1257057 (inv!59219 (tag!8160 r!4008)) (inv!59221 (transformation!7300 r!4008)) e!2559642))))

(declare-fun b!4125073 () Bool)

(assert (=> b!4125073 (= e!2559630 e!2559638)))

(declare-fun res!1685939 () Bool)

(assert (=> b!4125073 (=> (not res!1685939) (not e!2559638))))

(declare-fun lt!1471725 () BalanceConc!26616)

(declare-datatypes ((Token!13530 0))(
  ( (Token!13531 (value!228604 TokenValue!7530) (rule!10384 Rule!14400) (size!33055 Int) (originalCharacters!7796 List!44764)) )
))
(declare-datatypes ((tuple2!43094 0))(
  ( (tuple2!43095 (_1!24681 Token!13530) (_2!24681 List!44764)) )
))
(declare-datatypes ((Option!9608 0))(
  ( (None!9607) (Some!9607 (v!40203 tuple2!43094)) )
))
(declare-fun maxPrefix!4081 (LexerInterface!6889 List!44765 List!44764) Option!9608)

(declare-fun apply!10373 (TokenValueInjection!14488 BalanceConc!26616) TokenValue!7530)

(declare-fun size!33056 (List!44764) Int)

(declare-fun getSuffix!2564 (List!44764 List!44764) List!44764)

(assert (=> b!4125073 (= res!1685939 (= (maxPrefix!4081 thiss!25645 rules!3756 input!3238) (Some!9607 (tuple2!43095 (Token!13531 (apply!10373 (transformation!7300 r!4008) lt!1471725) r!4008 (size!33056 p!2912) p!2912) (getSuffix!2564 input!3238 p!2912)))))))

(declare-fun lt!1471724 () Unit!63977)

(declare-fun lemmaSemiInverse!2158 (TokenValueInjection!14488 BalanceConc!26616) Unit!63977)

(assert (=> b!4125073 (= lt!1471724 (lemmaSemiInverse!2158 (transformation!7300 r!4008) lt!1471725))))

(declare-fun seqFromList!5417 (List!44764) BalanceConc!26616)

(assert (=> b!4125073 (= lt!1471725 (seqFromList!5417 p!2912))))

(declare-fun tp!1257054 () Bool)

(declare-fun b!4125074 () Bool)

(assert (=> b!4125074 (= e!2559639 (and tp!1257054 (inv!59219 (tag!8160 (h!50061 rules!3756))) (inv!59221 (transformation!7300 (h!50061 rules!3756))) e!2559643))))

(assert (= (and start!391338 res!1685948) b!4125066))

(assert (= (and b!4125066 res!1685941) b!4125060))

(assert (= (and b!4125060 res!1685946) b!4125070))

(assert (= (and b!4125070 res!1685943) b!4125061))

(assert (= (and b!4125061 res!1685935) b!4125063))

(assert (= (and b!4125063 res!1685937) b!4125056))

(assert (= (and b!4125056 res!1685947) b!4125073))

(assert (= (and b!4125073 res!1685939) b!4125069))

(assert (= (and b!4125069 res!1685942) b!4125052))

(assert (= (and b!4125052 res!1685944) b!4125057))

(assert (= (and b!4125057 res!1685936) b!4125071))

(assert (= (and b!4125071 (not res!1685938)) b!4125068))

(assert (= (and b!4125068 (not res!1685940)) b!4125054))

(assert (= (and b!4125054 (not res!1685945)) b!4125059))

(assert (= b!4125074 b!4125065))

(assert (= b!4125058 b!4125074))

(assert (= (and start!391338 ((_ is Cons!44641) rules!3756)) b!4125058))

(assert (= (and start!391338 ((_ is Cons!44640) p!2912)) b!4125053))

(assert (= b!4125072 b!4125067))

(assert (= start!391338 b!4125072))

(assert (= (and start!391338 ((_ is Cons!44640) input!3238)) b!4125062))

(assert (= b!4125064 b!4125055))

(assert (= start!391338 b!4125064))

(declare-fun m!4723793 () Bool)

(assert (=> b!4125061 m!4723793))

(declare-fun m!4723795 () Bool)

(assert (=> b!4125070 m!4723795))

(declare-fun m!4723797 () Bool)

(assert (=> b!4125066 m!4723797))

(declare-fun m!4723799 () Bool)

(assert (=> b!4125056 m!4723799))

(declare-fun m!4723801 () Bool)

(assert (=> b!4125074 m!4723801))

(declare-fun m!4723803 () Bool)

(assert (=> b!4125074 m!4723803))

(declare-fun m!4723805 () Bool)

(assert (=> b!4125069 m!4723805))

(declare-fun m!4723807 () Bool)

(assert (=> b!4125052 m!4723807))

(declare-fun m!4723809 () Bool)

(assert (=> b!4125052 m!4723809))

(declare-fun m!4723811 () Bool)

(assert (=> b!4125063 m!4723811))

(declare-fun m!4723813 () Bool)

(assert (=> b!4125073 m!4723813))

(declare-fun m!4723815 () Bool)

(assert (=> b!4125073 m!4723815))

(declare-fun m!4723817 () Bool)

(assert (=> b!4125073 m!4723817))

(declare-fun m!4723819 () Bool)

(assert (=> b!4125073 m!4723819))

(declare-fun m!4723821 () Bool)

(assert (=> b!4125073 m!4723821))

(declare-fun m!4723823 () Bool)

(assert (=> b!4125073 m!4723823))

(declare-fun m!4723825 () Bool)

(assert (=> b!4125072 m!4723825))

(declare-fun m!4723827 () Bool)

(assert (=> b!4125072 m!4723827))

(declare-fun m!4723829 () Bool)

(assert (=> b!4125060 m!4723829))

(declare-fun m!4723831 () Bool)

(assert (=> b!4125054 m!4723831))

(declare-fun m!4723833 () Bool)

(assert (=> b!4125068 m!4723833))

(declare-fun m!4723835 () Bool)

(assert (=> b!4125059 m!4723835))

(declare-fun m!4723837 () Bool)

(assert (=> b!4125071 m!4723837))

(declare-fun m!4723839 () Bool)

(assert (=> b!4125071 m!4723839))

(declare-fun m!4723841 () Bool)

(assert (=> b!4125071 m!4723841))

(declare-fun m!4723843 () Bool)

(assert (=> b!4125057 m!4723843))

(declare-fun m!4723845 () Bool)

(assert (=> b!4125064 m!4723845))

(declare-fun m!4723847 () Bool)

(assert (=> b!4125064 m!4723847))

(check-sat (not b_next!117529) b_and!319309 (not b!4125066) (not b!4125071) (not b_next!117525) (not b!4125059) (not b!4125072) (not b!4125058) b_and!319313 b_and!319317 tp_is_empty!21333 (not b!4125074) (not b!4125069) (not b!4125062) (not b!4125053) (not b!4125063) b_and!319311 (not b!4125052) (not b!4125054) (not b_next!117531) (not b!4125064) (not b_next!117533) (not b!4125057) (not b!4125060) (not b!4125070) (not b_next!117523) b_and!319315 (not b!4125068) b_and!319319 (not b!4125073) (not b!4125056) (not b!4125061) (not b_next!117527))
(check-sat (not b_next!117529) b_and!319309 (not b_next!117525) b_and!319311 b_and!319313 (not b_next!117531) b_and!319317 (not b_next!117533) (not b_next!117523) (not b_next!117527) b_and!319315 b_and!319319)
(get-model)

(declare-fun d!1222469 () Bool)

(declare-fun res!1685961 () Bool)

(declare-fun e!2559647 () Bool)

(assert (=> d!1222469 (=> (not res!1685961) (not e!2559647))))

(declare-fun rulesValid!2859 (LexerInterface!6889 List!44765) Bool)

(assert (=> d!1222469 (= res!1685961 (rulesValid!2859 thiss!25645 rules!3756))))

(assert (=> d!1222469 (= (rulesInvariant!6186 thiss!25645 rules!3756) e!2559647)))

(declare-fun b!4125077 () Bool)

(declare-datatypes ((List!44766 0))(
  ( (Nil!44642) (Cons!44642 (h!50062 String!51400) (t!341103 List!44766)) )
))
(declare-fun noDuplicateTag!2940 (LexerInterface!6889 List!44765 List!44766) Bool)

(assert (=> b!4125077 (= e!2559647 (noDuplicateTag!2940 thiss!25645 rules!3756 Nil!44642))))

(assert (= (and d!1222469 res!1685961) b!4125077))

(declare-fun m!4723849 () Bool)

(assert (=> d!1222469 m!4723849))

(declare-fun m!4723851 () Bool)

(assert (=> b!4125077 m!4723851))

(assert (=> b!4125070 d!1222469))

(declare-fun d!1222473 () Bool)

(declare-fun res!1685966 () Bool)

(declare-fun e!2559650 () Bool)

(assert (=> d!1222473 (=> (not res!1685966) (not e!2559650))))

(declare-fun validRegex!5489 (Regex!12205) Bool)

(assert (=> d!1222473 (= res!1685966 (validRegex!5489 (regex!7300 (h!50061 rules!3756))))))

(assert (=> d!1222473 (= (ruleValid!3108 thiss!25645 (h!50061 rules!3756)) e!2559650)))

(declare-fun b!4125082 () Bool)

(declare-fun res!1685967 () Bool)

(assert (=> b!4125082 (=> (not res!1685967) (not e!2559650))))

(declare-fun nullable!4283 (Regex!12205) Bool)

(assert (=> b!4125082 (= res!1685967 (not (nullable!4283 (regex!7300 (h!50061 rules!3756)))))))

(declare-fun b!4125083 () Bool)

(assert (=> b!4125083 (= e!2559650 (not (= (tag!8160 (h!50061 rules!3756)) (String!51401 ""))))))

(assert (= (and d!1222473 res!1685966) b!4125082))

(assert (= (and b!4125082 res!1685967) b!4125083))

(declare-fun m!4723853 () Bool)

(assert (=> d!1222473 m!4723853))

(declare-fun m!4723855 () Bool)

(assert (=> b!4125082 m!4723855))

(assert (=> b!4125059 d!1222473))

(declare-fun d!1222475 () Bool)

(assert (=> d!1222475 (= (isEmpty!26572 rules!3756) ((_ is Nil!44641) rules!3756))))

(assert (=> b!4125060 d!1222475))

(declare-fun d!1222477 () Bool)

(declare-fun e!2559681 () Bool)

(assert (=> d!1222477 e!2559681))

(declare-fun c!708046 () Bool)

(assert (=> d!1222477 (= c!708046 ((_ is EmptyExpr!12205) (regex!7300 r!4008)))))

(declare-fun lt!1471735 () Bool)

(declare-fun e!2559682 () Bool)

(assert (=> d!1222477 (= lt!1471735 e!2559682)))

(declare-fun c!708045 () Bool)

(assert (=> d!1222477 (= c!708045 (isEmpty!26571 p!2912))))

(assert (=> d!1222477 (validRegex!5489 (regex!7300 r!4008))))

(assert (=> d!1222477 (= (matchR!6036 (regex!7300 r!4008) p!2912) lt!1471735)))

(declare-fun b!4125132 () Bool)

(declare-fun e!2559683 () Bool)

(declare-fun head!8692 (List!44764) C!24596)

(assert (=> b!4125132 (= e!2559683 (= (head!8692 p!2912) (c!708035 (regex!7300 r!4008))))))

(declare-fun b!4125133 () Bool)

(declare-fun res!1686000 () Bool)

(assert (=> b!4125133 (=> (not res!1686000) (not e!2559683))))

(declare-fun call!290075 () Bool)

(assert (=> b!4125133 (= res!1686000 (not call!290075))))

(declare-fun b!4125134 () Bool)

(declare-fun derivativeStep!3678 (Regex!12205 C!24596) Regex!12205)

(declare-fun tail!6465 (List!44764) List!44764)

(assert (=> b!4125134 (= e!2559682 (matchR!6036 (derivativeStep!3678 (regex!7300 r!4008) (head!8692 p!2912)) (tail!6465 p!2912)))))

(declare-fun b!4125135 () Bool)

(declare-fun e!2559680 () Bool)

(declare-fun e!2559685 () Bool)

(assert (=> b!4125135 (= e!2559680 e!2559685)))

(declare-fun res!1686002 () Bool)

(assert (=> b!4125135 (=> (not res!1686002) (not e!2559685))))

(assert (=> b!4125135 (= res!1686002 (not lt!1471735))))

(declare-fun b!4125136 () Bool)

(declare-fun e!2559684 () Bool)

(assert (=> b!4125136 (= e!2559684 (not (= (head!8692 p!2912) (c!708035 (regex!7300 r!4008)))))))

(declare-fun b!4125137 () Bool)

(declare-fun res!1685997 () Bool)

(assert (=> b!4125137 (=> res!1685997 e!2559680)))

(assert (=> b!4125137 (= res!1685997 e!2559683)))

(declare-fun res!1685999 () Bool)

(assert (=> b!4125137 (=> (not res!1685999) (not e!2559683))))

(assert (=> b!4125137 (= res!1685999 lt!1471735)))

(declare-fun b!4125138 () Bool)

(declare-fun e!2559686 () Bool)

(assert (=> b!4125138 (= e!2559686 (not lt!1471735))))

(declare-fun b!4125139 () Bool)

(assert (=> b!4125139 (= e!2559681 e!2559686)))

(declare-fun c!708047 () Bool)

(assert (=> b!4125139 (= c!708047 ((_ is EmptyLang!12205) (regex!7300 r!4008)))))

(declare-fun b!4125140 () Bool)

(assert (=> b!4125140 (= e!2559681 (= lt!1471735 call!290075))))

(declare-fun b!4125141 () Bool)

(declare-fun res!1685996 () Bool)

(assert (=> b!4125141 (=> (not res!1685996) (not e!2559683))))

(assert (=> b!4125141 (= res!1685996 (isEmpty!26571 (tail!6465 p!2912)))))

(declare-fun b!4125142 () Bool)

(assert (=> b!4125142 (= e!2559682 (nullable!4283 (regex!7300 r!4008)))))

(declare-fun b!4125143 () Bool)

(assert (=> b!4125143 (= e!2559685 e!2559684)))

(declare-fun res!1686001 () Bool)

(assert (=> b!4125143 (=> res!1686001 e!2559684)))

(assert (=> b!4125143 (= res!1686001 call!290075)))

(declare-fun b!4125144 () Bool)

(declare-fun res!1686003 () Bool)

(assert (=> b!4125144 (=> res!1686003 e!2559684)))

(assert (=> b!4125144 (= res!1686003 (not (isEmpty!26571 (tail!6465 p!2912))))))

(declare-fun b!4125145 () Bool)

(declare-fun res!1685998 () Bool)

(assert (=> b!4125145 (=> res!1685998 e!2559680)))

(assert (=> b!4125145 (= res!1685998 (not ((_ is ElementMatch!12205) (regex!7300 r!4008))))))

(assert (=> b!4125145 (= e!2559686 e!2559680)))

(declare-fun bm!290070 () Bool)

(assert (=> bm!290070 (= call!290075 (isEmpty!26571 p!2912))))

(assert (= (and d!1222477 c!708045) b!4125142))

(assert (= (and d!1222477 (not c!708045)) b!4125134))

(assert (= (and d!1222477 c!708046) b!4125140))

(assert (= (and d!1222477 (not c!708046)) b!4125139))

(assert (= (and b!4125139 c!708047) b!4125138))

(assert (= (and b!4125139 (not c!708047)) b!4125145))

(assert (= (and b!4125145 (not res!1685998)) b!4125137))

(assert (= (and b!4125137 res!1685999) b!4125133))

(assert (= (and b!4125133 res!1686000) b!4125141))

(assert (= (and b!4125141 res!1685996) b!4125132))

(assert (= (and b!4125137 (not res!1685997)) b!4125135))

(assert (= (and b!4125135 res!1686002) b!4125143))

(assert (= (and b!4125143 (not res!1686001)) b!4125144))

(assert (= (and b!4125144 (not res!1686003)) b!4125136))

(assert (= (or b!4125140 b!4125133 b!4125143) bm!290070))

(declare-fun m!4723877 () Bool)

(assert (=> b!4125141 m!4723877))

(assert (=> b!4125141 m!4723877))

(declare-fun m!4723879 () Bool)

(assert (=> b!4125141 m!4723879))

(declare-fun m!4723881 () Bool)

(assert (=> b!4125132 m!4723881))

(assert (=> b!4125134 m!4723881))

(assert (=> b!4125134 m!4723881))

(declare-fun m!4723883 () Bool)

(assert (=> b!4125134 m!4723883))

(assert (=> b!4125134 m!4723877))

(assert (=> b!4125134 m!4723883))

(assert (=> b!4125134 m!4723877))

(declare-fun m!4723885 () Bool)

(assert (=> b!4125134 m!4723885))

(declare-fun m!4723887 () Bool)

(assert (=> b!4125142 m!4723887))

(assert (=> b!4125144 m!4723877))

(assert (=> b!4125144 m!4723877))

(assert (=> b!4125144 m!4723879))

(assert (=> d!1222477 m!4723799))

(declare-fun m!4723889 () Bool)

(assert (=> d!1222477 m!4723889))

(assert (=> b!4125136 m!4723881))

(assert (=> bm!290070 m!4723799))

(assert (=> b!4125069 d!1222477))

(declare-fun d!1222485 () Bool)

(declare-fun lt!1471738 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6882 (List!44765) (InoxSet Rule!14400))

(assert (=> d!1222485 (= lt!1471738 (select (content!6882 (t!341070 rules!3756)) r!4008))))

(declare-fun e!2559691 () Bool)

(assert (=> d!1222485 (= lt!1471738 e!2559691)))

(declare-fun res!1686008 () Bool)

(assert (=> d!1222485 (=> (not res!1686008) (not e!2559691))))

(assert (=> d!1222485 (= res!1686008 ((_ is Cons!44641) (t!341070 rules!3756)))))

(assert (=> d!1222485 (= (contains!8972 (t!341070 rules!3756) r!4008) lt!1471738)))

(declare-fun b!4125150 () Bool)

(declare-fun e!2559692 () Bool)

(assert (=> b!4125150 (= e!2559691 e!2559692)))

(declare-fun res!1686009 () Bool)

(assert (=> b!4125150 (=> res!1686009 e!2559692)))

(assert (=> b!4125150 (= res!1686009 (= (h!50061 (t!341070 rules!3756)) r!4008))))

(declare-fun b!4125151 () Bool)

(assert (=> b!4125151 (= e!2559692 (contains!8972 (t!341070 (t!341070 rules!3756)) r!4008))))

(assert (= (and d!1222485 res!1686008) b!4125150))

(assert (= (and b!4125150 (not res!1686009)) b!4125151))

(declare-fun m!4723891 () Bool)

(assert (=> d!1222485 m!4723891))

(declare-fun m!4723893 () Bool)

(assert (=> d!1222485 m!4723893))

(declare-fun m!4723895 () Bool)

(assert (=> b!4125151 m!4723895))

(assert (=> b!4125068 d!1222485))

(declare-fun d!1222487 () Bool)

(declare-fun res!1686010 () Bool)

(declare-fun e!2559693 () Bool)

(assert (=> d!1222487 (=> (not res!1686010) (not e!2559693))))

(assert (=> d!1222487 (= res!1686010 (validRegex!5489 (regex!7300 r!4008)))))

(assert (=> d!1222487 (= (ruleValid!3108 thiss!25645 r!4008) e!2559693)))

(declare-fun b!4125152 () Bool)

(declare-fun res!1686011 () Bool)

(assert (=> b!4125152 (=> (not res!1686011) (not e!2559693))))

(assert (=> b!4125152 (= res!1686011 (not (nullable!4283 (regex!7300 r!4008))))))

(declare-fun b!4125153 () Bool)

(assert (=> b!4125153 (= e!2559693 (not (= (tag!8160 r!4008) (String!51401 ""))))))

(assert (= (and d!1222487 res!1686010) b!4125152))

(assert (= (and b!4125152 res!1686011) b!4125153))

(assert (=> d!1222487 m!4723889))

(assert (=> b!4125152 m!4723887))

(assert (=> b!4125057 d!1222487))

(declare-fun b!4125164 () Bool)

(declare-fun e!2559702 () Bool)

(assert (=> b!4125164 (= e!2559702 (isPrefix!4235 (tail!6465 p!2912) (tail!6465 input!3238)))))

(declare-fun b!4125163 () Bool)

(declare-fun res!1686023 () Bool)

(assert (=> b!4125163 (=> (not res!1686023) (not e!2559702))))

(assert (=> b!4125163 (= res!1686023 (= (head!8692 p!2912) (head!8692 input!3238)))))

(declare-fun d!1222489 () Bool)

(declare-fun e!2559701 () Bool)

(assert (=> d!1222489 e!2559701))

(declare-fun res!1686022 () Bool)

(assert (=> d!1222489 (=> res!1686022 e!2559701)))

(declare-fun lt!1471741 () Bool)

(assert (=> d!1222489 (= res!1686022 (not lt!1471741))))

(declare-fun e!2559700 () Bool)

(assert (=> d!1222489 (= lt!1471741 e!2559700)))

(declare-fun res!1686020 () Bool)

(assert (=> d!1222489 (=> res!1686020 e!2559700)))

(assert (=> d!1222489 (= res!1686020 ((_ is Nil!44640) p!2912))))

(assert (=> d!1222489 (= (isPrefix!4235 p!2912 input!3238) lt!1471741)))

(declare-fun b!4125162 () Bool)

(assert (=> b!4125162 (= e!2559700 e!2559702)))

(declare-fun res!1686021 () Bool)

(assert (=> b!4125162 (=> (not res!1686021) (not e!2559702))))

(assert (=> b!4125162 (= res!1686021 (not ((_ is Nil!44640) input!3238)))))

(declare-fun b!4125165 () Bool)

(assert (=> b!4125165 (= e!2559701 (>= (size!33056 input!3238) (size!33056 p!2912)))))

(assert (= (and d!1222489 (not res!1686020)) b!4125162))

(assert (= (and b!4125162 res!1686021) b!4125163))

(assert (= (and b!4125163 res!1686023) b!4125164))

(assert (= (and d!1222489 (not res!1686022)) b!4125165))

(assert (=> b!4125164 m!4723877))

(declare-fun m!4723897 () Bool)

(assert (=> b!4125164 m!4723897))

(assert (=> b!4125164 m!4723877))

(assert (=> b!4125164 m!4723897))

(declare-fun m!4723899 () Bool)

(assert (=> b!4125164 m!4723899))

(assert (=> b!4125163 m!4723881))

(declare-fun m!4723901 () Bool)

(assert (=> b!4125163 m!4723901))

(declare-fun m!4723903 () Bool)

(assert (=> b!4125165 m!4723903))

(assert (=> b!4125165 m!4723813))

(assert (=> b!4125066 d!1222489))

(declare-fun d!1222491 () Bool)

(assert (=> d!1222491 (= (isEmpty!26571 p!2912) ((_ is Nil!44640) p!2912))))

(assert (=> b!4125056 d!1222491))

(declare-fun d!1222493 () Bool)

(declare-fun lt!1471742 () Bool)

(assert (=> d!1222493 (= lt!1471742 (select (content!6882 (t!341070 rules!3756)) rBis!149))))

(declare-fun e!2559703 () Bool)

(assert (=> d!1222493 (= lt!1471742 e!2559703)))

(declare-fun res!1686024 () Bool)

(assert (=> d!1222493 (=> (not res!1686024) (not e!2559703))))

(assert (=> d!1222493 (= res!1686024 ((_ is Cons!44641) (t!341070 rules!3756)))))

(assert (=> d!1222493 (= (contains!8972 (t!341070 rules!3756) rBis!149) lt!1471742)))

(declare-fun b!4125166 () Bool)

(declare-fun e!2559704 () Bool)

(assert (=> b!4125166 (= e!2559703 e!2559704)))

(declare-fun res!1686025 () Bool)

(assert (=> b!4125166 (=> res!1686025 e!2559704)))

(assert (=> b!4125166 (= res!1686025 (= (h!50061 (t!341070 rules!3756)) rBis!149))))

(declare-fun b!4125167 () Bool)

(assert (=> b!4125167 (= e!2559704 (contains!8972 (t!341070 (t!341070 rules!3756)) rBis!149))))

(assert (= (and d!1222493 res!1686024) b!4125166))

(assert (= (and b!4125166 (not res!1686025)) b!4125167))

(assert (=> d!1222493 m!4723891))

(declare-fun m!4723905 () Bool)

(assert (=> d!1222493 m!4723905))

(declare-fun m!4723907 () Bool)

(assert (=> b!4125167 m!4723907))

(assert (=> b!4125054 d!1222493))

(declare-fun d!1222495 () Bool)

(assert (=> d!1222495 (= (inv!59219 (tag!8160 (h!50061 rules!3756))) (= (mod (str.len (value!228603 (tag!8160 (h!50061 rules!3756)))) 2) 0))))

(assert (=> b!4125074 d!1222495))

(declare-fun d!1222497 () Bool)

(declare-fun res!1686028 () Bool)

(declare-fun e!2559707 () Bool)

(assert (=> d!1222497 (=> (not res!1686028) (not e!2559707))))

(declare-fun semiInverseModEq!3144 (Int Int) Bool)

(assert (=> d!1222497 (= res!1686028 (semiInverseModEq!3144 (toChars!9811 (transformation!7300 (h!50061 rules!3756))) (toValue!9952 (transformation!7300 (h!50061 rules!3756)))))))

(assert (=> d!1222497 (= (inv!59221 (transformation!7300 (h!50061 rules!3756))) e!2559707)))

(declare-fun b!4125170 () Bool)

(declare-fun equivClasses!3043 (Int Int) Bool)

(assert (=> b!4125170 (= e!2559707 (equivClasses!3043 (toChars!9811 (transformation!7300 (h!50061 rules!3756))) (toValue!9952 (transformation!7300 (h!50061 rules!3756)))))))

(assert (= (and d!1222497 res!1686028) b!4125170))

(declare-fun m!4723909 () Bool)

(assert (=> d!1222497 m!4723909))

(declare-fun m!4723911 () Bool)

(assert (=> b!4125170 m!4723911))

(assert (=> b!4125074 d!1222497))

(declare-fun d!1222499 () Bool)

(declare-fun lt!1471743 () Bool)

(assert (=> d!1222499 (= lt!1471743 (select (content!6882 rules!3756) rBis!149))))

(declare-fun e!2559708 () Bool)

(assert (=> d!1222499 (= lt!1471743 e!2559708)))

(declare-fun res!1686029 () Bool)

(assert (=> d!1222499 (=> (not res!1686029) (not e!2559708))))

(assert (=> d!1222499 (= res!1686029 ((_ is Cons!44641) rules!3756))))

(assert (=> d!1222499 (= (contains!8972 rules!3756 rBis!149) lt!1471743)))

(declare-fun b!4125171 () Bool)

(declare-fun e!2559709 () Bool)

(assert (=> b!4125171 (= e!2559708 e!2559709)))

(declare-fun res!1686030 () Bool)

(assert (=> b!4125171 (=> res!1686030 e!2559709)))

(assert (=> b!4125171 (= res!1686030 (= (h!50061 rules!3756) rBis!149))))

(declare-fun b!4125172 () Bool)

(assert (=> b!4125172 (= e!2559709 (contains!8972 (t!341070 rules!3756) rBis!149))))

(assert (= (and d!1222499 res!1686029) b!4125171))

(assert (= (and b!4125171 (not res!1686030)) b!4125172))

(declare-fun m!4723913 () Bool)

(assert (=> d!1222499 m!4723913))

(declare-fun m!4723915 () Bool)

(assert (=> d!1222499 m!4723915))

(assert (=> b!4125172 m!4723831))

(assert (=> b!4125063 d!1222499))

(declare-fun d!1222501 () Bool)

(assert (=> d!1222501 (= (inv!59219 (tag!8160 rBis!149)) (= (mod (str.len (value!228603 (tag!8160 rBis!149))) 2) 0))))

(assert (=> b!4125064 d!1222501))

(declare-fun d!1222503 () Bool)

(declare-fun res!1686031 () Bool)

(declare-fun e!2559710 () Bool)

(assert (=> d!1222503 (=> (not res!1686031) (not e!2559710))))

(assert (=> d!1222503 (= res!1686031 (semiInverseModEq!3144 (toChars!9811 (transformation!7300 rBis!149)) (toValue!9952 (transformation!7300 rBis!149))))))

(assert (=> d!1222503 (= (inv!59221 (transformation!7300 rBis!149)) e!2559710)))

(declare-fun b!4125173 () Bool)

(assert (=> b!4125173 (= e!2559710 (equivClasses!3043 (toChars!9811 (transformation!7300 rBis!149)) (toValue!9952 (transformation!7300 rBis!149))))))

(assert (= (and d!1222503 res!1686031) b!4125173))

(declare-fun m!4723917 () Bool)

(assert (=> d!1222503 m!4723917))

(declare-fun m!4723919 () Bool)

(assert (=> b!4125173 m!4723919))

(assert (=> b!4125064 d!1222503))

(declare-fun b!4125203 () Bool)

(declare-fun e!2559722 () Int)

(assert (=> b!4125203 (= e!2559722 (- 1))))

(declare-fun b!4125201 () Bool)

(declare-fun e!2559723 () Int)

(assert (=> b!4125201 (= e!2559723 e!2559722)))

(declare-fun c!708055 () Bool)

(assert (=> b!4125201 (= c!708055 (and ((_ is Cons!44641) rules!3756) (not (= (h!50061 rules!3756) rBis!149))))))

(declare-fun b!4125202 () Bool)

(assert (=> b!4125202 (= e!2559722 (+ 1 (getIndex!648 (t!341070 rules!3756) rBis!149)))))

(declare-fun d!1222505 () Bool)

(declare-fun lt!1471756 () Int)

(assert (=> d!1222505 (>= lt!1471756 0)))

(assert (=> d!1222505 (= lt!1471756 e!2559723)))

(declare-fun c!708054 () Bool)

(assert (=> d!1222505 (= c!708054 (and ((_ is Cons!44641) rules!3756) (= (h!50061 rules!3756) rBis!149)))))

(assert (=> d!1222505 (contains!8972 rules!3756 rBis!149)))

(assert (=> d!1222505 (= (getIndex!648 rules!3756 rBis!149) lt!1471756)))

(declare-fun b!4125200 () Bool)

(assert (=> b!4125200 (= e!2559723 0)))

(assert (= (and d!1222505 c!708054) b!4125200))

(assert (= (and d!1222505 (not c!708054)) b!4125201))

(assert (= (and b!4125201 c!708055) b!4125202))

(assert (= (and b!4125201 (not c!708055)) b!4125203))

(declare-fun m!4723921 () Bool)

(assert (=> b!4125202 m!4723921))

(assert (=> d!1222505 m!4723811))

(assert (=> b!4125052 d!1222505))

(declare-fun b!4125207 () Bool)

(declare-fun e!2559724 () Int)

(assert (=> b!4125207 (= e!2559724 (- 1))))

(declare-fun b!4125205 () Bool)

(declare-fun e!2559725 () Int)

(assert (=> b!4125205 (= e!2559725 e!2559724)))

(declare-fun c!708057 () Bool)

(assert (=> b!4125205 (= c!708057 (and ((_ is Cons!44641) rules!3756) (not (= (h!50061 rules!3756) r!4008))))))

(declare-fun b!4125206 () Bool)

(assert (=> b!4125206 (= e!2559724 (+ 1 (getIndex!648 (t!341070 rules!3756) r!4008)))))

(declare-fun d!1222507 () Bool)

(declare-fun lt!1471757 () Int)

(assert (=> d!1222507 (>= lt!1471757 0)))

(assert (=> d!1222507 (= lt!1471757 e!2559725)))

(declare-fun c!708056 () Bool)

(assert (=> d!1222507 (= c!708056 (and ((_ is Cons!44641) rules!3756) (= (h!50061 rules!3756) r!4008)))))

(assert (=> d!1222507 (contains!8972 rules!3756 r!4008)))

(assert (=> d!1222507 (= (getIndex!648 rules!3756 r!4008) lt!1471757)))

(declare-fun b!4125204 () Bool)

(assert (=> b!4125204 (= e!2559725 0)))

(assert (= (and d!1222507 c!708056) b!4125204))

(assert (= (and d!1222507 (not c!708056)) b!4125205))

(assert (= (and b!4125205 c!708057) b!4125206))

(assert (= (and b!4125205 (not c!708057)) b!4125207))

(declare-fun m!4723923 () Bool)

(assert (=> b!4125206 m!4723923))

(assert (=> d!1222507 m!4723793))

(assert (=> b!4125052 d!1222507))

(declare-fun d!1222509 () Bool)

(declare-fun lt!1471765 () List!44764)

(declare-fun ++!11566 (List!44764 List!44764) List!44764)

(assert (=> d!1222509 (= (++!11566 p!2912 lt!1471765) input!3238)))

(declare-fun e!2559731 () List!44764)

(assert (=> d!1222509 (= lt!1471765 e!2559731)))

(declare-fun c!708061 () Bool)

(assert (=> d!1222509 (= c!708061 ((_ is Cons!44640) p!2912))))

(assert (=> d!1222509 (>= (size!33056 input!3238) (size!33056 p!2912))))

(assert (=> d!1222509 (= (getSuffix!2564 input!3238 p!2912) lt!1471765)))

(declare-fun b!4125221 () Bool)

(assert (=> b!4125221 (= e!2559731 (getSuffix!2564 (tail!6465 input!3238) (t!341069 p!2912)))))

(declare-fun b!4125222 () Bool)

(assert (=> b!4125222 (= e!2559731 input!3238)))

(assert (= (and d!1222509 c!708061) b!4125221))

(assert (= (and d!1222509 (not c!708061)) b!4125222))

(declare-fun m!4723927 () Bool)

(assert (=> d!1222509 m!4723927))

(assert (=> d!1222509 m!4723903))

(assert (=> d!1222509 m!4723813))

(assert (=> b!4125221 m!4723897))

(assert (=> b!4125221 m!4723897))

(declare-fun m!4723937 () Bool)

(assert (=> b!4125221 m!4723937))

(assert (=> b!4125073 d!1222509))

(declare-fun b!4125241 () Bool)

(declare-fun res!1686069 () Bool)

(declare-fun e!2559740 () Bool)

(assert (=> b!4125241 (=> (not res!1686069) (not e!2559740))))

(declare-fun lt!1471779 () Option!9608)

(declare-fun get!14566 (Option!9608) tuple2!43094)

(declare-fun list!16371 (BalanceConc!26616) List!44764)

(declare-fun charsOf!4920 (Token!13530) BalanceConc!26616)

(assert (=> b!4125241 (= res!1686069 (matchR!6036 (regex!7300 (rule!10384 (_1!24681 (get!14566 lt!1471779)))) (list!16371 (charsOf!4920 (_1!24681 (get!14566 lt!1471779))))))))

(declare-fun b!4125242 () Bool)

(assert (=> b!4125242 (= e!2559740 (contains!8972 rules!3756 (rule!10384 (_1!24681 (get!14566 lt!1471779)))))))

(declare-fun call!290081 () Option!9608)

(declare-fun bm!290076 () Bool)

(declare-fun maxPrefixOneRule!3029 (LexerInterface!6889 Rule!14400 List!44764) Option!9608)

(assert (=> bm!290076 (= call!290081 (maxPrefixOneRule!3029 thiss!25645 (h!50061 rules!3756) input!3238))))

(declare-fun b!4125243 () Bool)

(declare-fun res!1686073 () Bool)

(assert (=> b!4125243 (=> (not res!1686073) (not e!2559740))))

(assert (=> b!4125243 (= res!1686073 (= (list!16371 (charsOf!4920 (_1!24681 (get!14566 lt!1471779)))) (originalCharacters!7796 (_1!24681 (get!14566 lt!1471779)))))))

(declare-fun b!4125244 () Bool)

(declare-fun res!1686068 () Bool)

(assert (=> b!4125244 (=> (not res!1686068) (not e!2559740))))

(assert (=> b!4125244 (= res!1686068 (= (value!228604 (_1!24681 (get!14566 lt!1471779))) (apply!10373 (transformation!7300 (rule!10384 (_1!24681 (get!14566 lt!1471779)))) (seqFromList!5417 (originalCharacters!7796 (_1!24681 (get!14566 lt!1471779)))))))))

(declare-fun b!4125245 () Bool)

(declare-fun res!1686067 () Bool)

(assert (=> b!4125245 (=> (not res!1686067) (not e!2559740))))

(assert (=> b!4125245 (= res!1686067 (= (++!11566 (list!16371 (charsOf!4920 (_1!24681 (get!14566 lt!1471779)))) (_2!24681 (get!14566 lt!1471779))) input!3238))))

(declare-fun d!1222511 () Bool)

(declare-fun e!2559739 () Bool)

(assert (=> d!1222511 e!2559739))

(declare-fun res!1686071 () Bool)

(assert (=> d!1222511 (=> res!1686071 e!2559739)))

(declare-fun isEmpty!26574 (Option!9608) Bool)

(assert (=> d!1222511 (= res!1686071 (isEmpty!26574 lt!1471779))))

(declare-fun e!2559738 () Option!9608)

(assert (=> d!1222511 (= lt!1471779 e!2559738)))

(declare-fun c!708065 () Bool)

(assert (=> d!1222511 (= c!708065 (and ((_ is Cons!44641) rules!3756) ((_ is Nil!44641) (t!341070 rules!3756))))))

(declare-fun lt!1471780 () Unit!63977)

(declare-fun lt!1471781 () Unit!63977)

(assert (=> d!1222511 (= lt!1471780 lt!1471781)))

(assert (=> d!1222511 (isPrefix!4235 input!3238 input!3238)))

(declare-fun lemmaIsPrefixRefl!2745 (List!44764 List!44764) Unit!63977)

(assert (=> d!1222511 (= lt!1471781 (lemmaIsPrefixRefl!2745 input!3238 input!3238))))

(declare-fun rulesValidInductive!2696 (LexerInterface!6889 List!44765) Bool)

(assert (=> d!1222511 (rulesValidInductive!2696 thiss!25645 rules!3756)))

(assert (=> d!1222511 (= (maxPrefix!4081 thiss!25645 rules!3756 input!3238) lt!1471779)))

(declare-fun b!4125246 () Bool)

(declare-fun res!1686070 () Bool)

(assert (=> b!4125246 (=> (not res!1686070) (not e!2559740))))

(assert (=> b!4125246 (= res!1686070 (< (size!33056 (_2!24681 (get!14566 lt!1471779))) (size!33056 input!3238)))))

(declare-fun b!4125247 () Bool)

(declare-fun lt!1471778 () Option!9608)

(declare-fun lt!1471782 () Option!9608)

(assert (=> b!4125247 (= e!2559738 (ite (and ((_ is None!9607) lt!1471778) ((_ is None!9607) lt!1471782)) None!9607 (ite ((_ is None!9607) lt!1471782) lt!1471778 (ite ((_ is None!9607) lt!1471778) lt!1471782 (ite (>= (size!33055 (_1!24681 (v!40203 lt!1471778))) (size!33055 (_1!24681 (v!40203 lt!1471782)))) lt!1471778 lt!1471782)))))))

(assert (=> b!4125247 (= lt!1471778 call!290081)))

(assert (=> b!4125247 (= lt!1471782 (maxPrefix!4081 thiss!25645 (t!341070 rules!3756) input!3238))))

(declare-fun b!4125248 () Bool)

(assert (=> b!4125248 (= e!2559738 call!290081)))

(declare-fun b!4125249 () Bool)

(assert (=> b!4125249 (= e!2559739 e!2559740)))

(declare-fun res!1686072 () Bool)

(assert (=> b!4125249 (=> (not res!1686072) (not e!2559740))))

(declare-fun isDefined!7239 (Option!9608) Bool)

(assert (=> b!4125249 (= res!1686072 (isDefined!7239 lt!1471779))))

(assert (= (and d!1222511 c!708065) b!4125248))

(assert (= (and d!1222511 (not c!708065)) b!4125247))

(assert (= (or b!4125248 b!4125247) bm!290076))

(assert (= (and d!1222511 (not res!1686071)) b!4125249))

(assert (= (and b!4125249 res!1686072) b!4125243))

(assert (= (and b!4125243 res!1686073) b!4125246))

(assert (= (and b!4125246 res!1686070) b!4125245))

(assert (= (and b!4125245 res!1686067) b!4125244))

(assert (= (and b!4125244 res!1686068) b!4125241))

(assert (= (and b!4125241 res!1686069) b!4125242))

(declare-fun m!4723963 () Bool)

(assert (=> b!4125241 m!4723963))

(declare-fun m!4723965 () Bool)

(assert (=> b!4125241 m!4723965))

(assert (=> b!4125241 m!4723965))

(declare-fun m!4723967 () Bool)

(assert (=> b!4125241 m!4723967))

(assert (=> b!4125241 m!4723967))

(declare-fun m!4723969 () Bool)

(assert (=> b!4125241 m!4723969))

(declare-fun m!4723971 () Bool)

(assert (=> bm!290076 m!4723971))

(assert (=> b!4125246 m!4723963))

(declare-fun m!4723973 () Bool)

(assert (=> b!4125246 m!4723973))

(assert (=> b!4125246 m!4723903))

(assert (=> b!4125245 m!4723963))

(assert (=> b!4125245 m!4723965))

(assert (=> b!4125245 m!4723965))

(assert (=> b!4125245 m!4723967))

(assert (=> b!4125245 m!4723967))

(declare-fun m!4723975 () Bool)

(assert (=> b!4125245 m!4723975))

(assert (=> b!4125243 m!4723963))

(assert (=> b!4125243 m!4723965))

(assert (=> b!4125243 m!4723965))

(assert (=> b!4125243 m!4723967))

(assert (=> b!4125242 m!4723963))

(declare-fun m!4723977 () Bool)

(assert (=> b!4125242 m!4723977))

(declare-fun m!4723979 () Bool)

(assert (=> b!4125249 m!4723979))

(declare-fun m!4723981 () Bool)

(assert (=> b!4125247 m!4723981))

(declare-fun m!4723983 () Bool)

(assert (=> d!1222511 m!4723983))

(declare-fun m!4723985 () Bool)

(assert (=> d!1222511 m!4723985))

(declare-fun m!4723987 () Bool)

(assert (=> d!1222511 m!4723987))

(declare-fun m!4723989 () Bool)

(assert (=> d!1222511 m!4723989))

(assert (=> b!4125244 m!4723963))

(declare-fun m!4723991 () Bool)

(assert (=> b!4125244 m!4723991))

(assert (=> b!4125244 m!4723991))

(declare-fun m!4723993 () Bool)

(assert (=> b!4125244 m!4723993))

(assert (=> b!4125073 d!1222511))

(declare-fun b!4125397 () Bool)

(declare-fun e!2559828 () Bool)

(assert (=> b!4125397 (= e!2559828 true)))

(declare-fun d!1222517 () Bool)

(assert (=> d!1222517 e!2559828))

(assert (= d!1222517 b!4125397))

(declare-fun order!23501 () Int)

(declare-fun order!23503 () Int)

(declare-fun lambda!128709 () Int)

(declare-fun dynLambda!19089 (Int Int) Int)

(declare-fun dynLambda!19090 (Int Int) Int)

(assert (=> b!4125397 (< (dynLambda!19089 order!23501 (toValue!9952 (transformation!7300 r!4008))) (dynLambda!19090 order!23503 lambda!128709))))

(declare-fun order!23505 () Int)

(declare-fun dynLambda!19091 (Int Int) Int)

(assert (=> b!4125397 (< (dynLambda!19091 order!23505 (toChars!9811 (transformation!7300 r!4008))) (dynLambda!19090 order!23503 lambda!128709))))

(declare-fun dynLambda!19092 (Int TokenValue!7530) BalanceConc!26616)

(declare-fun dynLambda!19093 (Int BalanceConc!26616) TokenValue!7530)

(assert (=> d!1222517 (= (list!16371 (dynLambda!19092 (toChars!9811 (transformation!7300 r!4008)) (dynLambda!19093 (toValue!9952 (transformation!7300 r!4008)) lt!1471725))) (list!16371 lt!1471725))))

(declare-fun lt!1471806 () Unit!63977)

(declare-fun ForallOf!928 (Int BalanceConc!26616) Unit!63977)

(assert (=> d!1222517 (= lt!1471806 (ForallOf!928 lambda!128709 lt!1471725))))

(assert (=> d!1222517 (= (lemmaSemiInverse!2158 (transformation!7300 r!4008) lt!1471725) lt!1471806)))

(declare-fun b_lambda!121071 () Bool)

(assert (=> (not b_lambda!121071) (not d!1222517)))

(declare-fun t!341088 () Bool)

(declare-fun tb!247543 () Bool)

(assert (=> (and b!4125067 (= (toChars!9811 (transformation!7300 r!4008)) (toChars!9811 (transformation!7300 r!4008))) t!341088) tb!247543))

(declare-fun b!4125402 () Bool)

(declare-fun tp!1257105 () Bool)

(declare-fun e!2559831 () Bool)

(declare-fun inv!59224 (Conc!13511) Bool)

(assert (=> b!4125402 (= e!2559831 (and (inv!59224 (c!708034 (dynLambda!19092 (toChars!9811 (transformation!7300 r!4008)) (dynLambda!19093 (toValue!9952 (transformation!7300 r!4008)) lt!1471725)))) tp!1257105))))

(declare-fun result!300798 () Bool)

(declare-fun inv!59225 (BalanceConc!26616) Bool)

(assert (=> tb!247543 (= result!300798 (and (inv!59225 (dynLambda!19092 (toChars!9811 (transformation!7300 r!4008)) (dynLambda!19093 (toValue!9952 (transformation!7300 r!4008)) lt!1471725))) e!2559831))))

(assert (= tb!247543 b!4125402))

(declare-fun m!4724071 () Bool)

(assert (=> b!4125402 m!4724071))

(declare-fun m!4724073 () Bool)

(assert (=> tb!247543 m!4724073))

(assert (=> d!1222517 t!341088))

(declare-fun b_and!319343 () Bool)

(assert (= b_and!319311 (and (=> t!341088 result!300798) b_and!319343)))

(declare-fun tb!247545 () Bool)

(declare-fun t!341090 () Bool)

(assert (=> (and b!4125055 (= (toChars!9811 (transformation!7300 rBis!149)) (toChars!9811 (transformation!7300 r!4008))) t!341090) tb!247545))

(declare-fun result!300802 () Bool)

(assert (= result!300802 result!300798))

(assert (=> d!1222517 t!341090))

(declare-fun b_and!319345 () Bool)

(assert (= b_and!319315 (and (=> t!341090 result!300802) b_and!319345)))

(declare-fun tb!247547 () Bool)

(declare-fun t!341092 () Bool)

(assert (=> (and b!4125065 (= (toChars!9811 (transformation!7300 (h!50061 rules!3756))) (toChars!9811 (transformation!7300 r!4008))) t!341092) tb!247547))

(declare-fun result!300804 () Bool)

(assert (= result!300804 result!300798))

(assert (=> d!1222517 t!341092))

(declare-fun b_and!319347 () Bool)

(assert (= b_and!319319 (and (=> t!341092 result!300804) b_and!319347)))

(declare-fun b_lambda!121073 () Bool)

(assert (=> (not b_lambda!121073) (not d!1222517)))

(declare-fun t!341094 () Bool)

(declare-fun tb!247549 () Bool)

(assert (=> (and b!4125067 (= (toValue!9952 (transformation!7300 r!4008)) (toValue!9952 (transformation!7300 r!4008))) t!341094) tb!247549))

(declare-fun result!300806 () Bool)

(declare-fun inv!21 (TokenValue!7530) Bool)

(assert (=> tb!247549 (= result!300806 (inv!21 (dynLambda!19093 (toValue!9952 (transformation!7300 r!4008)) lt!1471725)))))

(declare-fun m!4724075 () Bool)

(assert (=> tb!247549 m!4724075))

(assert (=> d!1222517 t!341094))

(declare-fun b_and!319349 () Bool)

(assert (= b_and!319309 (and (=> t!341094 result!300806) b_and!319349)))

(declare-fun tb!247551 () Bool)

(declare-fun t!341096 () Bool)

(assert (=> (and b!4125055 (= (toValue!9952 (transformation!7300 rBis!149)) (toValue!9952 (transformation!7300 r!4008))) t!341096) tb!247551))

(declare-fun result!300810 () Bool)

(assert (= result!300810 result!300806))

(assert (=> d!1222517 t!341096))

(declare-fun b_and!319351 () Bool)

(assert (= b_and!319313 (and (=> t!341096 result!300810) b_and!319351)))

(declare-fun tb!247553 () Bool)

(declare-fun t!341098 () Bool)

(assert (=> (and b!4125065 (= (toValue!9952 (transformation!7300 (h!50061 rules!3756))) (toValue!9952 (transformation!7300 r!4008))) t!341098) tb!247553))

(declare-fun result!300812 () Bool)

(assert (= result!300812 result!300806))

(assert (=> d!1222517 t!341098))

(declare-fun b_and!319353 () Bool)

(assert (= b_and!319317 (and (=> t!341098 result!300812) b_and!319353)))

(declare-fun m!4724077 () Bool)

(assert (=> d!1222517 m!4724077))

(declare-fun m!4724079 () Bool)

(assert (=> d!1222517 m!4724079))

(declare-fun m!4724081 () Bool)

(assert (=> d!1222517 m!4724081))

(assert (=> d!1222517 m!4724077))

(declare-fun m!4724083 () Bool)

(assert (=> d!1222517 m!4724083))

(declare-fun m!4724085 () Bool)

(assert (=> d!1222517 m!4724085))

(assert (=> d!1222517 m!4724081))

(assert (=> b!4125073 d!1222517))

(declare-fun d!1222563 () Bool)

(declare-fun fromListB!2478 (List!44764) BalanceConc!26616)

(assert (=> d!1222563 (= (seqFromList!5417 p!2912) (fromListB!2478 p!2912))))

(declare-fun bs!594785 () Bool)

(assert (= bs!594785 d!1222563))

(declare-fun m!4724087 () Bool)

(assert (=> bs!594785 m!4724087))

(assert (=> b!4125073 d!1222563))

(declare-fun d!1222565 () Bool)

(declare-fun lt!1471809 () Int)

(assert (=> d!1222565 (>= lt!1471809 0)))

(declare-fun e!2559837 () Int)

(assert (=> d!1222565 (= lt!1471809 e!2559837)))

(declare-fun c!708089 () Bool)

(assert (=> d!1222565 (= c!708089 ((_ is Nil!44640) p!2912))))

(assert (=> d!1222565 (= (size!33056 p!2912) lt!1471809)))

(declare-fun b!4125409 () Bool)

(assert (=> b!4125409 (= e!2559837 0)))

(declare-fun b!4125410 () Bool)

(assert (=> b!4125410 (= e!2559837 (+ 1 (size!33056 (t!341069 p!2912))))))

(assert (= (and d!1222565 c!708089) b!4125409))

(assert (= (and d!1222565 (not c!708089)) b!4125410))

(declare-fun m!4724089 () Bool)

(assert (=> b!4125410 m!4724089))

(assert (=> b!4125073 d!1222565))

(declare-fun d!1222567 () Bool)

(assert (=> d!1222567 (= (apply!10373 (transformation!7300 r!4008) lt!1471725) (dynLambda!19093 (toValue!9952 (transformation!7300 r!4008)) lt!1471725))))

(declare-fun b_lambda!121075 () Bool)

(assert (=> (not b_lambda!121075) (not d!1222567)))

(assert (=> d!1222567 t!341094))

(declare-fun b_and!319355 () Bool)

(assert (= b_and!319349 (and (=> t!341094 result!300806) b_and!319355)))

(assert (=> d!1222567 t!341096))

(declare-fun b_and!319357 () Bool)

(assert (= b_and!319351 (and (=> t!341096 result!300810) b_and!319357)))

(assert (=> d!1222567 t!341098))

(declare-fun b_and!319359 () Bool)

(assert (= b_and!319353 (and (=> t!341098 result!300812) b_and!319359)))

(assert (=> d!1222567 m!4724081))

(assert (=> b!4125073 d!1222567))

(declare-fun d!1222569 () Bool)

(assert (=> d!1222569 (ruleValid!3108 thiss!25645 r!4008)))

(declare-fun lt!1471812 () Unit!63977)

(declare-fun choose!25225 (LexerInterface!6889 Rule!14400 List!44765) Unit!63977)

(assert (=> d!1222569 (= lt!1471812 (choose!25225 thiss!25645 r!4008 rules!3756))))

(assert (=> d!1222569 (contains!8972 rules!3756 r!4008)))

(assert (=> d!1222569 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2152 thiss!25645 r!4008 rules!3756) lt!1471812)))

(declare-fun bs!594786 () Bool)

(assert (= bs!594786 d!1222569))

(assert (=> bs!594786 m!4723843))

(declare-fun m!4724091 () Bool)

(assert (=> bs!594786 m!4724091))

(assert (=> bs!594786 m!4723793))

(assert (=> b!4125071 d!1222569))

(declare-fun d!1222571 () Bool)

(declare-fun res!1686128 () Bool)

(declare-fun e!2559838 () Bool)

(assert (=> d!1222571 (=> (not res!1686128) (not e!2559838))))

(assert (=> d!1222571 (= res!1686128 (validRegex!5489 (regex!7300 rBis!149)))))

(assert (=> d!1222571 (= (ruleValid!3108 thiss!25645 rBis!149) e!2559838)))

(declare-fun b!4125411 () Bool)

(declare-fun res!1686129 () Bool)

(assert (=> b!4125411 (=> (not res!1686129) (not e!2559838))))

(assert (=> b!4125411 (= res!1686129 (not (nullable!4283 (regex!7300 rBis!149))))))

(declare-fun b!4125412 () Bool)

(assert (=> b!4125412 (= e!2559838 (not (= (tag!8160 rBis!149) (String!51401 ""))))))

(assert (= (and d!1222571 res!1686128) b!4125411))

(assert (= (and b!4125411 res!1686129) b!4125412))

(declare-fun m!4724093 () Bool)

(assert (=> d!1222571 m!4724093))

(declare-fun m!4724095 () Bool)

(assert (=> b!4125411 m!4724095))

(assert (=> b!4125071 d!1222571))

(declare-fun d!1222573 () Bool)

(assert (=> d!1222573 (ruleValid!3108 thiss!25645 rBis!149)))

(declare-fun lt!1471813 () Unit!63977)

(assert (=> d!1222573 (= lt!1471813 (choose!25225 thiss!25645 rBis!149 rules!3756))))

(assert (=> d!1222573 (contains!8972 rules!3756 rBis!149)))

(assert (=> d!1222573 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2152 thiss!25645 rBis!149 rules!3756) lt!1471813)))

(declare-fun bs!594787 () Bool)

(assert (= bs!594787 d!1222573))

(assert (=> bs!594787 m!4723839))

(declare-fun m!4724097 () Bool)

(assert (=> bs!594787 m!4724097))

(assert (=> bs!594787 m!4723811))

(assert (=> b!4125071 d!1222573))

(declare-fun d!1222575 () Bool)

(assert (=> d!1222575 (= (inv!59219 (tag!8160 r!4008)) (= (mod (str.len (value!228603 (tag!8160 r!4008))) 2) 0))))

(assert (=> b!4125072 d!1222575))

(declare-fun d!1222577 () Bool)

(declare-fun res!1686130 () Bool)

(declare-fun e!2559839 () Bool)

(assert (=> d!1222577 (=> (not res!1686130) (not e!2559839))))

(assert (=> d!1222577 (= res!1686130 (semiInverseModEq!3144 (toChars!9811 (transformation!7300 r!4008)) (toValue!9952 (transformation!7300 r!4008))))))

(assert (=> d!1222577 (= (inv!59221 (transformation!7300 r!4008)) e!2559839)))

(declare-fun b!4125413 () Bool)

(assert (=> b!4125413 (= e!2559839 (equivClasses!3043 (toChars!9811 (transformation!7300 r!4008)) (toValue!9952 (transformation!7300 r!4008))))))

(assert (= (and d!1222577 res!1686130) b!4125413))

(declare-fun m!4724099 () Bool)

(assert (=> d!1222577 m!4724099))

(declare-fun m!4724101 () Bool)

(assert (=> b!4125413 m!4724101))

(assert (=> b!4125072 d!1222577))

(declare-fun d!1222579 () Bool)

(declare-fun lt!1471814 () Bool)

(assert (=> d!1222579 (= lt!1471814 (select (content!6882 rules!3756) r!4008))))

(declare-fun e!2559840 () Bool)

(assert (=> d!1222579 (= lt!1471814 e!2559840)))

(declare-fun res!1686131 () Bool)

(assert (=> d!1222579 (=> (not res!1686131) (not e!2559840))))

(assert (=> d!1222579 (= res!1686131 ((_ is Cons!44641) rules!3756))))

(assert (=> d!1222579 (= (contains!8972 rules!3756 r!4008) lt!1471814)))

(declare-fun b!4125414 () Bool)

(declare-fun e!2559841 () Bool)

(assert (=> b!4125414 (= e!2559840 e!2559841)))

(declare-fun res!1686132 () Bool)

(assert (=> b!4125414 (=> res!1686132 e!2559841)))

(assert (=> b!4125414 (= res!1686132 (= (h!50061 rules!3756) r!4008))))

(declare-fun b!4125415 () Bool)

(assert (=> b!4125415 (= e!2559841 (contains!8972 (t!341070 rules!3756) r!4008))))

(assert (= (and d!1222579 res!1686131) b!4125414))

(assert (= (and b!4125414 (not res!1686132)) b!4125415))

(assert (=> d!1222579 m!4723913))

(declare-fun m!4724103 () Bool)

(assert (=> d!1222579 m!4724103))

(assert (=> b!4125415 m!4723833))

(assert (=> b!4125061 d!1222579))

(declare-fun b!4125426 () Bool)

(declare-fun b_free!116835 () Bool)

(declare-fun b_next!117539 () Bool)

(assert (=> b!4125426 (= b_free!116835 (not b_next!117539))))

(declare-fun tb!247555 () Bool)

(declare-fun t!341100 () Bool)

(assert (=> (and b!4125426 (= (toValue!9952 (transformation!7300 (h!50061 (t!341070 rules!3756)))) (toValue!9952 (transformation!7300 r!4008))) t!341100) tb!247555))

(declare-fun result!300816 () Bool)

(assert (= result!300816 result!300806))

(assert (=> d!1222517 t!341100))

(assert (=> d!1222567 t!341100))

(declare-fun b_and!319361 () Bool)

(declare-fun tp!1257114 () Bool)

(assert (=> b!4125426 (= tp!1257114 (and (=> t!341100 result!300816) b_and!319361))))

(declare-fun b_free!116837 () Bool)

(declare-fun b_next!117541 () Bool)

(assert (=> b!4125426 (= b_free!116837 (not b_next!117541))))

(declare-fun tb!247557 () Bool)

(declare-fun t!341102 () Bool)

(assert (=> (and b!4125426 (= (toChars!9811 (transformation!7300 (h!50061 (t!341070 rules!3756)))) (toChars!9811 (transformation!7300 r!4008))) t!341102) tb!247557))

(declare-fun result!300818 () Bool)

(assert (= result!300818 result!300798))

(assert (=> d!1222517 t!341102))

(declare-fun b_and!319363 () Bool)

(declare-fun tp!1257115 () Bool)

(assert (=> b!4125426 (= tp!1257115 (and (=> t!341102 result!300818) b_and!319363))))

(declare-fun e!2559852 () Bool)

(assert (=> b!4125426 (= e!2559852 (and tp!1257114 tp!1257115))))

(declare-fun b!4125425 () Bool)

(declare-fun e!2559853 () Bool)

(declare-fun tp!1257116 () Bool)

(assert (=> b!4125425 (= e!2559853 (and tp!1257116 (inv!59219 (tag!8160 (h!50061 (t!341070 rules!3756)))) (inv!59221 (transformation!7300 (h!50061 (t!341070 rules!3756)))) e!2559852))))

(declare-fun b!4125424 () Bool)

(declare-fun e!2559850 () Bool)

(declare-fun tp!1257117 () Bool)

(assert (=> b!4125424 (= e!2559850 (and e!2559853 tp!1257117))))

(assert (=> b!4125058 (= tp!1257049 e!2559850)))

(assert (= b!4125425 b!4125426))

(assert (= b!4125424 b!4125425))

(assert (= (and b!4125058 ((_ is Cons!44641) (t!341070 rules!3756))) b!4125424))

(declare-fun m!4724105 () Bool)

(assert (=> b!4125425 m!4724105))

(declare-fun m!4724107 () Bool)

(assert (=> b!4125425 m!4724107))

(declare-fun e!2559856 () Bool)

(assert (=> b!4125074 (= tp!1257054 e!2559856)))

(declare-fun b!4125437 () Bool)

(assert (=> b!4125437 (= e!2559856 tp_is_empty!21333)))

(declare-fun b!4125438 () Bool)

(declare-fun tp!1257130 () Bool)

(declare-fun tp!1257129 () Bool)

(assert (=> b!4125438 (= e!2559856 (and tp!1257130 tp!1257129))))

(declare-fun b!4125439 () Bool)

(declare-fun tp!1257128 () Bool)

(assert (=> b!4125439 (= e!2559856 tp!1257128)))

(declare-fun b!4125440 () Bool)

(declare-fun tp!1257131 () Bool)

(declare-fun tp!1257132 () Bool)

(assert (=> b!4125440 (= e!2559856 (and tp!1257131 tp!1257132))))

(assert (= (and b!4125074 ((_ is ElementMatch!12205) (regex!7300 (h!50061 rules!3756)))) b!4125437))

(assert (= (and b!4125074 ((_ is Concat!19736) (regex!7300 (h!50061 rules!3756)))) b!4125438))

(assert (= (and b!4125074 ((_ is Star!12205) (regex!7300 (h!50061 rules!3756)))) b!4125439))

(assert (= (and b!4125074 ((_ is Union!12205) (regex!7300 (h!50061 rules!3756)))) b!4125440))

(declare-fun e!2559857 () Bool)

(assert (=> b!4125064 (= tp!1257047 e!2559857)))

(declare-fun b!4125441 () Bool)

(assert (=> b!4125441 (= e!2559857 tp_is_empty!21333)))

(declare-fun b!4125442 () Bool)

(declare-fun tp!1257135 () Bool)

(declare-fun tp!1257134 () Bool)

(assert (=> b!4125442 (= e!2559857 (and tp!1257135 tp!1257134))))

(declare-fun b!4125443 () Bool)

(declare-fun tp!1257133 () Bool)

(assert (=> b!4125443 (= e!2559857 tp!1257133)))

(declare-fun b!4125444 () Bool)

(declare-fun tp!1257136 () Bool)

(declare-fun tp!1257137 () Bool)

(assert (=> b!4125444 (= e!2559857 (and tp!1257136 tp!1257137))))

(assert (= (and b!4125064 ((_ is ElementMatch!12205) (regex!7300 rBis!149))) b!4125441))

(assert (= (and b!4125064 ((_ is Concat!19736) (regex!7300 rBis!149))) b!4125442))

(assert (= (and b!4125064 ((_ is Star!12205) (regex!7300 rBis!149))) b!4125443))

(assert (= (and b!4125064 ((_ is Union!12205) (regex!7300 rBis!149))) b!4125444))

(declare-fun b!4125449 () Bool)

(declare-fun e!2559860 () Bool)

(declare-fun tp!1257140 () Bool)

(assert (=> b!4125449 (= e!2559860 (and tp_is_empty!21333 tp!1257140))))

(assert (=> b!4125053 (= tp!1257056 e!2559860)))

(assert (= (and b!4125053 ((_ is Cons!44640) (t!341069 p!2912))) b!4125449))

(declare-fun b!4125450 () Bool)

(declare-fun e!2559861 () Bool)

(declare-fun tp!1257141 () Bool)

(assert (=> b!4125450 (= e!2559861 (and tp_is_empty!21333 tp!1257141))))

(assert (=> b!4125062 (= tp!1257055 e!2559861)))

(assert (= (and b!4125062 ((_ is Cons!44640) (t!341069 input!3238))) b!4125450))

(declare-fun e!2559862 () Bool)

(assert (=> b!4125072 (= tp!1257057 e!2559862)))

(declare-fun b!4125451 () Bool)

(assert (=> b!4125451 (= e!2559862 tp_is_empty!21333)))

(declare-fun b!4125452 () Bool)

(declare-fun tp!1257144 () Bool)

(declare-fun tp!1257143 () Bool)

(assert (=> b!4125452 (= e!2559862 (and tp!1257144 tp!1257143))))

(declare-fun b!4125453 () Bool)

(declare-fun tp!1257142 () Bool)

(assert (=> b!4125453 (= e!2559862 tp!1257142)))

(declare-fun b!4125454 () Bool)

(declare-fun tp!1257145 () Bool)

(declare-fun tp!1257146 () Bool)

(assert (=> b!4125454 (= e!2559862 (and tp!1257145 tp!1257146))))

(assert (= (and b!4125072 ((_ is ElementMatch!12205) (regex!7300 r!4008))) b!4125451))

(assert (= (and b!4125072 ((_ is Concat!19736) (regex!7300 r!4008))) b!4125452))

(assert (= (and b!4125072 ((_ is Star!12205) (regex!7300 r!4008))) b!4125453))

(assert (= (and b!4125072 ((_ is Union!12205) (regex!7300 r!4008))) b!4125454))

(declare-fun b_lambda!121077 () Bool)

(assert (= b_lambda!121071 (or (and b!4125067 b_free!116821) (and b!4125055 b_free!116825 (= (toChars!9811 (transformation!7300 rBis!149)) (toChars!9811 (transformation!7300 r!4008)))) (and b!4125065 b_free!116829 (= (toChars!9811 (transformation!7300 (h!50061 rules!3756))) (toChars!9811 (transformation!7300 r!4008)))) (and b!4125426 b_free!116837 (= (toChars!9811 (transformation!7300 (h!50061 (t!341070 rules!3756)))) (toChars!9811 (transformation!7300 r!4008)))) b_lambda!121077)))

(declare-fun b_lambda!121079 () Bool)

(assert (= b_lambda!121075 (or (and b!4125067 b_free!116819) (and b!4125055 b_free!116823 (= (toValue!9952 (transformation!7300 rBis!149)) (toValue!9952 (transformation!7300 r!4008)))) (and b!4125065 b_free!116827 (= (toValue!9952 (transformation!7300 (h!50061 rules!3756))) (toValue!9952 (transformation!7300 r!4008)))) (and b!4125426 b_free!116835 (= (toValue!9952 (transformation!7300 (h!50061 (t!341070 rules!3756)))) (toValue!9952 (transformation!7300 r!4008)))) b_lambda!121079)))

(declare-fun b_lambda!121081 () Bool)

(assert (= b_lambda!121073 (or (and b!4125067 b_free!116819) (and b!4125055 b_free!116823 (= (toValue!9952 (transformation!7300 rBis!149)) (toValue!9952 (transformation!7300 r!4008)))) (and b!4125065 b_free!116827 (= (toValue!9952 (transformation!7300 (h!50061 rules!3756))) (toValue!9952 (transformation!7300 r!4008)))) (and b!4125426 b_free!116835 (= (toValue!9952 (transformation!7300 (h!50061 (t!341070 rules!3756)))) (toValue!9952 (transformation!7300 r!4008)))) b_lambda!121081)))

(check-sat (not b_next!117541) b_and!319347 b_and!319357 (not b!4125438) (not b!4125141) (not b!4125439) (not d!1222493) (not b!4125173) (not b!4125246) (not d!1222469) (not b_next!117529) (not d!1222497) (not d!1222511) (not b!4125453) b_and!319355 (not d!1222573) (not b!4125452) (not b!4125136) (not b!4125424) (not b_next!117539) (not b!4125134) b_and!319363 (not d!1222503) (not b!4125164) (not b!4125242) (not b_lambda!121081) (not b_next!117525) b_and!319345 (not b!4125454) (not b!4125413) (not b!4125440) (not b!4125151) (not b!4125411) (not b!4125449) b_and!319361 (not d!1222473) (not b!4125132) (not b!4125410) (not tb!247549) (not d!1222499) (not b!4125425) (not d!1222579) (not bm!290076) (not b!4125206) (not b!4125152) (not b!4125172) (not b!4125167) (not d!1222509) (not b_lambda!121077) (not b!4125221) (not b!4125144) (not b_next!117531) (not d!1222507) (not b!4125244) (not b!4125247) b_and!319359 (not b!4125450) (not b!4125170) (not b!4125243) (not b_next!117533) (not b!4125082) (not b!4125077) (not b_lambda!121079) (not d!1222563) (not bm!290070) (not b!4125442) (not b_next!117523) (not b!4125241) (not d!1222569) (not d!1222571) tp_is_empty!21333 (not b!4125202) (not d!1222485) (not b!4125415) b_and!319343 (not b!4125142) (not b!4125443) (not b!4125165) (not b!4125249) (not d!1222517) (not tb!247543) (not b_next!117527) (not d!1222477) (not b!4125444) (not d!1222505) (not b!4125402) (not d!1222577) (not b!4125163) (not b!4125245) (not d!1222487))
(check-sat (not b_next!117541) b_and!319347 (not b_next!117539) b_and!319357 b_and!319345 b_and!319361 (not b_next!117531) (not b_next!117523) b_and!319343 (not b_next!117527) (not b_next!117529) b_and!319355 b_and!319363 (not b_next!117525) b_and!319359 (not b_next!117533))
(get-model)

(assert (=> b!4125415 d!1222485))

(assert (=> bm!290070 d!1222491))

(declare-fun d!1222599 () Bool)

(assert (=> d!1222599 (= (isEmpty!26571 (tail!6465 p!2912)) ((_ is Nil!44640) (tail!6465 p!2912)))))

(assert (=> b!4125144 d!1222599))

(declare-fun d!1222601 () Bool)

(assert (=> d!1222601 (= (tail!6465 p!2912) (t!341069 p!2912))))

(assert (=> b!4125144 d!1222601))

(declare-fun d!1222603 () Bool)

(assert (=> d!1222603 (= (isDefined!7239 lt!1471779) (not (isEmpty!26574 lt!1471779)))))

(declare-fun bs!594789 () Bool)

(assert (= bs!594789 d!1222603))

(assert (=> bs!594789 m!4723983))

(assert (=> b!4125249 d!1222603))

(declare-fun d!1222605 () Bool)

(declare-fun c!708097 () Bool)

(assert (=> d!1222605 (= c!708097 ((_ is Nil!44641) rules!3756))))

(declare-fun e!2559874 () (InoxSet Rule!14400))

(assert (=> d!1222605 (= (content!6882 rules!3756) e!2559874)))

(declare-fun b!4125480 () Bool)

(assert (=> b!4125480 (= e!2559874 ((as const (Array Rule!14400 Bool)) false))))

(declare-fun b!4125481 () Bool)

(assert (=> b!4125481 (= e!2559874 ((_ map or) (store ((as const (Array Rule!14400 Bool)) false) (h!50061 rules!3756) true) (content!6882 (t!341070 rules!3756))))))

(assert (= (and d!1222605 c!708097) b!4125480))

(assert (= (and d!1222605 (not c!708097)) b!4125481))

(declare-fun m!4724151 () Bool)

(assert (=> b!4125481 m!4724151))

(assert (=> b!4125481 m!4723891))

(assert (=> d!1222499 d!1222605))

(declare-fun d!1222607 () Bool)

(declare-fun res!1686146 () Bool)

(declare-fun e!2559879 () Bool)

(assert (=> d!1222607 (=> res!1686146 e!2559879)))

(assert (=> d!1222607 (= res!1686146 ((_ is Nil!44641) rules!3756))))

(assert (=> d!1222607 (= (noDuplicateTag!2940 thiss!25645 rules!3756 Nil!44642) e!2559879)))

(declare-fun b!4125486 () Bool)

(declare-fun e!2559880 () Bool)

(assert (=> b!4125486 (= e!2559879 e!2559880)))

(declare-fun res!1686147 () Bool)

(assert (=> b!4125486 (=> (not res!1686147) (not e!2559880))))

(declare-fun contains!8973 (List!44766 String!51400) Bool)

(assert (=> b!4125486 (= res!1686147 (not (contains!8973 Nil!44642 (tag!8160 (h!50061 rules!3756)))))))

(declare-fun b!4125487 () Bool)

(assert (=> b!4125487 (= e!2559880 (noDuplicateTag!2940 thiss!25645 (t!341070 rules!3756) (Cons!44642 (tag!8160 (h!50061 rules!3756)) Nil!44642)))))

(assert (= (and d!1222607 (not res!1686146)) b!4125486))

(assert (= (and b!4125486 res!1686147) b!4125487))

(declare-fun m!4724153 () Bool)

(assert (=> b!4125486 m!4724153))

(declare-fun m!4724155 () Bool)

(assert (=> b!4125487 m!4724155))

(assert (=> b!4125077 d!1222607))

(declare-fun d!1222609 () Bool)

(declare-fun c!708102 () Bool)

(assert (=> d!1222609 (= c!708102 ((_ is Node!13511) (c!708034 (dynLambda!19092 (toChars!9811 (transformation!7300 r!4008)) (dynLambda!19093 (toValue!9952 (transformation!7300 r!4008)) lt!1471725)))))))

(declare-fun e!2559893 () Bool)

(assert (=> d!1222609 (= (inv!59224 (c!708034 (dynLambda!19092 (toChars!9811 (transformation!7300 r!4008)) (dynLambda!19093 (toValue!9952 (transformation!7300 r!4008)) lt!1471725)))) e!2559893)))

(declare-fun b!4125512 () Bool)

(declare-fun inv!59226 (Conc!13511) Bool)

(assert (=> b!4125512 (= e!2559893 (inv!59226 (c!708034 (dynLambda!19092 (toChars!9811 (transformation!7300 r!4008)) (dynLambda!19093 (toValue!9952 (transformation!7300 r!4008)) lt!1471725)))))))

(declare-fun b!4125513 () Bool)

(declare-fun e!2559894 () Bool)

(assert (=> b!4125513 (= e!2559893 e!2559894)))

(declare-fun res!1686164 () Bool)

(assert (=> b!4125513 (= res!1686164 (not ((_ is Leaf!20876) (c!708034 (dynLambda!19092 (toChars!9811 (transformation!7300 r!4008)) (dynLambda!19093 (toValue!9952 (transformation!7300 r!4008)) lt!1471725))))))))

(assert (=> b!4125513 (=> res!1686164 e!2559894)))

(declare-fun b!4125514 () Bool)

(declare-fun inv!59227 (Conc!13511) Bool)

(assert (=> b!4125514 (= e!2559894 (inv!59227 (c!708034 (dynLambda!19092 (toChars!9811 (transformation!7300 r!4008)) (dynLambda!19093 (toValue!9952 (transformation!7300 r!4008)) lt!1471725)))))))

(assert (= (and d!1222609 c!708102) b!4125512))

(assert (= (and d!1222609 (not c!708102)) b!4125513))

(assert (= (and b!4125513 (not res!1686164)) b!4125514))

(declare-fun m!4724157 () Bool)

(assert (=> b!4125512 m!4724157))

(declare-fun m!4724159 () Bool)

(assert (=> b!4125514 m!4724159))

(assert (=> b!4125402 d!1222609))

(declare-fun d!1222611 () Bool)

(declare-fun c!708103 () Bool)

(assert (=> d!1222611 (= c!708103 ((_ is Nil!44641) (t!341070 rules!3756)))))

(declare-fun e!2559895 () (InoxSet Rule!14400))

(assert (=> d!1222611 (= (content!6882 (t!341070 rules!3756)) e!2559895)))

(declare-fun b!4125515 () Bool)

(assert (=> b!4125515 (= e!2559895 ((as const (Array Rule!14400 Bool)) false))))

(declare-fun b!4125516 () Bool)

(assert (=> b!4125516 (= e!2559895 ((_ map or) (store ((as const (Array Rule!14400 Bool)) false) (h!50061 (t!341070 rules!3756)) true) (content!6882 (t!341070 (t!341070 rules!3756)))))))

(assert (= (and d!1222611 c!708103) b!4125515))

(assert (= (and d!1222611 (not c!708103)) b!4125516))

(declare-fun m!4724161 () Bool)

(assert (=> b!4125516 m!4724161))

(declare-fun m!4724163 () Bool)

(assert (=> b!4125516 m!4724163))

(assert (=> d!1222493 d!1222611))

(declare-fun b!4125520 () Bool)

(declare-fun e!2559896 () Int)

(assert (=> b!4125520 (= e!2559896 (- 1))))

(declare-fun b!4125518 () Bool)

(declare-fun e!2559897 () Int)

(assert (=> b!4125518 (= e!2559897 e!2559896)))

(declare-fun c!708105 () Bool)

(assert (=> b!4125518 (= c!708105 (and ((_ is Cons!44641) (t!341070 rules!3756)) (not (= (h!50061 (t!341070 rules!3756)) rBis!149))))))

(declare-fun b!4125519 () Bool)

(assert (=> b!4125519 (= e!2559896 (+ 1 (getIndex!648 (t!341070 (t!341070 rules!3756)) rBis!149)))))

(declare-fun d!1222613 () Bool)

(declare-fun lt!1471833 () Int)

(assert (=> d!1222613 (>= lt!1471833 0)))

(assert (=> d!1222613 (= lt!1471833 e!2559897)))

(declare-fun c!708104 () Bool)

(assert (=> d!1222613 (= c!708104 (and ((_ is Cons!44641) (t!341070 rules!3756)) (= (h!50061 (t!341070 rules!3756)) rBis!149)))))

(assert (=> d!1222613 (contains!8972 (t!341070 rules!3756) rBis!149)))

(assert (=> d!1222613 (= (getIndex!648 (t!341070 rules!3756) rBis!149) lt!1471833)))

(declare-fun b!4125517 () Bool)

(assert (=> b!4125517 (= e!2559897 0)))

(assert (= (and d!1222613 c!708104) b!4125517))

(assert (= (and d!1222613 (not c!708104)) b!4125518))

(assert (= (and b!4125518 c!708105) b!4125519))

(assert (= (and b!4125518 (not c!708105)) b!4125520))

(declare-fun m!4724165 () Bool)

(assert (=> b!4125519 m!4724165))

(assert (=> d!1222613 m!4723831))

(assert (=> b!4125202 d!1222613))

(declare-fun d!1222615 () Bool)

(assert (=> d!1222615 (= (isEmpty!26574 lt!1471779) (not ((_ is Some!9607) lt!1471779)))))

(assert (=> d!1222511 d!1222615))

(declare-fun b!4125523 () Bool)

(declare-fun e!2559900 () Bool)

(assert (=> b!4125523 (= e!2559900 (isPrefix!4235 (tail!6465 input!3238) (tail!6465 input!3238)))))

(declare-fun b!4125522 () Bool)

(declare-fun res!1686168 () Bool)

(assert (=> b!4125522 (=> (not res!1686168) (not e!2559900))))

(assert (=> b!4125522 (= res!1686168 (= (head!8692 input!3238) (head!8692 input!3238)))))

(declare-fun d!1222617 () Bool)

(declare-fun e!2559899 () Bool)

(assert (=> d!1222617 e!2559899))

(declare-fun res!1686167 () Bool)

(assert (=> d!1222617 (=> res!1686167 e!2559899)))

(declare-fun lt!1471834 () Bool)

(assert (=> d!1222617 (= res!1686167 (not lt!1471834))))

(declare-fun e!2559898 () Bool)

(assert (=> d!1222617 (= lt!1471834 e!2559898)))

(declare-fun res!1686165 () Bool)

(assert (=> d!1222617 (=> res!1686165 e!2559898)))

(assert (=> d!1222617 (= res!1686165 ((_ is Nil!44640) input!3238))))

(assert (=> d!1222617 (= (isPrefix!4235 input!3238 input!3238) lt!1471834)))

(declare-fun b!4125521 () Bool)

(assert (=> b!4125521 (= e!2559898 e!2559900)))

(declare-fun res!1686166 () Bool)

(assert (=> b!4125521 (=> (not res!1686166) (not e!2559900))))

(assert (=> b!4125521 (= res!1686166 (not ((_ is Nil!44640) input!3238)))))

(declare-fun b!4125524 () Bool)

(assert (=> b!4125524 (= e!2559899 (>= (size!33056 input!3238) (size!33056 input!3238)))))

(assert (= (and d!1222617 (not res!1686165)) b!4125521))

(assert (= (and b!4125521 res!1686166) b!4125522))

(assert (= (and b!4125522 res!1686168) b!4125523))

(assert (= (and d!1222617 (not res!1686167)) b!4125524))

(assert (=> b!4125523 m!4723897))

(assert (=> b!4125523 m!4723897))

(assert (=> b!4125523 m!4723897))

(assert (=> b!4125523 m!4723897))

(declare-fun m!4724167 () Bool)

(assert (=> b!4125523 m!4724167))

(assert (=> b!4125522 m!4723901))

(assert (=> b!4125522 m!4723901))

(assert (=> b!4125524 m!4723903))

(assert (=> b!4125524 m!4723903))

(assert (=> d!1222511 d!1222617))

(declare-fun d!1222619 () Bool)

(assert (=> d!1222619 (isPrefix!4235 input!3238 input!3238)))

(declare-fun lt!1471837 () Unit!63977)

(declare-fun choose!25227 (List!44764 List!44764) Unit!63977)

(assert (=> d!1222619 (= lt!1471837 (choose!25227 input!3238 input!3238))))

(assert (=> d!1222619 (= (lemmaIsPrefixRefl!2745 input!3238 input!3238) lt!1471837)))

(declare-fun bs!594790 () Bool)

(assert (= bs!594790 d!1222619))

(assert (=> bs!594790 m!4723985))

(declare-fun m!4724169 () Bool)

(assert (=> bs!594790 m!4724169))

(assert (=> d!1222511 d!1222619))

(declare-fun d!1222621 () Bool)

(assert (=> d!1222621 true))

(declare-fun lt!1471845 () Bool)

(declare-fun lambda!128715 () Int)

(declare-fun forall!8447 (List!44765 Int) Bool)

(assert (=> d!1222621 (= lt!1471845 (forall!8447 rules!3756 lambda!128715))))

(declare-fun e!2559910 () Bool)

(assert (=> d!1222621 (= lt!1471845 e!2559910)))

(declare-fun res!1686180 () Bool)

(assert (=> d!1222621 (=> res!1686180 e!2559910)))

(assert (=> d!1222621 (= res!1686180 (not ((_ is Cons!44641) rules!3756)))))

(assert (=> d!1222621 (= (rulesValidInductive!2696 thiss!25645 rules!3756) lt!1471845)))

(declare-fun b!4125538 () Bool)

(declare-fun e!2559909 () Bool)

(assert (=> b!4125538 (= e!2559910 e!2559909)))

(declare-fun res!1686181 () Bool)

(assert (=> b!4125538 (=> (not res!1686181) (not e!2559909))))

(assert (=> b!4125538 (= res!1686181 (ruleValid!3108 thiss!25645 (h!50061 rules!3756)))))

(declare-fun b!4125539 () Bool)

(assert (=> b!4125539 (= e!2559909 (rulesValidInductive!2696 thiss!25645 (t!341070 rules!3756)))))

(assert (= (and d!1222621 (not res!1686180)) b!4125538))

(assert (= (and b!4125538 res!1686181) b!4125539))

(declare-fun m!4724199 () Bool)

(assert (=> d!1222621 m!4724199))

(assert (=> b!4125538 m!4723835))

(declare-fun m!4724201 () Bool)

(assert (=> b!4125539 m!4724201))

(assert (=> d!1222511 d!1222621))

(declare-fun d!1222623 () Bool)

(declare-fun lt!1471846 () List!44764)

(assert (=> d!1222623 (= (++!11566 (t!341069 p!2912) lt!1471846) (tail!6465 input!3238))))

(declare-fun e!2559911 () List!44764)

(assert (=> d!1222623 (= lt!1471846 e!2559911)))

(declare-fun c!708107 () Bool)

(assert (=> d!1222623 (= c!708107 ((_ is Cons!44640) (t!341069 p!2912)))))

(assert (=> d!1222623 (>= (size!33056 (tail!6465 input!3238)) (size!33056 (t!341069 p!2912)))))

(assert (=> d!1222623 (= (getSuffix!2564 (tail!6465 input!3238) (t!341069 p!2912)) lt!1471846)))

(declare-fun b!4125542 () Bool)

(assert (=> b!4125542 (= e!2559911 (getSuffix!2564 (tail!6465 (tail!6465 input!3238)) (t!341069 (t!341069 p!2912))))))

(declare-fun b!4125543 () Bool)

(assert (=> b!4125543 (= e!2559911 (tail!6465 input!3238))))

(assert (= (and d!1222623 c!708107) b!4125542))

(assert (= (and d!1222623 (not c!708107)) b!4125543))

(declare-fun m!4724211 () Bool)

(assert (=> d!1222623 m!4724211))

(assert (=> d!1222623 m!4723897))

(declare-fun m!4724215 () Bool)

(assert (=> d!1222623 m!4724215))

(assert (=> d!1222623 m!4724089))

(assert (=> b!4125542 m!4723897))

(declare-fun m!4724219 () Bool)

(assert (=> b!4125542 m!4724219))

(assert (=> b!4125542 m!4724219))

(declare-fun m!4724223 () Bool)

(assert (=> b!4125542 m!4724223))

(assert (=> b!4125221 d!1222623))

(declare-fun d!1222625 () Bool)

(assert (=> d!1222625 (= (tail!6465 input!3238) (t!341069 input!3238))))

(assert (=> b!4125221 d!1222625))

(declare-fun d!1222629 () Bool)

(assert (=> d!1222629 (= (head!8692 p!2912) (h!50060 p!2912))))

(assert (=> b!4125136 d!1222629))

(declare-fun d!1222631 () Bool)

(declare-fun lt!1471847 () Bool)

(assert (=> d!1222631 (= lt!1471847 (select (content!6882 (t!341070 (t!341070 rules!3756))) rBis!149))))

(declare-fun e!2559912 () Bool)

(assert (=> d!1222631 (= lt!1471847 e!2559912)))

(declare-fun res!1686182 () Bool)

(assert (=> d!1222631 (=> (not res!1686182) (not e!2559912))))

(assert (=> d!1222631 (= res!1686182 ((_ is Cons!44641) (t!341070 (t!341070 rules!3756))))))

(assert (=> d!1222631 (= (contains!8972 (t!341070 (t!341070 rules!3756)) rBis!149) lt!1471847)))

(declare-fun b!4125544 () Bool)

(declare-fun e!2559913 () Bool)

(assert (=> b!4125544 (= e!2559912 e!2559913)))

(declare-fun res!1686183 () Bool)

(assert (=> b!4125544 (=> res!1686183 e!2559913)))

(assert (=> b!4125544 (= res!1686183 (= (h!50061 (t!341070 (t!341070 rules!3756))) rBis!149))))

(declare-fun b!4125545 () Bool)

(assert (=> b!4125545 (= e!2559913 (contains!8972 (t!341070 (t!341070 (t!341070 rules!3756))) rBis!149))))

(assert (= (and d!1222631 res!1686182) b!4125544))

(assert (= (and b!4125544 (not res!1686183)) b!4125545))

(assert (=> d!1222631 m!4724163))

(declare-fun m!4724225 () Bool)

(assert (=> d!1222631 m!4724225))

(declare-fun m!4724227 () Bool)

(assert (=> b!4125545 m!4724227))

(assert (=> b!4125167 d!1222631))

(declare-fun b!4125562 () Bool)

(declare-fun e!2559925 () Bool)

(declare-fun inv!17 (TokenValue!7530) Bool)

(assert (=> b!4125562 (= e!2559925 (inv!17 (dynLambda!19093 (toValue!9952 (transformation!7300 r!4008)) lt!1471725)))))

(declare-fun b!4125563 () Bool)

(declare-fun e!2559923 () Bool)

(assert (=> b!4125563 (= e!2559923 e!2559925)))

(declare-fun c!708115 () Bool)

(assert (=> b!4125563 (= c!708115 ((_ is IntegerValue!22591) (dynLambda!19093 (toValue!9952 (transformation!7300 r!4008)) lt!1471725)))))

(declare-fun d!1222633 () Bool)

(declare-fun c!708116 () Bool)

(assert (=> d!1222633 (= c!708116 ((_ is IntegerValue!22590) (dynLambda!19093 (toValue!9952 (transformation!7300 r!4008)) lt!1471725)))))

(assert (=> d!1222633 (= (inv!21 (dynLambda!19093 (toValue!9952 (transformation!7300 r!4008)) lt!1471725)) e!2559923)))

(declare-fun b!4125564 () Bool)

(declare-fun res!1686186 () Bool)

(declare-fun e!2559924 () Bool)

(assert (=> b!4125564 (=> res!1686186 e!2559924)))

(assert (=> b!4125564 (= res!1686186 (not ((_ is IntegerValue!22592) (dynLambda!19093 (toValue!9952 (transformation!7300 r!4008)) lt!1471725))))))

(assert (=> b!4125564 (= e!2559925 e!2559924)))

(declare-fun b!4125565 () Bool)

(declare-fun inv!16 (TokenValue!7530) Bool)

(assert (=> b!4125565 (= e!2559923 (inv!16 (dynLambda!19093 (toValue!9952 (transformation!7300 r!4008)) lt!1471725)))))

(declare-fun b!4125566 () Bool)

(declare-fun inv!15 (TokenValue!7530) Bool)

(assert (=> b!4125566 (= e!2559924 (inv!15 (dynLambda!19093 (toValue!9952 (transformation!7300 r!4008)) lt!1471725)))))

(assert (= (and d!1222633 c!708116) b!4125565))

(assert (= (and d!1222633 (not c!708116)) b!4125563))

(assert (= (and b!4125563 c!708115) b!4125562))

(assert (= (and b!4125563 (not c!708115)) b!4125564))

(assert (= (and b!4125564 (not res!1686186)) b!4125566))

(declare-fun m!4724235 () Bool)

(assert (=> b!4125562 m!4724235))

(declare-fun m!4724237 () Bool)

(assert (=> b!4125565 m!4724237))

(declare-fun m!4724239 () Bool)

(assert (=> b!4125566 m!4724239))

(assert (=> tb!247549 d!1222633))

(declare-fun d!1222639 () Bool)

(declare-fun list!16373 (Conc!13511) List!44764)

(assert (=> d!1222639 (= (list!16371 (charsOf!4920 (_1!24681 (get!14566 lt!1471779)))) (list!16373 (c!708034 (charsOf!4920 (_1!24681 (get!14566 lt!1471779))))))))

(declare-fun bs!594792 () Bool)

(assert (= bs!594792 d!1222639))

(declare-fun m!4724241 () Bool)

(assert (=> bs!594792 m!4724241))

(assert (=> b!4125243 d!1222639))

(declare-fun d!1222641 () Bool)

(declare-fun lt!1471851 () BalanceConc!26616)

(assert (=> d!1222641 (= (list!16371 lt!1471851) (originalCharacters!7796 (_1!24681 (get!14566 lt!1471779))))))

(assert (=> d!1222641 (= lt!1471851 (dynLambda!19092 (toChars!9811 (transformation!7300 (rule!10384 (_1!24681 (get!14566 lt!1471779))))) (value!228604 (_1!24681 (get!14566 lt!1471779)))))))

(assert (=> d!1222641 (= (charsOf!4920 (_1!24681 (get!14566 lt!1471779))) lt!1471851)))

(declare-fun b_lambda!121083 () Bool)

(assert (=> (not b_lambda!121083) (not d!1222641)))

(declare-fun t!341106 () Bool)

(declare-fun tb!247559 () Bool)

(assert (=> (and b!4125067 (= (toChars!9811 (transformation!7300 r!4008)) (toChars!9811 (transformation!7300 (rule!10384 (_1!24681 (get!14566 lt!1471779)))))) t!341106) tb!247559))

(declare-fun b!4125577 () Bool)

(declare-fun e!2559934 () Bool)

(declare-fun tp!1257147 () Bool)

(assert (=> b!4125577 (= e!2559934 (and (inv!59224 (c!708034 (dynLambda!19092 (toChars!9811 (transformation!7300 (rule!10384 (_1!24681 (get!14566 lt!1471779))))) (value!228604 (_1!24681 (get!14566 lt!1471779)))))) tp!1257147))))

(declare-fun result!300824 () Bool)

(assert (=> tb!247559 (= result!300824 (and (inv!59225 (dynLambda!19092 (toChars!9811 (transformation!7300 (rule!10384 (_1!24681 (get!14566 lt!1471779))))) (value!228604 (_1!24681 (get!14566 lt!1471779))))) e!2559934))))

(assert (= tb!247559 b!4125577))

(declare-fun m!4724251 () Bool)

(assert (=> b!4125577 m!4724251))

(declare-fun m!4724253 () Bool)

(assert (=> tb!247559 m!4724253))

(assert (=> d!1222641 t!341106))

(declare-fun b_and!319365 () Bool)

(assert (= b_and!319343 (and (=> t!341106 result!300824) b_and!319365)))

(declare-fun t!341108 () Bool)

(declare-fun tb!247561 () Bool)

(assert (=> (and b!4125055 (= (toChars!9811 (transformation!7300 rBis!149)) (toChars!9811 (transformation!7300 (rule!10384 (_1!24681 (get!14566 lt!1471779)))))) t!341108) tb!247561))

(declare-fun result!300826 () Bool)

(assert (= result!300826 result!300824))

(assert (=> d!1222641 t!341108))

(declare-fun b_and!319367 () Bool)

(assert (= b_and!319345 (and (=> t!341108 result!300826) b_and!319367)))

(declare-fun tb!247563 () Bool)

(declare-fun t!341110 () Bool)

(assert (=> (and b!4125065 (= (toChars!9811 (transformation!7300 (h!50061 rules!3756))) (toChars!9811 (transformation!7300 (rule!10384 (_1!24681 (get!14566 lt!1471779)))))) t!341110) tb!247563))

(declare-fun result!300828 () Bool)

(assert (= result!300828 result!300824))

(assert (=> d!1222641 t!341110))

(declare-fun b_and!319369 () Bool)

(assert (= b_and!319347 (and (=> t!341110 result!300828) b_and!319369)))

(declare-fun t!341112 () Bool)

(declare-fun tb!247565 () Bool)

(assert (=> (and b!4125426 (= (toChars!9811 (transformation!7300 (h!50061 (t!341070 rules!3756)))) (toChars!9811 (transformation!7300 (rule!10384 (_1!24681 (get!14566 lt!1471779)))))) t!341112) tb!247565))

(declare-fun result!300830 () Bool)

(assert (= result!300830 result!300824))

(assert (=> d!1222641 t!341112))

(declare-fun b_and!319371 () Bool)

(assert (= b_and!319363 (and (=> t!341112 result!300830) b_and!319371)))

(declare-fun m!4724257 () Bool)

(assert (=> d!1222641 m!4724257))

(declare-fun m!4724259 () Bool)

(assert (=> d!1222641 m!4724259))

(assert (=> b!4125243 d!1222641))

(declare-fun d!1222653 () Bool)

(assert (=> d!1222653 (= (get!14566 lt!1471779) (v!40203 lt!1471779))))

(assert (=> b!4125243 d!1222653))

(declare-fun d!1222657 () Bool)

(declare-fun nullableFct!1200 (Regex!12205) Bool)

(assert (=> d!1222657 (= (nullable!4283 (regex!7300 r!4008)) (nullableFct!1200 (regex!7300 r!4008)))))

(declare-fun bs!594794 () Bool)

(assert (= bs!594794 d!1222657))

(declare-fun m!4724265 () Bool)

(assert (=> bs!594794 m!4724265))

(assert (=> b!4125152 d!1222657))

(declare-fun d!1222659 () Bool)

(declare-fun lt!1471853 () Bool)

(assert (=> d!1222659 (= lt!1471853 (select (content!6882 rules!3756) (rule!10384 (_1!24681 (get!14566 lt!1471779)))))))

(declare-fun e!2559937 () Bool)

(assert (=> d!1222659 (= lt!1471853 e!2559937)))

(declare-fun res!1686195 () Bool)

(assert (=> d!1222659 (=> (not res!1686195) (not e!2559937))))

(assert (=> d!1222659 (= res!1686195 ((_ is Cons!44641) rules!3756))))

(assert (=> d!1222659 (= (contains!8972 rules!3756 (rule!10384 (_1!24681 (get!14566 lt!1471779)))) lt!1471853)))

(declare-fun b!4125580 () Bool)

(declare-fun e!2559938 () Bool)

(assert (=> b!4125580 (= e!2559937 e!2559938)))

(declare-fun res!1686196 () Bool)

(assert (=> b!4125580 (=> res!1686196 e!2559938)))

(assert (=> b!4125580 (= res!1686196 (= (h!50061 rules!3756) (rule!10384 (_1!24681 (get!14566 lt!1471779)))))))

(declare-fun b!4125581 () Bool)

(assert (=> b!4125581 (= e!2559938 (contains!8972 (t!341070 rules!3756) (rule!10384 (_1!24681 (get!14566 lt!1471779)))))))

(assert (= (and d!1222659 res!1686195) b!4125580))

(assert (= (and b!4125580 (not res!1686196)) b!4125581))

(assert (=> d!1222659 m!4723913))

(declare-fun m!4724271 () Bool)

(assert (=> d!1222659 m!4724271))

(declare-fun m!4724273 () Bool)

(assert (=> b!4125581 m!4724273))

(assert (=> b!4125242 d!1222659))

(assert (=> b!4125242 d!1222653))

(declare-fun d!1222665 () Bool)

(assert (=> d!1222665 (= (nullable!4283 (regex!7300 rBis!149)) (nullableFct!1200 (regex!7300 rBis!149)))))

(declare-fun bs!594797 () Bool)

(assert (= bs!594797 d!1222665))

(declare-fun m!4724275 () Bool)

(assert (=> bs!594797 m!4724275))

(assert (=> b!4125411 d!1222665))

(declare-fun d!1222667 () Bool)

(assert (=> d!1222667 (= (nullable!4283 (regex!7300 (h!50061 rules!3756))) (nullableFct!1200 (regex!7300 (h!50061 rules!3756))))))

(declare-fun bs!594798 () Bool)

(assert (= bs!594798 d!1222667))

(declare-fun m!4724277 () Bool)

(assert (=> bs!594798 m!4724277))

(assert (=> b!4125082 d!1222667))

(assert (=> d!1222507 d!1222579))

(declare-fun bm!290087 () Bool)

(declare-fun call!290092 () Bool)

(declare-fun call!290094 () Bool)

(assert (=> bm!290087 (= call!290092 call!290094)))

(declare-fun bm!290088 () Bool)

(declare-fun c!708124 () Bool)

(declare-fun c!708123 () Bool)

(assert (=> bm!290088 (= call!290094 (validRegex!5489 (ite c!708123 (reg!12534 (regex!7300 rBis!149)) (ite c!708124 (regOne!24923 (regex!7300 rBis!149)) (regOne!24922 (regex!7300 rBis!149))))))))

(declare-fun bm!290089 () Bool)

(declare-fun call!290093 () Bool)

(assert (=> bm!290089 (= call!290093 (validRegex!5489 (ite c!708124 (regTwo!24923 (regex!7300 rBis!149)) (regTwo!24922 (regex!7300 rBis!149)))))))

(declare-fun b!4125608 () Bool)

(declare-fun res!1686215 () Bool)

(declare-fun e!2559959 () Bool)

(assert (=> b!4125608 (=> (not res!1686215) (not e!2559959))))

(assert (=> b!4125608 (= res!1686215 call!290092)))

(declare-fun e!2559957 () Bool)

(assert (=> b!4125608 (= e!2559957 e!2559959)))

(declare-fun b!4125609 () Bool)

(assert (=> b!4125609 (= e!2559959 call!290093)))

(declare-fun b!4125610 () Bool)

(declare-fun e!2559958 () Bool)

(assert (=> b!4125610 (= e!2559958 e!2559957)))

(assert (=> b!4125610 (= c!708124 ((_ is Union!12205) (regex!7300 rBis!149)))))

(declare-fun b!4125611 () Bool)

(declare-fun e!2559961 () Bool)

(assert (=> b!4125611 (= e!2559961 call!290094)))

(declare-fun b!4125612 () Bool)

(assert (=> b!4125612 (= e!2559958 e!2559961)))

(declare-fun res!1686211 () Bool)

(assert (=> b!4125612 (= res!1686211 (not (nullable!4283 (reg!12534 (regex!7300 rBis!149)))))))

(assert (=> b!4125612 (=> (not res!1686211) (not e!2559961))))

(declare-fun b!4125613 () Bool)

(declare-fun e!2559962 () Bool)

(assert (=> b!4125613 (= e!2559962 e!2559958)))

(assert (=> b!4125613 (= c!708123 ((_ is Star!12205) (regex!7300 rBis!149)))))

(declare-fun b!4125614 () Bool)

(declare-fun e!2559956 () Bool)

(declare-fun e!2559960 () Bool)

(assert (=> b!4125614 (= e!2559956 e!2559960)))

(declare-fun res!1686213 () Bool)

(assert (=> b!4125614 (=> (not res!1686213) (not e!2559960))))

(assert (=> b!4125614 (= res!1686213 call!290092)))

(declare-fun d!1222669 () Bool)

(declare-fun res!1686212 () Bool)

(assert (=> d!1222669 (=> res!1686212 e!2559962)))

(assert (=> d!1222669 (= res!1686212 ((_ is ElementMatch!12205) (regex!7300 rBis!149)))))

(assert (=> d!1222669 (= (validRegex!5489 (regex!7300 rBis!149)) e!2559962)))

(declare-fun b!4125615 () Bool)

(assert (=> b!4125615 (= e!2559960 call!290093)))

(declare-fun b!4125616 () Bool)

(declare-fun res!1686214 () Bool)

(assert (=> b!4125616 (=> res!1686214 e!2559956)))

(assert (=> b!4125616 (= res!1686214 (not ((_ is Concat!19736) (regex!7300 rBis!149))))))

(assert (=> b!4125616 (= e!2559957 e!2559956)))

(assert (= (and d!1222669 (not res!1686212)) b!4125613))

(assert (= (and b!4125613 c!708123) b!4125612))

(assert (= (and b!4125613 (not c!708123)) b!4125610))

(assert (= (and b!4125612 res!1686211) b!4125611))

(assert (= (and b!4125610 c!708124) b!4125608))

(assert (= (and b!4125610 (not c!708124)) b!4125616))

(assert (= (and b!4125608 res!1686215) b!4125609))

(assert (= (and b!4125616 (not res!1686214)) b!4125614))

(assert (= (and b!4125614 res!1686213) b!4125615))

(assert (= (or b!4125608 b!4125614) bm!290087))

(assert (= (or b!4125609 b!4125615) bm!290089))

(assert (= (or b!4125611 bm!290087) bm!290088))

(declare-fun m!4724289 () Bool)

(assert (=> bm!290088 m!4724289))

(declare-fun m!4724291 () Bool)

(assert (=> bm!290089 m!4724291))

(declare-fun m!4724293 () Bool)

(assert (=> b!4125612 m!4724293))

(assert (=> d!1222571 d!1222669))

(declare-fun b!4125619 () Bool)

(declare-fun e!2559965 () Bool)

(assert (=> b!4125619 (= e!2559965 (isPrefix!4235 (tail!6465 (tail!6465 p!2912)) (tail!6465 (tail!6465 input!3238))))))

(declare-fun b!4125618 () Bool)

(declare-fun res!1686219 () Bool)

(assert (=> b!4125618 (=> (not res!1686219) (not e!2559965))))

(assert (=> b!4125618 (= res!1686219 (= (head!8692 (tail!6465 p!2912)) (head!8692 (tail!6465 input!3238))))))

(declare-fun d!1222679 () Bool)

(declare-fun e!2559964 () Bool)

(assert (=> d!1222679 e!2559964))

(declare-fun res!1686218 () Bool)

(assert (=> d!1222679 (=> res!1686218 e!2559964)))

(declare-fun lt!1471858 () Bool)

(assert (=> d!1222679 (= res!1686218 (not lt!1471858))))

(declare-fun e!2559963 () Bool)

(assert (=> d!1222679 (= lt!1471858 e!2559963)))

(declare-fun res!1686216 () Bool)

(assert (=> d!1222679 (=> res!1686216 e!2559963)))

(assert (=> d!1222679 (= res!1686216 ((_ is Nil!44640) (tail!6465 p!2912)))))

(assert (=> d!1222679 (= (isPrefix!4235 (tail!6465 p!2912) (tail!6465 input!3238)) lt!1471858)))

(declare-fun b!4125617 () Bool)

(assert (=> b!4125617 (= e!2559963 e!2559965)))

(declare-fun res!1686217 () Bool)

(assert (=> b!4125617 (=> (not res!1686217) (not e!2559965))))

(assert (=> b!4125617 (= res!1686217 (not ((_ is Nil!44640) (tail!6465 input!3238))))))

(declare-fun b!4125620 () Bool)

(assert (=> b!4125620 (= e!2559964 (>= (size!33056 (tail!6465 input!3238)) (size!33056 (tail!6465 p!2912))))))

(assert (= (and d!1222679 (not res!1686216)) b!4125617))

(assert (= (and b!4125617 res!1686217) b!4125618))

(assert (= (and b!4125618 res!1686219) b!4125619))

(assert (= (and d!1222679 (not res!1686218)) b!4125620))

(assert (=> b!4125619 m!4723877))

(declare-fun m!4724295 () Bool)

(assert (=> b!4125619 m!4724295))

(assert (=> b!4125619 m!4723897))

(assert (=> b!4125619 m!4724219))

(assert (=> b!4125619 m!4724295))

(assert (=> b!4125619 m!4724219))

(declare-fun m!4724297 () Bool)

(assert (=> b!4125619 m!4724297))

(assert (=> b!4125618 m!4723877))

(declare-fun m!4724299 () Bool)

(assert (=> b!4125618 m!4724299))

(assert (=> b!4125618 m!4723897))

(declare-fun m!4724301 () Bool)

(assert (=> b!4125618 m!4724301))

(assert (=> b!4125620 m!4723897))

(assert (=> b!4125620 m!4724215))

(assert (=> b!4125620 m!4723877))

(declare-fun m!4724303 () Bool)

(assert (=> b!4125620 m!4724303))

(assert (=> b!4125164 d!1222679))

(assert (=> b!4125164 d!1222601))

(assert (=> b!4125164 d!1222625))

(declare-fun d!1222681 () Bool)

(assert (=> d!1222681 (= (list!16371 (dynLambda!19092 (toChars!9811 (transformation!7300 r!4008)) (dynLambda!19093 (toValue!9952 (transformation!7300 r!4008)) lt!1471725))) (list!16373 (c!708034 (dynLambda!19092 (toChars!9811 (transformation!7300 r!4008)) (dynLambda!19093 (toValue!9952 (transformation!7300 r!4008)) lt!1471725)))))))

(declare-fun bs!594803 () Bool)

(assert (= bs!594803 d!1222681))

(declare-fun m!4724307 () Bool)

(assert (=> bs!594803 m!4724307))

(assert (=> d!1222517 d!1222681))

(declare-fun d!1222685 () Bool)

(assert (=> d!1222685 (= (list!16371 lt!1471725) (list!16373 (c!708034 lt!1471725)))))

(declare-fun bs!594804 () Bool)

(assert (= bs!594804 d!1222685))

(declare-fun m!4724309 () Bool)

(assert (=> bs!594804 m!4724309))

(assert (=> d!1222517 d!1222685))

(declare-fun d!1222687 () Bool)

(declare-fun dynLambda!19096 (Int BalanceConc!26616) Bool)

(assert (=> d!1222687 (dynLambda!19096 lambda!128709 lt!1471725)))

(declare-fun lt!1471866 () Unit!63977)

(declare-fun choose!25229 (Int BalanceConc!26616) Unit!63977)

(assert (=> d!1222687 (= lt!1471866 (choose!25229 lambda!128709 lt!1471725))))

(declare-fun Forall!1546 (Int) Bool)

(assert (=> d!1222687 (Forall!1546 lambda!128709)))

(assert (=> d!1222687 (= (ForallOf!928 lambda!128709 lt!1471725) lt!1471866)))

(declare-fun b_lambda!121087 () Bool)

(assert (=> (not b_lambda!121087) (not d!1222687)))

(declare-fun bs!594805 () Bool)

(assert (= bs!594805 d!1222687))

(declare-fun m!4724311 () Bool)

(assert (=> bs!594805 m!4724311))

(declare-fun m!4724313 () Bool)

(assert (=> bs!594805 m!4724313))

(declare-fun m!4724315 () Bool)

(assert (=> bs!594805 m!4724315))

(assert (=> d!1222517 d!1222687))

(declare-fun d!1222689 () Bool)

(declare-fun e!2559971 () Bool)

(assert (=> d!1222689 e!2559971))

(declare-fun c!708126 () Bool)

(assert (=> d!1222689 (= c!708126 ((_ is EmptyExpr!12205) (derivativeStep!3678 (regex!7300 r!4008) (head!8692 p!2912))))))

(declare-fun lt!1471867 () Bool)

(declare-fun e!2559972 () Bool)

(assert (=> d!1222689 (= lt!1471867 e!2559972)))

(declare-fun c!708125 () Bool)

(assert (=> d!1222689 (= c!708125 (isEmpty!26571 (tail!6465 p!2912)))))

(assert (=> d!1222689 (validRegex!5489 (derivativeStep!3678 (regex!7300 r!4008) (head!8692 p!2912)))))

(assert (=> d!1222689 (= (matchR!6036 (derivativeStep!3678 (regex!7300 r!4008) (head!8692 p!2912)) (tail!6465 p!2912)) lt!1471867)))

(declare-fun b!4125625 () Bool)

(declare-fun e!2559973 () Bool)

(assert (=> b!4125625 (= e!2559973 (= (head!8692 (tail!6465 p!2912)) (c!708035 (derivativeStep!3678 (regex!7300 r!4008) (head!8692 p!2912)))))))

(declare-fun b!4125626 () Bool)

(declare-fun res!1686228 () Bool)

(assert (=> b!4125626 (=> (not res!1686228) (not e!2559973))))

(declare-fun call!290095 () Bool)

(assert (=> b!4125626 (= res!1686228 (not call!290095))))

(declare-fun b!4125627 () Bool)

(assert (=> b!4125627 (= e!2559972 (matchR!6036 (derivativeStep!3678 (derivativeStep!3678 (regex!7300 r!4008) (head!8692 p!2912)) (head!8692 (tail!6465 p!2912))) (tail!6465 (tail!6465 p!2912))))))

(declare-fun b!4125628 () Bool)

(declare-fun e!2559970 () Bool)

(declare-fun e!2559975 () Bool)

(assert (=> b!4125628 (= e!2559970 e!2559975)))

(declare-fun res!1686230 () Bool)

(assert (=> b!4125628 (=> (not res!1686230) (not e!2559975))))

(assert (=> b!4125628 (= res!1686230 (not lt!1471867))))

(declare-fun b!4125629 () Bool)

(declare-fun e!2559974 () Bool)

(assert (=> b!4125629 (= e!2559974 (not (= (head!8692 (tail!6465 p!2912)) (c!708035 (derivativeStep!3678 (regex!7300 r!4008) (head!8692 p!2912))))))))

(declare-fun b!4125630 () Bool)

(declare-fun res!1686225 () Bool)

(assert (=> b!4125630 (=> res!1686225 e!2559970)))

(assert (=> b!4125630 (= res!1686225 e!2559973)))

(declare-fun res!1686227 () Bool)

(assert (=> b!4125630 (=> (not res!1686227) (not e!2559973))))

(assert (=> b!4125630 (= res!1686227 lt!1471867)))

(declare-fun b!4125631 () Bool)

(declare-fun e!2559976 () Bool)

(assert (=> b!4125631 (= e!2559976 (not lt!1471867))))

(declare-fun b!4125632 () Bool)

(assert (=> b!4125632 (= e!2559971 e!2559976)))

(declare-fun c!708127 () Bool)

(assert (=> b!4125632 (= c!708127 ((_ is EmptyLang!12205) (derivativeStep!3678 (regex!7300 r!4008) (head!8692 p!2912))))))

(declare-fun b!4125633 () Bool)

(assert (=> b!4125633 (= e!2559971 (= lt!1471867 call!290095))))

(declare-fun b!4125634 () Bool)

(declare-fun res!1686224 () Bool)

(assert (=> b!4125634 (=> (not res!1686224) (not e!2559973))))

(assert (=> b!4125634 (= res!1686224 (isEmpty!26571 (tail!6465 (tail!6465 p!2912))))))

(declare-fun b!4125635 () Bool)

(assert (=> b!4125635 (= e!2559972 (nullable!4283 (derivativeStep!3678 (regex!7300 r!4008) (head!8692 p!2912))))))

(declare-fun b!4125636 () Bool)

(assert (=> b!4125636 (= e!2559975 e!2559974)))

(declare-fun res!1686229 () Bool)

(assert (=> b!4125636 (=> res!1686229 e!2559974)))

(assert (=> b!4125636 (= res!1686229 call!290095)))

(declare-fun b!4125637 () Bool)

(declare-fun res!1686231 () Bool)

(assert (=> b!4125637 (=> res!1686231 e!2559974)))

(assert (=> b!4125637 (= res!1686231 (not (isEmpty!26571 (tail!6465 (tail!6465 p!2912)))))))

(declare-fun b!4125638 () Bool)

(declare-fun res!1686226 () Bool)

(assert (=> b!4125638 (=> res!1686226 e!2559970)))

(assert (=> b!4125638 (= res!1686226 (not ((_ is ElementMatch!12205) (derivativeStep!3678 (regex!7300 r!4008) (head!8692 p!2912)))))))

(assert (=> b!4125638 (= e!2559976 e!2559970)))

(declare-fun bm!290090 () Bool)

(assert (=> bm!290090 (= call!290095 (isEmpty!26571 (tail!6465 p!2912)))))

(assert (= (and d!1222689 c!708125) b!4125635))

(assert (= (and d!1222689 (not c!708125)) b!4125627))

(assert (= (and d!1222689 c!708126) b!4125633))

(assert (= (and d!1222689 (not c!708126)) b!4125632))

(assert (= (and b!4125632 c!708127) b!4125631))

(assert (= (and b!4125632 (not c!708127)) b!4125638))

(assert (= (and b!4125638 (not res!1686226)) b!4125630))

(assert (= (and b!4125630 res!1686227) b!4125626))

(assert (= (and b!4125626 res!1686228) b!4125634))

(assert (= (and b!4125634 res!1686224) b!4125625))

(assert (= (and b!4125630 (not res!1686225)) b!4125628))

(assert (= (and b!4125628 res!1686230) b!4125636))

(assert (= (and b!4125636 (not res!1686229)) b!4125637))

(assert (= (and b!4125637 (not res!1686231)) b!4125629))

(assert (= (or b!4125633 b!4125626 b!4125636) bm!290090))

(assert (=> b!4125634 m!4723877))

(assert (=> b!4125634 m!4724295))

(assert (=> b!4125634 m!4724295))

(declare-fun m!4724317 () Bool)

(assert (=> b!4125634 m!4724317))

(assert (=> b!4125625 m!4723877))

(assert (=> b!4125625 m!4724299))

(assert (=> b!4125627 m!4723877))

(assert (=> b!4125627 m!4724299))

(assert (=> b!4125627 m!4723883))

(assert (=> b!4125627 m!4724299))

(declare-fun m!4724319 () Bool)

(assert (=> b!4125627 m!4724319))

(assert (=> b!4125627 m!4723877))

(assert (=> b!4125627 m!4724295))

(assert (=> b!4125627 m!4724319))

(assert (=> b!4125627 m!4724295))

(declare-fun m!4724321 () Bool)

(assert (=> b!4125627 m!4724321))

(assert (=> b!4125635 m!4723883))

(declare-fun m!4724323 () Bool)

(assert (=> b!4125635 m!4724323))

(assert (=> b!4125637 m!4723877))

(assert (=> b!4125637 m!4724295))

(assert (=> b!4125637 m!4724295))

(assert (=> b!4125637 m!4724317))

(assert (=> d!1222689 m!4723877))

(assert (=> d!1222689 m!4723879))

(assert (=> d!1222689 m!4723883))

(declare-fun m!4724325 () Bool)

(assert (=> d!1222689 m!4724325))

(assert (=> b!4125629 m!4723877))

(assert (=> b!4125629 m!4724299))

(assert (=> bm!290090 m!4723877))

(assert (=> bm!290090 m!4723879))

(assert (=> b!4125134 d!1222689))

(declare-fun c!708148 () Bool)

(declare-fun bm!290108 () Bool)

(declare-fun call!290114 () Regex!12205)

(declare-fun c!708145 () Bool)

(assert (=> bm!290108 (= call!290114 (derivativeStep!3678 (ite c!708145 (regTwo!24923 (regex!7300 r!4008)) (ite c!708148 (reg!12534 (regex!7300 r!4008)) (regOne!24922 (regex!7300 r!4008)))) (head!8692 p!2912)))))

(declare-fun b!4125694 () Bool)

(declare-fun c!708146 () Bool)

(assert (=> b!4125694 (= c!708146 (nullable!4283 (regOne!24922 (regex!7300 r!4008))))))

(declare-fun e!2560012 () Regex!12205)

(declare-fun e!2560014 () Regex!12205)

(assert (=> b!4125694 (= e!2560012 e!2560014)))

(declare-fun b!4125696 () Bool)

(declare-fun call!290116 () Regex!12205)

(assert (=> b!4125696 (= e!2560014 (Union!12205 (Concat!19736 call!290116 (regTwo!24922 (regex!7300 r!4008))) EmptyLang!12205))))

(declare-fun b!4125697 () Bool)

(declare-fun e!2560011 () Regex!12205)

(assert (=> b!4125697 (= e!2560011 (ite (= (head!8692 p!2912) (c!708035 (regex!7300 r!4008))) EmptyExpr!12205 EmptyLang!12205))))

(declare-fun bm!290109 () Bool)

(declare-fun call!290115 () Regex!12205)

(assert (=> bm!290109 (= call!290115 call!290114)))

(declare-fun b!4125698 () Bool)

(declare-fun e!2560010 () Regex!12205)

(assert (=> b!4125698 (= e!2560010 e!2560012)))

(assert (=> b!4125698 (= c!708148 ((_ is Star!12205) (regex!7300 r!4008)))))

(declare-fun bm!290110 () Bool)

(assert (=> bm!290110 (= call!290116 call!290115)))

(declare-fun b!4125699 () Bool)

(declare-fun call!290113 () Regex!12205)

(assert (=> b!4125699 (= e!2560010 (Union!12205 call!290113 call!290114))))

(declare-fun b!4125700 () Bool)

(declare-fun e!2560013 () Regex!12205)

(assert (=> b!4125700 (= e!2560013 EmptyLang!12205)))

(declare-fun b!4125701 () Bool)

(assert (=> b!4125701 (= e!2560014 (Union!12205 (Concat!19736 call!290116 (regTwo!24922 (regex!7300 r!4008))) call!290113))))

(declare-fun b!4125695 () Bool)

(assert (=> b!4125695 (= e!2560012 (Concat!19736 call!290115 (regex!7300 r!4008)))))

(declare-fun d!1222691 () Bool)

(declare-fun lt!1471873 () Regex!12205)

(assert (=> d!1222691 (validRegex!5489 lt!1471873)))

(assert (=> d!1222691 (= lt!1471873 e!2560013)))

(declare-fun c!708144 () Bool)

(assert (=> d!1222691 (= c!708144 (or ((_ is EmptyExpr!12205) (regex!7300 r!4008)) ((_ is EmptyLang!12205) (regex!7300 r!4008))))))

(assert (=> d!1222691 (validRegex!5489 (regex!7300 r!4008))))

(assert (=> d!1222691 (= (derivativeStep!3678 (regex!7300 r!4008) (head!8692 p!2912)) lt!1471873)))

(declare-fun bm!290111 () Bool)

(assert (=> bm!290111 (= call!290113 (derivativeStep!3678 (ite c!708145 (regOne!24923 (regex!7300 r!4008)) (regTwo!24922 (regex!7300 r!4008))) (head!8692 p!2912)))))

(declare-fun b!4125702 () Bool)

(assert (=> b!4125702 (= c!708145 ((_ is Union!12205) (regex!7300 r!4008)))))

(assert (=> b!4125702 (= e!2560011 e!2560010)))

(declare-fun b!4125703 () Bool)

(assert (=> b!4125703 (= e!2560013 e!2560011)))

(declare-fun c!708147 () Bool)

(assert (=> b!4125703 (= c!708147 ((_ is ElementMatch!12205) (regex!7300 r!4008)))))

(assert (= (and d!1222691 c!708144) b!4125700))

(assert (= (and d!1222691 (not c!708144)) b!4125703))

(assert (= (and b!4125703 c!708147) b!4125697))

(assert (= (and b!4125703 (not c!708147)) b!4125702))

(assert (= (and b!4125702 c!708145) b!4125699))

(assert (= (and b!4125702 (not c!708145)) b!4125698))

(assert (= (and b!4125698 c!708148) b!4125695))

(assert (= (and b!4125698 (not c!708148)) b!4125694))

(assert (= (and b!4125694 c!708146) b!4125701))

(assert (= (and b!4125694 (not c!708146)) b!4125696))

(assert (= (or b!4125701 b!4125696) bm!290110))

(assert (= (or b!4125695 bm!290110) bm!290109))

(assert (= (or b!4125699 b!4125701) bm!290111))

(assert (= (or b!4125699 bm!290109) bm!290108))

(assert (=> bm!290108 m!4723881))

(declare-fun m!4724337 () Bool)

(assert (=> bm!290108 m!4724337))

(declare-fun m!4724339 () Bool)

(assert (=> b!4125694 m!4724339))

(declare-fun m!4724341 () Bool)

(assert (=> d!1222691 m!4724341))

(assert (=> d!1222691 m!4723889))

(assert (=> bm!290111 m!4723881))

(declare-fun m!4724343 () Bool)

(assert (=> bm!290111 m!4724343))

(assert (=> b!4125134 d!1222691))

(assert (=> b!4125134 d!1222629))

(assert (=> b!4125134 d!1222601))

(assert (=> b!4125132 d!1222629))

(assert (=> d!1222477 d!1222491))

(declare-fun bm!290112 () Bool)

(declare-fun call!290117 () Bool)

(declare-fun call!290119 () Bool)

(assert (=> bm!290112 (= call!290117 call!290119)))

(declare-fun c!708151 () Bool)

(declare-fun c!708152 () Bool)

(declare-fun bm!290113 () Bool)

(assert (=> bm!290113 (= call!290119 (validRegex!5489 (ite c!708151 (reg!12534 (regex!7300 r!4008)) (ite c!708152 (regOne!24923 (regex!7300 r!4008)) (regOne!24922 (regex!7300 r!4008))))))))

(declare-fun bm!290114 () Bool)

(declare-fun call!290118 () Bool)

(assert (=> bm!290114 (= call!290118 (validRegex!5489 (ite c!708152 (regTwo!24923 (regex!7300 r!4008)) (regTwo!24922 (regex!7300 r!4008)))))))

(declare-fun b!4125708 () Bool)

(declare-fun res!1686257 () Bool)

(declare-fun e!2560022 () Bool)

(assert (=> b!4125708 (=> (not res!1686257) (not e!2560022))))

(assert (=> b!4125708 (= res!1686257 call!290117)))

(declare-fun e!2560020 () Bool)

(assert (=> b!4125708 (= e!2560020 e!2560022)))

(declare-fun b!4125709 () Bool)

(assert (=> b!4125709 (= e!2560022 call!290118)))

(declare-fun b!4125710 () Bool)

(declare-fun e!2560021 () Bool)

(assert (=> b!4125710 (= e!2560021 e!2560020)))

(assert (=> b!4125710 (= c!708152 ((_ is Union!12205) (regex!7300 r!4008)))))

(declare-fun b!4125711 () Bool)

(declare-fun e!2560024 () Bool)

(assert (=> b!4125711 (= e!2560024 call!290119)))

(declare-fun b!4125712 () Bool)

(assert (=> b!4125712 (= e!2560021 e!2560024)))

(declare-fun res!1686253 () Bool)

(assert (=> b!4125712 (= res!1686253 (not (nullable!4283 (reg!12534 (regex!7300 r!4008)))))))

(assert (=> b!4125712 (=> (not res!1686253) (not e!2560024))))

(declare-fun b!4125713 () Bool)

(declare-fun e!2560025 () Bool)

(assert (=> b!4125713 (= e!2560025 e!2560021)))

(assert (=> b!4125713 (= c!708151 ((_ is Star!12205) (regex!7300 r!4008)))))

(declare-fun b!4125714 () Bool)

(declare-fun e!2560019 () Bool)

(declare-fun e!2560023 () Bool)

(assert (=> b!4125714 (= e!2560019 e!2560023)))

(declare-fun res!1686255 () Bool)

(assert (=> b!4125714 (=> (not res!1686255) (not e!2560023))))

(assert (=> b!4125714 (= res!1686255 call!290117)))

(declare-fun d!1222705 () Bool)

(declare-fun res!1686254 () Bool)

(assert (=> d!1222705 (=> res!1686254 e!2560025)))

(assert (=> d!1222705 (= res!1686254 ((_ is ElementMatch!12205) (regex!7300 r!4008)))))

(assert (=> d!1222705 (= (validRegex!5489 (regex!7300 r!4008)) e!2560025)))

(declare-fun b!4125715 () Bool)

(assert (=> b!4125715 (= e!2560023 call!290118)))

(declare-fun b!4125716 () Bool)

(declare-fun res!1686256 () Bool)

(assert (=> b!4125716 (=> res!1686256 e!2560019)))

(assert (=> b!4125716 (= res!1686256 (not ((_ is Concat!19736) (regex!7300 r!4008))))))

(assert (=> b!4125716 (= e!2560020 e!2560019)))

(assert (= (and d!1222705 (not res!1686254)) b!4125713))

(assert (= (and b!4125713 c!708151) b!4125712))

(assert (= (and b!4125713 (not c!708151)) b!4125710))

(assert (= (and b!4125712 res!1686253) b!4125711))

(assert (= (and b!4125710 c!708152) b!4125708))

(assert (= (and b!4125710 (not c!708152)) b!4125716))

(assert (= (and b!4125708 res!1686257) b!4125709))

(assert (= (and b!4125716 (not res!1686256)) b!4125714))

(assert (= (and b!4125714 res!1686255) b!4125715))

(assert (= (or b!4125708 b!4125714) bm!290112))

(assert (= (or b!4125709 b!4125715) bm!290114))

(assert (= (or b!4125711 bm!290112) bm!290113))

(declare-fun m!4724345 () Bool)

(assert (=> bm!290113 m!4724345))

(declare-fun m!4724347 () Bool)

(assert (=> bm!290114 m!4724347))

(declare-fun m!4724349 () Bool)

(assert (=> b!4125712 m!4724349))

(assert (=> d!1222477 d!1222705))

(declare-fun d!1222707 () Bool)

(declare-fun isBalanced!3718 (Conc!13511) Bool)

(assert (=> d!1222707 (= (inv!59225 (dynLambda!19092 (toChars!9811 (transformation!7300 r!4008)) (dynLambda!19093 (toValue!9952 (transformation!7300 r!4008)) lt!1471725))) (isBalanced!3718 (c!708034 (dynLambda!19092 (toChars!9811 (transformation!7300 r!4008)) (dynLambda!19093 (toValue!9952 (transformation!7300 r!4008)) lt!1471725)))))))

(declare-fun bs!594808 () Bool)

(assert (= bs!594808 d!1222707))

(declare-fun m!4724363 () Bool)

(assert (=> bs!594808 m!4724363))

(assert (=> tb!247543 d!1222707))

(assert (=> d!1222569 d!1222487))

(declare-fun d!1222711 () Bool)

(assert (=> d!1222711 (ruleValid!3108 thiss!25645 r!4008)))

(assert (=> d!1222711 true))

(declare-fun _$65!1601 () Unit!63977)

(assert (=> d!1222711 (= (choose!25225 thiss!25645 r!4008 rules!3756) _$65!1601)))

(declare-fun bs!594809 () Bool)

(assert (= bs!594809 d!1222711))

(assert (=> bs!594809 m!4723843))

(assert (=> d!1222569 d!1222711))

(assert (=> d!1222569 d!1222579))

(declare-fun b!4125738 () Bool)

(declare-fun e!2560035 () Int)

(assert (=> b!4125738 (= e!2560035 (- 1))))

(declare-fun b!4125736 () Bool)

(declare-fun e!2560036 () Int)

(assert (=> b!4125736 (= e!2560036 e!2560035)))

(declare-fun c!708158 () Bool)

(assert (=> b!4125736 (= c!708158 (and ((_ is Cons!44641) (t!341070 rules!3756)) (not (= (h!50061 (t!341070 rules!3756)) r!4008))))))

(declare-fun b!4125737 () Bool)

(assert (=> b!4125737 (= e!2560035 (+ 1 (getIndex!648 (t!341070 (t!341070 rules!3756)) r!4008)))))

(declare-fun d!1222715 () Bool)

(declare-fun lt!1471876 () Int)

(assert (=> d!1222715 (>= lt!1471876 0)))

(assert (=> d!1222715 (= lt!1471876 e!2560036)))

(declare-fun c!708157 () Bool)

(assert (=> d!1222715 (= c!708157 (and ((_ is Cons!44641) (t!341070 rules!3756)) (= (h!50061 (t!341070 rules!3756)) r!4008)))))

(assert (=> d!1222715 (contains!8972 (t!341070 rules!3756) r!4008)))

(assert (=> d!1222715 (= (getIndex!648 (t!341070 rules!3756) r!4008) lt!1471876)))

(declare-fun b!4125735 () Bool)

(assert (=> b!4125735 (= e!2560036 0)))

(assert (= (and d!1222715 c!708157) b!4125735))

(assert (= (and d!1222715 (not c!708157)) b!4125736))

(assert (= (and b!4125736 c!708158) b!4125737))

(assert (= (and b!4125736 (not c!708158)) b!4125738))

(declare-fun m!4724379 () Bool)

(assert (=> b!4125737 m!4724379))

(assert (=> d!1222715 m!4723833))

(assert (=> b!4125206 d!1222715))

(assert (=> b!4125142 d!1222657))

(declare-fun b!4125739 () Bool)

(declare-fun res!1686270 () Bool)

(declare-fun e!2560039 () Bool)

(assert (=> b!4125739 (=> (not res!1686270) (not e!2560039))))

(declare-fun lt!1471878 () Option!9608)

(assert (=> b!4125739 (= res!1686270 (matchR!6036 (regex!7300 (rule!10384 (_1!24681 (get!14566 lt!1471878)))) (list!16371 (charsOf!4920 (_1!24681 (get!14566 lt!1471878))))))))

(declare-fun b!4125740 () Bool)

(assert (=> b!4125740 (= e!2560039 (contains!8972 (t!341070 rules!3756) (rule!10384 (_1!24681 (get!14566 lt!1471878)))))))

(declare-fun call!290121 () Option!9608)

(declare-fun bm!290116 () Bool)

(assert (=> bm!290116 (= call!290121 (maxPrefixOneRule!3029 thiss!25645 (h!50061 (t!341070 rules!3756)) input!3238))))

(declare-fun b!4125741 () Bool)

(declare-fun res!1686274 () Bool)

(assert (=> b!4125741 (=> (not res!1686274) (not e!2560039))))

(assert (=> b!4125741 (= res!1686274 (= (list!16371 (charsOf!4920 (_1!24681 (get!14566 lt!1471878)))) (originalCharacters!7796 (_1!24681 (get!14566 lt!1471878)))))))

(declare-fun b!4125742 () Bool)

(declare-fun res!1686269 () Bool)

(assert (=> b!4125742 (=> (not res!1686269) (not e!2560039))))

(assert (=> b!4125742 (= res!1686269 (= (value!228604 (_1!24681 (get!14566 lt!1471878))) (apply!10373 (transformation!7300 (rule!10384 (_1!24681 (get!14566 lt!1471878)))) (seqFromList!5417 (originalCharacters!7796 (_1!24681 (get!14566 lt!1471878)))))))))

(declare-fun b!4125743 () Bool)

(declare-fun res!1686268 () Bool)

(assert (=> b!4125743 (=> (not res!1686268) (not e!2560039))))

(assert (=> b!4125743 (= res!1686268 (= (++!11566 (list!16371 (charsOf!4920 (_1!24681 (get!14566 lt!1471878)))) (_2!24681 (get!14566 lt!1471878))) input!3238))))

(declare-fun d!1222717 () Bool)

(declare-fun e!2560038 () Bool)

(assert (=> d!1222717 e!2560038))

(declare-fun res!1686272 () Bool)

(assert (=> d!1222717 (=> res!1686272 e!2560038)))

(assert (=> d!1222717 (= res!1686272 (isEmpty!26574 lt!1471878))))

(declare-fun e!2560037 () Option!9608)

(assert (=> d!1222717 (= lt!1471878 e!2560037)))

(declare-fun c!708159 () Bool)

(assert (=> d!1222717 (= c!708159 (and ((_ is Cons!44641) (t!341070 rules!3756)) ((_ is Nil!44641) (t!341070 (t!341070 rules!3756)))))))

(declare-fun lt!1471879 () Unit!63977)

(declare-fun lt!1471880 () Unit!63977)

(assert (=> d!1222717 (= lt!1471879 lt!1471880)))

(assert (=> d!1222717 (isPrefix!4235 input!3238 input!3238)))

(assert (=> d!1222717 (= lt!1471880 (lemmaIsPrefixRefl!2745 input!3238 input!3238))))

(assert (=> d!1222717 (rulesValidInductive!2696 thiss!25645 (t!341070 rules!3756))))

(assert (=> d!1222717 (= (maxPrefix!4081 thiss!25645 (t!341070 rules!3756) input!3238) lt!1471878)))

(declare-fun b!4125744 () Bool)

(declare-fun res!1686271 () Bool)

(assert (=> b!4125744 (=> (not res!1686271) (not e!2560039))))

(assert (=> b!4125744 (= res!1686271 (< (size!33056 (_2!24681 (get!14566 lt!1471878))) (size!33056 input!3238)))))

(declare-fun b!4125745 () Bool)

(declare-fun lt!1471877 () Option!9608)

(declare-fun lt!1471881 () Option!9608)

(assert (=> b!4125745 (= e!2560037 (ite (and ((_ is None!9607) lt!1471877) ((_ is None!9607) lt!1471881)) None!9607 (ite ((_ is None!9607) lt!1471881) lt!1471877 (ite ((_ is None!9607) lt!1471877) lt!1471881 (ite (>= (size!33055 (_1!24681 (v!40203 lt!1471877))) (size!33055 (_1!24681 (v!40203 lt!1471881)))) lt!1471877 lt!1471881)))))))

(assert (=> b!4125745 (= lt!1471877 call!290121)))

(assert (=> b!4125745 (= lt!1471881 (maxPrefix!4081 thiss!25645 (t!341070 (t!341070 rules!3756)) input!3238))))

(declare-fun b!4125746 () Bool)

(assert (=> b!4125746 (= e!2560037 call!290121)))

(declare-fun b!4125747 () Bool)

(assert (=> b!4125747 (= e!2560038 e!2560039)))

(declare-fun res!1686273 () Bool)

(assert (=> b!4125747 (=> (not res!1686273) (not e!2560039))))

(assert (=> b!4125747 (= res!1686273 (isDefined!7239 lt!1471878))))

(assert (= (and d!1222717 c!708159) b!4125746))

(assert (= (and d!1222717 (not c!708159)) b!4125745))

(assert (= (or b!4125746 b!4125745) bm!290116))

(assert (= (and d!1222717 (not res!1686272)) b!4125747))

(assert (= (and b!4125747 res!1686273) b!4125741))

(assert (= (and b!4125741 res!1686274) b!4125744))

(assert (= (and b!4125744 res!1686271) b!4125743))

(assert (= (and b!4125743 res!1686268) b!4125742))

(assert (= (and b!4125742 res!1686269) b!4125739))

(assert (= (and b!4125739 res!1686270) b!4125740))

(declare-fun m!4724381 () Bool)

(assert (=> b!4125739 m!4724381))

(declare-fun m!4724383 () Bool)

(assert (=> b!4125739 m!4724383))

(assert (=> b!4125739 m!4724383))

(declare-fun m!4724385 () Bool)

(assert (=> b!4125739 m!4724385))

(assert (=> b!4125739 m!4724385))

(declare-fun m!4724387 () Bool)

(assert (=> b!4125739 m!4724387))

(declare-fun m!4724389 () Bool)

(assert (=> bm!290116 m!4724389))

(assert (=> b!4125744 m!4724381))

(declare-fun m!4724391 () Bool)

(assert (=> b!4125744 m!4724391))

(assert (=> b!4125744 m!4723903))

(assert (=> b!4125743 m!4724381))

(assert (=> b!4125743 m!4724383))

(assert (=> b!4125743 m!4724383))

(assert (=> b!4125743 m!4724385))

(assert (=> b!4125743 m!4724385))

(declare-fun m!4724393 () Bool)

(assert (=> b!4125743 m!4724393))

(assert (=> b!4125741 m!4724381))

(assert (=> b!4125741 m!4724383))

(assert (=> b!4125741 m!4724383))

(assert (=> b!4125741 m!4724385))

(assert (=> b!4125740 m!4724381))

(declare-fun m!4724395 () Bool)

(assert (=> b!4125740 m!4724395))

(declare-fun m!4724397 () Bool)

(assert (=> b!4125747 m!4724397))

(declare-fun m!4724399 () Bool)

(assert (=> b!4125745 m!4724399))

(declare-fun m!4724401 () Bool)

(assert (=> d!1222717 m!4724401))

(assert (=> d!1222717 m!4723985))

(assert (=> d!1222717 m!4723987))

(assert (=> d!1222717 m!4724201))

(assert (=> b!4125742 m!4724381))

(declare-fun m!4724403 () Bool)

(assert (=> b!4125742 m!4724403))

(assert (=> b!4125742 m!4724403))

(declare-fun m!4724405 () Bool)

(assert (=> b!4125742 m!4724405))

(assert (=> b!4125247 d!1222717))

(declare-fun b!4125778 () Bool)

(declare-fun res!1686280 () Bool)

(declare-fun e!2560054 () Bool)

(assert (=> b!4125778 (=> (not res!1686280) (not e!2560054))))

(declare-fun lt!1471886 () List!44764)

(assert (=> b!4125778 (= res!1686280 (= (size!33056 lt!1471886) (+ (size!33056 (list!16371 (charsOf!4920 (_1!24681 (get!14566 lt!1471779))))) (size!33056 (_2!24681 (get!14566 lt!1471779))))))))

(declare-fun b!4125779 () Bool)

(assert (=> b!4125779 (= e!2560054 (or (not (= (_2!24681 (get!14566 lt!1471779)) Nil!44640)) (= lt!1471886 (list!16371 (charsOf!4920 (_1!24681 (get!14566 lt!1471779)))))))))

(declare-fun d!1222719 () Bool)

(assert (=> d!1222719 e!2560054))

(declare-fun res!1686279 () Bool)

(assert (=> d!1222719 (=> (not res!1686279) (not e!2560054))))

(declare-fun content!6884 (List!44764) (InoxSet C!24596))

(assert (=> d!1222719 (= res!1686279 (= (content!6884 lt!1471886) ((_ map or) (content!6884 (list!16371 (charsOf!4920 (_1!24681 (get!14566 lt!1471779))))) (content!6884 (_2!24681 (get!14566 lt!1471779))))))))

(declare-fun e!2560055 () List!44764)

(assert (=> d!1222719 (= lt!1471886 e!2560055)))

(declare-fun c!708172 () Bool)

(assert (=> d!1222719 (= c!708172 ((_ is Nil!44640) (list!16371 (charsOf!4920 (_1!24681 (get!14566 lt!1471779))))))))

(assert (=> d!1222719 (= (++!11566 (list!16371 (charsOf!4920 (_1!24681 (get!14566 lt!1471779)))) (_2!24681 (get!14566 lt!1471779))) lt!1471886)))

(declare-fun b!4125776 () Bool)

(assert (=> b!4125776 (= e!2560055 (_2!24681 (get!14566 lt!1471779)))))

(declare-fun b!4125777 () Bool)

(assert (=> b!4125777 (= e!2560055 (Cons!44640 (h!50060 (list!16371 (charsOf!4920 (_1!24681 (get!14566 lt!1471779))))) (++!11566 (t!341069 (list!16371 (charsOf!4920 (_1!24681 (get!14566 lt!1471779))))) (_2!24681 (get!14566 lt!1471779)))))))

(assert (= (and d!1222719 c!708172) b!4125776))

(assert (= (and d!1222719 (not c!708172)) b!4125777))

(assert (= (and d!1222719 res!1686279) b!4125778))

(assert (= (and b!4125778 res!1686280) b!4125779))

(declare-fun m!4724407 () Bool)

(assert (=> b!4125778 m!4724407))

(assert (=> b!4125778 m!4723967))

(declare-fun m!4724409 () Bool)

(assert (=> b!4125778 m!4724409))

(assert (=> b!4125778 m!4723973))

(declare-fun m!4724411 () Bool)

(assert (=> d!1222719 m!4724411))

(assert (=> d!1222719 m!4723967))

(declare-fun m!4724413 () Bool)

(assert (=> d!1222719 m!4724413))

(declare-fun m!4724415 () Bool)

(assert (=> d!1222719 m!4724415))

(declare-fun m!4724417 () Bool)

(assert (=> b!4125777 m!4724417))

(assert (=> b!4125245 d!1222719))

(assert (=> b!4125245 d!1222639))

(assert (=> b!4125245 d!1222641))

(assert (=> b!4125245 d!1222653))

(declare-fun d!1222721 () Bool)

(assert (=> d!1222721 true))

(declare-fun order!23509 () Int)

(declare-fun lambda!128725 () Int)

(declare-fun dynLambda!19097 (Int Int) Int)

(assert (=> d!1222721 (< (dynLambda!19089 order!23501 (toValue!9952 (transformation!7300 (h!50061 rules!3756)))) (dynLambda!19097 order!23509 lambda!128725))))

(declare-fun Forall2!1145 (Int) Bool)

(assert (=> d!1222721 (= (equivClasses!3043 (toChars!9811 (transformation!7300 (h!50061 rules!3756))) (toValue!9952 (transformation!7300 (h!50061 rules!3756)))) (Forall2!1145 lambda!128725))))

(declare-fun bs!594813 () Bool)

(assert (= bs!594813 d!1222721))

(declare-fun m!4724431 () Bool)

(assert (=> bs!594813 m!4724431))

(assert (=> b!4125170 d!1222721))

(declare-fun bs!594814 () Bool)

(declare-fun d!1222729 () Bool)

(assert (= bs!594814 (and d!1222729 d!1222517)))

(declare-fun lambda!128728 () Int)

(assert (=> bs!594814 (= (and (= (toChars!9811 (transformation!7300 rBis!149)) (toChars!9811 (transformation!7300 r!4008))) (= (toValue!9952 (transformation!7300 rBis!149)) (toValue!9952 (transformation!7300 r!4008)))) (= lambda!128728 lambda!128709))))

(assert (=> d!1222729 true))

(assert (=> d!1222729 (< (dynLambda!19091 order!23505 (toChars!9811 (transformation!7300 rBis!149))) (dynLambda!19090 order!23503 lambda!128728))))

(assert (=> d!1222729 true))

(assert (=> d!1222729 (< (dynLambda!19089 order!23501 (toValue!9952 (transformation!7300 rBis!149))) (dynLambda!19090 order!23503 lambda!128728))))

(assert (=> d!1222729 (= (semiInverseModEq!3144 (toChars!9811 (transformation!7300 rBis!149)) (toValue!9952 (transformation!7300 rBis!149))) (Forall!1546 lambda!128728))))

(declare-fun bs!594815 () Bool)

(assert (= bs!594815 d!1222729))

(declare-fun m!4724441 () Bool)

(assert (=> bs!594815 m!4724441))

(assert (=> d!1222503 d!1222729))

(declare-fun bs!594817 () Bool)

(declare-fun d!1222733 () Bool)

(assert (= bs!594817 (and d!1222733 d!1222517)))

(declare-fun lambda!128729 () Int)

(assert (=> bs!594817 (= (and (= (toChars!9811 (transformation!7300 (h!50061 rules!3756))) (toChars!9811 (transformation!7300 r!4008))) (= (toValue!9952 (transformation!7300 (h!50061 rules!3756))) (toValue!9952 (transformation!7300 r!4008)))) (= lambda!128729 lambda!128709))))

(declare-fun bs!594818 () Bool)

(assert (= bs!594818 (and d!1222733 d!1222729)))

(assert (=> bs!594818 (= (and (= (toChars!9811 (transformation!7300 (h!50061 rules!3756))) (toChars!9811 (transformation!7300 rBis!149))) (= (toValue!9952 (transformation!7300 (h!50061 rules!3756))) (toValue!9952 (transformation!7300 rBis!149)))) (= lambda!128729 lambda!128728))))

(assert (=> d!1222733 true))

(assert (=> d!1222733 (< (dynLambda!19091 order!23505 (toChars!9811 (transformation!7300 (h!50061 rules!3756)))) (dynLambda!19090 order!23503 lambda!128729))))

(assert (=> d!1222733 true))

(assert (=> d!1222733 (< (dynLambda!19089 order!23501 (toValue!9952 (transformation!7300 (h!50061 rules!3756)))) (dynLambda!19090 order!23503 lambda!128729))))

(assert (=> d!1222733 (= (semiInverseModEq!3144 (toChars!9811 (transformation!7300 (h!50061 rules!3756))) (toValue!9952 (transformation!7300 (h!50061 rules!3756)))) (Forall!1546 lambda!128729))))

(declare-fun bs!594819 () Bool)

(assert (= bs!594819 d!1222733))

(declare-fun m!4724453 () Bool)

(assert (=> bs!594819 m!4724453))

(assert (=> d!1222497 d!1222733))

(declare-fun b!4125817 () Bool)

(declare-fun res!1686289 () Bool)

(declare-fun e!2560073 () Bool)

(assert (=> b!4125817 (=> (not res!1686289) (not e!2560073))))

(declare-fun lt!1471890 () List!44764)

(assert (=> b!4125817 (= res!1686289 (= (size!33056 lt!1471890) (+ (size!33056 p!2912) (size!33056 lt!1471765))))))

(declare-fun b!4125818 () Bool)

(assert (=> b!4125818 (= e!2560073 (or (not (= lt!1471765 Nil!44640)) (= lt!1471890 p!2912)))))

(declare-fun d!1222739 () Bool)

(assert (=> d!1222739 e!2560073))

(declare-fun res!1686288 () Bool)

(assert (=> d!1222739 (=> (not res!1686288) (not e!2560073))))

(assert (=> d!1222739 (= res!1686288 (= (content!6884 lt!1471890) ((_ map or) (content!6884 p!2912) (content!6884 lt!1471765))))))

(declare-fun e!2560074 () List!44764)

(assert (=> d!1222739 (= lt!1471890 e!2560074)))

(declare-fun c!708184 () Bool)

(assert (=> d!1222739 (= c!708184 ((_ is Nil!44640) p!2912))))

(assert (=> d!1222739 (= (++!11566 p!2912 lt!1471765) lt!1471890)))

(declare-fun b!4125815 () Bool)

(assert (=> b!4125815 (= e!2560074 lt!1471765)))

(declare-fun b!4125816 () Bool)

(assert (=> b!4125816 (= e!2560074 (Cons!44640 (h!50060 p!2912) (++!11566 (t!341069 p!2912) lt!1471765)))))

(assert (= (and d!1222739 c!708184) b!4125815))

(assert (= (and d!1222739 (not c!708184)) b!4125816))

(assert (= (and d!1222739 res!1686288) b!4125817))

(assert (= (and b!4125817 res!1686289) b!4125818))

(declare-fun m!4724455 () Bool)

(assert (=> b!4125817 m!4724455))

(assert (=> b!4125817 m!4723813))

(declare-fun m!4724457 () Bool)

(assert (=> b!4125817 m!4724457))

(declare-fun m!4724459 () Bool)

(assert (=> d!1222739 m!4724459))

(declare-fun m!4724461 () Bool)

(assert (=> d!1222739 m!4724461))

(declare-fun m!4724463 () Bool)

(assert (=> d!1222739 m!4724463))

(declare-fun m!4724465 () Bool)

(assert (=> b!4125816 m!4724465))

(assert (=> d!1222509 d!1222739))

(declare-fun d!1222741 () Bool)

(declare-fun lt!1471891 () Int)

(assert (=> d!1222741 (>= lt!1471891 0)))

(declare-fun e!2560075 () Int)

(assert (=> d!1222741 (= lt!1471891 e!2560075)))

(declare-fun c!708185 () Bool)

(assert (=> d!1222741 (= c!708185 ((_ is Nil!44640) input!3238))))

(assert (=> d!1222741 (= (size!33056 input!3238) lt!1471891)))

(declare-fun b!4125819 () Bool)

(assert (=> b!4125819 (= e!2560075 0)))

(declare-fun b!4125820 () Bool)

(assert (=> b!4125820 (= e!2560075 (+ 1 (size!33056 (t!341069 input!3238))))))

(assert (= (and d!1222741 c!708185) b!4125819))

(assert (= (and d!1222741 (not c!708185)) b!4125820))

(declare-fun m!4724467 () Bool)

(assert (=> b!4125820 m!4724467))

(assert (=> d!1222509 d!1222741))

(assert (=> d!1222509 d!1222565))

(assert (=> d!1222505 d!1222499))

(declare-fun d!1222743 () Bool)

(declare-fun lt!1471894 () Bool)

(assert (=> d!1222743 (= lt!1471894 (select (content!6882 (t!341070 (t!341070 rules!3756))) r!4008))))

(declare-fun e!2560076 () Bool)

(assert (=> d!1222743 (= lt!1471894 e!2560076)))

(declare-fun res!1686290 () Bool)

(assert (=> d!1222743 (=> (not res!1686290) (not e!2560076))))

(assert (=> d!1222743 (= res!1686290 ((_ is Cons!44641) (t!341070 (t!341070 rules!3756))))))

(assert (=> d!1222743 (= (contains!8972 (t!341070 (t!341070 rules!3756)) r!4008) lt!1471894)))

(declare-fun b!4125821 () Bool)

(declare-fun e!2560077 () Bool)

(assert (=> b!4125821 (= e!2560076 e!2560077)))

(declare-fun res!1686291 () Bool)

(assert (=> b!4125821 (=> res!1686291 e!2560077)))

(assert (=> b!4125821 (= res!1686291 (= (h!50061 (t!341070 (t!341070 rules!3756))) r!4008))))

(declare-fun b!4125822 () Bool)

(assert (=> b!4125822 (= e!2560077 (contains!8972 (t!341070 (t!341070 (t!341070 rules!3756))) r!4008))))

(assert (= (and d!1222743 res!1686290) b!4125821))

(assert (= (and b!4125821 (not res!1686291)) b!4125822))

(assert (=> d!1222743 m!4724163))

(declare-fun m!4724469 () Bool)

(assert (=> d!1222743 m!4724469))

(declare-fun m!4724471 () Bool)

(assert (=> b!4125822 m!4724471))

(assert (=> b!4125151 d!1222743))

(assert (=> d!1222573 d!1222571))

(declare-fun d!1222745 () Bool)

(assert (=> d!1222745 (ruleValid!3108 thiss!25645 rBis!149)))

(assert (=> d!1222745 true))

(declare-fun _$65!1602 () Unit!63977)

(assert (=> d!1222745 (= (choose!25225 thiss!25645 rBis!149 rules!3756) _$65!1602)))

(declare-fun bs!594820 () Bool)

(assert (= bs!594820 d!1222745))

(assert (=> bs!594820 m!4723839))

(assert (=> d!1222573 d!1222745))

(assert (=> d!1222573 d!1222499))

(declare-fun d!1222747 () Bool)

(assert (=> d!1222747 (= (inv!59219 (tag!8160 (h!50061 (t!341070 rules!3756)))) (= (mod (str.len (value!228603 (tag!8160 (h!50061 (t!341070 rules!3756))))) 2) 0))))

(assert (=> b!4125425 d!1222747))

(declare-fun d!1222749 () Bool)

(declare-fun res!1686292 () Bool)

(declare-fun e!2560078 () Bool)

(assert (=> d!1222749 (=> (not res!1686292) (not e!2560078))))

(assert (=> d!1222749 (= res!1686292 (semiInverseModEq!3144 (toChars!9811 (transformation!7300 (h!50061 (t!341070 rules!3756)))) (toValue!9952 (transformation!7300 (h!50061 (t!341070 rules!3756))))))))

(assert (=> d!1222749 (= (inv!59221 (transformation!7300 (h!50061 (t!341070 rules!3756)))) e!2560078)))

(declare-fun b!4125823 () Bool)

(assert (=> b!4125823 (= e!2560078 (equivClasses!3043 (toChars!9811 (transformation!7300 (h!50061 (t!341070 rules!3756)))) (toValue!9952 (transformation!7300 (h!50061 (t!341070 rules!3756))))))))

(assert (= (and d!1222749 res!1686292) b!4125823))

(declare-fun m!4724473 () Bool)

(assert (=> d!1222749 m!4724473))

(declare-fun m!4724475 () Bool)

(assert (=> b!4125823 m!4724475))

(assert (=> b!4125425 d!1222749))

(declare-fun d!1222751 () Bool)

(declare-fun lt!1471896 () Int)

(assert (=> d!1222751 (>= lt!1471896 0)))

(declare-fun e!2560080 () Int)

(assert (=> d!1222751 (= lt!1471896 e!2560080)))

(declare-fun c!708186 () Bool)

(assert (=> d!1222751 (= c!708186 ((_ is Nil!44640) (t!341069 p!2912)))))

(assert (=> d!1222751 (= (size!33056 (t!341069 p!2912)) lt!1471896)))

(declare-fun b!4125825 () Bool)

(assert (=> b!4125825 (= e!2560080 0)))

(declare-fun b!4125826 () Bool)

(assert (=> b!4125826 (= e!2560080 (+ 1 (size!33056 (t!341069 (t!341069 p!2912)))))))

(assert (= (and d!1222751 c!708186) b!4125825))

(assert (= (and d!1222751 (not c!708186)) b!4125826))

(declare-fun m!4724477 () Bool)

(assert (=> b!4125826 m!4724477))

(assert (=> b!4125410 d!1222751))

(assert (=> d!1222487 d!1222705))

(declare-fun bs!594821 () Bool)

(declare-fun d!1222753 () Bool)

(assert (= bs!594821 (and d!1222753 d!1222517)))

(declare-fun lambda!128730 () Int)

(assert (=> bs!594821 (= lambda!128730 lambda!128709)))

(declare-fun bs!594822 () Bool)

(assert (= bs!594822 (and d!1222753 d!1222729)))

(assert (=> bs!594822 (= (and (= (toChars!9811 (transformation!7300 r!4008)) (toChars!9811 (transformation!7300 rBis!149))) (= (toValue!9952 (transformation!7300 r!4008)) (toValue!9952 (transformation!7300 rBis!149)))) (= lambda!128730 lambda!128728))))

(declare-fun bs!594823 () Bool)

(assert (= bs!594823 (and d!1222753 d!1222733)))

(assert (=> bs!594823 (= (and (= (toChars!9811 (transformation!7300 r!4008)) (toChars!9811 (transformation!7300 (h!50061 rules!3756)))) (= (toValue!9952 (transformation!7300 r!4008)) (toValue!9952 (transformation!7300 (h!50061 rules!3756))))) (= lambda!128730 lambda!128729))))

(assert (=> d!1222753 true))

(assert (=> d!1222753 (< (dynLambda!19091 order!23505 (toChars!9811 (transformation!7300 r!4008))) (dynLambda!19090 order!23503 lambda!128730))))

(assert (=> d!1222753 true))

(assert (=> d!1222753 (< (dynLambda!19089 order!23501 (toValue!9952 (transformation!7300 r!4008))) (dynLambda!19090 order!23503 lambda!128730))))

(assert (=> d!1222753 (= (semiInverseModEq!3144 (toChars!9811 (transformation!7300 r!4008)) (toValue!9952 (transformation!7300 r!4008))) (Forall!1546 lambda!128730))))

(declare-fun bs!594824 () Bool)

(assert (= bs!594824 d!1222753))

(declare-fun m!4724491 () Bool)

(assert (=> bs!594824 m!4724491))

(assert (=> d!1222577 d!1222753))

(assert (=> b!4125172 d!1222493))

(assert (=> b!4125165 d!1222741))

(assert (=> b!4125165 d!1222565))

(declare-fun b!4125986 () Bool)

(declare-fun res!1686345 () Bool)

(declare-fun e!2560160 () Bool)

(assert (=> b!4125986 (=> (not res!1686345) (not e!2560160))))

(declare-fun lt!1471920 () Option!9608)

(assert (=> b!4125986 (= res!1686345 (= (rule!10384 (_1!24681 (get!14566 lt!1471920))) (h!50061 rules!3756)))))

(declare-fun d!1222759 () Bool)

(declare-fun e!2560162 () Bool)

(assert (=> d!1222759 e!2560162))

(declare-fun res!1686344 () Bool)

(assert (=> d!1222759 (=> res!1686344 e!2560162)))

(assert (=> d!1222759 (= res!1686344 (isEmpty!26574 lt!1471920))))

(declare-fun e!2560163 () Option!9608)

(assert (=> d!1222759 (= lt!1471920 e!2560163)))

(declare-fun c!708204 () Bool)

(declare-datatypes ((tuple2!43098 0))(
  ( (tuple2!43099 (_1!24683 List!44764) (_2!24683 List!44764)) )
))
(declare-fun lt!1471921 () tuple2!43098)

(assert (=> d!1222759 (= c!708204 (isEmpty!26571 (_1!24683 lt!1471921)))))

(declare-fun findLongestMatch!1414 (Regex!12205 List!44764) tuple2!43098)

(assert (=> d!1222759 (= lt!1471921 (findLongestMatch!1414 (regex!7300 (h!50061 rules!3756)) input!3238))))

(assert (=> d!1222759 (ruleValid!3108 thiss!25645 (h!50061 rules!3756))))

(assert (=> d!1222759 (= (maxPrefixOneRule!3029 thiss!25645 (h!50061 rules!3756) input!3238) lt!1471920)))

(declare-fun b!4125987 () Bool)

(declare-fun e!2560161 () Bool)

(declare-fun findLongestMatchInner!1501 (Regex!12205 List!44764 Int List!44764 List!44764 Int) tuple2!43098)

(assert (=> b!4125987 (= e!2560161 (matchR!6036 (regex!7300 (h!50061 rules!3756)) (_1!24683 (findLongestMatchInner!1501 (regex!7300 (h!50061 rules!3756)) Nil!44640 (size!33056 Nil!44640) input!3238 input!3238 (size!33056 input!3238)))))))

(declare-fun b!4125988 () Bool)

(declare-fun size!33058 (BalanceConc!26616) Int)

(assert (=> b!4125988 (= e!2560163 (Some!9607 (tuple2!43095 (Token!13531 (apply!10373 (transformation!7300 (h!50061 rules!3756)) (seqFromList!5417 (_1!24683 lt!1471921))) (h!50061 rules!3756) (size!33058 (seqFromList!5417 (_1!24683 lt!1471921))) (_1!24683 lt!1471921)) (_2!24683 lt!1471921))))))

(declare-fun lt!1471922 () Unit!63977)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1474 (Regex!12205 List!44764) Unit!63977)

(assert (=> b!4125988 (= lt!1471922 (longestMatchIsAcceptedByMatchOrIsEmpty!1474 (regex!7300 (h!50061 rules!3756)) input!3238))))

(declare-fun res!1686343 () Bool)

(assert (=> b!4125988 (= res!1686343 (isEmpty!26571 (_1!24683 (findLongestMatchInner!1501 (regex!7300 (h!50061 rules!3756)) Nil!44640 (size!33056 Nil!44640) input!3238 input!3238 (size!33056 input!3238)))))))

(assert (=> b!4125988 (=> res!1686343 e!2560161)))

(assert (=> b!4125988 e!2560161))

(declare-fun lt!1471918 () Unit!63977)

(assert (=> b!4125988 (= lt!1471918 lt!1471922)))

(declare-fun lt!1471919 () Unit!63977)

(assert (=> b!4125988 (= lt!1471919 (lemmaSemiInverse!2158 (transformation!7300 (h!50061 rules!3756)) (seqFromList!5417 (_1!24683 lt!1471921))))))

(declare-fun b!4125989 () Bool)

(assert (=> b!4125989 (= e!2560160 (= (size!33055 (_1!24681 (get!14566 lt!1471920))) (size!33056 (originalCharacters!7796 (_1!24681 (get!14566 lt!1471920))))))))

(declare-fun b!4125990 () Bool)

(declare-fun res!1686346 () Bool)

(assert (=> b!4125990 (=> (not res!1686346) (not e!2560160))))

(assert (=> b!4125990 (= res!1686346 (= (++!11566 (list!16371 (charsOf!4920 (_1!24681 (get!14566 lt!1471920)))) (_2!24681 (get!14566 lt!1471920))) input!3238))))

(declare-fun b!4125991 () Bool)

(assert (=> b!4125991 (= e!2560162 e!2560160)))

(declare-fun res!1686340 () Bool)

(assert (=> b!4125991 (=> (not res!1686340) (not e!2560160))))

(assert (=> b!4125991 (= res!1686340 (matchR!6036 (regex!7300 (h!50061 rules!3756)) (list!16371 (charsOf!4920 (_1!24681 (get!14566 lt!1471920))))))))

(declare-fun b!4125992 () Bool)

(declare-fun res!1686341 () Bool)

(assert (=> b!4125992 (=> (not res!1686341) (not e!2560160))))

(assert (=> b!4125992 (= res!1686341 (< (size!33056 (_2!24681 (get!14566 lt!1471920))) (size!33056 input!3238)))))

(declare-fun b!4125993 () Bool)

(assert (=> b!4125993 (= e!2560163 None!9607)))

(declare-fun b!4125994 () Bool)

(declare-fun res!1686342 () Bool)

(assert (=> b!4125994 (=> (not res!1686342) (not e!2560160))))

(assert (=> b!4125994 (= res!1686342 (= (value!228604 (_1!24681 (get!14566 lt!1471920))) (apply!10373 (transformation!7300 (rule!10384 (_1!24681 (get!14566 lt!1471920)))) (seqFromList!5417 (originalCharacters!7796 (_1!24681 (get!14566 lt!1471920)))))))))

(assert (= (and d!1222759 c!708204) b!4125993))

(assert (= (and d!1222759 (not c!708204)) b!4125988))

(assert (= (and b!4125988 (not res!1686343)) b!4125987))

(assert (= (and d!1222759 (not res!1686344)) b!4125991))

(assert (= (and b!4125991 res!1686340) b!4125990))

(assert (= (and b!4125990 res!1686346) b!4125992))

(assert (= (and b!4125992 res!1686341) b!4125986))

(assert (= (and b!4125986 res!1686345) b!4125994))

(assert (= (and b!4125994 res!1686342) b!4125989))

(declare-fun m!4724575 () Bool)

(assert (=> b!4125986 m!4724575))

(assert (=> b!4125991 m!4724575))

(declare-fun m!4724577 () Bool)

(assert (=> b!4125991 m!4724577))

(assert (=> b!4125991 m!4724577))

(declare-fun m!4724579 () Bool)

(assert (=> b!4125991 m!4724579))

(assert (=> b!4125991 m!4724579))

(declare-fun m!4724581 () Bool)

(assert (=> b!4125991 m!4724581))

(assert (=> b!4125990 m!4724575))

(assert (=> b!4125990 m!4724577))

(assert (=> b!4125990 m!4724577))

(assert (=> b!4125990 m!4724579))

(assert (=> b!4125990 m!4724579))

(declare-fun m!4724583 () Bool)

(assert (=> b!4125990 m!4724583))

(declare-fun m!4724585 () Bool)

(assert (=> d!1222759 m!4724585))

(declare-fun m!4724587 () Bool)

(assert (=> d!1222759 m!4724587))

(declare-fun m!4724589 () Bool)

(assert (=> d!1222759 m!4724589))

(assert (=> d!1222759 m!4723835))

(assert (=> b!4125994 m!4724575))

(declare-fun m!4724591 () Bool)

(assert (=> b!4125994 m!4724591))

(assert (=> b!4125994 m!4724591))

(declare-fun m!4724593 () Bool)

(assert (=> b!4125994 m!4724593))

(declare-fun m!4724595 () Bool)

(assert (=> b!4125987 m!4724595))

(assert (=> b!4125987 m!4723903))

(assert (=> b!4125987 m!4724595))

(assert (=> b!4125987 m!4723903))

(declare-fun m!4724597 () Bool)

(assert (=> b!4125987 m!4724597))

(declare-fun m!4724599 () Bool)

(assert (=> b!4125987 m!4724599))

(assert (=> b!4125989 m!4724575))

(declare-fun m!4724601 () Bool)

(assert (=> b!4125989 m!4724601))

(assert (=> b!4125992 m!4724575))

(declare-fun m!4724603 () Bool)

(assert (=> b!4125992 m!4724603))

(assert (=> b!4125992 m!4723903))

(declare-fun m!4724605 () Bool)

(assert (=> b!4125988 m!4724605))

(declare-fun m!4724607 () Bool)

(assert (=> b!4125988 m!4724607))

(assert (=> b!4125988 m!4724595))

(assert (=> b!4125988 m!4724605))

(declare-fun m!4724609 () Bool)

(assert (=> b!4125988 m!4724609))

(declare-fun m!4724611 () Bool)

(assert (=> b!4125988 m!4724611))

(assert (=> b!4125988 m!4724605))

(declare-fun m!4724613 () Bool)

(assert (=> b!4125988 m!4724613))

(assert (=> b!4125988 m!4723903))

(assert (=> b!4125988 m!4724595))

(assert (=> b!4125988 m!4723903))

(assert (=> b!4125988 m!4724597))

(assert (=> b!4125988 m!4724605))

(declare-fun m!4724615 () Bool)

(assert (=> b!4125988 m!4724615))

(assert (=> bm!290076 d!1222759))

(assert (=> b!4125163 d!1222629))

(declare-fun d!1222799 () Bool)

(assert (=> d!1222799 (= (head!8692 input!3238) (h!50060 input!3238))))

(assert (=> b!4125163 d!1222799))

(declare-fun d!1222801 () Bool)

(declare-fun e!2560165 () Bool)

(assert (=> d!1222801 e!2560165))

(declare-fun c!708206 () Bool)

(assert (=> d!1222801 (= c!708206 ((_ is EmptyExpr!12205) (regex!7300 (rule!10384 (_1!24681 (get!14566 lt!1471779))))))))

(declare-fun lt!1471923 () Bool)

(declare-fun e!2560166 () Bool)

(assert (=> d!1222801 (= lt!1471923 e!2560166)))

(declare-fun c!708205 () Bool)

(assert (=> d!1222801 (= c!708205 (isEmpty!26571 (list!16371 (charsOf!4920 (_1!24681 (get!14566 lt!1471779))))))))

(assert (=> d!1222801 (validRegex!5489 (regex!7300 (rule!10384 (_1!24681 (get!14566 lt!1471779)))))))

(assert (=> d!1222801 (= (matchR!6036 (regex!7300 (rule!10384 (_1!24681 (get!14566 lt!1471779)))) (list!16371 (charsOf!4920 (_1!24681 (get!14566 lt!1471779))))) lt!1471923)))

(declare-fun b!4125995 () Bool)

(declare-fun e!2560167 () Bool)

(assert (=> b!4125995 (= e!2560167 (= (head!8692 (list!16371 (charsOf!4920 (_1!24681 (get!14566 lt!1471779))))) (c!708035 (regex!7300 (rule!10384 (_1!24681 (get!14566 lt!1471779)))))))))

(declare-fun b!4125996 () Bool)

(declare-fun res!1686351 () Bool)

(assert (=> b!4125996 (=> (not res!1686351) (not e!2560167))))

(declare-fun call!290141 () Bool)

(assert (=> b!4125996 (= res!1686351 (not call!290141))))

(declare-fun b!4125997 () Bool)

(assert (=> b!4125997 (= e!2560166 (matchR!6036 (derivativeStep!3678 (regex!7300 (rule!10384 (_1!24681 (get!14566 lt!1471779)))) (head!8692 (list!16371 (charsOf!4920 (_1!24681 (get!14566 lt!1471779)))))) (tail!6465 (list!16371 (charsOf!4920 (_1!24681 (get!14566 lt!1471779)))))))))

(declare-fun b!4125998 () Bool)

(declare-fun e!2560164 () Bool)

(declare-fun e!2560169 () Bool)

(assert (=> b!4125998 (= e!2560164 e!2560169)))

(declare-fun res!1686353 () Bool)

(assert (=> b!4125998 (=> (not res!1686353) (not e!2560169))))

(assert (=> b!4125998 (= res!1686353 (not lt!1471923))))

(declare-fun b!4125999 () Bool)

(declare-fun e!2560168 () Bool)

(assert (=> b!4125999 (= e!2560168 (not (= (head!8692 (list!16371 (charsOf!4920 (_1!24681 (get!14566 lt!1471779))))) (c!708035 (regex!7300 (rule!10384 (_1!24681 (get!14566 lt!1471779))))))))))

(declare-fun b!4126000 () Bool)

(declare-fun res!1686348 () Bool)

(assert (=> b!4126000 (=> res!1686348 e!2560164)))

(assert (=> b!4126000 (= res!1686348 e!2560167)))

(declare-fun res!1686350 () Bool)

(assert (=> b!4126000 (=> (not res!1686350) (not e!2560167))))

(assert (=> b!4126000 (= res!1686350 lt!1471923)))

(declare-fun b!4126001 () Bool)

(declare-fun e!2560170 () Bool)

(assert (=> b!4126001 (= e!2560170 (not lt!1471923))))

(declare-fun b!4126002 () Bool)

(assert (=> b!4126002 (= e!2560165 e!2560170)))

(declare-fun c!708207 () Bool)

(assert (=> b!4126002 (= c!708207 ((_ is EmptyLang!12205) (regex!7300 (rule!10384 (_1!24681 (get!14566 lt!1471779))))))))

(declare-fun b!4126003 () Bool)

(assert (=> b!4126003 (= e!2560165 (= lt!1471923 call!290141))))

(declare-fun b!4126004 () Bool)

(declare-fun res!1686347 () Bool)

(assert (=> b!4126004 (=> (not res!1686347) (not e!2560167))))

(assert (=> b!4126004 (= res!1686347 (isEmpty!26571 (tail!6465 (list!16371 (charsOf!4920 (_1!24681 (get!14566 lt!1471779)))))))))

(declare-fun b!4126005 () Bool)

(assert (=> b!4126005 (= e!2560166 (nullable!4283 (regex!7300 (rule!10384 (_1!24681 (get!14566 lt!1471779))))))))

(declare-fun b!4126006 () Bool)

(assert (=> b!4126006 (= e!2560169 e!2560168)))

(declare-fun res!1686352 () Bool)

(assert (=> b!4126006 (=> res!1686352 e!2560168)))

(assert (=> b!4126006 (= res!1686352 call!290141)))

(declare-fun b!4126007 () Bool)

(declare-fun res!1686354 () Bool)

(assert (=> b!4126007 (=> res!1686354 e!2560168)))

(assert (=> b!4126007 (= res!1686354 (not (isEmpty!26571 (tail!6465 (list!16371 (charsOf!4920 (_1!24681 (get!14566 lt!1471779))))))))))

(declare-fun b!4126008 () Bool)

(declare-fun res!1686349 () Bool)

(assert (=> b!4126008 (=> res!1686349 e!2560164)))

(assert (=> b!4126008 (= res!1686349 (not ((_ is ElementMatch!12205) (regex!7300 (rule!10384 (_1!24681 (get!14566 lt!1471779)))))))))

(assert (=> b!4126008 (= e!2560170 e!2560164)))

(declare-fun bm!290136 () Bool)

(assert (=> bm!290136 (= call!290141 (isEmpty!26571 (list!16371 (charsOf!4920 (_1!24681 (get!14566 lt!1471779))))))))

(assert (= (and d!1222801 c!708205) b!4126005))

(assert (= (and d!1222801 (not c!708205)) b!4125997))

(assert (= (and d!1222801 c!708206) b!4126003))

(assert (= (and d!1222801 (not c!708206)) b!4126002))

(assert (= (and b!4126002 c!708207) b!4126001))

(assert (= (and b!4126002 (not c!708207)) b!4126008))

(assert (= (and b!4126008 (not res!1686349)) b!4126000))

(assert (= (and b!4126000 res!1686350) b!4125996))

(assert (= (and b!4125996 res!1686351) b!4126004))

(assert (= (and b!4126004 res!1686347) b!4125995))

(assert (= (and b!4126000 (not res!1686348)) b!4125998))

(assert (= (and b!4125998 res!1686353) b!4126006))

(assert (= (and b!4126006 (not res!1686352)) b!4126007))

(assert (= (and b!4126007 (not res!1686354)) b!4125999))

(assert (= (or b!4126003 b!4125996 b!4126006) bm!290136))

(assert (=> b!4126004 m!4723967))

(declare-fun m!4724617 () Bool)

(assert (=> b!4126004 m!4724617))

(assert (=> b!4126004 m!4724617))

(declare-fun m!4724619 () Bool)

(assert (=> b!4126004 m!4724619))

(assert (=> b!4125995 m!4723967))

(declare-fun m!4724621 () Bool)

(assert (=> b!4125995 m!4724621))

(assert (=> b!4125997 m!4723967))

(assert (=> b!4125997 m!4724621))

(assert (=> b!4125997 m!4724621))

(declare-fun m!4724623 () Bool)

(assert (=> b!4125997 m!4724623))

(assert (=> b!4125997 m!4723967))

(assert (=> b!4125997 m!4724617))

(assert (=> b!4125997 m!4724623))

(assert (=> b!4125997 m!4724617))

(declare-fun m!4724625 () Bool)

(assert (=> b!4125997 m!4724625))

(declare-fun m!4724627 () Bool)

(assert (=> b!4126005 m!4724627))

(assert (=> b!4126007 m!4723967))

(assert (=> b!4126007 m!4724617))

(assert (=> b!4126007 m!4724617))

(assert (=> b!4126007 m!4724619))

(assert (=> d!1222801 m!4723967))

(declare-fun m!4724629 () Bool)

(assert (=> d!1222801 m!4724629))

(declare-fun m!4724631 () Bool)

(assert (=> d!1222801 m!4724631))

(assert (=> b!4125999 m!4723967))

(assert (=> b!4125999 m!4724621))

(assert (=> bm!290136 m!4723967))

(assert (=> bm!290136 m!4724629))

(assert (=> b!4125241 d!1222801))

(assert (=> b!4125241 d!1222653))

(assert (=> b!4125241 d!1222639))

(assert (=> b!4125241 d!1222641))

(declare-fun bs!594841 () Bool)

(declare-fun d!1222803 () Bool)

(assert (= bs!594841 (and d!1222803 d!1222721)))

(declare-fun lambda!128737 () Int)

(assert (=> bs!594841 (= (= (toValue!9952 (transformation!7300 r!4008)) (toValue!9952 (transformation!7300 (h!50061 rules!3756)))) (= lambda!128737 lambda!128725))))

(assert (=> d!1222803 true))

(assert (=> d!1222803 (< (dynLambda!19089 order!23501 (toValue!9952 (transformation!7300 r!4008))) (dynLambda!19097 order!23509 lambda!128737))))

(assert (=> d!1222803 (= (equivClasses!3043 (toChars!9811 (transformation!7300 r!4008)) (toValue!9952 (transformation!7300 r!4008))) (Forall2!1145 lambda!128737))))

(declare-fun bs!594842 () Bool)

(assert (= bs!594842 d!1222803))

(declare-fun m!4724633 () Bool)

(assert (=> bs!594842 m!4724633))

(assert (=> b!4125413 d!1222803))

(declare-fun bs!594843 () Bool)

(declare-fun d!1222805 () Bool)

(assert (= bs!594843 (and d!1222805 d!1222721)))

(declare-fun lambda!128738 () Int)

(assert (=> bs!594843 (= (= (toValue!9952 (transformation!7300 rBis!149)) (toValue!9952 (transformation!7300 (h!50061 rules!3756)))) (= lambda!128738 lambda!128725))))

(declare-fun bs!594844 () Bool)

(assert (= bs!594844 (and d!1222805 d!1222803)))

(assert (=> bs!594844 (= (= (toValue!9952 (transformation!7300 rBis!149)) (toValue!9952 (transformation!7300 r!4008))) (= lambda!128738 lambda!128737))))

(assert (=> d!1222805 true))

(assert (=> d!1222805 (< (dynLambda!19089 order!23501 (toValue!9952 (transformation!7300 rBis!149))) (dynLambda!19097 order!23509 lambda!128738))))

(assert (=> d!1222805 (= (equivClasses!3043 (toChars!9811 (transformation!7300 rBis!149)) (toValue!9952 (transformation!7300 rBis!149))) (Forall2!1145 lambda!128738))))

(declare-fun bs!594845 () Bool)

(assert (= bs!594845 d!1222805))

(declare-fun m!4724635 () Bool)

(assert (=> bs!594845 m!4724635))

(assert (=> b!4125173 d!1222805))

(assert (=> b!4125141 d!1222599))

(assert (=> b!4125141 d!1222601))

(assert (=> d!1222485 d!1222611))

(declare-fun bm!290137 () Bool)

(declare-fun call!290142 () Bool)

(declare-fun call!290144 () Bool)

(assert (=> bm!290137 (= call!290142 call!290144)))

(declare-fun c!708209 () Bool)

(declare-fun bm!290138 () Bool)

(declare-fun c!708208 () Bool)

(assert (=> bm!290138 (= call!290144 (validRegex!5489 (ite c!708208 (reg!12534 (regex!7300 (h!50061 rules!3756))) (ite c!708209 (regOne!24923 (regex!7300 (h!50061 rules!3756))) (regOne!24922 (regex!7300 (h!50061 rules!3756)))))))))

(declare-fun bm!290139 () Bool)

(declare-fun call!290143 () Bool)

(assert (=> bm!290139 (= call!290143 (validRegex!5489 (ite c!708209 (regTwo!24923 (regex!7300 (h!50061 rules!3756))) (regTwo!24922 (regex!7300 (h!50061 rules!3756))))))))

(declare-fun b!4126009 () Bool)

(declare-fun res!1686359 () Bool)

(declare-fun e!2560174 () Bool)

(assert (=> b!4126009 (=> (not res!1686359) (not e!2560174))))

(assert (=> b!4126009 (= res!1686359 call!290142)))

(declare-fun e!2560172 () Bool)

(assert (=> b!4126009 (= e!2560172 e!2560174)))

(declare-fun b!4126010 () Bool)

(assert (=> b!4126010 (= e!2560174 call!290143)))

(declare-fun b!4126011 () Bool)

(declare-fun e!2560173 () Bool)

(assert (=> b!4126011 (= e!2560173 e!2560172)))

(assert (=> b!4126011 (= c!708209 ((_ is Union!12205) (regex!7300 (h!50061 rules!3756))))))

(declare-fun b!4126012 () Bool)

(declare-fun e!2560176 () Bool)

(assert (=> b!4126012 (= e!2560176 call!290144)))

(declare-fun b!4126013 () Bool)

(assert (=> b!4126013 (= e!2560173 e!2560176)))

(declare-fun res!1686355 () Bool)

(assert (=> b!4126013 (= res!1686355 (not (nullable!4283 (reg!12534 (regex!7300 (h!50061 rules!3756))))))))

(assert (=> b!4126013 (=> (not res!1686355) (not e!2560176))))

(declare-fun b!4126014 () Bool)

(declare-fun e!2560177 () Bool)

(assert (=> b!4126014 (= e!2560177 e!2560173)))

(assert (=> b!4126014 (= c!708208 ((_ is Star!12205) (regex!7300 (h!50061 rules!3756))))))

(declare-fun b!4126015 () Bool)

(declare-fun e!2560171 () Bool)

(declare-fun e!2560175 () Bool)

(assert (=> b!4126015 (= e!2560171 e!2560175)))

(declare-fun res!1686357 () Bool)

(assert (=> b!4126015 (=> (not res!1686357) (not e!2560175))))

(assert (=> b!4126015 (= res!1686357 call!290142)))

(declare-fun d!1222807 () Bool)

(declare-fun res!1686356 () Bool)

(assert (=> d!1222807 (=> res!1686356 e!2560177)))

(assert (=> d!1222807 (= res!1686356 ((_ is ElementMatch!12205) (regex!7300 (h!50061 rules!3756))))))

(assert (=> d!1222807 (= (validRegex!5489 (regex!7300 (h!50061 rules!3756))) e!2560177)))

(declare-fun b!4126016 () Bool)

(assert (=> b!4126016 (= e!2560175 call!290143)))

(declare-fun b!4126017 () Bool)

(declare-fun res!1686358 () Bool)

(assert (=> b!4126017 (=> res!1686358 e!2560171)))

(assert (=> b!4126017 (= res!1686358 (not ((_ is Concat!19736) (regex!7300 (h!50061 rules!3756)))))))

(assert (=> b!4126017 (= e!2560172 e!2560171)))

(assert (= (and d!1222807 (not res!1686356)) b!4126014))

(assert (= (and b!4126014 c!708208) b!4126013))

(assert (= (and b!4126014 (not c!708208)) b!4126011))

(assert (= (and b!4126013 res!1686355) b!4126012))

(assert (= (and b!4126011 c!708209) b!4126009))

(assert (= (and b!4126011 (not c!708209)) b!4126017))

(assert (= (and b!4126009 res!1686359) b!4126010))

(assert (= (and b!4126017 (not res!1686358)) b!4126015))

(assert (= (and b!4126015 res!1686357) b!4126016))

(assert (= (or b!4126009 b!4126015) bm!290137))

(assert (= (or b!4126010 b!4126016) bm!290139))

(assert (= (or b!4126012 bm!290137) bm!290138))

(declare-fun m!4724637 () Bool)

(assert (=> bm!290138 m!4724637))

(declare-fun m!4724639 () Bool)

(assert (=> bm!290139 m!4724639))

(declare-fun m!4724641 () Bool)

(assert (=> b!4126013 m!4724641))

(assert (=> d!1222473 d!1222807))

(declare-fun d!1222809 () Bool)

(declare-fun e!2560180 () Bool)

(assert (=> d!1222809 e!2560180))

(declare-fun res!1686362 () Bool)

(assert (=> d!1222809 (=> (not res!1686362) (not e!2560180))))

(declare-fun lt!1471926 () BalanceConc!26616)

(assert (=> d!1222809 (= res!1686362 (= (list!16371 lt!1471926) p!2912))))

(declare-fun fromList!897 (List!44764) Conc!13511)

(assert (=> d!1222809 (= lt!1471926 (BalanceConc!26617 (fromList!897 p!2912)))))

(assert (=> d!1222809 (= (fromListB!2478 p!2912) lt!1471926)))

(declare-fun b!4126020 () Bool)

(assert (=> b!4126020 (= e!2560180 (isBalanced!3718 (fromList!897 p!2912)))))

(assert (= (and d!1222809 res!1686362) b!4126020))

(declare-fun m!4724643 () Bool)

(assert (=> d!1222809 m!4724643))

(declare-fun m!4724645 () Bool)

(assert (=> d!1222809 m!4724645))

(assert (=> b!4126020 m!4724645))

(assert (=> b!4126020 m!4724645))

(declare-fun m!4724647 () Bool)

(assert (=> b!4126020 m!4724647))

(assert (=> d!1222563 d!1222809))

(declare-fun bs!594846 () Bool)

(declare-fun d!1222811 () Bool)

(assert (= bs!594846 (and d!1222811 d!1222621)))

(declare-fun lambda!128741 () Int)

(assert (=> bs!594846 (= lambda!128741 lambda!128715)))

(assert (=> d!1222811 true))

(declare-fun lt!1471929 () Bool)

(assert (=> d!1222811 (= lt!1471929 (rulesValidInductive!2696 thiss!25645 rules!3756))))

(assert (=> d!1222811 (= lt!1471929 (forall!8447 rules!3756 lambda!128741))))

(assert (=> d!1222811 (= (rulesValid!2859 thiss!25645 rules!3756) lt!1471929)))

(declare-fun bs!594847 () Bool)

(assert (= bs!594847 d!1222811))

(assert (=> bs!594847 m!4723989))

(declare-fun m!4724649 () Bool)

(assert (=> bs!594847 m!4724649))

(assert (=> d!1222469 d!1222811))

(declare-fun d!1222813 () Bool)

(declare-fun lt!1471930 () Int)

(assert (=> d!1222813 (>= lt!1471930 0)))

(declare-fun e!2560181 () Int)

(assert (=> d!1222813 (= lt!1471930 e!2560181)))

(declare-fun c!708211 () Bool)

(assert (=> d!1222813 (= c!708211 ((_ is Nil!44640) (_2!24681 (get!14566 lt!1471779))))))

(assert (=> d!1222813 (= (size!33056 (_2!24681 (get!14566 lt!1471779))) lt!1471930)))

(declare-fun b!4126021 () Bool)

(assert (=> b!4126021 (= e!2560181 0)))

(declare-fun b!4126022 () Bool)

(assert (=> b!4126022 (= e!2560181 (+ 1 (size!33056 (t!341069 (_2!24681 (get!14566 lt!1471779))))))))

(assert (= (and d!1222813 c!708211) b!4126021))

(assert (= (and d!1222813 (not c!708211)) b!4126022))

(declare-fun m!4724651 () Bool)

(assert (=> b!4126022 m!4724651))

(assert (=> b!4125246 d!1222813))

(assert (=> b!4125246 d!1222653))

(assert (=> b!4125246 d!1222741))

(assert (=> b!4125244 d!1222653))

(declare-fun d!1222815 () Bool)

(assert (=> d!1222815 (= (apply!10373 (transformation!7300 (rule!10384 (_1!24681 (get!14566 lt!1471779)))) (seqFromList!5417 (originalCharacters!7796 (_1!24681 (get!14566 lt!1471779))))) (dynLambda!19093 (toValue!9952 (transformation!7300 (rule!10384 (_1!24681 (get!14566 lt!1471779))))) (seqFromList!5417 (originalCharacters!7796 (_1!24681 (get!14566 lt!1471779))))))))

(declare-fun b_lambda!121099 () Bool)

(assert (=> (not b_lambda!121099) (not d!1222815)))

(declare-fun tb!247591 () Bool)

(declare-fun t!341138 () Bool)

(assert (=> (and b!4125067 (= (toValue!9952 (transformation!7300 r!4008)) (toValue!9952 (transformation!7300 (rule!10384 (_1!24681 (get!14566 lt!1471779)))))) t!341138) tb!247591))

(declare-fun result!300858 () Bool)

(assert (=> tb!247591 (= result!300858 (inv!21 (dynLambda!19093 (toValue!9952 (transformation!7300 (rule!10384 (_1!24681 (get!14566 lt!1471779))))) (seqFromList!5417 (originalCharacters!7796 (_1!24681 (get!14566 lt!1471779)))))))))

(declare-fun m!4724653 () Bool)

(assert (=> tb!247591 m!4724653))

(assert (=> d!1222815 t!341138))

(declare-fun b_and!319413 () Bool)

(assert (= b_and!319355 (and (=> t!341138 result!300858) b_and!319413)))

(declare-fun tb!247593 () Bool)

(declare-fun t!341140 () Bool)

(assert (=> (and b!4125055 (= (toValue!9952 (transformation!7300 rBis!149)) (toValue!9952 (transformation!7300 (rule!10384 (_1!24681 (get!14566 lt!1471779)))))) t!341140) tb!247593))

(declare-fun result!300860 () Bool)

(assert (= result!300860 result!300858))

(assert (=> d!1222815 t!341140))

(declare-fun b_and!319415 () Bool)

(assert (= b_and!319357 (and (=> t!341140 result!300860) b_and!319415)))

(declare-fun tb!247595 () Bool)

(declare-fun t!341142 () Bool)

(assert (=> (and b!4125065 (= (toValue!9952 (transformation!7300 (h!50061 rules!3756))) (toValue!9952 (transformation!7300 (rule!10384 (_1!24681 (get!14566 lt!1471779)))))) t!341142) tb!247595))

(declare-fun result!300862 () Bool)

(assert (= result!300862 result!300858))

(assert (=> d!1222815 t!341142))

(declare-fun b_and!319417 () Bool)

(assert (= b_and!319359 (and (=> t!341142 result!300862) b_and!319417)))

(declare-fun tb!247597 () Bool)

(declare-fun t!341144 () Bool)

(assert (=> (and b!4125426 (= (toValue!9952 (transformation!7300 (h!50061 (t!341070 rules!3756)))) (toValue!9952 (transformation!7300 (rule!10384 (_1!24681 (get!14566 lt!1471779)))))) t!341144) tb!247597))

(declare-fun result!300864 () Bool)

(assert (= result!300864 result!300858))

(assert (=> d!1222815 t!341144))

(declare-fun b_and!319419 () Bool)

(assert (= b_and!319361 (and (=> t!341144 result!300864) b_and!319419)))

(assert (=> d!1222815 m!4723991))

(declare-fun m!4724655 () Bool)

(assert (=> d!1222815 m!4724655))

(assert (=> b!4125244 d!1222815))

(declare-fun d!1222817 () Bool)

(assert (=> d!1222817 (= (seqFromList!5417 (originalCharacters!7796 (_1!24681 (get!14566 lt!1471779)))) (fromListB!2478 (originalCharacters!7796 (_1!24681 (get!14566 lt!1471779)))))))

(declare-fun bs!594848 () Bool)

(assert (= bs!594848 d!1222817))

(declare-fun m!4724657 () Bool)

(assert (=> bs!594848 m!4724657))

(assert (=> b!4125244 d!1222817))

(assert (=> d!1222579 d!1222605))

(declare-fun e!2560183 () Bool)

(assert (=> b!4125443 (= tp!1257133 e!2560183)))

(declare-fun b!4126023 () Bool)

(assert (=> b!4126023 (= e!2560183 tp_is_empty!21333)))

(declare-fun b!4126024 () Bool)

(declare-fun tp!1257246 () Bool)

(declare-fun tp!1257245 () Bool)

(assert (=> b!4126024 (= e!2560183 (and tp!1257246 tp!1257245))))

(declare-fun b!4126025 () Bool)

(declare-fun tp!1257244 () Bool)

(assert (=> b!4126025 (= e!2560183 tp!1257244)))

(declare-fun b!4126026 () Bool)

(declare-fun tp!1257247 () Bool)

(declare-fun tp!1257248 () Bool)

(assert (=> b!4126026 (= e!2560183 (and tp!1257247 tp!1257248))))

(assert (= (and b!4125443 ((_ is ElementMatch!12205) (reg!12534 (regex!7300 rBis!149)))) b!4126023))

(assert (= (and b!4125443 ((_ is Concat!19736) (reg!12534 (regex!7300 rBis!149)))) b!4126024))

(assert (= (and b!4125443 ((_ is Star!12205) (reg!12534 (regex!7300 rBis!149)))) b!4126025))

(assert (= (and b!4125443 ((_ is Union!12205) (reg!12534 (regex!7300 rBis!149)))) b!4126026))

(declare-fun e!2560184 () Bool)

(assert (=> b!4125438 (= tp!1257130 e!2560184)))

(declare-fun b!4126027 () Bool)

(assert (=> b!4126027 (= e!2560184 tp_is_empty!21333)))

(declare-fun b!4126028 () Bool)

(declare-fun tp!1257251 () Bool)

(declare-fun tp!1257250 () Bool)

(assert (=> b!4126028 (= e!2560184 (and tp!1257251 tp!1257250))))

(declare-fun b!4126029 () Bool)

(declare-fun tp!1257249 () Bool)

(assert (=> b!4126029 (= e!2560184 tp!1257249)))

(declare-fun b!4126030 () Bool)

(declare-fun tp!1257252 () Bool)

(declare-fun tp!1257253 () Bool)

(assert (=> b!4126030 (= e!2560184 (and tp!1257252 tp!1257253))))

(assert (= (and b!4125438 ((_ is ElementMatch!12205) (regOne!24922 (regex!7300 (h!50061 rules!3756))))) b!4126027))

(assert (= (and b!4125438 ((_ is Concat!19736) (regOne!24922 (regex!7300 (h!50061 rules!3756))))) b!4126028))

(assert (= (and b!4125438 ((_ is Star!12205) (regOne!24922 (regex!7300 (h!50061 rules!3756))))) b!4126029))

(assert (= (and b!4125438 ((_ is Union!12205) (regOne!24922 (regex!7300 (h!50061 rules!3756))))) b!4126030))

(declare-fun e!2560185 () Bool)

(assert (=> b!4125438 (= tp!1257129 e!2560185)))

(declare-fun b!4126031 () Bool)

(assert (=> b!4126031 (= e!2560185 tp_is_empty!21333)))

(declare-fun b!4126032 () Bool)

(declare-fun tp!1257256 () Bool)

(declare-fun tp!1257255 () Bool)

(assert (=> b!4126032 (= e!2560185 (and tp!1257256 tp!1257255))))

(declare-fun b!4126033 () Bool)

(declare-fun tp!1257254 () Bool)

(assert (=> b!4126033 (= e!2560185 tp!1257254)))

(declare-fun b!4126034 () Bool)

(declare-fun tp!1257257 () Bool)

(declare-fun tp!1257258 () Bool)

(assert (=> b!4126034 (= e!2560185 (and tp!1257257 tp!1257258))))

(assert (= (and b!4125438 ((_ is ElementMatch!12205) (regTwo!24922 (regex!7300 (h!50061 rules!3756))))) b!4126031))

(assert (= (and b!4125438 ((_ is Concat!19736) (regTwo!24922 (regex!7300 (h!50061 rules!3756))))) b!4126032))

(assert (= (and b!4125438 ((_ is Star!12205) (regTwo!24922 (regex!7300 (h!50061 rules!3756))))) b!4126033))

(assert (= (and b!4125438 ((_ is Union!12205) (regTwo!24922 (regex!7300 (h!50061 rules!3756))))) b!4126034))

(declare-fun b!4126035 () Bool)

(declare-fun e!2560186 () Bool)

(declare-fun tp!1257259 () Bool)

(assert (=> b!4126035 (= e!2560186 (and tp_is_empty!21333 tp!1257259))))

(assert (=> b!4125450 (= tp!1257141 e!2560186)))

(assert (= (and b!4125450 ((_ is Cons!44640) (t!341069 (t!341069 input!3238)))) b!4126035))

(declare-fun e!2560187 () Bool)

(assert (=> b!4125440 (= tp!1257131 e!2560187)))

(declare-fun b!4126036 () Bool)

(assert (=> b!4126036 (= e!2560187 tp_is_empty!21333)))

(declare-fun b!4126037 () Bool)

(declare-fun tp!1257262 () Bool)

(declare-fun tp!1257261 () Bool)

(assert (=> b!4126037 (= e!2560187 (and tp!1257262 tp!1257261))))

(declare-fun b!4126038 () Bool)

(declare-fun tp!1257260 () Bool)

(assert (=> b!4126038 (= e!2560187 tp!1257260)))

(declare-fun b!4126039 () Bool)

(declare-fun tp!1257263 () Bool)

(declare-fun tp!1257264 () Bool)

(assert (=> b!4126039 (= e!2560187 (and tp!1257263 tp!1257264))))

(assert (= (and b!4125440 ((_ is ElementMatch!12205) (regOne!24923 (regex!7300 (h!50061 rules!3756))))) b!4126036))

(assert (= (and b!4125440 ((_ is Concat!19736) (regOne!24923 (regex!7300 (h!50061 rules!3756))))) b!4126037))

(assert (= (and b!4125440 ((_ is Star!12205) (regOne!24923 (regex!7300 (h!50061 rules!3756))))) b!4126038))

(assert (= (and b!4125440 ((_ is Union!12205) (regOne!24923 (regex!7300 (h!50061 rules!3756))))) b!4126039))

(declare-fun e!2560188 () Bool)

(assert (=> b!4125440 (= tp!1257132 e!2560188)))

(declare-fun b!4126040 () Bool)

(assert (=> b!4126040 (= e!2560188 tp_is_empty!21333)))

(declare-fun b!4126041 () Bool)

(declare-fun tp!1257267 () Bool)

(declare-fun tp!1257266 () Bool)

(assert (=> b!4126041 (= e!2560188 (and tp!1257267 tp!1257266))))

(declare-fun b!4126042 () Bool)

(declare-fun tp!1257265 () Bool)

(assert (=> b!4126042 (= e!2560188 tp!1257265)))

(declare-fun b!4126043 () Bool)

(declare-fun tp!1257268 () Bool)

(declare-fun tp!1257269 () Bool)

(assert (=> b!4126043 (= e!2560188 (and tp!1257268 tp!1257269))))

(assert (= (and b!4125440 ((_ is ElementMatch!12205) (regTwo!24923 (regex!7300 (h!50061 rules!3756))))) b!4126040))

(assert (= (and b!4125440 ((_ is Concat!19736) (regTwo!24923 (regex!7300 (h!50061 rules!3756))))) b!4126041))

(assert (= (and b!4125440 ((_ is Star!12205) (regTwo!24923 (regex!7300 (h!50061 rules!3756))))) b!4126042))

(assert (= (and b!4125440 ((_ is Union!12205) (regTwo!24923 (regex!7300 (h!50061 rules!3756))))) b!4126043))

(declare-fun e!2560189 () Bool)

(assert (=> b!4125444 (= tp!1257136 e!2560189)))

(declare-fun b!4126044 () Bool)

(assert (=> b!4126044 (= e!2560189 tp_is_empty!21333)))

(declare-fun b!4126045 () Bool)

(declare-fun tp!1257272 () Bool)

(declare-fun tp!1257271 () Bool)

(assert (=> b!4126045 (= e!2560189 (and tp!1257272 tp!1257271))))

(declare-fun b!4126046 () Bool)

(declare-fun tp!1257270 () Bool)

(assert (=> b!4126046 (= e!2560189 tp!1257270)))

(declare-fun b!4126047 () Bool)

(declare-fun tp!1257273 () Bool)

(declare-fun tp!1257274 () Bool)

(assert (=> b!4126047 (= e!2560189 (and tp!1257273 tp!1257274))))

(assert (= (and b!4125444 ((_ is ElementMatch!12205) (regOne!24923 (regex!7300 rBis!149)))) b!4126044))

(assert (= (and b!4125444 ((_ is Concat!19736) (regOne!24923 (regex!7300 rBis!149)))) b!4126045))

(assert (= (and b!4125444 ((_ is Star!12205) (regOne!24923 (regex!7300 rBis!149)))) b!4126046))

(assert (= (and b!4125444 ((_ is Union!12205) (regOne!24923 (regex!7300 rBis!149)))) b!4126047))

(declare-fun e!2560190 () Bool)

(assert (=> b!4125444 (= tp!1257137 e!2560190)))

(declare-fun b!4126048 () Bool)

(assert (=> b!4126048 (= e!2560190 tp_is_empty!21333)))

(declare-fun b!4126049 () Bool)

(declare-fun tp!1257277 () Bool)

(declare-fun tp!1257276 () Bool)

(assert (=> b!4126049 (= e!2560190 (and tp!1257277 tp!1257276))))

(declare-fun b!4126050 () Bool)

(declare-fun tp!1257275 () Bool)

(assert (=> b!4126050 (= e!2560190 tp!1257275)))

(declare-fun b!4126051 () Bool)

(declare-fun tp!1257278 () Bool)

(declare-fun tp!1257279 () Bool)

(assert (=> b!4126051 (= e!2560190 (and tp!1257278 tp!1257279))))

(assert (= (and b!4125444 ((_ is ElementMatch!12205) (regTwo!24923 (regex!7300 rBis!149)))) b!4126048))

(assert (= (and b!4125444 ((_ is Concat!19736) (regTwo!24923 (regex!7300 rBis!149)))) b!4126049))

(assert (= (and b!4125444 ((_ is Star!12205) (regTwo!24923 (regex!7300 rBis!149)))) b!4126050))

(assert (= (and b!4125444 ((_ is Union!12205) (regTwo!24923 (regex!7300 rBis!149)))) b!4126051))

(declare-fun e!2560191 () Bool)

(assert (=> b!4125439 (= tp!1257128 e!2560191)))

(declare-fun b!4126052 () Bool)

(assert (=> b!4126052 (= e!2560191 tp_is_empty!21333)))

(declare-fun b!4126053 () Bool)

(declare-fun tp!1257282 () Bool)

(declare-fun tp!1257281 () Bool)

(assert (=> b!4126053 (= e!2560191 (and tp!1257282 tp!1257281))))

(declare-fun b!4126054 () Bool)

(declare-fun tp!1257280 () Bool)

(assert (=> b!4126054 (= e!2560191 tp!1257280)))

(declare-fun b!4126055 () Bool)

(declare-fun tp!1257283 () Bool)

(declare-fun tp!1257284 () Bool)

(assert (=> b!4126055 (= e!2560191 (and tp!1257283 tp!1257284))))

(assert (= (and b!4125439 ((_ is ElementMatch!12205) (reg!12534 (regex!7300 (h!50061 rules!3756))))) b!4126052))

(assert (= (and b!4125439 ((_ is Concat!19736) (reg!12534 (regex!7300 (h!50061 rules!3756))))) b!4126053))

(assert (= (and b!4125439 ((_ is Star!12205) (reg!12534 (regex!7300 (h!50061 rules!3756))))) b!4126054))

(assert (= (and b!4125439 ((_ is Union!12205) (reg!12534 (regex!7300 (h!50061 rules!3756))))) b!4126055))

(declare-fun b!4126058 () Bool)

(declare-fun b_free!116843 () Bool)

(declare-fun b_next!117547 () Bool)

(assert (=> b!4126058 (= b_free!116843 (not b_next!117547))))

(declare-fun tb!247599 () Bool)

(declare-fun t!341146 () Bool)

(assert (=> (and b!4126058 (= (toValue!9952 (transformation!7300 (h!50061 (t!341070 (t!341070 rules!3756))))) (toValue!9952 (transformation!7300 r!4008))) t!341146) tb!247599))

(declare-fun result!300866 () Bool)

(assert (= result!300866 result!300806))

(assert (=> d!1222517 t!341146))

(assert (=> d!1222567 t!341146))

(declare-fun t!341148 () Bool)

(declare-fun tb!247601 () Bool)

(assert (=> (and b!4126058 (= (toValue!9952 (transformation!7300 (h!50061 (t!341070 (t!341070 rules!3756))))) (toValue!9952 (transformation!7300 (rule!10384 (_1!24681 (get!14566 lt!1471779)))))) t!341148) tb!247601))

(declare-fun result!300868 () Bool)

(assert (= result!300868 result!300858))

(assert (=> d!1222815 t!341148))

(declare-fun tp!1257285 () Bool)

(declare-fun b_and!319421 () Bool)

(assert (=> b!4126058 (= tp!1257285 (and (=> t!341146 result!300866) (=> t!341148 result!300868) b_and!319421))))

(declare-fun b_free!116845 () Bool)

(declare-fun b_next!117549 () Bool)

(assert (=> b!4126058 (= b_free!116845 (not b_next!117549))))

(declare-fun t!341150 () Bool)

(declare-fun tb!247603 () Bool)

(assert (=> (and b!4126058 (= (toChars!9811 (transformation!7300 (h!50061 (t!341070 (t!341070 rules!3756))))) (toChars!9811 (transformation!7300 r!4008))) t!341150) tb!247603))

(declare-fun result!300870 () Bool)

(assert (= result!300870 result!300798))

(assert (=> d!1222517 t!341150))

(declare-fun tb!247605 () Bool)

(declare-fun t!341152 () Bool)

(assert (=> (and b!4126058 (= (toChars!9811 (transformation!7300 (h!50061 (t!341070 (t!341070 rules!3756))))) (toChars!9811 (transformation!7300 (rule!10384 (_1!24681 (get!14566 lt!1471779)))))) t!341152) tb!247605))

(declare-fun result!300872 () Bool)

(assert (= result!300872 result!300824))

(assert (=> d!1222641 t!341152))

(declare-fun tp!1257286 () Bool)

(declare-fun b_and!319423 () Bool)

(assert (=> b!4126058 (= tp!1257286 (and (=> t!341150 result!300870) (=> t!341152 result!300872) b_and!319423))))

(declare-fun e!2560194 () Bool)

(assert (=> b!4126058 (= e!2560194 (and tp!1257285 tp!1257286))))

(declare-fun e!2560195 () Bool)

(declare-fun b!4126057 () Bool)

(declare-fun tp!1257287 () Bool)

(assert (=> b!4126057 (= e!2560195 (and tp!1257287 (inv!59219 (tag!8160 (h!50061 (t!341070 (t!341070 rules!3756))))) (inv!59221 (transformation!7300 (h!50061 (t!341070 (t!341070 rules!3756))))) e!2560194))))

(declare-fun b!4126056 () Bool)

(declare-fun e!2560192 () Bool)

(declare-fun tp!1257288 () Bool)

(assert (=> b!4126056 (= e!2560192 (and e!2560195 tp!1257288))))

(assert (=> b!4125424 (= tp!1257117 e!2560192)))

(assert (= b!4126057 b!4126058))

(assert (= b!4126056 b!4126057))

(assert (= (and b!4125424 ((_ is Cons!44641) (t!341070 (t!341070 rules!3756)))) b!4126056))

(declare-fun m!4724659 () Bool)

(assert (=> b!4126057 m!4724659))

(declare-fun m!4724661 () Bool)

(assert (=> b!4126057 m!4724661))

(declare-fun e!2560196 () Bool)

(assert (=> b!4125452 (= tp!1257144 e!2560196)))

(declare-fun b!4126059 () Bool)

(assert (=> b!4126059 (= e!2560196 tp_is_empty!21333)))

(declare-fun b!4126060 () Bool)

(declare-fun tp!1257291 () Bool)

(declare-fun tp!1257290 () Bool)

(assert (=> b!4126060 (= e!2560196 (and tp!1257291 tp!1257290))))

(declare-fun b!4126061 () Bool)

(declare-fun tp!1257289 () Bool)

(assert (=> b!4126061 (= e!2560196 tp!1257289)))

(declare-fun b!4126062 () Bool)

(declare-fun tp!1257292 () Bool)

(declare-fun tp!1257293 () Bool)

(assert (=> b!4126062 (= e!2560196 (and tp!1257292 tp!1257293))))

(assert (= (and b!4125452 ((_ is ElementMatch!12205) (regOne!24922 (regex!7300 r!4008)))) b!4126059))

(assert (= (and b!4125452 ((_ is Concat!19736) (regOne!24922 (regex!7300 r!4008)))) b!4126060))

(assert (= (and b!4125452 ((_ is Star!12205) (regOne!24922 (regex!7300 r!4008)))) b!4126061))

(assert (= (and b!4125452 ((_ is Union!12205) (regOne!24922 (regex!7300 r!4008)))) b!4126062))

(declare-fun e!2560197 () Bool)

(assert (=> b!4125452 (= tp!1257143 e!2560197)))

(declare-fun b!4126063 () Bool)

(assert (=> b!4126063 (= e!2560197 tp_is_empty!21333)))

(declare-fun b!4126064 () Bool)

(declare-fun tp!1257296 () Bool)

(declare-fun tp!1257295 () Bool)

(assert (=> b!4126064 (= e!2560197 (and tp!1257296 tp!1257295))))

(declare-fun b!4126065 () Bool)

(declare-fun tp!1257294 () Bool)

(assert (=> b!4126065 (= e!2560197 tp!1257294)))

(declare-fun b!4126066 () Bool)

(declare-fun tp!1257297 () Bool)

(declare-fun tp!1257298 () Bool)

(assert (=> b!4126066 (= e!2560197 (and tp!1257297 tp!1257298))))

(assert (= (and b!4125452 ((_ is ElementMatch!12205) (regTwo!24922 (regex!7300 r!4008)))) b!4126063))

(assert (= (and b!4125452 ((_ is Concat!19736) (regTwo!24922 (regex!7300 r!4008)))) b!4126064))

(assert (= (and b!4125452 ((_ is Star!12205) (regTwo!24922 (regex!7300 r!4008)))) b!4126065))

(assert (= (and b!4125452 ((_ is Union!12205) (regTwo!24922 (regex!7300 r!4008)))) b!4126066))

(declare-fun e!2560198 () Bool)

(assert (=> b!4125454 (= tp!1257145 e!2560198)))

(declare-fun b!4126067 () Bool)

(assert (=> b!4126067 (= e!2560198 tp_is_empty!21333)))

(declare-fun b!4126068 () Bool)

(declare-fun tp!1257301 () Bool)

(declare-fun tp!1257300 () Bool)

(assert (=> b!4126068 (= e!2560198 (and tp!1257301 tp!1257300))))

(declare-fun b!4126069 () Bool)

(declare-fun tp!1257299 () Bool)

(assert (=> b!4126069 (= e!2560198 tp!1257299)))

(declare-fun b!4126070 () Bool)

(declare-fun tp!1257302 () Bool)

(declare-fun tp!1257303 () Bool)

(assert (=> b!4126070 (= e!2560198 (and tp!1257302 tp!1257303))))

(assert (= (and b!4125454 ((_ is ElementMatch!12205) (regOne!24923 (regex!7300 r!4008)))) b!4126067))

(assert (= (and b!4125454 ((_ is Concat!19736) (regOne!24923 (regex!7300 r!4008)))) b!4126068))

(assert (= (and b!4125454 ((_ is Star!12205) (regOne!24923 (regex!7300 r!4008)))) b!4126069))

(assert (= (and b!4125454 ((_ is Union!12205) (regOne!24923 (regex!7300 r!4008)))) b!4126070))

(declare-fun e!2560199 () Bool)

(assert (=> b!4125454 (= tp!1257146 e!2560199)))

(declare-fun b!4126071 () Bool)

(assert (=> b!4126071 (= e!2560199 tp_is_empty!21333)))

(declare-fun b!4126072 () Bool)

(declare-fun tp!1257306 () Bool)

(declare-fun tp!1257305 () Bool)

(assert (=> b!4126072 (= e!2560199 (and tp!1257306 tp!1257305))))

(declare-fun b!4126073 () Bool)

(declare-fun tp!1257304 () Bool)

(assert (=> b!4126073 (= e!2560199 tp!1257304)))

(declare-fun b!4126074 () Bool)

(declare-fun tp!1257307 () Bool)

(declare-fun tp!1257308 () Bool)

(assert (=> b!4126074 (= e!2560199 (and tp!1257307 tp!1257308))))

(assert (= (and b!4125454 ((_ is ElementMatch!12205) (regTwo!24923 (regex!7300 r!4008)))) b!4126071))

(assert (= (and b!4125454 ((_ is Concat!19736) (regTwo!24923 (regex!7300 r!4008)))) b!4126072))

(assert (= (and b!4125454 ((_ is Star!12205) (regTwo!24923 (regex!7300 r!4008)))) b!4126073))

(assert (= (and b!4125454 ((_ is Union!12205) (regTwo!24923 (regex!7300 r!4008)))) b!4126074))

(declare-fun e!2560200 () Bool)

(assert (=> b!4125442 (= tp!1257135 e!2560200)))

(declare-fun b!4126075 () Bool)

(assert (=> b!4126075 (= e!2560200 tp_is_empty!21333)))

(declare-fun b!4126076 () Bool)

(declare-fun tp!1257311 () Bool)

(declare-fun tp!1257310 () Bool)

(assert (=> b!4126076 (= e!2560200 (and tp!1257311 tp!1257310))))

(declare-fun b!4126077 () Bool)

(declare-fun tp!1257309 () Bool)

(assert (=> b!4126077 (= e!2560200 tp!1257309)))

(declare-fun b!4126078 () Bool)

(declare-fun tp!1257312 () Bool)

(declare-fun tp!1257313 () Bool)

(assert (=> b!4126078 (= e!2560200 (and tp!1257312 tp!1257313))))

(assert (= (and b!4125442 ((_ is ElementMatch!12205) (regOne!24922 (regex!7300 rBis!149)))) b!4126075))

(assert (= (and b!4125442 ((_ is Concat!19736) (regOne!24922 (regex!7300 rBis!149)))) b!4126076))

(assert (= (and b!4125442 ((_ is Star!12205) (regOne!24922 (regex!7300 rBis!149)))) b!4126077))

(assert (= (and b!4125442 ((_ is Union!12205) (regOne!24922 (regex!7300 rBis!149)))) b!4126078))

(declare-fun e!2560201 () Bool)

(assert (=> b!4125442 (= tp!1257134 e!2560201)))

(declare-fun b!4126079 () Bool)

(assert (=> b!4126079 (= e!2560201 tp_is_empty!21333)))

(declare-fun b!4126080 () Bool)

(declare-fun tp!1257316 () Bool)

(declare-fun tp!1257315 () Bool)

(assert (=> b!4126080 (= e!2560201 (and tp!1257316 tp!1257315))))

(declare-fun b!4126081 () Bool)

(declare-fun tp!1257314 () Bool)

(assert (=> b!4126081 (= e!2560201 tp!1257314)))

(declare-fun b!4126082 () Bool)

(declare-fun tp!1257317 () Bool)

(declare-fun tp!1257318 () Bool)

(assert (=> b!4126082 (= e!2560201 (and tp!1257317 tp!1257318))))

(assert (= (and b!4125442 ((_ is ElementMatch!12205) (regTwo!24922 (regex!7300 rBis!149)))) b!4126079))

(assert (= (and b!4125442 ((_ is Concat!19736) (regTwo!24922 (regex!7300 rBis!149)))) b!4126080))

(assert (= (and b!4125442 ((_ is Star!12205) (regTwo!24922 (regex!7300 rBis!149)))) b!4126081))

(assert (= (and b!4125442 ((_ is Union!12205) (regTwo!24922 (regex!7300 rBis!149)))) b!4126082))

(declare-fun e!2560202 () Bool)

(assert (=> b!4125425 (= tp!1257116 e!2560202)))

(declare-fun b!4126083 () Bool)

(assert (=> b!4126083 (= e!2560202 tp_is_empty!21333)))

(declare-fun b!4126084 () Bool)

(declare-fun tp!1257321 () Bool)

(declare-fun tp!1257320 () Bool)

(assert (=> b!4126084 (= e!2560202 (and tp!1257321 tp!1257320))))

(declare-fun b!4126085 () Bool)

(declare-fun tp!1257319 () Bool)

(assert (=> b!4126085 (= e!2560202 tp!1257319)))

(declare-fun b!4126086 () Bool)

(declare-fun tp!1257322 () Bool)

(declare-fun tp!1257323 () Bool)

(assert (=> b!4126086 (= e!2560202 (and tp!1257322 tp!1257323))))

(assert (= (and b!4125425 ((_ is ElementMatch!12205) (regex!7300 (h!50061 (t!341070 rules!3756))))) b!4126083))

(assert (= (and b!4125425 ((_ is Concat!19736) (regex!7300 (h!50061 (t!341070 rules!3756))))) b!4126084))

(assert (= (and b!4125425 ((_ is Star!12205) (regex!7300 (h!50061 (t!341070 rules!3756))))) b!4126085))

(assert (= (and b!4125425 ((_ is Union!12205) (regex!7300 (h!50061 (t!341070 rules!3756))))) b!4126086))

(declare-fun e!2560203 () Bool)

(assert (=> b!4125453 (= tp!1257142 e!2560203)))

(declare-fun b!4126087 () Bool)

(assert (=> b!4126087 (= e!2560203 tp_is_empty!21333)))

(declare-fun b!4126088 () Bool)

(declare-fun tp!1257326 () Bool)

(declare-fun tp!1257325 () Bool)

(assert (=> b!4126088 (= e!2560203 (and tp!1257326 tp!1257325))))

(declare-fun b!4126089 () Bool)

(declare-fun tp!1257324 () Bool)

(assert (=> b!4126089 (= e!2560203 tp!1257324)))

(declare-fun b!4126090 () Bool)

(declare-fun tp!1257327 () Bool)

(declare-fun tp!1257328 () Bool)

(assert (=> b!4126090 (= e!2560203 (and tp!1257327 tp!1257328))))

(assert (= (and b!4125453 ((_ is ElementMatch!12205) (reg!12534 (regex!7300 r!4008)))) b!4126087))

(assert (= (and b!4125453 ((_ is Concat!19736) (reg!12534 (regex!7300 r!4008)))) b!4126088))

(assert (= (and b!4125453 ((_ is Star!12205) (reg!12534 (regex!7300 r!4008)))) b!4126089))

(assert (= (and b!4125453 ((_ is Union!12205) (reg!12534 (regex!7300 r!4008)))) b!4126090))

(declare-fun tp!1257335 () Bool)

(declare-fun b!4126099 () Bool)

(declare-fun tp!1257337 () Bool)

(declare-fun e!2560208 () Bool)

(assert (=> b!4126099 (= e!2560208 (and (inv!59224 (left!33431 (c!708034 (dynLambda!19092 (toChars!9811 (transformation!7300 r!4008)) (dynLambda!19093 (toValue!9952 (transformation!7300 r!4008)) lt!1471725))))) tp!1257335 (inv!59224 (right!33761 (c!708034 (dynLambda!19092 (toChars!9811 (transformation!7300 r!4008)) (dynLambda!19093 (toValue!9952 (transformation!7300 r!4008)) lt!1471725))))) tp!1257337))))

(declare-fun b!4126101 () Bool)

(declare-fun e!2560209 () Bool)

(declare-fun tp!1257336 () Bool)

(assert (=> b!4126101 (= e!2560209 tp!1257336)))

(declare-fun b!4126100 () Bool)

(declare-fun inv!59231 (IArray!27027) Bool)

(assert (=> b!4126100 (= e!2560208 (and (inv!59231 (xs!16817 (c!708034 (dynLambda!19092 (toChars!9811 (transformation!7300 r!4008)) (dynLambda!19093 (toValue!9952 (transformation!7300 r!4008)) lt!1471725))))) e!2560209))))

(assert (=> b!4125402 (= tp!1257105 (and (inv!59224 (c!708034 (dynLambda!19092 (toChars!9811 (transformation!7300 r!4008)) (dynLambda!19093 (toValue!9952 (transformation!7300 r!4008)) lt!1471725)))) e!2560208))))

(assert (= (and b!4125402 ((_ is Node!13511) (c!708034 (dynLambda!19092 (toChars!9811 (transformation!7300 r!4008)) (dynLambda!19093 (toValue!9952 (transformation!7300 r!4008)) lt!1471725))))) b!4126099))

(assert (= b!4126100 b!4126101))

(assert (= (and b!4125402 ((_ is Leaf!20876) (c!708034 (dynLambda!19092 (toChars!9811 (transformation!7300 r!4008)) (dynLambda!19093 (toValue!9952 (transformation!7300 r!4008)) lt!1471725))))) b!4126100))

(declare-fun m!4724663 () Bool)

(assert (=> b!4126099 m!4724663))

(declare-fun m!4724665 () Bool)

(assert (=> b!4126099 m!4724665))

(declare-fun m!4724667 () Bool)

(assert (=> b!4126100 m!4724667))

(assert (=> b!4125402 m!4724071))

(declare-fun b!4126102 () Bool)

(declare-fun e!2560210 () Bool)

(declare-fun tp!1257338 () Bool)

(assert (=> b!4126102 (= e!2560210 (and tp_is_empty!21333 tp!1257338))))

(assert (=> b!4125449 (= tp!1257140 e!2560210)))

(assert (= (and b!4125449 ((_ is Cons!44640) (t!341069 (t!341069 p!2912)))) b!4126102))

(declare-fun b_lambda!121101 () Bool)

(assert (= b_lambda!121087 (or d!1222517 b_lambda!121101)))

(declare-fun bs!594849 () Bool)

(declare-fun d!1222819 () Bool)

(assert (= bs!594849 (and d!1222819 d!1222517)))

(assert (=> bs!594849 (= (dynLambda!19096 lambda!128709 lt!1471725) (= (list!16371 (dynLambda!19092 (toChars!9811 (transformation!7300 r!4008)) (dynLambda!19093 (toValue!9952 (transformation!7300 r!4008)) lt!1471725))) (list!16371 lt!1471725)))))

(declare-fun b_lambda!121103 () Bool)

(assert (=> (not b_lambda!121103) (not bs!594849)))

(assert (=> bs!594849 t!341092))

(declare-fun b_and!319425 () Bool)

(assert (= b_and!319369 (and (=> t!341092 result!300804) b_and!319425)))

(assert (=> bs!594849 t!341150))

(declare-fun b_and!319427 () Bool)

(assert (= b_and!319423 (and (=> t!341150 result!300870) b_and!319427)))

(assert (=> bs!594849 t!341090))

(declare-fun b_and!319429 () Bool)

(assert (= b_and!319367 (and (=> t!341090 result!300802) b_and!319429)))

(assert (=> bs!594849 t!341088))

(declare-fun b_and!319431 () Bool)

(assert (= b_and!319365 (and (=> t!341088 result!300798) b_and!319431)))

(assert (=> bs!594849 t!341102))

(declare-fun b_and!319433 () Bool)

(assert (= b_and!319371 (and (=> t!341102 result!300818) b_and!319433)))

(declare-fun b_lambda!121105 () Bool)

(assert (=> (not b_lambda!121105) (not bs!594849)))

(assert (=> bs!594849 t!341146))

(declare-fun b_and!319435 () Bool)

(assert (= b_and!319421 (and (=> t!341146 result!300866) b_and!319435)))

(assert (=> bs!594849 t!341100))

(declare-fun b_and!319437 () Bool)

(assert (= b_and!319419 (and (=> t!341100 result!300816) b_and!319437)))

(assert (=> bs!594849 t!341098))

(declare-fun b_and!319439 () Bool)

(assert (= b_and!319417 (and (=> t!341098 result!300812) b_and!319439)))

(assert (=> bs!594849 t!341096))

(declare-fun b_and!319441 () Bool)

(assert (= b_and!319415 (and (=> t!341096 result!300810) b_and!319441)))

(assert (=> bs!594849 t!341094))

(declare-fun b_and!319443 () Bool)

(assert (= b_and!319413 (and (=> t!341094 result!300806) b_and!319443)))

(assert (=> bs!594849 m!4724077))

(assert (=> bs!594849 m!4724079))

(assert (=> bs!594849 m!4724085))

(assert (=> bs!594849 m!4724081))

(assert (=> bs!594849 m!4724077))

(assert (=> bs!594849 m!4724081))

(assert (=> d!1222687 d!1222819))

(check-sat (not b!4125997) (not b!4125991) (not b!4126090) (not b!4125741) (not bm!290113) b_and!319431 (not b_next!117541) (not d!1222733) (not b!4126026) (not b!4126060) (not b!4126024) (not b!4126061) (not b!4126056) (not b!4126050) (not b!4126101) (not b!4126042) (not bm!290089) (not b!4126082) (not b!4125627) (not d!1222667) (not b!4125739) (not bm!290090) (not b_next!117529) (not b!4125625) (not d!1222631) (not b!4126045) (not b!4125542) (not b!4126085) (not d!1222603) (not d!1222659) (not b!4126074) (not b!4125514) (not b!4125992) (not b!4125481) (not b!4125744) (not b!4125743) (not bs!594849) b_and!319441 (not b_next!117539) (not b!4125619) (not b!4126068) (not b!4125523) (not b!4125816) (not d!1222613) (not b!4125994) (not d!1222749) (not d!1222711) (not b_lambda!121081) (not b_next!117525) (not b!4125989) (not b!4126062) (not b!4125629) (not b!4126070) (not b!4126039) (not tb!247559) (not b!4125740) b_and!319429 (not b_next!117547) (not b!4125999) (not b!4125539) (not b!4125637) (not b_lambda!121099) (not b!4126020) (not b!4126035) (not b!4125516) (not b!4125565) (not b!4126077) (not b!4126032) (not b!4125634) (not b!4126078) (not b!4126099) (not bm!290111) (not b!4125524) (not b!4126033) (not b_next!117549) (not d!1222809) (not b!4125986) (not b!4126080) (not b!4126055) (not b!4126038) (not b!4126089) (not b!4126043) (not d!1222753) (not d!1222743) (not tb!247591) (not d!1222689) (not d!1222657) (not b!4126088) (not b!4126084) (not d!1222687) (not b!4125817) (not b!4126069) (not d!1222805) b_and!319427 (not d!1222717) (not b!4125694) (not b!4126005) (not b!4126025) (not b!4126100) (not b!4125562) (not b!4126034) (not bm!290114) (not b!4126053) b_and!319439 (not b!4125822) (not d!1222715) (not b!4125712) (not b!4125823) (not b!4126066) (not b!4126054) (not b!4126076) (not b!4125988) (not b!4126028) (not b!4125566) (not b_lambda!121077) (not b!4125778) (not d!1222759) (not b!4125742) (not b!4126029) (not b!4126037) (not b!4125826) (not b!4125995) (not b_next!117531) b_and!319437 (not d!1222739) (not b!4126065) (not d!1222801) (not b!4125737) (not d!1222685) (not b!4126072) (not d!1222621) (not b!4125747) (not b!4126057) (not b_lambda!121105) (not b!4126086) (not d!1222719) (not b!4125545) (not b!4126102) (not b!4126007) (not b!4126013) (not b!4126049) (not b_next!117533) (not d!1222729) (not bm!290116) (not b_lambda!121079) b_and!319433 (not d!1222623) (not b!4125486) (not b_lambda!121101) (not d!1222745) (not b!4125487) (not b!4125987) (not b_next!117523) (not b!4125745) (not d!1222721) (not d!1222707) (not b!4125612) (not b!4125581) (not b_lambda!121083) (not b!4126081) (not d!1222665) (not bm!290088) (not d!1222681) (not b!4126004) tp_is_empty!21333 (not d!1222691) (not d!1222619) (not b!4125820) b_and!319435 (not d!1222817) (not d!1222803) (not bm!290138) (not b!4126030) (not b!4125577) (not bm!290108) (not b!4125618) (not b!4125635) (not b!4125777) (not b!4126051) (not bm!290136) (not b!4125538) (not b!4126073) (not b!4125519) (not b_next!117527) (not d!1222639) (not b!4126022) (not b_lambda!121103) (not d!1222811) b_and!319425 (not bm!290139) (not d!1222641) (not b!4125990) (not b!4125402) (not b!4125512) (not b!4125620) (not b!4126064) (not b!4126046) (not b!4126047) (not b!4126041) b_and!319443 (not b!4125522))
(check-sat (not b_next!117529) (not b_next!117525) (not b_next!117549) b_and!319427 b_and!319439 (not b_next!117533) b_and!319435 (not b_next!117527) b_and!319425 b_and!319443 b_and!319431 (not b_next!117541) b_and!319441 (not b_next!117539) b_and!319429 (not b_next!117547) (not b_next!117531) b_and!319437 b_and!319433 (not b_next!117523))
