; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20506 () Bool)

(assert start!20506)

(declare-fun b!189853 () Bool)

(declare-fun b_free!7545 () Bool)

(declare-fun b_next!7545 () Bool)

(assert (=> b!189853 (= b_free!7545 (not b_next!7545))))

(declare-fun tp!88465 () Bool)

(declare-fun b_and!13149 () Bool)

(assert (=> b!189853 (= tp!88465 b_and!13149)))

(declare-fun b_free!7547 () Bool)

(declare-fun b_next!7547 () Bool)

(assert (=> b!189853 (= b_free!7547 (not b_next!7547))))

(declare-fun tp!88458 () Bool)

(declare-fun b_and!13151 () Bool)

(assert (=> b!189853 (= tp!88458 b_and!13151)))

(declare-fun b!189875 () Bool)

(declare-fun b_free!7549 () Bool)

(declare-fun b_next!7549 () Bool)

(assert (=> b!189875 (= b_free!7549 (not b_next!7549))))

(declare-fun tp!88464 () Bool)

(declare-fun b_and!13153 () Bool)

(assert (=> b!189875 (= tp!88464 b_and!13153)))

(declare-fun b_free!7551 () Bool)

(declare-fun b_next!7551 () Bool)

(assert (=> b!189875 (= b_free!7551 (not b_next!7551))))

(declare-fun tp!88461 () Bool)

(declare-fun b_and!13155 () Bool)

(assert (=> b!189875 (= tp!88461 b_and!13155)))

(declare-fun b!189844 () Bool)

(declare-fun b_free!7553 () Bool)

(declare-fun b_next!7553 () Bool)

(assert (=> b!189844 (= b_free!7553 (not b_next!7553))))

(declare-fun tp!88457 () Bool)

(declare-fun b_and!13157 () Bool)

(assert (=> b!189844 (= tp!88457 b_and!13157)))

(declare-fun b_free!7555 () Bool)

(declare-fun b_next!7555 () Bool)

(assert (=> b!189844 (= b_free!7555 (not b_next!7555))))

(declare-fun tp!88469 () Bool)

(declare-fun b_and!13159 () Bool)

(assert (=> b!189844 (= tp!88469 b_and!13159)))

(declare-fun bs!18762 () Bool)

(declare-fun b!189851 () Bool)

(declare-fun b!189858 () Bool)

(assert (= bs!18762 (and b!189851 b!189858)))

(declare-fun lambda!5788 () Int)

(declare-fun lambda!5787 () Int)

(assert (=> bs!18762 (not (= lambda!5788 lambda!5787))))

(declare-fun b!189888 () Bool)

(declare-fun e!116557 () Bool)

(assert (=> b!189888 (= e!116557 true)))

(declare-fun b!189887 () Bool)

(declare-fun e!116556 () Bool)

(assert (=> b!189887 (= e!116556 e!116557)))

(declare-fun b!189886 () Bool)

(declare-fun e!116555 () Bool)

(assert (=> b!189886 (= e!116555 e!116556)))

(assert (=> b!189851 e!116555))

(assert (= b!189887 b!189888))

(assert (= b!189886 b!189887))

(declare-datatypes ((List!3195 0))(
  ( (Nil!3185) (Cons!3185 (h!8582 (_ BitVec 16)) (t!28877 List!3195)) )
))
(declare-datatypes ((TokenValue!607 0))(
  ( (FloatLiteralValue!1214 (text!4694 List!3195)) (TokenValueExt!606 (__x!2701 Int)) (Broken!3035 (value!20962 List!3195)) (Object!616) (End!607) (Def!607) (Underscore!607) (Match!607) (Else!607) (Error!607) (Case!607) (If!607) (Extends!607) (Abstract!607) (Class!607) (Val!607) (DelimiterValue!1214 (del!667 List!3195)) (KeywordValue!613 (value!20963 List!3195)) (CommentValue!1214 (value!20964 List!3195)) (WhitespaceValue!1214 (value!20965 List!3195)) (IndentationValue!607 (value!20966 List!3195)) (String!4114) (Int32!607) (Broken!3036 (value!20967 List!3195)) (Boolean!608) (Unit!2995) (OperatorValue!610 (op!667 List!3195)) (IdentifierValue!1214 (value!20968 List!3195)) (IdentifierValue!1215 (value!20969 List!3195)) (WhitespaceValue!1215 (value!20970 List!3195)) (True!1214) (False!1214) (Broken!3037 (value!20971 List!3195)) (Broken!3038 (value!20972 List!3195)) (True!1215) (RightBrace!607) (RightBracket!607) (Colon!607) (Null!607) (Comma!607) (LeftBracket!607) (False!1215) (LeftBrace!607) (ImaginaryLiteralValue!607 (text!4695 List!3195)) (StringLiteralValue!1821 (value!20973 List!3195)) (EOFValue!607 (value!20974 List!3195)) (IdentValue!607 (value!20975 List!3195)) (DelimiterValue!1215 (value!20976 List!3195)) (DedentValue!607 (value!20977 List!3195)) (NewLineValue!607 (value!20978 List!3195)) (IntegerValue!1821 (value!20979 (_ BitVec 32)) (text!4696 List!3195)) (IntegerValue!1822 (value!20980 Int) (text!4697 List!3195)) (Times!607) (Or!607) (Equal!607) (Minus!607) (Broken!3039 (value!20981 List!3195)) (And!607) (Div!607) (LessEqual!607) (Mod!607) (Concat!1416) (Not!607) (Plus!607) (SpaceValue!607 (value!20982 List!3195)) (IntegerValue!1823 (value!20983 Int) (text!4698 List!3195)) (StringLiteralValue!1822 (text!4699 List!3195)) (FloatLiteralValue!1215 (text!4700 List!3195)) (BytesLiteralValue!607 (value!20984 List!3195)) (CommentValue!1215 (value!20985 List!3195)) (StringLiteralValue!1823 (value!20986 List!3195)) (ErrorTokenValue!607 (msg!668 List!3195)) )
))
(declare-datatypes ((C!2540 0))(
  ( (C!2541 (val!1156 Int)) )
))
(declare-datatypes ((List!3196 0))(
  ( (Nil!3186) (Cons!3186 (h!8583 C!2540) (t!28878 List!3196)) )
))
(declare-datatypes ((IArray!1985 0))(
  ( (IArray!1986 (innerList!1050 List!3196)) )
))
(declare-datatypes ((Conc!992 0))(
  ( (Node!992 (left!2511 Conc!992) (right!2841 Conc!992) (csize!2214 Int) (cheight!1203 Int)) (Leaf!1624 (xs!3587 IArray!1985) (csize!2215 Int)) (Empty!992) )
))
(declare-datatypes ((BalanceConc!1992 0))(
  ( (BalanceConc!1993 (c!36369 Conc!992)) )
))
(declare-datatypes ((TokenValueInjection!986 0))(
  ( (TokenValueInjection!987 (toValue!1256 Int) (toChars!1115 Int)) )
))
(declare-datatypes ((String!4115 0))(
  ( (String!4116 (value!20987 String)) )
))
(declare-datatypes ((Regex!809 0))(
  ( (ElementMatch!809 (c!36370 C!2540)) (Concat!1417 (regOne!2130 Regex!809) (regTwo!2130 Regex!809)) (EmptyExpr!809) (Star!809 (reg!1138 Regex!809)) (EmptyLang!809) (Union!809 (regOne!2131 Regex!809) (regTwo!2131 Regex!809)) )
))
(declare-datatypes ((Rule!970 0))(
  ( (Rule!971 (regex!585 Regex!809) (tag!763 String!4115) (isSeparator!585 Bool) (transformation!585 TokenValueInjection!986)) )
))
(declare-datatypes ((List!3197 0))(
  ( (Nil!3187) (Cons!3187 (h!8584 Rule!970) (t!28879 List!3197)) )
))
(declare-fun rules!1920 () List!3197)

(get-info :version)

(assert (= (and b!189851 ((_ is Cons!3187) rules!1920)) b!189886))

(declare-fun order!1985 () Int)

(declare-fun order!1987 () Int)

(declare-fun dynLambda!1345 (Int Int) Int)

(declare-fun dynLambda!1346 (Int Int) Int)

(assert (=> b!189888 (< (dynLambda!1345 order!1985 (toValue!1256 (transformation!585 (h!8584 rules!1920)))) (dynLambda!1346 order!1987 lambda!5788))))

(declare-fun order!1989 () Int)

(declare-fun dynLambda!1347 (Int Int) Int)

(assert (=> b!189888 (< (dynLambda!1347 order!1989 (toChars!1115 (transformation!585 (h!8584 rules!1920)))) (dynLambda!1346 order!1987 lambda!5788))))

(assert (=> b!189851 true))

(declare-fun e!116523 () Bool)

(declare-fun tp!88468 () Bool)

(declare-datatypes ((Token!914 0))(
  ( (Token!915 (value!20988 TokenValue!607) (rule!1100 Rule!970) (size!2546 Int) (originalCharacters!628 List!3196)) )
))
(declare-datatypes ((List!3198 0))(
  ( (Nil!3188) (Cons!3188 (h!8585 Token!914) (t!28880 List!3198)) )
))
(declare-fun tokens!465 () List!3198)

(declare-fun e!116546 () Bool)

(declare-fun b!189841 () Bool)

(declare-fun inv!4012 (Token!914) Bool)

(assert (=> b!189841 (= e!116523 (and (inv!4012 (h!8585 tokens!465)) e!116546 tp!88468))))

(declare-fun b!189842 () Bool)

(declare-fun e!116529 () Bool)

(declare-fun e!116533 () Bool)

(declare-fun tp!88460 () Bool)

(assert (=> b!189842 (= e!116529 (and e!116533 tp!88460))))

(declare-fun b!189843 () Bool)

(declare-datatypes ((Unit!2996 0))(
  ( (Unit!2997) )
))
(declare-fun e!116537 () Unit!2996)

(declare-fun Unit!2998 () Unit!2996)

(assert (=> b!189843 (= e!116537 Unit!2998)))

(declare-fun e!116520 () Bool)

(assert (=> b!189844 (= e!116520 (and tp!88457 tp!88469))))

(declare-fun b!189845 () Bool)

(declare-fun res!86855 () Bool)

(declare-fun e!116521 () Bool)

(assert (=> b!189845 (=> (not res!86855) (not e!116521))))

(declare-fun lt!64597 () List!3196)

(declare-fun lt!64600 () List!3196)

(declare-fun list!1171 (BalanceConc!1992) List!3196)

(declare-fun seqFromList!547 (List!3196) BalanceConc!1992)

(assert (=> b!189845 (= res!86855 (= (list!1171 (seqFromList!547 lt!64597)) lt!64600))))

(declare-fun b!189846 () Bool)

(declare-fun e!116539 () Bool)

(declare-fun e!116524 () Bool)

(assert (=> b!189846 (= e!116539 e!116524)))

(declare-fun res!86836 () Bool)

(assert (=> b!189846 (=> res!86836 e!116524)))

(declare-fun lt!64578 () List!3196)

(declare-fun lt!64574 () List!3196)

(declare-fun lt!64570 () List!3196)

(assert (=> b!189846 (= res!86836 (or (not (= lt!64574 lt!64570)) (not (= lt!64570 lt!64578)) (not (= lt!64574 lt!64578))))))

(declare-datatypes ((LexerInterface!471 0))(
  ( (LexerInterfaceExt!468 (__x!2702 Int)) (Lexer!469) )
))
(declare-fun thiss!17480 () LexerInterface!471)

(declare-fun printList!155 (LexerInterface!471 List!3198) List!3196)

(assert (=> b!189846 (= lt!64570 (printList!155 thiss!17480 (Cons!3188 (h!8585 tokens!465) Nil!3188)))))

(declare-fun lt!64592 () BalanceConc!1992)

(assert (=> b!189846 (= lt!64574 (list!1171 lt!64592))))

(declare-datatypes ((IArray!1987 0))(
  ( (IArray!1988 (innerList!1051 List!3198)) )
))
(declare-datatypes ((Conc!993 0))(
  ( (Node!993 (left!2512 Conc!993) (right!2842 Conc!993) (csize!2216 Int) (cheight!1204 Int)) (Leaf!1625 (xs!3588 IArray!1987) (csize!2217 Int)) (Empty!993) )
))
(declare-datatypes ((BalanceConc!1994 0))(
  ( (BalanceConc!1995 (c!36371 Conc!993)) )
))
(declare-fun lt!64577 () BalanceConc!1994)

(declare-fun printTailRec!165 (LexerInterface!471 BalanceConc!1994 Int BalanceConc!1992) BalanceConc!1992)

(assert (=> b!189846 (= lt!64592 (printTailRec!165 thiss!17480 lt!64577 0 (BalanceConc!1993 Empty!992)))))

(declare-fun print!202 (LexerInterface!471 BalanceConc!1994) BalanceConc!1992)

(assert (=> b!189846 (= lt!64592 (print!202 thiss!17480 lt!64577))))

(declare-fun singletonSeq!137 (Token!914) BalanceConc!1994)

(assert (=> b!189846 (= lt!64577 (singletonSeq!137 (h!8585 tokens!465)))))

(declare-fun b!189847 () Bool)

(declare-fun lt!64584 () List!3196)

(declare-fun e!116543 () Bool)

(declare-fun ++!760 (List!3196 List!3196) List!3196)

(assert (=> b!189847 (= e!116543 (not (= lt!64597 (++!760 lt!64578 lt!64584))))))

(declare-fun b!189848 () Bool)

(declare-fun e!116528 () Bool)

(declare-fun tp!88463 () Bool)

(declare-fun inv!21 (TokenValue!607) Bool)

(assert (=> b!189848 (= e!116546 (and (inv!21 (value!20988 (h!8585 tokens!465))) e!116528 tp!88463))))

(declare-fun b!189849 () Bool)

(declare-fun e!116545 () Bool)

(assert (=> b!189849 (= e!116545 e!116539)))

(declare-fun res!86842 () Bool)

(assert (=> b!189849 (=> res!86842 e!116539)))

(assert (=> b!189849 (= res!86842 e!116543)))

(declare-fun res!86856 () Bool)

(assert (=> b!189849 (=> (not res!86856) (not e!116543))))

(declare-fun lt!64582 () Bool)

(assert (=> b!189849 (= res!86856 (not lt!64582))))

(declare-fun lt!64576 () List!3196)

(assert (=> b!189849 (= lt!64582 (= lt!64597 lt!64576))))

(declare-fun res!86848 () Bool)

(declare-fun e!116536 () Bool)

(assert (=> start!20506 (=> (not res!86848) (not e!116536))))

(assert (=> start!20506 (= res!86848 ((_ is Lexer!469) thiss!17480))))

(assert (=> start!20506 e!116536))

(assert (=> start!20506 true))

(assert (=> start!20506 e!116529))

(declare-fun separatorToken!170 () Token!914)

(declare-fun e!116548 () Bool)

(assert (=> start!20506 (and (inv!4012 separatorToken!170) e!116548)))

(assert (=> start!20506 e!116523))

(declare-fun b!189850 () Bool)

(declare-fun res!86839 () Bool)

(assert (=> b!189850 (=> (not res!86839) (not e!116536))))

(declare-fun rulesInvariant!437 (LexerInterface!471 List!3197) Bool)

(assert (=> b!189850 (= res!86839 (rulesInvariant!437 thiss!17480 rules!1920))))

(declare-fun e!116535 () Bool)

(assert (=> b!189851 (= e!116524 e!116535)))

(declare-fun res!86840 () Bool)

(assert (=> b!189851 (=> res!86840 e!116535)))

(declare-datatypes ((tuple2!3254 0))(
  ( (tuple2!3255 (_1!1843 Token!914) (_2!1843 BalanceConc!1992)) )
))
(declare-datatypes ((Option!448 0))(
  ( (None!447) (Some!447 (v!13958 tuple2!3254)) )
))
(declare-fun isDefined!299 (Option!448) Bool)

(declare-fun maxPrefixZipperSequence!164 (LexerInterface!471 List!3197 BalanceConc!1992) Option!448)

(assert (=> b!189851 (= res!86840 (not (isDefined!299 (maxPrefixZipperSequence!164 thiss!17480 rules!1920 (seqFromList!547 (originalCharacters!628 (h!8585 tokens!465)))))))))

(declare-fun lt!64596 () Unit!2996)

(declare-fun forallContained!152 (List!3198 Int Token!914) Unit!2996)

(assert (=> b!189851 (= lt!64596 (forallContained!152 tokens!465 lambda!5788 (h!8585 tokens!465)))))

(assert (=> b!189851 (= lt!64578 (originalCharacters!628 (h!8585 tokens!465)))))

(declare-fun b!189852 () Bool)

(declare-fun res!86837 () Bool)

(declare-fun e!116547 () Bool)

(assert (=> b!189852 (=> (not res!86837) (not e!116547))))

(declare-fun sepAndNonSepRulesDisjointChars!174 (List!3197 List!3197) Bool)

(assert (=> b!189852 (= res!86837 (sepAndNonSepRulesDisjointChars!174 rules!1920 rules!1920))))

(declare-fun e!116534 () Bool)

(assert (=> b!189853 (= e!116534 (and tp!88465 tp!88458))))

(declare-fun b!189854 () Bool)

(declare-fun e!116542 () Bool)

(declare-fun matchR!147 (Regex!809 List!3196) Bool)

(assert (=> b!189854 (= e!116542 (matchR!147 (regex!585 (rule!1100 (h!8585 tokens!465))) lt!64578))))

(declare-fun b!189855 () Bool)

(declare-fun res!86845 () Bool)

(assert (=> b!189855 (=> res!86845 e!116524)))

(declare-fun isEmpty!1568 (BalanceConc!1994) Bool)

(declare-datatypes ((tuple2!3256 0))(
  ( (tuple2!3257 (_1!1844 BalanceConc!1994) (_2!1844 BalanceConc!1992)) )
))
(declare-fun lex!271 (LexerInterface!471 List!3197 BalanceConc!1992) tuple2!3256)

(assert (=> b!189855 (= res!86845 (isEmpty!1568 (_1!1844 (lex!271 thiss!17480 rules!1920 (seqFromList!547 lt!64578)))))))

(declare-fun b!189856 () Bool)

(declare-fun res!86844 () Bool)

(assert (=> b!189856 (=> (not res!86844) (not e!116542))))

(declare-datatypes ((tuple2!3258 0))(
  ( (tuple2!3259 (_1!1845 Token!914) (_2!1845 List!3196)) )
))
(declare-fun lt!64590 () tuple2!3258)

(declare-fun isEmpty!1569 (List!3196) Bool)

(assert (=> b!189856 (= res!86844 (isEmpty!1569 (_2!1845 lt!64590)))))

(declare-fun b!189857 () Bool)

(declare-fun res!86851 () Bool)

(assert (=> b!189857 (=> (not res!86851) (not e!116547))))

(assert (=> b!189857 (= res!86851 ((_ is Cons!3188) tokens!465))))

(declare-fun res!86849 () Bool)

(assert (=> b!189858 (=> (not res!86849) (not e!116547))))

(declare-fun forall!667 (List!3198 Int) Bool)

(assert (=> b!189858 (= res!86849 (forall!667 tokens!465 lambda!5787))))

(declare-fun b!189859 () Bool)

(declare-fun tp!88466 () Bool)

(declare-fun inv!4009 (String!4115) Bool)

(declare-fun inv!4013 (TokenValueInjection!986) Bool)

(assert (=> b!189859 (= e!116528 (and tp!88466 (inv!4009 (tag!763 (rule!1100 (h!8585 tokens!465)))) (inv!4013 (transformation!585 (rule!1100 (h!8585 tokens!465)))) e!116520))))

(declare-fun b!189860 () Bool)

(assert (=> b!189860 (= e!116536 e!116547)))

(declare-fun res!86841 () Bool)

(assert (=> b!189860 (=> (not res!86841) (not e!116547))))

(declare-fun lt!64589 () BalanceConc!1994)

(declare-fun rulesProduceEachTokenIndividually!263 (LexerInterface!471 List!3197 BalanceConc!1994) Bool)

(assert (=> b!189860 (= res!86841 (rulesProduceEachTokenIndividually!263 thiss!17480 rules!1920 lt!64589))))

(declare-fun seqFromList!548 (List!3198) BalanceConc!1994)

(assert (=> b!189860 (= lt!64589 (seqFromList!548 tokens!465))))

(declare-fun b!189861 () Bool)

(declare-fun e!116525 () Bool)

(declare-fun lt!64588 () tuple2!3256)

(declare-fun isEmpty!1570 (BalanceConc!1992) Bool)

(assert (=> b!189861 (= e!116525 (isEmpty!1570 (_2!1844 lt!64588)))))

(declare-fun b!189862 () Bool)

(declare-fun e!116540 () Bool)

(assert (=> b!189862 (= e!116540 true)))

(declare-datatypes ((Option!449 0))(
  ( (None!448) (Some!448 (v!13959 tuple2!3258)) )
))
(declare-fun lt!64572 () Option!449)

(declare-fun lt!64593 () List!3196)

(declare-fun maxPrefix!201 (LexerInterface!471 List!3197 List!3196) Option!449)

(assert (=> b!189862 (= lt!64572 (maxPrefix!201 thiss!17480 rules!1920 lt!64593))))

(assert (=> b!189862 e!116525))

(declare-fun res!86846 () Bool)

(assert (=> b!189862 (=> (not res!86846) (not e!116525))))

(declare-fun size!2547 (BalanceConc!1994) Int)

(assert (=> b!189862 (= res!86846 (= (size!2547 (_1!1844 lt!64588)) 1))))

(declare-fun lt!64579 () BalanceConc!1992)

(assert (=> b!189862 (= lt!64588 (lex!271 thiss!17480 rules!1920 lt!64579))))

(declare-fun lt!64583 () BalanceConc!1994)

(assert (=> b!189862 (= lt!64579 (printTailRec!165 thiss!17480 lt!64583 0 (BalanceConc!1993 Empty!992)))))

(assert (=> b!189862 (= lt!64579 (print!202 thiss!17480 lt!64583))))

(assert (=> b!189862 (= lt!64583 (singletonSeq!137 separatorToken!170))))

(declare-fun lt!64595 () Token!914)

(declare-fun rulesProduceIndividualToken!220 (LexerInterface!471 List!3197 Token!914) Bool)

(assert (=> b!189862 (rulesProduceIndividualToken!220 thiss!17480 rules!1920 lt!64595)))

(declare-fun lt!64594 () Unit!2996)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!38 (LexerInterface!471 List!3197 List!3198 Token!914) Unit!2996)

(assert (=> b!189862 (= lt!64594 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!38 thiss!17480 rules!1920 tokens!465 lt!64595))))

(declare-fun head!674 (List!3198) Token!914)

(assert (=> b!189862 (= lt!64595 (head!674 (t!28880 tokens!465)))))

(declare-fun lt!64573 () Unit!2996)

(assert (=> b!189862 (= lt!64573 e!116537)))

(declare-fun c!36368 () Bool)

(declare-fun isEmpty!1571 (List!3198) Bool)

(assert (=> b!189862 (= c!36368 (isEmpty!1571 (t!28880 tokens!465)))))

(declare-fun lt!64585 () List!3196)

(declare-fun lt!64580 () Option!449)

(assert (=> b!189862 (= lt!64580 (maxPrefix!201 thiss!17480 rules!1920 lt!64585))))

(declare-fun lt!64571 () tuple2!3258)

(assert (=> b!189862 (= lt!64585 (_2!1845 lt!64571))))

(declare-fun lt!64599 () Unit!2996)

(declare-fun lemmaSamePrefixThenSameSuffix!106 (List!3196 List!3196 List!3196 List!3196 List!3196) Unit!2996)

(assert (=> b!189862 (= lt!64599 (lemmaSamePrefixThenSameSuffix!106 lt!64578 lt!64585 lt!64578 (_2!1845 lt!64571) lt!64597))))

(declare-fun get!918 (Option!449) tuple2!3258)

(assert (=> b!189862 (= lt!64571 (get!918 (maxPrefix!201 thiss!17480 rules!1920 lt!64597)))))

(declare-fun isPrefix!281 (List!3196 List!3196) Bool)

(assert (=> b!189862 (isPrefix!281 lt!64578 lt!64576)))

(declare-fun lt!64575 () Unit!2996)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!176 (List!3196 List!3196) Unit!2996)

(assert (=> b!189862 (= lt!64575 (lemmaConcatTwoListThenFirstIsPrefix!176 lt!64578 lt!64585))))

(declare-fun e!116532 () Bool)

(assert (=> b!189862 e!116532))

(declare-fun res!86854 () Bool)

(assert (=> b!189862 (=> res!86854 e!116532)))

(assert (=> b!189862 (= res!86854 (isEmpty!1571 tokens!465))))

(declare-fun lt!64587 () Unit!2996)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!46 (LexerInterface!471 List!3197 List!3198 Token!914) Unit!2996)

(assert (=> b!189862 (= lt!64587 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!46 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!189863 () Bool)

(assert (=> b!189863 (= e!116521 (not e!116545))))

(declare-fun res!86857 () Bool)

(assert (=> b!189863 (=> res!86857 e!116545)))

(declare-fun printWithSeparatorTokenWhenNeededRec!154 (LexerInterface!471 List!3197 BalanceConc!1994 Token!914 Int) BalanceConc!1992)

(assert (=> b!189863 (= res!86857 (not (= lt!64584 (list!1171 (printWithSeparatorTokenWhenNeededRec!154 thiss!17480 rules!1920 (seqFromList!548 (t!28880 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!64586 () List!3196)

(assert (=> b!189863 (= lt!64586 lt!64576)))

(assert (=> b!189863 (= lt!64576 (++!760 lt!64578 lt!64585))))

(assert (=> b!189863 (= lt!64586 (++!760 (++!760 lt!64578 lt!64593) lt!64584))))

(declare-fun lt!64581 () Unit!2996)

(declare-fun lemmaConcatAssociativity!274 (List!3196 List!3196 List!3196) Unit!2996)

(assert (=> b!189863 (= lt!64581 (lemmaConcatAssociativity!274 lt!64578 lt!64593 lt!64584))))

(declare-fun charsOf!240 (Token!914) BalanceConc!1992)

(assert (=> b!189863 (= lt!64578 (list!1171 (charsOf!240 (h!8585 tokens!465))))))

(assert (=> b!189863 (= lt!64585 (++!760 lt!64593 lt!64584))))

(declare-fun printWithSeparatorTokenWhenNeededList!164 (LexerInterface!471 List!3197 List!3198 Token!914) List!3196)

(assert (=> b!189863 (= lt!64584 (printWithSeparatorTokenWhenNeededList!164 thiss!17480 rules!1920 (t!28880 tokens!465) separatorToken!170))))

(assert (=> b!189863 (= lt!64593 (list!1171 (charsOf!240 separatorToken!170)))))

(declare-fun b!189864 () Bool)

(declare-fun Unit!2999 () Unit!2996)

(assert (=> b!189864 (= e!116537 Unit!2999)))

(assert (=> b!189864 false))

(declare-fun b!189865 () Bool)

(declare-fun tp!88467 () Bool)

(declare-fun e!116544 () Bool)

(assert (=> b!189865 (= e!116548 (and (inv!21 (value!20988 separatorToken!170)) e!116544 tp!88467))))

(declare-fun b!189866 () Bool)

(declare-fun res!86835 () Bool)

(assert (=> b!189866 (=> (not res!86835) (not e!116525))))

(declare-fun apply!484 (BalanceConc!1994 Int) Token!914)

(assert (=> b!189866 (= res!86835 (= (apply!484 (_1!1844 lt!64588) 0) separatorToken!170))))

(declare-fun b!189867 () Bool)

(declare-fun e!116530 () Bool)

(assert (=> b!189867 (= e!116532 e!116530)))

(declare-fun res!86834 () Bool)

(assert (=> b!189867 (=> (not res!86834) (not e!116530))))

(declare-fun lt!64591 () Option!449)

(declare-fun isDefined!300 (Option!449) Bool)

(assert (=> b!189867 (= res!86834 (isDefined!300 lt!64591))))

(assert (=> b!189867 (= lt!64591 (maxPrefix!201 thiss!17480 rules!1920 lt!64597))))

(declare-fun b!189868 () Bool)

(assert (=> b!189868 (= e!116535 e!116540)))

(declare-fun res!86833 () Bool)

(assert (=> b!189868 (=> res!86833 e!116540)))

(assert (=> b!189868 (= res!86833 (not lt!64582))))

(assert (=> b!189868 e!116542))

(declare-fun res!86847 () Bool)

(assert (=> b!189868 (=> (not res!86847) (not e!116542))))

(assert (=> b!189868 (= res!86847 (= (_1!1845 lt!64590) (h!8585 tokens!465)))))

(declare-fun lt!64598 () Option!449)

(assert (=> b!189868 (= lt!64590 (get!918 lt!64598))))

(assert (=> b!189868 (isDefined!300 lt!64598)))

(assert (=> b!189868 (= lt!64598 (maxPrefix!201 thiss!17480 rules!1920 lt!64578))))

(declare-fun b!189869 () Bool)

(assert (=> b!189869 (= e!116530 (= (_1!1845 (get!918 lt!64591)) (head!674 tokens!465)))))

(declare-fun tp!88459 () Bool)

(declare-fun b!189870 () Bool)

(assert (=> b!189870 (= e!116533 (and tp!88459 (inv!4009 (tag!763 (h!8584 rules!1920))) (inv!4013 (transformation!585 (h!8584 rules!1920))) e!116534))))

(declare-fun b!189871 () Bool)

(declare-fun res!86843 () Bool)

(assert (=> b!189871 (=> (not res!86843) (not e!116547))))

(assert (=> b!189871 (= res!86843 (rulesProduceIndividualToken!220 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!189872 () Bool)

(declare-fun res!86850 () Bool)

(assert (=> b!189872 (=> (not res!86850) (not e!116536))))

(declare-fun isEmpty!1572 (List!3197) Bool)

(assert (=> b!189872 (= res!86850 (not (isEmpty!1572 rules!1920)))))

(declare-fun e!116526 () Bool)

(declare-fun b!189873 () Bool)

(declare-fun tp!88462 () Bool)

(assert (=> b!189873 (= e!116544 (and tp!88462 (inv!4009 (tag!763 (rule!1100 separatorToken!170))) (inv!4013 (transformation!585 (rule!1100 separatorToken!170))) e!116526))))

(declare-fun b!189874 () Bool)

(assert (=> b!189874 (= e!116547 e!116521)))

(declare-fun res!86852 () Bool)

(assert (=> b!189874 (=> (not res!86852) (not e!116521))))

(assert (=> b!189874 (= res!86852 (= lt!64597 lt!64600))))

(assert (=> b!189874 (= lt!64600 (list!1171 (printWithSeparatorTokenWhenNeededRec!154 thiss!17480 rules!1920 lt!64589 separatorToken!170 0)))))

(assert (=> b!189874 (= lt!64597 (printWithSeparatorTokenWhenNeededList!164 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> b!189875 (= e!116526 (and tp!88464 tp!88461))))

(declare-fun b!189876 () Bool)

(declare-fun res!86838 () Bool)

(assert (=> b!189876 (=> (not res!86838) (not e!116547))))

(assert (=> b!189876 (= res!86838 (isSeparator!585 (rule!1100 separatorToken!170)))))

(declare-fun b!189877 () Bool)

(declare-fun res!86853 () Bool)

(assert (=> b!189877 (=> res!86853 e!116524)))

(assert (=> b!189877 (= res!86853 (not (rulesProduceIndividualToken!220 thiss!17480 rules!1920 (h!8585 tokens!465))))))

(assert (= (and start!20506 res!86848) b!189872))

(assert (= (and b!189872 res!86850) b!189850))

(assert (= (and b!189850 res!86839) b!189860))

(assert (= (and b!189860 res!86841) b!189871))

(assert (= (and b!189871 res!86843) b!189876))

(assert (= (and b!189876 res!86838) b!189858))

(assert (= (and b!189858 res!86849) b!189852))

(assert (= (and b!189852 res!86837) b!189857))

(assert (= (and b!189857 res!86851) b!189874))

(assert (= (and b!189874 res!86852) b!189845))

(assert (= (and b!189845 res!86855) b!189863))

(assert (= (and b!189863 (not res!86857)) b!189849))

(assert (= (and b!189849 res!86856) b!189847))

(assert (= (and b!189849 (not res!86842)) b!189846))

(assert (= (and b!189846 (not res!86836)) b!189877))

(assert (= (and b!189877 (not res!86853)) b!189855))

(assert (= (and b!189855 (not res!86845)) b!189851))

(assert (= (and b!189851 (not res!86840)) b!189868))

(assert (= (and b!189868 res!86847) b!189856))

(assert (= (and b!189856 res!86844) b!189854))

(assert (= (and b!189868 (not res!86833)) b!189862))

(assert (= (and b!189862 (not res!86854)) b!189867))

(assert (= (and b!189867 res!86834) b!189869))

(assert (= (and b!189862 c!36368) b!189864))

(assert (= (and b!189862 (not c!36368)) b!189843))

(assert (= (and b!189862 res!86846) b!189866))

(assert (= (and b!189866 res!86835) b!189861))

(assert (= b!189870 b!189853))

(assert (= b!189842 b!189870))

(assert (= (and start!20506 ((_ is Cons!3187) rules!1920)) b!189842))

(assert (= b!189873 b!189875))

(assert (= b!189865 b!189873))

(assert (= start!20506 b!189865))

(assert (= b!189859 b!189844))

(assert (= b!189848 b!189859))

(assert (= b!189841 b!189848))

(assert (= (and start!20506 ((_ is Cons!3188) tokens!465)) b!189841))

(declare-fun m!195053 () Bool)

(assert (=> b!189865 m!195053))

(declare-fun m!195055 () Bool)

(assert (=> b!189869 m!195055))

(declare-fun m!195057 () Bool)

(assert (=> b!189869 m!195057))

(declare-fun m!195059 () Bool)

(assert (=> b!189868 m!195059))

(declare-fun m!195061 () Bool)

(assert (=> b!189868 m!195061))

(declare-fun m!195063 () Bool)

(assert (=> b!189868 m!195063))

(declare-fun m!195065 () Bool)

(assert (=> b!189873 m!195065))

(declare-fun m!195067 () Bool)

(assert (=> b!189873 m!195067))

(declare-fun m!195069 () Bool)

(assert (=> b!189858 m!195069))

(declare-fun m!195071 () Bool)

(assert (=> b!189872 m!195071))

(declare-fun m!195073 () Bool)

(assert (=> b!189870 m!195073))

(declare-fun m!195075 () Bool)

(assert (=> b!189870 m!195075))

(declare-fun m!195077 () Bool)

(assert (=> b!189861 m!195077))

(declare-fun m!195079 () Bool)

(assert (=> b!189859 m!195079))

(declare-fun m!195081 () Bool)

(assert (=> b!189859 m!195081))

(declare-fun m!195083 () Bool)

(assert (=> b!189860 m!195083))

(declare-fun m!195085 () Bool)

(assert (=> b!189860 m!195085))

(declare-fun m!195087 () Bool)

(assert (=> b!189856 m!195087))

(declare-fun m!195089 () Bool)

(assert (=> b!189866 m!195089))

(declare-fun m!195091 () Bool)

(assert (=> b!189847 m!195091))

(declare-fun m!195093 () Bool)

(assert (=> b!189845 m!195093))

(assert (=> b!189845 m!195093))

(declare-fun m!195095 () Bool)

(assert (=> b!189845 m!195095))

(declare-fun m!195097 () Bool)

(assert (=> b!189841 m!195097))

(declare-fun m!195099 () Bool)

(assert (=> b!189846 m!195099))

(declare-fun m!195101 () Bool)

(assert (=> b!189846 m!195101))

(declare-fun m!195103 () Bool)

(assert (=> b!189846 m!195103))

(declare-fun m!195105 () Bool)

(assert (=> b!189846 m!195105))

(declare-fun m!195107 () Bool)

(assert (=> b!189846 m!195107))

(declare-fun m!195109 () Bool)

(assert (=> b!189877 m!195109))

(declare-fun m!195111 () Bool)

(assert (=> b!189863 m!195111))

(declare-fun m!195113 () Bool)

(assert (=> b!189863 m!195113))

(declare-fun m!195115 () Bool)

(assert (=> b!189863 m!195115))

(declare-fun m!195117 () Bool)

(assert (=> b!189863 m!195117))

(declare-fun m!195119 () Bool)

(assert (=> b!189863 m!195119))

(declare-fun m!195121 () Bool)

(assert (=> b!189863 m!195121))

(assert (=> b!189863 m!195121))

(declare-fun m!195123 () Bool)

(assert (=> b!189863 m!195123))

(assert (=> b!189863 m!195117))

(declare-fun m!195125 () Bool)

(assert (=> b!189863 m!195125))

(declare-fun m!195127 () Bool)

(assert (=> b!189863 m!195127))

(assert (=> b!189863 m!195111))

(declare-fun m!195129 () Bool)

(assert (=> b!189863 m!195129))

(declare-fun m!195131 () Bool)

(assert (=> b!189863 m!195131))

(assert (=> b!189863 m!195131))

(declare-fun m!195133 () Bool)

(assert (=> b!189863 m!195133))

(assert (=> b!189863 m!195129))

(declare-fun m!195135 () Bool)

(assert (=> b!189863 m!195135))

(declare-fun m!195137 () Bool)

(assert (=> b!189848 m!195137))

(declare-fun m!195139 () Bool)

(assert (=> start!20506 m!195139))

(declare-fun m!195141 () Bool)

(assert (=> b!189854 m!195141))

(declare-fun m!195143 () Bool)

(assert (=> b!189852 m!195143))

(declare-fun m!195145 () Bool)

(assert (=> b!189850 m!195145))

(declare-fun m!195147 () Bool)

(assert (=> b!189871 m!195147))

(declare-fun m!195149 () Bool)

(assert (=> b!189862 m!195149))

(declare-fun m!195151 () Bool)

(assert (=> b!189862 m!195151))

(declare-fun m!195153 () Bool)

(assert (=> b!189862 m!195153))

(declare-fun m!195155 () Bool)

(assert (=> b!189862 m!195155))

(declare-fun m!195157 () Bool)

(assert (=> b!189862 m!195157))

(declare-fun m!195159 () Bool)

(assert (=> b!189862 m!195159))

(declare-fun m!195161 () Bool)

(assert (=> b!189862 m!195161))

(assert (=> b!189862 m!195155))

(declare-fun m!195163 () Bool)

(assert (=> b!189862 m!195163))

(declare-fun m!195165 () Bool)

(assert (=> b!189862 m!195165))

(declare-fun m!195167 () Bool)

(assert (=> b!189862 m!195167))

(declare-fun m!195169 () Bool)

(assert (=> b!189862 m!195169))

(declare-fun m!195171 () Bool)

(assert (=> b!189862 m!195171))

(declare-fun m!195173 () Bool)

(assert (=> b!189862 m!195173))

(declare-fun m!195175 () Bool)

(assert (=> b!189862 m!195175))

(declare-fun m!195177 () Bool)

(assert (=> b!189862 m!195177))

(declare-fun m!195179 () Bool)

(assert (=> b!189862 m!195179))

(declare-fun m!195181 () Bool)

(assert (=> b!189862 m!195181))

(declare-fun m!195183 () Bool)

(assert (=> b!189862 m!195183))

(declare-fun m!195185 () Bool)

(assert (=> b!189874 m!195185))

(assert (=> b!189874 m!195185))

(declare-fun m!195187 () Bool)

(assert (=> b!189874 m!195187))

(declare-fun m!195189 () Bool)

(assert (=> b!189874 m!195189))

(declare-fun m!195191 () Bool)

(assert (=> b!189867 m!195191))

(assert (=> b!189867 m!195155))

(declare-fun m!195193 () Bool)

(assert (=> b!189855 m!195193))

(assert (=> b!189855 m!195193))

(declare-fun m!195195 () Bool)

(assert (=> b!189855 m!195195))

(declare-fun m!195197 () Bool)

(assert (=> b!189855 m!195197))

(declare-fun m!195199 () Bool)

(assert (=> b!189851 m!195199))

(assert (=> b!189851 m!195199))

(declare-fun m!195201 () Bool)

(assert (=> b!189851 m!195201))

(assert (=> b!189851 m!195201))

(declare-fun m!195203 () Bool)

(assert (=> b!189851 m!195203))

(declare-fun m!195205 () Bool)

(assert (=> b!189851 m!195205))

(check-sat (not b_next!7547) (not b!189877) (not b_next!7545) (not b!189869) (not b!189856) (not b!189847) (not b_next!7553) (not b!189841) (not b!189872) (not b!189866) (not b!189870) b_and!13149 (not start!20506) (not b!189865) (not b!189854) b_and!13159 (not b!189850) b_and!13155 (not b!189860) (not b!189868) (not b!189873) (not b!189855) (not b!189886) (not b!189862) (not b!189874) b_and!13153 (not b!189861) (not b!189863) (not b!189858) (not b!189867) b_and!13157 (not b!189859) (not b!189852) (not b_next!7551) (not b!189871) (not b_next!7549) (not b!189845) (not b!189846) (not b!189851) (not b_next!7555) (not b!189842) (not b!189848) b_and!13151)
(check-sat b_and!13149 (not b_next!7547) b_and!13159 (not b_next!7545) b_and!13155 b_and!13153 b_and!13157 (not b_next!7551) (not b_next!7549) (not b_next!7555) (not b_next!7553) b_and!13151)
