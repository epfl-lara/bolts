; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!394910 () Bool)

(assert start!394910)

(declare-fun b!4149924 () Bool)

(declare-fun b_free!118571 () Bool)

(declare-fun b_next!119275 () Bool)

(assert (=> b!4149924 (= b_free!118571 (not b_next!119275))))

(declare-fun tp!1264969 () Bool)

(declare-fun b_and!322753 () Bool)

(assert (=> b!4149924 (= tp!1264969 b_and!322753)))

(declare-fun b_free!118573 () Bool)

(declare-fun b_next!119277 () Bool)

(assert (=> b!4149924 (= b_free!118573 (not b_next!119277))))

(declare-fun tp!1264978 () Bool)

(declare-fun b_and!322755 () Bool)

(assert (=> b!4149924 (= tp!1264978 b_and!322755)))

(declare-fun b!4149933 () Bool)

(declare-fun b_free!118575 () Bool)

(declare-fun b_next!119279 () Bool)

(assert (=> b!4149933 (= b_free!118575 (not b_next!119279))))

(declare-fun tp!1264973 () Bool)

(declare-fun b_and!322757 () Bool)

(assert (=> b!4149933 (= tp!1264973 b_and!322757)))

(declare-fun b_free!118577 () Bool)

(declare-fun b_next!119281 () Bool)

(assert (=> b!4149933 (= b_free!118577 (not b_next!119281))))

(declare-fun tp!1264971 () Bool)

(declare-fun b_and!322759 () Bool)

(assert (=> b!4149933 (= tp!1264971 b_and!322759)))

(declare-fun b!4149923 () Bool)

(declare-fun b_free!118579 () Bool)

(declare-fun b_next!119283 () Bool)

(assert (=> b!4149923 (= b_free!118579 (not b_next!119283))))

(declare-fun tp!1264968 () Bool)

(declare-fun b_and!322761 () Bool)

(assert (=> b!4149923 (= tp!1264968 b_and!322761)))

(declare-fun b_free!118581 () Bool)

(declare-fun b_next!119285 () Bool)

(assert (=> b!4149923 (= b_free!118581 (not b_next!119285))))

(declare-fun tp!1264975 () Bool)

(declare-fun b_and!322763 () Bool)

(assert (=> b!4149923 (= tp!1264975 b_and!322763)))

(declare-fun b!4149920 () Bool)

(declare-fun res!1699180 () Bool)

(declare-fun e!2574856 () Bool)

(assert (=> b!4149920 (=> res!1699180 e!2574856)))

(declare-datatypes ((List!45195 0))(
  ( (Nil!45071) (Cons!45071 (h!50491 (_ BitVec 16)) (t!343066 List!45195)) )
))
(declare-datatypes ((TokenValue!7652 0))(
  ( (FloatLiteralValue!15304 (text!54009 List!45195)) (TokenValueExt!7651 (__x!27521 Int)) (Broken!38260 (value!232055 List!45195)) (Object!7775) (End!7652) (Def!7652) (Underscore!7652) (Match!7652) (Else!7652) (Error!7652) (Case!7652) (If!7652) (Extends!7652) (Abstract!7652) (Class!7652) (Val!7652) (DelimiterValue!15304 (del!7712 List!45195)) (KeywordValue!7658 (value!232056 List!45195)) (CommentValue!15304 (value!232057 List!45195)) (WhitespaceValue!15304 (value!232058 List!45195)) (IndentationValue!7652 (value!232059 List!45195)) (String!52009) (Int32!7652) (Broken!38261 (value!232060 List!45195)) (Boolean!7653) (Unit!64348) (OperatorValue!7655 (op!7712 List!45195)) (IdentifierValue!15304 (value!232061 List!45195)) (IdentifierValue!15305 (value!232062 List!45195)) (WhitespaceValue!15305 (value!232063 List!45195)) (True!15304) (False!15304) (Broken!38262 (value!232064 List!45195)) (Broken!38263 (value!232065 List!45195)) (True!15305) (RightBrace!7652) (RightBracket!7652) (Colon!7652) (Null!7652) (Comma!7652) (LeftBracket!7652) (False!15305) (LeftBrace!7652) (ImaginaryLiteralValue!7652 (text!54010 List!45195)) (StringLiteralValue!22956 (value!232066 List!45195)) (EOFValue!7652 (value!232067 List!45195)) (IdentValue!7652 (value!232068 List!45195)) (DelimiterValue!15305 (value!232069 List!45195)) (DedentValue!7652 (value!232070 List!45195)) (NewLineValue!7652 (value!232071 List!45195)) (IntegerValue!22956 (value!232072 (_ BitVec 32)) (text!54011 List!45195)) (IntegerValue!22957 (value!232073 Int) (text!54012 List!45195)) (Times!7652) (Or!7652) (Equal!7652) (Minus!7652) (Broken!38264 (value!232074 List!45195)) (And!7652) (Div!7652) (LessEqual!7652) (Mod!7652) (Concat!19979) (Not!7652) (Plus!7652) (SpaceValue!7652 (value!232075 List!45195)) (IntegerValue!22958 (value!232076 Int) (text!54013 List!45195)) (StringLiteralValue!22957 (text!54014 List!45195)) (FloatLiteralValue!15305 (text!54015 List!45195)) (BytesLiteralValue!7652 (value!232077 List!45195)) (CommentValue!15305 (value!232078 List!45195)) (StringLiteralValue!22958 (value!232079 List!45195)) (ErrorTokenValue!7652 (msg!7713 List!45195)) )
))
(declare-datatypes ((C!24840 0))(
  ( (C!24841 (val!14530 Int)) )
))
(declare-datatypes ((List!45196 0))(
  ( (Nil!45072) (Cons!45072 (h!50492 C!24840) (t!343067 List!45196)) )
))
(declare-datatypes ((IArray!27271 0))(
  ( (IArray!27272 (innerList!13693 List!45196)) )
))
(declare-datatypes ((Conc!13633 0))(
  ( (Node!13633 (left!33746 Conc!13633) (right!34076 Conc!13633) (csize!27496 Int) (cheight!13844 Int)) (Leaf!21059 (xs!16939 IArray!27271) (csize!27497 Int)) (Empty!13633) )
))
(declare-datatypes ((BalanceConc!26860 0))(
  ( (BalanceConc!26861 (c!710802 Conc!13633)) )
))
(declare-datatypes ((String!52010 0))(
  ( (String!52011 (value!232080 String)) )
))
(declare-datatypes ((Regex!12327 0))(
  ( (ElementMatch!12327 (c!710803 C!24840)) (Concat!19980 (regOne!25166 Regex!12327) (regTwo!25166 Regex!12327)) (EmptyExpr!12327) (Star!12327 (reg!12656 Regex!12327)) (EmptyLang!12327) (Union!12327 (regOne!25167 Regex!12327) (regTwo!25167 Regex!12327)) )
))
(declare-datatypes ((TokenValueInjection!14732 0))(
  ( (TokenValueInjection!14733 (toValue!10086 Int) (toChars!9945 Int)) )
))
(declare-datatypes ((Rule!14644 0))(
  ( (Rule!14645 (regex!7422 Regex!12327) (tag!8282 String!52010) (isSeparator!7422 Bool) (transformation!7422 TokenValueInjection!14732)) )
))
(declare-datatypes ((List!45197 0))(
  ( (Nil!45073) (Cons!45073 (h!50493 Rule!14644) (t!343068 List!45197)) )
))
(declare-fun rules!3756 () List!45197)

(declare-fun r!4008 () Rule!14644)

(declare-fun contains!9108 (List!45197 Rule!14644) Bool)

(assert (=> b!4149920 (= res!1699180 (not (contains!9108 (t!343068 rules!3756) r!4008)))))

(declare-fun res!1699175 () Bool)

(declare-fun e!2574842 () Bool)

(assert (=> start!394910 (=> (not res!1699175) (not e!2574842))))

(declare-datatypes ((LexerInterface!7011 0))(
  ( (LexerInterfaceExt!7008 (__x!27522 Int)) (Lexer!7009) )
))
(declare-fun thiss!25645 () LexerInterface!7011)

(get-info :version)

(assert (=> start!394910 (= res!1699175 ((_ is Lexer!7009) thiss!25645))))

(assert (=> start!394910 e!2574842))

(declare-fun e!2574851 () Bool)

(assert (=> start!394910 e!2574851))

(declare-fun e!2574852 () Bool)

(assert (=> start!394910 e!2574852))

(assert (=> start!394910 true))

(declare-fun e!2574844 () Bool)

(assert (=> start!394910 e!2574844))

(declare-fun e!2574843 () Bool)

(assert (=> start!394910 e!2574843))

(declare-fun e!2574846 () Bool)

(assert (=> start!394910 e!2574846))

(declare-fun b!4149921 () Bool)

(declare-fun res!1699171 () Bool)

(assert (=> b!4149921 (=> (not res!1699171) (not e!2574842))))

(declare-fun p!2912 () List!45196)

(declare-fun isEmpty!26908 (List!45196) Bool)

(assert (=> b!4149921 (= res!1699171 (not (isEmpty!26908 p!2912)))))

(declare-fun rBis!149 () Rule!14644)

(declare-fun b!4149922 () Bool)

(declare-fun tp!1264967 () Bool)

(declare-fun e!2574848 () Bool)

(declare-fun inv!59680 (String!52010) Bool)

(declare-fun inv!59682 (TokenValueInjection!14732) Bool)

(assert (=> b!4149922 (= e!2574846 (and tp!1264967 (inv!59680 (tag!8282 rBis!149)) (inv!59682 (transformation!7422 rBis!149)) e!2574848))))

(declare-fun e!2574855 () Bool)

(assert (=> b!4149923 (= e!2574855 (and tp!1264968 tp!1264975))))

(assert (=> b!4149924 (= e!2574848 (and tp!1264969 tp!1264978))))

(declare-fun b!4149925 () Bool)

(declare-fun res!1699177 () Bool)

(assert (=> b!4149925 (=> (not res!1699177) (not e!2574842))))

(declare-fun rulesInvariant!6308 (LexerInterface!7011 List!45197) Bool)

(assert (=> b!4149925 (= res!1699177 (rulesInvariant!6308 thiss!25645 rules!3756))))

(declare-fun b!4149926 () Bool)

(declare-fun e!2574850 () Bool)

(assert (=> b!4149926 (= e!2574842 e!2574850)))

(declare-fun res!1699179 () Bool)

(assert (=> b!4149926 (=> (not res!1699179) (not e!2574850))))

(declare-fun input!3238 () List!45196)

(declare-fun lt!1480085 () BalanceConc!26860)

(declare-datatypes ((Token!13774 0))(
  ( (Token!13775 (value!232081 TokenValue!7652) (rule!10556 Rule!14644) (size!33413 Int) (originalCharacters!7918 List!45196)) )
))
(declare-datatypes ((tuple2!43434 0))(
  ( (tuple2!43435 (_1!24851 Token!13774) (_2!24851 List!45196)) )
))
(declare-datatypes ((Option!9728 0))(
  ( (None!9727) (Some!9727 (v!40389 tuple2!43434)) )
))
(declare-fun maxPrefix!4201 (LexerInterface!7011 List!45197 List!45196) Option!9728)

(declare-fun apply!10495 (TokenValueInjection!14732 BalanceConc!26860) TokenValue!7652)

(declare-fun size!33414 (List!45196) Int)

(declare-fun getSuffix!2684 (List!45196 List!45196) List!45196)

(assert (=> b!4149926 (= res!1699179 (= (maxPrefix!4201 thiss!25645 rules!3756 input!3238) (Some!9727 (tuple2!43435 (Token!13775 (apply!10495 (transformation!7422 r!4008) lt!1480085) r!4008 (size!33414 p!2912) p!2912) (getSuffix!2684 input!3238 p!2912)))))))

(declare-datatypes ((Unit!64349 0))(
  ( (Unit!64350) )
))
(declare-fun lt!1480088 () Unit!64349)

(declare-fun lemmaSemiInverse!2280 (TokenValueInjection!14732 BalanceConc!26860) Unit!64349)

(assert (=> b!4149926 (= lt!1480088 (lemmaSemiInverse!2280 (transformation!7422 r!4008) lt!1480085))))

(declare-fun seqFromList!5539 (List!45196) BalanceConc!26860)

(assert (=> b!4149926 (= lt!1480085 (seqFromList!5539 p!2912))))

(declare-fun b!4149927 () Bool)

(declare-fun res!1699181 () Bool)

(assert (=> b!4149927 (=> (not res!1699181) (not e!2574850))))

(declare-fun matchR!6156 (Regex!12327 List!45196) Bool)

(assert (=> b!4149927 (= res!1699181 (matchR!6156 (regex!7422 r!4008) p!2912))))

(declare-fun b!4149928 () Bool)

(declare-fun res!1699172 () Bool)

(assert (=> b!4149928 (=> (not res!1699172) (not e!2574850))))

(declare-fun getIndex!768 (List!45197 Rule!14644) Int)

(assert (=> b!4149928 (= res!1699172 (< (getIndex!768 rules!3756 rBis!149) (getIndex!768 rules!3756 r!4008)))))

(declare-fun b!4149929 () Bool)

(declare-fun res!1699170 () Bool)

(assert (=> b!4149929 (=> (not res!1699170) (not e!2574842))))

(declare-fun isPrefix!4357 (List!45196 List!45196) Bool)

(assert (=> b!4149929 (= res!1699170 (isPrefix!4357 p!2912 input!3238))))

(declare-fun b!4149930 () Bool)

(declare-fun res!1699169 () Bool)

(assert (=> b!4149930 (=> (not res!1699169) (not e!2574850))))

(declare-fun ruleValid!3228 (LexerInterface!7011 Rule!14644) Bool)

(assert (=> b!4149930 (= res!1699169 (ruleValid!3228 thiss!25645 r!4008))))

(declare-fun tp!1264970 () Bool)

(declare-fun e!2574853 () Bool)

(declare-fun b!4149931 () Bool)

(assert (=> b!4149931 (= e!2574853 (and tp!1264970 (inv!59680 (tag!8282 (h!50493 rules!3756))) (inv!59682 (transformation!7422 (h!50493 rules!3756))) e!2574855))))

(declare-fun b!4149932 () Bool)

(declare-fun tp_is_empty!21577 () Bool)

(declare-fun tp!1264972 () Bool)

(assert (=> b!4149932 (= e!2574852 (and tp_is_empty!21577 tp!1264972))))

(declare-fun e!2574854 () Bool)

(assert (=> b!4149933 (= e!2574854 (and tp!1264973 tp!1264971))))

(declare-fun b!4149934 () Bool)

(declare-fun res!1699182 () Bool)

(assert (=> b!4149934 (=> (not res!1699182) (not e!2574842))))

(assert (=> b!4149934 (= res!1699182 (contains!9108 rules!3756 r!4008))))

(declare-fun b!4149935 () Bool)

(declare-fun tp!1264977 () Bool)

(assert (=> b!4149935 (= e!2574844 (and tp!1264977 (inv!59680 (tag!8282 r!4008)) (inv!59682 (transformation!7422 r!4008)) e!2574854))))

(declare-fun b!4149936 () Bool)

(declare-fun res!1699176 () Bool)

(assert (=> b!4149936 (=> (not res!1699176) (not e!2574842))))

(assert (=> b!4149936 (= res!1699176 (contains!9108 rules!3756 rBis!149))))

(declare-fun b!4149937 () Bool)

(declare-fun tp!1264974 () Bool)

(assert (=> b!4149937 (= e!2574843 (and tp_is_empty!21577 tp!1264974))))

(declare-fun b!4149938 () Bool)

(assert (=> b!4149938 (= e!2574850 (not e!2574856))))

(declare-fun res!1699174 () Bool)

(assert (=> b!4149938 (=> res!1699174 e!2574856)))

(assert (=> b!4149938 (= res!1699174 (or (and ((_ is Cons!45073) rules!3756) (= (h!50493 rules!3756) rBis!149)) (not ((_ is Cons!45073) rules!3756)) (= (h!50493 rules!3756) rBis!149)))))

(declare-fun lt!1480087 () Unit!64349)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2268 (LexerInterface!7011 Rule!14644 List!45197) Unit!64349)

(assert (=> b!4149938 (= lt!1480087 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2268 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4149938 (ruleValid!3228 thiss!25645 rBis!149)))

(declare-fun lt!1480086 () Unit!64349)

(assert (=> b!4149938 (= lt!1480086 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2268 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4149939 () Bool)

(declare-fun tp!1264976 () Bool)

(assert (=> b!4149939 (= e!2574851 (and e!2574853 tp!1264976))))

(declare-fun b!4149940 () Bool)

(declare-fun res!1699178 () Bool)

(assert (=> b!4149940 (=> (not res!1699178) (not e!2574842))))

(declare-fun isEmpty!26909 (List!45197) Bool)

(assert (=> b!4149940 (= res!1699178 (not (isEmpty!26909 rules!3756)))))

(declare-fun b!4149941 () Bool)

(declare-fun res!1699173 () Bool)

(assert (=> b!4149941 (=> res!1699173 e!2574856)))

(assert (=> b!4149941 (= res!1699173 (not (contains!9108 (t!343068 rules!3756) rBis!149)))))

(declare-fun b!4149942 () Bool)

(assert (=> b!4149942 (= e!2574856 (not (isEmpty!26909 (t!343068 rules!3756))))))

(assert (=> b!4149942 (not (= (tag!8282 (h!50493 rules!3756)) (tag!8282 r!4008)))))

(declare-fun lt!1480092 () Unit!64349)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!70 (LexerInterface!7011 List!45197 Rule!14644 Rule!14644) Unit!64349)

(assert (=> b!4149942 (= lt!1480092 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!70 thiss!25645 rules!3756 (h!50493 rules!3756) r!4008))))

(assert (=> b!4149942 (rulesInvariant!6308 thiss!25645 (t!343068 rules!3756))))

(declare-fun lt!1480089 () Unit!64349)

(declare-fun lemmaInvariantOnRulesThenOnTail!834 (LexerInterface!7011 Rule!14644 List!45197) Unit!64349)

(assert (=> b!4149942 (= lt!1480089 (lemmaInvariantOnRulesThenOnTail!834 thiss!25645 (h!50493 rules!3756) (t!343068 rules!3756)))))

(declare-fun lt!1480090 () Option!9728)

(assert (=> b!4149942 (= lt!1480090 (maxPrefix!4201 thiss!25645 (t!343068 rules!3756) input!3238))))

(declare-fun lt!1480091 () Option!9728)

(declare-fun maxPrefixOneRule!3140 (LexerInterface!7011 Rule!14644 List!45196) Option!9728)

(assert (=> b!4149942 (= lt!1480091 (maxPrefixOneRule!3140 thiss!25645 (h!50493 rules!3756) input!3238))))

(assert (= (and start!394910 res!1699175) b!4149929))

(assert (= (and b!4149929 res!1699170) b!4149940))

(assert (= (and b!4149940 res!1699178) b!4149925))

(assert (= (and b!4149925 res!1699177) b!4149934))

(assert (= (and b!4149934 res!1699182) b!4149936))

(assert (= (and b!4149936 res!1699176) b!4149921))

(assert (= (and b!4149921 res!1699171) b!4149926))

(assert (= (and b!4149926 res!1699179) b!4149927))

(assert (= (and b!4149927 res!1699181) b!4149928))

(assert (= (and b!4149928 res!1699172) b!4149930))

(assert (= (and b!4149930 res!1699169) b!4149938))

(assert (= (and b!4149938 (not res!1699174)) b!4149920))

(assert (= (and b!4149920 (not res!1699180)) b!4149941))

(assert (= (and b!4149941 (not res!1699173)) b!4149942))

(assert (= b!4149931 b!4149923))

(assert (= b!4149939 b!4149931))

(assert (= (and start!394910 ((_ is Cons!45073) rules!3756)) b!4149939))

(assert (= (and start!394910 ((_ is Cons!45072) p!2912)) b!4149932))

(assert (= b!4149935 b!4149933))

(assert (= start!394910 b!4149935))

(assert (= (and start!394910 ((_ is Cons!45072) input!3238)) b!4149937))

(assert (= b!4149922 b!4149924))

(assert (= start!394910 b!4149922))

(declare-fun m!4745583 () Bool)

(assert (=> b!4149931 m!4745583))

(declare-fun m!4745585 () Bool)

(assert (=> b!4149931 m!4745585))

(declare-fun m!4745587 () Bool)

(assert (=> b!4149941 m!4745587))

(declare-fun m!4745589 () Bool)

(assert (=> b!4149925 m!4745589))

(declare-fun m!4745591 () Bool)

(assert (=> b!4149930 m!4745591))

(declare-fun m!4745593 () Bool)

(assert (=> b!4149929 m!4745593))

(declare-fun m!4745595 () Bool)

(assert (=> b!4149934 m!4745595))

(declare-fun m!4745597 () Bool)

(assert (=> b!4149927 m!4745597))

(declare-fun m!4745599 () Bool)

(assert (=> b!4149936 m!4745599))

(declare-fun m!4745601 () Bool)

(assert (=> b!4149920 m!4745601))

(declare-fun m!4745603 () Bool)

(assert (=> b!4149935 m!4745603))

(declare-fun m!4745605 () Bool)

(assert (=> b!4149935 m!4745605))

(declare-fun m!4745607 () Bool)

(assert (=> b!4149921 m!4745607))

(declare-fun m!4745609 () Bool)

(assert (=> b!4149938 m!4745609))

(declare-fun m!4745611 () Bool)

(assert (=> b!4149938 m!4745611))

(declare-fun m!4745613 () Bool)

(assert (=> b!4149938 m!4745613))

(declare-fun m!4745615 () Bool)

(assert (=> b!4149928 m!4745615))

(declare-fun m!4745617 () Bool)

(assert (=> b!4149928 m!4745617))

(declare-fun m!4745619 () Bool)

(assert (=> b!4149942 m!4745619))

(declare-fun m!4745621 () Bool)

(assert (=> b!4149942 m!4745621))

(declare-fun m!4745623 () Bool)

(assert (=> b!4149942 m!4745623))

(declare-fun m!4745625 () Bool)

(assert (=> b!4149942 m!4745625))

(declare-fun m!4745627 () Bool)

(assert (=> b!4149942 m!4745627))

(declare-fun m!4745629 () Bool)

(assert (=> b!4149942 m!4745629))

(declare-fun m!4745631 () Bool)

(assert (=> b!4149926 m!4745631))

(declare-fun m!4745633 () Bool)

(assert (=> b!4149926 m!4745633))

(declare-fun m!4745635 () Bool)

(assert (=> b!4149926 m!4745635))

(declare-fun m!4745637 () Bool)

(assert (=> b!4149926 m!4745637))

(declare-fun m!4745639 () Bool)

(assert (=> b!4149926 m!4745639))

(declare-fun m!4745641 () Bool)

(assert (=> b!4149926 m!4745641))

(declare-fun m!4745643 () Bool)

(assert (=> b!4149940 m!4745643))

(declare-fun m!4745645 () Bool)

(assert (=> b!4149922 m!4745645))

(declare-fun m!4745647 () Bool)

(assert (=> b!4149922 m!4745647))

(check-sat (not b_next!119283) (not b!4149920) b_and!322763 (not b!4149940) (not b!4149938) (not b_next!119281) b_and!322761 (not b_next!119285) (not b!4149925) (not b_next!119279) tp_is_empty!21577 (not b!4149927) b_and!322753 (not b_next!119275) (not b!4149928) (not b!4149929) (not b!4149937) (not b!4149932) (not b!4149922) (not b!4149935) b_and!322759 (not b!4149939) (not b!4149930) (not b!4149931) (not b_next!119277) (not b!4149921) (not b!4149936) (not b!4149942) (not b!4149941) b_and!322755 (not b!4149926) b_and!322757 (not b!4149934))
(check-sat (not b_next!119279) (not b_next!119283) b_and!322763 b_and!322753 (not b_next!119275) b_and!322759 (not b_next!119277) b_and!322755 (not b_next!119281) b_and!322761 b_and!322757 (not b_next!119285))
(get-model)

(declare-fun d!1227694 () Bool)

(assert (=> d!1227694 (= (inv!59680 (tag!8282 r!4008)) (= (mod (str.len (value!232080 (tag!8282 r!4008))) 2) 0))))

(assert (=> b!4149935 d!1227694))

(declare-fun d!1227696 () Bool)

(declare-fun res!1699195 () Bool)

(declare-fun e!2574864 () Bool)

(assert (=> d!1227696 (=> (not res!1699195) (not e!2574864))))

(declare-fun semiInverseModEq!3211 (Int Int) Bool)

(assert (=> d!1227696 (= res!1699195 (semiInverseModEq!3211 (toChars!9945 (transformation!7422 r!4008)) (toValue!10086 (transformation!7422 r!4008))))))

(assert (=> d!1227696 (= (inv!59682 (transformation!7422 r!4008)) e!2574864)))

(declare-fun b!4149953 () Bool)

(declare-fun equivClasses!3110 (Int Int) Bool)

(assert (=> b!4149953 (= e!2574864 (equivClasses!3110 (toChars!9945 (transformation!7422 r!4008)) (toValue!10086 (transformation!7422 r!4008))))))

(assert (= (and d!1227696 res!1699195) b!4149953))

(declare-fun m!4745649 () Bool)

(assert (=> d!1227696 m!4745649))

(declare-fun m!4745651 () Bool)

(assert (=> b!4149953 m!4745651))

(assert (=> b!4149935 d!1227696))

(declare-fun d!1227700 () Bool)

(declare-fun res!1699198 () Bool)

(declare-fun e!2574871 () Bool)

(assert (=> d!1227700 (=> (not res!1699198) (not e!2574871))))

(declare-fun rulesValid!2923 (LexerInterface!7011 List!45197) Bool)

(assert (=> d!1227700 (= res!1699198 (rulesValid!2923 thiss!25645 rules!3756))))

(assert (=> d!1227700 (= (rulesInvariant!6308 thiss!25645 rules!3756) e!2574871)))

(declare-fun b!4149964 () Bool)

(declare-datatypes ((List!45198 0))(
  ( (Nil!45074) (Cons!45074 (h!50494 String!52010) (t!343101 List!45198)) )
))
(declare-fun noDuplicateTag!3006 (LexerInterface!7011 List!45197 List!45198) Bool)

(assert (=> b!4149964 (= e!2574871 (noDuplicateTag!3006 thiss!25645 rules!3756 Nil!45074))))

(assert (= (and d!1227700 res!1699198) b!4149964))

(declare-fun m!4745657 () Bool)

(assert (=> d!1227700 m!4745657))

(declare-fun m!4745659 () Bool)

(assert (=> b!4149964 m!4745659))

(assert (=> b!4149925 d!1227700))

(declare-fun d!1227706 () Bool)

(declare-fun lt!1480102 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6973 (List!45197) (InoxSet Rule!14644))

(assert (=> d!1227706 (= lt!1480102 (select (content!6973 rules!3756) rBis!149))))

(declare-fun e!2574883 () Bool)

(assert (=> d!1227706 (= lt!1480102 e!2574883)))

(declare-fun res!1699210 () Bool)

(assert (=> d!1227706 (=> (not res!1699210) (not e!2574883))))

(assert (=> d!1227706 (= res!1699210 ((_ is Cons!45073) rules!3756))))

(assert (=> d!1227706 (= (contains!9108 rules!3756 rBis!149) lt!1480102)))

(declare-fun b!4149975 () Bool)

(declare-fun e!2574882 () Bool)

(assert (=> b!4149975 (= e!2574883 e!2574882)))

(declare-fun res!1699209 () Bool)

(assert (=> b!4149975 (=> res!1699209 e!2574882)))

(assert (=> b!4149975 (= res!1699209 (= (h!50493 rules!3756) rBis!149))))

(declare-fun b!4149976 () Bool)

(assert (=> b!4149976 (= e!2574882 (contains!9108 (t!343068 rules!3756) rBis!149))))

(assert (= (and d!1227706 res!1699210) b!4149975))

(assert (= (and b!4149975 (not res!1699209)) b!4149976))

(declare-fun m!4745665 () Bool)

(assert (=> d!1227706 m!4745665))

(declare-fun m!4745667 () Bool)

(assert (=> d!1227706 m!4745667))

(assert (=> b!4149976 m!4745587))

(assert (=> b!4149936 d!1227706))

(declare-fun d!1227710 () Bool)

(declare-fun dynLambda!19433 (Int BalanceConc!26860) TokenValue!7652)

(assert (=> d!1227710 (= (apply!10495 (transformation!7422 r!4008) lt!1480085) (dynLambda!19433 (toValue!10086 (transformation!7422 r!4008)) lt!1480085))))

(declare-fun b_lambda!122039 () Bool)

(assert (=> (not b_lambda!122039) (not d!1227710)))

(declare-fun tb!249091 () Bool)

(declare-fun t!343070 () Bool)

(assert (=> (and b!4149924 (= (toValue!10086 (transformation!7422 rBis!149)) (toValue!10086 (transformation!7422 r!4008))) t!343070) tb!249091))

(declare-fun result!303008 () Bool)

(declare-fun inv!21 (TokenValue!7652) Bool)

(assert (=> tb!249091 (= result!303008 (inv!21 (dynLambda!19433 (toValue!10086 (transformation!7422 r!4008)) lt!1480085)))))

(declare-fun m!4745669 () Bool)

(assert (=> tb!249091 m!4745669))

(assert (=> d!1227710 t!343070))

(declare-fun b_and!322765 () Bool)

(assert (= b_and!322753 (and (=> t!343070 result!303008) b_and!322765)))

(declare-fun t!343072 () Bool)

(declare-fun tb!249093 () Bool)

(assert (=> (and b!4149933 (= (toValue!10086 (transformation!7422 r!4008)) (toValue!10086 (transformation!7422 r!4008))) t!343072) tb!249093))

(declare-fun result!303012 () Bool)

(assert (= result!303012 result!303008))

(assert (=> d!1227710 t!343072))

(declare-fun b_and!322767 () Bool)

(assert (= b_and!322757 (and (=> t!343072 result!303012) b_and!322767)))

(declare-fun tb!249095 () Bool)

(declare-fun t!343074 () Bool)

(assert (=> (and b!4149923 (= (toValue!10086 (transformation!7422 (h!50493 rules!3756))) (toValue!10086 (transformation!7422 r!4008))) t!343074) tb!249095))

(declare-fun result!303014 () Bool)

(assert (= result!303014 result!303008))

(assert (=> d!1227710 t!343074))

(declare-fun b_and!322769 () Bool)

(assert (= b_and!322761 (and (=> t!343074 result!303014) b_and!322769)))

(declare-fun m!4745671 () Bool)

(assert (=> d!1227710 m!4745671))

(assert (=> b!4149926 d!1227710))

(declare-fun d!1227712 () Bool)

(declare-fun lt!1480108 () List!45196)

(declare-fun ++!11648 (List!45196 List!45196) List!45196)

(assert (=> d!1227712 (= (++!11648 p!2912 lt!1480108) input!3238)))

(declare-fun e!2574901 () List!45196)

(assert (=> d!1227712 (= lt!1480108 e!2574901)))

(declare-fun c!710814 () Bool)

(assert (=> d!1227712 (= c!710814 ((_ is Cons!45072) p!2912))))

(assert (=> d!1227712 (>= (size!33414 input!3238) (size!33414 p!2912))))

(assert (=> d!1227712 (= (getSuffix!2684 input!3238 p!2912) lt!1480108)))

(declare-fun b!4149998 () Bool)

(declare-fun tail!6601 (List!45196) List!45196)

(assert (=> b!4149998 (= e!2574901 (getSuffix!2684 (tail!6601 input!3238) (t!343067 p!2912)))))

(declare-fun b!4149999 () Bool)

(assert (=> b!4149999 (= e!2574901 input!3238)))

(assert (= (and d!1227712 c!710814) b!4149998))

(assert (= (and d!1227712 (not c!710814)) b!4149999))

(declare-fun m!4745689 () Bool)

(assert (=> d!1227712 m!4745689))

(declare-fun m!4745691 () Bool)

(assert (=> d!1227712 m!4745691))

(assert (=> d!1227712 m!4745631))

(declare-fun m!4745693 () Bool)

(assert (=> b!4149998 m!4745693))

(assert (=> b!4149998 m!4745693))

(declare-fun m!4745695 () Bool)

(assert (=> b!4149998 m!4745695))

(assert (=> b!4149926 d!1227712))

(declare-fun b!4150020 () Bool)

(declare-fun e!2574912 () Bool)

(declare-fun lt!1480126 () Option!9728)

(declare-fun get!14718 (Option!9728) tuple2!43434)

(assert (=> b!4150020 (= e!2574912 (contains!9108 rules!3756 (rule!10556 (_1!24851 (get!14718 lt!1480126)))))))

(declare-fun d!1227720 () Bool)

(declare-fun e!2574910 () Bool)

(assert (=> d!1227720 e!2574910))

(declare-fun res!1699243 () Bool)

(assert (=> d!1227720 (=> res!1699243 e!2574910)))

(declare-fun isEmpty!26911 (Option!9728) Bool)

(assert (=> d!1227720 (= res!1699243 (isEmpty!26911 lt!1480126))))

(declare-fun e!2574911 () Option!9728)

(assert (=> d!1227720 (= lt!1480126 e!2574911)))

(declare-fun c!710818 () Bool)

(assert (=> d!1227720 (= c!710818 (and ((_ is Cons!45073) rules!3756) ((_ is Nil!45073) (t!343068 rules!3756))))))

(declare-fun lt!1480123 () Unit!64349)

(declare-fun lt!1480122 () Unit!64349)

(assert (=> d!1227720 (= lt!1480123 lt!1480122)))

(assert (=> d!1227720 (isPrefix!4357 input!3238 input!3238)))

(declare-fun lemmaIsPrefixRefl!2810 (List!45196 List!45196) Unit!64349)

(assert (=> d!1227720 (= lt!1480122 (lemmaIsPrefixRefl!2810 input!3238 input!3238))))

(declare-fun rulesValidInductive!2762 (LexerInterface!7011 List!45197) Bool)

(assert (=> d!1227720 (rulesValidInductive!2762 thiss!25645 rules!3756)))

(assert (=> d!1227720 (= (maxPrefix!4201 thiss!25645 rules!3756 input!3238) lt!1480126)))

(declare-fun b!4150021 () Bool)

(declare-fun res!1699244 () Bool)

(assert (=> b!4150021 (=> (not res!1699244) (not e!2574912))))

(assert (=> b!4150021 (= res!1699244 (< (size!33414 (_2!24851 (get!14718 lt!1480126))) (size!33414 input!3238)))))

(declare-fun b!4150022 () Bool)

(declare-fun res!1699248 () Bool)

(assert (=> b!4150022 (=> (not res!1699248) (not e!2574912))))

(declare-fun list!16491 (BalanceConc!26860) List!45196)

(declare-fun charsOf!5011 (Token!13774) BalanceConc!26860)

(assert (=> b!4150022 (= res!1699248 (= (++!11648 (list!16491 (charsOf!5011 (_1!24851 (get!14718 lt!1480126)))) (_2!24851 (get!14718 lt!1480126))) input!3238))))

(declare-fun b!4150023 () Bool)

(declare-fun res!1699247 () Bool)

(assert (=> b!4150023 (=> (not res!1699247) (not e!2574912))))

(assert (=> b!4150023 (= res!1699247 (= (value!232081 (_1!24851 (get!14718 lt!1480126))) (apply!10495 (transformation!7422 (rule!10556 (_1!24851 (get!14718 lt!1480126)))) (seqFromList!5539 (originalCharacters!7918 (_1!24851 (get!14718 lt!1480126)))))))))

(declare-fun b!4150024 () Bool)

(assert (=> b!4150024 (= e!2574910 e!2574912)))

(declare-fun res!1699242 () Bool)

(assert (=> b!4150024 (=> (not res!1699242) (not e!2574912))))

(declare-fun isDefined!7302 (Option!9728) Bool)

(assert (=> b!4150024 (= res!1699242 (isDefined!7302 lt!1480126))))

(declare-fun call!290713 () Option!9728)

(declare-fun bm!290708 () Bool)

(assert (=> bm!290708 (= call!290713 (maxPrefixOneRule!3140 thiss!25645 (h!50493 rules!3756) input!3238))))

(declare-fun b!4150025 () Bool)

(declare-fun res!1699245 () Bool)

(assert (=> b!4150025 (=> (not res!1699245) (not e!2574912))))

(assert (=> b!4150025 (= res!1699245 (matchR!6156 (regex!7422 (rule!10556 (_1!24851 (get!14718 lt!1480126)))) (list!16491 (charsOf!5011 (_1!24851 (get!14718 lt!1480126))))))))

(declare-fun b!4150026 () Bool)

(assert (=> b!4150026 (= e!2574911 call!290713)))

(declare-fun b!4150027 () Bool)

(declare-fun lt!1480125 () Option!9728)

(declare-fun lt!1480124 () Option!9728)

(assert (=> b!4150027 (= e!2574911 (ite (and ((_ is None!9727) lt!1480125) ((_ is None!9727) lt!1480124)) None!9727 (ite ((_ is None!9727) lt!1480124) lt!1480125 (ite ((_ is None!9727) lt!1480125) lt!1480124 (ite (>= (size!33413 (_1!24851 (v!40389 lt!1480125))) (size!33413 (_1!24851 (v!40389 lt!1480124)))) lt!1480125 lt!1480124)))))))

(assert (=> b!4150027 (= lt!1480125 call!290713)))

(assert (=> b!4150027 (= lt!1480124 (maxPrefix!4201 thiss!25645 (t!343068 rules!3756) input!3238))))

(declare-fun b!4150028 () Bool)

(declare-fun res!1699246 () Bool)

(assert (=> b!4150028 (=> (not res!1699246) (not e!2574912))))

(assert (=> b!4150028 (= res!1699246 (= (list!16491 (charsOf!5011 (_1!24851 (get!14718 lt!1480126)))) (originalCharacters!7918 (_1!24851 (get!14718 lt!1480126)))))))

(assert (= (and d!1227720 c!710818) b!4150026))

(assert (= (and d!1227720 (not c!710818)) b!4150027))

(assert (= (or b!4150026 b!4150027) bm!290708))

(assert (= (and d!1227720 (not res!1699243)) b!4150024))

(assert (= (and b!4150024 res!1699242) b!4150028))

(assert (= (and b!4150028 res!1699246) b!4150021))

(assert (= (and b!4150021 res!1699244) b!4150022))

(assert (= (and b!4150022 res!1699248) b!4150023))

(assert (= (and b!4150023 res!1699247) b!4150025))

(assert (= (and b!4150025 res!1699245) b!4150020))

(declare-fun m!4745699 () Bool)

(assert (=> b!4150025 m!4745699))

(declare-fun m!4745701 () Bool)

(assert (=> b!4150025 m!4745701))

(assert (=> b!4150025 m!4745701))

(declare-fun m!4745703 () Bool)

(assert (=> b!4150025 m!4745703))

(assert (=> b!4150025 m!4745703))

(declare-fun m!4745705 () Bool)

(assert (=> b!4150025 m!4745705))

(assert (=> bm!290708 m!4745621))

(assert (=> b!4150021 m!4745699))

(declare-fun m!4745707 () Bool)

(assert (=> b!4150021 m!4745707))

(assert (=> b!4150021 m!4745691))

(assert (=> b!4150022 m!4745699))

(assert (=> b!4150022 m!4745701))

(assert (=> b!4150022 m!4745701))

(assert (=> b!4150022 m!4745703))

(assert (=> b!4150022 m!4745703))

(declare-fun m!4745709 () Bool)

(assert (=> b!4150022 m!4745709))

(assert (=> b!4150023 m!4745699))

(declare-fun m!4745711 () Bool)

(assert (=> b!4150023 m!4745711))

(assert (=> b!4150023 m!4745711))

(declare-fun m!4745713 () Bool)

(assert (=> b!4150023 m!4745713))

(assert (=> b!4150028 m!4745699))

(assert (=> b!4150028 m!4745701))

(assert (=> b!4150028 m!4745701))

(assert (=> b!4150028 m!4745703))

(assert (=> b!4150020 m!4745699))

(declare-fun m!4745715 () Bool)

(assert (=> b!4150020 m!4745715))

(declare-fun m!4745717 () Bool)

(assert (=> b!4150024 m!4745717))

(declare-fun m!4745719 () Bool)

(assert (=> d!1227720 m!4745719))

(declare-fun m!4745721 () Bool)

(assert (=> d!1227720 m!4745721))

(declare-fun m!4745723 () Bool)

(assert (=> d!1227720 m!4745723))

(declare-fun m!4745725 () Bool)

(assert (=> d!1227720 m!4745725))

(assert (=> b!4150027 m!4745625))

(assert (=> b!4149926 d!1227720))

(declare-fun b!4150138 () Bool)

(declare-fun e!2574969 () Bool)

(assert (=> b!4150138 (= e!2574969 true)))

(declare-fun d!1227726 () Bool)

(assert (=> d!1227726 e!2574969))

(assert (= d!1227726 b!4150138))

(declare-fun lambda!129021 () Int)

(declare-fun order!23909 () Int)

(declare-fun order!23911 () Int)

(declare-fun dynLambda!19434 (Int Int) Int)

(declare-fun dynLambda!19435 (Int Int) Int)

(assert (=> b!4150138 (< (dynLambda!19434 order!23909 (toValue!10086 (transformation!7422 r!4008))) (dynLambda!19435 order!23911 lambda!129021))))

(declare-fun order!23913 () Int)

(declare-fun dynLambda!19436 (Int Int) Int)

(assert (=> b!4150138 (< (dynLambda!19436 order!23913 (toChars!9945 (transformation!7422 r!4008))) (dynLambda!19435 order!23911 lambda!129021))))

(declare-fun dynLambda!19437 (Int TokenValue!7652) BalanceConc!26860)

(assert (=> d!1227726 (= (list!16491 (dynLambda!19437 (toChars!9945 (transformation!7422 r!4008)) (dynLambda!19433 (toValue!10086 (transformation!7422 r!4008)) lt!1480085))) (list!16491 lt!1480085))))

(declare-fun lt!1480158 () Unit!64349)

(declare-fun ForallOf!994 (Int BalanceConc!26860) Unit!64349)

(assert (=> d!1227726 (= lt!1480158 (ForallOf!994 lambda!129021 lt!1480085))))

(assert (=> d!1227726 (= (lemmaSemiInverse!2280 (transformation!7422 r!4008) lt!1480085) lt!1480158)))

(declare-fun b_lambda!122047 () Bool)

(assert (=> (not b_lambda!122047) (not d!1227726)))

(declare-fun tb!249109 () Bool)

(declare-fun t!343088 () Bool)

(assert (=> (and b!4149924 (= (toChars!9945 (transformation!7422 rBis!149)) (toChars!9945 (transformation!7422 r!4008))) t!343088) tb!249109))

(declare-fun tp!1264984 () Bool)

(declare-fun b!4150143 () Bool)

(declare-fun e!2574972 () Bool)

(declare-fun inv!59685 (Conc!13633) Bool)

(assert (=> b!4150143 (= e!2574972 (and (inv!59685 (c!710802 (dynLambda!19437 (toChars!9945 (transformation!7422 r!4008)) (dynLambda!19433 (toValue!10086 (transformation!7422 r!4008)) lt!1480085)))) tp!1264984))))

(declare-fun result!303032 () Bool)

(declare-fun inv!59686 (BalanceConc!26860) Bool)

(assert (=> tb!249109 (= result!303032 (and (inv!59686 (dynLambda!19437 (toChars!9945 (transformation!7422 r!4008)) (dynLambda!19433 (toValue!10086 (transformation!7422 r!4008)) lt!1480085))) e!2574972))))

(assert (= tb!249109 b!4150143))

(declare-fun m!4745807 () Bool)

(assert (=> b!4150143 m!4745807))

(declare-fun m!4745809 () Bool)

(assert (=> tb!249109 m!4745809))

(assert (=> d!1227726 t!343088))

(declare-fun b_and!322789 () Bool)

(assert (= b_and!322755 (and (=> t!343088 result!303032) b_and!322789)))

(declare-fun t!343090 () Bool)

(declare-fun tb!249111 () Bool)

(assert (=> (and b!4149933 (= (toChars!9945 (transformation!7422 r!4008)) (toChars!9945 (transformation!7422 r!4008))) t!343090) tb!249111))

(declare-fun result!303036 () Bool)

(assert (= result!303036 result!303032))

(assert (=> d!1227726 t!343090))

(declare-fun b_and!322791 () Bool)

(assert (= b_and!322759 (and (=> t!343090 result!303036) b_and!322791)))

(declare-fun t!343092 () Bool)

(declare-fun tb!249113 () Bool)

(assert (=> (and b!4149923 (= (toChars!9945 (transformation!7422 (h!50493 rules!3756))) (toChars!9945 (transformation!7422 r!4008))) t!343092) tb!249113))

(declare-fun result!303038 () Bool)

(assert (= result!303038 result!303032))

(assert (=> d!1227726 t!343092))

(declare-fun b_and!322793 () Bool)

(assert (= b_and!322763 (and (=> t!343092 result!303038) b_and!322793)))

(declare-fun b_lambda!122049 () Bool)

(assert (=> (not b_lambda!122049) (not d!1227726)))

(assert (=> d!1227726 t!343070))

(declare-fun b_and!322795 () Bool)

(assert (= b_and!322765 (and (=> t!343070 result!303008) b_and!322795)))

(assert (=> d!1227726 t!343072))

(declare-fun b_and!322797 () Bool)

(assert (= b_and!322767 (and (=> t!343072 result!303012) b_and!322797)))

(assert (=> d!1227726 t!343074))

(declare-fun b_and!322799 () Bool)

(assert (= b_and!322769 (and (=> t!343074 result!303014) b_and!322799)))

(assert (=> d!1227726 m!4745671))

(assert (=> d!1227726 m!4745671))

(declare-fun m!4745811 () Bool)

(assert (=> d!1227726 m!4745811))

(declare-fun m!4745813 () Bool)

(assert (=> d!1227726 m!4745813))

(declare-fun m!4745815 () Bool)

(assert (=> d!1227726 m!4745815))

(assert (=> d!1227726 m!4745811))

(declare-fun m!4745817 () Bool)

(assert (=> d!1227726 m!4745817))

(assert (=> b!4149926 d!1227726))

(declare-fun d!1227754 () Bool)

(declare-fun fromListB!2543 (List!45196) BalanceConc!26860)

(assert (=> d!1227754 (= (seqFromList!5539 p!2912) (fromListB!2543 p!2912))))

(declare-fun bs!595422 () Bool)

(assert (= bs!595422 d!1227754))

(declare-fun m!4745819 () Bool)

(assert (=> bs!595422 m!4745819))

(assert (=> b!4149926 d!1227754))

(declare-fun d!1227756 () Bool)

(declare-fun lt!1480161 () Int)

(assert (=> d!1227756 (>= lt!1480161 0)))

(declare-fun e!2574975 () Int)

(assert (=> d!1227756 (= lt!1480161 e!2574975)))

(declare-fun c!710840 () Bool)

(assert (=> d!1227756 (= c!710840 ((_ is Nil!45072) p!2912))))

(assert (=> d!1227756 (= (size!33414 p!2912) lt!1480161)))

(declare-fun b!4150148 () Bool)

(assert (=> b!4150148 (= e!2574975 0)))

(declare-fun b!4150149 () Bool)

(assert (=> b!4150149 (= e!2574975 (+ 1 (size!33414 (t!343067 p!2912))))))

(assert (= (and d!1227756 c!710840) b!4150148))

(assert (= (and d!1227756 (not c!710840)) b!4150149))

(declare-fun m!4745821 () Bool)

(assert (=> b!4150149 m!4745821))

(assert (=> b!4149926 d!1227756))

(declare-fun d!1227758 () Bool)

(assert (=> d!1227758 (= (inv!59680 (tag!8282 rBis!149)) (= (mod (str.len (value!232080 (tag!8282 rBis!149))) 2) 0))))

(assert (=> b!4149922 d!1227758))

(declare-fun d!1227760 () Bool)

(declare-fun res!1699306 () Bool)

(declare-fun e!2574976 () Bool)

(assert (=> d!1227760 (=> (not res!1699306) (not e!2574976))))

(assert (=> d!1227760 (= res!1699306 (semiInverseModEq!3211 (toChars!9945 (transformation!7422 rBis!149)) (toValue!10086 (transformation!7422 rBis!149))))))

(assert (=> d!1227760 (= (inv!59682 (transformation!7422 rBis!149)) e!2574976)))

(declare-fun b!4150150 () Bool)

(assert (=> b!4150150 (= e!2574976 (equivClasses!3110 (toChars!9945 (transformation!7422 rBis!149)) (toValue!10086 (transformation!7422 rBis!149))))))

(assert (= (and d!1227760 res!1699306) b!4150150))

(declare-fun m!4745823 () Bool)

(assert (=> d!1227760 m!4745823))

(declare-fun m!4745825 () Bool)

(assert (=> b!4150150 m!4745825))

(assert (=> b!4149922 d!1227760))

(declare-fun d!1227762 () Bool)

(declare-fun lt!1480162 () Bool)

(assert (=> d!1227762 (= lt!1480162 (select (content!6973 rules!3756) r!4008))))

(declare-fun e!2574978 () Bool)

(assert (=> d!1227762 (= lt!1480162 e!2574978)))

(declare-fun res!1699308 () Bool)

(assert (=> d!1227762 (=> (not res!1699308) (not e!2574978))))

(assert (=> d!1227762 (= res!1699308 ((_ is Cons!45073) rules!3756))))

(assert (=> d!1227762 (= (contains!9108 rules!3756 r!4008) lt!1480162)))

(declare-fun b!4150151 () Bool)

(declare-fun e!2574977 () Bool)

(assert (=> b!4150151 (= e!2574978 e!2574977)))

(declare-fun res!1699307 () Bool)

(assert (=> b!4150151 (=> res!1699307 e!2574977)))

(assert (=> b!4150151 (= res!1699307 (= (h!50493 rules!3756) r!4008))))

(declare-fun b!4150152 () Bool)

(assert (=> b!4150152 (= e!2574977 (contains!9108 (t!343068 rules!3756) r!4008))))

(assert (= (and d!1227762 res!1699308) b!4150151))

(assert (= (and b!4150151 (not res!1699307)) b!4150152))

(assert (=> d!1227762 m!4745665))

(declare-fun m!4745827 () Bool)

(assert (=> d!1227762 m!4745827))

(assert (=> b!4150152 m!4745601))

(assert (=> b!4149934 d!1227762))

(declare-fun d!1227764 () Bool)

(declare-fun res!1699313 () Bool)

(declare-fun e!2574981 () Bool)

(assert (=> d!1227764 (=> (not res!1699313) (not e!2574981))))

(declare-fun validRegex!5557 (Regex!12327) Bool)

(assert (=> d!1227764 (= res!1699313 (validRegex!5557 (regex!7422 r!4008)))))

(assert (=> d!1227764 (= (ruleValid!3228 thiss!25645 r!4008) e!2574981)))

(declare-fun b!4150157 () Bool)

(declare-fun res!1699314 () Bool)

(assert (=> b!4150157 (=> (not res!1699314) (not e!2574981))))

(declare-fun nullable!4347 (Regex!12327) Bool)

(assert (=> b!4150157 (= res!1699314 (not (nullable!4347 (regex!7422 r!4008))))))

(declare-fun b!4150158 () Bool)

(assert (=> b!4150158 (= e!2574981 (not (= (tag!8282 r!4008) (String!52011 ""))))))

(assert (= (and d!1227764 res!1699313) b!4150157))

(assert (= (and b!4150157 res!1699314) b!4150158))

(declare-fun m!4745829 () Bool)

(assert (=> d!1227764 m!4745829))

(declare-fun m!4745831 () Bool)

(assert (=> b!4150157 m!4745831))

(assert (=> b!4149930 d!1227764))

(declare-fun d!1227766 () Bool)

(declare-fun lt!1480163 () Bool)

(assert (=> d!1227766 (= lt!1480163 (select (content!6973 (t!343068 rules!3756)) rBis!149))))

(declare-fun e!2574983 () Bool)

(assert (=> d!1227766 (= lt!1480163 e!2574983)))

(declare-fun res!1699316 () Bool)

(assert (=> d!1227766 (=> (not res!1699316) (not e!2574983))))

(assert (=> d!1227766 (= res!1699316 ((_ is Cons!45073) (t!343068 rules!3756)))))

(assert (=> d!1227766 (= (contains!9108 (t!343068 rules!3756) rBis!149) lt!1480163)))

(declare-fun b!4150159 () Bool)

(declare-fun e!2574982 () Bool)

(assert (=> b!4150159 (= e!2574983 e!2574982)))

(declare-fun res!1699315 () Bool)

(assert (=> b!4150159 (=> res!1699315 e!2574982)))

(assert (=> b!4150159 (= res!1699315 (= (h!50493 (t!343068 rules!3756)) rBis!149))))

(declare-fun b!4150160 () Bool)

(assert (=> b!4150160 (= e!2574982 (contains!9108 (t!343068 (t!343068 rules!3756)) rBis!149))))

(assert (= (and d!1227766 res!1699316) b!4150159))

(assert (= (and b!4150159 (not res!1699315)) b!4150160))

(declare-fun m!4745833 () Bool)

(assert (=> d!1227766 m!4745833))

(declare-fun m!4745835 () Bool)

(assert (=> d!1227766 m!4745835))

(declare-fun m!4745837 () Bool)

(assert (=> b!4150160 m!4745837))

(assert (=> b!4149941 d!1227766))

(declare-fun d!1227768 () Bool)

(declare-fun lt!1480168 () Bool)

(assert (=> d!1227768 (= lt!1480168 (select (content!6973 (t!343068 rules!3756)) r!4008))))

(declare-fun e!2574985 () Bool)

(assert (=> d!1227768 (= lt!1480168 e!2574985)))

(declare-fun res!1699318 () Bool)

(assert (=> d!1227768 (=> (not res!1699318) (not e!2574985))))

(assert (=> d!1227768 (= res!1699318 ((_ is Cons!45073) (t!343068 rules!3756)))))

(assert (=> d!1227768 (= (contains!9108 (t!343068 rules!3756) r!4008) lt!1480168)))

(declare-fun b!4150161 () Bool)

(declare-fun e!2574984 () Bool)

(assert (=> b!4150161 (= e!2574985 e!2574984)))

(declare-fun res!1699317 () Bool)

(assert (=> b!4150161 (=> res!1699317 e!2574984)))

(assert (=> b!4150161 (= res!1699317 (= (h!50493 (t!343068 rules!3756)) r!4008))))

(declare-fun b!4150162 () Bool)

(assert (=> b!4150162 (= e!2574984 (contains!9108 (t!343068 (t!343068 rules!3756)) r!4008))))

(assert (= (and d!1227768 res!1699318) b!4150161))

(assert (= (and b!4150161 (not res!1699317)) b!4150162))

(assert (=> d!1227768 m!4745833))

(declare-fun m!4745839 () Bool)

(assert (=> d!1227768 m!4745839))

(declare-fun m!4745841 () Bool)

(assert (=> b!4150162 m!4745841))

(assert (=> b!4149920 d!1227768))

(declare-fun d!1227770 () Bool)

(assert (=> d!1227770 (= (inv!59680 (tag!8282 (h!50493 rules!3756))) (= (mod (str.len (value!232080 (tag!8282 (h!50493 rules!3756)))) 2) 0))))

(assert (=> b!4149931 d!1227770))

(declare-fun d!1227772 () Bool)

(declare-fun res!1699319 () Bool)

(declare-fun e!2574988 () Bool)

(assert (=> d!1227772 (=> (not res!1699319) (not e!2574988))))

(assert (=> d!1227772 (= res!1699319 (semiInverseModEq!3211 (toChars!9945 (transformation!7422 (h!50493 rules!3756))) (toValue!10086 (transformation!7422 (h!50493 rules!3756)))))))

(assert (=> d!1227772 (= (inv!59682 (transformation!7422 (h!50493 rules!3756))) e!2574988)))

(declare-fun b!4150167 () Bool)

(assert (=> b!4150167 (= e!2574988 (equivClasses!3110 (toChars!9945 (transformation!7422 (h!50493 rules!3756))) (toValue!10086 (transformation!7422 (h!50493 rules!3756)))))))

(assert (= (and d!1227772 res!1699319) b!4150167))

(declare-fun m!4745843 () Bool)

(assert (=> d!1227772 m!4745843))

(declare-fun m!4745845 () Bool)

(assert (=> b!4150167 m!4745845))

(assert (=> b!4149931 d!1227772))

(declare-fun d!1227774 () Bool)

(declare-fun res!1699322 () Bool)

(declare-fun e!2574991 () Bool)

(assert (=> d!1227774 (=> (not res!1699322) (not e!2574991))))

(assert (=> d!1227774 (= res!1699322 (rulesValid!2923 thiss!25645 (t!343068 rules!3756)))))

(assert (=> d!1227774 (= (rulesInvariant!6308 thiss!25645 (t!343068 rules!3756)) e!2574991)))

(declare-fun b!4150170 () Bool)

(assert (=> b!4150170 (= e!2574991 (noDuplicateTag!3006 thiss!25645 (t!343068 rules!3756) Nil!45074))))

(assert (= (and d!1227774 res!1699322) b!4150170))

(declare-fun m!4745847 () Bool)

(assert (=> d!1227774 m!4745847))

(declare-fun m!4745849 () Bool)

(assert (=> b!4150170 m!4745849))

(assert (=> b!4149942 d!1227774))

(declare-fun d!1227776 () Bool)

(assert (=> d!1227776 (not (= (tag!8282 (h!50493 rules!3756)) (tag!8282 r!4008)))))

(declare-fun lt!1480177 () Unit!64349)

(declare-fun choose!25411 (LexerInterface!7011 List!45197 Rule!14644 Rule!14644) Unit!64349)

(assert (=> d!1227776 (= lt!1480177 (choose!25411 thiss!25645 rules!3756 (h!50493 rules!3756) r!4008))))

(assert (=> d!1227776 (contains!9108 rules!3756 (h!50493 rules!3756))))

(assert (=> d!1227776 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!70 thiss!25645 rules!3756 (h!50493 rules!3756) r!4008) lt!1480177)))

(declare-fun bs!595423 () Bool)

(assert (= bs!595423 d!1227776))

(declare-fun m!4745851 () Bool)

(assert (=> bs!595423 m!4745851))

(declare-fun m!4745853 () Bool)

(assert (=> bs!595423 m!4745853))

(assert (=> b!4149942 d!1227776))

(declare-fun b!4150264 () Bool)

(declare-fun res!1699374 () Bool)

(declare-fun e!2575038 () Bool)

(assert (=> b!4150264 (=> (not res!1699374) (not e!2575038))))

(declare-fun lt!1480210 () Option!9728)

(assert (=> b!4150264 (= res!1699374 (= (value!232081 (_1!24851 (get!14718 lt!1480210))) (apply!10495 (transformation!7422 (rule!10556 (_1!24851 (get!14718 lt!1480210)))) (seqFromList!5539 (originalCharacters!7918 (_1!24851 (get!14718 lt!1480210)))))))))

(declare-fun b!4150265 () Bool)

(declare-fun res!1699370 () Bool)

(assert (=> b!4150265 (=> (not res!1699370) (not e!2575038))))

(assert (=> b!4150265 (= res!1699370 (= (++!11648 (list!16491 (charsOf!5011 (_1!24851 (get!14718 lt!1480210)))) (_2!24851 (get!14718 lt!1480210))) input!3238))))

(declare-fun b!4150266 () Bool)

(declare-fun res!1699369 () Bool)

(assert (=> b!4150266 (=> (not res!1699369) (not e!2575038))))

(assert (=> b!4150266 (= res!1699369 (< (size!33414 (_2!24851 (get!14718 lt!1480210))) (size!33414 input!3238)))))

(declare-fun b!4150267 () Bool)

(declare-fun e!2575040 () Bool)

(assert (=> b!4150267 (= e!2575040 e!2575038)))

(declare-fun res!1699375 () Bool)

(assert (=> b!4150267 (=> (not res!1699375) (not e!2575038))))

(assert (=> b!4150267 (= res!1699375 (matchR!6156 (regex!7422 (h!50493 rules!3756)) (list!16491 (charsOf!5011 (_1!24851 (get!14718 lt!1480210))))))))

(declare-fun b!4150268 () Bool)

(declare-fun e!2575039 () Bool)

(declare-datatypes ((tuple2!43438 0))(
  ( (tuple2!43439 (_1!24853 List!45196) (_2!24853 List!45196)) )
))
(declare-fun findLongestMatchInner!1551 (Regex!12327 List!45196 Int List!45196 List!45196 Int) tuple2!43438)

(assert (=> b!4150268 (= e!2575039 (matchR!6156 (regex!7422 (h!50493 rules!3756)) (_1!24853 (findLongestMatchInner!1551 (regex!7422 (h!50493 rules!3756)) Nil!45072 (size!33414 Nil!45072) input!3238 input!3238 (size!33414 input!3238)))))))

(declare-fun d!1227778 () Bool)

(assert (=> d!1227778 e!2575040))

(declare-fun res!1699371 () Bool)

(assert (=> d!1227778 (=> res!1699371 e!2575040)))

(assert (=> d!1227778 (= res!1699371 (isEmpty!26911 lt!1480210))))

(declare-fun e!2575037 () Option!9728)

(assert (=> d!1227778 (= lt!1480210 e!2575037)))

(declare-fun c!710847 () Bool)

(declare-fun lt!1480208 () tuple2!43438)

(assert (=> d!1227778 (= c!710847 (isEmpty!26908 (_1!24853 lt!1480208)))))

(declare-fun findLongestMatch!1464 (Regex!12327 List!45196) tuple2!43438)

(assert (=> d!1227778 (= lt!1480208 (findLongestMatch!1464 (regex!7422 (h!50493 rules!3756)) input!3238))))

(assert (=> d!1227778 (ruleValid!3228 thiss!25645 (h!50493 rules!3756))))

(assert (=> d!1227778 (= (maxPrefixOneRule!3140 thiss!25645 (h!50493 rules!3756) input!3238) lt!1480210)))

(declare-fun b!4150269 () Bool)

(assert (=> b!4150269 (= e!2575038 (= (size!33413 (_1!24851 (get!14718 lt!1480210))) (size!33414 (originalCharacters!7918 (_1!24851 (get!14718 lt!1480210))))))))

(declare-fun b!4150270 () Bool)

(declare-fun size!33416 (BalanceConc!26860) Int)

(assert (=> b!4150270 (= e!2575037 (Some!9727 (tuple2!43435 (Token!13775 (apply!10495 (transformation!7422 (h!50493 rules!3756)) (seqFromList!5539 (_1!24853 lt!1480208))) (h!50493 rules!3756) (size!33416 (seqFromList!5539 (_1!24853 lt!1480208))) (_1!24853 lt!1480208)) (_2!24853 lt!1480208))))))

(declare-fun lt!1480206 () Unit!64349)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1524 (Regex!12327 List!45196) Unit!64349)

(assert (=> b!4150270 (= lt!1480206 (longestMatchIsAcceptedByMatchOrIsEmpty!1524 (regex!7422 (h!50493 rules!3756)) input!3238))))

(declare-fun res!1699373 () Bool)

(assert (=> b!4150270 (= res!1699373 (isEmpty!26908 (_1!24853 (findLongestMatchInner!1551 (regex!7422 (h!50493 rules!3756)) Nil!45072 (size!33414 Nil!45072) input!3238 input!3238 (size!33414 input!3238)))))))

(assert (=> b!4150270 (=> res!1699373 e!2575039)))

(assert (=> b!4150270 e!2575039))

(declare-fun lt!1480209 () Unit!64349)

(assert (=> b!4150270 (= lt!1480209 lt!1480206)))

(declare-fun lt!1480207 () Unit!64349)

(assert (=> b!4150270 (= lt!1480207 (lemmaSemiInverse!2280 (transformation!7422 (h!50493 rules!3756)) (seqFromList!5539 (_1!24853 lt!1480208))))))

(declare-fun b!4150271 () Bool)

(declare-fun res!1699372 () Bool)

(assert (=> b!4150271 (=> (not res!1699372) (not e!2575038))))

(assert (=> b!4150271 (= res!1699372 (= (rule!10556 (_1!24851 (get!14718 lt!1480210))) (h!50493 rules!3756)))))

(declare-fun b!4150272 () Bool)

(assert (=> b!4150272 (= e!2575037 None!9727)))

(assert (= (and d!1227778 c!710847) b!4150272))

(assert (= (and d!1227778 (not c!710847)) b!4150270))

(assert (= (and b!4150270 (not res!1699373)) b!4150268))

(assert (= (and d!1227778 (not res!1699371)) b!4150267))

(assert (= (and b!4150267 res!1699375) b!4150265))

(assert (= (and b!4150265 res!1699370) b!4150266))

(assert (= (and b!4150266 res!1699369) b!4150271))

(assert (= (and b!4150271 res!1699372) b!4150264))

(assert (= (and b!4150264 res!1699374) b!4150269))

(declare-fun m!4745955 () Bool)

(assert (=> b!4150271 m!4745955))

(assert (=> b!4150264 m!4745955))

(declare-fun m!4745957 () Bool)

(assert (=> b!4150264 m!4745957))

(assert (=> b!4150264 m!4745957))

(declare-fun m!4745959 () Bool)

(assert (=> b!4150264 m!4745959))

(declare-fun m!4745961 () Bool)

(assert (=> b!4150268 m!4745961))

(assert (=> b!4150268 m!4745691))

(assert (=> b!4150268 m!4745961))

(assert (=> b!4150268 m!4745691))

(declare-fun m!4745963 () Bool)

(assert (=> b!4150268 m!4745963))

(declare-fun m!4745965 () Bool)

(assert (=> b!4150268 m!4745965))

(assert (=> b!4150270 m!4745961))

(assert (=> b!4150270 m!4745691))

(declare-fun m!4745967 () Bool)

(assert (=> b!4150270 m!4745967))

(declare-fun m!4745969 () Bool)

(assert (=> b!4150270 m!4745969))

(assert (=> b!4150270 m!4745967))

(declare-fun m!4745971 () Bool)

(assert (=> b!4150270 m!4745971))

(assert (=> b!4150270 m!4745967))

(declare-fun m!4745973 () Bool)

(assert (=> b!4150270 m!4745973))

(assert (=> b!4150270 m!4745961))

(assert (=> b!4150270 m!4745691))

(assert (=> b!4150270 m!4745963))

(declare-fun m!4745975 () Bool)

(assert (=> b!4150270 m!4745975))

(assert (=> b!4150270 m!4745967))

(declare-fun m!4745977 () Bool)

(assert (=> b!4150270 m!4745977))

(assert (=> b!4150269 m!4745955))

(declare-fun m!4745979 () Bool)

(assert (=> b!4150269 m!4745979))

(declare-fun m!4745981 () Bool)

(assert (=> d!1227778 m!4745981))

(declare-fun m!4745983 () Bool)

(assert (=> d!1227778 m!4745983))

(declare-fun m!4745985 () Bool)

(assert (=> d!1227778 m!4745985))

(declare-fun m!4745987 () Bool)

(assert (=> d!1227778 m!4745987))

(assert (=> b!4150267 m!4745955))

(declare-fun m!4745989 () Bool)

(assert (=> b!4150267 m!4745989))

(assert (=> b!4150267 m!4745989))

(declare-fun m!4745991 () Bool)

(assert (=> b!4150267 m!4745991))

(assert (=> b!4150267 m!4745991))

(declare-fun m!4745993 () Bool)

(assert (=> b!4150267 m!4745993))

(assert (=> b!4150265 m!4745955))

(assert (=> b!4150265 m!4745989))

(assert (=> b!4150265 m!4745989))

(assert (=> b!4150265 m!4745991))

(assert (=> b!4150265 m!4745991))

(declare-fun m!4745995 () Bool)

(assert (=> b!4150265 m!4745995))

(assert (=> b!4150266 m!4745955))

(declare-fun m!4745997 () Bool)

(assert (=> b!4150266 m!4745997))

(assert (=> b!4150266 m!4745691))

(assert (=> b!4149942 d!1227778))

(declare-fun d!1227802 () Bool)

(assert (=> d!1227802 (rulesInvariant!6308 thiss!25645 (t!343068 rules!3756))))

(declare-fun lt!1480213 () Unit!64349)

(declare-fun choose!25413 (LexerInterface!7011 Rule!14644 List!45197) Unit!64349)

(assert (=> d!1227802 (= lt!1480213 (choose!25413 thiss!25645 (h!50493 rules!3756) (t!343068 rules!3756)))))

(assert (=> d!1227802 (rulesInvariant!6308 thiss!25645 (Cons!45073 (h!50493 rules!3756) (t!343068 rules!3756)))))

(assert (=> d!1227802 (= (lemmaInvariantOnRulesThenOnTail!834 thiss!25645 (h!50493 rules!3756) (t!343068 rules!3756)) lt!1480213)))

(declare-fun bs!595427 () Bool)

(assert (= bs!595427 d!1227802))

(assert (=> bs!595427 m!4745629))

(declare-fun m!4745999 () Bool)

(assert (=> bs!595427 m!4745999))

(declare-fun m!4746001 () Bool)

(assert (=> bs!595427 m!4746001))

(assert (=> b!4149942 d!1227802))

(declare-fun b!4150273 () Bool)

(declare-fun e!2575043 () Bool)

(declare-fun lt!1480218 () Option!9728)

(assert (=> b!4150273 (= e!2575043 (contains!9108 (t!343068 rules!3756) (rule!10556 (_1!24851 (get!14718 lt!1480218)))))))

(declare-fun d!1227804 () Bool)

(declare-fun e!2575041 () Bool)

(assert (=> d!1227804 e!2575041))

(declare-fun res!1699377 () Bool)

(assert (=> d!1227804 (=> res!1699377 e!2575041)))

(assert (=> d!1227804 (= res!1699377 (isEmpty!26911 lt!1480218))))

(declare-fun e!2575042 () Option!9728)

(assert (=> d!1227804 (= lt!1480218 e!2575042)))

(declare-fun c!710848 () Bool)

(assert (=> d!1227804 (= c!710848 (and ((_ is Cons!45073) (t!343068 rules!3756)) ((_ is Nil!45073) (t!343068 (t!343068 rules!3756)))))))

(declare-fun lt!1480215 () Unit!64349)

(declare-fun lt!1480214 () Unit!64349)

(assert (=> d!1227804 (= lt!1480215 lt!1480214)))

(assert (=> d!1227804 (isPrefix!4357 input!3238 input!3238)))

(assert (=> d!1227804 (= lt!1480214 (lemmaIsPrefixRefl!2810 input!3238 input!3238))))

(assert (=> d!1227804 (rulesValidInductive!2762 thiss!25645 (t!343068 rules!3756))))

(assert (=> d!1227804 (= (maxPrefix!4201 thiss!25645 (t!343068 rules!3756) input!3238) lt!1480218)))

(declare-fun b!4150274 () Bool)

(declare-fun res!1699378 () Bool)

(assert (=> b!4150274 (=> (not res!1699378) (not e!2575043))))

(assert (=> b!4150274 (= res!1699378 (< (size!33414 (_2!24851 (get!14718 lt!1480218))) (size!33414 input!3238)))))

(declare-fun b!4150275 () Bool)

(declare-fun res!1699382 () Bool)

(assert (=> b!4150275 (=> (not res!1699382) (not e!2575043))))

(assert (=> b!4150275 (= res!1699382 (= (++!11648 (list!16491 (charsOf!5011 (_1!24851 (get!14718 lt!1480218)))) (_2!24851 (get!14718 lt!1480218))) input!3238))))

(declare-fun b!4150276 () Bool)

(declare-fun res!1699381 () Bool)

(assert (=> b!4150276 (=> (not res!1699381) (not e!2575043))))

(assert (=> b!4150276 (= res!1699381 (= (value!232081 (_1!24851 (get!14718 lt!1480218))) (apply!10495 (transformation!7422 (rule!10556 (_1!24851 (get!14718 lt!1480218)))) (seqFromList!5539 (originalCharacters!7918 (_1!24851 (get!14718 lt!1480218)))))))))

(declare-fun b!4150277 () Bool)

(assert (=> b!4150277 (= e!2575041 e!2575043)))

(declare-fun res!1699376 () Bool)

(assert (=> b!4150277 (=> (not res!1699376) (not e!2575043))))

(assert (=> b!4150277 (= res!1699376 (isDefined!7302 lt!1480218))))

(declare-fun bm!290716 () Bool)

(declare-fun call!290721 () Option!9728)

(assert (=> bm!290716 (= call!290721 (maxPrefixOneRule!3140 thiss!25645 (h!50493 (t!343068 rules!3756)) input!3238))))

(declare-fun b!4150278 () Bool)

(declare-fun res!1699379 () Bool)

(assert (=> b!4150278 (=> (not res!1699379) (not e!2575043))))

(assert (=> b!4150278 (= res!1699379 (matchR!6156 (regex!7422 (rule!10556 (_1!24851 (get!14718 lt!1480218)))) (list!16491 (charsOf!5011 (_1!24851 (get!14718 lt!1480218))))))))

(declare-fun b!4150279 () Bool)

(assert (=> b!4150279 (= e!2575042 call!290721)))

(declare-fun b!4150280 () Bool)

(declare-fun lt!1480217 () Option!9728)

(declare-fun lt!1480216 () Option!9728)

(assert (=> b!4150280 (= e!2575042 (ite (and ((_ is None!9727) lt!1480217) ((_ is None!9727) lt!1480216)) None!9727 (ite ((_ is None!9727) lt!1480216) lt!1480217 (ite ((_ is None!9727) lt!1480217) lt!1480216 (ite (>= (size!33413 (_1!24851 (v!40389 lt!1480217))) (size!33413 (_1!24851 (v!40389 lt!1480216)))) lt!1480217 lt!1480216)))))))

(assert (=> b!4150280 (= lt!1480217 call!290721)))

(assert (=> b!4150280 (= lt!1480216 (maxPrefix!4201 thiss!25645 (t!343068 (t!343068 rules!3756)) input!3238))))

(declare-fun b!4150281 () Bool)

(declare-fun res!1699380 () Bool)

(assert (=> b!4150281 (=> (not res!1699380) (not e!2575043))))

(assert (=> b!4150281 (= res!1699380 (= (list!16491 (charsOf!5011 (_1!24851 (get!14718 lt!1480218)))) (originalCharacters!7918 (_1!24851 (get!14718 lt!1480218)))))))

(assert (= (and d!1227804 c!710848) b!4150279))

(assert (= (and d!1227804 (not c!710848)) b!4150280))

(assert (= (or b!4150279 b!4150280) bm!290716))

(assert (= (and d!1227804 (not res!1699377)) b!4150277))

(assert (= (and b!4150277 res!1699376) b!4150281))

(assert (= (and b!4150281 res!1699380) b!4150274))

(assert (= (and b!4150274 res!1699378) b!4150275))

(assert (= (and b!4150275 res!1699382) b!4150276))

(assert (= (and b!4150276 res!1699381) b!4150278))

(assert (= (and b!4150278 res!1699379) b!4150273))

(declare-fun m!4746003 () Bool)

(assert (=> b!4150278 m!4746003))

(declare-fun m!4746005 () Bool)

(assert (=> b!4150278 m!4746005))

(assert (=> b!4150278 m!4746005))

(declare-fun m!4746007 () Bool)

(assert (=> b!4150278 m!4746007))

(assert (=> b!4150278 m!4746007))

(declare-fun m!4746009 () Bool)

(assert (=> b!4150278 m!4746009))

(declare-fun m!4746011 () Bool)

(assert (=> bm!290716 m!4746011))

(assert (=> b!4150274 m!4746003))

(declare-fun m!4746013 () Bool)

(assert (=> b!4150274 m!4746013))

(assert (=> b!4150274 m!4745691))

(assert (=> b!4150275 m!4746003))

(assert (=> b!4150275 m!4746005))

(assert (=> b!4150275 m!4746005))

(assert (=> b!4150275 m!4746007))

(assert (=> b!4150275 m!4746007))

(declare-fun m!4746015 () Bool)

(assert (=> b!4150275 m!4746015))

(assert (=> b!4150276 m!4746003))

(declare-fun m!4746017 () Bool)

(assert (=> b!4150276 m!4746017))

(assert (=> b!4150276 m!4746017))

(declare-fun m!4746019 () Bool)

(assert (=> b!4150276 m!4746019))

(assert (=> b!4150281 m!4746003))

(assert (=> b!4150281 m!4746005))

(assert (=> b!4150281 m!4746005))

(assert (=> b!4150281 m!4746007))

(assert (=> b!4150273 m!4746003))

(declare-fun m!4746021 () Bool)

(assert (=> b!4150273 m!4746021))

(declare-fun m!4746023 () Bool)

(assert (=> b!4150277 m!4746023))

(declare-fun m!4746025 () Bool)

(assert (=> d!1227804 m!4746025))

(assert (=> d!1227804 m!4745721))

(assert (=> d!1227804 m!4745723))

(declare-fun m!4746027 () Bool)

(assert (=> d!1227804 m!4746027))

(declare-fun m!4746029 () Bool)

(assert (=> b!4150280 m!4746029))

(assert (=> b!4149942 d!1227804))

(declare-fun d!1227806 () Bool)

(assert (=> d!1227806 (= (isEmpty!26909 (t!343068 rules!3756)) ((_ is Nil!45073) (t!343068 rules!3756)))))

(assert (=> b!4149942 d!1227806))

(declare-fun d!1227808 () Bool)

(assert (=> d!1227808 (= (isEmpty!26908 p!2912) ((_ is Nil!45072) p!2912))))

(assert (=> b!4149921 d!1227808))

(declare-fun b!4150310 () Bool)

(declare-fun e!2575059 () Bool)

(declare-fun head!8760 (List!45196) C!24840)

(assert (=> b!4150310 (= e!2575059 (= (head!8760 p!2912) (c!710803 (regex!7422 r!4008))))))

(declare-fun b!4150311 () Bool)

(declare-fun e!2575064 () Bool)

(declare-fun lt!1480221 () Bool)

(assert (=> b!4150311 (= e!2575064 (not lt!1480221))))

(declare-fun b!4150312 () Bool)

(declare-fun e!2575060 () Bool)

(declare-fun e!2575061 () Bool)

(assert (=> b!4150312 (= e!2575060 e!2575061)))

(declare-fun res!1699406 () Bool)

(assert (=> b!4150312 (=> (not res!1699406) (not e!2575061))))

(assert (=> b!4150312 (= res!1699406 (not lt!1480221))))

(declare-fun b!4150313 () Bool)

(declare-fun res!1699403 () Bool)

(declare-fun e!2575062 () Bool)

(assert (=> b!4150313 (=> res!1699403 e!2575062)))

(assert (=> b!4150313 (= res!1699403 (not (isEmpty!26908 (tail!6601 p!2912))))))

(declare-fun b!4150314 () Bool)

(assert (=> b!4150314 (= e!2575062 (not (= (head!8760 p!2912) (c!710803 (regex!7422 r!4008)))))))

(declare-fun b!4150315 () Bool)

(declare-fun e!2575063 () Bool)

(declare-fun derivativeStep!3741 (Regex!12327 C!24840) Regex!12327)

(assert (=> b!4150315 (= e!2575063 (matchR!6156 (derivativeStep!3741 (regex!7422 r!4008) (head!8760 p!2912)) (tail!6601 p!2912)))))

(declare-fun b!4150317 () Bool)

(declare-fun res!1699404 () Bool)

(assert (=> b!4150317 (=> res!1699404 e!2575060)))

(assert (=> b!4150317 (= res!1699404 (not ((_ is ElementMatch!12327) (regex!7422 r!4008))))))

(assert (=> b!4150317 (= e!2575064 e!2575060)))

(declare-fun b!4150318 () Bool)

(declare-fun e!2575058 () Bool)

(declare-fun call!290724 () Bool)

(assert (=> b!4150318 (= e!2575058 (= lt!1480221 call!290724))))

(declare-fun b!4150319 () Bool)

(declare-fun res!1699405 () Bool)

(assert (=> b!4150319 (=> res!1699405 e!2575060)))

(assert (=> b!4150319 (= res!1699405 e!2575059)))

(declare-fun res!1699399 () Bool)

(assert (=> b!4150319 (=> (not res!1699399) (not e!2575059))))

(assert (=> b!4150319 (= res!1699399 lt!1480221)))

(declare-fun b!4150320 () Bool)

(assert (=> b!4150320 (= e!2575058 e!2575064)))

(declare-fun c!710855 () Bool)

(assert (=> b!4150320 (= c!710855 ((_ is EmptyLang!12327) (regex!7422 r!4008)))))

(declare-fun b!4150321 () Bool)

(assert (=> b!4150321 (= e!2575063 (nullable!4347 (regex!7422 r!4008)))))

(declare-fun b!4150322 () Bool)

(assert (=> b!4150322 (= e!2575061 e!2575062)))

(declare-fun res!1699401 () Bool)

(assert (=> b!4150322 (=> res!1699401 e!2575062)))

(assert (=> b!4150322 (= res!1699401 call!290724)))

(declare-fun bm!290719 () Bool)

(assert (=> bm!290719 (= call!290724 (isEmpty!26908 p!2912))))

(declare-fun b!4150323 () Bool)

(declare-fun res!1699400 () Bool)

(assert (=> b!4150323 (=> (not res!1699400) (not e!2575059))))

(assert (=> b!4150323 (= res!1699400 (not call!290724))))

(declare-fun d!1227810 () Bool)

(assert (=> d!1227810 e!2575058))

(declare-fun c!710856 () Bool)

(assert (=> d!1227810 (= c!710856 ((_ is EmptyExpr!12327) (regex!7422 r!4008)))))

(assert (=> d!1227810 (= lt!1480221 e!2575063)))

(declare-fun c!710857 () Bool)

(assert (=> d!1227810 (= c!710857 (isEmpty!26908 p!2912))))

(assert (=> d!1227810 (validRegex!5557 (regex!7422 r!4008))))

(assert (=> d!1227810 (= (matchR!6156 (regex!7422 r!4008) p!2912) lt!1480221)))

(declare-fun b!4150316 () Bool)

(declare-fun res!1699402 () Bool)

(assert (=> b!4150316 (=> (not res!1699402) (not e!2575059))))

(assert (=> b!4150316 (= res!1699402 (isEmpty!26908 (tail!6601 p!2912)))))

(assert (= (and d!1227810 c!710857) b!4150321))

(assert (= (and d!1227810 (not c!710857)) b!4150315))

(assert (= (and d!1227810 c!710856) b!4150318))

(assert (= (and d!1227810 (not c!710856)) b!4150320))

(assert (= (and b!4150320 c!710855) b!4150311))

(assert (= (and b!4150320 (not c!710855)) b!4150317))

(assert (= (and b!4150317 (not res!1699404)) b!4150319))

(assert (= (and b!4150319 res!1699399) b!4150323))

(assert (= (and b!4150323 res!1699400) b!4150316))

(assert (= (and b!4150316 res!1699402) b!4150310))

(assert (= (and b!4150319 (not res!1699405)) b!4150312))

(assert (= (and b!4150312 res!1699406) b!4150322))

(assert (= (and b!4150322 (not res!1699401)) b!4150313))

(assert (= (and b!4150313 (not res!1699403)) b!4150314))

(assert (= (or b!4150318 b!4150322 b!4150323) bm!290719))

(declare-fun m!4746031 () Bool)

(assert (=> b!4150315 m!4746031))

(assert (=> b!4150315 m!4746031))

(declare-fun m!4746033 () Bool)

(assert (=> b!4150315 m!4746033))

(declare-fun m!4746035 () Bool)

(assert (=> b!4150315 m!4746035))

(assert (=> b!4150315 m!4746033))

(assert (=> b!4150315 m!4746035))

(declare-fun m!4746037 () Bool)

(assert (=> b!4150315 m!4746037))

(assert (=> b!4150310 m!4746031))

(assert (=> b!4150313 m!4746035))

(assert (=> b!4150313 m!4746035))

(declare-fun m!4746039 () Bool)

(assert (=> b!4150313 m!4746039))

(assert (=> b!4150321 m!4745831))

(assert (=> d!1227810 m!4745607))

(assert (=> d!1227810 m!4745829))

(assert (=> b!4150316 m!4746035))

(assert (=> b!4150316 m!4746035))

(assert (=> b!4150316 m!4746039))

(assert (=> b!4150314 m!4746031))

(assert (=> bm!290719 m!4745607))

(assert (=> b!4149927 d!1227810))

(declare-fun d!1227812 () Bool)

(assert (=> d!1227812 (ruleValid!3228 thiss!25645 r!4008)))

(declare-fun lt!1480224 () Unit!64349)

(declare-fun choose!25414 (LexerInterface!7011 Rule!14644 List!45197) Unit!64349)

(assert (=> d!1227812 (= lt!1480224 (choose!25414 thiss!25645 r!4008 rules!3756))))

(assert (=> d!1227812 (contains!9108 rules!3756 r!4008)))

(assert (=> d!1227812 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2268 thiss!25645 r!4008 rules!3756) lt!1480224)))

(declare-fun bs!595428 () Bool)

(assert (= bs!595428 d!1227812))

(assert (=> bs!595428 m!4745591))

(declare-fun m!4746041 () Bool)

(assert (=> bs!595428 m!4746041))

(assert (=> bs!595428 m!4745595))

(assert (=> b!4149938 d!1227812))

(declare-fun d!1227814 () Bool)

(declare-fun res!1699407 () Bool)

(declare-fun e!2575065 () Bool)

(assert (=> d!1227814 (=> (not res!1699407) (not e!2575065))))

(assert (=> d!1227814 (= res!1699407 (validRegex!5557 (regex!7422 rBis!149)))))

(assert (=> d!1227814 (= (ruleValid!3228 thiss!25645 rBis!149) e!2575065)))

(declare-fun b!4150324 () Bool)

(declare-fun res!1699408 () Bool)

(assert (=> b!4150324 (=> (not res!1699408) (not e!2575065))))

(assert (=> b!4150324 (= res!1699408 (not (nullable!4347 (regex!7422 rBis!149))))))

(declare-fun b!4150325 () Bool)

(assert (=> b!4150325 (= e!2575065 (not (= (tag!8282 rBis!149) (String!52011 ""))))))

(assert (= (and d!1227814 res!1699407) b!4150324))

(assert (= (and b!4150324 res!1699408) b!4150325))

(declare-fun m!4746043 () Bool)

(assert (=> d!1227814 m!4746043))

(declare-fun m!4746045 () Bool)

(assert (=> b!4150324 m!4746045))

(assert (=> b!4149938 d!1227814))

(declare-fun d!1227816 () Bool)

(assert (=> d!1227816 (ruleValid!3228 thiss!25645 rBis!149)))

(declare-fun lt!1480225 () Unit!64349)

(assert (=> d!1227816 (= lt!1480225 (choose!25414 thiss!25645 rBis!149 rules!3756))))

(assert (=> d!1227816 (contains!9108 rules!3756 rBis!149)))

(assert (=> d!1227816 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2268 thiss!25645 rBis!149 rules!3756) lt!1480225)))

(declare-fun bs!595429 () Bool)

(assert (= bs!595429 d!1227816))

(assert (=> bs!595429 m!4745611))

(declare-fun m!4746047 () Bool)

(assert (=> bs!595429 m!4746047))

(assert (=> bs!595429 m!4745599))

(assert (=> b!4149938 d!1227816))

(declare-fun b!4150334 () Bool)

(declare-fun e!2575072 () Int)

(assert (=> b!4150334 (= e!2575072 0)))

(declare-fun b!4150337 () Bool)

(declare-fun e!2575071 () Int)

(assert (=> b!4150337 (= e!2575071 (- 1))))

(declare-fun b!4150335 () Bool)

(assert (=> b!4150335 (= e!2575072 e!2575071)))

(declare-fun c!710863 () Bool)

(assert (=> b!4150335 (= c!710863 (and ((_ is Cons!45073) rules!3756) (not (= (h!50493 rules!3756) rBis!149))))))

(declare-fun d!1227818 () Bool)

(declare-fun lt!1480228 () Int)

(assert (=> d!1227818 (>= lt!1480228 0)))

(assert (=> d!1227818 (= lt!1480228 e!2575072)))

(declare-fun c!710862 () Bool)

(assert (=> d!1227818 (= c!710862 (and ((_ is Cons!45073) rules!3756) (= (h!50493 rules!3756) rBis!149)))))

(assert (=> d!1227818 (contains!9108 rules!3756 rBis!149)))

(assert (=> d!1227818 (= (getIndex!768 rules!3756 rBis!149) lt!1480228)))

(declare-fun b!4150336 () Bool)

(assert (=> b!4150336 (= e!2575071 (+ 1 (getIndex!768 (t!343068 rules!3756) rBis!149)))))

(assert (= (and d!1227818 c!710862) b!4150334))

(assert (= (and d!1227818 (not c!710862)) b!4150335))

(assert (= (and b!4150335 c!710863) b!4150336))

(assert (= (and b!4150335 (not c!710863)) b!4150337))

(assert (=> d!1227818 m!4745599))

(declare-fun m!4746049 () Bool)

(assert (=> b!4150336 m!4746049))

(assert (=> b!4149928 d!1227818))

(declare-fun b!4150338 () Bool)

(declare-fun e!2575074 () Int)

(assert (=> b!4150338 (= e!2575074 0)))

(declare-fun b!4150341 () Bool)

(declare-fun e!2575073 () Int)

(assert (=> b!4150341 (= e!2575073 (- 1))))

(declare-fun b!4150339 () Bool)

(assert (=> b!4150339 (= e!2575074 e!2575073)))

(declare-fun c!710865 () Bool)

(assert (=> b!4150339 (= c!710865 (and ((_ is Cons!45073) rules!3756) (not (= (h!50493 rules!3756) r!4008))))))

(declare-fun d!1227820 () Bool)

(declare-fun lt!1480229 () Int)

(assert (=> d!1227820 (>= lt!1480229 0)))

(assert (=> d!1227820 (= lt!1480229 e!2575074)))

(declare-fun c!710864 () Bool)

(assert (=> d!1227820 (= c!710864 (and ((_ is Cons!45073) rules!3756) (= (h!50493 rules!3756) r!4008)))))

(assert (=> d!1227820 (contains!9108 rules!3756 r!4008)))

(assert (=> d!1227820 (= (getIndex!768 rules!3756 r!4008) lt!1480229)))

(declare-fun b!4150340 () Bool)

(assert (=> b!4150340 (= e!2575073 (+ 1 (getIndex!768 (t!343068 rules!3756) r!4008)))))

(assert (= (and d!1227820 c!710864) b!4150338))

(assert (= (and d!1227820 (not c!710864)) b!4150339))

(assert (= (and b!4150339 c!710865) b!4150340))

(assert (= (and b!4150339 (not c!710865)) b!4150341))

(assert (=> d!1227820 m!4745595))

(declare-fun m!4746051 () Bool)

(assert (=> b!4150340 m!4746051))

(assert (=> b!4149928 d!1227820))

(declare-fun b!4150352 () Bool)

(declare-fun e!2575081 () Bool)

(assert (=> b!4150352 (= e!2575081 (isPrefix!4357 (tail!6601 p!2912) (tail!6601 input!3238)))))

(declare-fun d!1227822 () Bool)

(declare-fun e!2575083 () Bool)

(assert (=> d!1227822 e!2575083))

(declare-fun res!1699420 () Bool)

(assert (=> d!1227822 (=> res!1699420 e!2575083)))

(declare-fun lt!1480232 () Bool)

(assert (=> d!1227822 (= res!1699420 (not lt!1480232))))

(declare-fun e!2575082 () Bool)

(assert (=> d!1227822 (= lt!1480232 e!2575082)))

(declare-fun res!1699419 () Bool)

(assert (=> d!1227822 (=> res!1699419 e!2575082)))

(assert (=> d!1227822 (= res!1699419 ((_ is Nil!45072) p!2912))))

(assert (=> d!1227822 (= (isPrefix!4357 p!2912 input!3238) lt!1480232)))

(declare-fun b!4150351 () Bool)

(declare-fun res!1699418 () Bool)

(assert (=> b!4150351 (=> (not res!1699418) (not e!2575081))))

(assert (=> b!4150351 (= res!1699418 (= (head!8760 p!2912) (head!8760 input!3238)))))

(declare-fun b!4150353 () Bool)

(assert (=> b!4150353 (= e!2575083 (>= (size!33414 input!3238) (size!33414 p!2912)))))

(declare-fun b!4150350 () Bool)

(assert (=> b!4150350 (= e!2575082 e!2575081)))

(declare-fun res!1699417 () Bool)

(assert (=> b!4150350 (=> (not res!1699417) (not e!2575081))))

(assert (=> b!4150350 (= res!1699417 (not ((_ is Nil!45072) input!3238)))))

(assert (= (and d!1227822 (not res!1699419)) b!4150350))

(assert (= (and b!4150350 res!1699417) b!4150351))

(assert (= (and b!4150351 res!1699418) b!4150352))

(assert (= (and d!1227822 (not res!1699420)) b!4150353))

(assert (=> b!4150352 m!4746035))

(assert (=> b!4150352 m!4745693))

(assert (=> b!4150352 m!4746035))

(assert (=> b!4150352 m!4745693))

(declare-fun m!4746053 () Bool)

(assert (=> b!4150352 m!4746053))

(assert (=> b!4150351 m!4746031))

(declare-fun m!4746055 () Bool)

(assert (=> b!4150351 m!4746055))

(assert (=> b!4150353 m!4745691))

(assert (=> b!4150353 m!4745631))

(assert (=> b!4149929 d!1227822))

(declare-fun d!1227824 () Bool)

(assert (=> d!1227824 (= (isEmpty!26909 rules!3756) ((_ is Nil!45073) rules!3756))))

(assert (=> b!4149940 d!1227824))

(declare-fun e!2575086 () Bool)

(assert (=> b!4149935 (= tp!1264977 e!2575086)))

(declare-fun b!4150364 () Bool)

(assert (=> b!4150364 (= e!2575086 tp_is_empty!21577)))

(declare-fun b!4150367 () Bool)

(declare-fun tp!1265039 () Bool)

(declare-fun tp!1265040 () Bool)

(assert (=> b!4150367 (= e!2575086 (and tp!1265039 tp!1265040))))

(declare-fun b!4150366 () Bool)

(declare-fun tp!1265038 () Bool)

(assert (=> b!4150366 (= e!2575086 tp!1265038)))

(declare-fun b!4150365 () Bool)

(declare-fun tp!1265037 () Bool)

(declare-fun tp!1265036 () Bool)

(assert (=> b!4150365 (= e!2575086 (and tp!1265037 tp!1265036))))

(assert (= (and b!4149935 ((_ is ElementMatch!12327) (regex!7422 r!4008))) b!4150364))

(assert (= (and b!4149935 ((_ is Concat!19980) (regex!7422 r!4008))) b!4150365))

(assert (= (and b!4149935 ((_ is Star!12327) (regex!7422 r!4008))) b!4150366))

(assert (= (and b!4149935 ((_ is Union!12327) (regex!7422 r!4008))) b!4150367))

(declare-fun e!2575087 () Bool)

(assert (=> b!4149931 (= tp!1264970 e!2575087)))

(declare-fun b!4150368 () Bool)

(assert (=> b!4150368 (= e!2575087 tp_is_empty!21577)))

(declare-fun b!4150371 () Bool)

(declare-fun tp!1265044 () Bool)

(declare-fun tp!1265045 () Bool)

(assert (=> b!4150371 (= e!2575087 (and tp!1265044 tp!1265045))))

(declare-fun b!4150370 () Bool)

(declare-fun tp!1265043 () Bool)

(assert (=> b!4150370 (= e!2575087 tp!1265043)))

(declare-fun b!4150369 () Bool)

(declare-fun tp!1265042 () Bool)

(declare-fun tp!1265041 () Bool)

(assert (=> b!4150369 (= e!2575087 (and tp!1265042 tp!1265041))))

(assert (= (and b!4149931 ((_ is ElementMatch!12327) (regex!7422 (h!50493 rules!3756)))) b!4150368))

(assert (= (and b!4149931 ((_ is Concat!19980) (regex!7422 (h!50493 rules!3756)))) b!4150369))

(assert (= (and b!4149931 ((_ is Star!12327) (regex!7422 (h!50493 rules!3756)))) b!4150370))

(assert (= (and b!4149931 ((_ is Union!12327) (regex!7422 (h!50493 rules!3756)))) b!4150371))

(declare-fun b!4150376 () Bool)

(declare-fun e!2575090 () Bool)

(declare-fun tp!1265048 () Bool)

(assert (=> b!4150376 (= e!2575090 (and tp_is_empty!21577 tp!1265048))))

(assert (=> b!4149937 (= tp!1264974 e!2575090)))

(assert (= (and b!4149937 ((_ is Cons!45072) (t!343067 input!3238))) b!4150376))

(declare-fun b!4150377 () Bool)

(declare-fun e!2575091 () Bool)

(declare-fun tp!1265049 () Bool)

(assert (=> b!4150377 (= e!2575091 (and tp_is_empty!21577 tp!1265049))))

(assert (=> b!4149932 (= tp!1264972 e!2575091)))

(assert (= (and b!4149932 ((_ is Cons!45072) (t!343067 p!2912))) b!4150377))

(declare-fun e!2575092 () Bool)

(assert (=> b!4149922 (= tp!1264967 e!2575092)))

(declare-fun b!4150378 () Bool)

(assert (=> b!4150378 (= e!2575092 tp_is_empty!21577)))

(declare-fun b!4150381 () Bool)

(declare-fun tp!1265053 () Bool)

(declare-fun tp!1265054 () Bool)

(assert (=> b!4150381 (= e!2575092 (and tp!1265053 tp!1265054))))

(declare-fun b!4150380 () Bool)

(declare-fun tp!1265052 () Bool)

(assert (=> b!4150380 (= e!2575092 tp!1265052)))

(declare-fun b!4150379 () Bool)

(declare-fun tp!1265051 () Bool)

(declare-fun tp!1265050 () Bool)

(assert (=> b!4150379 (= e!2575092 (and tp!1265051 tp!1265050))))

(assert (= (and b!4149922 ((_ is ElementMatch!12327) (regex!7422 rBis!149))) b!4150378))

(assert (= (and b!4149922 ((_ is Concat!19980) (regex!7422 rBis!149))) b!4150379))

(assert (= (and b!4149922 ((_ is Star!12327) (regex!7422 rBis!149))) b!4150380))

(assert (= (and b!4149922 ((_ is Union!12327) (regex!7422 rBis!149))) b!4150381))

(declare-fun b!4150392 () Bool)

(declare-fun b_free!118587 () Bool)

(declare-fun b_next!119291 () Bool)

(assert (=> b!4150392 (= b_free!118587 (not b_next!119291))))

(declare-fun t!343098 () Bool)

(declare-fun tb!249119 () Bool)

(assert (=> (and b!4150392 (= (toValue!10086 (transformation!7422 (h!50493 (t!343068 rules!3756)))) (toValue!10086 (transformation!7422 r!4008))) t!343098) tb!249119))

(declare-fun result!303056 () Bool)

(assert (= result!303056 result!303008))

(assert (=> d!1227710 t!343098))

(assert (=> d!1227726 t!343098))

(declare-fun b_and!322805 () Bool)

(declare-fun tp!1265063 () Bool)

(assert (=> b!4150392 (= tp!1265063 (and (=> t!343098 result!303056) b_and!322805))))

(declare-fun b_free!118589 () Bool)

(declare-fun b_next!119293 () Bool)

(assert (=> b!4150392 (= b_free!118589 (not b_next!119293))))

(declare-fun tb!249121 () Bool)

(declare-fun t!343100 () Bool)

(assert (=> (and b!4150392 (= (toChars!9945 (transformation!7422 (h!50493 (t!343068 rules!3756)))) (toChars!9945 (transformation!7422 r!4008))) t!343100) tb!249121))

(declare-fun result!303058 () Bool)

(assert (= result!303058 result!303032))

(assert (=> d!1227726 t!343100))

(declare-fun b_and!322807 () Bool)

(declare-fun tp!1265066 () Bool)

(assert (=> b!4150392 (= tp!1265066 (and (=> t!343100 result!303058) b_and!322807))))

(declare-fun e!2575103 () Bool)

(assert (=> b!4150392 (= e!2575103 (and tp!1265063 tp!1265066))))

(declare-fun tp!1265065 () Bool)

(declare-fun b!4150391 () Bool)

(declare-fun e!2575102 () Bool)

(assert (=> b!4150391 (= e!2575102 (and tp!1265065 (inv!59680 (tag!8282 (h!50493 (t!343068 rules!3756)))) (inv!59682 (transformation!7422 (h!50493 (t!343068 rules!3756)))) e!2575103))))

(declare-fun b!4150390 () Bool)

(declare-fun e!2575104 () Bool)

(declare-fun tp!1265064 () Bool)

(assert (=> b!4150390 (= e!2575104 (and e!2575102 tp!1265064))))

(assert (=> b!4149939 (= tp!1264976 e!2575104)))

(assert (= b!4150391 b!4150392))

(assert (= b!4150390 b!4150391))

(assert (= (and b!4149939 ((_ is Cons!45073) (t!343068 rules!3756))) b!4150390))

(declare-fun m!4746057 () Bool)

(assert (=> b!4150391 m!4746057))

(declare-fun m!4746059 () Bool)

(assert (=> b!4150391 m!4746059))

(declare-fun b_lambda!122057 () Bool)

(assert (= b_lambda!122049 (or (and b!4149924 b_free!118571 (= (toValue!10086 (transformation!7422 rBis!149)) (toValue!10086 (transformation!7422 r!4008)))) (and b!4149933 b_free!118575) (and b!4149923 b_free!118579 (= (toValue!10086 (transformation!7422 (h!50493 rules!3756))) (toValue!10086 (transformation!7422 r!4008)))) (and b!4150392 b_free!118587 (= (toValue!10086 (transformation!7422 (h!50493 (t!343068 rules!3756)))) (toValue!10086 (transformation!7422 r!4008)))) b_lambda!122057)))

(declare-fun b_lambda!122059 () Bool)

(assert (= b_lambda!122047 (or (and b!4149924 b_free!118573 (= (toChars!9945 (transformation!7422 rBis!149)) (toChars!9945 (transformation!7422 r!4008)))) (and b!4149933 b_free!118577) (and b!4149923 b_free!118581 (= (toChars!9945 (transformation!7422 (h!50493 rules!3756))) (toChars!9945 (transformation!7422 r!4008)))) (and b!4150392 b_free!118589 (= (toChars!9945 (transformation!7422 (h!50493 (t!343068 rules!3756)))) (toChars!9945 (transformation!7422 r!4008)))) b_lambda!122059)))

(declare-fun b_lambda!122061 () Bool)

(assert (= b_lambda!122039 (or (and b!4149924 b_free!118571 (= (toValue!10086 (transformation!7422 rBis!149)) (toValue!10086 (transformation!7422 r!4008)))) (and b!4149933 b_free!118575) (and b!4149923 b_free!118579 (= (toValue!10086 (transformation!7422 (h!50493 rules!3756))) (toValue!10086 (transformation!7422 r!4008)))) (and b!4150392 b_free!118587 (= (toValue!10086 (transformation!7422 (h!50493 (t!343068 rules!3756)))) (toValue!10086 (transformation!7422 r!4008)))) b_lambda!122061)))

(check-sat (not b_lambda!122059) (not b_next!119277) (not b!4150278) (not d!1227766) (not b!4150271) (not d!1227754) (not b!4149976) (not b_next!119279) (not b!4150264) tp_is_empty!21577 (not b!4150270) (not b!4149998) (not b_next!119283) (not b!4150160) (not b!4150280) (not b!4150321) (not b!4150353) (not d!1227726) (not d!1227700) b_and!322799 (not d!1227720) (not d!1227696) (not tb!249091) (not d!1227776) (not b!4150265) (not bm!290716) (not d!1227812) (not b!4150336) (not b!4150277) (not b!4150365) b_and!322789 (not b!4150379) (not b!4150367) (not b!4150340) (not b!4150310) (not b!4150170) (not b_next!119275) (not b!4150023) (not b!4150028) (not b!4150020) b_and!322805 (not b!4150025) (not b!4150149) (not b!4150162) (not b!4150352) b_and!322807 (not b_lambda!122061) (not b!4150021) (not d!1227772) (not b!4150370) (not b!4150274) (not d!1227712) (not b!4150276) (not d!1227764) (not b!4150391) (not b!4150351) (not b!4150275) (not d!1227778) (not b!4150313) b_and!322795 (not b!4150150) b_and!322793 (not b!4150366) (not b_lambda!122057) (not b!4150380) (not tb!249109) (not d!1227762) (not b!4149964) b_and!322791 (not d!1227768) (not d!1227804) (not d!1227706) (not d!1227810) (not d!1227818) b_and!322797 (not d!1227774) (not b!4150027) (not d!1227820) (not b!4150273) (not b_next!119293) (not b!4149953) (not b!4150024) (not d!1227802) (not b!4150022) (not b_next!119291) (not b!4150167) (not d!1227814) (not b!4150314) (not b!4150315) (not b!4150281) (not b!4150377) (not b!4150268) (not b_next!119281) (not b!4150152) (not b!4150316) (not b!4150324) (not b!4150369) (not b!4150381) (not b!4150376) (not b!4150157) (not b!4150390) (not bm!290708) (not b!4150266) (not bm!290719) (not d!1227816) (not b!4150143) (not b!4150269) (not d!1227760) (not b_next!119285) (not b!4150371) (not b!4150267))
(check-sat (not b_next!119279) (not b_next!119283) b_and!322799 b_and!322789 (not b_next!119275) b_and!322805 b_and!322807 (not b_next!119277) b_and!322791 b_and!322797 (not b_next!119293) (not b_next!119291) (not b_next!119281) (not b_next!119285) b_and!322795 b_and!322793)
