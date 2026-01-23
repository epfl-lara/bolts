; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!401746 () Bool)

(assert start!401746)

(declare-fun b!4204718 () Bool)

(declare-fun b_free!122795 () Bool)

(declare-fun b_next!123499 () Bool)

(assert (=> b!4204718 (= b_free!122795 (not b_next!123499))))

(declare-fun tp!1284997 () Bool)

(declare-fun b_and!330373 () Bool)

(assert (=> b!4204718 (= tp!1284997 b_and!330373)))

(declare-fun b_free!122797 () Bool)

(declare-fun b_next!123501 () Bool)

(assert (=> b!4204718 (= b_free!122797 (not b_next!123501))))

(declare-fun tp!1285012 () Bool)

(declare-fun b_and!330375 () Bool)

(assert (=> b!4204718 (= tp!1285012 b_and!330375)))

(declare-fun b!4204705 () Bool)

(declare-fun b_free!122799 () Bool)

(declare-fun b_next!123503 () Bool)

(assert (=> b!4204705 (= b_free!122799 (not b_next!123503))))

(declare-fun tp!1285000 () Bool)

(declare-fun b_and!330377 () Bool)

(assert (=> b!4204705 (= tp!1285000 b_and!330377)))

(declare-fun b_free!122801 () Bool)

(declare-fun b_next!123505 () Bool)

(assert (=> b!4204705 (= b_free!122801 (not b_next!123505))))

(declare-fun tp!1285009 () Bool)

(declare-fun b_and!330379 () Bool)

(assert (=> b!4204705 (= tp!1285009 b_and!330379)))

(declare-fun b!4204708 () Bool)

(declare-fun b_free!122803 () Bool)

(declare-fun b_next!123507 () Bool)

(assert (=> b!4204708 (= b_free!122803 (not b_next!123507))))

(declare-fun tp!1285003 () Bool)

(declare-fun b_and!330381 () Bool)

(assert (=> b!4204708 (= tp!1285003 b_and!330381)))

(declare-fun b_free!122805 () Bool)

(declare-fun b_next!123509 () Bool)

(assert (=> b!4204708 (= b_free!122805 (not b_next!123509))))

(declare-fun tp!1285001 () Bool)

(declare-fun b_and!330383 () Bool)

(assert (=> b!4204708 (= tp!1285001 b_and!330383)))

(declare-fun b!4204733 () Bool)

(declare-fun b_free!122807 () Bool)

(declare-fun b_next!123511 () Bool)

(assert (=> b!4204733 (= b_free!122807 (not b_next!123511))))

(declare-fun tp!1285002 () Bool)

(declare-fun b_and!330385 () Bool)

(assert (=> b!4204733 (= tp!1285002 b_and!330385)))

(declare-fun b_free!122809 () Bool)

(declare-fun b_next!123513 () Bool)

(assert (=> b!4204733 (= b_free!122809 (not b_next!123513))))

(declare-fun tp!1284996 () Bool)

(declare-fun b_and!330387 () Bool)

(assert (=> b!4204733 (= tp!1284996 b_and!330387)))

(declare-fun b!4204701 () Bool)

(declare-fun e!2610097 () Bool)

(declare-fun tp_is_empty!22225 () Bool)

(declare-fun tp!1284995 () Bool)

(assert (=> b!4204701 (= e!2610097 (and tp_is_empty!22225 tp!1284995))))

(declare-datatypes ((List!46335 0))(
  ( (Nil!46211) (Cons!46211 (h!51631 (_ BitVec 16)) (t!347364 List!46335)) )
))
(declare-datatypes ((TokenValue!7954 0))(
  ( (FloatLiteralValue!15908 (text!56123 List!46335)) (TokenValueExt!7953 (__x!28131 Int)) (Broken!39770 (value!240637 List!46335)) (Object!8077) (End!7954) (Def!7954) (Underscore!7954) (Match!7954) (Else!7954) (Error!7954) (Case!7954) (If!7954) (Extends!7954) (Abstract!7954) (Class!7954) (Val!7954) (DelimiterValue!15908 (del!8014 List!46335)) (KeywordValue!7960 (value!240638 List!46335)) (CommentValue!15908 (value!240639 List!46335)) (WhitespaceValue!15908 (value!240640 List!46335)) (IndentationValue!7954 (value!240641 List!46335)) (String!53639) (Int32!7954) (Broken!39771 (value!240642 List!46335)) (Boolean!7955) (Unit!65312) (OperatorValue!7957 (op!8014 List!46335)) (IdentifierValue!15908 (value!240643 List!46335)) (IdentifierValue!15909 (value!240644 List!46335)) (WhitespaceValue!15909 (value!240645 List!46335)) (True!15908) (False!15908) (Broken!39772 (value!240646 List!46335)) (Broken!39773 (value!240647 List!46335)) (True!15909) (RightBrace!7954) (RightBracket!7954) (Colon!7954) (Null!7954) (Comma!7954) (LeftBracket!7954) (False!15909) (LeftBrace!7954) (ImaginaryLiteralValue!7954 (text!56124 List!46335)) (StringLiteralValue!23862 (value!240648 List!46335)) (EOFValue!7954 (value!240649 List!46335)) (IdentValue!7954 (value!240650 List!46335)) (DelimiterValue!15909 (value!240651 List!46335)) (DedentValue!7954 (value!240652 List!46335)) (NewLineValue!7954 (value!240653 List!46335)) (IntegerValue!23862 (value!240654 (_ BitVec 32)) (text!56125 List!46335)) (IntegerValue!23863 (value!240655 Int) (text!56126 List!46335)) (Times!7954) (Or!7954) (Equal!7954) (Minus!7954) (Broken!39774 (value!240656 List!46335)) (And!7954) (Div!7954) (LessEqual!7954) (Mod!7954) (Concat!20583) (Not!7954) (Plus!7954) (SpaceValue!7954 (value!240657 List!46335)) (IntegerValue!23864 (value!240658 Int) (text!56127 List!46335)) (StringLiteralValue!23863 (text!56128 List!46335)) (FloatLiteralValue!15909 (text!56129 List!46335)) (BytesLiteralValue!7954 (value!240659 List!46335)) (CommentValue!15909 (value!240660 List!46335)) (StringLiteralValue!23864 (value!240661 List!46335)) (ErrorTokenValue!7954 (msg!8015 List!46335)) )
))
(declare-datatypes ((C!25452 0))(
  ( (C!25453 (val!14888 Int)) )
))
(declare-datatypes ((List!46336 0))(
  ( (Nil!46212) (Cons!46212 (h!51632 C!25452) (t!347365 List!46336)) )
))
(declare-datatypes ((IArray!27875 0))(
  ( (IArray!27876 (innerList!13995 List!46336)) )
))
(declare-datatypes ((Regex!12629 0))(
  ( (ElementMatch!12629 (c!716724 C!25452)) (Concat!20584 (regOne!25770 Regex!12629) (regTwo!25770 Regex!12629)) (EmptyExpr!12629) (Star!12629 (reg!12958 Regex!12629)) (EmptyLang!12629) (Union!12629 (regOne!25771 Regex!12629) (regTwo!25771 Regex!12629)) )
))
(declare-datatypes ((Conc!13935 0))(
  ( (Node!13935 (left!34420 Conc!13935) (right!34750 Conc!13935) (csize!28100 Int) (cheight!14146 Int)) (Leaf!21541 (xs!17241 IArray!27875) (csize!28101 Int)) (Empty!13935) )
))
(declare-datatypes ((BalanceConc!27464 0))(
  ( (BalanceConc!27465 (c!716725 Conc!13935)) )
))
(declare-datatypes ((String!53640 0))(
  ( (String!53641 (value!240662 String)) )
))
(declare-datatypes ((TokenValueInjection!15336 0))(
  ( (TokenValueInjection!15337 (toValue!10436 Int) (toChars!10295 Int)) )
))
(declare-datatypes ((Rule!15248 0))(
  ( (Rule!15249 (regex!7724 Regex!12629) (tag!8588 String!53640) (isSeparator!7724 Bool) (transformation!7724 TokenValueInjection!15336)) )
))
(declare-datatypes ((Token!14150 0))(
  ( (Token!14151 (value!240663 TokenValue!7954) (rule!10826 Rule!15248) (size!33955 Int) (originalCharacters!8106 List!46336)) )
))
(declare-fun tBis!41 () Token!14150)

(declare-fun e!2610079 () Bool)

(declare-fun b!4204702 () Bool)

(declare-fun e!2610096 () Bool)

(declare-fun tp!1285005 () Bool)

(declare-fun inv!60789 (String!53640) Bool)

(declare-fun inv!60792 (TokenValueInjection!15336) Bool)

(assert (=> b!4204702 (= e!2610096 (and tp!1285005 (inv!60789 (tag!8588 (rule!10826 tBis!41))) (inv!60792 (transformation!7724 (rule!10826 tBis!41))) e!2610079))))

(declare-fun b!4204703 () Bool)

(declare-fun e!2610085 () Bool)

(declare-fun tp!1284999 () Bool)

(assert (=> b!4204703 (= e!2610085 (and tp_is_empty!22225 tp!1284999))))

(declare-fun b!4204704 () Bool)

(declare-fun e!2610098 () Bool)

(declare-fun tp!1285010 () Bool)

(assert (=> b!4204704 (= e!2610098 (and tp_is_empty!22225 tp!1285010))))

(declare-fun e!2610092 () Bool)

(assert (=> b!4204705 (= e!2610092 (and tp!1285000 tp!1285009))))

(declare-fun b!4204706 () Bool)

(declare-fun res!1726881 () Bool)

(declare-fun e!2610088 () Bool)

(assert (=> b!4204706 (=> res!1726881 e!2610088)))

(declare-datatypes ((List!46337 0))(
  ( (Nil!46213) (Cons!46213 (h!51633 Rule!15248) (t!347366 List!46337)) )
))
(declare-fun rules!3967 () List!46337)

(declare-fun rBis!178 () Rule!15248)

(get-info :version)

(assert (=> b!4204706 (= res!1726881 (or (and ((_ is Cons!46213) rules!3967) ((_ is Nil!46213) (t!347366 rules!3967))) (not ((_ is Cons!46213) rules!3967)) (= (h!51633 rules!3967) rBis!178)))))

(declare-fun b!4204707 () Bool)

(declare-fun res!1726877 () Bool)

(declare-fun e!2610095 () Bool)

(assert (=> b!4204707 (=> (not res!1726877) (not e!2610095))))

(declare-datatypes ((LexerInterface!7319 0))(
  ( (LexerInterfaceExt!7316 (__x!28132 Int)) (Lexer!7317) )
))
(declare-fun thiss!26544 () LexerInterface!7319)

(declare-fun ruleValid!3436 (LexerInterface!7319 Rule!15248) Bool)

(assert (=> b!4204707 (= res!1726877 (ruleValid!3436 thiss!26544 rBis!178))))

(assert (=> b!4204708 (= e!2610079 (and tp!1285003 tp!1285001))))

(declare-fun b!4204709 () Bool)

(declare-fun res!1726879 () Bool)

(declare-fun e!2610089 () Bool)

(assert (=> b!4204709 (=> (not res!1726879) (not e!2610089))))

(declare-fun p!3001 () List!46336)

(declare-fun input!3517 () List!46336)

(declare-fun suffix!1557 () List!46336)

(declare-fun ++!11798 (List!46336 List!46336) List!46336)

(assert (=> b!4204709 (= res!1726879 (= (++!11798 p!3001 suffix!1557) input!3517))))

(declare-fun b!4204710 () Bool)

(declare-fun res!1726874 () Bool)

(assert (=> b!4204710 (=> (not res!1726874) (not e!2610089))))

(declare-fun contains!9541 (List!46337 Rule!15248) Bool)

(assert (=> b!4204710 (= res!1726874 (contains!9541 rules!3967 rBis!178))))

(declare-fun b!4204711 () Bool)

(declare-fun e!2610077 () Bool)

(declare-fun e!2610083 () Bool)

(declare-fun tp!1285007 () Bool)

(assert (=> b!4204711 (= e!2610077 (and e!2610083 tp!1285007))))

(declare-fun b!4204713 () Bool)

(declare-fun res!1726872 () Bool)

(assert (=> b!4204713 (=> (not res!1726872) (not e!2610089))))

(declare-fun pBis!121 () List!46336)

(declare-fun isPrefix!4583 (List!46336 List!46336) Bool)

(assert (=> b!4204713 (= res!1726872 (isPrefix!4583 pBis!121 input!3517))))

(declare-fun b!4204714 () Bool)

(declare-fun tp!1284994 () Bool)

(declare-fun e!2610090 () Bool)

(assert (=> b!4204714 (= e!2610083 (and tp!1284994 (inv!60789 (tag!8588 (h!51633 rules!3967))) (inv!60792 (transformation!7724 (h!51633 rules!3967))) e!2610090))))

(declare-fun b!4204715 () Bool)

(declare-fun res!1726883 () Bool)

(assert (=> b!4204715 (=> res!1726883 e!2610088)))

(assert (=> b!4204715 (= res!1726883 (not (= (rule!10826 tBis!41) rBis!178)))))

(declare-fun b!4204716 () Bool)

(declare-fun e!2610091 () Bool)

(declare-fun tp!1285006 () Bool)

(assert (=> b!4204716 (= e!2610091 (and tp_is_empty!22225 tp!1285006))))

(declare-fun tp!1284993 () Bool)

(declare-fun e!2610084 () Bool)

(declare-fun b!4204717 () Bool)

(declare-fun inv!21 (TokenValue!7954) Bool)

(assert (=> b!4204717 (= e!2610084 (and (inv!21 (value!240663 tBis!41)) e!2610096 tp!1284993))))

(assert (=> b!4204718 (= e!2610090 (and tp!1284997 tp!1285012))))

(declare-fun b!4204719 () Bool)

(declare-fun res!1726866 () Bool)

(assert (=> b!4204719 (=> (not res!1726866) (not e!2610089))))

(declare-fun isEmpty!27362 (List!46337) Bool)

(assert (=> b!4204719 (= res!1726866 (not (isEmpty!27362 rules!3967)))))

(declare-fun b!4204720 () Bool)

(declare-fun res!1726867 () Bool)

(assert (=> b!4204720 (=> res!1726867 e!2610088)))

(assert (=> b!4204720 (= res!1726867 (isEmpty!27362 (t!347366 rules!3967)))))

(declare-fun b!4204721 () Bool)

(declare-fun res!1726868 () Bool)

(assert (=> b!4204721 (=> res!1726868 e!2610088)))

(declare-datatypes ((tuple2!43966 0))(
  ( (tuple2!43967 (_1!25117 Token!14150) (_2!25117 List!46336)) )
))
(declare-datatypes ((Option!9912 0))(
  ( (None!9911) (Some!9911 (v!40769 tuple2!43966)) )
))
(declare-fun lt!1497438 () Option!9912)

(declare-fun maxPrefixOneRule!3314 (LexerInterface!7319 Rule!15248 List!46336) Option!9912)

(assert (=> b!4204721 (= res!1726868 (not (= (maxPrefixOneRule!3314 thiss!26544 (h!51633 rules!3967) input!3517) lt!1497438)))))

(declare-fun b!4204722 () Bool)

(declare-fun e!2610076 () Bool)

(declare-fun tp!1285008 () Bool)

(assert (=> b!4204722 (= e!2610076 (and tp_is_empty!22225 tp!1285008))))

(declare-fun b!4204723 () Bool)

(declare-fun res!1726870 () Bool)

(assert (=> b!4204723 (=> res!1726870 e!2610088)))

(declare-fun rulesValidInductive!2862 (LexerInterface!7319 List!46337) Bool)

(assert (=> b!4204723 (= res!1726870 (not (rulesValidInductive!2862 thiss!26544 (t!347366 rules!3967))))))

(declare-fun e!2610081 () Bool)

(declare-fun e!2610094 () Bool)

(declare-fun b!4204724 () Bool)

(declare-fun tp!1284998 () Bool)

(declare-fun t!8364 () Token!14150)

(assert (=> b!4204724 (= e!2610081 (and (inv!21 (value!240663 t!8364)) e!2610094 tp!1284998))))

(declare-fun b!4204725 () Bool)

(declare-fun res!1726882 () Bool)

(assert (=> b!4204725 (=> res!1726882 e!2610088)))

(declare-fun suffixBis!41 () List!46336)

(assert (=> b!4204725 (= res!1726882 (not (= (++!11798 pBis!121 suffixBis!41) input!3517)))))

(declare-fun b!4204726 () Bool)

(declare-fun res!1726878 () Bool)

(assert (=> b!4204726 (=> (not res!1726878) (not e!2610089))))

(assert (=> b!4204726 (= res!1726878 (isPrefix!4583 p!3001 input!3517))))

(declare-fun b!4204727 () Bool)

(assert (=> b!4204727 (= e!2610088 true)))

(declare-fun lt!1497436 () Bool)

(assert (=> b!4204727 (= lt!1497436 (contains!9541 (t!347366 rules!3967) rBis!178))))

(declare-fun b!4204728 () Bool)

(assert (=> b!4204728 (= e!2610089 e!2610095)))

(declare-fun res!1726876 () Bool)

(assert (=> b!4204728 (=> (not res!1726876) (not e!2610095))))

(declare-fun maxPrefix!4359 (LexerInterface!7319 List!46337 List!46336) Option!9912)

(assert (=> b!4204728 (= res!1726876 (= (maxPrefix!4359 thiss!26544 rules!3967 input!3517) lt!1497438))))

(assert (=> b!4204728 (= lt!1497438 (Some!9911 (tuple2!43967 t!8364 suffix!1557)))))

(declare-fun tp!1285011 () Bool)

(declare-fun e!2610086 () Bool)

(declare-fun b!4204729 () Bool)

(assert (=> b!4204729 (= e!2610094 (and tp!1285011 (inv!60789 (tag!8588 (rule!10826 t!8364))) (inv!60792 (transformation!7724 (rule!10826 t!8364))) e!2610086))))

(declare-fun b!4204730 () Bool)

(declare-fun res!1726871 () Bool)

(assert (=> b!4204730 (=> (not res!1726871) (not e!2610089))))

(declare-fun rulesInvariant!6530 (LexerInterface!7319 List!46337) Bool)

(assert (=> b!4204730 (= res!1726871 (rulesInvariant!6530 thiss!26544 rules!3967))))

(declare-fun b!4204731 () Bool)

(declare-fun res!1726875 () Bool)

(assert (=> b!4204731 (=> res!1726875 e!2610088)))

(declare-fun isEmpty!27363 (Option!9912) Bool)

(assert (=> b!4204731 (= res!1726875 (not (isEmpty!27363 (maxPrefix!4359 thiss!26544 (t!347366 rules!3967) input!3517))))))

(declare-fun b!4204732 () Bool)

(declare-fun tp!1285004 () Bool)

(declare-fun e!2610082 () Bool)

(assert (=> b!4204732 (= e!2610082 (and tp!1285004 (inv!60789 (tag!8588 rBis!178)) (inv!60792 (transformation!7724 rBis!178)) e!2610092))))

(assert (=> b!4204733 (= e!2610086 (and tp!1285002 tp!1284996))))

(declare-fun b!4204734 () Bool)

(declare-fun res!1726873 () Bool)

(assert (=> b!4204734 (=> res!1726873 e!2610088)))

(declare-fun list!16701 (BalanceConc!27464) List!46336)

(declare-fun charsOf!5147 (Token!14150) BalanceConc!27464)

(assert (=> b!4204734 (= res!1726873 (not (= (list!16701 (charsOf!5147 tBis!41)) pBis!121)))))

(declare-fun res!1726880 () Bool)

(assert (=> start!401746 (=> (not res!1726880) (not e!2610089))))

(assert (=> start!401746 (= res!1726880 ((_ is Lexer!7317) thiss!26544))))

(assert (=> start!401746 e!2610089))

(declare-fun inv!60793 (Token!14150) Bool)

(assert (=> start!401746 (and (inv!60793 tBis!41) e!2610084)))

(assert (=> start!401746 true))

(assert (=> start!401746 e!2610082))

(assert (=> start!401746 e!2610097))

(assert (=> start!401746 e!2610077))

(assert (=> start!401746 e!2610085))

(assert (=> start!401746 (and (inv!60793 t!8364) e!2610081)))

(assert (=> start!401746 e!2610076))

(assert (=> start!401746 e!2610091))

(assert (=> start!401746 e!2610098))

(declare-fun b!4204712 () Bool)

(assert (=> b!4204712 (= e!2610095 (not e!2610088))))

(declare-fun res!1726869 () Bool)

(assert (=> b!4204712 (=> res!1726869 e!2610088)))

(assert (=> b!4204712 (= res!1726869 (not (= (maxPrefixOneRule!3314 thiss!26544 rBis!178 input!3517) (Some!9911 (tuple2!43967 tBis!41 suffixBis!41)))))))

(assert (=> b!4204712 (isPrefix!4583 input!3517 input!3517)))

(declare-datatypes ((Unit!65313 0))(
  ( (Unit!65314) )
))
(declare-fun lt!1497437 () Unit!65313)

(declare-fun lemmaIsPrefixRefl!3000 (List!46336 List!46336) Unit!65313)

(assert (=> b!4204712 (= lt!1497437 (lemmaIsPrefixRefl!3000 input!3517 input!3517))))

(assert (= (and start!401746 res!1726880) b!4204709))

(assert (= (and b!4204709 res!1726879) b!4204726))

(assert (= (and b!4204726 res!1726878) b!4204713))

(assert (= (and b!4204713 res!1726872) b!4204719))

(assert (= (and b!4204719 res!1726866) b!4204730))

(assert (= (and b!4204730 res!1726871) b!4204710))

(assert (= (and b!4204710 res!1726874) b!4204728))

(assert (= (and b!4204728 res!1726876) b!4204707))

(assert (= (and b!4204707 res!1726877) b!4204712))

(assert (= (and b!4204712 (not res!1726869)) b!4204715))

(assert (= (and b!4204715 (not res!1726883)) b!4204734))

(assert (= (and b!4204734 (not res!1726873)) b!4204725))

(assert (= (and b!4204725 (not res!1726882)) b!4204706))

(assert (= (and b!4204706 (not res!1726881)) b!4204721))

(assert (= (and b!4204721 (not res!1726868)) b!4204731))

(assert (= (and b!4204731 (not res!1726875)) b!4204720))

(assert (= (and b!4204720 (not res!1726867)) b!4204723))

(assert (= (and b!4204723 (not res!1726870)) b!4204727))

(assert (= b!4204702 b!4204708))

(assert (= b!4204717 b!4204702))

(assert (= start!401746 b!4204717))

(assert (= b!4204732 b!4204705))

(assert (= start!401746 b!4204732))

(assert (= (and start!401746 ((_ is Cons!46212) p!3001)) b!4204701))

(assert (= b!4204714 b!4204718))

(assert (= b!4204711 b!4204714))

(assert (= (and start!401746 ((_ is Cons!46213) rules!3967)) b!4204711))

(assert (= (and start!401746 ((_ is Cons!46212) input!3517)) b!4204703))

(assert (= b!4204729 b!4204733))

(assert (= b!4204724 b!4204729))

(assert (= start!401746 b!4204724))

(assert (= (and start!401746 ((_ is Cons!46212) pBis!121)) b!4204722))

(assert (= (and start!401746 ((_ is Cons!46212) suffix!1557)) b!4204716))

(assert (= (and start!401746 ((_ is Cons!46212) suffixBis!41)) b!4204704))

(declare-fun m!4792875 () Bool)

(assert (=> b!4204732 m!4792875))

(declare-fun m!4792877 () Bool)

(assert (=> b!4204732 m!4792877))

(declare-fun m!4792879 () Bool)

(assert (=> b!4204726 m!4792879))

(declare-fun m!4792881 () Bool)

(assert (=> b!4204717 m!4792881))

(declare-fun m!4792883 () Bool)

(assert (=> b!4204702 m!4792883))

(declare-fun m!4792885 () Bool)

(assert (=> b!4204702 m!4792885))

(declare-fun m!4792887 () Bool)

(assert (=> b!4204712 m!4792887))

(declare-fun m!4792889 () Bool)

(assert (=> b!4204712 m!4792889))

(declare-fun m!4792891 () Bool)

(assert (=> b!4204712 m!4792891))

(declare-fun m!4792893 () Bool)

(assert (=> b!4204734 m!4792893))

(assert (=> b!4204734 m!4792893))

(declare-fun m!4792895 () Bool)

(assert (=> b!4204734 m!4792895))

(declare-fun m!4792897 () Bool)

(assert (=> b!4204729 m!4792897))

(declare-fun m!4792899 () Bool)

(assert (=> b!4204729 m!4792899))

(declare-fun m!4792901 () Bool)

(assert (=> b!4204719 m!4792901))

(declare-fun m!4792903 () Bool)

(assert (=> b!4204720 m!4792903))

(declare-fun m!4792905 () Bool)

(assert (=> b!4204728 m!4792905))

(declare-fun m!4792907 () Bool)

(assert (=> b!4204724 m!4792907))

(declare-fun m!4792909 () Bool)

(assert (=> b!4204721 m!4792909))

(declare-fun m!4792911 () Bool)

(assert (=> b!4204709 m!4792911))

(declare-fun m!4792913 () Bool)

(assert (=> b!4204727 m!4792913))

(declare-fun m!4792915 () Bool)

(assert (=> b!4204730 m!4792915))

(declare-fun m!4792917 () Bool)

(assert (=> b!4204707 m!4792917))

(declare-fun m!4792919 () Bool)

(assert (=> b!4204714 m!4792919))

(declare-fun m!4792921 () Bool)

(assert (=> b!4204714 m!4792921))

(declare-fun m!4792923 () Bool)

(assert (=> b!4204713 m!4792923))

(declare-fun m!4792925 () Bool)

(assert (=> b!4204710 m!4792925))

(declare-fun m!4792927 () Bool)

(assert (=> start!401746 m!4792927))

(declare-fun m!4792929 () Bool)

(assert (=> start!401746 m!4792929))

(declare-fun m!4792931 () Bool)

(assert (=> b!4204723 m!4792931))

(declare-fun m!4792933 () Bool)

(assert (=> b!4204731 m!4792933))

(assert (=> b!4204731 m!4792933))

(declare-fun m!4792935 () Bool)

(assert (=> b!4204731 m!4792935))

(declare-fun m!4792937 () Bool)

(assert (=> b!4204725 m!4792937))

(check-sat b_and!330385 b_and!330375 (not b!4204726) (not b!4204712) (not b!4204731) (not b!4204717) b_and!330381 (not b!4204732) (not b!4204724) b_and!330387 (not b!4204723) (not b!4204704) (not b!4204721) (not b!4204714) (not b!4204734) (not b!4204719) (not b!4204702) (not b!4204716) (not b!4204710) (not b!4204713) b_and!330377 (not b!4204728) (not b!4204701) (not b!4204720) (not b_next!123505) (not b!4204727) (not b_next!123509) (not b!4204730) (not b_next!123507) (not b!4204707) b_and!330383 (not b!4204703) (not b!4204729) (not b_next!123499) (not b!4204725) b_and!330379 tp_is_empty!22225 (not b!4204722) (not b!4204709) (not b!4204711) (not b_next!123513) (not b_next!123503) (not b_next!123501) (not b_next!123511) (not start!401746) b_and!330373)
(check-sat b_and!330385 b_and!330375 b_and!330377 (not b_next!123505) (not b_next!123509) b_and!330381 b_and!330387 (not b_next!123507) b_and!330383 (not b_next!123499) b_and!330379 (not b_next!123513) b_and!330373 (not b_next!123503) (not b_next!123501) (not b_next!123511))
