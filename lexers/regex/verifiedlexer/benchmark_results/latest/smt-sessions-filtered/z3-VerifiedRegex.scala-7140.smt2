; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!378748 () Bool)

(assert start!378748)

(declare-fun b!4022760 () Bool)

(declare-fun b_free!111937 () Bool)

(declare-fun b_next!112641 () Bool)

(assert (=> b!4022760 (= b_free!111937 (not b_next!112641))))

(declare-fun tp!1222532 () Bool)

(declare-fun b_and!309047 () Bool)

(assert (=> b!4022760 (= tp!1222532 b_and!309047)))

(declare-fun b_free!111939 () Bool)

(declare-fun b_next!112643 () Bool)

(assert (=> b!4022760 (= b_free!111939 (not b_next!112643))))

(declare-fun tp!1222531 () Bool)

(declare-fun b_and!309049 () Bool)

(assert (=> b!4022760 (= tp!1222531 b_and!309049)))

(declare-fun b!4022763 () Bool)

(declare-fun b_free!111941 () Bool)

(declare-fun b_next!112645 () Bool)

(assert (=> b!4022763 (= b_free!111941 (not b_next!112645))))

(declare-fun tp!1222534 () Bool)

(declare-fun b_and!309051 () Bool)

(assert (=> b!4022763 (= tp!1222534 b_and!309051)))

(declare-fun b_free!111943 () Bool)

(declare-fun b_next!112647 () Bool)

(assert (=> b!4022763 (= b_free!111943 (not b_next!112647))))

(declare-fun tp!1222535 () Bool)

(declare-fun b_and!309053 () Bool)

(assert (=> b!4022763 (= tp!1222535 b_and!309053)))

(declare-fun b!4022750 () Bool)

(declare-fun res!1636939 () Bool)

(declare-fun e!2495518 () Bool)

(assert (=> b!4022750 (=> (not res!1636939) (not e!2495518))))

(declare-datatypes ((C!23732 0))(
  ( (C!23733 (val!13960 Int)) )
))
(declare-datatypes ((List!43180 0))(
  ( (Nil!43056) (Cons!43056 (h!48476 C!23732) (t!333771 List!43180)) )
))
(declare-fun prefix!494 () List!43180)

(declare-fun newSuffix!27 () List!43180)

(declare-fun lt!1429208 () List!43180)

(declare-fun newSuffixResult!27 () List!43180)

(declare-fun ++!11270 (List!43180 List!43180) List!43180)

(assert (=> b!4022750 (= res!1636939 (= (++!11270 lt!1429208 newSuffixResult!27) (++!11270 prefix!494 newSuffix!27)))))

(declare-fun b!4022751 () Bool)

(declare-fun e!2495515 () Bool)

(declare-fun e!2495510 () Bool)

(declare-fun tp!1222527 () Bool)

(assert (=> b!4022751 (= e!2495515 (and e!2495510 tp!1222527))))

(declare-fun b!4022752 () Bool)

(declare-fun e!2495516 () Bool)

(declare-fun tp_is_empty!20517 () Bool)

(declare-fun tp!1222526 () Bool)

(assert (=> b!4022752 (= e!2495516 (and tp_is_empty!20517 tp!1222526))))

(declare-fun b!4022753 () Bool)

(declare-fun res!1636943 () Bool)

(declare-fun e!2495514 () Bool)

(assert (=> b!4022753 (=> (not res!1636943) (not e!2495514))))

(declare-fun suffix!1299 () List!43180)

(declare-fun size!32191 (List!43180) Int)

(assert (=> b!4022753 (= res!1636943 (>= (size!32191 suffix!1299) (size!32191 newSuffix!27)))))

(declare-fun e!2495511 () Bool)

(declare-datatypes ((IArray!26163 0))(
  ( (IArray!26164 (innerList!13139 List!43180)) )
))
(declare-datatypes ((Conc!13079 0))(
  ( (Node!13079 (left!32451 Conc!13079) (right!32781 Conc!13079) (csize!26388 Int) (cheight!13290 Int)) (Leaf!20220 (xs!16385 IArray!26163) (csize!26389 Int)) (Empty!13079) )
))
(declare-datatypes ((BalanceConc!25752 0))(
  ( (BalanceConc!25753 (c!695198 Conc!13079)) )
))
(declare-datatypes ((List!43181 0))(
  ( (Nil!43057) (Cons!43057 (h!48477 (_ BitVec 16)) (t!333772 List!43181)) )
))
(declare-datatypes ((TokenValue!7098 0))(
  ( (FloatLiteralValue!14196 (text!50131 List!43181)) (TokenValueExt!7097 (__x!26413 Int)) (Broken!35490 (value!216346 List!43181)) (Object!7221) (End!7098) (Def!7098) (Underscore!7098) (Match!7098) (Else!7098) (Error!7098) (Case!7098) (If!7098) (Extends!7098) (Abstract!7098) (Class!7098) (Val!7098) (DelimiterValue!14196 (del!7158 List!43181)) (KeywordValue!7104 (value!216347 List!43181)) (CommentValue!14196 (value!216348 List!43181)) (WhitespaceValue!14196 (value!216349 List!43181)) (IndentationValue!7098 (value!216350 List!43181)) (String!49207) (Int32!7098) (Broken!35491 (value!216351 List!43181)) (Boolean!7099) (Unit!62225) (OperatorValue!7101 (op!7158 List!43181)) (IdentifierValue!14196 (value!216352 List!43181)) (IdentifierValue!14197 (value!216353 List!43181)) (WhitespaceValue!14197 (value!216354 List!43181)) (True!14196) (False!14196) (Broken!35492 (value!216355 List!43181)) (Broken!35493 (value!216356 List!43181)) (True!14197) (RightBrace!7098) (RightBracket!7098) (Colon!7098) (Null!7098) (Comma!7098) (LeftBracket!7098) (False!14197) (LeftBrace!7098) (ImaginaryLiteralValue!7098 (text!50132 List!43181)) (StringLiteralValue!21294 (value!216357 List!43181)) (EOFValue!7098 (value!216358 List!43181)) (IdentValue!7098 (value!216359 List!43181)) (DelimiterValue!14197 (value!216360 List!43181)) (DedentValue!7098 (value!216361 List!43181)) (NewLineValue!7098 (value!216362 List!43181)) (IntegerValue!21294 (value!216363 (_ BitVec 32)) (text!50133 List!43181)) (IntegerValue!21295 (value!216364 Int) (text!50134 List!43181)) (Times!7098) (Or!7098) (Equal!7098) (Minus!7098) (Broken!35494 (value!216365 List!43181)) (And!7098) (Div!7098) (LessEqual!7098) (Mod!7098) (Concat!18871) (Not!7098) (Plus!7098) (SpaceValue!7098 (value!216366 List!43181)) (IntegerValue!21296 (value!216367 Int) (text!50135 List!43181)) (StringLiteralValue!21295 (text!50136 List!43181)) (FloatLiteralValue!14197 (text!50137 List!43181)) (BytesLiteralValue!7098 (value!216368 List!43181)) (CommentValue!14197 (value!216369 List!43181)) (StringLiteralValue!21296 (value!216370 List!43181)) (ErrorTokenValue!7098 (msg!7159 List!43181)) )
))
(declare-datatypes ((Regex!11773 0))(
  ( (ElementMatch!11773 (c!695199 C!23732)) (Concat!18872 (regOne!24058 Regex!11773) (regTwo!24058 Regex!11773)) (EmptyExpr!11773) (Star!11773 (reg!12102 Regex!11773)) (EmptyLang!11773) (Union!11773 (regOne!24059 Regex!11773) (regTwo!24059 Regex!11773)) )
))
(declare-datatypes ((String!49208 0))(
  ( (String!49209 (value!216371 String)) )
))
(declare-datatypes ((TokenValueInjection!13624 0))(
  ( (TokenValueInjection!13625 (toValue!9380 Int) (toChars!9239 Int)) )
))
(declare-datatypes ((Rule!13536 0))(
  ( (Rule!13537 (regex!6868 Regex!11773) (tag!7728 String!49208) (isSeparator!6868 Bool) (transformation!6868 TokenValueInjection!13624)) )
))
(declare-datatypes ((Token!12874 0))(
  ( (Token!12875 (value!216372 TokenValue!7098) (rule!9922 Rule!13536) (size!32192 Int) (originalCharacters!7468 List!43180)) )
))
(declare-fun token!484 () Token!12874)

(declare-fun tp!1222525 () Bool)

(declare-fun b!4022754 () Bool)

(declare-fun e!2495520 () Bool)

(declare-fun inv!57507 (String!49208) Bool)

(declare-fun inv!57510 (TokenValueInjection!13624) Bool)

(assert (=> b!4022754 (= e!2495520 (and tp!1222525 (inv!57507 (tag!7728 (rule!9922 token!484))) (inv!57510 (transformation!6868 (rule!9922 token!484))) e!2495511))))

(declare-fun b!4022756 () Bool)

(declare-fun e!2495509 () Bool)

(declare-fun tp!1222528 () Bool)

(assert (=> b!4022756 (= e!2495509 (and tp_is_empty!20517 tp!1222528))))

(declare-fun b!4022757 () Bool)

(declare-fun e!2495508 () Bool)

(declare-fun tp!1222536 () Bool)

(assert (=> b!4022757 (= e!2495508 (and tp_is_empty!20517 tp!1222536))))

(declare-fun b!4022758 () Bool)

(assert (=> b!4022758 (= e!2495518 false)))

(declare-datatypes ((LexerInterface!6457 0))(
  ( (LexerInterfaceExt!6454 (__x!26414 Int)) (Lexer!6455) )
))
(declare-fun thiss!21717 () LexerInterface!6457)

(declare-datatypes ((tuple2!42178 0))(
  ( (tuple2!42179 (_1!24223 Token!12874) (_2!24223 List!43180)) )
))
(declare-datatypes ((Option!9282 0))(
  ( (None!9281) (Some!9281 (v!39657 tuple2!42178)) )
))
(declare-fun lt!1429209 () Option!9282)

(declare-datatypes ((List!43182 0))(
  ( (Nil!43058) (Cons!43058 (h!48478 Rule!13536) (t!333773 List!43182)) )
))
(declare-fun rules!2999 () List!43182)

(declare-fun maxPrefix!3755 (LexerInterface!6457 List!43182 List!43180) Option!9282)

(assert (=> b!4022758 (= lt!1429209 (maxPrefix!3755 thiss!21717 rules!2999 (++!11270 prefix!494 suffix!1299)))))

(declare-fun b!4022759 () Bool)

(declare-fun e!2495507 () Bool)

(declare-fun tp!1222530 () Bool)

(declare-fun inv!21 (TokenValue!7098) Bool)

(assert (=> b!4022759 (= e!2495507 (and (inv!21 (value!216372 token!484)) e!2495520 tp!1222530))))

(declare-fun e!2495512 () Bool)

(assert (=> b!4022760 (= e!2495512 (and tp!1222532 tp!1222531))))

(declare-fun b!4022761 () Bool)

(assert (=> b!4022761 (= e!2495514 e!2495518)))

(declare-fun res!1636942 () Bool)

(assert (=> b!4022761 (=> (not res!1636942) (not e!2495518))))

(assert (=> b!4022761 (= res!1636942 (>= (size!32191 prefix!494) (size!32191 lt!1429208)))))

(declare-fun list!16008 (BalanceConc!25752) List!43180)

(declare-fun charsOf!4684 (Token!12874) BalanceConc!25752)

(assert (=> b!4022761 (= lt!1429208 (list!16008 (charsOf!4684 token!484)))))

(declare-fun b!4022755 () Bool)

(declare-fun res!1636937 () Bool)

(assert (=> b!4022755 (=> (not res!1636937) (not e!2495514))))

(declare-fun isEmpty!25706 (List!43182) Bool)

(assert (=> b!4022755 (= res!1636937 (not (isEmpty!25706 rules!2999)))))

(declare-fun res!1636940 () Bool)

(assert (=> start!378748 (=> (not res!1636940) (not e!2495514))))

(get-info :version)

(assert (=> start!378748 (= res!1636940 ((_ is Lexer!6455) thiss!21717))))

(assert (=> start!378748 e!2495514))

(declare-fun e!2495513 () Bool)

(assert (=> start!378748 e!2495513))

(declare-fun inv!57511 (Token!12874) Bool)

(assert (=> start!378748 (and (inv!57511 token!484) e!2495507)))

(assert (=> start!378748 e!2495508))

(assert (=> start!378748 e!2495516))

(assert (=> start!378748 true))

(assert (=> start!378748 e!2495515))

(assert (=> start!378748 e!2495509))

(declare-fun b!4022762 () Bool)

(declare-fun tp!1222529 () Bool)

(assert (=> b!4022762 (= e!2495513 (and tp_is_empty!20517 tp!1222529))))

(assert (=> b!4022763 (= e!2495511 (and tp!1222534 tp!1222535))))

(declare-fun b!4022764 () Bool)

(declare-fun tp!1222533 () Bool)

(assert (=> b!4022764 (= e!2495510 (and tp!1222533 (inv!57507 (tag!7728 (h!48478 rules!2999))) (inv!57510 (transformation!6868 (h!48478 rules!2999))) e!2495512))))

(declare-fun b!4022765 () Bool)

(declare-fun res!1636941 () Bool)

(assert (=> b!4022765 (=> (not res!1636941) (not e!2495514))))

(declare-fun isPrefix!3955 (List!43180 List!43180) Bool)

(assert (=> b!4022765 (= res!1636941 (isPrefix!3955 newSuffix!27 suffix!1299))))

(declare-fun b!4022766 () Bool)

(declare-fun res!1636938 () Bool)

(assert (=> b!4022766 (=> (not res!1636938) (not e!2495514))))

(declare-fun rulesInvariant!5800 (LexerInterface!6457 List!43182) Bool)

(assert (=> b!4022766 (= res!1636938 (rulesInvariant!5800 thiss!21717 rules!2999))))

(assert (= (and start!378748 res!1636940) b!4022755))

(assert (= (and b!4022755 res!1636937) b!4022766))

(assert (= (and b!4022766 res!1636938) b!4022753))

(assert (= (and b!4022753 res!1636943) b!4022765))

(assert (= (and b!4022765 res!1636941) b!4022761))

(assert (= (and b!4022761 res!1636942) b!4022750))

(assert (= (and b!4022750 res!1636939) b!4022758))

(assert (= (and start!378748 ((_ is Cons!43056) prefix!494)) b!4022762))

(assert (= b!4022754 b!4022763))

(assert (= b!4022759 b!4022754))

(assert (= start!378748 b!4022759))

(assert (= (and start!378748 ((_ is Cons!43056) suffix!1299)) b!4022757))

(assert (= (and start!378748 ((_ is Cons!43056) newSuffix!27)) b!4022752))

(assert (= b!4022764 b!4022760))

(assert (= b!4022751 b!4022764))

(assert (= (and start!378748 ((_ is Cons!43058) rules!2999)) b!4022751))

(assert (= (and start!378748 ((_ is Cons!43056) newSuffixResult!27)) b!4022756))

(declare-fun m!4613899 () Bool)

(assert (=> b!4022759 m!4613899))

(declare-fun m!4613901 () Bool)

(assert (=> b!4022764 m!4613901))

(declare-fun m!4613903 () Bool)

(assert (=> b!4022764 m!4613903))

(declare-fun m!4613905 () Bool)

(assert (=> b!4022761 m!4613905))

(declare-fun m!4613907 () Bool)

(assert (=> b!4022761 m!4613907))

(declare-fun m!4613909 () Bool)

(assert (=> b!4022761 m!4613909))

(assert (=> b!4022761 m!4613909))

(declare-fun m!4613911 () Bool)

(assert (=> b!4022761 m!4613911))

(declare-fun m!4613913 () Bool)

(assert (=> b!4022754 m!4613913))

(declare-fun m!4613915 () Bool)

(assert (=> b!4022754 m!4613915))

(declare-fun m!4613917 () Bool)

(assert (=> b!4022750 m!4613917))

(declare-fun m!4613919 () Bool)

(assert (=> b!4022750 m!4613919))

(declare-fun m!4613921 () Bool)

(assert (=> b!4022758 m!4613921))

(assert (=> b!4022758 m!4613921))

(declare-fun m!4613923 () Bool)

(assert (=> b!4022758 m!4613923))

(declare-fun m!4613925 () Bool)

(assert (=> b!4022755 m!4613925))

(declare-fun m!4613927 () Bool)

(assert (=> start!378748 m!4613927))

(declare-fun m!4613929 () Bool)

(assert (=> b!4022765 m!4613929))

(declare-fun m!4613931 () Bool)

(assert (=> b!4022753 m!4613931))

(declare-fun m!4613933 () Bool)

(assert (=> b!4022753 m!4613933))

(declare-fun m!4613935 () Bool)

(assert (=> b!4022766 m!4613935))

(check-sat b_and!309051 b_and!309053 (not b_next!112641) (not b!4022758) tp_is_empty!20517 (not b_next!112643) (not b!4022756) (not b!4022755) (not b!4022759) (not b!4022751) (not b!4022757) (not b_next!112645) (not start!378748) (not b!4022764) (not b!4022753) (not b!4022752) (not b!4022762) b_and!309049 b_and!309047 (not b!4022750) (not b!4022754) (not b_next!112647) (not b!4022765) (not b!4022766) (not b!4022761))
(check-sat b_and!309051 b_and!309053 (not b_next!112641) (not b_next!112643) b_and!309049 b_and!309047 (not b_next!112647) (not b_next!112645))
