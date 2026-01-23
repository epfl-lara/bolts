; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54392 () Bool)

(assert start!54392)

(declare-fun b!585213 () Bool)

(declare-fun b_free!16317 () Bool)

(declare-fun b_next!16333 () Bool)

(assert (=> b!585213 (= b_free!16317 (not b_next!16333))))

(declare-fun tp!182577 () Bool)

(declare-fun b_and!57643 () Bool)

(assert (=> b!585213 (= tp!182577 b_and!57643)))

(declare-fun b_free!16319 () Bool)

(declare-fun b_next!16335 () Bool)

(assert (=> b!585213 (= b_free!16319 (not b_next!16335))))

(declare-fun tp!182575 () Bool)

(declare-fun b_and!57645 () Bool)

(assert (=> b!585213 (= tp!182575 b_and!57645)))

(declare-fun b!585202 () Bool)

(declare-fun b_free!16321 () Bool)

(declare-fun b_next!16337 () Bool)

(assert (=> b!585202 (= b_free!16321 (not b_next!16337))))

(declare-fun tp!182582 () Bool)

(declare-fun b_and!57647 () Bool)

(assert (=> b!585202 (= tp!182582 b_and!57647)))

(declare-fun b_free!16323 () Bool)

(declare-fun b_next!16339 () Bool)

(assert (=> b!585202 (= b_free!16323 (not b_next!16339))))

(declare-fun tp!182576 () Bool)

(declare-fun b_and!57649 () Bool)

(assert (=> b!585202 (= tp!182576 b_and!57649)))

(declare-fun b!585197 () Bool)

(declare-datatypes ((Unit!10448 0))(
  ( (Unit!10449) )
))
(declare-fun e!353712 () Unit!10448)

(declare-fun Unit!10450 () Unit!10448)

(assert (=> b!585197 (= e!353712 Unit!10450)))

(declare-fun b!585198 () Bool)

(declare-fun e!353705 () Bool)

(declare-fun e!353713 () Bool)

(assert (=> b!585198 (= e!353705 e!353713)))

(declare-fun res!252076 () Bool)

(assert (=> b!585198 (=> (not res!252076) (not e!353713))))

(declare-datatypes ((C!3836 0))(
  ( (C!3837 (val!2144 Int)) )
))
(declare-datatypes ((Regex!1457 0))(
  ( (ElementMatch!1457 (c!109421 C!3836)) (Concat!2604 (regOne!3426 Regex!1457) (regTwo!3426 Regex!1457)) (EmptyExpr!1457) (Star!1457 (reg!1786 Regex!1457)) (EmptyLang!1457) (Union!1457 (regOne!3427 Regex!1457) (regTwo!3427 Regex!1457)) )
))
(declare-datatypes ((List!5762 0))(
  ( (Nil!5752) (Cons!5752 (h!11153 (_ BitVec 16)) (t!78471 List!5762)) )
))
(declare-datatypes ((List!5763 0))(
  ( (Nil!5753) (Cons!5753 (h!11154 C!3836) (t!78472 List!5763)) )
))
(declare-datatypes ((IArray!3681 0))(
  ( (IArray!3682 (innerList!1898 List!5763)) )
))
(declare-datatypes ((Conc!1840 0))(
  ( (Node!1840 (left!4690 Conc!1840) (right!5020 Conc!1840) (csize!3910 Int) (cheight!2051 Int)) (Leaf!2909 (xs!4477 IArray!3681) (csize!3911 Int)) (Empty!1840) )
))
(declare-datatypes ((BalanceConc!3688 0))(
  ( (BalanceConc!3689 (c!109422 Conc!1840)) )
))
(declare-datatypes ((TokenValue!1147 0))(
  ( (FloatLiteralValue!2294 (text!8474 List!5762)) (TokenValueExt!1146 (__x!4192 Int)) (Broken!5735 (value!36846 List!5762)) (Object!1156) (End!1147) (Def!1147) (Underscore!1147) (Match!1147) (Else!1147) (Error!1147) (Case!1147) (If!1147) (Extends!1147) (Abstract!1147) (Class!1147) (Val!1147) (DelimiterValue!2294 (del!1207 List!5762)) (KeywordValue!1153 (value!36847 List!5762)) (CommentValue!2294 (value!36848 List!5762)) (WhitespaceValue!2294 (value!36849 List!5762)) (IndentationValue!1147 (value!36850 List!5762)) (String!7478) (Int32!1147) (Broken!5736 (value!36851 List!5762)) (Boolean!1148) (Unit!10451) (OperatorValue!1150 (op!1207 List!5762)) (IdentifierValue!2294 (value!36852 List!5762)) (IdentifierValue!2295 (value!36853 List!5762)) (WhitespaceValue!2295 (value!36854 List!5762)) (True!2294) (False!2294) (Broken!5737 (value!36855 List!5762)) (Broken!5738 (value!36856 List!5762)) (True!2295) (RightBrace!1147) (RightBracket!1147) (Colon!1147) (Null!1147) (Comma!1147) (LeftBracket!1147) (False!2295) (LeftBrace!1147) (ImaginaryLiteralValue!1147 (text!8475 List!5762)) (StringLiteralValue!3441 (value!36857 List!5762)) (EOFValue!1147 (value!36858 List!5762)) (IdentValue!1147 (value!36859 List!5762)) (DelimiterValue!2295 (value!36860 List!5762)) (DedentValue!1147 (value!36861 List!5762)) (NewLineValue!1147 (value!36862 List!5762)) (IntegerValue!3441 (value!36863 (_ BitVec 32)) (text!8476 List!5762)) (IntegerValue!3442 (value!36864 Int) (text!8477 List!5762)) (Times!1147) (Or!1147) (Equal!1147) (Minus!1147) (Broken!5739 (value!36865 List!5762)) (And!1147) (Div!1147) (LessEqual!1147) (Mod!1147) (Concat!2605) (Not!1147) (Plus!1147) (SpaceValue!1147 (value!36866 List!5762)) (IntegerValue!3443 (value!36867 Int) (text!8478 List!5762)) (StringLiteralValue!3442 (text!8479 List!5762)) (FloatLiteralValue!2295 (text!8480 List!5762)) (BytesLiteralValue!1147 (value!36868 List!5762)) (CommentValue!2295 (value!36869 List!5762)) (StringLiteralValue!3443 (value!36870 List!5762)) (ErrorTokenValue!1147 (msg!1208 List!5762)) )
))
(declare-datatypes ((String!7479 0))(
  ( (String!7480 (value!36871 String)) )
))
(declare-datatypes ((TokenValueInjection!2062 0))(
  ( (TokenValueInjection!2063 (toValue!1998 Int) (toChars!1857 Int)) )
))
(declare-datatypes ((Rule!2046 0))(
  ( (Rule!2047 (regex!1123 Regex!1457) (tag!1385 String!7479) (isSeparator!1123 Bool) (transformation!1123 TokenValueInjection!2062)) )
))
(declare-datatypes ((Token!1982 0))(
  ( (Token!1983 (value!36872 TokenValue!1147) (rule!1885 Rule!2046) (size!4572 Int) (originalCharacters!1162 List!5763)) )
))
(declare-datatypes ((tuple2!6724 0))(
  ( (tuple2!6725 (_1!3626 Token!1982) (_2!3626 List!5763)) )
))
(declare-datatypes ((Option!1474 0))(
  ( (None!1473) (Some!1473 (v!16346 tuple2!6724)) )
))
(declare-fun lt!248106 () Option!1474)

(get-info :version)

(assert (=> b!585198 (= res!252076 ((_ is Some!1473) lt!248106))))

(declare-datatypes ((List!5764 0))(
  ( (Nil!5754) (Cons!5754 (h!11155 Rule!2046) (t!78473 List!5764)) )
))
(declare-fun rules!3103 () List!5764)

(declare-datatypes ((LexerInterface!1009 0))(
  ( (LexerInterfaceExt!1006 (__x!4193 Int)) (Lexer!1007) )
))
(declare-fun thiss!22590 () LexerInterface!1009)

(declare-fun input!2705 () List!5763)

(declare-fun maxPrefix!707 (LexerInterface!1009 List!5764 List!5763) Option!1474)

(assert (=> b!585198 (= lt!248106 (maxPrefix!707 thiss!22590 rules!3103 input!2705))))

(declare-fun b!585199 () Bool)

(declare-fun e!353715 () Bool)

(declare-fun e!353717 () Bool)

(assert (=> b!585199 (= e!353715 e!353717)))

(declare-fun res!252074 () Bool)

(assert (=> b!585199 (=> (not res!252074) (not e!353717))))

(declare-fun lt!248111 () List!5763)

(assert (=> b!585199 (= res!252074 (= lt!248111 input!2705))))

(declare-fun token!491 () Token!1982)

(declare-fun list!2398 (BalanceConc!3688) List!5763)

(declare-fun charsOf!752 (Token!1982) BalanceConc!3688)

(assert (=> b!585199 (= lt!248111 (list!2398 (charsOf!752 token!491)))))

(declare-fun b!585200 () Bool)

(declare-fun e!353720 () Bool)

(declare-fun e!353718 () Bool)

(declare-fun tp!182579 () Bool)

(assert (=> b!585200 (= e!353720 (and e!353718 tp!182579))))

(declare-fun b!585201 () Bool)

(declare-fun e!353710 () Bool)

(assert (=> b!585201 (= e!353717 e!353710)))

(declare-fun res!252078 () Bool)

(assert (=> b!585201 (=> (not res!252078) (not e!353710))))

(declare-fun lt!248113 () Option!1474)

(declare-fun isDefined!1285 (Option!1474) Bool)

(assert (=> b!585201 (= res!252078 (isDefined!1285 lt!248113))))

(declare-fun lt!248109 () List!5763)

(assert (=> b!585201 (= lt!248113 (maxPrefix!707 thiss!22590 rules!3103 lt!248109))))

(declare-fun suffix!1342 () List!5763)

(declare-fun ++!1611 (List!5763 List!5763) List!5763)

(assert (=> b!585201 (= lt!248109 (++!1611 input!2705 suffix!1342))))

(declare-fun e!353711 () Bool)

(assert (=> b!585202 (= e!353711 (and tp!182582 tp!182576))))

(declare-fun b!585203 () Bool)

(declare-fun e!353709 () Bool)

(declare-fun tp!182581 () Bool)

(declare-fun inv!7259 (String!7479) Bool)

(declare-fun inv!7262 (TokenValueInjection!2062) Bool)

(assert (=> b!585203 (= e!353709 (and tp!182581 (inv!7259 (tag!1385 (rule!1885 token!491))) (inv!7262 (transformation!1123 (rule!1885 token!491))) e!353711))))

(declare-fun b!585204 () Bool)

(declare-fun res!252073 () Bool)

(assert (=> b!585204 (=> (not res!252073) (not e!353715))))

(declare-fun isEmpty!4153 (List!5763) Bool)

(assert (=> b!585204 (= res!252073 (not (isEmpty!4153 input!2705)))))

(declare-fun b!585205 () Bool)

(declare-fun e!353708 () Bool)

(declare-fun tp!182583 () Bool)

(assert (=> b!585205 (= e!353718 (and tp!182583 (inv!7259 (tag!1385 (h!11155 rules!3103))) (inv!7262 (transformation!1123 (h!11155 rules!3103))) e!353708))))

(declare-fun b!585206 () Bool)

(declare-fun e!353719 () Bool)

(declare-fun tp_is_empty!3269 () Bool)

(declare-fun tp!182580 () Bool)

(assert (=> b!585206 (= e!353719 (and tp_is_empty!3269 tp!182580))))

(declare-fun res!252075 () Bool)

(assert (=> start!54392 (=> (not res!252075) (not e!353715))))

(assert (=> start!54392 (= res!252075 ((_ is Lexer!1007) thiss!22590))))

(assert (=> start!54392 e!353715))

(assert (=> start!54392 e!353719))

(assert (=> start!54392 e!353720))

(declare-fun e!353707 () Bool)

(declare-fun inv!7263 (Token!1982) Bool)

(assert (=> start!54392 (and (inv!7263 token!491) e!353707)))

(assert (=> start!54392 true))

(declare-fun e!353721 () Bool)

(assert (=> start!54392 e!353721))

(declare-fun b!585207 () Bool)

(declare-fun tp!182578 () Bool)

(assert (=> b!585207 (= e!353721 (and tp_is_empty!3269 tp!182578))))

(declare-fun b!585208 () Bool)

(assert (=> b!585208 (= e!353710 e!353705)))

(declare-fun res!252079 () Bool)

(assert (=> b!585208 (=> (not res!252079) (not e!353705))))

(declare-fun lt!248114 () tuple2!6724)

(assert (=> b!585208 (= res!252079 (and (= (_1!3626 lt!248114) token!491) (= (_2!3626 lt!248114) suffix!1342)))))

(declare-fun get!2199 (Option!1474) tuple2!6724)

(assert (=> b!585208 (= lt!248114 (get!2199 lt!248113))))

(declare-fun b!585209 () Bool)

(declare-fun res!252080 () Bool)

(assert (=> b!585209 (=> (not res!252080) (not e!353713))))

(assert (=> b!585209 (= res!252080 (= (++!1611 lt!248111 suffix!1342) lt!248109))))

(declare-fun b!585210 () Bool)

(declare-fun res!252072 () Bool)

(assert (=> b!585210 (=> (not res!252072) (not e!353715))))

(declare-fun isEmpty!4154 (List!5764) Bool)

(assert (=> b!585210 (= res!252072 (not (isEmpty!4154 rules!3103)))))

(declare-fun b!585211 () Bool)

(declare-fun res!252077 () Bool)

(assert (=> b!585211 (=> (not res!252077) (not e!353715))))

(declare-fun rulesInvariant!972 (LexerInterface!1009 List!5764) Bool)

(assert (=> b!585211 (= res!252077 (rulesInvariant!972 thiss!22590 rules!3103))))

(declare-fun b!585212 () Bool)

(assert (=> b!585212 (= e!353713 (not true))))

(declare-fun lt!248118 () Bool)

(declare-fun lt!248115 () List!5763)

(declare-fun isPrefix!751 (List!5763 List!5763) Bool)

(assert (=> b!585212 (= lt!248118 (isPrefix!751 lt!248115 input!2705))))

(declare-fun lt!248116 () List!5763)

(declare-fun getSuffix!268 (List!5763 List!5763) List!5763)

(assert (=> b!585212 (= lt!248116 (getSuffix!268 input!2705 lt!248115))))

(assert (=> b!585212 (isPrefix!751 lt!248115 (++!1611 lt!248115 (_2!3626 (v!16346 lt!248106))))))

(declare-fun lt!248110 () Unit!10448)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!596 (List!5763 List!5763) Unit!10448)

(assert (=> b!585212 (= lt!248110 (lemmaConcatTwoListThenFirstIsPrefix!596 lt!248115 (_2!3626 (v!16346 lt!248106))))))

(declare-fun lt!248108 () Unit!10448)

(declare-fun lemmaCharactersSize!182 (Token!1982) Unit!10448)

(assert (=> b!585212 (= lt!248108 (lemmaCharactersSize!182 token!491))))

(declare-fun lt!248112 () Unit!10448)

(assert (=> b!585212 (= lt!248112 (lemmaCharactersSize!182 (_1!3626 (v!16346 lt!248106))))))

(declare-fun lt!248107 () Unit!10448)

(assert (=> b!585212 (= lt!248107 e!353712)))

(declare-fun c!109420 () Bool)

(declare-fun size!4573 (List!5763) Int)

(assert (=> b!585212 (= c!109420 (> (size!4573 lt!248115) (size!4573 lt!248111)))))

(assert (=> b!585212 (= lt!248115 (list!2398 (charsOf!752 (_1!3626 (v!16346 lt!248106)))))))

(assert (=> b!585212 (= lt!248106 (Some!1473 (v!16346 lt!248106)))))

(declare-fun lt!248117 () Unit!10448)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!196 (List!5763 List!5763 List!5763 List!5763) Unit!10448)

(assert (=> b!585212 (= lt!248117 (lemmaConcatSameAndSameSizesThenSameLists!196 lt!248111 suffix!1342 input!2705 suffix!1342))))

(assert (=> b!585213 (= e!353708 (and tp!182577 tp!182575))))

(declare-fun b!585214 () Bool)

(declare-fun Unit!10452 () Unit!10448)

(assert (=> b!585214 (= e!353712 Unit!10452)))

(assert (=> b!585214 false))

(declare-fun b!585215 () Bool)

(declare-fun tp!182584 () Bool)

(declare-fun inv!21 (TokenValue!1147) Bool)

(assert (=> b!585215 (= e!353707 (and (inv!21 (value!36872 token!491)) e!353709 tp!182584))))

(assert (= (and start!54392 res!252075) b!585210))

(assert (= (and b!585210 res!252072) b!585211))

(assert (= (and b!585211 res!252077) b!585204))

(assert (= (and b!585204 res!252073) b!585199))

(assert (= (and b!585199 res!252074) b!585201))

(assert (= (and b!585201 res!252078) b!585208))

(assert (= (and b!585208 res!252079) b!585198))

(assert (= (and b!585198 res!252076) b!585209))

(assert (= (and b!585209 res!252080) b!585212))

(assert (= (and b!585212 c!109420) b!585214))

(assert (= (and b!585212 (not c!109420)) b!585197))

(assert (= (and start!54392 ((_ is Cons!5753) suffix!1342)) b!585206))

(assert (= b!585205 b!585213))

(assert (= b!585200 b!585205))

(assert (= (and start!54392 ((_ is Cons!5754) rules!3103)) b!585200))

(assert (= b!585203 b!585202))

(assert (= b!585215 b!585203))

(assert (= start!54392 b!585215))

(assert (= (and start!54392 ((_ is Cons!5753) input!2705)) b!585207))

(declare-fun m!845095 () Bool)

(assert (=> b!585208 m!845095))

(declare-fun m!845097 () Bool)

(assert (=> b!585203 m!845097))

(declare-fun m!845099 () Bool)

(assert (=> b!585203 m!845099))

(declare-fun m!845101 () Bool)

(assert (=> b!585215 m!845101))

(declare-fun m!845103 () Bool)

(assert (=> b!585212 m!845103))

(declare-fun m!845105 () Bool)

(assert (=> b!585212 m!845105))

(declare-fun m!845107 () Bool)

(assert (=> b!585212 m!845107))

(assert (=> b!585212 m!845107))

(declare-fun m!845109 () Bool)

(assert (=> b!585212 m!845109))

(declare-fun m!845111 () Bool)

(assert (=> b!585212 m!845111))

(declare-fun m!845113 () Bool)

(assert (=> b!585212 m!845113))

(declare-fun m!845115 () Bool)

(assert (=> b!585212 m!845115))

(declare-fun m!845117 () Bool)

(assert (=> b!585212 m!845117))

(assert (=> b!585212 m!845117))

(declare-fun m!845119 () Bool)

(assert (=> b!585212 m!845119))

(declare-fun m!845121 () Bool)

(assert (=> b!585212 m!845121))

(declare-fun m!845123 () Bool)

(assert (=> b!585212 m!845123))

(declare-fun m!845125 () Bool)

(assert (=> b!585212 m!845125))

(declare-fun m!845127 () Bool)

(assert (=> b!585211 m!845127))

(declare-fun m!845129 () Bool)

(assert (=> b!585204 m!845129))

(declare-fun m!845131 () Bool)

(assert (=> b!585205 m!845131))

(declare-fun m!845133 () Bool)

(assert (=> b!585205 m!845133))

(declare-fun m!845135 () Bool)

(assert (=> b!585201 m!845135))

(declare-fun m!845137 () Bool)

(assert (=> b!585201 m!845137))

(declare-fun m!845139 () Bool)

(assert (=> b!585201 m!845139))

(declare-fun m!845141 () Bool)

(assert (=> start!54392 m!845141))

(declare-fun m!845143 () Bool)

(assert (=> b!585199 m!845143))

(assert (=> b!585199 m!845143))

(declare-fun m!845145 () Bool)

(assert (=> b!585199 m!845145))

(declare-fun m!845147 () Bool)

(assert (=> b!585210 m!845147))

(declare-fun m!845149 () Bool)

(assert (=> b!585209 m!845149))

(declare-fun m!845151 () Bool)

(assert (=> b!585198 m!845151))

(check-sat (not b!585205) (not b_next!16337) (not b_next!16333) b_and!57649 (not b!585207) (not b_next!16339) tp_is_empty!3269 (not b!585201) b_and!57645 (not b!585209) (not b!585204) (not b_next!16335) (not b!585208) (not b!585203) b_and!57647 (not b!585206) (not start!54392) (not b!585211) (not b!585210) (not b!585200) (not b!585199) (not b!585212) (not b!585215) (not b!585198) b_and!57643)
(check-sat b_and!57647 (not b_next!16337) (not b_next!16333) b_and!57649 (not b_next!16339) b_and!57645 b_and!57643 (not b_next!16335))
