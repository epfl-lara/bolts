; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!179710 () Bool)

(assert start!179710)

(declare-fun b!1816449 () Bool)

(declare-fun b_free!50167 () Bool)

(declare-fun b_next!50871 () Bool)

(assert (=> b!1816449 (= b_free!50167 (not b_next!50871))))

(declare-fun tp!513098 () Bool)

(declare-fun b_and!140613 () Bool)

(assert (=> b!1816449 (= tp!513098 b_and!140613)))

(declare-fun b_free!50169 () Bool)

(declare-fun b_next!50873 () Bool)

(assert (=> b!1816449 (= b_free!50169 (not b_next!50873))))

(declare-fun tp!513106 () Bool)

(declare-fun b_and!140615 () Bool)

(assert (=> b!1816449 (= tp!513106 b_and!140615)))

(declare-fun b!1816454 () Bool)

(declare-fun b_free!50171 () Bool)

(declare-fun b_next!50875 () Bool)

(assert (=> b!1816454 (= b_free!50171 (not b_next!50875))))

(declare-fun tp!513104 () Bool)

(declare-fun b_and!140617 () Bool)

(assert (=> b!1816454 (= tp!513104 b_and!140617)))

(declare-fun b_free!50173 () Bool)

(declare-fun b_next!50877 () Bool)

(assert (=> b!1816454 (= b_free!50173 (not b_next!50877))))

(declare-fun tp!513097 () Bool)

(declare-fun b_and!140619 () Bool)

(assert (=> b!1816454 (= tp!513097 b_and!140619)))

(declare-fun b!1816457 () Bool)

(declare-fun b_free!50175 () Bool)

(declare-fun b_next!50879 () Bool)

(assert (=> b!1816457 (= b_free!50175 (not b_next!50879))))

(declare-fun tp!513105 () Bool)

(declare-fun b_and!140621 () Bool)

(assert (=> b!1816457 (= tp!513105 b_and!140621)))

(declare-fun b_free!50177 () Bool)

(declare-fun b_next!50881 () Bool)

(assert (=> b!1816457 (= b_free!50177 (not b_next!50881))))

(declare-fun tp!513101 () Bool)

(declare-fun b_and!140623 () Bool)

(assert (=> b!1816457 (= tp!513101 b_and!140623)))

(declare-fun res!816685 () Bool)

(declare-fun e!1160542 () Bool)

(assert (=> start!179710 (=> (not res!816685) (not e!1160542))))

(declare-datatypes ((LexerInterface!3198 0))(
  ( (LexerInterfaceExt!3195 (__x!12620 Int)) (Lexer!3196) )
))
(declare-fun thiss!28068 () LexerInterface!3198)

(get-info :version)

(assert (=> start!179710 (= res!816685 ((_ is Lexer!3196) thiss!28068))))

(assert (=> start!179710 e!1160542))

(declare-fun e!1160546 () Bool)

(assert (=> start!179710 e!1160546))

(assert (=> start!179710 true))

(declare-fun e!1160540 () Bool)

(assert (=> start!179710 e!1160540))

(declare-datatypes ((List!19913 0))(
  ( (Nil!19843) (Cons!19843 (h!25244 (_ BitVec 16)) (t!169582 List!19913)) )
))
(declare-datatypes ((TokenValue!3659 0))(
  ( (FloatLiteralValue!7318 (text!26058 List!19913)) (TokenValueExt!3658 (__x!12621 Int)) (Broken!18295 (value!111357 List!19913)) (Object!3728) (End!3659) (Def!3659) (Underscore!3659) (Match!3659) (Else!3659) (Error!3659) (Case!3659) (If!3659) (Extends!3659) (Abstract!3659) (Class!3659) (Val!3659) (DelimiterValue!7318 (del!3719 List!19913)) (KeywordValue!3665 (value!111358 List!19913)) (CommentValue!7318 (value!111359 List!19913)) (WhitespaceValue!7318 (value!111360 List!19913)) (IndentationValue!3659 (value!111361 List!19913)) (String!22626) (Int32!3659) (Broken!18296 (value!111362 List!19913)) (Boolean!3660) (Unit!34532) (OperatorValue!3662 (op!3719 List!19913)) (IdentifierValue!7318 (value!111363 List!19913)) (IdentifierValue!7319 (value!111364 List!19913)) (WhitespaceValue!7319 (value!111365 List!19913)) (True!7318) (False!7318) (Broken!18297 (value!111366 List!19913)) (Broken!18298 (value!111367 List!19913)) (True!7319) (RightBrace!3659) (RightBracket!3659) (Colon!3659) (Null!3659) (Comma!3659) (LeftBracket!3659) (False!7319) (LeftBrace!3659) (ImaginaryLiteralValue!3659 (text!26059 List!19913)) (StringLiteralValue!10977 (value!111368 List!19913)) (EOFValue!3659 (value!111369 List!19913)) (IdentValue!3659 (value!111370 List!19913)) (DelimiterValue!7319 (value!111371 List!19913)) (DedentValue!3659 (value!111372 List!19913)) (NewLineValue!3659 (value!111373 List!19913)) (IntegerValue!10977 (value!111374 (_ BitVec 32)) (text!26060 List!19913)) (IntegerValue!10978 (value!111375 Int) (text!26061 List!19913)) (Times!3659) (Or!3659) (Equal!3659) (Minus!3659) (Broken!18299 (value!111376 List!19913)) (And!3659) (Div!3659) (LessEqual!3659) (Mod!3659) (Concat!8556) (Not!3659) (Plus!3659) (SpaceValue!3659 (value!111377 List!19913)) (IntegerValue!10979 (value!111378 Int) (text!26062 List!19913)) (StringLiteralValue!10978 (text!26063 List!19913)) (FloatLiteralValue!7319 (text!26064 List!19913)) (BytesLiteralValue!3659 (value!111379 List!19913)) (CommentValue!7319 (value!111380 List!19913)) (StringLiteralValue!10979 (value!111381 List!19913)) (ErrorTokenValue!3659 (msg!3720 List!19913)) )
))
(declare-datatypes ((C!9968 0))(
  ( (C!9969 (val!5580 Int)) )
))
(declare-datatypes ((List!19914 0))(
  ( (Nil!19844) (Cons!19844 (h!25245 C!9968) (t!169583 List!19914)) )
))
(declare-datatypes ((IArray!13207 0))(
  ( (IArray!13208 (innerList!6661 List!19914)) )
))
(declare-datatypes ((Conc!6601 0))(
  ( (Node!6601 (left!15919 Conc!6601) (right!16249 Conc!6601) (csize!13432 Int) (cheight!6812 Int)) (Leaf!9606 (xs!9477 IArray!13207) (csize!13433 Int)) (Empty!6601) )
))
(declare-datatypes ((BalanceConc!13146 0))(
  ( (BalanceConc!13147 (c!296626 Conc!6601)) )
))
(declare-datatypes ((TokenValueInjection!6978 0))(
  ( (TokenValueInjection!6979 (toValue!5104 Int) (toChars!4963 Int)) )
))
(declare-datatypes ((Regex!4897 0))(
  ( (ElementMatch!4897 (c!296627 C!9968)) (Concat!8557 (regOne!10306 Regex!4897) (regTwo!10306 Regex!4897)) (EmptyExpr!4897) (Star!4897 (reg!5226 Regex!4897)) (EmptyLang!4897) (Union!4897 (regOne!10307 Regex!4897) (regTwo!10307 Regex!4897)) )
))
(declare-datatypes ((String!22627 0))(
  ( (String!22628 (value!111382 String)) )
))
(declare-datatypes ((Rule!6938 0))(
  ( (Rule!6939 (regex!3569 Regex!4897) (tag!3983 String!22627) (isSeparator!3569 Bool) (transformation!3569 TokenValueInjection!6978)) )
))
(declare-datatypes ((Token!6692 0))(
  ( (Token!6693 (value!111383 TokenValue!3659) (rule!5677 Rule!6938) (size!15756 Int) (originalCharacters!4377 List!19914)) )
))
(declare-fun token!556 () Token!6692)

(declare-fun e!1160544 () Bool)

(declare-fun inv!25867 (Token!6692) Bool)

(assert (=> start!179710 (and (inv!25867 token!556) e!1160544)))

(declare-fun e!1160539 () Bool)

(assert (=> start!179710 e!1160539))

(declare-fun e!1160536 () Bool)

(assert (=> start!179710 e!1160536))

(declare-fun b!1816446 () Bool)

(declare-fun rule!559 () Rule!6938)

(declare-fun validRegex!1985 (Regex!4897) Bool)

(assert (=> b!1816446 (= e!1160542 (not (validRegex!1985 (regex!3569 rule!559))))))

(declare-fun ruleValid!1061 (LexerInterface!3198 Rule!6938) Bool)

(assert (=> b!1816446 (ruleValid!1061 thiss!28068 rule!559)))

(declare-datatypes ((Unit!34533 0))(
  ( (Unit!34534) )
))
(declare-fun lt!706000 () Unit!34533)

(declare-datatypes ((List!19915 0))(
  ( (Nil!19845) (Cons!19845 (h!25246 Rule!6938) (t!169584 List!19915)) )
))
(declare-fun rules!4538 () List!19915)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!582 (LexerInterface!3198 Rule!6938 List!19915) Unit!34533)

(assert (=> b!1816446 (= lt!706000 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!582 thiss!28068 rule!559 rules!4538))))

(declare-fun tp!513096 () Bool)

(declare-fun e!1160547 () Bool)

(declare-fun b!1816447 () Bool)

(declare-fun inv!25864 (String!22627) Bool)

(declare-fun inv!25868 (TokenValueInjection!6978) Bool)

(assert (=> b!1816447 (= e!1160539 (and tp!513096 (inv!25864 (tag!3983 rule!559)) (inv!25868 (transformation!3569 rule!559)) e!1160547))))

(declare-fun b!1816448 () Bool)

(declare-fun res!816682 () Bool)

(assert (=> b!1816448 (=> (not res!816682) (not e!1160542))))

(declare-fun suffix!1667 () List!19914)

(declare-fun input!3612 () List!19914)

(declare-fun ++!5393 (List!19914 List!19914) List!19914)

(declare-fun list!8071 (BalanceConc!13146) List!19914)

(declare-fun charsOf!2212 (Token!6692) BalanceConc!13146)

(assert (=> b!1816448 (= res!816682 (= input!3612 (++!5393 (list!8071 (charsOf!2212 token!556)) suffix!1667)))))

(declare-fun e!1160535 () Bool)

(assert (=> b!1816449 (= e!1160535 (and tp!513098 tp!513106))))

(declare-fun b!1816450 () Bool)

(declare-fun tp!513100 () Bool)

(declare-fun e!1160537 () Bool)

(assert (=> b!1816450 (= e!1160537 (and tp!513100 (inv!25864 (tag!3983 (rule!5677 token!556))) (inv!25868 (transformation!3569 (rule!5677 token!556))) e!1160535))))

(declare-fun b!1816451 () Bool)

(declare-fun tp_is_empty!8029 () Bool)

(declare-fun tp!513095 () Bool)

(assert (=> b!1816451 (= e!1160546 (and tp_is_empty!8029 tp!513095))))

(declare-fun b!1816452 () Bool)

(declare-fun e!1160541 () Bool)

(declare-fun tp!513103 () Bool)

(assert (=> b!1816452 (= e!1160540 (and e!1160541 tp!513103))))

(declare-fun tp!513099 () Bool)

(declare-fun e!1160538 () Bool)

(declare-fun b!1816453 () Bool)

(assert (=> b!1816453 (= e!1160541 (and tp!513099 (inv!25864 (tag!3983 (h!25246 rules!4538))) (inv!25868 (transformation!3569 (h!25246 rules!4538))) e!1160538))))

(assert (=> b!1816454 (= e!1160547 (and tp!513104 tp!513097))))

(declare-fun b!1816455 () Bool)

(declare-fun res!816680 () Bool)

(assert (=> b!1816455 (=> (not res!816680) (not e!1160542))))

(declare-fun contains!3605 (List!19915 Rule!6938) Bool)

(assert (=> b!1816455 (= res!816680 (contains!3605 rules!4538 rule!559))))

(declare-fun b!1816456 () Bool)

(declare-fun res!816681 () Bool)

(assert (=> b!1816456 (=> (not res!816681) (not e!1160542))))

(assert (=> b!1816456 (= res!816681 (= (rule!5677 token!556) rule!559))))

(assert (=> b!1816457 (= e!1160538 (and tp!513105 tp!513101))))

(declare-fun b!1816458 () Bool)

(declare-fun res!816683 () Bool)

(assert (=> b!1816458 (=> (not res!816683) (not e!1160542))))

(declare-fun isEmpty!12549 (List!19915) Bool)

(assert (=> b!1816458 (= res!816683 (not (isEmpty!12549 rules!4538)))))

(declare-fun b!1816459 () Bool)

(declare-fun tp!513102 () Bool)

(declare-fun inv!21 (TokenValue!3659) Bool)

(assert (=> b!1816459 (= e!1160544 (and (inv!21 (value!111383 token!556)) e!1160537 tp!513102))))

(declare-fun b!1816460 () Bool)

(declare-fun res!816684 () Bool)

(assert (=> b!1816460 (=> (not res!816684) (not e!1160542))))

(declare-datatypes ((tuple2!19398 0))(
  ( (tuple2!19399 (_1!11101 Token!6692) (_2!11101 List!19914)) )
))
(declare-datatypes ((Option!4149 0))(
  ( (None!4148) (Some!4148 (v!25673 tuple2!19398)) )
))
(declare-fun maxPrefix!1746 (LexerInterface!3198 List!19915 List!19914) Option!4149)

(assert (=> b!1816460 (= res!816684 (= (maxPrefix!1746 thiss!28068 rules!4538 input!3612) (Some!4148 (tuple2!19399 token!556 suffix!1667))))))

(declare-fun b!1816461 () Bool)

(declare-fun res!816686 () Bool)

(assert (=> b!1816461 (=> (not res!816686) (not e!1160542))))

(declare-fun rulesInvariant!2867 (LexerInterface!3198 List!19915) Bool)

(assert (=> b!1816461 (= res!816686 (rulesInvariant!2867 thiss!28068 rules!4538))))

(declare-fun b!1816462 () Bool)

(declare-fun tp!513094 () Bool)

(assert (=> b!1816462 (= e!1160536 (and tp_is_empty!8029 tp!513094))))

(assert (= (and start!179710 res!816685) b!1816458))

(assert (= (and b!1816458 res!816683) b!1816461))

(assert (= (and b!1816461 res!816686) b!1816455))

(assert (= (and b!1816455 res!816680) b!1816460))

(assert (= (and b!1816460 res!816684) b!1816456))

(assert (= (and b!1816456 res!816681) b!1816448))

(assert (= (and b!1816448 res!816682) b!1816446))

(assert (= (and start!179710 ((_ is Cons!19844) suffix!1667)) b!1816451))

(assert (= b!1816453 b!1816457))

(assert (= b!1816452 b!1816453))

(assert (= (and start!179710 ((_ is Cons!19845) rules!4538)) b!1816452))

(assert (= b!1816450 b!1816449))

(assert (= b!1816459 b!1816450))

(assert (= start!179710 b!1816459))

(assert (= b!1816447 b!1816454))

(assert (= start!179710 b!1816447))

(assert (= (and start!179710 ((_ is Cons!19844) input!3612)) b!1816462))

(declare-fun m!2246021 () Bool)

(assert (=> b!1816455 m!2246021))

(declare-fun m!2246023 () Bool)

(assert (=> b!1816459 m!2246023))

(declare-fun m!2246025 () Bool)

(assert (=> b!1816460 m!2246025))

(declare-fun m!2246027 () Bool)

(assert (=> b!1816448 m!2246027))

(assert (=> b!1816448 m!2246027))

(declare-fun m!2246029 () Bool)

(assert (=> b!1816448 m!2246029))

(assert (=> b!1816448 m!2246029))

(declare-fun m!2246031 () Bool)

(assert (=> b!1816448 m!2246031))

(declare-fun m!2246033 () Bool)

(assert (=> b!1816461 m!2246033))

(declare-fun m!2246035 () Bool)

(assert (=> b!1816453 m!2246035))

(declare-fun m!2246037 () Bool)

(assert (=> b!1816453 m!2246037))

(declare-fun m!2246039 () Bool)

(assert (=> b!1816458 m!2246039))

(declare-fun m!2246041 () Bool)

(assert (=> b!1816447 m!2246041))

(declare-fun m!2246043 () Bool)

(assert (=> b!1816447 m!2246043))

(declare-fun m!2246045 () Bool)

(assert (=> b!1816446 m!2246045))

(declare-fun m!2246047 () Bool)

(assert (=> b!1816446 m!2246047))

(declare-fun m!2246049 () Bool)

(assert (=> b!1816446 m!2246049))

(declare-fun m!2246051 () Bool)

(assert (=> b!1816450 m!2246051))

(declare-fun m!2246053 () Bool)

(assert (=> b!1816450 m!2246053))

(declare-fun m!2246055 () Bool)

(assert (=> start!179710 m!2246055))

(check-sat (not b!1816459) (not b_next!50871) (not b!1816458) (not b!1816461) (not start!179710) (not b!1816451) tp_is_empty!8029 (not b_next!50875) (not b!1816446) b_and!140623 (not b!1816462) (not b_next!50879) b_and!140617 (not b!1816453) (not b!1816448) b_and!140613 (not b!1816447) (not b!1816452) (not b!1816460) b_and!140615 b_and!140621 (not b_next!50881) (not b!1816450) (not b!1816455) b_and!140619 (not b_next!50877) (not b_next!50873))
(check-sat b_and!140617 (not b_next!50871) b_and!140613 (not b_next!50881) b_and!140619 (not b_next!50875) b_and!140623 (not b_next!50879) b_and!140615 b_and!140621 (not b_next!50877) (not b_next!50873))
(get-model)

(declare-fun d!557043 () Bool)

(assert (=> d!557043 (= (inv!25864 (tag!3983 rule!559)) (= (mod (str.len (value!111382 (tag!3983 rule!559))) 2) 0))))

(assert (=> b!1816447 d!557043))

(declare-fun d!557045 () Bool)

(declare-fun res!816691 () Bool)

(declare-fun e!1160551 () Bool)

(assert (=> d!557045 (=> (not res!816691) (not e!1160551))))

(declare-fun semiInverseModEq!1426 (Int Int) Bool)

(assert (=> d!557045 (= res!816691 (semiInverseModEq!1426 (toChars!4963 (transformation!3569 rule!559)) (toValue!5104 (transformation!3569 rule!559))))))

(assert (=> d!557045 (= (inv!25868 (transformation!3569 rule!559)) e!1160551)))

(declare-fun b!1816465 () Bool)

(declare-fun equivClasses!1367 (Int Int) Bool)

(assert (=> b!1816465 (= e!1160551 (equivClasses!1367 (toChars!4963 (transformation!3569 rule!559)) (toValue!5104 (transformation!3569 rule!559))))))

(assert (= (and d!557045 res!816691) b!1816465))

(declare-fun m!2246057 () Bool)

(assert (=> d!557045 m!2246057))

(declare-fun m!2246059 () Bool)

(assert (=> b!1816465 m!2246059))

(assert (=> b!1816447 d!557045))

(declare-fun d!557047 () Bool)

(assert (=> d!557047 (= (isEmpty!12549 rules!4538) ((_ is Nil!19845) rules!4538))))

(assert (=> b!1816458 d!557047))

(declare-fun b!1816474 () Bool)

(declare-fun e!1160557 () List!19914)

(assert (=> b!1816474 (= e!1160557 suffix!1667)))

(declare-fun b!1816476 () Bool)

(declare-fun res!816698 () Bool)

(declare-fun e!1160556 () Bool)

(assert (=> b!1816476 (=> (not res!816698) (not e!1160556))))

(declare-fun lt!706003 () List!19914)

(declare-fun size!15758 (List!19914) Int)

(assert (=> b!1816476 (= res!816698 (= (size!15758 lt!706003) (+ (size!15758 (list!8071 (charsOf!2212 token!556))) (size!15758 suffix!1667))))))

(declare-fun b!1816477 () Bool)

(assert (=> b!1816477 (= e!1160556 (or (not (= suffix!1667 Nil!19844)) (= lt!706003 (list!8071 (charsOf!2212 token!556)))))))

(declare-fun d!557049 () Bool)

(assert (=> d!557049 e!1160556))

(declare-fun res!816699 () Bool)

(assert (=> d!557049 (=> (not res!816699) (not e!1160556))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2899 (List!19914) (InoxSet C!9968))

(assert (=> d!557049 (= res!816699 (= (content!2899 lt!706003) ((_ map or) (content!2899 (list!8071 (charsOf!2212 token!556))) (content!2899 suffix!1667))))))

(assert (=> d!557049 (= lt!706003 e!1160557)))

(declare-fun c!296630 () Bool)

(assert (=> d!557049 (= c!296630 ((_ is Nil!19844) (list!8071 (charsOf!2212 token!556))))))

(assert (=> d!557049 (= (++!5393 (list!8071 (charsOf!2212 token!556)) suffix!1667) lt!706003)))

(declare-fun b!1816475 () Bool)

(assert (=> b!1816475 (= e!1160557 (Cons!19844 (h!25245 (list!8071 (charsOf!2212 token!556))) (++!5393 (t!169583 (list!8071 (charsOf!2212 token!556))) suffix!1667)))))

(assert (= (and d!557049 c!296630) b!1816474))

(assert (= (and d!557049 (not c!296630)) b!1816475))

(assert (= (and d!557049 res!816699) b!1816476))

(assert (= (and b!1816476 res!816698) b!1816477))

(declare-fun m!2246061 () Bool)

(assert (=> b!1816476 m!2246061))

(assert (=> b!1816476 m!2246029))

(declare-fun m!2246063 () Bool)

(assert (=> b!1816476 m!2246063))

(declare-fun m!2246065 () Bool)

(assert (=> b!1816476 m!2246065))

(declare-fun m!2246067 () Bool)

(assert (=> d!557049 m!2246067))

(assert (=> d!557049 m!2246029))

(declare-fun m!2246069 () Bool)

(assert (=> d!557049 m!2246069))

(declare-fun m!2246071 () Bool)

(assert (=> d!557049 m!2246071))

(declare-fun m!2246073 () Bool)

(assert (=> b!1816475 m!2246073))

(assert (=> b!1816448 d!557049))

(declare-fun d!557053 () Bool)

(declare-fun list!8072 (Conc!6601) List!19914)

(assert (=> d!557053 (= (list!8071 (charsOf!2212 token!556)) (list!8072 (c!296626 (charsOf!2212 token!556))))))

(declare-fun bs!407218 () Bool)

(assert (= bs!407218 d!557053))

(declare-fun m!2246075 () Bool)

(assert (=> bs!407218 m!2246075))

(assert (=> b!1816448 d!557053))

(declare-fun d!557055 () Bool)

(declare-fun lt!706009 () BalanceConc!13146)

(assert (=> d!557055 (= (list!8071 lt!706009) (originalCharacters!4377 token!556))))

(declare-fun dynLambda!9893 (Int TokenValue!3659) BalanceConc!13146)

(assert (=> d!557055 (= lt!706009 (dynLambda!9893 (toChars!4963 (transformation!3569 (rule!5677 token!556))) (value!111383 token!556)))))

(assert (=> d!557055 (= (charsOf!2212 token!556) lt!706009)))

(declare-fun b_lambda!59937 () Bool)

(assert (=> (not b_lambda!59937) (not d!557055)))

(declare-fun t!169586 () Bool)

(declare-fun tb!111061 () Bool)

(assert (=> (and b!1816449 (= (toChars!4963 (transformation!3569 (rule!5677 token!556))) (toChars!4963 (transformation!3569 (rule!5677 token!556)))) t!169586) tb!111061))

(declare-fun b!1816488 () Bool)

(declare-fun e!1160566 () Bool)

(declare-fun tp!513109 () Bool)

(declare-fun inv!25871 (Conc!6601) Bool)

(assert (=> b!1816488 (= e!1160566 (and (inv!25871 (c!296626 (dynLambda!9893 (toChars!4963 (transformation!3569 (rule!5677 token!556))) (value!111383 token!556)))) tp!513109))))

(declare-fun result!133380 () Bool)

(declare-fun inv!25872 (BalanceConc!13146) Bool)

(assert (=> tb!111061 (= result!133380 (and (inv!25872 (dynLambda!9893 (toChars!4963 (transformation!3569 (rule!5677 token!556))) (value!111383 token!556))) e!1160566))))

(assert (= tb!111061 b!1816488))

(declare-fun m!2246083 () Bool)

(assert (=> b!1816488 m!2246083))

(declare-fun m!2246085 () Bool)

(assert (=> tb!111061 m!2246085))

(assert (=> d!557055 t!169586))

(declare-fun b_and!140625 () Bool)

(assert (= b_and!140615 (and (=> t!169586 result!133380) b_and!140625)))

(declare-fun tb!111063 () Bool)

(declare-fun t!169588 () Bool)

(assert (=> (and b!1816454 (= (toChars!4963 (transformation!3569 rule!559)) (toChars!4963 (transformation!3569 (rule!5677 token!556)))) t!169588) tb!111063))

(declare-fun result!133384 () Bool)

(assert (= result!133384 result!133380))

(assert (=> d!557055 t!169588))

(declare-fun b_and!140627 () Bool)

(assert (= b_and!140619 (and (=> t!169588 result!133384) b_and!140627)))

(declare-fun tb!111065 () Bool)

(declare-fun t!169590 () Bool)

(assert (=> (and b!1816457 (= (toChars!4963 (transformation!3569 (h!25246 rules!4538))) (toChars!4963 (transformation!3569 (rule!5677 token!556)))) t!169590) tb!111065))

(declare-fun result!133386 () Bool)

(assert (= result!133386 result!133380))

(assert (=> d!557055 t!169590))

(declare-fun b_and!140629 () Bool)

(assert (= b_and!140623 (and (=> t!169590 result!133386) b_and!140629)))

(declare-fun m!2246087 () Bool)

(assert (=> d!557055 m!2246087))

(declare-fun m!2246089 () Bool)

(assert (=> d!557055 m!2246089))

(assert (=> b!1816448 d!557055))

(declare-fun b!1816502 () Bool)

(declare-fun e!1160577 () Bool)

(declare-fun inv!17 (TokenValue!3659) Bool)

(assert (=> b!1816502 (= e!1160577 (inv!17 (value!111383 token!556)))))

(declare-fun b!1816503 () Bool)

(declare-fun e!1160578 () Bool)

(declare-fun inv!16 (TokenValue!3659) Bool)

(assert (=> b!1816503 (= e!1160578 (inv!16 (value!111383 token!556)))))

(declare-fun b!1816504 () Bool)

(assert (=> b!1816504 (= e!1160578 e!1160577)))

(declare-fun c!296636 () Bool)

(assert (=> b!1816504 (= c!296636 ((_ is IntegerValue!10978) (value!111383 token!556)))))

(declare-fun b!1816505 () Bool)

(declare-fun e!1160576 () Bool)

(declare-fun inv!15 (TokenValue!3659) Bool)

(assert (=> b!1816505 (= e!1160576 (inv!15 (value!111383 token!556)))))

(declare-fun b!1816506 () Bool)

(declare-fun res!816711 () Bool)

(assert (=> b!1816506 (=> res!816711 e!1160576)))

(assert (=> b!1816506 (= res!816711 (not ((_ is IntegerValue!10979) (value!111383 token!556))))))

(assert (=> b!1816506 (= e!1160577 e!1160576)))

(declare-fun d!557061 () Bool)

(declare-fun c!296635 () Bool)

(assert (=> d!557061 (= c!296635 ((_ is IntegerValue!10977) (value!111383 token!556)))))

(assert (=> d!557061 (= (inv!21 (value!111383 token!556)) e!1160578)))

(assert (= (and d!557061 c!296635) b!1816503))

(assert (= (and d!557061 (not c!296635)) b!1816504))

(assert (= (and b!1816504 c!296636) b!1816502))

(assert (= (and b!1816504 (not c!296636)) b!1816506))

(assert (= (and b!1816506 (not res!816711)) b!1816505))

(declare-fun m!2246095 () Bool)

(assert (=> b!1816502 m!2246095))

(declare-fun m!2246097 () Bool)

(assert (=> b!1816503 m!2246097))

(declare-fun m!2246099 () Bool)

(assert (=> b!1816505 m!2246099))

(assert (=> b!1816459 d!557061))

(declare-fun d!557065 () Bool)

(declare-fun res!816716 () Bool)

(declare-fun e!1160581 () Bool)

(assert (=> d!557065 (=> (not res!816716) (not e!1160581))))

(declare-fun isEmpty!12552 (List!19914) Bool)

(assert (=> d!557065 (= res!816716 (not (isEmpty!12552 (originalCharacters!4377 token!556))))))

(assert (=> d!557065 (= (inv!25867 token!556) e!1160581)))

(declare-fun b!1816511 () Bool)

(declare-fun res!816717 () Bool)

(assert (=> b!1816511 (=> (not res!816717) (not e!1160581))))

(assert (=> b!1816511 (= res!816717 (= (originalCharacters!4377 token!556) (list!8071 (dynLambda!9893 (toChars!4963 (transformation!3569 (rule!5677 token!556))) (value!111383 token!556)))))))

(declare-fun b!1816512 () Bool)

(assert (=> b!1816512 (= e!1160581 (= (size!15756 token!556) (size!15758 (originalCharacters!4377 token!556))))))

(assert (= (and d!557065 res!816716) b!1816511))

(assert (= (and b!1816511 res!816717) b!1816512))

(declare-fun b_lambda!59939 () Bool)

(assert (=> (not b_lambda!59939) (not b!1816511)))

(assert (=> b!1816511 t!169586))

(declare-fun b_and!140631 () Bool)

(assert (= b_and!140625 (and (=> t!169586 result!133380) b_and!140631)))

(assert (=> b!1816511 t!169588))

(declare-fun b_and!140633 () Bool)

(assert (= b_and!140627 (and (=> t!169588 result!133384) b_and!140633)))

(assert (=> b!1816511 t!169590))

(declare-fun b_and!140635 () Bool)

(assert (= b_and!140629 (and (=> t!169590 result!133386) b_and!140635)))

(declare-fun m!2246101 () Bool)

(assert (=> d!557065 m!2246101))

(assert (=> b!1816511 m!2246089))

(assert (=> b!1816511 m!2246089))

(declare-fun m!2246103 () Bool)

(assert (=> b!1816511 m!2246103))

(declare-fun m!2246105 () Bool)

(assert (=> b!1816512 m!2246105))

(assert (=> start!179710 d!557065))

(declare-fun b!1816586 () Bool)

(declare-fun res!816766 () Bool)

(declare-fun e!1160616 () Bool)

(assert (=> b!1816586 (=> (not res!816766) (not e!1160616))))

(declare-fun lt!706035 () Option!4149)

(declare-fun get!6147 (Option!4149) tuple2!19398)

(assert (=> b!1816586 (= res!816766 (= (++!5393 (list!8071 (charsOf!2212 (_1!11101 (get!6147 lt!706035)))) (_2!11101 (get!6147 lt!706035))) input!3612))))

(declare-fun bm!114193 () Bool)

(declare-fun call!114198 () Option!4149)

(declare-fun maxPrefixOneRule!1113 (LexerInterface!3198 Rule!6938 List!19914) Option!4149)

(assert (=> bm!114193 (= call!114198 (maxPrefixOneRule!1113 thiss!28068 (h!25246 rules!4538) input!3612))))

(declare-fun b!1816587 () Bool)

(declare-fun e!1160615 () Bool)

(assert (=> b!1816587 (= e!1160615 e!1160616)))

(declare-fun res!816770 () Bool)

(assert (=> b!1816587 (=> (not res!816770) (not e!1160616))))

(declare-fun isDefined!3488 (Option!4149) Bool)

(assert (=> b!1816587 (= res!816770 (isDefined!3488 lt!706035))))

(declare-fun b!1816588 () Bool)

(declare-fun e!1160614 () Option!4149)

(declare-fun lt!706038 () Option!4149)

(declare-fun lt!706036 () Option!4149)

(assert (=> b!1816588 (= e!1160614 (ite (and ((_ is None!4148) lt!706038) ((_ is None!4148) lt!706036)) None!4148 (ite ((_ is None!4148) lt!706036) lt!706038 (ite ((_ is None!4148) lt!706038) lt!706036 (ite (>= (size!15756 (_1!11101 (v!25673 lt!706038))) (size!15756 (_1!11101 (v!25673 lt!706036)))) lt!706038 lt!706036)))))))

(assert (=> b!1816588 (= lt!706038 call!114198)))

(assert (=> b!1816588 (= lt!706036 (maxPrefix!1746 thiss!28068 (t!169584 rules!4538) input!3612))))

(declare-fun d!557067 () Bool)

(assert (=> d!557067 e!1160615))

(declare-fun res!816769 () Bool)

(assert (=> d!557067 (=> res!816769 e!1160615)))

(declare-fun isEmpty!12553 (Option!4149) Bool)

(assert (=> d!557067 (= res!816769 (isEmpty!12553 lt!706035))))

(assert (=> d!557067 (= lt!706035 e!1160614)))

(declare-fun c!296648 () Bool)

(assert (=> d!557067 (= c!296648 (and ((_ is Cons!19845) rules!4538) ((_ is Nil!19845) (t!169584 rules!4538))))))

(declare-fun lt!706037 () Unit!34533)

(declare-fun lt!706039 () Unit!34533)

(assert (=> d!557067 (= lt!706037 lt!706039)))

(declare-fun isPrefix!1801 (List!19914 List!19914) Bool)

(assert (=> d!557067 (isPrefix!1801 input!3612 input!3612)))

(declare-fun lemmaIsPrefixRefl!1178 (List!19914 List!19914) Unit!34533)

(assert (=> d!557067 (= lt!706039 (lemmaIsPrefixRefl!1178 input!3612 input!3612))))

(declare-fun rulesValidInductive!1220 (LexerInterface!3198 List!19915) Bool)

(assert (=> d!557067 (rulesValidInductive!1220 thiss!28068 rules!4538)))

(assert (=> d!557067 (= (maxPrefix!1746 thiss!28068 rules!4538 input!3612) lt!706035)))

(declare-fun b!1816589 () Bool)

(assert (=> b!1816589 (= e!1160614 call!114198)))

(declare-fun b!1816590 () Bool)

(declare-fun res!816767 () Bool)

(assert (=> b!1816590 (=> (not res!816767) (not e!1160616))))

(declare-fun matchR!2362 (Regex!4897 List!19914) Bool)

(assert (=> b!1816590 (= res!816767 (matchR!2362 (regex!3569 (rule!5677 (_1!11101 (get!6147 lt!706035)))) (list!8071 (charsOf!2212 (_1!11101 (get!6147 lt!706035))))))))

(declare-fun b!1816591 () Bool)

(assert (=> b!1816591 (= e!1160616 (contains!3605 rules!4538 (rule!5677 (_1!11101 (get!6147 lt!706035)))))))

(declare-fun b!1816592 () Bool)

(declare-fun res!816764 () Bool)

(assert (=> b!1816592 (=> (not res!816764) (not e!1160616))))

(assert (=> b!1816592 (= res!816764 (= (list!8071 (charsOf!2212 (_1!11101 (get!6147 lt!706035)))) (originalCharacters!4377 (_1!11101 (get!6147 lt!706035)))))))

(declare-fun b!1816593 () Bool)

(declare-fun res!816765 () Bool)

(assert (=> b!1816593 (=> (not res!816765) (not e!1160616))))

(assert (=> b!1816593 (= res!816765 (< (size!15758 (_2!11101 (get!6147 lt!706035))) (size!15758 input!3612)))))

(declare-fun b!1816594 () Bool)

(declare-fun res!816768 () Bool)

(assert (=> b!1816594 (=> (not res!816768) (not e!1160616))))

(declare-fun apply!5361 (TokenValueInjection!6978 BalanceConc!13146) TokenValue!3659)

(declare-fun seqFromList!2530 (List!19914) BalanceConc!13146)

(assert (=> b!1816594 (= res!816768 (= (value!111383 (_1!11101 (get!6147 lt!706035))) (apply!5361 (transformation!3569 (rule!5677 (_1!11101 (get!6147 lt!706035)))) (seqFromList!2530 (originalCharacters!4377 (_1!11101 (get!6147 lt!706035)))))))))

(assert (= (and d!557067 c!296648) b!1816589))

(assert (= (and d!557067 (not c!296648)) b!1816588))

(assert (= (or b!1816589 b!1816588) bm!114193))

(assert (= (and d!557067 (not res!816769)) b!1816587))

(assert (= (and b!1816587 res!816770) b!1816592))

(assert (= (and b!1816592 res!816764) b!1816593))

(assert (= (and b!1816593 res!816765) b!1816586))

(assert (= (and b!1816586 res!816766) b!1816594))

(assert (= (and b!1816594 res!816768) b!1816590))

(assert (= (and b!1816590 res!816767) b!1816591))

(declare-fun m!2246167 () Bool)

(assert (=> b!1816590 m!2246167))

(declare-fun m!2246169 () Bool)

(assert (=> b!1816590 m!2246169))

(assert (=> b!1816590 m!2246169))

(declare-fun m!2246171 () Bool)

(assert (=> b!1816590 m!2246171))

(assert (=> b!1816590 m!2246171))

(declare-fun m!2246173 () Bool)

(assert (=> b!1816590 m!2246173))

(assert (=> b!1816593 m!2246167))

(declare-fun m!2246175 () Bool)

(assert (=> b!1816593 m!2246175))

(declare-fun m!2246177 () Bool)

(assert (=> b!1816593 m!2246177))

(assert (=> b!1816586 m!2246167))

(assert (=> b!1816586 m!2246169))

(assert (=> b!1816586 m!2246169))

(assert (=> b!1816586 m!2246171))

(assert (=> b!1816586 m!2246171))

(declare-fun m!2246179 () Bool)

(assert (=> b!1816586 m!2246179))

(declare-fun m!2246181 () Bool)

(assert (=> d!557067 m!2246181))

(declare-fun m!2246183 () Bool)

(assert (=> d!557067 m!2246183))

(declare-fun m!2246185 () Bool)

(assert (=> d!557067 m!2246185))

(declare-fun m!2246187 () Bool)

(assert (=> d!557067 m!2246187))

(declare-fun m!2246189 () Bool)

(assert (=> b!1816588 m!2246189))

(assert (=> b!1816594 m!2246167))

(declare-fun m!2246191 () Bool)

(assert (=> b!1816594 m!2246191))

(assert (=> b!1816594 m!2246191))

(declare-fun m!2246193 () Bool)

(assert (=> b!1816594 m!2246193))

(assert (=> b!1816592 m!2246167))

(assert (=> b!1816592 m!2246169))

(assert (=> b!1816592 m!2246169))

(assert (=> b!1816592 m!2246171))

(declare-fun m!2246195 () Bool)

(assert (=> b!1816587 m!2246195))

(declare-fun m!2246197 () Bool)

(assert (=> bm!114193 m!2246197))

(assert (=> b!1816591 m!2246167))

(declare-fun m!2246199 () Bool)

(assert (=> b!1816591 m!2246199))

(assert (=> b!1816460 d!557067))

(declare-fun d!557083 () Bool)

(assert (=> d!557083 (= (inv!25864 (tag!3983 (rule!5677 token!556))) (= (mod (str.len (value!111382 (tag!3983 (rule!5677 token!556)))) 2) 0))))

(assert (=> b!1816450 d!557083))

(declare-fun d!557085 () Bool)

(declare-fun res!816777 () Bool)

(declare-fun e!1160623 () Bool)

(assert (=> d!557085 (=> (not res!816777) (not e!1160623))))

(assert (=> d!557085 (= res!816777 (semiInverseModEq!1426 (toChars!4963 (transformation!3569 (rule!5677 token!556))) (toValue!5104 (transformation!3569 (rule!5677 token!556)))))))

(assert (=> d!557085 (= (inv!25868 (transformation!3569 (rule!5677 token!556))) e!1160623)))

(declare-fun b!1816607 () Bool)

(assert (=> b!1816607 (= e!1160623 (equivClasses!1367 (toChars!4963 (transformation!3569 (rule!5677 token!556))) (toValue!5104 (transformation!3569 (rule!5677 token!556)))))))

(assert (= (and d!557085 res!816777) b!1816607))

(declare-fun m!2246215 () Bool)

(assert (=> d!557085 m!2246215))

(declare-fun m!2246217 () Bool)

(assert (=> b!1816607 m!2246217))

(assert (=> b!1816450 d!557085))

(declare-fun d!557089 () Bool)

(declare-fun res!816783 () Bool)

(declare-fun e!1160629 () Bool)

(assert (=> d!557089 (=> (not res!816783) (not e!1160629))))

(declare-fun rulesValid!1351 (LexerInterface!3198 List!19915) Bool)

(assert (=> d!557089 (= res!816783 (rulesValid!1351 thiss!28068 rules!4538))))

(assert (=> d!557089 (= (rulesInvariant!2867 thiss!28068 rules!4538) e!1160629)))

(declare-fun b!1816613 () Bool)

(declare-datatypes ((List!19917 0))(
  ( (Nil!19847) (Cons!19847 (h!25248 String!22627) (t!169602 List!19917)) )
))
(declare-fun noDuplicateTag!1351 (LexerInterface!3198 List!19915 List!19917) Bool)

(assert (=> b!1816613 (= e!1160629 (noDuplicateTag!1351 thiss!28068 rules!4538 Nil!19847))))

(assert (= (and d!557089 res!816783) b!1816613))

(declare-fun m!2246227 () Bool)

(assert (=> d!557089 m!2246227))

(declare-fun m!2246229 () Bool)

(assert (=> b!1816613 m!2246229))

(assert (=> b!1816461 d!557089))

(declare-fun d!557099 () Bool)

(assert (=> d!557099 (= (inv!25864 (tag!3983 (h!25246 rules!4538))) (= (mod (str.len (value!111382 (tag!3983 (h!25246 rules!4538)))) 2) 0))))

(assert (=> b!1816453 d!557099))

(declare-fun d!557101 () Bool)

(declare-fun res!816784 () Bool)

(declare-fun e!1160630 () Bool)

(assert (=> d!557101 (=> (not res!816784) (not e!1160630))))

(assert (=> d!557101 (= res!816784 (semiInverseModEq!1426 (toChars!4963 (transformation!3569 (h!25246 rules!4538))) (toValue!5104 (transformation!3569 (h!25246 rules!4538)))))))

(assert (=> d!557101 (= (inv!25868 (transformation!3569 (h!25246 rules!4538))) e!1160630)))

(declare-fun b!1816614 () Bool)

(assert (=> b!1816614 (= e!1160630 (equivClasses!1367 (toChars!4963 (transformation!3569 (h!25246 rules!4538))) (toValue!5104 (transformation!3569 (h!25246 rules!4538)))))))

(assert (= (and d!557101 res!816784) b!1816614))

(declare-fun m!2246231 () Bool)

(assert (=> d!557101 m!2246231))

(declare-fun m!2246233 () Bool)

(assert (=> b!1816614 m!2246233))

(assert (=> b!1816453 d!557101))

(declare-fun d!557103 () Bool)

(declare-fun lt!706048 () Bool)

(declare-fun content!2901 (List!19915) (InoxSet Rule!6938))

(assert (=> d!557103 (= lt!706048 (select (content!2901 rules!4538) rule!559))))

(declare-fun e!1160657 () Bool)

(assert (=> d!557103 (= lt!706048 e!1160657)))

(declare-fun res!816804 () Bool)

(assert (=> d!557103 (=> (not res!816804) (not e!1160657))))

(assert (=> d!557103 (= res!816804 ((_ is Cons!19845) rules!4538))))

(assert (=> d!557103 (= (contains!3605 rules!4538 rule!559) lt!706048)))

(declare-fun b!1816646 () Bool)

(declare-fun e!1160656 () Bool)

(assert (=> b!1816646 (= e!1160657 e!1160656)))

(declare-fun res!816805 () Bool)

(assert (=> b!1816646 (=> res!816805 e!1160656)))

(assert (=> b!1816646 (= res!816805 (= (h!25246 rules!4538) rule!559))))

(declare-fun b!1816647 () Bool)

(assert (=> b!1816647 (= e!1160656 (contains!3605 (t!169584 rules!4538) rule!559))))

(assert (= (and d!557103 res!816804) b!1816646))

(assert (= (and b!1816646 (not res!816805)) b!1816647))

(declare-fun m!2246241 () Bool)

(assert (=> d!557103 m!2246241))

(declare-fun m!2246243 () Bool)

(assert (=> d!557103 m!2246243))

(declare-fun m!2246245 () Bool)

(assert (=> b!1816647 m!2246245))

(assert (=> b!1816455 d!557103))

(declare-fun b!1816712 () Bool)

(declare-fun res!816823 () Bool)

(declare-fun e!1160702 () Bool)

(assert (=> b!1816712 (=> res!816823 e!1160702)))

(assert (=> b!1816712 (= res!816823 (not ((_ is Concat!8557) (regex!3569 rule!559))))))

(declare-fun e!1160701 () Bool)

(assert (=> b!1816712 (= e!1160701 e!1160702)))

(declare-fun bm!114209 () Bool)

(declare-fun call!114215 () Bool)

(declare-fun call!114214 () Bool)

(assert (=> bm!114209 (= call!114215 call!114214)))

(declare-fun b!1816713 () Bool)

(declare-fun res!816822 () Bool)

(declare-fun e!1160697 () Bool)

(assert (=> b!1816713 (=> (not res!816822) (not e!1160697))))

(declare-fun call!114216 () Bool)

(assert (=> b!1816713 (= res!816822 call!114216)))

(assert (=> b!1816713 (= e!1160701 e!1160697)))

(declare-fun bm!114210 () Bool)

(declare-fun c!296662 () Bool)

(assert (=> bm!114210 (= call!114216 (validRegex!1985 (ite c!296662 (regOne!10307 (regex!3569 rule!559)) (regOne!10306 (regex!3569 rule!559)))))))

(declare-fun b!1816714 () Bool)

(assert (=> b!1816714 (= e!1160697 call!114215)))

(declare-fun d!557107 () Bool)

(declare-fun res!816824 () Bool)

(declare-fun e!1160700 () Bool)

(assert (=> d!557107 (=> res!816824 e!1160700)))

(assert (=> d!557107 (= res!816824 ((_ is ElementMatch!4897) (regex!3569 rule!559)))))

(assert (=> d!557107 (= (validRegex!1985 (regex!3569 rule!559)) e!1160700)))

(declare-fun b!1816715 () Bool)

(declare-fun e!1160703 () Bool)

(assert (=> b!1816715 (= e!1160703 e!1160701)))

(assert (=> b!1816715 (= c!296662 ((_ is Union!4897) (regex!3569 rule!559)))))

(declare-fun b!1816716 () Bool)

(declare-fun e!1160698 () Bool)

(assert (=> b!1816716 (= e!1160698 call!114214)))

(declare-fun bm!114211 () Bool)

(declare-fun c!296663 () Bool)

(assert (=> bm!114211 (= call!114214 (validRegex!1985 (ite c!296663 (reg!5226 (regex!3569 rule!559)) (ite c!296662 (regTwo!10307 (regex!3569 rule!559)) (regTwo!10306 (regex!3569 rule!559))))))))

(declare-fun b!1816717 () Bool)

(declare-fun e!1160699 () Bool)

(assert (=> b!1816717 (= e!1160699 call!114215)))

(declare-fun b!1816718 () Bool)

(assert (=> b!1816718 (= e!1160700 e!1160703)))

(assert (=> b!1816718 (= c!296663 ((_ is Star!4897) (regex!3569 rule!559)))))

(declare-fun b!1816719 () Bool)

(assert (=> b!1816719 (= e!1160702 e!1160699)))

(declare-fun res!816826 () Bool)

(assert (=> b!1816719 (=> (not res!816826) (not e!1160699))))

(assert (=> b!1816719 (= res!816826 call!114216)))

(declare-fun b!1816720 () Bool)

(assert (=> b!1816720 (= e!1160703 e!1160698)))

(declare-fun res!816825 () Bool)

(declare-fun nullable!1511 (Regex!4897) Bool)

(assert (=> b!1816720 (= res!816825 (not (nullable!1511 (reg!5226 (regex!3569 rule!559)))))))

(assert (=> b!1816720 (=> (not res!816825) (not e!1160698))))

(assert (= (and d!557107 (not res!816824)) b!1816718))

(assert (= (and b!1816718 c!296663) b!1816720))

(assert (= (and b!1816718 (not c!296663)) b!1816715))

(assert (= (and b!1816720 res!816825) b!1816716))

(assert (= (and b!1816715 c!296662) b!1816713))

(assert (= (and b!1816715 (not c!296662)) b!1816712))

(assert (= (and b!1816713 res!816822) b!1816714))

(assert (= (and b!1816712 (not res!816823)) b!1816719))

(assert (= (and b!1816719 res!816826) b!1816717))

(assert (= (or b!1816714 b!1816717) bm!114209))

(assert (= (or b!1816713 b!1816719) bm!114210))

(assert (= (or b!1816716 bm!114209) bm!114211))

(declare-fun m!2246255 () Bool)

(assert (=> bm!114210 m!2246255))

(declare-fun m!2246257 () Bool)

(assert (=> bm!114211 m!2246257))

(declare-fun m!2246259 () Bool)

(assert (=> b!1816720 m!2246259))

(assert (=> b!1816446 d!557107))

(declare-fun d!557111 () Bool)

(declare-fun res!816831 () Bool)

(declare-fun e!1160706 () Bool)

(assert (=> d!557111 (=> (not res!816831) (not e!1160706))))

(assert (=> d!557111 (= res!816831 (validRegex!1985 (regex!3569 rule!559)))))

(assert (=> d!557111 (= (ruleValid!1061 thiss!28068 rule!559) e!1160706)))

(declare-fun b!1816725 () Bool)

(declare-fun res!816832 () Bool)

(assert (=> b!1816725 (=> (not res!816832) (not e!1160706))))

(assert (=> b!1816725 (= res!816832 (not (nullable!1511 (regex!3569 rule!559))))))

(declare-fun b!1816726 () Bool)

(assert (=> b!1816726 (= e!1160706 (not (= (tag!3983 rule!559) (String!22628 ""))))))

(assert (= (and d!557111 res!816831) b!1816725))

(assert (= (and b!1816725 res!816832) b!1816726))

(assert (=> d!557111 m!2246045))

(declare-fun m!2246261 () Bool)

(assert (=> b!1816725 m!2246261))

(assert (=> b!1816446 d!557111))

(declare-fun d!557113 () Bool)

(assert (=> d!557113 (ruleValid!1061 thiss!28068 rule!559)))

(declare-fun lt!706054 () Unit!34533)

(declare-fun choose!11451 (LexerInterface!3198 Rule!6938 List!19915) Unit!34533)

(assert (=> d!557113 (= lt!706054 (choose!11451 thiss!28068 rule!559 rules!4538))))

(assert (=> d!557113 (contains!3605 rules!4538 rule!559)))

(assert (=> d!557113 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!582 thiss!28068 rule!559 rules!4538) lt!706054)))

(declare-fun bs!407221 () Bool)

(assert (= bs!407221 d!557113))

(assert (=> bs!407221 m!2246047))

(declare-fun m!2246263 () Bool)

(assert (=> bs!407221 m!2246263))

(assert (=> bs!407221 m!2246021))

(assert (=> b!1816446 d!557113))

(declare-fun b!1816738 () Bool)

(declare-fun e!1160709 () Bool)

(declare-fun tp!513168 () Bool)

(declare-fun tp!513169 () Bool)

(assert (=> b!1816738 (= e!1160709 (and tp!513168 tp!513169))))

(declare-fun b!1816739 () Bool)

(declare-fun tp!513166 () Bool)

(assert (=> b!1816739 (= e!1160709 tp!513166)))

(declare-fun b!1816740 () Bool)

(declare-fun tp!513167 () Bool)

(declare-fun tp!513165 () Bool)

(assert (=> b!1816740 (= e!1160709 (and tp!513167 tp!513165))))

(assert (=> b!1816447 (= tp!513096 e!1160709)))

(declare-fun b!1816737 () Bool)

(assert (=> b!1816737 (= e!1160709 tp_is_empty!8029)))

(assert (= (and b!1816447 ((_ is ElementMatch!4897) (regex!3569 rule!559))) b!1816737))

(assert (= (and b!1816447 ((_ is Concat!8557) (regex!3569 rule!559))) b!1816738))

(assert (= (and b!1816447 ((_ is Star!4897) (regex!3569 rule!559))) b!1816739))

(assert (= (and b!1816447 ((_ is Union!4897) (regex!3569 rule!559))) b!1816740))

(declare-fun b!1816742 () Bool)

(declare-fun e!1160710 () Bool)

(declare-fun tp!513173 () Bool)

(declare-fun tp!513174 () Bool)

(assert (=> b!1816742 (= e!1160710 (and tp!513173 tp!513174))))

(declare-fun b!1816743 () Bool)

(declare-fun tp!513171 () Bool)

(assert (=> b!1816743 (= e!1160710 tp!513171)))

(declare-fun b!1816744 () Bool)

(declare-fun tp!513172 () Bool)

(declare-fun tp!513170 () Bool)

(assert (=> b!1816744 (= e!1160710 (and tp!513172 tp!513170))))

(assert (=> b!1816453 (= tp!513099 e!1160710)))

(declare-fun b!1816741 () Bool)

(assert (=> b!1816741 (= e!1160710 tp_is_empty!8029)))

(assert (= (and b!1816453 ((_ is ElementMatch!4897) (regex!3569 (h!25246 rules!4538)))) b!1816741))

(assert (= (and b!1816453 ((_ is Concat!8557) (regex!3569 (h!25246 rules!4538)))) b!1816742))

(assert (= (and b!1816453 ((_ is Star!4897) (regex!3569 (h!25246 rules!4538)))) b!1816743))

(assert (= (and b!1816453 ((_ is Union!4897) (regex!3569 (h!25246 rules!4538)))) b!1816744))

(declare-fun b!1816749 () Bool)

(declare-fun e!1160713 () Bool)

(declare-fun tp!513177 () Bool)

(assert (=> b!1816749 (= e!1160713 (and tp_is_empty!8029 tp!513177))))

(assert (=> b!1816459 (= tp!513102 e!1160713)))

(assert (= (and b!1816459 ((_ is Cons!19844) (originalCharacters!4377 token!556))) b!1816749))

(declare-fun b!1816751 () Bool)

(declare-fun e!1160714 () Bool)

(declare-fun tp!513181 () Bool)

(declare-fun tp!513182 () Bool)

(assert (=> b!1816751 (= e!1160714 (and tp!513181 tp!513182))))

(declare-fun b!1816752 () Bool)

(declare-fun tp!513179 () Bool)

(assert (=> b!1816752 (= e!1160714 tp!513179)))

(declare-fun b!1816753 () Bool)

(declare-fun tp!513180 () Bool)

(declare-fun tp!513178 () Bool)

(assert (=> b!1816753 (= e!1160714 (and tp!513180 tp!513178))))

(assert (=> b!1816450 (= tp!513100 e!1160714)))

(declare-fun b!1816750 () Bool)

(assert (=> b!1816750 (= e!1160714 tp_is_empty!8029)))

(assert (= (and b!1816450 ((_ is ElementMatch!4897) (regex!3569 (rule!5677 token!556)))) b!1816750))

(assert (= (and b!1816450 ((_ is Concat!8557) (regex!3569 (rule!5677 token!556)))) b!1816751))

(assert (= (and b!1816450 ((_ is Star!4897) (regex!3569 (rule!5677 token!556)))) b!1816752))

(assert (= (and b!1816450 ((_ is Union!4897) (regex!3569 (rule!5677 token!556)))) b!1816753))

(declare-fun b!1816754 () Bool)

(declare-fun e!1160715 () Bool)

(declare-fun tp!513183 () Bool)

(assert (=> b!1816754 (= e!1160715 (and tp_is_empty!8029 tp!513183))))

(assert (=> b!1816451 (= tp!513095 e!1160715)))

(assert (= (and b!1816451 ((_ is Cons!19844) (t!169583 suffix!1667))) b!1816754))

(declare-fun b!1816755 () Bool)

(declare-fun e!1160716 () Bool)

(declare-fun tp!513184 () Bool)

(assert (=> b!1816755 (= e!1160716 (and tp_is_empty!8029 tp!513184))))

(assert (=> b!1816462 (= tp!513094 e!1160716)))

(assert (= (and b!1816462 ((_ is Cons!19844) (t!169583 input!3612))) b!1816755))

(declare-fun b!1816766 () Bool)

(declare-fun b_free!50183 () Bool)

(declare-fun b_next!50887 () Bool)

(assert (=> b!1816766 (= b_free!50183 (not b_next!50887))))

(declare-fun tp!513196 () Bool)

(declare-fun b_and!140653 () Bool)

(assert (=> b!1816766 (= tp!513196 b_and!140653)))

(declare-fun b_free!50185 () Bool)

(declare-fun b_next!50889 () Bool)

(assert (=> b!1816766 (= b_free!50185 (not b_next!50889))))

(declare-fun tb!111075 () Bool)

(declare-fun t!169600 () Bool)

(assert (=> (and b!1816766 (= (toChars!4963 (transformation!3569 (h!25246 (t!169584 rules!4538)))) (toChars!4963 (transformation!3569 (rule!5677 token!556)))) t!169600) tb!111075))

(declare-fun result!133410 () Bool)

(assert (= result!133410 result!133380))

(assert (=> d!557055 t!169600))

(assert (=> b!1816511 t!169600))

(declare-fun tp!513194 () Bool)

(declare-fun b_and!140655 () Bool)

(assert (=> b!1816766 (= tp!513194 (and (=> t!169600 result!133410) b_and!140655))))

(declare-fun e!1160727 () Bool)

(assert (=> b!1816766 (= e!1160727 (and tp!513196 tp!513194))))

(declare-fun b!1816765 () Bool)

(declare-fun tp!513193 () Bool)

(declare-fun e!1160728 () Bool)

(assert (=> b!1816765 (= e!1160728 (and tp!513193 (inv!25864 (tag!3983 (h!25246 (t!169584 rules!4538)))) (inv!25868 (transformation!3569 (h!25246 (t!169584 rules!4538)))) e!1160727))))

(declare-fun b!1816764 () Bool)

(declare-fun e!1160725 () Bool)

(declare-fun tp!513195 () Bool)

(assert (=> b!1816764 (= e!1160725 (and e!1160728 tp!513195))))

(assert (=> b!1816452 (= tp!513103 e!1160725)))

(assert (= b!1816765 b!1816766))

(assert (= b!1816764 b!1816765))

(assert (= (and b!1816452 ((_ is Cons!19845) (t!169584 rules!4538))) b!1816764))

(declare-fun m!2246265 () Bool)

(assert (=> b!1816765 m!2246265))

(declare-fun m!2246267 () Bool)

(assert (=> b!1816765 m!2246267))

(declare-fun b_lambda!59949 () Bool)

(assert (= b_lambda!59939 (or (and b!1816449 b_free!50169) (and b!1816454 b_free!50173 (= (toChars!4963 (transformation!3569 rule!559)) (toChars!4963 (transformation!3569 (rule!5677 token!556))))) (and b!1816457 b_free!50177 (= (toChars!4963 (transformation!3569 (h!25246 rules!4538))) (toChars!4963 (transformation!3569 (rule!5677 token!556))))) (and b!1816766 b_free!50185 (= (toChars!4963 (transformation!3569 (h!25246 (t!169584 rules!4538)))) (toChars!4963 (transformation!3569 (rule!5677 token!556))))) b_lambda!59949)))

(declare-fun b_lambda!59951 () Bool)

(assert (= b_lambda!59937 (or (and b!1816449 b_free!50169) (and b!1816454 b_free!50173 (= (toChars!4963 (transformation!3569 rule!559)) (toChars!4963 (transformation!3569 (rule!5677 token!556))))) (and b!1816457 b_free!50177 (= (toChars!4963 (transformation!3569 (h!25246 rules!4538))) (toChars!4963 (transformation!3569 (rule!5677 token!556))))) (and b!1816766 b_free!50185 (= (toChars!4963 (transformation!3569 (h!25246 (t!169584 rules!4538)))) (toChars!4963 (transformation!3569 (rule!5677 token!556))))) b_lambda!59951)))

(check-sat (not b!1816765) (not b!1816749) (not b_next!50879) (not d!557065) (not b!1816593) (not b_lambda!59951) (not b!1816647) (not d!557055) (not d!557111) (not b!1816754) (not b_next!50887) (not d!557053) (not b!1816725) (not b!1816502) (not bm!114193) (not d!557113) (not b!1816738) (not b!1816752) (not b!1816587) b_and!140617 (not b!1816511) (not b!1816742) (not b!1816503) (not b_next!50871) (not bm!114211) (not d!557045) (not b_next!50889) b_and!140613 (not b!1816594) (not b!1816720) (not d!557101) (not b_lambda!59949) (not b!1816613) b_and!140621 (not d!557067) (not b!1816764) (not b!1816586) (not d!557103) (not b!1816607) (not tb!111061) (not b!1816739) (not b_next!50881) (not b!1816753) (not b!1816614) (not b!1816488) (not bm!114210) (not b!1816755) b_and!140655 (not b!1816751) tp_is_empty!8029 (not b!1816591) (not b!1816512) (not b!1816590) b_and!140631 (not d!557089) b_and!140635 (not b!1816743) (not d!557085) (not b!1816476) (not b!1816475) (not d!557049) (not b!1816505) (not b!1816740) (not b_next!50875) (not b_next!50877) b_and!140633 (not b_next!50873) (not b!1816744) (not b!1816592) b_and!140653 (not b!1816588) (not b!1816465))
(check-sat (not b_next!50887) (not b_next!50879) b_and!140617 (not b_next!50871) b_and!140621 (not b_next!50881) b_and!140655 (not b_next!50875) b_and!140653 (not b_next!50889) b_and!140613 b_and!140631 b_and!140635 (not b_next!50877) b_and!140633 (not b_next!50873))
