; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!179646 () Bool)

(assert start!179646)

(declare-fun b!1815931 () Bool)

(declare-fun b_free!50091 () Bool)

(declare-fun b_next!50795 () Bool)

(assert (=> b!1815931 (= b_free!50091 (not b_next!50795))))

(declare-fun tp!512724 () Bool)

(declare-fun b_and!140537 () Bool)

(assert (=> b!1815931 (= tp!512724 b_and!140537)))

(declare-fun b_free!50093 () Bool)

(declare-fun b_next!50797 () Bool)

(assert (=> b!1815931 (= b_free!50093 (not b_next!50797))))

(declare-fun tp!512723 () Bool)

(declare-fun b_and!140539 () Bool)

(assert (=> b!1815931 (= tp!512723 b_and!140539)))

(declare-fun b!1815929 () Bool)

(declare-fun b_free!50095 () Bool)

(declare-fun b_next!50799 () Bool)

(assert (=> b!1815929 (= b_free!50095 (not b_next!50799))))

(declare-fun tp!512722 () Bool)

(declare-fun b_and!140541 () Bool)

(assert (=> b!1815929 (= tp!512722 b_and!140541)))

(declare-fun b_free!50097 () Bool)

(declare-fun b_next!50801 () Bool)

(assert (=> b!1815929 (= b_free!50097 (not b_next!50801))))

(declare-fun tp!512725 () Bool)

(declare-fun b_and!140543 () Bool)

(assert (=> b!1815929 (= tp!512725 b_and!140543)))

(declare-fun b!1815928 () Bool)

(declare-fun res!816477 () Bool)

(declare-fun e!1160166 () Bool)

(assert (=> b!1815928 (=> (not res!816477) (not e!1160166))))

(declare-datatypes ((LexerInterface!3192 0))(
  ( (LexerInterfaceExt!3189 (__x!12608 Int)) (Lexer!3190) )
))
(declare-fun thiss!28068 () LexerInterface!3192)

(declare-datatypes ((List!19893 0))(
  ( (Nil!19823) (Cons!19823 (h!25224 (_ BitVec 16)) (t!169562 List!19893)) )
))
(declare-datatypes ((TokenValue!3653 0))(
  ( (FloatLiteralValue!7306 (text!26016 List!19893)) (TokenValueExt!3652 (__x!12609 Int)) (Broken!18265 (value!111189 List!19893)) (Object!3722) (End!3653) (Def!3653) (Underscore!3653) (Match!3653) (Else!3653) (Error!3653) (Case!3653) (If!3653) (Extends!3653) (Abstract!3653) (Class!3653) (Val!3653) (DelimiterValue!7306 (del!3713 List!19893)) (KeywordValue!3659 (value!111190 List!19893)) (CommentValue!7306 (value!111191 List!19893)) (WhitespaceValue!7306 (value!111192 List!19893)) (IndentationValue!3653 (value!111193 List!19893)) (String!22596) (Int32!3653) (Broken!18266 (value!111194 List!19893)) (Boolean!3654) (Unit!34524) (OperatorValue!3656 (op!3713 List!19893)) (IdentifierValue!7306 (value!111195 List!19893)) (IdentifierValue!7307 (value!111196 List!19893)) (WhitespaceValue!7307 (value!111197 List!19893)) (True!7306) (False!7306) (Broken!18267 (value!111198 List!19893)) (Broken!18268 (value!111199 List!19893)) (True!7307) (RightBrace!3653) (RightBracket!3653) (Colon!3653) (Null!3653) (Comma!3653) (LeftBracket!3653) (False!7307) (LeftBrace!3653) (ImaginaryLiteralValue!3653 (text!26017 List!19893)) (StringLiteralValue!10959 (value!111200 List!19893)) (EOFValue!3653 (value!111201 List!19893)) (IdentValue!3653 (value!111202 List!19893)) (DelimiterValue!7307 (value!111203 List!19893)) (DedentValue!3653 (value!111204 List!19893)) (NewLineValue!3653 (value!111205 List!19893)) (IntegerValue!10959 (value!111206 (_ BitVec 32)) (text!26018 List!19893)) (IntegerValue!10960 (value!111207 Int) (text!26019 List!19893)) (Times!3653) (Or!3653) (Equal!3653) (Minus!3653) (Broken!18269 (value!111208 List!19893)) (And!3653) (Div!3653) (LessEqual!3653) (Mod!3653) (Concat!8544) (Not!3653) (Plus!3653) (SpaceValue!3653 (value!111209 List!19893)) (IntegerValue!10961 (value!111210 Int) (text!26020 List!19893)) (StringLiteralValue!10960 (text!26021 List!19893)) (FloatLiteralValue!7307 (text!26022 List!19893)) (BytesLiteralValue!3653 (value!111211 List!19893)) (CommentValue!7307 (value!111212 List!19893)) (StringLiteralValue!10961 (value!111213 List!19893)) (ErrorTokenValue!3653 (msg!3714 List!19893)) )
))
(declare-datatypes ((C!9956 0))(
  ( (C!9957 (val!5574 Int)) )
))
(declare-datatypes ((List!19894 0))(
  ( (Nil!19824) (Cons!19824 (h!25225 C!9956) (t!169563 List!19894)) )
))
(declare-datatypes ((IArray!13195 0))(
  ( (IArray!13196 (innerList!6655 List!19894)) )
))
(declare-datatypes ((Conc!6595 0))(
  ( (Node!6595 (left!15906 Conc!6595) (right!16236 Conc!6595) (csize!13420 Int) (cheight!6806 Int)) (Leaf!9597 (xs!9471 IArray!13195) (csize!13421 Int)) (Empty!6595) )
))
(declare-datatypes ((BalanceConc!13134 0))(
  ( (BalanceConc!13135 (c!296604 Conc!6595)) )
))
(declare-datatypes ((TokenValueInjection!6966 0))(
  ( (TokenValueInjection!6967 (toValue!5094 Int) (toChars!4953 Int)) )
))
(declare-datatypes ((Regex!4891 0))(
  ( (ElementMatch!4891 (c!296605 C!9956)) (Concat!8545 (regOne!10294 Regex!4891) (regTwo!10294 Regex!4891)) (EmptyExpr!4891) (Star!4891 (reg!5220 Regex!4891)) (EmptyLang!4891) (Union!4891 (regOne!10295 Regex!4891) (regTwo!10295 Regex!4891)) )
))
(declare-datatypes ((String!22597 0))(
  ( (String!22598 (value!111214 String)) )
))
(declare-datatypes ((Rule!6926 0))(
  ( (Rule!6927 (regex!3563 Regex!4891) (tag!3977 String!22597) (isSeparator!3563 Bool) (transformation!3563 TokenValueInjection!6966)) )
))
(declare-datatypes ((List!19895 0))(
  ( (Nil!19825) (Cons!19825 (h!25226 Rule!6926) (t!169564 List!19895)) )
))
(declare-fun rules!4538 () List!19895)

(declare-fun rulesInvariant!2861 (LexerInterface!3192 List!19895) Bool)

(assert (=> b!1815928 (= res!816477 (rulesInvariant!2861 thiss!28068 rules!4538))))

(declare-fun e!1160164 () Bool)

(assert (=> b!1815929 (= e!1160164 (and tp!512722 tp!512725))))

(declare-fun b!1815930 () Bool)

(declare-fun e!1160167 () Bool)

(declare-fun e!1160163 () Bool)

(declare-fun tp!512720 () Bool)

(assert (=> b!1815930 (= e!1160167 (and e!1160163 tp!512720))))

(declare-fun res!816480 () Bool)

(assert (=> start!179646 (=> (not res!816480) (not e!1160166))))

(get-info :version)

(assert (=> start!179646 (= res!816480 ((_ is Lexer!3190) thiss!28068))))

(assert (=> start!179646 e!1160166))

(assert (=> start!179646 true))

(assert (=> start!179646 e!1160167))

(declare-fun e!1160168 () Bool)

(assert (=> start!179646 e!1160168))

(declare-fun e!1160170 () Bool)

(assert (=> b!1815931 (= e!1160170 (and tp!512724 tp!512723))))

(declare-fun b!1815932 () Bool)

(declare-fun res!816479 () Bool)

(assert (=> b!1815932 (=> (not res!816479) (not e!1160166))))

(declare-fun rule!559 () Rule!6926)

(declare-fun contains!3597 (List!19895 Rule!6926) Bool)

(assert (=> b!1815932 (= res!816479 (contains!3597 rules!4538 rule!559))))

(declare-fun b!1815933 () Bool)

(declare-fun rulesValidInductive!1214 (LexerInterface!3192 List!19895) Bool)

(assert (=> b!1815933 (= e!1160166 (not (rulesValidInductive!1214 thiss!28068 rules!4538)))))

(declare-fun b!1815934 () Bool)

(declare-fun res!816478 () Bool)

(assert (=> b!1815934 (=> (not res!816478) (not e!1160166))))

(declare-fun isEmpty!12543 (List!19895) Bool)

(assert (=> b!1815934 (= res!816478 (not (isEmpty!12543 rules!4538)))))

(declare-fun tp!512721 () Bool)

(declare-fun b!1815935 () Bool)

(declare-fun inv!25847 (String!22597) Bool)

(declare-fun inv!25849 (TokenValueInjection!6966) Bool)

(assert (=> b!1815935 (= e!1160168 (and tp!512721 (inv!25847 (tag!3977 rule!559)) (inv!25849 (transformation!3563 rule!559)) e!1160164))))

(declare-fun tp!512726 () Bool)

(declare-fun b!1815936 () Bool)

(assert (=> b!1815936 (= e!1160163 (and tp!512726 (inv!25847 (tag!3977 (h!25226 rules!4538))) (inv!25849 (transformation!3563 (h!25226 rules!4538))) e!1160170))))

(assert (= (and start!179646 res!816480) b!1815934))

(assert (= (and b!1815934 res!816478) b!1815928))

(assert (= (and b!1815928 res!816477) b!1815932))

(assert (= (and b!1815932 res!816479) b!1815933))

(assert (= b!1815936 b!1815931))

(assert (= b!1815930 b!1815936))

(assert (= (and start!179646 ((_ is Cons!19825) rules!4538)) b!1815930))

(assert (= b!1815935 b!1815929))

(assert (= start!179646 b!1815935))

(declare-fun m!2245729 () Bool)

(assert (=> b!1815932 m!2245729))

(declare-fun m!2245731 () Bool)

(assert (=> b!1815934 m!2245731))

(declare-fun m!2245733 () Bool)

(assert (=> b!1815936 m!2245733))

(declare-fun m!2245735 () Bool)

(assert (=> b!1815936 m!2245735))

(declare-fun m!2245737 () Bool)

(assert (=> b!1815928 m!2245737))

(declare-fun m!2245739 () Bool)

(assert (=> b!1815933 m!2245739))

(declare-fun m!2245741 () Bool)

(assert (=> b!1815935 m!2245741))

(declare-fun m!2245743 () Bool)

(assert (=> b!1815935 m!2245743))

(check-sat (not b!1815936) (not b_next!50799) b_and!140537 (not b!1815935) (not b_next!50801) (not b!1815932) (not b!1815933) (not b_next!50797) (not b!1815930) (not b_next!50795) b_and!140541 b_and!140543 (not b!1815934) (not b!1815928) b_and!140539)
(check-sat (not b_next!50799) b_and!140537 b_and!140543 (not b_next!50801) b_and!140539 (not b_next!50797) (not b_next!50795) b_and!140541)
(get-model)

(declare-fun d!556952 () Bool)

(assert (=> d!556952 true))

(declare-fun lt!705969 () Bool)

(declare-fun lambda!71078 () Int)

(declare-fun forall!4287 (List!19895 Int) Bool)

(assert (=> d!556952 (= lt!705969 (forall!4287 rules!4538 lambda!71078))))

(declare-fun e!1160210 () Bool)

(assert (=> d!556952 (= lt!705969 e!1160210)))

(declare-fun res!816509 () Bool)

(assert (=> d!556952 (=> res!816509 e!1160210)))

(assert (=> d!556952 (= res!816509 (not ((_ is Cons!19825) rules!4538)))))

(assert (=> d!556952 (= (rulesValidInductive!1214 thiss!28068 rules!4538) lt!705969)))

(declare-fun b!1815991 () Bool)

(declare-fun e!1160211 () Bool)

(assert (=> b!1815991 (= e!1160210 e!1160211)))

(declare-fun res!816508 () Bool)

(assert (=> b!1815991 (=> (not res!816508) (not e!1160211))))

(declare-fun ruleValid!1059 (LexerInterface!3192 Rule!6926) Bool)

(assert (=> b!1815991 (= res!816508 (ruleValid!1059 thiss!28068 (h!25226 rules!4538)))))

(declare-fun b!1815992 () Bool)

(assert (=> b!1815992 (= e!1160211 (rulesValidInductive!1214 thiss!28068 (t!169564 rules!4538)))))

(assert (= (and d!556952 (not res!816509)) b!1815991))

(assert (= (and b!1815991 res!816508) b!1815992))

(declare-fun m!2245773 () Bool)

(assert (=> d!556952 m!2245773))

(declare-fun m!2245775 () Bool)

(assert (=> b!1815991 m!2245775))

(declare-fun m!2245777 () Bool)

(assert (=> b!1815992 m!2245777))

(assert (=> b!1815933 d!556952))

(declare-fun d!556970 () Bool)

(declare-fun res!816512 () Bool)

(declare-fun e!1160214 () Bool)

(assert (=> d!556970 (=> (not res!816512) (not e!1160214))))

(declare-fun rulesValid!1349 (LexerInterface!3192 List!19895) Bool)

(assert (=> d!556970 (= res!816512 (rulesValid!1349 thiss!28068 rules!4538))))

(assert (=> d!556970 (= (rulesInvariant!2861 thiss!28068 rules!4538) e!1160214)))

(declare-fun b!1815997 () Bool)

(declare-datatypes ((List!19897 0))(
  ( (Nil!19827) (Cons!19827 (h!25228 String!22597) (t!169566 List!19897)) )
))
(declare-fun noDuplicateTag!1349 (LexerInterface!3192 List!19895 List!19897) Bool)

(assert (=> b!1815997 (= e!1160214 (noDuplicateTag!1349 thiss!28068 rules!4538 Nil!19827))))

(assert (= (and d!556970 res!816512) b!1815997))

(declare-fun m!2245779 () Bool)

(assert (=> d!556970 m!2245779))

(declare-fun m!2245781 () Bool)

(assert (=> b!1815997 m!2245781))

(assert (=> b!1815928 d!556970))

(declare-fun d!556972 () Bool)

(declare-fun lt!705972 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2897 (List!19895) (InoxSet Rule!6926))

(assert (=> d!556972 (= lt!705972 (select (content!2897 rules!4538) rule!559))))

(declare-fun e!1160219 () Bool)

(assert (=> d!556972 (= lt!705972 e!1160219)))

(declare-fun res!816518 () Bool)

(assert (=> d!556972 (=> (not res!816518) (not e!1160219))))

(assert (=> d!556972 (= res!816518 ((_ is Cons!19825) rules!4538))))

(assert (=> d!556972 (= (contains!3597 rules!4538 rule!559) lt!705972)))

(declare-fun b!1816002 () Bool)

(declare-fun e!1160220 () Bool)

(assert (=> b!1816002 (= e!1160219 e!1160220)))

(declare-fun res!816517 () Bool)

(assert (=> b!1816002 (=> res!816517 e!1160220)))

(assert (=> b!1816002 (= res!816517 (= (h!25226 rules!4538) rule!559))))

(declare-fun b!1816003 () Bool)

(assert (=> b!1816003 (= e!1160220 (contains!3597 (t!169564 rules!4538) rule!559))))

(assert (= (and d!556972 res!816518) b!1816002))

(assert (= (and b!1816002 (not res!816517)) b!1816003))

(declare-fun m!2245783 () Bool)

(assert (=> d!556972 m!2245783))

(declare-fun m!2245785 () Bool)

(assert (=> d!556972 m!2245785))

(declare-fun m!2245787 () Bool)

(assert (=> b!1816003 m!2245787))

(assert (=> b!1815932 d!556972))

(declare-fun d!556974 () Bool)

(assert (=> d!556974 (= (inv!25847 (tag!3977 rule!559)) (= (mod (str.len (value!111214 (tag!3977 rule!559))) 2) 0))))

(assert (=> b!1815935 d!556974))

(declare-fun d!556976 () Bool)

(declare-fun res!816521 () Bool)

(declare-fun e!1160223 () Bool)

(assert (=> d!556976 (=> (not res!816521) (not e!1160223))))

(declare-fun semiInverseModEq!1424 (Int Int) Bool)

(assert (=> d!556976 (= res!816521 (semiInverseModEq!1424 (toChars!4953 (transformation!3563 rule!559)) (toValue!5094 (transformation!3563 rule!559))))))

(assert (=> d!556976 (= (inv!25849 (transformation!3563 rule!559)) e!1160223)))

(declare-fun b!1816006 () Bool)

(declare-fun equivClasses!1365 (Int Int) Bool)

(assert (=> b!1816006 (= e!1160223 (equivClasses!1365 (toChars!4953 (transformation!3563 rule!559)) (toValue!5094 (transformation!3563 rule!559))))))

(assert (= (and d!556976 res!816521) b!1816006))

(declare-fun m!2245789 () Bool)

(assert (=> d!556976 m!2245789))

(declare-fun m!2245791 () Bool)

(assert (=> b!1816006 m!2245791))

(assert (=> b!1815935 d!556976))

(declare-fun d!556978 () Bool)

(assert (=> d!556978 (= (inv!25847 (tag!3977 (h!25226 rules!4538))) (= (mod (str.len (value!111214 (tag!3977 (h!25226 rules!4538)))) 2) 0))))

(assert (=> b!1815936 d!556978))

(declare-fun d!556980 () Bool)

(declare-fun res!816522 () Bool)

(declare-fun e!1160224 () Bool)

(assert (=> d!556980 (=> (not res!816522) (not e!1160224))))

(assert (=> d!556980 (= res!816522 (semiInverseModEq!1424 (toChars!4953 (transformation!3563 (h!25226 rules!4538))) (toValue!5094 (transformation!3563 (h!25226 rules!4538)))))))

(assert (=> d!556980 (= (inv!25849 (transformation!3563 (h!25226 rules!4538))) e!1160224)))

(declare-fun b!1816007 () Bool)

(assert (=> b!1816007 (= e!1160224 (equivClasses!1365 (toChars!4953 (transformation!3563 (h!25226 rules!4538))) (toValue!5094 (transformation!3563 (h!25226 rules!4538)))))))

(assert (= (and d!556980 res!816522) b!1816007))

(declare-fun m!2245793 () Bool)

(assert (=> d!556980 m!2245793))

(declare-fun m!2245795 () Bool)

(assert (=> b!1816007 m!2245795))

(assert (=> b!1815936 d!556980))

(declare-fun d!556982 () Bool)

(assert (=> d!556982 (= (isEmpty!12543 rules!4538) ((_ is Nil!19825) rules!4538))))

(assert (=> b!1815934 d!556982))

(declare-fun b!1816021 () Bool)

(declare-fun e!1160227 () Bool)

(declare-fun tp!512773 () Bool)

(declare-fun tp!512769 () Bool)

(assert (=> b!1816021 (= e!1160227 (and tp!512773 tp!512769))))

(assert (=> b!1815935 (= tp!512721 e!1160227)))

(declare-fun b!1816020 () Bool)

(declare-fun tp!512771 () Bool)

(assert (=> b!1816020 (= e!1160227 tp!512771)))

(declare-fun b!1816019 () Bool)

(declare-fun tp!512770 () Bool)

(declare-fun tp!512772 () Bool)

(assert (=> b!1816019 (= e!1160227 (and tp!512770 tp!512772))))

(declare-fun b!1816018 () Bool)

(declare-fun tp_is_empty!8021 () Bool)

(assert (=> b!1816018 (= e!1160227 tp_is_empty!8021)))

(assert (= (and b!1815935 ((_ is ElementMatch!4891) (regex!3563 rule!559))) b!1816018))

(assert (= (and b!1815935 ((_ is Concat!8545) (regex!3563 rule!559))) b!1816019))

(assert (= (and b!1815935 ((_ is Star!4891) (regex!3563 rule!559))) b!1816020))

(assert (= (and b!1815935 ((_ is Union!4891) (regex!3563 rule!559))) b!1816021))

(declare-fun b!1816032 () Bool)

(declare-fun b_free!50103 () Bool)

(declare-fun b_next!50807 () Bool)

(assert (=> b!1816032 (= b_free!50103 (not b_next!50807))))

(declare-fun tp!512785 () Bool)

(declare-fun b_and!140549 () Bool)

(assert (=> b!1816032 (= tp!512785 b_and!140549)))

(declare-fun b_free!50105 () Bool)

(declare-fun b_next!50809 () Bool)

(assert (=> b!1816032 (= b_free!50105 (not b_next!50809))))

(declare-fun tp!512784 () Bool)

(declare-fun b_and!140551 () Bool)

(assert (=> b!1816032 (= tp!512784 b_and!140551)))

(declare-fun e!1160237 () Bool)

(assert (=> b!1816032 (= e!1160237 (and tp!512785 tp!512784))))

(declare-fun tp!512783 () Bool)

(declare-fun b!1816031 () Bool)

(declare-fun e!1160238 () Bool)

(assert (=> b!1816031 (= e!1160238 (and tp!512783 (inv!25847 (tag!3977 (h!25226 (t!169564 rules!4538)))) (inv!25849 (transformation!3563 (h!25226 (t!169564 rules!4538)))) e!1160237))))

(declare-fun b!1816030 () Bool)

(declare-fun e!1160239 () Bool)

(declare-fun tp!512782 () Bool)

(assert (=> b!1816030 (= e!1160239 (and e!1160238 tp!512782))))

(assert (=> b!1815930 (= tp!512720 e!1160239)))

(assert (= b!1816031 b!1816032))

(assert (= b!1816030 b!1816031))

(assert (= (and b!1815930 ((_ is Cons!19825) (t!169564 rules!4538))) b!1816030))

(declare-fun m!2245797 () Bool)

(assert (=> b!1816031 m!2245797))

(declare-fun m!2245799 () Bool)

(assert (=> b!1816031 m!2245799))

(declare-fun b!1816036 () Bool)

(declare-fun e!1160240 () Bool)

(declare-fun tp!512790 () Bool)

(declare-fun tp!512786 () Bool)

(assert (=> b!1816036 (= e!1160240 (and tp!512790 tp!512786))))

(assert (=> b!1815936 (= tp!512726 e!1160240)))

(declare-fun b!1816035 () Bool)

(declare-fun tp!512788 () Bool)

(assert (=> b!1816035 (= e!1160240 tp!512788)))

(declare-fun b!1816034 () Bool)

(declare-fun tp!512787 () Bool)

(declare-fun tp!512789 () Bool)

(assert (=> b!1816034 (= e!1160240 (and tp!512787 tp!512789))))

(declare-fun b!1816033 () Bool)

(assert (=> b!1816033 (= e!1160240 tp_is_empty!8021)))

(assert (= (and b!1815936 ((_ is ElementMatch!4891) (regex!3563 (h!25226 rules!4538)))) b!1816033))

(assert (= (and b!1815936 ((_ is Concat!8545) (regex!3563 (h!25226 rules!4538)))) b!1816034))

(assert (= (and b!1815936 ((_ is Star!4891) (regex!3563 (h!25226 rules!4538)))) b!1816035))

(assert (= (and b!1815936 ((_ is Union!4891) (regex!3563 (h!25226 rules!4538)))) b!1816036))

(check-sat (not d!556980) (not b!1816021) (not b!1816036) (not b!1816034) (not b_next!50801) (not b!1816019) (not b!1816031) b_and!140539 b_and!140549 (not b!1816020) (not b_next!50797) (not b!1816006) (not b_next!50799) (not b_next!50807) b_and!140551 (not b!1816003) (not b!1815997) b_and!140537 (not d!556972) (not b_next!50809) (not b!1815991) (not b!1816007) (not b_next!50795) (not d!556976) (not d!556970) (not b!1815992) b_and!140541 tp_is_empty!8021 (not b!1816035) b_and!140543 (not d!556952) (not b!1816030))
(check-sat b_and!140537 (not b_next!50809) b_and!140543 (not b_next!50801) b_and!140539 b_and!140549 (not b_next!50797) (not b_next!50799) (not b_next!50807) b_and!140551 (not b_next!50795) b_and!140541)
(get-model)

(declare-fun d!557000 () Bool)

(assert (=> d!557000 true))

(declare-fun order!12971 () Int)

(declare-fun lambda!71090 () Int)

(declare-fun order!12969 () Int)

(declare-fun dynLambda!9886 (Int Int) Int)

(declare-fun dynLambda!9887 (Int Int) Int)

(assert (=> d!557000 (< (dynLambda!9886 order!12969 (toChars!4953 (transformation!3563 (h!25226 rules!4538)))) (dynLambda!9887 order!12971 lambda!71090))))

(assert (=> d!557000 true))

(declare-fun order!12973 () Int)

(declare-fun dynLambda!9888 (Int Int) Int)

(assert (=> d!557000 (< (dynLambda!9888 order!12973 (toValue!5094 (transformation!3563 (h!25226 rules!4538)))) (dynLambda!9887 order!12971 lambda!71090))))

(declare-fun Forall!928 (Int) Bool)

(assert (=> d!557000 (= (semiInverseModEq!1424 (toChars!4953 (transformation!3563 (h!25226 rules!4538))) (toValue!5094 (transformation!3563 (h!25226 rules!4538)))) (Forall!928 lambda!71090))))

(declare-fun bs!407197 () Bool)

(assert (= bs!407197 d!557000))

(declare-fun m!2245835 () Bool)

(assert (=> bs!407197 m!2245835))

(assert (=> d!556980 d!557000))

(declare-fun bs!407198 () Bool)

(declare-fun d!557010 () Bool)

(assert (= bs!407198 (and d!557010 d!556952)))

(declare-fun lambda!71091 () Int)

(assert (=> bs!407198 (= lambda!71091 lambda!71078)))

(assert (=> d!557010 true))

(declare-fun lt!705975 () Bool)

(assert (=> d!557010 (= lt!705975 (forall!4287 (t!169564 rules!4538) lambda!71091))))

(declare-fun e!1160264 () Bool)

(assert (=> d!557010 (= lt!705975 e!1160264)))

(declare-fun res!816553 () Bool)

(assert (=> d!557010 (=> res!816553 e!1160264)))

(assert (=> d!557010 (= res!816553 (not ((_ is Cons!19825) (t!169564 rules!4538))))))

(assert (=> d!557010 (= (rulesValidInductive!1214 thiss!28068 (t!169564 rules!4538)) lt!705975)))

(declare-fun b!1816076 () Bool)

(declare-fun e!1160265 () Bool)

(assert (=> b!1816076 (= e!1160264 e!1160265)))

(declare-fun res!816552 () Bool)

(assert (=> b!1816076 (=> (not res!816552) (not e!1160265))))

(assert (=> b!1816076 (= res!816552 (ruleValid!1059 thiss!28068 (h!25226 (t!169564 rules!4538))))))

(declare-fun b!1816077 () Bool)

(assert (=> b!1816077 (= e!1160265 (rulesValidInductive!1214 thiss!28068 (t!169564 (t!169564 rules!4538))))))

(assert (= (and d!557010 (not res!816553)) b!1816076))

(assert (= (and b!1816076 res!816552) b!1816077))

(declare-fun m!2245841 () Bool)

(assert (=> d!557010 m!2245841))

(declare-fun m!2245843 () Bool)

(assert (=> b!1816076 m!2245843))

(declare-fun m!2245845 () Bool)

(assert (=> b!1816077 m!2245845))

(assert (=> b!1815992 d!557010))

(declare-fun d!557014 () Bool)

(declare-fun res!816560 () Bool)

(declare-fun e!1160287 () Bool)

(assert (=> d!557014 (=> res!816560 e!1160287)))

(assert (=> d!557014 (= res!816560 ((_ is Nil!19825) rules!4538))))

(assert (=> d!557014 (= (noDuplicateTag!1349 thiss!28068 rules!4538 Nil!19827) e!1160287)))

(declare-fun b!1816131 () Bool)

(declare-fun e!1160288 () Bool)

(assert (=> b!1816131 (= e!1160287 e!1160288)))

(declare-fun res!816561 () Bool)

(assert (=> b!1816131 (=> (not res!816561) (not e!1160288))))

(declare-fun contains!3599 (List!19897 String!22597) Bool)

(assert (=> b!1816131 (= res!816561 (not (contains!3599 Nil!19827 (tag!3977 (h!25226 rules!4538)))))))

(declare-fun b!1816132 () Bool)

(assert (=> b!1816132 (= e!1160288 (noDuplicateTag!1349 thiss!28068 (t!169564 rules!4538) (Cons!19827 (tag!3977 (h!25226 rules!4538)) Nil!19827)))))

(assert (= (and d!557014 (not res!816560)) b!1816131))

(assert (= (and b!1816131 res!816561) b!1816132))

(declare-fun m!2245853 () Bool)

(assert (=> b!1816131 m!2245853))

(declare-fun m!2245855 () Bool)

(assert (=> b!1816132 m!2245855))

(assert (=> b!1815997 d!557014))

(declare-fun bs!407203 () Bool)

(declare-fun d!557018 () Bool)

(assert (= bs!407203 (and d!557018 d!557000)))

(declare-fun lambda!71095 () Int)

(assert (=> bs!407203 (= (and (= (toChars!4953 (transformation!3563 rule!559)) (toChars!4953 (transformation!3563 (h!25226 rules!4538)))) (= (toValue!5094 (transformation!3563 rule!559)) (toValue!5094 (transformation!3563 (h!25226 rules!4538))))) (= lambda!71095 lambda!71090))))

(assert (=> d!557018 true))

(assert (=> d!557018 (< (dynLambda!9886 order!12969 (toChars!4953 (transformation!3563 rule!559))) (dynLambda!9887 order!12971 lambda!71095))))

(assert (=> d!557018 true))

(assert (=> d!557018 (< (dynLambda!9888 order!12973 (toValue!5094 (transformation!3563 rule!559))) (dynLambda!9887 order!12971 lambda!71095))))

(assert (=> d!557018 (= (semiInverseModEq!1424 (toChars!4953 (transformation!3563 rule!559)) (toValue!5094 (transformation!3563 rule!559))) (Forall!928 lambda!71095))))

(declare-fun bs!407204 () Bool)

(assert (= bs!407204 d!557018))

(declare-fun m!2245857 () Bool)

(assert (=> bs!407204 m!2245857))

(assert (=> d!556976 d!557018))

(declare-fun d!557020 () Bool)

(assert (=> d!557020 true))

(declare-fun lambda!71098 () Int)

(declare-fun order!12975 () Int)

(declare-fun dynLambda!9890 (Int Int) Int)

(assert (=> d!557020 (< (dynLambda!9888 order!12973 (toValue!5094 (transformation!3563 (h!25226 rules!4538)))) (dynLambda!9890 order!12975 lambda!71098))))

(declare-fun Forall2!567 (Int) Bool)

(assert (=> d!557020 (= (equivClasses!1365 (toChars!4953 (transformation!3563 (h!25226 rules!4538))) (toValue!5094 (transformation!3563 (h!25226 rules!4538)))) (Forall2!567 lambda!71098))))

(declare-fun bs!407205 () Bool)

(assert (= bs!407205 d!557020))

(declare-fun m!2245859 () Bool)

(assert (=> bs!407205 m!2245859))

(assert (=> b!1816007 d!557020))

(declare-fun bs!407206 () Bool)

(declare-fun d!557022 () Bool)

(assert (= bs!407206 (and d!557022 d!557020)))

(declare-fun lambda!71099 () Int)

(assert (=> bs!407206 (= (= (toValue!5094 (transformation!3563 rule!559)) (toValue!5094 (transformation!3563 (h!25226 rules!4538)))) (= lambda!71099 lambda!71098))))

(assert (=> d!557022 true))

(assert (=> d!557022 (< (dynLambda!9888 order!12973 (toValue!5094 (transformation!3563 rule!559))) (dynLambda!9890 order!12975 lambda!71099))))

(assert (=> d!557022 (= (equivClasses!1365 (toChars!4953 (transformation!3563 rule!559)) (toValue!5094 (transformation!3563 rule!559))) (Forall2!567 lambda!71099))))

(declare-fun bs!407207 () Bool)

(assert (= bs!407207 d!557022))

(declare-fun m!2245861 () Bool)

(assert (=> bs!407207 m!2245861))

(assert (=> b!1816006 d!557022))

(declare-fun d!557024 () Bool)

(assert (=> d!557024 (= (inv!25847 (tag!3977 (h!25226 (t!169564 rules!4538)))) (= (mod (str.len (value!111214 (tag!3977 (h!25226 (t!169564 rules!4538))))) 2) 0))))

(assert (=> b!1816031 d!557024))

(declare-fun d!557026 () Bool)

(declare-fun res!816564 () Bool)

(declare-fun e!1160291 () Bool)

(assert (=> d!557026 (=> (not res!816564) (not e!1160291))))

(assert (=> d!557026 (= res!816564 (semiInverseModEq!1424 (toChars!4953 (transformation!3563 (h!25226 (t!169564 rules!4538)))) (toValue!5094 (transformation!3563 (h!25226 (t!169564 rules!4538))))))))

(assert (=> d!557026 (= (inv!25849 (transformation!3563 (h!25226 (t!169564 rules!4538)))) e!1160291)))

(declare-fun b!1816137 () Bool)

(assert (=> b!1816137 (= e!1160291 (equivClasses!1365 (toChars!4953 (transformation!3563 (h!25226 (t!169564 rules!4538)))) (toValue!5094 (transformation!3563 (h!25226 (t!169564 rules!4538))))))))

(assert (= (and d!557026 res!816564) b!1816137))

(declare-fun m!2245863 () Bool)

(assert (=> d!557026 m!2245863))

(declare-fun m!2245865 () Bool)

(assert (=> b!1816137 m!2245865))

(assert (=> b!1816031 d!557026))

(declare-fun d!557028 () Bool)

(declare-fun res!816569 () Bool)

(declare-fun e!1160296 () Bool)

(assert (=> d!557028 (=> res!816569 e!1160296)))

(assert (=> d!557028 (= res!816569 ((_ is Nil!19825) rules!4538))))

(assert (=> d!557028 (= (forall!4287 rules!4538 lambda!71078) e!1160296)))

(declare-fun b!1816142 () Bool)

(declare-fun e!1160297 () Bool)

(assert (=> b!1816142 (= e!1160296 e!1160297)))

(declare-fun res!816570 () Bool)

(assert (=> b!1816142 (=> (not res!816570) (not e!1160297))))

(declare-fun dynLambda!9891 (Int Rule!6926) Bool)

(assert (=> b!1816142 (= res!816570 (dynLambda!9891 lambda!71078 (h!25226 rules!4538)))))

(declare-fun b!1816143 () Bool)

(assert (=> b!1816143 (= e!1160297 (forall!4287 (t!169564 rules!4538) lambda!71078))))

(assert (= (and d!557028 (not res!816569)) b!1816142))

(assert (= (and b!1816142 res!816570) b!1816143))

(declare-fun b_lambda!59933 () Bool)

(assert (=> (not b_lambda!59933) (not b!1816142)))

(declare-fun m!2245867 () Bool)

(assert (=> b!1816142 m!2245867))

(declare-fun m!2245869 () Bool)

(assert (=> b!1816143 m!2245869))

(assert (=> d!556952 d!557028))

(declare-fun d!557030 () Bool)

(declare-fun c!296611 () Bool)

(assert (=> d!557030 (= c!296611 ((_ is Nil!19825) rules!4538))))

(declare-fun e!1160300 () (InoxSet Rule!6926))

(assert (=> d!557030 (= (content!2897 rules!4538) e!1160300)))

(declare-fun b!1816148 () Bool)

(assert (=> b!1816148 (= e!1160300 ((as const (Array Rule!6926 Bool)) false))))

(declare-fun b!1816149 () Bool)

(assert (=> b!1816149 (= e!1160300 ((_ map or) (store ((as const (Array Rule!6926 Bool)) false) (h!25226 rules!4538) true) (content!2897 (t!169564 rules!4538))))))

(assert (= (and d!557030 c!296611) b!1816148))

(assert (= (and d!557030 (not c!296611)) b!1816149))

(declare-fun m!2245871 () Bool)

(assert (=> b!1816149 m!2245871))

(declare-fun m!2245873 () Bool)

(assert (=> b!1816149 m!2245873))

(assert (=> d!556972 d!557030))

(declare-fun bs!407208 () Bool)

(declare-fun d!557032 () Bool)

(assert (= bs!407208 (and d!557032 d!556952)))

(declare-fun lambda!71102 () Int)

(assert (=> bs!407208 (= lambda!71102 lambda!71078)))

(declare-fun bs!407209 () Bool)

(assert (= bs!407209 (and d!557032 d!557010)))

(assert (=> bs!407209 (= lambda!71102 lambda!71091)))

(assert (=> d!557032 true))

(declare-fun lt!705981 () Bool)

(assert (=> d!557032 (= lt!705981 (rulesValidInductive!1214 thiss!28068 rules!4538))))

(assert (=> d!557032 (= lt!705981 (forall!4287 rules!4538 lambda!71102))))

(assert (=> d!557032 (= (rulesValid!1349 thiss!28068 rules!4538) lt!705981)))

(declare-fun bs!407210 () Bool)

(assert (= bs!407210 d!557032))

(assert (=> bs!407210 m!2245739))

(declare-fun m!2245875 () Bool)

(assert (=> bs!407210 m!2245875))

(assert (=> d!556970 d!557032))

(declare-fun d!557034 () Bool)

(declare-fun lt!705982 () Bool)

(assert (=> d!557034 (= lt!705982 (select (content!2897 (t!169564 rules!4538)) rule!559))))

(declare-fun e!1160301 () Bool)

(assert (=> d!557034 (= lt!705982 e!1160301)))

(declare-fun res!816572 () Bool)

(assert (=> d!557034 (=> (not res!816572) (not e!1160301))))

(assert (=> d!557034 (= res!816572 ((_ is Cons!19825) (t!169564 rules!4538)))))

(assert (=> d!557034 (= (contains!3597 (t!169564 rules!4538) rule!559) lt!705982)))

(declare-fun b!1816150 () Bool)

(declare-fun e!1160302 () Bool)

(assert (=> b!1816150 (= e!1160301 e!1160302)))

(declare-fun res!816571 () Bool)

(assert (=> b!1816150 (=> res!816571 e!1160302)))

(assert (=> b!1816150 (= res!816571 (= (h!25226 (t!169564 rules!4538)) rule!559))))

(declare-fun b!1816151 () Bool)

(assert (=> b!1816151 (= e!1160302 (contains!3597 (t!169564 (t!169564 rules!4538)) rule!559))))

(assert (= (and d!557034 res!816572) b!1816150))

(assert (= (and b!1816150 (not res!816571)) b!1816151))

(assert (=> d!557034 m!2245873))

(declare-fun m!2245877 () Bool)

(assert (=> d!557034 m!2245877))

(declare-fun m!2245879 () Bool)

(assert (=> b!1816151 m!2245879))

(assert (=> b!1816003 d!557034))

(declare-fun d!557036 () Bool)

(declare-fun res!816577 () Bool)

(declare-fun e!1160305 () Bool)

(assert (=> d!557036 (=> (not res!816577) (not e!1160305))))

(declare-fun validRegex!1983 (Regex!4891) Bool)

(assert (=> d!557036 (= res!816577 (validRegex!1983 (regex!3563 (h!25226 rules!4538))))))

(assert (=> d!557036 (= (ruleValid!1059 thiss!28068 (h!25226 rules!4538)) e!1160305)))

(declare-fun b!1816156 () Bool)

(declare-fun res!816578 () Bool)

(assert (=> b!1816156 (=> (not res!816578) (not e!1160305))))

(declare-fun nullable!1509 (Regex!4891) Bool)

(assert (=> b!1816156 (= res!816578 (not (nullable!1509 (regex!3563 (h!25226 rules!4538)))))))

(declare-fun b!1816157 () Bool)

(assert (=> b!1816157 (= e!1160305 (not (= (tag!3977 (h!25226 rules!4538)) (String!22598 ""))))))

(assert (= (and d!557036 res!816577) b!1816156))

(assert (= (and b!1816156 res!816578) b!1816157))

(declare-fun m!2245881 () Bool)

(assert (=> d!557036 m!2245881))

(declare-fun m!2245883 () Bool)

(assert (=> b!1816156 m!2245883))

(assert (=> b!1815991 d!557036))

(declare-fun b!1816161 () Bool)

(declare-fun e!1160306 () Bool)

(declare-fun tp!512854 () Bool)

(declare-fun tp!512850 () Bool)

(assert (=> b!1816161 (= e!1160306 (and tp!512854 tp!512850))))

(assert (=> b!1816019 (= tp!512770 e!1160306)))

(declare-fun b!1816160 () Bool)

(declare-fun tp!512852 () Bool)

(assert (=> b!1816160 (= e!1160306 tp!512852)))

(declare-fun b!1816159 () Bool)

(declare-fun tp!512851 () Bool)

(declare-fun tp!512853 () Bool)

(assert (=> b!1816159 (= e!1160306 (and tp!512851 tp!512853))))

(declare-fun b!1816158 () Bool)

(assert (=> b!1816158 (= e!1160306 tp_is_empty!8021)))

(assert (= (and b!1816019 ((_ is ElementMatch!4891) (regOne!10294 (regex!3563 rule!559)))) b!1816158))

(assert (= (and b!1816019 ((_ is Concat!8545) (regOne!10294 (regex!3563 rule!559)))) b!1816159))

(assert (= (and b!1816019 ((_ is Star!4891) (regOne!10294 (regex!3563 rule!559)))) b!1816160))

(assert (= (and b!1816019 ((_ is Union!4891) (regOne!10294 (regex!3563 rule!559)))) b!1816161))

(declare-fun b!1816165 () Bool)

(declare-fun e!1160307 () Bool)

(declare-fun tp!512859 () Bool)

(declare-fun tp!512855 () Bool)

(assert (=> b!1816165 (= e!1160307 (and tp!512859 tp!512855))))

(assert (=> b!1816019 (= tp!512772 e!1160307)))

(declare-fun b!1816164 () Bool)

(declare-fun tp!512857 () Bool)

(assert (=> b!1816164 (= e!1160307 tp!512857)))

(declare-fun b!1816163 () Bool)

(declare-fun tp!512856 () Bool)

(declare-fun tp!512858 () Bool)

(assert (=> b!1816163 (= e!1160307 (and tp!512856 tp!512858))))

(declare-fun b!1816162 () Bool)

(assert (=> b!1816162 (= e!1160307 tp_is_empty!8021)))

(assert (= (and b!1816019 ((_ is ElementMatch!4891) (regTwo!10294 (regex!3563 rule!559)))) b!1816162))

(assert (= (and b!1816019 ((_ is Concat!8545) (regTwo!10294 (regex!3563 rule!559)))) b!1816163))

(assert (= (and b!1816019 ((_ is Star!4891) (regTwo!10294 (regex!3563 rule!559)))) b!1816164))

(assert (= (and b!1816019 ((_ is Union!4891) (regTwo!10294 (regex!3563 rule!559)))) b!1816165))

(declare-fun b!1816168 () Bool)

(declare-fun b_free!50111 () Bool)

(declare-fun b_next!50815 () Bool)

(assert (=> b!1816168 (= b_free!50111 (not b_next!50815))))

(declare-fun tp!512863 () Bool)

(declare-fun b_and!140557 () Bool)

(assert (=> b!1816168 (= tp!512863 b_and!140557)))

(declare-fun b_free!50113 () Bool)

(declare-fun b_next!50817 () Bool)

(assert (=> b!1816168 (= b_free!50113 (not b_next!50817))))

(declare-fun tp!512862 () Bool)

(declare-fun b_and!140559 () Bool)

(assert (=> b!1816168 (= tp!512862 b_and!140559)))

(declare-fun e!1160309 () Bool)

(assert (=> b!1816168 (= e!1160309 (and tp!512863 tp!512862))))

(declare-fun tp!512861 () Bool)

(declare-fun e!1160310 () Bool)

(declare-fun b!1816167 () Bool)

(assert (=> b!1816167 (= e!1160310 (and tp!512861 (inv!25847 (tag!3977 (h!25226 (t!169564 (t!169564 rules!4538))))) (inv!25849 (transformation!3563 (h!25226 (t!169564 (t!169564 rules!4538))))) e!1160309))))

(declare-fun b!1816166 () Bool)

(declare-fun e!1160311 () Bool)

(declare-fun tp!512860 () Bool)

(assert (=> b!1816166 (= e!1160311 (and e!1160310 tp!512860))))

(assert (=> b!1816030 (= tp!512782 e!1160311)))

(assert (= b!1816167 b!1816168))

(assert (= b!1816166 b!1816167))

(assert (= (and b!1816030 ((_ is Cons!19825) (t!169564 (t!169564 rules!4538)))) b!1816166))

(declare-fun m!2245885 () Bool)

(assert (=> b!1816167 m!2245885))

(declare-fun m!2245887 () Bool)

(assert (=> b!1816167 m!2245887))

(declare-fun b!1816172 () Bool)

(declare-fun e!1160312 () Bool)

(declare-fun tp!512868 () Bool)

(declare-fun tp!512864 () Bool)

(assert (=> b!1816172 (= e!1160312 (and tp!512868 tp!512864))))

(assert (=> b!1816034 (= tp!512787 e!1160312)))

(declare-fun b!1816171 () Bool)

(declare-fun tp!512866 () Bool)

(assert (=> b!1816171 (= e!1160312 tp!512866)))

(declare-fun b!1816170 () Bool)

(declare-fun tp!512865 () Bool)

(declare-fun tp!512867 () Bool)

(assert (=> b!1816170 (= e!1160312 (and tp!512865 tp!512867))))

(declare-fun b!1816169 () Bool)

(assert (=> b!1816169 (= e!1160312 tp_is_empty!8021)))

(assert (= (and b!1816034 ((_ is ElementMatch!4891) (regOne!10294 (regex!3563 (h!25226 rules!4538))))) b!1816169))

(assert (= (and b!1816034 ((_ is Concat!8545) (regOne!10294 (regex!3563 (h!25226 rules!4538))))) b!1816170))

(assert (= (and b!1816034 ((_ is Star!4891) (regOne!10294 (regex!3563 (h!25226 rules!4538))))) b!1816171))

(assert (= (and b!1816034 ((_ is Union!4891) (regOne!10294 (regex!3563 (h!25226 rules!4538))))) b!1816172))

(declare-fun b!1816176 () Bool)

(declare-fun e!1160313 () Bool)

(declare-fun tp!512873 () Bool)

(declare-fun tp!512869 () Bool)

(assert (=> b!1816176 (= e!1160313 (and tp!512873 tp!512869))))

(assert (=> b!1816034 (= tp!512789 e!1160313)))

(declare-fun b!1816175 () Bool)

(declare-fun tp!512871 () Bool)

(assert (=> b!1816175 (= e!1160313 tp!512871)))

(declare-fun b!1816174 () Bool)

(declare-fun tp!512870 () Bool)

(declare-fun tp!512872 () Bool)

(assert (=> b!1816174 (= e!1160313 (and tp!512870 tp!512872))))

(declare-fun b!1816173 () Bool)

(assert (=> b!1816173 (= e!1160313 tp_is_empty!8021)))

(assert (= (and b!1816034 ((_ is ElementMatch!4891) (regTwo!10294 (regex!3563 (h!25226 rules!4538))))) b!1816173))

(assert (= (and b!1816034 ((_ is Concat!8545) (regTwo!10294 (regex!3563 (h!25226 rules!4538))))) b!1816174))

(assert (= (and b!1816034 ((_ is Star!4891) (regTwo!10294 (regex!3563 (h!25226 rules!4538))))) b!1816175))

(assert (= (and b!1816034 ((_ is Union!4891) (regTwo!10294 (regex!3563 (h!25226 rules!4538))))) b!1816176))

(declare-fun b!1816180 () Bool)

(declare-fun e!1160314 () Bool)

(declare-fun tp!512878 () Bool)

(declare-fun tp!512874 () Bool)

(assert (=> b!1816180 (= e!1160314 (and tp!512878 tp!512874))))

(assert (=> b!1816020 (= tp!512771 e!1160314)))

(declare-fun b!1816179 () Bool)

(declare-fun tp!512876 () Bool)

(assert (=> b!1816179 (= e!1160314 tp!512876)))

(declare-fun b!1816178 () Bool)

(declare-fun tp!512875 () Bool)

(declare-fun tp!512877 () Bool)

(assert (=> b!1816178 (= e!1160314 (and tp!512875 tp!512877))))

(declare-fun b!1816177 () Bool)

(assert (=> b!1816177 (= e!1160314 tp_is_empty!8021)))

(assert (= (and b!1816020 ((_ is ElementMatch!4891) (reg!5220 (regex!3563 rule!559)))) b!1816177))

(assert (= (and b!1816020 ((_ is Concat!8545) (reg!5220 (regex!3563 rule!559)))) b!1816178))

(assert (= (and b!1816020 ((_ is Star!4891) (reg!5220 (regex!3563 rule!559)))) b!1816179))

(assert (= (and b!1816020 ((_ is Union!4891) (reg!5220 (regex!3563 rule!559)))) b!1816180))

(declare-fun b!1816184 () Bool)

(declare-fun e!1160315 () Bool)

(declare-fun tp!512883 () Bool)

(declare-fun tp!512879 () Bool)

(assert (=> b!1816184 (= e!1160315 (and tp!512883 tp!512879))))

(assert (=> b!1816036 (= tp!512790 e!1160315)))

(declare-fun b!1816183 () Bool)

(declare-fun tp!512881 () Bool)

(assert (=> b!1816183 (= e!1160315 tp!512881)))

(declare-fun b!1816182 () Bool)

(declare-fun tp!512880 () Bool)

(declare-fun tp!512882 () Bool)

(assert (=> b!1816182 (= e!1160315 (and tp!512880 tp!512882))))

(declare-fun b!1816181 () Bool)

(assert (=> b!1816181 (= e!1160315 tp_is_empty!8021)))

(assert (= (and b!1816036 ((_ is ElementMatch!4891) (regOne!10295 (regex!3563 (h!25226 rules!4538))))) b!1816181))

(assert (= (and b!1816036 ((_ is Concat!8545) (regOne!10295 (regex!3563 (h!25226 rules!4538))))) b!1816182))

(assert (= (and b!1816036 ((_ is Star!4891) (regOne!10295 (regex!3563 (h!25226 rules!4538))))) b!1816183))

(assert (= (and b!1816036 ((_ is Union!4891) (regOne!10295 (regex!3563 (h!25226 rules!4538))))) b!1816184))

(declare-fun b!1816188 () Bool)

(declare-fun e!1160316 () Bool)

(declare-fun tp!512888 () Bool)

(declare-fun tp!512884 () Bool)

(assert (=> b!1816188 (= e!1160316 (and tp!512888 tp!512884))))

(assert (=> b!1816036 (= tp!512786 e!1160316)))

(declare-fun b!1816187 () Bool)

(declare-fun tp!512886 () Bool)

(assert (=> b!1816187 (= e!1160316 tp!512886)))

(declare-fun b!1816186 () Bool)

(declare-fun tp!512885 () Bool)

(declare-fun tp!512887 () Bool)

(assert (=> b!1816186 (= e!1160316 (and tp!512885 tp!512887))))

(declare-fun b!1816185 () Bool)

(assert (=> b!1816185 (= e!1160316 tp_is_empty!8021)))

(assert (= (and b!1816036 ((_ is ElementMatch!4891) (regTwo!10295 (regex!3563 (h!25226 rules!4538))))) b!1816185))

(assert (= (and b!1816036 ((_ is Concat!8545) (regTwo!10295 (regex!3563 (h!25226 rules!4538))))) b!1816186))

(assert (= (and b!1816036 ((_ is Star!4891) (regTwo!10295 (regex!3563 (h!25226 rules!4538))))) b!1816187))

(assert (= (and b!1816036 ((_ is Union!4891) (regTwo!10295 (regex!3563 (h!25226 rules!4538))))) b!1816188))

(declare-fun b!1816192 () Bool)

(declare-fun e!1160317 () Bool)

(declare-fun tp!512893 () Bool)

(declare-fun tp!512889 () Bool)

(assert (=> b!1816192 (= e!1160317 (and tp!512893 tp!512889))))

(assert (=> b!1816031 (= tp!512783 e!1160317)))

(declare-fun b!1816191 () Bool)

(declare-fun tp!512891 () Bool)

(assert (=> b!1816191 (= e!1160317 tp!512891)))

(declare-fun b!1816190 () Bool)

(declare-fun tp!512890 () Bool)

(declare-fun tp!512892 () Bool)

(assert (=> b!1816190 (= e!1160317 (and tp!512890 tp!512892))))

(declare-fun b!1816189 () Bool)

(assert (=> b!1816189 (= e!1160317 tp_is_empty!8021)))

(assert (= (and b!1816031 ((_ is ElementMatch!4891) (regex!3563 (h!25226 (t!169564 rules!4538))))) b!1816189))

(assert (= (and b!1816031 ((_ is Concat!8545) (regex!3563 (h!25226 (t!169564 rules!4538))))) b!1816190))

(assert (= (and b!1816031 ((_ is Star!4891) (regex!3563 (h!25226 (t!169564 rules!4538))))) b!1816191))

(assert (= (and b!1816031 ((_ is Union!4891) (regex!3563 (h!25226 (t!169564 rules!4538))))) b!1816192))

(declare-fun b!1816196 () Bool)

(declare-fun e!1160318 () Bool)

(declare-fun tp!512898 () Bool)

(declare-fun tp!512894 () Bool)

(assert (=> b!1816196 (= e!1160318 (and tp!512898 tp!512894))))

(assert (=> b!1816035 (= tp!512788 e!1160318)))

(declare-fun b!1816195 () Bool)

(declare-fun tp!512896 () Bool)

(assert (=> b!1816195 (= e!1160318 tp!512896)))

(declare-fun b!1816194 () Bool)

(declare-fun tp!512895 () Bool)

(declare-fun tp!512897 () Bool)

(assert (=> b!1816194 (= e!1160318 (and tp!512895 tp!512897))))

(declare-fun b!1816193 () Bool)

(assert (=> b!1816193 (= e!1160318 tp_is_empty!8021)))

(assert (= (and b!1816035 ((_ is ElementMatch!4891) (reg!5220 (regex!3563 (h!25226 rules!4538))))) b!1816193))

(assert (= (and b!1816035 ((_ is Concat!8545) (reg!5220 (regex!3563 (h!25226 rules!4538))))) b!1816194))

(assert (= (and b!1816035 ((_ is Star!4891) (reg!5220 (regex!3563 (h!25226 rules!4538))))) b!1816195))

(assert (= (and b!1816035 ((_ is Union!4891) (reg!5220 (regex!3563 (h!25226 rules!4538))))) b!1816196))

(declare-fun b!1816200 () Bool)

(declare-fun e!1160319 () Bool)

(declare-fun tp!512903 () Bool)

(declare-fun tp!512899 () Bool)

(assert (=> b!1816200 (= e!1160319 (and tp!512903 tp!512899))))

(assert (=> b!1816021 (= tp!512773 e!1160319)))

(declare-fun b!1816199 () Bool)

(declare-fun tp!512901 () Bool)

(assert (=> b!1816199 (= e!1160319 tp!512901)))

(declare-fun b!1816198 () Bool)

(declare-fun tp!512900 () Bool)

(declare-fun tp!512902 () Bool)

(assert (=> b!1816198 (= e!1160319 (and tp!512900 tp!512902))))

(declare-fun b!1816197 () Bool)

(assert (=> b!1816197 (= e!1160319 tp_is_empty!8021)))

(assert (= (and b!1816021 ((_ is ElementMatch!4891) (regOne!10295 (regex!3563 rule!559)))) b!1816197))

(assert (= (and b!1816021 ((_ is Concat!8545) (regOne!10295 (regex!3563 rule!559)))) b!1816198))

(assert (= (and b!1816021 ((_ is Star!4891) (regOne!10295 (regex!3563 rule!559)))) b!1816199))

(assert (= (and b!1816021 ((_ is Union!4891) (regOne!10295 (regex!3563 rule!559)))) b!1816200))

(declare-fun b!1816204 () Bool)

(declare-fun e!1160320 () Bool)

(declare-fun tp!512908 () Bool)

(declare-fun tp!512904 () Bool)

(assert (=> b!1816204 (= e!1160320 (and tp!512908 tp!512904))))

(assert (=> b!1816021 (= tp!512769 e!1160320)))

(declare-fun b!1816203 () Bool)

(declare-fun tp!512906 () Bool)

(assert (=> b!1816203 (= e!1160320 tp!512906)))

(declare-fun b!1816202 () Bool)

(declare-fun tp!512905 () Bool)

(declare-fun tp!512907 () Bool)

(assert (=> b!1816202 (= e!1160320 (and tp!512905 tp!512907))))

(declare-fun b!1816201 () Bool)

(assert (=> b!1816201 (= e!1160320 tp_is_empty!8021)))

(assert (= (and b!1816021 ((_ is ElementMatch!4891) (regTwo!10295 (regex!3563 rule!559)))) b!1816201))

(assert (= (and b!1816021 ((_ is Concat!8545) (regTwo!10295 (regex!3563 rule!559)))) b!1816202))

(assert (= (and b!1816021 ((_ is Star!4891) (regTwo!10295 (regex!3563 rule!559)))) b!1816203))

(assert (= (and b!1816021 ((_ is Union!4891) (regTwo!10295 (regex!3563 rule!559)))) b!1816204))

(declare-fun b_lambda!59935 () Bool)

(assert (= b_lambda!59933 (or d!556952 b_lambda!59935)))

(declare-fun bs!407211 () Bool)

(declare-fun d!557038 () Bool)

(assert (= bs!407211 (and d!557038 d!556952)))

(assert (=> bs!407211 (= (dynLambda!9891 lambda!71078 (h!25226 rules!4538)) (ruleValid!1059 thiss!28068 (h!25226 rules!4538)))))

(assert (=> bs!407211 m!2245775))

(assert (=> b!1816142 d!557038))

(check-sat (not b!1816174) (not b!1816165) (not d!557022) (not b!1816172) (not bs!407211) (not b!1816198) (not b!1816170) b_and!140539 b_and!140549 (not b_next!50799) (not b_next!50807) b_and!140551 (not d!557032) (not b!1816163) (not b!1816179) b_and!140559 (not b!1816190) b_and!140537 (not b!1816076) (not b!1816167) (not d!557020) (not b!1816204) (not b!1816192) (not b!1816188) (not b!1816199) (not b!1816187) (not b!1816160) (not b_next!50809) (not b_lambda!59935) (not b_next!50795) b_and!140541 (not b!1816161) (not b!1816171) (not d!557000) (not b!1816149) (not b!1816184) (not b!1816156) b_and!140543 tp_is_empty!8021 (not b!1816178) b_and!140557 (not d!557018) (not b!1816196) (not b!1816137) (not b!1816132) (not b!1816195) (not b!1816182) (not b!1816194) (not b_next!50801) (not b!1816131) (not b!1816166) (not b!1816202) (not b!1816164) (not b!1816176) (not b!1816077) (not b_next!50815) (not d!557026) (not b!1816143) (not b!1816180) (not b!1816159) (not d!557010) (not b!1816186) (not b_next!50817) (not b!1816175) (not b_next!50797) (not b!1816151) (not d!557034) (not b!1816203) (not b!1816191) (not b!1816183) (not b!1816200) (not d!557036))
(check-sat (not b_next!50809) (not b_next!50801) (not b_next!50815) b_and!140539 b_and!140549 (not b_next!50817) (not b_next!50797) (not b_next!50799) (not b_next!50807) b_and!140551 b_and!140559 b_and!140537 (not b_next!50795) b_and!140541 b_and!140543 b_and!140557)
