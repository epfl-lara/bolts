; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104378 () Bool)

(assert start!104378)

(declare-fun b!1179682 () Bool)

(declare-fun b_free!27997 () Bool)

(declare-fun b_next!28701 () Bool)

(assert (=> b!1179682 (= b_free!27997 (not b_next!28701))))

(declare-fun tp!335821 () Bool)

(declare-fun b_and!80941 () Bool)

(assert (=> b!1179682 (= tp!335821 b_and!80941)))

(declare-fun b_free!27999 () Bool)

(declare-fun b_next!28703 () Bool)

(assert (=> b!1179682 (= b_free!27999 (not b_next!28703))))

(declare-fun tp!335820 () Bool)

(declare-fun b_and!80943 () Bool)

(assert (=> b!1179682 (= tp!335820 b_and!80943)))

(declare-fun b!1179684 () Bool)

(declare-fun b_free!28001 () Bool)

(declare-fun b_next!28705 () Bool)

(assert (=> b!1179684 (= b_free!28001 (not b_next!28705))))

(declare-fun tp!335822 () Bool)

(declare-fun b_and!80945 () Bool)

(assert (=> b!1179684 (= tp!335822 b_and!80945)))

(declare-fun b_free!28003 () Bool)

(declare-fun b_next!28707 () Bool)

(assert (=> b!1179684 (= b_free!28003 (not b_next!28707))))

(declare-fun tp!335819 () Bool)

(declare-fun b_and!80947 () Bool)

(assert (=> b!1179684 (= tp!335819 b_and!80947)))

(declare-fun b!1179679 () Bool)

(declare-fun e!756979 () Bool)

(declare-datatypes ((C!6932 0))(
  ( (C!6933 (val!3762 Int)) )
))
(declare-datatypes ((List!11732 0))(
  ( (Nil!11708) (Cons!11708 (h!17109 C!6932) (t!111302 List!11732)) )
))
(declare-datatypes ((IArray!7683 0))(
  ( (IArray!7684 (innerList!3899 List!11732)) )
))
(declare-datatypes ((Conc!3839 0))(
  ( (Node!3839 (left!10219 Conc!3839) (right!10549 Conc!3839) (csize!7908 Int) (cheight!4050 Int)) (Leaf!5888 (xs!6544 IArray!7683) (csize!7909 Int)) (Empty!3839) )
))
(declare-datatypes ((List!11733 0))(
  ( (Nil!11709) (Cons!11709 (h!17110 (_ BitVec 16)) (t!111303 List!11733)) )
))
(declare-datatypes ((BalanceConc!7700 0))(
  ( (BalanceConc!7701 (c!196646 Conc!3839)) )
))
(declare-datatypes ((TokenValue!2103 0))(
  ( (FloatLiteralValue!4206 (text!15166 List!11733)) (TokenValueExt!2102 (__x!7917 Int)) (Broken!10515 (value!66085 List!11733)) (Object!2126) (End!2103) (Def!2103) (Underscore!2103) (Match!2103) (Else!2103) (Error!2103) (Case!2103) (If!2103) (Extends!2103) (Abstract!2103) (Class!2103) (Val!2103) (DelimiterValue!4206 (del!2163 List!11733)) (KeywordValue!2109 (value!66086 List!11733)) (CommentValue!4206 (value!66087 List!11733)) (WhitespaceValue!4206 (value!66088 List!11733)) (IndentationValue!2103 (value!66089 List!11733)) (String!14182) (Int32!2103) (Broken!10516 (value!66090 List!11733)) (Boolean!2104) (Unit!18033) (OperatorValue!2106 (op!2163 List!11733)) (IdentifierValue!4206 (value!66091 List!11733)) (IdentifierValue!4207 (value!66092 List!11733)) (WhitespaceValue!4207 (value!66093 List!11733)) (True!4206) (False!4206) (Broken!10517 (value!66094 List!11733)) (Broken!10518 (value!66095 List!11733)) (True!4207) (RightBrace!2103) (RightBracket!2103) (Colon!2103) (Null!2103) (Comma!2103) (LeftBracket!2103) (False!4207) (LeftBrace!2103) (ImaginaryLiteralValue!2103 (text!15167 List!11733)) (StringLiteralValue!6309 (value!66096 List!11733)) (EOFValue!2103 (value!66097 List!11733)) (IdentValue!2103 (value!66098 List!11733)) (DelimiterValue!4207 (value!66099 List!11733)) (DedentValue!2103 (value!66100 List!11733)) (NewLineValue!2103 (value!66101 List!11733)) (IntegerValue!6309 (value!66102 (_ BitVec 32)) (text!15168 List!11733)) (IntegerValue!6310 (value!66103 Int) (text!15169 List!11733)) (Times!2103) (Or!2103) (Equal!2103) (Minus!2103) (Broken!10519 (value!66104 List!11733)) (And!2103) (Div!2103) (LessEqual!2103) (Mod!2103) (Concat!5410) (Not!2103) (Plus!2103) (SpaceValue!2103 (value!66105 List!11733)) (IntegerValue!6311 (value!66106 Int) (text!15170 List!11733)) (StringLiteralValue!6310 (text!15171 List!11733)) (FloatLiteralValue!4207 (text!15172 List!11733)) (BytesLiteralValue!2103 (value!66107 List!11733)) (CommentValue!4207 (value!66108 List!11733)) (StringLiteralValue!6311 (value!66109 List!11733)) (ErrorTokenValue!2103 (msg!2164 List!11733)) )
))
(declare-datatypes ((Regex!3307 0))(
  ( (ElementMatch!3307 (c!196647 C!6932)) (Concat!5411 (regOne!7126 Regex!3307) (regTwo!7126 Regex!3307)) (EmptyExpr!3307) (Star!3307 (reg!3636 Regex!3307)) (EmptyLang!3307) (Union!3307 (regOne!7127 Regex!3307) (regTwo!7127 Regex!3307)) )
))
(declare-datatypes ((String!14183 0))(
  ( (String!14184 (value!66110 String)) )
))
(declare-datatypes ((TokenValueInjection!3906 0))(
  ( (TokenValueInjection!3907 (toValue!3142 Int) (toChars!3001 Int)) )
))
(declare-datatypes ((Rule!3874 0))(
  ( (Rule!3875 (regex!2037 Regex!3307) (tag!2299 String!14183) (isSeparator!2037 Bool) (transformation!2037 TokenValueInjection!3906)) )
))
(declare-datatypes ((List!11734 0))(
  ( (Nil!11710) (Cons!11710 (h!17111 Rule!3874) (t!111304 List!11734)) )
))
(declare-fun rules!4386 () List!11734)

(declare-datatypes ((LexerInterface!1732 0))(
  ( (LexerInterfaceExt!1729 (__x!7918 Int)) (Lexer!1730) )
))
(declare-fun rulesInvariant!1606 (LexerInterface!1732 List!11734) Bool)

(assert (=> b!1179679 (= e!756979 (not (rulesInvariant!1606 Lexer!1730 rules!4386)))))

(declare-datatypes ((Token!3736 0))(
  ( (Token!3737 (value!66111 TokenValue!2103) (rule!3458 Rule!3874) (size!9269 Int) (originalCharacters!2591 List!11732)) )
))
(declare-datatypes ((List!11735 0))(
  ( (Nil!11711) (Cons!11711 (h!17112 Token!3736) (t!111305 List!11735)) )
))
(declare-fun lt!406370 () List!11735)

(declare-fun l!6534 () List!11735)

(declare-fun subseq!295 (List!11735 List!11735) Bool)

(assert (=> b!1179679 (subseq!295 lt!406370 l!6534)))

(declare-datatypes ((Unit!18034 0))(
  ( (Unit!18035) )
))
(declare-fun lt!406369 () Unit!18034)

(declare-fun i!1621 () Int)

(declare-fun lemmaDropSubseq!58 (List!11735 Int) Unit!18034)

(assert (=> b!1179679 (= lt!406369 (lemmaDropSubseq!58 l!6534 i!1621))))

(declare-fun thiss!27592 () LexerInterface!1732)

(declare-fun e!756990 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!598 (LexerInterface!1732 List!11734 List!11735) Bool)

(assert (=> b!1179679 (= (rulesProduceEachTokenIndividuallyList!598 thiss!27592 rules!4386 lt!406370) e!756990)))

(declare-fun res!533249 () Bool)

(assert (=> b!1179679 (=> res!533249 e!756990)))

(get-info :version)

(assert (=> b!1179679 (= res!533249 (not ((_ is Cons!11711) lt!406370)))))

(declare-fun drop!517 (List!11735 Int) List!11735)

(assert (=> b!1179679 (= lt!406370 (drop!517 l!6534 i!1621))))

(declare-fun b!1179680 () Bool)

(declare-fun e!756982 () Bool)

(declare-fun e!756987 () Bool)

(declare-fun tp!335816 () Bool)

(assert (=> b!1179680 (= e!756982 (and e!756987 tp!335816))))

(declare-fun b!1179681 () Bool)

(declare-fun e!756986 () Bool)

(declare-fun tp!335815 () Bool)

(declare-fun inv!15526 (String!14183) Bool)

(declare-fun inv!15529 (TokenValueInjection!3906) Bool)

(assert (=> b!1179681 (= e!756987 (and tp!335815 (inv!15526 (tag!2299 (h!17111 rules!4386))) (inv!15529 (transformation!2037 (h!17111 rules!4386))) e!756986))))

(declare-fun e!756988 () Bool)

(assert (=> b!1179682 (= e!756988 (and tp!335821 tp!335820))))

(declare-fun e!756983 () Bool)

(declare-fun b!1179683 () Bool)

(declare-fun tp!335814 () Bool)

(declare-fun e!756981 () Bool)

(declare-fun inv!15530 (Token!3736) Bool)

(assert (=> b!1179683 (= e!756983 (and (inv!15530 (h!17112 l!6534)) e!756981 tp!335814))))

(assert (=> b!1179684 (= e!756986 (and tp!335822 tp!335819))))

(declare-fun b!1179685 () Bool)

(declare-fun res!533242 () Bool)

(assert (=> b!1179685 (=> (not res!533242) (not e!756979))))

(declare-fun isEmpty!7078 (List!11734) Bool)

(assert (=> b!1179685 (= res!533242 (not (isEmpty!7078 rules!4386)))))

(declare-fun res!533248 () Bool)

(assert (=> start!104378 (=> (not res!533248) (not e!756979))))

(assert (=> start!104378 (= res!533248 ((_ is Lexer!1730) thiss!27592))))

(assert (=> start!104378 e!756979))

(assert (=> start!104378 true))

(assert (=> start!104378 e!756982))

(assert (=> start!104378 e!756983))

(declare-fun b!1179686 () Bool)

(declare-fun e!756991 () Bool)

(assert (=> b!1179686 (= e!756990 e!756991)))

(declare-fun res!533245 () Bool)

(assert (=> b!1179686 (=> (not res!533245) (not e!756991))))

(declare-fun rulesProduceIndividualToken!765 (LexerInterface!1732 List!11734 Token!3736) Bool)

(assert (=> b!1179686 (= res!533245 (rulesProduceIndividualToken!765 thiss!27592 rules!4386 (h!17112 lt!406370)))))

(declare-fun tp!335817 () Bool)

(declare-fun e!756984 () Bool)

(declare-fun b!1179687 () Bool)

(assert (=> b!1179687 (= e!756984 (and tp!335817 (inv!15526 (tag!2299 (rule!3458 (h!17112 l!6534)))) (inv!15529 (transformation!2037 (rule!3458 (h!17112 l!6534)))) e!756988))))

(declare-fun b!1179688 () Bool)

(declare-fun res!533243 () Bool)

(assert (=> b!1179688 (=> (not res!533243) (not e!756979))))

(assert (=> b!1179688 (= res!533243 ((_ is Nil!11711) l!6534))))

(declare-fun tp!335818 () Bool)

(declare-fun b!1179689 () Bool)

(declare-fun inv!21 (TokenValue!2103) Bool)

(assert (=> b!1179689 (= e!756981 (and (inv!21 (value!66111 (h!17112 l!6534))) e!756984 tp!335818))))

(declare-fun b!1179690 () Bool)

(declare-fun res!533247 () Bool)

(assert (=> b!1179690 (=> (not res!533247) (not e!756979))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!126 (LexerInterface!1732 List!11735 List!11734) Bool)

(assert (=> b!1179690 (= res!533247 (tokensListTwoByTwoPredicateSeparableList!126 thiss!27592 l!6534 rules!4386))))

(declare-fun b!1179691 () Bool)

(declare-fun res!533244 () Bool)

(assert (=> b!1179691 (=> (not res!533244) (not e!756979))))

(assert (=> b!1179691 (= res!533244 (rulesInvariant!1606 thiss!27592 rules!4386))))

(declare-fun b!1179692 () Bool)

(declare-fun res!533246 () Bool)

(assert (=> b!1179692 (=> (not res!533246) (not e!756979))))

(assert (=> b!1179692 (= res!533246 (rulesProduceEachTokenIndividuallyList!598 thiss!27592 rules!4386 l!6534))))

(declare-fun b!1179693 () Bool)

(assert (=> b!1179693 (= e!756991 (rulesProduceEachTokenIndividuallyList!598 thiss!27592 rules!4386 (t!111305 lt!406370)))))

(assert (= (and start!104378 res!533248) b!1179685))

(assert (= (and b!1179685 res!533242) b!1179691))

(assert (= (and b!1179691 res!533244) b!1179692))

(assert (= (and b!1179692 res!533246) b!1179690))

(assert (= (and b!1179690 res!533247) b!1179688))

(assert (= (and b!1179688 res!533243) b!1179679))

(assert (= (and b!1179679 (not res!533249)) b!1179686))

(assert (= (and b!1179686 res!533245) b!1179693))

(assert (= b!1179681 b!1179684))

(assert (= b!1179680 b!1179681))

(assert (= (and start!104378 ((_ is Cons!11710) rules!4386)) b!1179680))

(assert (= b!1179687 b!1179682))

(assert (= b!1179689 b!1179687))

(assert (= b!1179683 b!1179689))

(assert (= (and start!104378 ((_ is Cons!11711) l!6534)) b!1179683))

(declare-fun m!1356027 () Bool)

(assert (=> b!1179686 m!1356027))

(declare-fun m!1356029 () Bool)

(assert (=> b!1179692 m!1356029))

(declare-fun m!1356031 () Bool)

(assert (=> b!1179689 m!1356031))

(declare-fun m!1356033 () Bool)

(assert (=> b!1179691 m!1356033))

(declare-fun m!1356035 () Bool)

(assert (=> b!1179690 m!1356035))

(declare-fun m!1356037 () Bool)

(assert (=> b!1179693 m!1356037))

(declare-fun m!1356039 () Bool)

(assert (=> b!1179685 m!1356039))

(declare-fun m!1356041 () Bool)

(assert (=> b!1179683 m!1356041))

(declare-fun m!1356043 () Bool)

(assert (=> b!1179681 m!1356043))

(declare-fun m!1356045 () Bool)

(assert (=> b!1179681 m!1356045))

(declare-fun m!1356047 () Bool)

(assert (=> b!1179687 m!1356047))

(declare-fun m!1356049 () Bool)

(assert (=> b!1179687 m!1356049))

(declare-fun m!1356051 () Bool)

(assert (=> b!1179679 m!1356051))

(declare-fun m!1356053 () Bool)

(assert (=> b!1179679 m!1356053))

(declare-fun m!1356055 () Bool)

(assert (=> b!1179679 m!1356055))

(declare-fun m!1356057 () Bool)

(assert (=> b!1179679 m!1356057))

(declare-fun m!1356059 () Bool)

(assert (=> b!1179679 m!1356059))

(check-sat b_and!80945 (not b_next!28705) (not b!1179689) (not b!1179692) (not b_next!28701) b_and!80941 (not b!1179690) (not b!1179679) (not b!1179693) (not b_next!28703) (not b!1179683) (not b!1179681) b_and!80943 (not b!1179680) (not b!1179687) (not b!1179685) (not b!1179686) (not b!1179691) (not b_next!28707) b_and!80947)
(check-sat b_and!80945 (not b_next!28705) (not b_next!28703) b_and!80943 (not b_next!28701) b_and!80941 (not b_next!28707) b_and!80947)
