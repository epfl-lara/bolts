; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!18074 () Bool)

(assert start!18074)

(declare-fun b!167310 () Bool)

(declare-fun b_free!6345 () Bool)

(declare-fun b_next!6345 () Bool)

(assert (=> b!167310 (= b_free!6345 (not b_next!6345))))

(declare-fun tp!83308 () Bool)

(declare-fun b_and!10825 () Bool)

(assert (=> b!167310 (= tp!83308 b_and!10825)))

(declare-fun b_free!6347 () Bool)

(declare-fun b_next!6347 () Bool)

(assert (=> b!167310 (= b_free!6347 (not b_next!6347))))

(declare-fun tp!83309 () Bool)

(declare-fun b_and!10827 () Bool)

(assert (=> b!167310 (= tp!83309 b_and!10827)))

(declare-fun b!167326 () Bool)

(declare-fun b_free!6349 () Bool)

(declare-fun b_next!6349 () Bool)

(assert (=> b!167326 (= b_free!6349 (not b_next!6349))))

(declare-fun tp!83310 () Bool)

(declare-fun b_and!10829 () Bool)

(assert (=> b!167326 (= tp!83310 b_and!10829)))

(declare-fun b_free!6351 () Bool)

(declare-fun b_next!6351 () Bool)

(assert (=> b!167326 (= b_free!6351 (not b_next!6351))))

(declare-fun tp!83306 () Bool)

(declare-fun b_and!10831 () Bool)

(assert (=> b!167326 (= tp!83306 b_and!10831)))

(declare-fun b!167324 () Bool)

(declare-fun b_free!6353 () Bool)

(declare-fun b_next!6353 () Bool)

(assert (=> b!167324 (= b_free!6353 (not b_next!6353))))

(declare-fun tp!83299 () Bool)

(declare-fun b_and!10833 () Bool)

(assert (=> b!167324 (= tp!83299 b_and!10833)))

(declare-fun b_free!6355 () Bool)

(declare-fun b_next!6355 () Bool)

(assert (=> b!167324 (= b_free!6355 (not b_next!6355))))

(declare-fun tp!83302 () Bool)

(declare-fun b_and!10835 () Bool)

(assert (=> b!167324 (= tp!83302 b_and!10835)))

(declare-fun bs!16244 () Bool)

(declare-fun b!167320 () Bool)

(declare-fun b!167307 () Bool)

(assert (= bs!16244 (and b!167320 b!167307)))

(declare-fun lambda!4664 () Int)

(declare-fun lambda!4663 () Int)

(assert (=> bs!16244 (not (= lambda!4664 lambda!4663))))

(declare-fun b!167340 () Bool)

(declare-fun e!100970 () Bool)

(assert (=> b!167340 (= e!100970 true)))

(declare-fun b!167339 () Bool)

(declare-fun e!100969 () Bool)

(assert (=> b!167339 (= e!100969 e!100970)))

(declare-fun b!167338 () Bool)

(declare-fun e!100968 () Bool)

(assert (=> b!167338 (= e!100968 e!100969)))

(assert (=> b!167320 e!100968))

(assert (= b!167339 b!167340))

(assert (= b!167338 b!167339))

(declare-datatypes ((List!2849 0))(
  ( (Nil!2839) (Cons!2839 (h!8236 (_ BitVec 16)) (t!26823 List!2849)) )
))
(declare-datatypes ((TokenValue!527 0))(
  ( (FloatLiteralValue!1054 (text!4134 List!2849)) (TokenValueExt!526 (__x!2541 Int)) (Broken!2635 (value!18682 List!2849)) (Object!536) (End!527) (Def!527) (Underscore!527) (Match!527) (Else!527) (Error!527) (Case!527) (If!527) (Extends!527) (Abstract!527) (Class!527) (Val!527) (DelimiterValue!1054 (del!587 List!2849)) (KeywordValue!533 (value!18683 List!2849)) (CommentValue!1054 (value!18684 List!2849)) (WhitespaceValue!1054 (value!18685 List!2849)) (IndentationValue!527 (value!18686 List!2849)) (String!3714) (Int32!527) (Broken!2636 (value!18687 List!2849)) (Boolean!528) (Unit!2445) (OperatorValue!530 (op!587 List!2849)) (IdentifierValue!1054 (value!18688 List!2849)) (IdentifierValue!1055 (value!18689 List!2849)) (WhitespaceValue!1055 (value!18690 List!2849)) (True!1054) (False!1054) (Broken!2637 (value!18691 List!2849)) (Broken!2638 (value!18692 List!2849)) (True!1055) (RightBrace!527) (RightBracket!527) (Colon!527) (Null!527) (Comma!527) (LeftBracket!527) (False!1055) (LeftBrace!527) (ImaginaryLiteralValue!527 (text!4135 List!2849)) (StringLiteralValue!1581 (value!18693 List!2849)) (EOFValue!527 (value!18694 List!2849)) (IdentValue!527 (value!18695 List!2849)) (DelimiterValue!1055 (value!18696 List!2849)) (DedentValue!527 (value!18697 List!2849)) (NewLineValue!527 (value!18698 List!2849)) (IntegerValue!1581 (value!18699 (_ BitVec 32)) (text!4136 List!2849)) (IntegerValue!1582 (value!18700 Int) (text!4137 List!2849)) (Times!527) (Or!527) (Equal!527) (Minus!527) (Broken!2639 (value!18701 List!2849)) (And!527) (Div!527) (LessEqual!527) (Mod!527) (Concat!1256) (Not!527) (Plus!527) (SpaceValue!527 (value!18702 List!2849)) (IntegerValue!1583 (value!18703 Int) (text!4138 List!2849)) (StringLiteralValue!1582 (text!4139 List!2849)) (FloatLiteralValue!1055 (text!4140 List!2849)) (BytesLiteralValue!527 (value!18704 List!2849)) (CommentValue!1055 (value!18705 List!2849)) (StringLiteralValue!1583 (value!18706 List!2849)) (ErrorTokenValue!527 (msg!588 List!2849)) )
))
(declare-datatypes ((C!2380 0))(
  ( (C!2381 (val!1076 Int)) )
))
(declare-datatypes ((List!2850 0))(
  ( (Nil!2840) (Cons!2840 (h!8237 C!2380) (t!26824 List!2850)) )
))
(declare-datatypes ((IArray!1665 0))(
  ( (IArray!1666 (innerList!890 List!2850)) )
))
(declare-datatypes ((Conc!832 0))(
  ( (Node!832 (left!2151 Conc!832) (right!2481 Conc!832) (csize!1894 Int) (cheight!1043 Int)) (Leaf!1424 (xs!3427 IArray!1665) (csize!1895 Int)) (Empty!832) )
))
(declare-datatypes ((BalanceConc!1672 0))(
  ( (BalanceConc!1673 (c!33386 Conc!832)) )
))
(declare-datatypes ((TokenValueInjection!826 0))(
  ( (TokenValueInjection!827 (toValue!1168 Int) (toChars!1027 Int)) )
))
(declare-datatypes ((String!3715 0))(
  ( (String!3716 (value!18707 String)) )
))
(declare-datatypes ((Regex!729 0))(
  ( (ElementMatch!729 (c!33387 C!2380)) (Concat!1257 (regOne!1970 Regex!729) (regTwo!1970 Regex!729)) (EmptyExpr!729) (Star!729 (reg!1058 Regex!729)) (EmptyLang!729) (Union!729 (regOne!1971 Regex!729) (regTwo!1971 Regex!729)) )
))
(declare-datatypes ((Rule!810 0))(
  ( (Rule!811 (regex!505 Regex!729) (tag!683 String!3715) (isSeparator!505 Bool) (transformation!505 TokenValueInjection!826)) )
))
(declare-datatypes ((List!2851 0))(
  ( (Nil!2841) (Cons!2841 (h!8238 Rule!810) (t!26825 List!2851)) )
))
(declare-fun rules!1920 () List!2851)

(get-info :version)

(assert (= (and b!167320 ((_ is Cons!2841) rules!1920)) b!167338))

(declare-fun order!1491 () Int)

(declare-fun order!1489 () Int)

(declare-fun dynLambda!1041 (Int Int) Int)

(declare-fun dynLambda!1042 (Int Int) Int)

(assert (=> b!167340 (< (dynLambda!1041 order!1489 (toValue!1168 (transformation!505 (h!8238 rules!1920)))) (dynLambda!1042 order!1491 lambda!4664))))

(declare-fun order!1493 () Int)

(declare-fun dynLambda!1043 (Int Int) Int)

(assert (=> b!167340 (< (dynLambda!1043 order!1493 (toChars!1027 (transformation!505 (h!8238 rules!1920)))) (dynLambda!1042 order!1491 lambda!4664))))

(assert (=> b!167320 true))

(declare-fun b!167303 () Bool)

(declare-datatypes ((Token!754 0))(
  ( (Token!755 (value!18708 TokenValue!527) (rule!1012 Rule!810) (size!2375 Int) (originalCharacters!548 List!2850)) )
))
(declare-datatypes ((List!2852 0))(
  ( (Nil!2842) (Cons!2842 (h!8239 Token!754) (t!26826 List!2852)) )
))
(declare-fun tokens!465 () List!2852)

(declare-fun tp!83307 () Bool)

(declare-fun e!100953 () Bool)

(declare-fun e!100951 () Bool)

(declare-fun inv!3668 (Token!754) Bool)

(assert (=> b!167303 (= e!100953 (and (inv!3668 (h!8239 tokens!465)) e!100951 tp!83307))))

(declare-fun b!167304 () Bool)

(declare-fun res!75573 () Bool)

(declare-fun e!100950 () Bool)

(assert (=> b!167304 (=> res!75573 e!100950)))

(declare-fun lt!52197 () List!2850)

(declare-datatypes ((LexerInterface!391 0))(
  ( (LexerInterfaceExt!388 (__x!2542 Int)) (Lexer!389) )
))
(declare-fun thiss!17480 () LexerInterface!391)

(declare-datatypes ((IArray!1667 0))(
  ( (IArray!1668 (innerList!891 List!2852)) )
))
(declare-datatypes ((Conc!833 0))(
  ( (Node!833 (left!2152 Conc!833) (right!2482 Conc!833) (csize!1896 Int) (cheight!1044 Int)) (Leaf!1425 (xs!3428 IArray!1667) (csize!1897 Int)) (Empty!833) )
))
(declare-datatypes ((BalanceConc!1674 0))(
  ( (BalanceConc!1675 (c!33388 Conc!833)) )
))
(declare-fun isEmpty!1175 (BalanceConc!1674) Bool)

(declare-datatypes ((tuple2!2712 0))(
  ( (tuple2!2713 (_1!1572 BalanceConc!1674) (_2!1572 BalanceConc!1672)) )
))
(declare-fun lex!191 (LexerInterface!391 List!2851 BalanceConc!1672) tuple2!2712)

(declare-fun seqFromList!387 (List!2850) BalanceConc!1672)

(assert (=> b!167304 (= res!75573 (isEmpty!1175 (_1!1572 (lex!191 thiss!17480 rules!1920 (seqFromList!387 lt!52197)))))))

(declare-fun b!167305 () Bool)

(declare-fun res!75579 () Bool)

(declare-fun e!100941 () Bool)

(assert (=> b!167305 (=> (not res!75579) (not e!100941))))

(declare-fun isEmpty!1176 (List!2851) Bool)

(assert (=> b!167305 (= res!75579 (not (isEmpty!1176 rules!1920)))))

(declare-fun b!167306 () Bool)

(declare-fun res!75576 () Bool)

(assert (=> b!167306 (=> res!75576 e!100950)))

(declare-fun rulesProduceIndividualToken!140 (LexerInterface!391 List!2851 Token!754) Bool)

(assert (=> b!167306 (= res!75576 (not (rulesProduceIndividualToken!140 thiss!17480 rules!1920 (h!8239 tokens!465))))))

(declare-fun res!75566 () Bool)

(declare-fun e!100944 () Bool)

(assert (=> b!167307 (=> (not res!75566) (not e!100944))))

(declare-fun forall!543 (List!2852 Int) Bool)

(assert (=> b!167307 (= res!75566 (forall!543 tokens!465 lambda!4663))))

(declare-fun b!167308 () Bool)

(declare-fun res!75578 () Bool)

(declare-fun e!100943 () Bool)

(assert (=> b!167308 (=> (not res!75578) (not e!100943))))

(declare-fun lt!52207 () List!2850)

(declare-fun lt!52198 () List!2850)

(declare-fun list!1031 (BalanceConc!1672) List!2850)

(assert (=> b!167308 (= res!75578 (= (list!1031 (seqFromList!387 lt!52207)) lt!52198))))

(declare-fun e!100958 () Bool)

(declare-fun separatorToken!170 () Token!754)

(declare-fun tp!83303 () Bool)

(declare-fun b!167309 () Bool)

(declare-fun e!100961 () Bool)

(declare-fun inv!3665 (String!3715) Bool)

(declare-fun inv!3669 (TokenValueInjection!826) Bool)

(assert (=> b!167309 (= e!100961 (and tp!83303 (inv!3665 (tag!683 (rule!1012 separatorToken!170))) (inv!3669 (transformation!505 (rule!1012 separatorToken!170))) e!100958))))

(assert (=> b!167310 (= e!100958 (and tp!83308 tp!83309))))

(declare-fun res!75577 () Bool)

(assert (=> start!18074 (=> (not res!75577) (not e!100941))))

(assert (=> start!18074 (= res!75577 ((_ is Lexer!389) thiss!17480))))

(assert (=> start!18074 e!100941))

(assert (=> start!18074 true))

(declare-fun e!100952 () Bool)

(assert (=> start!18074 e!100952))

(declare-fun e!100942 () Bool)

(assert (=> start!18074 (and (inv!3668 separatorToken!170) e!100942)))

(assert (=> start!18074 e!100953))

(declare-fun b!167311 () Bool)

(assert (=> b!167311 (= e!100941 e!100944)))

(declare-fun res!75568 () Bool)

(assert (=> b!167311 (=> (not res!75568) (not e!100944))))

(declare-fun lt!52203 () BalanceConc!1674)

(declare-fun rulesProduceEachTokenIndividually!183 (LexerInterface!391 List!2851 BalanceConc!1674) Bool)

(assert (=> b!167311 (= res!75568 (rulesProduceEachTokenIndividually!183 thiss!17480 rules!1920 lt!52203))))

(declare-fun seqFromList!388 (List!2852) BalanceConc!1674)

(assert (=> b!167311 (= lt!52203 (seqFromList!388 tokens!465))))

(declare-fun b!167312 () Bool)

(declare-fun res!75580 () Bool)

(assert (=> b!167312 (=> (not res!75580) (not e!100944))))

(assert (=> b!167312 (= res!75580 ((_ is Cons!2842) tokens!465))))

(declare-fun tp!83300 () Bool)

(declare-fun b!167313 () Bool)

(declare-fun e!100945 () Bool)

(declare-fun e!100955 () Bool)

(assert (=> b!167313 (= e!100955 (and tp!83300 (inv!3665 (tag!683 (h!8238 rules!1920))) (inv!3669 (transformation!505 (h!8238 rules!1920))) e!100945))))

(declare-fun b!167314 () Bool)

(declare-fun e!100960 () Bool)

(declare-fun e!100949 () Bool)

(declare-fun tp!83304 () Bool)

(assert (=> b!167314 (= e!100960 (and tp!83304 (inv!3665 (tag!683 (rule!1012 (h!8239 tokens!465)))) (inv!3669 (transformation!505 (rule!1012 (h!8239 tokens!465)))) e!100949))))

(declare-fun b!167315 () Bool)

(declare-fun res!75569 () Bool)

(assert (=> b!167315 (=> (not res!75569) (not e!100944))))

(declare-fun sepAndNonSepRulesDisjointChars!94 (List!2851 List!2851) Bool)

(assert (=> b!167315 (= res!75569 (sepAndNonSepRulesDisjointChars!94 rules!1920 rules!1920))))

(declare-fun b!167316 () Bool)

(declare-fun res!75581 () Bool)

(assert (=> b!167316 (=> (not res!75581) (not e!100941))))

(declare-fun rulesInvariant!357 (LexerInterface!391 List!2851) Bool)

(assert (=> b!167316 (= res!75581 (rulesInvariant!357 thiss!17480 rules!1920))))

(declare-fun lt!52205 () List!2850)

(declare-fun b!167317 () Bool)

(declare-fun e!100954 () Bool)

(declare-fun ++!646 (List!2850 List!2850) List!2850)

(assert (=> b!167317 (= e!100954 (not (= lt!52207 (++!646 lt!52197 lt!52205))))))

(declare-fun b!167318 () Bool)

(declare-fun res!75570 () Bool)

(declare-fun e!100947 () Bool)

(assert (=> b!167318 (=> res!75570 e!100947)))

(assert (=> b!167318 (= res!75570 e!100954)))

(declare-fun res!75571 () Bool)

(assert (=> b!167318 (=> (not res!75571) (not e!100954))))

(declare-fun lt!52208 () List!2850)

(assert (=> b!167318 (= res!75571 (not (= lt!52207 lt!52208)))))

(declare-fun b!167319 () Bool)

(declare-fun res!75567 () Bool)

(assert (=> b!167319 (=> (not res!75567) (not e!100944))))

(assert (=> b!167319 (= res!75567 (isSeparator!505 (rule!1012 separatorToken!170)))))

(assert (=> b!167320 (= e!100950 true)))

(declare-datatypes ((tuple2!2714 0))(
  ( (tuple2!2715 (_1!1573 Token!754) (_2!1573 BalanceConc!1672)) )
))
(declare-datatypes ((Option!287 0))(
  ( (None!286) (Some!286 (v!13711 tuple2!2714)) )
))
(declare-fun lt!52200 () Option!287)

(declare-fun maxPrefixZipperSequence!84 (LexerInterface!391 List!2851 BalanceConc!1672) Option!287)

(assert (=> b!167320 (= lt!52200 (maxPrefixZipperSequence!84 thiss!17480 rules!1920 (seqFromList!387 (originalCharacters!548 (h!8239 tokens!465)))))))

(declare-datatypes ((Unit!2446 0))(
  ( (Unit!2447) )
))
(declare-fun lt!52199 () Unit!2446)

(declare-fun forallContained!72 (List!2852 Int Token!754) Unit!2446)

(assert (=> b!167320 (= lt!52199 (forallContained!72 tokens!465 lambda!4664 (h!8239 tokens!465)))))

(assert (=> b!167320 (= lt!52197 (originalCharacters!548 (h!8239 tokens!465)))))

(declare-fun b!167321 () Bool)

(assert (=> b!167321 (= e!100947 e!100950)))

(declare-fun res!75582 () Bool)

(assert (=> b!167321 (=> res!75582 e!100950)))

(declare-fun lt!52206 () List!2850)

(declare-fun lt!52209 () List!2850)

(assert (=> b!167321 (= res!75582 (or (not (= lt!52206 lt!52209)) (not (= lt!52209 lt!52197)) (not (= lt!52206 lt!52197))))))

(declare-fun printList!75 (LexerInterface!391 List!2852) List!2850)

(assert (=> b!167321 (= lt!52209 (printList!75 thiss!17480 (Cons!2842 (h!8239 tokens!465) Nil!2842)))))

(declare-fun lt!52204 () BalanceConc!1672)

(assert (=> b!167321 (= lt!52206 (list!1031 lt!52204))))

(declare-fun lt!52201 () BalanceConc!1674)

(declare-fun printTailRec!85 (LexerInterface!391 BalanceConc!1674 Int BalanceConc!1672) BalanceConc!1672)

(assert (=> b!167321 (= lt!52204 (printTailRec!85 thiss!17480 lt!52201 0 (BalanceConc!1673 Empty!832)))))

(declare-fun print!122 (LexerInterface!391 BalanceConc!1674) BalanceConc!1672)

(assert (=> b!167321 (= lt!52204 (print!122 thiss!17480 lt!52201))))

(declare-fun singletonSeq!57 (Token!754) BalanceConc!1674)

(assert (=> b!167321 (= lt!52201 (singletonSeq!57 (h!8239 tokens!465)))))

(declare-fun tp!83311 () Bool)

(declare-fun b!167322 () Bool)

(declare-fun inv!21 (TokenValue!527) Bool)

(assert (=> b!167322 (= e!100951 (and (inv!21 (value!18708 (h!8239 tokens!465))) e!100960 tp!83311))))

(declare-fun b!167323 () Bool)

(assert (=> b!167323 (= e!100943 (not e!100947))))

(declare-fun res!75572 () Bool)

(assert (=> b!167323 (=> res!75572 e!100947)))

(declare-fun printWithSeparatorTokenWhenNeededRec!74 (LexerInterface!391 List!2851 BalanceConc!1674 Token!754 Int) BalanceConc!1672)

(assert (=> b!167323 (= res!75572 (not (= lt!52205 (list!1031 (printWithSeparatorTokenWhenNeededRec!74 thiss!17480 rules!1920 (seqFromList!388 (t!26826 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!52202 () List!2850)

(assert (=> b!167323 (= lt!52202 lt!52208)))

(declare-fun lt!52210 () List!2850)

(assert (=> b!167323 (= lt!52208 (++!646 lt!52197 lt!52210))))

(declare-fun lt!52212 () List!2850)

(assert (=> b!167323 (= lt!52202 (++!646 (++!646 lt!52197 lt!52212) lt!52205))))

(declare-fun lt!52211 () Unit!2446)

(declare-fun lemmaConcatAssociativity!190 (List!2850 List!2850 List!2850) Unit!2446)

(assert (=> b!167323 (= lt!52211 (lemmaConcatAssociativity!190 lt!52197 lt!52212 lt!52205))))

(declare-fun charsOf!160 (Token!754) BalanceConc!1672)

(assert (=> b!167323 (= lt!52197 (list!1031 (charsOf!160 (h!8239 tokens!465))))))

(assert (=> b!167323 (= lt!52210 (++!646 lt!52212 lt!52205))))

(declare-fun printWithSeparatorTokenWhenNeededList!84 (LexerInterface!391 List!2851 List!2852 Token!754) List!2850)

(assert (=> b!167323 (= lt!52205 (printWithSeparatorTokenWhenNeededList!84 thiss!17480 rules!1920 (t!26826 tokens!465) separatorToken!170))))

(assert (=> b!167323 (= lt!52212 (list!1031 (charsOf!160 separatorToken!170)))))

(assert (=> b!167324 (= e!100945 (and tp!83299 tp!83302))))

(declare-fun b!167325 () Bool)

(assert (=> b!167325 (= e!100944 e!100943)))

(declare-fun res!75574 () Bool)

(assert (=> b!167325 (=> (not res!75574) (not e!100943))))

(assert (=> b!167325 (= res!75574 (= lt!52207 lt!52198))))

(assert (=> b!167325 (= lt!52198 (list!1031 (printWithSeparatorTokenWhenNeededRec!74 thiss!17480 rules!1920 lt!52203 separatorToken!170 0)))))

(assert (=> b!167325 (= lt!52207 (printWithSeparatorTokenWhenNeededList!84 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> b!167326 (= e!100949 (and tp!83310 tp!83306))))

(declare-fun b!167327 () Bool)

(declare-fun res!75575 () Bool)

(assert (=> b!167327 (=> (not res!75575) (not e!100944))))

(assert (=> b!167327 (= res!75575 (rulesProduceIndividualToken!140 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!167328 () Bool)

(declare-fun tp!83301 () Bool)

(assert (=> b!167328 (= e!100942 (and (inv!21 (value!18708 separatorToken!170)) e!100961 tp!83301))))

(declare-fun b!167329 () Bool)

(declare-fun tp!83305 () Bool)

(assert (=> b!167329 (= e!100952 (and e!100955 tp!83305))))

(assert (= (and start!18074 res!75577) b!167305))

(assert (= (and b!167305 res!75579) b!167316))

(assert (= (and b!167316 res!75581) b!167311))

(assert (= (and b!167311 res!75568) b!167327))

(assert (= (and b!167327 res!75575) b!167319))

(assert (= (and b!167319 res!75567) b!167307))

(assert (= (and b!167307 res!75566) b!167315))

(assert (= (and b!167315 res!75569) b!167312))

(assert (= (and b!167312 res!75580) b!167325))

(assert (= (and b!167325 res!75574) b!167308))

(assert (= (and b!167308 res!75578) b!167323))

(assert (= (and b!167323 (not res!75572)) b!167318))

(assert (= (and b!167318 res!75571) b!167317))

(assert (= (and b!167318 (not res!75570)) b!167321))

(assert (= (and b!167321 (not res!75582)) b!167306))

(assert (= (and b!167306 (not res!75576)) b!167304))

(assert (= (and b!167304 (not res!75573)) b!167320))

(assert (= b!167313 b!167324))

(assert (= b!167329 b!167313))

(assert (= (and start!18074 ((_ is Cons!2841) rules!1920)) b!167329))

(assert (= b!167309 b!167310))

(assert (= b!167328 b!167309))

(assert (= start!18074 b!167328))

(assert (= b!167314 b!167326))

(assert (= b!167322 b!167314))

(assert (= b!167303 b!167322))

(assert (= (and start!18074 ((_ is Cons!2842) tokens!465)) b!167303))

(declare-fun m!162235 () Bool)

(assert (=> b!167320 m!162235))

(assert (=> b!167320 m!162235))

(declare-fun m!162237 () Bool)

(assert (=> b!167320 m!162237))

(declare-fun m!162239 () Bool)

(assert (=> b!167320 m!162239))

(declare-fun m!162241 () Bool)

(assert (=> b!167304 m!162241))

(assert (=> b!167304 m!162241))

(declare-fun m!162243 () Bool)

(assert (=> b!167304 m!162243))

(declare-fun m!162245 () Bool)

(assert (=> b!167304 m!162245))

(declare-fun m!162247 () Bool)

(assert (=> b!167314 m!162247))

(declare-fun m!162249 () Bool)

(assert (=> b!167314 m!162249))

(declare-fun m!162251 () Bool)

(assert (=> b!167327 m!162251))

(declare-fun m!162253 () Bool)

(assert (=> b!167309 m!162253))

(declare-fun m!162255 () Bool)

(assert (=> b!167309 m!162255))

(declare-fun m!162257 () Bool)

(assert (=> b!167315 m!162257))

(declare-fun m!162259 () Bool)

(assert (=> b!167313 m!162259))

(declare-fun m!162261 () Bool)

(assert (=> b!167313 m!162261))

(declare-fun m!162263 () Bool)

(assert (=> b!167317 m!162263))

(declare-fun m!162265 () Bool)

(assert (=> b!167306 m!162265))

(declare-fun m!162267 () Bool)

(assert (=> start!18074 m!162267))

(declare-fun m!162269 () Bool)

(assert (=> b!167307 m!162269))

(declare-fun m!162271 () Bool)

(assert (=> b!167328 m!162271))

(declare-fun m!162273 () Bool)

(assert (=> b!167308 m!162273))

(assert (=> b!167308 m!162273))

(declare-fun m!162275 () Bool)

(assert (=> b!167308 m!162275))

(declare-fun m!162277 () Bool)

(assert (=> b!167322 m!162277))

(declare-fun m!162279 () Bool)

(assert (=> b!167321 m!162279))

(declare-fun m!162281 () Bool)

(assert (=> b!167321 m!162281))

(declare-fun m!162283 () Bool)

(assert (=> b!167321 m!162283))

(declare-fun m!162285 () Bool)

(assert (=> b!167321 m!162285))

(declare-fun m!162287 () Bool)

(assert (=> b!167321 m!162287))

(declare-fun m!162289 () Bool)

(assert (=> b!167305 m!162289))

(declare-fun m!162291 () Bool)

(assert (=> b!167311 m!162291))

(declare-fun m!162293 () Bool)

(assert (=> b!167311 m!162293))

(declare-fun m!162295 () Bool)

(assert (=> b!167325 m!162295))

(assert (=> b!167325 m!162295))

(declare-fun m!162297 () Bool)

(assert (=> b!167325 m!162297))

(declare-fun m!162299 () Bool)

(assert (=> b!167325 m!162299))

(declare-fun m!162301 () Bool)

(assert (=> b!167323 m!162301))

(declare-fun m!162303 () Bool)

(assert (=> b!167323 m!162303))

(declare-fun m!162305 () Bool)

(assert (=> b!167323 m!162305))

(declare-fun m!162307 () Bool)

(assert (=> b!167323 m!162307))

(declare-fun m!162309 () Bool)

(assert (=> b!167323 m!162309))

(declare-fun m!162311 () Bool)

(assert (=> b!167323 m!162311))

(declare-fun m!162313 () Bool)

(assert (=> b!167323 m!162313))

(assert (=> b!167323 m!162311))

(assert (=> b!167323 m!162301))

(declare-fun m!162315 () Bool)

(assert (=> b!167323 m!162315))

(declare-fun m!162317 () Bool)

(assert (=> b!167323 m!162317))

(assert (=> b!167323 m!162317))

(declare-fun m!162319 () Bool)

(assert (=> b!167323 m!162319))

(assert (=> b!167323 m!162315))

(declare-fun m!162321 () Bool)

(assert (=> b!167323 m!162321))

(assert (=> b!167323 m!162303))

(declare-fun m!162323 () Bool)

(assert (=> b!167323 m!162323))

(declare-fun m!162325 () Bool)

(assert (=> b!167323 m!162325))

(declare-fun m!162327 () Bool)

(assert (=> b!167303 m!162327))

(declare-fun m!162329 () Bool)

(assert (=> b!167316 m!162329))

(check-sat (not b!167303) (not b!167313) (not b!167321) (not start!18074) (not b_next!6349) (not b!167309) b_and!10825 (not b!167308) (not b!167304) (not b!167315) (not b!167322) (not b!167316) b_and!10827 (not b_next!6351) (not b_next!6353) (not b!167338) (not b_next!6355) (not b_next!6347) b_and!10829 (not b!167311) (not b!167305) (not b!167327) b_and!10833 (not b!167329) b_and!10831 (not b_next!6345) (not b!167328) (not b!167320) (not b!167317) (not b!167325) (not b!167307) b_and!10835 (not b!167323) (not b!167306) (not b!167314))
(check-sat (not b_next!6349) (not b_next!6353) b_and!10825 b_and!10833 b_and!10835 b_and!10827 (not b_next!6351) (not b_next!6355) (not b_next!6347) b_and!10829 b_and!10831 (not b_next!6345))
