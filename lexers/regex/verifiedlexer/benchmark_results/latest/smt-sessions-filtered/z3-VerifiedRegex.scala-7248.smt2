; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!385988 () Bool)

(assert start!385988)

(declare-fun b!4083386 () Bool)

(declare-fun b_free!114049 () Bool)

(declare-fun b_next!114753 () Bool)

(assert (=> b!4083386 (= b_free!114049 (not b_next!114753))))

(declare-fun tp!1236382 () Bool)

(declare-fun b_and!314271 () Bool)

(assert (=> b!4083386 (= tp!1236382 b_and!314271)))

(declare-fun b_free!114051 () Bool)

(declare-fun b_next!114755 () Bool)

(assert (=> b!4083386 (= b_free!114051 (not b_next!114755))))

(declare-fun tp!1236375 () Bool)

(declare-fun b_and!314273 () Bool)

(assert (=> b!4083386 (= tp!1236375 b_and!314273)))

(declare-fun b!4083378 () Bool)

(declare-fun b_free!114053 () Bool)

(declare-fun b_next!114757 () Bool)

(assert (=> b!4083378 (= b_free!114053 (not b_next!114757))))

(declare-fun tp!1236378 () Bool)

(declare-fun b_and!314275 () Bool)

(assert (=> b!4083378 (= tp!1236378 b_and!314275)))

(declare-fun b_free!114055 () Bool)

(declare-fun b_next!114759 () Bool)

(assert (=> b!4083378 (= b_free!114055 (not b_next!114759))))

(declare-fun tp!1236381 () Bool)

(declare-fun b_and!314277 () Bool)

(assert (=> b!4083378 (= tp!1236381 b_and!314277)))

(declare-fun res!1668388 () Bool)

(declare-fun e!2534404 () Bool)

(assert (=> start!385988 (=> (not res!1668388) (not e!2534404))))

(declare-datatypes ((LexerInterface!6657 0))(
  ( (LexerInterfaceExt!6654 (__x!26813 Int)) (Lexer!6655) )
))
(declare-fun thiss!26199 () LexerInterface!6657)

(get-info :version)

(assert (=> start!385988 (= res!1668388 ((_ is Lexer!6655) thiss!26199))))

(assert (=> start!385988 e!2534404))

(assert (=> start!385988 true))

(declare-fun e!2534401 () Bool)

(assert (=> start!385988 e!2534401))

(declare-fun e!2534396 () Bool)

(assert (=> start!385988 e!2534396))

(declare-fun e!2534395 () Bool)

(assert (=> start!385988 e!2534395))

(declare-fun e!2534398 () Bool)

(assert (=> start!385988 e!2534398))

(declare-fun e!2534394 () Bool)

(assert (=> start!385988 e!2534394))

(declare-fun b!4083375 () Bool)

(declare-fun res!1668390 () Bool)

(assert (=> b!4083375 (=> (not res!1668390) (not e!2534404))))

(declare-datatypes ((C!24132 0))(
  ( (C!24133 (val!14176 Int)) )
))
(declare-datatypes ((List!43891 0))(
  ( (Nil!43767) (Cons!43767 (h!49187 C!24132) (t!337922 List!43891)) )
))
(declare-fun p!2988 () List!43891)

(declare-fun isEmpty!26162 (List!43891) Bool)

(assert (=> b!4083375 (= res!1668390 (not (isEmpty!26162 p!2988)))))

(declare-fun b!4083376 () Bool)

(declare-fun e!2534393 () Bool)

(declare-fun e!2534392 () Bool)

(assert (=> b!4083376 (= e!2534393 (not e!2534392))))

(declare-fun res!1668383 () Bool)

(assert (=> b!4083376 (=> res!1668383 e!2534392)))

(declare-datatypes ((List!43892 0))(
  ( (Nil!43768) (Cons!43768 (h!49188 (_ BitVec 16)) (t!337923 List!43892)) )
))
(declare-datatypes ((TokenValue!7298 0))(
  ( (FloatLiteralValue!14596 (text!51531 List!43892)) (TokenValueExt!7297 (__x!26814 Int)) (Broken!36490 (value!222064 List!43892)) (Object!7421) (End!7298) (Def!7298) (Underscore!7298) (Match!7298) (Else!7298) (Error!7298) (Case!7298) (If!7298) (Extends!7298) (Abstract!7298) (Class!7298) (Val!7298) (DelimiterValue!14596 (del!7358 List!43892)) (KeywordValue!7304 (value!222065 List!43892)) (CommentValue!14596 (value!222066 List!43892)) (WhitespaceValue!14596 (value!222067 List!43892)) (IndentationValue!7298 (value!222068 List!43892)) (String!50239) (Int32!7298) (Broken!36491 (value!222069 List!43892)) (Boolean!7299) (Unit!63294) (OperatorValue!7301 (op!7358 List!43892)) (IdentifierValue!14596 (value!222070 List!43892)) (IdentifierValue!14597 (value!222071 List!43892)) (WhitespaceValue!14597 (value!222072 List!43892)) (True!14596) (False!14596) (Broken!36492 (value!222073 List!43892)) (Broken!36493 (value!222074 List!43892)) (True!14597) (RightBrace!7298) (RightBracket!7298) (Colon!7298) (Null!7298) (Comma!7298) (LeftBracket!7298) (False!14597) (LeftBrace!7298) (ImaginaryLiteralValue!7298 (text!51532 List!43892)) (StringLiteralValue!21894 (value!222075 List!43892)) (EOFValue!7298 (value!222076 List!43892)) (IdentValue!7298 (value!222077 List!43892)) (DelimiterValue!14597 (value!222078 List!43892)) (DedentValue!7298 (value!222079 List!43892)) (NewLineValue!7298 (value!222080 List!43892)) (IntegerValue!21894 (value!222081 (_ BitVec 32)) (text!51533 List!43892)) (IntegerValue!21895 (value!222082 Int) (text!51534 List!43892)) (Times!7298) (Or!7298) (Equal!7298) (Minus!7298) (Broken!36494 (value!222083 List!43892)) (And!7298) (Div!7298) (LessEqual!7298) (Mod!7298) (Concat!19271) (Not!7298) (Plus!7298) (SpaceValue!7298 (value!222084 List!43892)) (IntegerValue!21896 (value!222085 Int) (text!51535 List!43892)) (StringLiteralValue!21895 (text!51536 List!43892)) (FloatLiteralValue!14597 (text!51537 List!43892)) (BytesLiteralValue!7298 (value!222086 List!43892)) (CommentValue!14597 (value!222087 List!43892)) (StringLiteralValue!21896 (value!222088 List!43892)) (ErrorTokenValue!7298 (msg!7359 List!43892)) )
))
(declare-datatypes ((String!50240 0))(
  ( (String!50241 (value!222089 String)) )
))
(declare-datatypes ((Regex!11973 0))(
  ( (ElementMatch!11973 (c!704012 C!24132)) (Concat!19272 (regOne!24458 Regex!11973) (regTwo!24458 Regex!11973)) (EmptyExpr!11973) (Star!11973 (reg!12302 Regex!11973)) (EmptyLang!11973) (Union!11973 (regOne!24459 Regex!11973) (regTwo!24459 Regex!11973)) )
))
(declare-datatypes ((IArray!26563 0))(
  ( (IArray!26564 (innerList!13339 List!43891)) )
))
(declare-datatypes ((Conc!13279 0))(
  ( (Node!13279 (left!32895 Conc!13279) (right!33225 Conc!13279) (csize!26788 Int) (cheight!13490 Int)) (Leaf!20528 (xs!16585 IArray!26563) (csize!26789 Int)) (Empty!13279) )
))
(declare-datatypes ((BalanceConc!26152 0))(
  ( (BalanceConc!26153 (c!704013 Conc!13279)) )
))
(declare-datatypes ((TokenValueInjection!14024 0))(
  ( (TokenValueInjection!14025 (toValue!9644 Int) (toChars!9503 Int)) )
))
(declare-datatypes ((Rule!13936 0))(
  ( (Rule!13937 (regex!7068 Regex!11973) (tag!7928 String!50240) (isSeparator!7068 Bool) (transformation!7068 TokenValueInjection!14024)) )
))
(declare-fun r!4213 () Rule!13936)

(declare-fun matchR!5914 (Regex!11973 List!43891) Bool)

(assert (=> b!4083376 (= res!1668383 (not (matchR!5914 (regex!7068 r!4213) p!2988)))))

(declare-fun ruleValid!2988 (LexerInterface!6657 Rule!13936) Bool)

(assert (=> b!4083376 (ruleValid!2988 thiss!26199 r!4213)))

(declare-datatypes ((List!43893 0))(
  ( (Nil!43769) (Cons!43769 (h!49189 Rule!13936) (t!337924 List!43893)) )
))
(declare-fun rules!3870 () List!43893)

(declare-datatypes ((Unit!63295 0))(
  ( (Unit!63296) )
))
(declare-fun lt!1460767 () Unit!63295)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2054 (LexerInterface!6657 Rule!13936 List!43893) Unit!63295)

(assert (=> b!4083376 (= lt!1460767 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2054 thiss!26199 r!4213 rules!3870))))

(declare-fun b!4083377 () Bool)

(declare-fun res!1668386 () Bool)

(assert (=> b!4083377 (=> (not res!1668386) (not e!2534404))))

(declare-fun contains!8741 (List!43893 Rule!13936) Bool)

(assert (=> b!4083377 (= res!1668386 (contains!8741 rules!3870 r!4213))))

(declare-fun e!2534399 () Bool)

(assert (=> b!4083378 (= e!2534399 (and tp!1236378 tp!1236381))))

(declare-fun b!4083379 () Bool)

(declare-fun e!2534397 () Bool)

(declare-fun tp!1236380 () Bool)

(declare-fun inv!58438 (String!50240) Bool)

(declare-fun inv!58440 (TokenValueInjection!14024) Bool)

(assert (=> b!4083379 (= e!2534394 (and tp!1236380 (inv!58438 (tag!7928 r!4213)) (inv!58440 (transformation!7068 r!4213)) e!2534397))))

(declare-fun b!4083380 () Bool)

(declare-fun tp_is_empty!20949 () Bool)

(declare-fun tp!1236379 () Bool)

(assert (=> b!4083380 (= e!2534401 (and tp_is_empty!20949 tp!1236379))))

(declare-fun b!4083381 () Bool)

(declare-fun res!1668387 () Bool)

(assert (=> b!4083381 (=> (not res!1668387) (not e!2534404))))

(declare-fun rulesInvariant!6000 (LexerInterface!6657 List!43893) Bool)

(assert (=> b!4083381 (= res!1668387 (rulesInvariant!6000 thiss!26199 rules!3870))))

(declare-fun b!4083382 () Bool)

(declare-fun res!1668389 () Bool)

(assert (=> b!4083382 (=> (not res!1668389) (not e!2534404))))

(declare-fun isEmpty!26163 (List!43893) Bool)

(assert (=> b!4083382 (= res!1668389 (not (isEmpty!26163 rules!3870)))))

(declare-fun b!4083383 () Bool)

(assert (=> b!4083383 (= e!2534404 e!2534393)))

(declare-fun res!1668385 () Bool)

(assert (=> b!4083383 (=> (not res!1668385) (not e!2534393))))

(declare-fun suffix!1518 () List!43891)

(declare-fun input!3411 () List!43891)

(declare-fun lt!1460769 () BalanceConc!26152)

(declare-datatypes ((Token!13262 0))(
  ( (Token!13263 (value!222090 TokenValue!7298) (rule!10192 Rule!13936) (size!32690 Int) (originalCharacters!7662 List!43891)) )
))
(declare-datatypes ((tuple2!42714 0))(
  ( (tuple2!42715 (_1!24491 Token!13262) (_2!24491 List!43891)) )
))
(declare-datatypes ((Option!9474 0))(
  ( (None!9473) (Some!9473 (v!39941 tuple2!42714)) )
))
(declare-fun maxPrefix!3947 (LexerInterface!6657 List!43893 List!43891) Option!9474)

(declare-fun apply!10251 (TokenValueInjection!14024 BalanceConc!26152) TokenValue!7298)

(declare-fun size!32691 (List!43891) Int)

(assert (=> b!4083383 (= res!1668385 (= (maxPrefix!3947 thiss!26199 rules!3870 input!3411) (Some!9473 (tuple2!42715 (Token!13263 (apply!10251 (transformation!7068 r!4213) lt!1460769) r!4213 (size!32691 p!2988) p!2988) suffix!1518))))))

(declare-fun lt!1460768 () Unit!63295)

(declare-fun lemmaSemiInverse!2035 (TokenValueInjection!14024 BalanceConc!26152) Unit!63295)

(assert (=> b!4083383 (= lt!1460768 (lemmaSemiInverse!2035 (transformation!7068 r!4213) lt!1460769))))

(declare-fun seqFromList!5285 (List!43891) BalanceConc!26152)

(assert (=> b!4083383 (= lt!1460769 (seqFromList!5285 p!2988))))

(declare-fun b!4083384 () Bool)

(declare-fun e!2534402 () Bool)

(declare-fun tp!1236384 () Bool)

(assert (=> b!4083384 (= e!2534402 (and tp!1236384 (inv!58438 (tag!7928 (h!49189 rules!3870))) (inv!58440 (transformation!7068 (h!49189 rules!3870))) e!2534399))))

(declare-fun b!4083385 () Bool)

(declare-fun size!32692 (List!43893) Int)

(assert (=> b!4083385 (= e!2534392 (>= (size!32692 rules!3870) 0))))

(assert (=> b!4083386 (= e!2534397 (and tp!1236382 tp!1236375))))

(declare-fun b!4083387 () Bool)

(declare-fun res!1668384 () Bool)

(assert (=> b!4083387 (=> (not res!1668384) (not e!2534404))))

(declare-fun ++!11474 (List!43891 List!43891) List!43891)

(assert (=> b!4083387 (= res!1668384 (= input!3411 (++!11474 p!2988 suffix!1518)))))

(declare-fun b!4083388 () Bool)

(declare-fun tp!1236377 () Bool)

(assert (=> b!4083388 (= e!2534398 (and tp_is_empty!20949 tp!1236377))))

(declare-fun b!4083389 () Bool)

(declare-fun tp!1236383 () Bool)

(assert (=> b!4083389 (= e!2534396 (and e!2534402 tp!1236383))))

(declare-fun b!4083390 () Bool)

(declare-fun tp!1236376 () Bool)

(assert (=> b!4083390 (= e!2534395 (and tp_is_empty!20949 tp!1236376))))

(assert (= (and start!385988 res!1668388) b!4083382))

(assert (= (and b!4083382 res!1668389) b!4083381))

(assert (= (and b!4083381 res!1668387) b!4083377))

(assert (= (and b!4083377 res!1668386) b!4083387))

(assert (= (and b!4083387 res!1668384) b!4083375))

(assert (= (and b!4083375 res!1668390) b!4083383))

(assert (= (and b!4083383 res!1668385) b!4083376))

(assert (= (and b!4083376 (not res!1668383)) b!4083385))

(assert (= (and start!385988 ((_ is Cons!43767) suffix!1518)) b!4083380))

(assert (= b!4083384 b!4083378))

(assert (= b!4083389 b!4083384))

(assert (= (and start!385988 ((_ is Cons!43769) rules!3870)) b!4083389))

(assert (= (and start!385988 ((_ is Cons!43767) p!2988)) b!4083390))

(assert (= (and start!385988 ((_ is Cons!43767) input!3411)) b!4083388))

(assert (= b!4083379 b!4083386))

(assert (= start!385988 b!4083379))

(declare-fun m!4690613 () Bool)

(assert (=> b!4083381 m!4690613))

(declare-fun m!4690615 () Bool)

(assert (=> b!4083377 m!4690615))

(declare-fun m!4690617 () Bool)

(assert (=> b!4083376 m!4690617))

(declare-fun m!4690619 () Bool)

(assert (=> b!4083376 m!4690619))

(declare-fun m!4690621 () Bool)

(assert (=> b!4083376 m!4690621))

(declare-fun m!4690623 () Bool)

(assert (=> b!4083379 m!4690623))

(declare-fun m!4690625 () Bool)

(assert (=> b!4083379 m!4690625))

(declare-fun m!4690627 () Bool)

(assert (=> b!4083385 m!4690627))

(declare-fun m!4690629 () Bool)

(assert (=> b!4083382 m!4690629))

(declare-fun m!4690631 () Bool)

(assert (=> b!4083375 m!4690631))

(declare-fun m!4690633 () Bool)

(assert (=> b!4083387 m!4690633))

(declare-fun m!4690635 () Bool)

(assert (=> b!4083384 m!4690635))

(declare-fun m!4690637 () Bool)

(assert (=> b!4083384 m!4690637))

(declare-fun m!4690639 () Bool)

(assert (=> b!4083383 m!4690639))

(declare-fun m!4690641 () Bool)

(assert (=> b!4083383 m!4690641))

(declare-fun m!4690643 () Bool)

(assert (=> b!4083383 m!4690643))

(declare-fun m!4690645 () Bool)

(assert (=> b!4083383 m!4690645))

(declare-fun m!4690647 () Bool)

(assert (=> b!4083383 m!4690647))

(check-sat (not b!4083383) b_and!314275 (not b_next!114755) (not b!4083390) (not b!4083379) (not b!4083389) (not b!4083376) (not b_next!114753) (not b!4083381) (not b!4083375) tp_is_empty!20949 (not b!4083384) (not b!4083382) (not b!4083385) b_and!314273 b_and!314277 (not b!4083388) (not b_next!114757) (not b!4083387) b_and!314271 (not b!4083380) (not b_next!114759) (not b!4083377))
(check-sat b_and!314277 b_and!314275 (not b_next!114755) (not b_next!114753) (not b_next!114757) b_and!314271 b_and!314273 (not b_next!114759))
(get-model)

(declare-fun d!1212617 () Bool)

(assert (=> d!1212617 (= (inv!58438 (tag!7928 r!4213)) (= (mod (str.len (value!222089 (tag!7928 r!4213))) 2) 0))))

(assert (=> b!4083379 d!1212617))

(declare-fun d!1212619 () Bool)

(declare-fun res!1668397 () Bool)

(declare-fun e!2534407 () Bool)

(assert (=> d!1212619 (=> (not res!1668397) (not e!2534407))))

(declare-fun semiInverseModEq!3030 (Int Int) Bool)

(assert (=> d!1212619 (= res!1668397 (semiInverseModEq!3030 (toChars!9503 (transformation!7068 r!4213)) (toValue!9644 (transformation!7068 r!4213))))))

(assert (=> d!1212619 (= (inv!58440 (transformation!7068 r!4213)) e!2534407)))

(declare-fun b!4083393 () Bool)

(declare-fun equivClasses!2929 (Int Int) Bool)

(assert (=> b!4083393 (= e!2534407 (equivClasses!2929 (toChars!9503 (transformation!7068 r!4213)) (toValue!9644 (transformation!7068 r!4213))))))

(assert (= (and d!1212619 res!1668397) b!4083393))

(declare-fun m!4690649 () Bool)

(assert (=> d!1212619 m!4690649))

(declare-fun m!4690651 () Bool)

(assert (=> b!4083393 m!4690651))

(assert (=> b!4083379 d!1212619))

(declare-fun d!1212625 () Bool)

(assert (=> d!1212625 (= (inv!58438 (tag!7928 (h!49189 rules!3870))) (= (mod (str.len (value!222089 (tag!7928 (h!49189 rules!3870)))) 2) 0))))

(assert (=> b!4083384 d!1212625))

(declare-fun d!1212627 () Bool)

(declare-fun res!1668398 () Bool)

(declare-fun e!2534408 () Bool)

(assert (=> d!1212627 (=> (not res!1668398) (not e!2534408))))

(assert (=> d!1212627 (= res!1668398 (semiInverseModEq!3030 (toChars!9503 (transformation!7068 (h!49189 rules!3870))) (toValue!9644 (transformation!7068 (h!49189 rules!3870)))))))

(assert (=> d!1212627 (= (inv!58440 (transformation!7068 (h!49189 rules!3870))) e!2534408)))

(declare-fun b!4083394 () Bool)

(assert (=> b!4083394 (= e!2534408 (equivClasses!2929 (toChars!9503 (transformation!7068 (h!49189 rules!3870))) (toValue!9644 (transformation!7068 (h!49189 rules!3870)))))))

(assert (= (and d!1212627 res!1668398) b!4083394))

(declare-fun m!4690653 () Bool)

(assert (=> d!1212627 m!4690653))

(declare-fun m!4690655 () Bool)

(assert (=> b!4083394 m!4690655))

(assert (=> b!4083384 d!1212627))

(declare-fun d!1212629 () Bool)

(declare-fun lt!1460772 () Int)

(assert (=> d!1212629 (>= lt!1460772 0)))

(declare-fun e!2534414 () Int)

(assert (=> d!1212629 (= lt!1460772 e!2534414)))

(declare-fun c!704016 () Bool)

(assert (=> d!1212629 (= c!704016 ((_ is Nil!43769) rules!3870))))

(assert (=> d!1212629 (= (size!32692 rules!3870) lt!1460772)))

(declare-fun b!4083402 () Bool)

(assert (=> b!4083402 (= e!2534414 0)))

(declare-fun b!4083403 () Bool)

(assert (=> b!4083403 (= e!2534414 (+ 1 (size!32692 (t!337924 rules!3870))))))

(assert (= (and d!1212629 c!704016) b!4083402))

(assert (= (and d!1212629 (not c!704016)) b!4083403))

(declare-fun m!4690661 () Bool)

(assert (=> b!4083403 m!4690661))

(assert (=> b!4083385 d!1212629))

(declare-fun d!1212633 () Bool)

(assert (=> d!1212633 (= (isEmpty!26162 p!2988) ((_ is Nil!43767) p!2988))))

(assert (=> b!4083375 d!1212633))

(declare-fun d!1212635 () Bool)

(declare-fun res!1668404 () Bool)

(declare-fun e!2534417 () Bool)

(assert (=> d!1212635 (=> (not res!1668404) (not e!2534417))))

(declare-fun rulesValid!2764 (LexerInterface!6657 List!43893) Bool)

(assert (=> d!1212635 (= res!1668404 (rulesValid!2764 thiss!26199 rules!3870))))

(assert (=> d!1212635 (= (rulesInvariant!6000 thiss!26199 rules!3870) e!2534417)))

(declare-fun b!4083406 () Bool)

(declare-datatypes ((List!43895 0))(
  ( (Nil!43771) (Cons!43771 (h!49191 String!50240) (t!337950 List!43895)) )
))
(declare-fun noDuplicateTag!2765 (LexerInterface!6657 List!43893 List!43895) Bool)

(assert (=> b!4083406 (= e!2534417 (noDuplicateTag!2765 thiss!26199 rules!3870 Nil!43771))))

(assert (= (and d!1212635 res!1668404) b!4083406))

(declare-fun m!4690663 () Bool)

(assert (=> d!1212635 m!4690663))

(declare-fun m!4690665 () Bool)

(assert (=> b!4083406 m!4690665))

(assert (=> b!4083381 d!1212635))

(declare-fun b!4083444 () Bool)

(declare-fun e!2534436 () List!43891)

(assert (=> b!4083444 (= e!2534436 (Cons!43767 (h!49187 p!2988) (++!11474 (t!337922 p!2988) suffix!1518)))))

(declare-fun b!4083445 () Bool)

(declare-fun res!1668426 () Bool)

(declare-fun e!2534437 () Bool)

(assert (=> b!4083445 (=> (not res!1668426) (not e!2534437))))

(declare-fun lt!1460777 () List!43891)

(assert (=> b!4083445 (= res!1668426 (= (size!32691 lt!1460777) (+ (size!32691 p!2988) (size!32691 suffix!1518))))))

(declare-fun b!4083443 () Bool)

(assert (=> b!4083443 (= e!2534436 suffix!1518)))

(declare-fun b!4083446 () Bool)

(assert (=> b!4083446 (= e!2534437 (or (not (= suffix!1518 Nil!43767)) (= lt!1460777 p!2988)))))

(declare-fun d!1212637 () Bool)

(assert (=> d!1212637 e!2534437))

(declare-fun res!1668425 () Bool)

(assert (=> d!1212637 (=> (not res!1668425) (not e!2534437))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6722 (List!43891) (InoxSet C!24132))

(assert (=> d!1212637 (= res!1668425 (= (content!6722 lt!1460777) ((_ map or) (content!6722 p!2988) (content!6722 suffix!1518))))))

(assert (=> d!1212637 (= lt!1460777 e!2534436)))

(declare-fun c!704025 () Bool)

(assert (=> d!1212637 (= c!704025 ((_ is Nil!43767) p!2988))))

(assert (=> d!1212637 (= (++!11474 p!2988 suffix!1518) lt!1460777)))

(assert (= (and d!1212637 c!704025) b!4083443))

(assert (= (and d!1212637 (not c!704025)) b!4083444))

(assert (= (and d!1212637 res!1668425) b!4083445))

(assert (= (and b!4083445 res!1668426) b!4083446))

(declare-fun m!4690667 () Bool)

(assert (=> b!4083444 m!4690667))

(declare-fun m!4690669 () Bool)

(assert (=> b!4083445 m!4690669))

(assert (=> b!4083445 m!4690643))

(declare-fun m!4690671 () Bool)

(assert (=> b!4083445 m!4690671))

(declare-fun m!4690673 () Bool)

(assert (=> d!1212637 m!4690673))

(declare-fun m!4690675 () Bool)

(assert (=> d!1212637 m!4690675))

(declare-fun m!4690677 () Bool)

(assert (=> d!1212637 m!4690677))

(assert (=> b!4083387 d!1212637))

(declare-fun b!4083503 () Bool)

(declare-fun res!1668468 () Bool)

(declare-fun e!2534477 () Bool)

(assert (=> b!4083503 (=> res!1668468 e!2534477)))

(assert (=> b!4083503 (= res!1668468 (not ((_ is ElementMatch!11973) (regex!7068 r!4213))))))

(declare-fun e!2534472 () Bool)

(assert (=> b!4083503 (= e!2534472 e!2534477)))

(declare-fun b!4083504 () Bool)

(declare-fun e!2534476 () Bool)

(assert (=> b!4083504 (= e!2534476 e!2534472)))

(declare-fun c!704036 () Bool)

(assert (=> b!4083504 (= c!704036 ((_ is EmptyLang!11973) (regex!7068 r!4213)))))

(declare-fun b!4083505 () Bool)

(declare-fun e!2534474 () Bool)

(declare-fun head!8629 (List!43891) C!24132)

(assert (=> b!4083505 (= e!2534474 (= (head!8629 p!2988) (c!704012 (regex!7068 r!4213))))))

(declare-fun b!4083506 () Bool)

(declare-fun lt!1460787 () Bool)

(declare-fun call!288722 () Bool)

(assert (=> b!4083506 (= e!2534476 (= lt!1460787 call!288722))))

(declare-fun b!4083507 () Bool)

(declare-fun e!2534475 () Bool)

(declare-fun e!2534473 () Bool)

(assert (=> b!4083507 (= e!2534475 e!2534473)))

(declare-fun res!1668466 () Bool)

(assert (=> b!4083507 (=> res!1668466 e!2534473)))

(assert (=> b!4083507 (= res!1668466 call!288722)))

(declare-fun b!4083509 () Bool)

(assert (=> b!4083509 (= e!2534472 (not lt!1460787))))

(declare-fun b!4083510 () Bool)

(declare-fun res!1668464 () Bool)

(assert (=> b!4083510 (=> (not res!1668464) (not e!2534474))))

(assert (=> b!4083510 (= res!1668464 (not call!288722))))

(declare-fun b!4083511 () Bool)

(assert (=> b!4083511 (= e!2534477 e!2534475)))

(declare-fun res!1668467 () Bool)

(assert (=> b!4083511 (=> (not res!1668467) (not e!2534475))))

(assert (=> b!4083511 (= res!1668467 (not lt!1460787))))

(declare-fun b!4083512 () Bool)

(declare-fun res!1668469 () Bool)

(assert (=> b!4083512 (=> res!1668469 e!2534477)))

(assert (=> b!4083512 (= res!1668469 e!2534474)))

(declare-fun res!1668470 () Bool)

(assert (=> b!4083512 (=> (not res!1668470) (not e!2534474))))

(assert (=> b!4083512 (= res!1668470 lt!1460787)))

(declare-fun b!4083513 () Bool)

(declare-fun e!2534471 () Bool)

(declare-fun derivativeStep!3619 (Regex!11973 C!24132) Regex!11973)

(declare-fun tail!6363 (List!43891) List!43891)

(assert (=> b!4083513 (= e!2534471 (matchR!5914 (derivativeStep!3619 (regex!7068 r!4213) (head!8629 p!2988)) (tail!6363 p!2988)))))

(declare-fun b!4083514 () Bool)

(assert (=> b!4083514 (= e!2534473 (not (= (head!8629 p!2988) (c!704012 (regex!7068 r!4213)))))))

(declare-fun bm!288717 () Bool)

(assert (=> bm!288717 (= call!288722 (isEmpty!26162 p!2988))))

(declare-fun b!4083508 () Bool)

(declare-fun res!1668465 () Bool)

(assert (=> b!4083508 (=> (not res!1668465) (not e!2534474))))

(assert (=> b!4083508 (= res!1668465 (isEmpty!26162 (tail!6363 p!2988)))))

(declare-fun d!1212639 () Bool)

(assert (=> d!1212639 e!2534476))

(declare-fun c!704037 () Bool)

(assert (=> d!1212639 (= c!704037 ((_ is EmptyExpr!11973) (regex!7068 r!4213)))))

(assert (=> d!1212639 (= lt!1460787 e!2534471)))

(declare-fun c!704035 () Bool)

(assert (=> d!1212639 (= c!704035 (isEmpty!26162 p!2988))))

(declare-fun validRegex!5418 (Regex!11973) Bool)

(assert (=> d!1212639 (validRegex!5418 (regex!7068 r!4213))))

(assert (=> d!1212639 (= (matchR!5914 (regex!7068 r!4213) p!2988) lt!1460787)))

(declare-fun b!4083515 () Bool)

(declare-fun nullable!4218 (Regex!11973) Bool)

(assert (=> b!4083515 (= e!2534471 (nullable!4218 (regex!7068 r!4213)))))

(declare-fun b!4083516 () Bool)

(declare-fun res!1668463 () Bool)

(assert (=> b!4083516 (=> res!1668463 e!2534473)))

(assert (=> b!4083516 (= res!1668463 (not (isEmpty!26162 (tail!6363 p!2988))))))

(assert (= (and d!1212639 c!704035) b!4083515))

(assert (= (and d!1212639 (not c!704035)) b!4083513))

(assert (= (and d!1212639 c!704037) b!4083506))

(assert (= (and d!1212639 (not c!704037)) b!4083504))

(assert (= (and b!4083504 c!704036) b!4083509))

(assert (= (and b!4083504 (not c!704036)) b!4083503))

(assert (= (and b!4083503 (not res!1668468)) b!4083512))

(assert (= (and b!4083512 res!1668470) b!4083510))

(assert (= (and b!4083510 res!1668464) b!4083508))

(assert (= (and b!4083508 res!1668465) b!4083505))

(assert (= (and b!4083512 (not res!1668469)) b!4083511))

(assert (= (and b!4083511 res!1668467) b!4083507))

(assert (= (and b!4083507 (not res!1668466)) b!4083516))

(assert (= (and b!4083516 (not res!1668463)) b!4083514))

(assert (= (or b!4083506 b!4083507 b!4083510) bm!288717))

(declare-fun m!4690705 () Bool)

(assert (=> b!4083508 m!4690705))

(assert (=> b!4083508 m!4690705))

(declare-fun m!4690707 () Bool)

(assert (=> b!4083508 m!4690707))

(declare-fun m!4690709 () Bool)

(assert (=> b!4083505 m!4690709))

(declare-fun m!4690711 () Bool)

(assert (=> b!4083515 m!4690711))

(assert (=> b!4083513 m!4690709))

(assert (=> b!4083513 m!4690709))

(declare-fun m!4690713 () Bool)

(assert (=> b!4083513 m!4690713))

(assert (=> b!4083513 m!4690705))

(assert (=> b!4083513 m!4690713))

(assert (=> b!4083513 m!4690705))

(declare-fun m!4690715 () Bool)

(assert (=> b!4083513 m!4690715))

(assert (=> b!4083516 m!4690705))

(assert (=> b!4083516 m!4690705))

(assert (=> b!4083516 m!4690707))

(assert (=> b!4083514 m!4690709))

(assert (=> d!1212639 m!4690631))

(declare-fun m!4690717 () Bool)

(assert (=> d!1212639 m!4690717))

(assert (=> bm!288717 m!4690631))

(assert (=> b!4083376 d!1212639))

(declare-fun d!1212651 () Bool)

(declare-fun res!1668475 () Bool)

(declare-fun e!2534480 () Bool)

(assert (=> d!1212651 (=> (not res!1668475) (not e!2534480))))

(assert (=> d!1212651 (= res!1668475 (validRegex!5418 (regex!7068 r!4213)))))

(assert (=> d!1212651 (= (ruleValid!2988 thiss!26199 r!4213) e!2534480)))

(declare-fun b!4083521 () Bool)

(declare-fun res!1668476 () Bool)

(assert (=> b!4083521 (=> (not res!1668476) (not e!2534480))))

(assert (=> b!4083521 (= res!1668476 (not (nullable!4218 (regex!7068 r!4213))))))

(declare-fun b!4083522 () Bool)

(assert (=> b!4083522 (= e!2534480 (not (= (tag!7928 r!4213) (String!50241 ""))))))

(assert (= (and d!1212651 res!1668475) b!4083521))

(assert (= (and b!4083521 res!1668476) b!4083522))

(assert (=> d!1212651 m!4690717))

(assert (=> b!4083521 m!4690711))

(assert (=> b!4083376 d!1212651))

(declare-fun d!1212653 () Bool)

(assert (=> d!1212653 (ruleValid!2988 thiss!26199 r!4213)))

(declare-fun lt!1460790 () Unit!63295)

(declare-fun choose!24930 (LexerInterface!6657 Rule!13936 List!43893) Unit!63295)

(assert (=> d!1212653 (= lt!1460790 (choose!24930 thiss!26199 r!4213 rules!3870))))

(assert (=> d!1212653 (contains!8741 rules!3870 r!4213)))

(assert (=> d!1212653 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2054 thiss!26199 r!4213 rules!3870) lt!1460790)))

(declare-fun bs!592980 () Bool)

(assert (= bs!592980 d!1212653))

(assert (=> bs!592980 m!4690619))

(declare-fun m!4690719 () Bool)

(assert (=> bs!592980 m!4690719))

(assert (=> bs!592980 m!4690615))

(assert (=> b!4083376 d!1212653))

(declare-fun d!1212655 () Bool)

(declare-fun lt!1460793 () Bool)

(declare-fun content!6723 (List!43893) (InoxSet Rule!13936))

(assert (=> d!1212655 (= lt!1460793 (select (content!6723 rules!3870) r!4213))))

(declare-fun e!2534486 () Bool)

(assert (=> d!1212655 (= lt!1460793 e!2534486)))

(declare-fun res!1668482 () Bool)

(assert (=> d!1212655 (=> (not res!1668482) (not e!2534486))))

(assert (=> d!1212655 (= res!1668482 ((_ is Cons!43769) rules!3870))))

(assert (=> d!1212655 (= (contains!8741 rules!3870 r!4213) lt!1460793)))

(declare-fun b!4083527 () Bool)

(declare-fun e!2534485 () Bool)

(assert (=> b!4083527 (= e!2534486 e!2534485)))

(declare-fun res!1668481 () Bool)

(assert (=> b!4083527 (=> res!1668481 e!2534485)))

(assert (=> b!4083527 (= res!1668481 (= (h!49189 rules!3870) r!4213))))

(declare-fun b!4083528 () Bool)

(assert (=> b!4083528 (= e!2534485 (contains!8741 (t!337924 rules!3870) r!4213))))

(assert (= (and d!1212655 res!1668482) b!4083527))

(assert (= (and b!4083527 (not res!1668481)) b!4083528))

(declare-fun m!4690721 () Bool)

(assert (=> d!1212655 m!4690721))

(declare-fun m!4690723 () Bool)

(assert (=> d!1212655 m!4690723))

(declare-fun m!4690725 () Bool)

(assert (=> b!4083528 m!4690725))

(assert (=> b!4083377 d!1212655))

(declare-fun d!1212657 () Bool)

(assert (=> d!1212657 (= (isEmpty!26163 rules!3870) ((_ is Nil!43769) rules!3870))))

(assert (=> b!4083382 d!1212657))

(declare-fun d!1212659 () Bool)

(declare-fun dynLambda!18666 (Int BalanceConc!26152) TokenValue!7298)

(assert (=> d!1212659 (= (apply!10251 (transformation!7068 r!4213) lt!1460769) (dynLambda!18666 (toValue!9644 (transformation!7068 r!4213)) lt!1460769))))

(declare-fun b_lambda!119473 () Bool)

(assert (=> (not b_lambda!119473) (not d!1212659)))

(declare-fun t!337930 () Bool)

(declare-fun tb!245261 () Bool)

(assert (=> (and b!4083386 (= (toValue!9644 (transformation!7068 r!4213)) (toValue!9644 (transformation!7068 r!4213))) t!337930) tb!245261))

(declare-fun result!297540 () Bool)

(declare-fun inv!21 (TokenValue!7298) Bool)

(assert (=> tb!245261 (= result!297540 (inv!21 (dynLambda!18666 (toValue!9644 (transformation!7068 r!4213)) lt!1460769)))))

(declare-fun m!4690727 () Bool)

(assert (=> tb!245261 m!4690727))

(assert (=> d!1212659 t!337930))

(declare-fun b_and!314283 () Bool)

(assert (= b_and!314271 (and (=> t!337930 result!297540) b_and!314283)))

(declare-fun tb!245263 () Bool)

(declare-fun t!337932 () Bool)

(assert (=> (and b!4083378 (= (toValue!9644 (transformation!7068 (h!49189 rules!3870))) (toValue!9644 (transformation!7068 r!4213))) t!337932) tb!245263))

(declare-fun result!297544 () Bool)

(assert (= result!297544 result!297540))

(assert (=> d!1212659 t!337932))

(declare-fun b_and!314285 () Bool)

(assert (= b_and!314275 (and (=> t!337932 result!297544) b_and!314285)))

(declare-fun m!4690729 () Bool)

(assert (=> d!1212659 m!4690729))

(assert (=> b!4083383 d!1212659))

(declare-fun b!4083582 () Bool)

(declare-fun res!1668524 () Bool)

(declare-fun e!2534510 () Bool)

(assert (=> b!4083582 (=> (not res!1668524) (not e!2534510))))

(declare-fun lt!1460824 () Option!9474)

(declare-fun get!14354 (Option!9474) tuple2!42714)

(declare-fun list!16258 (BalanceConc!26152) List!43891)

(declare-fun charsOf!4836 (Token!13262) BalanceConc!26152)

(assert (=> b!4083582 (= res!1668524 (matchR!5914 (regex!7068 (rule!10192 (_1!24491 (get!14354 lt!1460824)))) (list!16258 (charsOf!4836 (_1!24491 (get!14354 lt!1460824))))))))

(declare-fun b!4083583 () Bool)

(declare-fun res!1668523 () Bool)

(assert (=> b!4083583 (=> (not res!1668523) (not e!2534510))))

(assert (=> b!4083583 (= res!1668523 (= (++!11474 (list!16258 (charsOf!4836 (_1!24491 (get!14354 lt!1460824)))) (_2!24491 (get!14354 lt!1460824))) input!3411))))

(declare-fun b!4083584 () Bool)

(declare-fun e!2534509 () Option!9474)

(declare-fun lt!1460825 () Option!9474)

(declare-fun lt!1460828 () Option!9474)

(assert (=> b!4083584 (= e!2534509 (ite (and ((_ is None!9473) lt!1460825) ((_ is None!9473) lt!1460828)) None!9473 (ite ((_ is None!9473) lt!1460828) lt!1460825 (ite ((_ is None!9473) lt!1460825) lt!1460828 (ite (>= (size!32690 (_1!24491 (v!39941 lt!1460825))) (size!32690 (_1!24491 (v!39941 lt!1460828)))) lt!1460825 lt!1460828)))))))

(declare-fun call!288728 () Option!9474)

(assert (=> b!4083584 (= lt!1460825 call!288728)))

(assert (=> b!4083584 (= lt!1460828 (maxPrefix!3947 thiss!26199 (t!337924 rules!3870) input!3411))))

(declare-fun b!4083585 () Bool)

(declare-fun res!1668521 () Bool)

(assert (=> b!4083585 (=> (not res!1668521) (not e!2534510))))

(assert (=> b!4083585 (= res!1668521 (< (size!32691 (_2!24491 (get!14354 lt!1460824))) (size!32691 input!3411)))))

(declare-fun b!4083586 () Bool)

(assert (=> b!4083586 (= e!2534509 call!288728)))

(declare-fun b!4083587 () Bool)

(assert (=> b!4083587 (= e!2534510 (contains!8741 rules!3870 (rule!10192 (_1!24491 (get!14354 lt!1460824)))))))

(declare-fun d!1212661 () Bool)

(declare-fun e!2534508 () Bool)

(assert (=> d!1212661 e!2534508))

(declare-fun res!1668520 () Bool)

(assert (=> d!1212661 (=> res!1668520 e!2534508)))

(declare-fun isEmpty!26165 (Option!9474) Bool)

(assert (=> d!1212661 (= res!1668520 (isEmpty!26165 lt!1460824))))

(assert (=> d!1212661 (= lt!1460824 e!2534509)))

(declare-fun c!704047 () Bool)

(assert (=> d!1212661 (= c!704047 (and ((_ is Cons!43769) rules!3870) ((_ is Nil!43769) (t!337924 rules!3870))))))

(declare-fun lt!1460826 () Unit!63295)

(declare-fun lt!1460827 () Unit!63295)

(assert (=> d!1212661 (= lt!1460826 lt!1460827)))

(declare-fun isPrefix!4123 (List!43891 List!43891) Bool)

(assert (=> d!1212661 (isPrefix!4123 input!3411 input!3411)))

(declare-fun lemmaIsPrefixRefl!2674 (List!43891 List!43891) Unit!63295)

(assert (=> d!1212661 (= lt!1460827 (lemmaIsPrefixRefl!2674 input!3411 input!3411))))

(declare-fun rulesValidInductive!2605 (LexerInterface!6657 List!43893) Bool)

(assert (=> d!1212661 (rulesValidInductive!2605 thiss!26199 rules!3870)))

(assert (=> d!1212661 (= (maxPrefix!3947 thiss!26199 rules!3870 input!3411) lt!1460824)))

(declare-fun b!4083588 () Bool)

(assert (=> b!4083588 (= e!2534508 e!2534510)))

(declare-fun res!1668518 () Bool)

(assert (=> b!4083588 (=> (not res!1668518) (not e!2534510))))

(declare-fun isDefined!7172 (Option!9474) Bool)

(assert (=> b!4083588 (= res!1668518 (isDefined!7172 lt!1460824))))

(declare-fun b!4083589 () Bool)

(declare-fun res!1668519 () Bool)

(assert (=> b!4083589 (=> (not res!1668519) (not e!2534510))))

(assert (=> b!4083589 (= res!1668519 (= (list!16258 (charsOf!4836 (_1!24491 (get!14354 lt!1460824)))) (originalCharacters!7662 (_1!24491 (get!14354 lt!1460824)))))))

(declare-fun b!4083590 () Bool)

(declare-fun res!1668522 () Bool)

(assert (=> b!4083590 (=> (not res!1668522) (not e!2534510))))

(assert (=> b!4083590 (= res!1668522 (= (value!222090 (_1!24491 (get!14354 lt!1460824))) (apply!10251 (transformation!7068 (rule!10192 (_1!24491 (get!14354 lt!1460824)))) (seqFromList!5285 (originalCharacters!7662 (_1!24491 (get!14354 lt!1460824)))))))))

(declare-fun bm!288723 () Bool)

(declare-fun maxPrefixOneRule!2935 (LexerInterface!6657 Rule!13936 List!43891) Option!9474)

(assert (=> bm!288723 (= call!288728 (maxPrefixOneRule!2935 thiss!26199 (h!49189 rules!3870) input!3411))))

(assert (= (and d!1212661 c!704047) b!4083586))

(assert (= (and d!1212661 (not c!704047)) b!4083584))

(assert (= (or b!4083586 b!4083584) bm!288723))

(assert (= (and d!1212661 (not res!1668520)) b!4083588))

(assert (= (and b!4083588 res!1668518) b!4083589))

(assert (= (and b!4083589 res!1668519) b!4083585))

(assert (= (and b!4083585 res!1668521) b!4083583))

(assert (= (and b!4083583 res!1668523) b!4083590))

(assert (= (and b!4083590 res!1668522) b!4083582))

(assert (= (and b!4083582 res!1668524) b!4083587))

(declare-fun m!4690769 () Bool)

(assert (=> d!1212661 m!4690769))

(declare-fun m!4690771 () Bool)

(assert (=> d!1212661 m!4690771))

(declare-fun m!4690773 () Bool)

(assert (=> d!1212661 m!4690773))

(declare-fun m!4690775 () Bool)

(assert (=> d!1212661 m!4690775))

(declare-fun m!4690777 () Bool)

(assert (=> b!4083588 m!4690777))

(declare-fun m!4690779 () Bool)

(assert (=> b!4083587 m!4690779))

(declare-fun m!4690781 () Bool)

(assert (=> b!4083587 m!4690781))

(declare-fun m!4690783 () Bool)

(assert (=> b!4083584 m!4690783))

(assert (=> b!4083583 m!4690779))

(declare-fun m!4690785 () Bool)

(assert (=> b!4083583 m!4690785))

(assert (=> b!4083583 m!4690785))

(declare-fun m!4690787 () Bool)

(assert (=> b!4083583 m!4690787))

(assert (=> b!4083583 m!4690787))

(declare-fun m!4690789 () Bool)

(assert (=> b!4083583 m!4690789))

(assert (=> b!4083585 m!4690779))

(declare-fun m!4690791 () Bool)

(assert (=> b!4083585 m!4690791))

(declare-fun m!4690793 () Bool)

(assert (=> b!4083585 m!4690793))

(assert (=> b!4083582 m!4690779))

(assert (=> b!4083582 m!4690785))

(assert (=> b!4083582 m!4690785))

(assert (=> b!4083582 m!4690787))

(assert (=> b!4083582 m!4690787))

(declare-fun m!4690795 () Bool)

(assert (=> b!4083582 m!4690795))

(assert (=> b!4083589 m!4690779))

(assert (=> b!4083589 m!4690785))

(assert (=> b!4083589 m!4690785))

(assert (=> b!4083589 m!4690787))

(declare-fun m!4690797 () Bool)

(assert (=> bm!288723 m!4690797))

(assert (=> b!4083590 m!4690779))

(declare-fun m!4690799 () Bool)

(assert (=> b!4083590 m!4690799))

(assert (=> b!4083590 m!4690799))

(declare-fun m!4690801 () Bool)

(assert (=> b!4083590 m!4690801))

(assert (=> b!4083383 d!1212661))

(declare-fun d!1212669 () Bool)

(declare-fun lt!1460831 () Int)

(assert (=> d!1212669 (>= lt!1460831 0)))

(declare-fun e!2534513 () Int)

(assert (=> d!1212669 (= lt!1460831 e!2534513)))

(declare-fun c!704050 () Bool)

(assert (=> d!1212669 (= c!704050 ((_ is Nil!43767) p!2988))))

(assert (=> d!1212669 (= (size!32691 p!2988) lt!1460831)))

(declare-fun b!4083595 () Bool)

(assert (=> b!4083595 (= e!2534513 0)))

(declare-fun b!4083596 () Bool)

(assert (=> b!4083596 (= e!2534513 (+ 1 (size!32691 (t!337922 p!2988))))))

(assert (= (and d!1212669 c!704050) b!4083595))

(assert (= (and d!1212669 (not c!704050)) b!4083596))

(declare-fun m!4690803 () Bool)

(assert (=> b!4083596 m!4690803))

(assert (=> b!4083383 d!1212669))

(declare-fun d!1212671 () Bool)

(declare-fun fromListB!2416 (List!43891) BalanceConc!26152)

(assert (=> d!1212671 (= (seqFromList!5285 p!2988) (fromListB!2416 p!2988))))

(declare-fun bs!592982 () Bool)

(assert (= bs!592982 d!1212671))

(declare-fun m!4690805 () Bool)

(assert (=> bs!592982 m!4690805))

(assert (=> b!4083383 d!1212671))

(declare-fun b!4083669 () Bool)

(declare-fun e!2534556 () Bool)

(assert (=> b!4083669 (= e!2534556 true)))

(declare-fun d!1212673 () Bool)

(assert (=> d!1212673 e!2534556))

(assert (= d!1212673 b!4083669))

(declare-fun order!22947 () Int)

(declare-fun order!22945 () Int)

(declare-fun lambda!127847 () Int)

(declare-fun dynLambda!18667 (Int Int) Int)

(declare-fun dynLambda!18668 (Int Int) Int)

(assert (=> b!4083669 (< (dynLambda!18667 order!22945 (toValue!9644 (transformation!7068 r!4213))) (dynLambda!18668 order!22947 lambda!127847))))

(declare-fun order!22949 () Int)

(declare-fun dynLambda!18669 (Int Int) Int)

(assert (=> b!4083669 (< (dynLambda!18669 order!22949 (toChars!9503 (transformation!7068 r!4213))) (dynLambda!18668 order!22947 lambda!127847))))

(declare-fun dynLambda!18670 (Int TokenValue!7298) BalanceConc!26152)

(assert (=> d!1212673 (= (list!16258 (dynLambda!18670 (toChars!9503 (transformation!7068 r!4213)) (dynLambda!18666 (toValue!9644 (transformation!7068 r!4213)) lt!1460769))) (list!16258 lt!1460769))))

(declare-fun lt!1460841 () Unit!63295)

(declare-fun ForallOf!869 (Int BalanceConc!26152) Unit!63295)

(assert (=> d!1212673 (= lt!1460841 (ForallOf!869 lambda!127847 lt!1460769))))

(assert (=> d!1212673 (= (lemmaSemiInverse!2035 (transformation!7068 r!4213) lt!1460769) lt!1460841)))

(declare-fun b_lambda!119485 () Bool)

(assert (=> (not b_lambda!119485) (not d!1212673)))

(declare-fun t!337942 () Bool)

(declare-fun tb!245273 () Bool)

(assert (=> (and b!4083386 (= (toChars!9503 (transformation!7068 r!4213)) (toChars!9503 (transformation!7068 r!4213))) t!337942) tb!245273))

(declare-fun b!4083674 () Bool)

(declare-fun tp!1236427 () Bool)

(declare-fun e!2534559 () Bool)

(declare-fun inv!58443 (Conc!13279) Bool)

(assert (=> b!4083674 (= e!2534559 (and (inv!58443 (c!704013 (dynLambda!18670 (toChars!9503 (transformation!7068 r!4213)) (dynLambda!18666 (toValue!9644 (transformation!7068 r!4213)) lt!1460769)))) tp!1236427))))

(declare-fun result!297562 () Bool)

(declare-fun inv!58444 (BalanceConc!26152) Bool)

(assert (=> tb!245273 (= result!297562 (and (inv!58444 (dynLambda!18670 (toChars!9503 (transformation!7068 r!4213)) (dynLambda!18666 (toValue!9644 (transformation!7068 r!4213)) lt!1460769))) e!2534559))))

(assert (= tb!245273 b!4083674))

(declare-fun m!4690845 () Bool)

(assert (=> b!4083674 m!4690845))

(declare-fun m!4690847 () Bool)

(assert (=> tb!245273 m!4690847))

(assert (=> d!1212673 t!337942))

(declare-fun b_and!314299 () Bool)

(assert (= b_and!314273 (and (=> t!337942 result!297562) b_and!314299)))

(declare-fun t!337944 () Bool)

(declare-fun tb!245275 () Bool)

(assert (=> (and b!4083378 (= (toChars!9503 (transformation!7068 (h!49189 rules!3870))) (toChars!9503 (transformation!7068 r!4213))) t!337944) tb!245275))

(declare-fun result!297566 () Bool)

(assert (= result!297566 result!297562))

(assert (=> d!1212673 t!337944))

(declare-fun b_and!314301 () Bool)

(assert (= b_and!314277 (and (=> t!337944 result!297566) b_and!314301)))

(declare-fun b_lambda!119487 () Bool)

(assert (=> (not b_lambda!119487) (not d!1212673)))

(assert (=> d!1212673 t!337930))

(declare-fun b_and!314303 () Bool)

(assert (= b_and!314283 (and (=> t!337930 result!297540) b_and!314303)))

(assert (=> d!1212673 t!337932))

(declare-fun b_and!314305 () Bool)

(assert (= b_and!314285 (and (=> t!337932 result!297544) b_and!314305)))

(declare-fun m!4690849 () Bool)

(assert (=> d!1212673 m!4690849))

(declare-fun m!4690851 () Bool)

(assert (=> d!1212673 m!4690851))

(declare-fun m!4690853 () Bool)

(assert (=> d!1212673 m!4690853))

(assert (=> d!1212673 m!4690729))

(declare-fun m!4690855 () Bool)

(assert (=> d!1212673 m!4690855))

(assert (=> d!1212673 m!4690729))

(assert (=> d!1212673 m!4690849))

(assert (=> b!4083383 d!1212673))

(declare-fun b!4083686 () Bool)

(declare-fun e!2534562 () Bool)

(declare-fun tp!1236440 () Bool)

(declare-fun tp!1236439 () Bool)

(assert (=> b!4083686 (= e!2534562 (and tp!1236440 tp!1236439))))

(declare-fun b!4083687 () Bool)

(declare-fun tp!1236438 () Bool)

(assert (=> b!4083687 (= e!2534562 tp!1236438)))

(declare-fun b!4083688 () Bool)

(declare-fun tp!1236442 () Bool)

(declare-fun tp!1236441 () Bool)

(assert (=> b!4083688 (= e!2534562 (and tp!1236442 tp!1236441))))

(assert (=> b!4083379 (= tp!1236380 e!2534562)))

(declare-fun b!4083685 () Bool)

(assert (=> b!4083685 (= e!2534562 tp_is_empty!20949)))

(assert (= (and b!4083379 ((_ is ElementMatch!11973) (regex!7068 r!4213))) b!4083685))

(assert (= (and b!4083379 ((_ is Concat!19272) (regex!7068 r!4213))) b!4083686))

(assert (= (and b!4083379 ((_ is Star!11973) (regex!7068 r!4213))) b!4083687))

(assert (= (and b!4083379 ((_ is Union!11973) (regex!7068 r!4213))) b!4083688))

(declare-fun b!4083690 () Bool)

(declare-fun e!2534563 () Bool)

(declare-fun tp!1236445 () Bool)

(declare-fun tp!1236444 () Bool)

(assert (=> b!4083690 (= e!2534563 (and tp!1236445 tp!1236444))))

(declare-fun b!4083691 () Bool)

(declare-fun tp!1236443 () Bool)

(assert (=> b!4083691 (= e!2534563 tp!1236443)))

(declare-fun b!4083692 () Bool)

(declare-fun tp!1236447 () Bool)

(declare-fun tp!1236446 () Bool)

(assert (=> b!4083692 (= e!2534563 (and tp!1236447 tp!1236446))))

(assert (=> b!4083384 (= tp!1236384 e!2534563)))

(declare-fun b!4083689 () Bool)

(assert (=> b!4083689 (= e!2534563 tp_is_empty!20949)))

(assert (= (and b!4083384 ((_ is ElementMatch!11973) (regex!7068 (h!49189 rules!3870)))) b!4083689))

(assert (= (and b!4083384 ((_ is Concat!19272) (regex!7068 (h!49189 rules!3870)))) b!4083690))

(assert (= (and b!4083384 ((_ is Star!11973) (regex!7068 (h!49189 rules!3870)))) b!4083691))

(assert (= (and b!4083384 ((_ is Union!11973) (regex!7068 (h!49189 rules!3870)))) b!4083692))

(declare-fun b!4083697 () Bool)

(declare-fun e!2534566 () Bool)

(declare-fun tp!1236450 () Bool)

(assert (=> b!4083697 (= e!2534566 (and tp_is_empty!20949 tp!1236450))))

(assert (=> b!4083390 (= tp!1236376 e!2534566)))

(assert (= (and b!4083390 ((_ is Cons!43767) (t!337922 p!2988))) b!4083697))

(declare-fun b!4083698 () Bool)

(declare-fun e!2534567 () Bool)

(declare-fun tp!1236451 () Bool)

(assert (=> b!4083698 (= e!2534567 (and tp_is_empty!20949 tp!1236451))))

(assert (=> b!4083380 (= tp!1236379 e!2534567)))

(assert (= (and b!4083380 ((_ is Cons!43767) (t!337922 suffix!1518))) b!4083698))

(declare-fun b!4083699 () Bool)

(declare-fun e!2534568 () Bool)

(declare-fun tp!1236452 () Bool)

(assert (=> b!4083699 (= e!2534568 (and tp_is_empty!20949 tp!1236452))))

(assert (=> b!4083388 (= tp!1236377 e!2534568)))

(assert (= (and b!4083388 ((_ is Cons!43767) (t!337922 input!3411))) b!4083699))

(declare-fun b!4083710 () Bool)

(declare-fun b_free!114061 () Bool)

(declare-fun b_next!114765 () Bool)

(assert (=> b!4083710 (= b_free!114061 (not b_next!114765))))

(declare-fun t!337946 () Bool)

(declare-fun tb!245277 () Bool)

(assert (=> (and b!4083710 (= (toValue!9644 (transformation!7068 (h!49189 (t!337924 rules!3870)))) (toValue!9644 (transformation!7068 r!4213))) t!337946) tb!245277))

(declare-fun result!297574 () Bool)

(assert (= result!297574 result!297540))

(assert (=> d!1212659 t!337946))

(assert (=> d!1212673 t!337946))

(declare-fun b_and!314307 () Bool)

(declare-fun tp!1236461 () Bool)

(assert (=> b!4083710 (= tp!1236461 (and (=> t!337946 result!297574) b_and!314307))))

(declare-fun b_free!114063 () Bool)

(declare-fun b_next!114767 () Bool)

(assert (=> b!4083710 (= b_free!114063 (not b_next!114767))))

(declare-fun t!337948 () Bool)

(declare-fun tb!245279 () Bool)

(assert (=> (and b!4083710 (= (toChars!9503 (transformation!7068 (h!49189 (t!337924 rules!3870)))) (toChars!9503 (transformation!7068 r!4213))) t!337948) tb!245279))

(declare-fun result!297576 () Bool)

(assert (= result!297576 result!297562))

(assert (=> d!1212673 t!337948))

(declare-fun tp!1236463 () Bool)

(declare-fun b_and!314309 () Bool)

(assert (=> b!4083710 (= tp!1236463 (and (=> t!337948 result!297576) b_and!314309))))

(declare-fun e!2534578 () Bool)

(assert (=> b!4083710 (= e!2534578 (and tp!1236461 tp!1236463))))

(declare-fun b!4083709 () Bool)

(declare-fun e!2534579 () Bool)

(declare-fun tp!1236464 () Bool)

(assert (=> b!4083709 (= e!2534579 (and tp!1236464 (inv!58438 (tag!7928 (h!49189 (t!337924 rules!3870)))) (inv!58440 (transformation!7068 (h!49189 (t!337924 rules!3870)))) e!2534578))))

(declare-fun b!4083708 () Bool)

(declare-fun e!2534577 () Bool)

(declare-fun tp!1236462 () Bool)

(assert (=> b!4083708 (= e!2534577 (and e!2534579 tp!1236462))))

(assert (=> b!4083389 (= tp!1236383 e!2534577)))

(assert (= b!4083709 b!4083710))

(assert (= b!4083708 b!4083709))

(assert (= (and b!4083389 ((_ is Cons!43769) (t!337924 rules!3870))) b!4083708))

(declare-fun m!4690857 () Bool)

(assert (=> b!4083709 m!4690857))

(declare-fun m!4690859 () Bool)

(assert (=> b!4083709 m!4690859))

(declare-fun b_lambda!119489 () Bool)

(assert (= b_lambda!119485 (or (and b!4083386 b_free!114051) (and b!4083378 b_free!114055 (= (toChars!9503 (transformation!7068 (h!49189 rules!3870))) (toChars!9503 (transformation!7068 r!4213)))) (and b!4083710 b_free!114063 (= (toChars!9503 (transformation!7068 (h!49189 (t!337924 rules!3870)))) (toChars!9503 (transformation!7068 r!4213)))) b_lambda!119489)))

(declare-fun b_lambda!119491 () Bool)

(assert (= b_lambda!119473 (or (and b!4083386 b_free!114049) (and b!4083378 b_free!114053 (= (toValue!9644 (transformation!7068 (h!49189 rules!3870))) (toValue!9644 (transformation!7068 r!4213)))) (and b!4083710 b_free!114061 (= (toValue!9644 (transformation!7068 (h!49189 (t!337924 rules!3870)))) (toValue!9644 (transformation!7068 r!4213)))) b_lambda!119491)))

(declare-fun b_lambda!119493 () Bool)

(assert (= b_lambda!119487 (or (and b!4083386 b_free!114049) (and b!4083378 b_free!114053 (= (toValue!9644 (transformation!7068 (h!49189 rules!3870))) (toValue!9644 (transformation!7068 r!4213)))) (and b!4083710 b_free!114061 (= (toValue!9644 (transformation!7068 (h!49189 (t!337924 rules!3870)))) (toValue!9644 (transformation!7068 r!4213)))) b_lambda!119493)))

(check-sat (not b!4083445) (not b!4083406) (not b!4083697) (not b_next!114753) (not d!1212661) (not tb!245273) (not b!4083505) b_and!314299 (not bm!288723) (not b!4083521) (not b!4083691) (not d!1212671) (not b!4083513) (not b!4083590) (not b!4083692) (not b_next!114765) (not d!1212637) (not b!4083708) (not d!1212651) (not b_lambda!119491) (not b_next!114755) (not b!4083584) (not b!4083508) (not b!4083596) (not b!4083393) (not b!4083444) (not b!4083698) (not b!4083690) (not b!4083589) (not b!4083686) (not b!4083582) (not b!4083587) (not tb!245261) (not d!1212635) (not d!1212673) (not b_next!114757) (not b!4083394) (not b!4083528) (not b!4083674) b_and!314307 (not d!1212653) b_and!314303 tp_is_empty!20949 (not b_lambda!119493) (not b!4083699) (not b_lambda!119489) b_and!314301 (not b!4083585) (not b!4083516) (not d!1212627) (not b!4083588) (not b_next!114767) b_and!314309 (not b!4083709) (not d!1212639) (not b!4083687) (not bm!288717) (not b!4083583) (not b!4083514) (not b_next!114759) (not b!4083403) (not b!4083688) (not d!1212655) (not b!4083515) b_and!314305 (not d!1212619))
(check-sat (not b_next!114765) (not b_next!114755) (not b_next!114753) (not b_next!114757) b_and!314299 (not b_next!114759) b_and!314305 b_and!314307 b_and!314303 b_and!314301 (not b_next!114767) b_and!314309)
