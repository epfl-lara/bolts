; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111938 () Bool)

(assert start!111938)

(declare-fun b!1282982 () Bool)

(declare-fun b_free!29967 () Bool)

(declare-fun b_next!30671 () Bool)

(assert (=> b!1282982 (= b_free!29967 (not b_next!30671))))

(declare-fun tp!372773 () Bool)

(declare-fun b_and!85111 () Bool)

(assert (=> b!1282982 (= tp!372773 b_and!85111)))

(declare-fun b_free!29969 () Bool)

(declare-fun b_next!30673 () Bool)

(assert (=> b!1282982 (= b_free!29969 (not b_next!30673))))

(declare-fun tp!372771 () Bool)

(declare-fun b_and!85113 () Bool)

(assert (=> b!1282982 (= tp!372771 b_and!85113)))

(declare-fun e!822608 () Bool)

(assert (=> b!1282982 (= e!822608 (and tp!372773 tp!372771))))

(declare-fun res!575562 () Bool)

(declare-fun e!822612 () Bool)

(assert (=> start!111938 (=> (not res!575562) (not e!822612))))

(declare-datatypes ((LexerInterface!1882 0))(
  ( (LexerInterfaceExt!1879 (__x!8371 Int)) (Lexer!1880) )
))
(declare-fun thiss!10944 () LexerInterface!1882)

(get-info :version)

(assert (=> start!111938 (= res!575562 ((_ is Lexer!1880) thiss!10944))))

(assert (=> start!111938 e!822612))

(assert (=> start!111938 true))

(declare-fun e!822611 () Bool)

(assert (=> start!111938 e!822611))

(declare-datatypes ((List!12796 0))(
  ( (Nil!12730) (Cons!12730 (h!18131 (_ BitVec 16)) (t!116628 List!12796)) )
))
(declare-datatypes ((TokenValue!2277 0))(
  ( (FloatLiteralValue!4554 (text!16384 List!12796)) (TokenValueExt!2276 (__x!8372 Int)) (Broken!11385 (value!71936 List!12796)) (Object!2342) (End!2277) (Def!2277) (Underscore!2277) (Match!2277) (Else!2277) (Error!2277) (Case!2277) (If!2277) (Extends!2277) (Abstract!2277) (Class!2277) (Val!2277) (DelimiterValue!4554 (del!2337 List!12796)) (KeywordValue!2283 (value!71937 List!12796)) (CommentValue!4554 (value!71938 List!12796)) (WhitespaceValue!4554 (value!71939 List!12796)) (IndentationValue!2277 (value!71940 List!12796)) (String!15620) (Int32!2277) (Broken!11386 (value!71941 List!12796)) (Boolean!2278) (Unit!18971) (OperatorValue!2280 (op!2337 List!12796)) (IdentifierValue!4554 (value!71942 List!12796)) (IdentifierValue!4555 (value!71943 List!12796)) (WhitespaceValue!4555 (value!71944 List!12796)) (True!4554) (False!4554) (Broken!11387 (value!71945 List!12796)) (Broken!11388 (value!71946 List!12796)) (True!4555) (RightBrace!2277) (RightBracket!2277) (Colon!2277) (Null!2277) (Comma!2277) (LeftBracket!2277) (False!4555) (LeftBrace!2277) (ImaginaryLiteralValue!2277 (text!16385 List!12796)) (StringLiteralValue!6831 (value!71947 List!12796)) (EOFValue!2277 (value!71948 List!12796)) (IdentValue!2277 (value!71949 List!12796)) (DelimiterValue!4555 (value!71950 List!12796)) (DedentValue!2277 (value!71951 List!12796)) (NewLineValue!2277 (value!71952 List!12796)) (IntegerValue!6831 (value!71953 (_ BitVec 32)) (text!16386 List!12796)) (IntegerValue!6832 (value!71954 Int) (text!16387 List!12796)) (Times!2277) (Or!2277) (Equal!2277) (Minus!2277) (Broken!11389 (value!71955 List!12796)) (And!2277) (Div!2277) (LessEqual!2277) (Mod!2277) (Concat!5778) (Not!2277) (Plus!2277) (SpaceValue!2277 (value!71956 List!12796)) (IntegerValue!6833 (value!71957 Int) (text!16388 List!12796)) (StringLiteralValue!6832 (text!16389 List!12796)) (FloatLiteralValue!4555 (text!16390 List!12796)) (BytesLiteralValue!2277 (value!71958 List!12796)) (CommentValue!4555 (value!71959 List!12796)) (StringLiteralValue!6833 (value!71960 List!12796)) (ErrorTokenValue!2277 (msg!2338 List!12796)) )
))
(declare-datatypes ((C!7292 0))(
  ( (C!7293 (val!4206 Int)) )
))
(declare-datatypes ((List!12797 0))(
  ( (Nil!12731) (Cons!12731 (h!18132 C!7292) (t!116629 List!12797)) )
))
(declare-datatypes ((IArray!8373 0))(
  ( (IArray!8374 (innerList!4244 List!12797)) )
))
(declare-datatypes ((Conc!4184 0))(
  ( (Node!4184 (left!10983 Conc!4184) (right!11313 Conc!4184) (csize!8598 Int) (cheight!4395 Int)) (Leaf!6474 (xs!6895 IArray!8373) (csize!8599 Int)) (Empty!4184) )
))
(declare-datatypes ((BalanceConc!8308 0))(
  ( (BalanceConc!8309 (c!211433 Conc!4184)) )
))
(declare-datatypes ((Regex!3501 0))(
  ( (ElementMatch!3501 (c!211434 C!7292)) (Concat!5779 (regOne!7514 Regex!3501) (regTwo!7514 Regex!3501)) (EmptyExpr!3501) (Star!3501 (reg!3830 Regex!3501)) (EmptyLang!3501) (Union!3501 (regOne!7515 Regex!3501) (regTwo!7515 Regex!3501)) )
))
(declare-datatypes ((String!15621 0))(
  ( (String!15622 (value!71961 String)) )
))
(declare-datatypes ((TokenValueInjection!4214 0))(
  ( (TokenValueInjection!4215 (toValue!3356 Int) (toChars!3215 Int)) )
))
(declare-datatypes ((Rule!4174 0))(
  ( (Rule!4175 (regex!2187 Regex!3501) (tag!2449 String!15621) (isSeparator!2187 Bool) (transformation!2187 TokenValueInjection!4214)) )
))
(declare-datatypes ((Token!4036 0))(
  ( (Token!4037 (value!71962 TokenValue!2277) (rule!3926 Rule!4174) (size!10373 Int) (originalCharacters!3049 List!12797)) )
))
(declare-datatypes ((List!12798 0))(
  ( (Nil!12732) (Cons!12732 (h!18133 Token!4036) (t!116630 List!12798)) )
))
(declare-datatypes ((IArray!8375 0))(
  ( (IArray!8376 (innerList!4245 List!12798)) )
))
(declare-datatypes ((Conc!4185 0))(
  ( (Node!4185 (left!10984 Conc!4185) (right!11314 Conc!4185) (csize!8600 Int) (cheight!4396 Int)) (Leaf!6475 (xs!6896 IArray!8375) (csize!8601 Int)) (Empty!4185) )
))
(declare-datatypes ((BalanceConc!8310 0))(
  ( (BalanceConc!8311 (c!211435 Conc!4185)) )
))
(declare-fun ts!110 () BalanceConc!8310)

(declare-fun e!822613 () Bool)

(declare-fun inv!17116 (BalanceConc!8310) Bool)

(assert (=> start!111938 (and (inv!17116 ts!110) e!822613)))

(declare-fun b!1282983 () Bool)

(declare-fun size!10374 (BalanceConc!8310) Int)

(assert (=> b!1282983 (= e!822612 (< (size!10374 ts!110) 0))))

(declare-fun b!1282984 () Bool)

(declare-fun tp!372772 () Bool)

(declare-fun inv!17117 (Conc!4185) Bool)

(assert (=> b!1282984 (= e!822613 (and (inv!17117 (c!211435 ts!110)) tp!372772))))

(declare-datatypes ((List!12799 0))(
  ( (Nil!12733) (Cons!12733 (h!18134 Rule!4174) (t!116631 List!12799)) )
))
(declare-fun rs!174 () List!12799)

(declare-fun b!1282985 () Bool)

(declare-fun tp!372775 () Bool)

(declare-fun e!822610 () Bool)

(declare-fun inv!17112 (String!15621) Bool)

(declare-fun inv!17118 (TokenValueInjection!4214) Bool)

(assert (=> b!1282985 (= e!822610 (and tp!372775 (inv!17112 (tag!2449 (h!18134 rs!174))) (inv!17118 (transformation!2187 (h!18134 rs!174))) e!822608))))

(declare-fun b!1282986 () Bool)

(declare-fun tp!372774 () Bool)

(assert (=> b!1282986 (= e!822611 (and e!822610 tp!372774))))

(declare-fun b!1282987 () Bool)

(declare-fun res!575560 () Bool)

(assert (=> b!1282987 (=> (not res!575560) (not e!822612))))

(declare-fun isEmpty!7552 (List!12799) Bool)

(assert (=> b!1282987 (= res!575560 (not (isEmpty!7552 rs!174)))))

(declare-fun b!1282988 () Bool)

(declare-fun res!575561 () Bool)

(assert (=> b!1282988 (=> (not res!575561) (not e!822612))))

(declare-fun rulesInvariant!1753 (LexerInterface!1882 List!12799) Bool)

(assert (=> b!1282988 (= res!575561 (rulesInvariant!1753 thiss!10944 rs!174))))

(assert (= (and start!111938 res!575562) b!1282987))

(assert (= (and b!1282987 res!575560) b!1282988))

(assert (= (and b!1282988 res!575561) b!1282983))

(assert (= b!1282985 b!1282982))

(assert (= b!1282986 b!1282985))

(assert (= (and start!111938 ((_ is Cons!12733) rs!174)) b!1282986))

(assert (= start!111938 b!1282984))

(declare-fun m!1433487 () Bool)

(assert (=> start!111938 m!1433487))

(declare-fun m!1433489 () Bool)

(assert (=> b!1282988 m!1433489))

(declare-fun m!1433491 () Bool)

(assert (=> b!1282984 m!1433491))

(declare-fun m!1433493 () Bool)

(assert (=> b!1282983 m!1433493))

(declare-fun m!1433495 () Bool)

(assert (=> b!1282987 m!1433495))

(declare-fun m!1433497 () Bool)

(assert (=> b!1282985 m!1433497))

(declare-fun m!1433499 () Bool)

(assert (=> b!1282985 m!1433499))

(check-sat b_and!85111 (not b_next!30671) (not b!1282983) (not b!1282984) b_and!85113 (not b!1282985) (not b!1282987) (not b!1282986) (not b_next!30673) (not start!111938) (not b!1282988))
(check-sat b_and!85111 b_and!85113 (not b_next!30671) (not b_next!30673))
(get-model)

(declare-fun d!361370 () Bool)

(declare-fun res!575565 () Bool)

(declare-fun e!822616 () Bool)

(assert (=> d!361370 (=> (not res!575565) (not e!822616))))

(declare-fun rulesValid!793 (LexerInterface!1882 List!12799) Bool)

(assert (=> d!361370 (= res!575565 (rulesValid!793 thiss!10944 rs!174))))

(assert (=> d!361370 (= (rulesInvariant!1753 thiss!10944 rs!174) e!822616)))

(declare-fun b!1282991 () Bool)

(declare-datatypes ((List!12800 0))(
  ( (Nil!12734) (Cons!12734 (h!18135 String!15621) (t!116632 List!12800)) )
))
(declare-fun noDuplicateTag!793 (LexerInterface!1882 List!12799 List!12800) Bool)

(assert (=> b!1282991 (= e!822616 (noDuplicateTag!793 thiss!10944 rs!174 Nil!12734))))

(assert (= (and d!361370 res!575565) b!1282991))

(declare-fun m!1433501 () Bool)

(assert (=> d!361370 m!1433501))

(declare-fun m!1433503 () Bool)

(assert (=> b!1282991 m!1433503))

(assert (=> b!1282988 d!361370))

(declare-fun d!361372 () Bool)

(declare-fun lt!423293 () Int)

(declare-fun size!10375 (List!12798) Int)

(declare-fun list!4728 (BalanceConc!8310) List!12798)

(assert (=> d!361372 (= lt!423293 (size!10375 (list!4728 ts!110)))))

(declare-fun size!10376 (Conc!4185) Int)

(assert (=> d!361372 (= lt!423293 (size!10376 (c!211435 ts!110)))))

(assert (=> d!361372 (= (size!10374 ts!110) lt!423293)))

(declare-fun bs!327613 () Bool)

(assert (= bs!327613 d!361372))

(declare-fun m!1433505 () Bool)

(assert (=> bs!327613 m!1433505))

(assert (=> bs!327613 m!1433505))

(declare-fun m!1433507 () Bool)

(assert (=> bs!327613 m!1433507))

(declare-fun m!1433509 () Bool)

(assert (=> bs!327613 m!1433509))

(assert (=> b!1282983 d!361372))

(declare-fun d!361376 () Bool)

(declare-fun c!211438 () Bool)

(assert (=> d!361376 (= c!211438 ((_ is Node!4185) (c!211435 ts!110)))))

(declare-fun e!822623 () Bool)

(assert (=> d!361376 (= (inv!17117 (c!211435 ts!110)) e!822623)))

(declare-fun b!1283000 () Bool)

(declare-fun inv!17119 (Conc!4185) Bool)

(assert (=> b!1283000 (= e!822623 (inv!17119 (c!211435 ts!110)))))

(declare-fun b!1283001 () Bool)

(declare-fun e!822624 () Bool)

(assert (=> b!1283001 (= e!822623 e!822624)))

(declare-fun res!575570 () Bool)

(assert (=> b!1283001 (= res!575570 (not ((_ is Leaf!6475) (c!211435 ts!110))))))

(assert (=> b!1283001 (=> res!575570 e!822624)))

(declare-fun b!1283002 () Bool)

(declare-fun inv!17120 (Conc!4185) Bool)

(assert (=> b!1283002 (= e!822624 (inv!17120 (c!211435 ts!110)))))

(assert (= (and d!361376 c!211438) b!1283000))

(assert (= (and d!361376 (not c!211438)) b!1283001))

(assert (= (and b!1283001 (not res!575570)) b!1283002))

(declare-fun m!1433511 () Bool)

(assert (=> b!1283000 m!1433511))

(declare-fun m!1433513 () Bool)

(assert (=> b!1283002 m!1433513))

(assert (=> b!1282984 d!361376))

(declare-fun d!361380 () Bool)

(declare-fun isBalanced!1220 (Conc!4185) Bool)

(assert (=> d!361380 (= (inv!17116 ts!110) (isBalanced!1220 (c!211435 ts!110)))))

(declare-fun bs!327614 () Bool)

(assert (= bs!327614 d!361380))

(declare-fun m!1433519 () Bool)

(assert (=> bs!327614 m!1433519))

(assert (=> start!111938 d!361380))

(declare-fun d!361384 () Bool)

(assert (=> d!361384 (= (inv!17112 (tag!2449 (h!18134 rs!174))) (= (mod (str.len (value!71961 (tag!2449 (h!18134 rs!174)))) 2) 0))))

(assert (=> b!1282985 d!361384))

(declare-fun d!361386 () Bool)

(declare-fun res!575576 () Bool)

(declare-fun e!822632 () Bool)

(assert (=> d!361386 (=> (not res!575576) (not e!822632))))

(declare-fun semiInverseModEq!822 (Int Int) Bool)

(assert (=> d!361386 (= res!575576 (semiInverseModEq!822 (toChars!3215 (transformation!2187 (h!18134 rs!174))) (toValue!3356 (transformation!2187 (h!18134 rs!174)))))))

(assert (=> d!361386 (= (inv!17118 (transformation!2187 (h!18134 rs!174))) e!822632)))

(declare-fun b!1283012 () Bool)

(declare-fun equivClasses!781 (Int Int) Bool)

(assert (=> b!1283012 (= e!822632 (equivClasses!781 (toChars!3215 (transformation!2187 (h!18134 rs!174))) (toValue!3356 (transformation!2187 (h!18134 rs!174)))))))

(assert (= (and d!361386 res!575576) b!1283012))

(declare-fun m!1433521 () Bool)

(assert (=> d!361386 m!1433521))

(declare-fun m!1433523 () Bool)

(assert (=> b!1283012 m!1433523))

(assert (=> b!1282985 d!361386))

(declare-fun d!361388 () Bool)

(assert (=> d!361388 (= (isEmpty!7552 rs!174) ((_ is Nil!12733) rs!174))))

(assert (=> b!1282987 d!361388))

(declare-fun tp!372783 () Bool)

(declare-fun b!1283024 () Bool)

(declare-fun e!822640 () Bool)

(declare-fun tp!372784 () Bool)

(assert (=> b!1283024 (= e!822640 (and (inv!17117 (left!10984 (c!211435 ts!110))) tp!372783 (inv!17117 (right!11314 (c!211435 ts!110))) tp!372784))))

(declare-fun b!1283026 () Bool)

(declare-fun e!822639 () Bool)

(declare-fun tp!372782 () Bool)

(assert (=> b!1283026 (= e!822639 tp!372782)))

(declare-fun b!1283025 () Bool)

(declare-fun inv!17121 (IArray!8375) Bool)

(assert (=> b!1283025 (= e!822640 (and (inv!17121 (xs!6896 (c!211435 ts!110))) e!822639))))

(assert (=> b!1282984 (= tp!372772 (and (inv!17117 (c!211435 ts!110)) e!822640))))

(assert (= (and b!1282984 ((_ is Node!4185) (c!211435 ts!110))) b!1283024))

(assert (= b!1283025 b!1283026))

(assert (= (and b!1282984 ((_ is Leaf!6475) (c!211435 ts!110))) b!1283025))

(declare-fun m!1433529 () Bool)

(assert (=> b!1283024 m!1433529))

(declare-fun m!1433531 () Bool)

(assert (=> b!1283024 m!1433531))

(declare-fun m!1433533 () Bool)

(assert (=> b!1283025 m!1433533))

(assert (=> b!1282984 m!1433491))

(declare-fun e!822643 () Bool)

(assert (=> b!1282985 (= tp!372775 e!822643)))

(declare-fun b!1283037 () Bool)

(declare-fun tp_is_empty!6527 () Bool)

(assert (=> b!1283037 (= e!822643 tp_is_empty!6527)))

(declare-fun b!1283040 () Bool)

(declare-fun tp!372799 () Bool)

(declare-fun tp!372797 () Bool)

(assert (=> b!1283040 (= e!822643 (and tp!372799 tp!372797))))

(declare-fun b!1283039 () Bool)

(declare-fun tp!372796 () Bool)

(assert (=> b!1283039 (= e!822643 tp!372796)))

(declare-fun b!1283038 () Bool)

(declare-fun tp!372798 () Bool)

(declare-fun tp!372795 () Bool)

(assert (=> b!1283038 (= e!822643 (and tp!372798 tp!372795))))

(assert (= (and b!1282985 ((_ is ElementMatch!3501) (regex!2187 (h!18134 rs!174)))) b!1283037))

(assert (= (and b!1282985 ((_ is Concat!5779) (regex!2187 (h!18134 rs!174)))) b!1283038))

(assert (= (and b!1282985 ((_ is Star!3501) (regex!2187 (h!18134 rs!174)))) b!1283039))

(assert (= (and b!1282985 ((_ is Union!3501) (regex!2187 (h!18134 rs!174)))) b!1283040))

(declare-fun b!1283051 () Bool)

(declare-fun b_free!29971 () Bool)

(declare-fun b_next!30675 () Bool)

(assert (=> b!1283051 (= b_free!29971 (not b_next!30675))))

(declare-fun tp!372811 () Bool)

(declare-fun b_and!85115 () Bool)

(assert (=> b!1283051 (= tp!372811 b_and!85115)))

(declare-fun b_free!29973 () Bool)

(declare-fun b_next!30677 () Bool)

(assert (=> b!1283051 (= b_free!29973 (not b_next!30677))))

(declare-fun tp!372810 () Bool)

(declare-fun b_and!85117 () Bool)

(assert (=> b!1283051 (= tp!372810 b_and!85117)))

(declare-fun e!822653 () Bool)

(assert (=> b!1283051 (= e!822653 (and tp!372811 tp!372810))))

(declare-fun e!822654 () Bool)

(declare-fun b!1283050 () Bool)

(declare-fun tp!372809 () Bool)

(assert (=> b!1283050 (= e!822654 (and tp!372809 (inv!17112 (tag!2449 (h!18134 (t!116631 rs!174)))) (inv!17118 (transformation!2187 (h!18134 (t!116631 rs!174)))) e!822653))))

(declare-fun b!1283049 () Bool)

(declare-fun e!822652 () Bool)

(declare-fun tp!372808 () Bool)

(assert (=> b!1283049 (= e!822652 (and e!822654 tp!372808))))

(assert (=> b!1282986 (= tp!372774 e!822652)))

(assert (= b!1283050 b!1283051))

(assert (= b!1283049 b!1283050))

(assert (= (and b!1282986 ((_ is Cons!12733) (t!116631 rs!174))) b!1283049))

(declare-fun m!1433543 () Bool)

(assert (=> b!1283050 m!1433543))

(declare-fun m!1433545 () Bool)

(assert (=> b!1283050 m!1433545))

(check-sat tp_is_empty!6527 (not b!1283012) (not b!1283038) (not b!1283049) (not b!1283024) (not d!361370) (not b!1283050) b_and!85111 (not b_next!30671) (not b_next!30675) (not b!1283039) b_and!85115 (not b!1282984) b_and!85113 (not b!1283040) b_and!85117 (not b_next!30673) (not b!1282991) (not b_next!30677) (not d!361372) (not b!1283025) (not d!361386) (not b!1283000) (not b!1283002) (not d!361380) (not b!1283026))
(check-sat b_and!85111 (not b_next!30671) (not b_next!30675) b_and!85115 b_and!85113 (not b_next!30677) b_and!85117 (not b_next!30673))
(get-model)

(declare-fun d!361398 () Bool)

(assert (=> d!361398 (= (inv!17112 (tag!2449 (h!18134 (t!116631 rs!174)))) (= (mod (str.len (value!71961 (tag!2449 (h!18134 (t!116631 rs!174))))) 2) 0))))

(assert (=> b!1283050 d!361398))

(declare-fun d!361400 () Bool)

(declare-fun res!575583 () Bool)

(declare-fun e!822680 () Bool)

(assert (=> d!361400 (=> (not res!575583) (not e!822680))))

(assert (=> d!361400 (= res!575583 (semiInverseModEq!822 (toChars!3215 (transformation!2187 (h!18134 (t!116631 rs!174)))) (toValue!3356 (transformation!2187 (h!18134 (t!116631 rs!174))))))))

(assert (=> d!361400 (= (inv!17118 (transformation!2187 (h!18134 (t!116631 rs!174)))) e!822680)))

(declare-fun b!1283091 () Bool)

(assert (=> b!1283091 (= e!822680 (equivClasses!781 (toChars!3215 (transformation!2187 (h!18134 (t!116631 rs!174)))) (toValue!3356 (transformation!2187 (h!18134 (t!116631 rs!174))))))))

(assert (= (and d!361400 res!575583) b!1283091))

(declare-fun m!1433561 () Bool)

(assert (=> d!361400 m!1433561))

(declare-fun m!1433563 () Bool)

(assert (=> b!1283091 m!1433563))

(assert (=> b!1283050 d!361400))

(declare-fun d!361402 () Bool)

(assert (=> d!361402 true))

(declare-fun order!7729 () Int)

(declare-fun lambda!50283 () Int)

(declare-fun order!7727 () Int)

(declare-fun dynLambda!5540 (Int Int) Int)

(declare-fun dynLambda!5541 (Int Int) Int)

(assert (=> d!361402 (< (dynLambda!5540 order!7727 (toChars!3215 (transformation!2187 (h!18134 rs!174)))) (dynLambda!5541 order!7729 lambda!50283))))

(assert (=> d!361402 true))

(declare-fun order!7731 () Int)

(declare-fun dynLambda!5542 (Int Int) Int)

(assert (=> d!361402 (< (dynLambda!5542 order!7731 (toValue!3356 (transformation!2187 (h!18134 rs!174)))) (dynLambda!5541 order!7729 lambda!50283))))

(declare-fun Forall!490 (Int) Bool)

(assert (=> d!361402 (= (semiInverseModEq!822 (toChars!3215 (transformation!2187 (h!18134 rs!174))) (toValue!3356 (transformation!2187 (h!18134 rs!174)))) (Forall!490 lambda!50283))))

(declare-fun bs!327620 () Bool)

(assert (= bs!327620 d!361402))

(declare-fun m!1433611 () Bool)

(assert (=> bs!327620 m!1433611))

(assert (=> d!361386 d!361402))

(assert (=> b!1282984 d!361376))

(declare-fun d!361430 () Bool)

(declare-fun res!575634 () Bool)

(declare-fun e!822709 () Bool)

(assert (=> d!361430 (=> (not res!575634) (not e!822709))))

(assert (=> d!361430 (= res!575634 (= (csize!8600 (c!211435 ts!110)) (+ (size!10376 (left!10984 (c!211435 ts!110))) (size!10376 (right!11314 (c!211435 ts!110))))))))

(assert (=> d!361430 (= (inv!17119 (c!211435 ts!110)) e!822709)))

(declare-fun b!1283154 () Bool)

(declare-fun res!575635 () Bool)

(assert (=> b!1283154 (=> (not res!575635) (not e!822709))))

(assert (=> b!1283154 (= res!575635 (and (not (= (left!10984 (c!211435 ts!110)) Empty!4185)) (not (= (right!11314 (c!211435 ts!110)) Empty!4185))))))

(declare-fun b!1283155 () Bool)

(declare-fun res!575636 () Bool)

(assert (=> b!1283155 (=> (not res!575636) (not e!822709))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!591 (Conc!4185) Int)

(assert (=> b!1283155 (= res!575636 (= (cheight!4396 (c!211435 ts!110)) (+ (max!0 (height!591 (left!10984 (c!211435 ts!110))) (height!591 (right!11314 (c!211435 ts!110)))) 1)))))

(declare-fun b!1283156 () Bool)

(assert (=> b!1283156 (= e!822709 (<= 0 (cheight!4396 (c!211435 ts!110))))))

(assert (= (and d!361430 res!575634) b!1283154))

(assert (= (and b!1283154 res!575635) b!1283155))

(assert (= (and b!1283155 res!575636) b!1283156))

(declare-fun m!1433613 () Bool)

(assert (=> d!361430 m!1433613))

(declare-fun m!1433615 () Bool)

(assert (=> d!361430 m!1433615))

(declare-fun m!1433617 () Bool)

(assert (=> b!1283155 m!1433617))

(declare-fun m!1433619 () Bool)

(assert (=> b!1283155 m!1433619))

(assert (=> b!1283155 m!1433617))

(assert (=> b!1283155 m!1433619))

(declare-fun m!1433621 () Bool)

(assert (=> b!1283155 m!1433621))

(assert (=> b!1283000 d!361430))

(declare-fun d!361432 () Bool)

(assert (=> d!361432 true))

(declare-fun order!7733 () Int)

(declare-fun lambda!50286 () Int)

(declare-fun dynLambda!5543 (Int Int) Int)

(assert (=> d!361432 (< (dynLambda!5542 order!7731 (toValue!3356 (transformation!2187 (h!18134 rs!174)))) (dynLambda!5543 order!7733 lambda!50286))))

(declare-fun Forall2!392 (Int) Bool)

(assert (=> d!361432 (= (equivClasses!781 (toChars!3215 (transformation!2187 (h!18134 rs!174))) (toValue!3356 (transformation!2187 (h!18134 rs!174)))) (Forall2!392 lambda!50286))))

(declare-fun bs!327621 () Bool)

(assert (= bs!327621 d!361432))

(declare-fun m!1433623 () Bool)

(assert (=> bs!327621 m!1433623))

(assert (=> b!1283012 d!361432))

(declare-fun b!1283173 () Bool)

(declare-fun res!575656 () Bool)

(declare-fun e!822717 () Bool)

(assert (=> b!1283173 (=> (not res!575656) (not e!822717))))

(assert (=> b!1283173 (= res!575656 (<= (- (height!591 (left!10984 (c!211435 ts!110))) (height!591 (right!11314 (c!211435 ts!110)))) 1))))

(declare-fun b!1283174 () Bool)

(declare-fun res!575652 () Bool)

(assert (=> b!1283174 (=> (not res!575652) (not e!822717))))

(assert (=> b!1283174 (= res!575652 (isBalanced!1220 (left!10984 (c!211435 ts!110))))))

(declare-fun b!1283175 () Bool)

(declare-fun e!822716 () Bool)

(assert (=> b!1283175 (= e!822716 e!822717)))

(declare-fun res!575654 () Bool)

(assert (=> b!1283175 (=> (not res!575654) (not e!822717))))

(assert (=> b!1283175 (= res!575654 (<= (- 1) (- (height!591 (left!10984 (c!211435 ts!110))) (height!591 (right!11314 (c!211435 ts!110))))))))

(declare-fun d!361434 () Bool)

(declare-fun res!575653 () Bool)

(assert (=> d!361434 (=> res!575653 e!822716)))

(assert (=> d!361434 (= res!575653 (not ((_ is Node!4185) (c!211435 ts!110))))))

(assert (=> d!361434 (= (isBalanced!1220 (c!211435 ts!110)) e!822716)))

(declare-fun b!1283176 () Bool)

(declare-fun isEmpty!7553 (Conc!4185) Bool)

(assert (=> b!1283176 (= e!822717 (not (isEmpty!7553 (right!11314 (c!211435 ts!110)))))))

(declare-fun b!1283177 () Bool)

(declare-fun res!575655 () Bool)

(assert (=> b!1283177 (=> (not res!575655) (not e!822717))))

(assert (=> b!1283177 (= res!575655 (isBalanced!1220 (right!11314 (c!211435 ts!110))))))

(declare-fun b!1283178 () Bool)

(declare-fun res!575651 () Bool)

(assert (=> b!1283178 (=> (not res!575651) (not e!822717))))

(assert (=> b!1283178 (= res!575651 (not (isEmpty!7553 (left!10984 (c!211435 ts!110)))))))

(assert (= (and d!361434 (not res!575653)) b!1283175))

(assert (= (and b!1283175 res!575654) b!1283173))

(assert (= (and b!1283173 res!575656) b!1283174))

(assert (= (and b!1283174 res!575652) b!1283177))

(assert (= (and b!1283177 res!575655) b!1283178))

(assert (= (and b!1283178 res!575651) b!1283176))

(assert (=> b!1283173 m!1433617))

(assert (=> b!1283173 m!1433619))

(declare-fun m!1433625 () Bool)

(assert (=> b!1283177 m!1433625))

(declare-fun m!1433627 () Bool)

(assert (=> b!1283178 m!1433627))

(declare-fun m!1433629 () Bool)

(assert (=> b!1283174 m!1433629))

(assert (=> b!1283175 m!1433617))

(assert (=> b!1283175 m!1433619))

(declare-fun m!1433631 () Bool)

(assert (=> b!1283176 m!1433631))

(assert (=> d!361380 d!361434))

(declare-fun d!361436 () Bool)

(assert (=> d!361436 (= (inv!17121 (xs!6896 (c!211435 ts!110))) (<= (size!10375 (innerList!4245 (xs!6896 (c!211435 ts!110)))) 2147483647))))

(declare-fun bs!327622 () Bool)

(assert (= bs!327622 d!361436))

(declare-fun m!1433633 () Bool)

(assert (=> bs!327622 m!1433633))

(assert (=> b!1283025 d!361436))

(declare-fun d!361438 () Bool)

(declare-fun res!575661 () Bool)

(declare-fun e!822722 () Bool)

(assert (=> d!361438 (=> res!575661 e!822722)))

(assert (=> d!361438 (= res!575661 ((_ is Nil!12733) rs!174))))

(assert (=> d!361438 (= (noDuplicateTag!793 thiss!10944 rs!174 Nil!12734) e!822722)))

(declare-fun b!1283183 () Bool)

(declare-fun e!822723 () Bool)

(assert (=> b!1283183 (= e!822722 e!822723)))

(declare-fun res!575662 () Bool)

(assert (=> b!1283183 (=> (not res!575662) (not e!822723))))

(declare-fun contains!2132 (List!12800 String!15621) Bool)

(assert (=> b!1283183 (= res!575662 (not (contains!2132 Nil!12734 (tag!2449 (h!18134 rs!174)))))))

(declare-fun b!1283184 () Bool)

(assert (=> b!1283184 (= e!822723 (noDuplicateTag!793 thiss!10944 (t!116631 rs!174) (Cons!12734 (tag!2449 (h!18134 rs!174)) Nil!12734)))))

(assert (= (and d!361438 (not res!575661)) b!1283183))

(assert (= (and b!1283183 res!575662) b!1283184))

(declare-fun m!1433635 () Bool)

(assert (=> b!1283183 m!1433635))

(declare-fun m!1433637 () Bool)

(assert (=> b!1283184 m!1433637))

(assert (=> b!1282991 d!361438))

(declare-fun d!361440 () Bool)

(declare-fun lt!423307 () Int)

(assert (=> d!361440 (>= lt!423307 0)))

(declare-fun e!822726 () Int)

(assert (=> d!361440 (= lt!423307 e!822726)))

(declare-fun c!211449 () Bool)

(assert (=> d!361440 (= c!211449 ((_ is Nil!12732) (list!4728 ts!110)))))

(assert (=> d!361440 (= (size!10375 (list!4728 ts!110)) lt!423307)))

(declare-fun b!1283189 () Bool)

(assert (=> b!1283189 (= e!822726 0)))

(declare-fun b!1283190 () Bool)

(assert (=> b!1283190 (= e!822726 (+ 1 (size!10375 (t!116630 (list!4728 ts!110)))))))

(assert (= (and d!361440 c!211449) b!1283189))

(assert (= (and d!361440 (not c!211449)) b!1283190))

(declare-fun m!1433639 () Bool)

(assert (=> b!1283190 m!1433639))

(assert (=> d!361372 d!361440))

(declare-fun d!361442 () Bool)

(declare-fun list!4730 (Conc!4185) List!12798)

(assert (=> d!361442 (= (list!4728 ts!110) (list!4730 (c!211435 ts!110)))))

(declare-fun bs!327623 () Bool)

(assert (= bs!327623 d!361442))

(declare-fun m!1433641 () Bool)

(assert (=> bs!327623 m!1433641))

(assert (=> d!361372 d!361442))

(declare-fun d!361444 () Bool)

(declare-fun lt!423310 () Int)

(assert (=> d!361444 (= lt!423310 (size!10375 (list!4730 (c!211435 ts!110))))))

(assert (=> d!361444 (= lt!423310 (ite ((_ is Empty!4185) (c!211435 ts!110)) 0 (ite ((_ is Leaf!6475) (c!211435 ts!110)) (csize!8601 (c!211435 ts!110)) (csize!8600 (c!211435 ts!110)))))))

(assert (=> d!361444 (= (size!10376 (c!211435 ts!110)) lt!423310)))

(declare-fun bs!327624 () Bool)

(assert (= bs!327624 d!361444))

(assert (=> bs!327624 m!1433641))

(assert (=> bs!327624 m!1433641))

(declare-fun m!1433643 () Bool)

(assert (=> bs!327624 m!1433643))

(assert (=> d!361372 d!361444))

(declare-fun d!361446 () Bool)

(declare-fun res!575667 () Bool)

(declare-fun e!822729 () Bool)

(assert (=> d!361446 (=> (not res!575667) (not e!822729))))

(declare-fun list!4731 (IArray!8375) List!12798)

(assert (=> d!361446 (= res!575667 (<= (size!10375 (list!4731 (xs!6896 (c!211435 ts!110)))) 512))))

(assert (=> d!361446 (= (inv!17120 (c!211435 ts!110)) e!822729)))

(declare-fun b!1283195 () Bool)

(declare-fun res!575668 () Bool)

(assert (=> b!1283195 (=> (not res!575668) (not e!822729))))

(assert (=> b!1283195 (= res!575668 (= (csize!8601 (c!211435 ts!110)) (size!10375 (list!4731 (xs!6896 (c!211435 ts!110))))))))

(declare-fun b!1283196 () Bool)

(assert (=> b!1283196 (= e!822729 (and (> (csize!8601 (c!211435 ts!110)) 0) (<= (csize!8601 (c!211435 ts!110)) 512)))))

(assert (= (and d!361446 res!575667) b!1283195))

(assert (= (and b!1283195 res!575668) b!1283196))

(declare-fun m!1433645 () Bool)

(assert (=> d!361446 m!1433645))

(assert (=> d!361446 m!1433645))

(declare-fun m!1433647 () Bool)

(assert (=> d!361446 m!1433647))

(assert (=> b!1283195 m!1433645))

(assert (=> b!1283195 m!1433645))

(assert (=> b!1283195 m!1433647))

(assert (=> b!1283002 d!361446))

(declare-fun d!361448 () Bool)

(declare-fun c!211450 () Bool)

(assert (=> d!361448 (= c!211450 ((_ is Node!4185) (left!10984 (c!211435 ts!110))))))

(declare-fun e!822730 () Bool)

(assert (=> d!361448 (= (inv!17117 (left!10984 (c!211435 ts!110))) e!822730)))

(declare-fun b!1283197 () Bool)

(assert (=> b!1283197 (= e!822730 (inv!17119 (left!10984 (c!211435 ts!110))))))

(declare-fun b!1283198 () Bool)

(declare-fun e!822731 () Bool)

(assert (=> b!1283198 (= e!822730 e!822731)))

(declare-fun res!575669 () Bool)

(assert (=> b!1283198 (= res!575669 (not ((_ is Leaf!6475) (left!10984 (c!211435 ts!110)))))))

(assert (=> b!1283198 (=> res!575669 e!822731)))

(declare-fun b!1283199 () Bool)

(assert (=> b!1283199 (= e!822731 (inv!17120 (left!10984 (c!211435 ts!110))))))

(assert (= (and d!361448 c!211450) b!1283197))

(assert (= (and d!361448 (not c!211450)) b!1283198))

(assert (= (and b!1283198 (not res!575669)) b!1283199))

(declare-fun m!1433649 () Bool)

(assert (=> b!1283197 m!1433649))

(declare-fun m!1433651 () Bool)

(assert (=> b!1283199 m!1433651))

(assert (=> b!1283024 d!361448))

(declare-fun d!361450 () Bool)

(declare-fun c!211451 () Bool)

(assert (=> d!361450 (= c!211451 ((_ is Node!4185) (right!11314 (c!211435 ts!110))))))

(declare-fun e!822732 () Bool)

(assert (=> d!361450 (= (inv!17117 (right!11314 (c!211435 ts!110))) e!822732)))

(declare-fun b!1283200 () Bool)

(assert (=> b!1283200 (= e!822732 (inv!17119 (right!11314 (c!211435 ts!110))))))

(declare-fun b!1283201 () Bool)

(declare-fun e!822733 () Bool)

(assert (=> b!1283201 (= e!822732 e!822733)))

(declare-fun res!575670 () Bool)

(assert (=> b!1283201 (= res!575670 (not ((_ is Leaf!6475) (right!11314 (c!211435 ts!110)))))))

(assert (=> b!1283201 (=> res!575670 e!822733)))

(declare-fun b!1283202 () Bool)

(assert (=> b!1283202 (= e!822733 (inv!17120 (right!11314 (c!211435 ts!110))))))

(assert (= (and d!361450 c!211451) b!1283200))

(assert (= (and d!361450 (not c!211451)) b!1283201))

(assert (= (and b!1283201 (not res!575670)) b!1283202))

(declare-fun m!1433653 () Bool)

(assert (=> b!1283200 m!1433653))

(declare-fun m!1433655 () Bool)

(assert (=> b!1283202 m!1433655))

(assert (=> b!1283024 d!361450))

(declare-fun d!361452 () Bool)

(assert (=> d!361452 true))

(declare-fun lt!423313 () Bool)

(declare-fun rulesValidInductive!689 (LexerInterface!1882 List!12799) Bool)

(assert (=> d!361452 (= lt!423313 (rulesValidInductive!689 thiss!10944 rs!174))))

(declare-fun lambda!50289 () Int)

(declare-fun forall!3213 (List!12799 Int) Bool)

(assert (=> d!361452 (= lt!423313 (forall!3213 rs!174 lambda!50289))))

(assert (=> d!361452 (= (rulesValid!793 thiss!10944 rs!174) lt!423313)))

(declare-fun bs!327625 () Bool)

(assert (= bs!327625 d!361452))

(declare-fun m!1433657 () Bool)

(assert (=> bs!327625 m!1433657))

(declare-fun m!1433659 () Bool)

(assert (=> bs!327625 m!1433659))

(assert (=> d!361370 d!361452))

(declare-fun e!822734 () Bool)

(assert (=> b!1283050 (= tp!372809 e!822734)))

(declare-fun b!1283205 () Bool)

(assert (=> b!1283205 (= e!822734 tp_is_empty!6527)))

(declare-fun b!1283208 () Bool)

(declare-fun tp!372852 () Bool)

(declare-fun tp!372850 () Bool)

(assert (=> b!1283208 (= e!822734 (and tp!372852 tp!372850))))

(declare-fun b!1283207 () Bool)

(declare-fun tp!372849 () Bool)

(assert (=> b!1283207 (= e!822734 tp!372849)))

(declare-fun b!1283206 () Bool)

(declare-fun tp!372851 () Bool)

(declare-fun tp!372848 () Bool)

(assert (=> b!1283206 (= e!822734 (and tp!372851 tp!372848))))

(assert (= (and b!1283050 ((_ is ElementMatch!3501) (regex!2187 (h!18134 (t!116631 rs!174))))) b!1283205))

(assert (= (and b!1283050 ((_ is Concat!5779) (regex!2187 (h!18134 (t!116631 rs!174))))) b!1283206))

(assert (= (and b!1283050 ((_ is Star!3501) (regex!2187 (h!18134 (t!116631 rs!174))))) b!1283207))

(assert (= (and b!1283050 ((_ is Union!3501) (regex!2187 (h!18134 (t!116631 rs!174))))) b!1283208))

(declare-fun e!822735 () Bool)

(assert (=> b!1283039 (= tp!372796 e!822735)))

(declare-fun b!1283209 () Bool)

(assert (=> b!1283209 (= e!822735 tp_is_empty!6527)))

(declare-fun b!1283212 () Bool)

(declare-fun tp!372857 () Bool)

(declare-fun tp!372855 () Bool)

(assert (=> b!1283212 (= e!822735 (and tp!372857 tp!372855))))

(declare-fun b!1283211 () Bool)

(declare-fun tp!372854 () Bool)

(assert (=> b!1283211 (= e!822735 tp!372854)))

(declare-fun b!1283210 () Bool)

(declare-fun tp!372856 () Bool)

(declare-fun tp!372853 () Bool)

(assert (=> b!1283210 (= e!822735 (and tp!372856 tp!372853))))

(assert (= (and b!1283039 ((_ is ElementMatch!3501) (reg!3830 (regex!2187 (h!18134 rs!174))))) b!1283209))

(assert (= (and b!1283039 ((_ is Concat!5779) (reg!3830 (regex!2187 (h!18134 rs!174))))) b!1283210))

(assert (= (and b!1283039 ((_ is Star!3501) (reg!3830 (regex!2187 (h!18134 rs!174))))) b!1283211))

(assert (= (and b!1283039 ((_ is Union!3501) (reg!3830 (regex!2187 (h!18134 rs!174))))) b!1283212))

(declare-fun e!822736 () Bool)

(assert (=> b!1283040 (= tp!372799 e!822736)))

(declare-fun b!1283213 () Bool)

(assert (=> b!1283213 (= e!822736 tp_is_empty!6527)))

(declare-fun b!1283216 () Bool)

(declare-fun tp!372862 () Bool)

(declare-fun tp!372860 () Bool)

(assert (=> b!1283216 (= e!822736 (and tp!372862 tp!372860))))

(declare-fun b!1283215 () Bool)

(declare-fun tp!372859 () Bool)

(assert (=> b!1283215 (= e!822736 tp!372859)))

(declare-fun b!1283214 () Bool)

(declare-fun tp!372861 () Bool)

(declare-fun tp!372858 () Bool)

(assert (=> b!1283214 (= e!822736 (and tp!372861 tp!372858))))

(assert (= (and b!1283040 ((_ is ElementMatch!3501) (regOne!7515 (regex!2187 (h!18134 rs!174))))) b!1283213))

(assert (= (and b!1283040 ((_ is Concat!5779) (regOne!7515 (regex!2187 (h!18134 rs!174))))) b!1283214))

(assert (= (and b!1283040 ((_ is Star!3501) (regOne!7515 (regex!2187 (h!18134 rs!174))))) b!1283215))

(assert (= (and b!1283040 ((_ is Union!3501) (regOne!7515 (regex!2187 (h!18134 rs!174))))) b!1283216))

(declare-fun e!822737 () Bool)

(assert (=> b!1283040 (= tp!372797 e!822737)))

(declare-fun b!1283217 () Bool)

(assert (=> b!1283217 (= e!822737 tp_is_empty!6527)))

(declare-fun b!1283220 () Bool)

(declare-fun tp!372867 () Bool)

(declare-fun tp!372865 () Bool)

(assert (=> b!1283220 (= e!822737 (and tp!372867 tp!372865))))

(declare-fun b!1283219 () Bool)

(declare-fun tp!372864 () Bool)

(assert (=> b!1283219 (= e!822737 tp!372864)))

(declare-fun b!1283218 () Bool)

(declare-fun tp!372866 () Bool)

(declare-fun tp!372863 () Bool)

(assert (=> b!1283218 (= e!822737 (and tp!372866 tp!372863))))

(assert (= (and b!1283040 ((_ is ElementMatch!3501) (regTwo!7515 (regex!2187 (h!18134 rs!174))))) b!1283217))

(assert (= (and b!1283040 ((_ is Concat!5779) (regTwo!7515 (regex!2187 (h!18134 rs!174))))) b!1283218))

(assert (= (and b!1283040 ((_ is Star!3501) (regTwo!7515 (regex!2187 (h!18134 rs!174))))) b!1283219))

(assert (= (and b!1283040 ((_ is Union!3501) (regTwo!7515 (regex!2187 (h!18134 rs!174))))) b!1283220))

(declare-fun b!1283234 () Bool)

(declare-fun b_free!29979 () Bool)

(declare-fun b_next!30683 () Bool)

(assert (=> b!1283234 (= b_free!29979 (not b_next!30683))))

(declare-fun tp!372878 () Bool)

(declare-fun b_and!85123 () Bool)

(assert (=> b!1283234 (= tp!372878 b_and!85123)))

(declare-fun b_free!29981 () Bool)

(declare-fun b_next!30685 () Bool)

(assert (=> b!1283234 (= b_free!29981 (not b_next!30685))))

(declare-fun tp!372882 () Bool)

(declare-fun b_and!85125 () Bool)

(assert (=> b!1283234 (= tp!372882 b_and!85125)))

(declare-fun e!822751 () Bool)

(declare-fun tp!372880 () Bool)

(declare-fun e!822750 () Bool)

(declare-fun b!1283231 () Bool)

(declare-fun inv!17125 (Token!4036) Bool)

(assert (=> b!1283231 (= e!822751 (and (inv!17125 (h!18133 (innerList!4245 (xs!6896 (c!211435 ts!110))))) e!822750 tp!372880))))

(declare-fun tp!372879 () Bool)

(declare-fun b!1283232 () Bool)

(declare-fun e!822755 () Bool)

(declare-fun inv!21 (TokenValue!2277) Bool)

(assert (=> b!1283232 (= e!822750 (and (inv!21 (value!71962 (h!18133 (innerList!4245 (xs!6896 (c!211435 ts!110)))))) e!822755 tp!372879))))

(declare-fun e!822753 () Bool)

(assert (=> b!1283234 (= e!822753 (and tp!372878 tp!372882))))

(assert (=> b!1283026 (= tp!372782 e!822751)))

(declare-fun b!1283233 () Bool)

(declare-fun tp!372881 () Bool)

(assert (=> b!1283233 (= e!822755 (and tp!372881 (inv!17112 (tag!2449 (rule!3926 (h!18133 (innerList!4245 (xs!6896 (c!211435 ts!110))))))) (inv!17118 (transformation!2187 (rule!3926 (h!18133 (innerList!4245 (xs!6896 (c!211435 ts!110))))))) e!822753))))

(assert (= b!1283233 b!1283234))

(assert (= b!1283232 b!1283233))

(assert (= b!1283231 b!1283232))

(assert (= (and b!1283026 ((_ is Cons!12732) (innerList!4245 (xs!6896 (c!211435 ts!110))))) b!1283231))

(declare-fun m!1433661 () Bool)

(assert (=> b!1283231 m!1433661))

(declare-fun m!1433663 () Bool)

(assert (=> b!1283232 m!1433663))

(declare-fun m!1433665 () Bool)

(assert (=> b!1283233 m!1433665))

(declare-fun m!1433667 () Bool)

(assert (=> b!1283233 m!1433667))

(declare-fun e!822756 () Bool)

(assert (=> b!1283038 (= tp!372798 e!822756)))

(declare-fun b!1283235 () Bool)

(assert (=> b!1283235 (= e!822756 tp_is_empty!6527)))

(declare-fun b!1283238 () Bool)

(declare-fun tp!372887 () Bool)

(declare-fun tp!372885 () Bool)

(assert (=> b!1283238 (= e!822756 (and tp!372887 tp!372885))))

(declare-fun b!1283237 () Bool)

(declare-fun tp!372884 () Bool)

(assert (=> b!1283237 (= e!822756 tp!372884)))

(declare-fun b!1283236 () Bool)

(declare-fun tp!372886 () Bool)

(declare-fun tp!372883 () Bool)

(assert (=> b!1283236 (= e!822756 (and tp!372886 tp!372883))))

(assert (= (and b!1283038 ((_ is ElementMatch!3501) (regOne!7514 (regex!2187 (h!18134 rs!174))))) b!1283235))

(assert (= (and b!1283038 ((_ is Concat!5779) (regOne!7514 (regex!2187 (h!18134 rs!174))))) b!1283236))

(assert (= (and b!1283038 ((_ is Star!3501) (regOne!7514 (regex!2187 (h!18134 rs!174))))) b!1283237))

(assert (= (and b!1283038 ((_ is Union!3501) (regOne!7514 (regex!2187 (h!18134 rs!174))))) b!1283238))

(declare-fun e!822757 () Bool)

(assert (=> b!1283038 (= tp!372795 e!822757)))

(declare-fun b!1283239 () Bool)

(assert (=> b!1283239 (= e!822757 tp_is_empty!6527)))

(declare-fun b!1283242 () Bool)

(declare-fun tp!372892 () Bool)

(declare-fun tp!372890 () Bool)

(assert (=> b!1283242 (= e!822757 (and tp!372892 tp!372890))))

(declare-fun b!1283241 () Bool)

(declare-fun tp!372889 () Bool)

(assert (=> b!1283241 (= e!822757 tp!372889)))

(declare-fun b!1283240 () Bool)

(declare-fun tp!372891 () Bool)

(declare-fun tp!372888 () Bool)

(assert (=> b!1283240 (= e!822757 (and tp!372891 tp!372888))))

(assert (= (and b!1283038 ((_ is ElementMatch!3501) (regTwo!7514 (regex!2187 (h!18134 rs!174))))) b!1283239))

(assert (= (and b!1283038 ((_ is Concat!5779) (regTwo!7514 (regex!2187 (h!18134 rs!174))))) b!1283240))

(assert (= (and b!1283038 ((_ is Star!3501) (regTwo!7514 (regex!2187 (h!18134 rs!174))))) b!1283241))

(assert (= (and b!1283038 ((_ is Union!3501) (regTwo!7514 (regex!2187 (h!18134 rs!174))))) b!1283242))

(declare-fun b!1283245 () Bool)

(declare-fun b_free!29983 () Bool)

(declare-fun b_next!30687 () Bool)

(assert (=> b!1283245 (= b_free!29983 (not b_next!30687))))

(declare-fun tp!372896 () Bool)

(declare-fun b_and!85127 () Bool)

(assert (=> b!1283245 (= tp!372896 b_and!85127)))

(declare-fun b_free!29985 () Bool)

(declare-fun b_next!30689 () Bool)

(assert (=> b!1283245 (= b_free!29985 (not b_next!30689))))

(declare-fun tp!372895 () Bool)

(declare-fun b_and!85129 () Bool)

(assert (=> b!1283245 (= tp!372895 b_and!85129)))

(declare-fun e!822759 () Bool)

(assert (=> b!1283245 (= e!822759 (and tp!372896 tp!372895))))

(declare-fun tp!372894 () Bool)

(declare-fun b!1283244 () Bool)

(declare-fun e!822760 () Bool)

(assert (=> b!1283244 (= e!822760 (and tp!372894 (inv!17112 (tag!2449 (h!18134 (t!116631 (t!116631 rs!174))))) (inv!17118 (transformation!2187 (h!18134 (t!116631 (t!116631 rs!174))))) e!822759))))

(declare-fun b!1283243 () Bool)

(declare-fun e!822758 () Bool)

(declare-fun tp!372893 () Bool)

(assert (=> b!1283243 (= e!822758 (and e!822760 tp!372893))))

(assert (=> b!1283049 (= tp!372808 e!822758)))

(assert (= b!1283244 b!1283245))

(assert (= b!1283243 b!1283244))

(assert (= (and b!1283049 ((_ is Cons!12733) (t!116631 (t!116631 rs!174)))) b!1283243))

(declare-fun m!1433669 () Bool)

(assert (=> b!1283244 m!1433669))

(declare-fun m!1433671 () Bool)

(assert (=> b!1283244 m!1433671))

(declare-fun tp!372898 () Bool)

(declare-fun b!1283246 () Bool)

(declare-fun tp!372899 () Bool)

(declare-fun e!822763 () Bool)

(assert (=> b!1283246 (= e!822763 (and (inv!17117 (left!10984 (left!10984 (c!211435 ts!110)))) tp!372898 (inv!17117 (right!11314 (left!10984 (c!211435 ts!110)))) tp!372899))))

(declare-fun b!1283248 () Bool)

(declare-fun e!822762 () Bool)

(declare-fun tp!372897 () Bool)

(assert (=> b!1283248 (= e!822762 tp!372897)))

(declare-fun b!1283247 () Bool)

(assert (=> b!1283247 (= e!822763 (and (inv!17121 (xs!6896 (left!10984 (c!211435 ts!110)))) e!822762))))

(assert (=> b!1283024 (= tp!372783 (and (inv!17117 (left!10984 (c!211435 ts!110))) e!822763))))

(assert (= (and b!1283024 ((_ is Node!4185) (left!10984 (c!211435 ts!110)))) b!1283246))

(assert (= b!1283247 b!1283248))

(assert (= (and b!1283024 ((_ is Leaf!6475) (left!10984 (c!211435 ts!110)))) b!1283247))

(declare-fun m!1433673 () Bool)

(assert (=> b!1283246 m!1433673))

(declare-fun m!1433675 () Bool)

(assert (=> b!1283246 m!1433675))

(declare-fun m!1433677 () Bool)

(assert (=> b!1283247 m!1433677))

(assert (=> b!1283024 m!1433529))

(declare-fun e!822765 () Bool)

(declare-fun b!1283249 () Bool)

(declare-fun tp!372902 () Bool)

(declare-fun tp!372901 () Bool)

(assert (=> b!1283249 (= e!822765 (and (inv!17117 (left!10984 (right!11314 (c!211435 ts!110)))) tp!372901 (inv!17117 (right!11314 (right!11314 (c!211435 ts!110)))) tp!372902))))

(declare-fun b!1283251 () Bool)

(declare-fun e!822764 () Bool)

(declare-fun tp!372900 () Bool)

(assert (=> b!1283251 (= e!822764 tp!372900)))

(declare-fun b!1283250 () Bool)

(assert (=> b!1283250 (= e!822765 (and (inv!17121 (xs!6896 (right!11314 (c!211435 ts!110)))) e!822764))))

(assert (=> b!1283024 (= tp!372784 (and (inv!17117 (right!11314 (c!211435 ts!110))) e!822765))))

(assert (= (and b!1283024 ((_ is Node!4185) (right!11314 (c!211435 ts!110)))) b!1283249))

(assert (= b!1283250 b!1283251))

(assert (= (and b!1283024 ((_ is Leaf!6475) (right!11314 (c!211435 ts!110)))) b!1283250))

(declare-fun m!1433679 () Bool)

(assert (=> b!1283249 m!1433679))

(declare-fun m!1433681 () Bool)

(assert (=> b!1283249 m!1433681))

(declare-fun m!1433683 () Bool)

(assert (=> b!1283250 m!1433683))

(assert (=> b!1283024 m!1433531))

(check-sat (not b!1283250) (not d!361436) (not b!1283200) (not b!1283219) (not b!1283176) (not d!361430) tp_is_empty!6527 b_and!85123 b_and!85127 (not b!1283249) (not b!1283238) (not b!1283237) (not b_next!30689) (not b_next!30685) (not d!361444) (not b!1283195) (not b!1283024) (not b!1283211) (not d!361400) (not b!1283231) (not d!361452) (not b!1283242) (not b!1283206) (not d!361402) (not b!1283177) (not b!1283183) (not b!1283212) (not b!1283233) (not b!1283184) (not b!1283247) b_and!85111 (not b!1283248) (not b_next!30687) (not b!1283091) (not b_next!30671) (not b!1283178) (not b!1283232) (not b!1283197) (not b!1283218) (not b_next!30675) (not b!1283216) (not b!1283202) (not b!1283173) b_and!85115 (not b!1283210) (not b!1283190) b_and!85125 (not b!1283236) (not b!1283174) b_and!85113 (not b!1283199) (not b!1283220) (not b!1283251) (not d!361446) (not b!1283244) (not d!361432) (not b_next!30677) (not b!1283155) (not d!361442) b_and!85117 (not b_next!30683) (not b!1283215) (not b!1283214) (not b!1283243) (not b!1283207) b_and!85129 (not b!1283246) (not b!1283241) (not b_next!30673) (not b!1283175) (not b!1283240) (not b!1283208))
(check-sat b_and!85123 b_and!85127 (not b_next!30689) (not b_next!30685) (not b_next!30671) (not b_next!30675) b_and!85115 b_and!85125 b_and!85113 (not b_next!30677) b_and!85117 (not b_next!30683) b_and!85129 (not b_next!30673) b_and!85111 (not b_next!30687))
