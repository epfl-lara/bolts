; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!509584 () Bool)

(assert start!509584)

(declare-fun b!4872797 () Bool)

(declare-fun b_free!130763 () Bool)

(declare-fun b_next!131553 () Bool)

(assert (=> b!4872797 (= b_free!130763 (not b_next!131553))))

(declare-fun tp!1371083 () Bool)

(declare-fun b_and!343171 () Bool)

(assert (=> b!4872797 (= tp!1371083 b_and!343171)))

(declare-fun b_free!130765 () Bool)

(declare-fun b_next!131555 () Bool)

(assert (=> b!4872797 (= b_free!130765 (not b_next!131555))))

(declare-fun tp!1371081 () Bool)

(declare-fun b_and!343173 () Bool)

(assert (=> b!4872797 (= tp!1371081 b_and!343173)))

(declare-fun res!2080045 () Bool)

(declare-fun e!3045993 () Bool)

(assert (=> start!509584 (=> (not res!2080045) (not e!3045993))))

(declare-datatypes ((LexerInterface!7638 0))(
  ( (LexerInterfaceExt!7635 (__x!34005 Int)) (Lexer!7636) )
))
(declare-fun thiss!11460 () LexerInterface!7638)

(get-info :version)

(assert (=> start!509584 (= res!2080045 ((_ is Lexer!7636) thiss!11460))))

(assert (=> start!509584 e!3045993))

(assert (=> start!509584 true))

(declare-fun e!3045988 () Bool)

(assert (=> start!509584 e!3045988))

(declare-datatypes ((C!26440 0))(
  ( (C!26441 (val!22542 Int)) )
))
(declare-datatypes ((List!56121 0))(
  ( (Nil!55997) (Cons!55997 (h!62445 C!26440) (t!364323 List!56121)) )
))
(declare-datatypes ((IArray!29257 0))(
  ( (IArray!29258 (innerList!14686 List!56121)) )
))
(declare-datatypes ((Conc!14598 0))(
  ( (Node!14598 (left!40673 Conc!14598) (right!41003 Conc!14598) (csize!29426 Int) (cheight!14809 Int)) (Leaf!24332 (xs!17906 IArray!29257) (csize!29427 Int)) (Empty!14598) )
))
(declare-datatypes ((BalanceConc!28638 0))(
  ( (BalanceConc!28639 (c!828795 Conc!14598)) )
))
(declare-fun input!585 () BalanceConc!28638)

(declare-fun e!3045987 () Bool)

(declare-fun inv!71927 (BalanceConc!28638) Bool)

(assert (=> start!509584 (and (inv!71927 input!585) e!3045987)))

(declare-fun b!4872796 () Bool)

(declare-fun e!3045990 () Bool)

(assert (=> b!4872796 (= e!3045993 e!3045990)))

(declare-fun res!2080044 () Bool)

(assert (=> b!4872796 (=> (not res!2080044) (not e!3045990))))

(declare-datatypes ((List!56122 0))(
  ( (Nil!55998) (Cons!55998 (h!62446 (_ BitVec 16)) (t!364324 List!56122)) )
))
(declare-datatypes ((TokenValue!8356 0))(
  ( (FloatLiteralValue!16712 (text!58937 List!56122)) (TokenValueExt!8355 (__x!34006 Int)) (Broken!41780 (value!258427 List!56122)) (Object!8479) (End!8356) (Def!8356) (Underscore!8356) (Match!8356) (Else!8356) (Error!8356) (Case!8356) (If!8356) (Extends!8356) (Abstract!8356) (Class!8356) (Val!8356) (DelimiterValue!16712 (del!8416 List!56122)) (KeywordValue!8362 (value!258428 List!56122)) (CommentValue!16712 (value!258429 List!56122)) (WhitespaceValue!16712 (value!258430 List!56122)) (IndentationValue!8356 (value!258431 List!56122)) (String!63197) (Int32!8356) (Broken!41781 (value!258432 List!56122)) (Boolean!8357) (Unit!145987) (OperatorValue!8359 (op!8416 List!56122)) (IdentifierValue!16712 (value!258433 List!56122)) (IdentifierValue!16713 (value!258434 List!56122)) (WhitespaceValue!16713 (value!258435 List!56122)) (True!16712) (False!16712) (Broken!41782 (value!258436 List!56122)) (Broken!41783 (value!258437 List!56122)) (True!16713) (RightBrace!8356) (RightBracket!8356) (Colon!8356) (Null!8356) (Comma!8356) (LeftBracket!8356) (False!16713) (LeftBrace!8356) (ImaginaryLiteralValue!8356 (text!58938 List!56122)) (StringLiteralValue!25068 (value!258438 List!56122)) (EOFValue!8356 (value!258439 List!56122)) (IdentValue!8356 (value!258440 List!56122)) (DelimiterValue!16713 (value!258441 List!56122)) (DedentValue!8356 (value!258442 List!56122)) (NewLineValue!8356 (value!258443 List!56122)) (IntegerValue!25068 (value!258444 (_ BitVec 32)) (text!58939 List!56122)) (IntegerValue!25069 (value!258445 Int) (text!58940 List!56122)) (Times!8356) (Or!8356) (Equal!8356) (Minus!8356) (Broken!41784 (value!258446 List!56122)) (And!8356) (Div!8356) (LessEqual!8356) (Mod!8356) (Concat!21477) (Not!8356) (Plus!8356) (SpaceValue!8356 (value!258447 List!56122)) (IntegerValue!25070 (value!258448 Int) (text!58941 List!56122)) (StringLiteralValue!25069 (text!58942 List!56122)) (FloatLiteralValue!16713 (text!58943 List!56122)) (BytesLiteralValue!8356 (value!258449 List!56122)) (CommentValue!16713 (value!258450 List!56122)) (StringLiteralValue!25070 (value!258451 List!56122)) (ErrorTokenValue!8356 (msg!8417 List!56122)) )
))
(declare-datatypes ((String!63198 0))(
  ( (String!63199 (value!258452 String)) )
))
(declare-datatypes ((Regex!13121 0))(
  ( (ElementMatch!13121 (c!828796 C!26440)) (Concat!21478 (regOne!26754 Regex!13121) (regTwo!26754 Regex!13121)) (EmptyExpr!13121) (Star!13121 (reg!13450 Regex!13121)) (EmptyLang!13121) (Union!13121 (regOne!26755 Regex!13121) (regTwo!26755 Regex!13121)) )
))
(declare-datatypes ((TokenValueInjection!16020 0))(
  ( (TokenValueInjection!16021 (toValue!10921 Int) (toChars!10780 Int)) )
))
(declare-datatypes ((Rule!15892 0))(
  ( (Rule!15893 (regex!8046 Regex!13121) (tag!8910 String!63198) (isSeparator!8046 Bool) (transformation!8046 TokenValueInjection!16020)) )
))
(declare-datatypes ((Token!14676 0))(
  ( (Token!14677 (value!258453 TokenValue!8356) (rule!11190 Rule!15892) (size!36921 Int) (originalCharacters!8369 List!56121)) )
))
(declare-datatypes ((tuple2!59864 0))(
  ( (tuple2!59865 (_1!33235 Token!14676) (_2!33235 BalanceConc!28638)) )
))
(declare-datatypes ((Option!13797 0))(
  ( (None!13796) (Some!13796 (v!49726 tuple2!59864)) )
))
(declare-fun lt!1996614 () Option!13797)

(assert (=> b!4872796 (= res!2080044 ((_ is Some!13796) lt!1996614))))

(declare-datatypes ((List!56123 0))(
  ( (Nil!55999) (Cons!55999 (h!62447 Rule!15892) (t!364325 List!56123)) )
))
(declare-fun rules!1164 () List!56123)

(declare-fun maxPrefixZipperSequence!1237 (LexerInterface!7638 List!56123 BalanceConc!28638) Option!13797)

(assert (=> b!4872796 (= lt!1996614 (maxPrefixZipperSequence!1237 thiss!11460 rules!1164 input!585))))

(declare-fun e!3045991 () Bool)

(assert (=> b!4872797 (= e!3045991 (and tp!1371083 tp!1371081))))

(declare-fun b!4872798 () Bool)

(declare-fun res!2080046 () Bool)

(assert (=> b!4872798 (=> (not res!2080046) (not e!3045993))))

(declare-fun isEmpty!29977 (List!56123) Bool)

(assert (=> b!4872798 (= res!2080046 (not (isEmpty!29977 rules!1164)))))

(declare-fun b!4872799 () Bool)

(declare-fun tp!1371080 () Bool)

(declare-fun inv!71928 (Conc!14598) Bool)

(assert (=> b!4872799 (= e!3045987 (and (inv!71928 (c!828795 input!585)) tp!1371080))))

(declare-fun b!4872800 () Bool)

(declare-fun e!3045992 () Bool)

(declare-fun tp!1371082 () Bool)

(assert (=> b!4872800 (= e!3045988 (and e!3045992 tp!1371082))))

(declare-fun b!4872801 () Bool)

(declare-fun res!2080043 () Bool)

(assert (=> b!4872801 (=> (not res!2080043) (not e!3045993))))

(declare-fun rulesInvariant!6736 (LexerInterface!7638 List!56123) Bool)

(assert (=> b!4872801 (= res!2080043 (rulesInvariant!6736 thiss!11460 rules!1164))))

(declare-fun tp!1371079 () Bool)

(declare-fun b!4872802 () Bool)

(declare-fun inv!71923 (String!63198) Bool)

(declare-fun inv!71929 (TokenValueInjection!16020) Bool)

(assert (=> b!4872802 (= e!3045992 (and tp!1371079 (inv!71923 (tag!8910 (h!62447 rules!1164))) (inv!71929 (transformation!8046 (h!62447 rules!1164))) e!3045991))))

(declare-fun b!4872803 () Bool)

(declare-fun size!36922 (BalanceConc!28638) Int)

(assert (=> b!4872803 (= e!3045990 (>= (size!36922 (_2!33235 (v!49726 lt!1996614))) (size!36922 input!585)))))

(assert (= (and start!509584 res!2080045) b!4872798))

(assert (= (and b!4872798 res!2080046) b!4872801))

(assert (= (and b!4872801 res!2080043) b!4872796))

(assert (= (and b!4872796 res!2080044) b!4872803))

(assert (= b!4872802 b!4872797))

(assert (= b!4872800 b!4872802))

(assert (= (and start!509584 ((_ is Cons!55999) rules!1164)) b!4872800))

(assert (= start!509584 b!4872799))

(declare-fun m!5873822 () Bool)

(assert (=> start!509584 m!5873822))

(declare-fun m!5873824 () Bool)

(assert (=> b!4872796 m!5873824))

(declare-fun m!5873826 () Bool)

(assert (=> b!4872799 m!5873826))

(declare-fun m!5873828 () Bool)

(assert (=> b!4872798 m!5873828))

(declare-fun m!5873830 () Bool)

(assert (=> b!4872803 m!5873830))

(declare-fun m!5873832 () Bool)

(assert (=> b!4872803 m!5873832))

(declare-fun m!5873834 () Bool)

(assert (=> b!4872801 m!5873834))

(declare-fun m!5873836 () Bool)

(assert (=> b!4872802 m!5873836))

(declare-fun m!5873838 () Bool)

(assert (=> b!4872802 m!5873838))

(check-sat (not b!4872803) b_and!343171 (not b_next!131555) (not b_next!131553) (not start!509584) (not b!4872798) (not b!4872802) b_and!343173 (not b!4872801) (not b!4872796) (not b!4872800) (not b!4872799))
(check-sat b_and!343173 b_and!343171 (not b_next!131553) (not b_next!131555))
(get-model)

(declare-fun d!1564968 () Bool)

(declare-fun lt!1996617 () Int)

(declare-fun size!36925 (List!56121) Int)

(declare-fun list!17526 (BalanceConc!28638) List!56121)

(assert (=> d!1564968 (= lt!1996617 (size!36925 (list!17526 (_2!33235 (v!49726 lt!1996614)))))))

(declare-fun size!36926 (Conc!14598) Int)

(assert (=> d!1564968 (= lt!1996617 (size!36926 (c!828795 (_2!33235 (v!49726 lt!1996614)))))))

(assert (=> d!1564968 (= (size!36922 (_2!33235 (v!49726 lt!1996614))) lt!1996617)))

(declare-fun bs!1174792 () Bool)

(assert (= bs!1174792 d!1564968))

(declare-fun m!5873850 () Bool)

(assert (=> bs!1174792 m!5873850))

(assert (=> bs!1174792 m!5873850))

(declare-fun m!5873852 () Bool)

(assert (=> bs!1174792 m!5873852))

(declare-fun m!5873854 () Bool)

(assert (=> bs!1174792 m!5873854))

(assert (=> b!4872803 d!1564968))

(declare-fun d!1564972 () Bool)

(declare-fun lt!1996618 () Int)

(assert (=> d!1564972 (= lt!1996618 (size!36925 (list!17526 input!585)))))

(assert (=> d!1564972 (= lt!1996618 (size!36926 (c!828795 input!585)))))

(assert (=> d!1564972 (= (size!36922 input!585) lt!1996618)))

(declare-fun bs!1174793 () Bool)

(assert (= bs!1174793 d!1564972))

(declare-fun m!5873856 () Bool)

(assert (=> bs!1174793 m!5873856))

(assert (=> bs!1174793 m!5873856))

(declare-fun m!5873858 () Bool)

(assert (=> bs!1174793 m!5873858))

(declare-fun m!5873860 () Bool)

(assert (=> bs!1174793 m!5873860))

(assert (=> b!4872803 d!1564972))

(declare-fun d!1564974 () Bool)

(declare-fun isBalanced!3962 (Conc!14598) Bool)

(assert (=> d!1564974 (= (inv!71927 input!585) (isBalanced!3962 (c!828795 input!585)))))

(declare-fun bs!1174794 () Bool)

(assert (= bs!1174794 d!1564974))

(declare-fun m!5873862 () Bool)

(assert (=> bs!1174794 m!5873862))

(assert (=> start!509584 d!1564974))

(declare-fun d!1564976 () Bool)

(assert (=> d!1564976 (= (inv!71923 (tag!8910 (h!62447 rules!1164))) (= (mod (str.len (value!258452 (tag!8910 (h!62447 rules!1164)))) 2) 0))))

(assert (=> b!4872802 d!1564976))

(declare-fun d!1564978 () Bool)

(declare-fun res!2080059 () Bool)

(declare-fun e!3046002 () Bool)

(assert (=> d!1564978 (=> (not res!2080059) (not e!3046002))))

(declare-fun semiInverseModEq!3550 (Int Int) Bool)

(assert (=> d!1564978 (= res!2080059 (semiInverseModEq!3550 (toChars!10780 (transformation!8046 (h!62447 rules!1164))) (toValue!10921 (transformation!8046 (h!62447 rules!1164)))))))

(assert (=> d!1564978 (= (inv!71929 (transformation!8046 (h!62447 rules!1164))) e!3046002)))

(declare-fun b!4872812 () Bool)

(declare-fun equivClasses!3429 (Int Int) Bool)

(assert (=> b!4872812 (= e!3046002 (equivClasses!3429 (toChars!10780 (transformation!8046 (h!62447 rules!1164))) (toValue!10921 (transformation!8046 (h!62447 rules!1164)))))))

(assert (= (and d!1564978 res!2080059) b!4872812))

(declare-fun m!5873864 () Bool)

(assert (=> d!1564978 m!5873864))

(declare-fun m!5873866 () Bool)

(assert (=> b!4872812 m!5873866))

(assert (=> b!4872802 d!1564978))

(declare-fun b!4872898 () Bool)

(declare-fun e!3046064 () Option!13797)

(declare-fun call!338308 () Option!13797)

(assert (=> b!4872898 (= e!3046064 call!338308)))

(declare-fun e!3046065 () Bool)

(declare-fun b!4872899 () Bool)

(declare-fun lt!1996660 () Option!13797)

(declare-fun get!19242 (Option!13797) tuple2!59864)

(declare-datatypes ((tuple2!59868 0))(
  ( (tuple2!59869 (_1!33237 Token!14676) (_2!33237 List!56121)) )
))
(declare-datatypes ((Option!13799 0))(
  ( (None!13798) (Some!13798 (v!49728 tuple2!59868)) )
))
(declare-fun get!19243 (Option!13799) tuple2!59868)

(declare-fun maxPrefix!4553 (LexerInterface!7638 List!56123 List!56121) Option!13799)

(assert (=> b!4872899 (= e!3046065 (= (list!17526 (_2!33235 (get!19242 lt!1996660))) (_2!33237 (get!19243 (maxPrefix!4553 thiss!11460 rules!1164 (list!17526 input!585))))))))

(declare-fun b!4872900 () Bool)

(declare-fun e!3046063 () Bool)

(assert (=> b!4872900 (= e!3046063 e!3046065)))

(declare-fun res!2080095 () Bool)

(assert (=> b!4872900 (=> (not res!2080095) (not e!3046065))))

(assert (=> b!4872900 (= res!2080095 (= (_1!33235 (get!19242 lt!1996660)) (_1!33237 (get!19243 (maxPrefix!4553 thiss!11460 rules!1164 (list!17526 input!585))))))))

(declare-fun b!4872902 () Bool)

(declare-fun e!3046061 () Bool)

(declare-fun e!3046062 () Bool)

(assert (=> b!4872902 (= e!3046061 e!3046062)))

(declare-fun res!2080098 () Bool)

(assert (=> b!4872902 (=> (not res!2080098) (not e!3046062))))

(declare-fun maxPrefixZipper!567 (LexerInterface!7638 List!56123 List!56121) Option!13799)

(assert (=> b!4872902 (= res!2080098 (= (_1!33235 (get!19242 lt!1996660)) (_1!33237 (get!19243 (maxPrefixZipper!567 thiss!11460 rules!1164 (list!17526 input!585))))))))

(declare-fun bm!338303 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!580 (LexerInterface!7638 Rule!15892 BalanceConc!28638) Option!13797)

(assert (=> bm!338303 (= call!338308 (maxPrefixOneRuleZipperSequence!580 thiss!11460 (h!62447 rules!1164) input!585))))

(declare-fun b!4872903 () Bool)

(assert (=> b!4872903 (= e!3046062 (= (list!17526 (_2!33235 (get!19242 lt!1996660))) (_2!33237 (get!19243 (maxPrefixZipper!567 thiss!11460 rules!1164 (list!17526 input!585))))))))

(declare-fun b!4872904 () Bool)

(declare-fun res!2080094 () Bool)

(declare-fun e!3046060 () Bool)

(assert (=> b!4872904 (=> (not res!2080094) (not e!3046060))))

(assert (=> b!4872904 (= res!2080094 e!3046061)))

(declare-fun res!2080096 () Bool)

(assert (=> b!4872904 (=> res!2080096 e!3046061)))

(declare-fun isDefined!10856 (Option!13797) Bool)

(assert (=> b!4872904 (= res!2080096 (not (isDefined!10856 lt!1996660)))))

(declare-fun b!4872905 () Bool)

(declare-fun lt!1996658 () Option!13797)

(declare-fun lt!1996662 () Option!13797)

(assert (=> b!4872905 (= e!3046064 (ite (and ((_ is None!13796) lt!1996658) ((_ is None!13796) lt!1996662)) None!13796 (ite ((_ is None!13796) lt!1996662) lt!1996658 (ite ((_ is None!13796) lt!1996658) lt!1996662 (ite (>= (size!36921 (_1!33235 (v!49726 lt!1996658))) (size!36921 (_1!33235 (v!49726 lt!1996662)))) lt!1996658 lt!1996662)))))))

(assert (=> b!4872905 (= lt!1996658 call!338308)))

(assert (=> b!4872905 (= lt!1996662 (maxPrefixZipperSequence!1237 thiss!11460 (t!364325 rules!1164) input!585))))

(declare-fun b!4872901 () Bool)

(assert (=> b!4872901 (= e!3046060 e!3046063)))

(declare-fun res!2080093 () Bool)

(assert (=> b!4872901 (=> res!2080093 e!3046063)))

(assert (=> b!4872901 (= res!2080093 (not (isDefined!10856 lt!1996660)))))

(declare-fun d!1564980 () Bool)

(assert (=> d!1564980 e!3046060))

(declare-fun res!2080097 () Bool)

(assert (=> d!1564980 (=> (not res!2080097) (not e!3046060))))

(declare-fun isDefined!10857 (Option!13799) Bool)

(assert (=> d!1564980 (= res!2080097 (= (isDefined!10856 lt!1996660) (isDefined!10857 (maxPrefixZipper!567 thiss!11460 rules!1164 (list!17526 input!585)))))))

(assert (=> d!1564980 (= lt!1996660 e!3046064)))

(declare-fun c!828807 () Bool)

(assert (=> d!1564980 (= c!828807 (and ((_ is Cons!55999) rules!1164) ((_ is Nil!55999) (t!364325 rules!1164))))))

(declare-datatypes ((Unit!145990 0))(
  ( (Unit!145991) )
))
(declare-fun lt!1996663 () Unit!145990)

(declare-fun lt!1996661 () Unit!145990)

(assert (=> d!1564980 (= lt!1996663 lt!1996661)))

(declare-fun lt!1996659 () List!56121)

(declare-fun lt!1996664 () List!56121)

(declare-fun isPrefix!4770 (List!56121 List!56121) Bool)

(assert (=> d!1564980 (isPrefix!4770 lt!1996659 lt!1996664)))

(declare-fun lemmaIsPrefixRefl!3167 (List!56121 List!56121) Unit!145990)

(assert (=> d!1564980 (= lt!1996661 (lemmaIsPrefixRefl!3167 lt!1996659 lt!1996664))))

(assert (=> d!1564980 (= lt!1996664 (list!17526 input!585))))

(assert (=> d!1564980 (= lt!1996659 (list!17526 input!585))))

(declare-fun rulesValidInductive!3025 (LexerInterface!7638 List!56123) Bool)

(assert (=> d!1564980 (rulesValidInductive!3025 thiss!11460 rules!1164)))

(assert (=> d!1564980 (= (maxPrefixZipperSequence!1237 thiss!11460 rules!1164 input!585) lt!1996660)))

(assert (= (and d!1564980 c!828807) b!4872898))

(assert (= (and d!1564980 (not c!828807)) b!4872905))

(assert (= (or b!4872898 b!4872905) bm!338303))

(assert (= (and d!1564980 res!2080097) b!4872904))

(assert (= (and b!4872904 (not res!2080096)) b!4872902))

(assert (= (and b!4872902 res!2080098) b!4872903))

(assert (= (and b!4872904 res!2080094) b!4872901))

(assert (= (and b!4872901 (not res!2080093)) b!4872900))

(assert (= (and b!4872900 res!2080095) b!4872899))

(declare-fun m!5873920 () Bool)

(assert (=> b!4872905 m!5873920))

(declare-fun m!5873922 () Bool)

(assert (=> b!4872902 m!5873922))

(assert (=> b!4872902 m!5873856))

(assert (=> b!4872902 m!5873856))

(declare-fun m!5873924 () Bool)

(assert (=> b!4872902 m!5873924))

(assert (=> b!4872902 m!5873924))

(declare-fun m!5873926 () Bool)

(assert (=> b!4872902 m!5873926))

(assert (=> d!1564980 m!5873924))

(declare-fun m!5873928 () Bool)

(assert (=> d!1564980 m!5873928))

(assert (=> d!1564980 m!5873856))

(assert (=> d!1564980 m!5873924))

(declare-fun m!5873930 () Bool)

(assert (=> d!1564980 m!5873930))

(declare-fun m!5873932 () Bool)

(assert (=> d!1564980 m!5873932))

(assert (=> d!1564980 m!5873856))

(declare-fun m!5873934 () Bool)

(assert (=> d!1564980 m!5873934))

(declare-fun m!5873936 () Bool)

(assert (=> d!1564980 m!5873936))

(assert (=> b!4872900 m!5873922))

(assert (=> b!4872900 m!5873856))

(assert (=> b!4872900 m!5873856))

(declare-fun m!5873938 () Bool)

(assert (=> b!4872900 m!5873938))

(assert (=> b!4872900 m!5873938))

(declare-fun m!5873940 () Bool)

(assert (=> b!4872900 m!5873940))

(assert (=> b!4872903 m!5873856))

(assert (=> b!4872903 m!5873924))

(assert (=> b!4872903 m!5873856))

(assert (=> b!4872903 m!5873924))

(assert (=> b!4872903 m!5873926))

(declare-fun m!5873942 () Bool)

(assert (=> b!4872903 m!5873942))

(assert (=> b!4872903 m!5873922))

(assert (=> b!4872901 m!5873936))

(declare-fun m!5873944 () Bool)

(assert (=> bm!338303 m!5873944))

(assert (=> b!4872904 m!5873936))

(assert (=> b!4872899 m!5873942))

(assert (=> b!4872899 m!5873922))

(assert (=> b!4872899 m!5873856))

(assert (=> b!4872899 m!5873938))

(assert (=> b!4872899 m!5873938))

(assert (=> b!4872899 m!5873940))

(assert (=> b!4872899 m!5873856))

(assert (=> b!4872796 d!1564980))

(declare-fun d!1564990 () Bool)

(declare-fun res!2080101 () Bool)

(declare-fun e!3046068 () Bool)

(assert (=> d!1564990 (=> (not res!2080101) (not e!3046068))))

(declare-fun rulesValid!3126 (LexerInterface!7638 List!56123) Bool)

(assert (=> d!1564990 (= res!2080101 (rulesValid!3126 thiss!11460 rules!1164))))

(assert (=> d!1564990 (= (rulesInvariant!6736 thiss!11460 rules!1164) e!3046068)))

(declare-fun b!4872908 () Bool)

(declare-datatypes ((List!56125 0))(
  ( (Nil!56001) (Cons!56001 (h!62449 String!63198) (t!364327 List!56125)) )
))
(declare-fun noDuplicateTag!3287 (LexerInterface!7638 List!56123 List!56125) Bool)

(assert (=> b!4872908 (= e!3046068 (noDuplicateTag!3287 thiss!11460 rules!1164 Nil!56001))))

(assert (= (and d!1564990 res!2080101) b!4872908))

(declare-fun m!5873946 () Bool)

(assert (=> d!1564990 m!5873946))

(declare-fun m!5873948 () Bool)

(assert (=> b!4872908 m!5873948))

(assert (=> b!4872801 d!1564990))

(declare-fun d!1564992 () Bool)

(declare-fun c!828810 () Bool)

(assert (=> d!1564992 (= c!828810 ((_ is Node!14598) (c!828795 input!585)))))

(declare-fun e!3046073 () Bool)

(assert (=> d!1564992 (= (inv!71928 (c!828795 input!585)) e!3046073)))

(declare-fun b!4872915 () Bool)

(declare-fun inv!71933 (Conc!14598) Bool)

(assert (=> b!4872915 (= e!3046073 (inv!71933 (c!828795 input!585)))))

(declare-fun b!4872916 () Bool)

(declare-fun e!3046074 () Bool)

(assert (=> b!4872916 (= e!3046073 e!3046074)))

(declare-fun res!2080104 () Bool)

(assert (=> b!4872916 (= res!2080104 (not ((_ is Leaf!24332) (c!828795 input!585))))))

(assert (=> b!4872916 (=> res!2080104 e!3046074)))

(declare-fun b!4872917 () Bool)

(declare-fun inv!71934 (Conc!14598) Bool)

(assert (=> b!4872917 (= e!3046074 (inv!71934 (c!828795 input!585)))))

(assert (= (and d!1564992 c!828810) b!4872915))

(assert (= (and d!1564992 (not c!828810)) b!4872916))

(assert (= (and b!4872916 (not res!2080104)) b!4872917))

(declare-fun m!5873950 () Bool)

(assert (=> b!4872915 m!5873950))

(declare-fun m!5873952 () Bool)

(assert (=> b!4872917 m!5873952))

(assert (=> b!4872799 d!1564992))

(declare-fun d!1564994 () Bool)

(assert (=> d!1564994 (= (isEmpty!29977 rules!1164) ((_ is Nil!55999) rules!1164))))

(assert (=> b!4872798 d!1564994))

(declare-fun b!4872931 () Bool)

(declare-fun e!3046077 () Bool)

(declare-fun tp!1371130 () Bool)

(declare-fun tp!1371132 () Bool)

(assert (=> b!4872931 (= e!3046077 (and tp!1371130 tp!1371132))))

(assert (=> b!4872802 (= tp!1371079 e!3046077)))

(declare-fun b!4872930 () Bool)

(declare-fun tp!1371134 () Bool)

(assert (=> b!4872930 (= e!3046077 tp!1371134)))

(declare-fun b!4872928 () Bool)

(declare-fun tp_is_empty!35671 () Bool)

(assert (=> b!4872928 (= e!3046077 tp_is_empty!35671)))

(declare-fun b!4872929 () Bool)

(declare-fun tp!1371131 () Bool)

(declare-fun tp!1371133 () Bool)

(assert (=> b!4872929 (= e!3046077 (and tp!1371131 tp!1371133))))

(assert (= (and b!4872802 ((_ is ElementMatch!13121) (regex!8046 (h!62447 rules!1164)))) b!4872928))

(assert (= (and b!4872802 ((_ is Concat!21478) (regex!8046 (h!62447 rules!1164)))) b!4872929))

(assert (= (and b!4872802 ((_ is Star!13121) (regex!8046 (h!62447 rules!1164)))) b!4872930))

(assert (= (and b!4872802 ((_ is Union!13121) (regex!8046 (h!62447 rules!1164)))) b!4872931))

(declare-fun b!4872942 () Bool)

(declare-fun b_free!130771 () Bool)

(declare-fun b_next!131561 () Bool)

(assert (=> b!4872942 (= b_free!130771 (not b_next!131561))))

(declare-fun tp!1371145 () Bool)

(declare-fun b_and!343179 () Bool)

(assert (=> b!4872942 (= tp!1371145 b_and!343179)))

(declare-fun b_free!130773 () Bool)

(declare-fun b_next!131563 () Bool)

(assert (=> b!4872942 (= b_free!130773 (not b_next!131563))))

(declare-fun tp!1371146 () Bool)

(declare-fun b_and!343181 () Bool)

(assert (=> b!4872942 (= tp!1371146 b_and!343181)))

(declare-fun e!3046087 () Bool)

(assert (=> b!4872942 (= e!3046087 (and tp!1371145 tp!1371146))))

(declare-fun e!3046089 () Bool)

(declare-fun tp!1371143 () Bool)

(declare-fun b!4872941 () Bool)

(assert (=> b!4872941 (= e!3046089 (and tp!1371143 (inv!71923 (tag!8910 (h!62447 (t!364325 rules!1164)))) (inv!71929 (transformation!8046 (h!62447 (t!364325 rules!1164)))) e!3046087))))

(declare-fun b!4872940 () Bool)

(declare-fun e!3046088 () Bool)

(declare-fun tp!1371144 () Bool)

(assert (=> b!4872940 (= e!3046088 (and e!3046089 tp!1371144))))

(assert (=> b!4872800 (= tp!1371082 e!3046088)))

(assert (= b!4872941 b!4872942))

(assert (= b!4872940 b!4872941))

(assert (= (and b!4872800 ((_ is Cons!55999) (t!364325 rules!1164))) b!4872940))

(declare-fun m!5873954 () Bool)

(assert (=> b!4872941 m!5873954))

(declare-fun m!5873956 () Bool)

(assert (=> b!4872941 m!5873956))

(declare-fun tp!1371153 () Bool)

(declare-fun tp!1371154 () Bool)

(declare-fun b!4872951 () Bool)

(declare-fun e!3046094 () Bool)

(assert (=> b!4872951 (= e!3046094 (and (inv!71928 (left!40673 (c!828795 input!585))) tp!1371154 (inv!71928 (right!41003 (c!828795 input!585))) tp!1371153))))

(declare-fun b!4872953 () Bool)

(declare-fun e!3046095 () Bool)

(declare-fun tp!1371155 () Bool)

(assert (=> b!4872953 (= e!3046095 tp!1371155)))

(declare-fun b!4872952 () Bool)

(declare-fun inv!71935 (IArray!29257) Bool)

(assert (=> b!4872952 (= e!3046094 (and (inv!71935 (xs!17906 (c!828795 input!585))) e!3046095))))

(assert (=> b!4872799 (= tp!1371080 (and (inv!71928 (c!828795 input!585)) e!3046094))))

(assert (= (and b!4872799 ((_ is Node!14598) (c!828795 input!585))) b!4872951))

(assert (= b!4872952 b!4872953))

(assert (= (and b!4872799 ((_ is Leaf!24332) (c!828795 input!585))) b!4872952))

(declare-fun m!5873958 () Bool)

(assert (=> b!4872951 m!5873958))

(declare-fun m!5873960 () Bool)

(assert (=> b!4872951 m!5873960))

(declare-fun m!5873962 () Bool)

(assert (=> b!4872952 m!5873962))

(assert (=> b!4872799 m!5873826))

(check-sat (not b!4872900) (not b!4872953) (not b!4872903) (not b!4872901) (not b!4872812) (not b!4872905) (not b!4872951) (not b_next!131555) (not b_next!131561) (not b_next!131563) (not b!4872929) (not b!4872930) (not b!4872899) b_and!343181 (not d!1564974) (not b!4872908) (not d!1564968) b_and!343173 b_and!343179 (not b!4872931) tp_is_empty!35671 (not b!4872915) (not b!4872940) (not d!1564990) (not d!1564980) (not b!4872952) (not d!1564978) b_and!343171 (not b!4872917) (not b!4872799) (not b!4872902) (not b!4872941) (not b_next!131553) (not b!4872904) (not bm!338303) (not d!1564972))
(check-sat b_and!343171 (not b_next!131555) (not b_next!131561) (not b_next!131553) (not b_next!131563) b_and!343181 b_and!343173 b_and!343179)
(get-model)

(declare-fun d!1564998 () Bool)

(assert (=> d!1564998 (= (get!19242 lt!1996660) (v!49726 lt!1996660))))

(assert (=> b!4872902 d!1564998))

(declare-fun d!1565000 () Bool)

(assert (=> d!1565000 (= (get!19243 (maxPrefixZipper!567 thiss!11460 rules!1164 (list!17526 input!585))) (v!49728 (maxPrefixZipper!567 thiss!11460 rules!1164 (list!17526 input!585))))))

(assert (=> b!4872902 d!1565000))

(declare-fun d!1565002 () Bool)

(declare-fun lt!1996681 () Option!13799)

(assert (=> d!1565002 (= lt!1996681 (maxPrefix!4553 thiss!11460 rules!1164 (list!17526 input!585)))))

(declare-fun e!3046098 () Option!13799)

(assert (=> d!1565002 (= lt!1996681 e!3046098)))

(declare-fun c!828813 () Bool)

(assert (=> d!1565002 (= c!828813 (and ((_ is Cons!55999) rules!1164) ((_ is Nil!55999) (t!364325 rules!1164))))))

(declare-fun lt!1996679 () Unit!145990)

(declare-fun lt!1996678 () Unit!145990)

(assert (=> d!1565002 (= lt!1996679 lt!1996678)))

(assert (=> d!1565002 (isPrefix!4770 (list!17526 input!585) (list!17526 input!585))))

(assert (=> d!1565002 (= lt!1996678 (lemmaIsPrefixRefl!3167 (list!17526 input!585) (list!17526 input!585)))))

(assert (=> d!1565002 (rulesValidInductive!3025 thiss!11460 rules!1164)))

(assert (=> d!1565002 (= (maxPrefixZipper!567 thiss!11460 rules!1164 (list!17526 input!585)) lt!1996681)))

(declare-fun call!338311 () Option!13799)

(declare-fun bm!338306 () Bool)

(declare-fun maxPrefixOneRuleZipper!229 (LexerInterface!7638 Rule!15892 List!56121) Option!13799)

(assert (=> bm!338306 (= call!338311 (maxPrefixOneRuleZipper!229 thiss!11460 (h!62447 rules!1164) (list!17526 input!585)))))

(declare-fun b!4872958 () Bool)

(assert (=> b!4872958 (= e!3046098 call!338311)))

(declare-fun b!4872959 () Bool)

(declare-fun lt!1996677 () Option!13799)

(declare-fun lt!1996680 () Option!13799)

(assert (=> b!4872959 (= e!3046098 (ite (and ((_ is None!13798) lt!1996677) ((_ is None!13798) lt!1996680)) None!13798 (ite ((_ is None!13798) lt!1996680) lt!1996677 (ite ((_ is None!13798) lt!1996677) lt!1996680 (ite (>= (size!36921 (_1!33237 (v!49728 lt!1996677))) (size!36921 (_1!33237 (v!49728 lt!1996680)))) lt!1996677 lt!1996680)))))))

(assert (=> b!4872959 (= lt!1996677 call!338311)))

(assert (=> b!4872959 (= lt!1996680 (maxPrefixZipper!567 thiss!11460 (t!364325 rules!1164) (list!17526 input!585)))))

(assert (= (and d!1565002 c!828813) b!4872958))

(assert (= (and d!1565002 (not c!828813)) b!4872959))

(assert (= (or b!4872958 b!4872959) bm!338306))

(assert (=> d!1565002 m!5873856))

(assert (=> d!1565002 m!5873938))

(assert (=> d!1565002 m!5873856))

(assert (=> d!1565002 m!5873856))

(declare-fun m!5873964 () Bool)

(assert (=> d!1565002 m!5873964))

(assert (=> d!1565002 m!5873856))

(assert (=> d!1565002 m!5873856))

(declare-fun m!5873966 () Bool)

(assert (=> d!1565002 m!5873966))

(assert (=> d!1565002 m!5873932))

(assert (=> bm!338306 m!5873856))

(declare-fun m!5873968 () Bool)

(assert (=> bm!338306 m!5873968))

(assert (=> b!4872959 m!5873856))

(declare-fun m!5873970 () Bool)

(assert (=> b!4872959 m!5873970))

(assert (=> b!4872902 d!1565002))

(declare-fun d!1565004 () Bool)

(declare-fun list!17529 (Conc!14598) List!56121)

(assert (=> d!1565004 (= (list!17526 input!585) (list!17529 (c!828795 input!585)))))

(declare-fun bs!1174797 () Bool)

(assert (= bs!1174797 d!1565004))

(declare-fun m!5873972 () Bool)

(assert (=> bs!1174797 m!5873972))

(assert (=> b!4872902 d!1565004))

(declare-fun d!1565006 () Bool)

(declare-fun lt!1996684 () Int)

(assert (=> d!1565006 (>= lt!1996684 0)))

(declare-fun e!3046101 () Int)

(assert (=> d!1565006 (= lt!1996684 e!3046101)))

(declare-fun c!828816 () Bool)

(assert (=> d!1565006 (= c!828816 ((_ is Nil!55997) (list!17526 input!585)))))

(assert (=> d!1565006 (= (size!36925 (list!17526 input!585)) lt!1996684)))

(declare-fun b!4872964 () Bool)

(assert (=> b!4872964 (= e!3046101 0)))

(declare-fun b!4872965 () Bool)

(assert (=> b!4872965 (= e!3046101 (+ 1 (size!36925 (t!364323 (list!17526 input!585)))))))

(assert (= (and d!1565006 c!828816) b!4872964))

(assert (= (and d!1565006 (not c!828816)) b!4872965))

(declare-fun m!5873974 () Bool)

(assert (=> b!4872965 m!5873974))

(assert (=> d!1564972 d!1565006))

(assert (=> d!1564972 d!1565004))

(declare-fun d!1565008 () Bool)

(declare-fun lt!1996687 () Int)

(assert (=> d!1565008 (= lt!1996687 (size!36925 (list!17529 (c!828795 input!585))))))

(assert (=> d!1565008 (= lt!1996687 (ite ((_ is Empty!14598) (c!828795 input!585)) 0 (ite ((_ is Leaf!24332) (c!828795 input!585)) (csize!29427 (c!828795 input!585)) (csize!29426 (c!828795 input!585)))))))

(assert (=> d!1565008 (= (size!36926 (c!828795 input!585)) lt!1996687)))

(declare-fun bs!1174798 () Bool)

(assert (= bs!1174798 d!1565008))

(assert (=> bs!1174798 m!5873972))

(assert (=> bs!1174798 m!5873972))

(declare-fun m!5873976 () Bool)

(assert (=> bs!1174798 m!5873976))

(assert (=> d!1564972 d!1565008))

(declare-fun d!1565010 () Bool)

(assert (=> d!1565010 true))

(declare-fun lt!1996773 () Bool)

(assert (=> d!1565010 (= lt!1996773 (rulesValidInductive!3025 thiss!11460 rules!1164))))

(declare-fun lambda!243558 () Int)

(declare-fun forall!13054 (List!56123 Int) Bool)

(assert (=> d!1565010 (= lt!1996773 (forall!13054 rules!1164 lambda!243558))))

(assert (=> d!1565010 (= (rulesValid!3126 thiss!11460 rules!1164) lt!1996773)))

(declare-fun bs!1174811 () Bool)

(assert (= bs!1174811 d!1565010))

(assert (=> bs!1174811 m!5873932))

(declare-fun m!5874136 () Bool)

(assert (=> bs!1174811 m!5874136))

(assert (=> d!1564990 d!1565010))

(declare-fun d!1565060 () Bool)

(assert (=> d!1565060 (= (inv!71923 (tag!8910 (h!62447 (t!364325 rules!1164)))) (= (mod (str.len (value!258452 (tag!8910 (h!62447 (t!364325 rules!1164))))) 2) 0))))

(assert (=> b!4872941 d!1565060))

(declare-fun d!1565062 () Bool)

(declare-fun res!2080204 () Bool)

(declare-fun e!3046171 () Bool)

(assert (=> d!1565062 (=> (not res!2080204) (not e!3046171))))

(assert (=> d!1565062 (= res!2080204 (semiInverseModEq!3550 (toChars!10780 (transformation!8046 (h!62447 (t!364325 rules!1164)))) (toValue!10921 (transformation!8046 (h!62447 (t!364325 rules!1164))))))))

(assert (=> d!1565062 (= (inv!71929 (transformation!8046 (h!62447 (t!364325 rules!1164)))) e!3046171)))

(declare-fun b!4873096 () Bool)

(assert (=> b!4873096 (= e!3046171 (equivClasses!3429 (toChars!10780 (transformation!8046 (h!62447 (t!364325 rules!1164)))) (toValue!10921 (transformation!8046 (h!62447 (t!364325 rules!1164))))))))

(assert (= (and d!1565062 res!2080204) b!4873096))

(declare-fun m!5874138 () Bool)

(assert (=> d!1565062 m!5874138))

(declare-fun m!5874140 () Bool)

(assert (=> b!4873096 m!5874140))

(assert (=> b!4872941 d!1565062))

(declare-fun d!1565064 () Bool)

(declare-fun res!2080214 () Bool)

(declare-fun e!3046179 () Bool)

(assert (=> d!1565064 (=> (not res!2080214) (not e!3046179))))

(declare-fun list!17530 (IArray!29257) List!56121)

(assert (=> d!1565064 (= res!2080214 (<= (size!36925 (list!17530 (xs!17906 (c!828795 input!585)))) 512))))

(assert (=> d!1565064 (= (inv!71934 (c!828795 input!585)) e!3046179)))

(declare-fun b!4873110 () Bool)

(declare-fun res!2080215 () Bool)

(assert (=> b!4873110 (=> (not res!2080215) (not e!3046179))))

(assert (=> b!4873110 (= res!2080215 (= (csize!29427 (c!828795 input!585)) (size!36925 (list!17530 (xs!17906 (c!828795 input!585))))))))

(declare-fun b!4873111 () Bool)

(assert (=> b!4873111 (= e!3046179 (and (> (csize!29427 (c!828795 input!585)) 0) (<= (csize!29427 (c!828795 input!585)) 512)))))

(assert (= (and d!1565064 res!2080214) b!4873110))

(assert (= (and b!4873110 res!2080215) b!4873111))

(declare-fun m!5874156 () Bool)

(assert (=> d!1565064 m!5874156))

(assert (=> d!1565064 m!5874156))

(declare-fun m!5874158 () Bool)

(assert (=> d!1565064 m!5874158))

(assert (=> b!4873110 m!5874156))

(assert (=> b!4873110 m!5874156))

(assert (=> b!4873110 m!5874158))

(assert (=> b!4872917 d!1565064))

(declare-fun b!4873134 () Bool)

(declare-fun e!3046194 () Bool)

(declare-fun isEmpty!29983 (Conc!14598) Bool)

(assert (=> b!4873134 (= e!3046194 (not (isEmpty!29983 (right!41003 (c!828795 input!585)))))))

(declare-fun b!4873135 () Bool)

(declare-fun e!3046193 () Bool)

(assert (=> b!4873135 (= e!3046193 e!3046194)))

(declare-fun res!2080236 () Bool)

(assert (=> b!4873135 (=> (not res!2080236) (not e!3046194))))

(declare-fun height!1935 (Conc!14598) Int)

(assert (=> b!4873135 (= res!2080236 (<= (- 1) (- (height!1935 (left!40673 (c!828795 input!585))) (height!1935 (right!41003 (c!828795 input!585))))))))

(declare-fun b!4873136 () Bool)

(declare-fun res!2080240 () Bool)

(assert (=> b!4873136 (=> (not res!2080240) (not e!3046194))))

(assert (=> b!4873136 (= res!2080240 (isBalanced!3962 (right!41003 (c!828795 input!585))))))

(declare-fun b!4873137 () Bool)

(declare-fun res!2080241 () Bool)

(assert (=> b!4873137 (=> (not res!2080241) (not e!3046194))))

(assert (=> b!4873137 (= res!2080241 (not (isEmpty!29983 (left!40673 (c!828795 input!585)))))))

(declare-fun b!4873139 () Bool)

(declare-fun res!2080239 () Bool)

(assert (=> b!4873139 (=> (not res!2080239) (not e!3046194))))

(assert (=> b!4873139 (= res!2080239 (<= (- (height!1935 (left!40673 (c!828795 input!585))) (height!1935 (right!41003 (c!828795 input!585)))) 1))))

(declare-fun b!4873138 () Bool)

(declare-fun res!2080238 () Bool)

(assert (=> b!4873138 (=> (not res!2080238) (not e!3046194))))

(assert (=> b!4873138 (= res!2080238 (isBalanced!3962 (left!40673 (c!828795 input!585))))))

(declare-fun d!1565072 () Bool)

(declare-fun res!2080237 () Bool)

(assert (=> d!1565072 (=> res!2080237 e!3046193)))

(assert (=> d!1565072 (= res!2080237 (not ((_ is Node!14598) (c!828795 input!585))))))

(assert (=> d!1565072 (= (isBalanced!3962 (c!828795 input!585)) e!3046193)))

(assert (= (and d!1565072 (not res!2080237)) b!4873135))

(assert (= (and b!4873135 res!2080236) b!4873139))

(assert (= (and b!4873139 res!2080239) b!4873138))

(assert (= (and b!4873138 res!2080238) b!4873136))

(assert (= (and b!4873136 res!2080240) b!4873137))

(assert (= (and b!4873137 res!2080241) b!4873134))

(declare-fun m!5874168 () Bool)

(assert (=> b!4873137 m!5874168))

(declare-fun m!5874170 () Bool)

(assert (=> b!4873138 m!5874170))

(declare-fun m!5874172 () Bool)

(assert (=> b!4873134 m!5874172))

(declare-fun m!5874174 () Bool)

(assert (=> b!4873135 m!5874174))

(declare-fun m!5874176 () Bool)

(assert (=> b!4873135 m!5874176))

(declare-fun m!5874178 () Bool)

(assert (=> b!4873136 m!5874178))

(assert (=> b!4873139 m!5874174))

(assert (=> b!4873139 m!5874176))

(assert (=> d!1564974 d!1565072))

(declare-fun d!1565080 () Bool)

(declare-fun isEmpty!29984 (Option!13797) Bool)

(assert (=> d!1565080 (= (isDefined!10856 lt!1996660) (not (isEmpty!29984 lt!1996660)))))

(declare-fun bs!1174814 () Bool)

(assert (= bs!1174814 d!1565080))

(declare-fun m!5874182 () Bool)

(assert (=> bs!1174814 m!5874182))

(assert (=> b!4872901 d!1565080))

(assert (=> b!4872900 d!1564998))

(declare-fun d!1565082 () Bool)

(assert (=> d!1565082 (= (get!19243 (maxPrefix!4553 thiss!11460 rules!1164 (list!17526 input!585))) (v!49728 (maxPrefix!4553 thiss!11460 rules!1164 (list!17526 input!585))))))

(assert (=> b!4872900 d!1565082))

(declare-fun b!4873198 () Bool)

(declare-fun res!2080262 () Bool)

(declare-fun e!3046219 () Bool)

(assert (=> b!4873198 (=> (not res!2080262) (not e!3046219))))

(declare-fun lt!1996788 () Option!13799)

(declare-fun matchR!6496 (Regex!13121 List!56121) Bool)

(declare-fun charsOf!5345 (Token!14676) BalanceConc!28638)

(assert (=> b!4873198 (= res!2080262 (matchR!6496 (regex!8046 (rule!11190 (_1!33237 (get!19243 lt!1996788)))) (list!17526 (charsOf!5345 (_1!33237 (get!19243 lt!1996788))))))))

(declare-fun b!4873199 () Bool)

(declare-fun e!3046218 () Bool)

(assert (=> b!4873199 (= e!3046218 e!3046219)))

(declare-fun res!2080258 () Bool)

(assert (=> b!4873199 (=> (not res!2080258) (not e!3046219))))

(assert (=> b!4873199 (= res!2080258 (isDefined!10857 lt!1996788))))

(declare-fun b!4873200 () Bool)

(declare-fun res!2080261 () Bool)

(assert (=> b!4873200 (=> (not res!2080261) (not e!3046219))))

(declare-fun ++!12199 (List!56121 List!56121) List!56121)

(assert (=> b!4873200 (= res!2080261 (= (++!12199 (list!17526 (charsOf!5345 (_1!33237 (get!19243 lt!1996788)))) (_2!33237 (get!19243 lt!1996788))) (list!17526 input!585)))))

(declare-fun b!4873201 () Bool)

(declare-fun e!3046220 () Option!13799)

(declare-fun call!338321 () Option!13799)

(assert (=> b!4873201 (= e!3046220 call!338321)))

(declare-fun b!4873202 () Bool)

(declare-fun res!2080257 () Bool)

(assert (=> b!4873202 (=> (not res!2080257) (not e!3046219))))

(declare-fun apply!13506 (TokenValueInjection!16020 BalanceConc!28638) TokenValue!8356)

(declare-fun seqFromList!5902 (List!56121) BalanceConc!28638)

(assert (=> b!4873202 (= res!2080257 (= (value!258453 (_1!33237 (get!19243 lt!1996788))) (apply!13506 (transformation!8046 (rule!11190 (_1!33237 (get!19243 lt!1996788)))) (seqFromList!5902 (originalCharacters!8369 (_1!33237 (get!19243 lt!1996788)))))))))

(declare-fun bm!338316 () Bool)

(declare-fun maxPrefixOneRule!3495 (LexerInterface!7638 Rule!15892 List!56121) Option!13799)

(assert (=> bm!338316 (= call!338321 (maxPrefixOneRule!3495 thiss!11460 (h!62447 rules!1164) (list!17526 input!585)))))

(declare-fun b!4873203 () Bool)

(declare-fun res!2080260 () Bool)

(assert (=> b!4873203 (=> (not res!2080260) (not e!3046219))))

(assert (=> b!4873203 (= res!2080260 (= (list!17526 (charsOf!5345 (_1!33237 (get!19243 lt!1996788)))) (originalCharacters!8369 (_1!33237 (get!19243 lt!1996788)))))))

(declare-fun b!4873204 () Bool)

(declare-fun lt!1996789 () Option!13799)

(declare-fun lt!1996786 () Option!13799)

(assert (=> b!4873204 (= e!3046220 (ite (and ((_ is None!13798) lt!1996789) ((_ is None!13798) lt!1996786)) None!13798 (ite ((_ is None!13798) lt!1996786) lt!1996789 (ite ((_ is None!13798) lt!1996789) lt!1996786 (ite (>= (size!36921 (_1!33237 (v!49728 lt!1996789))) (size!36921 (_1!33237 (v!49728 lt!1996786)))) lt!1996789 lt!1996786)))))))

(assert (=> b!4873204 (= lt!1996789 call!338321)))

(assert (=> b!4873204 (= lt!1996786 (maxPrefix!4553 thiss!11460 (t!364325 rules!1164) (list!17526 input!585)))))

(declare-fun d!1565084 () Bool)

(assert (=> d!1565084 e!3046218))

(declare-fun res!2080256 () Bool)

(assert (=> d!1565084 (=> res!2080256 e!3046218)))

(declare-fun isEmpty!29985 (Option!13799) Bool)

(assert (=> d!1565084 (= res!2080256 (isEmpty!29985 lt!1996788))))

(assert (=> d!1565084 (= lt!1996788 e!3046220)))

(declare-fun c!828835 () Bool)

(assert (=> d!1565084 (= c!828835 (and ((_ is Cons!55999) rules!1164) ((_ is Nil!55999) (t!364325 rules!1164))))))

(declare-fun lt!1996787 () Unit!145990)

(declare-fun lt!1996790 () Unit!145990)

(assert (=> d!1565084 (= lt!1996787 lt!1996790)))

(assert (=> d!1565084 (isPrefix!4770 (list!17526 input!585) (list!17526 input!585))))

(assert (=> d!1565084 (= lt!1996790 (lemmaIsPrefixRefl!3167 (list!17526 input!585) (list!17526 input!585)))))

(assert (=> d!1565084 (rulesValidInductive!3025 thiss!11460 rules!1164)))

(assert (=> d!1565084 (= (maxPrefix!4553 thiss!11460 rules!1164 (list!17526 input!585)) lt!1996788)))

(declare-fun b!4873205 () Bool)

(declare-fun contains!19403 (List!56123 Rule!15892) Bool)

(assert (=> b!4873205 (= e!3046219 (contains!19403 rules!1164 (rule!11190 (_1!33237 (get!19243 lt!1996788)))))))

(declare-fun b!4873206 () Bool)

(declare-fun res!2080259 () Bool)

(assert (=> b!4873206 (=> (not res!2080259) (not e!3046219))))

(assert (=> b!4873206 (= res!2080259 (< (size!36925 (_2!33237 (get!19243 lt!1996788))) (size!36925 (list!17526 input!585))))))

(assert (= (and d!1565084 c!828835) b!4873201))

(assert (= (and d!1565084 (not c!828835)) b!4873204))

(assert (= (or b!4873201 b!4873204) bm!338316))

(assert (= (and d!1565084 (not res!2080256)) b!4873199))

(assert (= (and b!4873199 res!2080258) b!4873203))

(assert (= (and b!4873203 res!2080260) b!4873206))

(assert (= (and b!4873206 res!2080259) b!4873200))

(assert (= (and b!4873200 res!2080261) b!4873202))

(assert (= (and b!4873202 res!2080257) b!4873198))

(assert (= (and b!4873198 res!2080262) b!4873205))

(declare-fun m!5874200 () Bool)

(assert (=> b!4873203 m!5874200))

(declare-fun m!5874202 () Bool)

(assert (=> b!4873203 m!5874202))

(assert (=> b!4873203 m!5874202))

(declare-fun m!5874204 () Bool)

(assert (=> b!4873203 m!5874204))

(assert (=> b!4873198 m!5874200))

(assert (=> b!4873198 m!5874202))

(assert (=> b!4873198 m!5874202))

(assert (=> b!4873198 m!5874204))

(assert (=> b!4873198 m!5874204))

(declare-fun m!5874206 () Bool)

(assert (=> b!4873198 m!5874206))

(assert (=> b!4873200 m!5874200))

(assert (=> b!4873200 m!5874202))

(assert (=> b!4873200 m!5874202))

(assert (=> b!4873200 m!5874204))

(assert (=> b!4873200 m!5874204))

(declare-fun m!5874208 () Bool)

(assert (=> b!4873200 m!5874208))

(assert (=> b!4873205 m!5874200))

(declare-fun m!5874210 () Bool)

(assert (=> b!4873205 m!5874210))

(assert (=> b!4873204 m!5873856))

(declare-fun m!5874212 () Bool)

(assert (=> b!4873204 m!5874212))

(assert (=> b!4873202 m!5874200))

(declare-fun m!5874214 () Bool)

(assert (=> b!4873202 m!5874214))

(assert (=> b!4873202 m!5874214))

(declare-fun m!5874216 () Bool)

(assert (=> b!4873202 m!5874216))

(declare-fun m!5874218 () Bool)

(assert (=> d!1565084 m!5874218))

(assert (=> d!1565084 m!5873856))

(assert (=> d!1565084 m!5873856))

(assert (=> d!1565084 m!5873964))

(assert (=> d!1565084 m!5873856))

(assert (=> d!1565084 m!5873856))

(assert (=> d!1565084 m!5873966))

(assert (=> d!1565084 m!5873932))

(declare-fun m!5874220 () Bool)

(assert (=> b!4873199 m!5874220))

(assert (=> bm!338316 m!5873856))

(declare-fun m!5874222 () Bool)

(assert (=> bm!338316 m!5874222))

(assert (=> b!4873206 m!5874200))

(declare-fun m!5874224 () Bool)

(assert (=> b!4873206 m!5874224))

(assert (=> b!4873206 m!5873856))

(assert (=> b!4873206 m!5873858))

(assert (=> b!4872900 d!1565084))

(assert (=> b!4872900 d!1565004))

(declare-fun d!1565086 () Bool)

(declare-fun e!3046228 () Bool)

(assert (=> d!1565086 e!3046228))

(declare-fun res!2080271 () Bool)

(assert (=> d!1565086 (=> res!2080271 e!3046228)))

(declare-fun lt!1996793 () Bool)

(assert (=> d!1565086 (= res!2080271 (not lt!1996793))))

(declare-fun e!3046229 () Bool)

(assert (=> d!1565086 (= lt!1996793 e!3046229)))

(declare-fun res!2080273 () Bool)

(assert (=> d!1565086 (=> res!2080273 e!3046229)))

(assert (=> d!1565086 (= res!2080273 ((_ is Nil!55997) lt!1996659))))

(assert (=> d!1565086 (= (isPrefix!4770 lt!1996659 lt!1996664) lt!1996793)))

(declare-fun b!4873215 () Bool)

(declare-fun e!3046227 () Bool)

(assert (=> b!4873215 (= e!3046229 e!3046227)))

(declare-fun res!2080274 () Bool)

(assert (=> b!4873215 (=> (not res!2080274) (not e!3046227))))

(assert (=> b!4873215 (= res!2080274 (not ((_ is Nil!55997) lt!1996664)))))

(declare-fun b!4873216 () Bool)

(declare-fun res!2080272 () Bool)

(assert (=> b!4873216 (=> (not res!2080272) (not e!3046227))))

(declare-fun head!10418 (List!56121) C!26440)

(assert (=> b!4873216 (= res!2080272 (= (head!10418 lt!1996659) (head!10418 lt!1996664)))))

(declare-fun b!4873218 () Bool)

(assert (=> b!4873218 (= e!3046228 (>= (size!36925 lt!1996664) (size!36925 lt!1996659)))))

(declare-fun b!4873217 () Bool)

(declare-fun tail!9564 (List!56121) List!56121)

(assert (=> b!4873217 (= e!3046227 (isPrefix!4770 (tail!9564 lt!1996659) (tail!9564 lt!1996664)))))

(assert (= (and d!1565086 (not res!2080273)) b!4873215))

(assert (= (and b!4873215 res!2080274) b!4873216))

(assert (= (and b!4873216 res!2080272) b!4873217))

(assert (= (and d!1565086 (not res!2080271)) b!4873218))

(declare-fun m!5874226 () Bool)

(assert (=> b!4873216 m!5874226))

(declare-fun m!5874228 () Bool)

(assert (=> b!4873216 m!5874228))

(declare-fun m!5874230 () Bool)

(assert (=> b!4873218 m!5874230))

(declare-fun m!5874232 () Bool)

(assert (=> b!4873218 m!5874232))

(declare-fun m!5874234 () Bool)

(assert (=> b!4873217 m!5874234))

(declare-fun m!5874236 () Bool)

(assert (=> b!4873217 m!5874236))

(assert (=> b!4873217 m!5874234))

(assert (=> b!4873217 m!5874236))

(declare-fun m!5874238 () Bool)

(assert (=> b!4873217 m!5874238))

(assert (=> d!1564980 d!1565086))

(assert (=> d!1564980 d!1565002))

(declare-fun d!1565088 () Bool)

(assert (=> d!1565088 (= (isDefined!10857 (maxPrefixZipper!567 thiss!11460 rules!1164 (list!17526 input!585))) (not (isEmpty!29985 (maxPrefixZipper!567 thiss!11460 rules!1164 (list!17526 input!585)))))))

(declare-fun bs!1174815 () Bool)

(assert (= bs!1174815 d!1565088))

(assert (=> bs!1174815 m!5873924))

(declare-fun m!5874240 () Bool)

(assert (=> bs!1174815 m!5874240))

(assert (=> d!1564980 d!1565088))

(declare-fun bs!1174816 () Bool)

(declare-fun d!1565090 () Bool)

(assert (= bs!1174816 (and d!1565090 d!1565010)))

(declare-fun lambda!243564 () Int)

(assert (=> bs!1174816 (= lambda!243564 lambda!243558)))

(assert (=> d!1565090 true))

(declare-fun lt!1996796 () Bool)

(assert (=> d!1565090 (= lt!1996796 (forall!13054 rules!1164 lambda!243564))))

(declare-fun e!3046234 () Bool)

(assert (=> d!1565090 (= lt!1996796 e!3046234)))

(declare-fun res!2080280 () Bool)

(assert (=> d!1565090 (=> res!2080280 e!3046234)))

(assert (=> d!1565090 (= res!2080280 (not ((_ is Cons!55999) rules!1164)))))

(assert (=> d!1565090 (= (rulesValidInductive!3025 thiss!11460 rules!1164) lt!1996796)))

(declare-fun b!4873223 () Bool)

(declare-fun e!3046235 () Bool)

(assert (=> b!4873223 (= e!3046234 e!3046235)))

(declare-fun res!2080279 () Bool)

(assert (=> b!4873223 (=> (not res!2080279) (not e!3046235))))

(declare-fun ruleValid!3634 (LexerInterface!7638 Rule!15892) Bool)

(assert (=> b!4873223 (= res!2080279 (ruleValid!3634 thiss!11460 (h!62447 rules!1164)))))

(declare-fun b!4873224 () Bool)

(assert (=> b!4873224 (= e!3046235 (rulesValidInductive!3025 thiss!11460 (t!364325 rules!1164)))))

(assert (= (and d!1565090 (not res!2080280)) b!4873223))

(assert (= (and b!4873223 res!2080279) b!4873224))

(declare-fun m!5874242 () Bool)

(assert (=> d!1565090 m!5874242))

(declare-fun m!5874244 () Bool)

(assert (=> b!4873223 m!5874244))

(declare-fun m!5874246 () Bool)

(assert (=> b!4873224 m!5874246))

(assert (=> d!1564980 d!1565090))

(assert (=> d!1564980 d!1565080))

(declare-fun d!1565092 () Bool)

(assert (=> d!1565092 (isPrefix!4770 lt!1996659 lt!1996664)))

(declare-fun lt!1996799 () Unit!145990)

(declare-fun choose!35621 (List!56121 List!56121) Unit!145990)

(assert (=> d!1565092 (= lt!1996799 (choose!35621 lt!1996659 lt!1996664))))

(assert (=> d!1565092 (= (lemmaIsPrefixRefl!3167 lt!1996659 lt!1996664) lt!1996799)))

(declare-fun bs!1174817 () Bool)

(assert (= bs!1174817 d!1565092))

(assert (=> bs!1174817 m!5873930))

(declare-fun m!5874248 () Bool)

(assert (=> bs!1174817 m!5874248))

(assert (=> d!1564980 d!1565092))

(assert (=> d!1564980 d!1565004))

(declare-fun d!1565094 () Bool)

(declare-fun lt!1996800 () Int)

(assert (=> d!1565094 (>= lt!1996800 0)))

(declare-fun e!3046236 () Int)

(assert (=> d!1565094 (= lt!1996800 e!3046236)))

(declare-fun c!828836 () Bool)

(assert (=> d!1565094 (= c!828836 ((_ is Nil!55997) (list!17526 (_2!33235 (v!49726 lt!1996614)))))))

(assert (=> d!1565094 (= (size!36925 (list!17526 (_2!33235 (v!49726 lt!1996614)))) lt!1996800)))

(declare-fun b!4873225 () Bool)

(assert (=> b!4873225 (= e!3046236 0)))

(declare-fun b!4873226 () Bool)

(assert (=> b!4873226 (= e!3046236 (+ 1 (size!36925 (t!364323 (list!17526 (_2!33235 (v!49726 lt!1996614)))))))))

(assert (= (and d!1565094 c!828836) b!4873225))

(assert (= (and d!1565094 (not c!828836)) b!4873226))

(declare-fun m!5874250 () Bool)

(assert (=> b!4873226 m!5874250))

(assert (=> d!1564968 d!1565094))

(declare-fun d!1565096 () Bool)

(assert (=> d!1565096 (= (list!17526 (_2!33235 (v!49726 lt!1996614))) (list!17529 (c!828795 (_2!33235 (v!49726 lt!1996614)))))))

(declare-fun bs!1174818 () Bool)

(assert (= bs!1174818 d!1565096))

(declare-fun m!5874252 () Bool)

(assert (=> bs!1174818 m!5874252))

(assert (=> d!1564968 d!1565096))

(declare-fun d!1565098 () Bool)

(declare-fun lt!1996801 () Int)

(assert (=> d!1565098 (= lt!1996801 (size!36925 (list!17529 (c!828795 (_2!33235 (v!49726 lt!1996614))))))))

(assert (=> d!1565098 (= lt!1996801 (ite ((_ is Empty!14598) (c!828795 (_2!33235 (v!49726 lt!1996614)))) 0 (ite ((_ is Leaf!24332) (c!828795 (_2!33235 (v!49726 lt!1996614)))) (csize!29427 (c!828795 (_2!33235 (v!49726 lt!1996614)))) (csize!29426 (c!828795 (_2!33235 (v!49726 lt!1996614)))))))))

(assert (=> d!1565098 (= (size!36926 (c!828795 (_2!33235 (v!49726 lt!1996614)))) lt!1996801)))

(declare-fun bs!1174819 () Bool)

(assert (= bs!1174819 d!1565098))

(assert (=> bs!1174819 m!5874252))

(assert (=> bs!1174819 m!5874252))

(declare-fun m!5874254 () Bool)

(assert (=> bs!1174819 m!5874254))

(assert (=> d!1564968 d!1565098))

(declare-fun d!1565100 () Bool)

(declare-fun res!2080287 () Bool)

(declare-fun e!3046239 () Bool)

(assert (=> d!1565100 (=> (not res!2080287) (not e!3046239))))

(assert (=> d!1565100 (= res!2080287 (= (csize!29426 (c!828795 input!585)) (+ (size!36926 (left!40673 (c!828795 input!585))) (size!36926 (right!41003 (c!828795 input!585))))))))

(assert (=> d!1565100 (= (inv!71933 (c!828795 input!585)) e!3046239)))

(declare-fun b!4873233 () Bool)

(declare-fun res!2080288 () Bool)

(assert (=> b!4873233 (=> (not res!2080288) (not e!3046239))))

(assert (=> b!4873233 (= res!2080288 (and (not (= (left!40673 (c!828795 input!585)) Empty!14598)) (not (= (right!41003 (c!828795 input!585)) Empty!14598))))))

(declare-fun b!4873234 () Bool)

(declare-fun res!2080289 () Bool)

(assert (=> b!4873234 (=> (not res!2080289) (not e!3046239))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!4873234 (= res!2080289 (= (cheight!14809 (c!828795 input!585)) (+ (max!0 (height!1935 (left!40673 (c!828795 input!585))) (height!1935 (right!41003 (c!828795 input!585)))) 1)))))

(declare-fun b!4873235 () Bool)

(assert (=> b!4873235 (= e!3046239 (<= 0 (cheight!14809 (c!828795 input!585))))))

(assert (= (and d!1565100 res!2080287) b!4873233))

(assert (= (and b!4873233 res!2080288) b!4873234))

(assert (= (and b!4873234 res!2080289) b!4873235))

(declare-fun m!5874256 () Bool)

(assert (=> d!1565100 m!5874256))

(declare-fun m!5874258 () Bool)

(assert (=> d!1565100 m!5874258))

(assert (=> b!4873234 m!5874174))

(assert (=> b!4873234 m!5874176))

(assert (=> b!4873234 m!5874174))

(assert (=> b!4873234 m!5874176))

(declare-fun m!5874260 () Bool)

(assert (=> b!4873234 m!5874260))

(assert (=> b!4872915 d!1565100))

(assert (=> b!4872899 d!1564998))

(assert (=> b!4872899 d!1565004))

(assert (=> b!4872899 d!1565084))

(assert (=> b!4872899 d!1565082))

(declare-fun d!1565102 () Bool)

(assert (=> d!1565102 (= (list!17526 (_2!33235 (get!19242 lt!1996660))) (list!17529 (c!828795 (_2!33235 (get!19242 lt!1996660)))))))

(declare-fun bs!1174820 () Bool)

(assert (= bs!1174820 d!1565102))

(declare-fun m!5874262 () Bool)

(assert (=> bs!1174820 m!5874262))

(assert (=> b!4872899 d!1565102))

(declare-fun b!4873236 () Bool)

(declare-fun e!3046244 () Option!13797)

(declare-fun call!338322 () Option!13797)

(assert (=> b!4873236 (= e!3046244 call!338322)))

(declare-fun b!4873237 () Bool)

(declare-fun e!3046245 () Bool)

(declare-fun lt!1996804 () Option!13797)

(assert (=> b!4873237 (= e!3046245 (= (list!17526 (_2!33235 (get!19242 lt!1996804))) (_2!33237 (get!19243 (maxPrefix!4553 thiss!11460 (t!364325 rules!1164) (list!17526 input!585))))))))

(declare-fun b!4873238 () Bool)

(declare-fun e!3046243 () Bool)

(assert (=> b!4873238 (= e!3046243 e!3046245)))

(declare-fun res!2080292 () Bool)

(assert (=> b!4873238 (=> (not res!2080292) (not e!3046245))))

(assert (=> b!4873238 (= res!2080292 (= (_1!33235 (get!19242 lt!1996804)) (_1!33237 (get!19243 (maxPrefix!4553 thiss!11460 (t!364325 rules!1164) (list!17526 input!585))))))))

(declare-fun b!4873240 () Bool)

(declare-fun e!3046241 () Bool)

(declare-fun e!3046242 () Bool)

(assert (=> b!4873240 (= e!3046241 e!3046242)))

(declare-fun res!2080295 () Bool)

(assert (=> b!4873240 (=> (not res!2080295) (not e!3046242))))

(assert (=> b!4873240 (= res!2080295 (= (_1!33235 (get!19242 lt!1996804)) (_1!33237 (get!19243 (maxPrefixZipper!567 thiss!11460 (t!364325 rules!1164) (list!17526 input!585))))))))

(declare-fun bm!338317 () Bool)

(assert (=> bm!338317 (= call!338322 (maxPrefixOneRuleZipperSequence!580 thiss!11460 (h!62447 (t!364325 rules!1164)) input!585))))

(declare-fun b!4873241 () Bool)

(assert (=> b!4873241 (= e!3046242 (= (list!17526 (_2!33235 (get!19242 lt!1996804))) (_2!33237 (get!19243 (maxPrefixZipper!567 thiss!11460 (t!364325 rules!1164) (list!17526 input!585))))))))

(declare-fun b!4873242 () Bool)

(declare-fun res!2080291 () Bool)

(declare-fun e!3046240 () Bool)

(assert (=> b!4873242 (=> (not res!2080291) (not e!3046240))))

(assert (=> b!4873242 (= res!2080291 e!3046241)))

(declare-fun res!2080293 () Bool)

(assert (=> b!4873242 (=> res!2080293 e!3046241)))

(assert (=> b!4873242 (= res!2080293 (not (isDefined!10856 lt!1996804)))))

(declare-fun b!4873243 () Bool)

(declare-fun lt!1996802 () Option!13797)

(declare-fun lt!1996806 () Option!13797)

(assert (=> b!4873243 (= e!3046244 (ite (and ((_ is None!13796) lt!1996802) ((_ is None!13796) lt!1996806)) None!13796 (ite ((_ is None!13796) lt!1996806) lt!1996802 (ite ((_ is None!13796) lt!1996802) lt!1996806 (ite (>= (size!36921 (_1!33235 (v!49726 lt!1996802))) (size!36921 (_1!33235 (v!49726 lt!1996806)))) lt!1996802 lt!1996806)))))))

(assert (=> b!4873243 (= lt!1996802 call!338322)))

(assert (=> b!4873243 (= lt!1996806 (maxPrefixZipperSequence!1237 thiss!11460 (t!364325 (t!364325 rules!1164)) input!585))))

(declare-fun b!4873239 () Bool)

(assert (=> b!4873239 (= e!3046240 e!3046243)))

(declare-fun res!2080290 () Bool)

(assert (=> b!4873239 (=> res!2080290 e!3046243)))

(assert (=> b!4873239 (= res!2080290 (not (isDefined!10856 lt!1996804)))))

(declare-fun d!1565104 () Bool)

(assert (=> d!1565104 e!3046240))

(declare-fun res!2080294 () Bool)

(assert (=> d!1565104 (=> (not res!2080294) (not e!3046240))))

(assert (=> d!1565104 (= res!2080294 (= (isDefined!10856 lt!1996804) (isDefined!10857 (maxPrefixZipper!567 thiss!11460 (t!364325 rules!1164) (list!17526 input!585)))))))

(assert (=> d!1565104 (= lt!1996804 e!3046244)))

(declare-fun c!828837 () Bool)

(assert (=> d!1565104 (= c!828837 (and ((_ is Cons!55999) (t!364325 rules!1164)) ((_ is Nil!55999) (t!364325 (t!364325 rules!1164)))))))

(declare-fun lt!1996807 () Unit!145990)

(declare-fun lt!1996805 () Unit!145990)

(assert (=> d!1565104 (= lt!1996807 lt!1996805)))

(declare-fun lt!1996803 () List!56121)

(declare-fun lt!1996808 () List!56121)

(assert (=> d!1565104 (isPrefix!4770 lt!1996803 lt!1996808)))

(assert (=> d!1565104 (= lt!1996805 (lemmaIsPrefixRefl!3167 lt!1996803 lt!1996808))))

(assert (=> d!1565104 (= lt!1996808 (list!17526 input!585))))

(assert (=> d!1565104 (= lt!1996803 (list!17526 input!585))))

(assert (=> d!1565104 (rulesValidInductive!3025 thiss!11460 (t!364325 rules!1164))))

(assert (=> d!1565104 (= (maxPrefixZipperSequence!1237 thiss!11460 (t!364325 rules!1164) input!585) lt!1996804)))

(assert (= (and d!1565104 c!828837) b!4873236))

(assert (= (and d!1565104 (not c!828837)) b!4873243))

(assert (= (or b!4873236 b!4873243) bm!338317))

(assert (= (and d!1565104 res!2080294) b!4873242))

(assert (= (and b!4873242 (not res!2080293)) b!4873240))

(assert (= (and b!4873240 res!2080295) b!4873241))

(assert (= (and b!4873242 res!2080291) b!4873239))

(assert (= (and b!4873239 (not res!2080290)) b!4873238))

(assert (= (and b!4873238 res!2080292) b!4873237))

(declare-fun m!5874264 () Bool)

(assert (=> b!4873243 m!5874264))

(declare-fun m!5874266 () Bool)

(assert (=> b!4873240 m!5874266))

(assert (=> b!4873240 m!5873856))

(assert (=> b!4873240 m!5873856))

(assert (=> b!4873240 m!5873970))

(assert (=> b!4873240 m!5873970))

(declare-fun m!5874268 () Bool)

(assert (=> b!4873240 m!5874268))

(assert (=> d!1565104 m!5873970))

(declare-fun m!5874270 () Bool)

(assert (=> d!1565104 m!5874270))

(assert (=> d!1565104 m!5873856))

(assert (=> d!1565104 m!5873970))

(declare-fun m!5874272 () Bool)

(assert (=> d!1565104 m!5874272))

(assert (=> d!1565104 m!5874246))

(assert (=> d!1565104 m!5873856))

(declare-fun m!5874274 () Bool)

(assert (=> d!1565104 m!5874274))

(declare-fun m!5874276 () Bool)

(assert (=> d!1565104 m!5874276))

(assert (=> b!4873238 m!5874266))

(assert (=> b!4873238 m!5873856))

(assert (=> b!4873238 m!5873856))

(assert (=> b!4873238 m!5874212))

(assert (=> b!4873238 m!5874212))

(declare-fun m!5874278 () Bool)

(assert (=> b!4873238 m!5874278))

(assert (=> b!4873241 m!5873856))

(assert (=> b!4873241 m!5873970))

(assert (=> b!4873241 m!5873856))

(assert (=> b!4873241 m!5873970))

(assert (=> b!4873241 m!5874268))

(declare-fun m!5874280 () Bool)

(assert (=> b!4873241 m!5874280))

(assert (=> b!4873241 m!5874266))

(assert (=> b!4873239 m!5874276))

(declare-fun m!5874282 () Bool)

(assert (=> bm!338317 m!5874282))

(assert (=> b!4873242 m!5874276))

(assert (=> b!4873237 m!5874280))

(assert (=> b!4873237 m!5874266))

(assert (=> b!4873237 m!5873856))

(assert (=> b!4873237 m!5874212))

(assert (=> b!4873237 m!5874212))

(assert (=> b!4873237 m!5874278))

(assert (=> b!4873237 m!5873856))

(assert (=> b!4872905 d!1565104))

(declare-fun d!1565106 () Bool)

(assert (=> d!1565106 (= (inv!71935 (xs!17906 (c!828795 input!585))) (<= (size!36925 (innerList!14686 (xs!17906 (c!828795 input!585)))) 2147483647))))

(declare-fun bs!1174821 () Bool)

(assert (= bs!1174821 d!1565106))

(declare-fun m!5874284 () Bool)

(assert (=> bs!1174821 m!5874284))

(assert (=> b!4872952 d!1565106))

(assert (=> b!4872904 d!1565080))

(declare-fun d!1565108 () Bool)

(assert (=> d!1565108 true))

(declare-fun order!25253 () Int)

(declare-fun order!25251 () Int)

(declare-fun lambda!243567 () Int)

(declare-fun dynLambda!22493 (Int Int) Int)

(declare-fun dynLambda!22494 (Int Int) Int)

(assert (=> d!1565108 (< (dynLambda!22493 order!25251 (toValue!10921 (transformation!8046 (h!62447 rules!1164)))) (dynLambda!22494 order!25253 lambda!243567))))

(declare-fun Forall2!1259 (Int) Bool)

(assert (=> d!1565108 (= (equivClasses!3429 (toChars!10780 (transformation!8046 (h!62447 rules!1164))) (toValue!10921 (transformation!8046 (h!62447 rules!1164)))) (Forall2!1259 lambda!243567))))

(declare-fun bs!1174822 () Bool)

(assert (= bs!1174822 d!1565108))

(declare-fun m!5874286 () Bool)

(assert (=> bs!1174822 m!5874286))

(assert (=> b!4872812 d!1565108))

(assert (=> b!4872903 d!1564998))

(assert (=> b!4872903 d!1565002))

(assert (=> b!4872903 d!1565102))

(assert (=> b!4872903 d!1565000))

(assert (=> b!4872903 d!1565004))

(declare-fun d!1565110 () Bool)

(declare-fun res!2080302 () Bool)

(declare-fun e!3046252 () Bool)

(assert (=> d!1565110 (=> res!2080302 e!3046252)))

(assert (=> d!1565110 (= res!2080302 ((_ is Nil!55999) rules!1164))))

(assert (=> d!1565110 (= (noDuplicateTag!3287 thiss!11460 rules!1164 Nil!56001) e!3046252)))

(declare-fun b!4873252 () Bool)

(declare-fun e!3046253 () Bool)

(assert (=> b!4873252 (= e!3046252 e!3046253)))

(declare-fun res!2080303 () Bool)

(assert (=> b!4873252 (=> (not res!2080303) (not e!3046253))))

(declare-fun contains!19404 (List!56125 String!63198) Bool)

(assert (=> b!4873252 (= res!2080303 (not (contains!19404 Nil!56001 (tag!8910 (h!62447 rules!1164)))))))

(declare-fun b!4873253 () Bool)

(assert (=> b!4873253 (= e!3046253 (noDuplicateTag!3287 thiss!11460 (t!364325 rules!1164) (Cons!56001 (tag!8910 (h!62447 rules!1164)) Nil!56001)))))

(assert (= (and d!1565110 (not res!2080302)) b!4873252))

(assert (= (and b!4873252 res!2080303) b!4873253))

(declare-fun m!5874288 () Bool)

(assert (=> b!4873252 m!5874288))

(declare-fun m!5874290 () Bool)

(assert (=> b!4873253 m!5874290))

(assert (=> b!4872908 d!1565110))

(declare-fun d!1565112 () Bool)

(declare-fun c!828838 () Bool)

(assert (=> d!1565112 (= c!828838 ((_ is Node!14598) (left!40673 (c!828795 input!585))))))

(declare-fun e!3046254 () Bool)

(assert (=> d!1565112 (= (inv!71928 (left!40673 (c!828795 input!585))) e!3046254)))

(declare-fun b!4873254 () Bool)

(assert (=> b!4873254 (= e!3046254 (inv!71933 (left!40673 (c!828795 input!585))))))

(declare-fun b!4873255 () Bool)

(declare-fun e!3046255 () Bool)

(assert (=> b!4873255 (= e!3046254 e!3046255)))

(declare-fun res!2080304 () Bool)

(assert (=> b!4873255 (= res!2080304 (not ((_ is Leaf!24332) (left!40673 (c!828795 input!585)))))))

(assert (=> b!4873255 (=> res!2080304 e!3046255)))

(declare-fun b!4873256 () Bool)

(assert (=> b!4873256 (= e!3046255 (inv!71934 (left!40673 (c!828795 input!585))))))

(assert (= (and d!1565112 c!828838) b!4873254))

(assert (= (and d!1565112 (not c!828838)) b!4873255))

(assert (= (and b!4873255 (not res!2080304)) b!4873256))

(declare-fun m!5874292 () Bool)

(assert (=> b!4873254 m!5874292))

(declare-fun m!5874294 () Bool)

(assert (=> b!4873256 m!5874294))

(assert (=> b!4872951 d!1565112))

(declare-fun d!1565114 () Bool)

(declare-fun c!828839 () Bool)

(assert (=> d!1565114 (= c!828839 ((_ is Node!14598) (right!41003 (c!828795 input!585))))))

(declare-fun e!3046256 () Bool)

(assert (=> d!1565114 (= (inv!71928 (right!41003 (c!828795 input!585))) e!3046256)))

(declare-fun b!4873257 () Bool)

(assert (=> b!4873257 (= e!3046256 (inv!71933 (right!41003 (c!828795 input!585))))))

(declare-fun b!4873258 () Bool)

(declare-fun e!3046257 () Bool)

(assert (=> b!4873258 (= e!3046256 e!3046257)))

(declare-fun res!2080305 () Bool)

(assert (=> b!4873258 (= res!2080305 (not ((_ is Leaf!24332) (right!41003 (c!828795 input!585)))))))

(assert (=> b!4873258 (=> res!2080305 e!3046257)))

(declare-fun b!4873259 () Bool)

(assert (=> b!4873259 (= e!3046257 (inv!71934 (right!41003 (c!828795 input!585))))))

(assert (= (and d!1565114 c!828839) b!4873257))

(assert (= (and d!1565114 (not c!828839)) b!4873258))

(assert (= (and b!4873258 (not res!2080305)) b!4873259))

(declare-fun m!5874296 () Bool)

(assert (=> b!4873257 m!5874296))

(declare-fun m!5874298 () Bool)

(assert (=> b!4873259 m!5874298))

(assert (=> b!4872951 d!1565114))

(assert (=> b!4872799 d!1564992))

(declare-fun d!1565116 () Bool)

(assert (=> d!1565116 true))

(declare-fun order!25257 () Int)

(declare-fun lambda!243570 () Int)

(declare-fun order!25255 () Int)

(declare-fun dynLambda!22495 (Int Int) Int)

(declare-fun dynLambda!22496 (Int Int) Int)

(assert (=> d!1565116 (< (dynLambda!22495 order!25255 (toChars!10780 (transformation!8046 (h!62447 rules!1164)))) (dynLambda!22496 order!25257 lambda!243570))))

(assert (=> d!1565116 true))

(assert (=> d!1565116 (< (dynLambda!22493 order!25251 (toValue!10921 (transformation!8046 (h!62447 rules!1164)))) (dynLambda!22496 order!25257 lambda!243570))))

(declare-fun Forall!1679 (Int) Bool)

(assert (=> d!1565116 (= (semiInverseModEq!3550 (toChars!10780 (transformation!8046 (h!62447 rules!1164))) (toValue!10921 (transformation!8046 (h!62447 rules!1164)))) (Forall!1679 lambda!243570))))

(declare-fun bs!1174823 () Bool)

(assert (= bs!1174823 d!1565116))

(declare-fun m!5874300 () Bool)

(assert (=> bs!1174823 m!5874300))

(assert (=> d!1564978 d!1565116))

(declare-fun bs!1174824 () Bool)

(declare-fun b!4873276 () Bool)

(assert (= bs!1174824 (and b!4873276 d!1565116)))

(declare-fun lambda!243575 () Int)

(assert (=> bs!1174824 (= lambda!243575 lambda!243570)))

(declare-fun b!4873289 () Bool)

(declare-fun e!3046278 () Bool)

(assert (=> b!4873289 (= e!3046278 true)))

(declare-fun b!4873288 () Bool)

(declare-fun e!3046277 () Bool)

(assert (=> b!4873288 (= e!3046277 e!3046278)))

(assert (=> b!4873276 e!3046277))

(assert (= b!4873288 b!4873289))

(assert (= b!4873276 b!4873288))

(assert (=> b!4873289 (< (dynLambda!22493 order!25251 (toValue!10921 (transformation!8046 (h!62447 rules!1164)))) (dynLambda!22496 order!25257 lambda!243575))))

(assert (=> b!4873289 (< (dynLambda!22495 order!25255 (toChars!10780 (transformation!8046 (h!62447 rules!1164)))) (dynLambda!22496 order!25257 lambda!243575))))

(declare-fun e!3046270 () Option!13797)

(declare-datatypes ((tuple2!59874 0))(
  ( (tuple2!59875 (_1!33240 BalanceConc!28638) (_2!33240 BalanceConc!28638)) )
))
(declare-fun lt!1996831 () tuple2!59874)

(assert (=> b!4873276 (= e!3046270 (Some!13796 (tuple2!59865 (Token!14677 (apply!13506 (transformation!8046 (h!62447 rules!1164)) (_1!33240 lt!1996831)) (h!62447 rules!1164) (size!36922 (_1!33240 lt!1996831)) (list!17526 (_1!33240 lt!1996831))) (_2!33240 lt!1996831))))))

(declare-fun lt!1996835 () List!56121)

(assert (=> b!4873276 (= lt!1996835 (list!17526 input!585))))

(declare-fun lt!1996833 () Unit!145990)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1688 (Regex!13121 List!56121) Unit!145990)

(assert (=> b!4873276 (= lt!1996833 (longestMatchIsAcceptedByMatchOrIsEmpty!1688 (regex!8046 (h!62447 rules!1164)) lt!1996835))))

(declare-fun res!2080314 () Bool)

(declare-fun isEmpty!29986 (List!56121) Bool)

(declare-datatypes ((tuple2!59876 0))(
  ( (tuple2!59877 (_1!33241 List!56121) (_2!33241 List!56121)) )
))
(declare-fun findLongestMatchInner!1725 (Regex!13121 List!56121 Int List!56121 List!56121 Int) tuple2!59876)

(assert (=> b!4873276 (= res!2080314 (isEmpty!29986 (_1!33241 (findLongestMatchInner!1725 (regex!8046 (h!62447 rules!1164)) Nil!55997 (size!36925 Nil!55997) lt!1996835 lt!1996835 (size!36925 lt!1996835)))))))

(declare-fun e!3046269 () Bool)

(assert (=> b!4873276 (=> res!2080314 e!3046269)))

(assert (=> b!4873276 e!3046269))

(declare-fun lt!1996830 () Unit!145990)

(assert (=> b!4873276 (= lt!1996830 lt!1996833)))

(declare-fun lt!1996837 () Unit!145990)

(declare-fun lemmaInv!1208 (TokenValueInjection!16020) Unit!145990)

(assert (=> b!4873276 (= lt!1996837 (lemmaInv!1208 (transformation!8046 (h!62447 rules!1164))))))

(declare-fun lt!1996838 () Unit!145990)

(declare-fun ForallOf!1105 (Int BalanceConc!28638) Unit!145990)

(assert (=> b!4873276 (= lt!1996838 (ForallOf!1105 lambda!243575 (_1!33240 lt!1996831)))))

(declare-fun lt!1996829 () Unit!145990)

(assert (=> b!4873276 (= lt!1996829 (ForallOf!1105 lambda!243575 (seqFromList!5902 (list!17526 (_1!33240 lt!1996831)))))))

(declare-fun lt!1996834 () Option!13797)

(assert (=> b!4873276 (= lt!1996834 (Some!13796 (tuple2!59865 (Token!14677 (apply!13506 (transformation!8046 (h!62447 rules!1164)) (_1!33240 lt!1996831)) (h!62447 rules!1164) (size!36922 (_1!33240 lt!1996831)) (list!17526 (_1!33240 lt!1996831))) (_2!33240 lt!1996831))))))

(declare-fun lt!1996836 () Unit!145990)

(declare-fun lemmaEqSameImage!1062 (TokenValueInjection!16020 BalanceConc!28638 BalanceConc!28638) Unit!145990)

(assert (=> b!4873276 (= lt!1996836 (lemmaEqSameImage!1062 (transformation!8046 (h!62447 rules!1164)) (_1!33240 lt!1996831) (seqFromList!5902 (list!17526 (_1!33240 lt!1996831)))))))

(declare-fun d!1565118 () Bool)

(declare-fun e!3046268 () Bool)

(assert (=> d!1565118 e!3046268))

(declare-fun res!2080317 () Bool)

(assert (=> d!1565118 (=> (not res!2080317) (not e!3046268))))

(declare-fun lt!1996832 () Option!13797)

(assert (=> d!1565118 (= res!2080317 (= (isDefined!10856 lt!1996832) (isDefined!10857 (maxPrefixOneRule!3495 thiss!11460 (h!62447 rules!1164) (list!17526 input!585)))))))

(assert (=> d!1565118 (= lt!1996832 e!3046270)))

(declare-fun c!828842 () Bool)

(declare-fun isEmpty!29987 (BalanceConc!28638) Bool)

(assert (=> d!1565118 (= c!828842 (isEmpty!29987 (_1!33240 lt!1996831)))))

(declare-fun findLongestMatchWithZipperSequence!240 (Regex!13121 BalanceConc!28638) tuple2!59874)

(assert (=> d!1565118 (= lt!1996831 (findLongestMatchWithZipperSequence!240 (regex!8046 (h!62447 rules!1164)) input!585))))

(assert (=> d!1565118 (ruleValid!3634 thiss!11460 (h!62447 rules!1164))))

(assert (=> d!1565118 (= (maxPrefixOneRuleZipperSequence!580 thiss!11460 (h!62447 rules!1164) input!585) lt!1996832)))

(declare-fun b!4873277 () Bool)

(assert (=> b!4873277 (= e!3046270 None!13796)))

(declare-fun b!4873278 () Bool)

(declare-fun e!3046272 () Bool)

(declare-fun e!3046271 () Bool)

(assert (=> b!4873278 (= e!3046272 e!3046271)))

(declare-fun res!2080316 () Bool)

(assert (=> b!4873278 (=> (not res!2080316) (not e!3046271))))

(assert (=> b!4873278 (= res!2080316 (= (_1!33235 (get!19242 lt!1996832)) (_1!33237 (get!19243 (maxPrefixOneRule!3495 thiss!11460 (h!62447 rules!1164) (list!17526 input!585))))))))

(declare-fun b!4873279 () Bool)

(assert (=> b!4873279 (= e!3046268 e!3046272)))

(declare-fun res!2080315 () Bool)

(assert (=> b!4873279 (=> res!2080315 e!3046272)))

(assert (=> b!4873279 (= res!2080315 (not (isDefined!10856 lt!1996832)))))

(declare-fun b!4873280 () Bool)

(assert (=> b!4873280 (= e!3046269 (matchR!6496 (regex!8046 (h!62447 rules!1164)) (_1!33241 (findLongestMatchInner!1725 (regex!8046 (h!62447 rules!1164)) Nil!55997 (size!36925 Nil!55997) lt!1996835 lt!1996835 (size!36925 lt!1996835)))))))

(declare-fun b!4873281 () Bool)

(assert (=> b!4873281 (= e!3046271 (= (list!17526 (_2!33235 (get!19242 lt!1996832))) (_2!33237 (get!19243 (maxPrefixOneRule!3495 thiss!11460 (h!62447 rules!1164) (list!17526 input!585))))))))

(assert (= (and d!1565118 c!828842) b!4873277))

(assert (= (and d!1565118 (not c!828842)) b!4873276))

(assert (= (and b!4873276 (not res!2080314)) b!4873280))

(assert (= (and d!1565118 res!2080317) b!4873279))

(assert (= (and b!4873279 (not res!2080315)) b!4873278))

(assert (= (and b!4873278 res!2080316) b!4873281))

(assert (=> d!1565118 m!5873856))

(assert (=> d!1565118 m!5874222))

(assert (=> d!1565118 m!5874222))

(declare-fun m!5874302 () Bool)

(assert (=> d!1565118 m!5874302))

(declare-fun m!5874304 () Bool)

(assert (=> d!1565118 m!5874304))

(declare-fun m!5874306 () Bool)

(assert (=> d!1565118 m!5874306))

(assert (=> d!1565118 m!5874244))

(assert (=> d!1565118 m!5873856))

(declare-fun m!5874308 () Bool)

(assert (=> d!1565118 m!5874308))

(assert (=> b!4873281 m!5873856))

(assert (=> b!4873281 m!5874222))

(declare-fun m!5874310 () Bool)

(assert (=> b!4873281 m!5874310))

(assert (=> b!4873281 m!5874222))

(declare-fun m!5874312 () Bool)

(assert (=> b!4873281 m!5874312))

(assert (=> b!4873281 m!5873856))

(declare-fun m!5874314 () Bool)

(assert (=> b!4873281 m!5874314))

(declare-fun m!5874316 () Bool)

(assert (=> b!4873280 m!5874316))

(declare-fun m!5874318 () Bool)

(assert (=> b!4873280 m!5874318))

(assert (=> b!4873280 m!5874316))

(assert (=> b!4873280 m!5874318))

(declare-fun m!5874320 () Bool)

(assert (=> b!4873280 m!5874320))

(declare-fun m!5874322 () Bool)

(assert (=> b!4873280 m!5874322))

(assert (=> b!4873278 m!5874314))

(assert (=> b!4873278 m!5873856))

(assert (=> b!4873278 m!5873856))

(assert (=> b!4873278 m!5874222))

(assert (=> b!4873278 m!5874222))

(assert (=> b!4873278 m!5874312))

(declare-fun m!5874324 () Bool)

(assert (=> b!4873276 m!5874324))

(declare-fun m!5874326 () Bool)

(assert (=> b!4873276 m!5874326))

(declare-fun m!5874328 () Bool)

(assert (=> b!4873276 m!5874328))

(declare-fun m!5874330 () Bool)

(assert (=> b!4873276 m!5874330))

(assert (=> b!4873276 m!5874328))

(declare-fun m!5874332 () Bool)

(assert (=> b!4873276 m!5874332))

(assert (=> b!4873276 m!5874316))

(assert (=> b!4873276 m!5874318))

(assert (=> b!4873276 m!5874320))

(declare-fun m!5874334 () Bool)

(assert (=> b!4873276 m!5874334))

(declare-fun m!5874336 () Bool)

(assert (=> b!4873276 m!5874336))

(assert (=> b!4873276 m!5874324))

(assert (=> b!4873276 m!5874328))

(declare-fun m!5874338 () Bool)

(assert (=> b!4873276 m!5874338))

(assert (=> b!4873276 m!5873856))

(declare-fun m!5874340 () Bool)

(assert (=> b!4873276 m!5874340))

(assert (=> b!4873276 m!5874318))

(declare-fun m!5874342 () Bool)

(assert (=> b!4873276 m!5874342))

(assert (=> b!4873276 m!5874316))

(assert (=> b!4873279 m!5874306))

(assert (=> bm!338303 d!1565118))

(declare-fun b!4873293 () Bool)

(declare-fun e!3046279 () Bool)

(declare-fun tp!1371199 () Bool)

(declare-fun tp!1371201 () Bool)

(assert (=> b!4873293 (= e!3046279 (and tp!1371199 tp!1371201))))

(assert (=> b!4872941 (= tp!1371143 e!3046279)))

(declare-fun b!4873292 () Bool)

(declare-fun tp!1371203 () Bool)

(assert (=> b!4873292 (= e!3046279 tp!1371203)))

(declare-fun b!4873290 () Bool)

(assert (=> b!4873290 (= e!3046279 tp_is_empty!35671)))

(declare-fun b!4873291 () Bool)

(declare-fun tp!1371200 () Bool)

(declare-fun tp!1371202 () Bool)

(assert (=> b!4873291 (= e!3046279 (and tp!1371200 tp!1371202))))

(assert (= (and b!4872941 ((_ is ElementMatch!13121) (regex!8046 (h!62447 (t!364325 rules!1164))))) b!4873290))

(assert (= (and b!4872941 ((_ is Concat!21478) (regex!8046 (h!62447 (t!364325 rules!1164))))) b!4873291))

(assert (= (and b!4872941 ((_ is Star!13121) (regex!8046 (h!62447 (t!364325 rules!1164))))) b!4873292))

(assert (= (and b!4872941 ((_ is Union!13121) (regex!8046 (h!62447 (t!364325 rules!1164))))) b!4873293))

(declare-fun b!4873297 () Bool)

(declare-fun e!3046280 () Bool)

(declare-fun tp!1371204 () Bool)

(declare-fun tp!1371206 () Bool)

(assert (=> b!4873297 (= e!3046280 (and tp!1371204 tp!1371206))))

(assert (=> b!4872931 (= tp!1371130 e!3046280)))

(declare-fun b!4873296 () Bool)

(declare-fun tp!1371208 () Bool)

(assert (=> b!4873296 (= e!3046280 tp!1371208)))

(declare-fun b!4873294 () Bool)

(assert (=> b!4873294 (= e!3046280 tp_is_empty!35671)))

(declare-fun b!4873295 () Bool)

(declare-fun tp!1371205 () Bool)

(declare-fun tp!1371207 () Bool)

(assert (=> b!4873295 (= e!3046280 (and tp!1371205 tp!1371207))))

(assert (= (and b!4872931 ((_ is ElementMatch!13121) (regOne!26755 (regex!8046 (h!62447 rules!1164))))) b!4873294))

(assert (= (and b!4872931 ((_ is Concat!21478) (regOne!26755 (regex!8046 (h!62447 rules!1164))))) b!4873295))

(assert (= (and b!4872931 ((_ is Star!13121) (regOne!26755 (regex!8046 (h!62447 rules!1164))))) b!4873296))

(assert (= (and b!4872931 ((_ is Union!13121) (regOne!26755 (regex!8046 (h!62447 rules!1164))))) b!4873297))

(declare-fun b!4873301 () Bool)

(declare-fun e!3046281 () Bool)

(declare-fun tp!1371209 () Bool)

(declare-fun tp!1371211 () Bool)

(assert (=> b!4873301 (= e!3046281 (and tp!1371209 tp!1371211))))

(assert (=> b!4872931 (= tp!1371132 e!3046281)))

(declare-fun b!4873300 () Bool)

(declare-fun tp!1371213 () Bool)

(assert (=> b!4873300 (= e!3046281 tp!1371213)))

(declare-fun b!4873298 () Bool)

(assert (=> b!4873298 (= e!3046281 tp_is_empty!35671)))

(declare-fun b!4873299 () Bool)

(declare-fun tp!1371210 () Bool)

(declare-fun tp!1371212 () Bool)

(assert (=> b!4873299 (= e!3046281 (and tp!1371210 tp!1371212))))

(assert (= (and b!4872931 ((_ is ElementMatch!13121) (regTwo!26755 (regex!8046 (h!62447 rules!1164))))) b!4873298))

(assert (= (and b!4872931 ((_ is Concat!21478) (regTwo!26755 (regex!8046 (h!62447 rules!1164))))) b!4873299))

(assert (= (and b!4872931 ((_ is Star!13121) (regTwo!26755 (regex!8046 (h!62447 rules!1164))))) b!4873300))

(assert (= (and b!4872931 ((_ is Union!13121) (regTwo!26755 (regex!8046 (h!62447 rules!1164))))) b!4873301))

(declare-fun b!4873306 () Bool)

(declare-fun e!3046284 () Bool)

(declare-fun tp!1371216 () Bool)

(assert (=> b!4873306 (= e!3046284 (and tp_is_empty!35671 tp!1371216))))

(assert (=> b!4872953 (= tp!1371155 e!3046284)))

(assert (= (and b!4872953 ((_ is Cons!55997) (innerList!14686 (xs!17906 (c!828795 input!585))))) b!4873306))

(declare-fun b!4873309 () Bool)

(declare-fun b_free!130779 () Bool)

(declare-fun b_next!131569 () Bool)

(assert (=> b!4873309 (= b_free!130779 (not b_next!131569))))

(declare-fun tp!1371219 () Bool)

(declare-fun b_and!343187 () Bool)

(assert (=> b!4873309 (= tp!1371219 b_and!343187)))

(declare-fun b_free!130781 () Bool)

(declare-fun b_next!131571 () Bool)

(assert (=> b!4873309 (= b_free!130781 (not b_next!131571))))

(declare-fun tp!1371220 () Bool)

(declare-fun b_and!343189 () Bool)

(assert (=> b!4873309 (= tp!1371220 b_and!343189)))

(declare-fun e!3046286 () Bool)

(assert (=> b!4873309 (= e!3046286 (and tp!1371219 tp!1371220))))

(declare-fun tp!1371217 () Bool)

(declare-fun b!4873308 () Bool)

(declare-fun e!3046288 () Bool)

(assert (=> b!4873308 (= e!3046288 (and tp!1371217 (inv!71923 (tag!8910 (h!62447 (t!364325 (t!364325 rules!1164))))) (inv!71929 (transformation!8046 (h!62447 (t!364325 (t!364325 rules!1164))))) e!3046286))))

(declare-fun b!4873307 () Bool)

(declare-fun e!3046287 () Bool)

(declare-fun tp!1371218 () Bool)

(assert (=> b!4873307 (= e!3046287 (and e!3046288 tp!1371218))))

(assert (=> b!4872940 (= tp!1371144 e!3046287)))

(assert (= b!4873308 b!4873309))

(assert (= b!4873307 b!4873308))

(assert (= (and b!4872940 ((_ is Cons!55999) (t!364325 (t!364325 rules!1164)))) b!4873307))

(declare-fun m!5874344 () Bool)

(assert (=> b!4873308 m!5874344))

(declare-fun m!5874346 () Bool)

(assert (=> b!4873308 m!5874346))

(declare-fun b!4873313 () Bool)

(declare-fun e!3046289 () Bool)

(declare-fun tp!1371221 () Bool)

(declare-fun tp!1371223 () Bool)

(assert (=> b!4873313 (= e!3046289 (and tp!1371221 tp!1371223))))

(assert (=> b!4872930 (= tp!1371134 e!3046289)))

(declare-fun b!4873312 () Bool)

(declare-fun tp!1371225 () Bool)

(assert (=> b!4873312 (= e!3046289 tp!1371225)))

(declare-fun b!4873310 () Bool)

(assert (=> b!4873310 (= e!3046289 tp_is_empty!35671)))

(declare-fun b!4873311 () Bool)

(declare-fun tp!1371222 () Bool)

(declare-fun tp!1371224 () Bool)

(assert (=> b!4873311 (= e!3046289 (and tp!1371222 tp!1371224))))

(assert (= (and b!4872930 ((_ is ElementMatch!13121) (reg!13450 (regex!8046 (h!62447 rules!1164))))) b!4873310))

(assert (= (and b!4872930 ((_ is Concat!21478) (reg!13450 (regex!8046 (h!62447 rules!1164))))) b!4873311))

(assert (= (and b!4872930 ((_ is Star!13121) (reg!13450 (regex!8046 (h!62447 rules!1164))))) b!4873312))

(assert (= (and b!4872930 ((_ is Union!13121) (reg!13450 (regex!8046 (h!62447 rules!1164))))) b!4873313))

(declare-fun b!4873317 () Bool)

(declare-fun e!3046290 () Bool)

(declare-fun tp!1371226 () Bool)

(declare-fun tp!1371228 () Bool)

(assert (=> b!4873317 (= e!3046290 (and tp!1371226 tp!1371228))))

(assert (=> b!4872929 (= tp!1371131 e!3046290)))

(declare-fun b!4873316 () Bool)

(declare-fun tp!1371230 () Bool)

(assert (=> b!4873316 (= e!3046290 tp!1371230)))

(declare-fun b!4873314 () Bool)

(assert (=> b!4873314 (= e!3046290 tp_is_empty!35671)))

(declare-fun b!4873315 () Bool)

(declare-fun tp!1371227 () Bool)

(declare-fun tp!1371229 () Bool)

(assert (=> b!4873315 (= e!3046290 (and tp!1371227 tp!1371229))))

(assert (= (and b!4872929 ((_ is ElementMatch!13121) (regOne!26754 (regex!8046 (h!62447 rules!1164))))) b!4873314))

(assert (= (and b!4872929 ((_ is Concat!21478) (regOne!26754 (regex!8046 (h!62447 rules!1164))))) b!4873315))

(assert (= (and b!4872929 ((_ is Star!13121) (regOne!26754 (regex!8046 (h!62447 rules!1164))))) b!4873316))

(assert (= (and b!4872929 ((_ is Union!13121) (regOne!26754 (regex!8046 (h!62447 rules!1164))))) b!4873317))

(declare-fun b!4873321 () Bool)

(declare-fun e!3046291 () Bool)

(declare-fun tp!1371231 () Bool)

(declare-fun tp!1371233 () Bool)

(assert (=> b!4873321 (= e!3046291 (and tp!1371231 tp!1371233))))

(assert (=> b!4872929 (= tp!1371133 e!3046291)))

(declare-fun b!4873320 () Bool)

(declare-fun tp!1371235 () Bool)

(assert (=> b!4873320 (= e!3046291 tp!1371235)))

(declare-fun b!4873318 () Bool)

(assert (=> b!4873318 (= e!3046291 tp_is_empty!35671)))

(declare-fun b!4873319 () Bool)

(declare-fun tp!1371232 () Bool)

(declare-fun tp!1371234 () Bool)

(assert (=> b!4873319 (= e!3046291 (and tp!1371232 tp!1371234))))

(assert (= (and b!4872929 ((_ is ElementMatch!13121) (regTwo!26754 (regex!8046 (h!62447 rules!1164))))) b!4873318))

(assert (= (and b!4872929 ((_ is Concat!21478) (regTwo!26754 (regex!8046 (h!62447 rules!1164))))) b!4873319))

(assert (= (and b!4872929 ((_ is Star!13121) (regTwo!26754 (regex!8046 (h!62447 rules!1164))))) b!4873320))

(assert (= (and b!4872929 ((_ is Union!13121) (regTwo!26754 (regex!8046 (h!62447 rules!1164))))) b!4873321))

(declare-fun tp!1371236 () Bool)

(declare-fun b!4873322 () Bool)

(declare-fun e!3046292 () Bool)

(declare-fun tp!1371237 () Bool)

(assert (=> b!4873322 (= e!3046292 (and (inv!71928 (left!40673 (left!40673 (c!828795 input!585)))) tp!1371237 (inv!71928 (right!41003 (left!40673 (c!828795 input!585)))) tp!1371236))))

(declare-fun b!4873324 () Bool)

(declare-fun e!3046293 () Bool)

(declare-fun tp!1371238 () Bool)

(assert (=> b!4873324 (= e!3046293 tp!1371238)))

(declare-fun b!4873323 () Bool)

(assert (=> b!4873323 (= e!3046292 (and (inv!71935 (xs!17906 (left!40673 (c!828795 input!585)))) e!3046293))))

(assert (=> b!4872951 (= tp!1371154 (and (inv!71928 (left!40673 (c!828795 input!585))) e!3046292))))

(assert (= (and b!4872951 ((_ is Node!14598) (left!40673 (c!828795 input!585)))) b!4873322))

(assert (= b!4873323 b!4873324))

(assert (= (and b!4872951 ((_ is Leaf!24332) (left!40673 (c!828795 input!585)))) b!4873323))

(declare-fun m!5874348 () Bool)

(assert (=> b!4873322 m!5874348))

(declare-fun m!5874350 () Bool)

(assert (=> b!4873322 m!5874350))

(declare-fun m!5874352 () Bool)

(assert (=> b!4873323 m!5874352))

(assert (=> b!4872951 m!5873958))

(declare-fun b!4873325 () Bool)

(declare-fun tp!1371240 () Bool)

(declare-fun tp!1371239 () Bool)

(declare-fun e!3046294 () Bool)

(assert (=> b!4873325 (= e!3046294 (and (inv!71928 (left!40673 (right!41003 (c!828795 input!585)))) tp!1371240 (inv!71928 (right!41003 (right!41003 (c!828795 input!585)))) tp!1371239))))

(declare-fun b!4873327 () Bool)

(declare-fun e!3046295 () Bool)

(declare-fun tp!1371241 () Bool)

(assert (=> b!4873327 (= e!3046295 tp!1371241)))

(declare-fun b!4873326 () Bool)

(assert (=> b!4873326 (= e!3046294 (and (inv!71935 (xs!17906 (right!41003 (c!828795 input!585)))) e!3046295))))

(assert (=> b!4872951 (= tp!1371153 (and (inv!71928 (right!41003 (c!828795 input!585))) e!3046294))))

(assert (= (and b!4872951 ((_ is Node!14598) (right!41003 (c!828795 input!585)))) b!4873325))

(assert (= b!4873326 b!4873327))

(assert (= (and b!4872951 ((_ is Leaf!24332) (right!41003 (c!828795 input!585)))) b!4873326))

(declare-fun m!5874354 () Bool)

(assert (=> b!4873325 m!5874354))

(declare-fun m!5874356 () Bool)

(assert (=> b!4873325 m!5874356))

(declare-fun m!5874358 () Bool)

(assert (=> b!4873326 m!5874358))

(assert (=> b!4872951 m!5873960))

(check-sat (not d!1565088) (not b!4872951) (not d!1565102) (not b!4873096) (not d!1565106) (not d!1565118) b_and!343173 b_and!343179 (not b!4873293) (not b!4873238) tp_is_empty!35671 (not d!1565084) (not d!1565010) (not b!4873291) (not b!4873205) (not b!4873224) (not b!4873223) (not d!1565090) (not b!4873138) (not b!4873256) (not b!4873110) (not b!4873299) (not b!4873252) (not b!4873276) (not b!4873134) (not b!4873216) (not b!4873292) (not b!4873324) (not d!1565116) (not b!4873281) (not b!4873234) (not b!4873203) (not d!1565064) (not b_next!131569) (not b_next!131571) (not b!4873136) (not b!4873321) (not d!1565096) (not b!4873239) (not b!4873297) (not b!4873135) (not b!4873206) (not b!4873311) (not b!4873226) (not b!4873313) (not b!4873320) (not b!4873327) b_and!343187 (not b!4873295) (not b!4873301) b_and!343171 (not b!4873296) (not d!1565108) (not b_next!131555) (not b!4873306) (not b!4873240) (not b!4873325) (not d!1565100) (not b!4873137) (not b!4873198) (not b!4873317) (not b!4873307) (not b!4872959) (not b!4873202) (not d!1565004) (not b!4873259) (not b!4873204) (not b!4873315) (not b_next!131561) (not b!4873218) (not d!1565080) (not b!4873217) (not b!4873243) (not b_next!131553) b_and!343189 (not bm!338306) (not b!4873322) (not d!1565104) (not b!4873278) (not b_next!131563) (not bm!338316) (not b!4873319) (not d!1565092) (not b!4873254) (not b!4873237) (not b!4873323) (not b!4873257) (not b!4873280) (not d!1565002) (not d!1565008) (not bm!338317) (not b!4873300) (not b!4873279) b_and!343181 (not b!4873316) (not b!4873242) (not b!4873200) (not d!1565062) (not b!4872965) (not d!1565098) (not b!4873253) (not b!4873241) (not b!4873139) (not b!4873312) (not b!4873308) (not b!4873199) (not b!4873326))
(check-sat b_and!343187 b_and!343171 (not b_next!131555) (not b_next!131561) (not b_next!131563) b_and!343181 b_and!343173 b_and!343179 (not b_next!131569) (not b_next!131571) (not b_next!131553) b_and!343189)
(get-model)

(declare-fun b!4873584 () Bool)

(declare-fun e!3046449 () Bool)

(assert (=> b!4873584 (= e!3046449 (not (isEmpty!29983 (right!41003 (left!40673 (c!828795 input!585))))))))

(declare-fun b!4873585 () Bool)

(declare-fun e!3046448 () Bool)

(assert (=> b!4873585 (= e!3046448 e!3046449)))

(declare-fun res!2080474 () Bool)

(assert (=> b!4873585 (=> (not res!2080474) (not e!3046449))))

(assert (=> b!4873585 (= res!2080474 (<= (- 1) (- (height!1935 (left!40673 (left!40673 (c!828795 input!585)))) (height!1935 (right!41003 (left!40673 (c!828795 input!585)))))))))

(declare-fun b!4873586 () Bool)

(declare-fun res!2080478 () Bool)

(assert (=> b!4873586 (=> (not res!2080478) (not e!3046449))))

(assert (=> b!4873586 (= res!2080478 (isBalanced!3962 (right!41003 (left!40673 (c!828795 input!585)))))))

(declare-fun b!4873587 () Bool)

(declare-fun res!2080479 () Bool)

(assert (=> b!4873587 (=> (not res!2080479) (not e!3046449))))

(assert (=> b!4873587 (= res!2080479 (not (isEmpty!29983 (left!40673 (left!40673 (c!828795 input!585))))))))

(declare-fun b!4873589 () Bool)

(declare-fun res!2080477 () Bool)

(assert (=> b!4873589 (=> (not res!2080477) (not e!3046449))))

(assert (=> b!4873589 (= res!2080477 (<= (- (height!1935 (left!40673 (left!40673 (c!828795 input!585)))) (height!1935 (right!41003 (left!40673 (c!828795 input!585))))) 1))))

(declare-fun b!4873588 () Bool)

(declare-fun res!2080476 () Bool)

(assert (=> b!4873588 (=> (not res!2080476) (not e!3046449))))

(assert (=> b!4873588 (= res!2080476 (isBalanced!3962 (left!40673 (left!40673 (c!828795 input!585)))))))

(declare-fun d!1565268 () Bool)

(declare-fun res!2080475 () Bool)

(assert (=> d!1565268 (=> res!2080475 e!3046448)))

(assert (=> d!1565268 (= res!2080475 (not ((_ is Node!14598) (left!40673 (c!828795 input!585)))))))

(assert (=> d!1565268 (= (isBalanced!3962 (left!40673 (c!828795 input!585))) e!3046448)))

(assert (= (and d!1565268 (not res!2080475)) b!4873585))

(assert (= (and b!4873585 res!2080474) b!4873589))

(assert (= (and b!4873589 res!2080477) b!4873588))

(assert (= (and b!4873588 res!2080476) b!4873586))

(assert (= (and b!4873586 res!2080478) b!4873587))

(assert (= (and b!4873587 res!2080479) b!4873584))

(declare-fun m!5874780 () Bool)

(assert (=> b!4873587 m!5874780))

(declare-fun m!5874782 () Bool)

(assert (=> b!4873588 m!5874782))

(declare-fun m!5874784 () Bool)

(assert (=> b!4873584 m!5874784))

(declare-fun m!5874786 () Bool)

(assert (=> b!4873585 m!5874786))

(declare-fun m!5874788 () Bool)

(assert (=> b!4873585 m!5874788))

(declare-fun m!5874790 () Bool)

(assert (=> b!4873586 m!5874790))

(assert (=> b!4873589 m!5874786))

(assert (=> b!4873589 m!5874788))

(assert (=> b!4873138 d!1565268))

(declare-fun d!1565270 () Bool)

(assert (=> d!1565270 (= (isDefined!10856 lt!1996832) (not (isEmpty!29984 lt!1996832)))))

(declare-fun bs!1174855 () Bool)

(assert (= bs!1174855 d!1565270))

(declare-fun m!5874792 () Bool)

(assert (=> bs!1174855 m!5874792))

(assert (=> b!4873279 d!1565270))

(declare-fun d!1565272 () Bool)

(assert (=> d!1565272 (= (isDefined!10856 lt!1996804) (not (isEmpty!29984 lt!1996804)))))

(declare-fun bs!1174856 () Bool)

(assert (= bs!1174856 d!1565272))

(declare-fun m!5874794 () Bool)

(assert (=> bs!1174856 m!5874794))

(assert (=> b!4873242 d!1565272))

(declare-fun d!1565274 () Bool)

(assert (=> d!1565274 (= (get!19243 lt!1996788) (v!49728 lt!1996788))))

(assert (=> b!4873202 d!1565274))

(declare-fun d!1565276 () Bool)

(declare-fun dynLambda!22499 (Int BalanceConc!28638) TokenValue!8356)

(assert (=> d!1565276 (= (apply!13506 (transformation!8046 (rule!11190 (_1!33237 (get!19243 lt!1996788)))) (seqFromList!5902 (originalCharacters!8369 (_1!33237 (get!19243 lt!1996788))))) (dynLambda!22499 (toValue!10921 (transformation!8046 (rule!11190 (_1!33237 (get!19243 lt!1996788))))) (seqFromList!5902 (originalCharacters!8369 (_1!33237 (get!19243 lt!1996788))))))))

(declare-fun b_lambda!193777 () Bool)

(assert (=> (not b_lambda!193777) (not d!1565276)))

(declare-fun tb!258099 () Bool)

(declare-fun t!364360 () Bool)

(assert (=> (and b!4872797 (= (toValue!10921 (transformation!8046 (h!62447 rules!1164))) (toValue!10921 (transformation!8046 (rule!11190 (_1!33237 (get!19243 lt!1996788)))))) t!364360) tb!258099))

(declare-fun result!321302 () Bool)

(declare-fun inv!21 (TokenValue!8356) Bool)

(assert (=> tb!258099 (= result!321302 (inv!21 (dynLambda!22499 (toValue!10921 (transformation!8046 (rule!11190 (_1!33237 (get!19243 lt!1996788))))) (seqFromList!5902 (originalCharacters!8369 (_1!33237 (get!19243 lt!1996788)))))))))

(declare-fun m!5874796 () Bool)

(assert (=> tb!258099 m!5874796))

(assert (=> d!1565276 t!364360))

(declare-fun b_and!343221 () Bool)

(assert (= b_and!343171 (and (=> t!364360 result!321302) b_and!343221)))

(declare-fun t!364362 () Bool)

(declare-fun tb!258101 () Bool)

(assert (=> (and b!4872942 (= (toValue!10921 (transformation!8046 (h!62447 (t!364325 rules!1164)))) (toValue!10921 (transformation!8046 (rule!11190 (_1!33237 (get!19243 lt!1996788)))))) t!364362) tb!258101))

(declare-fun result!321306 () Bool)

(assert (= result!321306 result!321302))

(assert (=> d!1565276 t!364362))

(declare-fun b_and!343223 () Bool)

(assert (= b_and!343179 (and (=> t!364362 result!321306) b_and!343223)))

(declare-fun tb!258103 () Bool)

(declare-fun t!364364 () Bool)

(assert (=> (and b!4873309 (= (toValue!10921 (transformation!8046 (h!62447 (t!364325 (t!364325 rules!1164))))) (toValue!10921 (transformation!8046 (rule!11190 (_1!33237 (get!19243 lt!1996788)))))) t!364364) tb!258103))

(declare-fun result!321308 () Bool)

(assert (= result!321308 result!321302))

(assert (=> d!1565276 t!364364))

(declare-fun b_and!343225 () Bool)

(assert (= b_and!343187 (and (=> t!364364 result!321308) b_and!343225)))

(assert (=> d!1565276 m!5874214))

(declare-fun m!5874798 () Bool)

(assert (=> d!1565276 m!5874798))

(assert (=> b!4873202 d!1565276))

(declare-fun d!1565278 () Bool)

(declare-fun fromListB!2683 (List!56121) BalanceConc!28638)

(assert (=> d!1565278 (= (seqFromList!5902 (originalCharacters!8369 (_1!33237 (get!19243 lt!1996788)))) (fromListB!2683 (originalCharacters!8369 (_1!33237 (get!19243 lt!1996788)))))))

(declare-fun bs!1174857 () Bool)

(assert (= bs!1174857 d!1565278))

(declare-fun m!5874800 () Bool)

(assert (=> bs!1174857 m!5874800))

(assert (=> b!4873202 d!1565278))

(declare-fun b!4873592 () Bool)

(declare-fun e!3046454 () Bool)

(assert (=> b!4873592 (= e!3046454 (not (isEmpty!29983 (right!41003 (right!41003 (c!828795 input!585))))))))

(declare-fun b!4873593 () Bool)

(declare-fun e!3046453 () Bool)

(assert (=> b!4873593 (= e!3046453 e!3046454)))

(declare-fun res!2080480 () Bool)

(assert (=> b!4873593 (=> (not res!2080480) (not e!3046454))))

(assert (=> b!4873593 (= res!2080480 (<= (- 1) (- (height!1935 (left!40673 (right!41003 (c!828795 input!585)))) (height!1935 (right!41003 (right!41003 (c!828795 input!585)))))))))

(declare-fun b!4873594 () Bool)

(declare-fun res!2080484 () Bool)

(assert (=> b!4873594 (=> (not res!2080484) (not e!3046454))))

(assert (=> b!4873594 (= res!2080484 (isBalanced!3962 (right!41003 (right!41003 (c!828795 input!585)))))))

(declare-fun b!4873595 () Bool)

(declare-fun res!2080485 () Bool)

(assert (=> b!4873595 (=> (not res!2080485) (not e!3046454))))

(assert (=> b!4873595 (= res!2080485 (not (isEmpty!29983 (left!40673 (right!41003 (c!828795 input!585))))))))

(declare-fun b!4873597 () Bool)

(declare-fun res!2080483 () Bool)

(assert (=> b!4873597 (=> (not res!2080483) (not e!3046454))))

(assert (=> b!4873597 (= res!2080483 (<= (- (height!1935 (left!40673 (right!41003 (c!828795 input!585)))) (height!1935 (right!41003 (right!41003 (c!828795 input!585))))) 1))))

(declare-fun b!4873596 () Bool)

(declare-fun res!2080482 () Bool)

(assert (=> b!4873596 (=> (not res!2080482) (not e!3046454))))

(assert (=> b!4873596 (= res!2080482 (isBalanced!3962 (left!40673 (right!41003 (c!828795 input!585)))))))

(declare-fun d!1565280 () Bool)

(declare-fun res!2080481 () Bool)

(assert (=> d!1565280 (=> res!2080481 e!3046453)))

(assert (=> d!1565280 (= res!2080481 (not ((_ is Node!14598) (right!41003 (c!828795 input!585)))))))

(assert (=> d!1565280 (= (isBalanced!3962 (right!41003 (c!828795 input!585))) e!3046453)))

(assert (= (and d!1565280 (not res!2080481)) b!4873593))

(assert (= (and b!4873593 res!2080480) b!4873597))

(assert (= (and b!4873597 res!2080483) b!4873596))

(assert (= (and b!4873596 res!2080482) b!4873594))

(assert (= (and b!4873594 res!2080484) b!4873595))

(assert (= (and b!4873595 res!2080485) b!4873592))

(declare-fun m!5874802 () Bool)

(assert (=> b!4873595 m!5874802))

(declare-fun m!5874804 () Bool)

(assert (=> b!4873596 m!5874804))

(declare-fun m!5874806 () Bool)

(assert (=> b!4873592 m!5874806))

(declare-fun m!5874808 () Bool)

(assert (=> b!4873593 m!5874808))

(declare-fun m!5874810 () Bool)

(assert (=> b!4873593 m!5874810))

(declare-fun m!5874812 () Bool)

(assert (=> b!4873594 m!5874812))

(assert (=> b!4873597 m!5874808))

(assert (=> b!4873597 m!5874810))

(assert (=> b!4873136 d!1565280))

(assert (=> d!1565092 d!1565086))

(declare-fun d!1565282 () Bool)

(assert (=> d!1565282 (isPrefix!4770 lt!1996659 lt!1996664)))

(assert (=> d!1565282 true))

(declare-fun _$45!2141 () Unit!145990)

(assert (=> d!1565282 (= (choose!35621 lt!1996659 lt!1996664) _$45!2141)))

(declare-fun bs!1174858 () Bool)

(assert (= bs!1174858 d!1565282))

(assert (=> bs!1174858 m!5873930))

(assert (=> d!1565092 d!1565282))

(declare-fun bs!1174859 () Bool)

(declare-fun b!4873598 () Bool)

(assert (= bs!1174859 (and b!4873598 d!1565116)))

(declare-fun lambda!243582 () Int)

(assert (=> bs!1174859 (= (and (= (toChars!10780 (transformation!8046 (h!62447 (t!364325 rules!1164)))) (toChars!10780 (transformation!8046 (h!62447 rules!1164)))) (= (toValue!10921 (transformation!8046 (h!62447 (t!364325 rules!1164)))) (toValue!10921 (transformation!8046 (h!62447 rules!1164))))) (= lambda!243582 lambda!243570))))

(declare-fun bs!1174860 () Bool)

(assert (= bs!1174860 (and b!4873598 b!4873276)))

(assert (=> bs!1174860 (= (and (= (toChars!10780 (transformation!8046 (h!62447 (t!364325 rules!1164)))) (toChars!10780 (transformation!8046 (h!62447 rules!1164)))) (= (toValue!10921 (transformation!8046 (h!62447 (t!364325 rules!1164)))) (toValue!10921 (transformation!8046 (h!62447 rules!1164))))) (= lambda!243582 lambda!243575))))

(declare-fun b!4873605 () Bool)

(declare-fun e!3046461 () Bool)

(assert (=> b!4873605 (= e!3046461 true)))

(declare-fun b!4873604 () Bool)

(declare-fun e!3046460 () Bool)

(assert (=> b!4873604 (= e!3046460 e!3046461)))

(assert (=> b!4873598 e!3046460))

(assert (= b!4873604 b!4873605))

(assert (= b!4873598 b!4873604))

(assert (=> b!4873605 (< (dynLambda!22493 order!25251 (toValue!10921 (transformation!8046 (h!62447 (t!364325 rules!1164))))) (dynLambda!22496 order!25257 lambda!243582))))

(assert (=> b!4873605 (< (dynLambda!22495 order!25255 (toChars!10780 (transformation!8046 (h!62447 (t!364325 rules!1164))))) (dynLambda!22496 order!25257 lambda!243582))))

(declare-fun e!3046457 () Option!13797)

(declare-fun lt!1997010 () tuple2!59874)

(assert (=> b!4873598 (= e!3046457 (Some!13796 (tuple2!59865 (Token!14677 (apply!13506 (transformation!8046 (h!62447 (t!364325 rules!1164))) (_1!33240 lt!1997010)) (h!62447 (t!364325 rules!1164)) (size!36922 (_1!33240 lt!1997010)) (list!17526 (_1!33240 lt!1997010))) (_2!33240 lt!1997010))))))

(declare-fun lt!1997014 () List!56121)

(assert (=> b!4873598 (= lt!1997014 (list!17526 input!585))))

(declare-fun lt!1997012 () Unit!145990)

(assert (=> b!4873598 (= lt!1997012 (longestMatchIsAcceptedByMatchOrIsEmpty!1688 (regex!8046 (h!62447 (t!364325 rules!1164))) lt!1997014))))

(declare-fun res!2080486 () Bool)

(assert (=> b!4873598 (= res!2080486 (isEmpty!29986 (_1!33241 (findLongestMatchInner!1725 (regex!8046 (h!62447 (t!364325 rules!1164))) Nil!55997 (size!36925 Nil!55997) lt!1997014 lt!1997014 (size!36925 lt!1997014)))))))

(declare-fun e!3046456 () Bool)

(assert (=> b!4873598 (=> res!2080486 e!3046456)))

(assert (=> b!4873598 e!3046456))

(declare-fun lt!1997009 () Unit!145990)

(assert (=> b!4873598 (= lt!1997009 lt!1997012)))

(declare-fun lt!1997016 () Unit!145990)

(assert (=> b!4873598 (= lt!1997016 (lemmaInv!1208 (transformation!8046 (h!62447 (t!364325 rules!1164)))))))

(declare-fun lt!1997017 () Unit!145990)

(assert (=> b!4873598 (= lt!1997017 (ForallOf!1105 lambda!243582 (_1!33240 lt!1997010)))))

(declare-fun lt!1997008 () Unit!145990)

(assert (=> b!4873598 (= lt!1997008 (ForallOf!1105 lambda!243582 (seqFromList!5902 (list!17526 (_1!33240 lt!1997010)))))))

(declare-fun lt!1997013 () Option!13797)

(assert (=> b!4873598 (= lt!1997013 (Some!13796 (tuple2!59865 (Token!14677 (apply!13506 (transformation!8046 (h!62447 (t!364325 rules!1164))) (_1!33240 lt!1997010)) (h!62447 (t!364325 rules!1164)) (size!36922 (_1!33240 lt!1997010)) (list!17526 (_1!33240 lt!1997010))) (_2!33240 lt!1997010))))))

(declare-fun lt!1997015 () Unit!145990)

(assert (=> b!4873598 (= lt!1997015 (lemmaEqSameImage!1062 (transformation!8046 (h!62447 (t!364325 rules!1164))) (_1!33240 lt!1997010) (seqFromList!5902 (list!17526 (_1!33240 lt!1997010)))))))

(declare-fun d!1565284 () Bool)

(declare-fun e!3046455 () Bool)

(assert (=> d!1565284 e!3046455))

(declare-fun res!2080489 () Bool)

(assert (=> d!1565284 (=> (not res!2080489) (not e!3046455))))

(declare-fun lt!1997011 () Option!13797)

(assert (=> d!1565284 (= res!2080489 (= (isDefined!10856 lt!1997011) (isDefined!10857 (maxPrefixOneRule!3495 thiss!11460 (h!62447 (t!364325 rules!1164)) (list!17526 input!585)))))))

(assert (=> d!1565284 (= lt!1997011 e!3046457)))

(declare-fun c!828897 () Bool)

(assert (=> d!1565284 (= c!828897 (isEmpty!29987 (_1!33240 lt!1997010)))))

(assert (=> d!1565284 (= lt!1997010 (findLongestMatchWithZipperSequence!240 (regex!8046 (h!62447 (t!364325 rules!1164))) input!585))))

(assert (=> d!1565284 (ruleValid!3634 thiss!11460 (h!62447 (t!364325 rules!1164)))))

(assert (=> d!1565284 (= (maxPrefixOneRuleZipperSequence!580 thiss!11460 (h!62447 (t!364325 rules!1164)) input!585) lt!1997011)))

(declare-fun b!4873599 () Bool)

(assert (=> b!4873599 (= e!3046457 None!13796)))

(declare-fun b!4873600 () Bool)

(declare-fun e!3046459 () Bool)

(declare-fun e!3046458 () Bool)

(assert (=> b!4873600 (= e!3046459 e!3046458)))

(declare-fun res!2080488 () Bool)

(assert (=> b!4873600 (=> (not res!2080488) (not e!3046458))))

(assert (=> b!4873600 (= res!2080488 (= (_1!33235 (get!19242 lt!1997011)) (_1!33237 (get!19243 (maxPrefixOneRule!3495 thiss!11460 (h!62447 (t!364325 rules!1164)) (list!17526 input!585))))))))

(declare-fun b!4873601 () Bool)

(assert (=> b!4873601 (= e!3046455 e!3046459)))

(declare-fun res!2080487 () Bool)

(assert (=> b!4873601 (=> res!2080487 e!3046459)))

(assert (=> b!4873601 (= res!2080487 (not (isDefined!10856 lt!1997011)))))

(declare-fun b!4873602 () Bool)

(assert (=> b!4873602 (= e!3046456 (matchR!6496 (regex!8046 (h!62447 (t!364325 rules!1164))) (_1!33241 (findLongestMatchInner!1725 (regex!8046 (h!62447 (t!364325 rules!1164))) Nil!55997 (size!36925 Nil!55997) lt!1997014 lt!1997014 (size!36925 lt!1997014)))))))

(declare-fun b!4873603 () Bool)

(assert (=> b!4873603 (= e!3046458 (= (list!17526 (_2!33235 (get!19242 lt!1997011))) (_2!33237 (get!19243 (maxPrefixOneRule!3495 thiss!11460 (h!62447 (t!364325 rules!1164)) (list!17526 input!585))))))))

(assert (= (and d!1565284 c!828897) b!4873599))

(assert (= (and d!1565284 (not c!828897)) b!4873598))

(assert (= (and b!4873598 (not res!2080486)) b!4873602))

(assert (= (and d!1565284 res!2080489) b!4873601))

(assert (= (and b!4873601 (not res!2080487)) b!4873600))

(assert (= (and b!4873600 res!2080488) b!4873603))

(assert (=> d!1565284 m!5873856))

(declare-fun m!5874814 () Bool)

(assert (=> d!1565284 m!5874814))

(assert (=> d!1565284 m!5874814))

(declare-fun m!5874816 () Bool)

(assert (=> d!1565284 m!5874816))

(declare-fun m!5874818 () Bool)

(assert (=> d!1565284 m!5874818))

(declare-fun m!5874820 () Bool)

(assert (=> d!1565284 m!5874820))

(declare-fun m!5874822 () Bool)

(assert (=> d!1565284 m!5874822))

(assert (=> d!1565284 m!5873856))

(declare-fun m!5874824 () Bool)

(assert (=> d!1565284 m!5874824))

(assert (=> b!4873603 m!5873856))

(assert (=> b!4873603 m!5874814))

(declare-fun m!5874826 () Bool)

(assert (=> b!4873603 m!5874826))

(assert (=> b!4873603 m!5874814))

(declare-fun m!5874828 () Bool)

(assert (=> b!4873603 m!5874828))

(assert (=> b!4873603 m!5873856))

(declare-fun m!5874830 () Bool)

(assert (=> b!4873603 m!5874830))

(assert (=> b!4873602 m!5874316))

(declare-fun m!5874832 () Bool)

(assert (=> b!4873602 m!5874832))

(assert (=> b!4873602 m!5874316))

(assert (=> b!4873602 m!5874832))

(declare-fun m!5874834 () Bool)

(assert (=> b!4873602 m!5874834))

(declare-fun m!5874836 () Bool)

(assert (=> b!4873602 m!5874836))

(assert (=> b!4873600 m!5874830))

(assert (=> b!4873600 m!5873856))

(assert (=> b!4873600 m!5873856))

(assert (=> b!4873600 m!5874814))

(assert (=> b!4873600 m!5874814))

(assert (=> b!4873600 m!5874828))

(declare-fun m!5874838 () Bool)

(assert (=> b!4873598 m!5874838))

(declare-fun m!5874840 () Bool)

(assert (=> b!4873598 m!5874840))

(declare-fun m!5874842 () Bool)

(assert (=> b!4873598 m!5874842))

(declare-fun m!5874844 () Bool)

(assert (=> b!4873598 m!5874844))

(assert (=> b!4873598 m!5874842))

(declare-fun m!5874846 () Bool)

(assert (=> b!4873598 m!5874846))

(assert (=> b!4873598 m!5874316))

(assert (=> b!4873598 m!5874832))

(assert (=> b!4873598 m!5874834))

(declare-fun m!5874848 () Bool)

(assert (=> b!4873598 m!5874848))

(declare-fun m!5874850 () Bool)

(assert (=> b!4873598 m!5874850))

(assert (=> b!4873598 m!5874838))

(assert (=> b!4873598 m!5874842))

(declare-fun m!5874852 () Bool)

(assert (=> b!4873598 m!5874852))

(assert (=> b!4873598 m!5873856))

(declare-fun m!5874854 () Bool)

(assert (=> b!4873598 m!5874854))

(assert (=> b!4873598 m!5874832))

(declare-fun m!5874856 () Bool)

(assert (=> b!4873598 m!5874856))

(assert (=> b!4873598 m!5874316))

(assert (=> b!4873601 m!5874820))

(assert (=> bm!338317 d!1565284))

(declare-fun b!4873616 () Bool)

(declare-fun res!2080494 () Bool)

(declare-fun e!3046467 () Bool)

(assert (=> b!4873616 (=> (not res!2080494) (not e!3046467))))

(declare-fun lt!1997020 () List!56121)

(assert (=> b!4873616 (= res!2080494 (= (size!36925 lt!1997020) (+ (size!36925 (list!17526 (charsOf!5345 (_1!33237 (get!19243 lt!1996788))))) (size!36925 (_2!33237 (get!19243 lt!1996788))))))))

(declare-fun d!1565286 () Bool)

(assert (=> d!1565286 e!3046467))

(declare-fun res!2080495 () Bool)

(assert (=> d!1565286 (=> (not res!2080495) (not e!3046467))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9988 (List!56121) (InoxSet C!26440))

(assert (=> d!1565286 (= res!2080495 (= (content!9988 lt!1997020) ((_ map or) (content!9988 (list!17526 (charsOf!5345 (_1!33237 (get!19243 lt!1996788))))) (content!9988 (_2!33237 (get!19243 lt!1996788))))))))

(declare-fun e!3046466 () List!56121)

(assert (=> d!1565286 (= lt!1997020 e!3046466)))

(declare-fun c!828900 () Bool)

(assert (=> d!1565286 (= c!828900 ((_ is Nil!55997) (list!17526 (charsOf!5345 (_1!33237 (get!19243 lt!1996788))))))))

(assert (=> d!1565286 (= (++!12199 (list!17526 (charsOf!5345 (_1!33237 (get!19243 lt!1996788)))) (_2!33237 (get!19243 lt!1996788))) lt!1997020)))

(declare-fun b!4873617 () Bool)

(assert (=> b!4873617 (= e!3046467 (or (not (= (_2!33237 (get!19243 lt!1996788)) Nil!55997)) (= lt!1997020 (list!17526 (charsOf!5345 (_1!33237 (get!19243 lt!1996788)))))))))

(declare-fun b!4873614 () Bool)

(assert (=> b!4873614 (= e!3046466 (_2!33237 (get!19243 lt!1996788)))))

(declare-fun b!4873615 () Bool)

(assert (=> b!4873615 (= e!3046466 (Cons!55997 (h!62445 (list!17526 (charsOf!5345 (_1!33237 (get!19243 lt!1996788))))) (++!12199 (t!364323 (list!17526 (charsOf!5345 (_1!33237 (get!19243 lt!1996788))))) (_2!33237 (get!19243 lt!1996788)))))))

(assert (= (and d!1565286 c!828900) b!4873614))

(assert (= (and d!1565286 (not c!828900)) b!4873615))

(assert (= (and d!1565286 res!2080495) b!4873616))

(assert (= (and b!4873616 res!2080494) b!4873617))

(declare-fun m!5874858 () Bool)

(assert (=> b!4873616 m!5874858))

(assert (=> b!4873616 m!5874204))

(declare-fun m!5874860 () Bool)

(assert (=> b!4873616 m!5874860))

(assert (=> b!4873616 m!5874224))

(declare-fun m!5874862 () Bool)

(assert (=> d!1565286 m!5874862))

(assert (=> d!1565286 m!5874204))

(declare-fun m!5874864 () Bool)

(assert (=> d!1565286 m!5874864))

(declare-fun m!5874866 () Bool)

(assert (=> d!1565286 m!5874866))

(declare-fun m!5874868 () Bool)

(assert (=> b!4873615 m!5874868))

(assert (=> b!4873200 d!1565286))

(declare-fun d!1565288 () Bool)

(assert (=> d!1565288 (= (list!17526 (charsOf!5345 (_1!33237 (get!19243 lt!1996788)))) (list!17529 (c!828795 (charsOf!5345 (_1!33237 (get!19243 lt!1996788))))))))

(declare-fun bs!1174861 () Bool)

(assert (= bs!1174861 d!1565288))

(declare-fun m!5874870 () Bool)

(assert (=> bs!1174861 m!5874870))

(assert (=> b!4873200 d!1565288))

(declare-fun d!1565290 () Bool)

(declare-fun lt!1997023 () BalanceConc!28638)

(assert (=> d!1565290 (= (list!17526 lt!1997023) (originalCharacters!8369 (_1!33237 (get!19243 lt!1996788))))))

(declare-fun dynLambda!22502 (Int TokenValue!8356) BalanceConc!28638)

(assert (=> d!1565290 (= lt!1997023 (dynLambda!22502 (toChars!10780 (transformation!8046 (rule!11190 (_1!33237 (get!19243 lt!1996788))))) (value!258453 (_1!33237 (get!19243 lt!1996788)))))))

(assert (=> d!1565290 (= (charsOf!5345 (_1!33237 (get!19243 lt!1996788))) lt!1997023)))

(declare-fun b_lambda!193779 () Bool)

(assert (=> (not b_lambda!193779) (not d!1565290)))

(declare-fun tb!258105 () Bool)

(declare-fun t!364366 () Bool)

(assert (=> (and b!4872797 (= (toChars!10780 (transformation!8046 (h!62447 rules!1164))) (toChars!10780 (transformation!8046 (rule!11190 (_1!33237 (get!19243 lt!1996788)))))) t!364366) tb!258105))

(declare-fun b!4873622 () Bool)

(declare-fun e!3046470 () Bool)

(declare-fun tp!1371247 () Bool)

(assert (=> b!4873622 (= e!3046470 (and (inv!71928 (c!828795 (dynLambda!22502 (toChars!10780 (transformation!8046 (rule!11190 (_1!33237 (get!19243 lt!1996788))))) (value!258453 (_1!33237 (get!19243 lt!1996788)))))) tp!1371247))))

(declare-fun result!321310 () Bool)

(assert (=> tb!258105 (= result!321310 (and (inv!71927 (dynLambda!22502 (toChars!10780 (transformation!8046 (rule!11190 (_1!33237 (get!19243 lt!1996788))))) (value!258453 (_1!33237 (get!19243 lt!1996788))))) e!3046470))))

(assert (= tb!258105 b!4873622))

(declare-fun m!5874872 () Bool)

(assert (=> b!4873622 m!5874872))

(declare-fun m!5874874 () Bool)

(assert (=> tb!258105 m!5874874))

(assert (=> d!1565290 t!364366))

(declare-fun b_and!343227 () Bool)

(assert (= b_and!343173 (and (=> t!364366 result!321310) b_and!343227)))

(declare-fun t!364368 () Bool)

(declare-fun tb!258107 () Bool)

(assert (=> (and b!4872942 (= (toChars!10780 (transformation!8046 (h!62447 (t!364325 rules!1164)))) (toChars!10780 (transformation!8046 (rule!11190 (_1!33237 (get!19243 lt!1996788)))))) t!364368) tb!258107))

(declare-fun result!321314 () Bool)

(assert (= result!321314 result!321310))

(assert (=> d!1565290 t!364368))

(declare-fun b_and!343229 () Bool)

(assert (= b_and!343181 (and (=> t!364368 result!321314) b_and!343229)))

(declare-fun tb!258109 () Bool)

(declare-fun t!364370 () Bool)

(assert (=> (and b!4873309 (= (toChars!10780 (transformation!8046 (h!62447 (t!364325 (t!364325 rules!1164))))) (toChars!10780 (transformation!8046 (rule!11190 (_1!33237 (get!19243 lt!1996788)))))) t!364370) tb!258109))

(declare-fun result!321316 () Bool)

(assert (= result!321316 result!321310))

(assert (=> d!1565290 t!364370))

(declare-fun b_and!343231 () Bool)

(assert (= b_and!343189 (and (=> t!364370 result!321316) b_and!343231)))

(declare-fun m!5874876 () Bool)

(assert (=> d!1565290 m!5874876))

(declare-fun m!5874878 () Bool)

(assert (=> d!1565290 m!5874878))

(assert (=> b!4873200 d!1565290))

(assert (=> b!4873200 d!1565274))

(declare-fun d!1565292 () Bool)

(declare-fun lt!1997024 () Int)

(assert (=> d!1565292 (>= lt!1997024 0)))

(declare-fun e!3046471 () Int)

(assert (=> d!1565292 (= lt!1997024 e!3046471)))

(declare-fun c!828901 () Bool)

(assert (=> d!1565292 (= c!828901 ((_ is Nil!55997) (list!17530 (xs!17906 (c!828795 input!585)))))))

(assert (=> d!1565292 (= (size!36925 (list!17530 (xs!17906 (c!828795 input!585)))) lt!1997024)))

(declare-fun b!4873623 () Bool)

(assert (=> b!4873623 (= e!3046471 0)))

(declare-fun b!4873624 () Bool)

(assert (=> b!4873624 (= e!3046471 (+ 1 (size!36925 (t!364323 (list!17530 (xs!17906 (c!828795 input!585)))))))))

(assert (= (and d!1565292 c!828901) b!4873623))

(assert (= (and d!1565292 (not c!828901)) b!4873624))

(declare-fun m!5874880 () Bool)

(assert (=> b!4873624 m!5874880))

(assert (=> d!1565064 d!1565292))

(declare-fun d!1565294 () Bool)

(assert (=> d!1565294 (= (list!17530 (xs!17906 (c!828795 input!585))) (innerList!14686 (xs!17906 (c!828795 input!585))))))

(assert (=> d!1565064 d!1565294))

(declare-fun d!1565296 () Bool)

(assert (=> d!1565296 (= (max!0 (height!1935 (left!40673 (c!828795 input!585))) (height!1935 (right!41003 (c!828795 input!585)))) (ite (< (height!1935 (left!40673 (c!828795 input!585))) (height!1935 (right!41003 (c!828795 input!585)))) (height!1935 (right!41003 (c!828795 input!585))) (height!1935 (left!40673 (c!828795 input!585)))))))

(assert (=> b!4873234 d!1565296))

(declare-fun d!1565298 () Bool)

(assert (=> d!1565298 (= (height!1935 (left!40673 (c!828795 input!585))) (ite ((_ is Empty!14598) (left!40673 (c!828795 input!585))) 0 (ite ((_ is Leaf!24332) (left!40673 (c!828795 input!585))) 1 (cheight!14809 (left!40673 (c!828795 input!585))))))))

(assert (=> b!4873234 d!1565298))

(declare-fun d!1565300 () Bool)

(assert (=> d!1565300 (= (height!1935 (right!41003 (c!828795 input!585))) (ite ((_ is Empty!14598) (right!41003 (c!828795 input!585))) 0 (ite ((_ is Leaf!24332) (right!41003 (c!828795 input!585))) 1 (cheight!14809 (right!41003 (c!828795 input!585))))))))

(assert (=> b!4873234 d!1565300))

(declare-fun d!1565302 () Bool)

(declare-fun res!2080496 () Bool)

(declare-fun e!3046472 () Bool)

(assert (=> d!1565302 (=> res!2080496 e!3046472)))

(assert (=> d!1565302 (= res!2080496 ((_ is Nil!55999) (t!364325 rules!1164)))))

(assert (=> d!1565302 (= (noDuplicateTag!3287 thiss!11460 (t!364325 rules!1164) (Cons!56001 (tag!8910 (h!62447 rules!1164)) Nil!56001)) e!3046472)))

(declare-fun b!4873625 () Bool)

(declare-fun e!3046473 () Bool)

(assert (=> b!4873625 (= e!3046472 e!3046473)))

(declare-fun res!2080497 () Bool)

(assert (=> b!4873625 (=> (not res!2080497) (not e!3046473))))

(assert (=> b!4873625 (= res!2080497 (not (contains!19404 (Cons!56001 (tag!8910 (h!62447 rules!1164)) Nil!56001) (tag!8910 (h!62447 (t!364325 rules!1164))))))))

(declare-fun b!4873626 () Bool)

(assert (=> b!4873626 (= e!3046473 (noDuplicateTag!3287 thiss!11460 (t!364325 (t!364325 rules!1164)) (Cons!56001 (tag!8910 (h!62447 (t!364325 rules!1164))) (Cons!56001 (tag!8910 (h!62447 rules!1164)) Nil!56001))))))

(assert (= (and d!1565302 (not res!2080496)) b!4873625))

(assert (= (and b!4873625 res!2080497) b!4873626))

(declare-fun m!5874882 () Bool)

(assert (=> b!4873625 m!5874882))

(declare-fun m!5874884 () Bool)

(assert (=> b!4873626 m!5874884))

(assert (=> b!4873253 d!1565302))

(declare-fun d!1565304 () Bool)

(declare-fun lt!1997025 () Int)

(assert (=> d!1565304 (>= lt!1997025 0)))

(declare-fun e!3046474 () Int)

(assert (=> d!1565304 (= lt!1997025 e!3046474)))

(declare-fun c!828902 () Bool)

(assert (=> d!1565304 (= c!828902 ((_ is Nil!55997) (t!364323 (list!17526 input!585))))))

(assert (=> d!1565304 (= (size!36925 (t!364323 (list!17526 input!585))) lt!1997025)))

(declare-fun b!4873627 () Bool)

(assert (=> b!4873627 (= e!3046474 0)))

(declare-fun b!4873628 () Bool)

(assert (=> b!4873628 (= e!3046474 (+ 1 (size!36925 (t!364323 (t!364323 (list!17526 input!585))))))))

(assert (= (and d!1565304 c!828902) b!4873627))

(assert (= (and d!1565304 (not c!828902)) b!4873628))

(declare-fun m!5874886 () Bool)

(assert (=> b!4873628 m!5874886))

(assert (=> b!4872965 d!1565304))

(declare-fun d!1565306 () Bool)

(declare-fun lt!1997026 () Int)

(assert (=> d!1565306 (>= lt!1997026 0)))

(declare-fun e!3046475 () Int)

(assert (=> d!1565306 (= lt!1997026 e!3046475)))

(declare-fun c!828903 () Bool)

(assert (=> d!1565306 (= c!828903 ((_ is Nil!55997) (t!364323 (list!17526 (_2!33235 (v!49726 lt!1996614))))))))

(assert (=> d!1565306 (= (size!36925 (t!364323 (list!17526 (_2!33235 (v!49726 lt!1996614))))) lt!1997026)))

(declare-fun b!4873629 () Bool)

(assert (=> b!4873629 (= e!3046475 0)))

(declare-fun b!4873630 () Bool)

(assert (=> b!4873630 (= e!3046475 (+ 1 (size!36925 (t!364323 (t!364323 (list!17526 (_2!33235 (v!49726 lt!1996614))))))))))

(assert (= (and d!1565306 c!828903) b!4873629))

(assert (= (and d!1565306 (not c!828903)) b!4873630))

(declare-fun m!5874888 () Bool)

(assert (=> b!4873630 m!5874888))

(assert (=> b!4873226 d!1565306))

(declare-fun d!1565308 () Bool)

(declare-fun lt!1997029 () Bool)

(assert (=> d!1565308 (= lt!1997029 (isEmpty!29986 (list!17529 (right!41003 (c!828795 input!585)))))))

(assert (=> d!1565308 (= lt!1997029 (= (size!36926 (right!41003 (c!828795 input!585))) 0))))

(assert (=> d!1565308 (= (isEmpty!29983 (right!41003 (c!828795 input!585))) lt!1997029)))

(declare-fun bs!1174862 () Bool)

(assert (= bs!1174862 d!1565308))

(declare-fun m!5874890 () Bool)

(assert (=> bs!1174862 m!5874890))

(assert (=> bs!1174862 m!5874890))

(declare-fun m!5874892 () Bool)

(assert (=> bs!1174862 m!5874892))

(assert (=> bs!1174862 m!5874258))

(assert (=> b!4873134 d!1565308))

(assert (=> b!4873239 d!1565272))

(declare-fun b!4873659 () Bool)

(declare-fun e!3046493 () Bool)

(declare-fun lt!1997032 () Bool)

(declare-fun call!338355 () Bool)

(assert (=> b!4873659 (= e!3046493 (= lt!1997032 call!338355))))

(declare-fun b!4873660 () Bool)

(declare-fun res!2080518 () Bool)

(declare-fun e!3046495 () Bool)

(assert (=> b!4873660 (=> (not res!2080518) (not e!3046495))))

(assert (=> b!4873660 (= res!2080518 (not call!338355))))

(declare-fun b!4873661 () Bool)

(declare-fun e!3046496 () Bool)

(declare-fun e!3046490 () Bool)

(assert (=> b!4873661 (= e!3046496 e!3046490)))

(declare-fun res!2080517 () Bool)

(assert (=> b!4873661 (=> res!2080517 e!3046490)))

(assert (=> b!4873661 (= res!2080517 call!338355)))

(declare-fun b!4873662 () Bool)

(declare-fun res!2080515 () Bool)

(assert (=> b!4873662 (=> (not res!2080515) (not e!3046495))))

(assert (=> b!4873662 (= res!2080515 (isEmpty!29986 (tail!9564 (list!17526 (charsOf!5345 (_1!33237 (get!19243 lt!1996788)))))))))

(declare-fun b!4873663 () Bool)

(assert (=> b!4873663 (= e!3046495 (= (head!10418 (list!17526 (charsOf!5345 (_1!33237 (get!19243 lt!1996788))))) (c!828796 (regex!8046 (rule!11190 (_1!33237 (get!19243 lt!1996788)))))))))

(declare-fun b!4873664 () Bool)

(declare-fun res!2080516 () Bool)

(assert (=> b!4873664 (=> res!2080516 e!3046490)))

(assert (=> b!4873664 (= res!2080516 (not (isEmpty!29986 (tail!9564 (list!17526 (charsOf!5345 (_1!33237 (get!19243 lt!1996788))))))))))

(declare-fun b!4873665 () Bool)

(declare-fun e!3046492 () Bool)

(assert (=> b!4873665 (= e!3046493 e!3046492)))

(declare-fun c!828911 () Bool)

(assert (=> b!4873665 (= c!828911 ((_ is EmptyLang!13121) (regex!8046 (rule!11190 (_1!33237 (get!19243 lt!1996788))))))))

(declare-fun d!1565310 () Bool)

(assert (=> d!1565310 e!3046493))

(declare-fun c!828910 () Bool)

(assert (=> d!1565310 (= c!828910 ((_ is EmptyExpr!13121) (regex!8046 (rule!11190 (_1!33237 (get!19243 lt!1996788))))))))

(declare-fun e!3046494 () Bool)

(assert (=> d!1565310 (= lt!1997032 e!3046494)))

(declare-fun c!828912 () Bool)

(assert (=> d!1565310 (= c!828912 (isEmpty!29986 (list!17526 (charsOf!5345 (_1!33237 (get!19243 lt!1996788))))))))

(declare-fun validRegex!5872 (Regex!13121) Bool)

(assert (=> d!1565310 (validRegex!5872 (regex!8046 (rule!11190 (_1!33237 (get!19243 lt!1996788)))))))

(assert (=> d!1565310 (= (matchR!6496 (regex!8046 (rule!11190 (_1!33237 (get!19243 lt!1996788)))) (list!17526 (charsOf!5345 (_1!33237 (get!19243 lt!1996788))))) lt!1997032)))

(declare-fun b!4873666 () Bool)

(declare-fun e!3046491 () Bool)

(assert (=> b!4873666 (= e!3046491 e!3046496)))

(declare-fun res!2080521 () Bool)

(assert (=> b!4873666 (=> (not res!2080521) (not e!3046496))))

(assert (=> b!4873666 (= res!2080521 (not lt!1997032))))

(declare-fun b!4873667 () Bool)

(declare-fun res!2080514 () Bool)

(assert (=> b!4873667 (=> res!2080514 e!3046491)))

(assert (=> b!4873667 (= res!2080514 e!3046495)))

(declare-fun res!2080519 () Bool)

(assert (=> b!4873667 (=> (not res!2080519) (not e!3046495))))

(assert (=> b!4873667 (= res!2080519 lt!1997032)))

(declare-fun bm!338350 () Bool)

(assert (=> bm!338350 (= call!338355 (isEmpty!29986 (list!17526 (charsOf!5345 (_1!33237 (get!19243 lt!1996788))))))))

(declare-fun b!4873668 () Bool)

(declare-fun derivativeStep!3869 (Regex!13121 C!26440) Regex!13121)

(assert (=> b!4873668 (= e!3046494 (matchR!6496 (derivativeStep!3869 (regex!8046 (rule!11190 (_1!33237 (get!19243 lt!1996788)))) (head!10418 (list!17526 (charsOf!5345 (_1!33237 (get!19243 lt!1996788)))))) (tail!9564 (list!17526 (charsOf!5345 (_1!33237 (get!19243 lt!1996788)))))))))

(declare-fun b!4873669 () Bool)

(declare-fun res!2080520 () Bool)

(assert (=> b!4873669 (=> res!2080520 e!3046491)))

(assert (=> b!4873669 (= res!2080520 (not ((_ is ElementMatch!13121) (regex!8046 (rule!11190 (_1!33237 (get!19243 lt!1996788)))))))))

(assert (=> b!4873669 (= e!3046492 e!3046491)))

(declare-fun b!4873670 () Bool)

(assert (=> b!4873670 (= e!3046490 (not (= (head!10418 (list!17526 (charsOf!5345 (_1!33237 (get!19243 lt!1996788))))) (c!828796 (regex!8046 (rule!11190 (_1!33237 (get!19243 lt!1996788))))))))))

(declare-fun b!4873671 () Bool)

(assert (=> b!4873671 (= e!3046492 (not lt!1997032))))

(declare-fun b!4873672 () Bool)

(declare-fun nullable!4545 (Regex!13121) Bool)

(assert (=> b!4873672 (= e!3046494 (nullable!4545 (regex!8046 (rule!11190 (_1!33237 (get!19243 lt!1996788))))))))

(assert (= (and d!1565310 c!828912) b!4873672))

(assert (= (and d!1565310 (not c!828912)) b!4873668))

(assert (= (and d!1565310 c!828910) b!4873659))

(assert (= (and d!1565310 (not c!828910)) b!4873665))

(assert (= (and b!4873665 c!828911) b!4873671))

(assert (= (and b!4873665 (not c!828911)) b!4873669))

(assert (= (and b!4873669 (not res!2080520)) b!4873667))

(assert (= (and b!4873667 res!2080519) b!4873660))

(assert (= (and b!4873660 res!2080518) b!4873662))

(assert (= (and b!4873662 res!2080515) b!4873663))

(assert (= (and b!4873667 (not res!2080514)) b!4873666))

(assert (= (and b!4873666 res!2080521) b!4873661))

(assert (= (and b!4873661 (not res!2080517)) b!4873664))

(assert (= (and b!4873664 (not res!2080516)) b!4873670))

(assert (= (or b!4873659 b!4873660 b!4873661) bm!338350))

(declare-fun m!5874894 () Bool)

(assert (=> b!4873672 m!5874894))

(assert (=> b!4873664 m!5874204))

(declare-fun m!5874896 () Bool)

(assert (=> b!4873664 m!5874896))

(assert (=> b!4873664 m!5874896))

(declare-fun m!5874898 () Bool)

(assert (=> b!4873664 m!5874898))

(assert (=> b!4873663 m!5874204))

(declare-fun m!5874900 () Bool)

(assert (=> b!4873663 m!5874900))

(assert (=> bm!338350 m!5874204))

(declare-fun m!5874902 () Bool)

(assert (=> bm!338350 m!5874902))

(assert (=> b!4873662 m!5874204))

(assert (=> b!4873662 m!5874896))

(assert (=> b!4873662 m!5874896))

(assert (=> b!4873662 m!5874898))

(assert (=> b!4873668 m!5874204))

(assert (=> b!4873668 m!5874900))

(assert (=> b!4873668 m!5874900))

(declare-fun m!5874904 () Bool)

(assert (=> b!4873668 m!5874904))

(assert (=> b!4873668 m!5874204))

(assert (=> b!4873668 m!5874896))

(assert (=> b!4873668 m!5874904))

(assert (=> b!4873668 m!5874896))

(declare-fun m!5874906 () Bool)

(assert (=> b!4873668 m!5874906))

(assert (=> d!1565310 m!5874204))

(assert (=> d!1565310 m!5874902))

(declare-fun m!5874908 () Bool)

(assert (=> d!1565310 m!5874908))

(assert (=> b!4873670 m!5874204))

(assert (=> b!4873670 m!5874900))

(assert (=> b!4873198 d!1565310))

(assert (=> b!4873198 d!1565274))

(assert (=> b!4873198 d!1565288))

(assert (=> b!4873198 d!1565290))

(declare-fun d!1565312 () Bool)

(assert (=> d!1565312 (= (get!19243 (maxPrefix!4553 thiss!11460 (t!364325 rules!1164) (list!17526 input!585))) (v!49728 (maxPrefix!4553 thiss!11460 (t!364325 rules!1164) (list!17526 input!585))))))

(assert (=> b!4873237 d!1565312))

(declare-fun d!1565314 () Bool)

(assert (=> d!1565314 (= (get!19242 lt!1996804) (v!49726 lt!1996804))))

(assert (=> b!4873237 d!1565314))

(assert (=> b!4873237 d!1565004))

(declare-fun b!4873673 () Bool)

(declare-fun res!2080528 () Bool)

(declare-fun e!3046498 () Bool)

(assert (=> b!4873673 (=> (not res!2080528) (not e!3046498))))

(declare-fun lt!1997035 () Option!13799)

(assert (=> b!4873673 (= res!2080528 (matchR!6496 (regex!8046 (rule!11190 (_1!33237 (get!19243 lt!1997035)))) (list!17526 (charsOf!5345 (_1!33237 (get!19243 lt!1997035))))))))

(declare-fun b!4873674 () Bool)

(declare-fun e!3046497 () Bool)

(assert (=> b!4873674 (= e!3046497 e!3046498)))

(declare-fun res!2080524 () Bool)

(assert (=> b!4873674 (=> (not res!2080524) (not e!3046498))))

(assert (=> b!4873674 (= res!2080524 (isDefined!10857 lt!1997035))))

(declare-fun b!4873675 () Bool)

(declare-fun res!2080527 () Bool)

(assert (=> b!4873675 (=> (not res!2080527) (not e!3046498))))

(assert (=> b!4873675 (= res!2080527 (= (++!12199 (list!17526 (charsOf!5345 (_1!33237 (get!19243 lt!1997035)))) (_2!33237 (get!19243 lt!1997035))) (list!17526 input!585)))))

(declare-fun b!4873676 () Bool)

(declare-fun e!3046499 () Option!13799)

(declare-fun call!338356 () Option!13799)

(assert (=> b!4873676 (= e!3046499 call!338356)))

(declare-fun b!4873677 () Bool)

(declare-fun res!2080523 () Bool)

(assert (=> b!4873677 (=> (not res!2080523) (not e!3046498))))

(assert (=> b!4873677 (= res!2080523 (= (value!258453 (_1!33237 (get!19243 lt!1997035))) (apply!13506 (transformation!8046 (rule!11190 (_1!33237 (get!19243 lt!1997035)))) (seqFromList!5902 (originalCharacters!8369 (_1!33237 (get!19243 lt!1997035)))))))))

(declare-fun bm!338351 () Bool)

(assert (=> bm!338351 (= call!338356 (maxPrefixOneRule!3495 thiss!11460 (h!62447 (t!364325 rules!1164)) (list!17526 input!585)))))

(declare-fun b!4873678 () Bool)

(declare-fun res!2080526 () Bool)

(assert (=> b!4873678 (=> (not res!2080526) (not e!3046498))))

(assert (=> b!4873678 (= res!2080526 (= (list!17526 (charsOf!5345 (_1!33237 (get!19243 lt!1997035)))) (originalCharacters!8369 (_1!33237 (get!19243 lt!1997035)))))))

(declare-fun b!4873679 () Bool)

(declare-fun lt!1997036 () Option!13799)

(declare-fun lt!1997033 () Option!13799)

(assert (=> b!4873679 (= e!3046499 (ite (and ((_ is None!13798) lt!1997036) ((_ is None!13798) lt!1997033)) None!13798 (ite ((_ is None!13798) lt!1997033) lt!1997036 (ite ((_ is None!13798) lt!1997036) lt!1997033 (ite (>= (size!36921 (_1!33237 (v!49728 lt!1997036))) (size!36921 (_1!33237 (v!49728 lt!1997033)))) lt!1997036 lt!1997033)))))))

(assert (=> b!4873679 (= lt!1997036 call!338356)))

(assert (=> b!4873679 (= lt!1997033 (maxPrefix!4553 thiss!11460 (t!364325 (t!364325 rules!1164)) (list!17526 input!585)))))

(declare-fun d!1565316 () Bool)

(assert (=> d!1565316 e!3046497))

(declare-fun res!2080522 () Bool)

(assert (=> d!1565316 (=> res!2080522 e!3046497)))

(assert (=> d!1565316 (= res!2080522 (isEmpty!29985 lt!1997035))))

(assert (=> d!1565316 (= lt!1997035 e!3046499)))

(declare-fun c!828913 () Bool)

(assert (=> d!1565316 (= c!828913 (and ((_ is Cons!55999) (t!364325 rules!1164)) ((_ is Nil!55999) (t!364325 (t!364325 rules!1164)))))))

(declare-fun lt!1997034 () Unit!145990)

(declare-fun lt!1997037 () Unit!145990)

(assert (=> d!1565316 (= lt!1997034 lt!1997037)))

(assert (=> d!1565316 (isPrefix!4770 (list!17526 input!585) (list!17526 input!585))))

(assert (=> d!1565316 (= lt!1997037 (lemmaIsPrefixRefl!3167 (list!17526 input!585) (list!17526 input!585)))))

(assert (=> d!1565316 (rulesValidInductive!3025 thiss!11460 (t!364325 rules!1164))))

(assert (=> d!1565316 (= (maxPrefix!4553 thiss!11460 (t!364325 rules!1164) (list!17526 input!585)) lt!1997035)))

(declare-fun b!4873680 () Bool)

(assert (=> b!4873680 (= e!3046498 (contains!19403 (t!364325 rules!1164) (rule!11190 (_1!33237 (get!19243 lt!1997035)))))))

(declare-fun b!4873681 () Bool)

(declare-fun res!2080525 () Bool)

(assert (=> b!4873681 (=> (not res!2080525) (not e!3046498))))

(assert (=> b!4873681 (= res!2080525 (< (size!36925 (_2!33237 (get!19243 lt!1997035))) (size!36925 (list!17526 input!585))))))

(assert (= (and d!1565316 c!828913) b!4873676))

(assert (= (and d!1565316 (not c!828913)) b!4873679))

(assert (= (or b!4873676 b!4873679) bm!338351))

(assert (= (and d!1565316 (not res!2080522)) b!4873674))

(assert (= (and b!4873674 res!2080524) b!4873678))

(assert (= (and b!4873678 res!2080526) b!4873681))

(assert (= (and b!4873681 res!2080525) b!4873675))

(assert (= (and b!4873675 res!2080527) b!4873677))

(assert (= (and b!4873677 res!2080523) b!4873673))

(assert (= (and b!4873673 res!2080528) b!4873680))

(declare-fun m!5874910 () Bool)

(assert (=> b!4873678 m!5874910))

(declare-fun m!5874912 () Bool)

(assert (=> b!4873678 m!5874912))

(assert (=> b!4873678 m!5874912))

(declare-fun m!5874914 () Bool)

(assert (=> b!4873678 m!5874914))

(assert (=> b!4873673 m!5874910))

(assert (=> b!4873673 m!5874912))

(assert (=> b!4873673 m!5874912))

(assert (=> b!4873673 m!5874914))

(assert (=> b!4873673 m!5874914))

(declare-fun m!5874916 () Bool)

(assert (=> b!4873673 m!5874916))

(assert (=> b!4873675 m!5874910))

(assert (=> b!4873675 m!5874912))

(assert (=> b!4873675 m!5874912))

(assert (=> b!4873675 m!5874914))

(assert (=> b!4873675 m!5874914))

(declare-fun m!5874918 () Bool)

(assert (=> b!4873675 m!5874918))

(assert (=> b!4873680 m!5874910))

(declare-fun m!5874920 () Bool)

(assert (=> b!4873680 m!5874920))

(assert (=> b!4873679 m!5873856))

(declare-fun m!5874922 () Bool)

(assert (=> b!4873679 m!5874922))

(assert (=> b!4873677 m!5874910))

(declare-fun m!5874924 () Bool)

(assert (=> b!4873677 m!5874924))

(assert (=> b!4873677 m!5874924))

(declare-fun m!5874926 () Bool)

(assert (=> b!4873677 m!5874926))

(declare-fun m!5874928 () Bool)

(assert (=> d!1565316 m!5874928))

(assert (=> d!1565316 m!5873856))

(assert (=> d!1565316 m!5873856))

(assert (=> d!1565316 m!5873964))

(assert (=> d!1565316 m!5873856))

(assert (=> d!1565316 m!5873856))

(assert (=> d!1565316 m!5873966))

(assert (=> d!1565316 m!5874246))

(declare-fun m!5874930 () Bool)

(assert (=> b!4873674 m!5874930))

(assert (=> bm!338351 m!5873856))

(assert (=> bm!338351 m!5874814))

(assert (=> b!4873681 m!5874910))

(declare-fun m!5874932 () Bool)

(assert (=> b!4873681 m!5874932))

(assert (=> b!4873681 m!5873856))

(assert (=> b!4873681 m!5873858))

(assert (=> b!4873237 d!1565316))

(declare-fun d!1565318 () Bool)

(assert (=> d!1565318 (= (list!17526 (_2!33235 (get!19242 lt!1996804))) (list!17529 (c!828795 (_2!33235 (get!19242 lt!1996804)))))))

(declare-fun bs!1174863 () Bool)

(assert (= bs!1174863 d!1565318))

(declare-fun m!5874934 () Bool)

(assert (=> bs!1174863 m!5874934))

(assert (=> b!4873237 d!1565318))

(declare-fun d!1565320 () Bool)

(assert (=> d!1565320 (= (inv!71935 (xs!17906 (right!41003 (c!828795 input!585)))) (<= (size!36925 (innerList!14686 (xs!17906 (right!41003 (c!828795 input!585))))) 2147483647))))

(declare-fun bs!1174864 () Bool)

(assert (= bs!1174864 d!1565320))

(declare-fun m!5874936 () Bool)

(assert (=> bs!1174864 m!5874936))

(assert (=> b!4873326 d!1565320))

(declare-fun d!1565322 () Bool)

(declare-fun e!3046501 () Bool)

(assert (=> d!1565322 e!3046501))

(declare-fun res!2080529 () Bool)

(assert (=> d!1565322 (=> res!2080529 e!3046501)))

(declare-fun lt!1997038 () Bool)

(assert (=> d!1565322 (= res!2080529 (not lt!1997038))))

(declare-fun e!3046502 () Bool)

(assert (=> d!1565322 (= lt!1997038 e!3046502)))

(declare-fun res!2080531 () Bool)

(assert (=> d!1565322 (=> res!2080531 e!3046502)))

(assert (=> d!1565322 (= res!2080531 ((_ is Nil!55997) lt!1996803))))

(assert (=> d!1565322 (= (isPrefix!4770 lt!1996803 lt!1996808) lt!1997038)))

(declare-fun b!4873682 () Bool)

(declare-fun e!3046500 () Bool)

(assert (=> b!4873682 (= e!3046502 e!3046500)))

(declare-fun res!2080532 () Bool)

(assert (=> b!4873682 (=> (not res!2080532) (not e!3046500))))

(assert (=> b!4873682 (= res!2080532 (not ((_ is Nil!55997) lt!1996808)))))

(declare-fun b!4873683 () Bool)

(declare-fun res!2080530 () Bool)

(assert (=> b!4873683 (=> (not res!2080530) (not e!3046500))))

(assert (=> b!4873683 (= res!2080530 (= (head!10418 lt!1996803) (head!10418 lt!1996808)))))

(declare-fun b!4873685 () Bool)

(assert (=> b!4873685 (= e!3046501 (>= (size!36925 lt!1996808) (size!36925 lt!1996803)))))

(declare-fun b!4873684 () Bool)

(assert (=> b!4873684 (= e!3046500 (isPrefix!4770 (tail!9564 lt!1996803) (tail!9564 lt!1996808)))))

(assert (= (and d!1565322 (not res!2080531)) b!4873682))

(assert (= (and b!4873682 res!2080532) b!4873683))

(assert (= (and b!4873683 res!2080530) b!4873684))

(assert (= (and d!1565322 (not res!2080529)) b!4873685))

(declare-fun m!5874938 () Bool)

(assert (=> b!4873683 m!5874938))

(declare-fun m!5874940 () Bool)

(assert (=> b!4873683 m!5874940))

(declare-fun m!5874942 () Bool)

(assert (=> b!4873685 m!5874942))

(declare-fun m!5874944 () Bool)

(assert (=> b!4873685 m!5874944))

(declare-fun m!5874946 () Bool)

(assert (=> b!4873684 m!5874946))

(declare-fun m!5874948 () Bool)

(assert (=> b!4873684 m!5874948))

(assert (=> b!4873684 m!5874946))

(assert (=> b!4873684 m!5874948))

(declare-fun m!5874950 () Bool)

(assert (=> b!4873684 m!5874950))

(assert (=> d!1565104 d!1565322))

(declare-fun d!1565324 () Bool)

(assert (=> d!1565324 (= (isDefined!10857 (maxPrefixZipper!567 thiss!11460 (t!364325 rules!1164) (list!17526 input!585))) (not (isEmpty!29985 (maxPrefixZipper!567 thiss!11460 (t!364325 rules!1164) (list!17526 input!585)))))))

(declare-fun bs!1174865 () Bool)

(assert (= bs!1174865 d!1565324))

(assert (=> bs!1174865 m!5873970))

(declare-fun m!5874952 () Bool)

(assert (=> bs!1174865 m!5874952))

(assert (=> d!1565104 d!1565324))

(assert (=> d!1565104 d!1565004))

(declare-fun d!1565326 () Bool)

(assert (=> d!1565326 (isPrefix!4770 lt!1996803 lt!1996808)))

(declare-fun lt!1997039 () Unit!145990)

(assert (=> d!1565326 (= lt!1997039 (choose!35621 lt!1996803 lt!1996808))))

(assert (=> d!1565326 (= (lemmaIsPrefixRefl!3167 lt!1996803 lt!1996808) lt!1997039)))

(declare-fun bs!1174866 () Bool)

(assert (= bs!1174866 d!1565326))

(assert (=> bs!1174866 m!5874272))

(declare-fun m!5874954 () Bool)

(assert (=> bs!1174866 m!5874954))

(assert (=> d!1565104 d!1565326))

(assert (=> d!1565104 d!1565272))

(declare-fun d!1565328 () Bool)

(declare-fun lt!1997044 () Option!13799)

(assert (=> d!1565328 (= lt!1997044 (maxPrefix!4553 thiss!11460 (t!364325 rules!1164) (list!17526 input!585)))))

(declare-fun e!3046503 () Option!13799)

(assert (=> d!1565328 (= lt!1997044 e!3046503)))

(declare-fun c!828914 () Bool)

(assert (=> d!1565328 (= c!828914 (and ((_ is Cons!55999) (t!364325 rules!1164)) ((_ is Nil!55999) (t!364325 (t!364325 rules!1164)))))))

(declare-fun lt!1997042 () Unit!145990)

(declare-fun lt!1997041 () Unit!145990)

(assert (=> d!1565328 (= lt!1997042 lt!1997041)))

(assert (=> d!1565328 (isPrefix!4770 (list!17526 input!585) (list!17526 input!585))))

(assert (=> d!1565328 (= lt!1997041 (lemmaIsPrefixRefl!3167 (list!17526 input!585) (list!17526 input!585)))))

(assert (=> d!1565328 (rulesValidInductive!3025 thiss!11460 (t!364325 rules!1164))))

(assert (=> d!1565328 (= (maxPrefixZipper!567 thiss!11460 (t!364325 rules!1164) (list!17526 input!585)) lt!1997044)))

(declare-fun bm!338352 () Bool)

(declare-fun call!338357 () Option!13799)

(assert (=> bm!338352 (= call!338357 (maxPrefixOneRuleZipper!229 thiss!11460 (h!62447 (t!364325 rules!1164)) (list!17526 input!585)))))

(declare-fun b!4873686 () Bool)

(assert (=> b!4873686 (= e!3046503 call!338357)))

(declare-fun b!4873687 () Bool)

(declare-fun lt!1997040 () Option!13799)

(declare-fun lt!1997043 () Option!13799)

(assert (=> b!4873687 (= e!3046503 (ite (and ((_ is None!13798) lt!1997040) ((_ is None!13798) lt!1997043)) None!13798 (ite ((_ is None!13798) lt!1997043) lt!1997040 (ite ((_ is None!13798) lt!1997040) lt!1997043 (ite (>= (size!36921 (_1!33237 (v!49728 lt!1997040))) (size!36921 (_1!33237 (v!49728 lt!1997043)))) lt!1997040 lt!1997043)))))))

(assert (=> b!4873687 (= lt!1997040 call!338357)))

(assert (=> b!4873687 (= lt!1997043 (maxPrefixZipper!567 thiss!11460 (t!364325 (t!364325 rules!1164)) (list!17526 input!585)))))

(assert (= (and d!1565328 c!828914) b!4873686))

(assert (= (and d!1565328 (not c!828914)) b!4873687))

(assert (= (or b!4873686 b!4873687) bm!338352))

(assert (=> d!1565328 m!5873856))

(assert (=> d!1565328 m!5874212))

(assert (=> d!1565328 m!5873856))

(assert (=> d!1565328 m!5873856))

(assert (=> d!1565328 m!5873964))

(assert (=> d!1565328 m!5873856))

(assert (=> d!1565328 m!5873856))

(assert (=> d!1565328 m!5873966))

(assert (=> d!1565328 m!5874246))

(assert (=> bm!338352 m!5873856))

(declare-fun m!5874956 () Bool)

(assert (=> bm!338352 m!5874956))

(assert (=> b!4873687 m!5873856))

(declare-fun m!5874958 () Bool)

(assert (=> b!4873687 m!5874958))

(assert (=> d!1565104 d!1565328))

(declare-fun bs!1174867 () Bool)

(declare-fun d!1565330 () Bool)

(assert (= bs!1174867 (and d!1565330 d!1565010)))

(declare-fun lambda!243583 () Int)

(assert (=> bs!1174867 (= lambda!243583 lambda!243558)))

(declare-fun bs!1174868 () Bool)

(assert (= bs!1174868 (and d!1565330 d!1565090)))

(assert (=> bs!1174868 (= lambda!243583 lambda!243564)))

(assert (=> d!1565330 true))

(declare-fun lt!1997045 () Bool)

(assert (=> d!1565330 (= lt!1997045 (forall!13054 (t!364325 rules!1164) lambda!243583))))

(declare-fun e!3046504 () Bool)

(assert (=> d!1565330 (= lt!1997045 e!3046504)))

(declare-fun res!2080534 () Bool)

(assert (=> d!1565330 (=> res!2080534 e!3046504)))

(assert (=> d!1565330 (= res!2080534 (not ((_ is Cons!55999) (t!364325 rules!1164))))))

(assert (=> d!1565330 (= (rulesValidInductive!3025 thiss!11460 (t!364325 rules!1164)) lt!1997045)))

(declare-fun b!4873688 () Bool)

(declare-fun e!3046505 () Bool)

(assert (=> b!4873688 (= e!3046504 e!3046505)))

(declare-fun res!2080533 () Bool)

(assert (=> b!4873688 (=> (not res!2080533) (not e!3046505))))

(assert (=> b!4873688 (= res!2080533 (ruleValid!3634 thiss!11460 (h!62447 (t!364325 rules!1164))))))

(declare-fun b!4873689 () Bool)

(assert (=> b!4873689 (= e!3046505 (rulesValidInductive!3025 thiss!11460 (t!364325 (t!364325 rules!1164))))))

(assert (= (and d!1565330 (not res!2080534)) b!4873688))

(assert (= (and b!4873688 res!2080533) b!4873689))

(declare-fun m!5874960 () Bool)

(assert (=> d!1565330 m!5874960))

(assert (=> b!4873688 m!5874822))

(declare-fun m!5874962 () Bool)

(assert (=> b!4873689 m!5874962))

(assert (=> d!1565104 d!1565330))

(declare-fun d!1565332 () Bool)

(declare-fun choose!35626 (Int) Bool)

(assert (=> d!1565332 (= (Forall2!1259 lambda!243567) (choose!35626 lambda!243567))))

(declare-fun bs!1174869 () Bool)

(assert (= bs!1174869 d!1565332))

(declare-fun m!5874964 () Bool)

(assert (=> bs!1174869 m!5874964))

(assert (=> d!1565108 d!1565332))

(assert (=> d!1565010 d!1565090))

(declare-fun d!1565334 () Bool)

(declare-fun res!2080541 () Bool)

(declare-fun e!3046514 () Bool)

(assert (=> d!1565334 (=> res!2080541 e!3046514)))

(assert (=> d!1565334 (= res!2080541 ((_ is Nil!55999) rules!1164))))

(assert (=> d!1565334 (= (forall!13054 rules!1164 lambda!243558) e!3046514)))

(declare-fun b!4873700 () Bool)

(declare-fun e!3046515 () Bool)

(assert (=> b!4873700 (= e!3046514 e!3046515)))

(declare-fun res!2080542 () Bool)

(assert (=> b!4873700 (=> (not res!2080542) (not e!3046515))))

(declare-fun dynLambda!22503 (Int Rule!15892) Bool)

(assert (=> b!4873700 (= res!2080542 (dynLambda!22503 lambda!243558 (h!62447 rules!1164)))))

(declare-fun b!4873701 () Bool)

(assert (=> b!4873701 (= e!3046515 (forall!13054 (t!364325 rules!1164) lambda!243558))))

(assert (= (and d!1565334 (not res!2080541)) b!4873700))

(assert (= (and b!4873700 res!2080542) b!4873701))

(declare-fun b_lambda!193781 () Bool)

(assert (=> (not b_lambda!193781) (not b!4873700)))

(declare-fun m!5874966 () Bool)

(assert (=> b!4873700 m!5874966))

(declare-fun m!5874968 () Bool)

(assert (=> b!4873701 m!5874968))

(assert (=> d!1565010 d!1565334))

(assert (=> b!4872951 d!1565112))

(assert (=> b!4872951 d!1565114))

(declare-fun d!1565336 () Bool)

(declare-fun e!3046517 () Bool)

(assert (=> d!1565336 e!3046517))

(declare-fun res!2080543 () Bool)

(assert (=> d!1565336 (=> res!2080543 e!3046517)))

(declare-fun lt!1997058 () Bool)

(assert (=> d!1565336 (= res!2080543 (not lt!1997058))))

(declare-fun e!3046518 () Bool)

(assert (=> d!1565336 (= lt!1997058 e!3046518)))

(declare-fun res!2080545 () Bool)

(assert (=> d!1565336 (=> res!2080545 e!3046518)))

(assert (=> d!1565336 (= res!2080545 ((_ is Nil!55997) (tail!9564 lt!1996659)))))

(assert (=> d!1565336 (= (isPrefix!4770 (tail!9564 lt!1996659) (tail!9564 lt!1996664)) lt!1997058)))

(declare-fun b!4873702 () Bool)

(declare-fun e!3046516 () Bool)

(assert (=> b!4873702 (= e!3046518 e!3046516)))

(declare-fun res!2080546 () Bool)

(assert (=> b!4873702 (=> (not res!2080546) (not e!3046516))))

(assert (=> b!4873702 (= res!2080546 (not ((_ is Nil!55997) (tail!9564 lt!1996664))))))

(declare-fun b!4873703 () Bool)

(declare-fun res!2080544 () Bool)

(assert (=> b!4873703 (=> (not res!2080544) (not e!3046516))))

(assert (=> b!4873703 (= res!2080544 (= (head!10418 (tail!9564 lt!1996659)) (head!10418 (tail!9564 lt!1996664))))))

(declare-fun b!4873705 () Bool)

(assert (=> b!4873705 (= e!3046517 (>= (size!36925 (tail!9564 lt!1996664)) (size!36925 (tail!9564 lt!1996659))))))

(declare-fun b!4873704 () Bool)

(assert (=> b!4873704 (= e!3046516 (isPrefix!4770 (tail!9564 (tail!9564 lt!1996659)) (tail!9564 (tail!9564 lt!1996664))))))

(assert (= (and d!1565336 (not res!2080545)) b!4873702))

(assert (= (and b!4873702 res!2080546) b!4873703))

(assert (= (and b!4873703 res!2080544) b!4873704))

(assert (= (and d!1565336 (not res!2080543)) b!4873705))

(assert (=> b!4873703 m!5874234))

(declare-fun m!5874970 () Bool)

(assert (=> b!4873703 m!5874970))

(assert (=> b!4873703 m!5874236))

(declare-fun m!5874972 () Bool)

(assert (=> b!4873703 m!5874972))

(assert (=> b!4873705 m!5874236))

(declare-fun m!5874974 () Bool)

(assert (=> b!4873705 m!5874974))

(assert (=> b!4873705 m!5874234))

(declare-fun m!5874976 () Bool)

(assert (=> b!4873705 m!5874976))

(assert (=> b!4873704 m!5874234))

(declare-fun m!5874978 () Bool)

(assert (=> b!4873704 m!5874978))

(assert (=> b!4873704 m!5874236))

(declare-fun m!5874980 () Bool)

(assert (=> b!4873704 m!5874980))

(assert (=> b!4873704 m!5874978))

(assert (=> b!4873704 m!5874980))

(declare-fun m!5874982 () Bool)

(assert (=> b!4873704 m!5874982))

(assert (=> b!4873217 d!1565336))

(declare-fun d!1565338 () Bool)

(assert (=> d!1565338 (= (tail!9564 lt!1996659) (t!364323 lt!1996659))))

(assert (=> b!4873217 d!1565338))

(declare-fun d!1565340 () Bool)

(assert (=> d!1565340 (= (tail!9564 lt!1996664) (t!364323 lt!1996664))))

(assert (=> b!4873217 d!1565340))

(assert (=> b!4873224 d!1565330))

(declare-fun d!1565342 () Bool)

(declare-fun res!2080548 () Bool)

(declare-fun e!3046521 () Bool)

(assert (=> d!1565342 (=> (not res!2080548) (not e!3046521))))

(assert (=> d!1565342 (= res!2080548 (<= (size!36925 (list!17530 (xs!17906 (left!40673 (c!828795 input!585))))) 512))))

(assert (=> d!1565342 (= (inv!71934 (left!40673 (c!828795 input!585))) e!3046521)))

(declare-fun b!4873709 () Bool)

(declare-fun res!2080549 () Bool)

(assert (=> b!4873709 (=> (not res!2080549) (not e!3046521))))

(assert (=> b!4873709 (= res!2080549 (= (csize!29427 (left!40673 (c!828795 input!585))) (size!36925 (list!17530 (xs!17906 (left!40673 (c!828795 input!585)))))))))

(declare-fun b!4873710 () Bool)

(assert (=> b!4873710 (= e!3046521 (and (> (csize!29427 (left!40673 (c!828795 input!585))) 0) (<= (csize!29427 (left!40673 (c!828795 input!585))) 512)))))

(assert (= (and d!1565342 res!2080548) b!4873709))

(assert (= (and b!4873709 res!2080549) b!4873710))

(declare-fun m!5874984 () Bool)

(assert (=> d!1565342 m!5874984))

(assert (=> d!1565342 m!5874984))

(declare-fun m!5874986 () Bool)

(assert (=> d!1565342 m!5874986))

(assert (=> b!4873709 m!5874984))

(assert (=> b!4873709 m!5874984))

(assert (=> b!4873709 m!5874986))

(assert (=> b!4873256 d!1565342))

(declare-fun d!1565344 () Bool)

(declare-fun choose!35627 (Int) Bool)

(assert (=> d!1565344 (= (Forall!1679 lambda!243570) (choose!35627 lambda!243570))))

(declare-fun bs!1174870 () Bool)

(assert (= bs!1174870 d!1565344))

(declare-fun m!5874992 () Bool)

(assert (=> bs!1174870 m!5874992))

(assert (=> d!1565116 d!1565344))

(assert (=> b!4873110 d!1565292))

(assert (=> b!4873110 d!1565294))

(declare-fun d!1565346 () Bool)

(declare-fun res!2080550 () Bool)

(declare-fun e!3046522 () Bool)

(assert (=> d!1565346 (=> (not res!2080550) (not e!3046522))))

(assert (=> d!1565346 (= res!2080550 (= (csize!29426 (left!40673 (c!828795 input!585))) (+ (size!36926 (left!40673 (left!40673 (c!828795 input!585)))) (size!36926 (right!41003 (left!40673 (c!828795 input!585)))))))))

(assert (=> d!1565346 (= (inv!71933 (left!40673 (c!828795 input!585))) e!3046522)))

(declare-fun b!4873711 () Bool)

(declare-fun res!2080551 () Bool)

(assert (=> b!4873711 (=> (not res!2080551) (not e!3046522))))

(assert (=> b!4873711 (= res!2080551 (and (not (= (left!40673 (left!40673 (c!828795 input!585))) Empty!14598)) (not (= (right!41003 (left!40673 (c!828795 input!585))) Empty!14598))))))

(declare-fun b!4873712 () Bool)

(declare-fun res!2080552 () Bool)

(assert (=> b!4873712 (=> (not res!2080552) (not e!3046522))))

(assert (=> b!4873712 (= res!2080552 (= (cheight!14809 (left!40673 (c!828795 input!585))) (+ (max!0 (height!1935 (left!40673 (left!40673 (c!828795 input!585)))) (height!1935 (right!41003 (left!40673 (c!828795 input!585))))) 1)))))

(declare-fun b!4873713 () Bool)

(assert (=> b!4873713 (= e!3046522 (<= 0 (cheight!14809 (left!40673 (c!828795 input!585)))))))

(assert (= (and d!1565346 res!2080550) b!4873711))

(assert (= (and b!4873711 res!2080551) b!4873712))

(assert (= (and b!4873712 res!2080552) b!4873713))

(declare-fun m!5875002 () Bool)

(assert (=> d!1565346 m!5875002))

(declare-fun m!5875004 () Bool)

(assert (=> d!1565346 m!5875004))

(assert (=> b!4873712 m!5874786))

(assert (=> b!4873712 m!5874788))

(assert (=> b!4873712 m!5874786))

(assert (=> b!4873712 m!5874788))

(declare-fun m!5875006 () Bool)

(assert (=> b!4873712 m!5875006))

(assert (=> b!4873254 d!1565346))

(declare-fun d!1565348 () Bool)

(assert (=> d!1565348 (= (isEmpty!29985 lt!1996788) (not ((_ is Some!13798) lt!1996788)))))

(assert (=> d!1565084 d!1565348))

(declare-fun d!1565354 () Bool)

(declare-fun e!3046525 () Bool)

(assert (=> d!1565354 e!3046525))

(declare-fun res!2080554 () Bool)

(assert (=> d!1565354 (=> res!2080554 e!3046525)))

(declare-fun lt!1997065 () Bool)

(assert (=> d!1565354 (= res!2080554 (not lt!1997065))))

(declare-fun e!3046526 () Bool)

(assert (=> d!1565354 (= lt!1997065 e!3046526)))

(declare-fun res!2080556 () Bool)

(assert (=> d!1565354 (=> res!2080556 e!3046526)))

(assert (=> d!1565354 (= res!2080556 ((_ is Nil!55997) (list!17526 input!585)))))

(assert (=> d!1565354 (= (isPrefix!4770 (list!17526 input!585) (list!17526 input!585)) lt!1997065)))

(declare-fun b!4873715 () Bool)

(declare-fun e!3046524 () Bool)

(assert (=> b!4873715 (= e!3046526 e!3046524)))

(declare-fun res!2080557 () Bool)

(assert (=> b!4873715 (=> (not res!2080557) (not e!3046524))))

(assert (=> b!4873715 (= res!2080557 (not ((_ is Nil!55997) (list!17526 input!585))))))

(declare-fun b!4873716 () Bool)

(declare-fun res!2080555 () Bool)

(assert (=> b!4873716 (=> (not res!2080555) (not e!3046524))))

(assert (=> b!4873716 (= res!2080555 (= (head!10418 (list!17526 input!585)) (head!10418 (list!17526 input!585))))))

(declare-fun b!4873718 () Bool)

(assert (=> b!4873718 (= e!3046525 (>= (size!36925 (list!17526 input!585)) (size!36925 (list!17526 input!585))))))

(declare-fun b!4873717 () Bool)

(assert (=> b!4873717 (= e!3046524 (isPrefix!4770 (tail!9564 (list!17526 input!585)) (tail!9564 (list!17526 input!585))))))

(assert (= (and d!1565354 (not res!2080556)) b!4873715))

(assert (= (and b!4873715 res!2080557) b!4873716))

(assert (= (and b!4873716 res!2080555) b!4873717))

(assert (= (and d!1565354 (not res!2080554)) b!4873718))

(assert (=> b!4873716 m!5873856))

(declare-fun m!5875012 () Bool)

(assert (=> b!4873716 m!5875012))

(assert (=> b!4873716 m!5873856))

(assert (=> b!4873716 m!5875012))

(assert (=> b!4873718 m!5873856))

(assert (=> b!4873718 m!5873858))

(assert (=> b!4873718 m!5873856))

(assert (=> b!4873718 m!5873858))

(assert (=> b!4873717 m!5873856))

(declare-fun m!5875014 () Bool)

(assert (=> b!4873717 m!5875014))

(assert (=> b!4873717 m!5873856))

(assert (=> b!4873717 m!5875014))

(assert (=> b!4873717 m!5875014))

(assert (=> b!4873717 m!5875014))

(declare-fun m!5875016 () Bool)

(assert (=> b!4873717 m!5875016))

(assert (=> d!1565084 d!1565354))

(declare-fun d!1565358 () Bool)

(assert (=> d!1565358 (isPrefix!4770 (list!17526 input!585) (list!17526 input!585))))

(declare-fun lt!1997066 () Unit!145990)

(assert (=> d!1565358 (= lt!1997066 (choose!35621 (list!17526 input!585) (list!17526 input!585)))))

(assert (=> d!1565358 (= (lemmaIsPrefixRefl!3167 (list!17526 input!585) (list!17526 input!585)) lt!1997066)))

(declare-fun bs!1174871 () Bool)

(assert (= bs!1174871 d!1565358))

(assert (=> bs!1174871 m!5873856))

(assert (=> bs!1174871 m!5873856))

(assert (=> bs!1174871 m!5873964))

(assert (=> bs!1174871 m!5873856))

(assert (=> bs!1174871 m!5873856))

(declare-fun m!5875018 () Bool)

(assert (=> bs!1174871 m!5875018))

(assert (=> d!1565084 d!1565358))

(assert (=> d!1565084 d!1565090))

(assert (=> d!1565118 d!1565270))

(declare-fun b!4873927 () Bool)

(declare-fun res!2080596 () Bool)

(declare-fun e!3046611 () Bool)

(assert (=> b!4873927 (=> (not res!2080596) (not e!3046611))))

(declare-fun lt!1997091 () Option!13799)

(assert (=> b!4873927 (= res!2080596 (= (++!12199 (list!17526 (charsOf!5345 (_1!33237 (get!19243 lt!1997091)))) (_2!33237 (get!19243 lt!1997091))) (list!17526 input!585)))))

(declare-fun b!4873928 () Bool)

(declare-fun res!2080599 () Bool)

(assert (=> b!4873928 (=> (not res!2080599) (not e!3046611))))

(assert (=> b!4873928 (= res!2080599 (= (value!258453 (_1!33237 (get!19243 lt!1997091))) (apply!13506 (transformation!8046 (rule!11190 (_1!33237 (get!19243 lt!1997091)))) (seqFromList!5902 (originalCharacters!8369 (_1!33237 (get!19243 lt!1997091)))))))))

(declare-fun d!1565360 () Bool)

(declare-fun e!3046610 () Bool)

(assert (=> d!1565360 e!3046610))

(declare-fun res!2080600 () Bool)

(assert (=> d!1565360 (=> res!2080600 e!3046610)))

(assert (=> d!1565360 (= res!2080600 (isEmpty!29985 lt!1997091))))

(declare-fun e!3046612 () Option!13799)

(assert (=> d!1565360 (= lt!1997091 e!3046612)))

(declare-fun c!828931 () Bool)

(declare-fun lt!1997092 () tuple2!59876)

(assert (=> d!1565360 (= c!828931 (isEmpty!29986 (_1!33241 lt!1997092)))))

(declare-fun findLongestMatch!1639 (Regex!13121 List!56121) tuple2!59876)

(assert (=> d!1565360 (= lt!1997092 (findLongestMatch!1639 (regex!8046 (h!62447 rules!1164)) (list!17526 input!585)))))

(assert (=> d!1565360 (ruleValid!3634 thiss!11460 (h!62447 rules!1164))))

(assert (=> d!1565360 (= (maxPrefixOneRule!3495 thiss!11460 (h!62447 rules!1164) (list!17526 input!585)) lt!1997091)))

(declare-fun b!4873929 () Bool)

(assert (=> b!4873929 (= e!3046612 None!13798)))

(declare-fun b!4873930 () Bool)

(declare-fun res!2080602 () Bool)

(assert (=> b!4873930 (=> (not res!2080602) (not e!3046611))))

(assert (=> b!4873930 (= res!2080602 (= (rule!11190 (_1!33237 (get!19243 lt!1997091))) (h!62447 rules!1164)))))

(declare-fun b!4873931 () Bool)

(declare-fun e!3046613 () Bool)

(assert (=> b!4873931 (= e!3046613 (matchR!6496 (regex!8046 (h!62447 rules!1164)) (_1!33241 (findLongestMatchInner!1725 (regex!8046 (h!62447 rules!1164)) Nil!55997 (size!36925 Nil!55997) (list!17526 input!585) (list!17526 input!585) (size!36925 (list!17526 input!585))))))))

(declare-fun b!4873932 () Bool)

(declare-fun res!2080601 () Bool)

(assert (=> b!4873932 (=> (not res!2080601) (not e!3046611))))

(assert (=> b!4873932 (= res!2080601 (< (size!36925 (_2!33237 (get!19243 lt!1997091))) (size!36925 (list!17526 input!585))))))

(declare-fun b!4873933 () Bool)

(assert (=> b!4873933 (= e!3046611 (= (size!36921 (_1!33237 (get!19243 lt!1997091))) (size!36925 (originalCharacters!8369 (_1!33237 (get!19243 lt!1997091))))))))

(declare-fun b!4873934 () Bool)

(assert (=> b!4873934 (= e!3046610 e!3046611)))

(declare-fun res!2080598 () Bool)

(assert (=> b!4873934 (=> (not res!2080598) (not e!3046611))))

(assert (=> b!4873934 (= res!2080598 (matchR!6496 (regex!8046 (h!62447 rules!1164)) (list!17526 (charsOf!5345 (_1!33237 (get!19243 lt!1997091))))))))

(declare-fun b!4873935 () Bool)

(assert (=> b!4873935 (= e!3046612 (Some!13798 (tuple2!59869 (Token!14677 (apply!13506 (transformation!8046 (h!62447 rules!1164)) (seqFromList!5902 (_1!33241 lt!1997092))) (h!62447 rules!1164) (size!36922 (seqFromList!5902 (_1!33241 lt!1997092))) (_1!33241 lt!1997092)) (_2!33241 lt!1997092))))))

(declare-fun lt!1997093 () Unit!145990)

(assert (=> b!4873935 (= lt!1997093 (longestMatchIsAcceptedByMatchOrIsEmpty!1688 (regex!8046 (h!62447 rules!1164)) (list!17526 input!585)))))

(declare-fun res!2080597 () Bool)

(assert (=> b!4873935 (= res!2080597 (isEmpty!29986 (_1!33241 (findLongestMatchInner!1725 (regex!8046 (h!62447 rules!1164)) Nil!55997 (size!36925 Nil!55997) (list!17526 input!585) (list!17526 input!585) (size!36925 (list!17526 input!585))))))))

(assert (=> b!4873935 (=> res!2080597 e!3046613)))

(assert (=> b!4873935 e!3046613))

(declare-fun lt!1997090 () Unit!145990)

(assert (=> b!4873935 (= lt!1997090 lt!1997093)))

(declare-fun lt!1997094 () Unit!145990)

(declare-fun lemmaSemiInverse!2556 (TokenValueInjection!16020 BalanceConc!28638) Unit!145990)

(assert (=> b!4873935 (= lt!1997094 (lemmaSemiInverse!2556 (transformation!8046 (h!62447 rules!1164)) (seqFromList!5902 (_1!33241 lt!1997092))))))

(assert (= (and d!1565360 c!828931) b!4873929))

(assert (= (and d!1565360 (not c!828931)) b!4873935))

(assert (= (and b!4873935 (not res!2080597)) b!4873931))

(assert (= (and d!1565360 (not res!2080600)) b!4873934))

(assert (= (and b!4873934 res!2080598) b!4873927))

(assert (= (and b!4873927 res!2080596) b!4873932))

(assert (= (and b!4873932 res!2080601) b!4873930))

(assert (= (and b!4873930 res!2080602) b!4873928))

(assert (= (and b!4873928 res!2080599) b!4873933))

(declare-fun m!5875130 () Bool)

(assert (=> b!4873934 m!5875130))

(declare-fun m!5875132 () Bool)

(assert (=> b!4873934 m!5875132))

(assert (=> b!4873934 m!5875132))

(declare-fun m!5875134 () Bool)

(assert (=> b!4873934 m!5875134))

(assert (=> b!4873934 m!5875134))

(declare-fun m!5875136 () Bool)

(assert (=> b!4873934 m!5875136))

(assert (=> b!4873931 m!5874316))

(assert (=> b!4873931 m!5873856))

(assert (=> b!4873931 m!5873858))

(assert (=> b!4873931 m!5874316))

(assert (=> b!4873931 m!5873856))

(assert (=> b!4873931 m!5873856))

(assert (=> b!4873931 m!5873858))

(declare-fun m!5875138 () Bool)

(assert (=> b!4873931 m!5875138))

(declare-fun m!5875140 () Bool)

(assert (=> b!4873931 m!5875140))

(assert (=> b!4873932 m!5875130))

(declare-fun m!5875142 () Bool)

(assert (=> b!4873932 m!5875142))

(assert (=> b!4873932 m!5873856))

(assert (=> b!4873932 m!5873858))

(assert (=> b!4873930 m!5875130))

(assert (=> b!4873933 m!5875130))

(declare-fun m!5875144 () Bool)

(assert (=> b!4873933 m!5875144))

(assert (=> b!4873928 m!5875130))

(declare-fun m!5875146 () Bool)

(assert (=> b!4873928 m!5875146))

(assert (=> b!4873928 m!5875146))

(declare-fun m!5875148 () Bool)

(assert (=> b!4873928 m!5875148))

(declare-fun m!5875150 () Bool)

(assert (=> b!4873935 m!5875150))

(declare-fun m!5875152 () Bool)

(assert (=> b!4873935 m!5875152))

(assert (=> b!4873935 m!5874316))

(assert (=> b!4873935 m!5873856))

(assert (=> b!4873935 m!5873856))

(assert (=> b!4873935 m!5873858))

(assert (=> b!4873935 m!5875138))

(assert (=> b!4873935 m!5873856))

(declare-fun m!5875154 () Bool)

(assert (=> b!4873935 m!5875154))

(assert (=> b!4873935 m!5875150))

(declare-fun m!5875156 () Bool)

(assert (=> b!4873935 m!5875156))

(assert (=> b!4873935 m!5875150))

(assert (=> b!4873935 m!5875150))

(declare-fun m!5875158 () Bool)

(assert (=> b!4873935 m!5875158))

(declare-fun m!5875160 () Bool)

(assert (=> b!4873935 m!5875160))

(assert (=> b!4873935 m!5873856))

(assert (=> b!4873935 m!5873858))

(assert (=> b!4873935 m!5874316))

(assert (=> b!4873927 m!5875130))

(assert (=> b!4873927 m!5875132))

(assert (=> b!4873927 m!5875132))

(assert (=> b!4873927 m!5875134))

(assert (=> b!4873927 m!5875134))

(declare-fun m!5875162 () Bool)

(assert (=> b!4873927 m!5875162))

(declare-fun m!5875164 () Bool)

(assert (=> d!1565360 m!5875164))

(declare-fun m!5875166 () Bool)

(assert (=> d!1565360 m!5875166))

(assert (=> d!1565360 m!5873856))

(declare-fun m!5875168 () Bool)

(assert (=> d!1565360 m!5875168))

(assert (=> d!1565360 m!5874244))

(assert (=> d!1565118 d!1565360))

(declare-fun d!1565414 () Bool)

(declare-fun lt!1997097 () Bool)

(assert (=> d!1565414 (= lt!1997097 (isEmpty!29986 (list!17526 (_1!33240 lt!1996831))))))

(assert (=> d!1565414 (= lt!1997097 (isEmpty!29983 (c!828795 (_1!33240 lt!1996831))))))

(assert (=> d!1565414 (= (isEmpty!29987 (_1!33240 lt!1996831)) lt!1997097)))

(declare-fun bs!1174885 () Bool)

(assert (= bs!1174885 d!1565414))

(assert (=> bs!1174885 m!5874324))

(assert (=> bs!1174885 m!5874324))

(declare-fun m!5875170 () Bool)

(assert (=> bs!1174885 m!5875170))

(declare-fun m!5875172 () Bool)

(assert (=> bs!1174885 m!5875172))

(assert (=> d!1565118 d!1565414))

(assert (=> d!1565118 d!1565004))

(declare-fun d!1565416 () Bool)

(declare-fun res!2080607 () Bool)

(declare-fun e!3046616 () Bool)

(assert (=> d!1565416 (=> (not res!2080607) (not e!3046616))))

(assert (=> d!1565416 (= res!2080607 (validRegex!5872 (regex!8046 (h!62447 rules!1164))))))

(assert (=> d!1565416 (= (ruleValid!3634 thiss!11460 (h!62447 rules!1164)) e!3046616)))

(declare-fun b!4873940 () Bool)

(declare-fun res!2080608 () Bool)

(assert (=> b!4873940 (=> (not res!2080608) (not e!3046616))))

(assert (=> b!4873940 (= res!2080608 (not (nullable!4545 (regex!8046 (h!62447 rules!1164)))))))

(declare-fun b!4873941 () Bool)

(assert (=> b!4873941 (= e!3046616 (not (= (tag!8910 (h!62447 rules!1164)) (String!63199 ""))))))

(assert (= (and d!1565416 res!2080607) b!4873940))

(assert (= (and b!4873940 res!2080608) b!4873941))

(declare-fun m!5875174 () Bool)

(assert (=> d!1565416 m!5875174))

(declare-fun m!5875176 () Bool)

(assert (=> b!4873940 m!5875176))

(assert (=> d!1565118 d!1565416))

(declare-fun d!1565418 () Bool)

(assert (=> d!1565418 (= (isDefined!10857 (maxPrefixOneRule!3495 thiss!11460 (h!62447 rules!1164) (list!17526 input!585))) (not (isEmpty!29985 (maxPrefixOneRule!3495 thiss!11460 (h!62447 rules!1164) (list!17526 input!585)))))))

(declare-fun bs!1174886 () Bool)

(assert (= bs!1174886 d!1565418))

(assert (=> bs!1174886 m!5874222))

(declare-fun m!5875178 () Bool)

(assert (=> bs!1174886 m!5875178))

(assert (=> d!1565118 d!1565418))

(declare-fun d!1565420 () Bool)

(declare-fun lt!1997100 () tuple2!59874)

(assert (=> d!1565420 (= (tuple2!59877 (list!17526 (_1!33240 lt!1997100)) (list!17526 (_2!33240 lt!1997100))) (findLongestMatch!1639 (regex!8046 (h!62447 rules!1164)) (list!17526 input!585)))))

(declare-fun choose!35629 (Regex!13121 BalanceConc!28638) tuple2!59874)

(assert (=> d!1565420 (= lt!1997100 (choose!35629 (regex!8046 (h!62447 rules!1164)) input!585))))

(assert (=> d!1565420 (validRegex!5872 (regex!8046 (h!62447 rules!1164)))))

(assert (=> d!1565420 (= (findLongestMatchWithZipperSequence!240 (regex!8046 (h!62447 rules!1164)) input!585) lt!1997100)))

(declare-fun bs!1174887 () Bool)

(assert (= bs!1174887 d!1565420))

(declare-fun m!5875180 () Bool)

(assert (=> bs!1174887 m!5875180))

(assert (=> bs!1174887 m!5873856))

(assert (=> bs!1174887 m!5875168))

(assert (=> bs!1174887 m!5873856))

(declare-fun m!5875182 () Bool)

(assert (=> bs!1174887 m!5875182))

(assert (=> bs!1174887 m!5875174))

(declare-fun m!5875184 () Bool)

(assert (=> bs!1174887 m!5875184))

(assert (=> d!1565118 d!1565420))

(declare-fun d!1565422 () Bool)

(declare-fun lt!1997101 () Int)

(assert (=> d!1565422 (>= lt!1997101 0)))

(declare-fun e!3046617 () Int)

(assert (=> d!1565422 (= lt!1997101 e!3046617)))

(declare-fun c!828932 () Bool)

(assert (=> d!1565422 (= c!828932 ((_ is Nil!55997) (innerList!14686 (xs!17906 (c!828795 input!585)))))))

(assert (=> d!1565422 (= (size!36925 (innerList!14686 (xs!17906 (c!828795 input!585)))) lt!1997101)))

(declare-fun b!4873942 () Bool)

(assert (=> b!4873942 (= e!3046617 0)))

(declare-fun b!4873943 () Bool)

(assert (=> b!4873943 (= e!3046617 (+ 1 (size!36925 (t!364323 (innerList!14686 (xs!17906 (c!828795 input!585)))))))))

(assert (= (and d!1565422 c!828932) b!4873942))

(assert (= (and d!1565422 (not c!828932)) b!4873943))

(declare-fun m!5875186 () Bool)

(assert (=> b!4873943 m!5875186))

(assert (=> d!1565106 d!1565422))

(declare-fun d!1565424 () Bool)

(declare-fun lt!1997102 () Int)

(assert (=> d!1565424 (>= lt!1997102 0)))

(declare-fun e!3046618 () Int)

(assert (=> d!1565424 (= lt!1997102 e!3046618)))

(declare-fun c!828933 () Bool)

(assert (=> d!1565424 (= c!828933 ((_ is Nil!55997) (_2!33237 (get!19243 lt!1996788))))))

(assert (=> d!1565424 (= (size!36925 (_2!33237 (get!19243 lt!1996788))) lt!1997102)))

(declare-fun b!4873944 () Bool)

(assert (=> b!4873944 (= e!3046618 0)))

(declare-fun b!4873945 () Bool)

(assert (=> b!4873945 (= e!3046618 (+ 1 (size!36925 (t!364323 (_2!33237 (get!19243 lt!1996788))))))))

(assert (= (and d!1565424 c!828933) b!4873944))

(assert (= (and d!1565424 (not c!828933)) b!4873945))

(declare-fun m!5875188 () Bool)

(assert (=> b!4873945 m!5875188))

(assert (=> b!4873206 d!1565424))

(assert (=> b!4873206 d!1565274))

(assert (=> b!4873206 d!1565006))

(assert (=> b!4873204 d!1565316))

(assert (=> b!4872959 d!1565328))

(declare-fun bs!1174888 () Bool)

(declare-fun d!1565426 () Bool)

(assert (= bs!1174888 (and d!1565426 d!1565116)))

(declare-fun lambda!243585 () Int)

(assert (=> bs!1174888 (= (and (= (toChars!10780 (transformation!8046 (h!62447 (t!364325 rules!1164)))) (toChars!10780 (transformation!8046 (h!62447 rules!1164)))) (= (toValue!10921 (transformation!8046 (h!62447 (t!364325 rules!1164)))) (toValue!10921 (transformation!8046 (h!62447 rules!1164))))) (= lambda!243585 lambda!243570))))

(declare-fun bs!1174889 () Bool)

(assert (= bs!1174889 (and d!1565426 b!4873276)))

(assert (=> bs!1174889 (= (and (= (toChars!10780 (transformation!8046 (h!62447 (t!364325 rules!1164)))) (toChars!10780 (transformation!8046 (h!62447 rules!1164)))) (= (toValue!10921 (transformation!8046 (h!62447 (t!364325 rules!1164)))) (toValue!10921 (transformation!8046 (h!62447 rules!1164))))) (= lambda!243585 lambda!243575))))

(declare-fun bs!1174890 () Bool)

(assert (= bs!1174890 (and d!1565426 b!4873598)))

(assert (=> bs!1174890 (= lambda!243585 lambda!243582)))

(assert (=> d!1565426 true))

(assert (=> d!1565426 (< (dynLambda!22495 order!25255 (toChars!10780 (transformation!8046 (h!62447 (t!364325 rules!1164))))) (dynLambda!22496 order!25257 lambda!243585))))

(assert (=> d!1565426 true))

(assert (=> d!1565426 (< (dynLambda!22493 order!25251 (toValue!10921 (transformation!8046 (h!62447 (t!364325 rules!1164))))) (dynLambda!22496 order!25257 lambda!243585))))

(assert (=> d!1565426 (= (semiInverseModEq!3550 (toChars!10780 (transformation!8046 (h!62447 (t!364325 rules!1164)))) (toValue!10921 (transformation!8046 (h!62447 (t!364325 rules!1164))))) (Forall!1679 lambda!243585))))

(declare-fun bs!1174891 () Bool)

(assert (= bs!1174891 d!1565426))

(declare-fun m!5875190 () Bool)

(assert (=> bs!1174891 m!5875190))

(assert (=> d!1565062 d!1565426))

(declare-fun d!1565428 () Bool)

(assert (=> d!1565428 (= (inv!71935 (xs!17906 (left!40673 (c!828795 input!585)))) (<= (size!36925 (innerList!14686 (xs!17906 (left!40673 (c!828795 input!585))))) 2147483647))))

(declare-fun bs!1174892 () Bool)

(assert (= bs!1174892 d!1565428))

(declare-fun m!5875192 () Bool)

(assert (=> bs!1174892 m!5875192))

(assert (=> b!4873323 d!1565428))

(declare-fun b!4873954 () Bool)

(declare-fun e!3046623 () List!56121)

(assert (=> b!4873954 (= e!3046623 Nil!55997)))

(declare-fun b!4873957 () Bool)

(declare-fun e!3046624 () List!56121)

(assert (=> b!4873957 (= e!3046624 (++!12199 (list!17529 (left!40673 (c!828795 (_2!33235 (v!49726 lt!1996614))))) (list!17529 (right!41003 (c!828795 (_2!33235 (v!49726 lt!1996614)))))))))

(declare-fun b!4873955 () Bool)

(assert (=> b!4873955 (= e!3046623 e!3046624)))

(declare-fun c!828939 () Bool)

(assert (=> b!4873955 (= c!828939 ((_ is Leaf!24332) (c!828795 (_2!33235 (v!49726 lt!1996614)))))))

(declare-fun b!4873956 () Bool)

(assert (=> b!4873956 (= e!3046624 (list!17530 (xs!17906 (c!828795 (_2!33235 (v!49726 lt!1996614))))))))

(declare-fun d!1565430 () Bool)

(declare-fun c!828938 () Bool)

(assert (=> d!1565430 (= c!828938 ((_ is Empty!14598) (c!828795 (_2!33235 (v!49726 lt!1996614)))))))

(assert (=> d!1565430 (= (list!17529 (c!828795 (_2!33235 (v!49726 lt!1996614)))) e!3046623)))

(assert (= (and d!1565430 c!828938) b!4873954))

(assert (= (and d!1565430 (not c!828938)) b!4873955))

(assert (= (and b!4873955 c!828939) b!4873956))

(assert (= (and b!4873955 (not c!828939)) b!4873957))

(declare-fun m!5875194 () Bool)

(assert (=> b!4873957 m!5875194))

(declare-fun m!5875196 () Bool)

(assert (=> b!4873957 m!5875196))

(assert (=> b!4873957 m!5875194))

(assert (=> b!4873957 m!5875196))

(declare-fun m!5875198 () Bool)

(assert (=> b!4873957 m!5875198))

(declare-fun m!5875200 () Bool)

(assert (=> b!4873956 m!5875200))

(assert (=> d!1565096 d!1565430))

(declare-fun b!4873958 () Bool)

(declare-fun e!3046628 () Bool)

(declare-fun lt!1997103 () Bool)

(declare-fun call!338359 () Bool)

(assert (=> b!4873958 (= e!3046628 (= lt!1997103 call!338359))))

(declare-fun b!4873959 () Bool)

(declare-fun res!2080613 () Bool)

(declare-fun e!3046630 () Bool)

(assert (=> b!4873959 (=> (not res!2080613) (not e!3046630))))

(assert (=> b!4873959 (= res!2080613 (not call!338359))))

(declare-fun b!4873960 () Bool)

(declare-fun e!3046631 () Bool)

(declare-fun e!3046625 () Bool)

(assert (=> b!4873960 (= e!3046631 e!3046625)))

(declare-fun res!2080612 () Bool)

(assert (=> b!4873960 (=> res!2080612 e!3046625)))

(assert (=> b!4873960 (= res!2080612 call!338359)))

(declare-fun b!4873961 () Bool)

(declare-fun res!2080610 () Bool)

(assert (=> b!4873961 (=> (not res!2080610) (not e!3046630))))

(assert (=> b!4873961 (= res!2080610 (isEmpty!29986 (tail!9564 (_1!33241 (findLongestMatchInner!1725 (regex!8046 (h!62447 rules!1164)) Nil!55997 (size!36925 Nil!55997) lt!1996835 lt!1996835 (size!36925 lt!1996835))))))))

(declare-fun b!4873962 () Bool)

(assert (=> b!4873962 (= e!3046630 (= (head!10418 (_1!33241 (findLongestMatchInner!1725 (regex!8046 (h!62447 rules!1164)) Nil!55997 (size!36925 Nil!55997) lt!1996835 lt!1996835 (size!36925 lt!1996835)))) (c!828796 (regex!8046 (h!62447 rules!1164)))))))

(declare-fun b!4873963 () Bool)

(declare-fun res!2080611 () Bool)

(assert (=> b!4873963 (=> res!2080611 e!3046625)))

(assert (=> b!4873963 (= res!2080611 (not (isEmpty!29986 (tail!9564 (_1!33241 (findLongestMatchInner!1725 (regex!8046 (h!62447 rules!1164)) Nil!55997 (size!36925 Nil!55997) lt!1996835 lt!1996835 (size!36925 lt!1996835)))))))))

(declare-fun b!4873964 () Bool)

(declare-fun e!3046627 () Bool)

(assert (=> b!4873964 (= e!3046628 e!3046627)))

(declare-fun c!828941 () Bool)

(assert (=> b!4873964 (= c!828941 ((_ is EmptyLang!13121) (regex!8046 (h!62447 rules!1164))))))

(declare-fun d!1565432 () Bool)

(assert (=> d!1565432 e!3046628))

(declare-fun c!828940 () Bool)

(assert (=> d!1565432 (= c!828940 ((_ is EmptyExpr!13121) (regex!8046 (h!62447 rules!1164))))))

(declare-fun e!3046629 () Bool)

(assert (=> d!1565432 (= lt!1997103 e!3046629)))

(declare-fun c!828942 () Bool)

(assert (=> d!1565432 (= c!828942 (isEmpty!29986 (_1!33241 (findLongestMatchInner!1725 (regex!8046 (h!62447 rules!1164)) Nil!55997 (size!36925 Nil!55997) lt!1996835 lt!1996835 (size!36925 lt!1996835)))))))

(assert (=> d!1565432 (validRegex!5872 (regex!8046 (h!62447 rules!1164)))))

(assert (=> d!1565432 (= (matchR!6496 (regex!8046 (h!62447 rules!1164)) (_1!33241 (findLongestMatchInner!1725 (regex!8046 (h!62447 rules!1164)) Nil!55997 (size!36925 Nil!55997) lt!1996835 lt!1996835 (size!36925 lt!1996835)))) lt!1997103)))

(declare-fun b!4873965 () Bool)

(declare-fun e!3046626 () Bool)

(assert (=> b!4873965 (= e!3046626 e!3046631)))

(declare-fun res!2080616 () Bool)

(assert (=> b!4873965 (=> (not res!2080616) (not e!3046631))))

(assert (=> b!4873965 (= res!2080616 (not lt!1997103))))

(declare-fun b!4873966 () Bool)

(declare-fun res!2080609 () Bool)

(assert (=> b!4873966 (=> res!2080609 e!3046626)))

(assert (=> b!4873966 (= res!2080609 e!3046630)))

(declare-fun res!2080614 () Bool)

(assert (=> b!4873966 (=> (not res!2080614) (not e!3046630))))

(assert (=> b!4873966 (= res!2080614 lt!1997103)))

(declare-fun bm!338354 () Bool)

(assert (=> bm!338354 (= call!338359 (isEmpty!29986 (_1!33241 (findLongestMatchInner!1725 (regex!8046 (h!62447 rules!1164)) Nil!55997 (size!36925 Nil!55997) lt!1996835 lt!1996835 (size!36925 lt!1996835)))))))

(declare-fun b!4873967 () Bool)

(assert (=> b!4873967 (= e!3046629 (matchR!6496 (derivativeStep!3869 (regex!8046 (h!62447 rules!1164)) (head!10418 (_1!33241 (findLongestMatchInner!1725 (regex!8046 (h!62447 rules!1164)) Nil!55997 (size!36925 Nil!55997) lt!1996835 lt!1996835 (size!36925 lt!1996835))))) (tail!9564 (_1!33241 (findLongestMatchInner!1725 (regex!8046 (h!62447 rules!1164)) Nil!55997 (size!36925 Nil!55997) lt!1996835 lt!1996835 (size!36925 lt!1996835))))))))

(declare-fun b!4873968 () Bool)

(declare-fun res!2080615 () Bool)

(assert (=> b!4873968 (=> res!2080615 e!3046626)))

(assert (=> b!4873968 (= res!2080615 (not ((_ is ElementMatch!13121) (regex!8046 (h!62447 rules!1164)))))))

(assert (=> b!4873968 (= e!3046627 e!3046626)))

(declare-fun b!4873969 () Bool)

(assert (=> b!4873969 (= e!3046625 (not (= (head!10418 (_1!33241 (findLongestMatchInner!1725 (regex!8046 (h!62447 rules!1164)) Nil!55997 (size!36925 Nil!55997) lt!1996835 lt!1996835 (size!36925 lt!1996835)))) (c!828796 (regex!8046 (h!62447 rules!1164))))))))

(declare-fun b!4873970 () Bool)

(assert (=> b!4873970 (= e!3046627 (not lt!1997103))))

(declare-fun b!4873971 () Bool)

(assert (=> b!4873971 (= e!3046629 (nullable!4545 (regex!8046 (h!62447 rules!1164))))))

(assert (= (and d!1565432 c!828942) b!4873971))

(assert (= (and d!1565432 (not c!828942)) b!4873967))

(assert (= (and d!1565432 c!828940) b!4873958))

(assert (= (and d!1565432 (not c!828940)) b!4873964))

(assert (= (and b!4873964 c!828941) b!4873970))

(assert (= (and b!4873964 (not c!828941)) b!4873968))

(assert (= (and b!4873968 (not res!2080615)) b!4873966))

(assert (= (and b!4873966 res!2080614) b!4873959))

(assert (= (and b!4873959 res!2080613) b!4873961))

(assert (= (and b!4873961 res!2080610) b!4873962))

(assert (= (and b!4873966 (not res!2080609)) b!4873965))

(assert (= (and b!4873965 res!2080616) b!4873960))

(assert (= (and b!4873960 (not res!2080612)) b!4873963))

(assert (= (and b!4873963 (not res!2080611)) b!4873969))

(assert (= (or b!4873958 b!4873959 b!4873960) bm!338354))

(assert (=> b!4873971 m!5875176))

(declare-fun m!5875202 () Bool)

(assert (=> b!4873963 m!5875202))

(assert (=> b!4873963 m!5875202))

(declare-fun m!5875204 () Bool)

(assert (=> b!4873963 m!5875204))

(declare-fun m!5875206 () Bool)

(assert (=> b!4873962 m!5875206))

(assert (=> bm!338354 m!5874338))

(assert (=> b!4873961 m!5875202))

(assert (=> b!4873961 m!5875202))

(assert (=> b!4873961 m!5875204))

(assert (=> b!4873967 m!5875206))

(assert (=> b!4873967 m!5875206))

(declare-fun m!5875208 () Bool)

(assert (=> b!4873967 m!5875208))

(assert (=> b!4873967 m!5875202))

(assert (=> b!4873967 m!5875208))

(assert (=> b!4873967 m!5875202))

(declare-fun m!5875210 () Bool)

(assert (=> b!4873967 m!5875210))

(assert (=> d!1565432 m!5874338))

(assert (=> d!1565432 m!5875174))

(assert (=> b!4873969 m!5875206))

(assert (=> b!4873280 d!1565432))

(declare-fun b!4874000 () Bool)

(declare-fun e!3046650 () Bool)

(declare-fun e!3046654 () Bool)

(assert (=> b!4874000 (= e!3046650 e!3046654)))

(declare-fun res!2080621 () Bool)

(assert (=> b!4874000 (=> res!2080621 e!3046654)))

(declare-fun lt!1997174 () tuple2!59876)

(assert (=> b!4874000 (= res!2080621 (isEmpty!29986 (_1!33241 lt!1997174)))))

(declare-fun bm!338371 () Bool)

(declare-fun call!338376 () Regex!13121)

(declare-fun call!338382 () C!26440)

(assert (=> bm!338371 (= call!338376 (derivativeStep!3869 (regex!8046 (h!62447 rules!1164)) call!338382))))

(declare-fun b!4874001 () Bool)

(declare-fun e!3046652 () Unit!145990)

(declare-fun Unit!145996 () Unit!145990)

(assert (=> b!4874001 (= e!3046652 Unit!145996)))

(declare-fun bm!338372 () Bool)

(declare-fun call!338378 () Bool)

(assert (=> bm!338372 (= call!338378 (nullable!4545 (regex!8046 (h!62447 rules!1164))))))

(declare-fun b!4874002 () Bool)

(declare-fun Unit!145997 () Unit!145990)

(assert (=> b!4874002 (= e!3046652 Unit!145997)))

(declare-fun lt!1997168 () Unit!145990)

(declare-fun call!338380 () Unit!145990)

(assert (=> b!4874002 (= lt!1997168 call!338380)))

(declare-fun call!338381 () Bool)

(assert (=> b!4874002 call!338381))

(declare-fun lt!1997184 () Unit!145990)

(assert (=> b!4874002 (= lt!1997184 lt!1997168)))

(declare-fun lt!1997167 () Unit!145990)

(declare-fun call!338383 () Unit!145990)

(assert (=> b!4874002 (= lt!1997167 call!338383)))

(assert (=> b!4874002 (= lt!1996835 Nil!55997)))

(declare-fun lt!1997175 () Unit!145990)

(assert (=> b!4874002 (= lt!1997175 lt!1997167)))

(assert (=> b!4874002 false))

(declare-fun b!4874003 () Bool)

(declare-fun e!3046651 () tuple2!59876)

(assert (=> b!4874003 (= e!3046651 (tuple2!59877 Nil!55997 lt!1996835))))

(declare-fun b!4874004 () Bool)

(declare-fun e!3046648 () tuple2!59876)

(assert (=> b!4874004 (= e!3046648 e!3046651)))

(declare-fun lt!1997177 () tuple2!59876)

(declare-fun call!338379 () tuple2!59876)

(assert (=> b!4874004 (= lt!1997177 call!338379)))

(declare-fun c!828960 () Bool)

(assert (=> b!4874004 (= c!828960 (isEmpty!29986 (_1!33241 lt!1997177)))))

(declare-fun b!4874005 () Bool)

(assert (=> b!4874005 (= e!3046654 (>= (size!36925 (_1!33241 lt!1997174)) (size!36925 Nil!55997)))))

(declare-fun lt!1997179 () List!56121)

(declare-fun bm!338374 () Bool)

(declare-fun call!338377 () List!56121)

(assert (=> bm!338374 (= call!338379 (findLongestMatchInner!1725 call!338376 lt!1997179 (+ (size!36925 Nil!55997) 1) call!338377 lt!1996835 (size!36925 lt!1996835)))))

(declare-fun bm!338375 () Bool)

(assert (=> bm!338375 (= call!338381 (isPrefix!4770 lt!1996835 lt!1996835))))

(declare-fun b!4874006 () Bool)

(assert (=> b!4874006 (= e!3046651 lt!1997177)))

(declare-fun b!4874007 () Bool)

(assert (=> b!4874007 (= e!3046648 call!338379)))

(declare-fun b!4874008 () Bool)

(declare-fun e!3046653 () tuple2!59876)

(assert (=> b!4874008 (= e!3046653 (tuple2!59877 Nil!55997 Nil!55997))))

(declare-fun b!4874009 () Bool)

(declare-fun c!828955 () Bool)

(assert (=> b!4874009 (= c!828955 call!338378)))

(declare-fun lt!1997172 () Unit!145990)

(declare-fun lt!1997166 () Unit!145990)

(assert (=> b!4874009 (= lt!1997172 lt!1997166)))

(assert (=> b!4874009 (= lt!1996835 Nil!55997)))

(assert (=> b!4874009 (= lt!1997166 call!338383)))

(declare-fun lt!1997173 () Unit!145990)

(declare-fun lt!1997178 () Unit!145990)

(assert (=> b!4874009 (= lt!1997173 lt!1997178)))

(assert (=> b!4874009 call!338381))

(assert (=> b!4874009 (= lt!1997178 call!338380)))

(declare-fun e!3046649 () tuple2!59876)

(assert (=> b!4874009 (= e!3046649 e!3046653)))

(declare-fun bm!338376 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1049 (List!56121 List!56121 List!56121) Unit!145990)

(assert (=> bm!338376 (= call!338383 (lemmaIsPrefixSameLengthThenSameList!1049 lt!1996835 Nil!55997 lt!1996835))))

(declare-fun bm!338377 () Bool)

(assert (=> bm!338377 (= call!338382 (head!10418 lt!1996835))))

(declare-fun b!4874010 () Bool)

(declare-fun e!3046655 () tuple2!59876)

(assert (=> b!4874010 (= e!3046655 e!3046649)))

(declare-fun c!828959 () Bool)

(assert (=> b!4874010 (= c!828959 (= (size!36925 Nil!55997) (size!36925 lt!1996835)))))

(declare-fun d!1565434 () Bool)

(assert (=> d!1565434 e!3046650))

(declare-fun res!2080622 () Bool)

(assert (=> d!1565434 (=> (not res!2080622) (not e!3046650))))

(assert (=> d!1565434 (= res!2080622 (= (++!12199 (_1!33241 lt!1997174) (_2!33241 lt!1997174)) lt!1996835))))

(assert (=> d!1565434 (= lt!1997174 e!3046655)))

(declare-fun c!828958 () Bool)

(declare-fun lostCause!1077 (Regex!13121) Bool)

(assert (=> d!1565434 (= c!828958 (lostCause!1077 (regex!8046 (h!62447 rules!1164))))))

(declare-fun lt!1997176 () Unit!145990)

(declare-fun Unit!145998 () Unit!145990)

(assert (=> d!1565434 (= lt!1997176 Unit!145998)))

(declare-fun getSuffix!2878 (List!56121 List!56121) List!56121)

(assert (=> d!1565434 (= (getSuffix!2878 lt!1996835 Nil!55997) lt!1996835)))

(declare-fun lt!1997187 () Unit!145990)

(declare-fun lt!1997165 () Unit!145990)

(assert (=> d!1565434 (= lt!1997187 lt!1997165)))

(declare-fun lt!1997183 () List!56121)

(assert (=> d!1565434 (= lt!1996835 lt!1997183)))

(declare-fun lemmaSamePrefixThenSameSuffix!2294 (List!56121 List!56121 List!56121 List!56121 List!56121) Unit!145990)

(assert (=> d!1565434 (= lt!1997165 (lemmaSamePrefixThenSameSuffix!2294 Nil!55997 lt!1996835 Nil!55997 lt!1997183 lt!1996835))))

(assert (=> d!1565434 (= lt!1997183 (getSuffix!2878 lt!1996835 Nil!55997))))

(declare-fun lt!1997186 () Unit!145990)

(declare-fun lt!1997170 () Unit!145990)

(assert (=> d!1565434 (= lt!1997186 lt!1997170)))

(assert (=> d!1565434 (isPrefix!4770 Nil!55997 (++!12199 Nil!55997 lt!1996835))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3114 (List!56121 List!56121) Unit!145990)

(assert (=> d!1565434 (= lt!1997170 (lemmaConcatTwoListThenFirstIsPrefix!3114 Nil!55997 lt!1996835))))

(assert (=> d!1565434 (validRegex!5872 (regex!8046 (h!62447 rules!1164)))))

(assert (=> d!1565434 (= (findLongestMatchInner!1725 (regex!8046 (h!62447 rules!1164)) Nil!55997 (size!36925 Nil!55997) lt!1996835 lt!1996835 (size!36925 lt!1996835)) lt!1997174)))

(declare-fun bm!338373 () Bool)

(assert (=> bm!338373 (= call!338380 (lemmaIsPrefixRefl!3167 lt!1996835 lt!1996835))))

(declare-fun b!4874011 () Bool)

(declare-fun c!828956 () Bool)

(assert (=> b!4874011 (= c!828956 call!338378)))

(declare-fun lt!1997160 () Unit!145990)

(declare-fun lt!1997161 () Unit!145990)

(assert (=> b!4874011 (= lt!1997160 lt!1997161)))

(declare-fun lt!1997181 () C!26440)

(declare-fun lt!1997185 () List!56121)

(assert (=> b!4874011 (= (++!12199 (++!12199 Nil!55997 (Cons!55997 lt!1997181 Nil!55997)) lt!1997185) lt!1996835)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1321 (List!56121 C!26440 List!56121 List!56121) Unit!145990)

(assert (=> b!4874011 (= lt!1997161 (lemmaMoveElementToOtherListKeepsConcatEq!1321 Nil!55997 lt!1997181 lt!1997185 lt!1996835))))

(assert (=> b!4874011 (= lt!1997185 (tail!9564 lt!1996835))))

(assert (=> b!4874011 (= lt!1997181 (head!10418 lt!1996835))))

(declare-fun lt!1997163 () Unit!145990)

(declare-fun lt!1997169 () Unit!145990)

(assert (=> b!4874011 (= lt!1997163 lt!1997169)))

(assert (=> b!4874011 (isPrefix!4770 (++!12199 Nil!55997 (Cons!55997 (head!10418 (getSuffix!2878 lt!1996835 Nil!55997)) Nil!55997)) lt!1996835)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!703 (List!56121 List!56121) Unit!145990)

(assert (=> b!4874011 (= lt!1997169 (lemmaAddHeadSuffixToPrefixStillPrefix!703 Nil!55997 lt!1996835))))

(declare-fun lt!1997162 () Unit!145990)

(declare-fun lt!1997171 () Unit!145990)

(assert (=> b!4874011 (= lt!1997162 lt!1997171)))

(assert (=> b!4874011 (= lt!1997171 (lemmaAddHeadSuffixToPrefixStillPrefix!703 Nil!55997 lt!1996835))))

(assert (=> b!4874011 (= lt!1997179 (++!12199 Nil!55997 (Cons!55997 (head!10418 lt!1996835) Nil!55997)))))

(declare-fun lt!1997164 () Unit!145990)

(assert (=> b!4874011 (= lt!1997164 e!3046652)))

(declare-fun c!828957 () Bool)

(assert (=> b!4874011 (= c!828957 (= (size!36925 Nil!55997) (size!36925 lt!1996835)))))

(declare-fun lt!1997182 () Unit!145990)

(declare-fun lt!1997180 () Unit!145990)

(assert (=> b!4874011 (= lt!1997182 lt!1997180)))

(assert (=> b!4874011 (<= (size!36925 Nil!55997) (size!36925 lt!1996835))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!615 (List!56121 List!56121) Unit!145990)

(assert (=> b!4874011 (= lt!1997180 (lemmaIsPrefixThenSmallerEqSize!615 Nil!55997 lt!1996835))))

(assert (=> b!4874011 (= e!3046649 e!3046648)))

(declare-fun b!4874012 () Bool)

(assert (=> b!4874012 (= e!3046653 (tuple2!59877 Nil!55997 lt!1996835))))

(declare-fun b!4874013 () Bool)

(assert (=> b!4874013 (= e!3046655 (tuple2!59877 Nil!55997 lt!1996835))))

(declare-fun bm!338378 () Bool)

(assert (=> bm!338378 (= call!338377 (tail!9564 lt!1996835))))

(assert (= (and d!1565434 c!828958) b!4874013))

(assert (= (and d!1565434 (not c!828958)) b!4874010))

(assert (= (and b!4874010 c!828959) b!4874009))

(assert (= (and b!4874010 (not c!828959)) b!4874011))

(assert (= (and b!4874009 c!828955) b!4874008))

(assert (= (and b!4874009 (not c!828955)) b!4874012))

(assert (= (and b!4874011 c!828957) b!4874002))

(assert (= (and b!4874011 (not c!828957)) b!4874001))

(assert (= (and b!4874011 c!828956) b!4874004))

(assert (= (and b!4874011 (not c!828956)) b!4874007))

(assert (= (and b!4874004 c!828960) b!4874003))

(assert (= (and b!4874004 (not c!828960)) b!4874006))

(assert (= (or b!4874004 b!4874007) bm!338377))

(assert (= (or b!4874004 b!4874007) bm!338378))

(assert (= (or b!4874004 b!4874007) bm!338371))

(assert (= (or b!4874004 b!4874007) bm!338374))

(assert (= (or b!4874009 b!4874002) bm!338376))

(assert (= (or b!4874009 b!4874002) bm!338375))

(assert (= (or b!4874009 b!4874011) bm!338372))

(assert (= (or b!4874009 b!4874002) bm!338373))

(assert (= (and d!1565434 res!2080622) b!4874000))

(assert (= (and b!4874000 (not res!2080621)) b!4874005))

(declare-fun m!5875212 () Bool)

(assert (=> bm!338376 m!5875212))

(declare-fun m!5875214 () Bool)

(assert (=> bm!338375 m!5875214))

(assert (=> bm!338374 m!5874318))

(declare-fun m!5875216 () Bool)

(assert (=> bm!338374 m!5875216))

(declare-fun m!5875218 () Bool)

(assert (=> bm!338377 m!5875218))

(declare-fun m!5875220 () Bool)

(assert (=> b!4874000 m!5875220))

(declare-fun m!5875222 () Bool)

(assert (=> bm!338371 m!5875222))

(declare-fun m!5875224 () Bool)

(assert (=> d!1565434 m!5875224))

(declare-fun m!5875226 () Bool)

(assert (=> d!1565434 m!5875226))

(declare-fun m!5875228 () Bool)

(assert (=> d!1565434 m!5875228))

(declare-fun m!5875230 () Bool)

(assert (=> d!1565434 m!5875230))

(assert (=> d!1565434 m!5875174))

(assert (=> d!1565434 m!5875230))

(declare-fun m!5875232 () Bool)

(assert (=> d!1565434 m!5875232))

(declare-fun m!5875234 () Bool)

(assert (=> d!1565434 m!5875234))

(declare-fun m!5875236 () Bool)

(assert (=> d!1565434 m!5875236))

(declare-fun m!5875238 () Bool)

(assert (=> bm!338378 m!5875238))

(declare-fun m!5875240 () Bool)

(assert (=> b!4874004 m!5875240))

(declare-fun m!5875242 () Bool)

(assert (=> b!4874005 m!5875242))

(assert (=> b!4874005 m!5874316))

(declare-fun m!5875244 () Bool)

(assert (=> b!4874011 m!5875244))

(declare-fun m!5875246 () Bool)

(assert (=> b!4874011 m!5875246))

(assert (=> b!4874011 m!5875234))

(declare-fun m!5875248 () Bool)

(assert (=> b!4874011 m!5875248))

(assert (=> b!4874011 m!5875234))

(declare-fun m!5875250 () Bool)

(assert (=> b!4874011 m!5875250))

(declare-fun m!5875252 () Bool)

(assert (=> b!4874011 m!5875252))

(declare-fun m!5875254 () Bool)

(assert (=> b!4874011 m!5875254))

(assert (=> b!4874011 m!5875238))

(declare-fun m!5875256 () Bool)

(assert (=> b!4874011 m!5875256))

(assert (=> b!4874011 m!5875248))

(declare-fun m!5875258 () Bool)

(assert (=> b!4874011 m!5875258))

(assert (=> b!4874011 m!5875218))

(assert (=> b!4874011 m!5874318))

(assert (=> b!4874011 m!5874316))

(assert (=> b!4874011 m!5875252))

(declare-fun m!5875260 () Bool)

(assert (=> b!4874011 m!5875260))

(assert (=> bm!338372 m!5875176))

(declare-fun m!5875262 () Bool)

(assert (=> bm!338373 m!5875262))

(assert (=> b!4873280 d!1565434))

(declare-fun d!1565436 () Bool)

(declare-fun lt!1997188 () Int)

(assert (=> d!1565436 (>= lt!1997188 0)))

(declare-fun e!3046656 () Int)

(assert (=> d!1565436 (= lt!1997188 e!3046656)))

(declare-fun c!828961 () Bool)

(assert (=> d!1565436 (= c!828961 ((_ is Nil!55997) Nil!55997))))

(assert (=> d!1565436 (= (size!36925 Nil!55997) lt!1997188)))

(declare-fun b!4874014 () Bool)

(assert (=> b!4874014 (= e!3046656 0)))

(declare-fun b!4874015 () Bool)

(assert (=> b!4874015 (= e!3046656 (+ 1 (size!36925 (t!364323 Nil!55997))))))

(assert (= (and d!1565436 c!828961) b!4874014))

(assert (= (and d!1565436 (not c!828961)) b!4874015))

(declare-fun m!5875264 () Bool)

(assert (=> b!4874015 m!5875264))

(assert (=> b!4873280 d!1565436))

(declare-fun d!1565438 () Bool)

(declare-fun lt!1997189 () Int)

(assert (=> d!1565438 (>= lt!1997189 0)))

(declare-fun e!3046657 () Int)

(assert (=> d!1565438 (= lt!1997189 e!3046657)))

(declare-fun c!828962 () Bool)

(assert (=> d!1565438 (= c!828962 ((_ is Nil!55997) lt!1996835))))

(assert (=> d!1565438 (= (size!36925 lt!1996835) lt!1997189)))

(declare-fun b!4874016 () Bool)

(assert (=> b!4874016 (= e!3046657 0)))

(declare-fun b!4874017 () Bool)

(assert (=> b!4874017 (= e!3046657 (+ 1 (size!36925 (t!364323 lt!1996835))))))

(assert (= (and d!1565438 c!828962) b!4874016))

(assert (= (and d!1565438 (not c!828962)) b!4874017))

(declare-fun m!5875266 () Bool)

(assert (=> b!4874017 m!5875266))

(assert (=> b!4873280 d!1565438))

(declare-fun b!4874018 () Bool)

(declare-fun e!3046662 () Option!13797)

(declare-fun call!338384 () Option!13797)

(assert (=> b!4874018 (= e!3046662 call!338384)))

(declare-fun e!3046663 () Bool)

(declare-fun lt!1997192 () Option!13797)

(declare-fun b!4874019 () Bool)

(assert (=> b!4874019 (= e!3046663 (= (list!17526 (_2!33235 (get!19242 lt!1997192))) (_2!33237 (get!19243 (maxPrefix!4553 thiss!11460 (t!364325 (t!364325 rules!1164)) (list!17526 input!585))))))))

(declare-fun b!4874020 () Bool)

(declare-fun e!3046661 () Bool)

(assert (=> b!4874020 (= e!3046661 e!3046663)))

(declare-fun res!2080625 () Bool)

(assert (=> b!4874020 (=> (not res!2080625) (not e!3046663))))

(assert (=> b!4874020 (= res!2080625 (= (_1!33235 (get!19242 lt!1997192)) (_1!33237 (get!19243 (maxPrefix!4553 thiss!11460 (t!364325 (t!364325 rules!1164)) (list!17526 input!585))))))))

(declare-fun b!4874022 () Bool)

(declare-fun e!3046659 () Bool)

(declare-fun e!3046660 () Bool)

(assert (=> b!4874022 (= e!3046659 e!3046660)))

(declare-fun res!2080628 () Bool)

(assert (=> b!4874022 (=> (not res!2080628) (not e!3046660))))

(assert (=> b!4874022 (= res!2080628 (= (_1!33235 (get!19242 lt!1997192)) (_1!33237 (get!19243 (maxPrefixZipper!567 thiss!11460 (t!364325 (t!364325 rules!1164)) (list!17526 input!585))))))))

(declare-fun bm!338379 () Bool)

(assert (=> bm!338379 (= call!338384 (maxPrefixOneRuleZipperSequence!580 thiss!11460 (h!62447 (t!364325 (t!364325 rules!1164))) input!585))))

(declare-fun b!4874023 () Bool)

(assert (=> b!4874023 (= e!3046660 (= (list!17526 (_2!33235 (get!19242 lt!1997192))) (_2!33237 (get!19243 (maxPrefixZipper!567 thiss!11460 (t!364325 (t!364325 rules!1164)) (list!17526 input!585))))))))

(declare-fun b!4874024 () Bool)

(declare-fun res!2080624 () Bool)

(declare-fun e!3046658 () Bool)

(assert (=> b!4874024 (=> (not res!2080624) (not e!3046658))))

(assert (=> b!4874024 (= res!2080624 e!3046659)))

(declare-fun res!2080626 () Bool)

(assert (=> b!4874024 (=> res!2080626 e!3046659)))

(assert (=> b!4874024 (= res!2080626 (not (isDefined!10856 lt!1997192)))))

(declare-fun b!4874025 () Bool)

(declare-fun lt!1997190 () Option!13797)

(declare-fun lt!1997194 () Option!13797)

(assert (=> b!4874025 (= e!3046662 (ite (and ((_ is None!13796) lt!1997190) ((_ is None!13796) lt!1997194)) None!13796 (ite ((_ is None!13796) lt!1997194) lt!1997190 (ite ((_ is None!13796) lt!1997190) lt!1997194 (ite (>= (size!36921 (_1!33235 (v!49726 lt!1997190))) (size!36921 (_1!33235 (v!49726 lt!1997194)))) lt!1997190 lt!1997194)))))))

(assert (=> b!4874025 (= lt!1997190 call!338384)))

(assert (=> b!4874025 (= lt!1997194 (maxPrefixZipperSequence!1237 thiss!11460 (t!364325 (t!364325 (t!364325 rules!1164))) input!585))))

(declare-fun b!4874021 () Bool)

(assert (=> b!4874021 (= e!3046658 e!3046661)))

(declare-fun res!2080623 () Bool)

(assert (=> b!4874021 (=> res!2080623 e!3046661)))

(assert (=> b!4874021 (= res!2080623 (not (isDefined!10856 lt!1997192)))))

(declare-fun d!1565440 () Bool)

(assert (=> d!1565440 e!3046658))

(declare-fun res!2080627 () Bool)

(assert (=> d!1565440 (=> (not res!2080627) (not e!3046658))))

(assert (=> d!1565440 (= res!2080627 (= (isDefined!10856 lt!1997192) (isDefined!10857 (maxPrefixZipper!567 thiss!11460 (t!364325 (t!364325 rules!1164)) (list!17526 input!585)))))))

(assert (=> d!1565440 (= lt!1997192 e!3046662)))

(declare-fun c!828963 () Bool)

(assert (=> d!1565440 (= c!828963 (and ((_ is Cons!55999) (t!364325 (t!364325 rules!1164))) ((_ is Nil!55999) (t!364325 (t!364325 (t!364325 rules!1164))))))))

(declare-fun lt!1997195 () Unit!145990)

(declare-fun lt!1997193 () Unit!145990)

(assert (=> d!1565440 (= lt!1997195 lt!1997193)))

(declare-fun lt!1997191 () List!56121)

(declare-fun lt!1997196 () List!56121)

(assert (=> d!1565440 (isPrefix!4770 lt!1997191 lt!1997196)))

(assert (=> d!1565440 (= lt!1997193 (lemmaIsPrefixRefl!3167 lt!1997191 lt!1997196))))

(assert (=> d!1565440 (= lt!1997196 (list!17526 input!585))))

(assert (=> d!1565440 (= lt!1997191 (list!17526 input!585))))

(assert (=> d!1565440 (rulesValidInductive!3025 thiss!11460 (t!364325 (t!364325 rules!1164)))))

(assert (=> d!1565440 (= (maxPrefixZipperSequence!1237 thiss!11460 (t!364325 (t!364325 rules!1164)) input!585) lt!1997192)))

(assert (= (and d!1565440 c!828963) b!4874018))

(assert (= (and d!1565440 (not c!828963)) b!4874025))

(assert (= (or b!4874018 b!4874025) bm!338379))

(assert (= (and d!1565440 res!2080627) b!4874024))

(assert (= (and b!4874024 (not res!2080626)) b!4874022))

(assert (= (and b!4874022 res!2080628) b!4874023))

(assert (= (and b!4874024 res!2080624) b!4874021))

(assert (= (and b!4874021 (not res!2080623)) b!4874020))

(assert (= (and b!4874020 res!2080625) b!4874019))

(declare-fun m!5875268 () Bool)

(assert (=> b!4874025 m!5875268))

(declare-fun m!5875270 () Bool)

(assert (=> b!4874022 m!5875270))

(assert (=> b!4874022 m!5873856))

(assert (=> b!4874022 m!5873856))

(assert (=> b!4874022 m!5874958))

(assert (=> b!4874022 m!5874958))

(declare-fun m!5875272 () Bool)

(assert (=> b!4874022 m!5875272))

(assert (=> d!1565440 m!5874958))

(declare-fun m!5875274 () Bool)

(assert (=> d!1565440 m!5875274))

(assert (=> d!1565440 m!5873856))

(assert (=> d!1565440 m!5874958))

(declare-fun m!5875276 () Bool)

(assert (=> d!1565440 m!5875276))

(assert (=> d!1565440 m!5874962))

(assert (=> d!1565440 m!5873856))

(declare-fun m!5875278 () Bool)

(assert (=> d!1565440 m!5875278))

(declare-fun m!5875280 () Bool)

(assert (=> d!1565440 m!5875280))

(assert (=> b!4874020 m!5875270))

(assert (=> b!4874020 m!5873856))

(assert (=> b!4874020 m!5873856))

(assert (=> b!4874020 m!5874922))

(assert (=> b!4874020 m!5874922))

(declare-fun m!5875282 () Bool)

(assert (=> b!4874020 m!5875282))

(assert (=> b!4874023 m!5873856))

(assert (=> b!4874023 m!5874958))

(assert (=> b!4874023 m!5873856))

(assert (=> b!4874023 m!5874958))

(assert (=> b!4874023 m!5875272))

(declare-fun m!5875284 () Bool)

(assert (=> b!4874023 m!5875284))

(assert (=> b!4874023 m!5875270))

(assert (=> b!4874021 m!5875280))

(declare-fun m!5875286 () Bool)

(assert (=> bm!338379 m!5875286))

(assert (=> b!4874024 m!5875280))

(assert (=> b!4874019 m!5875284))

(assert (=> b!4874019 m!5875270))

(assert (=> b!4874019 m!5873856))

(assert (=> b!4874019 m!5874922))

(assert (=> b!4874019 m!5874922))

(assert (=> b!4874019 m!5875282))

(assert (=> b!4874019 m!5873856))

(assert (=> b!4873243 d!1565440))

(declare-fun d!1565442 () Bool)

(declare-fun res!2080629 () Bool)

(declare-fun e!3046664 () Bool)

(assert (=> d!1565442 (=> (not res!2080629) (not e!3046664))))

(assert (=> d!1565442 (= res!2080629 (<= (size!36925 (list!17530 (xs!17906 (right!41003 (c!828795 input!585))))) 512))))

(assert (=> d!1565442 (= (inv!71934 (right!41003 (c!828795 input!585))) e!3046664)))

(declare-fun b!4874026 () Bool)

(declare-fun res!2080630 () Bool)

(assert (=> b!4874026 (=> (not res!2080630) (not e!3046664))))

(assert (=> b!4874026 (= res!2080630 (= (csize!29427 (right!41003 (c!828795 input!585))) (size!36925 (list!17530 (xs!17906 (right!41003 (c!828795 input!585)))))))))

(declare-fun b!4874027 () Bool)

(assert (=> b!4874027 (= e!3046664 (and (> (csize!29427 (right!41003 (c!828795 input!585))) 0) (<= (csize!29427 (right!41003 (c!828795 input!585))) 512)))))

(assert (= (and d!1565442 res!2080629) b!4874026))

(assert (= (and b!4874026 res!2080630) b!4874027))

(declare-fun m!5875288 () Bool)

(assert (=> d!1565442 m!5875288))

(assert (=> d!1565442 m!5875288))

(declare-fun m!5875290 () Bool)

(assert (=> d!1565442 m!5875290))

(assert (=> b!4874026 m!5875288))

(assert (=> b!4874026 m!5875288))

(assert (=> b!4874026 m!5875290))

(assert (=> b!4873259 d!1565442))

(assert (=> bm!338316 d!1565360))

(assert (=> b!4873139 d!1565298))

(assert (=> b!4873139 d!1565300))

(assert (=> b!4873241 d!1565314))

(assert (=> b!4873241 d!1565328))

(assert (=> b!4873241 d!1565318))

(assert (=> b!4873241 d!1565004))

(declare-fun d!1565444 () Bool)

(assert (=> d!1565444 (= (get!19243 (maxPrefixZipper!567 thiss!11460 (t!364325 rules!1164) (list!17526 input!585))) (v!49728 (maxPrefixZipper!567 thiss!11460 (t!364325 rules!1164) (list!17526 input!585))))))

(assert (=> b!4873241 d!1565444))

(declare-fun d!1565446 () Bool)

(declare-fun res!2080631 () Bool)

(declare-fun e!3046665 () Bool)

(assert (=> d!1565446 (=> (not res!2080631) (not e!3046665))))

(assert (=> d!1565446 (= res!2080631 (= (csize!29426 (right!41003 (c!828795 input!585))) (+ (size!36926 (left!40673 (right!41003 (c!828795 input!585)))) (size!36926 (right!41003 (right!41003 (c!828795 input!585)))))))))

(assert (=> d!1565446 (= (inv!71933 (right!41003 (c!828795 input!585))) e!3046665)))

(declare-fun b!4874028 () Bool)

(declare-fun res!2080632 () Bool)

(assert (=> b!4874028 (=> (not res!2080632) (not e!3046665))))

(assert (=> b!4874028 (= res!2080632 (and (not (= (left!40673 (right!41003 (c!828795 input!585))) Empty!14598)) (not (= (right!41003 (right!41003 (c!828795 input!585))) Empty!14598))))))

(declare-fun b!4874029 () Bool)

(declare-fun res!2080633 () Bool)

(assert (=> b!4874029 (=> (not res!2080633) (not e!3046665))))

(assert (=> b!4874029 (= res!2080633 (= (cheight!14809 (right!41003 (c!828795 input!585))) (+ (max!0 (height!1935 (left!40673 (right!41003 (c!828795 input!585)))) (height!1935 (right!41003 (right!41003 (c!828795 input!585))))) 1)))))

(declare-fun b!4874030 () Bool)

(assert (=> b!4874030 (= e!3046665 (<= 0 (cheight!14809 (right!41003 (c!828795 input!585)))))))

(assert (= (and d!1565446 res!2080631) b!4874028))

(assert (= (and b!4874028 res!2080632) b!4874029))

(assert (= (and b!4874029 res!2080633) b!4874030))

(declare-fun m!5875292 () Bool)

(assert (=> d!1565446 m!5875292))

(declare-fun m!5875294 () Bool)

(assert (=> d!1565446 m!5875294))

(assert (=> b!4874029 m!5874808))

(assert (=> b!4874029 m!5874810))

(assert (=> b!4874029 m!5874808))

(assert (=> b!4874029 m!5874810))

(declare-fun m!5875296 () Bool)

(assert (=> b!4874029 m!5875296))

(assert (=> b!4873257 d!1565446))

(declare-fun d!1565448 () Bool)

(declare-fun lt!1997197 () Bool)

(assert (=> d!1565448 (= lt!1997197 (isEmpty!29986 (list!17529 (left!40673 (c!828795 input!585)))))))

(assert (=> d!1565448 (= lt!1997197 (= (size!36926 (left!40673 (c!828795 input!585))) 0))))

(assert (=> d!1565448 (= (isEmpty!29983 (left!40673 (c!828795 input!585))) lt!1997197)))

(declare-fun bs!1174893 () Bool)

(assert (= bs!1174893 d!1565448))

(declare-fun m!5875298 () Bool)

(assert (=> bs!1174893 m!5875298))

(assert (=> bs!1174893 m!5875298))

(declare-fun m!5875300 () Bool)

(assert (=> bs!1174893 m!5875300))

(assert (=> bs!1174893 m!5874256))

(assert (=> b!4873137 d!1565448))

(declare-fun d!1565450 () Bool)

(assert (=> d!1565450 (= (get!19242 lt!1996832) (v!49726 lt!1996832))))

(assert (=> b!4873278 d!1565450))

(declare-fun d!1565452 () Bool)

(assert (=> d!1565452 (= (get!19243 (maxPrefixOneRule!3495 thiss!11460 (h!62447 rules!1164) (list!17526 input!585))) (v!49728 (maxPrefixOneRule!3495 thiss!11460 (h!62447 rules!1164) (list!17526 input!585))))))

(assert (=> b!4873278 d!1565452))

(assert (=> b!4873278 d!1565360))

(assert (=> b!4873278 d!1565004))

(declare-fun d!1565454 () Bool)

(assert (=> d!1565454 (= (list!17526 (_1!33240 lt!1996831)) (list!17529 (c!828795 (_1!33240 lt!1996831))))))

(declare-fun bs!1174894 () Bool)

(assert (= bs!1174894 d!1565454))

(declare-fun m!5875302 () Bool)

(assert (=> bs!1174894 m!5875302))

(assert (=> b!4873276 d!1565454))

(assert (=> b!4873276 d!1565434))

(declare-fun d!1565456 () Bool)

(declare-fun lt!1997198 () Int)

(assert (=> d!1565456 (= lt!1997198 (size!36925 (list!17526 (_1!33240 lt!1996831))))))

(assert (=> d!1565456 (= lt!1997198 (size!36926 (c!828795 (_1!33240 lt!1996831))))))

(assert (=> d!1565456 (= (size!36922 (_1!33240 lt!1996831)) lt!1997198)))

(declare-fun bs!1174895 () Bool)

(assert (= bs!1174895 d!1565456))

(assert (=> bs!1174895 m!5874324))

(assert (=> bs!1174895 m!5874324))

(declare-fun m!5875304 () Bool)

(assert (=> bs!1174895 m!5875304))

(declare-fun m!5875306 () Bool)

(assert (=> bs!1174895 m!5875306))

(assert (=> b!4873276 d!1565456))

(declare-fun d!1565458 () Bool)

(assert (=> d!1565458 (= (apply!13506 (transformation!8046 (h!62447 rules!1164)) (_1!33240 lt!1996831)) (dynLambda!22499 (toValue!10921 (transformation!8046 (h!62447 rules!1164))) (_1!33240 lt!1996831)))))

(declare-fun b_lambda!193807 () Bool)

(assert (=> (not b_lambda!193807) (not d!1565458)))

(declare-fun t!364399 () Bool)

(declare-fun tb!258135 () Bool)

(assert (=> (and b!4872797 (= (toValue!10921 (transformation!8046 (h!62447 rules!1164))) (toValue!10921 (transformation!8046 (h!62447 rules!1164)))) t!364399) tb!258135))

(declare-fun result!321342 () Bool)

(assert (=> tb!258135 (= result!321342 (inv!21 (dynLambda!22499 (toValue!10921 (transformation!8046 (h!62447 rules!1164))) (_1!33240 lt!1996831))))))

(declare-fun m!5875308 () Bool)

(assert (=> tb!258135 m!5875308))

(assert (=> d!1565458 t!364399))

(declare-fun b_and!343269 () Bool)

(assert (= b_and!343221 (and (=> t!364399 result!321342) b_and!343269)))

(declare-fun t!364401 () Bool)

(declare-fun tb!258137 () Bool)

(assert (=> (and b!4872942 (= (toValue!10921 (transformation!8046 (h!62447 (t!364325 rules!1164)))) (toValue!10921 (transformation!8046 (h!62447 rules!1164)))) t!364401) tb!258137))

(declare-fun result!321344 () Bool)

(assert (= result!321344 result!321342))

(assert (=> d!1565458 t!364401))

(declare-fun b_and!343271 () Bool)

(assert (= b_and!343223 (and (=> t!364401 result!321344) b_and!343271)))

(declare-fun t!364403 () Bool)

(declare-fun tb!258139 () Bool)

(assert (=> (and b!4873309 (= (toValue!10921 (transformation!8046 (h!62447 (t!364325 (t!364325 rules!1164))))) (toValue!10921 (transformation!8046 (h!62447 rules!1164)))) t!364403) tb!258139))

(declare-fun result!321346 () Bool)

(assert (= result!321346 result!321342))

(assert (=> d!1565458 t!364403))

(declare-fun b_and!343273 () Bool)

(assert (= b_and!343225 (and (=> t!364403 result!321346) b_and!343273)))

(declare-fun m!5875310 () Bool)

(assert (=> d!1565458 m!5875310))

(assert (=> b!4873276 d!1565458))

(assert (=> b!4873276 d!1565436))

(declare-fun d!1565460 () Bool)

(assert (=> d!1565460 (= (isEmpty!29986 (_1!33241 (findLongestMatchInner!1725 (regex!8046 (h!62447 rules!1164)) Nil!55997 (size!36925 Nil!55997) lt!1996835 lt!1996835 (size!36925 lt!1996835)))) ((_ is Nil!55997) (_1!33241 (findLongestMatchInner!1725 (regex!8046 (h!62447 rules!1164)) Nil!55997 (size!36925 Nil!55997) lt!1996835 lt!1996835 (size!36925 lt!1996835)))))))

(assert (=> b!4873276 d!1565460))

(assert (=> b!4873276 d!1565438))

(declare-fun d!1565462 () Bool)

(declare-fun e!3046669 () Bool)

(assert (=> d!1565462 e!3046669))

(declare-fun res!2080636 () Bool)

(assert (=> d!1565462 (=> res!2080636 e!3046669)))

(assert (=> d!1565462 (= res!2080636 (isEmpty!29986 (_1!33241 (findLongestMatchInner!1725 (regex!8046 (h!62447 rules!1164)) Nil!55997 (size!36925 Nil!55997) lt!1996835 lt!1996835 (size!36925 lt!1996835)))))))

(declare-fun lt!1997201 () Unit!145990)

(declare-fun choose!35630 (Regex!13121 List!56121) Unit!145990)

(assert (=> d!1565462 (= lt!1997201 (choose!35630 (regex!8046 (h!62447 rules!1164)) lt!1996835))))

(assert (=> d!1565462 (validRegex!5872 (regex!8046 (h!62447 rules!1164)))))

(assert (=> d!1565462 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1688 (regex!8046 (h!62447 rules!1164)) lt!1996835) lt!1997201)))

(declare-fun b!4874033 () Bool)

(assert (=> b!4874033 (= e!3046669 (matchR!6496 (regex!8046 (h!62447 rules!1164)) (_1!33241 (findLongestMatchInner!1725 (regex!8046 (h!62447 rules!1164)) Nil!55997 (size!36925 Nil!55997) lt!1996835 lt!1996835 (size!36925 lt!1996835)))))))

(assert (= (and d!1565462 (not res!2080636)) b!4874033))

(declare-fun m!5875312 () Bool)

(assert (=> d!1565462 m!5875312))

(assert (=> d!1565462 m!5875174))

(assert (=> d!1565462 m!5874338))

(assert (=> d!1565462 m!5874318))

(assert (=> d!1565462 m!5874316))

(assert (=> d!1565462 m!5874318))

(assert (=> d!1565462 m!5874320))

(assert (=> d!1565462 m!5874316))

(assert (=> b!4874033 m!5874316))

(assert (=> b!4874033 m!5874318))

(assert (=> b!4874033 m!5874316))

(assert (=> b!4874033 m!5874318))

(assert (=> b!4874033 m!5874320))

(assert (=> b!4874033 m!5874322))

(assert (=> b!4873276 d!1565462))

(assert (=> b!4873276 d!1565004))

(declare-fun d!1565464 () Bool)

(declare-fun dynLambda!22504 (Int BalanceConc!28638) Bool)

(assert (=> d!1565464 (dynLambda!22504 lambda!243575 (_1!33240 lt!1996831))))

(declare-fun lt!1997204 () Unit!145990)

(declare-fun choose!35631 (Int BalanceConc!28638) Unit!145990)

(assert (=> d!1565464 (= lt!1997204 (choose!35631 lambda!243575 (_1!33240 lt!1996831)))))

(assert (=> d!1565464 (Forall!1679 lambda!243575)))

(assert (=> d!1565464 (= (ForallOf!1105 lambda!243575 (_1!33240 lt!1996831)) lt!1997204)))

(declare-fun b_lambda!193809 () Bool)

(assert (=> (not b_lambda!193809) (not d!1565464)))

(declare-fun bs!1174896 () Bool)

(assert (= bs!1174896 d!1565464))

(declare-fun m!5875314 () Bool)

(assert (=> bs!1174896 m!5875314))

(declare-fun m!5875316 () Bool)

(assert (=> bs!1174896 m!5875316))

(declare-fun m!5875318 () Bool)

(assert (=> bs!1174896 m!5875318))

(assert (=> b!4873276 d!1565464))

(declare-fun d!1565466 () Bool)

(assert (=> d!1565466 (= (seqFromList!5902 (list!17526 (_1!33240 lt!1996831))) (fromListB!2683 (list!17526 (_1!33240 lt!1996831))))))

(declare-fun bs!1174897 () Bool)

(assert (= bs!1174897 d!1565466))

(assert (=> bs!1174897 m!5874324))

(declare-fun m!5875320 () Bool)

(assert (=> bs!1174897 m!5875320))

(assert (=> b!4873276 d!1565466))

(declare-fun d!1565468 () Bool)

(assert (=> d!1565468 (dynLambda!22504 lambda!243575 (seqFromList!5902 (list!17526 (_1!33240 lt!1996831))))))

(declare-fun lt!1997205 () Unit!145990)

(assert (=> d!1565468 (= lt!1997205 (choose!35631 lambda!243575 (seqFromList!5902 (list!17526 (_1!33240 lt!1996831)))))))

(assert (=> d!1565468 (Forall!1679 lambda!243575)))

(assert (=> d!1565468 (= (ForallOf!1105 lambda!243575 (seqFromList!5902 (list!17526 (_1!33240 lt!1996831)))) lt!1997205)))

(declare-fun b_lambda!193811 () Bool)

(assert (=> (not b_lambda!193811) (not d!1565468)))

(declare-fun bs!1174898 () Bool)

(assert (= bs!1174898 d!1565468))

(assert (=> bs!1174898 m!5874328))

(declare-fun m!5875322 () Bool)

(assert (=> bs!1174898 m!5875322))

(assert (=> bs!1174898 m!5874328))

(declare-fun m!5875324 () Bool)

(assert (=> bs!1174898 m!5875324))

(assert (=> bs!1174898 m!5875318))

(assert (=> b!4873276 d!1565468))

(declare-fun bs!1174899 () Bool)

(declare-fun d!1565470 () Bool)

(assert (= bs!1174899 (and d!1565470 d!1565108)))

(declare-fun lambda!243588 () Int)

(assert (=> bs!1174899 (= lambda!243588 lambda!243567)))

(declare-fun b!4874040 () Bool)

(declare-fun e!3046674 () Bool)

(assert (=> b!4874040 (= e!3046674 true)))

(assert (=> d!1565470 e!3046674))

(assert (= d!1565470 b!4874040))

(assert (=> b!4874040 (< (dynLambda!22493 order!25251 (toValue!10921 (transformation!8046 (h!62447 rules!1164)))) (dynLambda!22494 order!25253 lambda!243588))))

(assert (=> b!4874040 (< (dynLambda!22495 order!25255 (toChars!10780 (transformation!8046 (h!62447 rules!1164)))) (dynLambda!22494 order!25253 lambda!243588))))

(assert (=> d!1565470 (= (dynLambda!22499 (toValue!10921 (transformation!8046 (h!62447 rules!1164))) (_1!33240 lt!1996831)) (dynLambda!22499 (toValue!10921 (transformation!8046 (h!62447 rules!1164))) (seqFromList!5902 (list!17526 (_1!33240 lt!1996831)))))))

(declare-fun lt!1997208 () Unit!145990)

(declare-fun Forall2of!438 (Int BalanceConc!28638 BalanceConc!28638) Unit!145990)

(assert (=> d!1565470 (= lt!1997208 (Forall2of!438 lambda!243588 (_1!33240 lt!1996831) (seqFromList!5902 (list!17526 (_1!33240 lt!1996831)))))))

(assert (=> d!1565470 (= (list!17526 (_1!33240 lt!1996831)) (list!17526 (seqFromList!5902 (list!17526 (_1!33240 lt!1996831)))))))

(assert (=> d!1565470 (= (lemmaEqSameImage!1062 (transformation!8046 (h!62447 rules!1164)) (_1!33240 lt!1996831) (seqFromList!5902 (list!17526 (_1!33240 lt!1996831)))) lt!1997208)))

(declare-fun b_lambda!193813 () Bool)

(assert (=> (not b_lambda!193813) (not d!1565470)))

(assert (=> d!1565470 t!364399))

(declare-fun b_and!343275 () Bool)

(assert (= b_and!343269 (and (=> t!364399 result!321342) b_and!343275)))

(assert (=> d!1565470 t!364401))

(declare-fun b_and!343277 () Bool)

(assert (= b_and!343271 (and (=> t!364401 result!321344) b_and!343277)))

(assert (=> d!1565470 t!364403))

(declare-fun b_and!343279 () Bool)

(assert (= b_and!343273 (and (=> t!364403 result!321346) b_and!343279)))

(declare-fun b_lambda!193815 () Bool)

(assert (=> (not b_lambda!193815) (not d!1565470)))

(declare-fun t!364405 () Bool)

(declare-fun tb!258141 () Bool)

(assert (=> (and b!4872797 (= (toValue!10921 (transformation!8046 (h!62447 rules!1164))) (toValue!10921 (transformation!8046 (h!62447 rules!1164)))) t!364405) tb!258141))

(declare-fun result!321348 () Bool)

(assert (=> tb!258141 (= result!321348 (inv!21 (dynLambda!22499 (toValue!10921 (transformation!8046 (h!62447 rules!1164))) (seqFromList!5902 (list!17526 (_1!33240 lt!1996831))))))))

(declare-fun m!5875326 () Bool)

(assert (=> tb!258141 m!5875326))

(assert (=> d!1565470 t!364405))

(declare-fun b_and!343281 () Bool)

(assert (= b_and!343275 (and (=> t!364405 result!321348) b_and!343281)))

(declare-fun t!364407 () Bool)

(declare-fun tb!258143 () Bool)

(assert (=> (and b!4872942 (= (toValue!10921 (transformation!8046 (h!62447 (t!364325 rules!1164)))) (toValue!10921 (transformation!8046 (h!62447 rules!1164)))) t!364407) tb!258143))

(declare-fun result!321350 () Bool)

(assert (= result!321350 result!321348))

(assert (=> d!1565470 t!364407))

(declare-fun b_and!343283 () Bool)

(assert (= b_and!343277 (and (=> t!364407 result!321350) b_and!343283)))

(declare-fun t!364409 () Bool)

(declare-fun tb!258145 () Bool)

(assert (=> (and b!4873309 (= (toValue!10921 (transformation!8046 (h!62447 (t!364325 (t!364325 rules!1164))))) (toValue!10921 (transformation!8046 (h!62447 rules!1164)))) t!364409) tb!258145))

(declare-fun result!321352 () Bool)

(assert (= result!321352 result!321348))

(assert (=> d!1565470 t!364409))

(declare-fun b_and!343285 () Bool)

(assert (= b_and!343279 (and (=> t!364409 result!321352) b_and!343285)))

(assert (=> d!1565470 m!5875310))

(assert (=> d!1565470 m!5874328))

(declare-fun m!5875328 () Bool)

(assert (=> d!1565470 m!5875328))

(assert (=> d!1565470 m!5874328))

(declare-fun m!5875330 () Bool)

(assert (=> d!1565470 m!5875330))

(assert (=> d!1565470 m!5874324))

(assert (=> d!1565470 m!5874328))

(declare-fun m!5875332 () Bool)

(assert (=> d!1565470 m!5875332))

(assert (=> b!4873276 d!1565470))

(declare-fun d!1565472 () Bool)

(declare-fun e!3046678 () Bool)

(assert (=> d!1565472 e!3046678))

(declare-fun res!2080641 () Bool)

(assert (=> d!1565472 (=> (not res!2080641) (not e!3046678))))

(assert (=> d!1565472 (= res!2080641 (semiInverseModEq!3550 (toChars!10780 (transformation!8046 (h!62447 rules!1164))) (toValue!10921 (transformation!8046 (h!62447 rules!1164)))))))

(declare-fun Unit!145999 () Unit!145990)

(assert (=> d!1565472 (= (lemmaInv!1208 (transformation!8046 (h!62447 rules!1164))) Unit!145999)))

(declare-fun b!4874043 () Bool)

(assert (=> b!4874043 (= e!3046678 (equivClasses!3429 (toChars!10780 (transformation!8046 (h!62447 rules!1164))) (toValue!10921 (transformation!8046 (h!62447 rules!1164)))))))

(assert (= (and d!1565472 res!2080641) b!4874043))

(assert (=> d!1565472 m!5873864))

(assert (=> b!4874043 m!5873866))

(assert (=> b!4873276 d!1565472))

(assert (=> b!4873240 d!1565314))

(assert (=> b!4873240 d!1565444))

(assert (=> b!4873240 d!1565328))

(assert (=> b!4873240 d!1565004))

(declare-fun d!1565474 () Bool)

(assert (=> d!1565474 (= (isDefined!10857 lt!1996788) (not (isEmpty!29985 lt!1996788)))))

(declare-fun bs!1174900 () Bool)

(assert (= bs!1174900 d!1565474))

(assert (=> bs!1174900 m!5874218))

(assert (=> b!4873199 d!1565474))

(assert (=> b!4873135 d!1565298))

(assert (=> b!4873135 d!1565300))

(assert (=> b!4873238 d!1565314))

(assert (=> b!4873238 d!1565312))

(assert (=> b!4873238 d!1565316))

(assert (=> b!4873238 d!1565004))

(declare-fun d!1565476 () Bool)

(declare-fun lt!1997211 () Bool)

(declare-fun content!9991 (List!56125) (InoxSet String!63198))

(assert (=> d!1565476 (= lt!1997211 (select (content!9991 Nil!56001) (tag!8910 (h!62447 rules!1164))))))

(declare-fun e!3046684 () Bool)

(assert (=> d!1565476 (= lt!1997211 e!3046684)))

(declare-fun res!2080646 () Bool)

(assert (=> d!1565476 (=> (not res!2080646) (not e!3046684))))

(assert (=> d!1565476 (= res!2080646 ((_ is Cons!56001) Nil!56001))))

(assert (=> d!1565476 (= (contains!19404 Nil!56001 (tag!8910 (h!62447 rules!1164))) lt!1997211)))

(declare-fun b!4874048 () Bool)

(declare-fun e!3046683 () Bool)

(assert (=> b!4874048 (= e!3046684 e!3046683)))

(declare-fun res!2080647 () Bool)

(assert (=> b!4874048 (=> res!2080647 e!3046683)))

(assert (=> b!4874048 (= res!2080647 (= (h!62449 Nil!56001) (tag!8910 (h!62447 rules!1164))))))

(declare-fun b!4874049 () Bool)

(assert (=> b!4874049 (= e!3046683 (contains!19404 (t!364327 Nil!56001) (tag!8910 (h!62447 rules!1164))))))

(assert (= (and d!1565476 res!2080646) b!4874048))

(assert (= (and b!4874048 (not res!2080647)) b!4874049))

(declare-fun m!5875334 () Bool)

(assert (=> d!1565476 m!5875334))

(declare-fun m!5875336 () Bool)

(assert (=> d!1565476 m!5875336))

(declare-fun m!5875338 () Bool)

(assert (=> b!4874049 m!5875338))

(assert (=> b!4873252 d!1565476))

(declare-fun d!1565478 () Bool)

(declare-fun c!828964 () Bool)

(assert (=> d!1565478 (= c!828964 ((_ is Node!14598) (left!40673 (right!41003 (c!828795 input!585)))))))

(declare-fun e!3046685 () Bool)

(assert (=> d!1565478 (= (inv!71928 (left!40673 (right!41003 (c!828795 input!585)))) e!3046685)))

(declare-fun b!4874050 () Bool)

(assert (=> b!4874050 (= e!3046685 (inv!71933 (left!40673 (right!41003 (c!828795 input!585)))))))

(declare-fun b!4874051 () Bool)

(declare-fun e!3046686 () Bool)

(assert (=> b!4874051 (= e!3046685 e!3046686)))

(declare-fun res!2080648 () Bool)

(assert (=> b!4874051 (= res!2080648 (not ((_ is Leaf!24332) (left!40673 (right!41003 (c!828795 input!585))))))))

(assert (=> b!4874051 (=> res!2080648 e!3046686)))

(declare-fun b!4874052 () Bool)

(assert (=> b!4874052 (= e!3046686 (inv!71934 (left!40673 (right!41003 (c!828795 input!585)))))))

(assert (= (and d!1565478 c!828964) b!4874050))

(assert (= (and d!1565478 (not c!828964)) b!4874051))

(assert (= (and b!4874051 (not res!2080648)) b!4874052))

(declare-fun m!5875340 () Bool)

(assert (=> b!4874050 m!5875340))

(declare-fun m!5875342 () Bool)

(assert (=> b!4874052 m!5875342))

(assert (=> b!4873325 d!1565478))

(declare-fun d!1565480 () Bool)

(declare-fun c!828965 () Bool)

(assert (=> d!1565480 (= c!828965 ((_ is Node!14598) (right!41003 (right!41003 (c!828795 input!585)))))))

(declare-fun e!3046687 () Bool)

(assert (=> d!1565480 (= (inv!71928 (right!41003 (right!41003 (c!828795 input!585)))) e!3046687)))

(declare-fun b!4874053 () Bool)

(assert (=> b!4874053 (= e!3046687 (inv!71933 (right!41003 (right!41003 (c!828795 input!585)))))))

(declare-fun b!4874054 () Bool)

(declare-fun e!3046688 () Bool)

(assert (=> b!4874054 (= e!3046687 e!3046688)))

(declare-fun res!2080649 () Bool)

(assert (=> b!4874054 (= res!2080649 (not ((_ is Leaf!24332) (right!41003 (right!41003 (c!828795 input!585))))))))

(assert (=> b!4874054 (=> res!2080649 e!3046688)))

(declare-fun b!4874055 () Bool)

(assert (=> b!4874055 (= e!3046688 (inv!71934 (right!41003 (right!41003 (c!828795 input!585)))))))

(assert (= (and d!1565480 c!828965) b!4874053))

(assert (= (and d!1565480 (not c!828965)) b!4874054))

(assert (= (and b!4874054 (not res!2080649)) b!4874055))

(declare-fun m!5875344 () Bool)

(assert (=> b!4874053 m!5875344))

(declare-fun m!5875346 () Bool)

(assert (=> b!4874055 m!5875346))

(assert (=> b!4873325 d!1565480))

(declare-fun d!1565482 () Bool)

(assert (=> d!1565482 (= (isEmpty!29984 lt!1996660) (not ((_ is Some!13796) lt!1996660)))))

(assert (=> d!1565080 d!1565482))

(declare-fun b!4874056 () Bool)

(declare-fun e!3046689 () List!56121)

(assert (=> b!4874056 (= e!3046689 Nil!55997)))

(declare-fun b!4874059 () Bool)

(declare-fun e!3046690 () List!56121)

(assert (=> b!4874059 (= e!3046690 (++!12199 (list!17529 (left!40673 (c!828795 input!585))) (list!17529 (right!41003 (c!828795 input!585)))))))

(declare-fun b!4874057 () Bool)

(assert (=> b!4874057 (= e!3046689 e!3046690)))

(declare-fun c!828967 () Bool)

(assert (=> b!4874057 (= c!828967 ((_ is Leaf!24332) (c!828795 input!585)))))

(declare-fun b!4874058 () Bool)

(assert (=> b!4874058 (= e!3046690 (list!17530 (xs!17906 (c!828795 input!585))))))

(declare-fun d!1565484 () Bool)

(declare-fun c!828966 () Bool)

(assert (=> d!1565484 (= c!828966 ((_ is Empty!14598) (c!828795 input!585)))))

(assert (=> d!1565484 (= (list!17529 (c!828795 input!585)) e!3046689)))

(assert (= (and d!1565484 c!828966) b!4874056))

(assert (= (and d!1565484 (not c!828966)) b!4874057))

(assert (= (and b!4874057 c!828967) b!4874058))

(assert (= (and b!4874057 (not c!828967)) b!4874059))

(assert (=> b!4874059 m!5875298))

(assert (=> b!4874059 m!5874890))

(assert (=> b!4874059 m!5875298))

(assert (=> b!4874059 m!5874890))

(declare-fun m!5875348 () Bool)

(assert (=> b!4874059 m!5875348))

(assert (=> b!4874058 m!5874156))

(assert (=> d!1565004 d!1565484))

(declare-fun d!1565486 () Bool)

(declare-fun res!2080650 () Bool)

(declare-fun e!3046691 () Bool)

(assert (=> d!1565486 (=> res!2080650 e!3046691)))

(assert (=> d!1565486 (= res!2080650 ((_ is Nil!55999) rules!1164))))

(assert (=> d!1565486 (= (forall!13054 rules!1164 lambda!243564) e!3046691)))

(declare-fun b!4874060 () Bool)

(declare-fun e!3046692 () Bool)

(assert (=> b!4874060 (= e!3046691 e!3046692)))

(declare-fun res!2080651 () Bool)

(assert (=> b!4874060 (=> (not res!2080651) (not e!3046692))))

(assert (=> b!4874060 (= res!2080651 (dynLambda!22503 lambda!243564 (h!62447 rules!1164)))))

(declare-fun b!4874061 () Bool)

(assert (=> b!4874061 (= e!3046692 (forall!13054 (t!364325 rules!1164) lambda!243564))))

(assert (= (and d!1565486 (not res!2080650)) b!4874060))

(assert (= (and b!4874060 res!2080651) b!4874061))

(declare-fun b_lambda!193817 () Bool)

(assert (=> (not b_lambda!193817) (not b!4874060)))

(declare-fun m!5875350 () Bool)

(assert (=> b!4874060 m!5875350))

(declare-fun m!5875352 () Bool)

(assert (=> b!4874061 m!5875352))

(assert (=> d!1565090 d!1565486))

(declare-fun d!1565488 () Bool)

(declare-fun lt!1997212 () Int)

(assert (=> d!1565488 (= lt!1997212 (size!36925 (list!17529 (left!40673 (c!828795 input!585)))))))

(assert (=> d!1565488 (= lt!1997212 (ite ((_ is Empty!14598) (left!40673 (c!828795 input!585))) 0 (ite ((_ is Leaf!24332) (left!40673 (c!828795 input!585))) (csize!29427 (left!40673 (c!828795 input!585))) (csize!29426 (left!40673 (c!828795 input!585))))))))

(assert (=> d!1565488 (= (size!36926 (left!40673 (c!828795 input!585))) lt!1997212)))

(declare-fun bs!1174901 () Bool)

(assert (= bs!1174901 d!1565488))

(assert (=> bs!1174901 m!5875298))

(assert (=> bs!1174901 m!5875298))

(declare-fun m!5875354 () Bool)

(assert (=> bs!1174901 m!5875354))

(assert (=> d!1565100 d!1565488))

(declare-fun d!1565490 () Bool)

(declare-fun lt!1997213 () Int)

(assert (=> d!1565490 (= lt!1997213 (size!36925 (list!17529 (right!41003 (c!828795 input!585)))))))

(assert (=> d!1565490 (= lt!1997213 (ite ((_ is Empty!14598) (right!41003 (c!828795 input!585))) 0 (ite ((_ is Leaf!24332) (right!41003 (c!828795 input!585))) (csize!29427 (right!41003 (c!828795 input!585))) (csize!29426 (right!41003 (c!828795 input!585))))))))

(assert (=> d!1565490 (= (size!36926 (right!41003 (c!828795 input!585))) lt!1997213)))

(declare-fun bs!1174902 () Bool)

(assert (= bs!1174902 d!1565490))

(assert (=> bs!1174902 m!5874890))

(assert (=> bs!1174902 m!5874890))

(declare-fun m!5875356 () Bool)

(assert (=> bs!1174902 m!5875356))

(assert (=> d!1565100 d!1565490))

(declare-fun d!1565492 () Bool)

(declare-fun lt!1997214 () Int)

(assert (=> d!1565492 (>= lt!1997214 0)))

(declare-fun e!3046693 () Int)

(assert (=> d!1565492 (= lt!1997214 e!3046693)))

(declare-fun c!828968 () Bool)

(assert (=> d!1565492 (= c!828968 ((_ is Nil!55997) lt!1996664))))

(assert (=> d!1565492 (= (size!36925 lt!1996664) lt!1997214)))

(declare-fun b!4874062 () Bool)

(assert (=> b!4874062 (= e!3046693 0)))

(declare-fun b!4874063 () Bool)

(assert (=> b!4874063 (= e!3046693 (+ 1 (size!36925 (t!364323 lt!1996664))))))

(assert (= (and d!1565492 c!828968) b!4874062))

(assert (= (and d!1565492 (not c!828968)) b!4874063))

(declare-fun m!5875358 () Bool)

(assert (=> b!4874063 m!5875358))

(assert (=> b!4873218 d!1565492))

(declare-fun d!1565494 () Bool)

(declare-fun lt!1997215 () Int)

(assert (=> d!1565494 (>= lt!1997215 0)))

(declare-fun e!3046694 () Int)

(assert (=> d!1565494 (= lt!1997215 e!3046694)))

(declare-fun c!828969 () Bool)

(assert (=> d!1565494 (= c!828969 ((_ is Nil!55997) lt!1996659))))

(assert (=> d!1565494 (= (size!36925 lt!1996659) lt!1997215)))

(declare-fun b!4874064 () Bool)

(assert (=> b!4874064 (= e!3046694 0)))

(declare-fun b!4874065 () Bool)

(assert (=> b!4874065 (= e!3046694 (+ 1 (size!36925 (t!364323 lt!1996659))))))

(assert (= (and d!1565494 c!828969) b!4874064))

(assert (= (and d!1565494 (not c!828969)) b!4874065))

(declare-fun m!5875360 () Bool)

(assert (=> b!4874065 m!5875360))

(assert (=> b!4873218 d!1565494))

(declare-fun d!1565496 () Bool)

(assert (=> d!1565496 (= (inv!71923 (tag!8910 (h!62447 (t!364325 (t!364325 rules!1164))))) (= (mod (str.len (value!258452 (tag!8910 (h!62447 (t!364325 (t!364325 rules!1164)))))) 2) 0))))

(assert (=> b!4873308 d!1565496))

(declare-fun d!1565498 () Bool)

(declare-fun res!2080652 () Bool)

(declare-fun e!3046695 () Bool)

(assert (=> d!1565498 (=> (not res!2080652) (not e!3046695))))

(assert (=> d!1565498 (= res!2080652 (semiInverseModEq!3550 (toChars!10780 (transformation!8046 (h!62447 (t!364325 (t!364325 rules!1164))))) (toValue!10921 (transformation!8046 (h!62447 (t!364325 (t!364325 rules!1164)))))))))

(assert (=> d!1565498 (= (inv!71929 (transformation!8046 (h!62447 (t!364325 (t!364325 rules!1164))))) e!3046695)))

(declare-fun b!4874066 () Bool)

(assert (=> b!4874066 (= e!3046695 (equivClasses!3429 (toChars!10780 (transformation!8046 (h!62447 (t!364325 (t!364325 rules!1164))))) (toValue!10921 (transformation!8046 (h!62447 (t!364325 (t!364325 rules!1164)))))))))

(assert (= (and d!1565498 res!2080652) b!4874066))

(declare-fun m!5875362 () Bool)

(assert (=> d!1565498 m!5875362))

(declare-fun m!5875364 () Bool)

(assert (=> b!4874066 m!5875364))

(assert (=> b!4873308 d!1565498))

(declare-fun b!4874067 () Bool)

(declare-fun e!3046696 () List!56121)

(assert (=> b!4874067 (= e!3046696 Nil!55997)))

(declare-fun b!4874070 () Bool)

(declare-fun e!3046697 () List!56121)

(assert (=> b!4874070 (= e!3046697 (++!12199 (list!17529 (left!40673 (c!828795 (_2!33235 (get!19242 lt!1996660))))) (list!17529 (right!41003 (c!828795 (_2!33235 (get!19242 lt!1996660)))))))))

(declare-fun b!4874068 () Bool)

(assert (=> b!4874068 (= e!3046696 e!3046697)))

(declare-fun c!828971 () Bool)

(assert (=> b!4874068 (= c!828971 ((_ is Leaf!24332) (c!828795 (_2!33235 (get!19242 lt!1996660)))))))

(declare-fun b!4874069 () Bool)

(assert (=> b!4874069 (= e!3046697 (list!17530 (xs!17906 (c!828795 (_2!33235 (get!19242 lt!1996660))))))))

(declare-fun d!1565500 () Bool)

(declare-fun c!828970 () Bool)

(assert (=> d!1565500 (= c!828970 ((_ is Empty!14598) (c!828795 (_2!33235 (get!19242 lt!1996660)))))))

(assert (=> d!1565500 (= (list!17529 (c!828795 (_2!33235 (get!19242 lt!1996660)))) e!3046696)))

(assert (= (and d!1565500 c!828970) b!4874067))

(assert (= (and d!1565500 (not c!828970)) b!4874068))

(assert (= (and b!4874068 c!828971) b!4874069))

(assert (= (and b!4874068 (not c!828971)) b!4874070))

(declare-fun m!5875366 () Bool)

(assert (=> b!4874070 m!5875366))

(declare-fun m!5875368 () Bool)

(assert (=> b!4874070 m!5875368))

(assert (=> b!4874070 m!5875366))

(assert (=> b!4874070 m!5875368))

(declare-fun m!5875370 () Bool)

(assert (=> b!4874070 m!5875370))

(declare-fun m!5875372 () Bool)

(assert (=> b!4874069 m!5875372))

(assert (=> d!1565102 d!1565500))

(declare-fun d!1565502 () Bool)

(assert (=> d!1565502 (= (head!10418 lt!1996659) (h!62445 lt!1996659))))

(assert (=> b!4873216 d!1565502))

(declare-fun d!1565504 () Bool)

(assert (=> d!1565504 (= (head!10418 lt!1996664) (h!62445 lt!1996664))))

(assert (=> b!4873216 d!1565504))

(assert (=> d!1565002 d!1565084))

(assert (=> d!1565002 d!1565354))

(assert (=> d!1565002 d!1565358))

(assert (=> d!1565002 d!1565090))

(declare-fun bs!1174903 () Bool)

(declare-fun d!1565506 () Bool)

(assert (= bs!1174903 (and d!1565506 d!1565108)))

(declare-fun lambda!243589 () Int)

(assert (=> bs!1174903 (= (= (toValue!10921 (transformation!8046 (h!62447 (t!364325 rules!1164)))) (toValue!10921 (transformation!8046 (h!62447 rules!1164)))) (= lambda!243589 lambda!243567))))

(declare-fun bs!1174904 () Bool)

(assert (= bs!1174904 (and d!1565506 d!1565470)))

(assert (=> bs!1174904 (= (= (toValue!10921 (transformation!8046 (h!62447 (t!364325 rules!1164)))) (toValue!10921 (transformation!8046 (h!62447 rules!1164)))) (= lambda!243589 lambda!243588))))

(assert (=> d!1565506 true))

(assert (=> d!1565506 (< (dynLambda!22493 order!25251 (toValue!10921 (transformation!8046 (h!62447 (t!364325 rules!1164))))) (dynLambda!22494 order!25253 lambda!243589))))

(assert (=> d!1565506 (= (equivClasses!3429 (toChars!10780 (transformation!8046 (h!62447 (t!364325 rules!1164)))) (toValue!10921 (transformation!8046 (h!62447 (t!364325 rules!1164))))) (Forall2!1259 lambda!243589))))

(declare-fun bs!1174905 () Bool)

(assert (= bs!1174905 d!1565506))

(declare-fun m!5875374 () Bool)

(assert (=> bs!1174905 m!5875374))

(assert (=> b!4873096 d!1565506))

(declare-fun d!1565508 () Bool)

(declare-fun lt!1997216 () Int)

(assert (=> d!1565508 (>= lt!1997216 0)))

(declare-fun e!3046698 () Int)

(assert (=> d!1565508 (= lt!1997216 e!3046698)))

(declare-fun c!828972 () Bool)

(assert (=> d!1565508 (= c!828972 ((_ is Nil!55997) (list!17529 (c!828795 (_2!33235 (v!49726 lt!1996614))))))))

(assert (=> d!1565508 (= (size!36925 (list!17529 (c!828795 (_2!33235 (v!49726 lt!1996614))))) lt!1997216)))

(declare-fun b!4874071 () Bool)

(assert (=> b!4874071 (= e!3046698 0)))

(declare-fun b!4874072 () Bool)

(assert (=> b!4874072 (= e!3046698 (+ 1 (size!36925 (t!364323 (list!17529 (c!828795 (_2!33235 (v!49726 lt!1996614))))))))))

(assert (= (and d!1565508 c!828972) b!4874071))

(assert (= (and d!1565508 (not c!828972)) b!4874072))

(declare-fun m!5875376 () Bool)

(assert (=> b!4874072 m!5875376))

(assert (=> d!1565098 d!1565508))

(assert (=> d!1565098 d!1565430))

(assert (=> b!4873223 d!1565416))

(declare-fun d!1565510 () Bool)

(assert (=> d!1565510 (= (isEmpty!29985 (maxPrefixZipper!567 thiss!11460 rules!1164 (list!17526 input!585))) (not ((_ is Some!13798) (maxPrefixZipper!567 thiss!11460 rules!1164 (list!17526 input!585)))))))

(assert (=> d!1565088 d!1565510))

(declare-fun lt!1997232 () Option!13799)

(declare-fun d!1565512 () Bool)

(assert (=> d!1565512 (= lt!1997232 (maxPrefixOneRule!3495 thiss!11460 (h!62447 rules!1164) (list!17526 input!585)))))

(declare-fun e!3046704 () Option!13799)

(assert (=> d!1565512 (= lt!1997232 e!3046704)))

(declare-fun c!828975 () Bool)

(declare-fun lt!1997234 () tuple2!59876)

(assert (=> d!1565512 (= c!828975 (isEmpty!29986 (_1!33241 lt!1997234)))))

(declare-fun findLongestMatchWithZipper!74 (Regex!13121 List!56121) tuple2!59876)

(assert (=> d!1565512 (= lt!1997234 (findLongestMatchWithZipper!74 (regex!8046 (h!62447 rules!1164)) (list!17526 input!585)))))

(assert (=> d!1565512 (ruleValid!3634 thiss!11460 (h!62447 rules!1164))))

(assert (=> d!1565512 (= (maxPrefixOneRuleZipper!229 thiss!11460 (h!62447 rules!1164) (list!17526 input!585)) lt!1997232)))

(declare-fun b!4874079 () Bool)

(assert (=> b!4874079 (= e!3046704 None!13798)))

(declare-fun b!4874080 () Bool)

(assert (=> b!4874080 (= e!3046704 (Some!13798 (tuple2!59869 (Token!14677 (apply!13506 (transformation!8046 (h!62447 rules!1164)) (seqFromList!5902 (_1!33241 lt!1997234))) (h!62447 rules!1164) (size!36925 (_1!33241 lt!1997234)) (_1!33241 lt!1997234)) (_2!33241 lt!1997234))))))

(declare-fun lt!1997229 () Unit!145990)

(assert (=> b!4874080 (= lt!1997229 (longestMatchIsAcceptedByMatchOrIsEmpty!1688 (regex!8046 (h!62447 rules!1164)) (list!17526 input!585)))))

(declare-fun res!2080655 () Bool)

(assert (=> b!4874080 (= res!2080655 (isEmpty!29986 (_1!33241 (findLongestMatchInner!1725 (regex!8046 (h!62447 rules!1164)) Nil!55997 (size!36925 Nil!55997) (list!17526 input!585) (list!17526 input!585) (size!36925 (list!17526 input!585))))))))

(declare-fun e!3046703 () Bool)

(assert (=> b!4874080 (=> res!2080655 e!3046703)))

(assert (=> b!4874080 e!3046703))

(declare-fun lt!1997231 () Unit!145990)

(assert (=> b!4874080 (= lt!1997231 lt!1997229)))

(declare-fun lt!1997233 () Unit!145990)

(assert (=> b!4874080 (= lt!1997233 (lemmaInv!1208 (transformation!8046 (h!62447 rules!1164))))))

(declare-fun lt!1997230 () Unit!145990)

(assert (=> b!4874080 (= lt!1997230 (lemmaSemiInverse!2556 (transformation!8046 (h!62447 rules!1164)) (seqFromList!5902 (_1!33241 lt!1997234))))))

(declare-fun b!4874081 () Bool)

(assert (=> b!4874081 (= e!3046703 (matchR!6496 (regex!8046 (h!62447 rules!1164)) (_1!33241 (findLongestMatchInner!1725 (regex!8046 (h!62447 rules!1164)) Nil!55997 (size!36925 Nil!55997) (list!17526 input!585) (list!17526 input!585) (size!36925 (list!17526 input!585))))))))

(assert (= (and d!1565512 c!828975) b!4874079))

(assert (= (and d!1565512 (not c!828975)) b!4874080))

(assert (= (and b!4874080 (not res!2080655)) b!4874081))

(assert (=> d!1565512 m!5873856))

(assert (=> d!1565512 m!5874222))

(declare-fun m!5875378 () Bool)

(assert (=> d!1565512 m!5875378))

(assert (=> d!1565512 m!5873856))

(declare-fun m!5875380 () Bool)

(assert (=> d!1565512 m!5875380))

(assert (=> d!1565512 m!5874244))

(declare-fun m!5875382 () Bool)

(assert (=> b!4874080 m!5875382))

(declare-fun m!5875384 () Bool)

(assert (=> b!4874080 m!5875384))

(assert (=> b!4874080 m!5874316))

(assert (=> b!4874080 m!5873856))

(assert (=> b!4874080 m!5873856))

(assert (=> b!4874080 m!5873858))

(assert (=> b!4874080 m!5875138))

(assert (=> b!4874080 m!5875160))

(assert (=> b!4874080 m!5874326))

(assert (=> b!4874080 m!5874316))

(assert (=> b!4874080 m!5875382))

(assert (=> b!4874080 m!5873856))

(assert (=> b!4874080 m!5875154))

(declare-fun m!5875386 () Bool)

(assert (=> b!4874080 m!5875386))

(assert (=> b!4874080 m!5873856))

(assert (=> b!4874080 m!5873858))

(assert (=> b!4874080 m!5875382))

(declare-fun m!5875388 () Bool)

(assert (=> b!4874080 m!5875388))

(assert (=> b!4874081 m!5874316))

(assert (=> b!4874081 m!5873856))

(assert (=> b!4874081 m!5873858))

(assert (=> b!4874081 m!5874316))

(assert (=> b!4874081 m!5873856))

(assert (=> b!4874081 m!5873856))

(assert (=> b!4874081 m!5873858))

(assert (=> b!4874081 m!5875138))

(assert (=> b!4874081 m!5875140))

(assert (=> bm!338306 d!1565512))

(declare-fun d!1565514 () Bool)

(declare-fun lt!1997237 () Bool)

(declare-fun content!9992 (List!56123) (InoxSet Rule!15892))

(assert (=> d!1565514 (= lt!1997237 (select (content!9992 rules!1164) (rule!11190 (_1!33237 (get!19243 lt!1996788)))))))

(declare-fun e!3046709 () Bool)

(assert (=> d!1565514 (= lt!1997237 e!3046709)))

(declare-fun res!2080661 () Bool)

(assert (=> d!1565514 (=> (not res!2080661) (not e!3046709))))

(assert (=> d!1565514 (= res!2080661 ((_ is Cons!55999) rules!1164))))

(assert (=> d!1565514 (= (contains!19403 rules!1164 (rule!11190 (_1!33237 (get!19243 lt!1996788)))) lt!1997237)))

(declare-fun b!4874086 () Bool)

(declare-fun e!3046710 () Bool)

(assert (=> b!4874086 (= e!3046709 e!3046710)))

(declare-fun res!2080660 () Bool)

(assert (=> b!4874086 (=> res!2080660 e!3046710)))

(assert (=> b!4874086 (= res!2080660 (= (h!62447 rules!1164) (rule!11190 (_1!33237 (get!19243 lt!1996788)))))))

(declare-fun b!4874087 () Bool)

(assert (=> b!4874087 (= e!3046710 (contains!19403 (t!364325 rules!1164) (rule!11190 (_1!33237 (get!19243 lt!1996788)))))))

(assert (= (and d!1565514 res!2080661) b!4874086))

(assert (= (and b!4874086 (not res!2080660)) b!4874087))

(declare-fun m!5875390 () Bool)

(assert (=> d!1565514 m!5875390))

(declare-fun m!5875392 () Bool)

(assert (=> d!1565514 m!5875392))

(declare-fun m!5875394 () Bool)

(assert (=> b!4874087 m!5875394))

(assert (=> b!4873205 d!1565514))

(assert (=> b!4873205 d!1565274))

(assert (=> b!4873281 d!1565450))

(declare-fun d!1565516 () Bool)

(assert (=> d!1565516 (= (list!17526 (_2!33235 (get!19242 lt!1996832))) (list!17529 (c!828795 (_2!33235 (get!19242 lt!1996832)))))))

(declare-fun bs!1174906 () Bool)

(assert (= bs!1174906 d!1565516))

(declare-fun m!5875396 () Bool)

(assert (=> bs!1174906 m!5875396))

(assert (=> b!4873281 d!1565516))

(assert (=> b!4873281 d!1565360))

(assert (=> b!4873281 d!1565452))

(assert (=> b!4873281 d!1565004))

(assert (=> b!4873203 d!1565288))

(assert (=> b!4873203 d!1565290))

(assert (=> b!4873203 d!1565274))

(declare-fun d!1565518 () Bool)

(declare-fun lt!1997238 () Int)

(assert (=> d!1565518 (>= lt!1997238 0)))

(declare-fun e!3046711 () Int)

(assert (=> d!1565518 (= lt!1997238 e!3046711)))

(declare-fun c!828976 () Bool)

(assert (=> d!1565518 (= c!828976 ((_ is Nil!55997) (list!17529 (c!828795 input!585))))))

(assert (=> d!1565518 (= (size!36925 (list!17529 (c!828795 input!585))) lt!1997238)))

(declare-fun b!4874088 () Bool)

(assert (=> b!4874088 (= e!3046711 0)))

(declare-fun b!4874089 () Bool)

(assert (=> b!4874089 (= e!3046711 (+ 1 (size!36925 (t!364323 (list!17529 (c!828795 input!585))))))))

(assert (= (and d!1565518 c!828976) b!4874088))

(assert (= (and d!1565518 (not c!828976)) b!4874089))

(declare-fun m!5875398 () Bool)

(assert (=> b!4874089 m!5875398))

(assert (=> d!1565008 d!1565518))

(assert (=> d!1565008 d!1565484))

(declare-fun d!1565520 () Bool)

(declare-fun c!828977 () Bool)

(assert (=> d!1565520 (= c!828977 ((_ is Node!14598) (left!40673 (left!40673 (c!828795 input!585)))))))

(declare-fun e!3046712 () Bool)

(assert (=> d!1565520 (= (inv!71928 (left!40673 (left!40673 (c!828795 input!585)))) e!3046712)))

(declare-fun b!4874090 () Bool)

(assert (=> b!4874090 (= e!3046712 (inv!71933 (left!40673 (left!40673 (c!828795 input!585)))))))

(declare-fun b!4874091 () Bool)

(declare-fun e!3046713 () Bool)

(assert (=> b!4874091 (= e!3046712 e!3046713)))

(declare-fun res!2080662 () Bool)

(assert (=> b!4874091 (= res!2080662 (not ((_ is Leaf!24332) (left!40673 (left!40673 (c!828795 input!585))))))))

(assert (=> b!4874091 (=> res!2080662 e!3046713)))

(declare-fun b!4874092 () Bool)

(assert (=> b!4874092 (= e!3046713 (inv!71934 (left!40673 (left!40673 (c!828795 input!585)))))))

(assert (= (and d!1565520 c!828977) b!4874090))

(assert (= (and d!1565520 (not c!828977)) b!4874091))

(assert (= (and b!4874091 (not res!2080662)) b!4874092))

(declare-fun m!5875400 () Bool)

(assert (=> b!4874090 m!5875400))

(declare-fun m!5875402 () Bool)

(assert (=> b!4874092 m!5875402))

(assert (=> b!4873322 d!1565520))

(declare-fun d!1565522 () Bool)

(declare-fun c!828978 () Bool)

(assert (=> d!1565522 (= c!828978 ((_ is Node!14598) (right!41003 (left!40673 (c!828795 input!585)))))))

(declare-fun e!3046714 () Bool)

(assert (=> d!1565522 (= (inv!71928 (right!41003 (left!40673 (c!828795 input!585)))) e!3046714)))

(declare-fun b!4874093 () Bool)

(assert (=> b!4874093 (= e!3046714 (inv!71933 (right!41003 (left!40673 (c!828795 input!585)))))))

(declare-fun b!4874094 () Bool)

(declare-fun e!3046715 () Bool)

(assert (=> b!4874094 (= e!3046714 e!3046715)))

(declare-fun res!2080663 () Bool)

(assert (=> b!4874094 (= res!2080663 (not ((_ is Leaf!24332) (right!41003 (left!40673 (c!828795 input!585))))))))

(assert (=> b!4874094 (=> res!2080663 e!3046715)))

(declare-fun b!4874095 () Bool)

(assert (=> b!4874095 (= e!3046715 (inv!71934 (right!41003 (left!40673 (c!828795 input!585)))))))

(assert (= (and d!1565522 c!828978) b!4874093))

(assert (= (and d!1565522 (not c!828978)) b!4874094))

(assert (= (and b!4874094 (not res!2080663)) b!4874095))

(declare-fun m!5875404 () Bool)

(assert (=> b!4874093 m!5875404))

(declare-fun m!5875406 () Bool)

(assert (=> b!4874095 m!5875406))

(assert (=> b!4873322 d!1565522))

(declare-fun b!4874099 () Bool)

(declare-fun e!3046716 () Bool)

(declare-fun tp!1371424 () Bool)

(declare-fun tp!1371426 () Bool)

(assert (=> b!4874099 (= e!3046716 (and tp!1371424 tp!1371426))))

(assert (=> b!4873297 (= tp!1371204 e!3046716)))

(declare-fun b!4874098 () Bool)

(declare-fun tp!1371428 () Bool)

(assert (=> b!4874098 (= e!3046716 tp!1371428)))

(declare-fun b!4874096 () Bool)

(assert (=> b!4874096 (= e!3046716 tp_is_empty!35671)))

(declare-fun b!4874097 () Bool)

(declare-fun tp!1371425 () Bool)

(declare-fun tp!1371427 () Bool)

(assert (=> b!4874097 (= e!3046716 (and tp!1371425 tp!1371427))))

(assert (= (and b!4873297 ((_ is ElementMatch!13121) (regOne!26755 (regOne!26755 (regex!8046 (h!62447 rules!1164)))))) b!4874096))

(assert (= (and b!4873297 ((_ is Concat!21478) (regOne!26755 (regOne!26755 (regex!8046 (h!62447 rules!1164)))))) b!4874097))

(assert (= (and b!4873297 ((_ is Star!13121) (regOne!26755 (regOne!26755 (regex!8046 (h!62447 rules!1164)))))) b!4874098))

(assert (= (and b!4873297 ((_ is Union!13121) (regOne!26755 (regOne!26755 (regex!8046 (h!62447 rules!1164)))))) b!4874099))

(declare-fun b!4874103 () Bool)

(declare-fun e!3046717 () Bool)

(declare-fun tp!1371429 () Bool)

(declare-fun tp!1371431 () Bool)

(assert (=> b!4874103 (= e!3046717 (and tp!1371429 tp!1371431))))

(assert (=> b!4873297 (= tp!1371206 e!3046717)))

(declare-fun b!4874102 () Bool)

(declare-fun tp!1371433 () Bool)

(assert (=> b!4874102 (= e!3046717 tp!1371433)))

(declare-fun b!4874100 () Bool)

(assert (=> b!4874100 (= e!3046717 tp_is_empty!35671)))

(declare-fun b!4874101 () Bool)

(declare-fun tp!1371430 () Bool)

(declare-fun tp!1371432 () Bool)

(assert (=> b!4874101 (= e!3046717 (and tp!1371430 tp!1371432))))

(assert (= (and b!4873297 ((_ is ElementMatch!13121) (regTwo!26755 (regOne!26755 (regex!8046 (h!62447 rules!1164)))))) b!4874100))

(assert (= (and b!4873297 ((_ is Concat!21478) (regTwo!26755 (regOne!26755 (regex!8046 (h!62447 rules!1164)))))) b!4874101))

(assert (= (and b!4873297 ((_ is Star!13121) (regTwo!26755 (regOne!26755 (regex!8046 (h!62447 rules!1164)))))) b!4874102))

(assert (= (and b!4873297 ((_ is Union!13121) (regTwo!26755 (regOne!26755 (regex!8046 (h!62447 rules!1164)))))) b!4874103))

(declare-fun b!4874107 () Bool)

(declare-fun e!3046718 () Bool)

(declare-fun tp!1371434 () Bool)

(declare-fun tp!1371436 () Bool)

(assert (=> b!4874107 (= e!3046718 (and tp!1371434 tp!1371436))))

(assert (=> b!4873313 (= tp!1371221 e!3046718)))

(declare-fun b!4874106 () Bool)

(declare-fun tp!1371438 () Bool)

(assert (=> b!4874106 (= e!3046718 tp!1371438)))

(declare-fun b!4874104 () Bool)

(assert (=> b!4874104 (= e!3046718 tp_is_empty!35671)))

(declare-fun b!4874105 () Bool)

(declare-fun tp!1371435 () Bool)

(declare-fun tp!1371437 () Bool)

(assert (=> b!4874105 (= e!3046718 (and tp!1371435 tp!1371437))))

(assert (= (and b!4873313 ((_ is ElementMatch!13121) (regOne!26755 (reg!13450 (regex!8046 (h!62447 rules!1164)))))) b!4874104))

(assert (= (and b!4873313 ((_ is Concat!21478) (regOne!26755 (reg!13450 (regex!8046 (h!62447 rules!1164)))))) b!4874105))

(assert (= (and b!4873313 ((_ is Star!13121) (regOne!26755 (reg!13450 (regex!8046 (h!62447 rules!1164)))))) b!4874106))

(assert (= (and b!4873313 ((_ is Union!13121) (regOne!26755 (reg!13450 (regex!8046 (h!62447 rules!1164)))))) b!4874107))

(declare-fun b!4874111 () Bool)

(declare-fun e!3046719 () Bool)

(declare-fun tp!1371439 () Bool)

(declare-fun tp!1371441 () Bool)

(assert (=> b!4874111 (= e!3046719 (and tp!1371439 tp!1371441))))

(assert (=> b!4873313 (= tp!1371223 e!3046719)))

(declare-fun b!4874110 () Bool)

(declare-fun tp!1371443 () Bool)

(assert (=> b!4874110 (= e!3046719 tp!1371443)))

(declare-fun b!4874108 () Bool)

(assert (=> b!4874108 (= e!3046719 tp_is_empty!35671)))

(declare-fun b!4874109 () Bool)

(declare-fun tp!1371440 () Bool)

(declare-fun tp!1371442 () Bool)

(assert (=> b!4874109 (= e!3046719 (and tp!1371440 tp!1371442))))

(assert (= (and b!4873313 ((_ is ElementMatch!13121) (regTwo!26755 (reg!13450 (regex!8046 (h!62447 rules!1164)))))) b!4874108))

(assert (= (and b!4873313 ((_ is Concat!21478) (regTwo!26755 (reg!13450 (regex!8046 (h!62447 rules!1164)))))) b!4874109))

(assert (= (and b!4873313 ((_ is Star!13121) (regTwo!26755 (reg!13450 (regex!8046 (h!62447 rules!1164)))))) b!4874110))

(assert (= (and b!4873313 ((_ is Union!13121) (regTwo!26755 (reg!13450 (regex!8046 (h!62447 rules!1164)))))) b!4874111))

(declare-fun b!4874115 () Bool)

(declare-fun e!3046720 () Bool)

(declare-fun tp!1371444 () Bool)

(declare-fun tp!1371446 () Bool)

(assert (=> b!4874115 (= e!3046720 (and tp!1371444 tp!1371446))))

(assert (=> b!4873295 (= tp!1371205 e!3046720)))

(declare-fun b!4874114 () Bool)

(declare-fun tp!1371448 () Bool)

(assert (=> b!4874114 (= e!3046720 tp!1371448)))

(declare-fun b!4874112 () Bool)

(assert (=> b!4874112 (= e!3046720 tp_is_empty!35671)))

(declare-fun b!4874113 () Bool)

(declare-fun tp!1371445 () Bool)

(declare-fun tp!1371447 () Bool)

(assert (=> b!4874113 (= e!3046720 (and tp!1371445 tp!1371447))))

(assert (= (and b!4873295 ((_ is ElementMatch!13121) (regOne!26754 (regOne!26755 (regex!8046 (h!62447 rules!1164)))))) b!4874112))

(assert (= (and b!4873295 ((_ is Concat!21478) (regOne!26754 (regOne!26755 (regex!8046 (h!62447 rules!1164)))))) b!4874113))

(assert (= (and b!4873295 ((_ is Star!13121) (regOne!26754 (regOne!26755 (regex!8046 (h!62447 rules!1164)))))) b!4874114))

(assert (= (and b!4873295 ((_ is Union!13121) (regOne!26754 (regOne!26755 (regex!8046 (h!62447 rules!1164)))))) b!4874115))

(declare-fun b!4874119 () Bool)

(declare-fun e!3046721 () Bool)

(declare-fun tp!1371449 () Bool)

(declare-fun tp!1371451 () Bool)

(assert (=> b!4874119 (= e!3046721 (and tp!1371449 tp!1371451))))

(assert (=> b!4873295 (= tp!1371207 e!3046721)))

(declare-fun b!4874118 () Bool)

(declare-fun tp!1371453 () Bool)

(assert (=> b!4874118 (= e!3046721 tp!1371453)))

(declare-fun b!4874116 () Bool)

(assert (=> b!4874116 (= e!3046721 tp_is_empty!35671)))

(declare-fun b!4874117 () Bool)

(declare-fun tp!1371450 () Bool)

(declare-fun tp!1371452 () Bool)

(assert (=> b!4874117 (= e!3046721 (and tp!1371450 tp!1371452))))

(assert (= (and b!4873295 ((_ is ElementMatch!13121) (regTwo!26754 (regOne!26755 (regex!8046 (h!62447 rules!1164)))))) b!4874116))

(assert (= (and b!4873295 ((_ is Concat!21478) (regTwo!26754 (regOne!26755 (regex!8046 (h!62447 rules!1164)))))) b!4874117))

(assert (= (and b!4873295 ((_ is Star!13121) (regTwo!26754 (regOne!26755 (regex!8046 (h!62447 rules!1164)))))) b!4874118))

(assert (= (and b!4873295 ((_ is Union!13121) (regTwo!26754 (regOne!26755 (regex!8046 (h!62447 rules!1164)))))) b!4874119))

(declare-fun b!4874123 () Bool)

(declare-fun e!3046722 () Bool)

(declare-fun tp!1371454 () Bool)

(declare-fun tp!1371456 () Bool)

(assert (=> b!4874123 (= e!3046722 (and tp!1371454 tp!1371456))))

(assert (=> b!4873296 (= tp!1371208 e!3046722)))

(declare-fun b!4874122 () Bool)

(declare-fun tp!1371458 () Bool)

(assert (=> b!4874122 (= e!3046722 tp!1371458)))

(declare-fun b!4874120 () Bool)

(assert (=> b!4874120 (= e!3046722 tp_is_empty!35671)))

(declare-fun b!4874121 () Bool)

(declare-fun tp!1371455 () Bool)

(declare-fun tp!1371457 () Bool)

(assert (=> b!4874121 (= e!3046722 (and tp!1371455 tp!1371457))))

(assert (= (and b!4873296 ((_ is ElementMatch!13121) (reg!13450 (regOne!26755 (regex!8046 (h!62447 rules!1164)))))) b!4874120))

(assert (= (and b!4873296 ((_ is Concat!21478) (reg!13450 (regOne!26755 (regex!8046 (h!62447 rules!1164)))))) b!4874121))

(assert (= (and b!4873296 ((_ is Star!13121) (reg!13450 (regOne!26755 (regex!8046 (h!62447 rules!1164)))))) b!4874122))

(assert (= (and b!4873296 ((_ is Union!13121) (reg!13450 (regOne!26755 (regex!8046 (h!62447 rules!1164)))))) b!4874123))

(declare-fun b!4874127 () Bool)

(declare-fun e!3046723 () Bool)

(declare-fun tp!1371459 () Bool)

(declare-fun tp!1371461 () Bool)

(assert (=> b!4874127 (= e!3046723 (and tp!1371459 tp!1371461))))

(assert (=> b!4873321 (= tp!1371231 e!3046723)))

(declare-fun b!4874126 () Bool)

(declare-fun tp!1371463 () Bool)

(assert (=> b!4874126 (= e!3046723 tp!1371463)))

(declare-fun b!4874124 () Bool)

(assert (=> b!4874124 (= e!3046723 tp_is_empty!35671)))

(declare-fun b!4874125 () Bool)

(declare-fun tp!1371460 () Bool)

(declare-fun tp!1371462 () Bool)

(assert (=> b!4874125 (= e!3046723 (and tp!1371460 tp!1371462))))

(assert (= (and b!4873321 ((_ is ElementMatch!13121) (regOne!26755 (regTwo!26754 (regex!8046 (h!62447 rules!1164)))))) b!4874124))

(assert (= (and b!4873321 ((_ is Concat!21478) (regOne!26755 (regTwo!26754 (regex!8046 (h!62447 rules!1164)))))) b!4874125))

(assert (= (and b!4873321 ((_ is Star!13121) (regOne!26755 (regTwo!26754 (regex!8046 (h!62447 rules!1164)))))) b!4874126))

(assert (= (and b!4873321 ((_ is Union!13121) (regOne!26755 (regTwo!26754 (regex!8046 (h!62447 rules!1164)))))) b!4874127))

(declare-fun b!4874131 () Bool)

(declare-fun e!3046724 () Bool)

(declare-fun tp!1371464 () Bool)

(declare-fun tp!1371466 () Bool)

(assert (=> b!4874131 (= e!3046724 (and tp!1371464 tp!1371466))))

(assert (=> b!4873321 (= tp!1371233 e!3046724)))

(declare-fun b!4874130 () Bool)

(declare-fun tp!1371468 () Bool)

(assert (=> b!4874130 (= e!3046724 tp!1371468)))

(declare-fun b!4874128 () Bool)

(assert (=> b!4874128 (= e!3046724 tp_is_empty!35671)))

(declare-fun b!4874129 () Bool)

(declare-fun tp!1371465 () Bool)

(declare-fun tp!1371467 () Bool)

(assert (=> b!4874129 (= e!3046724 (and tp!1371465 tp!1371467))))

(assert (= (and b!4873321 ((_ is ElementMatch!13121) (regTwo!26755 (regTwo!26754 (regex!8046 (h!62447 rules!1164)))))) b!4874128))

(assert (= (and b!4873321 ((_ is Concat!21478) (regTwo!26755 (regTwo!26754 (regex!8046 (h!62447 rules!1164)))))) b!4874129))

(assert (= (and b!4873321 ((_ is Star!13121) (regTwo!26755 (regTwo!26754 (regex!8046 (h!62447 rules!1164)))))) b!4874130))

(assert (= (and b!4873321 ((_ is Union!13121) (regTwo!26755 (regTwo!26754 (regex!8046 (h!62447 rules!1164)))))) b!4874131))

(declare-fun b!4874135 () Bool)

(declare-fun e!3046725 () Bool)

(declare-fun tp!1371469 () Bool)

(declare-fun tp!1371471 () Bool)

(assert (=> b!4874135 (= e!3046725 (and tp!1371469 tp!1371471))))

(assert (=> b!4873312 (= tp!1371225 e!3046725)))

(declare-fun b!4874134 () Bool)

(declare-fun tp!1371473 () Bool)

(assert (=> b!4874134 (= e!3046725 tp!1371473)))

(declare-fun b!4874132 () Bool)

(assert (=> b!4874132 (= e!3046725 tp_is_empty!35671)))

(declare-fun b!4874133 () Bool)

(declare-fun tp!1371470 () Bool)

(declare-fun tp!1371472 () Bool)

(assert (=> b!4874133 (= e!3046725 (and tp!1371470 tp!1371472))))

(assert (= (and b!4873312 ((_ is ElementMatch!13121) (reg!13450 (reg!13450 (regex!8046 (h!62447 rules!1164)))))) b!4874132))

(assert (= (and b!4873312 ((_ is Concat!21478) (reg!13450 (reg!13450 (regex!8046 (h!62447 rules!1164)))))) b!4874133))

(assert (= (and b!4873312 ((_ is Star!13121) (reg!13450 (reg!13450 (regex!8046 (h!62447 rules!1164)))))) b!4874134))

(assert (= (and b!4873312 ((_ is Union!13121) (reg!13450 (reg!13450 (regex!8046 (h!62447 rules!1164)))))) b!4874135))

(declare-fun b!4874136 () Bool)

(declare-fun e!3046726 () Bool)

(declare-fun tp!1371474 () Bool)

(assert (=> b!4874136 (= e!3046726 (and tp_is_empty!35671 tp!1371474))))

(assert (=> b!4873327 (= tp!1371241 e!3046726)))

(assert (= (and b!4873327 ((_ is Cons!55997) (innerList!14686 (xs!17906 (right!41003 (c!828795 input!585)))))) b!4874136))

(declare-fun tp!1371476 () Bool)

(declare-fun e!3046727 () Bool)

(declare-fun tp!1371475 () Bool)

(declare-fun b!4874137 () Bool)

(assert (=> b!4874137 (= e!3046727 (and (inv!71928 (left!40673 (left!40673 (right!41003 (c!828795 input!585))))) tp!1371476 (inv!71928 (right!41003 (left!40673 (right!41003 (c!828795 input!585))))) tp!1371475))))

(declare-fun b!4874139 () Bool)

(declare-fun e!3046728 () Bool)

(declare-fun tp!1371477 () Bool)

(assert (=> b!4874139 (= e!3046728 tp!1371477)))

(declare-fun b!4874138 () Bool)

(assert (=> b!4874138 (= e!3046727 (and (inv!71935 (xs!17906 (left!40673 (right!41003 (c!828795 input!585))))) e!3046728))))

(assert (=> b!4873325 (= tp!1371240 (and (inv!71928 (left!40673 (right!41003 (c!828795 input!585)))) e!3046727))))

(assert (= (and b!4873325 ((_ is Node!14598) (left!40673 (right!41003 (c!828795 input!585))))) b!4874137))

(assert (= b!4874138 b!4874139))

(assert (= (and b!4873325 ((_ is Leaf!24332) (left!40673 (right!41003 (c!828795 input!585))))) b!4874138))

(declare-fun m!5875408 () Bool)

(assert (=> b!4874137 m!5875408))

(declare-fun m!5875410 () Bool)

(assert (=> b!4874137 m!5875410))

(declare-fun m!5875412 () Bool)

(assert (=> b!4874138 m!5875412))

(assert (=> b!4873325 m!5874354))

(declare-fun e!3046729 () Bool)

(declare-fun tp!1371478 () Bool)

(declare-fun b!4874140 () Bool)

(declare-fun tp!1371479 () Bool)

(assert (=> b!4874140 (= e!3046729 (and (inv!71928 (left!40673 (right!41003 (right!41003 (c!828795 input!585))))) tp!1371479 (inv!71928 (right!41003 (right!41003 (right!41003 (c!828795 input!585))))) tp!1371478))))

(declare-fun b!4874142 () Bool)

(declare-fun e!3046730 () Bool)

(declare-fun tp!1371480 () Bool)

(assert (=> b!4874142 (= e!3046730 tp!1371480)))

(declare-fun b!4874141 () Bool)

(assert (=> b!4874141 (= e!3046729 (and (inv!71935 (xs!17906 (right!41003 (right!41003 (c!828795 input!585))))) e!3046730))))

(assert (=> b!4873325 (= tp!1371239 (and (inv!71928 (right!41003 (right!41003 (c!828795 input!585)))) e!3046729))))

(assert (= (and b!4873325 ((_ is Node!14598) (right!41003 (right!41003 (c!828795 input!585))))) b!4874140))

(assert (= b!4874141 b!4874142))

(assert (= (and b!4873325 ((_ is Leaf!24332) (right!41003 (right!41003 (c!828795 input!585))))) b!4874141))

(declare-fun m!5875414 () Bool)

(assert (=> b!4874140 m!5875414))

(declare-fun m!5875416 () Bool)

(assert (=> b!4874140 m!5875416))

(declare-fun m!5875418 () Bool)

(assert (=> b!4874141 m!5875418))

(assert (=> b!4873325 m!5874356))

(declare-fun b!4874146 () Bool)

(declare-fun e!3046731 () Bool)

(declare-fun tp!1371481 () Bool)

(declare-fun tp!1371483 () Bool)

(assert (=> b!4874146 (= e!3046731 (and tp!1371481 tp!1371483))))

(assert (=> b!4873320 (= tp!1371235 e!3046731)))

(declare-fun b!4874145 () Bool)

(declare-fun tp!1371485 () Bool)

(assert (=> b!4874145 (= e!3046731 tp!1371485)))

(declare-fun b!4874143 () Bool)

(assert (=> b!4874143 (= e!3046731 tp_is_empty!35671)))

(declare-fun b!4874144 () Bool)

(declare-fun tp!1371482 () Bool)

(declare-fun tp!1371484 () Bool)

(assert (=> b!4874144 (= e!3046731 (and tp!1371482 tp!1371484))))

(assert (= (and b!4873320 ((_ is ElementMatch!13121) (reg!13450 (regTwo!26754 (regex!8046 (h!62447 rules!1164)))))) b!4874143))

(assert (= (and b!4873320 ((_ is Concat!21478) (reg!13450 (regTwo!26754 (regex!8046 (h!62447 rules!1164)))))) b!4874144))

(assert (= (and b!4873320 ((_ is Star!13121) (reg!13450 (regTwo!26754 (regex!8046 (h!62447 rules!1164)))))) b!4874145))

(assert (= (and b!4873320 ((_ is Union!13121) (reg!13450 (regTwo!26754 (regex!8046 (h!62447 rules!1164)))))) b!4874146))

(declare-fun b!4874150 () Bool)

(declare-fun e!3046732 () Bool)

(declare-fun tp!1371486 () Bool)

(declare-fun tp!1371488 () Bool)

(assert (=> b!4874150 (= e!3046732 (and tp!1371486 tp!1371488))))

(assert (=> b!4873311 (= tp!1371222 e!3046732)))

(declare-fun b!4874149 () Bool)

(declare-fun tp!1371490 () Bool)

(assert (=> b!4874149 (= e!3046732 tp!1371490)))

(declare-fun b!4874147 () Bool)

(assert (=> b!4874147 (= e!3046732 tp_is_empty!35671)))

(declare-fun b!4874148 () Bool)

(declare-fun tp!1371487 () Bool)

(declare-fun tp!1371489 () Bool)

(assert (=> b!4874148 (= e!3046732 (and tp!1371487 tp!1371489))))

(assert (= (and b!4873311 ((_ is ElementMatch!13121) (regOne!26754 (reg!13450 (regex!8046 (h!62447 rules!1164)))))) b!4874147))

(assert (= (and b!4873311 ((_ is Concat!21478) (regOne!26754 (reg!13450 (regex!8046 (h!62447 rules!1164)))))) b!4874148))

(assert (= (and b!4873311 ((_ is Star!13121) (regOne!26754 (reg!13450 (regex!8046 (h!62447 rules!1164)))))) b!4874149))

(assert (= (and b!4873311 ((_ is Union!13121) (regOne!26754 (reg!13450 (regex!8046 (h!62447 rules!1164)))))) b!4874150))

(declare-fun b!4874154 () Bool)

(declare-fun e!3046733 () Bool)

(declare-fun tp!1371491 () Bool)

(declare-fun tp!1371493 () Bool)

(assert (=> b!4874154 (= e!3046733 (and tp!1371491 tp!1371493))))

(assert (=> b!4873311 (= tp!1371224 e!3046733)))

(declare-fun b!4874153 () Bool)

(declare-fun tp!1371495 () Bool)

(assert (=> b!4874153 (= e!3046733 tp!1371495)))

(declare-fun b!4874151 () Bool)

(assert (=> b!4874151 (= e!3046733 tp_is_empty!35671)))

(declare-fun b!4874152 () Bool)

(declare-fun tp!1371492 () Bool)

(declare-fun tp!1371494 () Bool)

(assert (=> b!4874152 (= e!3046733 (and tp!1371492 tp!1371494))))

(assert (= (and b!4873311 ((_ is ElementMatch!13121) (regTwo!26754 (reg!13450 (regex!8046 (h!62447 rules!1164)))))) b!4874151))

(assert (= (and b!4873311 ((_ is Concat!21478) (regTwo!26754 (reg!13450 (regex!8046 (h!62447 rules!1164)))))) b!4874152))

(assert (= (and b!4873311 ((_ is Star!13121) (regTwo!26754 (reg!13450 (regex!8046 (h!62447 rules!1164)))))) b!4874153))

(assert (= (and b!4873311 ((_ is Union!13121) (regTwo!26754 (reg!13450 (regex!8046 (h!62447 rules!1164)))))) b!4874154))

(declare-fun b!4874158 () Bool)

(declare-fun e!3046734 () Bool)

(declare-fun tp!1371496 () Bool)

(declare-fun tp!1371498 () Bool)

(assert (=> b!4874158 (= e!3046734 (and tp!1371496 tp!1371498))))

(assert (=> b!4873319 (= tp!1371232 e!3046734)))

(declare-fun b!4874157 () Bool)

(declare-fun tp!1371500 () Bool)

(assert (=> b!4874157 (= e!3046734 tp!1371500)))

(declare-fun b!4874155 () Bool)

(assert (=> b!4874155 (= e!3046734 tp_is_empty!35671)))

(declare-fun b!4874156 () Bool)

(declare-fun tp!1371497 () Bool)

(declare-fun tp!1371499 () Bool)

(assert (=> b!4874156 (= e!3046734 (and tp!1371497 tp!1371499))))

(assert (= (and b!4873319 ((_ is ElementMatch!13121) (regOne!26754 (regTwo!26754 (regex!8046 (h!62447 rules!1164)))))) b!4874155))

(assert (= (and b!4873319 ((_ is Concat!21478) (regOne!26754 (regTwo!26754 (regex!8046 (h!62447 rules!1164)))))) b!4874156))

(assert (= (and b!4873319 ((_ is Star!13121) (regOne!26754 (regTwo!26754 (regex!8046 (h!62447 rules!1164)))))) b!4874157))

(assert (= (and b!4873319 ((_ is Union!13121) (regOne!26754 (regTwo!26754 (regex!8046 (h!62447 rules!1164)))))) b!4874158))

(declare-fun b!4874162 () Bool)

(declare-fun e!3046735 () Bool)

(declare-fun tp!1371501 () Bool)

(declare-fun tp!1371503 () Bool)

(assert (=> b!4874162 (= e!3046735 (and tp!1371501 tp!1371503))))

(assert (=> b!4873319 (= tp!1371234 e!3046735)))

(declare-fun b!4874161 () Bool)

(declare-fun tp!1371505 () Bool)

(assert (=> b!4874161 (= e!3046735 tp!1371505)))

(declare-fun b!4874159 () Bool)

(assert (=> b!4874159 (= e!3046735 tp_is_empty!35671)))

(declare-fun b!4874160 () Bool)

(declare-fun tp!1371502 () Bool)

(declare-fun tp!1371504 () Bool)

(assert (=> b!4874160 (= e!3046735 (and tp!1371502 tp!1371504))))

(assert (= (and b!4873319 ((_ is ElementMatch!13121) (regTwo!26754 (regTwo!26754 (regex!8046 (h!62447 rules!1164)))))) b!4874159))

(assert (= (and b!4873319 ((_ is Concat!21478) (regTwo!26754 (regTwo!26754 (regex!8046 (h!62447 rules!1164)))))) b!4874160))

(assert (= (and b!4873319 ((_ is Star!13121) (regTwo!26754 (regTwo!26754 (regex!8046 (h!62447 rules!1164)))))) b!4874161))

(assert (= (and b!4873319 ((_ is Union!13121) (regTwo!26754 (regTwo!26754 (regex!8046 (h!62447 rules!1164)))))) b!4874162))

(declare-fun b!4874165 () Bool)

(declare-fun b_free!130787 () Bool)

(declare-fun b_next!131577 () Bool)

(assert (=> b!4874165 (= b_free!130787 (not b_next!131577))))

(declare-fun tb!258147 () Bool)

(declare-fun t!364411 () Bool)

(assert (=> (and b!4874165 (= (toValue!10921 (transformation!8046 (h!62447 (t!364325 (t!364325 (t!364325 rules!1164)))))) (toValue!10921 (transformation!8046 (rule!11190 (_1!33237 (get!19243 lt!1996788)))))) t!364411) tb!258147))

(declare-fun result!321354 () Bool)

(assert (= result!321354 result!321302))

(assert (=> d!1565276 t!364411))

(declare-fun t!364413 () Bool)

(declare-fun tb!258149 () Bool)

(assert (=> (and b!4874165 (= (toValue!10921 (transformation!8046 (h!62447 (t!364325 (t!364325 (t!364325 rules!1164)))))) (toValue!10921 (transformation!8046 (h!62447 rules!1164)))) t!364413) tb!258149))

(declare-fun result!321356 () Bool)

(assert (= result!321356 result!321342))

(assert (=> d!1565458 t!364413))

(assert (=> d!1565470 t!364413))

(declare-fun t!364415 () Bool)

(declare-fun tb!258151 () Bool)

(assert (=> (and b!4874165 (= (toValue!10921 (transformation!8046 (h!62447 (t!364325 (t!364325 (t!364325 rules!1164)))))) (toValue!10921 (transformation!8046 (h!62447 rules!1164)))) t!364415) tb!258151))

(declare-fun result!321358 () Bool)

(assert (= result!321358 result!321348))

(assert (=> d!1565470 t!364415))

(declare-fun b_and!343287 () Bool)

(declare-fun tp!1371508 () Bool)

(assert (=> b!4874165 (= tp!1371508 (and (=> t!364411 result!321354) (=> t!364413 result!321356) (=> t!364415 result!321358) b_and!343287))))

(declare-fun b_free!130789 () Bool)

(declare-fun b_next!131579 () Bool)

(assert (=> b!4874165 (= b_free!130789 (not b_next!131579))))

(declare-fun tb!258153 () Bool)

(declare-fun t!364417 () Bool)

(assert (=> (and b!4874165 (= (toChars!10780 (transformation!8046 (h!62447 (t!364325 (t!364325 (t!364325 rules!1164)))))) (toChars!10780 (transformation!8046 (rule!11190 (_1!33237 (get!19243 lt!1996788)))))) t!364417) tb!258153))

(declare-fun result!321360 () Bool)

(assert (= result!321360 result!321310))

(assert (=> d!1565290 t!364417))

(declare-fun tp!1371509 () Bool)

(declare-fun b_and!343289 () Bool)

(assert (=> b!4874165 (= tp!1371509 (and (=> t!364417 result!321360) b_and!343289))))

(declare-fun e!3046737 () Bool)

(assert (=> b!4874165 (= e!3046737 (and tp!1371508 tp!1371509))))

(declare-fun tp!1371506 () Bool)

(declare-fun e!3046739 () Bool)

(declare-fun b!4874164 () Bool)

(assert (=> b!4874164 (= e!3046739 (and tp!1371506 (inv!71923 (tag!8910 (h!62447 (t!364325 (t!364325 (t!364325 rules!1164)))))) (inv!71929 (transformation!8046 (h!62447 (t!364325 (t!364325 (t!364325 rules!1164)))))) e!3046737))))

(declare-fun b!4874163 () Bool)

(declare-fun e!3046738 () Bool)

(declare-fun tp!1371507 () Bool)

(assert (=> b!4874163 (= e!3046738 (and e!3046739 tp!1371507))))

(assert (=> b!4873307 (= tp!1371218 e!3046738)))

(assert (= b!4874164 b!4874165))

(assert (= b!4874163 b!4874164))

(assert (= (and b!4873307 ((_ is Cons!55999) (t!364325 (t!364325 (t!364325 rules!1164))))) b!4874163))

(declare-fun m!5875420 () Bool)

(assert (=> b!4874164 m!5875420))

(declare-fun m!5875422 () Bool)

(assert (=> b!4874164 m!5875422))

(declare-fun b!4874169 () Bool)

(declare-fun e!3046740 () Bool)

(declare-fun tp!1371510 () Bool)

(declare-fun tp!1371512 () Bool)

(assert (=> b!4874169 (= e!3046740 (and tp!1371510 tp!1371512))))

(assert (=> b!4873308 (= tp!1371217 e!3046740)))

(declare-fun b!4874168 () Bool)

(declare-fun tp!1371514 () Bool)

(assert (=> b!4874168 (= e!3046740 tp!1371514)))

(declare-fun b!4874166 () Bool)

(assert (=> b!4874166 (= e!3046740 tp_is_empty!35671)))

(declare-fun b!4874167 () Bool)

(declare-fun tp!1371511 () Bool)

(declare-fun tp!1371513 () Bool)

(assert (=> b!4874167 (= e!3046740 (and tp!1371511 tp!1371513))))

(assert (= (and b!4873308 ((_ is ElementMatch!13121) (regex!8046 (h!62447 (t!364325 (t!364325 rules!1164)))))) b!4874166))

(assert (= (and b!4873308 ((_ is Concat!21478) (regex!8046 (h!62447 (t!364325 (t!364325 rules!1164)))))) b!4874167))

(assert (= (and b!4873308 ((_ is Star!13121) (regex!8046 (h!62447 (t!364325 (t!364325 rules!1164)))))) b!4874168))

(assert (= (and b!4873308 ((_ is Union!13121) (regex!8046 (h!62447 (t!364325 (t!364325 rules!1164)))))) b!4874169))

(declare-fun b!4874173 () Bool)

(declare-fun e!3046741 () Bool)

(declare-fun tp!1371515 () Bool)

(declare-fun tp!1371517 () Bool)

(assert (=> b!4874173 (= e!3046741 (and tp!1371515 tp!1371517))))

(assert (=> b!4873293 (= tp!1371199 e!3046741)))

(declare-fun b!4874172 () Bool)

(declare-fun tp!1371519 () Bool)

(assert (=> b!4874172 (= e!3046741 tp!1371519)))

(declare-fun b!4874170 () Bool)

(assert (=> b!4874170 (= e!3046741 tp_is_empty!35671)))

(declare-fun b!4874171 () Bool)

(declare-fun tp!1371516 () Bool)

(declare-fun tp!1371518 () Bool)

(assert (=> b!4874171 (= e!3046741 (and tp!1371516 tp!1371518))))

(assert (= (and b!4873293 ((_ is ElementMatch!13121) (regOne!26755 (regex!8046 (h!62447 (t!364325 rules!1164)))))) b!4874170))

(assert (= (and b!4873293 ((_ is Concat!21478) (regOne!26755 (regex!8046 (h!62447 (t!364325 rules!1164)))))) b!4874171))

(assert (= (and b!4873293 ((_ is Star!13121) (regOne!26755 (regex!8046 (h!62447 (t!364325 rules!1164)))))) b!4874172))

(assert (= (and b!4873293 ((_ is Union!13121) (regOne!26755 (regex!8046 (h!62447 (t!364325 rules!1164)))))) b!4874173))

(declare-fun b!4874177 () Bool)

(declare-fun e!3046742 () Bool)

(declare-fun tp!1371520 () Bool)

(declare-fun tp!1371522 () Bool)

(assert (=> b!4874177 (= e!3046742 (and tp!1371520 tp!1371522))))

(assert (=> b!4873293 (= tp!1371201 e!3046742)))

(declare-fun b!4874176 () Bool)

(declare-fun tp!1371524 () Bool)

(assert (=> b!4874176 (= e!3046742 tp!1371524)))

(declare-fun b!4874174 () Bool)

(assert (=> b!4874174 (= e!3046742 tp_is_empty!35671)))

(declare-fun b!4874175 () Bool)

(declare-fun tp!1371521 () Bool)

(declare-fun tp!1371523 () Bool)

(assert (=> b!4874175 (= e!3046742 (and tp!1371521 tp!1371523))))

(assert (= (and b!4873293 ((_ is ElementMatch!13121) (regTwo!26755 (regex!8046 (h!62447 (t!364325 rules!1164)))))) b!4874174))

(assert (= (and b!4873293 ((_ is Concat!21478) (regTwo!26755 (regex!8046 (h!62447 (t!364325 rules!1164)))))) b!4874175))

(assert (= (and b!4873293 ((_ is Star!13121) (regTwo!26755 (regex!8046 (h!62447 (t!364325 rules!1164)))))) b!4874176))

(assert (= (and b!4873293 ((_ is Union!13121) (regTwo!26755 (regex!8046 (h!62447 (t!364325 rules!1164)))))) b!4874177))

(declare-fun b!4874181 () Bool)

(declare-fun e!3046743 () Bool)

(declare-fun tp!1371525 () Bool)

(declare-fun tp!1371527 () Bool)

(assert (=> b!4874181 (= e!3046743 (and tp!1371525 tp!1371527))))

(assert (=> b!4873301 (= tp!1371209 e!3046743)))

(declare-fun b!4874180 () Bool)

(declare-fun tp!1371529 () Bool)

(assert (=> b!4874180 (= e!3046743 tp!1371529)))

(declare-fun b!4874178 () Bool)

(assert (=> b!4874178 (= e!3046743 tp_is_empty!35671)))

(declare-fun b!4874179 () Bool)

(declare-fun tp!1371526 () Bool)

(declare-fun tp!1371528 () Bool)

(assert (=> b!4874179 (= e!3046743 (and tp!1371526 tp!1371528))))

(assert (= (and b!4873301 ((_ is ElementMatch!13121) (regOne!26755 (regTwo!26755 (regex!8046 (h!62447 rules!1164)))))) b!4874178))

(assert (= (and b!4873301 ((_ is Concat!21478) (regOne!26755 (regTwo!26755 (regex!8046 (h!62447 rules!1164)))))) b!4874179))

(assert (= (and b!4873301 ((_ is Star!13121) (regOne!26755 (regTwo!26755 (regex!8046 (h!62447 rules!1164)))))) b!4874180))

(assert (= (and b!4873301 ((_ is Union!13121) (regOne!26755 (regTwo!26755 (regex!8046 (h!62447 rules!1164)))))) b!4874181))

(declare-fun b!4874185 () Bool)

(declare-fun e!3046744 () Bool)

(declare-fun tp!1371530 () Bool)

(declare-fun tp!1371532 () Bool)

(assert (=> b!4874185 (= e!3046744 (and tp!1371530 tp!1371532))))

(assert (=> b!4873301 (= tp!1371211 e!3046744)))

(declare-fun b!4874184 () Bool)

(declare-fun tp!1371534 () Bool)

(assert (=> b!4874184 (= e!3046744 tp!1371534)))

(declare-fun b!4874182 () Bool)

(assert (=> b!4874182 (= e!3046744 tp_is_empty!35671)))

(declare-fun b!4874183 () Bool)

(declare-fun tp!1371531 () Bool)

(declare-fun tp!1371533 () Bool)

(assert (=> b!4874183 (= e!3046744 (and tp!1371531 tp!1371533))))

(assert (= (and b!4873301 ((_ is ElementMatch!13121) (regTwo!26755 (regTwo!26755 (regex!8046 (h!62447 rules!1164)))))) b!4874182))

(assert (= (and b!4873301 ((_ is Concat!21478) (regTwo!26755 (regTwo!26755 (regex!8046 (h!62447 rules!1164)))))) b!4874183))

(assert (= (and b!4873301 ((_ is Star!13121) (regTwo!26755 (regTwo!26755 (regex!8046 (h!62447 rules!1164)))))) b!4874184))

(assert (= (and b!4873301 ((_ is Union!13121) (regTwo!26755 (regTwo!26755 (regex!8046 (h!62447 rules!1164)))))) b!4874185))

(declare-fun b!4874189 () Bool)

(declare-fun e!3046745 () Bool)

(declare-fun tp!1371535 () Bool)

(declare-fun tp!1371537 () Bool)

(assert (=> b!4874189 (= e!3046745 (and tp!1371535 tp!1371537))))

(assert (=> b!4873292 (= tp!1371203 e!3046745)))

(declare-fun b!4874188 () Bool)

(declare-fun tp!1371539 () Bool)

(assert (=> b!4874188 (= e!3046745 tp!1371539)))

(declare-fun b!4874186 () Bool)

(assert (=> b!4874186 (= e!3046745 tp_is_empty!35671)))

(declare-fun b!4874187 () Bool)

(declare-fun tp!1371536 () Bool)

(declare-fun tp!1371538 () Bool)

(assert (=> b!4874187 (= e!3046745 (and tp!1371536 tp!1371538))))

(assert (= (and b!4873292 ((_ is ElementMatch!13121) (reg!13450 (regex!8046 (h!62447 (t!364325 rules!1164)))))) b!4874186))

(assert (= (and b!4873292 ((_ is Concat!21478) (reg!13450 (regex!8046 (h!62447 (t!364325 rules!1164)))))) b!4874187))

(assert (= (and b!4873292 ((_ is Star!13121) (reg!13450 (regex!8046 (h!62447 (t!364325 rules!1164)))))) b!4874188))

(assert (= (and b!4873292 ((_ is Union!13121) (reg!13450 (regex!8046 (h!62447 (t!364325 rules!1164)))))) b!4874189))

(declare-fun b!4874193 () Bool)

(declare-fun e!3046746 () Bool)

(declare-fun tp!1371540 () Bool)

(declare-fun tp!1371542 () Bool)

(assert (=> b!4874193 (= e!3046746 (and tp!1371540 tp!1371542))))

(assert (=> b!4873300 (= tp!1371213 e!3046746)))

(declare-fun b!4874192 () Bool)

(declare-fun tp!1371544 () Bool)

(assert (=> b!4874192 (= e!3046746 tp!1371544)))

(declare-fun b!4874190 () Bool)

(assert (=> b!4874190 (= e!3046746 tp_is_empty!35671)))

(declare-fun b!4874191 () Bool)

(declare-fun tp!1371541 () Bool)

(declare-fun tp!1371543 () Bool)

(assert (=> b!4874191 (= e!3046746 (and tp!1371541 tp!1371543))))

(assert (= (and b!4873300 ((_ is ElementMatch!13121) (reg!13450 (regTwo!26755 (regex!8046 (h!62447 rules!1164)))))) b!4874190))

(assert (= (and b!4873300 ((_ is Concat!21478) (reg!13450 (regTwo!26755 (regex!8046 (h!62447 rules!1164)))))) b!4874191))

(assert (= (and b!4873300 ((_ is Star!13121) (reg!13450 (regTwo!26755 (regex!8046 (h!62447 rules!1164)))))) b!4874192))

(assert (= (and b!4873300 ((_ is Union!13121) (reg!13450 (regTwo!26755 (regex!8046 (h!62447 rules!1164)))))) b!4874193))

(declare-fun b!4874197 () Bool)

(declare-fun e!3046747 () Bool)

(declare-fun tp!1371545 () Bool)

(declare-fun tp!1371547 () Bool)

(assert (=> b!4874197 (= e!3046747 (and tp!1371545 tp!1371547))))

(assert (=> b!4873291 (= tp!1371200 e!3046747)))

(declare-fun b!4874196 () Bool)

(declare-fun tp!1371549 () Bool)

(assert (=> b!4874196 (= e!3046747 tp!1371549)))

(declare-fun b!4874194 () Bool)

(assert (=> b!4874194 (= e!3046747 tp_is_empty!35671)))

(declare-fun b!4874195 () Bool)

(declare-fun tp!1371546 () Bool)

(declare-fun tp!1371548 () Bool)

(assert (=> b!4874195 (= e!3046747 (and tp!1371546 tp!1371548))))

(assert (= (and b!4873291 ((_ is ElementMatch!13121) (regOne!26754 (regex!8046 (h!62447 (t!364325 rules!1164)))))) b!4874194))

(assert (= (and b!4873291 ((_ is Concat!21478) (regOne!26754 (regex!8046 (h!62447 (t!364325 rules!1164)))))) b!4874195))

(assert (= (and b!4873291 ((_ is Star!13121) (regOne!26754 (regex!8046 (h!62447 (t!364325 rules!1164)))))) b!4874196))

(assert (= (and b!4873291 ((_ is Union!13121) (regOne!26754 (regex!8046 (h!62447 (t!364325 rules!1164)))))) b!4874197))

(declare-fun b!4874201 () Bool)

(declare-fun e!3046748 () Bool)

(declare-fun tp!1371550 () Bool)

(declare-fun tp!1371552 () Bool)

(assert (=> b!4874201 (= e!3046748 (and tp!1371550 tp!1371552))))

(assert (=> b!4873291 (= tp!1371202 e!3046748)))

(declare-fun b!4874200 () Bool)

(declare-fun tp!1371554 () Bool)

(assert (=> b!4874200 (= e!3046748 tp!1371554)))

(declare-fun b!4874198 () Bool)

(assert (=> b!4874198 (= e!3046748 tp_is_empty!35671)))

(declare-fun b!4874199 () Bool)

(declare-fun tp!1371551 () Bool)

(declare-fun tp!1371553 () Bool)

(assert (=> b!4874199 (= e!3046748 (and tp!1371551 tp!1371553))))

(assert (= (and b!4873291 ((_ is ElementMatch!13121) (regTwo!26754 (regex!8046 (h!62447 (t!364325 rules!1164)))))) b!4874198))

(assert (= (and b!4873291 ((_ is Concat!21478) (regTwo!26754 (regex!8046 (h!62447 (t!364325 rules!1164)))))) b!4874199))

(assert (= (and b!4873291 ((_ is Star!13121) (regTwo!26754 (regex!8046 (h!62447 (t!364325 rules!1164)))))) b!4874200))

(assert (= (and b!4873291 ((_ is Union!13121) (regTwo!26754 (regex!8046 (h!62447 (t!364325 rules!1164)))))) b!4874201))

(declare-fun b!4874205 () Bool)

(declare-fun e!3046749 () Bool)

(declare-fun tp!1371555 () Bool)

(declare-fun tp!1371557 () Bool)

(assert (=> b!4874205 (= e!3046749 (and tp!1371555 tp!1371557))))

(assert (=> b!4873317 (= tp!1371226 e!3046749)))

(declare-fun b!4874204 () Bool)

(declare-fun tp!1371559 () Bool)

(assert (=> b!4874204 (= e!3046749 tp!1371559)))

(declare-fun b!4874202 () Bool)

(assert (=> b!4874202 (= e!3046749 tp_is_empty!35671)))

(declare-fun b!4874203 () Bool)

(declare-fun tp!1371556 () Bool)

(declare-fun tp!1371558 () Bool)

(assert (=> b!4874203 (= e!3046749 (and tp!1371556 tp!1371558))))

(assert (= (and b!4873317 ((_ is ElementMatch!13121) (regOne!26755 (regOne!26754 (regex!8046 (h!62447 rules!1164)))))) b!4874202))

(assert (= (and b!4873317 ((_ is Concat!21478) (regOne!26755 (regOne!26754 (regex!8046 (h!62447 rules!1164)))))) b!4874203))

(assert (= (and b!4873317 ((_ is Star!13121) (regOne!26755 (regOne!26754 (regex!8046 (h!62447 rules!1164)))))) b!4874204))

(assert (= (and b!4873317 ((_ is Union!13121) (regOne!26755 (regOne!26754 (regex!8046 (h!62447 rules!1164)))))) b!4874205))

(declare-fun b!4874209 () Bool)

(declare-fun e!3046750 () Bool)

(declare-fun tp!1371560 () Bool)

(declare-fun tp!1371562 () Bool)

(assert (=> b!4874209 (= e!3046750 (and tp!1371560 tp!1371562))))

(assert (=> b!4873317 (= tp!1371228 e!3046750)))

(declare-fun b!4874208 () Bool)

(declare-fun tp!1371564 () Bool)

(assert (=> b!4874208 (= e!3046750 tp!1371564)))

(declare-fun b!4874206 () Bool)

(assert (=> b!4874206 (= e!3046750 tp_is_empty!35671)))

(declare-fun b!4874207 () Bool)

(declare-fun tp!1371561 () Bool)

(declare-fun tp!1371563 () Bool)

(assert (=> b!4874207 (= e!3046750 (and tp!1371561 tp!1371563))))

(assert (= (and b!4873317 ((_ is ElementMatch!13121) (regTwo!26755 (regOne!26754 (regex!8046 (h!62447 rules!1164)))))) b!4874206))

(assert (= (and b!4873317 ((_ is Concat!21478) (regTwo!26755 (regOne!26754 (regex!8046 (h!62447 rules!1164)))))) b!4874207))

(assert (= (and b!4873317 ((_ is Star!13121) (regTwo!26755 (regOne!26754 (regex!8046 (h!62447 rules!1164)))))) b!4874208))

(assert (= (and b!4873317 ((_ is Union!13121) (regTwo!26755 (regOne!26754 (regex!8046 (h!62447 rules!1164)))))) b!4874209))

(declare-fun b!4874213 () Bool)

(declare-fun e!3046751 () Bool)

(declare-fun tp!1371565 () Bool)

(declare-fun tp!1371567 () Bool)

(assert (=> b!4874213 (= e!3046751 (and tp!1371565 tp!1371567))))

(assert (=> b!4873299 (= tp!1371210 e!3046751)))

(declare-fun b!4874212 () Bool)

(declare-fun tp!1371569 () Bool)

(assert (=> b!4874212 (= e!3046751 tp!1371569)))

(declare-fun b!4874210 () Bool)

(assert (=> b!4874210 (= e!3046751 tp_is_empty!35671)))

(declare-fun b!4874211 () Bool)

(declare-fun tp!1371566 () Bool)

(declare-fun tp!1371568 () Bool)

(assert (=> b!4874211 (= e!3046751 (and tp!1371566 tp!1371568))))

(assert (= (and b!4873299 ((_ is ElementMatch!13121) (regOne!26754 (regTwo!26755 (regex!8046 (h!62447 rules!1164)))))) b!4874210))

(assert (= (and b!4873299 ((_ is Concat!21478) (regOne!26754 (regTwo!26755 (regex!8046 (h!62447 rules!1164)))))) b!4874211))

(assert (= (and b!4873299 ((_ is Star!13121) (regOne!26754 (regTwo!26755 (regex!8046 (h!62447 rules!1164)))))) b!4874212))

(assert (= (and b!4873299 ((_ is Union!13121) (regOne!26754 (regTwo!26755 (regex!8046 (h!62447 rules!1164)))))) b!4874213))

(declare-fun b!4874217 () Bool)

(declare-fun e!3046752 () Bool)

(declare-fun tp!1371570 () Bool)

(declare-fun tp!1371572 () Bool)

(assert (=> b!4874217 (= e!3046752 (and tp!1371570 tp!1371572))))

(assert (=> b!4873299 (= tp!1371212 e!3046752)))

(declare-fun b!4874216 () Bool)

(declare-fun tp!1371574 () Bool)

(assert (=> b!4874216 (= e!3046752 tp!1371574)))

(declare-fun b!4874214 () Bool)

(assert (=> b!4874214 (= e!3046752 tp_is_empty!35671)))

(declare-fun b!4874215 () Bool)

(declare-fun tp!1371571 () Bool)

(declare-fun tp!1371573 () Bool)

(assert (=> b!4874215 (= e!3046752 (and tp!1371571 tp!1371573))))

(assert (= (and b!4873299 ((_ is ElementMatch!13121) (regTwo!26754 (regTwo!26755 (regex!8046 (h!62447 rules!1164)))))) b!4874214))

(assert (= (and b!4873299 ((_ is Concat!21478) (regTwo!26754 (regTwo!26755 (regex!8046 (h!62447 rules!1164)))))) b!4874215))

(assert (= (and b!4873299 ((_ is Star!13121) (regTwo!26754 (regTwo!26755 (regex!8046 (h!62447 rules!1164)))))) b!4874216))

(assert (= (and b!4873299 ((_ is Union!13121) (regTwo!26754 (regTwo!26755 (regex!8046 (h!62447 rules!1164)))))) b!4874217))

(declare-fun b!4874221 () Bool)

(declare-fun e!3046753 () Bool)

(declare-fun tp!1371575 () Bool)

(declare-fun tp!1371577 () Bool)

(assert (=> b!4874221 (= e!3046753 (and tp!1371575 tp!1371577))))

(assert (=> b!4873315 (= tp!1371227 e!3046753)))

(declare-fun b!4874220 () Bool)

(declare-fun tp!1371579 () Bool)

(assert (=> b!4874220 (= e!3046753 tp!1371579)))

(declare-fun b!4874218 () Bool)

(assert (=> b!4874218 (= e!3046753 tp_is_empty!35671)))

(declare-fun b!4874219 () Bool)

(declare-fun tp!1371576 () Bool)

(declare-fun tp!1371578 () Bool)

(assert (=> b!4874219 (= e!3046753 (and tp!1371576 tp!1371578))))

(assert (= (and b!4873315 ((_ is ElementMatch!13121) (regOne!26754 (regOne!26754 (regex!8046 (h!62447 rules!1164)))))) b!4874218))

(assert (= (and b!4873315 ((_ is Concat!21478) (regOne!26754 (regOne!26754 (regex!8046 (h!62447 rules!1164)))))) b!4874219))

(assert (= (and b!4873315 ((_ is Star!13121) (regOne!26754 (regOne!26754 (regex!8046 (h!62447 rules!1164)))))) b!4874220))

(assert (= (and b!4873315 ((_ is Union!13121) (regOne!26754 (regOne!26754 (regex!8046 (h!62447 rules!1164)))))) b!4874221))

(declare-fun b!4874225 () Bool)

(declare-fun e!3046754 () Bool)

(declare-fun tp!1371580 () Bool)

(declare-fun tp!1371582 () Bool)

(assert (=> b!4874225 (= e!3046754 (and tp!1371580 tp!1371582))))

(assert (=> b!4873315 (= tp!1371229 e!3046754)))

(declare-fun b!4874224 () Bool)

(declare-fun tp!1371584 () Bool)

(assert (=> b!4874224 (= e!3046754 tp!1371584)))

(declare-fun b!4874222 () Bool)

(assert (=> b!4874222 (= e!3046754 tp_is_empty!35671)))

(declare-fun b!4874223 () Bool)

(declare-fun tp!1371581 () Bool)

(declare-fun tp!1371583 () Bool)

(assert (=> b!4874223 (= e!3046754 (and tp!1371581 tp!1371583))))

(assert (= (and b!4873315 ((_ is ElementMatch!13121) (regTwo!26754 (regOne!26754 (regex!8046 (h!62447 rules!1164)))))) b!4874222))

(assert (= (and b!4873315 ((_ is Concat!21478) (regTwo!26754 (regOne!26754 (regex!8046 (h!62447 rules!1164)))))) b!4874223))

(assert (= (and b!4873315 ((_ is Star!13121) (regTwo!26754 (regOne!26754 (regex!8046 (h!62447 rules!1164)))))) b!4874224))

(assert (= (and b!4873315 ((_ is Union!13121) (regTwo!26754 (regOne!26754 (regex!8046 (h!62447 rules!1164)))))) b!4874225))

(declare-fun b!4874229 () Bool)

(declare-fun e!3046755 () Bool)

(declare-fun tp!1371585 () Bool)

(declare-fun tp!1371587 () Bool)

(assert (=> b!4874229 (= e!3046755 (and tp!1371585 tp!1371587))))

(assert (=> b!4873316 (= tp!1371230 e!3046755)))

(declare-fun b!4874228 () Bool)

(declare-fun tp!1371589 () Bool)

(assert (=> b!4874228 (= e!3046755 tp!1371589)))

(declare-fun b!4874226 () Bool)

(assert (=> b!4874226 (= e!3046755 tp_is_empty!35671)))

(declare-fun b!4874227 () Bool)

(declare-fun tp!1371586 () Bool)

(declare-fun tp!1371588 () Bool)

(assert (=> b!4874227 (= e!3046755 (and tp!1371586 tp!1371588))))

(assert (= (and b!4873316 ((_ is ElementMatch!13121) (reg!13450 (regOne!26754 (regex!8046 (h!62447 rules!1164)))))) b!4874226))

(assert (= (and b!4873316 ((_ is Concat!21478) (reg!13450 (regOne!26754 (regex!8046 (h!62447 rules!1164)))))) b!4874227))

(assert (= (and b!4873316 ((_ is Star!13121) (reg!13450 (regOne!26754 (regex!8046 (h!62447 rules!1164)))))) b!4874228))

(assert (= (and b!4873316 ((_ is Union!13121) (reg!13450 (regOne!26754 (regex!8046 (h!62447 rules!1164)))))) b!4874229))

(declare-fun b!4874230 () Bool)

(declare-fun e!3046756 () Bool)

(declare-fun tp!1371590 () Bool)

(assert (=> b!4874230 (= e!3046756 (and tp_is_empty!35671 tp!1371590))))

(assert (=> b!4873324 (= tp!1371238 e!3046756)))

(assert (= (and b!4873324 ((_ is Cons!55997) (innerList!14686 (xs!17906 (left!40673 (c!828795 input!585)))))) b!4874230))

(declare-fun b!4874231 () Bool)

(declare-fun e!3046757 () Bool)

(declare-fun tp!1371591 () Bool)

(assert (=> b!4874231 (= e!3046757 (and tp_is_empty!35671 tp!1371591))))

(assert (=> b!4873306 (= tp!1371216 e!3046757)))

(assert (= (and b!4873306 ((_ is Cons!55997) (t!364323 (innerList!14686 (xs!17906 (c!828795 input!585)))))) b!4874231))

(declare-fun e!3046758 () Bool)

(declare-fun tp!1371593 () Bool)

(declare-fun tp!1371592 () Bool)

(declare-fun b!4874232 () Bool)

(assert (=> b!4874232 (= e!3046758 (and (inv!71928 (left!40673 (left!40673 (left!40673 (c!828795 input!585))))) tp!1371593 (inv!71928 (right!41003 (left!40673 (left!40673 (c!828795 input!585))))) tp!1371592))))

(declare-fun b!4874234 () Bool)

(declare-fun e!3046759 () Bool)

(declare-fun tp!1371594 () Bool)

(assert (=> b!4874234 (= e!3046759 tp!1371594)))

(declare-fun b!4874233 () Bool)

(assert (=> b!4874233 (= e!3046758 (and (inv!71935 (xs!17906 (left!40673 (left!40673 (c!828795 input!585))))) e!3046759))))

(assert (=> b!4873322 (= tp!1371237 (and (inv!71928 (left!40673 (left!40673 (c!828795 input!585)))) e!3046758))))

(assert (= (and b!4873322 ((_ is Node!14598) (left!40673 (left!40673 (c!828795 input!585))))) b!4874232))

(assert (= b!4874233 b!4874234))

(assert (= (and b!4873322 ((_ is Leaf!24332) (left!40673 (left!40673 (c!828795 input!585))))) b!4874233))

(declare-fun m!5875424 () Bool)

(assert (=> b!4874232 m!5875424))

(declare-fun m!5875426 () Bool)

(assert (=> b!4874232 m!5875426))

(declare-fun m!5875428 () Bool)

(assert (=> b!4874233 m!5875428))

(assert (=> b!4873322 m!5874348))

(declare-fun e!3046760 () Bool)

(declare-fun b!4874235 () Bool)

(declare-fun tp!1371595 () Bool)

(declare-fun tp!1371596 () Bool)

(assert (=> b!4874235 (= e!3046760 (and (inv!71928 (left!40673 (right!41003 (left!40673 (c!828795 input!585))))) tp!1371596 (inv!71928 (right!41003 (right!41003 (left!40673 (c!828795 input!585))))) tp!1371595))))

(declare-fun b!4874237 () Bool)

(declare-fun e!3046761 () Bool)

(declare-fun tp!1371597 () Bool)

(assert (=> b!4874237 (= e!3046761 tp!1371597)))

(declare-fun b!4874236 () Bool)

(assert (=> b!4874236 (= e!3046760 (and (inv!71935 (xs!17906 (right!41003 (left!40673 (c!828795 input!585))))) e!3046761))))

(assert (=> b!4873322 (= tp!1371236 (and (inv!71928 (right!41003 (left!40673 (c!828795 input!585)))) e!3046760))))

(assert (= (and b!4873322 ((_ is Node!14598) (right!41003 (left!40673 (c!828795 input!585))))) b!4874235))

(assert (= b!4874236 b!4874237))

(assert (= (and b!4873322 ((_ is Leaf!24332) (right!41003 (left!40673 (c!828795 input!585))))) b!4874236))

(declare-fun m!5875430 () Bool)

(assert (=> b!4874235 m!5875430))

(declare-fun m!5875432 () Bool)

(assert (=> b!4874235 m!5875432))

(declare-fun m!5875434 () Bool)

(assert (=> b!4874236 m!5875434))

(assert (=> b!4873322 m!5874350))

(declare-fun b_lambda!193819 () Bool)

(assert (= b_lambda!193815 (or (and b!4872797 b_free!130763) (and b!4872942 b_free!130771 (= (toValue!10921 (transformation!8046 (h!62447 (t!364325 rules!1164)))) (toValue!10921 (transformation!8046 (h!62447 rules!1164))))) (and b!4873309 b_free!130779 (= (toValue!10921 (transformation!8046 (h!62447 (t!364325 (t!364325 rules!1164))))) (toValue!10921 (transformation!8046 (h!62447 rules!1164))))) (and b!4874165 b_free!130787 (= (toValue!10921 (transformation!8046 (h!62447 (t!364325 (t!364325 (t!364325 rules!1164)))))) (toValue!10921 (transformation!8046 (h!62447 rules!1164))))) b_lambda!193819)))

(declare-fun b_lambda!193821 () Bool)

(assert (= b_lambda!193817 (or d!1565090 b_lambda!193821)))

(declare-fun bs!1174907 () Bool)

(declare-fun d!1565524 () Bool)

(assert (= bs!1174907 (and d!1565524 d!1565090)))

(assert (=> bs!1174907 (= (dynLambda!22503 lambda!243564 (h!62447 rules!1164)) (ruleValid!3634 thiss!11460 (h!62447 rules!1164)))))

(assert (=> bs!1174907 m!5874244))

(assert (=> b!4874060 d!1565524))

(declare-fun b_lambda!193823 () Bool)

(assert (= b_lambda!193781 (or d!1565010 b_lambda!193823)))

(declare-fun bs!1174908 () Bool)

(declare-fun d!1565526 () Bool)

(assert (= bs!1174908 (and d!1565526 d!1565010)))

(assert (=> bs!1174908 (= (dynLambda!22503 lambda!243558 (h!62447 rules!1164)) (ruleValid!3634 thiss!11460 (h!62447 rules!1164)))))

(assert (=> bs!1174908 m!5874244))

(assert (=> b!4873700 d!1565526))

(declare-fun b_lambda!193825 () Bool)

(assert (= b_lambda!193809 (or b!4873276 b_lambda!193825)))

(declare-fun bs!1174909 () Bool)

(declare-fun d!1565528 () Bool)

(assert (= bs!1174909 (and d!1565528 b!4873276)))

(assert (=> bs!1174909 (= (dynLambda!22504 lambda!243575 (_1!33240 lt!1996831)) (= (list!17526 (dynLambda!22502 (toChars!10780 (transformation!8046 (h!62447 rules!1164))) (dynLambda!22499 (toValue!10921 (transformation!8046 (h!62447 rules!1164))) (_1!33240 lt!1996831)))) (list!17526 (_1!33240 lt!1996831))))))

(declare-fun b_lambda!193833 () Bool)

(assert (=> (not b_lambda!193833) (not bs!1174909)))

(declare-fun t!364419 () Bool)

(declare-fun tb!258155 () Bool)

(assert (=> (and b!4872797 (= (toChars!10780 (transformation!8046 (h!62447 rules!1164))) (toChars!10780 (transformation!8046 (h!62447 rules!1164)))) t!364419) tb!258155))

(declare-fun tp!1371598 () Bool)

(declare-fun b!4874238 () Bool)

(declare-fun e!3046762 () Bool)

(assert (=> b!4874238 (= e!3046762 (and (inv!71928 (c!828795 (dynLambda!22502 (toChars!10780 (transformation!8046 (h!62447 rules!1164))) (dynLambda!22499 (toValue!10921 (transformation!8046 (h!62447 rules!1164))) (_1!33240 lt!1996831))))) tp!1371598))))

(declare-fun result!321362 () Bool)

(assert (=> tb!258155 (= result!321362 (and (inv!71927 (dynLambda!22502 (toChars!10780 (transformation!8046 (h!62447 rules!1164))) (dynLambda!22499 (toValue!10921 (transformation!8046 (h!62447 rules!1164))) (_1!33240 lt!1996831)))) e!3046762))))

(assert (= tb!258155 b!4874238))

(declare-fun m!5875436 () Bool)

(assert (=> b!4874238 m!5875436))

(declare-fun m!5875438 () Bool)

(assert (=> tb!258155 m!5875438))

(assert (=> bs!1174909 t!364419))

(declare-fun b_and!343291 () Bool)

(assert (= b_and!343227 (and (=> t!364419 result!321362) b_and!343291)))

(declare-fun t!364421 () Bool)

(declare-fun tb!258157 () Bool)

(assert (=> (and b!4872942 (= (toChars!10780 (transformation!8046 (h!62447 (t!364325 rules!1164)))) (toChars!10780 (transformation!8046 (h!62447 rules!1164)))) t!364421) tb!258157))

(declare-fun result!321364 () Bool)

(assert (= result!321364 result!321362))

(assert (=> bs!1174909 t!364421))

(declare-fun b_and!343293 () Bool)

(assert (= b_and!343229 (and (=> t!364421 result!321364) b_and!343293)))

(declare-fun t!364423 () Bool)

(declare-fun tb!258159 () Bool)

(assert (=> (and b!4873309 (= (toChars!10780 (transformation!8046 (h!62447 (t!364325 (t!364325 rules!1164))))) (toChars!10780 (transformation!8046 (h!62447 rules!1164)))) t!364423) tb!258159))

(declare-fun result!321366 () Bool)

(assert (= result!321366 result!321362))

(assert (=> bs!1174909 t!364423))

(declare-fun b_and!343295 () Bool)

(assert (= b_and!343231 (and (=> t!364423 result!321366) b_and!343295)))

(declare-fun t!364425 () Bool)

(declare-fun tb!258161 () Bool)

(assert (=> (and b!4874165 (= (toChars!10780 (transformation!8046 (h!62447 (t!364325 (t!364325 (t!364325 rules!1164)))))) (toChars!10780 (transformation!8046 (h!62447 rules!1164)))) t!364425) tb!258161))

(declare-fun result!321368 () Bool)

(assert (= result!321368 result!321362))

(assert (=> bs!1174909 t!364425))

(declare-fun b_and!343297 () Bool)

(assert (= b_and!343289 (and (=> t!364425 result!321368) b_and!343297)))

(declare-fun b_lambda!193835 () Bool)

(assert (=> (not b_lambda!193835) (not bs!1174909)))

(assert (=> bs!1174909 t!364399))

(declare-fun b_and!343299 () Bool)

(assert (= b_and!343281 (and (=> t!364399 result!321342) b_and!343299)))

(assert (=> bs!1174909 t!364401))

(declare-fun b_and!343301 () Bool)

(assert (= b_and!343283 (and (=> t!364401 result!321344) b_and!343301)))

(assert (=> bs!1174909 t!364403))

(declare-fun b_and!343303 () Bool)

(assert (= b_and!343285 (and (=> t!364403 result!321346) b_and!343303)))

(assert (=> bs!1174909 t!364413))

(declare-fun b_and!343305 () Bool)

(assert (= b_and!343287 (and (=> t!364413 result!321356) b_and!343305)))

(assert (=> bs!1174909 m!5874324))

(assert (=> bs!1174909 m!5875310))

(declare-fun m!5875440 () Bool)

(assert (=> bs!1174909 m!5875440))

(declare-fun m!5875442 () Bool)

(assert (=> bs!1174909 m!5875442))

(assert (=> bs!1174909 m!5875310))

(assert (=> bs!1174909 m!5875440))

(assert (=> d!1565464 d!1565528))

(declare-fun b_lambda!193827 () Bool)

(assert (= b_lambda!193813 (or (and b!4872797 b_free!130763) (and b!4872942 b_free!130771 (= (toValue!10921 (transformation!8046 (h!62447 (t!364325 rules!1164)))) (toValue!10921 (transformation!8046 (h!62447 rules!1164))))) (and b!4873309 b_free!130779 (= (toValue!10921 (transformation!8046 (h!62447 (t!364325 (t!364325 rules!1164))))) (toValue!10921 (transformation!8046 (h!62447 rules!1164))))) (and b!4874165 b_free!130787 (= (toValue!10921 (transformation!8046 (h!62447 (t!364325 (t!364325 (t!364325 rules!1164)))))) (toValue!10921 (transformation!8046 (h!62447 rules!1164))))) b_lambda!193827)))

(declare-fun b_lambda!193829 () Bool)

(assert (= b_lambda!193811 (or b!4873276 b_lambda!193829)))

(declare-fun bs!1174910 () Bool)

(declare-fun d!1565530 () Bool)

(assert (= bs!1174910 (and d!1565530 b!4873276)))

(assert (=> bs!1174910 (= (dynLambda!22504 lambda!243575 (seqFromList!5902 (list!17526 (_1!33240 lt!1996831)))) (= (list!17526 (dynLambda!22502 (toChars!10780 (transformation!8046 (h!62447 rules!1164))) (dynLambda!22499 (toValue!10921 (transformation!8046 (h!62447 rules!1164))) (seqFromList!5902 (list!17526 (_1!33240 lt!1996831)))))) (list!17526 (seqFromList!5902 (list!17526 (_1!33240 lt!1996831))))))))

(declare-fun b_lambda!193837 () Bool)

(assert (=> (not b_lambda!193837) (not bs!1174910)))

(declare-fun t!364427 () Bool)

(declare-fun tb!258163 () Bool)

(assert (=> (and b!4872797 (= (toChars!10780 (transformation!8046 (h!62447 rules!1164))) (toChars!10780 (transformation!8046 (h!62447 rules!1164)))) t!364427) tb!258163))

(declare-fun tp!1371599 () Bool)

(declare-fun e!3046763 () Bool)

(declare-fun b!4874239 () Bool)

(assert (=> b!4874239 (= e!3046763 (and (inv!71928 (c!828795 (dynLambda!22502 (toChars!10780 (transformation!8046 (h!62447 rules!1164))) (dynLambda!22499 (toValue!10921 (transformation!8046 (h!62447 rules!1164))) (seqFromList!5902 (list!17526 (_1!33240 lt!1996831))))))) tp!1371599))))

(declare-fun result!321370 () Bool)

(assert (=> tb!258163 (= result!321370 (and (inv!71927 (dynLambda!22502 (toChars!10780 (transformation!8046 (h!62447 rules!1164))) (dynLambda!22499 (toValue!10921 (transformation!8046 (h!62447 rules!1164))) (seqFromList!5902 (list!17526 (_1!33240 lt!1996831)))))) e!3046763))))

(assert (= tb!258163 b!4874239))

(declare-fun m!5875444 () Bool)

(assert (=> b!4874239 m!5875444))

(declare-fun m!5875446 () Bool)

(assert (=> tb!258163 m!5875446))

(assert (=> bs!1174910 t!364427))

(declare-fun b_and!343307 () Bool)

(assert (= b_and!343291 (and (=> t!364427 result!321370) b_and!343307)))

(declare-fun t!364429 () Bool)

(declare-fun tb!258165 () Bool)

(assert (=> (and b!4872942 (= (toChars!10780 (transformation!8046 (h!62447 (t!364325 rules!1164)))) (toChars!10780 (transformation!8046 (h!62447 rules!1164)))) t!364429) tb!258165))

(declare-fun result!321372 () Bool)

(assert (= result!321372 result!321370))

(assert (=> bs!1174910 t!364429))

(declare-fun b_and!343309 () Bool)

(assert (= b_and!343293 (and (=> t!364429 result!321372) b_and!343309)))

(declare-fun t!364431 () Bool)

(declare-fun tb!258167 () Bool)

(assert (=> (and b!4873309 (= (toChars!10780 (transformation!8046 (h!62447 (t!364325 (t!364325 rules!1164))))) (toChars!10780 (transformation!8046 (h!62447 rules!1164)))) t!364431) tb!258167))

(declare-fun result!321374 () Bool)

(assert (= result!321374 result!321370))

(assert (=> bs!1174910 t!364431))

(declare-fun b_and!343311 () Bool)

(assert (= b_and!343295 (and (=> t!364431 result!321374) b_and!343311)))

(declare-fun t!364433 () Bool)

(declare-fun tb!258169 () Bool)

(assert (=> (and b!4874165 (= (toChars!10780 (transformation!8046 (h!62447 (t!364325 (t!364325 (t!364325 rules!1164)))))) (toChars!10780 (transformation!8046 (h!62447 rules!1164)))) t!364433) tb!258169))

(declare-fun result!321376 () Bool)

(assert (= result!321376 result!321370))

(assert (=> bs!1174910 t!364433))

(declare-fun b_and!343313 () Bool)

(assert (= b_and!343297 (and (=> t!364433 result!321376) b_and!343313)))

(declare-fun b_lambda!193839 () Bool)

(assert (=> (not b_lambda!193839) (not bs!1174910)))

(assert (=> bs!1174910 t!364405))

(declare-fun b_and!343315 () Bool)

(assert (= b_and!343299 (and (=> t!364405 result!321348) b_and!343315)))

(assert (=> bs!1174910 t!364407))

(declare-fun b_and!343317 () Bool)

(assert (= b_and!343301 (and (=> t!364407 result!321350) b_and!343317)))

(assert (=> bs!1174910 t!364409))

(declare-fun b_and!343319 () Bool)

(assert (= b_and!343303 (and (=> t!364409 result!321352) b_and!343319)))

(assert (=> bs!1174910 t!364415))

(declare-fun b_and!343321 () Bool)

(assert (= b_and!343305 (and (=> t!364415 result!321358) b_and!343321)))

(assert (=> bs!1174910 m!5874328))

(assert (=> bs!1174910 m!5875328))

(assert (=> bs!1174910 m!5874328))

(assert (=> bs!1174910 m!5875332))

(declare-fun m!5875448 () Bool)

(assert (=> bs!1174910 m!5875448))

(declare-fun m!5875450 () Bool)

(assert (=> bs!1174910 m!5875450))

(assert (=> bs!1174910 m!5875332))

(assert (=> bs!1174910 m!5875448))

(assert (=> d!1565468 d!1565530))

(declare-fun b_lambda!193831 () Bool)

(assert (= b_lambda!193807 (or (and b!4872797 b_free!130763) (and b!4872942 b_free!130771 (= (toValue!10921 (transformation!8046 (h!62447 (t!364325 rules!1164)))) (toValue!10921 (transformation!8046 (h!62447 rules!1164))))) (and b!4873309 b_free!130779 (= (toValue!10921 (transformation!8046 (h!62447 (t!364325 (t!364325 rules!1164))))) (toValue!10921 (transformation!8046 (h!62447 rules!1164))))) (and b!4874165 b_free!130787 (= (toValue!10921 (transformation!8046 (h!62447 (t!364325 (t!364325 (t!364325 rules!1164)))))) (toValue!10921 (transformation!8046 (h!62447 rules!1164))))) b_lambda!193831)))

(check-sat (not b!4874103) (not d!1565360) (not b_lambda!193779) (not b!4873628) (not bm!338354) (not d!1565328) (not b!4874172) (not d!1565512) (not b!4874066) (not b!4874160) (not b_lambda!193819) (not b!4874154) (not b!4874063) (not b_lambda!193777) (not b!4873585) (not d!1565514) (not d!1565324) (not b!4874090) (not b!4873674) (not b!4874130) (not b!4874184) (not b!4874176) (not b!4873961) (not b!4874061) (not b!4874069) (not b!4874105) (not b!4874110) (not b!4874204) (not b!4873662) (not b!4874043) tp_is_empty!35671 (not d!1565426) (not b!4874019) (not b!4873616) (not b!4873681) (not b!4874148) (not b!4874059) (not b!4874102) (not b!4874152) (not b!4874213) (not b!4874138) (not b!4874126) (not b!4874133) (not b!4874026) (not b!4874193) (not b_next!131577) (not tb!258105) (not b!4873930) (not b!4874017) (not d!1565344) (not b!4874156) (not b!4874029) (not b!4874238) (not b_lambda!193833) (not b!4873679) (not b!4873718) (not b!4873680) (not b!4874235) b_and!343311 (not d!1565358) (not b_lambda!193835) (not tb!258135) (not b!4873940) (not b!4873967) (not b!4874129) (not bm!338377) (not b!4874150) b_and!343321 (not d!1565440) (not b!4874134) (not tb!258099) (not b!4873931) (not b!4874136) (not tb!258163) (not b!4874097) (not b!4873701) (not b_next!131579) (not b!4873969) (not b!4874237) (not b!4873685) (not bs!1174910) (not b!4874195) (not b!4874022) (not b!4874072) b_and!343317 (not b!4874231) (not d!1565442) (not b!4874167) (not b!4874205) (not d!1565456) (not b!4874109) (not b!4874203) (not b!4874211) (not d!1565288) (not b!4873592) (not d!1565454) (not b_next!131571) (not b_lambda!193839) (not b!4874212) (not b!4873705) (not b!4874121) (not b!4873594) (not b_next!131569) (not b!4874093) (not d!1565342) (not b!4873593) (not bm!338371) (not bs!1174909) (not d!1565448) (not b!4874114) (not bm!338374) (not tb!258155) (not b!4874220) (not b!4873688) (not b!4874107) (not b!4874216) (not b!4873943) (not d!1565290) (not b!4874224) (not b!4874179) (not b!4873626) (not b!4873600) (not b!4874171) (not b!4873586) (not b!4874122) (not b!4874153) (not d!1565418) (not b!4873597) (not b!4874101) (not b!4873684) (not b!4873716) (not b!4874189) (not d!1565320) (not b!4873933) (not b!4874033) (not b!4874141) b_and!343315 (not b_lambda!193825) (not d!1565416) (not d!1565446) (not bm!338350) (not bm!338351) (not b!4874025) (not b!4874137) (not b!4873615) (not d!1565506) (not b!4874169) (not b!4874135) (not d!1565332) (not b!4873927) (not b!4874089) (not b!4873587) (not b!4873677) (not b!4874115) (not d!1565466) (not d!1565498) (not b!4873675) (not b!4873622) (not b!4874127) (not d!1565476) (not bm!338376) (not b!4874232) (not b!4874173) (not b!4873962) (not d!1565464) (not d!1565432) (not b!4874065) (not b!4874201) (not bm!338378) (not b!4874225) (not b_next!131555) (not b!4874196) (not b!4874142) (not d!1565286) (not b!4873630) (not b!4874004) (not d!1565490) (not b!4873687) (not d!1565310) (not bm!338372) (not b!4873689) (not b!4873325) (not b!4874164) (not b!4873672) (not tb!258141) (not b!4874187) (not b!4874145) (not b!4873935) (not b!4873670) (not d!1565428) (not d!1565272) (not b!4873703) (not b!4874199) (not b!4874081) (not b!4873934) (not b!4873598) (not b!4874180) (not b!4873588) (not b!4874053) (not b_lambda!193827) (not b!4873625) (not b!4874099) (not b_next!131561) (not d!1565468) (not b!4874020) (not b!4873712) (not b!4874080) (not b!4874055) b_and!343309 (not b!4874217) (not b!4874168) (not b!4874119) (not d!1565318) (not d!1565284) (not b_next!131553) (not b!4874092) (not b!4874219) (not b!4873957) (not b!4874117) (not d!1565420) (not b!4874200) (not d!1565434) (not d!1565472) (not b!4874183) (not d!1565462) (not b!4874021) (not b!4874233) (not d!1565346) (not b!4874095) b_and!343307 (not b_next!131563) (not b_lambda!193837) (not b!4873322) (not b!4874207) (not b!4874024) (not d!1565282) (not b!4874070) (not b!4873945) (not b!4873589) b_and!343319 (not b!4874230) (not b!4874058) (not b!4874000) (not b!4874049) (not b!4873683) (not b!4874111) (not bm!338379) (not b!4874185) (not bs!1174908) (not bm!338375) (not b!4874234) (not d!1565470) (not b!4874158) (not b!4874015) (not b!4874131) (not b!4874191) (not b!4873602) (not b!4874177) (not b!4873673) (not b!4874023) (not b!4874087) (not b!4874197) b_and!343313 (not b_lambda!193823) (not b!4873595) (not d!1565414) (not b!4874208) (not b!4873971) (not b!4874149) (not b!4874221) (not b_lambda!193831) (not d!1565316) (not b!4874227) (not b!4873963) (not b!4873601) (not b!4873709) (not b!4873624) (not b!4874175) (not b!4873717) (not b!4874125) (not b!4874113) (not b!4874139) (not b!4874162) (not d!1565488) (not d!1565270) (not b!4874192) (not b!4873584) (not d!1565474) (not d!1565308) (not b!4874229) (not d!1565326) (not b!4873932) (not b!4873603) (not b!4873596) (not b!4874163) (not b!4873704) (not bs!1174907) (not b!4874140) (not b!4873956) (not b!4874188) (not bm!338352) (not b!4874223) (not b!4874011) (not d!1565330) (not d!1565278) (not b!4874052) (not b!4874161) (not b!4874228) (not b!4874050) (not b!4874239) (not b_lambda!193821) (not b!4873678) (not b!4873668) (not bm!338373) (not b!4873664) (not b!4874215) (not b!4874146) (not b!4873663) (not b!4874181) (not b!4874157) (not d!1565516) (not b!4873928) (not b!4874144) (not b!4874209) (not b!4874118) (not b!4874236) (not b!4874123) (not b_lambda!193829) (not b!4874098) (not b!4874106) (not b!4874005))
(check-sat (not b_next!131577) (not b_next!131579) b_and!343317 b_and!343315 (not b_next!131555) (not b_next!131553) b_and!343307 b_and!343313 b_and!343311 b_and!343321 (not b_next!131569) (not b_next!131571) (not b_next!131561) b_and!343309 b_and!343319 (not b_next!131563))
