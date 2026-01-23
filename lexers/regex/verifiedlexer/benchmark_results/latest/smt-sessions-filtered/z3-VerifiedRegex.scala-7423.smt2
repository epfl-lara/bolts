; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!394818 () Bool)

(assert start!394818)

(declare-fun b!4149177 () Bool)

(declare-fun b_free!118515 () Bool)

(declare-fun b_next!119219 () Bool)

(assert (=> b!4149177 (= b_free!118515 (not b_next!119219))))

(declare-fun tp!1264740 () Bool)

(declare-fun b_and!322661 () Bool)

(assert (=> b!4149177 (= tp!1264740 b_and!322661)))

(declare-fun b_free!118517 () Bool)

(declare-fun b_next!119221 () Bool)

(assert (=> b!4149177 (= b_free!118517 (not b_next!119221))))

(declare-fun tp!1264739 () Bool)

(declare-fun b_and!322663 () Bool)

(assert (=> b!4149177 (= tp!1264739 b_and!322663)))

(declare-fun b!4149175 () Bool)

(declare-fun b_free!118519 () Bool)

(declare-fun b_next!119223 () Bool)

(assert (=> b!4149175 (= b_free!118519 (not b_next!119223))))

(declare-fun tp!1264743 () Bool)

(declare-fun b_and!322665 () Bool)

(assert (=> b!4149175 (= tp!1264743 b_and!322665)))

(declare-fun b_free!118521 () Bool)

(declare-fun b_next!119225 () Bool)

(assert (=> b!4149175 (= b_free!118521 (not b_next!119225))))

(declare-fun tp!1264736 () Bool)

(declare-fun b_and!322667 () Bool)

(assert (=> b!4149175 (= tp!1264736 b_and!322667)))

(declare-fun b!4149188 () Bool)

(declare-fun b_free!118523 () Bool)

(declare-fun b_next!119227 () Bool)

(assert (=> b!4149188 (= b_free!118523 (not b_next!119227))))

(declare-fun tp!1264742 () Bool)

(declare-fun b_and!322669 () Bool)

(assert (=> b!4149188 (= tp!1264742 b_and!322669)))

(declare-fun b_free!118525 () Bool)

(declare-fun b_next!119229 () Bool)

(assert (=> b!4149188 (= b_free!118525 (not b_next!119229))))

(declare-fun tp!1264744 () Bool)

(declare-fun b_and!322671 () Bool)

(assert (=> b!4149188 (= tp!1264744 b_and!322671)))

(declare-fun b!4149168 () Bool)

(declare-fun e!2574405 () Bool)

(declare-fun e!2574403 () Bool)

(assert (=> b!4149168 (= e!2574405 e!2574403)))

(declare-fun res!1698750 () Bool)

(assert (=> b!4149168 (=> res!1698750 e!2574403)))

(declare-datatypes ((List!45182 0))(
  ( (Nil!45058) (Cons!45058 (h!50478 (_ BitVec 16)) (t!343021 List!45182)) )
))
(declare-datatypes ((TokenValue!7648 0))(
  ( (FloatLiteralValue!15296 (text!53981 List!45182)) (TokenValueExt!7647 (__x!27513 Int)) (Broken!38240 (value!231941 List!45182)) (Object!7771) (End!7648) (Def!7648) (Underscore!7648) (Match!7648) (Else!7648) (Error!7648) (Case!7648) (If!7648) (Extends!7648) (Abstract!7648) (Class!7648) (Val!7648) (DelimiterValue!15296 (del!7708 List!45182)) (KeywordValue!7654 (value!231942 List!45182)) (CommentValue!15296 (value!231943 List!45182)) (WhitespaceValue!15296 (value!231944 List!45182)) (IndentationValue!7648 (value!231945 List!45182)) (String!51989) (Int32!7648) (Broken!38241 (value!231946 List!45182)) (Boolean!7649) (Unit!64336) (OperatorValue!7651 (op!7708 List!45182)) (IdentifierValue!15296 (value!231947 List!45182)) (IdentifierValue!15297 (value!231948 List!45182)) (WhitespaceValue!15297 (value!231949 List!45182)) (True!15296) (False!15296) (Broken!38242 (value!231950 List!45182)) (Broken!38243 (value!231951 List!45182)) (True!15297) (RightBrace!7648) (RightBracket!7648) (Colon!7648) (Null!7648) (Comma!7648) (LeftBracket!7648) (False!15297) (LeftBrace!7648) (ImaginaryLiteralValue!7648 (text!53982 List!45182)) (StringLiteralValue!22944 (value!231952 List!45182)) (EOFValue!7648 (value!231953 List!45182)) (IdentValue!7648 (value!231954 List!45182)) (DelimiterValue!15297 (value!231955 List!45182)) (DedentValue!7648 (value!231956 List!45182)) (NewLineValue!7648 (value!231957 List!45182)) (IntegerValue!22944 (value!231958 (_ BitVec 32)) (text!53983 List!45182)) (IntegerValue!22945 (value!231959 Int) (text!53984 List!45182)) (Times!7648) (Or!7648) (Equal!7648) (Minus!7648) (Broken!38244 (value!231960 List!45182)) (And!7648) (Div!7648) (LessEqual!7648) (Mod!7648) (Concat!19971) (Not!7648) (Plus!7648) (SpaceValue!7648 (value!231961 List!45182)) (IntegerValue!22946 (value!231962 Int) (text!53985 List!45182)) (StringLiteralValue!22945 (text!53986 List!45182)) (FloatLiteralValue!15297 (text!53987 List!45182)) (BytesLiteralValue!7648 (value!231963 List!45182)) (CommentValue!15297 (value!231964 List!45182)) (StringLiteralValue!22946 (value!231965 List!45182)) (ErrorTokenValue!7648 (msg!7709 List!45182)) )
))
(declare-datatypes ((C!24832 0))(
  ( (C!24833 (val!14526 Int)) )
))
(declare-datatypes ((List!45183 0))(
  ( (Nil!45059) (Cons!45059 (h!50479 C!24832) (t!343022 List!45183)) )
))
(declare-datatypes ((IArray!27263 0))(
  ( (IArray!27264 (innerList!13689 List!45183)) )
))
(declare-datatypes ((Conc!13629 0))(
  ( (Node!13629 (left!33736 Conc!13629) (right!34066 Conc!13629) (csize!27488 Int) (cheight!13840 Int)) (Leaf!21053 (xs!16935 IArray!27263) (csize!27489 Int)) (Empty!13629) )
))
(declare-datatypes ((BalanceConc!26852 0))(
  ( (BalanceConc!26853 (c!710724 Conc!13629)) )
))
(declare-datatypes ((Regex!12323 0))(
  ( (ElementMatch!12323 (c!710725 C!24832)) (Concat!19972 (regOne!25158 Regex!12323) (regTwo!25158 Regex!12323)) (EmptyExpr!12323) (Star!12323 (reg!12652 Regex!12323)) (EmptyLang!12323) (Union!12323 (regOne!25159 Regex!12323) (regTwo!25159 Regex!12323)) )
))
(declare-datatypes ((String!51990 0))(
  ( (String!51991 (value!231966 String)) )
))
(declare-datatypes ((TokenValueInjection!14724 0))(
  ( (TokenValueInjection!14725 (toValue!10082 Int) (toChars!9941 Int)) )
))
(declare-datatypes ((Rule!14636 0))(
  ( (Rule!14637 (regex!7418 Regex!12323) (tag!8278 String!51990) (isSeparator!7418 Bool) (transformation!7418 TokenValueInjection!14724)) )
))
(declare-datatypes ((List!45184 0))(
  ( (Nil!45060) (Cons!45060 (h!50480 Rule!14636) (t!343023 List!45184)) )
))
(declare-fun rules!3756 () List!45184)

(declare-fun contains!9102 (List!45184 Rule!14636) Bool)

(assert (=> b!4149168 (= res!1698750 (not (contains!9102 rules!3756 (h!50480 rules!3756))))))

(declare-datatypes ((LexerInterface!7007 0))(
  ( (LexerInterfaceExt!7004 (__x!27514 Int)) (Lexer!7005) )
))
(declare-fun thiss!25645 () LexerInterface!7007)

(declare-fun rulesInvariant!6304 (LexerInterface!7007 List!45184) Bool)

(assert (=> b!4149168 (rulesInvariant!6304 thiss!25645 (t!343023 rules!3756))))

(declare-datatypes ((Unit!64337 0))(
  ( (Unit!64338) )
))
(declare-fun lt!1479854 () Unit!64337)

(declare-fun lemmaInvariantOnRulesThenOnTail!830 (LexerInterface!7007 Rule!14636 List!45184) Unit!64337)

(assert (=> b!4149168 (= lt!1479854 (lemmaInvariantOnRulesThenOnTail!830 thiss!25645 (h!50480 rules!3756) (t!343023 rules!3756)))))

(declare-fun input!3238 () List!45183)

(declare-datatypes ((Token!13766 0))(
  ( (Token!13767 (value!231967 TokenValue!7648) (rule!10550 Rule!14636) (size!33403 Int) (originalCharacters!7914 List!45183)) )
))
(declare-datatypes ((tuple2!43422 0))(
  ( (tuple2!43423 (_1!24845 Token!13766) (_2!24845 List!45183)) )
))
(declare-datatypes ((Option!9724 0))(
  ( (None!9723) (Some!9723 (v!40383 tuple2!43422)) )
))
(declare-fun lt!1479856 () Option!9724)

(declare-fun maxPrefix!4197 (LexerInterface!7007 List!45184 List!45183) Option!9724)

(assert (=> b!4149168 (= lt!1479856 (maxPrefix!4197 thiss!25645 (t!343023 rules!3756) input!3238))))

(declare-fun lt!1479853 () Option!9724)

(declare-fun maxPrefixOneRule!3136 (LexerInterface!7007 Rule!14636 List!45183) Option!9724)

(assert (=> b!4149168 (= lt!1479853 (maxPrefixOneRule!3136 thiss!25645 (h!50480 rules!3756) input!3238))))

(declare-fun b!4149169 () Bool)

(declare-fun res!1698747 () Bool)

(declare-fun e!2574404 () Bool)

(assert (=> b!4149169 (=> (not res!1698747) (not e!2574404))))

(declare-fun r!4008 () Rule!14636)

(declare-fun ruleValid!3224 (LexerInterface!7007 Rule!14636) Bool)

(assert (=> b!4149169 (= res!1698747 (ruleValid!3224 thiss!25645 r!4008))))

(declare-fun b!4149171 () Bool)

(declare-fun e!2574393 () Bool)

(declare-fun e!2574394 () Bool)

(assert (=> b!4149171 (= e!2574393 e!2574394)))

(declare-fun res!1698752 () Bool)

(assert (=> b!4149171 (=> (not res!1698752) (not e!2574394))))

(declare-fun lt!1479851 () BalanceConc!26852)

(declare-fun p!2912 () List!45183)

(declare-fun apply!10491 (TokenValueInjection!14724 BalanceConc!26852) TokenValue!7648)

(declare-fun size!33404 (List!45183) Int)

(declare-fun getSuffix!2680 (List!45183 List!45183) List!45183)

(assert (=> b!4149171 (= res!1698752 (= (maxPrefix!4197 thiss!25645 rules!3756 input!3238) (Some!9723 (tuple2!43423 (Token!13767 (apply!10491 (transformation!7418 r!4008) lt!1479851) r!4008 (size!33404 p!2912) p!2912) (getSuffix!2680 input!3238 p!2912)))))))

(declare-fun lt!1479850 () Unit!64337)

(declare-fun lemmaSemiInverse!2276 (TokenValueInjection!14724 BalanceConc!26852) Unit!64337)

(assert (=> b!4149171 (= lt!1479850 (lemmaSemiInverse!2276 (transformation!7418 r!4008) lt!1479851))))

(declare-fun seqFromList!5535 (List!45183) BalanceConc!26852)

(assert (=> b!4149171 (= lt!1479851 (seqFromList!5535 p!2912))))

(declare-fun b!4149172 () Bool)

(declare-fun e!2574407 () Bool)

(declare-fun e!2574392 () Bool)

(declare-fun tp!1264735 () Bool)

(declare-fun inv!59666 (String!51990) Bool)

(declare-fun inv!59668 (TokenValueInjection!14724) Bool)

(assert (=> b!4149172 (= e!2574407 (and tp!1264735 (inv!59666 (tag!8278 (h!50480 rules!3756))) (inv!59668 (transformation!7418 (h!50480 rules!3756))) e!2574392))))

(declare-fun b!4149173 () Bool)

(declare-fun e!2574397 () Bool)

(declare-fun tp!1264738 () Bool)

(assert (=> b!4149173 (= e!2574397 (and e!2574407 tp!1264738))))

(declare-fun b!4149174 () Bool)

(declare-fun res!1698756 () Bool)

(assert (=> b!4149174 (=> (not res!1698756) (not e!2574393))))

(declare-fun rBis!149 () Rule!14636)

(assert (=> b!4149174 (= res!1698756 (contains!9102 rules!3756 rBis!149))))

(declare-fun e!2574399 () Bool)

(assert (=> b!4149175 (= e!2574399 (and tp!1264743 tp!1264736))))

(declare-fun b!4149176 () Bool)

(declare-fun res!1698753 () Bool)

(assert (=> b!4149176 (=> (not res!1698753) (not e!2574393))))

(declare-fun isPrefix!4353 (List!45183 List!45183) Bool)

(assert (=> b!4149176 (= res!1698753 (isPrefix!4353 p!2912 input!3238))))

(assert (=> b!4149177 (= e!2574392 (and tp!1264740 tp!1264739))))

(declare-fun b!4149178 () Bool)

(declare-fun e!2574400 () Bool)

(declare-fun tp_is_empty!21569 () Bool)

(declare-fun tp!1264737 () Bool)

(assert (=> b!4149178 (= e!2574400 (and tp_is_empty!21569 tp!1264737))))

(declare-fun b!4149179 () Bool)

(assert (=> b!4149179 (= e!2574394 e!2574404)))

(declare-fun res!1698754 () Bool)

(assert (=> b!4149179 (=> (not res!1698754) (not e!2574404))))

(declare-fun lt!1479852 () Int)

(declare-fun lt!1479855 () Int)

(assert (=> b!4149179 (= res!1698754 (< lt!1479852 lt!1479855))))

(declare-fun getIndex!764 (List!45184 Rule!14636) Int)

(assert (=> b!4149179 (= lt!1479855 (getIndex!764 rules!3756 r!4008))))

(assert (=> b!4149179 (= lt!1479852 (getIndex!764 rules!3756 rBis!149))))

(declare-fun tp!1264745 () Bool)

(declare-fun b!4149180 () Bool)

(declare-fun e!2574408 () Bool)

(assert (=> b!4149180 (= e!2574408 (and tp!1264745 (inv!59666 (tag!8278 rBis!149)) (inv!59668 (transformation!7418 rBis!149)) e!2574399))))

(declare-fun res!1698745 () Bool)

(assert (=> start!394818 (=> (not res!1698745) (not e!2574393))))

(get-info :version)

(assert (=> start!394818 (= res!1698745 ((_ is Lexer!7005) thiss!25645))))

(assert (=> start!394818 e!2574393))

(assert (=> start!394818 e!2574397))

(declare-fun e!2574396 () Bool)

(assert (=> start!394818 e!2574396))

(assert (=> start!394818 true))

(declare-fun e!2574402 () Bool)

(assert (=> start!394818 e!2574402))

(assert (=> start!394818 e!2574400))

(assert (=> start!394818 e!2574408))

(declare-fun e!2574406 () Bool)

(declare-fun b!4149170 () Bool)

(declare-fun tp!1264741 () Bool)

(assert (=> b!4149170 (= e!2574402 (and tp!1264741 (inv!59666 (tag!8278 r!4008)) (inv!59668 (transformation!7418 r!4008)) e!2574406))))

(declare-fun b!4149181 () Bool)

(declare-fun tp!1264746 () Bool)

(assert (=> b!4149181 (= e!2574396 (and tp_is_empty!21569 tp!1264746))))

(declare-fun b!4149182 () Bool)

(assert (=> b!4149182 (= e!2574404 (not e!2574405))))

(declare-fun res!1698746 () Bool)

(assert (=> b!4149182 (=> res!1698746 e!2574405)))

(assert (=> b!4149182 (= res!1698746 (or (and ((_ is Cons!45060) rules!3756) (= (h!50480 rules!3756) rBis!149)) (not ((_ is Cons!45060) rules!3756)) (= (h!50480 rules!3756) rBis!149)))))

(declare-fun lt!1479858 () Unit!64337)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2264 (LexerInterface!7007 Rule!14636 List!45184) Unit!64337)

(assert (=> b!4149182 (= lt!1479858 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2264 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4149182 (ruleValid!3224 thiss!25645 rBis!149)))

(declare-fun lt!1479857 () Unit!64337)

(assert (=> b!4149182 (= lt!1479857 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2264 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4149183 () Bool)

(declare-fun res!1698755 () Bool)

(assert (=> b!4149183 (=> (not res!1698755) (not e!2574393))))

(assert (=> b!4149183 (= res!1698755 (rulesInvariant!6304 thiss!25645 rules!3756))))

(declare-fun b!4149184 () Bool)

(declare-fun res!1698759 () Bool)

(assert (=> b!4149184 (=> res!1698759 e!2574405)))

(assert (=> b!4149184 (= res!1698759 (not (contains!9102 (t!343023 rules!3756) rBis!149)))))

(declare-fun b!4149185 () Bool)

(declare-fun res!1698758 () Bool)

(assert (=> b!4149185 (=> (not res!1698758) (not e!2574394))))

(declare-fun matchR!6152 (Regex!12323 List!45183) Bool)

(assert (=> b!4149185 (= res!1698758 (matchR!6152 (regex!7418 r!4008) p!2912))))

(declare-fun b!4149186 () Bool)

(declare-fun res!1698749 () Bool)

(assert (=> b!4149186 (=> res!1698749 e!2574405)))

(assert (=> b!4149186 (= res!1698749 (not (contains!9102 (t!343023 rules!3756) r!4008)))))

(declare-fun b!4149187 () Bool)

(declare-fun res!1698757 () Bool)

(assert (=> b!4149187 (=> (not res!1698757) (not e!2574393))))

(assert (=> b!4149187 (= res!1698757 (contains!9102 rules!3756 r!4008))))

(assert (=> b!4149188 (= e!2574406 (and tp!1264742 tp!1264744))))

(declare-fun b!4149189 () Bool)

(declare-fun res!1698748 () Bool)

(assert (=> b!4149189 (=> (not res!1698748) (not e!2574393))))

(declare-fun isEmpty!26898 (List!45183) Bool)

(assert (=> b!4149189 (= res!1698748 (not (isEmpty!26898 p!2912)))))

(declare-fun b!4149190 () Bool)

(declare-fun res!1698751 () Bool)

(assert (=> b!4149190 (=> (not res!1698751) (not e!2574393))))

(declare-fun isEmpty!26899 (List!45184) Bool)

(assert (=> b!4149190 (= res!1698751 (not (isEmpty!26899 rules!3756)))))

(declare-fun b!4149191 () Bool)

(declare-fun res!1698760 () Bool)

(assert (=> b!4149191 (=> res!1698760 e!2574403)))

(declare-datatypes ((List!45185 0))(
  ( (Nil!45061) (Cons!45061 (h!50481 String!51990) (t!343024 List!45185)) )
))
(declare-fun noDuplicateTag!3005 (LexerInterface!7007 List!45184 List!45185) Bool)

(declare-fun noDuplicateTag$default$2!20 (LexerInterface!7007) List!45185)

(assert (=> b!4149191 (= res!1698760 (not (noDuplicateTag!3005 thiss!25645 rules!3756 (noDuplicateTag$default$2!20 thiss!25645))))))

(declare-fun b!4149192 () Bool)

(assert (=> b!4149192 (= e!2574403 (< (getIndex!764 rules!3756 (h!50480 rules!3756)) lt!1479855))))

(assert (= (and start!394818 res!1698745) b!4149176))

(assert (= (and b!4149176 res!1698753) b!4149190))

(assert (= (and b!4149190 res!1698751) b!4149183))

(assert (= (and b!4149183 res!1698755) b!4149187))

(assert (= (and b!4149187 res!1698757) b!4149174))

(assert (= (and b!4149174 res!1698756) b!4149189))

(assert (= (and b!4149189 res!1698748) b!4149171))

(assert (= (and b!4149171 res!1698752) b!4149185))

(assert (= (and b!4149185 res!1698758) b!4149179))

(assert (= (and b!4149179 res!1698754) b!4149169))

(assert (= (and b!4149169 res!1698747) b!4149182))

(assert (= (and b!4149182 (not res!1698746)) b!4149186))

(assert (= (and b!4149186 (not res!1698749)) b!4149184))

(assert (= (and b!4149184 (not res!1698759)) b!4149168))

(assert (= (and b!4149168 (not res!1698750)) b!4149191))

(assert (= (and b!4149191 (not res!1698760)) b!4149192))

(assert (= b!4149172 b!4149177))

(assert (= b!4149173 b!4149172))

(assert (= (and start!394818 ((_ is Cons!45060) rules!3756)) b!4149173))

(assert (= (and start!394818 ((_ is Cons!45059) p!2912)) b!4149181))

(assert (= b!4149170 b!4149188))

(assert (= start!394818 b!4149170))

(assert (= (and start!394818 ((_ is Cons!45059) input!3238)) b!4149178))

(assert (= b!4149180 b!4149175))

(assert (= start!394818 b!4149180))

(declare-fun m!4744895 () Bool)

(assert (=> b!4149174 m!4744895))

(declare-fun m!4744897 () Bool)

(assert (=> b!4149171 m!4744897))

(declare-fun m!4744899 () Bool)

(assert (=> b!4149171 m!4744899))

(declare-fun m!4744901 () Bool)

(assert (=> b!4149171 m!4744901))

(declare-fun m!4744903 () Bool)

(assert (=> b!4149171 m!4744903))

(declare-fun m!4744905 () Bool)

(assert (=> b!4149171 m!4744905))

(declare-fun m!4744907 () Bool)

(assert (=> b!4149171 m!4744907))

(declare-fun m!4744909 () Bool)

(assert (=> b!4149169 m!4744909))

(declare-fun m!4744911 () Bool)

(assert (=> b!4149168 m!4744911))

(declare-fun m!4744913 () Bool)

(assert (=> b!4149168 m!4744913))

(declare-fun m!4744915 () Bool)

(assert (=> b!4149168 m!4744915))

(declare-fun m!4744917 () Bool)

(assert (=> b!4149168 m!4744917))

(declare-fun m!4744919 () Bool)

(assert (=> b!4149168 m!4744919))

(declare-fun m!4744921 () Bool)

(assert (=> b!4149170 m!4744921))

(declare-fun m!4744923 () Bool)

(assert (=> b!4149170 m!4744923))

(declare-fun m!4744925 () Bool)

(assert (=> b!4149189 m!4744925))

(declare-fun m!4744927 () Bool)

(assert (=> b!4149187 m!4744927))

(declare-fun m!4744929 () Bool)

(assert (=> b!4149184 m!4744929))

(declare-fun m!4744931 () Bool)

(assert (=> b!4149190 m!4744931))

(declare-fun m!4744933 () Bool)

(assert (=> b!4149179 m!4744933))

(declare-fun m!4744935 () Bool)

(assert (=> b!4149179 m!4744935))

(declare-fun m!4744937 () Bool)

(assert (=> b!4149192 m!4744937))

(declare-fun m!4744939 () Bool)

(assert (=> b!4149182 m!4744939))

(declare-fun m!4744941 () Bool)

(assert (=> b!4149182 m!4744941))

(declare-fun m!4744943 () Bool)

(assert (=> b!4149182 m!4744943))

(declare-fun m!4744945 () Bool)

(assert (=> b!4149183 m!4744945))

(declare-fun m!4744947 () Bool)

(assert (=> b!4149185 m!4744947))

(declare-fun m!4744949 () Bool)

(assert (=> b!4149176 m!4744949))

(declare-fun m!4744951 () Bool)

(assert (=> b!4149180 m!4744951))

(declare-fun m!4744953 () Bool)

(assert (=> b!4149180 m!4744953))

(declare-fun m!4744955 () Bool)

(assert (=> b!4149191 m!4744955))

(assert (=> b!4149191 m!4744955))

(declare-fun m!4744957 () Bool)

(assert (=> b!4149191 m!4744957))

(declare-fun m!4744959 () Bool)

(assert (=> b!4149186 m!4744959))

(declare-fun m!4744961 () Bool)

(assert (=> b!4149172 m!4744961))

(declare-fun m!4744963 () Bool)

(assert (=> b!4149172 m!4744963))

(check-sat (not b!4149192) (not b!4149174) (not b!4149176) b_and!322661 (not b_next!119221) (not b!4149171) b_and!322667 tp_is_empty!21569 (not b!4149187) (not b_next!119227) (not b!4149178) (not b!4149185) (not b_next!119229) (not b!4149186) b_and!322663 (not b_next!119225) (not b!4149173) b_and!322669 (not b_next!119223) (not b!4149179) (not b!4149170) (not b!4149190) (not b!4149168) (not b_next!119219) (not b!4149181) (not b!4149189) (not b!4149191) b_and!322665 (not b!4149169) (not b!4149172) (not b!4149183) (not b!4149180) (not b!4149182) b_and!322671 (not b!4149184))
(check-sat (not b_next!119227) (not b_next!119229) b_and!322661 (not b_next!119219) b_and!322665 (not b_next!119221) b_and!322671 b_and!322667 b_and!322663 (not b_next!119225) b_and!322669 (not b_next!119223))
(get-model)

(declare-fun b!4149212 () Bool)

(declare-fun e!2574421 () Int)

(assert (=> b!4149212 (= e!2574421 (- 1))))

(declare-fun b!4149210 () Bool)

(declare-fun e!2574420 () Int)

(assert (=> b!4149210 (= e!2574420 e!2574421)))

(declare-fun c!710730 () Bool)

(assert (=> b!4149210 (= c!710730 (and ((_ is Cons!45060) rules!3756) (not (= (h!50480 rules!3756) (h!50480 rules!3756)))))))

(declare-fun d!1227554 () Bool)

(declare-fun lt!1479863 () Int)

(assert (=> d!1227554 (>= lt!1479863 0)))

(assert (=> d!1227554 (= lt!1479863 e!2574420)))

(declare-fun c!710731 () Bool)

(assert (=> d!1227554 (= c!710731 (and ((_ is Cons!45060) rules!3756) (= (h!50480 rules!3756) (h!50480 rules!3756))))))

(assert (=> d!1227554 (contains!9102 rules!3756 (h!50480 rules!3756))))

(assert (=> d!1227554 (= (getIndex!764 rules!3756 (h!50480 rules!3756)) lt!1479863)))

(declare-fun b!4149211 () Bool)

(assert (=> b!4149211 (= e!2574421 (+ 1 (getIndex!764 (t!343023 rules!3756) (h!50480 rules!3756))))))

(declare-fun b!4149209 () Bool)

(assert (=> b!4149209 (= e!2574420 0)))

(assert (= (and d!1227554 c!710731) b!4149209))

(assert (= (and d!1227554 (not c!710731)) b!4149210))

(assert (= (and b!4149210 c!710730) b!4149211))

(assert (= (and b!4149210 (not c!710730)) b!4149212))

(assert (=> d!1227554 m!4744919))

(declare-fun m!4744965 () Bool)

(assert (=> b!4149211 m!4744965))

(assert (=> b!4149192 d!1227554))

(declare-fun d!1227558 () Bool)

(declare-fun dynLambda!19418 (Int BalanceConc!26852) TokenValue!7648)

(assert (=> d!1227558 (= (apply!10491 (transformation!7418 r!4008) lt!1479851) (dynLambda!19418 (toValue!10082 (transformation!7418 r!4008)) lt!1479851))))

(declare-fun b_lambda!122015 () Bool)

(assert (=> (not b_lambda!122015) (not d!1227558)))

(declare-fun t!343026 () Bool)

(declare-fun tb!249059 () Bool)

(assert (=> (and b!4149177 (= (toValue!10082 (transformation!7418 (h!50480 rules!3756))) (toValue!10082 (transformation!7418 r!4008))) t!343026) tb!249059))

(declare-fun result!302956 () Bool)

(declare-fun inv!21 (TokenValue!7648) Bool)

(assert (=> tb!249059 (= result!302956 (inv!21 (dynLambda!19418 (toValue!10082 (transformation!7418 r!4008)) lt!1479851)))))

(declare-fun m!4744979 () Bool)

(assert (=> tb!249059 m!4744979))

(assert (=> d!1227558 t!343026))

(declare-fun b_and!322673 () Bool)

(assert (= b_and!322661 (and (=> t!343026 result!302956) b_and!322673)))

(declare-fun tb!249061 () Bool)

(declare-fun t!343028 () Bool)

(assert (=> (and b!4149175 (= (toValue!10082 (transformation!7418 rBis!149)) (toValue!10082 (transformation!7418 r!4008))) t!343028) tb!249061))

(declare-fun result!302960 () Bool)

(assert (= result!302960 result!302956))

(assert (=> d!1227558 t!343028))

(declare-fun b_and!322675 () Bool)

(assert (= b_and!322665 (and (=> t!343028 result!302960) b_and!322675)))

(declare-fun t!343030 () Bool)

(declare-fun tb!249063 () Bool)

(assert (=> (and b!4149188 (= (toValue!10082 (transformation!7418 r!4008)) (toValue!10082 (transformation!7418 r!4008))) t!343030) tb!249063))

(declare-fun result!302962 () Bool)

(assert (= result!302962 result!302956))

(assert (=> d!1227558 t!343030))

(declare-fun b_and!322677 () Bool)

(assert (= b_and!322669 (and (=> t!343030 result!302962) b_and!322677)))

(declare-fun m!4744981 () Bool)

(assert (=> d!1227558 m!4744981))

(assert (=> b!4149171 d!1227558))

(declare-fun b!4149305 () Bool)

(declare-fun e!2574482 () Bool)

(assert (=> b!4149305 (= e!2574482 true)))

(declare-fun d!1227562 () Bool)

(assert (=> d!1227562 e!2574482))

(assert (= d!1227562 b!4149305))

(declare-fun order!23897 () Int)

(declare-fun lambda!129015 () Int)

(declare-fun order!23899 () Int)

(declare-fun dynLambda!19424 (Int Int) Int)

(declare-fun dynLambda!19425 (Int Int) Int)

(assert (=> b!4149305 (< (dynLambda!19424 order!23897 (toValue!10082 (transformation!7418 r!4008))) (dynLambda!19425 order!23899 lambda!129015))))

(declare-fun order!23901 () Int)

(declare-fun dynLambda!19426 (Int Int) Int)

(assert (=> b!4149305 (< (dynLambda!19426 order!23901 (toChars!9941 (transformation!7418 r!4008))) (dynLambda!19425 order!23899 lambda!129015))))

(declare-fun list!16489 (BalanceConc!26852) List!45183)

(declare-fun dynLambda!19427 (Int TokenValue!7648) BalanceConc!26852)

(assert (=> d!1227562 (= (list!16489 (dynLambda!19427 (toChars!9941 (transformation!7418 r!4008)) (dynLambda!19418 (toValue!10082 (transformation!7418 r!4008)) lt!1479851))) (list!16489 lt!1479851))))

(declare-fun lt!1479881 () Unit!64337)

(declare-fun ForallOf!992 (Int BalanceConc!26852) Unit!64337)

(assert (=> d!1227562 (= lt!1479881 (ForallOf!992 lambda!129015 lt!1479851))))

(assert (=> d!1227562 (= (lemmaSemiInverse!2276 (transformation!7418 r!4008) lt!1479851) lt!1479881)))

(declare-fun b_lambda!122021 () Bool)

(assert (=> (not b_lambda!122021) (not d!1227562)))

(declare-fun tb!249077 () Bool)

(declare-fun t!343044 () Bool)

(assert (=> (and b!4149177 (= (toChars!9941 (transformation!7418 (h!50480 rules!3756))) (toChars!9941 (transformation!7418 r!4008))) t!343044) tb!249077))

(declare-fun tp!1264752 () Bool)

(declare-fun e!2574485 () Bool)

(declare-fun b!4149310 () Bool)

(declare-fun inv!59671 (Conc!13629) Bool)

(assert (=> b!4149310 (= e!2574485 (and (inv!59671 (c!710724 (dynLambda!19427 (toChars!9941 (transformation!7418 r!4008)) (dynLambda!19418 (toValue!10082 (transformation!7418 r!4008)) lt!1479851)))) tp!1264752))))

(declare-fun result!302980 () Bool)

(declare-fun inv!59672 (BalanceConc!26852) Bool)

(assert (=> tb!249077 (= result!302980 (and (inv!59672 (dynLambda!19427 (toChars!9941 (transformation!7418 r!4008)) (dynLambda!19418 (toValue!10082 (transformation!7418 r!4008)) lt!1479851))) e!2574485))))

(assert (= tb!249077 b!4149310))

(declare-fun m!4745033 () Bool)

(assert (=> b!4149310 m!4745033))

(declare-fun m!4745035 () Bool)

(assert (=> tb!249077 m!4745035))

(assert (=> d!1227562 t!343044))

(declare-fun b_and!322691 () Bool)

(assert (= b_and!322663 (and (=> t!343044 result!302980) b_and!322691)))

(declare-fun t!343046 () Bool)

(declare-fun tb!249079 () Bool)

(assert (=> (and b!4149175 (= (toChars!9941 (transformation!7418 rBis!149)) (toChars!9941 (transformation!7418 r!4008))) t!343046) tb!249079))

(declare-fun result!302984 () Bool)

(assert (= result!302984 result!302980))

(assert (=> d!1227562 t!343046))

(declare-fun b_and!322693 () Bool)

(assert (= b_and!322667 (and (=> t!343046 result!302984) b_and!322693)))

(declare-fun t!343048 () Bool)

(declare-fun tb!249081 () Bool)

(assert (=> (and b!4149188 (= (toChars!9941 (transformation!7418 r!4008)) (toChars!9941 (transformation!7418 r!4008))) t!343048) tb!249081))

(declare-fun result!302986 () Bool)

(assert (= result!302986 result!302980))

(assert (=> d!1227562 t!343048))

(declare-fun b_and!322695 () Bool)

(assert (= b_and!322671 (and (=> t!343048 result!302986) b_and!322695)))

(declare-fun b_lambda!122023 () Bool)

(assert (=> (not b_lambda!122023) (not d!1227562)))

(assert (=> d!1227562 t!343026))

(declare-fun b_and!322697 () Bool)

(assert (= b_and!322673 (and (=> t!343026 result!302956) b_and!322697)))

(assert (=> d!1227562 t!343028))

(declare-fun b_and!322699 () Bool)

(assert (= b_and!322675 (and (=> t!343028 result!302960) b_and!322699)))

(assert (=> d!1227562 t!343030))

(declare-fun b_and!322701 () Bool)

(assert (= b_and!322677 (and (=> t!343030 result!302962) b_and!322701)))

(assert (=> d!1227562 m!4744981))

(declare-fun m!4745037 () Bool)

(assert (=> d!1227562 m!4745037))

(assert (=> d!1227562 m!4745037))

(declare-fun m!4745039 () Bool)

(assert (=> d!1227562 m!4745039))

(assert (=> d!1227562 m!4744981))

(declare-fun m!4745041 () Bool)

(assert (=> d!1227562 m!4745041))

(declare-fun m!4745043 () Bool)

(assert (=> d!1227562 m!4745043))

(assert (=> b!4149171 d!1227562))

(declare-fun d!1227586 () Bool)

(declare-fun lt!1479884 () List!45183)

(declare-fun ++!11646 (List!45183 List!45183) List!45183)

(assert (=> d!1227586 (= (++!11646 p!2912 lt!1479884) input!3238)))

(declare-fun e!2574488 () List!45183)

(assert (=> d!1227586 (= lt!1479884 e!2574488)))

(declare-fun c!710748 () Bool)

(assert (=> d!1227586 (= c!710748 ((_ is Cons!45059) p!2912))))

(assert (=> d!1227586 (>= (size!33404 input!3238) (size!33404 p!2912))))

(assert (=> d!1227586 (= (getSuffix!2680 input!3238 p!2912) lt!1479884)))

(declare-fun b!4149315 () Bool)

(declare-fun tail!6599 (List!45183) List!45183)

(assert (=> b!4149315 (= e!2574488 (getSuffix!2680 (tail!6599 input!3238) (t!343022 p!2912)))))

(declare-fun b!4149316 () Bool)

(assert (=> b!4149316 (= e!2574488 input!3238)))

(assert (= (and d!1227586 c!710748) b!4149315))

(assert (= (and d!1227586 (not c!710748)) b!4149316))

(declare-fun m!4745045 () Bool)

(assert (=> d!1227586 m!4745045))

(declare-fun m!4745047 () Bool)

(assert (=> d!1227586 m!4745047))

(assert (=> d!1227586 m!4744897))

(declare-fun m!4745049 () Bool)

(assert (=> b!4149315 m!4745049))

(assert (=> b!4149315 m!4745049))

(declare-fun m!4745051 () Bool)

(assert (=> b!4149315 m!4745051))

(assert (=> b!4149171 d!1227586))

(declare-fun b!4149378 () Bool)

(declare-fun e!2574519 () Bool)

(declare-fun lt!1479917 () Option!9724)

(declare-fun get!14714 (Option!9724) tuple2!43422)

(assert (=> b!4149378 (= e!2574519 (contains!9102 rules!3756 (rule!10550 (_1!24845 (get!14714 lt!1479917)))))))

(declare-fun b!4149379 () Bool)

(declare-fun e!2574518 () Option!9724)

(declare-fun lt!1479916 () Option!9724)

(declare-fun lt!1479914 () Option!9724)

(assert (=> b!4149379 (= e!2574518 (ite (and ((_ is None!9723) lt!1479916) ((_ is None!9723) lt!1479914)) None!9723 (ite ((_ is None!9723) lt!1479914) lt!1479916 (ite ((_ is None!9723) lt!1479916) lt!1479914 (ite (>= (size!33403 (_1!24845 (v!40383 lt!1479916))) (size!33403 (_1!24845 (v!40383 lt!1479914)))) lt!1479916 lt!1479914)))))))

(declare-fun call!290705 () Option!9724)

(assert (=> b!4149379 (= lt!1479916 call!290705)))

(assert (=> b!4149379 (= lt!1479914 (maxPrefix!4197 thiss!25645 (t!343023 rules!3756) input!3238))))

(declare-fun b!4149380 () Bool)

(assert (=> b!4149380 (= e!2574518 call!290705)))

(declare-fun b!4149381 () Bool)

(declare-fun res!1698875 () Bool)

(assert (=> b!4149381 (=> (not res!1698875) (not e!2574519))))

(declare-fun charsOf!5009 (Token!13766) BalanceConc!26852)

(assert (=> b!4149381 (= res!1698875 (matchR!6152 (regex!7418 (rule!10550 (_1!24845 (get!14714 lt!1479917)))) (list!16489 (charsOf!5009 (_1!24845 (get!14714 lt!1479917))))))))

(declare-fun b!4149382 () Bool)

(declare-fun e!2574517 () Bool)

(assert (=> b!4149382 (= e!2574517 e!2574519)))

(declare-fun res!1698876 () Bool)

(assert (=> b!4149382 (=> (not res!1698876) (not e!2574519))))

(declare-fun isDefined!7299 (Option!9724) Bool)

(assert (=> b!4149382 (= res!1698876 (isDefined!7299 lt!1479917))))

(declare-fun bm!290700 () Bool)

(assert (=> bm!290700 (= call!290705 (maxPrefixOneRule!3136 thiss!25645 (h!50480 rules!3756) input!3238))))

(declare-fun b!4149383 () Bool)

(declare-fun res!1698879 () Bool)

(assert (=> b!4149383 (=> (not res!1698879) (not e!2574519))))

(assert (=> b!4149383 (= res!1698879 (= (list!16489 (charsOf!5009 (_1!24845 (get!14714 lt!1479917)))) (originalCharacters!7914 (_1!24845 (get!14714 lt!1479917)))))))

(declare-fun d!1227588 () Bool)

(assert (=> d!1227588 e!2574517))

(declare-fun res!1698874 () Bool)

(assert (=> d!1227588 (=> res!1698874 e!2574517)))

(declare-fun isEmpty!26901 (Option!9724) Bool)

(assert (=> d!1227588 (= res!1698874 (isEmpty!26901 lt!1479917))))

(assert (=> d!1227588 (= lt!1479917 e!2574518)))

(declare-fun c!710757 () Bool)

(assert (=> d!1227588 (= c!710757 (and ((_ is Cons!45060) rules!3756) ((_ is Nil!45060) (t!343023 rules!3756))))))

(declare-fun lt!1479915 () Unit!64337)

(declare-fun lt!1479918 () Unit!64337)

(assert (=> d!1227588 (= lt!1479915 lt!1479918)))

(assert (=> d!1227588 (isPrefix!4353 input!3238 input!3238)))

(declare-fun lemmaIsPrefixRefl!2808 (List!45183 List!45183) Unit!64337)

(assert (=> d!1227588 (= lt!1479918 (lemmaIsPrefixRefl!2808 input!3238 input!3238))))

(declare-fun rulesValidInductive!2760 (LexerInterface!7007 List!45184) Bool)

(assert (=> d!1227588 (rulesValidInductive!2760 thiss!25645 rules!3756)))

(assert (=> d!1227588 (= (maxPrefix!4197 thiss!25645 rules!3756 input!3238) lt!1479917)))

(declare-fun b!4149384 () Bool)

(declare-fun res!1698880 () Bool)

(assert (=> b!4149384 (=> (not res!1698880) (not e!2574519))))

(assert (=> b!4149384 (= res!1698880 (< (size!33404 (_2!24845 (get!14714 lt!1479917))) (size!33404 input!3238)))))

(declare-fun b!4149385 () Bool)

(declare-fun res!1698877 () Bool)

(assert (=> b!4149385 (=> (not res!1698877) (not e!2574519))))

(assert (=> b!4149385 (= res!1698877 (= (value!231967 (_1!24845 (get!14714 lt!1479917))) (apply!10491 (transformation!7418 (rule!10550 (_1!24845 (get!14714 lt!1479917)))) (seqFromList!5535 (originalCharacters!7914 (_1!24845 (get!14714 lt!1479917)))))))))

(declare-fun b!4149386 () Bool)

(declare-fun res!1698878 () Bool)

(assert (=> b!4149386 (=> (not res!1698878) (not e!2574519))))

(assert (=> b!4149386 (= res!1698878 (= (++!11646 (list!16489 (charsOf!5009 (_1!24845 (get!14714 lt!1479917)))) (_2!24845 (get!14714 lt!1479917))) input!3238))))

(assert (= (and d!1227588 c!710757) b!4149380))

(assert (= (and d!1227588 (not c!710757)) b!4149379))

(assert (= (or b!4149380 b!4149379) bm!290700))

(assert (= (and d!1227588 (not res!1698874)) b!4149382))

(assert (= (and b!4149382 res!1698876) b!4149383))

(assert (= (and b!4149383 res!1698879) b!4149384))

(assert (= (and b!4149384 res!1698880) b!4149386))

(assert (= (and b!4149386 res!1698878) b!4149385))

(assert (= (and b!4149385 res!1698877) b!4149381))

(assert (= (and b!4149381 res!1698875) b!4149378))

(assert (=> b!4149379 m!4744915))

(declare-fun m!4745101 () Bool)

(assert (=> b!4149385 m!4745101))

(declare-fun m!4745103 () Bool)

(assert (=> b!4149385 m!4745103))

(assert (=> b!4149385 m!4745103))

(declare-fun m!4745105 () Bool)

(assert (=> b!4149385 m!4745105))

(assert (=> b!4149384 m!4745101))

(declare-fun m!4745107 () Bool)

(assert (=> b!4149384 m!4745107))

(assert (=> b!4149384 m!4745047))

(declare-fun m!4745109 () Bool)

(assert (=> d!1227588 m!4745109))

(declare-fun m!4745111 () Bool)

(assert (=> d!1227588 m!4745111))

(declare-fun m!4745113 () Bool)

(assert (=> d!1227588 m!4745113))

(declare-fun m!4745115 () Bool)

(assert (=> d!1227588 m!4745115))

(assert (=> b!4149386 m!4745101))

(declare-fun m!4745117 () Bool)

(assert (=> b!4149386 m!4745117))

(assert (=> b!4149386 m!4745117))

(declare-fun m!4745119 () Bool)

(assert (=> b!4149386 m!4745119))

(assert (=> b!4149386 m!4745119))

(declare-fun m!4745121 () Bool)

(assert (=> b!4149386 m!4745121))

(declare-fun m!4745123 () Bool)

(assert (=> b!4149382 m!4745123))

(assert (=> b!4149381 m!4745101))

(assert (=> b!4149381 m!4745117))

(assert (=> b!4149381 m!4745117))

(assert (=> b!4149381 m!4745119))

(assert (=> b!4149381 m!4745119))

(declare-fun m!4745125 () Bool)

(assert (=> b!4149381 m!4745125))

(assert (=> b!4149383 m!4745101))

(assert (=> b!4149383 m!4745117))

(assert (=> b!4149383 m!4745117))

(assert (=> b!4149383 m!4745119))

(assert (=> bm!290700 m!4744911))

(assert (=> b!4149378 m!4745101))

(declare-fun m!4745127 () Bool)

(assert (=> b!4149378 m!4745127))

(assert (=> b!4149171 d!1227588))

(declare-fun d!1227610 () Bool)

(declare-fun fromListB!2540 (List!45183) BalanceConc!26852)

(assert (=> d!1227610 (= (seqFromList!5535 p!2912) (fromListB!2540 p!2912))))

(declare-fun bs!595409 () Bool)

(assert (= bs!595409 d!1227610))

(declare-fun m!4745129 () Bool)

(assert (=> bs!595409 m!4745129))

(assert (=> b!4149171 d!1227610))

(declare-fun d!1227612 () Bool)

(declare-fun lt!1479921 () Int)

(assert (=> d!1227612 (>= lt!1479921 0)))

(declare-fun e!2574522 () Int)

(assert (=> d!1227612 (= lt!1479921 e!2574522)))

(declare-fun c!710760 () Bool)

(assert (=> d!1227612 (= c!710760 ((_ is Nil!45059) p!2912))))

(assert (=> d!1227612 (= (size!33404 p!2912) lt!1479921)))

(declare-fun b!4149391 () Bool)

(assert (=> b!4149391 (= e!2574522 0)))

(declare-fun b!4149392 () Bool)

(assert (=> b!4149392 (= e!2574522 (+ 1 (size!33404 (t!343022 p!2912))))))

(assert (= (and d!1227612 c!710760) b!4149391))

(assert (= (and d!1227612 (not c!710760)) b!4149392))

(declare-fun m!4745131 () Bool)

(assert (=> b!4149392 m!4745131))

(assert (=> b!4149171 d!1227612))

(declare-fun d!1227614 () Bool)

(assert (=> d!1227614 (ruleValid!3224 thiss!25645 r!4008)))

(declare-fun lt!1479924 () Unit!64337)

(declare-fun choose!25405 (LexerInterface!7007 Rule!14636 List!45184) Unit!64337)

(assert (=> d!1227614 (= lt!1479924 (choose!25405 thiss!25645 r!4008 rules!3756))))

(assert (=> d!1227614 (contains!9102 rules!3756 r!4008)))

(assert (=> d!1227614 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2264 thiss!25645 r!4008 rules!3756) lt!1479924)))

(declare-fun bs!595410 () Bool)

(assert (= bs!595410 d!1227614))

(assert (=> bs!595410 m!4744909))

(declare-fun m!4745133 () Bool)

(assert (=> bs!595410 m!4745133))

(assert (=> bs!595410 m!4744927))

(assert (=> b!4149182 d!1227614))

(declare-fun d!1227616 () Bool)

(declare-fun res!1698885 () Bool)

(declare-fun e!2574525 () Bool)

(assert (=> d!1227616 (=> (not res!1698885) (not e!2574525))))

(declare-fun validRegex!5555 (Regex!12323) Bool)

(assert (=> d!1227616 (= res!1698885 (validRegex!5555 (regex!7418 rBis!149)))))

(assert (=> d!1227616 (= (ruleValid!3224 thiss!25645 rBis!149) e!2574525)))

(declare-fun b!4149397 () Bool)

(declare-fun res!1698886 () Bool)

(assert (=> b!4149397 (=> (not res!1698886) (not e!2574525))))

(declare-fun nullable!4345 (Regex!12323) Bool)

(assert (=> b!4149397 (= res!1698886 (not (nullable!4345 (regex!7418 rBis!149))))))

(declare-fun b!4149398 () Bool)

(assert (=> b!4149398 (= e!2574525 (not (= (tag!8278 rBis!149) (String!51991 ""))))))

(assert (= (and d!1227616 res!1698885) b!4149397))

(assert (= (and b!4149397 res!1698886) b!4149398))

(declare-fun m!4745135 () Bool)

(assert (=> d!1227616 m!4745135))

(declare-fun m!4745137 () Bool)

(assert (=> b!4149397 m!4745137))

(assert (=> b!4149182 d!1227616))

(declare-fun d!1227618 () Bool)

(assert (=> d!1227618 (ruleValid!3224 thiss!25645 rBis!149)))

(declare-fun lt!1479925 () Unit!64337)

(assert (=> d!1227618 (= lt!1479925 (choose!25405 thiss!25645 rBis!149 rules!3756))))

(assert (=> d!1227618 (contains!9102 rules!3756 rBis!149)))

(assert (=> d!1227618 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2264 thiss!25645 rBis!149 rules!3756) lt!1479925)))

(declare-fun bs!595411 () Bool)

(assert (= bs!595411 d!1227618))

(assert (=> bs!595411 m!4744941))

(declare-fun m!4745139 () Bool)

(assert (=> bs!595411 m!4745139))

(assert (=> bs!595411 m!4744895))

(assert (=> b!4149182 d!1227618))

(declare-fun d!1227620 () Bool)

(declare-fun res!1698887 () Bool)

(declare-fun e!2574526 () Bool)

(assert (=> d!1227620 (=> (not res!1698887) (not e!2574526))))

(assert (=> d!1227620 (= res!1698887 (validRegex!5555 (regex!7418 r!4008)))))

(assert (=> d!1227620 (= (ruleValid!3224 thiss!25645 r!4008) e!2574526)))

(declare-fun b!4149399 () Bool)

(declare-fun res!1698888 () Bool)

(assert (=> b!4149399 (=> (not res!1698888) (not e!2574526))))

(assert (=> b!4149399 (= res!1698888 (not (nullable!4345 (regex!7418 r!4008))))))

(declare-fun b!4149400 () Bool)

(assert (=> b!4149400 (= e!2574526 (not (= (tag!8278 r!4008) (String!51991 ""))))))

(assert (= (and d!1227620 res!1698887) b!4149399))

(assert (= (and b!4149399 res!1698888) b!4149400))

(declare-fun m!4745141 () Bool)

(assert (=> d!1227620 m!4745141))

(declare-fun m!4745143 () Bool)

(assert (=> b!4149399 m!4745143))

(assert (=> b!4149169 d!1227620))

(declare-fun d!1227622 () Bool)

(assert (=> d!1227622 (= (inv!59666 (tag!8278 rBis!149)) (= (mod (str.len (value!231966 (tag!8278 rBis!149))) 2) 0))))

(assert (=> b!4149180 d!1227622))

(declare-fun d!1227624 () Bool)

(declare-fun res!1698891 () Bool)

(declare-fun e!2574529 () Bool)

(assert (=> d!1227624 (=> (not res!1698891) (not e!2574529))))

(declare-fun semiInverseModEq!3209 (Int Int) Bool)

(assert (=> d!1227624 (= res!1698891 (semiInverseModEq!3209 (toChars!9941 (transformation!7418 rBis!149)) (toValue!10082 (transformation!7418 rBis!149))))))

(assert (=> d!1227624 (= (inv!59668 (transformation!7418 rBis!149)) e!2574529)))

(declare-fun b!4149403 () Bool)

(declare-fun equivClasses!3108 (Int Int) Bool)

(assert (=> b!4149403 (= e!2574529 (equivClasses!3108 (toChars!9941 (transformation!7418 rBis!149)) (toValue!10082 (transformation!7418 rBis!149))))))

(assert (= (and d!1227624 res!1698891) b!4149403))

(declare-fun m!4745145 () Bool)

(assert (=> d!1227624 m!4745145))

(declare-fun m!4745147 () Bool)

(assert (=> b!4149403 m!4745147))

(assert (=> b!4149180 d!1227624))

(declare-fun d!1227626 () Bool)

(declare-fun res!1698896 () Bool)

(declare-fun e!2574534 () Bool)

(assert (=> d!1227626 (=> res!1698896 e!2574534)))

(assert (=> d!1227626 (= res!1698896 ((_ is Nil!45060) rules!3756))))

(assert (=> d!1227626 (= (noDuplicateTag!3005 thiss!25645 rules!3756 (noDuplicateTag$default$2!20 thiss!25645)) e!2574534)))

(declare-fun b!4149408 () Bool)

(declare-fun e!2574535 () Bool)

(assert (=> b!4149408 (= e!2574534 e!2574535)))

(declare-fun res!1698897 () Bool)

(assert (=> b!4149408 (=> (not res!1698897) (not e!2574535))))

(declare-fun contains!9104 (List!45185 String!51990) Bool)

(assert (=> b!4149408 (= res!1698897 (not (contains!9104 (noDuplicateTag$default$2!20 thiss!25645) (tag!8278 (h!50480 rules!3756)))))))

(declare-fun b!4149409 () Bool)

(assert (=> b!4149409 (= e!2574535 (noDuplicateTag!3005 thiss!25645 (t!343023 rules!3756) (Cons!45061 (tag!8278 (h!50480 rules!3756)) (noDuplicateTag$default$2!20 thiss!25645))))))

(assert (= (and d!1227626 (not res!1698896)) b!4149408))

(assert (= (and b!4149408 res!1698897) b!4149409))

(assert (=> b!4149408 m!4744955))

(declare-fun m!4745149 () Bool)

(assert (=> b!4149408 m!4745149))

(declare-fun m!4745151 () Bool)

(assert (=> b!4149409 m!4745151))

(assert (=> b!4149191 d!1227626))

(declare-fun d!1227628 () Bool)

(assert (=> d!1227628 (= (noDuplicateTag$default$2!20 thiss!25645) Nil!45061)))

(assert (=> b!4149191 d!1227628))

(declare-fun d!1227630 () Bool)

(assert (=> d!1227630 (= (inv!59666 (tag!8278 r!4008)) (= (mod (str.len (value!231966 (tag!8278 r!4008))) 2) 0))))

(assert (=> b!4149170 d!1227630))

(declare-fun d!1227632 () Bool)

(declare-fun res!1698898 () Bool)

(declare-fun e!2574536 () Bool)

(assert (=> d!1227632 (=> (not res!1698898) (not e!2574536))))

(assert (=> d!1227632 (= res!1698898 (semiInverseModEq!3209 (toChars!9941 (transformation!7418 r!4008)) (toValue!10082 (transformation!7418 r!4008))))))

(assert (=> d!1227632 (= (inv!59668 (transformation!7418 r!4008)) e!2574536)))

(declare-fun b!4149410 () Bool)

(assert (=> b!4149410 (= e!2574536 (equivClasses!3108 (toChars!9941 (transformation!7418 r!4008)) (toValue!10082 (transformation!7418 r!4008))))))

(assert (= (and d!1227632 res!1698898) b!4149410))

(declare-fun m!4745153 () Bool)

(assert (=> d!1227632 m!4745153))

(declare-fun m!4745155 () Bool)

(assert (=> b!4149410 m!4745155))

(assert (=> b!4149170 d!1227632))

(declare-fun d!1227634 () Bool)

(assert (=> d!1227634 (= (isEmpty!26898 p!2912) ((_ is Nil!45059) p!2912))))

(assert (=> b!4149189 d!1227634))

(declare-fun d!1227636 () Bool)

(declare-fun res!1698901 () Bool)

(declare-fun e!2574539 () Bool)

(assert (=> d!1227636 (=> (not res!1698901) (not e!2574539))))

(declare-fun rulesValid!2922 (LexerInterface!7007 List!45184) Bool)

(assert (=> d!1227636 (= res!1698901 (rulesValid!2922 thiss!25645 (t!343023 rules!3756)))))

(assert (=> d!1227636 (= (rulesInvariant!6304 thiss!25645 (t!343023 rules!3756)) e!2574539)))

(declare-fun b!4149413 () Bool)

(assert (=> b!4149413 (= e!2574539 (noDuplicateTag!3005 thiss!25645 (t!343023 rules!3756) Nil!45061))))

(assert (= (and d!1227636 res!1698901) b!4149413))

(declare-fun m!4745157 () Bool)

(assert (=> d!1227636 m!4745157))

(declare-fun m!4745159 () Bool)

(assert (=> b!4149413 m!4745159))

(assert (=> b!4149168 d!1227636))

(declare-fun d!1227638 () Bool)

(declare-fun lt!1479928 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6971 (List!45184) (InoxSet Rule!14636))

(assert (=> d!1227638 (= lt!1479928 (select (content!6971 rules!3756) (h!50480 rules!3756)))))

(declare-fun e!2574544 () Bool)

(assert (=> d!1227638 (= lt!1479928 e!2574544)))

(declare-fun res!1698906 () Bool)

(assert (=> d!1227638 (=> (not res!1698906) (not e!2574544))))

(assert (=> d!1227638 (= res!1698906 ((_ is Cons!45060) rules!3756))))

(assert (=> d!1227638 (= (contains!9102 rules!3756 (h!50480 rules!3756)) lt!1479928)))

(declare-fun b!4149418 () Bool)

(declare-fun e!2574545 () Bool)

(assert (=> b!4149418 (= e!2574544 e!2574545)))

(declare-fun res!1698907 () Bool)

(assert (=> b!4149418 (=> res!1698907 e!2574545)))

(assert (=> b!4149418 (= res!1698907 (= (h!50480 rules!3756) (h!50480 rules!3756)))))

(declare-fun b!4149419 () Bool)

(assert (=> b!4149419 (= e!2574545 (contains!9102 (t!343023 rules!3756) (h!50480 rules!3756)))))

(assert (= (and d!1227638 res!1698906) b!4149418))

(assert (= (and b!4149418 (not res!1698907)) b!4149419))

(declare-fun m!4745161 () Bool)

(assert (=> d!1227638 m!4745161))

(declare-fun m!4745163 () Bool)

(assert (=> d!1227638 m!4745163))

(declare-fun m!4745165 () Bool)

(assert (=> b!4149419 m!4745165))

(assert (=> b!4149168 d!1227638))

(declare-fun b!4149538 () Bool)

(declare-fun res!1698957 () Bool)

(declare-fun e!2574606 () Bool)

(assert (=> b!4149538 (=> (not res!1698957) (not e!2574606))))

(declare-fun lt!1479974 () Option!9724)

(assert (=> b!4149538 (= res!1698957 (= (rule!10550 (_1!24845 (get!14714 lt!1479974))) (h!50480 rules!3756)))))

(declare-fun b!4149539 () Bool)

(declare-fun e!2574608 () Bool)

(assert (=> b!4149539 (= e!2574608 e!2574606)))

(declare-fun res!1698958 () Bool)

(assert (=> b!4149539 (=> (not res!1698958) (not e!2574606))))

(assert (=> b!4149539 (= res!1698958 (matchR!6152 (regex!7418 (h!50480 rules!3756)) (list!16489 (charsOf!5009 (_1!24845 (get!14714 lt!1479974))))))))

(declare-fun b!4149540 () Bool)

(declare-fun res!1698956 () Bool)

(assert (=> b!4149540 (=> (not res!1698956) (not e!2574606))))

(assert (=> b!4149540 (= res!1698956 (< (size!33404 (_2!24845 (get!14714 lt!1479974))) (size!33404 input!3238)))))

(declare-fun b!4149541 () Bool)

(declare-fun res!1698959 () Bool)

(assert (=> b!4149541 (=> (not res!1698959) (not e!2574606))))

(assert (=> b!4149541 (= res!1698959 (= (value!231967 (_1!24845 (get!14714 lt!1479974))) (apply!10491 (transformation!7418 (rule!10550 (_1!24845 (get!14714 lt!1479974)))) (seqFromList!5535 (originalCharacters!7914 (_1!24845 (get!14714 lt!1479974)))))))))

(declare-fun b!4149542 () Bool)

(declare-fun res!1698961 () Bool)

(assert (=> b!4149542 (=> (not res!1698961) (not e!2574606))))

(assert (=> b!4149542 (= res!1698961 (= (++!11646 (list!16489 (charsOf!5009 (_1!24845 (get!14714 lt!1479974)))) (_2!24845 (get!14714 lt!1479974))) input!3238))))

(declare-fun b!4149543 () Bool)

(declare-fun e!2574605 () Option!9724)

(assert (=> b!4149543 (= e!2574605 None!9723)))

(declare-fun b!4149544 () Bool)

(declare-fun e!2574607 () Bool)

(declare-datatypes ((tuple2!43426 0))(
  ( (tuple2!43427 (_1!24847 List!45183) (_2!24847 List!45183)) )
))
(declare-fun findLongestMatchInner!1549 (Regex!12323 List!45183 Int List!45183 List!45183 Int) tuple2!43426)

(assert (=> b!4149544 (= e!2574607 (matchR!6152 (regex!7418 (h!50480 rules!3756)) (_1!24847 (findLongestMatchInner!1549 (regex!7418 (h!50480 rules!3756)) Nil!45059 (size!33404 Nil!45059) input!3238 input!3238 (size!33404 input!3238)))))))

(declare-fun b!4149545 () Bool)

(declare-fun lt!1479972 () tuple2!43426)

(declare-fun size!33406 (BalanceConc!26852) Int)

(assert (=> b!4149545 (= e!2574605 (Some!9723 (tuple2!43423 (Token!13767 (apply!10491 (transformation!7418 (h!50480 rules!3756)) (seqFromList!5535 (_1!24847 lt!1479972))) (h!50480 rules!3756) (size!33406 (seqFromList!5535 (_1!24847 lt!1479972))) (_1!24847 lt!1479972)) (_2!24847 lt!1479972))))))

(declare-fun lt!1479976 () Unit!64337)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1522 (Regex!12323 List!45183) Unit!64337)

(assert (=> b!4149545 (= lt!1479976 (longestMatchIsAcceptedByMatchOrIsEmpty!1522 (regex!7418 (h!50480 rules!3756)) input!3238))))

(declare-fun res!1698955 () Bool)

(assert (=> b!4149545 (= res!1698955 (isEmpty!26898 (_1!24847 (findLongestMatchInner!1549 (regex!7418 (h!50480 rules!3756)) Nil!45059 (size!33404 Nil!45059) input!3238 input!3238 (size!33404 input!3238)))))))

(assert (=> b!4149545 (=> res!1698955 e!2574607)))

(assert (=> b!4149545 e!2574607))

(declare-fun lt!1479973 () Unit!64337)

(assert (=> b!4149545 (= lt!1479973 lt!1479976)))

(declare-fun lt!1479975 () Unit!64337)

(assert (=> b!4149545 (= lt!1479975 (lemmaSemiInverse!2276 (transformation!7418 (h!50480 rules!3756)) (seqFromList!5535 (_1!24847 lt!1479972))))))

(declare-fun d!1227640 () Bool)

(assert (=> d!1227640 e!2574608))

(declare-fun res!1698960 () Bool)

(assert (=> d!1227640 (=> res!1698960 e!2574608)))

(assert (=> d!1227640 (= res!1698960 (isEmpty!26901 lt!1479974))))

(assert (=> d!1227640 (= lt!1479974 e!2574605)))

(declare-fun c!710777 () Bool)

(assert (=> d!1227640 (= c!710777 (isEmpty!26898 (_1!24847 lt!1479972)))))

(declare-fun findLongestMatch!1462 (Regex!12323 List!45183) tuple2!43426)

(assert (=> d!1227640 (= lt!1479972 (findLongestMatch!1462 (regex!7418 (h!50480 rules!3756)) input!3238))))

(assert (=> d!1227640 (ruleValid!3224 thiss!25645 (h!50480 rules!3756))))

(assert (=> d!1227640 (= (maxPrefixOneRule!3136 thiss!25645 (h!50480 rules!3756) input!3238) lt!1479974)))

(declare-fun b!4149546 () Bool)

(assert (=> b!4149546 (= e!2574606 (= (size!33403 (_1!24845 (get!14714 lt!1479974))) (size!33404 (originalCharacters!7914 (_1!24845 (get!14714 lt!1479974))))))))

(assert (= (and d!1227640 c!710777) b!4149543))

(assert (= (and d!1227640 (not c!710777)) b!4149545))

(assert (= (and b!4149545 (not res!1698955)) b!4149544))

(assert (= (and d!1227640 (not res!1698960)) b!4149539))

(assert (= (and b!4149539 res!1698958) b!4149542))

(assert (= (and b!4149542 res!1698961) b!4149540))

(assert (= (and b!4149540 res!1698956) b!4149538))

(assert (= (and b!4149538 res!1698957) b!4149541))

(assert (= (and b!4149541 res!1698959) b!4149546))

(declare-fun m!4745269 () Bool)

(assert (=> b!4149541 m!4745269))

(declare-fun m!4745271 () Bool)

(assert (=> b!4149541 m!4745271))

(assert (=> b!4149541 m!4745271))

(declare-fun m!4745273 () Bool)

(assert (=> b!4149541 m!4745273))

(declare-fun m!4745275 () Bool)

(assert (=> b!4149544 m!4745275))

(assert (=> b!4149544 m!4745047))

(assert (=> b!4149544 m!4745275))

(assert (=> b!4149544 m!4745047))

(declare-fun m!4745277 () Bool)

(assert (=> b!4149544 m!4745277))

(declare-fun m!4745279 () Bool)

(assert (=> b!4149544 m!4745279))

(assert (=> b!4149539 m!4745269))

(declare-fun m!4745281 () Bool)

(assert (=> b!4149539 m!4745281))

(assert (=> b!4149539 m!4745281))

(declare-fun m!4745283 () Bool)

(assert (=> b!4149539 m!4745283))

(assert (=> b!4149539 m!4745283))

(declare-fun m!4745285 () Bool)

(assert (=> b!4149539 m!4745285))

(declare-fun m!4745287 () Bool)

(assert (=> b!4149545 m!4745287))

(assert (=> b!4149545 m!4745047))

(assert (=> b!4149545 m!4745287))

(declare-fun m!4745289 () Bool)

(assert (=> b!4149545 m!4745289))

(assert (=> b!4149545 m!4745287))

(declare-fun m!4745291 () Bool)

(assert (=> b!4149545 m!4745291))

(assert (=> b!4149545 m!4745275))

(assert (=> b!4149545 m!4745275))

(assert (=> b!4149545 m!4745047))

(assert (=> b!4149545 m!4745277))

(declare-fun m!4745293 () Bool)

(assert (=> b!4149545 m!4745293))

(declare-fun m!4745295 () Bool)

(assert (=> b!4149545 m!4745295))

(assert (=> b!4149545 m!4745287))

(declare-fun m!4745297 () Bool)

(assert (=> b!4149545 m!4745297))

(assert (=> b!4149540 m!4745269))

(declare-fun m!4745299 () Bool)

(assert (=> b!4149540 m!4745299))

(assert (=> b!4149540 m!4745047))

(assert (=> b!4149538 m!4745269))

(assert (=> b!4149542 m!4745269))

(assert (=> b!4149542 m!4745281))

(assert (=> b!4149542 m!4745281))

(assert (=> b!4149542 m!4745283))

(assert (=> b!4149542 m!4745283))

(declare-fun m!4745301 () Bool)

(assert (=> b!4149542 m!4745301))

(assert (=> b!4149546 m!4745269))

(declare-fun m!4745303 () Bool)

(assert (=> b!4149546 m!4745303))

(declare-fun m!4745305 () Bool)

(assert (=> d!1227640 m!4745305))

(declare-fun m!4745307 () Bool)

(assert (=> d!1227640 m!4745307))

(declare-fun m!4745309 () Bool)

(assert (=> d!1227640 m!4745309))

(declare-fun m!4745311 () Bool)

(assert (=> d!1227640 m!4745311))

(assert (=> b!4149168 d!1227640))

(declare-fun d!1227664 () Bool)

(assert (=> d!1227664 (rulesInvariant!6304 thiss!25645 (t!343023 rules!3756))))

(declare-fun lt!1479979 () Unit!64337)

(declare-fun choose!25407 (LexerInterface!7007 Rule!14636 List!45184) Unit!64337)

(assert (=> d!1227664 (= lt!1479979 (choose!25407 thiss!25645 (h!50480 rules!3756) (t!343023 rules!3756)))))

(assert (=> d!1227664 (rulesInvariant!6304 thiss!25645 (Cons!45060 (h!50480 rules!3756) (t!343023 rules!3756)))))

(assert (=> d!1227664 (= (lemmaInvariantOnRulesThenOnTail!830 thiss!25645 (h!50480 rules!3756) (t!343023 rules!3756)) lt!1479979)))

(declare-fun bs!595415 () Bool)

(assert (= bs!595415 d!1227664))

(assert (=> bs!595415 m!4744917))

(declare-fun m!4745313 () Bool)

(assert (=> bs!595415 m!4745313))

(declare-fun m!4745315 () Bool)

(assert (=> bs!595415 m!4745315))

(assert (=> b!4149168 d!1227664))

(declare-fun b!4149547 () Bool)

(declare-fun e!2574611 () Bool)

(declare-fun lt!1479983 () Option!9724)

(assert (=> b!4149547 (= e!2574611 (contains!9102 (t!343023 rules!3756) (rule!10550 (_1!24845 (get!14714 lt!1479983)))))))

(declare-fun b!4149548 () Bool)

(declare-fun e!2574610 () Option!9724)

(declare-fun lt!1479982 () Option!9724)

(declare-fun lt!1479980 () Option!9724)

(assert (=> b!4149548 (= e!2574610 (ite (and ((_ is None!9723) lt!1479982) ((_ is None!9723) lt!1479980)) None!9723 (ite ((_ is None!9723) lt!1479980) lt!1479982 (ite ((_ is None!9723) lt!1479982) lt!1479980 (ite (>= (size!33403 (_1!24845 (v!40383 lt!1479982))) (size!33403 (_1!24845 (v!40383 lt!1479980)))) lt!1479982 lt!1479980)))))))

(declare-fun call!290707 () Option!9724)

(assert (=> b!4149548 (= lt!1479982 call!290707)))

(assert (=> b!4149548 (= lt!1479980 (maxPrefix!4197 thiss!25645 (t!343023 (t!343023 rules!3756)) input!3238))))

(declare-fun b!4149549 () Bool)

(assert (=> b!4149549 (= e!2574610 call!290707)))

(declare-fun b!4149550 () Bool)

(declare-fun res!1698963 () Bool)

(assert (=> b!4149550 (=> (not res!1698963) (not e!2574611))))

(assert (=> b!4149550 (= res!1698963 (matchR!6152 (regex!7418 (rule!10550 (_1!24845 (get!14714 lt!1479983)))) (list!16489 (charsOf!5009 (_1!24845 (get!14714 lt!1479983))))))))

(declare-fun b!4149551 () Bool)

(declare-fun e!2574609 () Bool)

(assert (=> b!4149551 (= e!2574609 e!2574611)))

(declare-fun res!1698964 () Bool)

(assert (=> b!4149551 (=> (not res!1698964) (not e!2574611))))

(assert (=> b!4149551 (= res!1698964 (isDefined!7299 lt!1479983))))

(declare-fun bm!290702 () Bool)

(assert (=> bm!290702 (= call!290707 (maxPrefixOneRule!3136 thiss!25645 (h!50480 (t!343023 rules!3756)) input!3238))))

(declare-fun b!4149552 () Bool)

(declare-fun res!1698967 () Bool)

(assert (=> b!4149552 (=> (not res!1698967) (not e!2574611))))

(assert (=> b!4149552 (= res!1698967 (= (list!16489 (charsOf!5009 (_1!24845 (get!14714 lt!1479983)))) (originalCharacters!7914 (_1!24845 (get!14714 lt!1479983)))))))

(declare-fun d!1227666 () Bool)

(assert (=> d!1227666 e!2574609))

(declare-fun res!1698962 () Bool)

(assert (=> d!1227666 (=> res!1698962 e!2574609)))

(assert (=> d!1227666 (= res!1698962 (isEmpty!26901 lt!1479983))))

(assert (=> d!1227666 (= lt!1479983 e!2574610)))

(declare-fun c!710778 () Bool)

(assert (=> d!1227666 (= c!710778 (and ((_ is Cons!45060) (t!343023 rules!3756)) ((_ is Nil!45060) (t!343023 (t!343023 rules!3756)))))))

(declare-fun lt!1479981 () Unit!64337)

(declare-fun lt!1479984 () Unit!64337)

(assert (=> d!1227666 (= lt!1479981 lt!1479984)))

(assert (=> d!1227666 (isPrefix!4353 input!3238 input!3238)))

(assert (=> d!1227666 (= lt!1479984 (lemmaIsPrefixRefl!2808 input!3238 input!3238))))

(assert (=> d!1227666 (rulesValidInductive!2760 thiss!25645 (t!343023 rules!3756))))

(assert (=> d!1227666 (= (maxPrefix!4197 thiss!25645 (t!343023 rules!3756) input!3238) lt!1479983)))

(declare-fun b!4149553 () Bool)

(declare-fun res!1698968 () Bool)

(assert (=> b!4149553 (=> (not res!1698968) (not e!2574611))))

(assert (=> b!4149553 (= res!1698968 (< (size!33404 (_2!24845 (get!14714 lt!1479983))) (size!33404 input!3238)))))

(declare-fun b!4149554 () Bool)

(declare-fun res!1698965 () Bool)

(assert (=> b!4149554 (=> (not res!1698965) (not e!2574611))))

(assert (=> b!4149554 (= res!1698965 (= (value!231967 (_1!24845 (get!14714 lt!1479983))) (apply!10491 (transformation!7418 (rule!10550 (_1!24845 (get!14714 lt!1479983)))) (seqFromList!5535 (originalCharacters!7914 (_1!24845 (get!14714 lt!1479983)))))))))

(declare-fun b!4149555 () Bool)

(declare-fun res!1698966 () Bool)

(assert (=> b!4149555 (=> (not res!1698966) (not e!2574611))))

(assert (=> b!4149555 (= res!1698966 (= (++!11646 (list!16489 (charsOf!5009 (_1!24845 (get!14714 lt!1479983)))) (_2!24845 (get!14714 lt!1479983))) input!3238))))

(assert (= (and d!1227666 c!710778) b!4149549))

(assert (= (and d!1227666 (not c!710778)) b!4149548))

(assert (= (or b!4149549 b!4149548) bm!290702))

(assert (= (and d!1227666 (not res!1698962)) b!4149551))

(assert (= (and b!4149551 res!1698964) b!4149552))

(assert (= (and b!4149552 res!1698967) b!4149553))

(assert (= (and b!4149553 res!1698968) b!4149555))

(assert (= (and b!4149555 res!1698966) b!4149554))

(assert (= (and b!4149554 res!1698965) b!4149550))

(assert (= (and b!4149550 res!1698963) b!4149547))

(declare-fun m!4745317 () Bool)

(assert (=> b!4149548 m!4745317))

(declare-fun m!4745319 () Bool)

(assert (=> b!4149554 m!4745319))

(declare-fun m!4745321 () Bool)

(assert (=> b!4149554 m!4745321))

(assert (=> b!4149554 m!4745321))

(declare-fun m!4745323 () Bool)

(assert (=> b!4149554 m!4745323))

(assert (=> b!4149553 m!4745319))

(declare-fun m!4745325 () Bool)

(assert (=> b!4149553 m!4745325))

(assert (=> b!4149553 m!4745047))

(declare-fun m!4745327 () Bool)

(assert (=> d!1227666 m!4745327))

(assert (=> d!1227666 m!4745111))

(assert (=> d!1227666 m!4745113))

(declare-fun m!4745329 () Bool)

(assert (=> d!1227666 m!4745329))

(assert (=> b!4149555 m!4745319))

(declare-fun m!4745331 () Bool)

(assert (=> b!4149555 m!4745331))

(assert (=> b!4149555 m!4745331))

(declare-fun m!4745333 () Bool)

(assert (=> b!4149555 m!4745333))

(assert (=> b!4149555 m!4745333))

(declare-fun m!4745335 () Bool)

(assert (=> b!4149555 m!4745335))

(declare-fun m!4745337 () Bool)

(assert (=> b!4149551 m!4745337))

(assert (=> b!4149550 m!4745319))

(assert (=> b!4149550 m!4745331))

(assert (=> b!4149550 m!4745331))

(assert (=> b!4149550 m!4745333))

(assert (=> b!4149550 m!4745333))

(declare-fun m!4745339 () Bool)

(assert (=> b!4149550 m!4745339))

(assert (=> b!4149552 m!4745319))

(assert (=> b!4149552 m!4745331))

(assert (=> b!4149552 m!4745331))

(assert (=> b!4149552 m!4745333))

(declare-fun m!4745341 () Bool)

(assert (=> bm!290702 m!4745341))

(assert (=> b!4149547 m!4745319))

(declare-fun m!4745343 () Bool)

(assert (=> b!4149547 m!4745343))

(assert (=> b!4149168 d!1227666))

(declare-fun b!4149559 () Bool)

(declare-fun e!2574613 () Int)

(assert (=> b!4149559 (= e!2574613 (- 1))))

(declare-fun b!4149557 () Bool)

(declare-fun e!2574612 () Int)

(assert (=> b!4149557 (= e!2574612 e!2574613)))

(declare-fun c!710779 () Bool)

(assert (=> b!4149557 (= c!710779 (and ((_ is Cons!45060) rules!3756) (not (= (h!50480 rules!3756) r!4008))))))

(declare-fun d!1227668 () Bool)

(declare-fun lt!1479985 () Int)

(assert (=> d!1227668 (>= lt!1479985 0)))

(assert (=> d!1227668 (= lt!1479985 e!2574612)))

(declare-fun c!710780 () Bool)

(assert (=> d!1227668 (= c!710780 (and ((_ is Cons!45060) rules!3756) (= (h!50480 rules!3756) r!4008)))))

(assert (=> d!1227668 (contains!9102 rules!3756 r!4008)))

(assert (=> d!1227668 (= (getIndex!764 rules!3756 r!4008) lt!1479985)))

(declare-fun b!4149558 () Bool)

(assert (=> b!4149558 (= e!2574613 (+ 1 (getIndex!764 (t!343023 rules!3756) r!4008)))))

(declare-fun b!4149556 () Bool)

(assert (=> b!4149556 (= e!2574612 0)))

(assert (= (and d!1227668 c!710780) b!4149556))

(assert (= (and d!1227668 (not c!710780)) b!4149557))

(assert (= (and b!4149557 c!710779) b!4149558))

(assert (= (and b!4149557 (not c!710779)) b!4149559))

(assert (=> d!1227668 m!4744927))

(declare-fun m!4745345 () Bool)

(assert (=> b!4149558 m!4745345))

(assert (=> b!4149179 d!1227668))

(declare-fun b!4149563 () Bool)

(declare-fun e!2574615 () Int)

(assert (=> b!4149563 (= e!2574615 (- 1))))

(declare-fun b!4149561 () Bool)

(declare-fun e!2574614 () Int)

(assert (=> b!4149561 (= e!2574614 e!2574615)))

(declare-fun c!710781 () Bool)

(assert (=> b!4149561 (= c!710781 (and ((_ is Cons!45060) rules!3756) (not (= (h!50480 rules!3756) rBis!149))))))

(declare-fun d!1227670 () Bool)

(declare-fun lt!1479986 () Int)

(assert (=> d!1227670 (>= lt!1479986 0)))

(assert (=> d!1227670 (= lt!1479986 e!2574614)))

(declare-fun c!710782 () Bool)

(assert (=> d!1227670 (= c!710782 (and ((_ is Cons!45060) rules!3756) (= (h!50480 rules!3756) rBis!149)))))

(assert (=> d!1227670 (contains!9102 rules!3756 rBis!149)))

(assert (=> d!1227670 (= (getIndex!764 rules!3756 rBis!149) lt!1479986)))

(declare-fun b!4149562 () Bool)

(assert (=> b!4149562 (= e!2574615 (+ 1 (getIndex!764 (t!343023 rules!3756) rBis!149)))))

(declare-fun b!4149560 () Bool)

(assert (=> b!4149560 (= e!2574614 0)))

(assert (= (and d!1227670 c!710782) b!4149560))

(assert (= (and d!1227670 (not c!710782)) b!4149561))

(assert (= (and b!4149561 c!710781) b!4149562))

(assert (= (and b!4149561 (not c!710781)) b!4149563))

(assert (=> d!1227670 m!4744895))

(declare-fun m!4745347 () Bool)

(assert (=> b!4149562 m!4745347))

(assert (=> b!4149179 d!1227670))

(declare-fun d!1227672 () Bool)

(assert (=> d!1227672 (= (isEmpty!26899 rules!3756) ((_ is Nil!45060) rules!3756))))

(assert (=> b!4149190 d!1227672))

(declare-fun d!1227674 () Bool)

(declare-fun e!2574623 () Bool)

(assert (=> d!1227674 e!2574623))

(declare-fun res!1698980 () Bool)

(assert (=> d!1227674 (=> res!1698980 e!2574623)))

(declare-fun lt!1479989 () Bool)

(assert (=> d!1227674 (= res!1698980 (not lt!1479989))))

(declare-fun e!2574622 () Bool)

(assert (=> d!1227674 (= lt!1479989 e!2574622)))

(declare-fun res!1698978 () Bool)

(assert (=> d!1227674 (=> res!1698978 e!2574622)))

(assert (=> d!1227674 (= res!1698978 ((_ is Nil!45059) p!2912))))

(assert (=> d!1227674 (= (isPrefix!4353 p!2912 input!3238) lt!1479989)))

(declare-fun b!4149573 () Bool)

(declare-fun res!1698979 () Bool)

(declare-fun e!2574624 () Bool)

(assert (=> b!4149573 (=> (not res!1698979) (not e!2574624))))

(declare-fun head!8758 (List!45183) C!24832)

(assert (=> b!4149573 (= res!1698979 (= (head!8758 p!2912) (head!8758 input!3238)))))

(declare-fun b!4149572 () Bool)

(assert (=> b!4149572 (= e!2574622 e!2574624)))

(declare-fun res!1698977 () Bool)

(assert (=> b!4149572 (=> (not res!1698977) (not e!2574624))))

(assert (=> b!4149572 (= res!1698977 (not ((_ is Nil!45059) input!3238)))))

(declare-fun b!4149574 () Bool)

(assert (=> b!4149574 (= e!2574624 (isPrefix!4353 (tail!6599 p!2912) (tail!6599 input!3238)))))

(declare-fun b!4149575 () Bool)

(assert (=> b!4149575 (= e!2574623 (>= (size!33404 input!3238) (size!33404 p!2912)))))

(assert (= (and d!1227674 (not res!1698978)) b!4149572))

(assert (= (and b!4149572 res!1698977) b!4149573))

(assert (= (and b!4149573 res!1698979) b!4149574))

(assert (= (and d!1227674 (not res!1698980)) b!4149575))

(declare-fun m!4745349 () Bool)

(assert (=> b!4149573 m!4745349))

(declare-fun m!4745351 () Bool)

(assert (=> b!4149573 m!4745351))

(declare-fun m!4745353 () Bool)

(assert (=> b!4149574 m!4745353))

(assert (=> b!4149574 m!4745049))

(assert (=> b!4149574 m!4745353))

(assert (=> b!4149574 m!4745049))

(declare-fun m!4745355 () Bool)

(assert (=> b!4149574 m!4745355))

(assert (=> b!4149575 m!4745047))

(assert (=> b!4149575 m!4744897))

(assert (=> b!4149176 d!1227674))

(declare-fun d!1227676 () Bool)

(declare-fun lt!1479990 () Bool)

(assert (=> d!1227676 (= lt!1479990 (select (content!6971 rules!3756) r!4008))))

(declare-fun e!2574625 () Bool)

(assert (=> d!1227676 (= lt!1479990 e!2574625)))

(declare-fun res!1698981 () Bool)

(assert (=> d!1227676 (=> (not res!1698981) (not e!2574625))))

(assert (=> d!1227676 (= res!1698981 ((_ is Cons!45060) rules!3756))))

(assert (=> d!1227676 (= (contains!9102 rules!3756 r!4008) lt!1479990)))

(declare-fun b!4149576 () Bool)

(declare-fun e!2574626 () Bool)

(assert (=> b!4149576 (= e!2574625 e!2574626)))

(declare-fun res!1698982 () Bool)

(assert (=> b!4149576 (=> res!1698982 e!2574626)))

(assert (=> b!4149576 (= res!1698982 (= (h!50480 rules!3756) r!4008))))

(declare-fun b!4149577 () Bool)

(assert (=> b!4149577 (= e!2574626 (contains!9102 (t!343023 rules!3756) r!4008))))

(assert (= (and d!1227676 res!1698981) b!4149576))

(assert (= (and b!4149576 (not res!1698982)) b!4149577))

(assert (=> d!1227676 m!4745161))

(declare-fun m!4745357 () Bool)

(assert (=> d!1227676 m!4745357))

(assert (=> b!4149577 m!4744959))

(assert (=> b!4149187 d!1227676))

(declare-fun b!4149606 () Bool)

(declare-fun e!2574642 () Bool)

(declare-fun lt!1479993 () Bool)

(assert (=> b!4149606 (= e!2574642 (not lt!1479993))))

(declare-fun bm!290705 () Bool)

(declare-fun call!290710 () Bool)

(assert (=> bm!290705 (= call!290710 (isEmpty!26898 p!2912))))

(declare-fun b!4149607 () Bool)

(declare-fun res!1699000 () Bool)

(declare-fun e!2574645 () Bool)

(assert (=> b!4149607 (=> (not res!1699000) (not e!2574645))))

(assert (=> b!4149607 (= res!1699000 (isEmpty!26898 (tail!6599 p!2912)))))

(declare-fun b!4149608 () Bool)

(declare-fun e!2574644 () Bool)

(assert (=> b!4149608 (= e!2574644 (not (= (head!8758 p!2912) (c!710725 (regex!7418 r!4008)))))))

(declare-fun b!4149609 () Bool)

(declare-fun e!2574641 () Bool)

(declare-fun e!2574643 () Bool)

(assert (=> b!4149609 (= e!2574641 e!2574643)))

(declare-fun res!1699004 () Bool)

(assert (=> b!4149609 (=> (not res!1699004) (not e!2574643))))

(assert (=> b!4149609 (= res!1699004 (not lt!1479993))))

(declare-fun b!4149610 () Bool)

(assert (=> b!4149610 (= e!2574643 e!2574644)))

(declare-fun res!1699003 () Bool)

(assert (=> b!4149610 (=> res!1699003 e!2574644)))

(assert (=> b!4149610 (= res!1699003 call!290710)))

(declare-fun b!4149611 () Bool)

(declare-fun res!1698999 () Bool)

(assert (=> b!4149611 (=> (not res!1698999) (not e!2574645))))

(assert (=> b!4149611 (= res!1698999 (not call!290710))))

(declare-fun b!4149612 () Bool)

(declare-fun e!2574646 () Bool)

(declare-fun derivativeStep!3739 (Regex!12323 C!24832) Regex!12323)

(assert (=> b!4149612 (= e!2574646 (matchR!6152 (derivativeStep!3739 (regex!7418 r!4008) (head!8758 p!2912)) (tail!6599 p!2912)))))

(declare-fun b!4149614 () Bool)

(declare-fun res!1699002 () Bool)

(assert (=> b!4149614 (=> res!1699002 e!2574644)))

(assert (=> b!4149614 (= res!1699002 (not (isEmpty!26898 (tail!6599 p!2912))))))

(declare-fun b!4149615 () Bool)

(declare-fun res!1699006 () Bool)

(assert (=> b!4149615 (=> res!1699006 e!2574641)))

(assert (=> b!4149615 (= res!1699006 (not ((_ is ElementMatch!12323) (regex!7418 r!4008))))))

(assert (=> b!4149615 (= e!2574642 e!2574641)))

(declare-fun b!4149616 () Bool)

(declare-fun e!2574647 () Bool)

(assert (=> b!4149616 (= e!2574647 e!2574642)))

(declare-fun c!710791 () Bool)

(assert (=> b!4149616 (= c!710791 ((_ is EmptyLang!12323) (regex!7418 r!4008)))))

(declare-fun b!4149617 () Bool)

(declare-fun res!1699001 () Bool)

(assert (=> b!4149617 (=> res!1699001 e!2574641)))

(assert (=> b!4149617 (= res!1699001 e!2574645)))

(declare-fun res!1699005 () Bool)

(assert (=> b!4149617 (=> (not res!1699005) (not e!2574645))))

(assert (=> b!4149617 (= res!1699005 lt!1479993)))

(declare-fun d!1227678 () Bool)

(assert (=> d!1227678 e!2574647))

(declare-fun c!710789 () Bool)

(assert (=> d!1227678 (= c!710789 ((_ is EmptyExpr!12323) (regex!7418 r!4008)))))

(assert (=> d!1227678 (= lt!1479993 e!2574646)))

(declare-fun c!710790 () Bool)

(assert (=> d!1227678 (= c!710790 (isEmpty!26898 p!2912))))

(assert (=> d!1227678 (validRegex!5555 (regex!7418 r!4008))))

(assert (=> d!1227678 (= (matchR!6152 (regex!7418 r!4008) p!2912) lt!1479993)))

(declare-fun b!4149613 () Bool)

(assert (=> b!4149613 (= e!2574647 (= lt!1479993 call!290710))))

(declare-fun b!4149618 () Bool)

(assert (=> b!4149618 (= e!2574646 (nullable!4345 (regex!7418 r!4008)))))

(declare-fun b!4149619 () Bool)

(assert (=> b!4149619 (= e!2574645 (= (head!8758 p!2912) (c!710725 (regex!7418 r!4008))))))

(assert (= (and d!1227678 c!710790) b!4149618))

(assert (= (and d!1227678 (not c!710790)) b!4149612))

(assert (= (and d!1227678 c!710789) b!4149613))

(assert (= (and d!1227678 (not c!710789)) b!4149616))

(assert (= (and b!4149616 c!710791) b!4149606))

(assert (= (and b!4149616 (not c!710791)) b!4149615))

(assert (= (and b!4149615 (not res!1699006)) b!4149617))

(assert (= (and b!4149617 res!1699005) b!4149611))

(assert (= (and b!4149611 res!1698999) b!4149607))

(assert (= (and b!4149607 res!1699000) b!4149619))

(assert (= (and b!4149617 (not res!1699001)) b!4149609))

(assert (= (and b!4149609 res!1699004) b!4149610))

(assert (= (and b!4149610 (not res!1699003)) b!4149614))

(assert (= (and b!4149614 (not res!1699002)) b!4149608))

(assert (= (or b!4149613 b!4149610 b!4149611) bm!290705))

(assert (=> d!1227678 m!4744925))

(assert (=> d!1227678 m!4745141))

(assert (=> b!4149612 m!4745349))

(assert (=> b!4149612 m!4745349))

(declare-fun m!4745359 () Bool)

(assert (=> b!4149612 m!4745359))

(assert (=> b!4149612 m!4745353))

(assert (=> b!4149612 m!4745359))

(assert (=> b!4149612 m!4745353))

(declare-fun m!4745361 () Bool)

(assert (=> b!4149612 m!4745361))

(assert (=> b!4149608 m!4745349))

(assert (=> b!4149607 m!4745353))

(assert (=> b!4149607 m!4745353))

(declare-fun m!4745363 () Bool)

(assert (=> b!4149607 m!4745363))

(assert (=> b!4149618 m!4745143))

(assert (=> b!4149619 m!4745349))

(assert (=> b!4149614 m!4745353))

(assert (=> b!4149614 m!4745353))

(assert (=> b!4149614 m!4745363))

(assert (=> bm!290705 m!4744925))

(assert (=> b!4149185 d!1227678))

(declare-fun d!1227680 () Bool)

(declare-fun lt!1479994 () Bool)

(assert (=> d!1227680 (= lt!1479994 (select (content!6971 (t!343023 rules!3756)) r!4008))))

(declare-fun e!2574648 () Bool)

(assert (=> d!1227680 (= lt!1479994 e!2574648)))

(declare-fun res!1699007 () Bool)

(assert (=> d!1227680 (=> (not res!1699007) (not e!2574648))))

(assert (=> d!1227680 (= res!1699007 ((_ is Cons!45060) (t!343023 rules!3756)))))

(assert (=> d!1227680 (= (contains!9102 (t!343023 rules!3756) r!4008) lt!1479994)))

(declare-fun b!4149620 () Bool)

(declare-fun e!2574649 () Bool)

(assert (=> b!4149620 (= e!2574648 e!2574649)))

(declare-fun res!1699008 () Bool)

(assert (=> b!4149620 (=> res!1699008 e!2574649)))

(assert (=> b!4149620 (= res!1699008 (= (h!50480 (t!343023 rules!3756)) r!4008))))

(declare-fun b!4149621 () Bool)

(assert (=> b!4149621 (= e!2574649 (contains!9102 (t!343023 (t!343023 rules!3756)) r!4008))))

(assert (= (and d!1227680 res!1699007) b!4149620))

(assert (= (and b!4149620 (not res!1699008)) b!4149621))

(declare-fun m!4745365 () Bool)

(assert (=> d!1227680 m!4745365))

(declare-fun m!4745367 () Bool)

(assert (=> d!1227680 m!4745367))

(declare-fun m!4745369 () Bool)

(assert (=> b!4149621 m!4745369))

(assert (=> b!4149186 d!1227680))

(declare-fun d!1227682 () Bool)

(declare-fun lt!1479995 () Bool)

(assert (=> d!1227682 (= lt!1479995 (select (content!6971 (t!343023 rules!3756)) rBis!149))))

(declare-fun e!2574650 () Bool)

(assert (=> d!1227682 (= lt!1479995 e!2574650)))

(declare-fun res!1699009 () Bool)

(assert (=> d!1227682 (=> (not res!1699009) (not e!2574650))))

(assert (=> d!1227682 (= res!1699009 ((_ is Cons!45060) (t!343023 rules!3756)))))

(assert (=> d!1227682 (= (contains!9102 (t!343023 rules!3756) rBis!149) lt!1479995)))

(declare-fun b!4149622 () Bool)

(declare-fun e!2574651 () Bool)

(assert (=> b!4149622 (= e!2574650 e!2574651)))

(declare-fun res!1699010 () Bool)

(assert (=> b!4149622 (=> res!1699010 e!2574651)))

(assert (=> b!4149622 (= res!1699010 (= (h!50480 (t!343023 rules!3756)) rBis!149))))

(declare-fun b!4149623 () Bool)

(assert (=> b!4149623 (= e!2574651 (contains!9102 (t!343023 (t!343023 rules!3756)) rBis!149))))

(assert (= (and d!1227682 res!1699009) b!4149622))

(assert (= (and b!4149622 (not res!1699010)) b!4149623))

(assert (=> d!1227682 m!4745365))

(declare-fun m!4745371 () Bool)

(assert (=> d!1227682 m!4745371))

(declare-fun m!4745373 () Bool)

(assert (=> b!4149623 m!4745373))

(assert (=> b!4149184 d!1227682))

(declare-fun d!1227684 () Bool)

(declare-fun lt!1479996 () Bool)

(assert (=> d!1227684 (= lt!1479996 (select (content!6971 rules!3756) rBis!149))))

(declare-fun e!2574652 () Bool)

(assert (=> d!1227684 (= lt!1479996 e!2574652)))

(declare-fun res!1699011 () Bool)

(assert (=> d!1227684 (=> (not res!1699011) (not e!2574652))))

(assert (=> d!1227684 (= res!1699011 ((_ is Cons!45060) rules!3756))))

(assert (=> d!1227684 (= (contains!9102 rules!3756 rBis!149) lt!1479996)))

(declare-fun b!4149624 () Bool)

(declare-fun e!2574653 () Bool)

(assert (=> b!4149624 (= e!2574652 e!2574653)))

(declare-fun res!1699012 () Bool)

(assert (=> b!4149624 (=> res!1699012 e!2574653)))

(assert (=> b!4149624 (= res!1699012 (= (h!50480 rules!3756) rBis!149))))

(declare-fun b!4149625 () Bool)

(assert (=> b!4149625 (= e!2574653 (contains!9102 (t!343023 rules!3756) rBis!149))))

(assert (= (and d!1227684 res!1699011) b!4149624))

(assert (= (and b!4149624 (not res!1699012)) b!4149625))

(assert (=> d!1227684 m!4745161))

(declare-fun m!4745375 () Bool)

(assert (=> d!1227684 m!4745375))

(assert (=> b!4149625 m!4744929))

(assert (=> b!4149174 d!1227684))

(declare-fun d!1227686 () Bool)

(assert (=> d!1227686 (= (inv!59666 (tag!8278 (h!50480 rules!3756))) (= (mod (str.len (value!231966 (tag!8278 (h!50480 rules!3756)))) 2) 0))))

(assert (=> b!4149172 d!1227686))

(declare-fun d!1227688 () Bool)

(declare-fun res!1699013 () Bool)

(declare-fun e!2574654 () Bool)

(assert (=> d!1227688 (=> (not res!1699013) (not e!2574654))))

(assert (=> d!1227688 (= res!1699013 (semiInverseModEq!3209 (toChars!9941 (transformation!7418 (h!50480 rules!3756))) (toValue!10082 (transformation!7418 (h!50480 rules!3756)))))))

(assert (=> d!1227688 (= (inv!59668 (transformation!7418 (h!50480 rules!3756))) e!2574654)))

(declare-fun b!4149626 () Bool)

(assert (=> b!4149626 (= e!2574654 (equivClasses!3108 (toChars!9941 (transformation!7418 (h!50480 rules!3756))) (toValue!10082 (transformation!7418 (h!50480 rules!3756)))))))

(assert (= (and d!1227688 res!1699013) b!4149626))

(declare-fun m!4745377 () Bool)

(assert (=> d!1227688 m!4745377))

(declare-fun m!4745379 () Bool)

(assert (=> b!4149626 m!4745379))

(assert (=> b!4149172 d!1227688))

(declare-fun d!1227690 () Bool)

(declare-fun res!1699014 () Bool)

(declare-fun e!2574655 () Bool)

(assert (=> d!1227690 (=> (not res!1699014) (not e!2574655))))

(assert (=> d!1227690 (= res!1699014 (rulesValid!2922 thiss!25645 rules!3756))))

(assert (=> d!1227690 (= (rulesInvariant!6304 thiss!25645 rules!3756) e!2574655)))

(declare-fun b!4149627 () Bool)

(assert (=> b!4149627 (= e!2574655 (noDuplicateTag!3005 thiss!25645 rules!3756 Nil!45061))))

(assert (= (and d!1227690 res!1699014) b!4149627))

(declare-fun m!4745381 () Bool)

(assert (=> d!1227690 m!4745381))

(declare-fun m!4745383 () Bool)

(assert (=> b!4149627 m!4745383))

(assert (=> b!4149183 d!1227690))

(declare-fun b!4149632 () Bool)

(declare-fun e!2574658 () Bool)

(declare-fun tp!1264796 () Bool)

(assert (=> b!4149632 (= e!2574658 (and tp_is_empty!21569 tp!1264796))))

(assert (=> b!4149181 (= tp!1264746 e!2574658)))

(assert (= (and b!4149181 ((_ is Cons!45059) (t!343022 p!2912))) b!4149632))

(declare-fun b!4149643 () Bool)

(declare-fun e!2574661 () Bool)

(assert (=> b!4149643 (= e!2574661 tp_is_empty!21569)))

(declare-fun b!4149644 () Bool)

(declare-fun tp!1264809 () Bool)

(declare-fun tp!1264810 () Bool)

(assert (=> b!4149644 (= e!2574661 (and tp!1264809 tp!1264810))))

(declare-fun b!4149646 () Bool)

(declare-fun tp!1264811 () Bool)

(declare-fun tp!1264807 () Bool)

(assert (=> b!4149646 (= e!2574661 (and tp!1264811 tp!1264807))))

(assert (=> b!4149180 (= tp!1264745 e!2574661)))

(declare-fun b!4149645 () Bool)

(declare-fun tp!1264808 () Bool)

(assert (=> b!4149645 (= e!2574661 tp!1264808)))

(assert (= (and b!4149180 ((_ is ElementMatch!12323) (regex!7418 rBis!149))) b!4149643))

(assert (= (and b!4149180 ((_ is Concat!19972) (regex!7418 rBis!149))) b!4149644))

(assert (= (and b!4149180 ((_ is Star!12323) (regex!7418 rBis!149))) b!4149645))

(assert (= (and b!4149180 ((_ is Union!12323) (regex!7418 rBis!149))) b!4149646))

(declare-fun b!4149647 () Bool)

(declare-fun e!2574662 () Bool)

(assert (=> b!4149647 (= e!2574662 tp_is_empty!21569)))

(declare-fun b!4149648 () Bool)

(declare-fun tp!1264814 () Bool)

(declare-fun tp!1264815 () Bool)

(assert (=> b!4149648 (= e!2574662 (and tp!1264814 tp!1264815))))

(declare-fun b!4149650 () Bool)

(declare-fun tp!1264816 () Bool)

(declare-fun tp!1264812 () Bool)

(assert (=> b!4149650 (= e!2574662 (and tp!1264816 tp!1264812))))

(assert (=> b!4149170 (= tp!1264741 e!2574662)))

(declare-fun b!4149649 () Bool)

(declare-fun tp!1264813 () Bool)

(assert (=> b!4149649 (= e!2574662 tp!1264813)))

(assert (= (and b!4149170 ((_ is ElementMatch!12323) (regex!7418 r!4008))) b!4149647))

(assert (= (and b!4149170 ((_ is Concat!19972) (regex!7418 r!4008))) b!4149648))

(assert (= (and b!4149170 ((_ is Star!12323) (regex!7418 r!4008))) b!4149649))

(assert (= (and b!4149170 ((_ is Union!12323) (regex!7418 r!4008))) b!4149650))

(declare-fun b!4149661 () Bool)

(declare-fun b_free!118531 () Bool)

(declare-fun b_next!119235 () Bool)

(assert (=> b!4149661 (= b_free!118531 (not b_next!119235))))

(declare-fun tb!249087 () Bool)

(declare-fun t!343054 () Bool)

(assert (=> (and b!4149661 (= (toValue!10082 (transformation!7418 (h!50480 (t!343023 rules!3756)))) (toValue!10082 (transformation!7418 r!4008))) t!343054) tb!249087))

(declare-fun result!303004 () Bool)

(assert (= result!303004 result!302956))

(assert (=> d!1227558 t!343054))

(assert (=> d!1227562 t!343054))

(declare-fun b_and!322713 () Bool)

(declare-fun tp!1264827 () Bool)

(assert (=> b!4149661 (= tp!1264827 (and (=> t!343054 result!303004) b_and!322713))))

(declare-fun b_free!118533 () Bool)

(declare-fun b_next!119237 () Bool)

(assert (=> b!4149661 (= b_free!118533 (not b_next!119237))))

(declare-fun tb!249089 () Bool)

(declare-fun t!343056 () Bool)

(assert (=> (and b!4149661 (= (toChars!9941 (transformation!7418 (h!50480 (t!343023 rules!3756)))) (toChars!9941 (transformation!7418 r!4008))) t!343056) tb!249089))

(declare-fun result!303006 () Bool)

(assert (= result!303006 result!302980))

(assert (=> d!1227562 t!343056))

(declare-fun b_and!322715 () Bool)

(declare-fun tp!1264828 () Bool)

(assert (=> b!4149661 (= tp!1264828 (and (=> t!343056 result!303006) b_and!322715))))

(declare-fun e!2574674 () Bool)

(assert (=> b!4149661 (= e!2574674 (and tp!1264827 tp!1264828))))

(declare-fun e!2574671 () Bool)

(declare-fun tp!1264826 () Bool)

(declare-fun b!4149660 () Bool)

(assert (=> b!4149660 (= e!2574671 (and tp!1264826 (inv!59666 (tag!8278 (h!50480 (t!343023 rules!3756)))) (inv!59668 (transformation!7418 (h!50480 (t!343023 rules!3756)))) e!2574674))))

(declare-fun b!4149659 () Bool)

(declare-fun e!2574672 () Bool)

(declare-fun tp!1264825 () Bool)

(assert (=> b!4149659 (= e!2574672 (and e!2574671 tp!1264825))))

(assert (=> b!4149173 (= tp!1264738 e!2574672)))

(assert (= b!4149660 b!4149661))

(assert (= b!4149659 b!4149660))

(assert (= (and b!4149173 ((_ is Cons!45060) (t!343023 rules!3756))) b!4149659))

(declare-fun m!4745385 () Bool)

(assert (=> b!4149660 m!4745385))

(declare-fun m!4745387 () Bool)

(assert (=> b!4149660 m!4745387))

(declare-fun b!4149662 () Bool)

(declare-fun e!2574675 () Bool)

(assert (=> b!4149662 (= e!2574675 tp_is_empty!21569)))

(declare-fun b!4149663 () Bool)

(declare-fun tp!1264831 () Bool)

(declare-fun tp!1264832 () Bool)

(assert (=> b!4149663 (= e!2574675 (and tp!1264831 tp!1264832))))

(declare-fun b!4149665 () Bool)

(declare-fun tp!1264833 () Bool)

(declare-fun tp!1264829 () Bool)

(assert (=> b!4149665 (= e!2574675 (and tp!1264833 tp!1264829))))

(assert (=> b!4149172 (= tp!1264735 e!2574675)))

(declare-fun b!4149664 () Bool)

(declare-fun tp!1264830 () Bool)

(assert (=> b!4149664 (= e!2574675 tp!1264830)))

(assert (= (and b!4149172 ((_ is ElementMatch!12323) (regex!7418 (h!50480 rules!3756)))) b!4149662))

(assert (= (and b!4149172 ((_ is Concat!19972) (regex!7418 (h!50480 rules!3756)))) b!4149663))

(assert (= (and b!4149172 ((_ is Star!12323) (regex!7418 (h!50480 rules!3756)))) b!4149664))

(assert (= (and b!4149172 ((_ is Union!12323) (regex!7418 (h!50480 rules!3756)))) b!4149665))

(declare-fun b!4149666 () Bool)

(declare-fun e!2574676 () Bool)

(declare-fun tp!1264834 () Bool)

(assert (=> b!4149666 (= e!2574676 (and tp_is_empty!21569 tp!1264834))))

(assert (=> b!4149178 (= tp!1264737 e!2574676)))

(assert (= (and b!4149178 ((_ is Cons!45059) (t!343022 input!3238))) b!4149666))

(declare-fun b_lambda!122033 () Bool)

(assert (= b_lambda!122015 (or (and b!4149177 b_free!118515 (= (toValue!10082 (transformation!7418 (h!50480 rules!3756))) (toValue!10082 (transformation!7418 r!4008)))) (and b!4149175 b_free!118519 (= (toValue!10082 (transformation!7418 rBis!149)) (toValue!10082 (transformation!7418 r!4008)))) (and b!4149188 b_free!118523) (and b!4149661 b_free!118531 (= (toValue!10082 (transformation!7418 (h!50480 (t!343023 rules!3756)))) (toValue!10082 (transformation!7418 r!4008)))) b_lambda!122033)))

(declare-fun b_lambda!122035 () Bool)

(assert (= b_lambda!122021 (or (and b!4149177 b_free!118517 (= (toChars!9941 (transformation!7418 (h!50480 rules!3756))) (toChars!9941 (transformation!7418 r!4008)))) (and b!4149175 b_free!118521 (= (toChars!9941 (transformation!7418 rBis!149)) (toChars!9941 (transformation!7418 r!4008)))) (and b!4149188 b_free!118525) (and b!4149661 b_free!118533 (= (toChars!9941 (transformation!7418 (h!50480 (t!343023 rules!3756)))) (toChars!9941 (transformation!7418 r!4008)))) b_lambda!122035)))

(declare-fun b_lambda!122037 () Bool)

(assert (= b_lambda!122023 (or (and b!4149177 b_free!118515 (= (toValue!10082 (transformation!7418 (h!50480 rules!3756))) (toValue!10082 (transformation!7418 r!4008)))) (and b!4149175 b_free!118519 (= (toValue!10082 (transformation!7418 rBis!149)) (toValue!10082 (transformation!7418 r!4008)))) (and b!4149188 b_free!118523) (and b!4149661 b_free!118531 (= (toValue!10082 (transformation!7418 (h!50480 (t!343023 rules!3756)))) (toValue!10082 (transformation!7418 r!4008)))) b_lambda!122037)))

(check-sat b_and!322695 b_and!322697 (not b!4149392) tp_is_empty!21569 (not b!4149538) (not d!1227562) (not b_lambda!122035) (not b!4149648) (not b!4149552) (not b!4149660) (not b!4149403) (not b_next!119227) (not b!4149607) (not b_next!119237) (not b_next!119229) (not b!4149211) (not b!4149554) (not d!1227688) (not b!4149663) (not tb!249059) b_and!322715 (not d!1227680) (not b!4149408) (not b_next!119225) (not b!4149551) (not b!4149621) (not b!4149540) (not b_next!119223) (not b!4149397) (not b!4149310) (not b!4149666) (not b!4149386) (not b!4149659) (not d!1227682) (not b!4149539) (not b!4149632) (not b!4149546) (not tb!249077) (not b!4149614) (not b!4149664) (not d!1227684) (not b!4149577) (not b!4149382) (not b!4149409) (not d!1227690) (not d!1227678) (not b!4149573) (not b_next!119235) (not b!4149384) (not d!1227676) (not b!4149618) (not b!4149649) (not b!4149646) (not d!1227664) (not b!4149545) (not b_next!119219) (not b!4149419) (not b!4149612) (not b!4149665) (not d!1227668) (not d!1227620) (not d!1227632) (not b!4149399) (not b!4149553) (not d!1227670) (not b_next!119221) (not b!4149575) (not d!1227624) (not b_lambda!122037) b_and!322713 (not b!4149555) (not b!4149379) (not b!4149625) (not b!4149385) (not d!1227666) (not b!4149550) (not b!4149383) (not d!1227640) (not d!1227614) (not b!4149644) b_and!322701 b_and!322691 (not b!4149410) (not d!1227616) b_and!322693 (not b_lambda!122033) (not d!1227588) (not b!4149558) (not b!4149562) (not b!4149544) (not d!1227586) (not d!1227618) (not b!4149541) (not b!4149547) (not d!1227638) (not b!4149315) (not bm!290702) (not b!4149381) (not b!4149608) (not d!1227610) (not d!1227554) (not b!4149619) (not b!4149542) (not b!4149626) (not d!1227636) (not b!4149650) (not b!4149645) (not b!4149623) b_and!322699 (not b!4149413) (not bm!290700) (not b!4149378) (not b!4149574) (not b!4149548) (not b!4149627) (not bm!290705))
(check-sat (not b_next!119229) b_and!322715 (not b_next!119225) (not b_next!119223) (not b_next!119235) (not b_next!119219) b_and!322695 (not b_next!119221) b_and!322713 b_and!322697 b_and!322699 (not b_next!119227) (not b_next!119237) b_and!322701 b_and!322691 b_and!322693)
