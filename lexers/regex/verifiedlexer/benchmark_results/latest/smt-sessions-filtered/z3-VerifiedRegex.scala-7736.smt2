; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!406562 () Bool)

(assert start!406562)

(declare-fun b!4247023 () Bool)

(declare-fun b_free!126115 () Bool)

(declare-fun b_next!126819 () Bool)

(assert (=> b!4247023 (= b_free!126115 (not b_next!126819))))

(declare-fun tp!1302804 () Bool)

(declare-fun b_and!336485 () Bool)

(assert (=> b!4247023 (= tp!1302804 b_and!336485)))

(declare-fun b_free!126117 () Bool)

(declare-fun b_next!126821 () Bool)

(assert (=> b!4247023 (= b_free!126117 (not b_next!126821))))

(declare-fun tp!1302802 () Bool)

(declare-fun b_and!336487 () Bool)

(assert (=> b!4247023 (= tp!1302802 b_and!336487)))

(declare-fun b!4247026 () Bool)

(declare-fun b_free!126119 () Bool)

(declare-fun b_next!126823 () Bool)

(assert (=> b!4247026 (= b_free!126119 (not b_next!126823))))

(declare-fun tp!1302806 () Bool)

(declare-fun b_and!336489 () Bool)

(assert (=> b!4247026 (= tp!1302806 b_and!336489)))

(declare-fun b_free!126121 () Bool)

(declare-fun b_next!126825 () Bool)

(assert (=> b!4247026 (= b_free!126121 (not b_next!126825))))

(declare-fun tp!1302798 () Bool)

(declare-fun b_and!336491 () Bool)

(assert (=> b!4247026 (= tp!1302798 b_and!336491)))

(declare-fun res!1745990 () Bool)

(declare-fun e!2637791 () Bool)

(assert (=> start!406562 (=> (not res!1745990) (not e!2637791))))

(declare-datatypes ((LexerInterface!7551 0))(
  ( (LexerInterfaceExt!7548 (__x!28595 Int)) (Lexer!7549) )
))
(declare-fun thiss!21641 () LexerInterface!7551)

(get-info :version)

(assert (=> start!406562 (= res!1745990 ((_ is Lexer!7549) thiss!21641))))

(assert (=> start!406562 e!2637791))

(assert (=> start!406562 true))

(declare-fun e!2637801 () Bool)

(assert (=> start!406562 e!2637801))

(declare-fun e!2637802 () Bool)

(assert (=> start!406562 e!2637802))

(declare-fun e!2637794 () Bool)

(assert (=> start!406562 e!2637794))

(declare-fun e!2637790 () Bool)

(assert (=> start!406562 e!2637790))

(declare-fun e!2637795 () Bool)

(assert (=> start!406562 e!2637795))

(declare-fun b!4247014 () Bool)

(declare-fun e!2637798 () Bool)

(declare-fun e!2637792 () Bool)

(assert (=> b!4247014 (= e!2637798 e!2637792)))

(declare-fun res!1745999 () Bool)

(assert (=> b!4247014 (=> (not res!1745999) (not e!2637792))))

(declare-datatypes ((C!25920 0))(
  ( (C!25921 (val!15150 Int)) )
))
(declare-datatypes ((List!47145 0))(
  ( (Nil!47021) (Cons!47021 (h!52441 C!25920) (t!351810 List!47145)) )
))
(declare-datatypes ((IArray!28339 0))(
  ( (IArray!28340 (innerList!14227 List!47145)) )
))
(declare-datatypes ((Conc!14167 0))(
  ( (Node!14167 (left!34899 Conc!14167) (right!35229 Conc!14167) (csize!28564 Int) (cheight!14378 Int)) (Leaf!21904 (xs!17473 IArray!28339) (csize!28565 Int)) (Empty!14167) )
))
(declare-datatypes ((BalanceConc!27928 0))(
  ( (BalanceConc!27929 (c!721320 Conc!14167)) )
))
(declare-datatypes ((List!47146 0))(
  ( (Nil!47022) (Cons!47022 (h!52442 (_ BitVec 16)) (t!351811 List!47146)) )
))
(declare-datatypes ((TokenValue!8186 0))(
  ( (FloatLiteralValue!16372 (text!57747 List!47146)) (TokenValueExt!8185 (__x!28596 Int)) (Broken!40930 (value!247256 List!47146)) (Object!8309) (End!8186) (Def!8186) (Underscore!8186) (Match!8186) (Else!8186) (Error!8186) (Case!8186) (If!8186) (Extends!8186) (Abstract!8186) (Class!8186) (Val!8186) (DelimiterValue!16372 (del!8246 List!47146)) (KeywordValue!8192 (value!247257 List!47146)) (CommentValue!16372 (value!247258 List!47146)) (WhitespaceValue!16372 (value!247259 List!47146)) (IndentationValue!8186 (value!247260 List!47146)) (String!54859) (Int32!8186) (Broken!40931 (value!247261 List!47146)) (Boolean!8187) (Unit!66034) (OperatorValue!8189 (op!8246 List!47146)) (IdentifierValue!16372 (value!247262 List!47146)) (IdentifierValue!16373 (value!247263 List!47146)) (WhitespaceValue!16373 (value!247264 List!47146)) (True!16372) (False!16372) (Broken!40932 (value!247265 List!47146)) (Broken!40933 (value!247266 List!47146)) (True!16373) (RightBrace!8186) (RightBracket!8186) (Colon!8186) (Null!8186) (Comma!8186) (LeftBracket!8186) (False!16373) (LeftBrace!8186) (ImaginaryLiteralValue!8186 (text!57748 List!47146)) (StringLiteralValue!24558 (value!247267 List!47146)) (EOFValue!8186 (value!247268 List!47146)) (IdentValue!8186 (value!247269 List!47146)) (DelimiterValue!16373 (value!247270 List!47146)) (DedentValue!8186 (value!247271 List!47146)) (NewLineValue!8186 (value!247272 List!47146)) (IntegerValue!24558 (value!247273 (_ BitVec 32)) (text!57749 List!47146)) (IntegerValue!24559 (value!247274 Int) (text!57750 List!47146)) (Times!8186) (Or!8186) (Equal!8186) (Minus!8186) (Broken!40934 (value!247275 List!47146)) (And!8186) (Div!8186) (LessEqual!8186) (Mod!8186) (Concat!21047) (Not!8186) (Plus!8186) (SpaceValue!8186 (value!247276 List!47146)) (IntegerValue!24560 (value!247277 Int) (text!57751 List!47146)) (StringLiteralValue!24559 (text!57752 List!47146)) (FloatLiteralValue!16373 (text!57753 List!47146)) (BytesLiteralValue!8186 (value!247278 List!47146)) (CommentValue!16373 (value!247279 List!47146)) (StringLiteralValue!24560 (value!247280 List!47146)) (ErrorTokenValue!8186 (msg!8247 List!47146)) )
))
(declare-datatypes ((TokenValueInjection!15800 0))(
  ( (TokenValueInjection!15801 (toValue!10720 Int) (toChars!10579 Int)) )
))
(declare-datatypes ((Regex!12861 0))(
  ( (ElementMatch!12861 (c!721321 C!25920)) (Concat!21048 (regOne!26234 Regex!12861) (regTwo!26234 Regex!12861)) (EmptyExpr!12861) (Star!12861 (reg!13190 Regex!12861)) (EmptyLang!12861) (Union!12861 (regOne!26235 Regex!12861) (regTwo!26235 Regex!12861)) )
))
(declare-datatypes ((String!54860 0))(
  ( (String!54861 (value!247281 String)) )
))
(declare-datatypes ((Rule!15712 0))(
  ( (Rule!15713 (regex!7956 Regex!12861) (tag!8820 String!54860) (isSeparator!7956 Bool) (transformation!7956 TokenValueInjection!15800)) )
))
(declare-datatypes ((Token!14538 0))(
  ( (Token!14539 (value!247282 TokenValue!8186) (rule!11086 Rule!15712) (size!34432 Int) (originalCharacters!8300 List!47145)) )
))
(declare-datatypes ((tuple2!44582 0))(
  ( (tuple2!44583 (_1!25425 Token!14538) (_2!25425 List!47145)) )
))
(declare-datatypes ((Option!10090 0))(
  ( (None!10089) (Some!10089 (v!41043 tuple2!44582)) )
))
(declare-fun lt!1507774 () Option!10090)

(declare-fun isEmpty!27816 (List!47145) Bool)

(assert (=> b!4247014 (= res!1745999 (not (isEmpty!27816 (_2!25425 (v!41043 lt!1507774)))))))

(declare-datatypes ((List!47147 0))(
  ( (Nil!47023) (Cons!47023 (h!52443 Token!14538) (t!351812 List!47147)) )
))
(declare-fun lt!1507770 () List!47147)

(declare-fun tokens!592 () List!47147)

(declare-fun tail!6848 (List!47147) List!47147)

(assert (=> b!4247014 (= lt!1507770 (tail!6848 tokens!592))))

(declare-fun b!4247015 () Bool)

(declare-fun e!2637803 () Bool)

(declare-datatypes ((List!47148 0))(
  ( (Nil!47024) (Cons!47024 (h!52444 Rule!15712) (t!351813 List!47148)) )
))
(declare-fun rules!2971 () List!47148)

(declare-fun e!2637806 () Bool)

(declare-fun tp!1302800 () Bool)

(declare-fun inv!61783 (String!54860) Bool)

(declare-fun inv!61786 (TokenValueInjection!15800) Bool)

(assert (=> b!4247015 (= e!2637806 (and tp!1302800 (inv!61783 (tag!8820 (h!52444 rules!2971))) (inv!61786 (transformation!7956 (h!52444 rules!2971))) e!2637803))))

(declare-fun b!4247016 () Bool)

(declare-fun tp!1302795 () Bool)

(assert (=> b!4247016 (= e!2637790 (and e!2637806 tp!1302795))))

(declare-fun b!4247017 () Bool)

(declare-fun res!1745994 () Bool)

(assert (=> b!4247017 (=> (not res!1745994) (not e!2637798))))

(declare-fun lt!1507771 () Option!10090)

(declare-fun lt!1507772 () List!47145)

(declare-fun lt!1507775 () List!47145)

(assert (=> b!4247017 (= res!1745994 (and (= (_1!25425 (v!41043 lt!1507774)) (_1!25425 (v!41043 lt!1507771))) (= lt!1507772 lt!1507775)))))

(declare-fun b!4247018 () Bool)

(declare-fun tp_is_empty!22713 () Bool)

(declare-fun tp!1302797 () Bool)

(assert (=> b!4247018 (= e!2637795 (and tp_is_empty!22713 tp!1302797))))

(declare-fun b!4247019 () Bool)

(declare-fun res!1745996 () Bool)

(assert (=> b!4247019 (=> (not res!1745996) (not e!2637791))))

(declare-fun rulesInvariant!6662 (LexerInterface!7551 List!47148) Bool)

(assert (=> b!4247019 (= res!1745996 (rulesInvariant!6662 thiss!21641 rules!2971))))

(declare-fun b!4247020 () Bool)

(declare-fun e!2637799 () Bool)

(assert (=> b!4247020 (= e!2637792 e!2637799)))

(declare-fun res!1745992 () Bool)

(assert (=> b!4247020 (=> (not res!1745992) (not e!2637799))))

(declare-datatypes ((tuple2!44584 0))(
  ( (tuple2!44585 (_1!25426 List!47147) (_2!25426 List!47145)) )
))
(declare-fun lt!1507773 () tuple2!44584)

(declare-fun lexList!2057 (LexerInterface!7551 List!47148 List!47145) tuple2!44584)

(assert (=> b!4247020 (= res!1745992 (= (lexList!2057 thiss!21641 rules!2971 (_2!25425 (v!41043 lt!1507774))) lt!1507773))))

(declare-fun suffix!1284 () List!47145)

(assert (=> b!4247020 (= lt!1507773 (tuple2!44585 lt!1507770 suffix!1284))))

(declare-fun b!4247021 () Bool)

(declare-fun tp!1302801 () Bool)

(assert (=> b!4247021 (= e!2637802 (and tp_is_empty!22713 tp!1302801))))

(declare-fun tp!1302805 () Bool)

(declare-fun b!4247022 () Bool)

(declare-fun e!2637800 () Bool)

(declare-fun inv!61787 (Token!14538) Bool)

(assert (=> b!4247022 (= e!2637794 (and (inv!61787 (h!52443 tokens!592)) e!2637800 tp!1302805))))

(assert (=> b!4247023 (= e!2637803 (and tp!1302804 tp!1302802))))

(declare-fun tp!1302799 () Bool)

(declare-fun b!4247024 () Bool)

(declare-fun e!2637805 () Bool)

(declare-fun inv!21 (TokenValue!8186) Bool)

(assert (=> b!4247024 (= e!2637800 (and (inv!21 (value!247282 (h!52443 tokens!592))) e!2637805 tp!1302799))))

(declare-fun b!4247025 () Bool)

(declare-fun e!2637804 () Bool)

(assert (=> b!4247025 (= e!2637791 e!2637804)))

(declare-fun res!1745991 () Bool)

(assert (=> b!4247025 (=> (not res!1745991) (not e!2637804))))

(assert (=> b!4247025 (= res!1745991 (and ((_ is Some!10089) lt!1507774) ((_ is Some!10089) lt!1507771)))))

(declare-fun shorterInput!62 () List!47145)

(declare-fun maxPrefix!4507 (LexerInterface!7551 List!47148 List!47145) Option!10090)

(assert (=> b!4247025 (= lt!1507771 (maxPrefix!4507 thiss!21641 rules!2971 shorterInput!62))))

(declare-fun longerInput!62 () List!47145)

(assert (=> b!4247025 (= lt!1507774 (maxPrefix!4507 thiss!21641 rules!2971 longerInput!62))))

(declare-fun e!2637788 () Bool)

(assert (=> b!4247026 (= e!2637788 (and tp!1302806 tp!1302798))))

(declare-fun b!4247027 () Bool)

(declare-fun tp!1302803 () Bool)

(assert (=> b!4247027 (= e!2637805 (and tp!1302803 (inv!61783 (tag!8820 (rule!11086 (h!52443 tokens!592)))) (inv!61786 (transformation!7956 (rule!11086 (h!52443 tokens!592)))) e!2637788))))

(declare-fun b!4247028 () Bool)

(declare-fun res!1746000 () Bool)

(assert (=> b!4247028 (=> (not res!1746000) (not e!2637791))))

(declare-fun size!34433 (List!47145) Int)

(assert (=> b!4247028 (= res!1746000 (> (size!34433 longerInput!62) (size!34433 shorterInput!62)))))

(declare-fun b!4247029 () Bool)

(declare-fun res!1745998 () Bool)

(assert (=> b!4247029 (=> (not res!1745998) (not e!2637791))))

(declare-fun isEmpty!27817 (List!47148) Bool)

(assert (=> b!4247029 (= res!1745998 (not (isEmpty!27817 rules!2971)))))

(declare-fun b!4247030 () Bool)

(assert (=> b!4247030 (= e!2637799 (not true))))

(assert (=> b!4247030 (not (= (lexList!2057 thiss!21641 rules!2971 (_2!25425 (v!41043 lt!1507771))) lt!1507773))))

(declare-datatypes ((Unit!66035 0))(
  ( (Unit!66036) )
))
(declare-fun lt!1507776 () Unit!66035)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!174 (LexerInterface!7551 List!47148 List!47145 List!47145 List!47147 List!47145) Unit!66035)

(assert (=> b!4247030 (= lt!1507776 (lemmaLexWithSmallerInputCannotProduceSameResults!174 thiss!21641 rules!2971 (_2!25425 (v!41043 lt!1507774)) (_2!25425 (v!41043 lt!1507771)) lt!1507770 suffix!1284))))

(declare-fun b!4247031 () Bool)

(declare-fun e!2637789 () Bool)

(assert (=> b!4247031 (= e!2637789 e!2637798)))

(declare-fun res!1746002 () Bool)

(assert (=> b!4247031 (=> (not res!1746002) (not e!2637798))))

(declare-fun ++!11969 (List!47145 List!47145) List!47145)

(assert (=> b!4247031 (= res!1746002 (= (++!11969 lt!1507775 (_2!25425 (v!41043 lt!1507771))) shorterInput!62))))

(declare-fun list!16942 (BalanceConc!27928) List!47145)

(declare-fun charsOf!5300 (Token!14538) BalanceConc!27928)

(assert (=> b!4247031 (= lt!1507775 (list!16942 (charsOf!5300 (_1!25425 (v!41043 lt!1507771)))))))

(declare-fun b!4247032 () Bool)

(declare-fun tp!1302796 () Bool)

(assert (=> b!4247032 (= e!2637801 (and tp_is_empty!22713 tp!1302796))))

(declare-fun b!4247033 () Bool)

(declare-fun res!1745995 () Bool)

(assert (=> b!4247033 (=> (not res!1745995) (not e!2637791))))

(assert (=> b!4247033 (= res!1745995 (not (isEmpty!27816 longerInput!62)))))

(declare-fun b!4247034 () Bool)

(declare-fun res!1745997 () Bool)

(assert (=> b!4247034 (=> (not res!1745997) (not e!2637791))))

(assert (=> b!4247034 (= res!1745997 (= (lexList!2057 thiss!21641 rules!2971 longerInput!62) (tuple2!44585 tokens!592 suffix!1284)))))

(declare-fun b!4247035 () Bool)

(assert (=> b!4247035 (= e!2637804 e!2637789)))

(declare-fun res!1746001 () Bool)

(assert (=> b!4247035 (=> (not res!1746001) (not e!2637789))))

(assert (=> b!4247035 (= res!1746001 (= (++!11969 lt!1507772 (_2!25425 (v!41043 lt!1507774))) longerInput!62))))

(assert (=> b!4247035 (= lt!1507772 (list!16942 (charsOf!5300 (_1!25425 (v!41043 lt!1507774)))))))

(declare-fun b!4247036 () Bool)

(declare-fun res!1745993 () Bool)

(assert (=> b!4247036 (=> (not res!1745993) (not e!2637798))))

(assert (=> b!4247036 (= res!1745993 (> (size!34433 (_2!25425 (v!41043 lt!1507774))) (size!34433 (_2!25425 (v!41043 lt!1507771)))))))

(assert (= (and start!406562 res!1745990) b!4247029))

(assert (= (and b!4247029 res!1745998) b!4247019))

(assert (= (and b!4247019 res!1745996) b!4247033))

(assert (= (and b!4247033 res!1745995) b!4247028))

(assert (= (and b!4247028 res!1746000) b!4247034))

(assert (= (and b!4247034 res!1745997) b!4247025))

(assert (= (and b!4247025 res!1745991) b!4247035))

(assert (= (and b!4247035 res!1746001) b!4247031))

(assert (= (and b!4247031 res!1746002) b!4247017))

(assert (= (and b!4247017 res!1745994) b!4247036))

(assert (= (and b!4247036 res!1745993) b!4247014))

(assert (= (and b!4247014 res!1745999) b!4247020))

(assert (= (and b!4247020 res!1745992) b!4247030))

(assert (= (and start!406562 ((_ is Cons!47021) suffix!1284)) b!4247032))

(assert (= (and start!406562 ((_ is Cons!47021) longerInput!62)) b!4247021))

(assert (= b!4247027 b!4247026))

(assert (= b!4247024 b!4247027))

(assert (= b!4247022 b!4247024))

(assert (= (and start!406562 ((_ is Cons!47023) tokens!592)) b!4247022))

(assert (= b!4247015 b!4247023))

(assert (= b!4247016 b!4247015))

(assert (= (and start!406562 ((_ is Cons!47024) rules!2971)) b!4247016))

(assert (= (and start!406562 ((_ is Cons!47021) shorterInput!62)) b!4247018))

(declare-fun m!4831841 () Bool)

(assert (=> b!4247025 m!4831841))

(declare-fun m!4831843 () Bool)

(assert (=> b!4247025 m!4831843))

(declare-fun m!4831845 () Bool)

(assert (=> b!4247034 m!4831845))

(declare-fun m!4831847 () Bool)

(assert (=> b!4247036 m!4831847))

(declare-fun m!4831849 () Bool)

(assert (=> b!4247036 m!4831849))

(declare-fun m!4831851 () Bool)

(assert (=> b!4247024 m!4831851))

(declare-fun m!4831853 () Bool)

(assert (=> b!4247020 m!4831853))

(declare-fun m!4831855 () Bool)

(assert (=> b!4247029 m!4831855))

(declare-fun m!4831857 () Bool)

(assert (=> b!4247022 m!4831857))

(declare-fun m!4831859 () Bool)

(assert (=> b!4247033 m!4831859))

(declare-fun m!4831861 () Bool)

(assert (=> b!4247028 m!4831861))

(declare-fun m!4831863 () Bool)

(assert (=> b!4247028 m!4831863))

(declare-fun m!4831865 () Bool)

(assert (=> b!4247031 m!4831865))

(declare-fun m!4831867 () Bool)

(assert (=> b!4247031 m!4831867))

(assert (=> b!4247031 m!4831867))

(declare-fun m!4831869 () Bool)

(assert (=> b!4247031 m!4831869))

(declare-fun m!4831871 () Bool)

(assert (=> b!4247019 m!4831871))

(declare-fun m!4831873 () Bool)

(assert (=> b!4247035 m!4831873))

(declare-fun m!4831875 () Bool)

(assert (=> b!4247035 m!4831875))

(assert (=> b!4247035 m!4831875))

(declare-fun m!4831877 () Bool)

(assert (=> b!4247035 m!4831877))

(declare-fun m!4831879 () Bool)

(assert (=> b!4247015 m!4831879))

(declare-fun m!4831881 () Bool)

(assert (=> b!4247015 m!4831881))

(declare-fun m!4831883 () Bool)

(assert (=> b!4247014 m!4831883))

(declare-fun m!4831885 () Bool)

(assert (=> b!4247014 m!4831885))

(declare-fun m!4831887 () Bool)

(assert (=> b!4247030 m!4831887))

(declare-fun m!4831889 () Bool)

(assert (=> b!4247030 m!4831889))

(declare-fun m!4831891 () Bool)

(assert (=> b!4247027 m!4831891))

(declare-fun m!4831893 () Bool)

(assert (=> b!4247027 m!4831893))

(check-sat (not b!4247019) b_and!336489 (not b!4247034) (not b!4247021) tp_is_empty!22713 (not b_next!126821) (not b!4247022) (not b!4247020) b_and!336491 b_and!336487 (not b!4247015) (not b!4247029) (not b!4247030) (not b!4247027) b_and!336485 (not b!4247018) (not b!4247036) (not b_next!126823) (not b!4247031) (not b_next!126825) (not b!4247025) (not b!4247032) (not b!4247028) (not b!4247016) (not b!4247014) (not b_next!126819) (not b!4247024) (not b!4247033) (not b!4247035))
(check-sat b_and!336487 b_and!336485 b_and!336489 (not b_next!126821) (not b_next!126819) b_and!336491 (not b_next!126823) (not b_next!126825))
