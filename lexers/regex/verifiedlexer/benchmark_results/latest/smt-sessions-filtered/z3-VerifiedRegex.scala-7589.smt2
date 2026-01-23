; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!400950 () Bool)

(assert start!400950)

(declare-fun b!4197925 () Bool)

(declare-fun b_free!122351 () Bool)

(declare-fun b_next!123055 () Bool)

(assert (=> b!4197925 (= b_free!122351 (not b_next!123055))))

(declare-fun tp!1282341 () Bool)

(declare-fun b_and!329309 () Bool)

(assert (=> b!4197925 (= tp!1282341 b_and!329309)))

(declare-fun b_free!122353 () Bool)

(declare-fun b_next!123057 () Bool)

(assert (=> b!4197925 (= b_free!122353 (not b_next!123057))))

(declare-fun tp!1282335 () Bool)

(declare-fun b_and!329311 () Bool)

(assert (=> b!4197925 (= tp!1282335 b_and!329311)))

(declare-fun b!4197913 () Bool)

(declare-fun b_free!122355 () Bool)

(declare-fun b_next!123059 () Bool)

(assert (=> b!4197913 (= b_free!122355 (not b_next!123059))))

(declare-fun tp!1282343 () Bool)

(declare-fun b_and!329313 () Bool)

(assert (=> b!4197913 (= tp!1282343 b_and!329313)))

(declare-fun b_free!122357 () Bool)

(declare-fun b_next!123061 () Bool)

(assert (=> b!4197913 (= b_free!122357 (not b_next!123061))))

(declare-fun tp!1282344 () Bool)

(declare-fun b_and!329315 () Bool)

(assert (=> b!4197913 (= tp!1282344 b_and!329315)))

(declare-fun b!4197917 () Bool)

(declare-fun b_free!122359 () Bool)

(declare-fun b_next!123063 () Bool)

(assert (=> b!4197917 (= b_free!122359 (not b_next!123063))))

(declare-fun tp!1282342 () Bool)

(declare-fun b_and!329317 () Bool)

(assert (=> b!4197917 (= tp!1282342 b_and!329317)))

(declare-fun b_free!122361 () Bool)

(declare-fun b_next!123065 () Bool)

(assert (=> b!4197917 (= b_free!122361 (not b_next!123065))))

(declare-fun tp!1282346 () Bool)

(declare-fun b_and!329319 () Bool)

(assert (=> b!4197917 (= tp!1282346 b_and!329319)))

(declare-fun e!2605792 () Bool)

(assert (=> b!4197913 (= e!2605792 (and tp!1282343 tp!1282344))))

(declare-fun b!4197914 () Bool)

(declare-fun res!1723720 () Bool)

(declare-fun e!2605807 () Bool)

(assert (=> b!4197914 (=> (not res!1723720) (not e!2605807))))

(declare-datatypes ((List!46231 0))(
  ( (Nil!46107) (Cons!46107 (h!51527 (_ BitVec 16)) (t!346638 List!46231)) )
))
(declare-datatypes ((TokenValue!7924 0))(
  ( (FloatLiteralValue!15848 (text!55913 List!46231)) (TokenValueExt!7923 (__x!28069 Int)) (Broken!39620 (value!239785 List!46231)) (Object!8047) (End!7924) (Def!7924) (Underscore!7924) (Match!7924) (Else!7924) (Error!7924) (Case!7924) (If!7924) (Extends!7924) (Abstract!7924) (Class!7924) (Val!7924) (DelimiterValue!15848 (del!7984 List!46231)) (KeywordValue!7930 (value!239786 List!46231)) (CommentValue!15848 (value!239787 List!46231)) (WhitespaceValue!15848 (value!239788 List!46231)) (IndentationValue!7924 (value!239789 List!46231)) (String!53485) (Int32!7924) (Broken!39621 (value!239790 List!46231)) (Boolean!7925) (Unit!65210) (OperatorValue!7927 (op!7984 List!46231)) (IdentifierValue!15848 (value!239791 List!46231)) (IdentifierValue!15849 (value!239792 List!46231)) (WhitespaceValue!15849 (value!239793 List!46231)) (True!15848) (False!15848) (Broken!39622 (value!239794 List!46231)) (Broken!39623 (value!239795 List!46231)) (True!15849) (RightBrace!7924) (RightBracket!7924) (Colon!7924) (Null!7924) (Comma!7924) (LeftBracket!7924) (False!15849) (LeftBrace!7924) (ImaginaryLiteralValue!7924 (text!55914 List!46231)) (StringLiteralValue!23772 (value!239796 List!46231)) (EOFValue!7924 (value!239797 List!46231)) (IdentValue!7924 (value!239798 List!46231)) (DelimiterValue!15849 (value!239799 List!46231)) (DedentValue!7924 (value!239800 List!46231)) (NewLineValue!7924 (value!239801 List!46231)) (IntegerValue!23772 (value!239802 (_ BitVec 32)) (text!55915 List!46231)) (IntegerValue!23773 (value!239803 Int) (text!55916 List!46231)) (Times!7924) (Or!7924) (Equal!7924) (Minus!7924) (Broken!39624 (value!239804 List!46231)) (And!7924) (Div!7924) (LessEqual!7924) (Mod!7924) (Concat!20523) (Not!7924) (Plus!7924) (SpaceValue!7924 (value!239805 List!46231)) (IntegerValue!23774 (value!239806 Int) (text!55917 List!46231)) (StringLiteralValue!23773 (text!55918 List!46231)) (FloatLiteralValue!15849 (text!55919 List!46231)) (BytesLiteralValue!7924 (value!239807 List!46231)) (CommentValue!15849 (value!239808 List!46231)) (StringLiteralValue!23774 (value!239809 List!46231)) (ErrorTokenValue!7924 (msg!7985 List!46231)) )
))
(declare-datatypes ((String!53486 0))(
  ( (String!53487 (value!239810 String)) )
))
(declare-datatypes ((C!25388 0))(
  ( (C!25389 (val!14856 Int)) )
))
(declare-datatypes ((List!46232 0))(
  ( (Nil!46108) (Cons!46108 (h!51528 C!25388) (t!346639 List!46232)) )
))
(declare-datatypes ((IArray!27815 0))(
  ( (IArray!27816 (innerList!13965 List!46232)) )
))
(declare-datatypes ((Conc!13905 0))(
  ( (Node!13905 (left!34350 Conc!13905) (right!34680 Conc!13905) (csize!28040 Int) (cheight!14116 Int)) (Leaf!21495 (xs!17211 IArray!27815) (csize!28041 Int)) (Empty!13905) )
))
(declare-datatypes ((BalanceConc!27404 0))(
  ( (BalanceConc!27405 (c!715970 Conc!13905)) )
))
(declare-datatypes ((Regex!12599 0))(
  ( (ElementMatch!12599 (c!715971 C!25388)) (Concat!20524 (regOne!25710 Regex!12599) (regTwo!25710 Regex!12599)) (EmptyExpr!12599) (Star!12599 (reg!12928 Regex!12599)) (EmptyLang!12599) (Union!12599 (regOne!25711 Regex!12599) (regTwo!25711 Regex!12599)) )
))
(declare-datatypes ((TokenValueInjection!15276 0))(
  ( (TokenValueInjection!15277 (toValue!10394 Int) (toChars!10253 Int)) )
))
(declare-datatypes ((Rule!15188 0))(
  ( (Rule!15189 (regex!7694 Regex!12599) (tag!8558 String!53486) (isSeparator!7694 Bool) (transformation!7694 TokenValueInjection!15276)) )
))
(declare-datatypes ((List!46233 0))(
  ( (Nil!46109) (Cons!46109 (h!51529 Rule!15188) (t!346640 List!46233)) )
))
(declare-fun rules!3843 () List!46233)

(declare-fun isEmpty!27308 (List!46233) Bool)

(assert (=> b!4197914 (= res!1723720 (not (isEmpty!27308 rules!3843)))))

(declare-fun b!4197915 () Bool)

(declare-fun e!2605790 () Bool)

(declare-fun e!2605800 () Bool)

(declare-fun tp!1282338 () Bool)

(assert (=> b!4197915 (= e!2605790 (and e!2605800 tp!1282338))))

(declare-fun b!4197916 () Bool)

(declare-fun res!1723704 () Bool)

(assert (=> b!4197916 (=> (not res!1723704) (not e!2605807))))

(declare-fun r!4142 () Rule!15188)

(declare-fun p!2959 () List!46232)

(declare-fun matchR!6338 (Regex!12599 List!46232) Bool)

(assert (=> b!4197916 (= res!1723704 (matchR!6338 (regex!7694 r!4142) p!2959))))

(declare-fun e!2605808 () Bool)

(assert (=> b!4197917 (= e!2605808 (and tp!1282342 tp!1282346))))

(declare-fun b!4197918 () Bool)

(declare-datatypes ((Unit!65211 0))(
  ( (Unit!65212) )
))
(declare-fun e!2605795 () Unit!65211)

(declare-fun Unit!65213 () Unit!65211)

(assert (=> b!4197918 (= e!2605795 Unit!65213)))

(declare-fun input!3342 () List!46232)

(declare-fun pBis!107 () List!46232)

(declare-fun lt!1495498 () Unit!65211)

(declare-fun lt!1495497 () List!46232)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1015 (List!46232 List!46232 List!46232) Unit!65211)

(assert (=> b!4197918 (= lt!1495498 (lemmaIsPrefixSameLengthThenSameList!1015 pBis!107 lt!1495497 input!3342))))

(assert (=> b!4197918 false))

(declare-datatypes ((Token!14102 0))(
  ( (Token!14103 (value!239811 TokenValue!7924) (rule!10792 Rule!15188) (size!33895 Int) (originalCharacters!8082 List!46232)) )
))
(declare-datatypes ((tuple2!43898 0))(
  ( (tuple2!43899 (_1!25083 Token!14102) (_2!25083 List!46232)) )
))
(declare-datatypes ((Option!9888 0))(
  ( (None!9887) (Some!9887 (v!40733 tuple2!43898)) )
))
(declare-fun lt!1495492 () Option!9888)

(declare-fun b!4197919 () Bool)

(declare-fun lt!1495502 () List!46232)

(declare-fun rBis!167 () Rule!15188)

(declare-fun lt!1495496 () tuple2!43898)

(declare-fun e!2605802 () Bool)

(assert (=> b!4197919 (= e!2605802 (or (not (= lt!1495492 (Some!9887 (tuple2!43899 (_1!25083 lt!1495496) (_2!25083 lt!1495496))))) (not (= (rule!10792 (_1!25083 lt!1495496)) rBis!167)) (= lt!1495502 input!3342)))))

(declare-fun b!4197920 () Bool)

(declare-fun Unit!65214 () Unit!65211)

(assert (=> b!4197920 (= e!2605795 Unit!65214)))

(declare-fun b!4197921 () Bool)

(declare-fun res!1723716 () Bool)

(assert (=> b!4197921 (=> res!1723716 e!2605802)))

(declare-fun isPrefix!4551 (List!46232 List!46232) Bool)

(assert (=> b!4197921 (= res!1723716 (not (isPrefix!4551 lt!1495497 input!3342)))))

(declare-fun b!4197922 () Bool)

(declare-fun res!1723714 () Bool)

(assert (=> b!4197922 (=> (not res!1723714) (not e!2605807))))

(assert (=> b!4197922 (= res!1723714 (isPrefix!4551 p!2959 input!3342))))

(declare-fun b!4197923 () Bool)

(declare-fun e!2605788 () Bool)

(declare-fun e!2605793 () Bool)

(assert (=> b!4197923 (= e!2605788 e!2605793)))

(declare-fun res!1723703 () Bool)

(assert (=> b!4197923 (=> res!1723703 e!2605793)))

(declare-fun isEmpty!27309 (Option!9888) Bool)

(assert (=> b!4197923 (= res!1723703 (isEmpty!27309 lt!1495492))))

(declare-datatypes ((LexerInterface!7287 0))(
  ( (LexerInterfaceExt!7284 (__x!28070 Int)) (Lexer!7285) )
))
(declare-fun thiss!25986 () LexerInterface!7287)

(declare-fun maxPrefixOneRule!3296 (LexerInterface!7287 Rule!15188 List!46232) Option!9888)

(assert (=> b!4197923 (= lt!1495492 (maxPrefixOneRule!3296 thiss!25986 rBis!167 input!3342))))

(declare-fun lt!1495493 () Unit!65211)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2418 (LexerInterface!7287 Rule!15188 List!46233) Unit!65211)

(assert (=> b!4197923 (= lt!1495493 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2418 thiss!25986 rBis!167 rules!3843))))

(declare-fun lt!1495491 () Int)

(declare-fun size!33896 (List!46232) Int)

(assert (=> b!4197923 (<= lt!1495491 (size!33896 input!3342))))

(declare-fun lt!1495484 () Unit!65211)

(declare-fun lemmaIsPrefixThenSmallerEqSize!581 (List!46232 List!46232) Unit!65211)

(assert (=> b!4197923 (= lt!1495484 (lemmaIsPrefixThenSmallerEqSize!581 pBis!107 input!3342))))

(declare-fun b!4197924 () Bool)

(declare-fun res!1723718 () Bool)

(assert (=> b!4197924 (=> (not res!1723718) (not e!2605807))))

(declare-fun ruleValid!3412 (LexerInterface!7287 Rule!15188) Bool)

(assert (=> b!4197924 (= res!1723718 (ruleValid!3412 thiss!25986 r!4142))))

(declare-fun e!2605799 () Bool)

(assert (=> b!4197925 (= e!2605799 (and tp!1282341 tp!1282335))))

(declare-fun res!1723722 () Bool)

(assert (=> start!400950 (=> (not res!1723722) (not e!2605807))))

(get-info :version)

(assert (=> start!400950 (= res!1723722 ((_ is Lexer!7285) thiss!25986))))

(assert (=> start!400950 e!2605807))

(assert (=> start!400950 true))

(declare-fun e!2605801 () Bool)

(assert (=> start!400950 e!2605801))

(declare-fun e!2605789 () Bool)

(assert (=> start!400950 e!2605789))

(assert (=> start!400950 e!2605790))

(declare-fun e!2605796 () Bool)

(assert (=> start!400950 e!2605796))

(declare-fun e!2605803 () Bool)

(assert (=> start!400950 e!2605803))

(declare-fun e!2605798 () Bool)

(assert (=> start!400950 e!2605798))

(declare-fun b!4197926 () Bool)

(declare-fun tp_is_empty!22161 () Bool)

(declare-fun tp!1282339 () Bool)

(assert (=> b!4197926 (= e!2605798 (and tp_is_empty!22161 tp!1282339))))

(declare-fun b!4197927 () Bool)

(declare-fun res!1723705 () Bool)

(assert (=> b!4197927 (=> (not res!1723705) (not e!2605807))))

(declare-fun rulesInvariant!6500 (LexerInterface!7287 List!46233) Bool)

(assert (=> b!4197927 (= res!1723705 (rulesInvariant!6500 thiss!25986 rules!3843))))

(declare-fun b!4197928 () Bool)

(declare-fun tp!1282336 () Bool)

(declare-fun inv!60667 (String!53486) Bool)

(declare-fun inv!60669 (TokenValueInjection!15276) Bool)

(assert (=> b!4197928 (= e!2605801 (and tp!1282336 (inv!60667 (tag!8558 rBis!167)) (inv!60669 (transformation!7694 rBis!167)) e!2605799))))

(declare-fun b!4197929 () Bool)

(declare-fun res!1723708 () Bool)

(assert (=> b!4197929 (=> (not res!1723708) (not e!2605807))))

(assert (=> b!4197929 (= res!1723708 (isPrefix!4551 pBis!107 input!3342))))

(declare-fun b!4197930 () Bool)

(declare-fun e!2605806 () Bool)

(assert (=> b!4197930 (= e!2605807 (not e!2605806))))

(declare-fun res!1723710 () Bool)

(assert (=> b!4197930 (=> res!1723710 e!2605806)))

(declare-fun lt!1495494 () Option!9888)

(assert (=> b!4197930 (= res!1723710 (not (= (maxPrefixOneRule!3296 thiss!25986 r!4142 input!3342) lt!1495494)))))

(declare-fun lt!1495500 () TokenValue!7924)

(declare-fun lt!1495495 () List!46232)

(declare-fun lt!1495501 () Int)

(assert (=> b!4197930 (= lt!1495494 (Some!9887 (tuple2!43899 (Token!14103 lt!1495500 r!4142 lt!1495501 p!2959) lt!1495495)))))

(declare-fun getSuffix!2844 (List!46232 List!46232) List!46232)

(assert (=> b!4197930 (= lt!1495495 (getSuffix!2844 input!3342 p!2959))))

(assert (=> b!4197930 (= lt!1495501 (size!33896 p!2959))))

(declare-fun lt!1495488 () BalanceConc!27404)

(declare-fun apply!10659 (TokenValueInjection!15276 BalanceConc!27404) TokenValue!7924)

(assert (=> b!4197930 (= lt!1495500 (apply!10659 (transformation!7694 r!4142) lt!1495488))))

(assert (=> b!4197930 (isPrefix!4551 input!3342 input!3342)))

(declare-fun lt!1495499 () Unit!65211)

(declare-fun lemmaIsPrefixRefl!2980 (List!46232 List!46232) Unit!65211)

(assert (=> b!4197930 (= lt!1495499 (lemmaIsPrefixRefl!2980 input!3342 input!3342))))

(declare-fun lt!1495487 () Unit!65211)

(declare-fun lemmaSemiInverse!2460 (TokenValueInjection!15276 BalanceConc!27404) Unit!65211)

(assert (=> b!4197930 (= lt!1495487 (lemmaSemiInverse!2460 (transformation!7694 r!4142) lt!1495488))))

(declare-fun seqFromList!5719 (List!46232) BalanceConc!27404)

(assert (=> b!4197930 (= lt!1495488 (seqFromList!5719 p!2959))))

(declare-fun b!4197931 () Bool)

(assert (=> b!4197931 (= e!2605806 e!2605788)))

(declare-fun res!1723717 () Bool)

(assert (=> b!4197931 (=> res!1723717 e!2605788)))

(assert (=> b!4197931 (= res!1723717 (<= lt!1495491 lt!1495501))))

(assert (=> b!4197931 (= lt!1495491 (size!33896 pBis!107))))

(declare-fun b!4197932 () Bool)

(declare-fun tp!1282337 () Bool)

(assert (=> b!4197932 (= e!2605803 (and tp_is_empty!22161 tp!1282337))))

(declare-fun b!4197933 () Bool)

(declare-fun res!1723721 () Bool)

(assert (=> b!4197933 (=> (not res!1723721) (not e!2605807))))

(declare-fun contains!9505 (List!46233 Rule!15188) Bool)

(assert (=> b!4197933 (= res!1723721 (contains!9505 rules!3843 rBis!167))))

(declare-fun b!4197934 () Bool)

(declare-fun tp!1282345 () Bool)

(assert (=> b!4197934 (= e!2605789 (and tp!1282345 (inv!60667 (tag!8558 r!4142)) (inv!60669 (transformation!7694 r!4142)) e!2605792))))

(declare-fun b!4197935 () Bool)

(declare-fun tp!1282334 () Bool)

(assert (=> b!4197935 (= e!2605800 (and tp!1282334 (inv!60667 (tag!8558 (h!51529 rules!3843))) (inv!60669 (transformation!7694 (h!51529 rules!3843))) e!2605808))))

(declare-fun b!4197936 () Bool)

(declare-fun e!2605797 () Bool)

(declare-fun e!2605794 () Bool)

(assert (=> b!4197936 (= e!2605797 e!2605794)))

(declare-fun res!1723713 () Bool)

(assert (=> b!4197936 (=> res!1723713 e!2605794)))

(declare-fun lt!1495489 () Int)

(assert (=> b!4197936 (= res!1723713 (< lt!1495489 lt!1495491))))

(declare-fun lt!1495486 () BalanceConc!27404)

(declare-fun size!33897 (BalanceConc!27404) Int)

(assert (=> b!4197936 (= lt!1495489 (size!33897 lt!1495486))))

(declare-fun b!4197937 () Bool)

(declare-fun res!1723711 () Bool)

(assert (=> b!4197937 (=> (not res!1723711) (not e!2605807))))

(declare-fun validRegex!5716 (Regex!12599) Bool)

(assert (=> b!4197937 (= res!1723711 (validRegex!5716 (regex!7694 r!4142)))))

(declare-fun b!4197938 () Bool)

(assert (=> b!4197938 (= e!2605793 e!2605797)))

(declare-fun res!1723715 () Bool)

(assert (=> b!4197938 (=> res!1723715 e!2605797)))

(assert (=> b!4197938 (= res!1723715 (= lt!1495497 pBis!107))))

(assert (=> b!4197938 (isPrefix!4551 lt!1495497 lt!1495502)))

(declare-fun ++!11766 (List!46232 List!46232) List!46232)

(assert (=> b!4197938 (= lt!1495502 (++!11766 lt!1495497 (_2!25083 lt!1495496)))))

(declare-fun lt!1495490 () Unit!65211)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3048 (List!46232 List!46232) Unit!65211)

(assert (=> b!4197938 (= lt!1495490 (lemmaConcatTwoListThenFirstIsPrefix!3048 lt!1495497 (_2!25083 lt!1495496)))))

(declare-fun list!16670 (BalanceConc!27404) List!46232)

(assert (=> b!4197938 (= lt!1495497 (list!16670 lt!1495486))))

(declare-fun charsOf!5129 (Token!14102) BalanceConc!27404)

(assert (=> b!4197938 (= lt!1495486 (charsOf!5129 (_1!25083 lt!1495496)))))

(declare-fun get!15000 (Option!9888) tuple2!43898)

(assert (=> b!4197938 (= lt!1495496 (get!15000 lt!1495492))))

(declare-fun b!4197939 () Bool)

(declare-fun res!1723712 () Bool)

(assert (=> b!4197939 (=> res!1723712 e!2605802)))

(assert (=> b!4197939 (= res!1723712 (not (= (++!11766 p!2959 lt!1495495) input!3342)))))

(declare-fun b!4197940 () Bool)

(declare-fun res!1723709 () Bool)

(assert (=> b!4197940 (=> res!1723709 e!2605788)))

(declare-fun maxPrefix!4335 (LexerInterface!7287 List!46233 List!46232) Option!9888)

(assert (=> b!4197940 (= res!1723709 (not (= (maxPrefix!4335 thiss!25986 rules!3843 input!3342) lt!1495494)))))

(declare-fun b!4197941 () Bool)

(declare-fun tp!1282340 () Bool)

(assert (=> b!4197941 (= e!2605796 (and tp_is_empty!22161 tp!1282340))))

(declare-fun b!4197942 () Bool)

(declare-fun res!1723707 () Bool)

(assert (=> b!4197942 (=> res!1723707 e!2605788)))

(assert (=> b!4197942 (= res!1723707 (not (ruleValid!3412 thiss!25986 rBis!167)))))

(declare-fun b!4197943 () Bool)

(declare-fun res!1723719 () Bool)

(assert (=> b!4197943 (=> (not res!1723719) (not e!2605807))))

(assert (=> b!4197943 (= res!1723719 (contains!9505 rules!3843 r!4142))))

(declare-fun b!4197944 () Bool)

(assert (=> b!4197944 (= e!2605794 e!2605802)))

(declare-fun res!1723706 () Bool)

(assert (=> b!4197944 (=> res!1723706 e!2605802)))

(assert (=> b!4197944 (= res!1723706 (>= lt!1495491 lt!1495489))))

(declare-fun lt!1495485 () Unit!65211)

(assert (=> b!4197944 (= lt!1495485 e!2605795)))

(declare-fun c!715969 () Bool)

(assert (=> b!4197944 (= c!715969 (= lt!1495491 (size!33896 lt!1495497)))))

(assert (= (and start!400950 res!1723722) b!4197922))

(assert (= (and b!4197922 res!1723714) b!4197929))

(assert (= (and b!4197929 res!1723708) b!4197914))

(assert (= (and b!4197914 res!1723720) b!4197927))

(assert (= (and b!4197927 res!1723705) b!4197943))

(assert (= (and b!4197943 res!1723719) b!4197933))

(assert (= (and b!4197933 res!1723721) b!4197937))

(assert (= (and b!4197937 res!1723711) b!4197916))

(assert (= (and b!4197916 res!1723704) b!4197924))

(assert (= (and b!4197924 res!1723718) b!4197930))

(assert (= (and b!4197930 (not res!1723710)) b!4197931))

(assert (= (and b!4197931 (not res!1723717)) b!4197942))

(assert (= (and b!4197942 (not res!1723707)) b!4197940))

(assert (= (and b!4197940 (not res!1723709)) b!4197923))

(assert (= (and b!4197923 (not res!1723703)) b!4197938))

(assert (= (and b!4197938 (not res!1723715)) b!4197936))

(assert (= (and b!4197936 (not res!1723713)) b!4197944))

(assert (= (and b!4197944 c!715969) b!4197918))

(assert (= (and b!4197944 (not c!715969)) b!4197920))

(assert (= (and b!4197944 (not res!1723706)) b!4197939))

(assert (= (and b!4197939 (not res!1723712)) b!4197921))

(assert (= (and b!4197921 (not res!1723716)) b!4197919))

(assert (= b!4197928 b!4197925))

(assert (= start!400950 b!4197928))

(assert (= b!4197934 b!4197913))

(assert (= start!400950 b!4197934))

(assert (= b!4197935 b!4197917))

(assert (= b!4197915 b!4197935))

(assert (= (and start!400950 ((_ is Cons!46109) rules!3843)) b!4197915))

(assert (= (and start!400950 ((_ is Cons!46108) input!3342)) b!4197941))

(assert (= (and start!400950 ((_ is Cons!46108) pBis!107)) b!4197932))

(assert (= (and start!400950 ((_ is Cons!46108) p!2959)) b!4197926))

(declare-fun m!4786699 () Bool)

(assert (=> b!4197929 m!4786699))

(declare-fun m!4786701 () Bool)

(assert (=> b!4197930 m!4786701))

(declare-fun m!4786703 () Bool)

(assert (=> b!4197930 m!4786703))

(declare-fun m!4786705 () Bool)

(assert (=> b!4197930 m!4786705))

(declare-fun m!4786707 () Bool)

(assert (=> b!4197930 m!4786707))

(declare-fun m!4786709 () Bool)

(assert (=> b!4197930 m!4786709))

(declare-fun m!4786711 () Bool)

(assert (=> b!4197930 m!4786711))

(declare-fun m!4786713 () Bool)

(assert (=> b!4197930 m!4786713))

(declare-fun m!4786715 () Bool)

(assert (=> b!4197930 m!4786715))

(declare-fun m!4786717 () Bool)

(assert (=> b!4197943 m!4786717))

(declare-fun m!4786719 () Bool)

(assert (=> b!4197923 m!4786719))

(declare-fun m!4786721 () Bool)

(assert (=> b!4197923 m!4786721))

(declare-fun m!4786723 () Bool)

(assert (=> b!4197923 m!4786723))

(declare-fun m!4786725 () Bool)

(assert (=> b!4197923 m!4786725))

(declare-fun m!4786727 () Bool)

(assert (=> b!4197923 m!4786727))

(declare-fun m!4786729 () Bool)

(assert (=> b!4197938 m!4786729))

(declare-fun m!4786731 () Bool)

(assert (=> b!4197938 m!4786731))

(declare-fun m!4786733 () Bool)

(assert (=> b!4197938 m!4786733))

(declare-fun m!4786735 () Bool)

(assert (=> b!4197938 m!4786735))

(declare-fun m!4786737 () Bool)

(assert (=> b!4197938 m!4786737))

(declare-fun m!4786739 () Bool)

(assert (=> b!4197938 m!4786739))

(declare-fun m!4786741 () Bool)

(assert (=> b!4197924 m!4786741))

(declare-fun m!4786743 () Bool)

(assert (=> b!4197918 m!4786743))

(declare-fun m!4786745 () Bool)

(assert (=> b!4197922 m!4786745))

(declare-fun m!4786747 () Bool)

(assert (=> b!4197916 m!4786747))

(declare-fun m!4786749 () Bool)

(assert (=> b!4197940 m!4786749))

(declare-fun m!4786751 () Bool)

(assert (=> b!4197944 m!4786751))

(declare-fun m!4786753 () Bool)

(assert (=> b!4197935 m!4786753))

(declare-fun m!4786755 () Bool)

(assert (=> b!4197935 m!4786755))

(declare-fun m!4786757 () Bool)

(assert (=> b!4197914 m!4786757))

(declare-fun m!4786759 () Bool)

(assert (=> b!4197934 m!4786759))

(declare-fun m!4786761 () Bool)

(assert (=> b!4197934 m!4786761))

(declare-fun m!4786763 () Bool)

(assert (=> b!4197936 m!4786763))

(declare-fun m!4786765 () Bool)

(assert (=> b!4197927 m!4786765))

(declare-fun m!4786767 () Bool)

(assert (=> b!4197937 m!4786767))

(declare-fun m!4786769 () Bool)

(assert (=> b!4197931 m!4786769))

(declare-fun m!4786771 () Bool)

(assert (=> b!4197933 m!4786771))

(declare-fun m!4786773 () Bool)

(assert (=> b!4197939 m!4786773))

(declare-fun m!4786775 () Bool)

(assert (=> b!4197942 m!4786775))

(declare-fun m!4786777 () Bool)

(assert (=> b!4197928 m!4786777))

(declare-fun m!4786779 () Bool)

(assert (=> b!4197928 m!4786779))

(declare-fun m!4786781 () Bool)

(assert (=> b!4197921 m!4786781))

(check-sat (not b!4197921) (not b!4197923) (not b!4197933) (not b!4197935) (not b!4197924) (not b_next!123061) (not b_next!123063) b_and!329309 (not b!4197942) (not b_next!123055) (not b!4197929) (not b!4197922) (not b_next!123057) (not b!4197931) (not b_next!123065) (not b_next!123059) (not b!4197938) (not b!4197927) (not b!4197918) (not b!4197941) (not b!4197930) (not b!4197936) (not b!4197926) b_and!329319 (not b!4197939) (not b!4197940) (not b!4197934) b_and!329311 (not b!4197943) (not b!4197944) (not b!4197914) (not b!4197916) b_and!329313 (not b!4197937) tp_is_empty!22161 (not b!4197932) (not b!4197915) b_and!329317 b_and!329315 (not b!4197928))
(check-sat (not b_next!123057) b_and!329319 (not b_next!123061) b_and!329311 (not b_next!123063) b_and!329313 b_and!329309 (not b_next!123055) (not b_next!123065) (not b_next!123059) b_and!329317 b_and!329315)
(get-model)

(declare-fun d!1237926 () Bool)

(declare-fun lt!1495505 () Int)

(assert (=> d!1237926 (>= lt!1495505 0)))

(declare-fun e!2605811 () Int)

(assert (=> d!1237926 (= lt!1495505 e!2605811)))

(declare-fun c!715974 () Bool)

(assert (=> d!1237926 (= c!715974 ((_ is Nil!46108) pBis!107))))

(assert (=> d!1237926 (= (size!33896 pBis!107) lt!1495505)))

(declare-fun b!4197949 () Bool)

(assert (=> b!4197949 (= e!2605811 0)))

(declare-fun b!4197950 () Bool)

(assert (=> b!4197950 (= e!2605811 (+ 1 (size!33896 (t!346639 pBis!107))))))

(assert (= (and d!1237926 c!715974) b!4197949))

(assert (= (and d!1237926 (not c!715974)) b!4197950))

(declare-fun m!4786783 () Bool)

(assert (=> b!4197950 m!4786783))

(assert (=> b!4197931 d!1237926))

(declare-fun d!1237928 () Bool)

(declare-fun lt!1495508 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7199 (List!46233) (InoxSet Rule!15188))

(assert (=> d!1237928 (= lt!1495508 (select (content!7199 rules!3843) rBis!167))))

(declare-fun e!2605817 () Bool)

(assert (=> d!1237928 (= lt!1495508 e!2605817)))

(declare-fun res!1723735 () Bool)

(assert (=> d!1237928 (=> (not res!1723735) (not e!2605817))))

(assert (=> d!1237928 (= res!1723735 ((_ is Cons!46109) rules!3843))))

(assert (=> d!1237928 (= (contains!9505 rules!3843 rBis!167) lt!1495508)))

(declare-fun b!4197955 () Bool)

(declare-fun e!2605816 () Bool)

(assert (=> b!4197955 (= e!2605817 e!2605816)))

(declare-fun res!1723736 () Bool)

(assert (=> b!4197955 (=> res!1723736 e!2605816)))

(assert (=> b!4197955 (= res!1723736 (= (h!51529 rules!3843) rBis!167))))

(declare-fun b!4197956 () Bool)

(assert (=> b!4197956 (= e!2605816 (contains!9505 (t!346640 rules!3843) rBis!167))))

(assert (= (and d!1237928 res!1723735) b!4197955))

(assert (= (and b!4197955 (not res!1723736)) b!4197956))

(declare-fun m!4786785 () Bool)

(assert (=> d!1237928 m!4786785))

(declare-fun m!4786787 () Bool)

(assert (=> d!1237928 m!4786787))

(declare-fun m!4786789 () Bool)

(assert (=> b!4197956 m!4786789))

(assert (=> b!4197933 d!1237928))

(declare-fun d!1237930 () Bool)

(assert (=> d!1237930 (= (inv!60667 (tag!8558 r!4142)) (= (mod (str.len (value!239810 (tag!8558 r!4142))) 2) 0))))

(assert (=> b!4197934 d!1237930))

(declare-fun d!1237932 () Bool)

(declare-fun res!1723749 () Bool)

(declare-fun e!2605834 () Bool)

(assert (=> d!1237932 (=> (not res!1723749) (not e!2605834))))

(declare-fun semiInverseModEq!3342 (Int Int) Bool)

(assert (=> d!1237932 (= res!1723749 (semiInverseModEq!3342 (toChars!10253 (transformation!7694 r!4142)) (toValue!10394 (transformation!7694 r!4142))))))

(assert (=> d!1237932 (= (inv!60669 (transformation!7694 r!4142)) e!2605834)))

(declare-fun b!4197977 () Bool)

(declare-fun equivClasses!3241 (Int Int) Bool)

(assert (=> b!4197977 (= e!2605834 (equivClasses!3241 (toChars!10253 (transformation!7694 r!4142)) (toValue!10394 (transformation!7694 r!4142))))))

(assert (= (and d!1237932 res!1723749) b!4197977))

(declare-fun m!4786791 () Bool)

(assert (=> d!1237932 m!4786791))

(declare-fun m!4786793 () Bool)

(assert (=> b!4197977 m!4786793))

(assert (=> b!4197934 d!1237932))

(declare-fun d!1237936 () Bool)

(assert (=> d!1237936 (= (inv!60667 (tag!8558 (h!51529 rules!3843))) (= (mod (str.len (value!239810 (tag!8558 (h!51529 rules!3843)))) 2) 0))))

(assert (=> b!4197935 d!1237936))

(declare-fun d!1237938 () Bool)

(declare-fun res!1723750 () Bool)

(declare-fun e!2605835 () Bool)

(assert (=> d!1237938 (=> (not res!1723750) (not e!2605835))))

(assert (=> d!1237938 (= res!1723750 (semiInverseModEq!3342 (toChars!10253 (transformation!7694 (h!51529 rules!3843))) (toValue!10394 (transformation!7694 (h!51529 rules!3843)))))))

(assert (=> d!1237938 (= (inv!60669 (transformation!7694 (h!51529 rules!3843))) e!2605835)))

(declare-fun b!4197978 () Bool)

(assert (=> b!4197978 (= e!2605835 (equivClasses!3241 (toChars!10253 (transformation!7694 (h!51529 rules!3843))) (toValue!10394 (transformation!7694 (h!51529 rules!3843)))))))

(assert (= (and d!1237938 res!1723750) b!4197978))

(declare-fun m!4786795 () Bool)

(assert (=> d!1237938 m!4786795))

(declare-fun m!4786797 () Bool)

(assert (=> b!4197978 m!4786797))

(assert (=> b!4197935 d!1237938))

(declare-fun d!1237940 () Bool)

(assert (=> d!1237940 (= (isEmpty!27308 rules!3843) ((_ is Nil!46109) rules!3843))))

(assert (=> b!4197914 d!1237940))

(declare-fun d!1237944 () Bool)

(declare-fun res!1723758 () Bool)

(declare-fun e!2605845 () Bool)

(assert (=> d!1237944 (=> (not res!1723758) (not e!2605845))))

(declare-fun rulesValid!3010 (LexerInterface!7287 List!46233) Bool)

(assert (=> d!1237944 (= res!1723758 (rulesValid!3010 thiss!25986 rules!3843))))

(assert (=> d!1237944 (= (rulesInvariant!6500 thiss!25986 rules!3843) e!2605845)))

(declare-fun b!4197990 () Bool)

(declare-datatypes ((List!46235 0))(
  ( (Nil!46111) (Cons!46111 (h!51531 String!53486) (t!346690 List!46235)) )
))
(declare-fun noDuplicateTag!3171 (LexerInterface!7287 List!46233 List!46235) Bool)

(assert (=> b!4197990 (= e!2605845 (noDuplicateTag!3171 thiss!25986 rules!3843 Nil!46111))))

(assert (= (and d!1237944 res!1723758) b!4197990))

(declare-fun m!4786809 () Bool)

(assert (=> d!1237944 m!4786809))

(declare-fun m!4786811 () Bool)

(assert (=> b!4197990 m!4786811))

(assert (=> b!4197927 d!1237944))

(declare-fun d!1237950 () Bool)

(assert (=> d!1237950 (= (inv!60667 (tag!8558 rBis!167)) (= (mod (str.len (value!239810 (tag!8558 rBis!167))) 2) 0))))

(assert (=> b!4197928 d!1237950))

(declare-fun d!1237952 () Bool)

(declare-fun res!1723759 () Bool)

(declare-fun e!2605846 () Bool)

(assert (=> d!1237952 (=> (not res!1723759) (not e!2605846))))

(assert (=> d!1237952 (= res!1723759 (semiInverseModEq!3342 (toChars!10253 (transformation!7694 rBis!167)) (toValue!10394 (transformation!7694 rBis!167))))))

(assert (=> d!1237952 (= (inv!60669 (transformation!7694 rBis!167)) e!2605846)))

(declare-fun b!4197991 () Bool)

(assert (=> b!4197991 (= e!2605846 (equivClasses!3241 (toChars!10253 (transformation!7694 rBis!167)) (toValue!10394 (transformation!7694 rBis!167))))))

(assert (= (and d!1237952 res!1723759) b!4197991))

(declare-fun m!4786813 () Bool)

(assert (=> d!1237952 m!4786813))

(declare-fun m!4786815 () Bool)

(assert (=> b!4197991 m!4786815))

(assert (=> b!4197928 d!1237952))

(declare-fun b!4198028 () Bool)

(declare-fun e!2605868 () Bool)

(declare-fun e!2605867 () Bool)

(assert (=> b!4198028 (= e!2605868 e!2605867)))

(declare-fun res!1723786 () Bool)

(assert (=> b!4198028 (=> (not res!1723786) (not e!2605867))))

(assert (=> b!4198028 (= res!1723786 (not ((_ is Nil!46108) input!3342)))))

(declare-fun b!4198029 () Bool)

(declare-fun res!1723784 () Bool)

(assert (=> b!4198029 (=> (not res!1723784) (not e!2605867))))

(declare-fun head!8910 (List!46232) C!25388)

(assert (=> b!4198029 (= res!1723784 (= (head!8910 pBis!107) (head!8910 input!3342)))))

(declare-fun b!4198031 () Bool)

(declare-fun e!2605869 () Bool)

(assert (=> b!4198031 (= e!2605869 (>= (size!33896 input!3342) (size!33896 pBis!107)))))

(declare-fun b!4198030 () Bool)

(declare-fun tail!6757 (List!46232) List!46232)

(assert (=> b!4198030 (= e!2605867 (isPrefix!4551 (tail!6757 pBis!107) (tail!6757 input!3342)))))

(declare-fun d!1237954 () Bool)

(assert (=> d!1237954 e!2605869))

(declare-fun res!1723787 () Bool)

(assert (=> d!1237954 (=> res!1723787 e!2605869)))

(declare-fun lt!1495516 () Bool)

(assert (=> d!1237954 (= res!1723787 (not lt!1495516))))

(assert (=> d!1237954 (= lt!1495516 e!2605868)))

(declare-fun res!1723785 () Bool)

(assert (=> d!1237954 (=> res!1723785 e!2605868)))

(assert (=> d!1237954 (= res!1723785 ((_ is Nil!46108) pBis!107))))

(assert (=> d!1237954 (= (isPrefix!4551 pBis!107 input!3342) lt!1495516)))

(assert (= (and d!1237954 (not res!1723785)) b!4198028))

(assert (= (and b!4198028 res!1723786) b!4198029))

(assert (= (and b!4198029 res!1723784) b!4198030))

(assert (= (and d!1237954 (not res!1723787)) b!4198031))

(declare-fun m!4786817 () Bool)

(assert (=> b!4198029 m!4786817))

(declare-fun m!4786819 () Bool)

(assert (=> b!4198029 m!4786819))

(assert (=> b!4198031 m!4786721))

(assert (=> b!4198031 m!4786769))

(declare-fun m!4786821 () Bool)

(assert (=> b!4198030 m!4786821))

(declare-fun m!4786823 () Bool)

(assert (=> b!4198030 m!4786823))

(assert (=> b!4198030 m!4786821))

(assert (=> b!4198030 m!4786823))

(declare-fun m!4786825 () Bool)

(assert (=> b!4198030 m!4786825))

(assert (=> b!4197929 d!1237954))

(declare-fun d!1237956 () Bool)

(declare-fun dynLambda!19884 (Int BalanceConc!27404) TokenValue!7924)

(assert (=> d!1237956 (= (apply!10659 (transformation!7694 r!4142) lt!1495488) (dynLambda!19884 (toValue!10394 (transformation!7694 r!4142)) lt!1495488))))

(declare-fun b_lambda!123563 () Bool)

(assert (=> (not b_lambda!123563) (not d!1237956)))

(declare-fun tb!251619 () Bool)

(declare-fun t!346642 () Bool)

(assert (=> (and b!4197925 (= (toValue!10394 (transformation!7694 rBis!167)) (toValue!10394 (transformation!7694 r!4142))) t!346642) tb!251619))

(declare-fun result!306688 () Bool)

(declare-fun inv!21 (TokenValue!7924) Bool)

(assert (=> tb!251619 (= result!306688 (inv!21 (dynLambda!19884 (toValue!10394 (transformation!7694 r!4142)) lt!1495488)))))

(declare-fun m!4786841 () Bool)

(assert (=> tb!251619 m!4786841))

(assert (=> d!1237956 t!346642))

(declare-fun b_and!329321 () Bool)

(assert (= b_and!329309 (and (=> t!346642 result!306688) b_and!329321)))

(declare-fun t!346644 () Bool)

(declare-fun tb!251621 () Bool)

(assert (=> (and b!4197913 (= (toValue!10394 (transformation!7694 r!4142)) (toValue!10394 (transformation!7694 r!4142))) t!346644) tb!251621))

(declare-fun result!306692 () Bool)

(assert (= result!306692 result!306688))

(assert (=> d!1237956 t!346644))

(declare-fun b_and!329323 () Bool)

(assert (= b_and!329313 (and (=> t!346644 result!306692) b_and!329323)))

(declare-fun t!346646 () Bool)

(declare-fun tb!251623 () Bool)

(assert (=> (and b!4197917 (= (toValue!10394 (transformation!7694 (h!51529 rules!3843))) (toValue!10394 (transformation!7694 r!4142))) t!346646) tb!251623))

(declare-fun result!306694 () Bool)

(assert (= result!306694 result!306688))

(assert (=> d!1237956 t!346646))

(declare-fun b_and!329325 () Bool)

(assert (= b_and!329317 (and (=> t!346646 result!306694) b_and!329325)))

(declare-fun m!4786843 () Bool)

(assert (=> d!1237956 m!4786843))

(assert (=> b!4197930 d!1237956))

(declare-fun b!4198054 () Bool)

(declare-fun e!2605884 () Bool)

(declare-fun e!2605883 () Bool)

(assert (=> b!4198054 (= e!2605884 e!2605883)))

(declare-fun res!1723804 () Bool)

(assert (=> b!4198054 (=> (not res!1723804) (not e!2605883))))

(assert (=> b!4198054 (= res!1723804 (not ((_ is Nil!46108) input!3342)))))

(declare-fun b!4198055 () Bool)

(declare-fun res!1723802 () Bool)

(assert (=> b!4198055 (=> (not res!1723802) (not e!2605883))))

(assert (=> b!4198055 (= res!1723802 (= (head!8910 input!3342) (head!8910 input!3342)))))

(declare-fun b!4198057 () Bool)

(declare-fun e!2605885 () Bool)

(assert (=> b!4198057 (= e!2605885 (>= (size!33896 input!3342) (size!33896 input!3342)))))

(declare-fun b!4198056 () Bool)

(assert (=> b!4198056 (= e!2605883 (isPrefix!4551 (tail!6757 input!3342) (tail!6757 input!3342)))))

(declare-fun d!1237960 () Bool)

(assert (=> d!1237960 e!2605885))

(declare-fun res!1723805 () Bool)

(assert (=> d!1237960 (=> res!1723805 e!2605885)))

(declare-fun lt!1495518 () Bool)

(assert (=> d!1237960 (= res!1723805 (not lt!1495518))))

(assert (=> d!1237960 (= lt!1495518 e!2605884)))

(declare-fun res!1723803 () Bool)

(assert (=> d!1237960 (=> res!1723803 e!2605884)))

(assert (=> d!1237960 (= res!1723803 ((_ is Nil!46108) input!3342))))

(assert (=> d!1237960 (= (isPrefix!4551 input!3342 input!3342) lt!1495518)))

(assert (= (and d!1237960 (not res!1723803)) b!4198054))

(assert (= (and b!4198054 res!1723804) b!4198055))

(assert (= (and b!4198055 res!1723802) b!4198056))

(assert (= (and d!1237960 (not res!1723805)) b!4198057))

(assert (=> b!4198055 m!4786819))

(assert (=> b!4198055 m!4786819))

(assert (=> b!4198057 m!4786721))

(assert (=> b!4198057 m!4786721))

(assert (=> b!4198056 m!4786823))

(assert (=> b!4198056 m!4786823))

(assert (=> b!4198056 m!4786823))

(assert (=> b!4198056 m!4786823))

(declare-fun m!4786849 () Bool)

(assert (=> b!4198056 m!4786849))

(assert (=> b!4197930 d!1237960))

(declare-fun d!1237966 () Bool)

(declare-fun fromListB!2624 (List!46232) BalanceConc!27404)

(assert (=> d!1237966 (= (seqFromList!5719 p!2959) (fromListB!2624 p!2959))))

(declare-fun bs!596871 () Bool)

(assert (= bs!596871 d!1237966))

(declare-fun m!4786855 () Bool)

(assert (=> bs!596871 m!4786855))

(assert (=> b!4197930 d!1237966))

(declare-fun d!1237970 () Bool)

(assert (=> d!1237970 (isPrefix!4551 input!3342 input!3342)))

(declare-fun lt!1495524 () Unit!65211)

(declare-fun choose!25748 (List!46232 List!46232) Unit!65211)

(assert (=> d!1237970 (= lt!1495524 (choose!25748 input!3342 input!3342))))

(assert (=> d!1237970 (= (lemmaIsPrefixRefl!2980 input!3342 input!3342) lt!1495524)))

(declare-fun bs!596873 () Bool)

(assert (= bs!596873 d!1237970))

(assert (=> bs!596873 m!4786703))

(declare-fun m!4786863 () Bool)

(assert (=> bs!596873 m!4786863))

(assert (=> b!4197930 d!1237970))

(declare-fun b!4198187 () Bool)

(declare-fun res!1723909 () Bool)

(declare-fun e!2605956 () Bool)

(assert (=> b!4198187 (=> (not res!1723909) (not e!2605956))))

(declare-fun lt!1495586 () Option!9888)

(assert (=> b!4198187 (= res!1723909 (= (rule!10792 (_1!25083 (get!15000 lt!1495586))) r!4142))))

(declare-fun b!4198188 () Bool)

(declare-fun res!1723904 () Bool)

(assert (=> b!4198188 (=> (not res!1723904) (not e!2605956))))

(assert (=> b!4198188 (= res!1723904 (= (++!11766 (list!16670 (charsOf!5129 (_1!25083 (get!15000 lt!1495586)))) (_2!25083 (get!15000 lt!1495586))) input!3342))))

(declare-fun b!4198189 () Bool)

(declare-fun e!2605958 () Bool)

(assert (=> b!4198189 (= e!2605958 e!2605956)))

(declare-fun res!1723908 () Bool)

(assert (=> b!4198189 (=> (not res!1723908) (not e!2605956))))

(assert (=> b!4198189 (= res!1723908 (matchR!6338 (regex!7694 r!4142) (list!16670 (charsOf!5129 (_1!25083 (get!15000 lt!1495586))))))))

(declare-fun b!4198190 () Bool)

(declare-fun e!2605957 () Option!9888)

(declare-datatypes ((tuple2!43902 0))(
  ( (tuple2!43903 (_1!25085 List!46232) (_2!25085 List!46232)) )
))
(declare-fun lt!1495588 () tuple2!43902)

(assert (=> b!4198190 (= e!2605957 (Some!9887 (tuple2!43899 (Token!14103 (apply!10659 (transformation!7694 r!4142) (seqFromList!5719 (_1!25085 lt!1495588))) r!4142 (size!33897 (seqFromList!5719 (_1!25085 lt!1495588))) (_1!25085 lt!1495588)) (_2!25085 lt!1495588))))))

(declare-fun lt!1495587 () Unit!65211)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1596 (Regex!12599 List!46232) Unit!65211)

(assert (=> b!4198190 (= lt!1495587 (longestMatchIsAcceptedByMatchOrIsEmpty!1596 (regex!7694 r!4142) input!3342))))

(declare-fun res!1723906 () Bool)

(declare-fun isEmpty!27311 (List!46232) Bool)

(declare-fun findLongestMatchInner!1623 (Regex!12599 List!46232 Int List!46232 List!46232 Int) tuple2!43902)

(assert (=> b!4198190 (= res!1723906 (isEmpty!27311 (_1!25085 (findLongestMatchInner!1623 (regex!7694 r!4142) Nil!46108 (size!33896 Nil!46108) input!3342 input!3342 (size!33896 input!3342)))))))

(declare-fun e!2605959 () Bool)

(assert (=> b!4198190 (=> res!1723906 e!2605959)))

(assert (=> b!4198190 e!2605959))

(declare-fun lt!1495589 () Unit!65211)

(assert (=> b!4198190 (= lt!1495589 lt!1495587)))

(declare-fun lt!1495585 () Unit!65211)

(assert (=> b!4198190 (= lt!1495585 (lemmaSemiInverse!2460 (transformation!7694 r!4142) (seqFromList!5719 (_1!25085 lt!1495588))))))

(declare-fun b!4198191 () Bool)

(assert (=> b!4198191 (= e!2605957 None!9887)))

(declare-fun b!4198192 () Bool)

(assert (=> b!4198192 (= e!2605956 (= (size!33895 (_1!25083 (get!15000 lt!1495586))) (size!33896 (originalCharacters!8082 (_1!25083 (get!15000 lt!1495586))))))))

(declare-fun d!1237978 () Bool)

(assert (=> d!1237978 e!2605958))

(declare-fun res!1723903 () Bool)

(assert (=> d!1237978 (=> res!1723903 e!2605958)))

(assert (=> d!1237978 (= res!1723903 (isEmpty!27309 lt!1495586))))

(assert (=> d!1237978 (= lt!1495586 e!2605957)))

(declare-fun c!716006 () Bool)

(assert (=> d!1237978 (= c!716006 (isEmpty!27311 (_1!25085 lt!1495588)))))

(declare-fun findLongestMatch!1536 (Regex!12599 List!46232) tuple2!43902)

(assert (=> d!1237978 (= lt!1495588 (findLongestMatch!1536 (regex!7694 r!4142) input!3342))))

(assert (=> d!1237978 (ruleValid!3412 thiss!25986 r!4142)))

(assert (=> d!1237978 (= (maxPrefixOneRule!3296 thiss!25986 r!4142 input!3342) lt!1495586)))

(declare-fun b!4198193 () Bool)

(declare-fun res!1723905 () Bool)

(assert (=> b!4198193 (=> (not res!1723905) (not e!2605956))))

(assert (=> b!4198193 (= res!1723905 (= (value!239811 (_1!25083 (get!15000 lt!1495586))) (apply!10659 (transformation!7694 (rule!10792 (_1!25083 (get!15000 lt!1495586)))) (seqFromList!5719 (originalCharacters!8082 (_1!25083 (get!15000 lt!1495586)))))))))

(declare-fun b!4198194 () Bool)

(declare-fun res!1723907 () Bool)

(assert (=> b!4198194 (=> (not res!1723907) (not e!2605956))))

(assert (=> b!4198194 (= res!1723907 (< (size!33896 (_2!25083 (get!15000 lt!1495586))) (size!33896 input!3342)))))

(declare-fun b!4198195 () Bool)

(assert (=> b!4198195 (= e!2605959 (matchR!6338 (regex!7694 r!4142) (_1!25085 (findLongestMatchInner!1623 (regex!7694 r!4142) Nil!46108 (size!33896 Nil!46108) input!3342 input!3342 (size!33896 input!3342)))))))

(assert (= (and d!1237978 c!716006) b!4198191))

(assert (= (and d!1237978 (not c!716006)) b!4198190))

(assert (= (and b!4198190 (not res!1723906)) b!4198195))

(assert (= (and d!1237978 (not res!1723903)) b!4198189))

(assert (= (and b!4198189 res!1723908) b!4198188))

(assert (= (and b!4198188 res!1723904) b!4198194))

(assert (= (and b!4198194 res!1723907) b!4198187))

(assert (= (and b!4198187 res!1723909) b!4198193))

(assert (= (and b!4198193 res!1723905) b!4198192))

(declare-fun m!4787001 () Bool)

(assert (=> d!1237978 m!4787001))

(declare-fun m!4787003 () Bool)

(assert (=> d!1237978 m!4787003))

(declare-fun m!4787005 () Bool)

(assert (=> d!1237978 m!4787005))

(assert (=> d!1237978 m!4786741))

(declare-fun m!4787007 () Bool)

(assert (=> b!4198187 m!4787007))

(assert (=> b!4198189 m!4787007))

(declare-fun m!4787009 () Bool)

(assert (=> b!4198189 m!4787009))

(assert (=> b!4198189 m!4787009))

(declare-fun m!4787011 () Bool)

(assert (=> b!4198189 m!4787011))

(assert (=> b!4198189 m!4787011))

(declare-fun m!4787017 () Bool)

(assert (=> b!4198189 m!4787017))

(assert (=> b!4198192 m!4787007))

(declare-fun m!4787019 () Bool)

(assert (=> b!4198192 m!4787019))

(assert (=> b!4198188 m!4787007))

(assert (=> b!4198188 m!4787009))

(assert (=> b!4198188 m!4787009))

(assert (=> b!4198188 m!4787011))

(assert (=> b!4198188 m!4787011))

(declare-fun m!4787027 () Bool)

(assert (=> b!4198188 m!4787027))

(declare-fun m!4787033 () Bool)

(assert (=> b!4198195 m!4787033))

(assert (=> b!4198195 m!4786721))

(assert (=> b!4198195 m!4787033))

(assert (=> b!4198195 m!4786721))

(declare-fun m!4787037 () Bool)

(assert (=> b!4198195 m!4787037))

(declare-fun m!4787039 () Bool)

(assert (=> b!4198195 m!4787039))

(declare-fun m!4787041 () Bool)

(assert (=> b!4198190 m!4787041))

(declare-fun m!4787043 () Bool)

(assert (=> b!4198190 m!4787043))

(declare-fun m!4787045 () Bool)

(assert (=> b!4198190 m!4787045))

(assert (=> b!4198190 m!4787033))

(assert (=> b!4198190 m!4786721))

(assert (=> b!4198190 m!4787037))

(assert (=> b!4198190 m!4786721))

(assert (=> b!4198190 m!4787041))

(assert (=> b!4198190 m!4787041))

(declare-fun m!4787047 () Bool)

(assert (=> b!4198190 m!4787047))

(assert (=> b!4198190 m!4787033))

(declare-fun m!4787049 () Bool)

(assert (=> b!4198190 m!4787049))

(assert (=> b!4198190 m!4787041))

(declare-fun m!4787051 () Bool)

(assert (=> b!4198190 m!4787051))

(assert (=> b!4198194 m!4787007))

(declare-fun m!4787053 () Bool)

(assert (=> b!4198194 m!4787053))

(assert (=> b!4198194 m!4786721))

(assert (=> b!4198193 m!4787007))

(declare-fun m!4787055 () Bool)

(assert (=> b!4198193 m!4787055))

(assert (=> b!4198193 m!4787055))

(declare-fun m!4787057 () Bool)

(assert (=> b!4198193 m!4787057))

(assert (=> b!4197930 d!1237978))

(declare-fun d!1238024 () Bool)

(declare-fun lt!1495595 () Int)

(assert (=> d!1238024 (>= lt!1495595 0)))

(declare-fun e!2605967 () Int)

(assert (=> d!1238024 (= lt!1495595 e!2605967)))

(declare-fun c!716008 () Bool)

(assert (=> d!1238024 (= c!716008 ((_ is Nil!46108) p!2959))))

(assert (=> d!1238024 (= (size!33896 p!2959) lt!1495595)))

(declare-fun b!4198207 () Bool)

(assert (=> b!4198207 (= e!2605967 0)))

(declare-fun b!4198208 () Bool)

(assert (=> b!4198208 (= e!2605967 (+ 1 (size!33896 (t!346639 p!2959))))))

(assert (= (and d!1238024 c!716008) b!4198207))

(assert (= (and d!1238024 (not c!716008)) b!4198208))

(declare-fun m!4787059 () Bool)

(assert (=> b!4198208 m!4787059))

(assert (=> b!4197930 d!1238024))

(declare-fun d!1238026 () Bool)

(declare-fun lt!1495604 () List!46232)

(assert (=> d!1238026 (= (++!11766 p!2959 lt!1495604) input!3342)))

(declare-fun e!2605973 () List!46232)

(assert (=> d!1238026 (= lt!1495604 e!2605973)))

(declare-fun c!716011 () Bool)

(assert (=> d!1238026 (= c!716011 ((_ is Cons!46108) p!2959))))

(assert (=> d!1238026 (>= (size!33896 input!3342) (size!33896 p!2959))))

(assert (=> d!1238026 (= (getSuffix!2844 input!3342 p!2959) lt!1495604)))

(declare-fun b!4198218 () Bool)

(assert (=> b!4198218 (= e!2605973 (getSuffix!2844 (tail!6757 input!3342) (t!346639 p!2959)))))

(declare-fun b!4198219 () Bool)

(assert (=> b!4198219 (= e!2605973 input!3342)))

(assert (= (and d!1238026 c!716011) b!4198218))

(assert (= (and d!1238026 (not c!716011)) b!4198219))

(declare-fun m!4787071 () Bool)

(assert (=> d!1238026 m!4787071))

(assert (=> d!1238026 m!4786721))

(assert (=> d!1238026 m!4786711))

(assert (=> b!4198218 m!4786823))

(assert (=> b!4198218 m!4786823))

(declare-fun m!4787073 () Bool)

(assert (=> b!4198218 m!4787073))

(assert (=> b!4197930 d!1238026))

(declare-fun b!4198236 () Bool)

(declare-fun e!2605985 () Bool)

(assert (=> b!4198236 (= e!2605985 true)))

(declare-fun d!1238032 () Bool)

(assert (=> d!1238032 e!2605985))

(assert (= d!1238032 b!4198236))

(declare-fun lambda!129562 () Int)

(declare-fun order!24445 () Int)

(declare-fun order!24443 () Int)

(declare-fun dynLambda!19886 (Int Int) Int)

(declare-fun dynLambda!19887 (Int Int) Int)

(assert (=> b!4198236 (< (dynLambda!19886 order!24443 (toValue!10394 (transformation!7694 r!4142))) (dynLambda!19887 order!24445 lambda!129562))))

(declare-fun order!24447 () Int)

(declare-fun dynLambda!19888 (Int Int) Int)

(assert (=> b!4198236 (< (dynLambda!19888 order!24447 (toChars!10253 (transformation!7694 r!4142))) (dynLambda!19887 order!24445 lambda!129562))))

(declare-fun dynLambda!19889 (Int TokenValue!7924) BalanceConc!27404)

(assert (=> d!1238032 (= (list!16670 (dynLambda!19889 (toChars!10253 (transformation!7694 r!4142)) (dynLambda!19884 (toValue!10394 (transformation!7694 r!4142)) lt!1495488))) (list!16670 lt!1495488))))

(declare-fun lt!1495616 () Unit!65211)

(declare-fun ForallOf!1075 (Int BalanceConc!27404) Unit!65211)

(assert (=> d!1238032 (= lt!1495616 (ForallOf!1075 lambda!129562 lt!1495488))))

(assert (=> d!1238032 (= (lemmaSemiInverse!2460 (transformation!7694 r!4142) lt!1495488) lt!1495616)))

(declare-fun b_lambda!123569 () Bool)

(assert (=> (not b_lambda!123569) (not d!1238032)))

(declare-fun tb!251637 () Bool)

(declare-fun t!346660 () Bool)

(assert (=> (and b!4197925 (= (toChars!10253 (transformation!7694 rBis!167)) (toChars!10253 (transformation!7694 r!4142))) t!346660) tb!251637))

(declare-fun e!2605988 () Bool)

(declare-fun tp!1282352 () Bool)

(declare-fun b!4198241 () Bool)

(declare-fun inv!60672 (Conc!13905) Bool)

(assert (=> b!4198241 (= e!2605988 (and (inv!60672 (c!715970 (dynLambda!19889 (toChars!10253 (transformation!7694 r!4142)) (dynLambda!19884 (toValue!10394 (transformation!7694 r!4142)) lt!1495488)))) tp!1282352))))

(declare-fun result!306712 () Bool)

(declare-fun inv!60673 (BalanceConc!27404) Bool)

(assert (=> tb!251637 (= result!306712 (and (inv!60673 (dynLambda!19889 (toChars!10253 (transformation!7694 r!4142)) (dynLambda!19884 (toValue!10394 (transformation!7694 r!4142)) lt!1495488))) e!2605988))))

(assert (= tb!251637 b!4198241))

(declare-fun m!4787089 () Bool)

(assert (=> b!4198241 m!4787089))

(declare-fun m!4787091 () Bool)

(assert (=> tb!251637 m!4787091))

(assert (=> d!1238032 t!346660))

(declare-fun b_and!329339 () Bool)

(assert (= b_and!329311 (and (=> t!346660 result!306712) b_and!329339)))

(declare-fun t!346662 () Bool)

(declare-fun tb!251639 () Bool)

(assert (=> (and b!4197913 (= (toChars!10253 (transformation!7694 r!4142)) (toChars!10253 (transformation!7694 r!4142))) t!346662) tb!251639))

(declare-fun result!306716 () Bool)

(assert (= result!306716 result!306712))

(assert (=> d!1238032 t!346662))

(declare-fun b_and!329341 () Bool)

(assert (= b_and!329315 (and (=> t!346662 result!306716) b_and!329341)))

(declare-fun t!346664 () Bool)

(declare-fun tb!251641 () Bool)

(assert (=> (and b!4197917 (= (toChars!10253 (transformation!7694 (h!51529 rules!3843))) (toChars!10253 (transformation!7694 r!4142))) t!346664) tb!251641))

(declare-fun result!306718 () Bool)

(assert (= result!306718 result!306712))

(assert (=> d!1238032 t!346664))

(declare-fun b_and!329343 () Bool)

(assert (= b_and!329319 (and (=> t!346664 result!306718) b_and!329343)))

(declare-fun b_lambda!123571 () Bool)

(assert (=> (not b_lambda!123571) (not d!1238032)))

(assert (=> d!1238032 t!346642))

(declare-fun b_and!329345 () Bool)

(assert (= b_and!329321 (and (=> t!346642 result!306688) b_and!329345)))

(assert (=> d!1238032 t!346644))

(declare-fun b_and!329347 () Bool)

(assert (= b_and!329323 (and (=> t!346644 result!306692) b_and!329347)))

(assert (=> d!1238032 t!346646))

(declare-fun b_and!329349 () Bool)

(assert (= b_and!329325 (and (=> t!346646 result!306694) b_and!329349)))

(declare-fun m!4787093 () Bool)

(assert (=> d!1238032 m!4787093))

(declare-fun m!4787095 () Bool)

(assert (=> d!1238032 m!4787095))

(declare-fun m!4787097 () Bool)

(assert (=> d!1238032 m!4787097))

(declare-fun m!4787099 () Bool)

(assert (=> d!1238032 m!4787099))

(assert (=> d!1238032 m!4786843))

(assert (=> d!1238032 m!4786843))

(assert (=> d!1238032 m!4787095))

(assert (=> b!4197930 d!1238032))

(declare-fun d!1238044 () Bool)

(declare-fun res!1723927 () Bool)

(declare-fun e!2605991 () Bool)

(assert (=> d!1238044 (=> (not res!1723927) (not e!2605991))))

(assert (=> d!1238044 (= res!1723927 (validRegex!5716 (regex!7694 rBis!167)))))

(assert (=> d!1238044 (= (ruleValid!3412 thiss!25986 rBis!167) e!2605991)))

(declare-fun b!4198246 () Bool)

(declare-fun res!1723928 () Bool)

(assert (=> b!4198246 (=> (not res!1723928) (not e!2605991))))

(declare-fun nullable!4433 (Regex!12599) Bool)

(assert (=> b!4198246 (= res!1723928 (not (nullable!4433 (regex!7694 rBis!167))))))

(declare-fun b!4198247 () Bool)

(assert (=> b!4198247 (= e!2605991 (not (= (tag!8558 rBis!167) (String!53487 ""))))))

(assert (= (and d!1238044 res!1723927) b!4198246))

(assert (= (and b!4198246 res!1723928) b!4198247))

(declare-fun m!4787101 () Bool)

(assert (=> d!1238044 m!4787101))

(declare-fun m!4787103 () Bool)

(assert (=> b!4198246 m!4787103))

(assert (=> b!4197942 d!1238044))

(declare-fun b!4198248 () Bool)

(declare-fun e!2605993 () Bool)

(declare-fun e!2605992 () Bool)

(assert (=> b!4198248 (= e!2605993 e!2605992)))

(declare-fun res!1723931 () Bool)

(assert (=> b!4198248 (=> (not res!1723931) (not e!2605992))))

(assert (=> b!4198248 (= res!1723931 (not ((_ is Nil!46108) input!3342)))))

(declare-fun b!4198249 () Bool)

(declare-fun res!1723929 () Bool)

(assert (=> b!4198249 (=> (not res!1723929) (not e!2605992))))

(assert (=> b!4198249 (= res!1723929 (= (head!8910 lt!1495497) (head!8910 input!3342)))))

(declare-fun b!4198251 () Bool)

(declare-fun e!2605994 () Bool)

(assert (=> b!4198251 (= e!2605994 (>= (size!33896 input!3342) (size!33896 lt!1495497)))))

(declare-fun b!4198250 () Bool)

(assert (=> b!4198250 (= e!2605992 (isPrefix!4551 (tail!6757 lt!1495497) (tail!6757 input!3342)))))

(declare-fun d!1238046 () Bool)

(assert (=> d!1238046 e!2605994))

(declare-fun res!1723932 () Bool)

(assert (=> d!1238046 (=> res!1723932 e!2605994)))

(declare-fun lt!1495617 () Bool)

(assert (=> d!1238046 (= res!1723932 (not lt!1495617))))

(assert (=> d!1238046 (= lt!1495617 e!2605993)))

(declare-fun res!1723930 () Bool)

(assert (=> d!1238046 (=> res!1723930 e!2605993)))

(assert (=> d!1238046 (= res!1723930 ((_ is Nil!46108) lt!1495497))))

(assert (=> d!1238046 (= (isPrefix!4551 lt!1495497 input!3342) lt!1495617)))

(assert (= (and d!1238046 (not res!1723930)) b!4198248))

(assert (= (and b!4198248 res!1723931) b!4198249))

(assert (= (and b!4198249 res!1723929) b!4198250))

(assert (= (and d!1238046 (not res!1723932)) b!4198251))

(declare-fun m!4787105 () Bool)

(assert (=> b!4198249 m!4787105))

(assert (=> b!4198249 m!4786819))

(assert (=> b!4198251 m!4786721))

(assert (=> b!4198251 m!4786751))

(declare-fun m!4787107 () Bool)

(assert (=> b!4198250 m!4787107))

(assert (=> b!4198250 m!4786823))

(assert (=> b!4198250 m!4787107))

(assert (=> b!4198250 m!4786823))

(declare-fun m!4787109 () Bool)

(assert (=> b!4198250 m!4787109))

(assert (=> b!4197921 d!1238046))

(declare-fun d!1238048 () Bool)

(declare-fun lt!1495618 () Bool)

(assert (=> d!1238048 (= lt!1495618 (select (content!7199 rules!3843) r!4142))))

(declare-fun e!2605996 () Bool)

(assert (=> d!1238048 (= lt!1495618 e!2605996)))

(declare-fun res!1723933 () Bool)

(assert (=> d!1238048 (=> (not res!1723933) (not e!2605996))))

(assert (=> d!1238048 (= res!1723933 ((_ is Cons!46109) rules!3843))))

(assert (=> d!1238048 (= (contains!9505 rules!3843 r!4142) lt!1495618)))

(declare-fun b!4198252 () Bool)

(declare-fun e!2605995 () Bool)

(assert (=> b!4198252 (= e!2605996 e!2605995)))

(declare-fun res!1723934 () Bool)

(assert (=> b!4198252 (=> res!1723934 e!2605995)))

(assert (=> b!4198252 (= res!1723934 (= (h!51529 rules!3843) r!4142))))

(declare-fun b!4198253 () Bool)

(assert (=> b!4198253 (= e!2605995 (contains!9505 (t!346640 rules!3843) r!4142))))

(assert (= (and d!1238048 res!1723933) b!4198252))

(assert (= (and b!4198252 (not res!1723934)) b!4198253))

(assert (=> d!1238048 m!4786785))

(declare-fun m!4787111 () Bool)

(assert (=> d!1238048 m!4787111))

(declare-fun m!4787113 () Bool)

(assert (=> b!4198253 m!4787113))

(assert (=> b!4197943 d!1238048))

(declare-fun b!4198254 () Bool)

(declare-fun e!2605998 () Bool)

(declare-fun e!2605997 () Bool)

(assert (=> b!4198254 (= e!2605998 e!2605997)))

(declare-fun res!1723937 () Bool)

(assert (=> b!4198254 (=> (not res!1723937) (not e!2605997))))

(assert (=> b!4198254 (= res!1723937 (not ((_ is Nil!46108) input!3342)))))

(declare-fun b!4198255 () Bool)

(declare-fun res!1723935 () Bool)

(assert (=> b!4198255 (=> (not res!1723935) (not e!2605997))))

(assert (=> b!4198255 (= res!1723935 (= (head!8910 p!2959) (head!8910 input!3342)))))

(declare-fun b!4198257 () Bool)

(declare-fun e!2605999 () Bool)

(assert (=> b!4198257 (= e!2605999 (>= (size!33896 input!3342) (size!33896 p!2959)))))

(declare-fun b!4198256 () Bool)

(assert (=> b!4198256 (= e!2605997 (isPrefix!4551 (tail!6757 p!2959) (tail!6757 input!3342)))))

(declare-fun d!1238050 () Bool)

(assert (=> d!1238050 e!2605999))

(declare-fun res!1723938 () Bool)

(assert (=> d!1238050 (=> res!1723938 e!2605999)))

(declare-fun lt!1495619 () Bool)

(assert (=> d!1238050 (= res!1723938 (not lt!1495619))))

(assert (=> d!1238050 (= lt!1495619 e!2605998)))

(declare-fun res!1723936 () Bool)

(assert (=> d!1238050 (=> res!1723936 e!2605998)))

(assert (=> d!1238050 (= res!1723936 ((_ is Nil!46108) p!2959))))

(assert (=> d!1238050 (= (isPrefix!4551 p!2959 input!3342) lt!1495619)))

(assert (= (and d!1238050 (not res!1723936)) b!4198254))

(assert (= (and b!4198254 res!1723937) b!4198255))

(assert (= (and b!4198255 res!1723935) b!4198256))

(assert (= (and d!1238050 (not res!1723938)) b!4198257))

(declare-fun m!4787115 () Bool)

(assert (=> b!4198255 m!4787115))

(assert (=> b!4198255 m!4786819))

(assert (=> b!4198257 m!4786721))

(assert (=> b!4198257 m!4786711))

(declare-fun m!4787117 () Bool)

(assert (=> b!4198256 m!4787117))

(assert (=> b!4198256 m!4786823))

(assert (=> b!4198256 m!4787117))

(assert (=> b!4198256 m!4786823))

(declare-fun m!4787119 () Bool)

(assert (=> b!4198256 m!4787119))

(assert (=> b!4197922 d!1238050))

(declare-fun d!1238052 () Bool)

(declare-fun lt!1495620 () Int)

(assert (=> d!1238052 (>= lt!1495620 0)))

(declare-fun e!2606000 () Int)

(assert (=> d!1238052 (= lt!1495620 e!2606000)))

(declare-fun c!716017 () Bool)

(assert (=> d!1238052 (= c!716017 ((_ is Nil!46108) lt!1495497))))

(assert (=> d!1238052 (= (size!33896 lt!1495497) lt!1495620)))

(declare-fun b!4198258 () Bool)

(assert (=> b!4198258 (= e!2606000 0)))

(declare-fun b!4198259 () Bool)

(assert (=> b!4198259 (= e!2606000 (+ 1 (size!33896 (t!346639 lt!1495497))))))

(assert (= (and d!1238052 c!716017) b!4198258))

(assert (= (and d!1238052 (not c!716017)) b!4198259))

(declare-fun m!4787121 () Bool)

(assert (=> b!4198259 m!4787121))

(assert (=> b!4197944 d!1238052))

(declare-fun d!1238054 () Bool)

(assert (=> d!1238054 (ruleValid!3412 thiss!25986 rBis!167)))

(declare-fun lt!1495624 () Unit!65211)

(declare-fun choose!25752 (LexerInterface!7287 Rule!15188 List!46233) Unit!65211)

(assert (=> d!1238054 (= lt!1495624 (choose!25752 thiss!25986 rBis!167 rules!3843))))

(assert (=> d!1238054 (contains!9505 rules!3843 rBis!167)))

(assert (=> d!1238054 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2418 thiss!25986 rBis!167 rules!3843) lt!1495624)))

(declare-fun bs!596880 () Bool)

(assert (= bs!596880 d!1238054))

(assert (=> bs!596880 m!4786775))

(declare-fun m!4787123 () Bool)

(assert (=> bs!596880 m!4787123))

(assert (=> bs!596880 m!4786771))

(assert (=> b!4197923 d!1238054))

(declare-fun b!4198266 () Bool)

(declare-fun res!1723945 () Bool)

(declare-fun e!2606005 () Bool)

(assert (=> b!4198266 (=> (not res!1723945) (not e!2606005))))

(declare-fun lt!1495626 () Option!9888)

(assert (=> b!4198266 (= res!1723945 (= (rule!10792 (_1!25083 (get!15000 lt!1495626))) rBis!167))))

(declare-fun b!4198267 () Bool)

(declare-fun res!1723940 () Bool)

(assert (=> b!4198267 (=> (not res!1723940) (not e!2606005))))

(assert (=> b!4198267 (= res!1723940 (= (++!11766 (list!16670 (charsOf!5129 (_1!25083 (get!15000 lt!1495626)))) (_2!25083 (get!15000 lt!1495626))) input!3342))))

(declare-fun b!4198268 () Bool)

(declare-fun e!2606007 () Bool)

(assert (=> b!4198268 (= e!2606007 e!2606005)))

(declare-fun res!1723944 () Bool)

(assert (=> b!4198268 (=> (not res!1723944) (not e!2606005))))

(assert (=> b!4198268 (= res!1723944 (matchR!6338 (regex!7694 rBis!167) (list!16670 (charsOf!5129 (_1!25083 (get!15000 lt!1495626))))))))

(declare-fun b!4198269 () Bool)

(declare-fun e!2606006 () Option!9888)

(declare-fun lt!1495628 () tuple2!43902)

(assert (=> b!4198269 (= e!2606006 (Some!9887 (tuple2!43899 (Token!14103 (apply!10659 (transformation!7694 rBis!167) (seqFromList!5719 (_1!25085 lt!1495628))) rBis!167 (size!33897 (seqFromList!5719 (_1!25085 lt!1495628))) (_1!25085 lt!1495628)) (_2!25085 lt!1495628))))))

(declare-fun lt!1495627 () Unit!65211)

(assert (=> b!4198269 (= lt!1495627 (longestMatchIsAcceptedByMatchOrIsEmpty!1596 (regex!7694 rBis!167) input!3342))))

(declare-fun res!1723942 () Bool)

(assert (=> b!4198269 (= res!1723942 (isEmpty!27311 (_1!25085 (findLongestMatchInner!1623 (regex!7694 rBis!167) Nil!46108 (size!33896 Nil!46108) input!3342 input!3342 (size!33896 input!3342)))))))

(declare-fun e!2606008 () Bool)

(assert (=> b!4198269 (=> res!1723942 e!2606008)))

(assert (=> b!4198269 e!2606008))

(declare-fun lt!1495629 () Unit!65211)

(assert (=> b!4198269 (= lt!1495629 lt!1495627)))

(declare-fun lt!1495625 () Unit!65211)

(assert (=> b!4198269 (= lt!1495625 (lemmaSemiInverse!2460 (transformation!7694 rBis!167) (seqFromList!5719 (_1!25085 lt!1495628))))))

(declare-fun b!4198270 () Bool)

(assert (=> b!4198270 (= e!2606006 None!9887)))

(declare-fun b!4198271 () Bool)

(assert (=> b!4198271 (= e!2606005 (= (size!33895 (_1!25083 (get!15000 lt!1495626))) (size!33896 (originalCharacters!8082 (_1!25083 (get!15000 lt!1495626))))))))

(declare-fun d!1238056 () Bool)

(assert (=> d!1238056 e!2606007))

(declare-fun res!1723939 () Bool)

(assert (=> d!1238056 (=> res!1723939 e!2606007)))

(assert (=> d!1238056 (= res!1723939 (isEmpty!27309 lt!1495626))))

(assert (=> d!1238056 (= lt!1495626 e!2606006)))

(declare-fun c!716018 () Bool)

(assert (=> d!1238056 (= c!716018 (isEmpty!27311 (_1!25085 lt!1495628)))))

(assert (=> d!1238056 (= lt!1495628 (findLongestMatch!1536 (regex!7694 rBis!167) input!3342))))

(assert (=> d!1238056 (ruleValid!3412 thiss!25986 rBis!167)))

(assert (=> d!1238056 (= (maxPrefixOneRule!3296 thiss!25986 rBis!167 input!3342) lt!1495626)))

(declare-fun b!4198272 () Bool)

(declare-fun res!1723941 () Bool)

(assert (=> b!4198272 (=> (not res!1723941) (not e!2606005))))

(assert (=> b!4198272 (= res!1723941 (= (value!239811 (_1!25083 (get!15000 lt!1495626))) (apply!10659 (transformation!7694 (rule!10792 (_1!25083 (get!15000 lt!1495626)))) (seqFromList!5719 (originalCharacters!8082 (_1!25083 (get!15000 lt!1495626)))))))))

(declare-fun b!4198273 () Bool)

(declare-fun res!1723943 () Bool)

(assert (=> b!4198273 (=> (not res!1723943) (not e!2606005))))

(assert (=> b!4198273 (= res!1723943 (< (size!33896 (_2!25083 (get!15000 lt!1495626))) (size!33896 input!3342)))))

(declare-fun b!4198274 () Bool)

(assert (=> b!4198274 (= e!2606008 (matchR!6338 (regex!7694 rBis!167) (_1!25085 (findLongestMatchInner!1623 (regex!7694 rBis!167) Nil!46108 (size!33896 Nil!46108) input!3342 input!3342 (size!33896 input!3342)))))))

(assert (= (and d!1238056 c!716018) b!4198270))

(assert (= (and d!1238056 (not c!716018)) b!4198269))

(assert (= (and b!4198269 (not res!1723942)) b!4198274))

(assert (= (and d!1238056 (not res!1723939)) b!4198268))

(assert (= (and b!4198268 res!1723944) b!4198267))

(assert (= (and b!4198267 res!1723940) b!4198273))

(assert (= (and b!4198273 res!1723943) b!4198266))

(assert (= (and b!4198266 res!1723945) b!4198272))

(assert (= (and b!4198272 res!1723941) b!4198271))

(declare-fun m!4787137 () Bool)

(assert (=> d!1238056 m!4787137))

(declare-fun m!4787139 () Bool)

(assert (=> d!1238056 m!4787139))

(declare-fun m!4787141 () Bool)

(assert (=> d!1238056 m!4787141))

(assert (=> d!1238056 m!4786775))

(declare-fun m!4787143 () Bool)

(assert (=> b!4198266 m!4787143))

(assert (=> b!4198268 m!4787143))

(declare-fun m!4787145 () Bool)

(assert (=> b!4198268 m!4787145))

(assert (=> b!4198268 m!4787145))

(declare-fun m!4787147 () Bool)

(assert (=> b!4198268 m!4787147))

(assert (=> b!4198268 m!4787147))

(declare-fun m!4787149 () Bool)

(assert (=> b!4198268 m!4787149))

(assert (=> b!4198271 m!4787143))

(declare-fun m!4787151 () Bool)

(assert (=> b!4198271 m!4787151))

(assert (=> b!4198267 m!4787143))

(assert (=> b!4198267 m!4787145))

(assert (=> b!4198267 m!4787145))

(assert (=> b!4198267 m!4787147))

(assert (=> b!4198267 m!4787147))

(declare-fun m!4787153 () Bool)

(assert (=> b!4198267 m!4787153))

(assert (=> b!4198274 m!4787033))

(assert (=> b!4198274 m!4786721))

(assert (=> b!4198274 m!4787033))

(assert (=> b!4198274 m!4786721))

(declare-fun m!4787155 () Bool)

(assert (=> b!4198274 m!4787155))

(declare-fun m!4787157 () Bool)

(assert (=> b!4198274 m!4787157))

(declare-fun m!4787161 () Bool)

(assert (=> b!4198269 m!4787161))

(declare-fun m!4787163 () Bool)

(assert (=> b!4198269 m!4787163))

(declare-fun m!4787169 () Bool)

(assert (=> b!4198269 m!4787169))

(assert (=> b!4198269 m!4787033))

(assert (=> b!4198269 m!4786721))

(assert (=> b!4198269 m!4787155))

(assert (=> b!4198269 m!4786721))

(assert (=> b!4198269 m!4787161))

(assert (=> b!4198269 m!4787161))

(declare-fun m!4787173 () Bool)

(assert (=> b!4198269 m!4787173))

(assert (=> b!4198269 m!4787033))

(declare-fun m!4787179 () Bool)

(assert (=> b!4198269 m!4787179))

(assert (=> b!4198269 m!4787161))

(declare-fun m!4787183 () Bool)

(assert (=> b!4198269 m!4787183))

(assert (=> b!4198273 m!4787143))

(declare-fun m!4787187 () Bool)

(assert (=> b!4198273 m!4787187))

(assert (=> b!4198273 m!4786721))

(assert (=> b!4198272 m!4787143))

(declare-fun m!4787191 () Bool)

(assert (=> b!4198272 m!4787191))

(assert (=> b!4198272 m!4787191))

(declare-fun m!4787195 () Bool)

(assert (=> b!4198272 m!4787195))

(assert (=> b!4197923 d!1238056))

(declare-fun d!1238060 () Bool)

(assert (=> d!1238060 (<= (size!33896 pBis!107) (size!33896 input!3342))))

(declare-fun lt!1495638 () Unit!65211)

(declare-fun choose!25753 (List!46232 List!46232) Unit!65211)

(assert (=> d!1238060 (= lt!1495638 (choose!25753 pBis!107 input!3342))))

(assert (=> d!1238060 (isPrefix!4551 pBis!107 input!3342)))

(assert (=> d!1238060 (= (lemmaIsPrefixThenSmallerEqSize!581 pBis!107 input!3342) lt!1495638)))

(declare-fun bs!596881 () Bool)

(assert (= bs!596881 d!1238060))

(assert (=> bs!596881 m!4786769))

(assert (=> bs!596881 m!4786721))

(declare-fun m!4787219 () Bool)

(assert (=> bs!596881 m!4787219))

(assert (=> bs!596881 m!4786699))

(assert (=> b!4197923 d!1238060))

(declare-fun d!1238064 () Bool)

(declare-fun lt!1495639 () Int)

(assert (=> d!1238064 (>= lt!1495639 0)))

(declare-fun e!2606019 () Int)

(assert (=> d!1238064 (= lt!1495639 e!2606019)))

(declare-fun c!716021 () Bool)

(assert (=> d!1238064 (= c!716021 ((_ is Nil!46108) input!3342))))

(assert (=> d!1238064 (= (size!33896 input!3342) lt!1495639)))

(declare-fun b!4198301 () Bool)

(assert (=> b!4198301 (= e!2606019 0)))

(declare-fun b!4198302 () Bool)

(assert (=> b!4198302 (= e!2606019 (+ 1 (size!33896 (t!346639 input!3342))))))

(assert (= (and d!1238064 c!716021) b!4198301))

(assert (= (and d!1238064 (not c!716021)) b!4198302))

(declare-fun m!4787221 () Bool)

(assert (=> b!4198302 m!4787221))

(assert (=> b!4197923 d!1238064))

(declare-fun d!1238066 () Bool)

(assert (=> d!1238066 (= (isEmpty!27309 lt!1495492) (not ((_ is Some!9887) lt!1495492)))))

(assert (=> b!4197923 d!1238066))

(declare-fun d!1238068 () Bool)

(declare-fun res!1723953 () Bool)

(declare-fun e!2606022 () Bool)

(assert (=> d!1238068 (=> (not res!1723953) (not e!2606022))))

(assert (=> d!1238068 (= res!1723953 (validRegex!5716 (regex!7694 r!4142)))))

(assert (=> d!1238068 (= (ruleValid!3412 thiss!25986 r!4142) e!2606022)))

(declare-fun b!4198308 () Bool)

(declare-fun res!1723954 () Bool)

(assert (=> b!4198308 (=> (not res!1723954) (not e!2606022))))

(assert (=> b!4198308 (= res!1723954 (not (nullable!4433 (regex!7694 r!4142))))))

(declare-fun b!4198309 () Bool)

(assert (=> b!4198309 (= e!2606022 (not (= (tag!8558 r!4142) (String!53487 ""))))))

(assert (= (and d!1238068 res!1723953) b!4198308))

(assert (= (and b!4198308 res!1723954) b!4198309))

(assert (=> d!1238068 m!4786767))

(declare-fun m!4787223 () Bool)

(assert (=> b!4198308 m!4787223))

(assert (=> b!4197924 d!1238068))

(declare-fun d!1238070 () Bool)

(declare-fun lt!1495642 () Int)

(assert (=> d!1238070 (= lt!1495642 (size!33896 (list!16670 lt!1495486)))))

(declare-fun size!33899 (Conc!13905) Int)

(assert (=> d!1238070 (= lt!1495642 (size!33899 (c!715970 lt!1495486)))))

(assert (=> d!1238070 (= (size!33897 lt!1495486) lt!1495642)))

(declare-fun bs!596882 () Bool)

(assert (= bs!596882 d!1238070))

(assert (=> bs!596882 m!4786729))

(assert (=> bs!596882 m!4786729))

(declare-fun m!4787225 () Bool)

(assert (=> bs!596882 m!4787225))

(declare-fun m!4787227 () Bool)

(assert (=> bs!596882 m!4787227))

(assert (=> b!4197936 d!1238070))

(declare-fun bm!292525 () Bool)

(declare-fun call!292532 () Bool)

(declare-fun c!716027 () Bool)

(assert (=> bm!292525 (= call!292532 (validRegex!5716 (ite c!716027 (regTwo!25711 (regex!7694 r!4142)) (regTwo!25710 (regex!7694 r!4142)))))))

(declare-fun b!4198348 () Bool)

(declare-fun res!1723967 () Bool)

(declare-fun e!2606052 () Bool)

(assert (=> b!4198348 (=> res!1723967 e!2606052)))

(assert (=> b!4198348 (= res!1723967 (not ((_ is Concat!20524) (regex!7694 r!4142))))))

(declare-fun e!2606054 () Bool)

(assert (=> b!4198348 (= e!2606054 e!2606052)))

(declare-fun b!4198349 () Bool)

(declare-fun e!2606053 () Bool)

(declare-fun e!2606055 () Bool)

(assert (=> b!4198349 (= e!2606053 e!2606055)))

(declare-fun c!716026 () Bool)

(assert (=> b!4198349 (= c!716026 ((_ is Star!12599) (regex!7694 r!4142)))))

(declare-fun bm!292526 () Bool)

(declare-fun call!292530 () Bool)

(declare-fun call!292531 () Bool)

(assert (=> bm!292526 (= call!292530 call!292531)))

(declare-fun d!1238072 () Bool)

(declare-fun res!1723966 () Bool)

(assert (=> d!1238072 (=> res!1723966 e!2606053)))

(assert (=> d!1238072 (= res!1723966 ((_ is ElementMatch!12599) (regex!7694 r!4142)))))

(assert (=> d!1238072 (= (validRegex!5716 (regex!7694 r!4142)) e!2606053)))

(declare-fun b!4198350 () Bool)

(declare-fun res!1723969 () Bool)

(declare-fun e!2606057 () Bool)

(assert (=> b!4198350 (=> (not res!1723969) (not e!2606057))))

(assert (=> b!4198350 (= res!1723969 call!292530)))

(assert (=> b!4198350 (= e!2606054 e!2606057)))

(declare-fun b!4198351 () Bool)

(assert (=> b!4198351 (= e!2606057 call!292532)))

(declare-fun b!4198352 () Bool)

(declare-fun e!2606056 () Bool)

(assert (=> b!4198352 (= e!2606056 call!292531)))

(declare-fun b!4198353 () Bool)

(assert (=> b!4198353 (= e!2606055 e!2606056)))

(declare-fun res!1723965 () Bool)

(assert (=> b!4198353 (= res!1723965 (not (nullable!4433 (reg!12928 (regex!7694 r!4142)))))))

(assert (=> b!4198353 (=> (not res!1723965) (not e!2606056))))

(declare-fun b!4198354 () Bool)

(declare-fun e!2606058 () Bool)

(assert (=> b!4198354 (= e!2606052 e!2606058)))

(declare-fun res!1723968 () Bool)

(assert (=> b!4198354 (=> (not res!1723968) (not e!2606058))))

(assert (=> b!4198354 (= res!1723968 call!292530)))

(declare-fun b!4198355 () Bool)

(assert (=> b!4198355 (= e!2606055 e!2606054)))

(assert (=> b!4198355 (= c!716027 ((_ is Union!12599) (regex!7694 r!4142)))))

(declare-fun b!4198356 () Bool)

(assert (=> b!4198356 (= e!2606058 call!292532)))

(declare-fun bm!292527 () Bool)

(assert (=> bm!292527 (= call!292531 (validRegex!5716 (ite c!716026 (reg!12928 (regex!7694 r!4142)) (ite c!716027 (regOne!25711 (regex!7694 r!4142)) (regOne!25710 (regex!7694 r!4142))))))))

(assert (= (and d!1238072 (not res!1723966)) b!4198349))

(assert (= (and b!4198349 c!716026) b!4198353))

(assert (= (and b!4198349 (not c!716026)) b!4198355))

(assert (= (and b!4198353 res!1723965) b!4198352))

(assert (= (and b!4198355 c!716027) b!4198350))

(assert (= (and b!4198355 (not c!716027)) b!4198348))

(assert (= (and b!4198350 res!1723969) b!4198351))

(assert (= (and b!4198348 (not res!1723967)) b!4198354))

(assert (= (and b!4198354 res!1723968) b!4198356))

(assert (= (or b!4198351 b!4198356) bm!292525))

(assert (= (or b!4198350 b!4198354) bm!292526))

(assert (= (or b!4198352 bm!292526) bm!292527))

(declare-fun m!4787233 () Bool)

(assert (=> bm!292525 m!4787233))

(declare-fun m!4787235 () Bool)

(assert (=> b!4198353 m!4787235))

(declare-fun m!4787237 () Bool)

(assert (=> bm!292527 m!4787237))

(assert (=> b!4197937 d!1238072))

(declare-fun bm!292530 () Bool)

(declare-fun call!292535 () Bool)

(assert (=> bm!292530 (= call!292535 (isEmpty!27311 p!2959))))

(declare-fun b!4198385 () Bool)

(declare-fun e!2606074 () Bool)

(declare-fun e!2606078 () Bool)

(assert (=> b!4198385 (= e!2606074 e!2606078)))

(declare-fun res!1723992 () Bool)

(assert (=> b!4198385 (=> res!1723992 e!2606078)))

(assert (=> b!4198385 (= res!1723992 call!292535)))

(declare-fun b!4198386 () Bool)

(declare-fun res!1723988 () Bool)

(declare-fun e!2606077 () Bool)

(assert (=> b!4198386 (=> res!1723988 e!2606077)))

(declare-fun e!2606073 () Bool)

(assert (=> b!4198386 (= res!1723988 e!2606073)))

(declare-fun res!1723989 () Bool)

(assert (=> b!4198386 (=> (not res!1723989) (not e!2606073))))

(declare-fun lt!1495645 () Bool)

(assert (=> b!4198386 (= res!1723989 lt!1495645)))

(declare-fun b!4198387 () Bool)

(declare-fun res!1723993 () Bool)

(assert (=> b!4198387 (=> res!1723993 e!2606077)))

(assert (=> b!4198387 (= res!1723993 (not ((_ is ElementMatch!12599) (regex!7694 r!4142))))))

(declare-fun e!2606075 () Bool)

(assert (=> b!4198387 (= e!2606075 e!2606077)))

(declare-fun b!4198388 () Bool)

(declare-fun res!1723990 () Bool)

(assert (=> b!4198388 (=> (not res!1723990) (not e!2606073))))

(assert (=> b!4198388 (= res!1723990 (not call!292535))))

(declare-fun b!4198389 () Bool)

(declare-fun res!1723991 () Bool)

(assert (=> b!4198389 (=> (not res!1723991) (not e!2606073))))

(assert (=> b!4198389 (= res!1723991 (isEmpty!27311 (tail!6757 p!2959)))))

(declare-fun b!4198390 () Bool)

(assert (=> b!4198390 (= e!2606077 e!2606074)))

(declare-fun res!1723987 () Bool)

(assert (=> b!4198390 (=> (not res!1723987) (not e!2606074))))

(assert (=> b!4198390 (= res!1723987 (not lt!1495645))))

(declare-fun b!4198391 () Bool)

(declare-fun e!2606076 () Bool)

(assert (=> b!4198391 (= e!2606076 (= lt!1495645 call!292535))))

(declare-fun b!4198392 () Bool)

(assert (=> b!4198392 (= e!2606075 (not lt!1495645))))

(declare-fun b!4198393 () Bool)

(declare-fun e!2606079 () Bool)

(declare-fun derivativeStep!3823 (Regex!12599 C!25388) Regex!12599)

(assert (=> b!4198393 (= e!2606079 (matchR!6338 (derivativeStep!3823 (regex!7694 r!4142) (head!8910 p!2959)) (tail!6757 p!2959)))))

(declare-fun d!1238074 () Bool)

(assert (=> d!1238074 e!2606076))

(declare-fun c!716035 () Bool)

(assert (=> d!1238074 (= c!716035 ((_ is EmptyExpr!12599) (regex!7694 r!4142)))))

(assert (=> d!1238074 (= lt!1495645 e!2606079)))

(declare-fun c!716036 () Bool)

(assert (=> d!1238074 (= c!716036 (isEmpty!27311 p!2959))))

(assert (=> d!1238074 (validRegex!5716 (regex!7694 r!4142))))

(assert (=> d!1238074 (= (matchR!6338 (regex!7694 r!4142) p!2959) lt!1495645)))

(declare-fun b!4198394 () Bool)

(declare-fun res!1723986 () Bool)

(assert (=> b!4198394 (=> res!1723986 e!2606078)))

(assert (=> b!4198394 (= res!1723986 (not (isEmpty!27311 (tail!6757 p!2959))))))

(declare-fun b!4198395 () Bool)

(assert (=> b!4198395 (= e!2606073 (= (head!8910 p!2959) (c!715971 (regex!7694 r!4142))))))

(declare-fun b!4198396 () Bool)

(assert (=> b!4198396 (= e!2606079 (nullable!4433 (regex!7694 r!4142)))))

(declare-fun b!4198397 () Bool)

(assert (=> b!4198397 (= e!2606076 e!2606075)))

(declare-fun c!716034 () Bool)

(assert (=> b!4198397 (= c!716034 ((_ is EmptyLang!12599) (regex!7694 r!4142)))))

(declare-fun b!4198398 () Bool)

(assert (=> b!4198398 (= e!2606078 (not (= (head!8910 p!2959) (c!715971 (regex!7694 r!4142)))))))

(assert (= (and d!1238074 c!716036) b!4198396))

(assert (= (and d!1238074 (not c!716036)) b!4198393))

(assert (= (and d!1238074 c!716035) b!4198391))

(assert (= (and d!1238074 (not c!716035)) b!4198397))

(assert (= (and b!4198397 c!716034) b!4198392))

(assert (= (and b!4198397 (not c!716034)) b!4198387))

(assert (= (and b!4198387 (not res!1723993)) b!4198386))

(assert (= (and b!4198386 res!1723989) b!4198388))

(assert (= (and b!4198388 res!1723990) b!4198389))

(assert (= (and b!4198389 res!1723991) b!4198395))

(assert (= (and b!4198386 (not res!1723988)) b!4198390))

(assert (= (and b!4198390 res!1723987) b!4198385))

(assert (= (and b!4198385 (not res!1723992)) b!4198394))

(assert (= (and b!4198394 (not res!1723986)) b!4198398))

(assert (= (or b!4198391 b!4198385 b!4198388) bm!292530))

(assert (=> b!4198393 m!4787115))

(assert (=> b!4198393 m!4787115))

(declare-fun m!4787239 () Bool)

(assert (=> b!4198393 m!4787239))

(assert (=> b!4198393 m!4787117))

(assert (=> b!4198393 m!4787239))

(assert (=> b!4198393 m!4787117))

(declare-fun m!4787241 () Bool)

(assert (=> b!4198393 m!4787241))

(assert (=> b!4198396 m!4787223))

(assert (=> b!4198395 m!4787115))

(declare-fun m!4787243 () Bool)

(assert (=> bm!292530 m!4787243))

(assert (=> b!4198389 m!4787117))

(assert (=> b!4198389 m!4787117))

(declare-fun m!4787245 () Bool)

(assert (=> b!4198389 m!4787245))

(assert (=> b!4198394 m!4787117))

(assert (=> b!4198394 m!4787117))

(assert (=> b!4198394 m!4787245))

(assert (=> d!1238074 m!4787243))

(assert (=> d!1238074 m!4786767))

(assert (=> b!4198398 m!4787115))

(assert (=> b!4197916 d!1238074))

(declare-fun b!4198399 () Bool)

(declare-fun e!2606081 () Bool)

(declare-fun e!2606080 () Bool)

(assert (=> b!4198399 (= e!2606081 e!2606080)))

(declare-fun res!1723996 () Bool)

(assert (=> b!4198399 (=> (not res!1723996) (not e!2606080))))

(assert (=> b!4198399 (= res!1723996 (not ((_ is Nil!46108) lt!1495502)))))

(declare-fun b!4198400 () Bool)

(declare-fun res!1723994 () Bool)

(assert (=> b!4198400 (=> (not res!1723994) (not e!2606080))))

(assert (=> b!4198400 (= res!1723994 (= (head!8910 lt!1495497) (head!8910 lt!1495502)))))

(declare-fun b!4198402 () Bool)

(declare-fun e!2606082 () Bool)

(assert (=> b!4198402 (= e!2606082 (>= (size!33896 lt!1495502) (size!33896 lt!1495497)))))

(declare-fun b!4198401 () Bool)

(assert (=> b!4198401 (= e!2606080 (isPrefix!4551 (tail!6757 lt!1495497) (tail!6757 lt!1495502)))))

(declare-fun d!1238076 () Bool)

(assert (=> d!1238076 e!2606082))

(declare-fun res!1723997 () Bool)

(assert (=> d!1238076 (=> res!1723997 e!2606082)))

(declare-fun lt!1495646 () Bool)

(assert (=> d!1238076 (= res!1723997 (not lt!1495646))))

(assert (=> d!1238076 (= lt!1495646 e!2606081)))

(declare-fun res!1723995 () Bool)

(assert (=> d!1238076 (=> res!1723995 e!2606081)))

(assert (=> d!1238076 (= res!1723995 ((_ is Nil!46108) lt!1495497))))

(assert (=> d!1238076 (= (isPrefix!4551 lt!1495497 lt!1495502) lt!1495646)))

(assert (= (and d!1238076 (not res!1723995)) b!4198399))

(assert (= (and b!4198399 res!1723996) b!4198400))

(assert (= (and b!4198400 res!1723994) b!4198401))

(assert (= (and d!1238076 (not res!1723997)) b!4198402))

(assert (=> b!4198400 m!4787105))

(declare-fun m!4787247 () Bool)

(assert (=> b!4198400 m!4787247))

(declare-fun m!4787249 () Bool)

(assert (=> b!4198402 m!4787249))

(assert (=> b!4198402 m!4786751))

(assert (=> b!4198401 m!4787107))

(declare-fun m!4787251 () Bool)

(assert (=> b!4198401 m!4787251))

(assert (=> b!4198401 m!4787107))

(assert (=> b!4198401 m!4787251))

(declare-fun m!4787253 () Bool)

(assert (=> b!4198401 m!4787253))

(assert (=> b!4197938 d!1238076))

(declare-fun d!1238078 () Bool)

(declare-fun list!16672 (Conc!13905) List!46232)

(assert (=> d!1238078 (= (list!16670 lt!1495486) (list!16672 (c!715970 lt!1495486)))))

(declare-fun bs!596883 () Bool)

(assert (= bs!596883 d!1238078))

(declare-fun m!4787255 () Bool)

(assert (=> bs!596883 m!4787255))

(assert (=> b!4197938 d!1238078))

(declare-fun d!1238080 () Bool)

(assert (=> d!1238080 (= (get!15000 lt!1495492) (v!40733 lt!1495492))))

(assert (=> b!4197938 d!1238080))

(declare-fun d!1238082 () Bool)

(declare-fun lt!1495649 () BalanceConc!27404)

(assert (=> d!1238082 (= (list!16670 lt!1495649) (originalCharacters!8082 (_1!25083 lt!1495496)))))

(assert (=> d!1238082 (= lt!1495649 (dynLambda!19889 (toChars!10253 (transformation!7694 (rule!10792 (_1!25083 lt!1495496)))) (value!239811 (_1!25083 lt!1495496))))))

(assert (=> d!1238082 (= (charsOf!5129 (_1!25083 lt!1495496)) lt!1495649)))

(declare-fun b_lambda!123583 () Bool)

(assert (=> (not b_lambda!123583) (not d!1238082)))

(declare-fun tb!251655 () Bool)

(declare-fun t!346678 () Bool)

(assert (=> (and b!4197925 (= (toChars!10253 (transformation!7694 rBis!167)) (toChars!10253 (transformation!7694 (rule!10792 (_1!25083 lt!1495496))))) t!346678) tb!251655))

(declare-fun b!4198403 () Bool)

(declare-fun e!2606083 () Bool)

(declare-fun tp!1282396 () Bool)

(assert (=> b!4198403 (= e!2606083 (and (inv!60672 (c!715970 (dynLambda!19889 (toChars!10253 (transformation!7694 (rule!10792 (_1!25083 lt!1495496)))) (value!239811 (_1!25083 lt!1495496))))) tp!1282396))))

(declare-fun result!306738 () Bool)

(assert (=> tb!251655 (= result!306738 (and (inv!60673 (dynLambda!19889 (toChars!10253 (transformation!7694 (rule!10792 (_1!25083 lt!1495496)))) (value!239811 (_1!25083 lt!1495496)))) e!2606083))))

(assert (= tb!251655 b!4198403))

(declare-fun m!4787257 () Bool)

(assert (=> b!4198403 m!4787257))

(declare-fun m!4787259 () Bool)

(assert (=> tb!251655 m!4787259))

(assert (=> d!1238082 t!346678))

(declare-fun b_and!329367 () Bool)

(assert (= b_and!329339 (and (=> t!346678 result!306738) b_and!329367)))

(declare-fun t!346680 () Bool)

(declare-fun tb!251657 () Bool)

(assert (=> (and b!4197913 (= (toChars!10253 (transformation!7694 r!4142)) (toChars!10253 (transformation!7694 (rule!10792 (_1!25083 lt!1495496))))) t!346680) tb!251657))

(declare-fun result!306740 () Bool)

(assert (= result!306740 result!306738))

(assert (=> d!1238082 t!346680))

(declare-fun b_and!329369 () Bool)

(assert (= b_and!329341 (and (=> t!346680 result!306740) b_and!329369)))

(declare-fun tb!251659 () Bool)

(declare-fun t!346682 () Bool)

(assert (=> (and b!4197917 (= (toChars!10253 (transformation!7694 (h!51529 rules!3843))) (toChars!10253 (transformation!7694 (rule!10792 (_1!25083 lt!1495496))))) t!346682) tb!251659))

(declare-fun result!306742 () Bool)

(assert (= result!306742 result!306738))

(assert (=> d!1238082 t!346682))

(declare-fun b_and!329371 () Bool)

(assert (= b_and!329343 (and (=> t!346682 result!306742) b_and!329371)))

(declare-fun m!4787261 () Bool)

(assert (=> d!1238082 m!4787261))

(declare-fun m!4787263 () Bool)

(assert (=> d!1238082 m!4787263))

(assert (=> b!4197938 d!1238082))

(declare-fun d!1238084 () Bool)

(assert (=> d!1238084 (isPrefix!4551 lt!1495497 (++!11766 lt!1495497 (_2!25083 lt!1495496)))))

(declare-fun lt!1495652 () Unit!65211)

(declare-fun choose!25754 (List!46232 List!46232) Unit!65211)

(assert (=> d!1238084 (= lt!1495652 (choose!25754 lt!1495497 (_2!25083 lt!1495496)))))

(assert (=> d!1238084 (= (lemmaConcatTwoListThenFirstIsPrefix!3048 lt!1495497 (_2!25083 lt!1495496)) lt!1495652)))

(declare-fun bs!596884 () Bool)

(assert (= bs!596884 d!1238084))

(assert (=> bs!596884 m!4786737))

(assert (=> bs!596884 m!4786737))

(declare-fun m!4787265 () Bool)

(assert (=> bs!596884 m!4787265))

(declare-fun m!4787267 () Bool)

(assert (=> bs!596884 m!4787267))

(assert (=> b!4197938 d!1238084))

(declare-fun d!1238086 () Bool)

(declare-fun e!2606089 () Bool)

(assert (=> d!1238086 e!2606089))

(declare-fun res!1724002 () Bool)

(assert (=> d!1238086 (=> (not res!1724002) (not e!2606089))))

(declare-fun lt!1495655 () List!46232)

(declare-fun content!7202 (List!46232) (InoxSet C!25388))

(assert (=> d!1238086 (= res!1724002 (= (content!7202 lt!1495655) ((_ map or) (content!7202 lt!1495497) (content!7202 (_2!25083 lt!1495496)))))))

(declare-fun e!2606088 () List!46232)

(assert (=> d!1238086 (= lt!1495655 e!2606088)))

(declare-fun c!716039 () Bool)

(assert (=> d!1238086 (= c!716039 ((_ is Nil!46108) lt!1495497))))

(assert (=> d!1238086 (= (++!11766 lt!1495497 (_2!25083 lt!1495496)) lt!1495655)))

(declare-fun b!4198413 () Bool)

(assert (=> b!4198413 (= e!2606088 (Cons!46108 (h!51528 lt!1495497) (++!11766 (t!346639 lt!1495497) (_2!25083 lt!1495496))))))

(declare-fun b!4198414 () Bool)

(declare-fun res!1724003 () Bool)

(assert (=> b!4198414 (=> (not res!1724003) (not e!2606089))))

(assert (=> b!4198414 (= res!1724003 (= (size!33896 lt!1495655) (+ (size!33896 lt!1495497) (size!33896 (_2!25083 lt!1495496)))))))

(declare-fun b!4198412 () Bool)

(assert (=> b!4198412 (= e!2606088 (_2!25083 lt!1495496))))

(declare-fun b!4198415 () Bool)

(assert (=> b!4198415 (= e!2606089 (or (not (= (_2!25083 lt!1495496) Nil!46108)) (= lt!1495655 lt!1495497)))))

(assert (= (and d!1238086 c!716039) b!4198412))

(assert (= (and d!1238086 (not c!716039)) b!4198413))

(assert (= (and d!1238086 res!1724002) b!4198414))

(assert (= (and b!4198414 res!1724003) b!4198415))

(declare-fun m!4787269 () Bool)

(assert (=> d!1238086 m!4787269))

(declare-fun m!4787271 () Bool)

(assert (=> d!1238086 m!4787271))

(declare-fun m!4787273 () Bool)

(assert (=> d!1238086 m!4787273))

(declare-fun m!4787275 () Bool)

(assert (=> b!4198413 m!4787275))

(declare-fun m!4787277 () Bool)

(assert (=> b!4198414 m!4787277))

(assert (=> b!4198414 m!4786751))

(declare-fun m!4787279 () Bool)

(assert (=> b!4198414 m!4787279))

(assert (=> b!4197938 d!1238086))

(declare-fun d!1238088 () Bool)

(declare-fun e!2606091 () Bool)

(assert (=> d!1238088 e!2606091))

(declare-fun res!1724004 () Bool)

(assert (=> d!1238088 (=> (not res!1724004) (not e!2606091))))

(declare-fun lt!1495656 () List!46232)

(assert (=> d!1238088 (= res!1724004 (= (content!7202 lt!1495656) ((_ map or) (content!7202 p!2959) (content!7202 lt!1495495))))))

(declare-fun e!2606090 () List!46232)

(assert (=> d!1238088 (= lt!1495656 e!2606090)))

(declare-fun c!716040 () Bool)

(assert (=> d!1238088 (= c!716040 ((_ is Nil!46108) p!2959))))

(assert (=> d!1238088 (= (++!11766 p!2959 lt!1495495) lt!1495656)))

(declare-fun b!4198417 () Bool)

(assert (=> b!4198417 (= e!2606090 (Cons!46108 (h!51528 p!2959) (++!11766 (t!346639 p!2959) lt!1495495)))))

(declare-fun b!4198418 () Bool)

(declare-fun res!1724005 () Bool)

(assert (=> b!4198418 (=> (not res!1724005) (not e!2606091))))

(assert (=> b!4198418 (= res!1724005 (= (size!33896 lt!1495656) (+ (size!33896 p!2959) (size!33896 lt!1495495))))))

(declare-fun b!4198416 () Bool)

(assert (=> b!4198416 (= e!2606090 lt!1495495)))

(declare-fun b!4198419 () Bool)

(assert (=> b!4198419 (= e!2606091 (or (not (= lt!1495495 Nil!46108)) (= lt!1495656 p!2959)))))

(assert (= (and d!1238088 c!716040) b!4198416))

(assert (= (and d!1238088 (not c!716040)) b!4198417))

(assert (= (and d!1238088 res!1724004) b!4198418))

(assert (= (and b!4198418 res!1724005) b!4198419))

(declare-fun m!4787281 () Bool)

(assert (=> d!1238088 m!4787281))

(declare-fun m!4787283 () Bool)

(assert (=> d!1238088 m!4787283))

(declare-fun m!4787285 () Bool)

(assert (=> d!1238088 m!4787285))

(declare-fun m!4787287 () Bool)

(assert (=> b!4198417 m!4787287))

(declare-fun m!4787289 () Bool)

(assert (=> b!4198418 m!4787289))

(assert (=> b!4198418 m!4786711))

(declare-fun m!4787291 () Bool)

(assert (=> b!4198418 m!4787291))

(assert (=> b!4197939 d!1238088))

(declare-fun d!1238090 () Bool)

(assert (=> d!1238090 (= pBis!107 lt!1495497)))

(declare-fun lt!1495659 () Unit!65211)

(declare-fun choose!25755 (List!46232 List!46232 List!46232) Unit!65211)

(assert (=> d!1238090 (= lt!1495659 (choose!25755 pBis!107 lt!1495497 input!3342))))

(assert (=> d!1238090 (isPrefix!4551 pBis!107 input!3342)))

(assert (=> d!1238090 (= (lemmaIsPrefixSameLengthThenSameList!1015 pBis!107 lt!1495497 input!3342) lt!1495659)))

(declare-fun bs!596885 () Bool)

(assert (= bs!596885 d!1238090))

(declare-fun m!4787293 () Bool)

(assert (=> bs!596885 m!4787293))

(assert (=> bs!596885 m!4786699))

(assert (=> b!4197918 d!1238090))

(declare-fun b!4198438 () Bool)

(declare-fun res!1724023 () Bool)

(declare-fun e!2606100 () Bool)

(assert (=> b!4198438 (=> (not res!1724023) (not e!2606100))))

(declare-fun lt!1495674 () Option!9888)

(assert (=> b!4198438 (= res!1724023 (= (value!239811 (_1!25083 (get!15000 lt!1495674))) (apply!10659 (transformation!7694 (rule!10792 (_1!25083 (get!15000 lt!1495674)))) (seqFromList!5719 (originalCharacters!8082 (_1!25083 (get!15000 lt!1495674)))))))))

(declare-fun b!4198439 () Bool)

(declare-fun e!2606098 () Option!9888)

(declare-fun lt!1495670 () Option!9888)

(declare-fun lt!1495671 () Option!9888)

(assert (=> b!4198439 (= e!2606098 (ite (and ((_ is None!9887) lt!1495670) ((_ is None!9887) lt!1495671)) None!9887 (ite ((_ is None!9887) lt!1495671) lt!1495670 (ite ((_ is None!9887) lt!1495670) lt!1495671 (ite (>= (size!33895 (_1!25083 (v!40733 lt!1495670))) (size!33895 (_1!25083 (v!40733 lt!1495671)))) lt!1495670 lt!1495671)))))))

(declare-fun call!292538 () Option!9888)

(assert (=> b!4198439 (= lt!1495670 call!292538)))

(assert (=> b!4198439 (= lt!1495671 (maxPrefix!4335 thiss!25986 (t!346640 rules!3843) input!3342))))

(declare-fun b!4198440 () Bool)

(declare-fun res!1724025 () Bool)

(assert (=> b!4198440 (=> (not res!1724025) (not e!2606100))))

(assert (=> b!4198440 (= res!1724025 (matchR!6338 (regex!7694 (rule!10792 (_1!25083 (get!15000 lt!1495674)))) (list!16670 (charsOf!5129 (_1!25083 (get!15000 lt!1495674))))))))

(declare-fun bm!292533 () Bool)

(assert (=> bm!292533 (= call!292538 (maxPrefixOneRule!3296 thiss!25986 (h!51529 rules!3843) input!3342))))

(declare-fun b!4198441 () Bool)

(assert (=> b!4198441 (= e!2606100 (contains!9505 rules!3843 (rule!10792 (_1!25083 (get!15000 lt!1495674)))))))

(declare-fun b!4198442 () Bool)

(assert (=> b!4198442 (= e!2606098 call!292538)))

(declare-fun d!1238092 () Bool)

(declare-fun e!2606099 () Bool)

(assert (=> d!1238092 e!2606099))

(declare-fun res!1724021 () Bool)

(assert (=> d!1238092 (=> res!1724021 e!2606099)))

(assert (=> d!1238092 (= res!1724021 (isEmpty!27309 lt!1495674))))

(assert (=> d!1238092 (= lt!1495674 e!2606098)))

(declare-fun c!716043 () Bool)

(assert (=> d!1238092 (= c!716043 (and ((_ is Cons!46109) rules!3843) ((_ is Nil!46109) (t!346640 rules!3843))))))

(declare-fun lt!1495672 () Unit!65211)

(declare-fun lt!1495673 () Unit!65211)

(assert (=> d!1238092 (= lt!1495672 lt!1495673)))

(assert (=> d!1238092 (isPrefix!4551 input!3342 input!3342)))

(assert (=> d!1238092 (= lt!1495673 (lemmaIsPrefixRefl!2980 input!3342 input!3342))))

(declare-fun rulesValidInductive!2848 (LexerInterface!7287 List!46233) Bool)

(assert (=> d!1238092 (rulesValidInductive!2848 thiss!25986 rules!3843)))

(assert (=> d!1238092 (= (maxPrefix!4335 thiss!25986 rules!3843 input!3342) lt!1495674)))

(declare-fun b!4198443 () Bool)

(assert (=> b!4198443 (= e!2606099 e!2606100)))

(declare-fun res!1724024 () Bool)

(assert (=> b!4198443 (=> (not res!1724024) (not e!2606100))))

(declare-fun isDefined!7364 (Option!9888) Bool)

(assert (=> b!4198443 (= res!1724024 (isDefined!7364 lt!1495674))))

(declare-fun b!4198444 () Bool)

(declare-fun res!1724022 () Bool)

(assert (=> b!4198444 (=> (not res!1724022) (not e!2606100))))

(assert (=> b!4198444 (= res!1724022 (= (++!11766 (list!16670 (charsOf!5129 (_1!25083 (get!15000 lt!1495674)))) (_2!25083 (get!15000 lt!1495674))) input!3342))))

(declare-fun b!4198445 () Bool)

(declare-fun res!1724020 () Bool)

(assert (=> b!4198445 (=> (not res!1724020) (not e!2606100))))

(assert (=> b!4198445 (= res!1724020 (< (size!33896 (_2!25083 (get!15000 lt!1495674))) (size!33896 input!3342)))))

(declare-fun b!4198446 () Bool)

(declare-fun res!1724026 () Bool)

(assert (=> b!4198446 (=> (not res!1724026) (not e!2606100))))

(assert (=> b!4198446 (= res!1724026 (= (list!16670 (charsOf!5129 (_1!25083 (get!15000 lt!1495674)))) (originalCharacters!8082 (_1!25083 (get!15000 lt!1495674)))))))

(assert (= (and d!1238092 c!716043) b!4198442))

(assert (= (and d!1238092 (not c!716043)) b!4198439))

(assert (= (or b!4198442 b!4198439) bm!292533))

(assert (= (and d!1238092 (not res!1724021)) b!4198443))

(assert (= (and b!4198443 res!1724024) b!4198446))

(assert (= (and b!4198446 res!1724026) b!4198445))

(assert (= (and b!4198445 res!1724020) b!4198444))

(assert (= (and b!4198444 res!1724022) b!4198438))

(assert (= (and b!4198438 res!1724023) b!4198440))

(assert (= (and b!4198440 res!1724025) b!4198441))

(declare-fun m!4787295 () Bool)

(assert (=> b!4198441 m!4787295))

(declare-fun m!4787297 () Bool)

(assert (=> b!4198441 m!4787297))

(declare-fun m!4787299 () Bool)

(assert (=> bm!292533 m!4787299))

(assert (=> b!4198438 m!4787295))

(declare-fun m!4787301 () Bool)

(assert (=> b!4198438 m!4787301))

(assert (=> b!4198438 m!4787301))

(declare-fun m!4787303 () Bool)

(assert (=> b!4198438 m!4787303))

(declare-fun m!4787305 () Bool)

(assert (=> b!4198443 m!4787305))

(declare-fun m!4787307 () Bool)

(assert (=> b!4198439 m!4787307))

(assert (=> b!4198440 m!4787295))

(declare-fun m!4787309 () Bool)

(assert (=> b!4198440 m!4787309))

(assert (=> b!4198440 m!4787309))

(declare-fun m!4787311 () Bool)

(assert (=> b!4198440 m!4787311))

(assert (=> b!4198440 m!4787311))

(declare-fun m!4787313 () Bool)

(assert (=> b!4198440 m!4787313))

(assert (=> b!4198444 m!4787295))

(assert (=> b!4198444 m!4787309))

(assert (=> b!4198444 m!4787309))

(assert (=> b!4198444 m!4787311))

(assert (=> b!4198444 m!4787311))

(declare-fun m!4787315 () Bool)

(assert (=> b!4198444 m!4787315))

(assert (=> b!4198446 m!4787295))

(assert (=> b!4198446 m!4787309))

(assert (=> b!4198446 m!4787309))

(assert (=> b!4198446 m!4787311))

(declare-fun m!4787317 () Bool)

(assert (=> d!1238092 m!4787317))

(assert (=> d!1238092 m!4786703))

(assert (=> d!1238092 m!4786707))

(declare-fun m!4787319 () Bool)

(assert (=> d!1238092 m!4787319))

(assert (=> b!4198445 m!4787295))

(declare-fun m!4787321 () Bool)

(assert (=> b!4198445 m!4787321))

(assert (=> b!4198445 m!4786721))

(assert (=> b!4197940 d!1238092))

(declare-fun b!4198451 () Bool)

(declare-fun e!2606103 () Bool)

(declare-fun tp!1282399 () Bool)

(assert (=> b!4198451 (= e!2606103 (and tp_is_empty!22161 tp!1282399))))

(assert (=> b!4197941 (= tp!1282340 e!2606103)))

(assert (= (and b!4197941 ((_ is Cons!46108) (t!346639 input!3342))) b!4198451))

(declare-fun b!4198462 () Bool)

(declare-fun b_free!122367 () Bool)

(declare-fun b_next!123071 () Bool)

(assert (=> b!4198462 (= b_free!122367 (not b_next!123071))))

(declare-fun tb!251661 () Bool)

(declare-fun t!346685 () Bool)

(assert (=> (and b!4198462 (= (toValue!10394 (transformation!7694 (h!51529 (t!346640 rules!3843)))) (toValue!10394 (transformation!7694 r!4142))) t!346685) tb!251661))

(declare-fun result!306748 () Bool)

(assert (= result!306748 result!306688))

(assert (=> d!1237956 t!346685))

(assert (=> d!1238032 t!346685))

(declare-fun b_and!329373 () Bool)

(declare-fun tp!1282410 () Bool)

(assert (=> b!4198462 (= tp!1282410 (and (=> t!346685 result!306748) b_and!329373))))

(declare-fun b_free!122369 () Bool)

(declare-fun b_next!123073 () Bool)

(assert (=> b!4198462 (= b_free!122369 (not b_next!123073))))

(declare-fun tb!251663 () Bool)

(declare-fun t!346687 () Bool)

(assert (=> (and b!4198462 (= (toChars!10253 (transformation!7694 (h!51529 (t!346640 rules!3843)))) (toChars!10253 (transformation!7694 r!4142))) t!346687) tb!251663))

(declare-fun result!306750 () Bool)

(assert (= result!306750 result!306712))

(assert (=> d!1238032 t!346687))

(declare-fun t!346689 () Bool)

(declare-fun tb!251665 () Bool)

(assert (=> (and b!4198462 (= (toChars!10253 (transformation!7694 (h!51529 (t!346640 rules!3843)))) (toChars!10253 (transformation!7694 (rule!10792 (_1!25083 lt!1495496))))) t!346689) tb!251665))

(declare-fun result!306752 () Bool)

(assert (= result!306752 result!306738))

(assert (=> d!1238082 t!346689))

(declare-fun tp!1282411 () Bool)

(declare-fun b_and!329375 () Bool)

(assert (=> b!4198462 (= tp!1282411 (and (=> t!346687 result!306750) (=> t!346689 result!306752) b_and!329375))))

(declare-fun e!2606113 () Bool)

(assert (=> b!4198462 (= e!2606113 (and tp!1282410 tp!1282411))))

(declare-fun b!4198461 () Bool)

(declare-fun tp!1282408 () Bool)

(declare-fun e!2606114 () Bool)

(assert (=> b!4198461 (= e!2606114 (and tp!1282408 (inv!60667 (tag!8558 (h!51529 (t!346640 rules!3843)))) (inv!60669 (transformation!7694 (h!51529 (t!346640 rules!3843)))) e!2606113))))

(declare-fun b!4198460 () Bool)

(declare-fun e!2606115 () Bool)

(declare-fun tp!1282409 () Bool)

(assert (=> b!4198460 (= e!2606115 (and e!2606114 tp!1282409))))

(assert (=> b!4197915 (= tp!1282338 e!2606115)))

(assert (= b!4198461 b!4198462))

(assert (= b!4198460 b!4198461))

(assert (= (and b!4197915 ((_ is Cons!46109) (t!346640 rules!3843))) b!4198460))

(declare-fun m!4787323 () Bool)

(assert (=> b!4198461 m!4787323))

(declare-fun m!4787325 () Bool)

(assert (=> b!4198461 m!4787325))

(declare-fun b!4198463 () Bool)

(declare-fun e!2606116 () Bool)

(declare-fun tp!1282412 () Bool)

(assert (=> b!4198463 (= e!2606116 (and tp_is_empty!22161 tp!1282412))))

(assert (=> b!4197926 (= tp!1282339 e!2606116)))

(assert (= (and b!4197926 ((_ is Cons!46108) (t!346639 p!2959))) b!4198463))

(declare-fun b!4198464 () Bool)

(declare-fun e!2606117 () Bool)

(declare-fun tp!1282413 () Bool)

(assert (=> b!4198464 (= e!2606117 (and tp_is_empty!22161 tp!1282413))))

(assert (=> b!4197932 (= tp!1282337 e!2606117)))

(assert (= (and b!4197932 ((_ is Cons!46108) (t!346639 pBis!107))) b!4198464))

(declare-fun b!4198478 () Bool)

(declare-fun e!2606120 () Bool)

(declare-fun tp!1282426 () Bool)

(declare-fun tp!1282428 () Bool)

(assert (=> b!4198478 (= e!2606120 (and tp!1282426 tp!1282428))))

(declare-fun b!4198475 () Bool)

(assert (=> b!4198475 (= e!2606120 tp_is_empty!22161)))

(declare-fun b!4198476 () Bool)

(declare-fun tp!1282427 () Bool)

(declare-fun tp!1282424 () Bool)

(assert (=> b!4198476 (= e!2606120 (and tp!1282427 tp!1282424))))

(declare-fun b!4198477 () Bool)

(declare-fun tp!1282425 () Bool)

(assert (=> b!4198477 (= e!2606120 tp!1282425)))

(assert (=> b!4197928 (= tp!1282336 e!2606120)))

(assert (= (and b!4197928 ((_ is ElementMatch!12599) (regex!7694 rBis!167))) b!4198475))

(assert (= (and b!4197928 ((_ is Concat!20524) (regex!7694 rBis!167))) b!4198476))

(assert (= (and b!4197928 ((_ is Star!12599) (regex!7694 rBis!167))) b!4198477))

(assert (= (and b!4197928 ((_ is Union!12599) (regex!7694 rBis!167))) b!4198478))

(declare-fun b!4198482 () Bool)

(declare-fun e!2606121 () Bool)

(declare-fun tp!1282431 () Bool)

(declare-fun tp!1282433 () Bool)

(assert (=> b!4198482 (= e!2606121 (and tp!1282431 tp!1282433))))

(declare-fun b!4198479 () Bool)

(assert (=> b!4198479 (= e!2606121 tp_is_empty!22161)))

(declare-fun b!4198480 () Bool)

(declare-fun tp!1282432 () Bool)

(declare-fun tp!1282429 () Bool)

(assert (=> b!4198480 (= e!2606121 (and tp!1282432 tp!1282429))))

(declare-fun b!4198481 () Bool)

(declare-fun tp!1282430 () Bool)

(assert (=> b!4198481 (= e!2606121 tp!1282430)))

(assert (=> b!4197934 (= tp!1282345 e!2606121)))

(assert (= (and b!4197934 ((_ is ElementMatch!12599) (regex!7694 r!4142))) b!4198479))

(assert (= (and b!4197934 ((_ is Concat!20524) (regex!7694 r!4142))) b!4198480))

(assert (= (and b!4197934 ((_ is Star!12599) (regex!7694 r!4142))) b!4198481))

(assert (= (and b!4197934 ((_ is Union!12599) (regex!7694 r!4142))) b!4198482))

(declare-fun b!4198486 () Bool)

(declare-fun e!2606122 () Bool)

(declare-fun tp!1282436 () Bool)

(declare-fun tp!1282438 () Bool)

(assert (=> b!4198486 (= e!2606122 (and tp!1282436 tp!1282438))))

(declare-fun b!4198483 () Bool)

(assert (=> b!4198483 (= e!2606122 tp_is_empty!22161)))

(declare-fun b!4198484 () Bool)

(declare-fun tp!1282437 () Bool)

(declare-fun tp!1282434 () Bool)

(assert (=> b!4198484 (= e!2606122 (and tp!1282437 tp!1282434))))

(declare-fun b!4198485 () Bool)

(declare-fun tp!1282435 () Bool)

(assert (=> b!4198485 (= e!2606122 tp!1282435)))

(assert (=> b!4197935 (= tp!1282334 e!2606122)))

(assert (= (and b!4197935 ((_ is ElementMatch!12599) (regex!7694 (h!51529 rules!3843)))) b!4198483))

(assert (= (and b!4197935 ((_ is Concat!20524) (regex!7694 (h!51529 rules!3843)))) b!4198484))

(assert (= (and b!4197935 ((_ is Star!12599) (regex!7694 (h!51529 rules!3843)))) b!4198485))

(assert (= (and b!4197935 ((_ is Union!12599) (regex!7694 (h!51529 rules!3843)))) b!4198486))

(declare-fun b_lambda!123585 () Bool)

(assert (= b_lambda!123571 (or (and b!4197925 b_free!122351 (= (toValue!10394 (transformation!7694 rBis!167)) (toValue!10394 (transformation!7694 r!4142)))) (and b!4197913 b_free!122355) (and b!4197917 b_free!122359 (= (toValue!10394 (transformation!7694 (h!51529 rules!3843))) (toValue!10394 (transformation!7694 r!4142)))) (and b!4198462 b_free!122367 (= (toValue!10394 (transformation!7694 (h!51529 (t!346640 rules!3843)))) (toValue!10394 (transformation!7694 r!4142)))) b_lambda!123585)))

(declare-fun b_lambda!123587 () Bool)

(assert (= b_lambda!123563 (or (and b!4197925 b_free!122351 (= (toValue!10394 (transformation!7694 rBis!167)) (toValue!10394 (transformation!7694 r!4142)))) (and b!4197913 b_free!122355) (and b!4197917 b_free!122359 (= (toValue!10394 (transformation!7694 (h!51529 rules!3843))) (toValue!10394 (transformation!7694 r!4142)))) (and b!4198462 b_free!122367 (= (toValue!10394 (transformation!7694 (h!51529 (t!346640 rules!3843)))) (toValue!10394 (transformation!7694 r!4142)))) b_lambda!123587)))

(declare-fun b_lambda!123589 () Bool)

(assert (= b_lambda!123569 (or (and b!4197925 b_free!122353 (= (toChars!10253 (transformation!7694 rBis!167)) (toChars!10253 (transformation!7694 r!4142)))) (and b!4197913 b_free!122357) (and b!4197917 b_free!122361 (= (toChars!10253 (transformation!7694 (h!51529 rules!3843))) (toChars!10253 (transformation!7694 r!4142)))) (and b!4198462 b_free!122369 (= (toChars!10253 (transformation!7694 (h!51529 (t!346640 rules!3843)))) (toChars!10253 (transformation!7694 r!4142)))) b_lambda!123589)))

(check-sat (not b_next!123057) (not d!1238082) (not b!4198195) (not b!4198439) (not b!4198398) (not b!4198463) (not d!1237978) (not b!4198259) (not b!4198249) (not b!4198208) (not b!4198218) (not b!4198257) (not d!1238054) (not b!4198401) (not d!1238086) (not d!1238078) (not b_lambda!123589) (not b!4198246) (not b!4198308) (not d!1238026) (not b!4198256) (not b_next!123065) (not b_next!123059) (not b!4198194) (not b!4198443) (not b!4198273) (not b!4198302) (not b!4198486) (not b!4198393) (not b_next!123073) (not b!4198056) (not tb!251637) (not b!4197977) (not b!4197990) b_and!329373 (not b!4198250) b_and!329347 (not b!4198444) (not bm!292530) (not b!4198478) b_and!329369 (not b!4198446) (not b!4198055) (not d!1237938) (not b!4198187) (not b!4198267) (not b!4198272) (not b!4198396) (not bm!292525) b_and!329367 (not b_lambda!123587) b_and!329371 (not d!1237970) (not b!4198441) (not b!4198400) (not b!4198461) (not b_lambda!123583) (not b!4198402) (not b!4198189) (not b_next!123061) (not d!1238044) (not b!4198484) (not d!1237944) (not b!4197956) (not d!1238090) (not b!4198274) (not b!4198481) (not b!4198271) (not b!4198251) (not d!1237952) (not b!4198414) (not d!1237966) (not b!4198403) (not b_next!123063) (not b!4198477) (not tb!251619) (not b!4198418) (not b!4198193) (not b!4198480) (not b!4198190) (not d!1238032) (not b!4198440) (not b!4198268) (not tb!251655) (not b!4198485) (not b!4198394) (not d!1238084) (not b!4198269) (not b!4198031) (not b!4198464) (not b!4198030) (not b!4198445) (not b!4198417) (not b!4198192) (not d!1238088) (not b!4198438) (not b!4198395) (not d!1238092) (not d!1237928) (not b!4197950) (not b!4198057) (not bm!292533) (not b!4198255) (not b!4198253) (not b!4198476) (not b_next!123071) (not b!4197978) (not b!4198389) tp_is_empty!22161 (not d!1238060) (not b!4197991) (not b!4198460) (not d!1238074) (not b!4198241) (not b!4198029) b_and!329349 (not b!4198413) b_and!329375 (not d!1238056) b_and!329345 (not b_next!123055) (not d!1238070) (not d!1238048) (not b_lambda!123585) (not b!4198451) (not d!1237932) (not b!4198353) (not b!4198188) (not bm!292527) (not b!4198266) (not d!1238068) (not b!4198482))
(check-sat (not b_next!123057) (not b_next!123073) b_and!329369 (not b_next!123061) (not b_next!123063) (not b_next!123071) (not b_next!123065) (not b_next!123059) b_and!329373 b_and!329347 b_and!329367 b_and!329371 b_and!329375 b_and!329349 b_and!329345 (not b_next!123055))
