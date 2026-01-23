; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!100792 () Bool)

(assert start!100792)

(declare-fun b!1155650 () Bool)

(declare-fun e!739090 () Bool)

(assert (=> b!1155650 (= e!739090 true)))

(declare-fun b!1155649 () Bool)

(declare-fun e!739089 () Bool)

(assert (=> b!1155649 (= e!739089 e!739090)))

(declare-fun b!1155636 () Bool)

(assert (=> b!1155636 e!739089))

(assert (= b!1155649 b!1155650))

(assert (= b!1155636 b!1155649))

(declare-fun b!1155635 () Bool)

(declare-fun e!739079 () Bool)

(declare-datatypes ((List!11250 0))(
  ( (Nil!11226) (Cons!11226 (h!16627 (_ BitVec 16)) (t!108938 List!11250)) )
))
(declare-datatypes ((TokenValue!2008 0))(
  ( (FloatLiteralValue!4016 (text!14501 List!11250)) (TokenValueExt!2007 (__x!7727 Int)) (Broken!10040 (value!63319 List!11250)) (Object!2031) (End!2008) (Def!2008) (Underscore!2008) (Match!2008) (Else!2008) (Error!2008) (Case!2008) (If!2008) (Extends!2008) (Abstract!2008) (Class!2008) (Val!2008) (DelimiterValue!4016 (del!2068 List!11250)) (KeywordValue!2014 (value!63320 List!11250)) (CommentValue!4016 (value!63321 List!11250)) (WhitespaceValue!4016 (value!63322 List!11250)) (IndentationValue!2008 (value!63323 List!11250)) (String!13629) (Int32!2008) (Broken!10041 (value!63324 List!11250)) (Boolean!2009) (Unit!17258) (OperatorValue!2011 (op!2068 List!11250)) (IdentifierValue!4016 (value!63325 List!11250)) (IdentifierValue!4017 (value!63326 List!11250)) (WhitespaceValue!4017 (value!63327 List!11250)) (True!4016) (False!4016) (Broken!10042 (value!63328 List!11250)) (Broken!10043 (value!63329 List!11250)) (True!4017) (RightBrace!2008) (RightBracket!2008) (Colon!2008) (Null!2008) (Comma!2008) (LeftBracket!2008) (False!4017) (LeftBrace!2008) (ImaginaryLiteralValue!2008 (text!14502 List!11250)) (StringLiteralValue!6024 (value!63330 List!11250)) (EOFValue!2008 (value!63331 List!11250)) (IdentValue!2008 (value!63332 List!11250)) (DelimiterValue!4017 (value!63333 List!11250)) (DedentValue!2008 (value!63334 List!11250)) (NewLineValue!2008 (value!63335 List!11250)) (IntegerValue!6024 (value!63336 (_ BitVec 32)) (text!14503 List!11250)) (IntegerValue!6025 (value!63337 Int) (text!14504 List!11250)) (Times!2008) (Or!2008) (Equal!2008) (Minus!2008) (Broken!10044 (value!63338 List!11250)) (And!2008) (Div!2008) (LessEqual!2008) (Mod!2008) (Concat!5220) (Not!2008) (Plus!2008) (SpaceValue!2008 (value!63339 List!11250)) (IntegerValue!6026 (value!63340 Int) (text!14505 List!11250)) (StringLiteralValue!6025 (text!14506 List!11250)) (FloatLiteralValue!4017 (text!14507 List!11250)) (BytesLiteralValue!2008 (value!63341 List!11250)) (CommentValue!4017 (value!63342 List!11250)) (StringLiteralValue!6026 (value!63343 List!11250)) (ErrorTokenValue!2008 (msg!2069 List!11250)) )
))
(declare-datatypes ((C!6742 0))(
  ( (C!6743 (val!3627 Int)) )
))
(declare-datatypes ((Regex!3212 0))(
  ( (ElementMatch!3212 (c!194025 C!6742)) (Concat!5221 (regOne!6936 Regex!3212) (regTwo!6936 Regex!3212)) (EmptyExpr!3212) (Star!3212 (reg!3541 Regex!3212)) (EmptyLang!3212) (Union!3212 (regOne!6937 Regex!3212) (regTwo!6937 Regex!3212)) )
))
(declare-datatypes ((String!13630 0))(
  ( (String!13631 (value!63344 String)) )
))
(declare-datatypes ((List!11251 0))(
  ( (Nil!11227) (Cons!11227 (h!16628 C!6742) (t!108939 List!11251)) )
))
(declare-datatypes ((IArray!7297 0))(
  ( (IArray!7298 (innerList!3706 List!11251)) )
))
(declare-datatypes ((Conc!3646 0))(
  ( (Node!3646 (left!9785 Conc!3646) (right!10115 Conc!3646) (csize!7522 Int) (cheight!3857 Int)) (Leaf!5628 (xs!6351 IArray!7297) (csize!7523 Int)) (Empty!3646) )
))
(declare-datatypes ((BalanceConc!7314 0))(
  ( (BalanceConc!7315 (c!194026 Conc!3646)) )
))
(declare-datatypes ((TokenValueInjection!3716 0))(
  ( (TokenValueInjection!3717 (toValue!3043 Int) (toChars!2902 Int)) )
))
(declare-datatypes ((Rule!3684 0))(
  ( (Rule!3685 (regex!1942 Regex!3212) (tag!2204 String!13630) (isSeparator!1942 Bool) (transformation!1942 TokenValueInjection!3716)) )
))
(declare-datatypes ((Token!3546 0))(
  ( (Token!3547 (value!63345 TokenValue!2008) (rule!3363 Rule!3684) (size!8834 Int) (originalCharacters!2496 List!11251)) )
))
(declare-datatypes ((List!11252 0))(
  ( (Nil!11228) (Cons!11228 (h!16629 Token!3546) (t!108940 List!11252)) )
))
(declare-datatypes ((List!11253 0))(
  ( (Nil!11229) (Cons!11229 (h!16630 Rule!3684) (t!108941 List!11253)) )
))
(declare-datatypes ((IArray!7299 0))(
  ( (IArray!7300 (innerList!3707 List!11252)) )
))
(declare-datatypes ((Conc!3647 0))(
  ( (Node!3647 (left!9786 Conc!3647) (right!10116 Conc!3647) (csize!7524 Int) (cheight!3858 Int)) (Leaf!5629 (xs!6352 IArray!7299) (csize!7525 Int)) (Empty!3647) )
))
(declare-datatypes ((BalanceConc!7316 0))(
  ( (BalanceConc!7317 (c!194027 Conc!3647)) )
))
(declare-datatypes ((PrintableTokens!570 0))(
  ( (PrintableTokens!571 (rules!9415 List!11253) (tokens!1541 BalanceConc!7316)) )
))
(declare-fun thiss!10527 () PrintableTokens!570)

(declare-fun lt!392907 () List!11252)

(declare-datatypes ((LexerInterface!1637 0))(
  ( (LexerInterfaceExt!1634 (__x!7728 Int)) (Lexer!1635) )
))
(declare-fun rulesProduceEachTokenIndividuallyList!505 (LexerInterface!1637 List!11253 List!11252) Bool)

(assert (=> b!1155635 (= e!739079 (rulesProduceEachTokenIndividuallyList!505 Lexer!1635 (rules!9415 thiss!10527) (t!108940 lt!392907)))))

(declare-fun e!739082 () Bool)

(declare-fun e!739078 () Bool)

(assert (=> b!1155636 (= e!739082 (not e!739078))))

(declare-fun res!519985 () Bool)

(assert (=> b!1155636 (=> res!519985 e!739078)))

(declare-fun lambda!46604 () Int)

(declare-fun forall!2869 (BalanceConc!7316 Int) Bool)

(assert (=> b!1155636 (= res!519985 (not (forall!2869 (tokens!1541 thiss!10527) lambda!46604)))))

(declare-fun e!739081 () Bool)

(assert (=> b!1155636 (= (rulesProduceEachTokenIndividuallyList!505 Lexer!1635 (rules!9415 thiss!10527) lt!392907) e!739081)))

(declare-fun res!519981 () Bool)

(assert (=> b!1155636 (=> res!519981 e!739081)))

(assert (=> b!1155636 (= res!519981 (not (is-Cons!11228 lt!392907)))))

(declare-fun list!4138 (BalanceConc!7316) List!11252)

(assert (=> b!1155636 (= lt!392907 (list!4138 (tokens!1541 thiss!10527)))))

(declare-fun rulesProduceEachTokenIndividually!676 (LexerInterface!1637 List!11253 BalanceConc!7316) Bool)

(assert (=> b!1155636 (= (rulesProduceEachTokenIndividually!676 Lexer!1635 (rules!9415 thiss!10527) (tokens!1541 thiss!10527)) (forall!2869 (tokens!1541 thiss!10527) lambda!46604))))

(declare-fun b!1155637 () Bool)

(declare-fun e!739084 () Bool)

(declare-fun tp!333095 () Bool)

(declare-fun inv!14742 (Conc!3647) Bool)

(assert (=> b!1155637 (= e!739084 (and (inv!14742 (c!194027 (tokens!1541 thiss!10527))) tp!333095))))

(declare-fun res!519983 () Bool)

(declare-fun e!739080 () Bool)

(assert (=> start!100792 (=> (not res!519983) (not e!739080))))

(declare-fun from!787 () Int)

(declare-fun to!267 () Int)

(assert (=> start!100792 (= res!519983 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!100792 e!739080))

(assert (=> start!100792 true))

(declare-fun e!739083 () Bool)

(declare-fun inv!14743 (PrintableTokens!570) Bool)

(assert (=> start!100792 (and (inv!14743 thiss!10527) e!739083)))

(declare-fun b!1155638 () Bool)

(declare-fun isEmpty!6921 (List!11253) Bool)

(assert (=> b!1155638 (= e!739078 (not (isEmpty!6921 (rules!9415 thiss!10527))))))

(declare-fun lt!392909 () List!11252)

(declare-fun forall!2870 (List!11252 Int) Bool)

(assert (=> b!1155638 (forall!2870 lt!392909 lambda!46604)))

(declare-datatypes ((Unit!17259 0))(
  ( (Unit!17260) )
))
(declare-fun lt!392911 () Unit!17259)

(declare-fun lemmaForallSubseq!90 (List!11252 List!11252 Int) Unit!17259)

(assert (=> b!1155638 (= lt!392911 (lemmaForallSubseq!90 lt!392909 lt!392907 lambda!46604))))

(declare-fun slice!163 (BalanceConc!7316 Int Int) BalanceConc!7316)

(assert (=> b!1155638 (= lt!392909 (list!4138 (slice!163 (tokens!1541 thiss!10527) from!787 to!267)))))

(declare-fun subseq!198 (List!11252 List!11252) Bool)

(declare-fun slice!164 (List!11252 Int Int) List!11252)

(assert (=> b!1155638 (subseq!198 (slice!164 lt!392907 from!787 to!267) lt!392907)))

(declare-fun lt!392910 () Unit!17259)

(declare-fun lemmaSliceSubseq!39 (List!11252 Int Int) Unit!17259)

(assert (=> b!1155638 (= lt!392910 (lemmaSliceSubseq!39 lt!392907 from!787 to!267))))

(declare-fun b!1155639 () Bool)

(assert (=> b!1155639 (= e!739080 e!739082)))

(declare-fun res!519984 () Bool)

(assert (=> b!1155639 (=> (not res!519984) (not e!739082))))

(declare-fun rulesInvariant!1511 (LexerInterface!1637 List!11253) Bool)

(assert (=> b!1155639 (= res!519984 (rulesInvariant!1511 Lexer!1635 (rules!9415 thiss!10527)))))

(declare-fun lt!392908 () Unit!17259)

(declare-fun lemmaInvariant!129 (PrintableTokens!570) Unit!17259)

(assert (=> b!1155639 (= lt!392908 (lemmaInvariant!129 thiss!10527))))

(declare-fun b!1155640 () Bool)

(assert (=> b!1155640 (= e!739081 e!739079)))

(declare-fun res!519980 () Bool)

(assert (=> b!1155640 (=> (not res!519980) (not e!739079))))

(declare-fun rulesProduceIndividualToken!674 (LexerInterface!1637 List!11253 Token!3546) Bool)

(assert (=> b!1155640 (= res!519980 (rulesProduceIndividualToken!674 Lexer!1635 (rules!9415 thiss!10527) (h!16629 lt!392907)))))

(declare-fun b!1155641 () Bool)

(declare-fun tp!333096 () Bool)

(declare-fun inv!14744 (BalanceConc!7316) Bool)

(assert (=> b!1155641 (= e!739083 (and tp!333096 (inv!14744 (tokens!1541 thiss!10527)) e!739084))))

(declare-fun b!1155642 () Bool)

(declare-fun res!519982 () Bool)

(assert (=> b!1155642 (=> (not res!519982) (not e!739080))))

(declare-fun size!8835 (BalanceConc!7316) Int)

(assert (=> b!1155642 (= res!519982 (<= to!267 (size!8835 (tokens!1541 thiss!10527))))))

(assert (= (and start!100792 res!519983) b!1155642))

(assert (= (and b!1155642 res!519982) b!1155639))

(assert (= (and b!1155639 res!519984) b!1155636))

(assert (= (and b!1155636 (not res!519981)) b!1155640))

(assert (= (and b!1155640 res!519980) b!1155635))

(assert (= (and b!1155636 (not res!519985)) b!1155638))

(assert (= b!1155641 b!1155637))

(assert (= start!100792 b!1155641))

(declare-fun m!1322539 () Bool)

(assert (=> b!1155636 m!1322539))

(declare-fun m!1322541 () Bool)

(assert (=> b!1155636 m!1322541))

(assert (=> b!1155636 m!1322539))

(declare-fun m!1322543 () Bool)

(assert (=> b!1155636 m!1322543))

(declare-fun m!1322545 () Bool)

(assert (=> b!1155636 m!1322545))

(declare-fun m!1322547 () Bool)

(assert (=> b!1155638 m!1322547))

(declare-fun m!1322549 () Bool)

(assert (=> b!1155638 m!1322549))

(declare-fun m!1322551 () Bool)

(assert (=> b!1155638 m!1322551))

(declare-fun m!1322553 () Bool)

(assert (=> b!1155638 m!1322553))

(declare-fun m!1322555 () Bool)

(assert (=> b!1155638 m!1322555))

(assert (=> b!1155638 m!1322547))

(assert (=> b!1155638 m!1322553))

(declare-fun m!1322557 () Bool)

(assert (=> b!1155638 m!1322557))

(declare-fun m!1322559 () Bool)

(assert (=> b!1155638 m!1322559))

(declare-fun m!1322561 () Bool)

(assert (=> b!1155638 m!1322561))

(declare-fun m!1322563 () Bool)

(assert (=> b!1155642 m!1322563))

(declare-fun m!1322565 () Bool)

(assert (=> b!1155640 m!1322565))

(declare-fun m!1322567 () Bool)

(assert (=> start!100792 m!1322567))

(declare-fun m!1322569 () Bool)

(assert (=> b!1155635 m!1322569))

(declare-fun m!1322571 () Bool)

(assert (=> b!1155639 m!1322571))

(declare-fun m!1322573 () Bool)

(assert (=> b!1155639 m!1322573))

(declare-fun m!1322575 () Bool)

(assert (=> b!1155637 m!1322575))

(declare-fun m!1322577 () Bool)

(assert (=> b!1155641 m!1322577))

(push 1)

(assert (not start!100792))

(assert (not b!1155640))

(assert (not b!1155642))

(assert (not b!1155636))

(assert (not b!1155641))

(assert (not b!1155639))

(assert (not b!1155635))

(assert (not b!1155650))

(assert (not b!1155637))

(assert (not b!1155638))

(assert (not b!1155649))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!330328 () Bool)

(declare-fun lt!392929 () Int)

(declare-fun size!8838 (List!11252) Int)

(assert (=> d!330328 (= lt!392929 (size!8838 (list!4138 (tokens!1541 thiss!10527))))))

(declare-fun size!8839 (Conc!3647) Int)

(assert (=> d!330328 (= lt!392929 (size!8839 (c!194027 (tokens!1541 thiss!10527))))))

(assert (=> d!330328 (= (size!8835 (tokens!1541 thiss!10527)) lt!392929)))

(declare-fun bs!282853 () Bool)

(assert (= bs!282853 d!330328))

(assert (=> bs!282853 m!1322543))

(assert (=> bs!282853 m!1322543))

(declare-fun m!1322619 () Bool)

(assert (=> bs!282853 m!1322619))

(declare-fun m!1322621 () Bool)

(assert (=> bs!282853 m!1322621))

(assert (=> b!1155642 d!330328))

(declare-fun bs!282854 () Bool)

(declare-fun d!330330 () Bool)

(assert (= bs!282854 (and d!330330 b!1155636)))

(declare-fun lambda!46616 () Int)

(assert (=> bs!282854 (= lambda!46616 lambda!46604)))

(declare-fun b!1155696 () Bool)

(declare-fun e!739129 () Bool)

(assert (=> b!1155696 (= e!739129 true)))

(declare-fun b!1155695 () Bool)

(declare-fun e!739128 () Bool)

(assert (=> b!1155695 (= e!739128 e!739129)))

(declare-fun b!1155694 () Bool)

(declare-fun e!739127 () Bool)

(assert (=> b!1155694 (= e!739127 e!739128)))

(assert (=> d!330330 e!739127))

(assert (= b!1155695 b!1155696))

(assert (= b!1155694 b!1155695))

(assert (= (and d!330330 (is-Cons!11229 (rules!9415 thiss!10527))) b!1155694))

(declare-fun order!6855 () Int)

(declare-fun order!6857 () Int)

(declare-fun dynLambda!4944 (Int Int) Int)

(declare-fun dynLambda!4945 (Int Int) Int)

(assert (=> b!1155696 (< (dynLambda!4944 order!6855 (toValue!3043 (transformation!1942 (h!16630 (rules!9415 thiss!10527))))) (dynLambda!4945 order!6857 lambda!46616))))

(declare-fun order!6859 () Int)

(declare-fun dynLambda!4946 (Int Int) Int)

(assert (=> b!1155696 (< (dynLambda!4946 order!6859 (toChars!2902 (transformation!1942 (h!16630 (rules!9415 thiss!10527))))) (dynLambda!4945 order!6857 lambda!46616))))

(assert (=> d!330330 true))

(declare-fun e!739120 () Bool)

(assert (=> d!330330 e!739120))

(declare-fun res!520010 () Bool)

(assert (=> d!330330 (=> (not res!520010) (not e!739120))))

(declare-fun lt!392932 () Bool)

(assert (=> d!330330 (= res!520010 (= lt!392932 (forall!2870 (list!4138 (tokens!1541 thiss!10527)) lambda!46616)))))

(assert (=> d!330330 (= lt!392932 (forall!2869 (tokens!1541 thiss!10527) lambda!46616))))

(assert (=> d!330330 (not (isEmpty!6921 (rules!9415 thiss!10527)))))

(assert (=> d!330330 (= (rulesProduceEachTokenIndividually!676 Lexer!1635 (rules!9415 thiss!10527) (tokens!1541 thiss!10527)) lt!392932)))

(declare-fun b!1155685 () Bool)

(assert (=> b!1155685 (= e!739120 (= lt!392932 (rulesProduceEachTokenIndividuallyList!505 Lexer!1635 (rules!9415 thiss!10527) (list!4138 (tokens!1541 thiss!10527)))))))

(assert (= (and d!330330 res!520010) b!1155685))

(assert (=> d!330330 m!1322543))

(assert (=> d!330330 m!1322543))

(declare-fun m!1322623 () Bool)

(assert (=> d!330330 m!1322623))

(declare-fun m!1322625 () Bool)

(assert (=> d!330330 m!1322625))

(assert (=> d!330330 m!1322551))

(assert (=> b!1155685 m!1322543))

(assert (=> b!1155685 m!1322543))

(declare-fun m!1322627 () Bool)

(assert (=> b!1155685 m!1322627))

(assert (=> b!1155636 d!330330))

(declare-fun d!330334 () Bool)

(declare-fun list!4140 (Conc!3647) List!11252)

(assert (=> d!330334 (= (list!4138 (tokens!1541 thiss!10527)) (list!4140 (c!194027 (tokens!1541 thiss!10527))))))

(declare-fun bs!282855 () Bool)

(assert (= bs!282855 d!330334))

(declare-fun m!1322629 () Bool)

(assert (=> bs!282855 m!1322629))

(assert (=> b!1155636 d!330334))

(declare-fun d!330336 () Bool)

(declare-fun lt!392935 () Bool)

(assert (=> d!330336 (= lt!392935 (forall!2870 (list!4138 (tokens!1541 thiss!10527)) lambda!46604))))

(declare-fun forall!2873 (Conc!3647 Int) Bool)

(assert (=> d!330336 (= lt!392935 (forall!2873 (c!194027 (tokens!1541 thiss!10527)) lambda!46604))))

(assert (=> d!330336 (= (forall!2869 (tokens!1541 thiss!10527) lambda!46604) lt!392935)))

(declare-fun bs!282856 () Bool)

(assert (= bs!282856 d!330336))

(assert (=> bs!282856 m!1322543))

(assert (=> bs!282856 m!1322543))

(declare-fun m!1322631 () Bool)

(assert (=> bs!282856 m!1322631))

(declare-fun m!1322633 () Bool)

(assert (=> bs!282856 m!1322633))

(assert (=> b!1155636 d!330336))

(declare-fun bs!282857 () Bool)

(declare-fun d!330338 () Bool)

(assert (= bs!282857 (and d!330338 b!1155636)))

(declare-fun lambda!46619 () Int)

(assert (=> bs!282857 (= lambda!46619 lambda!46604)))

(declare-fun bs!282858 () Bool)

(assert (= bs!282858 (and d!330338 d!330330)))

(assert (=> bs!282858 (= lambda!46619 lambda!46616)))

(declare-fun b!1155711 () Bool)

(declare-fun e!739142 () Bool)

(assert (=> b!1155711 (= e!739142 true)))

(declare-fun b!1155710 () Bool)

(declare-fun e!739141 () Bool)

(assert (=> b!1155710 (= e!739141 e!739142)))

(declare-fun b!1155709 () Bool)

(declare-fun e!739140 () Bool)

(assert (=> b!1155709 (= e!739140 e!739141)))

(assert (=> d!330338 e!739140))

(assert (= b!1155710 b!1155711))

(assert (= b!1155709 b!1155710))

(assert (= (and d!330338 (is-Cons!11229 (rules!9415 thiss!10527))) b!1155709))

(assert (=> b!1155711 (< (dynLambda!4944 order!6855 (toValue!3043 (transformation!1942 (h!16630 (rules!9415 thiss!10527))))) (dynLambda!4945 order!6857 lambda!46619))))

(assert (=> b!1155711 (< (dynLambda!4946 order!6859 (toChars!2902 (transformation!1942 (h!16630 (rules!9415 thiss!10527))))) (dynLambda!4945 order!6857 lambda!46619))))

(assert (=> d!330338 true))

(declare-fun lt!392940 () Bool)

(assert (=> d!330338 (= lt!392940 (forall!2870 lt!392907 lambda!46619))))

(declare-fun e!739138 () Bool)

(assert (=> d!330338 (= lt!392940 e!739138)))

(declare-fun res!520019 () Bool)

(assert (=> d!330338 (=> res!520019 e!739138)))

(assert (=> d!330338 (= res!520019 (not (is-Cons!11228 lt!392907)))))

(assert (=> d!330338 (not (isEmpty!6921 (rules!9415 thiss!10527)))))

(assert (=> d!330338 (= (rulesProduceEachTokenIndividuallyList!505 Lexer!1635 (rules!9415 thiss!10527) lt!392907) lt!392940)))

(declare-fun b!1155707 () Bool)

(declare-fun e!739139 () Bool)

(assert (=> b!1155707 (= e!739138 e!739139)))

(declare-fun res!520020 () Bool)

(assert (=> b!1155707 (=> (not res!520020) (not e!739139))))

(assert (=> b!1155707 (= res!520020 (rulesProduceIndividualToken!674 Lexer!1635 (rules!9415 thiss!10527) (h!16629 lt!392907)))))

(declare-fun b!1155708 () Bool)

(assert (=> b!1155708 (= e!739139 (rulesProduceEachTokenIndividuallyList!505 Lexer!1635 (rules!9415 thiss!10527) (t!108940 lt!392907)))))

(assert (= (and d!330338 (not res!520019)) b!1155707))

(assert (= (and b!1155707 res!520020) b!1155708))

(declare-fun m!1322635 () Bool)

(assert (=> d!330338 m!1322635))

(assert (=> d!330338 m!1322551))

(assert (=> b!1155707 m!1322565))

(assert (=> b!1155708 m!1322569))

(assert (=> b!1155636 d!330338))

(declare-fun d!330340 () Bool)

(declare-fun isBalanced!1028 (Conc!3647) Bool)

(assert (=> d!330340 (= (inv!14744 (tokens!1541 thiss!10527)) (isBalanced!1028 (c!194027 (tokens!1541 thiss!10527))))))

(declare-fun bs!282859 () Bool)

(assert (= bs!282859 d!330340))

(declare-fun m!1322637 () Bool)

(assert (=> bs!282859 m!1322637))

(assert (=> b!1155641 d!330340))

(declare-fun d!330342 () Bool)

(declare-fun res!520025 () Bool)

(declare-fun e!739147 () Bool)

(assert (=> d!330342 (=> res!520025 e!739147)))

(assert (=> d!330342 (= res!520025 (is-Nil!11228 lt!392909))))

(assert (=> d!330342 (= (forall!2870 lt!392909 lambda!46604) e!739147)))

(declare-fun b!1155716 () Bool)

(declare-fun e!739148 () Bool)

(assert (=> b!1155716 (= e!739147 e!739148)))

(declare-fun res!520026 () Bool)

(assert (=> b!1155716 (=> (not res!520026) (not e!739148))))

(declare-fun dynLambda!4947 (Int Token!3546) Bool)

(assert (=> b!1155716 (= res!520026 (dynLambda!4947 lambda!46604 (h!16629 lt!392909)))))

(declare-fun b!1155717 () Bool)

(assert (=> b!1155717 (= e!739148 (forall!2870 (t!108940 lt!392909) lambda!46604))))

(assert (= (and d!330342 (not res!520025)) b!1155716))

(assert (= (and b!1155716 res!520026) b!1155717))

(declare-fun b_lambda!34535 () Bool)

(assert (=> (not b_lambda!34535) (not b!1155716)))

(declare-fun m!1322639 () Bool)

(assert (=> b!1155716 m!1322639))

(declare-fun m!1322641 () Bool)

(assert (=> b!1155717 m!1322641))

(assert (=> b!1155638 d!330342))

(declare-fun d!330344 () Bool)

(declare-fun e!739164 () Bool)

(assert (=> d!330344 e!739164))

(declare-fun res!520036 () Bool)

(assert (=> d!330344 (=> (not res!520036) (not e!739164))))

(declare-fun slice!167 (Conc!3647 Int Int) Conc!3647)

(assert (=> d!330344 (= res!520036 (isBalanced!1028 (slice!167 (c!194027 (tokens!1541 thiss!10527)) from!787 to!267)))))

(declare-fun lt!392944 () BalanceConc!7316)

(assert (=> d!330344 (= lt!392944 (BalanceConc!7317 (slice!167 (c!194027 (tokens!1541 thiss!10527)) from!787 to!267)))))

(declare-fun e!739165 () Bool)

(assert (=> d!330344 e!739165))

(declare-fun res!520035 () Bool)

(assert (=> d!330344 (=> (not res!520035) (not e!739165))))

(assert (=> d!330344 (= res!520035 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> d!330344 (= (slice!163 (tokens!1541 thiss!10527) from!787 to!267) lt!392944)))

(declare-fun b!1155739 () Bool)

(declare-fun res!520037 () Bool)

(assert (=> b!1155739 (=> (not res!520037) (not e!739165))))

(assert (=> b!1155739 (= res!520037 (<= to!267 (size!8835 (tokens!1541 thiss!10527))))))

(declare-fun b!1155740 () Bool)

(assert (=> b!1155740 (= e!739165 (isBalanced!1028 (c!194027 (tokens!1541 thiss!10527))))))

(declare-fun b!1155741 () Bool)

(assert (=> b!1155741 (= e!739164 (= (list!4138 lt!392944) (slice!164 (list!4138 (tokens!1541 thiss!10527)) from!787 to!267)))))

(assert (= (and d!330344 res!520035) b!1155739))

(assert (= (and b!1155739 res!520037) b!1155740))

(assert (= (and d!330344 res!520036) b!1155741))

(declare-fun m!1322649 () Bool)

(assert (=> d!330344 m!1322649))

(assert (=> d!330344 m!1322649))

(declare-fun m!1322651 () Bool)

(assert (=> d!330344 m!1322651))

(assert (=> b!1155739 m!1322563))

(assert (=> b!1155740 m!1322637))

(declare-fun m!1322653 () Bool)

(assert (=> b!1155741 m!1322653))

(assert (=> b!1155741 m!1322543))

(assert (=> b!1155741 m!1322543))

(declare-fun m!1322655 () Bool)

(assert (=> b!1155741 m!1322655))

(assert (=> b!1155638 d!330344))

(declare-fun d!330348 () Bool)

(declare-fun take!39 (List!11252 Int) List!11252)

(declare-fun drop!441 (List!11252 Int) List!11252)

(assert (=> d!330348 (= (slice!164 lt!392907 from!787 to!267) (take!39 (drop!441 lt!392907 from!787) (- to!267 from!787)))))

(declare-fun bs!282861 () Bool)

(assert (= bs!282861 d!330348))

(declare-fun m!1322657 () Bool)

(assert (=> bs!282861 m!1322657))

(assert (=> bs!282861 m!1322657))

(declare-fun m!1322659 () Bool)

(assert (=> bs!282861 m!1322659))

(assert (=> b!1155638 d!330348))

(declare-fun d!330350 () Bool)

(assert (=> d!330350 (forall!2870 lt!392909 lambda!46604)))

(declare-fun lt!392947 () Unit!17259)

(declare-fun choose!7416 (List!11252 List!11252 Int) Unit!17259)

(assert (=> d!330350 (= lt!392947 (choose!7416 lt!392909 lt!392907 lambda!46604))))

(assert (=> d!330350 (forall!2870 lt!392907 lambda!46604)))

(assert (=> d!330350 (= (lemmaForallSubseq!90 lt!392909 lt!392907 lambda!46604) lt!392947)))

(declare-fun bs!282862 () Bool)

(assert (= bs!282862 d!330350))

(assert (=> bs!282862 m!1322559))

(declare-fun m!1322661 () Bool)

(assert (=> bs!282862 m!1322661))

(declare-fun m!1322663 () Bool)

(assert (=> bs!282862 m!1322663))

(assert (=> b!1155638 d!330350))

(declare-fun d!330352 () Bool)

(assert (=> d!330352 (subseq!198 (slice!164 lt!392907 from!787 to!267) lt!392907)))

(declare-fun lt!392950 () Unit!17259)

(declare-fun choose!7417 (List!11252 Int Int) Unit!17259)

(assert (=> d!330352 (= lt!392950 (choose!7417 lt!392907 from!787 to!267))))

(declare-fun e!739174 () Bool)

(assert (=> d!330352 e!739174))

(declare-fun res!520043 () Bool)

(assert (=> d!330352 (=> (not res!520043) (not e!739174))))

(assert (=> d!330352 (= res!520043 (and (>= from!787 0) (>= to!267 from!787)))))

(assert (=> d!330352 (= (lemmaSliceSubseq!39 lt!392907 from!787 to!267) lt!392950)))

(declare-fun b!1155753 () Bool)

(assert (=> b!1155753 (= e!739174 (<= to!267 (size!8838 lt!392907)))))

(assert (= (and d!330352 res!520043) b!1155753))

(assert (=> d!330352 m!1322547))

(assert (=> d!330352 m!1322547))

(assert (=> d!330352 m!1322549))

(declare-fun m!1322669 () Bool)

(assert (=> d!330352 m!1322669))

(declare-fun m!1322671 () Bool)

(assert (=> b!1155753 m!1322671))

(assert (=> b!1155638 d!330352))

(declare-fun d!330356 () Bool)

(assert (=> d!330356 (= (list!4138 (slice!163 (tokens!1541 thiss!10527) from!787 to!267)) (list!4140 (c!194027 (slice!163 (tokens!1541 thiss!10527) from!787 to!267))))))

(declare-fun bs!282863 () Bool)

(assert (= bs!282863 d!330356))

(declare-fun m!1322673 () Bool)

(assert (=> bs!282863 m!1322673))

(assert (=> b!1155638 d!330356))

(declare-fun d!330358 () Bool)

(assert (=> d!330358 (= (isEmpty!6921 (rules!9415 thiss!10527)) (is-Nil!11229 (rules!9415 thiss!10527)))))

(assert (=> b!1155638 d!330358))

(declare-fun e!739187 () Bool)

(declare-fun b!1155767 () Bool)

(assert (=> b!1155767 (= e!739187 (subseq!198 (slice!164 lt!392907 from!787 to!267) (t!108940 lt!392907)))))

(declare-fun e!739186 () Bool)

(declare-fun b!1155766 () Bool)

(assert (=> b!1155766 (= e!739186 (subseq!198 (t!108940 (slice!164 lt!392907 from!787 to!267)) (t!108940 lt!392907)))))

(declare-fun d!330362 () Bool)

(declare-fun res!520054 () Bool)

(declare-fun e!739188 () Bool)

(assert (=> d!330362 (=> res!520054 e!739188)))

(assert (=> d!330362 (= res!520054 (is-Nil!11228 (slice!164 lt!392907 from!787 to!267)))))

(assert (=> d!330362 (= (subseq!198 (slice!164 lt!392907 from!787 to!267) lt!392907) e!739188)))

(declare-fun b!1155764 () Bool)

(declare-fun e!739185 () Bool)

(assert (=> b!1155764 (= e!739188 e!739185)))

(declare-fun res!520055 () Bool)

(assert (=> b!1155764 (=> (not res!520055) (not e!739185))))

(assert (=> b!1155764 (= res!520055 (is-Cons!11228 lt!392907))))

(declare-fun b!1155765 () Bool)

(assert (=> b!1155765 (= e!739185 e!739187)))

(declare-fun res!520057 () Bool)

(assert (=> b!1155765 (=> res!520057 e!739187)))

(assert (=> b!1155765 (= res!520057 e!739186)))

(declare-fun res!520056 () Bool)

(assert (=> b!1155765 (=> (not res!520056) (not e!739186))))

(assert (=> b!1155765 (= res!520056 (= (h!16629 (slice!164 lt!392907 from!787 to!267)) (h!16629 lt!392907)))))

(assert (= (and d!330362 (not res!520054)) b!1155764))

(assert (= (and b!1155764 res!520055) b!1155765))

(assert (= (and b!1155765 res!520056) b!1155766))

(assert (= (and b!1155765 (not res!520057)) b!1155767))

(assert (=> b!1155767 m!1322547))

(declare-fun m!1322677 () Bool)

(assert (=> b!1155767 m!1322677))

(declare-fun m!1322679 () Bool)

(assert (=> b!1155766 m!1322679))

(assert (=> b!1155638 d!330362))

(declare-fun d!330364 () Bool)

(declare-fun res!520065 () Bool)

(declare-fun e!739192 () Bool)

(assert (=> d!330364 (=> (not res!520065) (not e!739192))))

(assert (=> d!330364 (= res!520065 (not (isEmpty!6921 (rules!9415 thiss!10527))))))

(assert (=> d!330364 (= (inv!14743 thiss!10527) e!739192)))

(declare-fun b!1155775 () Bool)

(declare-fun res!520066 () Bool)

(assert (=> b!1155775 (=> (not res!520066) (not e!739192))))

(assert (=> b!1155775 (= res!520066 (rulesInvariant!1511 Lexer!1635 (rules!9415 thiss!10527)))))

(declare-fun b!1155776 () Bool)

(declare-fun res!520067 () Bool)

(assert (=> b!1155776 (=> (not res!520067) (not e!739192))))

(assert (=> b!1155776 (= res!520067 (rulesProduceEachTokenIndividually!676 Lexer!1635 (rules!9415 thiss!10527) (tokens!1541 thiss!10527)))))

(declare-fun b!1155777 () Bool)

(declare-fun separableTokens!90 (LexerInterface!1637 BalanceConc!7316 List!11253) Bool)

(assert (=> b!1155777 (= e!739192 (separableTokens!90 Lexer!1635 (tokens!1541 thiss!10527) (rules!9415 thiss!10527)))))

(assert (= (and d!330364 res!520065) b!1155775))

(assert (= (and b!1155775 res!520066) b!1155776))

(assert (= (and b!1155776 res!520067) b!1155777))

(assert (=> d!330364 m!1322551))

(assert (=> b!1155775 m!1322571))

(assert (=> b!1155776 m!1322541))

(declare-fun m!1322685 () Bool)

(assert (=> b!1155777 m!1322685))

(assert (=> start!100792 d!330364))

(declare-fun d!330368 () Bool)

(declare-fun c!194037 () Bool)

(assert (=> d!330368 (= c!194037 (is-Node!3647 (c!194027 (tokens!1541 thiss!10527))))))

(declare-fun e!739199 () Bool)

(assert (=> d!330368 (= (inv!14742 (c!194027 (tokens!1541 thiss!10527))) e!739199)))

(declare-fun b!1155788 () Bool)

(declare-fun inv!14748 (Conc!3647) Bool)

(assert (=> b!1155788 (= e!739199 (inv!14748 (c!194027 (tokens!1541 thiss!10527))))))

(declare-fun b!1155789 () Bool)

(declare-fun e!739200 () Bool)

(assert (=> b!1155789 (= e!739199 e!739200)))

(declare-fun res!520074 () Bool)

(assert (=> b!1155789 (= res!520074 (not (is-Leaf!5629 (c!194027 (tokens!1541 thiss!10527)))))))

(assert (=> b!1155789 (=> res!520074 e!739200)))

(declare-fun b!1155790 () Bool)

(declare-fun inv!14749 (Conc!3647) Bool)

(assert (=> b!1155790 (= e!739200 (inv!14749 (c!194027 (tokens!1541 thiss!10527))))))

(assert (= (and d!330368 c!194037) b!1155788))

(assert (= (and d!330368 (not c!194037)) b!1155789))

(assert (= (and b!1155789 (not res!520074)) b!1155790))

(declare-fun m!1322687 () Bool)

(assert (=> b!1155788 m!1322687))

(declare-fun m!1322689 () Bool)

(assert (=> b!1155790 m!1322689))

(assert (=> b!1155637 d!330368))

(declare-fun d!330370 () Bool)

(declare-fun res!520079 () Bool)

(declare-fun e!739204 () Bool)

(assert (=> d!330370 (=> (not res!520079) (not e!739204))))

(declare-fun rulesValid!670 (LexerInterface!1637 List!11253) Bool)

(assert (=> d!330370 (= res!520079 (rulesValid!670 Lexer!1635 (rules!9415 thiss!10527)))))

(assert (=> d!330370 (= (rulesInvariant!1511 Lexer!1635 (rules!9415 thiss!10527)) e!739204)))

(declare-fun b!1155795 () Bool)

(declare-datatypes ((List!11258 0))(
  ( (Nil!11234) (Cons!11234 (h!16635 String!13630) (t!108966 List!11258)) )
))
(declare-fun noDuplicateTag!670 (LexerInterface!1637 List!11253 List!11258) Bool)

(assert (=> b!1155795 (= e!739204 (noDuplicateTag!670 Lexer!1635 (rules!9415 thiss!10527) Nil!11234))))

(assert (= (and d!330370 res!520079) b!1155795))

(declare-fun m!1322693 () Bool)

(assert (=> d!330370 m!1322693))

(declare-fun m!1322695 () Bool)

(assert (=> b!1155795 m!1322695))

(assert (=> b!1155639 d!330370))

(declare-fun d!330374 () Bool)

(declare-fun e!739218 () Bool)

(assert (=> d!330374 e!739218))

(declare-fun res!520089 () Bool)

(assert (=> d!330374 (=> (not res!520089) (not e!739218))))

(assert (=> d!330374 (= res!520089 (rulesInvariant!1511 Lexer!1635 (rules!9415 thiss!10527)))))

(declare-fun Unit!17264 () Unit!17259)

(assert (=> d!330374 (= (lemmaInvariant!129 thiss!10527) Unit!17264)))

(declare-fun b!1155811 () Bool)

(declare-fun res!520090 () Bool)

(assert (=> b!1155811 (=> (not res!520090) (not e!739218))))

(assert (=> b!1155811 (= res!520090 (rulesProduceEachTokenIndividually!676 Lexer!1635 (rules!9415 thiss!10527) (tokens!1541 thiss!10527)))))

(declare-fun b!1155812 () Bool)

(assert (=> b!1155812 (= e!739218 (separableTokens!90 Lexer!1635 (tokens!1541 thiss!10527) (rules!9415 thiss!10527)))))

(assert (= (and d!330374 res!520089) b!1155811))

(assert (= (and b!1155811 res!520090) b!1155812))

(assert (=> d!330374 m!1322571))

(assert (=> b!1155811 m!1322541))

(assert (=> b!1155812 m!1322685))

(assert (=> b!1155639 d!330374))

(declare-fun bs!282872 () Bool)

(declare-fun d!330384 () Bool)

(assert (= bs!282872 (and d!330384 b!1155636)))

(declare-fun lambda!46629 () Int)

(assert (=> bs!282872 (= lambda!46629 lambda!46604)))

(declare-fun bs!282873 () Bool)

(assert (= bs!282873 (and d!330384 d!330330)))

(assert (=> bs!282873 (= lambda!46629 lambda!46616)))

(declare-fun bs!282874 () Bool)

(assert (= bs!282874 (and d!330384 d!330338)))

(assert (=> bs!282874 (= lambda!46629 lambda!46619)))

(declare-fun b!1155817 () Bool)

(declare-fun e!739223 () Bool)

(assert (=> b!1155817 (= e!739223 true)))

(declare-fun b!1155816 () Bool)

(declare-fun e!739222 () Bool)

(assert (=> b!1155816 (= e!739222 e!739223)))

(declare-fun b!1155815 () Bool)

(declare-fun e!739221 () Bool)

(assert (=> b!1155815 (= e!739221 e!739222)))

(assert (=> d!330384 e!739221))

(assert (= b!1155816 b!1155817))

(assert (= b!1155815 b!1155816))

(assert (= (and d!330384 (is-Cons!11229 (rules!9415 thiss!10527))) b!1155815))

(assert (=> b!1155817 (< (dynLambda!4944 order!6855 (toValue!3043 (transformation!1942 (h!16630 (rules!9415 thiss!10527))))) (dynLambda!4945 order!6857 lambda!46629))))

(assert (=> b!1155817 (< (dynLambda!4946 order!6859 (toChars!2902 (transformation!1942 (h!16630 (rules!9415 thiss!10527))))) (dynLambda!4945 order!6857 lambda!46629))))

(assert (=> d!330384 true))

(declare-fun lt!392958 () Bool)

(assert (=> d!330384 (= lt!392958 (forall!2870 (t!108940 lt!392907) lambda!46629))))

(declare-fun e!739219 () Bool)

(assert (=> d!330384 (= lt!392958 e!739219)))

(declare-fun res!520091 () Bool)

(assert (=> d!330384 (=> res!520091 e!739219)))

(assert (=> d!330384 (= res!520091 (not (is-Cons!11228 (t!108940 lt!392907))))))

(assert (=> d!330384 (not (isEmpty!6921 (rules!9415 thiss!10527)))))

(assert (=> d!330384 (= (rulesProduceEachTokenIndividuallyList!505 Lexer!1635 (rules!9415 thiss!10527) (t!108940 lt!392907)) lt!392958)))

(declare-fun b!1155813 () Bool)

(declare-fun e!739220 () Bool)

(assert (=> b!1155813 (= e!739219 e!739220)))

(declare-fun res!520092 () Bool)

(assert (=> b!1155813 (=> (not res!520092) (not e!739220))))

(assert (=> b!1155813 (= res!520092 (rulesProduceIndividualToken!674 Lexer!1635 (rules!9415 thiss!10527) (h!16629 (t!108940 lt!392907))))))

(declare-fun b!1155814 () Bool)

(assert (=> b!1155814 (= e!739220 (rulesProduceEachTokenIndividuallyList!505 Lexer!1635 (rules!9415 thiss!10527) (t!108940 (t!108940 lt!392907))))))

(assert (= (and d!330384 (not res!520091)) b!1155813))

(assert (= (and b!1155813 res!520092) b!1155814))

(declare-fun m!1322711 () Bool)

(assert (=> d!330384 m!1322711))

(assert (=> d!330384 m!1322551))

(declare-fun m!1322713 () Bool)

(assert (=> b!1155813 m!1322713))

(declare-fun m!1322715 () Bool)

(assert (=> b!1155814 m!1322715))

(assert (=> b!1155635 d!330384))

(declare-fun d!330386 () Bool)

(declare-fun lt!392972 () Bool)

(declare-fun e!739234 () Bool)

(assert (=> d!330386 (= lt!392972 e!739234)))

(declare-fun res!520109 () Bool)

(assert (=> d!330386 (=> (not res!520109) (not e!739234))))

(declare-datatypes ((tuple2!11962 0))(
  ( (tuple2!11963 (_1!6828 BalanceConc!7316) (_2!6828 BalanceConc!7314)) )
))
(declare-fun lex!674 (LexerInterface!1637 List!11253 BalanceConc!7314) tuple2!11962)

(declare-fun print!611 (LexerInterface!1637 BalanceConc!7316) BalanceConc!7314)

(declare-fun singletonSeq!629 (Token!3546) BalanceConc!7316)

(assert (=> d!330386 (= res!520109 (= (list!4138 (_1!6828 (lex!674 Lexer!1635 (rules!9415 thiss!10527) (print!611 Lexer!1635 (singletonSeq!629 (h!16629 lt!392907)))))) (list!4138 (singletonSeq!629 (h!16629 lt!392907)))))))

(declare-fun e!739235 () Bool)

(assert (=> d!330386 (= lt!392972 e!739235)))

(declare-fun res!520108 () Bool)

(assert (=> d!330386 (=> (not res!520108) (not e!739235))))

(declare-fun lt!392973 () tuple2!11962)

(assert (=> d!330386 (= res!520108 (= (size!8835 (_1!6828 lt!392973)) 1))))

(assert (=> d!330386 (= lt!392973 (lex!674 Lexer!1635 (rules!9415 thiss!10527) (print!611 Lexer!1635 (singletonSeq!629 (h!16629 lt!392907)))))))

(assert (=> d!330386 (not (isEmpty!6921 (rules!9415 thiss!10527)))))

(assert (=> d!330386 (= (rulesProduceIndividualToken!674 Lexer!1635 (rules!9415 thiss!10527) (h!16629 lt!392907)) lt!392972)))

(declare-fun b!1155833 () Bool)

(declare-fun res!520110 () Bool)

(assert (=> b!1155833 (=> (not res!520110) (not e!739235))))

(declare-fun apply!2398 (BalanceConc!7316 Int) Token!3546)

(assert (=> b!1155833 (= res!520110 (= (apply!2398 (_1!6828 lt!392973) 0) (h!16629 lt!392907)))))

(declare-fun b!1155834 () Bool)

(declare-fun isEmpty!6923 (BalanceConc!7314) Bool)

(assert (=> b!1155834 (= e!739235 (isEmpty!6923 (_2!6828 lt!392973)))))

(declare-fun b!1155835 () Bool)

(assert (=> b!1155835 (= e!739234 (isEmpty!6923 (_2!6828 (lex!674 Lexer!1635 (rules!9415 thiss!10527) (print!611 Lexer!1635 (singletonSeq!629 (h!16629 lt!392907)))))))))

(assert (= (and d!330386 res!520108) b!1155833))

(assert (= (and b!1155833 res!520110) b!1155834))

(assert (= (and d!330386 res!520109) b!1155835))

(declare-fun m!1322739 () Bool)

(assert (=> d!330386 m!1322739))

(declare-fun m!1322741 () Bool)

(assert (=> d!330386 m!1322741))

(declare-fun m!1322743 () Bool)

(assert (=> d!330386 m!1322743))

(assert (=> d!330386 m!1322551))

(assert (=> d!330386 m!1322743))

(declare-fun m!1322745 () Bool)

(assert (=> d!330386 m!1322745))

(assert (=> d!330386 m!1322745))

(declare-fun m!1322747 () Bool)

(assert (=> d!330386 m!1322747))

(assert (=> d!330386 m!1322743))

(declare-fun m!1322749 () Bool)

(assert (=> d!330386 m!1322749))

(declare-fun m!1322751 () Bool)

(assert (=> b!1155833 m!1322751))

(declare-fun m!1322753 () Bool)

(assert (=> b!1155834 m!1322753))

(assert (=> b!1155835 m!1322743))

(assert (=> b!1155835 m!1322743))

(assert (=> b!1155835 m!1322745))

(assert (=> b!1155835 m!1322745))

(assert (=> b!1155835 m!1322747))

(declare-fun m!1322755 () Bool)

(assert (=> b!1155835 m!1322755))

(assert (=> b!1155640 d!330386))

(declare-fun b!1155846 () Bool)

(declare-fun b_free!27657 () Bool)

(declare-fun b_next!28361 () Bool)

(assert (=> b!1155846 (= b_free!27657 (not b_next!28361))))

(declare-fun tp!333114 () Bool)

(declare-fun b_and!80533 () Bool)

(assert (=> b!1155846 (= tp!333114 b_and!80533)))

(declare-fun b_free!27659 () Bool)

(declare-fun b_next!28363 () Bool)

(assert (=> b!1155846 (= b_free!27659 (not b_next!28363))))

(declare-fun tp!333112 () Bool)

(declare-fun b_and!80535 () Bool)

(assert (=> b!1155846 (= tp!333112 b_and!80535)))

(declare-fun e!739247 () Bool)

(assert (=> b!1155846 (= e!739247 (and tp!333114 tp!333112))))

(declare-fun b!1155845 () Bool)

(declare-fun tp!333111 () Bool)

(declare-fun e!739244 () Bool)

(declare-fun inv!14739 (String!13630) Bool)

(declare-fun inv!14750 (TokenValueInjection!3716) Bool)

(assert (=> b!1155845 (= e!739244 (and tp!333111 (inv!14739 (tag!2204 (h!16630 (rules!9415 thiss!10527)))) (inv!14750 (transformation!1942 (h!16630 (rules!9415 thiss!10527)))) e!739247))))

(declare-fun b!1155844 () Bool)

(declare-fun e!739246 () Bool)

(declare-fun tp!333113 () Bool)

(assert (=> b!1155844 (= e!739246 (and e!739244 tp!333113))))

(assert (=> b!1155641 (= tp!333096 e!739246)))

(assert (= b!1155845 b!1155846))

(assert (= b!1155844 b!1155845))

(assert (= (and b!1155641 (is-Cons!11229 (rules!9415 thiss!10527))) b!1155844))

(declare-fun m!1322757 () Bool)

(assert (=> b!1155845 m!1322757))

(declare-fun m!1322759 () Bool)

(assert (=> b!1155845 m!1322759))

(declare-fun b!1155849 () Bool)

(declare-fun e!739250 () Bool)

(assert (=> b!1155849 (= e!739250 true)))

(declare-fun b!1155848 () Bool)

(declare-fun e!739249 () Bool)

(assert (=> b!1155848 (= e!739249 e!739250)))

(declare-fun b!1155847 () Bool)

(declare-fun e!739248 () Bool)

(assert (=> b!1155847 (= e!739248 e!739249)))

(assert (=> b!1155649 e!739248))

(assert (= b!1155848 b!1155849))

(assert (= b!1155847 b!1155848))

(assert (= (and b!1155649 (is-Cons!11229 (rules!9415 thiss!10527))) b!1155847))

(assert (=> b!1155849 (< (dynLambda!4944 order!6855 (toValue!3043 (transformation!1942 (h!16630 (rules!9415 thiss!10527))))) (dynLambda!4945 order!6857 lambda!46604))))

(assert (=> b!1155849 (< (dynLambda!4946 order!6859 (toChars!2902 (transformation!1942 (h!16630 (rules!9415 thiss!10527))))) (dynLambda!4945 order!6857 lambda!46604))))

(declare-fun e!739256 () Bool)

(declare-fun tp!333123 () Bool)

(declare-fun tp!333121 () Bool)

(declare-fun b!1155858 () Bool)

(assert (=> b!1155858 (= e!739256 (and (inv!14742 (left!9786 (c!194027 (tokens!1541 thiss!10527)))) tp!333121 (inv!14742 (right!10116 (c!194027 (tokens!1541 thiss!10527)))) tp!333123))))

(declare-fun b!1155860 () Bool)

(declare-fun e!739255 () Bool)

(declare-fun tp!333122 () Bool)

(assert (=> b!1155860 (= e!739255 tp!333122)))

(declare-fun b!1155859 () Bool)

(declare-fun inv!14751 (IArray!7299) Bool)

(assert (=> b!1155859 (= e!739256 (and (inv!14751 (xs!6352 (c!194027 (tokens!1541 thiss!10527)))) e!739255))))

(assert (=> b!1155637 (= tp!333095 (and (inv!14742 (c!194027 (tokens!1541 thiss!10527))) e!739256))))

(assert (= (and b!1155637 (is-Node!3647 (c!194027 (tokens!1541 thiss!10527)))) b!1155858))

(assert (= b!1155859 b!1155860))

(assert (= (and b!1155637 (is-Leaf!5629 (c!194027 (tokens!1541 thiss!10527)))) b!1155859))

(declare-fun m!1322761 () Bool)

(assert (=> b!1155858 m!1322761))

(declare-fun m!1322763 () Bool)

(assert (=> b!1155858 m!1322763))

(declare-fun m!1322765 () Bool)

(assert (=> b!1155859 m!1322765))

(assert (=> b!1155637 m!1322575))

(declare-fun b!1155869 () Bool)

(declare-fun e!739261 () Bool)

(assert (=> b!1155869 (= e!739261 true)))

(declare-fun b!1155871 () Bool)

(declare-fun e!739262 () Bool)

(assert (=> b!1155871 (= e!739262 true)))

(declare-fun b!1155870 () Bool)

(assert (=> b!1155870 (= e!739261 e!739262)))

(assert (=> b!1155650 e!739261))

(assert (= (and b!1155650 (is-Node!3647 (c!194027 (tokens!1541 thiss!10527)))) b!1155869))

(assert (= b!1155870 b!1155871))

(assert (= (and b!1155650 (is-Leaf!5629 (c!194027 (tokens!1541 thiss!10527)))) b!1155870))

(declare-fun b_lambda!34537 () Bool)

(assert (= b_lambda!34535 (or b!1155636 b_lambda!34537)))

(declare-fun bs!282876 () Bool)

(declare-fun d!330392 () Bool)

(assert (= bs!282876 (and d!330392 b!1155636)))

(assert (=> bs!282876 (= (dynLambda!4947 lambda!46604 (h!16629 lt!392909)) (rulesProduceIndividualToken!674 Lexer!1635 (rules!9415 thiss!10527) (h!16629 lt!392909)))))

(declare-fun m!1322767 () Bool)

(assert (=> bs!282876 m!1322767))

(assert (=> b!1155716 d!330392))

(push 1)

(assert (not d!330384))

(assert (not d!330340))

(assert (not b!1155847))

(assert (not d!330338))

(assert (not d!330352))

(assert (not b!1155766))

(assert (not b!1155775))

(assert (not b!1155788))

(assert (not b!1155790))

(assert (not b!1155795))

(assert (not b!1155707))

(assert b_and!80533)

(assert (not d!330374))

(assert (not b!1155869))

(assert (not b!1155740))

(assert (not b!1155685))

(assert (not b!1155694))

(assert (not d!330364))

(assert (not b!1155717))

(assert (not b!1155834))

(assert (not b!1155844))

(assert (not d!330330))

(assert (not b_next!28361))

(assert (not b!1155833))

(assert (not bs!282876))

(assert (not d!330336))

(assert (not d!330344))

(assert (not b!1155709))

(assert (not b!1155777))

(assert (not b!1155860))

(assert (not d!330348))

(assert (not d!330350))

(assert (not b!1155776))

(assert (not b!1155815))

(assert (not b!1155767))

(assert (not b!1155845))

(assert (not b!1155812))

(assert (not d!330328))

(assert (not b!1155859))

(assert (not b_lambda!34537))

(assert (not b!1155811))

(assert (not b!1155814))

(assert (not b_next!28363))

(assert (not d!330386))

(assert b_and!80535)

(assert (not d!330334))

(assert (not b!1155739))

(assert (not b!1155835))

(assert (not b!1155708))

(assert (not d!330356))

(assert (not b!1155858))

(assert (not d!330370))

(assert (not b!1155813))

(assert (not b!1155871))

(assert (not b!1155637))

(assert (not b!1155741))

(assert (not b!1155753))

(check-sat)

(pop 1)

(push 1)

(assert b_and!80533)

(assert b_and!80535)

(assert (not b_next!28361))

(assert (not b_next!28363))

(check-sat)

(pop 1)

