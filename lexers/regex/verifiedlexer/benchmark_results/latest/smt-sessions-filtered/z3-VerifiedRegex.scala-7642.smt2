; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!403646 () Bool)

(assert start!403646)

(declare-fun b!4222886 () Bool)

(declare-fun b_free!124155 () Bool)

(declare-fun b_next!124859 () Bool)

(assert (=> b!4222886 (= b_free!124155 (not b_next!124859))))

(declare-fun tp!1292345 () Bool)

(declare-fun b_and!333317 () Bool)

(assert (=> b!4222886 (= tp!1292345 b_and!333317)))

(declare-fun b_free!124157 () Bool)

(declare-fun b_next!124861 () Bool)

(assert (=> b!4222886 (= b_free!124157 (not b_next!124861))))

(declare-fun tp!1292350 () Bool)

(declare-fun b_and!333319 () Bool)

(assert (=> b!4222886 (= tp!1292350 b_and!333319)))

(declare-fun b!4222890 () Bool)

(declare-fun b_free!124159 () Bool)

(declare-fun b_next!124863 () Bool)

(assert (=> b!4222890 (= b_free!124159 (not b_next!124863))))

(declare-fun tp!1292353 () Bool)

(declare-fun b_and!333321 () Bool)

(assert (=> b!4222890 (= tp!1292353 b_and!333321)))

(declare-fun b_free!124161 () Bool)

(declare-fun b_next!124865 () Bool)

(assert (=> b!4222890 (= b_free!124161 (not b_next!124865))))

(declare-fun tp!1292342 () Bool)

(declare-fun b_and!333323 () Bool)

(assert (=> b!4222890 (= tp!1292342 b_and!333323)))

(declare-fun b!4222876 () Bool)

(declare-fun b_free!124163 () Bool)

(declare-fun b_next!124867 () Bool)

(assert (=> b!4222876 (= b_free!124163 (not b_next!124867))))

(declare-fun tp!1292352 () Bool)

(declare-fun b_and!333325 () Bool)

(assert (=> b!4222876 (= tp!1292352 b_and!333325)))

(declare-fun b_free!124165 () Bool)

(declare-fun b_next!124869 () Bool)

(assert (=> b!4222876 (= b_free!124165 (not b_next!124869))))

(declare-fun tp!1292337 () Bool)

(declare-fun b_and!333327 () Bool)

(assert (=> b!4222876 (= tp!1292337 b_and!333327)))

(declare-fun b!4222893 () Bool)

(declare-fun b_free!124167 () Bool)

(declare-fun b_next!124871 () Bool)

(assert (=> b!4222893 (= b_free!124167 (not b_next!124871))))

(declare-fun tp!1292344 () Bool)

(declare-fun b_and!333329 () Bool)

(assert (=> b!4222893 (= tp!1292344 b_and!333329)))

(declare-fun b_free!124169 () Bool)

(declare-fun b_next!124873 () Bool)

(assert (=> b!4222893 (= b_free!124169 (not b_next!124873))))

(declare-fun tp!1292340 () Bool)

(declare-fun b_and!333331 () Bool)

(assert (=> b!4222893 (= tp!1292340 b_and!333331)))

(declare-fun b!4222870 () Bool)

(declare-fun e!2621814 () Bool)

(declare-fun e!2621806 () Bool)

(assert (=> b!4222870 (= e!2621814 (not e!2621806))))

(declare-fun res!1735974 () Bool)

(assert (=> b!4222870 (=> res!1735974 e!2621806)))

(declare-datatypes ((List!46595 0))(
  ( (Nil!46471) (Cons!46471 (h!51891 (_ BitVec 16)) (t!349140 List!46595)) )
))
(declare-datatypes ((TokenValue!8028 0))(
  ( (FloatLiteralValue!16056 (text!56641 List!46595)) (TokenValueExt!8027 (__x!28279 Int)) (Broken!40140 (value!242746 List!46595)) (Object!8151) (End!8028) (Def!8028) (Underscore!8028) (Match!8028) (Else!8028) (Error!8028) (Case!8028) (If!8028) (Extends!8028) (Abstract!8028) (Class!8028) (Val!8028) (DelimiterValue!16056 (del!8088 List!46595)) (KeywordValue!8034 (value!242747 List!46595)) (CommentValue!16056 (value!242748 List!46595)) (WhitespaceValue!16056 (value!242749 List!46595)) (IndentationValue!8028 (value!242750 List!46595)) (String!54009) (Int32!8028) (Broken!40141 (value!242751 List!46595)) (Boolean!8029) (Unit!65640) (OperatorValue!8031 (op!8088 List!46595)) (IdentifierValue!16056 (value!242752 List!46595)) (IdentifierValue!16057 (value!242753 List!46595)) (WhitespaceValue!16057 (value!242754 List!46595)) (True!16056) (False!16056) (Broken!40142 (value!242755 List!46595)) (Broken!40143 (value!242756 List!46595)) (True!16057) (RightBrace!8028) (RightBracket!8028) (Colon!8028) (Null!8028) (Comma!8028) (LeftBracket!8028) (False!16057) (LeftBrace!8028) (ImaginaryLiteralValue!8028 (text!56642 List!46595)) (StringLiteralValue!24084 (value!242757 List!46595)) (EOFValue!8028 (value!242758 List!46595)) (IdentValue!8028 (value!242759 List!46595)) (DelimiterValue!16057 (value!242760 List!46595)) (DedentValue!8028 (value!242761 List!46595)) (NewLineValue!8028 (value!242762 List!46595)) (IntegerValue!24084 (value!242763 (_ BitVec 32)) (text!56643 List!46595)) (IntegerValue!24085 (value!242764 Int) (text!56644 List!46595)) (Times!8028) (Or!8028) (Equal!8028) (Minus!8028) (Broken!40144 (value!242765 List!46595)) (And!8028) (Div!8028) (LessEqual!8028) (Mod!8028) (Concat!20731) (Not!8028) (Plus!8028) (SpaceValue!8028 (value!242766 List!46595)) (IntegerValue!24086 (value!242767 Int) (text!56645 List!46595)) (StringLiteralValue!24085 (text!56646 List!46595)) (FloatLiteralValue!16057 (text!56647 List!46595)) (BytesLiteralValue!8028 (value!242768 List!46595)) (CommentValue!16057 (value!242769 List!46595)) (StringLiteralValue!24086 (value!242770 List!46595)) (ErrorTokenValue!8028 (msg!8089 List!46595)) )
))
(declare-datatypes ((C!25600 0))(
  ( (C!25601 (val!14962 Int)) )
))
(declare-datatypes ((List!46596 0))(
  ( (Nil!46472) (Cons!46472 (h!51892 C!25600) (t!349141 List!46596)) )
))
(declare-datatypes ((IArray!28023 0))(
  ( (IArray!28024 (innerList!14069 List!46596)) )
))
(declare-datatypes ((Regex!12703 0))(
  ( (ElementMatch!12703 (c!718412 C!25600)) (Concat!20732 (regOne!25918 Regex!12703) (regTwo!25918 Regex!12703)) (EmptyExpr!12703) (Star!12703 (reg!13032 Regex!12703)) (EmptyLang!12703) (Union!12703 (regOne!25919 Regex!12703) (regTwo!25919 Regex!12703)) )
))
(declare-datatypes ((Conc!14009 0))(
  ( (Node!14009 (left!34551 Conc!14009) (right!34881 Conc!14009) (csize!28248 Int) (cheight!14220 Int)) (Leaf!21652 (xs!17315 IArray!28023) (csize!28249 Int)) (Empty!14009) )
))
(declare-datatypes ((BalanceConc!27612 0))(
  ( (BalanceConc!27613 (c!718413 Conc!14009)) )
))
(declare-datatypes ((String!54010 0))(
  ( (String!54011 (value!242771 String)) )
))
(declare-datatypes ((TokenValueInjection!15484 0))(
  ( (TokenValueInjection!15485 (toValue!10522 Int) (toChars!10381 Int)) )
))
(declare-datatypes ((Rule!15396 0))(
  ( (Rule!15397 (regex!7798 Regex!12703) (tag!8662 String!54010) (isSeparator!7798 Bool) (transformation!7798 TokenValueInjection!15484)) )
))
(declare-datatypes ((Token!14298 0))(
  ( (Token!14299 (value!242772 TokenValue!8028) (rule!10938 Rule!15396) (size!34121 Int) (originalCharacters!8180 List!46596)) )
))
(declare-fun tBis!41 () Token!14298)

(declare-datatypes ((LexerInterface!7393 0))(
  ( (LexerInterfaceExt!7390 (__x!28280 Int)) (Lexer!7391) )
))
(declare-fun thiss!26544 () LexerInterface!7393)

(declare-fun rBis!178 () Rule!15396)

(declare-fun input!3517 () List!46596)

(declare-fun suffixBis!41 () List!46596)

(declare-datatypes ((tuple2!44190 0))(
  ( (tuple2!44191 (_1!25229 Token!14298) (_2!25229 List!46596)) )
))
(declare-datatypes ((Option!9986 0))(
  ( (None!9985) (Some!9985 (v!40881 tuple2!44190)) )
))
(declare-fun maxPrefixOneRule!3388 (LexerInterface!7393 Rule!15396 List!46596) Option!9986)

(assert (=> b!4222870 (= res!1735974 (not (= (maxPrefixOneRule!3388 thiss!26544 rBis!178 input!3517) (Some!9985 (tuple2!44191 tBis!41 suffixBis!41)))))))

(declare-fun isPrefix!4657 (List!46596 List!46596) Bool)

(assert (=> b!4222870 (isPrefix!4657 input!3517 input!3517)))

(declare-datatypes ((Unit!65641 0))(
  ( (Unit!65642) )
))
(declare-fun lt!1502398 () Unit!65641)

(declare-fun lemmaIsPrefixRefl!3074 (List!46596 List!46596) Unit!65641)

(assert (=> b!4222870 (= lt!1502398 (lemmaIsPrefixRefl!3074 input!3517 input!3517))))

(declare-fun b!4222871 () Bool)

(declare-fun res!1735975 () Bool)

(assert (=> b!4222871 (=> (not res!1735975) (not e!2621814))))

(declare-fun p!3001 () List!46596)

(assert (=> b!4222871 (= res!1735975 (isPrefix!4657 p!3001 input!3517))))

(declare-fun tp!1292354 () Bool)

(declare-fun t!8364 () Token!14298)

(declare-fun e!2621818 () Bool)

(declare-fun b!4222872 () Bool)

(declare-fun e!2621813 () Bool)

(declare-fun inv!21 (TokenValue!8028) Bool)

(assert (=> b!4222872 (= e!2621818 (and (inv!21 (value!242772 t!8364)) e!2621813 tp!1292354))))

(declare-fun b!4222873 () Bool)

(declare-fun e!2621820 () Bool)

(declare-fun e!2621822 () Bool)

(declare-fun tp!1292346 () Bool)

(declare-fun inv!61141 (String!54010) Bool)

(declare-fun inv!61144 (TokenValueInjection!15484) Bool)

(assert (=> b!4222873 (= e!2621822 (and tp!1292346 (inv!61141 (tag!8662 rBis!178)) (inv!61144 (transformation!7798 rBis!178)) e!2621820))))

(declare-fun b!4222874 () Bool)

(declare-fun res!1735983 () Bool)

(assert (=> b!4222874 (=> res!1735983 e!2621806)))

(assert (=> b!4222874 (= res!1735983 (not (= (rule!10938 tBis!41) rBis!178)))))

(declare-fun b!4222875 () Bool)

(declare-fun e!2621815 () Bool)

(declare-fun e!2621809 () Bool)

(declare-fun tp!1292347 () Bool)

(assert (=> b!4222875 (= e!2621815 (and e!2621809 tp!1292347))))

(declare-fun e!2621817 () Bool)

(assert (=> b!4222876 (= e!2621817 (and tp!1292352 tp!1292337))))

(declare-fun b!4222877 () Bool)

(declare-fun e!2621824 () Bool)

(declare-fun tp_is_empty!22373 () Bool)

(declare-fun tp!1292343 () Bool)

(assert (=> b!4222877 (= e!2621824 (and tp_is_empty!22373 tp!1292343))))

(declare-fun b!4222878 () Bool)

(declare-datatypes ((List!46597 0))(
  ( (Nil!46473) (Cons!46473 (h!51893 Rule!15396) (t!349142 List!46597)) )
))
(declare-fun rules!3967 () List!46597)

(get-info :version)

(assert (=> b!4222878 (= e!2621806 (or (and ((_ is Cons!46473) rules!3967) ((_ is Nil!46473) (t!349142 rules!3967))) ((_ is Cons!46473) rules!3967)))))

(declare-fun b!4222879 () Bool)

(declare-fun res!1735976 () Bool)

(assert (=> b!4222879 (=> (not res!1735976) (not e!2621814))))

(declare-fun suffix!1557 () List!46596)

(declare-fun maxPrefix!4433 (LexerInterface!7393 List!46597 List!46596) Option!9986)

(assert (=> b!4222879 (= res!1735976 (= (maxPrefix!4433 thiss!26544 rules!3967 input!3517) (Some!9985 (tuple2!44191 t!8364 suffix!1557))))))

(declare-fun b!4222880 () Bool)

(declare-fun res!1735979 () Bool)

(assert (=> b!4222880 (=> (not res!1735979) (not e!2621814))))

(declare-fun pBis!121 () List!46596)

(assert (=> b!4222880 (= res!1735979 (isPrefix!4657 pBis!121 input!3517))))

(declare-fun b!4222881 () Bool)

(declare-fun res!1735984 () Bool)

(assert (=> b!4222881 (=> (not res!1735984) (not e!2621814))))

(declare-fun ruleValid!3510 (LexerInterface!7393 Rule!15396) Bool)

(assert (=> b!4222881 (= res!1735984 (ruleValid!3510 thiss!26544 rBis!178))))

(declare-fun b!4222882 () Bool)

(declare-fun e!2621811 () Bool)

(declare-fun tp!1292348 () Bool)

(assert (=> b!4222882 (= e!2621811 (and tp_is_empty!22373 tp!1292348))))

(declare-fun b!4222883 () Bool)

(declare-fun res!1735972 () Bool)

(assert (=> b!4222883 (=> (not res!1735972) (not e!2621814))))

(declare-fun isEmpty!27533 (List!46597) Bool)

(assert (=> b!4222883 (= res!1735972 (not (isEmpty!27533 rules!3967)))))

(declare-fun b!4222884 () Bool)

(declare-fun e!2621819 () Bool)

(declare-fun tp!1292339 () Bool)

(assert (=> b!4222884 (= e!2621819 (and tp_is_empty!22373 tp!1292339))))

(declare-fun tp!1292338 () Bool)

(declare-fun e!2621812 () Bool)

(declare-fun b!4222885 () Bool)

(declare-fun e!2621805 () Bool)

(assert (=> b!4222885 (= e!2621812 (and tp!1292338 (inv!61141 (tag!8662 (rule!10938 tBis!41))) (inv!61144 (transformation!7798 (rule!10938 tBis!41))) e!2621805))))

(declare-fun e!2621821 () Bool)

(assert (=> b!4222886 (= e!2621821 (and tp!1292345 tp!1292350))))

(declare-fun b!4222887 () Bool)

(declare-fun e!2621801 () Bool)

(declare-fun tp!1292351 () Bool)

(assert (=> b!4222887 (= e!2621801 (and tp_is_empty!22373 tp!1292351))))

(declare-fun res!1735982 () Bool)

(assert (=> start!403646 (=> (not res!1735982) (not e!2621814))))

(assert (=> start!403646 (= res!1735982 ((_ is Lexer!7391) thiss!26544))))

(assert (=> start!403646 e!2621814))

(declare-fun e!2621808 () Bool)

(declare-fun inv!61145 (Token!14298) Bool)

(assert (=> start!403646 (and (inv!61145 tBis!41) e!2621808)))

(assert (=> start!403646 true))

(assert (=> start!403646 e!2621822))

(assert (=> start!403646 e!2621824))

(assert (=> start!403646 e!2621815))

(declare-fun e!2621807 () Bool)

(assert (=> start!403646 e!2621807))

(assert (=> start!403646 (and (inv!61145 t!8364) e!2621818)))

(assert (=> start!403646 e!2621811))

(assert (=> start!403646 e!2621801))

(assert (=> start!403646 e!2621819))

(declare-fun b!4222888 () Bool)

(declare-fun res!1735973 () Bool)

(assert (=> b!4222888 (=> (not res!1735973) (not e!2621814))))

(declare-fun contains!9621 (List!46597 Rule!15396) Bool)

(assert (=> b!4222888 (= res!1735973 (contains!9621 rules!3967 rBis!178))))

(declare-fun b!4222889 () Bool)

(declare-fun res!1735978 () Bool)

(assert (=> b!4222889 (=> (not res!1735978) (not e!2621814))))

(declare-fun rulesInvariant!6604 (LexerInterface!7393 List!46597) Bool)

(assert (=> b!4222889 (= res!1735978 (rulesInvariant!6604 thiss!26544 rules!3967))))

(assert (=> b!4222890 (= e!2621820 (and tp!1292353 tp!1292342))))

(declare-fun b!4222891 () Bool)

(declare-fun tp!1292341 () Bool)

(assert (=> b!4222891 (= e!2621807 (and tp_is_empty!22373 tp!1292341))))

(declare-fun tp!1292336 () Bool)

(declare-fun b!4222892 () Bool)

(assert (=> b!4222892 (= e!2621808 (and (inv!21 (value!242772 tBis!41)) e!2621812 tp!1292336))))

(assert (=> b!4222893 (= e!2621805 (and tp!1292344 tp!1292340))))

(declare-fun b!4222894 () Bool)

(declare-fun res!1735977 () Bool)

(assert (=> b!4222894 (=> res!1735977 e!2621806)))

(declare-fun ++!11872 (List!46596 List!46596) List!46596)

(assert (=> b!4222894 (= res!1735977 (not (= (++!11872 pBis!121 suffixBis!41) input!3517)))))

(declare-fun b!4222895 () Bool)

(declare-fun tp!1292335 () Bool)

(assert (=> b!4222895 (= e!2621813 (and tp!1292335 (inv!61141 (tag!8662 (rule!10938 t!8364))) (inv!61144 (transformation!7798 (rule!10938 t!8364))) e!2621821))))

(declare-fun tp!1292349 () Bool)

(declare-fun b!4222896 () Bool)

(assert (=> b!4222896 (= e!2621809 (and tp!1292349 (inv!61141 (tag!8662 (h!51893 rules!3967))) (inv!61144 (transformation!7798 (h!51893 rules!3967))) e!2621817))))

(declare-fun b!4222897 () Bool)

(declare-fun res!1735981 () Bool)

(assert (=> b!4222897 (=> res!1735981 e!2621806)))

(declare-fun list!16818 (BalanceConc!27612) List!46596)

(declare-fun charsOf!5221 (Token!14298) BalanceConc!27612)

(assert (=> b!4222897 (= res!1735981 (not (= (list!16818 (charsOf!5221 tBis!41)) pBis!121)))))

(declare-fun b!4222898 () Bool)

(declare-fun res!1735980 () Bool)

(assert (=> b!4222898 (=> (not res!1735980) (not e!2621814))))

(assert (=> b!4222898 (= res!1735980 (= (++!11872 p!3001 suffix!1557) input!3517))))

(assert (= (and start!403646 res!1735982) b!4222898))

(assert (= (and b!4222898 res!1735980) b!4222871))

(assert (= (and b!4222871 res!1735975) b!4222880))

(assert (= (and b!4222880 res!1735979) b!4222883))

(assert (= (and b!4222883 res!1735972) b!4222889))

(assert (= (and b!4222889 res!1735978) b!4222888))

(assert (= (and b!4222888 res!1735973) b!4222879))

(assert (= (and b!4222879 res!1735976) b!4222881))

(assert (= (and b!4222881 res!1735984) b!4222870))

(assert (= (and b!4222870 (not res!1735974)) b!4222874))

(assert (= (and b!4222874 (not res!1735983)) b!4222897))

(assert (= (and b!4222897 (not res!1735981)) b!4222894))

(assert (= (and b!4222894 (not res!1735977)) b!4222878))

(assert (= b!4222885 b!4222893))

(assert (= b!4222892 b!4222885))

(assert (= start!403646 b!4222892))

(assert (= b!4222873 b!4222890))

(assert (= start!403646 b!4222873))

(assert (= (and start!403646 ((_ is Cons!46472) p!3001)) b!4222877))

(assert (= b!4222896 b!4222876))

(assert (= b!4222875 b!4222896))

(assert (= (and start!403646 ((_ is Cons!46473) rules!3967)) b!4222875))

(assert (= (and start!403646 ((_ is Cons!46472) input!3517)) b!4222891))

(assert (= b!4222895 b!4222886))

(assert (= b!4222872 b!4222895))

(assert (= start!403646 b!4222872))

(assert (= (and start!403646 ((_ is Cons!46472) pBis!121)) b!4222882))

(assert (= (and start!403646 ((_ is Cons!46472) suffix!1557)) b!4222887))

(assert (= (and start!403646 ((_ is Cons!46472) suffixBis!41)) b!4222884))

(declare-fun m!4811471 () Bool)

(assert (=> b!4222894 m!4811471))

(declare-fun m!4811473 () Bool)

(assert (=> b!4222896 m!4811473))

(declare-fun m!4811475 () Bool)

(assert (=> b!4222896 m!4811475))

(declare-fun m!4811477 () Bool)

(assert (=> b!4222881 m!4811477))

(declare-fun m!4811479 () Bool)

(assert (=> b!4222892 m!4811479))

(declare-fun m!4811481 () Bool)

(assert (=> b!4222895 m!4811481))

(declare-fun m!4811483 () Bool)

(assert (=> b!4222895 m!4811483))

(declare-fun m!4811485 () Bool)

(assert (=> b!4222873 m!4811485))

(declare-fun m!4811487 () Bool)

(assert (=> b!4222873 m!4811487))

(declare-fun m!4811489 () Bool)

(assert (=> b!4222872 m!4811489))

(declare-fun m!4811491 () Bool)

(assert (=> b!4222897 m!4811491))

(assert (=> b!4222897 m!4811491))

(declare-fun m!4811493 () Bool)

(assert (=> b!4222897 m!4811493))

(declare-fun m!4811495 () Bool)

(assert (=> b!4222888 m!4811495))

(declare-fun m!4811497 () Bool)

(assert (=> b!4222870 m!4811497))

(declare-fun m!4811499 () Bool)

(assert (=> b!4222870 m!4811499))

(declare-fun m!4811501 () Bool)

(assert (=> b!4222870 m!4811501))

(declare-fun m!4811503 () Bool)

(assert (=> b!4222889 m!4811503))

(declare-fun m!4811505 () Bool)

(assert (=> b!4222871 m!4811505))

(declare-fun m!4811507 () Bool)

(assert (=> b!4222898 m!4811507))

(declare-fun m!4811509 () Bool)

(assert (=> b!4222885 m!4811509))

(declare-fun m!4811511 () Bool)

(assert (=> b!4222885 m!4811511))

(declare-fun m!4811513 () Bool)

(assert (=> b!4222879 m!4811513))

(declare-fun m!4811515 () Bool)

(assert (=> b!4222883 m!4811515))

(declare-fun m!4811517 () Bool)

(assert (=> start!403646 m!4811517))

(declare-fun m!4811519 () Bool)

(assert (=> start!403646 m!4811519))

(declare-fun m!4811521 () Bool)

(assert (=> b!4222880 m!4811521))

(check-sat b_and!333325 (not b!4222898) b_and!333327 (not b!4222883) (not b_next!124865) b_and!333323 (not b!4222889) (not b_next!124871) b_and!333319 (not b!4222873) (not b!4222877) (not b!4222895) (not b_next!124861) (not b!4222896) (not b!4222871) (not b!4222870) b_and!333317 (not b!4222897) (not b_next!124867) (not b!4222875) (not b!4222887) b_and!333331 b_and!333329 (not b!4222881) (not b!4222872) (not start!403646) (not b!4222892) (not b!4222891) (not b!4222879) (not b_next!124873) b_and!333321 (not b_next!124859) (not b!4222885) (not b!4222884) (not b_next!124863) (not b!4222888) tp_is_empty!22373 (not b!4222882) (not b_next!124869) (not b!4222894) (not b!4222880))
(check-sat b_and!333325 (not b_next!124861) b_and!333327 (not b_next!124865) b_and!333317 (not b_next!124867) b_and!333331 b_and!333323 b_and!333329 (not b_next!124871) b_and!333319 (not b_next!124863) (not b_next!124869) (not b_next!124859) (not b_next!124873) b_and!333321)
(get-model)

(declare-fun b!4222912 () Bool)

(declare-fun e!2621834 () List!46596)

(assert (=> b!4222912 (= e!2621834 (Cons!46472 (h!51892 p!3001) (++!11872 (t!349141 p!3001) suffix!1557)))))

(declare-fun d!1243667 () Bool)

(declare-fun e!2621833 () Bool)

(assert (=> d!1243667 e!2621833))

(declare-fun res!1736001 () Bool)

(assert (=> d!1243667 (=> (not res!1736001) (not e!2621833))))

(declare-fun lt!1502403 () List!46596)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7299 (List!46596) (InoxSet C!25600))

(assert (=> d!1243667 (= res!1736001 (= (content!7299 lt!1502403) ((_ map or) (content!7299 p!3001) (content!7299 suffix!1557))))))

(assert (=> d!1243667 (= lt!1502403 e!2621834)))

(declare-fun c!718416 () Bool)

(assert (=> d!1243667 (= c!718416 ((_ is Nil!46472) p!3001))))

(assert (=> d!1243667 (= (++!11872 p!3001 suffix!1557) lt!1502403)))

(declare-fun b!4222914 () Bool)

(assert (=> b!4222914 (= e!2621833 (or (not (= suffix!1557 Nil!46472)) (= lt!1502403 p!3001)))))

(declare-fun b!4222911 () Bool)

(assert (=> b!4222911 (= e!2621834 suffix!1557)))

(declare-fun b!4222913 () Bool)

(declare-fun res!1736002 () Bool)

(assert (=> b!4222913 (=> (not res!1736002) (not e!2621833))))

(declare-fun size!34123 (List!46596) Int)

(assert (=> b!4222913 (= res!1736002 (= (size!34123 lt!1502403) (+ (size!34123 p!3001) (size!34123 suffix!1557))))))

(assert (= (and d!1243667 c!718416) b!4222911))

(assert (= (and d!1243667 (not c!718416)) b!4222912))

(assert (= (and d!1243667 res!1736001) b!4222913))

(assert (= (and b!4222913 res!1736002) b!4222914))

(declare-fun m!4811523 () Bool)

(assert (=> b!4222912 m!4811523))

(declare-fun m!4811525 () Bool)

(assert (=> d!1243667 m!4811525))

(declare-fun m!4811527 () Bool)

(assert (=> d!1243667 m!4811527))

(declare-fun m!4811529 () Bool)

(assert (=> d!1243667 m!4811529))

(declare-fun m!4811531 () Bool)

(assert (=> b!4222913 m!4811531))

(declare-fun m!4811533 () Bool)

(assert (=> b!4222913 m!4811533))

(declare-fun m!4811535 () Bool)

(assert (=> b!4222913 m!4811535))

(assert (=> b!4222898 d!1243667))

(declare-fun d!1243671 () Bool)

(assert (=> d!1243671 (= (inv!61141 (tag!8662 (h!51893 rules!3967))) (= (mod (str.len (value!242771 (tag!8662 (h!51893 rules!3967)))) 2) 0))))

(assert (=> b!4222896 d!1243671))

(declare-fun d!1243675 () Bool)

(declare-fun res!1736013 () Bool)

(declare-fun e!2621842 () Bool)

(assert (=> d!1243675 (=> (not res!1736013) (not e!2621842))))

(declare-fun semiInverseModEq!3391 (Int Int) Bool)

(assert (=> d!1243675 (= res!1736013 (semiInverseModEq!3391 (toChars!10381 (transformation!7798 (h!51893 rules!3967))) (toValue!10522 (transformation!7798 (h!51893 rules!3967)))))))

(assert (=> d!1243675 (= (inv!61144 (transformation!7798 (h!51893 rules!3967))) e!2621842)))

(declare-fun b!4222925 () Bool)

(declare-fun equivClasses!3290 (Int Int) Bool)

(assert (=> b!4222925 (= e!2621842 (equivClasses!3290 (toChars!10381 (transformation!7798 (h!51893 rules!3967))) (toValue!10522 (transformation!7798 (h!51893 rules!3967)))))))

(assert (= (and d!1243675 res!1736013) b!4222925))

(declare-fun m!4811543 () Bool)

(assert (=> d!1243675 m!4811543))

(declare-fun m!4811545 () Bool)

(assert (=> b!4222925 m!4811545))

(assert (=> b!4222896 d!1243675))

(declare-fun d!1243677 () Bool)

(declare-fun list!16820 (Conc!14009) List!46596)

(assert (=> d!1243677 (= (list!16818 (charsOf!5221 tBis!41)) (list!16820 (c!718413 (charsOf!5221 tBis!41))))))

(declare-fun bs!597760 () Bool)

(assert (= bs!597760 d!1243677))

(declare-fun m!4811547 () Bool)

(assert (=> bs!597760 m!4811547))

(assert (=> b!4222897 d!1243677))

(declare-fun d!1243679 () Bool)

(declare-fun lt!1502407 () BalanceConc!27612)

(assert (=> d!1243679 (= (list!16818 lt!1502407) (originalCharacters!8180 tBis!41))))

(declare-fun dynLambda!20006 (Int TokenValue!8028) BalanceConc!27612)

(assert (=> d!1243679 (= lt!1502407 (dynLambda!20006 (toChars!10381 (transformation!7798 (rule!10938 tBis!41))) (value!242772 tBis!41)))))

(assert (=> d!1243679 (= (charsOf!5221 tBis!41) lt!1502407)))

(declare-fun b_lambda!124471 () Bool)

(assert (=> (not b_lambda!124471) (not d!1243679)))

(declare-fun tb!253755 () Bool)

(declare-fun t!349160 () Bool)

(assert (=> (and b!4222886 (= (toChars!10381 (transformation!7798 (rule!10938 t!8364))) (toChars!10381 (transformation!7798 (rule!10938 tBis!41)))) t!349160) tb!253755))

(declare-fun b!4222938 () Bool)

(declare-fun e!2621850 () Bool)

(declare-fun tp!1292361 () Bool)

(declare-fun inv!61148 (Conc!14009) Bool)

(assert (=> b!4222938 (= e!2621850 (and (inv!61148 (c!718413 (dynLambda!20006 (toChars!10381 (transformation!7798 (rule!10938 tBis!41))) (value!242772 tBis!41)))) tp!1292361))))

(declare-fun result!309270 () Bool)

(declare-fun inv!61149 (BalanceConc!27612) Bool)

(assert (=> tb!253755 (= result!309270 (and (inv!61149 (dynLambda!20006 (toChars!10381 (transformation!7798 (rule!10938 tBis!41))) (value!242772 tBis!41))) e!2621850))))

(assert (= tb!253755 b!4222938))

(declare-fun m!4811573 () Bool)

(assert (=> b!4222938 m!4811573))

(declare-fun m!4811575 () Bool)

(assert (=> tb!253755 m!4811575))

(assert (=> d!1243679 t!349160))

(declare-fun b_and!333349 () Bool)

(assert (= b_and!333319 (and (=> t!349160 result!309270) b_and!333349)))

(declare-fun tb!253757 () Bool)

(declare-fun t!349162 () Bool)

(assert (=> (and b!4222890 (= (toChars!10381 (transformation!7798 rBis!178)) (toChars!10381 (transformation!7798 (rule!10938 tBis!41)))) t!349162) tb!253757))

(declare-fun result!309274 () Bool)

(assert (= result!309274 result!309270))

(assert (=> d!1243679 t!349162))

(declare-fun b_and!333351 () Bool)

(assert (= b_and!333323 (and (=> t!349162 result!309274) b_and!333351)))

(declare-fun tb!253759 () Bool)

(declare-fun t!349164 () Bool)

(assert (=> (and b!4222876 (= (toChars!10381 (transformation!7798 (h!51893 rules!3967))) (toChars!10381 (transformation!7798 (rule!10938 tBis!41)))) t!349164) tb!253759))

(declare-fun result!309276 () Bool)

(assert (= result!309276 result!309270))

(assert (=> d!1243679 t!349164))

(declare-fun b_and!333353 () Bool)

(assert (= b_and!333327 (and (=> t!349164 result!309276) b_and!333353)))

(declare-fun t!349166 () Bool)

(declare-fun tb!253761 () Bool)

(assert (=> (and b!4222893 (= (toChars!10381 (transformation!7798 (rule!10938 tBis!41))) (toChars!10381 (transformation!7798 (rule!10938 tBis!41)))) t!349166) tb!253761))

(declare-fun result!309278 () Bool)

(assert (= result!309278 result!309270))

(assert (=> d!1243679 t!349166))

(declare-fun b_and!333355 () Bool)

(assert (= b_and!333331 (and (=> t!349166 result!309278) b_and!333355)))

(declare-fun m!4811577 () Bool)

(assert (=> d!1243679 m!4811577))

(declare-fun m!4811579 () Bool)

(assert (=> d!1243679 m!4811579))

(assert (=> b!4222897 d!1243679))

(declare-fun d!1243687 () Bool)

(assert (=> d!1243687 (= (inv!61141 (tag!8662 (rule!10938 t!8364))) (= (mod (str.len (value!242771 (tag!8662 (rule!10938 t!8364)))) 2) 0))))

(assert (=> b!4222895 d!1243687))

(declare-fun d!1243689 () Bool)

(declare-fun res!1736016 () Bool)

(declare-fun e!2621851 () Bool)

(assert (=> d!1243689 (=> (not res!1736016) (not e!2621851))))

(assert (=> d!1243689 (= res!1736016 (semiInverseModEq!3391 (toChars!10381 (transformation!7798 (rule!10938 t!8364))) (toValue!10522 (transformation!7798 (rule!10938 t!8364)))))))

(assert (=> d!1243689 (= (inv!61144 (transformation!7798 (rule!10938 t!8364))) e!2621851)))

(declare-fun b!4222939 () Bool)

(assert (=> b!4222939 (= e!2621851 (equivClasses!3290 (toChars!10381 (transformation!7798 (rule!10938 t!8364))) (toValue!10522 (transformation!7798 (rule!10938 t!8364)))))))

(assert (= (and d!1243689 res!1736016) b!4222939))

(declare-fun m!4811581 () Bool)

(assert (=> d!1243689 m!4811581))

(declare-fun m!4811583 () Bool)

(assert (=> b!4222939 m!4811583))

(assert (=> b!4222895 d!1243689))

(declare-fun d!1243691 () Bool)

(assert (=> d!1243691 (= (inv!61141 (tag!8662 (rule!10938 tBis!41))) (= (mod (str.len (value!242771 (tag!8662 (rule!10938 tBis!41)))) 2) 0))))

(assert (=> b!4222885 d!1243691))

(declare-fun d!1243693 () Bool)

(declare-fun res!1736017 () Bool)

(declare-fun e!2621856 () Bool)

(assert (=> d!1243693 (=> (not res!1736017) (not e!2621856))))

(assert (=> d!1243693 (= res!1736017 (semiInverseModEq!3391 (toChars!10381 (transformation!7798 (rule!10938 tBis!41))) (toValue!10522 (transformation!7798 (rule!10938 tBis!41)))))))

(assert (=> d!1243693 (= (inv!61144 (transformation!7798 (rule!10938 tBis!41))) e!2621856)))

(declare-fun b!4222948 () Bool)

(assert (=> b!4222948 (= e!2621856 (equivClasses!3290 (toChars!10381 (transformation!7798 (rule!10938 tBis!41))) (toValue!10522 (transformation!7798 (rule!10938 tBis!41)))))))

(assert (= (and d!1243693 res!1736017) b!4222948))

(declare-fun m!4811585 () Bool)

(assert (=> d!1243693 m!4811585))

(declare-fun m!4811587 () Bool)

(assert (=> b!4222948 m!4811587))

(assert (=> b!4222885 d!1243693))

(declare-fun d!1243695 () Bool)

(assert (=> d!1243695 (= (isEmpty!27533 rules!3967) ((_ is Nil!46473) rules!3967))))

(assert (=> b!4222883 d!1243695))

(declare-fun b!4222966 () Bool)

(declare-fun e!2621869 () Bool)

(declare-fun inv!16 (TokenValue!8028) Bool)

(assert (=> b!4222966 (= e!2621869 (inv!16 (value!242772 t!8364)))))

(declare-fun b!4222967 () Bool)

(declare-fun e!2621868 () Bool)

(declare-fun inv!15 (TokenValue!8028) Bool)

(assert (=> b!4222967 (= e!2621868 (inv!15 (value!242772 t!8364)))))

(declare-fun b!4222968 () Bool)

(declare-fun e!2621870 () Bool)

(assert (=> b!4222968 (= e!2621869 e!2621870)))

(declare-fun c!718427 () Bool)

(assert (=> b!4222968 (= c!718427 ((_ is IntegerValue!24085) (value!242772 t!8364)))))

(declare-fun b!4222969 () Bool)

(declare-fun res!1736023 () Bool)

(assert (=> b!4222969 (=> res!1736023 e!2621868)))

(assert (=> b!4222969 (= res!1736023 (not ((_ is IntegerValue!24086) (value!242772 t!8364))))))

(assert (=> b!4222969 (= e!2621870 e!2621868)))

(declare-fun d!1243697 () Bool)

(declare-fun c!718428 () Bool)

(assert (=> d!1243697 (= c!718428 ((_ is IntegerValue!24084) (value!242772 t!8364)))))

(assert (=> d!1243697 (= (inv!21 (value!242772 t!8364)) e!2621869)))

(declare-fun b!4222970 () Bool)

(declare-fun inv!17 (TokenValue!8028) Bool)

(assert (=> b!4222970 (= e!2621870 (inv!17 (value!242772 t!8364)))))

(assert (= (and d!1243697 c!718428) b!4222966))

(assert (= (and d!1243697 (not c!718428)) b!4222968))

(assert (= (and b!4222968 c!718427) b!4222970))

(assert (= (and b!4222968 (not c!718427)) b!4222969))

(assert (= (and b!4222969 (not res!1736023)) b!4222967))

(declare-fun m!4811599 () Bool)

(assert (=> b!4222966 m!4811599))

(declare-fun m!4811601 () Bool)

(assert (=> b!4222967 m!4811601))

(declare-fun m!4811603 () Bool)

(assert (=> b!4222970 m!4811603))

(assert (=> b!4222872 d!1243697))

(declare-fun d!1243705 () Bool)

(assert (=> d!1243705 (= (inv!61141 (tag!8662 rBis!178)) (= (mod (str.len (value!242771 (tag!8662 rBis!178))) 2) 0))))

(assert (=> b!4222873 d!1243705))

(declare-fun d!1243707 () Bool)

(declare-fun res!1736024 () Bool)

(declare-fun e!2621871 () Bool)

(assert (=> d!1243707 (=> (not res!1736024) (not e!2621871))))

(assert (=> d!1243707 (= res!1736024 (semiInverseModEq!3391 (toChars!10381 (transformation!7798 rBis!178)) (toValue!10522 (transformation!7798 rBis!178))))))

(assert (=> d!1243707 (= (inv!61144 (transformation!7798 rBis!178)) e!2621871)))

(declare-fun b!4222971 () Bool)

(assert (=> b!4222971 (= e!2621871 (equivClasses!3290 (toChars!10381 (transformation!7798 rBis!178)) (toValue!10522 (transformation!7798 rBis!178))))))

(assert (= (and d!1243707 res!1736024) b!4222971))

(declare-fun m!4811605 () Bool)

(assert (=> d!1243707 m!4811605))

(declare-fun m!4811607 () Bool)

(assert (=> b!4222971 m!4811607))

(assert (=> b!4222873 d!1243707))

(declare-fun b!4222973 () Bool)

(declare-fun e!2621873 () List!46596)

(assert (=> b!4222973 (= e!2621873 (Cons!46472 (h!51892 pBis!121) (++!11872 (t!349141 pBis!121) suffixBis!41)))))

(declare-fun d!1243711 () Bool)

(declare-fun e!2621872 () Bool)

(assert (=> d!1243711 e!2621872))

(declare-fun res!1736025 () Bool)

(assert (=> d!1243711 (=> (not res!1736025) (not e!2621872))))

(declare-fun lt!1502411 () List!46596)

(assert (=> d!1243711 (= res!1736025 (= (content!7299 lt!1502411) ((_ map or) (content!7299 pBis!121) (content!7299 suffixBis!41))))))

(assert (=> d!1243711 (= lt!1502411 e!2621873)))

(declare-fun c!718429 () Bool)

(assert (=> d!1243711 (= c!718429 ((_ is Nil!46472) pBis!121))))

(assert (=> d!1243711 (= (++!11872 pBis!121 suffixBis!41) lt!1502411)))

(declare-fun b!4222975 () Bool)

(assert (=> b!4222975 (= e!2621872 (or (not (= suffixBis!41 Nil!46472)) (= lt!1502411 pBis!121)))))

(declare-fun b!4222972 () Bool)

(assert (=> b!4222972 (= e!2621873 suffixBis!41)))

(declare-fun b!4222974 () Bool)

(declare-fun res!1736026 () Bool)

(assert (=> b!4222974 (=> (not res!1736026) (not e!2621872))))

(assert (=> b!4222974 (= res!1736026 (= (size!34123 lt!1502411) (+ (size!34123 pBis!121) (size!34123 suffixBis!41))))))

(assert (= (and d!1243711 c!718429) b!4222972))

(assert (= (and d!1243711 (not c!718429)) b!4222973))

(assert (= (and d!1243711 res!1736025) b!4222974))

(assert (= (and b!4222974 res!1736026) b!4222975))

(declare-fun m!4811609 () Bool)

(assert (=> b!4222973 m!4811609))

(declare-fun m!4811611 () Bool)

(assert (=> d!1243711 m!4811611))

(declare-fun m!4811613 () Bool)

(assert (=> d!1243711 m!4811613))

(declare-fun m!4811615 () Bool)

(assert (=> d!1243711 m!4811615))

(declare-fun m!4811617 () Bool)

(assert (=> b!4222974 m!4811617))

(declare-fun m!4811619 () Bool)

(assert (=> b!4222974 m!4811619))

(declare-fun m!4811621 () Bool)

(assert (=> b!4222974 m!4811621))

(assert (=> b!4222894 d!1243711))

(declare-fun d!1243713 () Bool)

(declare-fun e!2621887 () Bool)

(assert (=> d!1243713 e!2621887))

(declare-fun res!1736043 () Bool)

(assert (=> d!1243713 (=> res!1736043 e!2621887)))

(declare-fun lt!1502414 () Bool)

(assert (=> d!1243713 (= res!1736043 (not lt!1502414))))

(declare-fun e!2621889 () Bool)

(assert (=> d!1243713 (= lt!1502414 e!2621889)))

(declare-fun res!1736040 () Bool)

(assert (=> d!1243713 (=> res!1736040 e!2621889)))

(assert (=> d!1243713 (= res!1736040 ((_ is Nil!46472) p!3001))))

(assert (=> d!1243713 (= (isPrefix!4657 p!3001 input!3517) lt!1502414)))

(declare-fun b!4222995 () Bool)

(declare-fun e!2621888 () Bool)

(declare-fun tail!6807 (List!46596) List!46596)

(assert (=> b!4222995 (= e!2621888 (isPrefix!4657 (tail!6807 p!3001) (tail!6807 input!3517)))))

(declare-fun b!4222996 () Bool)

(assert (=> b!4222996 (= e!2621887 (>= (size!34123 input!3517) (size!34123 p!3001)))))

(declare-fun b!4222993 () Bool)

(assert (=> b!4222993 (= e!2621889 e!2621888)))

(declare-fun res!1736042 () Bool)

(assert (=> b!4222993 (=> (not res!1736042) (not e!2621888))))

(assert (=> b!4222993 (= res!1736042 (not ((_ is Nil!46472) input!3517)))))

(declare-fun b!4222994 () Bool)

(declare-fun res!1736041 () Bool)

(assert (=> b!4222994 (=> (not res!1736041) (not e!2621888))))

(declare-fun head!8960 (List!46596) C!25600)

(assert (=> b!4222994 (= res!1736041 (= (head!8960 p!3001) (head!8960 input!3517)))))

(assert (= (and d!1243713 (not res!1736040)) b!4222993))

(assert (= (and b!4222993 res!1736042) b!4222994))

(assert (= (and b!4222994 res!1736041) b!4222995))

(assert (= (and d!1243713 (not res!1736043)) b!4222996))

(declare-fun m!4811637 () Bool)

(assert (=> b!4222995 m!4811637))

(declare-fun m!4811639 () Bool)

(assert (=> b!4222995 m!4811639))

(assert (=> b!4222995 m!4811637))

(assert (=> b!4222995 m!4811639))

(declare-fun m!4811641 () Bool)

(assert (=> b!4222995 m!4811641))

(declare-fun m!4811643 () Bool)

(assert (=> b!4222996 m!4811643))

(assert (=> b!4222996 m!4811533))

(declare-fun m!4811645 () Bool)

(assert (=> b!4222994 m!4811645))

(declare-fun m!4811647 () Bool)

(assert (=> b!4222994 m!4811647))

(assert (=> b!4222871 d!1243713))

(declare-fun b!4222997 () Bool)

(declare-fun e!2621891 () Bool)

(assert (=> b!4222997 (= e!2621891 (inv!16 (value!242772 tBis!41)))))

(declare-fun b!4222998 () Bool)

(declare-fun e!2621890 () Bool)

(assert (=> b!4222998 (= e!2621890 (inv!15 (value!242772 tBis!41)))))

(declare-fun b!4222999 () Bool)

(declare-fun e!2621892 () Bool)

(assert (=> b!4222999 (= e!2621891 e!2621892)))

(declare-fun c!718432 () Bool)

(assert (=> b!4222999 (= c!718432 ((_ is IntegerValue!24085) (value!242772 tBis!41)))))

(declare-fun b!4223000 () Bool)

(declare-fun res!1736044 () Bool)

(assert (=> b!4223000 (=> res!1736044 e!2621890)))

(assert (=> b!4223000 (= res!1736044 (not ((_ is IntegerValue!24086) (value!242772 tBis!41))))))

(assert (=> b!4223000 (= e!2621892 e!2621890)))

(declare-fun d!1243723 () Bool)

(declare-fun c!718433 () Bool)

(assert (=> d!1243723 (= c!718433 ((_ is IntegerValue!24084) (value!242772 tBis!41)))))

(assert (=> d!1243723 (= (inv!21 (value!242772 tBis!41)) e!2621891)))

(declare-fun b!4223001 () Bool)

(assert (=> b!4223001 (= e!2621892 (inv!17 (value!242772 tBis!41)))))

(assert (= (and d!1243723 c!718433) b!4222997))

(assert (= (and d!1243723 (not c!718433)) b!4222999))

(assert (= (and b!4222999 c!718432) b!4223001))

(assert (= (and b!4222999 (not c!718432)) b!4223000))

(assert (= (and b!4223000 (not res!1736044)) b!4222998))

(declare-fun m!4811649 () Bool)

(assert (=> b!4222997 m!4811649))

(declare-fun m!4811651 () Bool)

(assert (=> b!4222998 m!4811651))

(declare-fun m!4811653 () Bool)

(assert (=> b!4223001 m!4811653))

(assert (=> b!4222892 d!1243723))

(declare-fun d!1243725 () Bool)

(declare-fun e!2621893 () Bool)

(assert (=> d!1243725 e!2621893))

(declare-fun res!1736048 () Bool)

(assert (=> d!1243725 (=> res!1736048 e!2621893)))

(declare-fun lt!1502415 () Bool)

(assert (=> d!1243725 (= res!1736048 (not lt!1502415))))

(declare-fun e!2621895 () Bool)

(assert (=> d!1243725 (= lt!1502415 e!2621895)))

(declare-fun res!1736045 () Bool)

(assert (=> d!1243725 (=> res!1736045 e!2621895)))

(assert (=> d!1243725 (= res!1736045 ((_ is Nil!46472) pBis!121))))

(assert (=> d!1243725 (= (isPrefix!4657 pBis!121 input!3517) lt!1502415)))

(declare-fun b!4223004 () Bool)

(declare-fun e!2621894 () Bool)

(assert (=> b!4223004 (= e!2621894 (isPrefix!4657 (tail!6807 pBis!121) (tail!6807 input!3517)))))

(declare-fun b!4223005 () Bool)

(assert (=> b!4223005 (= e!2621893 (>= (size!34123 input!3517) (size!34123 pBis!121)))))

(declare-fun b!4223002 () Bool)

(assert (=> b!4223002 (= e!2621895 e!2621894)))

(declare-fun res!1736047 () Bool)

(assert (=> b!4223002 (=> (not res!1736047) (not e!2621894))))

(assert (=> b!4223002 (= res!1736047 (not ((_ is Nil!46472) input!3517)))))

(declare-fun b!4223003 () Bool)

(declare-fun res!1736046 () Bool)

(assert (=> b!4223003 (=> (not res!1736046) (not e!2621894))))

(assert (=> b!4223003 (= res!1736046 (= (head!8960 pBis!121) (head!8960 input!3517)))))

(assert (= (and d!1243725 (not res!1736045)) b!4223002))

(assert (= (and b!4223002 res!1736047) b!4223003))

(assert (= (and b!4223003 res!1736046) b!4223004))

(assert (= (and d!1243725 (not res!1736048)) b!4223005))

(declare-fun m!4811655 () Bool)

(assert (=> b!4223004 m!4811655))

(assert (=> b!4223004 m!4811639))

(assert (=> b!4223004 m!4811655))

(assert (=> b!4223004 m!4811639))

(declare-fun m!4811657 () Bool)

(assert (=> b!4223004 m!4811657))

(assert (=> b!4223005 m!4811643))

(assert (=> b!4223005 m!4811619))

(declare-fun m!4811659 () Bool)

(assert (=> b!4223003 m!4811659))

(assert (=> b!4223003 m!4811647))

(assert (=> b!4222880 d!1243725))

(declare-fun d!1243727 () Bool)

(declare-fun res!1736053 () Bool)

(declare-fun e!2621898 () Bool)

(assert (=> d!1243727 (=> (not res!1736053) (not e!2621898))))

(declare-fun validRegex!5766 (Regex!12703) Bool)

(assert (=> d!1243727 (= res!1736053 (validRegex!5766 (regex!7798 rBis!178)))))

(assert (=> d!1243727 (= (ruleValid!3510 thiss!26544 rBis!178) e!2621898)))

(declare-fun b!4223010 () Bool)

(declare-fun res!1736054 () Bool)

(assert (=> b!4223010 (=> (not res!1736054) (not e!2621898))))

(declare-fun nullable!4479 (Regex!12703) Bool)

(assert (=> b!4223010 (= res!1736054 (not (nullable!4479 (regex!7798 rBis!178))))))

(declare-fun b!4223011 () Bool)

(assert (=> b!4223011 (= e!2621898 (not (= (tag!8662 rBis!178) (String!54011 ""))))))

(assert (= (and d!1243727 res!1736053) b!4223010))

(assert (= (and b!4223010 res!1736054) b!4223011))

(declare-fun m!4811661 () Bool)

(assert (=> d!1243727 m!4811661))

(declare-fun m!4811663 () Bool)

(assert (=> b!4223010 m!4811663))

(assert (=> b!4222881 d!1243727))

(declare-fun d!1243729 () Bool)

(declare-fun e!2621958 () Bool)

(assert (=> d!1243729 e!2621958))

(declare-fun res!1736150 () Bool)

(assert (=> d!1243729 (=> res!1736150 e!2621958)))

(declare-fun lt!1502470 () Option!9986)

(declare-fun isEmpty!27536 (Option!9986) Bool)

(assert (=> d!1243729 (= res!1736150 (isEmpty!27536 lt!1502470))))

(declare-fun e!2621959 () Option!9986)

(assert (=> d!1243729 (= lt!1502470 e!2621959)))

(declare-fun c!718446 () Bool)

(declare-datatypes ((tuple2!44194 0))(
  ( (tuple2!44195 (_1!25231 List!46596) (_2!25231 List!46596)) )
))
(declare-fun lt!1502471 () tuple2!44194)

(declare-fun isEmpty!27537 (List!46596) Bool)

(assert (=> d!1243729 (= c!718446 (isEmpty!27537 (_1!25231 lt!1502471)))))

(declare-fun findLongestMatch!1584 (Regex!12703 List!46596) tuple2!44194)

(assert (=> d!1243729 (= lt!1502471 (findLongestMatch!1584 (regex!7798 rBis!178) input!3517))))

(assert (=> d!1243729 (ruleValid!3510 thiss!26544 rBis!178)))

(assert (=> d!1243729 (= (maxPrefixOneRule!3388 thiss!26544 rBis!178 input!3517) lt!1502470)))

(declare-fun b!4223130 () Bool)

(declare-fun apply!10711 (TokenValueInjection!15484 BalanceConc!27612) TokenValue!8028)

(declare-fun seqFromList!5771 (List!46596) BalanceConc!27612)

(declare-fun size!34125 (BalanceConc!27612) Int)

(assert (=> b!4223130 (= e!2621959 (Some!9985 (tuple2!44191 (Token!14299 (apply!10711 (transformation!7798 rBis!178) (seqFromList!5771 (_1!25231 lt!1502471))) rBis!178 (size!34125 (seqFromList!5771 (_1!25231 lt!1502471))) (_1!25231 lt!1502471)) (_2!25231 lt!1502471))))))

(declare-fun lt!1502468 () Unit!65641)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1644 (Regex!12703 List!46596) Unit!65641)

(assert (=> b!4223130 (= lt!1502468 (longestMatchIsAcceptedByMatchOrIsEmpty!1644 (regex!7798 rBis!178) input!3517))))

(declare-fun res!1736154 () Bool)

(declare-fun findLongestMatchInner!1671 (Regex!12703 List!46596 Int List!46596 List!46596 Int) tuple2!44194)

(assert (=> b!4223130 (= res!1736154 (isEmpty!27537 (_1!25231 (findLongestMatchInner!1671 (regex!7798 rBis!178) Nil!46472 (size!34123 Nil!46472) input!3517 input!3517 (size!34123 input!3517)))))))

(declare-fun e!2621961 () Bool)

(assert (=> b!4223130 (=> res!1736154 e!2621961)))

(assert (=> b!4223130 e!2621961))

(declare-fun lt!1502472 () Unit!65641)

(assert (=> b!4223130 (= lt!1502472 lt!1502468)))

(declare-fun lt!1502469 () Unit!65641)

(declare-fun lemmaSemiInverse!2512 (TokenValueInjection!15484 BalanceConc!27612) Unit!65641)

(assert (=> b!4223130 (= lt!1502469 (lemmaSemiInverse!2512 (transformation!7798 rBis!178) (seqFromList!5771 (_1!25231 lt!1502471))))))

(declare-fun b!4223131 () Bool)

(assert (=> b!4223131 (= e!2621959 None!9985)))

(declare-fun b!4223132 () Bool)

(declare-fun res!1736151 () Bool)

(declare-fun e!2621960 () Bool)

(assert (=> b!4223132 (=> (not res!1736151) (not e!2621960))))

(declare-fun get!15125 (Option!9986) tuple2!44190)

(assert (=> b!4223132 (= res!1736151 (< (size!34123 (_2!25229 (get!15125 lt!1502470))) (size!34123 input!3517)))))

(declare-fun b!4223133 () Bool)

(declare-fun res!1736152 () Bool)

(assert (=> b!4223133 (=> (not res!1736152) (not e!2621960))))

(assert (=> b!4223133 (= res!1736152 (= (value!242772 (_1!25229 (get!15125 lt!1502470))) (apply!10711 (transformation!7798 (rule!10938 (_1!25229 (get!15125 lt!1502470)))) (seqFromList!5771 (originalCharacters!8180 (_1!25229 (get!15125 lt!1502470)))))))))

(declare-fun b!4223134 () Bool)

(declare-fun matchR!6390 (Regex!12703 List!46596) Bool)

(assert (=> b!4223134 (= e!2621961 (matchR!6390 (regex!7798 rBis!178) (_1!25231 (findLongestMatchInner!1671 (regex!7798 rBis!178) Nil!46472 (size!34123 Nil!46472) input!3517 input!3517 (size!34123 input!3517)))))))

(declare-fun b!4223135 () Bool)

(declare-fun res!1736149 () Bool)

(assert (=> b!4223135 (=> (not res!1736149) (not e!2621960))))

(assert (=> b!4223135 (= res!1736149 (= (rule!10938 (_1!25229 (get!15125 lt!1502470))) rBis!178))))

(declare-fun b!4223136 () Bool)

(assert (=> b!4223136 (= e!2621960 (= (size!34121 (_1!25229 (get!15125 lt!1502470))) (size!34123 (originalCharacters!8180 (_1!25229 (get!15125 lt!1502470))))))))

(declare-fun b!4223137 () Bool)

(assert (=> b!4223137 (= e!2621958 e!2621960)))

(declare-fun res!1736153 () Bool)

(assert (=> b!4223137 (=> (not res!1736153) (not e!2621960))))

(assert (=> b!4223137 (= res!1736153 (matchR!6390 (regex!7798 rBis!178) (list!16818 (charsOf!5221 (_1!25229 (get!15125 lt!1502470))))))))

(declare-fun b!4223138 () Bool)

(declare-fun res!1736155 () Bool)

(assert (=> b!4223138 (=> (not res!1736155) (not e!2621960))))

(assert (=> b!4223138 (= res!1736155 (= (++!11872 (list!16818 (charsOf!5221 (_1!25229 (get!15125 lt!1502470)))) (_2!25229 (get!15125 lt!1502470))) input!3517))))

(assert (= (and d!1243729 c!718446) b!4223131))

(assert (= (and d!1243729 (not c!718446)) b!4223130))

(assert (= (and b!4223130 (not res!1736154)) b!4223134))

(assert (= (and d!1243729 (not res!1736150)) b!4223137))

(assert (= (and b!4223137 res!1736153) b!4223138))

(assert (= (and b!4223138 res!1736155) b!4223132))

(assert (= (and b!4223132 res!1736151) b!4223135))

(assert (= (and b!4223135 res!1736149) b!4223133))

(assert (= (and b!4223133 res!1736152) b!4223136))

(declare-fun m!4811801 () Bool)

(assert (=> b!4223133 m!4811801))

(declare-fun m!4811803 () Bool)

(assert (=> b!4223133 m!4811803))

(assert (=> b!4223133 m!4811803))

(declare-fun m!4811805 () Bool)

(assert (=> b!4223133 m!4811805))

(declare-fun m!4811807 () Bool)

(assert (=> b!4223130 m!4811807))

(declare-fun m!4811809 () Bool)

(assert (=> b!4223130 m!4811809))

(declare-fun m!4811811 () Bool)

(assert (=> b!4223130 m!4811811))

(assert (=> b!4223130 m!4811809))

(declare-fun m!4811813 () Bool)

(assert (=> b!4223130 m!4811813))

(declare-fun m!4811815 () Bool)

(assert (=> b!4223130 m!4811815))

(assert (=> b!4223130 m!4811809))

(declare-fun m!4811817 () Bool)

(assert (=> b!4223130 m!4811817))

(declare-fun m!4811819 () Bool)

(assert (=> b!4223130 m!4811819))

(assert (=> b!4223130 m!4811643))

(declare-fun m!4811821 () Bool)

(assert (=> b!4223130 m!4811821))

(assert (=> b!4223130 m!4811819))

(assert (=> b!4223130 m!4811809))

(assert (=> b!4223130 m!4811643))

(declare-fun m!4811823 () Bool)

(assert (=> d!1243729 m!4811823))

(declare-fun m!4811825 () Bool)

(assert (=> d!1243729 m!4811825))

(declare-fun m!4811827 () Bool)

(assert (=> d!1243729 m!4811827))

(assert (=> d!1243729 m!4811477))

(assert (=> b!4223136 m!4811801))

(declare-fun m!4811829 () Bool)

(assert (=> b!4223136 m!4811829))

(assert (=> b!4223134 m!4811819))

(assert (=> b!4223134 m!4811643))

(assert (=> b!4223134 m!4811819))

(assert (=> b!4223134 m!4811643))

(assert (=> b!4223134 m!4811821))

(declare-fun m!4811831 () Bool)

(assert (=> b!4223134 m!4811831))

(assert (=> b!4223138 m!4811801))

(declare-fun m!4811833 () Bool)

(assert (=> b!4223138 m!4811833))

(assert (=> b!4223138 m!4811833))

(declare-fun m!4811835 () Bool)

(assert (=> b!4223138 m!4811835))

(assert (=> b!4223138 m!4811835))

(declare-fun m!4811837 () Bool)

(assert (=> b!4223138 m!4811837))

(assert (=> b!4223137 m!4811801))

(assert (=> b!4223137 m!4811833))

(assert (=> b!4223137 m!4811833))

(assert (=> b!4223137 m!4811835))

(assert (=> b!4223137 m!4811835))

(declare-fun m!4811839 () Bool)

(assert (=> b!4223137 m!4811839))

(assert (=> b!4223135 m!4811801))

(assert (=> b!4223132 m!4811801))

(declare-fun m!4811841 () Bool)

(assert (=> b!4223132 m!4811841))

(assert (=> b!4223132 m!4811643))

(assert (=> b!4222870 d!1243729))

(declare-fun d!1243757 () Bool)

(declare-fun e!2621986 () Bool)

(assert (=> d!1243757 e!2621986))

(declare-fun res!1736160 () Bool)

(assert (=> d!1243757 (=> res!1736160 e!2621986)))

(declare-fun lt!1502473 () Bool)

(assert (=> d!1243757 (= res!1736160 (not lt!1502473))))

(declare-fun e!2621988 () Bool)

(assert (=> d!1243757 (= lt!1502473 e!2621988)))

(declare-fun res!1736157 () Bool)

(assert (=> d!1243757 (=> res!1736157 e!2621988)))

(assert (=> d!1243757 (= res!1736157 ((_ is Nil!46472) input!3517))))

(assert (=> d!1243757 (= (isPrefix!4657 input!3517 input!3517) lt!1502473)))

(declare-fun b!4223180 () Bool)

(declare-fun e!2621987 () Bool)

(assert (=> b!4223180 (= e!2621987 (isPrefix!4657 (tail!6807 input!3517) (tail!6807 input!3517)))))

(declare-fun b!4223181 () Bool)

(assert (=> b!4223181 (= e!2621986 (>= (size!34123 input!3517) (size!34123 input!3517)))))

(declare-fun b!4223178 () Bool)

(assert (=> b!4223178 (= e!2621988 e!2621987)))

(declare-fun res!1736159 () Bool)

(assert (=> b!4223178 (=> (not res!1736159) (not e!2621987))))

(assert (=> b!4223178 (= res!1736159 (not ((_ is Nil!46472) input!3517)))))

(declare-fun b!4223179 () Bool)

(declare-fun res!1736158 () Bool)

(assert (=> b!4223179 (=> (not res!1736158) (not e!2621987))))

(assert (=> b!4223179 (= res!1736158 (= (head!8960 input!3517) (head!8960 input!3517)))))

(assert (= (and d!1243757 (not res!1736157)) b!4223178))

(assert (= (and b!4223178 res!1736159) b!4223179))

(assert (= (and b!4223179 res!1736158) b!4223180))

(assert (= (and d!1243757 (not res!1736160)) b!4223181))

(assert (=> b!4223180 m!4811639))

(assert (=> b!4223180 m!4811639))

(assert (=> b!4223180 m!4811639))

(assert (=> b!4223180 m!4811639))

(declare-fun m!4811847 () Bool)

(assert (=> b!4223180 m!4811847))

(assert (=> b!4223181 m!4811643))

(assert (=> b!4223181 m!4811643))

(assert (=> b!4223179 m!4811647))

(assert (=> b!4223179 m!4811647))

(assert (=> b!4222870 d!1243757))

(declare-fun d!1243759 () Bool)

(assert (=> d!1243759 (isPrefix!4657 input!3517 input!3517)))

(declare-fun lt!1502476 () Unit!65641)

(declare-fun choose!25874 (List!46596 List!46596) Unit!65641)

(assert (=> d!1243759 (= lt!1502476 (choose!25874 input!3517 input!3517))))

(assert (=> d!1243759 (= (lemmaIsPrefixRefl!3074 input!3517 input!3517) lt!1502476)))

(declare-fun bs!597763 () Bool)

(assert (= bs!597763 d!1243759))

(assert (=> bs!597763 m!4811499))

(declare-fun m!4811849 () Bool)

(assert (=> bs!597763 m!4811849))

(assert (=> b!4222870 d!1243759))

(declare-fun b!4223210 () Bool)

(declare-fun res!1736177 () Bool)

(declare-fun e!2622001 () Bool)

(assert (=> b!4223210 (=> (not res!1736177) (not e!2622001))))

(declare-fun lt!1502491 () Option!9986)

(assert (=> b!4223210 (= res!1736177 (< (size!34123 (_2!25229 (get!15125 lt!1502491))) (size!34123 input!3517)))))

(declare-fun b!4223211 () Bool)

(declare-fun res!1736176 () Bool)

(assert (=> b!4223211 (=> (not res!1736176) (not e!2622001))))

(assert (=> b!4223211 (= res!1736176 (= (value!242772 (_1!25229 (get!15125 lt!1502491))) (apply!10711 (transformation!7798 (rule!10938 (_1!25229 (get!15125 lt!1502491)))) (seqFromList!5771 (originalCharacters!8180 (_1!25229 (get!15125 lt!1502491)))))))))

(declare-fun b!4223212 () Bool)

(declare-fun res!1736179 () Bool)

(assert (=> b!4223212 (=> (not res!1736179) (not e!2622001))))

(assert (=> b!4223212 (= res!1736179 (= (++!11872 (list!16818 (charsOf!5221 (_1!25229 (get!15125 lt!1502491)))) (_2!25229 (get!15125 lt!1502491))) input!3517))))

(declare-fun bm!293167 () Bool)

(declare-fun call!293172 () Option!9986)

(assert (=> bm!293167 (= call!293172 (maxPrefixOneRule!3388 thiss!26544 (h!51893 rules!3967) input!3517))))

(declare-fun b!4223213 () Bool)

(declare-fun res!1736175 () Bool)

(assert (=> b!4223213 (=> (not res!1736175) (not e!2622001))))

(assert (=> b!4223213 (= res!1736175 (= (list!16818 (charsOf!5221 (_1!25229 (get!15125 lt!1502491)))) (originalCharacters!8180 (_1!25229 (get!15125 lt!1502491)))))))

(declare-fun d!1243761 () Bool)

(declare-fun e!2622000 () Bool)

(assert (=> d!1243761 e!2622000))

(declare-fun res!1736180 () Bool)

(assert (=> d!1243761 (=> res!1736180 e!2622000)))

(assert (=> d!1243761 (= res!1736180 (isEmpty!27536 lt!1502491))))

(declare-fun e!2621999 () Option!9986)

(assert (=> d!1243761 (= lt!1502491 e!2621999)))

(declare-fun c!718449 () Bool)

(assert (=> d!1243761 (= c!718449 (and ((_ is Cons!46473) rules!3967) ((_ is Nil!46473) (t!349142 rules!3967))))))

(declare-fun lt!1502489 () Unit!65641)

(declare-fun lt!1502490 () Unit!65641)

(assert (=> d!1243761 (= lt!1502489 lt!1502490)))

(assert (=> d!1243761 (isPrefix!4657 input!3517 input!3517)))

(assert (=> d!1243761 (= lt!1502490 (lemmaIsPrefixRefl!3074 input!3517 input!3517))))

(declare-fun rulesValidInductive!2902 (LexerInterface!7393 List!46597) Bool)

(assert (=> d!1243761 (rulesValidInductive!2902 thiss!26544 rules!3967)))

(assert (=> d!1243761 (= (maxPrefix!4433 thiss!26544 rules!3967 input!3517) lt!1502491)))

(declare-fun b!4223214 () Bool)

(assert (=> b!4223214 (= e!2621999 call!293172)))

(declare-fun b!4223215 () Bool)

(assert (=> b!4223215 (= e!2622000 e!2622001)))

(declare-fun res!1736181 () Bool)

(assert (=> b!4223215 (=> (not res!1736181) (not e!2622001))))

(declare-fun isDefined!7412 (Option!9986) Bool)

(assert (=> b!4223215 (= res!1736181 (isDefined!7412 lt!1502491))))

(declare-fun b!4223216 () Bool)

(declare-fun res!1736178 () Bool)

(assert (=> b!4223216 (=> (not res!1736178) (not e!2622001))))

(assert (=> b!4223216 (= res!1736178 (matchR!6390 (regex!7798 (rule!10938 (_1!25229 (get!15125 lt!1502491)))) (list!16818 (charsOf!5221 (_1!25229 (get!15125 lt!1502491))))))))

(declare-fun b!4223217 () Bool)

(declare-fun lt!1502488 () Option!9986)

(declare-fun lt!1502487 () Option!9986)

(assert (=> b!4223217 (= e!2621999 (ite (and ((_ is None!9985) lt!1502488) ((_ is None!9985) lt!1502487)) None!9985 (ite ((_ is None!9985) lt!1502487) lt!1502488 (ite ((_ is None!9985) lt!1502488) lt!1502487 (ite (>= (size!34121 (_1!25229 (v!40881 lt!1502488))) (size!34121 (_1!25229 (v!40881 lt!1502487)))) lt!1502488 lt!1502487)))))))

(assert (=> b!4223217 (= lt!1502488 call!293172)))

(assert (=> b!4223217 (= lt!1502487 (maxPrefix!4433 thiss!26544 (t!349142 rules!3967) input!3517))))

(declare-fun b!4223218 () Bool)

(assert (=> b!4223218 (= e!2622001 (contains!9621 rules!3967 (rule!10938 (_1!25229 (get!15125 lt!1502491)))))))

(assert (= (and d!1243761 c!718449) b!4223214))

(assert (= (and d!1243761 (not c!718449)) b!4223217))

(assert (= (or b!4223214 b!4223217) bm!293167))

(assert (= (and d!1243761 (not res!1736180)) b!4223215))

(assert (= (and b!4223215 res!1736181) b!4223213))

(assert (= (and b!4223213 res!1736175) b!4223210))

(assert (= (and b!4223210 res!1736177) b!4223212))

(assert (= (and b!4223212 res!1736179) b!4223211))

(assert (= (and b!4223211 res!1736176) b!4223216))

(assert (= (and b!4223216 res!1736178) b!4223218))

(declare-fun m!4811851 () Bool)

(assert (=> b!4223211 m!4811851))

(declare-fun m!4811853 () Bool)

(assert (=> b!4223211 m!4811853))

(assert (=> b!4223211 m!4811853))

(declare-fun m!4811855 () Bool)

(assert (=> b!4223211 m!4811855))

(declare-fun m!4811857 () Bool)

(assert (=> b!4223217 m!4811857))

(assert (=> b!4223213 m!4811851))

(declare-fun m!4811859 () Bool)

(assert (=> b!4223213 m!4811859))

(assert (=> b!4223213 m!4811859))

(declare-fun m!4811861 () Bool)

(assert (=> b!4223213 m!4811861))

(declare-fun m!4811863 () Bool)

(assert (=> d!1243761 m!4811863))

(assert (=> d!1243761 m!4811499))

(assert (=> d!1243761 m!4811501))

(declare-fun m!4811865 () Bool)

(assert (=> d!1243761 m!4811865))

(assert (=> b!4223210 m!4811851))

(declare-fun m!4811867 () Bool)

(assert (=> b!4223210 m!4811867))

(assert (=> b!4223210 m!4811643))

(assert (=> b!4223212 m!4811851))

(assert (=> b!4223212 m!4811859))

(assert (=> b!4223212 m!4811859))

(assert (=> b!4223212 m!4811861))

(assert (=> b!4223212 m!4811861))

(declare-fun m!4811869 () Bool)

(assert (=> b!4223212 m!4811869))

(declare-fun m!4811871 () Bool)

(assert (=> b!4223215 m!4811871))

(declare-fun m!4811873 () Bool)

(assert (=> bm!293167 m!4811873))

(assert (=> b!4223218 m!4811851))

(declare-fun m!4811875 () Bool)

(assert (=> b!4223218 m!4811875))

(assert (=> b!4223216 m!4811851))

(assert (=> b!4223216 m!4811859))

(assert (=> b!4223216 m!4811859))

(assert (=> b!4223216 m!4811861))

(assert (=> b!4223216 m!4811861))

(declare-fun m!4811877 () Bool)

(assert (=> b!4223216 m!4811877))

(assert (=> b!4222879 d!1243761))

(declare-fun d!1243763 () Bool)

(declare-fun res!1736186 () Bool)

(declare-fun e!2622004 () Bool)

(assert (=> d!1243763 (=> (not res!1736186) (not e!2622004))))

(assert (=> d!1243763 (= res!1736186 (not (isEmpty!27537 (originalCharacters!8180 tBis!41))))))

(assert (=> d!1243763 (= (inv!61145 tBis!41) e!2622004)))

(declare-fun b!4223223 () Bool)

(declare-fun res!1736187 () Bool)

(assert (=> b!4223223 (=> (not res!1736187) (not e!2622004))))

(assert (=> b!4223223 (= res!1736187 (= (originalCharacters!8180 tBis!41) (list!16818 (dynLambda!20006 (toChars!10381 (transformation!7798 (rule!10938 tBis!41))) (value!242772 tBis!41)))))))

(declare-fun b!4223224 () Bool)

(assert (=> b!4223224 (= e!2622004 (= (size!34121 tBis!41) (size!34123 (originalCharacters!8180 tBis!41))))))

(assert (= (and d!1243763 res!1736186) b!4223223))

(assert (= (and b!4223223 res!1736187) b!4223224))

(declare-fun b_lambda!124481 () Bool)

(assert (=> (not b_lambda!124481) (not b!4223223)))

(assert (=> b!4223223 t!349160))

(declare-fun b_and!333369 () Bool)

(assert (= b_and!333349 (and (=> t!349160 result!309270) b_and!333369)))

(assert (=> b!4223223 t!349162))

(declare-fun b_and!333371 () Bool)

(assert (= b_and!333351 (and (=> t!349162 result!309274) b_and!333371)))

(assert (=> b!4223223 t!349164))

(declare-fun b_and!333373 () Bool)

(assert (= b_and!333353 (and (=> t!349164 result!309276) b_and!333373)))

(assert (=> b!4223223 t!349166))

(declare-fun b_and!333375 () Bool)

(assert (= b_and!333355 (and (=> t!349166 result!309278) b_and!333375)))

(declare-fun m!4811879 () Bool)

(assert (=> d!1243763 m!4811879))

(assert (=> b!4223223 m!4811579))

(assert (=> b!4223223 m!4811579))

(declare-fun m!4811881 () Bool)

(assert (=> b!4223223 m!4811881))

(declare-fun m!4811883 () Bool)

(assert (=> b!4223224 m!4811883))

(assert (=> start!403646 d!1243763))

(declare-fun d!1243765 () Bool)

(declare-fun res!1736188 () Bool)

(declare-fun e!2622005 () Bool)

(assert (=> d!1243765 (=> (not res!1736188) (not e!2622005))))

(assert (=> d!1243765 (= res!1736188 (not (isEmpty!27537 (originalCharacters!8180 t!8364))))))

(assert (=> d!1243765 (= (inv!61145 t!8364) e!2622005)))

(declare-fun b!4223225 () Bool)

(declare-fun res!1736189 () Bool)

(assert (=> b!4223225 (=> (not res!1736189) (not e!2622005))))

(assert (=> b!4223225 (= res!1736189 (= (originalCharacters!8180 t!8364) (list!16818 (dynLambda!20006 (toChars!10381 (transformation!7798 (rule!10938 t!8364))) (value!242772 t!8364)))))))

(declare-fun b!4223226 () Bool)

(assert (=> b!4223226 (= e!2622005 (= (size!34121 t!8364) (size!34123 (originalCharacters!8180 t!8364))))))

(assert (= (and d!1243765 res!1736188) b!4223225))

(assert (= (and b!4223225 res!1736189) b!4223226))

(declare-fun b_lambda!124483 () Bool)

(assert (=> (not b_lambda!124483) (not b!4223225)))

(declare-fun t!349172 () Bool)

(declare-fun tb!253767 () Bool)

(assert (=> (and b!4222886 (= (toChars!10381 (transformation!7798 (rule!10938 t!8364))) (toChars!10381 (transformation!7798 (rule!10938 t!8364)))) t!349172) tb!253767))

(declare-fun b!4223227 () Bool)

(declare-fun e!2622006 () Bool)

(declare-fun tp!1292413 () Bool)

(assert (=> b!4223227 (= e!2622006 (and (inv!61148 (c!718413 (dynLambda!20006 (toChars!10381 (transformation!7798 (rule!10938 t!8364))) (value!242772 t!8364)))) tp!1292413))))

(declare-fun result!309290 () Bool)

(assert (=> tb!253767 (= result!309290 (and (inv!61149 (dynLambda!20006 (toChars!10381 (transformation!7798 (rule!10938 t!8364))) (value!242772 t!8364))) e!2622006))))

(assert (= tb!253767 b!4223227))

(declare-fun m!4811885 () Bool)

(assert (=> b!4223227 m!4811885))

(declare-fun m!4811887 () Bool)

(assert (=> tb!253767 m!4811887))

(assert (=> b!4223225 t!349172))

(declare-fun b_and!333377 () Bool)

(assert (= b_and!333369 (and (=> t!349172 result!309290) b_and!333377)))

(declare-fun t!349174 () Bool)

(declare-fun tb!253769 () Bool)

(assert (=> (and b!4222890 (= (toChars!10381 (transformation!7798 rBis!178)) (toChars!10381 (transformation!7798 (rule!10938 t!8364)))) t!349174) tb!253769))

(declare-fun result!309292 () Bool)

(assert (= result!309292 result!309290))

(assert (=> b!4223225 t!349174))

(declare-fun b_and!333379 () Bool)

(assert (= b_and!333371 (and (=> t!349174 result!309292) b_and!333379)))

(declare-fun t!349176 () Bool)

(declare-fun tb!253771 () Bool)

(assert (=> (and b!4222876 (= (toChars!10381 (transformation!7798 (h!51893 rules!3967))) (toChars!10381 (transformation!7798 (rule!10938 t!8364)))) t!349176) tb!253771))

(declare-fun result!309294 () Bool)

(assert (= result!309294 result!309290))

(assert (=> b!4223225 t!349176))

(declare-fun b_and!333381 () Bool)

(assert (= b_and!333373 (and (=> t!349176 result!309294) b_and!333381)))

(declare-fun tb!253773 () Bool)

(declare-fun t!349178 () Bool)

(assert (=> (and b!4222893 (= (toChars!10381 (transformation!7798 (rule!10938 tBis!41))) (toChars!10381 (transformation!7798 (rule!10938 t!8364)))) t!349178) tb!253773))

(declare-fun result!309296 () Bool)

(assert (= result!309296 result!309290))

(assert (=> b!4223225 t!349178))

(declare-fun b_and!333383 () Bool)

(assert (= b_and!333375 (and (=> t!349178 result!309296) b_and!333383)))

(declare-fun m!4811889 () Bool)

(assert (=> d!1243765 m!4811889))

(declare-fun m!4811891 () Bool)

(assert (=> b!4223225 m!4811891))

(assert (=> b!4223225 m!4811891))

(declare-fun m!4811893 () Bool)

(assert (=> b!4223225 m!4811893))

(declare-fun m!4811895 () Bool)

(assert (=> b!4223226 m!4811895))

(assert (=> start!403646 d!1243765))

(declare-fun d!1243767 () Bool)

(declare-fun lt!1502494 () Bool)

(declare-fun content!7301 (List!46597) (InoxSet Rule!15396))

(assert (=> d!1243767 (= lt!1502494 (select (content!7301 rules!3967) rBis!178))))

(declare-fun e!2622012 () Bool)

(assert (=> d!1243767 (= lt!1502494 e!2622012)))

(declare-fun res!1736195 () Bool)

(assert (=> d!1243767 (=> (not res!1736195) (not e!2622012))))

(assert (=> d!1243767 (= res!1736195 ((_ is Cons!46473) rules!3967))))

(assert (=> d!1243767 (= (contains!9621 rules!3967 rBis!178) lt!1502494)))

(declare-fun b!4223232 () Bool)

(declare-fun e!2622011 () Bool)

(assert (=> b!4223232 (= e!2622012 e!2622011)))

(declare-fun res!1736194 () Bool)

(assert (=> b!4223232 (=> res!1736194 e!2622011)))

(assert (=> b!4223232 (= res!1736194 (= (h!51893 rules!3967) rBis!178))))

(declare-fun b!4223233 () Bool)

(assert (=> b!4223233 (= e!2622011 (contains!9621 (t!349142 rules!3967) rBis!178))))

(assert (= (and d!1243767 res!1736195) b!4223232))

(assert (= (and b!4223232 (not res!1736194)) b!4223233))

(declare-fun m!4811897 () Bool)

(assert (=> d!1243767 m!4811897))

(declare-fun m!4811899 () Bool)

(assert (=> d!1243767 m!4811899))

(declare-fun m!4811901 () Bool)

(assert (=> b!4223233 m!4811901))

(assert (=> b!4222888 d!1243767))

(declare-fun d!1243769 () Bool)

(declare-fun res!1736198 () Bool)

(declare-fun e!2622015 () Bool)

(assert (=> d!1243769 (=> (not res!1736198) (not e!2622015))))

(declare-fun rulesValid!3060 (LexerInterface!7393 List!46597) Bool)

(assert (=> d!1243769 (= res!1736198 (rulesValid!3060 thiss!26544 rules!3967))))

(assert (=> d!1243769 (= (rulesInvariant!6604 thiss!26544 rules!3967) e!2622015)))

(declare-fun b!4223236 () Bool)

(declare-datatypes ((List!46599 0))(
  ( (Nil!46475) (Cons!46475 (h!51895 String!54010) (t!349184 List!46599)) )
))
(declare-fun noDuplicateTag!3221 (LexerInterface!7393 List!46597 List!46599) Bool)

(assert (=> b!4223236 (= e!2622015 (noDuplicateTag!3221 thiss!26544 rules!3967 Nil!46475))))

(assert (= (and d!1243769 res!1736198) b!4223236))

(declare-fun m!4811903 () Bool)

(assert (=> d!1243769 m!4811903))

(declare-fun m!4811905 () Bool)

(assert (=> b!4223236 m!4811905))

(assert (=> b!4222889 d!1243769))

(declare-fun b!4223241 () Bool)

(declare-fun e!2622018 () Bool)

(declare-fun tp!1292416 () Bool)

(assert (=> b!4223241 (= e!2622018 (and tp_is_empty!22373 tp!1292416))))

(assert (=> b!4222887 (= tp!1292351 e!2622018)))

(assert (= (and b!4222887 ((_ is Cons!46472) (t!349141 suffix!1557))) b!4223241))

(declare-fun b!4223242 () Bool)

(declare-fun e!2622019 () Bool)

(declare-fun tp!1292417 () Bool)

(assert (=> b!4223242 (= e!2622019 (and tp_is_empty!22373 tp!1292417))))

(assert (=> b!4222877 (= tp!1292343 e!2622019)))

(assert (= (and b!4222877 ((_ is Cons!46472) (t!349141 p!3001))) b!4223242))

(declare-fun b!4223253 () Bool)

(declare-fun b_free!124175 () Bool)

(declare-fun b_next!124879 () Bool)

(assert (=> b!4223253 (= b_free!124175 (not b_next!124879))))

(declare-fun tp!1292427 () Bool)

(declare-fun b_and!333385 () Bool)

(assert (=> b!4223253 (= tp!1292427 b_and!333385)))

(declare-fun b_free!124177 () Bool)

(declare-fun b_next!124881 () Bool)

(assert (=> b!4223253 (= b_free!124177 (not b_next!124881))))

(declare-fun t!349180 () Bool)

(declare-fun tb!253775 () Bool)

(assert (=> (and b!4223253 (= (toChars!10381 (transformation!7798 (h!51893 (t!349142 rules!3967)))) (toChars!10381 (transformation!7798 (rule!10938 tBis!41)))) t!349180) tb!253775))

(declare-fun result!309302 () Bool)

(assert (= result!309302 result!309270))

(assert (=> d!1243679 t!349180))

(assert (=> b!4223223 t!349180))

(declare-fun tb!253777 () Bool)

(declare-fun t!349182 () Bool)

(assert (=> (and b!4223253 (= (toChars!10381 (transformation!7798 (h!51893 (t!349142 rules!3967)))) (toChars!10381 (transformation!7798 (rule!10938 t!8364)))) t!349182) tb!253777))

(declare-fun result!309304 () Bool)

(assert (= result!309304 result!309290))

(assert (=> b!4223225 t!349182))

(declare-fun b_and!333387 () Bool)

(declare-fun tp!1292426 () Bool)

(assert (=> b!4223253 (= tp!1292426 (and (=> t!349180 result!309302) (=> t!349182 result!309304) b_and!333387))))

(declare-fun e!2622029 () Bool)

(assert (=> b!4223253 (= e!2622029 (and tp!1292427 tp!1292426))))

(declare-fun b!4223252 () Bool)

(declare-fun e!2622031 () Bool)

(declare-fun tp!1292428 () Bool)

(assert (=> b!4223252 (= e!2622031 (and tp!1292428 (inv!61141 (tag!8662 (h!51893 (t!349142 rules!3967)))) (inv!61144 (transformation!7798 (h!51893 (t!349142 rules!3967)))) e!2622029))))

(declare-fun b!4223251 () Bool)

(declare-fun e!2622028 () Bool)

(declare-fun tp!1292429 () Bool)

(assert (=> b!4223251 (= e!2622028 (and e!2622031 tp!1292429))))

(assert (=> b!4222875 (= tp!1292347 e!2622028)))

(assert (= b!4223252 b!4223253))

(assert (= b!4223251 b!4223252))

(assert (= (and b!4222875 ((_ is Cons!46473) (t!349142 rules!3967))) b!4223251))

(declare-fun m!4811907 () Bool)

(assert (=> b!4223252 m!4811907))

(declare-fun m!4811909 () Bool)

(assert (=> b!4223252 m!4811909))

(declare-fun b!4223266 () Bool)

(declare-fun e!2622034 () Bool)

(declare-fun tp!1292441 () Bool)

(assert (=> b!4223266 (= e!2622034 tp!1292441)))

(declare-fun b!4223267 () Bool)

(declare-fun tp!1292440 () Bool)

(declare-fun tp!1292443 () Bool)

(assert (=> b!4223267 (= e!2622034 (and tp!1292440 tp!1292443))))

(assert (=> b!4222896 (= tp!1292349 e!2622034)))

(declare-fun b!4223265 () Bool)

(declare-fun tp!1292444 () Bool)

(declare-fun tp!1292442 () Bool)

(assert (=> b!4223265 (= e!2622034 (and tp!1292444 tp!1292442))))

(declare-fun b!4223264 () Bool)

(assert (=> b!4223264 (= e!2622034 tp_is_empty!22373)))

(assert (= (and b!4222896 ((_ is ElementMatch!12703) (regex!7798 (h!51893 rules!3967)))) b!4223264))

(assert (= (and b!4222896 ((_ is Concat!20732) (regex!7798 (h!51893 rules!3967)))) b!4223265))

(assert (= (and b!4222896 ((_ is Star!12703) (regex!7798 (h!51893 rules!3967)))) b!4223266))

(assert (= (and b!4222896 ((_ is Union!12703) (regex!7798 (h!51893 rules!3967)))) b!4223267))

(declare-fun b!4223270 () Bool)

(declare-fun e!2622035 () Bool)

(declare-fun tp!1292446 () Bool)

(assert (=> b!4223270 (= e!2622035 tp!1292446)))

(declare-fun b!4223271 () Bool)

(declare-fun tp!1292445 () Bool)

(declare-fun tp!1292448 () Bool)

(assert (=> b!4223271 (= e!2622035 (and tp!1292445 tp!1292448))))

(assert (=> b!4222895 (= tp!1292335 e!2622035)))

(declare-fun b!4223269 () Bool)

(declare-fun tp!1292449 () Bool)

(declare-fun tp!1292447 () Bool)

(assert (=> b!4223269 (= e!2622035 (and tp!1292449 tp!1292447))))

(declare-fun b!4223268 () Bool)

(assert (=> b!4223268 (= e!2622035 tp_is_empty!22373)))

(assert (= (and b!4222895 ((_ is ElementMatch!12703) (regex!7798 (rule!10938 t!8364)))) b!4223268))

(assert (= (and b!4222895 ((_ is Concat!20732) (regex!7798 (rule!10938 t!8364)))) b!4223269))

(assert (= (and b!4222895 ((_ is Star!12703) (regex!7798 (rule!10938 t!8364)))) b!4223270))

(assert (= (and b!4222895 ((_ is Union!12703) (regex!7798 (rule!10938 t!8364)))) b!4223271))

(declare-fun b!4223272 () Bool)

(declare-fun e!2622036 () Bool)

(declare-fun tp!1292450 () Bool)

(assert (=> b!4223272 (= e!2622036 (and tp_is_empty!22373 tp!1292450))))

(assert (=> b!4222884 (= tp!1292339 e!2622036)))

(assert (= (and b!4222884 ((_ is Cons!46472) (t!349141 suffixBis!41))) b!4223272))

(declare-fun b!4223275 () Bool)

(declare-fun e!2622037 () Bool)

(declare-fun tp!1292452 () Bool)

(assert (=> b!4223275 (= e!2622037 tp!1292452)))

(declare-fun b!4223276 () Bool)

(declare-fun tp!1292451 () Bool)

(declare-fun tp!1292454 () Bool)

(assert (=> b!4223276 (= e!2622037 (and tp!1292451 tp!1292454))))

(assert (=> b!4222885 (= tp!1292338 e!2622037)))

(declare-fun b!4223274 () Bool)

(declare-fun tp!1292455 () Bool)

(declare-fun tp!1292453 () Bool)

(assert (=> b!4223274 (= e!2622037 (and tp!1292455 tp!1292453))))

(declare-fun b!4223273 () Bool)

(assert (=> b!4223273 (= e!2622037 tp_is_empty!22373)))

(assert (= (and b!4222885 ((_ is ElementMatch!12703) (regex!7798 (rule!10938 tBis!41)))) b!4223273))

(assert (= (and b!4222885 ((_ is Concat!20732) (regex!7798 (rule!10938 tBis!41)))) b!4223274))

(assert (= (and b!4222885 ((_ is Star!12703) (regex!7798 (rule!10938 tBis!41)))) b!4223275))

(assert (= (and b!4222885 ((_ is Union!12703) (regex!7798 (rule!10938 tBis!41)))) b!4223276))

(declare-fun b!4223277 () Bool)

(declare-fun e!2622038 () Bool)

(declare-fun tp!1292456 () Bool)

(assert (=> b!4223277 (= e!2622038 (and tp_is_empty!22373 tp!1292456))))

(assert (=> b!4222872 (= tp!1292354 e!2622038)))

(assert (= (and b!4222872 ((_ is Cons!46472) (originalCharacters!8180 t!8364))) b!4223277))

(declare-fun b!4223280 () Bool)

(declare-fun e!2622039 () Bool)

(declare-fun tp!1292458 () Bool)

(assert (=> b!4223280 (= e!2622039 tp!1292458)))

(declare-fun b!4223281 () Bool)

(declare-fun tp!1292457 () Bool)

(declare-fun tp!1292460 () Bool)

(assert (=> b!4223281 (= e!2622039 (and tp!1292457 tp!1292460))))

(assert (=> b!4222873 (= tp!1292346 e!2622039)))

(declare-fun b!4223279 () Bool)

(declare-fun tp!1292461 () Bool)

(declare-fun tp!1292459 () Bool)

(assert (=> b!4223279 (= e!2622039 (and tp!1292461 tp!1292459))))

(declare-fun b!4223278 () Bool)

(assert (=> b!4223278 (= e!2622039 tp_is_empty!22373)))

(assert (= (and b!4222873 ((_ is ElementMatch!12703) (regex!7798 rBis!178))) b!4223278))

(assert (= (and b!4222873 ((_ is Concat!20732) (regex!7798 rBis!178))) b!4223279))

(assert (= (and b!4222873 ((_ is Star!12703) (regex!7798 rBis!178))) b!4223280))

(assert (= (and b!4222873 ((_ is Union!12703) (regex!7798 rBis!178))) b!4223281))

(declare-fun b!4223282 () Bool)

(declare-fun e!2622040 () Bool)

(declare-fun tp!1292462 () Bool)

(assert (=> b!4223282 (= e!2622040 (and tp_is_empty!22373 tp!1292462))))

(assert (=> b!4222892 (= tp!1292336 e!2622040)))

(assert (= (and b!4222892 ((_ is Cons!46472) (originalCharacters!8180 tBis!41))) b!4223282))

(declare-fun b!4223283 () Bool)

(declare-fun e!2622041 () Bool)

(declare-fun tp!1292463 () Bool)

(assert (=> b!4223283 (= e!2622041 (and tp_is_empty!22373 tp!1292463))))

(assert (=> b!4222882 (= tp!1292348 e!2622041)))

(assert (= (and b!4222882 ((_ is Cons!46472) (t!349141 pBis!121))) b!4223283))

(declare-fun b!4223284 () Bool)

(declare-fun e!2622042 () Bool)

(declare-fun tp!1292464 () Bool)

(assert (=> b!4223284 (= e!2622042 (and tp_is_empty!22373 tp!1292464))))

(assert (=> b!4222891 (= tp!1292341 e!2622042)))

(assert (= (and b!4222891 ((_ is Cons!46472) (t!349141 input!3517))) b!4223284))

(declare-fun b_lambda!124485 () Bool)

(assert (= b_lambda!124483 (or (and b!4222876 b_free!124165 (= (toChars!10381 (transformation!7798 (h!51893 rules!3967))) (toChars!10381 (transformation!7798 (rule!10938 t!8364))))) (and b!4223253 b_free!124177 (= (toChars!10381 (transformation!7798 (h!51893 (t!349142 rules!3967)))) (toChars!10381 (transformation!7798 (rule!10938 t!8364))))) (and b!4222890 b_free!124161 (= (toChars!10381 (transformation!7798 rBis!178)) (toChars!10381 (transformation!7798 (rule!10938 t!8364))))) (and b!4222886 b_free!124157) (and b!4222893 b_free!124169 (= (toChars!10381 (transformation!7798 (rule!10938 tBis!41))) (toChars!10381 (transformation!7798 (rule!10938 t!8364))))) b_lambda!124485)))

(declare-fun b_lambda!124487 () Bool)

(assert (= b_lambda!124471 (or (and b!4222890 b_free!124161 (= (toChars!10381 (transformation!7798 rBis!178)) (toChars!10381 (transformation!7798 (rule!10938 tBis!41))))) (and b!4223253 b_free!124177 (= (toChars!10381 (transformation!7798 (h!51893 (t!349142 rules!3967)))) (toChars!10381 (transformation!7798 (rule!10938 tBis!41))))) (and b!4222886 b_free!124157 (= (toChars!10381 (transformation!7798 (rule!10938 t!8364))) (toChars!10381 (transformation!7798 (rule!10938 tBis!41))))) (and b!4222876 b_free!124165 (= (toChars!10381 (transformation!7798 (h!51893 rules!3967))) (toChars!10381 (transformation!7798 (rule!10938 tBis!41))))) (and b!4222893 b_free!124169) b_lambda!124487)))

(declare-fun b_lambda!124489 () Bool)

(assert (= b_lambda!124481 (or (and b!4222890 b_free!124161 (= (toChars!10381 (transformation!7798 rBis!178)) (toChars!10381 (transformation!7798 (rule!10938 tBis!41))))) (and b!4223253 b_free!124177 (= (toChars!10381 (transformation!7798 (h!51893 (t!349142 rules!3967)))) (toChars!10381 (transformation!7798 (rule!10938 tBis!41))))) (and b!4222886 b_free!124157 (= (toChars!10381 (transformation!7798 (rule!10938 t!8364))) (toChars!10381 (transformation!7798 (rule!10938 tBis!41))))) (and b!4222876 b_free!124165 (= (toChars!10381 (transformation!7798 (h!51893 rules!3967))) (toChars!10381 (transformation!7798 (rule!10938 tBis!41))))) (and b!4222893 b_free!124169) b_lambda!124489)))

(check-sat b_and!333325 (not d!1243677) (not b!4222974) (not b!4222970) (not b!4223280) (not b!4222948) (not b_next!124861) (not d!1243765) (not b!4223279) (not d!1243693) (not d!1243679) (not b!4223282) b_and!333383 (not b!4223252) (not b!4222967) (not b!4223135) (not b!4223218) (not b!4223226) (not b_next!124879) (not b!4223136) (not b_lambda!124487) (not b!4223276) (not b_next!124865) (not b!4223227) (not b!4223269) (not d!1243689) b_and!333317 (not b!4223130) (not b!4223181) (not b!4223134) (not b!4223133) (not b!4223267) (not b!4222994) (not b!4223212) (not b!4223236) (not b!4223010) (not b!4223001) (not d!1243767) (not b_next!124867) (not d!1243761) (not b!4223242) (not d!1243707) (not bm!293167) (not b!4223233) (not b_lambda!124485) (not b!4222998) b_and!333387 (not b!4223283) (not b!4223132) (not b!4223272) (not b!4223241) (not b_next!124881) (not b!4223224) b_and!333329 (not b!4222925) (not d!1243763) (not b!4222995) (not b!4223223) (not b!4223225) (not b!4223215) (not b!4222912) (not b!4223281) (not d!1243759) (not b_next!124871) b_and!333377 (not b!4223251) (not b!4223217) (not b!4223275) (not d!1243675) (not b!4223213) (not tb!253755) b_and!333381 (not b!4223266) (not b!4223271) (not b!4223004) (not b!4223270) (not b!4222973) (not b!4222996) (not b!4223284) (not d!1243769) (not b!4223274) (not b_next!124859) (not b_next!124873) b_and!333321 (not d!1243667) (not b!4223210) (not b_next!124863) (not b!4223277) (not b!4223005) tp_is_empty!22373 (not b!4222971) (not b!4223003) (not b!4223180) (not b!4222938) (not b!4223137) b_and!333385 (not b_lambda!124489) (not b!4222997) (not b!4222966) (not b_next!124869) (not d!1243729) (not b!4222913) (not b!4222939) b_and!333379 (not b!4223211) (not b!4223138) (not b!4223265) (not b!4223179) (not d!1243727) (not d!1243711) (not b!4223216) (not tb!253767))
(check-sat b_and!333325 (not b_next!124861) b_and!333383 (not b_next!124879) (not b_next!124865) b_and!333317 (not b_next!124867) b_and!333387 (not b_next!124881) b_and!333329 b_and!333381 (not b_next!124863) b_and!333385 (not b_next!124869) b_and!333379 (not b_next!124871) b_and!333377 (not b_next!124859) (not b_next!124873) b_and!333321)
