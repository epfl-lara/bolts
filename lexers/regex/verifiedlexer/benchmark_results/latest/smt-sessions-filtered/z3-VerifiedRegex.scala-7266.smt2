; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!387708 () Bool)

(assert start!387708)

(declare-fun b!4094722 () Bool)

(declare-fun b_free!114489 () Bool)

(declare-fun b_next!115193 () Bool)

(assert (=> b!4094722 (= b_free!114489 (not b_next!115193))))

(declare-fun tp!1239438 () Bool)

(declare-fun b_and!315827 () Bool)

(assert (=> b!4094722 (= tp!1239438 b_and!315827)))

(declare-fun b_free!114491 () Bool)

(declare-fun b_next!115195 () Bool)

(assert (=> b!4094722 (= b_free!114491 (not b_next!115195))))

(declare-fun tp!1239440 () Bool)

(declare-fun b_and!315829 () Bool)

(assert (=> b!4094722 (= tp!1239440 b_and!315829)))

(declare-fun b!4094714 () Bool)

(declare-fun b_free!114493 () Bool)

(declare-fun b_next!115197 () Bool)

(assert (=> b!4094714 (= b_free!114493 (not b_next!115197))))

(declare-fun tp!1239436 () Bool)

(declare-fun b_and!315831 () Bool)

(assert (=> b!4094714 (= tp!1239436 b_and!315831)))

(declare-fun b_free!114495 () Bool)

(declare-fun b_next!115199 () Bool)

(assert (=> b!4094714 (= b_free!114495 (not b_next!115199))))

(declare-fun tp!1239441 () Bool)

(declare-fun b_and!315833 () Bool)

(assert (=> b!4094714 (= tp!1239441 b_and!315833)))

(declare-fun b!4094711 () Bool)

(declare-fun e!2541080 () Bool)

(declare-fun tp_is_empty!21021 () Bool)

(declare-fun tp!1239439 () Bool)

(assert (=> b!4094711 (= e!2541080 (and tp_is_empty!21021 tp!1239439))))

(declare-fun b!4094712 () Bool)

(declare-fun res!1673653 () Bool)

(declare-fun e!2541079 () Bool)

(assert (=> b!4094712 (=> (not res!1673653) (not e!2541079))))

(declare-datatypes ((C!24204 0))(
  ( (C!24205 (val!14212 Int)) )
))
(declare-datatypes ((List!44025 0))(
  ( (Nil!43901) (Cons!43901 (h!49321 C!24204) (t!339168 List!44025)) )
))
(declare-fun suffix!1518 () List!44025)

(declare-fun p!2988 () List!44025)

(declare-fun input!3411 () List!44025)

(declare-fun ++!11510 (List!44025 List!44025) List!44025)

(assert (=> b!4094712 (= res!1673653 (= input!3411 (++!11510 p!2988 suffix!1518)))))

(declare-fun b!4094713 () Bool)

(declare-fun e!2541081 () Bool)

(declare-fun tp!1239437 () Bool)

(assert (=> b!4094713 (= e!2541081 (and tp_is_empty!21021 tp!1239437))))

(declare-fun e!2541077 () Bool)

(assert (=> b!4094714 (= e!2541077 (and tp!1239436 tp!1239441))))

(declare-fun b!4094715 () Bool)

(declare-fun res!1673646 () Bool)

(declare-fun e!2541076 () Bool)

(assert (=> b!4094715 (=> res!1673646 e!2541076)))

(declare-datatypes ((List!44026 0))(
  ( (Nil!43902) (Cons!43902 (h!49322 (_ BitVec 16)) (t!339169 List!44026)) )
))
(declare-datatypes ((TokenValue!7334 0))(
  ( (FloatLiteralValue!14668 (text!51783 List!44026)) (TokenValueExt!7333 (__x!26885 Int)) (Broken!36670 (value!223090 List!44026)) (Object!7457) (End!7334) (Def!7334) (Underscore!7334) (Match!7334) (Else!7334) (Error!7334) (Case!7334) (If!7334) (Extends!7334) (Abstract!7334) (Class!7334) (Val!7334) (DelimiterValue!14668 (del!7394 List!44026)) (KeywordValue!7340 (value!223091 List!44026)) (CommentValue!14668 (value!223092 List!44026)) (WhitespaceValue!14668 (value!223093 List!44026)) (IndentationValue!7334 (value!223094 List!44026)) (String!50419) (Int32!7334) (Broken!36671 (value!223095 List!44026)) (Boolean!7335) (Unit!63438) (OperatorValue!7337 (op!7394 List!44026)) (IdentifierValue!14668 (value!223096 List!44026)) (IdentifierValue!14669 (value!223097 List!44026)) (WhitespaceValue!14669 (value!223098 List!44026)) (True!14668) (False!14668) (Broken!36672 (value!223099 List!44026)) (Broken!36673 (value!223100 List!44026)) (True!14669) (RightBrace!7334) (RightBracket!7334) (Colon!7334) (Null!7334) (Comma!7334) (LeftBracket!7334) (False!14669) (LeftBrace!7334) (ImaginaryLiteralValue!7334 (text!51784 List!44026)) (StringLiteralValue!22002 (value!223101 List!44026)) (EOFValue!7334 (value!223102 List!44026)) (IdentValue!7334 (value!223103 List!44026)) (DelimiterValue!14669 (value!223104 List!44026)) (DedentValue!7334 (value!223105 List!44026)) (NewLineValue!7334 (value!223106 List!44026)) (IntegerValue!22002 (value!223107 (_ BitVec 32)) (text!51785 List!44026)) (IntegerValue!22003 (value!223108 Int) (text!51786 List!44026)) (Times!7334) (Or!7334) (Equal!7334) (Minus!7334) (Broken!36674 (value!223109 List!44026)) (And!7334) (Div!7334) (LessEqual!7334) (Mod!7334) (Concat!19343) (Not!7334) (Plus!7334) (SpaceValue!7334 (value!223110 List!44026)) (IntegerValue!22004 (value!223111 Int) (text!51787 List!44026)) (StringLiteralValue!22003 (text!51788 List!44026)) (FloatLiteralValue!14669 (text!51789 List!44026)) (BytesLiteralValue!7334 (value!223112 List!44026)) (CommentValue!14669 (value!223113 List!44026)) (StringLiteralValue!22004 (value!223114 List!44026)) (ErrorTokenValue!7334 (msg!7395 List!44026)) )
))
(declare-datatypes ((Regex!12009 0))(
  ( (ElementMatch!12009 (c!705712 C!24204)) (Concat!19344 (regOne!24530 Regex!12009) (regTwo!24530 Regex!12009)) (EmptyExpr!12009) (Star!12009 (reg!12338 Regex!12009)) (EmptyLang!12009) (Union!12009 (regOne!24531 Regex!12009) (regTwo!24531 Regex!12009)) )
))
(declare-datatypes ((String!50420 0))(
  ( (String!50421 (value!223115 String)) )
))
(declare-datatypes ((IArray!26635 0))(
  ( (IArray!26636 (innerList!13375 List!44025)) )
))
(declare-datatypes ((Conc!13315 0))(
  ( (Node!13315 (left!33001 Conc!13315) (right!33331 Conc!13315) (csize!26860 Int) (cheight!13526 Int)) (Leaf!20582 (xs!16621 IArray!26635) (csize!26861 Int)) (Empty!13315) )
))
(declare-datatypes ((BalanceConc!26224 0))(
  ( (BalanceConc!26225 (c!705713 Conc!13315)) )
))
(declare-datatypes ((TokenValueInjection!14096 0))(
  ( (TokenValueInjection!14097 (toValue!9704 Int) (toChars!9563 Int)) )
))
(declare-datatypes ((Rule!14008 0))(
  ( (Rule!14009 (regex!7104 Regex!12009) (tag!7964 String!50420) (isSeparator!7104 Bool) (transformation!7104 TokenValueInjection!14096)) )
))
(declare-datatypes ((List!44027 0))(
  ( (Nil!43903) (Cons!43903 (h!49323 Rule!14008) (t!339170 List!44027)) )
))
(declare-fun rules!3870 () List!44027)

(declare-fun r!4213 () Rule!14008)

(get-info :version)

(assert (=> b!4094715 (= res!1673646 (or (and ((_ is Cons!43903) rules!3870) (= (h!49323 rules!3870) r!4213)) (not ((_ is Cons!43903) rules!3870)) (= (h!49323 rules!3870) r!4213)))))

(declare-fun b!4094716 () Bool)

(declare-fun res!1673645 () Bool)

(assert (=> b!4094716 (=> (not res!1673645) (not e!2541079))))

(declare-fun isEmpty!26265 (List!44025) Bool)

(assert (=> b!4094716 (= res!1673645 (not (isEmpty!26265 p!2988)))))

(declare-fun b!4094717 () Bool)

(declare-fun e!2541083 () Bool)

(declare-fun e!2541073 () Bool)

(assert (=> b!4094717 (= e!2541083 e!2541073)))

(declare-fun res!1673644 () Bool)

(assert (=> b!4094717 (=> res!1673644 e!2541073)))

(declare-datatypes ((Token!13334 0))(
  ( (Token!13335 (value!223116 TokenValue!7334) (rule!10252 Rule!14008) (size!32798 Int) (originalCharacters!7698 List!44025)) )
))
(declare-datatypes ((tuple2!42832 0))(
  ( (tuple2!42833 (_1!24550 Token!13334) (_2!24550 List!44025)) )
))
(declare-fun lt!1464654 () tuple2!42832)

(declare-datatypes ((Option!9510 0))(
  ( (None!9509) (Some!9509 (v!40003 tuple2!42832)) )
))
(declare-fun lt!1464653 () Option!9510)

(declare-fun lt!1464655 () Option!9510)

(assert (=> b!4094717 (= res!1673644 (or (not (= (rule!10252 (_1!24550 lt!1464654)) (h!49323 rules!3870))) (= (rule!10252 (_1!24550 lt!1464654)) r!4213) (= lt!1464655 lt!1464653)))))

(declare-fun get!14400 (Option!9510) tuple2!42832)

(assert (=> b!4094717 (= lt!1464654 (get!14400 lt!1464655))))

(declare-fun b!4094718 () Bool)

(declare-fun e!2541086 () Bool)

(assert (=> b!4094718 (= e!2541086 (not e!2541076))))

(declare-fun res!1673651 () Bool)

(assert (=> b!4094718 (=> res!1673651 e!2541076)))

(declare-fun matchR!5950 (Regex!12009 List!44025) Bool)

(assert (=> b!4094718 (= res!1673651 (not (matchR!5950 (regex!7104 r!4213) p!2988)))))

(declare-datatypes ((LexerInterface!6693 0))(
  ( (LexerInterfaceExt!6690 (__x!26886 Int)) (Lexer!6691) )
))
(declare-fun thiss!26199 () LexerInterface!6693)

(declare-fun ruleValid!3024 (LexerInterface!6693 Rule!14008) Bool)

(assert (=> b!4094718 (ruleValid!3024 thiss!26199 r!4213)))

(declare-datatypes ((Unit!63439 0))(
  ( (Unit!63440) )
))
(declare-fun lt!1464656 () Unit!63439)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2090 (LexerInterface!6693 Rule!14008 List!44027) Unit!63439)

(assert (=> b!4094718 (= lt!1464656 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2090 thiss!26199 r!4213 rules!3870))))

(declare-fun b!4094719 () Bool)

(declare-fun e!2541075 () Bool)

(declare-fun e!2541072 () Bool)

(declare-fun tp!1239435 () Bool)

(assert (=> b!4094719 (= e!2541075 (and e!2541072 tp!1239435))))

(declare-fun e!2541078 () Bool)

(declare-fun tp!1239443 () Bool)

(declare-fun b!4094720 () Bool)

(declare-fun e!2541085 () Bool)

(declare-fun inv!58627 (String!50420) Bool)

(declare-fun inv!58629 (TokenValueInjection!14096) Bool)

(assert (=> b!4094720 (= e!2541085 (and tp!1239443 (inv!58627 (tag!7964 r!4213)) (inv!58629 (transformation!7104 r!4213)) e!2541078))))

(declare-fun b!4094721 () Bool)

(declare-fun res!1673648 () Bool)

(assert (=> b!4094721 (=> (not res!1673648) (not e!2541079))))

(declare-fun rulesInvariant!6036 (LexerInterface!6693 List!44027) Bool)

(assert (=> b!4094721 (= res!1673648 (rulesInvariant!6036 thiss!26199 rules!3870))))

(assert (=> b!4094722 (= e!2541078 (and tp!1239438 tp!1239440))))

(declare-fun b!4094723 () Bool)

(declare-fun e!2541074 () Bool)

(declare-fun tp!1239442 () Bool)

(assert (=> b!4094723 (= e!2541074 (and tp_is_empty!21021 tp!1239442))))

(declare-fun b!4094724 () Bool)

(assert (=> b!4094724 (= e!2541079 e!2541086)))

(declare-fun res!1673654 () Bool)

(assert (=> b!4094724 (=> (not res!1673654) (not e!2541086))))

(declare-fun maxPrefix!3983 (LexerInterface!6693 List!44027 List!44025) Option!9510)

(assert (=> b!4094724 (= res!1673654 (= (maxPrefix!3983 thiss!26199 rules!3870 input!3411) lt!1464653))))

(declare-fun lt!1464657 () BalanceConc!26224)

(declare-fun apply!10287 (TokenValueInjection!14096 BalanceConc!26224) TokenValue!7334)

(declare-fun size!32799 (List!44025) Int)

(assert (=> b!4094724 (= lt!1464653 (Some!9509 (tuple2!42833 (Token!13335 (apply!10287 (transformation!7104 r!4213) lt!1464657) r!4213 (size!32799 p!2988) p!2988) suffix!1518)))))

(declare-fun lt!1464652 () Unit!63439)

(declare-fun lemmaSemiInverse!2071 (TokenValueInjection!14096 BalanceConc!26224) Unit!63439)

(assert (=> b!4094724 (= lt!1464652 (lemmaSemiInverse!2071 (transformation!7104 r!4213) lt!1464657))))

(declare-fun seqFromList!5321 (List!44025) BalanceConc!26224)

(assert (=> b!4094724 (= lt!1464657 (seqFromList!5321 p!2988))))

(declare-fun b!4094725 () Bool)

(assert (=> b!4094725 (= e!2541076 e!2541083)))

(declare-fun res!1673652 () Bool)

(assert (=> b!4094725 (=> res!1673652 e!2541083)))

(declare-fun isEmpty!26266 (Option!9510) Bool)

(assert (=> b!4094725 (= res!1673652 (isEmpty!26266 lt!1464655))))

(declare-fun maxPrefixOneRule!2965 (LexerInterface!6693 Rule!14008 List!44025) Option!9510)

(assert (=> b!4094725 (= lt!1464655 (maxPrefixOneRule!2965 thiss!26199 (h!49323 rules!3870) input!3411))))

(assert (=> b!4094725 (rulesInvariant!6036 thiss!26199 (t!339170 rules!3870))))

(declare-fun lt!1464651 () Unit!63439)

(declare-fun lemmaInvariantOnRulesThenOnTail!806 (LexerInterface!6693 Rule!14008 List!44027) Unit!63439)

(assert (=> b!4094725 (= lt!1464651 (lemmaInvariantOnRulesThenOnTail!806 thiss!26199 (h!49323 rules!3870) (t!339170 rules!3870)))))

(declare-fun b!4094726 () Bool)

(declare-fun tp!1239444 () Bool)

(assert (=> b!4094726 (= e!2541072 (and tp!1239444 (inv!58627 (tag!7964 (h!49323 rules!3870))) (inv!58629 (transformation!7104 (h!49323 rules!3870))) e!2541077))))

(declare-fun b!4094727 () Bool)

(declare-fun res!1673649 () Bool)

(assert (=> b!4094727 (=> res!1673649 e!2541073)))

(assert (=> b!4094727 (= res!1673649 (not (= (maxPrefix!3983 thiss!26199 (t!339170 rules!3870) input!3411) lt!1464653)))))

(declare-fun res!1673647 () Bool)

(assert (=> start!387708 (=> (not res!1673647) (not e!2541079))))

(assert (=> start!387708 (= res!1673647 ((_ is Lexer!6691) thiss!26199))))

(assert (=> start!387708 e!2541079))

(assert (=> start!387708 true))

(assert (=> start!387708 e!2541074))

(assert (=> start!387708 e!2541075))

(assert (=> start!387708 e!2541081))

(assert (=> start!387708 e!2541080))

(assert (=> start!387708 e!2541085))

(declare-fun b!4094728 () Bool)

(declare-fun isEmpty!26267 (List!44027) Bool)

(assert (=> b!4094728 (= e!2541073 (not (isEmpty!26267 (t!339170 rules!3870))))))

(declare-fun b!4094729 () Bool)

(declare-fun res!1673655 () Bool)

(assert (=> b!4094729 (=> (not res!1673655) (not e!2541079))))

(assert (=> b!4094729 (= res!1673655 (not (isEmpty!26267 rules!3870)))))

(declare-fun b!4094730 () Bool)

(declare-fun res!1673650 () Bool)

(assert (=> b!4094730 (=> (not res!1673650) (not e!2541079))))

(declare-fun contains!8789 (List!44027 Rule!14008) Bool)

(assert (=> b!4094730 (= res!1673650 (contains!8789 rules!3870 r!4213))))

(assert (= (and start!387708 res!1673647) b!4094729))

(assert (= (and b!4094729 res!1673655) b!4094721))

(assert (= (and b!4094721 res!1673648) b!4094730))

(assert (= (and b!4094730 res!1673650) b!4094712))

(assert (= (and b!4094712 res!1673653) b!4094716))

(assert (= (and b!4094716 res!1673645) b!4094724))

(assert (= (and b!4094724 res!1673654) b!4094718))

(assert (= (and b!4094718 (not res!1673651)) b!4094715))

(assert (= (and b!4094715 (not res!1673646)) b!4094725))

(assert (= (and b!4094725 (not res!1673652)) b!4094717))

(assert (= (and b!4094717 (not res!1673644)) b!4094727))

(assert (= (and b!4094727 (not res!1673649)) b!4094728))

(assert (= (and start!387708 ((_ is Cons!43901) suffix!1518)) b!4094723))

(assert (= b!4094726 b!4094714))

(assert (= b!4094719 b!4094726))

(assert (= (and start!387708 ((_ is Cons!43903) rules!3870)) b!4094719))

(assert (= (and start!387708 ((_ is Cons!43901) p!2988)) b!4094713))

(assert (= (and start!387708 ((_ is Cons!43901) input!3411)) b!4094711))

(assert (= b!4094720 b!4094722))

(assert (= start!387708 b!4094720))

(declare-fun m!4701689 () Bool)

(assert (=> b!4094712 m!4701689))

(declare-fun m!4701691 () Bool)

(assert (=> b!4094730 m!4701691))

(declare-fun m!4701693 () Bool)

(assert (=> b!4094720 m!4701693))

(declare-fun m!4701695 () Bool)

(assert (=> b!4094720 m!4701695))

(declare-fun m!4701697 () Bool)

(assert (=> b!4094728 m!4701697))

(declare-fun m!4701699 () Bool)

(assert (=> b!4094718 m!4701699))

(declare-fun m!4701701 () Bool)

(assert (=> b!4094718 m!4701701))

(declare-fun m!4701703 () Bool)

(assert (=> b!4094718 m!4701703))

(declare-fun m!4701705 () Bool)

(assert (=> b!4094725 m!4701705))

(declare-fun m!4701707 () Bool)

(assert (=> b!4094725 m!4701707))

(declare-fun m!4701709 () Bool)

(assert (=> b!4094725 m!4701709))

(declare-fun m!4701711 () Bool)

(assert (=> b!4094725 m!4701711))

(declare-fun m!4701713 () Bool)

(assert (=> b!4094721 m!4701713))

(declare-fun m!4701715 () Bool)

(assert (=> b!4094727 m!4701715))

(declare-fun m!4701717 () Bool)

(assert (=> b!4094724 m!4701717))

(declare-fun m!4701719 () Bool)

(assert (=> b!4094724 m!4701719))

(declare-fun m!4701721 () Bool)

(assert (=> b!4094724 m!4701721))

(declare-fun m!4701723 () Bool)

(assert (=> b!4094724 m!4701723))

(declare-fun m!4701725 () Bool)

(assert (=> b!4094724 m!4701725))

(declare-fun m!4701727 () Bool)

(assert (=> b!4094716 m!4701727))

(declare-fun m!4701729 () Bool)

(assert (=> b!4094729 m!4701729))

(declare-fun m!4701731 () Bool)

(assert (=> b!4094717 m!4701731))

(declare-fun m!4701733 () Bool)

(assert (=> b!4094726 m!4701733))

(declare-fun m!4701735 () Bool)

(assert (=> b!4094726 m!4701735))

(check-sat (not b_next!115195) (not b!4094717) (not b_next!115197) (not b!4094723) (not b!4094730) (not b!4094725) (not b!4094713) (not b!4094727) (not b!4094729) (not b!4094724) b_and!315829 (not b!4094716) (not b!4094712) (not b!4094721) (not b_next!115193) (not b_next!115199) (not b!4094719) (not b!4094720) b_and!315831 (not b!4094718) (not b!4094728) b_and!315827 (not b!4094726) (not b!4094711) tp_is_empty!21021 b_and!315833)
(check-sat (not b_next!115195) b_and!315829 (not b_next!115197) b_and!315831 b_and!315827 b_and!315833 (not b_next!115193) (not b_next!115199))
(get-model)

(declare-fun b!4094822 () Bool)

(declare-fun res!1673725 () Bool)

(declare-fun e!2541136 () Bool)

(assert (=> b!4094822 (=> res!1673725 e!2541136)))

(assert (=> b!4094822 (= res!1673725 (not ((_ is ElementMatch!12009) (regex!7104 r!4213))))))

(declare-fun e!2541138 () Bool)

(assert (=> b!4094822 (= e!2541138 e!2541136)))

(declare-fun b!4094823 () Bool)

(declare-fun e!2541134 () Bool)

(assert (=> b!4094823 (= e!2541136 e!2541134)))

(declare-fun res!1673723 () Bool)

(assert (=> b!4094823 (=> (not res!1673723) (not e!2541134))))

(declare-fun lt!1464669 () Bool)

(assert (=> b!4094823 (= res!1673723 (not lt!1464669))))

(declare-fun b!4094824 () Bool)

(declare-fun e!2541137 () Bool)

(declare-fun head!8655 (List!44025) C!24204)

(assert (=> b!4094824 (= e!2541137 (not (= (head!8655 p!2988) (c!705712 (regex!7104 r!4213)))))))

(declare-fun bm!289455 () Bool)

(declare-fun call!289460 () Bool)

(assert (=> bm!289455 (= call!289460 (isEmpty!26265 p!2988))))

(declare-fun b!4094825 () Bool)

(declare-fun e!2541140 () Bool)

(declare-fun nullable!4244 (Regex!12009) Bool)

(assert (=> b!4094825 (= e!2541140 (nullable!4244 (regex!7104 r!4213)))))

(declare-fun b!4094826 () Bool)

(declare-fun res!1673719 () Bool)

(assert (=> b!4094826 (=> res!1673719 e!2541137)))

(declare-fun tail!6389 (List!44025) List!44025)

(assert (=> b!4094826 (= res!1673719 (not (isEmpty!26265 (tail!6389 p!2988))))))

(declare-fun b!4094827 () Bool)

(declare-fun res!1673721 () Bool)

(declare-fun e!2541135 () Bool)

(assert (=> b!4094827 (=> (not res!1673721) (not e!2541135))))

(assert (=> b!4094827 (= res!1673721 (isEmpty!26265 (tail!6389 p!2988)))))

(declare-fun b!4094828 () Bool)

(declare-fun e!2541139 () Bool)

(assert (=> b!4094828 (= e!2541139 (= lt!1464669 call!289460))))

(declare-fun b!4094829 () Bool)

(assert (=> b!4094829 (= e!2541134 e!2541137)))

(declare-fun res!1673724 () Bool)

(assert (=> b!4094829 (=> res!1673724 e!2541137)))

(assert (=> b!4094829 (= res!1673724 call!289460)))

(declare-fun b!4094830 () Bool)

(declare-fun derivativeStep!3645 (Regex!12009 C!24204) Regex!12009)

(assert (=> b!4094830 (= e!2541140 (matchR!5950 (derivativeStep!3645 (regex!7104 r!4213) (head!8655 p!2988)) (tail!6389 p!2988)))))

(declare-fun b!4094831 () Bool)

(assert (=> b!4094831 (= e!2541139 e!2541138)))

(declare-fun c!705732 () Bool)

(assert (=> b!4094831 (= c!705732 ((_ is EmptyLang!12009) (regex!7104 r!4213)))))

(declare-fun d!1215871 () Bool)

(assert (=> d!1215871 e!2541139))

(declare-fun c!705734 () Bool)

(assert (=> d!1215871 (= c!705734 ((_ is EmptyExpr!12009) (regex!7104 r!4213)))))

(assert (=> d!1215871 (= lt!1464669 e!2541140)))

(declare-fun c!705733 () Bool)

(assert (=> d!1215871 (= c!705733 (isEmpty!26265 p!2988))))

(declare-fun validRegex!5444 (Regex!12009) Bool)

(assert (=> d!1215871 (validRegex!5444 (regex!7104 r!4213))))

(assert (=> d!1215871 (= (matchR!5950 (regex!7104 r!4213) p!2988) lt!1464669)))

(declare-fun b!4094832 () Bool)

(assert (=> b!4094832 (= e!2541138 (not lt!1464669))))

(declare-fun b!4094833 () Bool)

(declare-fun res!1673722 () Bool)

(assert (=> b!4094833 (=> res!1673722 e!2541136)))

(assert (=> b!4094833 (= res!1673722 e!2541135)))

(declare-fun res!1673720 () Bool)

(assert (=> b!4094833 (=> (not res!1673720) (not e!2541135))))

(assert (=> b!4094833 (= res!1673720 lt!1464669)))

(declare-fun b!4094834 () Bool)

(assert (=> b!4094834 (= e!2541135 (= (head!8655 p!2988) (c!705712 (regex!7104 r!4213))))))

(declare-fun b!4094835 () Bool)

(declare-fun res!1673718 () Bool)

(assert (=> b!4094835 (=> (not res!1673718) (not e!2541135))))

(assert (=> b!4094835 (= res!1673718 (not call!289460))))

(assert (= (and d!1215871 c!705733) b!4094825))

(assert (= (and d!1215871 (not c!705733)) b!4094830))

(assert (= (and d!1215871 c!705734) b!4094828))

(assert (= (and d!1215871 (not c!705734)) b!4094831))

(assert (= (and b!4094831 c!705732) b!4094832))

(assert (= (and b!4094831 (not c!705732)) b!4094822))

(assert (= (and b!4094822 (not res!1673725)) b!4094833))

(assert (= (and b!4094833 res!1673720) b!4094835))

(assert (= (and b!4094835 res!1673718) b!4094827))

(assert (= (and b!4094827 res!1673721) b!4094834))

(assert (= (and b!4094833 (not res!1673722)) b!4094823))

(assert (= (and b!4094823 res!1673723) b!4094829))

(assert (= (and b!4094829 (not res!1673724)) b!4094826))

(assert (= (and b!4094826 (not res!1673719)) b!4094824))

(assert (= (or b!4094828 b!4094829 b!4094835) bm!289455))

(declare-fun m!4701769 () Bool)

(assert (=> b!4094830 m!4701769))

(assert (=> b!4094830 m!4701769))

(declare-fun m!4701771 () Bool)

(assert (=> b!4094830 m!4701771))

(declare-fun m!4701773 () Bool)

(assert (=> b!4094830 m!4701773))

(assert (=> b!4094830 m!4701771))

(assert (=> b!4094830 m!4701773))

(declare-fun m!4701775 () Bool)

(assert (=> b!4094830 m!4701775))

(declare-fun m!4701777 () Bool)

(assert (=> b!4094825 m!4701777))

(assert (=> b!4094834 m!4701769))

(assert (=> d!1215871 m!4701727))

(declare-fun m!4701779 () Bool)

(assert (=> d!1215871 m!4701779))

(assert (=> b!4094824 m!4701769))

(assert (=> b!4094826 m!4701773))

(assert (=> b!4094826 m!4701773))

(declare-fun m!4701781 () Bool)

(assert (=> b!4094826 m!4701781))

(assert (=> b!4094827 m!4701773))

(assert (=> b!4094827 m!4701773))

(assert (=> b!4094827 m!4701781))

(assert (=> bm!289455 m!4701727))

(assert (=> b!4094718 d!1215871))

(declare-fun d!1215885 () Bool)

(declare-fun res!1673730 () Bool)

(declare-fun e!2541143 () Bool)

(assert (=> d!1215885 (=> (not res!1673730) (not e!2541143))))

(assert (=> d!1215885 (= res!1673730 (validRegex!5444 (regex!7104 r!4213)))))

(assert (=> d!1215885 (= (ruleValid!3024 thiss!26199 r!4213) e!2541143)))

(declare-fun b!4094840 () Bool)

(declare-fun res!1673731 () Bool)

(assert (=> b!4094840 (=> (not res!1673731) (not e!2541143))))

(assert (=> b!4094840 (= res!1673731 (not (nullable!4244 (regex!7104 r!4213))))))

(declare-fun b!4094841 () Bool)

(assert (=> b!4094841 (= e!2541143 (not (= (tag!7964 r!4213) (String!50421 ""))))))

(assert (= (and d!1215885 res!1673730) b!4094840))

(assert (= (and b!4094840 res!1673731) b!4094841))

(assert (=> d!1215885 m!4701779))

(assert (=> b!4094840 m!4701777))

(assert (=> b!4094718 d!1215885))

(declare-fun d!1215887 () Bool)

(assert (=> d!1215887 (ruleValid!3024 thiss!26199 r!4213)))

(declare-fun lt!1464672 () Unit!63439)

(declare-fun choose!25018 (LexerInterface!6693 Rule!14008 List!44027) Unit!63439)

(assert (=> d!1215887 (= lt!1464672 (choose!25018 thiss!26199 r!4213 rules!3870))))

(assert (=> d!1215887 (contains!8789 rules!3870 r!4213)))

(assert (=> d!1215887 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2090 thiss!26199 r!4213 rules!3870) lt!1464672)))

(declare-fun bs!593538 () Bool)

(assert (= bs!593538 d!1215887))

(assert (=> bs!593538 m!4701701))

(declare-fun m!4701783 () Bool)

(assert (=> bs!593538 m!4701783))

(assert (=> bs!593538 m!4701691))

(assert (=> b!4094718 d!1215887))

(declare-fun d!1215889 () Bool)

(assert (=> d!1215889 (= (isEmpty!26267 rules!3870) ((_ is Nil!43903) rules!3870))))

(assert (=> b!4094729 d!1215889))

(declare-fun d!1215891 () Bool)

(assert (=> d!1215891 (= (isEmpty!26267 (t!339170 rules!3870)) ((_ is Nil!43903) (t!339170 rules!3870)))))

(assert (=> b!4094728 d!1215891))

(declare-fun d!1215893 () Bool)

(assert (=> d!1215893 (= (get!14400 lt!1464655) (v!40003 lt!1464655))))

(assert (=> b!4094717 d!1215893))

(declare-fun d!1215895 () Bool)

(declare-fun res!1673755 () Bool)

(declare-fun e!2541155 () Bool)

(assert (=> d!1215895 (=> (not res!1673755) (not e!2541155))))

(declare-fun rulesValid!2790 (LexerInterface!6693 List!44027) Bool)

(assert (=> d!1215895 (= res!1673755 (rulesValid!2790 thiss!26199 rules!3870))))

(assert (=> d!1215895 (= (rulesInvariant!6036 thiss!26199 rules!3870) e!2541155)))

(declare-fun b!4094871 () Bool)

(declare-datatypes ((List!44029 0))(
  ( (Nil!43905) (Cons!43905 (h!49325 String!50420) (t!339196 List!44029)) )
))
(declare-fun noDuplicateTag!2791 (LexerInterface!6693 List!44027 List!44029) Bool)

(assert (=> b!4094871 (= e!2541155 (noDuplicateTag!2791 thiss!26199 rules!3870 Nil!43905))))

(assert (= (and d!1215895 res!1673755) b!4094871))

(declare-fun m!4701785 () Bool)

(assert (=> d!1215895 m!4701785))

(declare-fun m!4701787 () Bool)

(assert (=> b!4094871 m!4701787))

(assert (=> b!4094721 d!1215895))

(declare-fun d!1215897 () Bool)

(assert (=> d!1215897 (= (inv!58627 (tag!7964 r!4213)) (= (mod (str.len (value!223115 (tag!7964 r!4213))) 2) 0))))

(assert (=> b!4094720 d!1215897))

(declare-fun d!1215901 () Bool)

(declare-fun res!1673764 () Bool)

(declare-fun e!2541164 () Bool)

(assert (=> d!1215901 (=> (not res!1673764) (not e!2541164))))

(declare-fun semiInverseModEq!3056 (Int Int) Bool)

(assert (=> d!1215901 (= res!1673764 (semiInverseModEq!3056 (toChars!9563 (transformation!7104 r!4213)) (toValue!9704 (transformation!7104 r!4213))))))

(assert (=> d!1215901 (= (inv!58629 (transformation!7104 r!4213)) e!2541164)))

(declare-fun b!4094880 () Bool)

(declare-fun equivClasses!2955 (Int Int) Bool)

(assert (=> b!4094880 (= e!2541164 (equivClasses!2955 (toChars!9563 (transformation!7104 r!4213)) (toValue!9704 (transformation!7104 r!4213))))))

(assert (= (and d!1215901 res!1673764) b!4094880))

(declare-fun m!4701829 () Bool)

(assert (=> d!1215901 m!4701829))

(declare-fun m!4701831 () Bool)

(assert (=> b!4094880 m!4701831))

(assert (=> b!4094720 d!1215901))

(declare-fun d!1215907 () Bool)

(declare-fun lt!1464693 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6774 (List!44027) (InoxSet Rule!14008))

(assert (=> d!1215907 (= lt!1464693 (select (content!6774 rules!3870) r!4213))))

(declare-fun e!2541169 () Bool)

(assert (=> d!1215907 (= lt!1464693 e!2541169)))

(declare-fun res!1673770 () Bool)

(assert (=> d!1215907 (=> (not res!1673770) (not e!2541169))))

(assert (=> d!1215907 (= res!1673770 ((_ is Cons!43903) rules!3870))))

(assert (=> d!1215907 (= (contains!8789 rules!3870 r!4213) lt!1464693)))

(declare-fun b!4094885 () Bool)

(declare-fun e!2541170 () Bool)

(assert (=> b!4094885 (= e!2541169 e!2541170)))

(declare-fun res!1673769 () Bool)

(assert (=> b!4094885 (=> res!1673769 e!2541170)))

(assert (=> b!4094885 (= res!1673769 (= (h!49323 rules!3870) r!4213))))

(declare-fun b!4094886 () Bool)

(assert (=> b!4094886 (= e!2541170 (contains!8789 (t!339170 rules!3870) r!4213))))

(assert (= (and d!1215907 res!1673770) b!4094885))

(assert (= (and b!4094885 (not res!1673769)) b!4094886))

(declare-fun m!4701833 () Bool)

(assert (=> d!1215907 m!4701833))

(declare-fun m!4701835 () Bool)

(assert (=> d!1215907 m!4701835))

(declare-fun m!4701837 () Bool)

(assert (=> b!4094886 m!4701837))

(assert (=> b!4094730 d!1215907))

(declare-fun b!4094954 () Bool)

(declare-fun e!2541203 () Option!9510)

(declare-fun call!289467 () Option!9510)

(assert (=> b!4094954 (= e!2541203 call!289467)))

(declare-fun b!4094955 () Bool)

(declare-fun res!1673818 () Bool)

(declare-fun e!2541204 () Bool)

(assert (=> b!4094955 (=> (not res!1673818) (not e!2541204))))

(declare-fun lt!1464736 () Option!9510)

(declare-fun list!16296 (BalanceConc!26224) List!44025)

(declare-fun charsOf!4862 (Token!13334) BalanceConc!26224)

(assert (=> b!4094955 (= res!1673818 (= (++!11510 (list!16296 (charsOf!4862 (_1!24550 (get!14400 lt!1464736)))) (_2!24550 (get!14400 lt!1464736))) input!3411))))

(declare-fun b!4094956 () Bool)

(declare-fun res!1673821 () Bool)

(assert (=> b!4094956 (=> (not res!1673821) (not e!2541204))))

(assert (=> b!4094956 (= res!1673821 (= (list!16296 (charsOf!4862 (_1!24550 (get!14400 lt!1464736)))) (originalCharacters!7698 (_1!24550 (get!14400 lt!1464736)))))))

(declare-fun d!1215909 () Bool)

(declare-fun e!2541205 () Bool)

(assert (=> d!1215909 e!2541205))

(declare-fun res!1673820 () Bool)

(assert (=> d!1215909 (=> res!1673820 e!2541205)))

(assert (=> d!1215909 (= res!1673820 (isEmpty!26266 lt!1464736))))

(assert (=> d!1215909 (= lt!1464736 e!2541203)))

(declare-fun c!705748 () Bool)

(assert (=> d!1215909 (= c!705748 (and ((_ is Cons!43903) rules!3870) ((_ is Nil!43903) (t!339170 rules!3870))))))

(declare-fun lt!1464733 () Unit!63439)

(declare-fun lt!1464735 () Unit!63439)

(assert (=> d!1215909 (= lt!1464733 lt!1464735)))

(declare-fun isPrefix!4149 (List!44025 List!44025) Bool)

(assert (=> d!1215909 (isPrefix!4149 input!3411 input!3411)))

(declare-fun lemmaIsPrefixRefl!2700 (List!44025 List!44025) Unit!63439)

(assert (=> d!1215909 (= lt!1464735 (lemmaIsPrefixRefl!2700 input!3411 input!3411))))

(declare-fun rulesValidInductive!2631 (LexerInterface!6693 List!44027) Bool)

(assert (=> d!1215909 (rulesValidInductive!2631 thiss!26199 rules!3870)))

(assert (=> d!1215909 (= (maxPrefix!3983 thiss!26199 rules!3870 input!3411) lt!1464736)))

(declare-fun bm!289462 () Bool)

(assert (=> bm!289462 (= call!289467 (maxPrefixOneRule!2965 thiss!26199 (h!49323 rules!3870) input!3411))))

(declare-fun b!4094957 () Bool)

(assert (=> b!4094957 (= e!2541205 e!2541204)))

(declare-fun res!1673824 () Bool)

(assert (=> b!4094957 (=> (not res!1673824) (not e!2541204))))

(declare-fun isDefined!7198 (Option!9510) Bool)

(assert (=> b!4094957 (= res!1673824 (isDefined!7198 lt!1464736))))

(declare-fun b!4094958 () Bool)

(assert (=> b!4094958 (= e!2541204 (contains!8789 rules!3870 (rule!10252 (_1!24550 (get!14400 lt!1464736)))))))

(declare-fun b!4094959 () Bool)

(declare-fun res!1673823 () Bool)

(assert (=> b!4094959 (=> (not res!1673823) (not e!2541204))))

(assert (=> b!4094959 (= res!1673823 (< (size!32799 (_2!24550 (get!14400 lt!1464736))) (size!32799 input!3411)))))

(declare-fun b!4094960 () Bool)

(declare-fun res!1673822 () Bool)

(assert (=> b!4094960 (=> (not res!1673822) (not e!2541204))))

(assert (=> b!4094960 (= res!1673822 (matchR!5950 (regex!7104 (rule!10252 (_1!24550 (get!14400 lt!1464736)))) (list!16296 (charsOf!4862 (_1!24550 (get!14400 lt!1464736))))))))

(declare-fun b!4094961 () Bool)

(declare-fun res!1673819 () Bool)

(assert (=> b!4094961 (=> (not res!1673819) (not e!2541204))))

(assert (=> b!4094961 (= res!1673819 (= (value!223116 (_1!24550 (get!14400 lt!1464736))) (apply!10287 (transformation!7104 (rule!10252 (_1!24550 (get!14400 lt!1464736)))) (seqFromList!5321 (originalCharacters!7698 (_1!24550 (get!14400 lt!1464736)))))))))

(declare-fun b!4094962 () Bool)

(declare-fun lt!1464732 () Option!9510)

(declare-fun lt!1464734 () Option!9510)

(assert (=> b!4094962 (= e!2541203 (ite (and ((_ is None!9509) lt!1464732) ((_ is None!9509) lt!1464734)) None!9509 (ite ((_ is None!9509) lt!1464734) lt!1464732 (ite ((_ is None!9509) lt!1464732) lt!1464734 (ite (>= (size!32798 (_1!24550 (v!40003 lt!1464732))) (size!32798 (_1!24550 (v!40003 lt!1464734)))) lt!1464732 lt!1464734)))))))

(assert (=> b!4094962 (= lt!1464732 call!289467)))

(assert (=> b!4094962 (= lt!1464734 (maxPrefix!3983 thiss!26199 (t!339170 rules!3870) input!3411))))

(assert (= (and d!1215909 c!705748) b!4094954))

(assert (= (and d!1215909 (not c!705748)) b!4094962))

(assert (= (or b!4094954 b!4094962) bm!289462))

(assert (= (and d!1215909 (not res!1673820)) b!4094957))

(assert (= (and b!4094957 res!1673824) b!4094956))

(assert (= (and b!4094956 res!1673821) b!4094959))

(assert (= (and b!4094959 res!1673823) b!4094955))

(assert (= (and b!4094955 res!1673818) b!4094961))

(assert (= (and b!4094961 res!1673819) b!4094960))

(assert (= (and b!4094960 res!1673822) b!4094958))

(assert (=> b!4094962 m!4701715))

(declare-fun m!4701931 () Bool)

(assert (=> b!4094955 m!4701931))

(declare-fun m!4701933 () Bool)

(assert (=> b!4094955 m!4701933))

(assert (=> b!4094955 m!4701933))

(declare-fun m!4701935 () Bool)

(assert (=> b!4094955 m!4701935))

(assert (=> b!4094955 m!4701935))

(declare-fun m!4701937 () Bool)

(assert (=> b!4094955 m!4701937))

(assert (=> b!4094956 m!4701931))

(assert (=> b!4094956 m!4701933))

(assert (=> b!4094956 m!4701933))

(assert (=> b!4094956 m!4701935))

(assert (=> b!4094959 m!4701931))

(declare-fun m!4701939 () Bool)

(assert (=> b!4094959 m!4701939))

(declare-fun m!4701941 () Bool)

(assert (=> b!4094959 m!4701941))

(declare-fun m!4701943 () Bool)

(assert (=> b!4094957 m!4701943))

(assert (=> b!4094961 m!4701931))

(declare-fun m!4701945 () Bool)

(assert (=> b!4094961 m!4701945))

(assert (=> b!4094961 m!4701945))

(declare-fun m!4701947 () Bool)

(assert (=> b!4094961 m!4701947))

(declare-fun m!4701949 () Bool)

(assert (=> d!1215909 m!4701949))

(declare-fun m!4701951 () Bool)

(assert (=> d!1215909 m!4701951))

(declare-fun m!4701953 () Bool)

(assert (=> d!1215909 m!4701953))

(declare-fun m!4701955 () Bool)

(assert (=> d!1215909 m!4701955))

(assert (=> b!4094958 m!4701931))

(declare-fun m!4701957 () Bool)

(assert (=> b!4094958 m!4701957))

(assert (=> bm!289462 m!4701707))

(assert (=> b!4094960 m!4701931))

(assert (=> b!4094960 m!4701933))

(assert (=> b!4094960 m!4701933))

(assert (=> b!4094960 m!4701935))

(assert (=> b!4094960 m!4701935))

(declare-fun m!4701959 () Bool)

(assert (=> b!4094960 m!4701959))

(assert (=> b!4094724 d!1215909))

(declare-fun d!1215937 () Bool)

(declare-fun lt!1464739 () Int)

(assert (=> d!1215937 (>= lt!1464739 0)))

(declare-fun e!2541208 () Int)

(assert (=> d!1215937 (= lt!1464739 e!2541208)))

(declare-fun c!705751 () Bool)

(assert (=> d!1215937 (= c!705751 ((_ is Nil!43901) p!2988))))

(assert (=> d!1215937 (= (size!32799 p!2988) lt!1464739)))

(declare-fun b!4094967 () Bool)

(assert (=> b!4094967 (= e!2541208 0)))

(declare-fun b!4094968 () Bool)

(assert (=> b!4094968 (= e!2541208 (+ 1 (size!32799 (t!339168 p!2988))))))

(assert (= (and d!1215937 c!705751) b!4094967))

(assert (= (and d!1215937 (not c!705751)) b!4094968))

(declare-fun m!4701961 () Bool)

(assert (=> b!4094968 m!4701961))

(assert (=> b!4094724 d!1215937))

(declare-fun d!1215939 () Bool)

(declare-fun fromListB!2442 (List!44025) BalanceConc!26224)

(assert (=> d!1215939 (= (seqFromList!5321 p!2988) (fromListB!2442 p!2988))))

(declare-fun bs!593541 () Bool)

(assert (= bs!593541 d!1215939))

(declare-fun m!4701963 () Bool)

(assert (=> bs!593541 m!4701963))

(assert (=> b!4094724 d!1215939))

(declare-fun d!1215941 () Bool)

(declare-fun dynLambda!18818 (Int BalanceConc!26224) TokenValue!7334)

(assert (=> d!1215941 (= (apply!10287 (transformation!7104 r!4213) lt!1464657) (dynLambda!18818 (toValue!9704 (transformation!7104 r!4213)) lt!1464657))))

(declare-fun b_lambda!120193 () Bool)

(assert (=> (not b_lambda!120193) (not d!1215941)))

(declare-fun t!339176 () Bool)

(declare-fun tb!246373 () Bool)

(assert (=> (and b!4094722 (= (toValue!9704 (transformation!7104 r!4213)) (toValue!9704 (transformation!7104 r!4213))) t!339176) tb!246373))

(declare-fun result!298936 () Bool)

(declare-fun inv!21 (TokenValue!7334) Bool)

(assert (=> tb!246373 (= result!298936 (inv!21 (dynLambda!18818 (toValue!9704 (transformation!7104 r!4213)) lt!1464657)))))

(declare-fun m!4701965 () Bool)

(assert (=> tb!246373 m!4701965))

(assert (=> d!1215941 t!339176))

(declare-fun b_and!315839 () Bool)

(assert (= b_and!315827 (and (=> t!339176 result!298936) b_and!315839)))

(declare-fun t!339178 () Bool)

(declare-fun tb!246375 () Bool)

(assert (=> (and b!4094714 (= (toValue!9704 (transformation!7104 (h!49323 rules!3870))) (toValue!9704 (transformation!7104 r!4213))) t!339178) tb!246375))

(declare-fun result!298940 () Bool)

(assert (= result!298940 result!298936))

(assert (=> d!1215941 t!339178))

(declare-fun b_and!315841 () Bool)

(assert (= b_and!315831 (and (=> t!339178 result!298940) b_and!315841)))

(declare-fun m!4701967 () Bool)

(assert (=> d!1215941 m!4701967))

(assert (=> b!4094724 d!1215941))

(declare-fun b!4095021 () Bool)

(declare-fun e!2541241 () Bool)

(assert (=> b!4095021 (= e!2541241 true)))

(declare-fun d!1215943 () Bool)

(assert (=> d!1215943 e!2541241))

(assert (= d!1215943 b!4095021))

(declare-fun lambda!128119 () Int)

(declare-fun order!23125 () Int)

(declare-fun order!23127 () Int)

(declare-fun dynLambda!18819 (Int Int) Int)

(declare-fun dynLambda!18820 (Int Int) Int)

(assert (=> b!4095021 (< (dynLambda!18819 order!23125 (toValue!9704 (transformation!7104 r!4213))) (dynLambda!18820 order!23127 lambda!128119))))

(declare-fun order!23129 () Int)

(declare-fun dynLambda!18821 (Int Int) Int)

(assert (=> b!4095021 (< (dynLambda!18821 order!23129 (toChars!9563 (transformation!7104 r!4213))) (dynLambda!18820 order!23127 lambda!128119))))

(declare-fun dynLambda!18822 (Int TokenValue!7334) BalanceConc!26224)

(assert (=> d!1215943 (= (list!16296 (dynLambda!18822 (toChars!9563 (transformation!7104 r!4213)) (dynLambda!18818 (toValue!9704 (transformation!7104 r!4213)) lt!1464657))) (list!16296 lt!1464657))))

(declare-fun lt!1464743 () Unit!63439)

(declare-fun ForallOf!895 (Int BalanceConc!26224) Unit!63439)

(assert (=> d!1215943 (= lt!1464743 (ForallOf!895 lambda!128119 lt!1464657))))

(assert (=> d!1215943 (= (lemmaSemiInverse!2071 (transformation!7104 r!4213) lt!1464657) lt!1464743)))

(declare-fun b_lambda!120205 () Bool)

(assert (=> (not b_lambda!120205) (not d!1215943)))

(declare-fun t!339188 () Bool)

(declare-fun tb!246385 () Bool)

(assert (=> (and b!4094722 (= (toChars!9563 (transformation!7104 r!4213)) (toChars!9563 (transformation!7104 r!4213))) t!339188) tb!246385))

(declare-fun b!4095026 () Bool)

(declare-fun tp!1239487 () Bool)

(declare-fun e!2541244 () Bool)

(declare-fun inv!58632 (Conc!13315) Bool)

(assert (=> b!4095026 (= e!2541244 (and (inv!58632 (c!705713 (dynLambda!18822 (toChars!9563 (transformation!7104 r!4213)) (dynLambda!18818 (toValue!9704 (transformation!7104 r!4213)) lt!1464657)))) tp!1239487))))

(declare-fun result!298958 () Bool)

(declare-fun inv!58633 (BalanceConc!26224) Bool)

(assert (=> tb!246385 (= result!298958 (and (inv!58633 (dynLambda!18822 (toChars!9563 (transformation!7104 r!4213)) (dynLambda!18818 (toValue!9704 (transformation!7104 r!4213)) lt!1464657))) e!2541244))))

(assert (= tb!246385 b!4095026))

(declare-fun m!4701985 () Bool)

(assert (=> b!4095026 m!4701985))

(declare-fun m!4701987 () Bool)

(assert (=> tb!246385 m!4701987))

(assert (=> d!1215943 t!339188))

(declare-fun b_and!315855 () Bool)

(assert (= b_and!315829 (and (=> t!339188 result!298958) b_and!315855)))

(declare-fun t!339190 () Bool)

(declare-fun tb!246387 () Bool)

(assert (=> (and b!4094714 (= (toChars!9563 (transformation!7104 (h!49323 rules!3870))) (toChars!9563 (transformation!7104 r!4213))) t!339190) tb!246387))

(declare-fun result!298962 () Bool)

(assert (= result!298962 result!298958))

(assert (=> d!1215943 t!339190))

(declare-fun b_and!315857 () Bool)

(assert (= b_and!315833 (and (=> t!339190 result!298962) b_and!315857)))

(declare-fun b_lambda!120207 () Bool)

(assert (=> (not b_lambda!120207) (not d!1215943)))

(assert (=> d!1215943 t!339176))

(declare-fun b_and!315859 () Bool)

(assert (= b_and!315839 (and (=> t!339176 result!298936) b_and!315859)))

(assert (=> d!1215943 t!339178))

(declare-fun b_and!315861 () Bool)

(assert (= b_and!315841 (and (=> t!339178 result!298940) b_and!315861)))

(declare-fun m!4701989 () Bool)

(assert (=> d!1215943 m!4701989))

(declare-fun m!4701991 () Bool)

(assert (=> d!1215943 m!4701991))

(declare-fun m!4701993 () Bool)

(assert (=> d!1215943 m!4701993))

(assert (=> d!1215943 m!4701967))

(declare-fun m!4701995 () Bool)

(assert (=> d!1215943 m!4701995))

(assert (=> d!1215943 m!4701967))

(assert (=> d!1215943 m!4701991))

(assert (=> b!4094724 d!1215943))

(declare-fun b!4095036 () Bool)

(declare-fun e!2541249 () List!44025)

(assert (=> b!4095036 (= e!2541249 (Cons!43901 (h!49321 p!2988) (++!11510 (t!339168 p!2988) suffix!1518)))))

(declare-fun d!1215945 () Bool)

(declare-fun e!2541250 () Bool)

(assert (=> d!1215945 e!2541250))

(declare-fun res!1673829 () Bool)

(assert (=> d!1215945 (=> (not res!1673829) (not e!2541250))))

(declare-fun lt!1464746 () List!44025)

(declare-fun content!6775 (List!44025) (InoxSet C!24204))

(assert (=> d!1215945 (= res!1673829 (= (content!6775 lt!1464746) ((_ map or) (content!6775 p!2988) (content!6775 suffix!1518))))))

(assert (=> d!1215945 (= lt!1464746 e!2541249)))

(declare-fun c!705755 () Bool)

(assert (=> d!1215945 (= c!705755 ((_ is Nil!43901) p!2988))))

(assert (=> d!1215945 (= (++!11510 p!2988 suffix!1518) lt!1464746)))

(declare-fun b!4095037 () Bool)

(declare-fun res!1673830 () Bool)

(assert (=> b!4095037 (=> (not res!1673830) (not e!2541250))))

(assert (=> b!4095037 (= res!1673830 (= (size!32799 lt!1464746) (+ (size!32799 p!2988) (size!32799 suffix!1518))))))

(declare-fun b!4095038 () Bool)

(assert (=> b!4095038 (= e!2541250 (or (not (= suffix!1518 Nil!43901)) (= lt!1464746 p!2988)))))

(declare-fun b!4095035 () Bool)

(assert (=> b!4095035 (= e!2541249 suffix!1518)))

(assert (= (and d!1215945 c!705755) b!4095035))

(assert (= (and d!1215945 (not c!705755)) b!4095036))

(assert (= (and d!1215945 res!1673829) b!4095037))

(assert (= (and b!4095037 res!1673830) b!4095038))

(declare-fun m!4701997 () Bool)

(assert (=> b!4095036 m!4701997))

(declare-fun m!4701999 () Bool)

(assert (=> d!1215945 m!4701999))

(declare-fun m!4702001 () Bool)

(assert (=> d!1215945 m!4702001))

(declare-fun m!4702003 () Bool)

(assert (=> d!1215945 m!4702003))

(declare-fun m!4702005 () Bool)

(assert (=> b!4095037 m!4702005))

(assert (=> b!4095037 m!4701725))

(declare-fun m!4702007 () Bool)

(assert (=> b!4095037 m!4702007))

(assert (=> b!4094712 d!1215945))

(declare-fun d!1215947 () Bool)

(assert (=> d!1215947 (= (isEmpty!26265 p!2988) ((_ is Nil!43901) p!2988))))

(assert (=> b!4094716 d!1215947))

(declare-fun b!4095039 () Bool)

(declare-fun e!2541251 () Option!9510)

(declare-fun call!289468 () Option!9510)

(assert (=> b!4095039 (= e!2541251 call!289468)))

(declare-fun b!4095040 () Bool)

(declare-fun res!1673831 () Bool)

(declare-fun e!2541252 () Bool)

(assert (=> b!4095040 (=> (not res!1673831) (not e!2541252))))

(declare-fun lt!1464751 () Option!9510)

(assert (=> b!4095040 (= res!1673831 (= (++!11510 (list!16296 (charsOf!4862 (_1!24550 (get!14400 lt!1464751)))) (_2!24550 (get!14400 lt!1464751))) input!3411))))

(declare-fun b!4095041 () Bool)

(declare-fun res!1673834 () Bool)

(assert (=> b!4095041 (=> (not res!1673834) (not e!2541252))))

(assert (=> b!4095041 (= res!1673834 (= (list!16296 (charsOf!4862 (_1!24550 (get!14400 lt!1464751)))) (originalCharacters!7698 (_1!24550 (get!14400 lt!1464751)))))))

(declare-fun d!1215949 () Bool)

(declare-fun e!2541253 () Bool)

(assert (=> d!1215949 e!2541253))

(declare-fun res!1673833 () Bool)

(assert (=> d!1215949 (=> res!1673833 e!2541253)))

(assert (=> d!1215949 (= res!1673833 (isEmpty!26266 lt!1464751))))

(assert (=> d!1215949 (= lt!1464751 e!2541251)))

(declare-fun c!705756 () Bool)

(assert (=> d!1215949 (= c!705756 (and ((_ is Cons!43903) (t!339170 rules!3870)) ((_ is Nil!43903) (t!339170 (t!339170 rules!3870)))))))

(declare-fun lt!1464748 () Unit!63439)

(declare-fun lt!1464750 () Unit!63439)

(assert (=> d!1215949 (= lt!1464748 lt!1464750)))

(assert (=> d!1215949 (isPrefix!4149 input!3411 input!3411)))

(assert (=> d!1215949 (= lt!1464750 (lemmaIsPrefixRefl!2700 input!3411 input!3411))))

(assert (=> d!1215949 (rulesValidInductive!2631 thiss!26199 (t!339170 rules!3870))))

(assert (=> d!1215949 (= (maxPrefix!3983 thiss!26199 (t!339170 rules!3870) input!3411) lt!1464751)))

(declare-fun bm!289463 () Bool)

(assert (=> bm!289463 (= call!289468 (maxPrefixOneRule!2965 thiss!26199 (h!49323 (t!339170 rules!3870)) input!3411))))

(declare-fun b!4095042 () Bool)

(assert (=> b!4095042 (= e!2541253 e!2541252)))

(declare-fun res!1673837 () Bool)

(assert (=> b!4095042 (=> (not res!1673837) (not e!2541252))))

(assert (=> b!4095042 (= res!1673837 (isDefined!7198 lt!1464751))))

(declare-fun b!4095043 () Bool)

(assert (=> b!4095043 (= e!2541252 (contains!8789 (t!339170 rules!3870) (rule!10252 (_1!24550 (get!14400 lt!1464751)))))))

(declare-fun b!4095044 () Bool)

(declare-fun res!1673836 () Bool)

(assert (=> b!4095044 (=> (not res!1673836) (not e!2541252))))

(assert (=> b!4095044 (= res!1673836 (< (size!32799 (_2!24550 (get!14400 lt!1464751))) (size!32799 input!3411)))))

(declare-fun b!4095045 () Bool)

(declare-fun res!1673835 () Bool)

(assert (=> b!4095045 (=> (not res!1673835) (not e!2541252))))

(assert (=> b!4095045 (= res!1673835 (matchR!5950 (regex!7104 (rule!10252 (_1!24550 (get!14400 lt!1464751)))) (list!16296 (charsOf!4862 (_1!24550 (get!14400 lt!1464751))))))))

(declare-fun b!4095046 () Bool)

(declare-fun res!1673832 () Bool)

(assert (=> b!4095046 (=> (not res!1673832) (not e!2541252))))

(assert (=> b!4095046 (= res!1673832 (= (value!223116 (_1!24550 (get!14400 lt!1464751))) (apply!10287 (transformation!7104 (rule!10252 (_1!24550 (get!14400 lt!1464751)))) (seqFromList!5321 (originalCharacters!7698 (_1!24550 (get!14400 lt!1464751)))))))))

(declare-fun b!4095047 () Bool)

(declare-fun lt!1464747 () Option!9510)

(declare-fun lt!1464749 () Option!9510)

(assert (=> b!4095047 (= e!2541251 (ite (and ((_ is None!9509) lt!1464747) ((_ is None!9509) lt!1464749)) None!9509 (ite ((_ is None!9509) lt!1464749) lt!1464747 (ite ((_ is None!9509) lt!1464747) lt!1464749 (ite (>= (size!32798 (_1!24550 (v!40003 lt!1464747))) (size!32798 (_1!24550 (v!40003 lt!1464749)))) lt!1464747 lt!1464749)))))))

(assert (=> b!4095047 (= lt!1464747 call!289468)))

(assert (=> b!4095047 (= lt!1464749 (maxPrefix!3983 thiss!26199 (t!339170 (t!339170 rules!3870)) input!3411))))

(assert (= (and d!1215949 c!705756) b!4095039))

(assert (= (and d!1215949 (not c!705756)) b!4095047))

(assert (= (or b!4095039 b!4095047) bm!289463))

(assert (= (and d!1215949 (not res!1673833)) b!4095042))

(assert (= (and b!4095042 res!1673837) b!4095041))

(assert (= (and b!4095041 res!1673834) b!4095044))

(assert (= (and b!4095044 res!1673836) b!4095040))

(assert (= (and b!4095040 res!1673831) b!4095046))

(assert (= (and b!4095046 res!1673832) b!4095045))

(assert (= (and b!4095045 res!1673835) b!4095043))

(declare-fun m!4702009 () Bool)

(assert (=> b!4095047 m!4702009))

(declare-fun m!4702011 () Bool)

(assert (=> b!4095040 m!4702011))

(declare-fun m!4702013 () Bool)

(assert (=> b!4095040 m!4702013))

(assert (=> b!4095040 m!4702013))

(declare-fun m!4702015 () Bool)

(assert (=> b!4095040 m!4702015))

(assert (=> b!4095040 m!4702015))

(declare-fun m!4702017 () Bool)

(assert (=> b!4095040 m!4702017))

(assert (=> b!4095041 m!4702011))

(assert (=> b!4095041 m!4702013))

(assert (=> b!4095041 m!4702013))

(assert (=> b!4095041 m!4702015))

(assert (=> b!4095044 m!4702011))

(declare-fun m!4702019 () Bool)

(assert (=> b!4095044 m!4702019))

(assert (=> b!4095044 m!4701941))

(declare-fun m!4702021 () Bool)

(assert (=> b!4095042 m!4702021))

(assert (=> b!4095046 m!4702011))

(declare-fun m!4702023 () Bool)

(assert (=> b!4095046 m!4702023))

(assert (=> b!4095046 m!4702023))

(declare-fun m!4702025 () Bool)

(assert (=> b!4095046 m!4702025))

(declare-fun m!4702027 () Bool)

(assert (=> d!1215949 m!4702027))

(assert (=> d!1215949 m!4701951))

(assert (=> d!1215949 m!4701953))

(declare-fun m!4702029 () Bool)

(assert (=> d!1215949 m!4702029))

(assert (=> b!4095043 m!4702011))

(declare-fun m!4702031 () Bool)

(assert (=> b!4095043 m!4702031))

(declare-fun m!4702033 () Bool)

(assert (=> bm!289463 m!4702033))

(assert (=> b!4095045 m!4702011))

(assert (=> b!4095045 m!4702013))

(assert (=> b!4095045 m!4702013))

(assert (=> b!4095045 m!4702015))

(assert (=> b!4095045 m!4702015))

(declare-fun m!4702035 () Bool)

(assert (=> b!4095045 m!4702035))

(assert (=> b!4094727 d!1215949))

(declare-fun d!1215951 () Bool)

(assert (=> d!1215951 (= (inv!58627 (tag!7964 (h!49323 rules!3870))) (= (mod (str.len (value!223115 (tag!7964 (h!49323 rules!3870)))) 2) 0))))

(assert (=> b!4094726 d!1215951))

(declare-fun d!1215953 () Bool)

(declare-fun res!1673838 () Bool)

(declare-fun e!2541254 () Bool)

(assert (=> d!1215953 (=> (not res!1673838) (not e!2541254))))

(assert (=> d!1215953 (= res!1673838 (semiInverseModEq!3056 (toChars!9563 (transformation!7104 (h!49323 rules!3870))) (toValue!9704 (transformation!7104 (h!49323 rules!3870)))))))

(assert (=> d!1215953 (= (inv!58629 (transformation!7104 (h!49323 rules!3870))) e!2541254)))

(declare-fun b!4095048 () Bool)

(assert (=> b!4095048 (= e!2541254 (equivClasses!2955 (toChars!9563 (transformation!7104 (h!49323 rules!3870))) (toValue!9704 (transformation!7104 (h!49323 rules!3870)))))))

(assert (= (and d!1215953 res!1673838) b!4095048))

(declare-fun m!4702037 () Bool)

(assert (=> d!1215953 m!4702037))

(declare-fun m!4702039 () Bool)

(assert (=> b!4095048 m!4702039))

(assert (=> b!4094726 d!1215953))

(declare-fun d!1215955 () Bool)

(assert (=> d!1215955 (= (isEmpty!26266 lt!1464655) (not ((_ is Some!9509) lt!1464655)))))

(assert (=> b!4094725 d!1215955))

(declare-fun b!4095067 () Bool)

(declare-fun e!2541264 () Option!9510)

(assert (=> b!4095067 (= e!2541264 None!9509)))

(declare-fun b!4095068 () Bool)

(declare-fun e!2541263 () Bool)

(declare-fun lt!1464765 () Option!9510)

(assert (=> b!4095068 (= e!2541263 (= (size!32798 (_1!24550 (get!14400 lt!1464765))) (size!32799 (originalCharacters!7698 (_1!24550 (get!14400 lt!1464765))))))))

(declare-fun b!4095069 () Bool)

(declare-fun e!2541265 () Bool)

(declare-datatypes ((tuple2!42836 0))(
  ( (tuple2!42837 (_1!24552 List!44025) (_2!24552 List!44025)) )
))
(declare-fun findLongestMatchInner!1468 (Regex!12009 List!44025 Int List!44025 List!44025 Int) tuple2!42836)

(assert (=> b!4095069 (= e!2541265 (matchR!5950 (regex!7104 (h!49323 rules!3870)) (_1!24552 (findLongestMatchInner!1468 (regex!7104 (h!49323 rules!3870)) Nil!43901 (size!32799 Nil!43901) input!3411 input!3411 (size!32799 input!3411)))))))

(declare-fun b!4095070 () Bool)

(declare-fun res!1673858 () Bool)

(assert (=> b!4095070 (=> (not res!1673858) (not e!2541263))))

(assert (=> b!4095070 (= res!1673858 (= (value!223116 (_1!24550 (get!14400 lt!1464765))) (apply!10287 (transformation!7104 (rule!10252 (_1!24550 (get!14400 lt!1464765)))) (seqFromList!5321 (originalCharacters!7698 (_1!24550 (get!14400 lt!1464765)))))))))

(declare-fun b!4095071 () Bool)

(declare-fun lt!1464766 () tuple2!42836)

(declare-fun size!32801 (BalanceConc!26224) Int)

(assert (=> b!4095071 (= e!2541264 (Some!9509 (tuple2!42833 (Token!13335 (apply!10287 (transformation!7104 (h!49323 rules!3870)) (seqFromList!5321 (_1!24552 lt!1464766))) (h!49323 rules!3870) (size!32801 (seqFromList!5321 (_1!24552 lt!1464766))) (_1!24552 lt!1464766)) (_2!24552 lt!1464766))))))

(declare-fun lt!1464763 () Unit!63439)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1441 (Regex!12009 List!44025) Unit!63439)

(assert (=> b!4095071 (= lt!1464763 (longestMatchIsAcceptedByMatchOrIsEmpty!1441 (regex!7104 (h!49323 rules!3870)) input!3411))))

(declare-fun res!1673854 () Bool)

(assert (=> b!4095071 (= res!1673854 (isEmpty!26265 (_1!24552 (findLongestMatchInner!1468 (regex!7104 (h!49323 rules!3870)) Nil!43901 (size!32799 Nil!43901) input!3411 input!3411 (size!32799 input!3411)))))))

(assert (=> b!4095071 (=> res!1673854 e!2541265)))

(assert (=> b!4095071 e!2541265))

(declare-fun lt!1464762 () Unit!63439)

(assert (=> b!4095071 (= lt!1464762 lt!1464763)))

(declare-fun lt!1464764 () Unit!63439)

(assert (=> b!4095071 (= lt!1464764 (lemmaSemiInverse!2071 (transformation!7104 (h!49323 rules!3870)) (seqFromList!5321 (_1!24552 lt!1464766))))))

(declare-fun b!4095072 () Bool)

(declare-fun res!1673859 () Bool)

(assert (=> b!4095072 (=> (not res!1673859) (not e!2541263))))

(assert (=> b!4095072 (= res!1673859 (< (size!32799 (_2!24550 (get!14400 lt!1464765))) (size!32799 input!3411)))))

(declare-fun d!1215957 () Bool)

(declare-fun e!2541266 () Bool)

(assert (=> d!1215957 e!2541266))

(declare-fun res!1673855 () Bool)

(assert (=> d!1215957 (=> res!1673855 e!2541266)))

(assert (=> d!1215957 (= res!1673855 (isEmpty!26266 lt!1464765))))

(assert (=> d!1215957 (= lt!1464765 e!2541264)))

(declare-fun c!705759 () Bool)

(assert (=> d!1215957 (= c!705759 (isEmpty!26265 (_1!24552 lt!1464766)))))

(declare-fun findLongestMatch!1381 (Regex!12009 List!44025) tuple2!42836)

(assert (=> d!1215957 (= lt!1464766 (findLongestMatch!1381 (regex!7104 (h!49323 rules!3870)) input!3411))))

(assert (=> d!1215957 (ruleValid!3024 thiss!26199 (h!49323 rules!3870))))

(assert (=> d!1215957 (= (maxPrefixOneRule!2965 thiss!26199 (h!49323 rules!3870) input!3411) lt!1464765)))

(declare-fun b!4095073 () Bool)

(declare-fun res!1673856 () Bool)

(assert (=> b!4095073 (=> (not res!1673856) (not e!2541263))))

(assert (=> b!4095073 (= res!1673856 (= (++!11510 (list!16296 (charsOf!4862 (_1!24550 (get!14400 lt!1464765)))) (_2!24550 (get!14400 lt!1464765))) input!3411))))

(declare-fun b!4095074 () Bool)

(assert (=> b!4095074 (= e!2541266 e!2541263)))

(declare-fun res!1673857 () Bool)

(assert (=> b!4095074 (=> (not res!1673857) (not e!2541263))))

(assert (=> b!4095074 (= res!1673857 (matchR!5950 (regex!7104 (h!49323 rules!3870)) (list!16296 (charsOf!4862 (_1!24550 (get!14400 lt!1464765))))))))

(declare-fun b!4095075 () Bool)

(declare-fun res!1673853 () Bool)

(assert (=> b!4095075 (=> (not res!1673853) (not e!2541263))))

(assert (=> b!4095075 (= res!1673853 (= (rule!10252 (_1!24550 (get!14400 lt!1464765))) (h!49323 rules!3870)))))

(assert (= (and d!1215957 c!705759) b!4095067))

(assert (= (and d!1215957 (not c!705759)) b!4095071))

(assert (= (and b!4095071 (not res!1673854)) b!4095069))

(assert (= (and d!1215957 (not res!1673855)) b!4095074))

(assert (= (and b!4095074 res!1673857) b!4095073))

(assert (= (and b!4095073 res!1673856) b!4095072))

(assert (= (and b!4095072 res!1673859) b!4095075))

(assert (= (and b!4095075 res!1673853) b!4095070))

(assert (= (and b!4095070 res!1673858) b!4095068))

(declare-fun m!4702041 () Bool)

(assert (=> b!4095074 m!4702041))

(declare-fun m!4702043 () Bool)

(assert (=> b!4095074 m!4702043))

(assert (=> b!4095074 m!4702043))

(declare-fun m!4702045 () Bool)

(assert (=> b!4095074 m!4702045))

(assert (=> b!4095074 m!4702045))

(declare-fun m!4702047 () Bool)

(assert (=> b!4095074 m!4702047))

(declare-fun m!4702049 () Bool)

(assert (=> b!4095069 m!4702049))

(assert (=> b!4095069 m!4701941))

(assert (=> b!4095069 m!4702049))

(assert (=> b!4095069 m!4701941))

(declare-fun m!4702051 () Bool)

(assert (=> b!4095069 m!4702051))

(declare-fun m!4702053 () Bool)

(assert (=> b!4095069 m!4702053))

(declare-fun m!4702055 () Bool)

(assert (=> d!1215957 m!4702055))

(declare-fun m!4702057 () Bool)

(assert (=> d!1215957 m!4702057))

(declare-fun m!4702059 () Bool)

(assert (=> d!1215957 m!4702059))

(declare-fun m!4702061 () Bool)

(assert (=> d!1215957 m!4702061))

(assert (=> b!4095072 m!4702041))

(declare-fun m!4702063 () Bool)

(assert (=> b!4095072 m!4702063))

(assert (=> b!4095072 m!4701941))

(assert (=> b!4095075 m!4702041))

(assert (=> b!4095073 m!4702041))

(assert (=> b!4095073 m!4702043))

(assert (=> b!4095073 m!4702043))

(assert (=> b!4095073 m!4702045))

(assert (=> b!4095073 m!4702045))

(declare-fun m!4702065 () Bool)

(assert (=> b!4095073 m!4702065))

(assert (=> b!4095071 m!4701941))

(declare-fun m!4702067 () Bool)

(assert (=> b!4095071 m!4702067))

(declare-fun m!4702069 () Bool)

(assert (=> b!4095071 m!4702069))

(assert (=> b!4095071 m!4702049))

(declare-fun m!4702071 () Bool)

(assert (=> b!4095071 m!4702071))

(assert (=> b!4095071 m!4702071))

(declare-fun m!4702073 () Bool)

(assert (=> b!4095071 m!4702073))

(assert (=> b!4095071 m!4702071))

(declare-fun m!4702075 () Bool)

(assert (=> b!4095071 m!4702075))

(assert (=> b!4095071 m!4702071))

(declare-fun m!4702077 () Bool)

(assert (=> b!4095071 m!4702077))

(assert (=> b!4095071 m!4702049))

(assert (=> b!4095071 m!4701941))

(assert (=> b!4095071 m!4702051))

(assert (=> b!4095068 m!4702041))

(declare-fun m!4702079 () Bool)

(assert (=> b!4095068 m!4702079))

(assert (=> b!4095070 m!4702041))

(declare-fun m!4702081 () Bool)

(assert (=> b!4095070 m!4702081))

(assert (=> b!4095070 m!4702081))

(declare-fun m!4702083 () Bool)

(assert (=> b!4095070 m!4702083))

(assert (=> b!4094725 d!1215957))

(declare-fun d!1215959 () Bool)

(declare-fun res!1673860 () Bool)

(declare-fun e!2541267 () Bool)

(assert (=> d!1215959 (=> (not res!1673860) (not e!2541267))))

(assert (=> d!1215959 (= res!1673860 (rulesValid!2790 thiss!26199 (t!339170 rules!3870)))))

(assert (=> d!1215959 (= (rulesInvariant!6036 thiss!26199 (t!339170 rules!3870)) e!2541267)))

(declare-fun b!4095076 () Bool)

(assert (=> b!4095076 (= e!2541267 (noDuplicateTag!2791 thiss!26199 (t!339170 rules!3870) Nil!43905))))

(assert (= (and d!1215959 res!1673860) b!4095076))

(declare-fun m!4702085 () Bool)

(assert (=> d!1215959 m!4702085))

(declare-fun m!4702087 () Bool)

(assert (=> b!4095076 m!4702087))

(assert (=> b!4094725 d!1215959))

(declare-fun d!1215961 () Bool)

(assert (=> d!1215961 (rulesInvariant!6036 thiss!26199 (t!339170 rules!3870))))

(declare-fun lt!1464769 () Unit!63439)

(declare-fun choose!25019 (LexerInterface!6693 Rule!14008 List!44027) Unit!63439)

(assert (=> d!1215961 (= lt!1464769 (choose!25019 thiss!26199 (h!49323 rules!3870) (t!339170 rules!3870)))))

(assert (=> d!1215961 (rulesInvariant!6036 thiss!26199 (Cons!43903 (h!49323 rules!3870) (t!339170 rules!3870)))))

(assert (=> d!1215961 (= (lemmaInvariantOnRulesThenOnTail!806 thiss!26199 (h!49323 rules!3870) (t!339170 rules!3870)) lt!1464769)))

(declare-fun bs!593542 () Bool)

(assert (= bs!593542 d!1215961))

(assert (=> bs!593542 m!4701709))

(declare-fun m!4702089 () Bool)

(assert (=> bs!593542 m!4702089))

(declare-fun m!4702091 () Bool)

(assert (=> bs!593542 m!4702091))

(assert (=> b!4094725 d!1215961))

(declare-fun b!4095087 () Bool)

(declare-fun b_free!114501 () Bool)

(declare-fun b_next!115205 () Bool)

(assert (=> b!4095087 (= b_free!114501 (not b_next!115205))))

(declare-fun t!339193 () Bool)

(declare-fun tb!246389 () Bool)

(assert (=> (and b!4095087 (= (toValue!9704 (transformation!7104 (h!49323 (t!339170 rules!3870)))) (toValue!9704 (transformation!7104 r!4213))) t!339193) tb!246389))

(declare-fun result!298966 () Bool)

(assert (= result!298966 result!298936))

(assert (=> d!1215941 t!339193))

(assert (=> d!1215943 t!339193))

(declare-fun tp!1239498 () Bool)

(declare-fun b_and!315863 () Bool)

(assert (=> b!4095087 (= tp!1239498 (and (=> t!339193 result!298966) b_and!315863))))

(declare-fun b_free!114503 () Bool)

(declare-fun b_next!115207 () Bool)

(assert (=> b!4095087 (= b_free!114503 (not b_next!115207))))

(declare-fun t!339195 () Bool)

(declare-fun tb!246391 () Bool)

(assert (=> (and b!4095087 (= (toChars!9563 (transformation!7104 (h!49323 (t!339170 rules!3870)))) (toChars!9563 (transformation!7104 r!4213))) t!339195) tb!246391))

(declare-fun result!298968 () Bool)

(assert (= result!298968 result!298958))

(assert (=> d!1215943 t!339195))

(declare-fun b_and!315865 () Bool)

(declare-fun tp!1239496 () Bool)

(assert (=> b!4095087 (= tp!1239496 (and (=> t!339195 result!298968) b_and!315865))))

(declare-fun e!2541278 () Bool)

(assert (=> b!4095087 (= e!2541278 (and tp!1239498 tp!1239496))))

(declare-fun b!4095086 () Bool)

(declare-fun e!2541277 () Bool)

(declare-fun tp!1239499 () Bool)

(assert (=> b!4095086 (= e!2541277 (and tp!1239499 (inv!58627 (tag!7964 (h!49323 (t!339170 rules!3870)))) (inv!58629 (transformation!7104 (h!49323 (t!339170 rules!3870)))) e!2541278))))

(declare-fun b!4095085 () Bool)

(declare-fun e!2541276 () Bool)

(declare-fun tp!1239497 () Bool)

(assert (=> b!4095085 (= e!2541276 (and e!2541277 tp!1239497))))

(assert (=> b!4094719 (= tp!1239435 e!2541276)))

(assert (= b!4095086 b!4095087))

(assert (= b!4095085 b!4095086))

(assert (= (and b!4094719 ((_ is Cons!43903) (t!339170 rules!3870))) b!4095085))

(declare-fun m!4702093 () Bool)

(assert (=> b!4095086 m!4702093))

(declare-fun m!4702095 () Bool)

(assert (=> b!4095086 m!4702095))

(declare-fun b!4095092 () Bool)

(declare-fun e!2541282 () Bool)

(declare-fun tp!1239502 () Bool)

(assert (=> b!4095092 (= e!2541282 (and tp_is_empty!21021 tp!1239502))))

(assert (=> b!4094713 (= tp!1239437 e!2541282)))

(assert (= (and b!4094713 ((_ is Cons!43901) (t!339168 p!2988))) b!4095092))

(declare-fun b!4095093 () Bool)

(declare-fun e!2541283 () Bool)

(declare-fun tp!1239503 () Bool)

(assert (=> b!4095093 (= e!2541283 (and tp_is_empty!21021 tp!1239503))))

(assert (=> b!4094723 (= tp!1239442 e!2541283)))

(assert (= (and b!4094723 ((_ is Cons!43901) (t!339168 suffix!1518))) b!4095093))

(declare-fun b!4095094 () Bool)

(declare-fun e!2541284 () Bool)

(declare-fun tp!1239504 () Bool)

(assert (=> b!4095094 (= e!2541284 (and tp_is_empty!21021 tp!1239504))))

(assert (=> b!4094711 (= tp!1239439 e!2541284)))

(assert (= (and b!4094711 ((_ is Cons!43901) (t!339168 input!3411))) b!4095094))

(declare-fun b!4095107 () Bool)

(declare-fun e!2541287 () Bool)

(declare-fun tp!1239518 () Bool)

(assert (=> b!4095107 (= e!2541287 tp!1239518)))

(declare-fun b!4095106 () Bool)

(declare-fun tp!1239516 () Bool)

(declare-fun tp!1239517 () Bool)

(assert (=> b!4095106 (= e!2541287 (and tp!1239516 tp!1239517))))

(declare-fun b!4095108 () Bool)

(declare-fun tp!1239519 () Bool)

(declare-fun tp!1239515 () Bool)

(assert (=> b!4095108 (= e!2541287 (and tp!1239519 tp!1239515))))

(assert (=> b!4094726 (= tp!1239444 e!2541287)))

(declare-fun b!4095105 () Bool)

(assert (=> b!4095105 (= e!2541287 tp_is_empty!21021)))

(assert (= (and b!4094726 ((_ is ElementMatch!12009) (regex!7104 (h!49323 rules!3870)))) b!4095105))

(assert (= (and b!4094726 ((_ is Concat!19344) (regex!7104 (h!49323 rules!3870)))) b!4095106))

(assert (= (and b!4094726 ((_ is Star!12009) (regex!7104 (h!49323 rules!3870)))) b!4095107))

(assert (= (and b!4094726 ((_ is Union!12009) (regex!7104 (h!49323 rules!3870)))) b!4095108))

(declare-fun b!4095111 () Bool)

(declare-fun e!2541288 () Bool)

(declare-fun tp!1239523 () Bool)

(assert (=> b!4095111 (= e!2541288 tp!1239523)))

(declare-fun b!4095110 () Bool)

(declare-fun tp!1239521 () Bool)

(declare-fun tp!1239522 () Bool)

(assert (=> b!4095110 (= e!2541288 (and tp!1239521 tp!1239522))))

(declare-fun b!4095112 () Bool)

(declare-fun tp!1239524 () Bool)

(declare-fun tp!1239520 () Bool)

(assert (=> b!4095112 (= e!2541288 (and tp!1239524 tp!1239520))))

(assert (=> b!4094720 (= tp!1239443 e!2541288)))

(declare-fun b!4095109 () Bool)

(assert (=> b!4095109 (= e!2541288 tp_is_empty!21021)))

(assert (= (and b!4094720 ((_ is ElementMatch!12009) (regex!7104 r!4213))) b!4095109))

(assert (= (and b!4094720 ((_ is Concat!19344) (regex!7104 r!4213))) b!4095110))

(assert (= (and b!4094720 ((_ is Star!12009) (regex!7104 r!4213))) b!4095111))

(assert (= (and b!4094720 ((_ is Union!12009) (regex!7104 r!4213))) b!4095112))

(declare-fun b_lambda!120209 () Bool)

(assert (= b_lambda!120193 (or (and b!4094722 b_free!114489) (and b!4094714 b_free!114493 (= (toValue!9704 (transformation!7104 (h!49323 rules!3870))) (toValue!9704 (transformation!7104 r!4213)))) (and b!4095087 b_free!114501 (= (toValue!9704 (transformation!7104 (h!49323 (t!339170 rules!3870)))) (toValue!9704 (transformation!7104 r!4213)))) b_lambda!120209)))

(declare-fun b_lambda!120211 () Bool)

(assert (= b_lambda!120207 (or (and b!4094722 b_free!114489) (and b!4094714 b_free!114493 (= (toValue!9704 (transformation!7104 (h!49323 rules!3870))) (toValue!9704 (transformation!7104 r!4213)))) (and b!4095087 b_free!114501 (= (toValue!9704 (transformation!7104 (h!49323 (t!339170 rules!3870)))) (toValue!9704 (transformation!7104 r!4213)))) b_lambda!120211)))

(declare-fun b_lambda!120213 () Bool)

(assert (= b_lambda!120205 (or (and b!4094722 b_free!114491) (and b!4094714 b_free!114495 (= (toChars!9563 (transformation!7104 (h!49323 rules!3870))) (toChars!9563 (transformation!7104 r!4213)))) (and b!4095087 b_free!114503 (= (toChars!9563 (transformation!7104 (h!49323 (t!339170 rules!3870)))) (toChars!9563 (transformation!7104 r!4213)))) b_lambda!120213)))

(check-sat (not b!4094957) (not b!4095076) b_and!315865 (not b!4094840) (not d!1215959) (not b!4095044) (not b!4094826) b_and!315861 (not b_next!115205) b_and!315857 (not b_next!115195) (not b!4095106) (not b!4094959) (not b!4095041) (not b!4094968) (not d!1215901) (not b!4095092) (not b!4094960) (not b!4095071) (not d!1215907) (not b!4094956) (not b!4095072) (not b!4095047) (not b!4094955) (not b_next!115197) (not tb!246373) (not b!4095107) (not b!4094961) (not b!4095068) (not b!4095094) (not b!4094962) (not d!1215943) (not b!4094886) (not b!4094825) (not d!1215953) (not bm!289462) (not b!4095070) (not d!1215957) (not bm!289463) (not d!1215939) (not b!4095085) b_and!315863 (not b_next!115193) (not b_next!115199) (not d!1215949) (not b!4094880) (not b_next!115207) (not b!4094830) (not b!4094958) (not b!4095108) (not d!1215871) (not b!4095048) (not b!4095069) (not b!4095037) (not b!4094827) (not d!1215909) (not tb!246385) (not b!4095110) (not b!4094871) b_and!315855 (not d!1215945) (not b!4095111) (not d!1215961) (not b!4095074) (not b!4095026) (not b!4095112) (not b!4095046) (not b!4095042) (not d!1215885) (not b!4095086) b_and!315859 (not d!1215887) (not d!1215895) (not b!4094834) (not b!4095040) (not b!4095045) (not b_lambda!120213) (not b!4095093) (not b_lambda!120209) (not b!4095075) (not b!4095073) (not bm!289455) (not b_lambda!120211) (not b!4094824) tp_is_empty!21021 (not b!4095043) (not b!4095036))
(check-sat (not b_next!115197) b_and!315865 (not b_next!115207) b_and!315855 b_and!315859 b_and!315861 (not b_next!115205) b_and!315857 (not b_next!115195) b_and!315863 (not b_next!115193) (not b_next!115199))
