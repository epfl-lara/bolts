; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!181026 () Bool)

(assert start!181026)

(declare-fun b!1826016 () Bool)

(declare-fun b_free!50847 () Bool)

(declare-fun b_next!51551 () Bool)

(assert (=> b!1826016 (= b_free!50847 (not b_next!51551))))

(declare-fun tp!516306 () Bool)

(declare-fun b_and!141825 () Bool)

(assert (=> b!1826016 (= tp!516306 b_and!141825)))

(declare-fun b_free!50849 () Bool)

(declare-fun b_next!51553 () Bool)

(assert (=> b!1826016 (= b_free!50849 (not b_next!51553))))

(declare-fun tp!516311 () Bool)

(declare-fun b_and!141827 () Bool)

(assert (=> b!1826016 (= tp!516311 b_and!141827)))

(declare-fun b!1826018 () Bool)

(declare-fun b_free!50851 () Bool)

(declare-fun b_next!51555 () Bool)

(assert (=> b!1826018 (= b_free!50851 (not b_next!51555))))

(declare-fun tp!516310 () Bool)

(declare-fun b_and!141829 () Bool)

(assert (=> b!1826018 (= tp!516310 b_and!141829)))

(declare-fun b_free!50853 () Bool)

(declare-fun b_next!51557 () Bool)

(assert (=> b!1826018 (= b_free!50853 (not b_next!51557))))

(declare-fun tp!516304 () Bool)

(declare-fun b_and!141831 () Bool)

(assert (=> b!1826018 (= tp!516304 b_and!141831)))

(declare-fun b!1826022 () Bool)

(declare-fun b_free!50855 () Bool)

(declare-fun b_next!51559 () Bool)

(assert (=> b!1826022 (= b_free!50855 (not b_next!51559))))

(declare-fun tp!516315 () Bool)

(declare-fun b_and!141833 () Bool)

(assert (=> b!1826022 (= tp!516315 b_and!141833)))

(declare-fun b_free!50857 () Bool)

(declare-fun b_next!51561 () Bool)

(assert (=> b!1826022 (= b_free!50857 (not b_next!51561))))

(declare-fun tp!516313 () Bool)

(declare-fun b_and!141835 () Bool)

(assert (=> b!1826022 (= tp!516313 b_and!141835)))

(declare-fun b!1826024 () Bool)

(assert (=> b!1826024 true))

(declare-fun b!1826011 () Bool)

(declare-fun e!1167096 () Bool)

(declare-fun e!1167084 () Bool)

(assert (=> b!1826011 (= e!1167096 e!1167084)))

(declare-fun res!821203 () Bool)

(assert (=> b!1826011 (=> (not res!821203) (not e!1167084))))

(declare-datatypes ((C!10064 0))(
  ( (C!10065 (val!5628 Int)) )
))
(declare-datatypes ((List!20116 0))(
  ( (Nil!20046) (Cons!20046 (h!25447 C!10064) (t!170283 List!20116)) )
))
(declare-fun suffix!1667 () List!20116)

(declare-fun lt!709511 () List!20116)

(declare-fun input!3612 () List!20116)

(declare-fun ++!5441 (List!20116 List!20116) List!20116)

(assert (=> b!1826011 (= res!821203 (= input!3612 (++!5441 lt!709511 suffix!1667)))))

(declare-datatypes ((List!20117 0))(
  ( (Nil!20047) (Cons!20047 (h!25448 (_ BitVec 16)) (t!170284 List!20117)) )
))
(declare-datatypes ((TokenValue!3707 0))(
  ( (FloatLiteralValue!7414 (text!26394 List!20117)) (TokenValueExt!3706 (__x!12716 Int)) (Broken!18535 (value!112725 List!20117)) (Object!3776) (End!3707) (Def!3707) (Underscore!3707) (Match!3707) (Else!3707) (Error!3707) (Case!3707) (If!3707) (Extends!3707) (Abstract!3707) (Class!3707) (Val!3707) (DelimiterValue!7414 (del!3767 List!20117)) (KeywordValue!3713 (value!112726 List!20117)) (CommentValue!7414 (value!112727 List!20117)) (WhitespaceValue!7414 (value!112728 List!20117)) (IndentationValue!3707 (value!112729 List!20117)) (String!22866) (Int32!3707) (Broken!18536 (value!112730 List!20117)) (Boolean!3708) (Unit!34722) (OperatorValue!3710 (op!3767 List!20117)) (IdentifierValue!7414 (value!112731 List!20117)) (IdentifierValue!7415 (value!112732 List!20117)) (WhitespaceValue!7415 (value!112733 List!20117)) (True!7414) (False!7414) (Broken!18537 (value!112734 List!20117)) (Broken!18538 (value!112735 List!20117)) (True!7415) (RightBrace!3707) (RightBracket!3707) (Colon!3707) (Null!3707) (Comma!3707) (LeftBracket!3707) (False!7415) (LeftBrace!3707) (ImaginaryLiteralValue!3707 (text!26395 List!20117)) (StringLiteralValue!11121 (value!112736 List!20117)) (EOFValue!3707 (value!112737 List!20117)) (IdentValue!3707 (value!112738 List!20117)) (DelimiterValue!7415 (value!112739 List!20117)) (DedentValue!3707 (value!112740 List!20117)) (NewLineValue!3707 (value!112741 List!20117)) (IntegerValue!11121 (value!112742 (_ BitVec 32)) (text!26396 List!20117)) (IntegerValue!11122 (value!112743 Int) (text!26397 List!20117)) (Times!3707) (Or!3707) (Equal!3707) (Minus!3707) (Broken!18539 (value!112744 List!20117)) (And!3707) (Div!3707) (LessEqual!3707) (Mod!3707) (Concat!8652) (Not!3707) (Plus!3707) (SpaceValue!3707 (value!112745 List!20117)) (IntegerValue!11123 (value!112746 Int) (text!26398 List!20117)) (StringLiteralValue!11122 (text!26399 List!20117)) (FloatLiteralValue!7415 (text!26400 List!20117)) (BytesLiteralValue!3707 (value!112747 List!20117)) (CommentValue!7415 (value!112748 List!20117)) (StringLiteralValue!11123 (value!112749 List!20117)) (ErrorTokenValue!3707 (msg!3768 List!20117)) )
))
(declare-datatypes ((IArray!13303 0))(
  ( (IArray!13304 (innerList!6709 List!20116)) )
))
(declare-datatypes ((Conc!6649 0))(
  ( (Node!6649 (left!16043 Conc!6649) (right!16373 Conc!6649) (csize!13528 Int) (cheight!6860 Int)) (Leaf!9678 (xs!9525 IArray!13303) (csize!13529 Int)) (Empty!6649) )
))
(declare-datatypes ((BalanceConc!13242 0))(
  ( (BalanceConc!13243 (c!297890 Conc!6649)) )
))
(declare-datatypes ((TokenValueInjection!7074 0))(
  ( (TokenValueInjection!7075 (toValue!5156 Int) (toChars!5015 Int)) )
))
(declare-datatypes ((String!22867 0))(
  ( (String!22868 (value!112750 String)) )
))
(declare-datatypes ((Regex!4945 0))(
  ( (ElementMatch!4945 (c!297891 C!10064)) (Concat!8653 (regOne!10402 Regex!4945) (regTwo!10402 Regex!4945)) (EmptyExpr!4945) (Star!4945 (reg!5274 Regex!4945)) (EmptyLang!4945) (Union!4945 (regOne!10403 Regex!4945) (regTwo!10403 Regex!4945)) )
))
(declare-datatypes ((Rule!7034 0))(
  ( (Rule!7035 (regex!3617 Regex!4945) (tag!4031 String!22867) (isSeparator!3617 Bool) (transformation!3617 TokenValueInjection!7074)) )
))
(declare-datatypes ((Token!6788 0))(
  ( (Token!6789 (value!112751 TokenValue!3707) (rule!5771 Rule!7034) (size!15905 Int) (originalCharacters!4425 List!20116)) )
))
(declare-fun token!556 () Token!6788)

(declare-fun list!8145 (BalanceConc!13242) List!20116)

(declare-fun charsOf!2260 (Token!6788) BalanceConc!13242)

(assert (=> b!1826011 (= lt!709511 (list!8145 (charsOf!2260 token!556)))))

(declare-fun b!1826012 () Bool)

(declare-fun e!1167098 () Bool)

(declare-fun tp_is_empty!8125 () Bool)

(declare-fun tp!516309 () Bool)

(assert (=> b!1826012 (= e!1167098 (and tp_is_empty!8125 tp!516309))))

(declare-fun b!1826013 () Bool)

(declare-fun res!821197 () Bool)

(declare-fun e!1167078 () Bool)

(assert (=> b!1826013 (=> (not res!821197) (not e!1167078))))

(declare-datatypes ((LexerInterface!3246 0))(
  ( (LexerInterfaceExt!3243 (__x!12717 Int)) (Lexer!3244) )
))
(declare-fun thiss!28068 () LexerInterface!3246)

(declare-datatypes ((List!20118 0))(
  ( (Nil!20048) (Cons!20048 (h!25449 Rule!7034) (t!170285 List!20118)) )
))
(declare-fun rules!4538 () List!20118)

(declare-fun rulesInvariant!2915 (LexerInterface!3246 List!20118) Bool)

(assert (=> b!1826013 (= res!821197 (rulesInvariant!2915 thiss!28068 rules!4538))))

(declare-fun tp!516316 () Bool)

(declare-fun b!1826014 () Bool)

(declare-fun e!1167079 () Bool)

(declare-fun e!1167095 () Bool)

(declare-fun inv!26086 (String!22867) Bool)

(declare-fun inv!26089 (TokenValueInjection!7074) Bool)

(assert (=> b!1826014 (= e!1167095 (and tp!516316 (inv!26086 (tag!4031 (h!25449 rules!4538))) (inv!26089 (transformation!3617 (h!25449 rules!4538))) e!1167079))))

(declare-fun b!1826015 () Bool)

(declare-fun rule!559 () Rule!7034)

(declare-fun e!1167080 () Bool)

(declare-fun e!1167093 () Bool)

(declare-fun tp!516314 () Bool)

(assert (=> b!1826015 (= e!1167093 (and tp!516314 (inv!26086 (tag!4031 rule!559)) (inv!26089 (transformation!3617 rule!559)) e!1167080))))

(assert (=> b!1826016 (= e!1167080 (and tp!516306 tp!516311))))

(declare-fun b!1826017 () Bool)

(declare-fun e!1167094 () Bool)

(declare-fun e!1167087 () Bool)

(assert (=> b!1826017 (= e!1167094 e!1167087)))

(declare-fun res!821205 () Bool)

(assert (=> b!1826017 (=> res!821205 e!1167087)))

(declare-fun lt!709519 () Regex!4945)

(declare-datatypes ((List!20119 0))(
  ( (Nil!20049) (Cons!20049 (h!25450 Regex!4945) (t!170286 List!20119)) )
))
(declare-fun lt!709512 () List!20119)

(declare-fun generalisedUnion!470 (List!20119) Regex!4945)

(assert (=> b!1826017 (= res!821205 (not (= lt!709519 (generalisedUnion!470 lt!709512))))))

(declare-fun rulesRegex!947 (LexerInterface!3246 List!20118) Regex!4945)

(assert (=> b!1826017 (= lt!709519 (rulesRegex!947 thiss!28068 rules!4538))))

(declare-fun lambda!71655 () Int)

(declare-fun map!4154 (List!20118 Int) List!20119)

(assert (=> b!1826017 (= lt!709512 (map!4154 rules!4538 lambda!71655))))

(declare-datatypes ((Unit!34723 0))(
  ( (Unit!34724) )
))
(declare-fun lt!709513 () Unit!34723)

(declare-fun lemma!505 (List!20116 Rule!7034 List!20118 List!20116 LexerInterface!3246 Token!6788 List!20118) Unit!34723)

(assert (=> b!1826017 (= lt!709513 (lemma!505 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(assert (=> b!1826018 (= e!1167079 (and tp!516310 tp!516304))))

(declare-fun res!821199 () Bool)

(assert (=> start!181026 (=> (not res!821199) (not e!1167078))))

(get-info :version)

(assert (=> start!181026 (= res!821199 ((_ is Lexer!3244) thiss!28068))))

(assert (=> start!181026 e!1167078))

(assert (=> start!181026 e!1167098))

(assert (=> start!181026 true))

(declare-fun e!1167085 () Bool)

(assert (=> start!181026 e!1167085))

(declare-fun e!1167083 () Bool)

(declare-fun inv!26090 (Token!6788) Bool)

(assert (=> start!181026 (and (inv!26090 token!556) e!1167083)))

(assert (=> start!181026 e!1167093))

(declare-fun e!1167097 () Bool)

(assert (=> start!181026 e!1167097))

(declare-fun b!1826010 () Bool)

(declare-fun e!1167081 () Bool)

(assert (=> b!1826010 (= e!1167081 e!1167094)))

(declare-fun res!821198 () Bool)

(assert (=> b!1826010 (=> res!821198 e!1167094)))

(declare-datatypes ((tuple2!19538 0))(
  ( (tuple2!19539 (_1!11171 Token!6788) (_2!11171 List!20116)) )
))
(declare-datatypes ((Option!4197 0))(
  ( (None!4196) (Some!4196 (v!25753 tuple2!19538)) )
))
(declare-fun lt!709515 () Option!4197)

(declare-fun lt!709521 () Option!4197)

(assert (=> b!1826010 (= res!821198 (not (= lt!709515 lt!709521)))))

(declare-fun lt!709517 () Int)

(declare-fun lt!709520 () TokenValue!3707)

(assert (=> b!1826010 (= lt!709515 (Some!4196 (tuple2!19539 (Token!6789 lt!709520 rule!559 lt!709517 lt!709511) suffix!1667)))))

(declare-fun maxPrefixOneRule!1159 (LexerInterface!3246 Rule!7034 List!20116) Option!4197)

(assert (=> b!1826010 (= lt!709515 (maxPrefixOneRule!1159 thiss!28068 rule!559 input!3612))))

(declare-fun size!15906 (List!20116) Int)

(assert (=> b!1826010 (= lt!709517 (size!15906 lt!709511))))

(declare-fun apply!5409 (TokenValueInjection!7074 BalanceConc!13242) TokenValue!3707)

(declare-fun seqFromList!2578 (List!20116) BalanceConc!13242)

(assert (=> b!1826010 (= lt!709520 (apply!5409 (transformation!3617 rule!559) (seqFromList!2578 lt!709511)))))

(declare-fun lt!709510 () Unit!34723)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!535 (LexerInterface!3246 List!20118 List!20116 List!20116 List!20116 Rule!7034) Unit!34723)

(assert (=> b!1826010 (= lt!709510 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!535 thiss!28068 rules!4538 lt!709511 input!3612 suffix!1667 rule!559))))

(declare-fun b!1826019 () Bool)

(declare-fun tp!516308 () Bool)

(assert (=> b!1826019 (= e!1167085 (and e!1167095 tp!516308))))

(declare-fun b!1826020 () Bool)

(assert (=> b!1826020 (= e!1167078 e!1167096)))

(declare-fun res!821206 () Bool)

(assert (=> b!1826020 (=> (not res!821206) (not e!1167096))))

(declare-fun maxPrefix!1794 (LexerInterface!3246 List!20118 List!20116) Option!4197)

(assert (=> b!1826020 (= res!821206 (= (maxPrefix!1794 thiss!28068 rules!4538 input!3612) lt!709521))))

(assert (=> b!1826020 (= lt!709521 (Some!4196 (tuple2!19539 token!556 suffix!1667)))))

(declare-fun b!1826021 () Bool)

(declare-fun res!821204 () Bool)

(assert (=> b!1826021 (=> (not res!821204) (not e!1167096))))

(assert (=> b!1826021 (= res!821204 (= (rule!5771 token!556) rule!559))))

(declare-fun e!1167086 () Bool)

(assert (=> b!1826022 (= e!1167086 (and tp!516315 tp!516313))))

(declare-fun b!1826023 () Bool)

(declare-fun res!821196 () Bool)

(assert (=> b!1826023 (=> (not res!821196) (not e!1167078))))

(declare-fun contains!3680 (List!20118 Rule!7034) Bool)

(assert (=> b!1826023 (= res!821196 (contains!3680 rules!4538 rule!559))))

(declare-fun e!1167082 () Bool)

(declare-fun validRegex!2013 (Regex!4945) Bool)

(assert (=> b!1826024 (= e!1167082 (validRegex!2013 (regex!3617 rule!559)))))

(declare-fun lt!709516 () List!20119)

(declare-fun lambda!71656 () Int)

(declare-fun matchR!2410 (Regex!4945 List!20116) Bool)

(declare-fun exists!641 (List!20119 Int) Bool)

(assert (=> b!1826024 (= (matchR!2410 lt!709519 lt!709511) (exists!641 lt!709516 lambda!71656))))

(declare-fun lt!709518 () Unit!34723)

(declare-fun matchRGenUnionSpec!226 (Regex!4945 List!20119 List!20116) Unit!34723)

(assert (=> b!1826024 (= lt!709518 (matchRGenUnionSpec!226 lt!709519 lt!709516 lt!709511))))

(declare-fun b!1826025 () Bool)

(declare-fun e!1167092 () Bool)

(declare-fun tp!516312 () Bool)

(assert (=> b!1826025 (= e!1167092 (and tp!516312 (inv!26086 (tag!4031 (rule!5771 token!556))) (inv!26089 (transformation!3617 (rule!5771 token!556))) e!1167086))))

(declare-fun tp!516305 () Bool)

(declare-fun b!1826026 () Bool)

(declare-fun inv!21 (TokenValue!3707) Bool)

(assert (=> b!1826026 (= e!1167083 (and (inv!21 (value!112751 token!556)) e!1167092 tp!516305))))

(declare-fun b!1826027 () Bool)

(declare-fun tp!516307 () Bool)

(assert (=> b!1826027 (= e!1167097 (and tp_is_empty!8125 tp!516307))))

(declare-fun b!1826028 () Bool)

(assert (=> b!1826028 (= e!1167084 (not e!1167081))))

(declare-fun res!821202 () Bool)

(assert (=> b!1826028 (=> res!821202 e!1167081)))

(assert (=> b!1826028 (= res!821202 (not (matchR!2410 (regex!3617 rule!559) lt!709511)))))

(declare-fun ruleValid!1109 (LexerInterface!3246 Rule!7034) Bool)

(assert (=> b!1826028 (ruleValid!1109 thiss!28068 rule!559)))

(declare-fun lt!709522 () Unit!34723)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!630 (LexerInterface!3246 Rule!7034 List!20118) Unit!34723)

(assert (=> b!1826028 (= lt!709522 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!630 thiss!28068 rule!559 rules!4538))))

(declare-fun b!1826029 () Bool)

(assert (=> b!1826029 (= e!1167087 e!1167082)))

(declare-fun res!821200 () Bool)

(assert (=> b!1826029 (=> res!821200 e!1167082)))

(declare-fun contains!3681 (List!20119 Regex!4945) Bool)

(assert (=> b!1826029 (= res!821200 (not (contains!3681 lt!709516 (regex!3617 rule!559))))))

(assert (=> b!1826029 (= lt!709516 (map!4154 rules!4538 lambda!71655))))

(declare-fun lt!709514 () Unit!34723)

(declare-fun lemma!506 (List!20116 Rule!7034 List!20118 List!20116 LexerInterface!3246 Token!6788 List!20118) Unit!34723)

(assert (=> b!1826029 (= lt!709514 (lemma!506 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(declare-fun b!1826030 () Bool)

(declare-fun res!821201 () Bool)

(assert (=> b!1826030 (=> (not res!821201) (not e!1167078))))

(declare-fun isEmpty!12659 (List!20118) Bool)

(assert (=> b!1826030 (= res!821201 (not (isEmpty!12659 rules!4538)))))

(assert (= (and start!181026 res!821199) b!1826030))

(assert (= (and b!1826030 res!821201) b!1826013))

(assert (= (and b!1826013 res!821197) b!1826023))

(assert (= (and b!1826023 res!821196) b!1826020))

(assert (= (and b!1826020 res!821206) b!1826021))

(assert (= (and b!1826021 res!821204) b!1826011))

(assert (= (and b!1826011 res!821203) b!1826028))

(assert (= (and b!1826028 (not res!821202)) b!1826010))

(assert (= (and b!1826010 (not res!821198)) b!1826017))

(assert (= (and b!1826017 (not res!821205)) b!1826029))

(assert (= (and b!1826029 (not res!821200)) b!1826024))

(assert (= (and start!181026 ((_ is Cons!20046) suffix!1667)) b!1826012))

(assert (= b!1826014 b!1826018))

(assert (= b!1826019 b!1826014))

(assert (= (and start!181026 ((_ is Cons!20048) rules!4538)) b!1826019))

(assert (= b!1826025 b!1826022))

(assert (= b!1826026 b!1826025))

(assert (= start!181026 b!1826026))

(assert (= b!1826015 b!1826016))

(assert (= start!181026 b!1826015))

(assert (= (and start!181026 ((_ is Cons!20046) input!3612)) b!1826027))

(declare-fun m!2254411 () Bool)

(assert (=> b!1826017 m!2254411))

(declare-fun m!2254413 () Bool)

(assert (=> b!1826017 m!2254413))

(declare-fun m!2254415 () Bool)

(assert (=> b!1826017 m!2254415))

(declare-fun m!2254417 () Bool)

(assert (=> b!1826017 m!2254417))

(declare-fun m!2254419 () Bool)

(assert (=> start!181026 m!2254419))

(declare-fun m!2254421 () Bool)

(assert (=> b!1826030 m!2254421))

(declare-fun m!2254423 () Bool)

(assert (=> b!1826011 m!2254423))

(declare-fun m!2254425 () Bool)

(assert (=> b!1826011 m!2254425))

(assert (=> b!1826011 m!2254425))

(declare-fun m!2254427 () Bool)

(assert (=> b!1826011 m!2254427))

(declare-fun m!2254429 () Bool)

(assert (=> b!1826020 m!2254429))

(declare-fun m!2254431 () Bool)

(assert (=> b!1826026 m!2254431))

(declare-fun m!2254433 () Bool)

(assert (=> b!1826013 m!2254433))

(declare-fun m!2254435 () Bool)

(assert (=> b!1826015 m!2254435))

(declare-fun m!2254437 () Bool)

(assert (=> b!1826015 m!2254437))

(declare-fun m!2254439 () Bool)

(assert (=> b!1826010 m!2254439))

(declare-fun m!2254441 () Bool)

(assert (=> b!1826010 m!2254441))

(declare-fun m!2254443 () Bool)

(assert (=> b!1826010 m!2254443))

(declare-fun m!2254445 () Bool)

(assert (=> b!1826010 m!2254445))

(declare-fun m!2254447 () Bool)

(assert (=> b!1826010 m!2254447))

(assert (=> b!1826010 m!2254439))

(declare-fun m!2254449 () Bool)

(assert (=> b!1826024 m!2254449))

(declare-fun m!2254451 () Bool)

(assert (=> b!1826024 m!2254451))

(declare-fun m!2254453 () Bool)

(assert (=> b!1826024 m!2254453))

(declare-fun m!2254455 () Bool)

(assert (=> b!1826024 m!2254455))

(declare-fun m!2254457 () Bool)

(assert (=> b!1826025 m!2254457))

(declare-fun m!2254459 () Bool)

(assert (=> b!1826025 m!2254459))

(declare-fun m!2254461 () Bool)

(assert (=> b!1826023 m!2254461))

(declare-fun m!2254463 () Bool)

(assert (=> b!1826014 m!2254463))

(declare-fun m!2254465 () Bool)

(assert (=> b!1826014 m!2254465))

(declare-fun m!2254467 () Bool)

(assert (=> b!1826029 m!2254467))

(assert (=> b!1826029 m!2254415))

(declare-fun m!2254469 () Bool)

(assert (=> b!1826029 m!2254469))

(declare-fun m!2254471 () Bool)

(assert (=> b!1826028 m!2254471))

(declare-fun m!2254473 () Bool)

(assert (=> b!1826028 m!2254473))

(declare-fun m!2254475 () Bool)

(assert (=> b!1826028 m!2254475))

(check-sat tp_is_empty!8125 (not b_next!51557) b_and!141827 (not b!1826013) b_and!141835 (not b!1826029) b_and!141829 (not b!1826024) b_and!141831 (not start!181026) (not b_next!51553) (not b!1826027) (not b!1826028) (not b!1826011) (not b!1826012) (not b_next!51551) (not b_next!51555) (not b_next!51559) b_and!141833 (not b_next!51561) (not b!1826023) (not b!1826015) (not b!1826026) (not b!1826010) (not b!1826020) (not b!1826030) (not b!1826017) b_and!141825 (not b!1826019) (not b!1826025) (not b!1826014))
(check-sat (not b_next!51557) b_and!141827 (not b_next!51561) b_and!141835 b_and!141829 b_and!141825 b_and!141831 (not b_next!51553) (not b_next!51551) (not b_next!51555) (not b_next!51559) b_and!141833)
(get-model)

(declare-fun d!558719 () Bool)

(declare-fun lt!709528 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2955 (List!20118) (InoxSet Rule!7034))

(assert (=> d!558719 (= lt!709528 (select (content!2955 rules!4538) rule!559))))

(declare-fun e!1167146 () Bool)

(assert (=> d!558719 (= lt!709528 e!1167146)))

(declare-fun res!821255 () Bool)

(assert (=> d!558719 (=> (not res!821255) (not e!1167146))))

(assert (=> d!558719 (= res!821255 ((_ is Cons!20048) rules!4538))))

(assert (=> d!558719 (= (contains!3680 rules!4538 rule!559) lt!709528)))

(declare-fun b!1826108 () Bool)

(declare-fun e!1167145 () Bool)

(assert (=> b!1826108 (= e!1167146 e!1167145)))

(declare-fun res!821254 () Bool)

(assert (=> b!1826108 (=> res!821254 e!1167145)))

(assert (=> b!1826108 (= res!821254 (= (h!25449 rules!4538) rule!559))))

(declare-fun b!1826109 () Bool)

(assert (=> b!1826109 (= e!1167145 (contains!3680 (t!170285 rules!4538) rule!559))))

(assert (= (and d!558719 res!821255) b!1826108))

(assert (= (and b!1826108 (not res!821254)) b!1826109))

(declare-fun m!2254501 () Bool)

(assert (=> d!558719 m!2254501))

(declare-fun m!2254503 () Bool)

(assert (=> d!558719 m!2254503))

(declare-fun m!2254505 () Bool)

(assert (=> b!1826109 m!2254505))

(assert (=> b!1826023 d!558719))

(declare-fun d!558725 () Bool)

(declare-fun res!821260 () Bool)

(declare-fun e!1167151 () Bool)

(assert (=> d!558725 (=> (not res!821260) (not e!1167151))))

(declare-fun rulesValid!1377 (LexerInterface!3246 List!20118) Bool)

(assert (=> d!558725 (= res!821260 (rulesValid!1377 thiss!28068 rules!4538))))

(assert (=> d!558725 (= (rulesInvariant!2915 thiss!28068 rules!4538) e!1167151)))

(declare-fun b!1826114 () Bool)

(declare-datatypes ((List!20121 0))(
  ( (Nil!20051) (Cons!20051 (h!25452 String!22867) (t!170320 List!20121)) )
))
(declare-fun noDuplicateTag!1375 (LexerInterface!3246 List!20118 List!20121) Bool)

(assert (=> b!1826114 (= e!1167151 (noDuplicateTag!1375 thiss!28068 rules!4538 Nil!20051))))

(assert (= (and d!558725 res!821260) b!1826114))

(declare-fun m!2254513 () Bool)

(assert (=> d!558725 m!2254513))

(declare-fun m!2254515 () Bool)

(assert (=> b!1826114 m!2254515))

(assert (=> b!1826013 d!558725))

(declare-fun b!1826143 () Bool)

(declare-fun e!1167169 () List!20116)

(assert (=> b!1826143 (= e!1167169 suffix!1667)))

(declare-fun b!1826144 () Bool)

(assert (=> b!1826144 (= e!1167169 (Cons!20046 (h!25447 lt!709511) (++!5441 (t!170283 lt!709511) suffix!1667)))))

(declare-fun b!1826145 () Bool)

(declare-fun res!821274 () Bool)

(declare-fun e!1167168 () Bool)

(assert (=> b!1826145 (=> (not res!821274) (not e!1167168))))

(declare-fun lt!709540 () List!20116)

(assert (=> b!1826145 (= res!821274 (= (size!15906 lt!709540) (+ (size!15906 lt!709511) (size!15906 suffix!1667))))))

(declare-fun b!1826146 () Bool)

(assert (=> b!1826146 (= e!1167168 (or (not (= suffix!1667 Nil!20046)) (= lt!709540 lt!709511)))))

(declare-fun d!558729 () Bool)

(assert (=> d!558729 e!1167168))

(declare-fun res!821275 () Bool)

(assert (=> d!558729 (=> (not res!821275) (not e!1167168))))

(declare-fun content!2956 (List!20116) (InoxSet C!10064))

(assert (=> d!558729 (= res!821275 (= (content!2956 lt!709540) ((_ map or) (content!2956 lt!709511) (content!2956 suffix!1667))))))

(assert (=> d!558729 (= lt!709540 e!1167169)))

(declare-fun c!297912 () Bool)

(assert (=> d!558729 (= c!297912 ((_ is Nil!20046) lt!709511))))

(assert (=> d!558729 (= (++!5441 lt!709511 suffix!1667) lt!709540)))

(assert (= (and d!558729 c!297912) b!1826143))

(assert (= (and d!558729 (not c!297912)) b!1826144))

(assert (= (and d!558729 res!821275) b!1826145))

(assert (= (and b!1826145 res!821274) b!1826146))

(declare-fun m!2254543 () Bool)

(assert (=> b!1826144 m!2254543))

(declare-fun m!2254545 () Bool)

(assert (=> b!1826145 m!2254545))

(assert (=> b!1826145 m!2254445))

(declare-fun m!2254547 () Bool)

(assert (=> b!1826145 m!2254547))

(declare-fun m!2254549 () Bool)

(assert (=> d!558729 m!2254549))

(declare-fun m!2254551 () Bool)

(assert (=> d!558729 m!2254551))

(declare-fun m!2254553 () Bool)

(assert (=> d!558729 m!2254553))

(assert (=> b!1826011 d!558729))

(declare-fun d!558739 () Bool)

(declare-fun list!8147 (Conc!6649) List!20116)

(assert (=> d!558739 (= (list!8145 (charsOf!2260 token!556)) (list!8147 (c!297890 (charsOf!2260 token!556))))))

(declare-fun bs!407592 () Bool)

(assert (= bs!407592 d!558739))

(declare-fun m!2254555 () Bool)

(assert (=> bs!407592 m!2254555))

(assert (=> b!1826011 d!558739))

(declare-fun d!558741 () Bool)

(declare-fun lt!709543 () BalanceConc!13242)

(assert (=> d!558741 (= (list!8145 lt!709543) (originalCharacters!4425 token!556))))

(declare-fun dynLambda!9969 (Int TokenValue!3707) BalanceConc!13242)

(assert (=> d!558741 (= lt!709543 (dynLambda!9969 (toChars!5015 (transformation!3617 (rule!5771 token!556))) (value!112751 token!556)))))

(assert (=> d!558741 (= (charsOf!2260 token!556) lt!709543)))

(declare-fun b_lambda!60323 () Bool)

(assert (=> (not b_lambda!60323) (not d!558741)))

(declare-fun t!170294 () Bool)

(declare-fun tb!111563 () Bool)

(assert (=> (and b!1826016 (= (toChars!5015 (transformation!3617 rule!559)) (toChars!5015 (transformation!3617 (rule!5771 token!556)))) t!170294) tb!111563))

(declare-fun b!1826151 () Bool)

(declare-fun e!1167172 () Bool)

(declare-fun tp!516322 () Bool)

(declare-fun inv!26093 (Conc!6649) Bool)

(assert (=> b!1826151 (= e!1167172 (and (inv!26093 (c!297890 (dynLambda!9969 (toChars!5015 (transformation!3617 (rule!5771 token!556))) (value!112751 token!556)))) tp!516322))))

(declare-fun result!134124 () Bool)

(declare-fun inv!26094 (BalanceConc!13242) Bool)

(assert (=> tb!111563 (= result!134124 (and (inv!26094 (dynLambda!9969 (toChars!5015 (transformation!3617 (rule!5771 token!556))) (value!112751 token!556))) e!1167172))))

(assert (= tb!111563 b!1826151))

(declare-fun m!2254557 () Bool)

(assert (=> b!1826151 m!2254557))

(declare-fun m!2254559 () Bool)

(assert (=> tb!111563 m!2254559))

(assert (=> d!558741 t!170294))

(declare-fun b_and!141843 () Bool)

(assert (= b_and!141827 (and (=> t!170294 result!134124) b_and!141843)))

(declare-fun tb!111565 () Bool)

(declare-fun t!170296 () Bool)

(assert (=> (and b!1826018 (= (toChars!5015 (transformation!3617 (h!25449 rules!4538))) (toChars!5015 (transformation!3617 (rule!5771 token!556)))) t!170296) tb!111565))

(declare-fun result!134128 () Bool)

(assert (= result!134128 result!134124))

(assert (=> d!558741 t!170296))

(declare-fun b_and!141845 () Bool)

(assert (= b_and!141831 (and (=> t!170296 result!134128) b_and!141845)))

(declare-fun t!170298 () Bool)

(declare-fun tb!111567 () Bool)

(assert (=> (and b!1826022 (= (toChars!5015 (transformation!3617 (rule!5771 token!556))) (toChars!5015 (transformation!3617 (rule!5771 token!556)))) t!170298) tb!111567))

(declare-fun result!134130 () Bool)

(assert (= result!134130 result!134124))

(assert (=> d!558741 t!170298))

(declare-fun b_and!141847 () Bool)

(assert (= b_and!141835 (and (=> t!170298 result!134130) b_and!141847)))

(declare-fun m!2254561 () Bool)

(assert (=> d!558741 m!2254561))

(declare-fun m!2254563 () Bool)

(assert (=> d!558741 m!2254563))

(assert (=> b!1826011 d!558741))

(declare-fun d!558743 () Bool)

(assert (=> d!558743 (= (inv!26086 (tag!4031 rule!559)) (= (mod (str.len (value!112750 (tag!4031 rule!559))) 2) 0))))

(assert (=> b!1826015 d!558743))

(declare-fun d!558745 () Bool)

(declare-fun res!821278 () Bool)

(declare-fun e!1167175 () Bool)

(assert (=> d!558745 (=> (not res!821278) (not e!1167175))))

(declare-fun semiInverseModEq!1450 (Int Int) Bool)

(assert (=> d!558745 (= res!821278 (semiInverseModEq!1450 (toChars!5015 (transformation!3617 rule!559)) (toValue!5156 (transformation!3617 rule!559))))))

(assert (=> d!558745 (= (inv!26089 (transformation!3617 rule!559)) e!1167175)))

(declare-fun b!1826154 () Bool)

(declare-fun equivClasses!1391 (Int Int) Bool)

(assert (=> b!1826154 (= e!1167175 (equivClasses!1391 (toChars!5015 (transformation!3617 rule!559)) (toValue!5156 (transformation!3617 rule!559))))))

(assert (= (and d!558745 res!821278) b!1826154))

(declare-fun m!2254565 () Bool)

(assert (=> d!558745 m!2254565))

(declare-fun m!2254567 () Bool)

(assert (=> b!1826154 m!2254567))

(assert (=> b!1826015 d!558745))

(declare-fun d!558747 () Bool)

(declare-fun c!297919 () Bool)

(assert (=> d!558747 (= c!297919 ((_ is IntegerValue!11121) (value!112751 token!556)))))

(declare-fun e!1167189 () Bool)

(assert (=> d!558747 (= (inv!21 (value!112751 token!556)) e!1167189)))

(declare-fun b!1826183 () Bool)

(declare-fun inv!16 (TokenValue!3707) Bool)

(assert (=> b!1826183 (= e!1167189 (inv!16 (value!112751 token!556)))))

(declare-fun b!1826184 () Bool)

(declare-fun e!1167188 () Bool)

(declare-fun inv!17 (TokenValue!3707) Bool)

(assert (=> b!1826184 (= e!1167188 (inv!17 (value!112751 token!556)))))

(declare-fun b!1826185 () Bool)

(declare-fun e!1167190 () Bool)

(declare-fun inv!15 (TokenValue!3707) Bool)

(assert (=> b!1826185 (= e!1167190 (inv!15 (value!112751 token!556)))))

(declare-fun b!1826186 () Bool)

(declare-fun res!821295 () Bool)

(assert (=> b!1826186 (=> res!821295 e!1167190)))

(assert (=> b!1826186 (= res!821295 (not ((_ is IntegerValue!11123) (value!112751 token!556))))))

(assert (=> b!1826186 (= e!1167188 e!1167190)))

(declare-fun b!1826187 () Bool)

(assert (=> b!1826187 (= e!1167189 e!1167188)))

(declare-fun c!297920 () Bool)

(assert (=> b!1826187 (= c!297920 ((_ is IntegerValue!11122) (value!112751 token!556)))))

(assert (= (and d!558747 c!297919) b!1826183))

(assert (= (and d!558747 (not c!297919)) b!1826187))

(assert (= (and b!1826187 c!297920) b!1826184))

(assert (= (and b!1826187 (not c!297920)) b!1826186))

(assert (= (and b!1826186 (not res!821295)) b!1826185))

(declare-fun m!2254569 () Bool)

(assert (=> b!1826183 m!2254569))

(declare-fun m!2254571 () Bool)

(assert (=> b!1826184 m!2254571))

(declare-fun m!2254573 () Bool)

(assert (=> b!1826185 m!2254573))

(assert (=> b!1826026 d!558747))

(declare-fun bm!114529 () Bool)

(declare-fun call!114534 () Bool)

(declare-fun call!114535 () Bool)

(assert (=> bm!114529 (= call!114534 call!114535)))

(declare-fun b!1826215 () Bool)

(declare-fun res!821315 () Bool)

(declare-fun e!1167212 () Bool)

(assert (=> b!1826215 (=> (not res!821315) (not e!1167212))))

(assert (=> b!1826215 (= res!821315 call!114534)))

(declare-fun e!1167211 () Bool)

(assert (=> b!1826215 (= e!1167211 e!1167212)))

(declare-fun b!1826216 () Bool)

(declare-fun e!1167210 () Bool)

(declare-fun e!1167209 () Bool)

(assert (=> b!1826216 (= e!1167210 e!1167209)))

(declare-fun res!821313 () Bool)

(declare-fun nullable!1535 (Regex!4945) Bool)

(assert (=> b!1826216 (= res!821313 (not (nullable!1535 (reg!5274 (regex!3617 rule!559)))))))

(assert (=> b!1826216 (=> (not res!821313) (not e!1167209))))

(declare-fun b!1826217 () Bool)

(declare-fun e!1167213 () Bool)

(declare-fun e!1167208 () Bool)

(assert (=> b!1826217 (= e!1167213 e!1167208)))

(declare-fun res!821316 () Bool)

(assert (=> b!1826217 (=> (not res!821316) (not e!1167208))))

(assert (=> b!1826217 (= res!821316 call!114534)))

(declare-fun d!558749 () Bool)

(declare-fun res!821317 () Bool)

(declare-fun e!1167214 () Bool)

(assert (=> d!558749 (=> res!821317 e!1167214)))

(assert (=> d!558749 (= res!821317 ((_ is ElementMatch!4945) (regex!3617 rule!559)))))

(assert (=> d!558749 (= (validRegex!2013 (regex!3617 rule!559)) e!1167214)))

(declare-fun b!1826218 () Bool)

(assert (=> b!1826218 (= e!1167210 e!1167211)))

(declare-fun c!297926 () Bool)

(assert (=> b!1826218 (= c!297926 ((_ is Union!4945) (regex!3617 rule!559)))))

(declare-fun b!1826219 () Bool)

(declare-fun call!114536 () Bool)

(assert (=> b!1826219 (= e!1167212 call!114536)))

(declare-fun bm!114530 () Bool)

(assert (=> bm!114530 (= call!114536 (validRegex!2013 (ite c!297926 (regTwo!10403 (regex!3617 rule!559)) (regTwo!10402 (regex!3617 rule!559)))))))

(declare-fun b!1826220 () Bool)

(assert (=> b!1826220 (= e!1167209 call!114535)))

(declare-fun b!1826221 () Bool)

(declare-fun res!821314 () Bool)

(assert (=> b!1826221 (=> res!821314 e!1167213)))

(assert (=> b!1826221 (= res!821314 (not ((_ is Concat!8653) (regex!3617 rule!559))))))

(assert (=> b!1826221 (= e!1167211 e!1167213)))

(declare-fun b!1826222 () Bool)

(assert (=> b!1826222 (= e!1167208 call!114536)))

(declare-fun c!297927 () Bool)

(declare-fun bm!114531 () Bool)

(assert (=> bm!114531 (= call!114535 (validRegex!2013 (ite c!297927 (reg!5274 (regex!3617 rule!559)) (ite c!297926 (regOne!10403 (regex!3617 rule!559)) (regOne!10402 (regex!3617 rule!559))))))))

(declare-fun b!1826223 () Bool)

(assert (=> b!1826223 (= e!1167214 e!1167210)))

(assert (=> b!1826223 (= c!297927 ((_ is Star!4945) (regex!3617 rule!559)))))

(assert (= (and d!558749 (not res!821317)) b!1826223))

(assert (= (and b!1826223 c!297927) b!1826216))

(assert (= (and b!1826223 (not c!297927)) b!1826218))

(assert (= (and b!1826216 res!821313) b!1826220))

(assert (= (and b!1826218 c!297926) b!1826215))

(assert (= (and b!1826218 (not c!297926)) b!1826221))

(assert (= (and b!1826215 res!821315) b!1826219))

(assert (= (and b!1826221 (not res!821314)) b!1826217))

(assert (= (and b!1826217 res!821316) b!1826222))

(assert (= (or b!1826219 b!1826222) bm!114530))

(assert (= (or b!1826215 b!1826217) bm!114529))

(assert (= (or b!1826220 bm!114529) bm!114531))

(declare-fun m!2254609 () Bool)

(assert (=> b!1826216 m!2254609))

(declare-fun m!2254611 () Bool)

(assert (=> bm!114530 m!2254611))

(declare-fun m!2254613 () Bool)

(assert (=> bm!114531 m!2254613))

(assert (=> b!1826024 d!558749))

(declare-fun b!1826252 () Bool)

(declare-fun res!821340 () Bool)

(declare-fun e!1167233 () Bool)

(assert (=> b!1826252 (=> (not res!821340) (not e!1167233))))

(declare-fun isEmpty!12663 (List!20116) Bool)

(declare-fun tail!2722 (List!20116) List!20116)

(assert (=> b!1826252 (= res!821340 (isEmpty!12663 (tail!2722 lt!709511)))))

(declare-fun b!1826253 () Bool)

(declare-fun e!1167229 () Bool)

(declare-fun lt!709561 () Bool)

(declare-fun call!114539 () Bool)

(assert (=> b!1826253 (= e!1167229 (= lt!709561 call!114539))))

(declare-fun b!1826254 () Bool)

(declare-fun res!821337 () Bool)

(declare-fun e!1167232 () Bool)

(assert (=> b!1826254 (=> res!821337 e!1167232)))

(assert (=> b!1826254 (= res!821337 e!1167233)))

(declare-fun res!821336 () Bool)

(assert (=> b!1826254 (=> (not res!821336) (not e!1167233))))

(assert (=> b!1826254 (= res!821336 lt!709561)))

(declare-fun b!1826255 () Bool)

(declare-fun e!1167235 () Bool)

(declare-fun derivativeStep!1300 (Regex!4945 C!10064) Regex!4945)

(declare-fun head!4263 (List!20116) C!10064)

(assert (=> b!1826255 (= e!1167235 (matchR!2410 (derivativeStep!1300 lt!709519 (head!4263 lt!709511)) (tail!2722 lt!709511)))))

(declare-fun b!1826256 () Bool)

(declare-fun res!821334 () Bool)

(declare-fun e!1167234 () Bool)

(assert (=> b!1826256 (=> res!821334 e!1167234)))

(assert (=> b!1826256 (= res!821334 (not (isEmpty!12663 (tail!2722 lt!709511))))))

(declare-fun d!558753 () Bool)

(assert (=> d!558753 e!1167229))

(declare-fun c!297935 () Bool)

(assert (=> d!558753 (= c!297935 ((_ is EmptyExpr!4945) lt!709519))))

(assert (=> d!558753 (= lt!709561 e!1167235)))

(declare-fun c!297934 () Bool)

(assert (=> d!558753 (= c!297934 (isEmpty!12663 lt!709511))))

(assert (=> d!558753 (validRegex!2013 lt!709519)))

(assert (=> d!558753 (= (matchR!2410 lt!709519 lt!709511) lt!709561)))

(declare-fun b!1826257 () Bool)

(assert (=> b!1826257 (= e!1167233 (= (head!4263 lt!709511) (c!297891 lt!709519)))))

(declare-fun b!1826258 () Bool)

(assert (=> b!1826258 (= e!1167234 (not (= (head!4263 lt!709511) (c!297891 lt!709519))))))

(declare-fun bm!114534 () Bool)

(assert (=> bm!114534 (= call!114539 (isEmpty!12663 lt!709511))))

(declare-fun b!1826259 () Bool)

(declare-fun res!821341 () Bool)

(assert (=> b!1826259 (=> (not res!821341) (not e!1167233))))

(assert (=> b!1826259 (= res!821341 (not call!114539))))

(declare-fun b!1826260 () Bool)

(assert (=> b!1826260 (= e!1167235 (nullable!1535 lt!709519))))

(declare-fun b!1826261 () Bool)

(declare-fun e!1167230 () Bool)

(assert (=> b!1826261 (= e!1167229 e!1167230)))

(declare-fun c!297936 () Bool)

(assert (=> b!1826261 (= c!297936 ((_ is EmptyLang!4945) lt!709519))))

(declare-fun b!1826262 () Bool)

(declare-fun e!1167231 () Bool)

(assert (=> b!1826262 (= e!1167232 e!1167231)))

(declare-fun res!821338 () Bool)

(assert (=> b!1826262 (=> (not res!821338) (not e!1167231))))

(assert (=> b!1826262 (= res!821338 (not lt!709561))))

(declare-fun b!1826263 () Bool)

(assert (=> b!1826263 (= e!1167230 (not lt!709561))))

(declare-fun b!1826264 () Bool)

(assert (=> b!1826264 (= e!1167231 e!1167234)))

(declare-fun res!821339 () Bool)

(assert (=> b!1826264 (=> res!821339 e!1167234)))

(assert (=> b!1826264 (= res!821339 call!114539)))

(declare-fun b!1826265 () Bool)

(declare-fun res!821335 () Bool)

(assert (=> b!1826265 (=> res!821335 e!1167232)))

(assert (=> b!1826265 (= res!821335 (not ((_ is ElementMatch!4945) lt!709519)))))

(assert (=> b!1826265 (= e!1167230 e!1167232)))

(assert (= (and d!558753 c!297934) b!1826260))

(assert (= (and d!558753 (not c!297934)) b!1826255))

(assert (= (and d!558753 c!297935) b!1826253))

(assert (= (and d!558753 (not c!297935)) b!1826261))

(assert (= (and b!1826261 c!297936) b!1826263))

(assert (= (and b!1826261 (not c!297936)) b!1826265))

(assert (= (and b!1826265 (not res!821335)) b!1826254))

(assert (= (and b!1826254 res!821336) b!1826259))

(assert (= (and b!1826259 res!821341) b!1826252))

(assert (= (and b!1826252 res!821340) b!1826257))

(assert (= (and b!1826254 (not res!821337)) b!1826262))

(assert (= (and b!1826262 res!821338) b!1826264))

(assert (= (and b!1826264 (not res!821339)) b!1826256))

(assert (= (and b!1826256 (not res!821334)) b!1826258))

(assert (= (or b!1826253 b!1826259 b!1826264) bm!114534))

(declare-fun m!2254615 () Bool)

(assert (=> b!1826258 m!2254615))

(declare-fun m!2254617 () Bool)

(assert (=> bm!114534 m!2254617))

(assert (=> b!1826255 m!2254615))

(assert (=> b!1826255 m!2254615))

(declare-fun m!2254619 () Bool)

(assert (=> b!1826255 m!2254619))

(declare-fun m!2254621 () Bool)

(assert (=> b!1826255 m!2254621))

(assert (=> b!1826255 m!2254619))

(assert (=> b!1826255 m!2254621))

(declare-fun m!2254623 () Bool)

(assert (=> b!1826255 m!2254623))

(declare-fun m!2254625 () Bool)

(assert (=> b!1826260 m!2254625))

(assert (=> b!1826257 m!2254615))

(assert (=> d!558753 m!2254617))

(declare-fun m!2254627 () Bool)

(assert (=> d!558753 m!2254627))

(assert (=> b!1826252 m!2254621))

(assert (=> b!1826252 m!2254621))

(declare-fun m!2254629 () Bool)

(assert (=> b!1826252 m!2254629))

(assert (=> b!1826256 m!2254621))

(assert (=> b!1826256 m!2254621))

(assert (=> b!1826256 m!2254629))

(assert (=> b!1826024 d!558753))

(declare-fun bs!407593 () Bool)

(declare-fun d!558755 () Bool)

(assert (= bs!407593 (and d!558755 b!1826024)))

(declare-fun lambda!71668 () Int)

(assert (=> bs!407593 (not (= lambda!71668 lambda!71656))))

(assert (=> d!558755 true))

(declare-fun order!13003 () Int)

(declare-fun dynLambda!9971 (Int Int) Int)

(assert (=> d!558755 (< (dynLambda!9971 order!13003 lambda!71656) (dynLambda!9971 order!13003 lambda!71668))))

(declare-fun forall!4321 (List!20119 Int) Bool)

(assert (=> d!558755 (= (exists!641 lt!709516 lambda!71656) (not (forall!4321 lt!709516 lambda!71668)))))

(declare-fun bs!407594 () Bool)

(assert (= bs!407594 d!558755))

(declare-fun m!2254631 () Bool)

(assert (=> bs!407594 m!2254631))

(assert (=> b!1826024 d!558755))

(declare-fun bs!407596 () Bool)

(declare-fun d!558757 () Bool)

(assert (= bs!407596 (and d!558757 b!1826024)))

(declare-fun lambda!71673 () Int)

(assert (=> bs!407596 (not (= lambda!71673 lambda!71656))))

(declare-fun bs!407597 () Bool)

(assert (= bs!407597 (and d!558757 d!558755)))

(assert (=> bs!407597 (not (= lambda!71673 lambda!71668))))

(declare-fun lambda!71674 () Int)

(assert (=> bs!407596 (= lambda!71674 lambda!71656)))

(assert (=> bs!407597 (not (= lambda!71674 lambda!71668))))

(declare-fun bs!407598 () Bool)

(assert (= bs!407598 d!558757))

(assert (=> bs!407598 (not (= lambda!71674 lambda!71673))))

(assert (=> d!558757 true))

(assert (=> d!558757 (= (matchR!2410 lt!709519 lt!709511) (exists!641 lt!709516 lambda!71674))))

(declare-fun lt!709579 () Unit!34723)

(declare-fun choose!11510 (Regex!4945 List!20119 List!20116) Unit!34723)

(assert (=> d!558757 (= lt!709579 (choose!11510 lt!709519 lt!709516 lt!709511))))

(assert (=> d!558757 (forall!4321 lt!709516 lambda!71673)))

(assert (=> d!558757 (= (matchRGenUnionSpec!226 lt!709519 lt!709516 lt!709511) lt!709579)))

(assert (=> bs!407598 m!2254451))

(declare-fun m!2254677 () Bool)

(assert (=> bs!407598 m!2254677))

(declare-fun m!2254679 () Bool)

(assert (=> bs!407598 m!2254679))

(declare-fun m!2254681 () Bool)

(assert (=> bs!407598 m!2254681))

(assert (=> b!1826024 d!558757))

(declare-fun d!558763 () Bool)

(assert (=> d!558763 (= (inv!26086 (tag!4031 (rule!5771 token!556))) (= (mod (str.len (value!112750 (tag!4031 (rule!5771 token!556)))) 2) 0))))

(assert (=> b!1826025 d!558763))

(declare-fun d!558765 () Bool)

(declare-fun res!821365 () Bool)

(declare-fun e!1167250 () Bool)

(assert (=> d!558765 (=> (not res!821365) (not e!1167250))))

(assert (=> d!558765 (= res!821365 (semiInverseModEq!1450 (toChars!5015 (transformation!3617 (rule!5771 token!556))) (toValue!5156 (transformation!3617 (rule!5771 token!556)))))))

(assert (=> d!558765 (= (inv!26089 (transformation!3617 (rule!5771 token!556))) e!1167250)))

(declare-fun b!1826297 () Bool)

(assert (=> b!1826297 (= e!1167250 (equivClasses!1391 (toChars!5015 (transformation!3617 (rule!5771 token!556))) (toValue!5156 (transformation!3617 (rule!5771 token!556)))))))

(assert (= (and d!558765 res!821365) b!1826297))

(declare-fun m!2254683 () Bool)

(assert (=> d!558765 m!2254683))

(declare-fun m!2254685 () Bool)

(assert (=> b!1826297 m!2254685))

(assert (=> b!1826025 d!558765))

(declare-fun d!558767 () Bool)

(assert (=> d!558767 (= (inv!26086 (tag!4031 (h!25449 rules!4538))) (= (mod (str.len (value!112750 (tag!4031 (h!25449 rules!4538)))) 2) 0))))

(assert (=> b!1826014 d!558767))

(declare-fun d!558769 () Bool)

(declare-fun res!821366 () Bool)

(declare-fun e!1167251 () Bool)

(assert (=> d!558769 (=> (not res!821366) (not e!1167251))))

(assert (=> d!558769 (= res!821366 (semiInverseModEq!1450 (toChars!5015 (transformation!3617 (h!25449 rules!4538))) (toValue!5156 (transformation!3617 (h!25449 rules!4538)))))))

(assert (=> d!558769 (= (inv!26089 (transformation!3617 (h!25449 rules!4538))) e!1167251)))

(declare-fun b!1826298 () Bool)

(assert (=> b!1826298 (= e!1167251 (equivClasses!1391 (toChars!5015 (transformation!3617 (h!25449 rules!4538))) (toValue!5156 (transformation!3617 (h!25449 rules!4538)))))))

(assert (= (and d!558769 res!821366) b!1826298))

(declare-fun m!2254687 () Bool)

(assert (=> d!558769 m!2254687))

(declare-fun m!2254689 () Bool)

(assert (=> b!1826298 m!2254689))

(assert (=> b!1826014 d!558769))

(declare-fun b!1826299 () Bool)

(declare-fun res!821373 () Bool)

(declare-fun e!1167256 () Bool)

(assert (=> b!1826299 (=> (not res!821373) (not e!1167256))))

(assert (=> b!1826299 (= res!821373 (isEmpty!12663 (tail!2722 lt!709511)))))

(declare-fun b!1826300 () Bool)

(declare-fun e!1167252 () Bool)

(declare-fun lt!709580 () Bool)

(declare-fun call!114540 () Bool)

(assert (=> b!1826300 (= e!1167252 (= lt!709580 call!114540))))

(declare-fun b!1826301 () Bool)

(declare-fun res!821370 () Bool)

(declare-fun e!1167255 () Bool)

(assert (=> b!1826301 (=> res!821370 e!1167255)))

(assert (=> b!1826301 (= res!821370 e!1167256)))

(declare-fun res!821369 () Bool)

(assert (=> b!1826301 (=> (not res!821369) (not e!1167256))))

(assert (=> b!1826301 (= res!821369 lt!709580)))

(declare-fun b!1826302 () Bool)

(declare-fun e!1167258 () Bool)

(assert (=> b!1826302 (= e!1167258 (matchR!2410 (derivativeStep!1300 (regex!3617 rule!559) (head!4263 lt!709511)) (tail!2722 lt!709511)))))

(declare-fun b!1826303 () Bool)

(declare-fun res!821367 () Bool)

(declare-fun e!1167257 () Bool)

(assert (=> b!1826303 (=> res!821367 e!1167257)))

(assert (=> b!1826303 (= res!821367 (not (isEmpty!12663 (tail!2722 lt!709511))))))

(declare-fun d!558771 () Bool)

(assert (=> d!558771 e!1167252))

(declare-fun c!297941 () Bool)

(assert (=> d!558771 (= c!297941 ((_ is EmptyExpr!4945) (regex!3617 rule!559)))))

(assert (=> d!558771 (= lt!709580 e!1167258)))

(declare-fun c!297940 () Bool)

(assert (=> d!558771 (= c!297940 (isEmpty!12663 lt!709511))))

(assert (=> d!558771 (validRegex!2013 (regex!3617 rule!559))))

(assert (=> d!558771 (= (matchR!2410 (regex!3617 rule!559) lt!709511) lt!709580)))

(declare-fun b!1826304 () Bool)

(assert (=> b!1826304 (= e!1167256 (= (head!4263 lt!709511) (c!297891 (regex!3617 rule!559))))))

(declare-fun b!1826305 () Bool)

(assert (=> b!1826305 (= e!1167257 (not (= (head!4263 lt!709511) (c!297891 (regex!3617 rule!559)))))))

(declare-fun bm!114535 () Bool)

(assert (=> bm!114535 (= call!114540 (isEmpty!12663 lt!709511))))

(declare-fun b!1826306 () Bool)

(declare-fun res!821374 () Bool)

(assert (=> b!1826306 (=> (not res!821374) (not e!1167256))))

(assert (=> b!1826306 (= res!821374 (not call!114540))))

(declare-fun b!1826307 () Bool)

(assert (=> b!1826307 (= e!1167258 (nullable!1535 (regex!3617 rule!559)))))

(declare-fun b!1826308 () Bool)

(declare-fun e!1167253 () Bool)

(assert (=> b!1826308 (= e!1167252 e!1167253)))

(declare-fun c!297942 () Bool)

(assert (=> b!1826308 (= c!297942 ((_ is EmptyLang!4945) (regex!3617 rule!559)))))

(declare-fun b!1826309 () Bool)

(declare-fun e!1167254 () Bool)

(assert (=> b!1826309 (= e!1167255 e!1167254)))

(declare-fun res!821371 () Bool)

(assert (=> b!1826309 (=> (not res!821371) (not e!1167254))))

(assert (=> b!1826309 (= res!821371 (not lt!709580))))

(declare-fun b!1826310 () Bool)

(assert (=> b!1826310 (= e!1167253 (not lt!709580))))

(declare-fun b!1826311 () Bool)

(assert (=> b!1826311 (= e!1167254 e!1167257)))

(declare-fun res!821372 () Bool)

(assert (=> b!1826311 (=> res!821372 e!1167257)))

(assert (=> b!1826311 (= res!821372 call!114540)))

(declare-fun b!1826312 () Bool)

(declare-fun res!821368 () Bool)

(assert (=> b!1826312 (=> res!821368 e!1167255)))

(assert (=> b!1826312 (= res!821368 (not ((_ is ElementMatch!4945) (regex!3617 rule!559))))))

(assert (=> b!1826312 (= e!1167253 e!1167255)))

(assert (= (and d!558771 c!297940) b!1826307))

(assert (= (and d!558771 (not c!297940)) b!1826302))

(assert (= (and d!558771 c!297941) b!1826300))

(assert (= (and d!558771 (not c!297941)) b!1826308))

(assert (= (and b!1826308 c!297942) b!1826310))

(assert (= (and b!1826308 (not c!297942)) b!1826312))

(assert (= (and b!1826312 (not res!821368)) b!1826301))

(assert (= (and b!1826301 res!821369) b!1826306))

(assert (= (and b!1826306 res!821374) b!1826299))

(assert (= (and b!1826299 res!821373) b!1826304))

(assert (= (and b!1826301 (not res!821370)) b!1826309))

(assert (= (and b!1826309 res!821371) b!1826311))

(assert (= (and b!1826311 (not res!821372)) b!1826303))

(assert (= (and b!1826303 (not res!821367)) b!1826305))

(assert (= (or b!1826300 b!1826306 b!1826311) bm!114535))

(assert (=> b!1826305 m!2254615))

(assert (=> bm!114535 m!2254617))

(assert (=> b!1826302 m!2254615))

(assert (=> b!1826302 m!2254615))

(declare-fun m!2254691 () Bool)

(assert (=> b!1826302 m!2254691))

(assert (=> b!1826302 m!2254621))

(assert (=> b!1826302 m!2254691))

(assert (=> b!1826302 m!2254621))

(declare-fun m!2254693 () Bool)

(assert (=> b!1826302 m!2254693))

(declare-fun m!2254695 () Bool)

(assert (=> b!1826307 m!2254695))

(assert (=> b!1826304 m!2254615))

(assert (=> d!558771 m!2254617))

(assert (=> d!558771 m!2254449))

(assert (=> b!1826299 m!2254621))

(assert (=> b!1826299 m!2254621))

(assert (=> b!1826299 m!2254629))

(assert (=> b!1826303 m!2254621))

(assert (=> b!1826303 m!2254621))

(assert (=> b!1826303 m!2254629))

(assert (=> b!1826028 d!558771))

(declare-fun d!558773 () Bool)

(declare-fun res!821379 () Bool)

(declare-fun e!1167261 () Bool)

(assert (=> d!558773 (=> (not res!821379) (not e!1167261))))

(assert (=> d!558773 (= res!821379 (validRegex!2013 (regex!3617 rule!559)))))

(assert (=> d!558773 (= (ruleValid!1109 thiss!28068 rule!559) e!1167261)))

(declare-fun b!1826317 () Bool)

(declare-fun res!821380 () Bool)

(assert (=> b!1826317 (=> (not res!821380) (not e!1167261))))

(assert (=> b!1826317 (= res!821380 (not (nullable!1535 (regex!3617 rule!559))))))

(declare-fun b!1826318 () Bool)

(assert (=> b!1826318 (= e!1167261 (not (= (tag!4031 rule!559) (String!22868 ""))))))

(assert (= (and d!558773 res!821379) b!1826317))

(assert (= (and b!1826317 res!821380) b!1826318))

(assert (=> d!558773 m!2254449))

(assert (=> b!1826317 m!2254695))

(assert (=> b!1826028 d!558773))

(declare-fun d!558775 () Bool)

(assert (=> d!558775 (ruleValid!1109 thiss!28068 rule!559)))

(declare-fun lt!709583 () Unit!34723)

(declare-fun choose!11512 (LexerInterface!3246 Rule!7034 List!20118) Unit!34723)

(assert (=> d!558775 (= lt!709583 (choose!11512 thiss!28068 rule!559 rules!4538))))

(assert (=> d!558775 (contains!3680 rules!4538 rule!559)))

(assert (=> d!558775 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!630 thiss!28068 rule!559 rules!4538) lt!709583)))

(declare-fun bs!407599 () Bool)

(assert (= bs!407599 d!558775))

(assert (=> bs!407599 m!2254473))

(declare-fun m!2254697 () Bool)

(assert (=> bs!407599 m!2254697))

(assert (=> bs!407599 m!2254461))

(assert (=> b!1826028 d!558775))

(declare-fun d!558777 () Bool)

(declare-fun lt!709586 () Bool)

(declare-fun content!2959 (List!20119) (InoxSet Regex!4945))

(assert (=> d!558777 (= lt!709586 (select (content!2959 lt!709516) (regex!3617 rule!559)))))

(declare-fun e!1167267 () Bool)

(assert (=> d!558777 (= lt!709586 e!1167267)))

(declare-fun res!821386 () Bool)

(assert (=> d!558777 (=> (not res!821386) (not e!1167267))))

(assert (=> d!558777 (= res!821386 ((_ is Cons!20049) lt!709516))))

(assert (=> d!558777 (= (contains!3681 lt!709516 (regex!3617 rule!559)) lt!709586)))

(declare-fun b!1826323 () Bool)

(declare-fun e!1167266 () Bool)

(assert (=> b!1826323 (= e!1167267 e!1167266)))

(declare-fun res!821385 () Bool)

(assert (=> b!1826323 (=> res!821385 e!1167266)))

(assert (=> b!1826323 (= res!821385 (= (h!25450 lt!709516) (regex!3617 rule!559)))))

(declare-fun b!1826324 () Bool)

(assert (=> b!1826324 (= e!1167266 (contains!3681 (t!170286 lt!709516) (regex!3617 rule!559)))))

(assert (= (and d!558777 res!821386) b!1826323))

(assert (= (and b!1826323 (not res!821385)) b!1826324))

(declare-fun m!2254699 () Bool)

(assert (=> d!558777 m!2254699))

(declare-fun m!2254701 () Bool)

(assert (=> d!558777 m!2254701))

(declare-fun m!2254703 () Bool)

(assert (=> b!1826324 m!2254703))

(assert (=> b!1826029 d!558777))

(declare-fun d!558779 () Bool)

(declare-fun lt!709589 () List!20119)

(declare-fun size!15910 (List!20119) Int)

(declare-fun size!15911 (List!20118) Int)

(assert (=> d!558779 (= (size!15910 lt!709589) (size!15911 rules!4538))))

(declare-fun e!1167270 () List!20119)

(assert (=> d!558779 (= lt!709589 e!1167270)))

(declare-fun c!297945 () Bool)

(assert (=> d!558779 (= c!297945 ((_ is Nil!20048) rules!4538))))

(assert (=> d!558779 (= (map!4154 rules!4538 lambda!71655) lt!709589)))

(declare-fun b!1826329 () Bool)

(assert (=> b!1826329 (= e!1167270 Nil!20049)))

(declare-fun b!1826330 () Bool)

(declare-fun $colon$colon!454 (List!20119 Regex!4945) List!20119)

(declare-fun dynLambda!9972 (Int Rule!7034) Regex!4945)

(assert (=> b!1826330 (= e!1167270 ($colon$colon!454 (map!4154 (t!170285 rules!4538) lambda!71655) (dynLambda!9972 lambda!71655 (h!25449 rules!4538))))))

(assert (= (and d!558779 c!297945) b!1826329))

(assert (= (and d!558779 (not c!297945)) b!1826330))

(declare-fun b_lambda!60325 () Bool)

(assert (=> (not b_lambda!60325) (not b!1826330)))

(declare-fun m!2254705 () Bool)

(assert (=> d!558779 m!2254705))

(declare-fun m!2254707 () Bool)

(assert (=> d!558779 m!2254707))

(declare-fun m!2254709 () Bool)

(assert (=> b!1826330 m!2254709))

(declare-fun m!2254711 () Bool)

(assert (=> b!1826330 m!2254711))

(assert (=> b!1826330 m!2254709))

(assert (=> b!1826330 m!2254711))

(declare-fun m!2254713 () Bool)

(assert (=> b!1826330 m!2254713))

(assert (=> b!1826029 d!558779))

(declare-fun bs!407606 () Bool)

(declare-fun d!558781 () Bool)

(assert (= bs!407606 (and d!558781 b!1826017)))

(declare-fun lambda!71683 () Int)

(assert (=> bs!407606 (= lambda!71683 lambda!71655)))

(assert (=> d!558781 (contains!3681 (map!4154 rules!4538 lambda!71683) (regex!3617 rule!559))))

(declare-fun lt!709617 () Unit!34723)

(declare-fun e!1167306 () Unit!34723)

(assert (=> d!558781 (= lt!709617 e!1167306)))

(declare-fun c!297966 () Bool)

(assert (=> d!558781 (= c!297966 (and ((_ is Cons!20048) rules!4538) (not (= (h!25449 rules!4538) rule!559))))))

(assert (=> d!558781 (rulesValid!1377 thiss!28068 rules!4538)))

(declare-fun lt!709619 () Unit!34723)

(assert (=> d!558781 (= lt!709619 (lemma!505 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(declare-fun lt!709616 () Unit!34723)

(declare-fun lt!709615 () Unit!34723)

(assert (=> d!558781 (= lt!709616 lt!709615)))

(declare-fun lt!709618 () List!20116)

(assert (=> d!558781 (= (maxPrefixOneRule!1159 thiss!28068 rule!559 input!3612) (Some!4196 (tuple2!19539 (Token!6789 (apply!5409 (transformation!3617 rule!559) (seqFromList!2578 lt!709618)) rule!559 (size!15906 lt!709618) lt!709618) suffix!1667)))))

(assert (=> d!558781 (= lt!709615 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!535 thiss!28068 rules!4538 lt!709618 input!3612 suffix!1667 rule!559))))

(assert (=> d!558781 (= lt!709618 (list!8145 (charsOf!2260 token!556)))))

(assert (=> d!558781 (= (lemma!506 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538) lt!709617)))

(declare-fun b!1826388 () Bool)

(assert (=> b!1826388 (= e!1167306 (lemma!506 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 (t!170285 rules!4538)))))

(declare-fun b!1826389 () Bool)

(declare-fun Unit!34728 () Unit!34723)

(assert (=> b!1826389 (= e!1167306 Unit!34728)))

(assert (= (and d!558781 c!297966) b!1826388))

(assert (= (and d!558781 (not c!297966)) b!1826389))

(assert (=> d!558781 m!2254425))

(declare-fun m!2254769 () Bool)

(assert (=> d!558781 m!2254769))

(declare-fun m!2254771 () Bool)

(assert (=> d!558781 m!2254771))

(assert (=> d!558781 m!2254425))

(assert (=> d!558781 m!2254427))

(assert (=> d!558781 m!2254513))

(assert (=> d!558781 m!2254443))

(assert (=> d!558781 m!2254769))

(declare-fun m!2254773 () Bool)

(assert (=> d!558781 m!2254773))

(declare-fun m!2254775 () Bool)

(assert (=> d!558781 m!2254775))

(assert (=> d!558781 m!2254775))

(declare-fun m!2254777 () Bool)

(assert (=> d!558781 m!2254777))

(declare-fun m!2254779 () Bool)

(assert (=> d!558781 m!2254779))

(assert (=> d!558781 m!2254417))

(declare-fun m!2254781 () Bool)

(assert (=> b!1826388 m!2254781))

(assert (=> b!1826029 d!558781))

(declare-fun bs!407613 () Bool)

(declare-fun d!558803 () Bool)

(assert (= bs!407613 (and d!558803 b!1826024)))

(declare-fun lambda!71692 () Int)

(assert (=> bs!407613 (not (= lambda!71692 lambda!71656))))

(declare-fun bs!407614 () Bool)

(assert (= bs!407614 (and d!558803 d!558755)))

(assert (=> bs!407614 (not (= lambda!71692 lambda!71668))))

(declare-fun bs!407615 () Bool)

(assert (= bs!407615 (and d!558803 d!558757)))

(assert (=> bs!407615 (= lambda!71692 lambda!71673)))

(assert (=> bs!407615 (not (= lambda!71692 lambda!71674))))

(declare-fun e!1167331 () Bool)

(assert (=> d!558803 e!1167331))

(declare-fun res!821414 () Bool)

(assert (=> d!558803 (=> (not res!821414) (not e!1167331))))

(declare-fun lt!709640 () Regex!4945)

(assert (=> d!558803 (= res!821414 (validRegex!2013 lt!709640))))

(declare-fun e!1167334 () Regex!4945)

(assert (=> d!558803 (= lt!709640 e!1167334)))

(declare-fun c!297979 () Bool)

(declare-fun e!1167329 () Bool)

(assert (=> d!558803 (= c!297979 e!1167329)))

(declare-fun res!821413 () Bool)

(assert (=> d!558803 (=> (not res!821413) (not e!1167329))))

(assert (=> d!558803 (= res!821413 ((_ is Cons!20049) lt!709512))))

(assert (=> d!558803 (forall!4321 lt!709512 lambda!71692)))

(assert (=> d!558803 (= (generalisedUnion!470 lt!709512) lt!709640)))

(declare-fun b!1826423 () Bool)

(declare-fun e!1167333 () Bool)

(declare-fun e!1167330 () Bool)

(assert (=> b!1826423 (= e!1167333 e!1167330)))

(declare-fun c!297978 () Bool)

(declare-fun isEmpty!12664 (List!20119) Bool)

(declare-fun tail!2723 (List!20119) List!20119)

(assert (=> b!1826423 (= c!297978 (isEmpty!12664 (tail!2723 lt!709512)))))

(declare-fun b!1826424 () Bool)

(assert (=> b!1826424 (= e!1167329 (isEmpty!12664 (t!170286 lt!709512)))))

(declare-fun b!1826425 () Bool)

(declare-fun isEmptyLang!121 (Regex!4945) Bool)

(assert (=> b!1826425 (= e!1167333 (isEmptyLang!121 lt!709640))))

(declare-fun b!1826426 () Bool)

(declare-fun isUnion!121 (Regex!4945) Bool)

(assert (=> b!1826426 (= e!1167330 (isUnion!121 lt!709640))))

(declare-fun b!1826427 () Bool)

(assert (=> b!1826427 (= e!1167331 e!1167333)))

(declare-fun c!297981 () Bool)

(assert (=> b!1826427 (= c!297981 (isEmpty!12664 lt!709512))))

(declare-fun b!1826428 () Bool)

(declare-fun e!1167332 () Regex!4945)

(assert (=> b!1826428 (= e!1167334 e!1167332)))

(declare-fun c!297980 () Bool)

(assert (=> b!1826428 (= c!297980 ((_ is Cons!20049) lt!709512))))

(declare-fun b!1826429 () Bool)

(assert (=> b!1826429 (= e!1167332 (Union!4945 (h!25450 lt!709512) (generalisedUnion!470 (t!170286 lt!709512))))))

(declare-fun b!1826430 () Bool)

(assert (=> b!1826430 (= e!1167334 (h!25450 lt!709512))))

(declare-fun b!1826431 () Bool)

(declare-fun head!4264 (List!20119) Regex!4945)

(assert (=> b!1826431 (= e!1167330 (= lt!709640 (head!4264 lt!709512)))))

(declare-fun b!1826432 () Bool)

(assert (=> b!1826432 (= e!1167332 EmptyLang!4945)))

(assert (= (and d!558803 res!821413) b!1826424))

(assert (= (and d!558803 c!297979) b!1826430))

(assert (= (and d!558803 (not c!297979)) b!1826428))

(assert (= (and b!1826428 c!297980) b!1826429))

(assert (= (and b!1826428 (not c!297980)) b!1826432))

(assert (= (and d!558803 res!821414) b!1826427))

(assert (= (and b!1826427 c!297981) b!1826425))

(assert (= (and b!1826427 (not c!297981)) b!1826423))

(assert (= (and b!1826423 c!297978) b!1826431))

(assert (= (and b!1826423 (not c!297978)) b!1826426))

(declare-fun m!2254807 () Bool)

(assert (=> b!1826429 m!2254807))

(declare-fun m!2254809 () Bool)

(assert (=> b!1826431 m!2254809))

(declare-fun m!2254811 () Bool)

(assert (=> b!1826426 m!2254811))

(declare-fun m!2254813 () Bool)

(assert (=> b!1826423 m!2254813))

(assert (=> b!1826423 m!2254813))

(declare-fun m!2254815 () Bool)

(assert (=> b!1826423 m!2254815))

(declare-fun m!2254817 () Bool)

(assert (=> d!558803 m!2254817))

(declare-fun m!2254819 () Bool)

(assert (=> d!558803 m!2254819))

(declare-fun m!2254821 () Bool)

(assert (=> b!1826425 m!2254821))

(declare-fun m!2254823 () Bool)

(assert (=> b!1826424 m!2254823))

(declare-fun m!2254825 () Bool)

(assert (=> b!1826427 m!2254825))

(assert (=> b!1826017 d!558803))

(declare-fun bs!407616 () Bool)

(declare-fun d!558813 () Bool)

(assert (= bs!407616 (and d!558813 b!1826017)))

(declare-fun lambda!71695 () Int)

(assert (=> bs!407616 (= lambda!71695 lambda!71655)))

(declare-fun bs!407617 () Bool)

(assert (= bs!407617 (and d!558813 d!558781)))

(assert (=> bs!407617 (= lambda!71695 lambda!71683)))

(declare-fun lt!709643 () Unit!34723)

(declare-fun lemma!508 (List!20118 LexerInterface!3246 List!20118) Unit!34723)

(assert (=> d!558813 (= lt!709643 (lemma!508 rules!4538 thiss!28068 rules!4538))))

(assert (=> d!558813 (= (rulesRegex!947 thiss!28068 rules!4538) (generalisedUnion!470 (map!4154 rules!4538 lambda!71695)))))

(declare-fun bs!407618 () Bool)

(assert (= bs!407618 d!558813))

(declare-fun m!2254827 () Bool)

(assert (=> bs!407618 m!2254827))

(declare-fun m!2254829 () Bool)

(assert (=> bs!407618 m!2254829))

(assert (=> bs!407618 m!2254829))

(declare-fun m!2254831 () Bool)

(assert (=> bs!407618 m!2254831))

(assert (=> b!1826017 d!558813))

(assert (=> b!1826017 d!558779))

(declare-fun bs!407622 () Bool)

(declare-fun d!558815 () Bool)

(assert (= bs!407622 (and d!558815 b!1826017)))

(declare-fun lambda!71703 () Int)

(assert (=> bs!407622 (= lambda!71703 lambda!71655)))

(declare-fun bs!407623 () Bool)

(assert (= bs!407623 (and d!558815 d!558781)))

(assert (=> bs!407623 (= lambda!71703 lambda!71683)))

(declare-fun bs!407624 () Bool)

(assert (= bs!407624 (and d!558815 d!558813)))

(assert (=> bs!407624 (= lambda!71703 lambda!71695)))

(declare-fun bs!407625 () Bool)

(assert (= bs!407625 (and d!558815 d!558757)))

(declare-fun lambda!71704 () Int)

(assert (=> bs!407625 (= lambda!71704 lambda!71673)))

(declare-fun bs!407626 () Bool)

(assert (= bs!407626 (and d!558815 b!1826024)))

(assert (=> bs!407626 (not (= lambda!71704 lambda!71656))))

(declare-fun bs!407627 () Bool)

(assert (= bs!407627 (and d!558815 d!558803)))

(assert (=> bs!407627 (= lambda!71704 lambda!71692)))

(declare-fun bs!407628 () Bool)

(assert (= bs!407628 (and d!558815 d!558755)))

(assert (=> bs!407628 (not (= lambda!71704 lambda!71668))))

(assert (=> bs!407625 (not (= lambda!71704 lambda!71674))))

(assert (=> d!558815 (forall!4321 (map!4154 rules!4538 lambda!71703) lambda!71704)))

(declare-fun lt!709673 () Unit!34723)

(declare-fun e!1167350 () Unit!34723)

(assert (=> d!558815 (= lt!709673 e!1167350)))

(declare-fun c!297990 () Bool)

(assert (=> d!558815 (= c!297990 ((_ is Nil!20048) rules!4538))))

(assert (=> d!558815 (rulesValid!1377 thiss!28068 rules!4538)))

(declare-fun lt!709674 () Unit!34723)

(declare-fun lt!709672 () Unit!34723)

(assert (=> d!558815 (= lt!709674 lt!709672)))

(declare-fun lt!709670 () List!20116)

(assert (=> d!558815 (= (maxPrefixOneRule!1159 thiss!28068 rule!559 input!3612) (Some!4196 (tuple2!19539 (Token!6789 (apply!5409 (transformation!3617 rule!559) (seqFromList!2578 lt!709670)) rule!559 (size!15906 lt!709670) lt!709670) suffix!1667)))))

(assert (=> d!558815 (= lt!709672 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!535 thiss!28068 rules!4538 lt!709670 input!3612 suffix!1667 rule!559))))

(assert (=> d!558815 (= lt!709670 (list!8145 (charsOf!2260 token!556)))))

(assert (=> d!558815 (= (lemma!505 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538) lt!709673)))

(declare-fun b!1826463 () Bool)

(declare-fun Unit!34729 () Unit!34723)

(assert (=> b!1826463 (= e!1167350 Unit!34729)))

(declare-fun b!1826464 () Bool)

(declare-fun Unit!34730 () Unit!34723)

(assert (=> b!1826464 (= e!1167350 Unit!34730)))

(declare-fun lt!709671 () Unit!34723)

(assert (=> b!1826464 (= lt!709671 (lemma!505 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 (t!170285 rules!4538)))))

(assert (= (and d!558815 c!297990) b!1826463))

(assert (= (and d!558815 (not c!297990)) b!1826464))

(declare-fun m!2254853 () Bool)

(assert (=> d!558815 m!2254853))

(assert (=> d!558815 m!2254425))

(declare-fun m!2254855 () Bool)

(assert (=> d!558815 m!2254855))

(declare-fun m!2254857 () Bool)

(assert (=> d!558815 m!2254857))

(declare-fun m!2254859 () Bool)

(assert (=> d!558815 m!2254859))

(declare-fun m!2254861 () Bool)

(assert (=> d!558815 m!2254861))

(assert (=> d!558815 m!2254443))

(assert (=> d!558815 m!2254855))

(assert (=> d!558815 m!2254513))

(assert (=> d!558815 m!2254859))

(assert (=> d!558815 m!2254425))

(assert (=> d!558815 m!2254427))

(declare-fun m!2254863 () Bool)

(assert (=> d!558815 m!2254863))

(declare-fun m!2254865 () Bool)

(assert (=> b!1826464 m!2254865))

(assert (=> b!1826017 d!558815))

(declare-fun b!1826545 () Bool)

(declare-fun e!1167395 () Option!4197)

(declare-fun lt!709692 () Option!4197)

(declare-fun lt!709695 () Option!4197)

(assert (=> b!1826545 (= e!1167395 (ite (and ((_ is None!4196) lt!709692) ((_ is None!4196) lt!709695)) None!4196 (ite ((_ is None!4196) lt!709695) lt!709692 (ite ((_ is None!4196) lt!709692) lt!709695 (ite (>= (size!15905 (_1!11171 (v!25753 lt!709692))) (size!15905 (_1!11171 (v!25753 lt!709695)))) lt!709692 lt!709695)))))))

(declare-fun call!114544 () Option!4197)

(assert (=> b!1826545 (= lt!709692 call!114544)))

(assert (=> b!1826545 (= lt!709695 (maxPrefix!1794 thiss!28068 (t!170285 rules!4538) input!3612))))

(declare-fun b!1826546 () Bool)

(declare-fun res!821456 () Bool)

(declare-fun e!1167396 () Bool)

(assert (=> b!1826546 (=> (not res!821456) (not e!1167396))))

(declare-fun lt!709694 () Option!4197)

(declare-fun get!6195 (Option!4197) tuple2!19538)

(assert (=> b!1826546 (= res!821456 (matchR!2410 (regex!3617 (rule!5771 (_1!11171 (get!6195 lt!709694)))) (list!8145 (charsOf!2260 (_1!11171 (get!6195 lt!709694))))))))

(declare-fun b!1826547 () Bool)

(declare-fun res!821459 () Bool)

(assert (=> b!1826547 (=> (not res!821459) (not e!1167396))))

(assert (=> b!1826547 (= res!821459 (< (size!15906 (_2!11171 (get!6195 lt!709694))) (size!15906 input!3612)))))

(declare-fun d!558823 () Bool)

(declare-fun e!1167397 () Bool)

(assert (=> d!558823 e!1167397))

(declare-fun res!821455 () Bool)

(assert (=> d!558823 (=> res!821455 e!1167397)))

(declare-fun isEmpty!12665 (Option!4197) Bool)

(assert (=> d!558823 (= res!821455 (isEmpty!12665 lt!709694))))

(assert (=> d!558823 (= lt!709694 e!1167395)))

(declare-fun c!297999 () Bool)

(assert (=> d!558823 (= c!297999 (and ((_ is Cons!20048) rules!4538) ((_ is Nil!20048) (t!170285 rules!4538))))))

(declare-fun lt!709691 () Unit!34723)

(declare-fun lt!709693 () Unit!34723)

(assert (=> d!558823 (= lt!709691 lt!709693)))

(declare-fun isPrefix!1825 (List!20116 List!20116) Bool)

(assert (=> d!558823 (isPrefix!1825 input!3612 input!3612)))

(declare-fun lemmaIsPrefixRefl!1202 (List!20116 List!20116) Unit!34723)

(assert (=> d!558823 (= lt!709693 (lemmaIsPrefixRefl!1202 input!3612 input!3612))))

(declare-fun rulesValidInductive!1244 (LexerInterface!3246 List!20118) Bool)

(assert (=> d!558823 (rulesValidInductive!1244 thiss!28068 rules!4538)))

(assert (=> d!558823 (= (maxPrefix!1794 thiss!28068 rules!4538 input!3612) lt!709694)))

(declare-fun b!1826548 () Bool)

(declare-fun res!821457 () Bool)

(assert (=> b!1826548 (=> (not res!821457) (not e!1167396))))

(assert (=> b!1826548 (= res!821457 (= (value!112751 (_1!11171 (get!6195 lt!709694))) (apply!5409 (transformation!3617 (rule!5771 (_1!11171 (get!6195 lt!709694)))) (seqFromList!2578 (originalCharacters!4425 (_1!11171 (get!6195 lt!709694)))))))))

(declare-fun b!1826549 () Bool)

(declare-fun res!821458 () Bool)

(assert (=> b!1826549 (=> (not res!821458) (not e!1167396))))

(assert (=> b!1826549 (= res!821458 (= (list!8145 (charsOf!2260 (_1!11171 (get!6195 lt!709694)))) (originalCharacters!4425 (_1!11171 (get!6195 lt!709694)))))))

(declare-fun bm!114539 () Bool)

(assert (=> bm!114539 (= call!114544 (maxPrefixOneRule!1159 thiss!28068 (h!25449 rules!4538) input!3612))))

(declare-fun b!1826550 () Bool)

(assert (=> b!1826550 (= e!1167396 (contains!3680 rules!4538 (rule!5771 (_1!11171 (get!6195 lt!709694)))))))

(declare-fun b!1826551 () Bool)

(declare-fun res!821453 () Bool)

(assert (=> b!1826551 (=> (not res!821453) (not e!1167396))))

(assert (=> b!1826551 (= res!821453 (= (++!5441 (list!8145 (charsOf!2260 (_1!11171 (get!6195 lt!709694)))) (_2!11171 (get!6195 lt!709694))) input!3612))))

(declare-fun b!1826552 () Bool)

(assert (=> b!1826552 (= e!1167395 call!114544)))

(declare-fun b!1826553 () Bool)

(assert (=> b!1826553 (= e!1167397 e!1167396)))

(declare-fun res!821454 () Bool)

(assert (=> b!1826553 (=> (not res!821454) (not e!1167396))))

(declare-fun isDefined!3512 (Option!4197) Bool)

(assert (=> b!1826553 (= res!821454 (isDefined!3512 lt!709694))))

(assert (= (and d!558823 c!297999) b!1826552))

(assert (= (and d!558823 (not c!297999)) b!1826545))

(assert (= (or b!1826552 b!1826545) bm!114539))

(assert (= (and d!558823 (not res!821455)) b!1826553))

(assert (= (and b!1826553 res!821454) b!1826549))

(assert (= (and b!1826549 res!821458) b!1826547))

(assert (= (and b!1826547 res!821459) b!1826551))

(assert (= (and b!1826551 res!821453) b!1826548))

(assert (= (and b!1826548 res!821457) b!1826546))

(assert (= (and b!1826546 res!821456) b!1826550))

(declare-fun m!2254889 () Bool)

(assert (=> bm!114539 m!2254889))

(declare-fun m!2254891 () Bool)

(assert (=> d!558823 m!2254891))

(declare-fun m!2254893 () Bool)

(assert (=> d!558823 m!2254893))

(declare-fun m!2254895 () Bool)

(assert (=> d!558823 m!2254895))

(declare-fun m!2254897 () Bool)

(assert (=> d!558823 m!2254897))

(declare-fun m!2254899 () Bool)

(assert (=> b!1826546 m!2254899))

(declare-fun m!2254901 () Bool)

(assert (=> b!1826546 m!2254901))

(assert (=> b!1826546 m!2254901))

(declare-fun m!2254903 () Bool)

(assert (=> b!1826546 m!2254903))

(assert (=> b!1826546 m!2254903))

(declare-fun m!2254905 () Bool)

(assert (=> b!1826546 m!2254905))

(assert (=> b!1826550 m!2254899))

(declare-fun m!2254907 () Bool)

(assert (=> b!1826550 m!2254907))

(assert (=> b!1826547 m!2254899))

(declare-fun m!2254909 () Bool)

(assert (=> b!1826547 m!2254909))

(declare-fun m!2254911 () Bool)

(assert (=> b!1826547 m!2254911))

(assert (=> b!1826549 m!2254899))

(assert (=> b!1826549 m!2254901))

(assert (=> b!1826549 m!2254901))

(assert (=> b!1826549 m!2254903))

(assert (=> b!1826548 m!2254899))

(declare-fun m!2254913 () Bool)

(assert (=> b!1826548 m!2254913))

(assert (=> b!1826548 m!2254913))

(declare-fun m!2254915 () Bool)

(assert (=> b!1826548 m!2254915))

(declare-fun m!2254917 () Bool)

(assert (=> b!1826545 m!2254917))

(assert (=> b!1826551 m!2254899))

(assert (=> b!1826551 m!2254901))

(assert (=> b!1826551 m!2254901))

(assert (=> b!1826551 m!2254903))

(assert (=> b!1826551 m!2254903))

(declare-fun m!2254919 () Bool)

(assert (=> b!1826551 m!2254919))

(declare-fun m!2254921 () Bool)

(assert (=> b!1826553 m!2254921))

(assert (=> b!1826020 d!558823))

(declare-fun b!1826572 () Bool)

(declare-fun e!1167407 () Option!4197)

(declare-datatypes ((tuple2!19542 0))(
  ( (tuple2!19543 (_1!11173 List!20116) (_2!11173 List!20116)) )
))
(declare-fun lt!709706 () tuple2!19542)

(declare-fun size!15912 (BalanceConc!13242) Int)

(assert (=> b!1826572 (= e!1167407 (Some!4196 (tuple2!19539 (Token!6789 (apply!5409 (transformation!3617 rule!559) (seqFromList!2578 (_1!11173 lt!709706))) rule!559 (size!15912 (seqFromList!2578 (_1!11173 lt!709706))) (_1!11173 lt!709706)) (_2!11173 lt!709706))))))

(declare-fun lt!709708 () Unit!34723)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!493 (Regex!4945 List!20116) Unit!34723)

(assert (=> b!1826572 (= lt!709708 (longestMatchIsAcceptedByMatchOrIsEmpty!493 (regex!3617 rule!559) input!3612))))

(declare-fun res!821475 () Bool)

(declare-fun findLongestMatchInner!509 (Regex!4945 List!20116 Int List!20116 List!20116 Int) tuple2!19542)

(assert (=> b!1826572 (= res!821475 (isEmpty!12663 (_1!11173 (findLongestMatchInner!509 (regex!3617 rule!559) Nil!20046 (size!15906 Nil!20046) input!3612 input!3612 (size!15906 input!3612)))))))

(declare-fun e!1167406 () Bool)

(assert (=> b!1826572 (=> res!821475 e!1167406)))

(assert (=> b!1826572 e!1167406))

(declare-fun lt!709709 () Unit!34723)

(assert (=> b!1826572 (= lt!709709 lt!709708)))

(declare-fun lt!709710 () Unit!34723)

(declare-fun lemmaSemiInverse!723 (TokenValueInjection!7074 BalanceConc!13242) Unit!34723)

(assert (=> b!1826572 (= lt!709710 (lemmaSemiInverse!723 (transformation!3617 rule!559) (seqFromList!2578 (_1!11173 lt!709706))))))

(declare-fun d!558835 () Bool)

(declare-fun e!1167409 () Bool)

(assert (=> d!558835 e!1167409))

(declare-fun res!821478 () Bool)

(assert (=> d!558835 (=> res!821478 e!1167409)))

(declare-fun lt!709707 () Option!4197)

(assert (=> d!558835 (= res!821478 (isEmpty!12665 lt!709707))))

(assert (=> d!558835 (= lt!709707 e!1167407)))

(declare-fun c!298002 () Bool)

(assert (=> d!558835 (= c!298002 (isEmpty!12663 (_1!11173 lt!709706)))))

(declare-fun findLongestMatch!436 (Regex!4945 List!20116) tuple2!19542)

(assert (=> d!558835 (= lt!709706 (findLongestMatch!436 (regex!3617 rule!559) input!3612))))

(assert (=> d!558835 (ruleValid!1109 thiss!28068 rule!559)))

(assert (=> d!558835 (= (maxPrefixOneRule!1159 thiss!28068 rule!559 input!3612) lt!709707)))

(declare-fun b!1826573 () Bool)

(declare-fun e!1167408 () Bool)

(assert (=> b!1826573 (= e!1167408 (= (size!15905 (_1!11171 (get!6195 lt!709707))) (size!15906 (originalCharacters!4425 (_1!11171 (get!6195 lt!709707))))))))

(declare-fun b!1826574 () Bool)

(assert (=> b!1826574 (= e!1167409 e!1167408)))

(declare-fun res!821476 () Bool)

(assert (=> b!1826574 (=> (not res!821476) (not e!1167408))))

(assert (=> b!1826574 (= res!821476 (matchR!2410 (regex!3617 rule!559) (list!8145 (charsOf!2260 (_1!11171 (get!6195 lt!709707))))))))

(declare-fun b!1826575 () Bool)

(declare-fun res!821477 () Bool)

(assert (=> b!1826575 (=> (not res!821477) (not e!1167408))))

(assert (=> b!1826575 (= res!821477 (< (size!15906 (_2!11171 (get!6195 lt!709707))) (size!15906 input!3612)))))

(declare-fun b!1826576 () Bool)

(assert (=> b!1826576 (= e!1167407 None!4196)))

(declare-fun b!1826577 () Bool)

(declare-fun res!821479 () Bool)

(assert (=> b!1826577 (=> (not res!821479) (not e!1167408))))

(assert (=> b!1826577 (= res!821479 (= (++!5441 (list!8145 (charsOf!2260 (_1!11171 (get!6195 lt!709707)))) (_2!11171 (get!6195 lt!709707))) input!3612))))

(declare-fun b!1826578 () Bool)

(assert (=> b!1826578 (= e!1167406 (matchR!2410 (regex!3617 rule!559) (_1!11173 (findLongestMatchInner!509 (regex!3617 rule!559) Nil!20046 (size!15906 Nil!20046) input!3612 input!3612 (size!15906 input!3612)))))))

(declare-fun b!1826579 () Bool)

(declare-fun res!821480 () Bool)

(assert (=> b!1826579 (=> (not res!821480) (not e!1167408))))

(assert (=> b!1826579 (= res!821480 (= (rule!5771 (_1!11171 (get!6195 lt!709707))) rule!559))))

(declare-fun b!1826580 () Bool)

(declare-fun res!821474 () Bool)

(assert (=> b!1826580 (=> (not res!821474) (not e!1167408))))

(assert (=> b!1826580 (= res!821474 (= (value!112751 (_1!11171 (get!6195 lt!709707))) (apply!5409 (transformation!3617 (rule!5771 (_1!11171 (get!6195 lt!709707)))) (seqFromList!2578 (originalCharacters!4425 (_1!11171 (get!6195 lt!709707)))))))))

(assert (= (and d!558835 c!298002) b!1826576))

(assert (= (and d!558835 (not c!298002)) b!1826572))

(assert (= (and b!1826572 (not res!821475)) b!1826578))

(assert (= (and d!558835 (not res!821478)) b!1826574))

(assert (= (and b!1826574 res!821476) b!1826577))

(assert (= (and b!1826577 res!821479) b!1826575))

(assert (= (and b!1826575 res!821477) b!1826579))

(assert (= (and b!1826579 res!821480) b!1826580))

(assert (= (and b!1826580 res!821474) b!1826573))

(declare-fun m!2254923 () Bool)

(assert (=> d!558835 m!2254923))

(declare-fun m!2254925 () Bool)

(assert (=> d!558835 m!2254925))

(declare-fun m!2254927 () Bool)

(assert (=> d!558835 m!2254927))

(assert (=> d!558835 m!2254473))

(declare-fun m!2254929 () Bool)

(assert (=> b!1826579 m!2254929))

(assert (=> b!1826580 m!2254929))

(declare-fun m!2254931 () Bool)

(assert (=> b!1826580 m!2254931))

(assert (=> b!1826580 m!2254931))

(declare-fun m!2254933 () Bool)

(assert (=> b!1826580 m!2254933))

(assert (=> b!1826574 m!2254929))

(declare-fun m!2254935 () Bool)

(assert (=> b!1826574 m!2254935))

(assert (=> b!1826574 m!2254935))

(declare-fun m!2254937 () Bool)

(assert (=> b!1826574 m!2254937))

(assert (=> b!1826574 m!2254937))

(declare-fun m!2254939 () Bool)

(assert (=> b!1826574 m!2254939))

(declare-fun m!2254941 () Bool)

(assert (=> b!1826578 m!2254941))

(assert (=> b!1826578 m!2254911))

(assert (=> b!1826578 m!2254941))

(assert (=> b!1826578 m!2254911))

(declare-fun m!2254943 () Bool)

(assert (=> b!1826578 m!2254943))

(declare-fun m!2254945 () Bool)

(assert (=> b!1826578 m!2254945))

(assert (=> b!1826572 m!2254911))

(declare-fun m!2254947 () Bool)

(assert (=> b!1826572 m!2254947))

(assert (=> b!1826572 m!2254941))

(assert (=> b!1826572 m!2254947))

(declare-fun m!2254949 () Bool)

(assert (=> b!1826572 m!2254949))

(assert (=> b!1826572 m!2254947))

(declare-fun m!2254951 () Bool)

(assert (=> b!1826572 m!2254951))

(assert (=> b!1826572 m!2254947))

(declare-fun m!2254953 () Bool)

(assert (=> b!1826572 m!2254953))

(assert (=> b!1826572 m!2254941))

(assert (=> b!1826572 m!2254911))

(assert (=> b!1826572 m!2254943))

(declare-fun m!2254955 () Bool)

(assert (=> b!1826572 m!2254955))

(declare-fun m!2254957 () Bool)

(assert (=> b!1826572 m!2254957))

(assert (=> b!1826575 m!2254929))

(declare-fun m!2254959 () Bool)

(assert (=> b!1826575 m!2254959))

(assert (=> b!1826575 m!2254911))

(assert (=> b!1826573 m!2254929))

(declare-fun m!2254961 () Bool)

(assert (=> b!1826573 m!2254961))

(assert (=> b!1826577 m!2254929))

(assert (=> b!1826577 m!2254935))

(assert (=> b!1826577 m!2254935))

(assert (=> b!1826577 m!2254937))

(assert (=> b!1826577 m!2254937))

(declare-fun m!2254963 () Bool)

(assert (=> b!1826577 m!2254963))

(assert (=> b!1826010 d!558835))

(declare-fun d!558837 () Bool)

(declare-fun fromListB!1180 (List!20116) BalanceConc!13242)

(assert (=> d!558837 (= (seqFromList!2578 lt!709511) (fromListB!1180 lt!709511))))

(declare-fun bs!407631 () Bool)

(assert (= bs!407631 d!558837))

(declare-fun m!2254965 () Bool)

(assert (=> bs!407631 m!2254965))

(assert (=> b!1826010 d!558837))

(declare-fun d!558839 () Bool)

(assert (=> d!558839 (= (maxPrefixOneRule!1159 thiss!28068 rule!559 input!3612) (Some!4196 (tuple2!19539 (Token!6789 (apply!5409 (transformation!3617 rule!559) (seqFromList!2578 lt!709511)) rule!559 (size!15906 lt!709511) lt!709511) suffix!1667)))))

(declare-fun lt!709713 () Unit!34723)

(declare-fun choose!11513 (LexerInterface!3246 List!20118 List!20116 List!20116 List!20116 Rule!7034) Unit!34723)

(assert (=> d!558839 (= lt!709713 (choose!11513 thiss!28068 rules!4538 lt!709511 input!3612 suffix!1667 rule!559))))

(assert (=> d!558839 (not (isEmpty!12659 rules!4538))))

(assert (=> d!558839 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!535 thiss!28068 rules!4538 lt!709511 input!3612 suffix!1667 rule!559) lt!709713)))

(declare-fun bs!407632 () Bool)

(assert (= bs!407632 d!558839))

(assert (=> bs!407632 m!2254443))

(assert (=> bs!407632 m!2254439))

(declare-fun m!2254967 () Bool)

(assert (=> bs!407632 m!2254967))

(assert (=> bs!407632 m!2254439))

(assert (=> bs!407632 m!2254441))

(assert (=> bs!407632 m!2254421))

(assert (=> bs!407632 m!2254445))

(assert (=> b!1826010 d!558839))

(declare-fun d!558841 () Bool)

(declare-fun lt!709716 () Int)

(assert (=> d!558841 (>= lt!709716 0)))

(declare-fun e!1167412 () Int)

(assert (=> d!558841 (= lt!709716 e!1167412)))

(declare-fun c!298005 () Bool)

(assert (=> d!558841 (= c!298005 ((_ is Nil!20046) lt!709511))))

(assert (=> d!558841 (= (size!15906 lt!709511) lt!709716)))

(declare-fun b!1826585 () Bool)

(assert (=> b!1826585 (= e!1167412 0)))

(declare-fun b!1826586 () Bool)

(assert (=> b!1826586 (= e!1167412 (+ 1 (size!15906 (t!170283 lt!709511))))))

(assert (= (and d!558841 c!298005) b!1826585))

(assert (= (and d!558841 (not c!298005)) b!1826586))

(declare-fun m!2254969 () Bool)

(assert (=> b!1826586 m!2254969))

(assert (=> b!1826010 d!558841))

(declare-fun d!558843 () Bool)

(declare-fun dynLambda!9973 (Int BalanceConc!13242) TokenValue!3707)

(assert (=> d!558843 (= (apply!5409 (transformation!3617 rule!559) (seqFromList!2578 lt!709511)) (dynLambda!9973 (toValue!5156 (transformation!3617 rule!559)) (seqFromList!2578 lt!709511)))))

(declare-fun b_lambda!60341 () Bool)

(assert (=> (not b_lambda!60341) (not d!558843)))

(declare-fun t!170311 () Bool)

(declare-fun tb!111579 () Bool)

(assert (=> (and b!1826016 (= (toValue!5156 (transformation!3617 rule!559)) (toValue!5156 (transformation!3617 rule!559))) t!170311) tb!111579))

(declare-fun result!134150 () Bool)

(assert (=> tb!111579 (= result!134150 (inv!21 (dynLambda!9973 (toValue!5156 (transformation!3617 rule!559)) (seqFromList!2578 lt!709511))))))

(declare-fun m!2254971 () Bool)

(assert (=> tb!111579 m!2254971))

(assert (=> d!558843 t!170311))

(declare-fun b_and!141865 () Bool)

(assert (= b_and!141825 (and (=> t!170311 result!134150) b_and!141865)))

(declare-fun t!170313 () Bool)

(declare-fun tb!111581 () Bool)

(assert (=> (and b!1826018 (= (toValue!5156 (transformation!3617 (h!25449 rules!4538))) (toValue!5156 (transformation!3617 rule!559))) t!170313) tb!111581))

(declare-fun result!134154 () Bool)

(assert (= result!134154 result!134150))

(assert (=> d!558843 t!170313))

(declare-fun b_and!141867 () Bool)

(assert (= b_and!141829 (and (=> t!170313 result!134154) b_and!141867)))

(declare-fun tb!111583 () Bool)

(declare-fun t!170315 () Bool)

(assert (=> (and b!1826022 (= (toValue!5156 (transformation!3617 (rule!5771 token!556))) (toValue!5156 (transformation!3617 rule!559))) t!170315) tb!111583))

(declare-fun result!134156 () Bool)

(assert (= result!134156 result!134150))

(assert (=> d!558843 t!170315))

(declare-fun b_and!141869 () Bool)

(assert (= b_and!141833 (and (=> t!170315 result!134156) b_and!141869)))

(assert (=> d!558843 m!2254439))

(declare-fun m!2254973 () Bool)

(assert (=> d!558843 m!2254973))

(assert (=> b!1826010 d!558843))

(declare-fun d!558845 () Bool)

(declare-fun res!821485 () Bool)

(declare-fun e!1167418 () Bool)

(assert (=> d!558845 (=> (not res!821485) (not e!1167418))))

(assert (=> d!558845 (= res!821485 (not (isEmpty!12663 (originalCharacters!4425 token!556))))))

(assert (=> d!558845 (= (inv!26090 token!556) e!1167418)))

(declare-fun b!1826593 () Bool)

(declare-fun res!821486 () Bool)

(assert (=> b!1826593 (=> (not res!821486) (not e!1167418))))

(assert (=> b!1826593 (= res!821486 (= (originalCharacters!4425 token!556) (list!8145 (dynLambda!9969 (toChars!5015 (transformation!3617 (rule!5771 token!556))) (value!112751 token!556)))))))

(declare-fun b!1826594 () Bool)

(assert (=> b!1826594 (= e!1167418 (= (size!15905 token!556) (size!15906 (originalCharacters!4425 token!556))))))

(assert (= (and d!558845 res!821485) b!1826593))

(assert (= (and b!1826593 res!821486) b!1826594))

(declare-fun b_lambda!60343 () Bool)

(assert (=> (not b_lambda!60343) (not b!1826593)))

(assert (=> b!1826593 t!170294))

(declare-fun b_and!141871 () Bool)

(assert (= b_and!141843 (and (=> t!170294 result!134124) b_and!141871)))

(assert (=> b!1826593 t!170296))

(declare-fun b_and!141873 () Bool)

(assert (= b_and!141845 (and (=> t!170296 result!134128) b_and!141873)))

(assert (=> b!1826593 t!170298))

(declare-fun b_and!141875 () Bool)

(assert (= b_and!141847 (and (=> t!170298 result!134130) b_and!141875)))

(declare-fun m!2254975 () Bool)

(assert (=> d!558845 m!2254975))

(assert (=> b!1826593 m!2254563))

(assert (=> b!1826593 m!2254563))

(declare-fun m!2254977 () Bool)

(assert (=> b!1826593 m!2254977))

(declare-fun m!2254979 () Bool)

(assert (=> b!1826594 m!2254979))

(assert (=> start!181026 d!558845))

(declare-fun d!558847 () Bool)

(assert (=> d!558847 (= (isEmpty!12659 rules!4538) ((_ is Nil!20048) rules!4538))))

(assert (=> b!1826030 d!558847))

(declare-fun b!1826599 () Bool)

(declare-fun e!1167421 () Bool)

(declare-fun tp!516367 () Bool)

(assert (=> b!1826599 (= e!1167421 (and tp_is_empty!8125 tp!516367))))

(assert (=> b!1826012 (= tp!516309 e!1167421)))

(assert (= (and b!1826012 ((_ is Cons!20046) (t!170283 suffix!1667))) b!1826599))

(declare-fun b!1826600 () Bool)

(declare-fun e!1167422 () Bool)

(declare-fun tp!516368 () Bool)

(assert (=> b!1826600 (= e!1167422 (and tp_is_empty!8125 tp!516368))))

(assert (=> b!1826027 (= tp!516307 e!1167422)))

(assert (= (and b!1826027 ((_ is Cons!20046) (t!170283 input!3612))) b!1826600))

(declare-fun b!1826613 () Bool)

(declare-fun e!1167425 () Bool)

(declare-fun tp!516380 () Bool)

(assert (=> b!1826613 (= e!1167425 tp!516380)))

(declare-fun b!1826611 () Bool)

(assert (=> b!1826611 (= e!1167425 tp_is_empty!8125)))

(declare-fun b!1826614 () Bool)

(declare-fun tp!516383 () Bool)

(declare-fun tp!516379 () Bool)

(assert (=> b!1826614 (= e!1167425 (and tp!516383 tp!516379))))

(assert (=> b!1826015 (= tp!516314 e!1167425)))

(declare-fun b!1826612 () Bool)

(declare-fun tp!516381 () Bool)

(declare-fun tp!516382 () Bool)

(assert (=> b!1826612 (= e!1167425 (and tp!516381 tp!516382))))

(assert (= (and b!1826015 ((_ is ElementMatch!4945) (regex!3617 rule!559))) b!1826611))

(assert (= (and b!1826015 ((_ is Concat!8653) (regex!3617 rule!559))) b!1826612))

(assert (= (and b!1826015 ((_ is Star!4945) (regex!3617 rule!559))) b!1826613))

(assert (= (and b!1826015 ((_ is Union!4945) (regex!3617 rule!559))) b!1826614))

(declare-fun b!1826615 () Bool)

(declare-fun e!1167426 () Bool)

(declare-fun tp!516384 () Bool)

(assert (=> b!1826615 (= e!1167426 (and tp_is_empty!8125 tp!516384))))

(assert (=> b!1826026 (= tp!516305 e!1167426)))

(assert (= (and b!1826026 ((_ is Cons!20046) (originalCharacters!4425 token!556))) b!1826615))

(declare-fun b!1826626 () Bool)

(declare-fun b_free!50863 () Bool)

(declare-fun b_next!51567 () Bool)

(assert (=> b!1826626 (= b_free!50863 (not b_next!51567))))

(declare-fun t!170317 () Bool)

(declare-fun tb!111585 () Bool)

(assert (=> (and b!1826626 (= (toValue!5156 (transformation!3617 (h!25449 (t!170285 rules!4538)))) (toValue!5156 (transformation!3617 rule!559))) t!170317) tb!111585))

(declare-fun result!134164 () Bool)

(assert (= result!134164 result!134150))

(assert (=> d!558843 t!170317))

(declare-fun b_and!141877 () Bool)

(declare-fun tp!516395 () Bool)

(assert (=> b!1826626 (= tp!516395 (and (=> t!170317 result!134164) b_and!141877))))

(declare-fun b_free!50865 () Bool)

(declare-fun b_next!51569 () Bool)

(assert (=> b!1826626 (= b_free!50865 (not b_next!51569))))

(declare-fun tb!111587 () Bool)

(declare-fun t!170319 () Bool)

(assert (=> (and b!1826626 (= (toChars!5015 (transformation!3617 (h!25449 (t!170285 rules!4538)))) (toChars!5015 (transformation!3617 (rule!5771 token!556)))) t!170319) tb!111587))

(declare-fun result!134166 () Bool)

(assert (= result!134166 result!134124))

(assert (=> d!558741 t!170319))

(assert (=> b!1826593 t!170319))

(declare-fun tp!516393 () Bool)

(declare-fun b_and!141879 () Bool)

(assert (=> b!1826626 (= tp!516393 (and (=> t!170319 result!134166) b_and!141879))))

(declare-fun e!1167435 () Bool)

(assert (=> b!1826626 (= e!1167435 (and tp!516395 tp!516393))))

(declare-fun b!1826625 () Bool)

(declare-fun tp!516396 () Bool)

(declare-fun e!1167437 () Bool)

(assert (=> b!1826625 (= e!1167437 (and tp!516396 (inv!26086 (tag!4031 (h!25449 (t!170285 rules!4538)))) (inv!26089 (transformation!3617 (h!25449 (t!170285 rules!4538)))) e!1167435))))

(declare-fun b!1826624 () Bool)

(declare-fun e!1167438 () Bool)

(declare-fun tp!516394 () Bool)

(assert (=> b!1826624 (= e!1167438 (and e!1167437 tp!516394))))

(assert (=> b!1826019 (= tp!516308 e!1167438)))

(assert (= b!1826625 b!1826626))

(assert (= b!1826624 b!1826625))

(assert (= (and b!1826019 ((_ is Cons!20048) (t!170285 rules!4538))) b!1826624))

(declare-fun m!2254981 () Bool)

(assert (=> b!1826625 m!2254981))

(declare-fun m!2254983 () Bool)

(assert (=> b!1826625 m!2254983))

(declare-fun b!1826629 () Bool)

(declare-fun e!1167439 () Bool)

(declare-fun tp!516398 () Bool)

(assert (=> b!1826629 (= e!1167439 tp!516398)))

(declare-fun b!1826627 () Bool)

(assert (=> b!1826627 (= e!1167439 tp_is_empty!8125)))

(declare-fun b!1826630 () Bool)

(declare-fun tp!516401 () Bool)

(declare-fun tp!516397 () Bool)

(assert (=> b!1826630 (= e!1167439 (and tp!516401 tp!516397))))

(assert (=> b!1826025 (= tp!516312 e!1167439)))

(declare-fun b!1826628 () Bool)

(declare-fun tp!516399 () Bool)

(declare-fun tp!516400 () Bool)

(assert (=> b!1826628 (= e!1167439 (and tp!516399 tp!516400))))

(assert (= (and b!1826025 ((_ is ElementMatch!4945) (regex!3617 (rule!5771 token!556)))) b!1826627))

(assert (= (and b!1826025 ((_ is Concat!8653) (regex!3617 (rule!5771 token!556)))) b!1826628))

(assert (= (and b!1826025 ((_ is Star!4945) (regex!3617 (rule!5771 token!556)))) b!1826629))

(assert (= (and b!1826025 ((_ is Union!4945) (regex!3617 (rule!5771 token!556)))) b!1826630))

(declare-fun b!1826633 () Bool)

(declare-fun e!1167440 () Bool)

(declare-fun tp!516403 () Bool)

(assert (=> b!1826633 (= e!1167440 tp!516403)))

(declare-fun b!1826631 () Bool)

(assert (=> b!1826631 (= e!1167440 tp_is_empty!8125)))

(declare-fun b!1826634 () Bool)

(declare-fun tp!516406 () Bool)

(declare-fun tp!516402 () Bool)

(assert (=> b!1826634 (= e!1167440 (and tp!516406 tp!516402))))

(assert (=> b!1826014 (= tp!516316 e!1167440)))

(declare-fun b!1826632 () Bool)

(declare-fun tp!516404 () Bool)

(declare-fun tp!516405 () Bool)

(assert (=> b!1826632 (= e!1167440 (and tp!516404 tp!516405))))

(assert (= (and b!1826014 ((_ is ElementMatch!4945) (regex!3617 (h!25449 rules!4538)))) b!1826631))

(assert (= (and b!1826014 ((_ is Concat!8653) (regex!3617 (h!25449 rules!4538)))) b!1826632))

(assert (= (and b!1826014 ((_ is Star!4945) (regex!3617 (h!25449 rules!4538)))) b!1826633))

(assert (= (and b!1826014 ((_ is Union!4945) (regex!3617 (h!25449 rules!4538)))) b!1826634))

(declare-fun b_lambda!60345 () Bool)

(assert (= b_lambda!60325 (or b!1826017 b_lambda!60345)))

(declare-fun bs!407633 () Bool)

(declare-fun d!558849 () Bool)

(assert (= bs!407633 (and d!558849 b!1826017)))

(assert (=> bs!407633 (= (dynLambda!9972 lambda!71655 (h!25449 rules!4538)) (regex!3617 (h!25449 rules!4538)))))

(assert (=> b!1826330 d!558849))

(declare-fun b_lambda!60347 () Bool)

(assert (= b_lambda!60341 (or (and b!1826016 b_free!50847) (and b!1826018 b_free!50851 (= (toValue!5156 (transformation!3617 (h!25449 rules!4538))) (toValue!5156 (transformation!3617 rule!559)))) (and b!1826022 b_free!50855 (= (toValue!5156 (transformation!3617 (rule!5771 token!556))) (toValue!5156 (transformation!3617 rule!559)))) (and b!1826626 b_free!50863 (= (toValue!5156 (transformation!3617 (h!25449 (t!170285 rules!4538)))) (toValue!5156 (transformation!3617 rule!559)))) b_lambda!60347)))

(declare-fun b_lambda!60349 () Bool)

(assert (= b_lambda!60343 (or (and b!1826016 b_free!50849 (= (toChars!5015 (transformation!3617 rule!559)) (toChars!5015 (transformation!3617 (rule!5771 token!556))))) (and b!1826018 b_free!50853 (= (toChars!5015 (transformation!3617 (h!25449 rules!4538))) (toChars!5015 (transformation!3617 (rule!5771 token!556))))) (and b!1826022 b_free!50857) (and b!1826626 b_free!50865 (= (toChars!5015 (transformation!3617 (h!25449 (t!170285 rules!4538)))) (toChars!5015 (transformation!3617 (rule!5771 token!556))))) b_lambda!60349)))

(declare-fun b_lambda!60351 () Bool)

(assert (= b_lambda!60323 (or (and b!1826016 b_free!50849 (= (toChars!5015 (transformation!3617 rule!559)) (toChars!5015 (transformation!3617 (rule!5771 token!556))))) (and b!1826018 b_free!50853 (= (toChars!5015 (transformation!3617 (h!25449 rules!4538))) (toChars!5015 (transformation!3617 (rule!5771 token!556))))) (and b!1826022 b_free!50857) (and b!1826626 b_free!50865 (= (toChars!5015 (transformation!3617 (h!25449 (t!170285 rules!4538)))) (toChars!5015 (transformation!3617 (rule!5771 token!556))))) b_lambda!60351)))

(check-sat (not d!558813) (not d!558845) tp_is_empty!8125 (not b!1826550) (not b!1826549) (not b!1826388) (not b_next!51557) (not d!558769) (not b!1826615) (not b!1826612) b_and!141869 (not d!558835) (not b!1826144) b_and!141877 (not b!1826578) (not d!558775) (not d!558771) (not b!1826573) (not d!558725) (not b!1826427) (not b!1826252) (not b!1826628) (not b!1826303) (not b!1826594) (not b!1826109) (not b_next!51551) (not d!558729) (not b!1826257) (not b!1826183) (not d!558815) (not b_next!51555) (not b_next!51559) (not b!1826184) (not b!1826613) (not b!1826614) (not b!1826255) (not b!1826307) (not b!1826624) (not b!1826586) (not d!558755) (not d!558837) (not b!1826426) (not b!1826297) (not b_next!51561) (not b!1826629) (not d!558739) (not bm!114531) (not b!1826114) (not b!1826429) b_and!141873 (not b!1826546) (not d!558777) (not b!1826630) (not b!1826302) (not b!1826625) (not b!1826634) (not b_lambda!60345) (not tb!111563) (not d!558781) (not d!558753) (not b!1826575) (not b_next!51569) (not bm!114535) (not b!1826577) (not b!1826551) b_and!141867 (not d!558745) (not b!1826545) (not b!1826154) (not d!558757) (not d!558839) (not b!1826304) (not bm!114534) (not d!558823) (not b!1826600) (not b!1826216) (not b!1826431) b_and!141871 (not d!558803) (not d!558719) b_and!141865 (not b!1826317) (not d!558765) (not b!1826553) (not b!1826580) (not b!1826258) (not b!1826424) (not b!1826145) (not b!1826547) (not b!1826423) (not b!1826464) (not b_lambda!60351) (not b!1826633) (not tb!111579) b_and!141875 (not b!1826579) (not b!1826632) (not b!1826256) (not b_next!51567) (not b!1826572) (not b!1826305) b_and!141879 (not b!1826185) (not b!1826298) (not b_next!51553) (not b!1826599) (not b!1826151) (not b!1826330) (not b!1826574) (not b_lambda!60347) (not d!558773) (not b!1826299) (not b_lambda!60349) (not bm!114530) (not d!558779) (not bm!114539) (not b!1826593) (not b!1826425) (not b!1826324) (not d!558741) (not b!1826548) (not b!1826260))
(check-sat (not b_next!51557) (not b_next!51559) (not b_next!51561) b_and!141873 b_and!141871 b_and!141865 b_and!141875 (not b_next!51553) b_and!141869 b_and!141877 (not b_next!51551) (not b_next!51555) (not b_next!51569) b_and!141867 (not b_next!51567) b_and!141879)
