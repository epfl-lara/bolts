; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!406938 () Bool)

(assert start!406938)

(declare-fun b!4250063 () Bool)

(declare-fun b_free!126307 () Bool)

(declare-fun b_next!127011 () Bool)

(assert (=> b!4250063 (= b_free!126307 (not b_next!127011))))

(declare-fun tp!1304013 () Bool)

(declare-fun b_and!336901 () Bool)

(assert (=> b!4250063 (= tp!1304013 b_and!336901)))

(declare-fun b_free!126309 () Bool)

(declare-fun b_next!127013 () Bool)

(assert (=> b!4250063 (= b_free!126309 (not b_next!127013))))

(declare-fun tp!1304018 () Bool)

(declare-fun b_and!336903 () Bool)

(assert (=> b!4250063 (= tp!1304018 b_and!336903)))

(declare-fun b!4250070 () Bool)

(declare-fun b_free!126311 () Bool)

(declare-fun b_next!127015 () Bool)

(assert (=> b!4250070 (= b_free!126311 (not b_next!127015))))

(declare-fun tp!1304009 () Bool)

(declare-fun b_and!336905 () Bool)

(assert (=> b!4250070 (= tp!1304009 b_and!336905)))

(declare-fun b_free!126313 () Bool)

(declare-fun b_next!127017 () Bool)

(assert (=> b!4250070 (= b_free!126313 (not b_next!127017))))

(declare-fun tp!1304015 () Bool)

(declare-fun b_and!336907 () Bool)

(assert (=> b!4250070 (= tp!1304015 b_and!336907)))

(declare-fun b!4250057 () Bool)

(declare-fun res!1747201 () Bool)

(declare-fun e!2639742 () Bool)

(assert (=> b!4250057 (=> (not res!1747201) (not e!2639742))))

(declare-datatypes ((C!25948 0))(
  ( (C!25949 (val!15164 Int)) )
))
(declare-datatypes ((List!47207 0))(
  ( (Nil!47083) (Cons!47083 (h!52503 C!25948) (t!352284 List!47207)) )
))
(declare-fun longerInput!62 () List!47207)

(declare-fun isEmpty!27856 (List!47207) Bool)

(assert (=> b!4250057 (= res!1747201 (not (isEmpty!27856 longerInput!62)))))

(declare-fun b!4250058 () Bool)

(declare-fun e!2639748 () Bool)

(assert (=> b!4250058 (= e!2639742 e!2639748)))

(declare-fun res!1747200 () Bool)

(assert (=> b!4250058 (=> (not res!1747200) (not e!2639748))))

(declare-fun lt!1508426 () Int)

(declare-fun shorterInput!62 () List!47207)

(declare-fun size!34470 (List!47207) Int)

(assert (=> b!4250058 (= res!1747200 (> lt!1508426 (size!34470 shorterInput!62)))))

(assert (=> b!4250058 (= lt!1508426 (size!34470 longerInput!62))))

(declare-fun b!4250059 () Bool)

(declare-fun tp!1304014 () Bool)

(declare-datatypes ((List!47208 0))(
  ( (Nil!47084) (Cons!47084 (h!52504 (_ BitVec 16)) (t!352285 List!47208)) )
))
(declare-datatypes ((TokenValue!8200 0))(
  ( (FloatLiteralValue!16400 (text!57845 List!47208)) (TokenValueExt!8199 (__x!28623 Int)) (Broken!41000 (value!247655 List!47208)) (Object!8323) (End!8200) (Def!8200) (Underscore!8200) (Match!8200) (Else!8200) (Error!8200) (Case!8200) (If!8200) (Extends!8200) (Abstract!8200) (Class!8200) (Val!8200) (DelimiterValue!16400 (del!8260 List!47208)) (KeywordValue!8206 (value!247656 List!47208)) (CommentValue!16400 (value!247657 List!47208)) (WhitespaceValue!16400 (value!247658 List!47208)) (IndentationValue!8200 (value!247659 List!47208)) (String!54929) (Int32!8200) (Broken!41001 (value!247660 List!47208)) (Boolean!8201) (Unit!66062) (OperatorValue!8203 (op!8260 List!47208)) (IdentifierValue!16400 (value!247661 List!47208)) (IdentifierValue!16401 (value!247662 List!47208)) (WhitespaceValue!16401 (value!247663 List!47208)) (True!16400) (False!16400) (Broken!41002 (value!247664 List!47208)) (Broken!41003 (value!247665 List!47208)) (True!16401) (RightBrace!8200) (RightBracket!8200) (Colon!8200) (Null!8200) (Comma!8200) (LeftBracket!8200) (False!16401) (LeftBrace!8200) (ImaginaryLiteralValue!8200 (text!57846 List!47208)) (StringLiteralValue!24600 (value!247666 List!47208)) (EOFValue!8200 (value!247667 List!47208)) (IdentValue!8200 (value!247668 List!47208)) (DelimiterValue!16401 (value!247669 List!47208)) (DedentValue!8200 (value!247670 List!47208)) (NewLineValue!8200 (value!247671 List!47208)) (IntegerValue!24600 (value!247672 (_ BitVec 32)) (text!57847 List!47208)) (IntegerValue!24601 (value!247673 Int) (text!57848 List!47208)) (Times!8200) (Or!8200) (Equal!8200) (Minus!8200) (Broken!41004 (value!247674 List!47208)) (And!8200) (Div!8200) (LessEqual!8200) (Mod!8200) (Concat!21075) (Not!8200) (Plus!8200) (SpaceValue!8200 (value!247675 List!47208)) (IntegerValue!24602 (value!247676 Int) (text!57849 List!47208)) (StringLiteralValue!24601 (text!57850 List!47208)) (FloatLiteralValue!16401 (text!57851 List!47208)) (BytesLiteralValue!8200 (value!247677 List!47208)) (CommentValue!16401 (value!247678 List!47208)) (StringLiteralValue!24602 (value!247679 List!47208)) (ErrorTokenValue!8200 (msg!8261 List!47208)) )
))
(declare-datatypes ((IArray!28367 0))(
  ( (IArray!28368 (innerList!14241 List!47207)) )
))
(declare-datatypes ((Conc!14181 0))(
  ( (Node!14181 (left!34928 Conc!14181) (right!35258 Conc!14181) (csize!28592 Int) (cheight!14392 Int)) (Leaf!21925 (xs!17487 IArray!28367) (csize!28593 Int)) (Empty!14181) )
))
(declare-datatypes ((BalanceConc!27956 0))(
  ( (BalanceConc!27957 (c!721736 Conc!14181)) )
))
(declare-datatypes ((String!54930 0))(
  ( (String!54931 (value!247680 String)) )
))
(declare-datatypes ((TokenValueInjection!15828 0))(
  ( (TokenValueInjection!15829 (toValue!10742 Int) (toChars!10601 Int)) )
))
(declare-datatypes ((Regex!12875 0))(
  ( (ElementMatch!12875 (c!721737 C!25948)) (Concat!21076 (regOne!26262 Regex!12875) (regTwo!26262 Regex!12875)) (EmptyExpr!12875) (Star!12875 (reg!13204 Regex!12875)) (EmptyLang!12875) (Union!12875 (regOne!26263 Regex!12875) (regTwo!26263 Regex!12875)) )
))
(declare-datatypes ((Rule!15740 0))(
  ( (Rule!15741 (regex!7970 Regex!12875) (tag!8834 String!54930) (isSeparator!7970 Bool) (transformation!7970 TokenValueInjection!15828)) )
))
(declare-datatypes ((Token!14566 0))(
  ( (Token!14567 (value!247681 TokenValue!8200) (rule!11104 Rule!15740) (size!34471 Int) (originalCharacters!8314 List!47207)) )
))
(declare-datatypes ((List!47209 0))(
  ( (Nil!47085) (Cons!47085 (h!52505 Token!14566) (t!352286 List!47209)) )
))
(declare-fun tokens!592 () List!47209)

(declare-fun e!2639747 () Bool)

(declare-fun e!2639739 () Bool)

(declare-fun inv!61855 (String!54930) Bool)

(declare-fun inv!61858 (TokenValueInjection!15828) Bool)

(assert (=> b!4250059 (= e!2639747 (and tp!1304014 (inv!61855 (tag!8834 (rule!11104 (h!52505 tokens!592)))) (inv!61858 (transformation!7970 (rule!11104 (h!52505 tokens!592)))) e!2639739))))

(declare-fun b!4250060 () Bool)

(assert (=> b!4250060 (= e!2639748 (< lt!1508426 0))))

(declare-fun b!4250061 () Bool)

(declare-fun e!2639749 () Bool)

(declare-fun tp_is_empty!22741 () Bool)

(declare-fun tp!1304012 () Bool)

(assert (=> b!4250061 (= e!2639749 (and tp_is_empty!22741 tp!1304012))))

(declare-fun b!4250062 () Bool)

(declare-fun e!2639750 () Bool)

(declare-fun tp!1304011 () Bool)

(assert (=> b!4250062 (= e!2639750 (and tp_is_empty!22741 tp!1304011))))

(declare-fun e!2639745 () Bool)

(assert (=> b!4250063 (= e!2639745 (and tp!1304013 tp!1304018))))

(declare-fun b!4250064 () Bool)

(declare-fun res!1747204 () Bool)

(assert (=> b!4250064 (=> (not res!1747204) (not e!2639742))))

(declare-datatypes ((List!47210 0))(
  ( (Nil!47086) (Cons!47086 (h!52506 Rule!15740) (t!352287 List!47210)) )
))
(declare-fun rules!2971 () List!47210)

(declare-fun isEmpty!27857 (List!47210) Bool)

(assert (=> b!4250064 (= res!1747204 (not (isEmpty!27857 rules!2971)))))

(declare-fun e!2639738 () Bool)

(declare-fun tp!1304007 () Bool)

(declare-fun b!4250066 () Bool)

(declare-fun inv!21 (TokenValue!8200) Bool)

(assert (=> b!4250066 (= e!2639738 (and (inv!21 (value!247681 (h!52505 tokens!592))) e!2639747 tp!1304007))))

(declare-fun b!4250067 () Bool)

(declare-fun e!2639744 () Bool)

(declare-fun tp!1304008 () Bool)

(assert (=> b!4250067 (= e!2639744 (and tp_is_empty!22741 tp!1304008))))

(declare-fun b!4250068 () Bool)

(declare-fun res!1747202 () Bool)

(assert (=> b!4250068 (=> (not res!1747202) (not e!2639742))))

(declare-datatypes ((LexerInterface!7565 0))(
  ( (LexerInterfaceExt!7562 (__x!28624 Int)) (Lexer!7563) )
))
(declare-fun thiss!21641 () LexerInterface!7565)

(declare-fun rulesInvariant!6676 (LexerInterface!7565 List!47210) Bool)

(assert (=> b!4250068 (= res!1747202 (rulesInvariant!6676 thiss!21641 rules!2971))))

(declare-fun e!2639743 () Bool)

(declare-fun b!4250069 () Bool)

(declare-fun tp!1304016 () Bool)

(declare-fun inv!61859 (Token!14566) Bool)

(assert (=> b!4250069 (= e!2639743 (and (inv!61859 (h!52505 tokens!592)) e!2639738 tp!1304016))))

(assert (=> b!4250070 (= e!2639739 (and tp!1304009 tp!1304015))))

(declare-fun e!2639736 () Bool)

(declare-fun tp!1304010 () Bool)

(declare-fun b!4250071 () Bool)

(assert (=> b!4250071 (= e!2639736 (and tp!1304010 (inv!61855 (tag!8834 (h!52506 rules!2971))) (inv!61858 (transformation!7970 (h!52506 rules!2971))) e!2639745))))

(declare-fun b!4250072 () Bool)

(declare-fun res!1747199 () Bool)

(assert (=> b!4250072 (=> (not res!1747199) (not e!2639748))))

(declare-fun suffix!1284 () List!47207)

(declare-datatypes ((tuple2!44644 0))(
  ( (tuple2!44645 (_1!25456 List!47209) (_2!25456 List!47207)) )
))
(declare-fun lexList!2071 (LexerInterface!7565 List!47210 List!47207) tuple2!44644)

(assert (=> b!4250072 (= res!1747199 (= (lexList!2071 thiss!21641 rules!2971 longerInput!62) (tuple2!44645 tokens!592 suffix!1284)))))

(declare-fun b!4250065 () Bool)

(declare-fun e!2639737 () Bool)

(declare-fun tp!1304017 () Bool)

(assert (=> b!4250065 (= e!2639737 (and e!2639736 tp!1304017))))

(declare-fun res!1747203 () Bool)

(assert (=> start!406938 (=> (not res!1747203) (not e!2639742))))

(get-info :version)

(assert (=> start!406938 (= res!1747203 ((_ is Lexer!7563) thiss!21641))))

(assert (=> start!406938 e!2639742))

(assert (=> start!406938 true))

(assert (=> start!406938 e!2639744))

(assert (=> start!406938 e!2639750))

(assert (=> start!406938 e!2639743))

(assert (=> start!406938 e!2639737))

(assert (=> start!406938 e!2639749))

(assert (= (and start!406938 res!1747203) b!4250064))

(assert (= (and b!4250064 res!1747204) b!4250068))

(assert (= (and b!4250068 res!1747202) b!4250057))

(assert (= (and b!4250057 res!1747201) b!4250058))

(assert (= (and b!4250058 res!1747200) b!4250072))

(assert (= (and b!4250072 res!1747199) b!4250060))

(assert (= (and start!406938 ((_ is Cons!47083) suffix!1284)) b!4250067))

(assert (= (and start!406938 ((_ is Cons!47083) longerInput!62)) b!4250062))

(assert (= b!4250059 b!4250070))

(assert (= b!4250066 b!4250059))

(assert (= b!4250069 b!4250066))

(assert (= (and start!406938 ((_ is Cons!47085) tokens!592)) b!4250069))

(assert (= b!4250071 b!4250063))

(assert (= b!4250065 b!4250071))

(assert (= (and start!406938 ((_ is Cons!47086) rules!2971)) b!4250065))

(assert (= (and start!406938 ((_ is Cons!47083) shorterInput!62)) b!4250061))

(declare-fun m!4834991 () Bool)

(assert (=> b!4250057 m!4834991))

(declare-fun m!4834993 () Bool)

(assert (=> b!4250071 m!4834993))

(declare-fun m!4834995 () Bool)

(assert (=> b!4250071 m!4834995))

(declare-fun m!4834997 () Bool)

(assert (=> b!4250068 m!4834997))

(declare-fun m!4834999 () Bool)

(assert (=> b!4250058 m!4834999))

(declare-fun m!4835001 () Bool)

(assert (=> b!4250058 m!4835001))

(declare-fun m!4835003 () Bool)

(assert (=> b!4250064 m!4835003))

(declare-fun m!4835005 () Bool)

(assert (=> b!4250069 m!4835005))

(declare-fun m!4835007 () Bool)

(assert (=> b!4250059 m!4835007))

(declare-fun m!4835009 () Bool)

(assert (=> b!4250059 m!4835009))

(declare-fun m!4835011 () Bool)

(assert (=> b!4250066 m!4835011))

(declare-fun m!4835013 () Bool)

(assert (=> b!4250072 m!4835013))

(check-sat (not b!4250059) tp_is_empty!22741 b_and!336903 (not b!4250064) (not b!4250071) (not b!4250068) (not b_next!127013) b_and!336905 (not b!4250057) (not b_next!127017) (not b!4250058) (not b!4250072) b_and!336907 b_and!336901 (not b_next!127015) (not b!4250062) (not b_next!127011) (not b!4250069) (not b!4250067) (not b!4250065) (not b!4250061) (not b!4250066))
(check-sat (not b_next!127017) b_and!336903 (not b_next!127013) b_and!336905 b_and!336907 (not b_next!127011) b_and!336901 (not b_next!127015))
(get-model)

(declare-fun d!1249880 () Bool)

(assert (=> d!1249880 (= (isEmpty!27857 rules!2971) ((_ is Nil!47086) rules!2971))))

(assert (=> b!4250064 d!1249880))

(declare-fun d!1249882 () Bool)

(declare-fun res!1747209 () Bool)

(declare-fun e!2639753 () Bool)

(assert (=> d!1249882 (=> (not res!1747209) (not e!2639753))))

(assert (=> d!1249882 (= res!1747209 (not (isEmpty!27856 (originalCharacters!8314 (h!52505 tokens!592)))))))

(assert (=> d!1249882 (= (inv!61859 (h!52505 tokens!592)) e!2639753)))

(declare-fun b!4250077 () Bool)

(declare-fun res!1747210 () Bool)

(assert (=> b!4250077 (=> (not res!1747210) (not e!2639753))))

(declare-fun list!16963 (BalanceConc!27956) List!47207)

(declare-fun dynLambda!20175 (Int TokenValue!8200) BalanceConc!27956)

(assert (=> b!4250077 (= res!1747210 (= (originalCharacters!8314 (h!52505 tokens!592)) (list!16963 (dynLambda!20175 (toChars!10601 (transformation!7970 (rule!11104 (h!52505 tokens!592)))) (value!247681 (h!52505 tokens!592))))))))

(declare-fun b!4250078 () Bool)

(assert (=> b!4250078 (= e!2639753 (= (size!34471 (h!52505 tokens!592)) (size!34470 (originalCharacters!8314 (h!52505 tokens!592)))))))

(assert (= (and d!1249882 res!1747209) b!4250077))

(assert (= (and b!4250077 res!1747210) b!4250078))

(declare-fun b_lambda!125195 () Bool)

(assert (=> (not b_lambda!125195) (not b!4250077)))

(declare-fun tb!256259 () Bool)

(declare-fun t!352289 () Bool)

(assert (=> (and b!4250063 (= (toChars!10601 (transformation!7970 (h!52506 rules!2971))) (toChars!10601 (transformation!7970 (rule!11104 (h!52505 tokens!592))))) t!352289) tb!256259))

(declare-fun b!4250083 () Bool)

(declare-fun e!2639756 () Bool)

(declare-fun tp!1304021 () Bool)

(declare-fun inv!61860 (Conc!14181) Bool)

(assert (=> b!4250083 (= e!2639756 (and (inv!61860 (c!721736 (dynLambda!20175 (toChars!10601 (transformation!7970 (rule!11104 (h!52505 tokens!592)))) (value!247681 (h!52505 tokens!592))))) tp!1304021))))

(declare-fun result!312500 () Bool)

(declare-fun inv!61861 (BalanceConc!27956) Bool)

(assert (=> tb!256259 (= result!312500 (and (inv!61861 (dynLambda!20175 (toChars!10601 (transformation!7970 (rule!11104 (h!52505 tokens!592)))) (value!247681 (h!52505 tokens!592)))) e!2639756))))

(assert (= tb!256259 b!4250083))

(declare-fun m!4835015 () Bool)

(assert (=> b!4250083 m!4835015))

(declare-fun m!4835017 () Bool)

(assert (=> tb!256259 m!4835017))

(assert (=> b!4250077 t!352289))

(declare-fun b_and!336909 () Bool)

(assert (= b_and!336903 (and (=> t!352289 result!312500) b_and!336909)))

(declare-fun t!352291 () Bool)

(declare-fun tb!256261 () Bool)

(assert (=> (and b!4250070 (= (toChars!10601 (transformation!7970 (rule!11104 (h!52505 tokens!592)))) (toChars!10601 (transformation!7970 (rule!11104 (h!52505 tokens!592))))) t!352291) tb!256261))

(declare-fun result!312504 () Bool)

(assert (= result!312504 result!312500))

(assert (=> b!4250077 t!352291))

(declare-fun b_and!336911 () Bool)

(assert (= b_and!336907 (and (=> t!352291 result!312504) b_and!336911)))

(declare-fun m!4835019 () Bool)

(assert (=> d!1249882 m!4835019))

(declare-fun m!4835021 () Bool)

(assert (=> b!4250077 m!4835021))

(assert (=> b!4250077 m!4835021))

(declare-fun m!4835023 () Bool)

(assert (=> b!4250077 m!4835023))

(declare-fun m!4835025 () Bool)

(assert (=> b!4250078 m!4835025))

(assert (=> b!4250069 d!1249882))

(declare-fun d!1249884 () Bool)

(declare-fun lt!1508429 () Int)

(assert (=> d!1249884 (>= lt!1508429 0)))

(declare-fun e!2639759 () Int)

(assert (=> d!1249884 (= lt!1508429 e!2639759)))

(declare-fun c!721740 () Bool)

(assert (=> d!1249884 (= c!721740 ((_ is Nil!47083) shorterInput!62))))

(assert (=> d!1249884 (= (size!34470 shorterInput!62) lt!1508429)))

(declare-fun b!4250088 () Bool)

(assert (=> b!4250088 (= e!2639759 0)))

(declare-fun b!4250089 () Bool)

(assert (=> b!4250089 (= e!2639759 (+ 1 (size!34470 (t!352284 shorterInput!62))))))

(assert (= (and d!1249884 c!721740) b!4250088))

(assert (= (and d!1249884 (not c!721740)) b!4250089))

(declare-fun m!4835027 () Bool)

(assert (=> b!4250089 m!4835027))

(assert (=> b!4250058 d!1249884))

(declare-fun d!1249886 () Bool)

(declare-fun lt!1508430 () Int)

(assert (=> d!1249886 (>= lt!1508430 0)))

(declare-fun e!2639760 () Int)

(assert (=> d!1249886 (= lt!1508430 e!2639760)))

(declare-fun c!721741 () Bool)

(assert (=> d!1249886 (= c!721741 ((_ is Nil!47083) longerInput!62))))

(assert (=> d!1249886 (= (size!34470 longerInput!62) lt!1508430)))

(declare-fun b!4250090 () Bool)

(assert (=> b!4250090 (= e!2639760 0)))

(declare-fun b!4250091 () Bool)

(assert (=> b!4250091 (= e!2639760 (+ 1 (size!34470 (t!352284 longerInput!62))))))

(assert (= (and d!1249886 c!721741) b!4250090))

(assert (= (and d!1249886 (not c!721741)) b!4250091))

(declare-fun m!4835029 () Bool)

(assert (=> b!4250091 m!4835029))

(assert (=> b!4250058 d!1249886))

(declare-fun d!1249888 () Bool)

(assert (=> d!1249888 (= (inv!61855 (tag!8834 (rule!11104 (h!52505 tokens!592)))) (= (mod (str.len (value!247680 (tag!8834 (rule!11104 (h!52505 tokens!592))))) 2) 0))))

(assert (=> b!4250059 d!1249888))

(declare-fun d!1249890 () Bool)

(declare-fun res!1747213 () Bool)

(declare-fun e!2639763 () Bool)

(assert (=> d!1249890 (=> (not res!1747213) (not e!2639763))))

(declare-fun semiInverseModEq!3475 (Int Int) Bool)

(assert (=> d!1249890 (= res!1747213 (semiInverseModEq!3475 (toChars!10601 (transformation!7970 (rule!11104 (h!52505 tokens!592)))) (toValue!10742 (transformation!7970 (rule!11104 (h!52505 tokens!592))))))))

(assert (=> d!1249890 (= (inv!61858 (transformation!7970 (rule!11104 (h!52505 tokens!592)))) e!2639763)))

(declare-fun b!4250094 () Bool)

(declare-fun equivClasses!3374 (Int Int) Bool)

(assert (=> b!4250094 (= e!2639763 (equivClasses!3374 (toChars!10601 (transformation!7970 (rule!11104 (h!52505 tokens!592)))) (toValue!10742 (transformation!7970 (rule!11104 (h!52505 tokens!592))))))))

(assert (= (and d!1249890 res!1747213) b!4250094))

(declare-fun m!4835031 () Bool)

(assert (=> d!1249890 m!4835031))

(declare-fun m!4835033 () Bool)

(assert (=> b!4250094 m!4835033))

(assert (=> b!4250059 d!1249890))

(declare-fun b!4250135 () Bool)

(declare-fun e!2639791 () tuple2!44644)

(declare-datatypes ((tuple2!44646 0))(
  ( (tuple2!44647 (_1!25457 Token!14566) (_2!25457 List!47207)) )
))
(declare-datatypes ((Option!10103 0))(
  ( (None!10102) (Some!10102 (v!41060 tuple2!44646)) )
))
(declare-fun lt!1508438 () Option!10103)

(declare-fun lt!1508437 () tuple2!44644)

(assert (=> b!4250135 (= e!2639791 (tuple2!44645 (Cons!47085 (_1!25457 (v!41060 lt!1508438)) (_1!25456 lt!1508437)) (_2!25456 lt!1508437)))))

(assert (=> b!4250135 (= lt!1508437 (lexList!2071 thiss!21641 rules!2971 (_2!25457 (v!41060 lt!1508438))))))

(declare-fun b!4250136 () Bool)

(declare-fun e!2639790 () Bool)

(declare-fun e!2639789 () Bool)

(assert (=> b!4250136 (= e!2639790 e!2639789)))

(declare-fun res!1747229 () Bool)

(declare-fun lt!1508439 () tuple2!44644)

(assert (=> b!4250136 (= res!1747229 (< (size!34470 (_2!25456 lt!1508439)) (size!34470 longerInput!62)))))

(assert (=> b!4250136 (=> (not res!1747229) (not e!2639789))))

(declare-fun b!4250137 () Bool)

(assert (=> b!4250137 (= e!2639791 (tuple2!44645 Nil!47085 longerInput!62))))

(declare-fun b!4250138 () Bool)

(assert (=> b!4250138 (= e!2639790 (= (_2!25456 lt!1508439) longerInput!62))))

(declare-fun d!1249900 () Bool)

(assert (=> d!1249900 e!2639790))

(declare-fun c!721753 () Bool)

(declare-fun size!34472 (List!47209) Int)

(assert (=> d!1249900 (= c!721753 (> (size!34472 (_1!25456 lt!1508439)) 0))))

(assert (=> d!1249900 (= lt!1508439 e!2639791)))

(declare-fun c!721752 () Bool)

(assert (=> d!1249900 (= c!721752 ((_ is Some!10102) lt!1508438))))

(declare-fun maxPrefix!4520 (LexerInterface!7565 List!47210 List!47207) Option!10103)

(assert (=> d!1249900 (= lt!1508438 (maxPrefix!4520 thiss!21641 rules!2971 longerInput!62))))

(assert (=> d!1249900 (= (lexList!2071 thiss!21641 rules!2971 longerInput!62) lt!1508439)))

(declare-fun b!4250139 () Bool)

(declare-fun isEmpty!27858 (List!47209) Bool)

(assert (=> b!4250139 (= e!2639789 (not (isEmpty!27858 (_1!25456 lt!1508439))))))

(assert (= (and d!1249900 c!721752) b!4250135))

(assert (= (and d!1249900 (not c!721752)) b!4250137))

(assert (= (and d!1249900 c!721753) b!4250136))

(assert (= (and d!1249900 (not c!721753)) b!4250138))

(assert (= (and b!4250136 res!1747229) b!4250139))

(declare-fun m!4835061 () Bool)

(assert (=> b!4250135 m!4835061))

(declare-fun m!4835063 () Bool)

(assert (=> b!4250136 m!4835063))

(assert (=> b!4250136 m!4835001))

(declare-fun m!4835065 () Bool)

(assert (=> d!1249900 m!4835065))

(declare-fun m!4835067 () Bool)

(assert (=> d!1249900 m!4835067))

(declare-fun m!4835069 () Bool)

(assert (=> b!4250139 m!4835069))

(assert (=> b!4250072 d!1249900))

(declare-fun b!4250151 () Bool)

(declare-fun e!2639798 () Bool)

(declare-fun e!2639800 () Bool)

(assert (=> b!4250151 (= e!2639798 e!2639800)))

(declare-fun c!721759 () Bool)

(assert (=> b!4250151 (= c!721759 ((_ is IntegerValue!24601) (value!247681 (h!52505 tokens!592))))))

(declare-fun b!4250152 () Bool)

(declare-fun res!1747232 () Bool)

(declare-fun e!2639799 () Bool)

(assert (=> b!4250152 (=> res!1747232 e!2639799)))

(assert (=> b!4250152 (= res!1747232 (not ((_ is IntegerValue!24602) (value!247681 (h!52505 tokens!592)))))))

(assert (=> b!4250152 (= e!2639800 e!2639799)))

(declare-fun b!4250153 () Bool)

(declare-fun inv!17 (TokenValue!8200) Bool)

(assert (=> b!4250153 (= e!2639800 (inv!17 (value!247681 (h!52505 tokens!592))))))

(declare-fun b!4250154 () Bool)

(declare-fun inv!16 (TokenValue!8200) Bool)

(assert (=> b!4250154 (= e!2639798 (inv!16 (value!247681 (h!52505 tokens!592))))))

(declare-fun b!4250150 () Bool)

(declare-fun inv!15 (TokenValue!8200) Bool)

(assert (=> b!4250150 (= e!2639799 (inv!15 (value!247681 (h!52505 tokens!592))))))

(declare-fun d!1249912 () Bool)

(declare-fun c!721758 () Bool)

(assert (=> d!1249912 (= c!721758 ((_ is IntegerValue!24600) (value!247681 (h!52505 tokens!592))))))

(assert (=> d!1249912 (= (inv!21 (value!247681 (h!52505 tokens!592))) e!2639798)))

(assert (= (and d!1249912 c!721758) b!4250154))

(assert (= (and d!1249912 (not c!721758)) b!4250151))

(assert (= (and b!4250151 c!721759) b!4250153))

(assert (= (and b!4250151 (not c!721759)) b!4250152))

(assert (= (and b!4250152 (not res!1747232)) b!4250150))

(declare-fun m!4835071 () Bool)

(assert (=> b!4250153 m!4835071))

(declare-fun m!4835073 () Bool)

(assert (=> b!4250154 m!4835073))

(declare-fun m!4835075 () Bool)

(assert (=> b!4250150 m!4835075))

(assert (=> b!4250066 d!1249912))

(declare-fun d!1249914 () Bool)

(assert (=> d!1249914 (= (inv!61855 (tag!8834 (h!52506 rules!2971))) (= (mod (str.len (value!247680 (tag!8834 (h!52506 rules!2971)))) 2) 0))))

(assert (=> b!4250071 d!1249914))

(declare-fun d!1249916 () Bool)

(declare-fun res!1747233 () Bool)

(declare-fun e!2639801 () Bool)

(assert (=> d!1249916 (=> (not res!1747233) (not e!2639801))))

(assert (=> d!1249916 (= res!1747233 (semiInverseModEq!3475 (toChars!10601 (transformation!7970 (h!52506 rules!2971))) (toValue!10742 (transformation!7970 (h!52506 rules!2971)))))))

(assert (=> d!1249916 (= (inv!61858 (transformation!7970 (h!52506 rules!2971))) e!2639801)))

(declare-fun b!4250155 () Bool)

(assert (=> b!4250155 (= e!2639801 (equivClasses!3374 (toChars!10601 (transformation!7970 (h!52506 rules!2971))) (toValue!10742 (transformation!7970 (h!52506 rules!2971)))))))

(assert (= (and d!1249916 res!1747233) b!4250155))

(declare-fun m!4835077 () Bool)

(assert (=> d!1249916 m!4835077))

(declare-fun m!4835079 () Bool)

(assert (=> b!4250155 m!4835079))

(assert (=> b!4250071 d!1249916))

(declare-fun d!1249918 () Bool)

(declare-fun res!1747236 () Bool)

(declare-fun e!2639806 () Bool)

(assert (=> d!1249918 (=> (not res!1747236) (not e!2639806))))

(declare-fun rulesValid!3096 (LexerInterface!7565 List!47210) Bool)

(assert (=> d!1249918 (= res!1747236 (rulesValid!3096 thiss!21641 rules!2971))))

(assert (=> d!1249918 (= (rulesInvariant!6676 thiss!21641 rules!2971) e!2639806)))

(declare-fun b!4250162 () Bool)

(declare-datatypes ((List!47211 0))(
  ( (Nil!47087) (Cons!47087 (h!52507 String!54930) (t!352304 List!47211)) )
))
(declare-fun noDuplicateTag!3257 (LexerInterface!7565 List!47210 List!47211) Bool)

(assert (=> b!4250162 (= e!2639806 (noDuplicateTag!3257 thiss!21641 rules!2971 Nil!47087))))

(assert (= (and d!1249918 res!1747236) b!4250162))

(declare-fun m!4835081 () Bool)

(assert (=> d!1249918 m!4835081))

(declare-fun m!4835083 () Bool)

(assert (=> b!4250162 m!4835083))

(assert (=> b!4250068 d!1249918))

(declare-fun d!1249920 () Bool)

(assert (=> d!1249920 (= (isEmpty!27856 longerInput!62) ((_ is Nil!47083) longerInput!62))))

(assert (=> b!4250057 d!1249920))

(declare-fun b!4250191 () Bool)

(declare-fun b_free!126315 () Bool)

(declare-fun b_next!127019 () Bool)

(assert (=> b!4250191 (= b_free!126315 (not b_next!127019))))

(declare-fun tp!1304035 () Bool)

(declare-fun b_and!336917 () Bool)

(assert (=> b!4250191 (= tp!1304035 b_and!336917)))

(declare-fun b_free!126317 () Bool)

(declare-fun b_next!127021 () Bool)

(assert (=> b!4250191 (= b_free!126317 (not b_next!127021))))

(declare-fun t!352297 () Bool)

(declare-fun tb!256267 () Bool)

(assert (=> (and b!4250191 (= (toChars!10601 (transformation!7970 (rule!11104 (h!52505 (t!352286 tokens!592))))) (toChars!10601 (transformation!7970 (rule!11104 (h!52505 tokens!592))))) t!352297) tb!256267))

(declare-fun result!312514 () Bool)

(assert (= result!312514 result!312500))

(assert (=> b!4250077 t!352297))

(declare-fun tp!1304036 () Bool)

(declare-fun b_and!336919 () Bool)

(assert (=> b!4250191 (= tp!1304036 (and (=> t!352297 result!312514) b_and!336919))))

(declare-fun e!2639831 () Bool)

(assert (=> b!4250191 (= e!2639831 (and tp!1304035 tp!1304036))))

(declare-fun e!2639829 () Bool)

(declare-fun b!4250188 () Bool)

(declare-fun e!2639833 () Bool)

(declare-fun tp!1304037 () Bool)

(assert (=> b!4250188 (= e!2639833 (and (inv!61859 (h!52505 (t!352286 tokens!592))) e!2639829 tp!1304037))))

(assert (=> b!4250069 (= tp!1304016 e!2639833)))

(declare-fun e!2639830 () Bool)

(declare-fun tp!1304039 () Bool)

(declare-fun b!4250189 () Bool)

(assert (=> b!4250189 (= e!2639829 (and (inv!21 (value!247681 (h!52505 (t!352286 tokens!592)))) e!2639830 tp!1304039))))

(declare-fun b!4250190 () Bool)

(declare-fun tp!1304038 () Bool)

(assert (=> b!4250190 (= e!2639830 (and tp!1304038 (inv!61855 (tag!8834 (rule!11104 (h!52505 (t!352286 tokens!592))))) (inv!61858 (transformation!7970 (rule!11104 (h!52505 (t!352286 tokens!592))))) e!2639831))))

(assert (= b!4250190 b!4250191))

(assert (= b!4250189 b!4250190))

(assert (= b!4250188 b!4250189))

(assert (= (and b!4250069 ((_ is Cons!47085) (t!352286 tokens!592))) b!4250188))

(declare-fun m!4835095 () Bool)

(assert (=> b!4250188 m!4835095))

(declare-fun m!4835097 () Bool)

(assert (=> b!4250189 m!4835097))

(declare-fun m!4835099 () Bool)

(assert (=> b!4250190 m!4835099))

(declare-fun m!4835101 () Bool)

(assert (=> b!4250190 m!4835101))

(declare-fun b!4250208 () Bool)

(declare-fun b_free!126319 () Bool)

(declare-fun b_next!127023 () Bool)

(assert (=> b!4250208 (= b_free!126319 (not b_next!127023))))

(declare-fun tp!1304048 () Bool)

(declare-fun b_and!336921 () Bool)

(assert (=> b!4250208 (= tp!1304048 b_and!336921)))

(declare-fun b_free!126321 () Bool)

(declare-fun b_next!127025 () Bool)

(assert (=> b!4250208 (= b_free!126321 (not b_next!127025))))

(declare-fun tb!256269 () Bool)

(declare-fun t!352299 () Bool)

(assert (=> (and b!4250208 (= (toChars!10601 (transformation!7970 (h!52506 (t!352287 rules!2971)))) (toChars!10601 (transformation!7970 (rule!11104 (h!52505 tokens!592))))) t!352299) tb!256269))

(declare-fun result!312518 () Bool)

(assert (= result!312518 result!312500))

(assert (=> b!4250077 t!352299))

(declare-fun tp!1304049 () Bool)

(declare-fun b_and!336923 () Bool)

(assert (=> b!4250208 (= tp!1304049 (and (=> t!352299 result!312518) b_and!336923))))

(declare-fun e!2639846 () Bool)

(assert (=> b!4250208 (= e!2639846 (and tp!1304048 tp!1304049))))

(declare-fun tp!1304051 () Bool)

(declare-fun b!4250207 () Bool)

(declare-fun e!2639847 () Bool)

(assert (=> b!4250207 (= e!2639847 (and tp!1304051 (inv!61855 (tag!8834 (h!52506 (t!352287 rules!2971)))) (inv!61858 (transformation!7970 (h!52506 (t!352287 rules!2971)))) e!2639846))))

(declare-fun b!4250206 () Bool)

(declare-fun e!2639849 () Bool)

(declare-fun tp!1304050 () Bool)

(assert (=> b!4250206 (= e!2639849 (and e!2639847 tp!1304050))))

(assert (=> b!4250065 (= tp!1304017 e!2639849)))

(assert (= b!4250207 b!4250208))

(assert (= b!4250206 b!4250207))

(assert (= (and b!4250065 ((_ is Cons!47086) (t!352287 rules!2971))) b!4250206))

(declare-fun m!4835107 () Bool)

(assert (=> b!4250207 m!4835107))

(declare-fun m!4835111 () Bool)

(assert (=> b!4250207 m!4835111))

(declare-fun b!4250239 () Bool)

(declare-fun e!2639859 () Bool)

(declare-fun tp!1304078 () Bool)

(declare-fun tp!1304079 () Bool)

(assert (=> b!4250239 (= e!2639859 (and tp!1304078 tp!1304079))))

(assert (=> b!4250059 (= tp!1304014 e!2639859)))

(declare-fun b!4250236 () Bool)

(assert (=> b!4250236 (= e!2639859 tp_is_empty!22741)))

(declare-fun b!4250237 () Bool)

(declare-fun tp!1304076 () Bool)

(declare-fun tp!1304077 () Bool)

(assert (=> b!4250237 (= e!2639859 (and tp!1304076 tp!1304077))))

(declare-fun b!4250238 () Bool)

(declare-fun tp!1304080 () Bool)

(assert (=> b!4250238 (= e!2639859 tp!1304080)))

(assert (= (and b!4250059 ((_ is ElementMatch!12875) (regex!7970 (rule!11104 (h!52505 tokens!592))))) b!4250236))

(assert (= (and b!4250059 ((_ is Concat!21076) (regex!7970 (rule!11104 (h!52505 tokens!592))))) b!4250237))

(assert (= (and b!4250059 ((_ is Star!12875) (regex!7970 (rule!11104 (h!52505 tokens!592))))) b!4250238))

(assert (= (and b!4250059 ((_ is Union!12875) (regex!7970 (rule!11104 (h!52505 tokens!592))))) b!4250239))

(declare-fun b!4250252 () Bool)

(declare-fun e!2639865 () Bool)

(declare-fun tp!1304088 () Bool)

(assert (=> b!4250252 (= e!2639865 (and tp_is_empty!22741 tp!1304088))))

(assert (=> b!4250061 (= tp!1304012 e!2639865)))

(assert (= (and b!4250061 ((_ is Cons!47083) (t!352284 shorterInput!62))) b!4250252))

(declare-fun b!4250253 () Bool)

(declare-fun e!2639866 () Bool)

(declare-fun tp!1304089 () Bool)

(assert (=> b!4250253 (= e!2639866 (and tp_is_empty!22741 tp!1304089))))

(assert (=> b!4250066 (= tp!1304007 e!2639866)))

(assert (= (and b!4250066 ((_ is Cons!47083) (originalCharacters!8314 (h!52505 tokens!592)))) b!4250253))

(declare-fun b!4250257 () Bool)

(declare-fun e!2639867 () Bool)

(declare-fun tp!1304092 () Bool)

(declare-fun tp!1304093 () Bool)

(assert (=> b!4250257 (= e!2639867 (and tp!1304092 tp!1304093))))

(assert (=> b!4250071 (= tp!1304010 e!2639867)))

(declare-fun b!4250254 () Bool)

(assert (=> b!4250254 (= e!2639867 tp_is_empty!22741)))

(declare-fun b!4250255 () Bool)

(declare-fun tp!1304090 () Bool)

(declare-fun tp!1304091 () Bool)

(assert (=> b!4250255 (= e!2639867 (and tp!1304090 tp!1304091))))

(declare-fun b!4250256 () Bool)

(declare-fun tp!1304094 () Bool)

(assert (=> b!4250256 (= e!2639867 tp!1304094)))

(assert (= (and b!4250071 ((_ is ElementMatch!12875) (regex!7970 (h!52506 rules!2971)))) b!4250254))

(assert (= (and b!4250071 ((_ is Concat!21076) (regex!7970 (h!52506 rules!2971)))) b!4250255))

(assert (= (and b!4250071 ((_ is Star!12875) (regex!7970 (h!52506 rules!2971)))) b!4250256))

(assert (= (and b!4250071 ((_ is Union!12875) (regex!7970 (h!52506 rules!2971)))) b!4250257))

(declare-fun b!4250260 () Bool)

(declare-fun e!2639870 () Bool)

(declare-fun tp!1304095 () Bool)

(assert (=> b!4250260 (= e!2639870 (and tp_is_empty!22741 tp!1304095))))

(assert (=> b!4250062 (= tp!1304011 e!2639870)))

(assert (= (and b!4250062 ((_ is Cons!47083) (t!352284 longerInput!62))) b!4250260))

(declare-fun b!4250261 () Bool)

(declare-fun e!2639871 () Bool)

(declare-fun tp!1304096 () Bool)

(assert (=> b!4250261 (= e!2639871 (and tp_is_empty!22741 tp!1304096))))

(assert (=> b!4250067 (= tp!1304008 e!2639871)))

(assert (= (and b!4250067 ((_ is Cons!47083) (t!352284 suffix!1284))) b!4250261))

(declare-fun b_lambda!125199 () Bool)

(assert (= b_lambda!125195 (or (and b!4250063 b_free!126309 (= (toChars!10601 (transformation!7970 (h!52506 rules!2971))) (toChars!10601 (transformation!7970 (rule!11104 (h!52505 tokens!592)))))) (and b!4250070 b_free!126313) (and b!4250191 b_free!126317 (= (toChars!10601 (transformation!7970 (rule!11104 (h!52505 (t!352286 tokens!592))))) (toChars!10601 (transformation!7970 (rule!11104 (h!52505 tokens!592)))))) (and b!4250208 b_free!126321 (= (toChars!10601 (transformation!7970 (h!52506 (t!352287 rules!2971)))) (toChars!10601 (transformation!7970 (rule!11104 (h!52505 tokens!592)))))) b_lambda!125199)))

(check-sat (not b!4250150) (not b_next!127017) (not b!4250091) (not b_next!127025) (not b!4250207) (not b!4250189) (not b!4250136) b_and!336917 (not b!4250188) (not b!4250239) (not b_next!127023) (not b!4250078) (not b!4250238) (not b!4250237) (not d!1249916) tp_is_empty!22741 (not b!4250083) (not d!1249890) (not b!4250190) (not b!4250094) (not d!1249882) (not tb!256259) (not b!4250162) b_and!336909 (not b!4250252) b_and!336923 (not b!4250260) (not b!4250206) (not b!4250135) b_and!336921 (not b_next!127013) (not b!4250155) b_and!336905 (not b_next!127019) b_and!336901 (not b_next!127015) (not d!1249918) b_and!336911 (not b_next!127011) (not b!4250255) b_and!336919 (not b!4250257) (not b!4250253) (not b_next!127021) (not b!4250077) (not d!1249900) (not b_lambda!125199) (not b!4250154) (not b!4250261) (not b!4250153) (not b!4250089) (not b!4250139) (not b!4250256))
(check-sat (not b_next!127023) (not b_next!127017) (not b_next!127025) b_and!336909 b_and!336923 b_and!336905 b_and!336917 b_and!336919 (not b_next!127021) b_and!336921 (not b_next!127013) (not b_next!127019) b_and!336901 (not b_next!127015) b_and!336911 (not b_next!127011))
