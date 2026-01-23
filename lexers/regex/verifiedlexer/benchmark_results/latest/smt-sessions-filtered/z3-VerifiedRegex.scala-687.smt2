; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26518 () Bool)

(assert start!26518)

(declare-fun b!249640 () Bool)

(declare-fun b_free!9305 () Bool)

(declare-fun b_next!9305 () Bool)

(assert (=> b!249640 (= b_free!9305 (not b_next!9305))))

(declare-fun tp!97027 () Bool)

(declare-fun b_and!18821 () Bool)

(assert (=> b!249640 (= tp!97027 b_and!18821)))

(declare-fun b_free!9307 () Bool)

(declare-fun b_next!9307 () Bool)

(assert (=> b!249640 (= b_free!9307 (not b_next!9307))))

(declare-fun tp!97024 () Bool)

(declare-fun b_and!18823 () Bool)

(assert (=> b!249640 (= tp!97024 b_and!18823)))

(declare-fun b!249622 () Bool)

(declare-fun b_free!9309 () Bool)

(declare-fun b_next!9309 () Bool)

(assert (=> b!249622 (= b_free!9309 (not b_next!9309))))

(declare-fun tp!97023 () Bool)

(declare-fun b_and!18825 () Bool)

(assert (=> b!249622 (= tp!97023 b_and!18825)))

(declare-fun b_free!9311 () Bool)

(declare-fun b_next!9311 () Bool)

(assert (=> b!249622 (= b_free!9311 (not b_next!9311))))

(declare-fun tp!97030 () Bool)

(declare-fun b_and!18827 () Bool)

(assert (=> b!249622 (= tp!97030 b_and!18827)))

(declare-fun b!249620 () Bool)

(declare-fun b_free!9313 () Bool)

(declare-fun b_next!9313 () Bool)

(assert (=> b!249620 (= b_free!9313 (not b_next!9313))))

(declare-fun tp!97035 () Bool)

(declare-fun b_and!18829 () Bool)

(assert (=> b!249620 (= tp!97035 b_and!18829)))

(declare-fun b_free!9315 () Bool)

(declare-fun b_next!9315 () Bool)

(assert (=> b!249620 (= b_free!9315 (not b_next!9315))))

(declare-fun tp!97031 () Bool)

(declare-fun b_and!18831 () Bool)

(assert (=> b!249620 (= tp!97031 b_and!18831)))

(declare-fun bs!26774 () Bool)

(declare-fun b!249628 () Bool)

(declare-fun b!249618 () Bool)

(assert (= bs!26774 (and b!249628 b!249618)))

(declare-fun lambda!8266 () Int)

(declare-fun lambda!8265 () Int)

(assert (=> bs!26774 (not (= lambda!8266 lambda!8265))))

(declare-fun b!249656 () Bool)

(declare-fun e!155078 () Bool)

(assert (=> b!249656 (= e!155078 true)))

(declare-fun b!249655 () Bool)

(declare-fun e!155077 () Bool)

(assert (=> b!249655 (= e!155077 e!155078)))

(declare-fun b!249654 () Bool)

(declare-fun e!155076 () Bool)

(assert (=> b!249654 (= e!155076 e!155077)))

(assert (=> b!249628 e!155076))

(assert (= b!249655 b!249656))

(assert (= b!249654 b!249655))

(declare-datatypes ((List!3679 0))(
  ( (Nil!3669) (Cons!3669 (h!9066 (_ BitVec 16)) (t!35379 List!3679)) )
))
(declare-datatypes ((TokenValue!719 0))(
  ( (FloatLiteralValue!1438 (text!5478 List!3679)) (TokenValueExt!718 (__x!2925 Int)) (Broken!3595 (value!24154 List!3679)) (Object!728) (End!719) (Def!719) (Underscore!719) (Match!719) (Else!719) (Error!719) (Case!719) (If!719) (Extends!719) (Abstract!719) (Class!719) (Val!719) (DelimiterValue!1438 (del!779 List!3679)) (KeywordValue!725 (value!24155 List!3679)) (CommentValue!1438 (value!24156 List!3679)) (WhitespaceValue!1438 (value!24157 List!3679)) (IndentationValue!719 (value!24158 List!3679)) (String!4674) (Int32!719) (Broken!3596 (value!24159 List!3679)) (Boolean!720) (Unit!4465) (OperatorValue!722 (op!779 List!3679)) (IdentifierValue!1438 (value!24160 List!3679)) (IdentifierValue!1439 (value!24161 List!3679)) (WhitespaceValue!1439 (value!24162 List!3679)) (True!1438) (False!1438) (Broken!3597 (value!24163 List!3679)) (Broken!3598 (value!24164 List!3679)) (True!1439) (RightBrace!719) (RightBracket!719) (Colon!719) (Null!719) (Comma!719) (LeftBracket!719) (False!1439) (LeftBrace!719) (ImaginaryLiteralValue!719 (text!5479 List!3679)) (StringLiteralValue!2157 (value!24165 List!3679)) (EOFValue!719 (value!24166 List!3679)) (IdentValue!719 (value!24167 List!3679)) (DelimiterValue!1439 (value!24168 List!3679)) (DedentValue!719 (value!24169 List!3679)) (NewLineValue!719 (value!24170 List!3679)) (IntegerValue!2157 (value!24171 (_ BitVec 32)) (text!5480 List!3679)) (IntegerValue!2158 (value!24172 Int) (text!5481 List!3679)) (Times!719) (Or!719) (Equal!719) (Minus!719) (Broken!3599 (value!24173 List!3679)) (And!719) (Div!719) (LessEqual!719) (Mod!719) (Concat!1640) (Not!719) (Plus!719) (SpaceValue!719 (value!24174 List!3679)) (IntegerValue!2159 (value!24175 Int) (text!5482 List!3679)) (StringLiteralValue!2158 (text!5483 List!3679)) (FloatLiteralValue!1439 (text!5484 List!3679)) (BytesLiteralValue!719 (value!24176 List!3679)) (CommentValue!1439 (value!24177 List!3679)) (StringLiteralValue!2159 (value!24178 List!3679)) (ErrorTokenValue!719 (msg!780 List!3679)) )
))
(declare-datatypes ((C!2764 0))(
  ( (C!2765 (val!1268 Int)) )
))
(declare-datatypes ((List!3680 0))(
  ( (Nil!3670) (Cons!3670 (h!9067 C!2764) (t!35380 List!3680)) )
))
(declare-datatypes ((IArray!2433 0))(
  ( (IArray!2434 (innerList!1274 List!3680)) )
))
(declare-datatypes ((Conc!1216 0))(
  ( (Node!1216 (left!3015 Conc!1216) (right!3345 Conc!1216) (csize!2662 Int) (cheight!1427 Int)) (Leaf!1904 (xs!3811 IArray!2433) (csize!2663 Int)) (Empty!1216) )
))
(declare-datatypes ((BalanceConc!2440 0))(
  ( (BalanceConc!2441 (c!47444 Conc!1216)) )
))
(declare-datatypes ((TokenValueInjection!1210 0))(
  ( (TokenValueInjection!1211 (toValue!1400 Int) (toChars!1259 Int)) )
))
(declare-datatypes ((Regex!921 0))(
  ( (ElementMatch!921 (c!47445 C!2764)) (Concat!1641 (regOne!2354 Regex!921) (regTwo!2354 Regex!921)) (EmptyExpr!921) (Star!921 (reg!1250 Regex!921)) (EmptyLang!921) (Union!921 (regOne!2355 Regex!921) (regTwo!2355 Regex!921)) )
))
(declare-datatypes ((String!4675 0))(
  ( (String!4676 (value!24179 String)) )
))
(declare-datatypes ((Rule!1194 0))(
  ( (Rule!1195 (regex!697 Regex!921) (tag!905 String!4675) (isSeparator!697 Bool) (transformation!697 TokenValueInjection!1210)) )
))
(declare-datatypes ((List!3681 0))(
  ( (Nil!3671) (Cons!3671 (h!9068 Rule!1194) (t!35381 List!3681)) )
))
(declare-fun rules!1920 () List!3681)

(get-info :version)

(assert (= (and b!249628 ((_ is Cons!3671) rules!1920)) b!249654))

(declare-fun order!2723 () Int)

(declare-fun order!2721 () Int)

(declare-fun dynLambda!1801 (Int Int) Int)

(declare-fun dynLambda!1802 (Int Int) Int)

(assert (=> b!249656 (< (dynLambda!1801 order!2721 (toValue!1400 (transformation!697 (h!9068 rules!1920)))) (dynLambda!1802 order!2723 lambda!8266))))

(declare-fun order!2725 () Int)

(declare-fun dynLambda!1803 (Int Int) Int)

(assert (=> b!249656 (< (dynLambda!1803 order!2725 (toChars!1259 (transformation!697 (h!9068 rules!1920)))) (dynLambda!1802 order!2723 lambda!8266))))

(assert (=> b!249628 true))

(declare-fun b!249610 () Bool)

(declare-fun res!115714 () Bool)

(declare-fun e!155044 () Bool)

(assert (=> b!249610 (=> (not res!115714) (not e!155044))))

(declare-fun lt!101691 () List!3680)

(declare-fun lt!101677 () List!3680)

(declare-fun list!1456 (BalanceConc!2440) List!3680)

(declare-fun seqFromList!771 (List!3680) BalanceConc!2440)

(assert (=> b!249610 (= res!115714 (= (list!1456 (seqFromList!771 lt!101691)) lt!101677))))

(declare-datatypes ((Token!1138 0))(
  ( (Token!1139 (value!24180 TokenValue!719) (rule!1274 Rule!1194) (size!2906 Int) (originalCharacters!740 List!3680)) )
))
(declare-datatypes ((List!3682 0))(
  ( (Nil!3672) (Cons!3672 (h!9069 Token!1138) (t!35382 List!3682)) )
))
(declare-fun tokens!465 () List!3682)

(declare-fun b!249611 () Bool)

(declare-fun e!155059 () Bool)

(declare-fun tp!97028 () Bool)

(declare-fun e!155042 () Bool)

(declare-fun inv!21 (TokenValue!719) Bool)

(assert (=> b!249611 (= e!155042 (and (inv!21 (value!24180 (h!9069 tokens!465))) e!155059 tp!97028))))

(declare-fun tp!97033 () Bool)

(declare-fun e!155046 () Bool)

(declare-fun e!155047 () Bool)

(declare-fun b!249612 () Bool)

(declare-fun inv!4520 (String!4675) Bool)

(declare-fun inv!4523 (TokenValueInjection!1210) Bool)

(assert (=> b!249612 (= e!155046 (and tp!97033 (inv!4520 (tag!905 (h!9068 rules!1920))) (inv!4523 (transformation!697 (h!9068 rules!1920))) e!155047))))

(declare-fun b!249613 () Bool)

(declare-fun e!155054 () Bool)

(assert (=> b!249613 (= e!155044 (not e!155054))))

(declare-fun res!115709 () Bool)

(assert (=> b!249613 (=> res!115709 e!155054)))

(declare-fun lt!101675 () List!3680)

(declare-fun lt!101683 () BalanceConc!2440)

(assert (=> b!249613 (= res!115709 (not (= lt!101675 (list!1456 lt!101683))))))

(declare-fun separatorToken!170 () Token!1138)

(declare-datatypes ((LexerInterface!583 0))(
  ( (LexerInterfaceExt!580 (__x!2926 Int)) (Lexer!581) )
))
(declare-fun thiss!17480 () LexerInterface!583)

(declare-datatypes ((IArray!2435 0))(
  ( (IArray!2436 (innerList!1275 List!3682)) )
))
(declare-datatypes ((Conc!1217 0))(
  ( (Node!1217 (left!3016 Conc!1217) (right!3346 Conc!1217) (csize!2664 Int) (cheight!1428 Int)) (Leaf!1905 (xs!3812 IArray!2435) (csize!2665 Int)) (Empty!1217) )
))
(declare-datatypes ((BalanceConc!2442 0))(
  ( (BalanceConc!2443 (c!47446 Conc!1217)) )
))
(declare-fun printWithSeparatorTokenWhenNeededRec!266 (LexerInterface!583 List!3681 BalanceConc!2442 Token!1138 Int) BalanceConc!2440)

(declare-fun seqFromList!772 (List!3682) BalanceConc!2442)

(assert (=> b!249613 (= lt!101683 (printWithSeparatorTokenWhenNeededRec!266 thiss!17480 rules!1920 (seqFromList!772 (t!35382 tokens!465)) separatorToken!170 0))))

(declare-fun lt!101680 () List!3680)

(declare-fun lt!101679 () List!3680)

(assert (=> b!249613 (= lt!101680 lt!101679)))

(declare-fun lt!101667 () List!3680)

(declare-fun lt!101670 () List!3680)

(declare-fun ++!940 (List!3680 List!3680) List!3680)

(assert (=> b!249613 (= lt!101679 (++!940 lt!101667 lt!101670))))

(declare-fun lt!101689 () List!3680)

(assert (=> b!249613 (= lt!101680 (++!940 (++!940 lt!101667 lt!101689) lt!101675))))

(declare-datatypes ((Unit!4466 0))(
  ( (Unit!4467) )
))
(declare-fun lt!101688 () Unit!4466)

(declare-fun lemmaConcatAssociativity!402 (List!3680 List!3680 List!3680) Unit!4466)

(assert (=> b!249613 (= lt!101688 (lemmaConcatAssociativity!402 lt!101667 lt!101689 lt!101675))))

(declare-fun charsOf!352 (Token!1138) BalanceConc!2440)

(assert (=> b!249613 (= lt!101667 (list!1456 (charsOf!352 (h!9069 tokens!465))))))

(assert (=> b!249613 (= lt!101670 (++!940 lt!101689 lt!101675))))

(declare-fun printWithSeparatorTokenWhenNeededList!276 (LexerInterface!583 List!3681 List!3682 Token!1138) List!3680)

(assert (=> b!249613 (= lt!101675 (printWithSeparatorTokenWhenNeededList!276 thiss!17480 rules!1920 (t!35382 tokens!465) separatorToken!170))))

(assert (=> b!249613 (= lt!101689 (list!1456 (charsOf!352 separatorToken!170)))))

(declare-fun b!249614 () Bool)

(declare-fun res!115695 () Bool)

(declare-fun e!155062 () Bool)

(assert (=> b!249614 (=> res!115695 e!155062)))

(declare-fun rulesProduceIndividualToken!332 (LexerInterface!583 List!3681 Token!1138) Bool)

(assert (=> b!249614 (= res!115695 (not (rulesProduceIndividualToken!332 thiss!17480 rules!1920 (h!9069 tokens!465))))))

(declare-fun b!249616 () Bool)

(declare-fun res!115693 () Bool)

(declare-fun e!155065 () Bool)

(assert (=> b!249616 (=> (not res!115693) (not e!155065))))

(declare-datatypes ((tuple2!4102 0))(
  ( (tuple2!4103 (_1!2267 Token!1138) (_2!2267 List!3680)) )
))
(declare-fun lt!101666 () tuple2!4102)

(declare-fun isEmpty!2269 (List!3680) Bool)

(assert (=> b!249616 (= res!115693 (isEmpty!2269 (_2!2267 lt!101666)))))

(declare-fun b!249617 () Bool)

(declare-fun e!155053 () Bool)

(declare-fun tp!97034 () Bool)

(declare-fun inv!4524 (Token!1138) Bool)

(assert (=> b!249617 (= e!155053 (and (inv!4524 (h!9069 tokens!465)) e!155042 tp!97034))))

(declare-fun res!115708 () Bool)

(declare-fun e!155056 () Bool)

(assert (=> b!249618 (=> (not res!115708) (not e!155056))))

(declare-fun forall!861 (List!3682 Int) Bool)

(assert (=> b!249618 (= res!115708 (forall!861 tokens!465 lambda!8265))))

(declare-fun b!249619 () Bool)

(declare-fun res!115698 () Bool)

(assert (=> b!249619 (=> (not res!115698) (not e!155056))))

(assert (=> b!249619 (= res!115698 (isSeparator!697 (rule!1274 separatorToken!170)))))

(declare-fun e!155063 () Bool)

(assert (=> b!249620 (= e!155063 (and tp!97035 tp!97031))))

(declare-fun b!249621 () Bool)

(declare-fun res!115699 () Bool)

(declare-fun e!155049 () Bool)

(assert (=> b!249621 (=> res!115699 e!155049)))

(declare-fun lt!101685 () List!3680)

(assert (=> b!249621 (= res!115699 (not (= lt!101685 lt!101691)))))

(declare-fun e!155043 () Bool)

(assert (=> b!249622 (= e!155043 (and tp!97023 tp!97030))))

(declare-fun b!249623 () Bool)

(declare-fun res!115691 () Bool)

(declare-fun e!155052 () Bool)

(assert (=> b!249623 (=> (not res!115691) (not e!155052))))

(declare-fun rulesInvariant!549 (LexerInterface!583 List!3681) Bool)

(assert (=> b!249623 (= res!115691 (rulesInvariant!549 thiss!17480 rules!1920))))

(declare-fun b!249624 () Bool)

(assert (=> b!249624 (= e!155056 e!155044)))

(declare-fun res!115697 () Bool)

(assert (=> b!249624 (=> (not res!115697) (not e!155044))))

(assert (=> b!249624 (= res!115697 (= lt!101691 lt!101677))))

(declare-fun lt!101686 () BalanceConc!2442)

(assert (=> b!249624 (= lt!101677 (list!1456 (printWithSeparatorTokenWhenNeededRec!266 thiss!17480 rules!1920 lt!101686 separatorToken!170 0)))))

(assert (=> b!249624 (= lt!101691 (printWithSeparatorTokenWhenNeededList!276 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!249625 () Bool)

(declare-fun res!115712 () Bool)

(assert (=> b!249625 (=> (not res!115712) (not e!155056))))

(assert (=> b!249625 (= res!115712 ((_ is Cons!3672) tokens!465))))

(declare-fun b!249626 () Bool)

(declare-fun e!155050 () Bool)

(assert (=> b!249626 (= e!155050 e!155062)))

(declare-fun res!115700 () Bool)

(assert (=> b!249626 (=> res!115700 e!155062)))

(declare-fun lt!101681 () List!3680)

(declare-fun lt!101671 () List!3680)

(assert (=> b!249626 (= res!115700 (or (not (= lt!101681 lt!101671)) (not (= lt!101671 lt!101667)) (not (= lt!101681 lt!101667))))))

(declare-fun printList!267 (LexerInterface!583 List!3682) List!3680)

(assert (=> b!249626 (= lt!101671 (printList!267 thiss!17480 (Cons!3672 (h!9069 tokens!465) Nil!3672)))))

(declare-fun lt!101674 () BalanceConc!2440)

(assert (=> b!249626 (= lt!101681 (list!1456 lt!101674))))

(declare-fun lt!101669 () BalanceConc!2442)

(declare-fun printTailRec!277 (LexerInterface!583 BalanceConc!2442 Int BalanceConc!2440) BalanceConc!2440)

(assert (=> b!249626 (= lt!101674 (printTailRec!277 thiss!17480 lt!101669 0 (BalanceConc!2441 Empty!1216)))))

(declare-fun print!314 (LexerInterface!583 BalanceConc!2442) BalanceConc!2440)

(assert (=> b!249626 (= lt!101674 (print!314 thiss!17480 lt!101669))))

(declare-fun singletonSeq!249 (Token!1138) BalanceConc!2442)

(assert (=> b!249626 (= lt!101669 (singletonSeq!249 (h!9069 tokens!465)))))

(declare-fun b!249627 () Bool)

(declare-fun res!115711 () Bool)

(assert (=> b!249627 (=> (not res!115711) (not e!155052))))

(declare-fun isEmpty!2270 (List!3681) Bool)

(assert (=> b!249627 (= res!115711 (not (isEmpty!2270 rules!1920)))))

(declare-fun e!155067 () Bool)

(assert (=> b!249628 (= e!155062 e!155067)))

(declare-fun res!115704 () Bool)

(assert (=> b!249628 (=> res!115704 e!155067)))

(declare-datatypes ((tuple2!4104 0))(
  ( (tuple2!4105 (_1!2268 Token!1138) (_2!2268 BalanceConc!2440)) )
))
(declare-datatypes ((Option!756 0))(
  ( (None!755) (Some!755 (v!14534 tuple2!4104)) )
))
(declare-fun isDefined!607 (Option!756) Bool)

(declare-fun maxPrefixZipperSequence!276 (LexerInterface!583 List!3681 BalanceConc!2440) Option!756)

(assert (=> b!249628 (= res!115704 (not (isDefined!607 (maxPrefixZipperSequence!276 thiss!17480 rules!1920 (seqFromList!771 (originalCharacters!740 (h!9069 tokens!465)))))))))

(declare-fun lt!101678 () Unit!4466)

(declare-fun forallContained!264 (List!3682 Int Token!1138) Unit!4466)

(assert (=> b!249628 (= lt!101678 (forallContained!264 tokens!465 lambda!8266 (h!9069 tokens!465)))))

(assert (=> b!249628 (= lt!101667 (originalCharacters!740 (h!9069 tokens!465)))))

(declare-fun b!249629 () Bool)

(declare-fun e!155051 () Bool)

(assert (=> b!249629 (= e!155067 e!155051)))

(declare-fun res!115692 () Bool)

(assert (=> b!249629 (=> res!115692 e!155051)))

(declare-fun lt!101692 () Bool)

(assert (=> b!249629 (= res!115692 lt!101692)))

(assert (=> b!249629 e!155065))

(declare-fun res!115713 () Bool)

(assert (=> b!249629 (=> (not res!115713) (not e!155065))))

(assert (=> b!249629 (= res!115713 (= (_1!2267 lt!101666) (h!9069 tokens!465)))))

(declare-datatypes ((Option!757 0))(
  ( (None!756) (Some!756 (v!14535 tuple2!4102)) )
))
(declare-fun lt!101668 () Option!757)

(declare-fun get!1206 (Option!757) tuple2!4102)

(assert (=> b!249629 (= lt!101666 (get!1206 lt!101668))))

(declare-fun isDefined!608 (Option!757) Bool)

(assert (=> b!249629 (isDefined!608 lt!101668)))

(declare-fun maxPrefix!313 (LexerInterface!583 List!3681 List!3680) Option!757)

(assert (=> b!249629 (= lt!101668 (maxPrefix!313 thiss!17480 rules!1920 lt!101667))))

(declare-fun b!249630 () Bool)

(declare-fun e!155068 () Bool)

(declare-fun tp!97029 () Bool)

(assert (=> b!249630 (= e!155068 (and e!155046 tp!97029))))

(declare-fun b!249631 () Bool)

(declare-fun res!115706 () Bool)

(assert (=> b!249631 (=> res!115706 e!155062)))

(declare-fun isEmpty!2271 (BalanceConc!2442) Bool)

(declare-datatypes ((tuple2!4106 0))(
  ( (tuple2!4107 (_1!2269 BalanceConc!2442) (_2!2269 BalanceConc!2440)) )
))
(declare-fun lex!383 (LexerInterface!583 List!3681 BalanceConc!2440) tuple2!4106)

(assert (=> b!249631 (= res!115706 (isEmpty!2271 (_1!2269 (lex!383 thiss!17480 rules!1920 (seqFromList!771 lt!101667)))))))

(declare-fun tp!97026 () Bool)

(declare-fun b!249632 () Bool)

(assert (=> b!249632 (= e!155059 (and tp!97026 (inv!4520 (tag!905 (rule!1274 (h!9069 tokens!465)))) (inv!4523 (transformation!697 (rule!1274 (h!9069 tokens!465)))) e!155043))))

(declare-fun b!249633 () Bool)

(declare-fun res!115701 () Bool)

(assert (=> b!249633 (=> res!115701 e!155049)))

(declare-fun lt!101690 () tuple2!4102)

(assert (=> b!249633 (= res!115701 (not (= (++!940 lt!101667 (_2!2267 lt!101690)) lt!101691)))))

(declare-fun res!115715 () Bool)

(assert (=> start!26518 (=> (not res!115715) (not e!155052))))

(assert (=> start!26518 (= res!115715 ((_ is Lexer!581) thiss!17480))))

(assert (=> start!26518 e!155052))

(assert (=> start!26518 true))

(assert (=> start!26518 e!155068))

(declare-fun e!155045 () Bool)

(assert (=> start!26518 (and (inv!4524 separatorToken!170) e!155045)))

(assert (=> start!26518 e!155053))

(declare-fun e!155061 () Bool)

(declare-fun b!249615 () Bool)

(assert (=> b!249615 (= e!155061 (not (= lt!101691 (++!940 lt!101667 lt!101675))))))

(declare-fun b!249634 () Bool)

(declare-fun matchR!259 (Regex!921 List!3680) Bool)

(assert (=> b!249634 (= e!155065 (matchR!259 (regex!697 (rule!1274 (h!9069 tokens!465))) lt!101667))))

(declare-fun tp!97032 () Bool)

(declare-fun b!249635 () Bool)

(declare-fun e!155069 () Bool)

(assert (=> b!249635 (= e!155069 (and tp!97032 (inv!4520 (tag!905 (rule!1274 separatorToken!170))) (inv!4523 (transformation!697 (rule!1274 separatorToken!170))) e!155063))))

(declare-fun b!249636 () Bool)

(declare-fun res!115703 () Bool)

(assert (=> b!249636 (=> (not res!115703) (not e!155056))))

(declare-fun sepAndNonSepRulesDisjointChars!286 (List!3681 List!3681) Bool)

(assert (=> b!249636 (= res!115703 (sepAndNonSepRulesDisjointChars!286 rules!1920 rules!1920))))

(declare-fun b!249637 () Bool)

(assert (=> b!249637 (= e!155054 e!155050)))

(declare-fun res!115694 () Bool)

(assert (=> b!249637 (=> res!115694 e!155050)))

(assert (=> b!249637 (= res!115694 e!155061)))

(declare-fun res!115690 () Bool)

(assert (=> b!249637 (=> (not res!115690) (not e!155061))))

(assert (=> b!249637 (= res!115690 (not lt!101692))))

(assert (=> b!249637 (= lt!101692 (= lt!101691 lt!101679))))

(declare-fun b!249638 () Bool)

(assert (=> b!249638 (= e!155049 true)))

(declare-fun lt!101682 () Int)

(declare-fun size!2907 (BalanceConc!2442) Int)

(assert (=> b!249638 (= lt!101682 (size!2907 lt!101686))))

(assert (=> b!249638 (= lt!101675 (_2!2267 lt!101690))))

(declare-fun lt!101676 () Unit!4466)

(declare-fun lemmaSamePrefixThenSameSuffix!196 (List!3680 List!3680 List!3680 List!3680 List!3680) Unit!4466)

(assert (=> b!249638 (= lt!101676 (lemmaSamePrefixThenSameSuffix!196 lt!101667 lt!101675 lt!101667 (_2!2267 lt!101690) lt!101691))))

(declare-fun tp!97025 () Bool)

(declare-fun b!249639 () Bool)

(assert (=> b!249639 (= e!155045 (and (inv!21 (value!24180 separatorToken!170)) e!155069 tp!97025))))

(assert (=> b!249640 (= e!155047 (and tp!97027 tp!97024))))

(declare-fun b!249641 () Bool)

(declare-fun res!115702 () Bool)

(assert (=> b!249641 (=> (not res!115702) (not e!155056))))

(assert (=> b!249641 (= res!115702 (rulesProduceIndividualToken!332 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!249642 () Bool)

(declare-fun e!155058 () Bool)

(declare-fun e!155055 () Bool)

(assert (=> b!249642 (= e!155058 e!155055)))

(declare-fun res!115710 () Bool)

(assert (=> b!249642 (=> (not res!115710) (not e!155055))))

(declare-fun lt!101684 () Option!757)

(assert (=> b!249642 (= res!115710 (isDefined!608 lt!101684))))

(assert (=> b!249642 (= lt!101684 (maxPrefix!313 thiss!17480 rules!1920 lt!101691))))

(declare-fun b!249643 () Bool)

(assert (=> b!249643 (= e!155051 e!155049)))

(declare-fun res!115705 () Bool)

(assert (=> b!249643 (=> res!115705 e!155049)))

(declare-fun isPrefix!381 (List!3680 List!3680) Bool)

(assert (=> b!249643 (= res!115705 (not (isPrefix!381 lt!101667 lt!101691)))))

(assert (=> b!249643 (= lt!101690 (get!1206 (maxPrefix!313 thiss!17480 rules!1920 lt!101691)))))

(assert (=> b!249643 (isPrefix!381 lt!101667 lt!101685)))

(assert (=> b!249643 (= lt!101685 (++!940 lt!101667 lt!101675))))

(declare-fun lt!101672 () Unit!4466)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!276 (List!3680 List!3680) Unit!4466)

(assert (=> b!249643 (= lt!101672 (lemmaConcatTwoListThenFirstIsPrefix!276 lt!101667 lt!101675))))

(declare-fun filter!79 (List!3682 Int) List!3682)

(declare-fun list!1457 (BalanceConc!2442) List!3682)

(assert (=> b!249643 (= (filter!79 (list!1457 (_1!2269 (lex!383 thiss!17480 rules!1920 lt!101683))) lambda!8265) (t!35382 tokens!465))))

(declare-fun lt!101687 () Unit!4466)

(declare-fun theoremInvertabilityFromTokensSepTokenWhenNeeded!70 (LexerInterface!583 List!3681 List!3682 Token!1138) Unit!4466)

(assert (=> b!249643 (= lt!101687 (theoremInvertabilityFromTokensSepTokenWhenNeeded!70 thiss!17480 rules!1920 (t!35382 tokens!465) separatorToken!170))))

(assert (=> b!249643 e!155058))

(declare-fun res!115696 () Bool)

(assert (=> b!249643 (=> res!115696 e!155058)))

(declare-fun isEmpty!2272 (List!3682) Bool)

(assert (=> b!249643 (= res!115696 (isEmpty!2272 tokens!465))))

(declare-fun lt!101673 () Unit!4466)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!152 (LexerInterface!583 List!3681 List!3682 Token!1138) Unit!4466)

(assert (=> b!249643 (= lt!101673 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!152 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!249644 () Bool)

(assert (=> b!249644 (= e!155052 e!155056)))

(declare-fun res!115707 () Bool)

(assert (=> b!249644 (=> (not res!115707) (not e!155056))))

(declare-fun rulesProduceEachTokenIndividually!375 (LexerInterface!583 List!3681 BalanceConc!2442) Bool)

(assert (=> b!249644 (= res!115707 (rulesProduceEachTokenIndividually!375 thiss!17480 rules!1920 lt!101686))))

(assert (=> b!249644 (= lt!101686 (seqFromList!772 tokens!465))))

(declare-fun b!249645 () Bool)

(declare-fun head!862 (List!3682) Token!1138)

(assert (=> b!249645 (= e!155055 (= (_1!2267 (get!1206 lt!101684)) (head!862 tokens!465)))))

(assert (= (and start!26518 res!115715) b!249627))

(assert (= (and b!249627 res!115711) b!249623))

(assert (= (and b!249623 res!115691) b!249644))

(assert (= (and b!249644 res!115707) b!249641))

(assert (= (and b!249641 res!115702) b!249619))

(assert (= (and b!249619 res!115698) b!249618))

(assert (= (and b!249618 res!115708) b!249636))

(assert (= (and b!249636 res!115703) b!249625))

(assert (= (and b!249625 res!115712) b!249624))

(assert (= (and b!249624 res!115697) b!249610))

(assert (= (and b!249610 res!115714) b!249613))

(assert (= (and b!249613 (not res!115709)) b!249637))

(assert (= (and b!249637 res!115690) b!249615))

(assert (= (and b!249637 (not res!115694)) b!249626))

(assert (= (and b!249626 (not res!115700)) b!249614))

(assert (= (and b!249614 (not res!115695)) b!249631))

(assert (= (and b!249631 (not res!115706)) b!249628))

(assert (= (and b!249628 (not res!115704)) b!249629))

(assert (= (and b!249629 res!115713) b!249616))

(assert (= (and b!249616 res!115693) b!249634))

(assert (= (and b!249629 (not res!115692)) b!249643))

(assert (= (and b!249643 (not res!115696)) b!249642))

(assert (= (and b!249642 res!115710) b!249645))

(assert (= (and b!249643 (not res!115705)) b!249621))

(assert (= (and b!249621 (not res!115699)) b!249633))

(assert (= (and b!249633 (not res!115701)) b!249638))

(assert (= b!249612 b!249640))

(assert (= b!249630 b!249612))

(assert (= (and start!26518 ((_ is Cons!3671) rules!1920)) b!249630))

(assert (= b!249635 b!249620))

(assert (= b!249639 b!249635))

(assert (= start!26518 b!249639))

(assert (= b!249632 b!249622))

(assert (= b!249611 b!249632))

(assert (= b!249617 b!249611))

(assert (= (and start!26518 ((_ is Cons!3672) tokens!465)) b!249617))

(declare-fun m!305737 () Bool)

(assert (=> b!249617 m!305737))

(declare-fun m!305739 () Bool)

(assert (=> b!249623 m!305739))

(declare-fun m!305741 () Bool)

(assert (=> b!249613 m!305741))

(declare-fun m!305743 () Bool)

(assert (=> b!249613 m!305743))

(declare-fun m!305745 () Bool)

(assert (=> b!249613 m!305745))

(declare-fun m!305747 () Bool)

(assert (=> b!249613 m!305747))

(declare-fun m!305749 () Bool)

(assert (=> b!249613 m!305749))

(declare-fun m!305751 () Bool)

(assert (=> b!249613 m!305751))

(declare-fun m!305753 () Bool)

(assert (=> b!249613 m!305753))

(assert (=> b!249613 m!305751))

(assert (=> b!249613 m!305749))

(declare-fun m!305755 () Bool)

(assert (=> b!249613 m!305755))

(declare-fun m!305757 () Bool)

(assert (=> b!249613 m!305757))

(assert (=> b!249613 m!305741))

(declare-fun m!305759 () Bool)

(assert (=> b!249613 m!305759))

(declare-fun m!305761 () Bool)

(assert (=> b!249613 m!305761))

(declare-fun m!305763 () Bool)

(assert (=> b!249613 m!305763))

(assert (=> b!249613 m!305761))

(declare-fun m!305765 () Bool)

(assert (=> b!249613 m!305765))

(declare-fun m!305767 () Bool)

(assert (=> b!249638 m!305767))

(declare-fun m!305769 () Bool)

(assert (=> b!249638 m!305769))

(declare-fun m!305771 () Bool)

(assert (=> b!249628 m!305771))

(assert (=> b!249628 m!305771))

(declare-fun m!305773 () Bool)

(assert (=> b!249628 m!305773))

(assert (=> b!249628 m!305773))

(declare-fun m!305775 () Bool)

(assert (=> b!249628 m!305775))

(declare-fun m!305777 () Bool)

(assert (=> b!249628 m!305777))

(declare-fun m!305779 () Bool)

(assert (=> b!249629 m!305779))

(declare-fun m!305781 () Bool)

(assert (=> b!249629 m!305781))

(declare-fun m!305783 () Bool)

(assert (=> b!249629 m!305783))

(declare-fun m!305785 () Bool)

(assert (=> b!249641 m!305785))

(declare-fun m!305787 () Bool)

(assert (=> b!249626 m!305787))

(declare-fun m!305789 () Bool)

(assert (=> b!249626 m!305789))

(declare-fun m!305791 () Bool)

(assert (=> b!249626 m!305791))

(declare-fun m!305793 () Bool)

(assert (=> b!249626 m!305793))

(declare-fun m!305795 () Bool)

(assert (=> b!249626 m!305795))

(declare-fun m!305797 () Bool)

(assert (=> b!249639 m!305797))

(declare-fun m!305799 () Bool)

(assert (=> b!249636 m!305799))

(declare-fun m!305801 () Bool)

(assert (=> b!249611 m!305801))

(declare-fun m!305803 () Bool)

(assert (=> b!249631 m!305803))

(assert (=> b!249631 m!305803))

(declare-fun m!305805 () Bool)

(assert (=> b!249631 m!305805))

(declare-fun m!305807 () Bool)

(assert (=> b!249631 m!305807))

(declare-fun m!305809 () Bool)

(assert (=> b!249632 m!305809))

(declare-fun m!305811 () Bool)

(assert (=> b!249632 m!305811))

(declare-fun m!305813 () Bool)

(assert (=> b!249634 m!305813))

(declare-fun m!305815 () Bool)

(assert (=> b!249610 m!305815))

(assert (=> b!249610 m!305815))

(declare-fun m!305817 () Bool)

(assert (=> b!249610 m!305817))

(declare-fun m!305819 () Bool)

(assert (=> b!249642 m!305819))

(declare-fun m!305821 () Bool)

(assert (=> b!249642 m!305821))

(declare-fun m!305823 () Bool)

(assert (=> b!249615 m!305823))

(declare-fun m!305825 () Bool)

(assert (=> start!26518 m!305825))

(declare-fun m!305827 () Bool)

(assert (=> b!249645 m!305827))

(declare-fun m!305829 () Bool)

(assert (=> b!249645 m!305829))

(declare-fun m!305831 () Bool)

(assert (=> b!249627 m!305831))

(declare-fun m!305833 () Bool)

(assert (=> b!249635 m!305833))

(declare-fun m!305835 () Bool)

(assert (=> b!249635 m!305835))

(declare-fun m!305837 () Bool)

(assert (=> b!249643 m!305837))

(declare-fun m!305839 () Bool)

(assert (=> b!249643 m!305839))

(declare-fun m!305841 () Bool)

(assert (=> b!249643 m!305841))

(declare-fun m!305843 () Bool)

(assert (=> b!249643 m!305843))

(assert (=> b!249643 m!305821))

(declare-fun m!305845 () Bool)

(assert (=> b!249643 m!305845))

(assert (=> b!249643 m!305821))

(assert (=> b!249643 m!305823))

(declare-fun m!305847 () Bool)

(assert (=> b!249643 m!305847))

(assert (=> b!249643 m!305841))

(declare-fun m!305849 () Bool)

(assert (=> b!249643 m!305849))

(declare-fun m!305851 () Bool)

(assert (=> b!249643 m!305851))

(declare-fun m!305853 () Bool)

(assert (=> b!249643 m!305853))

(declare-fun m!305855 () Bool)

(assert (=> b!249643 m!305855))

(declare-fun m!305857 () Bool)

(assert (=> b!249612 m!305857))

(declare-fun m!305859 () Bool)

(assert (=> b!249612 m!305859))

(declare-fun m!305861 () Bool)

(assert (=> b!249624 m!305861))

(assert (=> b!249624 m!305861))

(declare-fun m!305863 () Bool)

(assert (=> b!249624 m!305863))

(declare-fun m!305865 () Bool)

(assert (=> b!249624 m!305865))

(declare-fun m!305867 () Bool)

(assert (=> b!249616 m!305867))

(declare-fun m!305869 () Bool)

(assert (=> b!249644 m!305869))

(declare-fun m!305871 () Bool)

(assert (=> b!249644 m!305871))

(declare-fun m!305873 () Bool)

(assert (=> b!249614 m!305873))

(declare-fun m!305875 () Bool)

(assert (=> b!249618 m!305875))

(declare-fun m!305877 () Bool)

(assert (=> b!249633 m!305877))

(check-sat (not b!249624) (not b!249613) b_and!18821 b_and!18831 (not b!249626) (not b_next!9313) (not b!249631) (not b!249639) (not b!249623) (not b!249627) b_and!18825 (not b!249628) (not b!249615) (not b_next!9307) (not b!249614) (not b!249617) (not b!249629) (not b!249634) (not b!249633) (not b!249638) (not b!249616) (not b_next!9305) (not start!26518) (not b!249654) b_and!18827 (not b!249644) b_and!18823 (not b_next!9315) (not b!249612) (not b!249611) (not b!249641) (not b_next!9311) (not b!249630) (not b!249645) (not b!249610) (not b!249632) (not b!249642) (not b!249618) b_and!18829 (not b!249635) (not b!249643) (not b!249636) (not b_next!9309))
(check-sat (not b_next!9307) b_and!18821 b_and!18831 (not b_next!9313) (not b_next!9305) b_and!18827 b_and!18823 (not b_next!9315) (not b_next!9311) b_and!18829 b_and!18825 (not b_next!9309))
