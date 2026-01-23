; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!403642 () Bool)

(assert start!403642)

(declare-fun b!4222699 () Bool)

(declare-fun b_free!124123 () Bool)

(declare-fun b_next!124827 () Bool)

(assert (=> b!4222699 (= b_free!124123 (not b_next!124827))))

(declare-fun tp!1292218 () Bool)

(declare-fun b_and!333285 () Bool)

(assert (=> b!4222699 (= tp!1292218 b_and!333285)))

(declare-fun b_free!124125 () Bool)

(declare-fun b_next!124829 () Bool)

(assert (=> b!4222699 (= b_free!124125 (not b_next!124829))))

(declare-fun tp!1292217 () Bool)

(declare-fun b_and!333287 () Bool)

(assert (=> b!4222699 (= tp!1292217 b_and!333287)))

(declare-fun b!4222698 () Bool)

(declare-fun b_free!124127 () Bool)

(declare-fun b_next!124831 () Bool)

(assert (=> b!4222698 (= b_free!124127 (not b_next!124831))))

(declare-fun tp!1292221 () Bool)

(declare-fun b_and!333289 () Bool)

(assert (=> b!4222698 (= tp!1292221 b_and!333289)))

(declare-fun b_free!124129 () Bool)

(declare-fun b_next!124833 () Bool)

(assert (=> b!4222698 (= b_free!124129 (not b_next!124833))))

(declare-fun tp!1292230 () Bool)

(declare-fun b_and!333291 () Bool)

(assert (=> b!4222698 (= tp!1292230 b_and!333291)))

(declare-fun b!4222721 () Bool)

(declare-fun b_free!124131 () Bool)

(declare-fun b_next!124835 () Bool)

(assert (=> b!4222721 (= b_free!124131 (not b_next!124835))))

(declare-fun tp!1292216 () Bool)

(declare-fun b_and!333293 () Bool)

(assert (=> b!4222721 (= tp!1292216 b_and!333293)))

(declare-fun b_free!124133 () Bool)

(declare-fun b_next!124837 () Bool)

(assert (=> b!4222721 (= b_free!124133 (not b_next!124837))))

(declare-fun tp!1292222 () Bool)

(declare-fun b_and!333295 () Bool)

(assert (=> b!4222721 (= tp!1292222 b_and!333295)))

(declare-fun b!4222691 () Bool)

(declare-fun b_free!124135 () Bool)

(declare-fun b_next!124839 () Bool)

(assert (=> b!4222691 (= b_free!124135 (not b_next!124839))))

(declare-fun tp!1292227 () Bool)

(declare-fun b_and!333297 () Bool)

(assert (=> b!4222691 (= tp!1292227 b_and!333297)))

(declare-fun b_free!124137 () Bool)

(declare-fun b_next!124841 () Bool)

(assert (=> b!4222691 (= b_free!124137 (not b_next!124841))))

(declare-fun tp!1292231 () Bool)

(declare-fun b_and!333299 () Bool)

(assert (=> b!4222691 (= tp!1292231 b_and!333299)))

(declare-fun e!2621663 () Bool)

(assert (=> b!4222691 (= e!2621663 (and tp!1292227 tp!1292231))))

(declare-fun b!4222692 () Bool)

(declare-fun e!2621664 () Bool)

(declare-fun e!2621672 () Bool)

(assert (=> b!4222692 (= e!2621664 (not e!2621672))))

(declare-fun res!1735897 () Bool)

(assert (=> b!4222692 (=> res!1735897 e!2621672)))

(declare-datatypes ((List!46589 0))(
  ( (Nil!46465) (Cons!46465 (h!51885 (_ BitVec 16)) (t!349134 List!46589)) )
))
(declare-datatypes ((TokenValue!8026 0))(
  ( (FloatLiteralValue!16052 (text!56627 List!46589)) (TokenValueExt!8025 (__x!28275 Int)) (Broken!40130 (value!242689 List!46589)) (Object!8149) (End!8026) (Def!8026) (Underscore!8026) (Match!8026) (Else!8026) (Error!8026) (Case!8026) (If!8026) (Extends!8026) (Abstract!8026) (Class!8026) (Val!8026) (DelimiterValue!16052 (del!8086 List!46589)) (KeywordValue!8032 (value!242690 List!46589)) (CommentValue!16052 (value!242691 List!46589)) (WhitespaceValue!16052 (value!242692 List!46589)) (IndentationValue!8026 (value!242693 List!46589)) (String!53999) (Int32!8026) (Broken!40131 (value!242694 List!46589)) (Boolean!8027) (Unit!65634) (OperatorValue!8029 (op!8086 List!46589)) (IdentifierValue!16052 (value!242695 List!46589)) (IdentifierValue!16053 (value!242696 List!46589)) (WhitespaceValue!16053 (value!242697 List!46589)) (True!16052) (False!16052) (Broken!40132 (value!242698 List!46589)) (Broken!40133 (value!242699 List!46589)) (True!16053) (RightBrace!8026) (RightBracket!8026) (Colon!8026) (Null!8026) (Comma!8026) (LeftBracket!8026) (False!16053) (LeftBrace!8026) (ImaginaryLiteralValue!8026 (text!56628 List!46589)) (StringLiteralValue!24078 (value!242700 List!46589)) (EOFValue!8026 (value!242701 List!46589)) (IdentValue!8026 (value!242702 List!46589)) (DelimiterValue!16053 (value!242703 List!46589)) (DedentValue!8026 (value!242704 List!46589)) (NewLineValue!8026 (value!242705 List!46589)) (IntegerValue!24078 (value!242706 (_ BitVec 32)) (text!56629 List!46589)) (IntegerValue!24079 (value!242707 Int) (text!56630 List!46589)) (Times!8026) (Or!8026) (Equal!8026) (Minus!8026) (Broken!40134 (value!242708 List!46589)) (And!8026) (Div!8026) (LessEqual!8026) (Mod!8026) (Concat!20727) (Not!8026) (Plus!8026) (SpaceValue!8026 (value!242709 List!46589)) (IntegerValue!24080 (value!242710 Int) (text!56631 List!46589)) (StringLiteralValue!24079 (text!56632 List!46589)) (FloatLiteralValue!16053 (text!56633 List!46589)) (BytesLiteralValue!8026 (value!242711 List!46589)) (CommentValue!16053 (value!242712 List!46589)) (StringLiteralValue!24080 (value!242713 List!46589)) (ErrorTokenValue!8026 (msg!8087 List!46589)) )
))
(declare-datatypes ((C!25596 0))(
  ( (C!25597 (val!14960 Int)) )
))
(declare-datatypes ((List!46590 0))(
  ( (Nil!46466) (Cons!46466 (h!51886 C!25596) (t!349135 List!46590)) )
))
(declare-datatypes ((IArray!28019 0))(
  ( (IArray!28020 (innerList!14067 List!46590)) )
))
(declare-datatypes ((Regex!12701 0))(
  ( (ElementMatch!12701 (c!718406 C!25596)) (Concat!20728 (regOne!25914 Regex!12701) (regTwo!25914 Regex!12701)) (EmptyExpr!12701) (Star!12701 (reg!13030 Regex!12701)) (EmptyLang!12701) (Union!12701 (regOne!25915 Regex!12701) (regTwo!25915 Regex!12701)) )
))
(declare-datatypes ((Conc!14007 0))(
  ( (Node!14007 (left!34548 Conc!14007) (right!34878 Conc!14007) (csize!28244 Int) (cheight!14218 Int)) (Leaf!21649 (xs!17313 IArray!28019) (csize!28245 Int)) (Empty!14007) )
))
(declare-datatypes ((BalanceConc!27608 0))(
  ( (BalanceConc!27609 (c!718407 Conc!14007)) )
))
(declare-datatypes ((String!54000 0))(
  ( (String!54001 (value!242714 String)) )
))
(declare-datatypes ((TokenValueInjection!15480 0))(
  ( (TokenValueInjection!15481 (toValue!10520 Int) (toChars!10379 Int)) )
))
(declare-datatypes ((Rule!15392 0))(
  ( (Rule!15393 (regex!7796 Regex!12701) (tag!8660 String!54000) (isSeparator!7796 Bool) (transformation!7796 TokenValueInjection!15480)) )
))
(declare-datatypes ((Token!14294 0))(
  ( (Token!14295 (value!242715 TokenValue!8026) (rule!10936 Rule!15392) (size!34118 Int) (originalCharacters!8178 List!46590)) )
))
(declare-fun tBis!41 () Token!14294)

(declare-datatypes ((LexerInterface!7391 0))(
  ( (LexerInterfaceExt!7388 (__x!28276 Int)) (Lexer!7389) )
))
(declare-fun thiss!26544 () LexerInterface!7391)

(declare-fun rBis!178 () Rule!15392)

(declare-fun input!3517 () List!46590)

(declare-fun suffixBis!41 () List!46590)

(declare-datatypes ((tuple2!44186 0))(
  ( (tuple2!44187 (_1!25227 Token!14294) (_2!25227 List!46590)) )
))
(declare-datatypes ((Option!9984 0))(
  ( (None!9983) (Some!9983 (v!40879 tuple2!44186)) )
))
(declare-fun maxPrefixOneRule!3386 (LexerInterface!7391 Rule!15392 List!46590) Option!9984)

(assert (=> b!4222692 (= res!1735897 (not (= (maxPrefixOneRule!3386 thiss!26544 rBis!178 input!3517) (Some!9983 (tuple2!44187 tBis!41 suffixBis!41)))))))

(declare-fun isPrefix!4655 (List!46590 List!46590) Bool)

(assert (=> b!4222692 (isPrefix!4655 input!3517 input!3517)))

(declare-datatypes ((Unit!65635 0))(
  ( (Unit!65636) )
))
(declare-fun lt!1502392 () Unit!65635)

(declare-fun lemmaIsPrefixRefl!3072 (List!46590 List!46590) Unit!65635)

(assert (=> b!4222692 (= lt!1502392 (lemmaIsPrefixRefl!3072 input!3517 input!3517))))

(declare-fun b!4222693 () Bool)

(declare-fun res!1735894 () Bool)

(declare-fun e!2621665 () Bool)

(assert (=> b!4222693 (=> (not res!1735894) (not e!2621665))))

(declare-datatypes ((List!46591 0))(
  ( (Nil!46467) (Cons!46467 (h!51887 Rule!15392) (t!349136 List!46591)) )
))
(declare-fun rules!3967 () List!46591)

(declare-fun rulesInvariant!6602 (LexerInterface!7391 List!46591) Bool)

(assert (=> b!4222693 (= res!1735894 (rulesInvariant!6602 thiss!26544 rules!3967))))

(declare-fun b!4222694 () Bool)

(declare-fun e!2621679 () Bool)

(declare-fun tp_is_empty!22369 () Bool)

(declare-fun tp!1292226 () Bool)

(assert (=> b!4222694 (= e!2621679 (and tp_is_empty!22369 tp!1292226))))

(declare-fun b!4222695 () Bool)

(declare-fun res!1735889 () Bool)

(assert (=> b!4222695 (=> (not res!1735889) (not e!2621665))))

(declare-fun isEmpty!27531 (List!46591) Bool)

(assert (=> b!4222695 (= res!1735889 (not (isEmpty!27531 rules!3967)))))

(declare-fun b!4222696 () Bool)

(declare-fun res!1735905 () Bool)

(assert (=> b!4222696 (=> res!1735905 e!2621672)))

(assert (=> b!4222696 (= res!1735905 (not (= (rule!10936 tBis!41) rBis!178)))))

(declare-fun b!4222697 () Bool)

(declare-fun res!1735896 () Bool)

(declare-fun e!2621678 () Bool)

(assert (=> b!4222697 (=> res!1735896 e!2621678)))

(declare-fun contains!9619 (List!46591 Rule!15392) Bool)

(assert (=> b!4222697 (= res!1735896 (not (contains!9619 (t!349136 rules!3967) rBis!178)))))

(declare-fun e!2621658 () Bool)

(assert (=> b!4222698 (= e!2621658 (and tp!1292221 tp!1292230))))

(declare-fun e!2621677 () Bool)

(assert (=> b!4222699 (= e!2621677 (and tp!1292218 tp!1292217))))

(declare-fun b!4222700 () Bool)

(declare-fun res!1735906 () Bool)

(assert (=> b!4222700 (=> (not res!1735906) (not e!2621664))))

(declare-fun ruleValid!3508 (LexerInterface!7391 Rule!15392) Bool)

(assert (=> b!4222700 (= res!1735906 (ruleValid!3508 thiss!26544 rBis!178))))

(declare-fun b!4222701 () Bool)

(declare-fun e!2621676 () Bool)

(declare-fun tp!1292228 () Bool)

(assert (=> b!4222701 (= e!2621676 (and tp_is_empty!22369 tp!1292228))))

(declare-fun b!4222702 () Bool)

(declare-fun res!1735903 () Bool)

(assert (=> b!4222702 (=> (not res!1735903) (not e!2621665))))

(declare-fun pBis!121 () List!46590)

(assert (=> b!4222702 (= res!1735903 (isPrefix!4655 pBis!121 input!3517))))

(declare-fun b!4222704 () Bool)

(declare-fun e!2621655 () Bool)

(declare-fun tp!1292220 () Bool)

(declare-fun inv!61134 (String!54000) Bool)

(declare-fun inv!61137 (TokenValueInjection!15480) Bool)

(assert (=> b!4222704 (= e!2621655 (and tp!1292220 (inv!61134 (tag!8660 (h!51887 rules!3967))) (inv!61137 (transformation!7796 (h!51887 rules!3967))) e!2621677))))

(declare-fun b!4222705 () Bool)

(declare-fun res!1735898 () Bool)

(assert (=> b!4222705 (=> res!1735898 e!2621672)))

(declare-fun ++!11870 (List!46590 List!46590) List!46590)

(assert (=> b!4222705 (= res!1735898 (not (= (++!11870 pBis!121 suffixBis!41) input!3517)))))

(declare-fun b!4222706 () Bool)

(declare-fun res!1735899 () Bool)

(assert (=> b!4222706 (=> (not res!1735899) (not e!2621665))))

(assert (=> b!4222706 (= res!1735899 (contains!9619 rules!3967 rBis!178))))

(declare-fun b!4222707 () Bool)

(declare-fun res!1735892 () Bool)

(assert (=> b!4222707 (=> res!1735892 e!2621678)))

(declare-fun lt!1502389 () Option!9984)

(declare-fun maxPrefix!4431 (LexerInterface!7391 List!46591 List!46590) Option!9984)

(assert (=> b!4222707 (= res!1735892 (not (= (maxPrefix!4431 thiss!26544 (t!349136 rules!3967) input!3517) lt!1502389)))))

(declare-fun tp!1292232 () Bool)

(declare-fun e!2621670 () Bool)

(declare-fun e!2621660 () Bool)

(declare-fun b!4222708 () Bool)

(declare-fun inv!21 (TokenValue!8026) Bool)

(assert (=> b!4222708 (= e!2621670 (and (inv!21 (value!242715 tBis!41)) e!2621660 tp!1292232))))

(declare-fun b!4222709 () Bool)

(declare-fun res!1735890 () Bool)

(assert (=> b!4222709 (=> res!1735890 e!2621672)))

(assert (=> b!4222709 (= res!1735890 (= (maxPrefixOneRule!3386 thiss!26544 (h!51887 rules!3967) input!3517) lt!1502389))))

(declare-fun b!4222710 () Bool)

(declare-fun res!1735893 () Bool)

(assert (=> b!4222710 (=> (not res!1735893) (not e!2621665))))

(declare-fun p!3001 () List!46590)

(declare-fun suffix!1557 () List!46590)

(assert (=> b!4222710 (= res!1735893 (= (++!11870 p!3001 suffix!1557) input!3517))))

(declare-fun b!4222711 () Bool)

(declare-fun e!2621673 () Bool)

(declare-fun tp!1292229 () Bool)

(assert (=> b!4222711 (= e!2621673 (and tp_is_empty!22369 tp!1292229))))

(declare-fun b!4222712 () Bool)

(assert (=> b!4222712 (= e!2621665 e!2621664)))

(declare-fun res!1735891 () Bool)

(assert (=> b!4222712 (=> (not res!1735891) (not e!2621664))))

(assert (=> b!4222712 (= res!1735891 (= (maxPrefix!4431 thiss!26544 rules!3967 input!3517) lt!1502389))))

(declare-fun t!8364 () Token!14294)

(assert (=> b!4222712 (= lt!1502389 (Some!9983 (tuple2!44187 t!8364 suffix!1557)))))

(declare-fun b!4222713 () Bool)

(assert (=> b!4222713 (= e!2621672 e!2621678)))

(declare-fun res!1735900 () Bool)

(assert (=> b!4222713 (=> res!1735900 e!2621678)))

(assert (=> b!4222713 (= res!1735900 (isEmpty!27531 (t!349136 rules!3967)))))

(assert (=> b!4222713 (rulesInvariant!6602 thiss!26544 (t!349136 rules!3967))))

(declare-fun lt!1502390 () Unit!65635)

(declare-fun lemmaInvariantOnRulesThenOnTail!884 (LexerInterface!7391 Rule!15392 List!46591) Unit!65635)

(assert (=> b!4222713 (= lt!1502390 (lemmaInvariantOnRulesThenOnTail!884 thiss!26544 (h!51887 rules!3967) (t!349136 rules!3967)))))

(declare-fun b!4222714 () Bool)

(declare-fun res!1735901 () Bool)

(assert (=> b!4222714 (=> res!1735901 e!2621672)))

(declare-fun list!16816 (BalanceConc!27608) List!46590)

(declare-fun charsOf!5219 (Token!14294) BalanceConc!27608)

(assert (=> b!4222714 (= res!1735901 (not (= (list!16816 (charsOf!5219 tBis!41)) pBis!121)))))

(declare-fun e!2621674 () Bool)

(declare-fun tp!1292233 () Bool)

(declare-fun b!4222715 () Bool)

(assert (=> b!4222715 (= e!2621674 (and tp!1292233 (inv!61134 (tag!8660 (rule!10936 t!8364))) (inv!61137 (transformation!7796 (rule!10936 t!8364))) e!2621663))))

(declare-fun e!2621661 () Bool)

(declare-fun tp!1292225 () Bool)

(declare-fun b!4222716 () Bool)

(assert (=> b!4222716 (= e!2621660 (and tp!1292225 (inv!61134 (tag!8660 (rule!10936 tBis!41))) (inv!61137 (transformation!7796 (rule!10936 tBis!41))) e!2621661))))

(declare-fun b!4222717 () Bool)

(declare-fun res!1735902 () Bool)

(assert (=> b!4222717 (=> (not res!1735902) (not e!2621665))))

(assert (=> b!4222717 (= res!1735902 (isPrefix!4655 p!3001 input!3517))))

(declare-fun tp!1292224 () Bool)

(declare-fun b!4222718 () Bool)

(declare-fun e!2621680 () Bool)

(assert (=> b!4222718 (= e!2621680 (and (inv!21 (value!242715 t!8364)) e!2621674 tp!1292224))))

(declare-fun b!4222719 () Bool)

(assert (=> b!4222719 (= e!2621678 true)))

(declare-fun size!34119 (List!46590) Int)

(assert (=> b!4222719 (<= (size!34119 pBis!121) (size!34119 p!3001))))

(declare-fun lt!1502391 () Unit!65635)

(declare-fun lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!42 (LexerInterface!7391 List!46591 List!46590 Token!14294 List!46590 List!46590 List!46590 List!46590 Rule!15392 Token!14294) Unit!65635)

(assert (=> b!4222719 (= lt!1502391 (lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!42 thiss!26544 (t!349136 rules!3967) p!3001 t!8364 input!3517 suffix!1557 pBis!121 suffixBis!41 rBis!178 tBis!41))))

(declare-fun b!4222720 () Bool)

(declare-fun e!2621656 () Bool)

(declare-fun tp!1292219 () Bool)

(assert (=> b!4222720 (= e!2621656 (and tp_is_empty!22369 tp!1292219))))

(declare-fun res!1735895 () Bool)

(assert (=> start!403642 (=> (not res!1735895) (not e!2621665))))

(get-info :version)

(assert (=> start!403642 (= res!1735895 ((_ is Lexer!7389) thiss!26544))))

(assert (=> start!403642 e!2621665))

(declare-fun inv!61138 (Token!14294) Bool)

(assert (=> start!403642 (and (inv!61138 tBis!41) e!2621670)))

(assert (=> start!403642 true))

(declare-fun e!2621666 () Bool)

(assert (=> start!403642 e!2621666))

(assert (=> start!403642 e!2621656))

(declare-fun e!2621671 () Bool)

(assert (=> start!403642 e!2621671))

(assert (=> start!403642 e!2621673))

(assert (=> start!403642 (and (inv!61138 t!8364) e!2621680)))

(assert (=> start!403642 e!2621679))

(assert (=> start!403642 e!2621676))

(declare-fun e!2621657 () Bool)

(assert (=> start!403642 e!2621657))

(declare-fun tp!1292215 () Bool)

(declare-fun b!4222703 () Bool)

(assert (=> b!4222703 (= e!2621666 (and tp!1292215 (inv!61134 (tag!8660 rBis!178)) (inv!61137 (transformation!7796 rBis!178)) e!2621658))))

(assert (=> b!4222721 (= e!2621661 (and tp!1292216 tp!1292222))))

(declare-fun b!4222722 () Bool)

(declare-fun tp!1292223 () Bool)

(assert (=> b!4222722 (= e!2621657 (and tp_is_empty!22369 tp!1292223))))

(declare-fun b!4222723 () Bool)

(declare-fun res!1735904 () Bool)

(assert (=> b!4222723 (=> res!1735904 e!2621672)))

(assert (=> b!4222723 (= res!1735904 (or (and ((_ is Cons!46467) rules!3967) ((_ is Nil!46467) (t!349136 rules!3967))) (not ((_ is Cons!46467) rules!3967)) (= (h!51887 rules!3967) rBis!178)))))

(declare-fun b!4222724 () Bool)

(declare-fun tp!1292234 () Bool)

(assert (=> b!4222724 (= e!2621671 (and e!2621655 tp!1292234))))

(assert (= (and start!403642 res!1735895) b!4222710))

(assert (= (and b!4222710 res!1735893) b!4222717))

(assert (= (and b!4222717 res!1735902) b!4222702))

(assert (= (and b!4222702 res!1735903) b!4222695))

(assert (= (and b!4222695 res!1735889) b!4222693))

(assert (= (and b!4222693 res!1735894) b!4222706))

(assert (= (and b!4222706 res!1735899) b!4222712))

(assert (= (and b!4222712 res!1735891) b!4222700))

(assert (= (and b!4222700 res!1735906) b!4222692))

(assert (= (and b!4222692 (not res!1735897)) b!4222696))

(assert (= (and b!4222696 (not res!1735905)) b!4222714))

(assert (= (and b!4222714 (not res!1735901)) b!4222705))

(assert (= (and b!4222705 (not res!1735898)) b!4222723))

(assert (= (and b!4222723 (not res!1735904)) b!4222709))

(assert (= (and b!4222709 (not res!1735890)) b!4222713))

(assert (= (and b!4222713 (not res!1735900)) b!4222697))

(assert (= (and b!4222697 (not res!1735896)) b!4222707))

(assert (= (and b!4222707 (not res!1735892)) b!4222719))

(assert (= b!4222716 b!4222721))

(assert (= b!4222708 b!4222716))

(assert (= start!403642 b!4222708))

(assert (= b!4222703 b!4222698))

(assert (= start!403642 b!4222703))

(assert (= (and start!403642 ((_ is Cons!46466) p!3001)) b!4222720))

(assert (= b!4222704 b!4222699))

(assert (= b!4222724 b!4222704))

(assert (= (and start!403642 ((_ is Cons!46467) rules!3967)) b!4222724))

(assert (= (and start!403642 ((_ is Cons!46466) input!3517)) b!4222711))

(assert (= b!4222715 b!4222691))

(assert (= b!4222718 b!4222715))

(assert (= start!403642 b!4222718))

(assert (= (and start!403642 ((_ is Cons!46466) pBis!121)) b!4222694))

(assert (= (and start!403642 ((_ is Cons!46466) suffix!1557)) b!4222701))

(assert (= (and start!403642 ((_ is Cons!46466) suffixBis!41)) b!4222722))

(declare-fun m!4811349 () Bool)

(assert (=> b!4222700 m!4811349))

(declare-fun m!4811351 () Bool)

(assert (=> b!4222705 m!4811351))

(declare-fun m!4811353 () Bool)

(assert (=> b!4222712 m!4811353))

(declare-fun m!4811355 () Bool)

(assert (=> b!4222693 m!4811355))

(declare-fun m!4811357 () Bool)

(assert (=> b!4222717 m!4811357))

(declare-fun m!4811359 () Bool)

(assert (=> b!4222692 m!4811359))

(declare-fun m!4811361 () Bool)

(assert (=> b!4222692 m!4811361))

(declare-fun m!4811363 () Bool)

(assert (=> b!4222692 m!4811363))

(declare-fun m!4811365 () Bool)

(assert (=> start!403642 m!4811365))

(declare-fun m!4811367 () Bool)

(assert (=> start!403642 m!4811367))

(declare-fun m!4811369 () Bool)

(assert (=> b!4222697 m!4811369))

(declare-fun m!4811371 () Bool)

(assert (=> b!4222714 m!4811371))

(assert (=> b!4222714 m!4811371))

(declare-fun m!4811373 () Bool)

(assert (=> b!4222714 m!4811373))

(declare-fun m!4811375 () Bool)

(assert (=> b!4222703 m!4811375))

(declare-fun m!4811377 () Bool)

(assert (=> b!4222703 m!4811377))

(declare-fun m!4811379 () Bool)

(assert (=> b!4222719 m!4811379))

(declare-fun m!4811381 () Bool)

(assert (=> b!4222719 m!4811381))

(declare-fun m!4811383 () Bool)

(assert (=> b!4222719 m!4811383))

(declare-fun m!4811385 () Bool)

(assert (=> b!4222718 m!4811385))

(declare-fun m!4811387 () Bool)

(assert (=> b!4222704 m!4811387))

(declare-fun m!4811389 () Bool)

(assert (=> b!4222704 m!4811389))

(declare-fun m!4811391 () Bool)

(assert (=> b!4222702 m!4811391))

(declare-fun m!4811393 () Bool)

(assert (=> b!4222713 m!4811393))

(declare-fun m!4811395 () Bool)

(assert (=> b!4222713 m!4811395))

(declare-fun m!4811397 () Bool)

(assert (=> b!4222713 m!4811397))

(declare-fun m!4811399 () Bool)

(assert (=> b!4222716 m!4811399))

(declare-fun m!4811401 () Bool)

(assert (=> b!4222716 m!4811401))

(declare-fun m!4811403 () Bool)

(assert (=> b!4222709 m!4811403))

(declare-fun m!4811405 () Bool)

(assert (=> b!4222707 m!4811405))

(declare-fun m!4811407 () Bool)

(assert (=> b!4222706 m!4811407))

(declare-fun m!4811409 () Bool)

(assert (=> b!4222708 m!4811409))

(declare-fun m!4811411 () Bool)

(assert (=> b!4222715 m!4811411))

(declare-fun m!4811413 () Bool)

(assert (=> b!4222715 m!4811413))

(declare-fun m!4811415 () Bool)

(assert (=> b!4222710 m!4811415))

(declare-fun m!4811417 () Bool)

(assert (=> b!4222695 m!4811417))

(check-sat (not b!4222702) tp_is_empty!22369 b_and!333293 b_and!333287 (not b_next!124839) b_and!333289 (not b!4222703) b_and!333299 (not b!4222709) (not b!4222712) (not b!4222715) (not b!4222701) (not b_next!124831) (not b_next!124833) b_and!333291 (not b_next!124827) (not b_next!124829) (not b!4222707) (not b!4222719) b_and!333295 (not b!4222711) (not b!4222716) (not b!4222693) (not b!4222718) (not b!4222710) (not b!4222700) (not b_next!124841) (not b!4222724) (not b!4222714) (not b!4222692) (not b!4222697) (not b_next!124835) (not b!4222708) (not b!4222706) b_and!333297 (not b!4222722) (not b_next!124837) (not b!4222705) b_and!333285 (not start!403642) (not b!4222695) (not b!4222713) (not b!4222720) (not b!4222694) (not b!4222704) (not b!4222717))
(check-sat b_and!333295 b_and!333293 b_and!333287 (not b_next!124839) b_and!333289 (not b_next!124841) (not b_next!124835) b_and!333299 b_and!333297 (not b_next!124831) (not b_next!124833) b_and!333291 (not b_next!124827) (not b_next!124829) (not b_next!124837) b_and!333285)
