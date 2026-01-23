; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25974 () Bool)

(assert start!25974)

(declare-fun b!244024 () Bool)

(declare-fun b_free!8945 () Bool)

(declare-fun b_next!8945 () Bool)

(assert (=> b!244024 (= b_free!8945 (not b_next!8945))))

(declare-fun tp!95657 () Bool)

(declare-fun b_and!18317 () Bool)

(assert (=> b!244024 (= tp!95657 b_and!18317)))

(declare-fun b_free!8947 () Bool)

(declare-fun b_next!8947 () Bool)

(assert (=> b!244024 (= b_free!8947 (not b_next!8947))))

(declare-fun tp!95653 () Bool)

(declare-fun b_and!18319 () Bool)

(assert (=> b!244024 (= tp!95653 b_and!18319)))

(declare-fun b!244029 () Bool)

(declare-fun b_free!8949 () Bool)

(declare-fun b_next!8949 () Bool)

(assert (=> b!244029 (= b_free!8949 (not b_next!8949))))

(declare-fun tp!95658 () Bool)

(declare-fun b_and!18321 () Bool)

(assert (=> b!244029 (= tp!95658 b_and!18321)))

(declare-fun b_free!8951 () Bool)

(declare-fun b_next!8951 () Bool)

(assert (=> b!244029 (= b_free!8951 (not b_next!8951))))

(declare-fun tp!95650 () Bool)

(declare-fun b_and!18323 () Bool)

(assert (=> b!244029 (= tp!95650 b_and!18323)))

(declare-fun b!244044 () Bool)

(declare-fun b_free!8953 () Bool)

(declare-fun b_next!8953 () Bool)

(assert (=> b!244044 (= b_free!8953 (not b_next!8953))))

(declare-fun tp!95654 () Bool)

(declare-fun b_and!18325 () Bool)

(assert (=> b!244044 (= tp!95654 b_and!18325)))

(declare-fun b_free!8955 () Bool)

(declare-fun b_next!8955 () Bool)

(assert (=> b!244044 (= b_free!8955 (not b_next!8955))))

(declare-fun tp!95659 () Bool)

(declare-fun b_and!18327 () Bool)

(assert (=> b!244044 (= tp!95659 b_and!18327)))

(declare-fun bs!26314 () Bool)

(declare-fun b!244043 () Bool)

(declare-fun b!244051 () Bool)

(assert (= bs!26314 (and b!244043 b!244051)))

(declare-fun lambda!7936 () Int)

(declare-fun lambda!7935 () Int)

(assert (=> bs!26314 (not (= lambda!7936 lambda!7935))))

(declare-fun b!244066 () Bool)

(declare-fun e!151078 () Bool)

(assert (=> b!244066 (= e!151078 true)))

(declare-fun b!244065 () Bool)

(declare-fun e!151077 () Bool)

(assert (=> b!244065 (= e!151077 e!151078)))

(declare-fun b!244064 () Bool)

(declare-fun e!151076 () Bool)

(assert (=> b!244064 (= e!151076 e!151077)))

(assert (=> b!244043 e!151076))

(assert (= b!244065 b!244066))

(assert (= b!244064 b!244065))

(declare-datatypes ((List!3569 0))(
  ( (Nil!3559) (Cons!3559 (h!8956 (_ BitVec 16)) (t!35025 List!3569)) )
))
(declare-datatypes ((TokenValue!693 0))(
  ( (FloatLiteralValue!1386 (text!5296 List!3569)) (TokenValueExt!692 (__x!2873 Int)) (Broken!3465 (value!23413 List!3569)) (Object!702) (End!693) (Def!693) (Underscore!693) (Match!693) (Else!693) (Error!693) (Case!693) (If!693) (Extends!693) (Abstract!693) (Class!693) (Val!693) (DelimiterValue!1386 (del!753 List!3569)) (KeywordValue!699 (value!23414 List!3569)) (CommentValue!1386 (value!23415 List!3569)) (WhitespaceValue!1386 (value!23416 List!3569)) (IndentationValue!693 (value!23417 List!3569)) (String!4544) (Int32!693) (Broken!3466 (value!23418 List!3569)) (Boolean!694) (Unit!4339) (OperatorValue!696 (op!753 List!3569)) (IdentifierValue!1386 (value!23419 List!3569)) (IdentifierValue!1387 (value!23420 List!3569)) (WhitespaceValue!1387 (value!23421 List!3569)) (True!1386) (False!1386) (Broken!3467 (value!23422 List!3569)) (Broken!3468 (value!23423 List!3569)) (True!1387) (RightBrace!693) (RightBracket!693) (Colon!693) (Null!693) (Comma!693) (LeftBracket!693) (False!1387) (LeftBrace!693) (ImaginaryLiteralValue!693 (text!5297 List!3569)) (StringLiteralValue!2079 (value!23424 List!3569)) (EOFValue!693 (value!23425 List!3569)) (IdentValue!693 (value!23426 List!3569)) (DelimiterValue!1387 (value!23427 List!3569)) (DedentValue!693 (value!23428 List!3569)) (NewLineValue!693 (value!23429 List!3569)) (IntegerValue!2079 (value!23430 (_ BitVec 32)) (text!5298 List!3569)) (IntegerValue!2080 (value!23431 Int) (text!5299 List!3569)) (Times!693) (Or!693) (Equal!693) (Minus!693) (Broken!3469 (value!23432 List!3569)) (And!693) (Div!693) (LessEqual!693) (Mod!693) (Concat!1588) (Not!693) (Plus!693) (SpaceValue!693 (value!23433 List!3569)) (IntegerValue!2081 (value!23434 Int) (text!5300 List!3569)) (StringLiteralValue!2080 (text!5301 List!3569)) (FloatLiteralValue!1387 (text!5302 List!3569)) (BytesLiteralValue!693 (value!23435 List!3569)) (CommentValue!1387 (value!23436 List!3569)) (StringLiteralValue!2081 (value!23437 List!3569)) (ErrorTokenValue!693 (msg!754 List!3569)) )
))
(declare-datatypes ((C!2712 0))(
  ( (C!2713 (val!1242 Int)) )
))
(declare-datatypes ((List!3570 0))(
  ( (Nil!3560) (Cons!3560 (h!8957 C!2712) (t!35026 List!3570)) )
))
(declare-datatypes ((IArray!2329 0))(
  ( (IArray!2330 (innerList!1222 List!3570)) )
))
(declare-datatypes ((Conc!1164 0))(
  ( (Node!1164 (left!2898 Conc!1164) (right!3228 Conc!1164) (csize!2558 Int) (cheight!1375 Int)) (Leaf!1839 (xs!3759 IArray!2329) (csize!2559 Int)) (Empty!1164) )
))
(declare-datatypes ((BalanceConc!2336 0))(
  ( (BalanceConc!2337 (c!46852 Conc!1164)) )
))
(declare-datatypes ((TokenValueInjection!1158 0))(
  ( (TokenValueInjection!1159 (toValue!1374 Int) (toChars!1233 Int)) )
))
(declare-datatypes ((String!4545 0))(
  ( (String!4546 (value!23438 String)) )
))
(declare-datatypes ((Regex!895 0))(
  ( (ElementMatch!895 (c!46853 C!2712)) (Concat!1589 (regOne!2302 Regex!895) (regTwo!2302 Regex!895)) (EmptyExpr!895) (Star!895 (reg!1224 Regex!895)) (EmptyLang!895) (Union!895 (regOne!2303 Regex!895) (regTwo!2303 Regex!895)) )
))
(declare-datatypes ((Rule!1142 0))(
  ( (Rule!1143 (regex!671 Regex!895) (tag!879 String!4545) (isSeparator!671 Bool) (transformation!671 TokenValueInjection!1158)) )
))
(declare-datatypes ((List!3571 0))(
  ( (Nil!3561) (Cons!3561 (h!8958 Rule!1142) (t!35027 List!3571)) )
))
(declare-fun rules!1920 () List!3571)

(get-info :version)

(assert (= (and b!244043 ((_ is Cons!3561) rules!1920)) b!244064))

(declare-fun order!2565 () Int)

(declare-fun order!2567 () Int)

(declare-fun dynLambda!1711 (Int Int) Int)

(declare-fun dynLambda!1712 (Int Int) Int)

(assert (=> b!244066 (< (dynLambda!1711 order!2565 (toValue!1374 (transformation!671 (h!8958 rules!1920)))) (dynLambda!1712 order!2567 lambda!7936))))

(declare-fun order!2569 () Int)

(declare-fun dynLambda!1713 (Int Int) Int)

(assert (=> b!244066 (< (dynLambda!1713 order!2569 (toChars!1233 (transformation!671 (h!8958 rules!1920)))) (dynLambda!1712 order!2567 lambda!7936))))

(assert (=> b!244043 true))

(declare-fun e!151045 () Bool)

(assert (=> b!244024 (= e!151045 (and tp!95657 tp!95653))))

(declare-fun b!244025 () Bool)

(declare-fun res!112647 () Bool)

(declare-fun e!151055 () Bool)

(assert (=> b!244025 (=> (not res!112647) (not e!151055))))

(declare-datatypes ((Token!1086 0))(
  ( (Token!1087 (value!23439 TokenValue!693) (rule!1248 Rule!1142) (size!2853 Int) (originalCharacters!714 List!3570)) )
))
(declare-datatypes ((List!3572 0))(
  ( (Nil!3562) (Cons!3562 (h!8959 Token!1086) (t!35028 List!3572)) )
))
(declare-fun tokens!465 () List!3572)

(assert (=> b!244025 (= res!112647 ((_ is Cons!3562) tokens!465))))

(declare-fun b!244026 () Bool)

(declare-fun e!151054 () Bool)

(assert (=> b!244026 (= e!151054 e!151055)))

(declare-fun res!112654 () Bool)

(assert (=> b!244026 (=> (not res!112654) (not e!151055))))

(declare-datatypes ((IArray!2331 0))(
  ( (IArray!2332 (innerList!1223 List!3572)) )
))
(declare-datatypes ((Conc!1165 0))(
  ( (Node!1165 (left!2899 Conc!1165) (right!3229 Conc!1165) (csize!2560 Int) (cheight!1376 Int)) (Leaf!1840 (xs!3760 IArray!2331) (csize!2561 Int)) (Empty!1165) )
))
(declare-datatypes ((BalanceConc!2338 0))(
  ( (BalanceConc!2339 (c!46854 Conc!1165)) )
))
(declare-fun lt!98677 () BalanceConc!2338)

(declare-datatypes ((LexerInterface!557 0))(
  ( (LexerInterfaceExt!554 (__x!2874 Int)) (Lexer!555) )
))
(declare-fun thiss!17480 () LexerInterface!557)

(declare-fun rulesProduceEachTokenIndividually!349 (LexerInterface!557 List!3571 BalanceConc!2338) Bool)

(assert (=> b!244026 (= res!112654 (rulesProduceEachTokenIndividually!349 thiss!17480 rules!1920 lt!98677))))

(declare-fun seqFromList!719 (List!3572) BalanceConc!2338)

(assert (=> b!244026 (= lt!98677 (seqFromList!719 tokens!465))))

(declare-fun b!244028 () Bool)

(declare-fun e!151060 () Bool)

(declare-fun lt!98679 () List!3570)

(declare-fun matchR!233 (Regex!895 List!3570) Bool)

(assert (=> b!244028 (= e!151060 (matchR!233 (regex!671 (rule!1248 (h!8959 tokens!465))) lt!98679))))

(declare-fun e!151061 () Bool)

(assert (=> b!244029 (= e!151061 (and tp!95658 tp!95650))))

(declare-fun b!244030 () Bool)

(declare-fun e!151058 () Bool)

(declare-fun e!151052 () Bool)

(declare-fun tp!95651 () Bool)

(assert (=> b!244030 (= e!151058 (and e!151052 tp!95651))))

(declare-fun b!244031 () Bool)

(declare-fun e!151064 () Bool)

(assert (=> b!244031 (= e!151055 e!151064)))

(declare-fun res!112643 () Bool)

(assert (=> b!244031 (=> (not res!112643) (not e!151064))))

(declare-fun lt!98670 () List!3570)

(declare-fun lt!98678 () List!3570)

(assert (=> b!244031 (= res!112643 (= lt!98670 lt!98678))))

(declare-fun separatorToken!170 () Token!1086)

(declare-fun list!1403 (BalanceConc!2336) List!3570)

(declare-fun printWithSeparatorTokenWhenNeededRec!240 (LexerInterface!557 List!3571 BalanceConc!2338 Token!1086 Int) BalanceConc!2336)

(assert (=> b!244031 (= lt!98678 (list!1403 (printWithSeparatorTokenWhenNeededRec!240 thiss!17480 rules!1920 lt!98677 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!250 (LexerInterface!557 List!3571 List!3572 Token!1086) List!3570)

(assert (=> b!244031 (= lt!98670 (printWithSeparatorTokenWhenNeededList!250 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!244032 () Bool)

(declare-fun tp!95661 () Bool)

(declare-fun e!151062 () Bool)

(declare-fun inv!4417 (String!4545) Bool)

(declare-fun inv!4420 (TokenValueInjection!1158) Bool)

(assert (=> b!244032 (= e!151062 (and tp!95661 (inv!4417 (tag!879 (rule!1248 (h!8959 tokens!465)))) (inv!4420 (transformation!671 (rule!1248 (h!8959 tokens!465)))) e!151045))))

(declare-fun b!244033 () Bool)

(declare-fun res!112653 () Bool)

(assert (=> b!244033 (=> (not res!112653) (not e!151054))))

(declare-fun rulesInvariant!523 (LexerInterface!557 List!3571) Bool)

(assert (=> b!244033 (= res!112653 (rulesInvariant!523 thiss!17480 rules!1920))))

(declare-fun b!244034 () Bool)

(declare-fun res!112644 () Bool)

(declare-fun e!151068 () Bool)

(assert (=> b!244034 (=> res!112644 e!151068)))

(declare-fun isEmpty!2146 (BalanceConc!2338) Bool)

(declare-datatypes ((tuple2!3934 0))(
  ( (tuple2!3935 (_1!2183 BalanceConc!2338) (_2!2183 BalanceConc!2336)) )
))
(declare-fun lex!357 (LexerInterface!557 List!3571 BalanceConc!2336) tuple2!3934)

(declare-fun seqFromList!720 (List!3570) BalanceConc!2336)

(assert (=> b!244034 (= res!112644 (isEmpty!2146 (_1!2183 (lex!357 thiss!17480 rules!1920 (seqFromList!720 lt!98679)))))))

(declare-fun b!244035 () Bool)

(declare-fun e!151057 () Bool)

(declare-fun e!151046 () Bool)

(assert (=> b!244035 (= e!151057 e!151046)))

(declare-fun res!112656 () Bool)

(assert (=> b!244035 (=> res!112656 e!151046)))

(declare-fun lt!98682 () Bool)

(assert (=> b!244035 (= res!112656 lt!98682)))

(assert (=> b!244035 e!151060))

(declare-fun res!112640 () Bool)

(assert (=> b!244035 (=> (not res!112640) (not e!151060))))

(declare-datatypes ((tuple2!3936 0))(
  ( (tuple2!3937 (_1!2184 Token!1086) (_2!2184 List!3570)) )
))
(declare-fun lt!98666 () tuple2!3936)

(assert (=> b!244035 (= res!112640 (= (_1!2184 lt!98666) (h!8959 tokens!465)))))

(declare-datatypes ((Option!704 0))(
  ( (None!703) (Some!703 (v!14464 tuple2!3936)) )
))
(declare-fun lt!98673 () Option!704)

(declare-fun get!1161 (Option!704) tuple2!3936)

(assert (=> b!244035 (= lt!98666 (get!1161 lt!98673))))

(declare-fun isDefined!555 (Option!704) Bool)

(assert (=> b!244035 (isDefined!555 lt!98673)))

(declare-fun maxPrefix!287 (LexerInterface!557 List!3571 List!3570) Option!704)

(assert (=> b!244035 (= lt!98673 (maxPrefix!287 thiss!17480 rules!1920 lt!98679))))

(declare-fun b!244036 () Bool)

(declare-fun e!151063 () Bool)

(assert (=> b!244036 (= e!151063 e!151068)))

(declare-fun res!112648 () Bool)

(assert (=> b!244036 (=> res!112648 e!151068)))

(declare-fun lt!98680 () List!3570)

(declare-fun lt!98671 () List!3570)

(assert (=> b!244036 (= res!112648 (or (not (= lt!98680 lt!98671)) (not (= lt!98671 lt!98679)) (not (= lt!98680 lt!98679))))))

(declare-fun printList!241 (LexerInterface!557 List!3572) List!3570)

(assert (=> b!244036 (= lt!98671 (printList!241 thiss!17480 (Cons!3562 (h!8959 tokens!465) Nil!3562)))))

(declare-fun lt!98665 () BalanceConc!2336)

(assert (=> b!244036 (= lt!98680 (list!1403 lt!98665))))

(declare-fun lt!98681 () BalanceConc!2338)

(declare-fun printTailRec!251 (LexerInterface!557 BalanceConc!2338 Int BalanceConc!2336) BalanceConc!2336)

(assert (=> b!244036 (= lt!98665 (printTailRec!251 thiss!17480 lt!98681 0 (BalanceConc!2337 Empty!1164)))))

(declare-fun print!288 (LexerInterface!557 BalanceConc!2338) BalanceConc!2336)

(assert (=> b!244036 (= lt!98665 (print!288 thiss!17480 lt!98681))))

(declare-fun singletonSeq!223 (Token!1086) BalanceConc!2338)

(assert (=> b!244036 (= lt!98681 (singletonSeq!223 (h!8959 tokens!465)))))

(declare-fun e!151067 () Bool)

(declare-fun tp!95655 () Bool)

(declare-fun b!244037 () Bool)

(declare-fun inv!21 (TokenValue!693) Bool)

(assert (=> b!244037 (= e!151067 (and (inv!21 (value!23439 (h!8959 tokens!465))) e!151062 tp!95655))))

(declare-fun e!151049 () Bool)

(declare-fun b!244038 () Bool)

(declare-fun lt!98676 () List!3570)

(declare-fun ++!908 (List!3570 List!3570) List!3570)

(assert (=> b!244038 (= e!151049 (not (= lt!98670 (++!908 lt!98679 lt!98676))))))

(declare-fun b!244039 () Bool)

(declare-fun tp!95649 () Bool)

(assert (=> b!244039 (= e!151052 (and tp!95649 (inv!4417 (tag!879 (h!8958 rules!1920))) (inv!4420 (transformation!671 (h!8958 rules!1920))) e!151061))))

(declare-fun b!244040 () Bool)

(declare-fun e!151065 () Bool)

(assert (=> b!244040 (= e!151064 (not e!151065))))

(declare-fun res!112635 () Bool)

(assert (=> b!244040 (=> res!112635 e!151065)))

(assert (=> b!244040 (= res!112635 (not (= lt!98676 (list!1403 (printWithSeparatorTokenWhenNeededRec!240 thiss!17480 rules!1920 (seqFromList!719 (t!35028 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!98669 () List!3570)

(declare-fun lt!98667 () List!3570)

(assert (=> b!244040 (= lt!98669 lt!98667)))

(declare-fun lt!98675 () List!3570)

(assert (=> b!244040 (= lt!98667 (++!908 lt!98679 lt!98675))))

(declare-fun lt!98668 () List!3570)

(assert (=> b!244040 (= lt!98669 (++!908 (++!908 lt!98679 lt!98668) lt!98676))))

(declare-datatypes ((Unit!4340 0))(
  ( (Unit!4341) )
))
(declare-fun lt!98672 () Unit!4340)

(declare-fun lemmaConcatAssociativity!376 (List!3570 List!3570 List!3570) Unit!4340)

(assert (=> b!244040 (= lt!98672 (lemmaConcatAssociativity!376 lt!98679 lt!98668 lt!98676))))

(declare-fun charsOf!326 (Token!1086) BalanceConc!2336)

(assert (=> b!244040 (= lt!98679 (list!1403 (charsOf!326 (h!8959 tokens!465))))))

(assert (=> b!244040 (= lt!98675 (++!908 lt!98668 lt!98676))))

(assert (=> b!244040 (= lt!98676 (printWithSeparatorTokenWhenNeededList!250 thiss!17480 rules!1920 (t!35028 tokens!465) separatorToken!170))))

(assert (=> b!244040 (= lt!98668 (list!1403 (charsOf!326 separatorToken!170)))))

(declare-fun b!244041 () Bool)

(declare-fun res!112636 () Bool)

(assert (=> b!244041 (=> (not res!112636) (not e!151054))))

(declare-fun isEmpty!2147 (List!3571) Bool)

(assert (=> b!244041 (= res!112636 (not (isEmpty!2147 rules!1920)))))

(declare-fun b!244027 () Bool)

(declare-fun res!112642 () Bool)

(assert (=> b!244027 (=> (not res!112642) (not e!151055))))

(declare-fun sepAndNonSepRulesDisjointChars!260 (List!3571 List!3571) Bool)

(assert (=> b!244027 (= res!112642 (sepAndNonSepRulesDisjointChars!260 rules!1920 rules!1920))))

(declare-fun res!112650 () Bool)

(assert (=> start!25974 (=> (not res!112650) (not e!151054))))

(assert (=> start!25974 (= res!112650 ((_ is Lexer!555) thiss!17480))))

(assert (=> start!25974 e!151054))

(assert (=> start!25974 true))

(assert (=> start!25974 e!151058))

(declare-fun e!151047 () Bool)

(declare-fun inv!4421 (Token!1086) Bool)

(assert (=> start!25974 (and (inv!4421 separatorToken!170) e!151047)))

(declare-fun e!151048 () Bool)

(assert (=> start!25974 e!151048))

(declare-fun b!244042 () Bool)

(declare-fun res!112641 () Bool)

(assert (=> b!244042 (=> (not res!112641) (not e!151064))))

(assert (=> b!244042 (= res!112641 (= (list!1403 (seqFromList!720 lt!98670)) lt!98678))))

(assert (=> b!244043 (= e!151068 e!151057)))

(declare-fun res!112638 () Bool)

(assert (=> b!244043 (=> res!112638 e!151057)))

(declare-datatypes ((tuple2!3938 0))(
  ( (tuple2!3939 (_1!2185 Token!1086) (_2!2185 BalanceConc!2336)) )
))
(declare-datatypes ((Option!705 0))(
  ( (None!704) (Some!704 (v!14465 tuple2!3938)) )
))
(declare-fun isDefined!556 (Option!705) Bool)

(declare-fun maxPrefixZipperSequence!250 (LexerInterface!557 List!3571 BalanceConc!2336) Option!705)

(assert (=> b!244043 (= res!112638 (not (isDefined!556 (maxPrefixZipperSequence!250 thiss!17480 rules!1920 (seqFromList!720 (originalCharacters!714 (h!8959 tokens!465)))))))))

(declare-fun lt!98674 () Unit!4340)

(declare-fun forallContained!238 (List!3572 Int Token!1086) Unit!4340)

(assert (=> b!244043 (= lt!98674 (forallContained!238 tokens!465 lambda!7936 (h!8959 tokens!465)))))

(assert (=> b!244043 (= lt!98679 (originalCharacters!714 (h!8959 tokens!465)))))

(declare-fun e!151053 () Bool)

(assert (=> b!244044 (= e!151053 (and tp!95654 tp!95659))))

(declare-fun b!244045 () Bool)

(declare-fun res!112652 () Bool)

(assert (=> b!244045 (=> (not res!112652) (not e!151055))))

(declare-fun rulesProduceIndividualToken!306 (LexerInterface!557 List!3571 Token!1086) Bool)

(assert (=> b!244045 (= res!112652 (rulesProduceIndividualToken!306 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!244046 () Bool)

(declare-fun res!112651 () Bool)

(assert (=> b!244046 (=> res!112651 e!151046)))

(declare-fun rulesProduceEachTokenIndividuallyList!195 (LexerInterface!557 List!3571 List!3572) Bool)

(assert (=> b!244046 (= res!112651 (not (rulesProduceEachTokenIndividuallyList!195 thiss!17480 rules!1920 tokens!465)))))

(declare-fun b!244047 () Bool)

(declare-fun res!112645 () Bool)

(assert (=> b!244047 (=> (not res!112645) (not e!151060))))

(declare-fun isEmpty!2148 (List!3570) Bool)

(assert (=> b!244047 (= res!112645 (isEmpty!2148 (_2!2184 lt!98666)))))

(declare-fun b!244048 () Bool)

(declare-fun res!112639 () Bool)

(assert (=> b!244048 (=> (not res!112639) (not e!151055))))

(assert (=> b!244048 (= res!112639 (isSeparator!671 (rule!1248 separatorToken!170)))))

(declare-fun b!244049 () Bool)

(assert (=> b!244049 (= e!151065 e!151063)))

(declare-fun res!112646 () Bool)

(assert (=> b!244049 (=> res!112646 e!151063)))

(assert (=> b!244049 (= res!112646 e!151049)))

(declare-fun res!112649 () Bool)

(assert (=> b!244049 (=> (not res!112649) (not e!151049))))

(assert (=> b!244049 (= res!112649 (not lt!98682))))

(assert (=> b!244049 (= lt!98682 (= lt!98670 lt!98667))))

(declare-fun b!244050 () Bool)

(declare-fun tp!95652 () Bool)

(assert (=> b!244050 (= e!151048 (and (inv!4421 (h!8959 tokens!465)) e!151067 tp!95652))))

(declare-fun res!112655 () Bool)

(assert (=> b!244051 (=> (not res!112655) (not e!151055))))

(declare-fun forall!827 (List!3572 Int) Bool)

(assert (=> b!244051 (= res!112655 (forall!827 tokens!465 lambda!7935))))

(declare-fun b!244052 () Bool)

(assert (=> b!244052 (= e!151046 true)))

(declare-fun e!151069 () Bool)

(declare-fun b!244053 () Bool)

(declare-fun tp!95656 () Bool)

(assert (=> b!244053 (= e!151047 (and (inv!21 (value!23439 separatorToken!170)) e!151069 tp!95656))))

(declare-fun tp!95660 () Bool)

(declare-fun b!244054 () Bool)

(assert (=> b!244054 (= e!151069 (and tp!95660 (inv!4417 (tag!879 (rule!1248 separatorToken!170))) (inv!4420 (transformation!671 (rule!1248 separatorToken!170))) e!151053))))

(declare-fun b!244055 () Bool)

(declare-fun res!112637 () Bool)

(assert (=> b!244055 (=> res!112637 e!151068)))

(assert (=> b!244055 (= res!112637 (not (rulesProduceIndividualToken!306 thiss!17480 rules!1920 (h!8959 tokens!465))))))

(assert (= (and start!25974 res!112650) b!244041))

(assert (= (and b!244041 res!112636) b!244033))

(assert (= (and b!244033 res!112653) b!244026))

(assert (= (and b!244026 res!112654) b!244045))

(assert (= (and b!244045 res!112652) b!244048))

(assert (= (and b!244048 res!112639) b!244051))

(assert (= (and b!244051 res!112655) b!244027))

(assert (= (and b!244027 res!112642) b!244025))

(assert (= (and b!244025 res!112647) b!244031))

(assert (= (and b!244031 res!112643) b!244042))

(assert (= (and b!244042 res!112641) b!244040))

(assert (= (and b!244040 (not res!112635)) b!244049))

(assert (= (and b!244049 res!112649) b!244038))

(assert (= (and b!244049 (not res!112646)) b!244036))

(assert (= (and b!244036 (not res!112648)) b!244055))

(assert (= (and b!244055 (not res!112637)) b!244034))

(assert (= (and b!244034 (not res!112644)) b!244043))

(assert (= (and b!244043 (not res!112638)) b!244035))

(assert (= (and b!244035 res!112640) b!244047))

(assert (= (and b!244047 res!112645) b!244028))

(assert (= (and b!244035 (not res!112656)) b!244046))

(assert (= (and b!244046 (not res!112651)) b!244052))

(assert (= b!244039 b!244029))

(assert (= b!244030 b!244039))

(assert (= (and start!25974 ((_ is Cons!3561) rules!1920)) b!244030))

(assert (= b!244054 b!244044))

(assert (= b!244053 b!244054))

(assert (= start!25974 b!244053))

(assert (= b!244032 b!244024))

(assert (= b!244037 b!244032))

(assert (= b!244050 b!244037))

(assert (= (and start!25974 ((_ is Cons!3562) tokens!465)) b!244050))

(declare-fun m!298661 () Bool)

(assert (=> b!244034 m!298661))

(assert (=> b!244034 m!298661))

(declare-fun m!298663 () Bool)

(assert (=> b!244034 m!298663))

(declare-fun m!298665 () Bool)

(assert (=> b!244034 m!298665))

(declare-fun m!298667 () Bool)

(assert (=> b!244040 m!298667))

(declare-fun m!298669 () Bool)

(assert (=> b!244040 m!298669))

(declare-fun m!298671 () Bool)

(assert (=> b!244040 m!298671))

(declare-fun m!298673 () Bool)

(assert (=> b!244040 m!298673))

(declare-fun m!298675 () Bool)

(assert (=> b!244040 m!298675))

(assert (=> b!244040 m!298671))

(assert (=> b!244040 m!298669))

(declare-fun m!298677 () Bool)

(assert (=> b!244040 m!298677))

(assert (=> b!244040 m!298667))

(declare-fun m!298679 () Bool)

(assert (=> b!244040 m!298679))

(declare-fun m!298681 () Bool)

(assert (=> b!244040 m!298681))

(declare-fun m!298683 () Bool)

(assert (=> b!244040 m!298683))

(declare-fun m!298685 () Bool)

(assert (=> b!244040 m!298685))

(declare-fun m!298687 () Bool)

(assert (=> b!244040 m!298687))

(assert (=> b!244040 m!298679))

(declare-fun m!298689 () Bool)

(assert (=> b!244040 m!298689))

(assert (=> b!244040 m!298685))

(declare-fun m!298691 () Bool)

(assert (=> b!244040 m!298691))

(declare-fun m!298693 () Bool)

(assert (=> b!244043 m!298693))

(assert (=> b!244043 m!298693))

(declare-fun m!298695 () Bool)

(assert (=> b!244043 m!298695))

(assert (=> b!244043 m!298695))

(declare-fun m!298697 () Bool)

(assert (=> b!244043 m!298697))

(declare-fun m!298699 () Bool)

(assert (=> b!244043 m!298699))

(declare-fun m!298701 () Bool)

(assert (=> b!244026 m!298701))

(declare-fun m!298703 () Bool)

(assert (=> b!244026 m!298703))

(declare-fun m!298705 () Bool)

(assert (=> b!244035 m!298705))

(declare-fun m!298707 () Bool)

(assert (=> b!244035 m!298707))

(declare-fun m!298709 () Bool)

(assert (=> b!244035 m!298709))

(declare-fun m!298711 () Bool)

(assert (=> b!244039 m!298711))

(declare-fun m!298713 () Bool)

(assert (=> b!244039 m!298713))

(declare-fun m!298715 () Bool)

(assert (=> b!244042 m!298715))

(assert (=> b!244042 m!298715))

(declare-fun m!298717 () Bool)

(assert (=> b!244042 m!298717))

(declare-fun m!298719 () Bool)

(assert (=> b!244055 m!298719))

(declare-fun m!298721 () Bool)

(assert (=> b!244032 m!298721))

(declare-fun m!298723 () Bool)

(assert (=> b!244032 m!298723))

(declare-fun m!298725 () Bool)

(assert (=> b!244033 m!298725))

(declare-fun m!298727 () Bool)

(assert (=> b!244053 m!298727))

(declare-fun m!298729 () Bool)

(assert (=> b!244047 m!298729))

(declare-fun m!298731 () Bool)

(assert (=> b!244051 m!298731))

(declare-fun m!298733 () Bool)

(assert (=> b!244037 m!298733))

(declare-fun m!298735 () Bool)

(assert (=> b!244046 m!298735))

(declare-fun m!298737 () Bool)

(assert (=> b!244027 m!298737))

(declare-fun m!298739 () Bool)

(assert (=> b!244050 m!298739))

(declare-fun m!298741 () Bool)

(assert (=> b!244028 m!298741))

(declare-fun m!298743 () Bool)

(assert (=> b!244041 m!298743))

(declare-fun m!298745 () Bool)

(assert (=> b!244054 m!298745))

(declare-fun m!298747 () Bool)

(assert (=> b!244054 m!298747))

(declare-fun m!298749 () Bool)

(assert (=> b!244036 m!298749))

(declare-fun m!298751 () Bool)

(assert (=> b!244036 m!298751))

(declare-fun m!298753 () Bool)

(assert (=> b!244036 m!298753))

(declare-fun m!298755 () Bool)

(assert (=> b!244036 m!298755))

(declare-fun m!298757 () Bool)

(assert (=> b!244036 m!298757))

(declare-fun m!298759 () Bool)

(assert (=> b!244038 m!298759))

(declare-fun m!298761 () Bool)

(assert (=> b!244045 m!298761))

(declare-fun m!298763 () Bool)

(assert (=> b!244031 m!298763))

(assert (=> b!244031 m!298763))

(declare-fun m!298765 () Bool)

(assert (=> b!244031 m!298765))

(declare-fun m!298767 () Bool)

(assert (=> b!244031 m!298767))

(declare-fun m!298769 () Bool)

(assert (=> start!25974 m!298769))

(check-sat (not b!244027) (not b!244051) (not b!244047) (not b_next!8949) (not b!244036) b_and!18319 (not b!244053) (not b!244039) b_and!18327 (not b_next!8945) (not b!244035) (not b!244037) (not b_next!8951) (not b!244050) (not b!244028) (not b!244041) (not b!244038) (not b!244040) (not b!244033) (not b!244042) b_and!18325 b_and!18321 (not b!244064) (not start!25974) (not b!244045) (not b_next!8953) (not b!244030) b_and!18323 b_and!18317 (not b!244043) (not b_next!8947) (not b!244046) (not b!244032) (not b!244034) (not b!244031) (not b!244055) (not b!244054) (not b_next!8955) (not b!244026))
(check-sat (not b_next!8949) b_and!18319 b_and!18327 (not b_next!8945) (not b_next!8951) (not b_next!8953) b_and!18323 b_and!18317 (not b_next!8947) (not b_next!8955) b_and!18325 b_and!18321)
