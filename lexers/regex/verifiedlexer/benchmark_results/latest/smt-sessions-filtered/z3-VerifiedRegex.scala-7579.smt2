; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!400150 () Bool)

(assert start!400150)

(declare-fun b!4191965 () Bool)

(declare-fun b_free!122055 () Bool)

(declare-fun b_next!122759 () Bool)

(assert (=> b!4191965 (= b_free!122055 (not b_next!122759))))

(declare-fun tp!1280789 () Bool)

(declare-fun b_and!328481 () Bool)

(assert (=> b!4191965 (= tp!1280789 b_and!328481)))

(declare-fun b_free!122057 () Bool)

(declare-fun b_next!122761 () Bool)

(assert (=> b!4191965 (= b_free!122057 (not b_next!122761))))

(declare-fun tp!1280797 () Bool)

(declare-fun b_and!328483 () Bool)

(assert (=> b!4191965 (= tp!1280797 b_and!328483)))

(declare-fun b!4191962 () Bool)

(declare-fun b_free!122059 () Bool)

(declare-fun b_next!122763 () Bool)

(assert (=> b!4191962 (= b_free!122059 (not b_next!122763))))

(declare-fun tp!1280794 () Bool)

(declare-fun b_and!328485 () Bool)

(assert (=> b!4191962 (= tp!1280794 b_and!328485)))

(declare-fun b_free!122061 () Bool)

(declare-fun b_next!122765 () Bool)

(assert (=> b!4191962 (= b_free!122061 (not b_next!122765))))

(declare-fun tp!1280795 () Bool)

(declare-fun b_and!328487 () Bool)

(assert (=> b!4191962 (= tp!1280795 b_and!328487)))

(declare-fun b!4191943 () Bool)

(declare-fun b_free!122063 () Bool)

(declare-fun b_next!122767 () Bool)

(assert (=> b!4191943 (= b_free!122063 (not b_next!122767))))

(declare-fun tp!1280793 () Bool)

(declare-fun b_and!328489 () Bool)

(assert (=> b!4191943 (= tp!1280793 b_and!328489)))

(declare-fun b_free!122065 () Bool)

(declare-fun b_next!122769 () Bool)

(assert (=> b!4191943 (= b_free!122065 (not b_next!122769))))

(declare-fun tp!1280792 () Bool)

(declare-fun b_and!328491 () Bool)

(assert (=> b!4191943 (= tp!1280792 b_and!328491)))

(declare-fun b!4191941 () Bool)

(declare-fun e!2602193 () Bool)

(declare-fun e!2602204 () Bool)

(assert (=> b!4191941 (= e!2602193 (not e!2602204))))

(declare-fun res!1720479 () Bool)

(assert (=> b!4191941 (=> res!1720479 e!2602204)))

(declare-datatypes ((List!46159 0))(
  ( (Nil!46035) (Cons!46035 (h!51455 (_ BitVec 16)) (t!346042 List!46159)) )
))
(declare-datatypes ((TokenValue!7904 0))(
  ( (FloatLiteralValue!15808 (text!55773 List!46159)) (TokenValueExt!7903 (__x!28029 Int)) (Broken!39520 (value!239215 List!46159)) (Object!8027) (End!7904) (Def!7904) (Underscore!7904) (Match!7904) (Else!7904) (Error!7904) (Case!7904) (If!7904) (Extends!7904) (Abstract!7904) (Class!7904) (Val!7904) (DelimiterValue!15808 (del!7964 List!46159)) (KeywordValue!7910 (value!239216 List!46159)) (CommentValue!15808 (value!239217 List!46159)) (WhitespaceValue!15808 (value!239218 List!46159)) (IndentationValue!7904 (value!239219 List!46159)) (String!53385) (Int32!7904) (Broken!39521 (value!239220 List!46159)) (Boolean!7905) (Unit!65112) (OperatorValue!7907 (op!7964 List!46159)) (IdentifierValue!15808 (value!239221 List!46159)) (IdentifierValue!15809 (value!239222 List!46159)) (WhitespaceValue!15809 (value!239223 List!46159)) (True!15808) (False!15808) (Broken!39522 (value!239224 List!46159)) (Broken!39523 (value!239225 List!46159)) (True!15809) (RightBrace!7904) (RightBracket!7904) (Colon!7904) (Null!7904) (Comma!7904) (LeftBracket!7904) (False!15809) (LeftBrace!7904) (ImaginaryLiteralValue!7904 (text!55774 List!46159)) (StringLiteralValue!23712 (value!239226 List!46159)) (EOFValue!7904 (value!239227 List!46159)) (IdentValue!7904 (value!239228 List!46159)) (DelimiterValue!15809 (value!239229 List!46159)) (DedentValue!7904 (value!239230 List!46159)) (NewLineValue!7904 (value!239231 List!46159)) (IntegerValue!23712 (value!239232 (_ BitVec 32)) (text!55775 List!46159)) (IntegerValue!23713 (value!239233 Int) (text!55776 List!46159)) (Times!7904) (Or!7904) (Equal!7904) (Minus!7904) (Broken!39524 (value!239234 List!46159)) (And!7904) (Div!7904) (LessEqual!7904) (Mod!7904) (Concat!20483) (Not!7904) (Plus!7904) (SpaceValue!7904 (value!239235 List!46159)) (IntegerValue!23714 (value!239236 Int) (text!55777 List!46159)) (StringLiteralValue!23713 (text!55778 List!46159)) (FloatLiteralValue!15809 (text!55779 List!46159)) (BytesLiteralValue!7904 (value!239237 List!46159)) (CommentValue!15809 (value!239238 List!46159)) (StringLiteralValue!23714 (value!239239 List!46159)) (ErrorTokenValue!7904 (msg!7965 List!46159)) )
))
(declare-datatypes ((C!25348 0))(
  ( (C!25349 (val!14836 Int)) )
))
(declare-datatypes ((Regex!12579 0))(
  ( (ElementMatch!12579 (c!715216 C!25348)) (Concat!20484 (regOne!25670 Regex!12579) (regTwo!25670 Regex!12579)) (EmptyExpr!12579) (Star!12579 (reg!12908 Regex!12579)) (EmptyLang!12579) (Union!12579 (regOne!25671 Regex!12579) (regTwo!25671 Regex!12579)) )
))
(declare-datatypes ((String!53386 0))(
  ( (String!53387 (value!239240 String)) )
))
(declare-datatypes ((List!46160 0))(
  ( (Nil!46036) (Cons!46036 (h!51456 C!25348) (t!346043 List!46160)) )
))
(declare-datatypes ((IArray!27775 0))(
  ( (IArray!27776 (innerList!13945 List!46160)) )
))
(declare-datatypes ((Conc!13885 0))(
  ( (Node!13885 (left!34296 Conc!13885) (right!34626 Conc!13885) (csize!28000 Int) (cheight!14096 Int)) (Leaf!21465 (xs!17191 IArray!27775) (csize!28001 Int)) (Empty!13885) )
))
(declare-datatypes ((BalanceConc!27364 0))(
  ( (BalanceConc!27365 (c!715217 Conc!13885)) )
))
(declare-datatypes ((TokenValueInjection!15236 0))(
  ( (TokenValueInjection!15237 (toValue!10370 Int) (toChars!10229 Int)) )
))
(declare-datatypes ((Rule!15148 0))(
  ( (Rule!15149 (regex!7674 Regex!12579) (tag!8538 String!53386) (isSeparator!7674 Bool) (transformation!7674 TokenValueInjection!15236)) )
))
(declare-datatypes ((Token!14062 0))(
  ( (Token!14063 (value!239241 TokenValue!7904) (rule!10760 Rule!15148) (size!33823 Int) (originalCharacters!8062 List!46160)) )
))
(declare-datatypes ((tuple2!43834 0))(
  ( (tuple2!43835 (_1!25051 Token!14062) (_2!25051 List!46160)) )
))
(declare-datatypes ((Option!9868 0))(
  ( (None!9867) (Some!9867 (v!40701 tuple2!43834)) )
))
(declare-fun lt!1493015 () Option!9868)

(declare-fun input!3342 () List!46160)

(declare-datatypes ((LexerInterface!7267 0))(
  ( (LexerInterfaceExt!7264 (__x!28030 Int)) (Lexer!7265) )
))
(declare-fun thiss!25986 () LexerInterface!7267)

(declare-fun r!4142 () Rule!15148)

(declare-fun maxPrefixOneRule!3276 (LexerInterface!7267 Rule!15148 List!46160) Option!9868)

(assert (=> b!4191941 (= res!1720479 (not (= (maxPrefixOneRule!3276 thiss!25986 r!4142 input!3342) lt!1493015)))))

(declare-fun lt!1493006 () Int)

(declare-fun p!2959 () List!46160)

(declare-fun lt!1493011 () TokenValue!7904)

(declare-fun getSuffix!2824 (List!46160 List!46160) List!46160)

(assert (=> b!4191941 (= lt!1493015 (Some!9867 (tuple2!43835 (Token!14063 lt!1493011 r!4142 lt!1493006 p!2959) (getSuffix!2824 input!3342 p!2959))))))

(declare-fun size!33824 (List!46160) Int)

(assert (=> b!4191941 (= lt!1493006 (size!33824 p!2959))))

(declare-fun lt!1493017 () BalanceConc!27364)

(declare-fun apply!10639 (TokenValueInjection!15236 BalanceConc!27364) TokenValue!7904)

(assert (=> b!4191941 (= lt!1493011 (apply!10639 (transformation!7674 r!4142) lt!1493017))))

(declare-fun isPrefix!4531 (List!46160 List!46160) Bool)

(assert (=> b!4191941 (isPrefix!4531 input!3342 input!3342)))

(declare-datatypes ((Unit!65113 0))(
  ( (Unit!65114) )
))
(declare-fun lt!1493016 () Unit!65113)

(declare-fun lemmaIsPrefixRefl!2960 (List!46160 List!46160) Unit!65113)

(assert (=> b!4191941 (= lt!1493016 (lemmaIsPrefixRefl!2960 input!3342 input!3342))))

(declare-fun lt!1493014 () Unit!65113)

(declare-fun lemmaSemiInverse!2440 (TokenValueInjection!15236 BalanceConc!27364) Unit!65113)

(assert (=> b!4191941 (= lt!1493014 (lemmaSemiInverse!2440 (transformation!7674 r!4142) lt!1493017))))

(declare-fun seqFromList!5699 (List!46160) BalanceConc!27364)

(assert (=> b!4191941 (= lt!1493017 (seqFromList!5699 p!2959))))

(declare-fun e!2602200 () Bool)

(declare-datatypes ((List!46161 0))(
  ( (Nil!46037) (Cons!46037 (h!51457 Rule!15148) (t!346044 List!46161)) )
))
(declare-fun rules!3843 () List!46161)

(declare-fun tp!1280786 () Bool)

(declare-fun e!2602207 () Bool)

(declare-fun b!4191942 () Bool)

(declare-fun inv!60585 (String!53386) Bool)

(declare-fun inv!60587 (TokenValueInjection!15236) Bool)

(assert (=> b!4191942 (= e!2602200 (and tp!1280786 (inv!60585 (tag!8538 (h!51457 rules!3843))) (inv!60587 (transformation!7674 (h!51457 rules!3843))) e!2602207))))

(declare-fun e!2602197 () Bool)

(assert (=> b!4191943 (= e!2602197 (and tp!1280793 tp!1280792))))

(declare-fun b!4191944 () Bool)

(declare-fun res!1720480 () Bool)

(assert (=> b!4191944 (=> (not res!1720480) (not e!2602193))))

(assert (=> b!4191944 (= res!1720480 (isPrefix!4531 p!2959 input!3342))))

(declare-fun b!4191945 () Bool)

(declare-fun e!2602203 () Bool)

(declare-fun tp_is_empty!22121 () Bool)

(declare-fun tp!1280787 () Bool)

(assert (=> b!4191945 (= e!2602203 (and tp_is_empty!22121 tp!1280787))))

(declare-fun b!4191946 () Bool)

(declare-fun e!2602205 () Bool)

(assert (=> b!4191946 (= e!2602205 true)))

(declare-fun rBis!167 () Rule!15148)

(declare-fun pBis!107 () List!46160)

(declare-fun matchR!6318 (Regex!12579 List!46160) Bool)

(assert (=> b!4191946 (not (matchR!6318 (regex!7674 rBis!167) pBis!107))))

(declare-fun lt!1493009 () List!46160)

(declare-fun lt!1493007 () tuple2!43834)

(declare-fun lt!1493010 () Unit!65113)

(declare-fun lemmaMaxPrefixOneRuleOutputsMaxPrefix!8 (LexerInterface!7267 Rule!15148 List!46160 Token!14062 List!46160 List!46160 List!46160) Unit!65113)

(assert (=> b!4191946 (= lt!1493010 (lemmaMaxPrefixOneRuleOutputsMaxPrefix!8 thiss!25986 rBis!167 lt!1493009 (_1!25051 lt!1493007) input!3342 (_2!25051 lt!1493007) pBis!107))))

(declare-fun b!4191947 () Bool)

(declare-fun res!1720481 () Bool)

(assert (=> b!4191947 (=> (not res!1720481) (not e!2602193))))

(declare-fun ruleValid!3392 (LexerInterface!7267 Rule!15148) Bool)

(assert (=> b!4191947 (= res!1720481 (ruleValid!3392 thiss!25986 r!4142))))

(declare-fun e!2602201 () Bool)

(declare-fun tp!1280791 () Bool)

(declare-fun b!4191948 () Bool)

(assert (=> b!4191948 (= e!2602201 (and tp!1280791 (inv!60585 (tag!8538 r!4142)) (inv!60587 (transformation!7674 r!4142)) e!2602197))))

(declare-fun b!4191949 () Bool)

(declare-fun res!1720484 () Bool)

(declare-fun e!2602198 () Bool)

(assert (=> b!4191949 (=> res!1720484 e!2602198)))

(assert (=> b!4191949 (= res!1720484 (not (ruleValid!3392 thiss!25986 rBis!167)))))

(declare-fun e!2602194 () Bool)

(declare-fun tp!1280798 () Bool)

(declare-fun e!2602191 () Bool)

(declare-fun b!4191950 () Bool)

(assert (=> b!4191950 (= e!2602194 (and tp!1280798 (inv!60585 (tag!8538 rBis!167)) (inv!60587 (transformation!7674 rBis!167)) e!2602191))))

(declare-fun b!4191951 () Bool)

(declare-fun res!1720487 () Bool)

(assert (=> b!4191951 (=> (not res!1720487) (not e!2602193))))

(declare-fun contains!9483 (List!46161 Rule!15148) Bool)

(assert (=> b!4191951 (= res!1720487 (contains!9483 rules!3843 r!4142))))

(declare-fun b!4191952 () Bool)

(declare-fun res!1720486 () Bool)

(assert (=> b!4191952 (=> (not res!1720486) (not e!2602193))))

(declare-fun validRegex!5696 (Regex!12579) Bool)

(assert (=> b!4191952 (= res!1720486 (validRegex!5696 (regex!7674 r!4142)))))

(declare-fun b!4191954 () Bool)

(declare-fun res!1720475 () Bool)

(assert (=> b!4191954 (=> (not res!1720475) (not e!2602193))))

(declare-fun rulesInvariant!6480 (LexerInterface!7267 List!46161) Bool)

(assert (=> b!4191954 (= res!1720475 (rulesInvariant!6480 thiss!25986 rules!3843))))

(declare-fun b!4191955 () Bool)

(declare-fun res!1720472 () Bool)

(assert (=> b!4191955 (=> (not res!1720472) (not e!2602193))))

(declare-fun isEmpty!27256 (List!46161) Bool)

(assert (=> b!4191955 (= res!1720472 (not (isEmpty!27256 rules!3843)))))

(declare-fun b!4191956 () Bool)

(declare-fun e!2602202 () Bool)

(assert (=> b!4191956 (= e!2602202 e!2602205)))

(declare-fun res!1720471 () Bool)

(assert (=> b!4191956 (=> res!1720471 e!2602205)))

(assert (=> b!4191956 (= res!1720471 (= lt!1493009 pBis!107))))

(declare-fun ++!11746 (List!46160 List!46160) List!46160)

(assert (=> b!4191956 (isPrefix!4531 lt!1493009 (++!11746 lt!1493009 (_2!25051 lt!1493007)))))

(declare-fun lt!1493013 () Unit!65113)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3028 (List!46160 List!46160) Unit!65113)

(assert (=> b!4191956 (= lt!1493013 (lemmaConcatTwoListThenFirstIsPrefix!3028 lt!1493009 (_2!25051 lt!1493007)))))

(declare-fun lt!1493018 () BalanceConc!27364)

(declare-fun list!16636 (BalanceConc!27364) List!46160)

(assert (=> b!4191956 (= lt!1493009 (list!16636 lt!1493018))))

(declare-fun charsOf!5109 (Token!14062) BalanceConc!27364)

(assert (=> b!4191956 (= lt!1493018 (charsOf!5109 (_1!25051 lt!1493007)))))

(declare-fun lt!1493005 () Option!9868)

(declare-fun get!14970 (Option!9868) tuple2!43834)

(assert (=> b!4191956 (= lt!1493007 (get!14970 lt!1493005))))

(declare-fun b!4191957 () Bool)

(declare-fun res!1720477 () Bool)

(assert (=> b!4191957 (=> res!1720477 e!2602198)))

(declare-fun maxPrefix!4315 (LexerInterface!7267 List!46161 List!46160) Option!9868)

(assert (=> b!4191957 (= res!1720477 (not (= (maxPrefix!4315 thiss!25986 rules!3843 input!3342) lt!1493015)))))

(declare-fun b!4191958 () Bool)

(declare-fun res!1720482 () Bool)

(assert (=> b!4191958 (=> (not res!1720482) (not e!2602193))))

(assert (=> b!4191958 (= res!1720482 (contains!9483 rules!3843 rBis!167))))

(declare-fun b!4191959 () Bool)

(declare-fun e!2602195 () Bool)

(declare-fun tp!1280790 () Bool)

(assert (=> b!4191959 (= e!2602195 (and e!2602200 tp!1280790))))

(declare-fun b!4191960 () Bool)

(declare-fun res!1720473 () Bool)

(assert (=> b!4191960 (=> res!1720473 e!2602205)))

(assert (=> b!4191960 (= res!1720473 (not (isPrefix!4531 lt!1493009 input!3342)))))

(declare-fun b!4191961 () Bool)

(declare-fun res!1720485 () Bool)

(assert (=> b!4191961 (=> (not res!1720485) (not e!2602193))))

(assert (=> b!4191961 (= res!1720485 (matchR!6318 (regex!7674 r!4142) p!2959))))

(assert (=> b!4191962 (= e!2602191 (and tp!1280794 tp!1280795))))

(declare-fun b!4191963 () Bool)

(declare-fun e!2602192 () Bool)

(declare-fun tp!1280796 () Bool)

(assert (=> b!4191963 (= e!2602192 (and tp_is_empty!22121 tp!1280796))))

(declare-fun b!4191964 () Bool)

(assert (=> b!4191964 (= e!2602198 e!2602202)))

(declare-fun res!1720474 () Bool)

(assert (=> b!4191964 (=> res!1720474 e!2602202)))

(declare-fun isEmpty!27257 (Option!9868) Bool)

(assert (=> b!4191964 (= res!1720474 (isEmpty!27257 lt!1493005))))

(assert (=> b!4191964 (= lt!1493005 (maxPrefixOneRule!3276 thiss!25986 rBis!167 input!3342))))

(declare-fun lt!1493008 () Unit!65113)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2398 (LexerInterface!7267 Rule!15148 List!46161) Unit!65113)

(assert (=> b!4191964 (= lt!1493008 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2398 thiss!25986 rBis!167 rules!3843))))

(declare-fun lt!1493012 () Int)

(assert (=> b!4191964 (<= lt!1493012 (size!33824 input!3342))))

(declare-fun lt!1493004 () Unit!65113)

(declare-fun lemmaIsPrefixThenSmallerEqSize!561 (List!46160 List!46160) Unit!65113)

(assert (=> b!4191964 (= lt!1493004 (lemmaIsPrefixThenSmallerEqSize!561 pBis!107 input!3342))))

(assert (=> b!4191965 (= e!2602207 (and tp!1280789 tp!1280797))))

(declare-fun b!4191966 () Bool)

(declare-fun res!1720478 () Bool)

(assert (=> b!4191966 (=> (not res!1720478) (not e!2602193))))

(assert (=> b!4191966 (= res!1720478 (isPrefix!4531 pBis!107 input!3342))))

(declare-fun res!1720476 () Bool)

(assert (=> start!400150 (=> (not res!1720476) (not e!2602193))))

(get-info :version)

(assert (=> start!400150 (= res!1720476 ((_ is Lexer!7265) thiss!25986))))

(assert (=> start!400150 e!2602193))

(assert (=> start!400150 true))

(assert (=> start!400150 e!2602194))

(assert (=> start!400150 e!2602201))

(assert (=> start!400150 e!2602195))

(assert (=> start!400150 e!2602203))

(declare-fun e!2602196 () Bool)

(assert (=> start!400150 e!2602196))

(assert (=> start!400150 e!2602192))

(declare-fun b!4191953 () Bool)

(declare-fun res!1720488 () Bool)

(assert (=> b!4191953 (=> res!1720488 e!2602205)))

(declare-fun size!33825 (BalanceConc!27364) Int)

(assert (=> b!4191953 (= res!1720488 (>= (size!33825 lt!1493018) lt!1493012))))

(declare-fun b!4191967 () Bool)

(assert (=> b!4191967 (= e!2602204 e!2602198)))

(declare-fun res!1720483 () Bool)

(assert (=> b!4191967 (=> res!1720483 e!2602198)))

(assert (=> b!4191967 (= res!1720483 (<= lt!1493012 lt!1493006))))

(assert (=> b!4191967 (= lt!1493012 (size!33824 pBis!107))))

(declare-fun b!4191968 () Bool)

(declare-fun tp!1280788 () Bool)

(assert (=> b!4191968 (= e!2602196 (and tp_is_empty!22121 tp!1280788))))

(assert (= (and start!400150 res!1720476) b!4191944))

(assert (= (and b!4191944 res!1720480) b!4191966))

(assert (= (and b!4191966 res!1720478) b!4191955))

(assert (= (and b!4191955 res!1720472) b!4191954))

(assert (= (and b!4191954 res!1720475) b!4191951))

(assert (= (and b!4191951 res!1720487) b!4191958))

(assert (= (and b!4191958 res!1720482) b!4191952))

(assert (= (and b!4191952 res!1720486) b!4191961))

(assert (= (and b!4191961 res!1720485) b!4191947))

(assert (= (and b!4191947 res!1720481) b!4191941))

(assert (= (and b!4191941 (not res!1720479)) b!4191967))

(assert (= (and b!4191967 (not res!1720483)) b!4191949))

(assert (= (and b!4191949 (not res!1720484)) b!4191957))

(assert (= (and b!4191957 (not res!1720477)) b!4191964))

(assert (= (and b!4191964 (not res!1720474)) b!4191956))

(assert (= (and b!4191956 (not res!1720471)) b!4191953))

(assert (= (and b!4191953 (not res!1720488)) b!4191960))

(assert (= (and b!4191960 (not res!1720473)) b!4191946))

(assert (= b!4191950 b!4191962))

(assert (= start!400150 b!4191950))

(assert (= b!4191948 b!4191943))

(assert (= start!400150 b!4191948))

(assert (= b!4191942 b!4191965))

(assert (= b!4191959 b!4191942))

(assert (= (and start!400150 ((_ is Cons!46037) rules!3843)) b!4191959))

(assert (= (and start!400150 ((_ is Cons!46036) input!3342)) b!4191945))

(assert (= (and start!400150 ((_ is Cons!46036) pBis!107)) b!4191968))

(assert (= (and start!400150 ((_ is Cons!46036) p!2959)) b!4191963))

(declare-fun m!4780621 () Bool)

(assert (=> b!4191950 m!4780621))

(declare-fun m!4780623 () Bool)

(assert (=> b!4191950 m!4780623))

(declare-fun m!4780625 () Bool)

(assert (=> b!4191956 m!4780625))

(declare-fun m!4780627 () Bool)

(assert (=> b!4191956 m!4780627))

(declare-fun m!4780629 () Bool)

(assert (=> b!4191956 m!4780629))

(declare-fun m!4780631 () Bool)

(assert (=> b!4191956 m!4780631))

(assert (=> b!4191956 m!4780629))

(declare-fun m!4780633 () Bool)

(assert (=> b!4191956 m!4780633))

(declare-fun m!4780635 () Bool)

(assert (=> b!4191956 m!4780635))

(declare-fun m!4780637 () Bool)

(assert (=> b!4191944 m!4780637))

(declare-fun m!4780639 () Bool)

(assert (=> b!4191948 m!4780639))

(declare-fun m!4780641 () Bool)

(assert (=> b!4191948 m!4780641))

(declare-fun m!4780643 () Bool)

(assert (=> b!4191946 m!4780643))

(declare-fun m!4780645 () Bool)

(assert (=> b!4191946 m!4780645))

(declare-fun m!4780647 () Bool)

(assert (=> b!4191961 m!4780647))

(declare-fun m!4780649 () Bool)

(assert (=> b!4191955 m!4780649))

(declare-fun m!4780651 () Bool)

(assert (=> b!4191952 m!4780651))

(declare-fun m!4780653 () Bool)

(assert (=> b!4191949 m!4780653))

(declare-fun m!4780655 () Bool)

(assert (=> b!4191947 m!4780655))

(declare-fun m!4780657 () Bool)

(assert (=> b!4191942 m!4780657))

(declare-fun m!4780659 () Bool)

(assert (=> b!4191942 m!4780659))

(declare-fun m!4780661 () Bool)

(assert (=> b!4191964 m!4780661))

(declare-fun m!4780663 () Bool)

(assert (=> b!4191964 m!4780663))

(declare-fun m!4780665 () Bool)

(assert (=> b!4191964 m!4780665))

(declare-fun m!4780667 () Bool)

(assert (=> b!4191964 m!4780667))

(declare-fun m!4780669 () Bool)

(assert (=> b!4191964 m!4780669))

(declare-fun m!4780671 () Bool)

(assert (=> b!4191941 m!4780671))

(declare-fun m!4780673 () Bool)

(assert (=> b!4191941 m!4780673))

(declare-fun m!4780675 () Bool)

(assert (=> b!4191941 m!4780675))

(declare-fun m!4780677 () Bool)

(assert (=> b!4191941 m!4780677))

(declare-fun m!4780679 () Bool)

(assert (=> b!4191941 m!4780679))

(declare-fun m!4780681 () Bool)

(assert (=> b!4191941 m!4780681))

(declare-fun m!4780683 () Bool)

(assert (=> b!4191941 m!4780683))

(declare-fun m!4780685 () Bool)

(assert (=> b!4191941 m!4780685))

(declare-fun m!4780687 () Bool)

(assert (=> b!4191967 m!4780687))

(declare-fun m!4780689 () Bool)

(assert (=> b!4191954 m!4780689))

(declare-fun m!4780691 () Bool)

(assert (=> b!4191957 m!4780691))

(declare-fun m!4780693 () Bool)

(assert (=> b!4191958 m!4780693))

(declare-fun m!4780695 () Bool)

(assert (=> b!4191960 m!4780695))

(declare-fun m!4780697 () Bool)

(assert (=> b!4191966 m!4780697))

(declare-fun m!4780699 () Bool)

(assert (=> b!4191953 m!4780699))

(declare-fun m!4780701 () Bool)

(assert (=> b!4191951 m!4780701))

(check-sat (not b!4191950) (not b_next!122765) (not b_next!122761) (not b!4191952) (not b!4191960) b_and!328485 (not b_next!122769) (not b!4191947) (not b!4191961) b_and!328487 (not b!4191966) b_and!328483 (not b!4191957) (not b!4191963) (not b!4191964) (not b!4191944) (not b!4191954) (not b_next!122763) (not b!4191948) (not b!4191953) (not b!4191942) b_and!328489 (not b_next!122759) (not b!4191967) tp_is_empty!22121 (not b!4191956) (not b!4191959) (not b!4191958) (not b!4191968) (not b!4191951) (not b!4191955) (not b!4191941) (not b_next!122767) (not b!4191946) b_and!328481 b_and!328491 (not b!4191945) (not b!4191949))
(check-sat (not b_next!122763) b_and!328489 (not b_next!122765) (not b_next!122761) (not b_next!122759) b_and!328485 (not b_next!122769) b_and!328487 (not b_next!122767) b_and!328483 b_and!328481 b_and!328491)
