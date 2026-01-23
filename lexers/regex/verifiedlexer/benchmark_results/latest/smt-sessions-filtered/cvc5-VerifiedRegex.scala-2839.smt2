; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!161732 () Bool)

(assert start!161732)

(declare-fun b!1668481 () Bool)

(declare-fun b_free!45327 () Bool)

(declare-fun b_next!46031 () Bool)

(assert (=> b!1668481 (= b_free!45327 (not b_next!46031))))

(declare-fun tp!481633 () Bool)

(declare-fun b_and!118605 () Bool)

(assert (=> b!1668481 (= tp!481633 b_and!118605)))

(declare-fun b_free!45329 () Bool)

(declare-fun b_next!46033 () Bool)

(assert (=> b!1668481 (= b_free!45329 (not b_next!46033))))

(declare-fun tp!481637 () Bool)

(declare-fun b_and!118607 () Bool)

(assert (=> b!1668481 (= tp!481637 b_and!118607)))

(declare-fun b!1668476 () Bool)

(declare-fun b_free!45331 () Bool)

(declare-fun b_next!46035 () Bool)

(assert (=> b!1668476 (= b_free!45331 (not b_next!46035))))

(declare-fun tp!481635 () Bool)

(declare-fun b_and!118609 () Bool)

(assert (=> b!1668476 (= tp!481635 b_and!118609)))

(declare-fun b_free!45333 () Bool)

(declare-fun b_next!46037 () Bool)

(assert (=> b!1668476 (= b_free!45333 (not b_next!46037))))

(declare-fun tp!481636 () Bool)

(declare-fun b_and!118611 () Bool)

(assert (=> b!1668476 (= tp!481636 b_and!118611)))

(declare-fun b!1668471 () Bool)

(declare-fun e!1069169 () Bool)

(declare-fun e!1069168 () Bool)

(declare-fun tp!481631 () Bool)

(assert (=> b!1668471 (= e!1069169 (and e!1069168 tp!481631))))

(declare-fun res!748231 () Bool)

(declare-fun e!1069162 () Bool)

(assert (=> start!161732 (=> (not res!748231) (not e!1069162))))

(declare-datatypes ((LexerInterface!2867 0))(
  ( (LexerInterfaceExt!2864 (__x!11958 Int)) (Lexer!2865) )
))
(declare-fun thiss!17113 () LexerInterface!2867)

(assert (=> start!161732 (= res!748231 (is-Lexer!2865 thiss!17113))))

(assert (=> start!161732 e!1069162))

(assert (=> start!161732 true))

(assert (=> start!161732 e!1069169))

(declare-fun e!1069167 () Bool)

(assert (=> start!161732 e!1069167))

(declare-fun tp!481634 () Bool)

(declare-fun e!1069171 () Bool)

(declare-datatypes ((List!18453 0))(
  ( (Nil!18383) (Cons!18383 (h!23784 (_ BitVec 16)) (t!152452 List!18453)) )
))
(declare-datatypes ((TokenValue!3328 0))(
  ( (FloatLiteralValue!6656 (text!23741 List!18453)) (TokenValueExt!3327 (__x!11959 Int)) (Broken!16640 (value!101931 List!18453)) (Object!3397) (End!3328) (Def!3328) (Underscore!3328) (Match!3328) (Else!3328) (Error!3328) (Case!3328) (If!3328) (Extends!3328) (Abstract!3328) (Class!3328) (Val!3328) (DelimiterValue!6656 (del!3388 List!18453)) (KeywordValue!3334 (value!101932 List!18453)) (CommentValue!6656 (value!101933 List!18453)) (WhitespaceValue!6656 (value!101934 List!18453)) (IndentationValue!3328 (value!101935 List!18453)) (String!20973) (Int32!3328) (Broken!16641 (value!101936 List!18453)) (Boolean!3329) (Unit!31161) (OperatorValue!3331 (op!3388 List!18453)) (IdentifierValue!6656 (value!101937 List!18453)) (IdentifierValue!6657 (value!101938 List!18453)) (WhitespaceValue!6657 (value!101939 List!18453)) (True!6656) (False!6656) (Broken!16642 (value!101940 List!18453)) (Broken!16643 (value!101941 List!18453)) (True!6657) (RightBrace!3328) (RightBracket!3328) (Colon!3328) (Null!3328) (Comma!3328) (LeftBracket!3328) (False!6657) (LeftBrace!3328) (ImaginaryLiteralValue!3328 (text!23742 List!18453)) (StringLiteralValue!9984 (value!101942 List!18453)) (EOFValue!3328 (value!101943 List!18453)) (IdentValue!3328 (value!101944 List!18453)) (DelimiterValue!6657 (value!101945 List!18453)) (DedentValue!3328 (value!101946 List!18453)) (NewLineValue!3328 (value!101947 List!18453)) (IntegerValue!9984 (value!101948 (_ BitVec 32)) (text!23743 List!18453)) (IntegerValue!9985 (value!101949 Int) (text!23744 List!18453)) (Times!3328) (Or!3328) (Equal!3328) (Minus!3328) (Broken!16644 (value!101950 List!18453)) (And!3328) (Div!3328) (LessEqual!3328) (Mod!3328) (Concat!7894) (Not!3328) (Plus!3328) (SpaceValue!3328 (value!101951 List!18453)) (IntegerValue!9986 (value!101952 Int) (text!23745 List!18453)) (StringLiteralValue!9985 (text!23746 List!18453)) (FloatLiteralValue!6657 (text!23747 List!18453)) (BytesLiteralValue!3328 (value!101953 List!18453)) (CommentValue!6657 (value!101954 List!18453)) (StringLiteralValue!9986 (value!101955 List!18453)) (ErrorTokenValue!3328 (msg!3389 List!18453)) )
))
(declare-datatypes ((C!9306 0))(
  ( (C!9307 (val!5249 Int)) )
))
(declare-datatypes ((List!18454 0))(
  ( (Nil!18384) (Cons!18384 (h!23785 C!9306) (t!152453 List!18454)) )
))
(declare-datatypes ((IArray!12253 0))(
  ( (IArray!12254 (innerList!6184 List!18454)) )
))
(declare-datatypes ((Conc!6124 0))(
  ( (Node!6124 (left!14705 Conc!6124) (right!15035 Conc!6124) (csize!12478 Int) (cheight!6335 Int)) (Leaf!8964 (xs!8968 IArray!12253) (csize!12479 Int)) (Empty!6124) )
))
(declare-datatypes ((BalanceConc!12192 0))(
  ( (BalanceConc!12193 (c!271511 Conc!6124)) )
))
(declare-datatypes ((Regex!4566 0))(
  ( (ElementMatch!4566 (c!271512 C!9306)) (Concat!7895 (regOne!9644 Regex!4566) (regTwo!9644 Regex!4566)) (EmptyExpr!4566) (Star!4566 (reg!4895 Regex!4566)) (EmptyLang!4566) (Union!4566 (regOne!9645 Regex!4566) (regTwo!9645 Regex!4566)) )
))
(declare-datatypes ((String!20974 0))(
  ( (String!20975 (value!101956 String)) )
))
(declare-datatypes ((TokenValueInjection!6316 0))(
  ( (TokenValueInjection!6317 (toValue!4701 Int) (toChars!4560 Int)) )
))
(declare-datatypes ((Rule!6276 0))(
  ( (Rule!6277 (regex!3238 Regex!4566) (tag!3522 String!20974) (isSeparator!3238 Bool) (transformation!3238 TokenValueInjection!6316)) )
))
(declare-datatypes ((Token!6042 0))(
  ( (Token!6043 (value!101957 TokenValue!3328) (rule!5126 Rule!6276) (size!14623 Int) (originalCharacters!4052 List!18454)) )
))
(declare-datatypes ((List!18455 0))(
  ( (Nil!18385) (Cons!18385 (h!23786 Token!6042) (t!152454 List!18455)) )
))
(declare-fun tokens!457 () List!18455)

(declare-fun e!1069166 () Bool)

(declare-fun b!1668472 () Bool)

(declare-fun inv!23730 (String!20974) Bool)

(declare-fun inv!23733 (TokenValueInjection!6316) Bool)

(assert (=> b!1668472 (= e!1069166 (and tp!481634 (inv!23730 (tag!3522 (rule!5126 (h!23786 tokens!457)))) (inv!23733 (transformation!3238 (rule!5126 (h!23786 tokens!457)))) e!1069171))))

(declare-fun b!1668473 () Bool)

(declare-fun tp!481639 () Bool)

(declare-fun e!1069165 () Bool)

(declare-datatypes ((List!18456 0))(
  ( (Nil!18386) (Cons!18386 (h!23787 Rule!6276) (t!152455 List!18456)) )
))
(declare-fun rules!1846 () List!18456)

(assert (=> b!1668473 (= e!1069168 (and tp!481639 (inv!23730 (tag!3522 (h!23787 rules!1846))) (inv!23733 (transformation!3238 (h!23787 rules!1846))) e!1069165))))

(declare-fun b!1668474 () Bool)

(declare-fun res!748233 () Bool)

(assert (=> b!1668474 (=> (not res!748233) (not e!1069162))))

(declare-fun isEmpty!11442 (List!18456) Bool)

(assert (=> b!1668474 (= res!748233 (not (isEmpty!11442 rules!1846)))))

(declare-fun b!1668475 () Bool)

(declare-fun res!748232 () Bool)

(assert (=> b!1668475 (=> (not res!748232) (not e!1069162))))

(declare-fun rulesProduceEachTokenIndividuallyList!1069 (LexerInterface!2867 List!18456 List!18455) Bool)

(assert (=> b!1668475 (= res!748232 (rulesProduceEachTokenIndividuallyList!1069 thiss!17113 rules!1846 tokens!457))))

(assert (=> b!1668476 (= e!1069165 (and tp!481635 tp!481636))))

(declare-fun b!1668477 () Bool)

(declare-fun e!1069170 () Bool)

(assert (=> b!1668477 (= e!1069162 e!1069170)))

(declare-fun res!748228 () Bool)

(assert (=> b!1668477 (=> (not res!748228) (not e!1069170))))

(declare-fun lt!628240 () List!18454)

(declare-fun lt!628238 () List!18454)

(assert (=> b!1668477 (= res!748228 (= lt!628240 lt!628238))))

(declare-fun lt!628235 () List!18454)

(declare-fun lt!628237 () List!18454)

(declare-fun ++!5009 (List!18454 List!18454) List!18454)

(assert (=> b!1668477 (= lt!628238 (++!5009 lt!628235 lt!628237))))

(declare-fun lt!628236 () BalanceConc!12192)

(declare-fun list!7355 (BalanceConc!12192) List!18454)

(assert (=> b!1668477 (= lt!628240 (list!7355 lt!628236))))

(declare-fun lt!628234 () BalanceConc!12192)

(assert (=> b!1668477 (= lt!628237 (list!7355 lt!628234))))

(declare-fun charsOf!1887 (Token!6042) BalanceConc!12192)

(assert (=> b!1668477 (= lt!628235 (list!7355 (charsOf!1887 (h!23786 tokens!457))))))

(declare-datatypes ((IArray!12255 0))(
  ( (IArray!12256 (innerList!6185 List!18455)) )
))
(declare-datatypes ((Conc!6125 0))(
  ( (Node!6125 (left!14706 Conc!6125) (right!15036 Conc!6125) (csize!12480 Int) (cheight!6336 Int)) (Leaf!8965 (xs!8969 IArray!12255) (csize!12481 Int)) (Empty!6125) )
))
(declare-datatypes ((BalanceConc!12194 0))(
  ( (BalanceConc!12195 (c!271513 Conc!6125)) )
))
(declare-datatypes ((tuple2!18104 0))(
  ( (tuple2!18105 (_1!10454 BalanceConc!12194) (_2!10454 BalanceConc!12192)) )
))
(declare-fun lt!628233 () tuple2!18104)

(declare-fun lex!1351 (LexerInterface!2867 List!18456 BalanceConc!12192) tuple2!18104)

(assert (=> b!1668477 (= lt!628233 (lex!1351 thiss!17113 rules!1846 lt!628234))))

(declare-fun print!1398 (LexerInterface!2867 BalanceConc!12194) BalanceConc!12192)

(declare-fun seqFromList!2215 (List!18455) BalanceConc!12194)

(assert (=> b!1668477 (= lt!628234 (print!1398 thiss!17113 (seqFromList!2215 (t!152454 tokens!457))))))

(assert (=> b!1668477 (= lt!628236 (print!1398 thiss!17113 (seqFromList!2215 tokens!457)))))

(declare-fun tp!481638 () Bool)

(declare-fun e!1069161 () Bool)

(declare-fun b!1668478 () Bool)

(declare-fun inv!23734 (Token!6042) Bool)

(assert (=> b!1668478 (= e!1069167 (and (inv!23734 (h!23786 tokens!457)) e!1069161 tp!481638))))

(declare-fun b!1668479 () Bool)

(declare-fun res!748230 () Bool)

(assert (=> b!1668479 (=> (not res!748230) (not e!1069162))))

(declare-fun rulesInvariant!2536 (LexerInterface!2867 List!18456) Bool)

(assert (=> b!1668479 (= res!748230 (rulesInvariant!2536 thiss!17113 rules!1846))))

(declare-fun b!1668480 () Bool)

(declare-fun res!748229 () Bool)

(assert (=> b!1668480 (=> (not res!748229) (not e!1069162))))

(assert (=> b!1668480 (= res!748229 (and (not (is-Nil!18385 tokens!457)) (not (is-Nil!18385 (t!152454 tokens!457)))))))

(assert (=> b!1668481 (= e!1069171 (and tp!481633 tp!481637))))

(declare-fun b!1668482 () Bool)

(declare-fun res!748227 () Bool)

(assert (=> b!1668482 (=> (not res!748227) (not e!1069162))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!560 (LexerInterface!2867 List!18455 List!18456) Bool)

(assert (=> b!1668482 (= res!748227 (tokensListTwoByTwoPredicateSeparableList!560 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1668483 () Bool)

(declare-fun tp!481632 () Bool)

(declare-fun inv!21 (TokenValue!3328) Bool)

(assert (=> b!1668483 (= e!1069161 (and (inv!21 (value!101957 (h!23786 tokens!457))) e!1069166 tp!481632))))

(declare-fun b!1668484 () Bool)

(declare-fun ListPrimitiveSize!107 (List!18455) Int)

(assert (=> b!1668484 (= e!1069170 (not (< (ListPrimitiveSize!107 (t!152454 tokens!457)) (ListPrimitiveSize!107 tokens!457))))))

(declare-fun isPrefix!1496 (List!18454 List!18454) Bool)

(assert (=> b!1668484 (isPrefix!1496 lt!628235 lt!628238)))

(declare-datatypes ((Unit!31162 0))(
  ( (Unit!31163) )
))
(declare-fun lt!628239 () Unit!31162)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1017 (List!18454 List!18454) Unit!31162)

(assert (=> b!1668484 (= lt!628239 (lemmaConcatTwoListThenFirstIsPrefix!1017 lt!628235 lt!628237))))

(assert (= (and start!161732 res!748231) b!1668474))

(assert (= (and b!1668474 res!748233) b!1668479))

(assert (= (and b!1668479 res!748230) b!1668475))

(assert (= (and b!1668475 res!748232) b!1668482))

(assert (= (and b!1668482 res!748227) b!1668480))

(assert (= (and b!1668480 res!748229) b!1668477))

(assert (= (and b!1668477 res!748228) b!1668484))

(assert (= b!1668473 b!1668476))

(assert (= b!1668471 b!1668473))

(assert (= (and start!161732 (is-Cons!18386 rules!1846)) b!1668471))

(assert (= b!1668472 b!1668481))

(assert (= b!1668483 b!1668472))

(assert (= b!1668478 b!1668483))

(assert (= (and start!161732 (is-Cons!18385 tokens!457)) b!1668478))

(declare-fun m!2032901 () Bool)

(assert (=> b!1668484 m!2032901))

(declare-fun m!2032903 () Bool)

(assert (=> b!1668484 m!2032903))

(declare-fun m!2032905 () Bool)

(assert (=> b!1668484 m!2032905))

(declare-fun m!2032907 () Bool)

(assert (=> b!1668484 m!2032907))

(declare-fun m!2032909 () Bool)

(assert (=> b!1668475 m!2032909))

(declare-fun m!2032911 () Bool)

(assert (=> b!1668478 m!2032911))

(declare-fun m!2032913 () Bool)

(assert (=> b!1668474 m!2032913))

(declare-fun m!2032915 () Bool)

(assert (=> b!1668477 m!2032915))

(declare-fun m!2032917 () Bool)

(assert (=> b!1668477 m!2032917))

(declare-fun m!2032919 () Bool)

(assert (=> b!1668477 m!2032919))

(declare-fun m!2032921 () Bool)

(assert (=> b!1668477 m!2032921))

(assert (=> b!1668477 m!2032915))

(declare-fun m!2032923 () Bool)

(assert (=> b!1668477 m!2032923))

(assert (=> b!1668477 m!2032917))

(declare-fun m!2032925 () Bool)

(assert (=> b!1668477 m!2032925))

(declare-fun m!2032927 () Bool)

(assert (=> b!1668477 m!2032927))

(declare-fun m!2032929 () Bool)

(assert (=> b!1668477 m!2032929))

(declare-fun m!2032931 () Bool)

(assert (=> b!1668477 m!2032931))

(declare-fun m!2032933 () Bool)

(assert (=> b!1668477 m!2032933))

(assert (=> b!1668477 m!2032931))

(declare-fun m!2032935 () Bool)

(assert (=> b!1668479 m!2032935))

(declare-fun m!2032937 () Bool)

(assert (=> b!1668472 m!2032937))

(declare-fun m!2032939 () Bool)

(assert (=> b!1668472 m!2032939))

(declare-fun m!2032941 () Bool)

(assert (=> b!1668482 m!2032941))

(declare-fun m!2032943 () Bool)

(assert (=> b!1668483 m!2032943))

(declare-fun m!2032945 () Bool)

(assert (=> b!1668473 m!2032945))

(declare-fun m!2032947 () Bool)

(assert (=> b!1668473 m!2032947))

(push 1)

(assert (not b!1668474))

(assert (not b!1668471))

(assert b_and!118611)

(assert (not b!1668478))

(assert (not b!1668473))

(assert b_and!118607)

(assert (not b!1668475))

(assert (not b!1668484))

(assert (not b!1668482))

(assert (not b_next!46037))

(assert b_and!118609)

(assert (not b!1668477))

(assert (not b_next!46033))

(assert (not b!1668472))

(assert b_and!118605)

(assert (not b_next!46031))

(assert (not b!1668483))

(assert (not b!1668479))

(assert (not b_next!46035))

(check-sat)

(pop 1)

(push 1)

(assert b_and!118611)

(assert b_and!118609)

(assert (not b_next!46033))

(assert b_and!118607)

(assert (not b_next!46037))

(assert (not b_next!46035))

(assert b_and!118605)

(assert (not b_next!46031))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1668551 () Bool)

(declare-fun e!1069231 () Bool)

(assert (=> b!1668551 (= e!1069231 true)))

(declare-fun b!1668550 () Bool)

(declare-fun e!1069230 () Bool)

(assert (=> b!1668550 (= e!1069230 e!1069231)))

(declare-fun b!1668549 () Bool)

(declare-fun e!1069229 () Bool)

(assert (=> b!1668549 (= e!1069229 e!1069230)))

(declare-fun d!504514 () Bool)

(assert (=> d!504514 e!1069229))

(assert (= b!1668550 b!1668551))

(assert (= b!1668549 b!1668550))

(assert (= (and d!504514 (is-Cons!18386 rules!1846)) b!1668549))

(declare-fun lambda!67997 () Int)

(declare-fun order!11031 () Int)

(declare-fun order!11029 () Int)

(declare-fun dynLambda!8282 (Int Int) Int)

(declare-fun dynLambda!8283 (Int Int) Int)

(assert (=> b!1668551 (< (dynLambda!8282 order!11029 (toValue!4701 (transformation!3238 (h!23787 rules!1846)))) (dynLambda!8283 order!11031 lambda!67997))))

(declare-fun order!11033 () Int)

(declare-fun dynLambda!8284 (Int Int) Int)

(assert (=> b!1668551 (< (dynLambda!8284 order!11033 (toChars!4560 (transformation!3238 (h!23787 rules!1846)))) (dynLambda!8283 order!11031 lambda!67997))))

(assert (=> d!504514 true))

(declare-fun lt!628269 () Bool)

(declare-fun forall!4179 (List!18455 Int) Bool)

(assert (=> d!504514 (= lt!628269 (forall!4179 tokens!457 lambda!67997))))

(declare-fun e!1069221 () Bool)

(assert (=> d!504514 (= lt!628269 e!1069221)))

(declare-fun res!748275 () Bool)

(assert (=> d!504514 (=> res!748275 e!1069221)))

(assert (=> d!504514 (= res!748275 (not (is-Cons!18385 tokens!457)))))

(assert (=> d!504514 (not (isEmpty!11442 rules!1846))))

(assert (=> d!504514 (= (rulesProduceEachTokenIndividuallyList!1069 thiss!17113 rules!1846 tokens!457) lt!628269)))

(declare-fun b!1668539 () Bool)

(declare-fun e!1069222 () Bool)

(assert (=> b!1668539 (= e!1069221 e!1069222)))

(declare-fun res!748274 () Bool)

(assert (=> b!1668539 (=> (not res!748274) (not e!1069222))))

(declare-fun rulesProduceIndividualToken!1515 (LexerInterface!2867 List!18456 Token!6042) Bool)

(assert (=> b!1668539 (= res!748274 (rulesProduceIndividualToken!1515 thiss!17113 rules!1846 (h!23786 tokens!457)))))

(declare-fun b!1668540 () Bool)

(assert (=> b!1668540 (= e!1069222 (rulesProduceEachTokenIndividuallyList!1069 thiss!17113 rules!1846 (t!152454 tokens!457)))))

(assert (= (and d!504514 (not res!748275)) b!1668539))

(assert (= (and b!1668539 res!748274) b!1668540))

(declare-fun m!2033005 () Bool)

(assert (=> d!504514 m!2033005))

(assert (=> d!504514 m!2032913))

(declare-fun m!2033007 () Bool)

(assert (=> b!1668539 m!2033007))

(declare-fun m!2033009 () Bool)

(assert (=> b!1668540 m!2033009))

(assert (=> b!1668475 d!504514))

(declare-fun d!504526 () Bool)

(assert (=> d!504526 (= (isEmpty!11442 rules!1846) (is-Nil!18386 rules!1846))))

(assert (=> b!1668474 d!504526))

(declare-fun d!504528 () Bool)

(declare-fun res!748278 () Bool)

(declare-fun e!1069234 () Bool)

(assert (=> d!504528 (=> (not res!748278) (not e!1069234))))

(declare-fun rulesValid!1191 (LexerInterface!2867 List!18456) Bool)

(assert (=> d!504528 (= res!748278 (rulesValid!1191 thiss!17113 rules!1846))))

(assert (=> d!504528 (= (rulesInvariant!2536 thiss!17113 rules!1846) e!1069234)))

(declare-fun b!1668556 () Bool)

(declare-datatypes ((List!18461 0))(
  ( (Nil!18391) (Cons!18391 (h!23792 String!20974) (t!152476 List!18461)) )
))
(declare-fun noDuplicateTag!1191 (LexerInterface!2867 List!18456 List!18461) Bool)

(assert (=> b!1668556 (= e!1069234 (noDuplicateTag!1191 thiss!17113 rules!1846 Nil!18391))))

(assert (= (and d!504528 res!748278) b!1668556))

(declare-fun m!2033011 () Bool)

(assert (=> d!504528 m!2033011))

(declare-fun m!2033013 () Bool)

(assert (=> b!1668556 m!2033013))

(assert (=> b!1668479 d!504528))

(declare-fun d!504530 () Bool)

(declare-fun lt!628272 () Int)

(assert (=> d!504530 (>= lt!628272 0)))

(declare-fun e!1069237 () Int)

(assert (=> d!504530 (= lt!628272 e!1069237)))

(declare-fun c!271520 () Bool)

(assert (=> d!504530 (= c!271520 (is-Nil!18385 (t!152454 tokens!457)))))

(assert (=> d!504530 (= (ListPrimitiveSize!107 (t!152454 tokens!457)) lt!628272)))

(declare-fun b!1668561 () Bool)

(assert (=> b!1668561 (= e!1069237 0)))

(declare-fun b!1668562 () Bool)

(assert (=> b!1668562 (= e!1069237 (+ 1 (ListPrimitiveSize!107 (t!152454 (t!152454 tokens!457)))))))

(assert (= (and d!504530 c!271520) b!1668561))

(assert (= (and d!504530 (not c!271520)) b!1668562))

(declare-fun m!2033015 () Bool)

(assert (=> b!1668562 m!2033015))

(assert (=> b!1668484 d!504530))

(declare-fun d!504532 () Bool)

(declare-fun lt!628273 () Int)

(assert (=> d!504532 (>= lt!628273 0)))

(declare-fun e!1069238 () Int)

(assert (=> d!504532 (= lt!628273 e!1069238)))

(declare-fun c!271521 () Bool)

(assert (=> d!504532 (= c!271521 (is-Nil!18385 tokens!457))))

(assert (=> d!504532 (= (ListPrimitiveSize!107 tokens!457) lt!628273)))

(declare-fun b!1668563 () Bool)

(assert (=> b!1668563 (= e!1069238 0)))

(declare-fun b!1668564 () Bool)

(assert (=> b!1668564 (= e!1069238 (+ 1 (ListPrimitiveSize!107 (t!152454 tokens!457))))))

(assert (= (and d!504532 c!271521) b!1668563))

(assert (= (and d!504532 (not c!271521)) b!1668564))

(assert (=> b!1668564 m!2032901))

(assert (=> b!1668484 d!504532))

(declare-fun b!1668576 () Bool)

(declare-fun e!1069246 () Bool)

(declare-fun size!14625 (List!18454) Int)

(assert (=> b!1668576 (= e!1069246 (>= (size!14625 lt!628238) (size!14625 lt!628235)))))

(declare-fun b!1668575 () Bool)

(declare-fun e!1069247 () Bool)

(declare-fun tail!2485 (List!18454) List!18454)

(assert (=> b!1668575 (= e!1069247 (isPrefix!1496 (tail!2485 lt!628235) (tail!2485 lt!628238)))))

(declare-fun b!1668574 () Bool)

(declare-fun res!748288 () Bool)

(assert (=> b!1668574 (=> (not res!748288) (not e!1069247))))

(declare-fun head!3720 (List!18454) C!9306)

(assert (=> b!1668574 (= res!748288 (= (head!3720 lt!628235) (head!3720 lt!628238)))))

(declare-fun b!1668573 () Bool)

(declare-fun e!1069245 () Bool)

(assert (=> b!1668573 (= e!1069245 e!1069247)))

(declare-fun res!748287 () Bool)

(assert (=> b!1668573 (=> (not res!748287) (not e!1069247))))

(assert (=> b!1668573 (= res!748287 (not (is-Nil!18384 lt!628238)))))

(declare-fun d!504534 () Bool)

(assert (=> d!504534 e!1069246))

(declare-fun res!748289 () Bool)

(assert (=> d!504534 (=> res!748289 e!1069246)))

(declare-fun lt!628276 () Bool)

(assert (=> d!504534 (= res!748289 (not lt!628276))))

(assert (=> d!504534 (= lt!628276 e!1069245)))

(declare-fun res!748290 () Bool)

(assert (=> d!504534 (=> res!748290 e!1069245)))

(assert (=> d!504534 (= res!748290 (is-Nil!18384 lt!628235))))

(assert (=> d!504534 (= (isPrefix!1496 lt!628235 lt!628238) lt!628276)))

(assert (= (and d!504534 (not res!748290)) b!1668573))

(assert (= (and b!1668573 res!748287) b!1668574))

(assert (= (and b!1668574 res!748288) b!1668575))

(assert (= (and d!504534 (not res!748289)) b!1668576))

(declare-fun m!2033017 () Bool)

(assert (=> b!1668576 m!2033017))

(declare-fun m!2033019 () Bool)

(assert (=> b!1668576 m!2033019))

(declare-fun m!2033021 () Bool)

(assert (=> b!1668575 m!2033021))

(declare-fun m!2033023 () Bool)

(assert (=> b!1668575 m!2033023))

(assert (=> b!1668575 m!2033021))

(assert (=> b!1668575 m!2033023))

(declare-fun m!2033025 () Bool)

(assert (=> b!1668575 m!2033025))

(declare-fun m!2033027 () Bool)

(assert (=> b!1668574 m!2033027))

(declare-fun m!2033029 () Bool)

(assert (=> b!1668574 m!2033029))

(assert (=> b!1668484 d!504534))

(declare-fun d!504536 () Bool)

(assert (=> d!504536 (isPrefix!1496 lt!628235 (++!5009 lt!628235 lt!628237))))

(declare-fun lt!628279 () Unit!31162)

(declare-fun choose!10050 (List!18454 List!18454) Unit!31162)

(assert (=> d!504536 (= lt!628279 (choose!10050 lt!628235 lt!628237))))

(assert (=> d!504536 (= (lemmaConcatTwoListThenFirstIsPrefix!1017 lt!628235 lt!628237) lt!628279)))

(declare-fun bs!397910 () Bool)

(assert (= bs!397910 d!504536))

(assert (=> bs!397910 m!2032927))

(assert (=> bs!397910 m!2032927))

(declare-fun m!2033031 () Bool)

(assert (=> bs!397910 m!2033031))

(declare-fun m!2033033 () Bool)

(assert (=> bs!397910 m!2033033))

(assert (=> b!1668484 d!504536))

(declare-fun d!504538 () Bool)

(assert (=> d!504538 (= (inv!23730 (tag!3522 (h!23787 rules!1846))) (= (mod (str.len (value!101956 (tag!3522 (h!23787 rules!1846)))) 2) 0))))

(assert (=> b!1668473 d!504538))

(declare-fun d!504540 () Bool)

(declare-fun res!748293 () Bool)

(declare-fun e!1069250 () Bool)

(assert (=> d!504540 (=> (not res!748293) (not e!1069250))))

(declare-fun semiInverseModEq!1263 (Int Int) Bool)

(assert (=> d!504540 (= res!748293 (semiInverseModEq!1263 (toChars!4560 (transformation!3238 (h!23787 rules!1846))) (toValue!4701 (transformation!3238 (h!23787 rules!1846)))))))

(assert (=> d!504540 (= (inv!23733 (transformation!3238 (h!23787 rules!1846))) e!1069250)))

(declare-fun b!1668579 () Bool)

(declare-fun equivClasses!1204 (Int Int) Bool)

(assert (=> b!1668579 (= e!1069250 (equivClasses!1204 (toChars!4560 (transformation!3238 (h!23787 rules!1846))) (toValue!4701 (transformation!3238 (h!23787 rules!1846)))))))

(assert (= (and d!504540 res!748293) b!1668579))

(declare-fun m!2033035 () Bool)

(assert (=> d!504540 m!2033035))

(declare-fun m!2033037 () Bool)

(assert (=> b!1668579 m!2033037))

(assert (=> b!1668473 d!504540))

(declare-fun d!504542 () Bool)

(declare-fun res!748298 () Bool)

(declare-fun e!1069253 () Bool)

(assert (=> d!504542 (=> (not res!748298) (not e!1069253))))

(declare-fun isEmpty!11444 (List!18454) Bool)

(assert (=> d!504542 (= res!748298 (not (isEmpty!11444 (originalCharacters!4052 (h!23786 tokens!457)))))))

(assert (=> d!504542 (= (inv!23734 (h!23786 tokens!457)) e!1069253)))

(declare-fun b!1668584 () Bool)

(declare-fun res!748299 () Bool)

(assert (=> b!1668584 (=> (not res!748299) (not e!1069253))))

(declare-fun dynLambda!8285 (Int TokenValue!3328) BalanceConc!12192)

(assert (=> b!1668584 (= res!748299 (= (originalCharacters!4052 (h!23786 tokens!457)) (list!7355 (dynLambda!8285 (toChars!4560 (transformation!3238 (rule!5126 (h!23786 tokens!457)))) (value!101957 (h!23786 tokens!457))))))))

(declare-fun b!1668585 () Bool)

(assert (=> b!1668585 (= e!1069253 (= (size!14623 (h!23786 tokens!457)) (size!14625 (originalCharacters!4052 (h!23786 tokens!457)))))))

(assert (= (and d!504542 res!748298) b!1668584))

(assert (= (and b!1668584 res!748299) b!1668585))

(declare-fun b_lambda!52397 () Bool)

(assert (=> (not b_lambda!52397) (not b!1668584)))

(declare-fun t!152465 () Bool)

(declare-fun tb!95751 () Bool)

(assert (=> (and b!1668481 (= (toChars!4560 (transformation!3238 (rule!5126 (h!23786 tokens!457)))) (toChars!4560 (transformation!3238 (rule!5126 (h!23786 tokens!457))))) t!152465) tb!95751))

(declare-fun b!1668590 () Bool)

(declare-fun e!1069256 () Bool)

(declare-fun tp!481669 () Bool)

(declare-fun inv!23737 (Conc!6124) Bool)

(assert (=> b!1668590 (= e!1069256 (and (inv!23737 (c!271511 (dynLambda!8285 (toChars!4560 (transformation!3238 (rule!5126 (h!23786 tokens!457)))) (value!101957 (h!23786 tokens!457))))) tp!481669))))

(declare-fun result!115666 () Bool)

(declare-fun inv!23738 (BalanceConc!12192) Bool)

(assert (=> tb!95751 (= result!115666 (and (inv!23738 (dynLambda!8285 (toChars!4560 (transformation!3238 (rule!5126 (h!23786 tokens!457)))) (value!101957 (h!23786 tokens!457)))) e!1069256))))

(assert (= tb!95751 b!1668590))

(declare-fun m!2033039 () Bool)

(assert (=> b!1668590 m!2033039))

(declare-fun m!2033041 () Bool)

(assert (=> tb!95751 m!2033041))

(assert (=> b!1668584 t!152465))

(declare-fun b_and!118621 () Bool)

(assert (= b_and!118607 (and (=> t!152465 result!115666) b_and!118621)))

(declare-fun t!152467 () Bool)

(declare-fun tb!95753 () Bool)

(assert (=> (and b!1668476 (= (toChars!4560 (transformation!3238 (h!23787 rules!1846))) (toChars!4560 (transformation!3238 (rule!5126 (h!23786 tokens!457))))) t!152467) tb!95753))

(declare-fun result!115670 () Bool)

(assert (= result!115670 result!115666))

(assert (=> b!1668584 t!152467))

(declare-fun b_and!118623 () Bool)

(assert (= b_and!118611 (and (=> t!152467 result!115670) b_and!118623)))

(declare-fun m!2033043 () Bool)

(assert (=> d!504542 m!2033043))

(declare-fun m!2033045 () Bool)

(assert (=> b!1668584 m!2033045))

(assert (=> b!1668584 m!2033045))

(declare-fun m!2033047 () Bool)

(assert (=> b!1668584 m!2033047))

(declare-fun m!2033049 () Bool)

(assert (=> b!1668585 m!2033049))

(assert (=> b!1668478 d!504542))

(declare-fun b!1668601 () Bool)

(declare-fun e!1069264 () Bool)

(declare-fun inv!17 (TokenValue!3328) Bool)

(assert (=> b!1668601 (= e!1069264 (inv!17 (value!101957 (h!23786 tokens!457))))))

(declare-fun b!1668602 () Bool)

(declare-fun res!748302 () Bool)

(declare-fun e!1069263 () Bool)

(assert (=> b!1668602 (=> res!748302 e!1069263)))

(assert (=> b!1668602 (= res!748302 (not (is-IntegerValue!9986 (value!101957 (h!23786 tokens!457)))))))

(assert (=> b!1668602 (= e!1069264 e!1069263)))

(declare-fun b!1668603 () Bool)

(declare-fun e!1069265 () Bool)

(declare-fun inv!16 (TokenValue!3328) Bool)

(assert (=> b!1668603 (= e!1069265 (inv!16 (value!101957 (h!23786 tokens!457))))))

(declare-fun d!504544 () Bool)

(declare-fun c!271527 () Bool)

(assert (=> d!504544 (= c!271527 (is-IntegerValue!9984 (value!101957 (h!23786 tokens!457))))))

(assert (=> d!504544 (= (inv!21 (value!101957 (h!23786 tokens!457))) e!1069265)))

(declare-fun b!1668604 () Bool)

(declare-fun inv!15 (TokenValue!3328) Bool)

(assert (=> b!1668604 (= e!1069263 (inv!15 (value!101957 (h!23786 tokens!457))))))

(declare-fun b!1668605 () Bool)

(assert (=> b!1668605 (= e!1069265 e!1069264)))

(declare-fun c!271526 () Bool)

(assert (=> b!1668605 (= c!271526 (is-IntegerValue!9985 (value!101957 (h!23786 tokens!457))))))

(assert (= (and d!504544 c!271527) b!1668603))

(assert (= (and d!504544 (not c!271527)) b!1668605))

(assert (= (and b!1668605 c!271526) b!1668601))

(assert (= (and b!1668605 (not c!271526)) b!1668602))

(assert (= (and b!1668602 (not res!748302)) b!1668604))

(declare-fun m!2033051 () Bool)

(assert (=> b!1668601 m!2033051))

(declare-fun m!2033053 () Bool)

(assert (=> b!1668603 m!2033053))

(declare-fun m!2033055 () Bool)

(assert (=> b!1668604 m!2033055))

(assert (=> b!1668483 d!504544))

(declare-fun d!504546 () Bool)

(assert (=> d!504546 (= (inv!23730 (tag!3522 (rule!5126 (h!23786 tokens!457)))) (= (mod (str.len (value!101956 (tag!3522 (rule!5126 (h!23786 tokens!457))))) 2) 0))))

(assert (=> b!1668472 d!504546))

(declare-fun d!504548 () Bool)

(declare-fun res!748303 () Bool)

(declare-fun e!1069266 () Bool)

(assert (=> d!504548 (=> (not res!748303) (not e!1069266))))

(assert (=> d!504548 (= res!748303 (semiInverseModEq!1263 (toChars!4560 (transformation!3238 (rule!5126 (h!23786 tokens!457)))) (toValue!4701 (transformation!3238 (rule!5126 (h!23786 tokens!457))))))))

(assert (=> d!504548 (= (inv!23733 (transformation!3238 (rule!5126 (h!23786 tokens!457)))) e!1069266)))

(declare-fun b!1668606 () Bool)

(assert (=> b!1668606 (= e!1069266 (equivClasses!1204 (toChars!4560 (transformation!3238 (rule!5126 (h!23786 tokens!457)))) (toValue!4701 (transformation!3238 (rule!5126 (h!23786 tokens!457))))))))

(assert (= (and d!504548 res!748303) b!1668606))

(declare-fun m!2033057 () Bool)

(assert (=> d!504548 m!2033057))

(declare-fun m!2033059 () Bool)

(assert (=> b!1668606 m!2033059))

(assert (=> b!1668472 d!504548))

(declare-fun d!504550 () Bool)

(declare-fun lt!628282 () BalanceConc!12192)

(declare-fun printList!980 (LexerInterface!2867 List!18455) List!18454)

(declare-fun list!7357 (BalanceConc!12194) List!18455)

(assert (=> d!504550 (= (list!7355 lt!628282) (printList!980 thiss!17113 (list!7357 (seqFromList!2215 tokens!457))))))

(declare-fun printTailRec!918 (LexerInterface!2867 BalanceConc!12194 Int BalanceConc!12192) BalanceConc!12192)

(assert (=> d!504550 (= lt!628282 (printTailRec!918 thiss!17113 (seqFromList!2215 tokens!457) 0 (BalanceConc!12193 Empty!6124)))))

(assert (=> d!504550 (= (print!1398 thiss!17113 (seqFromList!2215 tokens!457)) lt!628282)))

(declare-fun bs!397911 () Bool)

(assert (= bs!397911 d!504550))

(declare-fun m!2033061 () Bool)

(assert (=> bs!397911 m!2033061))

(assert (=> bs!397911 m!2032917))

(declare-fun m!2033063 () Bool)

(assert (=> bs!397911 m!2033063))

(assert (=> bs!397911 m!2033063))

(declare-fun m!2033065 () Bool)

(assert (=> bs!397911 m!2033065))

(assert (=> bs!397911 m!2032917))

(declare-fun m!2033067 () Bool)

(assert (=> bs!397911 m!2033067))

(assert (=> b!1668477 d!504550))

(declare-fun d!504552 () Bool)

(declare-fun list!7358 (Conc!6124) List!18454)

(assert (=> d!504552 (= (list!7355 lt!628236) (list!7358 (c!271511 lt!628236)))))

(declare-fun bs!397912 () Bool)

(assert (= bs!397912 d!504552))

(declare-fun m!2033069 () Bool)

(assert (=> bs!397912 m!2033069))

(assert (=> b!1668477 d!504552))

(declare-fun b!1668617 () Bool)

(declare-fun res!748312 () Bool)

(declare-fun e!1069273 () Bool)

(assert (=> b!1668617 (=> (not res!748312) (not e!1069273))))

(declare-fun lt!628285 () tuple2!18104)

(declare-datatypes ((tuple2!18108 0))(
  ( (tuple2!18109 (_1!10456 List!18455) (_2!10456 List!18454)) )
))
(declare-fun lexList!892 (LexerInterface!2867 List!18456 List!18454) tuple2!18108)

(assert (=> b!1668617 (= res!748312 (= (list!7357 (_1!10454 lt!628285)) (_1!10456 (lexList!892 thiss!17113 rules!1846 (list!7355 lt!628234)))))))

(declare-fun b!1668618 () Bool)

(assert (=> b!1668618 (= e!1069273 (= (list!7355 (_2!10454 lt!628285)) (_2!10456 (lexList!892 thiss!17113 rules!1846 (list!7355 lt!628234)))))))

(declare-fun b!1668620 () Bool)

(declare-fun e!1069275 () Bool)

(declare-fun isEmpty!11445 (BalanceConc!12194) Bool)

(assert (=> b!1668620 (= e!1069275 (not (isEmpty!11445 (_1!10454 lt!628285))))))

(declare-fun b!1668621 () Bool)

(declare-fun e!1069274 () Bool)

(assert (=> b!1668621 (= e!1069274 (= (_2!10454 lt!628285) lt!628234))))

(declare-fun d!504554 () Bool)

(assert (=> d!504554 e!1069273))

(declare-fun res!748310 () Bool)

(assert (=> d!504554 (=> (not res!748310) (not e!1069273))))

(assert (=> d!504554 (= res!748310 e!1069274)))

(declare-fun c!271530 () Bool)

(declare-fun size!14626 (BalanceConc!12194) Int)

(assert (=> d!504554 (= c!271530 (> (size!14626 (_1!10454 lt!628285)) 0))))

(declare-fun lexTailRecV2!615 (LexerInterface!2867 List!18456 BalanceConc!12192 BalanceConc!12192 BalanceConc!12192 BalanceConc!12194) tuple2!18104)

(assert (=> d!504554 (= lt!628285 (lexTailRecV2!615 thiss!17113 rules!1846 lt!628234 (BalanceConc!12193 Empty!6124) lt!628234 (BalanceConc!12195 Empty!6125)))))

(assert (=> d!504554 (= (lex!1351 thiss!17113 rules!1846 lt!628234) lt!628285)))

(declare-fun b!1668619 () Bool)

(assert (=> b!1668619 (= e!1069274 e!1069275)))

(declare-fun res!748311 () Bool)

(declare-fun size!14627 (BalanceConc!12192) Int)

(assert (=> b!1668619 (= res!748311 (< (size!14627 (_2!10454 lt!628285)) (size!14627 lt!628234)))))

(assert (=> b!1668619 (=> (not res!748311) (not e!1069275))))

(assert (= (and d!504554 c!271530) b!1668619))

(assert (= (and d!504554 (not c!271530)) b!1668621))

(assert (= (and b!1668619 res!748311) b!1668620))

(assert (= (and d!504554 res!748310) b!1668617))

(assert (= (and b!1668617 res!748312) b!1668618))

(declare-fun m!2033071 () Bool)

(assert (=> d!504554 m!2033071))

(declare-fun m!2033073 () Bool)

(assert (=> d!504554 m!2033073))

(declare-fun m!2033075 () Bool)

(assert (=> b!1668618 m!2033075))

(assert (=> b!1668618 m!2032929))

(assert (=> b!1668618 m!2032929))

(declare-fun m!2033077 () Bool)

(assert (=> b!1668618 m!2033077))

(declare-fun m!2033079 () Bool)

(assert (=> b!1668620 m!2033079))

(declare-fun m!2033081 () Bool)

(assert (=> b!1668617 m!2033081))

(assert (=> b!1668617 m!2032929))

(assert (=> b!1668617 m!2032929))

(assert (=> b!1668617 m!2033077))

(declare-fun m!2033083 () Bool)

(assert (=> b!1668619 m!2033083))

(declare-fun m!2033085 () Bool)

(assert (=> b!1668619 m!2033085))

(assert (=> b!1668477 d!504554))

(declare-fun d!504556 () Bool)

(declare-fun lt!628286 () BalanceConc!12192)

(assert (=> d!504556 (= (list!7355 lt!628286) (printList!980 thiss!17113 (list!7357 (seqFromList!2215 (t!152454 tokens!457)))))))

(assert (=> d!504556 (= lt!628286 (printTailRec!918 thiss!17113 (seqFromList!2215 (t!152454 tokens!457)) 0 (BalanceConc!12193 Empty!6124)))))

(assert (=> d!504556 (= (print!1398 thiss!17113 (seqFromList!2215 (t!152454 tokens!457))) lt!628286)))

(declare-fun bs!397913 () Bool)

(assert (= bs!397913 d!504556))

(declare-fun m!2033087 () Bool)

(assert (=> bs!397913 m!2033087))

(assert (=> bs!397913 m!2032931))

(declare-fun m!2033089 () Bool)

(assert (=> bs!397913 m!2033089))

(assert (=> bs!397913 m!2033089))

(declare-fun m!2033091 () Bool)

(assert (=> bs!397913 m!2033091))

(assert (=> bs!397913 m!2032931))

(declare-fun m!2033093 () Bool)

(assert (=> bs!397913 m!2033093))

(assert (=> b!1668477 d!504556))

(declare-fun d!504558 () Bool)

(assert (=> d!504558 (= (list!7355 lt!628234) (list!7358 (c!271511 lt!628234)))))

(declare-fun bs!397914 () Bool)

(assert (= bs!397914 d!504558))

(declare-fun m!2033095 () Bool)

(assert (=> bs!397914 m!2033095))

(assert (=> b!1668477 d!504558))

(declare-fun d!504560 () Bool)

(declare-fun lt!628289 () BalanceConc!12192)

(assert (=> d!504560 (= (list!7355 lt!628289) (originalCharacters!4052 (h!23786 tokens!457)))))

(assert (=> d!504560 (= lt!628289 (dynLambda!8285 (toChars!4560 (transformation!3238 (rule!5126 (h!23786 tokens!457)))) (value!101957 (h!23786 tokens!457))))))

(assert (=> d!504560 (= (charsOf!1887 (h!23786 tokens!457)) lt!628289)))

(declare-fun b_lambda!52399 () Bool)

(assert (=> (not b_lambda!52399) (not d!504560)))

(assert (=> d!504560 t!152465))

(declare-fun b_and!118625 () Bool)

(assert (= b_and!118621 (and (=> t!152465 result!115666) b_and!118625)))

(assert (=> d!504560 t!152467))

(declare-fun b_and!118627 () Bool)

(assert (= b_and!118623 (and (=> t!152467 result!115670) b_and!118627)))

(declare-fun m!2033097 () Bool)

(assert (=> d!504560 m!2033097))

(assert (=> d!504560 m!2033045))

(assert (=> b!1668477 d!504560))

(declare-fun d!504562 () Bool)

(declare-fun fromListB!1004 (List!18455) BalanceConc!12194)

(assert (=> d!504562 (= (seqFromList!2215 (t!152454 tokens!457)) (fromListB!1004 (t!152454 tokens!457)))))

(declare-fun bs!397915 () Bool)

(assert (= bs!397915 d!504562))

(declare-fun m!2033099 () Bool)

(assert (=> bs!397915 m!2033099))

(assert (=> b!1668477 d!504562))

(declare-fun d!504564 () Bool)

(assert (=> d!504564 (= (list!7355 (charsOf!1887 (h!23786 tokens!457))) (list!7358 (c!271511 (charsOf!1887 (h!23786 tokens!457)))))))

(declare-fun bs!397916 () Bool)

(assert (= bs!397916 d!504564))

(declare-fun m!2033101 () Bool)

(assert (=> bs!397916 m!2033101))

(assert (=> b!1668477 d!504564))

(declare-fun e!1069292 () Bool)

(declare-fun b!1668648 () Bool)

(declare-fun lt!628293 () List!18454)

(assert (=> b!1668648 (= e!1069292 (or (not (= lt!628237 Nil!18384)) (= lt!628293 lt!628235)))))

(declare-fun b!1668647 () Bool)

(declare-fun res!748320 () Bool)

(assert (=> b!1668647 (=> (not res!748320) (not e!1069292))))

(assert (=> b!1668647 (= res!748320 (= (size!14625 lt!628293) (+ (size!14625 lt!628235) (size!14625 lt!628237))))))

(declare-fun b!1668646 () Bool)

(declare-fun e!1069291 () List!18454)

(assert (=> b!1668646 (= e!1069291 (Cons!18384 (h!23785 lt!628235) (++!5009 (t!152453 lt!628235) lt!628237)))))

(declare-fun d!504566 () Bool)

(assert (=> d!504566 e!1069292))

(declare-fun res!748319 () Bool)

(assert (=> d!504566 (=> (not res!748319) (not e!1069292))))

(declare-fun content!2570 (List!18454) (Set C!9306))

(assert (=> d!504566 (= res!748319 (= (content!2570 lt!628293) (set.union (content!2570 lt!628235) (content!2570 lt!628237))))))

(assert (=> d!504566 (= lt!628293 e!1069291)))

(declare-fun c!271533 () Bool)

(assert (=> d!504566 (= c!271533 (is-Nil!18384 lt!628235))))

(assert (=> d!504566 (= (++!5009 lt!628235 lt!628237) lt!628293)))

(declare-fun b!1668645 () Bool)

(assert (=> b!1668645 (= e!1069291 lt!628237)))

(assert (= (and d!504566 c!271533) b!1668645))

(assert (= (and d!504566 (not c!271533)) b!1668646))

(assert (= (and d!504566 res!748319) b!1668647))

(assert (= (and b!1668647 res!748320) b!1668648))

(declare-fun m!2033111 () Bool)

(assert (=> b!1668647 m!2033111))

(assert (=> b!1668647 m!2033019))

(declare-fun m!2033113 () Bool)

(assert (=> b!1668647 m!2033113))

(declare-fun m!2033115 () Bool)

(assert (=> b!1668646 m!2033115))

(declare-fun m!2033117 () Bool)

(assert (=> d!504566 m!2033117))

(declare-fun m!2033119 () Bool)

(assert (=> d!504566 m!2033119))

(declare-fun m!2033121 () Bool)

(assert (=> d!504566 m!2033121))

(assert (=> b!1668477 d!504566))

(declare-fun d!504572 () Bool)

(assert (=> d!504572 (= (seqFromList!2215 tokens!457) (fromListB!1004 tokens!457))))

(declare-fun bs!397918 () Bool)

(assert (= bs!397918 d!504572))

(declare-fun m!2033123 () Bool)

(assert (=> bs!397918 m!2033123))

(assert (=> b!1668477 d!504572))

(declare-fun d!504574 () Bool)

(declare-fun res!748335 () Bool)

(declare-fun e!1069306 () Bool)

(assert (=> d!504574 (=> res!748335 e!1069306)))

(assert (=> d!504574 (= res!748335 (or (not (is-Cons!18385 tokens!457)) (not (is-Cons!18385 (t!152454 tokens!457)))))))

(assert (=> d!504574 (= (tokensListTwoByTwoPredicateSeparableList!560 thiss!17113 tokens!457 rules!1846) e!1069306)))

(declare-fun b!1668668 () Bool)

(declare-fun e!1069307 () Bool)

(assert (=> b!1668668 (= e!1069306 e!1069307)))

(declare-fun res!748334 () Bool)

(assert (=> b!1668668 (=> (not res!748334) (not e!1069307))))

(declare-fun separableTokensPredicate!807 (LexerInterface!2867 Token!6042 Token!6042 List!18456) Bool)

(assert (=> b!1668668 (= res!748334 (separableTokensPredicate!807 thiss!17113 (h!23786 tokens!457) (h!23786 (t!152454 tokens!457)) rules!1846))))

(declare-fun lt!628316 () Unit!31162)

(declare-fun Unit!31167 () Unit!31162)

(assert (=> b!1668668 (= lt!628316 Unit!31167)))

(assert (=> b!1668668 (> (size!14627 (charsOf!1887 (h!23786 (t!152454 tokens!457)))) 0)))

(declare-fun lt!628320 () Unit!31162)

(declare-fun Unit!31168 () Unit!31162)

(assert (=> b!1668668 (= lt!628320 Unit!31168)))

(assert (=> b!1668668 (rulesProduceIndividualToken!1515 thiss!17113 rules!1846 (h!23786 (t!152454 tokens!457)))))

(declare-fun lt!628319 () Unit!31162)

(declare-fun Unit!31169 () Unit!31162)

(assert (=> b!1668668 (= lt!628319 Unit!31169)))

(assert (=> b!1668668 (rulesProduceIndividualToken!1515 thiss!17113 rules!1846 (h!23786 tokens!457))))

(declare-fun lt!628317 () Unit!31162)

(declare-fun lt!628314 () Unit!31162)

(assert (=> b!1668668 (= lt!628317 lt!628314)))

(assert (=> b!1668668 (rulesProduceIndividualToken!1515 thiss!17113 rules!1846 (h!23786 (t!152454 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!627 (LexerInterface!2867 List!18456 List!18455 Token!6042) Unit!31162)

(assert (=> b!1668668 (= lt!628314 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!627 thiss!17113 rules!1846 tokens!457 (h!23786 (t!152454 tokens!457))))))

(declare-fun lt!628318 () Unit!31162)

(declare-fun lt!628315 () Unit!31162)

(assert (=> b!1668668 (= lt!628318 lt!628315)))

(assert (=> b!1668668 (rulesProduceIndividualToken!1515 thiss!17113 rules!1846 (h!23786 tokens!457))))

(assert (=> b!1668668 (= lt!628315 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!627 thiss!17113 rules!1846 tokens!457 (h!23786 tokens!457)))))

(declare-fun b!1668669 () Bool)

(assert (=> b!1668669 (= e!1069307 (tokensListTwoByTwoPredicateSeparableList!560 thiss!17113 (Cons!18385 (h!23786 (t!152454 tokens!457)) (t!152454 (t!152454 tokens!457))) rules!1846))))

(assert (= (and d!504574 (not res!748335)) b!1668668))

(assert (= (and b!1668668 res!748334) b!1668669))

(assert (=> b!1668668 m!2033007))

(declare-fun m!2033153 () Bool)

(assert (=> b!1668668 m!2033153))

(declare-fun m!2033155 () Bool)

(assert (=> b!1668668 m!2033155))

(declare-fun m!2033157 () Bool)

(assert (=> b!1668668 m!2033157))

(declare-fun m!2033159 () Bool)

(assert (=> b!1668668 m!2033159))

(assert (=> b!1668668 m!2033157))

(declare-fun m!2033161 () Bool)

(assert (=> b!1668668 m!2033161))

(declare-fun m!2033163 () Bool)

(assert (=> b!1668668 m!2033163))

(declare-fun m!2033165 () Bool)

(assert (=> b!1668669 m!2033165))

(assert (=> b!1668482 d!504574))

(declare-fun b!1668687 () Bool)

(declare-fun e!1069312 () Bool)

(declare-fun tp!481682 () Bool)

(declare-fun tp!481686 () Bool)

(assert (=> b!1668687 (= e!1069312 (and tp!481682 tp!481686))))

(assert (=> b!1668473 (= tp!481639 e!1069312)))

(declare-fun b!1668685 () Bool)

(declare-fun tp!481685 () Bool)

(declare-fun tp!481684 () Bool)

(assert (=> b!1668685 (= e!1069312 (and tp!481685 tp!481684))))

(declare-fun b!1668686 () Bool)

(declare-fun tp!481683 () Bool)

(assert (=> b!1668686 (= e!1069312 tp!481683)))

(declare-fun b!1668684 () Bool)

(declare-fun tp_is_empty!7407 () Bool)

(assert (=> b!1668684 (= e!1069312 tp_is_empty!7407)))

(assert (= (and b!1668473 (is-ElementMatch!4566 (regex!3238 (h!23787 rules!1846)))) b!1668684))

(assert (= (and b!1668473 (is-Concat!7895 (regex!3238 (h!23787 rules!1846)))) b!1668685))

(assert (= (and b!1668473 (is-Star!4566 (regex!3238 (h!23787 rules!1846)))) b!1668686))

(assert (= (and b!1668473 (is-Union!4566 (regex!3238 (h!23787 rules!1846)))) b!1668687))

(declare-fun b!1668702 () Bool)

(declare-fun b_free!45343 () Bool)

(declare-fun b_next!46047 () Bool)

(assert (=> b!1668702 (= b_free!45343 (not b_next!46047))))

(declare-fun tp!481701 () Bool)

(declare-fun b_and!118633 () Bool)

(assert (=> b!1668702 (= tp!481701 b_and!118633)))

(declare-fun b_free!45345 () Bool)

(declare-fun b_next!46049 () Bool)

(assert (=> b!1668702 (= b_free!45345 (not b_next!46049))))

(declare-fun t!152473 () Bool)

(declare-fun tb!95759 () Bool)

(assert (=> (and b!1668702 (= (toChars!4560 (transformation!3238 (rule!5126 (h!23786 (t!152454 tokens!457))))) (toChars!4560 (transformation!3238 (rule!5126 (h!23786 tokens!457))))) t!152473) tb!95759))

(declare-fun result!115682 () Bool)

(assert (= result!115682 result!115666))

(assert (=> b!1668584 t!152473))

(assert (=> d!504560 t!152473))

(declare-fun tp!481698 () Bool)

(declare-fun b_and!118635 () Bool)

(assert (=> b!1668702 (= tp!481698 (and (=> t!152473 result!115682) b_and!118635))))

(declare-fun b!1668699 () Bool)

(declare-fun e!1069329 () Bool)

(declare-fun e!1069327 () Bool)

(declare-fun tp!481702 () Bool)

(assert (=> b!1668699 (= e!1069327 (and (inv!23734 (h!23786 (t!152454 tokens!457))) e!1069329 tp!481702))))

(assert (=> b!1668478 (= tp!481638 e!1069327)))

(declare-fun e!1069330 () Bool)

(assert (=> b!1668702 (= e!1069330 (and tp!481701 tp!481698))))

(declare-fun b!1668700 () Bool)

(declare-fun tp!481699 () Bool)

(declare-fun e!1069331 () Bool)

(assert (=> b!1668700 (= e!1069329 (and (inv!21 (value!101957 (h!23786 (t!152454 tokens!457)))) e!1069331 tp!481699))))

(declare-fun tp!481700 () Bool)

(declare-fun b!1668701 () Bool)

(assert (=> b!1668701 (= e!1069331 (and tp!481700 (inv!23730 (tag!3522 (rule!5126 (h!23786 (t!152454 tokens!457))))) (inv!23733 (transformation!3238 (rule!5126 (h!23786 (t!152454 tokens!457))))) e!1069330))))

(assert (= b!1668701 b!1668702))

(assert (= b!1668700 b!1668701))

(assert (= b!1668699 b!1668700))

(assert (= (and b!1668478 (is-Cons!18385 (t!152454 tokens!457))) b!1668699))

(declare-fun m!2033187 () Bool)

(assert (=> b!1668699 m!2033187))

(declare-fun m!2033189 () Bool)

(assert (=> b!1668700 m!2033189))

(declare-fun m!2033191 () Bool)

(assert (=> b!1668701 m!2033191))

(declare-fun m!2033193 () Bool)

(assert (=> b!1668701 m!2033193))

(declare-fun b!1668715 () Bool)

(declare-fun e!1069338 () Bool)

(declare-fun tp!481705 () Bool)

(assert (=> b!1668715 (= e!1069338 (and tp_is_empty!7407 tp!481705))))

(assert (=> b!1668483 (= tp!481632 e!1069338)))

(assert (= (and b!1668483 (is-Cons!18384 (originalCharacters!4052 (h!23786 tokens!457)))) b!1668715))

(declare-fun b!1668719 () Bool)

(declare-fun e!1069339 () Bool)

(declare-fun tp!481706 () Bool)

(declare-fun tp!481710 () Bool)

(assert (=> b!1668719 (= e!1069339 (and tp!481706 tp!481710))))

(assert (=> b!1668472 (= tp!481634 e!1069339)))

(declare-fun b!1668717 () Bool)

(declare-fun tp!481709 () Bool)

(declare-fun tp!481708 () Bool)

(assert (=> b!1668717 (= e!1069339 (and tp!481709 tp!481708))))

(declare-fun b!1668718 () Bool)

(declare-fun tp!481707 () Bool)

(assert (=> b!1668718 (= e!1069339 tp!481707)))

(declare-fun b!1668716 () Bool)

(assert (=> b!1668716 (= e!1069339 tp_is_empty!7407)))

(assert (= (and b!1668472 (is-ElementMatch!4566 (regex!3238 (rule!5126 (h!23786 tokens!457))))) b!1668716))

(assert (= (and b!1668472 (is-Concat!7895 (regex!3238 (rule!5126 (h!23786 tokens!457))))) b!1668717))

(assert (= (and b!1668472 (is-Star!4566 (regex!3238 (rule!5126 (h!23786 tokens!457))))) b!1668718))

(assert (= (and b!1668472 (is-Union!4566 (regex!3238 (rule!5126 (h!23786 tokens!457))))) b!1668719))

(declare-fun b!1668734 () Bool)

(declare-fun b_free!45347 () Bool)

(declare-fun b_next!46051 () Bool)

(assert (=> b!1668734 (= b_free!45347 (not b_next!46051))))

(declare-fun tp!481720 () Bool)

(declare-fun b_and!118637 () Bool)

(assert (=> b!1668734 (= tp!481720 b_and!118637)))

(declare-fun b_free!45349 () Bool)

(declare-fun b_next!46053 () Bool)

(assert (=> b!1668734 (= b_free!45349 (not b_next!46053))))

(declare-fun t!152475 () Bool)

(declare-fun tb!95761 () Bool)

(assert (=> (and b!1668734 (= (toChars!4560 (transformation!3238 (h!23787 (t!152455 rules!1846)))) (toChars!4560 (transformation!3238 (rule!5126 (h!23786 tokens!457))))) t!152475) tb!95761))

(declare-fun result!115688 () Bool)

(assert (= result!115688 result!115666))

(assert (=> b!1668584 t!152475))

(assert (=> d!504560 t!152475))

(declare-fun b_and!118639 () Bool)

(declare-fun tp!481721 () Bool)

(assert (=> b!1668734 (= tp!481721 (and (=> t!152475 result!115688) b_and!118639))))

(declare-fun e!1069350 () Bool)

(assert (=> b!1668734 (= e!1069350 (and tp!481720 tp!481721))))

(declare-fun e!1069352 () Bool)

(declare-fun b!1668733 () Bool)

(declare-fun tp!481719 () Bool)

(assert (=> b!1668733 (= e!1069352 (and tp!481719 (inv!23730 (tag!3522 (h!23787 (t!152455 rules!1846)))) (inv!23733 (transformation!3238 (h!23787 (t!152455 rules!1846)))) e!1069350))))

(declare-fun b!1668732 () Bool)

(declare-fun e!1069353 () Bool)

(declare-fun tp!481722 () Bool)

(assert (=> b!1668732 (= e!1069353 (and e!1069352 tp!481722))))

(assert (=> b!1668471 (= tp!481631 e!1069353)))

(assert (= b!1668733 b!1668734))

(assert (= b!1668732 b!1668733))

(assert (= (and b!1668471 (is-Cons!18386 (t!152455 rules!1846))) b!1668732))

(declare-fun m!2033209 () Bool)

(assert (=> b!1668733 m!2033209))

(declare-fun m!2033211 () Bool)

(assert (=> b!1668733 m!2033211))

(declare-fun b_lambda!52403 () Bool)

(assert (= b_lambda!52399 (or (and b!1668481 b_free!45329) (and b!1668476 b_free!45333 (= (toChars!4560 (transformation!3238 (h!23787 rules!1846))) (toChars!4560 (transformation!3238 (rule!5126 (h!23786 tokens!457)))))) (and b!1668702 b_free!45345 (= (toChars!4560 (transformation!3238 (rule!5126 (h!23786 (t!152454 tokens!457))))) (toChars!4560 (transformation!3238 (rule!5126 (h!23786 tokens!457)))))) (and b!1668734 b_free!45349 (= (toChars!4560 (transformation!3238 (h!23787 (t!152455 rules!1846)))) (toChars!4560 (transformation!3238 (rule!5126 (h!23786 tokens!457)))))) b_lambda!52403)))

(declare-fun b_lambda!52405 () Bool)

(assert (= b_lambda!52397 (or (and b!1668481 b_free!45329) (and b!1668476 b_free!45333 (= (toChars!4560 (transformation!3238 (h!23787 rules!1846))) (toChars!4560 (transformation!3238 (rule!5126 (h!23786 tokens!457)))))) (and b!1668702 b_free!45345 (= (toChars!4560 (transformation!3238 (rule!5126 (h!23786 (t!152454 tokens!457))))) (toChars!4560 (transformation!3238 (rule!5126 (h!23786 tokens!457)))))) (and b!1668734 b_free!45349 (= (toChars!4560 (transformation!3238 (h!23787 (t!152455 rules!1846)))) (toChars!4560 (transformation!3238 (rule!5126 (h!23786 tokens!457)))))) b_lambda!52405)))

(push 1)

(assert (not d!504540))

(assert (not b_lambda!52405))

(assert (not d!504514))

(assert b_and!118609)

(assert (not b!1668590))

(assert (not b!1668575))

(assert (not b!1668549))

(assert (not b!1668604))

(assert (not b_next!46049))

(assert (not b!1668685))

(assert (not b!1668539))

(assert (not b!1668579))

(assert (not b!1668601))

(assert (not b!1668574))

(assert (not b!1668540))

(assert (not b!1668564))

(assert (not b!1668719))

(assert (not b_next!46051))

(assert (not b!1668619))

(assert (not d!504542))

(assert (not b!1668585))

(assert (not b!1668687))

(assert (not b!1668584))

(assert (not b_next!46033))

(assert (not d!504536))

(assert (not b!1668699))

(assert b_and!118633)

(assert (not b_lambda!52403))

(assert (not b_next!46053))

(assert (not d!504552))

(assert (not d!504566))

(assert tp_is_empty!7407)

(assert b_and!118635)

(assert (not d!504572))

(assert (not b!1668603))

(assert (not tb!95751))

(assert (not b!1668733))

(assert (not b!1668646))

(assert (not d!504564))

(assert (not b!1668686))

(assert (not d!504560))

(assert (not d!504554))

(assert (not b!1668618))

(assert (not d!504548))

(assert (not b!1668556))

(assert (not b_next!46047))

(assert b_and!118639)

(assert (not b!1668715))

(assert (not b!1668647))

(assert b_and!118637)

(assert b_and!118627)

(assert (not b!1668700))

(assert (not b!1668617))

(assert b_and!118625)

(assert (not d!504550))

(assert (not b!1668576))

(assert (not d!504528))

(assert (not d!504562))

(assert (not d!504558))

(assert (not b!1668668))

(assert (not d!504556))

(assert (not b!1668732))

(assert b_and!118605)

(assert (not b_next!46031))

(assert (not b!1668718))

(assert (not b!1668669))

(assert (not b!1668620))

(assert (not b!1668606))

(assert (not b!1668701))

(assert (not b_next!46037))

(assert (not b!1668562))

(assert (not b_next!46035))

(assert (not b!1668717))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!46051))

(assert b_and!118609)

(assert (not b_next!46033))

(assert b_and!118635)

(assert b_and!118625)

(assert (not b_next!46037))

(assert (not b_next!46049))

(assert (not b_next!46035))

(assert b_and!118633)

(assert (not b_next!46053))

(assert (not b_next!46047))

(assert b_and!118639)

(assert b_and!118637)

(assert b_and!118627)

(assert b_and!118605)

(assert (not b_next!46031))

(check-sat)

(pop 1)

