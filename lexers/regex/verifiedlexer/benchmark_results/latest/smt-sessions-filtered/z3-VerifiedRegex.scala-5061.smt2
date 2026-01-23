; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!256506 () Bool)

(assert start!256506)

(declare-fun b!2634850 () Bool)

(declare-fun b_free!74293 () Bool)

(declare-fun b_next!74997 () Bool)

(assert (=> b!2634850 (= b_free!74293 (not b_next!74997))))

(declare-fun tp!834940 () Bool)

(declare-fun b_and!192975 () Bool)

(assert (=> b!2634850 (= tp!834940 b_and!192975)))

(declare-fun b_free!74295 () Bool)

(declare-fun b_next!74999 () Bool)

(assert (=> b!2634850 (= b_free!74295 (not b_next!74999))))

(declare-fun tp!834944 () Bool)

(declare-fun b_and!192977 () Bool)

(assert (=> b!2634850 (= tp!834944 b_and!192977)))

(declare-fun b!2634862 () Bool)

(declare-fun b_free!74297 () Bool)

(declare-fun b_next!75001 () Bool)

(assert (=> b!2634862 (= b_free!74297 (not b_next!75001))))

(declare-fun tp!834946 () Bool)

(declare-fun b_and!192979 () Bool)

(assert (=> b!2634862 (= tp!834946 b_and!192979)))

(declare-fun b_free!74299 () Bool)

(declare-fun b_next!75003 () Bool)

(assert (=> b!2634862 (= b_free!74299 (not b_next!75003))))

(declare-fun tp!834942 () Bool)

(declare-fun b_and!192981 () Bool)

(assert (=> b!2634862 (= tp!834942 b_and!192981)))

(declare-fun bs!476041 () Bool)

(declare-fun b!2634851 () Bool)

(declare-fun b!2634859 () Bool)

(assert (= bs!476041 (and b!2634851 b!2634859)))

(declare-fun lambda!98882 () Int)

(declare-fun lambda!98881 () Int)

(assert (=> bs!476041 (not (= lambda!98882 lambda!98881))))

(declare-fun b!2634874 () Bool)

(declare-fun e!1662589 () Bool)

(assert (=> b!2634874 (= e!1662589 true)))

(declare-fun b!2634873 () Bool)

(declare-fun e!1662588 () Bool)

(assert (=> b!2634873 (= e!1662588 e!1662589)))

(declare-fun b!2634872 () Bool)

(declare-fun e!1662587 () Bool)

(assert (=> b!2634872 (= e!1662587 e!1662588)))

(assert (=> b!2634851 e!1662587))

(assert (= b!2634873 b!2634874))

(assert (= b!2634872 b!2634873))

(declare-datatypes ((List!30619 0))(
  ( (Nil!30519) (Cons!30519 (h!35939 (_ BitVec 16)) (t!216740 List!30619)) )
))
(declare-datatypes ((C!15732 0))(
  ( (C!15733 (val!9800 Int)) )
))
(declare-datatypes ((String!34208 0))(
  ( (String!34209 (value!149904 String)) )
))
(declare-datatypes ((Regex!7787 0))(
  ( (ElementMatch!7787 (c!423639 C!15732)) (Concat!12652 (regOne!16086 Regex!7787) (regTwo!16086 Regex!7787)) (EmptyExpr!7787) (Star!7787 (reg!8116 Regex!7787)) (EmptyLang!7787) (Union!7787 (regOne!16087 Regex!7787) (regTwo!16087 Regex!7787)) )
))
(declare-datatypes ((TokenValue!4865 0))(
  ( (FloatLiteralValue!9730 (text!34500 List!30619)) (TokenValueExt!4864 (__x!19563 Int)) (Broken!24325 (value!149905 List!30619)) (Object!4964) (End!4865) (Def!4865) (Underscore!4865) (Match!4865) (Else!4865) (Error!4865) (Case!4865) (If!4865) (Extends!4865) (Abstract!4865) (Class!4865) (Val!4865) (DelimiterValue!9730 (del!4925 List!30619)) (KeywordValue!4871 (value!149906 List!30619)) (CommentValue!9730 (value!149907 List!30619)) (WhitespaceValue!9730 (value!149908 List!30619)) (IndentationValue!4865 (value!149909 List!30619)) (String!34210) (Int32!4865) (Broken!24326 (value!149910 List!30619)) (Boolean!4866) (Unit!44538) (OperatorValue!4868 (op!4925 List!30619)) (IdentifierValue!9730 (value!149911 List!30619)) (IdentifierValue!9731 (value!149912 List!30619)) (WhitespaceValue!9731 (value!149913 List!30619)) (True!9730) (False!9730) (Broken!24327 (value!149914 List!30619)) (Broken!24328 (value!149915 List!30619)) (True!9731) (RightBrace!4865) (RightBracket!4865) (Colon!4865) (Null!4865) (Comma!4865) (LeftBracket!4865) (False!9731) (LeftBrace!4865) (ImaginaryLiteralValue!4865 (text!34501 List!30619)) (StringLiteralValue!14595 (value!149916 List!30619)) (EOFValue!4865 (value!149917 List!30619)) (IdentValue!4865 (value!149918 List!30619)) (DelimiterValue!9731 (value!149919 List!30619)) (DedentValue!4865 (value!149920 List!30619)) (NewLineValue!4865 (value!149921 List!30619)) (IntegerValue!14595 (value!149922 (_ BitVec 32)) (text!34502 List!30619)) (IntegerValue!14596 (value!149923 Int) (text!34503 List!30619)) (Times!4865) (Or!4865) (Equal!4865) (Minus!4865) (Broken!24329 (value!149924 List!30619)) (And!4865) (Div!4865) (LessEqual!4865) (Mod!4865) (Concat!12653) (Not!4865) (Plus!4865) (SpaceValue!4865 (value!149925 List!30619)) (IntegerValue!14597 (value!149926 Int) (text!34504 List!30619)) (StringLiteralValue!14596 (text!34505 List!30619)) (FloatLiteralValue!9731 (text!34506 List!30619)) (BytesLiteralValue!4865 (value!149927 List!30619)) (CommentValue!9731 (value!149928 List!30619)) (StringLiteralValue!14597 (value!149929 List!30619)) (ErrorTokenValue!4865 (msg!4926 List!30619)) )
))
(declare-datatypes ((List!30620 0))(
  ( (Nil!30520) (Cons!30520 (h!35940 C!15732) (t!216741 List!30620)) )
))
(declare-datatypes ((IArray!19061 0))(
  ( (IArray!19062 (innerList!9588 List!30620)) )
))
(declare-datatypes ((Conc!9528 0))(
  ( (Node!9528 (left!23581 Conc!9528) (right!23911 Conc!9528) (csize!19286 Int) (cheight!9739 Int)) (Leaf!14590 (xs!12532 IArray!19061) (csize!19287 Int)) (Empty!9528) )
))
(declare-datatypes ((BalanceConc!18670 0))(
  ( (BalanceConc!18671 (c!423640 Conc!9528)) )
))
(declare-datatypes ((TokenValueInjection!9170 0))(
  ( (TokenValueInjection!9171 (toValue!6561 Int) (toChars!6420 Int)) )
))
(declare-datatypes ((Rule!9086 0))(
  ( (Rule!9087 (regex!4643 Regex!7787) (tag!5137 String!34208) (isSeparator!4643 Bool) (transformation!4643 TokenValueInjection!9170)) )
))
(declare-datatypes ((List!30621 0))(
  ( (Nil!30521) (Cons!30521 (h!35941 Rule!9086) (t!216742 List!30621)) )
))
(declare-fun rules!1726 () List!30621)

(get-info :version)

(assert (= (and b!2634851 ((_ is Cons!30521) rules!1726)) b!2634872))

(declare-fun order!16567 () Int)

(declare-fun order!16569 () Int)

(declare-fun dynLambda!13088 (Int Int) Int)

(declare-fun dynLambda!13089 (Int Int) Int)

(assert (=> b!2634874 (< (dynLambda!13088 order!16567 (toValue!6561 (transformation!4643 (h!35941 rules!1726)))) (dynLambda!13089 order!16569 lambda!98882))))

(declare-fun order!16571 () Int)

(declare-fun dynLambda!13090 (Int Int) Int)

(assert (=> b!2634874 (< (dynLambda!13090 order!16571 (toChars!6420 (transformation!4643 (h!35941 rules!1726)))) (dynLambda!13089 order!16569 lambda!98882))))

(assert (=> b!2634851 true))

(declare-fun b!2634841 () Bool)

(declare-fun e!1662572 () Bool)

(declare-fun tp!834938 () Bool)

(declare-datatypes ((Token!8756 0))(
  ( (Token!8757 (value!149930 TokenValue!4865) (rule!7027 Rule!9086) (size!23600 Int) (originalCharacters!5409 List!30620)) )
))
(declare-fun separatorToken!156 () Token!8756)

(declare-fun e!1662577 () Bool)

(declare-fun inv!21 (TokenValue!4865) Bool)

(assert (=> b!2634841 (= e!1662577 (and (inv!21 (value!149930 separatorToken!156)) e!1662572 tp!834938))))

(declare-fun b!2634842 () Bool)

(declare-fun res!1109423 () Bool)

(declare-fun e!1662574 () Bool)

(assert (=> b!2634842 (=> res!1109423 e!1662574)))

(declare-datatypes ((LexerInterface!4240 0))(
  ( (LexerInterfaceExt!4237 (__x!19564 Int)) (Lexer!4238) )
))
(declare-fun thiss!14197 () LexerInterface!4240)

(declare-fun lt!927569 () Token!8756)

(declare-fun rulesProduceIndividualToken!1952 (LexerInterface!4240 List!30621 Token!8756) Bool)

(assert (=> b!2634842 (= res!1109423 (not (rulesProduceIndividualToken!1952 thiss!14197 rules!1726 lt!927569)))))

(declare-fun b!2634843 () Bool)

(declare-fun res!1109424 () Bool)

(declare-fun e!1662578 () Bool)

(assert (=> b!2634843 (=> (not res!1109424) (not e!1662578))))

(assert (=> b!2634843 (= res!1109424 (rulesProduceIndividualToken!1952 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun b!2634844 () Bool)

(declare-fun e!1662566 () Bool)

(declare-datatypes ((List!30622 0))(
  ( (Nil!30522) (Cons!30522 (h!35942 Token!8756) (t!216743 List!30622)) )
))
(declare-datatypes ((IArray!19063 0))(
  ( (IArray!19064 (innerList!9589 List!30622)) )
))
(declare-datatypes ((Conc!9529 0))(
  ( (Node!9529 (left!23582 Conc!9529) (right!23912 Conc!9529) (csize!19288 Int) (cheight!9740 Int)) (Leaf!14591 (xs!12533 IArray!19063) (csize!19289 Int)) (Empty!9529) )
))
(declare-datatypes ((BalanceConc!18672 0))(
  ( (BalanceConc!18673 (c!423641 Conc!9529)) )
))
(declare-fun v!6381 () BalanceConc!18672)

(declare-fun tp!834939 () Bool)

(declare-fun inv!41403 (Conc!9529) Bool)

(assert (=> b!2634844 (= e!1662566 (and (inv!41403 (c!423641 v!6381)) tp!834939))))

(declare-fun e!1662576 () Bool)

(declare-fun b!2634845 () Bool)

(declare-fun tp!834941 () Bool)

(declare-fun inv!41398 (String!34208) Bool)

(declare-fun inv!41404 (TokenValueInjection!9170) Bool)

(assert (=> b!2634845 (= e!1662572 (and tp!834941 (inv!41398 (tag!5137 (rule!7027 separatorToken!156))) (inv!41404 (transformation!4643 (rule!7027 separatorToken!156))) e!1662576))))

(declare-fun res!1109427 () Bool)

(declare-fun e!1662567 () Bool)

(assert (=> start!256506 (=> (not res!1109427) (not e!1662567))))

(declare-fun from!862 () Int)

(assert (=> start!256506 (= res!1109427 (and ((_ is Lexer!4238) thiss!14197) (>= from!862 0)))))

(assert (=> start!256506 e!1662567))

(assert (=> start!256506 true))

(declare-fun e!1662568 () Bool)

(assert (=> start!256506 e!1662568))

(declare-fun inv!41405 (Token!8756) Bool)

(assert (=> start!256506 (and (inv!41405 separatorToken!156) e!1662577)))

(declare-fun inv!41406 (BalanceConc!18672) Bool)

(assert (=> start!256506 (and (inv!41406 v!6381) e!1662566)))

(declare-fun b!2634846 () Bool)

(declare-fun res!1109425 () Bool)

(assert (=> b!2634846 (=> (not res!1109425) (not e!1662578))))

(assert (=> b!2634846 (= res!1109425 (isSeparator!4643 (rule!7027 separatorToken!156)))))

(declare-fun b!2634847 () Bool)

(declare-fun e!1662579 () Bool)

(assert (=> b!2634847 (= e!1662579 e!1662574)))

(declare-fun res!1109418 () Bool)

(assert (=> b!2634847 (=> res!1109418 e!1662574)))

(declare-fun lt!927563 () List!30620)

(declare-fun lt!927575 () List!30620)

(assert (=> b!2634847 (= res!1109418 (not (= lt!927563 lt!927575)))))

(declare-fun lt!927573 () BalanceConc!18670)

(declare-fun list!11490 (BalanceConc!18670) List!30620)

(assert (=> b!2634847 (= lt!927575 (list!11490 lt!927573))))

(declare-fun b!2634848 () Bool)

(assert (=> b!2634848 (= e!1662567 e!1662578)))

(declare-fun res!1109421 () Bool)

(assert (=> b!2634848 (=> (not res!1109421) (not e!1662578))))

(declare-fun lt!927566 () Int)

(assert (=> b!2634848 (= res!1109421 (<= from!862 lt!927566))))

(declare-fun size!23601 (BalanceConc!18672) Int)

(assert (=> b!2634848 (= lt!927566 (size!23601 v!6381))))

(declare-fun b!2634849 () Bool)

(declare-fun isEmpty!17412 (BalanceConc!18672) Bool)

(declare-datatypes ((tuple2!30028 0))(
  ( (tuple2!30029 (_1!17556 BalanceConc!18672) (_2!17556 BalanceConc!18670)) )
))
(declare-fun lex!1903 (LexerInterface!4240 List!30621 BalanceConc!18670) tuple2!30028)

(declare-fun seqFromList!3183 (List!30620) BalanceConc!18670)

(assert (=> b!2634849 (= e!1662574 (not (isEmpty!17412 (_1!17556 (lex!1903 thiss!14197 rules!1726 (seqFromList!3183 lt!927575))))))))

(declare-fun e!1662580 () Bool)

(assert (=> b!2634850 (= e!1662580 (and tp!834940 tp!834944))))

(declare-fun e!1662564 () Bool)

(declare-fun e!1662570 () Bool)

(assert (=> b!2634851 (= e!1662564 e!1662570)))

(declare-fun res!1109416 () Bool)

(assert (=> b!2634851 (=> res!1109416 e!1662570)))

(declare-fun lt!927570 () Bool)

(declare-datatypes ((tuple2!30030 0))(
  ( (tuple2!30031 (_1!17557 Token!8756) (_2!17557 BalanceConc!18670)) )
))
(declare-datatypes ((Option!6038 0))(
  ( (None!6037) (Some!6037 (v!32462 tuple2!30030)) )
))
(declare-fun lt!927574 () Option!6038)

(assert (=> b!2634851 (= res!1109416 (or (and (not lt!927570) (= (_1!17557 (v!32462 lt!927574)) lt!927569)) (and (not lt!927570) (not (= (_1!17557 (v!32462 lt!927574)) lt!927569))) (not ((_ is None!6037) lt!927574))))))

(assert (=> b!2634851 (= lt!927570 (not ((_ is Some!6037) lt!927574)))))

(declare-fun lt!927565 () BalanceConc!18670)

(declare-fun maxPrefixZipperSequence!966 (LexerInterface!4240 List!30621 BalanceConc!18670) Option!6038)

(declare-fun ++!7439 (BalanceConc!18670 BalanceConc!18670) BalanceConc!18670)

(assert (=> b!2634851 (= lt!927574 (maxPrefixZipperSequence!966 thiss!14197 rules!1726 (++!7439 lt!927573 lt!927565)))))

(declare-fun charsOf!2930 (Token!8756) BalanceConc!18670)

(assert (=> b!2634851 (= lt!927573 (charsOf!2930 lt!927569))))

(declare-fun printWithSeparatorTokenWhenNeededRec!514 (LexerInterface!4240 List!30621 BalanceConc!18672 Token!8756 Int) BalanceConc!18670)

(assert (=> b!2634851 (= lt!927565 (printWithSeparatorTokenWhenNeededRec!514 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))

(declare-fun lt!927559 () List!30622)

(declare-datatypes ((Unit!44539 0))(
  ( (Unit!44540) )
))
(declare-fun lt!927568 () Unit!44539)

(declare-fun forallContained!995 (List!30622 Int Token!8756) Unit!44539)

(assert (=> b!2634851 (= lt!927568 (forallContained!995 lt!927559 lambda!98882 lt!927569))))

(declare-fun b!2634852 () Bool)

(declare-fun e!1662569 () Bool)

(declare-fun tp!834945 () Bool)

(assert (=> b!2634852 (= e!1662569 (and tp!834945 (inv!41398 (tag!5137 (h!35941 rules!1726))) (inv!41404 (transformation!4643 (h!35941 rules!1726))) e!1662580))))

(declare-fun b!2634853 () Bool)

(declare-fun res!1109422 () Bool)

(assert (=> b!2634853 (=> (not res!1109422) (not e!1662578))))

(declare-fun isEmpty!17413 (List!30621) Bool)

(assert (=> b!2634853 (= res!1109422 (not (isEmpty!17413 rules!1726)))))

(declare-fun b!2634854 () Bool)

(declare-fun e!1662575 () Bool)

(assert (=> b!2634854 (= e!1662575 (not e!1662564))))

(declare-fun res!1109428 () Bool)

(assert (=> b!2634854 (=> res!1109428 e!1662564)))

(declare-fun contains!5803 (BalanceConc!18672 Token!8756) Bool)

(assert (=> b!2634854 (= res!1109428 (not (contains!5803 v!6381 lt!927569)))))

(declare-fun apply!7281 (BalanceConc!18672 Int) Token!8756)

(assert (=> b!2634854 (= lt!927569 (apply!7281 v!6381 from!862))))

(declare-fun lt!927562 () List!30622)

(declare-fun tail!4282 (List!30622) List!30622)

(declare-fun drop!1639 (List!30622 Int) List!30622)

(assert (=> b!2634854 (= (tail!4282 lt!927562) (drop!1639 lt!927559 (+ 1 from!862)))))

(declare-fun lt!927561 () Unit!44539)

(declare-fun lemmaDropTail!828 (List!30622 Int) Unit!44539)

(assert (=> b!2634854 (= lt!927561 (lemmaDropTail!828 lt!927559 from!862))))

(declare-fun head!6044 (List!30622) Token!8756)

(declare-fun apply!7282 (List!30622 Int) Token!8756)

(assert (=> b!2634854 (= (head!6044 lt!927562) (apply!7282 lt!927559 from!862))))

(assert (=> b!2634854 (= lt!927562 (drop!1639 lt!927559 from!862))))

(declare-fun lt!927560 () Unit!44539)

(declare-fun lemmaDropApply!854 (List!30622 Int) Unit!44539)

(assert (=> b!2634854 (= lt!927560 (lemmaDropApply!854 lt!927559 from!862))))

(declare-fun b!2634855 () Bool)

(declare-fun res!1109419 () Bool)

(assert (=> b!2634855 (=> (not res!1109419) (not e!1662578))))

(declare-fun rulesInvariant!3740 (LexerInterface!4240 List!30621) Bool)

(assert (=> b!2634855 (= res!1109419 (rulesInvariant!3740 thiss!14197 rules!1726))))

(declare-fun b!2634856 () Bool)

(assert (=> b!2634856 (= e!1662578 e!1662575)))

(declare-fun res!1109426 () Bool)

(assert (=> b!2634856 (=> (not res!1109426) (not e!1662575))))

(assert (=> b!2634856 (= res!1109426 (< from!862 lt!927566))))

(declare-fun lt!927571 () Unit!44539)

(declare-fun lemmaContentSubsetPreservesForall!312 (List!30622 List!30622 Int) Unit!44539)

(declare-fun dropList!946 (BalanceConc!18672 Int) List!30622)

(assert (=> b!2634856 (= lt!927571 (lemmaContentSubsetPreservesForall!312 lt!927559 (dropList!946 v!6381 from!862) lambda!98881))))

(declare-fun list!11491 (BalanceConc!18672) List!30622)

(assert (=> b!2634856 (= lt!927559 (list!11491 v!6381))))

(declare-fun b!2634857 () Bool)

(declare-fun tp!834943 () Bool)

(assert (=> b!2634857 (= e!1662568 (and e!1662569 tp!834943))))

(declare-fun b!2634858 () Bool)

(declare-fun res!1109420 () Bool)

(assert (=> b!2634858 (=> (not res!1109420) (not e!1662578))))

(declare-fun rulesProduceEachTokenIndividually!1060 (LexerInterface!4240 List!30621 BalanceConc!18672) Bool)

(assert (=> b!2634858 (= res!1109420 (rulesProduceEachTokenIndividually!1060 thiss!14197 rules!1726 v!6381))))

(declare-fun res!1109415 () Bool)

(assert (=> b!2634859 (=> (not res!1109415) (not e!1662578))))

(declare-fun forall!6400 (BalanceConc!18672 Int) Bool)

(assert (=> b!2634859 (= res!1109415 (forall!6400 v!6381 lambda!98881))))

(declare-fun b!2634860 () Bool)

(declare-fun res!1109413 () Bool)

(assert (=> b!2634860 (=> (not res!1109413) (not e!1662578))))

(declare-fun sepAndNonSepRulesDisjointChars!1216 (List!30621 List!30621) Bool)

(assert (=> b!2634860 (= res!1109413 (sepAndNonSepRulesDisjointChars!1216 rules!1726 rules!1726))))

(declare-fun b!2634861 () Bool)

(assert (=> b!2634861 (= e!1662570 e!1662579)))

(declare-fun res!1109414 () Bool)

(assert (=> b!2634861 (=> res!1109414 e!1662579)))

(declare-fun lt!927567 () List!30620)

(assert (=> b!2634861 (= res!1109414 (not (= lt!927567 lt!927563)))))

(declare-fun printList!1168 (LexerInterface!4240 List!30622) List!30620)

(assert (=> b!2634861 (= lt!927563 (printList!1168 thiss!14197 (Cons!30522 lt!927569 Nil!30522)))))

(declare-fun lt!927572 () BalanceConc!18670)

(assert (=> b!2634861 (= lt!927567 (list!11490 lt!927572))))

(declare-fun lt!927564 () BalanceConc!18672)

(declare-fun printTailRec!1127 (LexerInterface!4240 BalanceConc!18672 Int BalanceConc!18670) BalanceConc!18670)

(assert (=> b!2634861 (= lt!927572 (printTailRec!1127 thiss!14197 lt!927564 0 (BalanceConc!18671 Empty!9528)))))

(declare-fun print!1641 (LexerInterface!4240 BalanceConc!18672) BalanceConc!18670)

(assert (=> b!2634861 (= lt!927572 (print!1641 thiss!14197 lt!927564))))

(declare-fun singletonSeq!2060 (Token!8756) BalanceConc!18672)

(assert (=> b!2634861 (= lt!927564 (singletonSeq!2060 lt!927569))))

(assert (=> b!2634862 (= e!1662576 (and tp!834946 tp!834942))))

(declare-fun b!2634863 () Bool)

(declare-fun res!1109417 () Bool)

(assert (=> b!2634863 (=> res!1109417 e!1662564)))

(declare-fun contains!5804 (List!30622 Token!8756) Bool)

(assert (=> b!2634863 (= res!1109417 (not (contains!5804 lt!927559 lt!927569)))))

(assert (= (and start!256506 res!1109427) b!2634848))

(assert (= (and b!2634848 res!1109421) b!2634853))

(assert (= (and b!2634853 res!1109422) b!2634855))

(assert (= (and b!2634855 res!1109419) b!2634858))

(assert (= (and b!2634858 res!1109420) b!2634843))

(assert (= (and b!2634843 res!1109424) b!2634846))

(assert (= (and b!2634846 res!1109425) b!2634859))

(assert (= (and b!2634859 res!1109415) b!2634860))

(assert (= (and b!2634860 res!1109413) b!2634856))

(assert (= (and b!2634856 res!1109426) b!2634854))

(assert (= (and b!2634854 (not res!1109428)) b!2634863))

(assert (= (and b!2634863 (not res!1109417)) b!2634851))

(assert (= (and b!2634851 (not res!1109416)) b!2634861))

(assert (= (and b!2634861 (not res!1109414)) b!2634847))

(assert (= (and b!2634847 (not res!1109418)) b!2634842))

(assert (= (and b!2634842 (not res!1109423)) b!2634849))

(assert (= b!2634852 b!2634850))

(assert (= b!2634857 b!2634852))

(assert (= (and start!256506 ((_ is Cons!30521) rules!1726)) b!2634857))

(assert (= b!2634845 b!2634862))

(assert (= b!2634841 b!2634845))

(assert (= start!256506 b!2634841))

(assert (= start!256506 b!2634844))

(declare-fun m!2978847 () Bool)

(assert (=> b!2634849 m!2978847))

(assert (=> b!2634849 m!2978847))

(declare-fun m!2978849 () Bool)

(assert (=> b!2634849 m!2978849))

(declare-fun m!2978851 () Bool)

(assert (=> b!2634849 m!2978851))

(declare-fun m!2978853 () Bool)

(assert (=> start!256506 m!2978853))

(declare-fun m!2978855 () Bool)

(assert (=> start!256506 m!2978855))

(declare-fun m!2978857 () Bool)

(assert (=> b!2634848 m!2978857))

(declare-fun m!2978859 () Bool)

(assert (=> b!2634845 m!2978859))

(declare-fun m!2978861 () Bool)

(assert (=> b!2634845 m!2978861))

(declare-fun m!2978863 () Bool)

(assert (=> b!2634842 m!2978863))

(declare-fun m!2978865 () Bool)

(assert (=> b!2634854 m!2978865))

(declare-fun m!2978867 () Bool)

(assert (=> b!2634854 m!2978867))

(declare-fun m!2978869 () Bool)

(assert (=> b!2634854 m!2978869))

(declare-fun m!2978871 () Bool)

(assert (=> b!2634854 m!2978871))

(declare-fun m!2978873 () Bool)

(assert (=> b!2634854 m!2978873))

(declare-fun m!2978875 () Bool)

(assert (=> b!2634854 m!2978875))

(declare-fun m!2978877 () Bool)

(assert (=> b!2634854 m!2978877))

(declare-fun m!2978879 () Bool)

(assert (=> b!2634854 m!2978879))

(declare-fun m!2978881 () Bool)

(assert (=> b!2634854 m!2978881))

(declare-fun m!2978883 () Bool)

(assert (=> b!2634853 m!2978883))

(declare-fun m!2978885 () Bool)

(assert (=> b!2634860 m!2978885))

(declare-fun m!2978887 () Bool)

(assert (=> b!2634843 m!2978887))

(declare-fun m!2978889 () Bool)

(assert (=> b!2634852 m!2978889))

(declare-fun m!2978891 () Bool)

(assert (=> b!2634852 m!2978891))

(declare-fun m!2978893 () Bool)

(assert (=> b!2634841 m!2978893))

(declare-fun m!2978895 () Bool)

(assert (=> b!2634859 m!2978895))

(declare-fun m!2978897 () Bool)

(assert (=> b!2634858 m!2978897))

(declare-fun m!2978899 () Bool)

(assert (=> b!2634861 m!2978899))

(declare-fun m!2978901 () Bool)

(assert (=> b!2634861 m!2978901))

(declare-fun m!2978903 () Bool)

(assert (=> b!2634861 m!2978903))

(declare-fun m!2978905 () Bool)

(assert (=> b!2634861 m!2978905))

(declare-fun m!2978907 () Bool)

(assert (=> b!2634861 m!2978907))

(declare-fun m!2978909 () Bool)

(assert (=> b!2634856 m!2978909))

(assert (=> b!2634856 m!2978909))

(declare-fun m!2978911 () Bool)

(assert (=> b!2634856 m!2978911))

(declare-fun m!2978913 () Bool)

(assert (=> b!2634856 m!2978913))

(declare-fun m!2978915 () Bool)

(assert (=> b!2634855 m!2978915))

(declare-fun m!2978917 () Bool)

(assert (=> b!2634863 m!2978917))

(declare-fun m!2978919 () Bool)

(assert (=> b!2634847 m!2978919))

(declare-fun m!2978921 () Bool)

(assert (=> b!2634851 m!2978921))

(declare-fun m!2978923 () Bool)

(assert (=> b!2634851 m!2978923))

(declare-fun m!2978925 () Bool)

(assert (=> b!2634851 m!2978925))

(assert (=> b!2634851 m!2978921))

(declare-fun m!2978927 () Bool)

(assert (=> b!2634851 m!2978927))

(declare-fun m!2978929 () Bool)

(assert (=> b!2634851 m!2978929))

(declare-fun m!2978931 () Bool)

(assert (=> b!2634844 m!2978931))

(check-sat (not b!2634843) (not b!2634842) (not start!256506) (not b!2634844) b_and!192979 (not b!2634852) (not b!2634872) (not b!2634860) b_and!192981 (not b!2634841) (not b!2634859) (not b!2634861) (not b!2634863) (not b!2634851) (not b!2634845) b_and!192975 (not b!2634847) b_and!192977 (not b_next!75001) (not b!2634848) (not b_next!74997) (not b!2634854) (not b_next!75003) (not b!2634858) (not b!2634849) (not b!2634856) (not b!2634853) (not b_next!74999) (not b!2634857) (not b!2634855))
(check-sat b_and!192975 b_and!192977 (not b_next!75001) (not b_next!74997) (not b_next!75003) b_and!192979 (not b_next!74999) b_and!192981)
(get-model)

(declare-fun d!747614 () Bool)

(declare-fun lt!927578 () BalanceConc!18670)

(assert (=> d!747614 (= (list!11490 lt!927578) (printList!1168 thiss!14197 (list!11491 lt!927564)))))

(assert (=> d!747614 (= lt!927578 (printTailRec!1127 thiss!14197 lt!927564 0 (BalanceConc!18671 Empty!9528)))))

(assert (=> d!747614 (= (print!1641 thiss!14197 lt!927564) lt!927578)))

(declare-fun bs!476042 () Bool)

(assert (= bs!476042 d!747614))

(declare-fun m!2978933 () Bool)

(assert (=> bs!476042 m!2978933))

(declare-fun m!2978935 () Bool)

(assert (=> bs!476042 m!2978935))

(assert (=> bs!476042 m!2978935))

(declare-fun m!2978937 () Bool)

(assert (=> bs!476042 m!2978937))

(assert (=> bs!476042 m!2978903))

(assert (=> b!2634861 d!747614))

(declare-fun d!747616 () Bool)

(declare-fun list!11494 (Conc!9528) List!30620)

(assert (=> d!747616 (= (list!11490 lt!927572) (list!11494 (c!423640 lt!927572)))))

(declare-fun bs!476043 () Bool)

(assert (= bs!476043 d!747616))

(declare-fun m!2978939 () Bool)

(assert (=> bs!476043 m!2978939))

(assert (=> b!2634861 d!747616))

(declare-fun d!747618 () Bool)

(declare-fun c!423644 () Bool)

(assert (=> d!747618 (= c!423644 ((_ is Cons!30522) (Cons!30522 lt!927569 Nil!30522)))))

(declare-fun e!1662592 () List!30620)

(assert (=> d!747618 (= (printList!1168 thiss!14197 (Cons!30522 lt!927569 Nil!30522)) e!1662592)))

(declare-fun b!2634881 () Bool)

(declare-fun ++!7441 (List!30620 List!30620) List!30620)

(assert (=> b!2634881 (= e!1662592 (++!7441 (list!11490 (charsOf!2930 (h!35942 (Cons!30522 lt!927569 Nil!30522)))) (printList!1168 thiss!14197 (t!216743 (Cons!30522 lt!927569 Nil!30522)))))))

(declare-fun b!2634882 () Bool)

(assert (=> b!2634882 (= e!1662592 Nil!30520)))

(assert (= (and d!747618 c!423644) b!2634881))

(assert (= (and d!747618 (not c!423644)) b!2634882))

(declare-fun m!2978941 () Bool)

(assert (=> b!2634881 m!2978941))

(assert (=> b!2634881 m!2978941))

(declare-fun m!2978943 () Bool)

(assert (=> b!2634881 m!2978943))

(declare-fun m!2978945 () Bool)

(assert (=> b!2634881 m!2978945))

(assert (=> b!2634881 m!2978943))

(assert (=> b!2634881 m!2978945))

(declare-fun m!2978947 () Bool)

(assert (=> b!2634881 m!2978947))

(assert (=> b!2634861 d!747618))

(declare-fun d!747620 () Bool)

(declare-fun e!1662595 () Bool)

(assert (=> d!747620 e!1662595))

(declare-fun res!1109438 () Bool)

(assert (=> d!747620 (=> (not res!1109438) (not e!1662595))))

(declare-fun lt!927583 () BalanceConc!18672)

(assert (=> d!747620 (= res!1109438 (= (list!11491 lt!927583) (Cons!30522 lt!927569 Nil!30522)))))

(declare-fun singleton!914 (Token!8756) BalanceConc!18672)

(assert (=> d!747620 (= lt!927583 (singleton!914 lt!927569))))

(assert (=> d!747620 (= (singletonSeq!2060 lt!927569) lt!927583)))

(declare-fun b!2634885 () Bool)

(declare-fun isBalanced!2885 (Conc!9529) Bool)

(assert (=> b!2634885 (= e!1662595 (isBalanced!2885 (c!423641 lt!927583)))))

(assert (= (and d!747620 res!1109438) b!2634885))

(declare-fun m!2978949 () Bool)

(assert (=> d!747620 m!2978949))

(declare-fun m!2978951 () Bool)

(assert (=> d!747620 m!2978951))

(declare-fun m!2978953 () Bool)

(assert (=> b!2634885 m!2978953))

(assert (=> b!2634861 d!747620))

(declare-fun d!747622 () Bool)

(declare-fun lt!927603 () BalanceConc!18670)

(declare-fun printListTailRec!509 (LexerInterface!4240 List!30622 List!30620) List!30620)

(assert (=> d!747622 (= (list!11490 lt!927603) (printListTailRec!509 thiss!14197 (dropList!946 lt!927564 0) (list!11490 (BalanceConc!18671 Empty!9528))))))

(declare-fun e!1662607 () BalanceConc!18670)

(assert (=> d!747622 (= lt!927603 e!1662607)))

(declare-fun c!423647 () Bool)

(assert (=> d!747622 (= c!423647 (>= 0 (size!23601 lt!927564)))))

(declare-fun e!1662606 () Bool)

(assert (=> d!747622 e!1662606))

(declare-fun res!1109444 () Bool)

(assert (=> d!747622 (=> (not res!1109444) (not e!1662606))))

(assert (=> d!747622 (= res!1109444 (>= 0 0))))

(assert (=> d!747622 (= (printTailRec!1127 thiss!14197 lt!927564 0 (BalanceConc!18671 Empty!9528)) lt!927603)))

(declare-fun b!2634898 () Bool)

(assert (=> b!2634898 (= e!1662606 (<= 0 (size!23601 lt!927564)))))

(declare-fun b!2634899 () Bool)

(assert (=> b!2634899 (= e!1662607 (BalanceConc!18671 Empty!9528))))

(declare-fun b!2634900 () Bool)

(assert (=> b!2634900 (= e!1662607 (printTailRec!1127 thiss!14197 lt!927564 (+ 0 1) (++!7439 (BalanceConc!18671 Empty!9528) (charsOf!2930 (apply!7281 lt!927564 0)))))))

(declare-fun lt!927604 () List!30622)

(assert (=> b!2634900 (= lt!927604 (list!11491 lt!927564))))

(declare-fun lt!927600 () Unit!44539)

(assert (=> b!2634900 (= lt!927600 (lemmaDropApply!854 lt!927604 0))))

(assert (=> b!2634900 (= (head!6044 (drop!1639 lt!927604 0)) (apply!7282 lt!927604 0))))

(declare-fun lt!927601 () Unit!44539)

(assert (=> b!2634900 (= lt!927601 lt!927600)))

(declare-fun lt!927605 () List!30622)

(assert (=> b!2634900 (= lt!927605 (list!11491 lt!927564))))

(declare-fun lt!927602 () Unit!44539)

(assert (=> b!2634900 (= lt!927602 (lemmaDropTail!828 lt!927605 0))))

(assert (=> b!2634900 (= (tail!4282 (drop!1639 lt!927605 0)) (drop!1639 lt!927605 (+ 0 1)))))

(declare-fun lt!927599 () Unit!44539)

(assert (=> b!2634900 (= lt!927599 lt!927602)))

(assert (= (and d!747622 res!1109444) b!2634898))

(assert (= (and d!747622 c!423647) b!2634899))

(assert (= (and d!747622 (not c!423647)) b!2634900))

(declare-fun m!2978961 () Bool)

(assert (=> d!747622 m!2978961))

(declare-fun m!2978963 () Bool)

(assert (=> d!747622 m!2978963))

(declare-fun m!2978965 () Bool)

(assert (=> d!747622 m!2978965))

(declare-fun m!2978967 () Bool)

(assert (=> d!747622 m!2978967))

(assert (=> d!747622 m!2978961))

(assert (=> d!747622 m!2978967))

(declare-fun m!2978969 () Bool)

(assert (=> d!747622 m!2978969))

(assert (=> b!2634898 m!2978963))

(assert (=> b!2634900 m!2978935))

(declare-fun m!2978971 () Bool)

(assert (=> b!2634900 m!2978971))

(declare-fun m!2978973 () Bool)

(assert (=> b!2634900 m!2978973))

(declare-fun m!2978975 () Bool)

(assert (=> b!2634900 m!2978975))

(declare-fun m!2978977 () Bool)

(assert (=> b!2634900 m!2978977))

(declare-fun m!2978979 () Bool)

(assert (=> b!2634900 m!2978979))

(declare-fun m!2978981 () Bool)

(assert (=> b!2634900 m!2978981))

(assert (=> b!2634900 m!2978977))

(declare-fun m!2978983 () Bool)

(assert (=> b!2634900 m!2978983))

(declare-fun m!2978985 () Bool)

(assert (=> b!2634900 m!2978985))

(declare-fun m!2978987 () Bool)

(assert (=> b!2634900 m!2978987))

(assert (=> b!2634900 m!2978987))

(assert (=> b!2634900 m!2978981))

(declare-fun m!2978989 () Bool)

(assert (=> b!2634900 m!2978989))

(assert (=> b!2634900 m!2978973))

(declare-fun m!2978991 () Bool)

(assert (=> b!2634900 m!2978991))

(assert (=> b!2634900 m!2978983))

(declare-fun m!2978993 () Bool)

(assert (=> b!2634900 m!2978993))

(assert (=> b!2634861 d!747622))

(declare-fun d!747626 () Bool)

(declare-fun dynLambda!13092 (Int Token!8756) Bool)

(assert (=> d!747626 (dynLambda!13092 lambda!98882 lt!927569)))

(declare-fun lt!927608 () Unit!44539)

(declare-fun choose!15641 (List!30622 Int Token!8756) Unit!44539)

(assert (=> d!747626 (= lt!927608 (choose!15641 lt!927559 lambda!98882 lt!927569))))

(declare-fun e!1662610 () Bool)

(assert (=> d!747626 e!1662610))

(declare-fun res!1109447 () Bool)

(assert (=> d!747626 (=> (not res!1109447) (not e!1662610))))

(declare-fun forall!6403 (List!30622 Int) Bool)

(assert (=> d!747626 (= res!1109447 (forall!6403 lt!927559 lambda!98882))))

(assert (=> d!747626 (= (forallContained!995 lt!927559 lambda!98882 lt!927569) lt!927608)))

(declare-fun b!2634903 () Bool)

(assert (=> b!2634903 (= e!1662610 (contains!5804 lt!927559 lt!927569))))

(assert (= (and d!747626 res!1109447) b!2634903))

(declare-fun b_lambda!79363 () Bool)

(assert (=> (not b_lambda!79363) (not d!747626)))

(declare-fun m!2978995 () Bool)

(assert (=> d!747626 m!2978995))

(declare-fun m!2978997 () Bool)

(assert (=> d!747626 m!2978997))

(declare-fun m!2978999 () Bool)

(assert (=> d!747626 m!2978999))

(assert (=> b!2634903 m!2978917))

(assert (=> b!2634851 d!747626))

(declare-fun bs!476056 () Bool)

(declare-fun d!747628 () Bool)

(assert (= bs!476056 (and d!747628 b!2634859)))

(declare-fun lambda!98892 () Int)

(assert (=> bs!476056 (= lambda!98892 lambda!98881)))

(declare-fun bs!476057 () Bool)

(assert (= bs!476057 (and d!747628 b!2634851)))

(assert (=> bs!476057 (not (= lambda!98892 lambda!98882))))

(declare-fun bs!476058 () Bool)

(declare-fun b!2635043 () Bool)

(assert (= bs!476058 (and b!2635043 b!2634859)))

(declare-fun lambda!98893 () Int)

(assert (=> bs!476058 (not (= lambda!98893 lambda!98881))))

(declare-fun bs!476059 () Bool)

(assert (= bs!476059 (and b!2635043 b!2634851)))

(assert (=> bs!476059 (= lambda!98893 lambda!98882)))

(declare-fun bs!476060 () Bool)

(assert (= bs!476060 (and b!2635043 d!747628)))

(assert (=> bs!476060 (not (= lambda!98893 lambda!98892))))

(declare-fun b!2635052 () Bool)

(declare-fun e!1662711 () Bool)

(assert (=> b!2635052 (= e!1662711 true)))

(declare-fun b!2635051 () Bool)

(declare-fun e!1662710 () Bool)

(assert (=> b!2635051 (= e!1662710 e!1662711)))

(declare-fun b!2635050 () Bool)

(declare-fun e!1662709 () Bool)

(assert (=> b!2635050 (= e!1662709 e!1662710)))

(assert (=> b!2635043 e!1662709))

(assert (= b!2635051 b!2635052))

(assert (= b!2635050 b!2635051))

(assert (= (and b!2635043 ((_ is Cons!30521) rules!1726)) b!2635050))

(assert (=> b!2635052 (< (dynLambda!13088 order!16567 (toValue!6561 (transformation!4643 (h!35941 rules!1726)))) (dynLambda!13089 order!16569 lambda!98893))))

(assert (=> b!2635052 (< (dynLambda!13090 order!16571 (toChars!6420 (transformation!4643 (h!35941 rules!1726)))) (dynLambda!13089 order!16569 lambda!98893))))

(assert (=> b!2635043 true))

(declare-fun lt!927712 () BalanceConc!18670)

(declare-fun printWithSeparatorTokenWhenNeededList!659 (LexerInterface!4240 List!30621 List!30622 Token!8756) List!30620)

(assert (=> d!747628 (= (list!11490 lt!927712) (printWithSeparatorTokenWhenNeededList!659 thiss!14197 rules!1726 (dropList!946 v!6381 (+ 1 from!862)) separatorToken!156))))

(declare-fun e!1662708 () BalanceConc!18670)

(assert (=> d!747628 (= lt!927712 e!1662708)))

(declare-fun c!423686 () Bool)

(assert (=> d!747628 (= c!423686 (>= (+ 1 from!862) (size!23601 v!6381)))))

(declare-fun lt!927706 () Unit!44539)

(assert (=> d!747628 (= lt!927706 (lemmaContentSubsetPreservesForall!312 (list!11491 v!6381) (dropList!946 v!6381 (+ 1 from!862)) lambda!98892))))

(declare-fun e!1662704 () Bool)

(assert (=> d!747628 e!1662704))

(declare-fun res!1109507 () Bool)

(assert (=> d!747628 (=> (not res!1109507) (not e!1662704))))

(assert (=> d!747628 (= res!1109507 (>= (+ 1 from!862) 0))))

(assert (=> d!747628 (= (printWithSeparatorTokenWhenNeededRec!514 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)) lt!927712)))

(declare-fun b!2635041 () Bool)

(declare-fun e!1662707 () BalanceConc!18670)

(declare-fun call!169542 () BalanceConc!18670)

(assert (=> b!2635041 (= e!1662707 call!169542)))

(declare-fun e!1662703 () Bool)

(declare-fun b!2635042 () Bool)

(declare-fun lt!927716 () Option!6038)

(assert (=> b!2635042 (= e!1662703 (= (_1!17557 (v!32462 lt!927716)) (apply!7281 v!6381 (+ 1 from!862))))))

(declare-fun bm!169534 () Bool)

(declare-fun call!169543 () Token!8756)

(assert (=> bm!169534 (= call!169543 (apply!7281 v!6381 (+ 1 from!862)))))

(assert (=> b!2635043 (= e!1662708 e!1662707)))

(declare-fun lt!927705 () List!30622)

(assert (=> b!2635043 (= lt!927705 (list!11491 v!6381))))

(declare-fun lt!927704 () Unit!44539)

(assert (=> b!2635043 (= lt!927704 (lemmaDropApply!854 lt!927705 (+ 1 from!862)))))

(assert (=> b!2635043 (= (head!6044 (drop!1639 lt!927705 (+ 1 from!862))) (apply!7282 lt!927705 (+ 1 from!862)))))

(declare-fun lt!927715 () Unit!44539)

(assert (=> b!2635043 (= lt!927715 lt!927704)))

(declare-fun lt!927711 () List!30622)

(assert (=> b!2635043 (= lt!927711 (list!11491 v!6381))))

(declare-fun lt!927717 () Unit!44539)

(assert (=> b!2635043 (= lt!927717 (lemmaDropTail!828 lt!927711 (+ 1 from!862)))))

(assert (=> b!2635043 (= (tail!4282 (drop!1639 lt!927711 (+ 1 from!862))) (drop!1639 lt!927711 (+ 1 from!862 1)))))

(declare-fun lt!927710 () Unit!44539)

(assert (=> b!2635043 (= lt!927710 lt!927717)))

(declare-fun lt!927714 () Unit!44539)

(assert (=> b!2635043 (= lt!927714 (forallContained!995 (list!11491 v!6381) lambda!98893 (apply!7281 v!6381 (+ 1 from!862))))))

(declare-fun lt!927709 () BalanceConc!18670)

(assert (=> b!2635043 (= lt!927709 (printWithSeparatorTokenWhenNeededRec!514 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862 1)))))

(assert (=> b!2635043 (= lt!927716 (maxPrefixZipperSequence!966 thiss!14197 rules!1726 (++!7439 (charsOf!2930 (apply!7281 v!6381 (+ 1 from!862))) lt!927709)))))

(declare-fun res!1109508 () Bool)

(assert (=> b!2635043 (= res!1109508 ((_ is Some!6037) lt!927716))))

(assert (=> b!2635043 (=> (not res!1109508) (not e!1662703))))

(declare-fun c!423685 () Bool)

(assert (=> b!2635043 (= c!423685 e!1662703)))

(declare-fun b!2635044 () Bool)

(declare-fun c!423687 () Bool)

(declare-fun e!1662706 () Bool)

(assert (=> b!2635044 (= c!423687 e!1662706)))

(declare-fun res!1109506 () Bool)

(assert (=> b!2635044 (=> (not res!1109506) (not e!1662706))))

(assert (=> b!2635044 (= res!1109506 ((_ is Some!6037) lt!927716))))

(declare-fun e!1662705 () BalanceConc!18670)

(assert (=> b!2635044 (= e!1662707 e!1662705)))

(declare-fun call!169539 () BalanceConc!18670)

(declare-fun call!169541 () Token!8756)

(declare-fun bm!169535 () Bool)

(assert (=> bm!169535 (= call!169539 (charsOf!2930 (ite c!423687 separatorToken!156 call!169541)))))

(declare-fun b!2635045 () Bool)

(assert (=> b!2635045 (= e!1662706 (not (= (_1!17557 (v!32462 lt!927716)) call!169543)))))

(declare-fun bm!169536 () Bool)

(assert (=> bm!169536 (= call!169541 call!169543)))

(declare-fun call!169540 () BalanceConc!18670)

(declare-fun bm!169537 () Bool)

(assert (=> bm!169537 (= call!169542 (++!7439 call!169540 (ite c!423685 lt!927709 call!169539)))))

(declare-fun b!2635046 () Bool)

(assert (=> b!2635046 (= e!1662708 (BalanceConc!18671 Empty!9528))))

(declare-fun b!2635047 () Bool)

(assert (=> b!2635047 (= e!1662704 (<= (+ 1 from!862) (size!23601 v!6381)))))

(declare-fun b!2635048 () Bool)

(assert (=> b!2635048 (= e!1662705 (++!7439 call!169542 lt!927709))))

(declare-fun b!2635049 () Bool)

(assert (=> b!2635049 (= e!1662705 (BalanceConc!18671 Empty!9528))))

(assert (=> b!2635049 (= (print!1641 thiss!14197 (singletonSeq!2060 call!169541)) (printTailRec!1127 thiss!14197 (singletonSeq!2060 call!169541) 0 (BalanceConc!18671 Empty!9528)))))

(declare-fun lt!927707 () Unit!44539)

(declare-fun Unit!44541 () Unit!44539)

(assert (=> b!2635049 (= lt!927707 Unit!44541)))

(declare-fun lt!927708 () Unit!44539)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!802 (LexerInterface!4240 List!30621 List!30620 List!30620) Unit!44539)

(assert (=> b!2635049 (= lt!927708 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!802 thiss!14197 rules!1726 (list!11490 call!169539) (list!11490 lt!927709)))))

(assert (=> b!2635049 false))

(declare-fun lt!927713 () Unit!44539)

(declare-fun Unit!44542 () Unit!44539)

(assert (=> b!2635049 (= lt!927713 Unit!44542)))

(declare-fun bm!169538 () Bool)

(assert (=> bm!169538 (= call!169540 (charsOf!2930 (ite c!423685 call!169543 call!169541)))))

(assert (= (and d!747628 res!1109507) b!2635047))

(assert (= (and d!747628 c!423686) b!2635046))

(assert (= (and d!747628 (not c!423686)) b!2635043))

(assert (= (and b!2635043 res!1109508) b!2635042))

(assert (= (and b!2635043 c!423685) b!2635041))

(assert (= (and b!2635043 (not c!423685)) b!2635044))

(assert (= (and b!2635044 res!1109506) b!2635045))

(assert (= (and b!2635044 c!423687) b!2635048))

(assert (= (and b!2635044 (not c!423687)) b!2635049))

(assert (= (or b!2635048 b!2635049) bm!169536))

(assert (= (or b!2635048 b!2635049) bm!169535))

(assert (= (or b!2635041 b!2635045 bm!169536) bm!169534))

(assert (= (or b!2635041 b!2635048) bm!169538))

(assert (= (or b!2635041 b!2635048) bm!169537))

(declare-fun m!2979171 () Bool)

(assert (=> b!2635049 m!2979171))

(assert (=> b!2635049 m!2979171))

(declare-fun m!2979173 () Bool)

(assert (=> b!2635049 m!2979173))

(assert (=> b!2635049 m!2979171))

(declare-fun m!2979175 () Bool)

(assert (=> b!2635049 m!2979175))

(declare-fun m!2979177 () Bool)

(assert (=> b!2635049 m!2979177))

(declare-fun m!2979179 () Bool)

(assert (=> b!2635049 m!2979179))

(declare-fun m!2979181 () Bool)

(assert (=> b!2635049 m!2979181))

(assert (=> b!2635049 m!2979179))

(assert (=> b!2635049 m!2979177))

(declare-fun m!2979183 () Bool)

(assert (=> b!2635048 m!2979183))

(declare-fun m!2979185 () Bool)

(assert (=> d!747628 m!2979185))

(declare-fun m!2979187 () Bool)

(assert (=> d!747628 m!2979187))

(assert (=> d!747628 m!2978913))

(declare-fun m!2979189 () Bool)

(assert (=> d!747628 m!2979189))

(assert (=> d!747628 m!2979185))

(assert (=> d!747628 m!2978913))

(assert (=> d!747628 m!2979185))

(declare-fun m!2979191 () Bool)

(assert (=> d!747628 m!2979191))

(assert (=> d!747628 m!2978857))

(declare-fun m!2979193 () Bool)

(assert (=> b!2635043 m!2979193))

(declare-fun m!2979195 () Bool)

(assert (=> b!2635043 m!2979195))

(declare-fun m!2979197 () Bool)

(assert (=> b!2635043 m!2979197))

(declare-fun m!2979199 () Bool)

(assert (=> b!2635043 m!2979199))

(assert (=> b!2635043 m!2979197))

(assert (=> b!2635043 m!2978913))

(declare-fun m!2979201 () Bool)

(assert (=> b!2635043 m!2979201))

(declare-fun m!2979203 () Bool)

(assert (=> b!2635043 m!2979203))

(declare-fun m!2979205 () Bool)

(assert (=> b!2635043 m!2979205))

(declare-fun m!2979207 () Bool)

(assert (=> b!2635043 m!2979207))

(declare-fun m!2979209 () Bool)

(assert (=> b!2635043 m!2979209))

(assert (=> b!2635043 m!2979201))

(assert (=> b!2635043 m!2979207))

(declare-fun m!2979211 () Bool)

(assert (=> b!2635043 m!2979211))

(declare-fun m!2979213 () Bool)

(assert (=> b!2635043 m!2979213))

(declare-fun m!2979215 () Bool)

(assert (=> b!2635043 m!2979215))

(assert (=> b!2635043 m!2979201))

(assert (=> b!2635043 m!2979193))

(declare-fun m!2979217 () Bool)

(assert (=> b!2635043 m!2979217))

(assert (=> b!2635043 m!2979209))

(declare-fun m!2979219 () Bool)

(assert (=> b!2635043 m!2979219))

(assert (=> b!2635043 m!2978913))

(declare-fun m!2979221 () Bool)

(assert (=> bm!169537 m!2979221))

(declare-fun m!2979223 () Bool)

(assert (=> bm!169535 m!2979223))

(assert (=> b!2635047 m!2978857))

(declare-fun m!2979225 () Bool)

(assert (=> bm!169538 m!2979225))

(assert (=> b!2635042 m!2979201))

(assert (=> bm!169534 m!2979201))

(assert (=> b!2634851 d!747628))

(declare-fun b!2635063 () Bool)

(declare-fun res!1109518 () Bool)

(declare-fun e!1662714 () Bool)

(assert (=> b!2635063 (=> (not res!1109518) (not e!1662714))))

(declare-fun height!1380 (Conc!9528) Int)

(declare-fun ++!7443 (Conc!9528 Conc!9528) Conc!9528)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2635063 (= res!1109518 (>= (height!1380 (++!7443 (c!423640 lt!927573) (c!423640 lt!927565))) (max!0 (height!1380 (c!423640 lt!927573)) (height!1380 (c!423640 lt!927565)))))))

(declare-fun b!2635064 () Bool)

(declare-fun lt!927720 () BalanceConc!18670)

(assert (=> b!2635064 (= e!1662714 (= (list!11490 lt!927720) (++!7441 (list!11490 lt!927573) (list!11490 lt!927565))))))

(declare-fun b!2635062 () Bool)

(declare-fun res!1109519 () Bool)

(assert (=> b!2635062 (=> (not res!1109519) (not e!1662714))))

(assert (=> b!2635062 (= res!1109519 (<= (height!1380 (++!7443 (c!423640 lt!927573) (c!423640 lt!927565))) (+ (max!0 (height!1380 (c!423640 lt!927573)) (height!1380 (c!423640 lt!927565))) 1)))))

(declare-fun d!747688 () Bool)

(assert (=> d!747688 e!1662714))

(declare-fun res!1109517 () Bool)

(assert (=> d!747688 (=> (not res!1109517) (not e!1662714))))

(declare-fun appendAssocInst!636 (Conc!9528 Conc!9528) Bool)

(assert (=> d!747688 (= res!1109517 (appendAssocInst!636 (c!423640 lt!927573) (c!423640 lt!927565)))))

(assert (=> d!747688 (= lt!927720 (BalanceConc!18671 (++!7443 (c!423640 lt!927573) (c!423640 lt!927565))))))

(assert (=> d!747688 (= (++!7439 lt!927573 lt!927565) lt!927720)))

(declare-fun b!2635061 () Bool)

(declare-fun res!1109520 () Bool)

(assert (=> b!2635061 (=> (not res!1109520) (not e!1662714))))

(declare-fun isBalanced!2887 (Conc!9528) Bool)

(assert (=> b!2635061 (= res!1109520 (isBalanced!2887 (++!7443 (c!423640 lt!927573) (c!423640 lt!927565))))))

(assert (= (and d!747688 res!1109517) b!2635061))

(assert (= (and b!2635061 res!1109520) b!2635062))

(assert (= (and b!2635062 res!1109519) b!2635063))

(assert (= (and b!2635063 res!1109518) b!2635064))

(declare-fun m!2979227 () Bool)

(assert (=> b!2635063 m!2979227))

(declare-fun m!2979229 () Bool)

(assert (=> b!2635063 m!2979229))

(declare-fun m!2979231 () Bool)

(assert (=> b!2635063 m!2979231))

(assert (=> b!2635063 m!2979227))

(assert (=> b!2635063 m!2979229))

(declare-fun m!2979233 () Bool)

(assert (=> b!2635063 m!2979233))

(assert (=> b!2635063 m!2979231))

(declare-fun m!2979235 () Bool)

(assert (=> b!2635063 m!2979235))

(declare-fun m!2979237 () Bool)

(assert (=> b!2635064 m!2979237))

(assert (=> b!2635064 m!2978919))

(declare-fun m!2979239 () Bool)

(assert (=> b!2635064 m!2979239))

(assert (=> b!2635064 m!2978919))

(assert (=> b!2635064 m!2979239))

(declare-fun m!2979241 () Bool)

(assert (=> b!2635064 m!2979241))

(assert (=> b!2635061 m!2979231))

(assert (=> b!2635061 m!2979231))

(declare-fun m!2979243 () Bool)

(assert (=> b!2635061 m!2979243))

(declare-fun m!2979245 () Bool)

(assert (=> d!747688 m!2979245))

(assert (=> d!747688 m!2979231))

(assert (=> b!2635062 m!2979227))

(assert (=> b!2635062 m!2979229))

(assert (=> b!2635062 m!2979231))

(assert (=> b!2635062 m!2979227))

(assert (=> b!2635062 m!2979229))

(assert (=> b!2635062 m!2979233))

(assert (=> b!2635062 m!2979231))

(assert (=> b!2635062 m!2979235))

(assert (=> b!2634851 d!747688))

(declare-fun d!747690 () Bool)

(declare-fun lt!927723 () BalanceConc!18670)

(assert (=> d!747690 (= (list!11490 lt!927723) (originalCharacters!5409 lt!927569))))

(declare-fun dynLambda!13094 (Int TokenValue!4865) BalanceConc!18670)

(assert (=> d!747690 (= lt!927723 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 lt!927569))) (value!149930 lt!927569)))))

(assert (=> d!747690 (= (charsOf!2930 lt!927569) lt!927723)))

(declare-fun b_lambda!79367 () Bool)

(assert (=> (not b_lambda!79367) (not d!747690)))

(declare-fun tb!143775 () Bool)

(declare-fun t!216760 () Bool)

(assert (=> (and b!2634850 (= (toChars!6420 (transformation!4643 (h!35941 rules!1726))) (toChars!6420 (transformation!4643 (rule!7027 lt!927569)))) t!216760) tb!143775))

(declare-fun b!2635069 () Bool)

(declare-fun e!1662717 () Bool)

(declare-fun tp!834952 () Bool)

(declare-fun inv!41409 (Conc!9528) Bool)

(assert (=> b!2635069 (= e!1662717 (and (inv!41409 (c!423640 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 lt!927569))) (value!149930 lt!927569)))) tp!834952))))

(declare-fun result!178700 () Bool)

(declare-fun inv!41410 (BalanceConc!18670) Bool)

(assert (=> tb!143775 (= result!178700 (and (inv!41410 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 lt!927569))) (value!149930 lt!927569))) e!1662717))))

(assert (= tb!143775 b!2635069))

(declare-fun m!2979247 () Bool)

(assert (=> b!2635069 m!2979247))

(declare-fun m!2979249 () Bool)

(assert (=> tb!143775 m!2979249))

(assert (=> d!747690 t!216760))

(declare-fun b_and!192987 () Bool)

(assert (= b_and!192977 (and (=> t!216760 result!178700) b_and!192987)))

(declare-fun tb!143777 () Bool)

(declare-fun t!216762 () Bool)

(assert (=> (and b!2634862 (= (toChars!6420 (transformation!4643 (rule!7027 separatorToken!156))) (toChars!6420 (transformation!4643 (rule!7027 lt!927569)))) t!216762) tb!143777))

(declare-fun result!178704 () Bool)

(assert (= result!178704 result!178700))

(assert (=> d!747690 t!216762))

(declare-fun b_and!192989 () Bool)

(assert (= b_and!192981 (and (=> t!216762 result!178704) b_and!192989)))

(declare-fun m!2979251 () Bool)

(assert (=> d!747690 m!2979251))

(declare-fun m!2979253 () Bool)

(assert (=> d!747690 m!2979253))

(assert (=> b!2634851 d!747690))

(declare-fun b!2635102 () Bool)

(declare-fun e!1662744 () Option!6038)

(declare-fun call!169546 () Option!6038)

(assert (=> b!2635102 (= e!1662744 call!169546)))

(declare-fun bm!169541 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!449 (LexerInterface!4240 Rule!9086 BalanceConc!18670) Option!6038)

(assert (=> bm!169541 (= call!169546 (maxPrefixOneRuleZipperSequence!449 thiss!14197 (h!35941 rules!1726) (++!7439 lt!927573 lt!927565)))))

(declare-fun b!2635103 () Bool)

(declare-fun lt!927744 () Option!6038)

(declare-fun lt!927750 () Option!6038)

(assert (=> b!2635103 (= e!1662744 (ite (and ((_ is None!6037) lt!927744) ((_ is None!6037) lt!927750)) None!6037 (ite ((_ is None!6037) lt!927750) lt!927744 (ite ((_ is None!6037) lt!927744) lt!927750 (ite (>= (size!23600 (_1!17557 (v!32462 lt!927744))) (size!23600 (_1!17557 (v!32462 lt!927750)))) lt!927744 lt!927750)))))))

(assert (=> b!2635103 (= lt!927744 call!169546)))

(assert (=> b!2635103 (= lt!927750 (maxPrefixZipperSequence!966 thiss!14197 (t!216742 rules!1726) (++!7439 lt!927573 lt!927565)))))

(declare-fun d!747692 () Bool)

(declare-fun e!1662741 () Bool)

(assert (=> d!747692 e!1662741))

(declare-fun res!1109547 () Bool)

(assert (=> d!747692 (=> (not res!1109547) (not e!1662741))))

(declare-fun lt!927745 () Option!6038)

(declare-fun isDefined!4803 (Option!6038) Bool)

(declare-datatypes ((tuple2!30036 0))(
  ( (tuple2!30037 (_1!17560 Token!8756) (_2!17560 List!30620)) )
))
(declare-datatypes ((Option!6040 0))(
  ( (None!6039) (Some!6039 (v!32474 tuple2!30036)) )
))
(declare-fun isDefined!4804 (Option!6040) Bool)

(declare-fun maxPrefixZipper!440 (LexerInterface!4240 List!30621 List!30620) Option!6040)

(assert (=> d!747692 (= res!1109547 (= (isDefined!4803 lt!927745) (isDefined!4804 (maxPrefixZipper!440 thiss!14197 rules!1726 (list!11490 (++!7439 lt!927573 lt!927565))))))))

(assert (=> d!747692 (= lt!927745 e!1662744)))

(declare-fun c!423696 () Bool)

(assert (=> d!747692 (= c!423696 (and ((_ is Cons!30521) rules!1726) ((_ is Nil!30521) (t!216742 rules!1726))))))

(declare-fun lt!927749 () Unit!44539)

(declare-fun lt!927746 () Unit!44539)

(assert (=> d!747692 (= lt!927749 lt!927746)))

(declare-fun lt!927747 () List!30620)

(declare-fun lt!927748 () List!30620)

(declare-fun isPrefix!2441 (List!30620 List!30620) Bool)

(assert (=> d!747692 (isPrefix!2441 lt!927747 lt!927748)))

(declare-fun lemmaIsPrefixRefl!1567 (List!30620 List!30620) Unit!44539)

(assert (=> d!747692 (= lt!927746 (lemmaIsPrefixRefl!1567 lt!927747 lt!927748))))

(assert (=> d!747692 (= lt!927748 (list!11490 (++!7439 lt!927573 lt!927565)))))

(assert (=> d!747692 (= lt!927747 (list!11490 (++!7439 lt!927573 lt!927565)))))

(declare-fun rulesValidInductive!1619 (LexerInterface!4240 List!30621) Bool)

(assert (=> d!747692 (rulesValidInductive!1619 thiss!14197 rules!1726)))

(assert (=> d!747692 (= (maxPrefixZipperSequence!966 thiss!14197 rules!1726 (++!7439 lt!927573 lt!927565)) lt!927745)))

(declare-fun b!2635104 () Bool)

(declare-fun res!1109545 () Bool)

(assert (=> b!2635104 (=> (not res!1109545) (not e!1662741))))

(declare-fun e!1662740 () Bool)

(assert (=> b!2635104 (= res!1109545 e!1662740)))

(declare-fun res!1109546 () Bool)

(assert (=> b!2635104 (=> res!1109546 e!1662740)))

(assert (=> b!2635104 (= res!1109546 (not (isDefined!4803 lt!927745)))))

(declare-fun b!2635105 () Bool)

(declare-fun e!1662742 () Bool)

(assert (=> b!2635105 (= e!1662740 e!1662742)))

(declare-fun res!1109543 () Bool)

(assert (=> b!2635105 (=> (not res!1109543) (not e!1662742))))

(declare-fun get!9608 (Option!6038) tuple2!30030)

(declare-fun get!9609 (Option!6040) tuple2!30036)

(assert (=> b!2635105 (= res!1109543 (= (_1!17557 (get!9608 lt!927745)) (_1!17560 (get!9609 (maxPrefixZipper!440 thiss!14197 rules!1726 (list!11490 (++!7439 lt!927573 lt!927565)))))))))

(declare-fun b!2635106 () Bool)

(declare-fun e!1662743 () Bool)

(declare-fun maxPrefix!2312 (LexerInterface!4240 List!30621 List!30620) Option!6040)

(assert (=> b!2635106 (= e!1662743 (= (list!11490 (_2!17557 (get!9608 lt!927745))) (_2!17560 (get!9609 (maxPrefix!2312 thiss!14197 rules!1726 (list!11490 (++!7439 lt!927573 lt!927565)))))))))

(declare-fun b!2635107 () Bool)

(assert (=> b!2635107 (= e!1662742 (= (list!11490 (_2!17557 (get!9608 lt!927745))) (_2!17560 (get!9609 (maxPrefixZipper!440 thiss!14197 rules!1726 (list!11490 (++!7439 lt!927573 lt!927565)))))))))

(declare-fun b!2635108 () Bool)

(declare-fun e!1662745 () Bool)

(assert (=> b!2635108 (= e!1662745 e!1662743)))

(declare-fun res!1109544 () Bool)

(assert (=> b!2635108 (=> (not res!1109544) (not e!1662743))))

(assert (=> b!2635108 (= res!1109544 (= (_1!17557 (get!9608 lt!927745)) (_1!17560 (get!9609 (maxPrefix!2312 thiss!14197 rules!1726 (list!11490 (++!7439 lt!927573 lt!927565)))))))))

(declare-fun b!2635109 () Bool)

(assert (=> b!2635109 (= e!1662741 e!1662745)))

(declare-fun res!1109542 () Bool)

(assert (=> b!2635109 (=> res!1109542 e!1662745)))

(assert (=> b!2635109 (= res!1109542 (not (isDefined!4803 lt!927745)))))

(assert (= (and d!747692 c!423696) b!2635102))

(assert (= (and d!747692 (not c!423696)) b!2635103))

(assert (= (or b!2635102 b!2635103) bm!169541))

(assert (= (and d!747692 res!1109547) b!2635104))

(assert (= (and b!2635104 (not res!1109546)) b!2635105))

(assert (= (and b!2635105 res!1109543) b!2635107))

(assert (= (and b!2635104 res!1109545) b!2635109))

(assert (= (and b!2635109 (not res!1109542)) b!2635108))

(assert (= (and b!2635108 res!1109544) b!2635106))

(assert (=> b!2635103 m!2978921))

(declare-fun m!2979283 () Bool)

(assert (=> b!2635103 m!2979283))

(declare-fun m!2979285 () Bool)

(assert (=> b!2635109 m!2979285))

(assert (=> bm!169541 m!2978921))

(declare-fun m!2979287 () Bool)

(assert (=> bm!169541 m!2979287))

(declare-fun m!2979289 () Bool)

(assert (=> d!747692 m!2979289))

(declare-fun m!2979291 () Bool)

(assert (=> d!747692 m!2979291))

(declare-fun m!2979293 () Bool)

(assert (=> d!747692 m!2979293))

(assert (=> d!747692 m!2978921))

(declare-fun m!2979295 () Bool)

(assert (=> d!747692 m!2979295))

(assert (=> d!747692 m!2979285))

(declare-fun m!2979297 () Bool)

(assert (=> d!747692 m!2979297))

(assert (=> d!747692 m!2979295))

(assert (=> d!747692 m!2979289))

(declare-fun m!2979299 () Bool)

(assert (=> d!747692 m!2979299))

(assert (=> b!2635106 m!2979295))

(declare-fun m!2979301 () Bool)

(assert (=> b!2635106 m!2979301))

(assert (=> b!2635106 m!2979301))

(declare-fun m!2979303 () Bool)

(assert (=> b!2635106 m!2979303))

(assert (=> b!2635106 m!2978921))

(assert (=> b!2635106 m!2979295))

(declare-fun m!2979305 () Bool)

(assert (=> b!2635106 m!2979305))

(declare-fun m!2979307 () Bool)

(assert (=> b!2635106 m!2979307))

(assert (=> b!2635108 m!2979307))

(assert (=> b!2635108 m!2978921))

(assert (=> b!2635108 m!2979295))

(assert (=> b!2635108 m!2979295))

(assert (=> b!2635108 m!2979301))

(assert (=> b!2635108 m!2979301))

(assert (=> b!2635108 m!2979303))

(assert (=> b!2635107 m!2979289))

(declare-fun m!2979309 () Bool)

(assert (=> b!2635107 m!2979309))

(assert (=> b!2635107 m!2978921))

(assert (=> b!2635107 m!2979295))

(assert (=> b!2635107 m!2979305))

(assert (=> b!2635107 m!2979307))

(assert (=> b!2635107 m!2979295))

(assert (=> b!2635107 m!2979289))

(assert (=> b!2635104 m!2979285))

(assert (=> b!2635105 m!2979307))

(assert (=> b!2635105 m!2978921))

(assert (=> b!2635105 m!2979295))

(assert (=> b!2635105 m!2979295))

(assert (=> b!2635105 m!2979289))

(assert (=> b!2635105 m!2979289))

(assert (=> b!2635105 m!2979309))

(assert (=> b!2634851 d!747692))

(declare-fun d!747700 () Bool)

(declare-fun lt!927753 () Bool)

(declare-fun isEmpty!17418 (List!30622) Bool)

(assert (=> d!747700 (= lt!927753 (isEmpty!17418 (list!11491 (_1!17556 (lex!1903 thiss!14197 rules!1726 (seqFromList!3183 lt!927575))))))))

(declare-fun isEmpty!17419 (Conc!9529) Bool)

(assert (=> d!747700 (= lt!927753 (isEmpty!17419 (c!423641 (_1!17556 (lex!1903 thiss!14197 rules!1726 (seqFromList!3183 lt!927575))))))))

(assert (=> d!747700 (= (isEmpty!17412 (_1!17556 (lex!1903 thiss!14197 rules!1726 (seqFromList!3183 lt!927575)))) lt!927753)))

(declare-fun bs!476062 () Bool)

(assert (= bs!476062 d!747700))

(declare-fun m!2979311 () Bool)

(assert (=> bs!476062 m!2979311))

(assert (=> bs!476062 m!2979311))

(declare-fun m!2979313 () Bool)

(assert (=> bs!476062 m!2979313))

(declare-fun m!2979315 () Bool)

(assert (=> bs!476062 m!2979315))

(assert (=> b!2634849 d!747700))

(declare-fun e!1662778 () Bool)

(declare-fun b!2635159 () Bool)

(declare-fun lt!927783 () tuple2!30028)

(declare-datatypes ((tuple2!30038 0))(
  ( (tuple2!30039 (_1!17561 List!30622) (_2!17561 List!30620)) )
))
(declare-fun lexList!1162 (LexerInterface!4240 List!30621 List!30620) tuple2!30038)

(assert (=> b!2635159 (= e!1662778 (= (list!11490 (_2!17556 lt!927783)) (_2!17561 (lexList!1162 thiss!14197 rules!1726 (list!11490 (seqFromList!3183 lt!927575))))))))

(declare-fun d!747702 () Bool)

(assert (=> d!747702 e!1662778))

(declare-fun res!1109587 () Bool)

(assert (=> d!747702 (=> (not res!1109587) (not e!1662778))))

(declare-fun e!1662777 () Bool)

(assert (=> d!747702 (= res!1109587 e!1662777)))

(declare-fun c!423705 () Bool)

(assert (=> d!747702 (= c!423705 (> (size!23601 (_1!17556 lt!927783)) 0))))

(declare-fun lexTailRecV2!837 (LexerInterface!4240 List!30621 BalanceConc!18670 BalanceConc!18670 BalanceConc!18670 BalanceConc!18672) tuple2!30028)

(assert (=> d!747702 (= lt!927783 (lexTailRecV2!837 thiss!14197 rules!1726 (seqFromList!3183 lt!927575) (BalanceConc!18671 Empty!9528) (seqFromList!3183 lt!927575) (BalanceConc!18673 Empty!9529)))))

(assert (=> d!747702 (= (lex!1903 thiss!14197 rules!1726 (seqFromList!3183 lt!927575)) lt!927783)))

(declare-fun b!2635160 () Bool)

(assert (=> b!2635160 (= e!1662777 (= (_2!17556 lt!927783) (seqFromList!3183 lt!927575)))))

(declare-fun b!2635161 () Bool)

(declare-fun e!1662776 () Bool)

(assert (=> b!2635161 (= e!1662776 (not (isEmpty!17412 (_1!17556 lt!927783))))))

(declare-fun b!2635162 () Bool)

(declare-fun res!1109589 () Bool)

(assert (=> b!2635162 (=> (not res!1109589) (not e!1662778))))

(assert (=> b!2635162 (= res!1109589 (= (list!11491 (_1!17556 lt!927783)) (_1!17561 (lexList!1162 thiss!14197 rules!1726 (list!11490 (seqFromList!3183 lt!927575))))))))

(declare-fun b!2635163 () Bool)

(assert (=> b!2635163 (= e!1662777 e!1662776)))

(declare-fun res!1109588 () Bool)

(declare-fun size!23606 (BalanceConc!18670) Int)

(assert (=> b!2635163 (= res!1109588 (< (size!23606 (_2!17556 lt!927783)) (size!23606 (seqFromList!3183 lt!927575))))))

(assert (=> b!2635163 (=> (not res!1109588) (not e!1662776))))

(assert (= (and d!747702 c!423705) b!2635163))

(assert (= (and d!747702 (not c!423705)) b!2635160))

(assert (= (and b!2635163 res!1109588) b!2635161))

(assert (= (and d!747702 res!1109587) b!2635162))

(assert (= (and b!2635162 res!1109589) b!2635159))

(declare-fun m!2979371 () Bool)

(assert (=> b!2635162 m!2979371))

(assert (=> b!2635162 m!2978847))

(declare-fun m!2979373 () Bool)

(assert (=> b!2635162 m!2979373))

(assert (=> b!2635162 m!2979373))

(declare-fun m!2979375 () Bool)

(assert (=> b!2635162 m!2979375))

(declare-fun m!2979377 () Bool)

(assert (=> d!747702 m!2979377))

(assert (=> d!747702 m!2978847))

(assert (=> d!747702 m!2978847))

(declare-fun m!2979379 () Bool)

(assert (=> d!747702 m!2979379))

(declare-fun m!2979381 () Bool)

(assert (=> b!2635161 m!2979381))

(declare-fun m!2979383 () Bool)

(assert (=> b!2635159 m!2979383))

(assert (=> b!2635159 m!2978847))

(assert (=> b!2635159 m!2979373))

(assert (=> b!2635159 m!2979373))

(assert (=> b!2635159 m!2979375))

(declare-fun m!2979385 () Bool)

(assert (=> b!2635163 m!2979385))

(assert (=> b!2635163 m!2978847))

(declare-fun m!2979387 () Bool)

(assert (=> b!2635163 m!2979387))

(assert (=> b!2634849 d!747702))

(declare-fun d!747710 () Bool)

(declare-fun fromListB!1437 (List!30620) BalanceConc!18670)

(assert (=> d!747710 (= (seqFromList!3183 lt!927575) (fromListB!1437 lt!927575))))

(declare-fun bs!476063 () Bool)

(assert (= bs!476063 d!747710))

(declare-fun m!2979389 () Bool)

(assert (=> bs!476063 m!2979389))

(assert (=> b!2634849 d!747710))

(declare-fun d!747712 () Bool)

(declare-fun res!1109594 () Bool)

(declare-fun e!1662783 () Bool)

(assert (=> d!747712 (=> res!1109594 e!1662783)))

(assert (=> d!747712 (= res!1109594 (not ((_ is Cons!30521) rules!1726)))))

(assert (=> d!747712 (= (sepAndNonSepRulesDisjointChars!1216 rules!1726 rules!1726) e!1662783)))

(declare-fun b!2635168 () Bool)

(declare-fun e!1662784 () Bool)

(assert (=> b!2635168 (= e!1662783 e!1662784)))

(declare-fun res!1109595 () Bool)

(assert (=> b!2635168 (=> (not res!1109595) (not e!1662784))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!527 (Rule!9086 List!30621) Bool)

(assert (=> b!2635168 (= res!1109595 (ruleDisjointCharsFromAllFromOtherType!527 (h!35941 rules!1726) rules!1726))))

(declare-fun b!2635169 () Bool)

(assert (=> b!2635169 (= e!1662784 (sepAndNonSepRulesDisjointChars!1216 rules!1726 (t!216742 rules!1726)))))

(assert (= (and d!747712 (not res!1109594)) b!2635168))

(assert (= (and b!2635168 res!1109595) b!2635169))

(declare-fun m!2979391 () Bool)

(assert (=> b!2635168 m!2979391))

(declare-fun m!2979393 () Bool)

(assert (=> b!2635169 m!2979393))

(assert (=> b!2634860 d!747712))

(declare-fun d!747714 () Bool)

(declare-fun lt!927807 () Bool)

(declare-fun e!1662793 () Bool)

(assert (=> d!747714 (= lt!927807 e!1662793)))

(declare-fun res!1109604 () Bool)

(assert (=> d!747714 (=> (not res!1109604) (not e!1662793))))

(assert (=> d!747714 (= res!1109604 (= (list!11491 (_1!17556 (lex!1903 thiss!14197 rules!1726 (print!1641 thiss!14197 (singletonSeq!2060 lt!927569))))) (list!11491 (singletonSeq!2060 lt!927569))))))

(declare-fun e!1662794 () Bool)

(assert (=> d!747714 (= lt!927807 e!1662794)))

(declare-fun res!1109605 () Bool)

(assert (=> d!747714 (=> (not res!1109605) (not e!1662794))))

(declare-fun lt!927806 () tuple2!30028)

(assert (=> d!747714 (= res!1109605 (= (size!23601 (_1!17556 lt!927806)) 1))))

(assert (=> d!747714 (= lt!927806 (lex!1903 thiss!14197 rules!1726 (print!1641 thiss!14197 (singletonSeq!2060 lt!927569))))))

(assert (=> d!747714 (not (isEmpty!17413 rules!1726))))

(assert (=> d!747714 (= (rulesProduceIndividualToken!1952 thiss!14197 rules!1726 lt!927569) lt!927807)))

(declare-fun b!2635182 () Bool)

(declare-fun res!1109606 () Bool)

(assert (=> b!2635182 (=> (not res!1109606) (not e!1662794))))

(assert (=> b!2635182 (= res!1109606 (= (apply!7281 (_1!17556 lt!927806) 0) lt!927569))))

(declare-fun b!2635183 () Bool)

(declare-fun isEmpty!17420 (BalanceConc!18670) Bool)

(assert (=> b!2635183 (= e!1662794 (isEmpty!17420 (_2!17556 lt!927806)))))

(declare-fun b!2635184 () Bool)

(assert (=> b!2635184 (= e!1662793 (isEmpty!17420 (_2!17556 (lex!1903 thiss!14197 rules!1726 (print!1641 thiss!14197 (singletonSeq!2060 lt!927569))))))))

(assert (= (and d!747714 res!1109605) b!2635182))

(assert (= (and b!2635182 res!1109606) b!2635183))

(assert (= (and d!747714 res!1109604) b!2635184))

(assert (=> d!747714 m!2978905))

(declare-fun m!2979395 () Bool)

(assert (=> d!747714 m!2979395))

(declare-fun m!2979397 () Bool)

(assert (=> d!747714 m!2979397))

(assert (=> d!747714 m!2978905))

(assert (=> d!747714 m!2979395))

(declare-fun m!2979399 () Bool)

(assert (=> d!747714 m!2979399))

(assert (=> d!747714 m!2978905))

(declare-fun m!2979401 () Bool)

(assert (=> d!747714 m!2979401))

(assert (=> d!747714 m!2978883))

(declare-fun m!2979403 () Bool)

(assert (=> d!747714 m!2979403))

(declare-fun m!2979405 () Bool)

(assert (=> b!2635182 m!2979405))

(declare-fun m!2979407 () Bool)

(assert (=> b!2635183 m!2979407))

(assert (=> b!2635184 m!2978905))

(assert (=> b!2635184 m!2978905))

(assert (=> b!2635184 m!2979395))

(assert (=> b!2635184 m!2979395))

(assert (=> b!2635184 m!2979397))

(declare-fun m!2979409 () Bool)

(assert (=> b!2635184 m!2979409))

(assert (=> b!2634842 d!747714))

(declare-fun d!747716 () Bool)

(assert (=> d!747716 (= (isEmpty!17413 rules!1726) ((_ is Nil!30521) rules!1726))))

(assert (=> b!2634853 d!747716))

(declare-fun d!747718 () Bool)

(declare-fun lt!927813 () Bool)

(declare-fun e!1662795 () Bool)

(assert (=> d!747718 (= lt!927813 e!1662795)))

(declare-fun res!1109607 () Bool)

(assert (=> d!747718 (=> (not res!1109607) (not e!1662795))))

(assert (=> d!747718 (= res!1109607 (= (list!11491 (_1!17556 (lex!1903 thiss!14197 rules!1726 (print!1641 thiss!14197 (singletonSeq!2060 separatorToken!156))))) (list!11491 (singletonSeq!2060 separatorToken!156))))))

(declare-fun e!1662796 () Bool)

(assert (=> d!747718 (= lt!927813 e!1662796)))

(declare-fun res!1109608 () Bool)

(assert (=> d!747718 (=> (not res!1109608) (not e!1662796))))

(declare-fun lt!927812 () tuple2!30028)

(assert (=> d!747718 (= res!1109608 (= (size!23601 (_1!17556 lt!927812)) 1))))

(assert (=> d!747718 (= lt!927812 (lex!1903 thiss!14197 rules!1726 (print!1641 thiss!14197 (singletonSeq!2060 separatorToken!156))))))

(assert (=> d!747718 (not (isEmpty!17413 rules!1726))))

(assert (=> d!747718 (= (rulesProduceIndividualToken!1952 thiss!14197 rules!1726 separatorToken!156) lt!927813)))

(declare-fun b!2635185 () Bool)

(declare-fun res!1109609 () Bool)

(assert (=> b!2635185 (=> (not res!1109609) (not e!1662796))))

(assert (=> b!2635185 (= res!1109609 (= (apply!7281 (_1!17556 lt!927812) 0) separatorToken!156))))

(declare-fun b!2635186 () Bool)

(assert (=> b!2635186 (= e!1662796 (isEmpty!17420 (_2!17556 lt!927812)))))

(declare-fun b!2635187 () Bool)

(assert (=> b!2635187 (= e!1662795 (isEmpty!17420 (_2!17556 (lex!1903 thiss!14197 rules!1726 (print!1641 thiss!14197 (singletonSeq!2060 separatorToken!156))))))))

(assert (= (and d!747718 res!1109608) b!2635185))

(assert (= (and b!2635185 res!1109609) b!2635186))

(assert (= (and d!747718 res!1109607) b!2635187))

(declare-fun m!2979411 () Bool)

(assert (=> d!747718 m!2979411))

(declare-fun m!2979413 () Bool)

(assert (=> d!747718 m!2979413))

(declare-fun m!2979415 () Bool)

(assert (=> d!747718 m!2979415))

(assert (=> d!747718 m!2979411))

(assert (=> d!747718 m!2979413))

(declare-fun m!2979417 () Bool)

(assert (=> d!747718 m!2979417))

(assert (=> d!747718 m!2979411))

(declare-fun m!2979419 () Bool)

(assert (=> d!747718 m!2979419))

(assert (=> d!747718 m!2978883))

(declare-fun m!2979421 () Bool)

(assert (=> d!747718 m!2979421))

(declare-fun m!2979423 () Bool)

(assert (=> b!2635185 m!2979423))

(declare-fun m!2979425 () Bool)

(assert (=> b!2635186 m!2979425))

(assert (=> b!2635187 m!2979411))

(assert (=> b!2635187 m!2979411))

(assert (=> b!2635187 m!2979413))

(assert (=> b!2635187 m!2979413))

(assert (=> b!2635187 m!2979415))

(declare-fun m!2979427 () Bool)

(assert (=> b!2635187 m!2979427))

(assert (=> b!2634843 d!747718))

(declare-fun b!2635214 () Bool)

(declare-fun e!1662815 () Bool)

(declare-fun e!1662814 () Bool)

(assert (=> b!2635214 (= e!1662815 e!1662814)))

(declare-fun c!423718 () Bool)

(assert (=> b!2635214 (= c!423718 ((_ is IntegerValue!14596) (value!149930 separatorToken!156)))))

(declare-fun b!2635215 () Bool)

(declare-fun res!1109616 () Bool)

(declare-fun e!1662813 () Bool)

(assert (=> b!2635215 (=> res!1109616 e!1662813)))

(assert (=> b!2635215 (= res!1109616 (not ((_ is IntegerValue!14597) (value!149930 separatorToken!156))))))

(assert (=> b!2635215 (= e!1662814 e!1662813)))

(declare-fun b!2635216 () Bool)

(declare-fun inv!16 (TokenValue!4865) Bool)

(assert (=> b!2635216 (= e!1662815 (inv!16 (value!149930 separatorToken!156)))))

(declare-fun b!2635217 () Bool)

(declare-fun inv!17 (TokenValue!4865) Bool)

(assert (=> b!2635217 (= e!1662814 (inv!17 (value!149930 separatorToken!156)))))

(declare-fun d!747720 () Bool)

(declare-fun c!423719 () Bool)

(assert (=> d!747720 (= c!423719 ((_ is IntegerValue!14595) (value!149930 separatorToken!156)))))

(assert (=> d!747720 (= (inv!21 (value!149930 separatorToken!156)) e!1662815)))

(declare-fun b!2635218 () Bool)

(declare-fun inv!15 (TokenValue!4865) Bool)

(assert (=> b!2635218 (= e!1662813 (inv!15 (value!149930 separatorToken!156)))))

(assert (= (and d!747720 c!423719) b!2635216))

(assert (= (and d!747720 (not c!423719)) b!2635214))

(assert (= (and b!2635214 c!423718) b!2635217))

(assert (= (and b!2635214 (not c!423718)) b!2635215))

(assert (= (and b!2635215 (not res!1109616)) b!2635218))

(declare-fun m!2979429 () Bool)

(assert (=> b!2635216 m!2979429))

(declare-fun m!2979431 () Bool)

(assert (=> b!2635217 m!2979431))

(declare-fun m!2979433 () Bool)

(assert (=> b!2635218 m!2979433))

(assert (=> b!2634841 d!747720))

(declare-fun d!747722 () Bool)

(declare-fun res!1109621 () Bool)

(declare-fun e!1662818 () Bool)

(assert (=> d!747722 (=> (not res!1109621) (not e!1662818))))

(declare-fun isEmpty!17421 (List!30620) Bool)

(assert (=> d!747722 (= res!1109621 (not (isEmpty!17421 (originalCharacters!5409 separatorToken!156))))))

(assert (=> d!747722 (= (inv!41405 separatorToken!156) e!1662818)))

(declare-fun b!2635223 () Bool)

(declare-fun res!1109622 () Bool)

(assert (=> b!2635223 (=> (not res!1109622) (not e!1662818))))

(assert (=> b!2635223 (= res!1109622 (= (originalCharacters!5409 separatorToken!156) (list!11490 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 separatorToken!156))) (value!149930 separatorToken!156)))))))

(declare-fun b!2635224 () Bool)

(declare-fun size!23607 (List!30620) Int)

(assert (=> b!2635224 (= e!1662818 (= (size!23600 separatorToken!156) (size!23607 (originalCharacters!5409 separatorToken!156))))))

(assert (= (and d!747722 res!1109621) b!2635223))

(assert (= (and b!2635223 res!1109622) b!2635224))

(declare-fun b_lambda!79373 () Bool)

(assert (=> (not b_lambda!79373) (not b!2635223)))

(declare-fun t!216773 () Bool)

(declare-fun tb!143783 () Bool)

(assert (=> (and b!2634850 (= (toChars!6420 (transformation!4643 (h!35941 rules!1726))) (toChars!6420 (transformation!4643 (rule!7027 separatorToken!156)))) t!216773) tb!143783))

(declare-fun b!2635225 () Bool)

(declare-fun e!1662819 () Bool)

(declare-fun tp!834954 () Bool)

(assert (=> b!2635225 (= e!1662819 (and (inv!41409 (c!423640 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 separatorToken!156))) (value!149930 separatorToken!156)))) tp!834954))))

(declare-fun result!178710 () Bool)

(assert (=> tb!143783 (= result!178710 (and (inv!41410 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 separatorToken!156))) (value!149930 separatorToken!156))) e!1662819))))

(assert (= tb!143783 b!2635225))

(declare-fun m!2979435 () Bool)

(assert (=> b!2635225 m!2979435))

(declare-fun m!2979437 () Bool)

(assert (=> tb!143783 m!2979437))

(assert (=> b!2635223 t!216773))

(declare-fun b_and!192995 () Bool)

(assert (= b_and!192987 (and (=> t!216773 result!178710) b_and!192995)))

(declare-fun t!216775 () Bool)

(declare-fun tb!143785 () Bool)

(assert (=> (and b!2634862 (= (toChars!6420 (transformation!4643 (rule!7027 separatorToken!156))) (toChars!6420 (transformation!4643 (rule!7027 separatorToken!156)))) t!216775) tb!143785))

(declare-fun result!178712 () Bool)

(assert (= result!178712 result!178710))

(assert (=> b!2635223 t!216775))

(declare-fun b_and!192997 () Bool)

(assert (= b_and!192989 (and (=> t!216775 result!178712) b_and!192997)))

(declare-fun m!2979439 () Bool)

(assert (=> d!747722 m!2979439))

(declare-fun m!2979441 () Bool)

(assert (=> b!2635223 m!2979441))

(assert (=> b!2635223 m!2979441))

(declare-fun m!2979443 () Bool)

(assert (=> b!2635223 m!2979443))

(declare-fun m!2979445 () Bool)

(assert (=> b!2635224 m!2979445))

(assert (=> start!256506 d!747722))

(declare-fun d!747724 () Bool)

(assert (=> d!747724 (= (inv!41406 v!6381) (isBalanced!2885 (c!423641 v!6381)))))

(declare-fun bs!476064 () Bool)

(assert (= bs!476064 d!747724))

(declare-fun m!2979447 () Bool)

(assert (=> bs!476064 m!2979447))

(assert (=> start!256506 d!747724))

(declare-fun d!747726 () Bool)

(assert (=> d!747726 (= (inv!41398 (tag!5137 (h!35941 rules!1726))) (= (mod (str.len (value!149904 (tag!5137 (h!35941 rules!1726)))) 2) 0))))

(assert (=> b!2634852 d!747726))

(declare-fun d!747728 () Bool)

(declare-fun res!1109628 () Bool)

(declare-fun e!1662832 () Bool)

(assert (=> d!747728 (=> (not res!1109628) (not e!1662832))))

(declare-fun semiInverseModEq!1920 (Int Int) Bool)

(assert (=> d!747728 (= res!1109628 (semiInverseModEq!1920 (toChars!6420 (transformation!4643 (h!35941 rules!1726))) (toValue!6561 (transformation!4643 (h!35941 rules!1726)))))))

(assert (=> d!747728 (= (inv!41404 (transformation!4643 (h!35941 rules!1726))) e!1662832)))

(declare-fun b!2635242 () Bool)

(declare-fun equivClasses!1821 (Int Int) Bool)

(assert (=> b!2635242 (= e!1662832 (equivClasses!1821 (toChars!6420 (transformation!4643 (h!35941 rules!1726))) (toValue!6561 (transformation!4643 (h!35941 rules!1726)))))))

(assert (= (and d!747728 res!1109628) b!2635242))

(declare-fun m!2979449 () Bool)

(assert (=> d!747728 m!2979449))

(declare-fun m!2979451 () Bool)

(assert (=> b!2635242 m!2979451))

(assert (=> b!2634852 d!747728))

(declare-fun d!747730 () Bool)

(declare-fun lt!927836 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4313 (List!30622) (InoxSet Token!8756))

(assert (=> d!747730 (= lt!927836 (select (content!4313 lt!927559) lt!927569))))

(declare-fun e!1662837 () Bool)

(assert (=> d!747730 (= lt!927836 e!1662837)))

(declare-fun res!1109633 () Bool)

(assert (=> d!747730 (=> (not res!1109633) (not e!1662837))))

(assert (=> d!747730 (= res!1109633 ((_ is Cons!30522) lt!927559))))

(assert (=> d!747730 (= (contains!5804 lt!927559 lt!927569) lt!927836)))

(declare-fun b!2635247 () Bool)

(declare-fun e!1662838 () Bool)

(assert (=> b!2635247 (= e!1662837 e!1662838)))

(declare-fun res!1109634 () Bool)

(assert (=> b!2635247 (=> res!1109634 e!1662838)))

(assert (=> b!2635247 (= res!1109634 (= (h!35942 lt!927559) lt!927569))))

(declare-fun b!2635248 () Bool)

(assert (=> b!2635248 (= e!1662838 (contains!5804 (t!216743 lt!927559) lt!927569))))

(assert (= (and d!747730 res!1109633) b!2635247))

(assert (= (and b!2635247 (not res!1109634)) b!2635248))

(declare-fun m!2979509 () Bool)

(assert (=> d!747730 m!2979509))

(declare-fun m!2979511 () Bool)

(assert (=> d!747730 m!2979511))

(declare-fun m!2979513 () Bool)

(assert (=> b!2635248 m!2979513))

(assert (=> b!2634863 d!747730))

(declare-fun d!747734 () Bool)

(assert (=> d!747734 (= (inv!41398 (tag!5137 (rule!7027 separatorToken!156))) (= (mod (str.len (value!149904 (tag!5137 (rule!7027 separatorToken!156)))) 2) 0))))

(assert (=> b!2634845 d!747734))

(declare-fun d!747736 () Bool)

(declare-fun res!1109635 () Bool)

(declare-fun e!1662839 () Bool)

(assert (=> d!747736 (=> (not res!1109635) (not e!1662839))))

(assert (=> d!747736 (= res!1109635 (semiInverseModEq!1920 (toChars!6420 (transformation!4643 (rule!7027 separatorToken!156))) (toValue!6561 (transformation!4643 (rule!7027 separatorToken!156)))))))

(assert (=> d!747736 (= (inv!41404 (transformation!4643 (rule!7027 separatorToken!156))) e!1662839)))

(declare-fun b!2635249 () Bool)

(assert (=> b!2635249 (= e!1662839 (equivClasses!1821 (toChars!6420 (transformation!4643 (rule!7027 separatorToken!156))) (toValue!6561 (transformation!4643 (rule!7027 separatorToken!156)))))))

(assert (= (and d!747736 res!1109635) b!2635249))

(declare-fun m!2979515 () Bool)

(assert (=> d!747736 m!2979515))

(declare-fun m!2979517 () Bool)

(assert (=> b!2635249 m!2979517))

(assert (=> b!2634845 d!747736))

(declare-fun d!747738 () Bool)

(assert (=> d!747738 (forall!6403 (dropList!946 v!6381 from!862) lambda!98881)))

(declare-fun lt!927839 () Unit!44539)

(declare-fun choose!15643 (List!30622 List!30622 Int) Unit!44539)

(assert (=> d!747738 (= lt!927839 (choose!15643 lt!927559 (dropList!946 v!6381 from!862) lambda!98881))))

(assert (=> d!747738 (forall!6403 lt!927559 lambda!98881)))

(assert (=> d!747738 (= (lemmaContentSubsetPreservesForall!312 lt!927559 (dropList!946 v!6381 from!862) lambda!98881) lt!927839)))

(declare-fun bs!476072 () Bool)

(assert (= bs!476072 d!747738))

(assert (=> bs!476072 m!2978909))

(declare-fun m!2979523 () Bool)

(assert (=> bs!476072 m!2979523))

(assert (=> bs!476072 m!2978909))

(declare-fun m!2979525 () Bool)

(assert (=> bs!476072 m!2979525))

(declare-fun m!2979527 () Bool)

(assert (=> bs!476072 m!2979527))

(assert (=> b!2634856 d!747738))

(declare-fun d!747744 () Bool)

(declare-fun list!11495 (Conc!9529) List!30622)

(assert (=> d!747744 (= (dropList!946 v!6381 from!862) (drop!1639 (list!11495 (c!423641 v!6381)) from!862))))

(declare-fun bs!476073 () Bool)

(assert (= bs!476073 d!747744))

(declare-fun m!2979549 () Bool)

(assert (=> bs!476073 m!2979549))

(assert (=> bs!476073 m!2979549))

(declare-fun m!2979551 () Bool)

(assert (=> bs!476073 m!2979551))

(assert (=> b!2634856 d!747744))

(declare-fun d!747748 () Bool)

(assert (=> d!747748 (= (list!11491 v!6381) (list!11495 (c!423641 v!6381)))))

(declare-fun bs!476075 () Bool)

(assert (= bs!476075 d!747748))

(assert (=> bs!476075 m!2979549))

(assert (=> b!2634856 d!747748))

(declare-fun d!747754 () Bool)

(assert (=> d!747754 (= (tail!4282 (drop!1639 lt!927559 from!862)) (drop!1639 lt!927559 (+ from!862 1)))))

(declare-fun lt!927844 () Unit!44539)

(declare-fun choose!15644 (List!30622 Int) Unit!44539)

(assert (=> d!747754 (= lt!927844 (choose!15644 lt!927559 from!862))))

(declare-fun e!1662857 () Bool)

(assert (=> d!747754 e!1662857))

(declare-fun res!1109651 () Bool)

(assert (=> d!747754 (=> (not res!1109651) (not e!1662857))))

(assert (=> d!747754 (= res!1109651 (>= from!862 0))))

(assert (=> d!747754 (= (lemmaDropTail!828 lt!927559 from!862) lt!927844)))

(declare-fun b!2635273 () Bool)

(declare-fun size!23608 (List!30622) Int)

(assert (=> b!2635273 (= e!1662857 (< from!862 (size!23608 lt!927559)))))

(assert (= (and d!747754 res!1109651) b!2635273))

(assert (=> d!747754 m!2978871))

(assert (=> d!747754 m!2978871))

(declare-fun m!2979561 () Bool)

(assert (=> d!747754 m!2979561))

(declare-fun m!2979563 () Bool)

(assert (=> d!747754 m!2979563))

(declare-fun m!2979565 () Bool)

(assert (=> d!747754 m!2979565))

(declare-fun m!2979567 () Bool)

(assert (=> b!2635273 m!2979567))

(assert (=> b!2634854 d!747754))

(declare-fun b!2635338 () Bool)

(declare-fun e!1662900 () Int)

(assert (=> b!2635338 (= e!1662900 0)))

(declare-fun b!2635339 () Bool)

(declare-fun call!169567 () Int)

(assert (=> b!2635339 (= e!1662900 (- call!169567 from!862))))

(declare-fun b!2635340 () Bool)

(declare-fun e!1662899 () List!30622)

(assert (=> b!2635340 (= e!1662899 lt!927559)))

(declare-fun b!2635341 () Bool)

(declare-fun e!1662898 () Int)

(assert (=> b!2635341 (= e!1662898 call!169567)))

(declare-fun b!2635342 () Bool)

(declare-fun e!1662897 () List!30622)

(assert (=> b!2635342 (= e!1662897 Nil!30522)))

(declare-fun bm!169562 () Bool)

(assert (=> bm!169562 (= call!169567 (size!23608 lt!927559))))

(declare-fun b!2635343 () Bool)

(assert (=> b!2635343 (= e!1662899 (drop!1639 (t!216743 lt!927559) (- from!862 1)))))

(declare-fun b!2635344 () Bool)

(declare-fun e!1662896 () Bool)

(declare-fun lt!927847 () List!30622)

(assert (=> b!2635344 (= e!1662896 (= (size!23608 lt!927847) e!1662898))))

(declare-fun c!423736 () Bool)

(assert (=> b!2635344 (= c!423736 (<= from!862 0))))

(declare-fun b!2635345 () Bool)

(assert (=> b!2635345 (= e!1662897 e!1662899)))

(declare-fun c!423737 () Bool)

(assert (=> b!2635345 (= c!423737 (<= from!862 0))))

(declare-fun b!2635346 () Bool)

(assert (=> b!2635346 (= e!1662898 e!1662900)))

(declare-fun c!423735 () Bool)

(assert (=> b!2635346 (= c!423735 (>= from!862 call!169567))))

(declare-fun d!747756 () Bool)

(assert (=> d!747756 e!1662896))

(declare-fun res!1109654 () Bool)

(assert (=> d!747756 (=> (not res!1109654) (not e!1662896))))

(assert (=> d!747756 (= res!1109654 (= ((_ map implies) (content!4313 lt!927847) (content!4313 lt!927559)) ((as const (InoxSet Token!8756)) true)))))

(assert (=> d!747756 (= lt!927847 e!1662897)))

(declare-fun c!423738 () Bool)

(assert (=> d!747756 (= c!423738 ((_ is Nil!30522) lt!927559))))

(assert (=> d!747756 (= (drop!1639 lt!927559 from!862) lt!927847)))

(assert (= (and d!747756 c!423738) b!2635342))

(assert (= (and d!747756 (not c!423738)) b!2635345))

(assert (= (and b!2635345 c!423737) b!2635340))

(assert (= (and b!2635345 (not c!423737)) b!2635343))

(assert (= (and d!747756 res!1109654) b!2635344))

(assert (= (and b!2635344 c!423736) b!2635341))

(assert (= (and b!2635344 (not c!423736)) b!2635346))

(assert (= (and b!2635346 c!423735) b!2635338))

(assert (= (and b!2635346 (not c!423735)) b!2635339))

(assert (= (or b!2635341 b!2635346 b!2635339) bm!169562))

(assert (=> bm!169562 m!2979567))

(declare-fun m!2979579 () Bool)

(assert (=> b!2635343 m!2979579))

(declare-fun m!2979581 () Bool)

(assert (=> b!2635344 m!2979581))

(declare-fun m!2979583 () Bool)

(assert (=> d!747756 m!2979583))

(assert (=> d!747756 m!2979509))

(assert (=> b!2634854 d!747756))

(declare-fun d!747760 () Bool)

(assert (=> d!747760 (= (tail!4282 lt!927562) (t!216743 lt!927562))))

(assert (=> b!2634854 d!747760))

(declare-fun d!747762 () Bool)

(assert (=> d!747762 (= (head!6044 (drop!1639 lt!927559 from!862)) (apply!7282 lt!927559 from!862))))

(declare-fun lt!927850 () Unit!44539)

(declare-fun choose!15645 (List!30622 Int) Unit!44539)

(assert (=> d!747762 (= lt!927850 (choose!15645 lt!927559 from!862))))

(declare-fun e!1662903 () Bool)

(assert (=> d!747762 e!1662903))

(declare-fun res!1109657 () Bool)

(assert (=> d!747762 (=> (not res!1109657) (not e!1662903))))

(assert (=> d!747762 (= res!1109657 (>= from!862 0))))

(assert (=> d!747762 (= (lemmaDropApply!854 lt!927559 from!862) lt!927850)))

(declare-fun b!2635349 () Bool)

(assert (=> b!2635349 (= e!1662903 (< from!862 (size!23608 lt!927559)))))

(assert (= (and d!747762 res!1109657) b!2635349))

(assert (=> d!747762 m!2978871))

(assert (=> d!747762 m!2978871))

(declare-fun m!2979585 () Bool)

(assert (=> d!747762 m!2979585))

(assert (=> d!747762 m!2978877))

(declare-fun m!2979587 () Bool)

(assert (=> d!747762 m!2979587))

(assert (=> b!2635349 m!2979567))

(assert (=> b!2634854 d!747762))

(declare-fun d!747764 () Bool)

(declare-fun lt!927853 () Token!8756)

(assert (=> d!747764 (contains!5804 lt!927559 lt!927853)))

(declare-fun e!1662909 () Token!8756)

(assert (=> d!747764 (= lt!927853 e!1662909)))

(declare-fun c!423741 () Bool)

(assert (=> d!747764 (= c!423741 (= from!862 0))))

(declare-fun e!1662908 () Bool)

(assert (=> d!747764 e!1662908))

(declare-fun res!1109660 () Bool)

(assert (=> d!747764 (=> (not res!1109660) (not e!1662908))))

(assert (=> d!747764 (= res!1109660 (<= 0 from!862))))

(assert (=> d!747764 (= (apply!7282 lt!927559 from!862) lt!927853)))

(declare-fun b!2635356 () Bool)

(assert (=> b!2635356 (= e!1662908 (< from!862 (size!23608 lt!927559)))))

(declare-fun b!2635357 () Bool)

(assert (=> b!2635357 (= e!1662909 (head!6044 lt!927559))))

(declare-fun b!2635358 () Bool)

(assert (=> b!2635358 (= e!1662909 (apply!7282 (tail!4282 lt!927559) (- from!862 1)))))

(assert (= (and d!747764 res!1109660) b!2635356))

(assert (= (and d!747764 c!423741) b!2635357))

(assert (= (and d!747764 (not c!423741)) b!2635358))

(declare-fun m!2979589 () Bool)

(assert (=> d!747764 m!2979589))

(assert (=> b!2635356 m!2979567))

(declare-fun m!2979591 () Bool)

(assert (=> b!2635357 m!2979591))

(declare-fun m!2979593 () Bool)

(assert (=> b!2635358 m!2979593))

(assert (=> b!2635358 m!2979593))

(declare-fun m!2979595 () Bool)

(assert (=> b!2635358 m!2979595))

(assert (=> b!2634854 d!747764))

(declare-fun b!2635359 () Bool)

(declare-fun e!1662914 () Int)

(assert (=> b!2635359 (= e!1662914 0)))

(declare-fun b!2635360 () Bool)

(declare-fun call!169568 () Int)

(assert (=> b!2635360 (= e!1662914 (- call!169568 (+ 1 from!862)))))

(declare-fun b!2635361 () Bool)

(declare-fun e!1662913 () List!30622)

(assert (=> b!2635361 (= e!1662913 lt!927559)))

(declare-fun b!2635362 () Bool)

(declare-fun e!1662912 () Int)

(assert (=> b!2635362 (= e!1662912 call!169568)))

(declare-fun b!2635363 () Bool)

(declare-fun e!1662911 () List!30622)

(assert (=> b!2635363 (= e!1662911 Nil!30522)))

(declare-fun bm!169563 () Bool)

(assert (=> bm!169563 (= call!169568 (size!23608 lt!927559))))

(declare-fun b!2635364 () Bool)

(assert (=> b!2635364 (= e!1662913 (drop!1639 (t!216743 lt!927559) (- (+ 1 from!862) 1)))))

(declare-fun b!2635365 () Bool)

(declare-fun e!1662910 () Bool)

(declare-fun lt!927854 () List!30622)

(assert (=> b!2635365 (= e!1662910 (= (size!23608 lt!927854) e!1662912))))

(declare-fun c!423743 () Bool)

(assert (=> b!2635365 (= c!423743 (<= (+ 1 from!862) 0))))

(declare-fun b!2635366 () Bool)

(assert (=> b!2635366 (= e!1662911 e!1662913)))

(declare-fun c!423744 () Bool)

(assert (=> b!2635366 (= c!423744 (<= (+ 1 from!862) 0))))

(declare-fun b!2635367 () Bool)

(assert (=> b!2635367 (= e!1662912 e!1662914)))

(declare-fun c!423742 () Bool)

(assert (=> b!2635367 (= c!423742 (>= (+ 1 from!862) call!169568))))

(declare-fun d!747766 () Bool)

(assert (=> d!747766 e!1662910))

(declare-fun res!1109661 () Bool)

(assert (=> d!747766 (=> (not res!1109661) (not e!1662910))))

(assert (=> d!747766 (= res!1109661 (= ((_ map implies) (content!4313 lt!927854) (content!4313 lt!927559)) ((as const (InoxSet Token!8756)) true)))))

(assert (=> d!747766 (= lt!927854 e!1662911)))

(declare-fun c!423745 () Bool)

(assert (=> d!747766 (= c!423745 ((_ is Nil!30522) lt!927559))))

(assert (=> d!747766 (= (drop!1639 lt!927559 (+ 1 from!862)) lt!927854)))

(assert (= (and d!747766 c!423745) b!2635363))

(assert (= (and d!747766 (not c!423745)) b!2635366))

(assert (= (and b!2635366 c!423744) b!2635361))

(assert (= (and b!2635366 (not c!423744)) b!2635364))

(assert (= (and d!747766 res!1109661) b!2635365))

(assert (= (and b!2635365 c!423743) b!2635362))

(assert (= (and b!2635365 (not c!423743)) b!2635367))

(assert (= (and b!2635367 c!423742) b!2635359))

(assert (= (and b!2635367 (not c!423742)) b!2635360))

(assert (= (or b!2635362 b!2635367 b!2635360) bm!169563))

(assert (=> bm!169563 m!2979567))

(declare-fun m!2979597 () Bool)

(assert (=> b!2635364 m!2979597))

(declare-fun m!2979599 () Bool)

(assert (=> b!2635365 m!2979599))

(declare-fun m!2979601 () Bool)

(assert (=> d!747766 m!2979601))

(assert (=> d!747766 m!2979509))

(assert (=> b!2634854 d!747766))

(declare-fun d!747768 () Bool)

(assert (=> d!747768 (= (head!6044 lt!927562) (h!35942 lt!927562))))

(assert (=> b!2634854 d!747768))

(declare-fun d!747770 () Bool)

(declare-fun lt!927857 () Token!8756)

(assert (=> d!747770 (= lt!927857 (apply!7282 (list!11491 v!6381) from!862))))

(declare-fun apply!7284 (Conc!9529 Int) Token!8756)

(assert (=> d!747770 (= lt!927857 (apply!7284 (c!423641 v!6381) from!862))))

(declare-fun e!1662917 () Bool)

(assert (=> d!747770 e!1662917))

(declare-fun res!1109664 () Bool)

(assert (=> d!747770 (=> (not res!1109664) (not e!1662917))))

(assert (=> d!747770 (= res!1109664 (<= 0 from!862))))

(assert (=> d!747770 (= (apply!7281 v!6381 from!862) lt!927857)))

(declare-fun b!2635370 () Bool)

(assert (=> b!2635370 (= e!1662917 (< from!862 (size!23601 v!6381)))))

(assert (= (and d!747770 res!1109664) b!2635370))

(assert (=> d!747770 m!2978913))

(assert (=> d!747770 m!2978913))

(declare-fun m!2979603 () Bool)

(assert (=> d!747770 m!2979603))

(declare-fun m!2979605 () Bool)

(assert (=> d!747770 m!2979605))

(assert (=> b!2635370 m!2978857))

(assert (=> b!2634854 d!747770))

(declare-fun d!747772 () Bool)

(declare-fun lt!927860 () Bool)

(assert (=> d!747772 (= lt!927860 (contains!5804 (list!11491 v!6381) lt!927569))))

(declare-fun contains!5806 (Conc!9529 Token!8756) Bool)

(assert (=> d!747772 (= lt!927860 (contains!5806 (c!423641 v!6381) lt!927569))))

(assert (=> d!747772 (= (contains!5803 v!6381 lt!927569) lt!927860)))

(declare-fun bs!476077 () Bool)

(assert (= bs!476077 d!747772))

(assert (=> bs!476077 m!2978913))

(assert (=> bs!476077 m!2978913))

(declare-fun m!2979607 () Bool)

(assert (=> bs!476077 m!2979607))

(declare-fun m!2979609 () Bool)

(assert (=> bs!476077 m!2979609))

(assert (=> b!2634854 d!747772))

(declare-fun d!747774 () Bool)

(declare-fun c!423748 () Bool)

(assert (=> d!747774 (= c!423748 ((_ is Node!9529) (c!423641 v!6381)))))

(declare-fun e!1662922 () Bool)

(assert (=> d!747774 (= (inv!41403 (c!423641 v!6381)) e!1662922)))

(declare-fun b!2635377 () Bool)

(declare-fun inv!41414 (Conc!9529) Bool)

(assert (=> b!2635377 (= e!1662922 (inv!41414 (c!423641 v!6381)))))

(declare-fun b!2635378 () Bool)

(declare-fun e!1662923 () Bool)

(assert (=> b!2635378 (= e!1662922 e!1662923)))

(declare-fun res!1109667 () Bool)

(assert (=> b!2635378 (= res!1109667 (not ((_ is Leaf!14591) (c!423641 v!6381))))))

(assert (=> b!2635378 (=> res!1109667 e!1662923)))

(declare-fun b!2635379 () Bool)

(declare-fun inv!41415 (Conc!9529) Bool)

(assert (=> b!2635379 (= e!1662923 (inv!41415 (c!423641 v!6381)))))

(assert (= (and d!747774 c!423748) b!2635377))

(assert (= (and d!747774 (not c!423748)) b!2635378))

(assert (= (and b!2635378 (not res!1109667)) b!2635379))

(declare-fun m!2979611 () Bool)

(assert (=> b!2635377 m!2979611))

(declare-fun m!2979613 () Bool)

(assert (=> b!2635379 m!2979613))

(assert (=> b!2634844 d!747774))

(declare-fun d!747776 () Bool)

(declare-fun res!1109670 () Bool)

(declare-fun e!1662926 () Bool)

(assert (=> d!747776 (=> (not res!1109670) (not e!1662926))))

(declare-fun rulesValid!1726 (LexerInterface!4240 List!30621) Bool)

(assert (=> d!747776 (= res!1109670 (rulesValid!1726 thiss!14197 rules!1726))))

(assert (=> d!747776 (= (rulesInvariant!3740 thiss!14197 rules!1726) e!1662926)))

(declare-fun b!2635382 () Bool)

(declare-datatypes ((List!30624 0))(
  ( (Nil!30524) (Cons!30524 (h!35944 String!34208) (t!216789 List!30624)) )
))
(declare-fun noDuplicateTag!1722 (LexerInterface!4240 List!30621 List!30624) Bool)

(assert (=> b!2635382 (= e!1662926 (noDuplicateTag!1722 thiss!14197 rules!1726 Nil!30524))))

(assert (= (and d!747776 res!1109670) b!2635382))

(declare-fun m!2979615 () Bool)

(assert (=> d!747776 m!2979615))

(declare-fun m!2979617 () Bool)

(assert (=> b!2635382 m!2979617))

(assert (=> b!2634855 d!747776))

(declare-fun bs!476078 () Bool)

(declare-fun d!747778 () Bool)

(assert (= bs!476078 (and d!747778 b!2634859)))

(declare-fun lambda!98904 () Int)

(assert (=> bs!476078 (not (= lambda!98904 lambda!98881))))

(declare-fun bs!476079 () Bool)

(assert (= bs!476079 (and d!747778 b!2634851)))

(assert (=> bs!476079 (= lambda!98904 lambda!98882)))

(declare-fun bs!476080 () Bool)

(assert (= bs!476080 (and d!747778 d!747628)))

(assert (=> bs!476080 (not (= lambda!98904 lambda!98892))))

(declare-fun bs!476081 () Bool)

(assert (= bs!476081 (and d!747778 b!2635043)))

(assert (=> bs!476081 (= lambda!98904 lambda!98893)))

(declare-fun b!2635388 () Bool)

(declare-fun e!1662932 () Bool)

(assert (=> b!2635388 (= e!1662932 true)))

(declare-fun b!2635387 () Bool)

(declare-fun e!1662931 () Bool)

(assert (=> b!2635387 (= e!1662931 e!1662932)))

(declare-fun b!2635386 () Bool)

(declare-fun e!1662930 () Bool)

(assert (=> b!2635386 (= e!1662930 e!1662931)))

(assert (=> d!747778 e!1662930))

(assert (= b!2635387 b!2635388))

(assert (= b!2635386 b!2635387))

(assert (= (and d!747778 ((_ is Cons!30521) rules!1726)) b!2635386))

(assert (=> b!2635388 (< (dynLambda!13088 order!16567 (toValue!6561 (transformation!4643 (h!35941 rules!1726)))) (dynLambda!13089 order!16569 lambda!98904))))

(assert (=> b!2635388 (< (dynLambda!13090 order!16571 (toChars!6420 (transformation!4643 (h!35941 rules!1726)))) (dynLambda!13089 order!16569 lambda!98904))))

(assert (=> d!747778 true))

(declare-fun e!1662929 () Bool)

(assert (=> d!747778 e!1662929))

(declare-fun res!1109673 () Bool)

(assert (=> d!747778 (=> (not res!1109673) (not e!1662929))))

(declare-fun lt!927863 () Bool)

(assert (=> d!747778 (= res!1109673 (= lt!927863 (forall!6403 (list!11491 v!6381) lambda!98904)))))

(assert (=> d!747778 (= lt!927863 (forall!6400 v!6381 lambda!98904))))

(assert (=> d!747778 (not (isEmpty!17413 rules!1726))))

(assert (=> d!747778 (= (rulesProduceEachTokenIndividually!1060 thiss!14197 rules!1726 v!6381) lt!927863)))

(declare-fun b!2635385 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1472 (LexerInterface!4240 List!30621 List!30622) Bool)

(assert (=> b!2635385 (= e!1662929 (= lt!927863 (rulesProduceEachTokenIndividuallyList!1472 thiss!14197 rules!1726 (list!11491 v!6381))))))

(assert (= (and d!747778 res!1109673) b!2635385))

(assert (=> d!747778 m!2978913))

(assert (=> d!747778 m!2978913))

(declare-fun m!2979619 () Bool)

(assert (=> d!747778 m!2979619))

(declare-fun m!2979621 () Bool)

(assert (=> d!747778 m!2979621))

(assert (=> d!747778 m!2978883))

(assert (=> b!2635385 m!2978913))

(assert (=> b!2635385 m!2978913))

(declare-fun m!2979623 () Bool)

(assert (=> b!2635385 m!2979623))

(assert (=> b!2634858 d!747778))

(declare-fun d!747780 () Bool)

(declare-fun lt!927866 () Int)

(assert (=> d!747780 (= lt!927866 (size!23608 (list!11491 v!6381)))))

(declare-fun size!23609 (Conc!9529) Int)

(assert (=> d!747780 (= lt!927866 (size!23609 (c!423641 v!6381)))))

(assert (=> d!747780 (= (size!23601 v!6381) lt!927866)))

(declare-fun bs!476082 () Bool)

(assert (= bs!476082 d!747780))

(assert (=> bs!476082 m!2978913))

(assert (=> bs!476082 m!2978913))

(declare-fun m!2979625 () Bool)

(assert (=> bs!476082 m!2979625))

(declare-fun m!2979627 () Bool)

(assert (=> bs!476082 m!2979627))

(assert (=> b!2634848 d!747780))

(declare-fun d!747782 () Bool)

(declare-fun lt!927869 () Bool)

(assert (=> d!747782 (= lt!927869 (forall!6403 (list!11491 v!6381) lambda!98881))))

(declare-fun forall!6404 (Conc!9529 Int) Bool)

(assert (=> d!747782 (= lt!927869 (forall!6404 (c!423641 v!6381) lambda!98881))))

(assert (=> d!747782 (= (forall!6400 v!6381 lambda!98881) lt!927869)))

(declare-fun bs!476083 () Bool)

(assert (= bs!476083 d!747782))

(assert (=> bs!476083 m!2978913))

(assert (=> bs!476083 m!2978913))

(declare-fun m!2979629 () Bool)

(assert (=> bs!476083 m!2979629))

(declare-fun m!2979631 () Bool)

(assert (=> bs!476083 m!2979631))

(assert (=> b!2634859 d!747782))

(declare-fun d!747784 () Bool)

(assert (=> d!747784 (= (list!11490 lt!927573) (list!11494 (c!423640 lt!927573)))))

(declare-fun bs!476084 () Bool)

(assert (= bs!476084 d!747784))

(declare-fun m!2979633 () Bool)

(assert (=> bs!476084 m!2979633))

(assert (=> b!2634847 d!747784))

(declare-fun b!2635401 () Bool)

(declare-fun e!1662935 () Bool)

(declare-fun tp!835011 () Bool)

(assert (=> b!2635401 (= e!1662935 tp!835011)))

(declare-fun b!2635400 () Bool)

(declare-fun tp!835010 () Bool)

(declare-fun tp!835013 () Bool)

(assert (=> b!2635400 (= e!1662935 (and tp!835010 tp!835013))))

(declare-fun b!2635399 () Bool)

(declare-fun tp_is_empty!13769 () Bool)

(assert (=> b!2635399 (= e!1662935 tp_is_empty!13769)))

(assert (=> b!2634845 (= tp!834941 e!1662935)))

(declare-fun b!2635402 () Bool)

(declare-fun tp!835012 () Bool)

(declare-fun tp!835009 () Bool)

(assert (=> b!2635402 (= e!1662935 (and tp!835012 tp!835009))))

(assert (= (and b!2634845 ((_ is ElementMatch!7787) (regex!4643 (rule!7027 separatorToken!156)))) b!2635399))

(assert (= (and b!2634845 ((_ is Concat!12652) (regex!4643 (rule!7027 separatorToken!156)))) b!2635400))

(assert (= (and b!2634845 ((_ is Star!7787) (regex!4643 (rule!7027 separatorToken!156)))) b!2635401))

(assert (= (and b!2634845 ((_ is Union!7787) (regex!4643 (rule!7027 separatorToken!156)))) b!2635402))

(declare-fun tp!835022 () Bool)

(declare-fun b!2635411 () Bool)

(declare-fun tp!835020 () Bool)

(declare-fun e!1662941 () Bool)

(assert (=> b!2635411 (= e!1662941 (and (inv!41403 (left!23582 (c!423641 v!6381))) tp!835020 (inv!41403 (right!23912 (c!423641 v!6381))) tp!835022))))

(declare-fun b!2635413 () Bool)

(declare-fun e!1662940 () Bool)

(declare-fun tp!835021 () Bool)

(assert (=> b!2635413 (= e!1662940 tp!835021)))

(declare-fun b!2635412 () Bool)

(declare-fun inv!41416 (IArray!19063) Bool)

(assert (=> b!2635412 (= e!1662941 (and (inv!41416 (xs!12533 (c!423641 v!6381))) e!1662940))))

(assert (=> b!2634844 (= tp!834939 (and (inv!41403 (c!423641 v!6381)) e!1662941))))

(assert (= (and b!2634844 ((_ is Node!9529) (c!423641 v!6381))) b!2635411))

(assert (= b!2635412 b!2635413))

(assert (= (and b!2634844 ((_ is Leaf!14591) (c!423641 v!6381))) b!2635412))

(declare-fun m!2979635 () Bool)

(assert (=> b!2635411 m!2979635))

(declare-fun m!2979637 () Bool)

(assert (=> b!2635411 m!2979637))

(declare-fun m!2979639 () Bool)

(assert (=> b!2635412 m!2979639))

(assert (=> b!2634844 m!2978931))

(declare-fun b!2635424 () Bool)

(declare-fun b_free!74305 () Bool)

(declare-fun b_next!75009 () Bool)

(assert (=> b!2635424 (= b_free!74305 (not b_next!75009))))

(declare-fun tp!835033 () Bool)

(declare-fun b_and!193003 () Bool)

(assert (=> b!2635424 (= tp!835033 b_and!193003)))

(declare-fun b_free!74307 () Bool)

(declare-fun b_next!75011 () Bool)

(assert (=> b!2635424 (= b_free!74307 (not b_next!75011))))

(declare-fun tb!143791 () Bool)

(declare-fun t!216786 () Bool)

(assert (=> (and b!2635424 (= (toChars!6420 (transformation!4643 (h!35941 (t!216742 rules!1726)))) (toChars!6420 (transformation!4643 (rule!7027 lt!927569)))) t!216786) tb!143791))

(declare-fun result!178732 () Bool)

(assert (= result!178732 result!178700))

(assert (=> d!747690 t!216786))

(declare-fun tb!143793 () Bool)

(declare-fun t!216788 () Bool)

(assert (=> (and b!2635424 (= (toChars!6420 (transformation!4643 (h!35941 (t!216742 rules!1726)))) (toChars!6420 (transformation!4643 (rule!7027 separatorToken!156)))) t!216788) tb!143793))

(declare-fun result!178734 () Bool)

(assert (= result!178734 result!178710))

(assert (=> b!2635223 t!216788))

(declare-fun b_and!193005 () Bool)

(declare-fun tp!835031 () Bool)

(assert (=> b!2635424 (= tp!835031 (and (=> t!216786 result!178732) (=> t!216788 result!178734) b_and!193005))))

(declare-fun e!1662951 () Bool)

(assert (=> b!2635424 (= e!1662951 (and tp!835033 tp!835031))))

(declare-fun b!2635423 () Bool)

(declare-fun tp!835034 () Bool)

(declare-fun e!1662952 () Bool)

(assert (=> b!2635423 (= e!1662952 (and tp!835034 (inv!41398 (tag!5137 (h!35941 (t!216742 rules!1726)))) (inv!41404 (transformation!4643 (h!35941 (t!216742 rules!1726)))) e!1662951))))

(declare-fun b!2635422 () Bool)

(declare-fun e!1662950 () Bool)

(declare-fun tp!835032 () Bool)

(assert (=> b!2635422 (= e!1662950 (and e!1662952 tp!835032))))

(assert (=> b!2634857 (= tp!834943 e!1662950)))

(assert (= b!2635423 b!2635424))

(assert (= b!2635422 b!2635423))

(assert (= (and b!2634857 ((_ is Cons!30521) (t!216742 rules!1726))) b!2635422))

(declare-fun m!2979641 () Bool)

(assert (=> b!2635423 m!2979641))

(declare-fun m!2979643 () Bool)

(assert (=> b!2635423 m!2979643))

(declare-fun b!2635429 () Bool)

(declare-fun e!1662956 () Bool)

(declare-fun tp!835037 () Bool)

(assert (=> b!2635429 (= e!1662956 (and tp_is_empty!13769 tp!835037))))

(assert (=> b!2634841 (= tp!834938 e!1662956)))

(assert (= (and b!2634841 ((_ is Cons!30520) (originalCharacters!5409 separatorToken!156))) b!2635429))

(declare-fun b!2635432 () Bool)

(declare-fun e!1662957 () Bool)

(declare-fun tp!835040 () Bool)

(assert (=> b!2635432 (= e!1662957 tp!835040)))

(declare-fun b!2635431 () Bool)

(declare-fun tp!835039 () Bool)

(declare-fun tp!835042 () Bool)

(assert (=> b!2635431 (= e!1662957 (and tp!835039 tp!835042))))

(declare-fun b!2635430 () Bool)

(assert (=> b!2635430 (= e!1662957 tp_is_empty!13769)))

(assert (=> b!2634852 (= tp!834945 e!1662957)))

(declare-fun b!2635433 () Bool)

(declare-fun tp!835041 () Bool)

(declare-fun tp!835038 () Bool)

(assert (=> b!2635433 (= e!1662957 (and tp!835041 tp!835038))))

(assert (= (and b!2634852 ((_ is ElementMatch!7787) (regex!4643 (h!35941 rules!1726)))) b!2635430))

(assert (= (and b!2634852 ((_ is Concat!12652) (regex!4643 (h!35941 rules!1726)))) b!2635431))

(assert (= (and b!2634852 ((_ is Star!7787) (regex!4643 (h!35941 rules!1726)))) b!2635432))

(assert (= (and b!2634852 ((_ is Union!7787) (regex!4643 (h!35941 rules!1726)))) b!2635433))

(declare-fun b!2635436 () Bool)

(declare-fun e!1662960 () Bool)

(assert (=> b!2635436 (= e!1662960 true)))

(declare-fun b!2635435 () Bool)

(declare-fun e!1662959 () Bool)

(assert (=> b!2635435 (= e!1662959 e!1662960)))

(declare-fun b!2635434 () Bool)

(declare-fun e!1662958 () Bool)

(assert (=> b!2635434 (= e!1662958 e!1662959)))

(assert (=> b!2634872 e!1662958))

(assert (= b!2635435 b!2635436))

(assert (= b!2635434 b!2635435))

(assert (= (and b!2634872 ((_ is Cons!30521) (t!216742 rules!1726))) b!2635434))

(assert (=> b!2635436 (< (dynLambda!13088 order!16567 (toValue!6561 (transformation!4643 (h!35941 (t!216742 rules!1726))))) (dynLambda!13089 order!16569 lambda!98882))))

(assert (=> b!2635436 (< (dynLambda!13090 order!16571 (toChars!6420 (transformation!4643 (h!35941 (t!216742 rules!1726))))) (dynLambda!13089 order!16569 lambda!98882))))

(declare-fun b_lambda!79379 () Bool)

(assert (= b_lambda!79373 (or (and b!2634850 b_free!74295 (= (toChars!6420 (transformation!4643 (h!35941 rules!1726))) (toChars!6420 (transformation!4643 (rule!7027 separatorToken!156))))) (and b!2634862 b_free!74299) (and b!2635424 b_free!74307 (= (toChars!6420 (transformation!4643 (h!35941 (t!216742 rules!1726)))) (toChars!6420 (transformation!4643 (rule!7027 separatorToken!156))))) b_lambda!79379)))

(declare-fun b_lambda!79381 () Bool)

(assert (= b_lambda!79363 (or b!2634851 b_lambda!79381)))

(declare-fun bs!476085 () Bool)

(declare-fun d!747786 () Bool)

(assert (= bs!476085 (and d!747786 b!2634851)))

(assert (=> bs!476085 (= (dynLambda!13092 lambda!98882 lt!927569) (rulesProduceIndividualToken!1952 thiss!14197 rules!1726 lt!927569))))

(assert (=> bs!476085 m!2978863))

(assert (=> d!747626 d!747786))

(check-sat (not b!2635413) (not d!747748) (not b_lambda!79381) tp_is_empty!13769 (not b!2635162) (not b_lambda!79379) (not b!2635106) (not d!747754) (not d!747772) (not b!2635401) (not b!2635429) (not b!2634898) (not bm!169562) (not b!2635422) (not d!747766) (not bm!169534) (not b!2635049) (not d!747722) (not d!747714) (not b_next!75011) (not d!747756) (not b!2635349) (not b!2635185) (not b!2635107) (not b!2635344) (not b!2635184) (not b!2635385) (not b!2635356) (not d!747620) (not b!2635358) (not b!2635402) (not d!747616) (not d!747736) (not b!2635047) (not b!2635412) (not bs!476085) (not b!2635182) (not bm!169541) (not b!2635432) b_and!192975 (not b!2635273) (not b!2635431) (not d!747718) (not b!2635379) b_and!192995 (not b!2635187) (not bm!169535) (not b!2634885) (not b_lambda!79367) (not b!2635043) (not b!2635377) (not b!2635168) (not d!747710) (not b!2635242) (not b!2635365) (not b!2635186) (not d!747628) (not b!2635062) (not b!2635343) b_and!193003 (not b!2635048) b_and!193005 (not b!2635064) (not b!2635223) (not b!2635103) (not d!747776) (not b!2635434) (not d!747780) (not b!2635400) (not b!2635433) (not b!2634844) (not d!747614) (not b_next!75009) (not b_next!75001) (not d!747626) (not b!2635109) (not d!747702) (not b_next!74997) (not b!2635050) (not b!2635216) (not b!2635364) (not d!747782) (not b_next!75003) (not b!2635423) (not bm!169563) (not b!2635161) (not b!2635183) b_and!192979 (not b!2635042) (not b!2635159) (not d!747692) (not d!747690) (not d!747778) (not b_next!74999) (not d!747688) (not d!747764) (not b!2635061) (not b!2635218) (not d!747724) (not b!2635169) (not tb!143783) (not d!747770) (not d!747728) (not b!2634900) (not b!2635105) (not d!747762) (not b!2635069) (not b!2635411) (not d!747622) (not b!2635248) (not b!2635249) (not d!747738) (not d!747744) (not b!2635108) (not b!2635357) (not bm!169538) (not b!2635370) b_and!192997 (not b!2635163) (not tb!143775) (not b!2635104) (not b!2635225) (not b!2635382) (not d!747700) (not d!747784) (not d!747730) (not b!2634903) (not b!2635063) (not bm!169537) (not b!2634881) (not b!2635224) (not b!2635217) (not b!2635386))
(check-sat (not b_next!75011) b_and!192975 b_and!192995 (not b_next!75009) (not b_next!75001) (not b_next!74997) (not b_next!75003) b_and!192979 (not b_next!74999) b_and!192997 b_and!193003 b_and!193005)
(get-model)

(declare-fun d!747788 () Bool)

(declare-fun res!1109685 () Bool)

(declare-fun e!1662965 () Bool)

(assert (=> d!747788 (=> res!1109685 e!1662965)))

(assert (=> d!747788 (= res!1109685 ((_ is Nil!30522) (dropList!946 v!6381 from!862)))))

(assert (=> d!747788 (= (forall!6403 (dropList!946 v!6381 from!862) lambda!98881) e!1662965)))

(declare-fun b!2635441 () Bool)

(declare-fun e!1662966 () Bool)

(assert (=> b!2635441 (= e!1662965 e!1662966)))

(declare-fun res!1109686 () Bool)

(assert (=> b!2635441 (=> (not res!1109686) (not e!1662966))))

(assert (=> b!2635441 (= res!1109686 (dynLambda!13092 lambda!98881 (h!35942 (dropList!946 v!6381 from!862))))))

(declare-fun b!2635442 () Bool)

(assert (=> b!2635442 (= e!1662966 (forall!6403 (t!216743 (dropList!946 v!6381 from!862)) lambda!98881))))

(assert (= (and d!747788 (not res!1109685)) b!2635441))

(assert (= (and b!2635441 res!1109686) b!2635442))

(declare-fun b_lambda!79383 () Bool)

(assert (=> (not b_lambda!79383) (not b!2635441)))

(declare-fun m!2979645 () Bool)

(assert (=> b!2635441 m!2979645))

(declare-fun m!2979647 () Bool)

(assert (=> b!2635442 m!2979647))

(assert (=> d!747738 d!747788))

(declare-fun d!747790 () Bool)

(assert (=> d!747790 (forall!6403 (dropList!946 v!6381 from!862) lambda!98881)))

(assert (=> d!747790 true))

(declare-fun _$83!191 () Unit!44539)

(assert (=> d!747790 (= (choose!15643 lt!927559 (dropList!946 v!6381 from!862) lambda!98881) _$83!191)))

(declare-fun bs!476086 () Bool)

(assert (= bs!476086 d!747790))

(assert (=> bs!476086 m!2978909))

(assert (=> bs!476086 m!2979523))

(assert (=> d!747738 d!747790))

(declare-fun d!747792 () Bool)

(declare-fun res!1109687 () Bool)

(declare-fun e!1662967 () Bool)

(assert (=> d!747792 (=> res!1109687 e!1662967)))

(assert (=> d!747792 (= res!1109687 ((_ is Nil!30522) lt!927559))))

(assert (=> d!747792 (= (forall!6403 lt!927559 lambda!98881) e!1662967)))

(declare-fun b!2635443 () Bool)

(declare-fun e!1662968 () Bool)

(assert (=> b!2635443 (= e!1662967 e!1662968)))

(declare-fun res!1109688 () Bool)

(assert (=> b!2635443 (=> (not res!1109688) (not e!1662968))))

(assert (=> b!2635443 (= res!1109688 (dynLambda!13092 lambda!98881 (h!35942 lt!927559)))))

(declare-fun b!2635444 () Bool)

(assert (=> b!2635444 (= e!1662968 (forall!6403 (t!216743 lt!927559) lambda!98881))))

(assert (= (and d!747792 (not res!1109687)) b!2635443))

(assert (= (and b!2635443 res!1109688) b!2635444))

(declare-fun b_lambda!79385 () Bool)

(assert (=> (not b_lambda!79385) (not b!2635443)))

(declare-fun m!2979649 () Bool)

(assert (=> b!2635443 m!2979649))

(declare-fun m!2979651 () Bool)

(assert (=> b!2635444 m!2979651))

(assert (=> d!747738 d!747792))

(declare-fun d!747794 () Bool)

(assert (=> d!747794 (= (inv!41410 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 lt!927569))) (value!149930 lt!927569))) (isBalanced!2887 (c!423640 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 lt!927569))) (value!149930 lt!927569)))))))

(declare-fun bs!476087 () Bool)

(assert (= bs!476087 d!747794))

(declare-fun m!2979653 () Bool)

(assert (=> bs!476087 m!2979653))

(assert (=> tb!143775 d!747794))

(declare-fun d!747796 () Bool)

(declare-fun lt!927872 () Int)

(assert (=> d!747796 (>= lt!927872 0)))

(declare-fun e!1662971 () Int)

(assert (=> d!747796 (= lt!927872 e!1662971)))

(declare-fun c!423751 () Bool)

(assert (=> d!747796 (= c!423751 ((_ is Nil!30522) lt!927559))))

(assert (=> d!747796 (= (size!23608 lt!927559) lt!927872)))

(declare-fun b!2635449 () Bool)

(assert (=> b!2635449 (= e!1662971 0)))

(declare-fun b!2635450 () Bool)

(assert (=> b!2635450 (= e!1662971 (+ 1 (size!23608 (t!216743 lt!927559))))))

(assert (= (and d!747796 c!423751) b!2635449))

(assert (= (and d!747796 (not c!423751)) b!2635450))

(declare-fun m!2979655 () Bool)

(assert (=> b!2635450 m!2979655))

(assert (=> bm!169562 d!747796))

(declare-fun d!747798 () Bool)

(declare-fun lt!927873 () Int)

(assert (=> d!747798 (>= lt!927873 0)))

(declare-fun e!1662972 () Int)

(assert (=> d!747798 (= lt!927873 e!1662972)))

(declare-fun c!423752 () Bool)

(assert (=> d!747798 (= c!423752 ((_ is Nil!30522) (list!11491 v!6381)))))

(assert (=> d!747798 (= (size!23608 (list!11491 v!6381)) lt!927873)))

(declare-fun b!2635451 () Bool)

(assert (=> b!2635451 (= e!1662972 0)))

(declare-fun b!2635452 () Bool)

(assert (=> b!2635452 (= e!1662972 (+ 1 (size!23608 (t!216743 (list!11491 v!6381)))))))

(assert (= (and d!747798 c!423752) b!2635451))

(assert (= (and d!747798 (not c!423752)) b!2635452))

(declare-fun m!2979657 () Bool)

(assert (=> b!2635452 m!2979657))

(assert (=> d!747780 d!747798))

(assert (=> d!747780 d!747748))

(declare-fun d!747800 () Bool)

(declare-fun lt!927876 () Int)

(assert (=> d!747800 (= lt!927876 (size!23608 (list!11495 (c!423641 v!6381))))))

(assert (=> d!747800 (= lt!927876 (ite ((_ is Empty!9529) (c!423641 v!6381)) 0 (ite ((_ is Leaf!14591) (c!423641 v!6381)) (csize!19289 (c!423641 v!6381)) (csize!19288 (c!423641 v!6381)))))))

(assert (=> d!747800 (= (size!23609 (c!423641 v!6381)) lt!927876)))

(declare-fun bs!476088 () Bool)

(assert (= bs!476088 d!747800))

(assert (=> bs!476088 m!2979549))

(assert (=> bs!476088 m!2979549))

(declare-fun m!2979659 () Bool)

(assert (=> bs!476088 m!2979659))

(assert (=> d!747780 d!747800))

(declare-fun b!2635455 () Bool)

(declare-fun res!1109690 () Bool)

(declare-fun e!1662973 () Bool)

(assert (=> b!2635455 (=> (not res!1109690) (not e!1662973))))

(assert (=> b!2635455 (= res!1109690 (>= (height!1380 (++!7443 (c!423640 call!169540) (c!423640 (ite c!423685 lt!927709 call!169539)))) (max!0 (height!1380 (c!423640 call!169540)) (height!1380 (c!423640 (ite c!423685 lt!927709 call!169539))))))))

(declare-fun lt!927877 () BalanceConc!18670)

(declare-fun b!2635456 () Bool)

(assert (=> b!2635456 (= e!1662973 (= (list!11490 lt!927877) (++!7441 (list!11490 call!169540) (list!11490 (ite c!423685 lt!927709 call!169539)))))))

(declare-fun b!2635454 () Bool)

(declare-fun res!1109691 () Bool)

(assert (=> b!2635454 (=> (not res!1109691) (not e!1662973))))

(assert (=> b!2635454 (= res!1109691 (<= (height!1380 (++!7443 (c!423640 call!169540) (c!423640 (ite c!423685 lt!927709 call!169539)))) (+ (max!0 (height!1380 (c!423640 call!169540)) (height!1380 (c!423640 (ite c!423685 lt!927709 call!169539)))) 1)))))

(declare-fun d!747802 () Bool)

(assert (=> d!747802 e!1662973))

(declare-fun res!1109689 () Bool)

(assert (=> d!747802 (=> (not res!1109689) (not e!1662973))))

(assert (=> d!747802 (= res!1109689 (appendAssocInst!636 (c!423640 call!169540) (c!423640 (ite c!423685 lt!927709 call!169539))))))

(assert (=> d!747802 (= lt!927877 (BalanceConc!18671 (++!7443 (c!423640 call!169540) (c!423640 (ite c!423685 lt!927709 call!169539)))))))

(assert (=> d!747802 (= (++!7439 call!169540 (ite c!423685 lt!927709 call!169539)) lt!927877)))

(declare-fun b!2635453 () Bool)

(declare-fun res!1109692 () Bool)

(assert (=> b!2635453 (=> (not res!1109692) (not e!1662973))))

(assert (=> b!2635453 (= res!1109692 (isBalanced!2887 (++!7443 (c!423640 call!169540) (c!423640 (ite c!423685 lt!927709 call!169539)))))))

(assert (= (and d!747802 res!1109689) b!2635453))

(assert (= (and b!2635453 res!1109692) b!2635454))

(assert (= (and b!2635454 res!1109691) b!2635455))

(assert (= (and b!2635455 res!1109690) b!2635456))

(declare-fun m!2979661 () Bool)

(assert (=> b!2635455 m!2979661))

(declare-fun m!2979663 () Bool)

(assert (=> b!2635455 m!2979663))

(declare-fun m!2979665 () Bool)

(assert (=> b!2635455 m!2979665))

(assert (=> b!2635455 m!2979661))

(assert (=> b!2635455 m!2979663))

(declare-fun m!2979667 () Bool)

(assert (=> b!2635455 m!2979667))

(assert (=> b!2635455 m!2979665))

(declare-fun m!2979669 () Bool)

(assert (=> b!2635455 m!2979669))

(declare-fun m!2979671 () Bool)

(assert (=> b!2635456 m!2979671))

(declare-fun m!2979673 () Bool)

(assert (=> b!2635456 m!2979673))

(declare-fun m!2979675 () Bool)

(assert (=> b!2635456 m!2979675))

(assert (=> b!2635456 m!2979673))

(assert (=> b!2635456 m!2979675))

(declare-fun m!2979677 () Bool)

(assert (=> b!2635456 m!2979677))

(assert (=> b!2635453 m!2979665))

(assert (=> b!2635453 m!2979665))

(declare-fun m!2979679 () Bool)

(assert (=> b!2635453 m!2979679))

(declare-fun m!2979681 () Bool)

(assert (=> d!747802 m!2979681))

(assert (=> d!747802 m!2979665))

(assert (=> b!2635454 m!2979661))

(assert (=> b!2635454 m!2979663))

(assert (=> b!2635454 m!2979665))

(assert (=> b!2635454 m!2979661))

(assert (=> b!2635454 m!2979663))

(assert (=> b!2635454 m!2979667))

(assert (=> b!2635454 m!2979665))

(assert (=> b!2635454 m!2979669))

(assert (=> bm!169537 d!747802))

(declare-fun b!2635457 () Bool)

(declare-fun e!1662978 () Option!6038)

(declare-fun call!169569 () Option!6038)

(assert (=> b!2635457 (= e!1662978 call!169569)))

(declare-fun bm!169564 () Bool)

(assert (=> bm!169564 (= call!169569 (maxPrefixOneRuleZipperSequence!449 thiss!14197 (h!35941 (t!216742 rules!1726)) (++!7439 lt!927573 lt!927565)))))

(declare-fun b!2635458 () Bool)

(declare-fun lt!927878 () Option!6038)

(declare-fun lt!927884 () Option!6038)

(assert (=> b!2635458 (= e!1662978 (ite (and ((_ is None!6037) lt!927878) ((_ is None!6037) lt!927884)) None!6037 (ite ((_ is None!6037) lt!927884) lt!927878 (ite ((_ is None!6037) lt!927878) lt!927884 (ite (>= (size!23600 (_1!17557 (v!32462 lt!927878))) (size!23600 (_1!17557 (v!32462 lt!927884)))) lt!927878 lt!927884)))))))

(assert (=> b!2635458 (= lt!927878 call!169569)))

(assert (=> b!2635458 (= lt!927884 (maxPrefixZipperSequence!966 thiss!14197 (t!216742 (t!216742 rules!1726)) (++!7439 lt!927573 lt!927565)))))

(declare-fun d!747804 () Bool)

(declare-fun e!1662975 () Bool)

(assert (=> d!747804 e!1662975))

(declare-fun res!1109698 () Bool)

(assert (=> d!747804 (=> (not res!1109698) (not e!1662975))))

(declare-fun lt!927879 () Option!6038)

(assert (=> d!747804 (= res!1109698 (= (isDefined!4803 lt!927879) (isDefined!4804 (maxPrefixZipper!440 thiss!14197 (t!216742 rules!1726) (list!11490 (++!7439 lt!927573 lt!927565))))))))

(assert (=> d!747804 (= lt!927879 e!1662978)))

(declare-fun c!423753 () Bool)

(assert (=> d!747804 (= c!423753 (and ((_ is Cons!30521) (t!216742 rules!1726)) ((_ is Nil!30521) (t!216742 (t!216742 rules!1726)))))))

(declare-fun lt!927883 () Unit!44539)

(declare-fun lt!927880 () Unit!44539)

(assert (=> d!747804 (= lt!927883 lt!927880)))

(declare-fun lt!927881 () List!30620)

(declare-fun lt!927882 () List!30620)

(assert (=> d!747804 (isPrefix!2441 lt!927881 lt!927882)))

(assert (=> d!747804 (= lt!927880 (lemmaIsPrefixRefl!1567 lt!927881 lt!927882))))

(assert (=> d!747804 (= lt!927882 (list!11490 (++!7439 lt!927573 lt!927565)))))

(assert (=> d!747804 (= lt!927881 (list!11490 (++!7439 lt!927573 lt!927565)))))

(assert (=> d!747804 (rulesValidInductive!1619 thiss!14197 (t!216742 rules!1726))))

(assert (=> d!747804 (= (maxPrefixZipperSequence!966 thiss!14197 (t!216742 rules!1726) (++!7439 lt!927573 lt!927565)) lt!927879)))

(declare-fun b!2635459 () Bool)

(declare-fun res!1109696 () Bool)

(assert (=> b!2635459 (=> (not res!1109696) (not e!1662975))))

(declare-fun e!1662974 () Bool)

(assert (=> b!2635459 (= res!1109696 e!1662974)))

(declare-fun res!1109697 () Bool)

(assert (=> b!2635459 (=> res!1109697 e!1662974)))

(assert (=> b!2635459 (= res!1109697 (not (isDefined!4803 lt!927879)))))

(declare-fun b!2635460 () Bool)

(declare-fun e!1662976 () Bool)

(assert (=> b!2635460 (= e!1662974 e!1662976)))

(declare-fun res!1109694 () Bool)

(assert (=> b!2635460 (=> (not res!1109694) (not e!1662976))))

(assert (=> b!2635460 (= res!1109694 (= (_1!17557 (get!9608 lt!927879)) (_1!17560 (get!9609 (maxPrefixZipper!440 thiss!14197 (t!216742 rules!1726) (list!11490 (++!7439 lt!927573 lt!927565)))))))))

(declare-fun b!2635461 () Bool)

(declare-fun e!1662977 () Bool)

(assert (=> b!2635461 (= e!1662977 (= (list!11490 (_2!17557 (get!9608 lt!927879))) (_2!17560 (get!9609 (maxPrefix!2312 thiss!14197 (t!216742 rules!1726) (list!11490 (++!7439 lt!927573 lt!927565)))))))))

(declare-fun b!2635462 () Bool)

(assert (=> b!2635462 (= e!1662976 (= (list!11490 (_2!17557 (get!9608 lt!927879))) (_2!17560 (get!9609 (maxPrefixZipper!440 thiss!14197 (t!216742 rules!1726) (list!11490 (++!7439 lt!927573 lt!927565)))))))))

(declare-fun b!2635463 () Bool)

(declare-fun e!1662979 () Bool)

(assert (=> b!2635463 (= e!1662979 e!1662977)))

(declare-fun res!1109695 () Bool)

(assert (=> b!2635463 (=> (not res!1109695) (not e!1662977))))

(assert (=> b!2635463 (= res!1109695 (= (_1!17557 (get!9608 lt!927879)) (_1!17560 (get!9609 (maxPrefix!2312 thiss!14197 (t!216742 rules!1726) (list!11490 (++!7439 lt!927573 lt!927565)))))))))

(declare-fun b!2635464 () Bool)

(assert (=> b!2635464 (= e!1662975 e!1662979)))

(declare-fun res!1109693 () Bool)

(assert (=> b!2635464 (=> res!1109693 e!1662979)))

(assert (=> b!2635464 (= res!1109693 (not (isDefined!4803 lt!927879)))))

(assert (= (and d!747804 c!423753) b!2635457))

(assert (= (and d!747804 (not c!423753)) b!2635458))

(assert (= (or b!2635457 b!2635458) bm!169564))

(assert (= (and d!747804 res!1109698) b!2635459))

(assert (= (and b!2635459 (not res!1109697)) b!2635460))

(assert (= (and b!2635460 res!1109694) b!2635462))

(assert (= (and b!2635459 res!1109696) b!2635464))

(assert (= (and b!2635464 (not res!1109693)) b!2635463))

(assert (= (and b!2635463 res!1109695) b!2635461))

(assert (=> b!2635458 m!2978921))

(declare-fun m!2979683 () Bool)

(assert (=> b!2635458 m!2979683))

(declare-fun m!2979685 () Bool)

(assert (=> b!2635464 m!2979685))

(assert (=> bm!169564 m!2978921))

(declare-fun m!2979687 () Bool)

(assert (=> bm!169564 m!2979687))

(declare-fun m!2979689 () Bool)

(assert (=> d!747804 m!2979689))

(declare-fun m!2979691 () Bool)

(assert (=> d!747804 m!2979691))

(declare-fun m!2979693 () Bool)

(assert (=> d!747804 m!2979693))

(assert (=> d!747804 m!2978921))

(assert (=> d!747804 m!2979295))

(assert (=> d!747804 m!2979685))

(declare-fun m!2979695 () Bool)

(assert (=> d!747804 m!2979695))

(assert (=> d!747804 m!2979295))

(assert (=> d!747804 m!2979689))

(declare-fun m!2979697 () Bool)

(assert (=> d!747804 m!2979697))

(assert (=> b!2635461 m!2979295))

(declare-fun m!2979699 () Bool)

(assert (=> b!2635461 m!2979699))

(assert (=> b!2635461 m!2979699))

(declare-fun m!2979701 () Bool)

(assert (=> b!2635461 m!2979701))

(assert (=> b!2635461 m!2978921))

(assert (=> b!2635461 m!2979295))

(declare-fun m!2979703 () Bool)

(assert (=> b!2635461 m!2979703))

(declare-fun m!2979705 () Bool)

(assert (=> b!2635461 m!2979705))

(assert (=> b!2635463 m!2979705))

(assert (=> b!2635463 m!2978921))

(assert (=> b!2635463 m!2979295))

(assert (=> b!2635463 m!2979295))

(assert (=> b!2635463 m!2979699))

(assert (=> b!2635463 m!2979699))

(assert (=> b!2635463 m!2979701))

(assert (=> b!2635462 m!2979689))

(declare-fun m!2979707 () Bool)

(assert (=> b!2635462 m!2979707))

(assert (=> b!2635462 m!2978921))

(assert (=> b!2635462 m!2979295))

(assert (=> b!2635462 m!2979703))

(assert (=> b!2635462 m!2979705))

(assert (=> b!2635462 m!2979295))

(assert (=> b!2635462 m!2979689))

(assert (=> b!2635459 m!2979685))

(assert (=> b!2635460 m!2979705))

(assert (=> b!2635460 m!2978921))

(assert (=> b!2635460 m!2979295))

(assert (=> b!2635460 m!2979295))

(assert (=> b!2635460 m!2979689))

(assert (=> b!2635460 m!2979689))

(assert (=> b!2635460 m!2979707))

(assert (=> b!2635103 d!747804))

(assert (=> b!2635356 d!747796))

(declare-fun d!747806 () Bool)

(declare-fun lt!927885 () Token!8756)

(assert (=> d!747806 (= lt!927885 (apply!7282 (list!11491 (_1!17556 lt!927812)) 0))))

(assert (=> d!747806 (= lt!927885 (apply!7284 (c!423641 (_1!17556 lt!927812)) 0))))

(declare-fun e!1662980 () Bool)

(assert (=> d!747806 e!1662980))

(declare-fun res!1109700 () Bool)

(assert (=> d!747806 (=> (not res!1109700) (not e!1662980))))

(assert (=> d!747806 (= res!1109700 (<= 0 0))))

(assert (=> d!747806 (= (apply!7281 (_1!17556 lt!927812) 0) lt!927885)))

(declare-fun b!2635465 () Bool)

(assert (=> b!2635465 (= e!1662980 (< 0 (size!23601 (_1!17556 lt!927812))))))

(assert (= (and d!747806 res!1109700) b!2635465))

(declare-fun m!2979709 () Bool)

(assert (=> d!747806 m!2979709))

(assert (=> d!747806 m!2979709))

(declare-fun m!2979711 () Bool)

(assert (=> d!747806 m!2979711))

(declare-fun m!2979713 () Bool)

(assert (=> d!747806 m!2979713))

(assert (=> b!2635465 m!2979421))

(assert (=> b!2635185 d!747806))

(declare-fun d!747808 () Bool)

(declare-fun res!1109706 () Bool)

(declare-fun e!1662983 () Bool)

(assert (=> d!747808 (=> (not res!1109706) (not e!1662983))))

(declare-fun list!11496 (IArray!19063) List!30622)

(assert (=> d!747808 (= res!1109706 (<= (size!23608 (list!11496 (xs!12533 (c!423641 v!6381)))) 512))))

(assert (=> d!747808 (= (inv!41415 (c!423641 v!6381)) e!1662983)))

(declare-fun b!2635470 () Bool)

(declare-fun res!1109707 () Bool)

(assert (=> b!2635470 (=> (not res!1109707) (not e!1662983))))

(assert (=> b!2635470 (= res!1109707 (= (csize!19289 (c!423641 v!6381)) (size!23608 (list!11496 (xs!12533 (c!423641 v!6381))))))))

(declare-fun b!2635471 () Bool)

(assert (=> b!2635471 (= e!1662983 (and (> (csize!19289 (c!423641 v!6381)) 0) (<= (csize!19289 (c!423641 v!6381)) 512)))))

(assert (= (and d!747808 res!1109706) b!2635470))

(assert (= (and b!2635470 res!1109707) b!2635471))

(declare-fun m!2979715 () Bool)

(assert (=> d!747808 m!2979715))

(assert (=> d!747808 m!2979715))

(declare-fun m!2979717 () Bool)

(assert (=> d!747808 m!2979717))

(assert (=> b!2635470 m!2979715))

(assert (=> b!2635470 m!2979715))

(assert (=> b!2635470 m!2979717))

(assert (=> b!2635379 d!747808))

(declare-fun d!747810 () Bool)

(assert (=> d!747810 (= (list!11491 lt!927583) (list!11495 (c!423641 lt!927583)))))

(declare-fun bs!476089 () Bool)

(assert (= bs!476089 d!747810))

(declare-fun m!2979719 () Bool)

(assert (=> bs!476089 m!2979719))

(assert (=> d!747620 d!747810))

(declare-fun d!747812 () Bool)

(declare-fun e!1662986 () Bool)

(assert (=> d!747812 e!1662986))

(declare-fun res!1109710 () Bool)

(assert (=> d!747812 (=> (not res!1109710) (not e!1662986))))

(declare-fun lt!927888 () BalanceConc!18672)

(assert (=> d!747812 (= res!1109710 (= (list!11491 lt!927888) (Cons!30522 lt!927569 Nil!30522)))))

(declare-fun choose!15646 (Token!8756) BalanceConc!18672)

(assert (=> d!747812 (= lt!927888 (choose!15646 lt!927569))))

(assert (=> d!747812 (= (singleton!914 lt!927569) lt!927888)))

(declare-fun b!2635474 () Bool)

(assert (=> b!2635474 (= e!1662986 (isBalanced!2885 (c!423641 lt!927888)))))

(assert (= (and d!747812 res!1109710) b!2635474))

(declare-fun m!2979721 () Bool)

(assert (=> d!747812 m!2979721))

(declare-fun m!2979723 () Bool)

(assert (=> d!747812 m!2979723))

(declare-fun m!2979725 () Bool)

(assert (=> b!2635474 m!2979725))

(assert (=> d!747620 d!747812))

(declare-fun d!747814 () Bool)

(assert (=> d!747814 (= (list!11490 (BalanceConc!18671 Empty!9528)) (list!11494 (c!423640 (BalanceConc!18671 Empty!9528))))))

(declare-fun bs!476090 () Bool)

(assert (= bs!476090 d!747814))

(declare-fun m!2979727 () Bool)

(assert (=> bs!476090 m!2979727))

(assert (=> d!747622 d!747814))

(declare-fun d!747816 () Bool)

(assert (=> d!747816 (= (dropList!946 lt!927564 0) (drop!1639 (list!11495 (c!423641 lt!927564)) 0))))

(declare-fun bs!476091 () Bool)

(assert (= bs!476091 d!747816))

(declare-fun m!2979729 () Bool)

(assert (=> bs!476091 m!2979729))

(assert (=> bs!476091 m!2979729))

(declare-fun m!2979731 () Bool)

(assert (=> bs!476091 m!2979731))

(assert (=> d!747622 d!747816))

(declare-fun d!747818 () Bool)

(declare-fun lt!927889 () Int)

(assert (=> d!747818 (= lt!927889 (size!23608 (list!11491 lt!927564)))))

(assert (=> d!747818 (= lt!927889 (size!23609 (c!423641 lt!927564)))))

(assert (=> d!747818 (= (size!23601 lt!927564) lt!927889)))

(declare-fun bs!476092 () Bool)

(assert (= bs!476092 d!747818))

(assert (=> bs!476092 m!2978935))

(assert (=> bs!476092 m!2978935))

(declare-fun m!2979733 () Bool)

(assert (=> bs!476092 m!2979733))

(declare-fun m!2979735 () Bool)

(assert (=> bs!476092 m!2979735))

(assert (=> d!747622 d!747818))

(declare-fun d!747820 () Bool)

(declare-fun lt!927904 () List!30620)

(assert (=> d!747820 (= lt!927904 (++!7441 (list!11490 (BalanceConc!18671 Empty!9528)) (printList!1168 thiss!14197 (dropList!946 lt!927564 0))))))

(declare-fun e!1662989 () List!30620)

(assert (=> d!747820 (= lt!927904 e!1662989)))

(declare-fun c!423756 () Bool)

(assert (=> d!747820 (= c!423756 ((_ is Cons!30522) (dropList!946 lt!927564 0)))))

(assert (=> d!747820 (= (printListTailRec!509 thiss!14197 (dropList!946 lt!927564 0) (list!11490 (BalanceConc!18671 Empty!9528))) lt!927904)))

(declare-fun b!2635479 () Bool)

(assert (=> b!2635479 (= e!1662989 (printListTailRec!509 thiss!14197 (t!216743 (dropList!946 lt!927564 0)) (++!7441 (list!11490 (BalanceConc!18671 Empty!9528)) (list!11490 (charsOf!2930 (h!35942 (dropList!946 lt!927564 0)))))))))

(declare-fun lt!927901 () List!30620)

(assert (=> b!2635479 (= lt!927901 (list!11490 (charsOf!2930 (h!35942 (dropList!946 lt!927564 0)))))))

(declare-fun lt!927902 () List!30620)

(assert (=> b!2635479 (= lt!927902 (printList!1168 thiss!14197 (t!216743 (dropList!946 lt!927564 0))))))

(declare-fun lt!927903 () Unit!44539)

(declare-fun lemmaConcatAssociativity!1492 (List!30620 List!30620 List!30620) Unit!44539)

(assert (=> b!2635479 (= lt!927903 (lemmaConcatAssociativity!1492 (list!11490 (BalanceConc!18671 Empty!9528)) lt!927901 lt!927902))))

(assert (=> b!2635479 (= (++!7441 (++!7441 (list!11490 (BalanceConc!18671 Empty!9528)) lt!927901) lt!927902) (++!7441 (list!11490 (BalanceConc!18671 Empty!9528)) (++!7441 lt!927901 lt!927902)))))

(declare-fun lt!927900 () Unit!44539)

(assert (=> b!2635479 (= lt!927900 lt!927903)))

(declare-fun b!2635480 () Bool)

(assert (=> b!2635480 (= e!1662989 (list!11490 (BalanceConc!18671 Empty!9528)))))

(assert (= (and d!747820 c!423756) b!2635479))

(assert (= (and d!747820 (not c!423756)) b!2635480))

(assert (=> d!747820 m!2978961))

(declare-fun m!2979737 () Bool)

(assert (=> d!747820 m!2979737))

(assert (=> d!747820 m!2978967))

(assert (=> d!747820 m!2979737))

(declare-fun m!2979739 () Bool)

(assert (=> d!747820 m!2979739))

(declare-fun m!2979741 () Bool)

(assert (=> b!2635479 m!2979741))

(declare-fun m!2979743 () Bool)

(assert (=> b!2635479 m!2979743))

(assert (=> b!2635479 m!2978967))

(declare-fun m!2979745 () Bool)

(assert (=> b!2635479 m!2979745))

(declare-fun m!2979747 () Bool)

(assert (=> b!2635479 m!2979747))

(assert (=> b!2635479 m!2978967))

(declare-fun m!2979749 () Bool)

(assert (=> b!2635479 m!2979749))

(assert (=> b!2635479 m!2979741))

(declare-fun m!2979751 () Bool)

(assert (=> b!2635479 m!2979751))

(assert (=> b!2635479 m!2979749))

(declare-fun m!2979753 () Bool)

(assert (=> b!2635479 m!2979753))

(assert (=> b!2635479 m!2978967))

(declare-fun m!2979755 () Bool)

(assert (=> b!2635479 m!2979755))

(assert (=> b!2635479 m!2979755))

(declare-fun m!2979757 () Bool)

(assert (=> b!2635479 m!2979757))

(assert (=> b!2635479 m!2979751))

(assert (=> b!2635479 m!2978967))

(assert (=> b!2635479 m!2979753))

(declare-fun m!2979759 () Bool)

(assert (=> b!2635479 m!2979759))

(assert (=> d!747622 d!747820))

(declare-fun d!747822 () Bool)

(assert (=> d!747822 (= (list!11490 lt!927603) (list!11494 (c!423640 lt!927603)))))

(declare-fun bs!476093 () Bool)

(assert (= bs!476093 d!747822))

(declare-fun m!2979761 () Bool)

(assert (=> bs!476093 m!2979761))

(assert (=> d!747622 d!747822))

(declare-fun d!747824 () Bool)

(declare-fun e!1662990 () Bool)

(assert (=> d!747824 e!1662990))

(declare-fun res!1109711 () Bool)

(assert (=> d!747824 (=> (not res!1109711) (not e!1662990))))

(declare-fun lt!927905 () BalanceConc!18672)

(assert (=> d!747824 (= res!1109711 (= (list!11491 lt!927905) (Cons!30522 call!169541 Nil!30522)))))

(assert (=> d!747824 (= lt!927905 (singleton!914 call!169541))))

(assert (=> d!747824 (= (singletonSeq!2060 call!169541) lt!927905)))

(declare-fun b!2635481 () Bool)

(assert (=> b!2635481 (= e!1662990 (isBalanced!2885 (c!423641 lt!927905)))))

(assert (= (and d!747824 res!1109711) b!2635481))

(declare-fun m!2979763 () Bool)

(assert (=> d!747824 m!2979763))

(declare-fun m!2979765 () Bool)

(assert (=> d!747824 m!2979765))

(declare-fun m!2979767 () Bool)

(assert (=> b!2635481 m!2979767))

(assert (=> b!2635049 d!747824))

(declare-fun d!747826 () Bool)

(declare-fun lt!927910 () BalanceConc!18670)

(assert (=> d!747826 (= (list!11490 lt!927910) (printListTailRec!509 thiss!14197 (dropList!946 (singletonSeq!2060 call!169541) 0) (list!11490 (BalanceConc!18671 Empty!9528))))))

(declare-fun e!1662992 () BalanceConc!18670)

(assert (=> d!747826 (= lt!927910 e!1662992)))

(declare-fun c!423757 () Bool)

(assert (=> d!747826 (= c!423757 (>= 0 (size!23601 (singletonSeq!2060 call!169541))))))

(declare-fun e!1662991 () Bool)

(assert (=> d!747826 e!1662991))

(declare-fun res!1109712 () Bool)

(assert (=> d!747826 (=> (not res!1109712) (not e!1662991))))

(assert (=> d!747826 (= res!1109712 (>= 0 0))))

(assert (=> d!747826 (= (printTailRec!1127 thiss!14197 (singletonSeq!2060 call!169541) 0 (BalanceConc!18671 Empty!9528)) lt!927910)))

(declare-fun b!2635482 () Bool)

(assert (=> b!2635482 (= e!1662991 (<= 0 (size!23601 (singletonSeq!2060 call!169541))))))

(declare-fun b!2635483 () Bool)

(assert (=> b!2635483 (= e!1662992 (BalanceConc!18671 Empty!9528))))

(declare-fun b!2635484 () Bool)

(assert (=> b!2635484 (= e!1662992 (printTailRec!1127 thiss!14197 (singletonSeq!2060 call!169541) (+ 0 1) (++!7439 (BalanceConc!18671 Empty!9528) (charsOf!2930 (apply!7281 (singletonSeq!2060 call!169541) 0)))))))

(declare-fun lt!927911 () List!30622)

(assert (=> b!2635484 (= lt!927911 (list!11491 (singletonSeq!2060 call!169541)))))

(declare-fun lt!927907 () Unit!44539)

(assert (=> b!2635484 (= lt!927907 (lemmaDropApply!854 lt!927911 0))))

(assert (=> b!2635484 (= (head!6044 (drop!1639 lt!927911 0)) (apply!7282 lt!927911 0))))

(declare-fun lt!927908 () Unit!44539)

(assert (=> b!2635484 (= lt!927908 lt!927907)))

(declare-fun lt!927912 () List!30622)

(assert (=> b!2635484 (= lt!927912 (list!11491 (singletonSeq!2060 call!169541)))))

(declare-fun lt!927909 () Unit!44539)

(assert (=> b!2635484 (= lt!927909 (lemmaDropTail!828 lt!927912 0))))

(assert (=> b!2635484 (= (tail!4282 (drop!1639 lt!927912 0)) (drop!1639 lt!927912 (+ 0 1)))))

(declare-fun lt!927906 () Unit!44539)

(assert (=> b!2635484 (= lt!927906 lt!927909)))

(assert (= (and d!747826 res!1109712) b!2635482))

(assert (= (and d!747826 c!423757) b!2635483))

(assert (= (and d!747826 (not c!423757)) b!2635484))

(assert (=> d!747826 m!2979171))

(declare-fun m!2979769 () Bool)

(assert (=> d!747826 m!2979769))

(assert (=> d!747826 m!2979171))

(declare-fun m!2979771 () Bool)

(assert (=> d!747826 m!2979771))

(declare-fun m!2979773 () Bool)

(assert (=> d!747826 m!2979773))

(assert (=> d!747826 m!2978967))

(assert (=> d!747826 m!2979769))

(assert (=> d!747826 m!2978967))

(declare-fun m!2979775 () Bool)

(assert (=> d!747826 m!2979775))

(assert (=> b!2635482 m!2979171))

(assert (=> b!2635482 m!2979771))

(assert (=> b!2635484 m!2979171))

(declare-fun m!2979777 () Bool)

(assert (=> b!2635484 m!2979777))

(declare-fun m!2979779 () Bool)

(assert (=> b!2635484 m!2979779))

(declare-fun m!2979781 () Bool)

(assert (=> b!2635484 m!2979781))

(declare-fun m!2979783 () Bool)

(assert (=> b!2635484 m!2979783))

(assert (=> b!2635484 m!2979171))

(declare-fun m!2979785 () Bool)

(assert (=> b!2635484 m!2979785))

(declare-fun m!2979787 () Bool)

(assert (=> b!2635484 m!2979787))

(declare-fun m!2979789 () Bool)

(assert (=> b!2635484 m!2979789))

(assert (=> b!2635484 m!2979785))

(declare-fun m!2979791 () Bool)

(assert (=> b!2635484 m!2979791))

(declare-fun m!2979793 () Bool)

(assert (=> b!2635484 m!2979793))

(assert (=> b!2635484 m!2979171))

(declare-fun m!2979795 () Bool)

(assert (=> b!2635484 m!2979795))

(assert (=> b!2635484 m!2979795))

(assert (=> b!2635484 m!2979789))

(declare-fun m!2979797 () Bool)

(assert (=> b!2635484 m!2979797))

(assert (=> b!2635484 m!2979781))

(declare-fun m!2979799 () Bool)

(assert (=> b!2635484 m!2979799))

(assert (=> b!2635484 m!2979791))

(declare-fun m!2979801 () Bool)

(assert (=> b!2635484 m!2979801))

(assert (=> b!2635049 d!747826))

(declare-fun d!747828 () Bool)

(assert (=> d!747828 (= (list!11490 lt!927709) (list!11494 (c!423640 lt!927709)))))

(declare-fun bs!476094 () Bool)

(assert (= bs!476094 d!747828))

(declare-fun m!2979803 () Bool)

(assert (=> bs!476094 m!2979803))

(assert (=> b!2635049 d!747828))

(declare-fun d!747830 () Bool)

(assert (=> d!747830 (isDefined!4804 (maxPrefix!2312 thiss!14197 rules!1726 (++!7441 (list!11490 call!169539) (list!11490 lt!927709))))))

(declare-fun lt!927980 () Unit!44539)

(declare-fun e!1663028 () Unit!44539)

(assert (=> d!747830 (= lt!927980 e!1663028)))

(declare-fun c!423770 () Bool)

(declare-fun isEmpty!17422 (Option!6040) Bool)

(assert (=> d!747830 (= c!423770 (isEmpty!17422 (maxPrefix!2312 thiss!14197 rules!1726 (++!7441 (list!11490 call!169539) (list!11490 lt!927709)))))))

(declare-fun lt!927973 () Unit!44539)

(declare-fun lt!927969 () Unit!44539)

(assert (=> d!747830 (= lt!927973 lt!927969)))

(declare-fun e!1663027 () Bool)

(assert (=> d!747830 e!1663027))

(declare-fun res!1109739 () Bool)

(assert (=> d!747830 (=> (not res!1109739) (not e!1663027))))

(declare-fun lt!927968 () Token!8756)

(declare-datatypes ((Option!6041 0))(
  ( (None!6040) (Some!6040 (v!32477 Rule!9086)) )
))
(declare-fun isDefined!4805 (Option!6041) Bool)

(declare-fun getRuleFromTag!822 (LexerInterface!4240 List!30621 String!34208) Option!6041)

(assert (=> d!747830 (= res!1109739 (isDefined!4805 (getRuleFromTag!822 thiss!14197 rules!1726 (tag!5137 (rule!7027 lt!927968)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!822 (LexerInterface!4240 List!30621 List!30620 Token!8756) Unit!44539)

(assert (=> d!747830 (= lt!927969 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!822 thiss!14197 rules!1726 (list!11490 call!169539) lt!927968))))

(declare-fun lt!927965 () Unit!44539)

(declare-fun lt!927978 () Unit!44539)

(assert (=> d!747830 (= lt!927965 lt!927978)))

(declare-fun lt!927971 () List!30620)

(assert (=> d!747830 (isPrefix!2441 lt!927971 (++!7441 (list!11490 call!169539) (list!11490 lt!927709)))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!390 (List!30620 List!30620 List!30620) Unit!44539)

(assert (=> d!747830 (= lt!927978 (lemmaPrefixStaysPrefixWhenAddingToSuffix!390 lt!927971 (list!11490 call!169539) (list!11490 lt!927709)))))

(assert (=> d!747830 (= lt!927971 (list!11490 (charsOf!2930 lt!927968)))))

(declare-fun lt!927972 () Unit!44539)

(declare-fun lt!927967 () Unit!44539)

(assert (=> d!747830 (= lt!927972 lt!927967)))

(declare-fun lt!927976 () List!30620)

(declare-fun lt!927974 () List!30620)

(assert (=> d!747830 (isPrefix!2441 lt!927976 (++!7441 lt!927976 lt!927974))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1609 (List!30620 List!30620) Unit!44539)

(assert (=> d!747830 (= lt!927967 (lemmaConcatTwoListThenFirstIsPrefix!1609 lt!927976 lt!927974))))

(assert (=> d!747830 (= lt!927974 (_2!17560 (get!9609 (maxPrefix!2312 thiss!14197 rules!1726 (list!11490 call!169539)))))))

(assert (=> d!747830 (= lt!927976 (list!11490 (charsOf!2930 lt!927968)))))

(assert (=> d!747830 (= lt!927968 (head!6044 (list!11491 (_1!17556 (lex!1903 thiss!14197 rules!1726 (seqFromList!3183 (list!11490 call!169539)))))))))

(assert (=> d!747830 (not (isEmpty!17413 rules!1726))))

(assert (=> d!747830 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!802 thiss!14197 rules!1726 (list!11490 call!169539) (list!11490 lt!927709)) lt!927980)))

(declare-fun b!2635540 () Bool)

(declare-fun Unit!44545 () Unit!44539)

(assert (=> b!2635540 (= e!1663028 Unit!44545)))

(declare-fun lt!927970 () List!30620)

(assert (=> b!2635540 (= lt!927970 (++!7441 (list!11490 call!169539) (list!11490 lt!927709)))))

(declare-fun lt!927975 () Unit!44539)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!426 (LexerInterface!4240 Rule!9086 List!30621 List!30620) Unit!44539)

(assert (=> b!2635540 (= lt!927975 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!426 thiss!14197 (rule!7027 lt!927968) rules!1726 lt!927970))))

(declare-fun maxPrefixOneRule!1469 (LexerInterface!4240 Rule!9086 List!30620) Option!6040)

(assert (=> b!2635540 (isEmpty!17422 (maxPrefixOneRule!1469 thiss!14197 (rule!7027 lt!927968) lt!927970))))

(declare-fun lt!927964 () Unit!44539)

(assert (=> b!2635540 (= lt!927964 lt!927975)))

(declare-fun lt!927966 () List!30620)

(assert (=> b!2635540 (= lt!927966 (list!11490 (charsOf!2930 lt!927968)))))

(declare-fun lt!927977 () Unit!44539)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!414 (LexerInterface!4240 Rule!9086 List!30620 List!30620) Unit!44539)

(assert (=> b!2635540 (= lt!927977 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!414 thiss!14197 (rule!7027 lt!927968) lt!927966 (++!7441 (list!11490 call!169539) (list!11490 lt!927709))))))

(declare-fun matchR!3611 (Regex!7787 List!30620) Bool)

(assert (=> b!2635540 (not (matchR!3611 (regex!4643 (rule!7027 lt!927968)) lt!927966))))

(declare-fun lt!927979 () Unit!44539)

(assert (=> b!2635540 (= lt!927979 lt!927977)))

(assert (=> b!2635540 false))

(declare-fun b!2635538 () Bool)

(declare-fun res!1109738 () Bool)

(assert (=> b!2635538 (=> (not res!1109738) (not e!1663027))))

(declare-fun get!9610 (Option!6041) Rule!9086)

(assert (=> b!2635538 (= res!1109738 (matchR!3611 (regex!4643 (get!9610 (getRuleFromTag!822 thiss!14197 rules!1726 (tag!5137 (rule!7027 lt!927968))))) (list!11490 (charsOf!2930 lt!927968))))))

(declare-fun b!2635539 () Bool)

(assert (=> b!2635539 (= e!1663027 (= (rule!7027 lt!927968) (get!9610 (getRuleFromTag!822 thiss!14197 rules!1726 (tag!5137 (rule!7027 lt!927968))))))))

(declare-fun b!2635541 () Bool)

(declare-fun Unit!44546 () Unit!44539)

(assert (=> b!2635541 (= e!1663028 Unit!44546)))

(assert (= (and d!747830 res!1109739) b!2635538))

(assert (= (and b!2635538 res!1109738) b!2635539))

(assert (= (and d!747830 c!423770) b!2635540))

(assert (= (and d!747830 (not c!423770)) b!2635541))

(declare-fun m!2979861 () Bool)

(assert (=> d!747830 m!2979861))

(assert (=> d!747830 m!2979177))

(assert (=> d!747830 m!2979179))

(declare-fun m!2979863 () Bool)

(assert (=> d!747830 m!2979863))

(assert (=> d!747830 m!2979861))

(declare-fun m!2979865 () Bool)

(assert (=> d!747830 m!2979865))

(declare-fun m!2979867 () Bool)

(assert (=> d!747830 m!2979867))

(declare-fun m!2979869 () Bool)

(assert (=> d!747830 m!2979869))

(declare-fun m!2979871 () Bool)

(assert (=> d!747830 m!2979871))

(declare-fun m!2979873 () Bool)

(assert (=> d!747830 m!2979873))

(assert (=> d!747830 m!2979177))

(assert (=> d!747830 m!2979179))

(declare-fun m!2979875 () Bool)

(assert (=> d!747830 m!2979875))

(declare-fun m!2979877 () Bool)

(assert (=> d!747830 m!2979877))

(declare-fun m!2979879 () Bool)

(assert (=> d!747830 m!2979879))

(declare-fun m!2979881 () Bool)

(assert (=> d!747830 m!2979881))

(declare-fun m!2979883 () Bool)

(assert (=> d!747830 m!2979883))

(assert (=> d!747830 m!2979881))

(assert (=> d!747830 m!2979177))

(assert (=> d!747830 m!2979871))

(assert (=> d!747830 m!2979863))

(assert (=> d!747830 m!2979867))

(assert (=> d!747830 m!2979177))

(declare-fun m!2979885 () Bool)

(assert (=> d!747830 m!2979885))

(declare-fun m!2979887 () Bool)

(assert (=> d!747830 m!2979887))

(assert (=> d!747830 m!2979877))

(assert (=> d!747830 m!2979885))

(declare-fun m!2979889 () Bool)

(assert (=> d!747830 m!2979889))

(assert (=> d!747830 m!2979867))

(declare-fun m!2979891 () Bool)

(assert (=> d!747830 m!2979891))

(declare-fun m!2979893 () Bool)

(assert (=> d!747830 m!2979893))

(assert (=> d!747830 m!2978883))

(assert (=> d!747830 m!2979887))

(declare-fun m!2979895 () Bool)

(assert (=> d!747830 m!2979895))

(assert (=> d!747830 m!2979863))

(declare-fun m!2979897 () Bool)

(assert (=> d!747830 m!2979897))

(assert (=> d!747830 m!2979177))

(declare-fun m!2979899 () Bool)

(assert (=> d!747830 m!2979899))

(declare-fun m!2979901 () Bool)

(assert (=> b!2635540 m!2979901))

(assert (=> b!2635540 m!2979887))

(assert (=> b!2635540 m!2979887))

(assert (=> b!2635540 m!2979895))

(assert (=> b!2635540 m!2979901))

(declare-fun m!2979903 () Bool)

(assert (=> b!2635540 m!2979903))

(declare-fun m!2979905 () Bool)

(assert (=> b!2635540 m!2979905))

(assert (=> b!2635540 m!2979863))

(declare-fun m!2979907 () Bool)

(assert (=> b!2635540 m!2979907))

(assert (=> b!2635540 m!2979177))

(assert (=> b!2635540 m!2979179))

(assert (=> b!2635540 m!2979863))

(declare-fun m!2979909 () Bool)

(assert (=> b!2635540 m!2979909))

(assert (=> b!2635538 m!2979895))

(declare-fun m!2979911 () Bool)

(assert (=> b!2635538 m!2979911))

(assert (=> b!2635538 m!2979887))

(assert (=> b!2635538 m!2979895))

(assert (=> b!2635538 m!2979877))

(declare-fun m!2979913 () Bool)

(assert (=> b!2635538 m!2979913))

(assert (=> b!2635538 m!2979887))

(assert (=> b!2635538 m!2979877))

(assert (=> b!2635539 m!2979877))

(assert (=> b!2635539 m!2979877))

(assert (=> b!2635539 m!2979913))

(assert (=> b!2635049 d!747830))

(declare-fun d!747876 () Bool)

(assert (=> d!747876 (= (list!11490 call!169539) (list!11494 (c!423640 call!169539)))))

(declare-fun bs!476105 () Bool)

(assert (= bs!476105 d!747876))

(declare-fun m!2979915 () Bool)

(assert (=> bs!476105 m!2979915))

(assert (=> b!2635049 d!747876))

(declare-fun d!747878 () Bool)

(declare-fun lt!927981 () BalanceConc!18670)

(assert (=> d!747878 (= (list!11490 lt!927981) (printList!1168 thiss!14197 (list!11491 (singletonSeq!2060 call!169541))))))

(assert (=> d!747878 (= lt!927981 (printTailRec!1127 thiss!14197 (singletonSeq!2060 call!169541) 0 (BalanceConc!18671 Empty!9528)))))

(assert (=> d!747878 (= (print!1641 thiss!14197 (singletonSeq!2060 call!169541)) lt!927981)))

(declare-fun bs!476106 () Bool)

(assert (= bs!476106 d!747878))

(declare-fun m!2979917 () Bool)

(assert (=> bs!476106 m!2979917))

(assert (=> bs!476106 m!2979171))

(assert (=> bs!476106 m!2979777))

(assert (=> bs!476106 m!2979777))

(declare-fun m!2979919 () Bool)

(assert (=> bs!476106 m!2979919))

(assert (=> bs!476106 m!2979171))

(assert (=> bs!476106 m!2979173))

(assert (=> b!2635049 d!747878))

(assert (=> b!2634903 d!747730))

(declare-fun d!747880 () Bool)

(assert (=> d!747880 (= (get!9609 (maxPrefixZipper!440 thiss!14197 rules!1726 (list!11490 (++!7439 lt!927573 lt!927565)))) (v!32474 (maxPrefixZipper!440 thiss!14197 rules!1726 (list!11490 (++!7439 lt!927573 lt!927565)))))))

(assert (=> b!2635107 d!747880))

(declare-fun d!747882 () Bool)

(declare-fun lt!928007 () Option!6040)

(assert (=> d!747882 (= lt!928007 (maxPrefix!2312 thiss!14197 rules!1726 (list!11490 (++!7439 lt!927573 lt!927565))))))

(declare-fun e!1663069 () Option!6040)

(assert (=> d!747882 (= lt!928007 e!1663069)))

(declare-fun c!423801 () Bool)

(assert (=> d!747882 (= c!423801 (and ((_ is Cons!30521) rules!1726) ((_ is Nil!30521) (t!216742 rules!1726))))))

(declare-fun lt!928009 () Unit!44539)

(declare-fun lt!928005 () Unit!44539)

(assert (=> d!747882 (= lt!928009 lt!928005)))

(assert (=> d!747882 (isPrefix!2441 (list!11490 (++!7439 lt!927573 lt!927565)) (list!11490 (++!7439 lt!927573 lt!927565)))))

(assert (=> d!747882 (= lt!928005 (lemmaIsPrefixRefl!1567 (list!11490 (++!7439 lt!927573 lt!927565)) (list!11490 (++!7439 lt!927573 lt!927565))))))

(assert (=> d!747882 (rulesValidInductive!1619 thiss!14197 rules!1726)))

(assert (=> d!747882 (= (maxPrefixZipper!440 thiss!14197 rules!1726 (list!11490 (++!7439 lt!927573 lt!927565))) lt!928007)))

(declare-fun bm!169616 () Bool)

(declare-fun call!169621 () Option!6040)

(declare-fun maxPrefixOneRuleZipper!165 (LexerInterface!4240 Rule!9086 List!30620) Option!6040)

(assert (=> bm!169616 (= call!169621 (maxPrefixOneRuleZipper!165 thiss!14197 (h!35941 rules!1726) (list!11490 (++!7439 lt!927573 lt!927565))))))

(declare-fun b!2635627 () Bool)

(assert (=> b!2635627 (= e!1663069 call!169621)))

(declare-fun b!2635628 () Bool)

(declare-fun lt!928008 () Option!6040)

(declare-fun lt!928006 () Option!6040)

(assert (=> b!2635628 (= e!1663069 (ite (and ((_ is None!6039) lt!928008) ((_ is None!6039) lt!928006)) None!6039 (ite ((_ is None!6039) lt!928006) lt!928008 (ite ((_ is None!6039) lt!928008) lt!928006 (ite (>= (size!23600 (_1!17560 (v!32474 lt!928008))) (size!23600 (_1!17560 (v!32474 lt!928006)))) lt!928008 lt!928006)))))))

(assert (=> b!2635628 (= lt!928008 call!169621)))

(assert (=> b!2635628 (= lt!928006 (maxPrefixZipper!440 thiss!14197 (t!216742 rules!1726) (list!11490 (++!7439 lt!927573 lt!927565))))))

(assert (= (and d!747882 c!423801) b!2635627))

(assert (= (and d!747882 (not c!423801)) b!2635628))

(assert (= (or b!2635627 b!2635628) bm!169616))

(assert (=> d!747882 m!2979295))

(assert (=> d!747882 m!2979301))

(assert (=> d!747882 m!2979295))

(assert (=> d!747882 m!2979295))

(declare-fun m!2979969 () Bool)

(assert (=> d!747882 m!2979969))

(assert (=> d!747882 m!2979295))

(assert (=> d!747882 m!2979295))

(declare-fun m!2979971 () Bool)

(assert (=> d!747882 m!2979971))

(assert (=> d!747882 m!2979297))

(assert (=> bm!169616 m!2979295))

(declare-fun m!2979973 () Bool)

(assert (=> bm!169616 m!2979973))

(assert (=> b!2635628 m!2979295))

(assert (=> b!2635628 m!2979689))

(assert (=> b!2635107 d!747882))

(declare-fun d!747892 () Bool)

(assert (=> d!747892 (= (get!9608 lt!927745) (v!32462 lt!927745))))

(assert (=> b!2635107 d!747892))

(declare-fun d!747894 () Bool)

(assert (=> d!747894 (= (list!11490 (++!7439 lt!927573 lt!927565)) (list!11494 (c!423640 (++!7439 lt!927573 lt!927565))))))

(declare-fun bs!476107 () Bool)

(assert (= bs!476107 d!747894))

(declare-fun m!2979975 () Bool)

(assert (=> bs!476107 m!2979975))

(assert (=> b!2635107 d!747894))

(declare-fun d!747896 () Bool)

(assert (=> d!747896 (= (list!11490 (_2!17557 (get!9608 lt!927745))) (list!11494 (c!423640 (_2!17557 (get!9608 lt!927745)))))))

(declare-fun bs!476108 () Bool)

(assert (= bs!476108 d!747896))

(declare-fun m!2979977 () Bool)

(assert (=> bs!476108 m!2979977))

(assert (=> b!2635107 d!747896))

(declare-fun d!747898 () Bool)

(assert (=> d!747898 (= (list!11490 lt!927720) (list!11494 (c!423640 lt!927720)))))

(declare-fun bs!476109 () Bool)

(assert (= bs!476109 d!747898))

(declare-fun m!2979979 () Bool)

(assert (=> bs!476109 m!2979979))

(assert (=> b!2635064 d!747898))

(declare-fun b!2635650 () Bool)

(declare-fun res!1109772 () Bool)

(declare-fun e!1663080 () Bool)

(assert (=> b!2635650 (=> (not res!1109772) (not e!1663080))))

(declare-fun lt!928018 () List!30620)

(assert (=> b!2635650 (= res!1109772 (= (size!23607 lt!928018) (+ (size!23607 (list!11490 lt!927573)) (size!23607 (list!11490 lt!927565)))))))

(declare-fun b!2635651 () Bool)

(assert (=> b!2635651 (= e!1663080 (or (not (= (list!11490 lt!927565) Nil!30520)) (= lt!928018 (list!11490 lt!927573))))))

(declare-fun d!747900 () Bool)

(assert (=> d!747900 e!1663080))

(declare-fun res!1109773 () Bool)

(assert (=> d!747900 (=> (not res!1109773) (not e!1663080))))

(declare-fun content!4314 (List!30620) (InoxSet C!15732))

(assert (=> d!747900 (= res!1109773 (= (content!4314 lt!928018) ((_ map or) (content!4314 (list!11490 lt!927573)) (content!4314 (list!11490 lt!927565)))))))

(declare-fun e!1663081 () List!30620)

(assert (=> d!747900 (= lt!928018 e!1663081)))

(declare-fun c!423808 () Bool)

(assert (=> d!747900 (= c!423808 ((_ is Nil!30520) (list!11490 lt!927573)))))

(assert (=> d!747900 (= (++!7441 (list!11490 lt!927573) (list!11490 lt!927565)) lt!928018)))

(declare-fun b!2635649 () Bool)

(assert (=> b!2635649 (= e!1663081 (Cons!30520 (h!35940 (list!11490 lt!927573)) (++!7441 (t!216741 (list!11490 lt!927573)) (list!11490 lt!927565))))))

(declare-fun b!2635648 () Bool)

(assert (=> b!2635648 (= e!1663081 (list!11490 lt!927565))))

(assert (= (and d!747900 c!423808) b!2635648))

(assert (= (and d!747900 (not c!423808)) b!2635649))

(assert (= (and d!747900 res!1109773) b!2635650))

(assert (= (and b!2635650 res!1109772) b!2635651))

(declare-fun m!2980017 () Bool)

(assert (=> b!2635650 m!2980017))

(assert (=> b!2635650 m!2978919))

(declare-fun m!2980019 () Bool)

(assert (=> b!2635650 m!2980019))

(assert (=> b!2635650 m!2979239))

(declare-fun m!2980023 () Bool)

(assert (=> b!2635650 m!2980023))

(declare-fun m!2980025 () Bool)

(assert (=> d!747900 m!2980025))

(assert (=> d!747900 m!2978919))

(declare-fun m!2980027 () Bool)

(assert (=> d!747900 m!2980027))

(assert (=> d!747900 m!2979239))

(declare-fun m!2980029 () Bool)

(assert (=> d!747900 m!2980029))

(assert (=> b!2635649 m!2979239))

(declare-fun m!2980031 () Bool)

(assert (=> b!2635649 m!2980031))

(assert (=> b!2635064 d!747900))

(assert (=> b!2635064 d!747784))

(declare-fun d!747916 () Bool)

(assert (=> d!747916 (= (list!11490 lt!927565) (list!11494 (c!423640 lt!927565)))))

(declare-fun bs!476115 () Bool)

(assert (= bs!476115 d!747916))

(declare-fun m!2980033 () Bool)

(assert (=> bs!476115 m!2980033))

(assert (=> b!2635064 d!747916))

(declare-fun d!747918 () Bool)

(assert (=> d!747918 true))

(declare-fun lambda!98913 () Int)

(declare-fun order!16577 () Int)

(declare-fun dynLambda!13095 (Int Int) Int)

(assert (=> d!747918 (< (dynLambda!13090 order!16571 (toChars!6420 (transformation!4643 (rule!7027 separatorToken!156)))) (dynLambda!13095 order!16577 lambda!98913))))

(assert (=> d!747918 true))

(assert (=> d!747918 (< (dynLambda!13088 order!16567 (toValue!6561 (transformation!4643 (rule!7027 separatorToken!156)))) (dynLambda!13095 order!16577 lambda!98913))))

(declare-fun Forall!1181 (Int) Bool)

(assert (=> d!747918 (= (semiInverseModEq!1920 (toChars!6420 (transformation!4643 (rule!7027 separatorToken!156))) (toValue!6561 (transformation!4643 (rule!7027 separatorToken!156)))) (Forall!1181 lambda!98913))))

(declare-fun bs!476116 () Bool)

(assert (= bs!476116 d!747918))

(declare-fun m!2980035 () Bool)

(assert (=> bs!476116 m!2980035))

(assert (=> d!747736 d!747918))

(declare-fun d!747920 () Bool)

(declare-fun c!423809 () Bool)

(assert (=> d!747920 (= c!423809 ((_ is Node!9529) (left!23582 (c!423641 v!6381))))))

(declare-fun e!1663082 () Bool)

(assert (=> d!747920 (= (inv!41403 (left!23582 (c!423641 v!6381))) e!1663082)))

(declare-fun b!2635656 () Bool)

(assert (=> b!2635656 (= e!1663082 (inv!41414 (left!23582 (c!423641 v!6381))))))

(declare-fun b!2635657 () Bool)

(declare-fun e!1663083 () Bool)

(assert (=> b!2635657 (= e!1663082 e!1663083)))

(declare-fun res!1109774 () Bool)

(assert (=> b!2635657 (= res!1109774 (not ((_ is Leaf!14591) (left!23582 (c!423641 v!6381)))))))

(assert (=> b!2635657 (=> res!1109774 e!1663083)))

(declare-fun b!2635658 () Bool)

(assert (=> b!2635658 (= e!1663083 (inv!41415 (left!23582 (c!423641 v!6381))))))

(assert (= (and d!747920 c!423809) b!2635656))

(assert (= (and d!747920 (not c!423809)) b!2635657))

(assert (= (and b!2635657 (not res!1109774)) b!2635658))

(declare-fun m!2980037 () Bool)

(assert (=> b!2635656 m!2980037))

(declare-fun m!2980039 () Bool)

(assert (=> b!2635658 m!2980039))

(assert (=> b!2635411 d!747920))

(declare-fun d!747922 () Bool)

(declare-fun c!423810 () Bool)

(assert (=> d!747922 (= c!423810 ((_ is Node!9529) (right!23912 (c!423641 v!6381))))))

(declare-fun e!1663084 () Bool)

(assert (=> d!747922 (= (inv!41403 (right!23912 (c!423641 v!6381))) e!1663084)))

(declare-fun b!2635659 () Bool)

(assert (=> b!2635659 (= e!1663084 (inv!41414 (right!23912 (c!423641 v!6381))))))

(declare-fun b!2635660 () Bool)

(declare-fun e!1663085 () Bool)

(assert (=> b!2635660 (= e!1663084 e!1663085)))

(declare-fun res!1109775 () Bool)

(assert (=> b!2635660 (= res!1109775 (not ((_ is Leaf!14591) (right!23912 (c!423641 v!6381)))))))

(assert (=> b!2635660 (=> res!1109775 e!1663085)))

(declare-fun b!2635661 () Bool)

(assert (=> b!2635661 (= e!1663085 (inv!41415 (right!23912 (c!423641 v!6381))))))

(assert (= (and d!747922 c!423810) b!2635659))

(assert (= (and d!747922 (not c!423810)) b!2635660))

(assert (= (and b!2635660 (not res!1109775)) b!2635661))

(declare-fun m!2980041 () Bool)

(assert (=> b!2635659 m!2980041))

(declare-fun m!2980043 () Bool)

(assert (=> b!2635661 m!2980043))

(assert (=> b!2635411 d!747922))

(declare-fun d!747924 () Bool)

(assert (=> d!747924 (= (list!11490 (_2!17556 lt!927783)) (list!11494 (c!423640 (_2!17556 lt!927783))))))

(declare-fun bs!476117 () Bool)

(assert (= bs!476117 d!747924))

(declare-fun m!2980045 () Bool)

(assert (=> bs!476117 m!2980045))

(assert (=> b!2635159 d!747924))

(declare-fun b!2635672 () Bool)

(declare-fun e!1663092 () Bool)

(declare-fun e!1663093 () Bool)

(assert (=> b!2635672 (= e!1663092 e!1663093)))

(declare-fun res!1109778 () Bool)

(declare-fun lt!928027 () tuple2!30038)

(assert (=> b!2635672 (= res!1109778 (< (size!23607 (_2!17561 lt!928027)) (size!23607 (list!11490 (seqFromList!3183 lt!927575)))))))

(assert (=> b!2635672 (=> (not res!1109778) (not e!1663093))))

(declare-fun b!2635673 () Bool)

(assert (=> b!2635673 (= e!1663092 (= (_2!17561 lt!928027) (list!11490 (seqFromList!3183 lt!927575))))))

(declare-fun d!747926 () Bool)

(assert (=> d!747926 e!1663092))

(declare-fun c!423815 () Bool)

(assert (=> d!747926 (= c!423815 (> (size!23608 (_1!17561 lt!928027)) 0))))

(declare-fun e!1663094 () tuple2!30038)

(assert (=> d!747926 (= lt!928027 e!1663094)))

(declare-fun c!423816 () Bool)

(declare-fun lt!928025 () Option!6040)

(assert (=> d!747926 (= c!423816 ((_ is Some!6039) lt!928025))))

(assert (=> d!747926 (= lt!928025 (maxPrefix!2312 thiss!14197 rules!1726 (list!11490 (seqFromList!3183 lt!927575))))))

(assert (=> d!747926 (= (lexList!1162 thiss!14197 rules!1726 (list!11490 (seqFromList!3183 lt!927575))) lt!928027)))

(declare-fun b!2635674 () Bool)

(assert (=> b!2635674 (= e!1663094 (tuple2!30039 Nil!30522 (list!11490 (seqFromList!3183 lt!927575))))))

(declare-fun b!2635675 () Bool)

(declare-fun lt!928026 () tuple2!30038)

(assert (=> b!2635675 (= e!1663094 (tuple2!30039 (Cons!30522 (_1!17560 (v!32474 lt!928025)) (_1!17561 lt!928026)) (_2!17561 lt!928026)))))

(assert (=> b!2635675 (= lt!928026 (lexList!1162 thiss!14197 rules!1726 (_2!17560 (v!32474 lt!928025))))))

(declare-fun b!2635676 () Bool)

(assert (=> b!2635676 (= e!1663093 (not (isEmpty!17418 (_1!17561 lt!928027))))))

(assert (= (and d!747926 c!423816) b!2635675))

(assert (= (and d!747926 (not c!423816)) b!2635674))

(assert (= (and d!747926 c!423815) b!2635672))

(assert (= (and d!747926 (not c!423815)) b!2635673))

(assert (= (and b!2635672 res!1109778) b!2635676))

(declare-fun m!2980047 () Bool)

(assert (=> b!2635672 m!2980047))

(assert (=> b!2635672 m!2979373))

(declare-fun m!2980049 () Bool)

(assert (=> b!2635672 m!2980049))

(declare-fun m!2980051 () Bool)

(assert (=> d!747926 m!2980051))

(assert (=> d!747926 m!2979373))

(declare-fun m!2980053 () Bool)

(assert (=> d!747926 m!2980053))

(declare-fun m!2980055 () Bool)

(assert (=> b!2635675 m!2980055))

(declare-fun m!2980057 () Bool)

(assert (=> b!2635676 m!2980057))

(assert (=> b!2635159 d!747926))

(declare-fun d!747928 () Bool)

(assert (=> d!747928 (= (list!11490 (seqFromList!3183 lt!927575)) (list!11494 (c!423640 (seqFromList!3183 lt!927575))))))

(declare-fun bs!476118 () Bool)

(assert (= bs!476118 d!747928))

(declare-fun m!2980059 () Bool)

(assert (=> bs!476118 m!2980059))

(assert (=> b!2635159 d!747928))

(assert (=> b!2635349 d!747796))

(declare-fun bs!476119 () Bool)

(declare-fun d!747930 () Bool)

(assert (= bs!476119 (and d!747930 d!747918)))

(declare-fun lambda!98914 () Int)

(assert (=> bs!476119 (= (and (= (toChars!6420 (transformation!4643 (h!35941 rules!1726))) (toChars!6420 (transformation!4643 (rule!7027 separatorToken!156)))) (= (toValue!6561 (transformation!4643 (h!35941 rules!1726))) (toValue!6561 (transformation!4643 (rule!7027 separatorToken!156))))) (= lambda!98914 lambda!98913))))

(assert (=> d!747930 true))

(assert (=> d!747930 (< (dynLambda!13090 order!16571 (toChars!6420 (transformation!4643 (h!35941 rules!1726)))) (dynLambda!13095 order!16577 lambda!98914))))

(assert (=> d!747930 true))

(assert (=> d!747930 (< (dynLambda!13088 order!16567 (toValue!6561 (transformation!4643 (h!35941 rules!1726)))) (dynLambda!13095 order!16577 lambda!98914))))

(assert (=> d!747930 (= (semiInverseModEq!1920 (toChars!6420 (transformation!4643 (h!35941 rules!1726))) (toValue!6561 (transformation!4643 (h!35941 rules!1726)))) (Forall!1181 lambda!98914))))

(declare-fun bs!476120 () Bool)

(assert (= bs!476120 d!747930))

(declare-fun m!2980061 () Bool)

(assert (=> bs!476120 m!2980061))

(assert (=> d!747728 d!747930))

(declare-fun d!747932 () Bool)

(assert (=> d!747932 (dynLambda!13092 lambda!98882 lt!927569)))

(assert (=> d!747932 true))

(declare-fun _$7!937 () Unit!44539)

(assert (=> d!747932 (= (choose!15641 lt!927559 lambda!98882 lt!927569) _$7!937)))

(declare-fun b_lambda!79391 () Bool)

(assert (=> (not b_lambda!79391) (not d!747932)))

(declare-fun bs!476121 () Bool)

(assert (= bs!476121 d!747932))

(assert (=> bs!476121 m!2978995))

(assert (=> d!747626 d!747932))

(declare-fun d!747934 () Bool)

(declare-fun res!1109779 () Bool)

(declare-fun e!1663095 () Bool)

(assert (=> d!747934 (=> res!1109779 e!1663095)))

(assert (=> d!747934 (= res!1109779 ((_ is Nil!30522) lt!927559))))

(assert (=> d!747934 (= (forall!6403 lt!927559 lambda!98882) e!1663095)))

(declare-fun b!2635677 () Bool)

(declare-fun e!1663096 () Bool)

(assert (=> b!2635677 (= e!1663095 e!1663096)))

(declare-fun res!1109780 () Bool)

(assert (=> b!2635677 (=> (not res!1109780) (not e!1663096))))

(assert (=> b!2635677 (= res!1109780 (dynLambda!13092 lambda!98882 (h!35942 lt!927559)))))

(declare-fun b!2635678 () Bool)

(assert (=> b!2635678 (= e!1663096 (forall!6403 (t!216743 lt!927559) lambda!98882))))

(assert (= (and d!747934 (not res!1109779)) b!2635677))

(assert (= (and b!2635677 res!1109780) b!2635678))

(declare-fun b_lambda!79393 () Bool)

(assert (=> (not b_lambda!79393) (not b!2635677)))

(declare-fun m!2980063 () Bool)

(assert (=> b!2635677 m!2980063))

(declare-fun m!2980065 () Bool)

(assert (=> b!2635678 m!2980065))

(assert (=> d!747626 d!747934))

(declare-fun d!747936 () Bool)

(assert (=> d!747936 (= (inv!41398 (tag!5137 (h!35941 (t!216742 rules!1726)))) (= (mod (str.len (value!149904 (tag!5137 (h!35941 (t!216742 rules!1726))))) 2) 0))))

(assert (=> b!2635423 d!747936))

(declare-fun d!747938 () Bool)

(declare-fun res!1109781 () Bool)

(declare-fun e!1663097 () Bool)

(assert (=> d!747938 (=> (not res!1109781) (not e!1663097))))

(assert (=> d!747938 (= res!1109781 (semiInverseModEq!1920 (toChars!6420 (transformation!4643 (h!35941 (t!216742 rules!1726)))) (toValue!6561 (transformation!4643 (h!35941 (t!216742 rules!1726))))))))

(assert (=> d!747938 (= (inv!41404 (transformation!4643 (h!35941 (t!216742 rules!1726)))) e!1663097)))

(declare-fun b!2635679 () Bool)

(assert (=> b!2635679 (= e!1663097 (equivClasses!1821 (toChars!6420 (transformation!4643 (h!35941 (t!216742 rules!1726)))) (toValue!6561 (transformation!4643 (h!35941 (t!216742 rules!1726))))))))

(assert (= (and d!747938 res!1109781) b!2635679))

(declare-fun m!2980067 () Bool)

(assert (=> d!747938 m!2980067))

(declare-fun m!2980069 () Bool)

(assert (=> b!2635679 m!2980069))

(assert (=> b!2635423 d!747938))

(declare-fun d!747940 () Bool)

(declare-fun c!423819 () Bool)

(assert (=> d!747940 (= c!423819 ((_ is Nil!30522) lt!927854))))

(declare-fun e!1663100 () (InoxSet Token!8756))

(assert (=> d!747940 (= (content!4313 lt!927854) e!1663100)))

(declare-fun b!2635684 () Bool)

(assert (=> b!2635684 (= e!1663100 ((as const (Array Token!8756 Bool)) false))))

(declare-fun b!2635685 () Bool)

(assert (=> b!2635685 (= e!1663100 ((_ map or) (store ((as const (Array Token!8756 Bool)) false) (h!35942 lt!927854) true) (content!4313 (t!216743 lt!927854))))))

(assert (= (and d!747940 c!423819) b!2635684))

(assert (= (and d!747940 (not c!423819)) b!2635685))

(declare-fun m!2980071 () Bool)

(assert (=> b!2635685 m!2980071))

(declare-fun m!2980073 () Bool)

(assert (=> b!2635685 m!2980073))

(assert (=> d!747766 d!747940))

(declare-fun d!747942 () Bool)

(declare-fun c!423820 () Bool)

(assert (=> d!747942 (= c!423820 ((_ is Nil!30522) lt!927559))))

(declare-fun e!1663101 () (InoxSet Token!8756))

(assert (=> d!747942 (= (content!4313 lt!927559) e!1663101)))

(declare-fun b!2635686 () Bool)

(assert (=> b!2635686 (= e!1663101 ((as const (Array Token!8756 Bool)) false))))

(declare-fun b!2635687 () Bool)

(assert (=> b!2635687 (= e!1663101 ((_ map or) (store ((as const (Array Token!8756 Bool)) false) (h!35942 lt!927559) true) (content!4313 (t!216743 lt!927559))))))

(assert (= (and d!747942 c!423820) b!2635686))

(assert (= (and d!747942 (not c!423820)) b!2635687))

(declare-fun m!2980075 () Bool)

(assert (=> b!2635687 m!2980075))

(declare-fun m!2980077 () Bool)

(assert (=> b!2635687 m!2980077))

(assert (=> d!747766 d!747942))

(declare-fun d!747944 () Bool)

(declare-fun c!423825 () Bool)

(assert (=> d!747944 (= c!423825 ((_ is Empty!9528) (c!423640 lt!927572)))))

(declare-fun e!1663106 () List!30620)

(assert (=> d!747944 (= (list!11494 (c!423640 lt!927572)) e!1663106)))

(declare-fun b!2635699 () Bool)

(declare-fun e!1663107 () List!30620)

(assert (=> b!2635699 (= e!1663107 (++!7441 (list!11494 (left!23581 (c!423640 lt!927572))) (list!11494 (right!23911 (c!423640 lt!927572)))))))

(declare-fun b!2635696 () Bool)

(assert (=> b!2635696 (= e!1663106 Nil!30520)))

(declare-fun b!2635698 () Bool)

(declare-fun list!11497 (IArray!19061) List!30620)

(assert (=> b!2635698 (= e!1663107 (list!11497 (xs!12532 (c!423640 lt!927572))))))

(declare-fun b!2635697 () Bool)

(assert (=> b!2635697 (= e!1663106 e!1663107)))

(declare-fun c!423826 () Bool)

(assert (=> b!2635697 (= c!423826 ((_ is Leaf!14590) (c!423640 lt!927572)))))

(assert (= (and d!747944 c!423825) b!2635696))

(assert (= (and d!747944 (not c!423825)) b!2635697))

(assert (= (and b!2635697 c!423826) b!2635698))

(assert (= (and b!2635697 (not c!423826)) b!2635699))

(declare-fun m!2980079 () Bool)

(assert (=> b!2635699 m!2980079))

(declare-fun m!2980081 () Bool)

(assert (=> b!2635699 m!2980081))

(assert (=> b!2635699 m!2980079))

(assert (=> b!2635699 m!2980081))

(declare-fun m!2980083 () Bool)

(assert (=> b!2635699 m!2980083))

(declare-fun m!2980085 () Bool)

(assert (=> b!2635698 m!2980085))

(assert (=> d!747616 d!747944))

(declare-fun b!2635715 () Bool)

(declare-fun e!1663118 () Bool)

(assert (=> b!2635715 (= e!1663118 (>= (size!23607 lt!927748) (size!23607 lt!927747)))))

(declare-fun d!747946 () Bool)

(assert (=> d!747946 e!1663118))

(declare-fun res!1109793 () Bool)

(assert (=> d!747946 (=> res!1109793 e!1663118)))

(declare-fun lt!928040 () Bool)

(assert (=> d!747946 (= res!1109793 (not lt!928040))))

(declare-fun e!1663117 () Bool)

(assert (=> d!747946 (= lt!928040 e!1663117)))

(declare-fun res!1109792 () Bool)

(assert (=> d!747946 (=> res!1109792 e!1663117)))

(assert (=> d!747946 (= res!1109792 ((_ is Nil!30520) lt!927747))))

(assert (=> d!747946 (= (isPrefix!2441 lt!927747 lt!927748) lt!928040)))

(declare-fun b!2635713 () Bool)

(declare-fun res!1109790 () Bool)

(declare-fun e!1663116 () Bool)

(assert (=> b!2635713 (=> (not res!1109790) (not e!1663116))))

(declare-fun head!6045 (List!30620) C!15732)

(assert (=> b!2635713 (= res!1109790 (= (head!6045 lt!927747) (head!6045 lt!927748)))))

(declare-fun b!2635712 () Bool)

(assert (=> b!2635712 (= e!1663117 e!1663116)))

(declare-fun res!1109791 () Bool)

(assert (=> b!2635712 (=> (not res!1109791) (not e!1663116))))

(assert (=> b!2635712 (= res!1109791 (not ((_ is Nil!30520) lt!927748)))))

(declare-fun b!2635714 () Bool)

(declare-fun tail!4283 (List!30620) List!30620)

(assert (=> b!2635714 (= e!1663116 (isPrefix!2441 (tail!4283 lt!927747) (tail!4283 lt!927748)))))

(assert (= (and d!747946 (not res!1109792)) b!2635712))

(assert (= (and b!2635712 res!1109791) b!2635713))

(assert (= (and b!2635713 res!1109790) b!2635714))

(assert (= (and d!747946 (not res!1109793)) b!2635715))

(declare-fun m!2980087 () Bool)

(assert (=> b!2635715 m!2980087))

(declare-fun m!2980089 () Bool)

(assert (=> b!2635715 m!2980089))

(declare-fun m!2980091 () Bool)

(assert (=> b!2635713 m!2980091))

(declare-fun m!2980093 () Bool)

(assert (=> b!2635713 m!2980093))

(declare-fun m!2980095 () Bool)

(assert (=> b!2635714 m!2980095))

(declare-fun m!2980097 () Bool)

(assert (=> b!2635714 m!2980097))

(assert (=> b!2635714 m!2980095))

(assert (=> b!2635714 m!2980097))

(declare-fun m!2980099 () Bool)

(assert (=> b!2635714 m!2980099))

(assert (=> d!747692 d!747946))

(assert (=> d!747692 d!747894))

(assert (=> d!747692 d!747882))

(declare-fun d!747948 () Bool)

(assert (=> d!747948 true))

(declare-fun lt!928048 () Bool)

(declare-fun lambda!98917 () Int)

(declare-fun forall!6405 (List!30621 Int) Bool)

(assert (=> d!747948 (= lt!928048 (forall!6405 rules!1726 lambda!98917))))

(declare-fun e!1663129 () Bool)

(assert (=> d!747948 (= lt!928048 e!1663129)))

(declare-fun res!1109799 () Bool)

(assert (=> d!747948 (=> res!1109799 e!1663129)))

(assert (=> d!747948 (= res!1109799 (not ((_ is Cons!30521) rules!1726)))))

(assert (=> d!747948 (= (rulesValidInductive!1619 thiss!14197 rules!1726) lt!928048)))

(declare-fun b!2635730 () Bool)

(declare-fun e!1663128 () Bool)

(assert (=> b!2635730 (= e!1663129 e!1663128)))

(declare-fun res!1109798 () Bool)

(assert (=> b!2635730 (=> (not res!1109798) (not e!1663128))))

(declare-fun ruleValid!1540 (LexerInterface!4240 Rule!9086) Bool)

(assert (=> b!2635730 (= res!1109798 (ruleValid!1540 thiss!14197 (h!35941 rules!1726)))))

(declare-fun b!2635731 () Bool)

(assert (=> b!2635731 (= e!1663128 (rulesValidInductive!1619 thiss!14197 (t!216742 rules!1726)))))

(assert (= (and d!747948 (not res!1109799)) b!2635730))

(assert (= (and b!2635730 res!1109798) b!2635731))

(declare-fun m!2980113 () Bool)

(assert (=> d!747948 m!2980113))

(declare-fun m!2980115 () Bool)

(assert (=> b!2635730 m!2980115))

(assert (=> b!2635731 m!2979695))

(assert (=> d!747692 d!747948))

(declare-fun d!747960 () Bool)

(assert (=> d!747960 (= (isDefined!4804 (maxPrefixZipper!440 thiss!14197 rules!1726 (list!11490 (++!7439 lt!927573 lt!927565)))) (not (isEmpty!17422 (maxPrefixZipper!440 thiss!14197 rules!1726 (list!11490 (++!7439 lt!927573 lt!927565))))))))

(declare-fun bs!476124 () Bool)

(assert (= bs!476124 d!747960))

(assert (=> bs!476124 m!2979289))

(declare-fun m!2980117 () Bool)

(assert (=> bs!476124 m!2980117))

(assert (=> d!747692 d!747960))

(declare-fun d!747962 () Bool)

(assert (=> d!747962 (isPrefix!2441 lt!927747 lt!927748)))

(declare-fun lt!928051 () Unit!44539)

(declare-fun choose!15647 (List!30620 List!30620) Unit!44539)

(assert (=> d!747962 (= lt!928051 (choose!15647 lt!927747 lt!927748))))

(assert (=> d!747962 (= (lemmaIsPrefixRefl!1567 lt!927747 lt!927748) lt!928051)))

(declare-fun bs!476125 () Bool)

(assert (= bs!476125 d!747962))

(assert (=> bs!476125 m!2979293))

(declare-fun m!2980127 () Bool)

(assert (=> bs!476125 m!2980127))

(assert (=> d!747692 d!747962))

(declare-fun d!747966 () Bool)

(declare-fun isEmpty!17424 (Option!6038) Bool)

(assert (=> d!747966 (= (isDefined!4803 lt!927745) (not (isEmpty!17424 lt!927745)))))

(declare-fun bs!476126 () Bool)

(assert (= bs!476126 d!747966))

(declare-fun m!2980129 () Bool)

(assert (=> bs!476126 m!2980129))

(assert (=> d!747692 d!747966))

(declare-fun d!747968 () Bool)

(declare-fun lt!928054 () Int)

(assert (=> d!747968 (= lt!928054 (size!23607 (list!11490 (_2!17556 lt!927783))))))

(declare-fun size!23610 (Conc!9528) Int)

(assert (=> d!747968 (= lt!928054 (size!23610 (c!423640 (_2!17556 lt!927783))))))

(assert (=> d!747968 (= (size!23606 (_2!17556 lt!927783)) lt!928054)))

(declare-fun bs!476127 () Bool)

(assert (= bs!476127 d!747968))

(assert (=> bs!476127 m!2979383))

(assert (=> bs!476127 m!2979383))

(declare-fun m!2980131 () Bool)

(assert (=> bs!476127 m!2980131))

(declare-fun m!2980133 () Bool)

(assert (=> bs!476127 m!2980133))

(assert (=> b!2635163 d!747968))

(declare-fun d!747970 () Bool)

(declare-fun lt!928055 () Int)

(assert (=> d!747970 (= lt!928055 (size!23607 (list!11490 (seqFromList!3183 lt!927575))))))

(assert (=> d!747970 (= lt!928055 (size!23610 (c!423640 (seqFromList!3183 lt!927575))))))

(assert (=> d!747970 (= (size!23606 (seqFromList!3183 lt!927575)) lt!928055)))

(declare-fun bs!476128 () Bool)

(assert (= bs!476128 d!747970))

(assert (=> bs!476128 m!2978847))

(assert (=> bs!476128 m!2979373))

(assert (=> bs!476128 m!2979373))

(assert (=> bs!476128 m!2980049))

(declare-fun m!2980135 () Bool)

(assert (=> bs!476128 m!2980135))

(assert (=> b!2635163 d!747970))

(declare-fun d!747972 () Bool)

(declare-fun c!423836 () Bool)

(assert (=> d!747972 (= c!423836 ((_ is Nil!30522) lt!927847))))

(declare-fun e!1663132 () (InoxSet Token!8756))

(assert (=> d!747972 (= (content!4313 lt!927847) e!1663132)))

(declare-fun b!2635738 () Bool)

(assert (=> b!2635738 (= e!1663132 ((as const (Array Token!8756 Bool)) false))))

(declare-fun b!2635739 () Bool)

(assert (=> b!2635739 (= e!1663132 ((_ map or) (store ((as const (Array Token!8756 Bool)) false) (h!35942 lt!927847) true) (content!4313 (t!216743 lt!927847))))))

(assert (= (and d!747972 c!423836) b!2635738))

(assert (= (and d!747972 (not c!423836)) b!2635739))

(declare-fun m!2980137 () Bool)

(assert (=> b!2635739 m!2980137))

(declare-fun m!2980139 () Bool)

(assert (=> b!2635739 m!2980139))

(assert (=> d!747756 d!747972))

(assert (=> d!747756 d!747942))

(assert (=> b!2634898 d!747818))

(declare-fun d!747974 () Bool)

(assert (=> d!747974 (= (head!6044 (drop!1639 lt!927705 (+ 1 from!862))) (apply!7282 lt!927705 (+ 1 from!862)))))

(declare-fun lt!928056 () Unit!44539)

(assert (=> d!747974 (= lt!928056 (choose!15645 lt!927705 (+ 1 from!862)))))

(declare-fun e!1663133 () Bool)

(assert (=> d!747974 e!1663133))

(declare-fun res!1109800 () Bool)

(assert (=> d!747974 (=> (not res!1109800) (not e!1663133))))

(assert (=> d!747974 (= res!1109800 (>= (+ 1 from!862) 0))))

(assert (=> d!747974 (= (lemmaDropApply!854 lt!927705 (+ 1 from!862)) lt!928056)))

(declare-fun b!2635740 () Bool)

(assert (=> b!2635740 (= e!1663133 (< (+ 1 from!862) (size!23608 lt!927705)))))

(assert (= (and d!747974 res!1109800) b!2635740))

(assert (=> d!747974 m!2979197))

(assert (=> d!747974 m!2979197))

(assert (=> d!747974 m!2979199))

(assert (=> d!747974 m!2979205))

(declare-fun m!2980141 () Bool)

(assert (=> d!747974 m!2980141))

(declare-fun m!2980143 () Bool)

(assert (=> b!2635740 m!2980143))

(assert (=> b!2635043 d!747974))

(declare-fun d!747976 () Bool)

(assert (=> d!747976 (= (tail!4282 (drop!1639 lt!927711 (+ 1 from!862))) (drop!1639 lt!927711 (+ 1 from!862 1)))))

(declare-fun lt!928057 () Unit!44539)

(assert (=> d!747976 (= lt!928057 (choose!15644 lt!927711 (+ 1 from!862)))))

(declare-fun e!1663134 () Bool)

(assert (=> d!747976 e!1663134))

(declare-fun res!1109801 () Bool)

(assert (=> d!747976 (=> (not res!1109801) (not e!1663134))))

(assert (=> d!747976 (= res!1109801 (>= (+ 1 from!862) 0))))

(assert (=> d!747976 (= (lemmaDropTail!828 lt!927711 (+ 1 from!862)) lt!928057)))

(declare-fun b!2635741 () Bool)

(assert (=> b!2635741 (= e!1663134 (< (+ 1 from!862) (size!23608 lt!927711)))))

(assert (= (and d!747976 res!1109801) b!2635741))

(assert (=> d!747976 m!2979193))

(assert (=> d!747976 m!2979193))

(assert (=> d!747976 m!2979195))

(assert (=> d!747976 m!2979215))

(declare-fun m!2980145 () Bool)

(assert (=> d!747976 m!2980145))

(declare-fun m!2980147 () Bool)

(assert (=> b!2635741 m!2980147))

(assert (=> b!2635043 d!747976))

(declare-fun d!747978 () Bool)

(assert (=> d!747978 (= (tail!4282 (drop!1639 lt!927711 (+ 1 from!862))) (t!216743 (drop!1639 lt!927711 (+ 1 from!862))))))

(assert (=> b!2635043 d!747978))

(declare-fun d!747980 () Bool)

(assert (=> d!747980 (= (head!6044 (drop!1639 lt!927705 (+ 1 from!862))) (h!35942 (drop!1639 lt!927705 (+ 1 from!862))))))

(assert (=> b!2635043 d!747980))

(declare-fun d!747982 () Bool)

(declare-fun lt!928058 () Token!8756)

(assert (=> d!747982 (= lt!928058 (apply!7282 (list!11491 v!6381) (+ 1 from!862)))))

(assert (=> d!747982 (= lt!928058 (apply!7284 (c!423641 v!6381) (+ 1 from!862)))))

(declare-fun e!1663135 () Bool)

(assert (=> d!747982 e!1663135))

(declare-fun res!1109802 () Bool)

(assert (=> d!747982 (=> (not res!1109802) (not e!1663135))))

(assert (=> d!747982 (= res!1109802 (<= 0 (+ 1 from!862)))))

(assert (=> d!747982 (= (apply!7281 v!6381 (+ 1 from!862)) lt!928058)))

(declare-fun b!2635742 () Bool)

(assert (=> b!2635742 (= e!1663135 (< (+ 1 from!862) (size!23601 v!6381)))))

(assert (= (and d!747982 res!1109802) b!2635742))

(assert (=> d!747982 m!2978913))

(assert (=> d!747982 m!2978913))

(declare-fun m!2980149 () Bool)

(assert (=> d!747982 m!2980149))

(declare-fun m!2980151 () Bool)

(assert (=> d!747982 m!2980151))

(assert (=> b!2635742 m!2978857))

(assert (=> b!2635043 d!747982))

(declare-fun b!2635743 () Bool)

(declare-fun e!1663140 () Int)

(assert (=> b!2635743 (= e!1663140 0)))

(declare-fun b!2635744 () Bool)

(declare-fun call!169625 () Int)

(assert (=> b!2635744 (= e!1663140 (- call!169625 (+ 1 from!862)))))

(declare-fun b!2635745 () Bool)

(declare-fun e!1663139 () List!30622)

(assert (=> b!2635745 (= e!1663139 lt!927711)))

(declare-fun b!2635746 () Bool)

(declare-fun e!1663138 () Int)

(assert (=> b!2635746 (= e!1663138 call!169625)))

(declare-fun b!2635747 () Bool)

(declare-fun e!1663137 () List!30622)

(assert (=> b!2635747 (= e!1663137 Nil!30522)))

(declare-fun bm!169620 () Bool)

(assert (=> bm!169620 (= call!169625 (size!23608 lt!927711))))

(declare-fun b!2635748 () Bool)

(assert (=> b!2635748 (= e!1663139 (drop!1639 (t!216743 lt!927711) (- (+ 1 from!862) 1)))))

(declare-fun b!2635749 () Bool)

(declare-fun e!1663136 () Bool)

(declare-fun lt!928059 () List!30622)

(assert (=> b!2635749 (= e!1663136 (= (size!23608 lt!928059) e!1663138))))

(declare-fun c!423838 () Bool)

(assert (=> b!2635749 (= c!423838 (<= (+ 1 from!862) 0))))

(declare-fun b!2635750 () Bool)

(assert (=> b!2635750 (= e!1663137 e!1663139)))

(declare-fun c!423839 () Bool)

(assert (=> b!2635750 (= c!423839 (<= (+ 1 from!862) 0))))

(declare-fun b!2635751 () Bool)

(assert (=> b!2635751 (= e!1663138 e!1663140)))

(declare-fun c!423837 () Bool)

(assert (=> b!2635751 (= c!423837 (>= (+ 1 from!862) call!169625))))

(declare-fun d!747984 () Bool)

(assert (=> d!747984 e!1663136))

(declare-fun res!1109803 () Bool)

(assert (=> d!747984 (=> (not res!1109803) (not e!1663136))))

(assert (=> d!747984 (= res!1109803 (= ((_ map implies) (content!4313 lt!928059) (content!4313 lt!927711)) ((as const (InoxSet Token!8756)) true)))))

(assert (=> d!747984 (= lt!928059 e!1663137)))

(declare-fun c!423840 () Bool)

(assert (=> d!747984 (= c!423840 ((_ is Nil!30522) lt!927711))))

(assert (=> d!747984 (= (drop!1639 lt!927711 (+ 1 from!862)) lt!928059)))

(assert (= (and d!747984 c!423840) b!2635747))

(assert (= (and d!747984 (not c!423840)) b!2635750))

(assert (= (and b!2635750 c!423839) b!2635745))

(assert (= (and b!2635750 (not c!423839)) b!2635748))

(assert (= (and d!747984 res!1109803) b!2635749))

(assert (= (and b!2635749 c!423838) b!2635746))

(assert (= (and b!2635749 (not c!423838)) b!2635751))

(assert (= (and b!2635751 c!423837) b!2635743))

(assert (= (and b!2635751 (not c!423837)) b!2635744))

(assert (= (or b!2635746 b!2635751 b!2635744) bm!169620))

(assert (=> bm!169620 m!2980147))

(declare-fun m!2980153 () Bool)

(assert (=> b!2635748 m!2980153))

(declare-fun m!2980155 () Bool)

(assert (=> b!2635749 m!2980155))

(declare-fun m!2980157 () Bool)

(assert (=> d!747984 m!2980157))

(declare-fun m!2980159 () Bool)

(assert (=> d!747984 m!2980159))

(assert (=> b!2635043 d!747984))

(declare-fun b!2635752 () Bool)

(declare-fun e!1663145 () Int)

(assert (=> b!2635752 (= e!1663145 0)))

(declare-fun b!2635753 () Bool)

(declare-fun call!169626 () Int)

(assert (=> b!2635753 (= e!1663145 (- call!169626 (+ 1 from!862 1)))))

(declare-fun b!2635754 () Bool)

(declare-fun e!1663144 () List!30622)

(assert (=> b!2635754 (= e!1663144 lt!927711)))

(declare-fun b!2635755 () Bool)

(declare-fun e!1663143 () Int)

(assert (=> b!2635755 (= e!1663143 call!169626)))

(declare-fun b!2635756 () Bool)

(declare-fun e!1663142 () List!30622)

(assert (=> b!2635756 (= e!1663142 Nil!30522)))

(declare-fun bm!169621 () Bool)

(assert (=> bm!169621 (= call!169626 (size!23608 lt!927711))))

(declare-fun b!2635757 () Bool)

(assert (=> b!2635757 (= e!1663144 (drop!1639 (t!216743 lt!927711) (- (+ 1 from!862 1) 1)))))

(declare-fun b!2635758 () Bool)

(declare-fun e!1663141 () Bool)

(declare-fun lt!928060 () List!30622)

(assert (=> b!2635758 (= e!1663141 (= (size!23608 lt!928060) e!1663143))))

(declare-fun c!423842 () Bool)

(assert (=> b!2635758 (= c!423842 (<= (+ 1 from!862 1) 0))))

(declare-fun b!2635759 () Bool)

(assert (=> b!2635759 (= e!1663142 e!1663144)))

(declare-fun c!423843 () Bool)

(assert (=> b!2635759 (= c!423843 (<= (+ 1 from!862 1) 0))))

(declare-fun b!2635760 () Bool)

(assert (=> b!2635760 (= e!1663143 e!1663145)))

(declare-fun c!423841 () Bool)

(assert (=> b!2635760 (= c!423841 (>= (+ 1 from!862 1) call!169626))))

(declare-fun d!747986 () Bool)

(assert (=> d!747986 e!1663141))

(declare-fun res!1109804 () Bool)

(assert (=> d!747986 (=> (not res!1109804) (not e!1663141))))

(assert (=> d!747986 (= res!1109804 (= ((_ map implies) (content!4313 lt!928060) (content!4313 lt!927711)) ((as const (InoxSet Token!8756)) true)))))

(assert (=> d!747986 (= lt!928060 e!1663142)))

(declare-fun c!423844 () Bool)

(assert (=> d!747986 (= c!423844 ((_ is Nil!30522) lt!927711))))

(assert (=> d!747986 (= (drop!1639 lt!927711 (+ 1 from!862 1)) lt!928060)))

(assert (= (and d!747986 c!423844) b!2635756))

(assert (= (and d!747986 (not c!423844)) b!2635759))

(assert (= (and b!2635759 c!423843) b!2635754))

(assert (= (and b!2635759 (not c!423843)) b!2635757))

(assert (= (and d!747986 res!1109804) b!2635758))

(assert (= (and b!2635758 c!423842) b!2635755))

(assert (= (and b!2635758 (not c!423842)) b!2635760))

(assert (= (and b!2635760 c!423841) b!2635752))

(assert (= (and b!2635760 (not c!423841)) b!2635753))

(assert (= (or b!2635755 b!2635760 b!2635753) bm!169621))

(assert (=> bm!169621 m!2980147))

(declare-fun m!2980161 () Bool)

(assert (=> b!2635757 m!2980161))

(declare-fun m!2980163 () Bool)

(assert (=> b!2635758 m!2980163))

(declare-fun m!2980165 () Bool)

(assert (=> d!747986 m!2980165))

(assert (=> d!747986 m!2980159))

(assert (=> b!2635043 d!747986))

(declare-fun bs!476129 () Bool)

(declare-fun d!747988 () Bool)

(assert (= bs!476129 (and d!747988 d!747628)))

(declare-fun lambda!98918 () Int)

(assert (=> bs!476129 (= lambda!98918 lambda!98892)))

(declare-fun bs!476130 () Bool)

(assert (= bs!476130 (and d!747988 b!2634859)))

(assert (=> bs!476130 (= lambda!98918 lambda!98881)))

(declare-fun bs!476131 () Bool)

(assert (= bs!476131 (and d!747988 b!2634851)))

(assert (=> bs!476131 (not (= lambda!98918 lambda!98882))))

(declare-fun bs!476132 () Bool)

(assert (= bs!476132 (and d!747988 b!2635043)))

(assert (=> bs!476132 (not (= lambda!98918 lambda!98893))))

(declare-fun bs!476133 () Bool)

(assert (= bs!476133 (and d!747988 d!747778)))

(assert (=> bs!476133 (not (= lambda!98918 lambda!98904))))

(declare-fun bs!476134 () Bool)

(declare-fun b!2635763 () Bool)

(assert (= bs!476134 (and b!2635763 d!747628)))

(declare-fun lambda!98919 () Int)

(assert (=> bs!476134 (not (= lambda!98919 lambda!98892))))

(declare-fun bs!476135 () Bool)

(assert (= bs!476135 (and b!2635763 d!747988)))

(assert (=> bs!476135 (not (= lambda!98919 lambda!98918))))

(declare-fun bs!476136 () Bool)

(assert (= bs!476136 (and b!2635763 b!2634859)))

(assert (=> bs!476136 (not (= lambda!98919 lambda!98881))))

(declare-fun bs!476137 () Bool)

(assert (= bs!476137 (and b!2635763 b!2634851)))

(assert (=> bs!476137 (= lambda!98919 lambda!98882)))

(declare-fun bs!476138 () Bool)

(assert (= bs!476138 (and b!2635763 b!2635043)))

(assert (=> bs!476138 (= lambda!98919 lambda!98893)))

(declare-fun bs!476139 () Bool)

(assert (= bs!476139 (and b!2635763 d!747778)))

(assert (=> bs!476139 (= lambda!98919 lambda!98904)))

(declare-fun b!2635772 () Bool)

(declare-fun e!1663154 () Bool)

(assert (=> b!2635772 (= e!1663154 true)))

(declare-fun b!2635771 () Bool)

(declare-fun e!1663153 () Bool)

(assert (=> b!2635771 (= e!1663153 e!1663154)))

(declare-fun b!2635770 () Bool)

(declare-fun e!1663152 () Bool)

(assert (=> b!2635770 (= e!1663152 e!1663153)))

(assert (=> b!2635763 e!1663152))

(assert (= b!2635771 b!2635772))

(assert (= b!2635770 b!2635771))

(assert (= (and b!2635763 ((_ is Cons!30521) rules!1726)) b!2635770))

(assert (=> b!2635772 (< (dynLambda!13088 order!16567 (toValue!6561 (transformation!4643 (h!35941 rules!1726)))) (dynLambda!13089 order!16569 lambda!98919))))

(assert (=> b!2635772 (< (dynLambda!13090 order!16571 (toChars!6420 (transformation!4643 (h!35941 rules!1726)))) (dynLambda!13089 order!16569 lambda!98919))))

(assert (=> b!2635763 true))

(declare-fun lt!928069 () BalanceConc!18670)

(assert (=> d!747988 (= (list!11490 lt!928069) (printWithSeparatorTokenWhenNeededList!659 thiss!14197 rules!1726 (dropList!946 v!6381 (+ 1 from!862 1)) separatorToken!156))))

(declare-fun e!1663151 () BalanceConc!18670)

(assert (=> d!747988 (= lt!928069 e!1663151)))

(declare-fun c!423846 () Bool)

(assert (=> d!747988 (= c!423846 (>= (+ 1 from!862 1) (size!23601 v!6381)))))

(declare-fun lt!928063 () Unit!44539)

(assert (=> d!747988 (= lt!928063 (lemmaContentSubsetPreservesForall!312 (list!11491 v!6381) (dropList!946 v!6381 (+ 1 from!862 1)) lambda!98918))))

(declare-fun e!1663147 () Bool)

(assert (=> d!747988 e!1663147))

(declare-fun res!1109806 () Bool)

(assert (=> d!747988 (=> (not res!1109806) (not e!1663147))))

(assert (=> d!747988 (= res!1109806 (>= (+ 1 from!862 1) 0))))

(assert (=> d!747988 (= (printWithSeparatorTokenWhenNeededRec!514 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862 1)) lt!928069)))

(declare-fun b!2635761 () Bool)

(declare-fun e!1663150 () BalanceConc!18670)

(declare-fun call!169630 () BalanceConc!18670)

(assert (=> b!2635761 (= e!1663150 call!169630)))

(declare-fun e!1663146 () Bool)

(declare-fun b!2635762 () Bool)

(declare-fun lt!928073 () Option!6038)

(assert (=> b!2635762 (= e!1663146 (= (_1!17557 (v!32462 lt!928073)) (apply!7281 v!6381 (+ 1 from!862 1))))))

(declare-fun bm!169622 () Bool)

(declare-fun call!169631 () Token!8756)

(assert (=> bm!169622 (= call!169631 (apply!7281 v!6381 (+ 1 from!862 1)))))

(assert (=> b!2635763 (= e!1663151 e!1663150)))

(declare-fun lt!928062 () List!30622)

(assert (=> b!2635763 (= lt!928062 (list!11491 v!6381))))

(declare-fun lt!928061 () Unit!44539)

(assert (=> b!2635763 (= lt!928061 (lemmaDropApply!854 lt!928062 (+ 1 from!862 1)))))

(assert (=> b!2635763 (= (head!6044 (drop!1639 lt!928062 (+ 1 from!862 1))) (apply!7282 lt!928062 (+ 1 from!862 1)))))

(declare-fun lt!928072 () Unit!44539)

(assert (=> b!2635763 (= lt!928072 lt!928061)))

(declare-fun lt!928068 () List!30622)

(assert (=> b!2635763 (= lt!928068 (list!11491 v!6381))))

(declare-fun lt!928074 () Unit!44539)

(assert (=> b!2635763 (= lt!928074 (lemmaDropTail!828 lt!928068 (+ 1 from!862 1)))))

(assert (=> b!2635763 (= (tail!4282 (drop!1639 lt!928068 (+ 1 from!862 1))) (drop!1639 lt!928068 (+ 1 from!862 1 1)))))

(declare-fun lt!928067 () Unit!44539)

(assert (=> b!2635763 (= lt!928067 lt!928074)))

(declare-fun lt!928071 () Unit!44539)

(assert (=> b!2635763 (= lt!928071 (forallContained!995 (list!11491 v!6381) lambda!98919 (apply!7281 v!6381 (+ 1 from!862 1))))))

(declare-fun lt!928066 () BalanceConc!18670)

(assert (=> b!2635763 (= lt!928066 (printWithSeparatorTokenWhenNeededRec!514 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862 1 1)))))

(assert (=> b!2635763 (= lt!928073 (maxPrefixZipperSequence!966 thiss!14197 rules!1726 (++!7439 (charsOf!2930 (apply!7281 v!6381 (+ 1 from!862 1))) lt!928066)))))

(declare-fun res!1109807 () Bool)

(assert (=> b!2635763 (= res!1109807 ((_ is Some!6037) lt!928073))))

(assert (=> b!2635763 (=> (not res!1109807) (not e!1663146))))

(declare-fun c!423845 () Bool)

(assert (=> b!2635763 (= c!423845 e!1663146)))

(declare-fun b!2635764 () Bool)

(declare-fun c!423847 () Bool)

(declare-fun e!1663149 () Bool)

(assert (=> b!2635764 (= c!423847 e!1663149)))

(declare-fun res!1109805 () Bool)

(assert (=> b!2635764 (=> (not res!1109805) (not e!1663149))))

(assert (=> b!2635764 (= res!1109805 ((_ is Some!6037) lt!928073))))

(declare-fun e!1663148 () BalanceConc!18670)

(assert (=> b!2635764 (= e!1663150 e!1663148)))

(declare-fun call!169629 () Token!8756)

(declare-fun bm!169623 () Bool)

(declare-fun call!169627 () BalanceConc!18670)

(assert (=> bm!169623 (= call!169627 (charsOf!2930 (ite c!423847 separatorToken!156 call!169629)))))

(declare-fun b!2635765 () Bool)

(assert (=> b!2635765 (= e!1663149 (not (= (_1!17557 (v!32462 lt!928073)) call!169631)))))

(declare-fun bm!169624 () Bool)

(assert (=> bm!169624 (= call!169629 call!169631)))

(declare-fun call!169628 () BalanceConc!18670)

(declare-fun bm!169625 () Bool)

(assert (=> bm!169625 (= call!169630 (++!7439 call!169628 (ite c!423845 lt!928066 call!169627)))))

(declare-fun b!2635766 () Bool)

(assert (=> b!2635766 (= e!1663151 (BalanceConc!18671 Empty!9528))))

(declare-fun b!2635767 () Bool)

(assert (=> b!2635767 (= e!1663147 (<= (+ 1 from!862 1) (size!23601 v!6381)))))

(declare-fun b!2635768 () Bool)

(assert (=> b!2635768 (= e!1663148 (++!7439 call!169630 lt!928066))))

(declare-fun b!2635769 () Bool)

(assert (=> b!2635769 (= e!1663148 (BalanceConc!18671 Empty!9528))))

(assert (=> b!2635769 (= (print!1641 thiss!14197 (singletonSeq!2060 call!169629)) (printTailRec!1127 thiss!14197 (singletonSeq!2060 call!169629) 0 (BalanceConc!18671 Empty!9528)))))

(declare-fun lt!928064 () Unit!44539)

(declare-fun Unit!44547 () Unit!44539)

(assert (=> b!2635769 (= lt!928064 Unit!44547)))

(declare-fun lt!928065 () Unit!44539)

(assert (=> b!2635769 (= lt!928065 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!802 thiss!14197 rules!1726 (list!11490 call!169627) (list!11490 lt!928066)))))

(assert (=> b!2635769 false))

(declare-fun lt!928070 () Unit!44539)

(declare-fun Unit!44548 () Unit!44539)

(assert (=> b!2635769 (= lt!928070 Unit!44548)))

(declare-fun bm!169626 () Bool)

(assert (=> bm!169626 (= call!169628 (charsOf!2930 (ite c!423845 call!169631 call!169629)))))

(assert (= (and d!747988 res!1109806) b!2635767))

(assert (= (and d!747988 c!423846) b!2635766))

(assert (= (and d!747988 (not c!423846)) b!2635763))

(assert (= (and b!2635763 res!1109807) b!2635762))

(assert (= (and b!2635763 c!423845) b!2635761))

(assert (= (and b!2635763 (not c!423845)) b!2635764))

(assert (= (and b!2635764 res!1109805) b!2635765))

(assert (= (and b!2635764 c!423847) b!2635768))

(assert (= (and b!2635764 (not c!423847)) b!2635769))

(assert (= (or b!2635768 b!2635769) bm!169624))

(assert (= (or b!2635768 b!2635769) bm!169623))

(assert (= (or b!2635761 b!2635765 bm!169624) bm!169622))

(assert (= (or b!2635761 b!2635768) bm!169626))

(assert (= (or b!2635761 b!2635768) bm!169625))

(declare-fun m!2980167 () Bool)

(assert (=> b!2635769 m!2980167))

(assert (=> b!2635769 m!2980167))

(declare-fun m!2980169 () Bool)

(assert (=> b!2635769 m!2980169))

(assert (=> b!2635769 m!2980167))

(declare-fun m!2980171 () Bool)

(assert (=> b!2635769 m!2980171))

(declare-fun m!2980173 () Bool)

(assert (=> b!2635769 m!2980173))

(declare-fun m!2980175 () Bool)

(assert (=> b!2635769 m!2980175))

(declare-fun m!2980177 () Bool)

(assert (=> b!2635769 m!2980177))

(assert (=> b!2635769 m!2980175))

(assert (=> b!2635769 m!2980173))

(declare-fun m!2980179 () Bool)

(assert (=> b!2635768 m!2980179))

(declare-fun m!2980181 () Bool)

(assert (=> d!747988 m!2980181))

(declare-fun m!2980183 () Bool)

(assert (=> d!747988 m!2980183))

(assert (=> d!747988 m!2978913))

(declare-fun m!2980185 () Bool)

(assert (=> d!747988 m!2980185))

(assert (=> d!747988 m!2980181))

(assert (=> d!747988 m!2978913))

(assert (=> d!747988 m!2980181))

(declare-fun m!2980187 () Bool)

(assert (=> d!747988 m!2980187))

(assert (=> d!747988 m!2978857))

(declare-fun m!2980189 () Bool)

(assert (=> b!2635763 m!2980189))

(declare-fun m!2980191 () Bool)

(assert (=> b!2635763 m!2980191))

(declare-fun m!2980193 () Bool)

(assert (=> b!2635763 m!2980193))

(declare-fun m!2980195 () Bool)

(assert (=> b!2635763 m!2980195))

(assert (=> b!2635763 m!2980193))

(assert (=> b!2635763 m!2978913))

(declare-fun m!2980197 () Bool)

(assert (=> b!2635763 m!2980197))

(declare-fun m!2980199 () Bool)

(assert (=> b!2635763 m!2980199))

(declare-fun m!2980201 () Bool)

(assert (=> b!2635763 m!2980201))

(declare-fun m!2980203 () Bool)

(assert (=> b!2635763 m!2980203))

(declare-fun m!2980205 () Bool)

(assert (=> b!2635763 m!2980205))

(assert (=> b!2635763 m!2980197))

(assert (=> b!2635763 m!2980203))

(declare-fun m!2980207 () Bool)

(assert (=> b!2635763 m!2980207))

(declare-fun m!2980209 () Bool)

(assert (=> b!2635763 m!2980209))

(declare-fun m!2980211 () Bool)

(assert (=> b!2635763 m!2980211))

(assert (=> b!2635763 m!2980197))

(assert (=> b!2635763 m!2980189))

(declare-fun m!2980213 () Bool)

(assert (=> b!2635763 m!2980213))

(assert (=> b!2635763 m!2980205))

(declare-fun m!2980215 () Bool)

(assert (=> b!2635763 m!2980215))

(assert (=> b!2635763 m!2978913))

(declare-fun m!2980217 () Bool)

(assert (=> bm!169625 m!2980217))

(declare-fun m!2980219 () Bool)

(assert (=> bm!169623 m!2980219))

(assert (=> b!2635767 m!2978857))

(declare-fun m!2980221 () Bool)

(assert (=> bm!169626 m!2980221))

(assert (=> b!2635762 m!2980197))

(assert (=> bm!169622 m!2980197))

(assert (=> b!2635043 d!747988))

(declare-fun b!2635775 () Bool)

(declare-fun res!1109809 () Bool)

(declare-fun e!1663155 () Bool)

(assert (=> b!2635775 (=> (not res!1109809) (not e!1663155))))

(assert (=> b!2635775 (= res!1109809 (>= (height!1380 (++!7443 (c!423640 (charsOf!2930 (apply!7281 v!6381 (+ 1 from!862)))) (c!423640 lt!927709))) (max!0 (height!1380 (c!423640 (charsOf!2930 (apply!7281 v!6381 (+ 1 from!862))))) (height!1380 (c!423640 lt!927709)))))))

(declare-fun b!2635776 () Bool)

(declare-fun lt!928075 () BalanceConc!18670)

(assert (=> b!2635776 (= e!1663155 (= (list!11490 lt!928075) (++!7441 (list!11490 (charsOf!2930 (apply!7281 v!6381 (+ 1 from!862)))) (list!11490 lt!927709))))))

(declare-fun b!2635774 () Bool)

(declare-fun res!1109810 () Bool)

(assert (=> b!2635774 (=> (not res!1109810) (not e!1663155))))

(assert (=> b!2635774 (= res!1109810 (<= (height!1380 (++!7443 (c!423640 (charsOf!2930 (apply!7281 v!6381 (+ 1 from!862)))) (c!423640 lt!927709))) (+ (max!0 (height!1380 (c!423640 (charsOf!2930 (apply!7281 v!6381 (+ 1 from!862))))) (height!1380 (c!423640 lt!927709))) 1)))))

(declare-fun d!747990 () Bool)

(assert (=> d!747990 e!1663155))

(declare-fun res!1109808 () Bool)

(assert (=> d!747990 (=> (not res!1109808) (not e!1663155))))

(assert (=> d!747990 (= res!1109808 (appendAssocInst!636 (c!423640 (charsOf!2930 (apply!7281 v!6381 (+ 1 from!862)))) (c!423640 lt!927709)))))

(assert (=> d!747990 (= lt!928075 (BalanceConc!18671 (++!7443 (c!423640 (charsOf!2930 (apply!7281 v!6381 (+ 1 from!862)))) (c!423640 lt!927709))))))

(assert (=> d!747990 (= (++!7439 (charsOf!2930 (apply!7281 v!6381 (+ 1 from!862))) lt!927709) lt!928075)))

(declare-fun b!2635773 () Bool)

(declare-fun res!1109811 () Bool)

(assert (=> b!2635773 (=> (not res!1109811) (not e!1663155))))

(assert (=> b!2635773 (= res!1109811 (isBalanced!2887 (++!7443 (c!423640 (charsOf!2930 (apply!7281 v!6381 (+ 1 from!862)))) (c!423640 lt!927709))))))

(assert (= (and d!747990 res!1109808) b!2635773))

(assert (= (and b!2635773 res!1109811) b!2635774))

(assert (= (and b!2635774 res!1109810) b!2635775))

(assert (= (and b!2635775 res!1109809) b!2635776))

(declare-fun m!2980223 () Bool)

(assert (=> b!2635775 m!2980223))

(declare-fun m!2980225 () Bool)

(assert (=> b!2635775 m!2980225))

(declare-fun m!2980227 () Bool)

(assert (=> b!2635775 m!2980227))

(assert (=> b!2635775 m!2980223))

(assert (=> b!2635775 m!2980225))

(declare-fun m!2980229 () Bool)

(assert (=> b!2635775 m!2980229))

(assert (=> b!2635775 m!2980227))

(declare-fun m!2980231 () Bool)

(assert (=> b!2635775 m!2980231))

(declare-fun m!2980233 () Bool)

(assert (=> b!2635776 m!2980233))

(assert (=> b!2635776 m!2979207))

(declare-fun m!2980235 () Bool)

(assert (=> b!2635776 m!2980235))

(assert (=> b!2635776 m!2979179))

(assert (=> b!2635776 m!2980235))

(assert (=> b!2635776 m!2979179))

(declare-fun m!2980237 () Bool)

(assert (=> b!2635776 m!2980237))

(assert (=> b!2635773 m!2980227))

(assert (=> b!2635773 m!2980227))

(declare-fun m!2980239 () Bool)

(assert (=> b!2635773 m!2980239))

(declare-fun m!2980241 () Bool)

(assert (=> d!747990 m!2980241))

(assert (=> d!747990 m!2980227))

(assert (=> b!2635774 m!2980223))

(assert (=> b!2635774 m!2980225))

(assert (=> b!2635774 m!2980227))

(assert (=> b!2635774 m!2980223))

(assert (=> b!2635774 m!2980225))

(assert (=> b!2635774 m!2980229))

(assert (=> b!2635774 m!2980227))

(assert (=> b!2635774 m!2980231))

(assert (=> b!2635043 d!747990))

(assert (=> b!2635043 d!747748))

(declare-fun d!747992 () Bool)

(declare-fun lt!928076 () Token!8756)

(assert (=> d!747992 (contains!5804 lt!927705 lt!928076)))

(declare-fun e!1663157 () Token!8756)

(assert (=> d!747992 (= lt!928076 e!1663157)))

(declare-fun c!423848 () Bool)

(assert (=> d!747992 (= c!423848 (= (+ 1 from!862) 0))))

(declare-fun e!1663156 () Bool)

(assert (=> d!747992 e!1663156))

(declare-fun res!1109812 () Bool)

(assert (=> d!747992 (=> (not res!1109812) (not e!1663156))))

(assert (=> d!747992 (= res!1109812 (<= 0 (+ 1 from!862)))))

(assert (=> d!747992 (= (apply!7282 lt!927705 (+ 1 from!862)) lt!928076)))

(declare-fun b!2635777 () Bool)

(assert (=> b!2635777 (= e!1663156 (< (+ 1 from!862) (size!23608 lt!927705)))))

(declare-fun b!2635778 () Bool)

(assert (=> b!2635778 (= e!1663157 (head!6044 lt!927705))))

(declare-fun b!2635779 () Bool)

(assert (=> b!2635779 (= e!1663157 (apply!7282 (tail!4282 lt!927705) (- (+ 1 from!862) 1)))))

(assert (= (and d!747992 res!1109812) b!2635777))

(assert (= (and d!747992 c!423848) b!2635778))

(assert (= (and d!747992 (not c!423848)) b!2635779))

(declare-fun m!2980243 () Bool)

(assert (=> d!747992 m!2980243))

(assert (=> b!2635777 m!2980143))

(declare-fun m!2980245 () Bool)

(assert (=> b!2635778 m!2980245))

(declare-fun m!2980247 () Bool)

(assert (=> b!2635779 m!2980247))

(assert (=> b!2635779 m!2980247))

(declare-fun m!2980249 () Bool)

(assert (=> b!2635779 m!2980249))

(assert (=> b!2635043 d!747992))

(declare-fun d!747994 () Bool)

(declare-fun lt!928077 () BalanceConc!18670)

(assert (=> d!747994 (= (list!11490 lt!928077) (originalCharacters!5409 (apply!7281 v!6381 (+ 1 from!862))))))

(assert (=> d!747994 (= lt!928077 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 (apply!7281 v!6381 (+ 1 from!862))))) (value!149930 (apply!7281 v!6381 (+ 1 from!862)))))))

(assert (=> d!747994 (= (charsOf!2930 (apply!7281 v!6381 (+ 1 from!862))) lt!928077)))

(declare-fun b_lambda!79395 () Bool)

(assert (=> (not b_lambda!79395) (not d!747994)))

(declare-fun t!216797 () Bool)

(declare-fun tb!143795 () Bool)

(assert (=> (and b!2634850 (= (toChars!6420 (transformation!4643 (h!35941 rules!1726))) (toChars!6420 (transformation!4643 (rule!7027 (apply!7281 v!6381 (+ 1 from!862)))))) t!216797) tb!143795))

(declare-fun tp!835043 () Bool)

(declare-fun b!2635780 () Bool)

(declare-fun e!1663158 () Bool)

(assert (=> b!2635780 (= e!1663158 (and (inv!41409 (c!423640 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 (apply!7281 v!6381 (+ 1 from!862))))) (value!149930 (apply!7281 v!6381 (+ 1 from!862)))))) tp!835043))))

(declare-fun result!178738 () Bool)

(assert (=> tb!143795 (= result!178738 (and (inv!41410 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 (apply!7281 v!6381 (+ 1 from!862))))) (value!149930 (apply!7281 v!6381 (+ 1 from!862))))) e!1663158))))

(assert (= tb!143795 b!2635780))

(declare-fun m!2980251 () Bool)

(assert (=> b!2635780 m!2980251))

(declare-fun m!2980253 () Bool)

(assert (=> tb!143795 m!2980253))

(assert (=> d!747994 t!216797))

(declare-fun b_and!193007 () Bool)

(assert (= b_and!192995 (and (=> t!216797 result!178738) b_and!193007)))

(declare-fun t!216799 () Bool)

(declare-fun tb!143797 () Bool)

(assert (=> (and b!2634862 (= (toChars!6420 (transformation!4643 (rule!7027 separatorToken!156))) (toChars!6420 (transformation!4643 (rule!7027 (apply!7281 v!6381 (+ 1 from!862)))))) t!216799) tb!143797))

(declare-fun result!178740 () Bool)

(assert (= result!178740 result!178738))

(assert (=> d!747994 t!216799))

(declare-fun b_and!193009 () Bool)

(assert (= b_and!192997 (and (=> t!216799 result!178740) b_and!193009)))

(declare-fun tb!143799 () Bool)

(declare-fun t!216801 () Bool)

(assert (=> (and b!2635424 (= (toChars!6420 (transformation!4643 (h!35941 (t!216742 rules!1726)))) (toChars!6420 (transformation!4643 (rule!7027 (apply!7281 v!6381 (+ 1 from!862)))))) t!216801) tb!143799))

(declare-fun result!178742 () Bool)

(assert (= result!178742 result!178738))

(assert (=> d!747994 t!216801))

(declare-fun b_and!193011 () Bool)

(assert (= b_and!193005 (and (=> t!216801 result!178742) b_and!193011)))

(declare-fun m!2980255 () Bool)

(assert (=> d!747994 m!2980255))

(declare-fun m!2980257 () Bool)

(assert (=> d!747994 m!2980257))

(assert (=> b!2635043 d!747994))

(declare-fun d!747996 () Bool)

(assert (=> d!747996 (dynLambda!13092 lambda!98893 (apply!7281 v!6381 (+ 1 from!862)))))

(declare-fun lt!928078 () Unit!44539)

(assert (=> d!747996 (= lt!928078 (choose!15641 (list!11491 v!6381) lambda!98893 (apply!7281 v!6381 (+ 1 from!862))))))

(declare-fun e!1663159 () Bool)

(assert (=> d!747996 e!1663159))

(declare-fun res!1109813 () Bool)

(assert (=> d!747996 (=> (not res!1109813) (not e!1663159))))

(assert (=> d!747996 (= res!1109813 (forall!6403 (list!11491 v!6381) lambda!98893))))

(assert (=> d!747996 (= (forallContained!995 (list!11491 v!6381) lambda!98893 (apply!7281 v!6381 (+ 1 from!862))) lt!928078)))

(declare-fun b!2635781 () Bool)

(assert (=> b!2635781 (= e!1663159 (contains!5804 (list!11491 v!6381) (apply!7281 v!6381 (+ 1 from!862))))))

(assert (= (and d!747996 res!1109813) b!2635781))

(declare-fun b_lambda!79397 () Bool)

(assert (=> (not b_lambda!79397) (not d!747996)))

(assert (=> d!747996 m!2979201))

(declare-fun m!2980259 () Bool)

(assert (=> d!747996 m!2980259))

(assert (=> d!747996 m!2978913))

(assert (=> d!747996 m!2979201))

(declare-fun m!2980261 () Bool)

(assert (=> d!747996 m!2980261))

(assert (=> d!747996 m!2978913))

(declare-fun m!2980263 () Bool)

(assert (=> d!747996 m!2980263))

(assert (=> b!2635781 m!2978913))

(assert (=> b!2635781 m!2979201))

(declare-fun m!2980265 () Bool)

(assert (=> b!2635781 m!2980265))

(assert (=> b!2635043 d!747996))

(declare-fun b!2635782 () Bool)

(declare-fun e!1663164 () Int)

(assert (=> b!2635782 (= e!1663164 0)))

(declare-fun b!2635783 () Bool)

(declare-fun call!169632 () Int)

(assert (=> b!2635783 (= e!1663164 (- call!169632 (+ 1 from!862)))))

(declare-fun b!2635784 () Bool)

(declare-fun e!1663163 () List!30622)

(assert (=> b!2635784 (= e!1663163 lt!927705)))

(declare-fun b!2635785 () Bool)

(declare-fun e!1663162 () Int)

(assert (=> b!2635785 (= e!1663162 call!169632)))

(declare-fun b!2635786 () Bool)

(declare-fun e!1663161 () List!30622)

(assert (=> b!2635786 (= e!1663161 Nil!30522)))

(declare-fun bm!169627 () Bool)

(assert (=> bm!169627 (= call!169632 (size!23608 lt!927705))))

(declare-fun b!2635787 () Bool)

(assert (=> b!2635787 (= e!1663163 (drop!1639 (t!216743 lt!927705) (- (+ 1 from!862) 1)))))

(declare-fun b!2635788 () Bool)

(declare-fun e!1663160 () Bool)

(declare-fun lt!928079 () List!30622)

(assert (=> b!2635788 (= e!1663160 (= (size!23608 lt!928079) e!1663162))))

(declare-fun c!423850 () Bool)

(assert (=> b!2635788 (= c!423850 (<= (+ 1 from!862) 0))))

(declare-fun b!2635789 () Bool)

(assert (=> b!2635789 (= e!1663161 e!1663163)))

(declare-fun c!423851 () Bool)

(assert (=> b!2635789 (= c!423851 (<= (+ 1 from!862) 0))))

(declare-fun b!2635790 () Bool)

(assert (=> b!2635790 (= e!1663162 e!1663164)))

(declare-fun c!423849 () Bool)

(assert (=> b!2635790 (= c!423849 (>= (+ 1 from!862) call!169632))))

(declare-fun d!747998 () Bool)

(assert (=> d!747998 e!1663160))

(declare-fun res!1109814 () Bool)

(assert (=> d!747998 (=> (not res!1109814) (not e!1663160))))

(assert (=> d!747998 (= res!1109814 (= ((_ map implies) (content!4313 lt!928079) (content!4313 lt!927705)) ((as const (InoxSet Token!8756)) true)))))

(assert (=> d!747998 (= lt!928079 e!1663161)))

(declare-fun c!423852 () Bool)

(assert (=> d!747998 (= c!423852 ((_ is Nil!30522) lt!927705))))

(assert (=> d!747998 (= (drop!1639 lt!927705 (+ 1 from!862)) lt!928079)))

(assert (= (and d!747998 c!423852) b!2635786))

(assert (= (and d!747998 (not c!423852)) b!2635789))

(assert (= (and b!2635789 c!423851) b!2635784))

(assert (= (and b!2635789 (not c!423851)) b!2635787))

(assert (= (and d!747998 res!1109814) b!2635788))

(assert (= (and b!2635788 c!423850) b!2635785))

(assert (= (and b!2635788 (not c!423850)) b!2635790))

(assert (= (and b!2635790 c!423849) b!2635782))

(assert (= (and b!2635790 (not c!423849)) b!2635783))

(assert (= (or b!2635785 b!2635790 b!2635783) bm!169627))

(assert (=> bm!169627 m!2980143))

(declare-fun m!2980267 () Bool)

(assert (=> b!2635787 m!2980267))

(declare-fun m!2980269 () Bool)

(assert (=> b!2635788 m!2980269))

(declare-fun m!2980271 () Bool)

(assert (=> d!747998 m!2980271))

(declare-fun m!2980273 () Bool)

(assert (=> d!747998 m!2980273))

(assert (=> b!2635043 d!747998))

(declare-fun b!2635791 () Bool)

(declare-fun e!1663169 () Option!6038)

(declare-fun call!169633 () Option!6038)

(assert (=> b!2635791 (= e!1663169 call!169633)))

(declare-fun bm!169628 () Bool)

(assert (=> bm!169628 (= call!169633 (maxPrefixOneRuleZipperSequence!449 thiss!14197 (h!35941 rules!1726) (++!7439 (charsOf!2930 (apply!7281 v!6381 (+ 1 from!862))) lt!927709)))))

(declare-fun b!2635792 () Bool)

(declare-fun lt!928080 () Option!6038)

(declare-fun lt!928086 () Option!6038)

(assert (=> b!2635792 (= e!1663169 (ite (and ((_ is None!6037) lt!928080) ((_ is None!6037) lt!928086)) None!6037 (ite ((_ is None!6037) lt!928086) lt!928080 (ite ((_ is None!6037) lt!928080) lt!928086 (ite (>= (size!23600 (_1!17557 (v!32462 lt!928080))) (size!23600 (_1!17557 (v!32462 lt!928086)))) lt!928080 lt!928086)))))))

(assert (=> b!2635792 (= lt!928080 call!169633)))

(assert (=> b!2635792 (= lt!928086 (maxPrefixZipperSequence!966 thiss!14197 (t!216742 rules!1726) (++!7439 (charsOf!2930 (apply!7281 v!6381 (+ 1 from!862))) lt!927709)))))

(declare-fun d!748000 () Bool)

(declare-fun e!1663166 () Bool)

(assert (=> d!748000 e!1663166))

(declare-fun res!1109820 () Bool)

(assert (=> d!748000 (=> (not res!1109820) (not e!1663166))))

(declare-fun lt!928081 () Option!6038)

(assert (=> d!748000 (= res!1109820 (= (isDefined!4803 lt!928081) (isDefined!4804 (maxPrefixZipper!440 thiss!14197 rules!1726 (list!11490 (++!7439 (charsOf!2930 (apply!7281 v!6381 (+ 1 from!862))) lt!927709))))))))

(assert (=> d!748000 (= lt!928081 e!1663169)))

(declare-fun c!423853 () Bool)

(assert (=> d!748000 (= c!423853 (and ((_ is Cons!30521) rules!1726) ((_ is Nil!30521) (t!216742 rules!1726))))))

(declare-fun lt!928085 () Unit!44539)

(declare-fun lt!928082 () Unit!44539)

(assert (=> d!748000 (= lt!928085 lt!928082)))

(declare-fun lt!928083 () List!30620)

(declare-fun lt!928084 () List!30620)

(assert (=> d!748000 (isPrefix!2441 lt!928083 lt!928084)))

(assert (=> d!748000 (= lt!928082 (lemmaIsPrefixRefl!1567 lt!928083 lt!928084))))

(assert (=> d!748000 (= lt!928084 (list!11490 (++!7439 (charsOf!2930 (apply!7281 v!6381 (+ 1 from!862))) lt!927709)))))

(assert (=> d!748000 (= lt!928083 (list!11490 (++!7439 (charsOf!2930 (apply!7281 v!6381 (+ 1 from!862))) lt!927709)))))

(assert (=> d!748000 (rulesValidInductive!1619 thiss!14197 rules!1726)))

(assert (=> d!748000 (= (maxPrefixZipperSequence!966 thiss!14197 rules!1726 (++!7439 (charsOf!2930 (apply!7281 v!6381 (+ 1 from!862))) lt!927709)) lt!928081)))

(declare-fun b!2635793 () Bool)

(declare-fun res!1109818 () Bool)

(assert (=> b!2635793 (=> (not res!1109818) (not e!1663166))))

(declare-fun e!1663165 () Bool)

(assert (=> b!2635793 (= res!1109818 e!1663165)))

(declare-fun res!1109819 () Bool)

(assert (=> b!2635793 (=> res!1109819 e!1663165)))

(assert (=> b!2635793 (= res!1109819 (not (isDefined!4803 lt!928081)))))

(declare-fun b!2635794 () Bool)

(declare-fun e!1663167 () Bool)

(assert (=> b!2635794 (= e!1663165 e!1663167)))

(declare-fun res!1109816 () Bool)

(assert (=> b!2635794 (=> (not res!1109816) (not e!1663167))))

(assert (=> b!2635794 (= res!1109816 (= (_1!17557 (get!9608 lt!928081)) (_1!17560 (get!9609 (maxPrefixZipper!440 thiss!14197 rules!1726 (list!11490 (++!7439 (charsOf!2930 (apply!7281 v!6381 (+ 1 from!862))) lt!927709)))))))))

(declare-fun b!2635795 () Bool)

(declare-fun e!1663168 () Bool)

(assert (=> b!2635795 (= e!1663168 (= (list!11490 (_2!17557 (get!9608 lt!928081))) (_2!17560 (get!9609 (maxPrefix!2312 thiss!14197 rules!1726 (list!11490 (++!7439 (charsOf!2930 (apply!7281 v!6381 (+ 1 from!862))) lt!927709)))))))))

(declare-fun b!2635796 () Bool)

(assert (=> b!2635796 (= e!1663167 (= (list!11490 (_2!17557 (get!9608 lt!928081))) (_2!17560 (get!9609 (maxPrefixZipper!440 thiss!14197 rules!1726 (list!11490 (++!7439 (charsOf!2930 (apply!7281 v!6381 (+ 1 from!862))) lt!927709)))))))))

(declare-fun b!2635797 () Bool)

(declare-fun e!1663170 () Bool)

(assert (=> b!2635797 (= e!1663170 e!1663168)))

(declare-fun res!1109817 () Bool)

(assert (=> b!2635797 (=> (not res!1109817) (not e!1663168))))

(assert (=> b!2635797 (= res!1109817 (= (_1!17557 (get!9608 lt!928081)) (_1!17560 (get!9609 (maxPrefix!2312 thiss!14197 rules!1726 (list!11490 (++!7439 (charsOf!2930 (apply!7281 v!6381 (+ 1 from!862))) lt!927709)))))))))

(declare-fun b!2635798 () Bool)

(assert (=> b!2635798 (= e!1663166 e!1663170)))

(declare-fun res!1109815 () Bool)

(assert (=> b!2635798 (=> res!1109815 e!1663170)))

(assert (=> b!2635798 (= res!1109815 (not (isDefined!4803 lt!928081)))))

(assert (= (and d!748000 c!423853) b!2635791))

(assert (= (and d!748000 (not c!423853)) b!2635792))

(assert (= (or b!2635791 b!2635792) bm!169628))

(assert (= (and d!748000 res!1109820) b!2635793))

(assert (= (and b!2635793 (not res!1109819)) b!2635794))

(assert (= (and b!2635794 res!1109816) b!2635796))

(assert (= (and b!2635793 res!1109818) b!2635798))

(assert (= (and b!2635798 (not res!1109815)) b!2635797))

(assert (= (and b!2635797 res!1109817) b!2635795))

(assert (=> b!2635792 m!2979209))

(declare-fun m!2980275 () Bool)

(assert (=> b!2635792 m!2980275))

(declare-fun m!2980277 () Bool)

(assert (=> b!2635798 m!2980277))

(assert (=> bm!169628 m!2979209))

(declare-fun m!2980279 () Bool)

(assert (=> bm!169628 m!2980279))

(declare-fun m!2980281 () Bool)

(assert (=> d!748000 m!2980281))

(declare-fun m!2980283 () Bool)

(assert (=> d!748000 m!2980283))

(declare-fun m!2980285 () Bool)

(assert (=> d!748000 m!2980285))

(assert (=> d!748000 m!2979209))

(declare-fun m!2980287 () Bool)

(assert (=> d!748000 m!2980287))

(assert (=> d!748000 m!2980277))

(assert (=> d!748000 m!2979297))

(assert (=> d!748000 m!2980287))

(assert (=> d!748000 m!2980281))

(declare-fun m!2980289 () Bool)

(assert (=> d!748000 m!2980289))

(assert (=> b!2635795 m!2980287))

(declare-fun m!2980291 () Bool)

(assert (=> b!2635795 m!2980291))

(assert (=> b!2635795 m!2980291))

(declare-fun m!2980293 () Bool)

(assert (=> b!2635795 m!2980293))

(assert (=> b!2635795 m!2979209))

(assert (=> b!2635795 m!2980287))

(declare-fun m!2980295 () Bool)

(assert (=> b!2635795 m!2980295))

(declare-fun m!2980297 () Bool)

(assert (=> b!2635795 m!2980297))

(assert (=> b!2635797 m!2980297))

(assert (=> b!2635797 m!2979209))

(assert (=> b!2635797 m!2980287))

(assert (=> b!2635797 m!2980287))

(assert (=> b!2635797 m!2980291))

(assert (=> b!2635797 m!2980291))

(assert (=> b!2635797 m!2980293))

(assert (=> b!2635796 m!2980281))

(declare-fun m!2980299 () Bool)

(assert (=> b!2635796 m!2980299))

(assert (=> b!2635796 m!2979209))

(assert (=> b!2635796 m!2980287))

(assert (=> b!2635796 m!2980295))

(assert (=> b!2635796 m!2980297))

(assert (=> b!2635796 m!2980287))

(assert (=> b!2635796 m!2980281))

(assert (=> b!2635793 m!2980277))

(assert (=> b!2635794 m!2980297))

(assert (=> b!2635794 m!2979209))

(assert (=> b!2635794 m!2980287))

(assert (=> b!2635794 m!2980287))

(assert (=> b!2635794 m!2980281))

(assert (=> b!2635794 m!2980281))

(assert (=> b!2635794 m!2980299))

(assert (=> b!2635043 d!748000))

(declare-fun d!748002 () Bool)

(declare-fun lt!928087 () Token!8756)

(assert (=> d!748002 (contains!5804 lt!927604 lt!928087)))

(declare-fun e!1663172 () Token!8756)

(assert (=> d!748002 (= lt!928087 e!1663172)))

(declare-fun c!423854 () Bool)

(assert (=> d!748002 (= c!423854 (= 0 0))))

(declare-fun e!1663171 () Bool)

(assert (=> d!748002 e!1663171))

(declare-fun res!1109821 () Bool)

(assert (=> d!748002 (=> (not res!1109821) (not e!1663171))))

(assert (=> d!748002 (= res!1109821 (<= 0 0))))

(assert (=> d!748002 (= (apply!7282 lt!927604 0) lt!928087)))

(declare-fun b!2635799 () Bool)

(assert (=> b!2635799 (= e!1663171 (< 0 (size!23608 lt!927604)))))

(declare-fun b!2635800 () Bool)

(assert (=> b!2635800 (= e!1663172 (head!6044 lt!927604))))

(declare-fun b!2635801 () Bool)

(assert (=> b!2635801 (= e!1663172 (apply!7282 (tail!4282 lt!927604) (- 0 1)))))

(assert (= (and d!748002 res!1109821) b!2635799))

(assert (= (and d!748002 c!423854) b!2635800))

(assert (= (and d!748002 (not c!423854)) b!2635801))

(declare-fun m!2980301 () Bool)

(assert (=> d!748002 m!2980301))

(declare-fun m!2980303 () Bool)

(assert (=> b!2635799 m!2980303))

(declare-fun m!2980305 () Bool)

(assert (=> b!2635800 m!2980305))

(declare-fun m!2980307 () Bool)

(assert (=> b!2635801 m!2980307))

(assert (=> b!2635801 m!2980307))

(declare-fun m!2980309 () Bool)

(assert (=> b!2635801 m!2980309))

(assert (=> b!2634900 d!748002))

(declare-fun b!2635804 () Bool)

(declare-fun res!1109823 () Bool)

(declare-fun e!1663173 () Bool)

(assert (=> b!2635804 (=> (not res!1109823) (not e!1663173))))

(assert (=> b!2635804 (= res!1109823 (>= (height!1380 (++!7443 (c!423640 (BalanceConc!18671 Empty!9528)) (c!423640 (charsOf!2930 (apply!7281 lt!927564 0))))) (max!0 (height!1380 (c!423640 (BalanceConc!18671 Empty!9528))) (height!1380 (c!423640 (charsOf!2930 (apply!7281 lt!927564 0)))))))))

(declare-fun b!2635805 () Bool)

(declare-fun lt!928088 () BalanceConc!18670)

(assert (=> b!2635805 (= e!1663173 (= (list!11490 lt!928088) (++!7441 (list!11490 (BalanceConc!18671 Empty!9528)) (list!11490 (charsOf!2930 (apply!7281 lt!927564 0))))))))

(declare-fun b!2635803 () Bool)

(declare-fun res!1109824 () Bool)

(assert (=> b!2635803 (=> (not res!1109824) (not e!1663173))))

(assert (=> b!2635803 (= res!1109824 (<= (height!1380 (++!7443 (c!423640 (BalanceConc!18671 Empty!9528)) (c!423640 (charsOf!2930 (apply!7281 lt!927564 0))))) (+ (max!0 (height!1380 (c!423640 (BalanceConc!18671 Empty!9528))) (height!1380 (c!423640 (charsOf!2930 (apply!7281 lt!927564 0))))) 1)))))

(declare-fun d!748004 () Bool)

(assert (=> d!748004 e!1663173))

(declare-fun res!1109822 () Bool)

(assert (=> d!748004 (=> (not res!1109822) (not e!1663173))))

(assert (=> d!748004 (= res!1109822 (appendAssocInst!636 (c!423640 (BalanceConc!18671 Empty!9528)) (c!423640 (charsOf!2930 (apply!7281 lt!927564 0)))))))

(assert (=> d!748004 (= lt!928088 (BalanceConc!18671 (++!7443 (c!423640 (BalanceConc!18671 Empty!9528)) (c!423640 (charsOf!2930 (apply!7281 lt!927564 0))))))))

(assert (=> d!748004 (= (++!7439 (BalanceConc!18671 Empty!9528) (charsOf!2930 (apply!7281 lt!927564 0))) lt!928088)))

(declare-fun b!2635802 () Bool)

(declare-fun res!1109825 () Bool)

(assert (=> b!2635802 (=> (not res!1109825) (not e!1663173))))

(assert (=> b!2635802 (= res!1109825 (isBalanced!2887 (++!7443 (c!423640 (BalanceConc!18671 Empty!9528)) (c!423640 (charsOf!2930 (apply!7281 lt!927564 0))))))))

(assert (= (and d!748004 res!1109822) b!2635802))

(assert (= (and b!2635802 res!1109825) b!2635803))

(assert (= (and b!2635803 res!1109824) b!2635804))

(assert (= (and b!2635804 res!1109823) b!2635805))

(declare-fun m!2980311 () Bool)

(assert (=> b!2635804 m!2980311))

(declare-fun m!2980313 () Bool)

(assert (=> b!2635804 m!2980313))

(declare-fun m!2980315 () Bool)

(assert (=> b!2635804 m!2980315))

(assert (=> b!2635804 m!2980311))

(assert (=> b!2635804 m!2980313))

(declare-fun m!2980317 () Bool)

(assert (=> b!2635804 m!2980317))

(assert (=> b!2635804 m!2980315))

(declare-fun m!2980319 () Bool)

(assert (=> b!2635804 m!2980319))

(declare-fun m!2980321 () Bool)

(assert (=> b!2635805 m!2980321))

(assert (=> b!2635805 m!2978967))

(assert (=> b!2635805 m!2978981))

(declare-fun m!2980323 () Bool)

(assert (=> b!2635805 m!2980323))

(assert (=> b!2635805 m!2978967))

(assert (=> b!2635805 m!2980323))

(declare-fun m!2980325 () Bool)

(assert (=> b!2635805 m!2980325))

(assert (=> b!2635802 m!2980315))

(assert (=> b!2635802 m!2980315))

(declare-fun m!2980327 () Bool)

(assert (=> b!2635802 m!2980327))

(declare-fun m!2980329 () Bool)

(assert (=> d!748004 m!2980329))

(assert (=> d!748004 m!2980315))

(assert (=> b!2635803 m!2980311))

(assert (=> b!2635803 m!2980313))

(assert (=> b!2635803 m!2980315))

(assert (=> b!2635803 m!2980311))

(assert (=> b!2635803 m!2980313))

(assert (=> b!2635803 m!2980317))

(assert (=> b!2635803 m!2980315))

(assert (=> b!2635803 m!2980319))

(assert (=> b!2634900 d!748004))

(declare-fun b!2635806 () Bool)

(declare-fun e!1663178 () Int)

(assert (=> b!2635806 (= e!1663178 0)))

(declare-fun b!2635807 () Bool)

(declare-fun call!169634 () Int)

(assert (=> b!2635807 (= e!1663178 (- call!169634 0))))

(declare-fun b!2635808 () Bool)

(declare-fun e!1663177 () List!30622)

(assert (=> b!2635808 (= e!1663177 lt!927604)))

(declare-fun b!2635809 () Bool)

(declare-fun e!1663176 () Int)

(assert (=> b!2635809 (= e!1663176 call!169634)))

(declare-fun b!2635810 () Bool)

(declare-fun e!1663175 () List!30622)

(assert (=> b!2635810 (= e!1663175 Nil!30522)))

(declare-fun bm!169629 () Bool)

(assert (=> bm!169629 (= call!169634 (size!23608 lt!927604))))

(declare-fun b!2635811 () Bool)

(assert (=> b!2635811 (= e!1663177 (drop!1639 (t!216743 lt!927604) (- 0 1)))))

(declare-fun b!2635812 () Bool)

(declare-fun e!1663174 () Bool)

(declare-fun lt!928089 () List!30622)

(assert (=> b!2635812 (= e!1663174 (= (size!23608 lt!928089) e!1663176))))

(declare-fun c!423856 () Bool)

(assert (=> b!2635812 (= c!423856 (<= 0 0))))

(declare-fun b!2635813 () Bool)

(assert (=> b!2635813 (= e!1663175 e!1663177)))

(declare-fun c!423857 () Bool)

(assert (=> b!2635813 (= c!423857 (<= 0 0))))

(declare-fun b!2635814 () Bool)

(assert (=> b!2635814 (= e!1663176 e!1663178)))

(declare-fun c!423855 () Bool)

(assert (=> b!2635814 (= c!423855 (>= 0 call!169634))))

(declare-fun d!748006 () Bool)

(assert (=> d!748006 e!1663174))

(declare-fun res!1109826 () Bool)

(assert (=> d!748006 (=> (not res!1109826) (not e!1663174))))

(assert (=> d!748006 (= res!1109826 (= ((_ map implies) (content!4313 lt!928089) (content!4313 lt!927604)) ((as const (InoxSet Token!8756)) true)))))

(assert (=> d!748006 (= lt!928089 e!1663175)))

(declare-fun c!423858 () Bool)

(assert (=> d!748006 (= c!423858 ((_ is Nil!30522) lt!927604))))

(assert (=> d!748006 (= (drop!1639 lt!927604 0) lt!928089)))

(assert (= (and d!748006 c!423858) b!2635810))

(assert (= (and d!748006 (not c!423858)) b!2635813))

(assert (= (and b!2635813 c!423857) b!2635808))

(assert (= (and b!2635813 (not c!423857)) b!2635811))

(assert (= (and d!748006 res!1109826) b!2635812))

(assert (= (and b!2635812 c!423856) b!2635809))

(assert (= (and b!2635812 (not c!423856)) b!2635814))

(assert (= (and b!2635814 c!423855) b!2635806))

(assert (= (and b!2635814 (not c!423855)) b!2635807))

(assert (= (or b!2635809 b!2635814 b!2635807) bm!169629))

(assert (=> bm!169629 m!2980303))

(declare-fun m!2980331 () Bool)

(assert (=> b!2635811 m!2980331))

(declare-fun m!2980333 () Bool)

(assert (=> b!2635812 m!2980333))

(declare-fun m!2980335 () Bool)

(assert (=> d!748006 m!2980335))

(declare-fun m!2980337 () Bool)

(assert (=> d!748006 m!2980337))

(assert (=> b!2634900 d!748006))

(declare-fun d!748008 () Bool)

(assert (=> d!748008 (= (tail!4282 (drop!1639 lt!927605 0)) (drop!1639 lt!927605 (+ 0 1)))))

(declare-fun lt!928090 () Unit!44539)

(assert (=> d!748008 (= lt!928090 (choose!15644 lt!927605 0))))

(declare-fun e!1663179 () Bool)

(assert (=> d!748008 e!1663179))

(declare-fun res!1109827 () Bool)

(assert (=> d!748008 (=> (not res!1109827) (not e!1663179))))

(assert (=> d!748008 (= res!1109827 (>= 0 0))))

(assert (=> d!748008 (= (lemmaDropTail!828 lt!927605 0) lt!928090)))

(declare-fun b!2635815 () Bool)

(assert (=> b!2635815 (= e!1663179 (< 0 (size!23608 lt!927605)))))

(assert (= (and d!748008 res!1109827) b!2635815))

(assert (=> d!748008 m!2978983))

(assert (=> d!748008 m!2978983))

(assert (=> d!748008 m!2978993))

(assert (=> d!748008 m!2978971))

(declare-fun m!2980339 () Bool)

(assert (=> d!748008 m!2980339))

(declare-fun m!2980341 () Bool)

(assert (=> b!2635815 m!2980341))

(assert (=> b!2634900 d!748008))

(declare-fun d!748010 () Bool)

(assert (=> d!748010 (= (tail!4282 (drop!1639 lt!927605 0)) (t!216743 (drop!1639 lt!927605 0)))))

(assert (=> b!2634900 d!748010))

(declare-fun d!748012 () Bool)

(assert (=> d!748012 (= (head!6044 (drop!1639 lt!927604 0)) (h!35942 (drop!1639 lt!927604 0)))))

(assert (=> b!2634900 d!748012))

(declare-fun b!2635816 () Bool)

(declare-fun e!1663184 () Int)

(assert (=> b!2635816 (= e!1663184 0)))

(declare-fun b!2635817 () Bool)

(declare-fun call!169635 () Int)

(assert (=> b!2635817 (= e!1663184 (- call!169635 (+ 0 1)))))

(declare-fun b!2635818 () Bool)

(declare-fun e!1663183 () List!30622)

(assert (=> b!2635818 (= e!1663183 lt!927605)))

(declare-fun b!2635819 () Bool)

(declare-fun e!1663182 () Int)

(assert (=> b!2635819 (= e!1663182 call!169635)))

(declare-fun b!2635820 () Bool)

(declare-fun e!1663181 () List!30622)

(assert (=> b!2635820 (= e!1663181 Nil!30522)))

(declare-fun bm!169630 () Bool)

(assert (=> bm!169630 (= call!169635 (size!23608 lt!927605))))

(declare-fun b!2635821 () Bool)

(assert (=> b!2635821 (= e!1663183 (drop!1639 (t!216743 lt!927605) (- (+ 0 1) 1)))))

(declare-fun b!2635822 () Bool)

(declare-fun e!1663180 () Bool)

(declare-fun lt!928091 () List!30622)

(assert (=> b!2635822 (= e!1663180 (= (size!23608 lt!928091) e!1663182))))

(declare-fun c!423860 () Bool)

(assert (=> b!2635822 (= c!423860 (<= (+ 0 1) 0))))

(declare-fun b!2635823 () Bool)

(assert (=> b!2635823 (= e!1663181 e!1663183)))

(declare-fun c!423861 () Bool)

(assert (=> b!2635823 (= c!423861 (<= (+ 0 1) 0))))

(declare-fun b!2635824 () Bool)

(assert (=> b!2635824 (= e!1663182 e!1663184)))

(declare-fun c!423859 () Bool)

(assert (=> b!2635824 (= c!423859 (>= (+ 0 1) call!169635))))

(declare-fun d!748014 () Bool)

(assert (=> d!748014 e!1663180))

(declare-fun res!1109828 () Bool)

(assert (=> d!748014 (=> (not res!1109828) (not e!1663180))))

(assert (=> d!748014 (= res!1109828 (= ((_ map implies) (content!4313 lt!928091) (content!4313 lt!927605)) ((as const (InoxSet Token!8756)) true)))))

(assert (=> d!748014 (= lt!928091 e!1663181)))

(declare-fun c!423862 () Bool)

(assert (=> d!748014 (= c!423862 ((_ is Nil!30522) lt!927605))))

(assert (=> d!748014 (= (drop!1639 lt!927605 (+ 0 1)) lt!928091)))

(assert (= (and d!748014 c!423862) b!2635820))

(assert (= (and d!748014 (not c!423862)) b!2635823))

(assert (= (and b!2635823 c!423861) b!2635818))

(assert (= (and b!2635823 (not c!423861)) b!2635821))

(assert (= (and d!748014 res!1109828) b!2635822))

(assert (= (and b!2635822 c!423860) b!2635819))

(assert (= (and b!2635822 (not c!423860)) b!2635824))

(assert (= (and b!2635824 c!423859) b!2635816))

(assert (= (and b!2635824 (not c!423859)) b!2635817))

(assert (= (or b!2635819 b!2635824 b!2635817) bm!169630))

(assert (=> bm!169630 m!2980341))

(declare-fun m!2980343 () Bool)

(assert (=> b!2635821 m!2980343))

(declare-fun m!2980345 () Bool)

(assert (=> b!2635822 m!2980345))

(declare-fun m!2980347 () Bool)

(assert (=> d!748014 m!2980347))

(declare-fun m!2980349 () Bool)

(assert (=> d!748014 m!2980349))

(assert (=> b!2634900 d!748014))

(declare-fun d!748016 () Bool)

(declare-fun lt!928092 () Token!8756)

(assert (=> d!748016 (= lt!928092 (apply!7282 (list!11491 lt!927564) 0))))

(assert (=> d!748016 (= lt!928092 (apply!7284 (c!423641 lt!927564) 0))))

(declare-fun e!1663185 () Bool)

(assert (=> d!748016 e!1663185))

(declare-fun res!1109829 () Bool)

(assert (=> d!748016 (=> (not res!1109829) (not e!1663185))))

(assert (=> d!748016 (= res!1109829 (<= 0 0))))

(assert (=> d!748016 (= (apply!7281 lt!927564 0) lt!928092)))

(declare-fun b!2635825 () Bool)

(assert (=> b!2635825 (= e!1663185 (< 0 (size!23601 lt!927564)))))

(assert (= (and d!748016 res!1109829) b!2635825))

(assert (=> d!748016 m!2978935))

(assert (=> d!748016 m!2978935))

(declare-fun m!2980351 () Bool)

(assert (=> d!748016 m!2980351))

(declare-fun m!2980353 () Bool)

(assert (=> d!748016 m!2980353))

(assert (=> b!2635825 m!2978963))

(assert (=> b!2634900 d!748016))

(declare-fun d!748018 () Bool)

(declare-fun lt!928097 () BalanceConc!18670)

(assert (=> d!748018 (= (list!11490 lt!928097) (printListTailRec!509 thiss!14197 (dropList!946 lt!927564 (+ 0 1)) (list!11490 (++!7439 (BalanceConc!18671 Empty!9528) (charsOf!2930 (apply!7281 lt!927564 0))))))))

(declare-fun e!1663187 () BalanceConc!18670)

(assert (=> d!748018 (= lt!928097 e!1663187)))

(declare-fun c!423863 () Bool)

(assert (=> d!748018 (= c!423863 (>= (+ 0 1) (size!23601 lt!927564)))))

(declare-fun e!1663186 () Bool)

(assert (=> d!748018 e!1663186))

(declare-fun res!1109830 () Bool)

(assert (=> d!748018 (=> (not res!1109830) (not e!1663186))))

(assert (=> d!748018 (= res!1109830 (>= (+ 0 1) 0))))

(assert (=> d!748018 (= (printTailRec!1127 thiss!14197 lt!927564 (+ 0 1) (++!7439 (BalanceConc!18671 Empty!9528) (charsOf!2930 (apply!7281 lt!927564 0)))) lt!928097)))

(declare-fun b!2635826 () Bool)

(assert (=> b!2635826 (= e!1663186 (<= (+ 0 1) (size!23601 lt!927564)))))

(declare-fun b!2635827 () Bool)

(assert (=> b!2635827 (= e!1663187 (++!7439 (BalanceConc!18671 Empty!9528) (charsOf!2930 (apply!7281 lt!927564 0))))))

(declare-fun b!2635828 () Bool)

(assert (=> b!2635828 (= e!1663187 (printTailRec!1127 thiss!14197 lt!927564 (+ 0 1 1) (++!7439 (++!7439 (BalanceConc!18671 Empty!9528) (charsOf!2930 (apply!7281 lt!927564 0))) (charsOf!2930 (apply!7281 lt!927564 (+ 0 1))))))))

(declare-fun lt!928098 () List!30622)

(assert (=> b!2635828 (= lt!928098 (list!11491 lt!927564))))

(declare-fun lt!928094 () Unit!44539)

(assert (=> b!2635828 (= lt!928094 (lemmaDropApply!854 lt!928098 (+ 0 1)))))

(assert (=> b!2635828 (= (head!6044 (drop!1639 lt!928098 (+ 0 1))) (apply!7282 lt!928098 (+ 0 1)))))

(declare-fun lt!928095 () Unit!44539)

(assert (=> b!2635828 (= lt!928095 lt!928094)))

(declare-fun lt!928099 () List!30622)

(assert (=> b!2635828 (= lt!928099 (list!11491 lt!927564))))

(declare-fun lt!928096 () Unit!44539)

(assert (=> b!2635828 (= lt!928096 (lemmaDropTail!828 lt!928099 (+ 0 1)))))

(assert (=> b!2635828 (= (tail!4282 (drop!1639 lt!928099 (+ 0 1))) (drop!1639 lt!928099 (+ 0 1 1)))))

(declare-fun lt!928093 () Unit!44539)

(assert (=> b!2635828 (= lt!928093 lt!928096)))

(assert (= (and d!748018 res!1109830) b!2635826))

(assert (= (and d!748018 c!423863) b!2635827))

(assert (= (and d!748018 (not c!423863)) b!2635828))

(declare-fun m!2980355 () Bool)

(assert (=> d!748018 m!2980355))

(assert (=> d!748018 m!2978963))

(declare-fun m!2980357 () Bool)

(assert (=> d!748018 m!2980357))

(assert (=> d!748018 m!2978977))

(declare-fun m!2980359 () Bool)

(assert (=> d!748018 m!2980359))

(assert (=> d!748018 m!2980355))

(assert (=> d!748018 m!2980359))

(declare-fun m!2980361 () Bool)

(assert (=> d!748018 m!2980361))

(assert (=> b!2635826 m!2978963))

(assert (=> b!2635828 m!2978935))

(declare-fun m!2980363 () Bool)

(assert (=> b!2635828 m!2980363))

(declare-fun m!2980365 () Bool)

(assert (=> b!2635828 m!2980365))

(declare-fun m!2980367 () Bool)

(assert (=> b!2635828 m!2980367))

(declare-fun m!2980369 () Bool)

(assert (=> b!2635828 m!2980369))

(declare-fun m!2980371 () Bool)

(assert (=> b!2635828 m!2980371))

(assert (=> b!2635828 m!2978977))

(declare-fun m!2980373 () Bool)

(assert (=> b!2635828 m!2980373))

(assert (=> b!2635828 m!2980369))

(declare-fun m!2980375 () Bool)

(assert (=> b!2635828 m!2980375))

(declare-fun m!2980377 () Bool)

(assert (=> b!2635828 m!2980377))

(declare-fun m!2980379 () Bool)

(assert (=> b!2635828 m!2980379))

(assert (=> b!2635828 m!2980379))

(assert (=> b!2635828 m!2980373))

(declare-fun m!2980381 () Bool)

(assert (=> b!2635828 m!2980381))

(assert (=> b!2635828 m!2980365))

(declare-fun m!2980383 () Bool)

(assert (=> b!2635828 m!2980383))

(assert (=> b!2635828 m!2980375))

(declare-fun m!2980385 () Bool)

(assert (=> b!2635828 m!2980385))

(assert (=> b!2634900 d!748018))

(declare-fun d!748020 () Bool)

(assert (=> d!748020 (= (list!11491 lt!927564) (list!11495 (c!423641 lt!927564)))))

(declare-fun bs!476140 () Bool)

(assert (= bs!476140 d!748020))

(assert (=> bs!476140 m!2979729))

(assert (=> b!2634900 d!748020))

(declare-fun d!748022 () Bool)

(declare-fun lt!928100 () BalanceConc!18670)

(assert (=> d!748022 (= (list!11490 lt!928100) (originalCharacters!5409 (apply!7281 lt!927564 0)))))

(assert (=> d!748022 (= lt!928100 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 (apply!7281 lt!927564 0)))) (value!149930 (apply!7281 lt!927564 0))))))

(assert (=> d!748022 (= (charsOf!2930 (apply!7281 lt!927564 0)) lt!928100)))

(declare-fun b_lambda!79399 () Bool)

(assert (=> (not b_lambda!79399) (not d!748022)))

(declare-fun tb!143801 () Bool)

(declare-fun t!216803 () Bool)

(assert (=> (and b!2634850 (= (toChars!6420 (transformation!4643 (h!35941 rules!1726))) (toChars!6420 (transformation!4643 (rule!7027 (apply!7281 lt!927564 0))))) t!216803) tb!143801))

(declare-fun b!2635829 () Bool)

(declare-fun e!1663188 () Bool)

(declare-fun tp!835044 () Bool)

(assert (=> b!2635829 (= e!1663188 (and (inv!41409 (c!423640 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 (apply!7281 lt!927564 0)))) (value!149930 (apply!7281 lt!927564 0))))) tp!835044))))

(declare-fun result!178744 () Bool)

(assert (=> tb!143801 (= result!178744 (and (inv!41410 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 (apply!7281 lt!927564 0)))) (value!149930 (apply!7281 lt!927564 0)))) e!1663188))))

(assert (= tb!143801 b!2635829))

(declare-fun m!2980387 () Bool)

(assert (=> b!2635829 m!2980387))

(declare-fun m!2980389 () Bool)

(assert (=> tb!143801 m!2980389))

(assert (=> d!748022 t!216803))

(declare-fun b_and!193013 () Bool)

(assert (= b_and!193007 (and (=> t!216803 result!178744) b_and!193013)))

(declare-fun tb!143803 () Bool)

(declare-fun t!216805 () Bool)

(assert (=> (and b!2634862 (= (toChars!6420 (transformation!4643 (rule!7027 separatorToken!156))) (toChars!6420 (transformation!4643 (rule!7027 (apply!7281 lt!927564 0))))) t!216805) tb!143803))

(declare-fun result!178746 () Bool)

(assert (= result!178746 result!178744))

(assert (=> d!748022 t!216805))

(declare-fun b_and!193015 () Bool)

(assert (= b_and!193009 (and (=> t!216805 result!178746) b_and!193015)))

(declare-fun tb!143805 () Bool)

(declare-fun t!216807 () Bool)

(assert (=> (and b!2635424 (= (toChars!6420 (transformation!4643 (h!35941 (t!216742 rules!1726)))) (toChars!6420 (transformation!4643 (rule!7027 (apply!7281 lt!927564 0))))) t!216807) tb!143805))

(declare-fun result!178748 () Bool)

(assert (= result!178748 result!178744))

(assert (=> d!748022 t!216807))

(declare-fun b_and!193017 () Bool)

(assert (= b_and!193011 (and (=> t!216807 result!178748) b_and!193017)))

(declare-fun m!2980391 () Bool)

(assert (=> d!748022 m!2980391))

(declare-fun m!2980393 () Bool)

(assert (=> d!748022 m!2980393))

(assert (=> b!2634900 d!748022))

(declare-fun b!2635830 () Bool)

(declare-fun e!1663193 () Int)

(assert (=> b!2635830 (= e!1663193 0)))

(declare-fun b!2635831 () Bool)

(declare-fun call!169636 () Int)

(assert (=> b!2635831 (= e!1663193 (- call!169636 0))))

(declare-fun b!2635832 () Bool)

(declare-fun e!1663192 () List!30622)

(assert (=> b!2635832 (= e!1663192 lt!927605)))

(declare-fun b!2635833 () Bool)

(declare-fun e!1663191 () Int)

(assert (=> b!2635833 (= e!1663191 call!169636)))

(declare-fun b!2635834 () Bool)

(declare-fun e!1663190 () List!30622)

(assert (=> b!2635834 (= e!1663190 Nil!30522)))

(declare-fun bm!169631 () Bool)

(assert (=> bm!169631 (= call!169636 (size!23608 lt!927605))))

(declare-fun b!2635835 () Bool)

(assert (=> b!2635835 (= e!1663192 (drop!1639 (t!216743 lt!927605) (- 0 1)))))

(declare-fun b!2635836 () Bool)

(declare-fun e!1663189 () Bool)

(declare-fun lt!928101 () List!30622)

(assert (=> b!2635836 (= e!1663189 (= (size!23608 lt!928101) e!1663191))))

(declare-fun c!423865 () Bool)

(assert (=> b!2635836 (= c!423865 (<= 0 0))))

(declare-fun b!2635837 () Bool)

(assert (=> b!2635837 (= e!1663190 e!1663192)))

(declare-fun c!423866 () Bool)

(assert (=> b!2635837 (= c!423866 (<= 0 0))))

(declare-fun b!2635838 () Bool)

(assert (=> b!2635838 (= e!1663191 e!1663193)))

(declare-fun c!423864 () Bool)

(assert (=> b!2635838 (= c!423864 (>= 0 call!169636))))

(declare-fun d!748024 () Bool)

(assert (=> d!748024 e!1663189))

(declare-fun res!1109831 () Bool)

(assert (=> d!748024 (=> (not res!1109831) (not e!1663189))))

(assert (=> d!748024 (= res!1109831 (= ((_ map implies) (content!4313 lt!928101) (content!4313 lt!927605)) ((as const (InoxSet Token!8756)) true)))))

(assert (=> d!748024 (= lt!928101 e!1663190)))

(declare-fun c!423867 () Bool)

(assert (=> d!748024 (= c!423867 ((_ is Nil!30522) lt!927605))))

(assert (=> d!748024 (= (drop!1639 lt!927605 0) lt!928101)))

(assert (= (and d!748024 c!423867) b!2635834))

(assert (= (and d!748024 (not c!423867)) b!2635837))

(assert (= (and b!2635837 c!423866) b!2635832))

(assert (= (and b!2635837 (not c!423866)) b!2635835))

(assert (= (and d!748024 res!1109831) b!2635836))

(assert (= (and b!2635836 c!423865) b!2635833))

(assert (= (and b!2635836 (not c!423865)) b!2635838))

(assert (= (and b!2635838 c!423864) b!2635830))

(assert (= (and b!2635838 (not c!423864)) b!2635831))

(assert (= (or b!2635833 b!2635838 b!2635831) bm!169631))

(assert (=> bm!169631 m!2980341))

(declare-fun m!2980395 () Bool)

(assert (=> b!2635835 m!2980395))

(declare-fun m!2980397 () Bool)

(assert (=> b!2635836 m!2980397))

(declare-fun m!2980399 () Bool)

(assert (=> d!748024 m!2980399))

(assert (=> d!748024 m!2980349))

(assert (=> b!2634900 d!748024))

(declare-fun d!748026 () Bool)

(assert (=> d!748026 (= (head!6044 (drop!1639 lt!927604 0)) (apply!7282 lt!927604 0))))

(declare-fun lt!928102 () Unit!44539)

(assert (=> d!748026 (= lt!928102 (choose!15645 lt!927604 0))))

(declare-fun e!1663194 () Bool)

(assert (=> d!748026 e!1663194))

(declare-fun res!1109832 () Bool)

(assert (=> d!748026 (=> (not res!1109832) (not e!1663194))))

(assert (=> d!748026 (= res!1109832 (>= 0 0))))

(assert (=> d!748026 (= (lemmaDropApply!854 lt!927604 0) lt!928102)))

(declare-fun b!2635839 () Bool)

(assert (=> b!2635839 (= e!1663194 (< 0 (size!23608 lt!927604)))))

(assert (= (and d!748026 res!1109832) b!2635839))

(assert (=> d!748026 m!2978973))

(assert (=> d!748026 m!2978973))

(assert (=> d!748026 m!2978975))

(assert (=> d!748026 m!2978989))

(declare-fun m!2980401 () Bool)

(assert (=> d!748026 m!2980401))

(assert (=> b!2635839 m!2980303))

(assert (=> b!2634900 d!748026))

(declare-fun d!748028 () Bool)

(declare-fun lt!928103 () BalanceConc!18670)

(assert (=> d!748028 (= (list!11490 lt!928103) (originalCharacters!5409 (ite c!423687 separatorToken!156 call!169541)))))

(assert (=> d!748028 (= lt!928103 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 (ite c!423687 separatorToken!156 call!169541)))) (value!149930 (ite c!423687 separatorToken!156 call!169541))))))

(assert (=> d!748028 (= (charsOf!2930 (ite c!423687 separatorToken!156 call!169541)) lt!928103)))

(declare-fun b_lambda!79401 () Bool)

(assert (=> (not b_lambda!79401) (not d!748028)))

(declare-fun tb!143807 () Bool)

(declare-fun t!216809 () Bool)

(assert (=> (and b!2634850 (= (toChars!6420 (transformation!4643 (h!35941 rules!1726))) (toChars!6420 (transformation!4643 (rule!7027 (ite c!423687 separatorToken!156 call!169541))))) t!216809) tb!143807))

(declare-fun tp!835045 () Bool)

(declare-fun e!1663195 () Bool)

(declare-fun b!2635840 () Bool)

(assert (=> b!2635840 (= e!1663195 (and (inv!41409 (c!423640 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 (ite c!423687 separatorToken!156 call!169541)))) (value!149930 (ite c!423687 separatorToken!156 call!169541))))) tp!835045))))

(declare-fun result!178750 () Bool)

(assert (=> tb!143807 (= result!178750 (and (inv!41410 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 (ite c!423687 separatorToken!156 call!169541)))) (value!149930 (ite c!423687 separatorToken!156 call!169541)))) e!1663195))))

(assert (= tb!143807 b!2635840))

(declare-fun m!2980403 () Bool)

(assert (=> b!2635840 m!2980403))

(declare-fun m!2980405 () Bool)

(assert (=> tb!143807 m!2980405))

(assert (=> d!748028 t!216809))

(declare-fun b_and!193019 () Bool)

(assert (= b_and!193013 (and (=> t!216809 result!178750) b_and!193019)))

(declare-fun tb!143809 () Bool)

(declare-fun t!216811 () Bool)

(assert (=> (and b!2634862 (= (toChars!6420 (transformation!4643 (rule!7027 separatorToken!156))) (toChars!6420 (transformation!4643 (rule!7027 (ite c!423687 separatorToken!156 call!169541))))) t!216811) tb!143809))

(declare-fun result!178752 () Bool)

(assert (= result!178752 result!178750))

(assert (=> d!748028 t!216811))

(declare-fun b_and!193021 () Bool)

(assert (= b_and!193015 (and (=> t!216811 result!178752) b_and!193021)))

(declare-fun tb!143811 () Bool)

(declare-fun t!216813 () Bool)

(assert (=> (and b!2635424 (= (toChars!6420 (transformation!4643 (h!35941 (t!216742 rules!1726)))) (toChars!6420 (transformation!4643 (rule!7027 (ite c!423687 separatorToken!156 call!169541))))) t!216813) tb!143811))

(declare-fun result!178754 () Bool)

(assert (= result!178754 result!178750))

(assert (=> d!748028 t!216813))

(declare-fun b_and!193023 () Bool)

(assert (= b_and!193017 (and (=> t!216813 result!178754) b_and!193023)))

(declare-fun m!2980407 () Bool)

(assert (=> d!748028 m!2980407))

(declare-fun m!2980409 () Bool)

(assert (=> d!748028 m!2980409))

(assert (=> bm!169535 d!748028))

(declare-fun b!2635841 () Bool)

(declare-fun e!1663200 () Int)

(assert (=> b!2635841 (= e!1663200 0)))

(declare-fun b!2635842 () Bool)

(declare-fun call!169637 () Int)

(assert (=> b!2635842 (= e!1663200 (- call!169637 (- from!862 1)))))

(declare-fun b!2635843 () Bool)

(declare-fun e!1663199 () List!30622)

(assert (=> b!2635843 (= e!1663199 (t!216743 lt!927559))))

(declare-fun b!2635844 () Bool)

(declare-fun e!1663198 () Int)

(assert (=> b!2635844 (= e!1663198 call!169637)))

(declare-fun b!2635845 () Bool)

(declare-fun e!1663197 () List!30622)

(assert (=> b!2635845 (= e!1663197 Nil!30522)))

(declare-fun bm!169632 () Bool)

(assert (=> bm!169632 (= call!169637 (size!23608 (t!216743 lt!927559)))))

(declare-fun b!2635846 () Bool)

(assert (=> b!2635846 (= e!1663199 (drop!1639 (t!216743 (t!216743 lt!927559)) (- (- from!862 1) 1)))))

(declare-fun b!2635847 () Bool)

(declare-fun e!1663196 () Bool)

(declare-fun lt!928104 () List!30622)

(assert (=> b!2635847 (= e!1663196 (= (size!23608 lt!928104) e!1663198))))

(declare-fun c!423869 () Bool)

(assert (=> b!2635847 (= c!423869 (<= (- from!862 1) 0))))

(declare-fun b!2635848 () Bool)

(assert (=> b!2635848 (= e!1663197 e!1663199)))

(declare-fun c!423870 () Bool)

(assert (=> b!2635848 (= c!423870 (<= (- from!862 1) 0))))

(declare-fun b!2635849 () Bool)

(assert (=> b!2635849 (= e!1663198 e!1663200)))

(declare-fun c!423868 () Bool)

(assert (=> b!2635849 (= c!423868 (>= (- from!862 1) call!169637))))

(declare-fun d!748030 () Bool)

(assert (=> d!748030 e!1663196))

(declare-fun res!1109833 () Bool)

(assert (=> d!748030 (=> (not res!1109833) (not e!1663196))))

(assert (=> d!748030 (= res!1109833 (= ((_ map implies) (content!4313 lt!928104) (content!4313 (t!216743 lt!927559))) ((as const (InoxSet Token!8756)) true)))))

(assert (=> d!748030 (= lt!928104 e!1663197)))

(declare-fun c!423871 () Bool)

(assert (=> d!748030 (= c!423871 ((_ is Nil!30522) (t!216743 lt!927559)))))

(assert (=> d!748030 (= (drop!1639 (t!216743 lt!927559) (- from!862 1)) lt!928104)))

(assert (= (and d!748030 c!423871) b!2635845))

(assert (= (and d!748030 (not c!423871)) b!2635848))

(assert (= (and b!2635848 c!423870) b!2635843))

(assert (= (and b!2635848 (not c!423870)) b!2635846))

(assert (= (and d!748030 res!1109833) b!2635847))

(assert (= (and b!2635847 c!423869) b!2635844))

(assert (= (and b!2635847 (not c!423869)) b!2635849))

(assert (= (and b!2635849 c!423868) b!2635841))

(assert (= (and b!2635849 (not c!423868)) b!2635842))

(assert (= (or b!2635844 b!2635849 b!2635842) bm!169632))

(assert (=> bm!169632 m!2979655))

(declare-fun m!2980411 () Bool)

(assert (=> b!2635846 m!2980411))

(declare-fun m!2980413 () Bool)

(assert (=> b!2635847 m!2980413))

(declare-fun m!2980415 () Bool)

(assert (=> d!748030 m!2980415))

(assert (=> d!748030 m!2980077))

(assert (=> b!2635343 d!748030))

(declare-fun bs!476147 () Bool)

(declare-fun d!748032 () Bool)

(assert (= bs!476147 (and d!748032 d!747628)))

(declare-fun lambda!98925 () Int)

(assert (=> bs!476147 (not (= lambda!98925 lambda!98892))))

(declare-fun bs!476148 () Bool)

(assert (= bs!476148 (and d!748032 d!747988)))

(assert (=> bs!476148 (not (= lambda!98925 lambda!98918))))

(declare-fun bs!476149 () Bool)

(assert (= bs!476149 (and d!748032 b!2634859)))

(assert (=> bs!476149 (not (= lambda!98925 lambda!98881))))

(declare-fun bs!476150 () Bool)

(assert (= bs!476150 (and d!748032 b!2634851)))

(assert (=> bs!476150 (= lambda!98925 lambda!98882)))

(declare-fun bs!476151 () Bool)

(assert (= bs!476151 (and d!748032 b!2635763)))

(assert (=> bs!476151 (= lambda!98925 lambda!98919)))

(declare-fun bs!476152 () Bool)

(assert (= bs!476152 (and d!748032 b!2635043)))

(assert (=> bs!476152 (= lambda!98925 lambda!98893)))

(declare-fun bs!476153 () Bool)

(assert (= bs!476153 (and d!748032 d!747778)))

(assert (=> bs!476153 (= lambda!98925 lambda!98904)))

(declare-fun b!2635885 () Bool)

(declare-fun e!1663224 () Bool)

(assert (=> b!2635885 (= e!1663224 true)))

(declare-fun b!2635884 () Bool)

(declare-fun e!1663223 () Bool)

(assert (=> b!2635884 (= e!1663223 e!1663224)))

(declare-fun b!2635883 () Bool)

(declare-fun e!1663222 () Bool)

(assert (=> b!2635883 (= e!1663222 e!1663223)))

(assert (=> d!748032 e!1663222))

(assert (= b!2635884 b!2635885))

(assert (= b!2635883 b!2635884))

(assert (= (and d!748032 ((_ is Cons!30521) rules!1726)) b!2635883))

(assert (=> b!2635885 (< (dynLambda!13088 order!16567 (toValue!6561 (transformation!4643 (h!35941 rules!1726)))) (dynLambda!13089 order!16569 lambda!98925))))

(assert (=> b!2635885 (< (dynLambda!13090 order!16571 (toChars!6420 (transformation!4643 (h!35941 rules!1726)))) (dynLambda!13089 order!16569 lambda!98925))))

(assert (=> d!748032 true))

(declare-fun lt!928120 () Bool)

(assert (=> d!748032 (= lt!928120 (forall!6403 (list!11491 v!6381) lambda!98925))))

(declare-fun e!1663220 () Bool)

(assert (=> d!748032 (= lt!928120 e!1663220)))

(declare-fun res!1109859 () Bool)

(assert (=> d!748032 (=> res!1109859 e!1663220)))

(assert (=> d!748032 (= res!1109859 (not ((_ is Cons!30522) (list!11491 v!6381))))))

(assert (=> d!748032 (not (isEmpty!17413 rules!1726))))

(assert (=> d!748032 (= (rulesProduceEachTokenIndividuallyList!1472 thiss!14197 rules!1726 (list!11491 v!6381)) lt!928120)))

(declare-fun b!2635881 () Bool)

(declare-fun e!1663221 () Bool)

(assert (=> b!2635881 (= e!1663220 e!1663221)))

(declare-fun res!1109858 () Bool)

(assert (=> b!2635881 (=> (not res!1109858) (not e!1663221))))

(assert (=> b!2635881 (= res!1109858 (rulesProduceIndividualToken!1952 thiss!14197 rules!1726 (h!35942 (list!11491 v!6381))))))

(declare-fun b!2635882 () Bool)

(assert (=> b!2635882 (= e!1663221 (rulesProduceEachTokenIndividuallyList!1472 thiss!14197 rules!1726 (t!216743 (list!11491 v!6381))))))

(assert (= (and d!748032 (not res!1109859)) b!2635881))

(assert (= (and b!2635881 res!1109858) b!2635882))

(assert (=> d!748032 m!2978913))

(declare-fun m!2980425 () Bool)

(assert (=> d!748032 m!2980425))

(assert (=> d!748032 m!2978883))

(declare-fun m!2980427 () Bool)

(assert (=> b!2635881 m!2980427))

(declare-fun m!2980429 () Bool)

(assert (=> b!2635882 m!2980429))

(assert (=> b!2635385 d!748032))

(assert (=> b!2635385 d!747748))

(declare-fun b!2635886 () Bool)

(declare-fun e!1663229 () Int)

(assert (=> b!2635886 (= e!1663229 0)))

(declare-fun b!2635887 () Bool)

(declare-fun call!169640 () Int)

(assert (=> b!2635887 (= e!1663229 (- call!169640 from!862))))

(declare-fun b!2635888 () Bool)

(declare-fun e!1663228 () List!30622)

(assert (=> b!2635888 (= e!1663228 (list!11495 (c!423641 v!6381)))))

(declare-fun b!2635889 () Bool)

(declare-fun e!1663227 () Int)

(assert (=> b!2635889 (= e!1663227 call!169640)))

(declare-fun b!2635890 () Bool)

(declare-fun e!1663226 () List!30622)

(assert (=> b!2635890 (= e!1663226 Nil!30522)))

(declare-fun bm!169635 () Bool)

(assert (=> bm!169635 (= call!169640 (size!23608 (list!11495 (c!423641 v!6381))))))

(declare-fun b!2635891 () Bool)

(assert (=> b!2635891 (= e!1663228 (drop!1639 (t!216743 (list!11495 (c!423641 v!6381))) (- from!862 1)))))

(declare-fun b!2635892 () Bool)

(declare-fun e!1663225 () Bool)

(declare-fun lt!928121 () List!30622)

(assert (=> b!2635892 (= e!1663225 (= (size!23608 lt!928121) e!1663227))))

(declare-fun c!423875 () Bool)

(assert (=> b!2635892 (= c!423875 (<= from!862 0))))

(declare-fun b!2635893 () Bool)

(assert (=> b!2635893 (= e!1663226 e!1663228)))

(declare-fun c!423876 () Bool)

(assert (=> b!2635893 (= c!423876 (<= from!862 0))))

(declare-fun b!2635894 () Bool)

(assert (=> b!2635894 (= e!1663227 e!1663229)))

(declare-fun c!423874 () Bool)

(assert (=> b!2635894 (= c!423874 (>= from!862 call!169640))))

(declare-fun d!748040 () Bool)

(assert (=> d!748040 e!1663225))

(declare-fun res!1109860 () Bool)

(assert (=> d!748040 (=> (not res!1109860) (not e!1663225))))

(assert (=> d!748040 (= res!1109860 (= ((_ map implies) (content!4313 lt!928121) (content!4313 (list!11495 (c!423641 v!6381)))) ((as const (InoxSet Token!8756)) true)))))

(assert (=> d!748040 (= lt!928121 e!1663226)))

(declare-fun c!423877 () Bool)

(assert (=> d!748040 (= c!423877 ((_ is Nil!30522) (list!11495 (c!423641 v!6381))))))

(assert (=> d!748040 (= (drop!1639 (list!11495 (c!423641 v!6381)) from!862) lt!928121)))

(assert (= (and d!748040 c!423877) b!2635890))

(assert (= (and d!748040 (not c!423877)) b!2635893))

(assert (= (and b!2635893 c!423876) b!2635888))

(assert (= (and b!2635893 (not c!423876)) b!2635891))

(assert (= (and d!748040 res!1109860) b!2635892))

(assert (= (and b!2635892 c!423875) b!2635889))

(assert (= (and b!2635892 (not c!423875)) b!2635894))

(assert (= (and b!2635894 c!423874) b!2635886))

(assert (= (and b!2635894 (not c!423874)) b!2635887))

(assert (= (or b!2635889 b!2635894 b!2635887) bm!169635))

(assert (=> bm!169635 m!2979549))

(assert (=> bm!169635 m!2979659))

(declare-fun m!2980431 () Bool)

(assert (=> b!2635891 m!2980431))

(declare-fun m!2980433 () Bool)

(assert (=> b!2635892 m!2980433))

(declare-fun m!2980435 () Bool)

(assert (=> d!748040 m!2980435))

(assert (=> d!748040 m!2979549))

(declare-fun m!2980437 () Bool)

(assert (=> d!748040 m!2980437))

(assert (=> d!747744 d!748040))

(declare-fun b!2635915 () Bool)

(declare-fun e!1663238 () List!30622)

(declare-fun ++!7445 (List!30622 List!30622) List!30622)

(assert (=> b!2635915 (= e!1663238 (++!7445 (list!11495 (left!23582 (c!423641 v!6381))) (list!11495 (right!23912 (c!423641 v!6381)))))))

(declare-fun b!2635912 () Bool)

(declare-fun e!1663237 () List!30622)

(assert (=> b!2635912 (= e!1663237 Nil!30522)))

(declare-fun d!748042 () Bool)

(declare-fun c!423883 () Bool)

(assert (=> d!748042 (= c!423883 ((_ is Empty!9529) (c!423641 v!6381)))))

(assert (=> d!748042 (= (list!11495 (c!423641 v!6381)) e!1663237)))

(declare-fun b!2635913 () Bool)

(assert (=> b!2635913 (= e!1663237 e!1663238)))

(declare-fun c!423884 () Bool)

(assert (=> b!2635913 (= c!423884 ((_ is Leaf!14591) (c!423641 v!6381)))))

(declare-fun b!2635914 () Bool)

(assert (=> b!2635914 (= e!1663238 (list!11496 (xs!12533 (c!423641 v!6381))))))

(assert (= (and d!748042 c!423883) b!2635912))

(assert (= (and d!748042 (not c!423883)) b!2635913))

(assert (= (and b!2635913 c!423884) b!2635914))

(assert (= (and b!2635913 (not c!423884)) b!2635915))

(declare-fun m!2980467 () Bool)

(assert (=> b!2635915 m!2980467))

(declare-fun m!2980469 () Bool)

(assert (=> b!2635915 m!2980469))

(assert (=> b!2635915 m!2980467))

(assert (=> b!2635915 m!2980469))

(declare-fun m!2980471 () Bool)

(assert (=> b!2635915 m!2980471))

(assert (=> b!2635914 m!2979715))

(assert (=> d!747744 d!748042))

(assert (=> b!2635370 d!747780))

(declare-fun d!748048 () Bool)

(assert (=> d!748048 (= (head!6044 lt!927559) (h!35942 lt!927559))))

(assert (=> b!2635357 d!748048))

(assert (=> b!2635104 d!747966))

(declare-fun b!2635936 () Bool)

(declare-fun res!1109881 () Bool)

(declare-fun e!1663249 () Bool)

(assert (=> b!2635936 (=> (not res!1109881) (not e!1663249))))

(assert (=> b!2635936 (= res!1109881 (isBalanced!2887 (right!23911 (++!7443 (c!423640 lt!927573) (c!423640 lt!927565)))))))

(declare-fun b!2635937 () Bool)

(declare-fun e!1663248 () Bool)

(assert (=> b!2635937 (= e!1663248 e!1663249)))

(declare-fun res!1109884 () Bool)

(assert (=> b!2635937 (=> (not res!1109884) (not e!1663249))))

(assert (=> b!2635937 (= res!1109884 (<= (- 1) (- (height!1380 (left!23581 (++!7443 (c!423640 lt!927573) (c!423640 lt!927565)))) (height!1380 (right!23911 (++!7443 (c!423640 lt!927573) (c!423640 lt!927565)))))))))

(declare-fun b!2635938 () Bool)

(declare-fun res!1109885 () Bool)

(assert (=> b!2635938 (=> (not res!1109885) (not e!1663249))))

(declare-fun isEmpty!17426 (Conc!9528) Bool)

(assert (=> b!2635938 (= res!1109885 (not (isEmpty!17426 (left!23581 (++!7443 (c!423640 lt!927573) (c!423640 lt!927565))))))))

(declare-fun b!2635939 () Bool)

(declare-fun res!1109886 () Bool)

(assert (=> b!2635939 (=> (not res!1109886) (not e!1663249))))

(assert (=> b!2635939 (= res!1109886 (isBalanced!2887 (left!23581 (++!7443 (c!423640 lt!927573) (c!423640 lt!927565)))))))

(declare-fun b!2635940 () Bool)

(assert (=> b!2635940 (= e!1663249 (not (isEmpty!17426 (right!23911 (++!7443 (c!423640 lt!927573) (c!423640 lt!927565))))))))

(declare-fun b!2635941 () Bool)

(declare-fun res!1109882 () Bool)

(assert (=> b!2635941 (=> (not res!1109882) (not e!1663249))))

(assert (=> b!2635941 (= res!1109882 (<= (- (height!1380 (left!23581 (++!7443 (c!423640 lt!927573) (c!423640 lt!927565)))) (height!1380 (right!23911 (++!7443 (c!423640 lt!927573) (c!423640 lt!927565))))) 1))))

(declare-fun d!748050 () Bool)

(declare-fun res!1109883 () Bool)

(assert (=> d!748050 (=> res!1109883 e!1663248)))

(assert (=> d!748050 (= res!1109883 (not ((_ is Node!9528) (++!7443 (c!423640 lt!927573) (c!423640 lt!927565)))))))

(assert (=> d!748050 (= (isBalanced!2887 (++!7443 (c!423640 lt!927573) (c!423640 lt!927565))) e!1663248)))

(assert (= (and d!748050 (not res!1109883)) b!2635937))

(assert (= (and b!2635937 res!1109884) b!2635941))

(assert (= (and b!2635941 res!1109882) b!2635939))

(assert (= (and b!2635939 res!1109886) b!2635936))

(assert (= (and b!2635936 res!1109881) b!2635938))

(assert (= (and b!2635938 res!1109885) b!2635940))

(declare-fun m!2980499 () Bool)

(assert (=> b!2635936 m!2980499))

(declare-fun m!2980501 () Bool)

(assert (=> b!2635939 m!2980501))

(declare-fun m!2980505 () Bool)

(assert (=> b!2635938 m!2980505))

(declare-fun m!2980507 () Bool)

(assert (=> b!2635937 m!2980507))

(declare-fun m!2980509 () Bool)

(assert (=> b!2635937 m!2980509))

(assert (=> b!2635941 m!2980507))

(assert (=> b!2635941 m!2980509))

(declare-fun m!2980511 () Bool)

(assert (=> b!2635940 m!2980511))

(assert (=> b!2635061 d!748050))

(declare-fun b!2636080 () Bool)

(declare-fun e!1663325 () Conc!9528)

(declare-fun e!1663327 () Conc!9528)

(assert (=> b!2636080 (= e!1663325 e!1663327)))

(declare-fun c!423933 () Bool)

(assert (=> b!2636080 (= c!423933 (= (c!423640 lt!927565) Empty!9528))))

(declare-fun b!2636081 () Bool)

(declare-fun e!1663330 () Conc!9528)

(declare-fun call!169684 () Conc!9528)

(assert (=> b!2636081 (= e!1663330 call!169684)))

(declare-fun b!2636082 () Bool)

(declare-fun e!1663328 () Conc!9528)

(declare-fun call!169680 () Conc!9528)

(assert (=> b!2636082 (= e!1663328 call!169680)))

(declare-fun c!423939 () Bool)

(declare-fun call!169679 () Int)

(declare-fun bm!169672 () Bool)

(assert (=> bm!169672 (= call!169679 (height!1380 (ite c!423939 (left!23581 (c!423640 lt!927573)) (left!23581 (c!423640 lt!927565)))))))

(declare-fun bm!169673 () Bool)

(declare-fun call!169677 () Conc!9528)

(declare-fun call!169691 () Conc!9528)

(assert (=> bm!169673 (= call!169677 call!169691)))

(declare-fun bm!169674 () Bool)

(declare-fun call!169692 () Conc!9528)

(declare-fun call!169682 () Conc!9528)

(assert (=> bm!169674 (= call!169692 call!169682)))

(declare-fun d!748066 () Bool)

(declare-fun e!1663326 () Bool)

(assert (=> d!748066 e!1663326))

(declare-fun res!1109935 () Bool)

(assert (=> d!748066 (=> (not res!1109935) (not e!1663326))))

(assert (=> d!748066 (= res!1109935 (appendAssocInst!636 (c!423640 lt!927573) (c!423640 lt!927565)))))

(declare-fun lt!928158 () Conc!9528)

(assert (=> d!748066 (= lt!928158 e!1663325)))

(declare-fun c!423937 () Bool)

(assert (=> d!748066 (= c!423937 (= (c!423640 lt!927573) Empty!9528))))

(declare-fun e!1663329 () Bool)

(assert (=> d!748066 e!1663329))

(declare-fun res!1109936 () Bool)

(assert (=> d!748066 (=> (not res!1109936) (not e!1663329))))

(assert (=> d!748066 (= res!1109936 (isBalanced!2887 (c!423640 lt!927573)))))

(assert (=> d!748066 (= (++!7443 (c!423640 lt!927573) (c!423640 lt!927565)) lt!928158)))

(declare-fun bm!169675 () Bool)

(assert (=> bm!169675 (= call!169680 call!169692)))

(declare-fun b!2636083 () Bool)

(declare-fun e!1663322 () Conc!9528)

(declare-fun call!169687 () Conc!9528)

(assert (=> b!2636083 (= e!1663322 call!169687)))

(declare-fun bm!169676 () Bool)

(declare-fun call!169689 () Int)

(assert (=> bm!169676 (= call!169689 (height!1380 (ite c!423939 (right!23911 (c!423640 lt!927573)) (right!23911 (c!423640 lt!927565)))))))

(declare-fun bm!169677 () Bool)

(assert (=> bm!169677 (= call!169684 call!169680)))

(declare-fun call!169685 () Conc!9528)

(declare-fun c!423932 () Bool)

(declare-fun call!169690 () Conc!9528)

(declare-fun bm!169678 () Bool)

(declare-fun c!423936 () Bool)

(declare-fun c!423934 () Bool)

(declare-fun lt!928159 () Conc!9528)

(declare-fun c!423935 () Bool)

(declare-fun lt!928157 () Conc!9528)

(declare-fun call!169681 () Conc!9528)

(declare-fun <>!230 (Conc!9528 Conc!9528) Conc!9528)

(assert (=> bm!169678 (= call!169682 (<>!230 (ite c!423932 (c!423640 lt!927573) (ite c!423939 (ite c!423934 (left!23581 (c!423640 lt!927573)) call!169685) (ite c!423935 call!169690 (ite c!423936 call!169681 lt!928157)))) (ite c!423932 (c!423640 lt!927565) (ite c!423939 (ite c!423934 call!169685 lt!928159) (ite (or c!423935 c!423936) (right!23911 (c!423640 lt!927565)) call!169681)))))))

(declare-fun b!2636084 () Bool)

(declare-fun e!1663324 () Conc!9528)

(assert (=> b!2636084 (= e!1663322 e!1663324)))

(assert (=> b!2636084 (= lt!928159 call!169677)))

(declare-fun call!169683 () Int)

(declare-fun call!169688 () Int)

(assert (=> b!2636084 (= c!423934 (= call!169683 (- call!169688 3)))))

(declare-fun b!2636085 () Bool)

(assert (=> b!2636085 (= e!1663326 (= (list!11494 lt!928158) (++!7441 (list!11494 (c!423640 lt!927573)) (list!11494 (c!423640 lt!927565)))))))

(declare-fun bm!169679 () Bool)

(declare-fun call!169686 () Conc!9528)

(assert (=> bm!169679 (= call!169686 call!169692)))

(declare-fun b!2636086 () Bool)

(declare-fun lt!928160 () Int)

(assert (=> b!2636086 (= c!423932 (and (<= (- 1) lt!928160) (<= lt!928160 1)))))

(assert (=> b!2636086 (= lt!928160 (- (height!1380 (c!423640 lt!927565)) (height!1380 (c!423640 lt!927573))))))

(declare-fun e!1663323 () Conc!9528)

(assert (=> b!2636086 (= e!1663327 e!1663323)))

(declare-fun b!2636087 () Bool)

(declare-fun c!423938 () Bool)

(assert (=> b!2636087 (= c!423938 (>= call!169679 call!169689))))

(declare-fun e!1663321 () Conc!9528)

(assert (=> b!2636087 (= e!1663321 e!1663322)))

(declare-fun b!2636088 () Bool)

(assert (=> b!2636088 (= e!1663324 call!169686)))

(declare-fun bm!169680 () Bool)

(assert (=> bm!169680 (= call!169688 (height!1380 (ite c!423939 (c!423640 lt!927573) lt!928157)))))

(declare-fun bm!169681 () Bool)

(declare-fun call!169678 () Conc!9528)

(assert (=> bm!169681 (= call!169678 (<>!230 (ite c!423939 (ite c!423938 (left!23581 (c!423640 lt!927573)) (ite c!423934 (left!23581 (right!23911 (c!423640 lt!927573))) (left!23581 (c!423640 lt!927573)))) (ite c!423936 lt!928157 (right!23911 (left!23581 (c!423640 lt!927565))))) (ite c!423939 (ite c!423938 call!169677 (ite c!423934 lt!928159 (left!23581 (right!23911 (c!423640 lt!927573))))) (ite c!423936 (right!23911 (left!23581 (c!423640 lt!927565))) (right!23911 (c!423640 lt!927565))))))))

(declare-fun b!2636089 () Bool)

(assert (=> b!2636089 (= c!423935 (>= call!169689 call!169679))))

(assert (=> b!2636089 (= e!1663321 e!1663328)))

(declare-fun bm!169682 () Bool)

(assert (=> bm!169682 (= call!169690 call!169691)))

(declare-fun bm!169683 () Bool)

(assert (=> bm!169683 (= call!169681 call!169678)))

(declare-fun b!2636090 () Bool)

(assert (=> b!2636090 (= e!1663328 e!1663330)))

(assert (=> b!2636090 (= lt!928157 call!169690)))

(assert (=> b!2636090 (= c!423936 (= call!169688 (- call!169683 3)))))

(declare-fun b!2636091 () Bool)

(assert (=> b!2636091 (= e!1663323 e!1663321)))

(assert (=> b!2636091 (= c!423939 (< lt!928160 (- 1)))))

(declare-fun b!2636092 () Bool)

(declare-fun res!1109937 () Bool)

(assert (=> b!2636092 (=> (not res!1109937) (not e!1663326))))

(assert (=> b!2636092 (= res!1109937 (<= (height!1380 lt!928158) (+ (max!0 (height!1380 (c!423640 lt!927573)) (height!1380 (c!423640 lt!927565))) 1)))))

(declare-fun b!2636093 () Bool)

(declare-fun res!1109938 () Bool)

(assert (=> b!2636093 (=> (not res!1109938) (not e!1663326))))

(assert (=> b!2636093 (= res!1109938 (isBalanced!2887 lt!928158))))

(declare-fun b!2636094 () Bool)

(assert (=> b!2636094 (= e!1663324 call!169686)))

(declare-fun b!2636095 () Bool)

(assert (=> b!2636095 (= e!1663325 (c!423640 lt!927565))))

(declare-fun bm!169684 () Bool)

(assert (=> bm!169684 (= call!169683 (height!1380 (ite c!423939 lt!928159 (c!423640 lt!927565))))))

(declare-fun bm!169685 () Bool)

(assert (=> bm!169685 (= call!169685 call!169687)))

(declare-fun b!2636096 () Bool)

(declare-fun res!1109939 () Bool)

(assert (=> b!2636096 (=> (not res!1109939) (not e!1663326))))

(assert (=> b!2636096 (= res!1109939 (>= (height!1380 lt!928158) (max!0 (height!1380 (c!423640 lt!927573)) (height!1380 (c!423640 lt!927565)))))))

(declare-fun b!2636097 () Bool)

(assert (=> b!2636097 (= e!1663323 call!169682)))

(declare-fun bm!169686 () Bool)

(assert (=> bm!169686 (= call!169691 (++!7443 (ite c!423939 (ite c!423938 (right!23911 (c!423640 lt!927573)) (right!23911 (right!23911 (c!423640 lt!927573)))) (c!423640 lt!927573)) (ite c!423939 (c!423640 lt!927565) (ite c!423935 (left!23581 (c!423640 lt!927565)) (left!23581 (left!23581 (c!423640 lt!927565)))))))))

(declare-fun b!2636098 () Bool)

(assert (=> b!2636098 (= e!1663327 (c!423640 lt!927573))))

(declare-fun b!2636099 () Bool)

(assert (=> b!2636099 (= e!1663330 call!169684)))

(declare-fun b!2636100 () Bool)

(assert (=> b!2636100 (= e!1663329 (isBalanced!2887 (c!423640 lt!927565)))))

(declare-fun bm!169687 () Bool)

(assert (=> bm!169687 (= call!169687 call!169678)))

(assert (= (and d!748066 res!1109936) b!2636100))

(assert (= (and d!748066 c!423937) b!2636095))

(assert (= (and d!748066 (not c!423937)) b!2636080))

(assert (= (and b!2636080 c!423933) b!2636098))

(assert (= (and b!2636080 (not c!423933)) b!2636086))

(assert (= (and b!2636086 c!423932) b!2636097))

(assert (= (and b!2636086 (not c!423932)) b!2636091))

(assert (= (and b!2636091 c!423939) b!2636087))

(assert (= (and b!2636091 (not c!423939)) b!2636089))

(assert (= (and b!2636087 c!423938) b!2636083))

(assert (= (and b!2636087 (not c!423938)) b!2636084))

(assert (= (and b!2636084 c!423934) b!2636088))

(assert (= (and b!2636084 (not c!423934)) b!2636094))

(assert (= (or b!2636088 b!2636094) bm!169685))

(assert (= (or b!2636088 b!2636094) bm!169679))

(assert (= (or b!2636083 b!2636084) bm!169673))

(assert (= (or b!2636083 bm!169685) bm!169687))

(assert (= (and b!2636089 c!423935) b!2636082))

(assert (= (and b!2636089 (not c!423935)) b!2636090))

(assert (= (and b!2636090 c!423936) b!2636081))

(assert (= (and b!2636090 (not c!423936)) b!2636099))

(assert (= (or b!2636081 b!2636099) bm!169683))

(assert (= (or b!2636081 b!2636099) bm!169677))

(assert (= (or b!2636082 b!2636090) bm!169682))

(assert (= (or b!2636082 bm!169677) bm!169675))

(assert (= (or b!2636084 b!2636090) bm!169684))

(assert (= (or b!2636087 b!2636089) bm!169672))

(assert (= (or b!2636084 b!2636090) bm!169680))

(assert (= (or b!2636087 b!2636089) bm!169676))

(assert (= (or bm!169673 bm!169682) bm!169686))

(assert (= (or bm!169687 bm!169683) bm!169681))

(assert (= (or bm!169679 bm!169675) bm!169674))

(assert (= (or b!2636097 bm!169674) bm!169678))

(assert (= (and d!748066 res!1109935) b!2636093))

(assert (= (and b!2636093 res!1109938) b!2636092))

(assert (= (and b!2636092 res!1109937) b!2636096))

(assert (= (and b!2636096 res!1109939) b!2636085))

(declare-fun m!2980611 () Bool)

(assert (=> b!2636092 m!2980611))

(assert (=> b!2636092 m!2979227))

(assert (=> b!2636092 m!2979229))

(assert (=> b!2636092 m!2979227))

(assert (=> b!2636092 m!2979229))

(assert (=> b!2636092 m!2979233))

(declare-fun m!2980613 () Bool)

(assert (=> b!2636085 m!2980613))

(assert (=> b!2636085 m!2979633))

(assert (=> b!2636085 m!2980033))

(assert (=> b!2636085 m!2979633))

(assert (=> b!2636085 m!2980033))

(declare-fun m!2980615 () Bool)

(assert (=> b!2636085 m!2980615))

(declare-fun m!2980617 () Bool)

(assert (=> b!2636100 m!2980617))

(declare-fun m!2980619 () Bool)

(assert (=> bm!169680 m!2980619))

(assert (=> b!2636086 m!2979229))

(assert (=> b!2636086 m!2979227))

(assert (=> d!748066 m!2979245))

(declare-fun m!2980621 () Bool)

(assert (=> d!748066 m!2980621))

(declare-fun m!2980623 () Bool)

(assert (=> bm!169684 m!2980623))

(assert (=> b!2636096 m!2980611))

(assert (=> b!2636096 m!2979227))

(assert (=> b!2636096 m!2979229))

(assert (=> b!2636096 m!2979227))

(assert (=> b!2636096 m!2979229))

(assert (=> b!2636096 m!2979233))

(declare-fun m!2980625 () Bool)

(assert (=> bm!169678 m!2980625))

(declare-fun m!2980627 () Bool)

(assert (=> bm!169686 m!2980627))

(declare-fun m!2980629 () Bool)

(assert (=> bm!169676 m!2980629))

(declare-fun m!2980631 () Bool)

(assert (=> bm!169672 m!2980631))

(declare-fun m!2980635 () Bool)

(assert (=> bm!169681 m!2980635))

(declare-fun m!2980637 () Bool)

(assert (=> b!2636093 m!2980637))

(assert (=> b!2635061 d!748066))

(declare-fun d!748112 () Bool)

(declare-fun lt!928166 () Bool)

(assert (=> d!748112 (= lt!928166 (isEmpty!17421 (list!11490 (_2!17556 lt!927812))))))

(assert (=> d!748112 (= lt!928166 (isEmpty!17426 (c!423640 (_2!17556 lt!927812))))))

(assert (=> d!748112 (= (isEmpty!17420 (_2!17556 lt!927812)) lt!928166)))

(declare-fun bs!476165 () Bool)

(assert (= bs!476165 d!748112))

(declare-fun m!2980649 () Bool)

(assert (=> bs!476165 m!2980649))

(assert (=> bs!476165 m!2980649))

(declare-fun m!2980651 () Bool)

(assert (=> bs!476165 m!2980651))

(declare-fun m!2980653 () Bool)

(assert (=> bs!476165 m!2980653))

(assert (=> b!2635186 d!748112))

(assert (=> d!747748 d!748042))

(declare-fun d!748118 () Bool)

(declare-fun lt!928167 () Token!8756)

(assert (=> d!748118 (= lt!928167 (apply!7282 (list!11491 (_1!17556 lt!927806)) 0))))

(assert (=> d!748118 (= lt!928167 (apply!7284 (c!423641 (_1!17556 lt!927806)) 0))))

(declare-fun e!1663335 () Bool)

(assert (=> d!748118 e!1663335))

(declare-fun res!1109941 () Bool)

(assert (=> d!748118 (=> (not res!1109941) (not e!1663335))))

(assert (=> d!748118 (= res!1109941 (<= 0 0))))

(assert (=> d!748118 (= (apply!7281 (_1!17556 lt!927806) 0) lt!928167)))

(declare-fun b!2636108 () Bool)

(assert (=> b!2636108 (= e!1663335 (< 0 (size!23601 (_1!17556 lt!927806))))))

(assert (= (and d!748118 res!1109941) b!2636108))

(declare-fun m!2980655 () Bool)

(assert (=> d!748118 m!2980655))

(assert (=> d!748118 m!2980655))

(declare-fun m!2980657 () Bool)

(assert (=> d!748118 m!2980657))

(declare-fun m!2980659 () Bool)

(assert (=> d!748118 m!2980659))

(assert (=> b!2636108 m!2979403))

(assert (=> b!2635182 d!748118))

(declare-fun d!748120 () Bool)

(declare-fun lt!928168 () Token!8756)

(assert (=> d!748120 (contains!5804 (list!11491 v!6381) lt!928168)))

(declare-fun e!1663337 () Token!8756)

(assert (=> d!748120 (= lt!928168 e!1663337)))

(declare-fun c!423943 () Bool)

(assert (=> d!748120 (= c!423943 (= from!862 0))))

(declare-fun e!1663336 () Bool)

(assert (=> d!748120 e!1663336))

(declare-fun res!1109942 () Bool)

(assert (=> d!748120 (=> (not res!1109942) (not e!1663336))))

(assert (=> d!748120 (= res!1109942 (<= 0 from!862))))

(assert (=> d!748120 (= (apply!7282 (list!11491 v!6381) from!862) lt!928168)))

(declare-fun b!2636109 () Bool)

(assert (=> b!2636109 (= e!1663336 (< from!862 (size!23608 (list!11491 v!6381))))))

(declare-fun b!2636110 () Bool)

(assert (=> b!2636110 (= e!1663337 (head!6044 (list!11491 v!6381)))))

(declare-fun b!2636111 () Bool)

(assert (=> b!2636111 (= e!1663337 (apply!7282 (tail!4282 (list!11491 v!6381)) (- from!862 1)))))

(assert (= (and d!748120 res!1109942) b!2636109))

(assert (= (and d!748120 c!423943) b!2636110))

(assert (= (and d!748120 (not c!423943)) b!2636111))

(assert (=> d!748120 m!2978913))

(declare-fun m!2980661 () Bool)

(assert (=> d!748120 m!2980661))

(assert (=> b!2636109 m!2978913))

(assert (=> b!2636109 m!2979625))

(assert (=> b!2636110 m!2978913))

(declare-fun m!2980663 () Bool)

(assert (=> b!2636110 m!2980663))

(assert (=> b!2636111 m!2978913))

(declare-fun m!2980665 () Bool)

(assert (=> b!2636111 m!2980665))

(assert (=> b!2636111 m!2980665))

(declare-fun m!2980667 () Bool)

(assert (=> b!2636111 m!2980667))

(assert (=> d!747770 d!748120))

(assert (=> d!747770 d!747748))

(declare-fun b!2636126 () Bool)

(declare-fun e!1663346 () Bool)

(assert (=> b!2636126 (= e!1663346 (< from!862 (size!23609 (c!423641 v!6381))))))

(declare-fun b!2636127 () Bool)

(declare-fun e!1663349 () Token!8756)

(declare-fun call!169696 () Token!8756)

(assert (=> b!2636127 (= e!1663349 call!169696)))

(declare-fun b!2636129 () Bool)

(assert (=> b!2636129 (= e!1663349 call!169696)))

(declare-fun b!2636130 () Bool)

(declare-fun e!1663348 () Int)

(assert (=> b!2636130 (= e!1663348 (- from!862 (size!23609 (left!23582 (c!423641 v!6381)))))))

(declare-fun bm!169691 () Bool)

(declare-fun c!423950 () Bool)

(declare-fun c!423951 () Bool)

(assert (=> bm!169691 (= c!423950 c!423951)))

(assert (=> bm!169691 (= call!169696 (apply!7284 (ite c!423951 (left!23582 (c!423641 v!6381)) (right!23912 (c!423641 v!6381))) e!1663348))))

(declare-fun b!2636131 () Bool)

(declare-fun e!1663347 () Token!8756)

(assert (=> b!2636131 (= e!1663347 e!1663349)))

(declare-fun lt!928174 () Bool)

(declare-fun appendIndex!271 (List!30622 List!30622 Int) Bool)

(assert (=> b!2636131 (= lt!928174 (appendIndex!271 (list!11495 (left!23582 (c!423641 v!6381))) (list!11495 (right!23912 (c!423641 v!6381))) from!862))))

(assert (=> b!2636131 (= c!423951 (< from!862 (size!23609 (left!23582 (c!423641 v!6381)))))))

(declare-fun b!2636132 () Bool)

(assert (=> b!2636132 (= e!1663348 from!862)))

(declare-fun b!2636128 () Bool)

(declare-fun apply!7286 (IArray!19063 Int) Token!8756)

(assert (=> b!2636128 (= e!1663347 (apply!7286 (xs!12533 (c!423641 v!6381)) from!862))))

(declare-fun d!748122 () Bool)

(declare-fun lt!928173 () Token!8756)

(assert (=> d!748122 (= lt!928173 (apply!7282 (list!11495 (c!423641 v!6381)) from!862))))

(assert (=> d!748122 (= lt!928173 e!1663347)))

(declare-fun c!423952 () Bool)

(assert (=> d!748122 (= c!423952 ((_ is Leaf!14591) (c!423641 v!6381)))))

(assert (=> d!748122 e!1663346))

(declare-fun res!1109945 () Bool)

(assert (=> d!748122 (=> (not res!1109945) (not e!1663346))))

(assert (=> d!748122 (= res!1109945 (<= 0 from!862))))

(assert (=> d!748122 (= (apply!7284 (c!423641 v!6381) from!862) lt!928173)))

(assert (= (and d!748122 res!1109945) b!2636126))

(assert (= (and d!748122 c!423952) b!2636128))

(assert (= (and d!748122 (not c!423952)) b!2636131))

(assert (= (and b!2636131 c!423951) b!2636127))

(assert (= (and b!2636131 (not c!423951)) b!2636129))

(assert (= (or b!2636127 b!2636129) bm!169691))

(assert (= (and bm!169691 c!423950) b!2636132))

(assert (= (and bm!169691 (not c!423950)) b!2636130))

(declare-fun m!2980669 () Bool)

(assert (=> b!2636128 m!2980669))

(declare-fun m!2980671 () Bool)

(assert (=> bm!169691 m!2980671))

(declare-fun m!2980673 () Bool)

(assert (=> b!2636130 m!2980673))

(assert (=> d!748122 m!2979549))

(assert (=> d!748122 m!2979549))

(declare-fun m!2980675 () Bool)

(assert (=> d!748122 m!2980675))

(assert (=> b!2636126 m!2979627))

(assert (=> b!2636131 m!2980467))

(assert (=> b!2636131 m!2980469))

(assert (=> b!2636131 m!2980467))

(assert (=> b!2636131 m!2980469))

(declare-fun m!2980677 () Bool)

(assert (=> b!2636131 m!2980677))

(assert (=> b!2636131 m!2980673))

(assert (=> d!747770 d!748122))

(declare-fun d!748124 () Bool)

(assert (=> d!748124 (= (inv!41410 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 separatorToken!156))) (value!149930 separatorToken!156))) (isBalanced!2887 (c!423640 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 separatorToken!156))) (value!149930 separatorToken!156)))))))

(declare-fun bs!476166 () Bool)

(assert (= bs!476166 d!748124))

(declare-fun m!2980679 () Bool)

(assert (=> bs!476166 m!2980679))

(assert (=> tb!143783 d!748124))

(declare-fun lt!928175 () BalanceConc!18670)

(declare-fun d!748126 () Bool)

(assert (=> d!748126 (= (list!11490 lt!928175) (originalCharacters!5409 (ite c!423685 call!169543 call!169541)))))

(assert (=> d!748126 (= lt!928175 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 (ite c!423685 call!169543 call!169541)))) (value!149930 (ite c!423685 call!169543 call!169541))))))

(assert (=> d!748126 (= (charsOf!2930 (ite c!423685 call!169543 call!169541)) lt!928175)))

(declare-fun b_lambda!79409 () Bool)

(assert (=> (not b_lambda!79409) (not d!748126)))

(declare-fun tb!143819 () Bool)

(declare-fun t!216831 () Bool)

(assert (=> (and b!2634850 (= (toChars!6420 (transformation!4643 (h!35941 rules!1726))) (toChars!6420 (transformation!4643 (rule!7027 (ite c!423685 call!169543 call!169541))))) t!216831) tb!143819))

(declare-fun b!2636133 () Bool)

(declare-fun e!1663350 () Bool)

(declare-fun tp!835047 () Bool)

(assert (=> b!2636133 (= e!1663350 (and (inv!41409 (c!423640 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 (ite c!423685 call!169543 call!169541)))) (value!149930 (ite c!423685 call!169543 call!169541))))) tp!835047))))

(declare-fun result!178762 () Bool)

(assert (=> tb!143819 (= result!178762 (and (inv!41410 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 (ite c!423685 call!169543 call!169541)))) (value!149930 (ite c!423685 call!169543 call!169541)))) e!1663350))))

(assert (= tb!143819 b!2636133))

(declare-fun m!2980681 () Bool)

(assert (=> b!2636133 m!2980681))

(declare-fun m!2980683 () Bool)

(assert (=> tb!143819 m!2980683))

(assert (=> d!748126 t!216831))

(declare-fun b_and!193031 () Bool)

(assert (= b_and!193019 (and (=> t!216831 result!178762) b_and!193031)))

(declare-fun t!216833 () Bool)

(declare-fun tb!143821 () Bool)

(assert (=> (and b!2634862 (= (toChars!6420 (transformation!4643 (rule!7027 separatorToken!156))) (toChars!6420 (transformation!4643 (rule!7027 (ite c!423685 call!169543 call!169541))))) t!216833) tb!143821))

(declare-fun result!178764 () Bool)

(assert (= result!178764 result!178762))

(assert (=> d!748126 t!216833))

(declare-fun b_and!193033 () Bool)

(assert (= b_and!193021 (and (=> t!216833 result!178764) b_and!193033)))

(declare-fun t!216835 () Bool)

(declare-fun tb!143823 () Bool)

(assert (=> (and b!2635424 (= (toChars!6420 (transformation!4643 (h!35941 (t!216742 rules!1726)))) (toChars!6420 (transformation!4643 (rule!7027 (ite c!423685 call!169543 call!169541))))) t!216835) tb!143823))

(declare-fun result!178766 () Bool)

(assert (= result!178766 result!178762))

(assert (=> d!748126 t!216835))

(declare-fun b_and!193035 () Bool)

(assert (= b_and!193023 (and (=> t!216835 result!178766) b_and!193035)))

(declare-fun m!2980685 () Bool)

(assert (=> d!748126 m!2980685))

(declare-fun m!2980687 () Bool)

(assert (=> d!748126 m!2980687))

(assert (=> bm!169538 d!748126))

(declare-fun d!748128 () Bool)

(declare-fun lt!928176 () BalanceConc!18670)

(assert (=> d!748128 (= (list!11490 lt!928176) (printList!1168 thiss!14197 (list!11491 (singletonSeq!2060 lt!927569))))))

(assert (=> d!748128 (= lt!928176 (printTailRec!1127 thiss!14197 (singletonSeq!2060 lt!927569) 0 (BalanceConc!18671 Empty!9528)))))

(assert (=> d!748128 (= (print!1641 thiss!14197 (singletonSeq!2060 lt!927569)) lt!928176)))

(declare-fun bs!476167 () Bool)

(assert (= bs!476167 d!748128))

(declare-fun m!2980689 () Bool)

(assert (=> bs!476167 m!2980689))

(assert (=> bs!476167 m!2978905))

(assert (=> bs!476167 m!2979401))

(assert (=> bs!476167 m!2979401))

(declare-fun m!2980691 () Bool)

(assert (=> bs!476167 m!2980691))

(assert (=> bs!476167 m!2978905))

(declare-fun m!2980693 () Bool)

(assert (=> bs!476167 m!2980693))

(assert (=> d!747714 d!748128))

(declare-fun b!2636134 () Bool)

(declare-fun e!1663353 () Bool)

(declare-fun lt!928177 () tuple2!30028)

(assert (=> b!2636134 (= e!1663353 (= (list!11490 (_2!17556 lt!928177)) (_2!17561 (lexList!1162 thiss!14197 rules!1726 (list!11490 (print!1641 thiss!14197 (singletonSeq!2060 lt!927569)))))))))

(declare-fun d!748130 () Bool)

(assert (=> d!748130 e!1663353))

(declare-fun res!1109946 () Bool)

(assert (=> d!748130 (=> (not res!1109946) (not e!1663353))))

(declare-fun e!1663352 () Bool)

(assert (=> d!748130 (= res!1109946 e!1663352)))

(declare-fun c!423953 () Bool)

(assert (=> d!748130 (= c!423953 (> (size!23601 (_1!17556 lt!928177)) 0))))

(assert (=> d!748130 (= lt!928177 (lexTailRecV2!837 thiss!14197 rules!1726 (print!1641 thiss!14197 (singletonSeq!2060 lt!927569)) (BalanceConc!18671 Empty!9528) (print!1641 thiss!14197 (singletonSeq!2060 lt!927569)) (BalanceConc!18673 Empty!9529)))))

(assert (=> d!748130 (= (lex!1903 thiss!14197 rules!1726 (print!1641 thiss!14197 (singletonSeq!2060 lt!927569))) lt!928177)))

(declare-fun b!2636135 () Bool)

(assert (=> b!2636135 (= e!1663352 (= (_2!17556 lt!928177) (print!1641 thiss!14197 (singletonSeq!2060 lt!927569))))))

(declare-fun b!2636136 () Bool)

(declare-fun e!1663351 () Bool)

(assert (=> b!2636136 (= e!1663351 (not (isEmpty!17412 (_1!17556 lt!928177))))))

(declare-fun b!2636137 () Bool)

(declare-fun res!1109948 () Bool)

(assert (=> b!2636137 (=> (not res!1109948) (not e!1663353))))

(assert (=> b!2636137 (= res!1109948 (= (list!11491 (_1!17556 lt!928177)) (_1!17561 (lexList!1162 thiss!14197 rules!1726 (list!11490 (print!1641 thiss!14197 (singletonSeq!2060 lt!927569)))))))))

(declare-fun b!2636138 () Bool)

(assert (=> b!2636138 (= e!1663352 e!1663351)))

(declare-fun res!1109947 () Bool)

(assert (=> b!2636138 (= res!1109947 (< (size!23606 (_2!17556 lt!928177)) (size!23606 (print!1641 thiss!14197 (singletonSeq!2060 lt!927569)))))))

(assert (=> b!2636138 (=> (not res!1109947) (not e!1663351))))

(assert (= (and d!748130 c!423953) b!2636138))

(assert (= (and d!748130 (not c!423953)) b!2636135))

(assert (= (and b!2636138 res!1109947) b!2636136))

(assert (= (and d!748130 res!1109946) b!2636137))

(assert (= (and b!2636137 res!1109948) b!2636134))

(declare-fun m!2980695 () Bool)

(assert (=> b!2636137 m!2980695))

(assert (=> b!2636137 m!2979395))

(declare-fun m!2980697 () Bool)

(assert (=> b!2636137 m!2980697))

(assert (=> b!2636137 m!2980697))

(declare-fun m!2980699 () Bool)

(assert (=> b!2636137 m!2980699))

(declare-fun m!2980701 () Bool)

(assert (=> d!748130 m!2980701))

(assert (=> d!748130 m!2979395))

(assert (=> d!748130 m!2979395))

(declare-fun m!2980703 () Bool)

(assert (=> d!748130 m!2980703))

(declare-fun m!2980705 () Bool)

(assert (=> b!2636136 m!2980705))

(declare-fun m!2980707 () Bool)

(assert (=> b!2636134 m!2980707))

(assert (=> b!2636134 m!2979395))

(assert (=> b!2636134 m!2980697))

(assert (=> b!2636134 m!2980697))

(assert (=> b!2636134 m!2980699))

(declare-fun m!2980709 () Bool)

(assert (=> b!2636138 m!2980709))

(assert (=> b!2636138 m!2979395))

(declare-fun m!2980711 () Bool)

(assert (=> b!2636138 m!2980711))

(assert (=> d!747714 d!748130))

(assert (=> d!747714 d!747620))

(declare-fun d!748132 () Bool)

(assert (=> d!748132 (= (list!11491 (singletonSeq!2060 lt!927569)) (list!11495 (c!423641 (singletonSeq!2060 lt!927569))))))

(declare-fun bs!476168 () Bool)

(assert (= bs!476168 d!748132))

(declare-fun m!2980713 () Bool)

(assert (=> bs!476168 m!2980713))

(assert (=> d!747714 d!748132))

(declare-fun d!748134 () Bool)

(declare-fun lt!928178 () Int)

(assert (=> d!748134 (= lt!928178 (size!23608 (list!11491 (_1!17556 lt!927806))))))

(assert (=> d!748134 (= lt!928178 (size!23609 (c!423641 (_1!17556 lt!927806))))))

(assert (=> d!748134 (= (size!23601 (_1!17556 lt!927806)) lt!928178)))

(declare-fun bs!476169 () Bool)

(assert (= bs!476169 d!748134))

(assert (=> bs!476169 m!2980655))

(assert (=> bs!476169 m!2980655))

(declare-fun m!2980715 () Bool)

(assert (=> bs!476169 m!2980715))

(declare-fun m!2980717 () Bool)

(assert (=> bs!476169 m!2980717))

(assert (=> d!747714 d!748134))

(declare-fun d!748136 () Bool)

(assert (=> d!748136 (= (list!11491 (_1!17556 (lex!1903 thiss!14197 rules!1726 (print!1641 thiss!14197 (singletonSeq!2060 lt!927569))))) (list!11495 (c!423641 (_1!17556 (lex!1903 thiss!14197 rules!1726 (print!1641 thiss!14197 (singletonSeq!2060 lt!927569)))))))))

(declare-fun bs!476170 () Bool)

(assert (= bs!476170 d!748136))

(declare-fun m!2980719 () Bool)

(assert (=> bs!476170 m!2980719))

(assert (=> d!747714 d!748136))

(assert (=> d!747714 d!747716))

(declare-fun d!748138 () Bool)

(assert (=> d!748138 (= (list!11490 lt!927723) (list!11494 (c!423640 lt!927723)))))

(declare-fun bs!476171 () Bool)

(assert (= bs!476171 d!748138))

(declare-fun m!2980721 () Bool)

(assert (=> bs!476171 m!2980721))

(assert (=> d!747690 d!748138))

(assert (=> b!2635108 d!747892))

(declare-fun d!748140 () Bool)

(assert (=> d!748140 (= (get!9609 (maxPrefix!2312 thiss!14197 rules!1726 (list!11490 (++!7439 lt!927573 lt!927565)))) (v!32474 (maxPrefix!2312 thiss!14197 rules!1726 (list!11490 (++!7439 lt!927573 lt!927565)))))))

(assert (=> b!2635108 d!748140))

(declare-fun d!748142 () Bool)

(declare-fun e!1663362 () Bool)

(assert (=> d!748142 e!1663362))

(declare-fun res!1109966 () Bool)

(assert (=> d!748142 (=> res!1109966 e!1663362)))

(declare-fun lt!928189 () Option!6040)

(assert (=> d!748142 (= res!1109966 (isEmpty!17422 lt!928189))))

(declare-fun e!1663361 () Option!6040)

(assert (=> d!748142 (= lt!928189 e!1663361)))

(declare-fun c!423956 () Bool)

(assert (=> d!748142 (= c!423956 (and ((_ is Cons!30521) rules!1726) ((_ is Nil!30521) (t!216742 rules!1726))))))

(declare-fun lt!928192 () Unit!44539)

(declare-fun lt!928191 () Unit!44539)

(assert (=> d!748142 (= lt!928192 lt!928191)))

(assert (=> d!748142 (isPrefix!2441 (list!11490 (++!7439 lt!927573 lt!927565)) (list!11490 (++!7439 lt!927573 lt!927565)))))

(assert (=> d!748142 (= lt!928191 (lemmaIsPrefixRefl!1567 (list!11490 (++!7439 lt!927573 lt!927565)) (list!11490 (++!7439 lt!927573 lt!927565))))))

(assert (=> d!748142 (rulesValidInductive!1619 thiss!14197 rules!1726)))

(assert (=> d!748142 (= (maxPrefix!2312 thiss!14197 rules!1726 (list!11490 (++!7439 lt!927573 lt!927565))) lt!928189)))

(declare-fun call!169699 () Option!6040)

(declare-fun bm!169694 () Bool)

(assert (=> bm!169694 (= call!169699 (maxPrefixOneRule!1469 thiss!14197 (h!35941 rules!1726) (list!11490 (++!7439 lt!927573 lt!927565))))))

(declare-fun b!2636157 () Bool)

(declare-fun e!1663360 () Bool)

(declare-fun contains!5808 (List!30621 Rule!9086) Bool)

(assert (=> b!2636157 (= e!1663360 (contains!5808 rules!1726 (rule!7027 (_1!17560 (get!9609 lt!928189)))))))

(declare-fun b!2636158 () Bool)

(assert (=> b!2636158 (= e!1663361 call!169699)))

(declare-fun b!2636159 () Bool)

(declare-fun res!1109963 () Bool)

(assert (=> b!2636159 (=> (not res!1109963) (not e!1663360))))

(assert (=> b!2636159 (= res!1109963 (matchR!3611 (regex!4643 (rule!7027 (_1!17560 (get!9609 lt!928189)))) (list!11490 (charsOf!2930 (_1!17560 (get!9609 lt!928189))))))))

(declare-fun b!2636160 () Bool)

(declare-fun res!1109968 () Bool)

(assert (=> b!2636160 (=> (not res!1109968) (not e!1663360))))

(assert (=> b!2636160 (= res!1109968 (= (++!7441 (list!11490 (charsOf!2930 (_1!17560 (get!9609 lt!928189)))) (_2!17560 (get!9609 lt!928189))) (list!11490 (++!7439 lt!927573 lt!927565))))))

(declare-fun b!2636161 () Bool)

(declare-fun res!1109969 () Bool)

(assert (=> b!2636161 (=> (not res!1109969) (not e!1663360))))

(declare-fun apply!7288 (TokenValueInjection!9170 BalanceConc!18670) TokenValue!4865)

(assert (=> b!2636161 (= res!1109969 (= (value!149930 (_1!17560 (get!9609 lt!928189))) (apply!7288 (transformation!4643 (rule!7027 (_1!17560 (get!9609 lt!928189)))) (seqFromList!3183 (originalCharacters!5409 (_1!17560 (get!9609 lt!928189)))))))))

(declare-fun b!2636162 () Bool)

(declare-fun res!1109965 () Bool)

(assert (=> b!2636162 (=> (not res!1109965) (not e!1663360))))

(assert (=> b!2636162 (= res!1109965 (= (list!11490 (charsOf!2930 (_1!17560 (get!9609 lt!928189)))) (originalCharacters!5409 (_1!17560 (get!9609 lt!928189)))))))

(declare-fun b!2636163 () Bool)

(declare-fun res!1109967 () Bool)

(assert (=> b!2636163 (=> (not res!1109967) (not e!1663360))))

(assert (=> b!2636163 (= res!1109967 (< (size!23607 (_2!17560 (get!9609 lt!928189))) (size!23607 (list!11490 (++!7439 lt!927573 lt!927565)))))))

(declare-fun b!2636164 () Bool)

(declare-fun lt!928193 () Option!6040)

(declare-fun lt!928190 () Option!6040)

(assert (=> b!2636164 (= e!1663361 (ite (and ((_ is None!6039) lt!928193) ((_ is None!6039) lt!928190)) None!6039 (ite ((_ is None!6039) lt!928190) lt!928193 (ite ((_ is None!6039) lt!928193) lt!928190 (ite (>= (size!23600 (_1!17560 (v!32474 lt!928193))) (size!23600 (_1!17560 (v!32474 lt!928190)))) lt!928193 lt!928190)))))))

(assert (=> b!2636164 (= lt!928193 call!169699)))

(assert (=> b!2636164 (= lt!928190 (maxPrefix!2312 thiss!14197 (t!216742 rules!1726) (list!11490 (++!7439 lt!927573 lt!927565))))))

(declare-fun b!2636165 () Bool)

(assert (=> b!2636165 (= e!1663362 e!1663360)))

(declare-fun res!1109964 () Bool)

(assert (=> b!2636165 (=> (not res!1109964) (not e!1663360))))

(assert (=> b!2636165 (= res!1109964 (isDefined!4804 lt!928189))))

(assert (= (and d!748142 c!423956) b!2636158))

(assert (= (and d!748142 (not c!423956)) b!2636164))

(assert (= (or b!2636158 b!2636164) bm!169694))

(assert (= (and d!748142 (not res!1109966)) b!2636165))

(assert (= (and b!2636165 res!1109964) b!2636162))

(assert (= (and b!2636162 res!1109965) b!2636163))

(assert (= (and b!2636163 res!1109967) b!2636160))

(assert (= (and b!2636160 res!1109968) b!2636161))

(assert (= (and b!2636161 res!1109969) b!2636159))

(assert (= (and b!2636159 res!1109963) b!2636157))

(declare-fun m!2980723 () Bool)

(assert (=> b!2636165 m!2980723))

(declare-fun m!2980725 () Bool)

(assert (=> b!2636160 m!2980725))

(declare-fun m!2980727 () Bool)

(assert (=> b!2636160 m!2980727))

(assert (=> b!2636160 m!2980727))

(declare-fun m!2980729 () Bool)

(assert (=> b!2636160 m!2980729))

(assert (=> b!2636160 m!2980729))

(declare-fun m!2980731 () Bool)

(assert (=> b!2636160 m!2980731))

(assert (=> b!2636162 m!2980725))

(assert (=> b!2636162 m!2980727))

(assert (=> b!2636162 m!2980727))

(assert (=> b!2636162 m!2980729))

(assert (=> b!2636159 m!2980725))

(assert (=> b!2636159 m!2980727))

(assert (=> b!2636159 m!2980727))

(assert (=> b!2636159 m!2980729))

(assert (=> b!2636159 m!2980729))

(declare-fun m!2980733 () Bool)

(assert (=> b!2636159 m!2980733))

(assert (=> b!2636157 m!2980725))

(declare-fun m!2980735 () Bool)

(assert (=> b!2636157 m!2980735))

(assert (=> b!2636163 m!2980725))

(declare-fun m!2980737 () Bool)

(assert (=> b!2636163 m!2980737))

(assert (=> b!2636163 m!2979295))

(declare-fun m!2980739 () Bool)

(assert (=> b!2636163 m!2980739))

(assert (=> b!2636161 m!2980725))

(declare-fun m!2980741 () Bool)

(assert (=> b!2636161 m!2980741))

(assert (=> b!2636161 m!2980741))

(declare-fun m!2980743 () Bool)

(assert (=> b!2636161 m!2980743))

(assert (=> b!2636164 m!2979295))

(assert (=> b!2636164 m!2979699))

(assert (=> bm!169694 m!2979295))

(declare-fun m!2980745 () Bool)

(assert (=> bm!169694 m!2980745))

(declare-fun m!2980747 () Bool)

(assert (=> d!748142 m!2980747))

(assert (=> d!748142 m!2979295))

(assert (=> d!748142 m!2979295))

(assert (=> d!748142 m!2979969))

(assert (=> d!748142 m!2979295))

(assert (=> d!748142 m!2979295))

(assert (=> d!748142 m!2979971))

(assert (=> d!748142 m!2979297))

(assert (=> b!2635108 d!748142))

(assert (=> b!2635108 d!747894))

(declare-fun d!748144 () Bool)

(declare-fun res!1109970 () Bool)

(declare-fun e!1663363 () Bool)

(assert (=> d!748144 (=> res!1109970 e!1663363)))

(assert (=> d!748144 (= res!1109970 ((_ is Nil!30522) (list!11491 v!6381)))))

(assert (=> d!748144 (= (forall!6403 (list!11491 v!6381) lambda!98904) e!1663363)))

(declare-fun b!2636166 () Bool)

(declare-fun e!1663364 () Bool)

(assert (=> b!2636166 (= e!1663363 e!1663364)))

(declare-fun res!1109971 () Bool)

(assert (=> b!2636166 (=> (not res!1109971) (not e!1663364))))

(assert (=> b!2636166 (= res!1109971 (dynLambda!13092 lambda!98904 (h!35942 (list!11491 v!6381))))))

(declare-fun b!2636167 () Bool)

(assert (=> b!2636167 (= e!1663364 (forall!6403 (t!216743 (list!11491 v!6381)) lambda!98904))))

(assert (= (and d!748144 (not res!1109970)) b!2636166))

(assert (= (and b!2636166 res!1109971) b!2636167))

(declare-fun b_lambda!79411 () Bool)

(assert (=> (not b_lambda!79411) (not b!2636166)))

(declare-fun m!2980749 () Bool)

(assert (=> b!2636166 m!2980749))

(declare-fun m!2980751 () Bool)

(assert (=> b!2636167 m!2980751))

(assert (=> d!747778 d!748144))

(assert (=> d!747778 d!747748))

(declare-fun d!748146 () Bool)

(declare-fun lt!928194 () Bool)

(assert (=> d!748146 (= lt!928194 (forall!6403 (list!11491 v!6381) lambda!98904))))

(assert (=> d!748146 (= lt!928194 (forall!6404 (c!423641 v!6381) lambda!98904))))

(assert (=> d!748146 (= (forall!6400 v!6381 lambda!98904) lt!928194)))

(declare-fun bs!476172 () Bool)

(assert (= bs!476172 d!748146))

(assert (=> bs!476172 m!2978913))

(assert (=> bs!476172 m!2978913))

(assert (=> bs!476172 m!2979619))

(declare-fun m!2980753 () Bool)

(assert (=> bs!476172 m!2980753))

(assert (=> d!747778 d!748146))

(assert (=> d!747778 d!747716))

(declare-fun d!748148 () Bool)

(assert (=> d!748148 (= (inv!41416 (xs!12533 (c!423641 v!6381))) (<= (size!23608 (innerList!9589 (xs!12533 (c!423641 v!6381)))) 2147483647))))

(declare-fun bs!476173 () Bool)

(assert (= bs!476173 d!748148))

(declare-fun m!2980755 () Bool)

(assert (=> bs!476173 m!2980755))

(assert (=> b!2635412 d!748148))

(assert (=> bm!169563 d!747796))

(declare-fun d!748150 () Bool)

(declare-fun res!1109972 () Bool)

(declare-fun e!1663365 () Bool)

(assert (=> d!748150 (=> res!1109972 e!1663365)))

(assert (=> d!748150 (= res!1109972 ((_ is Nil!30522) (list!11491 v!6381)))))

(assert (=> d!748150 (= (forall!6403 (list!11491 v!6381) lambda!98881) e!1663365)))

(declare-fun b!2636168 () Bool)

(declare-fun e!1663366 () Bool)

(assert (=> b!2636168 (= e!1663365 e!1663366)))

(declare-fun res!1109973 () Bool)

(assert (=> b!2636168 (=> (not res!1109973) (not e!1663366))))

(assert (=> b!2636168 (= res!1109973 (dynLambda!13092 lambda!98881 (h!35942 (list!11491 v!6381))))))

(declare-fun b!2636169 () Bool)

(assert (=> b!2636169 (= e!1663366 (forall!6403 (t!216743 (list!11491 v!6381)) lambda!98881))))

(assert (= (and d!748150 (not res!1109972)) b!2636168))

(assert (= (and b!2636168 res!1109973) b!2636169))

(declare-fun b_lambda!79413 () Bool)

(assert (=> (not b_lambda!79413) (not b!2636168)))

(declare-fun m!2980757 () Bool)

(assert (=> b!2636168 m!2980757))

(declare-fun m!2980759 () Bool)

(assert (=> b!2636169 m!2980759))

(assert (=> d!747782 d!748150))

(assert (=> d!747782 d!747748))

(declare-fun b!2636178 () Bool)

(declare-fun e!1663373 () Bool)

(declare-fun e!1663375 () Bool)

(assert (=> b!2636178 (= e!1663373 e!1663375)))

(declare-fun c!423959 () Bool)

(assert (=> b!2636178 (= c!423959 ((_ is Leaf!14591) (c!423641 v!6381)))))

(declare-fun b!2636180 () Bool)

(declare-fun e!1663374 () Bool)

(assert (=> b!2636180 (= e!1663375 e!1663374)))

(declare-fun lt!928199 () Unit!44539)

(declare-fun lemmaForallConcat!157 (List!30622 List!30622 Int) Unit!44539)

(assert (=> b!2636180 (= lt!928199 (lemmaForallConcat!157 (list!11495 (left!23582 (c!423641 v!6381))) (list!11495 (right!23912 (c!423641 v!6381))) lambda!98881))))

(declare-fun res!1109978 () Bool)

(assert (=> b!2636180 (= res!1109978 (forall!6404 (left!23582 (c!423641 v!6381)) lambda!98881))))

(assert (=> b!2636180 (=> (not res!1109978) (not e!1663374))))

(declare-fun b!2636181 () Bool)

(assert (=> b!2636181 (= e!1663374 (forall!6404 (right!23912 (c!423641 v!6381)) lambda!98881))))

(declare-fun d!748152 () Bool)

(declare-fun lt!928200 () Bool)

(assert (=> d!748152 (= lt!928200 (forall!6403 (list!11495 (c!423641 v!6381)) lambda!98881))))

(assert (=> d!748152 (= lt!928200 e!1663373)))

(declare-fun res!1109979 () Bool)

(assert (=> d!748152 (=> res!1109979 e!1663373)))

(assert (=> d!748152 (= res!1109979 ((_ is Empty!9529) (c!423641 v!6381)))))

(assert (=> d!748152 (= (forall!6404 (c!423641 v!6381) lambda!98881) lt!928200)))

(declare-fun b!2636179 () Bool)

(declare-fun forall!6407 (IArray!19063 Int) Bool)

(assert (=> b!2636179 (= e!1663375 (forall!6407 (xs!12533 (c!423641 v!6381)) lambda!98881))))

(assert (= (and d!748152 (not res!1109979)) b!2636178))

(assert (= (and b!2636178 c!423959) b!2636179))

(assert (= (and b!2636178 (not c!423959)) b!2636180))

(assert (= (and b!2636180 res!1109978) b!2636181))

(assert (=> b!2636180 m!2980467))

(assert (=> b!2636180 m!2980469))

(assert (=> b!2636180 m!2980467))

(assert (=> b!2636180 m!2980469))

(declare-fun m!2980761 () Bool)

(assert (=> b!2636180 m!2980761))

(declare-fun m!2980763 () Bool)

(assert (=> b!2636180 m!2980763))

(declare-fun m!2980765 () Bool)

(assert (=> b!2636181 m!2980765))

(assert (=> d!748152 m!2979549))

(assert (=> d!748152 m!2979549))

(declare-fun m!2980767 () Bool)

(assert (=> d!748152 m!2980767))

(declare-fun m!2980769 () Bool)

(assert (=> b!2636179 m!2980769))

(assert (=> d!747782 d!748152))

(declare-fun d!748154 () Bool)

(declare-fun lt!928201 () Int)

(assert (=> d!748154 (= lt!928201 (size!23608 (list!11491 (_1!17556 lt!927783))))))

(assert (=> d!748154 (= lt!928201 (size!23609 (c!423641 (_1!17556 lt!927783))))))

(assert (=> d!748154 (= (size!23601 (_1!17556 lt!927783)) lt!928201)))

(declare-fun bs!476174 () Bool)

(assert (= bs!476174 d!748154))

(assert (=> bs!476174 m!2979371))

(assert (=> bs!476174 m!2979371))

(declare-fun m!2980771 () Bool)

(assert (=> bs!476174 m!2980771))

(declare-fun m!2980773 () Bool)

(assert (=> bs!476174 m!2980773))

(assert (=> d!747702 d!748154))

(declare-fun lt!928413 () Option!6038)

(declare-fun lt!928403 () BalanceConc!18670)

(declare-fun e!1663404 () tuple2!30028)

(declare-fun b!2636227 () Bool)

(declare-fun append!730 (BalanceConc!18672 Token!8756) BalanceConc!18672)

(assert (=> b!2636227 (= e!1663404 (lexTailRecV2!837 thiss!14197 rules!1726 (seqFromList!3183 lt!927575) lt!928403 (_2!17557 (v!32462 lt!928413)) (append!730 (BalanceConc!18673 Empty!9529) (_1!17557 (v!32462 lt!928413)))))))

(declare-fun lt!928391 () tuple2!30028)

(declare-fun lexRec!565 (LexerInterface!4240 List!30621 BalanceConc!18670) tuple2!30028)

(assert (=> b!2636227 (= lt!928391 (lexRec!565 thiss!14197 rules!1726 (_2!17557 (v!32462 lt!928413))))))

(declare-fun lt!928388 () List!30620)

(assert (=> b!2636227 (= lt!928388 (list!11490 (BalanceConc!18671 Empty!9528)))))

(declare-fun lt!928394 () List!30620)

(assert (=> b!2636227 (= lt!928394 (list!11490 (charsOf!2930 (_1!17557 (v!32462 lt!928413)))))))

(declare-fun lt!928414 () List!30620)

(assert (=> b!2636227 (= lt!928414 (list!11490 (_2!17557 (v!32462 lt!928413))))))

(declare-fun lt!928397 () Unit!44539)

(assert (=> b!2636227 (= lt!928397 (lemmaConcatAssociativity!1492 lt!928388 lt!928394 lt!928414))))

(assert (=> b!2636227 (= (++!7441 (++!7441 lt!928388 lt!928394) lt!928414) (++!7441 lt!928388 (++!7441 lt!928394 lt!928414)))))

(declare-fun lt!928416 () Unit!44539)

(assert (=> b!2636227 (= lt!928416 lt!928397)))

(declare-fun lt!928401 () Option!6038)

(assert (=> b!2636227 (= lt!928401 (maxPrefixZipperSequence!966 thiss!14197 rules!1726 (seqFromList!3183 lt!927575)))))

(declare-fun c!423979 () Bool)

(assert (=> b!2636227 (= c!423979 ((_ is Some!6037) lt!928401))))

(declare-fun e!1663403 () tuple2!30028)

(assert (=> b!2636227 (= (lexRec!565 thiss!14197 rules!1726 (seqFromList!3183 lt!927575)) e!1663403)))

(declare-fun lt!928417 () Unit!44539)

(declare-fun Unit!44551 () Unit!44539)

(assert (=> b!2636227 (= lt!928417 Unit!44551)))

(declare-fun lt!928398 () List!30622)

(assert (=> b!2636227 (= lt!928398 (list!11491 (BalanceConc!18673 Empty!9529)))))

(declare-fun lt!928418 () List!30622)

(assert (=> b!2636227 (= lt!928418 (Cons!30522 (_1!17557 (v!32462 lt!928413)) Nil!30522))))

(declare-fun lt!928411 () List!30622)

(assert (=> b!2636227 (= lt!928411 (list!11491 (_1!17556 lt!928391)))))

(declare-fun lt!928420 () Unit!44539)

(declare-fun lemmaConcatAssociativity!1495 (List!30622 List!30622 List!30622) Unit!44539)

(assert (=> b!2636227 (= lt!928420 (lemmaConcatAssociativity!1495 lt!928398 lt!928418 lt!928411))))

(assert (=> b!2636227 (= (++!7445 (++!7445 lt!928398 lt!928418) lt!928411) (++!7445 lt!928398 (++!7445 lt!928418 lt!928411)))))

(declare-fun lt!928409 () Unit!44539)

(assert (=> b!2636227 (= lt!928409 lt!928420)))

(declare-fun lt!928408 () List!30620)

(assert (=> b!2636227 (= lt!928408 (++!7441 (list!11490 (BalanceConc!18671 Empty!9528)) (list!11490 (charsOf!2930 (_1!17557 (v!32462 lt!928413))))))))

(declare-fun lt!928390 () List!30620)

(assert (=> b!2636227 (= lt!928390 (list!11490 (_2!17557 (v!32462 lt!928413))))))

(declare-fun lt!928393 () List!30622)

(assert (=> b!2636227 (= lt!928393 (list!11491 (append!730 (BalanceConc!18673 Empty!9529) (_1!17557 (v!32462 lt!928413)))))))

(declare-fun lt!928387 () Unit!44539)

(declare-fun lemmaLexThenLexPrefix!379 (LexerInterface!4240 List!30621 List!30620 List!30620 List!30622 List!30622 List!30620) Unit!44539)

(assert (=> b!2636227 (= lt!928387 (lemmaLexThenLexPrefix!379 thiss!14197 rules!1726 lt!928408 lt!928390 lt!928393 (list!11491 (_1!17556 lt!928391)) (list!11490 (_2!17556 lt!928391))))))

(assert (=> b!2636227 (= (lexList!1162 thiss!14197 rules!1726 lt!928408) (tuple2!30039 lt!928393 Nil!30520))))

(declare-fun lt!928419 () Unit!44539)

(assert (=> b!2636227 (= lt!928419 lt!928387)))

(declare-fun lt!928395 () BalanceConc!18670)

(assert (=> b!2636227 (= lt!928395 (++!7439 (BalanceConc!18671 Empty!9528) (charsOf!2930 (_1!17557 (v!32462 lt!928413)))))))

(declare-fun lt!928400 () Option!6038)

(assert (=> b!2636227 (= lt!928400 (maxPrefixZipperSequence!966 thiss!14197 rules!1726 lt!928395))))

(declare-fun c!423977 () Bool)

(assert (=> b!2636227 (= c!423977 ((_ is Some!6037) lt!928400))))

(declare-fun e!1663402 () tuple2!30028)

(assert (=> b!2636227 (= (lexRec!565 thiss!14197 rules!1726 (++!7439 (BalanceConc!18671 Empty!9528) (charsOf!2930 (_1!17557 (v!32462 lt!928413))))) e!1663402)))

(declare-fun lt!928407 () Unit!44539)

(declare-fun Unit!44552 () Unit!44539)

(assert (=> b!2636227 (= lt!928407 Unit!44552)))

(assert (=> b!2636227 (= lt!928403 (++!7439 (BalanceConc!18671 Empty!9528) (charsOf!2930 (_1!17557 (v!32462 lt!928413)))))))

(declare-fun lt!928396 () List!30620)

(assert (=> b!2636227 (= lt!928396 (list!11490 lt!928403))))

(declare-fun lt!928399 () List!30620)

(assert (=> b!2636227 (= lt!928399 (list!11490 (_2!17557 (v!32462 lt!928413))))))

(declare-fun lt!928412 () Unit!44539)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!495 (List!30620 List!30620) Unit!44539)

(assert (=> b!2636227 (= lt!928412 (lemmaConcatTwoListThenFSndIsSuffix!495 lt!928396 lt!928399))))

(declare-fun isSuffix!810 (List!30620 List!30620) Bool)

(assert (=> b!2636227 (isSuffix!810 lt!928399 (++!7441 lt!928396 lt!928399))))

(declare-fun lt!928392 () Unit!44539)

(assert (=> b!2636227 (= lt!928392 lt!928412)))

(declare-fun d!748156 () Bool)

(declare-fun e!1663401 () Bool)

(assert (=> d!748156 e!1663401))

(declare-fun res!1109991 () Bool)

(assert (=> d!748156 (=> (not res!1109991) (not e!1663401))))

(declare-fun lt!928410 () tuple2!30028)

(assert (=> d!748156 (= res!1109991 (= (list!11491 (_1!17556 lt!928410)) (list!11491 (_1!17556 (lexRec!565 thiss!14197 rules!1726 (seqFromList!3183 lt!927575))))))))

(assert (=> d!748156 (= lt!928410 e!1663404)))

(declare-fun c!423978 () Bool)

(assert (=> d!748156 (= c!423978 ((_ is Some!6037) lt!928413))))

(declare-fun maxPrefixZipperSequenceV2!435 (LexerInterface!4240 List!30621 BalanceConc!18670 BalanceConc!18670) Option!6038)

(assert (=> d!748156 (= lt!928413 (maxPrefixZipperSequenceV2!435 thiss!14197 rules!1726 (seqFromList!3183 lt!927575) (seqFromList!3183 lt!927575)))))

(declare-fun lt!928405 () Unit!44539)

(declare-fun lt!928404 () Unit!44539)

(assert (=> d!748156 (= lt!928405 lt!928404)))

(declare-fun lt!928415 () List!30620)

(declare-fun lt!928402 () List!30620)

(assert (=> d!748156 (isSuffix!810 lt!928415 (++!7441 lt!928402 lt!928415))))

(assert (=> d!748156 (= lt!928404 (lemmaConcatTwoListThenFSndIsSuffix!495 lt!928402 lt!928415))))

(assert (=> d!748156 (= lt!928415 (list!11490 (seqFromList!3183 lt!927575)))))

(assert (=> d!748156 (= lt!928402 (list!11490 (BalanceConc!18671 Empty!9528)))))

(assert (=> d!748156 (= (lexTailRecV2!837 thiss!14197 rules!1726 (seqFromList!3183 lt!927575) (BalanceConc!18671 Empty!9528) (seqFromList!3183 lt!927575) (BalanceConc!18673 Empty!9529)) lt!928410)))

(declare-fun lt!928406 () tuple2!30028)

(declare-fun b!2636228 () Bool)

(assert (=> b!2636228 (= lt!928406 (lexRec!565 thiss!14197 rules!1726 (_2!17557 (v!32462 lt!928401))))))

(declare-fun prepend!1037 (BalanceConc!18672 Token!8756) BalanceConc!18672)

(assert (=> b!2636228 (= e!1663403 (tuple2!30029 (prepend!1037 (_1!17556 lt!928406) (_1!17557 (v!32462 lt!928401))) (_2!17556 lt!928406)))))

(declare-fun b!2636229 () Bool)

(assert (=> b!2636229 (= e!1663402 (tuple2!30029 (BalanceConc!18673 Empty!9529) lt!928395))))

(declare-fun b!2636230 () Bool)

(declare-fun lt!928389 () tuple2!30028)

(assert (=> b!2636230 (= lt!928389 (lexRec!565 thiss!14197 rules!1726 (_2!17557 (v!32462 lt!928400))))))

(assert (=> b!2636230 (= e!1663402 (tuple2!30029 (prepend!1037 (_1!17556 lt!928389) (_1!17557 (v!32462 lt!928400))) (_2!17556 lt!928389)))))

(declare-fun b!2636231 () Bool)

(assert (=> b!2636231 (= e!1663403 (tuple2!30029 (BalanceConc!18673 Empty!9529) (seqFromList!3183 lt!927575)))))

(declare-fun b!2636232 () Bool)

(assert (=> b!2636232 (= e!1663404 (tuple2!30029 (BalanceConc!18673 Empty!9529) (seqFromList!3183 lt!927575)))))

(declare-fun b!2636233 () Bool)

(assert (=> b!2636233 (= e!1663401 (= (list!11490 (_2!17556 lt!928410)) (list!11490 (_2!17556 (lexRec!565 thiss!14197 rules!1726 (seqFromList!3183 lt!927575))))))))

(assert (= (and d!748156 c!423978) b!2636227))

(assert (= (and d!748156 (not c!423978)) b!2636232))

(assert (= (and b!2636227 c!423979) b!2636228))

(assert (= (and b!2636227 (not c!423979)) b!2636231))

(assert (= (and b!2636227 c!423977) b!2636230))

(assert (= (and b!2636227 (not c!423977)) b!2636229))

(assert (= (and d!748156 res!1109991) b!2636233))

(declare-fun m!2980883 () Bool)

(assert (=> b!2636227 m!2980883))

(declare-fun m!2980885 () Bool)

(assert (=> b!2636227 m!2980885))

(declare-fun m!2980887 () Bool)

(assert (=> b!2636227 m!2980887))

(declare-fun m!2980889 () Bool)

(assert (=> b!2636227 m!2980889))

(declare-fun m!2980891 () Bool)

(assert (=> b!2636227 m!2980891))

(declare-fun m!2980893 () Bool)

(assert (=> b!2636227 m!2980893))

(declare-fun m!2980895 () Bool)

(assert (=> b!2636227 m!2980895))

(assert (=> b!2636227 m!2980883))

(declare-fun m!2980897 () Bool)

(assert (=> b!2636227 m!2980897))

(assert (=> b!2636227 m!2980887))

(declare-fun m!2980899 () Bool)

(assert (=> b!2636227 m!2980899))

(declare-fun m!2980901 () Bool)

(assert (=> b!2636227 m!2980901))

(declare-fun m!2980903 () Bool)

(assert (=> b!2636227 m!2980903))

(declare-fun m!2980905 () Bool)

(assert (=> b!2636227 m!2980905))

(declare-fun m!2980907 () Bool)

(assert (=> b!2636227 m!2980907))

(assert (=> b!2636227 m!2978847))

(declare-fun m!2980909 () Bool)

(assert (=> b!2636227 m!2980909))

(declare-fun m!2980911 () Bool)

(assert (=> b!2636227 m!2980911))

(declare-fun m!2980913 () Bool)

(assert (=> b!2636227 m!2980913))

(declare-fun m!2980915 () Bool)

(assert (=> b!2636227 m!2980915))

(declare-fun m!2980917 () Bool)

(assert (=> b!2636227 m!2980917))

(assert (=> b!2636227 m!2980887))

(declare-fun m!2980919 () Bool)

(assert (=> b!2636227 m!2980919))

(declare-fun m!2980921 () Bool)

(assert (=> b!2636227 m!2980921))

(assert (=> b!2636227 m!2978847))

(declare-fun m!2980923 () Bool)

(assert (=> b!2636227 m!2980923))

(declare-fun m!2980925 () Bool)

(assert (=> b!2636227 m!2980925))

(assert (=> b!2636227 m!2978967))

(declare-fun m!2980927 () Bool)

(assert (=> b!2636227 m!2980927))

(assert (=> b!2636227 m!2980901))

(declare-fun m!2980929 () Bool)

(assert (=> b!2636227 m!2980929))

(assert (=> b!2636227 m!2980925))

(declare-fun m!2980931 () Bool)

(assert (=> b!2636227 m!2980931))

(assert (=> b!2636227 m!2980915))

(declare-fun m!2980933 () Bool)

(assert (=> b!2636227 m!2980933))

(declare-fun m!2980935 () Bool)

(assert (=> b!2636227 m!2980935))

(assert (=> b!2636227 m!2978967))

(assert (=> b!2636227 m!2980889))

(declare-fun m!2980937 () Bool)

(assert (=> b!2636227 m!2980937))

(assert (=> b!2636227 m!2980907))

(declare-fun m!2980939 () Bool)

(assert (=> b!2636227 m!2980939))

(assert (=> b!2636227 m!2978847))

(assert (=> b!2636227 m!2980901))

(declare-fun m!2980941 () Bool)

(assert (=> b!2636227 m!2980941))

(assert (=> b!2636227 m!2980891))

(assert (=> b!2636227 m!2980919))

(declare-fun m!2980943 () Bool)

(assert (=> b!2636227 m!2980943))

(assert (=> b!2636227 m!2980933))

(declare-fun m!2980945 () Bool)

(assert (=> b!2636227 m!2980945))

(assert (=> b!2636227 m!2980913))

(declare-fun m!2980947 () Bool)

(assert (=> d!748156 m!2980947))

(declare-fun m!2980949 () Bool)

(assert (=> d!748156 m!2980949))

(declare-fun m!2980951 () Bool)

(assert (=> d!748156 m!2980951))

(assert (=> d!748156 m!2978847))

(assert (=> d!748156 m!2979373))

(assert (=> d!748156 m!2978967))

(declare-fun m!2980953 () Bool)

(assert (=> d!748156 m!2980953))

(assert (=> d!748156 m!2980947))

(declare-fun m!2980955 () Bool)

(assert (=> d!748156 m!2980955))

(assert (=> d!748156 m!2978847))

(assert (=> d!748156 m!2980923))

(assert (=> d!748156 m!2978847))

(assert (=> d!748156 m!2978847))

(declare-fun m!2980957 () Bool)

(assert (=> d!748156 m!2980957))

(declare-fun m!2980959 () Bool)

(assert (=> b!2636228 m!2980959))

(declare-fun m!2980961 () Bool)

(assert (=> b!2636228 m!2980961))

(declare-fun m!2980963 () Bool)

(assert (=> b!2636233 m!2980963))

(assert (=> b!2636233 m!2978847))

(assert (=> b!2636233 m!2980923))

(declare-fun m!2980965 () Bool)

(assert (=> b!2636233 m!2980965))

(declare-fun m!2980967 () Bool)

(assert (=> b!2636230 m!2980967))

(declare-fun m!2980969 () Bool)

(assert (=> b!2636230 m!2980969))

(assert (=> d!747702 d!748156))

(declare-fun b!2636258 () Bool)

(declare-fun e!1663421 () Bool)

(declare-fun e!1663420 () Bool)

(assert (=> b!2636258 (= e!1663421 e!1663420)))

(declare-fun res!1110015 () Bool)

(assert (=> b!2636258 (=> (not res!1110015) (not e!1663420))))

(declare-fun height!1382 (Conc!9529) Int)

(assert (=> b!2636258 (= res!1110015 (<= (- 1) (- (height!1382 (left!23582 (c!423641 v!6381))) (height!1382 (right!23912 (c!423641 v!6381))))))))

(declare-fun b!2636259 () Bool)

(declare-fun res!1110014 () Bool)

(assert (=> b!2636259 (=> (not res!1110014) (not e!1663420))))

(assert (=> b!2636259 (= res!1110014 (<= (- (height!1382 (left!23582 (c!423641 v!6381))) (height!1382 (right!23912 (c!423641 v!6381)))) 1))))

(declare-fun b!2636260 () Bool)

(assert (=> b!2636260 (= e!1663420 (not (isEmpty!17419 (right!23912 (c!423641 v!6381)))))))

(declare-fun b!2636261 () Bool)

(declare-fun res!1110017 () Bool)

(assert (=> b!2636261 (=> (not res!1110017) (not e!1663420))))

(assert (=> b!2636261 (= res!1110017 (isBalanced!2885 (right!23912 (c!423641 v!6381))))))

(declare-fun d!748162 () Bool)

(declare-fun res!1110016 () Bool)

(assert (=> d!748162 (=> res!1110016 e!1663421)))

(assert (=> d!748162 (= res!1110016 (not ((_ is Node!9529) (c!423641 v!6381))))))

(assert (=> d!748162 (= (isBalanced!2885 (c!423641 v!6381)) e!1663421)))

(declare-fun b!2636262 () Bool)

(declare-fun res!1110018 () Bool)

(assert (=> b!2636262 (=> (not res!1110018) (not e!1663420))))

(assert (=> b!2636262 (= res!1110018 (isBalanced!2885 (left!23582 (c!423641 v!6381))))))

(declare-fun b!2636263 () Bool)

(declare-fun res!1110019 () Bool)

(assert (=> b!2636263 (=> (not res!1110019) (not e!1663420))))

(assert (=> b!2636263 (= res!1110019 (not (isEmpty!17419 (left!23582 (c!423641 v!6381)))))))

(assert (= (and d!748162 (not res!1110016)) b!2636258))

(assert (= (and b!2636258 res!1110015) b!2636259))

(assert (= (and b!2636259 res!1110014) b!2636262))

(assert (= (and b!2636262 res!1110018) b!2636261))

(assert (= (and b!2636261 res!1110017) b!2636263))

(assert (= (and b!2636263 res!1110019) b!2636260))

(declare-fun m!2980971 () Bool)

(assert (=> b!2636259 m!2980971))

(declare-fun m!2980973 () Bool)

(assert (=> b!2636259 m!2980973))

(declare-fun m!2980975 () Bool)

(assert (=> b!2636260 m!2980975))

(declare-fun m!2980977 () Bool)

(assert (=> b!2636262 m!2980977))

(assert (=> b!2636258 m!2980971))

(assert (=> b!2636258 m!2980973))

(declare-fun m!2980979 () Bool)

(assert (=> b!2636261 m!2980979))

(declare-fun m!2980981 () Bool)

(assert (=> b!2636263 m!2980981))

(assert (=> d!747724 d!748162))

(declare-fun b!2636298 () Bool)

(declare-fun e!1663452 () Bool)

(declare-fun e!1663456 () Bool)

(assert (=> b!2636298 (= e!1663452 e!1663456)))

(declare-fun res!1110051 () Bool)

(assert (=> b!2636298 (=> res!1110051 e!1663456)))

(assert (=> b!2636298 (= res!1110051 (not ((_ is Node!9528) (c!423640 lt!927565))))))

(declare-fun b!2636299 () Bool)

(declare-fun e!1663454 () Bool)

(declare-fun appendAssoc!171 (List!30620 List!30620 List!30620) Bool)

(assert (=> b!2636299 (= e!1663454 (appendAssoc!171 (++!7441 (list!11494 (c!423640 lt!927573)) (list!11494 (left!23581 (left!23581 (c!423640 lt!927565))))) (list!11494 (right!23911 (left!23581 (c!423640 lt!927565)))) (list!11494 (right!23911 (c!423640 lt!927565)))))))

(declare-fun d!748164 () Bool)

(assert (=> d!748164 e!1663452))

(declare-fun res!1110045 () Bool)

(assert (=> d!748164 (=> (not res!1110045) (not e!1663452))))

(declare-fun e!1663457 () Bool)

(assert (=> d!748164 (= res!1110045 e!1663457)))

(declare-fun res!1110050 () Bool)

(assert (=> d!748164 (=> res!1110050 e!1663457)))

(assert (=> d!748164 (= res!1110050 (not ((_ is Node!9528) (c!423640 lt!927573))))))

(assert (=> d!748164 (= (appendAssocInst!636 (c!423640 lt!927573) (c!423640 lt!927565)) true)))

(declare-fun b!2636300 () Bool)

(declare-fun e!1663455 () Bool)

(declare-fun e!1663450 () Bool)

(assert (=> b!2636300 (= e!1663455 e!1663450)))

(declare-fun res!1110044 () Bool)

(assert (=> b!2636300 (=> (not res!1110044) (not e!1663450))))

(assert (=> b!2636300 (= res!1110044 (appendAssoc!171 (list!11494 (left!23581 (right!23911 (c!423640 lt!927573)))) (list!11494 (right!23911 (right!23911 (c!423640 lt!927573)))) (list!11494 (c!423640 lt!927565))))))

(declare-fun b!2636301 () Bool)

(declare-fun e!1663449 () Bool)

(declare-fun e!1663451 () Bool)

(assert (=> b!2636301 (= e!1663449 e!1663451)))

(declare-fun res!1110049 () Bool)

(assert (=> b!2636301 (=> res!1110049 e!1663451)))

(assert (=> b!2636301 (= res!1110049 (not ((_ is Node!9528) (left!23581 (c!423640 lt!927565)))))))

(declare-fun b!2636302 () Bool)

(assert (=> b!2636302 (= e!1663450 (appendAssoc!171 (list!11494 (left!23581 (c!423640 lt!927573))) (list!11494 (left!23581 (right!23911 (c!423640 lt!927573)))) (++!7441 (list!11494 (right!23911 (right!23911 (c!423640 lt!927573)))) (list!11494 (c!423640 lt!927565)))))))

(declare-fun b!2636303 () Bool)

(declare-fun e!1663453 () Bool)

(assert (=> b!2636303 (= e!1663457 e!1663453)))

(declare-fun res!1110052 () Bool)

(assert (=> b!2636303 (=> (not res!1110052) (not e!1663453))))

(assert (=> b!2636303 (= res!1110052 (appendAssoc!171 (list!11494 (left!23581 (c!423640 lt!927573))) (list!11494 (right!23911 (c!423640 lt!927573))) (list!11494 (c!423640 lt!927565))))))

(declare-fun b!2636304 () Bool)

(assert (=> b!2636304 (= e!1663456 e!1663449)))

(declare-fun res!1110047 () Bool)

(assert (=> b!2636304 (=> (not res!1110047) (not e!1663449))))

(assert (=> b!2636304 (= res!1110047 (appendAssoc!171 (list!11494 (c!423640 lt!927573)) (list!11494 (left!23581 (c!423640 lt!927565))) (list!11494 (right!23911 (c!423640 lt!927565)))))))

(declare-fun b!2636305 () Bool)

(assert (=> b!2636305 (= e!1663451 e!1663454)))

(declare-fun res!1110048 () Bool)

(assert (=> b!2636305 (=> (not res!1110048) (not e!1663454))))

(assert (=> b!2636305 (= res!1110048 (appendAssoc!171 (list!11494 (c!423640 lt!927573)) (list!11494 (left!23581 (left!23581 (c!423640 lt!927565)))) (list!11494 (right!23911 (left!23581 (c!423640 lt!927565))))))))

(declare-fun b!2636306 () Bool)

(assert (=> b!2636306 (= e!1663453 e!1663455)))

(declare-fun res!1110046 () Bool)

(assert (=> b!2636306 (=> res!1110046 e!1663455)))

(assert (=> b!2636306 (= res!1110046 (not ((_ is Node!9528) (right!23911 (c!423640 lt!927573)))))))

(assert (= (and d!748164 (not res!1110050)) b!2636303))

(assert (= (and b!2636303 res!1110052) b!2636306))

(assert (= (and b!2636306 (not res!1110046)) b!2636300))

(assert (= (and b!2636300 res!1110044) b!2636302))

(assert (= (and d!748164 res!1110045) b!2636298))

(assert (= (and b!2636298 (not res!1110051)) b!2636304))

(assert (= (and b!2636304 res!1110047) b!2636301))

(assert (= (and b!2636301 (not res!1110049)) b!2636305))

(assert (= (and b!2636305 res!1110048) b!2636299))

(declare-fun m!2981045 () Bool)

(assert (=> b!2636302 m!2981045))

(declare-fun m!2981047 () Bool)

(assert (=> b!2636302 m!2981047))

(assert (=> b!2636302 m!2980033))

(declare-fun m!2981049 () Bool)

(assert (=> b!2636302 m!2981049))

(assert (=> b!2636302 m!2980033))

(declare-fun m!2981051 () Bool)

(assert (=> b!2636302 m!2981051))

(assert (=> b!2636302 m!2981049))

(assert (=> b!2636302 m!2981045))

(assert (=> b!2636302 m!2981047))

(assert (=> b!2636302 m!2981051))

(declare-fun m!2981053 () Bool)

(assert (=> b!2636302 m!2981053))

(assert (=> b!2636305 m!2979633))

(declare-fun m!2981055 () Bool)

(assert (=> b!2636305 m!2981055))

(declare-fun m!2981057 () Bool)

(assert (=> b!2636305 m!2981057))

(assert (=> b!2636305 m!2979633))

(assert (=> b!2636305 m!2981055))

(assert (=> b!2636305 m!2981057))

(declare-fun m!2981059 () Bool)

(assert (=> b!2636305 m!2981059))

(declare-fun m!2981061 () Bool)

(assert (=> b!2636299 m!2981061))

(assert (=> b!2636299 m!2979633))

(assert (=> b!2636299 m!2981057))

(assert (=> b!2636299 m!2979633))

(assert (=> b!2636299 m!2981055))

(declare-fun m!2981063 () Bool)

(assert (=> b!2636299 m!2981063))

(assert (=> b!2636299 m!2981055))

(assert (=> b!2636299 m!2981063))

(assert (=> b!2636299 m!2981057))

(assert (=> b!2636299 m!2981061))

(declare-fun m!2981065 () Bool)

(assert (=> b!2636299 m!2981065))

(assert (=> b!2636300 m!2981047))

(assert (=> b!2636300 m!2981049))

(assert (=> b!2636300 m!2980033))

(assert (=> b!2636300 m!2981047))

(assert (=> b!2636300 m!2981049))

(assert (=> b!2636300 m!2980033))

(declare-fun m!2981067 () Bool)

(assert (=> b!2636300 m!2981067))

(assert (=> b!2636304 m!2979633))

(declare-fun m!2981069 () Bool)

(assert (=> b!2636304 m!2981069))

(assert (=> b!2636304 m!2981061))

(assert (=> b!2636304 m!2979633))

(assert (=> b!2636304 m!2981069))

(assert (=> b!2636304 m!2981061))

(declare-fun m!2981071 () Bool)

(assert (=> b!2636304 m!2981071))

(assert (=> b!2636303 m!2981045))

(declare-fun m!2981073 () Bool)

(assert (=> b!2636303 m!2981073))

(assert (=> b!2636303 m!2980033))

(assert (=> b!2636303 m!2981045))

(assert (=> b!2636303 m!2981073))

(assert (=> b!2636303 m!2980033))

(declare-fun m!2981075 () Bool)

(assert (=> b!2636303 m!2981075))

(assert (=> d!747688 d!748164))

(assert (=> d!747688 d!748066))

(declare-fun d!748176 () Bool)

(declare-fun charsToInt!0 (List!30619) (_ BitVec 32))

(assert (=> d!748176 (= (inv!16 (value!149930 separatorToken!156)) (= (charsToInt!0 (text!34502 (value!149930 separatorToken!156))) (value!149922 (value!149930 separatorToken!156))))))

(declare-fun bs!476178 () Bool)

(assert (= bs!476178 d!748176))

(declare-fun m!2981077 () Bool)

(assert (=> bs!476178 m!2981077))

(assert (=> b!2635216 d!748176))

(declare-fun d!748178 () Bool)

(declare-fun c!423987 () Bool)

(assert (=> d!748178 (= c!423987 ((_ is Node!9528) (c!423640 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 lt!927569))) (value!149930 lt!927569)))))))

(declare-fun e!1663465 () Bool)

(assert (=> d!748178 (= (inv!41409 (c!423640 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 lt!927569))) (value!149930 lt!927569)))) e!1663465)))

(declare-fun b!2636319 () Bool)

(declare-fun inv!41419 (Conc!9528) Bool)

(assert (=> b!2636319 (= e!1663465 (inv!41419 (c!423640 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 lt!927569))) (value!149930 lt!927569)))))))

(declare-fun b!2636320 () Bool)

(declare-fun e!1663466 () Bool)

(assert (=> b!2636320 (= e!1663465 e!1663466)))

(declare-fun res!1110055 () Bool)

(assert (=> b!2636320 (= res!1110055 (not ((_ is Leaf!14590) (c!423640 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 lt!927569))) (value!149930 lt!927569))))))))

(assert (=> b!2636320 (=> res!1110055 e!1663466)))

(declare-fun b!2636321 () Bool)

(declare-fun inv!41420 (Conc!9528) Bool)

(assert (=> b!2636321 (= e!1663466 (inv!41420 (c!423640 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 lt!927569))) (value!149930 lt!927569)))))))

(assert (= (and d!748178 c!423987) b!2636319))

(assert (= (and d!748178 (not c!423987)) b!2636320))

(assert (= (and b!2636320 (not res!1110055)) b!2636321))

(declare-fun m!2981107 () Bool)

(assert (=> b!2636319 m!2981107))

(declare-fun m!2981109 () Bool)

(assert (=> b!2636321 m!2981109))

(assert (=> b!2635069 d!748178))

(declare-fun d!748186 () Bool)

(assert (=> d!748186 (= (head!6044 (drop!1639 lt!927559 from!862)) (h!35942 (drop!1639 lt!927559 from!862)))))

(assert (=> d!747762 d!748186))

(assert (=> d!747762 d!747756))

(assert (=> d!747762 d!747764))

(declare-fun d!748188 () Bool)

(assert (=> d!748188 (= (head!6044 (drop!1639 lt!927559 from!862)) (apply!7282 lt!927559 from!862))))

(assert (=> d!748188 true))

(declare-fun _$27!764 () Unit!44539)

(assert (=> d!748188 (= (choose!15645 lt!927559 from!862) _$27!764)))

(declare-fun bs!476181 () Bool)

(assert (= bs!476181 d!748188))

(assert (=> bs!476181 m!2978871))

(assert (=> bs!476181 m!2978871))

(assert (=> bs!476181 m!2979585))

(assert (=> bs!476181 m!2978877))

(assert (=> d!747762 d!748188))

(declare-fun d!748190 () Bool)

(assert (=> d!748190 (= (list!11490 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 separatorToken!156))) (value!149930 separatorToken!156))) (list!11494 (c!423640 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 separatorToken!156))) (value!149930 separatorToken!156)))))))

(declare-fun bs!476182 () Bool)

(assert (= bs!476182 d!748190))

(declare-fun m!2981111 () Bool)

(assert (=> bs!476182 m!2981111))

(assert (=> b!2635223 d!748190))

(declare-fun d!748192 () Bool)

(declare-fun lt!928456 () Bool)

(assert (=> d!748192 (= lt!928456 (select (content!4313 (t!216743 lt!927559)) lt!927569))))

(declare-fun e!1663471 () Bool)

(assert (=> d!748192 (= lt!928456 e!1663471)))

(declare-fun res!1110068 () Bool)

(assert (=> d!748192 (=> (not res!1110068) (not e!1663471))))

(assert (=> d!748192 (= res!1110068 ((_ is Cons!30522) (t!216743 lt!927559)))))

(assert (=> d!748192 (= (contains!5804 (t!216743 lt!927559) lt!927569) lt!928456)))

(declare-fun b!2636334 () Bool)

(declare-fun e!1663472 () Bool)

(assert (=> b!2636334 (= e!1663471 e!1663472)))

(declare-fun res!1110069 () Bool)

(assert (=> b!2636334 (=> res!1110069 e!1663472)))

(assert (=> b!2636334 (= res!1110069 (= (h!35942 (t!216743 lt!927559)) lt!927569))))

(declare-fun b!2636335 () Bool)

(assert (=> b!2636335 (= e!1663472 (contains!5804 (t!216743 (t!216743 lt!927559)) lt!927569))))

(assert (= (and d!748192 res!1110068) b!2636334))

(assert (= (and b!2636334 (not res!1110069)) b!2636335))

(assert (=> d!748192 m!2980077))

(declare-fun m!2981113 () Bool)

(assert (=> d!748192 m!2981113))

(declare-fun m!2981115 () Bool)

(assert (=> b!2636335 m!2981115))

(assert (=> b!2635248 d!748192))

(declare-fun d!748194 () Bool)

(declare-fun c!423991 () Bool)

(assert (=> d!748194 (= c!423991 (and ((_ is Cons!30521) rules!1726) (not (= (isSeparator!4643 (h!35941 rules!1726)) (isSeparator!4643 (h!35941 rules!1726))))))))

(declare-fun e!1663484 () Bool)

(assert (=> d!748194 (= (ruleDisjointCharsFromAllFromOtherType!527 (h!35941 rules!1726) rules!1726) e!1663484)))

(declare-fun bm!169697 () Bool)

(declare-fun call!169702 () Bool)

(assert (=> bm!169697 (= call!169702 (ruleDisjointCharsFromAllFromOtherType!527 (h!35941 rules!1726) (t!216742 rules!1726)))))

(declare-fun b!2636354 () Bool)

(declare-fun e!1663486 () Bool)

(assert (=> b!2636354 (= e!1663486 call!169702)))

(declare-fun b!2636355 () Bool)

(assert (=> b!2636355 (= e!1663484 e!1663486)))

(declare-fun res!1110082 () Bool)

(declare-fun rulesUseDisjointChars!241 (Rule!9086 Rule!9086) Bool)

(assert (=> b!2636355 (= res!1110082 (rulesUseDisjointChars!241 (h!35941 rules!1726) (h!35941 rules!1726)))))

(assert (=> b!2636355 (=> (not res!1110082) (not e!1663486))))

(declare-fun b!2636356 () Bool)

(declare-fun e!1663485 () Bool)

(assert (=> b!2636356 (= e!1663484 e!1663485)))

(declare-fun res!1110083 () Bool)

(assert (=> b!2636356 (= res!1110083 (not ((_ is Cons!30521) rules!1726)))))

(assert (=> b!2636356 (=> res!1110083 e!1663485)))

(declare-fun b!2636357 () Bool)

(assert (=> b!2636357 (= e!1663485 call!169702)))

(assert (= (and d!748194 c!423991) b!2636355))

(assert (= (and d!748194 (not c!423991)) b!2636356))

(assert (= (and b!2636355 res!1110082) b!2636354))

(assert (= (and b!2636356 (not res!1110083)) b!2636357))

(assert (= (or b!2636354 b!2636357) bm!169697))

(declare-fun m!2981175 () Bool)

(assert (=> bm!169697 m!2981175))

(declare-fun m!2981177 () Bool)

(assert (=> b!2636355 m!2981177))

(assert (=> b!2635168 d!748194))

(declare-fun d!748206 () Bool)

(declare-fun lt!928466 () Int)

(assert (=> d!748206 (>= lt!928466 0)))

(declare-fun e!1663487 () Int)

(assert (=> d!748206 (= lt!928466 e!1663487)))

(declare-fun c!423992 () Bool)

(assert (=> d!748206 (= c!423992 ((_ is Nil!30522) lt!927847))))

(assert (=> d!748206 (= (size!23608 lt!927847) lt!928466)))

(declare-fun b!2636358 () Bool)

(assert (=> b!2636358 (= e!1663487 0)))

(declare-fun b!2636359 () Bool)

(assert (=> b!2636359 (= e!1663487 (+ 1 (size!23608 (t!216743 lt!927847))))))

(assert (= (and d!748206 c!423992) b!2636358))

(assert (= (and d!748206 (not c!423992)) b!2636359))

(declare-fun m!2981179 () Bool)

(assert (=> b!2636359 m!2981179))

(assert (=> b!2635344 d!748206))

(declare-fun d!748208 () Bool)

(declare-fun res!1110090 () Bool)

(declare-fun e!1663490 () Bool)

(assert (=> d!748208 (=> (not res!1110090) (not e!1663490))))

(assert (=> d!748208 (= res!1110090 (= (csize!19288 (c!423641 v!6381)) (+ (size!23609 (left!23582 (c!423641 v!6381))) (size!23609 (right!23912 (c!423641 v!6381))))))))

(assert (=> d!748208 (= (inv!41414 (c!423641 v!6381)) e!1663490)))

(declare-fun b!2636366 () Bool)

(declare-fun res!1110091 () Bool)

(assert (=> b!2636366 (=> (not res!1110091) (not e!1663490))))

(assert (=> b!2636366 (= res!1110091 (and (not (= (left!23582 (c!423641 v!6381)) Empty!9529)) (not (= (right!23912 (c!423641 v!6381)) Empty!9529))))))

(declare-fun b!2636367 () Bool)

(declare-fun res!1110092 () Bool)

(assert (=> b!2636367 (=> (not res!1110092) (not e!1663490))))

(assert (=> b!2636367 (= res!1110092 (= (cheight!9740 (c!423641 v!6381)) (+ (max!0 (height!1382 (left!23582 (c!423641 v!6381))) (height!1382 (right!23912 (c!423641 v!6381)))) 1)))))

(declare-fun b!2636368 () Bool)

(assert (=> b!2636368 (= e!1663490 (<= 0 (cheight!9740 (c!423641 v!6381))))))

(assert (= (and d!748208 res!1110090) b!2636366))

(assert (= (and b!2636366 res!1110091) b!2636367))

(assert (= (and b!2636367 res!1110092) b!2636368))

(assert (=> d!748208 m!2980673))

(declare-fun m!2981181 () Bool)

(assert (=> d!748208 m!2981181))

(assert (=> b!2636367 m!2980971))

(assert (=> b!2636367 m!2980973))

(assert (=> b!2636367 m!2980971))

(assert (=> b!2636367 m!2980973))

(declare-fun m!2981183 () Bool)

(assert (=> b!2636367 m!2981183))

(assert (=> b!2635377 d!748208))

(assert (=> b!2635047 d!747780))

(declare-fun d!748210 () Bool)

(declare-fun res!1110097 () Bool)

(declare-fun e!1663495 () Bool)

(assert (=> d!748210 (=> res!1110097 e!1663495)))

(assert (=> d!748210 (= res!1110097 ((_ is Nil!30521) rules!1726))))

(assert (=> d!748210 (= (noDuplicateTag!1722 thiss!14197 rules!1726 Nil!30524) e!1663495)))

(declare-fun b!2636373 () Bool)

(declare-fun e!1663496 () Bool)

(assert (=> b!2636373 (= e!1663495 e!1663496)))

(declare-fun res!1110098 () Bool)

(assert (=> b!2636373 (=> (not res!1110098) (not e!1663496))))

(declare-fun contains!5809 (List!30624 String!34208) Bool)

(assert (=> b!2636373 (= res!1110098 (not (contains!5809 Nil!30524 (tag!5137 (h!35941 rules!1726)))))))

(declare-fun b!2636374 () Bool)

(assert (=> b!2636374 (= e!1663496 (noDuplicateTag!1722 thiss!14197 (t!216742 rules!1726) (Cons!30524 (tag!5137 (h!35941 rules!1726)) Nil!30524)))))

(assert (= (and d!748210 (not res!1110097)) b!2636373))

(assert (= (and b!2636373 res!1110098) b!2636374))

(declare-fun m!2981185 () Bool)

(assert (=> b!2636373 m!2981185))

(declare-fun m!2981187 () Bool)

(assert (=> b!2636374 m!2981187))

(assert (=> b!2635382 d!748210))

(declare-fun d!748212 () Bool)

(assert (=> d!748212 (= (isEmpty!17421 (originalCharacters!5409 separatorToken!156)) ((_ is Nil!30520) (originalCharacters!5409 separatorToken!156)))))

(assert (=> d!747722 d!748212))

(declare-fun d!748214 () Bool)

(declare-fun c!423993 () Bool)

(assert (=> d!748214 (= c!423993 ((_ is Empty!9528) (c!423640 lt!927573)))))

(declare-fun e!1663497 () List!30620)

(assert (=> d!748214 (= (list!11494 (c!423640 lt!927573)) e!1663497)))

(declare-fun b!2636378 () Bool)

(declare-fun e!1663498 () List!30620)

(assert (=> b!2636378 (= e!1663498 (++!7441 (list!11494 (left!23581 (c!423640 lt!927573))) (list!11494 (right!23911 (c!423640 lt!927573)))))))

(declare-fun b!2636375 () Bool)

(assert (=> b!2636375 (= e!1663497 Nil!30520)))

(declare-fun b!2636377 () Bool)

(assert (=> b!2636377 (= e!1663498 (list!11497 (xs!12532 (c!423640 lt!927573))))))

(declare-fun b!2636376 () Bool)

(assert (=> b!2636376 (= e!1663497 e!1663498)))

(declare-fun c!423994 () Bool)

(assert (=> b!2636376 (= c!423994 ((_ is Leaf!14590) (c!423640 lt!927573)))))

(assert (= (and d!748214 c!423993) b!2636375))

(assert (= (and d!748214 (not c!423993)) b!2636376))

(assert (= (and b!2636376 c!423994) b!2636377))

(assert (= (and b!2636376 (not c!423994)) b!2636378))

(assert (=> b!2636378 m!2981045))

(assert (=> b!2636378 m!2981073))

(assert (=> b!2636378 m!2981045))

(assert (=> b!2636378 m!2981073))

(declare-fun m!2981189 () Bool)

(assert (=> b!2636378 m!2981189))

(declare-fun m!2981191 () Bool)

(assert (=> b!2636377 m!2981191))

(assert (=> d!747784 d!748214))

(declare-fun d!748216 () Bool)

(declare-fun lt!928467 () Token!8756)

(assert (=> d!748216 (contains!5804 (tail!4282 lt!927559) lt!928467)))

(declare-fun e!1663500 () Token!8756)

(assert (=> d!748216 (= lt!928467 e!1663500)))

(declare-fun c!423995 () Bool)

(assert (=> d!748216 (= c!423995 (= (- from!862 1) 0))))

(declare-fun e!1663499 () Bool)

(assert (=> d!748216 e!1663499))

(declare-fun res!1110099 () Bool)

(assert (=> d!748216 (=> (not res!1110099) (not e!1663499))))

(assert (=> d!748216 (= res!1110099 (<= 0 (- from!862 1)))))

(assert (=> d!748216 (= (apply!7282 (tail!4282 lt!927559) (- from!862 1)) lt!928467)))

(declare-fun b!2636379 () Bool)

(assert (=> b!2636379 (= e!1663499 (< (- from!862 1) (size!23608 (tail!4282 lt!927559))))))

(declare-fun b!2636380 () Bool)

(assert (=> b!2636380 (= e!1663500 (head!6044 (tail!4282 lt!927559)))))

(declare-fun b!2636381 () Bool)

(assert (=> b!2636381 (= e!1663500 (apply!7282 (tail!4282 (tail!4282 lt!927559)) (- (- from!862 1) 1)))))

(assert (= (and d!748216 res!1110099) b!2636379))

(assert (= (and d!748216 c!423995) b!2636380))

(assert (= (and d!748216 (not c!423995)) b!2636381))

(assert (=> d!748216 m!2979593))

(declare-fun m!2981193 () Bool)

(assert (=> d!748216 m!2981193))

(assert (=> b!2636379 m!2979593))

(declare-fun m!2981195 () Bool)

(assert (=> b!2636379 m!2981195))

(assert (=> b!2636380 m!2979593))

(declare-fun m!2981197 () Bool)

(assert (=> b!2636380 m!2981197))

(assert (=> b!2636381 m!2979593))

(declare-fun m!2981199 () Bool)

(assert (=> b!2636381 m!2981199))

(assert (=> b!2636381 m!2981199))

(declare-fun m!2981201 () Bool)

(assert (=> b!2636381 m!2981201))

(assert (=> b!2635358 d!748216))

(declare-fun d!748218 () Bool)

(assert (=> d!748218 (= (tail!4282 lt!927559) (t!216743 lt!927559))))

(assert (=> b!2635358 d!748218))

(declare-fun d!748220 () Bool)

(assert (=> d!748220 (= (height!1380 (c!423640 lt!927573)) (ite ((_ is Empty!9528) (c!423640 lt!927573)) 0 (ite ((_ is Leaf!14590) (c!423640 lt!927573)) 1 (cheight!9739 (c!423640 lt!927573)))))))

(assert (=> b!2635062 d!748220))

(assert (=> b!2635062 d!748066))

(declare-fun d!748222 () Bool)

(assert (=> d!748222 (= (max!0 (height!1380 (c!423640 lt!927573)) (height!1380 (c!423640 lt!927565))) (ite (< (height!1380 (c!423640 lt!927573)) (height!1380 (c!423640 lt!927565))) (height!1380 (c!423640 lt!927565)) (height!1380 (c!423640 lt!927573))))))

(assert (=> b!2635062 d!748222))

(declare-fun d!748224 () Bool)

(assert (=> d!748224 (= (height!1380 (++!7443 (c!423640 lt!927573) (c!423640 lt!927565))) (ite ((_ is Empty!9528) (++!7443 (c!423640 lt!927573) (c!423640 lt!927565))) 0 (ite ((_ is Leaf!14590) (++!7443 (c!423640 lt!927573) (c!423640 lt!927565))) 1 (cheight!9739 (++!7443 (c!423640 lt!927573) (c!423640 lt!927565))))))))

(assert (=> b!2635062 d!748224))

(declare-fun d!748226 () Bool)

(assert (=> d!748226 (= (height!1380 (c!423640 lt!927565)) (ite ((_ is Empty!9528) (c!423640 lt!927565)) 0 (ite ((_ is Leaf!14590) (c!423640 lt!927565)) 1 (cheight!9739 (c!423640 lt!927565)))))))

(assert (=> b!2635062 d!748226))

(declare-fun lt!928468 () Bool)

(declare-fun d!748228 () Bool)

(assert (=> d!748228 (= lt!928468 (isEmpty!17421 (list!11490 (_2!17556 (lex!1903 thiss!14197 rules!1726 (print!1641 thiss!14197 (singletonSeq!2060 separatorToken!156)))))))))

(assert (=> d!748228 (= lt!928468 (isEmpty!17426 (c!423640 (_2!17556 (lex!1903 thiss!14197 rules!1726 (print!1641 thiss!14197 (singletonSeq!2060 separatorToken!156)))))))))

(assert (=> d!748228 (= (isEmpty!17420 (_2!17556 (lex!1903 thiss!14197 rules!1726 (print!1641 thiss!14197 (singletonSeq!2060 separatorToken!156))))) lt!928468)))

(declare-fun bs!476185 () Bool)

(assert (= bs!476185 d!748228))

(declare-fun m!2981203 () Bool)

(assert (=> bs!476185 m!2981203))

(assert (=> bs!476185 m!2981203))

(declare-fun m!2981205 () Bool)

(assert (=> bs!476185 m!2981205))

(declare-fun m!2981207 () Bool)

(assert (=> bs!476185 m!2981207))

(assert (=> b!2635187 d!748228))

(declare-fun e!1663503 () Bool)

(declare-fun lt!928469 () tuple2!30028)

(declare-fun b!2636382 () Bool)

(assert (=> b!2636382 (= e!1663503 (= (list!11490 (_2!17556 lt!928469)) (_2!17561 (lexList!1162 thiss!14197 rules!1726 (list!11490 (print!1641 thiss!14197 (singletonSeq!2060 separatorToken!156)))))))))

(declare-fun d!748230 () Bool)

(assert (=> d!748230 e!1663503))

(declare-fun res!1110100 () Bool)

(assert (=> d!748230 (=> (not res!1110100) (not e!1663503))))

(declare-fun e!1663502 () Bool)

(assert (=> d!748230 (= res!1110100 e!1663502)))

(declare-fun c!423996 () Bool)

(assert (=> d!748230 (= c!423996 (> (size!23601 (_1!17556 lt!928469)) 0))))

(assert (=> d!748230 (= lt!928469 (lexTailRecV2!837 thiss!14197 rules!1726 (print!1641 thiss!14197 (singletonSeq!2060 separatorToken!156)) (BalanceConc!18671 Empty!9528) (print!1641 thiss!14197 (singletonSeq!2060 separatorToken!156)) (BalanceConc!18673 Empty!9529)))))

(assert (=> d!748230 (= (lex!1903 thiss!14197 rules!1726 (print!1641 thiss!14197 (singletonSeq!2060 separatorToken!156))) lt!928469)))

(declare-fun b!2636383 () Bool)

(assert (=> b!2636383 (= e!1663502 (= (_2!17556 lt!928469) (print!1641 thiss!14197 (singletonSeq!2060 separatorToken!156))))))

(declare-fun b!2636384 () Bool)

(declare-fun e!1663501 () Bool)

(assert (=> b!2636384 (= e!1663501 (not (isEmpty!17412 (_1!17556 lt!928469))))))

(declare-fun b!2636385 () Bool)

(declare-fun res!1110102 () Bool)

(assert (=> b!2636385 (=> (not res!1110102) (not e!1663503))))

(assert (=> b!2636385 (= res!1110102 (= (list!11491 (_1!17556 lt!928469)) (_1!17561 (lexList!1162 thiss!14197 rules!1726 (list!11490 (print!1641 thiss!14197 (singletonSeq!2060 separatorToken!156)))))))))

(declare-fun b!2636386 () Bool)

(assert (=> b!2636386 (= e!1663502 e!1663501)))

(declare-fun res!1110101 () Bool)

(assert (=> b!2636386 (= res!1110101 (< (size!23606 (_2!17556 lt!928469)) (size!23606 (print!1641 thiss!14197 (singletonSeq!2060 separatorToken!156)))))))

(assert (=> b!2636386 (=> (not res!1110101) (not e!1663501))))

(assert (= (and d!748230 c!423996) b!2636386))

(assert (= (and d!748230 (not c!423996)) b!2636383))

(assert (= (and b!2636386 res!1110101) b!2636384))

(assert (= (and d!748230 res!1110100) b!2636385))

(assert (= (and b!2636385 res!1110102) b!2636382))

(declare-fun m!2981209 () Bool)

(assert (=> b!2636385 m!2981209))

(assert (=> b!2636385 m!2979413))

(declare-fun m!2981211 () Bool)

(assert (=> b!2636385 m!2981211))

(assert (=> b!2636385 m!2981211))

(declare-fun m!2981213 () Bool)

(assert (=> b!2636385 m!2981213))

(declare-fun m!2981215 () Bool)

(assert (=> d!748230 m!2981215))

(assert (=> d!748230 m!2979413))

(assert (=> d!748230 m!2979413))

(declare-fun m!2981217 () Bool)

(assert (=> d!748230 m!2981217))

(declare-fun m!2981219 () Bool)

(assert (=> b!2636384 m!2981219))

(declare-fun m!2981221 () Bool)

(assert (=> b!2636382 m!2981221))

(assert (=> b!2636382 m!2979413))

(assert (=> b!2636382 m!2981211))

(assert (=> b!2636382 m!2981211))

(assert (=> b!2636382 m!2981213))

(declare-fun m!2981223 () Bool)

(assert (=> b!2636386 m!2981223))

(assert (=> b!2636386 m!2979413))

(declare-fun m!2981225 () Bool)

(assert (=> b!2636386 m!2981225))

(assert (=> b!2635187 d!748230))

(declare-fun d!748232 () Bool)

(declare-fun lt!928470 () BalanceConc!18670)

(assert (=> d!748232 (= (list!11490 lt!928470) (printList!1168 thiss!14197 (list!11491 (singletonSeq!2060 separatorToken!156))))))

(assert (=> d!748232 (= lt!928470 (printTailRec!1127 thiss!14197 (singletonSeq!2060 separatorToken!156) 0 (BalanceConc!18671 Empty!9528)))))

(assert (=> d!748232 (= (print!1641 thiss!14197 (singletonSeq!2060 separatorToken!156)) lt!928470)))

(declare-fun bs!476186 () Bool)

(assert (= bs!476186 d!748232))

(declare-fun m!2981227 () Bool)

(assert (=> bs!476186 m!2981227))

(assert (=> bs!476186 m!2979411))

(assert (=> bs!476186 m!2979419))

(assert (=> bs!476186 m!2979419))

(declare-fun m!2981229 () Bool)

(assert (=> bs!476186 m!2981229))

(assert (=> bs!476186 m!2979411))

(declare-fun m!2981231 () Bool)

(assert (=> bs!476186 m!2981231))

(assert (=> b!2635187 d!748232))

(declare-fun d!748234 () Bool)

(declare-fun e!1663504 () Bool)

(assert (=> d!748234 e!1663504))

(declare-fun res!1110103 () Bool)

(assert (=> d!748234 (=> (not res!1110103) (not e!1663504))))

(declare-fun lt!928471 () BalanceConc!18672)

(assert (=> d!748234 (= res!1110103 (= (list!11491 lt!928471) (Cons!30522 separatorToken!156 Nil!30522)))))

(assert (=> d!748234 (= lt!928471 (singleton!914 separatorToken!156))))

(assert (=> d!748234 (= (singletonSeq!2060 separatorToken!156) lt!928471)))

(declare-fun b!2636387 () Bool)

(assert (=> b!2636387 (= e!1663504 (isBalanced!2885 (c!423641 lt!928471)))))

(assert (= (and d!748234 res!1110103) b!2636387))

(declare-fun m!2981233 () Bool)

(assert (=> d!748234 m!2981233))

(declare-fun m!2981235 () Bool)

(assert (=> d!748234 m!2981235))

(declare-fun m!2981237 () Bool)

(assert (=> b!2636387 m!2981237))

(assert (=> b!2635187 d!748234))

(assert (=> b!2635105 d!747892))

(assert (=> b!2635105 d!747880))

(assert (=> b!2635105 d!747882))

(assert (=> b!2635105 d!747894))

(declare-fun d!748236 () Bool)

(declare-fun lt!928472 () Bool)

(assert (=> d!748236 (= lt!928472 (isEmpty!17421 (list!11490 (_2!17556 lt!927806))))))

(assert (=> d!748236 (= lt!928472 (isEmpty!17426 (c!423640 (_2!17556 lt!927806))))))

(assert (=> d!748236 (= (isEmpty!17420 (_2!17556 lt!927806)) lt!928472)))

(declare-fun bs!476187 () Bool)

(assert (= bs!476187 d!748236))

(declare-fun m!2981239 () Bool)

(assert (=> bs!476187 m!2981239))

(assert (=> bs!476187 m!2981239))

(declare-fun m!2981241 () Bool)

(assert (=> bs!476187 m!2981241))

(declare-fun m!2981243 () Bool)

(assert (=> bs!476187 m!2981243))

(assert (=> b!2635183 d!748236))

(assert (=> b!2635109 d!747966))

(declare-fun bs!476188 () Bool)

(declare-fun d!748238 () Bool)

(assert (= bs!476188 (and d!748238 d!747948)))

(declare-fun lambda!98936 () Int)

(assert (=> bs!476188 (= lambda!98936 lambda!98917)))

(assert (=> d!748238 true))

(declare-fun lt!928475 () Bool)

(assert (=> d!748238 (= lt!928475 (rulesValidInductive!1619 thiss!14197 rules!1726))))

(assert (=> d!748238 (= lt!928475 (forall!6405 rules!1726 lambda!98936))))

(assert (=> d!748238 (= (rulesValid!1726 thiss!14197 rules!1726) lt!928475)))

(declare-fun bs!476189 () Bool)

(assert (= bs!476189 d!748238))

(assert (=> bs!476189 m!2979297))

(declare-fun m!2981245 () Bool)

(assert (=> bs!476189 m!2981245))

(assert (=> d!747776 d!748238))

(declare-fun d!748240 () Bool)

(declare-fun c!423997 () Bool)

(assert (=> d!748240 (= c!423997 ((_ is Node!9528) (c!423640 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 separatorToken!156))) (value!149930 separatorToken!156)))))))

(declare-fun e!1663505 () Bool)

(assert (=> d!748240 (= (inv!41409 (c!423640 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 separatorToken!156))) (value!149930 separatorToken!156)))) e!1663505)))

(declare-fun b!2636388 () Bool)

(assert (=> b!2636388 (= e!1663505 (inv!41419 (c!423640 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 separatorToken!156))) (value!149930 separatorToken!156)))))))

(declare-fun b!2636389 () Bool)

(declare-fun e!1663506 () Bool)

(assert (=> b!2636389 (= e!1663505 e!1663506)))

(declare-fun res!1110104 () Bool)

(assert (=> b!2636389 (= res!1110104 (not ((_ is Leaf!14590) (c!423640 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 separatorToken!156))) (value!149930 separatorToken!156))))))))

(assert (=> b!2636389 (=> res!1110104 e!1663506)))

(declare-fun b!2636390 () Bool)

(assert (=> b!2636390 (= e!1663506 (inv!41420 (c!423640 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 separatorToken!156))) (value!149930 separatorToken!156)))))))

(assert (= (and d!748240 c!423997) b!2636388))

(assert (= (and d!748240 (not c!423997)) b!2636389))

(assert (= (and b!2636389 (not res!1110104)) b!2636390))

(declare-fun m!2981247 () Bool)

(assert (=> b!2636388 m!2981247))

(declare-fun m!2981249 () Bool)

(assert (=> b!2636390 m!2981249))

(assert (=> b!2635225 d!748240))

(declare-fun b!2636391 () Bool)

(declare-fun e!1663511 () Int)

(assert (=> b!2636391 (= e!1663511 0)))

(declare-fun b!2636392 () Bool)

(declare-fun call!169703 () Int)

(assert (=> b!2636392 (= e!1663511 (- call!169703 (- (+ 1 from!862) 1)))))

(declare-fun b!2636393 () Bool)

(declare-fun e!1663510 () List!30622)

(assert (=> b!2636393 (= e!1663510 (t!216743 lt!927559))))

(declare-fun b!2636394 () Bool)

(declare-fun e!1663509 () Int)

(assert (=> b!2636394 (= e!1663509 call!169703)))

(declare-fun b!2636395 () Bool)

(declare-fun e!1663508 () List!30622)

(assert (=> b!2636395 (= e!1663508 Nil!30522)))

(declare-fun bm!169698 () Bool)

(assert (=> bm!169698 (= call!169703 (size!23608 (t!216743 lt!927559)))))

(declare-fun b!2636396 () Bool)

(assert (=> b!2636396 (= e!1663510 (drop!1639 (t!216743 (t!216743 lt!927559)) (- (- (+ 1 from!862) 1) 1)))))

(declare-fun b!2636397 () Bool)

(declare-fun e!1663507 () Bool)

(declare-fun lt!928476 () List!30622)

(assert (=> b!2636397 (= e!1663507 (= (size!23608 lt!928476) e!1663509))))

(declare-fun c!423999 () Bool)

(assert (=> b!2636397 (= c!423999 (<= (- (+ 1 from!862) 1) 0))))

(declare-fun b!2636398 () Bool)

(assert (=> b!2636398 (= e!1663508 e!1663510)))

(declare-fun c!424000 () Bool)

(assert (=> b!2636398 (= c!424000 (<= (- (+ 1 from!862) 1) 0))))

(declare-fun b!2636399 () Bool)

(assert (=> b!2636399 (= e!1663509 e!1663511)))

(declare-fun c!423998 () Bool)

(assert (=> b!2636399 (= c!423998 (>= (- (+ 1 from!862) 1) call!169703))))

(declare-fun d!748242 () Bool)

(assert (=> d!748242 e!1663507))

(declare-fun res!1110105 () Bool)

(assert (=> d!748242 (=> (not res!1110105) (not e!1663507))))

(assert (=> d!748242 (= res!1110105 (= ((_ map implies) (content!4313 lt!928476) (content!4313 (t!216743 lt!927559))) ((as const (InoxSet Token!8756)) true)))))

(assert (=> d!748242 (= lt!928476 e!1663508)))

(declare-fun c!424001 () Bool)

(assert (=> d!748242 (= c!424001 ((_ is Nil!30522) (t!216743 lt!927559)))))

(assert (=> d!748242 (= (drop!1639 (t!216743 lt!927559) (- (+ 1 from!862) 1)) lt!928476)))

(assert (= (and d!748242 c!424001) b!2636395))

(assert (= (and d!748242 (not c!424001)) b!2636398))

(assert (= (and b!2636398 c!424000) b!2636393))

(assert (= (and b!2636398 (not c!424000)) b!2636396))

(assert (= (and d!748242 res!1110105) b!2636397))

(assert (= (and b!2636397 c!423999) b!2636394))

(assert (= (and b!2636397 (not c!423999)) b!2636399))

(assert (= (and b!2636399 c!423998) b!2636391))

(assert (= (and b!2636399 (not c!423998)) b!2636392))

(assert (= (or b!2636394 b!2636399 b!2636392) bm!169698))

(assert (=> bm!169698 m!2979655))

(declare-fun m!2981251 () Bool)

(assert (=> b!2636396 m!2981251))

(declare-fun m!2981253 () Bool)

(assert (=> b!2636397 m!2981253))

(declare-fun m!2981255 () Bool)

(assert (=> d!748242 m!2981255))

(assert (=> d!748242 m!2980077))

(assert (=> b!2635364 d!748242))

(declare-fun d!748244 () Bool)

(declare-fun lt!928477 () Bool)

(assert (=> d!748244 (= lt!928477 (isEmpty!17418 (list!11491 (_1!17556 lt!927783))))))

(assert (=> d!748244 (= lt!928477 (isEmpty!17419 (c!423641 (_1!17556 lt!927783))))))

(assert (=> d!748244 (= (isEmpty!17412 (_1!17556 lt!927783)) lt!928477)))

(declare-fun bs!476190 () Bool)

(assert (= bs!476190 d!748244))

(assert (=> bs!476190 m!2979371))

(assert (=> bs!476190 m!2979371))

(declare-fun m!2981257 () Bool)

(assert (=> bs!476190 m!2981257))

(declare-fun m!2981259 () Bool)

(assert (=> bs!476190 m!2981259))

(assert (=> b!2635161 d!748244))

(declare-fun d!748246 () Bool)

(declare-fun charsToBigInt!1 (List!30619) Int)

(assert (=> d!748246 (= (inv!17 (value!149930 separatorToken!156)) (= (charsToBigInt!1 (text!34503 (value!149930 separatorToken!156))) (value!149923 (value!149930 separatorToken!156))))))

(declare-fun bs!476191 () Bool)

(assert (= bs!476191 d!748246))

(declare-fun m!2981261 () Bool)

(assert (=> bs!476191 m!2981261))

(assert (=> b!2635217 d!748246))

(declare-fun b!2636402 () Bool)

(declare-fun res!1110106 () Bool)

(declare-fun e!1663512 () Bool)

(assert (=> b!2636402 (=> (not res!1110106) (not e!1663512))))

(declare-fun lt!928478 () List!30620)

(assert (=> b!2636402 (= res!1110106 (= (size!23607 lt!928478) (+ (size!23607 (list!11490 (charsOf!2930 (h!35942 (Cons!30522 lt!927569 Nil!30522))))) (size!23607 (printList!1168 thiss!14197 (t!216743 (Cons!30522 lt!927569 Nil!30522)))))))))

(declare-fun b!2636403 () Bool)

(assert (=> b!2636403 (= e!1663512 (or (not (= (printList!1168 thiss!14197 (t!216743 (Cons!30522 lt!927569 Nil!30522))) Nil!30520)) (= lt!928478 (list!11490 (charsOf!2930 (h!35942 (Cons!30522 lt!927569 Nil!30522)))))))))

(declare-fun d!748248 () Bool)

(assert (=> d!748248 e!1663512))

(declare-fun res!1110107 () Bool)

(assert (=> d!748248 (=> (not res!1110107) (not e!1663512))))

(assert (=> d!748248 (= res!1110107 (= (content!4314 lt!928478) ((_ map or) (content!4314 (list!11490 (charsOf!2930 (h!35942 (Cons!30522 lt!927569 Nil!30522))))) (content!4314 (printList!1168 thiss!14197 (t!216743 (Cons!30522 lt!927569 Nil!30522)))))))))

(declare-fun e!1663513 () List!30620)

(assert (=> d!748248 (= lt!928478 e!1663513)))

(declare-fun c!424002 () Bool)

(assert (=> d!748248 (= c!424002 ((_ is Nil!30520) (list!11490 (charsOf!2930 (h!35942 (Cons!30522 lt!927569 Nil!30522))))))))

(assert (=> d!748248 (= (++!7441 (list!11490 (charsOf!2930 (h!35942 (Cons!30522 lt!927569 Nil!30522)))) (printList!1168 thiss!14197 (t!216743 (Cons!30522 lt!927569 Nil!30522)))) lt!928478)))

(declare-fun b!2636401 () Bool)

(assert (=> b!2636401 (= e!1663513 (Cons!30520 (h!35940 (list!11490 (charsOf!2930 (h!35942 (Cons!30522 lt!927569 Nil!30522))))) (++!7441 (t!216741 (list!11490 (charsOf!2930 (h!35942 (Cons!30522 lt!927569 Nil!30522))))) (printList!1168 thiss!14197 (t!216743 (Cons!30522 lt!927569 Nil!30522))))))))

(declare-fun b!2636400 () Bool)

(assert (=> b!2636400 (= e!1663513 (printList!1168 thiss!14197 (t!216743 (Cons!30522 lt!927569 Nil!30522))))))

(assert (= (and d!748248 c!424002) b!2636400))

(assert (= (and d!748248 (not c!424002)) b!2636401))

(assert (= (and d!748248 res!1110107) b!2636402))

(assert (= (and b!2636402 res!1110106) b!2636403))

(declare-fun m!2981263 () Bool)

(assert (=> b!2636402 m!2981263))

(assert (=> b!2636402 m!2978943))

(declare-fun m!2981265 () Bool)

(assert (=> b!2636402 m!2981265))

(assert (=> b!2636402 m!2978945))

(declare-fun m!2981267 () Bool)

(assert (=> b!2636402 m!2981267))

(declare-fun m!2981269 () Bool)

(assert (=> d!748248 m!2981269))

(assert (=> d!748248 m!2978943))

(declare-fun m!2981271 () Bool)

(assert (=> d!748248 m!2981271))

(assert (=> d!748248 m!2978945))

(declare-fun m!2981273 () Bool)

(assert (=> d!748248 m!2981273))

(assert (=> b!2636401 m!2978945))

(declare-fun m!2981275 () Bool)

(assert (=> b!2636401 m!2981275))

(assert (=> b!2634881 d!748248))

(declare-fun d!748250 () Bool)

(assert (=> d!748250 (= (list!11490 (charsOf!2930 (h!35942 (Cons!30522 lt!927569 Nil!30522)))) (list!11494 (c!423640 (charsOf!2930 (h!35942 (Cons!30522 lt!927569 Nil!30522))))))))

(declare-fun bs!476192 () Bool)

(assert (= bs!476192 d!748250))

(declare-fun m!2981277 () Bool)

(assert (=> bs!476192 m!2981277))

(assert (=> b!2634881 d!748250))

(declare-fun d!748252 () Bool)

(declare-fun lt!928479 () BalanceConc!18670)

(assert (=> d!748252 (= (list!11490 lt!928479) (originalCharacters!5409 (h!35942 (Cons!30522 lt!927569 Nil!30522))))))

(assert (=> d!748252 (= lt!928479 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 (h!35942 (Cons!30522 lt!927569 Nil!30522))))) (value!149930 (h!35942 (Cons!30522 lt!927569 Nil!30522)))))))

(assert (=> d!748252 (= (charsOf!2930 (h!35942 (Cons!30522 lt!927569 Nil!30522))) lt!928479)))

(declare-fun b_lambda!79415 () Bool)

(assert (=> (not b_lambda!79415) (not d!748252)))

(declare-fun t!216841 () Bool)

(declare-fun tb!143825 () Bool)

(assert (=> (and b!2634850 (= (toChars!6420 (transformation!4643 (h!35941 rules!1726))) (toChars!6420 (transformation!4643 (rule!7027 (h!35942 (Cons!30522 lt!927569 Nil!30522)))))) t!216841) tb!143825))

(declare-fun b!2636404 () Bool)

(declare-fun e!1663514 () Bool)

(declare-fun tp!835048 () Bool)

(assert (=> b!2636404 (= e!1663514 (and (inv!41409 (c!423640 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 (h!35942 (Cons!30522 lt!927569 Nil!30522))))) (value!149930 (h!35942 (Cons!30522 lt!927569 Nil!30522)))))) tp!835048))))

(declare-fun result!178768 () Bool)

(assert (=> tb!143825 (= result!178768 (and (inv!41410 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 (h!35942 (Cons!30522 lt!927569 Nil!30522))))) (value!149930 (h!35942 (Cons!30522 lt!927569 Nil!30522))))) e!1663514))))

(assert (= tb!143825 b!2636404))

(declare-fun m!2981279 () Bool)

(assert (=> b!2636404 m!2981279))

(declare-fun m!2981281 () Bool)

(assert (=> tb!143825 m!2981281))

(assert (=> d!748252 t!216841))

(declare-fun b_and!193037 () Bool)

(assert (= b_and!193031 (and (=> t!216841 result!178768) b_and!193037)))

(declare-fun t!216843 () Bool)

(declare-fun tb!143827 () Bool)

(assert (=> (and b!2634862 (= (toChars!6420 (transformation!4643 (rule!7027 separatorToken!156))) (toChars!6420 (transformation!4643 (rule!7027 (h!35942 (Cons!30522 lt!927569 Nil!30522)))))) t!216843) tb!143827))

(declare-fun result!178770 () Bool)

(assert (= result!178770 result!178768))

(assert (=> d!748252 t!216843))

(declare-fun b_and!193039 () Bool)

(assert (= b_and!193033 (and (=> t!216843 result!178770) b_and!193039)))

(declare-fun t!216845 () Bool)

(declare-fun tb!143829 () Bool)

(assert (=> (and b!2635424 (= (toChars!6420 (transformation!4643 (h!35941 (t!216742 rules!1726)))) (toChars!6420 (transformation!4643 (rule!7027 (h!35942 (Cons!30522 lt!927569 Nil!30522)))))) t!216845) tb!143829))

(declare-fun result!178772 () Bool)

(assert (= result!178772 result!178768))

(assert (=> d!748252 t!216845))

(declare-fun b_and!193041 () Bool)

(assert (= b_and!193035 (and (=> t!216845 result!178772) b_and!193041)))

(declare-fun m!2981283 () Bool)

(assert (=> d!748252 m!2981283))

(declare-fun m!2981285 () Bool)

(assert (=> d!748252 m!2981285))

(assert (=> b!2634881 d!748252))

(declare-fun d!748254 () Bool)

(declare-fun c!424003 () Bool)

(assert (=> d!748254 (= c!424003 ((_ is Cons!30522) (t!216743 (Cons!30522 lt!927569 Nil!30522))))))

(declare-fun e!1663515 () List!30620)

(assert (=> d!748254 (= (printList!1168 thiss!14197 (t!216743 (Cons!30522 lt!927569 Nil!30522))) e!1663515)))

(declare-fun b!2636405 () Bool)

(assert (=> b!2636405 (= e!1663515 (++!7441 (list!11490 (charsOf!2930 (h!35942 (t!216743 (Cons!30522 lt!927569 Nil!30522))))) (printList!1168 thiss!14197 (t!216743 (t!216743 (Cons!30522 lt!927569 Nil!30522))))))))

(declare-fun b!2636406 () Bool)

(assert (=> b!2636406 (= e!1663515 Nil!30520)))

(assert (= (and d!748254 c!424003) b!2636405))

(assert (= (and d!748254 (not c!424003)) b!2636406))

(declare-fun m!2981287 () Bool)

(assert (=> b!2636405 m!2981287))

(assert (=> b!2636405 m!2981287))

(declare-fun m!2981289 () Bool)

(assert (=> b!2636405 m!2981289))

(declare-fun m!2981291 () Bool)

(assert (=> b!2636405 m!2981291))

(assert (=> b!2636405 m!2981289))

(assert (=> b!2636405 m!2981291))

(declare-fun m!2981293 () Bool)

(assert (=> b!2636405 m!2981293))

(assert (=> b!2634881 d!748254))

(assert (=> b!2635042 d!747982))

(declare-fun d!748256 () Bool)

(declare-fun lt!928480 () Bool)

(assert (=> d!748256 (= lt!928480 (select (content!4313 lt!927559) lt!927853))))

(declare-fun e!1663516 () Bool)

(assert (=> d!748256 (= lt!928480 e!1663516)))

(declare-fun res!1110108 () Bool)

(assert (=> d!748256 (=> (not res!1110108) (not e!1663516))))

(assert (=> d!748256 (= res!1110108 ((_ is Cons!30522) lt!927559))))

(assert (=> d!748256 (= (contains!5804 lt!927559 lt!927853) lt!928480)))

(declare-fun b!2636407 () Bool)

(declare-fun e!1663517 () Bool)

(assert (=> b!2636407 (= e!1663516 e!1663517)))

(declare-fun res!1110109 () Bool)

(assert (=> b!2636407 (=> res!1110109 e!1663517)))

(assert (=> b!2636407 (= res!1110109 (= (h!35942 lt!927559) lt!927853))))

(declare-fun b!2636408 () Bool)

(assert (=> b!2636408 (= e!1663517 (contains!5804 (t!216743 lt!927559) lt!927853))))

(assert (= (and d!748256 res!1110108) b!2636407))

(assert (= (and b!2636407 (not res!1110109)) b!2636408))

(assert (=> d!748256 m!2979509))

(declare-fun m!2981295 () Bool)

(assert (=> d!748256 m!2981295))

(declare-fun m!2981297 () Bool)

(assert (=> b!2636408 m!2981297))

(assert (=> d!747764 d!748256))

(assert (=> d!747628 d!747748))

(declare-fun bs!476197 () Bool)

(declare-fun b!2636459 () Bool)

(assert (= bs!476197 (and b!2636459 d!747628)))

(declare-fun lambda!98939 () Int)

(assert (=> bs!476197 (not (= lambda!98939 lambda!98892))))

(declare-fun bs!476198 () Bool)

(assert (= bs!476198 (and b!2636459 d!748032)))

(assert (=> bs!476198 (= lambda!98939 lambda!98925)))

(declare-fun bs!476199 () Bool)

(assert (= bs!476199 (and b!2636459 d!747988)))

(assert (=> bs!476199 (not (= lambda!98939 lambda!98918))))

(declare-fun bs!476200 () Bool)

(assert (= bs!476200 (and b!2636459 b!2634859)))

(assert (=> bs!476200 (not (= lambda!98939 lambda!98881))))

(declare-fun bs!476201 () Bool)

(assert (= bs!476201 (and b!2636459 b!2634851)))

(assert (=> bs!476201 (= lambda!98939 lambda!98882)))

(declare-fun bs!476202 () Bool)

(assert (= bs!476202 (and b!2636459 b!2635763)))

(assert (=> bs!476202 (= lambda!98939 lambda!98919)))

(declare-fun bs!476203 () Bool)

(assert (= bs!476203 (and b!2636459 b!2635043)))

(assert (=> bs!476203 (= lambda!98939 lambda!98893)))

(declare-fun bs!476204 () Bool)

(assert (= bs!476204 (and b!2636459 d!747778)))

(assert (=> bs!476204 (= lambda!98939 lambda!98904)))

(declare-fun b!2636467 () Bool)

(declare-fun e!1663551 () Bool)

(assert (=> b!2636467 (= e!1663551 true)))

(declare-fun b!2636466 () Bool)

(declare-fun e!1663550 () Bool)

(assert (=> b!2636466 (= e!1663550 e!1663551)))

(declare-fun b!2636465 () Bool)

(declare-fun e!1663549 () Bool)

(assert (=> b!2636465 (= e!1663549 e!1663550)))

(assert (=> b!2636459 e!1663549))

(assert (= b!2636466 b!2636467))

(assert (= b!2636465 b!2636466))

(assert (= (and b!2636459 ((_ is Cons!30521) rules!1726)) b!2636465))

(assert (=> b!2636467 (< (dynLambda!13088 order!16567 (toValue!6561 (transformation!4643 (h!35941 rules!1726)))) (dynLambda!13089 order!16569 lambda!98939))))

(assert (=> b!2636467 (< (dynLambda!13090 order!16571 (toChars!6420 (transformation!4643 (h!35941 rules!1726)))) (dynLambda!13089 order!16569 lambda!98939))))

(assert (=> b!2636459 true))

(declare-fun b!2636457 () Bool)

(declare-fun e!1663545 () List!30620)

(declare-fun call!169715 () List!30620)

(assert (=> b!2636457 (= e!1663545 call!169715)))

(declare-fun bm!169709 () Bool)

(declare-fun c!424021 () Bool)

(declare-fun c!424019 () Bool)

(assert (=> bm!169709 (= c!424021 c!424019)))

(declare-fun e!1663546 () List!30620)

(declare-fun call!169718 () List!30620)

(declare-fun call!169716 () List!30620)

(assert (=> bm!169709 (= call!169715 (++!7441 (ite c!424019 call!169718 call!169716) e!1663546))))

(declare-fun lt!928561 () Option!6040)

(declare-fun b!2636458 () Bool)

(declare-fun c!424020 () Bool)

(assert (=> b!2636458 (= c!424020 (and ((_ is Some!6039) lt!928561) (not (= (_1!17560 (v!32474 lt!928561)) (h!35942 (dropList!946 v!6381 (+ 1 from!862)))))))))

(declare-fun e!1663547 () List!30620)

(assert (=> b!2636458 (= e!1663545 e!1663547)))

(declare-fun e!1663548 () List!30620)

(assert (=> b!2636459 (= e!1663548 e!1663545)))

(declare-fun lt!928557 () Unit!44539)

(assert (=> b!2636459 (= lt!928557 (forallContained!995 (dropList!946 v!6381 (+ 1 from!862)) lambda!98939 (h!35942 (dropList!946 v!6381 (+ 1 from!862)))))))

(declare-fun lt!928559 () List!30620)

(assert (=> b!2636459 (= lt!928559 (printWithSeparatorTokenWhenNeededList!659 thiss!14197 rules!1726 (t!216743 (dropList!946 v!6381 (+ 1 from!862))) separatorToken!156))))

(assert (=> b!2636459 (= lt!928561 (maxPrefix!2312 thiss!14197 rules!1726 (++!7441 (list!11490 (charsOf!2930 (h!35942 (dropList!946 v!6381 (+ 1 from!862))))) lt!928559)))))

(assert (=> b!2636459 (= c!424019 (and ((_ is Some!6039) lt!928561) (= (_1!17560 (v!32474 lt!928561)) (h!35942 (dropList!946 v!6381 (+ 1 from!862))))))))

(declare-fun b!2636460 () Bool)

(assert (=> b!2636460 (= e!1663546 lt!928559)))

(declare-fun b!2636461 () Bool)

(assert (=> b!2636461 (= e!1663546 (list!11490 (charsOf!2930 separatorToken!156)))))

(declare-fun bm!169710 () Bool)

(declare-fun call!169717 () BalanceConc!18670)

(declare-fun call!169714 () BalanceConc!18670)

(assert (=> bm!169710 (= call!169718 (list!11490 (ite c!424019 call!169714 call!169717)))))

(declare-fun bm!169711 () Bool)

(assert (=> bm!169711 (= call!169714 (charsOf!2930 (h!35942 (dropList!946 v!6381 (+ 1 from!862)))))))

(declare-fun d!748258 () Bool)

(declare-fun c!424022 () Bool)

(assert (=> d!748258 (= c!424022 ((_ is Cons!30522) (dropList!946 v!6381 (+ 1 from!862))))))

(assert (=> d!748258 (= (printWithSeparatorTokenWhenNeededList!659 thiss!14197 rules!1726 (dropList!946 v!6381 (+ 1 from!862)) separatorToken!156) e!1663548)))

(declare-fun bm!169712 () Bool)

(assert (=> bm!169712 (= call!169717 call!169714)))

(declare-fun b!2636462 () Bool)

(assert (=> b!2636462 (= e!1663548 Nil!30520)))

(declare-fun bm!169713 () Bool)

(assert (=> bm!169713 (= call!169716 call!169718)))

(declare-fun b!2636463 () Bool)

(assert (=> b!2636463 (= e!1663547 Nil!30520)))

(assert (=> b!2636463 (= (print!1641 thiss!14197 (singletonSeq!2060 (h!35942 (dropList!946 v!6381 (+ 1 from!862))))) (printTailRec!1127 thiss!14197 (singletonSeq!2060 (h!35942 (dropList!946 v!6381 (+ 1 from!862)))) 0 (BalanceConc!18671 Empty!9528)))))

(declare-fun lt!928560 () Unit!44539)

(declare-fun Unit!44555 () Unit!44539)

(assert (=> b!2636463 (= lt!928560 Unit!44555)))

(declare-fun lt!928558 () Unit!44539)

(assert (=> b!2636463 (= lt!928558 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!802 thiss!14197 rules!1726 call!169716 lt!928559))))

(assert (=> b!2636463 false))

(declare-fun lt!928556 () Unit!44539)

(declare-fun Unit!44556 () Unit!44539)

(assert (=> b!2636463 (= lt!928556 Unit!44556)))

(declare-fun b!2636464 () Bool)

(assert (=> b!2636464 (= e!1663547 (++!7441 call!169715 lt!928559))))

(assert (= (and d!748258 c!424022) b!2636459))

(assert (= (and d!748258 (not c!424022)) b!2636462))

(assert (= (and b!2636459 c!424019) b!2636457))

(assert (= (and b!2636459 (not c!424019)) b!2636458))

(assert (= (and b!2636458 c!424020) b!2636464))

(assert (= (and b!2636458 (not c!424020)) b!2636463))

(assert (= (or b!2636464 b!2636463) bm!169712))

(assert (= (or b!2636464 b!2636463) bm!169713))

(assert (= (or b!2636457 bm!169712) bm!169711))

(assert (= (or b!2636457 bm!169713) bm!169710))

(assert (= (or b!2636457 b!2636464) bm!169709))

(assert (= (and bm!169709 c!424021) b!2636460))

(assert (= (and bm!169709 (not c!424021)) b!2636461))

(declare-fun m!2981401 () Bool)

(assert (=> b!2636459 m!2981401))

(declare-fun m!2981403 () Bool)

(assert (=> b!2636459 m!2981403))

(assert (=> b!2636459 m!2981401))

(declare-fun m!2981405 () Bool)

(assert (=> b!2636459 m!2981405))

(declare-fun m!2981407 () Bool)

(assert (=> b!2636459 m!2981407))

(declare-fun m!2981409 () Bool)

(assert (=> b!2636459 m!2981409))

(assert (=> b!2636459 m!2979185))

(declare-fun m!2981411 () Bool)

(assert (=> b!2636459 m!2981411))

(assert (=> b!2636459 m!2981405))

(assert (=> b!2636459 m!2981407))

(declare-fun m!2981413 () Bool)

(assert (=> b!2636461 m!2981413))

(assert (=> b!2636461 m!2981413))

(declare-fun m!2981415 () Bool)

(assert (=> b!2636461 m!2981415))

(assert (=> bm!169711 m!2981401))

(declare-fun m!2981417 () Bool)

(assert (=> b!2636463 m!2981417))

(assert (=> b!2636463 m!2981417))

(declare-fun m!2981419 () Bool)

(assert (=> b!2636463 m!2981419))

(assert (=> b!2636463 m!2981417))

(declare-fun m!2981421 () Bool)

(assert (=> b!2636463 m!2981421))

(declare-fun m!2981423 () Bool)

(assert (=> b!2636463 m!2981423))

(declare-fun m!2981425 () Bool)

(assert (=> bm!169709 m!2981425))

(declare-fun m!2981427 () Bool)

(assert (=> b!2636464 m!2981427))

(declare-fun m!2981429 () Bool)

(assert (=> bm!169710 m!2981429))

(assert (=> d!747628 d!748258))

(declare-fun d!748280 () Bool)

(assert (=> d!748280 (forall!6403 (dropList!946 v!6381 (+ 1 from!862)) lambda!98892)))

(declare-fun lt!928562 () Unit!44539)

(assert (=> d!748280 (= lt!928562 (choose!15643 (list!11491 v!6381) (dropList!946 v!6381 (+ 1 from!862)) lambda!98892))))

(assert (=> d!748280 (forall!6403 (list!11491 v!6381) lambda!98892)))

(assert (=> d!748280 (= (lemmaContentSubsetPreservesForall!312 (list!11491 v!6381) (dropList!946 v!6381 (+ 1 from!862)) lambda!98892) lt!928562)))

(declare-fun bs!476205 () Bool)

(assert (= bs!476205 d!748280))

(assert (=> bs!476205 m!2979185))

(declare-fun m!2981431 () Bool)

(assert (=> bs!476205 m!2981431))

(assert (=> bs!476205 m!2978913))

(assert (=> bs!476205 m!2979185))

(declare-fun m!2981433 () Bool)

(assert (=> bs!476205 m!2981433))

(assert (=> bs!476205 m!2978913))

(declare-fun m!2981435 () Bool)

(assert (=> bs!476205 m!2981435))

(assert (=> d!747628 d!748280))

(assert (=> d!747628 d!747780))

(declare-fun d!748282 () Bool)

(assert (=> d!748282 (= (dropList!946 v!6381 (+ 1 from!862)) (drop!1639 (list!11495 (c!423641 v!6381)) (+ 1 from!862)))))

(declare-fun bs!476206 () Bool)

(assert (= bs!476206 d!748282))

(assert (=> bs!476206 m!2979549))

(assert (=> bs!476206 m!2979549))

(declare-fun m!2981437 () Bool)

(assert (=> bs!476206 m!2981437))

(assert (=> d!747628 d!748282))

(declare-fun d!748284 () Bool)

(assert (=> d!748284 (= (list!11490 lt!927712) (list!11494 (c!423640 lt!927712)))))

(declare-fun bs!476207 () Bool)

(assert (= bs!476207 d!748284))

(declare-fun m!2981439 () Bool)

(assert (=> bs!476207 m!2981439))

(assert (=> d!747628 d!748284))

(declare-fun d!748286 () Bool)

(assert (=> d!748286 true))

(declare-fun order!16579 () Int)

(declare-fun lambda!98942 () Int)

(declare-fun dynLambda!13098 (Int Int) Int)

(assert (=> d!748286 (< (dynLambda!13088 order!16567 (toValue!6561 (transformation!4643 (h!35941 rules!1726)))) (dynLambda!13098 order!16579 lambda!98942))))

(declare-fun Forall2!781 (Int) Bool)

(assert (=> d!748286 (= (equivClasses!1821 (toChars!6420 (transformation!4643 (h!35941 rules!1726))) (toValue!6561 (transformation!4643 (h!35941 rules!1726)))) (Forall2!781 lambda!98942))))

(declare-fun bs!476208 () Bool)

(assert (= bs!476208 d!748286))

(declare-fun m!2981441 () Bool)

(assert (=> bs!476208 m!2981441))

(assert (=> b!2635242 d!748286))

(assert (=> bs!476085 d!747714))

(declare-fun d!748288 () Bool)

(assert (=> d!748288 (= (tail!4282 (drop!1639 lt!927559 from!862)) (t!216743 (drop!1639 lt!927559 from!862)))))

(assert (=> d!747754 d!748288))

(assert (=> d!747754 d!747756))

(declare-fun b!2636472 () Bool)

(declare-fun e!1663558 () Int)

(assert (=> b!2636472 (= e!1663558 0)))

(declare-fun b!2636473 () Bool)

(declare-fun call!169719 () Int)

(assert (=> b!2636473 (= e!1663558 (- call!169719 (+ from!862 1)))))

(declare-fun b!2636474 () Bool)

(declare-fun e!1663557 () List!30622)

(assert (=> b!2636474 (= e!1663557 lt!927559)))

(declare-fun b!2636475 () Bool)

(declare-fun e!1663556 () Int)

(assert (=> b!2636475 (= e!1663556 call!169719)))

(declare-fun b!2636476 () Bool)

(declare-fun e!1663555 () List!30622)

(assert (=> b!2636476 (= e!1663555 Nil!30522)))

(declare-fun bm!169714 () Bool)

(assert (=> bm!169714 (= call!169719 (size!23608 lt!927559))))

(declare-fun b!2636477 () Bool)

(assert (=> b!2636477 (= e!1663557 (drop!1639 (t!216743 lt!927559) (- (+ from!862 1) 1)))))

(declare-fun b!2636478 () Bool)

(declare-fun e!1663554 () Bool)

(declare-fun lt!928563 () List!30622)

(assert (=> b!2636478 (= e!1663554 (= (size!23608 lt!928563) e!1663556))))

(declare-fun c!424024 () Bool)

(assert (=> b!2636478 (= c!424024 (<= (+ from!862 1) 0))))

(declare-fun b!2636479 () Bool)

(assert (=> b!2636479 (= e!1663555 e!1663557)))

(declare-fun c!424025 () Bool)

(assert (=> b!2636479 (= c!424025 (<= (+ from!862 1) 0))))

(declare-fun b!2636480 () Bool)

(assert (=> b!2636480 (= e!1663556 e!1663558)))

(declare-fun c!424023 () Bool)

(assert (=> b!2636480 (= c!424023 (>= (+ from!862 1) call!169719))))

(declare-fun d!748290 () Bool)

(assert (=> d!748290 e!1663554))

(declare-fun res!1110130 () Bool)

(assert (=> d!748290 (=> (not res!1110130) (not e!1663554))))

(assert (=> d!748290 (= res!1110130 (= ((_ map implies) (content!4313 lt!928563) (content!4313 lt!927559)) ((as const (InoxSet Token!8756)) true)))))

(assert (=> d!748290 (= lt!928563 e!1663555)))

(declare-fun c!424026 () Bool)

(assert (=> d!748290 (= c!424026 ((_ is Nil!30522) lt!927559))))

(assert (=> d!748290 (= (drop!1639 lt!927559 (+ from!862 1)) lt!928563)))

(assert (= (and d!748290 c!424026) b!2636476))

(assert (= (and d!748290 (not c!424026)) b!2636479))

(assert (= (and b!2636479 c!424025) b!2636474))

(assert (= (and b!2636479 (not c!424025)) b!2636477))

(assert (= (and d!748290 res!1110130) b!2636478))

(assert (= (and b!2636478 c!424024) b!2636475))

(assert (= (and b!2636478 (not c!424024)) b!2636480))

(assert (= (and b!2636480 c!424023) b!2636472))

(assert (= (and b!2636480 (not c!424023)) b!2636473))

(assert (= (or b!2636475 b!2636480 b!2636473) bm!169714))

(assert (=> bm!169714 m!2979567))

(declare-fun m!2981443 () Bool)

(assert (=> b!2636477 m!2981443))

(declare-fun m!2981445 () Bool)

(assert (=> b!2636478 m!2981445))

(declare-fun m!2981447 () Bool)

(assert (=> d!748290 m!2981447))

(assert (=> d!748290 m!2979509))

(assert (=> d!747754 d!748290))

(declare-fun d!748292 () Bool)

(assert (=> d!748292 (= (tail!4282 (drop!1639 lt!927559 from!862)) (drop!1639 lt!927559 (+ from!862 1)))))

(assert (=> d!748292 true))

(declare-fun _$28!532 () Unit!44539)

(assert (=> d!748292 (= (choose!15644 lt!927559 from!862) _$28!532)))

(declare-fun bs!476209 () Bool)

(assert (= bs!476209 d!748292))

(assert (=> bs!476209 m!2978871))

(assert (=> bs!476209 m!2978871))

(assert (=> bs!476209 m!2979561))

(assert (=> bs!476209 m!2979563))

(assert (=> d!747754 d!748292))

(declare-fun d!748294 () Bool)

(declare-fun res!1110131 () Bool)

(declare-fun e!1663559 () Bool)

(assert (=> d!748294 (=> res!1110131 e!1663559)))

(assert (=> d!748294 (= res!1110131 (not ((_ is Cons!30521) (t!216742 rules!1726))))))

(assert (=> d!748294 (= (sepAndNonSepRulesDisjointChars!1216 rules!1726 (t!216742 rules!1726)) e!1663559)))

(declare-fun b!2636481 () Bool)

(declare-fun e!1663560 () Bool)

(assert (=> b!2636481 (= e!1663559 e!1663560)))

(declare-fun res!1110132 () Bool)

(assert (=> b!2636481 (=> (not res!1110132) (not e!1663560))))

(assert (=> b!2636481 (= res!1110132 (ruleDisjointCharsFromAllFromOtherType!527 (h!35941 (t!216742 rules!1726)) rules!1726))))

(declare-fun b!2636482 () Bool)

(assert (=> b!2636482 (= e!1663560 (sepAndNonSepRulesDisjointChars!1216 rules!1726 (t!216742 (t!216742 rules!1726))))))

(assert (= (and d!748294 (not res!1110131)) b!2636481))

(assert (= (and b!2636481 res!1110132) b!2636482))

(declare-fun m!2981449 () Bool)

(assert (=> b!2636481 m!2981449))

(declare-fun m!2981451 () Bool)

(assert (=> b!2636482 m!2981451))

(assert (=> b!2635169 d!748294))

(declare-fun d!748296 () Bool)

(declare-fun lt!928566 () Int)

(assert (=> d!748296 (>= lt!928566 0)))

(declare-fun e!1663563 () Int)

(assert (=> d!748296 (= lt!928566 e!1663563)))

(declare-fun c!424029 () Bool)

(assert (=> d!748296 (= c!424029 ((_ is Nil!30520) (originalCharacters!5409 separatorToken!156)))))

(assert (=> d!748296 (= (size!23607 (originalCharacters!5409 separatorToken!156)) lt!928566)))

(declare-fun b!2636487 () Bool)

(assert (=> b!2636487 (= e!1663563 0)))

(declare-fun b!2636488 () Bool)

(assert (=> b!2636488 (= e!1663563 (+ 1 (size!23607 (t!216741 (originalCharacters!5409 separatorToken!156)))))))

(assert (= (and d!748296 c!424029) b!2636487))

(assert (= (and d!748296 (not c!424029)) b!2636488))

(declare-fun m!2981453 () Bool)

(assert (=> b!2636488 m!2981453))

(assert (=> b!2635224 d!748296))

(assert (=> d!747730 d!747942))

(declare-fun bs!476210 () Bool)

(declare-fun b!2636502 () Bool)

(assert (= bs!476210 (and b!2636502 d!747918)))

(declare-fun lambda!98947 () Int)

(assert (=> bs!476210 (= (and (= (toChars!6420 (transformation!4643 (h!35941 rules!1726))) (toChars!6420 (transformation!4643 (rule!7027 separatorToken!156)))) (= (toValue!6561 (transformation!4643 (h!35941 rules!1726))) (toValue!6561 (transformation!4643 (rule!7027 separatorToken!156))))) (= lambda!98947 lambda!98913))))

(declare-fun bs!476211 () Bool)

(assert (= bs!476211 (and b!2636502 d!747930)))

(assert (=> bs!476211 (= lambda!98947 lambda!98914)))

(declare-fun b!2636514 () Bool)

(declare-fun e!1663584 () Bool)

(assert (=> b!2636514 (= e!1663584 true)))

(declare-fun b!2636513 () Bool)

(declare-fun e!1663583 () Bool)

(assert (=> b!2636513 (= e!1663583 e!1663584)))

(assert (=> b!2636502 e!1663583))

(assert (= b!2636513 b!2636514))

(assert (= b!2636502 b!2636513))

(assert (=> b!2636514 (< (dynLambda!13088 order!16567 (toValue!6561 (transformation!4643 (h!35941 rules!1726)))) (dynLambda!13095 order!16577 lambda!98947))))

(assert (=> b!2636514 (< (dynLambda!13090 order!16571 (toChars!6420 (transformation!4643 (h!35941 rules!1726)))) (dynLambda!13095 order!16577 lambda!98947))))

(declare-fun lt!928596 () Option!6038)

(declare-fun b!2636501 () Bool)

(declare-fun e!1663578 () Bool)

(assert (=> b!2636501 (= e!1663578 (= (list!11490 (_2!17557 (get!9608 lt!928596))) (_2!17560 (get!9609 (maxPrefixOneRule!1469 thiss!14197 (h!35941 rules!1726) (list!11490 (++!7439 lt!927573 lt!927565)))))))))

(declare-fun e!1663577 () Option!6038)

(declare-datatypes ((tuple2!30044 0))(
  ( (tuple2!30045 (_1!17564 BalanceConc!18670) (_2!17564 BalanceConc!18670)) )
))
(declare-fun lt!928589 () tuple2!30044)

(assert (=> b!2636502 (= e!1663577 (Some!6037 (tuple2!30031 (Token!8757 (apply!7288 (transformation!4643 (h!35941 rules!1726)) (_1!17564 lt!928589)) (h!35941 rules!1726) (size!23606 (_1!17564 lt!928589)) (list!11490 (_1!17564 lt!928589))) (_2!17564 lt!928589))))))

(declare-fun lt!928592 () List!30620)

(assert (=> b!2636502 (= lt!928592 (list!11490 (++!7439 lt!927573 lt!927565)))))

(declare-fun lt!928593 () Unit!44539)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!738 (Regex!7787 List!30620) Unit!44539)

(assert (=> b!2636502 (= lt!928593 (longestMatchIsAcceptedByMatchOrIsEmpty!738 (regex!4643 (h!35941 rules!1726)) lt!928592))))

(declare-fun res!1110142 () Bool)

(declare-datatypes ((tuple2!30046 0))(
  ( (tuple2!30047 (_1!17565 List!30620) (_2!17565 List!30620)) )
))
(declare-fun findLongestMatchInner!765 (Regex!7787 List!30620 Int List!30620 List!30620 Int) tuple2!30046)

(assert (=> b!2636502 (= res!1110142 (isEmpty!17421 (_1!17565 (findLongestMatchInner!765 (regex!4643 (h!35941 rules!1726)) Nil!30520 (size!23607 Nil!30520) lt!928592 lt!928592 (size!23607 lt!928592)))))))

(declare-fun e!1663575 () Bool)

(assert (=> b!2636502 (=> res!1110142 e!1663575)))

(assert (=> b!2636502 e!1663575))

(declare-fun lt!928590 () Unit!44539)

(assert (=> b!2636502 (= lt!928590 lt!928593)))

(declare-fun lt!928595 () Unit!44539)

(declare-fun lemmaInv!813 (TokenValueInjection!9170) Unit!44539)

(assert (=> b!2636502 (= lt!928595 (lemmaInv!813 (transformation!4643 (h!35941 rules!1726))))))

(declare-fun lt!928594 () Unit!44539)

(declare-fun ForallOf!515 (Int BalanceConc!18670) Unit!44539)

(assert (=> b!2636502 (= lt!928594 (ForallOf!515 lambda!98947 (_1!17564 lt!928589)))))

(declare-fun lt!928591 () Unit!44539)

(assert (=> b!2636502 (= lt!928591 (ForallOf!515 lambda!98947 (seqFromList!3183 (list!11490 (_1!17564 lt!928589)))))))

(declare-fun lt!928587 () Option!6038)

(assert (=> b!2636502 (= lt!928587 (Some!6037 (tuple2!30031 (Token!8757 (apply!7288 (transformation!4643 (h!35941 rules!1726)) (_1!17564 lt!928589)) (h!35941 rules!1726) (size!23606 (_1!17564 lt!928589)) (list!11490 (_1!17564 lt!928589))) (_2!17564 lt!928589))))))

(declare-fun lt!928588 () Unit!44539)

(declare-fun lemmaEqSameImage!719 (TokenValueInjection!9170 BalanceConc!18670 BalanceConc!18670) Unit!44539)

(assert (=> b!2636502 (= lt!928588 (lemmaEqSameImage!719 (transformation!4643 (h!35941 rules!1726)) (_1!17564 lt!928589) (seqFromList!3183 (list!11490 (_1!17564 lt!928589)))))))

(declare-fun b!2636503 () Bool)

(assert (=> b!2636503 (= e!1663575 (matchR!3611 (regex!4643 (h!35941 rules!1726)) (_1!17565 (findLongestMatchInner!765 (regex!4643 (h!35941 rules!1726)) Nil!30520 (size!23607 Nil!30520) lt!928592 lt!928592 (size!23607 lt!928592)))))))

(declare-fun b!2636504 () Bool)

(declare-fun e!1663576 () Bool)

(declare-fun e!1663574 () Bool)

(assert (=> b!2636504 (= e!1663576 e!1663574)))

(declare-fun res!1110143 () Bool)

(assert (=> b!2636504 (=> res!1110143 e!1663574)))

(assert (=> b!2636504 (= res!1110143 (not (isDefined!4803 lt!928596)))))

(declare-fun b!2636505 () Bool)

(assert (=> b!2636505 (= e!1663574 e!1663578)))

(declare-fun res!1110144 () Bool)

(assert (=> b!2636505 (=> (not res!1110144) (not e!1663578))))

(assert (=> b!2636505 (= res!1110144 (= (_1!17557 (get!9608 lt!928596)) (_1!17560 (get!9609 (maxPrefixOneRule!1469 thiss!14197 (h!35941 rules!1726) (list!11490 (++!7439 lt!927573 lt!927565)))))))))

(declare-fun d!748298 () Bool)

(assert (=> d!748298 e!1663576))

(declare-fun res!1110141 () Bool)

(assert (=> d!748298 (=> (not res!1110141) (not e!1663576))))

(assert (=> d!748298 (= res!1110141 (= (isDefined!4803 lt!928596) (isDefined!4804 (maxPrefixOneRule!1469 thiss!14197 (h!35941 rules!1726) (list!11490 (++!7439 lt!927573 lt!927565))))))))

(assert (=> d!748298 (= lt!928596 e!1663577)))

(declare-fun c!424032 () Bool)

(assert (=> d!748298 (= c!424032 (isEmpty!17420 (_1!17564 lt!928589)))))

(declare-fun findLongestMatchWithZipperSequence!166 (Regex!7787 BalanceConc!18670) tuple2!30044)

(assert (=> d!748298 (= lt!928589 (findLongestMatchWithZipperSequence!166 (regex!4643 (h!35941 rules!1726)) (++!7439 lt!927573 lt!927565)))))

(assert (=> d!748298 (ruleValid!1540 thiss!14197 (h!35941 rules!1726))))

(assert (=> d!748298 (= (maxPrefixOneRuleZipperSequence!449 thiss!14197 (h!35941 rules!1726) (++!7439 lt!927573 lt!927565)) lt!928596)))

(declare-fun b!2636506 () Bool)

(assert (=> b!2636506 (= e!1663577 None!6037)))

(assert (= (and d!748298 c!424032) b!2636506))

(assert (= (and d!748298 (not c!424032)) b!2636502))

(assert (= (and b!2636502 (not res!1110142)) b!2636503))

(assert (= (and d!748298 res!1110141) b!2636504))

(assert (= (and b!2636504 (not res!1110143)) b!2636505))

(assert (= (and b!2636505 res!1110144) b!2636501))

(declare-fun m!2981455 () Bool)

(assert (=> b!2636502 m!2981455))

(declare-fun m!2981457 () Bool)

(assert (=> b!2636502 m!2981457))

(declare-fun m!2981459 () Bool)

(assert (=> b!2636502 m!2981459))

(declare-fun m!2981461 () Bool)

(assert (=> b!2636502 m!2981461))

(declare-fun m!2981463 () Bool)

(assert (=> b!2636502 m!2981463))

(declare-fun m!2981465 () Bool)

(assert (=> b!2636502 m!2981465))

(declare-fun m!2981467 () Bool)

(assert (=> b!2636502 m!2981467))

(declare-fun m!2981469 () Bool)

(assert (=> b!2636502 m!2981469))

(declare-fun m!2981471 () Bool)

(assert (=> b!2636502 m!2981471))

(assert (=> b!2636502 m!2981463))

(assert (=> b!2636502 m!2981465))

(declare-fun m!2981473 () Bool)

(assert (=> b!2636502 m!2981473))

(assert (=> b!2636502 m!2978921))

(assert (=> b!2636502 m!2979295))

(declare-fun m!2981475 () Bool)

(assert (=> b!2636502 m!2981475))

(assert (=> b!2636502 m!2981459))

(assert (=> b!2636502 m!2981465))

(declare-fun m!2981477 () Bool)

(assert (=> b!2636502 m!2981477))

(declare-fun m!2981479 () Bool)

(assert (=> b!2636502 m!2981479))

(assert (=> b!2636502 m!2981457))

(assert (=> b!2636503 m!2981457))

(assert (=> b!2636503 m!2981459))

(assert (=> b!2636503 m!2981457))

(assert (=> b!2636503 m!2981459))

(assert (=> b!2636503 m!2981461))

(declare-fun m!2981481 () Bool)

(assert (=> b!2636503 m!2981481))

(declare-fun m!2981483 () Bool)

(assert (=> b!2636505 m!2981483))

(assert (=> b!2636505 m!2978921))

(assert (=> b!2636505 m!2979295))

(assert (=> b!2636505 m!2979295))

(assert (=> b!2636505 m!2980745))

(assert (=> b!2636505 m!2980745))

(declare-fun m!2981485 () Bool)

(assert (=> b!2636505 m!2981485))

(assert (=> d!748298 m!2978921))

(assert (=> d!748298 m!2979295))

(assert (=> d!748298 m!2979295))

(assert (=> d!748298 m!2980745))

(assert (=> d!748298 m!2980745))

(declare-fun m!2981487 () Bool)

(assert (=> d!748298 m!2981487))

(assert (=> d!748298 m!2980115))

(assert (=> d!748298 m!2978921))

(declare-fun m!2981489 () Bool)

(assert (=> d!748298 m!2981489))

(declare-fun m!2981491 () Bool)

(assert (=> d!748298 m!2981491))

(declare-fun m!2981493 () Bool)

(assert (=> d!748298 m!2981493))

(assert (=> b!2636504 m!2981491))

(assert (=> b!2636501 m!2978921))

(assert (=> b!2636501 m!2979295))

(assert (=> b!2636501 m!2979295))

(assert (=> b!2636501 m!2980745))

(declare-fun m!2981495 () Bool)

(assert (=> b!2636501 m!2981495))

(assert (=> b!2636501 m!2981483))

(assert (=> b!2636501 m!2980745))

(assert (=> b!2636501 m!2981485))

(assert (=> bm!169541 d!748298))

(declare-fun b!2636517 () Bool)

(declare-fun res!1110146 () Bool)

(declare-fun e!1663585 () Bool)

(assert (=> b!2636517 (=> (not res!1110146) (not e!1663585))))

(assert (=> b!2636517 (= res!1110146 (>= (height!1380 (++!7443 (c!423640 call!169542) (c!423640 lt!927709))) (max!0 (height!1380 (c!423640 call!169542)) (height!1380 (c!423640 lt!927709)))))))

(declare-fun lt!928597 () BalanceConc!18670)

(declare-fun b!2636518 () Bool)

(assert (=> b!2636518 (= e!1663585 (= (list!11490 lt!928597) (++!7441 (list!11490 call!169542) (list!11490 lt!927709))))))

(declare-fun b!2636516 () Bool)

(declare-fun res!1110147 () Bool)

(assert (=> b!2636516 (=> (not res!1110147) (not e!1663585))))

(assert (=> b!2636516 (= res!1110147 (<= (height!1380 (++!7443 (c!423640 call!169542) (c!423640 lt!927709))) (+ (max!0 (height!1380 (c!423640 call!169542)) (height!1380 (c!423640 lt!927709))) 1)))))

(declare-fun d!748300 () Bool)

(assert (=> d!748300 e!1663585))

(declare-fun res!1110145 () Bool)

(assert (=> d!748300 (=> (not res!1110145) (not e!1663585))))

(assert (=> d!748300 (= res!1110145 (appendAssocInst!636 (c!423640 call!169542) (c!423640 lt!927709)))))

(assert (=> d!748300 (= lt!928597 (BalanceConc!18671 (++!7443 (c!423640 call!169542) (c!423640 lt!927709))))))

(assert (=> d!748300 (= (++!7439 call!169542 lt!927709) lt!928597)))

(declare-fun b!2636515 () Bool)

(declare-fun res!1110148 () Bool)

(assert (=> b!2636515 (=> (not res!1110148) (not e!1663585))))

(assert (=> b!2636515 (= res!1110148 (isBalanced!2887 (++!7443 (c!423640 call!169542) (c!423640 lt!927709))))))

(assert (= (and d!748300 res!1110145) b!2636515))

(assert (= (and b!2636515 res!1110148) b!2636516))

(assert (= (and b!2636516 res!1110147) b!2636517))

(assert (= (and b!2636517 res!1110146) b!2636518))

(declare-fun m!2981497 () Bool)

(assert (=> b!2636517 m!2981497))

(assert (=> b!2636517 m!2980225))

(declare-fun m!2981499 () Bool)

(assert (=> b!2636517 m!2981499))

(assert (=> b!2636517 m!2981497))

(assert (=> b!2636517 m!2980225))

(declare-fun m!2981501 () Bool)

(assert (=> b!2636517 m!2981501))

(assert (=> b!2636517 m!2981499))

(declare-fun m!2981503 () Bool)

(assert (=> b!2636517 m!2981503))

(declare-fun m!2981505 () Bool)

(assert (=> b!2636518 m!2981505))

(declare-fun m!2981507 () Bool)

(assert (=> b!2636518 m!2981507))

(assert (=> b!2636518 m!2979179))

(assert (=> b!2636518 m!2981507))

(assert (=> b!2636518 m!2979179))

(declare-fun m!2981509 () Bool)

(assert (=> b!2636518 m!2981509))

(assert (=> b!2636515 m!2981499))

(assert (=> b!2636515 m!2981499))

(declare-fun m!2981511 () Bool)

(assert (=> b!2636515 m!2981511))

(declare-fun m!2981513 () Bool)

(assert (=> d!748300 m!2981513))

(assert (=> d!748300 m!2981499))

(assert (=> b!2636516 m!2981497))

(assert (=> b!2636516 m!2980225))

(assert (=> b!2636516 m!2981499))

(assert (=> b!2636516 m!2981497))

(assert (=> b!2636516 m!2980225))

(assert (=> b!2636516 m!2981501))

(assert (=> b!2636516 m!2981499))

(assert (=> b!2636516 m!2981503))

(assert (=> b!2635048 d!748300))

(assert (=> b!2634844 d!747774))

(declare-fun lt!928598 () Bool)

(declare-fun d!748302 () Bool)

(assert (=> d!748302 (= lt!928598 (isEmpty!17421 (list!11490 (_2!17556 (lex!1903 thiss!14197 rules!1726 (print!1641 thiss!14197 (singletonSeq!2060 lt!927569)))))))))

(assert (=> d!748302 (= lt!928598 (isEmpty!17426 (c!423640 (_2!17556 (lex!1903 thiss!14197 rules!1726 (print!1641 thiss!14197 (singletonSeq!2060 lt!927569)))))))))

(assert (=> d!748302 (= (isEmpty!17420 (_2!17556 (lex!1903 thiss!14197 rules!1726 (print!1641 thiss!14197 (singletonSeq!2060 lt!927569))))) lt!928598)))

(declare-fun bs!476212 () Bool)

(assert (= bs!476212 d!748302))

(declare-fun m!2981515 () Bool)

(assert (=> bs!476212 m!2981515))

(assert (=> bs!476212 m!2981515))

(declare-fun m!2981517 () Bool)

(assert (=> bs!476212 m!2981517))

(declare-fun m!2981519 () Bool)

(assert (=> bs!476212 m!2981519))

(assert (=> b!2635184 d!748302))

(assert (=> b!2635184 d!748130))

(assert (=> b!2635184 d!748128))

(assert (=> b!2635184 d!747620))

(assert (=> b!2635273 d!747796))

(assert (=> b!2635106 d!748142))

(assert (=> b!2635106 d!747892))

(assert (=> b!2635106 d!748140))

(assert (=> b!2635106 d!747894))

(assert (=> b!2635106 d!747896))

(assert (=> b!2635063 d!748220))

(assert (=> b!2635063 d!748066))

(assert (=> b!2635063 d!748222))

(assert (=> b!2635063 d!748224))

(assert (=> b!2635063 d!748226))

(declare-fun d!748304 () Bool)

(declare-fun lt!928599 () Bool)

(assert (=> d!748304 (= lt!928599 (select (content!4313 (list!11491 v!6381)) lt!927569))))

(declare-fun e!1663586 () Bool)

(assert (=> d!748304 (= lt!928599 e!1663586)))

(declare-fun res!1110149 () Bool)

(assert (=> d!748304 (=> (not res!1110149) (not e!1663586))))

(assert (=> d!748304 (= res!1110149 ((_ is Cons!30522) (list!11491 v!6381)))))

(assert (=> d!748304 (= (contains!5804 (list!11491 v!6381) lt!927569) lt!928599)))

(declare-fun b!2636519 () Bool)

(declare-fun e!1663587 () Bool)

(assert (=> b!2636519 (= e!1663586 e!1663587)))

(declare-fun res!1110150 () Bool)

(assert (=> b!2636519 (=> res!1110150 e!1663587)))

(assert (=> b!2636519 (= res!1110150 (= (h!35942 (list!11491 v!6381)) lt!927569))))

(declare-fun b!2636520 () Bool)

(assert (=> b!2636520 (= e!1663587 (contains!5804 (t!216743 (list!11491 v!6381)) lt!927569))))

(assert (= (and d!748304 res!1110149) b!2636519))

(assert (= (and b!2636519 (not res!1110150)) b!2636520))

(assert (=> d!748304 m!2978913))

(declare-fun m!2981521 () Bool)

(assert (=> d!748304 m!2981521))

(declare-fun m!2981523 () Bool)

(assert (=> d!748304 m!2981523))

(declare-fun m!2981525 () Bool)

(assert (=> b!2636520 m!2981525))

(assert (=> d!747772 d!748304))

(assert (=> d!747772 d!747748))

(declare-fun b!2636542 () Bool)

(declare-fun e!1663600 () Bool)

(declare-fun contains!5810 (IArray!19063 Token!8756) Bool)

(assert (=> b!2636542 (= e!1663600 (contains!5810 (xs!12533 (c!423641 v!6381)) lt!927569))))

(declare-fun d!748306 () Bool)

(declare-fun lt!928614 () Bool)

(assert (=> d!748306 (= lt!928614 (contains!5804 (list!11495 (c!423641 v!6381)) lt!927569))))

(declare-fun e!1663601 () Bool)

(assert (=> d!748306 (= lt!928614 e!1663601)))

(declare-fun res!1110155 () Bool)

(assert (=> d!748306 (=> (not res!1110155) (not e!1663601))))

(assert (=> d!748306 (= res!1110155 (not ((_ is Empty!9529) (c!423641 v!6381))))))

(assert (=> d!748306 (= (contains!5806 (c!423641 v!6381) lt!927569) lt!928614)))

(declare-fun b!2636541 () Bool)

(assert (=> b!2636541 (= e!1663601 e!1663600)))

(declare-fun c!424041 () Bool)

(assert (=> b!2636541 (= c!424041 ((_ is Leaf!14591) (c!423641 v!6381)))))

(declare-fun b!2636543 () Bool)

(declare-fun e!1663602 () Bool)

(assert (=> b!2636543 (= e!1663600 e!1663602)))

(declare-fun res!1110156 () Bool)

(assert (=> b!2636543 (= res!1110156 (contains!5806 (left!23582 (c!423641 v!6381)) lt!927569))))

(assert (=> b!2636543 (=> res!1110156 e!1663602)))

(declare-fun b!2636544 () Bool)

(assert (=> b!2636544 (= e!1663602 (contains!5806 (right!23912 (c!423641 v!6381)) lt!927569))))

(assert (= (and d!748306 res!1110155) b!2636541))

(assert (= (and b!2636541 c!424041) b!2636542))

(assert (= (and b!2636541 (not c!424041)) b!2636543))

(assert (= (and b!2636543 (not res!1110156)) b!2636544))

(declare-fun m!2981527 () Bool)

(assert (=> b!2636542 m!2981527))

(assert (=> d!748306 m!2979549))

(assert (=> d!748306 m!2979549))

(declare-fun m!2981529 () Bool)

(assert (=> d!748306 m!2981529))

(declare-fun m!2981531 () Bool)

(assert (=> b!2636543 m!2981531))

(declare-fun m!2981533 () Bool)

(assert (=> b!2636544 m!2981533))

(assert (=> d!747772 d!748306))

(declare-fun b!2636545 () Bool)

(declare-fun e!1663604 () Bool)

(declare-fun e!1663603 () Bool)

(assert (=> b!2636545 (= e!1663604 e!1663603)))

(declare-fun res!1110158 () Bool)

(assert (=> b!2636545 (=> (not res!1110158) (not e!1663603))))

(assert (=> b!2636545 (= res!1110158 (<= (- 1) (- (height!1382 (left!23582 (c!423641 lt!927583))) (height!1382 (right!23912 (c!423641 lt!927583))))))))

(declare-fun b!2636546 () Bool)

(declare-fun res!1110157 () Bool)

(assert (=> b!2636546 (=> (not res!1110157) (not e!1663603))))

(assert (=> b!2636546 (= res!1110157 (<= (- (height!1382 (left!23582 (c!423641 lt!927583))) (height!1382 (right!23912 (c!423641 lt!927583)))) 1))))

(declare-fun b!2636547 () Bool)

(assert (=> b!2636547 (= e!1663603 (not (isEmpty!17419 (right!23912 (c!423641 lt!927583)))))))

(declare-fun b!2636548 () Bool)

(declare-fun res!1110160 () Bool)

(assert (=> b!2636548 (=> (not res!1110160) (not e!1663603))))

(assert (=> b!2636548 (= res!1110160 (isBalanced!2885 (right!23912 (c!423641 lt!927583))))))

(declare-fun d!748308 () Bool)

(declare-fun res!1110159 () Bool)

(assert (=> d!748308 (=> res!1110159 e!1663604)))

(assert (=> d!748308 (= res!1110159 (not ((_ is Node!9529) (c!423641 lt!927583))))))

(assert (=> d!748308 (= (isBalanced!2885 (c!423641 lt!927583)) e!1663604)))

(declare-fun b!2636549 () Bool)

(declare-fun res!1110161 () Bool)

(assert (=> b!2636549 (=> (not res!1110161) (not e!1663603))))

(assert (=> b!2636549 (= res!1110161 (isBalanced!2885 (left!23582 (c!423641 lt!927583))))))

(declare-fun b!2636550 () Bool)

(declare-fun res!1110162 () Bool)

(assert (=> b!2636550 (=> (not res!1110162) (not e!1663603))))

(assert (=> b!2636550 (= res!1110162 (not (isEmpty!17419 (left!23582 (c!423641 lt!927583)))))))

(assert (= (and d!748308 (not res!1110159)) b!2636545))

(assert (= (and b!2636545 res!1110158) b!2636546))

(assert (= (and b!2636546 res!1110157) b!2636549))

(assert (= (and b!2636549 res!1110161) b!2636548))

(assert (= (and b!2636548 res!1110160) b!2636550))

(assert (= (and b!2636550 res!1110162) b!2636547))

(declare-fun m!2981535 () Bool)

(assert (=> b!2636546 m!2981535))

(declare-fun m!2981537 () Bool)

(assert (=> b!2636546 m!2981537))

(declare-fun m!2981539 () Bool)

(assert (=> b!2636547 m!2981539))

(declare-fun m!2981541 () Bool)

(assert (=> b!2636549 m!2981541))

(assert (=> b!2636545 m!2981535))

(assert (=> b!2636545 m!2981537))

(declare-fun m!2981543 () Bool)

(assert (=> b!2636548 m!2981543))

(declare-fun m!2981545 () Bool)

(assert (=> b!2636550 m!2981545))

(assert (=> b!2634885 d!748308))

(declare-fun d!748310 () Bool)

(assert (=> d!748310 (= (list!11491 (_1!17556 lt!927783)) (list!11495 (c!423641 (_1!17556 lt!927783))))))

(declare-fun bs!476213 () Bool)

(assert (= bs!476213 d!748310))

(declare-fun m!2981547 () Bool)

(assert (=> bs!476213 m!2981547))

(assert (=> b!2635162 d!748310))

(assert (=> b!2635162 d!747926))

(assert (=> b!2635162 d!747928))

(declare-fun bs!476214 () Bool)

(declare-fun d!748312 () Bool)

(assert (= bs!476214 (and d!748312 d!748286)))

(declare-fun lambda!98950 () Int)

(assert (=> bs!476214 (= (= (toValue!6561 (transformation!4643 (rule!7027 separatorToken!156))) (toValue!6561 (transformation!4643 (h!35941 rules!1726)))) (= lambda!98950 lambda!98942))))

(assert (=> d!748312 true))

(assert (=> d!748312 (< (dynLambda!13088 order!16567 (toValue!6561 (transformation!4643 (rule!7027 separatorToken!156)))) (dynLambda!13098 order!16579 lambda!98950))))

(assert (=> d!748312 (= (equivClasses!1821 (toChars!6420 (transformation!4643 (rule!7027 separatorToken!156))) (toValue!6561 (transformation!4643 (rule!7027 separatorToken!156)))) (Forall2!781 lambda!98950))))

(declare-fun bs!476215 () Bool)

(assert (= bs!476215 d!748312))

(declare-fun m!2981549 () Bool)

(assert (=> bs!476215 m!2981549))

(assert (=> b!2635249 d!748312))

(declare-fun d!748314 () Bool)

(declare-fun lt!928615 () Int)

(assert (=> d!748314 (>= lt!928615 0)))

(declare-fun e!1663607 () Int)

(assert (=> d!748314 (= lt!928615 e!1663607)))

(declare-fun c!424044 () Bool)

(assert (=> d!748314 (= c!424044 ((_ is Nil!30522) lt!927854))))

(assert (=> d!748314 (= (size!23608 lt!927854) lt!928615)))

(declare-fun b!2636555 () Bool)

(assert (=> b!2636555 (= e!1663607 0)))

(declare-fun b!2636556 () Bool)

(assert (=> b!2636556 (= e!1663607 (+ 1 (size!23608 (t!216743 lt!927854))))))

(assert (= (and d!748314 c!424044) b!2636555))

(assert (= (and d!748314 (not c!424044)) b!2636556))

(declare-fun m!2981551 () Bool)

(assert (=> b!2636556 m!2981551))

(assert (=> b!2635365 d!748314))

(declare-fun d!748316 () Bool)

(declare-fun e!1663610 () Bool)

(assert (=> d!748316 e!1663610))

(declare-fun res!1110165 () Bool)

(assert (=> d!748316 (=> (not res!1110165) (not e!1663610))))

(declare-fun lt!928618 () BalanceConc!18670)

(assert (=> d!748316 (= res!1110165 (= (list!11490 lt!928618) lt!927575))))

(declare-fun fromList!564 (List!30620) Conc!9528)

(assert (=> d!748316 (= lt!928618 (BalanceConc!18671 (fromList!564 lt!927575)))))

(assert (=> d!748316 (= (fromListB!1437 lt!927575) lt!928618)))

(declare-fun b!2636559 () Bool)

(assert (=> b!2636559 (= e!1663610 (isBalanced!2887 (fromList!564 lt!927575)))))

(assert (= (and d!748316 res!1110165) b!2636559))

(declare-fun m!2981553 () Bool)

(assert (=> d!748316 m!2981553))

(declare-fun m!2981555 () Bool)

(assert (=> d!748316 m!2981555))

(assert (=> b!2636559 m!2981555))

(assert (=> b!2636559 m!2981555))

(declare-fun m!2981557 () Bool)

(assert (=> b!2636559 m!2981557))

(assert (=> d!747710 d!748316))

(declare-fun d!748318 () Bool)

(declare-fun lt!928619 () Int)

(assert (=> d!748318 (= lt!928619 (size!23608 (list!11491 (_1!17556 lt!927812))))))

(assert (=> d!748318 (= lt!928619 (size!23609 (c!423641 (_1!17556 lt!927812))))))

(assert (=> d!748318 (= (size!23601 (_1!17556 lt!927812)) lt!928619)))

(declare-fun bs!476216 () Bool)

(assert (= bs!476216 d!748318))

(assert (=> bs!476216 m!2979709))

(assert (=> bs!476216 m!2979709))

(declare-fun m!2981559 () Bool)

(assert (=> bs!476216 m!2981559))

(declare-fun m!2981561 () Bool)

(assert (=> bs!476216 m!2981561))

(assert (=> d!747718 d!748318))

(assert (=> d!747718 d!748234))

(assert (=> d!747718 d!748232))

(declare-fun d!748320 () Bool)

(assert (=> d!748320 (= (list!11491 (singletonSeq!2060 separatorToken!156)) (list!11495 (c!423641 (singletonSeq!2060 separatorToken!156))))))

(declare-fun bs!476217 () Bool)

(assert (= bs!476217 d!748320))

(declare-fun m!2981563 () Bool)

(assert (=> bs!476217 m!2981563))

(assert (=> d!747718 d!748320))

(assert (=> d!747718 d!747716))

(assert (=> d!747718 d!748230))

(declare-fun d!748322 () Bool)

(assert (=> d!748322 (= (list!11491 (_1!17556 (lex!1903 thiss!14197 rules!1726 (print!1641 thiss!14197 (singletonSeq!2060 separatorToken!156))))) (list!11495 (c!423641 (_1!17556 (lex!1903 thiss!14197 rules!1726 (print!1641 thiss!14197 (singletonSeq!2060 separatorToken!156)))))))))

(declare-fun bs!476218 () Bool)

(assert (= bs!476218 d!748322))

(declare-fun m!2981565 () Bool)

(assert (=> bs!476218 m!2981565))

(assert (=> d!747718 d!748322))

(assert (=> bm!169534 d!747982))

(declare-fun d!748324 () Bool)

(assert (=> d!748324 (= (list!11490 lt!927578) (list!11494 (c!423640 lt!927578)))))

(declare-fun bs!476219 () Bool)

(assert (= bs!476219 d!748324))

(declare-fun m!2981567 () Bool)

(assert (=> bs!476219 m!2981567))

(assert (=> d!747614 d!748324))

(declare-fun d!748326 () Bool)

(declare-fun c!424050 () Bool)

(assert (=> d!748326 (= c!424050 ((_ is Cons!30522) (list!11491 lt!927564)))))

(declare-fun e!1663618 () List!30620)

(assert (=> d!748326 (= (printList!1168 thiss!14197 (list!11491 lt!927564)) e!1663618)))

(declare-fun b!2636571 () Bool)

(assert (=> b!2636571 (= e!1663618 (++!7441 (list!11490 (charsOf!2930 (h!35942 (list!11491 lt!927564)))) (printList!1168 thiss!14197 (t!216743 (list!11491 lt!927564)))))))

(declare-fun b!2636572 () Bool)

(assert (=> b!2636572 (= e!1663618 Nil!30520)))

(assert (= (and d!748326 c!424050) b!2636571))

(assert (= (and d!748326 (not c!424050)) b!2636572))

(declare-fun m!2981569 () Bool)

(assert (=> b!2636571 m!2981569))

(assert (=> b!2636571 m!2981569))

(declare-fun m!2981571 () Bool)

(assert (=> b!2636571 m!2981571))

(declare-fun m!2981573 () Bool)

(assert (=> b!2636571 m!2981573))

(assert (=> b!2636571 m!2981571))

(assert (=> b!2636571 m!2981573))

(declare-fun m!2981575 () Bool)

(assert (=> b!2636571 m!2981575))

(assert (=> d!747614 d!748326))

(assert (=> d!747614 d!748020))

(assert (=> d!747614 d!747622))

(declare-fun d!748328 () Bool)

(assert (=> d!748328 (= (isEmpty!17418 (list!11491 (_1!17556 (lex!1903 thiss!14197 rules!1726 (seqFromList!3183 lt!927575))))) ((_ is Nil!30522) (list!11491 (_1!17556 (lex!1903 thiss!14197 rules!1726 (seqFromList!3183 lt!927575))))))))

(assert (=> d!747700 d!748328))

(declare-fun d!748330 () Bool)

(assert (=> d!748330 (= (list!11491 (_1!17556 (lex!1903 thiss!14197 rules!1726 (seqFromList!3183 lt!927575)))) (list!11495 (c!423641 (_1!17556 (lex!1903 thiss!14197 rules!1726 (seqFromList!3183 lt!927575))))))))

(declare-fun bs!476226 () Bool)

(assert (= bs!476226 d!748330))

(declare-fun m!2981577 () Bool)

(assert (=> bs!476226 m!2981577))

(assert (=> d!747700 d!748330))

(declare-fun d!748332 () Bool)

(declare-fun lt!928629 () Bool)

(assert (=> d!748332 (= lt!928629 (isEmpty!17418 (list!11495 (c!423641 (_1!17556 (lex!1903 thiss!14197 rules!1726 (seqFromList!3183 lt!927575)))))))))

(assert (=> d!748332 (= lt!928629 (= (size!23609 (c!423641 (_1!17556 (lex!1903 thiss!14197 rules!1726 (seqFromList!3183 lt!927575))))) 0))))

(assert (=> d!748332 (= (isEmpty!17419 (c!423641 (_1!17556 (lex!1903 thiss!14197 rules!1726 (seqFromList!3183 lt!927575))))) lt!928629)))

(declare-fun bs!476227 () Bool)

(assert (= bs!476227 d!748332))

(assert (=> bs!476227 m!2981577))

(assert (=> bs!476227 m!2981577))

(declare-fun m!2981609 () Bool)

(assert (=> bs!476227 m!2981609))

(declare-fun m!2981611 () Bool)

(assert (=> bs!476227 m!2981611))

(assert (=> d!747700 d!748332))

(declare-fun d!748336 () Bool)

(declare-fun charsToBigInt!0 (List!30619 Int) Int)

(assert (=> d!748336 (= (inv!15 (value!149930 separatorToken!156)) (= (charsToBigInt!0 (text!34504 (value!149930 separatorToken!156)) 0) (value!149926 (value!149930 separatorToken!156))))))

(declare-fun bs!476232 () Bool)

(assert (= bs!476232 d!748336))

(declare-fun m!2981625 () Bool)

(assert (=> bs!476232 m!2981625))

(assert (=> b!2635218 d!748336))

(declare-fun b!2636584 () Bool)

(declare-fun e!1663624 () Bool)

(declare-fun tp!835051 () Bool)

(assert (=> b!2636584 (= e!1663624 tp!835051)))

(declare-fun b!2636583 () Bool)

(declare-fun tp!835050 () Bool)

(declare-fun tp!835053 () Bool)

(assert (=> b!2636583 (= e!1663624 (and tp!835050 tp!835053))))

(declare-fun b!2636582 () Bool)

(assert (=> b!2636582 (= e!1663624 tp_is_empty!13769)))

(assert (=> b!2635431 (= tp!835039 e!1663624)))

(declare-fun b!2636585 () Bool)

(declare-fun tp!835052 () Bool)

(declare-fun tp!835049 () Bool)

(assert (=> b!2636585 (= e!1663624 (and tp!835052 tp!835049))))

(assert (= (and b!2635431 ((_ is ElementMatch!7787) (regOne!16086 (regex!4643 (h!35941 rules!1726))))) b!2636582))

(assert (= (and b!2635431 ((_ is Concat!12652) (regOne!16086 (regex!4643 (h!35941 rules!1726))))) b!2636583))

(assert (= (and b!2635431 ((_ is Star!7787) (regOne!16086 (regex!4643 (h!35941 rules!1726))))) b!2636584))

(assert (= (and b!2635431 ((_ is Union!7787) (regOne!16086 (regex!4643 (h!35941 rules!1726))))) b!2636585))

(declare-fun b!2636588 () Bool)

(declare-fun e!1663625 () Bool)

(declare-fun tp!835056 () Bool)

(assert (=> b!2636588 (= e!1663625 tp!835056)))

(declare-fun b!2636587 () Bool)

(declare-fun tp!835055 () Bool)

(declare-fun tp!835058 () Bool)

(assert (=> b!2636587 (= e!1663625 (and tp!835055 tp!835058))))

(declare-fun b!2636586 () Bool)

(assert (=> b!2636586 (= e!1663625 tp_is_empty!13769)))

(assert (=> b!2635431 (= tp!835042 e!1663625)))

(declare-fun b!2636589 () Bool)

(declare-fun tp!835057 () Bool)

(declare-fun tp!835054 () Bool)

(assert (=> b!2636589 (= e!1663625 (and tp!835057 tp!835054))))

(assert (= (and b!2635431 ((_ is ElementMatch!7787) (regTwo!16086 (regex!4643 (h!35941 rules!1726))))) b!2636586))

(assert (= (and b!2635431 ((_ is Concat!12652) (regTwo!16086 (regex!4643 (h!35941 rules!1726))))) b!2636587))

(assert (= (and b!2635431 ((_ is Star!7787) (regTwo!16086 (regex!4643 (h!35941 rules!1726))))) b!2636588))

(assert (= (and b!2635431 ((_ is Union!7787) (regTwo!16086 (regex!4643 (h!35941 rules!1726))))) b!2636589))

(declare-fun b!2636596 () Bool)

(declare-fun e!1663627 () Bool)

(declare-fun tp!835061 () Bool)

(assert (=> b!2636596 (= e!1663627 tp!835061)))

(declare-fun b!2636595 () Bool)

(declare-fun tp!835060 () Bool)

(declare-fun tp!835063 () Bool)

(assert (=> b!2636595 (= e!1663627 (and tp!835060 tp!835063))))

(declare-fun b!2636594 () Bool)

(assert (=> b!2636594 (= e!1663627 tp_is_empty!13769)))

(assert (=> b!2635400 (= tp!835010 e!1663627)))

(declare-fun b!2636597 () Bool)

(declare-fun tp!835062 () Bool)

(declare-fun tp!835059 () Bool)

(assert (=> b!2636597 (= e!1663627 (and tp!835062 tp!835059))))

(assert (= (and b!2635400 ((_ is ElementMatch!7787) (regOne!16086 (regex!4643 (rule!7027 separatorToken!156))))) b!2636594))

(assert (= (and b!2635400 ((_ is Concat!12652) (regOne!16086 (regex!4643 (rule!7027 separatorToken!156))))) b!2636595))

(assert (= (and b!2635400 ((_ is Star!7787) (regOne!16086 (regex!4643 (rule!7027 separatorToken!156))))) b!2636596))

(assert (= (and b!2635400 ((_ is Union!7787) (regOne!16086 (regex!4643 (rule!7027 separatorToken!156))))) b!2636597))

(declare-fun b!2636600 () Bool)

(declare-fun e!1663628 () Bool)

(declare-fun tp!835066 () Bool)

(assert (=> b!2636600 (= e!1663628 tp!835066)))

(declare-fun b!2636599 () Bool)

(declare-fun tp!835065 () Bool)

(declare-fun tp!835068 () Bool)

(assert (=> b!2636599 (= e!1663628 (and tp!835065 tp!835068))))

(declare-fun b!2636598 () Bool)

(assert (=> b!2636598 (= e!1663628 tp_is_empty!13769)))

(assert (=> b!2635400 (= tp!835013 e!1663628)))

(declare-fun b!2636601 () Bool)

(declare-fun tp!835067 () Bool)

(declare-fun tp!835064 () Bool)

(assert (=> b!2636601 (= e!1663628 (and tp!835067 tp!835064))))

(assert (= (and b!2635400 ((_ is ElementMatch!7787) (regTwo!16086 (regex!4643 (rule!7027 separatorToken!156))))) b!2636598))

(assert (= (and b!2635400 ((_ is Concat!12652) (regTwo!16086 (regex!4643 (rule!7027 separatorToken!156))))) b!2636599))

(assert (= (and b!2635400 ((_ is Star!7787) (regTwo!16086 (regex!4643 (rule!7027 separatorToken!156))))) b!2636600))

(assert (= (and b!2635400 ((_ is Union!7787) (regTwo!16086 (regex!4643 (rule!7027 separatorToken!156))))) b!2636601))

(declare-fun b!2636604 () Bool)

(declare-fun e!1663629 () Bool)

(declare-fun tp!835071 () Bool)

(assert (=> b!2636604 (= e!1663629 tp!835071)))

(declare-fun b!2636603 () Bool)

(declare-fun tp!835070 () Bool)

(declare-fun tp!835073 () Bool)

(assert (=> b!2636603 (= e!1663629 (and tp!835070 tp!835073))))

(declare-fun b!2636602 () Bool)

(assert (=> b!2636602 (= e!1663629 tp_is_empty!13769)))

(assert (=> b!2635401 (= tp!835011 e!1663629)))

(declare-fun b!2636605 () Bool)

(declare-fun tp!835072 () Bool)

(declare-fun tp!835069 () Bool)

(assert (=> b!2636605 (= e!1663629 (and tp!835072 tp!835069))))

(assert (= (and b!2635401 ((_ is ElementMatch!7787) (reg!8116 (regex!4643 (rule!7027 separatorToken!156))))) b!2636602))

(assert (= (and b!2635401 ((_ is Concat!12652) (reg!8116 (regex!4643 (rule!7027 separatorToken!156))))) b!2636603))

(assert (= (and b!2635401 ((_ is Star!7787) (reg!8116 (regex!4643 (rule!7027 separatorToken!156))))) b!2636604))

(assert (= (and b!2635401 ((_ is Union!7787) (reg!8116 (regex!4643 (rule!7027 separatorToken!156))))) b!2636605))

(declare-fun b!2636608 () Bool)

(declare-fun e!1663630 () Bool)

(declare-fun tp!835076 () Bool)

(assert (=> b!2636608 (= e!1663630 tp!835076)))

(declare-fun b!2636607 () Bool)

(declare-fun tp!835075 () Bool)

(declare-fun tp!835078 () Bool)

(assert (=> b!2636607 (= e!1663630 (and tp!835075 tp!835078))))

(declare-fun b!2636606 () Bool)

(assert (=> b!2636606 (= e!1663630 tp_is_empty!13769)))

(assert (=> b!2635432 (= tp!835040 e!1663630)))

(declare-fun b!2636609 () Bool)

(declare-fun tp!835077 () Bool)

(declare-fun tp!835074 () Bool)

(assert (=> b!2636609 (= e!1663630 (and tp!835077 tp!835074))))

(assert (= (and b!2635432 ((_ is ElementMatch!7787) (reg!8116 (regex!4643 (h!35941 rules!1726))))) b!2636606))

(assert (= (and b!2635432 ((_ is Concat!12652) (reg!8116 (regex!4643 (h!35941 rules!1726))))) b!2636607))

(assert (= (and b!2635432 ((_ is Star!7787) (reg!8116 (regex!4643 (h!35941 rules!1726))))) b!2636608))

(assert (= (and b!2635432 ((_ is Union!7787) (reg!8116 (regex!4643 (h!35941 rules!1726))))) b!2636609))

(declare-fun b!2636612 () Bool)

(declare-fun e!1663631 () Bool)

(declare-fun tp!835081 () Bool)

(assert (=> b!2636612 (= e!1663631 tp!835081)))

(declare-fun b!2636611 () Bool)

(declare-fun tp!835080 () Bool)

(declare-fun tp!835083 () Bool)

(assert (=> b!2636611 (= e!1663631 (and tp!835080 tp!835083))))

(declare-fun b!2636610 () Bool)

(assert (=> b!2636610 (= e!1663631 tp_is_empty!13769)))

(assert (=> b!2635433 (= tp!835041 e!1663631)))

(declare-fun b!2636613 () Bool)

(declare-fun tp!835082 () Bool)

(declare-fun tp!835079 () Bool)

(assert (=> b!2636613 (= e!1663631 (and tp!835082 tp!835079))))

(assert (= (and b!2635433 ((_ is ElementMatch!7787) (regOne!16087 (regex!4643 (h!35941 rules!1726))))) b!2636610))

(assert (= (and b!2635433 ((_ is Concat!12652) (regOne!16087 (regex!4643 (h!35941 rules!1726))))) b!2636611))

(assert (= (and b!2635433 ((_ is Star!7787) (regOne!16087 (regex!4643 (h!35941 rules!1726))))) b!2636612))

(assert (= (and b!2635433 ((_ is Union!7787) (regOne!16087 (regex!4643 (h!35941 rules!1726))))) b!2636613))

(declare-fun b!2636616 () Bool)

(declare-fun e!1663632 () Bool)

(declare-fun tp!835086 () Bool)

(assert (=> b!2636616 (= e!1663632 tp!835086)))

(declare-fun b!2636615 () Bool)

(declare-fun tp!835085 () Bool)

(declare-fun tp!835088 () Bool)

(assert (=> b!2636615 (= e!1663632 (and tp!835085 tp!835088))))

(declare-fun b!2636614 () Bool)

(assert (=> b!2636614 (= e!1663632 tp_is_empty!13769)))

(assert (=> b!2635433 (= tp!835038 e!1663632)))

(declare-fun b!2636617 () Bool)

(declare-fun tp!835087 () Bool)

(declare-fun tp!835084 () Bool)

(assert (=> b!2636617 (= e!1663632 (and tp!835087 tp!835084))))

(assert (= (and b!2635433 ((_ is ElementMatch!7787) (regTwo!16087 (regex!4643 (h!35941 rules!1726))))) b!2636614))

(assert (= (and b!2635433 ((_ is Concat!12652) (regTwo!16087 (regex!4643 (h!35941 rules!1726))))) b!2636615))

(assert (= (and b!2635433 ((_ is Star!7787) (regTwo!16087 (regex!4643 (h!35941 rules!1726))))) b!2636616))

(assert (= (and b!2635433 ((_ is Union!7787) (regTwo!16087 (regex!4643 (h!35941 rules!1726))))) b!2636617))

(declare-fun b!2636620 () Bool)

(declare-fun e!1663633 () Bool)

(declare-fun tp!835091 () Bool)

(assert (=> b!2636620 (= e!1663633 tp!835091)))

(declare-fun b!2636619 () Bool)

(declare-fun tp!835090 () Bool)

(declare-fun tp!835093 () Bool)

(assert (=> b!2636619 (= e!1663633 (and tp!835090 tp!835093))))

(declare-fun b!2636618 () Bool)

(assert (=> b!2636618 (= e!1663633 tp_is_empty!13769)))

(assert (=> b!2635402 (= tp!835012 e!1663633)))

(declare-fun b!2636621 () Bool)

(declare-fun tp!835092 () Bool)

(declare-fun tp!835089 () Bool)

(assert (=> b!2636621 (= e!1663633 (and tp!835092 tp!835089))))

(assert (= (and b!2635402 ((_ is ElementMatch!7787) (regOne!16087 (regex!4643 (rule!7027 separatorToken!156))))) b!2636618))

(assert (= (and b!2635402 ((_ is Concat!12652) (regOne!16087 (regex!4643 (rule!7027 separatorToken!156))))) b!2636619))

(assert (= (and b!2635402 ((_ is Star!7787) (regOne!16087 (regex!4643 (rule!7027 separatorToken!156))))) b!2636620))

(assert (= (and b!2635402 ((_ is Union!7787) (regOne!16087 (regex!4643 (rule!7027 separatorToken!156))))) b!2636621))

(declare-fun b!2636624 () Bool)

(declare-fun e!1663634 () Bool)

(declare-fun tp!835096 () Bool)

(assert (=> b!2636624 (= e!1663634 tp!835096)))

(declare-fun b!2636623 () Bool)

(declare-fun tp!835095 () Bool)

(declare-fun tp!835098 () Bool)

(assert (=> b!2636623 (= e!1663634 (and tp!835095 tp!835098))))

(declare-fun b!2636622 () Bool)

(assert (=> b!2636622 (= e!1663634 tp_is_empty!13769)))

(assert (=> b!2635402 (= tp!835009 e!1663634)))

(declare-fun b!2636625 () Bool)

(declare-fun tp!835097 () Bool)

(declare-fun tp!835094 () Bool)

(assert (=> b!2636625 (= e!1663634 (and tp!835097 tp!835094))))

(assert (= (and b!2635402 ((_ is ElementMatch!7787) (regTwo!16087 (regex!4643 (rule!7027 separatorToken!156))))) b!2636622))

(assert (= (and b!2635402 ((_ is Concat!12652) (regTwo!16087 (regex!4643 (rule!7027 separatorToken!156))))) b!2636623))

(assert (= (and b!2635402 ((_ is Star!7787) (regTwo!16087 (regex!4643 (rule!7027 separatorToken!156))))) b!2636624))

(assert (= (and b!2635402 ((_ is Union!7787) (regTwo!16087 (regex!4643 (rule!7027 separatorToken!156))))) b!2636625))

(declare-fun b!2636628 () Bool)

(declare-fun e!1663637 () Bool)

(assert (=> b!2636628 (= e!1663637 true)))

(declare-fun b!2636627 () Bool)

(declare-fun e!1663636 () Bool)

(assert (=> b!2636627 (= e!1663636 e!1663637)))

(declare-fun b!2636626 () Bool)

(declare-fun e!1663635 () Bool)

(assert (=> b!2636626 (= e!1663635 e!1663636)))

(assert (=> b!2635386 e!1663635))

(assert (= b!2636627 b!2636628))

(assert (= b!2636626 b!2636627))

(assert (= (and b!2635386 ((_ is Cons!30521) (t!216742 rules!1726))) b!2636626))

(assert (=> b!2636628 (< (dynLambda!13088 order!16567 (toValue!6561 (transformation!4643 (h!35941 (t!216742 rules!1726))))) (dynLambda!13089 order!16569 lambda!98904))))

(assert (=> b!2636628 (< (dynLambda!13090 order!16571 (toChars!6420 (transformation!4643 (h!35941 (t!216742 rules!1726))))) (dynLambda!13089 order!16569 lambda!98904))))

(declare-fun b!2636631 () Bool)

(declare-fun e!1663640 () Bool)

(assert (=> b!2636631 (= e!1663640 true)))

(declare-fun b!2636630 () Bool)

(declare-fun e!1663639 () Bool)

(assert (=> b!2636630 (= e!1663639 e!1663640)))

(declare-fun b!2636629 () Bool)

(declare-fun e!1663638 () Bool)

(assert (=> b!2636629 (= e!1663638 e!1663639)))

(assert (=> b!2635434 e!1663638))

(assert (= b!2636630 b!2636631))

(assert (= b!2636629 b!2636630))

(assert (= (and b!2635434 ((_ is Cons!30521) (t!216742 (t!216742 rules!1726)))) b!2636629))

(assert (=> b!2636631 (< (dynLambda!13088 order!16567 (toValue!6561 (transformation!4643 (h!35941 (t!216742 (t!216742 rules!1726)))))) (dynLambda!13089 order!16569 lambda!98882))))

(assert (=> b!2636631 (< (dynLambda!13090 order!16571 (toChars!6420 (transformation!4643 (h!35941 (t!216742 (t!216742 rules!1726)))))) (dynLambda!13089 order!16569 lambda!98882))))

(declare-fun tp!835101 () Bool)

(declare-fun tp!835099 () Bool)

(declare-fun e!1663644 () Bool)

(declare-fun b!2636635 () Bool)

(assert (=> b!2636635 (= e!1663644 (and (inv!41403 (left!23582 (left!23582 (c!423641 v!6381)))) tp!835099 (inv!41403 (right!23912 (left!23582 (c!423641 v!6381)))) tp!835101))))

(declare-fun b!2636637 () Bool)

(declare-fun e!1663643 () Bool)

(declare-fun tp!835100 () Bool)

(assert (=> b!2636637 (= e!1663643 tp!835100)))

(declare-fun b!2636636 () Bool)

(assert (=> b!2636636 (= e!1663644 (and (inv!41416 (xs!12533 (left!23582 (c!423641 v!6381)))) e!1663643))))

(assert (=> b!2635411 (= tp!835020 (and (inv!41403 (left!23582 (c!423641 v!6381))) e!1663644))))

(assert (= (and b!2635411 ((_ is Node!9529) (left!23582 (c!423641 v!6381)))) b!2636635))

(assert (= b!2636636 b!2636637))

(assert (= (and b!2635411 ((_ is Leaf!14591) (left!23582 (c!423641 v!6381)))) b!2636636))

(declare-fun m!2981657 () Bool)

(assert (=> b!2636635 m!2981657))

(declare-fun m!2981659 () Bool)

(assert (=> b!2636635 m!2981659))

(declare-fun m!2981661 () Bool)

(assert (=> b!2636636 m!2981661))

(assert (=> b!2635411 m!2979635))

(declare-fun tp!835102 () Bool)

(declare-fun e!1663646 () Bool)

(declare-fun b!2636638 () Bool)

(declare-fun tp!835104 () Bool)

(assert (=> b!2636638 (= e!1663646 (and (inv!41403 (left!23582 (right!23912 (c!423641 v!6381)))) tp!835102 (inv!41403 (right!23912 (right!23912 (c!423641 v!6381)))) tp!835104))))

(declare-fun b!2636640 () Bool)

(declare-fun e!1663645 () Bool)

(declare-fun tp!835103 () Bool)

(assert (=> b!2636640 (= e!1663645 tp!835103)))

(declare-fun b!2636639 () Bool)

(assert (=> b!2636639 (= e!1663646 (and (inv!41416 (xs!12533 (right!23912 (c!423641 v!6381)))) e!1663645))))

(assert (=> b!2635411 (= tp!835022 (and (inv!41403 (right!23912 (c!423641 v!6381))) e!1663646))))

(assert (= (and b!2635411 ((_ is Node!9529) (right!23912 (c!423641 v!6381)))) b!2636638))

(assert (= b!2636639 b!2636640))

(assert (= (and b!2635411 ((_ is Leaf!14591) (right!23912 (c!423641 v!6381)))) b!2636639))

(declare-fun m!2981663 () Bool)

(assert (=> b!2636638 m!2981663))

(declare-fun m!2981665 () Bool)

(assert (=> b!2636638 m!2981665))

(declare-fun m!2981667 () Bool)

(assert (=> b!2636639 m!2981667))

(assert (=> b!2635411 m!2979637))

(declare-fun e!1663654 () Bool)

(declare-fun tp!835111 () Bool)

(declare-fun tp!835113 () Bool)

(declare-fun b!2636652 () Bool)

(assert (=> b!2636652 (= e!1663654 (and (inv!41409 (left!23581 (c!423640 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 separatorToken!156))) (value!149930 separatorToken!156))))) tp!835111 (inv!41409 (right!23911 (c!423640 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 separatorToken!156))) (value!149930 separatorToken!156))))) tp!835113))))

(declare-fun b!2636654 () Bool)

(declare-fun e!1663653 () Bool)

(declare-fun tp!835112 () Bool)

(assert (=> b!2636654 (= e!1663653 tp!835112)))

(declare-fun b!2636653 () Bool)

(declare-fun inv!41421 (IArray!19061) Bool)

(assert (=> b!2636653 (= e!1663654 (and (inv!41421 (xs!12532 (c!423640 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 separatorToken!156))) (value!149930 separatorToken!156))))) e!1663653))))

(assert (=> b!2635225 (= tp!834954 (and (inv!41409 (c!423640 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 separatorToken!156))) (value!149930 separatorToken!156)))) e!1663654))))

(assert (= (and b!2635225 ((_ is Node!9528) (c!423640 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 separatorToken!156))) (value!149930 separatorToken!156))))) b!2636652))

(assert (= b!2636653 b!2636654))

(assert (= (and b!2635225 ((_ is Leaf!14590) (c!423640 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 separatorToken!156))) (value!149930 separatorToken!156))))) b!2636653))

(declare-fun m!2981711 () Bool)

(assert (=> b!2636652 m!2981711))

(declare-fun m!2981713 () Bool)

(assert (=> b!2636652 m!2981713))

(declare-fun m!2981715 () Bool)

(assert (=> b!2636653 m!2981715))

(assert (=> b!2635225 m!2979435))

(declare-fun b!2636689 () Bool)

(declare-fun b_free!74309 () Bool)

(declare-fun b_next!75013 () Bool)

(assert (=> b!2636689 (= b_free!74309 (not b_next!75013))))

(declare-fun tp!835127 () Bool)

(declare-fun b_and!193049 () Bool)

(assert (=> b!2636689 (= tp!835127 b_and!193049)))

(declare-fun b_free!74311 () Bool)

(declare-fun b_next!75015 () Bool)

(assert (=> b!2636689 (= b_free!74311 (not b_next!75015))))

(declare-fun t!216861 () Bool)

(declare-fun tb!143837 () Bool)

(assert (=> (and b!2636689 (= (toChars!6420 (transformation!4643 (rule!7027 (h!35942 (innerList!9589 (xs!12533 (c!423641 v!6381))))))) (toChars!6420 (transformation!4643 (rule!7027 (ite c!423687 separatorToken!156 call!169541))))) t!216861) tb!143837))

(declare-fun result!178784 () Bool)

(assert (= result!178784 result!178750))

(assert (=> d!748028 t!216861))

(declare-fun t!216863 () Bool)

(declare-fun tb!143839 () Bool)

(assert (=> (and b!2636689 (= (toChars!6420 (transformation!4643 (rule!7027 (h!35942 (innerList!9589 (xs!12533 (c!423641 v!6381))))))) (toChars!6420 (transformation!4643 (rule!7027 (ite c!423685 call!169543 call!169541))))) t!216863) tb!143839))

(declare-fun result!178786 () Bool)

(assert (= result!178786 result!178762))

(assert (=> d!748126 t!216863))

(declare-fun t!216865 () Bool)

(declare-fun tb!143841 () Bool)

(assert (=> (and b!2636689 (= (toChars!6420 (transformation!4643 (rule!7027 (h!35942 (innerList!9589 (xs!12533 (c!423641 v!6381))))))) (toChars!6420 (transformation!4643 (rule!7027 lt!927569)))) t!216865) tb!143841))

(declare-fun result!178788 () Bool)

(assert (= result!178788 result!178700))

(assert (=> d!747690 t!216865))

(declare-fun t!216867 () Bool)

(declare-fun tb!143843 () Bool)

(assert (=> (and b!2636689 (= (toChars!6420 (transformation!4643 (rule!7027 (h!35942 (innerList!9589 (xs!12533 (c!423641 v!6381))))))) (toChars!6420 (transformation!4643 (rule!7027 (apply!7281 v!6381 (+ 1 from!862)))))) t!216867) tb!143843))

(declare-fun result!178790 () Bool)

(assert (= result!178790 result!178738))

(assert (=> d!747994 t!216867))

(declare-fun t!216869 () Bool)

(declare-fun tb!143845 () Bool)

(assert (=> (and b!2636689 (= (toChars!6420 (transformation!4643 (rule!7027 (h!35942 (innerList!9589 (xs!12533 (c!423641 v!6381))))))) (toChars!6420 (transformation!4643 (rule!7027 (apply!7281 lt!927564 0))))) t!216869) tb!143845))

(declare-fun result!178792 () Bool)

(assert (= result!178792 result!178744))

(assert (=> d!748022 t!216869))

(declare-fun tb!143847 () Bool)

(declare-fun t!216871 () Bool)

(assert (=> (and b!2636689 (= (toChars!6420 (transformation!4643 (rule!7027 (h!35942 (innerList!9589 (xs!12533 (c!423641 v!6381))))))) (toChars!6420 (transformation!4643 (rule!7027 separatorToken!156)))) t!216871) tb!143847))

(declare-fun result!178794 () Bool)

(assert (= result!178794 result!178710))

(assert (=> b!2635223 t!216871))

(declare-fun t!216873 () Bool)

(declare-fun tb!143849 () Bool)

(assert (=> (and b!2636689 (= (toChars!6420 (transformation!4643 (rule!7027 (h!35942 (innerList!9589 (xs!12533 (c!423641 v!6381))))))) (toChars!6420 (transformation!4643 (rule!7027 (h!35942 (Cons!30522 lt!927569 Nil!30522)))))) t!216873) tb!143849))

(declare-fun result!178796 () Bool)

(assert (= result!178796 result!178768))

(assert (=> d!748252 t!216873))

(declare-fun b_and!193051 () Bool)

(declare-fun tp!835129 () Bool)

(assert (=> b!2636689 (= tp!835129 (and (=> t!216867 result!178790) (=> t!216861 result!178784) (=> t!216865 result!178788) (=> t!216871 result!178794) (=> t!216873 result!178796) (=> t!216869 result!178792) (=> t!216863 result!178786) b_and!193051))))

(declare-fun e!1663682 () Bool)

(assert (=> b!2635413 (= tp!835021 e!1663682)))

(declare-fun e!1663685 () Bool)

(declare-fun b!2636688 () Bool)

(declare-fun tp!835128 () Bool)

(declare-fun e!1663680 () Bool)

(assert (=> b!2636688 (= e!1663680 (and tp!835128 (inv!41398 (tag!5137 (rule!7027 (h!35942 (innerList!9589 (xs!12533 (c!423641 v!6381))))))) (inv!41404 (transformation!4643 (rule!7027 (h!35942 (innerList!9589 (xs!12533 (c!423641 v!6381))))))) e!1663685))))

(declare-fun tp!835126 () Bool)

(declare-fun e!1663683 () Bool)

(declare-fun b!2636686 () Bool)

(assert (=> b!2636686 (= e!1663682 (and (inv!41405 (h!35942 (innerList!9589 (xs!12533 (c!423641 v!6381))))) e!1663683 tp!835126))))

(assert (=> b!2636689 (= e!1663685 (and tp!835127 tp!835129))))

(declare-fun b!2636687 () Bool)

(declare-fun tp!835125 () Bool)

(assert (=> b!2636687 (= e!1663683 (and (inv!21 (value!149930 (h!35942 (innerList!9589 (xs!12533 (c!423641 v!6381)))))) e!1663680 tp!835125))))

(assert (= b!2636688 b!2636689))

(assert (= b!2636687 b!2636688))

(assert (= b!2636686 b!2636687))

(assert (= (and b!2635413 ((_ is Cons!30522) (innerList!9589 (xs!12533 (c!423641 v!6381))))) b!2636686))

(declare-fun m!2981757 () Bool)

(assert (=> b!2636688 m!2981757))

(declare-fun m!2981759 () Bool)

(assert (=> b!2636688 m!2981759))

(declare-fun m!2981761 () Bool)

(assert (=> b!2636686 m!2981761))

(declare-fun m!2981763 () Bool)

(assert (=> b!2636687 m!2981763))

(declare-fun b!2636695 () Bool)

(declare-fun b_free!74313 () Bool)

(declare-fun b_next!75017 () Bool)

(assert (=> b!2636695 (= b_free!74313 (not b_next!75017))))

(declare-fun tp!835132 () Bool)

(declare-fun b_and!193053 () Bool)

(assert (=> b!2636695 (= tp!835132 b_and!193053)))

(declare-fun b_free!74315 () Bool)

(declare-fun b_next!75019 () Bool)

(assert (=> b!2636695 (= b_free!74315 (not b_next!75019))))

(declare-fun tb!143851 () Bool)

(declare-fun t!216875 () Bool)

(assert (=> (and b!2636695 (= (toChars!6420 (transformation!4643 (h!35941 (t!216742 (t!216742 rules!1726))))) (toChars!6420 (transformation!4643 (rule!7027 (ite c!423687 separatorToken!156 call!169541))))) t!216875) tb!143851))

(declare-fun result!178798 () Bool)

(assert (= result!178798 result!178750))

(assert (=> d!748028 t!216875))

(declare-fun tb!143853 () Bool)

(declare-fun t!216877 () Bool)

(assert (=> (and b!2636695 (= (toChars!6420 (transformation!4643 (h!35941 (t!216742 (t!216742 rules!1726))))) (toChars!6420 (transformation!4643 (rule!7027 (ite c!423685 call!169543 call!169541))))) t!216877) tb!143853))

(declare-fun result!178800 () Bool)

(assert (= result!178800 result!178762))

(assert (=> d!748126 t!216877))

(declare-fun t!216879 () Bool)

(declare-fun tb!143855 () Bool)

(assert (=> (and b!2636695 (= (toChars!6420 (transformation!4643 (h!35941 (t!216742 (t!216742 rules!1726))))) (toChars!6420 (transformation!4643 (rule!7027 lt!927569)))) t!216879) tb!143855))

(declare-fun result!178802 () Bool)

(assert (= result!178802 result!178700))

(assert (=> d!747690 t!216879))

(declare-fun t!216881 () Bool)

(declare-fun tb!143857 () Bool)

(assert (=> (and b!2636695 (= (toChars!6420 (transformation!4643 (h!35941 (t!216742 (t!216742 rules!1726))))) (toChars!6420 (transformation!4643 (rule!7027 (apply!7281 v!6381 (+ 1 from!862)))))) t!216881) tb!143857))

(declare-fun result!178804 () Bool)

(assert (= result!178804 result!178738))

(assert (=> d!747994 t!216881))

(declare-fun tb!143859 () Bool)

(declare-fun t!216883 () Bool)

(assert (=> (and b!2636695 (= (toChars!6420 (transformation!4643 (h!35941 (t!216742 (t!216742 rules!1726))))) (toChars!6420 (transformation!4643 (rule!7027 (apply!7281 lt!927564 0))))) t!216883) tb!143859))

(declare-fun result!178806 () Bool)

(assert (= result!178806 result!178744))

(assert (=> d!748022 t!216883))

(declare-fun tb!143861 () Bool)

(declare-fun t!216885 () Bool)

(assert (=> (and b!2636695 (= (toChars!6420 (transformation!4643 (h!35941 (t!216742 (t!216742 rules!1726))))) (toChars!6420 (transformation!4643 (rule!7027 separatorToken!156)))) t!216885) tb!143861))

(declare-fun result!178808 () Bool)

(assert (= result!178808 result!178710))

(assert (=> b!2635223 t!216885))

(declare-fun t!216887 () Bool)

(declare-fun tb!143863 () Bool)

(assert (=> (and b!2636695 (= (toChars!6420 (transformation!4643 (h!35941 (t!216742 (t!216742 rules!1726))))) (toChars!6420 (transformation!4643 (rule!7027 (h!35942 (Cons!30522 lt!927569 Nil!30522)))))) t!216887) tb!143863))

(declare-fun result!178810 () Bool)

(assert (= result!178810 result!178768))

(assert (=> d!748252 t!216887))

(declare-fun tp!835130 () Bool)

(declare-fun b_and!193055 () Bool)

(assert (=> b!2636695 (= tp!835130 (and (=> t!216887 result!178810) (=> t!216883 result!178806) (=> t!216879 result!178802) (=> t!216885 result!178808) (=> t!216875 result!178798) (=> t!216881 result!178804) (=> t!216877 result!178800) b_and!193055))))

(declare-fun e!1663690 () Bool)

(assert (=> b!2636695 (= e!1663690 (and tp!835132 tp!835130))))

(declare-fun b!2636694 () Bool)

(declare-fun e!1663691 () Bool)

(declare-fun tp!835133 () Bool)

(assert (=> b!2636694 (= e!1663691 (and tp!835133 (inv!41398 (tag!5137 (h!35941 (t!216742 (t!216742 rules!1726))))) (inv!41404 (transformation!4643 (h!35941 (t!216742 (t!216742 rules!1726))))) e!1663690))))

(declare-fun b!2636693 () Bool)

(declare-fun e!1663689 () Bool)

(declare-fun tp!835131 () Bool)

(assert (=> b!2636693 (= e!1663689 (and e!1663691 tp!835131))))

(assert (=> b!2635422 (= tp!835032 e!1663689)))

(assert (= b!2636694 b!2636695))

(assert (= b!2636693 b!2636694))

(assert (= (and b!2635422 ((_ is Cons!30521) (t!216742 (t!216742 rules!1726)))) b!2636693))

(declare-fun m!2981777 () Bool)

(assert (=> b!2636694 m!2981777))

(declare-fun m!2981779 () Bool)

(assert (=> b!2636694 m!2981779))

(declare-fun b!2636703 () Bool)

(declare-fun e!1663696 () Bool)

(declare-fun tp!835136 () Bool)

(assert (=> b!2636703 (= e!1663696 tp!835136)))

(declare-fun b!2636702 () Bool)

(declare-fun tp!835135 () Bool)

(declare-fun tp!835138 () Bool)

(assert (=> b!2636702 (= e!1663696 (and tp!835135 tp!835138))))

(declare-fun b!2636701 () Bool)

(assert (=> b!2636701 (= e!1663696 tp_is_empty!13769)))

(assert (=> b!2635423 (= tp!835034 e!1663696)))

(declare-fun b!2636704 () Bool)

(declare-fun tp!835137 () Bool)

(declare-fun tp!835134 () Bool)

(assert (=> b!2636704 (= e!1663696 (and tp!835137 tp!835134))))

(assert (= (and b!2635423 ((_ is ElementMatch!7787) (regex!4643 (h!35941 (t!216742 rules!1726))))) b!2636701))

(assert (= (and b!2635423 ((_ is Concat!12652) (regex!4643 (h!35941 (t!216742 rules!1726))))) b!2636702))

(assert (= (and b!2635423 ((_ is Star!7787) (regex!4643 (h!35941 (t!216742 rules!1726))))) b!2636703))

(assert (= (and b!2635423 ((_ is Union!7787) (regex!4643 (h!35941 (t!216742 rules!1726))))) b!2636704))

(declare-fun b!2636705 () Bool)

(declare-fun e!1663697 () Bool)

(declare-fun tp!835139 () Bool)

(assert (=> b!2636705 (= e!1663697 (and tp_is_empty!13769 tp!835139))))

(assert (=> b!2635429 (= tp!835037 e!1663697)))

(assert (= (and b!2635429 ((_ is Cons!30520) (t!216741 (originalCharacters!5409 separatorToken!156)))) b!2636705))

(declare-fun b!2636708 () Bool)

(declare-fun e!1663700 () Bool)

(assert (=> b!2636708 (= e!1663700 true)))

(declare-fun b!2636707 () Bool)

(declare-fun e!1663699 () Bool)

(assert (=> b!2636707 (= e!1663699 e!1663700)))

(declare-fun b!2636706 () Bool)

(declare-fun e!1663698 () Bool)

(assert (=> b!2636706 (= e!1663698 e!1663699)))

(assert (=> b!2635050 e!1663698))

(assert (= b!2636707 b!2636708))

(assert (= b!2636706 b!2636707))

(assert (= (and b!2635050 ((_ is Cons!30521) (t!216742 rules!1726))) b!2636706))

(assert (=> b!2636708 (< (dynLambda!13088 order!16567 (toValue!6561 (transformation!4643 (h!35941 (t!216742 rules!1726))))) (dynLambda!13089 order!16569 lambda!98893))))

(assert (=> b!2636708 (< (dynLambda!13090 order!16571 (toChars!6420 (transformation!4643 (h!35941 (t!216742 rules!1726))))) (dynLambda!13089 order!16569 lambda!98893))))

(declare-fun tp!835140 () Bool)

(declare-fun tp!835142 () Bool)

(declare-fun b!2636709 () Bool)

(declare-fun e!1663702 () Bool)

(assert (=> b!2636709 (= e!1663702 (and (inv!41409 (left!23581 (c!423640 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 lt!927569))) (value!149930 lt!927569))))) tp!835140 (inv!41409 (right!23911 (c!423640 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 lt!927569))) (value!149930 lt!927569))))) tp!835142))))

(declare-fun b!2636711 () Bool)

(declare-fun e!1663701 () Bool)

(declare-fun tp!835141 () Bool)

(assert (=> b!2636711 (= e!1663701 tp!835141)))

(declare-fun b!2636710 () Bool)

(assert (=> b!2636710 (= e!1663702 (and (inv!41421 (xs!12532 (c!423640 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 lt!927569))) (value!149930 lt!927569))))) e!1663701))))

(assert (=> b!2635069 (= tp!834952 (and (inv!41409 (c!423640 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 lt!927569))) (value!149930 lt!927569)))) e!1663702))))

(assert (= (and b!2635069 ((_ is Node!9528) (c!423640 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 lt!927569))) (value!149930 lt!927569))))) b!2636709))

(assert (= b!2636710 b!2636711))

(assert (= (and b!2635069 ((_ is Leaf!14590) (c!423640 (dynLambda!13094 (toChars!6420 (transformation!4643 (rule!7027 lt!927569))) (value!149930 lt!927569))))) b!2636710))

(declare-fun m!2981799 () Bool)

(assert (=> b!2636709 m!2981799))

(declare-fun m!2981801 () Bool)

(assert (=> b!2636709 m!2981801))

(declare-fun m!2981805 () Bool)

(assert (=> b!2636710 m!2981805))

(assert (=> b!2635069 m!2979247))

(declare-fun b_lambda!79421 () Bool)

(assert (= b_lambda!79393 (or b!2634851 b_lambda!79421)))

(declare-fun bs!476237 () Bool)

(declare-fun d!748388 () Bool)

(assert (= bs!476237 (and d!748388 b!2634851)))

(assert (=> bs!476237 (= (dynLambda!13092 lambda!98882 (h!35942 lt!927559)) (rulesProduceIndividualToken!1952 thiss!14197 rules!1726 (h!35942 lt!927559)))))

(declare-fun m!2981807 () Bool)

(assert (=> bs!476237 m!2981807))

(assert (=> b!2635677 d!748388))

(declare-fun b_lambda!79423 () Bool)

(assert (= b_lambda!79367 (or (and b!2635424 b_free!74307 (= (toChars!6420 (transformation!4643 (h!35941 (t!216742 rules!1726)))) (toChars!6420 (transformation!4643 (rule!7027 lt!927569))))) (and b!2634862 b_free!74299 (= (toChars!6420 (transformation!4643 (rule!7027 separatorToken!156))) (toChars!6420 (transformation!4643 (rule!7027 lt!927569))))) (and b!2636695 b_free!74315 (= (toChars!6420 (transformation!4643 (h!35941 (t!216742 (t!216742 rules!1726))))) (toChars!6420 (transformation!4643 (rule!7027 lt!927569))))) (and b!2634850 b_free!74295 (= (toChars!6420 (transformation!4643 (h!35941 rules!1726))) (toChars!6420 (transformation!4643 (rule!7027 lt!927569))))) (and b!2636689 b_free!74311 (= (toChars!6420 (transformation!4643 (rule!7027 (h!35942 (innerList!9589 (xs!12533 (c!423641 v!6381))))))) (toChars!6420 (transformation!4643 (rule!7027 lt!927569))))) b_lambda!79423)))

(declare-fun b_lambda!79425 () Bool)

(assert (= b_lambda!79397 (or b!2635043 b_lambda!79425)))

(declare-fun bs!476238 () Bool)

(declare-fun d!748390 () Bool)

(assert (= bs!476238 (and d!748390 b!2635043)))

(assert (=> bs!476238 (= (dynLambda!13092 lambda!98893 (apply!7281 v!6381 (+ 1 from!862))) (rulesProduceIndividualToken!1952 thiss!14197 rules!1726 (apply!7281 v!6381 (+ 1 from!862))))))

(assert (=> bs!476238 m!2979201))

(declare-fun m!2981815 () Bool)

(assert (=> bs!476238 m!2981815))

(assert (=> d!747996 d!748390))

(declare-fun b_lambda!79427 () Bool)

(assert (= b_lambda!79411 (or d!747778 b_lambda!79427)))

(declare-fun bs!476239 () Bool)

(declare-fun d!748394 () Bool)

(assert (= bs!476239 (and d!748394 d!747778)))

(assert (=> bs!476239 (= (dynLambda!13092 lambda!98904 (h!35942 (list!11491 v!6381))) (rulesProduceIndividualToken!1952 thiss!14197 rules!1726 (h!35942 (list!11491 v!6381))))))

(assert (=> bs!476239 m!2980427))

(assert (=> b!2636166 d!748394))

(declare-fun b_lambda!79429 () Bool)

(assert (= b_lambda!79383 (or b!2634859 b_lambda!79429)))

(declare-fun bs!476240 () Bool)

(declare-fun d!748396 () Bool)

(assert (= bs!476240 (and d!748396 b!2634859)))

(assert (=> bs!476240 (= (dynLambda!13092 lambda!98881 (h!35942 (dropList!946 v!6381 from!862))) (not (isSeparator!4643 (rule!7027 (h!35942 (dropList!946 v!6381 from!862))))))))

(assert (=> b!2635441 d!748396))

(declare-fun b_lambda!79431 () Bool)

(assert (= b_lambda!79385 (or b!2634859 b_lambda!79431)))

(declare-fun bs!476241 () Bool)

(declare-fun d!748398 () Bool)

(assert (= bs!476241 (and d!748398 b!2634859)))

(assert (=> bs!476241 (= (dynLambda!13092 lambda!98881 (h!35942 lt!927559)) (not (isSeparator!4643 (rule!7027 (h!35942 lt!927559)))))))

(assert (=> b!2635443 d!748398))

(declare-fun b_lambda!79433 () Bool)

(assert (= b_lambda!79413 (or b!2634859 b_lambda!79433)))

(declare-fun bs!476242 () Bool)

(declare-fun d!748400 () Bool)

(assert (= bs!476242 (and d!748400 b!2634859)))

(assert (=> bs!476242 (= (dynLambda!13092 lambda!98881 (h!35942 (list!11491 v!6381))) (not (isSeparator!4643 (rule!7027 (h!35942 (list!11491 v!6381))))))))

(assert (=> b!2636168 d!748400))

(declare-fun b_lambda!79435 () Bool)

(assert (= b_lambda!79391 (or b!2634851 b_lambda!79435)))

(assert (=> d!747932 d!747786))

(check-sat (not b!2636134) tp_is_empty!13769 (not b!2635658) (not b!2636169) (not d!748322) (not d!748318) (not b_lambda!79379) (not b!2636390) (not d!748122) (not tb!143825) (not d!747948) (not d!748192) (not d!747876) (not b!2636109) (not b!2635687) (not d!748176) (not b!2636228) b_and!193037 (not b!2635538) (not d!748030) (not d!748284) (not d!748282) (not d!748040) (not d!747928) (not d!747804) (not b!2636160) (not b!2636397) (not b!2636299) (not tb!143795) (not d!748290) (not b!2636711) (not d!748320) (not bm!169680) (not b!2635462) (not bm!169625) (not b!2635835) (not d!748234) (not d!748128) (not b!2635763) (not d!748252) (not bm!169681) (not bm!169672) (not b!2636543) (not d!747990) (not d!748190) (not b!2636588) (not b_next!75011) (not b!2636620) (not d!747998) (not d!748016) (not bm!169626) (not d!747826) (not b!2636635) (not d!748250) (not b!2635794) (not d!747986) (not b!2636481) (not b!2635941) (not b!2635450) (not b!2635829) (not d!748316) (not b!2635628) (not b_lambda!79431) (not b!2635672) (not b!2636100) (not d!748216) (not bm!169630) (not b!2636625) (not d!747830) (not b!2636706) (not b!2636518) (not b!2635539) (not b!2636111) (not b!2635444) (not b!2635463) (not d!747878) (not b!2635777) (not d!747968) (not b!2636319) (not d!748332) (not d!748000) (not b!2636385) (not b!2635774) (not b!2636638) (not bm!169632) (not bm!169709) b_and!192975 (not b!2635793) (not b!2635892) (not b!2636126) (not d!747962) (not b!2636179) (not d!748236) (not b!2635442) (not b!2636621) (not b!2635828) (not d!747992) (not b!2635661) (not b!2636379) (not b!2635826) (not d!747828) (not d!747930) (not d!748112) (not d!748014) (not d!748026) (not b!2636652) (not b!2636086) (not b!2636609) (not d!747900) (not bm!169627) (not bm!169635) (not b!2636304) (not b!2635796) (not b!2636640) (not d!747960) (not d!748302) (not b!2635656) (not b!2636335) (not b!2635881) (not b!2636542) (not b!2635821) (not d!747802) (not d!748132) (not b!2635799) (not b!2636384) (not d!748298) (not b!2636303) (not b!2636629) (not b!2636305) (not b!2635758) (not b!2635678) (not b!2636520) (not b!2635846) (not b!2636604) (not bm!169711) (not d!747976) (not tb!143807) (not b!2635459) (not b_lambda!79401) (not d!747926) (not b!2636367) (not d!748124) (not b!2635803) (not d!748242) (not b!2636465) (not b!2636653) (not b!2635797) b_and!193003 (not b_lambda!79427) (not b!2636300) (not b!2636546) (not b!2635454) (not bm!169686) (not d!748228) (not b!2636378) (not b!2636608) (not b!2636705) (not b!2636686) (not bm!169676) (not b!2635778) (not d!747894) (not b!2635795) (not b!2636636) (not b!2635815) (not bm!169621) (not d!748154) (not b!2635847) (not d!748024) (not d!747982) (not b!2635540) (not b!2635741) (not d!748306) (not b!2635470) (not d!747898) b_and!193055 (not b!2636478) (not d!747896) (not d!747806) (not b!2636262) b_and!193049 (not d!748156) (not b!2636380) (not b!2636164) (not b!2636162) (not d!748028) (not b!2636548) (not b_next!75019) (not d!748004) (not b_next!75009) (not b!2636550) (not d!747814) (not b!2636396) (not tb!143819) (not b!2635675) (not b!2636559) (not b!2635713) (not b!2636096) (not b!2635775) (not b!2636619) (not b!2636587) (not bm!169697) (not b!2636501) (not b!2635460) (not b!2635781) (not d!748138) (not bm!169629) (not b!2636230) (not d!748330) (not b_next!75001) (not d!747820) (not b!2636373) (not d!747822) (not b!2635939) (not b!2635458) (not b!2636654) (not b!2635698) (not bm!169628) (not b!2635940) (not b!2636405) (not b!2636157) (not d!748126) (not d!748256) (not b!2636556) (not b!2635465) (not b!2635742) (not b!2635676) (not b_lambda!79399) (not b!2636128) (not b_next!74997) (not b!2636260) (not b!2635804) (not b!2635679) (not b!2636404) (not b!2635914) (not b!2636547) (not b!2636615) (not d!747984) (not bm!169684) (not b!2635938) (not b_lambda!79433) (not b!2635800) (not b!2636504) (not b_next!75003) (not b!2635801) (not d!747810) (not b!2635839) (not d!747996) (not b!2636233) (not b!2635649) (not b_lambda!79425) (not b!2635770) (not b!2635891) (not b!2636703) (not b!2635456) (not d!748310) (not d!748136) (not b!2636386) (not b!2636589) (not d!747916) (not b!2636709) (not b!2635812) (not b!2635699) (not b!2635937) b_and!193053 (not b!2636463) b_and!192979 (not b!2635779) (not b!2636181) (not b!2636130) (not b!2636401) (not d!748280) (not b!2636461) (not b!2635730) (not b!2636159) (not b!2636110) (not d!747994) (not d!748032) (not b!2636549) (not b!2636138) (not b!2635748) (not d!747974) (not b!2635788) (not bm!169631) (not b!2636688) (not d!748300) (not b!2636612) (not b!2635484) (not b_lambda!79429) (not b!2635787) (not b!2636477) (not b!2636584) (not b_lambda!79421) (not b!2636585) (not d!748304) (not b!2635936) (not b!2636624) (not d!748066) (not b!2636596) (not d!748246) (not b!2636321) (not tb!143801) (not d!748230) (not bm!169698) (not bm!169616) (not b!2636374) (not b!2636131) (not b_lambda!79409) (not b!2636377) (not bs!476237) (not b!2636408) (not bm!169623) (not b_next!74999) (not d!748324) (not b!2635650) (not d!748208) (not b!2636402) (not d!748006) (not b_lambda!79381) (not d!748002) (not d!748146) (not b!2635757) (not d!747790) (not b!2636388) (not b!2635715) (not bm!169622) (not b!2636603) (not b!2635464) b_and!193051 (not d!748018) (not b!2635714) (not b!2636261) b_and!193041 (not bs!476239) (not b!2636626) (not b!2635739) (not d!747794) (not b!2636263) (not d!748008) (not b!2635768) (not b!2635455) (not d!747816) (not b!2635836) (not d!748148) (not b!2635798) (not b_next!75015) (not b!2636161) (not b!2636571) (not d!747924) (not b!2635731) (not b!2636623) (not bm!169694) (not d!747812) (not b!2636355) (not b!2636617) (not b!2635452) (not b!2636259) (not b!2636702) (not d!747988) (not b_lambda!79435) (not b!2636517) (not b_next!75017) (not b!2635762) (not b!2636382) (not b!2636639) (not b!2635811) (not b!2636488) (not b!2635411) (not b!2635792) (not b!2636595) (not b!2636597) (not b!2636613) (not bm!169691) (not d!748188) (not d!747966) (not b!2635069) (not b!2635482) (not b!2635479) (not b!2636599) (not b!2635769) (not b_lambda!79415) (not b!2635474) (not b!2635767) (not b!2636502) (not d!748134) (not b!2636180) (not b!2636704) (not b!2636482) (not b!2636165) (not bm!169564) (not b!2636601) (not b_lambda!79395) (not b!2635915) (not bm!169620) (not d!748312) (not b!2636137) (not b!2635659) (not b_next!75013) (not b!2636227) (not b!2636515) (not b!2636163) (not b!2636637) (not b!2636605) (not d!748248) (not d!748292) (not b!2636545) (not b!2636505) (not d!748286) (not b!2635481) (not b!2636503) b_and!193039 (not d!747882) (not b!2636687) (not b_lambda!79423) (not b!2636710) (not d!748130) (not b!2636693) (not b!2636093) (not d!748118) (not d!747938) (not b!2635776) (not b!2636136) (not bm!169678) (not b!2636516) (not d!748020) (not b!2636302) (not b!2636544) (not b!2635453) (not b!2635780) (not d!747970) (not b!2635461) (not b!2636167) (not b!2636381) (not d!748142) (not b!2635225) (not d!747808) (not b!2635805) (not b!2636459) (not b!2635685) (not d!748120) (not b!2636359) (not d!747800) (not b!2636092) (not d!748238) (not d!747818) (not b!2636694) (not b!2635822) (not b!2635740) (not b!2635840) (not b!2636085) (not d!748152) (not b!2636133) (not b!2636616) (not b!2636108) (not b!2636258) (not b!2635802) (not b!2636464) (not b!2636607) (not b!2635825) (not d!748232) (not b!2635773) (not bs!476238) (not d!748336) (not b!2636387) (not b!2636600) (not bm!169710) (not b!2635883) (not b!2635882) (not d!748022) (not b!2636583) (not d!747824) (not bm!169714) (not b!2635749) (not b!2636611) (not d!748244) (not d!747918))
(check-sat b_and!193037 (not b_next!75011) b_and!192975 b_and!193003 b_and!193055 (not b_next!75001) (not b_next!74997) (not b_next!75003) (not b_next!74999) b_and!193051 (not b_next!75017) (not b_next!75013) b_and!193039 b_and!193049 (not b_next!75019) (not b_next!75009) b_and!193053 b_and!192979 b_and!193041 (not b_next!75015))
