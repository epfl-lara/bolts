; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!406558 () Bool)

(assert start!406558)

(declare-fun b!4246895 () Bool)

(declare-fun b_free!126099 () Bool)

(declare-fun b_next!126803 () Bool)

(assert (=> b!4246895 (= b_free!126099 (not b_next!126803))))

(declare-fun tp!1302727 () Bool)

(declare-fun b_and!336469 () Bool)

(assert (=> b!4246895 (= tp!1302727 b_and!336469)))

(declare-fun b_free!126101 () Bool)

(declare-fun b_next!126805 () Bool)

(assert (=> b!4246895 (= b_free!126101 (not b_next!126805))))

(declare-fun tp!1302725 () Bool)

(declare-fun b_and!336471 () Bool)

(assert (=> b!4246895 (= tp!1302725 b_and!336471)))

(declare-fun b!4246881 () Bool)

(declare-fun b_free!126103 () Bool)

(declare-fun b_next!126807 () Bool)

(assert (=> b!4246881 (= b_free!126103 (not b_next!126807))))

(declare-fun tp!1302733 () Bool)

(declare-fun b_and!336473 () Bool)

(assert (=> b!4246881 (= tp!1302733 b_and!336473)))

(declare-fun b_free!126105 () Bool)

(declare-fun b_next!126809 () Bool)

(assert (=> b!4246881 (= b_free!126105 (not b_next!126809))))

(declare-fun tp!1302730 () Bool)

(declare-fun b_and!336475 () Bool)

(assert (=> b!4246881 (= tp!1302730 b_and!336475)))

(declare-fun b!4246877 () Bool)

(declare-fun e!2637678 () Bool)

(declare-fun e!2637677 () Bool)

(declare-fun tp!1302728 () Bool)

(assert (=> b!4246877 (= e!2637678 (and e!2637677 tp!1302728))))

(declare-fun b!4246878 () Bool)

(declare-fun e!2637688 () Bool)

(declare-fun e!2637676 () Bool)

(assert (=> b!4246878 (= e!2637688 e!2637676)))

(declare-fun res!1745914 () Bool)

(assert (=> b!4246878 (=> (not res!1745914) (not e!2637676))))

(declare-datatypes ((List!47137 0))(
  ( (Nil!47013) (Cons!47013 (h!52433 (_ BitVec 16)) (t!351802 List!47137)) )
))
(declare-datatypes ((TokenValue!8184 0))(
  ( (FloatLiteralValue!16368 (text!57733 List!47137)) (TokenValueExt!8183 (__x!28591 Int)) (Broken!40920 (value!247199 List!47137)) (Object!8307) (End!8184) (Def!8184) (Underscore!8184) (Match!8184) (Else!8184) (Error!8184) (Case!8184) (If!8184) (Extends!8184) (Abstract!8184) (Class!8184) (Val!8184) (DelimiterValue!16368 (del!8244 List!47137)) (KeywordValue!8190 (value!247200 List!47137)) (CommentValue!16368 (value!247201 List!47137)) (WhitespaceValue!16368 (value!247202 List!47137)) (IndentationValue!8184 (value!247203 List!47137)) (String!54849) (Int32!8184) (Broken!40921 (value!247204 List!47137)) (Boolean!8185) (Unit!66030) (OperatorValue!8187 (op!8244 List!47137)) (IdentifierValue!16368 (value!247205 List!47137)) (IdentifierValue!16369 (value!247206 List!47137)) (WhitespaceValue!16369 (value!247207 List!47137)) (True!16368) (False!16368) (Broken!40922 (value!247208 List!47137)) (Broken!40923 (value!247209 List!47137)) (True!16369) (RightBrace!8184) (RightBracket!8184) (Colon!8184) (Null!8184) (Comma!8184) (LeftBracket!8184) (False!16369) (LeftBrace!8184) (ImaginaryLiteralValue!8184 (text!57734 List!47137)) (StringLiteralValue!24552 (value!247210 List!47137)) (EOFValue!8184 (value!247211 List!47137)) (IdentValue!8184 (value!247212 List!47137)) (DelimiterValue!16369 (value!247213 List!47137)) (DedentValue!8184 (value!247214 List!47137)) (NewLineValue!8184 (value!247215 List!47137)) (IntegerValue!24552 (value!247216 (_ BitVec 32)) (text!57735 List!47137)) (IntegerValue!24553 (value!247217 Int) (text!57736 List!47137)) (Times!8184) (Or!8184) (Equal!8184) (Minus!8184) (Broken!40924 (value!247218 List!47137)) (And!8184) (Div!8184) (LessEqual!8184) (Mod!8184) (Concat!21043) (Not!8184) (Plus!8184) (SpaceValue!8184 (value!247219 List!47137)) (IntegerValue!24554 (value!247220 Int) (text!57737 List!47137)) (StringLiteralValue!24553 (text!57738 List!47137)) (FloatLiteralValue!16369 (text!57739 List!47137)) (BytesLiteralValue!8184 (value!247221 List!47137)) (CommentValue!16369 (value!247222 List!47137)) (StringLiteralValue!24554 (value!247223 List!47137)) (ErrorTokenValue!8184 (msg!8245 List!47137)) )
))
(declare-datatypes ((C!25916 0))(
  ( (C!25917 (val!15148 Int)) )
))
(declare-datatypes ((List!47138 0))(
  ( (Nil!47014) (Cons!47014 (h!52434 C!25916) (t!351803 List!47138)) )
))
(declare-datatypes ((IArray!28335 0))(
  ( (IArray!28336 (innerList!14225 List!47138)) )
))
(declare-datatypes ((Conc!14165 0))(
  ( (Node!14165 (left!34896 Conc!14165) (right!35226 Conc!14165) (csize!28560 Int) (cheight!14376 Int)) (Leaf!21901 (xs!17471 IArray!28335) (csize!28561 Int)) (Empty!14165) )
))
(declare-datatypes ((BalanceConc!27924 0))(
  ( (BalanceConc!27925 (c!721314 Conc!14165)) )
))
(declare-datatypes ((TokenValueInjection!15796 0))(
  ( (TokenValueInjection!15797 (toValue!10718 Int) (toChars!10577 Int)) )
))
(declare-datatypes ((Regex!12859 0))(
  ( (ElementMatch!12859 (c!721315 C!25916)) (Concat!21044 (regOne!26230 Regex!12859) (regTwo!26230 Regex!12859)) (EmptyExpr!12859) (Star!12859 (reg!13188 Regex!12859)) (EmptyLang!12859) (Union!12859 (regOne!26231 Regex!12859) (regTwo!26231 Regex!12859)) )
))
(declare-datatypes ((String!54850 0))(
  ( (String!54851 (value!247224 String)) )
))
(declare-datatypes ((Rule!15708 0))(
  ( (Rule!15709 (regex!7954 Regex!12859) (tag!8818 String!54850) (isSeparator!7954 Bool) (transformation!7954 TokenValueInjection!15796)) )
))
(declare-datatypes ((Token!14534 0))(
  ( (Token!14535 (value!247225 TokenValue!8184) (rule!11084 Rule!15708) (size!34428 Int) (originalCharacters!8298 List!47138)) )
))
(declare-datatypes ((tuple2!44574 0))(
  ( (tuple2!44575 (_1!25421 Token!14534) (_2!25421 List!47138)) )
))
(declare-datatypes ((Option!10088 0))(
  ( (None!10087) (Some!10087 (v!41041 tuple2!44574)) )
))
(declare-fun lt!1507733 () Option!10088)

(declare-fun lt!1507732 () List!47138)

(declare-fun longerInput!62 () List!47138)

(declare-fun ++!11967 (List!47138 List!47138) List!47138)

(assert (=> b!4246878 (= res!1745914 (= (++!11967 lt!1507732 (_2!25421 (v!41041 lt!1507733))) longerInput!62))))

(declare-fun list!16940 (BalanceConc!27924) List!47138)

(declare-fun charsOf!5298 (Token!14534) BalanceConc!27924)

(assert (=> b!4246878 (= lt!1507732 (list!16940 (charsOf!5298 (_1!25421 (v!41041 lt!1507733)))))))

(declare-fun res!1745913 () Bool)

(declare-fun e!2637680 () Bool)

(assert (=> start!406558 (=> (not res!1745913) (not e!2637680))))

(declare-datatypes ((LexerInterface!7549 0))(
  ( (LexerInterfaceExt!7546 (__x!28592 Int)) (Lexer!7547) )
))
(declare-fun thiss!21641 () LexerInterface!7549)

(get-info :version)

(assert (=> start!406558 (= res!1745913 ((_ is Lexer!7547) thiss!21641))))

(assert (=> start!406558 e!2637680))

(assert (=> start!406558 true))

(declare-fun e!2637691 () Bool)

(assert (=> start!406558 e!2637691))

(declare-fun e!2637679 () Bool)

(assert (=> start!406558 e!2637679))

(declare-fun e!2637686 () Bool)

(assert (=> start!406558 e!2637686))

(assert (=> start!406558 e!2637678))

(declare-fun e!2637689 () Bool)

(assert (=> start!406558 e!2637689))

(declare-fun b!4246879 () Bool)

(declare-fun res!1745917 () Bool)

(assert (=> b!4246879 (=> (not res!1745917) (not e!2637680))))

(declare-fun isEmpty!27812 (List!47138) Bool)

(assert (=> b!4246879 (= res!1745917 (not (isEmpty!27812 longerInput!62)))))

(declare-fun b!4246880 () Bool)

(declare-fun res!1745915 () Bool)

(assert (=> b!4246880 (=> (not res!1745915) (not e!2637680))))

(declare-fun shorterInput!62 () List!47138)

(declare-fun size!34429 (List!47138) Int)

(assert (=> b!4246880 (= res!1745915 (> (size!34429 longerInput!62) (size!34429 shorterInput!62)))))

(declare-fun e!2637692 () Bool)

(assert (=> b!4246881 (= e!2637692 (and tp!1302733 tp!1302730))))

(declare-fun b!4246882 () Bool)

(declare-fun tp_is_empty!22709 () Bool)

(declare-fun tp!1302724 () Bool)

(assert (=> b!4246882 (= e!2637679 (and tp_is_empty!22709 tp!1302724))))

(declare-fun b!4246883 () Bool)

(declare-fun tp!1302723 () Bool)

(assert (=> b!4246883 (= e!2637689 (and tp_is_empty!22709 tp!1302723))))

(declare-fun e!2637687 () Bool)

(declare-datatypes ((List!47139 0))(
  ( (Nil!47015) (Cons!47015 (h!52435 Token!14534) (t!351804 List!47139)) )
))
(declare-fun tokens!592 () List!47139)

(declare-fun b!4246884 () Bool)

(declare-fun e!2637685 () Bool)

(declare-fun tp!1302734 () Bool)

(declare-fun inv!21 (TokenValue!8184) Bool)

(assert (=> b!4246884 (= e!2637685 (and (inv!21 (value!247225 (h!52435 tokens!592))) e!2637687 tp!1302734))))

(declare-fun b!4246885 () Bool)

(declare-datatypes ((List!47140 0))(
  ( (Nil!47016) (Cons!47016 (h!52436 Rule!15708) (t!351805 List!47140)) )
))
(declare-fun rules!2971 () List!47140)

(declare-fun e!2637682 () Bool)

(declare-fun tp!1302732 () Bool)

(declare-fun inv!61776 (String!54850) Bool)

(declare-fun inv!61779 (TokenValueInjection!15796) Bool)

(assert (=> b!4246885 (= e!2637677 (and tp!1302732 (inv!61776 (tag!8818 (h!52436 rules!2971))) (inv!61779 (transformation!7954 (h!52436 rules!2971))) e!2637682))))

(declare-fun b!4246886 () Bool)

(declare-fun tp!1302726 () Bool)

(assert (=> b!4246886 (= e!2637687 (and tp!1302726 (inv!61776 (tag!8818 (rule!11084 (h!52435 tokens!592)))) (inv!61779 (transformation!7954 (rule!11084 (h!52435 tokens!592)))) e!2637692))))

(declare-fun b!4246887 () Bool)

(declare-fun tp!1302729 () Bool)

(assert (=> b!4246887 (= e!2637691 (and tp_is_empty!22709 tp!1302729))))

(declare-fun b!4246888 () Bool)

(declare-fun res!1745921 () Bool)

(assert (=> b!4246888 (=> (not res!1745921) (not e!2637680))))

(declare-fun rulesInvariant!6660 (LexerInterface!7549 List!47140) Bool)

(assert (=> b!4246888 (= res!1745921 (rulesInvariant!6660 thiss!21641 rules!2971))))

(declare-fun b!4246889 () Bool)

(declare-fun res!1745924 () Bool)

(assert (=> b!4246889 (=> (not res!1745924) (not e!2637680))))

(declare-fun isEmpty!27813 (List!47140) Bool)

(assert (=> b!4246889 (= res!1745924 (not (isEmpty!27813 rules!2971)))))

(declare-fun b!4246890 () Bool)

(declare-fun res!1745922 () Bool)

(declare-fun e!2637683 () Bool)

(assert (=> b!4246890 (=> (not res!1745922) (not e!2637683))))

(assert (=> b!4246890 (= res!1745922 (not (isEmpty!27812 (_2!25421 (v!41041 lt!1507733)))))))

(declare-fun b!4246891 () Bool)

(assert (=> b!4246891 (= e!2637676 e!2637683)))

(declare-fun res!1745916 () Bool)

(assert (=> b!4246891 (=> (not res!1745916) (not e!2637683))))

(declare-fun lt!1507734 () List!47138)

(declare-fun lt!1507730 () Option!10088)

(assert (=> b!4246891 (= res!1745916 (= (++!11967 lt!1507734 (_2!25421 (v!41041 lt!1507730))) shorterInput!62))))

(assert (=> b!4246891 (= lt!1507734 (list!16940 (charsOf!5298 (_1!25421 (v!41041 lt!1507730)))))))

(declare-fun b!4246892 () Bool)

(declare-fun res!1745923 () Bool)

(assert (=> b!4246892 (=> (not res!1745923) (not e!2637680))))

(declare-fun suffix!1284 () List!47138)

(declare-datatypes ((tuple2!44576 0))(
  ( (tuple2!44577 (_1!25422 List!47139) (_2!25422 List!47138)) )
))
(declare-fun lexList!2055 (LexerInterface!7549 List!47140 List!47138) tuple2!44576)

(assert (=> b!4246892 (= res!1745923 (= (lexList!2055 thiss!21641 rules!2971 longerInput!62) (tuple2!44577 tokens!592 suffix!1284)))))

(declare-fun b!4246893 () Bool)

(declare-fun res!1745918 () Bool)

(assert (=> b!4246893 (=> (not res!1745918) (not e!2637683))))

(assert (=> b!4246893 (= res!1745918 (and (= (_1!25421 (v!41041 lt!1507733)) (_1!25421 (v!41041 lt!1507730))) (= lt!1507732 lt!1507734)))))

(declare-fun b!4246894 () Bool)

(assert (=> b!4246894 (= e!2637683 false)))

(declare-fun lt!1507731 () tuple2!44576)

(assert (=> b!4246894 (= lt!1507731 (lexList!2055 thiss!21641 rules!2971 (_2!25421 (v!41041 lt!1507733))))))

(assert (=> b!4246895 (= e!2637682 (and tp!1302727 tp!1302725))))

(declare-fun tp!1302731 () Bool)

(declare-fun b!4246896 () Bool)

(declare-fun inv!61780 (Token!14534) Bool)

(assert (=> b!4246896 (= e!2637686 (and (inv!61780 (h!52435 tokens!592)) e!2637685 tp!1302731))))

(declare-fun b!4246897 () Bool)

(assert (=> b!4246897 (= e!2637680 e!2637688)))

(declare-fun res!1745919 () Bool)

(assert (=> b!4246897 (=> (not res!1745919) (not e!2637688))))

(assert (=> b!4246897 (= res!1745919 (and ((_ is Some!10087) lt!1507733) ((_ is Some!10087) lt!1507730)))))

(declare-fun maxPrefix!4505 (LexerInterface!7549 List!47140 List!47138) Option!10088)

(assert (=> b!4246897 (= lt!1507730 (maxPrefix!4505 thiss!21641 rules!2971 shorterInput!62))))

(assert (=> b!4246897 (= lt!1507733 (maxPrefix!4505 thiss!21641 rules!2971 longerInput!62))))

(declare-fun b!4246898 () Bool)

(declare-fun res!1745920 () Bool)

(assert (=> b!4246898 (=> (not res!1745920) (not e!2637683))))

(assert (=> b!4246898 (= res!1745920 (> (size!34429 (_2!25421 (v!41041 lt!1507733))) (size!34429 (_2!25421 (v!41041 lt!1507730)))))))

(assert (= (and start!406558 res!1745913) b!4246889))

(assert (= (and b!4246889 res!1745924) b!4246888))

(assert (= (and b!4246888 res!1745921) b!4246879))

(assert (= (and b!4246879 res!1745917) b!4246880))

(assert (= (and b!4246880 res!1745915) b!4246892))

(assert (= (and b!4246892 res!1745923) b!4246897))

(assert (= (and b!4246897 res!1745919) b!4246878))

(assert (= (and b!4246878 res!1745914) b!4246891))

(assert (= (and b!4246891 res!1745916) b!4246893))

(assert (= (and b!4246893 res!1745918) b!4246898))

(assert (= (and b!4246898 res!1745920) b!4246890))

(assert (= (and b!4246890 res!1745922) b!4246894))

(assert (= (and start!406558 ((_ is Cons!47014) suffix!1284)) b!4246887))

(assert (= (and start!406558 ((_ is Cons!47014) longerInput!62)) b!4246882))

(assert (= b!4246886 b!4246881))

(assert (= b!4246884 b!4246886))

(assert (= b!4246896 b!4246884))

(assert (= (and start!406558 ((_ is Cons!47015) tokens!592)) b!4246896))

(assert (= b!4246885 b!4246895))

(assert (= b!4246877 b!4246885))

(assert (= (and start!406558 ((_ is Cons!47016) rules!2971)) b!4246877))

(assert (= (and start!406558 ((_ is Cons!47014) shorterInput!62)) b!4246883))

(declare-fun m!4831739 () Bool)

(assert (=> b!4246879 m!4831739))

(declare-fun m!4831741 () Bool)

(assert (=> b!4246897 m!4831741))

(declare-fun m!4831743 () Bool)

(assert (=> b!4246897 m!4831743))

(declare-fun m!4831745 () Bool)

(assert (=> b!4246890 m!4831745))

(declare-fun m!4831747 () Bool)

(assert (=> b!4246885 m!4831747))

(declare-fun m!4831749 () Bool)

(assert (=> b!4246885 m!4831749))

(declare-fun m!4831751 () Bool)

(assert (=> b!4246888 m!4831751))

(declare-fun m!4831753 () Bool)

(assert (=> b!4246884 m!4831753))

(declare-fun m!4831755 () Bool)

(assert (=> b!4246892 m!4831755))

(declare-fun m!4831757 () Bool)

(assert (=> b!4246880 m!4831757))

(declare-fun m!4831759 () Bool)

(assert (=> b!4246880 m!4831759))

(declare-fun m!4831761 () Bool)

(assert (=> b!4246886 m!4831761))

(declare-fun m!4831763 () Bool)

(assert (=> b!4246886 m!4831763))

(declare-fun m!4831765 () Bool)

(assert (=> b!4246891 m!4831765))

(declare-fun m!4831767 () Bool)

(assert (=> b!4246891 m!4831767))

(assert (=> b!4246891 m!4831767))

(declare-fun m!4831769 () Bool)

(assert (=> b!4246891 m!4831769))

(declare-fun m!4831771 () Bool)

(assert (=> b!4246878 m!4831771))

(declare-fun m!4831773 () Bool)

(assert (=> b!4246878 m!4831773))

(assert (=> b!4246878 m!4831773))

(declare-fun m!4831775 () Bool)

(assert (=> b!4246878 m!4831775))

(declare-fun m!4831777 () Bool)

(assert (=> b!4246889 m!4831777))

(declare-fun m!4831779 () Bool)

(assert (=> b!4246894 m!4831779))

(declare-fun m!4831781 () Bool)

(assert (=> b!4246898 m!4831781))

(declare-fun m!4831783 () Bool)

(assert (=> b!4246898 m!4831783))

(declare-fun m!4831785 () Bool)

(assert (=> b!4246896 m!4831785))

(check-sat b_and!336473 (not b!4246887) (not b!4246879) (not b!4246882) b_and!336471 tp_is_empty!22709 (not b!4246877) b_and!336469 (not b!4246885) (not b!4246889) (not b!4246886) (not b!4246891) (not b_next!126805) b_and!336475 (not b!4246878) (not b!4246884) (not b!4246896) (not b!4246888) (not b!4246897) (not b_next!126807) (not b!4246894) (not b!4246880) (not b!4246898) (not b_next!126809) (not b_next!126803) (not b!4246883) (not b!4246890) (not b!4246892))
(check-sat b_and!336473 (not b_next!126805) b_and!336475 b_and!336471 (not b_next!126807) b_and!336469 (not b_next!126809) (not b_next!126803))
