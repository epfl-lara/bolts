; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!179774 () Bool)

(assert start!179774)

(declare-fun b!1816975 () Bool)

(declare-fun b_free!50223 () Bool)

(declare-fun b_next!50927 () Bool)

(assert (=> b!1816975 (= b_free!50223 (not b_next!50927))))

(declare-fun tp!513341 () Bool)

(declare-fun b_and!140693 () Bool)

(assert (=> b!1816975 (= tp!513341 b_and!140693)))

(declare-fun b_free!50225 () Bool)

(declare-fun b_next!50929 () Bool)

(assert (=> b!1816975 (= b_free!50225 (not b_next!50929))))

(declare-fun tp!513342 () Bool)

(declare-fun b_and!140695 () Bool)

(assert (=> b!1816975 (= tp!513342 b_and!140695)))

(declare-fun b!1816972 () Bool)

(declare-fun b_free!50227 () Bool)

(declare-fun b_next!50931 () Bool)

(assert (=> b!1816972 (= b_free!50227 (not b_next!50931))))

(declare-fun tp!513345 () Bool)

(declare-fun b_and!140697 () Bool)

(assert (=> b!1816972 (= tp!513345 b_and!140697)))

(declare-fun b_free!50229 () Bool)

(declare-fun b_next!50933 () Bool)

(assert (=> b!1816972 (= b_free!50229 (not b_next!50933))))

(declare-fun tp!513340 () Bool)

(declare-fun b_and!140699 () Bool)

(assert (=> b!1816972 (= tp!513340 b_and!140699)))

(declare-fun b!1816984 () Bool)

(declare-fun b_free!50231 () Bool)

(declare-fun b_next!50935 () Bool)

(assert (=> b!1816984 (= b_free!50231 (not b_next!50935))))

(declare-fun tp!513344 () Bool)

(declare-fun b_and!140701 () Bool)

(assert (=> b!1816984 (= tp!513344 b_and!140701)))

(declare-fun b_free!50233 () Bool)

(declare-fun b_next!50937 () Bool)

(assert (=> b!1816984 (= b_free!50233 (not b_next!50937))))

(declare-fun tp!513346 () Bool)

(declare-fun b_and!140703 () Bool)

(assert (=> b!1816984 (= tp!513346 b_and!140703)))

(declare-fun b!1816971 () Bool)

(declare-fun e!1160928 () Bool)

(declare-datatypes ((List!19927 0))(
  ( (Nil!19857) (Cons!19857 (h!25258 (_ BitVec 16)) (t!169612 List!19927)) )
))
(declare-datatypes ((TokenValue!3663 0))(
  ( (FloatLiteralValue!7326 (text!26086 List!19927)) (TokenValueExt!3662 (__x!12628 Int)) (Broken!18315 (value!111471 List!19927)) (Object!3732) (End!3663) (Def!3663) (Underscore!3663) (Match!3663) (Else!3663) (Error!3663) (Case!3663) (If!3663) (Extends!3663) (Abstract!3663) (Class!3663) (Val!3663) (DelimiterValue!7326 (del!3723 List!19927)) (KeywordValue!3669 (value!111472 List!19927)) (CommentValue!7326 (value!111473 List!19927)) (WhitespaceValue!7326 (value!111474 List!19927)) (IndentationValue!3663 (value!111475 List!19927)) (String!22646) (Int32!3663) (Broken!18316 (value!111476 List!19927)) (Boolean!3664) (Unit!34544) (OperatorValue!3666 (op!3723 List!19927)) (IdentifierValue!7326 (value!111477 List!19927)) (IdentifierValue!7327 (value!111478 List!19927)) (WhitespaceValue!7327 (value!111479 List!19927)) (True!7326) (False!7326) (Broken!18317 (value!111480 List!19927)) (Broken!18318 (value!111481 List!19927)) (True!7327) (RightBrace!3663) (RightBracket!3663) (Colon!3663) (Null!3663) (Comma!3663) (LeftBracket!3663) (False!7327) (LeftBrace!3663) (ImaginaryLiteralValue!3663 (text!26087 List!19927)) (StringLiteralValue!10989 (value!111482 List!19927)) (EOFValue!3663 (value!111483 List!19927)) (IdentValue!3663 (value!111484 List!19927)) (DelimiterValue!7327 (value!111485 List!19927)) (DedentValue!3663 (value!111486 List!19927)) (NewLineValue!3663 (value!111487 List!19927)) (IntegerValue!10989 (value!111488 (_ BitVec 32)) (text!26088 List!19927)) (IntegerValue!10990 (value!111489 Int) (text!26089 List!19927)) (Times!3663) (Or!3663) (Equal!3663) (Minus!3663) (Broken!18319 (value!111490 List!19927)) (And!3663) (Div!3663) (LessEqual!3663) (Mod!3663) (Concat!8564) (Not!3663) (Plus!3663) (SpaceValue!3663 (value!111491 List!19927)) (IntegerValue!10991 (value!111492 Int) (text!26090 List!19927)) (StringLiteralValue!10990 (text!26091 List!19927)) (FloatLiteralValue!7327 (text!26092 List!19927)) (BytesLiteralValue!3663 (value!111493 List!19927)) (CommentValue!7327 (value!111494 List!19927)) (StringLiteralValue!10991 (value!111495 List!19927)) (ErrorTokenValue!3663 (msg!3724 List!19927)) )
))
(declare-datatypes ((C!9976 0))(
  ( (C!9977 (val!5584 Int)) )
))
(declare-datatypes ((List!19928 0))(
  ( (Nil!19858) (Cons!19858 (h!25259 C!9976) (t!169613 List!19928)) )
))
(declare-datatypes ((IArray!13215 0))(
  ( (IArray!13216 (innerList!6665 List!19928)) )
))
(declare-datatypes ((Conc!6605 0))(
  ( (Node!6605 (left!15925 Conc!6605) (right!16255 Conc!6605) (csize!13440 Int) (cheight!6816 Int)) (Leaf!9612 (xs!9481 IArray!13215) (csize!13441 Int)) (Empty!6605) )
))
(declare-datatypes ((BalanceConc!13154 0))(
  ( (BalanceConc!13155 (c!296674 Conc!6605)) )
))
(declare-datatypes ((TokenValueInjection!6986 0))(
  ( (TokenValueInjection!6987 (toValue!5108 Int) (toChars!4967 Int)) )
))
(declare-datatypes ((Regex!4901 0))(
  ( (ElementMatch!4901 (c!296675 C!9976)) (Concat!8565 (regOne!10314 Regex!4901) (regTwo!10314 Regex!4901)) (EmptyExpr!4901) (Star!4901 (reg!5230 Regex!4901)) (EmptyLang!4901) (Union!4901 (regOne!10315 Regex!4901) (regTwo!10315 Regex!4901)) )
))
(declare-datatypes ((String!22647 0))(
  ( (String!22648 (value!111496 String)) )
))
(declare-datatypes ((Rule!6946 0))(
  ( (Rule!6947 (regex!3573 Regex!4901) (tag!3987 String!22647) (isSeparator!3573 Bool) (transformation!3573 TokenValueInjection!6986)) )
))
(declare-datatypes ((Token!6700 0))(
  ( (Token!6701 (value!111497 TokenValue!3663) (rule!5681 Rule!6946) (size!15765 Int) (originalCharacters!4381 List!19928)) )
))
(declare-fun token!556 () Token!6700)

(declare-fun tp!513352 () Bool)

(declare-fun e!1160923 () Bool)

(declare-fun inv!21 (TokenValue!3663) Bool)

(assert (=> b!1816971 (= e!1160923 (and (inv!21 (value!111497 token!556)) e!1160928 tp!513352))))

(declare-fun e!1160927 () Bool)

(assert (=> b!1816972 (= e!1160927 (and tp!513345 tp!513340))))

(declare-fun b!1816973 () Bool)

(declare-fun res!816933 () Bool)

(declare-fun e!1160919 () Bool)

(assert (=> b!1816973 (=> (not res!816933) (not e!1160919))))

(declare-datatypes ((List!19929 0))(
  ( (Nil!19859) (Cons!19859 (h!25260 Rule!6946) (t!169614 List!19929)) )
))
(declare-fun rules!4538 () List!19929)

(declare-fun rule!559 () Rule!6946)

(declare-fun contains!3609 (List!19929 Rule!6946) Bool)

(assert (=> b!1816973 (= res!816933 (contains!3609 rules!4538 rule!559))))

(declare-fun b!1816974 () Bool)

(declare-fun res!816927 () Bool)

(assert (=> b!1816974 (=> (not res!816927) (not e!1160919))))

(declare-fun suffix!1667 () List!19928)

(declare-datatypes ((LexerInterface!3202 0))(
  ( (LexerInterfaceExt!3199 (__x!12629 Int)) (Lexer!3200) )
))
(declare-fun thiss!28068 () LexerInterface!3202)

(declare-fun input!3612 () List!19928)

(declare-datatypes ((tuple2!19406 0))(
  ( (tuple2!19407 (_1!11105 Token!6700) (_2!11105 List!19928)) )
))
(declare-datatypes ((Option!4153 0))(
  ( (None!4152) (Some!4152 (v!25679 tuple2!19406)) )
))
(declare-fun maxPrefix!1750 (LexerInterface!3202 List!19929 List!19928) Option!4153)

(assert (=> b!1816974 (= res!816927 (= (maxPrefix!1750 thiss!28068 rules!4538 input!3612) (Some!4152 (tuple2!19407 token!556 suffix!1667))))))

(declare-fun e!1160932 () Bool)

(assert (=> b!1816975 (= e!1160932 (and tp!513341 tp!513342))))

(declare-fun b!1816976 () Bool)

(declare-fun e!1160929 () Bool)

(declare-fun e!1160931 () Bool)

(declare-fun tp!513347 () Bool)

(assert (=> b!1816976 (= e!1160929 (and e!1160931 tp!513347))))

(declare-fun res!816929 () Bool)

(assert (=> start!179774 (=> (not res!816929) (not e!1160919))))

(get-info :version)

(assert (=> start!179774 (= res!816929 ((_ is Lexer!3200) thiss!28068))))

(assert (=> start!179774 e!1160919))

(declare-fun e!1160921 () Bool)

(assert (=> start!179774 e!1160921))

(assert (=> start!179774 true))

(assert (=> start!179774 e!1160929))

(declare-fun inv!25885 (Token!6700) Bool)

(assert (=> start!179774 (and (inv!25885 token!556) e!1160923)))

(declare-fun e!1160925 () Bool)

(assert (=> start!179774 e!1160925))

(declare-fun e!1160922 () Bool)

(assert (=> start!179774 e!1160922))

(declare-fun b!1816977 () Bool)

(declare-fun e!1160926 () Bool)

(declare-fun e!1160917 () Bool)

(assert (=> b!1816977 (= e!1160926 (not e!1160917))))

(declare-fun res!816932 () Bool)

(assert (=> b!1816977 (=> res!816932 e!1160917)))

(declare-fun lt!706106 () List!19928)

(declare-fun matchR!2366 (Regex!4901 List!19928) Bool)

(assert (=> b!1816977 (= res!816932 (not (matchR!2366 (regex!3573 rule!559) lt!706106)))))

(declare-fun ruleValid!1065 (LexerInterface!3202 Rule!6946) Bool)

(assert (=> b!1816977 (ruleValid!1065 thiss!28068 rule!559)))

(declare-datatypes ((Unit!34545 0))(
  ( (Unit!34546) )
))
(declare-fun lt!706108 () Unit!34545)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!586 (LexerInterface!3202 Rule!6946 List!19929) Unit!34545)

(assert (=> b!1816977 (= lt!706108 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!586 thiss!28068 rule!559 rules!4538))))

(declare-fun b!1816978 () Bool)

(declare-fun res!816931 () Bool)

(assert (=> b!1816978 (=> (not res!816931) (not e!1160919))))

(declare-fun isEmpty!12559 (List!19929) Bool)

(assert (=> b!1816978 (= res!816931 (not (isEmpty!12559 rules!4538)))))

(declare-fun b!1816979 () Bool)

(declare-fun res!816928 () Bool)

(assert (=> b!1816979 (=> (not res!816928) (not e!1160919))))

(declare-fun rulesInvariant!2871 (LexerInterface!3202 List!19929) Bool)

(assert (=> b!1816979 (= res!816928 (rulesInvariant!2871 thiss!28068 rules!4538))))

(declare-fun b!1816980 () Bool)

(assert (=> b!1816980 (= e!1160919 e!1160926)))

(declare-fun res!816934 () Bool)

(assert (=> b!1816980 (=> (not res!816934) (not e!1160926))))

(declare-fun ++!5397 (List!19928 List!19928) List!19928)

(assert (=> b!1816980 (= res!816934 (= input!3612 (++!5397 lt!706106 suffix!1667)))))

(declare-fun list!8077 (BalanceConc!13154) List!19928)

(declare-fun charsOf!2216 (Token!6700) BalanceConc!13154)

(assert (=> b!1816980 (= lt!706106 (list!8077 (charsOf!2216 token!556)))))

(declare-fun e!1160918 () Bool)

(declare-fun b!1816981 () Bool)

(declare-fun tp!513350 () Bool)

(declare-fun inv!25882 (String!22647) Bool)

(declare-fun inv!25886 (TokenValueInjection!6986) Bool)

(assert (=> b!1816981 (= e!1160928 (and tp!513350 (inv!25882 (tag!3987 (rule!5681 token!556))) (inv!25886 (transformation!3573 (rule!5681 token!556))) e!1160918))))

(declare-fun b!1816982 () Bool)

(declare-fun tp!513343 () Bool)

(assert (=> b!1816982 (= e!1160931 (and tp!513343 (inv!25882 (tag!3987 (h!25260 rules!4538))) (inv!25886 (transformation!3573 (h!25260 rules!4538))) e!1160927))))

(declare-fun b!1816983 () Bool)

(declare-fun tp_is_empty!8037 () Bool)

(declare-fun tp!513351 () Bool)

(assert (=> b!1816983 (= e!1160921 (and tp_is_empty!8037 tp!513351))))

(assert (=> b!1816984 (= e!1160918 (and tp!513344 tp!513346))))

(declare-fun b!1816985 () Bool)

(declare-fun tp!513349 () Bool)

(assert (=> b!1816985 (= e!1160922 (and tp_is_empty!8037 tp!513349))))

(declare-fun b!1816986 () Bool)

(assert (=> b!1816986 (= e!1160917 true)))

(declare-fun maxPrefixOneRule!1115 (LexerInterface!3202 Rule!6946 List!19928) Option!4153)

(declare-fun apply!5365 (TokenValueInjection!6986 BalanceConc!13154) TokenValue!3663)

(declare-fun seqFromList!2534 (List!19928) BalanceConc!13154)

(declare-fun size!15766 (List!19928) Int)

(assert (=> b!1816986 (= (maxPrefixOneRule!1115 thiss!28068 rule!559 input!3612) (Some!4152 (tuple2!19407 (Token!6701 (apply!5365 (transformation!3573 rule!559) (seqFromList!2534 lt!706106)) rule!559 (size!15766 lt!706106) lt!706106) suffix!1667)))))

(declare-fun lt!706107 () Unit!34545)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!491 (LexerInterface!3202 List!19929 List!19928 List!19928 List!19928 Rule!6946) Unit!34545)

(assert (=> b!1816986 (= lt!706107 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!491 thiss!28068 rules!4538 lt!706106 input!3612 suffix!1667 rule!559))))

(declare-fun b!1816987 () Bool)

(declare-fun res!816930 () Bool)

(assert (=> b!1816987 (=> (not res!816930) (not e!1160919))))

(assert (=> b!1816987 (= res!816930 (= (rule!5681 token!556) rule!559))))

(declare-fun tp!513348 () Bool)

(declare-fun b!1816988 () Bool)

(assert (=> b!1816988 (= e!1160925 (and tp!513348 (inv!25882 (tag!3987 rule!559)) (inv!25886 (transformation!3573 rule!559)) e!1160932))))

(assert (= (and start!179774 res!816929) b!1816978))

(assert (= (and b!1816978 res!816931) b!1816979))

(assert (= (and b!1816979 res!816928) b!1816973))

(assert (= (and b!1816973 res!816933) b!1816974))

(assert (= (and b!1816974 res!816927) b!1816987))

(assert (= (and b!1816987 res!816930) b!1816980))

(assert (= (and b!1816980 res!816934) b!1816977))

(assert (= (and b!1816977 (not res!816932)) b!1816986))

(assert (= (and start!179774 ((_ is Cons!19858) suffix!1667)) b!1816983))

(assert (= b!1816982 b!1816972))

(assert (= b!1816976 b!1816982))

(assert (= (and start!179774 ((_ is Cons!19859) rules!4538)) b!1816976))

(assert (= b!1816981 b!1816984))

(assert (= b!1816971 b!1816981))

(assert (= start!179774 b!1816971))

(assert (= b!1816988 b!1816975))

(assert (= start!179774 b!1816988))

(assert (= (and start!179774 ((_ is Cons!19858) input!3612)) b!1816985))

(declare-fun m!2246407 () Bool)

(assert (=> start!179774 m!2246407))

(declare-fun m!2246409 () Bool)

(assert (=> b!1816979 m!2246409))

(declare-fun m!2246411 () Bool)

(assert (=> b!1816978 m!2246411))

(declare-fun m!2246413 () Bool)

(assert (=> b!1816980 m!2246413))

(declare-fun m!2246415 () Bool)

(assert (=> b!1816980 m!2246415))

(assert (=> b!1816980 m!2246415))

(declare-fun m!2246417 () Bool)

(assert (=> b!1816980 m!2246417))

(declare-fun m!2246419 () Bool)

(assert (=> b!1816974 m!2246419))

(declare-fun m!2246421 () Bool)

(assert (=> b!1816971 m!2246421))

(declare-fun m!2246423 () Bool)

(assert (=> b!1816986 m!2246423))

(declare-fun m!2246425 () Bool)

(assert (=> b!1816986 m!2246425))

(declare-fun m!2246427 () Bool)

(assert (=> b!1816986 m!2246427))

(assert (=> b!1816986 m!2246423))

(declare-fun m!2246429 () Bool)

(assert (=> b!1816986 m!2246429))

(declare-fun m!2246431 () Bool)

(assert (=> b!1816986 m!2246431))

(declare-fun m!2246433 () Bool)

(assert (=> b!1816982 m!2246433))

(declare-fun m!2246435 () Bool)

(assert (=> b!1816982 m!2246435))

(declare-fun m!2246437 () Bool)

(assert (=> b!1816981 m!2246437))

(declare-fun m!2246439 () Bool)

(assert (=> b!1816981 m!2246439))

(declare-fun m!2246441 () Bool)

(assert (=> b!1816988 m!2246441))

(declare-fun m!2246443 () Bool)

(assert (=> b!1816988 m!2246443))

(declare-fun m!2246445 () Bool)

(assert (=> b!1816977 m!2246445))

(declare-fun m!2246447 () Bool)

(assert (=> b!1816977 m!2246447))

(declare-fun m!2246449 () Bool)

(assert (=> b!1816977 m!2246449))

(declare-fun m!2246451 () Bool)

(assert (=> b!1816973 m!2246451))

(check-sat (not b_next!50935) (not b!1816979) (not b!1816983) b_and!140699 b_and!140697 (not b!1816976) (not b_next!50937) (not b_next!50929) (not start!179774) b_and!140695 b_and!140693 (not b!1816977) (not b!1816986) (not b!1816985) (not b!1816978) (not b!1816980) b_and!140703 tp_is_empty!8037 (not b!1816982) (not b_next!50933) (not b!1816973) (not b_next!50931) (not b_next!50927) (not b!1816974) (not b!1816971) b_and!140701 (not b!1816988) (not b!1816981))
(check-sat b_and!140693 (not b_next!50935) b_and!140703 (not b_next!50933) (not b_next!50931) b_and!140699 b_and!140697 (not b_next!50927) (not b_next!50937) b_and!140701 (not b_next!50929) b_and!140695)
