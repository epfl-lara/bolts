; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!392450 () Bool)

(assert start!392450)

(declare-fun b!4133512 () Bool)

(declare-fun b_free!117387 () Bool)

(declare-fun b_next!118091 () Bool)

(assert (=> b!4133512 (= b_free!117387 (not b_next!118091))))

(declare-fun tp!1259974 () Bool)

(declare-fun b_and!320549 () Bool)

(assert (=> b!4133512 (= tp!1259974 b_and!320549)))

(declare-fun b_free!117389 () Bool)

(declare-fun b_next!118093 () Bool)

(assert (=> b!4133512 (= b_free!117389 (not b_next!118093))))

(declare-fun tp!1259972 () Bool)

(declare-fun b_and!320551 () Bool)

(assert (=> b!4133512 (= tp!1259972 b_and!320551)))

(declare-fun b!4133514 () Bool)

(declare-fun b_free!117391 () Bool)

(declare-fun b_next!118095 () Bool)

(assert (=> b!4133514 (= b_free!117391 (not b_next!118095))))

(declare-fun tp!1259973 () Bool)

(declare-fun b_and!320553 () Bool)

(assert (=> b!4133514 (= tp!1259973 b_and!320553)))

(declare-fun b_free!117393 () Bool)

(declare-fun b_next!118097 () Bool)

(assert (=> b!4133514 (= b_free!117393 (not b_next!118097))))

(declare-fun tp!1259978 () Bool)

(declare-fun b_and!320555 () Bool)

(assert (=> b!4133514 (= tp!1259978 b_and!320555)))

(declare-fun b!4133507 () Bool)

(declare-fun b_free!117395 () Bool)

(declare-fun b_next!118099 () Bool)

(assert (=> b!4133507 (= b_free!117395 (not b_next!118099))))

(declare-fun tp!1259970 () Bool)

(declare-fun b_and!320557 () Bool)

(assert (=> b!4133507 (= tp!1259970 b_and!320557)))

(declare-fun b_free!117397 () Bool)

(declare-fun b_next!118101 () Bool)

(assert (=> b!4133507 (= b_free!117397 (not b_next!118101))))

(declare-fun tp!1259980 () Bool)

(declare-fun b_and!320559 () Bool)

(assert (=> b!4133507 (= tp!1259980 b_and!320559)))

(declare-fun b!4133494 () Bool)

(declare-fun res!1689989 () Bool)

(declare-fun e!2564689 () Bool)

(assert (=> b!4133494 (=> (not res!1689989) (not e!2564689))))

(declare-datatypes ((List!44901 0))(
  ( (Nil!44777) (Cons!44777 (h!50197 (_ BitVec 16)) (t!341762 List!44901)) )
))
(declare-datatypes ((TokenValue!7568 0))(
  ( (FloatLiteralValue!15136 (text!53421 List!44901)) (TokenValueExt!7567 (__x!27353 Int)) (Broken!37840 (value!229661 List!44901)) (Object!7691) (End!7568) (Def!7568) (Underscore!7568) (Match!7568) (Else!7568) (Error!7568) (Case!7568) (If!7568) (Extends!7568) (Abstract!7568) (Class!7568) (Val!7568) (DelimiterValue!15136 (del!7628 List!44901)) (KeywordValue!7574 (value!229662 List!44901)) (CommentValue!15136 (value!229663 List!44901)) (WhitespaceValue!15136 (value!229664 List!44901)) (IndentationValue!7568 (value!229665 List!44901)) (String!51589) (Int32!7568) (Broken!37841 (value!229666 List!44901)) (Boolean!7569) (Unit!64096) (OperatorValue!7571 (op!7628 List!44901)) (IdentifierValue!15136 (value!229667 List!44901)) (IdentifierValue!15137 (value!229668 List!44901)) (WhitespaceValue!15137 (value!229669 List!44901)) (True!15136) (False!15136) (Broken!37842 (value!229670 List!44901)) (Broken!37843 (value!229671 List!44901)) (True!15137) (RightBrace!7568) (RightBracket!7568) (Colon!7568) (Null!7568) (Comma!7568) (LeftBracket!7568) (False!15137) (LeftBrace!7568) (ImaginaryLiteralValue!7568 (text!53422 List!44901)) (StringLiteralValue!22704 (value!229672 List!44901)) (EOFValue!7568 (value!229673 List!44901)) (IdentValue!7568 (value!229674 List!44901)) (DelimiterValue!15137 (value!229675 List!44901)) (DedentValue!7568 (value!229676 List!44901)) (NewLineValue!7568 (value!229677 List!44901)) (IntegerValue!22704 (value!229678 (_ BitVec 32)) (text!53423 List!44901)) (IntegerValue!22705 (value!229679 Int) (text!53424 List!44901)) (Times!7568) (Or!7568) (Equal!7568) (Minus!7568) (Broken!37844 (value!229680 List!44901)) (And!7568) (Div!7568) (LessEqual!7568) (Mod!7568) (Concat!19811) (Not!7568) (Plus!7568) (SpaceValue!7568 (value!229681 List!44901)) (IntegerValue!22706 (value!229682 Int) (text!53425 List!44901)) (StringLiteralValue!22705 (text!53426 List!44901)) (FloatLiteralValue!15137 (text!53427 List!44901)) (BytesLiteralValue!7568 (value!229683 List!44901)) (CommentValue!15137 (value!229684 List!44901)) (StringLiteralValue!22706 (value!229685 List!44901)) (ErrorTokenValue!7568 (msg!7629 List!44901)) )
))
(declare-datatypes ((C!24672 0))(
  ( (C!24673 (val!14446 Int)) )
))
(declare-datatypes ((List!44902 0))(
  ( (Nil!44778) (Cons!44778 (h!50198 C!24672) (t!341763 List!44902)) )
))
(declare-datatypes ((IArray!27103 0))(
  ( (IArray!27104 (innerList!13609 List!44902)) )
))
(declare-datatypes ((Conc!13549 0))(
  ( (Node!13549 (left!33532 Conc!13549) (right!33862 Conc!13549) (csize!27328 Int) (cheight!13760 Int)) (Leaf!20933 (xs!16855 IArray!27103) (csize!27329 Int)) (Empty!13549) )
))
(declare-datatypes ((BalanceConc!26692 0))(
  ( (BalanceConc!26693 (c!709072 Conc!13549)) )
))
(declare-datatypes ((Regex!12243 0))(
  ( (ElementMatch!12243 (c!709073 C!24672)) (Concat!19812 (regOne!24998 Regex!12243) (regTwo!24998 Regex!12243)) (EmptyExpr!12243) (Star!12243 (reg!12572 Regex!12243)) (EmptyLang!12243) (Union!12243 (regOne!24999 Regex!12243) (regTwo!24999 Regex!12243)) )
))
(declare-datatypes ((String!51590 0))(
  ( (String!51591 (value!229686 String)) )
))
(declare-datatypes ((TokenValueInjection!14564 0))(
  ( (TokenValueInjection!14565 (toValue!10002 Int) (toChars!9861 Int)) )
))
(declare-datatypes ((Rule!14476 0))(
  ( (Rule!14477 (regex!7338 Regex!12243) (tag!8198 String!51590) (isSeparator!7338 Bool) (transformation!7338 TokenValueInjection!14564)) )
))
(declare-datatypes ((List!44903 0))(
  ( (Nil!44779) (Cons!44779 (h!50199 Rule!14476) (t!341764 List!44903)) )
))
(declare-fun rules!3756 () List!44903)

(declare-fun isEmpty!26666 (List!44903) Bool)

(assert (=> b!4133494 (= res!1689989 (not (isEmpty!26666 rules!3756)))))

(declare-fun b!4133495 () Bool)

(declare-fun res!1689979 () Bool)

(declare-fun e!2564691 () Bool)

(assert (=> b!4133495 (=> (not res!1689979) (not e!2564691))))

(declare-datatypes ((LexerInterface!6927 0))(
  ( (LexerInterfaceExt!6924 (__x!27354 Int)) (Lexer!6925) )
))
(declare-fun thiss!25645 () LexerInterface!6927)

(declare-fun r!4008 () Rule!14476)

(declare-fun ruleValid!3144 (LexerInterface!6927 Rule!14476) Bool)

(assert (=> b!4133495 (= res!1689979 (ruleValid!3144 thiss!25645 r!4008))))

(declare-fun b!4133496 () Bool)

(declare-fun res!1689985 () Bool)

(assert (=> b!4133496 (=> (not res!1689985) (not e!2564689))))

(declare-fun contains!9016 (List!44903 Rule!14476) Bool)

(assert (=> b!4133496 (= res!1689985 (contains!9016 rules!3756 r!4008))))

(declare-fun b!4133497 () Bool)

(declare-fun res!1689986 () Bool)

(assert (=> b!4133497 (=> (not res!1689986) (not e!2564691))))

(declare-fun rBis!149 () Rule!14476)

(declare-fun getIndex!684 (List!44903 Rule!14476) Int)

(assert (=> b!4133497 (= res!1689986 (< (getIndex!684 rules!3756 rBis!149) (getIndex!684 rules!3756 r!4008)))))

(declare-fun b!4133498 () Bool)

(declare-fun e!2564684 () Bool)

(declare-fun tp_is_empty!21409 () Bool)

(declare-fun tp!1259976 () Bool)

(assert (=> b!4133498 (= e!2564684 (and tp_is_empty!21409 tp!1259976))))

(declare-fun tp!1259969 () Bool)

(declare-fun e!2564688 () Bool)

(declare-fun e!2564687 () Bool)

(declare-fun b!4133499 () Bool)

(declare-fun inv!59378 (String!51590) Bool)

(declare-fun inv!59380 (TokenValueInjection!14564) Bool)

(assert (=> b!4133499 (= e!2564687 (and tp!1259969 (inv!59378 (tag!8198 rBis!149)) (inv!59380 (transformation!7338 rBis!149)) e!2564688))))

(declare-fun b!4133500 () Bool)

(declare-fun e!2564685 () Bool)

(declare-fun tp!1259979 () Bool)

(declare-fun e!2564695 () Bool)

(assert (=> b!4133500 (= e!2564685 (and tp!1259979 (inv!59378 (tag!8198 (h!50199 rules!3756))) (inv!59380 (transformation!7338 (h!50199 rules!3756))) e!2564695))))

(declare-fun b!4133501 () Bool)

(declare-fun res!1689978 () Bool)

(assert (=> b!4133501 (=> (not res!1689978) (not e!2564691))))

(declare-fun p!2912 () List!44902)

(declare-fun matchR!6072 (Regex!12243 List!44902) Bool)

(assert (=> b!4133501 (= res!1689978 (matchR!6072 (regex!7338 r!4008) p!2912))))

(declare-fun b!4133502 () Bool)

(declare-fun e!2564693 () Bool)

(declare-datatypes ((List!44904 0))(
  ( (Nil!44780) (Cons!44780 (h!50200 String!51590) (t!341765 List!44904)) )
))
(declare-fun noDuplicateTag!2964 (LexerInterface!6927 List!44903 List!44904) Bool)

(declare-fun noDuplicateTag$default$2!14 (LexerInterface!6927) List!44904)

(assert (=> b!4133502 (= e!2564693 (noDuplicateTag!2964 thiss!25645 rules!3756 (noDuplicateTag$default$2!14 thiss!25645)))))

(declare-fun tail!6489 (List!44903) List!44903)

(assert (=> b!4133502 (contains!9016 (tail!6489 rules!3756) r!4008)))

(declare-datatypes ((Unit!64097 0))(
  ( (Unit!64098) )
))
(declare-fun lt!1473782 () Unit!64097)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!42 (List!44903 Rule!14476 Rule!14476) Unit!64097)

(assert (=> b!4133502 (= lt!1473782 (lemmaGetIndexBiggerAndHeadEqThenTailContains!42 rules!3756 rBis!149 r!4008))))

(declare-fun tp!1259977 () Bool)

(declare-fun e!2564696 () Bool)

(declare-fun e!2564692 () Bool)

(declare-fun b!4133503 () Bool)

(assert (=> b!4133503 (= e!2564692 (and tp!1259977 (inv!59378 (tag!8198 r!4008)) (inv!59380 (transformation!7338 r!4008)) e!2564696))))

(declare-fun b!4133504 () Bool)

(declare-fun e!2564694 () Bool)

(declare-fun tp!1259975 () Bool)

(assert (=> b!4133504 (= e!2564694 (and tp_is_empty!21409 tp!1259975))))

(declare-fun b!4133505 () Bool)

(declare-fun e!2564686 () Bool)

(declare-fun tp!1259971 () Bool)

(assert (=> b!4133505 (= e!2564686 (and e!2564685 tp!1259971))))

(declare-fun res!1689988 () Bool)

(assert (=> start!392450 (=> (not res!1689988) (not e!2564689))))

(get-info :version)

(assert (=> start!392450 (= res!1689988 ((_ is Lexer!6925) thiss!25645))))

(assert (=> start!392450 e!2564689))

(assert (=> start!392450 e!2564686))

(assert (=> start!392450 e!2564694))

(assert (=> start!392450 true))

(assert (=> start!392450 e!2564692))

(assert (=> start!392450 e!2564684))

(assert (=> start!392450 e!2564687))

(declare-fun b!4133506 () Bool)

(assert (=> b!4133506 (= e!2564689 e!2564691)))

(declare-fun res!1689981 () Bool)

(assert (=> b!4133506 (=> (not res!1689981) (not e!2564691))))

(declare-fun input!3238 () List!44902)

(declare-fun lt!1473780 () BalanceConc!26692)

(declare-datatypes ((Token!13606 0))(
  ( (Token!13607 (value!229687 TokenValue!7568) (rule!10430 Rule!14476) (size!33141 Int) (originalCharacters!7834 List!44902)) )
))
(declare-datatypes ((tuple2!43182 0))(
  ( (tuple2!43183 (_1!24725 Token!13606) (_2!24725 List!44902)) )
))
(declare-datatypes ((Option!9644 0))(
  ( (None!9643) (Some!9643 (v!40261 tuple2!43182)) )
))
(declare-fun maxPrefix!4117 (LexerInterface!6927 List!44903 List!44902) Option!9644)

(declare-fun apply!10411 (TokenValueInjection!14564 BalanceConc!26692) TokenValue!7568)

(declare-fun size!33142 (List!44902) Int)

(declare-fun getSuffix!2600 (List!44902 List!44902) List!44902)

(assert (=> b!4133506 (= res!1689981 (= (maxPrefix!4117 thiss!25645 rules!3756 input!3238) (Some!9643 (tuple2!43183 (Token!13607 (apply!10411 (transformation!7338 r!4008) lt!1473780) r!4008 (size!33142 p!2912) p!2912) (getSuffix!2600 input!3238 p!2912)))))))

(declare-fun lt!1473781 () Unit!64097)

(declare-fun lemmaSemiInverse!2196 (TokenValueInjection!14564 BalanceConc!26692) Unit!64097)

(assert (=> b!4133506 (= lt!1473781 (lemmaSemiInverse!2196 (transformation!7338 r!4008) lt!1473780))))

(declare-fun seqFromList!5455 (List!44902) BalanceConc!26692)

(assert (=> b!4133506 (= lt!1473780 (seqFromList!5455 p!2912))))

(assert (=> b!4133507 (= e!2564688 (and tp!1259970 tp!1259980))))

(declare-fun b!4133508 () Bool)

(declare-fun res!1689982 () Bool)

(assert (=> b!4133508 (=> (not res!1689982) (not e!2564689))))

(declare-fun isEmpty!26667 (List!44902) Bool)

(assert (=> b!4133508 (= res!1689982 (not (isEmpty!26667 p!2912)))))

(declare-fun b!4133509 () Bool)

(assert (=> b!4133509 (= e!2564691 (not e!2564693))))

(declare-fun res!1689987 () Bool)

(assert (=> b!4133509 (=> res!1689987 e!2564693)))

(assert (=> b!4133509 (= res!1689987 (or (not ((_ is Cons!44779) rules!3756)) (not (= (h!50199 rules!3756) rBis!149))))))

(declare-fun lt!1473779 () Unit!64097)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2184 (LexerInterface!6927 Rule!14476 List!44903) Unit!64097)

(assert (=> b!4133509 (= lt!1473779 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2184 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4133509 (ruleValid!3144 thiss!25645 rBis!149)))

(declare-fun lt!1473778 () Unit!64097)

(assert (=> b!4133509 (= lt!1473778 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2184 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4133510 () Bool)

(declare-fun res!1689983 () Bool)

(assert (=> b!4133510 (=> (not res!1689983) (not e!2564689))))

(declare-fun rulesInvariant!6224 (LexerInterface!6927 List!44903) Bool)

(assert (=> b!4133510 (= res!1689983 (rulesInvariant!6224 thiss!25645 rules!3756))))

(declare-fun b!4133511 () Bool)

(declare-fun res!1689980 () Bool)

(assert (=> b!4133511 (=> (not res!1689980) (not e!2564689))))

(assert (=> b!4133511 (= res!1689980 (contains!9016 rules!3756 rBis!149))))

(assert (=> b!4133512 (= e!2564695 (and tp!1259974 tp!1259972))))

(declare-fun b!4133513 () Bool)

(declare-fun res!1689984 () Bool)

(assert (=> b!4133513 (=> (not res!1689984) (not e!2564689))))

(declare-fun isPrefix!4273 (List!44902 List!44902) Bool)

(assert (=> b!4133513 (= res!1689984 (isPrefix!4273 p!2912 input!3238))))

(assert (=> b!4133514 (= e!2564696 (and tp!1259973 tp!1259978))))

(assert (= (and start!392450 res!1689988) b!4133513))

(assert (= (and b!4133513 res!1689984) b!4133494))

(assert (= (and b!4133494 res!1689989) b!4133510))

(assert (= (and b!4133510 res!1689983) b!4133496))

(assert (= (and b!4133496 res!1689985) b!4133511))

(assert (= (and b!4133511 res!1689980) b!4133508))

(assert (= (and b!4133508 res!1689982) b!4133506))

(assert (= (and b!4133506 res!1689981) b!4133501))

(assert (= (and b!4133501 res!1689978) b!4133497))

(assert (= (and b!4133497 res!1689986) b!4133495))

(assert (= (and b!4133495 res!1689979) b!4133509))

(assert (= (and b!4133509 (not res!1689987)) b!4133502))

(assert (= b!4133500 b!4133512))

(assert (= b!4133505 b!4133500))

(assert (= (and start!392450 ((_ is Cons!44779) rules!3756)) b!4133505))

(assert (= (and start!392450 ((_ is Cons!44778) p!2912)) b!4133504))

(assert (= b!4133503 b!4133514))

(assert (= start!392450 b!4133503))

(assert (= (and start!392450 ((_ is Cons!44778) input!3238)) b!4133498))

(assert (= b!4133499 b!4133507))

(assert (= start!392450 b!4133499))

(declare-fun m!4730417 () Bool)

(assert (=> b!4133495 m!4730417))

(declare-fun m!4730419 () Bool)

(assert (=> b!4133494 m!4730419))

(declare-fun m!4730421 () Bool)

(assert (=> b!4133510 m!4730421))

(declare-fun m!4730423 () Bool)

(assert (=> b!4133501 m!4730423))

(declare-fun m!4730425 () Bool)

(assert (=> b!4133500 m!4730425))

(declare-fun m!4730427 () Bool)

(assert (=> b!4133500 m!4730427))

(declare-fun m!4730429 () Bool)

(assert (=> b!4133506 m!4730429))

(declare-fun m!4730431 () Bool)

(assert (=> b!4133506 m!4730431))

(declare-fun m!4730433 () Bool)

(assert (=> b!4133506 m!4730433))

(declare-fun m!4730435 () Bool)

(assert (=> b!4133506 m!4730435))

(declare-fun m!4730437 () Bool)

(assert (=> b!4133506 m!4730437))

(declare-fun m!4730439 () Bool)

(assert (=> b!4133506 m!4730439))

(declare-fun m!4730441 () Bool)

(assert (=> b!4133502 m!4730441))

(declare-fun m!4730443 () Bool)

(assert (=> b!4133502 m!4730443))

(declare-fun m!4730445 () Bool)

(assert (=> b!4133502 m!4730445))

(assert (=> b!4133502 m!4730441))

(declare-fun m!4730447 () Bool)

(assert (=> b!4133502 m!4730447))

(declare-fun m!4730449 () Bool)

(assert (=> b!4133502 m!4730449))

(assert (=> b!4133502 m!4730447))

(declare-fun m!4730451 () Bool)

(assert (=> b!4133496 m!4730451))

(declare-fun m!4730453 () Bool)

(assert (=> b!4133499 m!4730453))

(declare-fun m!4730455 () Bool)

(assert (=> b!4133499 m!4730455))

(declare-fun m!4730457 () Bool)

(assert (=> b!4133513 m!4730457))

(declare-fun m!4730459 () Bool)

(assert (=> b!4133508 m!4730459))

(declare-fun m!4730461 () Bool)

(assert (=> b!4133511 m!4730461))

(declare-fun m!4730463 () Bool)

(assert (=> b!4133497 m!4730463))

(declare-fun m!4730465 () Bool)

(assert (=> b!4133497 m!4730465))

(declare-fun m!4730467 () Bool)

(assert (=> b!4133503 m!4730467))

(declare-fun m!4730469 () Bool)

(assert (=> b!4133503 m!4730469))

(declare-fun m!4730471 () Bool)

(assert (=> b!4133509 m!4730471))

(declare-fun m!4730473 () Bool)

(assert (=> b!4133509 m!4730473))

(declare-fun m!4730475 () Bool)

(assert (=> b!4133509 m!4730475))

(check-sat (not b!4133508) (not b!4133504) b_and!320549 (not b!4133502) (not b!4133501) b_and!320553 (not b!4133511) tp_is_empty!21409 (not b!4133505) b_and!320555 (not b_next!118099) (not b!4133498) (not b!4133495) b_and!320557 b_and!320551 (not b!4133496) (not b!4133513) (not b!4133510) (not b_next!118095) (not b_next!118091) (not b_next!118097) (not b!4133503) (not b!4133499) (not b!4133506) b_and!320559 (not b!4133500) (not b_next!118101) (not b!4133494) (not b_next!118093) (not b!4133497) (not b!4133509))
(check-sat b_and!320549 b_and!320553 b_and!320555 (not b_next!118099) (not b_next!118093) b_and!320557 b_and!320551 (not b_next!118095) (not b_next!118091) (not b_next!118097) b_and!320559 (not b_next!118101))
(get-model)

(declare-fun d!1224362 () Bool)

(assert (=> d!1224362 (= (inv!59378 (tag!8198 rBis!149)) (= (mod (str.len (value!229686 (tag!8198 rBis!149))) 2) 0))))

(assert (=> b!4133499 d!1224362))

(declare-fun d!1224364 () Bool)

(declare-fun res!1690007 () Bool)

(declare-fun e!2564705 () Bool)

(assert (=> d!1224364 (=> (not res!1690007) (not e!2564705))))

(declare-fun semiInverseModEq!3166 (Int Int) Bool)

(assert (=> d!1224364 (= res!1690007 (semiInverseModEq!3166 (toChars!9861 (transformation!7338 rBis!149)) (toValue!10002 (transformation!7338 rBis!149))))))

(assert (=> d!1224364 (= (inv!59380 (transformation!7338 rBis!149)) e!2564705)))

(declare-fun b!4133525 () Bool)

(declare-fun equivClasses!3065 (Int Int) Bool)

(assert (=> b!4133525 (= e!2564705 (equivClasses!3065 (toChars!9861 (transformation!7338 rBis!149)) (toValue!10002 (transformation!7338 rBis!149))))))

(assert (= (and d!1224364 res!1690007) b!4133525))

(declare-fun m!4730477 () Bool)

(assert (=> d!1224364 m!4730477))

(declare-fun m!4730479 () Bool)

(assert (=> b!4133525 m!4730479))

(assert (=> b!4133499 d!1224364))

(declare-fun d!1224366 () Bool)

(declare-fun res!1690014 () Bool)

(declare-fun e!2564711 () Bool)

(assert (=> d!1224366 (=> (not res!1690014) (not e!2564711))))

(declare-fun rulesValid!2880 (LexerInterface!6927 List!44903) Bool)

(assert (=> d!1224366 (= res!1690014 (rulesValid!2880 thiss!25645 rules!3756))))

(assert (=> d!1224366 (= (rulesInvariant!6224 thiss!25645 rules!3756) e!2564711)))

(declare-fun b!4133532 () Bool)

(assert (=> b!4133532 (= e!2564711 (noDuplicateTag!2964 thiss!25645 rules!3756 Nil!44780))))

(assert (= (and d!1224366 res!1690014) b!4133532))

(declare-fun m!4730481 () Bool)

(assert (=> d!1224366 m!4730481))

(declare-fun m!4730483 () Bool)

(assert (=> b!4133532 m!4730483))

(assert (=> b!4133510 d!1224366))

(declare-fun d!1224368 () Bool)

(assert (=> d!1224368 (= (inv!59378 (tag!8198 (h!50199 rules!3756))) (= (mod (str.len (value!229686 (tag!8198 (h!50199 rules!3756)))) 2) 0))))

(assert (=> b!4133500 d!1224368))

(declare-fun d!1224370 () Bool)

(declare-fun res!1690015 () Bool)

(declare-fun e!2564712 () Bool)

(assert (=> d!1224370 (=> (not res!1690015) (not e!2564712))))

(assert (=> d!1224370 (= res!1690015 (semiInverseModEq!3166 (toChars!9861 (transformation!7338 (h!50199 rules!3756))) (toValue!10002 (transformation!7338 (h!50199 rules!3756)))))))

(assert (=> d!1224370 (= (inv!59380 (transformation!7338 (h!50199 rules!3756))) e!2564712)))

(declare-fun b!4133533 () Bool)

(assert (=> b!4133533 (= e!2564712 (equivClasses!3065 (toChars!9861 (transformation!7338 (h!50199 rules!3756))) (toValue!10002 (transformation!7338 (h!50199 rules!3756)))))))

(assert (= (and d!1224370 res!1690015) b!4133533))

(declare-fun m!4730487 () Bool)

(assert (=> d!1224370 m!4730487))

(declare-fun m!4730489 () Bool)

(assert (=> b!4133533 m!4730489))

(assert (=> b!4133500 d!1224370))

(declare-fun d!1224372 () Bool)

(assert (=> d!1224372 (ruleValid!3144 thiss!25645 r!4008)))

(declare-fun lt!1473788 () Unit!64097)

(declare-fun choose!25257 (LexerInterface!6927 Rule!14476 List!44903) Unit!64097)

(assert (=> d!1224372 (= lt!1473788 (choose!25257 thiss!25645 r!4008 rules!3756))))

(assert (=> d!1224372 (contains!9016 rules!3756 r!4008)))

(assert (=> d!1224372 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2184 thiss!25645 r!4008 rules!3756) lt!1473788)))

(declare-fun bs!595076 () Bool)

(assert (= bs!595076 d!1224372))

(assert (=> bs!595076 m!4730417))

(declare-fun m!4730501 () Bool)

(assert (=> bs!595076 m!4730501))

(assert (=> bs!595076 m!4730451))

(assert (=> b!4133509 d!1224372))

(declare-fun d!1224376 () Bool)

(declare-fun res!1690024 () Bool)

(declare-fun e!2564719 () Bool)

(assert (=> d!1224376 (=> (not res!1690024) (not e!2564719))))

(declare-fun validRegex!5510 (Regex!12243) Bool)

(assert (=> d!1224376 (= res!1690024 (validRegex!5510 (regex!7338 rBis!149)))))

(assert (=> d!1224376 (= (ruleValid!3144 thiss!25645 rBis!149) e!2564719)))

(declare-fun b!4133542 () Bool)

(declare-fun res!1690025 () Bool)

(assert (=> b!4133542 (=> (not res!1690025) (not e!2564719))))

(declare-fun nullable!4302 (Regex!12243) Bool)

(assert (=> b!4133542 (= res!1690025 (not (nullable!4302 (regex!7338 rBis!149))))))

(declare-fun b!4133543 () Bool)

(assert (=> b!4133543 (= e!2564719 (not (= (tag!8198 rBis!149) (String!51591 ""))))))

(assert (= (and d!1224376 res!1690024) b!4133542))

(assert (= (and b!4133542 res!1690025) b!4133543))

(declare-fun m!4730503 () Bool)

(assert (=> d!1224376 m!4730503))

(declare-fun m!4730505 () Bool)

(assert (=> b!4133542 m!4730505))

(assert (=> b!4133509 d!1224376))

(declare-fun d!1224378 () Bool)

(assert (=> d!1224378 (ruleValid!3144 thiss!25645 rBis!149)))

(declare-fun lt!1473791 () Unit!64097)

(assert (=> d!1224378 (= lt!1473791 (choose!25257 thiss!25645 rBis!149 rules!3756))))

(assert (=> d!1224378 (contains!9016 rules!3756 rBis!149)))

(assert (=> d!1224378 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2184 thiss!25645 rBis!149 rules!3756) lt!1473791)))

(declare-fun bs!595077 () Bool)

(assert (= bs!595077 d!1224378))

(assert (=> bs!595077 m!4730473))

(declare-fun m!4730507 () Bool)

(assert (=> bs!595077 m!4730507))

(assert (=> bs!595077 m!4730461))

(assert (=> b!4133509 d!1224378))

(declare-fun b!4133557 () Bool)

(declare-fun e!2564730 () Int)

(declare-fun e!2564729 () Int)

(assert (=> b!4133557 (= e!2564730 e!2564729)))

(declare-fun c!709079 () Bool)

(assert (=> b!4133557 (= c!709079 (and ((_ is Cons!44779) rules!3756) (not (= (h!50199 rules!3756) rBis!149))))))

(declare-fun b!4133556 () Bool)

(assert (=> b!4133556 (= e!2564730 0)))

(declare-fun b!4133559 () Bool)

(assert (=> b!4133559 (= e!2564729 (- 1))))

(declare-fun b!4133558 () Bool)

(assert (=> b!4133558 (= e!2564729 (+ 1 (getIndex!684 (t!341764 rules!3756) rBis!149)))))

(declare-fun d!1224380 () Bool)

(declare-fun lt!1473795 () Int)

(assert (=> d!1224380 (>= lt!1473795 0)))

(assert (=> d!1224380 (= lt!1473795 e!2564730)))

(declare-fun c!709078 () Bool)

(assert (=> d!1224380 (= c!709078 (and ((_ is Cons!44779) rules!3756) (= (h!50199 rules!3756) rBis!149)))))

(assert (=> d!1224380 (contains!9016 rules!3756 rBis!149)))

(assert (=> d!1224380 (= (getIndex!684 rules!3756 rBis!149) lt!1473795)))

(assert (= (and d!1224380 c!709078) b!4133556))

(assert (= (and d!1224380 (not c!709078)) b!4133557))

(assert (= (and b!4133557 c!709079) b!4133558))

(assert (= (and b!4133557 (not c!709079)) b!4133559))

(declare-fun m!4730515 () Bool)

(assert (=> b!4133558 m!4730515))

(assert (=> d!1224380 m!4730461))

(assert (=> b!4133497 d!1224380))

(declare-fun b!4133563 () Bool)

(declare-fun e!2564734 () Int)

(declare-fun e!2564733 () Int)

(assert (=> b!4133563 (= e!2564734 e!2564733)))

(declare-fun c!709081 () Bool)

(assert (=> b!4133563 (= c!709081 (and ((_ is Cons!44779) rules!3756) (not (= (h!50199 rules!3756) r!4008))))))

(declare-fun b!4133562 () Bool)

(assert (=> b!4133562 (= e!2564734 0)))

(declare-fun b!4133565 () Bool)

(assert (=> b!4133565 (= e!2564733 (- 1))))

(declare-fun b!4133564 () Bool)

(assert (=> b!4133564 (= e!2564733 (+ 1 (getIndex!684 (t!341764 rules!3756) r!4008)))))

(declare-fun d!1224386 () Bool)

(declare-fun lt!1473796 () Int)

(assert (=> d!1224386 (>= lt!1473796 0)))

(assert (=> d!1224386 (= lt!1473796 e!2564734)))

(declare-fun c!709080 () Bool)

(assert (=> d!1224386 (= c!709080 (and ((_ is Cons!44779) rules!3756) (= (h!50199 rules!3756) r!4008)))))

(assert (=> d!1224386 (contains!9016 rules!3756 r!4008)))

(assert (=> d!1224386 (= (getIndex!684 rules!3756 r!4008) lt!1473796)))

(assert (= (and d!1224386 c!709080) b!4133562))

(assert (= (and d!1224386 (not c!709080)) b!4133563))

(assert (= (and b!4133563 c!709081) b!4133564))

(assert (= (and b!4133563 (not c!709081)) b!4133565))

(declare-fun m!4730517 () Bool)

(assert (=> b!4133564 m!4730517))

(assert (=> d!1224386 m!4730451))

(assert (=> b!4133497 d!1224386))

(declare-fun d!1224388 () Bool)

(assert (=> d!1224388 (= (isEmpty!26667 p!2912) ((_ is Nil!44778) p!2912))))

(assert (=> b!4133508 d!1224388))

(declare-fun d!1224390 () Bool)

(declare-fun res!1690032 () Bool)

(declare-fun e!2564735 () Bool)

(assert (=> d!1224390 (=> (not res!1690032) (not e!2564735))))

(assert (=> d!1224390 (= res!1690032 (validRegex!5510 (regex!7338 r!4008)))))

(assert (=> d!1224390 (= (ruleValid!3144 thiss!25645 r!4008) e!2564735)))

(declare-fun b!4133566 () Bool)

(declare-fun res!1690033 () Bool)

(assert (=> b!4133566 (=> (not res!1690033) (not e!2564735))))

(assert (=> b!4133566 (= res!1690033 (not (nullable!4302 (regex!7338 r!4008))))))

(declare-fun b!4133567 () Bool)

(assert (=> b!4133567 (= e!2564735 (not (= (tag!8198 r!4008) (String!51591 ""))))))

(assert (= (and d!1224390 res!1690032) b!4133566))

(assert (= (and b!4133566 res!1690033) b!4133567))

(declare-fun m!4730519 () Bool)

(assert (=> d!1224390 m!4730519))

(declare-fun m!4730521 () Bool)

(assert (=> b!4133566 m!4730521))

(assert (=> b!4133495 d!1224390))

(declare-fun b!4133579 () Bool)

(declare-fun e!2564745 () Bool)

(assert (=> b!4133579 (= e!2564745 true)))

(declare-fun d!1224392 () Bool)

(assert (=> d!1224392 e!2564745))

(assert (= d!1224392 b!4133579))

(declare-fun lambda!128886 () Int)

(declare-fun order!23641 () Int)

(declare-fun order!23639 () Int)

(declare-fun dynLambda!19208 (Int Int) Int)

(declare-fun dynLambda!19209 (Int Int) Int)

(assert (=> b!4133579 (< (dynLambda!19208 order!23639 (toValue!10002 (transformation!7338 r!4008))) (dynLambda!19209 order!23641 lambda!128886))))

(declare-fun order!23643 () Int)

(declare-fun dynLambda!19210 (Int Int) Int)

(assert (=> b!4133579 (< (dynLambda!19210 order!23643 (toChars!9861 (transformation!7338 r!4008))) (dynLambda!19209 order!23641 lambda!128886))))

(declare-fun list!16398 (BalanceConc!26692) List!44902)

(declare-fun dynLambda!19211 (Int TokenValue!7568) BalanceConc!26692)

(declare-fun dynLambda!19212 (Int BalanceConc!26692) TokenValue!7568)

(assert (=> d!1224392 (= (list!16398 (dynLambda!19211 (toChars!9861 (transformation!7338 r!4008)) (dynLambda!19212 (toValue!10002 (transformation!7338 r!4008)) lt!1473780))) (list!16398 lt!1473780))))

(declare-fun lt!1473805 () Unit!64097)

(declare-fun ForallOf!949 (Int BalanceConc!26692) Unit!64097)

(assert (=> d!1224392 (= lt!1473805 (ForallOf!949 lambda!128886 lt!1473780))))

(assert (=> d!1224392 (= (lemmaSemiInverse!2196 (transformation!7338 r!4008) lt!1473780) lt!1473805)))

(declare-fun b_lambda!121435 () Bool)

(assert (=> (not b_lambda!121435) (not d!1224392)))

(declare-fun t!341767 () Bool)

(declare-fun tb!248083 () Bool)

(assert (=> (and b!4133512 (= (toChars!9861 (transformation!7338 (h!50199 rules!3756))) (toChars!9861 (transformation!7338 r!4008))) t!341767) tb!248083))

(declare-fun e!2564748 () Bool)

(declare-fun b!4133584 () Bool)

(declare-fun tp!1259983 () Bool)

(declare-fun inv!59381 (Conc!13549) Bool)

(assert (=> b!4133584 (= e!2564748 (and (inv!59381 (c!709072 (dynLambda!19211 (toChars!9861 (transformation!7338 r!4008)) (dynLambda!19212 (toValue!10002 (transformation!7338 r!4008)) lt!1473780)))) tp!1259983))))

(declare-fun result!301560 () Bool)

(declare-fun inv!59382 (BalanceConc!26692) Bool)

(assert (=> tb!248083 (= result!301560 (and (inv!59382 (dynLambda!19211 (toChars!9861 (transformation!7338 r!4008)) (dynLambda!19212 (toValue!10002 (transformation!7338 r!4008)) lt!1473780))) e!2564748))))

(assert (= tb!248083 b!4133584))

(declare-fun m!4730535 () Bool)

(assert (=> b!4133584 m!4730535))

(declare-fun m!4730537 () Bool)

(assert (=> tb!248083 m!4730537))

(assert (=> d!1224392 t!341767))

(declare-fun b_and!320561 () Bool)

(assert (= b_and!320551 (and (=> t!341767 result!301560) b_and!320561)))

(declare-fun t!341769 () Bool)

(declare-fun tb!248085 () Bool)

(assert (=> (and b!4133514 (= (toChars!9861 (transformation!7338 r!4008)) (toChars!9861 (transformation!7338 r!4008))) t!341769) tb!248085))

(declare-fun result!301564 () Bool)

(assert (= result!301564 result!301560))

(assert (=> d!1224392 t!341769))

(declare-fun b_and!320563 () Bool)

(assert (= b_and!320555 (and (=> t!341769 result!301564) b_and!320563)))

(declare-fun t!341771 () Bool)

(declare-fun tb!248087 () Bool)

(assert (=> (and b!4133507 (= (toChars!9861 (transformation!7338 rBis!149)) (toChars!9861 (transformation!7338 r!4008))) t!341771) tb!248087))

(declare-fun result!301566 () Bool)

(assert (= result!301566 result!301560))

(assert (=> d!1224392 t!341771))

(declare-fun b_and!320565 () Bool)

(assert (= b_and!320559 (and (=> t!341771 result!301566) b_and!320565)))

(declare-fun b_lambda!121437 () Bool)

(assert (=> (not b_lambda!121437) (not d!1224392)))

(declare-fun t!341773 () Bool)

(declare-fun tb!248089 () Bool)

(assert (=> (and b!4133512 (= (toValue!10002 (transformation!7338 (h!50199 rules!3756))) (toValue!10002 (transformation!7338 r!4008))) t!341773) tb!248089))

(declare-fun result!301568 () Bool)

(declare-fun inv!21 (TokenValue!7568) Bool)

(assert (=> tb!248089 (= result!301568 (inv!21 (dynLambda!19212 (toValue!10002 (transformation!7338 r!4008)) lt!1473780)))))

(declare-fun m!4730539 () Bool)

(assert (=> tb!248089 m!4730539))

(assert (=> d!1224392 t!341773))

(declare-fun b_and!320567 () Bool)

(assert (= b_and!320549 (and (=> t!341773 result!301568) b_and!320567)))

(declare-fun t!341775 () Bool)

(declare-fun tb!248091 () Bool)

(assert (=> (and b!4133514 (= (toValue!10002 (transformation!7338 r!4008)) (toValue!10002 (transformation!7338 r!4008))) t!341775) tb!248091))

(declare-fun result!301572 () Bool)

(assert (= result!301572 result!301568))

(assert (=> d!1224392 t!341775))

(declare-fun b_and!320569 () Bool)

(assert (= b_and!320553 (and (=> t!341775 result!301572) b_and!320569)))

(declare-fun tb!248093 () Bool)

(declare-fun t!341777 () Bool)

(assert (=> (and b!4133507 (= (toValue!10002 (transformation!7338 rBis!149)) (toValue!10002 (transformation!7338 r!4008))) t!341777) tb!248093))

(declare-fun result!301574 () Bool)

(assert (= result!301574 result!301568))

(assert (=> d!1224392 t!341777))

(declare-fun b_and!320571 () Bool)

(assert (= b_and!320557 (and (=> t!341777 result!301574) b_and!320571)))

(declare-fun m!4730541 () Bool)

(assert (=> d!1224392 m!4730541))

(declare-fun m!4730543 () Bool)

(assert (=> d!1224392 m!4730543))

(declare-fun m!4730545 () Bool)

(assert (=> d!1224392 m!4730545))

(declare-fun m!4730547 () Bool)

(assert (=> d!1224392 m!4730547))

(assert (=> d!1224392 m!4730547))

(declare-fun m!4730549 () Bool)

(assert (=> d!1224392 m!4730549))

(assert (=> d!1224392 m!4730545))

(assert (=> b!4133506 d!1224392))

(declare-fun d!1224402 () Bool)

(declare-fun lt!1473808 () List!44902)

(declare-fun ++!11585 (List!44902 List!44902) List!44902)

(assert (=> d!1224402 (= (++!11585 p!2912 lt!1473808) input!3238)))

(declare-fun e!2564754 () List!44902)

(assert (=> d!1224402 (= lt!1473808 e!2564754)))

(declare-fun c!709086 () Bool)

(assert (=> d!1224402 (= c!709086 ((_ is Cons!44778) p!2912))))

(assert (=> d!1224402 (>= (size!33142 input!3238) (size!33142 p!2912))))

(assert (=> d!1224402 (= (getSuffix!2600 input!3238 p!2912) lt!1473808)))

(declare-fun b!4133591 () Bool)

(declare-fun tail!6491 (List!44902) List!44902)

(assert (=> b!4133591 (= e!2564754 (getSuffix!2600 (tail!6491 input!3238) (t!341763 p!2912)))))

(declare-fun b!4133592 () Bool)

(assert (=> b!4133592 (= e!2564754 input!3238)))

(assert (= (and d!1224402 c!709086) b!4133591))

(assert (= (and d!1224402 (not c!709086)) b!4133592))

(declare-fun m!4730551 () Bool)

(assert (=> d!1224402 m!4730551))

(declare-fun m!4730553 () Bool)

(assert (=> d!1224402 m!4730553))

(assert (=> d!1224402 m!4730429))

(declare-fun m!4730555 () Bool)

(assert (=> b!4133591 m!4730555))

(assert (=> b!4133591 m!4730555))

(declare-fun m!4730557 () Bool)

(assert (=> b!4133591 m!4730557))

(assert (=> b!4133506 d!1224402))

(declare-fun b!4133629 () Bool)

(declare-fun e!2564775 () Bool)

(declare-fun e!2564773 () Bool)

(assert (=> b!4133629 (= e!2564775 e!2564773)))

(declare-fun res!1690060 () Bool)

(assert (=> b!4133629 (=> (not res!1690060) (not e!2564773))))

(declare-fun lt!1473825 () Option!9644)

(declare-fun isDefined!7257 (Option!9644) Bool)

(assert (=> b!4133629 (= res!1690060 (isDefined!7257 lt!1473825))))

(declare-fun b!4133630 () Bool)

(declare-fun res!1690057 () Bool)

(assert (=> b!4133630 (=> (not res!1690057) (not e!2564773))))

(declare-fun get!14603 (Option!9644) tuple2!43182)

(assert (=> b!4133630 (= res!1690057 (< (size!33142 (_2!24725 (get!14603 lt!1473825))) (size!33142 input!3238)))))

(declare-fun b!4133631 () Bool)

(declare-fun e!2564774 () Option!9644)

(declare-fun call!290383 () Option!9644)

(assert (=> b!4133631 (= e!2564774 call!290383)))

(declare-fun b!4133632 () Bool)

(declare-fun res!1690055 () Bool)

(assert (=> b!4133632 (=> (not res!1690055) (not e!2564773))))

(assert (=> b!4133632 (= res!1690055 (= (value!229687 (_1!24725 (get!14603 lt!1473825))) (apply!10411 (transformation!7338 (rule!10430 (_1!24725 (get!14603 lt!1473825)))) (seqFromList!5455 (originalCharacters!7834 (_1!24725 (get!14603 lt!1473825)))))))))

(declare-fun b!4133633 () Bool)

(declare-fun res!1690061 () Bool)

(assert (=> b!4133633 (=> (not res!1690061) (not e!2564773))))

(declare-fun charsOf!4938 (Token!13606) BalanceConc!26692)

(assert (=> b!4133633 (= res!1690061 (= (++!11585 (list!16398 (charsOf!4938 (_1!24725 (get!14603 lt!1473825)))) (_2!24725 (get!14603 lt!1473825))) input!3238))))

(declare-fun bm!290378 () Bool)

(declare-fun maxPrefixOneRule!3055 (LexerInterface!6927 Rule!14476 List!44902) Option!9644)

(assert (=> bm!290378 (= call!290383 (maxPrefixOneRule!3055 thiss!25645 (h!50199 rules!3756) input!3238))))

(declare-fun b!4133634 () Bool)

(assert (=> b!4133634 (= e!2564773 (contains!9016 rules!3756 (rule!10430 (_1!24725 (get!14603 lt!1473825)))))))

(declare-fun b!4133635 () Bool)

(declare-fun res!1690059 () Bool)

(assert (=> b!4133635 (=> (not res!1690059) (not e!2564773))))

(assert (=> b!4133635 (= res!1690059 (matchR!6072 (regex!7338 (rule!10430 (_1!24725 (get!14603 lt!1473825)))) (list!16398 (charsOf!4938 (_1!24725 (get!14603 lt!1473825))))))))

(declare-fun d!1224404 () Bool)

(assert (=> d!1224404 e!2564775))

(declare-fun res!1690056 () Bool)

(assert (=> d!1224404 (=> res!1690056 e!2564775)))

(declare-fun isEmpty!26668 (Option!9644) Bool)

(assert (=> d!1224404 (= res!1690056 (isEmpty!26668 lt!1473825))))

(assert (=> d!1224404 (= lt!1473825 e!2564774)))

(declare-fun c!709092 () Bool)

(assert (=> d!1224404 (= c!709092 (and ((_ is Cons!44779) rules!3756) ((_ is Nil!44779) (t!341764 rules!3756))))))

(declare-fun lt!1473826 () Unit!64097)

(declare-fun lt!1473824 () Unit!64097)

(assert (=> d!1224404 (= lt!1473826 lt!1473824)))

(assert (=> d!1224404 (isPrefix!4273 input!3238 input!3238)))

(declare-fun lemmaIsPrefixRefl!2763 (List!44902 List!44902) Unit!64097)

(assert (=> d!1224404 (= lt!1473824 (lemmaIsPrefixRefl!2763 input!3238 input!3238))))

(declare-fun rulesValidInductive!2717 (LexerInterface!6927 List!44903) Bool)

(assert (=> d!1224404 (rulesValidInductive!2717 thiss!25645 rules!3756)))

(assert (=> d!1224404 (= (maxPrefix!4117 thiss!25645 rules!3756 input!3238) lt!1473825)))

(declare-fun b!4133636 () Bool)

(declare-fun res!1690058 () Bool)

(assert (=> b!4133636 (=> (not res!1690058) (not e!2564773))))

(assert (=> b!4133636 (= res!1690058 (= (list!16398 (charsOf!4938 (_1!24725 (get!14603 lt!1473825)))) (originalCharacters!7834 (_1!24725 (get!14603 lt!1473825)))))))

(declare-fun b!4133637 () Bool)

(declare-fun lt!1473827 () Option!9644)

(declare-fun lt!1473823 () Option!9644)

(assert (=> b!4133637 (= e!2564774 (ite (and ((_ is None!9643) lt!1473827) ((_ is None!9643) lt!1473823)) None!9643 (ite ((_ is None!9643) lt!1473823) lt!1473827 (ite ((_ is None!9643) lt!1473827) lt!1473823 (ite (>= (size!33141 (_1!24725 (v!40261 lt!1473827))) (size!33141 (_1!24725 (v!40261 lt!1473823)))) lt!1473827 lt!1473823)))))))

(assert (=> b!4133637 (= lt!1473827 call!290383)))

(assert (=> b!4133637 (= lt!1473823 (maxPrefix!4117 thiss!25645 (t!341764 rules!3756) input!3238))))

(assert (= (and d!1224404 c!709092) b!4133631))

(assert (= (and d!1224404 (not c!709092)) b!4133637))

(assert (= (or b!4133631 b!4133637) bm!290378))

(assert (= (and d!1224404 (not res!1690056)) b!4133629))

(assert (= (and b!4133629 res!1690060) b!4133636))

(assert (= (and b!4133636 res!1690058) b!4133630))

(assert (= (and b!4133630 res!1690057) b!4133633))

(assert (= (and b!4133633 res!1690061) b!4133632))

(assert (= (and b!4133632 res!1690055) b!4133635))

(assert (= (and b!4133635 res!1690059) b!4133634))

(declare-fun m!4730579 () Bool)

(assert (=> b!4133634 m!4730579))

(declare-fun m!4730581 () Bool)

(assert (=> b!4133634 m!4730581))

(assert (=> b!4133635 m!4730579))

(declare-fun m!4730583 () Bool)

(assert (=> b!4133635 m!4730583))

(assert (=> b!4133635 m!4730583))

(declare-fun m!4730585 () Bool)

(assert (=> b!4133635 m!4730585))

(assert (=> b!4133635 m!4730585))

(declare-fun m!4730587 () Bool)

(assert (=> b!4133635 m!4730587))

(declare-fun m!4730589 () Bool)

(assert (=> d!1224404 m!4730589))

(declare-fun m!4730591 () Bool)

(assert (=> d!1224404 m!4730591))

(declare-fun m!4730593 () Bool)

(assert (=> d!1224404 m!4730593))

(declare-fun m!4730595 () Bool)

(assert (=> d!1224404 m!4730595))

(assert (=> b!4133632 m!4730579))

(declare-fun m!4730597 () Bool)

(assert (=> b!4133632 m!4730597))

(assert (=> b!4133632 m!4730597))

(declare-fun m!4730599 () Bool)

(assert (=> b!4133632 m!4730599))

(assert (=> b!4133630 m!4730579))

(declare-fun m!4730601 () Bool)

(assert (=> b!4133630 m!4730601))

(assert (=> b!4133630 m!4730553))

(declare-fun m!4730603 () Bool)

(assert (=> b!4133637 m!4730603))

(declare-fun m!4730605 () Bool)

(assert (=> bm!290378 m!4730605))

(declare-fun m!4730607 () Bool)

(assert (=> b!4133629 m!4730607))

(assert (=> b!4133636 m!4730579))

(assert (=> b!4133636 m!4730583))

(assert (=> b!4133636 m!4730583))

(assert (=> b!4133636 m!4730585))

(assert (=> b!4133633 m!4730579))

(assert (=> b!4133633 m!4730583))

(assert (=> b!4133633 m!4730583))

(assert (=> b!4133633 m!4730585))

(assert (=> b!4133633 m!4730585))

(declare-fun m!4730609 () Bool)

(assert (=> b!4133633 m!4730609))

(assert (=> b!4133506 d!1224404))

(declare-fun d!1224412 () Bool)

(declare-fun fromListB!2498 (List!44902) BalanceConc!26692)

(assert (=> d!1224412 (= (seqFromList!5455 p!2912) (fromListB!2498 p!2912))))

(declare-fun bs!595078 () Bool)

(assert (= bs!595078 d!1224412))

(declare-fun m!4730611 () Bool)

(assert (=> bs!595078 m!4730611))

(assert (=> b!4133506 d!1224412))

(declare-fun d!1224414 () Bool)

(assert (=> d!1224414 (= (apply!10411 (transformation!7338 r!4008) lt!1473780) (dynLambda!19212 (toValue!10002 (transformation!7338 r!4008)) lt!1473780))))

(declare-fun b_lambda!121445 () Bool)

(assert (=> (not b_lambda!121445) (not d!1224414)))

(assert (=> d!1224414 t!341773))

(declare-fun b_and!320591 () Bool)

(assert (= b_and!320567 (and (=> t!341773 result!301568) b_and!320591)))

(assert (=> d!1224414 t!341775))

(declare-fun b_and!320593 () Bool)

(assert (= b_and!320569 (and (=> t!341775 result!301572) b_and!320593)))

(assert (=> d!1224414 t!341777))

(declare-fun b_and!320595 () Bool)

(assert (= b_and!320571 (and (=> t!341777 result!301574) b_and!320595)))

(assert (=> d!1224414 m!4730545))

(assert (=> b!4133506 d!1224414))

(declare-fun d!1224416 () Bool)

(declare-fun lt!1473830 () Int)

(assert (=> d!1224416 (>= lt!1473830 0)))

(declare-fun e!2564778 () Int)

(assert (=> d!1224416 (= lt!1473830 e!2564778)))

(declare-fun c!709095 () Bool)

(assert (=> d!1224416 (= c!709095 ((_ is Nil!44778) p!2912))))

(assert (=> d!1224416 (= (size!33142 p!2912) lt!1473830)))

(declare-fun b!4133642 () Bool)

(assert (=> b!4133642 (= e!2564778 0)))

(declare-fun b!4133643 () Bool)

(assert (=> b!4133643 (= e!2564778 (+ 1 (size!33142 (t!341763 p!2912))))))

(assert (= (and d!1224416 c!709095) b!4133642))

(assert (= (and d!1224416 (not c!709095)) b!4133643))

(declare-fun m!4730613 () Bool)

(assert (=> b!4133643 m!4730613))

(assert (=> b!4133506 d!1224416))

(declare-fun d!1224418 () Bool)

(declare-fun lt!1473833 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6907 (List!44903) (InoxSet Rule!14476))

(assert (=> d!1224418 (= lt!1473833 (select (content!6907 rules!3756) r!4008))))

(declare-fun e!2564783 () Bool)

(assert (=> d!1224418 (= lt!1473833 e!2564783)))

(declare-fun res!1690066 () Bool)

(assert (=> d!1224418 (=> (not res!1690066) (not e!2564783))))

(assert (=> d!1224418 (= res!1690066 ((_ is Cons!44779) rules!3756))))

(assert (=> d!1224418 (= (contains!9016 rules!3756 r!4008) lt!1473833)))

(declare-fun b!4133648 () Bool)

(declare-fun e!2564784 () Bool)

(assert (=> b!4133648 (= e!2564783 e!2564784)))

(declare-fun res!1690067 () Bool)

(assert (=> b!4133648 (=> res!1690067 e!2564784)))

(assert (=> b!4133648 (= res!1690067 (= (h!50199 rules!3756) r!4008))))

(declare-fun b!4133649 () Bool)

(assert (=> b!4133649 (= e!2564784 (contains!9016 (t!341764 rules!3756) r!4008))))

(assert (= (and d!1224418 res!1690066) b!4133648))

(assert (= (and b!4133648 (not res!1690067)) b!4133649))

(declare-fun m!4730615 () Bool)

(assert (=> d!1224418 m!4730615))

(declare-fun m!4730617 () Bool)

(assert (=> d!1224418 m!4730617))

(declare-fun m!4730619 () Bool)

(assert (=> b!4133649 m!4730619))

(assert (=> b!4133496 d!1224418))

(declare-fun d!1224420 () Bool)

(assert (=> d!1224420 (= (isEmpty!26666 rules!3756) ((_ is Nil!44779) rules!3756))))

(assert (=> b!4133494 d!1224420))

(declare-fun d!1224422 () Bool)

(assert (=> d!1224422 (= (inv!59378 (tag!8198 r!4008)) (= (mod (str.len (value!229686 (tag!8198 r!4008))) 2) 0))))

(assert (=> b!4133503 d!1224422))

(declare-fun d!1224424 () Bool)

(declare-fun res!1690068 () Bool)

(declare-fun e!2564785 () Bool)

(assert (=> d!1224424 (=> (not res!1690068) (not e!2564785))))

(assert (=> d!1224424 (= res!1690068 (semiInverseModEq!3166 (toChars!9861 (transformation!7338 r!4008)) (toValue!10002 (transformation!7338 r!4008))))))

(assert (=> d!1224424 (= (inv!59380 (transformation!7338 r!4008)) e!2564785)))

(declare-fun b!4133650 () Bool)

(assert (=> b!4133650 (= e!2564785 (equivClasses!3065 (toChars!9861 (transformation!7338 r!4008)) (toValue!10002 (transformation!7338 r!4008))))))

(assert (= (and d!1224424 res!1690068) b!4133650))

(declare-fun m!4730621 () Bool)

(assert (=> d!1224424 m!4730621))

(declare-fun m!4730623 () Bool)

(assert (=> b!4133650 m!4730623))

(assert (=> b!4133503 d!1224424))

(declare-fun d!1224426 () Bool)

(declare-fun lt!1473834 () Bool)

(assert (=> d!1224426 (= lt!1473834 (select (content!6907 (tail!6489 rules!3756)) r!4008))))

(declare-fun e!2564786 () Bool)

(assert (=> d!1224426 (= lt!1473834 e!2564786)))

(declare-fun res!1690069 () Bool)

(assert (=> d!1224426 (=> (not res!1690069) (not e!2564786))))

(assert (=> d!1224426 (= res!1690069 ((_ is Cons!44779) (tail!6489 rules!3756)))))

(assert (=> d!1224426 (= (contains!9016 (tail!6489 rules!3756) r!4008) lt!1473834)))

(declare-fun b!4133651 () Bool)

(declare-fun e!2564787 () Bool)

(assert (=> b!4133651 (= e!2564786 e!2564787)))

(declare-fun res!1690070 () Bool)

(assert (=> b!4133651 (=> res!1690070 e!2564787)))

(assert (=> b!4133651 (= res!1690070 (= (h!50199 (tail!6489 rules!3756)) r!4008))))

(declare-fun b!4133652 () Bool)

(assert (=> b!4133652 (= e!2564787 (contains!9016 (t!341764 (tail!6489 rules!3756)) r!4008))))

(assert (= (and d!1224426 res!1690069) b!4133651))

(assert (= (and b!4133651 (not res!1690070)) b!4133652))

(assert (=> d!1224426 m!4730441))

(declare-fun m!4730625 () Bool)

(assert (=> d!1224426 m!4730625))

(declare-fun m!4730627 () Bool)

(assert (=> d!1224426 m!4730627))

(declare-fun m!4730629 () Bool)

(assert (=> b!4133652 m!4730629))

(assert (=> b!4133502 d!1224426))

(declare-fun d!1224428 () Bool)

(assert (=> d!1224428 (= (tail!6489 rules!3756) (t!341764 rules!3756))))

(assert (=> b!4133502 d!1224428))

(declare-fun d!1224430 () Bool)

(declare-fun res!1690089 () Bool)

(declare-fun e!2564798 () Bool)

(assert (=> d!1224430 (=> res!1690089 e!2564798)))

(assert (=> d!1224430 (= res!1690089 ((_ is Nil!44779) rules!3756))))

(assert (=> d!1224430 (= (noDuplicateTag!2964 thiss!25645 rules!3756 (noDuplicateTag$default$2!14 thiss!25645)) e!2564798)))

(declare-fun b!4133675 () Bool)

(declare-fun e!2564799 () Bool)

(assert (=> b!4133675 (= e!2564798 e!2564799)))

(declare-fun res!1690090 () Bool)

(assert (=> b!4133675 (=> (not res!1690090) (not e!2564799))))

(declare-fun contains!9018 (List!44904 String!51590) Bool)

(assert (=> b!4133675 (= res!1690090 (not (contains!9018 (noDuplicateTag$default$2!14 thiss!25645) (tag!8198 (h!50199 rules!3756)))))))

(declare-fun b!4133676 () Bool)

(assert (=> b!4133676 (= e!2564799 (noDuplicateTag!2964 thiss!25645 (t!341764 rules!3756) (Cons!44780 (tag!8198 (h!50199 rules!3756)) (noDuplicateTag$default$2!14 thiss!25645))))))

(assert (= (and d!1224430 (not res!1690089)) b!4133675))

(assert (= (and b!4133675 res!1690090) b!4133676))

(assert (=> b!4133675 m!4730447))

(declare-fun m!4730631 () Bool)

(assert (=> b!4133675 m!4730631))

(declare-fun m!4730633 () Bool)

(assert (=> b!4133676 m!4730633))

(assert (=> b!4133502 d!1224430))

(declare-fun d!1224432 () Bool)

(assert (=> d!1224432 (= (noDuplicateTag$default$2!14 thiss!25645) Nil!44780)))

(assert (=> b!4133502 d!1224432))

(declare-fun d!1224434 () Bool)

(assert (=> d!1224434 (contains!9016 (tail!6489 rules!3756) r!4008)))

(declare-fun lt!1473847 () Unit!64097)

(declare-fun choose!25259 (List!44903 Rule!14476 Rule!14476) Unit!64097)

(assert (=> d!1224434 (= lt!1473847 (choose!25259 rules!3756 rBis!149 r!4008))))

(declare-fun e!2564802 () Bool)

(assert (=> d!1224434 e!2564802))

(declare-fun res!1690093 () Bool)

(assert (=> d!1224434 (=> (not res!1690093) (not e!2564802))))

(assert (=> d!1224434 (= res!1690093 (contains!9016 rules!3756 rBis!149))))

(assert (=> d!1224434 (= (lemmaGetIndexBiggerAndHeadEqThenTailContains!42 rules!3756 rBis!149 r!4008) lt!1473847)))

(declare-fun b!4133679 () Bool)

(assert (=> b!4133679 (= e!2564802 (contains!9016 rules!3756 r!4008))))

(assert (= (and d!1224434 res!1690093) b!4133679))

(assert (=> d!1224434 m!4730441))

(assert (=> d!1224434 m!4730441))

(assert (=> d!1224434 m!4730443))

(declare-fun m!4730635 () Bool)

(assert (=> d!1224434 m!4730635))

(assert (=> d!1224434 m!4730461))

(assert (=> b!4133679 m!4730451))

(assert (=> b!4133502 d!1224434))

(declare-fun b!4133697 () Bool)

(declare-fun e!2564813 () Bool)

(declare-fun e!2564814 () Bool)

(assert (=> b!4133697 (= e!2564813 e!2564814)))

(declare-fun res!1690111 () Bool)

(assert (=> b!4133697 (=> (not res!1690111) (not e!2564814))))

(assert (=> b!4133697 (= res!1690111 (not ((_ is Nil!44778) input!3238)))))

(declare-fun b!4133699 () Bool)

(assert (=> b!4133699 (= e!2564814 (isPrefix!4273 (tail!6491 p!2912) (tail!6491 input!3238)))))

(declare-fun d!1224436 () Bool)

(declare-fun e!2564812 () Bool)

(assert (=> d!1224436 e!2564812))

(declare-fun res!1690110 () Bool)

(assert (=> d!1224436 (=> res!1690110 e!2564812)))

(declare-fun lt!1473855 () Bool)

(assert (=> d!1224436 (= res!1690110 (not lt!1473855))))

(assert (=> d!1224436 (= lt!1473855 e!2564813)))

(declare-fun res!1690112 () Bool)

(assert (=> d!1224436 (=> res!1690112 e!2564813)))

(assert (=> d!1224436 (= res!1690112 ((_ is Nil!44778) p!2912))))

(assert (=> d!1224436 (= (isPrefix!4273 p!2912 input!3238) lt!1473855)))

(declare-fun b!4133698 () Bool)

(declare-fun res!1690109 () Bool)

(assert (=> b!4133698 (=> (not res!1690109) (not e!2564814))))

(declare-fun head!8716 (List!44902) C!24672)

(assert (=> b!4133698 (= res!1690109 (= (head!8716 p!2912) (head!8716 input!3238)))))

(declare-fun b!4133700 () Bool)

(assert (=> b!4133700 (= e!2564812 (>= (size!33142 input!3238) (size!33142 p!2912)))))

(assert (= (and d!1224436 (not res!1690112)) b!4133697))

(assert (= (and b!4133697 res!1690111) b!4133698))

(assert (= (and b!4133698 res!1690109) b!4133699))

(assert (= (and d!1224436 (not res!1690110)) b!4133700))

(declare-fun m!4730669 () Bool)

(assert (=> b!4133699 m!4730669))

(assert (=> b!4133699 m!4730555))

(assert (=> b!4133699 m!4730669))

(assert (=> b!4133699 m!4730555))

(declare-fun m!4730671 () Bool)

(assert (=> b!4133699 m!4730671))

(declare-fun m!4730673 () Bool)

(assert (=> b!4133698 m!4730673))

(declare-fun m!4730675 () Bool)

(assert (=> b!4133698 m!4730675))

(assert (=> b!4133700 m!4730553))

(assert (=> b!4133700 m!4730429))

(assert (=> b!4133513 d!1224436))

(declare-fun d!1224440 () Bool)

(declare-fun lt!1473856 () Bool)

(assert (=> d!1224440 (= lt!1473856 (select (content!6907 rules!3756) rBis!149))))

(declare-fun e!2564815 () Bool)

(assert (=> d!1224440 (= lt!1473856 e!2564815)))

(declare-fun res!1690113 () Bool)

(assert (=> d!1224440 (=> (not res!1690113) (not e!2564815))))

(assert (=> d!1224440 (= res!1690113 ((_ is Cons!44779) rules!3756))))

(assert (=> d!1224440 (= (contains!9016 rules!3756 rBis!149) lt!1473856)))

(declare-fun b!4133701 () Bool)

(declare-fun e!2564816 () Bool)

(assert (=> b!4133701 (= e!2564815 e!2564816)))

(declare-fun res!1690114 () Bool)

(assert (=> b!4133701 (=> res!1690114 e!2564816)))

(assert (=> b!4133701 (= res!1690114 (= (h!50199 rules!3756) rBis!149))))

(declare-fun b!4133702 () Bool)

(assert (=> b!4133702 (= e!2564816 (contains!9016 (t!341764 rules!3756) rBis!149))))

(assert (= (and d!1224440 res!1690113) b!4133701))

(assert (= (and b!4133701 (not res!1690114)) b!4133702))

(assert (=> d!1224440 m!4730615))

(declare-fun m!4730677 () Bool)

(assert (=> d!1224440 m!4730677))

(declare-fun m!4730679 () Bool)

(assert (=> b!4133702 m!4730679))

(assert (=> b!4133511 d!1224440))

(declare-fun b!4133752 () Bool)

(declare-fun res!1690141 () Bool)

(declare-fun e!2564850 () Bool)

(assert (=> b!4133752 (=> res!1690141 e!2564850)))

(assert (=> b!4133752 (= res!1690141 (not (isEmpty!26667 (tail!6491 p!2912))))))

(declare-fun b!4133753 () Bool)

(declare-fun res!1690138 () Bool)

(declare-fun e!2564848 () Bool)

(assert (=> b!4133753 (=> res!1690138 e!2564848)))

(assert (=> b!4133753 (= res!1690138 (not ((_ is ElementMatch!12243) (regex!7338 r!4008))))))

(declare-fun e!2564847 () Bool)

(assert (=> b!4133753 (= e!2564847 e!2564848)))

(declare-fun b!4133754 () Bool)

(assert (=> b!4133754 (= e!2564850 (not (= (head!8716 p!2912) (c!709073 (regex!7338 r!4008)))))))

(declare-fun b!4133756 () Bool)

(declare-fun e!2564846 () Bool)

(assert (=> b!4133756 (= e!2564846 e!2564850)))

(declare-fun res!1690135 () Bool)

(assert (=> b!4133756 (=> res!1690135 e!2564850)))

(declare-fun call!290389 () Bool)

(assert (=> b!4133756 (= res!1690135 call!290389)))

(declare-fun b!4133757 () Bool)

(declare-fun lt!1473865 () Bool)

(assert (=> b!4133757 (= e!2564847 (not lt!1473865))))

(declare-fun bm!290384 () Bool)

(assert (=> bm!290384 (= call!290389 (isEmpty!26667 p!2912))))

(declare-fun b!4133758 () Bool)

(declare-fun res!1690134 () Bool)

(declare-fun e!2564845 () Bool)

(assert (=> b!4133758 (=> (not res!1690134) (not e!2564845))))

(assert (=> b!4133758 (= res!1690134 (isEmpty!26667 (tail!6491 p!2912)))))

(declare-fun b!4133759 () Bool)

(declare-fun e!2564849 () Bool)

(declare-fun derivativeStep!3697 (Regex!12243 C!24672) Regex!12243)

(assert (=> b!4133759 (= e!2564849 (matchR!6072 (derivativeStep!3697 (regex!7338 r!4008) (head!8716 p!2912)) (tail!6491 p!2912)))))

(declare-fun b!4133760 () Bool)

(assert (=> b!4133760 (= e!2564845 (= (head!8716 p!2912) (c!709073 (regex!7338 r!4008))))))

(declare-fun b!4133761 () Bool)

(assert (=> b!4133761 (= e!2564849 (nullable!4302 (regex!7338 r!4008)))))

(declare-fun b!4133762 () Bool)

(assert (=> b!4133762 (= e!2564848 e!2564846)))

(declare-fun res!1690136 () Bool)

(assert (=> b!4133762 (=> (not res!1690136) (not e!2564846))))

(assert (=> b!4133762 (= res!1690136 (not lt!1473865))))

(declare-fun b!4133763 () Bool)

(declare-fun res!1690137 () Bool)

(assert (=> b!4133763 (=> res!1690137 e!2564848)))

(assert (=> b!4133763 (= res!1690137 e!2564845)))

(declare-fun res!1690140 () Bool)

(assert (=> b!4133763 (=> (not res!1690140) (not e!2564845))))

(assert (=> b!4133763 (= res!1690140 lt!1473865)))

(declare-fun b!4133755 () Bool)

(declare-fun res!1690139 () Bool)

(assert (=> b!4133755 (=> (not res!1690139) (not e!2564845))))

(assert (=> b!4133755 (= res!1690139 (not call!290389))))

(declare-fun d!1224442 () Bool)

(declare-fun e!2564844 () Bool)

(assert (=> d!1224442 e!2564844))

(declare-fun c!709115 () Bool)

(assert (=> d!1224442 (= c!709115 ((_ is EmptyExpr!12243) (regex!7338 r!4008)))))

(assert (=> d!1224442 (= lt!1473865 e!2564849)))

(declare-fun c!709114 () Bool)

(assert (=> d!1224442 (= c!709114 (isEmpty!26667 p!2912))))

(assert (=> d!1224442 (validRegex!5510 (regex!7338 r!4008))))

(assert (=> d!1224442 (= (matchR!6072 (regex!7338 r!4008) p!2912) lt!1473865)))

(declare-fun b!4133764 () Bool)

(assert (=> b!4133764 (= e!2564844 e!2564847)))

(declare-fun c!709116 () Bool)

(assert (=> b!4133764 (= c!709116 ((_ is EmptyLang!12243) (regex!7338 r!4008)))))

(declare-fun b!4133765 () Bool)

(assert (=> b!4133765 (= e!2564844 (= lt!1473865 call!290389))))

(assert (= (and d!1224442 c!709114) b!4133761))

(assert (= (and d!1224442 (not c!709114)) b!4133759))

(assert (= (and d!1224442 c!709115) b!4133765))

(assert (= (and d!1224442 (not c!709115)) b!4133764))

(assert (= (and b!4133764 c!709116) b!4133757))

(assert (= (and b!4133764 (not c!709116)) b!4133753))

(assert (= (and b!4133753 (not res!1690138)) b!4133763))

(assert (= (and b!4133763 res!1690140) b!4133755))

(assert (= (and b!4133755 res!1690139) b!4133758))

(assert (= (and b!4133758 res!1690134) b!4133760))

(assert (= (and b!4133763 (not res!1690137)) b!4133762))

(assert (= (and b!4133762 res!1690136) b!4133756))

(assert (= (and b!4133756 (not res!1690135)) b!4133752))

(assert (= (and b!4133752 (not res!1690141)) b!4133754))

(assert (= (or b!4133765 b!4133755 b!4133756) bm!290384))

(assert (=> b!4133758 m!4730669))

(assert (=> b!4133758 m!4730669))

(declare-fun m!4730697 () Bool)

(assert (=> b!4133758 m!4730697))

(assert (=> b!4133759 m!4730673))

(assert (=> b!4133759 m!4730673))

(declare-fun m!4730699 () Bool)

(assert (=> b!4133759 m!4730699))

(assert (=> b!4133759 m!4730669))

(assert (=> b!4133759 m!4730699))

(assert (=> b!4133759 m!4730669))

(declare-fun m!4730701 () Bool)

(assert (=> b!4133759 m!4730701))

(assert (=> bm!290384 m!4730459))

(assert (=> b!4133754 m!4730673))

(assert (=> d!1224442 m!4730459))

(assert (=> d!1224442 m!4730519))

(assert (=> b!4133761 m!4730521))

(assert (=> b!4133760 m!4730673))

(assert (=> b!4133752 m!4730669))

(assert (=> b!4133752 m!4730669))

(assert (=> b!4133752 m!4730697))

(assert (=> b!4133501 d!1224442))

(declare-fun b!4133782 () Bool)

(declare-fun e!2564857 () Bool)

(assert (=> b!4133782 (= e!2564857 tp_is_empty!21409)))

(assert (=> b!4133499 (= tp!1259969 e!2564857)))

(declare-fun b!4133784 () Bool)

(declare-fun tp!1260001 () Bool)

(assert (=> b!4133784 (= e!2564857 tp!1260001)))

(declare-fun b!4133785 () Bool)

(declare-fun tp!1259999 () Bool)

(declare-fun tp!1260000 () Bool)

(assert (=> b!4133785 (= e!2564857 (and tp!1259999 tp!1260000))))

(declare-fun b!4133783 () Bool)

(declare-fun tp!1259998 () Bool)

(declare-fun tp!1259997 () Bool)

(assert (=> b!4133783 (= e!2564857 (and tp!1259998 tp!1259997))))

(assert (= (and b!4133499 ((_ is ElementMatch!12243) (regex!7338 rBis!149))) b!4133782))

(assert (= (and b!4133499 ((_ is Concat!19812) (regex!7338 rBis!149))) b!4133783))

(assert (= (and b!4133499 ((_ is Star!12243) (regex!7338 rBis!149))) b!4133784))

(assert (= (and b!4133499 ((_ is Union!12243) (regex!7338 rBis!149))) b!4133785))

(declare-fun b!4133799 () Bool)

(declare-fun b_free!117399 () Bool)

(declare-fun b_next!118103 () Bool)

(assert (=> b!4133799 (= b_free!117399 (not b_next!118103))))

(declare-fun t!341791 () Bool)

(declare-fun tb!248107 () Bool)

(assert (=> (and b!4133799 (= (toValue!10002 (transformation!7338 (h!50199 (t!341764 rules!3756)))) (toValue!10002 (transformation!7338 r!4008))) t!341791) tb!248107))

(declare-fun result!301596 () Bool)

(assert (= result!301596 result!301568))

(assert (=> d!1224392 t!341791))

(assert (=> d!1224414 t!341791))

(declare-fun b_and!320597 () Bool)

(declare-fun tp!1260012 () Bool)

(assert (=> b!4133799 (= tp!1260012 (and (=> t!341791 result!301596) b_and!320597))))

(declare-fun b_free!117401 () Bool)

(declare-fun b_next!118105 () Bool)

(assert (=> b!4133799 (= b_free!117401 (not b_next!118105))))

(declare-fun tb!248109 () Bool)

(declare-fun t!341793 () Bool)

(assert (=> (and b!4133799 (= (toChars!9861 (transformation!7338 (h!50199 (t!341764 rules!3756)))) (toChars!9861 (transformation!7338 r!4008))) t!341793) tb!248109))

(declare-fun result!301598 () Bool)

(assert (= result!301598 result!301560))

(assert (=> d!1224392 t!341793))

(declare-fun b_and!320599 () Bool)

(declare-fun tp!1260010 () Bool)

(assert (=> b!4133799 (= tp!1260010 (and (=> t!341793 result!301598) b_and!320599))))

(declare-fun e!2564869 () Bool)

(assert (=> b!4133799 (= e!2564869 (and tp!1260012 tp!1260010))))

(declare-fun b!4133798 () Bool)

(declare-fun e!2564870 () Bool)

(declare-fun tp!1260013 () Bool)

(assert (=> b!4133798 (= e!2564870 (and tp!1260013 (inv!59378 (tag!8198 (h!50199 (t!341764 rules!3756)))) (inv!59380 (transformation!7338 (h!50199 (t!341764 rules!3756)))) e!2564869))))

(declare-fun b!4133797 () Bool)

(declare-fun e!2564871 () Bool)

(declare-fun tp!1260011 () Bool)

(assert (=> b!4133797 (= e!2564871 (and e!2564870 tp!1260011))))

(assert (=> b!4133505 (= tp!1259971 e!2564871)))

(assert (= b!4133798 b!4133799))

(assert (= b!4133797 b!4133798))

(assert (= (and b!4133505 ((_ is Cons!44779) (t!341764 rules!3756))) b!4133797))

(declare-fun m!4730711 () Bool)

(assert (=> b!4133798 m!4730711))

(declare-fun m!4730713 () Bool)

(assert (=> b!4133798 m!4730713))

(declare-fun b!4133800 () Bool)

(declare-fun e!2564873 () Bool)

(assert (=> b!4133800 (= e!2564873 tp_is_empty!21409)))

(assert (=> b!4133500 (= tp!1259979 e!2564873)))

(declare-fun b!4133802 () Bool)

(declare-fun tp!1260018 () Bool)

(assert (=> b!4133802 (= e!2564873 tp!1260018)))

(declare-fun b!4133803 () Bool)

(declare-fun tp!1260016 () Bool)

(declare-fun tp!1260017 () Bool)

(assert (=> b!4133803 (= e!2564873 (and tp!1260016 tp!1260017))))

(declare-fun b!4133801 () Bool)

(declare-fun tp!1260015 () Bool)

(declare-fun tp!1260014 () Bool)

(assert (=> b!4133801 (= e!2564873 (and tp!1260015 tp!1260014))))

(assert (= (and b!4133500 ((_ is ElementMatch!12243) (regex!7338 (h!50199 rules!3756)))) b!4133800))

(assert (= (and b!4133500 ((_ is Concat!19812) (regex!7338 (h!50199 rules!3756)))) b!4133801))

(assert (= (and b!4133500 ((_ is Star!12243) (regex!7338 (h!50199 rules!3756)))) b!4133802))

(assert (= (and b!4133500 ((_ is Union!12243) (regex!7338 (h!50199 rules!3756)))) b!4133803))

(declare-fun b!4133804 () Bool)

(declare-fun e!2564874 () Bool)

(assert (=> b!4133804 (= e!2564874 tp_is_empty!21409)))

(assert (=> b!4133503 (= tp!1259977 e!2564874)))

(declare-fun b!4133806 () Bool)

(declare-fun tp!1260023 () Bool)

(assert (=> b!4133806 (= e!2564874 tp!1260023)))

(declare-fun b!4133807 () Bool)

(declare-fun tp!1260021 () Bool)

(declare-fun tp!1260022 () Bool)

(assert (=> b!4133807 (= e!2564874 (and tp!1260021 tp!1260022))))

(declare-fun b!4133805 () Bool)

(declare-fun tp!1260020 () Bool)

(declare-fun tp!1260019 () Bool)

(assert (=> b!4133805 (= e!2564874 (and tp!1260020 tp!1260019))))

(assert (= (and b!4133503 ((_ is ElementMatch!12243) (regex!7338 r!4008))) b!4133804))

(assert (= (and b!4133503 ((_ is Concat!19812) (regex!7338 r!4008))) b!4133805))

(assert (= (and b!4133503 ((_ is Star!12243) (regex!7338 r!4008))) b!4133806))

(assert (= (and b!4133503 ((_ is Union!12243) (regex!7338 r!4008))) b!4133807))

(declare-fun b!4133812 () Bool)

(declare-fun e!2564877 () Bool)

(declare-fun tp!1260026 () Bool)

(assert (=> b!4133812 (= e!2564877 (and tp_is_empty!21409 tp!1260026))))

(assert (=> b!4133498 (= tp!1259976 e!2564877)))

(assert (= (and b!4133498 ((_ is Cons!44778) (t!341763 input!3238))) b!4133812))

(declare-fun b!4133813 () Bool)

(declare-fun e!2564878 () Bool)

(declare-fun tp!1260027 () Bool)

(assert (=> b!4133813 (= e!2564878 (and tp_is_empty!21409 tp!1260027))))

(assert (=> b!4133504 (= tp!1259975 e!2564878)))

(assert (= (and b!4133504 ((_ is Cons!44778) (t!341763 p!2912))) b!4133813))

(declare-fun b_lambda!121447 () Bool)

(assert (= b_lambda!121445 (or (and b!4133512 b_free!117387 (= (toValue!10002 (transformation!7338 (h!50199 rules!3756))) (toValue!10002 (transformation!7338 r!4008)))) (and b!4133514 b_free!117391) (and b!4133507 b_free!117395 (= (toValue!10002 (transformation!7338 rBis!149)) (toValue!10002 (transformation!7338 r!4008)))) (and b!4133799 b_free!117399 (= (toValue!10002 (transformation!7338 (h!50199 (t!341764 rules!3756)))) (toValue!10002 (transformation!7338 r!4008)))) b_lambda!121447)))

(declare-fun b_lambda!121449 () Bool)

(assert (= b_lambda!121437 (or (and b!4133512 b_free!117387 (= (toValue!10002 (transformation!7338 (h!50199 rules!3756))) (toValue!10002 (transformation!7338 r!4008)))) (and b!4133514 b_free!117391) (and b!4133507 b_free!117395 (= (toValue!10002 (transformation!7338 rBis!149)) (toValue!10002 (transformation!7338 r!4008)))) (and b!4133799 b_free!117399 (= (toValue!10002 (transformation!7338 (h!50199 (t!341764 rules!3756)))) (toValue!10002 (transformation!7338 r!4008)))) b_lambda!121449)))

(declare-fun b_lambda!121451 () Bool)

(assert (= b_lambda!121435 (or (and b!4133512 b_free!117389 (= (toChars!9861 (transformation!7338 (h!50199 rules!3756))) (toChars!9861 (transformation!7338 r!4008)))) (and b!4133514 b_free!117393) (and b!4133507 b_free!117397 (= (toChars!9861 (transformation!7338 rBis!149)) (toChars!9861 (transformation!7338 r!4008)))) (and b!4133799 b_free!117401 (= (toChars!9861 (transformation!7338 (h!50199 (t!341764 rules!3756)))) (toChars!9861 (transformation!7338 r!4008)))) b_lambda!121451)))

(check-sat b_and!320599 b_and!320561 (not b!4133652) b_and!320593 (not b!4133761) (not b!4133813) (not d!1224364) (not b!4133564) (not d!1224380) (not b!4133591) (not b!4133635) (not d!1224392) (not b!4133632) (not b!4133702) (not b!4133785) b_and!320565 (not b!4133783) (not d!1224426) (not d!1224424) (not b_next!118105) (not d!1224376) (not b!4133643) (not b_lambda!121449) (not b!4133525) b_and!320591 (not b!4133698) (not b!4133802) (not d!1224440) (not b!4133784) (not d!1224378) (not b!4133805) (not d!1224412) (not b!4133629) (not b!4133630) (not b!4133754) (not b!4133533) (not b!4133806) b_and!320597 tp_is_empty!21409 (not d!1224434) (not b!4133679) (not b!4133801) (not d!1224372) (not b!4133634) (not b!4133633) (not b!4133797) (not bm!290384) (not tb!248083) (not b!4133542) (not b_lambda!121447) (not b_next!118095) (not b_next!118091) (not d!1224442) (not b!4133675) (not b!4133636) (not b_next!118097) (not b!4133803) (not b!4133752) (not b!4133584) (not b!4133558) (not b_lambda!121451) (not b!4133700) b_and!320595 (not b_next!118099) (not b!4133798) (not tb!248089) (not d!1224418) (not b!4133566) (not d!1224370) (not b!4133637) (not b!4133676) (not d!1224404) (not b_next!118103) (not b_next!118101) (not bm!290378) (not b!4133807) (not d!1224386) (not d!1224366) (not b!4133699) (not b!4133650) (not b!4133759) (not b_next!118093) (not b!4133760) (not b!4133812) (not b!4133649) (not d!1224390) (not d!1224402) (not b!4133532) (not b!4133758) b_and!320563)
(check-sat b_and!320599 b_and!320561 b_and!320565 (not b_next!118105) b_and!320591 b_and!320597 b_and!320595 (not b_next!118099) (not b_next!118093) b_and!320593 b_and!320563 (not b_next!118095) (not b_next!118091) (not b_next!118097) (not b_next!118103) (not b_next!118101))
