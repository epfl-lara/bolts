; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3642 () Bool)

(assert start!3642)

(declare-fun b!50694 () Bool)

(declare-fun b_free!1565 () Bool)

(declare-fun b_next!1565 () Bool)

(assert (=> b!50694 (= b_free!1565 (not b_next!1565))))

(declare-fun tp!33497 () Bool)

(declare-fun b_and!1607 () Bool)

(assert (=> b!50694 (= tp!33497 b_and!1607)))

(declare-fun b_free!1567 () Bool)

(declare-fun b_next!1567 () Bool)

(assert (=> b!50694 (= b_free!1567 (not b_next!1567))))

(declare-fun tp!33500 () Bool)

(declare-fun b_and!1609 () Bool)

(assert (=> b!50694 (= tp!33500 b_and!1609)))

(declare-fun b!50686 () Bool)

(declare-fun res!33322 () Bool)

(declare-fun e!29713 () Bool)

(assert (=> b!50686 (=> (not res!33322) (not e!29713))))

(declare-datatypes ((List!998 0))(
  ( (Nil!992) (Cons!992 (h!6389 (_ BitVec 16)) (t!17201 List!998)) )
))
(declare-datatypes ((TokenValue!203 0))(
  ( (FloatLiteralValue!406 (text!1866 List!998)) (TokenValueExt!202 (__x!1501 Int)) (Broken!1015 (value!8942 List!998)) (Object!208) (End!203) (Def!203) (Underscore!203) (Match!203) (Else!203) (Error!203) (Case!203) (If!203) (Extends!203) (Abstract!203) (Class!203) (Val!203) (DelimiterValue!406 (del!263 List!998)) (KeywordValue!209 (value!8943 List!998)) (CommentValue!406 (value!8944 List!998)) (WhitespaceValue!406 (value!8945 List!998)) (IndentationValue!203 (value!8946 List!998)) (String!1406) (Int32!203) (Broken!1016 (value!8947 List!998)) (Boolean!204) (Unit!559) (OperatorValue!206 (op!263 List!998)) (IdentifierValue!406 (value!8948 List!998)) (IdentifierValue!407 (value!8949 List!998)) (WhitespaceValue!407 (value!8950 List!998)) (True!406) (False!406) (Broken!1017 (value!8951 List!998)) (Broken!1018 (value!8952 List!998)) (True!407) (RightBrace!203) (RightBracket!203) (Colon!203) (Null!203) (Comma!203) (LeftBracket!203) (False!407) (LeftBrace!203) (ImaginaryLiteralValue!203 (text!1867 List!998)) (StringLiteralValue!609 (value!8953 List!998)) (EOFValue!203 (value!8954 List!998)) (IdentValue!203 (value!8955 List!998)) (DelimiterValue!407 (value!8956 List!998)) (DedentValue!203 (value!8957 List!998)) (NewLineValue!203 (value!8958 List!998)) (IntegerValue!609 (value!8959 (_ BitVec 32)) (text!1868 List!998)) (IntegerValue!610 (value!8960 Int) (text!1869 List!998)) (Times!203) (Or!203) (Equal!203) (Minus!203) (Broken!1019 (value!8961 List!998)) (And!203) (Div!203) (LessEqual!203) (Mod!203) (Concat!484) (Not!203) (Plus!203) (SpaceValue!203 (value!8962 List!998)) (IntegerValue!611 (value!8963 Int) (text!1870 List!998)) (StringLiteralValue!610 (text!1871 List!998)) (FloatLiteralValue!407 (text!1872 List!998)) (BytesLiteralValue!203 (value!8964 List!998)) (CommentValue!407 (value!8965 List!998)) (StringLiteralValue!611 (value!8966 List!998)) (ErrorTokenValue!203 (msg!264 List!998)) )
))
(declare-datatypes ((C!1484 0))(
  ( (C!1485 (val!349 Int)) )
))
(declare-datatypes ((List!999 0))(
  ( (Nil!993) (Cons!993 (h!6390 C!1484) (t!17202 List!999)) )
))
(declare-datatypes ((IArray!461 0))(
  ( (IArray!462 (innerList!288 List!999)) )
))
(declare-datatypes ((Conc!230 0))(
  ( (Node!230 (left!749 Conc!230) (right!1079 Conc!230) (csize!690 Int) (cheight!441 Int)) (Leaf!472 (xs!2809 IArray!461) (csize!691 Int)) (Empty!230) )
))
(declare-datatypes ((String!1407 0))(
  ( (String!1408 (value!8967 String)) )
))
(declare-datatypes ((BalanceConc!464 0))(
  ( (BalanceConc!465 (c!16627 Conc!230)) )
))
(declare-datatypes ((Regex!281 0))(
  ( (ElementMatch!281 (c!16628 C!1484)) (Concat!485 (regOne!1074 Regex!281) (regTwo!1074 Regex!281)) (EmptyExpr!281) (Star!281 (reg!610 Regex!281)) (EmptyLang!281) (Union!281 (regOne!1075 Regex!281) (regTwo!1075 Regex!281)) )
))
(declare-datatypes ((TokenValueInjection!230 0))(
  ( (TokenValueInjection!231 (toValue!692 Int) (toChars!551 Int)) )
))
(declare-datatypes ((Rule!226 0))(
  ( (Rule!227 (regex!213 Regex!281) (tag!391 String!1407) (isSeparator!213 Bool) (transformation!213 TokenValueInjection!230)) )
))
(declare-datatypes ((List!1000 0))(
  ( (Nil!994) (Cons!994 (h!6391 Rule!226) (t!17203 List!1000)) )
))
(declare-fun rules!1069 () List!1000)

(declare-fun isEmpty!199 (List!1000) Bool)

(assert (=> b!50686 (= res!33322 (not (isEmpty!199 rules!1069)))))

(declare-fun b!50687 () Bool)

(declare-fun res!33323 () Bool)

(assert (=> b!50687 (=> (not res!33323) (not e!29713))))

(declare-fun from!821 () Int)

(declare-fun lt!8644 () Int)

(assert (=> b!50687 (= res!33323 (< from!821 (- lt!8644 1)))))

(declare-fun b!50688 () Bool)

(declare-fun e!29718 () Bool)

(assert (=> b!50688 (= e!29718 (and (<= 0 from!821) (< from!821 lt!8644)))))

(declare-fun e!29716 () Bool)

(assert (=> b!50688 e!29716))

(declare-fun res!33318 () Bool)

(assert (=> b!50688 (=> (not res!33318) (not e!29716))))

(declare-datatypes ((LexerInterface!105 0))(
  ( (LexerInterfaceExt!102 (__x!1502 Int)) (Lexer!103) )
))
(declare-fun thiss!11059 () LexerInterface!105)

(declare-datatypes ((Token!190 0))(
  ( (Token!191 (value!8968 TokenValue!203) (rule!688 Rule!226) (size!926 Int) (originalCharacters!266 List!999)) )
))
(declare-fun lt!8642 () Token!190)

(declare-fun rulesProduceIndividualToken!24 (LexerInterface!105 List!1000 Token!190) Bool)

(assert (=> b!50688 (= res!33318 (rulesProduceIndividualToken!24 thiss!11059 rules!1069 lt!8642))))

(declare-datatypes ((List!1001 0))(
  ( (Nil!995) (Cons!995 (h!6392 Token!190) (t!17204 List!1001)) )
))
(declare-fun lt!8643 () List!1001)

(declare-datatypes ((Unit!560 0))(
  ( (Unit!561) )
))
(declare-fun lt!8641 () Unit!560)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!12 (LexerInterface!105 List!1000 List!1001 Token!190) Unit!560)

(assert (=> b!50688 (= lt!8641 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!12 thiss!11059 rules!1069 lt!8643 lt!8642))))

(declare-fun lt!8647 () Token!190)

(assert (=> b!50688 (rulesProduceIndividualToken!24 thiss!11059 rules!1069 lt!8647)))

(declare-fun lt!8639 () Unit!560)

(assert (=> b!50688 (= lt!8639 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!12 thiss!11059 rules!1069 lt!8643 lt!8647))))

(declare-fun b!50689 () Bool)

(declare-fun e!29717 () Bool)

(declare-datatypes ((IArray!463 0))(
  ( (IArray!464 (innerList!289 List!1001)) )
))
(declare-datatypes ((Conc!231 0))(
  ( (Node!231 (left!750 Conc!231) (right!1080 Conc!231) (csize!692 Int) (cheight!442 Int)) (Leaf!473 (xs!2810 IArray!463) (csize!693 Int)) (Empty!231) )
))
(declare-datatypes ((BalanceConc!466 0))(
  ( (BalanceConc!467 (c!16629 Conc!231)) )
))
(declare-fun v!6227 () BalanceConc!466)

(declare-fun tp!33498 () Bool)

(declare-fun inv!1314 (Conc!231) Bool)

(assert (=> b!50689 (= e!29717 (and (inv!1314 (c!16629 v!6227)) tp!33498))))

(declare-fun b!50690 () Bool)

(declare-fun e!29710 () Bool)

(declare-fun e!29711 () Bool)

(declare-fun tp!33496 () Bool)

(declare-fun inv!1310 (String!1407) Bool)

(declare-fun inv!1315 (TokenValueInjection!230) Bool)

(assert (=> b!50690 (= e!29710 (and tp!33496 (inv!1310 (tag!391 (h!6391 rules!1069))) (inv!1315 (transformation!213 (h!6391 rules!1069))) e!29711))))

(declare-fun b!50691 () Bool)

(declare-fun size!927 (BalanceConc!464) Int)

(declare-fun charsOf!6 (Token!190) BalanceConc!464)

(assert (=> b!50691 (= e!29716 (> (size!927 (charsOf!6 lt!8642)) 0))))

(declare-fun res!33319 () Bool)

(declare-fun e!29715 () Bool)

(assert (=> start!3642 (=> (not res!33319) (not e!29715))))

(get-info :version)

(assert (=> start!3642 (= res!33319 (and ((_ is Lexer!103) thiss!11059) (>= from!821 0)))))

(assert (=> start!3642 e!29715))

(assert (=> start!3642 true))

(declare-fun inv!1316 (BalanceConc!466) Bool)

(assert (=> start!3642 (and (inv!1316 v!6227) e!29717)))

(declare-fun e!29719 () Bool)

(assert (=> start!3642 e!29719))

(declare-fun b!50692 () Bool)

(assert (=> b!50692 (= e!29715 e!29713)))

(declare-fun res!33326 () Bool)

(assert (=> b!50692 (=> (not res!33326) (not e!29713))))

(assert (=> b!50692 (= res!33326 (<= from!821 lt!8644))))

(declare-fun size!928 (BalanceConc!466) Int)

(assert (=> b!50692 (= lt!8644 (size!928 v!6227))))

(declare-fun b!50693 () Bool)

(declare-fun res!33317 () Bool)

(assert (=> b!50693 (=> res!33317 e!29718)))

(declare-fun contains!92 (List!1001 Token!190) Bool)

(assert (=> b!50693 (= res!33317 (not (contains!92 lt!8643 lt!8642)))))

(assert (=> b!50694 (= e!29711 (and tp!33497 tp!33500))))

(declare-fun b!50695 () Bool)

(declare-fun e!29712 () Bool)

(assert (=> b!50695 (= e!29712 e!29718)))

(declare-fun res!33321 () Bool)

(assert (=> b!50695 (=> res!33321 e!29718)))

(declare-fun contains!93 (BalanceConc!466 Token!190) Bool)

(assert (=> b!50695 (= res!33321 (not (contains!93 v!6227 lt!8642)))))

(declare-fun apply!76 (BalanceConc!466 Int) Token!190)

(assert (=> b!50695 (= lt!8642 (apply!76 v!6227 (+ 1 from!821)))))

(declare-fun b!50696 () Bool)

(declare-fun res!33320 () Bool)

(assert (=> b!50696 (=> res!33320 e!29712)))

(assert (=> b!50696 (= res!33320 (not (contains!92 lt!8643 lt!8647)))))

(declare-fun b!50697 () Bool)

(declare-fun tp!33499 () Bool)

(assert (=> b!50697 (= e!29719 (and e!29710 tp!33499))))

(declare-fun b!50698 () Bool)

(declare-fun res!33316 () Bool)

(assert (=> b!50698 (=> (not res!33316) (not e!29713))))

(declare-fun rulesInvariant!99 (LexerInterface!105 List!1000) Bool)

(assert (=> b!50698 (= res!33316 (rulesInvariant!99 thiss!11059 rules!1069))))

(declare-fun b!50699 () Bool)

(assert (=> b!50699 (= e!29713 (not e!29712))))

(declare-fun res!33324 () Bool)

(assert (=> b!50699 (=> res!33324 e!29712)))

(assert (=> b!50699 (= res!33324 (not (contains!93 v!6227 lt!8647)))))

(assert (=> b!50699 (= lt!8647 (apply!76 v!6227 from!821))))

(declare-fun lt!8638 () List!1001)

(declare-fun tail!55 (List!1001) List!1001)

(declare-fun drop!30 (List!1001 Int) List!1001)

(assert (=> b!50699 (= (tail!55 lt!8638) (drop!30 lt!8643 (+ 2 from!821)))))

(declare-fun lt!8646 () Unit!560)

(declare-fun lemmaDropTail!26 (List!1001 Int) Unit!560)

(assert (=> b!50699 (= lt!8646 (lemmaDropTail!26 lt!8643 (+ 1 from!821)))))

(declare-fun lt!8637 () List!1001)

(assert (=> b!50699 (= (tail!55 lt!8637) lt!8638)))

(declare-fun lt!8640 () Unit!560)

(assert (=> b!50699 (= lt!8640 (lemmaDropTail!26 lt!8643 from!821))))

(declare-fun head!370 (List!1001) Token!190)

(declare-fun apply!77 (List!1001 Int) Token!190)

(assert (=> b!50699 (= (head!370 lt!8638) (apply!77 lt!8643 (+ 1 from!821)))))

(assert (=> b!50699 (= lt!8638 (drop!30 lt!8643 (+ 1 from!821)))))

(declare-fun lt!8645 () Unit!560)

(declare-fun lemmaDropApply!30 (List!1001 Int) Unit!560)

(assert (=> b!50699 (= lt!8645 (lemmaDropApply!30 lt!8643 (+ 1 from!821)))))

(assert (=> b!50699 (= (head!370 lt!8637) (apply!77 lt!8643 from!821))))

(assert (=> b!50699 (= lt!8637 (drop!30 lt!8643 from!821))))

(declare-fun lt!8648 () Unit!560)

(assert (=> b!50699 (= lt!8648 (lemmaDropApply!30 lt!8643 from!821))))

(declare-fun list!254 (BalanceConc!466) List!1001)

(assert (=> b!50699 (= lt!8643 (list!254 v!6227))))

(declare-fun b!50700 () Bool)

(declare-fun res!33325 () Bool)

(assert (=> b!50700 (=> (not res!33325) (not e!29713))))

(declare-fun rulesProduceEachTokenIndividually!43 (LexerInterface!105 List!1000 BalanceConc!466) Bool)

(assert (=> b!50700 (= res!33325 (rulesProduceEachTokenIndividually!43 thiss!11059 rules!1069 v!6227))))

(assert (= (and start!3642 res!33319) b!50692))

(assert (= (and b!50692 res!33326) b!50686))

(assert (= (and b!50686 res!33322) b!50698))

(assert (= (and b!50698 res!33316) b!50700))

(assert (= (and b!50700 res!33325) b!50687))

(assert (= (and b!50687 res!33323) b!50699))

(assert (= (and b!50699 (not res!33324)) b!50696))

(assert (= (and b!50696 (not res!33320)) b!50695))

(assert (= (and b!50695 (not res!33321)) b!50693))

(assert (= (and b!50693 (not res!33317)) b!50688))

(assert (= (and b!50688 res!33318) b!50691))

(assert (= start!3642 b!50689))

(assert (= b!50690 b!50694))

(assert (= b!50697 b!50690))

(assert (= (and start!3642 ((_ is Cons!994) rules!1069)) b!50697))

(declare-fun m!24902 () Bool)

(assert (=> b!50700 m!24902))

(declare-fun m!24904 () Bool)

(assert (=> b!50686 m!24904))

(declare-fun m!24906 () Bool)

(assert (=> b!50691 m!24906))

(assert (=> b!50691 m!24906))

(declare-fun m!24908 () Bool)

(assert (=> b!50691 m!24908))

(declare-fun m!24910 () Bool)

(assert (=> b!50689 m!24910))

(declare-fun m!24912 () Bool)

(assert (=> b!50693 m!24912))

(declare-fun m!24914 () Bool)

(assert (=> start!3642 m!24914))

(declare-fun m!24916 () Bool)

(assert (=> b!50688 m!24916))

(declare-fun m!24918 () Bool)

(assert (=> b!50688 m!24918))

(declare-fun m!24920 () Bool)

(assert (=> b!50688 m!24920))

(declare-fun m!24922 () Bool)

(assert (=> b!50688 m!24922))

(declare-fun m!24924 () Bool)

(assert (=> b!50690 m!24924))

(declare-fun m!24926 () Bool)

(assert (=> b!50690 m!24926))

(declare-fun m!24928 () Bool)

(assert (=> b!50698 m!24928))

(declare-fun m!24930 () Bool)

(assert (=> b!50695 m!24930))

(declare-fun m!24932 () Bool)

(assert (=> b!50695 m!24932))

(declare-fun m!24934 () Bool)

(assert (=> b!50696 m!24934))

(declare-fun m!24936 () Bool)

(assert (=> b!50699 m!24936))

(declare-fun m!24938 () Bool)

(assert (=> b!50699 m!24938))

(declare-fun m!24940 () Bool)

(assert (=> b!50699 m!24940))

(declare-fun m!24942 () Bool)

(assert (=> b!50699 m!24942))

(declare-fun m!24944 () Bool)

(assert (=> b!50699 m!24944))

(declare-fun m!24946 () Bool)

(assert (=> b!50699 m!24946))

(declare-fun m!24948 () Bool)

(assert (=> b!50699 m!24948))

(declare-fun m!24950 () Bool)

(assert (=> b!50699 m!24950))

(declare-fun m!24952 () Bool)

(assert (=> b!50699 m!24952))

(declare-fun m!24954 () Bool)

(assert (=> b!50699 m!24954))

(declare-fun m!24956 () Bool)

(assert (=> b!50699 m!24956))

(declare-fun m!24958 () Bool)

(assert (=> b!50699 m!24958))

(declare-fun m!24960 () Bool)

(assert (=> b!50699 m!24960))

(declare-fun m!24962 () Bool)

(assert (=> b!50699 m!24962))

(declare-fun m!24964 () Bool)

(assert (=> b!50699 m!24964))

(declare-fun m!24966 () Bool)

(assert (=> b!50699 m!24966))

(declare-fun m!24968 () Bool)

(assert (=> b!50692 m!24968))

(check-sat (not b!50695) (not b_next!1567) (not b!50698) (not b!50693) (not b!50696) (not start!3642) (not b!50697) b_and!1609 (not b_next!1565) (not b!50688) b_and!1607 (not b!50700) (not b!50691) (not b!50690) (not b!50689) (not b!50686) (not b!50699) (not b!50692))
(check-sat b_and!1609 b_and!1607 (not b_next!1565) (not b_next!1567))
