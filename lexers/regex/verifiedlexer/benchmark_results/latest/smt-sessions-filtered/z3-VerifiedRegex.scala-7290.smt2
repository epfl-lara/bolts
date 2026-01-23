; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!388716 () Bool)

(assert start!388716)

(declare-fun b!4102537 () Bool)

(declare-fun b_free!114985 () Bool)

(declare-fun b_next!115689 () Bool)

(assert (=> b!4102537 (= b_free!114985 (not b_next!115689))))

(declare-fun tp!1242892 () Bool)

(declare-fun b_and!316799 () Bool)

(assert (=> b!4102537 (= tp!1242892 b_and!316799)))

(declare-fun b_free!114987 () Bool)

(declare-fun b_next!115691 () Bool)

(assert (=> b!4102537 (= b_free!114987 (not b_next!115691))))

(declare-fun tp!1242887 () Bool)

(declare-fun b_and!316801 () Bool)

(assert (=> b!4102537 (= tp!1242887 b_and!316801)))

(declare-fun b!4102543 () Bool)

(declare-fun b_free!114989 () Bool)

(declare-fun b_next!115693 () Bool)

(assert (=> b!4102543 (= b_free!114989 (not b_next!115693))))

(declare-fun tp!1242891 () Bool)

(declare-fun b_and!316803 () Bool)

(assert (=> b!4102543 (= tp!1242891 b_and!316803)))

(declare-fun b_free!114991 () Bool)

(declare-fun b_next!115695 () Bool)

(assert (=> b!4102543 (= b_free!114991 (not b_next!115695))))

(declare-fun tp!1242885 () Bool)

(declare-fun b_and!316805 () Bool)

(assert (=> b!4102543 (= tp!1242885 b_and!316805)))

(declare-fun res!1677167 () Bool)

(declare-fun e!2545904 () Bool)

(assert (=> start!388716 (=> (not res!1677167) (not e!2545904))))

(declare-datatypes ((LexerInterface!6741 0))(
  ( (LexerInterfaceExt!6738 (__x!26981 Int)) (Lexer!6739) )
))
(declare-fun thiss!26455 () LexerInterface!6741)

(get-info :version)

(assert (=> start!388716 (= res!1677167 ((_ is Lexer!6739) thiss!26455))))

(assert (=> start!388716 e!2545904))

(assert (=> start!388716 true))

(declare-fun e!2545899 () Bool)

(assert (=> start!388716 e!2545899))

(declare-fun e!2545901 () Bool)

(assert (=> start!388716 e!2545901))

(declare-fun e!2545907 () Bool)

(assert (=> start!388716 e!2545907))

(declare-fun e!2545905 () Bool)

(assert (=> b!4102537 (= e!2545905 (and tp!1242892 tp!1242887))))

(declare-fun b!4102538 () Bool)

(declare-fun res!1677163 () Bool)

(assert (=> b!4102538 (=> (not res!1677163) (not e!2545904))))

(declare-datatypes ((C!24300 0))(
  ( (C!24301 (val!14260 Int)) )
))
(declare-datatypes ((List!44210 0))(
  ( (Nil!44086) (Cons!44086 (h!49506 C!24300) (t!339867 List!44210)) )
))
(declare-datatypes ((IArray!26731 0))(
  ( (IArray!26732 (innerList!13423 List!44210)) )
))
(declare-datatypes ((Conc!13363 0))(
  ( (Node!13363 (left!33105 Conc!13363) (right!33435 Conc!13363) (csize!26956 Int) (cheight!13574 Int)) (Leaf!20654 (xs!16669 IArray!26731) (csize!26957 Int)) (Empty!13363) )
))
(declare-datatypes ((List!44211 0))(
  ( (Nil!44087) (Cons!44087 (h!49507 (_ BitVec 16)) (t!339868 List!44211)) )
))
(declare-datatypes ((Regex!12057 0))(
  ( (ElementMatch!12057 (c!706548 C!24300)) (Concat!19439 (regOne!24626 Regex!12057) (regTwo!24626 Regex!12057)) (EmptyExpr!12057) (Star!12057 (reg!12386 Regex!12057)) (EmptyLang!12057) (Union!12057 (regOne!24627 Regex!12057) (regTwo!24627 Regex!12057)) )
))
(declare-datatypes ((TokenValue!7382 0))(
  ( (FloatLiteralValue!14764 (text!52119 List!44211)) (TokenValueExt!7381 (__x!26982 Int)) (Broken!36910 (value!224444 List!44211)) (Object!7505) (End!7382) (Def!7382) (Underscore!7382) (Match!7382) (Else!7382) (Error!7382) (Case!7382) (If!7382) (Extends!7382) (Abstract!7382) (Class!7382) (Val!7382) (DelimiterValue!14764 (del!7442 List!44211)) (KeywordValue!7388 (value!224445 List!44211)) (CommentValue!14764 (value!224446 List!44211)) (WhitespaceValue!14764 (value!224447 List!44211)) (IndentationValue!7382 (value!224448 List!44211)) (String!50659) (Int32!7382) (Broken!36911 (value!224449 List!44211)) (Boolean!7383) (Unit!63596) (OperatorValue!7385 (op!7442 List!44211)) (IdentifierValue!14764 (value!224450 List!44211)) (IdentifierValue!14765 (value!224451 List!44211)) (WhitespaceValue!14765 (value!224452 List!44211)) (True!14764) (False!14764) (Broken!36912 (value!224453 List!44211)) (Broken!36913 (value!224454 List!44211)) (True!14765) (RightBrace!7382) (RightBracket!7382) (Colon!7382) (Null!7382) (Comma!7382) (LeftBracket!7382) (False!14765) (LeftBrace!7382) (ImaginaryLiteralValue!7382 (text!52120 List!44211)) (StringLiteralValue!22146 (value!224455 List!44211)) (EOFValue!7382 (value!224456 List!44211)) (IdentValue!7382 (value!224457 List!44211)) (DelimiterValue!14765 (value!224458 List!44211)) (DedentValue!7382 (value!224459 List!44211)) (NewLineValue!7382 (value!224460 List!44211)) (IntegerValue!22146 (value!224461 (_ BitVec 32)) (text!52121 List!44211)) (IntegerValue!22147 (value!224462 Int) (text!52122 List!44211)) (Times!7382) (Or!7382) (Equal!7382) (Minus!7382) (Broken!36914 (value!224463 List!44211)) (And!7382) (Div!7382) (LessEqual!7382) (Mod!7382) (Concat!19440) (Not!7382) (Plus!7382) (SpaceValue!7382 (value!224464 List!44211)) (IntegerValue!22148 (value!224465 Int) (text!52123 List!44211)) (StringLiteralValue!22147 (text!52124 List!44211)) (FloatLiteralValue!14765 (text!52125 List!44211)) (BytesLiteralValue!7382 (value!224466 List!44211)) (CommentValue!14765 (value!224467 List!44211)) (StringLiteralValue!22148 (value!224468 List!44211)) (ErrorTokenValue!7382 (msg!7443 List!44211)) )
))
(declare-datatypes ((BalanceConc!26320 0))(
  ( (BalanceConc!26321 (c!706549 Conc!13363)) )
))
(declare-datatypes ((TokenValueInjection!14192 0))(
  ( (TokenValueInjection!14193 (toValue!9764 Int) (toChars!9623 Int)) )
))
(declare-datatypes ((String!50660 0))(
  ( (String!50661 (value!224469 String)) )
))
(declare-datatypes ((Rule!14104 0))(
  ( (Rule!14105 (regex!7152 Regex!12057) (tag!8012 String!50660) (isSeparator!7152 Bool) (transformation!7152 TokenValueInjection!14192)) )
))
(declare-datatypes ((List!44212 0))(
  ( (Nil!44088) (Cons!44088 (h!49508 Rule!14104) (t!339869 List!44212)) )
))
(declare-fun rTail!27 () List!44212)

(declare-fun isEmpty!26358 (List!44212) Bool)

(assert (=> b!4102538 (= res!1677163 (not (isEmpty!26358 rTail!27)))))

(declare-fun b!4102539 () Bool)

(declare-fun e!2545903 () Bool)

(declare-fun tp!1242888 () Bool)

(assert (=> b!4102539 (= e!2545899 (and e!2545903 tp!1242888))))

(declare-fun b!4102540 () Bool)

(declare-fun rHead!24 () Rule!14104)

(declare-fun tp!1242889 () Bool)

(declare-fun inv!58783 (String!50660) Bool)

(declare-fun inv!58785 (TokenValueInjection!14192) Bool)

(assert (=> b!4102540 (= e!2545907 (and tp!1242889 (inv!58783 (tag!8012 rHead!24)) (inv!58785 (transformation!7152 rHead!24)) e!2545905))))

(declare-fun b!4102541 () Bool)

(declare-fun e!2545906 () Bool)

(assert (=> b!4102541 (= e!2545904 e!2545906)))

(declare-fun res!1677166 () Bool)

(assert (=> b!4102541 (=> (not res!1677166) (not e!2545906))))

(declare-fun lt!1467121 () List!44212)

(declare-fun rulesInvariant!6084 (LexerInterface!6741 List!44212) Bool)

(assert (=> b!4102541 (= res!1677166 (rulesInvariant!6084 thiss!26455 lt!1467121))))

(assert (=> b!4102541 (= lt!1467121 (Cons!44088 rHead!24 rTail!27))))

(declare-fun b!4102542 () Bool)

(declare-fun res!1677165 () Bool)

(assert (=> b!4102542 (=> (not res!1677165) (not e!2545906))))

(assert (=> b!4102542 (= res!1677165 ((_ is Cons!44088) rTail!27))))

(declare-fun e!2545908 () Bool)

(assert (=> b!4102543 (= e!2545908 (and tp!1242891 tp!1242885))))

(declare-fun b!4102544 () Bool)

(declare-fun tp!1242886 () Bool)

(assert (=> b!4102544 (= e!2545903 (and tp!1242886 (inv!58783 (tag!8012 (h!49508 rTail!27))) (inv!58785 (transformation!7152 (h!49508 rTail!27))) e!2545908))))

(declare-fun b!4102545 () Bool)

(declare-fun res!1677168 () Bool)

(declare-fun e!2545898 () Bool)

(assert (=> b!4102545 (=> res!1677168 e!2545898)))

(declare-fun input!3491 () List!44210)

(declare-datatypes ((Token!13402 0))(
  ( (Token!13403 (value!224470 TokenValue!7382) (rule!10296 Rule!14104) (size!32871 Int) (originalCharacters!7732 List!44210)) )
))
(declare-datatypes ((tuple2!42920 0))(
  ( (tuple2!42921 (_1!24594 Token!13402) (_2!24594 List!44210)) )
))
(declare-datatypes ((Option!9544 0))(
  ( (None!9543) (Some!9543 (v!40055 tuple2!42920)) )
))
(declare-fun isEmpty!26359 (Option!9544) Bool)

(declare-fun maxPrefix!4017 (LexerInterface!6741 List!44212 List!44210) Option!9544)

(assert (=> b!4102545 (= res!1677168 (isEmpty!26359 (maxPrefix!4017 thiss!26455 rTail!27 input!3491)))))

(declare-fun b!4102546 () Bool)

(declare-fun tp_is_empty!21093 () Bool)

(declare-fun tp!1242890 () Bool)

(assert (=> b!4102546 (= e!2545901 (and tp_is_empty!21093 tp!1242890))))

(declare-fun b!4102547 () Bool)

(assert (=> b!4102547 (= e!2545906 (not e!2545898))))

(declare-fun res!1677164 () Bool)

(assert (=> b!4102547 (=> res!1677164 e!2545898)))

(assert (=> b!4102547 (= res!1677164 (not (isEmpty!26358 (t!339869 rTail!27))))))

(assert (=> b!4102547 (not (= (tag!8012 rHead!24) (tag!8012 (h!49508 rTail!27))))))

(declare-datatypes ((Unit!63597 0))(
  ( (Unit!63598) )
))
(declare-fun lt!1467119 () Unit!63597)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!28 (LexerInterface!6741 List!44212 Rule!14104 Rule!14104) Unit!63597)

(assert (=> b!4102547 (= lt!1467119 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!28 thiss!26455 lt!1467121 rHead!24 (h!49508 rTail!27)))))

(declare-datatypes ((List!44213 0))(
  ( (Nil!44089) (Cons!44089 (h!49509 String!50660) (t!339870 List!44213)) )
))
(declare-fun noDuplicateTag!2831 (LexerInterface!6741 List!44212 List!44213) Bool)

(assert (=> b!4102547 (noDuplicateTag!2831 thiss!26455 (Cons!44088 (h!49508 rTail!27) (Cons!44088 rHead!24 (t!339869 rTail!27))) Nil!44089)))

(declare-fun lt!1467120 () Unit!63597)

(declare-fun lemmaNoDuplicateCanReorder!30 (LexerInterface!6741 Rule!14104 Rule!14104 List!44212) Unit!63597)

(assert (=> b!4102547 (= lt!1467120 (lemmaNoDuplicateCanReorder!30 thiss!26455 rHead!24 (h!49508 rTail!27) (t!339869 rTail!27)))))

(declare-fun b!4102548 () Bool)

(declare-fun rulesValidInductive!2653 (LexerInterface!6741 List!44212) Bool)

(assert (=> b!4102548 (= e!2545898 (rulesValidInductive!2653 thiss!26455 rTail!27))))

(assert (= (and start!388716 res!1677167) b!4102538))

(assert (= (and b!4102538 res!1677163) b!4102541))

(assert (= (and b!4102541 res!1677166) b!4102542))

(assert (= (and b!4102542 res!1677165) b!4102547))

(assert (= (and b!4102547 (not res!1677164)) b!4102545))

(assert (= (and b!4102545 (not res!1677168)) b!4102548))

(assert (= b!4102544 b!4102543))

(assert (= b!4102539 b!4102544))

(assert (= (and start!388716 ((_ is Cons!44088) rTail!27)) b!4102539))

(assert (= (and start!388716 ((_ is Cons!44086) input!3491)) b!4102546))

(assert (= b!4102540 b!4102537))

(assert (= start!388716 b!4102540))

(declare-fun m!4708671 () Bool)

(assert (=> b!4102547 m!4708671))

(declare-fun m!4708673 () Bool)

(assert (=> b!4102547 m!4708673))

(declare-fun m!4708675 () Bool)

(assert (=> b!4102547 m!4708675))

(declare-fun m!4708677 () Bool)

(assert (=> b!4102547 m!4708677))

(declare-fun m!4708679 () Bool)

(assert (=> b!4102540 m!4708679))

(declare-fun m!4708681 () Bool)

(assert (=> b!4102540 m!4708681))

(declare-fun m!4708683 () Bool)

(assert (=> b!4102538 m!4708683))

(declare-fun m!4708685 () Bool)

(assert (=> b!4102541 m!4708685))

(declare-fun m!4708687 () Bool)

(assert (=> b!4102544 m!4708687))

(declare-fun m!4708689 () Bool)

(assert (=> b!4102544 m!4708689))

(declare-fun m!4708691 () Bool)

(assert (=> b!4102548 m!4708691))

(declare-fun m!4708693 () Bool)

(assert (=> b!4102545 m!4708693))

(assert (=> b!4102545 m!4708693))

(declare-fun m!4708695 () Bool)

(assert (=> b!4102545 m!4708695))

(check-sat (not b!4102548) (not b_next!115691) (not b!4102546) (not b!4102539) (not b!4102544) (not b_next!115689) (not b!4102540) (not b!4102545) (not b!4102538) b_and!316801 (not b!4102541) (not b_next!115693) b_and!316805 (not b!4102547) (not b_next!115695) b_and!316803 tp_is_empty!21093 b_and!316799)
(check-sat (not b_next!115691) (not b_next!115693) (not b_next!115689) b_and!316805 b_and!316801 b_and!316799 (not b_next!115695) b_and!316803)
(get-model)

(declare-fun d!1217891 () Bool)

(assert (=> d!1217891 (= (isEmpty!26358 (t!339869 rTail!27)) ((_ is Nil!44088) (t!339869 rTail!27)))))

(assert (=> b!4102547 d!1217891))

(declare-fun d!1217893 () Bool)

(assert (=> d!1217893 (not (= (tag!8012 rHead!24) (tag!8012 (h!49508 rTail!27))))))

(declare-fun lt!1467124 () Unit!63597)

(declare-fun choose!25079 (LexerInterface!6741 List!44212 Rule!14104 Rule!14104) Unit!63597)

(assert (=> d!1217893 (= lt!1467124 (choose!25079 thiss!26455 lt!1467121 rHead!24 (h!49508 rTail!27)))))

(declare-fun contains!8827 (List!44212 Rule!14104) Bool)

(assert (=> d!1217893 (contains!8827 lt!1467121 rHead!24)))

(assert (=> d!1217893 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!28 thiss!26455 lt!1467121 rHead!24 (h!49508 rTail!27)) lt!1467124)))

(declare-fun bs!593945 () Bool)

(assert (= bs!593945 d!1217893))

(declare-fun m!4708697 () Bool)

(assert (=> bs!593945 m!4708697))

(declare-fun m!4708699 () Bool)

(assert (=> bs!593945 m!4708699))

(assert (=> b!4102547 d!1217893))

(declare-fun d!1217897 () Bool)

(declare-fun res!1677180 () Bool)

(declare-fun e!2545913 () Bool)

(assert (=> d!1217897 (=> res!1677180 e!2545913)))

(assert (=> d!1217897 (= res!1677180 ((_ is Nil!44088) (Cons!44088 (h!49508 rTail!27) (Cons!44088 rHead!24 (t!339869 rTail!27)))))))

(assert (=> d!1217897 (= (noDuplicateTag!2831 thiss!26455 (Cons!44088 (h!49508 rTail!27) (Cons!44088 rHead!24 (t!339869 rTail!27))) Nil!44089) e!2545913)))

(declare-fun b!4102553 () Bool)

(declare-fun e!2545914 () Bool)

(assert (=> b!4102553 (= e!2545913 e!2545914)))

(declare-fun res!1677181 () Bool)

(assert (=> b!4102553 (=> (not res!1677181) (not e!2545914))))

(declare-fun contains!8828 (List!44213 String!50660) Bool)

(assert (=> b!4102553 (= res!1677181 (not (contains!8828 Nil!44089 (tag!8012 (h!49508 (Cons!44088 (h!49508 rTail!27) (Cons!44088 rHead!24 (t!339869 rTail!27))))))))))

(declare-fun b!4102554 () Bool)

(assert (=> b!4102554 (= e!2545914 (noDuplicateTag!2831 thiss!26455 (t!339869 (Cons!44088 (h!49508 rTail!27) (Cons!44088 rHead!24 (t!339869 rTail!27)))) (Cons!44089 (tag!8012 (h!49508 (Cons!44088 (h!49508 rTail!27) (Cons!44088 rHead!24 (t!339869 rTail!27))))) Nil!44089)))))

(assert (= (and d!1217897 (not res!1677180)) b!4102553))

(assert (= (and b!4102553 res!1677181) b!4102554))

(declare-fun m!4708701 () Bool)

(assert (=> b!4102553 m!4708701))

(declare-fun m!4708703 () Bool)

(assert (=> b!4102554 m!4708703))

(assert (=> b!4102547 d!1217897))

(declare-fun d!1217901 () Bool)

(assert (=> d!1217901 (noDuplicateTag!2831 thiss!26455 (Cons!44088 (h!49508 rTail!27) (Cons!44088 rHead!24 (t!339869 rTail!27))) Nil!44089)))

(declare-fun lt!1467130 () Unit!63597)

(declare-fun choose!25080 (LexerInterface!6741 Rule!14104 Rule!14104 List!44212) Unit!63597)

(assert (=> d!1217901 (= lt!1467130 (choose!25080 thiss!26455 rHead!24 (h!49508 rTail!27) (t!339869 rTail!27)))))

(assert (=> d!1217901 (noDuplicateTag!2831 thiss!26455 (Cons!44088 rHead!24 (Cons!44088 (h!49508 rTail!27) (t!339869 rTail!27))) Nil!44089)))

(assert (=> d!1217901 (= (lemmaNoDuplicateCanReorder!30 thiss!26455 rHead!24 (h!49508 rTail!27) (t!339869 rTail!27)) lt!1467130)))

(declare-fun bs!593947 () Bool)

(assert (= bs!593947 d!1217901))

(assert (=> bs!593947 m!4708675))

(declare-fun m!4708709 () Bool)

(assert (=> bs!593947 m!4708709))

(declare-fun m!4708711 () Bool)

(assert (=> bs!593947 m!4708711))

(assert (=> b!4102547 d!1217901))

(declare-fun d!1217905 () Bool)

(assert (=> d!1217905 (= (inv!58783 (tag!8012 rHead!24)) (= (mod (str.len (value!224469 (tag!8012 rHead!24))) 2) 0))))

(assert (=> b!4102540 d!1217905))

(declare-fun d!1217907 () Bool)

(declare-fun res!1677190 () Bool)

(declare-fun e!2545923 () Bool)

(assert (=> d!1217907 (=> (not res!1677190) (not e!2545923))))

(declare-fun semiInverseModEq!3073 (Int Int) Bool)

(assert (=> d!1217907 (= res!1677190 (semiInverseModEq!3073 (toChars!9623 (transformation!7152 rHead!24)) (toValue!9764 (transformation!7152 rHead!24))))))

(assert (=> d!1217907 (= (inv!58785 (transformation!7152 rHead!24)) e!2545923)))

(declare-fun b!4102563 () Bool)

(declare-fun equivClasses!2972 (Int Int) Bool)

(assert (=> b!4102563 (= e!2545923 (equivClasses!2972 (toChars!9623 (transformation!7152 rHead!24)) (toValue!9764 (transformation!7152 rHead!24))))))

(assert (= (and d!1217907 res!1677190) b!4102563))

(declare-fun m!4708717 () Bool)

(assert (=> d!1217907 m!4708717))

(declare-fun m!4708719 () Bool)

(assert (=> b!4102563 m!4708719))

(assert (=> b!4102540 d!1217907))

(declare-fun d!1217911 () Bool)

(declare-fun res!1677193 () Bool)

(declare-fun e!2545926 () Bool)

(assert (=> d!1217911 (=> (not res!1677193) (not e!2545926))))

(declare-fun rulesValid!2808 (LexerInterface!6741 List!44212) Bool)

(assert (=> d!1217911 (= res!1677193 (rulesValid!2808 thiss!26455 lt!1467121))))

(assert (=> d!1217911 (= (rulesInvariant!6084 thiss!26455 lt!1467121) e!2545926)))

(declare-fun b!4102566 () Bool)

(assert (=> b!4102566 (= e!2545926 (noDuplicateTag!2831 thiss!26455 lt!1467121 Nil!44089))))

(assert (= (and d!1217911 res!1677193) b!4102566))

(declare-fun m!4708725 () Bool)

(assert (=> d!1217911 m!4708725))

(declare-fun m!4708727 () Bool)

(assert (=> b!4102566 m!4708727))

(assert (=> b!4102541 d!1217911))

(declare-fun d!1217917 () Bool)

(assert (=> d!1217917 (= (inv!58783 (tag!8012 (h!49508 rTail!27))) (= (mod (str.len (value!224469 (tag!8012 (h!49508 rTail!27)))) 2) 0))))

(assert (=> b!4102544 d!1217917))

(declare-fun d!1217919 () Bool)

(declare-fun res!1677194 () Bool)

(declare-fun e!2545927 () Bool)

(assert (=> d!1217919 (=> (not res!1677194) (not e!2545927))))

(assert (=> d!1217919 (= res!1677194 (semiInverseModEq!3073 (toChars!9623 (transformation!7152 (h!49508 rTail!27))) (toValue!9764 (transformation!7152 (h!49508 rTail!27)))))))

(assert (=> d!1217919 (= (inv!58785 (transformation!7152 (h!49508 rTail!27))) e!2545927)))

(declare-fun b!4102567 () Bool)

(assert (=> b!4102567 (= e!2545927 (equivClasses!2972 (toChars!9623 (transformation!7152 (h!49508 rTail!27))) (toValue!9764 (transformation!7152 (h!49508 rTail!27)))))))

(assert (= (and d!1217919 res!1677194) b!4102567))

(declare-fun m!4708729 () Bool)

(assert (=> d!1217919 m!4708729))

(declare-fun m!4708731 () Bool)

(assert (=> b!4102567 m!4708731))

(assert (=> b!4102544 d!1217919))

(declare-fun d!1217921 () Bool)

(assert (=> d!1217921 (= (isEmpty!26359 (maxPrefix!4017 thiss!26455 rTail!27 input!3491)) (not ((_ is Some!9543) (maxPrefix!4017 thiss!26455 rTail!27 input!3491))))))

(assert (=> b!4102545 d!1217921))

(declare-fun b!4102597 () Bool)

(declare-fun e!2545947 () Bool)

(declare-fun lt!1467147 () Option!9544)

(declare-fun get!14450 (Option!9544) tuple2!42920)

(assert (=> b!4102597 (= e!2545947 (contains!8827 rTail!27 (rule!10296 (_1!24594 (get!14450 lt!1467147)))))))

(declare-fun b!4102598 () Bool)

(declare-fun e!2545945 () Option!9544)

(declare-fun lt!1467150 () Option!9544)

(declare-fun lt!1467146 () Option!9544)

(assert (=> b!4102598 (= e!2545945 (ite (and ((_ is None!9543) lt!1467150) ((_ is None!9543) lt!1467146)) None!9543 (ite ((_ is None!9543) lt!1467146) lt!1467150 (ite ((_ is None!9543) lt!1467150) lt!1467146 (ite (>= (size!32871 (_1!24594 (v!40055 lt!1467150))) (size!32871 (_1!24594 (v!40055 lt!1467146)))) lt!1467150 lt!1467146)))))))

(declare-fun call!289801 () Option!9544)

(assert (=> b!4102598 (= lt!1467150 call!289801)))

(assert (=> b!4102598 (= lt!1467146 (maxPrefix!4017 thiss!26455 (t!339869 rTail!27) input!3491))))

(declare-fun b!4102599 () Bool)

(declare-fun res!1677220 () Bool)

(assert (=> b!4102599 (=> (not res!1677220) (not e!2545947))))

(declare-fun list!16318 (BalanceConc!26320) List!44210)

(declare-fun charsOf!4878 (Token!13402) BalanceConc!26320)

(assert (=> b!4102599 (= res!1677220 (= (list!16318 (charsOf!4878 (_1!24594 (get!14450 lt!1467147)))) (originalCharacters!7732 (_1!24594 (get!14450 lt!1467147)))))))

(declare-fun b!4102600 () Bool)

(declare-fun res!1677224 () Bool)

(assert (=> b!4102600 (=> (not res!1677224) (not e!2545947))))

(declare-fun size!32873 (List!44210) Int)

(assert (=> b!4102600 (= res!1677224 (< (size!32873 (_2!24594 (get!14450 lt!1467147))) (size!32873 input!3491)))))

(declare-fun b!4102601 () Bool)

(assert (=> b!4102601 (= e!2545945 call!289801)))

(declare-fun bm!289796 () Bool)

(declare-fun maxPrefixOneRule!2985 (LexerInterface!6741 Rule!14104 List!44210) Option!9544)

(assert (=> bm!289796 (= call!289801 (maxPrefixOneRule!2985 thiss!26455 (h!49508 rTail!27) input!3491))))

(declare-fun b!4102602 () Bool)

(declare-fun e!2545946 () Bool)

(assert (=> b!4102602 (= e!2545946 e!2545947)))

(declare-fun res!1677226 () Bool)

(assert (=> b!4102602 (=> (not res!1677226) (not e!2545947))))

(declare-fun isDefined!7212 (Option!9544) Bool)

(assert (=> b!4102602 (= res!1677226 (isDefined!7212 lt!1467147))))

(declare-fun b!4102603 () Bool)

(declare-fun res!1677221 () Bool)

(assert (=> b!4102603 (=> (not res!1677221) (not e!2545947))))

(declare-fun apply!10311 (TokenValueInjection!14192 BalanceConc!26320) TokenValue!7382)

(declare-fun seqFromList!5345 (List!44210) BalanceConc!26320)

(assert (=> b!4102603 (= res!1677221 (= (value!224470 (_1!24594 (get!14450 lt!1467147))) (apply!10311 (transformation!7152 (rule!10296 (_1!24594 (get!14450 lt!1467147)))) (seqFromList!5345 (originalCharacters!7732 (_1!24594 (get!14450 lt!1467147)))))))))

(declare-fun d!1217923 () Bool)

(assert (=> d!1217923 e!2545946))

(declare-fun res!1677222 () Bool)

(assert (=> d!1217923 (=> res!1677222 e!2545946)))

(assert (=> d!1217923 (= res!1677222 (isEmpty!26359 lt!1467147))))

(assert (=> d!1217923 (= lt!1467147 e!2545945)))

(declare-fun c!706552 () Bool)

(assert (=> d!1217923 (= c!706552 (and ((_ is Cons!44088) rTail!27) ((_ is Nil!44088) (t!339869 rTail!27))))))

(declare-fun lt!1467148 () Unit!63597)

(declare-fun lt!1467149 () Unit!63597)

(assert (=> d!1217923 (= lt!1467148 lt!1467149)))

(declare-fun isPrefix!4163 (List!44210 List!44210) Bool)

(assert (=> d!1217923 (isPrefix!4163 input!3491 input!3491)))

(declare-fun lemmaIsPrefixRefl!2714 (List!44210 List!44210) Unit!63597)

(assert (=> d!1217923 (= lt!1467149 (lemmaIsPrefixRefl!2714 input!3491 input!3491))))

(assert (=> d!1217923 (rulesValidInductive!2653 thiss!26455 rTail!27)))

(assert (=> d!1217923 (= (maxPrefix!4017 thiss!26455 rTail!27 input!3491) lt!1467147)))

(declare-fun b!4102604 () Bool)

(declare-fun res!1677223 () Bool)

(assert (=> b!4102604 (=> (not res!1677223) (not e!2545947))))

(declare-fun ++!11534 (List!44210 List!44210) List!44210)

(assert (=> b!4102604 (= res!1677223 (= (++!11534 (list!16318 (charsOf!4878 (_1!24594 (get!14450 lt!1467147)))) (_2!24594 (get!14450 lt!1467147))) input!3491))))

(declare-fun b!4102605 () Bool)

(declare-fun res!1677225 () Bool)

(assert (=> b!4102605 (=> (not res!1677225) (not e!2545947))))

(declare-fun matchR!5974 (Regex!12057 List!44210) Bool)

(assert (=> b!4102605 (= res!1677225 (matchR!5974 (regex!7152 (rule!10296 (_1!24594 (get!14450 lt!1467147)))) (list!16318 (charsOf!4878 (_1!24594 (get!14450 lt!1467147))))))))

(assert (= (and d!1217923 c!706552) b!4102601))

(assert (= (and d!1217923 (not c!706552)) b!4102598))

(assert (= (or b!4102601 b!4102598) bm!289796))

(assert (= (and d!1217923 (not res!1677222)) b!4102602))

(assert (= (and b!4102602 res!1677226) b!4102599))

(assert (= (and b!4102599 res!1677220) b!4102600))

(assert (= (and b!4102600 res!1677224) b!4102604))

(assert (= (and b!4102604 res!1677223) b!4102603))

(assert (= (and b!4102603 res!1677221) b!4102605))

(assert (= (and b!4102605 res!1677225) b!4102597))

(declare-fun m!4708745 () Bool)

(assert (=> b!4102605 m!4708745))

(declare-fun m!4708747 () Bool)

(assert (=> b!4102605 m!4708747))

(assert (=> b!4102605 m!4708747))

(declare-fun m!4708749 () Bool)

(assert (=> b!4102605 m!4708749))

(assert (=> b!4102605 m!4708749))

(declare-fun m!4708751 () Bool)

(assert (=> b!4102605 m!4708751))

(assert (=> b!4102600 m!4708745))

(declare-fun m!4708753 () Bool)

(assert (=> b!4102600 m!4708753))

(declare-fun m!4708755 () Bool)

(assert (=> b!4102600 m!4708755))

(declare-fun m!4708757 () Bool)

(assert (=> d!1217923 m!4708757))

(declare-fun m!4708759 () Bool)

(assert (=> d!1217923 m!4708759))

(declare-fun m!4708761 () Bool)

(assert (=> d!1217923 m!4708761))

(assert (=> d!1217923 m!4708691))

(declare-fun m!4708763 () Bool)

(assert (=> b!4102602 m!4708763))

(assert (=> b!4102603 m!4708745))

(declare-fun m!4708765 () Bool)

(assert (=> b!4102603 m!4708765))

(assert (=> b!4102603 m!4708765))

(declare-fun m!4708767 () Bool)

(assert (=> b!4102603 m!4708767))

(assert (=> b!4102604 m!4708745))

(assert (=> b!4102604 m!4708747))

(assert (=> b!4102604 m!4708747))

(assert (=> b!4102604 m!4708749))

(assert (=> b!4102604 m!4708749))

(declare-fun m!4708769 () Bool)

(assert (=> b!4102604 m!4708769))

(assert (=> b!4102599 m!4708745))

(assert (=> b!4102599 m!4708747))

(assert (=> b!4102599 m!4708747))

(assert (=> b!4102599 m!4708749))

(declare-fun m!4708771 () Bool)

(assert (=> bm!289796 m!4708771))

(declare-fun m!4708773 () Bool)

(assert (=> b!4102598 m!4708773))

(assert (=> b!4102597 m!4708745))

(declare-fun m!4708775 () Bool)

(assert (=> b!4102597 m!4708775))

(assert (=> b!4102545 d!1217923))

(declare-fun d!1217933 () Bool)

(assert (=> d!1217933 true))

(declare-fun lt!1467169 () Bool)

(declare-fun lambda!128277 () Int)

(declare-fun forall!8425 (List!44212 Int) Bool)

(assert (=> d!1217933 (= lt!1467169 (forall!8425 rTail!27 lambda!128277))))

(declare-fun e!2545982 () Bool)

(assert (=> d!1217933 (= lt!1467169 e!2545982)))

(declare-fun res!1677255 () Bool)

(assert (=> d!1217933 (=> res!1677255 e!2545982)))

(assert (=> d!1217933 (= res!1677255 (not ((_ is Cons!44088) rTail!27)))))

(assert (=> d!1217933 (= (rulesValidInductive!2653 thiss!26455 rTail!27) lt!1467169)))

(declare-fun b!4102675 () Bool)

(declare-fun e!2545983 () Bool)

(assert (=> b!4102675 (= e!2545982 e!2545983)))

(declare-fun res!1677254 () Bool)

(assert (=> b!4102675 (=> (not res!1677254) (not e!2545983))))

(declare-fun ruleValid!3047 (LexerInterface!6741 Rule!14104) Bool)

(assert (=> b!4102675 (= res!1677254 (ruleValid!3047 thiss!26455 (h!49508 rTail!27)))))

(declare-fun b!4102676 () Bool)

(assert (=> b!4102676 (= e!2545983 (rulesValidInductive!2653 thiss!26455 (t!339869 rTail!27)))))

(assert (= (and d!1217933 (not res!1677255)) b!4102675))

(assert (= (and b!4102675 res!1677254) b!4102676))

(declare-fun m!4708819 () Bool)

(assert (=> d!1217933 m!4708819))

(declare-fun m!4708821 () Bool)

(assert (=> b!4102675 m!4708821))

(declare-fun m!4708823 () Bool)

(assert (=> b!4102676 m!4708823))

(assert (=> b!4102548 d!1217933))

(declare-fun d!1217941 () Bool)

(assert (=> d!1217941 (= (isEmpty!26358 rTail!27) ((_ is Nil!44088) rTail!27))))

(assert (=> b!4102538 d!1217941))

(declare-fun b!4102690 () Bool)

(declare-fun e!2545986 () Bool)

(declare-fun tp!1242938 () Bool)

(declare-fun tp!1242939 () Bool)

(assert (=> b!4102690 (= e!2545986 (and tp!1242938 tp!1242939))))

(declare-fun b!4102691 () Bool)

(declare-fun tp!1242942 () Bool)

(assert (=> b!4102691 (= e!2545986 tp!1242942)))

(assert (=> b!4102540 (= tp!1242889 e!2545986)))

(declare-fun b!4102689 () Bool)

(assert (=> b!4102689 (= e!2545986 tp_is_empty!21093)))

(declare-fun b!4102692 () Bool)

(declare-fun tp!1242941 () Bool)

(declare-fun tp!1242940 () Bool)

(assert (=> b!4102692 (= e!2545986 (and tp!1242941 tp!1242940))))

(assert (= (and b!4102540 ((_ is ElementMatch!12057) (regex!7152 rHead!24))) b!4102689))

(assert (= (and b!4102540 ((_ is Concat!19439) (regex!7152 rHead!24))) b!4102690))

(assert (= (and b!4102540 ((_ is Star!12057) (regex!7152 rHead!24))) b!4102691))

(assert (= (and b!4102540 ((_ is Union!12057) (regex!7152 rHead!24))) b!4102692))

(declare-fun b!4102697 () Bool)

(declare-fun e!2545989 () Bool)

(declare-fun tp!1242945 () Bool)

(assert (=> b!4102697 (= e!2545989 (and tp_is_empty!21093 tp!1242945))))

(assert (=> b!4102546 (= tp!1242890 e!2545989)))

(assert (= (and b!4102546 ((_ is Cons!44086) (t!339867 input!3491))) b!4102697))

(declare-fun b!4102699 () Bool)

(declare-fun e!2545990 () Bool)

(declare-fun tp!1242946 () Bool)

(declare-fun tp!1242947 () Bool)

(assert (=> b!4102699 (= e!2545990 (and tp!1242946 tp!1242947))))

(declare-fun b!4102700 () Bool)

(declare-fun tp!1242950 () Bool)

(assert (=> b!4102700 (= e!2545990 tp!1242950)))

(assert (=> b!4102544 (= tp!1242886 e!2545990)))

(declare-fun b!4102698 () Bool)

(assert (=> b!4102698 (= e!2545990 tp_is_empty!21093)))

(declare-fun b!4102701 () Bool)

(declare-fun tp!1242949 () Bool)

(declare-fun tp!1242948 () Bool)

(assert (=> b!4102701 (= e!2545990 (and tp!1242949 tp!1242948))))

(assert (= (and b!4102544 ((_ is ElementMatch!12057) (regex!7152 (h!49508 rTail!27)))) b!4102698))

(assert (= (and b!4102544 ((_ is Concat!19439) (regex!7152 (h!49508 rTail!27)))) b!4102699))

(assert (= (and b!4102544 ((_ is Star!12057) (regex!7152 (h!49508 rTail!27)))) b!4102700))

(assert (= (and b!4102544 ((_ is Union!12057) (regex!7152 (h!49508 rTail!27)))) b!4102701))

(declare-fun b!4102712 () Bool)

(declare-fun b_free!114997 () Bool)

(declare-fun b_next!115701 () Bool)

(assert (=> b!4102712 (= b_free!114997 (not b_next!115701))))

(declare-fun tp!1242962 () Bool)

(declare-fun b_and!316811 () Bool)

(assert (=> b!4102712 (= tp!1242962 b_and!316811)))

(declare-fun b_free!114999 () Bool)

(declare-fun b_next!115703 () Bool)

(assert (=> b!4102712 (= b_free!114999 (not b_next!115703))))

(declare-fun tp!1242961 () Bool)

(declare-fun b_and!316813 () Bool)

(assert (=> b!4102712 (= tp!1242961 b_and!316813)))

(declare-fun e!2545999 () Bool)

(assert (=> b!4102712 (= e!2545999 (and tp!1242962 tp!1242961))))

(declare-fun tp!1242960 () Bool)

(declare-fun e!2546000 () Bool)

(declare-fun b!4102711 () Bool)

(assert (=> b!4102711 (= e!2546000 (and tp!1242960 (inv!58783 (tag!8012 (h!49508 (t!339869 rTail!27)))) (inv!58785 (transformation!7152 (h!49508 (t!339869 rTail!27)))) e!2545999))))

(declare-fun b!4102710 () Bool)

(declare-fun e!2546001 () Bool)

(declare-fun tp!1242959 () Bool)

(assert (=> b!4102710 (= e!2546001 (and e!2546000 tp!1242959))))

(assert (=> b!4102539 (= tp!1242888 e!2546001)))

(assert (= b!4102711 b!4102712))

(assert (= b!4102710 b!4102711))

(assert (= (and b!4102539 ((_ is Cons!44088) (t!339869 rTail!27))) b!4102710))

(declare-fun m!4708825 () Bool)

(assert (=> b!4102711 m!4708825))

(declare-fun m!4708827 () Bool)

(assert (=> b!4102711 m!4708827))

(check-sat (not b!4102598) (not b!4102604) (not b!4102563) (not b!4102675) (not d!1217923) (not d!1217911) (not b!4102711) (not b!4102553) (not b!4102599) (not b!4102710) (not d!1217907) (not b!4102676) b_and!316813 (not b_next!115703) (not b_next!115691) (not b!4102600) (not b!4102691) (not b_next!115693) (not d!1217893) (not b_next!115689) (not b!4102566) (not b!4102700) b_and!316805 (not b!4102602) (not bm!289796) (not b_next!115695) b_and!316803 (not b!4102567) (not b!4102701) (not b!4102690) (not d!1217933) (not d!1217919) (not b!4102699) (not b!4102605) (not b_next!115701) (not b!4102554) b_and!316811 (not b!4102597) b_and!316801 tp_is_empty!21093 b_and!316799 (not b!4102697) (not b!4102692) (not d!1217901) (not b!4102603))
(check-sat (not b_next!115693) (not b_next!115689) b_and!316805 (not b_next!115701) b_and!316799 b_and!316813 (not b_next!115703) (not b_next!115691) (not b_next!115695) b_and!316803 b_and!316811 b_and!316801)
