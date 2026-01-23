; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!407038 () Bool)

(assert start!407038)

(declare-fun b!4250992 () Bool)

(declare-fun b_free!126387 () Bool)

(declare-fun b_next!127091 () Bool)

(assert (=> b!4250992 (= b_free!126387 (not b_next!127091))))

(declare-fun tp!1304456 () Bool)

(declare-fun b_and!337013 () Bool)

(assert (=> b!4250992 (= tp!1304456 b_and!337013)))

(declare-fun b_free!126389 () Bool)

(declare-fun b_next!127093 () Bool)

(assert (=> b!4250992 (= b_free!126389 (not b_next!127093))))

(declare-fun tp!1304452 () Bool)

(declare-fun b_and!337015 () Bool)

(assert (=> b!4250992 (= tp!1304452 b_and!337015)))

(declare-fun b!4250974 () Bool)

(declare-fun b_free!126391 () Bool)

(declare-fun b_next!127095 () Bool)

(assert (=> b!4250974 (= b_free!126391 (not b_next!127095))))

(declare-fun tp!1304461 () Bool)

(declare-fun b_and!337017 () Bool)

(assert (=> b!4250974 (= tp!1304461 b_and!337017)))

(declare-fun b_free!126393 () Bool)

(declare-fun b_next!127097 () Bool)

(assert (=> b!4250974 (= b_free!126393 (not b_next!127097))))

(declare-fun tp!1304454 () Bool)

(declare-fun b_and!337019 () Bool)

(assert (=> b!4250974 (= tp!1304454 b_and!337019)))

(declare-fun b!4250973 () Bool)

(declare-fun res!1747548 () Bool)

(declare-fun e!2640398 () Bool)

(assert (=> b!4250973 (=> (not res!1747548) (not e!2640398))))

(declare-datatypes ((List!47235 0))(
  ( (Nil!47111) (Cons!47111 (h!52531 (_ BitVec 16)) (t!352376 List!47235)) )
))
(declare-datatypes ((TokenValue!8206 0))(
  ( (FloatLiteralValue!16412 (text!57887 List!47235)) (TokenValueExt!8205 (__x!28635 Int)) (Broken!41030 (value!247826 List!47235)) (Object!8329) (End!8206) (Def!8206) (Underscore!8206) (Match!8206) (Else!8206) (Error!8206) (Case!8206) (If!8206) (Extends!8206) (Abstract!8206) (Class!8206) (Val!8206) (DelimiterValue!16412 (del!8266 List!47235)) (KeywordValue!8212 (value!247827 List!47235)) (CommentValue!16412 (value!247828 List!47235)) (WhitespaceValue!16412 (value!247829 List!47235)) (IndentationValue!8206 (value!247830 List!47235)) (String!54959) (Int32!8206) (Broken!41031 (value!247831 List!47235)) (Boolean!8207) (Unit!66072) (OperatorValue!8209 (op!8266 List!47235)) (IdentifierValue!16412 (value!247832 List!47235)) (IdentifierValue!16413 (value!247833 List!47235)) (WhitespaceValue!16413 (value!247834 List!47235)) (True!16412) (False!16412) (Broken!41032 (value!247835 List!47235)) (Broken!41033 (value!247836 List!47235)) (True!16413) (RightBrace!8206) (RightBracket!8206) (Colon!8206) (Null!8206) (Comma!8206) (LeftBracket!8206) (False!16413) (LeftBrace!8206) (ImaginaryLiteralValue!8206 (text!57888 List!47235)) (StringLiteralValue!24618 (value!247837 List!47235)) (EOFValue!8206 (value!247838 List!47235)) (IdentValue!8206 (value!247839 List!47235)) (DelimiterValue!16413 (value!247840 List!47235)) (DedentValue!8206 (value!247841 List!47235)) (NewLineValue!8206 (value!247842 List!47235)) (IntegerValue!24618 (value!247843 (_ BitVec 32)) (text!57889 List!47235)) (IntegerValue!24619 (value!247844 Int) (text!57890 List!47235)) (Times!8206) (Or!8206) (Equal!8206) (Minus!8206) (Broken!41034 (value!247845 List!47235)) (And!8206) (Div!8206) (LessEqual!8206) (Mod!8206) (Concat!21087) (Not!8206) (Plus!8206) (SpaceValue!8206 (value!247846 List!47235)) (IntegerValue!24620 (value!247847 Int) (text!57891 List!47235)) (StringLiteralValue!24619 (text!57892 List!47235)) (FloatLiteralValue!16413 (text!57893 List!47235)) (BytesLiteralValue!8206 (value!247848 List!47235)) (CommentValue!16413 (value!247849 List!47235)) (StringLiteralValue!24620 (value!247850 List!47235)) (ErrorTokenValue!8206 (msg!8267 List!47235)) )
))
(declare-datatypes ((C!25960 0))(
  ( (C!25961 (val!15170 Int)) )
))
(declare-datatypes ((List!47236 0))(
  ( (Nil!47112) (Cons!47112 (h!52532 C!25960) (t!352377 List!47236)) )
))
(declare-datatypes ((IArray!28379 0))(
  ( (IArray!28380 (innerList!14247 List!47236)) )
))
(declare-datatypes ((Conc!14187 0))(
  ( (Node!14187 (left!34937 Conc!14187) (right!35267 Conc!14187) (csize!28604 Int) (cheight!14398 Int)) (Leaf!21934 (xs!17493 IArray!28379) (csize!28605 Int)) (Empty!14187) )
))
(declare-datatypes ((BalanceConc!27968 0))(
  ( (BalanceConc!27969 (c!721838 Conc!14187)) )
))
(declare-datatypes ((TokenValueInjection!15840 0))(
  ( (TokenValueInjection!15841 (toValue!10748 Int) (toChars!10607 Int)) )
))
(declare-datatypes ((String!54960 0))(
  ( (String!54961 (value!247851 String)) )
))
(declare-datatypes ((Regex!12881 0))(
  ( (ElementMatch!12881 (c!721839 C!25960)) (Concat!21088 (regOne!26274 Regex!12881) (regTwo!26274 Regex!12881)) (EmptyExpr!12881) (Star!12881 (reg!13210 Regex!12881)) (EmptyLang!12881) (Union!12881 (regOne!26275 Regex!12881) (regTwo!26275 Regex!12881)) )
))
(declare-datatypes ((Rule!15752 0))(
  ( (Rule!15753 (regex!7976 Regex!12881) (tag!8840 String!54960) (isSeparator!7976 Bool) (transformation!7976 TokenValueInjection!15840)) )
))
(declare-datatypes ((Token!14578 0))(
  ( (Token!14579 (value!247852 TokenValue!8206) (rule!11110 Rule!15752) (size!34486 Int) (originalCharacters!8320 List!47236)) )
))
(declare-datatypes ((tuple2!44670 0))(
  ( (tuple2!44671 (_1!25469 Token!14578) (_2!25469 List!47236)) )
))
(declare-datatypes ((Option!10110 0))(
  ( (None!10109) (Some!10109 (v!41067 tuple2!44670)) )
))
(declare-fun lt!1508620 () Option!10110)

(declare-fun isEmpty!27874 (List!47236) Bool)

(assert (=> b!4250973 (= res!1747548 (not (isEmpty!27874 (_2!25469 (v!41067 lt!1508620)))))))

(declare-fun e!2640400 () Bool)

(assert (=> b!4250974 (= e!2640400 (and tp!1304461 tp!1304454))))

(declare-fun b!4250975 () Bool)

(declare-fun res!1747552 () Bool)

(declare-fun e!2640399 () Bool)

(assert (=> b!4250975 (=> (not res!1747552) (not e!2640399))))

(declare-datatypes ((LexerInterface!7571 0))(
  ( (LexerInterfaceExt!7568 (__x!28636 Int)) (Lexer!7569) )
))
(declare-fun thiss!21641 () LexerInterface!7571)

(declare-fun suffix!1284 () List!47236)

(declare-fun longerInput!62 () List!47236)

(declare-datatypes ((List!47237 0))(
  ( (Nil!47113) (Cons!47113 (h!52533 Token!14578) (t!352378 List!47237)) )
))
(declare-fun tokens!592 () List!47237)

(declare-datatypes ((List!47238 0))(
  ( (Nil!47114) (Cons!47114 (h!52534 Rule!15752) (t!352379 List!47238)) )
))
(declare-fun rules!2971 () List!47238)

(declare-datatypes ((tuple2!44672 0))(
  ( (tuple2!44673 (_1!25470 List!47237) (_2!25470 List!47236)) )
))
(declare-fun lexList!2077 (LexerInterface!7571 List!47238 List!47236) tuple2!44672)

(assert (=> b!4250975 (= res!1747552 (= (lexList!2077 thiss!21641 rules!2971 longerInput!62) (tuple2!44673 tokens!592 suffix!1284)))))

(declare-fun b!4250976 () Bool)

(declare-fun e!2640390 () Bool)

(declare-fun e!2640392 () Bool)

(assert (=> b!4250976 (= e!2640390 e!2640392)))

(declare-fun res!1747546 () Bool)

(assert (=> b!4250976 (=> (not res!1747546) (not e!2640392))))

(declare-fun lt!1508619 () List!47236)

(declare-fun ++!11985 (List!47236 List!47236) List!47236)

(assert (=> b!4250976 (= res!1747546 (= (++!11985 lt!1508619 (_2!25469 (v!41067 lt!1508620))) longerInput!62))))

(declare-fun list!16972 (BalanceConc!27968) List!47236)

(declare-fun charsOf!5316 (Token!14578) BalanceConc!27968)

(assert (=> b!4250976 (= lt!1508619 (list!16972 (charsOf!5316 (_1!25469 (v!41067 lt!1508620)))))))

(declare-fun b!4250978 () Bool)

(declare-fun e!2640403 () Bool)

(declare-fun tp!1304457 () Bool)

(declare-fun e!2640401 () Bool)

(declare-fun inv!61884 (String!54960) Bool)

(declare-fun inv!61887 (TokenValueInjection!15840) Bool)

(assert (=> b!4250978 (= e!2640401 (and tp!1304457 (inv!61884 (tag!8840 (h!52534 rules!2971))) (inv!61887 (transformation!7976 (h!52534 rules!2971))) e!2640403))))

(declare-fun tp!1304462 () Bool)

(declare-fun b!4250979 () Bool)

(declare-fun e!2640393 () Bool)

(declare-fun e!2640396 () Bool)

(declare-fun inv!61888 (Token!14578) Bool)

(assert (=> b!4250979 (= e!2640396 (and (inv!61888 (h!52533 tokens!592)) e!2640393 tp!1304462))))

(declare-fun b!4250980 () Bool)

(declare-fun e!2640404 () Bool)

(declare-fun tp_is_empty!22753 () Bool)

(declare-fun tp!1304453 () Bool)

(assert (=> b!4250980 (= e!2640404 (and tp_is_empty!22753 tp!1304453))))

(declare-fun b!4250981 () Bool)

(declare-fun res!1747544 () Bool)

(assert (=> b!4250981 (=> (not res!1747544) (not e!2640399))))

(declare-fun isEmpty!27875 (List!47238) Bool)

(assert (=> b!4250981 (= res!1747544 (not (isEmpty!27875 rules!2971)))))

(declare-fun b!4250982 () Bool)

(declare-fun res!1747545 () Bool)

(assert (=> b!4250982 (=> (not res!1747545) (not e!2640398))))

(declare-fun lt!1508621 () Option!10110)

(declare-fun size!34487 (List!47236) Int)

(assert (=> b!4250982 (= res!1747545 (> (size!34487 (_2!25469 (v!41067 lt!1508620))) (size!34487 (_2!25469 (v!41067 lt!1508621)))))))

(declare-fun b!4250983 () Bool)

(declare-fun e!2640388 () Bool)

(declare-fun tp!1304460 () Bool)

(assert (=> b!4250983 (= e!2640388 (and tp_is_empty!22753 tp!1304460))))

(declare-fun res!1747547 () Bool)

(assert (=> start!407038 (=> (not res!1747547) (not e!2640399))))

(get-info :version)

(assert (=> start!407038 (= res!1747547 ((_ is Lexer!7569) thiss!21641))))

(assert (=> start!407038 e!2640399))

(assert (=> start!407038 true))

(assert (=> start!407038 e!2640404))

(declare-fun e!2640395 () Bool)

(assert (=> start!407038 e!2640395))

(assert (=> start!407038 e!2640396))

(declare-fun e!2640389 () Bool)

(assert (=> start!407038 e!2640389))

(assert (=> start!407038 e!2640388))

(declare-fun b!4250977 () Bool)

(declare-fun res!1747553 () Bool)

(assert (=> b!4250977 (=> (not res!1747553) (not e!2640399))))

(assert (=> b!4250977 (= res!1747553 (not (isEmpty!27874 longerInput!62)))))

(declare-fun b!4250984 () Bool)

(declare-fun tp!1304451 () Bool)

(declare-fun e!2640391 () Bool)

(declare-fun inv!21 (TokenValue!8206) Bool)

(assert (=> b!4250984 (= e!2640393 (and (inv!21 (value!247852 (h!52533 tokens!592))) e!2640391 tp!1304451))))

(declare-fun b!4250985 () Bool)

(declare-fun res!1747549 () Bool)

(assert (=> b!4250985 (=> (not res!1747549) (not e!2640398))))

(declare-fun lt!1508622 () List!47236)

(assert (=> b!4250985 (= res!1747549 (and (= (_1!25469 (v!41067 lt!1508620)) (_1!25469 (v!41067 lt!1508621))) (= lt!1508619 lt!1508622)))))

(declare-fun b!4250986 () Bool)

(assert (=> b!4250986 (= e!2640399 e!2640390)))

(declare-fun res!1747550 () Bool)

(assert (=> b!4250986 (=> (not res!1747550) (not e!2640390))))

(assert (=> b!4250986 (= res!1747550 (and ((_ is Some!10109) lt!1508620) ((_ is Some!10109) lt!1508621)))))

(declare-fun shorterInput!62 () List!47236)

(declare-fun maxPrefix!4527 (LexerInterface!7571 List!47238 List!47236) Option!10110)

(assert (=> b!4250986 (= lt!1508621 (maxPrefix!4527 thiss!21641 rules!2971 shorterInput!62))))

(assert (=> b!4250986 (= lt!1508620 (maxPrefix!4527 thiss!21641 rules!2971 longerInput!62))))

(declare-fun b!4250987 () Bool)

(assert (=> b!4250987 (= e!2640392 e!2640398)))

(declare-fun res!1747551 () Bool)

(assert (=> b!4250987 (=> (not res!1747551) (not e!2640398))))

(assert (=> b!4250987 (= res!1747551 (= (++!11985 lt!1508622 (_2!25469 (v!41067 lt!1508621))) shorterInput!62))))

(assert (=> b!4250987 (= lt!1508622 (list!16972 (charsOf!5316 (_1!25469 (v!41067 lt!1508621)))))))

(declare-fun b!4250988 () Bool)

(declare-fun tp!1304458 () Bool)

(assert (=> b!4250988 (= e!2640389 (and e!2640401 tp!1304458))))

(declare-fun b!4250989 () Bool)

(declare-fun res!1747543 () Bool)

(assert (=> b!4250989 (=> (not res!1747543) (not e!2640399))))

(declare-fun rulesInvariant!6682 (LexerInterface!7571 List!47238) Bool)

(assert (=> b!4250989 (= res!1747543 (rulesInvariant!6682 thiss!21641 rules!2971))))

(declare-fun b!4250990 () Bool)

(declare-fun tp!1304455 () Bool)

(assert (=> b!4250990 (= e!2640395 (and tp_is_empty!22753 tp!1304455))))

(declare-fun b!4250991 () Bool)

(declare-fun tail!6854 (List!47237) List!47237)

(assert (=> b!4250991 (= e!2640398 (not (= (lexList!2077 thiss!21641 rules!2971 (_2!25469 (v!41067 lt!1508620))) (tuple2!44673 (tail!6854 tokens!592) suffix!1284))))))

(assert (=> b!4250992 (= e!2640403 (and tp!1304456 tp!1304452))))

(declare-fun b!4250993 () Bool)

(declare-fun res!1747554 () Bool)

(assert (=> b!4250993 (=> (not res!1747554) (not e!2640399))))

(assert (=> b!4250993 (= res!1747554 (> (size!34487 longerInput!62) (size!34487 shorterInput!62)))))

(declare-fun b!4250994 () Bool)

(declare-fun tp!1304459 () Bool)

(assert (=> b!4250994 (= e!2640391 (and tp!1304459 (inv!61884 (tag!8840 (rule!11110 (h!52533 tokens!592)))) (inv!61887 (transformation!7976 (rule!11110 (h!52533 tokens!592)))) e!2640400))))

(assert (= (and start!407038 res!1747547) b!4250981))

(assert (= (and b!4250981 res!1747544) b!4250989))

(assert (= (and b!4250989 res!1747543) b!4250977))

(assert (= (and b!4250977 res!1747553) b!4250993))

(assert (= (and b!4250993 res!1747554) b!4250975))

(assert (= (and b!4250975 res!1747552) b!4250986))

(assert (= (and b!4250986 res!1747550) b!4250976))

(assert (= (and b!4250976 res!1747546) b!4250987))

(assert (= (and b!4250987 res!1747551) b!4250985))

(assert (= (and b!4250985 res!1747549) b!4250982))

(assert (= (and b!4250982 res!1747545) b!4250973))

(assert (= (and b!4250973 res!1747548) b!4250991))

(assert (= (and start!407038 ((_ is Cons!47112) suffix!1284)) b!4250980))

(assert (= (and start!407038 ((_ is Cons!47112) longerInput!62)) b!4250990))

(assert (= b!4250994 b!4250974))

(assert (= b!4250984 b!4250994))

(assert (= b!4250979 b!4250984))

(assert (= (and start!407038 ((_ is Cons!47113) tokens!592)) b!4250979))

(assert (= b!4250978 b!4250992))

(assert (= b!4250988 b!4250978))

(assert (= (and start!407038 ((_ is Cons!47114) rules!2971)) b!4250988))

(assert (= (and start!407038 ((_ is Cons!47112) shorterInput!62)) b!4250983))

(declare-fun m!4835685 () Bool)

(assert (=> b!4250982 m!4835685))

(declare-fun m!4835687 () Bool)

(assert (=> b!4250982 m!4835687))

(declare-fun m!4835689 () Bool)

(assert (=> b!4250993 m!4835689))

(declare-fun m!4835691 () Bool)

(assert (=> b!4250993 m!4835691))

(declare-fun m!4835693 () Bool)

(assert (=> b!4250989 m!4835693))

(declare-fun m!4835695 () Bool)

(assert (=> b!4250975 m!4835695))

(declare-fun m!4835697 () Bool)

(assert (=> b!4250991 m!4835697))

(declare-fun m!4835699 () Bool)

(assert (=> b!4250991 m!4835699))

(declare-fun m!4835701 () Bool)

(assert (=> b!4250978 m!4835701))

(declare-fun m!4835703 () Bool)

(assert (=> b!4250978 m!4835703))

(declare-fun m!4835705 () Bool)

(assert (=> b!4250977 m!4835705))

(declare-fun m!4835707 () Bool)

(assert (=> b!4250994 m!4835707))

(declare-fun m!4835709 () Bool)

(assert (=> b!4250994 m!4835709))

(declare-fun m!4835711 () Bool)

(assert (=> b!4250979 m!4835711))

(declare-fun m!4835713 () Bool)

(assert (=> b!4250976 m!4835713))

(declare-fun m!4835715 () Bool)

(assert (=> b!4250976 m!4835715))

(assert (=> b!4250976 m!4835715))

(declare-fun m!4835717 () Bool)

(assert (=> b!4250976 m!4835717))

(declare-fun m!4835719 () Bool)

(assert (=> b!4250986 m!4835719))

(declare-fun m!4835721 () Bool)

(assert (=> b!4250986 m!4835721))

(declare-fun m!4835723 () Bool)

(assert (=> b!4250981 m!4835723))

(declare-fun m!4835725 () Bool)

(assert (=> b!4250973 m!4835725))

(declare-fun m!4835727 () Bool)

(assert (=> b!4250984 m!4835727))

(declare-fun m!4835729 () Bool)

(assert (=> b!4250987 m!4835729))

(declare-fun m!4835731 () Bool)

(assert (=> b!4250987 m!4835731))

(assert (=> b!4250987 m!4835731))

(declare-fun m!4835733 () Bool)

(assert (=> b!4250987 m!4835733))

(check-sat (not b!4250993) (not b_next!127091) b_and!337015 b_and!337019 (not b!4250982) (not b!4250980) (not b!4250988) (not b!4250973) (not b!4250975) b_and!337017 (not b!4250977) (not b_next!127097) (not b!4250976) tp_is_empty!22753 (not b!4250986) (not b!4250987) b_and!337013 (not b_next!127093) (not b!4250990) (not b!4250984) (not b!4250983) (not b!4250994) (not b!4250989) (not b!4250978) (not b_next!127095) (not b!4250979) (not b!4250991) (not b!4250981))
(check-sat b_and!337017 (not b_next!127097) (not b_next!127091) b_and!337013 (not b_next!127093) b_and!337015 b_and!337019 (not b_next!127095))
(get-model)

(declare-fun d!1250023 () Bool)

(assert (=> d!1250023 (= (isEmpty!27874 (_2!25469 (v!41067 lt!1508620))) ((_ is Nil!47112) (_2!25469 (v!41067 lt!1508620))))))

(assert (=> b!4250973 d!1250023))

(declare-fun d!1250025 () Bool)

(assert (=> d!1250025 (= (inv!61884 (tag!8840 (rule!11110 (h!52533 tokens!592)))) (= (mod (str.len (value!247851 (tag!8840 (rule!11110 (h!52533 tokens!592))))) 2) 0))))

(assert (=> b!4250994 d!1250025))

(declare-fun d!1250027 () Bool)

(declare-fun res!1747561 () Bool)

(declare-fun e!2640407 () Bool)

(assert (=> d!1250027 (=> (not res!1747561) (not e!2640407))))

(declare-fun semiInverseModEq!3479 (Int Int) Bool)

(assert (=> d!1250027 (= res!1747561 (semiInverseModEq!3479 (toChars!10607 (transformation!7976 (rule!11110 (h!52533 tokens!592)))) (toValue!10748 (transformation!7976 (rule!11110 (h!52533 tokens!592))))))))

(assert (=> d!1250027 (= (inv!61887 (transformation!7976 (rule!11110 (h!52533 tokens!592)))) e!2640407)))

(declare-fun b!4250997 () Bool)

(declare-fun equivClasses!3378 (Int Int) Bool)

(assert (=> b!4250997 (= e!2640407 (equivClasses!3378 (toChars!10607 (transformation!7976 (rule!11110 (h!52533 tokens!592)))) (toValue!10748 (transformation!7976 (rule!11110 (h!52533 tokens!592))))))))

(assert (= (and d!1250027 res!1747561) b!4250997))

(declare-fun m!4835735 () Bool)

(assert (=> d!1250027 m!4835735))

(declare-fun m!4835737 () Bool)

(assert (=> b!4250997 m!4835737))

(assert (=> b!4250994 d!1250027))

(declare-fun d!1250031 () Bool)

(declare-fun lt!1508627 () Int)

(assert (=> d!1250031 (>= lt!1508627 0)))

(declare-fun e!2640414 () Int)

(assert (=> d!1250031 (= lt!1508627 e!2640414)))

(declare-fun c!721844 () Bool)

(assert (=> d!1250031 (= c!721844 ((_ is Nil!47112) longerInput!62))))

(assert (=> d!1250031 (= (size!34487 longerInput!62) lt!1508627)))

(declare-fun b!4251010 () Bool)

(assert (=> b!4251010 (= e!2640414 0)))

(declare-fun b!4251011 () Bool)

(assert (=> b!4251011 (= e!2640414 (+ 1 (size!34487 (t!352377 longerInput!62))))))

(assert (= (and d!1250031 c!721844) b!4251010))

(assert (= (and d!1250031 (not c!721844)) b!4251011))

(declare-fun m!4835739 () Bool)

(assert (=> b!4251011 m!4835739))

(assert (=> b!4250993 d!1250031))

(declare-fun d!1250033 () Bool)

(declare-fun lt!1508628 () Int)

(assert (=> d!1250033 (>= lt!1508628 0)))

(declare-fun e!2640415 () Int)

(assert (=> d!1250033 (= lt!1508628 e!2640415)))

(declare-fun c!721845 () Bool)

(assert (=> d!1250033 (= c!721845 ((_ is Nil!47112) shorterInput!62))))

(assert (=> d!1250033 (= (size!34487 shorterInput!62) lt!1508628)))

(declare-fun b!4251012 () Bool)

(assert (=> b!4251012 (= e!2640415 0)))

(declare-fun b!4251013 () Bool)

(assert (=> b!4251013 (= e!2640415 (+ 1 (size!34487 (t!352377 shorterInput!62))))))

(assert (= (and d!1250033 c!721845) b!4251012))

(assert (= (and d!1250033 (not c!721845)) b!4251013))

(declare-fun m!4835741 () Bool)

(assert (=> b!4251013 m!4835741))

(assert (=> b!4250993 d!1250033))

(declare-fun d!1250035 () Bool)

(declare-fun lt!1508629 () Int)

(assert (=> d!1250035 (>= lt!1508629 0)))

(declare-fun e!2640416 () Int)

(assert (=> d!1250035 (= lt!1508629 e!2640416)))

(declare-fun c!721846 () Bool)

(assert (=> d!1250035 (= c!721846 ((_ is Nil!47112) (_2!25469 (v!41067 lt!1508620))))))

(assert (=> d!1250035 (= (size!34487 (_2!25469 (v!41067 lt!1508620))) lt!1508629)))

(declare-fun b!4251014 () Bool)

(assert (=> b!4251014 (= e!2640416 0)))

(declare-fun b!4251015 () Bool)

(assert (=> b!4251015 (= e!2640416 (+ 1 (size!34487 (t!352377 (_2!25469 (v!41067 lt!1508620))))))))

(assert (= (and d!1250035 c!721846) b!4251014))

(assert (= (and d!1250035 (not c!721846)) b!4251015))

(declare-fun m!4835743 () Bool)

(assert (=> b!4251015 m!4835743))

(assert (=> b!4250982 d!1250035))

(declare-fun d!1250037 () Bool)

(declare-fun lt!1508630 () Int)

(assert (=> d!1250037 (>= lt!1508630 0)))

(declare-fun e!2640417 () Int)

(assert (=> d!1250037 (= lt!1508630 e!2640417)))

(declare-fun c!721847 () Bool)

(assert (=> d!1250037 (= c!721847 ((_ is Nil!47112) (_2!25469 (v!41067 lt!1508621))))))

(assert (=> d!1250037 (= (size!34487 (_2!25469 (v!41067 lt!1508621))) lt!1508630)))

(declare-fun b!4251016 () Bool)

(assert (=> b!4251016 (= e!2640417 0)))

(declare-fun b!4251017 () Bool)

(assert (=> b!4251017 (= e!2640417 (+ 1 (size!34487 (t!352377 (_2!25469 (v!41067 lt!1508621))))))))

(assert (= (and d!1250037 c!721847) b!4251016))

(assert (= (and d!1250037 (not c!721847)) b!4251017))

(declare-fun m!4835745 () Bool)

(assert (=> b!4251017 m!4835745))

(assert (=> b!4250982 d!1250037))

(declare-fun b!4251048 () Bool)

(declare-fun e!2640438 () Bool)

(declare-fun e!2640437 () Bool)

(assert (=> b!4251048 (= e!2640438 e!2640437)))

(declare-fun res!1747573 () Bool)

(declare-fun lt!1508645 () tuple2!44672)

(assert (=> b!4251048 (= res!1747573 (< (size!34487 (_2!25470 lt!1508645)) (size!34487 (_2!25469 (v!41067 lt!1508620)))))))

(assert (=> b!4251048 (=> (not res!1747573) (not e!2640437))))

(declare-fun d!1250039 () Bool)

(assert (=> d!1250039 e!2640438))

(declare-fun c!721857 () Bool)

(declare-fun size!34489 (List!47237) Int)

(assert (=> d!1250039 (= c!721857 (> (size!34489 (_1!25470 lt!1508645)) 0))))

(declare-fun e!2640436 () tuple2!44672)

(assert (=> d!1250039 (= lt!1508645 e!2640436)))

(declare-fun c!721858 () Bool)

(declare-fun lt!1508647 () Option!10110)

(assert (=> d!1250039 (= c!721858 ((_ is Some!10109) lt!1508647))))

(assert (=> d!1250039 (= lt!1508647 (maxPrefix!4527 thiss!21641 rules!2971 (_2!25469 (v!41067 lt!1508620))))))

(assert (=> d!1250039 (= (lexList!2077 thiss!21641 rules!2971 (_2!25469 (v!41067 lt!1508620))) lt!1508645)))

(declare-fun b!4251049 () Bool)

(declare-fun lt!1508646 () tuple2!44672)

(assert (=> b!4251049 (= e!2640436 (tuple2!44673 (Cons!47113 (_1!25469 (v!41067 lt!1508647)) (_1!25470 lt!1508646)) (_2!25470 lt!1508646)))))

(assert (=> b!4251049 (= lt!1508646 (lexList!2077 thiss!21641 rules!2971 (_2!25469 (v!41067 lt!1508647))))))

(declare-fun b!4251050 () Bool)

(assert (=> b!4251050 (= e!2640436 (tuple2!44673 Nil!47113 (_2!25469 (v!41067 lt!1508620))))))

(declare-fun b!4251051 () Bool)

(declare-fun isEmpty!27878 (List!47237) Bool)

(assert (=> b!4251051 (= e!2640437 (not (isEmpty!27878 (_1!25470 lt!1508645))))))

(declare-fun b!4251052 () Bool)

(assert (=> b!4251052 (= e!2640438 (= (_2!25470 lt!1508645) (_2!25469 (v!41067 lt!1508620))))))

(assert (= (and d!1250039 c!721858) b!4251049))

(assert (= (and d!1250039 (not c!721858)) b!4251050))

(assert (= (and d!1250039 c!721857) b!4251048))

(assert (= (and d!1250039 (not c!721857)) b!4251052))

(assert (= (and b!4251048 res!1747573) b!4251051))

(declare-fun m!4835777 () Bool)

(assert (=> b!4251048 m!4835777))

(assert (=> b!4251048 m!4835685))

(declare-fun m!4835779 () Bool)

(assert (=> d!1250039 m!4835779))

(declare-fun m!4835781 () Bool)

(assert (=> d!1250039 m!4835781))

(declare-fun m!4835783 () Bool)

(assert (=> b!4251049 m!4835783))

(declare-fun m!4835785 () Bool)

(assert (=> b!4251051 m!4835785))

(assert (=> b!4250991 d!1250039))

(declare-fun d!1250055 () Bool)

(assert (=> d!1250055 (= (tail!6854 tokens!592) (t!352378 tokens!592))))

(assert (=> b!4250991 d!1250055))

(declare-fun d!1250057 () Bool)

(assert (=> d!1250057 (= (isEmpty!27875 rules!2971) ((_ is Nil!47114) rules!2971))))

(assert (=> b!4250981 d!1250057))

(declare-fun d!1250059 () Bool)

(declare-fun res!1747583 () Bool)

(declare-fun e!2640452 () Bool)

(assert (=> d!1250059 (=> (not res!1747583) (not e!2640452))))

(assert (=> d!1250059 (= res!1747583 (not (isEmpty!27874 (originalCharacters!8320 (h!52533 tokens!592)))))))

(assert (=> d!1250059 (= (inv!61888 (h!52533 tokens!592)) e!2640452)))

(declare-fun b!4251076 () Bool)

(declare-fun res!1747584 () Bool)

(assert (=> b!4251076 (=> (not res!1747584) (not e!2640452))))

(declare-fun dynLambda!20180 (Int TokenValue!8206) BalanceConc!27968)

(assert (=> b!4251076 (= res!1747584 (= (originalCharacters!8320 (h!52533 tokens!592)) (list!16972 (dynLambda!20180 (toChars!10607 (transformation!7976 (rule!11110 (h!52533 tokens!592)))) (value!247852 (h!52533 tokens!592))))))))

(declare-fun b!4251077 () Bool)

(assert (=> b!4251077 (= e!2640452 (= (size!34486 (h!52533 tokens!592)) (size!34487 (originalCharacters!8320 (h!52533 tokens!592)))))))

(assert (= (and d!1250059 res!1747583) b!4251076))

(assert (= (and b!4251076 res!1747584) b!4251077))

(declare-fun b_lambda!125221 () Bool)

(assert (=> (not b_lambda!125221) (not b!4251076)))

(declare-fun t!352385 () Bool)

(declare-fun tb!256327 () Bool)

(assert (=> (and b!4250992 (= (toChars!10607 (transformation!7976 (h!52534 rules!2971))) (toChars!10607 (transformation!7976 (rule!11110 (h!52533 tokens!592))))) t!352385) tb!256327))

(declare-fun b!4251083 () Bool)

(declare-fun e!2640456 () Bool)

(declare-fun tp!1304469 () Bool)

(declare-fun inv!61891 (Conc!14187) Bool)

(assert (=> b!4251083 (= e!2640456 (and (inv!61891 (c!721838 (dynLambda!20180 (toChars!10607 (transformation!7976 (rule!11110 (h!52533 tokens!592)))) (value!247852 (h!52533 tokens!592))))) tp!1304469))))

(declare-fun result!312610 () Bool)

(declare-fun inv!61892 (BalanceConc!27968) Bool)

(assert (=> tb!256327 (= result!312610 (and (inv!61892 (dynLambda!20180 (toChars!10607 (transformation!7976 (rule!11110 (h!52533 tokens!592)))) (value!247852 (h!52533 tokens!592)))) e!2640456))))

(assert (= tb!256327 b!4251083))

(declare-fun m!4835819 () Bool)

(assert (=> b!4251083 m!4835819))

(declare-fun m!4835821 () Bool)

(assert (=> tb!256327 m!4835821))

(assert (=> b!4251076 t!352385))

(declare-fun b_and!337029 () Bool)

(assert (= b_and!337015 (and (=> t!352385 result!312610) b_and!337029)))

(declare-fun t!352391 () Bool)

(declare-fun tb!256333 () Bool)

(assert (=> (and b!4250974 (= (toChars!10607 (transformation!7976 (rule!11110 (h!52533 tokens!592)))) (toChars!10607 (transformation!7976 (rule!11110 (h!52533 tokens!592))))) t!352391) tb!256333))

(declare-fun result!312618 () Bool)

(assert (= result!312618 result!312610))

(assert (=> b!4251076 t!352391))

(declare-fun b_and!337031 () Bool)

(assert (= b_and!337019 (and (=> t!352391 result!312618) b_and!337031)))

(declare-fun m!4835823 () Bool)

(assert (=> d!1250059 m!4835823))

(declare-fun m!4835825 () Bool)

(assert (=> b!4251076 m!4835825))

(assert (=> b!4251076 m!4835825))

(declare-fun m!4835827 () Bool)

(assert (=> b!4251076 m!4835827))

(declare-fun m!4835829 () Bool)

(assert (=> b!4251077 m!4835829))

(assert (=> b!4250979 d!1250059))

(declare-fun d!1250071 () Bool)

(declare-fun res!1747593 () Bool)

(declare-fun e!2640463 () Bool)

(assert (=> d!1250071 (=> (not res!1747593) (not e!2640463))))

(declare-fun rulesValid!3101 (LexerInterface!7571 List!47238) Bool)

(assert (=> d!1250071 (= res!1747593 (rulesValid!3101 thiss!21641 rules!2971))))

(assert (=> d!1250071 (= (rulesInvariant!6682 thiss!21641 rules!2971) e!2640463)))

(declare-fun b!4251093 () Bool)

(declare-datatypes ((List!47240 0))(
  ( (Nil!47116) (Cons!47116 (h!52536 String!54960) (t!352429 List!47240)) )
))
(declare-fun noDuplicateTag!3262 (LexerInterface!7571 List!47238 List!47240) Bool)

(assert (=> b!4251093 (= e!2640463 (noDuplicateTag!3262 thiss!21641 rules!2971 Nil!47116))))

(assert (= (and d!1250071 res!1747593) b!4251093))

(declare-fun m!4835843 () Bool)

(assert (=> d!1250071 m!4835843))

(declare-fun m!4835845 () Bool)

(assert (=> b!4251093 m!4835845))

(assert (=> b!4250989 d!1250071))

(declare-fun d!1250075 () Bool)

(assert (=> d!1250075 (= (inv!61884 (tag!8840 (h!52534 rules!2971))) (= (mod (str.len (value!247851 (tag!8840 (h!52534 rules!2971)))) 2) 0))))

(assert (=> b!4250978 d!1250075))

(declare-fun d!1250077 () Bool)

(declare-fun res!1747594 () Bool)

(declare-fun e!2640464 () Bool)

(assert (=> d!1250077 (=> (not res!1747594) (not e!2640464))))

(assert (=> d!1250077 (= res!1747594 (semiInverseModEq!3479 (toChars!10607 (transformation!7976 (h!52534 rules!2971))) (toValue!10748 (transformation!7976 (h!52534 rules!2971)))))))

(assert (=> d!1250077 (= (inv!61887 (transformation!7976 (h!52534 rules!2971))) e!2640464)))

(declare-fun b!4251094 () Bool)

(assert (=> b!4251094 (= e!2640464 (equivClasses!3378 (toChars!10607 (transformation!7976 (h!52534 rules!2971))) (toValue!10748 (transformation!7976 (h!52534 rules!2971)))))))

(assert (= (and d!1250077 res!1747594) b!4251094))

(declare-fun m!4835847 () Bool)

(assert (=> d!1250077 m!4835847))

(declare-fun m!4835849 () Bool)

(assert (=> b!4251094 m!4835849))

(assert (=> b!4250978 d!1250077))

(declare-fun b!4251127 () Bool)

(declare-fun e!2640484 () List!47236)

(assert (=> b!4251127 (= e!2640484 (Cons!47112 (h!52532 lt!1508622) (++!11985 (t!352377 lt!1508622) (_2!25469 (v!41067 lt!1508621)))))))

(declare-fun lt!1508664 () List!47236)

(declare-fun e!2640485 () Bool)

(declare-fun b!4251129 () Bool)

(assert (=> b!4251129 (= e!2640485 (or (not (= (_2!25469 (v!41067 lt!1508621)) Nil!47112)) (= lt!1508664 lt!1508622)))))

(declare-fun b!4251126 () Bool)

(assert (=> b!4251126 (= e!2640484 (_2!25469 (v!41067 lt!1508621)))))

(declare-fun b!4251128 () Bool)

(declare-fun res!1747606 () Bool)

(assert (=> b!4251128 (=> (not res!1747606) (not e!2640485))))

(assert (=> b!4251128 (= res!1747606 (= (size!34487 lt!1508664) (+ (size!34487 lt!1508622) (size!34487 (_2!25469 (v!41067 lt!1508621))))))))

(declare-fun d!1250079 () Bool)

(assert (=> d!1250079 e!2640485))

(declare-fun res!1747607 () Bool)

(assert (=> d!1250079 (=> (not res!1747607) (not e!2640485))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7404 (List!47236) (InoxSet C!25960))

(assert (=> d!1250079 (= res!1747607 (= (content!7404 lt!1508664) ((_ map or) (content!7404 lt!1508622) (content!7404 (_2!25469 (v!41067 lt!1508621))))))))

(assert (=> d!1250079 (= lt!1508664 e!2640484)))

(declare-fun c!721876 () Bool)

(assert (=> d!1250079 (= c!721876 ((_ is Nil!47112) lt!1508622))))

(assert (=> d!1250079 (= (++!11985 lt!1508622 (_2!25469 (v!41067 lt!1508621))) lt!1508664)))

(assert (= (and d!1250079 c!721876) b!4251126))

(assert (= (and d!1250079 (not c!721876)) b!4251127))

(assert (= (and d!1250079 res!1747607) b!4251128))

(assert (= (and b!4251128 res!1747606) b!4251129))

(declare-fun m!4835873 () Bool)

(assert (=> b!4251127 m!4835873))

(declare-fun m!4835875 () Bool)

(assert (=> b!4251128 m!4835875))

(declare-fun m!4835877 () Bool)

(assert (=> b!4251128 m!4835877))

(assert (=> b!4251128 m!4835687))

(declare-fun m!4835879 () Bool)

(assert (=> d!1250079 m!4835879))

(declare-fun m!4835881 () Bool)

(assert (=> d!1250079 m!4835881))

(declare-fun m!4835883 () Bool)

(assert (=> d!1250079 m!4835883))

(assert (=> b!4250987 d!1250079))

(declare-fun d!1250097 () Bool)

(declare-fun list!16974 (Conc!14187) List!47236)

(assert (=> d!1250097 (= (list!16972 (charsOf!5316 (_1!25469 (v!41067 lt!1508621)))) (list!16974 (c!721838 (charsOf!5316 (_1!25469 (v!41067 lt!1508621))))))))

(declare-fun bs!598650 () Bool)

(assert (= bs!598650 d!1250097))

(declare-fun m!4835885 () Bool)

(assert (=> bs!598650 m!4835885))

(assert (=> b!4250987 d!1250097))

(declare-fun d!1250099 () Bool)

(declare-fun lt!1508667 () BalanceConc!27968)

(assert (=> d!1250099 (= (list!16972 lt!1508667) (originalCharacters!8320 (_1!25469 (v!41067 lt!1508621))))))

(assert (=> d!1250099 (= lt!1508667 (dynLambda!20180 (toChars!10607 (transformation!7976 (rule!11110 (_1!25469 (v!41067 lt!1508621))))) (value!247852 (_1!25469 (v!41067 lt!1508621)))))))

(assert (=> d!1250099 (= (charsOf!5316 (_1!25469 (v!41067 lt!1508621))) lt!1508667)))

(declare-fun b_lambda!125227 () Bool)

(assert (=> (not b_lambda!125227) (not d!1250099)))

(declare-fun t!352397 () Bool)

(declare-fun tb!256339 () Bool)

(assert (=> (and b!4250992 (= (toChars!10607 (transformation!7976 (h!52534 rules!2971))) (toChars!10607 (transformation!7976 (rule!11110 (_1!25469 (v!41067 lt!1508621)))))) t!352397) tb!256339))

(declare-fun b!4251131 () Bool)

(declare-fun e!2640487 () Bool)

(declare-fun tp!1304471 () Bool)

(assert (=> b!4251131 (= e!2640487 (and (inv!61891 (c!721838 (dynLambda!20180 (toChars!10607 (transformation!7976 (rule!11110 (_1!25469 (v!41067 lt!1508621))))) (value!247852 (_1!25469 (v!41067 lt!1508621)))))) tp!1304471))))

(declare-fun result!312624 () Bool)

(assert (=> tb!256339 (= result!312624 (and (inv!61892 (dynLambda!20180 (toChars!10607 (transformation!7976 (rule!11110 (_1!25469 (v!41067 lt!1508621))))) (value!247852 (_1!25469 (v!41067 lt!1508621))))) e!2640487))))

(assert (= tb!256339 b!4251131))

(declare-fun m!4835887 () Bool)

(assert (=> b!4251131 m!4835887))

(declare-fun m!4835889 () Bool)

(assert (=> tb!256339 m!4835889))

(assert (=> d!1250099 t!352397))

(declare-fun b_and!337037 () Bool)

(assert (= b_and!337029 (and (=> t!352397 result!312624) b_and!337037)))

(declare-fun tb!256341 () Bool)

(declare-fun t!352399 () Bool)

(assert (=> (and b!4250974 (= (toChars!10607 (transformation!7976 (rule!11110 (h!52533 tokens!592)))) (toChars!10607 (transformation!7976 (rule!11110 (_1!25469 (v!41067 lt!1508621)))))) t!352399) tb!256341))

(declare-fun result!312626 () Bool)

(assert (= result!312626 result!312624))

(assert (=> d!1250099 t!352399))

(declare-fun b_and!337039 () Bool)

(assert (= b_and!337031 (and (=> t!352399 result!312626) b_and!337039)))

(declare-fun m!4835891 () Bool)

(assert (=> d!1250099 m!4835891))

(declare-fun m!4835893 () Bool)

(assert (=> d!1250099 m!4835893))

(assert (=> b!4250987 d!1250099))

(declare-fun b!4251133 () Bool)

(declare-fun e!2640488 () List!47236)

(assert (=> b!4251133 (= e!2640488 (Cons!47112 (h!52532 lt!1508619) (++!11985 (t!352377 lt!1508619) (_2!25469 (v!41067 lt!1508620)))))))

(declare-fun lt!1508668 () List!47236)

(declare-fun e!2640489 () Bool)

(declare-fun b!4251135 () Bool)

(assert (=> b!4251135 (= e!2640489 (or (not (= (_2!25469 (v!41067 lt!1508620)) Nil!47112)) (= lt!1508668 lt!1508619)))))

(declare-fun b!4251132 () Bool)

(assert (=> b!4251132 (= e!2640488 (_2!25469 (v!41067 lt!1508620)))))

(declare-fun b!4251134 () Bool)

(declare-fun res!1747609 () Bool)

(assert (=> b!4251134 (=> (not res!1747609) (not e!2640489))))

(assert (=> b!4251134 (= res!1747609 (= (size!34487 lt!1508668) (+ (size!34487 lt!1508619) (size!34487 (_2!25469 (v!41067 lt!1508620))))))))

(declare-fun d!1250101 () Bool)

(assert (=> d!1250101 e!2640489))

(declare-fun res!1747610 () Bool)

(assert (=> d!1250101 (=> (not res!1747610) (not e!2640489))))

(assert (=> d!1250101 (= res!1747610 (= (content!7404 lt!1508668) ((_ map or) (content!7404 lt!1508619) (content!7404 (_2!25469 (v!41067 lt!1508620))))))))

(assert (=> d!1250101 (= lt!1508668 e!2640488)))

(declare-fun c!721877 () Bool)

(assert (=> d!1250101 (= c!721877 ((_ is Nil!47112) lt!1508619))))

(assert (=> d!1250101 (= (++!11985 lt!1508619 (_2!25469 (v!41067 lt!1508620))) lt!1508668)))

(assert (= (and d!1250101 c!721877) b!4251132))

(assert (= (and d!1250101 (not c!721877)) b!4251133))

(assert (= (and d!1250101 res!1747610) b!4251134))

(assert (= (and b!4251134 res!1747609) b!4251135))

(declare-fun m!4835895 () Bool)

(assert (=> b!4251133 m!4835895))

(declare-fun m!4835897 () Bool)

(assert (=> b!4251134 m!4835897))

(declare-fun m!4835899 () Bool)

(assert (=> b!4251134 m!4835899))

(assert (=> b!4251134 m!4835685))

(declare-fun m!4835901 () Bool)

(assert (=> d!1250101 m!4835901))

(declare-fun m!4835903 () Bool)

(assert (=> d!1250101 m!4835903))

(declare-fun m!4835905 () Bool)

(assert (=> d!1250101 m!4835905))

(assert (=> b!4250976 d!1250101))

(declare-fun d!1250103 () Bool)

(assert (=> d!1250103 (= (list!16972 (charsOf!5316 (_1!25469 (v!41067 lt!1508620)))) (list!16974 (c!721838 (charsOf!5316 (_1!25469 (v!41067 lt!1508620))))))))

(declare-fun bs!598651 () Bool)

(assert (= bs!598651 d!1250103))

(declare-fun m!4835907 () Bool)

(assert (=> bs!598651 m!4835907))

(assert (=> b!4250976 d!1250103))

(declare-fun d!1250105 () Bool)

(declare-fun lt!1508669 () BalanceConc!27968)

(assert (=> d!1250105 (= (list!16972 lt!1508669) (originalCharacters!8320 (_1!25469 (v!41067 lt!1508620))))))

(assert (=> d!1250105 (= lt!1508669 (dynLambda!20180 (toChars!10607 (transformation!7976 (rule!11110 (_1!25469 (v!41067 lt!1508620))))) (value!247852 (_1!25469 (v!41067 lt!1508620)))))))

(assert (=> d!1250105 (= (charsOf!5316 (_1!25469 (v!41067 lt!1508620))) lt!1508669)))

(declare-fun b_lambda!125229 () Bool)

(assert (=> (not b_lambda!125229) (not d!1250105)))

(declare-fun tb!256343 () Bool)

(declare-fun t!352401 () Bool)

(assert (=> (and b!4250992 (= (toChars!10607 (transformation!7976 (h!52534 rules!2971))) (toChars!10607 (transformation!7976 (rule!11110 (_1!25469 (v!41067 lt!1508620)))))) t!352401) tb!256343))

(declare-fun b!4251136 () Bool)

(declare-fun e!2640490 () Bool)

(declare-fun tp!1304472 () Bool)

(assert (=> b!4251136 (= e!2640490 (and (inv!61891 (c!721838 (dynLambda!20180 (toChars!10607 (transformation!7976 (rule!11110 (_1!25469 (v!41067 lt!1508620))))) (value!247852 (_1!25469 (v!41067 lt!1508620)))))) tp!1304472))))

(declare-fun result!312628 () Bool)

(assert (=> tb!256343 (= result!312628 (and (inv!61892 (dynLambda!20180 (toChars!10607 (transformation!7976 (rule!11110 (_1!25469 (v!41067 lt!1508620))))) (value!247852 (_1!25469 (v!41067 lt!1508620))))) e!2640490))))

(assert (= tb!256343 b!4251136))

(declare-fun m!4835909 () Bool)

(assert (=> b!4251136 m!4835909))

(declare-fun m!4835911 () Bool)

(assert (=> tb!256343 m!4835911))

(assert (=> d!1250105 t!352401))

(declare-fun b_and!337041 () Bool)

(assert (= b_and!337037 (and (=> t!352401 result!312628) b_and!337041)))

(declare-fun t!352403 () Bool)

(declare-fun tb!256345 () Bool)

(assert (=> (and b!4250974 (= (toChars!10607 (transformation!7976 (rule!11110 (h!52533 tokens!592)))) (toChars!10607 (transformation!7976 (rule!11110 (_1!25469 (v!41067 lt!1508620)))))) t!352403) tb!256345))

(declare-fun result!312630 () Bool)

(assert (= result!312630 result!312628))

(assert (=> d!1250105 t!352403))

(declare-fun b_and!337043 () Bool)

(assert (= b_and!337039 (and (=> t!352403 result!312630) b_and!337043)))

(declare-fun m!4835913 () Bool)

(assert (=> d!1250105 m!4835913))

(declare-fun m!4835915 () Bool)

(assert (=> d!1250105 m!4835915))

(assert (=> b!4250976 d!1250105))

(declare-fun d!1250107 () Bool)

(assert (=> d!1250107 (= (isEmpty!27874 longerInput!62) ((_ is Nil!47112) longerInput!62))))

(assert (=> b!4250977 d!1250107))

(declare-fun b!4251137 () Bool)

(declare-fun e!2640493 () Bool)

(declare-fun e!2640492 () Bool)

(assert (=> b!4251137 (= e!2640493 e!2640492)))

(declare-fun res!1747611 () Bool)

(declare-fun lt!1508670 () tuple2!44672)

(assert (=> b!4251137 (= res!1747611 (< (size!34487 (_2!25470 lt!1508670)) (size!34487 longerInput!62)))))

(assert (=> b!4251137 (=> (not res!1747611) (not e!2640492))))

(declare-fun d!1250109 () Bool)

(assert (=> d!1250109 e!2640493))

(declare-fun c!721878 () Bool)

(assert (=> d!1250109 (= c!721878 (> (size!34489 (_1!25470 lt!1508670)) 0))))

(declare-fun e!2640491 () tuple2!44672)

(assert (=> d!1250109 (= lt!1508670 e!2640491)))

(declare-fun c!721879 () Bool)

(declare-fun lt!1508672 () Option!10110)

(assert (=> d!1250109 (= c!721879 ((_ is Some!10109) lt!1508672))))

(assert (=> d!1250109 (= lt!1508672 (maxPrefix!4527 thiss!21641 rules!2971 longerInput!62))))

(assert (=> d!1250109 (= (lexList!2077 thiss!21641 rules!2971 longerInput!62) lt!1508670)))

(declare-fun b!4251138 () Bool)

(declare-fun lt!1508671 () tuple2!44672)

(assert (=> b!4251138 (= e!2640491 (tuple2!44673 (Cons!47113 (_1!25469 (v!41067 lt!1508672)) (_1!25470 lt!1508671)) (_2!25470 lt!1508671)))))

(assert (=> b!4251138 (= lt!1508671 (lexList!2077 thiss!21641 rules!2971 (_2!25469 (v!41067 lt!1508672))))))

(declare-fun b!4251139 () Bool)

(assert (=> b!4251139 (= e!2640491 (tuple2!44673 Nil!47113 longerInput!62))))

(declare-fun b!4251140 () Bool)

(assert (=> b!4251140 (= e!2640492 (not (isEmpty!27878 (_1!25470 lt!1508670))))))

(declare-fun b!4251141 () Bool)

(assert (=> b!4251141 (= e!2640493 (= (_2!25470 lt!1508670) longerInput!62))))

(assert (= (and d!1250109 c!721879) b!4251138))

(assert (= (and d!1250109 (not c!721879)) b!4251139))

(assert (= (and d!1250109 c!721878) b!4251137))

(assert (= (and d!1250109 (not c!721878)) b!4251141))

(assert (= (and b!4251137 res!1747611) b!4251140))

(declare-fun m!4835917 () Bool)

(assert (=> b!4251137 m!4835917))

(assert (=> b!4251137 m!4835689))

(declare-fun m!4835919 () Bool)

(assert (=> d!1250109 m!4835919))

(assert (=> d!1250109 m!4835721))

(declare-fun m!4835921 () Bool)

(assert (=> b!4251138 m!4835921))

(declare-fun m!4835923 () Bool)

(assert (=> b!4251140 m!4835923))

(assert (=> b!4250975 d!1250109))

(declare-fun b!4251251 () Bool)

(declare-fun res!1747654 () Bool)

(declare-fun e!2640555 () Bool)

(assert (=> b!4251251 (=> (not res!1747654) (not e!2640555))))

(declare-fun lt!1508709 () Option!10110)

(declare-fun matchR!6471 (Regex!12881 List!47236) Bool)

(declare-fun get!15294 (Option!10110) tuple2!44670)

(assert (=> b!4251251 (= res!1747654 (matchR!6471 (regex!7976 (rule!11110 (_1!25469 (get!15294 lt!1508709)))) (list!16972 (charsOf!5316 (_1!25469 (get!15294 lt!1508709))))))))

(declare-fun d!1250111 () Bool)

(declare-fun e!2640554 () Bool)

(assert (=> d!1250111 e!2640554))

(declare-fun res!1747657 () Bool)

(assert (=> d!1250111 (=> res!1747657 e!2640554)))

(declare-fun isEmpty!27879 (Option!10110) Bool)

(assert (=> d!1250111 (= res!1747657 (isEmpty!27879 lt!1508709))))

(declare-fun e!2640556 () Option!10110)

(assert (=> d!1250111 (= lt!1508709 e!2640556)))

(declare-fun c!721888 () Bool)

(assert (=> d!1250111 (= c!721888 (and ((_ is Cons!47114) rules!2971) ((_ is Nil!47114) (t!352379 rules!2971))))))

(declare-datatypes ((Unit!66075 0))(
  ( (Unit!66076) )
))
(declare-fun lt!1508708 () Unit!66075)

(declare-fun lt!1508707 () Unit!66075)

(assert (=> d!1250111 (= lt!1508708 lt!1508707)))

(declare-fun isPrefix!4749 (List!47236 List!47236) Bool)

(assert (=> d!1250111 (isPrefix!4749 shorterInput!62 shorterInput!62)))

(declare-fun lemmaIsPrefixRefl!3146 (List!47236 List!47236) Unit!66075)

(assert (=> d!1250111 (= lt!1508707 (lemmaIsPrefixRefl!3146 shorterInput!62 shorterInput!62))))

(declare-fun rulesValidInductive!3000 (LexerInterface!7571 List!47238) Bool)

(assert (=> d!1250111 (rulesValidInductive!3000 thiss!21641 rules!2971)))

(assert (=> d!1250111 (= (maxPrefix!4527 thiss!21641 rules!2971 shorterInput!62) lt!1508709)))

(declare-fun b!4251252 () Bool)

(declare-fun res!1747660 () Bool)

(assert (=> b!4251252 (=> (not res!1747660) (not e!2640555))))

(assert (=> b!4251252 (= res!1747660 (< (size!34487 (_2!25469 (get!15294 lt!1508709))) (size!34487 shorterInput!62)))))

(declare-fun b!4251253 () Bool)

(declare-fun res!1747655 () Bool)

(assert (=> b!4251253 (=> (not res!1747655) (not e!2640555))))

(assert (=> b!4251253 (= res!1747655 (= (list!16972 (charsOf!5316 (_1!25469 (get!15294 lt!1508709)))) (originalCharacters!8320 (_1!25469 (get!15294 lt!1508709)))))))

(declare-fun b!4251254 () Bool)

(assert (=> b!4251254 (= e!2640554 e!2640555)))

(declare-fun res!1747658 () Bool)

(assert (=> b!4251254 (=> (not res!1747658) (not e!2640555))))

(declare-fun isDefined!7464 (Option!10110) Bool)

(assert (=> b!4251254 (= res!1747658 (isDefined!7464 lt!1508709))))

(declare-fun b!4251255 () Bool)

(declare-fun res!1747656 () Bool)

(assert (=> b!4251255 (=> (not res!1747656) (not e!2640555))))

(declare-fun apply!10776 (TokenValueInjection!15840 BalanceConc!27968) TokenValue!8206)

(declare-fun seqFromList!5836 (List!47236) BalanceConc!27968)

(assert (=> b!4251255 (= res!1747656 (= (value!247852 (_1!25469 (get!15294 lt!1508709))) (apply!10776 (transformation!7976 (rule!11110 (_1!25469 (get!15294 lt!1508709)))) (seqFromList!5836 (originalCharacters!8320 (_1!25469 (get!15294 lt!1508709)))))))))

(declare-fun b!4251256 () Bool)

(declare-fun contains!9761 (List!47238 Rule!15752) Bool)

(assert (=> b!4251256 (= e!2640555 (contains!9761 rules!2971 (rule!11110 (_1!25469 (get!15294 lt!1508709)))))))

(declare-fun b!4251257 () Bool)

(declare-fun lt!1508705 () Option!10110)

(declare-fun lt!1508706 () Option!10110)

(assert (=> b!4251257 (= e!2640556 (ite (and ((_ is None!10109) lt!1508705) ((_ is None!10109) lt!1508706)) None!10109 (ite ((_ is None!10109) lt!1508706) lt!1508705 (ite ((_ is None!10109) lt!1508705) lt!1508706 (ite (>= (size!34486 (_1!25469 (v!41067 lt!1508705))) (size!34486 (_1!25469 (v!41067 lt!1508706)))) lt!1508705 lt!1508706)))))))

(declare-fun call!293975 () Option!10110)

(assert (=> b!4251257 (= lt!1508705 call!293975)))

(assert (=> b!4251257 (= lt!1508706 (maxPrefix!4527 thiss!21641 (t!352379 rules!2971) shorterInput!62))))

(declare-fun bm!293970 () Bool)

(declare-fun maxPrefixOneRule!3474 (LexerInterface!7571 Rule!15752 List!47236) Option!10110)

(assert (=> bm!293970 (= call!293975 (maxPrefixOneRule!3474 thiss!21641 (h!52534 rules!2971) shorterInput!62))))

(declare-fun b!4251258 () Bool)

(assert (=> b!4251258 (= e!2640556 call!293975)))

(declare-fun b!4251259 () Bool)

(declare-fun res!1747659 () Bool)

(assert (=> b!4251259 (=> (not res!1747659) (not e!2640555))))

(assert (=> b!4251259 (= res!1747659 (= (++!11985 (list!16972 (charsOf!5316 (_1!25469 (get!15294 lt!1508709)))) (_2!25469 (get!15294 lt!1508709))) shorterInput!62))))

(assert (= (and d!1250111 c!721888) b!4251258))

(assert (= (and d!1250111 (not c!721888)) b!4251257))

(assert (= (or b!4251258 b!4251257) bm!293970))

(assert (= (and d!1250111 (not res!1747657)) b!4251254))

(assert (= (and b!4251254 res!1747658) b!4251253))

(assert (= (and b!4251253 res!1747655) b!4251252))

(assert (= (and b!4251252 res!1747660) b!4251259))

(assert (= (and b!4251259 res!1747659) b!4251255))

(assert (= (and b!4251255 res!1747656) b!4251251))

(assert (= (and b!4251251 res!1747654) b!4251256))

(declare-fun m!4836003 () Bool)

(assert (=> b!4251255 m!4836003))

(declare-fun m!4836005 () Bool)

(assert (=> b!4251255 m!4836005))

(assert (=> b!4251255 m!4836005))

(declare-fun m!4836007 () Bool)

(assert (=> b!4251255 m!4836007))

(assert (=> b!4251259 m!4836003))

(declare-fun m!4836009 () Bool)

(assert (=> b!4251259 m!4836009))

(assert (=> b!4251259 m!4836009))

(declare-fun m!4836011 () Bool)

(assert (=> b!4251259 m!4836011))

(assert (=> b!4251259 m!4836011))

(declare-fun m!4836013 () Bool)

(assert (=> b!4251259 m!4836013))

(declare-fun m!4836015 () Bool)

(assert (=> bm!293970 m!4836015))

(declare-fun m!4836017 () Bool)

(assert (=> b!4251257 m!4836017))

(assert (=> b!4251251 m!4836003))

(assert (=> b!4251251 m!4836009))

(assert (=> b!4251251 m!4836009))

(assert (=> b!4251251 m!4836011))

(assert (=> b!4251251 m!4836011))

(declare-fun m!4836019 () Bool)

(assert (=> b!4251251 m!4836019))

(assert (=> b!4251256 m!4836003))

(declare-fun m!4836021 () Bool)

(assert (=> b!4251256 m!4836021))

(declare-fun m!4836023 () Bool)

(assert (=> b!4251254 m!4836023))

(assert (=> b!4251253 m!4836003))

(assert (=> b!4251253 m!4836009))

(assert (=> b!4251253 m!4836009))

(assert (=> b!4251253 m!4836011))

(assert (=> b!4251252 m!4836003))

(declare-fun m!4836025 () Bool)

(assert (=> b!4251252 m!4836025))

(assert (=> b!4251252 m!4835691))

(declare-fun m!4836027 () Bool)

(assert (=> d!1250111 m!4836027))

(declare-fun m!4836029 () Bool)

(assert (=> d!1250111 m!4836029))

(declare-fun m!4836031 () Bool)

(assert (=> d!1250111 m!4836031))

(declare-fun m!4836033 () Bool)

(assert (=> d!1250111 m!4836033))

(assert (=> b!4250986 d!1250111))

(declare-fun b!4251260 () Bool)

(declare-fun res!1747661 () Bool)

(declare-fun e!2640558 () Bool)

(assert (=> b!4251260 (=> (not res!1747661) (not e!2640558))))

(declare-fun lt!1508714 () Option!10110)

(assert (=> b!4251260 (= res!1747661 (matchR!6471 (regex!7976 (rule!11110 (_1!25469 (get!15294 lt!1508714)))) (list!16972 (charsOf!5316 (_1!25469 (get!15294 lt!1508714))))))))

(declare-fun d!1250119 () Bool)

(declare-fun e!2640557 () Bool)

(assert (=> d!1250119 e!2640557))

(declare-fun res!1747664 () Bool)

(assert (=> d!1250119 (=> res!1747664 e!2640557)))

(assert (=> d!1250119 (= res!1747664 (isEmpty!27879 lt!1508714))))

(declare-fun e!2640559 () Option!10110)

(assert (=> d!1250119 (= lt!1508714 e!2640559)))

(declare-fun c!721889 () Bool)

(assert (=> d!1250119 (= c!721889 (and ((_ is Cons!47114) rules!2971) ((_ is Nil!47114) (t!352379 rules!2971))))))

(declare-fun lt!1508713 () Unit!66075)

(declare-fun lt!1508712 () Unit!66075)

(assert (=> d!1250119 (= lt!1508713 lt!1508712)))

(assert (=> d!1250119 (isPrefix!4749 longerInput!62 longerInput!62)))

(assert (=> d!1250119 (= lt!1508712 (lemmaIsPrefixRefl!3146 longerInput!62 longerInput!62))))

(assert (=> d!1250119 (rulesValidInductive!3000 thiss!21641 rules!2971)))

(assert (=> d!1250119 (= (maxPrefix!4527 thiss!21641 rules!2971 longerInput!62) lt!1508714)))

(declare-fun b!4251261 () Bool)

(declare-fun res!1747667 () Bool)

(assert (=> b!4251261 (=> (not res!1747667) (not e!2640558))))

(assert (=> b!4251261 (= res!1747667 (< (size!34487 (_2!25469 (get!15294 lt!1508714))) (size!34487 longerInput!62)))))

(declare-fun b!4251262 () Bool)

(declare-fun res!1747662 () Bool)

(assert (=> b!4251262 (=> (not res!1747662) (not e!2640558))))

(assert (=> b!4251262 (= res!1747662 (= (list!16972 (charsOf!5316 (_1!25469 (get!15294 lt!1508714)))) (originalCharacters!8320 (_1!25469 (get!15294 lt!1508714)))))))

(declare-fun b!4251263 () Bool)

(assert (=> b!4251263 (= e!2640557 e!2640558)))

(declare-fun res!1747665 () Bool)

(assert (=> b!4251263 (=> (not res!1747665) (not e!2640558))))

(assert (=> b!4251263 (= res!1747665 (isDefined!7464 lt!1508714))))

(declare-fun b!4251264 () Bool)

(declare-fun res!1747663 () Bool)

(assert (=> b!4251264 (=> (not res!1747663) (not e!2640558))))

(assert (=> b!4251264 (= res!1747663 (= (value!247852 (_1!25469 (get!15294 lt!1508714))) (apply!10776 (transformation!7976 (rule!11110 (_1!25469 (get!15294 lt!1508714)))) (seqFromList!5836 (originalCharacters!8320 (_1!25469 (get!15294 lt!1508714)))))))))

(declare-fun b!4251265 () Bool)

(assert (=> b!4251265 (= e!2640558 (contains!9761 rules!2971 (rule!11110 (_1!25469 (get!15294 lt!1508714)))))))

(declare-fun b!4251266 () Bool)

(declare-fun lt!1508710 () Option!10110)

(declare-fun lt!1508711 () Option!10110)

(assert (=> b!4251266 (= e!2640559 (ite (and ((_ is None!10109) lt!1508710) ((_ is None!10109) lt!1508711)) None!10109 (ite ((_ is None!10109) lt!1508711) lt!1508710 (ite ((_ is None!10109) lt!1508710) lt!1508711 (ite (>= (size!34486 (_1!25469 (v!41067 lt!1508710))) (size!34486 (_1!25469 (v!41067 lt!1508711)))) lt!1508710 lt!1508711)))))))

(declare-fun call!293976 () Option!10110)

(assert (=> b!4251266 (= lt!1508710 call!293976)))

(assert (=> b!4251266 (= lt!1508711 (maxPrefix!4527 thiss!21641 (t!352379 rules!2971) longerInput!62))))

(declare-fun bm!293971 () Bool)

(assert (=> bm!293971 (= call!293976 (maxPrefixOneRule!3474 thiss!21641 (h!52534 rules!2971) longerInput!62))))

(declare-fun b!4251267 () Bool)

(assert (=> b!4251267 (= e!2640559 call!293976)))

(declare-fun b!4251268 () Bool)

(declare-fun res!1747666 () Bool)

(assert (=> b!4251268 (=> (not res!1747666) (not e!2640558))))

(assert (=> b!4251268 (= res!1747666 (= (++!11985 (list!16972 (charsOf!5316 (_1!25469 (get!15294 lt!1508714)))) (_2!25469 (get!15294 lt!1508714))) longerInput!62))))

(assert (= (and d!1250119 c!721889) b!4251267))

(assert (= (and d!1250119 (not c!721889)) b!4251266))

(assert (= (or b!4251267 b!4251266) bm!293971))

(assert (= (and d!1250119 (not res!1747664)) b!4251263))

(assert (= (and b!4251263 res!1747665) b!4251262))

(assert (= (and b!4251262 res!1747662) b!4251261))

(assert (= (and b!4251261 res!1747667) b!4251268))

(assert (= (and b!4251268 res!1747666) b!4251264))

(assert (= (and b!4251264 res!1747663) b!4251260))

(assert (= (and b!4251260 res!1747661) b!4251265))

(declare-fun m!4836035 () Bool)

(assert (=> b!4251264 m!4836035))

(declare-fun m!4836037 () Bool)

(assert (=> b!4251264 m!4836037))

(assert (=> b!4251264 m!4836037))

(declare-fun m!4836039 () Bool)

(assert (=> b!4251264 m!4836039))

(assert (=> b!4251268 m!4836035))

(declare-fun m!4836041 () Bool)

(assert (=> b!4251268 m!4836041))

(assert (=> b!4251268 m!4836041))

(declare-fun m!4836043 () Bool)

(assert (=> b!4251268 m!4836043))

(assert (=> b!4251268 m!4836043))

(declare-fun m!4836045 () Bool)

(assert (=> b!4251268 m!4836045))

(declare-fun m!4836047 () Bool)

(assert (=> bm!293971 m!4836047))

(declare-fun m!4836049 () Bool)

(assert (=> b!4251266 m!4836049))

(assert (=> b!4251260 m!4836035))

(assert (=> b!4251260 m!4836041))

(assert (=> b!4251260 m!4836041))

(assert (=> b!4251260 m!4836043))

(assert (=> b!4251260 m!4836043))

(declare-fun m!4836051 () Bool)

(assert (=> b!4251260 m!4836051))

(assert (=> b!4251265 m!4836035))

(declare-fun m!4836053 () Bool)

(assert (=> b!4251265 m!4836053))

(declare-fun m!4836055 () Bool)

(assert (=> b!4251263 m!4836055))

(assert (=> b!4251262 m!4836035))

(assert (=> b!4251262 m!4836041))

(assert (=> b!4251262 m!4836041))

(assert (=> b!4251262 m!4836043))

(assert (=> b!4251261 m!4836035))

(declare-fun m!4836057 () Bool)

(assert (=> b!4251261 m!4836057))

(assert (=> b!4251261 m!4835689))

(declare-fun m!4836059 () Bool)

(assert (=> d!1250119 m!4836059))

(declare-fun m!4836061 () Bool)

(assert (=> d!1250119 m!4836061))

(declare-fun m!4836063 () Bool)

(assert (=> d!1250119 m!4836063))

(assert (=> d!1250119 m!4836033))

(assert (=> b!4250986 d!1250119))

(declare-fun b!4251279 () Bool)

(declare-fun e!2640566 () Bool)

(declare-fun inv!16 (TokenValue!8206) Bool)

(assert (=> b!4251279 (= e!2640566 (inv!16 (value!247852 (h!52533 tokens!592))))))

(declare-fun b!4251280 () Bool)

(declare-fun e!2640567 () Bool)

(declare-fun inv!17 (TokenValue!8206) Bool)

(assert (=> b!4251280 (= e!2640567 (inv!17 (value!247852 (h!52533 tokens!592))))))

(declare-fun b!4251281 () Bool)

(declare-fun res!1747670 () Bool)

(declare-fun e!2640568 () Bool)

(assert (=> b!4251281 (=> res!1747670 e!2640568)))

(assert (=> b!4251281 (= res!1747670 (not ((_ is IntegerValue!24620) (value!247852 (h!52533 tokens!592)))))))

(assert (=> b!4251281 (= e!2640567 e!2640568)))

(declare-fun b!4251282 () Bool)

(declare-fun inv!15 (TokenValue!8206) Bool)

(assert (=> b!4251282 (= e!2640568 (inv!15 (value!247852 (h!52533 tokens!592))))))

(declare-fun d!1250121 () Bool)

(declare-fun c!721895 () Bool)

(assert (=> d!1250121 (= c!721895 ((_ is IntegerValue!24618) (value!247852 (h!52533 tokens!592))))))

(assert (=> d!1250121 (= (inv!21 (value!247852 (h!52533 tokens!592))) e!2640566)))

(declare-fun b!4251283 () Bool)

(assert (=> b!4251283 (= e!2640566 e!2640567)))

(declare-fun c!721894 () Bool)

(assert (=> b!4251283 (= c!721894 ((_ is IntegerValue!24619) (value!247852 (h!52533 tokens!592))))))

(assert (= (and d!1250121 c!721895) b!4251279))

(assert (= (and d!1250121 (not c!721895)) b!4251283))

(assert (= (and b!4251283 c!721894) b!4251280))

(assert (= (and b!4251283 (not c!721894)) b!4251281))

(assert (= (and b!4251281 (not res!1747670)) b!4251282))

(declare-fun m!4836065 () Bool)

(assert (=> b!4251279 m!4836065))

(declare-fun m!4836067 () Bool)

(assert (=> b!4251280 m!4836067))

(declare-fun m!4836069 () Bool)

(assert (=> b!4251282 m!4836069))

(assert (=> b!4250984 d!1250121))

(declare-fun b!4251288 () Bool)

(declare-fun e!2640571 () Bool)

(declare-fun tp!1304528 () Bool)

(assert (=> b!4251288 (= e!2640571 (and tp_is_empty!22753 tp!1304528))))

(assert (=> b!4250983 (= tp!1304460 e!2640571)))

(assert (= (and b!4250983 ((_ is Cons!47112) (t!352377 shorterInput!62))) b!4251288))

(declare-fun b!4251299 () Bool)

(declare-fun b_free!126403 () Bool)

(declare-fun b_next!127107 () Bool)

(assert (=> b!4251299 (= b_free!126403 (not b_next!127107))))

(declare-fun tp!1304539 () Bool)

(declare-fun b_and!337053 () Bool)

(assert (=> b!4251299 (= tp!1304539 b_and!337053)))

(declare-fun b_free!126405 () Bool)

(declare-fun b_next!127109 () Bool)

(assert (=> b!4251299 (= b_free!126405 (not b_next!127109))))

(declare-fun t!352417 () Bool)

(declare-fun tb!256359 () Bool)

(assert (=> (and b!4251299 (= (toChars!10607 (transformation!7976 (h!52534 (t!352379 rules!2971)))) (toChars!10607 (transformation!7976 (rule!11110 (h!52533 tokens!592))))) t!352417) tb!256359))

(declare-fun result!312656 () Bool)

(assert (= result!312656 result!312610))

(assert (=> b!4251076 t!352417))

(declare-fun t!352419 () Bool)

(declare-fun tb!256361 () Bool)

(assert (=> (and b!4251299 (= (toChars!10607 (transformation!7976 (h!52534 (t!352379 rules!2971)))) (toChars!10607 (transformation!7976 (rule!11110 (_1!25469 (v!41067 lt!1508621)))))) t!352419) tb!256361))

(declare-fun result!312658 () Bool)

(assert (= result!312658 result!312624))

(assert (=> d!1250099 t!352419))

(declare-fun tb!256363 () Bool)

(declare-fun t!352421 () Bool)

(assert (=> (and b!4251299 (= (toChars!10607 (transformation!7976 (h!52534 (t!352379 rules!2971)))) (toChars!10607 (transformation!7976 (rule!11110 (_1!25469 (v!41067 lt!1508620)))))) t!352421) tb!256363))

(declare-fun result!312660 () Bool)

(assert (= result!312660 result!312628))

(assert (=> d!1250105 t!352421))

(declare-fun tp!1304537 () Bool)

(declare-fun b_and!337055 () Bool)

(assert (=> b!4251299 (= tp!1304537 (and (=> t!352417 result!312656) (=> t!352419 result!312658) (=> t!352421 result!312660) b_and!337055))))

(declare-fun e!2640581 () Bool)

(assert (=> b!4251299 (= e!2640581 (and tp!1304539 tp!1304537))))

(declare-fun e!2640580 () Bool)

(declare-fun b!4251298 () Bool)

(declare-fun tp!1304540 () Bool)

(assert (=> b!4251298 (= e!2640580 (and tp!1304540 (inv!61884 (tag!8840 (h!52534 (t!352379 rules!2971)))) (inv!61887 (transformation!7976 (h!52534 (t!352379 rules!2971)))) e!2640581))))

(declare-fun b!4251297 () Bool)

(declare-fun e!2640582 () Bool)

(declare-fun tp!1304538 () Bool)

(assert (=> b!4251297 (= e!2640582 (and e!2640580 tp!1304538))))

(assert (=> b!4250988 (= tp!1304458 e!2640582)))

(assert (= b!4251298 b!4251299))

(assert (= b!4251297 b!4251298))

(assert (= (and b!4250988 ((_ is Cons!47114) (t!352379 rules!2971))) b!4251297))

(declare-fun m!4836071 () Bool)

(assert (=> b!4251298 m!4836071))

(declare-fun m!4836073 () Bool)

(assert (=> b!4251298 m!4836073))

(declare-fun b!4251312 () Bool)

(declare-fun e!2640586 () Bool)

(declare-fun tp!1304552 () Bool)

(assert (=> b!4251312 (= e!2640586 tp!1304552)))

(declare-fun b!4251310 () Bool)

(assert (=> b!4251310 (= e!2640586 tp_is_empty!22753)))

(declare-fun b!4251313 () Bool)

(declare-fun tp!1304554 () Bool)

(declare-fun tp!1304551 () Bool)

(assert (=> b!4251313 (= e!2640586 (and tp!1304554 tp!1304551))))

(assert (=> b!4250994 (= tp!1304459 e!2640586)))

(declare-fun b!4251311 () Bool)

(declare-fun tp!1304553 () Bool)

(declare-fun tp!1304555 () Bool)

(assert (=> b!4251311 (= e!2640586 (and tp!1304553 tp!1304555))))

(assert (= (and b!4250994 ((_ is ElementMatch!12881) (regex!7976 (rule!11110 (h!52533 tokens!592))))) b!4251310))

(assert (= (and b!4250994 ((_ is Concat!21088) (regex!7976 (rule!11110 (h!52533 tokens!592))))) b!4251311))

(assert (= (and b!4250994 ((_ is Star!12881) (regex!7976 (rule!11110 (h!52533 tokens!592))))) b!4251312))

(assert (= (and b!4250994 ((_ is Union!12881) (regex!7976 (rule!11110 (h!52533 tokens!592))))) b!4251313))

(declare-fun b!4251316 () Bool)

(declare-fun e!2640587 () Bool)

(declare-fun tp!1304557 () Bool)

(assert (=> b!4251316 (= e!2640587 tp!1304557)))

(declare-fun b!4251314 () Bool)

(assert (=> b!4251314 (= e!2640587 tp_is_empty!22753)))

(declare-fun b!4251317 () Bool)

(declare-fun tp!1304559 () Bool)

(declare-fun tp!1304556 () Bool)

(assert (=> b!4251317 (= e!2640587 (and tp!1304559 tp!1304556))))

(assert (=> b!4250978 (= tp!1304457 e!2640587)))

(declare-fun b!4251315 () Bool)

(declare-fun tp!1304558 () Bool)

(declare-fun tp!1304560 () Bool)

(assert (=> b!4251315 (= e!2640587 (and tp!1304558 tp!1304560))))

(assert (= (and b!4250978 ((_ is ElementMatch!12881) (regex!7976 (h!52534 rules!2971)))) b!4251314))

(assert (= (and b!4250978 ((_ is Concat!21088) (regex!7976 (h!52534 rules!2971)))) b!4251315))

(assert (= (and b!4250978 ((_ is Star!12881) (regex!7976 (h!52534 rules!2971)))) b!4251316))

(assert (= (and b!4250978 ((_ is Union!12881) (regex!7976 (h!52534 rules!2971)))) b!4251317))

(declare-fun b!4251318 () Bool)

(declare-fun e!2640588 () Bool)

(declare-fun tp!1304561 () Bool)

(assert (=> b!4251318 (= e!2640588 (and tp_is_empty!22753 tp!1304561))))

(assert (=> b!4250980 (= tp!1304453 e!2640588)))

(assert (= (and b!4250980 ((_ is Cons!47112) (t!352377 suffix!1284))) b!4251318))

(declare-fun b!4251332 () Bool)

(declare-fun b_free!126407 () Bool)

(declare-fun b_next!127111 () Bool)

(assert (=> b!4251332 (= b_free!126407 (not b_next!127111))))

(declare-fun tp!1304572 () Bool)

(declare-fun b_and!337057 () Bool)

(assert (=> b!4251332 (= tp!1304572 b_and!337057)))

(declare-fun b_free!126409 () Bool)

(declare-fun b_next!127113 () Bool)

(assert (=> b!4251332 (= b_free!126409 (not b_next!127113))))

(declare-fun t!352424 () Bool)

(declare-fun tb!256365 () Bool)

(assert (=> (and b!4251332 (= (toChars!10607 (transformation!7976 (rule!11110 (h!52533 (t!352378 tokens!592))))) (toChars!10607 (transformation!7976 (rule!11110 (h!52533 tokens!592))))) t!352424) tb!256365))

(declare-fun result!312666 () Bool)

(assert (= result!312666 result!312610))

(assert (=> b!4251076 t!352424))

(declare-fun t!352426 () Bool)

(declare-fun tb!256367 () Bool)

(assert (=> (and b!4251332 (= (toChars!10607 (transformation!7976 (rule!11110 (h!52533 (t!352378 tokens!592))))) (toChars!10607 (transformation!7976 (rule!11110 (_1!25469 (v!41067 lt!1508621)))))) t!352426) tb!256367))

(declare-fun result!312668 () Bool)

(assert (= result!312668 result!312624))

(assert (=> d!1250099 t!352426))

(declare-fun tb!256369 () Bool)

(declare-fun t!352428 () Bool)

(assert (=> (and b!4251332 (= (toChars!10607 (transformation!7976 (rule!11110 (h!52533 (t!352378 tokens!592))))) (toChars!10607 (transformation!7976 (rule!11110 (_1!25469 (v!41067 lt!1508620)))))) t!352428) tb!256369))

(declare-fun result!312670 () Bool)

(assert (= result!312670 result!312628))

(assert (=> d!1250105 t!352428))

(declare-fun b_and!337059 () Bool)

(declare-fun tp!1304574 () Bool)

(assert (=> b!4251332 (= tp!1304574 (and (=> t!352424 result!312666) (=> t!352426 result!312668) (=> t!352428 result!312670) b_and!337059))))

(declare-fun e!2640602 () Bool)

(assert (=> b!4251332 (= e!2640602 (and tp!1304572 tp!1304574))))

(declare-fun e!2640603 () Bool)

(declare-fun tp!1304575 () Bool)

(declare-fun b!4251331 () Bool)

(assert (=> b!4251331 (= e!2640603 (and tp!1304575 (inv!61884 (tag!8840 (rule!11110 (h!52533 (t!352378 tokens!592))))) (inv!61887 (transformation!7976 (rule!11110 (h!52533 (t!352378 tokens!592))))) e!2640602))))

(declare-fun e!2640601 () Bool)

(declare-fun b!4251329 () Bool)

(declare-fun e!2640605 () Bool)

(declare-fun tp!1304576 () Bool)

(assert (=> b!4251329 (= e!2640601 (and (inv!61888 (h!52533 (t!352378 tokens!592))) e!2640605 tp!1304576))))

(declare-fun tp!1304573 () Bool)

(declare-fun b!4251330 () Bool)

(assert (=> b!4251330 (= e!2640605 (and (inv!21 (value!247852 (h!52533 (t!352378 tokens!592)))) e!2640603 tp!1304573))))

(assert (=> b!4250979 (= tp!1304462 e!2640601)))

(assert (= b!4251331 b!4251332))

(assert (= b!4251330 b!4251331))

(assert (= b!4251329 b!4251330))

(assert (= (and b!4250979 ((_ is Cons!47113) (t!352378 tokens!592))) b!4251329))

(declare-fun m!4836075 () Bool)

(assert (=> b!4251331 m!4836075))

(declare-fun m!4836077 () Bool)

(assert (=> b!4251331 m!4836077))

(declare-fun m!4836079 () Bool)

(assert (=> b!4251329 m!4836079))

(declare-fun m!4836081 () Bool)

(assert (=> b!4251330 m!4836081))

(declare-fun b!4251333 () Bool)

(declare-fun e!2640607 () Bool)

(declare-fun tp!1304577 () Bool)

(assert (=> b!4251333 (= e!2640607 (and tp_is_empty!22753 tp!1304577))))

(assert (=> b!4250984 (= tp!1304451 e!2640607)))

(assert (= (and b!4250984 ((_ is Cons!47112) (originalCharacters!8320 (h!52533 tokens!592)))) b!4251333))

(declare-fun b!4251334 () Bool)

(declare-fun e!2640608 () Bool)

(declare-fun tp!1304578 () Bool)

(assert (=> b!4251334 (= e!2640608 (and tp_is_empty!22753 tp!1304578))))

(assert (=> b!4250990 (= tp!1304455 e!2640608)))

(assert (= (and b!4250990 ((_ is Cons!47112) (t!352377 longerInput!62))) b!4251334))

(declare-fun b_lambda!125233 () Bool)

(assert (= b_lambda!125221 (or (and b!4250992 b_free!126389 (= (toChars!10607 (transformation!7976 (h!52534 rules!2971))) (toChars!10607 (transformation!7976 (rule!11110 (h!52533 tokens!592)))))) (and b!4250974 b_free!126393) (and b!4251299 b_free!126405 (= (toChars!10607 (transformation!7976 (h!52534 (t!352379 rules!2971)))) (toChars!10607 (transformation!7976 (rule!11110 (h!52533 tokens!592)))))) (and b!4251332 b_free!126409 (= (toChars!10607 (transformation!7976 (rule!11110 (h!52533 (t!352378 tokens!592))))) (toChars!10607 (transformation!7976 (rule!11110 (h!52533 tokens!592)))))) b_lambda!125233)))

(check-sat (not b!4251331) b_and!337017 (not b_next!127097) (not b!4251048) (not d!1250111) (not b!4251015) (not tb!256339) (not b!4251261) (not b!4251256) (not b!4251051) (not b!4251316) b_and!337055 (not b!4251251) (not d!1250027) (not b_next!127107) (not b!4251298) (not bm!293970) (not d!1250097) (not d!1250103) (not b!4251077) (not b!4251266) b_and!337059 (not tb!256327) (not b!4251264) (not d!1250039) (not b_next!127113) (not b!4251140) (not b!4251138) (not b!4251136) (not b!4251282) (not d!1250059) (not b!4251280) (not b!4250997) (not b!4251093) (not b_next!127111) (not d!1250105) (not b_next!127091) (not b!4251017) tp_is_empty!22753 (not b!4251260) b_and!337013 (not b!4251257) (not d!1250079) (not b!4251255) (not b_next!127093) (not b!4251265) (not b!4251131) (not d!1250071) (not b!4251076) (not b!4251127) (not b!4251268) (not b!4251083) (not b!4251259) (not b!4251263) (not b!4251254) (not b_lambda!125233) (not d!1250109) (not b!4251134) (not b!4251013) (not b!4251133) (not bm!293971) b_and!337057 (not b!4251094) b_and!337043 (not b!4251312) (not b!4251253) (not b!4251311) (not b!4251297) (not d!1250077) (not b_next!127095) (not b_next!127109) (not b!4251128) (not tb!256343) b_and!337053 b_and!337041 (not b!4251049) (not b!4251329) (not d!1250119) (not b!4251313) (not b!4251011) (not b!4251330) (not b!4251318) (not b!4251279) (not d!1250101) (not b_lambda!125229) (not b!4251288) (not b!4251334) (not b!4251315) (not b_lambda!125227) (not b!4251317) (not b!4251252) (not b!4251137) (not b!4251262) (not d!1250099) (not b!4251333))
(check-sat b_and!337055 (not b_next!127107) b_and!337059 b_and!337017 (not b_next!127097) (not b_next!127113) b_and!337013 (not b_next!127093) b_and!337057 b_and!337043 (not b_next!127111) (not b_next!127091) (not b_next!127095) (not b_next!127109) b_and!337041 b_and!337053)
