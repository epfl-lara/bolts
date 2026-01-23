; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28350 () Bool)

(assert start!28350)

(declare-fun b!264598 () Bool)

(declare-fun b_free!9857 () Bool)

(declare-fun b_next!9857 () Bool)

(assert (=> b!264598 (= b_free!9857 (not b_next!9857))))

(declare-fun tp!101333 () Bool)

(declare-fun b_and!20717 () Bool)

(assert (=> b!264598 (= tp!101333 b_and!20717)))

(declare-fun b_free!9859 () Bool)

(declare-fun b_next!9859 () Bool)

(assert (=> b!264598 (= b_free!9859 (not b_next!9859))))

(declare-fun tp!101335 () Bool)

(declare-fun b_and!20719 () Bool)

(assert (=> b!264598 (= tp!101335 b_and!20719)))

(declare-fun b!264593 () Bool)

(declare-fun b_free!9861 () Bool)

(declare-fun b_next!9861 () Bool)

(assert (=> b!264593 (= b_free!9861 (not b_next!9861))))

(declare-fun tp!101331 () Bool)

(declare-fun b_and!20721 () Bool)

(assert (=> b!264593 (= tp!101331 b_and!20721)))

(declare-fun b_free!9863 () Bool)

(declare-fun b_next!9863 () Bool)

(assert (=> b!264593 (= b_free!9863 (not b_next!9863))))

(declare-fun tp!101329 () Bool)

(declare-fun b_and!20723 () Bool)

(assert (=> b!264593 (= tp!101329 b_and!20723)))

(declare-fun b!264597 () Bool)

(declare-fun b_free!9865 () Bool)

(declare-fun b_next!9865 () Bool)

(assert (=> b!264597 (= b_free!9865 (not b_next!9865))))

(declare-fun tp!101339 () Bool)

(declare-fun b_and!20725 () Bool)

(assert (=> b!264597 (= tp!101339 b_and!20725)))

(declare-fun b_free!9867 () Bool)

(declare-fun b_next!9867 () Bool)

(assert (=> b!264597 (= b_free!9867 (not b_next!9867))))

(declare-fun tp!101334 () Bool)

(declare-fun b_and!20727 () Bool)

(assert (=> b!264597 (= tp!101334 b_and!20727)))

(declare-fun b!264577 () Bool)

(declare-fun res!121417 () Bool)

(declare-fun e!164384 () Bool)

(assert (=> b!264577 (=> (not res!121417) (not e!164384))))

(declare-datatypes ((C!2816 0))(
  ( (C!2817 (val!1294 Int)) )
))
(declare-datatypes ((List!3799 0))(
  ( (Nil!3789) (Cons!3789 (h!9186 C!2816) (t!37441 List!3799)) )
))
(declare-fun lt!108114 () List!3799)

(declare-fun lt!108122 () List!3799)

(declare-datatypes ((IArray!2537 0))(
  ( (IArray!2538 (innerList!1326 List!3799)) )
))
(declare-datatypes ((Conc!1268 0))(
  ( (Node!1268 (left!3116 Conc!1268) (right!3446 Conc!1268) (csize!2766 Int) (cheight!1479 Int)) (Leaf!1969 (xs!3867 IArray!2537) (csize!2767 Int)) (Empty!1268) )
))
(declare-datatypes ((BalanceConc!2544 0))(
  ( (BalanceConc!2545 (c!50020 Conc!1268)) )
))
(declare-fun list!1535 (BalanceConc!2544) List!3799)

(declare-fun seqFromList!813 (List!3799) BalanceConc!2544)

(assert (=> b!264577 (= res!121417 (= (list!1535 (seqFromList!813 lt!108114)) lt!108122))))

(declare-fun b!264578 () Bool)

(declare-fun e!164373 () Bool)

(assert (=> b!264578 (= e!164384 (not e!164373))))

(declare-fun res!121424 () Bool)

(assert (=> b!264578 (=> res!121424 e!164373)))

(declare-fun lt!108116 () List!3799)

(declare-datatypes ((List!3800 0))(
  ( (Nil!3790) (Cons!3790 (h!9187 (_ BitVec 16)) (t!37442 List!3800)) )
))
(declare-datatypes ((TokenValue!745 0))(
  ( (FloatLiteralValue!1490 (text!5660 List!3800)) (TokenValueExt!744 (__x!2977 Int)) (Broken!3725 (value!24895 List!3800)) (Object!754) (End!745) (Def!745) (Underscore!745) (Match!745) (Else!745) (Error!745) (Case!745) (If!745) (Extends!745) (Abstract!745) (Class!745) (Val!745) (DelimiterValue!1490 (del!805 List!3800)) (KeywordValue!751 (value!24896 List!3800)) (CommentValue!1490 (value!24897 List!3800)) (WhitespaceValue!1490 (value!24898 List!3800)) (IndentationValue!745 (value!24899 List!3800)) (String!4804) (Int32!745) (Broken!3726 (value!24900 List!3800)) (Boolean!746) (Unit!4759) (OperatorValue!748 (op!805 List!3800)) (IdentifierValue!1490 (value!24901 List!3800)) (IdentifierValue!1491 (value!24902 List!3800)) (WhitespaceValue!1491 (value!24903 List!3800)) (True!1490) (False!1490) (Broken!3727 (value!24904 List!3800)) (Broken!3728 (value!24905 List!3800)) (True!1491) (RightBrace!745) (RightBracket!745) (Colon!745) (Null!745) (Comma!745) (LeftBracket!745) (False!1491) (LeftBrace!745) (ImaginaryLiteralValue!745 (text!5661 List!3800)) (StringLiteralValue!2235 (value!24906 List!3800)) (EOFValue!745 (value!24907 List!3800)) (IdentValue!745 (value!24908 List!3800)) (DelimiterValue!1491 (value!24909 List!3800)) (DedentValue!745 (value!24910 List!3800)) (NewLineValue!745 (value!24911 List!3800)) (IntegerValue!2235 (value!24912 (_ BitVec 32)) (text!5662 List!3800)) (IntegerValue!2236 (value!24913 Int) (text!5663 List!3800)) (Times!745) (Or!745) (Equal!745) (Minus!745) (Broken!3729 (value!24914 List!3800)) (And!745) (Div!745) (LessEqual!745) (Mod!745) (Concat!1692) (Not!745) (Plus!745) (SpaceValue!745 (value!24915 List!3800)) (IntegerValue!2237 (value!24916 Int) (text!5664 List!3800)) (StringLiteralValue!2236 (text!5665 List!3800)) (FloatLiteralValue!1491 (text!5666 List!3800)) (BytesLiteralValue!745 (value!24917 List!3800)) (CommentValue!1491 (value!24918 List!3800)) (StringLiteralValue!2237 (value!24919 List!3800)) (ErrorTokenValue!745 (msg!806 List!3800)) )
))
(declare-datatypes ((TokenValueInjection!1262 0))(
  ( (TokenValueInjection!1263 (toValue!1450 Int) (toChars!1309 Int)) )
))
(declare-datatypes ((Regex!947 0))(
  ( (ElementMatch!947 (c!50021 C!2816)) (Concat!1693 (regOne!2406 Regex!947) (regTwo!2406 Regex!947)) (EmptyExpr!947) (Star!947 (reg!1276 Regex!947)) (EmptyLang!947) (Union!947 (regOne!2407 Regex!947) (regTwo!2407 Regex!947)) )
))
(declare-datatypes ((String!4805 0))(
  ( (String!4806 (value!24920 String)) )
))
(declare-datatypes ((Rule!1246 0))(
  ( (Rule!1247 (regex!723 Regex!947) (tag!933 String!4805) (isSeparator!723 Bool) (transformation!723 TokenValueInjection!1262)) )
))
(declare-datatypes ((Token!1190 0))(
  ( (Token!1191 (value!24921 TokenValue!745) (rule!1308 Rule!1246) (size!3011 Int) (originalCharacters!766 List!3799)) )
))
(declare-fun separatorToken!170 () Token!1190)

(declare-datatypes ((List!3801 0))(
  ( (Nil!3791) (Cons!3791 (h!9188 Token!1190) (t!37443 List!3801)) )
))
(declare-fun tokens!465 () List!3801)

(declare-datatypes ((List!3802 0))(
  ( (Nil!3792) (Cons!3792 (h!9189 Rule!1246) (t!37444 List!3802)) )
))
(declare-fun rules!1920 () List!3802)

(declare-datatypes ((LexerInterface!609 0))(
  ( (LexerInterfaceExt!606 (__x!2978 Int)) (Lexer!607) )
))
(declare-fun thiss!17480 () LexerInterface!609)

(declare-datatypes ((IArray!2539 0))(
  ( (IArray!2540 (innerList!1327 List!3801)) )
))
(declare-datatypes ((Conc!1269 0))(
  ( (Node!1269 (left!3117 Conc!1269) (right!3447 Conc!1269) (csize!2768 Int) (cheight!1480 Int)) (Leaf!1970 (xs!3868 IArray!2539) (csize!2769 Int)) (Empty!1269) )
))
(declare-datatypes ((BalanceConc!2546 0))(
  ( (BalanceConc!2547 (c!50022 Conc!1269)) )
))
(declare-fun printWithSeparatorTokenWhenNeededRec!284 (LexerInterface!609 List!3802 BalanceConc!2546 Token!1190 Int) BalanceConc!2544)

(declare-fun seqFromList!814 (List!3801) BalanceConc!2546)

(assert (=> b!264578 (= res!121424 (not (= lt!108116 (list!1535 (printWithSeparatorTokenWhenNeededRec!284 thiss!17480 rules!1920 (seqFromList!814 (t!37443 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!108111 () List!3799)

(declare-fun lt!108120 () List!3799)

(assert (=> b!264578 (= lt!108111 lt!108120)))

(declare-fun lt!108117 () List!3799)

(declare-fun lt!108118 () List!3799)

(declare-fun ++!980 (List!3799 List!3799) List!3799)

(assert (=> b!264578 (= lt!108120 (++!980 lt!108117 lt!108118))))

(declare-fun lt!108119 () List!3799)

(assert (=> b!264578 (= lt!108111 (++!980 (++!980 lt!108117 lt!108119) lt!108116))))

(declare-datatypes ((Unit!4760 0))(
  ( (Unit!4761) )
))
(declare-fun lt!108113 () Unit!4760)

(declare-fun lemmaConcatAssociativity!420 (List!3799 List!3799 List!3799) Unit!4760)

(assert (=> b!264578 (= lt!108113 (lemmaConcatAssociativity!420 lt!108117 lt!108119 lt!108116))))

(declare-fun charsOf!368 (Token!1190) BalanceConc!2544)

(assert (=> b!264578 (= lt!108117 (list!1535 (charsOf!368 (h!9188 tokens!465))))))

(assert (=> b!264578 (= lt!108118 (++!980 lt!108119 lt!108116))))

(declare-fun printWithSeparatorTokenWhenNeededList!292 (LexerInterface!609 List!3802 List!3801 Token!1190) List!3799)

(assert (=> b!264578 (= lt!108116 (printWithSeparatorTokenWhenNeededList!292 thiss!17480 rules!1920 (t!37443 tokens!465) separatorToken!170))))

(assert (=> b!264578 (= lt!108119 (list!1535 (charsOf!368 separatorToken!170)))))

(declare-fun b!264579 () Bool)

(declare-fun res!121419 () Bool)

(declare-fun e!164392 () Bool)

(assert (=> b!264579 (=> (not res!121419) (not e!164392))))

(declare-fun rulesProduceIndividualToken!358 (LexerInterface!609 List!3802 Token!1190) Bool)

(assert (=> b!264579 (= res!121419 (rulesProduceIndividualToken!358 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!264580 () Bool)

(declare-fun res!121418 () Bool)

(assert (=> b!264580 (=> (not res!121418) (not e!164392))))

(assert (=> b!264580 (= res!121418 (isSeparator!723 (rule!1308 separatorToken!170)))))

(declare-fun b!264581 () Bool)

(declare-fun res!121425 () Bool)

(assert (=> b!264581 (=> (not res!121425) (not e!164392))))

(get-info :version)

(assert (=> b!264581 (= res!121425 ((_ is Cons!3791) tokens!465))))

(declare-fun b!264582 () Bool)

(declare-fun e!164388 () Bool)

(assert (=> b!264582 (= e!164388 e!164392)))

(declare-fun res!121420 () Bool)

(assert (=> b!264582 (=> (not res!121420) (not e!164392))))

(declare-fun lt!108115 () BalanceConc!2546)

(declare-fun rulesProduceEachTokenIndividually!401 (LexerInterface!609 List!3802 BalanceConc!2546) Bool)

(assert (=> b!264582 (= res!121420 (rulesProduceEachTokenIndividually!401 thiss!17480 rules!1920 lt!108115))))

(assert (=> b!264582 (= lt!108115 (seqFromList!814 tokens!465))))

(declare-fun e!164387 () Bool)

(declare-fun e!164380 () Bool)

(declare-fun tp!101332 () Bool)

(declare-fun b!264583 () Bool)

(declare-fun inv!4678 (String!4805) Bool)

(declare-fun inv!4681 (TokenValueInjection!1262) Bool)

(assert (=> b!264583 (= e!164380 (and tp!101332 (inv!4678 (tag!933 (h!9189 rules!1920))) (inv!4681 (transformation!723 (h!9189 rules!1920))) e!164387))))

(declare-fun b!264584 () Bool)

(declare-fun e!164382 () Bool)

(declare-fun tp!101340 () Bool)

(declare-fun e!164378 () Bool)

(assert (=> b!264584 (= e!164378 (and tp!101340 (inv!4678 (tag!933 (rule!1308 separatorToken!170))) (inv!4681 (transformation!723 (rule!1308 separatorToken!170))) e!164382))))

(declare-fun b!264585 () Bool)

(declare-fun lt!108110 () List!3799)

(declare-fun lt!108121 () List!3799)

(assert (=> b!264585 (= e!164373 (or (not (= lt!108110 lt!108121)) (= lt!108121 lt!108117)))))

(declare-fun printList!285 (LexerInterface!609 List!3801) List!3799)

(assert (=> b!264585 (= lt!108121 (printList!285 thiss!17480 (Cons!3791 (h!9188 tokens!465) Nil!3791)))))

(declare-fun lt!108112 () BalanceConc!2544)

(assert (=> b!264585 (= lt!108110 (list!1535 lt!108112))))

(declare-fun lt!108109 () BalanceConc!2546)

(declare-fun printTailRec!297 (LexerInterface!609 BalanceConc!2546 Int BalanceConc!2544) BalanceConc!2544)

(assert (=> b!264585 (= lt!108112 (printTailRec!297 thiss!17480 lt!108109 0 (BalanceConc!2545 Empty!1268)))))

(declare-fun print!334 (LexerInterface!609 BalanceConc!2546) BalanceConc!2544)

(assert (=> b!264585 (= lt!108112 (print!334 thiss!17480 lt!108109))))

(declare-fun singletonSeq!269 (Token!1190) BalanceConc!2546)

(assert (=> b!264585 (= lt!108109 (singletonSeq!269 (h!9188 tokens!465)))))

(declare-fun b!264586 () Bool)

(declare-fun e!164390 () Bool)

(assert (=> b!264586 (= e!164390 (not (= lt!108114 (++!980 lt!108117 lt!108116))))))

(declare-fun res!121416 () Bool)

(assert (=> start!28350 (=> (not res!121416) (not e!164388))))

(assert (=> start!28350 (= res!121416 ((_ is Lexer!607) thiss!17480))))

(assert (=> start!28350 e!164388))

(assert (=> start!28350 true))

(declare-fun e!164377 () Bool)

(assert (=> start!28350 e!164377))

(declare-fun e!164381 () Bool)

(declare-fun inv!4682 (Token!1190) Bool)

(assert (=> start!28350 (and (inv!4682 separatorToken!170) e!164381)))

(declare-fun e!164389 () Bool)

(assert (=> start!28350 e!164389))

(declare-fun b!264587 () Bool)

(declare-fun res!121421 () Bool)

(assert (=> b!264587 (=> (not res!121421) (not e!164388))))

(declare-fun isEmpty!2382 (List!3802) Bool)

(assert (=> b!264587 (= res!121421 (not (isEmpty!2382 rules!1920)))))

(declare-fun b!264588 () Bool)

(declare-fun res!121428 () Bool)

(assert (=> b!264588 (=> (not res!121428) (not e!164392))))

(declare-fun lambda!8902 () Int)

(declare-fun forall!939 (List!3801 Int) Bool)

(assert (=> b!264588 (= res!121428 (forall!939 tokens!465 lambda!8902))))

(declare-fun b!264589 () Bool)

(declare-fun res!121415 () Bool)

(assert (=> b!264589 (=> (not res!121415) (not e!164388))))

(declare-fun rulesInvariant!575 (LexerInterface!609 List!3802) Bool)

(assert (=> b!264589 (= res!121415 (rulesInvariant!575 thiss!17480 rules!1920))))

(declare-fun b!264590 () Bool)

(declare-fun res!121423 () Bool)

(assert (=> b!264590 (=> res!121423 e!164373)))

(assert (=> b!264590 (= res!121423 e!164390)))

(declare-fun res!121427 () Bool)

(assert (=> b!264590 (=> (not res!121427) (not e!164390))))

(assert (=> b!264590 (= res!121427 (not (= lt!108114 lt!108120)))))

(declare-fun e!164374 () Bool)

(declare-fun tp!101336 () Bool)

(declare-fun b!264591 () Bool)

(declare-fun e!164386 () Bool)

(assert (=> b!264591 (= e!164374 (and tp!101336 (inv!4678 (tag!933 (rule!1308 (h!9188 tokens!465)))) (inv!4681 (transformation!723 (rule!1308 (h!9188 tokens!465)))) e!164386))))

(declare-fun tp!101338 () Bool)

(declare-fun b!264592 () Bool)

(declare-fun inv!21 (TokenValue!745) Bool)

(assert (=> b!264592 (= e!164381 (and (inv!21 (value!24921 separatorToken!170)) e!164378 tp!101338))))

(assert (=> b!264593 (= e!164386 (and tp!101331 tp!101329))))

(declare-fun b!264594 () Bool)

(declare-fun tp!101341 () Bool)

(assert (=> b!264594 (= e!164377 (and e!164380 tp!101341))))

(declare-fun b!264595 () Bool)

(declare-fun tp!101330 () Bool)

(declare-fun e!164379 () Bool)

(assert (=> b!264595 (= e!164389 (and (inv!4682 (h!9188 tokens!465)) e!164379 tp!101330))))

(declare-fun b!264596 () Bool)

(assert (=> b!264596 (= e!164392 e!164384)))

(declare-fun res!121422 () Bool)

(assert (=> b!264596 (=> (not res!121422) (not e!164384))))

(assert (=> b!264596 (= res!121422 (= lt!108114 lt!108122))))

(assert (=> b!264596 (= lt!108122 (list!1535 (printWithSeparatorTokenWhenNeededRec!284 thiss!17480 rules!1920 lt!108115 separatorToken!170 0)))))

(assert (=> b!264596 (= lt!108114 (printWithSeparatorTokenWhenNeededList!292 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> b!264597 (= e!164382 (and tp!101339 tp!101334))))

(assert (=> b!264598 (= e!164387 (and tp!101333 tp!101335))))

(declare-fun b!264599 () Bool)

(declare-fun tp!101337 () Bool)

(assert (=> b!264599 (= e!164379 (and (inv!21 (value!24921 (h!9188 tokens!465))) e!164374 tp!101337))))

(declare-fun b!264600 () Bool)

(declare-fun res!121426 () Bool)

(assert (=> b!264600 (=> (not res!121426) (not e!164392))))

(declare-fun sepAndNonSepRulesDisjointChars!312 (List!3802 List!3802) Bool)

(assert (=> b!264600 (= res!121426 (sepAndNonSepRulesDisjointChars!312 rules!1920 rules!1920))))

(assert (= (and start!28350 res!121416) b!264587))

(assert (= (and b!264587 res!121421) b!264589))

(assert (= (and b!264589 res!121415) b!264582))

(assert (= (and b!264582 res!121420) b!264579))

(assert (= (and b!264579 res!121419) b!264580))

(assert (= (and b!264580 res!121418) b!264588))

(assert (= (and b!264588 res!121428) b!264600))

(assert (= (and b!264600 res!121426) b!264581))

(assert (= (and b!264581 res!121425) b!264596))

(assert (= (and b!264596 res!121422) b!264577))

(assert (= (and b!264577 res!121417) b!264578))

(assert (= (and b!264578 (not res!121424)) b!264590))

(assert (= (and b!264590 res!121427) b!264586))

(assert (= (and b!264590 (not res!121423)) b!264585))

(assert (= b!264583 b!264598))

(assert (= b!264594 b!264583))

(assert (= (and start!28350 ((_ is Cons!3792) rules!1920)) b!264594))

(assert (= b!264584 b!264597))

(assert (= b!264592 b!264584))

(assert (= start!28350 b!264592))

(assert (= b!264591 b!264593))

(assert (= b!264599 b!264591))

(assert (= b!264595 b!264599))

(assert (= (and start!28350 ((_ is Cons!3791) tokens!465)) b!264595))

(declare-fun m!330065 () Bool)

(assert (=> b!264592 m!330065))

(declare-fun m!330067 () Bool)

(assert (=> start!28350 m!330067))

(declare-fun m!330069 () Bool)

(assert (=> b!264582 m!330069))

(declare-fun m!330071 () Bool)

(assert (=> b!264582 m!330071))

(declare-fun m!330073 () Bool)

(assert (=> b!264586 m!330073))

(declare-fun m!330075 () Bool)

(assert (=> b!264584 m!330075))

(declare-fun m!330077 () Bool)

(assert (=> b!264584 m!330077))

(declare-fun m!330079 () Bool)

(assert (=> b!264588 m!330079))

(declare-fun m!330081 () Bool)

(assert (=> b!264589 m!330081))

(declare-fun m!330083 () Bool)

(assert (=> b!264585 m!330083))

(declare-fun m!330085 () Bool)

(assert (=> b!264585 m!330085))

(declare-fun m!330087 () Bool)

(assert (=> b!264585 m!330087))

(declare-fun m!330089 () Bool)

(assert (=> b!264585 m!330089))

(declare-fun m!330091 () Bool)

(assert (=> b!264585 m!330091))

(declare-fun m!330093 () Bool)

(assert (=> b!264600 m!330093))

(declare-fun m!330095 () Bool)

(assert (=> b!264587 m!330095))

(declare-fun m!330097 () Bool)

(assert (=> b!264579 m!330097))

(declare-fun m!330099 () Bool)

(assert (=> b!264596 m!330099))

(assert (=> b!264596 m!330099))

(declare-fun m!330101 () Bool)

(assert (=> b!264596 m!330101))

(declare-fun m!330103 () Bool)

(assert (=> b!264596 m!330103))

(declare-fun m!330105 () Bool)

(assert (=> b!264599 m!330105))

(declare-fun m!330107 () Bool)

(assert (=> b!264591 m!330107))

(declare-fun m!330109 () Bool)

(assert (=> b!264591 m!330109))

(declare-fun m!330111 () Bool)

(assert (=> b!264595 m!330111))

(declare-fun m!330113 () Bool)

(assert (=> b!264583 m!330113))

(declare-fun m!330115 () Bool)

(assert (=> b!264583 m!330115))

(declare-fun m!330117 () Bool)

(assert (=> b!264577 m!330117))

(assert (=> b!264577 m!330117))

(declare-fun m!330119 () Bool)

(assert (=> b!264577 m!330119))

(declare-fun m!330121 () Bool)

(assert (=> b!264578 m!330121))

(declare-fun m!330123 () Bool)

(assert (=> b!264578 m!330123))

(declare-fun m!330125 () Bool)

(assert (=> b!264578 m!330125))

(declare-fun m!330127 () Bool)

(assert (=> b!264578 m!330127))

(assert (=> b!264578 m!330125))

(declare-fun m!330129 () Bool)

(assert (=> b!264578 m!330129))

(declare-fun m!330131 () Bool)

(assert (=> b!264578 m!330131))

(declare-fun m!330133 () Bool)

(assert (=> b!264578 m!330133))

(declare-fun m!330135 () Bool)

(assert (=> b!264578 m!330135))

(declare-fun m!330137 () Bool)

(assert (=> b!264578 m!330137))

(assert (=> b!264578 m!330137))

(declare-fun m!330139 () Bool)

(assert (=> b!264578 m!330139))

(declare-fun m!330141 () Bool)

(assert (=> b!264578 m!330141))

(declare-fun m!330143 () Bool)

(assert (=> b!264578 m!330143))

(assert (=> b!264578 m!330129))

(declare-fun m!330145 () Bool)

(assert (=> b!264578 m!330145))

(assert (=> b!264578 m!330121))

(assert (=> b!264578 m!330141))

(check-sat (not b!264594) (not b!264586) (not start!28350) (not b_next!9859) (not b!264587) (not b_next!9857) (not b_next!9865) (not b!264588) (not b_next!9863) (not b!264579) (not b!264591) (not b!264577) (not b!264592) (not b!264582) (not b!264583) (not b!264578) b_and!20721 b_and!20717 b_and!20725 (not b!264599) b_and!20723 (not b!264595) b_and!20727 (not b!264596) (not b!264600) (not b_next!9861) b_and!20719 (not b!264584) (not b!264589) (not b_next!9867) (not b!264585))
(check-sat b_and!20723 b_and!20727 (not b_next!9859) (not b_next!9857) (not b_next!9865) (not b_next!9863) b_and!20721 b_and!20717 b_and!20725 (not b_next!9867) (not b_next!9861) b_and!20719)
(get-model)

(declare-fun d!75995 () Bool)

(declare-fun lt!108129 () Bool)

(declare-fun e!164413 () Bool)

(assert (=> d!75995 (= lt!108129 e!164413)))

(declare-fun res!121454 () Bool)

(assert (=> d!75995 (=> (not res!121454) (not e!164413))))

(declare-fun list!1538 (BalanceConc!2546) List!3801)

(declare-datatypes ((tuple2!4244 0))(
  ( (tuple2!4245 (_1!2338 BalanceConc!2546) (_2!2338 BalanceConc!2544)) )
))
(declare-fun lex!402 (LexerInterface!609 List!3802 BalanceConc!2544) tuple2!4244)

(assert (=> d!75995 (= res!121454 (= (list!1538 (_1!2338 (lex!402 thiss!17480 rules!1920 (print!334 thiss!17480 (singletonSeq!269 separatorToken!170))))) (list!1538 (singletonSeq!269 separatorToken!170))))))

(declare-fun e!164412 () Bool)

(assert (=> d!75995 (= lt!108129 e!164412)))

(declare-fun res!121453 () Bool)

(assert (=> d!75995 (=> (not res!121453) (not e!164412))))

(declare-fun lt!108130 () tuple2!4244)

(declare-fun size!3014 (BalanceConc!2546) Int)

(assert (=> d!75995 (= res!121453 (= (size!3014 (_1!2338 lt!108130)) 1))))

(assert (=> d!75995 (= lt!108130 (lex!402 thiss!17480 rules!1920 (print!334 thiss!17480 (singletonSeq!269 separatorToken!170))))))

(assert (=> d!75995 (not (isEmpty!2382 rules!1920))))

(assert (=> d!75995 (= (rulesProduceIndividualToken!358 thiss!17480 rules!1920 separatorToken!170) lt!108129)))

(declare-fun b!264633 () Bool)

(declare-fun res!121452 () Bool)

(assert (=> b!264633 (=> (not res!121452) (not e!164412))))

(declare-fun apply!749 (BalanceConc!2546 Int) Token!1190)

(assert (=> b!264633 (= res!121452 (= (apply!749 (_1!2338 lt!108130) 0) separatorToken!170))))

(declare-fun b!264634 () Bool)

(declare-fun isEmpty!2384 (BalanceConc!2544) Bool)

(assert (=> b!264634 (= e!164412 (isEmpty!2384 (_2!2338 lt!108130)))))

(declare-fun b!264635 () Bool)

(assert (=> b!264635 (= e!164413 (isEmpty!2384 (_2!2338 (lex!402 thiss!17480 rules!1920 (print!334 thiss!17480 (singletonSeq!269 separatorToken!170))))))))

(assert (= (and d!75995 res!121453) b!264633))

(assert (= (and b!264633 res!121452) b!264634))

(assert (= (and d!75995 res!121454) b!264635))

(declare-fun m!330165 () Bool)

(assert (=> d!75995 m!330165))

(declare-fun m!330167 () Bool)

(assert (=> d!75995 m!330167))

(declare-fun m!330169 () Bool)

(assert (=> d!75995 m!330169))

(declare-fun m!330171 () Bool)

(assert (=> d!75995 m!330171))

(declare-fun m!330173 () Bool)

(assert (=> d!75995 m!330173))

(assert (=> d!75995 m!330173))

(declare-fun m!330175 () Bool)

(assert (=> d!75995 m!330175))

(assert (=> d!75995 m!330095))

(assert (=> d!75995 m!330173))

(assert (=> d!75995 m!330167))

(declare-fun m!330177 () Bool)

(assert (=> b!264633 m!330177))

(declare-fun m!330179 () Bool)

(assert (=> b!264634 m!330179))

(assert (=> b!264635 m!330173))

(assert (=> b!264635 m!330173))

(assert (=> b!264635 m!330167))

(assert (=> b!264635 m!330167))

(assert (=> b!264635 m!330169))

(declare-fun m!330181 () Bool)

(assert (=> b!264635 m!330181))

(assert (=> b!264579 d!75995))

(declare-fun d!75997 () Bool)

(declare-fun res!121459 () Bool)

(declare-fun e!164418 () Bool)

(assert (=> d!75997 (=> res!121459 e!164418)))

(assert (=> d!75997 (= res!121459 (not ((_ is Cons!3792) rules!1920)))))

(assert (=> d!75997 (= (sepAndNonSepRulesDisjointChars!312 rules!1920 rules!1920) e!164418)))

(declare-fun b!264640 () Bool)

(declare-fun e!164419 () Bool)

(assert (=> b!264640 (= e!164418 e!164419)))

(declare-fun res!121460 () Bool)

(assert (=> b!264640 (=> (not res!121460) (not e!164419))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!111 (Rule!1246 List!3802) Bool)

(assert (=> b!264640 (= res!121460 (ruleDisjointCharsFromAllFromOtherType!111 (h!9189 rules!1920) rules!1920))))

(declare-fun b!264641 () Bool)

(assert (=> b!264641 (= e!164419 (sepAndNonSepRulesDisjointChars!312 rules!1920 (t!37444 rules!1920)))))

(assert (= (and d!75997 (not res!121459)) b!264640))

(assert (= (and b!264640 res!121460) b!264641))

(declare-fun m!330183 () Bool)

(assert (=> b!264640 m!330183))

(declare-fun m!330185 () Bool)

(assert (=> b!264641 m!330185))

(assert (=> b!264600 d!75997))

(declare-fun d!75999 () Bool)

(declare-fun res!121465 () Bool)

(declare-fun e!164422 () Bool)

(assert (=> d!75999 (=> (not res!121465) (not e!164422))))

(declare-fun isEmpty!2385 (List!3799) Bool)

(assert (=> d!75999 (= res!121465 (not (isEmpty!2385 (originalCharacters!766 separatorToken!170))))))

(assert (=> d!75999 (= (inv!4682 separatorToken!170) e!164422)))

(declare-fun b!264646 () Bool)

(declare-fun res!121466 () Bool)

(assert (=> b!264646 (=> (not res!121466) (not e!164422))))

(declare-fun dynLambda!1927 (Int TokenValue!745) BalanceConc!2544)

(assert (=> b!264646 (= res!121466 (= (originalCharacters!766 separatorToken!170) (list!1535 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))) (value!24921 separatorToken!170)))))))

(declare-fun b!264647 () Bool)

(declare-fun size!3015 (List!3799) Int)

(assert (=> b!264647 (= e!164422 (= (size!3011 separatorToken!170) (size!3015 (originalCharacters!766 separatorToken!170))))))

(assert (= (and d!75999 res!121465) b!264646))

(assert (= (and b!264646 res!121466) b!264647))

(declare-fun b_lambda!8225 () Bool)

(assert (=> (not b_lambda!8225) (not b!264646)))

(declare-fun t!37455 () Bool)

(declare-fun tb!14475 () Bool)

(assert (=> (and b!264598 (= (toChars!1309 (transformation!723 (h!9189 rules!1920))) (toChars!1309 (transformation!723 (rule!1308 separatorToken!170)))) t!37455) tb!14475))

(declare-fun b!264652 () Bool)

(declare-fun e!164425 () Bool)

(declare-fun tp!101347 () Bool)

(declare-fun inv!4685 (Conc!1268) Bool)

(assert (=> b!264652 (= e!164425 (and (inv!4685 (c!50020 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))) (value!24921 separatorToken!170)))) tp!101347))))

(declare-fun result!18012 () Bool)

(declare-fun inv!4686 (BalanceConc!2544) Bool)

(assert (=> tb!14475 (= result!18012 (and (inv!4686 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))) (value!24921 separatorToken!170))) e!164425))))

(assert (= tb!14475 b!264652))

(declare-fun m!330187 () Bool)

(assert (=> b!264652 m!330187))

(declare-fun m!330189 () Bool)

(assert (=> tb!14475 m!330189))

(assert (=> b!264646 t!37455))

(declare-fun b_and!20735 () Bool)

(assert (= b_and!20719 (and (=> t!37455 result!18012) b_and!20735)))

(declare-fun tb!14477 () Bool)

(declare-fun t!37457 () Bool)

(assert (=> (and b!264593 (= (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))) (toChars!1309 (transformation!723 (rule!1308 separatorToken!170)))) t!37457) tb!14477))

(declare-fun result!18016 () Bool)

(assert (= result!18016 result!18012))

(assert (=> b!264646 t!37457))

(declare-fun b_and!20737 () Bool)

(assert (= b_and!20723 (and (=> t!37457 result!18016) b_and!20737)))

(declare-fun t!37459 () Bool)

(declare-fun tb!14479 () Bool)

(assert (=> (and b!264597 (= (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))) (toChars!1309 (transformation!723 (rule!1308 separatorToken!170)))) t!37459) tb!14479))

(declare-fun result!18018 () Bool)

(assert (= result!18018 result!18012))

(assert (=> b!264646 t!37459))

(declare-fun b_and!20739 () Bool)

(assert (= b_and!20727 (and (=> t!37459 result!18018) b_and!20739)))

(declare-fun m!330191 () Bool)

(assert (=> d!75999 m!330191))

(declare-fun m!330193 () Bool)

(assert (=> b!264646 m!330193))

(assert (=> b!264646 m!330193))

(declare-fun m!330195 () Bool)

(assert (=> b!264646 m!330195))

(declare-fun m!330197 () Bool)

(assert (=> b!264647 m!330197))

(assert (=> start!28350 d!75999))

(declare-fun b!264663 () Bool)

(declare-fun e!164433 () Bool)

(declare-fun inv!16 (TokenValue!745) Bool)

(assert (=> b!264663 (= e!164433 (inv!16 (value!24921 (h!9188 tokens!465))))))

(declare-fun b!264664 () Bool)

(declare-fun e!164434 () Bool)

(assert (=> b!264664 (= e!164433 e!164434)))

(declare-fun c!50033 () Bool)

(assert (=> b!264664 (= c!50033 ((_ is IntegerValue!2236) (value!24921 (h!9188 tokens!465))))))

(declare-fun d!76001 () Bool)

(declare-fun c!50034 () Bool)

(assert (=> d!76001 (= c!50034 ((_ is IntegerValue!2235) (value!24921 (h!9188 tokens!465))))))

(assert (=> d!76001 (= (inv!21 (value!24921 (h!9188 tokens!465))) e!164433)))

(declare-fun b!264665 () Bool)

(declare-fun e!164432 () Bool)

(declare-fun inv!15 (TokenValue!745) Bool)

(assert (=> b!264665 (= e!164432 (inv!15 (value!24921 (h!9188 tokens!465))))))

(declare-fun b!264666 () Bool)

(declare-fun res!121469 () Bool)

(assert (=> b!264666 (=> res!121469 e!164432)))

(assert (=> b!264666 (= res!121469 (not ((_ is IntegerValue!2237) (value!24921 (h!9188 tokens!465)))))))

(assert (=> b!264666 (= e!164434 e!164432)))

(declare-fun b!264667 () Bool)

(declare-fun inv!17 (TokenValue!745) Bool)

(assert (=> b!264667 (= e!164434 (inv!17 (value!24921 (h!9188 tokens!465))))))

(assert (= (and d!76001 c!50034) b!264663))

(assert (= (and d!76001 (not c!50034)) b!264664))

(assert (= (and b!264664 c!50033) b!264667))

(assert (= (and b!264664 (not c!50033)) b!264666))

(assert (= (and b!264666 (not res!121469)) b!264665))

(declare-fun m!330199 () Bool)

(assert (=> b!264663 m!330199))

(declare-fun m!330201 () Bool)

(assert (=> b!264665 m!330201))

(declare-fun m!330203 () Bool)

(assert (=> b!264667 m!330203))

(assert (=> b!264599 d!76001))

(declare-fun d!76003 () Bool)

(declare-fun res!121474 () Bool)

(declare-fun e!164439 () Bool)

(assert (=> d!76003 (=> res!121474 e!164439)))

(assert (=> d!76003 (= res!121474 ((_ is Nil!3791) tokens!465))))

(assert (=> d!76003 (= (forall!939 tokens!465 lambda!8902) e!164439)))

(declare-fun b!264672 () Bool)

(declare-fun e!164440 () Bool)

(assert (=> b!264672 (= e!164439 e!164440)))

(declare-fun res!121475 () Bool)

(assert (=> b!264672 (=> (not res!121475) (not e!164440))))

(declare-fun dynLambda!1928 (Int Token!1190) Bool)

(assert (=> b!264672 (= res!121475 (dynLambda!1928 lambda!8902 (h!9188 tokens!465)))))

(declare-fun b!264673 () Bool)

(assert (=> b!264673 (= e!164440 (forall!939 (t!37443 tokens!465) lambda!8902))))

(assert (= (and d!76003 (not res!121474)) b!264672))

(assert (= (and b!264672 res!121475) b!264673))

(declare-fun b_lambda!8227 () Bool)

(assert (=> (not b_lambda!8227) (not b!264672)))

(declare-fun m!330205 () Bool)

(assert (=> b!264672 m!330205))

(declare-fun m!330207 () Bool)

(assert (=> b!264673 m!330207))

(assert (=> b!264588 d!76003))

(declare-fun d!76005 () Bool)

(declare-fun res!121478 () Bool)

(declare-fun e!164443 () Bool)

(assert (=> d!76005 (=> (not res!121478) (not e!164443))))

(declare-fun rulesValid!219 (LexerInterface!609 List!3802) Bool)

(assert (=> d!76005 (= res!121478 (rulesValid!219 thiss!17480 rules!1920))))

(assert (=> d!76005 (= (rulesInvariant!575 thiss!17480 rules!1920) e!164443)))

(declare-fun b!264676 () Bool)

(declare-datatypes ((List!3804 0))(
  ( (Nil!3794) (Cons!3794 (h!9191 String!4805) (t!37510 List!3804)) )
))
(declare-fun noDuplicateTag!219 (LexerInterface!609 List!3802 List!3804) Bool)

(assert (=> b!264676 (= e!164443 (noDuplicateTag!219 thiss!17480 rules!1920 Nil!3794))))

(assert (= (and d!76005 res!121478) b!264676))

(declare-fun m!330209 () Bool)

(assert (=> d!76005 m!330209))

(declare-fun m!330211 () Bool)

(assert (=> b!264676 m!330211))

(assert (=> b!264589 d!76005))

(declare-fun d!76007 () Bool)

(declare-fun fromListB!308 (List!3801) BalanceConc!2546)

(assert (=> d!76007 (= (seqFromList!814 (t!37443 tokens!465)) (fromListB!308 (t!37443 tokens!465)))))

(declare-fun bs!28949 () Bool)

(assert (= bs!28949 d!76007))

(declare-fun m!330213 () Bool)

(assert (=> bs!28949 m!330213))

(assert (=> b!264578 d!76007))

(declare-fun d!76009 () Bool)

(declare-fun list!1539 (Conc!1268) List!3799)

(assert (=> d!76009 (= (list!1535 (charsOf!368 separatorToken!170)) (list!1539 (c!50020 (charsOf!368 separatorToken!170))))))

(declare-fun bs!28950 () Bool)

(assert (= bs!28950 d!76009))

(declare-fun m!330215 () Bool)

(assert (=> bs!28950 m!330215))

(assert (=> b!264578 d!76009))

(declare-fun d!76011 () Bool)

(assert (=> d!76011 (= (list!1535 (printWithSeparatorTokenWhenNeededRec!284 thiss!17480 rules!1920 (seqFromList!814 (t!37443 tokens!465)) separatorToken!170 0)) (list!1539 (c!50020 (printWithSeparatorTokenWhenNeededRec!284 thiss!17480 rules!1920 (seqFromList!814 (t!37443 tokens!465)) separatorToken!170 0))))))

(declare-fun bs!28951 () Bool)

(assert (= bs!28951 d!76011))

(declare-fun m!330217 () Bool)

(assert (=> bs!28951 m!330217))

(assert (=> b!264578 d!76011))

(declare-fun d!76013 () Bool)

(assert (=> d!76013 (= (++!980 (++!980 lt!108117 lt!108119) lt!108116) (++!980 lt!108117 (++!980 lt!108119 lt!108116)))))

(declare-fun lt!108133 () Unit!4760)

(declare-fun choose!2424 (List!3799 List!3799 List!3799) Unit!4760)

(assert (=> d!76013 (= lt!108133 (choose!2424 lt!108117 lt!108119 lt!108116))))

(assert (=> d!76013 (= (lemmaConcatAssociativity!420 lt!108117 lt!108119 lt!108116) lt!108133)))

(declare-fun bs!28952 () Bool)

(assert (= bs!28952 d!76013))

(assert (=> bs!28952 m!330133))

(assert (=> bs!28952 m!330133))

(declare-fun m!330219 () Bool)

(assert (=> bs!28952 m!330219))

(declare-fun m!330221 () Bool)

(assert (=> bs!28952 m!330221))

(assert (=> bs!28952 m!330129))

(assert (=> bs!28952 m!330129))

(assert (=> bs!28952 m!330145))

(assert (=> b!264578 d!76013))

(declare-fun e!164449 () Bool)

(declare-fun lt!108136 () List!3799)

(declare-fun b!264688 () Bool)

(assert (=> b!264688 (= e!164449 (or (not (= lt!108116 Nil!3789)) (= lt!108136 (++!980 lt!108117 lt!108119))))))

(declare-fun e!164448 () List!3799)

(declare-fun b!264686 () Bool)

(assert (=> b!264686 (= e!164448 (Cons!3789 (h!9186 (++!980 lt!108117 lt!108119)) (++!980 (t!37441 (++!980 lt!108117 lt!108119)) lt!108116)))))

(declare-fun b!264687 () Bool)

(declare-fun res!121483 () Bool)

(assert (=> b!264687 (=> (not res!121483) (not e!164449))))

(assert (=> b!264687 (= res!121483 (= (size!3015 lt!108136) (+ (size!3015 (++!980 lt!108117 lt!108119)) (size!3015 lt!108116))))))

(declare-fun d!76015 () Bool)

(assert (=> d!76015 e!164449))

(declare-fun res!121484 () Bool)

(assert (=> d!76015 (=> (not res!121484) (not e!164449))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!539 (List!3799) (InoxSet C!2816))

(assert (=> d!76015 (= res!121484 (= (content!539 lt!108136) ((_ map or) (content!539 (++!980 lt!108117 lt!108119)) (content!539 lt!108116))))))

(assert (=> d!76015 (= lt!108136 e!164448)))

(declare-fun c!50037 () Bool)

(assert (=> d!76015 (= c!50037 ((_ is Nil!3789) (++!980 lt!108117 lt!108119)))))

(assert (=> d!76015 (= (++!980 (++!980 lt!108117 lt!108119) lt!108116) lt!108136)))

(declare-fun b!264685 () Bool)

(assert (=> b!264685 (= e!164448 lt!108116)))

(assert (= (and d!76015 c!50037) b!264685))

(assert (= (and d!76015 (not c!50037)) b!264686))

(assert (= (and d!76015 res!121484) b!264687))

(assert (= (and b!264687 res!121483) b!264688))

(declare-fun m!330223 () Bool)

(assert (=> b!264686 m!330223))

(declare-fun m!330225 () Bool)

(assert (=> b!264687 m!330225))

(assert (=> b!264687 m!330129))

(declare-fun m!330227 () Bool)

(assert (=> b!264687 m!330227))

(declare-fun m!330229 () Bool)

(assert (=> b!264687 m!330229))

(declare-fun m!330231 () Bool)

(assert (=> d!76015 m!330231))

(assert (=> d!76015 m!330129))

(declare-fun m!330233 () Bool)

(assert (=> d!76015 m!330233))

(declare-fun m!330235 () Bool)

(assert (=> d!76015 m!330235))

(assert (=> b!264578 d!76015))

(declare-fun b!264692 () Bool)

(declare-fun lt!108137 () List!3799)

(declare-fun e!164451 () Bool)

(assert (=> b!264692 (= e!164451 (or (not (= lt!108116 Nil!3789)) (= lt!108137 lt!108119)))))

(declare-fun b!264690 () Bool)

(declare-fun e!164450 () List!3799)

(assert (=> b!264690 (= e!164450 (Cons!3789 (h!9186 lt!108119) (++!980 (t!37441 lt!108119) lt!108116)))))

(declare-fun b!264691 () Bool)

(declare-fun res!121485 () Bool)

(assert (=> b!264691 (=> (not res!121485) (not e!164451))))

(assert (=> b!264691 (= res!121485 (= (size!3015 lt!108137) (+ (size!3015 lt!108119) (size!3015 lt!108116))))))

(declare-fun d!76017 () Bool)

(assert (=> d!76017 e!164451))

(declare-fun res!121486 () Bool)

(assert (=> d!76017 (=> (not res!121486) (not e!164451))))

(assert (=> d!76017 (= res!121486 (= (content!539 lt!108137) ((_ map or) (content!539 lt!108119) (content!539 lt!108116))))))

(assert (=> d!76017 (= lt!108137 e!164450)))

(declare-fun c!50038 () Bool)

(assert (=> d!76017 (= c!50038 ((_ is Nil!3789) lt!108119))))

(assert (=> d!76017 (= (++!980 lt!108119 lt!108116) lt!108137)))

(declare-fun b!264689 () Bool)

(assert (=> b!264689 (= e!164450 lt!108116)))

(assert (= (and d!76017 c!50038) b!264689))

(assert (= (and d!76017 (not c!50038)) b!264690))

(assert (= (and d!76017 res!121486) b!264691))

(assert (= (and b!264691 res!121485) b!264692))

(declare-fun m!330237 () Bool)

(assert (=> b!264690 m!330237))

(declare-fun m!330239 () Bool)

(assert (=> b!264691 m!330239))

(declare-fun m!330241 () Bool)

(assert (=> b!264691 m!330241))

(assert (=> b!264691 m!330229))

(declare-fun m!330243 () Bool)

(assert (=> d!76017 m!330243))

(declare-fun m!330245 () Bool)

(assert (=> d!76017 m!330245))

(assert (=> d!76017 m!330235))

(assert (=> b!264578 d!76017))

(declare-fun bs!28971 () Bool)

(declare-fun b!264827 () Bool)

(assert (= bs!28971 (and b!264827 b!264588)))

(declare-fun lambda!8919 () Int)

(assert (=> bs!28971 (not (= lambda!8919 lambda!8902))))

(declare-fun b!264846 () Bool)

(declare-fun e!164550 () Bool)

(assert (=> b!264846 (= e!164550 true)))

(declare-fun b!264845 () Bool)

(declare-fun e!164549 () Bool)

(assert (=> b!264845 (= e!164549 e!164550)))

(declare-fun b!264844 () Bool)

(declare-fun e!164548 () Bool)

(assert (=> b!264844 (= e!164548 e!164549)))

(assert (=> b!264827 e!164548))

(assert (= b!264845 b!264846))

(assert (= b!264844 b!264845))

(assert (= (and b!264827 ((_ is Cons!3792) rules!1920)) b!264844))

(declare-fun order!2893 () Int)

(declare-fun order!2895 () Int)

(declare-fun dynLambda!1929 (Int Int) Int)

(declare-fun dynLambda!1930 (Int Int) Int)

(assert (=> b!264846 (< (dynLambda!1929 order!2893 (toValue!1450 (transformation!723 (h!9189 rules!1920)))) (dynLambda!1930 order!2895 lambda!8919))))

(declare-fun order!2897 () Int)

(declare-fun dynLambda!1931 (Int Int) Int)

(assert (=> b!264846 (< (dynLambda!1931 order!2897 (toChars!1309 (transformation!723 (h!9189 rules!1920)))) (dynLambda!1930 order!2895 lambda!8919))))

(assert (=> b!264827 true))

(declare-fun e!164537 () List!3799)

(declare-fun e!164539 () List!3799)

(assert (=> b!264827 (= e!164537 e!164539)))

(declare-fun lt!108224 () Unit!4760)

(declare-fun forallContained!280 (List!3801 Int Token!1190) Unit!4760)

(assert (=> b!264827 (= lt!108224 (forallContained!280 (t!37443 tokens!465) lambda!8919 (h!9188 (t!37443 tokens!465))))))

(declare-fun lt!108228 () List!3799)

(assert (=> b!264827 (= lt!108228 (printWithSeparatorTokenWhenNeededList!292 thiss!17480 rules!1920 (t!37443 (t!37443 tokens!465)) separatorToken!170))))

(declare-datatypes ((tuple2!4248 0))(
  ( (tuple2!4249 (_1!2340 Token!1190) (_2!2340 List!3799)) )
))
(declare-datatypes ((Option!796 0))(
  ( (None!795) (Some!795 (v!14652 tuple2!4248)) )
))
(declare-fun lt!108227 () Option!796)

(declare-fun maxPrefix!329 (LexerInterface!609 List!3802 List!3799) Option!796)

(assert (=> b!264827 (= lt!108227 (maxPrefix!329 thiss!17480 rules!1920 (++!980 (list!1535 (charsOf!368 (h!9188 (t!37443 tokens!465)))) lt!108228)))))

(declare-fun c!50080 () Bool)

(assert (=> b!264827 (= c!50080 (and ((_ is Some!795) lt!108227) (= (_1!2340 (v!14652 lt!108227)) (h!9188 (t!37443 tokens!465)))))))

(declare-fun b!264828 () Bool)

(assert (=> b!264828 (= e!164537 Nil!3789)))

(declare-fun b!264829 () Bool)

(declare-fun e!164538 () List!3799)

(declare-fun call!14328 () List!3799)

(assert (=> b!264829 (= e!164538 (++!980 call!14328 lt!108228))))

(declare-fun b!264830 () Bool)

(declare-fun e!164540 () BalanceConc!2544)

(declare-fun call!14326 () BalanceConc!2544)

(assert (=> b!264830 (= e!164540 call!14326)))

(declare-fun bm!14321 () Bool)

(declare-fun call!14327 () List!3799)

(assert (=> bm!14321 (= call!14327 (list!1535 e!164540))))

(declare-fun c!50078 () Bool)

(declare-fun c!50077 () Bool)

(assert (=> bm!14321 (= c!50078 c!50077)))

(declare-fun b!264831 () Bool)

(assert (=> b!264831 (= e!164538 Nil!3789)))

(assert (=> b!264831 (= (print!334 thiss!17480 (singletonSeq!269 (h!9188 (t!37443 tokens!465)))) (printTailRec!297 thiss!17480 (singletonSeq!269 (h!9188 (t!37443 tokens!465))) 0 (BalanceConc!2545 Empty!1268)))))

(declare-fun lt!108226 () Unit!4760)

(declare-fun Unit!4768 () Unit!4760)

(assert (=> b!264831 (= lt!108226 Unit!4768)))

(declare-fun lt!108229 () Unit!4760)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!106 (LexerInterface!609 List!3802 List!3799 List!3799) Unit!4760)

(assert (=> b!264831 (= lt!108229 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!106 thiss!17480 rules!1920 call!14327 lt!108228))))

(assert (=> b!264831 false))

(declare-fun lt!108225 () Unit!4760)

(declare-fun Unit!4769 () Unit!4760)

(assert (=> b!264831 (= lt!108225 Unit!4769)))

(declare-fun bm!14322 () Bool)

(declare-fun call!14329 () List!3799)

(assert (=> bm!14322 (= call!14328 (++!980 call!14329 (ite c!50080 lt!108228 call!14327)))))

(declare-fun b!264832 () Bool)

(assert (=> b!264832 (= e!164540 (charsOf!368 separatorToken!170))))

(declare-fun bm!14323 () Bool)

(declare-fun call!14325 () BalanceConc!2544)

(assert (=> bm!14323 (= call!14329 (list!1535 (ite c!50080 call!14325 call!14326)))))

(declare-fun b!264833 () Bool)

(assert (=> b!264833 (= e!164539 call!14328)))

(declare-fun bm!14320 () Bool)

(assert (=> bm!14320 (= call!14326 call!14325)))

(declare-fun d!76019 () Bool)

(declare-fun c!50079 () Bool)

(assert (=> d!76019 (= c!50079 ((_ is Cons!3791) (t!37443 tokens!465)))))

(assert (=> d!76019 (= (printWithSeparatorTokenWhenNeededList!292 thiss!17480 rules!1920 (t!37443 tokens!465) separatorToken!170) e!164537)))

(declare-fun bm!14324 () Bool)

(assert (=> bm!14324 (= call!14325 (charsOf!368 (h!9188 (t!37443 tokens!465))))))

(declare-fun b!264834 () Bool)

(assert (=> b!264834 (= c!50077 (and ((_ is Some!795) lt!108227) (not (= (_1!2340 (v!14652 lt!108227)) (h!9188 (t!37443 tokens!465))))))))

(assert (=> b!264834 (= e!164539 e!164538)))

(assert (= (and d!76019 c!50079) b!264827))

(assert (= (and d!76019 (not c!50079)) b!264828))

(assert (= (and b!264827 c!50080) b!264833))

(assert (= (and b!264827 (not c!50080)) b!264834))

(assert (= (and b!264834 c!50077) b!264829))

(assert (= (and b!264834 (not c!50077)) b!264831))

(assert (= (or b!264829 b!264831) bm!14320))

(assert (= (or b!264829 b!264831) bm!14321))

(assert (= (and bm!14321 c!50078) b!264832))

(assert (= (and bm!14321 (not c!50078)) b!264830))

(assert (= (or b!264833 bm!14320) bm!14324))

(assert (= (or b!264833 b!264829) bm!14323))

(assert (= (or b!264833 b!264829) bm!14322))

(declare-fun m!330437 () Bool)

(assert (=> bm!14324 m!330437))

(assert (=> b!264832 m!330125))

(declare-fun m!330439 () Bool)

(assert (=> bm!14322 m!330439))

(declare-fun m!330441 () Bool)

(assert (=> b!264829 m!330441))

(declare-fun m!330443 () Bool)

(assert (=> bm!14323 m!330443))

(declare-fun m!330445 () Bool)

(assert (=> bm!14321 m!330445))

(declare-fun m!330447 () Bool)

(assert (=> b!264831 m!330447))

(assert (=> b!264831 m!330447))

(declare-fun m!330449 () Bool)

(assert (=> b!264831 m!330449))

(assert (=> b!264831 m!330447))

(declare-fun m!330451 () Bool)

(assert (=> b!264831 m!330451))

(declare-fun m!330453 () Bool)

(assert (=> b!264831 m!330453))

(declare-fun m!330455 () Bool)

(assert (=> b!264827 m!330455))

(assert (=> b!264827 m!330437))

(assert (=> b!264827 m!330437))

(declare-fun m!330457 () Bool)

(assert (=> b!264827 m!330457))

(declare-fun m!330459 () Bool)

(assert (=> b!264827 m!330459))

(declare-fun m!330461 () Bool)

(assert (=> b!264827 m!330461))

(assert (=> b!264827 m!330457))

(assert (=> b!264827 m!330459))

(declare-fun m!330463 () Bool)

(assert (=> b!264827 m!330463))

(assert (=> b!264578 d!76019))

(declare-fun bs!28992 () Bool)

(declare-fun d!76071 () Bool)

(assert (= bs!28992 (and d!76071 b!264588)))

(declare-fun lambda!8927 () Int)

(assert (=> bs!28992 (= lambda!8927 lambda!8902)))

(declare-fun bs!28993 () Bool)

(assert (= bs!28993 (and d!76071 b!264827)))

(assert (=> bs!28993 (not (= lambda!8927 lambda!8919))))

(declare-fun bs!28994 () Bool)

(declare-fun b!264939 () Bool)

(assert (= bs!28994 (and b!264939 b!264588)))

(declare-fun lambda!8928 () Int)

(assert (=> bs!28994 (not (= lambda!8928 lambda!8902))))

(declare-fun bs!28996 () Bool)

(assert (= bs!28996 (and b!264939 b!264827)))

(assert (=> bs!28996 (= lambda!8928 lambda!8919)))

(declare-fun bs!28997 () Bool)

(assert (= bs!28997 (and b!264939 d!76071)))

(assert (=> bs!28997 (not (= lambda!8928 lambda!8927))))

(declare-fun b!264946 () Bool)

(declare-fun e!164618 () Bool)

(assert (=> b!264946 (= e!164618 true)))

(declare-fun b!264945 () Bool)

(declare-fun e!164617 () Bool)

(assert (=> b!264945 (= e!164617 e!164618)))

(declare-fun b!264944 () Bool)

(declare-fun e!164616 () Bool)

(assert (=> b!264944 (= e!164616 e!164617)))

(assert (=> b!264939 e!164616))

(assert (= b!264945 b!264946))

(assert (= b!264944 b!264945))

(assert (= (and b!264939 ((_ is Cons!3792) rules!1920)) b!264944))

(assert (=> b!264946 (< (dynLambda!1929 order!2893 (toValue!1450 (transformation!723 (h!9189 rules!1920)))) (dynLambda!1930 order!2895 lambda!8928))))

(assert (=> b!264946 (< (dynLambda!1931 order!2897 (toChars!1309 (transformation!723 (h!9189 rules!1920)))) (dynLambda!1930 order!2895 lambda!8928))))

(assert (=> b!264939 true))

(declare-fun b!264935 () Bool)

(declare-fun e!164613 () BalanceConc!2544)

(declare-fun call!14354 () BalanceConc!2544)

(declare-fun lt!108314 () BalanceConc!2544)

(declare-fun ++!982 (BalanceConc!2544 BalanceConc!2544) BalanceConc!2544)

(assert (=> b!264935 (= e!164613 (++!982 call!14354 lt!108314))))

(declare-fun b!264936 () Bool)

(declare-fun c!50104 () Bool)

(declare-fun e!164612 () Bool)

(assert (=> b!264936 (= c!50104 e!164612)))

(declare-fun res!121561 () Bool)

(assert (=> b!264936 (=> (not res!121561) (not e!164612))))

(declare-datatypes ((tuple2!4250 0))(
  ( (tuple2!4251 (_1!2341 Token!1190) (_2!2341 BalanceConc!2544)) )
))
(declare-datatypes ((Option!797 0))(
  ( (None!796) (Some!796 (v!14653 tuple2!4250)) )
))
(declare-fun lt!108322 () Option!797)

(assert (=> b!264936 (= res!121561 ((_ is Some!796) lt!108322))))

(declare-fun e!164611 () BalanceConc!2544)

(assert (=> b!264936 (= e!164611 e!164613)))

(declare-fun b!264937 () Bool)

(assert (=> b!264937 (= e!164611 call!14354)))

(declare-fun b!264938 () Bool)

(declare-fun call!14351 () Token!1190)

(assert (=> b!264938 (= e!164612 (not (= (_1!2341 (v!14653 lt!108322)) call!14351)))))

(declare-fun bm!14345 () Bool)

(declare-fun call!14350 () BalanceConc!2544)

(declare-fun c!50105 () Bool)

(declare-fun call!14352 () BalanceConc!2544)

(assert (=> bm!14345 (= call!14354 (++!982 call!14352 (ite c!50105 lt!108314 call!14350)))))

(declare-fun lt!108319 () BalanceConc!2544)

(declare-fun dropList!158 (BalanceConc!2546 Int) List!3801)

(assert (=> d!76071 (= (list!1535 lt!108319) (printWithSeparatorTokenWhenNeededList!292 thiss!17480 rules!1920 (dropList!158 (seqFromList!814 (t!37443 tokens!465)) 0) separatorToken!170))))

(declare-fun e!164615 () BalanceConc!2544)

(assert (=> d!76071 (= lt!108319 e!164615)))

(declare-fun c!50106 () Bool)

(assert (=> d!76071 (= c!50106 (>= 0 (size!3014 (seqFromList!814 (t!37443 tokens!465)))))))

(declare-fun lt!108312 () Unit!4760)

(declare-fun lemmaContentSubsetPreservesForall!102 (List!3801 List!3801 Int) Unit!4760)

(assert (=> d!76071 (= lt!108312 (lemmaContentSubsetPreservesForall!102 (list!1538 (seqFromList!814 (t!37443 tokens!465))) (dropList!158 (seqFromList!814 (t!37443 tokens!465)) 0) lambda!8927))))

(declare-fun e!164610 () Bool)

(assert (=> d!76071 e!164610))

(declare-fun res!121562 () Bool)

(assert (=> d!76071 (=> (not res!121562) (not e!164610))))

(assert (=> d!76071 (= res!121562 (>= 0 0))))

(assert (=> d!76071 (= (printWithSeparatorTokenWhenNeededRec!284 thiss!17480 rules!1920 (seqFromList!814 (t!37443 tokens!465)) separatorToken!170 0) lt!108319)))

(assert (=> b!264939 (= e!164615 e!164611)))

(declare-fun lt!108318 () List!3801)

(assert (=> b!264939 (= lt!108318 (list!1538 (seqFromList!814 (t!37443 tokens!465))))))

(declare-fun lt!108320 () Unit!4760)

(declare-fun lemmaDropApply!198 (List!3801 Int) Unit!4760)

(assert (=> b!264939 (= lt!108320 (lemmaDropApply!198 lt!108318 0))))

(declare-fun head!882 (List!3801) Token!1190)

(declare-fun drop!211 (List!3801 Int) List!3801)

(declare-fun apply!750 (List!3801 Int) Token!1190)

(assert (=> b!264939 (= (head!882 (drop!211 lt!108318 0)) (apply!750 lt!108318 0))))

(declare-fun lt!108315 () Unit!4760)

(assert (=> b!264939 (= lt!108315 lt!108320)))

(declare-fun lt!108317 () List!3801)

(assert (=> b!264939 (= lt!108317 (list!1538 (seqFromList!814 (t!37443 tokens!465))))))

(declare-fun lt!108313 () Unit!4760)

(declare-fun lemmaDropTail!190 (List!3801 Int) Unit!4760)

(assert (=> b!264939 (= lt!108313 (lemmaDropTail!190 lt!108317 0))))

(declare-fun tail!472 (List!3801) List!3801)

(assert (=> b!264939 (= (tail!472 (drop!211 lt!108317 0)) (drop!211 lt!108317 (+ 0 1)))))

(declare-fun lt!108316 () Unit!4760)

(assert (=> b!264939 (= lt!108316 lt!108313)))

(declare-fun lt!108321 () Unit!4760)

(assert (=> b!264939 (= lt!108321 (forallContained!280 (list!1538 (seqFromList!814 (t!37443 tokens!465))) lambda!8928 (apply!749 (seqFromList!814 (t!37443 tokens!465)) 0)))))

(assert (=> b!264939 (= lt!108314 (printWithSeparatorTokenWhenNeededRec!284 thiss!17480 rules!1920 (seqFromList!814 (t!37443 tokens!465)) separatorToken!170 (+ 0 1)))))

(declare-fun maxPrefixZipperSequence!292 (LexerInterface!609 List!3802 BalanceConc!2544) Option!797)

(assert (=> b!264939 (= lt!108322 (maxPrefixZipperSequence!292 thiss!17480 rules!1920 (++!982 (charsOf!368 (apply!749 (seqFromList!814 (t!37443 tokens!465)) 0)) lt!108314)))))

(declare-fun res!121560 () Bool)

(assert (=> b!264939 (= res!121560 ((_ is Some!796) lt!108322))))

(declare-fun e!164614 () Bool)

(assert (=> b!264939 (=> (not res!121560) (not e!164614))))

(assert (=> b!264939 (= c!50105 e!164614)))

(declare-fun bm!14346 () Bool)

(declare-fun call!14353 () Token!1190)

(assert (=> bm!14346 (= call!14353 call!14351)))

(declare-fun b!264940 () Bool)

(assert (=> b!264940 (= e!164615 (BalanceConc!2545 Empty!1268))))

(declare-fun b!264941 () Bool)

(assert (=> b!264941 (= e!164610 (<= 0 (size!3014 (seqFromList!814 (t!37443 tokens!465)))))))

(declare-fun b!264942 () Bool)

(assert (=> b!264942 (= e!164614 (= (_1!2341 (v!14653 lt!108322)) (apply!749 (seqFromList!814 (t!37443 tokens!465)) 0)))))

(declare-fun bm!14347 () Bool)

(assert (=> bm!14347 (= call!14351 (apply!749 (seqFromList!814 (t!37443 tokens!465)) 0))))

(declare-fun b!264943 () Bool)

(assert (=> b!264943 (= e!164613 (BalanceConc!2545 Empty!1268))))

(assert (=> b!264943 (= (print!334 thiss!17480 (singletonSeq!269 call!14353)) (printTailRec!297 thiss!17480 (singletonSeq!269 call!14353) 0 (BalanceConc!2545 Empty!1268)))))

(declare-fun lt!108309 () Unit!4760)

(declare-fun Unit!4772 () Unit!4760)

(assert (=> b!264943 (= lt!108309 Unit!4772)))

(declare-fun lt!108310 () Unit!4760)

(assert (=> b!264943 (= lt!108310 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!106 thiss!17480 rules!1920 (list!1535 call!14350) (list!1535 lt!108314)))))

(assert (=> b!264943 false))

(declare-fun lt!108311 () Unit!4760)

(declare-fun Unit!4773 () Unit!4760)

(assert (=> b!264943 (= lt!108311 Unit!4773)))

(declare-fun bm!14348 () Bool)

(assert (=> bm!14348 (= call!14352 (charsOf!368 (ite c!50105 call!14351 call!14353)))))

(declare-fun bm!14349 () Bool)

(assert (=> bm!14349 (= call!14350 (charsOf!368 (ite c!50104 separatorToken!170 call!14353)))))

(assert (= (and d!76071 res!121562) b!264941))

(assert (= (and d!76071 c!50106) b!264940))

(assert (= (and d!76071 (not c!50106)) b!264939))

(assert (= (and b!264939 res!121560) b!264942))

(assert (= (and b!264939 c!50105) b!264937))

(assert (= (and b!264939 (not c!50105)) b!264936))

(assert (= (and b!264936 res!121561) b!264938))

(assert (= (and b!264936 c!50104) b!264935))

(assert (= (and b!264936 (not c!50104)) b!264943))

(assert (= (or b!264935 b!264943) bm!14346))

(assert (= (or b!264935 b!264943) bm!14349))

(assert (= (or b!264937 b!264938 bm!14346) bm!14347))

(assert (= (or b!264937 b!264935) bm!14348))

(assert (= (or b!264937 b!264935) bm!14345))

(declare-fun m!330639 () Bool)

(assert (=> bm!14345 m!330639))

(declare-fun m!330641 () Bool)

(assert (=> bm!14349 m!330641))

(assert (=> d!76071 m!330121))

(declare-fun m!330643 () Bool)

(assert (=> d!76071 m!330643))

(assert (=> d!76071 m!330121))

(declare-fun m!330645 () Bool)

(assert (=> d!76071 m!330645))

(assert (=> d!76071 m!330121))

(declare-fun m!330647 () Bool)

(assert (=> d!76071 m!330647))

(declare-fun m!330649 () Bool)

(assert (=> d!76071 m!330649))

(assert (=> d!76071 m!330645))

(assert (=> d!76071 m!330643))

(declare-fun m!330651 () Bool)

(assert (=> d!76071 m!330651))

(assert (=> d!76071 m!330643))

(declare-fun m!330653 () Bool)

(assert (=> d!76071 m!330653))

(assert (=> b!264941 m!330121))

(assert (=> b!264941 m!330647))

(declare-fun m!330655 () Bool)

(assert (=> b!264943 m!330655))

(declare-fun m!330657 () Bool)

(assert (=> b!264943 m!330657))

(declare-fun m!330659 () Bool)

(assert (=> b!264943 m!330659))

(declare-fun m!330661 () Bool)

(assert (=> b!264943 m!330661))

(declare-fun m!330663 () Bool)

(assert (=> b!264943 m!330663))

(assert (=> b!264943 m!330655))

(declare-fun m!330665 () Bool)

(assert (=> b!264943 m!330665))

(assert (=> b!264943 m!330655))

(assert (=> b!264943 m!330661))

(assert (=> b!264943 m!330659))

(assert (=> b!264942 m!330121))

(declare-fun m!330667 () Bool)

(assert (=> b!264942 m!330667))

(declare-fun m!330669 () Bool)

(assert (=> b!264935 m!330669))

(assert (=> bm!14347 m!330121))

(assert (=> bm!14347 m!330667))

(declare-fun m!330671 () Bool)

(assert (=> b!264939 m!330671))

(declare-fun m!330673 () Bool)

(assert (=> b!264939 m!330673))

(declare-fun m!330675 () Bool)

(assert (=> b!264939 m!330675))

(declare-fun m!330677 () Bool)

(assert (=> b!264939 m!330677))

(declare-fun m!330679 () Bool)

(assert (=> b!264939 m!330679))

(assert (=> b!264939 m!330121))

(assert (=> b!264939 m!330667))

(assert (=> b!264939 m!330121))

(declare-fun m!330681 () Bool)

(assert (=> b!264939 m!330681))

(assert (=> b!264939 m!330121))

(assert (=> b!264939 m!330645))

(assert (=> b!264939 m!330679))

(declare-fun m!330683 () Bool)

(assert (=> b!264939 m!330683))

(declare-fun m!330685 () Bool)

(assert (=> b!264939 m!330685))

(assert (=> b!264939 m!330667))

(declare-fun m!330687 () Bool)

(assert (=> b!264939 m!330687))

(assert (=> b!264939 m!330645))

(assert (=> b!264939 m!330667))

(declare-fun m!330689 () Bool)

(assert (=> b!264939 m!330689))

(assert (=> b!264939 m!330687))

(assert (=> b!264939 m!330675))

(declare-fun m!330691 () Bool)

(assert (=> b!264939 m!330691))

(declare-fun m!330693 () Bool)

(assert (=> b!264939 m!330693))

(assert (=> b!264939 m!330685))

(declare-fun m!330695 () Bool)

(assert (=> b!264939 m!330695))

(declare-fun m!330697 () Bool)

(assert (=> bm!14348 m!330697))

(assert (=> b!264578 d!76071))

(declare-fun d!76099 () Bool)

(declare-fun lt!108328 () BalanceConc!2544)

(assert (=> d!76099 (= (list!1535 lt!108328) (originalCharacters!766 separatorToken!170))))

(assert (=> d!76099 (= lt!108328 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))) (value!24921 separatorToken!170)))))

(assert (=> d!76099 (= (charsOf!368 separatorToken!170) lt!108328)))

(declare-fun b_lambda!8237 () Bool)

(assert (=> (not b_lambda!8237) (not d!76099)))

(assert (=> d!76099 t!37455))

(declare-fun b_and!20763 () Bool)

(assert (= b_and!20735 (and (=> t!37455 result!18012) b_and!20763)))

(assert (=> d!76099 t!37457))

(declare-fun b_and!20765 () Bool)

(assert (= b_and!20737 (and (=> t!37457 result!18016) b_and!20765)))

(assert (=> d!76099 t!37459))

(declare-fun b_and!20767 () Bool)

(assert (= b_and!20739 (and (=> t!37459 result!18018) b_and!20767)))

(declare-fun m!330707 () Bool)

(assert (=> d!76099 m!330707))

(assert (=> d!76099 m!330193))

(assert (=> b!264578 d!76099))

(declare-fun b!264979 () Bool)

(declare-fun lt!108329 () List!3799)

(declare-fun e!164643 () Bool)

(assert (=> b!264979 (= e!164643 (or (not (= lt!108119 Nil!3789)) (= lt!108329 lt!108117)))))

(declare-fun b!264977 () Bool)

(declare-fun e!164642 () List!3799)

(assert (=> b!264977 (= e!164642 (Cons!3789 (h!9186 lt!108117) (++!980 (t!37441 lt!108117) lt!108119)))))

(declare-fun b!264978 () Bool)

(declare-fun res!121563 () Bool)

(assert (=> b!264978 (=> (not res!121563) (not e!164643))))

(assert (=> b!264978 (= res!121563 (= (size!3015 lt!108329) (+ (size!3015 lt!108117) (size!3015 lt!108119))))))

(declare-fun d!76101 () Bool)

(assert (=> d!76101 e!164643))

(declare-fun res!121564 () Bool)

(assert (=> d!76101 (=> (not res!121564) (not e!164643))))

(assert (=> d!76101 (= res!121564 (= (content!539 lt!108329) ((_ map or) (content!539 lt!108117) (content!539 lt!108119))))))

(assert (=> d!76101 (= lt!108329 e!164642)))

(declare-fun c!50107 () Bool)

(assert (=> d!76101 (= c!50107 ((_ is Nil!3789) lt!108117))))

(assert (=> d!76101 (= (++!980 lt!108117 lt!108119) lt!108329)))

(declare-fun b!264976 () Bool)

(assert (=> b!264976 (= e!164642 lt!108119)))

(assert (= (and d!76101 c!50107) b!264976))

(assert (= (and d!76101 (not c!50107)) b!264977))

(assert (= (and d!76101 res!121564) b!264978))

(assert (= (and b!264978 res!121563) b!264979))

(declare-fun m!330709 () Bool)

(assert (=> b!264977 m!330709))

(declare-fun m!330711 () Bool)

(assert (=> b!264978 m!330711))

(declare-fun m!330713 () Bool)

(assert (=> b!264978 m!330713))

(assert (=> b!264978 m!330241))

(declare-fun m!330715 () Bool)

(assert (=> d!76101 m!330715))

(declare-fun m!330717 () Bool)

(assert (=> d!76101 m!330717))

(assert (=> d!76101 m!330245))

(assert (=> b!264578 d!76101))

(declare-fun d!76103 () Bool)

(assert (=> d!76103 (= (list!1535 (charsOf!368 (h!9188 tokens!465))) (list!1539 (c!50020 (charsOf!368 (h!9188 tokens!465)))))))

(declare-fun bs!28998 () Bool)

(assert (= bs!28998 d!76103))

(declare-fun m!330719 () Bool)

(assert (=> bs!28998 m!330719))

(assert (=> b!264578 d!76103))

(declare-fun d!76105 () Bool)

(declare-fun lt!108330 () BalanceConc!2544)

(assert (=> d!76105 (= (list!1535 lt!108330) (originalCharacters!766 (h!9188 tokens!465)))))

(assert (=> d!76105 (= lt!108330 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))) (value!24921 (h!9188 tokens!465))))))

(assert (=> d!76105 (= (charsOf!368 (h!9188 tokens!465)) lt!108330)))

(declare-fun b_lambda!8239 () Bool)

(assert (=> (not b_lambda!8239) (not d!76105)))

(declare-fun t!37487 () Bool)

(declare-fun tb!14491 () Bool)

(assert (=> (and b!264598 (= (toChars!1309 (transformation!723 (h!9189 rules!1920))) (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465))))) t!37487) tb!14491))

(declare-fun b!264994 () Bool)

(declare-fun e!164652 () Bool)

(declare-fun tp!101389 () Bool)

(assert (=> b!264994 (= e!164652 (and (inv!4685 (c!50020 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))) (value!24921 (h!9188 tokens!465))))) tp!101389))))

(declare-fun result!18038 () Bool)

(assert (=> tb!14491 (= result!18038 (and (inv!4686 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))) (value!24921 (h!9188 tokens!465)))) e!164652))))

(assert (= tb!14491 b!264994))

(declare-fun m!330721 () Bool)

(assert (=> b!264994 m!330721))

(declare-fun m!330723 () Bool)

(assert (=> tb!14491 m!330723))

(assert (=> d!76105 t!37487))

(declare-fun b_and!20769 () Bool)

(assert (= b_and!20763 (and (=> t!37487 result!18038) b_and!20769)))

(declare-fun t!37489 () Bool)

(declare-fun tb!14493 () Bool)

(assert (=> (and b!264593 (= (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))) (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465))))) t!37489) tb!14493))

(declare-fun result!18040 () Bool)

(assert (= result!18040 result!18038))

(assert (=> d!76105 t!37489))

(declare-fun b_and!20771 () Bool)

(assert (= b_and!20765 (and (=> t!37489 result!18040) b_and!20771)))

(declare-fun t!37491 () Bool)

(declare-fun tb!14495 () Bool)

(assert (=> (and b!264597 (= (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))) (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465))))) t!37491) tb!14495))

(declare-fun result!18042 () Bool)

(assert (= result!18042 result!18038))

(assert (=> d!76105 t!37491))

(declare-fun b_and!20773 () Bool)

(assert (= b_and!20767 (and (=> t!37491 result!18042) b_and!20773)))

(declare-fun m!330725 () Bool)

(assert (=> d!76105 m!330725))

(declare-fun m!330727 () Bool)

(assert (=> d!76105 m!330727))

(assert (=> b!264578 d!76105))

(declare-fun b!265000 () Bool)

(declare-fun lt!108331 () List!3799)

(declare-fun e!164656 () Bool)

(assert (=> b!265000 (= e!164656 (or (not (= lt!108118 Nil!3789)) (= lt!108331 lt!108117)))))

(declare-fun b!264998 () Bool)

(declare-fun e!164655 () List!3799)

(assert (=> b!264998 (= e!164655 (Cons!3789 (h!9186 lt!108117) (++!980 (t!37441 lt!108117) lt!108118)))))

(declare-fun b!264999 () Bool)

(declare-fun res!121565 () Bool)

(assert (=> b!264999 (=> (not res!121565) (not e!164656))))

(assert (=> b!264999 (= res!121565 (= (size!3015 lt!108331) (+ (size!3015 lt!108117) (size!3015 lt!108118))))))

(declare-fun d!76107 () Bool)

(assert (=> d!76107 e!164656))

(declare-fun res!121566 () Bool)

(assert (=> d!76107 (=> (not res!121566) (not e!164656))))

(assert (=> d!76107 (= res!121566 (= (content!539 lt!108331) ((_ map or) (content!539 lt!108117) (content!539 lt!108118))))))

(assert (=> d!76107 (= lt!108331 e!164655)))

(declare-fun c!50108 () Bool)

(assert (=> d!76107 (= c!50108 ((_ is Nil!3789) lt!108117))))

(assert (=> d!76107 (= (++!980 lt!108117 lt!108118) lt!108331)))

(declare-fun b!264997 () Bool)

(assert (=> b!264997 (= e!164655 lt!108118)))

(assert (= (and d!76107 c!50108) b!264997))

(assert (= (and d!76107 (not c!50108)) b!264998))

(assert (= (and d!76107 res!121566) b!264999))

(assert (= (and b!264999 res!121565) b!265000))

(declare-fun m!330729 () Bool)

(assert (=> b!264998 m!330729))

(declare-fun m!330731 () Bool)

(assert (=> b!264999 m!330731))

(assert (=> b!264999 m!330713))

(declare-fun m!330733 () Bool)

(assert (=> b!264999 m!330733))

(declare-fun m!330735 () Bool)

(assert (=> d!76107 m!330735))

(assert (=> d!76107 m!330717))

(declare-fun m!330737 () Bool)

(assert (=> d!76107 m!330737))

(assert (=> b!264578 d!76107))

(declare-fun b!265001 () Bool)

(declare-fun e!164658 () Bool)

(assert (=> b!265001 (= e!164658 (inv!16 (value!24921 separatorToken!170)))))

(declare-fun b!265002 () Bool)

(declare-fun e!164659 () Bool)

(assert (=> b!265002 (= e!164658 e!164659)))

(declare-fun c!50109 () Bool)

(assert (=> b!265002 (= c!50109 ((_ is IntegerValue!2236) (value!24921 separatorToken!170)))))

(declare-fun d!76109 () Bool)

(declare-fun c!50110 () Bool)

(assert (=> d!76109 (= c!50110 ((_ is IntegerValue!2235) (value!24921 separatorToken!170)))))

(assert (=> d!76109 (= (inv!21 (value!24921 separatorToken!170)) e!164658)))

(declare-fun b!265003 () Bool)

(declare-fun e!164657 () Bool)

(assert (=> b!265003 (= e!164657 (inv!15 (value!24921 separatorToken!170)))))

(declare-fun b!265004 () Bool)

(declare-fun res!121567 () Bool)

(assert (=> b!265004 (=> res!121567 e!164657)))

(assert (=> b!265004 (= res!121567 (not ((_ is IntegerValue!2237) (value!24921 separatorToken!170))))))

(assert (=> b!265004 (= e!164659 e!164657)))

(declare-fun b!265005 () Bool)

(assert (=> b!265005 (= e!164659 (inv!17 (value!24921 separatorToken!170)))))

(assert (= (and d!76109 c!50110) b!265001))

(assert (= (and d!76109 (not c!50110)) b!265002))

(assert (= (and b!265002 c!50109) b!265005))

(assert (= (and b!265002 (not c!50109)) b!265004))

(assert (= (and b!265004 (not res!121567)) b!265003))

(declare-fun m!330739 () Bool)

(assert (=> b!265001 m!330739))

(declare-fun m!330741 () Bool)

(assert (=> b!265003 m!330741))

(declare-fun m!330743 () Bool)

(assert (=> b!265005 m!330743))

(assert (=> b!264592 d!76109))

(declare-fun bs!29000 () Bool)

(declare-fun d!76111 () Bool)

(assert (= bs!29000 (and d!76111 b!264588)))

(declare-fun lambda!8933 () Int)

(assert (=> bs!29000 (not (= lambda!8933 lambda!8902))))

(declare-fun bs!29001 () Bool)

(assert (= bs!29001 (and d!76111 b!264827)))

(assert (=> bs!29001 (= lambda!8933 lambda!8919)))

(declare-fun bs!29002 () Bool)

(assert (= bs!29002 (and d!76111 d!76071)))

(assert (=> bs!29002 (not (= lambda!8933 lambda!8927))))

(declare-fun bs!29003 () Bool)

(assert (= bs!29003 (and d!76111 b!264939)))

(assert (=> bs!29003 (= lambda!8933 lambda!8928)))

(declare-fun b!265019 () Bool)

(declare-fun e!164671 () Bool)

(assert (=> b!265019 (= e!164671 true)))

(declare-fun b!265018 () Bool)

(declare-fun e!164670 () Bool)

(assert (=> b!265018 (= e!164670 e!164671)))

(declare-fun b!265017 () Bool)

(declare-fun e!164669 () Bool)

(assert (=> b!265017 (= e!164669 e!164670)))

(assert (=> d!76111 e!164669))

(assert (= b!265018 b!265019))

(assert (= b!265017 b!265018))

(assert (= (and d!76111 ((_ is Cons!3792) rules!1920)) b!265017))

(assert (=> b!265019 (< (dynLambda!1929 order!2893 (toValue!1450 (transformation!723 (h!9189 rules!1920)))) (dynLambda!1930 order!2895 lambda!8933))))

(assert (=> b!265019 (< (dynLambda!1931 order!2897 (toChars!1309 (transformation!723 (h!9189 rules!1920)))) (dynLambda!1930 order!2895 lambda!8933))))

(assert (=> d!76111 true))

(declare-fun e!164668 () Bool)

(assert (=> d!76111 e!164668))

(declare-fun res!121570 () Bool)

(assert (=> d!76111 (=> (not res!121570) (not e!164668))))

(declare-fun lt!108334 () Bool)

(assert (=> d!76111 (= res!121570 (= lt!108334 (forall!939 (list!1538 lt!108115) lambda!8933)))))

(declare-fun forall!941 (BalanceConc!2546 Int) Bool)

(assert (=> d!76111 (= lt!108334 (forall!941 lt!108115 lambda!8933))))

(assert (=> d!76111 (not (isEmpty!2382 rules!1920))))

(assert (=> d!76111 (= (rulesProduceEachTokenIndividually!401 thiss!17480 rules!1920 lt!108115) lt!108334)))

(declare-fun b!265016 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!223 (LexerInterface!609 List!3802 List!3801) Bool)

(assert (=> b!265016 (= e!164668 (= lt!108334 (rulesProduceEachTokenIndividuallyList!223 thiss!17480 rules!1920 (list!1538 lt!108115))))))

(assert (= (and d!76111 res!121570) b!265016))

(declare-fun m!330749 () Bool)

(assert (=> d!76111 m!330749))

(assert (=> d!76111 m!330749))

(declare-fun m!330751 () Bool)

(assert (=> d!76111 m!330751))

(declare-fun m!330753 () Bool)

(assert (=> d!76111 m!330753))

(assert (=> d!76111 m!330095))

(assert (=> b!265016 m!330749))

(assert (=> b!265016 m!330749))

(declare-fun m!330755 () Bool)

(assert (=> b!265016 m!330755))

(assert (=> b!264582 d!76111))

(declare-fun d!76115 () Bool)

(assert (=> d!76115 (= (seqFromList!814 tokens!465) (fromListB!308 tokens!465))))

(declare-fun bs!29004 () Bool)

(assert (= bs!29004 d!76115))

(declare-fun m!330757 () Bool)

(assert (=> bs!29004 m!330757))

(assert (=> b!264582 d!76115))

(declare-fun d!76117 () Bool)

(assert (=> d!76117 (= (inv!4678 (tag!933 (rule!1308 (h!9188 tokens!465)))) (= (mod (str.len (value!24920 (tag!933 (rule!1308 (h!9188 tokens!465))))) 2) 0))))

(assert (=> b!264591 d!76117))

(declare-fun d!76119 () Bool)

(declare-fun res!121573 () Bool)

(declare-fun e!164674 () Bool)

(assert (=> d!76119 (=> (not res!121573) (not e!164674))))

(declare-fun semiInverseModEq!253 (Int Int) Bool)

(assert (=> d!76119 (= res!121573 (semiInverseModEq!253 (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))) (toValue!1450 (transformation!723 (rule!1308 (h!9188 tokens!465))))))))

(assert (=> d!76119 (= (inv!4681 (transformation!723 (rule!1308 (h!9188 tokens!465)))) e!164674)))

(declare-fun b!265022 () Bool)

(declare-fun equivClasses!236 (Int Int) Bool)

(assert (=> b!265022 (= e!164674 (equivClasses!236 (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))) (toValue!1450 (transformation!723 (rule!1308 (h!9188 tokens!465))))))))

(assert (= (and d!76119 res!121573) b!265022))

(declare-fun m!330759 () Bool)

(assert (=> d!76119 m!330759))

(declare-fun m!330761 () Bool)

(assert (=> b!265022 m!330761))

(assert (=> b!264591 d!76119))

(declare-fun d!76121 () Bool)

(declare-fun res!121574 () Bool)

(declare-fun e!164675 () Bool)

(assert (=> d!76121 (=> (not res!121574) (not e!164675))))

(assert (=> d!76121 (= res!121574 (not (isEmpty!2385 (originalCharacters!766 (h!9188 tokens!465)))))))

(assert (=> d!76121 (= (inv!4682 (h!9188 tokens!465)) e!164675)))

(declare-fun b!265023 () Bool)

(declare-fun res!121575 () Bool)

(assert (=> b!265023 (=> (not res!121575) (not e!164675))))

(assert (=> b!265023 (= res!121575 (= (originalCharacters!766 (h!9188 tokens!465)) (list!1535 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))) (value!24921 (h!9188 tokens!465))))))))

(declare-fun b!265024 () Bool)

(assert (=> b!265024 (= e!164675 (= (size!3011 (h!9188 tokens!465)) (size!3015 (originalCharacters!766 (h!9188 tokens!465)))))))

(assert (= (and d!76121 res!121574) b!265023))

(assert (= (and b!265023 res!121575) b!265024))

(declare-fun b_lambda!8251 () Bool)

(assert (=> (not b_lambda!8251) (not b!265023)))

(assert (=> b!265023 t!37487))

(declare-fun b_and!20779 () Bool)

(assert (= b_and!20769 (and (=> t!37487 result!18038) b_and!20779)))

(assert (=> b!265023 t!37489))

(declare-fun b_and!20781 () Bool)

(assert (= b_and!20771 (and (=> t!37489 result!18040) b_and!20781)))

(assert (=> b!265023 t!37491))

(declare-fun b_and!20783 () Bool)

(assert (= b_and!20773 (and (=> t!37491 result!18042) b_and!20783)))

(declare-fun m!330763 () Bool)

(assert (=> d!76121 m!330763))

(assert (=> b!265023 m!330727))

(assert (=> b!265023 m!330727))

(declare-fun m!330765 () Bool)

(assert (=> b!265023 m!330765))

(declare-fun m!330767 () Bool)

(assert (=> b!265024 m!330767))

(assert (=> b!264595 d!76121))

(declare-fun d!76123 () Bool)

(assert (=> d!76123 (= (inv!4678 (tag!933 (rule!1308 separatorToken!170))) (= (mod (str.len (value!24920 (tag!933 (rule!1308 separatorToken!170)))) 2) 0))))

(assert (=> b!264584 d!76123))

(declare-fun d!76125 () Bool)

(declare-fun res!121576 () Bool)

(declare-fun e!164676 () Bool)

(assert (=> d!76125 (=> (not res!121576) (not e!164676))))

(assert (=> d!76125 (= res!121576 (semiInverseModEq!253 (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))) (toValue!1450 (transformation!723 (rule!1308 separatorToken!170)))))))

(assert (=> d!76125 (= (inv!4681 (transformation!723 (rule!1308 separatorToken!170))) e!164676)))

(declare-fun b!265025 () Bool)

(assert (=> b!265025 (= e!164676 (equivClasses!236 (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))) (toValue!1450 (transformation!723 (rule!1308 separatorToken!170)))))))

(assert (= (and d!76125 res!121576) b!265025))

(declare-fun m!330769 () Bool)

(assert (=> d!76125 m!330769))

(declare-fun m!330771 () Bool)

(assert (=> b!265025 m!330771))

(assert (=> b!264584 d!76125))

(declare-fun d!76127 () Bool)

(declare-fun lt!108337 () BalanceConc!2544)

(assert (=> d!76127 (= (list!1535 lt!108337) (printList!285 thiss!17480 (list!1538 lt!108109)))))

(assert (=> d!76127 (= lt!108337 (printTailRec!297 thiss!17480 lt!108109 0 (BalanceConc!2545 Empty!1268)))))

(assert (=> d!76127 (= (print!334 thiss!17480 lt!108109) lt!108337)))

(declare-fun bs!29005 () Bool)

(assert (= bs!29005 d!76127))

(declare-fun m!330773 () Bool)

(assert (=> bs!29005 m!330773))

(declare-fun m!330775 () Bool)

(assert (=> bs!29005 m!330775))

(assert (=> bs!29005 m!330775))

(declare-fun m!330777 () Bool)

(assert (=> bs!29005 m!330777))

(assert (=> bs!29005 m!330083))

(assert (=> b!264585 d!76127))

(declare-fun d!76129 () Bool)

(assert (=> d!76129 (= (list!1535 lt!108112) (list!1539 (c!50020 lt!108112)))))

(declare-fun bs!29006 () Bool)

(assert (= bs!29006 d!76129))

(declare-fun m!330779 () Bool)

(assert (=> bs!29006 m!330779))

(assert (=> b!264585 d!76129))

(declare-fun d!76131 () Bool)

(declare-fun lt!108356 () BalanceConc!2544)

(declare-fun printListTailRec!124 (LexerInterface!609 List!3801 List!3799) List!3799)

(assert (=> d!76131 (= (list!1535 lt!108356) (printListTailRec!124 thiss!17480 (dropList!158 lt!108109 0) (list!1535 (BalanceConc!2545 Empty!1268))))))

(declare-fun e!164681 () BalanceConc!2544)

(assert (=> d!76131 (= lt!108356 e!164681)))

(declare-fun c!50113 () Bool)

(assert (=> d!76131 (= c!50113 (>= 0 (size!3014 lt!108109)))))

(declare-fun e!164682 () Bool)

(assert (=> d!76131 e!164682))

(declare-fun res!121579 () Bool)

(assert (=> d!76131 (=> (not res!121579) (not e!164682))))

(assert (=> d!76131 (= res!121579 (>= 0 0))))

(assert (=> d!76131 (= (printTailRec!297 thiss!17480 lt!108109 0 (BalanceConc!2545 Empty!1268)) lt!108356)))

(declare-fun b!265032 () Bool)

(assert (=> b!265032 (= e!164682 (<= 0 (size!3014 lt!108109)))))

(declare-fun b!265033 () Bool)

(assert (=> b!265033 (= e!164681 (BalanceConc!2545 Empty!1268))))

(declare-fun b!265034 () Bool)

(assert (=> b!265034 (= e!164681 (printTailRec!297 thiss!17480 lt!108109 (+ 0 1) (++!982 (BalanceConc!2545 Empty!1268) (charsOf!368 (apply!749 lt!108109 0)))))))

(declare-fun lt!108354 () List!3801)

(assert (=> b!265034 (= lt!108354 (list!1538 lt!108109))))

(declare-fun lt!108357 () Unit!4760)

(assert (=> b!265034 (= lt!108357 (lemmaDropApply!198 lt!108354 0))))

(assert (=> b!265034 (= (head!882 (drop!211 lt!108354 0)) (apply!750 lt!108354 0))))

(declare-fun lt!108353 () Unit!4760)

(assert (=> b!265034 (= lt!108353 lt!108357)))

(declare-fun lt!108358 () List!3801)

(assert (=> b!265034 (= lt!108358 (list!1538 lt!108109))))

(declare-fun lt!108352 () Unit!4760)

(assert (=> b!265034 (= lt!108352 (lemmaDropTail!190 lt!108358 0))))

(assert (=> b!265034 (= (tail!472 (drop!211 lt!108358 0)) (drop!211 lt!108358 (+ 0 1)))))

(declare-fun lt!108355 () Unit!4760)

(assert (=> b!265034 (= lt!108355 lt!108352)))

(assert (= (and d!76131 res!121579) b!265032))

(assert (= (and d!76131 c!50113) b!265033))

(assert (= (and d!76131 (not c!50113)) b!265034))

(declare-fun m!330781 () Bool)

(assert (=> d!76131 m!330781))

(declare-fun m!330783 () Bool)

(assert (=> d!76131 m!330783))

(declare-fun m!330785 () Bool)

(assert (=> d!76131 m!330785))

(assert (=> d!76131 m!330781))

(declare-fun m!330787 () Bool)

(assert (=> d!76131 m!330787))

(declare-fun m!330789 () Bool)

(assert (=> d!76131 m!330789))

(assert (=> d!76131 m!330783))

(assert (=> b!265032 m!330787))

(declare-fun m!330791 () Bool)

(assert (=> b!265034 m!330791))

(declare-fun m!330793 () Bool)

(assert (=> b!265034 m!330793))

(declare-fun m!330795 () Bool)

(assert (=> b!265034 m!330795))

(declare-fun m!330797 () Bool)

(assert (=> b!265034 m!330797))

(declare-fun m!330799 () Bool)

(assert (=> b!265034 m!330799))

(declare-fun m!330801 () Bool)

(assert (=> b!265034 m!330801))

(assert (=> b!265034 m!330775))

(declare-fun m!330803 () Bool)

(assert (=> b!265034 m!330803))

(declare-fun m!330805 () Bool)

(assert (=> b!265034 m!330805))

(assert (=> b!265034 m!330803))

(declare-fun m!330807 () Bool)

(assert (=> b!265034 m!330807))

(assert (=> b!265034 m!330791))

(declare-fun m!330809 () Bool)

(assert (=> b!265034 m!330809))

(declare-fun m!330811 () Bool)

(assert (=> b!265034 m!330811))

(assert (=> b!265034 m!330799))

(assert (=> b!265034 m!330809))

(assert (=> b!265034 m!330797))

(declare-fun m!330813 () Bool)

(assert (=> b!265034 m!330813))

(assert (=> b!264585 d!76131))

(declare-fun d!76133 () Bool)

(declare-fun e!164685 () Bool)

(assert (=> d!76133 e!164685))

(declare-fun res!121582 () Bool)

(assert (=> d!76133 (=> (not res!121582) (not e!164685))))

(declare-fun lt!108361 () BalanceConc!2546)

(assert (=> d!76133 (= res!121582 (= (list!1538 lt!108361) (Cons!3791 (h!9188 tokens!465) Nil!3791)))))

(declare-fun singleton!108 (Token!1190) BalanceConc!2546)

(assert (=> d!76133 (= lt!108361 (singleton!108 (h!9188 tokens!465)))))

(assert (=> d!76133 (= (singletonSeq!269 (h!9188 tokens!465)) lt!108361)))

(declare-fun b!265037 () Bool)

(declare-fun isBalanced!341 (Conc!1269) Bool)

(assert (=> b!265037 (= e!164685 (isBalanced!341 (c!50022 lt!108361)))))

(assert (= (and d!76133 res!121582) b!265037))

(declare-fun m!330815 () Bool)

(assert (=> d!76133 m!330815))

(declare-fun m!330817 () Bool)

(assert (=> d!76133 m!330817))

(declare-fun m!330819 () Bool)

(assert (=> b!265037 m!330819))

(assert (=> b!264585 d!76133))

(declare-fun d!76135 () Bool)

(declare-fun c!50116 () Bool)

(assert (=> d!76135 (= c!50116 ((_ is Cons!3791) (Cons!3791 (h!9188 tokens!465) Nil!3791)))))

(declare-fun e!164688 () List!3799)

(assert (=> d!76135 (= (printList!285 thiss!17480 (Cons!3791 (h!9188 tokens!465) Nil!3791)) e!164688)))

(declare-fun b!265042 () Bool)

(assert (=> b!265042 (= e!164688 (++!980 (list!1535 (charsOf!368 (h!9188 (Cons!3791 (h!9188 tokens!465) Nil!3791)))) (printList!285 thiss!17480 (t!37443 (Cons!3791 (h!9188 tokens!465) Nil!3791)))))))

(declare-fun b!265043 () Bool)

(assert (=> b!265043 (= e!164688 Nil!3789)))

(assert (= (and d!76135 c!50116) b!265042))

(assert (= (and d!76135 (not c!50116)) b!265043))

(declare-fun m!330821 () Bool)

(assert (=> b!265042 m!330821))

(assert (=> b!265042 m!330821))

(declare-fun m!330823 () Bool)

(assert (=> b!265042 m!330823))

(declare-fun m!330825 () Bool)

(assert (=> b!265042 m!330825))

(assert (=> b!265042 m!330823))

(assert (=> b!265042 m!330825))

(declare-fun m!330827 () Bool)

(assert (=> b!265042 m!330827))

(assert (=> b!264585 d!76135))

(declare-fun d!76137 () Bool)

(assert (=> d!76137 (= (inv!4678 (tag!933 (h!9189 rules!1920))) (= (mod (str.len (value!24920 (tag!933 (h!9189 rules!1920)))) 2) 0))))

(assert (=> b!264583 d!76137))

(declare-fun d!76139 () Bool)

(declare-fun res!121583 () Bool)

(declare-fun e!164689 () Bool)

(assert (=> d!76139 (=> (not res!121583) (not e!164689))))

(assert (=> d!76139 (= res!121583 (semiInverseModEq!253 (toChars!1309 (transformation!723 (h!9189 rules!1920))) (toValue!1450 (transformation!723 (h!9189 rules!1920)))))))

(assert (=> d!76139 (= (inv!4681 (transformation!723 (h!9189 rules!1920))) e!164689)))

(declare-fun b!265044 () Bool)

(assert (=> b!265044 (= e!164689 (equivClasses!236 (toChars!1309 (transformation!723 (h!9189 rules!1920))) (toValue!1450 (transformation!723 (h!9189 rules!1920)))))))

(assert (= (and d!76139 res!121583) b!265044))

(declare-fun m!330829 () Bool)

(assert (=> d!76139 m!330829))

(declare-fun m!330831 () Bool)

(assert (=> b!265044 m!330831))

(assert (=> b!264583 d!76139))

(declare-fun d!76141 () Bool)

(assert (=> d!76141 (= (isEmpty!2382 rules!1920) ((_ is Nil!3792) rules!1920))))

(assert (=> b!264587 d!76141))

(declare-fun d!76143 () Bool)

(assert (=> d!76143 (= (list!1535 (seqFromList!813 lt!108114)) (list!1539 (c!50020 (seqFromList!813 lt!108114))))))

(declare-fun bs!29007 () Bool)

(assert (= bs!29007 d!76143))

(declare-fun m!330833 () Bool)

(assert (=> bs!29007 m!330833))

(assert (=> b!264577 d!76143))

(declare-fun d!76145 () Bool)

(declare-fun fromListB!309 (List!3799) BalanceConc!2544)

(assert (=> d!76145 (= (seqFromList!813 lt!108114) (fromListB!309 lt!108114))))

(declare-fun bs!29008 () Bool)

(assert (= bs!29008 d!76145))

(declare-fun m!330835 () Bool)

(assert (=> bs!29008 m!330835))

(assert (=> b!264577 d!76145))

(declare-fun d!76147 () Bool)

(assert (=> d!76147 (= (list!1535 (printWithSeparatorTokenWhenNeededRec!284 thiss!17480 rules!1920 lt!108115 separatorToken!170 0)) (list!1539 (c!50020 (printWithSeparatorTokenWhenNeededRec!284 thiss!17480 rules!1920 lt!108115 separatorToken!170 0))))))

(declare-fun bs!29009 () Bool)

(assert (= bs!29009 d!76147))

(declare-fun m!330837 () Bool)

(assert (=> bs!29009 m!330837))

(assert (=> b!264596 d!76147))

(declare-fun bs!29010 () Bool)

(declare-fun d!76149 () Bool)

(assert (= bs!29010 (and d!76149 b!264939)))

(declare-fun lambda!8934 () Int)

(assert (=> bs!29010 (not (= lambda!8934 lambda!8928))))

(declare-fun bs!29011 () Bool)

(assert (= bs!29011 (and d!76149 b!264588)))

(assert (=> bs!29011 (= lambda!8934 lambda!8902)))

(declare-fun bs!29012 () Bool)

(assert (= bs!29012 (and d!76149 d!76111)))

(assert (=> bs!29012 (not (= lambda!8934 lambda!8933))))

(declare-fun bs!29013 () Bool)

(assert (= bs!29013 (and d!76149 d!76071)))

(assert (=> bs!29013 (= lambda!8934 lambda!8927)))

(declare-fun bs!29014 () Bool)

(assert (= bs!29014 (and d!76149 b!264827)))

(assert (=> bs!29014 (not (= lambda!8934 lambda!8919))))

(declare-fun bs!29015 () Bool)

(declare-fun b!265049 () Bool)

(assert (= bs!29015 (and b!265049 b!264939)))

(declare-fun lambda!8935 () Int)

(assert (=> bs!29015 (= lambda!8935 lambda!8928)))

(declare-fun bs!29016 () Bool)

(assert (= bs!29016 (and b!265049 d!76149)))

(assert (=> bs!29016 (not (= lambda!8935 lambda!8934))))

(declare-fun bs!29017 () Bool)

(assert (= bs!29017 (and b!265049 b!264588)))

(assert (=> bs!29017 (not (= lambda!8935 lambda!8902))))

(declare-fun bs!29018 () Bool)

(assert (= bs!29018 (and b!265049 d!76111)))

(assert (=> bs!29018 (= lambda!8935 lambda!8933)))

(declare-fun bs!29019 () Bool)

(assert (= bs!29019 (and b!265049 d!76071)))

(assert (=> bs!29019 (not (= lambda!8935 lambda!8927))))

(declare-fun bs!29020 () Bool)

(assert (= bs!29020 (and b!265049 b!264827)))

(assert (=> bs!29020 (= lambda!8935 lambda!8919)))

(declare-fun b!265056 () Bool)

(declare-fun e!164698 () Bool)

(assert (=> b!265056 (= e!164698 true)))

(declare-fun b!265055 () Bool)

(declare-fun e!164697 () Bool)

(assert (=> b!265055 (= e!164697 e!164698)))

(declare-fun b!265054 () Bool)

(declare-fun e!164696 () Bool)

(assert (=> b!265054 (= e!164696 e!164697)))

(assert (=> b!265049 e!164696))

(assert (= b!265055 b!265056))

(assert (= b!265054 b!265055))

(assert (= (and b!265049 ((_ is Cons!3792) rules!1920)) b!265054))

(assert (=> b!265056 (< (dynLambda!1929 order!2893 (toValue!1450 (transformation!723 (h!9189 rules!1920)))) (dynLambda!1930 order!2895 lambda!8935))))

(assert (=> b!265056 (< (dynLambda!1931 order!2897 (toChars!1309 (transformation!723 (h!9189 rules!1920)))) (dynLambda!1930 order!2895 lambda!8935))))

(assert (=> b!265049 true))

(declare-fun b!265045 () Bool)

(declare-fun e!164693 () BalanceConc!2544)

(declare-fun call!14359 () BalanceConc!2544)

(declare-fun lt!108367 () BalanceConc!2544)

(assert (=> b!265045 (= e!164693 (++!982 call!14359 lt!108367))))

(declare-fun b!265046 () Bool)

(declare-fun c!50117 () Bool)

(declare-fun e!164692 () Bool)

(assert (=> b!265046 (= c!50117 e!164692)))

(declare-fun res!121585 () Bool)

(assert (=> b!265046 (=> (not res!121585) (not e!164692))))

(declare-fun lt!108375 () Option!797)

(assert (=> b!265046 (= res!121585 ((_ is Some!796) lt!108375))))

(declare-fun e!164691 () BalanceConc!2544)

(assert (=> b!265046 (= e!164691 e!164693)))

(declare-fun b!265047 () Bool)

(assert (=> b!265047 (= e!164691 call!14359)))

(declare-fun b!265048 () Bool)

(declare-fun call!14356 () Token!1190)

(assert (=> b!265048 (= e!164692 (not (= (_1!2341 (v!14653 lt!108375)) call!14356)))))

(declare-fun c!50118 () Bool)

(declare-fun bm!14350 () Bool)

(declare-fun call!14355 () BalanceConc!2544)

(declare-fun call!14357 () BalanceConc!2544)

(assert (=> bm!14350 (= call!14359 (++!982 call!14357 (ite c!50118 lt!108367 call!14355)))))

(declare-fun lt!108372 () BalanceConc!2544)

(assert (=> d!76149 (= (list!1535 lt!108372) (printWithSeparatorTokenWhenNeededList!292 thiss!17480 rules!1920 (dropList!158 lt!108115 0) separatorToken!170))))

(declare-fun e!164695 () BalanceConc!2544)

(assert (=> d!76149 (= lt!108372 e!164695)))

(declare-fun c!50119 () Bool)

(assert (=> d!76149 (= c!50119 (>= 0 (size!3014 lt!108115)))))

(declare-fun lt!108365 () Unit!4760)

(assert (=> d!76149 (= lt!108365 (lemmaContentSubsetPreservesForall!102 (list!1538 lt!108115) (dropList!158 lt!108115 0) lambda!8934))))

(declare-fun e!164690 () Bool)

(assert (=> d!76149 e!164690))

(declare-fun res!121586 () Bool)

(assert (=> d!76149 (=> (not res!121586) (not e!164690))))

(assert (=> d!76149 (= res!121586 (>= 0 0))))

(assert (=> d!76149 (= (printWithSeparatorTokenWhenNeededRec!284 thiss!17480 rules!1920 lt!108115 separatorToken!170 0) lt!108372)))

(assert (=> b!265049 (= e!164695 e!164691)))

(declare-fun lt!108371 () List!3801)

(assert (=> b!265049 (= lt!108371 (list!1538 lt!108115))))

(declare-fun lt!108373 () Unit!4760)

(assert (=> b!265049 (= lt!108373 (lemmaDropApply!198 lt!108371 0))))

(assert (=> b!265049 (= (head!882 (drop!211 lt!108371 0)) (apply!750 lt!108371 0))))

(declare-fun lt!108368 () Unit!4760)

(assert (=> b!265049 (= lt!108368 lt!108373)))

(declare-fun lt!108370 () List!3801)

(assert (=> b!265049 (= lt!108370 (list!1538 lt!108115))))

(declare-fun lt!108366 () Unit!4760)

(assert (=> b!265049 (= lt!108366 (lemmaDropTail!190 lt!108370 0))))

(assert (=> b!265049 (= (tail!472 (drop!211 lt!108370 0)) (drop!211 lt!108370 (+ 0 1)))))

(declare-fun lt!108369 () Unit!4760)

(assert (=> b!265049 (= lt!108369 lt!108366)))

(declare-fun lt!108374 () Unit!4760)

(assert (=> b!265049 (= lt!108374 (forallContained!280 (list!1538 lt!108115) lambda!8935 (apply!749 lt!108115 0)))))

(assert (=> b!265049 (= lt!108367 (printWithSeparatorTokenWhenNeededRec!284 thiss!17480 rules!1920 lt!108115 separatorToken!170 (+ 0 1)))))

(assert (=> b!265049 (= lt!108375 (maxPrefixZipperSequence!292 thiss!17480 rules!1920 (++!982 (charsOf!368 (apply!749 lt!108115 0)) lt!108367)))))

(declare-fun res!121584 () Bool)

(assert (=> b!265049 (= res!121584 ((_ is Some!796) lt!108375))))

(declare-fun e!164694 () Bool)

(assert (=> b!265049 (=> (not res!121584) (not e!164694))))

(assert (=> b!265049 (= c!50118 e!164694)))

(declare-fun bm!14351 () Bool)

(declare-fun call!14358 () Token!1190)

(assert (=> bm!14351 (= call!14358 call!14356)))

(declare-fun b!265050 () Bool)

(assert (=> b!265050 (= e!164695 (BalanceConc!2545 Empty!1268))))

(declare-fun b!265051 () Bool)

(assert (=> b!265051 (= e!164690 (<= 0 (size!3014 lt!108115)))))

(declare-fun b!265052 () Bool)

(assert (=> b!265052 (= e!164694 (= (_1!2341 (v!14653 lt!108375)) (apply!749 lt!108115 0)))))

(declare-fun bm!14352 () Bool)

(assert (=> bm!14352 (= call!14356 (apply!749 lt!108115 0))))

(declare-fun b!265053 () Bool)

(assert (=> b!265053 (= e!164693 (BalanceConc!2545 Empty!1268))))

(assert (=> b!265053 (= (print!334 thiss!17480 (singletonSeq!269 call!14358)) (printTailRec!297 thiss!17480 (singletonSeq!269 call!14358) 0 (BalanceConc!2545 Empty!1268)))))

(declare-fun lt!108362 () Unit!4760)

(declare-fun Unit!4774 () Unit!4760)

(assert (=> b!265053 (= lt!108362 Unit!4774)))

(declare-fun lt!108363 () Unit!4760)

(assert (=> b!265053 (= lt!108363 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!106 thiss!17480 rules!1920 (list!1535 call!14355) (list!1535 lt!108367)))))

(assert (=> b!265053 false))

(declare-fun lt!108364 () Unit!4760)

(declare-fun Unit!4775 () Unit!4760)

(assert (=> b!265053 (= lt!108364 Unit!4775)))

(declare-fun bm!14353 () Bool)

(assert (=> bm!14353 (= call!14357 (charsOf!368 (ite c!50118 call!14356 call!14358)))))

(declare-fun bm!14354 () Bool)

(assert (=> bm!14354 (= call!14355 (charsOf!368 (ite c!50117 separatorToken!170 call!14358)))))

(assert (= (and d!76149 res!121586) b!265051))

(assert (= (and d!76149 c!50119) b!265050))

(assert (= (and d!76149 (not c!50119)) b!265049))

(assert (= (and b!265049 res!121584) b!265052))

(assert (= (and b!265049 c!50118) b!265047))

(assert (= (and b!265049 (not c!50118)) b!265046))

(assert (= (and b!265046 res!121585) b!265048))

(assert (= (and b!265046 c!50117) b!265045))

(assert (= (and b!265046 (not c!50117)) b!265053))

(assert (= (or b!265045 b!265053) bm!14351))

(assert (= (or b!265045 b!265053) bm!14354))

(assert (= (or b!265047 b!265048 bm!14351) bm!14352))

(assert (= (or b!265047 b!265045) bm!14353))

(assert (= (or b!265047 b!265045) bm!14350))

(declare-fun m!330839 () Bool)

(assert (=> bm!14350 m!330839))

(declare-fun m!330841 () Bool)

(assert (=> bm!14354 m!330841))

(declare-fun m!330843 () Bool)

(assert (=> d!76149 m!330843))

(assert (=> d!76149 m!330749))

(declare-fun m!330845 () Bool)

(assert (=> d!76149 m!330845))

(declare-fun m!330847 () Bool)

(assert (=> d!76149 m!330847))

(assert (=> d!76149 m!330749))

(assert (=> d!76149 m!330843))

(declare-fun m!330849 () Bool)

(assert (=> d!76149 m!330849))

(assert (=> d!76149 m!330843))

(declare-fun m!330851 () Bool)

(assert (=> d!76149 m!330851))

(assert (=> b!265051 m!330845))

(declare-fun m!330853 () Bool)

(assert (=> b!265053 m!330853))

(declare-fun m!330855 () Bool)

(assert (=> b!265053 m!330855))

(declare-fun m!330857 () Bool)

(assert (=> b!265053 m!330857))

(declare-fun m!330859 () Bool)

(assert (=> b!265053 m!330859))

(declare-fun m!330861 () Bool)

(assert (=> b!265053 m!330861))

(assert (=> b!265053 m!330853))

(declare-fun m!330863 () Bool)

(assert (=> b!265053 m!330863))

(assert (=> b!265053 m!330853))

(assert (=> b!265053 m!330859))

(assert (=> b!265053 m!330857))

(declare-fun m!330865 () Bool)

(assert (=> b!265052 m!330865))

(declare-fun m!330867 () Bool)

(assert (=> b!265045 m!330867))

(assert (=> bm!14352 m!330865))

(declare-fun m!330869 () Bool)

(assert (=> b!265049 m!330869))

(declare-fun m!330871 () Bool)

(assert (=> b!265049 m!330871))

(declare-fun m!330873 () Bool)

(assert (=> b!265049 m!330873))

(declare-fun m!330875 () Bool)

(assert (=> b!265049 m!330875))

(declare-fun m!330877 () Bool)

(assert (=> b!265049 m!330877))

(assert (=> b!265049 m!330865))

(declare-fun m!330879 () Bool)

(assert (=> b!265049 m!330879))

(assert (=> b!265049 m!330749))

(assert (=> b!265049 m!330877))

(declare-fun m!330881 () Bool)

(assert (=> b!265049 m!330881))

(declare-fun m!330883 () Bool)

(assert (=> b!265049 m!330883))

(assert (=> b!265049 m!330865))

(declare-fun m!330885 () Bool)

(assert (=> b!265049 m!330885))

(assert (=> b!265049 m!330749))

(assert (=> b!265049 m!330865))

(declare-fun m!330887 () Bool)

(assert (=> b!265049 m!330887))

(assert (=> b!265049 m!330885))

(assert (=> b!265049 m!330873))

(declare-fun m!330889 () Bool)

(assert (=> b!265049 m!330889))

(declare-fun m!330891 () Bool)

(assert (=> b!265049 m!330891))

(assert (=> b!265049 m!330883))

(declare-fun m!330893 () Bool)

(assert (=> b!265049 m!330893))

(declare-fun m!330895 () Bool)

(assert (=> bm!14353 m!330895))

(assert (=> b!264596 d!76149))

(declare-fun bs!29021 () Bool)

(declare-fun b!265057 () Bool)

(assert (= bs!29021 (and b!265057 b!264939)))

(declare-fun lambda!8936 () Int)

(assert (=> bs!29021 (= lambda!8936 lambda!8928)))

(declare-fun bs!29022 () Bool)

(assert (= bs!29022 (and b!265057 d!76149)))

(assert (=> bs!29022 (not (= lambda!8936 lambda!8934))))

(declare-fun bs!29023 () Bool)

(assert (= bs!29023 (and b!265057 b!264588)))

(assert (=> bs!29023 (not (= lambda!8936 lambda!8902))))

(declare-fun bs!29024 () Bool)

(assert (= bs!29024 (and b!265057 d!76111)))

(assert (=> bs!29024 (= lambda!8936 lambda!8933)))

(declare-fun bs!29025 () Bool)

(assert (= bs!29025 (and b!265057 d!76071)))

(assert (=> bs!29025 (not (= lambda!8936 lambda!8927))))

(declare-fun bs!29026 () Bool)

(assert (= bs!29026 (and b!265057 b!264827)))

(assert (=> bs!29026 (= lambda!8936 lambda!8919)))

(declare-fun bs!29027 () Bool)

(assert (= bs!29027 (and b!265057 b!265049)))

(assert (=> bs!29027 (= lambda!8936 lambda!8935)))

(declare-fun b!265067 () Bool)

(declare-fun e!164705 () Bool)

(assert (=> b!265067 (= e!164705 true)))

(declare-fun b!265066 () Bool)

(declare-fun e!164704 () Bool)

(assert (=> b!265066 (= e!164704 e!164705)))

(declare-fun b!265065 () Bool)

(declare-fun e!164703 () Bool)

(assert (=> b!265065 (= e!164703 e!164704)))

(assert (=> b!265057 e!164703))

(assert (= b!265066 b!265067))

(assert (= b!265065 b!265066))

(assert (= (and b!265057 ((_ is Cons!3792) rules!1920)) b!265065))

(assert (=> b!265067 (< (dynLambda!1929 order!2893 (toValue!1450 (transformation!723 (h!9189 rules!1920)))) (dynLambda!1930 order!2895 lambda!8936))))

(assert (=> b!265067 (< (dynLambda!1931 order!2897 (toChars!1309 (transformation!723 (h!9189 rules!1920)))) (dynLambda!1930 order!2895 lambda!8936))))

(assert (=> b!265057 true))

(declare-fun e!164699 () List!3799)

(declare-fun e!164701 () List!3799)

(assert (=> b!265057 (= e!164699 e!164701)))

(declare-fun lt!108376 () Unit!4760)

(assert (=> b!265057 (= lt!108376 (forallContained!280 tokens!465 lambda!8936 (h!9188 tokens!465)))))

(declare-fun lt!108380 () List!3799)

(assert (=> b!265057 (= lt!108380 (printWithSeparatorTokenWhenNeededList!292 thiss!17480 rules!1920 (t!37443 tokens!465) separatorToken!170))))

(declare-fun lt!108379 () Option!796)

(assert (=> b!265057 (= lt!108379 (maxPrefix!329 thiss!17480 rules!1920 (++!980 (list!1535 (charsOf!368 (h!9188 tokens!465))) lt!108380)))))

(declare-fun c!50123 () Bool)

(assert (=> b!265057 (= c!50123 (and ((_ is Some!795) lt!108379) (= (_1!2340 (v!14652 lt!108379)) (h!9188 tokens!465))))))

(declare-fun b!265058 () Bool)

(assert (=> b!265058 (= e!164699 Nil!3789)))

(declare-fun b!265059 () Bool)

(declare-fun e!164700 () List!3799)

(declare-fun call!14363 () List!3799)

(assert (=> b!265059 (= e!164700 (++!980 call!14363 lt!108380))))

(declare-fun b!265060 () Bool)

(declare-fun e!164702 () BalanceConc!2544)

(declare-fun call!14361 () BalanceConc!2544)

(assert (=> b!265060 (= e!164702 call!14361)))

(declare-fun bm!14356 () Bool)

(declare-fun call!14362 () List!3799)

(assert (=> bm!14356 (= call!14362 (list!1535 e!164702))))

(declare-fun c!50121 () Bool)

(declare-fun c!50120 () Bool)

(assert (=> bm!14356 (= c!50121 c!50120)))

(declare-fun b!265061 () Bool)

(assert (=> b!265061 (= e!164700 Nil!3789)))

(assert (=> b!265061 (= (print!334 thiss!17480 (singletonSeq!269 (h!9188 tokens!465))) (printTailRec!297 thiss!17480 (singletonSeq!269 (h!9188 tokens!465)) 0 (BalanceConc!2545 Empty!1268)))))

(declare-fun lt!108378 () Unit!4760)

(declare-fun Unit!4776 () Unit!4760)

(assert (=> b!265061 (= lt!108378 Unit!4776)))

(declare-fun lt!108381 () Unit!4760)

(assert (=> b!265061 (= lt!108381 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!106 thiss!17480 rules!1920 call!14362 lt!108380))))

(assert (=> b!265061 false))

(declare-fun lt!108377 () Unit!4760)

(declare-fun Unit!4777 () Unit!4760)

(assert (=> b!265061 (= lt!108377 Unit!4777)))

(declare-fun bm!14357 () Bool)

(declare-fun call!14364 () List!3799)

(assert (=> bm!14357 (= call!14363 (++!980 call!14364 (ite c!50123 lt!108380 call!14362)))))

(declare-fun b!265062 () Bool)

(assert (=> b!265062 (= e!164702 (charsOf!368 separatorToken!170))))

(declare-fun bm!14358 () Bool)

(declare-fun call!14360 () BalanceConc!2544)

(assert (=> bm!14358 (= call!14364 (list!1535 (ite c!50123 call!14360 call!14361)))))

(declare-fun b!265063 () Bool)

(assert (=> b!265063 (= e!164701 call!14363)))

(declare-fun bm!14355 () Bool)

(assert (=> bm!14355 (= call!14361 call!14360)))

(declare-fun d!76151 () Bool)

(declare-fun c!50122 () Bool)

(assert (=> d!76151 (= c!50122 ((_ is Cons!3791) tokens!465))))

(assert (=> d!76151 (= (printWithSeparatorTokenWhenNeededList!292 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!164699)))

(declare-fun bm!14359 () Bool)

(assert (=> bm!14359 (= call!14360 (charsOf!368 (h!9188 tokens!465)))))

(declare-fun b!265064 () Bool)

(assert (=> b!265064 (= c!50120 (and ((_ is Some!795) lt!108379) (not (= (_1!2340 (v!14652 lt!108379)) (h!9188 tokens!465)))))))

(assert (=> b!265064 (= e!164701 e!164700)))

(assert (= (and d!76151 c!50122) b!265057))

(assert (= (and d!76151 (not c!50122)) b!265058))

(assert (= (and b!265057 c!50123) b!265063))

(assert (= (and b!265057 (not c!50123)) b!265064))

(assert (= (and b!265064 c!50120) b!265059))

(assert (= (and b!265064 (not c!50120)) b!265061))

(assert (= (or b!265059 b!265061) bm!14355))

(assert (= (or b!265059 b!265061) bm!14356))

(assert (= (and bm!14356 c!50121) b!265062))

(assert (= (and bm!14356 (not c!50121)) b!265060))

(assert (= (or b!265063 bm!14355) bm!14359))

(assert (= (or b!265063 b!265059) bm!14358))

(assert (= (or b!265063 b!265059) bm!14357))

(assert (=> bm!14359 m!330137))

(assert (=> b!265062 m!330125))

(declare-fun m!330897 () Bool)

(assert (=> bm!14357 m!330897))

(declare-fun m!330899 () Bool)

(assert (=> b!265059 m!330899))

(declare-fun m!330901 () Bool)

(assert (=> bm!14358 m!330901))

(declare-fun m!330903 () Bool)

(assert (=> bm!14356 m!330903))

(assert (=> b!265061 m!330089))

(assert (=> b!265061 m!330089))

(declare-fun m!330905 () Bool)

(assert (=> b!265061 m!330905))

(assert (=> b!265061 m!330089))

(declare-fun m!330907 () Bool)

(assert (=> b!265061 m!330907))

(declare-fun m!330909 () Bool)

(assert (=> b!265061 m!330909))

(assert (=> b!265057 m!330123))

(assert (=> b!265057 m!330137))

(assert (=> b!265057 m!330137))

(assert (=> b!265057 m!330139))

(declare-fun m!330911 () Bool)

(assert (=> b!265057 m!330911))

(declare-fun m!330913 () Bool)

(assert (=> b!265057 m!330913))

(assert (=> b!265057 m!330139))

(assert (=> b!265057 m!330911))

(declare-fun m!330915 () Bool)

(assert (=> b!265057 m!330915))

(assert (=> b!264596 d!76151))

(declare-fun b!265071 () Bool)

(declare-fun e!164707 () Bool)

(declare-fun lt!108382 () List!3799)

(assert (=> b!265071 (= e!164707 (or (not (= lt!108116 Nil!3789)) (= lt!108382 lt!108117)))))

(declare-fun b!265069 () Bool)

(declare-fun e!164706 () List!3799)

(assert (=> b!265069 (= e!164706 (Cons!3789 (h!9186 lt!108117) (++!980 (t!37441 lt!108117) lt!108116)))))

(declare-fun b!265070 () Bool)

(declare-fun res!121587 () Bool)

(assert (=> b!265070 (=> (not res!121587) (not e!164707))))

(assert (=> b!265070 (= res!121587 (= (size!3015 lt!108382) (+ (size!3015 lt!108117) (size!3015 lt!108116))))))

(declare-fun d!76153 () Bool)

(assert (=> d!76153 e!164707))

(declare-fun res!121588 () Bool)

(assert (=> d!76153 (=> (not res!121588) (not e!164707))))

(assert (=> d!76153 (= res!121588 (= (content!539 lt!108382) ((_ map or) (content!539 lt!108117) (content!539 lt!108116))))))

(assert (=> d!76153 (= lt!108382 e!164706)))

(declare-fun c!50124 () Bool)

(assert (=> d!76153 (= c!50124 ((_ is Nil!3789) lt!108117))))

(assert (=> d!76153 (= (++!980 lt!108117 lt!108116) lt!108382)))

(declare-fun b!265068 () Bool)

(assert (=> b!265068 (= e!164706 lt!108116)))

(assert (= (and d!76153 c!50124) b!265068))

(assert (= (and d!76153 (not c!50124)) b!265069))

(assert (= (and d!76153 res!121588) b!265070))

(assert (= (and b!265070 res!121587) b!265071))

(declare-fun m!330917 () Bool)

(assert (=> b!265069 m!330917))

(declare-fun m!330919 () Bool)

(assert (=> b!265070 m!330919))

(assert (=> b!265070 m!330713))

(assert (=> b!265070 m!330229))

(declare-fun m!330921 () Bool)

(assert (=> d!76153 m!330921))

(assert (=> d!76153 m!330717))

(assert (=> d!76153 m!330235))

(assert (=> b!264586 d!76153))

(declare-fun b!265076 () Bool)

(declare-fun e!164710 () Bool)

(declare-fun tp_is_empty!1803 () Bool)

(declare-fun tp!101408 () Bool)

(assert (=> b!265076 (= e!164710 (and tp_is_empty!1803 tp!101408))))

(assert (=> b!264599 (= tp!101337 e!164710)))

(assert (= (and b!264599 ((_ is Cons!3789) (originalCharacters!766 (h!9188 tokens!465)))) b!265076))

(declare-fun b!265077 () Bool)

(declare-fun e!164711 () Bool)

(declare-fun tp!101409 () Bool)

(assert (=> b!265077 (= e!164711 (and tp_is_empty!1803 tp!101409))))

(assert (=> b!264592 (= tp!101338 e!164711)))

(assert (= (and b!264592 ((_ is Cons!3789) (originalCharacters!766 separatorToken!170))) b!265077))

(declare-fun b!265090 () Bool)

(declare-fun e!164714 () Bool)

(declare-fun tp!101421 () Bool)

(assert (=> b!265090 (= e!164714 tp!101421)))

(assert (=> b!264591 (= tp!101336 e!164714)))

(declare-fun b!265088 () Bool)

(assert (=> b!265088 (= e!164714 tp_is_empty!1803)))

(declare-fun b!265089 () Bool)

(declare-fun tp!101423 () Bool)

(declare-fun tp!101424 () Bool)

(assert (=> b!265089 (= e!164714 (and tp!101423 tp!101424))))

(declare-fun b!265091 () Bool)

(declare-fun tp!101422 () Bool)

(declare-fun tp!101420 () Bool)

(assert (=> b!265091 (= e!164714 (and tp!101422 tp!101420))))

(assert (= (and b!264591 ((_ is ElementMatch!947) (regex!723 (rule!1308 (h!9188 tokens!465))))) b!265088))

(assert (= (and b!264591 ((_ is Concat!1693) (regex!723 (rule!1308 (h!9188 tokens!465))))) b!265089))

(assert (= (and b!264591 ((_ is Star!947) (regex!723 (rule!1308 (h!9188 tokens!465))))) b!265090))

(assert (= (and b!264591 ((_ is Union!947) (regex!723 (rule!1308 (h!9188 tokens!465))))) b!265091))

(declare-fun b!265105 () Bool)

(declare-fun b_free!9877 () Bool)

(declare-fun b_next!9877 () Bool)

(assert (=> b!265105 (= b_free!9877 (not b_next!9877))))

(declare-fun tp!101437 () Bool)

(declare-fun b_and!20785 () Bool)

(assert (=> b!265105 (= tp!101437 b_and!20785)))

(declare-fun b_free!9879 () Bool)

(declare-fun b_next!9879 () Bool)

(assert (=> b!265105 (= b_free!9879 (not b_next!9879))))

(declare-fun t!37502 () Bool)

(declare-fun tb!14501 () Bool)

(assert (=> (and b!265105 (= (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 tokens!465))))) (toChars!1309 (transformation!723 (rule!1308 separatorToken!170)))) t!37502) tb!14501))

(declare-fun result!18054 () Bool)

(assert (= result!18054 result!18012))

(assert (=> b!264646 t!37502))

(assert (=> d!76099 t!37502))

(declare-fun t!37504 () Bool)

(declare-fun tb!14503 () Bool)

(assert (=> (and b!265105 (= (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 tokens!465))))) (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465))))) t!37504) tb!14503))

(declare-fun result!18056 () Bool)

(assert (= result!18056 result!18038))

(assert (=> d!76105 t!37504))

(assert (=> b!265023 t!37504))

(declare-fun b_and!20787 () Bool)

(declare-fun tp!101438 () Bool)

(assert (=> b!265105 (= tp!101438 (and (=> t!37502 result!18054) (=> t!37504 result!18056) b_and!20787))))

(declare-fun tp!101435 () Bool)

(declare-fun e!164728 () Bool)

(declare-fun e!164729 () Bool)

(declare-fun b!265104 () Bool)

(assert (=> b!265104 (= e!164728 (and tp!101435 (inv!4678 (tag!933 (rule!1308 (h!9188 (t!37443 tokens!465))))) (inv!4681 (transformation!723 (rule!1308 (h!9188 (t!37443 tokens!465))))) e!164729))))

(declare-fun e!164730 () Bool)

(declare-fun b!265103 () Bool)

(declare-fun tp!101439 () Bool)

(assert (=> b!265103 (= e!164730 (and (inv!21 (value!24921 (h!9188 (t!37443 tokens!465)))) e!164728 tp!101439))))

(assert (=> b!265105 (= e!164729 (and tp!101437 tp!101438))))

(declare-fun e!164727 () Bool)

(assert (=> b!264595 (= tp!101330 e!164727)))

(declare-fun tp!101436 () Bool)

(declare-fun b!265102 () Bool)

(assert (=> b!265102 (= e!164727 (and (inv!4682 (h!9188 (t!37443 tokens!465))) e!164730 tp!101436))))

(assert (= b!265104 b!265105))

(assert (= b!265103 b!265104))

(assert (= b!265102 b!265103))

(assert (= (and b!264595 ((_ is Cons!3791) (t!37443 tokens!465))) b!265102))

(declare-fun m!330923 () Bool)

(assert (=> b!265104 m!330923))

(declare-fun m!330925 () Bool)

(assert (=> b!265104 m!330925))

(declare-fun m!330927 () Bool)

(assert (=> b!265103 m!330927))

(declare-fun m!330929 () Bool)

(assert (=> b!265102 m!330929))

(declare-fun b!265108 () Bool)

(declare-fun e!164733 () Bool)

(declare-fun tp!101441 () Bool)

(assert (=> b!265108 (= e!164733 tp!101441)))

(assert (=> b!264584 (= tp!101340 e!164733)))

(declare-fun b!265106 () Bool)

(assert (=> b!265106 (= e!164733 tp_is_empty!1803)))

(declare-fun b!265107 () Bool)

(declare-fun tp!101443 () Bool)

(declare-fun tp!101444 () Bool)

(assert (=> b!265107 (= e!164733 (and tp!101443 tp!101444))))

(declare-fun b!265109 () Bool)

(declare-fun tp!101442 () Bool)

(declare-fun tp!101440 () Bool)

(assert (=> b!265109 (= e!164733 (and tp!101442 tp!101440))))

(assert (= (and b!264584 ((_ is ElementMatch!947) (regex!723 (rule!1308 separatorToken!170)))) b!265106))

(assert (= (and b!264584 ((_ is Concat!1693) (regex!723 (rule!1308 separatorToken!170)))) b!265107))

(assert (= (and b!264584 ((_ is Star!947) (regex!723 (rule!1308 separatorToken!170)))) b!265108))

(assert (= (and b!264584 ((_ is Union!947) (regex!723 (rule!1308 separatorToken!170)))) b!265109))

(declare-fun b!265112 () Bool)

(declare-fun e!164734 () Bool)

(declare-fun tp!101446 () Bool)

(assert (=> b!265112 (= e!164734 tp!101446)))

(assert (=> b!264583 (= tp!101332 e!164734)))

(declare-fun b!265110 () Bool)

(assert (=> b!265110 (= e!164734 tp_is_empty!1803)))

(declare-fun b!265111 () Bool)

(declare-fun tp!101448 () Bool)

(declare-fun tp!101449 () Bool)

(assert (=> b!265111 (= e!164734 (and tp!101448 tp!101449))))

(declare-fun b!265113 () Bool)

(declare-fun tp!101447 () Bool)

(declare-fun tp!101445 () Bool)

(assert (=> b!265113 (= e!164734 (and tp!101447 tp!101445))))

(assert (= (and b!264583 ((_ is ElementMatch!947) (regex!723 (h!9189 rules!1920)))) b!265110))

(assert (= (and b!264583 ((_ is Concat!1693) (regex!723 (h!9189 rules!1920)))) b!265111))

(assert (= (and b!264583 ((_ is Star!947) (regex!723 (h!9189 rules!1920)))) b!265112))

(assert (= (and b!264583 ((_ is Union!947) (regex!723 (h!9189 rules!1920)))) b!265113))

(declare-fun b!265124 () Bool)

(declare-fun b_free!9881 () Bool)

(declare-fun b_next!9881 () Bool)

(assert (=> b!265124 (= b_free!9881 (not b_next!9881))))

(declare-fun tp!101459 () Bool)

(declare-fun b_and!20789 () Bool)

(assert (=> b!265124 (= tp!101459 b_and!20789)))

(declare-fun b_free!9883 () Bool)

(declare-fun b_next!9883 () Bool)

(assert (=> b!265124 (= b_free!9883 (not b_next!9883))))

(declare-fun t!37506 () Bool)

(declare-fun tb!14505 () Bool)

(assert (=> (and b!265124 (= (toChars!1309 (transformation!723 (h!9189 (t!37444 rules!1920)))) (toChars!1309 (transformation!723 (rule!1308 separatorToken!170)))) t!37506) tb!14505))

(declare-fun result!18060 () Bool)

(assert (= result!18060 result!18012))

(assert (=> b!264646 t!37506))

(assert (=> d!76099 t!37506))

(declare-fun t!37508 () Bool)

(declare-fun tb!14507 () Bool)

(assert (=> (and b!265124 (= (toChars!1309 (transformation!723 (h!9189 (t!37444 rules!1920)))) (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465))))) t!37508) tb!14507))

(declare-fun result!18062 () Bool)

(assert (= result!18062 result!18038))

(assert (=> d!76105 t!37508))

(assert (=> b!265023 t!37508))

(declare-fun b_and!20791 () Bool)

(declare-fun tp!101460 () Bool)

(assert (=> b!265124 (= tp!101460 (and (=> t!37506 result!18060) (=> t!37508 result!18062) b_and!20791))))

(declare-fun e!164743 () Bool)

(assert (=> b!265124 (= e!164743 (and tp!101459 tp!101460))))

(declare-fun b!265123 () Bool)

(declare-fun e!164744 () Bool)

(declare-fun tp!101461 () Bool)

(assert (=> b!265123 (= e!164744 (and tp!101461 (inv!4678 (tag!933 (h!9189 (t!37444 rules!1920)))) (inv!4681 (transformation!723 (h!9189 (t!37444 rules!1920)))) e!164743))))

(declare-fun b!265122 () Bool)

(declare-fun e!164745 () Bool)

(declare-fun tp!101458 () Bool)

(assert (=> b!265122 (= e!164745 (and e!164744 tp!101458))))

(assert (=> b!264594 (= tp!101341 e!164745)))

(assert (= b!265123 b!265124))

(assert (= b!265122 b!265123))

(assert (= (and b!264594 ((_ is Cons!3792) (t!37444 rules!1920))) b!265122))

(declare-fun m!330931 () Bool)

(assert (=> b!265123 m!330931))

(declare-fun m!330933 () Bool)

(assert (=> b!265123 m!330933))

(declare-fun b_lambda!8253 () Bool)

(assert (= b_lambda!8251 (or (and b!265124 b_free!9883 (= (toChars!1309 (transformation!723 (h!9189 (t!37444 rules!1920)))) (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))))) (and b!264593 b_free!9863) (and b!265105 b_free!9879 (= (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 tokens!465))))) (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))))) (and b!264597 b_free!9867 (= (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))) (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))))) (and b!264598 b_free!9859 (= (toChars!1309 (transformation!723 (h!9189 rules!1920))) (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))))) b_lambda!8253)))

(declare-fun b_lambda!8255 () Bool)

(assert (= b_lambda!8239 (or (and b!265124 b_free!9883 (= (toChars!1309 (transformation!723 (h!9189 (t!37444 rules!1920)))) (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))))) (and b!264593 b_free!9863) (and b!265105 b_free!9879 (= (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 tokens!465))))) (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))))) (and b!264597 b_free!9867 (= (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))) (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))))) (and b!264598 b_free!9859 (= (toChars!1309 (transformation!723 (h!9189 rules!1920))) (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))))) b_lambda!8255)))

(declare-fun b_lambda!8257 () Bool)

(assert (= b_lambda!8225 (or (and b!265124 b_free!9883 (= (toChars!1309 (transformation!723 (h!9189 (t!37444 rules!1920)))) (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))))) (and b!265105 b_free!9879 (= (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 tokens!465))))) (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))))) (and b!264593 b_free!9863 (= (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))) (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))))) (and b!264597 b_free!9867) (and b!264598 b_free!9859 (= (toChars!1309 (transformation!723 (h!9189 rules!1920))) (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))))) b_lambda!8257)))

(declare-fun b_lambda!8259 () Bool)

(assert (= b_lambda!8237 (or (and b!265124 b_free!9883 (= (toChars!1309 (transformation!723 (h!9189 (t!37444 rules!1920)))) (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))))) (and b!265105 b_free!9879 (= (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 tokens!465))))) (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))))) (and b!264593 b_free!9863 (= (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))) (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))))) (and b!264597 b_free!9867) (and b!264598 b_free!9859 (= (toChars!1309 (transformation!723 (h!9189 rules!1920))) (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))))) b_lambda!8259)))

(declare-fun b_lambda!8261 () Bool)

(assert (= b_lambda!8227 (or b!264588 b_lambda!8261)))

(declare-fun bs!29028 () Bool)

(declare-fun d!76155 () Bool)

(assert (= bs!29028 (and d!76155 b!264588)))

(assert (=> bs!29028 (= (dynLambda!1928 lambda!8902 (h!9188 tokens!465)) (not (isSeparator!723 (rule!1308 (h!9188 tokens!465)))))))

(assert (=> b!264672 d!76155))

(check-sat (not bm!14354) (not d!76007) (not b!264827) (not b!264665) (not d!76011) (not bm!14323) (not b_next!9877) (not b!264641) (not d!76101) (not b!265069) (not b!264633) (not b!264998) (not bm!14356) (not d!76147) (not d!76005) b_and!20781 (not b!264844) (not d!76111) (not b_next!9859) (not b!264676) (not b!264941) (not b!264635) (not b!264994) (not b!265109) (not b!265053) (not b!265091) (not b!265065) (not b!264646) (not b_next!9857) (not d!76143) (not d!76015) (not b!265032) (not b_next!9865) b_and!20787 (not b!265070) (not b!265001) (not b_next!9861) (not b!265062) (not b_next!9879) (not d!76017) (not b!265123) (not b!265045) (not b!265103) (not b!265052) (not b!265003) (not b!264652) (not b!265122) (not b!265061) (not b_lambda!8253) (not b!265113) (not d!76103) (not d!76133) (not b!264663) (not bm!14345) (not d!76125) (not d!76071) (not b!265016) (not b!265042) (not bm!14353) (not b!264647) (not b!265102) (not b!265037) (not b!264686) (not d!76009) (not d!76105) (not b!264832) (not d!76107) (not bm!14321) tp_is_empty!1803 (not b!265059) (not d!76099) (not b!264999) b_and!20789 (not b!265111) (not b!265112) (not b!264634) (not b!264977) (not bm!14347) (not b_next!9863) (not b!264943) (not d!76013) (not b!265107) (not b!264944) (not d!75995) (not d!76121) (not b!264831) (not b!264829) (not b!265034) (not b!264942) (not b_lambda!8257) (not b!265022) (not b!265090) (not d!75999) (not d!76145) (not b!265089) (not b!265051) (not d!76149) (not tb!14475) (not b!264667) (not b!265023) (not d!76153) (not d!76131) (not b!265076) (not b!265054) (not b!265104) (not b!264673) (not b_lambda!8261) (not b_lambda!8255) b_and!20785 (not b!264935) (not b!264978) (not bm!14358) (not b!265025) (not d!76127) (not bm!14349) b_and!20779 (not b!265108) (not bm!14322) (not tb!14491) (not d!76119) b_and!20721 (not bm!14348) (not b_next!9883) (not b!264691) (not b!265049) (not d!76139) (not b!265017) (not d!76129) b_and!20717 (not b!265077) b_and!20783 (not b_lambda!8259) (not b!264687) b_and!20725 (not b!265044) (not bm!14324) (not bm!14350) (not bm!14359) (not b!264690) (not b!264640) (not b!265024) (not bm!14357) (not b!265057) (not bm!14352) (not d!76115) (not b!264939) b_and!20791 (not b_next!9881) (not b!265005) (not b_next!9867))
(check-sat (not b_next!9877) (not b_next!9857) b_and!20789 (not b_next!9863) b_and!20785 b_and!20779 b_and!20721 (not b_next!9883) b_and!20717 (not b_next!9859) b_and!20781 (not b_next!9865) b_and!20787 (not b_next!9861) (not b_next!9879) b_and!20783 b_and!20725 b_and!20791 (not b_next!9881) (not b_next!9867))
(get-model)

(declare-fun d!76193 () Bool)

(declare-fun lt!108411 () BalanceConc!2544)

(assert (=> d!76193 (= (list!1535 lt!108411) (printList!285 thiss!17480 (list!1538 (singletonSeq!269 call!14358))))))

(assert (=> d!76193 (= lt!108411 (printTailRec!297 thiss!17480 (singletonSeq!269 call!14358) 0 (BalanceConc!2545 Empty!1268)))))

(assert (=> d!76193 (= (print!334 thiss!17480 (singletonSeq!269 call!14358)) lt!108411)))

(declare-fun bs!29037 () Bool)

(assert (= bs!29037 d!76193))

(declare-fun m!331031 () Bool)

(assert (=> bs!29037 m!331031))

(assert (=> bs!29037 m!330853))

(declare-fun m!331033 () Bool)

(assert (=> bs!29037 m!331033))

(assert (=> bs!29037 m!331033))

(declare-fun m!331035 () Bool)

(assert (=> bs!29037 m!331035))

(assert (=> bs!29037 m!330853))

(assert (=> bs!29037 m!330863))

(assert (=> b!265053 d!76193))

(declare-fun d!76195 () Bool)

(assert (=> d!76195 (= (list!1535 lt!108367) (list!1539 (c!50020 lt!108367)))))

(declare-fun bs!29038 () Bool)

(assert (= bs!29038 d!76195))

(declare-fun m!331037 () Bool)

(assert (=> bs!29038 m!331037))

(assert (=> b!265053 d!76195))

(declare-fun b!265277 () Bool)

(declare-fun e!164825 () Unit!4760)

(declare-fun Unit!4778 () Unit!4760)

(assert (=> b!265277 (= e!164825 Unit!4778)))

(declare-fun lt!108486 () List!3799)

(assert (=> b!265277 (= lt!108486 (++!980 (list!1535 call!14355) (list!1535 lt!108367)))))

(declare-fun lt!108497 () Token!1190)

(declare-fun lt!108498 () Unit!4760)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!51 (LexerInterface!609 Rule!1246 List!3802 List!3799) Unit!4760)

(assert (=> b!265277 (= lt!108498 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!51 thiss!17480 (rule!1308 lt!108497) rules!1920 lt!108486))))

(declare-fun isEmpty!2387 (Option!796) Bool)

(declare-fun maxPrefixOneRule!136 (LexerInterface!609 Rule!1246 List!3799) Option!796)

(assert (=> b!265277 (isEmpty!2387 (maxPrefixOneRule!136 thiss!17480 (rule!1308 lt!108497) lt!108486))))

(declare-fun lt!108500 () Unit!4760)

(assert (=> b!265277 (= lt!108500 lt!108498)))

(declare-fun lt!108491 () List!3799)

(assert (=> b!265277 (= lt!108491 (list!1535 (charsOf!368 lt!108497)))))

(declare-fun lt!108490 () Unit!4760)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!51 (LexerInterface!609 Rule!1246 List!3799 List!3799) Unit!4760)

(assert (=> b!265277 (= lt!108490 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!51 thiss!17480 (rule!1308 lt!108497) lt!108491 (++!980 (list!1535 call!14355) (list!1535 lt!108367))))))

(declare-fun matchR!270 (Regex!947 List!3799) Bool)

(assert (=> b!265277 (not (matchR!270 (regex!723 (rule!1308 lt!108497)) lt!108491))))

(declare-fun lt!108487 () Unit!4760)

(assert (=> b!265277 (= lt!108487 lt!108490)))

(assert (=> b!265277 false))

(declare-fun d!76197 () Bool)

(declare-fun isDefined!637 (Option!796) Bool)

(assert (=> d!76197 (isDefined!637 (maxPrefix!329 thiss!17480 rules!1920 (++!980 (list!1535 call!14355) (list!1535 lt!108367))))))

(declare-fun lt!108494 () Unit!4760)

(assert (=> d!76197 (= lt!108494 e!164825)))

(declare-fun c!50163 () Bool)

(assert (=> d!76197 (= c!50163 (isEmpty!2387 (maxPrefix!329 thiss!17480 rules!1920 (++!980 (list!1535 call!14355) (list!1535 lt!108367)))))))

(declare-fun lt!108501 () Unit!4760)

(declare-fun lt!108488 () Unit!4760)

(assert (=> d!76197 (= lt!108501 lt!108488)))

(declare-fun e!164826 () Bool)

(assert (=> d!76197 e!164826))

(declare-fun res!121666 () Bool)

(assert (=> d!76197 (=> (not res!121666) (not e!164826))))

(declare-datatypes ((Option!798 0))(
  ( (None!797) (Some!797 (v!14654 Rule!1246)) )
))
(declare-fun isDefined!638 (Option!798) Bool)

(declare-fun getRuleFromTag!119 (LexerInterface!609 List!3802 String!4805) Option!798)

(assert (=> d!76197 (= res!121666 (isDefined!638 (getRuleFromTag!119 thiss!17480 rules!1920 (tag!933 (rule!1308 lt!108497)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!119 (LexerInterface!609 List!3802 List!3799 Token!1190) Unit!4760)

(assert (=> d!76197 (= lt!108488 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!119 thiss!17480 rules!1920 (list!1535 call!14355) lt!108497))))

(declare-fun lt!108495 () Unit!4760)

(declare-fun lt!108485 () Unit!4760)

(assert (=> d!76197 (= lt!108495 lt!108485)))

(declare-fun lt!108496 () List!3799)

(declare-fun isPrefix!392 (List!3799 List!3799) Bool)

(assert (=> d!76197 (isPrefix!392 lt!108496 (++!980 (list!1535 call!14355) (list!1535 lt!108367)))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!51 (List!3799 List!3799 List!3799) Unit!4760)

(assert (=> d!76197 (= lt!108485 (lemmaPrefixStaysPrefixWhenAddingToSuffix!51 lt!108496 (list!1535 call!14355) (list!1535 lt!108367)))))

(assert (=> d!76197 (= lt!108496 (list!1535 (charsOf!368 lt!108497)))))

(declare-fun lt!108492 () Unit!4760)

(declare-fun lt!108499 () Unit!4760)

(assert (=> d!76197 (= lt!108492 lt!108499)))

(declare-fun lt!108493 () List!3799)

(declare-fun lt!108489 () List!3799)

(assert (=> d!76197 (isPrefix!392 lt!108493 (++!980 lt!108493 lt!108489))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!287 (List!3799 List!3799) Unit!4760)

(assert (=> d!76197 (= lt!108499 (lemmaConcatTwoListThenFirstIsPrefix!287 lt!108493 lt!108489))))

(declare-fun get!1246 (Option!796) tuple2!4248)

(assert (=> d!76197 (= lt!108489 (_2!2340 (get!1246 (maxPrefix!329 thiss!17480 rules!1920 (list!1535 call!14355)))))))

(assert (=> d!76197 (= lt!108493 (list!1535 (charsOf!368 lt!108497)))))

(assert (=> d!76197 (= lt!108497 (head!882 (list!1538 (_1!2338 (lex!402 thiss!17480 rules!1920 (seqFromList!813 (list!1535 call!14355)))))))))

(assert (=> d!76197 (not (isEmpty!2382 rules!1920))))

(assert (=> d!76197 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!106 thiss!17480 rules!1920 (list!1535 call!14355) (list!1535 lt!108367)) lt!108494)))

(declare-fun b!265276 () Bool)

(declare-fun get!1247 (Option!798) Rule!1246)

(assert (=> b!265276 (= e!164826 (= (rule!1308 lt!108497) (get!1247 (getRuleFromTag!119 thiss!17480 rules!1920 (tag!933 (rule!1308 lt!108497))))))))

(declare-fun b!265278 () Bool)

(declare-fun Unit!4779 () Unit!4760)

(assert (=> b!265278 (= e!164825 Unit!4779)))

(declare-fun b!265275 () Bool)

(declare-fun res!121665 () Bool)

(assert (=> b!265275 (=> (not res!121665) (not e!164826))))

(assert (=> b!265275 (= res!121665 (matchR!270 (regex!723 (get!1247 (getRuleFromTag!119 thiss!17480 rules!1920 (tag!933 (rule!1308 lt!108497))))) (list!1535 (charsOf!368 lt!108497))))))

(assert (= (and d!76197 res!121666) b!265275))

(assert (= (and b!265275 res!121665) b!265276))

(assert (= (and d!76197 c!50163) b!265277))

(assert (= (and d!76197 (not c!50163)) b!265278))

(declare-fun m!331281 () Bool)

(assert (=> b!265277 m!331281))

(declare-fun m!331283 () Bool)

(assert (=> b!265277 m!331283))

(declare-fun m!331285 () Bool)

(assert (=> b!265277 m!331285))

(declare-fun m!331287 () Bool)

(assert (=> b!265277 m!331287))

(declare-fun m!331289 () Bool)

(assert (=> b!265277 m!331289))

(declare-fun m!331291 () Bool)

(assert (=> b!265277 m!331291))

(declare-fun m!331293 () Bool)

(assert (=> b!265277 m!331293))

(assert (=> b!265277 m!330857))

(assert (=> b!265277 m!330859))

(assert (=> b!265277 m!331283))

(declare-fun m!331295 () Bool)

(assert (=> b!265277 m!331295))

(assert (=> b!265277 m!331291))

(assert (=> b!265277 m!331287))

(declare-fun m!331297 () Bool)

(assert (=> d!76197 m!331297))

(declare-fun m!331299 () Bool)

(assert (=> d!76197 m!331299))

(declare-fun m!331301 () Bool)

(assert (=> d!76197 m!331301))

(declare-fun m!331303 () Bool)

(assert (=> d!76197 m!331303))

(declare-fun m!331305 () Bool)

(assert (=> d!76197 m!331305))

(declare-fun m!331307 () Bool)

(assert (=> d!76197 m!331307))

(assert (=> d!76197 m!331283))

(assert (=> d!76197 m!331301))

(declare-fun m!331309 () Bool)

(assert (=> d!76197 m!331309))

(declare-fun m!331311 () Bool)

(assert (=> d!76197 m!331311))

(assert (=> d!76197 m!331291))

(assert (=> d!76197 m!331293))

(assert (=> d!76197 m!330857))

(assert (=> d!76197 m!330859))

(assert (=> d!76197 m!331283))

(assert (=> d!76197 m!330095))

(assert (=> d!76197 m!331305))

(declare-fun m!331313 () Bool)

(assert (=> d!76197 m!331313))

(assert (=> d!76197 m!330857))

(assert (=> d!76197 m!330859))

(declare-fun m!331315 () Bool)

(assert (=> d!76197 m!331315))

(assert (=> d!76197 m!330857))

(assert (=> d!76197 m!331309))

(declare-fun m!331317 () Bool)

(assert (=> d!76197 m!331317))

(assert (=> d!76197 m!331317))

(declare-fun m!331319 () Bool)

(assert (=> d!76197 m!331319))

(declare-fun m!331321 () Bool)

(assert (=> d!76197 m!331321))

(assert (=> d!76197 m!331283))

(declare-fun m!331323 () Bool)

(assert (=> d!76197 m!331323))

(assert (=> d!76197 m!331301))

(declare-fun m!331325 () Bool)

(assert (=> d!76197 m!331325))

(assert (=> d!76197 m!330857))

(declare-fun m!331327 () Bool)

(assert (=> d!76197 m!331327))

(assert (=> d!76197 m!330857))

(assert (=> d!76197 m!331297))

(assert (=> d!76197 m!331321))

(declare-fun m!331329 () Bool)

(assert (=> d!76197 m!331329))

(assert (=> d!76197 m!331291))

(assert (=> b!265276 m!331317))

(assert (=> b!265276 m!331317))

(declare-fun m!331331 () Bool)

(assert (=> b!265276 m!331331))

(assert (=> b!265275 m!331293))

(declare-fun m!331333 () Bool)

(assert (=> b!265275 m!331333))

(assert (=> b!265275 m!331291))

(assert (=> b!265275 m!331293))

(assert (=> b!265275 m!331317))

(assert (=> b!265275 m!331331))

(assert (=> b!265275 m!331291))

(assert (=> b!265275 m!331317))

(assert (=> b!265053 d!76197))

(declare-fun d!76275 () Bool)

(declare-fun e!164827 () Bool)

(assert (=> d!76275 e!164827))

(declare-fun res!121667 () Bool)

(assert (=> d!76275 (=> (not res!121667) (not e!164827))))

(declare-fun lt!108502 () BalanceConc!2546)

(assert (=> d!76275 (= res!121667 (= (list!1538 lt!108502) (Cons!3791 call!14358 Nil!3791)))))

(assert (=> d!76275 (= lt!108502 (singleton!108 call!14358))))

(assert (=> d!76275 (= (singletonSeq!269 call!14358) lt!108502)))

(declare-fun b!265279 () Bool)

(assert (=> b!265279 (= e!164827 (isBalanced!341 (c!50022 lt!108502)))))

(assert (= (and d!76275 res!121667) b!265279))

(declare-fun m!331335 () Bool)

(assert (=> d!76275 m!331335))

(declare-fun m!331337 () Bool)

(assert (=> d!76275 m!331337))

(declare-fun m!331339 () Bool)

(assert (=> b!265279 m!331339))

(assert (=> b!265053 d!76275))

(declare-fun d!76277 () Bool)

(assert (=> d!76277 (= (list!1535 call!14355) (list!1539 (c!50020 call!14355)))))

(declare-fun bs!29063 () Bool)

(assert (= bs!29063 d!76277))

(declare-fun m!331341 () Bool)

(assert (=> bs!29063 m!331341))

(assert (=> b!265053 d!76277))

(declare-fun d!76279 () Bool)

(declare-fun lt!108507 () BalanceConc!2544)

(assert (=> d!76279 (= (list!1535 lt!108507) (printListTailRec!124 thiss!17480 (dropList!158 (singletonSeq!269 call!14358) 0) (list!1535 (BalanceConc!2545 Empty!1268))))))

(declare-fun e!164828 () BalanceConc!2544)

(assert (=> d!76279 (= lt!108507 e!164828)))

(declare-fun c!50164 () Bool)

(assert (=> d!76279 (= c!50164 (>= 0 (size!3014 (singletonSeq!269 call!14358))))))

(declare-fun e!164829 () Bool)

(assert (=> d!76279 e!164829))

(declare-fun res!121668 () Bool)

(assert (=> d!76279 (=> (not res!121668) (not e!164829))))

(assert (=> d!76279 (= res!121668 (>= 0 0))))

(assert (=> d!76279 (= (printTailRec!297 thiss!17480 (singletonSeq!269 call!14358) 0 (BalanceConc!2545 Empty!1268)) lt!108507)))

(declare-fun b!265280 () Bool)

(assert (=> b!265280 (= e!164829 (<= 0 (size!3014 (singletonSeq!269 call!14358))))))

(declare-fun b!265281 () Bool)

(assert (=> b!265281 (= e!164828 (BalanceConc!2545 Empty!1268))))

(declare-fun b!265282 () Bool)

(assert (=> b!265282 (= e!164828 (printTailRec!297 thiss!17480 (singletonSeq!269 call!14358) (+ 0 1) (++!982 (BalanceConc!2545 Empty!1268) (charsOf!368 (apply!749 (singletonSeq!269 call!14358) 0)))))))

(declare-fun lt!108505 () List!3801)

(assert (=> b!265282 (= lt!108505 (list!1538 (singletonSeq!269 call!14358)))))

(declare-fun lt!108508 () Unit!4760)

(assert (=> b!265282 (= lt!108508 (lemmaDropApply!198 lt!108505 0))))

(assert (=> b!265282 (= (head!882 (drop!211 lt!108505 0)) (apply!750 lt!108505 0))))

(declare-fun lt!108504 () Unit!4760)

(assert (=> b!265282 (= lt!108504 lt!108508)))

(declare-fun lt!108509 () List!3801)

(assert (=> b!265282 (= lt!108509 (list!1538 (singletonSeq!269 call!14358)))))

(declare-fun lt!108503 () Unit!4760)

(assert (=> b!265282 (= lt!108503 (lemmaDropTail!190 lt!108509 0))))

(assert (=> b!265282 (= (tail!472 (drop!211 lt!108509 0)) (drop!211 lt!108509 (+ 0 1)))))

(declare-fun lt!108506 () Unit!4760)

(assert (=> b!265282 (= lt!108506 lt!108503)))

(assert (= (and d!76279 res!121668) b!265280))

(assert (= (and d!76279 c!50164) b!265281))

(assert (= (and d!76279 (not c!50164)) b!265282))

(declare-fun m!331343 () Bool)

(assert (=> d!76279 m!331343))

(assert (=> d!76279 m!330783))

(declare-fun m!331345 () Bool)

(assert (=> d!76279 m!331345))

(assert (=> d!76279 m!330853))

(assert (=> d!76279 m!331343))

(assert (=> d!76279 m!330853))

(declare-fun m!331347 () Bool)

(assert (=> d!76279 m!331347))

(declare-fun m!331349 () Bool)

(assert (=> d!76279 m!331349))

(assert (=> d!76279 m!330783))

(assert (=> b!265280 m!330853))

(assert (=> b!265280 m!331347))

(declare-fun m!331351 () Bool)

(assert (=> b!265282 m!331351))

(declare-fun m!331353 () Bool)

(assert (=> b!265282 m!331353))

(declare-fun m!331355 () Bool)

(assert (=> b!265282 m!331355))

(declare-fun m!331357 () Bool)

(assert (=> b!265282 m!331357))

(declare-fun m!331359 () Bool)

(assert (=> b!265282 m!331359))

(declare-fun m!331361 () Bool)

(assert (=> b!265282 m!331361))

(assert (=> b!265282 m!330853))

(assert (=> b!265282 m!331033))

(declare-fun m!331363 () Bool)

(assert (=> b!265282 m!331363))

(declare-fun m!331365 () Bool)

(assert (=> b!265282 m!331365))

(assert (=> b!265282 m!331363))

(declare-fun m!331367 () Bool)

(assert (=> b!265282 m!331367))

(assert (=> b!265282 m!331351))

(assert (=> b!265282 m!330853))

(declare-fun m!331369 () Bool)

(assert (=> b!265282 m!331369))

(declare-fun m!331371 () Bool)

(assert (=> b!265282 m!331371))

(assert (=> b!265282 m!331359))

(assert (=> b!265282 m!331369))

(assert (=> b!265282 m!330853))

(assert (=> b!265282 m!331357))

(declare-fun m!331373 () Bool)

(assert (=> b!265282 m!331373))

(assert (=> b!265053 d!76279))

(declare-fun d!76281 () Bool)

(declare-fun charsToBigInt!0 (List!3800 Int) Int)

(assert (=> d!76281 (= (inv!15 (value!24921 (h!9188 tokens!465))) (= (charsToBigInt!0 (text!5664 (value!24921 (h!9188 tokens!465))) 0) (value!24916 (value!24921 (h!9188 tokens!465)))))))

(declare-fun bs!29064 () Bool)

(assert (= bs!29064 d!76281))

(declare-fun m!331375 () Bool)

(assert (=> bs!29064 m!331375))

(assert (=> b!264665 d!76281))

(declare-fun d!76283 () Bool)

(assert (=> d!76283 (forall!939 (dropList!158 (seqFromList!814 (t!37443 tokens!465)) 0) lambda!8927)))

(declare-fun lt!108512 () Unit!4760)

(declare-fun choose!2425 (List!3801 List!3801 Int) Unit!4760)

(assert (=> d!76283 (= lt!108512 (choose!2425 (list!1538 (seqFromList!814 (t!37443 tokens!465))) (dropList!158 (seqFromList!814 (t!37443 tokens!465)) 0) lambda!8927))))

(assert (=> d!76283 (forall!939 (list!1538 (seqFromList!814 (t!37443 tokens!465))) lambda!8927)))

(assert (=> d!76283 (= (lemmaContentSubsetPreservesForall!102 (list!1538 (seqFromList!814 (t!37443 tokens!465))) (dropList!158 (seqFromList!814 (t!37443 tokens!465)) 0) lambda!8927) lt!108512)))

(declare-fun bs!29065 () Bool)

(assert (= bs!29065 d!76283))

(assert (=> bs!29065 m!330643))

(declare-fun m!331377 () Bool)

(assert (=> bs!29065 m!331377))

(assert (=> bs!29065 m!330645))

(assert (=> bs!29065 m!330643))

(declare-fun m!331379 () Bool)

(assert (=> bs!29065 m!331379))

(assert (=> bs!29065 m!330645))

(declare-fun m!331381 () Bool)

(assert (=> bs!29065 m!331381))

(assert (=> d!76071 d!76283))

(declare-fun d!76285 () Bool)

(assert (=> d!76285 (= (list!1535 lt!108319) (list!1539 (c!50020 lt!108319)))))

(declare-fun bs!29066 () Bool)

(assert (= bs!29066 d!76285))

(declare-fun m!331383 () Bool)

(assert (=> bs!29066 m!331383))

(assert (=> d!76071 d!76285))

(declare-fun bs!29067 () Bool)

(declare-fun b!265283 () Bool)

(assert (= bs!29067 (and b!265283 b!264939)))

(declare-fun lambda!8949 () Int)

(assert (=> bs!29067 (= lambda!8949 lambda!8928)))

(declare-fun bs!29068 () Bool)

(assert (= bs!29068 (and b!265283 b!265057)))

(assert (=> bs!29068 (= lambda!8949 lambda!8936)))

(declare-fun bs!29069 () Bool)

(assert (= bs!29069 (and b!265283 d!76149)))

(assert (=> bs!29069 (not (= lambda!8949 lambda!8934))))

(declare-fun bs!29070 () Bool)

(assert (= bs!29070 (and b!265283 b!264588)))

(assert (=> bs!29070 (not (= lambda!8949 lambda!8902))))

(declare-fun bs!29071 () Bool)

(assert (= bs!29071 (and b!265283 d!76111)))

(assert (=> bs!29071 (= lambda!8949 lambda!8933)))

(declare-fun bs!29072 () Bool)

(assert (= bs!29072 (and b!265283 d!76071)))

(assert (=> bs!29072 (not (= lambda!8949 lambda!8927))))

(declare-fun bs!29073 () Bool)

(assert (= bs!29073 (and b!265283 b!264827)))

(assert (=> bs!29073 (= lambda!8949 lambda!8919)))

(declare-fun bs!29074 () Bool)

(assert (= bs!29074 (and b!265283 b!265049)))

(assert (=> bs!29074 (= lambda!8949 lambda!8935)))

(declare-fun b!265293 () Bool)

(declare-fun e!164836 () Bool)

(assert (=> b!265293 (= e!164836 true)))

(declare-fun b!265292 () Bool)

(declare-fun e!164835 () Bool)

(assert (=> b!265292 (= e!164835 e!164836)))

(declare-fun b!265291 () Bool)

(declare-fun e!164834 () Bool)

(assert (=> b!265291 (= e!164834 e!164835)))

(assert (=> b!265283 e!164834))

(assert (= b!265292 b!265293))

(assert (= b!265291 b!265292))

(assert (= (and b!265283 ((_ is Cons!3792) rules!1920)) b!265291))

(assert (=> b!265293 (< (dynLambda!1929 order!2893 (toValue!1450 (transformation!723 (h!9189 rules!1920)))) (dynLambda!1930 order!2895 lambda!8949))))

(assert (=> b!265293 (< (dynLambda!1931 order!2897 (toChars!1309 (transformation!723 (h!9189 rules!1920)))) (dynLambda!1930 order!2895 lambda!8949))))

(assert (=> b!265283 true))

(declare-fun e!164830 () List!3799)

(declare-fun e!164832 () List!3799)

(assert (=> b!265283 (= e!164830 e!164832)))

(declare-fun lt!108513 () Unit!4760)

(assert (=> b!265283 (= lt!108513 (forallContained!280 (dropList!158 (seqFromList!814 (t!37443 tokens!465)) 0) lambda!8949 (h!9188 (dropList!158 (seqFromList!814 (t!37443 tokens!465)) 0))))))

(declare-fun lt!108517 () List!3799)

(assert (=> b!265283 (= lt!108517 (printWithSeparatorTokenWhenNeededList!292 thiss!17480 rules!1920 (t!37443 (dropList!158 (seqFromList!814 (t!37443 tokens!465)) 0)) separatorToken!170))))

(declare-fun lt!108516 () Option!796)

(assert (=> b!265283 (= lt!108516 (maxPrefix!329 thiss!17480 rules!1920 (++!980 (list!1535 (charsOf!368 (h!9188 (dropList!158 (seqFromList!814 (t!37443 tokens!465)) 0)))) lt!108517)))))

(declare-fun c!50168 () Bool)

(assert (=> b!265283 (= c!50168 (and ((_ is Some!795) lt!108516) (= (_1!2340 (v!14652 lt!108516)) (h!9188 (dropList!158 (seqFromList!814 (t!37443 tokens!465)) 0)))))))

(declare-fun b!265284 () Bool)

(assert (=> b!265284 (= e!164830 Nil!3789)))

(declare-fun b!265285 () Bool)

(declare-fun e!164831 () List!3799)

(declare-fun call!14373 () List!3799)

(assert (=> b!265285 (= e!164831 (++!980 call!14373 lt!108517))))

(declare-fun b!265286 () Bool)

(declare-fun e!164833 () BalanceConc!2544)

(declare-fun call!14371 () BalanceConc!2544)

(assert (=> b!265286 (= e!164833 call!14371)))

(declare-fun bm!14366 () Bool)

(declare-fun call!14372 () List!3799)

(assert (=> bm!14366 (= call!14372 (list!1535 e!164833))))

(declare-fun c!50166 () Bool)

(declare-fun c!50165 () Bool)

(assert (=> bm!14366 (= c!50166 c!50165)))

(declare-fun b!265287 () Bool)

(assert (=> b!265287 (= e!164831 Nil!3789)))

(assert (=> b!265287 (= (print!334 thiss!17480 (singletonSeq!269 (h!9188 (dropList!158 (seqFromList!814 (t!37443 tokens!465)) 0)))) (printTailRec!297 thiss!17480 (singletonSeq!269 (h!9188 (dropList!158 (seqFromList!814 (t!37443 tokens!465)) 0))) 0 (BalanceConc!2545 Empty!1268)))))

(declare-fun lt!108515 () Unit!4760)

(declare-fun Unit!4780 () Unit!4760)

(assert (=> b!265287 (= lt!108515 Unit!4780)))

(declare-fun lt!108518 () Unit!4760)

(assert (=> b!265287 (= lt!108518 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!106 thiss!17480 rules!1920 call!14372 lt!108517))))

(assert (=> b!265287 false))

(declare-fun lt!108514 () Unit!4760)

(declare-fun Unit!4781 () Unit!4760)

(assert (=> b!265287 (= lt!108514 Unit!4781)))

(declare-fun call!14374 () List!3799)

(declare-fun bm!14367 () Bool)

(assert (=> bm!14367 (= call!14373 (++!980 call!14374 (ite c!50168 lt!108517 call!14372)))))

(declare-fun b!265288 () Bool)

(assert (=> b!265288 (= e!164833 (charsOf!368 separatorToken!170))))

(declare-fun call!14370 () BalanceConc!2544)

(declare-fun bm!14368 () Bool)

(assert (=> bm!14368 (= call!14374 (list!1535 (ite c!50168 call!14370 call!14371)))))

(declare-fun b!265289 () Bool)

(assert (=> b!265289 (= e!164832 call!14373)))

(declare-fun bm!14365 () Bool)

(assert (=> bm!14365 (= call!14371 call!14370)))

(declare-fun d!76287 () Bool)

(declare-fun c!50167 () Bool)

(assert (=> d!76287 (= c!50167 ((_ is Cons!3791) (dropList!158 (seqFromList!814 (t!37443 tokens!465)) 0)))))

(assert (=> d!76287 (= (printWithSeparatorTokenWhenNeededList!292 thiss!17480 rules!1920 (dropList!158 (seqFromList!814 (t!37443 tokens!465)) 0) separatorToken!170) e!164830)))

(declare-fun bm!14369 () Bool)

(assert (=> bm!14369 (= call!14370 (charsOf!368 (h!9188 (dropList!158 (seqFromList!814 (t!37443 tokens!465)) 0))))))

(declare-fun b!265290 () Bool)

(assert (=> b!265290 (= c!50165 (and ((_ is Some!795) lt!108516) (not (= (_1!2340 (v!14652 lt!108516)) (h!9188 (dropList!158 (seqFromList!814 (t!37443 tokens!465)) 0))))))))

(assert (=> b!265290 (= e!164832 e!164831)))

(assert (= (and d!76287 c!50167) b!265283))

(assert (= (and d!76287 (not c!50167)) b!265284))

(assert (= (and b!265283 c!50168) b!265289))

(assert (= (and b!265283 (not c!50168)) b!265290))

(assert (= (and b!265290 c!50165) b!265285))

(assert (= (and b!265290 (not c!50165)) b!265287))

(assert (= (or b!265285 b!265287) bm!14365))

(assert (= (or b!265285 b!265287) bm!14366))

(assert (= (and bm!14366 c!50166) b!265288))

(assert (= (and bm!14366 (not c!50166)) b!265286))

(assert (= (or b!265289 bm!14365) bm!14369))

(assert (= (or b!265289 b!265285) bm!14368))

(assert (= (or b!265289 b!265285) bm!14367))

(declare-fun m!331385 () Bool)

(assert (=> bm!14369 m!331385))

(assert (=> b!265288 m!330125))

(declare-fun m!331387 () Bool)

(assert (=> bm!14367 m!331387))

(declare-fun m!331389 () Bool)

(assert (=> b!265285 m!331389))

(declare-fun m!331391 () Bool)

(assert (=> bm!14368 m!331391))

(declare-fun m!331393 () Bool)

(assert (=> bm!14366 m!331393))

(declare-fun m!331395 () Bool)

(assert (=> b!265287 m!331395))

(assert (=> b!265287 m!331395))

(declare-fun m!331397 () Bool)

(assert (=> b!265287 m!331397))

(assert (=> b!265287 m!331395))

(declare-fun m!331399 () Bool)

(assert (=> b!265287 m!331399))

(declare-fun m!331401 () Bool)

(assert (=> b!265287 m!331401))

(declare-fun m!331403 () Bool)

(assert (=> b!265283 m!331403))

(assert (=> b!265283 m!331385))

(assert (=> b!265283 m!331385))

(declare-fun m!331405 () Bool)

(assert (=> b!265283 m!331405))

(declare-fun m!331407 () Bool)

(assert (=> b!265283 m!331407))

(declare-fun m!331409 () Bool)

(assert (=> b!265283 m!331409))

(assert (=> b!265283 m!331405))

(assert (=> b!265283 m!331407))

(assert (=> b!265283 m!330643))

(declare-fun m!331411 () Bool)

(assert (=> b!265283 m!331411))

(assert (=> d!76071 d!76287))

(declare-fun d!76289 () Bool)

(declare-fun list!1541 (Conc!1269) List!3801)

(assert (=> d!76289 (= (dropList!158 (seqFromList!814 (t!37443 tokens!465)) 0) (drop!211 (list!1541 (c!50022 (seqFromList!814 (t!37443 tokens!465)))) 0))))

(declare-fun bs!29075 () Bool)

(assert (= bs!29075 d!76289))

(declare-fun m!331413 () Bool)

(assert (=> bs!29075 m!331413))

(assert (=> bs!29075 m!331413))

(declare-fun m!331415 () Bool)

(assert (=> bs!29075 m!331415))

(assert (=> d!76071 d!76289))

(declare-fun d!76291 () Bool)

(declare-fun lt!108521 () Int)

(declare-fun size!3018 (List!3801) Int)

(assert (=> d!76291 (= lt!108521 (size!3018 (list!1538 (seqFromList!814 (t!37443 tokens!465)))))))

(declare-fun size!3019 (Conc!1269) Int)

(assert (=> d!76291 (= lt!108521 (size!3019 (c!50022 (seqFromList!814 (t!37443 tokens!465)))))))

(assert (=> d!76291 (= (size!3014 (seqFromList!814 (t!37443 tokens!465))) lt!108521)))

(declare-fun bs!29076 () Bool)

(assert (= bs!29076 d!76291))

(assert (=> bs!29076 m!330121))

(assert (=> bs!29076 m!330645))

(assert (=> bs!29076 m!330645))

(declare-fun m!331417 () Bool)

(assert (=> bs!29076 m!331417))

(declare-fun m!331419 () Bool)

(assert (=> bs!29076 m!331419))

(assert (=> d!76071 d!76291))

(declare-fun d!76293 () Bool)

(assert (=> d!76293 (= (list!1538 (seqFromList!814 (t!37443 tokens!465))) (list!1541 (c!50022 (seqFromList!814 (t!37443 tokens!465)))))))

(declare-fun bs!29077 () Bool)

(assert (= bs!29077 d!76293))

(assert (=> bs!29077 m!331413))

(assert (=> d!76071 d!76293))

(declare-fun d!76295 () Bool)

(assert (=> d!76295 true))

(declare-fun lambda!8952 () Int)

(declare-fun order!2903 () Int)

(declare-fun dynLambda!1933 (Int Int) Int)

(assert (=> d!76295 (< (dynLambda!1931 order!2897 (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465))))) (dynLambda!1933 order!2903 lambda!8952))))

(assert (=> d!76295 true))

(assert (=> d!76295 (< (dynLambda!1929 order!2893 (toValue!1450 (transformation!723 (rule!1308 (h!9188 tokens!465))))) (dynLambda!1933 order!2903 lambda!8952))))

(declare-fun Forall!168 (Int) Bool)

(assert (=> d!76295 (= (semiInverseModEq!253 (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))) (toValue!1450 (transformation!723 (rule!1308 (h!9188 tokens!465))))) (Forall!168 lambda!8952))))

(declare-fun bs!29078 () Bool)

(assert (= bs!29078 d!76295))

(declare-fun m!331421 () Bool)

(assert (=> bs!29078 m!331421))

(assert (=> d!76119 d!76295))

(assert (=> b!265062 d!76099))

(declare-fun d!76297 () Bool)

(assert (=> d!76297 (= (list!1538 lt!108361) (list!1541 (c!50022 lt!108361)))))

(declare-fun bs!29079 () Bool)

(assert (= bs!29079 d!76297))

(declare-fun m!331423 () Bool)

(assert (=> bs!29079 m!331423))

(assert (=> d!76133 d!76297))

(declare-fun d!76299 () Bool)

(declare-fun e!164839 () Bool)

(assert (=> d!76299 e!164839))

(declare-fun res!121671 () Bool)

(assert (=> d!76299 (=> (not res!121671) (not e!164839))))

(declare-fun lt!108524 () BalanceConc!2546)

(assert (=> d!76299 (= res!121671 (= (list!1538 lt!108524) (Cons!3791 (h!9188 tokens!465) Nil!3791)))))

(declare-fun choose!2426 (Token!1190) BalanceConc!2546)

(assert (=> d!76299 (= lt!108524 (choose!2426 (h!9188 tokens!465)))))

(assert (=> d!76299 (= (singleton!108 (h!9188 tokens!465)) lt!108524)))

(declare-fun b!265300 () Bool)

(assert (=> b!265300 (= e!164839 (isBalanced!341 (c!50022 lt!108524)))))

(assert (= (and d!76299 res!121671) b!265300))

(declare-fun m!331425 () Bool)

(assert (=> d!76299 m!331425))

(declare-fun m!331427 () Bool)

(assert (=> d!76299 m!331427))

(declare-fun m!331429 () Bool)

(assert (=> b!265300 m!331429))

(assert (=> d!76133 d!76299))

(declare-fun d!76301 () Bool)

(declare-fun lt!108527 () Int)

(assert (=> d!76301 (>= lt!108527 0)))

(declare-fun e!164842 () Int)

(assert (=> d!76301 (= lt!108527 e!164842)))

(declare-fun c!50171 () Bool)

(assert (=> d!76301 (= c!50171 ((_ is Nil!3789) (originalCharacters!766 (h!9188 tokens!465))))))

(assert (=> d!76301 (= (size!3015 (originalCharacters!766 (h!9188 tokens!465))) lt!108527)))

(declare-fun b!265305 () Bool)

(assert (=> b!265305 (= e!164842 0)))

(declare-fun b!265306 () Bool)

(assert (=> b!265306 (= e!164842 (+ 1 (size!3015 (t!37441 (originalCharacters!766 (h!9188 tokens!465))))))))

(assert (= (and d!76301 c!50171) b!265305))

(assert (= (and d!76301 (not c!50171)) b!265306))

(declare-fun m!331431 () Bool)

(assert (=> b!265306 m!331431))

(assert (=> b!265024 d!76301))

(declare-fun b!265316 () Bool)

(declare-fun e!164847 () List!3799)

(declare-fun e!164848 () List!3799)

(assert (=> b!265316 (= e!164847 e!164848)))

(declare-fun c!50177 () Bool)

(assert (=> b!265316 (= c!50177 ((_ is Leaf!1969) (c!50020 (charsOf!368 separatorToken!170))))))

(declare-fun b!265315 () Bool)

(assert (=> b!265315 (= e!164847 Nil!3789)))

(declare-fun b!265318 () Bool)

(assert (=> b!265318 (= e!164848 (++!980 (list!1539 (left!3116 (c!50020 (charsOf!368 separatorToken!170)))) (list!1539 (right!3446 (c!50020 (charsOf!368 separatorToken!170))))))))

(declare-fun d!76303 () Bool)

(declare-fun c!50176 () Bool)

(assert (=> d!76303 (= c!50176 ((_ is Empty!1268) (c!50020 (charsOf!368 separatorToken!170))))))

(assert (=> d!76303 (= (list!1539 (c!50020 (charsOf!368 separatorToken!170))) e!164847)))

(declare-fun b!265317 () Bool)

(declare-fun list!1543 (IArray!2537) List!3799)

(assert (=> b!265317 (= e!164848 (list!1543 (xs!3867 (c!50020 (charsOf!368 separatorToken!170)))))))

(assert (= (and d!76303 c!50176) b!265315))

(assert (= (and d!76303 (not c!50176)) b!265316))

(assert (= (and b!265316 c!50177) b!265317))

(assert (= (and b!265316 (not c!50177)) b!265318))

(declare-fun m!331433 () Bool)

(assert (=> b!265318 m!331433))

(declare-fun m!331435 () Bool)

(assert (=> b!265318 m!331435))

(assert (=> b!265318 m!331433))

(assert (=> b!265318 m!331435))

(declare-fun m!331437 () Bool)

(assert (=> b!265318 m!331437))

(declare-fun m!331439 () Bool)

(assert (=> b!265317 m!331439))

(assert (=> d!76009 d!76303))

(declare-fun d!76305 () Bool)

(declare-fun lt!108528 () Int)

(assert (=> d!76305 (= lt!108528 (size!3018 (list!1538 lt!108109)))))

(assert (=> d!76305 (= lt!108528 (size!3019 (c!50022 lt!108109)))))

(assert (=> d!76305 (= (size!3014 lt!108109) lt!108528)))

(declare-fun bs!29080 () Bool)

(assert (= bs!29080 d!76305))

(assert (=> bs!29080 m!330775))

(assert (=> bs!29080 m!330775))

(declare-fun m!331441 () Bool)

(assert (=> bs!29080 m!331441))

(declare-fun m!331443 () Bool)

(assert (=> bs!29080 m!331443))

(assert (=> b!265032 d!76305))

(declare-fun d!76307 () Bool)

(assert (=> d!76307 (= (inv!15 (value!24921 separatorToken!170)) (= (charsToBigInt!0 (text!5664 (value!24921 separatorToken!170)) 0) (value!24916 (value!24921 separatorToken!170))))))

(declare-fun bs!29081 () Bool)

(assert (= bs!29081 d!76307))

(declare-fun m!331445 () Bool)

(assert (=> bs!29081 m!331445))

(assert (=> b!265003 d!76307))

(declare-fun d!76309 () Bool)

(declare-fun lt!108531 () Token!1190)

(assert (=> d!76309 (= lt!108531 (apply!750 (list!1538 (seqFromList!814 (t!37443 tokens!465))) 0))))

(declare-fun apply!752 (Conc!1269 Int) Token!1190)

(assert (=> d!76309 (= lt!108531 (apply!752 (c!50022 (seqFromList!814 (t!37443 tokens!465))) 0))))

(declare-fun e!164851 () Bool)

(assert (=> d!76309 e!164851))

(declare-fun res!121674 () Bool)

(assert (=> d!76309 (=> (not res!121674) (not e!164851))))

(assert (=> d!76309 (= res!121674 (<= 0 0))))

(assert (=> d!76309 (= (apply!749 (seqFromList!814 (t!37443 tokens!465)) 0) lt!108531)))

(declare-fun b!265321 () Bool)

(assert (=> b!265321 (= e!164851 (< 0 (size!3014 (seqFromList!814 (t!37443 tokens!465)))))))

(assert (= (and d!76309 res!121674) b!265321))

(assert (=> d!76309 m!330121))

(assert (=> d!76309 m!330645))

(assert (=> d!76309 m!330645))

(declare-fun m!331447 () Bool)

(assert (=> d!76309 m!331447))

(declare-fun m!331449 () Bool)

(assert (=> d!76309 m!331449))

(assert (=> b!265321 m!330121))

(assert (=> b!265321 m!330647))

(assert (=> bm!14347 d!76309))

(declare-fun d!76311 () Bool)

(assert (=> d!76311 (= (inv!4678 (tag!933 (h!9189 (t!37444 rules!1920)))) (= (mod (str.len (value!24920 (tag!933 (h!9189 (t!37444 rules!1920))))) 2) 0))))

(assert (=> b!265123 d!76311))

(declare-fun d!76313 () Bool)

(declare-fun res!121675 () Bool)

(declare-fun e!164852 () Bool)

(assert (=> d!76313 (=> (not res!121675) (not e!164852))))

(assert (=> d!76313 (= res!121675 (semiInverseModEq!253 (toChars!1309 (transformation!723 (h!9189 (t!37444 rules!1920)))) (toValue!1450 (transformation!723 (h!9189 (t!37444 rules!1920))))))))

(assert (=> d!76313 (= (inv!4681 (transformation!723 (h!9189 (t!37444 rules!1920)))) e!164852)))

(declare-fun b!265322 () Bool)

(assert (=> b!265322 (= e!164852 (equivClasses!236 (toChars!1309 (transformation!723 (h!9189 (t!37444 rules!1920)))) (toValue!1450 (transformation!723 (h!9189 (t!37444 rules!1920))))))))

(assert (= (and d!76313 res!121675) b!265322))

(declare-fun m!331451 () Bool)

(assert (=> d!76313 m!331451))

(declare-fun m!331453 () Bool)

(assert (=> b!265322 m!331453))

(assert (=> b!265123 d!76313))

(declare-fun d!76315 () Bool)

(assert (=> d!76315 true))

(declare-fun order!2905 () Int)

(declare-fun lambda!8955 () Int)

(declare-fun dynLambda!1934 (Int Int) Int)

(assert (=> d!76315 (< (dynLambda!1929 order!2893 (toValue!1450 (transformation!723 (h!9189 rules!1920)))) (dynLambda!1934 order!2905 lambda!8955))))

(declare-fun Forall2!143 (Int) Bool)

(assert (=> d!76315 (= (equivClasses!236 (toChars!1309 (transformation!723 (h!9189 rules!1920))) (toValue!1450 (transformation!723 (h!9189 rules!1920)))) (Forall2!143 lambda!8955))))

(declare-fun bs!29082 () Bool)

(assert (= bs!29082 d!76315))

(declare-fun m!331455 () Bool)

(assert (=> bs!29082 m!331455))

(assert (=> b!265044 d!76315))

(declare-fun b!265328 () Bool)

(declare-fun e!164855 () List!3799)

(declare-fun e!164856 () List!3799)

(assert (=> b!265328 (= e!164855 e!164856)))

(declare-fun c!50179 () Bool)

(assert (=> b!265328 (= c!50179 ((_ is Leaf!1969) (c!50020 (printWithSeparatorTokenWhenNeededRec!284 thiss!17480 rules!1920 (seqFromList!814 (t!37443 tokens!465)) separatorToken!170 0))))))

(declare-fun b!265327 () Bool)

(assert (=> b!265327 (= e!164855 Nil!3789)))

(declare-fun b!265330 () Bool)

(assert (=> b!265330 (= e!164856 (++!980 (list!1539 (left!3116 (c!50020 (printWithSeparatorTokenWhenNeededRec!284 thiss!17480 rules!1920 (seqFromList!814 (t!37443 tokens!465)) separatorToken!170 0)))) (list!1539 (right!3446 (c!50020 (printWithSeparatorTokenWhenNeededRec!284 thiss!17480 rules!1920 (seqFromList!814 (t!37443 tokens!465)) separatorToken!170 0))))))))

(declare-fun d!76317 () Bool)

(declare-fun c!50178 () Bool)

(assert (=> d!76317 (= c!50178 ((_ is Empty!1268) (c!50020 (printWithSeparatorTokenWhenNeededRec!284 thiss!17480 rules!1920 (seqFromList!814 (t!37443 tokens!465)) separatorToken!170 0))))))

(assert (=> d!76317 (= (list!1539 (c!50020 (printWithSeparatorTokenWhenNeededRec!284 thiss!17480 rules!1920 (seqFromList!814 (t!37443 tokens!465)) separatorToken!170 0))) e!164855)))

(declare-fun b!265329 () Bool)

(assert (=> b!265329 (= e!164856 (list!1543 (xs!3867 (c!50020 (printWithSeparatorTokenWhenNeededRec!284 thiss!17480 rules!1920 (seqFromList!814 (t!37443 tokens!465)) separatorToken!170 0)))))))

(assert (= (and d!76317 c!50178) b!265327))

(assert (= (and d!76317 (not c!50178)) b!265328))

(assert (= (and b!265328 c!50179) b!265329))

(assert (= (and b!265328 (not c!50179)) b!265330))

(declare-fun m!331457 () Bool)

(assert (=> b!265330 m!331457))

(declare-fun m!331459 () Bool)

(assert (=> b!265330 m!331459))

(assert (=> b!265330 m!331457))

(assert (=> b!265330 m!331459))

(declare-fun m!331461 () Bool)

(assert (=> b!265330 m!331461))

(declare-fun m!331463 () Bool)

(assert (=> b!265329 m!331463))

(assert (=> d!76011 d!76317))

(declare-fun lt!108532 () List!3799)

(declare-fun e!164858 () Bool)

(declare-fun b!265334 () Bool)

(assert (=> b!265334 (= e!164858 (or (not (= lt!108228 Nil!3789)) (= lt!108532 call!14328)))))

(declare-fun b!265332 () Bool)

(declare-fun e!164857 () List!3799)

(assert (=> b!265332 (= e!164857 (Cons!3789 (h!9186 call!14328) (++!980 (t!37441 call!14328) lt!108228)))))

(declare-fun b!265333 () Bool)

(declare-fun res!121678 () Bool)

(assert (=> b!265333 (=> (not res!121678) (not e!164858))))

(assert (=> b!265333 (= res!121678 (= (size!3015 lt!108532) (+ (size!3015 call!14328) (size!3015 lt!108228))))))

(declare-fun d!76319 () Bool)

(assert (=> d!76319 e!164858))

(declare-fun res!121679 () Bool)

(assert (=> d!76319 (=> (not res!121679) (not e!164858))))

(assert (=> d!76319 (= res!121679 (= (content!539 lt!108532) ((_ map or) (content!539 call!14328) (content!539 lt!108228))))))

(assert (=> d!76319 (= lt!108532 e!164857)))

(declare-fun c!50180 () Bool)

(assert (=> d!76319 (= c!50180 ((_ is Nil!3789) call!14328))))

(assert (=> d!76319 (= (++!980 call!14328 lt!108228) lt!108532)))

(declare-fun b!265331 () Bool)

(assert (=> b!265331 (= e!164857 lt!108228)))

(assert (= (and d!76319 c!50180) b!265331))

(assert (= (and d!76319 (not c!50180)) b!265332))

(assert (= (and d!76319 res!121679) b!265333))

(assert (= (and b!265333 res!121678) b!265334))

(declare-fun m!331465 () Bool)

(assert (=> b!265332 m!331465))

(declare-fun m!331467 () Bool)

(assert (=> b!265333 m!331467))

(declare-fun m!331469 () Bool)

(assert (=> b!265333 m!331469))

(declare-fun m!331471 () Bool)

(assert (=> b!265333 m!331471))

(declare-fun m!331473 () Bool)

(assert (=> d!76319 m!331473))

(declare-fun m!331475 () Bool)

(assert (=> d!76319 m!331475))

(declare-fun m!331477 () Bool)

(assert (=> d!76319 m!331477))

(assert (=> b!264829 d!76319))

(declare-fun b!265335 () Bool)

(declare-fun e!164860 () Bool)

(assert (=> b!265335 (= e!164860 (inv!16 (value!24921 (h!9188 (t!37443 tokens!465)))))))

(declare-fun b!265336 () Bool)

(declare-fun e!164861 () Bool)

(assert (=> b!265336 (= e!164860 e!164861)))

(declare-fun c!50181 () Bool)

(assert (=> b!265336 (= c!50181 ((_ is IntegerValue!2236) (value!24921 (h!9188 (t!37443 tokens!465)))))))

(declare-fun d!76321 () Bool)

(declare-fun c!50182 () Bool)

(assert (=> d!76321 (= c!50182 ((_ is IntegerValue!2235) (value!24921 (h!9188 (t!37443 tokens!465)))))))

(assert (=> d!76321 (= (inv!21 (value!24921 (h!9188 (t!37443 tokens!465)))) e!164860)))

(declare-fun b!265337 () Bool)

(declare-fun e!164859 () Bool)

(assert (=> b!265337 (= e!164859 (inv!15 (value!24921 (h!9188 (t!37443 tokens!465)))))))

(declare-fun b!265338 () Bool)

(declare-fun res!121680 () Bool)

(assert (=> b!265338 (=> res!121680 e!164859)))

(assert (=> b!265338 (= res!121680 (not ((_ is IntegerValue!2237) (value!24921 (h!9188 (t!37443 tokens!465))))))))

(assert (=> b!265338 (= e!164861 e!164859)))

(declare-fun b!265339 () Bool)

(assert (=> b!265339 (= e!164861 (inv!17 (value!24921 (h!9188 (t!37443 tokens!465)))))))

(assert (= (and d!76321 c!50182) b!265335))

(assert (= (and d!76321 (not c!50182)) b!265336))

(assert (= (and b!265336 c!50181) b!265339))

(assert (= (and b!265336 (not c!50181)) b!265338))

(assert (= (and b!265338 (not res!121680)) b!265337))

(declare-fun m!331479 () Bool)

(assert (=> b!265335 m!331479))

(declare-fun m!331481 () Bool)

(assert (=> b!265337 m!331481))

(declare-fun m!331483 () Bool)

(assert (=> b!265339 m!331483))

(assert (=> b!265103 d!76321))

(declare-fun lt!108533 () List!3799)

(declare-fun e!164863 () Bool)

(declare-fun b!265343 () Bool)

(assert (=> b!265343 (= e!164863 (or (not (= (ite c!50080 lt!108228 call!14327) Nil!3789)) (= lt!108533 call!14329)))))

(declare-fun e!164862 () List!3799)

(declare-fun b!265341 () Bool)

(assert (=> b!265341 (= e!164862 (Cons!3789 (h!9186 call!14329) (++!980 (t!37441 call!14329) (ite c!50080 lt!108228 call!14327))))))

(declare-fun b!265342 () Bool)

(declare-fun res!121681 () Bool)

(assert (=> b!265342 (=> (not res!121681) (not e!164863))))

(assert (=> b!265342 (= res!121681 (= (size!3015 lt!108533) (+ (size!3015 call!14329) (size!3015 (ite c!50080 lt!108228 call!14327)))))))

(declare-fun d!76323 () Bool)

(assert (=> d!76323 e!164863))

(declare-fun res!121682 () Bool)

(assert (=> d!76323 (=> (not res!121682) (not e!164863))))

(assert (=> d!76323 (= res!121682 (= (content!539 lt!108533) ((_ map or) (content!539 call!14329) (content!539 (ite c!50080 lt!108228 call!14327)))))))

(assert (=> d!76323 (= lt!108533 e!164862)))

(declare-fun c!50183 () Bool)

(assert (=> d!76323 (= c!50183 ((_ is Nil!3789) call!14329))))

(assert (=> d!76323 (= (++!980 call!14329 (ite c!50080 lt!108228 call!14327)) lt!108533)))

(declare-fun b!265340 () Bool)

(assert (=> b!265340 (= e!164862 (ite c!50080 lt!108228 call!14327))))

(assert (= (and d!76323 c!50183) b!265340))

(assert (= (and d!76323 (not c!50183)) b!265341))

(assert (= (and d!76323 res!121682) b!265342))

(assert (= (and b!265342 res!121681) b!265343))

(declare-fun m!331485 () Bool)

(assert (=> b!265341 m!331485))

(declare-fun m!331487 () Bool)

(assert (=> b!265342 m!331487))

(declare-fun m!331489 () Bool)

(assert (=> b!265342 m!331489))

(declare-fun m!331491 () Bool)

(assert (=> b!265342 m!331491))

(declare-fun m!331493 () Bool)

(assert (=> d!76323 m!331493))

(declare-fun m!331495 () Bool)

(assert (=> d!76323 m!331495))

(declare-fun m!331497 () Bool)

(assert (=> d!76323 m!331497))

(assert (=> bm!14322 d!76323))

(declare-fun b!265352 () Bool)

(declare-fun e!164871 () Bool)

(declare-fun e!164872 () Bool)

(assert (=> b!265352 (= e!164871 e!164872)))

(declare-fun res!121688 () Bool)

(declare-fun rulesUseDisjointChars!57 (Rule!1246 Rule!1246) Bool)

(assert (=> b!265352 (= res!121688 (rulesUseDisjointChars!57 (h!9189 rules!1920) (h!9189 rules!1920)))))

(assert (=> b!265352 (=> (not res!121688) (not e!164872))))

(declare-fun d!76325 () Bool)

(declare-fun c!50186 () Bool)

(assert (=> d!76325 (= c!50186 (and ((_ is Cons!3792) rules!1920) (not (= (isSeparator!723 (h!9189 rules!1920)) (isSeparator!723 (h!9189 rules!1920))))))))

(assert (=> d!76325 (= (ruleDisjointCharsFromAllFromOtherType!111 (h!9189 rules!1920) rules!1920) e!164871)))

(declare-fun b!265353 () Bool)

(declare-fun e!164870 () Bool)

(assert (=> b!265353 (= e!164871 e!164870)))

(declare-fun res!121687 () Bool)

(assert (=> b!265353 (= res!121687 (not ((_ is Cons!3792) rules!1920)))))

(assert (=> b!265353 (=> res!121687 e!164870)))

(declare-fun b!265354 () Bool)

(declare-fun call!14377 () Bool)

(assert (=> b!265354 (= e!164870 call!14377)))

(declare-fun bm!14372 () Bool)

(assert (=> bm!14372 (= call!14377 (ruleDisjointCharsFromAllFromOtherType!111 (h!9189 rules!1920) (t!37444 rules!1920)))))

(declare-fun b!265355 () Bool)

(assert (=> b!265355 (= e!164872 call!14377)))

(assert (= (and d!76325 c!50186) b!265352))

(assert (= (and d!76325 (not c!50186)) b!265353))

(assert (= (and b!265352 res!121688) b!265355))

(assert (= (and b!265353 (not res!121687)) b!265354))

(assert (= (or b!265355 b!265354) bm!14372))

(declare-fun m!331499 () Bool)

(assert (=> b!265352 m!331499))

(declare-fun m!331501 () Bool)

(assert (=> bm!14372 m!331501))

(assert (=> b!264640 d!76325))

(declare-fun d!76327 () Bool)

(declare-fun lt!108570 () Bool)

(assert (=> d!76327 (= lt!108570 (isEmpty!2385 (list!1535 (_2!2338 lt!108130))))))

(declare-fun isEmpty!2389 (Conc!1268) Bool)

(assert (=> d!76327 (= lt!108570 (isEmpty!2389 (c!50020 (_2!2338 lt!108130))))))

(assert (=> d!76327 (= (isEmpty!2384 (_2!2338 lt!108130)) lt!108570)))

(declare-fun bs!29083 () Bool)

(assert (= bs!29083 d!76327))

(declare-fun m!331503 () Bool)

(assert (=> bs!29083 m!331503))

(assert (=> bs!29083 m!331503))

(declare-fun m!331505 () Bool)

(assert (=> bs!29083 m!331505))

(declare-fun m!331507 () Bool)

(assert (=> bs!29083 m!331507))

(assert (=> b!264634 d!76327))

(declare-fun d!76329 () Bool)

(declare-fun isBalanced!343 (Conc!1268) Bool)

(assert (=> d!76329 (= (inv!4686 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))) (value!24921 (h!9188 tokens!465)))) (isBalanced!343 (c!50020 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))) (value!24921 (h!9188 tokens!465))))))))

(declare-fun bs!29084 () Bool)

(assert (= bs!29084 d!76329))

(declare-fun m!331509 () Bool)

(assert (=> bs!29084 m!331509))

(assert (=> tb!14491 d!76329))

(declare-fun d!76331 () Bool)

(declare-fun lt!108571 () Int)

(assert (=> d!76331 (>= lt!108571 0)))

(declare-fun e!164877 () Int)

(assert (=> d!76331 (= lt!108571 e!164877)))

(declare-fun c!50189 () Bool)

(assert (=> d!76331 (= c!50189 ((_ is Nil!3789) (originalCharacters!766 separatorToken!170)))))

(assert (=> d!76331 (= (size!3015 (originalCharacters!766 separatorToken!170)) lt!108571)))

(declare-fun b!265364 () Bool)

(assert (=> b!265364 (= e!164877 0)))

(declare-fun b!265365 () Bool)

(assert (=> b!265365 (= e!164877 (+ 1 (size!3015 (t!37441 (originalCharacters!766 separatorToken!170)))))))

(assert (= (and d!76331 c!50189) b!265364))

(assert (= (and d!76331 (not c!50189)) b!265365))

(declare-fun m!331511 () Bool)

(assert (=> b!265365 m!331511))

(assert (=> b!264647 d!76331))

(declare-fun e!164879 () Bool)

(declare-fun lt!108572 () List!3799)

(declare-fun b!265369 () Bool)

(assert (=> b!265369 (= e!164879 (or (not (= lt!108380 Nil!3789)) (= lt!108572 call!14363)))))

(declare-fun b!265367 () Bool)

(declare-fun e!164878 () List!3799)

(assert (=> b!265367 (= e!164878 (Cons!3789 (h!9186 call!14363) (++!980 (t!37441 call!14363) lt!108380)))))

(declare-fun b!265368 () Bool)

(declare-fun res!121693 () Bool)

(assert (=> b!265368 (=> (not res!121693) (not e!164879))))

(assert (=> b!265368 (= res!121693 (= (size!3015 lt!108572) (+ (size!3015 call!14363) (size!3015 lt!108380))))))

(declare-fun d!76333 () Bool)

(assert (=> d!76333 e!164879))

(declare-fun res!121694 () Bool)

(assert (=> d!76333 (=> (not res!121694) (not e!164879))))

(assert (=> d!76333 (= res!121694 (= (content!539 lt!108572) ((_ map or) (content!539 call!14363) (content!539 lt!108380))))))

(assert (=> d!76333 (= lt!108572 e!164878)))

(declare-fun c!50190 () Bool)

(assert (=> d!76333 (= c!50190 ((_ is Nil!3789) call!14363))))

(assert (=> d!76333 (= (++!980 call!14363 lt!108380) lt!108572)))

(declare-fun b!265366 () Bool)

(assert (=> b!265366 (= e!164878 lt!108380)))

(assert (= (and d!76333 c!50190) b!265366))

(assert (= (and d!76333 (not c!50190)) b!265367))

(assert (= (and d!76333 res!121694) b!265368))

(assert (= (and b!265368 res!121693) b!265369))

(declare-fun m!331513 () Bool)

(assert (=> b!265367 m!331513))

(declare-fun m!331515 () Bool)

(assert (=> b!265368 m!331515))

(declare-fun m!331517 () Bool)

(assert (=> b!265368 m!331517))

(declare-fun m!331519 () Bool)

(assert (=> b!265368 m!331519))

(declare-fun m!331521 () Bool)

(assert (=> d!76333 m!331521))

(declare-fun m!331523 () Bool)

(assert (=> d!76333 m!331523))

(declare-fun m!331525 () Bool)

(assert (=> d!76333 m!331525))

(assert (=> b!265059 d!76333))

(declare-fun bs!29085 () Bool)

(declare-fun b!265370 () Bool)

(assert (= bs!29085 (and b!265370 b!264939)))

(declare-fun lambda!8956 () Int)

(assert (=> bs!29085 (= lambda!8956 lambda!8928)))

(declare-fun bs!29086 () Bool)

(assert (= bs!29086 (and b!265370 b!265057)))

(assert (=> bs!29086 (= lambda!8956 lambda!8936)))

(declare-fun bs!29087 () Bool)

(assert (= bs!29087 (and b!265370 d!76149)))

(assert (=> bs!29087 (not (= lambda!8956 lambda!8934))))

(declare-fun bs!29088 () Bool)

(assert (= bs!29088 (and b!265370 b!265283)))

(assert (=> bs!29088 (= lambda!8956 lambda!8949)))

(declare-fun bs!29089 () Bool)

(assert (= bs!29089 (and b!265370 b!264588)))

(assert (=> bs!29089 (not (= lambda!8956 lambda!8902))))

(declare-fun bs!29090 () Bool)

(assert (= bs!29090 (and b!265370 d!76111)))

(assert (=> bs!29090 (= lambda!8956 lambda!8933)))

(declare-fun bs!29091 () Bool)

(assert (= bs!29091 (and b!265370 d!76071)))

(assert (=> bs!29091 (not (= lambda!8956 lambda!8927))))

(declare-fun bs!29092 () Bool)

(assert (= bs!29092 (and b!265370 b!264827)))

(assert (=> bs!29092 (= lambda!8956 lambda!8919)))

(declare-fun bs!29093 () Bool)

(assert (= bs!29093 (and b!265370 b!265049)))

(assert (=> bs!29093 (= lambda!8956 lambda!8935)))

(declare-fun b!265380 () Bool)

(declare-fun e!164886 () Bool)

(assert (=> b!265380 (= e!164886 true)))

(declare-fun b!265379 () Bool)

(declare-fun e!164885 () Bool)

(assert (=> b!265379 (= e!164885 e!164886)))

(declare-fun b!265378 () Bool)

(declare-fun e!164884 () Bool)

(assert (=> b!265378 (= e!164884 e!164885)))

(assert (=> b!265370 e!164884))

(assert (= b!265379 b!265380))

(assert (= b!265378 b!265379))

(assert (= (and b!265370 ((_ is Cons!3792) rules!1920)) b!265378))

(assert (=> b!265380 (< (dynLambda!1929 order!2893 (toValue!1450 (transformation!723 (h!9189 rules!1920)))) (dynLambda!1930 order!2895 lambda!8956))))

(assert (=> b!265380 (< (dynLambda!1931 order!2897 (toChars!1309 (transformation!723 (h!9189 rules!1920)))) (dynLambda!1930 order!2895 lambda!8956))))

(assert (=> b!265370 true))

(declare-fun e!164880 () List!3799)

(declare-fun e!164882 () List!3799)

(assert (=> b!265370 (= e!164880 e!164882)))

(declare-fun lt!108573 () Unit!4760)

(assert (=> b!265370 (= lt!108573 (forallContained!280 (dropList!158 lt!108115 0) lambda!8956 (h!9188 (dropList!158 lt!108115 0))))))

(declare-fun lt!108577 () List!3799)

(assert (=> b!265370 (= lt!108577 (printWithSeparatorTokenWhenNeededList!292 thiss!17480 rules!1920 (t!37443 (dropList!158 lt!108115 0)) separatorToken!170))))

(declare-fun lt!108576 () Option!796)

(assert (=> b!265370 (= lt!108576 (maxPrefix!329 thiss!17480 rules!1920 (++!980 (list!1535 (charsOf!368 (h!9188 (dropList!158 lt!108115 0)))) lt!108577)))))

(declare-fun c!50194 () Bool)

(assert (=> b!265370 (= c!50194 (and ((_ is Some!795) lt!108576) (= (_1!2340 (v!14652 lt!108576)) (h!9188 (dropList!158 lt!108115 0)))))))

(declare-fun b!265371 () Bool)

(assert (=> b!265371 (= e!164880 Nil!3789)))

(declare-fun b!265372 () Bool)

(declare-fun e!164881 () List!3799)

(declare-fun call!14381 () List!3799)

(assert (=> b!265372 (= e!164881 (++!980 call!14381 lt!108577))))

(declare-fun b!265373 () Bool)

(declare-fun e!164883 () BalanceConc!2544)

(declare-fun call!14379 () BalanceConc!2544)

(assert (=> b!265373 (= e!164883 call!14379)))

(declare-fun bm!14374 () Bool)

(declare-fun call!14380 () List!3799)

(assert (=> bm!14374 (= call!14380 (list!1535 e!164883))))

(declare-fun c!50192 () Bool)

(declare-fun c!50191 () Bool)

(assert (=> bm!14374 (= c!50192 c!50191)))

(declare-fun b!265374 () Bool)

(assert (=> b!265374 (= e!164881 Nil!3789)))

(assert (=> b!265374 (= (print!334 thiss!17480 (singletonSeq!269 (h!9188 (dropList!158 lt!108115 0)))) (printTailRec!297 thiss!17480 (singletonSeq!269 (h!9188 (dropList!158 lt!108115 0))) 0 (BalanceConc!2545 Empty!1268)))))

(declare-fun lt!108575 () Unit!4760)

(declare-fun Unit!4783 () Unit!4760)

(assert (=> b!265374 (= lt!108575 Unit!4783)))

(declare-fun lt!108578 () Unit!4760)

(assert (=> b!265374 (= lt!108578 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!106 thiss!17480 rules!1920 call!14380 lt!108577))))

(assert (=> b!265374 false))

(declare-fun lt!108574 () Unit!4760)

(declare-fun Unit!4785 () Unit!4760)

(assert (=> b!265374 (= lt!108574 Unit!4785)))

(declare-fun call!14382 () List!3799)

(declare-fun bm!14375 () Bool)

(assert (=> bm!14375 (= call!14381 (++!980 call!14382 (ite c!50194 lt!108577 call!14380)))))

(declare-fun b!265375 () Bool)

(assert (=> b!265375 (= e!164883 (charsOf!368 separatorToken!170))))

(declare-fun call!14378 () BalanceConc!2544)

(declare-fun bm!14376 () Bool)

(assert (=> bm!14376 (= call!14382 (list!1535 (ite c!50194 call!14378 call!14379)))))

(declare-fun b!265376 () Bool)

(assert (=> b!265376 (= e!164882 call!14381)))

(declare-fun bm!14373 () Bool)

(assert (=> bm!14373 (= call!14379 call!14378)))

(declare-fun d!76335 () Bool)

(declare-fun c!50193 () Bool)

(assert (=> d!76335 (= c!50193 ((_ is Cons!3791) (dropList!158 lt!108115 0)))))

(assert (=> d!76335 (= (printWithSeparatorTokenWhenNeededList!292 thiss!17480 rules!1920 (dropList!158 lt!108115 0) separatorToken!170) e!164880)))

(declare-fun bm!14377 () Bool)

(assert (=> bm!14377 (= call!14378 (charsOf!368 (h!9188 (dropList!158 lt!108115 0))))))

(declare-fun b!265377 () Bool)

(assert (=> b!265377 (= c!50191 (and ((_ is Some!795) lt!108576) (not (= (_1!2340 (v!14652 lt!108576)) (h!9188 (dropList!158 lt!108115 0))))))))

(assert (=> b!265377 (= e!164882 e!164881)))

(assert (= (and d!76335 c!50193) b!265370))

(assert (= (and d!76335 (not c!50193)) b!265371))

(assert (= (and b!265370 c!50194) b!265376))

(assert (= (and b!265370 (not c!50194)) b!265377))

(assert (= (and b!265377 c!50191) b!265372))

(assert (= (and b!265377 (not c!50191)) b!265374))

(assert (= (or b!265372 b!265374) bm!14373))

(assert (= (or b!265372 b!265374) bm!14374))

(assert (= (and bm!14374 c!50192) b!265375))

(assert (= (and bm!14374 (not c!50192)) b!265373))

(assert (= (or b!265376 bm!14373) bm!14377))

(assert (= (or b!265376 b!265372) bm!14376))

(assert (= (or b!265376 b!265372) bm!14375))

(declare-fun m!331527 () Bool)

(assert (=> bm!14377 m!331527))

(assert (=> b!265375 m!330125))

(declare-fun m!331529 () Bool)

(assert (=> bm!14375 m!331529))

(declare-fun m!331531 () Bool)

(assert (=> b!265372 m!331531))

(declare-fun m!331533 () Bool)

(assert (=> bm!14376 m!331533))

(declare-fun m!331535 () Bool)

(assert (=> bm!14374 m!331535))

(declare-fun m!331537 () Bool)

(assert (=> b!265374 m!331537))

(assert (=> b!265374 m!331537))

(declare-fun m!331539 () Bool)

(assert (=> b!265374 m!331539))

(assert (=> b!265374 m!331537))

(declare-fun m!331541 () Bool)

(assert (=> b!265374 m!331541))

(declare-fun m!331543 () Bool)

(assert (=> b!265374 m!331543))

(declare-fun m!331545 () Bool)

(assert (=> b!265370 m!331545))

(assert (=> b!265370 m!331527))

(assert (=> b!265370 m!331527))

(declare-fun m!331547 () Bool)

(assert (=> b!265370 m!331547))

(declare-fun m!331549 () Bool)

(assert (=> b!265370 m!331549))

(declare-fun m!331551 () Bool)

(assert (=> b!265370 m!331551))

(assert (=> b!265370 m!331547))

(assert (=> b!265370 m!331549))

(assert (=> b!265370 m!330843))

(declare-fun m!331553 () Bool)

(assert (=> b!265370 m!331553))

(assert (=> d!76149 d!76335))

(declare-fun d!76337 () Bool)

(assert (=> d!76337 (= (dropList!158 lt!108115 0) (drop!211 (list!1541 (c!50022 lt!108115)) 0))))

(declare-fun bs!29094 () Bool)

(assert (= bs!29094 d!76337))

(declare-fun m!331555 () Bool)

(assert (=> bs!29094 m!331555))

(assert (=> bs!29094 m!331555))

(declare-fun m!331557 () Bool)

(assert (=> bs!29094 m!331557))

(assert (=> d!76149 d!76337))

(declare-fun d!76339 () Bool)

(declare-fun lt!108596 () Int)

(assert (=> d!76339 (= lt!108596 (size!3018 (list!1538 lt!108115)))))

(assert (=> d!76339 (= lt!108596 (size!3019 (c!50022 lt!108115)))))

(assert (=> d!76339 (= (size!3014 lt!108115) lt!108596)))

(declare-fun bs!29095 () Bool)

(assert (= bs!29095 d!76339))

(assert (=> bs!29095 m!330749))

(assert (=> bs!29095 m!330749))

(declare-fun m!331559 () Bool)

(assert (=> bs!29095 m!331559))

(declare-fun m!331561 () Bool)

(assert (=> bs!29095 m!331561))

(assert (=> d!76149 d!76339))

(declare-fun d!76341 () Bool)

(assert (=> d!76341 (= (list!1535 lt!108372) (list!1539 (c!50020 lt!108372)))))

(declare-fun bs!29096 () Bool)

(assert (= bs!29096 d!76341))

(declare-fun m!331563 () Bool)

(assert (=> bs!29096 m!331563))

(assert (=> d!76149 d!76341))

(declare-fun d!76343 () Bool)

(assert (=> d!76343 (forall!939 (dropList!158 lt!108115 0) lambda!8934)))

(declare-fun lt!108597 () Unit!4760)

(assert (=> d!76343 (= lt!108597 (choose!2425 (list!1538 lt!108115) (dropList!158 lt!108115 0) lambda!8934))))

(assert (=> d!76343 (forall!939 (list!1538 lt!108115) lambda!8934)))

(assert (=> d!76343 (= (lemmaContentSubsetPreservesForall!102 (list!1538 lt!108115) (dropList!158 lt!108115 0) lambda!8934) lt!108597)))

(declare-fun bs!29097 () Bool)

(assert (= bs!29097 d!76343))

(assert (=> bs!29097 m!330843))

(declare-fun m!331565 () Bool)

(assert (=> bs!29097 m!331565))

(assert (=> bs!29097 m!330749))

(assert (=> bs!29097 m!330843))

(declare-fun m!331567 () Bool)

(assert (=> bs!29097 m!331567))

(assert (=> bs!29097 m!330749))

(declare-fun m!331569 () Bool)

(assert (=> bs!29097 m!331569))

(assert (=> d!76149 d!76343))

(declare-fun d!76345 () Bool)

(assert (=> d!76345 (= (list!1538 lt!108115) (list!1541 (c!50022 lt!108115)))))

(declare-fun bs!29098 () Bool)

(assert (= bs!29098 d!76345))

(assert (=> bs!29098 m!331555))

(assert (=> d!76149 d!76345))

(declare-fun d!76347 () Bool)

(declare-fun lt!108598 () Token!1190)

(assert (=> d!76347 (= lt!108598 (apply!750 (list!1538 lt!108115) 0))))

(assert (=> d!76347 (= lt!108598 (apply!752 (c!50022 lt!108115) 0))))

(declare-fun e!164889 () Bool)

(assert (=> d!76347 e!164889))

(declare-fun res!121697 () Bool)

(assert (=> d!76347 (=> (not res!121697) (not e!164889))))

(assert (=> d!76347 (= res!121697 (<= 0 0))))

(assert (=> d!76347 (= (apply!749 lt!108115 0) lt!108598)))

(declare-fun b!265385 () Bool)

(assert (=> b!265385 (= e!164889 (< 0 (size!3014 lt!108115)))))

(assert (= (and d!76347 res!121697) b!265385))

(assert (=> d!76347 m!330749))

(assert (=> d!76347 m!330749))

(declare-fun m!331571 () Bool)

(assert (=> d!76347 m!331571))

(declare-fun m!331573 () Bool)

(assert (=> d!76347 m!331573))

(assert (=> b!265385 m!330845))

(assert (=> bm!14352 d!76347))

(declare-fun d!76349 () Bool)

(assert (=> d!76349 (= (isEmpty!2385 (originalCharacters!766 (h!9188 tokens!465))) ((_ is Nil!3789) (originalCharacters!766 (h!9188 tokens!465))))))

(assert (=> d!76121 d!76349))

(declare-fun e!164891 () Bool)

(declare-fun lt!108599 () List!3799)

(declare-fun b!265389 () Bool)

(assert (=> b!265389 (= e!164891 (or (not (= (ite c!50123 lt!108380 call!14362) Nil!3789)) (= lt!108599 call!14364)))))

(declare-fun b!265387 () Bool)

(declare-fun e!164890 () List!3799)

(assert (=> b!265387 (= e!164890 (Cons!3789 (h!9186 call!14364) (++!980 (t!37441 call!14364) (ite c!50123 lt!108380 call!14362))))))

(declare-fun b!265388 () Bool)

(declare-fun res!121698 () Bool)

(assert (=> b!265388 (=> (not res!121698) (not e!164891))))

(assert (=> b!265388 (= res!121698 (= (size!3015 lt!108599) (+ (size!3015 call!14364) (size!3015 (ite c!50123 lt!108380 call!14362)))))))

(declare-fun d!76351 () Bool)

(assert (=> d!76351 e!164891))

(declare-fun res!121699 () Bool)

(assert (=> d!76351 (=> (not res!121699) (not e!164891))))

(assert (=> d!76351 (= res!121699 (= (content!539 lt!108599) ((_ map or) (content!539 call!14364) (content!539 (ite c!50123 lt!108380 call!14362)))))))

(assert (=> d!76351 (= lt!108599 e!164890)))

(declare-fun c!50196 () Bool)

(assert (=> d!76351 (= c!50196 ((_ is Nil!3789) call!14364))))

(assert (=> d!76351 (= (++!980 call!14364 (ite c!50123 lt!108380 call!14362)) lt!108599)))

(declare-fun b!265386 () Bool)

(assert (=> b!265386 (= e!164890 (ite c!50123 lt!108380 call!14362))))

(assert (= (and d!76351 c!50196) b!265386))

(assert (= (and d!76351 (not c!50196)) b!265387))

(assert (= (and d!76351 res!121699) b!265388))

(assert (= (and b!265388 res!121698) b!265389))

(declare-fun m!331609 () Bool)

(assert (=> b!265387 m!331609))

(declare-fun m!331613 () Bool)

(assert (=> b!265388 m!331613))

(declare-fun m!331615 () Bool)

(assert (=> b!265388 m!331615))

(declare-fun m!331617 () Bool)

(assert (=> b!265388 m!331617))

(declare-fun m!331619 () Bool)

(assert (=> d!76351 m!331619))

(declare-fun m!331623 () Bool)

(assert (=> d!76351 m!331623))

(declare-fun m!331625 () Bool)

(assert (=> d!76351 m!331625))

(assert (=> bm!14357 d!76351))

(declare-fun d!76353 () Bool)

(declare-fun lt!108600 () BalanceConc!2544)

(assert (=> d!76353 (= (list!1535 lt!108600) (originalCharacters!766 (h!9188 (t!37443 tokens!465))))))

(assert (=> d!76353 (= lt!108600 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 tokens!465))))) (value!24921 (h!9188 (t!37443 tokens!465)))))))

(assert (=> d!76353 (= (charsOf!368 (h!9188 (t!37443 tokens!465))) lt!108600)))

(declare-fun b_lambda!8269 () Bool)

(assert (=> (not b_lambda!8269) (not d!76353)))

(declare-fun tb!14539 () Bool)

(declare-fun t!37546 () Bool)

(assert (=> (and b!264597 (= (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))) (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 tokens!465)))))) t!37546) tb!14539))

(declare-fun b!265390 () Bool)

(declare-fun e!164892 () Bool)

(declare-fun tp!101465 () Bool)

(assert (=> b!265390 (= e!164892 (and (inv!4685 (c!50020 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 tokens!465))))) (value!24921 (h!9188 (t!37443 tokens!465)))))) tp!101465))))

(declare-fun result!18094 () Bool)

(assert (=> tb!14539 (= result!18094 (and (inv!4686 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 tokens!465))))) (value!24921 (h!9188 (t!37443 tokens!465))))) e!164892))))

(assert (= tb!14539 b!265390))

(declare-fun m!331645 () Bool)

(assert (=> b!265390 m!331645))

(declare-fun m!331647 () Bool)

(assert (=> tb!14539 m!331647))

(assert (=> d!76353 t!37546))

(declare-fun b_and!20823 () Bool)

(assert (= b_and!20783 (and (=> t!37546 result!18094) b_and!20823)))

(declare-fun t!37548 () Bool)

(declare-fun tb!14541 () Bool)

(assert (=> (and b!264593 (= (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))) (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 tokens!465)))))) t!37548) tb!14541))

(declare-fun result!18096 () Bool)

(assert (= result!18096 result!18094))

(assert (=> d!76353 t!37548))

(declare-fun b_and!20825 () Bool)

(assert (= b_and!20781 (and (=> t!37548 result!18096) b_and!20825)))

(declare-fun t!37550 () Bool)

(declare-fun tb!14543 () Bool)

(assert (=> (and b!265105 (= (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 tokens!465))))) (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 tokens!465)))))) t!37550) tb!14543))

(declare-fun result!18098 () Bool)

(assert (= result!18098 result!18094))

(assert (=> d!76353 t!37550))

(declare-fun b_and!20827 () Bool)

(assert (= b_and!20787 (and (=> t!37550 result!18098) b_and!20827)))

(declare-fun t!37552 () Bool)

(declare-fun tb!14545 () Bool)

(assert (=> (and b!265124 (= (toChars!1309 (transformation!723 (h!9189 (t!37444 rules!1920)))) (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 tokens!465)))))) t!37552) tb!14545))

(declare-fun result!18100 () Bool)

(assert (= result!18100 result!18094))

(assert (=> d!76353 t!37552))

(declare-fun b_and!20829 () Bool)

(assert (= b_and!20791 (and (=> t!37552 result!18100) b_and!20829)))

(declare-fun tb!14547 () Bool)

(declare-fun t!37554 () Bool)

(assert (=> (and b!264598 (= (toChars!1309 (transformation!723 (h!9189 rules!1920))) (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 tokens!465)))))) t!37554) tb!14547))

(declare-fun result!18102 () Bool)

(assert (= result!18102 result!18094))

(assert (=> d!76353 t!37554))

(declare-fun b_and!20831 () Bool)

(assert (= b_and!20779 (and (=> t!37554 result!18102) b_and!20831)))

(declare-fun m!331649 () Bool)

(assert (=> d!76353 m!331649))

(declare-fun m!331651 () Bool)

(assert (=> d!76353 m!331651))

(assert (=> bm!14324 d!76353))

(declare-fun d!76359 () Bool)

(declare-fun res!121700 () Bool)

(declare-fun e!164893 () Bool)

(assert (=> d!76359 (=> res!121700 e!164893)))

(assert (=> d!76359 (= res!121700 ((_ is Nil!3791) (list!1538 lt!108115)))))

(assert (=> d!76359 (= (forall!939 (list!1538 lt!108115) lambda!8933) e!164893)))

(declare-fun b!265391 () Bool)

(declare-fun e!164894 () Bool)

(assert (=> b!265391 (= e!164893 e!164894)))

(declare-fun res!121701 () Bool)

(assert (=> b!265391 (=> (not res!121701) (not e!164894))))

(assert (=> b!265391 (= res!121701 (dynLambda!1928 lambda!8933 (h!9188 (list!1538 lt!108115))))))

(declare-fun b!265392 () Bool)

(assert (=> b!265392 (= e!164894 (forall!939 (t!37443 (list!1538 lt!108115)) lambda!8933))))

(assert (= (and d!76359 (not res!121700)) b!265391))

(assert (= (and b!265391 res!121701) b!265392))

(declare-fun b_lambda!8271 () Bool)

(assert (=> (not b_lambda!8271) (not b!265391)))

(declare-fun m!331653 () Bool)

(assert (=> b!265391 m!331653))

(declare-fun m!331655 () Bool)

(assert (=> b!265392 m!331655))

(assert (=> d!76111 d!76359))

(assert (=> d!76111 d!76345))

(declare-fun d!76361 () Bool)

(declare-fun lt!108603 () Bool)

(assert (=> d!76361 (= lt!108603 (forall!939 (list!1538 lt!108115) lambda!8933))))

(declare-fun forall!943 (Conc!1269 Int) Bool)

(assert (=> d!76361 (= lt!108603 (forall!943 (c!50022 lt!108115) lambda!8933))))

(assert (=> d!76361 (= (forall!941 lt!108115 lambda!8933) lt!108603)))

(declare-fun bs!29103 () Bool)

(assert (= bs!29103 d!76361))

(assert (=> bs!29103 m!330749))

(assert (=> bs!29103 m!330749))

(assert (=> bs!29103 m!330751))

(declare-fun m!331665 () Bool)

(assert (=> bs!29103 m!331665))

(assert (=> d!76111 d!76361))

(assert (=> d!76111 d!76141))

(declare-fun d!76369 () Bool)

(assert (=> d!76369 (= (list!1535 lt!108330) (list!1539 (c!50020 lt!108330)))))

(declare-fun bs!29104 () Bool)

(assert (= bs!29104 d!76369))

(declare-fun m!331667 () Bool)

(assert (=> bs!29104 m!331667))

(assert (=> d!76105 d!76369))

(declare-fun bs!29105 () Bool)

(declare-fun d!76371 () Bool)

(assert (= bs!29105 (and d!76371 d!76295)))

(declare-fun lambda!8958 () Int)

(assert (=> bs!29105 (= (and (= (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))) (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465))))) (= (toValue!1450 (transformation!723 (rule!1308 separatorToken!170))) (toValue!1450 (transformation!723 (rule!1308 (h!9188 tokens!465)))))) (= lambda!8958 lambda!8952))))

(assert (=> d!76371 true))

(assert (=> d!76371 (< (dynLambda!1931 order!2897 (toChars!1309 (transformation!723 (rule!1308 separatorToken!170)))) (dynLambda!1933 order!2903 lambda!8958))))

(assert (=> d!76371 true))

(assert (=> d!76371 (< (dynLambda!1929 order!2893 (toValue!1450 (transformation!723 (rule!1308 separatorToken!170)))) (dynLambda!1933 order!2903 lambda!8958))))

(assert (=> d!76371 (= (semiInverseModEq!253 (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))) (toValue!1450 (transformation!723 (rule!1308 separatorToken!170)))) (Forall!168 lambda!8958))))

(declare-fun bs!29107 () Bool)

(assert (= bs!29107 d!76371))

(declare-fun m!331671 () Bool)

(assert (=> bs!29107 m!331671))

(assert (=> d!76125 d!76371))

(declare-fun d!76375 () Bool)

(assert (=> d!76375 (= (list!1535 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))) (value!24921 (h!9188 tokens!465)))) (list!1539 (c!50020 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))) (value!24921 (h!9188 tokens!465))))))))

(declare-fun bs!29108 () Bool)

(assert (= bs!29108 d!76375))

(declare-fun m!331673 () Bool)

(assert (=> bs!29108 m!331673))

(assert (=> b!265023 d!76375))

(declare-fun d!76377 () Bool)

(declare-fun lt!108607 () Int)

(assert (=> d!76377 (>= lt!108607 0)))

(declare-fun e!164898 () Int)

(assert (=> d!76377 (= lt!108607 e!164898)))

(declare-fun c!50198 () Bool)

(assert (=> d!76377 (= c!50198 ((_ is Nil!3789) lt!108137))))

(assert (=> d!76377 (= (size!3015 lt!108137) lt!108607)))

(declare-fun b!265397 () Bool)

(assert (=> b!265397 (= e!164898 0)))

(declare-fun b!265398 () Bool)

(assert (=> b!265398 (= e!164898 (+ 1 (size!3015 (t!37441 lt!108137))))))

(assert (= (and d!76377 c!50198) b!265397))

(assert (= (and d!76377 (not c!50198)) b!265398))

(declare-fun m!331679 () Bool)

(assert (=> b!265398 m!331679))

(assert (=> b!264691 d!76377))

(declare-fun d!76381 () Bool)

(declare-fun lt!108608 () Int)

(assert (=> d!76381 (>= lt!108608 0)))

(declare-fun e!164900 () Int)

(assert (=> d!76381 (= lt!108608 e!164900)))

(declare-fun c!50200 () Bool)

(assert (=> d!76381 (= c!50200 ((_ is Nil!3789) lt!108119))))

(assert (=> d!76381 (= (size!3015 lt!108119) lt!108608)))

(declare-fun b!265401 () Bool)

(assert (=> b!265401 (= e!164900 0)))

(declare-fun b!265402 () Bool)

(assert (=> b!265402 (= e!164900 (+ 1 (size!3015 (t!37441 lt!108119))))))

(assert (= (and d!76381 c!50200) b!265401))

(assert (= (and d!76381 (not c!50200)) b!265402))

(declare-fun m!331685 () Bool)

(assert (=> b!265402 m!331685))

(assert (=> b!264691 d!76381))

(declare-fun d!76385 () Bool)

(declare-fun lt!108609 () Int)

(assert (=> d!76385 (>= lt!108609 0)))

(declare-fun e!164902 () Int)

(assert (=> d!76385 (= lt!108609 e!164902)))

(declare-fun c!50202 () Bool)

(assert (=> d!76385 (= c!50202 ((_ is Nil!3789) lt!108116))))

(assert (=> d!76385 (= (size!3015 lt!108116) lt!108609)))

(declare-fun b!265405 () Bool)

(assert (=> b!265405 (= e!164902 0)))

(declare-fun b!265406 () Bool)

(assert (=> b!265406 (= e!164902 (+ 1 (size!3015 (t!37441 lt!108116))))))

(assert (= (and d!76385 c!50202) b!265405))

(assert (= (and d!76385 (not c!50202)) b!265406))

(declare-fun m!331691 () Bool)

(assert (=> b!265406 m!331691))

(assert (=> b!264691 d!76385))

(assert (=> bm!14359 d!76105))

(declare-fun d!76389 () Bool)

(assert (=> d!76389 (= (head!882 (drop!211 lt!108318 0)) (apply!750 lt!108318 0))))

(declare-fun lt!108614 () Unit!4760)

(declare-fun choose!2428 (List!3801 Int) Unit!4760)

(assert (=> d!76389 (= lt!108614 (choose!2428 lt!108318 0))))

(declare-fun e!164908 () Bool)

(assert (=> d!76389 e!164908))

(declare-fun res!121712 () Bool)

(assert (=> d!76389 (=> (not res!121712) (not e!164908))))

(assert (=> d!76389 (= res!121712 (>= 0 0))))

(assert (=> d!76389 (= (lemmaDropApply!198 lt!108318 0) lt!108614)))

(declare-fun b!265417 () Bool)

(assert (=> b!265417 (= e!164908 (< 0 (size!3018 lt!108318)))))

(assert (= (and d!76389 res!121712) b!265417))

(assert (=> d!76389 m!330679))

(assert (=> d!76389 m!330679))

(assert (=> d!76389 m!330683))

(assert (=> d!76389 m!330691))

(declare-fun m!331725 () Bool)

(assert (=> d!76389 m!331725))

(declare-fun m!331729 () Bool)

(assert (=> b!265417 m!331729))

(assert (=> b!264939 d!76389))

(declare-fun b!265449 () Bool)

(declare-fun res!121733 () Bool)

(declare-fun e!164924 () Bool)

(assert (=> b!265449 (=> (not res!121733) (not e!164924))))

(declare-fun ++!984 (Conc!1268 Conc!1268) Conc!1268)

(assert (=> b!265449 (= res!121733 (isBalanced!343 (++!984 (c!50020 (charsOf!368 (apply!749 (seqFromList!814 (t!37443 tokens!465)) 0))) (c!50020 lt!108314))))))

(declare-fun b!265451 () Bool)

(declare-fun res!121731 () Bool)

(assert (=> b!265451 (=> (not res!121731) (not e!164924))))

(declare-fun height!147 (Conc!1268) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!265451 (= res!121731 (>= (height!147 (++!984 (c!50020 (charsOf!368 (apply!749 (seqFromList!814 (t!37443 tokens!465)) 0))) (c!50020 lt!108314))) (max!0 (height!147 (c!50020 (charsOf!368 (apply!749 (seqFromList!814 (t!37443 tokens!465)) 0)))) (height!147 (c!50020 lt!108314)))))))

(declare-fun d!76399 () Bool)

(assert (=> d!76399 e!164924))

(declare-fun res!121732 () Bool)

(assert (=> d!76399 (=> (not res!121732) (not e!164924))))

(declare-fun appendAssocInst!59 (Conc!1268 Conc!1268) Bool)

(assert (=> d!76399 (= res!121732 (appendAssocInst!59 (c!50020 (charsOf!368 (apply!749 (seqFromList!814 (t!37443 tokens!465)) 0))) (c!50020 lt!108314)))))

(declare-fun lt!108646 () BalanceConc!2544)

(assert (=> d!76399 (= lt!108646 (BalanceConc!2545 (++!984 (c!50020 (charsOf!368 (apply!749 (seqFromList!814 (t!37443 tokens!465)) 0))) (c!50020 lt!108314))))))

(assert (=> d!76399 (= (++!982 (charsOf!368 (apply!749 (seqFromList!814 (t!37443 tokens!465)) 0)) lt!108314) lt!108646)))

(declare-fun b!265452 () Bool)

(assert (=> b!265452 (= e!164924 (= (list!1535 lt!108646) (++!980 (list!1535 (charsOf!368 (apply!749 (seqFromList!814 (t!37443 tokens!465)) 0))) (list!1535 lt!108314))))))

(declare-fun b!265450 () Bool)

(declare-fun res!121730 () Bool)

(assert (=> b!265450 (=> (not res!121730) (not e!164924))))

(assert (=> b!265450 (= res!121730 (<= (height!147 (++!984 (c!50020 (charsOf!368 (apply!749 (seqFromList!814 (t!37443 tokens!465)) 0))) (c!50020 lt!108314))) (+ (max!0 (height!147 (c!50020 (charsOf!368 (apply!749 (seqFromList!814 (t!37443 tokens!465)) 0)))) (height!147 (c!50020 lt!108314))) 1)))))

(assert (= (and d!76399 res!121732) b!265449))

(assert (= (and b!265449 res!121733) b!265450))

(assert (= (and b!265450 res!121730) b!265451))

(assert (= (and b!265451 res!121731) b!265452))

(declare-fun m!331865 () Bool)

(assert (=> b!265450 m!331865))

(assert (=> b!265450 m!331865))

(declare-fun m!331867 () Bool)

(assert (=> b!265450 m!331867))

(declare-fun m!331869 () Bool)

(assert (=> b!265450 m!331869))

(declare-fun m!331871 () Bool)

(assert (=> b!265450 m!331871))

(declare-fun m!331873 () Bool)

(assert (=> b!265450 m!331873))

(assert (=> b!265450 m!331871))

(assert (=> b!265450 m!331867))

(assert (=> b!265449 m!331871))

(assert (=> b!265449 m!331871))

(declare-fun m!331875 () Bool)

(assert (=> b!265449 m!331875))

(declare-fun m!331877 () Bool)

(assert (=> b!265452 m!331877))

(assert (=> b!265452 m!330687))

(declare-fun m!331879 () Bool)

(assert (=> b!265452 m!331879))

(assert (=> b!265452 m!330661))

(assert (=> b!265452 m!331879))

(assert (=> b!265452 m!330661))

(declare-fun m!331881 () Bool)

(assert (=> b!265452 m!331881))

(assert (=> b!265451 m!331865))

(assert (=> b!265451 m!331865))

(assert (=> b!265451 m!331867))

(assert (=> b!265451 m!331869))

(assert (=> b!265451 m!331871))

(assert (=> b!265451 m!331873))

(assert (=> b!265451 m!331871))

(assert (=> b!265451 m!331867))

(declare-fun m!331883 () Bool)

(assert (=> d!76399 m!331883))

(assert (=> d!76399 m!331871))

(assert (=> b!264939 d!76399))

(declare-fun b!265483 () Bool)

(declare-fun e!164948 () List!3801)

(declare-fun e!164946 () List!3801)

(assert (=> b!265483 (= e!164948 e!164946)))

(declare-fun c!50227 () Bool)

(assert (=> b!265483 (= c!50227 (<= (+ 0 1) 0))))

(declare-fun b!265484 () Bool)

(declare-fun e!164944 () Int)

(declare-fun call!14388 () Int)

(assert (=> b!265484 (= e!164944 call!14388)))

(declare-fun b!265485 () Bool)

(assert (=> b!265485 (= e!164948 Nil!3791)))

(declare-fun b!265486 () Bool)

(declare-fun e!164945 () Int)

(assert (=> b!265486 (= e!164945 0)))

(declare-fun b!265487 () Bool)

(assert (=> b!265487 (= e!164944 e!164945)))

(declare-fun c!50225 () Bool)

(assert (=> b!265487 (= c!50225 (>= (+ 0 1) call!14388))))

(declare-fun b!265488 () Bool)

(assert (=> b!265488 (= e!164946 (drop!211 (t!37443 lt!108317) (- (+ 0 1) 1)))))

(declare-fun bm!14383 () Bool)

(assert (=> bm!14383 (= call!14388 (size!3018 lt!108317))))

(declare-fun b!265489 () Bool)

(assert (=> b!265489 (= e!164945 (- call!14388 (+ 0 1)))))

(declare-fun b!265490 () Bool)

(assert (=> b!265490 (= e!164946 lt!108317)))

(declare-fun d!76427 () Bool)

(declare-fun e!164947 () Bool)

(assert (=> d!76427 e!164947))

(declare-fun res!121742 () Bool)

(assert (=> d!76427 (=> (not res!121742) (not e!164947))))

(declare-fun lt!108649 () List!3801)

(declare-fun content!540 (List!3801) (InoxSet Token!1190))

(assert (=> d!76427 (= res!121742 (= ((_ map implies) (content!540 lt!108649) (content!540 lt!108317)) ((as const (InoxSet Token!1190)) true)))))

(assert (=> d!76427 (= lt!108649 e!164948)))

(declare-fun c!50226 () Bool)

(assert (=> d!76427 (= c!50226 ((_ is Nil!3791) lt!108317))))

(assert (=> d!76427 (= (drop!211 lt!108317 (+ 0 1)) lt!108649)))

(declare-fun b!265491 () Bool)

(assert (=> b!265491 (= e!164947 (= (size!3018 lt!108649) e!164944))))

(declare-fun c!50228 () Bool)

(assert (=> b!265491 (= c!50228 (<= (+ 0 1) 0))))

(assert (= (and d!76427 c!50226) b!265485))

(assert (= (and d!76427 (not c!50226)) b!265483))

(assert (= (and b!265483 c!50227) b!265490))

(assert (= (and b!265483 (not c!50227)) b!265488))

(assert (= (and d!76427 res!121742) b!265491))

(assert (= (and b!265491 c!50228) b!265484))

(assert (= (and b!265491 (not c!50228)) b!265487))

(assert (= (and b!265487 c!50225) b!265486))

(assert (= (and b!265487 (not c!50225)) b!265489))

(assert (= (or b!265484 b!265487 b!265489) bm!14383))

(declare-fun m!331889 () Bool)

(assert (=> b!265488 m!331889))

(declare-fun m!331891 () Bool)

(assert (=> bm!14383 m!331891))

(declare-fun m!331893 () Bool)

(assert (=> d!76427 m!331893))

(declare-fun m!331895 () Bool)

(assert (=> d!76427 m!331895))

(declare-fun m!331897 () Bool)

(assert (=> b!265491 m!331897))

(assert (=> b!264939 d!76427))

(declare-fun d!76431 () Bool)

(assert (=> d!76431 (dynLambda!1928 lambda!8928 (apply!749 (seqFromList!814 (t!37443 tokens!465)) 0))))

(declare-fun lt!108652 () Unit!4760)

(declare-fun choose!2429 (List!3801 Int Token!1190) Unit!4760)

(assert (=> d!76431 (= lt!108652 (choose!2429 (list!1538 (seqFromList!814 (t!37443 tokens!465))) lambda!8928 (apply!749 (seqFromList!814 (t!37443 tokens!465)) 0)))))

(declare-fun e!164951 () Bool)

(assert (=> d!76431 e!164951))

(declare-fun res!121745 () Bool)

(assert (=> d!76431 (=> (not res!121745) (not e!164951))))

(assert (=> d!76431 (= res!121745 (forall!939 (list!1538 (seqFromList!814 (t!37443 tokens!465))) lambda!8928))))

(assert (=> d!76431 (= (forallContained!280 (list!1538 (seqFromList!814 (t!37443 tokens!465))) lambda!8928 (apply!749 (seqFromList!814 (t!37443 tokens!465)) 0)) lt!108652)))

(declare-fun b!265494 () Bool)

(declare-fun contains!706 (List!3801 Token!1190) Bool)

(assert (=> b!265494 (= e!164951 (contains!706 (list!1538 (seqFromList!814 (t!37443 tokens!465))) (apply!749 (seqFromList!814 (t!37443 tokens!465)) 0)))))

(assert (= (and d!76431 res!121745) b!265494))

(declare-fun b_lambda!8275 () Bool)

(assert (=> (not b_lambda!8275) (not d!76431)))

(assert (=> d!76431 m!330667))

(declare-fun m!331899 () Bool)

(assert (=> d!76431 m!331899))

(assert (=> d!76431 m!330645))

(assert (=> d!76431 m!330667))

(declare-fun m!331901 () Bool)

(assert (=> d!76431 m!331901))

(assert (=> d!76431 m!330645))

(declare-fun m!331903 () Bool)

(assert (=> d!76431 m!331903))

(assert (=> b!265494 m!330645))

(assert (=> b!265494 m!330667))

(declare-fun m!331905 () Bool)

(assert (=> b!265494 m!331905))

(assert (=> b!264939 d!76431))

(declare-fun d!76433 () Bool)

(assert (=> d!76433 (= (head!882 (drop!211 lt!108318 0)) (h!9188 (drop!211 lt!108318 0)))))

(assert (=> b!264939 d!76433))

(assert (=> b!264939 d!76293))

(declare-fun b!265495 () Bool)

(declare-fun e!164956 () List!3801)

(declare-fun e!164954 () List!3801)

(assert (=> b!265495 (= e!164956 e!164954)))

(declare-fun c!50231 () Bool)

(assert (=> b!265495 (= c!50231 (<= 0 0))))

(declare-fun b!265496 () Bool)

(declare-fun e!164952 () Int)

(declare-fun call!14389 () Int)

(assert (=> b!265496 (= e!164952 call!14389)))

(declare-fun b!265497 () Bool)

(assert (=> b!265497 (= e!164956 Nil!3791)))

(declare-fun b!265498 () Bool)

(declare-fun e!164953 () Int)

(assert (=> b!265498 (= e!164953 0)))

(declare-fun b!265499 () Bool)

(assert (=> b!265499 (= e!164952 e!164953)))

(declare-fun c!50229 () Bool)

(assert (=> b!265499 (= c!50229 (>= 0 call!14389))))

(declare-fun b!265500 () Bool)

(assert (=> b!265500 (= e!164954 (drop!211 (t!37443 lt!108317) (- 0 1)))))

(declare-fun bm!14384 () Bool)

(assert (=> bm!14384 (= call!14389 (size!3018 lt!108317))))

(declare-fun b!265501 () Bool)

(assert (=> b!265501 (= e!164953 (- call!14389 0))))

(declare-fun b!265502 () Bool)

(assert (=> b!265502 (= e!164954 lt!108317)))

(declare-fun d!76435 () Bool)

(declare-fun e!164955 () Bool)

(assert (=> d!76435 e!164955))

(declare-fun res!121746 () Bool)

(assert (=> d!76435 (=> (not res!121746) (not e!164955))))

(declare-fun lt!108653 () List!3801)

(assert (=> d!76435 (= res!121746 (= ((_ map implies) (content!540 lt!108653) (content!540 lt!108317)) ((as const (InoxSet Token!1190)) true)))))

(assert (=> d!76435 (= lt!108653 e!164956)))

(declare-fun c!50230 () Bool)

(assert (=> d!76435 (= c!50230 ((_ is Nil!3791) lt!108317))))

(assert (=> d!76435 (= (drop!211 lt!108317 0) lt!108653)))

(declare-fun b!265503 () Bool)

(assert (=> b!265503 (= e!164955 (= (size!3018 lt!108653) e!164952))))

(declare-fun c!50232 () Bool)

(assert (=> b!265503 (= c!50232 (<= 0 0))))

(assert (= (and d!76435 c!50230) b!265497))

(assert (= (and d!76435 (not c!50230)) b!265495))

(assert (= (and b!265495 c!50231) b!265502))

(assert (= (and b!265495 (not c!50231)) b!265500))

(assert (= (and d!76435 res!121746) b!265503))

(assert (= (and b!265503 c!50232) b!265496))

(assert (= (and b!265503 (not c!50232)) b!265499))

(assert (= (and b!265499 c!50229) b!265498))

(assert (= (and b!265499 (not c!50229)) b!265501))

(assert (= (or b!265496 b!265499 b!265501) bm!14384))

(declare-fun m!331907 () Bool)

(assert (=> b!265500 m!331907))

(assert (=> bm!14384 m!331891))

(declare-fun m!331909 () Bool)

(assert (=> d!76435 m!331909))

(assert (=> d!76435 m!331895))

(declare-fun m!331911 () Bool)

(assert (=> b!265503 m!331911))

(assert (=> b!264939 d!76435))

(declare-fun b!265504 () Bool)

(declare-fun e!164961 () List!3801)

(declare-fun e!164959 () List!3801)

(assert (=> b!265504 (= e!164961 e!164959)))

(declare-fun c!50235 () Bool)

(assert (=> b!265504 (= c!50235 (<= 0 0))))

(declare-fun b!265505 () Bool)

(declare-fun e!164957 () Int)

(declare-fun call!14390 () Int)

(assert (=> b!265505 (= e!164957 call!14390)))

(declare-fun b!265506 () Bool)

(assert (=> b!265506 (= e!164961 Nil!3791)))

(declare-fun b!265507 () Bool)

(declare-fun e!164958 () Int)

(assert (=> b!265507 (= e!164958 0)))

(declare-fun b!265508 () Bool)

(assert (=> b!265508 (= e!164957 e!164958)))

(declare-fun c!50233 () Bool)

(assert (=> b!265508 (= c!50233 (>= 0 call!14390))))

(declare-fun b!265509 () Bool)

(assert (=> b!265509 (= e!164959 (drop!211 (t!37443 lt!108318) (- 0 1)))))

(declare-fun bm!14385 () Bool)

(assert (=> bm!14385 (= call!14390 (size!3018 lt!108318))))

(declare-fun b!265510 () Bool)

(assert (=> b!265510 (= e!164958 (- call!14390 0))))

(declare-fun b!265511 () Bool)

(assert (=> b!265511 (= e!164959 lt!108318)))

(declare-fun d!76437 () Bool)

(declare-fun e!164960 () Bool)

(assert (=> d!76437 e!164960))

(declare-fun res!121747 () Bool)

(assert (=> d!76437 (=> (not res!121747) (not e!164960))))

(declare-fun lt!108654 () List!3801)

(assert (=> d!76437 (= res!121747 (= ((_ map implies) (content!540 lt!108654) (content!540 lt!108318)) ((as const (InoxSet Token!1190)) true)))))

(assert (=> d!76437 (= lt!108654 e!164961)))

(declare-fun c!50234 () Bool)

(assert (=> d!76437 (= c!50234 ((_ is Nil!3791) lt!108318))))

(assert (=> d!76437 (= (drop!211 lt!108318 0) lt!108654)))

(declare-fun b!265512 () Bool)

(assert (=> b!265512 (= e!164960 (= (size!3018 lt!108654) e!164957))))

(declare-fun c!50236 () Bool)

(assert (=> b!265512 (= c!50236 (<= 0 0))))

(assert (= (and d!76437 c!50234) b!265506))

(assert (= (and d!76437 (not c!50234)) b!265504))

(assert (= (and b!265504 c!50235) b!265511))

(assert (= (and b!265504 (not c!50235)) b!265509))

(assert (= (and d!76437 res!121747) b!265512))

(assert (= (and b!265512 c!50236) b!265505))

(assert (= (and b!265512 (not c!50236)) b!265508))

(assert (= (and b!265508 c!50233) b!265507))

(assert (= (and b!265508 (not c!50233)) b!265510))

(assert (= (or b!265505 b!265508 b!265510) bm!14385))

(declare-fun m!331913 () Bool)

(assert (=> b!265509 m!331913))

(assert (=> bm!14385 m!331729))

(declare-fun m!331915 () Bool)

(assert (=> d!76437 m!331915))

(declare-fun m!331917 () Bool)

(assert (=> d!76437 m!331917))

(declare-fun m!331919 () Bool)

(assert (=> b!265512 m!331919))

(assert (=> b!264939 d!76437))

(declare-fun bs!29119 () Bool)

(declare-fun d!76439 () Bool)

(assert (= bs!29119 (and d!76439 b!264939)))

(declare-fun lambda!8960 () Int)

(assert (=> bs!29119 (not (= lambda!8960 lambda!8928))))

(declare-fun bs!29120 () Bool)

(assert (= bs!29120 (and d!76439 b!265057)))

(assert (=> bs!29120 (not (= lambda!8960 lambda!8936))))

(declare-fun bs!29121 () Bool)

(assert (= bs!29121 (and d!76439 d!76149)))

(assert (=> bs!29121 (= lambda!8960 lambda!8934)))

(declare-fun bs!29122 () Bool)

(assert (= bs!29122 (and d!76439 b!265283)))

(assert (=> bs!29122 (not (= lambda!8960 lambda!8949))))

(declare-fun bs!29123 () Bool)

(assert (= bs!29123 (and d!76439 b!265370)))

(assert (=> bs!29123 (not (= lambda!8960 lambda!8956))))

(declare-fun bs!29124 () Bool)

(assert (= bs!29124 (and d!76439 b!264588)))

(assert (=> bs!29124 (= lambda!8960 lambda!8902)))

(declare-fun bs!29125 () Bool)

(assert (= bs!29125 (and d!76439 d!76111)))

(assert (=> bs!29125 (not (= lambda!8960 lambda!8933))))

(declare-fun bs!29126 () Bool)

(assert (= bs!29126 (and d!76439 d!76071)))

(assert (=> bs!29126 (= lambda!8960 lambda!8927)))

(declare-fun bs!29127 () Bool)

(assert (= bs!29127 (and d!76439 b!264827)))

(assert (=> bs!29127 (not (= lambda!8960 lambda!8919))))

(declare-fun bs!29128 () Bool)

(assert (= bs!29128 (and d!76439 b!265049)))

(assert (=> bs!29128 (not (= lambda!8960 lambda!8935))))

(declare-fun bs!29129 () Bool)

(declare-fun b!265517 () Bool)

(assert (= bs!29129 (and b!265517 b!264939)))

(declare-fun lambda!8961 () Int)

(assert (=> bs!29129 (= lambda!8961 lambda!8928)))

(declare-fun bs!29130 () Bool)

(assert (= bs!29130 (and b!265517 b!265057)))

(assert (=> bs!29130 (= lambda!8961 lambda!8936)))

(declare-fun bs!29131 () Bool)

(assert (= bs!29131 (and b!265517 b!265283)))

(assert (=> bs!29131 (= lambda!8961 lambda!8949)))

(declare-fun bs!29132 () Bool)

(assert (= bs!29132 (and b!265517 b!265370)))

(assert (=> bs!29132 (= lambda!8961 lambda!8956)))

(declare-fun bs!29133 () Bool)

(assert (= bs!29133 (and b!265517 b!264588)))

(assert (=> bs!29133 (not (= lambda!8961 lambda!8902))))

(declare-fun bs!29134 () Bool)

(assert (= bs!29134 (and b!265517 d!76111)))

(assert (=> bs!29134 (= lambda!8961 lambda!8933)))

(declare-fun bs!29135 () Bool)

(assert (= bs!29135 (and b!265517 d!76071)))

(assert (=> bs!29135 (not (= lambda!8961 lambda!8927))))

(declare-fun bs!29136 () Bool)

(assert (= bs!29136 (and b!265517 d!76149)))

(assert (=> bs!29136 (not (= lambda!8961 lambda!8934))))

(declare-fun bs!29137 () Bool)

(assert (= bs!29137 (and b!265517 d!76439)))

(assert (=> bs!29137 (not (= lambda!8961 lambda!8960))))

(declare-fun bs!29138 () Bool)

(assert (= bs!29138 (and b!265517 b!264827)))

(assert (=> bs!29138 (= lambda!8961 lambda!8919)))

(declare-fun bs!29139 () Bool)

(assert (= bs!29139 (and b!265517 b!265049)))

(assert (=> bs!29139 (= lambda!8961 lambda!8935)))

(declare-fun b!265524 () Bool)

(declare-fun e!164970 () Bool)

(assert (=> b!265524 (= e!164970 true)))

(declare-fun b!265523 () Bool)

(declare-fun e!164969 () Bool)

(assert (=> b!265523 (= e!164969 e!164970)))

(declare-fun b!265522 () Bool)

(declare-fun e!164968 () Bool)

(assert (=> b!265522 (= e!164968 e!164969)))

(assert (=> b!265517 e!164968))

(assert (= b!265523 b!265524))

(assert (= b!265522 b!265523))

(assert (= (and b!265517 ((_ is Cons!3792) rules!1920)) b!265522))

(assert (=> b!265524 (< (dynLambda!1929 order!2893 (toValue!1450 (transformation!723 (h!9189 rules!1920)))) (dynLambda!1930 order!2895 lambda!8961))))

(assert (=> b!265524 (< (dynLambda!1931 order!2897 (toChars!1309 (transformation!723 (h!9189 rules!1920)))) (dynLambda!1930 order!2895 lambda!8961))))

(assert (=> b!265517 true))

(declare-fun b!265513 () Bool)

(declare-fun e!164965 () BalanceConc!2544)

(declare-fun call!14395 () BalanceConc!2544)

(declare-fun lt!108660 () BalanceConc!2544)

(assert (=> b!265513 (= e!164965 (++!982 call!14395 lt!108660))))

(declare-fun b!265514 () Bool)

(declare-fun c!50237 () Bool)

(declare-fun e!164964 () Bool)

(assert (=> b!265514 (= c!50237 e!164964)))

(declare-fun res!121749 () Bool)

(assert (=> b!265514 (=> (not res!121749) (not e!164964))))

(declare-fun lt!108668 () Option!797)

(assert (=> b!265514 (= res!121749 ((_ is Some!796) lt!108668))))

(declare-fun e!164963 () BalanceConc!2544)

(assert (=> b!265514 (= e!164963 e!164965)))

(declare-fun b!265515 () Bool)

(assert (=> b!265515 (= e!164963 call!14395)))

(declare-fun b!265516 () Bool)

(declare-fun call!14392 () Token!1190)

(assert (=> b!265516 (= e!164964 (not (= (_1!2341 (v!14653 lt!108668)) call!14392)))))

(declare-fun call!14391 () BalanceConc!2544)

(declare-fun bm!14386 () Bool)

(declare-fun call!14393 () BalanceConc!2544)

(declare-fun c!50238 () Bool)

(assert (=> bm!14386 (= call!14395 (++!982 call!14393 (ite c!50238 lt!108660 call!14391)))))

(declare-fun lt!108665 () BalanceConc!2544)

(assert (=> d!76439 (= (list!1535 lt!108665) (printWithSeparatorTokenWhenNeededList!292 thiss!17480 rules!1920 (dropList!158 (seqFromList!814 (t!37443 tokens!465)) (+ 0 1)) separatorToken!170))))

(declare-fun e!164967 () BalanceConc!2544)

(assert (=> d!76439 (= lt!108665 e!164967)))

(declare-fun c!50239 () Bool)

(assert (=> d!76439 (= c!50239 (>= (+ 0 1) (size!3014 (seqFromList!814 (t!37443 tokens!465)))))))

(declare-fun lt!108658 () Unit!4760)

(assert (=> d!76439 (= lt!108658 (lemmaContentSubsetPreservesForall!102 (list!1538 (seqFromList!814 (t!37443 tokens!465))) (dropList!158 (seqFromList!814 (t!37443 tokens!465)) (+ 0 1)) lambda!8960))))

(declare-fun e!164962 () Bool)

(assert (=> d!76439 e!164962))

(declare-fun res!121750 () Bool)

(assert (=> d!76439 (=> (not res!121750) (not e!164962))))

(assert (=> d!76439 (= res!121750 (>= (+ 0 1) 0))))

(assert (=> d!76439 (= (printWithSeparatorTokenWhenNeededRec!284 thiss!17480 rules!1920 (seqFromList!814 (t!37443 tokens!465)) separatorToken!170 (+ 0 1)) lt!108665)))

(assert (=> b!265517 (= e!164967 e!164963)))

(declare-fun lt!108664 () List!3801)

(assert (=> b!265517 (= lt!108664 (list!1538 (seqFromList!814 (t!37443 tokens!465))))))

(declare-fun lt!108666 () Unit!4760)

(assert (=> b!265517 (= lt!108666 (lemmaDropApply!198 lt!108664 (+ 0 1)))))

(assert (=> b!265517 (= (head!882 (drop!211 lt!108664 (+ 0 1))) (apply!750 lt!108664 (+ 0 1)))))

(declare-fun lt!108661 () Unit!4760)

(assert (=> b!265517 (= lt!108661 lt!108666)))

(declare-fun lt!108663 () List!3801)

(assert (=> b!265517 (= lt!108663 (list!1538 (seqFromList!814 (t!37443 tokens!465))))))

(declare-fun lt!108659 () Unit!4760)

(assert (=> b!265517 (= lt!108659 (lemmaDropTail!190 lt!108663 (+ 0 1)))))

(assert (=> b!265517 (= (tail!472 (drop!211 lt!108663 (+ 0 1))) (drop!211 lt!108663 (+ 0 1 1)))))

(declare-fun lt!108662 () Unit!4760)

(assert (=> b!265517 (= lt!108662 lt!108659)))

(declare-fun lt!108667 () Unit!4760)

(assert (=> b!265517 (= lt!108667 (forallContained!280 (list!1538 (seqFromList!814 (t!37443 tokens!465))) lambda!8961 (apply!749 (seqFromList!814 (t!37443 tokens!465)) (+ 0 1))))))

(assert (=> b!265517 (= lt!108660 (printWithSeparatorTokenWhenNeededRec!284 thiss!17480 rules!1920 (seqFromList!814 (t!37443 tokens!465)) separatorToken!170 (+ 0 1 1)))))

(assert (=> b!265517 (= lt!108668 (maxPrefixZipperSequence!292 thiss!17480 rules!1920 (++!982 (charsOf!368 (apply!749 (seqFromList!814 (t!37443 tokens!465)) (+ 0 1))) lt!108660)))))

(declare-fun res!121748 () Bool)

(assert (=> b!265517 (= res!121748 ((_ is Some!796) lt!108668))))

(declare-fun e!164966 () Bool)

(assert (=> b!265517 (=> (not res!121748) (not e!164966))))

(assert (=> b!265517 (= c!50238 e!164966)))

(declare-fun bm!14387 () Bool)

(declare-fun call!14394 () Token!1190)

(assert (=> bm!14387 (= call!14394 call!14392)))

(declare-fun b!265518 () Bool)

(assert (=> b!265518 (= e!164967 (BalanceConc!2545 Empty!1268))))

(declare-fun b!265519 () Bool)

(assert (=> b!265519 (= e!164962 (<= (+ 0 1) (size!3014 (seqFromList!814 (t!37443 tokens!465)))))))

(declare-fun b!265520 () Bool)

(assert (=> b!265520 (= e!164966 (= (_1!2341 (v!14653 lt!108668)) (apply!749 (seqFromList!814 (t!37443 tokens!465)) (+ 0 1))))))

(declare-fun bm!14388 () Bool)

(assert (=> bm!14388 (= call!14392 (apply!749 (seqFromList!814 (t!37443 tokens!465)) (+ 0 1)))))

(declare-fun b!265521 () Bool)

(assert (=> b!265521 (= e!164965 (BalanceConc!2545 Empty!1268))))

(assert (=> b!265521 (= (print!334 thiss!17480 (singletonSeq!269 call!14394)) (printTailRec!297 thiss!17480 (singletonSeq!269 call!14394) 0 (BalanceConc!2545 Empty!1268)))))

(declare-fun lt!108655 () Unit!4760)

(declare-fun Unit!4788 () Unit!4760)

(assert (=> b!265521 (= lt!108655 Unit!4788)))

(declare-fun lt!108656 () Unit!4760)

(assert (=> b!265521 (= lt!108656 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!106 thiss!17480 rules!1920 (list!1535 call!14391) (list!1535 lt!108660)))))

(assert (=> b!265521 false))

(declare-fun lt!108657 () Unit!4760)

(declare-fun Unit!4789 () Unit!4760)

(assert (=> b!265521 (= lt!108657 Unit!4789)))

(declare-fun bm!14389 () Bool)

(assert (=> bm!14389 (= call!14393 (charsOf!368 (ite c!50238 call!14392 call!14394)))))

(declare-fun bm!14390 () Bool)

(assert (=> bm!14390 (= call!14391 (charsOf!368 (ite c!50237 separatorToken!170 call!14394)))))

(assert (= (and d!76439 res!121750) b!265519))

(assert (= (and d!76439 c!50239) b!265518))

(assert (= (and d!76439 (not c!50239)) b!265517))

(assert (= (and b!265517 res!121748) b!265520))

(assert (= (and b!265517 c!50238) b!265515))

(assert (= (and b!265517 (not c!50238)) b!265514))

(assert (= (and b!265514 res!121749) b!265516))

(assert (= (and b!265514 c!50237) b!265513))

(assert (= (and b!265514 (not c!50237)) b!265521))

(assert (= (or b!265513 b!265521) bm!14387))

(assert (= (or b!265513 b!265521) bm!14390))

(assert (= (or b!265515 b!265516 bm!14387) bm!14388))

(assert (= (or b!265515 b!265513) bm!14389))

(assert (= (or b!265515 b!265513) bm!14386))

(declare-fun m!331921 () Bool)

(assert (=> bm!14386 m!331921))

(declare-fun m!331923 () Bool)

(assert (=> bm!14390 m!331923))

(assert (=> d!76439 m!330121))

(declare-fun m!331925 () Bool)

(assert (=> d!76439 m!331925))

(assert (=> d!76439 m!330121))

(assert (=> d!76439 m!330645))

(assert (=> d!76439 m!330121))

(assert (=> d!76439 m!330647))

(declare-fun m!331927 () Bool)

(assert (=> d!76439 m!331927))

(assert (=> d!76439 m!330645))

(assert (=> d!76439 m!331925))

(declare-fun m!331929 () Bool)

(assert (=> d!76439 m!331929))

(assert (=> d!76439 m!331925))

(declare-fun m!331931 () Bool)

(assert (=> d!76439 m!331931))

(assert (=> b!265519 m!330121))

(assert (=> b!265519 m!330647))

(declare-fun m!331933 () Bool)

(assert (=> b!265521 m!331933))

(declare-fun m!331935 () Bool)

(assert (=> b!265521 m!331935))

(declare-fun m!331937 () Bool)

(assert (=> b!265521 m!331937))

(declare-fun m!331939 () Bool)

(assert (=> b!265521 m!331939))

(declare-fun m!331941 () Bool)

(assert (=> b!265521 m!331941))

(assert (=> b!265521 m!331933))

(declare-fun m!331943 () Bool)

(assert (=> b!265521 m!331943))

(assert (=> b!265521 m!331933))

(assert (=> b!265521 m!331939))

(assert (=> b!265521 m!331937))

(assert (=> b!265520 m!330121))

(declare-fun m!331945 () Bool)

(assert (=> b!265520 m!331945))

(declare-fun m!331947 () Bool)

(assert (=> b!265513 m!331947))

(assert (=> bm!14388 m!330121))

(assert (=> bm!14388 m!331945))

(declare-fun m!331949 () Bool)

(assert (=> b!265517 m!331949))

(declare-fun m!331951 () Bool)

(assert (=> b!265517 m!331951))

(declare-fun m!331953 () Bool)

(assert (=> b!265517 m!331953))

(declare-fun m!331955 () Bool)

(assert (=> b!265517 m!331955))

(declare-fun m!331957 () Bool)

(assert (=> b!265517 m!331957))

(assert (=> b!265517 m!330121))

(assert (=> b!265517 m!331945))

(assert (=> b!265517 m!330121))

(declare-fun m!331959 () Bool)

(assert (=> b!265517 m!331959))

(assert (=> b!265517 m!330121))

(assert (=> b!265517 m!330645))

(assert (=> b!265517 m!331957))

(declare-fun m!331961 () Bool)

(assert (=> b!265517 m!331961))

(declare-fun m!331963 () Bool)

(assert (=> b!265517 m!331963))

(assert (=> b!265517 m!331945))

(declare-fun m!331965 () Bool)

(assert (=> b!265517 m!331965))

(assert (=> b!265517 m!330645))

(assert (=> b!265517 m!331945))

(declare-fun m!331967 () Bool)

(assert (=> b!265517 m!331967))

(assert (=> b!265517 m!331965))

(assert (=> b!265517 m!331953))

(declare-fun m!331969 () Bool)

(assert (=> b!265517 m!331969))

(declare-fun m!331971 () Bool)

(assert (=> b!265517 m!331971))

(assert (=> b!265517 m!331963))

(declare-fun m!331973 () Bool)

(assert (=> b!265517 m!331973))

(declare-fun m!331975 () Bool)

(assert (=> bm!14389 m!331975))

(assert (=> b!264939 d!76439))

(declare-fun b!265545 () Bool)

(declare-fun e!164992 () Bool)

(declare-fun e!164988 () Bool)

(assert (=> b!265545 (= e!164992 e!164988)))

(declare-fun res!121769 () Bool)

(assert (=> b!265545 (=> (not res!121769) (not e!164988))))

(declare-fun lt!108689 () Option!797)

(declare-fun get!1250 (Option!797) tuple2!4250)

(assert (=> b!265545 (= res!121769 (= (_1!2341 (get!1250 lt!108689)) (_1!2340 (get!1246 (maxPrefix!329 thiss!17480 rules!1920 (list!1535 (++!982 (charsOf!368 (apply!749 (seqFromList!814 (t!37443 tokens!465)) 0)) lt!108314)))))))))

(declare-fun call!14398 () Option!797)

(declare-fun bm!14393 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!107 (LexerInterface!609 Rule!1246 BalanceConc!2544) Option!797)

(assert (=> bm!14393 (= call!14398 (maxPrefixOneRuleZipperSequence!107 thiss!17480 (h!9189 rules!1920) (++!982 (charsOf!368 (apply!749 (seqFromList!814 (t!37443 tokens!465)) 0)) lt!108314)))))

(declare-fun b!265546 () Bool)

(declare-fun e!164991 () Option!797)

(declare-fun lt!108688 () Option!797)

(declare-fun lt!108685 () Option!797)

(assert (=> b!265546 (= e!164991 (ite (and ((_ is None!796) lt!108688) ((_ is None!796) lt!108685)) None!796 (ite ((_ is None!796) lt!108685) lt!108688 (ite ((_ is None!796) lt!108688) lt!108685 (ite (>= (size!3011 (_1!2341 (v!14653 lt!108688))) (size!3011 (_1!2341 (v!14653 lt!108685)))) lt!108688 lt!108685)))))))

(assert (=> b!265546 (= lt!108688 call!14398)))

(assert (=> b!265546 (= lt!108685 (maxPrefixZipperSequence!292 thiss!17480 (t!37444 rules!1920) (++!982 (charsOf!368 (apply!749 (seqFromList!814 (t!37443 tokens!465)) 0)) lt!108314)))))

(declare-fun e!164990 () Bool)

(declare-fun b!265547 () Bool)

(declare-fun maxPrefixZipper!106 (LexerInterface!609 List!3802 List!3799) Option!796)

(assert (=> b!265547 (= e!164990 (= (list!1535 (_2!2341 (get!1250 lt!108689))) (_2!2340 (get!1246 (maxPrefixZipper!106 thiss!17480 rules!1920 (list!1535 (++!982 (charsOf!368 (apply!749 (seqFromList!814 (t!37443 tokens!465)) 0)) lt!108314)))))))))

(declare-fun d!76441 () Bool)

(declare-fun e!164987 () Bool)

(assert (=> d!76441 e!164987))

(declare-fun res!121770 () Bool)

(assert (=> d!76441 (=> (not res!121770) (not e!164987))))

(declare-fun isDefined!641 (Option!797) Bool)

(assert (=> d!76441 (= res!121770 (= (isDefined!641 lt!108689) (isDefined!637 (maxPrefixZipper!106 thiss!17480 rules!1920 (list!1535 (++!982 (charsOf!368 (apply!749 (seqFromList!814 (t!37443 tokens!465)) 0)) lt!108314))))))))

(assert (=> d!76441 (= lt!108689 e!164991)))

(declare-fun c!50242 () Bool)

(assert (=> d!76441 (= c!50242 (and ((_ is Cons!3792) rules!1920) ((_ is Nil!3792) (t!37444 rules!1920))))))

(declare-fun lt!108686 () Unit!4760)

(declare-fun lt!108687 () Unit!4760)

(assert (=> d!76441 (= lt!108686 lt!108687)))

(declare-fun lt!108690 () List!3799)

(declare-fun lt!108691 () List!3799)

(assert (=> d!76441 (isPrefix!392 lt!108690 lt!108691)))

(declare-fun lemmaIsPrefixRefl!202 (List!3799 List!3799) Unit!4760)

(assert (=> d!76441 (= lt!108687 (lemmaIsPrefixRefl!202 lt!108690 lt!108691))))

(assert (=> d!76441 (= lt!108691 (list!1535 (++!982 (charsOf!368 (apply!749 (seqFromList!814 (t!37443 tokens!465)) 0)) lt!108314)))))

(assert (=> d!76441 (= lt!108690 (list!1535 (++!982 (charsOf!368 (apply!749 (seqFromList!814 (t!37443 tokens!465)) 0)) lt!108314)))))

(declare-fun rulesValidInductive!198 (LexerInterface!609 List!3802) Bool)

(assert (=> d!76441 (rulesValidInductive!198 thiss!17480 rules!1920)))

(assert (=> d!76441 (= (maxPrefixZipperSequence!292 thiss!17480 rules!1920 (++!982 (charsOf!368 (apply!749 (seqFromList!814 (t!37443 tokens!465)) 0)) lt!108314)) lt!108689)))

(declare-fun b!265548 () Bool)

(assert (=> b!265548 (= e!164988 (= (list!1535 (_2!2341 (get!1250 lt!108689))) (_2!2340 (get!1246 (maxPrefix!329 thiss!17480 rules!1920 (list!1535 (++!982 (charsOf!368 (apply!749 (seqFromList!814 (t!37443 tokens!465)) 0)) lt!108314)))))))))

(declare-fun b!265549 () Bool)

(declare-fun e!164989 () Bool)

(assert (=> b!265549 (= e!164989 e!164990)))

(declare-fun res!121771 () Bool)

(assert (=> b!265549 (=> (not res!121771) (not e!164990))))

(assert (=> b!265549 (= res!121771 (= (_1!2341 (get!1250 lt!108689)) (_1!2340 (get!1246 (maxPrefixZipper!106 thiss!17480 rules!1920 (list!1535 (++!982 (charsOf!368 (apply!749 (seqFromList!814 (t!37443 tokens!465)) 0)) lt!108314)))))))))

(declare-fun b!265550 () Bool)

(assert (=> b!265550 (= e!164987 e!164992)))

(declare-fun res!121768 () Bool)

(assert (=> b!265550 (=> res!121768 e!164992)))

(assert (=> b!265550 (= res!121768 (not (isDefined!641 lt!108689)))))

(declare-fun b!265551 () Bool)

(assert (=> b!265551 (= e!164991 call!14398)))

(declare-fun b!265552 () Bool)

(declare-fun res!121767 () Bool)

(assert (=> b!265552 (=> (not res!121767) (not e!164987))))

(assert (=> b!265552 (= res!121767 e!164989)))

(declare-fun res!121772 () Bool)

(assert (=> b!265552 (=> res!121772 e!164989)))

(assert (=> b!265552 (= res!121772 (not (isDefined!641 lt!108689)))))

(assert (= (and d!76441 c!50242) b!265551))

(assert (= (and d!76441 (not c!50242)) b!265546))

(assert (= (or b!265551 b!265546) bm!14393))

(assert (= (and d!76441 res!121770) b!265552))

(assert (= (and b!265552 (not res!121772)) b!265549))

(assert (= (and b!265549 res!121771) b!265547))

(assert (= (and b!265552 res!121767) b!265550))

(assert (= (and b!265550 (not res!121768)) b!265545))

(assert (= (and b!265545 res!121769) b!265548))

(declare-fun m!331977 () Bool)

(assert (=> d!76441 m!331977))

(declare-fun m!331979 () Bool)

(assert (=> d!76441 m!331979))

(declare-fun m!331981 () Bool)

(assert (=> d!76441 m!331981))

(declare-fun m!331983 () Bool)

(assert (=> d!76441 m!331983))

(assert (=> d!76441 m!331979))

(declare-fun m!331985 () Bool)

(assert (=> d!76441 m!331985))

(declare-fun m!331987 () Bool)

(assert (=> d!76441 m!331987))

(declare-fun m!331989 () Bool)

(assert (=> d!76441 m!331989))

(assert (=> d!76441 m!330675))

(assert (=> d!76441 m!331977))

(assert (=> b!265547 m!331977))

(assert (=> b!265547 m!331979))

(declare-fun m!331993 () Bool)

(assert (=> b!265547 m!331993))

(declare-fun m!331995 () Bool)

(assert (=> b!265547 m!331995))

(assert (=> b!265547 m!331979))

(declare-fun m!332001 () Bool)

(assert (=> b!265547 m!332001))

(assert (=> b!265547 m!330675))

(assert (=> b!265547 m!331977))

(assert (=> b!265546 m!330675))

(declare-fun m!332003 () Bool)

(assert (=> b!265546 m!332003))

(declare-fun m!332005 () Bool)

(assert (=> b!265548 m!332005))

(declare-fun m!332007 () Bool)

(assert (=> b!265548 m!332007))

(assert (=> b!265548 m!331993))

(assert (=> b!265548 m!331977))

(assert (=> b!265548 m!332005))

(assert (=> b!265548 m!331995))

(assert (=> b!265548 m!330675))

(assert (=> b!265548 m!331977))

(assert (=> b!265552 m!331987))

(assert (=> b!265550 m!331987))

(assert (=> b!265549 m!331993))

(assert (=> b!265549 m!330675))

(assert (=> b!265549 m!331977))

(assert (=> b!265549 m!331977))

(assert (=> b!265549 m!331979))

(assert (=> b!265549 m!331979))

(assert (=> b!265549 m!332001))

(assert (=> b!265545 m!331993))

(assert (=> b!265545 m!330675))

(assert (=> b!265545 m!331977))

(assert (=> b!265545 m!331977))

(assert (=> b!265545 m!332005))

(assert (=> b!265545 m!332005))

(assert (=> b!265545 m!332007))

(assert (=> bm!14393 m!330675))

(declare-fun m!332013 () Bool)

(assert (=> bm!14393 m!332013))

(assert (=> b!264939 d!76441))

(declare-fun d!76445 () Bool)

(declare-fun lt!108699 () Token!1190)

(assert (=> d!76445 (contains!706 lt!108318 lt!108699)))

(declare-fun e!165011 () Token!1190)

(assert (=> d!76445 (= lt!108699 e!165011)))

(declare-fun c!50249 () Bool)

(assert (=> d!76445 (= c!50249 (= 0 0))))

(declare-fun e!165010 () Bool)

(assert (=> d!76445 e!165010))

(declare-fun res!121780 () Bool)

(assert (=> d!76445 (=> (not res!121780) (not e!165010))))

(assert (=> d!76445 (= res!121780 (<= 0 0))))

(assert (=> d!76445 (= (apply!750 lt!108318 0) lt!108699)))

(declare-fun b!265576 () Bool)

(assert (=> b!265576 (= e!165010 (< 0 (size!3018 lt!108318)))))

(declare-fun b!265577 () Bool)

(assert (=> b!265577 (= e!165011 (head!882 lt!108318))))

(declare-fun b!265578 () Bool)

(assert (=> b!265578 (= e!165011 (apply!750 (tail!472 lt!108318) (- 0 1)))))

(assert (= (and d!76445 res!121780) b!265576))

(assert (= (and d!76445 c!50249) b!265577))

(assert (= (and d!76445 (not c!50249)) b!265578))

(declare-fun m!332051 () Bool)

(assert (=> d!76445 m!332051))

(assert (=> b!265576 m!331729))

(declare-fun m!332053 () Bool)

(assert (=> b!265577 m!332053))

(declare-fun m!332055 () Bool)

(assert (=> b!265578 m!332055))

(assert (=> b!265578 m!332055))

(declare-fun m!332057 () Bool)

(assert (=> b!265578 m!332057))

(assert (=> b!264939 d!76445))

(declare-fun d!76465 () Bool)

(assert (=> d!76465 (= (tail!472 (drop!211 lt!108317 0)) (t!37443 (drop!211 lt!108317 0)))))

(assert (=> b!264939 d!76465))

(assert (=> b!264939 d!76309))

(declare-fun d!76469 () Bool)

(assert (=> d!76469 (= (tail!472 (drop!211 lt!108317 0)) (drop!211 lt!108317 (+ 0 1)))))

(declare-fun lt!108704 () Unit!4760)

(declare-fun choose!2430 (List!3801 Int) Unit!4760)

(assert (=> d!76469 (= lt!108704 (choose!2430 lt!108317 0))))

(declare-fun e!165019 () Bool)

(assert (=> d!76469 e!165019))

(declare-fun res!121785 () Bool)

(assert (=> d!76469 (=> (not res!121785) (not e!165019))))

(assert (=> d!76469 (= res!121785 (>= 0 0))))

(assert (=> d!76469 (= (lemmaDropTail!190 lt!108317 0) lt!108704)))

(declare-fun b!265589 () Bool)

(assert (=> b!265589 (= e!165019 (< 0 (size!3018 lt!108317)))))

(assert (= (and d!76469 res!121785) b!265589))

(assert (=> d!76469 m!330685))

(assert (=> d!76469 m!330685))

(assert (=> d!76469 m!330695))

(assert (=> d!76469 m!330693))

(declare-fun m!332099 () Bool)

(assert (=> d!76469 m!332099))

(assert (=> b!265589 m!331891))

(assert (=> b!264939 d!76469))

(declare-fun d!76479 () Bool)

(declare-fun lt!108705 () BalanceConc!2544)

(assert (=> d!76479 (= (list!1535 lt!108705) (originalCharacters!766 (apply!749 (seqFromList!814 (t!37443 tokens!465)) 0)))))

(assert (=> d!76479 (= lt!108705 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (apply!749 (seqFromList!814 (t!37443 tokens!465)) 0)))) (value!24921 (apply!749 (seqFromList!814 (t!37443 tokens!465)) 0))))))

(assert (=> d!76479 (= (charsOf!368 (apply!749 (seqFromList!814 (t!37443 tokens!465)) 0)) lt!108705)))

(declare-fun b_lambda!8285 () Bool)

(assert (=> (not b_lambda!8285) (not d!76479)))

(declare-fun t!37588 () Bool)

(declare-fun tb!14579 () Bool)

(assert (=> (and b!265105 (= (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 tokens!465))))) (toChars!1309 (transformation!723 (rule!1308 (apply!749 (seqFromList!814 (t!37443 tokens!465)) 0))))) t!37588) tb!14579))

(declare-fun b!265590 () Bool)

(declare-fun e!165020 () Bool)

(declare-fun tp!101469 () Bool)

(assert (=> b!265590 (= e!165020 (and (inv!4685 (c!50020 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (apply!749 (seqFromList!814 (t!37443 tokens!465)) 0)))) (value!24921 (apply!749 (seqFromList!814 (t!37443 tokens!465)) 0))))) tp!101469))))

(declare-fun result!18134 () Bool)

(assert (=> tb!14579 (= result!18134 (and (inv!4686 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (apply!749 (seqFromList!814 (t!37443 tokens!465)) 0)))) (value!24921 (apply!749 (seqFromList!814 (t!37443 tokens!465)) 0)))) e!165020))))

(assert (= tb!14579 b!265590))

(declare-fun m!332101 () Bool)

(assert (=> b!265590 m!332101))

(declare-fun m!332103 () Bool)

(assert (=> tb!14579 m!332103))

(assert (=> d!76479 t!37588))

(declare-fun b_and!20863 () Bool)

(assert (= b_and!20827 (and (=> t!37588 result!18134) b_and!20863)))

(declare-fun t!37590 () Bool)

(declare-fun tb!14581 () Bool)

(assert (=> (and b!265124 (= (toChars!1309 (transformation!723 (h!9189 (t!37444 rules!1920)))) (toChars!1309 (transformation!723 (rule!1308 (apply!749 (seqFromList!814 (t!37443 tokens!465)) 0))))) t!37590) tb!14581))

(declare-fun result!18136 () Bool)

(assert (= result!18136 result!18134))

(assert (=> d!76479 t!37590))

(declare-fun b_and!20865 () Bool)

(assert (= b_and!20829 (and (=> t!37590 result!18136) b_and!20865)))

(declare-fun t!37592 () Bool)

(declare-fun tb!14583 () Bool)

(assert (=> (and b!264597 (= (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))) (toChars!1309 (transformation!723 (rule!1308 (apply!749 (seqFromList!814 (t!37443 tokens!465)) 0))))) t!37592) tb!14583))

(declare-fun result!18138 () Bool)

(assert (= result!18138 result!18134))

(assert (=> d!76479 t!37592))

(declare-fun b_and!20867 () Bool)

(assert (= b_and!20823 (and (=> t!37592 result!18138) b_and!20867)))

(declare-fun t!37594 () Bool)

(declare-fun tb!14585 () Bool)

(assert (=> (and b!264593 (= (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))) (toChars!1309 (transformation!723 (rule!1308 (apply!749 (seqFromList!814 (t!37443 tokens!465)) 0))))) t!37594) tb!14585))

(declare-fun result!18140 () Bool)

(assert (= result!18140 result!18134))

(assert (=> d!76479 t!37594))

(declare-fun b_and!20869 () Bool)

(assert (= b_and!20825 (and (=> t!37594 result!18140) b_and!20869)))

(declare-fun t!37596 () Bool)

(declare-fun tb!14587 () Bool)

(assert (=> (and b!264598 (= (toChars!1309 (transformation!723 (h!9189 rules!1920))) (toChars!1309 (transformation!723 (rule!1308 (apply!749 (seqFromList!814 (t!37443 tokens!465)) 0))))) t!37596) tb!14587))

(declare-fun result!18142 () Bool)

(assert (= result!18142 result!18134))

(assert (=> d!76479 t!37596))

(declare-fun b_and!20871 () Bool)

(assert (= b_and!20831 (and (=> t!37596 result!18142) b_and!20871)))

(declare-fun m!332105 () Bool)

(assert (=> d!76479 m!332105))

(declare-fun m!332107 () Bool)

(assert (=> d!76479 m!332107))

(assert (=> b!264939 d!76479))

(declare-fun d!76481 () Bool)

(declare-fun lt!108708 () Int)

(assert (=> d!76481 (>= lt!108708 0)))

(declare-fun e!165021 () Int)

(assert (=> d!76481 (= lt!108708 e!165021)))

(declare-fun c!50252 () Bool)

(assert (=> d!76481 (= c!50252 ((_ is Nil!3789) lt!108331))))

(assert (=> d!76481 (= (size!3015 lt!108331) lt!108708)))

(declare-fun b!265591 () Bool)

(assert (=> b!265591 (= e!165021 0)))

(declare-fun b!265592 () Bool)

(assert (=> b!265592 (= e!165021 (+ 1 (size!3015 (t!37441 lt!108331))))))

(assert (= (and d!76481 c!50252) b!265591))

(assert (= (and d!76481 (not c!50252)) b!265592))

(declare-fun m!332111 () Bool)

(assert (=> b!265592 m!332111))

(assert (=> b!264999 d!76481))

(declare-fun d!76483 () Bool)

(declare-fun lt!108710 () Int)

(assert (=> d!76483 (>= lt!108710 0)))

(declare-fun e!165022 () Int)

(assert (=> d!76483 (= lt!108710 e!165022)))

(declare-fun c!50253 () Bool)

(assert (=> d!76483 (= c!50253 ((_ is Nil!3789) lt!108117))))

(assert (=> d!76483 (= (size!3015 lt!108117) lt!108710)))

(declare-fun b!265593 () Bool)

(assert (=> b!265593 (= e!165022 0)))

(declare-fun b!265594 () Bool)

(assert (=> b!265594 (= e!165022 (+ 1 (size!3015 (t!37441 lt!108117))))))

(assert (= (and d!76483 c!50253) b!265593))

(assert (= (and d!76483 (not c!50253)) b!265594))

(declare-fun m!332117 () Bool)

(assert (=> b!265594 m!332117))

(assert (=> b!264999 d!76483))

(declare-fun d!76487 () Bool)

(declare-fun lt!108711 () Int)

(assert (=> d!76487 (>= lt!108711 0)))

(declare-fun e!165023 () Int)

(assert (=> d!76487 (= lt!108711 e!165023)))

(declare-fun c!50254 () Bool)

(assert (=> d!76487 (= c!50254 ((_ is Nil!3789) lt!108118))))

(assert (=> d!76487 (= (size!3015 lt!108118) lt!108711)))

(declare-fun b!265595 () Bool)

(assert (=> b!265595 (= e!165023 0)))

(declare-fun b!265596 () Bool)

(assert (=> b!265596 (= e!165023 (+ 1 (size!3015 (t!37441 lt!108118))))))

(assert (= (and d!76487 c!50254) b!265595))

(assert (= (and d!76487 (not c!50254)) b!265596))

(declare-fun m!332119 () Bool)

(assert (=> b!265596 m!332119))

(assert (=> b!264999 d!76487))

(declare-fun d!76489 () Bool)

(declare-fun e!165026 () Bool)

(assert (=> d!76489 e!165026))

(declare-fun res!121788 () Bool)

(assert (=> d!76489 (=> (not res!121788) (not e!165026))))

(declare-fun lt!108714 () BalanceConc!2544)

(assert (=> d!76489 (= res!121788 (= (list!1535 lt!108714) lt!108114))))

(declare-fun fromList!167 (List!3799) Conc!1268)

(assert (=> d!76489 (= lt!108714 (BalanceConc!2545 (fromList!167 lt!108114)))))

(assert (=> d!76489 (= (fromListB!309 lt!108114) lt!108714)))

(declare-fun b!265599 () Bool)

(assert (=> b!265599 (= e!165026 (isBalanced!343 (fromList!167 lt!108114)))))

(assert (= (and d!76489 res!121788) b!265599))

(declare-fun m!332121 () Bool)

(assert (=> d!76489 m!332121))

(declare-fun m!332123 () Bool)

(assert (=> d!76489 m!332123))

(assert (=> b!265599 m!332123))

(assert (=> b!265599 m!332123))

(declare-fun m!332125 () Bool)

(assert (=> b!265599 m!332125))

(assert (=> d!76145 d!76489))

(declare-fun bs!29154 () Bool)

(declare-fun d!76491 () Bool)

(assert (= bs!29154 (and d!76491 d!76315)))

(declare-fun lambda!8965 () Int)

(assert (=> bs!29154 (= (= (toValue!1450 (transformation!723 (rule!1308 separatorToken!170))) (toValue!1450 (transformation!723 (h!9189 rules!1920)))) (= lambda!8965 lambda!8955))))

(assert (=> d!76491 true))

(assert (=> d!76491 (< (dynLambda!1929 order!2893 (toValue!1450 (transformation!723 (rule!1308 separatorToken!170)))) (dynLambda!1934 order!2905 lambda!8965))))

(assert (=> d!76491 (= (equivClasses!236 (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))) (toValue!1450 (transformation!723 (rule!1308 separatorToken!170)))) (Forall2!143 lambda!8965))))

(declare-fun bs!29155 () Bool)

(assert (= bs!29155 d!76491))

(declare-fun m!332127 () Bool)

(assert (=> bs!29155 m!332127))

(assert (=> b!265025 d!76491))

(assert (=> b!264942 d!76309))

(declare-fun d!76493 () Bool)

(declare-fun lt!108715 () Int)

(assert (=> d!76493 (>= lt!108715 0)))

(declare-fun e!165027 () Int)

(assert (=> d!76493 (= lt!108715 e!165027)))

(declare-fun c!50256 () Bool)

(assert (=> d!76493 (= c!50256 ((_ is Nil!3789) lt!108382))))

(assert (=> d!76493 (= (size!3015 lt!108382) lt!108715)))

(declare-fun b!265600 () Bool)

(assert (=> b!265600 (= e!165027 0)))

(declare-fun b!265601 () Bool)

(assert (=> b!265601 (= e!165027 (+ 1 (size!3015 (t!37441 lt!108382))))))

(assert (= (and d!76493 c!50256) b!265600))

(assert (= (and d!76493 (not c!50256)) b!265601))

(declare-fun m!332129 () Bool)

(assert (=> b!265601 m!332129))

(assert (=> b!265070 d!76493))

(assert (=> b!265070 d!76483))

(assert (=> b!265070 d!76385))

(declare-fun d!76495 () Bool)

(declare-fun c!50259 () Bool)

(assert (=> d!76495 (= c!50259 ((_ is Nil!3789) lt!108136))))

(declare-fun e!165030 () (InoxSet C!2816))

(assert (=> d!76495 (= (content!539 lt!108136) e!165030)))

(declare-fun b!265606 () Bool)

(assert (=> b!265606 (= e!165030 ((as const (Array C!2816 Bool)) false))))

(declare-fun b!265607 () Bool)

(assert (=> b!265607 (= e!165030 ((_ map or) (store ((as const (Array C!2816 Bool)) false) (h!9186 lt!108136) true) (content!539 (t!37441 lt!108136))))))

(assert (= (and d!76495 c!50259) b!265606))

(assert (= (and d!76495 (not c!50259)) b!265607))

(declare-fun m!332131 () Bool)

(assert (=> b!265607 m!332131))

(declare-fun m!332133 () Bool)

(assert (=> b!265607 m!332133))

(assert (=> d!76015 d!76495))

(declare-fun d!76497 () Bool)

(declare-fun c!50260 () Bool)

(assert (=> d!76497 (= c!50260 ((_ is Nil!3789) (++!980 lt!108117 lt!108119)))))

(declare-fun e!165031 () (InoxSet C!2816))

(assert (=> d!76497 (= (content!539 (++!980 lt!108117 lt!108119)) e!165031)))

(declare-fun b!265608 () Bool)

(assert (=> b!265608 (= e!165031 ((as const (Array C!2816 Bool)) false))))

(declare-fun b!265609 () Bool)

(assert (=> b!265609 (= e!165031 ((_ map or) (store ((as const (Array C!2816 Bool)) false) (h!9186 (++!980 lt!108117 lt!108119)) true) (content!539 (t!37441 (++!980 lt!108117 lt!108119)))))))

(assert (= (and d!76497 c!50260) b!265608))

(assert (= (and d!76497 (not c!50260)) b!265609))

(declare-fun m!332135 () Bool)

(assert (=> b!265609 m!332135))

(declare-fun m!332137 () Bool)

(assert (=> b!265609 m!332137))

(assert (=> d!76015 d!76497))

(declare-fun d!76499 () Bool)

(declare-fun c!50261 () Bool)

(assert (=> d!76499 (= c!50261 ((_ is Nil!3789) lt!108116))))

(declare-fun e!165032 () (InoxSet C!2816))

(assert (=> d!76499 (= (content!539 lt!108116) e!165032)))

(declare-fun b!265610 () Bool)

(assert (=> b!265610 (= e!165032 ((as const (Array C!2816 Bool)) false))))

(declare-fun b!265611 () Bool)

(assert (=> b!265611 (= e!165032 ((_ map or) (store ((as const (Array C!2816 Bool)) false) (h!9186 lt!108116) true) (content!539 (t!37441 lt!108116))))))

(assert (= (and d!76499 c!50261) b!265610))

(assert (= (and d!76499 (not c!50261)) b!265611))

(declare-fun m!332139 () Bool)

(assert (=> b!265611 m!332139))

(declare-fun m!332141 () Bool)

(assert (=> b!265611 m!332141))

(assert (=> d!76015 d!76499))

(declare-fun d!76501 () Bool)

(declare-fun res!121793 () Bool)

(declare-fun e!165037 () Bool)

(assert (=> d!76501 (=> res!121793 e!165037)))

(assert (=> d!76501 (= res!121793 ((_ is Nil!3792) rules!1920))))

(assert (=> d!76501 (= (noDuplicateTag!219 thiss!17480 rules!1920 Nil!3794) e!165037)))

(declare-fun b!265616 () Bool)

(declare-fun e!165038 () Bool)

(assert (=> b!265616 (= e!165037 e!165038)))

(declare-fun res!121794 () Bool)

(assert (=> b!265616 (=> (not res!121794) (not e!165038))))

(declare-fun contains!707 (List!3804 String!4805) Bool)

(assert (=> b!265616 (= res!121794 (not (contains!707 Nil!3794 (tag!933 (h!9189 rules!1920)))))))

(declare-fun b!265617 () Bool)

(assert (=> b!265617 (= e!165038 (noDuplicateTag!219 thiss!17480 (t!37444 rules!1920) (Cons!3794 (tag!933 (h!9189 rules!1920)) Nil!3794)))))

(assert (= (and d!76501 (not res!121793)) b!265616))

(assert (= (and b!265616 res!121794) b!265617))

(declare-fun m!332143 () Bool)

(assert (=> b!265616 m!332143))

(declare-fun m!332145 () Bool)

(assert (=> b!265617 m!332145))

(assert (=> b!264676 d!76501))

(declare-fun d!76503 () Bool)

(declare-fun res!121795 () Bool)

(declare-fun e!165039 () Bool)

(assert (=> d!76503 (=> res!121795 e!165039)))

(assert (=> d!76503 (= res!121795 ((_ is Nil!3791) (t!37443 tokens!465)))))

(assert (=> d!76503 (= (forall!939 (t!37443 tokens!465) lambda!8902) e!165039)))

(declare-fun b!265618 () Bool)

(declare-fun e!165040 () Bool)

(assert (=> b!265618 (= e!165039 e!165040)))

(declare-fun res!121796 () Bool)

(assert (=> b!265618 (=> (not res!121796) (not e!165040))))

(assert (=> b!265618 (= res!121796 (dynLambda!1928 lambda!8902 (h!9188 (t!37443 tokens!465))))))

(declare-fun b!265619 () Bool)

(assert (=> b!265619 (= e!165040 (forall!939 (t!37443 (t!37443 tokens!465)) lambda!8902))))

(assert (= (and d!76503 (not res!121795)) b!265618))

(assert (= (and b!265618 res!121796) b!265619))

(declare-fun b_lambda!8287 () Bool)

(assert (=> (not b_lambda!8287) (not b!265618)))

(declare-fun m!332147 () Bool)

(assert (=> b!265618 m!332147))

(declare-fun m!332149 () Bool)

(assert (=> b!265619 m!332149))

(assert (=> b!264673 d!76503))

(declare-fun lt!108716 () BalanceConc!2544)

(declare-fun d!76505 () Bool)

(assert (=> d!76505 (= (list!1535 lt!108716) (originalCharacters!766 (ite c!50104 separatorToken!170 call!14353)))))

(assert (=> d!76505 (= lt!108716 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (ite c!50104 separatorToken!170 call!14353)))) (value!24921 (ite c!50104 separatorToken!170 call!14353))))))

(assert (=> d!76505 (= (charsOf!368 (ite c!50104 separatorToken!170 call!14353)) lt!108716)))

(declare-fun b_lambda!8289 () Bool)

(assert (=> (not b_lambda!8289) (not d!76505)))

(declare-fun t!37598 () Bool)

(declare-fun tb!14589 () Bool)

(assert (=> (and b!265124 (= (toChars!1309 (transformation!723 (h!9189 (t!37444 rules!1920)))) (toChars!1309 (transformation!723 (rule!1308 (ite c!50104 separatorToken!170 call!14353))))) t!37598) tb!14589))

(declare-fun b!265620 () Bool)

(declare-fun tp!101470 () Bool)

(declare-fun e!165041 () Bool)

(assert (=> b!265620 (= e!165041 (and (inv!4685 (c!50020 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (ite c!50104 separatorToken!170 call!14353)))) (value!24921 (ite c!50104 separatorToken!170 call!14353))))) tp!101470))))

(declare-fun result!18144 () Bool)

(assert (=> tb!14589 (= result!18144 (and (inv!4686 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (ite c!50104 separatorToken!170 call!14353)))) (value!24921 (ite c!50104 separatorToken!170 call!14353)))) e!165041))))

(assert (= tb!14589 b!265620))

(declare-fun m!332151 () Bool)

(assert (=> b!265620 m!332151))

(declare-fun m!332153 () Bool)

(assert (=> tb!14589 m!332153))

(assert (=> d!76505 t!37598))

(declare-fun b_and!20873 () Bool)

(assert (= b_and!20865 (and (=> t!37598 result!18144) b_and!20873)))

(declare-fun tb!14591 () Bool)

(declare-fun t!37600 () Bool)

(assert (=> (and b!264598 (= (toChars!1309 (transformation!723 (h!9189 rules!1920))) (toChars!1309 (transformation!723 (rule!1308 (ite c!50104 separatorToken!170 call!14353))))) t!37600) tb!14591))

(declare-fun result!18146 () Bool)

(assert (= result!18146 result!18144))

(assert (=> d!76505 t!37600))

(declare-fun b_and!20875 () Bool)

(assert (= b_and!20871 (and (=> t!37600 result!18146) b_and!20875)))

(declare-fun t!37602 () Bool)

(declare-fun tb!14593 () Bool)

(assert (=> (and b!265105 (= (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 tokens!465))))) (toChars!1309 (transformation!723 (rule!1308 (ite c!50104 separatorToken!170 call!14353))))) t!37602) tb!14593))

(declare-fun result!18148 () Bool)

(assert (= result!18148 result!18144))

(assert (=> d!76505 t!37602))

(declare-fun b_and!20877 () Bool)

(assert (= b_and!20863 (and (=> t!37602 result!18148) b_and!20877)))

(declare-fun tb!14595 () Bool)

(declare-fun t!37604 () Bool)

(assert (=> (and b!264593 (= (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))) (toChars!1309 (transformation!723 (rule!1308 (ite c!50104 separatorToken!170 call!14353))))) t!37604) tb!14595))

(declare-fun result!18150 () Bool)

(assert (= result!18150 result!18144))

(assert (=> d!76505 t!37604))

(declare-fun b_and!20879 () Bool)

(assert (= b_and!20869 (and (=> t!37604 result!18150) b_and!20879)))

(declare-fun t!37606 () Bool)

(declare-fun tb!14597 () Bool)

(assert (=> (and b!264597 (= (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))) (toChars!1309 (transformation!723 (rule!1308 (ite c!50104 separatorToken!170 call!14353))))) t!37606) tb!14597))

(declare-fun result!18152 () Bool)

(assert (= result!18152 result!18144))

(assert (=> d!76505 t!37606))

(declare-fun b_and!20881 () Bool)

(assert (= b_and!20867 (and (=> t!37606 result!18152) b_and!20881)))

(declare-fun m!332155 () Bool)

(assert (=> d!76505 m!332155))

(declare-fun m!332157 () Bool)

(assert (=> d!76505 m!332157))

(assert (=> bm!14349 d!76505))

(declare-fun b!265622 () Bool)

(declare-fun e!165042 () List!3799)

(declare-fun e!165043 () List!3799)

(assert (=> b!265622 (= e!165042 e!165043)))

(declare-fun c!50263 () Bool)

(assert (=> b!265622 (= c!50263 ((_ is Leaf!1969) (c!50020 (printWithSeparatorTokenWhenNeededRec!284 thiss!17480 rules!1920 lt!108115 separatorToken!170 0))))))

(declare-fun b!265621 () Bool)

(assert (=> b!265621 (= e!165042 Nil!3789)))

(declare-fun b!265624 () Bool)

(assert (=> b!265624 (= e!165043 (++!980 (list!1539 (left!3116 (c!50020 (printWithSeparatorTokenWhenNeededRec!284 thiss!17480 rules!1920 lt!108115 separatorToken!170 0)))) (list!1539 (right!3446 (c!50020 (printWithSeparatorTokenWhenNeededRec!284 thiss!17480 rules!1920 lt!108115 separatorToken!170 0))))))))

(declare-fun c!50262 () Bool)

(declare-fun d!76507 () Bool)

(assert (=> d!76507 (= c!50262 ((_ is Empty!1268) (c!50020 (printWithSeparatorTokenWhenNeededRec!284 thiss!17480 rules!1920 lt!108115 separatorToken!170 0))))))

(assert (=> d!76507 (= (list!1539 (c!50020 (printWithSeparatorTokenWhenNeededRec!284 thiss!17480 rules!1920 lt!108115 separatorToken!170 0))) e!165042)))

(declare-fun b!265623 () Bool)

(assert (=> b!265623 (= e!165043 (list!1543 (xs!3867 (c!50020 (printWithSeparatorTokenWhenNeededRec!284 thiss!17480 rules!1920 lt!108115 separatorToken!170 0)))))))

(assert (= (and d!76507 c!50262) b!265621))

(assert (= (and d!76507 (not c!50262)) b!265622))

(assert (= (and b!265622 c!50263) b!265623))

(assert (= (and b!265622 (not c!50263)) b!265624))

(declare-fun m!332159 () Bool)

(assert (=> b!265624 m!332159))

(declare-fun m!332161 () Bool)

(assert (=> b!265624 m!332161))

(assert (=> b!265624 m!332159))

(assert (=> b!265624 m!332161))

(declare-fun m!332163 () Bool)

(assert (=> b!265624 m!332163))

(declare-fun m!332165 () Bool)

(assert (=> b!265623 m!332165))

(assert (=> d!76147 d!76507))

(declare-fun d!76509 () Bool)

(declare-fun res!121797 () Bool)

(declare-fun e!165044 () Bool)

(assert (=> d!76509 (=> (not res!121797) (not e!165044))))

(assert (=> d!76509 (= res!121797 (not (isEmpty!2385 (originalCharacters!766 (h!9188 (t!37443 tokens!465))))))))

(assert (=> d!76509 (= (inv!4682 (h!9188 (t!37443 tokens!465))) e!165044)))

(declare-fun b!265625 () Bool)

(declare-fun res!121798 () Bool)

(assert (=> b!265625 (=> (not res!121798) (not e!165044))))

(assert (=> b!265625 (= res!121798 (= (originalCharacters!766 (h!9188 (t!37443 tokens!465))) (list!1535 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 tokens!465))))) (value!24921 (h!9188 (t!37443 tokens!465)))))))))

(declare-fun b!265626 () Bool)

(assert (=> b!265626 (= e!165044 (= (size!3011 (h!9188 (t!37443 tokens!465))) (size!3015 (originalCharacters!766 (h!9188 (t!37443 tokens!465))))))))

(assert (= (and d!76509 res!121797) b!265625))

(assert (= (and b!265625 res!121798) b!265626))

(declare-fun b_lambda!8291 () Bool)

(assert (=> (not b_lambda!8291) (not b!265625)))

(assert (=> b!265625 t!37548))

(declare-fun b_and!20883 () Bool)

(assert (= b_and!20879 (and (=> t!37548 result!18096) b_and!20883)))

(assert (=> b!265625 t!37550))

(declare-fun b_and!20885 () Bool)

(assert (= b_and!20877 (and (=> t!37550 result!18098) b_and!20885)))

(assert (=> b!265625 t!37552))

(declare-fun b_and!20887 () Bool)

(assert (= b_and!20873 (and (=> t!37552 result!18100) b_and!20887)))

(assert (=> b!265625 t!37546))

(declare-fun b_and!20889 () Bool)

(assert (= b_and!20881 (and (=> t!37546 result!18094) b_and!20889)))

(assert (=> b!265625 t!37554))

(declare-fun b_and!20891 () Bool)

(assert (= b_and!20875 (and (=> t!37554 result!18102) b_and!20891)))

(declare-fun m!332167 () Bool)

(assert (=> d!76509 m!332167))

(assert (=> b!265625 m!331651))

(assert (=> b!265625 m!331651))

(declare-fun m!332169 () Bool)

(assert (=> b!265625 m!332169))

(declare-fun m!332171 () Bool)

(assert (=> b!265626 m!332171))

(assert (=> b!265102 d!76509))

(declare-fun d!76511 () Bool)

(assert (=> d!76511 (= (head!882 (drop!211 lt!108371 0)) (h!9188 (drop!211 lt!108371 0)))))

(assert (=> b!265049 d!76511))

(assert (=> b!265049 d!76347))

(declare-fun d!76513 () Bool)

(assert (=> d!76513 (= (tail!472 (drop!211 lt!108370 0)) (t!37443 (drop!211 lt!108370 0)))))

(assert (=> b!265049 d!76513))

(declare-fun b!265627 () Bool)

(declare-fun e!165050 () Bool)

(declare-fun e!165046 () Bool)

(assert (=> b!265627 (= e!165050 e!165046)))

(declare-fun res!121801 () Bool)

(assert (=> b!265627 (=> (not res!121801) (not e!165046))))

(declare-fun lt!108721 () Option!797)

(assert (=> b!265627 (= res!121801 (= (_1!2341 (get!1250 lt!108721)) (_1!2340 (get!1246 (maxPrefix!329 thiss!17480 rules!1920 (list!1535 (++!982 (charsOf!368 (apply!749 lt!108115 0)) lt!108367)))))))))

(declare-fun bm!14394 () Bool)

(declare-fun call!14399 () Option!797)

(assert (=> bm!14394 (= call!14399 (maxPrefixOneRuleZipperSequence!107 thiss!17480 (h!9189 rules!1920) (++!982 (charsOf!368 (apply!749 lt!108115 0)) lt!108367)))))

(declare-fun b!265628 () Bool)

(declare-fun e!165049 () Option!797)

(declare-fun lt!108720 () Option!797)

(declare-fun lt!108717 () Option!797)

(assert (=> b!265628 (= e!165049 (ite (and ((_ is None!796) lt!108720) ((_ is None!796) lt!108717)) None!796 (ite ((_ is None!796) lt!108717) lt!108720 (ite ((_ is None!796) lt!108720) lt!108717 (ite (>= (size!3011 (_1!2341 (v!14653 lt!108720))) (size!3011 (_1!2341 (v!14653 lt!108717)))) lt!108720 lt!108717)))))))

(assert (=> b!265628 (= lt!108720 call!14399)))

(assert (=> b!265628 (= lt!108717 (maxPrefixZipperSequence!292 thiss!17480 (t!37444 rules!1920) (++!982 (charsOf!368 (apply!749 lt!108115 0)) lt!108367)))))

(declare-fun b!265629 () Bool)

(declare-fun e!165048 () Bool)

(assert (=> b!265629 (= e!165048 (= (list!1535 (_2!2341 (get!1250 lt!108721))) (_2!2340 (get!1246 (maxPrefixZipper!106 thiss!17480 rules!1920 (list!1535 (++!982 (charsOf!368 (apply!749 lt!108115 0)) lt!108367)))))))))

(declare-fun d!76515 () Bool)

(declare-fun e!165045 () Bool)

(assert (=> d!76515 e!165045))

(declare-fun res!121802 () Bool)

(assert (=> d!76515 (=> (not res!121802) (not e!165045))))

(assert (=> d!76515 (= res!121802 (= (isDefined!641 lt!108721) (isDefined!637 (maxPrefixZipper!106 thiss!17480 rules!1920 (list!1535 (++!982 (charsOf!368 (apply!749 lt!108115 0)) lt!108367))))))))

(assert (=> d!76515 (= lt!108721 e!165049)))

(declare-fun c!50264 () Bool)

(assert (=> d!76515 (= c!50264 (and ((_ is Cons!3792) rules!1920) ((_ is Nil!3792) (t!37444 rules!1920))))))

(declare-fun lt!108718 () Unit!4760)

(declare-fun lt!108719 () Unit!4760)

(assert (=> d!76515 (= lt!108718 lt!108719)))

(declare-fun lt!108722 () List!3799)

(declare-fun lt!108723 () List!3799)

(assert (=> d!76515 (isPrefix!392 lt!108722 lt!108723)))

(assert (=> d!76515 (= lt!108719 (lemmaIsPrefixRefl!202 lt!108722 lt!108723))))

(assert (=> d!76515 (= lt!108723 (list!1535 (++!982 (charsOf!368 (apply!749 lt!108115 0)) lt!108367)))))

(assert (=> d!76515 (= lt!108722 (list!1535 (++!982 (charsOf!368 (apply!749 lt!108115 0)) lt!108367)))))

(assert (=> d!76515 (rulesValidInductive!198 thiss!17480 rules!1920)))

(assert (=> d!76515 (= (maxPrefixZipperSequence!292 thiss!17480 rules!1920 (++!982 (charsOf!368 (apply!749 lt!108115 0)) lt!108367)) lt!108721)))

(declare-fun b!265630 () Bool)

(assert (=> b!265630 (= e!165046 (= (list!1535 (_2!2341 (get!1250 lt!108721))) (_2!2340 (get!1246 (maxPrefix!329 thiss!17480 rules!1920 (list!1535 (++!982 (charsOf!368 (apply!749 lt!108115 0)) lt!108367)))))))))

(declare-fun b!265631 () Bool)

(declare-fun e!165047 () Bool)

(assert (=> b!265631 (= e!165047 e!165048)))

(declare-fun res!121803 () Bool)

(assert (=> b!265631 (=> (not res!121803) (not e!165048))))

(assert (=> b!265631 (= res!121803 (= (_1!2341 (get!1250 lt!108721)) (_1!2340 (get!1246 (maxPrefixZipper!106 thiss!17480 rules!1920 (list!1535 (++!982 (charsOf!368 (apply!749 lt!108115 0)) lt!108367)))))))))

(declare-fun b!265632 () Bool)

(assert (=> b!265632 (= e!165045 e!165050)))

(declare-fun res!121800 () Bool)

(assert (=> b!265632 (=> res!121800 e!165050)))

(assert (=> b!265632 (= res!121800 (not (isDefined!641 lt!108721)))))

(declare-fun b!265633 () Bool)

(assert (=> b!265633 (= e!165049 call!14399)))

(declare-fun b!265634 () Bool)

(declare-fun res!121799 () Bool)

(assert (=> b!265634 (=> (not res!121799) (not e!165045))))

(assert (=> b!265634 (= res!121799 e!165047)))

(declare-fun res!121804 () Bool)

(assert (=> b!265634 (=> res!121804 e!165047)))

(assert (=> b!265634 (= res!121804 (not (isDefined!641 lt!108721)))))

(assert (= (and d!76515 c!50264) b!265633))

(assert (= (and d!76515 (not c!50264)) b!265628))

(assert (= (or b!265633 b!265628) bm!14394))

(assert (= (and d!76515 res!121802) b!265634))

(assert (= (and b!265634 (not res!121804)) b!265631))

(assert (= (and b!265631 res!121803) b!265629))

(assert (= (and b!265634 res!121799) b!265632))

(assert (= (and b!265632 (not res!121800)) b!265627))

(assert (= (and b!265627 res!121801) b!265630))

(declare-fun m!332173 () Bool)

(assert (=> d!76515 m!332173))

(declare-fun m!332175 () Bool)

(assert (=> d!76515 m!332175))

(assert (=> d!76515 m!331981))

(declare-fun m!332177 () Bool)

(assert (=> d!76515 m!332177))

(assert (=> d!76515 m!332175))

(declare-fun m!332179 () Bool)

(assert (=> d!76515 m!332179))

(declare-fun m!332181 () Bool)

(assert (=> d!76515 m!332181))

(declare-fun m!332183 () Bool)

(assert (=> d!76515 m!332183))

(assert (=> d!76515 m!330873))

(assert (=> d!76515 m!332173))

(assert (=> b!265629 m!332173))

(assert (=> b!265629 m!332175))

(declare-fun m!332185 () Bool)

(assert (=> b!265629 m!332185))

(declare-fun m!332187 () Bool)

(assert (=> b!265629 m!332187))

(assert (=> b!265629 m!332175))

(declare-fun m!332189 () Bool)

(assert (=> b!265629 m!332189))

(assert (=> b!265629 m!330873))

(assert (=> b!265629 m!332173))

(assert (=> b!265628 m!330873))

(declare-fun m!332191 () Bool)

(assert (=> b!265628 m!332191))

(declare-fun m!332193 () Bool)

(assert (=> b!265630 m!332193))

(declare-fun m!332195 () Bool)

(assert (=> b!265630 m!332195))

(assert (=> b!265630 m!332185))

(assert (=> b!265630 m!332173))

(assert (=> b!265630 m!332193))

(assert (=> b!265630 m!332187))

(assert (=> b!265630 m!330873))

(assert (=> b!265630 m!332173))

(assert (=> b!265634 m!332181))

(assert (=> b!265632 m!332181))

(assert (=> b!265631 m!332185))

(assert (=> b!265631 m!330873))

(assert (=> b!265631 m!332173))

(assert (=> b!265631 m!332173))

(assert (=> b!265631 m!332175))

(assert (=> b!265631 m!332175))

(assert (=> b!265631 m!332189))

(assert (=> b!265627 m!332185))

(assert (=> b!265627 m!330873))

(assert (=> b!265627 m!332173))

(assert (=> b!265627 m!332173))

(assert (=> b!265627 m!332193))

(assert (=> b!265627 m!332193))

(assert (=> b!265627 m!332195))

(assert (=> bm!14394 m!330873))

(declare-fun m!332197 () Bool)

(assert (=> bm!14394 m!332197))

(assert (=> b!265049 d!76515))

(declare-fun b!265635 () Bool)

(declare-fun e!165055 () List!3801)

(declare-fun e!165053 () List!3801)

(assert (=> b!265635 (= e!165055 e!165053)))

(declare-fun c!50267 () Bool)

(assert (=> b!265635 (= c!50267 (<= 0 0))))

(declare-fun b!265636 () Bool)

(declare-fun e!165051 () Int)

(declare-fun call!14400 () Int)

(assert (=> b!265636 (= e!165051 call!14400)))

(declare-fun b!265637 () Bool)

(assert (=> b!265637 (= e!165055 Nil!3791)))

(declare-fun b!265638 () Bool)

(declare-fun e!165052 () Int)

(assert (=> b!265638 (= e!165052 0)))

(declare-fun b!265639 () Bool)

(assert (=> b!265639 (= e!165051 e!165052)))

(declare-fun c!50265 () Bool)

(assert (=> b!265639 (= c!50265 (>= 0 call!14400))))

(declare-fun b!265640 () Bool)

(assert (=> b!265640 (= e!165053 (drop!211 (t!37443 lt!108371) (- 0 1)))))

(declare-fun bm!14395 () Bool)

(assert (=> bm!14395 (= call!14400 (size!3018 lt!108371))))

(declare-fun b!265641 () Bool)

(assert (=> b!265641 (= e!165052 (- call!14400 0))))

(declare-fun b!265642 () Bool)

(assert (=> b!265642 (= e!165053 lt!108371)))

(declare-fun d!76517 () Bool)

(declare-fun e!165054 () Bool)

(assert (=> d!76517 e!165054))

(declare-fun res!121805 () Bool)

(assert (=> d!76517 (=> (not res!121805) (not e!165054))))

(declare-fun lt!108724 () List!3801)

(assert (=> d!76517 (= res!121805 (= ((_ map implies) (content!540 lt!108724) (content!540 lt!108371)) ((as const (InoxSet Token!1190)) true)))))

(assert (=> d!76517 (= lt!108724 e!165055)))

(declare-fun c!50266 () Bool)

(assert (=> d!76517 (= c!50266 ((_ is Nil!3791) lt!108371))))

(assert (=> d!76517 (= (drop!211 lt!108371 0) lt!108724)))

(declare-fun b!265643 () Bool)

(assert (=> b!265643 (= e!165054 (= (size!3018 lt!108724) e!165051))))

(declare-fun c!50268 () Bool)

(assert (=> b!265643 (= c!50268 (<= 0 0))))

(assert (= (and d!76517 c!50266) b!265637))

(assert (= (and d!76517 (not c!50266)) b!265635))

(assert (= (and b!265635 c!50267) b!265642))

(assert (= (and b!265635 (not c!50267)) b!265640))

(assert (= (and d!76517 res!121805) b!265643))

(assert (= (and b!265643 c!50268) b!265636))

(assert (= (and b!265643 (not c!50268)) b!265639))

(assert (= (and b!265639 c!50265) b!265638))

(assert (= (and b!265639 (not c!50265)) b!265641))

(assert (= (or b!265636 b!265639 b!265641) bm!14395))

(declare-fun m!332199 () Bool)

(assert (=> b!265640 m!332199))

(declare-fun m!332201 () Bool)

(assert (=> bm!14395 m!332201))

(declare-fun m!332203 () Bool)

(assert (=> d!76517 m!332203))

(declare-fun m!332205 () Bool)

(assert (=> d!76517 m!332205))

(declare-fun m!332207 () Bool)

(assert (=> b!265643 m!332207))

(assert (=> b!265049 d!76517))

(assert (=> b!265049 d!76345))

(declare-fun b!265644 () Bool)

(declare-fun e!165060 () List!3801)

(declare-fun e!165058 () List!3801)

(assert (=> b!265644 (= e!165060 e!165058)))

(declare-fun c!50271 () Bool)

(assert (=> b!265644 (= c!50271 (<= (+ 0 1) 0))))

(declare-fun b!265645 () Bool)

(declare-fun e!165056 () Int)

(declare-fun call!14401 () Int)

(assert (=> b!265645 (= e!165056 call!14401)))

(declare-fun b!265646 () Bool)

(assert (=> b!265646 (= e!165060 Nil!3791)))

(declare-fun b!265647 () Bool)

(declare-fun e!165057 () Int)

(assert (=> b!265647 (= e!165057 0)))

(declare-fun b!265648 () Bool)

(assert (=> b!265648 (= e!165056 e!165057)))

(declare-fun c!50269 () Bool)

(assert (=> b!265648 (= c!50269 (>= (+ 0 1) call!14401))))

(declare-fun b!265649 () Bool)

(assert (=> b!265649 (= e!165058 (drop!211 (t!37443 lt!108370) (- (+ 0 1) 1)))))

(declare-fun bm!14396 () Bool)

(assert (=> bm!14396 (= call!14401 (size!3018 lt!108370))))

(declare-fun b!265650 () Bool)

(assert (=> b!265650 (= e!165057 (- call!14401 (+ 0 1)))))

(declare-fun b!265651 () Bool)

(assert (=> b!265651 (= e!165058 lt!108370)))

(declare-fun d!76519 () Bool)

(declare-fun e!165059 () Bool)

(assert (=> d!76519 e!165059))

(declare-fun res!121806 () Bool)

(assert (=> d!76519 (=> (not res!121806) (not e!165059))))

(declare-fun lt!108725 () List!3801)

(assert (=> d!76519 (= res!121806 (= ((_ map implies) (content!540 lt!108725) (content!540 lt!108370)) ((as const (InoxSet Token!1190)) true)))))

(assert (=> d!76519 (= lt!108725 e!165060)))

(declare-fun c!50270 () Bool)

(assert (=> d!76519 (= c!50270 ((_ is Nil!3791) lt!108370))))

(assert (=> d!76519 (= (drop!211 lt!108370 (+ 0 1)) lt!108725)))

(declare-fun b!265652 () Bool)

(assert (=> b!265652 (= e!165059 (= (size!3018 lt!108725) e!165056))))

(declare-fun c!50272 () Bool)

(assert (=> b!265652 (= c!50272 (<= (+ 0 1) 0))))

(assert (= (and d!76519 c!50270) b!265646))

(assert (= (and d!76519 (not c!50270)) b!265644))

(assert (= (and b!265644 c!50271) b!265651))

(assert (= (and b!265644 (not c!50271)) b!265649))

(assert (= (and d!76519 res!121806) b!265652))

(assert (= (and b!265652 c!50272) b!265645))

(assert (= (and b!265652 (not c!50272)) b!265648))

(assert (= (and b!265648 c!50269) b!265647))

(assert (= (and b!265648 (not c!50269)) b!265650))

(assert (= (or b!265645 b!265648 b!265650) bm!14396))

(declare-fun m!332209 () Bool)

(assert (=> b!265649 m!332209))

(declare-fun m!332211 () Bool)

(assert (=> bm!14396 m!332211))

(declare-fun m!332213 () Bool)

(assert (=> d!76519 m!332213))

(declare-fun m!332215 () Bool)

(assert (=> d!76519 m!332215))

(declare-fun m!332217 () Bool)

(assert (=> b!265652 m!332217))

(assert (=> b!265049 d!76519))

(declare-fun d!76521 () Bool)

(assert (=> d!76521 (= (head!882 (drop!211 lt!108371 0)) (apply!750 lt!108371 0))))

(declare-fun lt!108726 () Unit!4760)

(assert (=> d!76521 (= lt!108726 (choose!2428 lt!108371 0))))

(declare-fun e!165061 () Bool)

(assert (=> d!76521 e!165061))

(declare-fun res!121807 () Bool)

(assert (=> d!76521 (=> (not res!121807) (not e!165061))))

(assert (=> d!76521 (= res!121807 (>= 0 0))))

(assert (=> d!76521 (= (lemmaDropApply!198 lt!108371 0) lt!108726)))

(declare-fun b!265653 () Bool)

(assert (=> b!265653 (= e!165061 (< 0 (size!3018 lt!108371)))))

(assert (= (and d!76521 res!121807) b!265653))

(assert (=> d!76521 m!330877))

(assert (=> d!76521 m!330877))

(assert (=> d!76521 m!330881))

(assert (=> d!76521 m!330889))

(declare-fun m!332219 () Bool)

(assert (=> d!76521 m!332219))

(assert (=> b!265653 m!332201))

(assert (=> b!265049 d!76521))

(declare-fun b!265654 () Bool)

(declare-fun e!165066 () List!3801)

(declare-fun e!165064 () List!3801)

(assert (=> b!265654 (= e!165066 e!165064)))

(declare-fun c!50275 () Bool)

(assert (=> b!265654 (= c!50275 (<= 0 0))))

(declare-fun b!265655 () Bool)

(declare-fun e!165062 () Int)

(declare-fun call!14402 () Int)

(assert (=> b!265655 (= e!165062 call!14402)))

(declare-fun b!265656 () Bool)

(assert (=> b!265656 (= e!165066 Nil!3791)))

(declare-fun b!265657 () Bool)

(declare-fun e!165063 () Int)

(assert (=> b!265657 (= e!165063 0)))

(declare-fun b!265658 () Bool)

(assert (=> b!265658 (= e!165062 e!165063)))

(declare-fun c!50273 () Bool)

(assert (=> b!265658 (= c!50273 (>= 0 call!14402))))

(declare-fun b!265659 () Bool)

(assert (=> b!265659 (= e!165064 (drop!211 (t!37443 lt!108370) (- 0 1)))))

(declare-fun bm!14397 () Bool)

(assert (=> bm!14397 (= call!14402 (size!3018 lt!108370))))

(declare-fun b!265660 () Bool)

(assert (=> b!265660 (= e!165063 (- call!14402 0))))

(declare-fun b!265661 () Bool)

(assert (=> b!265661 (= e!165064 lt!108370)))

(declare-fun d!76523 () Bool)

(declare-fun e!165065 () Bool)

(assert (=> d!76523 e!165065))

(declare-fun res!121808 () Bool)

(assert (=> d!76523 (=> (not res!121808) (not e!165065))))

(declare-fun lt!108727 () List!3801)

(assert (=> d!76523 (= res!121808 (= ((_ map implies) (content!540 lt!108727) (content!540 lt!108370)) ((as const (InoxSet Token!1190)) true)))))

(assert (=> d!76523 (= lt!108727 e!165066)))

(declare-fun c!50274 () Bool)

(assert (=> d!76523 (= c!50274 ((_ is Nil!3791) lt!108370))))

(assert (=> d!76523 (= (drop!211 lt!108370 0) lt!108727)))

(declare-fun b!265662 () Bool)

(assert (=> b!265662 (= e!165065 (= (size!3018 lt!108727) e!165062))))

(declare-fun c!50276 () Bool)

(assert (=> b!265662 (= c!50276 (<= 0 0))))

(assert (= (and d!76523 c!50274) b!265656))

(assert (= (and d!76523 (not c!50274)) b!265654))

(assert (= (and b!265654 c!50275) b!265661))

(assert (= (and b!265654 (not c!50275)) b!265659))

(assert (= (and d!76523 res!121808) b!265662))

(assert (= (and b!265662 c!50276) b!265655))

(assert (= (and b!265662 (not c!50276)) b!265658))

(assert (= (and b!265658 c!50273) b!265657))

(assert (= (and b!265658 (not c!50273)) b!265660))

(assert (= (or b!265655 b!265658 b!265660) bm!14397))

(declare-fun m!332221 () Bool)

(assert (=> b!265659 m!332221))

(assert (=> bm!14397 m!332211))

(declare-fun m!332223 () Bool)

(assert (=> d!76523 m!332223))

(assert (=> d!76523 m!332215))

(declare-fun m!332225 () Bool)

(assert (=> b!265662 m!332225))

(assert (=> b!265049 d!76523))

(declare-fun d!76525 () Bool)

(assert (=> d!76525 (= (tail!472 (drop!211 lt!108370 0)) (drop!211 lt!108370 (+ 0 1)))))

(declare-fun lt!108728 () Unit!4760)

(assert (=> d!76525 (= lt!108728 (choose!2430 lt!108370 0))))

(declare-fun e!165067 () Bool)

(assert (=> d!76525 e!165067))

(declare-fun res!121809 () Bool)

(assert (=> d!76525 (=> (not res!121809) (not e!165067))))

(assert (=> d!76525 (= res!121809 (>= 0 0))))

(assert (=> d!76525 (= (lemmaDropTail!190 lt!108370 0) lt!108728)))

(declare-fun b!265663 () Bool)

(assert (=> b!265663 (= e!165067 (< 0 (size!3018 lt!108370)))))

(assert (= (and d!76525 res!121809) b!265663))

(assert (=> d!76525 m!330883))

(assert (=> d!76525 m!330883))

(assert (=> d!76525 m!330893))

(assert (=> d!76525 m!330891))

(declare-fun m!332227 () Bool)

(assert (=> d!76525 m!332227))

(assert (=> b!265663 m!332211))

(assert (=> b!265049 d!76525))

(declare-fun d!76527 () Bool)

(assert (=> d!76527 (dynLambda!1928 lambda!8935 (apply!749 lt!108115 0))))

(declare-fun lt!108729 () Unit!4760)

(assert (=> d!76527 (= lt!108729 (choose!2429 (list!1538 lt!108115) lambda!8935 (apply!749 lt!108115 0)))))

(declare-fun e!165068 () Bool)

(assert (=> d!76527 e!165068))

(declare-fun res!121810 () Bool)

(assert (=> d!76527 (=> (not res!121810) (not e!165068))))

(assert (=> d!76527 (= res!121810 (forall!939 (list!1538 lt!108115) lambda!8935))))

(assert (=> d!76527 (= (forallContained!280 (list!1538 lt!108115) lambda!8935 (apply!749 lt!108115 0)) lt!108729)))

(declare-fun b!265664 () Bool)

(assert (=> b!265664 (= e!165068 (contains!706 (list!1538 lt!108115) (apply!749 lt!108115 0)))))

(assert (= (and d!76527 res!121810) b!265664))

(declare-fun b_lambda!8293 () Bool)

(assert (=> (not b_lambda!8293) (not d!76527)))

(assert (=> d!76527 m!330865))

(declare-fun m!332229 () Bool)

(assert (=> d!76527 m!332229))

(assert (=> d!76527 m!330749))

(assert (=> d!76527 m!330865))

(declare-fun m!332231 () Bool)

(assert (=> d!76527 m!332231))

(assert (=> d!76527 m!330749))

(declare-fun m!332233 () Bool)

(assert (=> d!76527 m!332233))

(assert (=> b!265664 m!330749))

(assert (=> b!265664 m!330865))

(declare-fun m!332235 () Bool)

(assert (=> b!265664 m!332235))

(assert (=> b!265049 d!76527))

(declare-fun d!76529 () Bool)

(declare-fun lt!108730 () BalanceConc!2544)

(assert (=> d!76529 (= (list!1535 lt!108730) (originalCharacters!766 (apply!749 lt!108115 0)))))

(assert (=> d!76529 (= lt!108730 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (apply!749 lt!108115 0)))) (value!24921 (apply!749 lt!108115 0))))))

(assert (=> d!76529 (= (charsOf!368 (apply!749 lt!108115 0)) lt!108730)))

(declare-fun b_lambda!8295 () Bool)

(assert (=> (not b_lambda!8295) (not d!76529)))

(declare-fun tb!14599 () Bool)

(declare-fun t!37608 () Bool)

(assert (=> (and b!264598 (= (toChars!1309 (transformation!723 (h!9189 rules!1920))) (toChars!1309 (transformation!723 (rule!1308 (apply!749 lt!108115 0))))) t!37608) tb!14599))

(declare-fun b!265665 () Bool)

(declare-fun e!165069 () Bool)

(declare-fun tp!101471 () Bool)

(assert (=> b!265665 (= e!165069 (and (inv!4685 (c!50020 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (apply!749 lt!108115 0)))) (value!24921 (apply!749 lt!108115 0))))) tp!101471))))

(declare-fun result!18154 () Bool)

(assert (=> tb!14599 (= result!18154 (and (inv!4686 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (apply!749 lt!108115 0)))) (value!24921 (apply!749 lt!108115 0)))) e!165069))))

(assert (= tb!14599 b!265665))

(declare-fun m!332237 () Bool)

(assert (=> b!265665 m!332237))

(declare-fun m!332239 () Bool)

(assert (=> tb!14599 m!332239))

(assert (=> d!76529 t!37608))

(declare-fun b_and!20893 () Bool)

(assert (= b_and!20891 (and (=> t!37608 result!18154) b_and!20893)))

(declare-fun t!37610 () Bool)

(declare-fun tb!14601 () Bool)

(assert (=> (and b!264593 (= (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))) (toChars!1309 (transformation!723 (rule!1308 (apply!749 lt!108115 0))))) t!37610) tb!14601))

(declare-fun result!18156 () Bool)

(assert (= result!18156 result!18154))

(assert (=> d!76529 t!37610))

(declare-fun b_and!20895 () Bool)

(assert (= b_and!20883 (and (=> t!37610 result!18156) b_and!20895)))

(declare-fun tb!14603 () Bool)

(declare-fun t!37612 () Bool)

(assert (=> (and b!265124 (= (toChars!1309 (transformation!723 (h!9189 (t!37444 rules!1920)))) (toChars!1309 (transformation!723 (rule!1308 (apply!749 lt!108115 0))))) t!37612) tb!14603))

(declare-fun result!18158 () Bool)

(assert (= result!18158 result!18154))

(assert (=> d!76529 t!37612))

(declare-fun b_and!20897 () Bool)

(assert (= b_and!20887 (and (=> t!37612 result!18158) b_and!20897)))

(declare-fun t!37614 () Bool)

(declare-fun tb!14605 () Bool)

(assert (=> (and b!265105 (= (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 tokens!465))))) (toChars!1309 (transformation!723 (rule!1308 (apply!749 lt!108115 0))))) t!37614) tb!14605))

(declare-fun result!18160 () Bool)

(assert (= result!18160 result!18154))

(assert (=> d!76529 t!37614))

(declare-fun b_and!20899 () Bool)

(assert (= b_and!20885 (and (=> t!37614 result!18160) b_and!20899)))

(declare-fun tb!14607 () Bool)

(declare-fun t!37616 () Bool)

(assert (=> (and b!264597 (= (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))) (toChars!1309 (transformation!723 (rule!1308 (apply!749 lt!108115 0))))) t!37616) tb!14607))

(declare-fun result!18162 () Bool)

(assert (= result!18162 result!18154))

(assert (=> d!76529 t!37616))

(declare-fun b_and!20901 () Bool)

(assert (= b_and!20889 (and (=> t!37616 result!18162) b_and!20901)))

(declare-fun m!332241 () Bool)

(assert (=> d!76529 m!332241))

(declare-fun m!332243 () Bool)

(assert (=> d!76529 m!332243))

(assert (=> b!265049 d!76529))

(declare-fun b!265666 () Bool)

(declare-fun res!121814 () Bool)

(declare-fun e!165070 () Bool)

(assert (=> b!265666 (=> (not res!121814) (not e!165070))))

(assert (=> b!265666 (= res!121814 (isBalanced!343 (++!984 (c!50020 (charsOf!368 (apply!749 lt!108115 0))) (c!50020 lt!108367))))))

(declare-fun b!265668 () Bool)

(declare-fun res!121812 () Bool)

(assert (=> b!265668 (=> (not res!121812) (not e!165070))))

(assert (=> b!265668 (= res!121812 (>= (height!147 (++!984 (c!50020 (charsOf!368 (apply!749 lt!108115 0))) (c!50020 lt!108367))) (max!0 (height!147 (c!50020 (charsOf!368 (apply!749 lt!108115 0)))) (height!147 (c!50020 lt!108367)))))))

(declare-fun d!76531 () Bool)

(assert (=> d!76531 e!165070))

(declare-fun res!121813 () Bool)

(assert (=> d!76531 (=> (not res!121813) (not e!165070))))

(assert (=> d!76531 (= res!121813 (appendAssocInst!59 (c!50020 (charsOf!368 (apply!749 lt!108115 0))) (c!50020 lt!108367)))))

(declare-fun lt!108731 () BalanceConc!2544)

(assert (=> d!76531 (= lt!108731 (BalanceConc!2545 (++!984 (c!50020 (charsOf!368 (apply!749 lt!108115 0))) (c!50020 lt!108367))))))

(assert (=> d!76531 (= (++!982 (charsOf!368 (apply!749 lt!108115 0)) lt!108367) lt!108731)))

(declare-fun b!265669 () Bool)

(assert (=> b!265669 (= e!165070 (= (list!1535 lt!108731) (++!980 (list!1535 (charsOf!368 (apply!749 lt!108115 0))) (list!1535 lt!108367))))))

(declare-fun b!265667 () Bool)

(declare-fun res!121811 () Bool)

(assert (=> b!265667 (=> (not res!121811) (not e!165070))))

(assert (=> b!265667 (= res!121811 (<= (height!147 (++!984 (c!50020 (charsOf!368 (apply!749 lt!108115 0))) (c!50020 lt!108367))) (+ (max!0 (height!147 (c!50020 (charsOf!368 (apply!749 lt!108115 0)))) (height!147 (c!50020 lt!108367))) 1)))))

(assert (= (and d!76531 res!121813) b!265666))

(assert (= (and b!265666 res!121814) b!265667))

(assert (= (and b!265667 res!121811) b!265668))

(assert (= (and b!265668 res!121812) b!265669))

(declare-fun m!332245 () Bool)

(assert (=> b!265667 m!332245))

(assert (=> b!265667 m!332245))

(declare-fun m!332247 () Bool)

(assert (=> b!265667 m!332247))

(declare-fun m!332249 () Bool)

(assert (=> b!265667 m!332249))

(declare-fun m!332251 () Bool)

(assert (=> b!265667 m!332251))

(declare-fun m!332253 () Bool)

(assert (=> b!265667 m!332253))

(assert (=> b!265667 m!332251))

(assert (=> b!265667 m!332247))

(assert (=> b!265666 m!332251))

(assert (=> b!265666 m!332251))

(declare-fun m!332255 () Bool)

(assert (=> b!265666 m!332255))

(declare-fun m!332257 () Bool)

(assert (=> b!265669 m!332257))

(assert (=> b!265669 m!330885))

(declare-fun m!332259 () Bool)

(assert (=> b!265669 m!332259))

(assert (=> b!265669 m!330859))

(assert (=> b!265669 m!332259))

(assert (=> b!265669 m!330859))

(declare-fun m!332261 () Bool)

(assert (=> b!265669 m!332261))

(assert (=> b!265668 m!332245))

(assert (=> b!265668 m!332245))

(assert (=> b!265668 m!332247))

(assert (=> b!265668 m!332249))

(assert (=> b!265668 m!332251))

(assert (=> b!265668 m!332253))

(assert (=> b!265668 m!332251))

(assert (=> b!265668 m!332247))

(declare-fun m!332263 () Bool)

(assert (=> d!76531 m!332263))

(assert (=> d!76531 m!332251))

(assert (=> b!265049 d!76531))

(declare-fun bs!29156 () Bool)

(declare-fun d!76533 () Bool)

(assert (= bs!29156 (and d!76533 b!264939)))

(declare-fun lambda!8966 () Int)

(assert (=> bs!29156 (not (= lambda!8966 lambda!8928))))

(declare-fun bs!29157 () Bool)

(assert (= bs!29157 (and d!76533 b!265057)))

(assert (=> bs!29157 (not (= lambda!8966 lambda!8936))))

(declare-fun bs!29158 () Bool)

(assert (= bs!29158 (and d!76533 b!265283)))

(assert (=> bs!29158 (not (= lambda!8966 lambda!8949))))

(declare-fun bs!29159 () Bool)

(assert (= bs!29159 (and d!76533 b!265370)))

(assert (=> bs!29159 (not (= lambda!8966 lambda!8956))))

(declare-fun bs!29160 () Bool)

(assert (= bs!29160 (and d!76533 b!264588)))

(assert (=> bs!29160 (= lambda!8966 lambda!8902)))

(declare-fun bs!29161 () Bool)

(assert (= bs!29161 (and d!76533 b!265517)))

(assert (=> bs!29161 (not (= lambda!8966 lambda!8961))))

(declare-fun bs!29162 () Bool)

(assert (= bs!29162 (and d!76533 d!76111)))

(assert (=> bs!29162 (not (= lambda!8966 lambda!8933))))

(declare-fun bs!29163 () Bool)

(assert (= bs!29163 (and d!76533 d!76071)))

(assert (=> bs!29163 (= lambda!8966 lambda!8927)))

(declare-fun bs!29164 () Bool)

(assert (= bs!29164 (and d!76533 d!76149)))

(assert (=> bs!29164 (= lambda!8966 lambda!8934)))

(declare-fun bs!29165 () Bool)

(assert (= bs!29165 (and d!76533 d!76439)))

(assert (=> bs!29165 (= lambda!8966 lambda!8960)))

(declare-fun bs!29166 () Bool)

(assert (= bs!29166 (and d!76533 b!264827)))

(assert (=> bs!29166 (not (= lambda!8966 lambda!8919))))

(declare-fun bs!29167 () Bool)

(assert (= bs!29167 (and d!76533 b!265049)))

(assert (=> bs!29167 (not (= lambda!8966 lambda!8935))))

(declare-fun bs!29168 () Bool)

(declare-fun b!265674 () Bool)

(assert (= bs!29168 (and b!265674 b!264939)))

(declare-fun lambda!8967 () Int)

(assert (=> bs!29168 (= lambda!8967 lambda!8928)))

(declare-fun bs!29169 () Bool)

(assert (= bs!29169 (and b!265674 b!265283)))

(assert (=> bs!29169 (= lambda!8967 lambda!8949)))

(declare-fun bs!29170 () Bool)

(assert (= bs!29170 (and b!265674 b!265370)))

(assert (=> bs!29170 (= lambda!8967 lambda!8956)))

(declare-fun bs!29171 () Bool)

(assert (= bs!29171 (and b!265674 b!264588)))

(assert (=> bs!29171 (not (= lambda!8967 lambda!8902))))

(declare-fun bs!29172 () Bool)

(assert (= bs!29172 (and b!265674 b!265517)))

(assert (=> bs!29172 (= lambda!8967 lambda!8961)))

(declare-fun bs!29173 () Bool)

(assert (= bs!29173 (and b!265674 d!76111)))

(assert (=> bs!29173 (= lambda!8967 lambda!8933)))

(declare-fun bs!29174 () Bool)

(assert (= bs!29174 (and b!265674 d!76071)))

(assert (=> bs!29174 (not (= lambda!8967 lambda!8927))))

(declare-fun bs!29175 () Bool)

(assert (= bs!29175 (and b!265674 b!265057)))

(assert (=> bs!29175 (= lambda!8967 lambda!8936)))

(declare-fun bs!29176 () Bool)

(assert (= bs!29176 (and b!265674 d!76533)))

(assert (=> bs!29176 (not (= lambda!8967 lambda!8966))))

(declare-fun bs!29177 () Bool)

(assert (= bs!29177 (and b!265674 d!76149)))

(assert (=> bs!29177 (not (= lambda!8967 lambda!8934))))

(declare-fun bs!29178 () Bool)

(assert (= bs!29178 (and b!265674 d!76439)))

(assert (=> bs!29178 (not (= lambda!8967 lambda!8960))))

(declare-fun bs!29179 () Bool)

(assert (= bs!29179 (and b!265674 b!264827)))

(assert (=> bs!29179 (= lambda!8967 lambda!8919)))

(declare-fun bs!29180 () Bool)

(assert (= bs!29180 (and b!265674 b!265049)))

(assert (=> bs!29180 (= lambda!8967 lambda!8935)))

(declare-fun b!265681 () Bool)

(declare-fun e!165079 () Bool)

(assert (=> b!265681 (= e!165079 true)))

(declare-fun b!265680 () Bool)

(declare-fun e!165078 () Bool)

(assert (=> b!265680 (= e!165078 e!165079)))

(declare-fun b!265679 () Bool)

(declare-fun e!165077 () Bool)

(assert (=> b!265679 (= e!165077 e!165078)))

(assert (=> b!265674 e!165077))

(assert (= b!265680 b!265681))

(assert (= b!265679 b!265680))

(assert (= (and b!265674 ((_ is Cons!3792) rules!1920)) b!265679))

(assert (=> b!265681 (< (dynLambda!1929 order!2893 (toValue!1450 (transformation!723 (h!9189 rules!1920)))) (dynLambda!1930 order!2895 lambda!8967))))

(assert (=> b!265681 (< (dynLambda!1931 order!2897 (toChars!1309 (transformation!723 (h!9189 rules!1920)))) (dynLambda!1930 order!2895 lambda!8967))))

(assert (=> b!265674 true))

(declare-fun b!265670 () Bool)

(declare-fun e!165074 () BalanceConc!2544)

(declare-fun call!14407 () BalanceConc!2544)

(declare-fun lt!108737 () BalanceConc!2544)

(assert (=> b!265670 (= e!165074 (++!982 call!14407 lt!108737))))

(declare-fun b!265671 () Bool)

(declare-fun c!50277 () Bool)

(declare-fun e!165073 () Bool)

(assert (=> b!265671 (= c!50277 e!165073)))

(declare-fun res!121816 () Bool)

(assert (=> b!265671 (=> (not res!121816) (not e!165073))))

(declare-fun lt!108745 () Option!797)

(assert (=> b!265671 (= res!121816 ((_ is Some!796) lt!108745))))

(declare-fun e!165072 () BalanceConc!2544)

(assert (=> b!265671 (= e!165072 e!165074)))

(declare-fun b!265672 () Bool)

(assert (=> b!265672 (= e!165072 call!14407)))

(declare-fun b!265673 () Bool)

(declare-fun call!14404 () Token!1190)

(assert (=> b!265673 (= e!165073 (not (= (_1!2341 (v!14653 lt!108745)) call!14404)))))

(declare-fun call!14403 () BalanceConc!2544)

(declare-fun c!50278 () Bool)

(declare-fun call!14405 () BalanceConc!2544)

(declare-fun bm!14398 () Bool)

(assert (=> bm!14398 (= call!14407 (++!982 call!14405 (ite c!50278 lt!108737 call!14403)))))

(declare-fun lt!108742 () BalanceConc!2544)

(assert (=> d!76533 (= (list!1535 lt!108742) (printWithSeparatorTokenWhenNeededList!292 thiss!17480 rules!1920 (dropList!158 lt!108115 (+ 0 1)) separatorToken!170))))

(declare-fun e!165076 () BalanceConc!2544)

(assert (=> d!76533 (= lt!108742 e!165076)))

(declare-fun c!50279 () Bool)

(assert (=> d!76533 (= c!50279 (>= (+ 0 1) (size!3014 lt!108115)))))

(declare-fun lt!108735 () Unit!4760)

(assert (=> d!76533 (= lt!108735 (lemmaContentSubsetPreservesForall!102 (list!1538 lt!108115) (dropList!158 lt!108115 (+ 0 1)) lambda!8966))))

(declare-fun e!165071 () Bool)

(assert (=> d!76533 e!165071))

(declare-fun res!121817 () Bool)

(assert (=> d!76533 (=> (not res!121817) (not e!165071))))

(assert (=> d!76533 (= res!121817 (>= (+ 0 1) 0))))

(assert (=> d!76533 (= (printWithSeparatorTokenWhenNeededRec!284 thiss!17480 rules!1920 lt!108115 separatorToken!170 (+ 0 1)) lt!108742)))

(assert (=> b!265674 (= e!165076 e!165072)))

(declare-fun lt!108741 () List!3801)

(assert (=> b!265674 (= lt!108741 (list!1538 lt!108115))))

(declare-fun lt!108743 () Unit!4760)

(assert (=> b!265674 (= lt!108743 (lemmaDropApply!198 lt!108741 (+ 0 1)))))

(assert (=> b!265674 (= (head!882 (drop!211 lt!108741 (+ 0 1))) (apply!750 lt!108741 (+ 0 1)))))

(declare-fun lt!108738 () Unit!4760)

(assert (=> b!265674 (= lt!108738 lt!108743)))

(declare-fun lt!108740 () List!3801)

(assert (=> b!265674 (= lt!108740 (list!1538 lt!108115))))

(declare-fun lt!108736 () Unit!4760)

(assert (=> b!265674 (= lt!108736 (lemmaDropTail!190 lt!108740 (+ 0 1)))))

(assert (=> b!265674 (= (tail!472 (drop!211 lt!108740 (+ 0 1))) (drop!211 lt!108740 (+ 0 1 1)))))

(declare-fun lt!108739 () Unit!4760)

(assert (=> b!265674 (= lt!108739 lt!108736)))

(declare-fun lt!108744 () Unit!4760)

(assert (=> b!265674 (= lt!108744 (forallContained!280 (list!1538 lt!108115) lambda!8967 (apply!749 lt!108115 (+ 0 1))))))

(assert (=> b!265674 (= lt!108737 (printWithSeparatorTokenWhenNeededRec!284 thiss!17480 rules!1920 lt!108115 separatorToken!170 (+ 0 1 1)))))

(assert (=> b!265674 (= lt!108745 (maxPrefixZipperSequence!292 thiss!17480 rules!1920 (++!982 (charsOf!368 (apply!749 lt!108115 (+ 0 1))) lt!108737)))))

(declare-fun res!121815 () Bool)

(assert (=> b!265674 (= res!121815 ((_ is Some!796) lt!108745))))

(declare-fun e!165075 () Bool)

(assert (=> b!265674 (=> (not res!121815) (not e!165075))))

(assert (=> b!265674 (= c!50278 e!165075)))

(declare-fun bm!14399 () Bool)

(declare-fun call!14406 () Token!1190)

(assert (=> bm!14399 (= call!14406 call!14404)))

(declare-fun b!265675 () Bool)

(assert (=> b!265675 (= e!165076 (BalanceConc!2545 Empty!1268))))

(declare-fun b!265676 () Bool)

(assert (=> b!265676 (= e!165071 (<= (+ 0 1) (size!3014 lt!108115)))))

(declare-fun b!265677 () Bool)

(assert (=> b!265677 (= e!165075 (= (_1!2341 (v!14653 lt!108745)) (apply!749 lt!108115 (+ 0 1))))))

(declare-fun bm!14400 () Bool)

(assert (=> bm!14400 (= call!14404 (apply!749 lt!108115 (+ 0 1)))))

(declare-fun b!265678 () Bool)

(assert (=> b!265678 (= e!165074 (BalanceConc!2545 Empty!1268))))

(assert (=> b!265678 (= (print!334 thiss!17480 (singletonSeq!269 call!14406)) (printTailRec!297 thiss!17480 (singletonSeq!269 call!14406) 0 (BalanceConc!2545 Empty!1268)))))

(declare-fun lt!108732 () Unit!4760)

(declare-fun Unit!4794 () Unit!4760)

(assert (=> b!265678 (= lt!108732 Unit!4794)))

(declare-fun lt!108733 () Unit!4760)

(assert (=> b!265678 (= lt!108733 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!106 thiss!17480 rules!1920 (list!1535 call!14403) (list!1535 lt!108737)))))

(assert (=> b!265678 false))

(declare-fun lt!108734 () Unit!4760)

(declare-fun Unit!4795 () Unit!4760)

(assert (=> b!265678 (= lt!108734 Unit!4795)))

(declare-fun bm!14401 () Bool)

(assert (=> bm!14401 (= call!14405 (charsOf!368 (ite c!50278 call!14404 call!14406)))))

(declare-fun bm!14402 () Bool)

(assert (=> bm!14402 (= call!14403 (charsOf!368 (ite c!50277 separatorToken!170 call!14406)))))

(assert (= (and d!76533 res!121817) b!265676))

(assert (= (and d!76533 c!50279) b!265675))

(assert (= (and d!76533 (not c!50279)) b!265674))

(assert (= (and b!265674 res!121815) b!265677))

(assert (= (and b!265674 c!50278) b!265672))

(assert (= (and b!265674 (not c!50278)) b!265671))

(assert (= (and b!265671 res!121816) b!265673))

(assert (= (and b!265671 c!50277) b!265670))

(assert (= (and b!265671 (not c!50277)) b!265678))

(assert (= (or b!265670 b!265678) bm!14399))

(assert (= (or b!265670 b!265678) bm!14402))

(assert (= (or b!265672 b!265673 bm!14399) bm!14400))

(assert (= (or b!265672 b!265670) bm!14401))

(assert (= (or b!265672 b!265670) bm!14398))

(declare-fun m!332265 () Bool)

(assert (=> bm!14398 m!332265))

(declare-fun m!332267 () Bool)

(assert (=> bm!14402 m!332267))

(declare-fun m!332269 () Bool)

(assert (=> d!76533 m!332269))

(assert (=> d!76533 m!330749))

(assert (=> d!76533 m!330845))

(declare-fun m!332271 () Bool)

(assert (=> d!76533 m!332271))

(assert (=> d!76533 m!330749))

(assert (=> d!76533 m!332269))

(declare-fun m!332273 () Bool)

(assert (=> d!76533 m!332273))

(assert (=> d!76533 m!332269))

(declare-fun m!332275 () Bool)

(assert (=> d!76533 m!332275))

(assert (=> b!265676 m!330845))

(declare-fun m!332277 () Bool)

(assert (=> b!265678 m!332277))

(declare-fun m!332279 () Bool)

(assert (=> b!265678 m!332279))

(declare-fun m!332281 () Bool)

(assert (=> b!265678 m!332281))

(declare-fun m!332283 () Bool)

(assert (=> b!265678 m!332283))

(declare-fun m!332285 () Bool)

(assert (=> b!265678 m!332285))

(assert (=> b!265678 m!332277))

(declare-fun m!332287 () Bool)

(assert (=> b!265678 m!332287))

(assert (=> b!265678 m!332277))

(assert (=> b!265678 m!332283))

(assert (=> b!265678 m!332281))

(declare-fun m!332289 () Bool)

(assert (=> b!265677 m!332289))

(declare-fun m!332291 () Bool)

(assert (=> b!265670 m!332291))

(assert (=> bm!14400 m!332289))

(declare-fun m!332293 () Bool)

(assert (=> b!265674 m!332293))

(declare-fun m!332295 () Bool)

(assert (=> b!265674 m!332295))

(declare-fun m!332297 () Bool)

(assert (=> b!265674 m!332297))

(declare-fun m!332299 () Bool)

(assert (=> b!265674 m!332299))

(declare-fun m!332301 () Bool)

(assert (=> b!265674 m!332301))

(assert (=> b!265674 m!332289))

(declare-fun m!332303 () Bool)

(assert (=> b!265674 m!332303))

(assert (=> b!265674 m!330749))

(assert (=> b!265674 m!332301))

(declare-fun m!332305 () Bool)

(assert (=> b!265674 m!332305))

(declare-fun m!332307 () Bool)

(assert (=> b!265674 m!332307))

(assert (=> b!265674 m!332289))

(declare-fun m!332309 () Bool)

(assert (=> b!265674 m!332309))

(assert (=> b!265674 m!330749))

(assert (=> b!265674 m!332289))

(declare-fun m!332311 () Bool)

(assert (=> b!265674 m!332311))

(assert (=> b!265674 m!332309))

(assert (=> b!265674 m!332297))

(declare-fun m!332313 () Bool)

(assert (=> b!265674 m!332313))

(declare-fun m!332315 () Bool)

(assert (=> b!265674 m!332315))

(assert (=> b!265674 m!332307))

(declare-fun m!332317 () Bool)

(assert (=> b!265674 m!332317))

(declare-fun m!332319 () Bool)

(assert (=> bm!14401 m!332319))

(assert (=> b!265049 d!76533))

(declare-fun d!76535 () Bool)

(declare-fun lt!108746 () Token!1190)

(assert (=> d!76535 (contains!706 lt!108371 lt!108746)))

(declare-fun e!165081 () Token!1190)

(assert (=> d!76535 (= lt!108746 e!165081)))

(declare-fun c!50280 () Bool)

(assert (=> d!76535 (= c!50280 (= 0 0))))

(declare-fun e!165080 () Bool)

(assert (=> d!76535 e!165080))

(declare-fun res!121818 () Bool)

(assert (=> d!76535 (=> (not res!121818) (not e!165080))))

(assert (=> d!76535 (= res!121818 (<= 0 0))))

(assert (=> d!76535 (= (apply!750 lt!108371 0) lt!108746)))

(declare-fun b!265682 () Bool)

(assert (=> b!265682 (= e!165080 (< 0 (size!3018 lt!108371)))))

(declare-fun b!265683 () Bool)

(assert (=> b!265683 (= e!165081 (head!882 lt!108371))))

(declare-fun b!265684 () Bool)

(assert (=> b!265684 (= e!165081 (apply!750 (tail!472 lt!108371) (- 0 1)))))

(assert (= (and d!76535 res!121818) b!265682))

(assert (= (and d!76535 c!50280) b!265683))

(assert (= (and d!76535 (not c!50280)) b!265684))

(declare-fun m!332321 () Bool)

(assert (=> d!76535 m!332321))

(assert (=> b!265682 m!332201))

(declare-fun m!332323 () Bool)

(assert (=> b!265683 m!332323))

(declare-fun m!332325 () Bool)

(assert (=> b!265684 m!332325))

(assert (=> b!265684 m!332325))

(declare-fun m!332327 () Bool)

(assert (=> b!265684 m!332327))

(assert (=> b!265049 d!76535))

(declare-fun b!265697 () Bool)

(declare-fun res!121832 () Bool)

(declare-fun e!165087 () Bool)

(assert (=> b!265697 (=> (not res!121832) (not e!165087))))

(declare-fun isEmpty!2393 (Conc!1269) Bool)

(assert (=> b!265697 (= res!121832 (not (isEmpty!2393 (left!3117 (c!50022 lt!108361)))))))

(declare-fun d!76537 () Bool)

(declare-fun res!121833 () Bool)

(declare-fun e!165086 () Bool)

(assert (=> d!76537 (=> res!121833 e!165086)))

(assert (=> d!76537 (= res!121833 (not ((_ is Node!1269) (c!50022 lt!108361))))))

(assert (=> d!76537 (= (isBalanced!341 (c!50022 lt!108361)) e!165086)))

(declare-fun b!265698 () Bool)

(declare-fun res!121835 () Bool)

(assert (=> b!265698 (=> (not res!121835) (not e!165087))))

(assert (=> b!265698 (= res!121835 (isBalanced!341 (right!3447 (c!50022 lt!108361))))))

(declare-fun b!265699 () Bool)

(assert (=> b!265699 (= e!165087 (not (isEmpty!2393 (right!3447 (c!50022 lt!108361)))))))

(declare-fun b!265700 () Bool)

(declare-fun res!121836 () Bool)

(assert (=> b!265700 (=> (not res!121836) (not e!165087))))

(declare-fun height!148 (Conc!1269) Int)

(assert (=> b!265700 (= res!121836 (<= (- (height!148 (left!3117 (c!50022 lt!108361))) (height!148 (right!3447 (c!50022 lt!108361)))) 1))))

(declare-fun b!265701 () Bool)

(assert (=> b!265701 (= e!165086 e!165087)))

(declare-fun res!121834 () Bool)

(assert (=> b!265701 (=> (not res!121834) (not e!165087))))

(assert (=> b!265701 (= res!121834 (<= (- 1) (- (height!148 (left!3117 (c!50022 lt!108361))) (height!148 (right!3447 (c!50022 lt!108361))))))))

(declare-fun b!265702 () Bool)

(declare-fun res!121831 () Bool)

(assert (=> b!265702 (=> (not res!121831) (not e!165087))))

(assert (=> b!265702 (= res!121831 (isBalanced!341 (left!3117 (c!50022 lt!108361))))))

(assert (= (and d!76537 (not res!121833)) b!265701))

(assert (= (and b!265701 res!121834) b!265700))

(assert (= (and b!265700 res!121836) b!265702))

(assert (= (and b!265702 res!121831) b!265698))

(assert (= (and b!265698 res!121835) b!265697))

(assert (= (and b!265697 res!121832) b!265699))

(declare-fun m!332329 () Bool)

(assert (=> b!265698 m!332329))

(declare-fun m!332331 () Bool)

(assert (=> b!265700 m!332331))

(declare-fun m!332333 () Bool)

(assert (=> b!265700 m!332333))

(declare-fun m!332335 () Bool)

(assert (=> b!265702 m!332335))

(declare-fun m!332337 () Bool)

(assert (=> b!265699 m!332337))

(declare-fun m!332339 () Bool)

(assert (=> b!265697 m!332339))

(assert (=> b!265701 m!332331))

(assert (=> b!265701 m!332333))

(assert (=> b!265037 d!76537))

(declare-fun d!76539 () Bool)

(declare-fun lt!108747 () Token!1190)

(assert (=> d!76539 (= lt!108747 (apply!750 (list!1538 (_1!2338 lt!108130)) 0))))

(assert (=> d!76539 (= lt!108747 (apply!752 (c!50022 (_1!2338 lt!108130)) 0))))

(declare-fun e!165088 () Bool)

(assert (=> d!76539 e!165088))

(declare-fun res!121837 () Bool)

(assert (=> d!76539 (=> (not res!121837) (not e!165088))))

(assert (=> d!76539 (= res!121837 (<= 0 0))))

(assert (=> d!76539 (= (apply!749 (_1!2338 lt!108130) 0) lt!108747)))

(declare-fun b!265703 () Bool)

(assert (=> b!265703 (= e!165088 (< 0 (size!3014 (_1!2338 lt!108130))))))

(assert (= (and d!76539 res!121837) b!265703))

(declare-fun m!332341 () Bool)

(assert (=> d!76539 m!332341))

(assert (=> d!76539 m!332341))

(declare-fun m!332343 () Bool)

(assert (=> d!76539 m!332343))

(declare-fun m!332345 () Bool)

(assert (=> d!76539 m!332345))

(assert (=> b!265703 m!330171))

(assert (=> b!264633 d!76539))

(declare-fun d!76541 () Bool)

(declare-fun e!165089 () Bool)

(assert (=> d!76541 e!165089))

(declare-fun res!121838 () Bool)

(assert (=> d!76541 (=> (not res!121838) (not e!165089))))

(declare-fun lt!108748 () BalanceConc!2546)

(assert (=> d!76541 (= res!121838 (= (list!1538 lt!108748) (Cons!3791 separatorToken!170 Nil!3791)))))

(assert (=> d!76541 (= lt!108748 (singleton!108 separatorToken!170))))

(assert (=> d!76541 (= (singletonSeq!269 separatorToken!170) lt!108748)))

(declare-fun b!265704 () Bool)

(assert (=> b!265704 (= e!165089 (isBalanced!341 (c!50022 lt!108748)))))

(assert (= (and d!76541 res!121838) b!265704))

(declare-fun m!332347 () Bool)

(assert (=> d!76541 m!332347))

(declare-fun m!332349 () Bool)

(assert (=> d!76541 m!332349))

(declare-fun m!332351 () Bool)

(assert (=> b!265704 m!332351))

(assert (=> d!75995 d!76541))

(declare-fun d!76543 () Bool)

(assert (=> d!76543 (= (list!1538 (_1!2338 (lex!402 thiss!17480 rules!1920 (print!334 thiss!17480 (singletonSeq!269 separatorToken!170))))) (list!1541 (c!50022 (_1!2338 (lex!402 thiss!17480 rules!1920 (print!334 thiss!17480 (singletonSeq!269 separatorToken!170)))))))))

(declare-fun bs!29181 () Bool)

(assert (= bs!29181 d!76543))

(declare-fun m!332353 () Bool)

(assert (=> bs!29181 m!332353))

(assert (=> d!75995 d!76543))

(declare-fun b!265768 () Bool)

(declare-fun e!165132 () Bool)

(declare-fun lt!108799 () tuple2!4244)

(declare-fun isEmpty!2394 (BalanceConc!2546) Bool)

(assert (=> b!265768 (= e!165132 (not (isEmpty!2394 (_1!2338 lt!108799))))))

(declare-fun d!76545 () Bool)

(declare-fun e!165131 () Bool)

(assert (=> d!76545 e!165131))

(declare-fun res!121870 () Bool)

(assert (=> d!76545 (=> (not res!121870) (not e!165131))))

(declare-fun e!165133 () Bool)

(assert (=> d!76545 (= res!121870 e!165133)))

(declare-fun c!50297 () Bool)

(assert (=> d!76545 (= c!50297 (> (size!3014 (_1!2338 lt!108799)) 0))))

(declare-fun lexTailRecV2!170 (LexerInterface!609 List!3802 BalanceConc!2544 BalanceConc!2544 BalanceConc!2544 BalanceConc!2546) tuple2!4244)

(assert (=> d!76545 (= lt!108799 (lexTailRecV2!170 thiss!17480 rules!1920 (print!334 thiss!17480 (singletonSeq!269 separatorToken!170)) (BalanceConc!2545 Empty!1268) (print!334 thiss!17480 (singletonSeq!269 separatorToken!170)) (BalanceConc!2547 Empty!1269)))))

(assert (=> d!76545 (= (lex!402 thiss!17480 rules!1920 (print!334 thiss!17480 (singletonSeq!269 separatorToken!170))) lt!108799)))

(declare-fun b!265769 () Bool)

(declare-fun res!121869 () Bool)

(assert (=> b!265769 (=> (not res!121869) (not e!165131))))

(declare-datatypes ((tuple2!4254 0))(
  ( (tuple2!4255 (_1!2343 List!3801) (_2!2343 List!3799)) )
))
(declare-fun lexList!203 (LexerInterface!609 List!3802 List!3799) tuple2!4254)

(assert (=> b!265769 (= res!121869 (= (list!1538 (_1!2338 lt!108799)) (_1!2343 (lexList!203 thiss!17480 rules!1920 (list!1535 (print!334 thiss!17480 (singletonSeq!269 separatorToken!170)))))))))

(declare-fun b!265770 () Bool)

(assert (=> b!265770 (= e!165131 (= (list!1535 (_2!2338 lt!108799)) (_2!2343 (lexList!203 thiss!17480 rules!1920 (list!1535 (print!334 thiss!17480 (singletonSeq!269 separatorToken!170)))))))))

(declare-fun b!265771 () Bool)

(assert (=> b!265771 (= e!165133 (= (_2!2338 lt!108799) (print!334 thiss!17480 (singletonSeq!269 separatorToken!170))))))

(declare-fun b!265772 () Bool)

(assert (=> b!265772 (= e!165133 e!165132)))

(declare-fun res!121871 () Bool)

(declare-fun size!3021 (BalanceConc!2544) Int)

(assert (=> b!265772 (= res!121871 (< (size!3021 (_2!2338 lt!108799)) (size!3021 (print!334 thiss!17480 (singletonSeq!269 separatorToken!170)))))))

(assert (=> b!265772 (=> (not res!121871) (not e!165132))))

(assert (= (and d!76545 c!50297) b!265772))

(assert (= (and d!76545 (not c!50297)) b!265771))

(assert (= (and b!265772 res!121871) b!265768))

(assert (= (and d!76545 res!121870) b!265769))

(assert (= (and b!265769 res!121869) b!265770))

(declare-fun m!332563 () Bool)

(assert (=> b!265770 m!332563))

(assert (=> b!265770 m!330167))

(declare-fun m!332565 () Bool)

(assert (=> b!265770 m!332565))

(assert (=> b!265770 m!332565))

(declare-fun m!332567 () Bool)

(assert (=> b!265770 m!332567))

(declare-fun m!332569 () Bool)

(assert (=> d!76545 m!332569))

(assert (=> d!76545 m!330167))

(assert (=> d!76545 m!330167))

(declare-fun m!332571 () Bool)

(assert (=> d!76545 m!332571))

(declare-fun m!332573 () Bool)

(assert (=> b!265769 m!332573))

(assert (=> b!265769 m!330167))

(assert (=> b!265769 m!332565))

(assert (=> b!265769 m!332565))

(assert (=> b!265769 m!332567))

(declare-fun m!332575 () Bool)

(assert (=> b!265772 m!332575))

(assert (=> b!265772 m!330167))

(declare-fun m!332577 () Bool)

(assert (=> b!265772 m!332577))

(declare-fun m!332579 () Bool)

(assert (=> b!265768 m!332579))

(assert (=> d!75995 d!76545))

(declare-fun d!76591 () Bool)

(assert (=> d!76591 (= (list!1538 (singletonSeq!269 separatorToken!170)) (list!1541 (c!50022 (singletonSeq!269 separatorToken!170))))))

(declare-fun bs!29202 () Bool)

(assert (= bs!29202 d!76591))

(declare-fun m!332581 () Bool)

(assert (=> bs!29202 m!332581))

(assert (=> d!75995 d!76591))

(declare-fun d!76593 () Bool)

(declare-fun lt!108800 () Int)

(assert (=> d!76593 (= lt!108800 (size!3018 (list!1538 (_1!2338 lt!108130))))))

(assert (=> d!76593 (= lt!108800 (size!3019 (c!50022 (_1!2338 lt!108130))))))

(assert (=> d!76593 (= (size!3014 (_1!2338 lt!108130)) lt!108800)))

(declare-fun bs!29203 () Bool)

(assert (= bs!29203 d!76593))

(assert (=> bs!29203 m!332341))

(assert (=> bs!29203 m!332341))

(declare-fun m!332583 () Bool)

(assert (=> bs!29203 m!332583))

(declare-fun m!332585 () Bool)

(assert (=> bs!29203 m!332585))

(assert (=> d!75995 d!76593))

(declare-fun d!76595 () Bool)

(declare-fun lt!108801 () BalanceConc!2544)

(assert (=> d!76595 (= (list!1535 lt!108801) (printList!285 thiss!17480 (list!1538 (singletonSeq!269 separatorToken!170))))))

(assert (=> d!76595 (= lt!108801 (printTailRec!297 thiss!17480 (singletonSeq!269 separatorToken!170) 0 (BalanceConc!2545 Empty!1268)))))

(assert (=> d!76595 (= (print!334 thiss!17480 (singletonSeq!269 separatorToken!170)) lt!108801)))

(declare-fun bs!29204 () Bool)

(assert (= bs!29204 d!76595))

(declare-fun m!332587 () Bool)

(assert (=> bs!29204 m!332587))

(assert (=> bs!29204 m!330173))

(assert (=> bs!29204 m!330175))

(assert (=> bs!29204 m!330175))

(declare-fun m!332589 () Bool)

(assert (=> bs!29204 m!332589))

(assert (=> bs!29204 m!330173))

(declare-fun m!332591 () Bool)

(assert (=> bs!29204 m!332591))

(assert (=> d!75995 d!76595))

(assert (=> d!75995 d!76141))

(declare-fun d!76597 () Bool)

(declare-fun lt!108802 () BalanceConc!2544)

(assert (=> d!76597 (= (list!1535 lt!108802) (printList!285 thiss!17480 (list!1538 (singletonSeq!269 (h!9188 (t!37443 tokens!465))))))))

(assert (=> d!76597 (= lt!108802 (printTailRec!297 thiss!17480 (singletonSeq!269 (h!9188 (t!37443 tokens!465))) 0 (BalanceConc!2545 Empty!1268)))))

(assert (=> d!76597 (= (print!334 thiss!17480 (singletonSeq!269 (h!9188 (t!37443 tokens!465)))) lt!108802)))

(declare-fun bs!29205 () Bool)

(assert (= bs!29205 d!76597))

(declare-fun m!332593 () Bool)

(assert (=> bs!29205 m!332593))

(assert (=> bs!29205 m!330447))

(declare-fun m!332595 () Bool)

(assert (=> bs!29205 m!332595))

(assert (=> bs!29205 m!332595))

(declare-fun m!332597 () Bool)

(assert (=> bs!29205 m!332597))

(assert (=> bs!29205 m!330447))

(assert (=> bs!29205 m!330451))

(assert (=> b!264831 d!76597))

(declare-fun d!76599 () Bool)

(declare-fun e!165134 () Bool)

(assert (=> d!76599 e!165134))

(declare-fun res!121872 () Bool)

(assert (=> d!76599 (=> (not res!121872) (not e!165134))))

(declare-fun lt!108803 () BalanceConc!2546)

(assert (=> d!76599 (= res!121872 (= (list!1538 lt!108803) (Cons!3791 (h!9188 (t!37443 tokens!465)) Nil!3791)))))

(assert (=> d!76599 (= lt!108803 (singleton!108 (h!9188 (t!37443 tokens!465))))))

(assert (=> d!76599 (= (singletonSeq!269 (h!9188 (t!37443 tokens!465))) lt!108803)))

(declare-fun b!265773 () Bool)

(assert (=> b!265773 (= e!165134 (isBalanced!341 (c!50022 lt!108803)))))

(assert (= (and d!76599 res!121872) b!265773))

(declare-fun m!332599 () Bool)

(assert (=> d!76599 m!332599))

(declare-fun m!332601 () Bool)

(assert (=> d!76599 m!332601))

(declare-fun m!332603 () Bool)

(assert (=> b!265773 m!332603))

(assert (=> b!264831 d!76599))

(declare-fun d!76601 () Bool)

(declare-fun lt!108808 () BalanceConc!2544)

(assert (=> d!76601 (= (list!1535 lt!108808) (printListTailRec!124 thiss!17480 (dropList!158 (singletonSeq!269 (h!9188 (t!37443 tokens!465))) 0) (list!1535 (BalanceConc!2545 Empty!1268))))))

(declare-fun e!165135 () BalanceConc!2544)

(assert (=> d!76601 (= lt!108808 e!165135)))

(declare-fun c!50298 () Bool)

(assert (=> d!76601 (= c!50298 (>= 0 (size!3014 (singletonSeq!269 (h!9188 (t!37443 tokens!465))))))))

(declare-fun e!165136 () Bool)

(assert (=> d!76601 e!165136))

(declare-fun res!121873 () Bool)

(assert (=> d!76601 (=> (not res!121873) (not e!165136))))

(assert (=> d!76601 (= res!121873 (>= 0 0))))

(assert (=> d!76601 (= (printTailRec!297 thiss!17480 (singletonSeq!269 (h!9188 (t!37443 tokens!465))) 0 (BalanceConc!2545 Empty!1268)) lt!108808)))

(declare-fun b!265774 () Bool)

(assert (=> b!265774 (= e!165136 (<= 0 (size!3014 (singletonSeq!269 (h!9188 (t!37443 tokens!465))))))))

(declare-fun b!265775 () Bool)

(assert (=> b!265775 (= e!165135 (BalanceConc!2545 Empty!1268))))

(declare-fun b!265776 () Bool)

(assert (=> b!265776 (= e!165135 (printTailRec!297 thiss!17480 (singletonSeq!269 (h!9188 (t!37443 tokens!465))) (+ 0 1) (++!982 (BalanceConc!2545 Empty!1268) (charsOf!368 (apply!749 (singletonSeq!269 (h!9188 (t!37443 tokens!465))) 0)))))))

(declare-fun lt!108806 () List!3801)

(assert (=> b!265776 (= lt!108806 (list!1538 (singletonSeq!269 (h!9188 (t!37443 tokens!465)))))))

(declare-fun lt!108809 () Unit!4760)

(assert (=> b!265776 (= lt!108809 (lemmaDropApply!198 lt!108806 0))))

(assert (=> b!265776 (= (head!882 (drop!211 lt!108806 0)) (apply!750 lt!108806 0))))

(declare-fun lt!108805 () Unit!4760)

(assert (=> b!265776 (= lt!108805 lt!108809)))

(declare-fun lt!108810 () List!3801)

(assert (=> b!265776 (= lt!108810 (list!1538 (singletonSeq!269 (h!9188 (t!37443 tokens!465)))))))

(declare-fun lt!108804 () Unit!4760)

(assert (=> b!265776 (= lt!108804 (lemmaDropTail!190 lt!108810 0))))

(assert (=> b!265776 (= (tail!472 (drop!211 lt!108810 0)) (drop!211 lt!108810 (+ 0 1)))))

(declare-fun lt!108807 () Unit!4760)

(assert (=> b!265776 (= lt!108807 lt!108804)))

(assert (= (and d!76601 res!121873) b!265774))

(assert (= (and d!76601 c!50298) b!265775))

(assert (= (and d!76601 (not c!50298)) b!265776))

(declare-fun m!332605 () Bool)

(assert (=> d!76601 m!332605))

(assert (=> d!76601 m!330783))

(declare-fun m!332607 () Bool)

(assert (=> d!76601 m!332607))

(assert (=> d!76601 m!330447))

(assert (=> d!76601 m!332605))

(assert (=> d!76601 m!330447))

(declare-fun m!332609 () Bool)

(assert (=> d!76601 m!332609))

(declare-fun m!332611 () Bool)

(assert (=> d!76601 m!332611))

(assert (=> d!76601 m!330783))

(assert (=> b!265774 m!330447))

(assert (=> b!265774 m!332609))

(declare-fun m!332613 () Bool)

(assert (=> b!265776 m!332613))

(declare-fun m!332615 () Bool)

(assert (=> b!265776 m!332615))

(declare-fun m!332617 () Bool)

(assert (=> b!265776 m!332617))

(declare-fun m!332619 () Bool)

(assert (=> b!265776 m!332619))

(declare-fun m!332621 () Bool)

(assert (=> b!265776 m!332621))

(declare-fun m!332623 () Bool)

(assert (=> b!265776 m!332623))

(assert (=> b!265776 m!330447))

(assert (=> b!265776 m!332595))

(declare-fun m!332625 () Bool)

(assert (=> b!265776 m!332625))

(declare-fun m!332627 () Bool)

(assert (=> b!265776 m!332627))

(assert (=> b!265776 m!332625))

(declare-fun m!332629 () Bool)

(assert (=> b!265776 m!332629))

(assert (=> b!265776 m!332613))

(assert (=> b!265776 m!330447))

(declare-fun m!332631 () Bool)

(assert (=> b!265776 m!332631))

(declare-fun m!332633 () Bool)

(assert (=> b!265776 m!332633))

(assert (=> b!265776 m!332621))

(assert (=> b!265776 m!332631))

(assert (=> b!265776 m!330447))

(assert (=> b!265776 m!332619))

(declare-fun m!332635 () Bool)

(assert (=> b!265776 m!332635))

(assert (=> b!264831 d!76601))

(declare-fun b!265779 () Bool)

(declare-fun e!165137 () Unit!4760)

(declare-fun Unit!4798 () Unit!4760)

(assert (=> b!265779 (= e!165137 Unit!4798)))

(declare-fun lt!108812 () List!3799)

(assert (=> b!265779 (= lt!108812 (++!980 call!14327 lt!108228))))

(declare-fun lt!108824 () Unit!4760)

(declare-fun lt!108823 () Token!1190)

(assert (=> b!265779 (= lt!108824 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!51 thiss!17480 (rule!1308 lt!108823) rules!1920 lt!108812))))

(assert (=> b!265779 (isEmpty!2387 (maxPrefixOneRule!136 thiss!17480 (rule!1308 lt!108823) lt!108812))))

(declare-fun lt!108826 () Unit!4760)

(assert (=> b!265779 (= lt!108826 lt!108824)))

(declare-fun lt!108817 () List!3799)

(assert (=> b!265779 (= lt!108817 (list!1535 (charsOf!368 lt!108823)))))

(declare-fun lt!108816 () Unit!4760)

(assert (=> b!265779 (= lt!108816 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!51 thiss!17480 (rule!1308 lt!108823) lt!108817 (++!980 call!14327 lt!108228)))))

(assert (=> b!265779 (not (matchR!270 (regex!723 (rule!1308 lt!108823)) lt!108817))))

(declare-fun lt!108813 () Unit!4760)

(assert (=> b!265779 (= lt!108813 lt!108816)))

(assert (=> b!265779 false))

(declare-fun d!76603 () Bool)

(assert (=> d!76603 (isDefined!637 (maxPrefix!329 thiss!17480 rules!1920 (++!980 call!14327 lt!108228)))))

(declare-fun lt!108820 () Unit!4760)

(assert (=> d!76603 (= lt!108820 e!165137)))

(declare-fun c!50299 () Bool)

(assert (=> d!76603 (= c!50299 (isEmpty!2387 (maxPrefix!329 thiss!17480 rules!1920 (++!980 call!14327 lt!108228))))))

(declare-fun lt!108827 () Unit!4760)

(declare-fun lt!108814 () Unit!4760)

(assert (=> d!76603 (= lt!108827 lt!108814)))

(declare-fun e!165138 () Bool)

(assert (=> d!76603 e!165138))

(declare-fun res!121875 () Bool)

(assert (=> d!76603 (=> (not res!121875) (not e!165138))))

(assert (=> d!76603 (= res!121875 (isDefined!638 (getRuleFromTag!119 thiss!17480 rules!1920 (tag!933 (rule!1308 lt!108823)))))))

(assert (=> d!76603 (= lt!108814 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!119 thiss!17480 rules!1920 call!14327 lt!108823))))

(declare-fun lt!108821 () Unit!4760)

(declare-fun lt!108811 () Unit!4760)

(assert (=> d!76603 (= lt!108821 lt!108811)))

(declare-fun lt!108822 () List!3799)

(assert (=> d!76603 (isPrefix!392 lt!108822 (++!980 call!14327 lt!108228))))

(assert (=> d!76603 (= lt!108811 (lemmaPrefixStaysPrefixWhenAddingToSuffix!51 lt!108822 call!14327 lt!108228))))

(assert (=> d!76603 (= lt!108822 (list!1535 (charsOf!368 lt!108823)))))

(declare-fun lt!108818 () Unit!4760)

(declare-fun lt!108825 () Unit!4760)

(assert (=> d!76603 (= lt!108818 lt!108825)))

(declare-fun lt!108819 () List!3799)

(declare-fun lt!108815 () List!3799)

(assert (=> d!76603 (isPrefix!392 lt!108819 (++!980 lt!108819 lt!108815))))

(assert (=> d!76603 (= lt!108825 (lemmaConcatTwoListThenFirstIsPrefix!287 lt!108819 lt!108815))))

(assert (=> d!76603 (= lt!108815 (_2!2340 (get!1246 (maxPrefix!329 thiss!17480 rules!1920 call!14327))))))

(assert (=> d!76603 (= lt!108819 (list!1535 (charsOf!368 lt!108823)))))

(assert (=> d!76603 (= lt!108823 (head!882 (list!1538 (_1!2338 (lex!402 thiss!17480 rules!1920 (seqFromList!813 call!14327))))))))

(assert (=> d!76603 (not (isEmpty!2382 rules!1920))))

(assert (=> d!76603 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!106 thiss!17480 rules!1920 call!14327 lt!108228) lt!108820)))

(declare-fun b!265778 () Bool)

(assert (=> b!265778 (= e!165138 (= (rule!1308 lt!108823) (get!1247 (getRuleFromTag!119 thiss!17480 rules!1920 (tag!933 (rule!1308 lt!108823))))))))

(declare-fun b!265780 () Bool)

(declare-fun Unit!4799 () Unit!4760)

(assert (=> b!265780 (= e!165137 Unit!4799)))

(declare-fun b!265777 () Bool)

(declare-fun res!121874 () Bool)

(assert (=> b!265777 (=> (not res!121874) (not e!165138))))

(assert (=> b!265777 (= res!121874 (matchR!270 (regex!723 (get!1247 (getRuleFromTag!119 thiss!17480 rules!1920 (tag!933 (rule!1308 lt!108823))))) (list!1535 (charsOf!368 lt!108823))))))

(assert (= (and d!76603 res!121875) b!265777))

(assert (= (and b!265777 res!121874) b!265778))

(assert (= (and d!76603 c!50299) b!265779))

(assert (= (and d!76603 (not c!50299)) b!265780))

(declare-fun m!332637 () Bool)

(assert (=> b!265779 m!332637))

(declare-fun m!332639 () Bool)

(assert (=> b!265779 m!332639))

(declare-fun m!332641 () Bool)

(assert (=> b!265779 m!332641))

(declare-fun m!332643 () Bool)

(assert (=> b!265779 m!332643))

(declare-fun m!332645 () Bool)

(assert (=> b!265779 m!332645))

(declare-fun m!332647 () Bool)

(assert (=> b!265779 m!332647))

(declare-fun m!332649 () Bool)

(assert (=> b!265779 m!332649))

(assert (=> b!265779 m!332639))

(declare-fun m!332651 () Bool)

(assert (=> b!265779 m!332651))

(assert (=> b!265779 m!332647))

(assert (=> b!265779 m!332643))

(declare-fun m!332653 () Bool)

(assert (=> d!76603 m!332653))

(declare-fun m!332655 () Bool)

(assert (=> d!76603 m!332655))

(declare-fun m!332657 () Bool)

(assert (=> d!76603 m!332657))

(declare-fun m!332659 () Bool)

(assert (=> d!76603 m!332659))

(declare-fun m!332661 () Bool)

(assert (=> d!76603 m!332661))

(declare-fun m!332663 () Bool)

(assert (=> d!76603 m!332663))

(assert (=> d!76603 m!332639))

(assert (=> d!76603 m!332657))

(declare-fun m!332665 () Bool)

(assert (=> d!76603 m!332665))

(declare-fun m!332667 () Bool)

(assert (=> d!76603 m!332667))

(assert (=> d!76603 m!332647))

(assert (=> d!76603 m!332649))

(assert (=> d!76603 m!332639))

(assert (=> d!76603 m!330095))

(assert (=> d!76603 m!332661))

(declare-fun m!332669 () Bool)

(assert (=> d!76603 m!332669))

(declare-fun m!332671 () Bool)

(assert (=> d!76603 m!332671))

(assert (=> d!76603 m!332665))

(declare-fun m!332673 () Bool)

(assert (=> d!76603 m!332673))

(assert (=> d!76603 m!332673))

(declare-fun m!332675 () Bool)

(assert (=> d!76603 m!332675))

(declare-fun m!332677 () Bool)

(assert (=> d!76603 m!332677))

(assert (=> d!76603 m!332639))

(declare-fun m!332679 () Bool)

(assert (=> d!76603 m!332679))

(assert (=> d!76603 m!332657))

(declare-fun m!332681 () Bool)

(assert (=> d!76603 m!332681))

(declare-fun m!332683 () Bool)

(assert (=> d!76603 m!332683))

(assert (=> d!76603 m!332653))

(assert (=> d!76603 m!332677))

(declare-fun m!332685 () Bool)

(assert (=> d!76603 m!332685))

(assert (=> d!76603 m!332647))

(assert (=> b!265778 m!332673))

(assert (=> b!265778 m!332673))

(declare-fun m!332687 () Bool)

(assert (=> b!265778 m!332687))

(assert (=> b!265777 m!332649))

(declare-fun m!332689 () Bool)

(assert (=> b!265777 m!332689))

(assert (=> b!265777 m!332647))

(assert (=> b!265777 m!332649))

(assert (=> b!265777 m!332673))

(assert (=> b!265777 m!332687))

(assert (=> b!265777 m!332647))

(assert (=> b!265777 m!332673))

(assert (=> b!264831 d!76603))

(declare-fun d!76605 () Bool)

(assert (=> d!76605 true))

(declare-fun lt!108830 () Bool)

(assert (=> d!76605 (= lt!108830 (rulesValidInductive!198 thiss!17480 rules!1920))))

(declare-fun lambda!8971 () Int)

(declare-fun forall!945 (List!3802 Int) Bool)

(assert (=> d!76605 (= lt!108830 (forall!945 rules!1920 lambda!8971))))

(assert (=> d!76605 (= (rulesValid!219 thiss!17480 rules!1920) lt!108830)))

(declare-fun bs!29206 () Bool)

(assert (= bs!29206 d!76605))

(assert (=> bs!29206 m!331981))

(declare-fun m!332691 () Bool)

(assert (=> bs!29206 m!332691))

(assert (=> d!76005 d!76605))

(declare-fun d!76607 () Bool)

(assert (=> d!76607 (= (list!1535 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))) (value!24921 separatorToken!170))) (list!1539 (c!50020 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))) (value!24921 separatorToken!170)))))))

(declare-fun bs!29207 () Bool)

(assert (= bs!29207 d!76607))

(declare-fun m!332693 () Bool)

(assert (=> bs!29207 m!332693))

(assert (=> b!264646 d!76607))

(declare-fun d!76609 () Bool)

(declare-fun c!50300 () Bool)

(assert (=> d!76609 (= c!50300 ((_ is Nil!3789) lt!108137))))

(declare-fun e!165139 () (InoxSet C!2816))

(assert (=> d!76609 (= (content!539 lt!108137) e!165139)))

(declare-fun b!265783 () Bool)

(assert (=> b!265783 (= e!165139 ((as const (Array C!2816 Bool)) false))))

(declare-fun b!265784 () Bool)

(assert (=> b!265784 (= e!165139 ((_ map or) (store ((as const (Array C!2816 Bool)) false) (h!9186 lt!108137) true) (content!539 (t!37441 lt!108137))))))

(assert (= (and d!76609 c!50300) b!265783))

(assert (= (and d!76609 (not c!50300)) b!265784))

(declare-fun m!332695 () Bool)

(assert (=> b!265784 m!332695))

(declare-fun m!332697 () Bool)

(assert (=> b!265784 m!332697))

(assert (=> d!76017 d!76609))

(declare-fun d!76611 () Bool)

(declare-fun c!50301 () Bool)

(assert (=> d!76611 (= c!50301 ((_ is Nil!3789) lt!108119))))

(declare-fun e!165140 () (InoxSet C!2816))

(assert (=> d!76611 (= (content!539 lt!108119) e!165140)))

(declare-fun b!265785 () Bool)

(assert (=> b!265785 (= e!165140 ((as const (Array C!2816 Bool)) false))))

(declare-fun b!265786 () Bool)

(assert (=> b!265786 (= e!165140 ((_ map or) (store ((as const (Array C!2816 Bool)) false) (h!9186 lt!108119) true) (content!539 (t!37441 lt!108119))))))

(assert (= (and d!76611 c!50301) b!265785))

(assert (= (and d!76611 (not c!50301)) b!265786))

(declare-fun m!332699 () Bool)

(assert (=> b!265786 m!332699))

(declare-fun m!332701 () Bool)

(assert (=> b!265786 m!332701))

(assert (=> d!76017 d!76611))

(assert (=> d!76017 d!76499))

(declare-fun d!76613 () Bool)

(declare-fun c!50302 () Bool)

(assert (=> d!76613 (= c!50302 ((_ is Nil!3789) lt!108331))))

(declare-fun e!165141 () (InoxSet C!2816))

(assert (=> d!76613 (= (content!539 lt!108331) e!165141)))

(declare-fun b!265787 () Bool)

(assert (=> b!265787 (= e!165141 ((as const (Array C!2816 Bool)) false))))

(declare-fun b!265788 () Bool)

(assert (=> b!265788 (= e!165141 ((_ map or) (store ((as const (Array C!2816 Bool)) false) (h!9186 lt!108331) true) (content!539 (t!37441 lt!108331))))))

(assert (= (and d!76613 c!50302) b!265787))

(assert (= (and d!76613 (not c!50302)) b!265788))

(declare-fun m!332703 () Bool)

(assert (=> b!265788 m!332703))

(declare-fun m!332705 () Bool)

(assert (=> b!265788 m!332705))

(assert (=> d!76107 d!76613))

(declare-fun d!76615 () Bool)

(declare-fun c!50303 () Bool)

(assert (=> d!76615 (= c!50303 ((_ is Nil!3789) lt!108117))))

(declare-fun e!165142 () (InoxSet C!2816))

(assert (=> d!76615 (= (content!539 lt!108117) e!165142)))

(declare-fun b!265789 () Bool)

(assert (=> b!265789 (= e!165142 ((as const (Array C!2816 Bool)) false))))

(declare-fun b!265790 () Bool)

(assert (=> b!265790 (= e!165142 ((_ map or) (store ((as const (Array C!2816 Bool)) false) (h!9186 lt!108117) true) (content!539 (t!37441 lt!108117))))))

(assert (= (and d!76615 c!50303) b!265789))

(assert (= (and d!76615 (not c!50303)) b!265790))

(declare-fun m!332707 () Bool)

(assert (=> b!265790 m!332707))

(declare-fun m!332709 () Bool)

(assert (=> b!265790 m!332709))

(assert (=> d!76107 d!76615))

(declare-fun d!76617 () Bool)

(declare-fun c!50304 () Bool)

(assert (=> d!76617 (= c!50304 ((_ is Nil!3789) lt!108118))))

(declare-fun e!165143 () (InoxSet C!2816))

(assert (=> d!76617 (= (content!539 lt!108118) e!165143)))

(declare-fun b!265791 () Bool)

(assert (=> b!265791 (= e!165143 ((as const (Array C!2816 Bool)) false))))

(declare-fun b!265792 () Bool)

(assert (=> b!265792 (= e!165143 ((_ map or) (store ((as const (Array C!2816 Bool)) false) (h!9186 lt!108118) true) (content!539 (t!37441 lt!108118))))))

(assert (= (and d!76617 c!50304) b!265791))

(assert (= (and d!76617 (not c!50304)) b!265792))

(declare-fun m!332711 () Bool)

(assert (=> b!265792 m!332711))

(declare-fun m!332713 () Bool)

(assert (=> b!265792 m!332713))

(assert (=> d!76107 d!76617))

(assert (=> b!265052 d!76347))

(declare-fun d!76619 () Bool)

(declare-fun c!50305 () Bool)

(assert (=> d!76619 (= c!50305 ((_ is Nil!3789) lt!108382))))

(declare-fun e!165144 () (InoxSet C!2816))

(assert (=> d!76619 (= (content!539 lt!108382) e!165144)))

(declare-fun b!265793 () Bool)

(assert (=> b!265793 (= e!165144 ((as const (Array C!2816 Bool)) false))))

(declare-fun b!265794 () Bool)

(assert (=> b!265794 (= e!165144 ((_ map or) (store ((as const (Array C!2816 Bool)) false) (h!9186 lt!108382) true) (content!539 (t!37441 lt!108382))))))

(assert (= (and d!76619 c!50305) b!265793))

(assert (= (and d!76619 (not c!50305)) b!265794))

(declare-fun m!332715 () Bool)

(assert (=> b!265794 m!332715))

(declare-fun m!332717 () Bool)

(assert (=> b!265794 m!332717))

(assert (=> d!76153 d!76619))

(assert (=> d!76153 d!76615))

(assert (=> d!76153 d!76499))

(declare-fun b!265795 () Bool)

(declare-fun res!121879 () Bool)

(declare-fun e!165145 () Bool)

(assert (=> b!265795 (=> (not res!121879) (not e!165145))))

(assert (=> b!265795 (= res!121879 (isBalanced!343 (++!984 (c!50020 call!14354) (c!50020 lt!108314))))))

(declare-fun b!265797 () Bool)

(declare-fun res!121877 () Bool)

(assert (=> b!265797 (=> (not res!121877) (not e!165145))))

(assert (=> b!265797 (= res!121877 (>= (height!147 (++!984 (c!50020 call!14354) (c!50020 lt!108314))) (max!0 (height!147 (c!50020 call!14354)) (height!147 (c!50020 lt!108314)))))))

(declare-fun d!76621 () Bool)

(assert (=> d!76621 e!165145))

(declare-fun res!121878 () Bool)

(assert (=> d!76621 (=> (not res!121878) (not e!165145))))

(assert (=> d!76621 (= res!121878 (appendAssocInst!59 (c!50020 call!14354) (c!50020 lt!108314)))))

(declare-fun lt!108831 () BalanceConc!2544)

(assert (=> d!76621 (= lt!108831 (BalanceConc!2545 (++!984 (c!50020 call!14354) (c!50020 lt!108314))))))

(assert (=> d!76621 (= (++!982 call!14354 lt!108314) lt!108831)))

(declare-fun b!265798 () Bool)

(assert (=> b!265798 (= e!165145 (= (list!1535 lt!108831) (++!980 (list!1535 call!14354) (list!1535 lt!108314))))))

(declare-fun b!265796 () Bool)

(declare-fun res!121876 () Bool)

(assert (=> b!265796 (=> (not res!121876) (not e!165145))))

(assert (=> b!265796 (= res!121876 (<= (height!147 (++!984 (c!50020 call!14354) (c!50020 lt!108314))) (+ (max!0 (height!147 (c!50020 call!14354)) (height!147 (c!50020 lt!108314))) 1)))))

(assert (= (and d!76621 res!121878) b!265795))

(assert (= (and b!265795 res!121879) b!265796))

(assert (= (and b!265796 res!121876) b!265797))

(assert (= (and b!265797 res!121877) b!265798))

(declare-fun m!332719 () Bool)

(assert (=> b!265796 m!332719))

(assert (=> b!265796 m!332719))

(assert (=> b!265796 m!331867))

(declare-fun m!332721 () Bool)

(assert (=> b!265796 m!332721))

(declare-fun m!332723 () Bool)

(assert (=> b!265796 m!332723))

(declare-fun m!332725 () Bool)

(assert (=> b!265796 m!332725))

(assert (=> b!265796 m!332723))

(assert (=> b!265796 m!331867))

(assert (=> b!265795 m!332723))

(assert (=> b!265795 m!332723))

(declare-fun m!332727 () Bool)

(assert (=> b!265795 m!332727))

(declare-fun m!332729 () Bool)

(assert (=> b!265798 m!332729))

(declare-fun m!332731 () Bool)

(assert (=> b!265798 m!332731))

(assert (=> b!265798 m!330661))

(assert (=> b!265798 m!332731))

(assert (=> b!265798 m!330661))

(declare-fun m!332733 () Bool)

(assert (=> b!265798 m!332733))

(assert (=> b!265797 m!332719))

(assert (=> b!265797 m!332719))

(assert (=> b!265797 m!331867))

(assert (=> b!265797 m!332721))

(assert (=> b!265797 m!332723))

(assert (=> b!265797 m!332725))

(assert (=> b!265797 m!332723))

(assert (=> b!265797 m!331867))

(declare-fun m!332735 () Bool)

(assert (=> d!76621 m!332735))

(assert (=> d!76621 m!332723))

(assert (=> b!264935 d!76621))

(declare-fun d!76623 () Bool)

(assert (=> d!76623 (= (isEmpty!2385 (originalCharacters!766 separatorToken!170)) ((_ is Nil!3789) (originalCharacters!766 separatorToken!170)))))

(assert (=> d!75999 d!76623))

(declare-fun d!76625 () Bool)

(declare-fun lt!108832 () Int)

(assert (=> d!76625 (>= lt!108832 0)))

(declare-fun e!165146 () Int)

(assert (=> d!76625 (= lt!108832 e!165146)))

(declare-fun c!50306 () Bool)

(assert (=> d!76625 (= c!50306 ((_ is Nil!3789) lt!108136))))

(assert (=> d!76625 (= (size!3015 lt!108136) lt!108832)))

(declare-fun b!265799 () Bool)

(assert (=> b!265799 (= e!165146 0)))

(declare-fun b!265800 () Bool)

(assert (=> b!265800 (= e!165146 (+ 1 (size!3015 (t!37441 lt!108136))))))

(assert (= (and d!76625 c!50306) b!265799))

(assert (= (and d!76625 (not c!50306)) b!265800))

(declare-fun m!332737 () Bool)

(assert (=> b!265800 m!332737))

(assert (=> b!264687 d!76625))

(declare-fun d!76627 () Bool)

(declare-fun lt!108833 () Int)

(assert (=> d!76627 (>= lt!108833 0)))

(declare-fun e!165147 () Int)

(assert (=> d!76627 (= lt!108833 e!165147)))

(declare-fun c!50307 () Bool)

(assert (=> d!76627 (= c!50307 ((_ is Nil!3789) (++!980 lt!108117 lt!108119)))))

(assert (=> d!76627 (= (size!3015 (++!980 lt!108117 lt!108119)) lt!108833)))

(declare-fun b!265801 () Bool)

(assert (=> b!265801 (= e!165147 0)))

(declare-fun b!265802 () Bool)

(assert (=> b!265802 (= e!165147 (+ 1 (size!3015 (t!37441 (++!980 lt!108117 lt!108119)))))))

(assert (= (and d!76627 c!50307) b!265801))

(assert (= (and d!76627 (not c!50307)) b!265802))

(declare-fun m!332739 () Bool)

(assert (=> b!265802 m!332739))

(assert (=> b!264687 d!76627))

(assert (=> b!264687 d!76385))

(declare-fun d!76629 () Bool)

(declare-fun charsToInt!0 (List!3800) (_ BitVec 32))

(assert (=> d!76629 (= (inv!16 (value!24921 (h!9188 tokens!465))) (= (charsToInt!0 (text!5662 (value!24921 (h!9188 tokens!465)))) (value!24912 (value!24921 (h!9188 tokens!465)))))))

(declare-fun bs!29208 () Bool)

(assert (= bs!29208 d!76629))

(declare-fun m!332741 () Bool)

(assert (=> bs!29208 m!332741))

(assert (=> b!264663 d!76629))

(declare-fun d!76631 () Bool)

(declare-fun lt!108862 () List!3799)

(assert (=> d!76631 (= lt!108862 (++!980 (list!1535 (BalanceConc!2545 Empty!1268)) (printList!285 thiss!17480 (dropList!158 lt!108109 0))))))

(declare-fun e!165159 () List!3799)

(assert (=> d!76631 (= lt!108862 e!165159)))

(declare-fun c!50313 () Bool)

(assert (=> d!76631 (= c!50313 ((_ is Cons!3791) (dropList!158 lt!108109 0)))))

(assert (=> d!76631 (= (printListTailRec!124 thiss!17480 (dropList!158 lt!108109 0) (list!1535 (BalanceConc!2545 Empty!1268))) lt!108862)))

(declare-fun b!265834 () Bool)

(assert (=> b!265834 (= e!165159 (printListTailRec!124 thiss!17480 (t!37443 (dropList!158 lt!108109 0)) (++!980 (list!1535 (BalanceConc!2545 Empty!1268)) (list!1535 (charsOf!368 (h!9188 (dropList!158 lt!108109 0)))))))))

(declare-fun lt!108861 () List!3799)

(assert (=> b!265834 (= lt!108861 (list!1535 (charsOf!368 (h!9188 (dropList!158 lt!108109 0)))))))

(declare-fun lt!108863 () List!3799)

(assert (=> b!265834 (= lt!108863 (printList!285 thiss!17480 (t!37443 (dropList!158 lt!108109 0))))))

(declare-fun lt!108860 () Unit!4760)

(assert (=> b!265834 (= lt!108860 (lemmaConcatAssociativity!420 (list!1535 (BalanceConc!2545 Empty!1268)) lt!108861 lt!108863))))

(assert (=> b!265834 (= (++!980 (++!980 (list!1535 (BalanceConc!2545 Empty!1268)) lt!108861) lt!108863) (++!980 (list!1535 (BalanceConc!2545 Empty!1268)) (++!980 lt!108861 lt!108863)))))

(declare-fun lt!108859 () Unit!4760)

(assert (=> b!265834 (= lt!108859 lt!108860)))

(declare-fun b!265835 () Bool)

(assert (=> b!265835 (= e!165159 (list!1535 (BalanceConc!2545 Empty!1268)))))

(assert (= (and d!76631 c!50313) b!265834))

(assert (= (and d!76631 (not c!50313)) b!265835))

(assert (=> d!76631 m!330781))

(declare-fun m!332743 () Bool)

(assert (=> d!76631 m!332743))

(assert (=> d!76631 m!330783))

(assert (=> d!76631 m!332743))

(declare-fun m!332745 () Bool)

(assert (=> d!76631 m!332745))

(declare-fun m!332747 () Bool)

(assert (=> b!265834 m!332747))

(declare-fun m!332749 () Bool)

(assert (=> b!265834 m!332749))

(declare-fun m!332751 () Bool)

(assert (=> b!265834 m!332751))

(declare-fun m!332753 () Bool)

(assert (=> b!265834 m!332753))

(assert (=> b!265834 m!330783))

(assert (=> b!265834 m!332747))

(declare-fun m!332755 () Bool)

(assert (=> b!265834 m!332755))

(assert (=> b!265834 m!330783))

(declare-fun m!332757 () Bool)

(assert (=> b!265834 m!332757))

(declare-fun m!332759 () Bool)

(assert (=> b!265834 m!332759))

(assert (=> b!265834 m!332757))

(declare-fun m!332761 () Bool)

(assert (=> b!265834 m!332761))

(assert (=> b!265834 m!330783))

(declare-fun m!332763 () Bool)

(assert (=> b!265834 m!332763))

(assert (=> b!265834 m!332751))

(assert (=> b!265834 m!332755))

(assert (=> b!265834 m!332763))

(assert (=> b!265834 m!330783))

(declare-fun m!332765 () Bool)

(assert (=> b!265834 m!332765))

(assert (=> d!76131 d!76631))

(declare-fun d!76633 () Bool)

(assert (=> d!76633 (= (list!1535 lt!108356) (list!1539 (c!50020 lt!108356)))))

(declare-fun bs!29209 () Bool)

(assert (= bs!29209 d!76633))

(declare-fun m!332767 () Bool)

(assert (=> bs!29209 m!332767))

(assert (=> d!76131 d!76633))

(declare-fun d!76635 () Bool)

(assert (=> d!76635 (= (list!1535 (BalanceConc!2545 Empty!1268)) (list!1539 (c!50020 (BalanceConc!2545 Empty!1268))))))

(declare-fun bs!29210 () Bool)

(assert (= bs!29210 d!76635))

(declare-fun m!332773 () Bool)

(assert (=> bs!29210 m!332773))

(assert (=> d!76131 d!76635))

(declare-fun d!76637 () Bool)

(assert (=> d!76637 (= (dropList!158 lt!108109 0) (drop!211 (list!1541 (c!50022 lt!108109)) 0))))

(declare-fun bs!29211 () Bool)

(assert (= bs!29211 d!76637))

(declare-fun m!332781 () Bool)

(assert (=> bs!29211 m!332781))

(assert (=> bs!29211 m!332781))

(declare-fun m!332785 () Bool)

(assert (=> bs!29211 m!332785))

(assert (=> d!76131 d!76637))

(assert (=> d!76131 d!76305))

(declare-fun d!76639 () Bool)

(declare-fun lt!108864 () BalanceConc!2544)

(assert (=> d!76639 (= (list!1535 lt!108864) (printList!285 thiss!17480 (list!1538 (singletonSeq!269 (h!9188 tokens!465)))))))

(assert (=> d!76639 (= lt!108864 (printTailRec!297 thiss!17480 (singletonSeq!269 (h!9188 tokens!465)) 0 (BalanceConc!2545 Empty!1268)))))

(assert (=> d!76639 (= (print!334 thiss!17480 (singletonSeq!269 (h!9188 tokens!465))) lt!108864)))

(declare-fun bs!29212 () Bool)

(assert (= bs!29212 d!76639))

(declare-fun m!332789 () Bool)

(assert (=> bs!29212 m!332789))

(assert (=> bs!29212 m!330089))

(declare-fun m!332791 () Bool)

(assert (=> bs!29212 m!332791))

(assert (=> bs!29212 m!332791))

(declare-fun m!332795 () Bool)

(assert (=> bs!29212 m!332795))

(assert (=> bs!29212 m!330089))

(assert (=> bs!29212 m!330907))

(assert (=> b!265061 d!76639))

(assert (=> b!265061 d!76133))

(declare-fun d!76641 () Bool)

(declare-fun lt!108869 () BalanceConc!2544)

(assert (=> d!76641 (= (list!1535 lt!108869) (printListTailRec!124 thiss!17480 (dropList!158 (singletonSeq!269 (h!9188 tokens!465)) 0) (list!1535 (BalanceConc!2545 Empty!1268))))))

(declare-fun e!165160 () BalanceConc!2544)

(assert (=> d!76641 (= lt!108869 e!165160)))

(declare-fun c!50314 () Bool)

(assert (=> d!76641 (= c!50314 (>= 0 (size!3014 (singletonSeq!269 (h!9188 tokens!465)))))))

(declare-fun e!165161 () Bool)

(assert (=> d!76641 e!165161))

(declare-fun res!121901 () Bool)

(assert (=> d!76641 (=> (not res!121901) (not e!165161))))

(assert (=> d!76641 (= res!121901 (>= 0 0))))

(assert (=> d!76641 (= (printTailRec!297 thiss!17480 (singletonSeq!269 (h!9188 tokens!465)) 0 (BalanceConc!2545 Empty!1268)) lt!108869)))

(declare-fun b!265836 () Bool)

(assert (=> b!265836 (= e!165161 (<= 0 (size!3014 (singletonSeq!269 (h!9188 tokens!465)))))))

(declare-fun b!265837 () Bool)

(assert (=> b!265837 (= e!165160 (BalanceConc!2545 Empty!1268))))

(declare-fun b!265838 () Bool)

(assert (=> b!265838 (= e!165160 (printTailRec!297 thiss!17480 (singletonSeq!269 (h!9188 tokens!465)) (+ 0 1) (++!982 (BalanceConc!2545 Empty!1268) (charsOf!368 (apply!749 (singletonSeq!269 (h!9188 tokens!465)) 0)))))))

(declare-fun lt!108867 () List!3801)

(assert (=> b!265838 (= lt!108867 (list!1538 (singletonSeq!269 (h!9188 tokens!465))))))

(declare-fun lt!108870 () Unit!4760)

(assert (=> b!265838 (= lt!108870 (lemmaDropApply!198 lt!108867 0))))

(assert (=> b!265838 (= (head!882 (drop!211 lt!108867 0)) (apply!750 lt!108867 0))))

(declare-fun lt!108866 () Unit!4760)

(assert (=> b!265838 (= lt!108866 lt!108870)))

(declare-fun lt!108871 () List!3801)

(assert (=> b!265838 (= lt!108871 (list!1538 (singletonSeq!269 (h!9188 tokens!465))))))

(declare-fun lt!108865 () Unit!4760)

(assert (=> b!265838 (= lt!108865 (lemmaDropTail!190 lt!108871 0))))

(assert (=> b!265838 (= (tail!472 (drop!211 lt!108871 0)) (drop!211 lt!108871 (+ 0 1)))))

(declare-fun lt!108868 () Unit!4760)

(assert (=> b!265838 (= lt!108868 lt!108865)))

(assert (= (and d!76641 res!121901) b!265836))

(assert (= (and d!76641 c!50314) b!265837))

(assert (= (and d!76641 (not c!50314)) b!265838))

(declare-fun m!332813 () Bool)

(assert (=> d!76641 m!332813))

(assert (=> d!76641 m!330783))

(declare-fun m!332815 () Bool)

(assert (=> d!76641 m!332815))

(assert (=> d!76641 m!330089))

(assert (=> d!76641 m!332813))

(assert (=> d!76641 m!330089))

(declare-fun m!332817 () Bool)

(assert (=> d!76641 m!332817))

(declare-fun m!332819 () Bool)

(assert (=> d!76641 m!332819))

(assert (=> d!76641 m!330783))

(assert (=> b!265836 m!330089))

(assert (=> b!265836 m!332817))

(declare-fun m!332823 () Bool)

(assert (=> b!265838 m!332823))

(declare-fun m!332825 () Bool)

(assert (=> b!265838 m!332825))

(declare-fun m!332829 () Bool)

(assert (=> b!265838 m!332829))

(declare-fun m!332831 () Bool)

(assert (=> b!265838 m!332831))

(declare-fun m!332835 () Bool)

(assert (=> b!265838 m!332835))

(declare-fun m!332839 () Bool)

(assert (=> b!265838 m!332839))

(assert (=> b!265838 m!330089))

(assert (=> b!265838 m!332791))

(declare-fun m!332843 () Bool)

(assert (=> b!265838 m!332843))

(declare-fun m!332845 () Bool)

(assert (=> b!265838 m!332845))

(assert (=> b!265838 m!332843))

(declare-fun m!332847 () Bool)

(assert (=> b!265838 m!332847))

(assert (=> b!265838 m!332823))

(assert (=> b!265838 m!330089))

(declare-fun m!332849 () Bool)

(assert (=> b!265838 m!332849))

(declare-fun m!332851 () Bool)

(assert (=> b!265838 m!332851))

(assert (=> b!265838 m!332835))

(assert (=> b!265838 m!332849))

(assert (=> b!265838 m!330089))

(assert (=> b!265838 m!332831))

(declare-fun m!332853 () Bool)

(assert (=> b!265838 m!332853))

(assert (=> b!265061 d!76641))

(declare-fun b!265845 () Bool)

(declare-fun e!165164 () Unit!4760)

(declare-fun Unit!4800 () Unit!4760)

(assert (=> b!265845 (= e!165164 Unit!4800)))

(declare-fun lt!108874 () List!3799)

(assert (=> b!265845 (= lt!108874 (++!980 call!14362 lt!108380))))

(declare-fun lt!108885 () Token!1190)

(declare-fun lt!108886 () Unit!4760)

(assert (=> b!265845 (= lt!108886 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!51 thiss!17480 (rule!1308 lt!108885) rules!1920 lt!108874))))

(assert (=> b!265845 (isEmpty!2387 (maxPrefixOneRule!136 thiss!17480 (rule!1308 lt!108885) lt!108874))))

(declare-fun lt!108888 () Unit!4760)

(assert (=> b!265845 (= lt!108888 lt!108886)))

(declare-fun lt!108879 () List!3799)

(assert (=> b!265845 (= lt!108879 (list!1535 (charsOf!368 lt!108885)))))

(declare-fun lt!108878 () Unit!4760)

(assert (=> b!265845 (= lt!108878 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!51 thiss!17480 (rule!1308 lt!108885) lt!108879 (++!980 call!14362 lt!108380)))))

(assert (=> b!265845 (not (matchR!270 (regex!723 (rule!1308 lt!108885)) lt!108879))))

(declare-fun lt!108875 () Unit!4760)

(assert (=> b!265845 (= lt!108875 lt!108878)))

(assert (=> b!265845 false))

(declare-fun d!76647 () Bool)

(assert (=> d!76647 (isDefined!637 (maxPrefix!329 thiss!17480 rules!1920 (++!980 call!14362 lt!108380)))))

(declare-fun lt!108882 () Unit!4760)

(assert (=> d!76647 (= lt!108882 e!165164)))

(declare-fun c!50316 () Bool)

(assert (=> d!76647 (= c!50316 (isEmpty!2387 (maxPrefix!329 thiss!17480 rules!1920 (++!980 call!14362 lt!108380))))))

(declare-fun lt!108889 () Unit!4760)

(declare-fun lt!108876 () Unit!4760)

(assert (=> d!76647 (= lt!108889 lt!108876)))

(declare-fun e!165165 () Bool)

(assert (=> d!76647 e!165165))

(declare-fun res!121905 () Bool)

(assert (=> d!76647 (=> (not res!121905) (not e!165165))))

(assert (=> d!76647 (= res!121905 (isDefined!638 (getRuleFromTag!119 thiss!17480 rules!1920 (tag!933 (rule!1308 lt!108885)))))))

(assert (=> d!76647 (= lt!108876 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!119 thiss!17480 rules!1920 call!14362 lt!108885))))

(declare-fun lt!108883 () Unit!4760)

(declare-fun lt!108873 () Unit!4760)

(assert (=> d!76647 (= lt!108883 lt!108873)))

(declare-fun lt!108884 () List!3799)

(assert (=> d!76647 (isPrefix!392 lt!108884 (++!980 call!14362 lt!108380))))

(assert (=> d!76647 (= lt!108873 (lemmaPrefixStaysPrefixWhenAddingToSuffix!51 lt!108884 call!14362 lt!108380))))

(assert (=> d!76647 (= lt!108884 (list!1535 (charsOf!368 lt!108885)))))

(declare-fun lt!108880 () Unit!4760)

(declare-fun lt!108887 () Unit!4760)

(assert (=> d!76647 (= lt!108880 lt!108887)))

(declare-fun lt!108881 () List!3799)

(declare-fun lt!108877 () List!3799)

(assert (=> d!76647 (isPrefix!392 lt!108881 (++!980 lt!108881 lt!108877))))

(assert (=> d!76647 (= lt!108887 (lemmaConcatTwoListThenFirstIsPrefix!287 lt!108881 lt!108877))))

(assert (=> d!76647 (= lt!108877 (_2!2340 (get!1246 (maxPrefix!329 thiss!17480 rules!1920 call!14362))))))

(assert (=> d!76647 (= lt!108881 (list!1535 (charsOf!368 lt!108885)))))

(assert (=> d!76647 (= lt!108885 (head!882 (list!1538 (_1!2338 (lex!402 thiss!17480 rules!1920 (seqFromList!813 call!14362))))))))

(assert (=> d!76647 (not (isEmpty!2382 rules!1920))))

(assert (=> d!76647 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!106 thiss!17480 rules!1920 call!14362 lt!108380) lt!108882)))

(declare-fun b!265844 () Bool)

(assert (=> b!265844 (= e!165165 (= (rule!1308 lt!108885) (get!1247 (getRuleFromTag!119 thiss!17480 rules!1920 (tag!933 (rule!1308 lt!108885))))))))

(declare-fun b!265846 () Bool)

(declare-fun Unit!4801 () Unit!4760)

(assert (=> b!265846 (= e!165164 Unit!4801)))

(declare-fun b!265843 () Bool)

(declare-fun res!121904 () Bool)

(assert (=> b!265843 (=> (not res!121904) (not e!165165))))

(assert (=> b!265843 (= res!121904 (matchR!270 (regex!723 (get!1247 (getRuleFromTag!119 thiss!17480 rules!1920 (tag!933 (rule!1308 lt!108885))))) (list!1535 (charsOf!368 lt!108885))))))

(assert (= (and d!76647 res!121905) b!265843))

(assert (= (and b!265843 res!121904) b!265844))

(assert (= (and d!76647 c!50316) b!265845))

(assert (= (and d!76647 (not c!50316)) b!265846))

(declare-fun m!332855 () Bool)

(assert (=> b!265845 m!332855))

(declare-fun m!332857 () Bool)

(assert (=> b!265845 m!332857))

(declare-fun m!332859 () Bool)

(assert (=> b!265845 m!332859))

(declare-fun m!332861 () Bool)

(assert (=> b!265845 m!332861))

(declare-fun m!332863 () Bool)

(assert (=> b!265845 m!332863))

(declare-fun m!332865 () Bool)

(assert (=> b!265845 m!332865))

(declare-fun m!332867 () Bool)

(assert (=> b!265845 m!332867))

(assert (=> b!265845 m!332857))

(declare-fun m!332869 () Bool)

(assert (=> b!265845 m!332869))

(assert (=> b!265845 m!332865))

(assert (=> b!265845 m!332861))

(declare-fun m!332871 () Bool)

(assert (=> d!76647 m!332871))

(declare-fun m!332873 () Bool)

(assert (=> d!76647 m!332873))

(declare-fun m!332875 () Bool)

(assert (=> d!76647 m!332875))

(declare-fun m!332877 () Bool)

(assert (=> d!76647 m!332877))

(declare-fun m!332879 () Bool)

(assert (=> d!76647 m!332879))

(declare-fun m!332881 () Bool)

(assert (=> d!76647 m!332881))

(assert (=> d!76647 m!332857))

(assert (=> d!76647 m!332875))

(declare-fun m!332883 () Bool)

(assert (=> d!76647 m!332883))

(declare-fun m!332885 () Bool)

(assert (=> d!76647 m!332885))

(assert (=> d!76647 m!332865))

(assert (=> d!76647 m!332867))

(assert (=> d!76647 m!332857))

(assert (=> d!76647 m!330095))

(assert (=> d!76647 m!332879))

(declare-fun m!332887 () Bool)

(assert (=> d!76647 m!332887))

(declare-fun m!332889 () Bool)

(assert (=> d!76647 m!332889))

(assert (=> d!76647 m!332883))

(declare-fun m!332891 () Bool)

(assert (=> d!76647 m!332891))

(assert (=> d!76647 m!332891))

(declare-fun m!332893 () Bool)

(assert (=> d!76647 m!332893))

(declare-fun m!332895 () Bool)

(assert (=> d!76647 m!332895))

(assert (=> d!76647 m!332857))

(declare-fun m!332897 () Bool)

(assert (=> d!76647 m!332897))

(assert (=> d!76647 m!332875))

(declare-fun m!332899 () Bool)

(assert (=> d!76647 m!332899))

(declare-fun m!332901 () Bool)

(assert (=> d!76647 m!332901))

(assert (=> d!76647 m!332871))

(assert (=> d!76647 m!332895))

(declare-fun m!332903 () Bool)

(assert (=> d!76647 m!332903))

(assert (=> d!76647 m!332865))

(assert (=> b!265844 m!332891))

(assert (=> b!265844 m!332891))

(declare-fun m!332905 () Bool)

(assert (=> b!265844 m!332905))

(assert (=> b!265843 m!332867))

(declare-fun m!332907 () Bool)

(assert (=> b!265843 m!332907))

(assert (=> b!265843 m!332865))

(assert (=> b!265843 m!332867))

(assert (=> b!265843 m!332891))

(assert (=> b!265843 m!332905))

(assert (=> b!265843 m!332865))

(assert (=> b!265843 m!332891))

(assert (=> b!265061 d!76647))

(declare-fun d!76651 () Bool)

(declare-fun charsToBigInt!1 (List!3800) Int)

(assert (=> d!76651 (= (inv!17 (value!24921 (h!9188 tokens!465))) (= (charsToBigInt!1 (text!5663 (value!24921 (h!9188 tokens!465)))) (value!24913 (value!24921 (h!9188 tokens!465)))))))

(declare-fun bs!29213 () Bool)

(assert (= bs!29213 d!76651))

(declare-fun m!332909 () Bool)

(assert (=> bs!29213 m!332909))

(assert (=> b!264667 d!76651))

(declare-fun d!76653 () Bool)

(declare-fun c!50321 () Bool)

(assert (=> d!76653 (= c!50321 ((_ is Node!1268) (c!50020 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))) (value!24921 (h!9188 tokens!465))))))))

(declare-fun e!165177 () Bool)

(assert (=> d!76653 (= (inv!4685 (c!50020 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))) (value!24921 (h!9188 tokens!465))))) e!165177)))

(declare-fun b!265862 () Bool)

(declare-fun inv!4687 (Conc!1268) Bool)

(assert (=> b!265862 (= e!165177 (inv!4687 (c!50020 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))) (value!24921 (h!9188 tokens!465))))))))

(declare-fun b!265863 () Bool)

(declare-fun e!165178 () Bool)

(assert (=> b!265863 (= e!165177 e!165178)))

(declare-fun res!121913 () Bool)

(assert (=> b!265863 (= res!121913 (not ((_ is Leaf!1969) (c!50020 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))) (value!24921 (h!9188 tokens!465)))))))))

(assert (=> b!265863 (=> res!121913 e!165178)))

(declare-fun b!265864 () Bool)

(declare-fun inv!4688 (Conc!1268) Bool)

(assert (=> b!265864 (= e!165178 (inv!4688 (c!50020 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))) (value!24921 (h!9188 tokens!465))))))))

(assert (= (and d!76653 c!50321) b!265862))

(assert (= (and d!76653 (not c!50321)) b!265863))

(assert (= (and b!265863 (not res!121913)) b!265864))

(declare-fun m!332915 () Bool)

(assert (=> b!265862 m!332915))

(declare-fun m!332917 () Bool)

(assert (=> b!265864 m!332917))

(assert (=> b!264994 d!76653))

(declare-fun lt!108895 () BalanceConc!2544)

(declare-fun d!76657 () Bool)

(assert (=> d!76657 (= (list!1535 lt!108895) (originalCharacters!766 (ite c!50117 separatorToken!170 call!14358)))))

(assert (=> d!76657 (= lt!108895 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (ite c!50117 separatorToken!170 call!14358)))) (value!24921 (ite c!50117 separatorToken!170 call!14358))))))

(assert (=> d!76657 (= (charsOf!368 (ite c!50117 separatorToken!170 call!14358)) lt!108895)))

(declare-fun b_lambda!8301 () Bool)

(assert (=> (not b_lambda!8301) (not d!76657)))

(declare-fun tb!14609 () Bool)

(declare-fun t!37620 () Bool)

(assert (=> (and b!264597 (= (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))) (toChars!1309 (transformation!723 (rule!1308 (ite c!50117 separatorToken!170 call!14358))))) t!37620) tb!14609))

(declare-fun tp!101472 () Bool)

(declare-fun b!265868 () Bool)

(declare-fun e!165181 () Bool)

(assert (=> b!265868 (= e!165181 (and (inv!4685 (c!50020 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (ite c!50117 separatorToken!170 call!14358)))) (value!24921 (ite c!50117 separatorToken!170 call!14358))))) tp!101472))))

(declare-fun result!18164 () Bool)

(assert (=> tb!14609 (= result!18164 (and (inv!4686 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (ite c!50117 separatorToken!170 call!14358)))) (value!24921 (ite c!50117 separatorToken!170 call!14358)))) e!165181))))

(assert (= tb!14609 b!265868))

(declare-fun m!332927 () Bool)

(assert (=> b!265868 m!332927))

(declare-fun m!332929 () Bool)

(assert (=> tb!14609 m!332929))

(assert (=> d!76657 t!37620))

(declare-fun b_and!20913 () Bool)

(assert (= b_and!20901 (and (=> t!37620 result!18164) b_and!20913)))

(declare-fun t!37622 () Bool)

(declare-fun tb!14611 () Bool)

(assert (=> (and b!265105 (= (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 tokens!465))))) (toChars!1309 (transformation!723 (rule!1308 (ite c!50117 separatorToken!170 call!14358))))) t!37622) tb!14611))

(declare-fun result!18166 () Bool)

(assert (= result!18166 result!18164))

(assert (=> d!76657 t!37622))

(declare-fun b_and!20915 () Bool)

(assert (= b_and!20899 (and (=> t!37622 result!18166) b_and!20915)))

(declare-fun tb!14613 () Bool)

(declare-fun t!37624 () Bool)

(assert (=> (and b!265124 (= (toChars!1309 (transformation!723 (h!9189 (t!37444 rules!1920)))) (toChars!1309 (transformation!723 (rule!1308 (ite c!50117 separatorToken!170 call!14358))))) t!37624) tb!14613))

(declare-fun result!18168 () Bool)

(assert (= result!18168 result!18164))

(assert (=> d!76657 t!37624))

(declare-fun b_and!20917 () Bool)

(assert (= b_and!20897 (and (=> t!37624 result!18168) b_and!20917)))

(declare-fun tb!14615 () Bool)

(declare-fun t!37626 () Bool)

(assert (=> (and b!264598 (= (toChars!1309 (transformation!723 (h!9189 rules!1920))) (toChars!1309 (transformation!723 (rule!1308 (ite c!50117 separatorToken!170 call!14358))))) t!37626) tb!14615))

(declare-fun result!18170 () Bool)

(assert (= result!18170 result!18164))

(assert (=> d!76657 t!37626))

(declare-fun b_and!20919 () Bool)

(assert (= b_and!20893 (and (=> t!37626 result!18170) b_and!20919)))

(declare-fun t!37628 () Bool)

(declare-fun tb!14617 () Bool)

(assert (=> (and b!264593 (= (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))) (toChars!1309 (transformation!723 (rule!1308 (ite c!50117 separatorToken!170 call!14358))))) t!37628) tb!14617))

(declare-fun result!18172 () Bool)

(assert (= result!18172 result!18164))

(assert (=> d!76657 t!37628))

(declare-fun b_and!20921 () Bool)

(assert (= b_and!20895 (and (=> t!37628 result!18172) b_and!20921)))

(declare-fun m!332931 () Bool)

(assert (=> d!76657 m!332931))

(declare-fun m!332933 () Bool)

(assert (=> d!76657 m!332933))

(assert (=> bm!14354 d!76657))

(declare-fun b!265869 () Bool)

(declare-fun res!121918 () Bool)

(declare-fun e!165182 () Bool)

(assert (=> b!265869 (=> (not res!121918) (not e!165182))))

(assert (=> b!265869 (= res!121918 (isBalanced!343 (++!984 (c!50020 call!14352) (c!50020 (ite c!50105 lt!108314 call!14350)))))))

(declare-fun b!265871 () Bool)

(declare-fun res!121916 () Bool)

(assert (=> b!265871 (=> (not res!121916) (not e!165182))))

(assert (=> b!265871 (= res!121916 (>= (height!147 (++!984 (c!50020 call!14352) (c!50020 (ite c!50105 lt!108314 call!14350)))) (max!0 (height!147 (c!50020 call!14352)) (height!147 (c!50020 (ite c!50105 lt!108314 call!14350))))))))

(declare-fun d!76663 () Bool)

(assert (=> d!76663 e!165182))

(declare-fun res!121917 () Bool)

(assert (=> d!76663 (=> (not res!121917) (not e!165182))))

(assert (=> d!76663 (= res!121917 (appendAssocInst!59 (c!50020 call!14352) (c!50020 (ite c!50105 lt!108314 call!14350))))))

(declare-fun lt!108897 () BalanceConc!2544)

(assert (=> d!76663 (= lt!108897 (BalanceConc!2545 (++!984 (c!50020 call!14352) (c!50020 (ite c!50105 lt!108314 call!14350)))))))

(assert (=> d!76663 (= (++!982 call!14352 (ite c!50105 lt!108314 call!14350)) lt!108897)))

(declare-fun b!265872 () Bool)

(assert (=> b!265872 (= e!165182 (= (list!1535 lt!108897) (++!980 (list!1535 call!14352) (list!1535 (ite c!50105 lt!108314 call!14350)))))))

(declare-fun b!265870 () Bool)

(declare-fun res!121915 () Bool)

(assert (=> b!265870 (=> (not res!121915) (not e!165182))))

(assert (=> b!265870 (= res!121915 (<= (height!147 (++!984 (c!50020 call!14352) (c!50020 (ite c!50105 lt!108314 call!14350)))) (+ (max!0 (height!147 (c!50020 call!14352)) (height!147 (c!50020 (ite c!50105 lt!108314 call!14350)))) 1)))))

(assert (= (and d!76663 res!121917) b!265869))

(assert (= (and b!265869 res!121918) b!265870))

(assert (= (and b!265870 res!121915) b!265871))

(assert (= (and b!265871 res!121916) b!265872))

(declare-fun m!332935 () Bool)

(assert (=> b!265870 m!332935))

(assert (=> b!265870 m!332935))

(declare-fun m!332937 () Bool)

(assert (=> b!265870 m!332937))

(declare-fun m!332939 () Bool)

(assert (=> b!265870 m!332939))

(declare-fun m!332941 () Bool)

(assert (=> b!265870 m!332941))

(declare-fun m!332943 () Bool)

(assert (=> b!265870 m!332943))

(assert (=> b!265870 m!332941))

(assert (=> b!265870 m!332937))

(assert (=> b!265869 m!332941))

(assert (=> b!265869 m!332941))

(declare-fun m!332945 () Bool)

(assert (=> b!265869 m!332945))

(declare-fun m!332947 () Bool)

(assert (=> b!265872 m!332947))

(declare-fun m!332949 () Bool)

(assert (=> b!265872 m!332949))

(declare-fun m!332951 () Bool)

(assert (=> b!265872 m!332951))

(assert (=> b!265872 m!332949))

(assert (=> b!265872 m!332951))

(declare-fun m!332953 () Bool)

(assert (=> b!265872 m!332953))

(assert (=> b!265871 m!332935))

(assert (=> b!265871 m!332935))

(assert (=> b!265871 m!332937))

(assert (=> b!265871 m!332939))

(assert (=> b!265871 m!332941))

(assert (=> b!265871 m!332943))

(assert (=> b!265871 m!332941))

(assert (=> b!265871 m!332937))

(declare-fun m!332955 () Bool)

(assert (=> d!76663 m!332955))

(assert (=> d!76663 m!332941))

(assert (=> bm!14345 d!76663))

(declare-fun b!265874 () Bool)

(declare-fun e!165183 () List!3799)

(declare-fun e!165184 () List!3799)

(assert (=> b!265874 (= e!165183 e!165184)))

(declare-fun c!50324 () Bool)

(assert (=> b!265874 (= c!50324 ((_ is Leaf!1969) (c!50020 (seqFromList!813 lt!108114))))))

(declare-fun b!265873 () Bool)

(assert (=> b!265873 (= e!165183 Nil!3789)))

(declare-fun b!265876 () Bool)

(assert (=> b!265876 (= e!165184 (++!980 (list!1539 (left!3116 (c!50020 (seqFromList!813 lt!108114)))) (list!1539 (right!3446 (c!50020 (seqFromList!813 lt!108114))))))))

(declare-fun d!76665 () Bool)

(declare-fun c!50323 () Bool)

(assert (=> d!76665 (= c!50323 ((_ is Empty!1268) (c!50020 (seqFromList!813 lt!108114))))))

(assert (=> d!76665 (= (list!1539 (c!50020 (seqFromList!813 lt!108114))) e!165183)))

(declare-fun b!265875 () Bool)

(assert (=> b!265875 (= e!165184 (list!1543 (xs!3867 (c!50020 (seqFromList!813 lt!108114)))))))

(assert (= (and d!76665 c!50323) b!265873))

(assert (= (and d!76665 (not c!50323)) b!265874))

(assert (= (and b!265874 c!50324) b!265875))

(assert (= (and b!265874 (not c!50324)) b!265876))

(declare-fun m!332957 () Bool)

(assert (=> b!265876 m!332957))

(declare-fun m!332959 () Bool)

(assert (=> b!265876 m!332959))

(assert (=> b!265876 m!332957))

(assert (=> b!265876 m!332959))

(declare-fun m!332961 () Bool)

(assert (=> b!265876 m!332961))

(declare-fun m!332963 () Bool)

(assert (=> b!265875 m!332963))

(assert (=> d!76143 d!76665))

(declare-fun d!76667 () Bool)

(assert (=> d!76667 (= (inv!16 (value!24921 separatorToken!170)) (= (charsToInt!0 (text!5662 (value!24921 separatorToken!170))) (value!24912 (value!24921 separatorToken!170))))))

(declare-fun bs!29214 () Bool)

(assert (= bs!29214 d!76667))

(declare-fun m!332965 () Bool)

(assert (=> bs!29214 m!332965))

(assert (=> b!265001 d!76667))

(declare-fun d!76669 () Bool)

(assert (=> d!76669 (= (list!1535 lt!108328) (list!1539 (c!50020 lt!108328)))))

(declare-fun bs!29215 () Bool)

(assert (= bs!29215 d!76669))

(declare-fun m!332967 () Bool)

(assert (=> bs!29215 m!332967))

(assert (=> d!76099 d!76669))

(declare-fun e!165188 () Bool)

(declare-fun lt!108900 () List!3799)

(declare-fun b!265882 () Bool)

(assert (=> b!265882 (= e!165188 (or (not (= lt!108116 Nil!3789)) (= lt!108900 (t!37441 lt!108119))))))

(declare-fun b!265880 () Bool)

(declare-fun e!165187 () List!3799)

(assert (=> b!265880 (= e!165187 (Cons!3789 (h!9186 (t!37441 lt!108119)) (++!980 (t!37441 (t!37441 lt!108119)) lt!108116)))))

(declare-fun b!265881 () Bool)

(declare-fun res!121921 () Bool)

(assert (=> b!265881 (=> (not res!121921) (not e!165188))))

(assert (=> b!265881 (= res!121921 (= (size!3015 lt!108900) (+ (size!3015 (t!37441 lt!108119)) (size!3015 lt!108116))))))

(declare-fun d!76671 () Bool)

(assert (=> d!76671 e!165188))

(declare-fun res!121922 () Bool)

(assert (=> d!76671 (=> (not res!121922) (not e!165188))))

(assert (=> d!76671 (= res!121922 (= (content!539 lt!108900) ((_ map or) (content!539 (t!37441 lt!108119)) (content!539 lt!108116))))))

(assert (=> d!76671 (= lt!108900 e!165187)))

(declare-fun c!50325 () Bool)

(assert (=> d!76671 (= c!50325 ((_ is Nil!3789) (t!37441 lt!108119)))))

(assert (=> d!76671 (= (++!980 (t!37441 lt!108119) lt!108116) lt!108900)))

(declare-fun b!265879 () Bool)

(assert (=> b!265879 (= e!165187 lt!108116)))

(assert (= (and d!76671 c!50325) b!265879))

(assert (= (and d!76671 (not c!50325)) b!265880))

(assert (= (and d!76671 res!121922) b!265881))

(assert (= (and b!265881 res!121921) b!265882))

(declare-fun m!332969 () Bool)

(assert (=> b!265880 m!332969))

(declare-fun m!332971 () Bool)

(assert (=> b!265881 m!332971))

(assert (=> b!265881 m!331685))

(assert (=> b!265881 m!330229))

(declare-fun m!332973 () Bool)

(assert (=> d!76671 m!332973))

(assert (=> d!76671 m!332701))

(assert (=> d!76671 m!330235))

(assert (=> b!264690 d!76671))

(declare-fun b!265886 () Bool)

(declare-fun lt!108901 () List!3799)

(declare-fun e!165190 () Bool)

(assert (=> b!265886 (= e!165190 (or (not (= lt!108118 Nil!3789)) (= lt!108901 (t!37441 lt!108117))))))

(declare-fun b!265884 () Bool)

(declare-fun e!165189 () List!3799)

(assert (=> b!265884 (= e!165189 (Cons!3789 (h!9186 (t!37441 lt!108117)) (++!980 (t!37441 (t!37441 lt!108117)) lt!108118)))))

(declare-fun b!265885 () Bool)

(declare-fun res!121923 () Bool)

(assert (=> b!265885 (=> (not res!121923) (not e!165190))))

(assert (=> b!265885 (= res!121923 (= (size!3015 lt!108901) (+ (size!3015 (t!37441 lt!108117)) (size!3015 lt!108118))))))

(declare-fun d!76673 () Bool)

(assert (=> d!76673 e!165190))

(declare-fun res!121924 () Bool)

(assert (=> d!76673 (=> (not res!121924) (not e!165190))))

(assert (=> d!76673 (= res!121924 (= (content!539 lt!108901) ((_ map or) (content!539 (t!37441 lt!108117)) (content!539 lt!108118))))))

(assert (=> d!76673 (= lt!108901 e!165189)))

(declare-fun c!50326 () Bool)

(assert (=> d!76673 (= c!50326 ((_ is Nil!3789) (t!37441 lt!108117)))))

(assert (=> d!76673 (= (++!980 (t!37441 lt!108117) lt!108118) lt!108901)))

(declare-fun b!265883 () Bool)

(assert (=> b!265883 (= e!165189 lt!108118)))

(assert (= (and d!76673 c!50326) b!265883))

(assert (= (and d!76673 (not c!50326)) b!265884))

(assert (= (and d!76673 res!121924) b!265885))

(assert (= (and b!265885 res!121923) b!265886))

(declare-fun m!332975 () Bool)

(assert (=> b!265884 m!332975))

(declare-fun m!332977 () Bool)

(assert (=> b!265885 m!332977))

(assert (=> b!265885 m!332117))

(assert (=> b!265885 m!330733))

(declare-fun m!332979 () Bool)

(assert (=> d!76673 m!332979))

(assert (=> d!76673 m!332709))

(assert (=> d!76673 m!330737))

(assert (=> b!264998 d!76673))

(declare-fun lt!108903 () List!3799)

(declare-fun e!165193 () Bool)

(declare-fun b!265891 () Bool)

(assert (=> b!265891 (= e!165193 (or (not (= lt!108116 Nil!3789)) (= lt!108903 (t!37441 lt!108117))))))

(declare-fun b!265889 () Bool)

(declare-fun e!165192 () List!3799)

(assert (=> b!265889 (= e!165192 (Cons!3789 (h!9186 (t!37441 lt!108117)) (++!980 (t!37441 (t!37441 lt!108117)) lt!108116)))))

(declare-fun b!265890 () Bool)

(declare-fun res!121926 () Bool)

(assert (=> b!265890 (=> (not res!121926) (not e!165193))))

(assert (=> b!265890 (= res!121926 (= (size!3015 lt!108903) (+ (size!3015 (t!37441 lt!108117)) (size!3015 lt!108116))))))

(declare-fun d!76675 () Bool)

(assert (=> d!76675 e!165193))

(declare-fun res!121927 () Bool)

(assert (=> d!76675 (=> (not res!121927) (not e!165193))))

(assert (=> d!76675 (= res!121927 (= (content!539 lt!108903) ((_ map or) (content!539 (t!37441 lt!108117)) (content!539 lt!108116))))))

(assert (=> d!76675 (= lt!108903 e!165192)))

(declare-fun c!50327 () Bool)

(assert (=> d!76675 (= c!50327 ((_ is Nil!3789) (t!37441 lt!108117)))))

(assert (=> d!76675 (= (++!980 (t!37441 lt!108117) lt!108116) lt!108903)))

(declare-fun b!265888 () Bool)

(assert (=> b!265888 (= e!165192 lt!108116)))

(assert (= (and d!76675 c!50327) b!265888))

(assert (= (and d!76675 (not c!50327)) b!265889))

(assert (= (and d!76675 res!121927) b!265890))

(assert (= (and b!265890 res!121926) b!265891))

(declare-fun m!332985 () Bool)

(assert (=> b!265889 m!332985))

(declare-fun m!332987 () Bool)

(assert (=> b!265890 m!332987))

(assert (=> b!265890 m!332117))

(assert (=> b!265890 m!330229))

(declare-fun m!332989 () Bool)

(assert (=> d!76675 m!332989))

(assert (=> d!76675 m!332709))

(assert (=> d!76675 m!330235))

(assert (=> b!265069 d!76675))

(assert (=> b!264941 d!76291))

(declare-fun bs!29239 () Bool)

(declare-fun d!76679 () Bool)

(assert (= bs!29239 (and d!76679 b!264939)))

(declare-fun lambda!8976 () Int)

(assert (=> bs!29239 (= lambda!8976 lambda!8928)))

(declare-fun bs!29240 () Bool)

(assert (= bs!29240 (and d!76679 b!265283)))

(assert (=> bs!29240 (= lambda!8976 lambda!8949)))

(declare-fun bs!29241 () Bool)

(assert (= bs!29241 (and d!76679 b!265370)))

(assert (=> bs!29241 (= lambda!8976 lambda!8956)))

(declare-fun bs!29242 () Bool)

(assert (= bs!29242 (and d!76679 b!264588)))

(assert (=> bs!29242 (not (= lambda!8976 lambda!8902))))

(declare-fun bs!29243 () Bool)

(assert (= bs!29243 (and d!76679 b!265517)))

(assert (=> bs!29243 (= lambda!8976 lambda!8961)))

(declare-fun bs!29244 () Bool)

(assert (= bs!29244 (and d!76679 d!76111)))

(assert (=> bs!29244 (= lambda!8976 lambda!8933)))

(declare-fun bs!29245 () Bool)

(assert (= bs!29245 (and d!76679 d!76071)))

(assert (=> bs!29245 (not (= lambda!8976 lambda!8927))))

(declare-fun bs!29246 () Bool)

(assert (= bs!29246 (and d!76679 b!265057)))

(assert (=> bs!29246 (= lambda!8976 lambda!8936)))

(declare-fun bs!29247 () Bool)

(assert (= bs!29247 (and d!76679 d!76533)))

(assert (=> bs!29247 (not (= lambda!8976 lambda!8966))))

(declare-fun bs!29248 () Bool)

(assert (= bs!29248 (and d!76679 d!76149)))

(assert (=> bs!29248 (not (= lambda!8976 lambda!8934))))

(declare-fun bs!29249 () Bool)

(assert (= bs!29249 (and d!76679 b!265674)))

(assert (=> bs!29249 (= lambda!8976 lambda!8967)))

(declare-fun bs!29250 () Bool)

(assert (= bs!29250 (and d!76679 d!76439)))

(assert (=> bs!29250 (not (= lambda!8976 lambda!8960))))

(declare-fun bs!29251 () Bool)

(assert (= bs!29251 (and d!76679 b!264827)))

(assert (=> bs!29251 (= lambda!8976 lambda!8919)))

(declare-fun bs!29252 () Bool)

(assert (= bs!29252 (and d!76679 b!265049)))

(assert (=> bs!29252 (= lambda!8976 lambda!8935)))

(declare-fun b!265976 () Bool)

(declare-fun e!165250 () Bool)

(assert (=> b!265976 (= e!165250 true)))

(declare-fun b!265975 () Bool)

(declare-fun e!165249 () Bool)

(assert (=> b!265975 (= e!165249 e!165250)))

(declare-fun b!265974 () Bool)

(declare-fun e!165248 () Bool)

(assert (=> b!265974 (= e!165248 e!165249)))

(assert (=> d!76679 e!165248))

(assert (= b!265975 b!265976))

(assert (= b!265974 b!265975))

(assert (= (and d!76679 ((_ is Cons!3792) rules!1920)) b!265974))

(assert (=> b!265976 (< (dynLambda!1929 order!2893 (toValue!1450 (transformation!723 (h!9189 rules!1920)))) (dynLambda!1930 order!2895 lambda!8976))))

(assert (=> b!265976 (< (dynLambda!1931 order!2897 (toChars!1309 (transformation!723 (h!9189 rules!1920)))) (dynLambda!1930 order!2895 lambda!8976))))

(assert (=> d!76679 true))

(declare-fun lt!108946 () Bool)

(assert (=> d!76679 (= lt!108946 (forall!939 (list!1538 lt!108115) lambda!8976))))

(declare-fun e!165246 () Bool)

(assert (=> d!76679 (= lt!108946 e!165246)))

(declare-fun res!121961 () Bool)

(assert (=> d!76679 (=> res!121961 e!165246)))

(assert (=> d!76679 (= res!121961 (not ((_ is Cons!3791) (list!1538 lt!108115))))))

(assert (=> d!76679 (not (isEmpty!2382 rules!1920))))

(assert (=> d!76679 (= (rulesProduceEachTokenIndividuallyList!223 thiss!17480 rules!1920 (list!1538 lt!108115)) lt!108946)))

(declare-fun b!265972 () Bool)

(declare-fun e!165247 () Bool)

(assert (=> b!265972 (= e!165246 e!165247)))

(declare-fun res!121962 () Bool)

(assert (=> b!265972 (=> (not res!121962) (not e!165247))))

(assert (=> b!265972 (= res!121962 (rulesProduceIndividualToken!358 thiss!17480 rules!1920 (h!9188 (list!1538 lt!108115))))))

(declare-fun b!265973 () Bool)

(assert (=> b!265973 (= e!165247 (rulesProduceEachTokenIndividuallyList!223 thiss!17480 rules!1920 (t!37443 (list!1538 lt!108115))))))

(assert (= (and d!76679 (not res!121961)) b!265972))

(assert (= (and b!265972 res!121962) b!265973))

(assert (=> d!76679 m!330749))

(declare-fun m!333123 () Bool)

(assert (=> d!76679 m!333123))

(assert (=> d!76679 m!330095))

(declare-fun m!333127 () Bool)

(assert (=> b!265972 m!333127))

(declare-fun m!333129 () Bool)

(assert (=> b!265973 m!333129))

(assert (=> b!265016 d!76679))

(assert (=> b!265016 d!76345))

(declare-fun d!76695 () Bool)

(assert (=> d!76695 (= (inv!17 (value!24921 separatorToken!170)) (= (charsToBigInt!1 (text!5663 (value!24921 separatorToken!170))) (value!24913 (value!24921 separatorToken!170))))))

(declare-fun bs!29253 () Bool)

(assert (= bs!29253 d!76695))

(declare-fun m!333131 () Bool)

(assert (=> bs!29253 m!333131))

(assert (=> b!265005 d!76695))

(declare-fun b!265988 () Bool)

(declare-fun e!165262 () List!3801)

(declare-fun e!165260 () List!3801)

(assert (=> b!265988 (= e!165262 e!165260)))

(declare-fun c!50356 () Bool)

(assert (=> b!265988 (= c!50356 (<= 0 0))))

(declare-fun b!265989 () Bool)

(declare-fun e!165258 () Int)

(declare-fun call!14429 () Int)

(assert (=> b!265989 (= e!165258 call!14429)))

(declare-fun b!265990 () Bool)

(assert (=> b!265990 (= e!165262 Nil!3791)))

(declare-fun b!265991 () Bool)

(declare-fun e!165259 () Int)

(assert (=> b!265991 (= e!165259 0)))

(declare-fun b!265992 () Bool)

(assert (=> b!265992 (= e!165258 e!165259)))

(declare-fun c!50354 () Bool)

(assert (=> b!265992 (= c!50354 (>= 0 call!14429))))

(declare-fun b!265993 () Bool)

(assert (=> b!265993 (= e!165260 (drop!211 (t!37443 lt!108354) (- 0 1)))))

(declare-fun bm!14424 () Bool)

(assert (=> bm!14424 (= call!14429 (size!3018 lt!108354))))

(declare-fun b!265994 () Bool)

(assert (=> b!265994 (= e!165259 (- call!14429 0))))

(declare-fun b!265995 () Bool)

(assert (=> b!265995 (= e!165260 lt!108354)))

(declare-fun d!76697 () Bool)

(declare-fun e!165261 () Bool)

(assert (=> d!76697 e!165261))

(declare-fun res!121965 () Bool)

(assert (=> d!76697 (=> (not res!121965) (not e!165261))))

(declare-fun lt!108950 () List!3801)

(assert (=> d!76697 (= res!121965 (= ((_ map implies) (content!540 lt!108950) (content!540 lt!108354)) ((as const (InoxSet Token!1190)) true)))))

(assert (=> d!76697 (= lt!108950 e!165262)))

(declare-fun c!50355 () Bool)

(assert (=> d!76697 (= c!50355 ((_ is Nil!3791) lt!108354))))

(assert (=> d!76697 (= (drop!211 lt!108354 0) lt!108950)))

(declare-fun b!265996 () Bool)

(assert (=> b!265996 (= e!165261 (= (size!3018 lt!108950) e!165258))))

(declare-fun c!50357 () Bool)

(assert (=> b!265996 (= c!50357 (<= 0 0))))

(assert (= (and d!76697 c!50355) b!265990))

(assert (= (and d!76697 (not c!50355)) b!265988))

(assert (= (and b!265988 c!50356) b!265995))

(assert (= (and b!265988 (not c!50356)) b!265993))

(assert (= (and d!76697 res!121965) b!265996))

(assert (= (and b!265996 c!50357) b!265989))

(assert (= (and b!265996 (not c!50357)) b!265992))

(assert (= (and b!265992 c!50354) b!265991))

(assert (= (and b!265992 (not c!50354)) b!265994))

(assert (= (or b!265989 b!265992 b!265994) bm!14424))

(declare-fun m!333139 () Bool)

(assert (=> b!265993 m!333139))

(declare-fun m!333141 () Bool)

(assert (=> bm!14424 m!333141))

(declare-fun m!333143 () Bool)

(assert (=> d!76697 m!333143))

(declare-fun m!333145 () Bool)

(assert (=> d!76697 m!333145))

(declare-fun m!333147 () Bool)

(assert (=> b!265996 m!333147))

(assert (=> b!265034 d!76697))

(declare-fun d!76703 () Bool)

(declare-fun lt!108955 () BalanceConc!2544)

(assert (=> d!76703 (= (list!1535 lt!108955) (printListTailRec!124 thiss!17480 (dropList!158 lt!108109 (+ 0 1)) (list!1535 (++!982 (BalanceConc!2545 Empty!1268) (charsOf!368 (apply!749 lt!108109 0))))))))

(declare-fun e!165263 () BalanceConc!2544)

(assert (=> d!76703 (= lt!108955 e!165263)))

(declare-fun c!50358 () Bool)

(assert (=> d!76703 (= c!50358 (>= (+ 0 1) (size!3014 lt!108109)))))

(declare-fun e!165264 () Bool)

(assert (=> d!76703 e!165264))

(declare-fun res!121966 () Bool)

(assert (=> d!76703 (=> (not res!121966) (not e!165264))))

(assert (=> d!76703 (= res!121966 (>= (+ 0 1) 0))))

(assert (=> d!76703 (= (printTailRec!297 thiss!17480 lt!108109 (+ 0 1) (++!982 (BalanceConc!2545 Empty!1268) (charsOf!368 (apply!749 lt!108109 0)))) lt!108955)))

(declare-fun b!265997 () Bool)

(assert (=> b!265997 (= e!165264 (<= (+ 0 1) (size!3014 lt!108109)))))

(declare-fun b!265998 () Bool)

(assert (=> b!265998 (= e!165263 (++!982 (BalanceConc!2545 Empty!1268) (charsOf!368 (apply!749 lt!108109 0))))))

(declare-fun b!265999 () Bool)

(assert (=> b!265999 (= e!165263 (printTailRec!297 thiss!17480 lt!108109 (+ 0 1 1) (++!982 (++!982 (BalanceConc!2545 Empty!1268) (charsOf!368 (apply!749 lt!108109 0))) (charsOf!368 (apply!749 lt!108109 (+ 0 1))))))))

(declare-fun lt!108953 () List!3801)

(assert (=> b!265999 (= lt!108953 (list!1538 lt!108109))))

(declare-fun lt!108956 () Unit!4760)

(assert (=> b!265999 (= lt!108956 (lemmaDropApply!198 lt!108953 (+ 0 1)))))

(assert (=> b!265999 (= (head!882 (drop!211 lt!108953 (+ 0 1))) (apply!750 lt!108953 (+ 0 1)))))

(declare-fun lt!108952 () Unit!4760)

(assert (=> b!265999 (= lt!108952 lt!108956)))

(declare-fun lt!108957 () List!3801)

(assert (=> b!265999 (= lt!108957 (list!1538 lt!108109))))

(declare-fun lt!108951 () Unit!4760)

(assert (=> b!265999 (= lt!108951 (lemmaDropTail!190 lt!108957 (+ 0 1)))))

(assert (=> b!265999 (= (tail!472 (drop!211 lt!108957 (+ 0 1))) (drop!211 lt!108957 (+ 0 1 1)))))

(declare-fun lt!108954 () Unit!4760)

(assert (=> b!265999 (= lt!108954 lt!108951)))

(assert (= (and d!76703 res!121966) b!265997))

(assert (= (and d!76703 c!50358) b!265998))

(assert (= (and d!76703 (not c!50358)) b!265999))

(declare-fun m!333149 () Bool)

(assert (=> d!76703 m!333149))

(declare-fun m!333151 () Bool)

(assert (=> d!76703 m!333151))

(declare-fun m!333153 () Bool)

(assert (=> d!76703 m!333153))

(assert (=> d!76703 m!333149))

(assert (=> d!76703 m!330787))

(declare-fun m!333155 () Bool)

(assert (=> d!76703 m!333155))

(assert (=> d!76703 m!330809))

(assert (=> d!76703 m!333151))

(assert (=> b!265997 m!330787))

(declare-fun m!333157 () Bool)

(assert (=> b!265999 m!333157))

(declare-fun m!333159 () Bool)

(assert (=> b!265999 m!333159))

(declare-fun m!333161 () Bool)

(assert (=> b!265999 m!333161))

(declare-fun m!333163 () Bool)

(assert (=> b!265999 m!333163))

(declare-fun m!333165 () Bool)

(assert (=> b!265999 m!333165))

(declare-fun m!333167 () Bool)

(assert (=> b!265999 m!333167))

(assert (=> b!265999 m!330775))

(declare-fun m!333169 () Bool)

(assert (=> b!265999 m!333169))

(declare-fun m!333171 () Bool)

(assert (=> b!265999 m!333171))

(assert (=> b!265999 m!333169))

(declare-fun m!333173 () Bool)

(assert (=> b!265999 m!333173))

(assert (=> b!265999 m!333157))

(declare-fun m!333175 () Bool)

(assert (=> b!265999 m!333175))

(declare-fun m!333177 () Bool)

(assert (=> b!265999 m!333177))

(assert (=> b!265999 m!330809))

(assert (=> b!265999 m!333165))

(assert (=> b!265999 m!333175))

(assert (=> b!265999 m!333163))

(declare-fun m!333179 () Bool)

(assert (=> b!265999 m!333179))

(assert (=> b!265034 d!76703))

(declare-fun d!76707 () Bool)

(declare-fun lt!108959 () Token!1190)

(assert (=> d!76707 (contains!706 lt!108354 lt!108959)))

(declare-fun e!165268 () Token!1190)

(assert (=> d!76707 (= lt!108959 e!165268)))

(declare-fun c!50360 () Bool)

(assert (=> d!76707 (= c!50360 (= 0 0))))

(declare-fun e!165267 () Bool)

(assert (=> d!76707 e!165267))

(declare-fun res!121969 () Bool)

(assert (=> d!76707 (=> (not res!121969) (not e!165267))))

(assert (=> d!76707 (= res!121969 (<= 0 0))))

(assert (=> d!76707 (= (apply!750 lt!108354 0) lt!108959)))

(declare-fun b!266004 () Bool)

(assert (=> b!266004 (= e!165267 (< 0 (size!3018 lt!108354)))))

(declare-fun b!266005 () Bool)

(assert (=> b!266005 (= e!165268 (head!882 lt!108354))))

(declare-fun b!266006 () Bool)

(assert (=> b!266006 (= e!165268 (apply!750 (tail!472 lt!108354) (- 0 1)))))

(assert (= (and d!76707 res!121969) b!266004))

(assert (= (and d!76707 c!50360) b!266005))

(assert (= (and d!76707 (not c!50360)) b!266006))

(declare-fun m!333185 () Bool)

(assert (=> d!76707 m!333185))

(assert (=> b!266004 m!333141))

(declare-fun m!333189 () Bool)

(assert (=> b!266005 m!333189))

(declare-fun m!333193 () Bool)

(assert (=> b!266006 m!333193))

(assert (=> b!266006 m!333193))

(declare-fun m!333197 () Bool)

(assert (=> b!266006 m!333197))

(assert (=> b!265034 d!76707))

(declare-fun d!76711 () Bool)

(assert (=> d!76711 (= (tail!472 (drop!211 lt!108358 0)) (t!37443 (drop!211 lt!108358 0)))))

(assert (=> b!265034 d!76711))

(declare-fun b!266011 () Bool)

(declare-fun res!121973 () Bool)

(declare-fun e!165271 () Bool)

(assert (=> b!266011 (=> (not res!121973) (not e!165271))))

(assert (=> b!266011 (= res!121973 (isBalanced!343 (++!984 (c!50020 (BalanceConc!2545 Empty!1268)) (c!50020 (charsOf!368 (apply!749 lt!108109 0))))))))

(declare-fun b!266013 () Bool)

(declare-fun res!121971 () Bool)

(assert (=> b!266013 (=> (not res!121971) (not e!165271))))

(assert (=> b!266013 (= res!121971 (>= (height!147 (++!984 (c!50020 (BalanceConc!2545 Empty!1268)) (c!50020 (charsOf!368 (apply!749 lt!108109 0))))) (max!0 (height!147 (c!50020 (BalanceConc!2545 Empty!1268))) (height!147 (c!50020 (charsOf!368 (apply!749 lt!108109 0)))))))))

(declare-fun d!76713 () Bool)

(assert (=> d!76713 e!165271))

(declare-fun res!121972 () Bool)

(assert (=> d!76713 (=> (not res!121972) (not e!165271))))

(assert (=> d!76713 (= res!121972 (appendAssocInst!59 (c!50020 (BalanceConc!2545 Empty!1268)) (c!50020 (charsOf!368 (apply!749 lt!108109 0)))))))

(declare-fun lt!108962 () BalanceConc!2544)

(assert (=> d!76713 (= lt!108962 (BalanceConc!2545 (++!984 (c!50020 (BalanceConc!2545 Empty!1268)) (c!50020 (charsOf!368 (apply!749 lt!108109 0))))))))

(assert (=> d!76713 (= (++!982 (BalanceConc!2545 Empty!1268) (charsOf!368 (apply!749 lt!108109 0))) lt!108962)))

(declare-fun b!266014 () Bool)

(assert (=> b!266014 (= e!165271 (= (list!1535 lt!108962) (++!980 (list!1535 (BalanceConc!2545 Empty!1268)) (list!1535 (charsOf!368 (apply!749 lt!108109 0))))))))

(declare-fun b!266012 () Bool)

(declare-fun res!121970 () Bool)

(assert (=> b!266012 (=> (not res!121970) (not e!165271))))

(assert (=> b!266012 (= res!121970 (<= (height!147 (++!984 (c!50020 (BalanceConc!2545 Empty!1268)) (c!50020 (charsOf!368 (apply!749 lt!108109 0))))) (+ (max!0 (height!147 (c!50020 (BalanceConc!2545 Empty!1268))) (height!147 (c!50020 (charsOf!368 (apply!749 lt!108109 0))))) 1)))))

(assert (= (and d!76713 res!121972) b!266011))

(assert (= (and b!266011 res!121973) b!266012))

(assert (= (and b!266012 res!121970) b!266013))

(assert (= (and b!266013 res!121971) b!266014))

(declare-fun m!333209 () Bool)

(assert (=> b!266012 m!333209))

(assert (=> b!266012 m!333209))

(declare-fun m!333211 () Bool)

(assert (=> b!266012 m!333211))

(declare-fun m!333215 () Bool)

(assert (=> b!266012 m!333215))

(declare-fun m!333217 () Bool)

(assert (=> b!266012 m!333217))

(declare-fun m!333219 () Bool)

(assert (=> b!266012 m!333219))

(assert (=> b!266012 m!333217))

(assert (=> b!266012 m!333211))

(assert (=> b!266011 m!333217))

(assert (=> b!266011 m!333217))

(declare-fun m!333221 () Bool)

(assert (=> b!266011 m!333221))

(declare-fun m!333225 () Bool)

(assert (=> b!266014 m!333225))

(assert (=> b!266014 m!330783))

(assert (=> b!266014 m!330799))

(declare-fun m!333229 () Bool)

(assert (=> b!266014 m!333229))

(assert (=> b!266014 m!330783))

(assert (=> b!266014 m!333229))

(declare-fun m!333231 () Bool)

(assert (=> b!266014 m!333231))

(assert (=> b!266013 m!333209))

(assert (=> b!266013 m!333209))

(assert (=> b!266013 m!333211))

(assert (=> b!266013 m!333215))

(assert (=> b!266013 m!333217))

(assert (=> b!266013 m!333219))

(assert (=> b!266013 m!333217))

(assert (=> b!266013 m!333211))

(declare-fun m!333235 () Bool)

(assert (=> d!76713 m!333235))

(assert (=> d!76713 m!333217))

(assert (=> b!265034 d!76713))

(declare-fun d!76731 () Bool)

(assert (=> d!76731 (= (head!882 (drop!211 lt!108354 0)) (h!9188 (drop!211 lt!108354 0)))))

(assert (=> b!265034 d!76731))

(declare-fun b!266027 () Bool)

(declare-fun e!165284 () List!3801)

(declare-fun e!165282 () List!3801)

(assert (=> b!266027 (= e!165284 e!165282)))

(declare-fun c!50368 () Bool)

(assert (=> b!266027 (= c!50368 (<= (+ 0 1) 0))))

(declare-fun b!266028 () Bool)

(declare-fun e!165280 () Int)

(declare-fun call!14431 () Int)

(assert (=> b!266028 (= e!165280 call!14431)))

(declare-fun b!266029 () Bool)

(assert (=> b!266029 (= e!165284 Nil!3791)))

(declare-fun b!266030 () Bool)

(declare-fun e!165281 () Int)

(assert (=> b!266030 (= e!165281 0)))

(declare-fun b!266031 () Bool)

(assert (=> b!266031 (= e!165280 e!165281)))

(declare-fun c!50366 () Bool)

(assert (=> b!266031 (= c!50366 (>= (+ 0 1) call!14431))))

(declare-fun b!266032 () Bool)

(assert (=> b!266032 (= e!165282 (drop!211 (t!37443 lt!108358) (- (+ 0 1) 1)))))

(declare-fun bm!14426 () Bool)

(assert (=> bm!14426 (= call!14431 (size!3018 lt!108358))))

(declare-fun b!266033 () Bool)

(assert (=> b!266033 (= e!165281 (- call!14431 (+ 0 1)))))

(declare-fun b!266034 () Bool)

(assert (=> b!266034 (= e!165282 lt!108358)))

(declare-fun d!76733 () Bool)

(declare-fun e!165283 () Bool)

(assert (=> d!76733 e!165283))

(declare-fun res!121980 () Bool)

(assert (=> d!76733 (=> (not res!121980) (not e!165283))))

(declare-fun lt!108972 () List!3801)

(assert (=> d!76733 (= res!121980 (= ((_ map implies) (content!540 lt!108972) (content!540 lt!108358)) ((as const (InoxSet Token!1190)) true)))))

(assert (=> d!76733 (= lt!108972 e!165284)))

(declare-fun c!50367 () Bool)

(assert (=> d!76733 (= c!50367 ((_ is Nil!3791) lt!108358))))

(assert (=> d!76733 (= (drop!211 lt!108358 (+ 0 1)) lt!108972)))

(declare-fun b!266035 () Bool)

(assert (=> b!266035 (= e!165283 (= (size!3018 lt!108972) e!165280))))

(declare-fun c!50369 () Bool)

(assert (=> b!266035 (= c!50369 (<= (+ 0 1) 0))))

(assert (= (and d!76733 c!50367) b!266029))

(assert (= (and d!76733 (not c!50367)) b!266027))

(assert (= (and b!266027 c!50368) b!266034))

(assert (= (and b!266027 (not c!50368)) b!266032))

(assert (= (and d!76733 res!121980) b!266035))

(assert (= (and b!266035 c!50369) b!266028))

(assert (= (and b!266035 (not c!50369)) b!266031))

(assert (= (and b!266031 c!50366) b!266030))

(assert (= (and b!266031 (not c!50366)) b!266033))

(assert (= (or b!266028 b!266031 b!266033) bm!14426))

(declare-fun m!333237 () Bool)

(assert (=> b!266032 m!333237))

(declare-fun m!333239 () Bool)

(assert (=> bm!14426 m!333239))

(declare-fun m!333241 () Bool)

(assert (=> d!76733 m!333241))

(declare-fun m!333243 () Bool)

(assert (=> d!76733 m!333243))

(declare-fun m!333245 () Bool)

(assert (=> b!266035 m!333245))

(assert (=> b!265034 d!76733))

(declare-fun d!76735 () Bool)

(declare-fun lt!108973 () Token!1190)

(assert (=> d!76735 (= lt!108973 (apply!750 (list!1538 lt!108109) 0))))

(assert (=> d!76735 (= lt!108973 (apply!752 (c!50022 lt!108109) 0))))

(declare-fun e!165285 () Bool)

(assert (=> d!76735 e!165285))

(declare-fun res!121981 () Bool)

(assert (=> d!76735 (=> (not res!121981) (not e!165285))))

(assert (=> d!76735 (= res!121981 (<= 0 0))))

(assert (=> d!76735 (= (apply!749 lt!108109 0) lt!108973)))

(declare-fun b!266036 () Bool)

(assert (=> b!266036 (= e!165285 (< 0 (size!3014 lt!108109)))))

(assert (= (and d!76735 res!121981) b!266036))

(assert (=> d!76735 m!330775))

(assert (=> d!76735 m!330775))

(declare-fun m!333247 () Bool)

(assert (=> d!76735 m!333247))

(declare-fun m!333249 () Bool)

(assert (=> d!76735 m!333249))

(assert (=> b!266036 m!330787))

(assert (=> b!265034 d!76735))

(declare-fun d!76737 () Bool)

(declare-fun lt!108974 () BalanceConc!2544)

(assert (=> d!76737 (= (list!1535 lt!108974) (originalCharacters!766 (apply!749 lt!108109 0)))))

(assert (=> d!76737 (= lt!108974 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (apply!749 lt!108109 0)))) (value!24921 (apply!749 lt!108109 0))))))

(assert (=> d!76737 (= (charsOf!368 (apply!749 lt!108109 0)) lt!108974)))

(declare-fun b_lambda!8307 () Bool)

(assert (=> (not b_lambda!8307) (not d!76737)))

(declare-fun t!37642 () Bool)

(declare-fun tb!14629 () Bool)

(assert (=> (and b!264597 (= (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))) (toChars!1309 (transformation!723 (rule!1308 (apply!749 lt!108109 0))))) t!37642) tb!14629))

(declare-fun b!266037 () Bool)

(declare-fun e!165286 () Bool)

(declare-fun tp!101474 () Bool)

(assert (=> b!266037 (= e!165286 (and (inv!4685 (c!50020 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (apply!749 lt!108109 0)))) (value!24921 (apply!749 lt!108109 0))))) tp!101474))))

(declare-fun result!18184 () Bool)

(assert (=> tb!14629 (= result!18184 (and (inv!4686 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (apply!749 lt!108109 0)))) (value!24921 (apply!749 lt!108109 0)))) e!165286))))

(assert (= tb!14629 b!266037))

(declare-fun m!333265 () Bool)

(assert (=> b!266037 m!333265))

(declare-fun m!333269 () Bool)

(assert (=> tb!14629 m!333269))

(assert (=> d!76737 t!37642))

(declare-fun b_and!20933 () Bool)

(assert (= b_and!20913 (and (=> t!37642 result!18184) b_and!20933)))

(declare-fun tb!14631 () Bool)

(declare-fun t!37644 () Bool)

(assert (=> (and b!264598 (= (toChars!1309 (transformation!723 (h!9189 rules!1920))) (toChars!1309 (transformation!723 (rule!1308 (apply!749 lt!108109 0))))) t!37644) tb!14631))

(declare-fun result!18186 () Bool)

(assert (= result!18186 result!18184))

(assert (=> d!76737 t!37644))

(declare-fun b_and!20935 () Bool)

(assert (= b_and!20919 (and (=> t!37644 result!18186) b_and!20935)))

(declare-fun tb!14633 () Bool)

(declare-fun t!37646 () Bool)

(assert (=> (and b!265105 (= (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 tokens!465))))) (toChars!1309 (transformation!723 (rule!1308 (apply!749 lt!108109 0))))) t!37646) tb!14633))

(declare-fun result!18188 () Bool)

(assert (= result!18188 result!18184))

(assert (=> d!76737 t!37646))

(declare-fun b_and!20937 () Bool)

(assert (= b_and!20915 (and (=> t!37646 result!18188) b_and!20937)))

(declare-fun tb!14635 () Bool)

(declare-fun t!37648 () Bool)

(assert (=> (and b!265124 (= (toChars!1309 (transformation!723 (h!9189 (t!37444 rules!1920)))) (toChars!1309 (transformation!723 (rule!1308 (apply!749 lt!108109 0))))) t!37648) tb!14635))

(declare-fun result!18190 () Bool)

(assert (= result!18190 result!18184))

(assert (=> d!76737 t!37648))

(declare-fun b_and!20939 () Bool)

(assert (= b_and!20917 (and (=> t!37648 result!18190) b_and!20939)))

(declare-fun t!37650 () Bool)

(declare-fun tb!14637 () Bool)

(assert (=> (and b!264593 (= (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))) (toChars!1309 (transformation!723 (rule!1308 (apply!749 lt!108109 0))))) t!37650) tb!14637))

(declare-fun result!18192 () Bool)

(assert (= result!18192 result!18184))

(assert (=> d!76737 t!37650))

(declare-fun b_and!20941 () Bool)

(assert (= b_and!20921 (and (=> t!37650 result!18192) b_and!20941)))

(declare-fun m!333279 () Bool)

(assert (=> d!76737 m!333279))

(declare-fun m!333281 () Bool)

(assert (=> d!76737 m!333281))

(assert (=> b!265034 d!76737))

(declare-fun d!76739 () Bool)

(assert (=> d!76739 (= (list!1538 lt!108109) (list!1541 (c!50022 lt!108109)))))

(declare-fun bs!29259 () Bool)

(assert (= bs!29259 d!76739))

(assert (=> bs!29259 m!332781))

(assert (=> b!265034 d!76739))

(declare-fun b!266038 () Bool)

(declare-fun e!165291 () List!3801)

(declare-fun e!165289 () List!3801)

(assert (=> b!266038 (= e!165291 e!165289)))

(declare-fun c!50372 () Bool)

(assert (=> b!266038 (= c!50372 (<= 0 0))))

(declare-fun b!266039 () Bool)

(declare-fun e!165287 () Int)

(declare-fun call!14432 () Int)

(assert (=> b!266039 (= e!165287 call!14432)))

(declare-fun b!266040 () Bool)

(assert (=> b!266040 (= e!165291 Nil!3791)))

(declare-fun b!266041 () Bool)

(declare-fun e!165288 () Int)

(assert (=> b!266041 (= e!165288 0)))

(declare-fun b!266042 () Bool)

(assert (=> b!266042 (= e!165287 e!165288)))

(declare-fun c!50370 () Bool)

(assert (=> b!266042 (= c!50370 (>= 0 call!14432))))

(declare-fun b!266043 () Bool)

(assert (=> b!266043 (= e!165289 (drop!211 (t!37443 lt!108358) (- 0 1)))))

(declare-fun bm!14427 () Bool)

(assert (=> bm!14427 (= call!14432 (size!3018 lt!108358))))

(declare-fun b!266044 () Bool)

(assert (=> b!266044 (= e!165288 (- call!14432 0))))

(declare-fun b!266045 () Bool)

(assert (=> b!266045 (= e!165289 lt!108358)))

(declare-fun d!76741 () Bool)

(declare-fun e!165290 () Bool)

(assert (=> d!76741 e!165290))

(declare-fun res!121982 () Bool)

(assert (=> d!76741 (=> (not res!121982) (not e!165290))))

(declare-fun lt!108975 () List!3801)

(assert (=> d!76741 (= res!121982 (= ((_ map implies) (content!540 lt!108975) (content!540 lt!108358)) ((as const (InoxSet Token!1190)) true)))))

(assert (=> d!76741 (= lt!108975 e!165291)))

(declare-fun c!50371 () Bool)

(assert (=> d!76741 (= c!50371 ((_ is Nil!3791) lt!108358))))

(assert (=> d!76741 (= (drop!211 lt!108358 0) lt!108975)))

(declare-fun b!266046 () Bool)

(assert (=> b!266046 (= e!165290 (= (size!3018 lt!108975) e!165287))))

(declare-fun c!50373 () Bool)

(assert (=> b!266046 (= c!50373 (<= 0 0))))

(assert (= (and d!76741 c!50371) b!266040))

(assert (= (and d!76741 (not c!50371)) b!266038))

(assert (= (and b!266038 c!50372) b!266045))

(assert (= (and b!266038 (not c!50372)) b!266043))

(assert (= (and d!76741 res!121982) b!266046))

(assert (= (and b!266046 c!50373) b!266039))

(assert (= (and b!266046 (not c!50373)) b!266042))

(assert (= (and b!266042 c!50370) b!266041))

(assert (= (and b!266042 (not c!50370)) b!266044))

(assert (= (or b!266039 b!266042 b!266044) bm!14427))

(declare-fun m!333285 () Bool)

(assert (=> b!266043 m!333285))

(assert (=> bm!14427 m!333239))

(declare-fun m!333287 () Bool)

(assert (=> d!76741 m!333287))

(assert (=> d!76741 m!333243))

(declare-fun m!333289 () Bool)

(assert (=> b!266046 m!333289))

(assert (=> b!265034 d!76741))

(declare-fun d!76745 () Bool)

(assert (=> d!76745 (= (tail!472 (drop!211 lt!108358 0)) (drop!211 lt!108358 (+ 0 1)))))

(declare-fun lt!108977 () Unit!4760)

(assert (=> d!76745 (= lt!108977 (choose!2430 lt!108358 0))))

(declare-fun e!165293 () Bool)

(assert (=> d!76745 e!165293))

(declare-fun res!121984 () Bool)

(assert (=> d!76745 (=> (not res!121984) (not e!165293))))

(assert (=> d!76745 (= res!121984 (>= 0 0))))

(assert (=> d!76745 (= (lemmaDropTail!190 lt!108358 0) lt!108977)))

(declare-fun b!266048 () Bool)

(assert (=> b!266048 (= e!165293 (< 0 (size!3018 lt!108358)))))

(assert (= (and d!76745 res!121984) b!266048))

(assert (=> d!76745 m!330791))

(assert (=> d!76745 m!330791))

(assert (=> d!76745 m!330793))

(assert (=> d!76745 m!330805))

(declare-fun m!333295 () Bool)

(assert (=> d!76745 m!333295))

(assert (=> b!266048 m!333239))

(assert (=> b!265034 d!76745))

(declare-fun d!76749 () Bool)

(assert (=> d!76749 (= (head!882 (drop!211 lt!108354 0)) (apply!750 lt!108354 0))))

(declare-fun lt!108979 () Unit!4760)

(assert (=> d!76749 (= lt!108979 (choose!2428 lt!108354 0))))

(declare-fun e!165299 () Bool)

(assert (=> d!76749 e!165299))

(declare-fun res!121986 () Bool)

(assert (=> d!76749 (=> (not res!121986) (not e!165299))))

(assert (=> d!76749 (= res!121986 (>= 0 0))))

(assert (=> d!76749 (= (lemmaDropApply!198 lt!108354 0) lt!108979)))

(declare-fun b!266058 () Bool)

(assert (=> b!266058 (= e!165299 (< 0 (size!3018 lt!108354)))))

(assert (= (and d!76749 res!121986) b!266058))

(assert (=> d!76749 m!330803))

(assert (=> d!76749 m!330803))

(assert (=> d!76749 m!330807))

(assert (=> d!76749 m!330801))

(declare-fun m!333307 () Bool)

(assert (=> d!76749 m!333307))

(assert (=> b!266058 m!333141))

(assert (=> b!265034 d!76749))

(declare-fun d!76753 () Bool)

(assert (=> d!76753 (dynLambda!1928 lambda!8919 (h!9188 (t!37443 tokens!465)))))

(declare-fun lt!108981 () Unit!4760)

(assert (=> d!76753 (= lt!108981 (choose!2429 (t!37443 tokens!465) lambda!8919 (h!9188 (t!37443 tokens!465))))))

(declare-fun e!165305 () Bool)

(assert (=> d!76753 e!165305))

(declare-fun res!121988 () Bool)

(assert (=> d!76753 (=> (not res!121988) (not e!165305))))

(assert (=> d!76753 (= res!121988 (forall!939 (t!37443 tokens!465) lambda!8919))))

(assert (=> d!76753 (= (forallContained!280 (t!37443 tokens!465) lambda!8919 (h!9188 (t!37443 tokens!465))) lt!108981)))

(declare-fun b!266068 () Bool)

(assert (=> b!266068 (= e!165305 (contains!706 (t!37443 tokens!465) (h!9188 (t!37443 tokens!465))))))

(assert (= (and d!76753 res!121988) b!266068))

(declare-fun b_lambda!8309 () Bool)

(assert (=> (not b_lambda!8309) (not d!76753)))

(declare-fun m!333309 () Bool)

(assert (=> d!76753 m!333309))

(declare-fun m!333311 () Bool)

(assert (=> d!76753 m!333311))

(declare-fun m!333313 () Bool)

(assert (=> d!76753 m!333313))

(declare-fun m!333315 () Bool)

(assert (=> b!266068 m!333315))

(assert (=> b!264827 d!76753))

(declare-fun b!266072 () Bool)

(declare-fun lt!108982 () List!3799)

(declare-fun e!165307 () Bool)

(assert (=> b!266072 (= e!165307 (or (not (= lt!108228 Nil!3789)) (= lt!108982 (list!1535 (charsOf!368 (h!9188 (t!37443 tokens!465)))))))))

(declare-fun b!266070 () Bool)

(declare-fun e!165306 () List!3799)

(assert (=> b!266070 (= e!165306 (Cons!3789 (h!9186 (list!1535 (charsOf!368 (h!9188 (t!37443 tokens!465))))) (++!980 (t!37441 (list!1535 (charsOf!368 (h!9188 (t!37443 tokens!465))))) lt!108228)))))

(declare-fun b!266071 () Bool)

(declare-fun res!121989 () Bool)

(assert (=> b!266071 (=> (not res!121989) (not e!165307))))

(assert (=> b!266071 (= res!121989 (= (size!3015 lt!108982) (+ (size!3015 (list!1535 (charsOf!368 (h!9188 (t!37443 tokens!465))))) (size!3015 lt!108228))))))

(declare-fun d!76755 () Bool)

(assert (=> d!76755 e!165307))

(declare-fun res!121990 () Bool)

(assert (=> d!76755 (=> (not res!121990) (not e!165307))))

(assert (=> d!76755 (= res!121990 (= (content!539 lt!108982) ((_ map or) (content!539 (list!1535 (charsOf!368 (h!9188 (t!37443 tokens!465))))) (content!539 lt!108228))))))

(assert (=> d!76755 (= lt!108982 e!165306)))

(declare-fun c!50382 () Bool)

(assert (=> d!76755 (= c!50382 ((_ is Nil!3789) (list!1535 (charsOf!368 (h!9188 (t!37443 tokens!465))))))))

(assert (=> d!76755 (= (++!980 (list!1535 (charsOf!368 (h!9188 (t!37443 tokens!465)))) lt!108228) lt!108982)))

(declare-fun b!266069 () Bool)

(assert (=> b!266069 (= e!165306 lt!108228)))

(assert (= (and d!76755 c!50382) b!266069))

(assert (= (and d!76755 (not c!50382)) b!266070))

(assert (= (and d!76755 res!121990) b!266071))

(assert (= (and b!266071 res!121989) b!266072))

(declare-fun m!333325 () Bool)

(assert (=> b!266070 m!333325))

(declare-fun m!333327 () Bool)

(assert (=> b!266071 m!333327))

(assert (=> b!266071 m!330457))

(declare-fun m!333329 () Bool)

(assert (=> b!266071 m!333329))

(assert (=> b!266071 m!331471))

(declare-fun m!333331 () Bool)

(assert (=> d!76755 m!333331))

(assert (=> d!76755 m!330457))

(declare-fun m!333333 () Bool)

(assert (=> d!76755 m!333333))

(assert (=> d!76755 m!331477))

(assert (=> b!264827 d!76755))

(declare-fun bs!29260 () Bool)

(declare-fun b!266077 () Bool)

(assert (= bs!29260 (and b!266077 b!264939)))

(declare-fun lambda!8977 () Int)

(assert (=> bs!29260 (= lambda!8977 lambda!8928)))

(declare-fun bs!29261 () Bool)

(assert (= bs!29261 (and b!266077 b!265283)))

(assert (=> bs!29261 (= lambda!8977 lambda!8949)))

(declare-fun bs!29262 () Bool)

(assert (= bs!29262 (and b!266077 b!265370)))

(assert (=> bs!29262 (= lambda!8977 lambda!8956)))

(declare-fun bs!29263 () Bool)

(assert (= bs!29263 (and b!266077 b!264588)))

(assert (=> bs!29263 (not (= lambda!8977 lambda!8902))))

(declare-fun bs!29264 () Bool)

(assert (= bs!29264 (and b!266077 d!76111)))

(assert (=> bs!29264 (= lambda!8977 lambda!8933)))

(declare-fun bs!29265 () Bool)

(assert (= bs!29265 (and b!266077 d!76071)))

(assert (=> bs!29265 (not (= lambda!8977 lambda!8927))))

(declare-fun bs!29266 () Bool)

(assert (= bs!29266 (and b!266077 b!265057)))

(assert (=> bs!29266 (= lambda!8977 lambda!8936)))

(declare-fun bs!29267 () Bool)

(assert (= bs!29267 (and b!266077 d!76533)))

(assert (=> bs!29267 (not (= lambda!8977 lambda!8966))))

(declare-fun bs!29268 () Bool)

(assert (= bs!29268 (and b!266077 d!76149)))

(assert (=> bs!29268 (not (= lambda!8977 lambda!8934))))

(declare-fun bs!29269 () Bool)

(assert (= bs!29269 (and b!266077 b!265674)))

(assert (=> bs!29269 (= lambda!8977 lambda!8967)))

(declare-fun bs!29270 () Bool)

(assert (= bs!29270 (and b!266077 d!76439)))

(assert (=> bs!29270 (not (= lambda!8977 lambda!8960))))

(declare-fun bs!29271 () Bool)

(assert (= bs!29271 (and b!266077 d!76679)))

(assert (=> bs!29271 (= lambda!8977 lambda!8976)))

(declare-fun bs!29272 () Bool)

(assert (= bs!29272 (and b!266077 b!265517)))

(assert (=> bs!29272 (= lambda!8977 lambda!8961)))

(declare-fun bs!29273 () Bool)

(assert (= bs!29273 (and b!266077 b!264827)))

(assert (=> bs!29273 (= lambda!8977 lambda!8919)))

(declare-fun bs!29274 () Bool)

(assert (= bs!29274 (and b!266077 b!265049)))

(assert (=> bs!29274 (= lambda!8977 lambda!8935)))

(declare-fun b!266087 () Bool)

(declare-fun e!165315 () Bool)

(assert (=> b!266087 (= e!165315 true)))

(declare-fun b!266086 () Bool)

(declare-fun e!165314 () Bool)

(assert (=> b!266086 (= e!165314 e!165315)))

(declare-fun b!266085 () Bool)

(declare-fun e!165313 () Bool)

(assert (=> b!266085 (= e!165313 e!165314)))

(assert (=> b!266077 e!165313))

(assert (= b!266086 b!266087))

(assert (= b!266085 b!266086))

(assert (= (and b!266077 ((_ is Cons!3792) rules!1920)) b!266085))

(assert (=> b!266087 (< (dynLambda!1929 order!2893 (toValue!1450 (transformation!723 (h!9189 rules!1920)))) (dynLambda!1930 order!2895 lambda!8977))))

(assert (=> b!266087 (< (dynLambda!1931 order!2897 (toChars!1309 (transformation!723 (h!9189 rules!1920)))) (dynLambda!1930 order!2895 lambda!8977))))

(assert (=> b!266077 true))

(declare-fun e!165309 () List!3799)

(declare-fun e!165311 () List!3799)

(assert (=> b!266077 (= e!165309 e!165311)))

(declare-fun lt!108984 () Unit!4760)

(assert (=> b!266077 (= lt!108984 (forallContained!280 (t!37443 (t!37443 tokens!465)) lambda!8977 (h!9188 (t!37443 (t!37443 tokens!465)))))))

(declare-fun lt!108988 () List!3799)

(assert (=> b!266077 (= lt!108988 (printWithSeparatorTokenWhenNeededList!292 thiss!17480 rules!1920 (t!37443 (t!37443 (t!37443 tokens!465))) separatorToken!170))))

(declare-fun lt!108987 () Option!796)

(assert (=> b!266077 (= lt!108987 (maxPrefix!329 thiss!17480 rules!1920 (++!980 (list!1535 (charsOf!368 (h!9188 (t!37443 (t!37443 tokens!465))))) lt!108988)))))

(declare-fun c!50386 () Bool)

(assert (=> b!266077 (= c!50386 (and ((_ is Some!795) lt!108987) (= (_1!2340 (v!14652 lt!108987)) (h!9188 (t!37443 (t!37443 tokens!465))))))))

(declare-fun b!266078 () Bool)

(assert (=> b!266078 (= e!165309 Nil!3789)))

(declare-fun b!266079 () Bool)

(declare-fun e!165310 () List!3799)

(declare-fun call!14438 () List!3799)

(assert (=> b!266079 (= e!165310 (++!980 call!14438 lt!108988))))

(declare-fun b!266080 () Bool)

(declare-fun e!165312 () BalanceConc!2544)

(declare-fun call!14436 () BalanceConc!2544)

(assert (=> b!266080 (= e!165312 call!14436)))

(declare-fun bm!14431 () Bool)

(declare-fun call!14437 () List!3799)

(assert (=> bm!14431 (= call!14437 (list!1535 e!165312))))

(declare-fun c!50384 () Bool)

(declare-fun c!50383 () Bool)

(assert (=> bm!14431 (= c!50384 c!50383)))

(declare-fun b!266081 () Bool)

(assert (=> b!266081 (= e!165310 Nil!3789)))

(assert (=> b!266081 (= (print!334 thiss!17480 (singletonSeq!269 (h!9188 (t!37443 (t!37443 tokens!465))))) (printTailRec!297 thiss!17480 (singletonSeq!269 (h!9188 (t!37443 (t!37443 tokens!465)))) 0 (BalanceConc!2545 Empty!1268)))))

(declare-fun lt!108986 () Unit!4760)

(declare-fun Unit!4804 () Unit!4760)

(assert (=> b!266081 (= lt!108986 Unit!4804)))

(declare-fun lt!108989 () Unit!4760)

(assert (=> b!266081 (= lt!108989 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!106 thiss!17480 rules!1920 call!14437 lt!108988))))

(assert (=> b!266081 false))

(declare-fun lt!108985 () Unit!4760)

(declare-fun Unit!4805 () Unit!4760)

(assert (=> b!266081 (= lt!108985 Unit!4805)))

(declare-fun bm!14432 () Bool)

(declare-fun call!14439 () List!3799)

(assert (=> bm!14432 (= call!14438 (++!980 call!14439 (ite c!50386 lt!108988 call!14437)))))

(declare-fun b!266082 () Bool)

(assert (=> b!266082 (= e!165312 (charsOf!368 separatorToken!170))))

(declare-fun bm!14433 () Bool)

(declare-fun call!14435 () BalanceConc!2544)

(assert (=> bm!14433 (= call!14439 (list!1535 (ite c!50386 call!14435 call!14436)))))

(declare-fun b!266083 () Bool)

(assert (=> b!266083 (= e!165311 call!14438)))

(declare-fun bm!14430 () Bool)

(assert (=> bm!14430 (= call!14436 call!14435)))

(declare-fun d!76759 () Bool)

(declare-fun c!50385 () Bool)

(assert (=> d!76759 (= c!50385 ((_ is Cons!3791) (t!37443 (t!37443 tokens!465))))))

(assert (=> d!76759 (= (printWithSeparatorTokenWhenNeededList!292 thiss!17480 rules!1920 (t!37443 (t!37443 tokens!465)) separatorToken!170) e!165309)))

(declare-fun bm!14434 () Bool)

(assert (=> bm!14434 (= call!14435 (charsOf!368 (h!9188 (t!37443 (t!37443 tokens!465)))))))

(declare-fun b!266084 () Bool)

(assert (=> b!266084 (= c!50383 (and ((_ is Some!795) lt!108987) (not (= (_1!2340 (v!14652 lt!108987)) (h!9188 (t!37443 (t!37443 tokens!465)))))))))

(assert (=> b!266084 (= e!165311 e!165310)))

(assert (= (and d!76759 c!50385) b!266077))

(assert (= (and d!76759 (not c!50385)) b!266078))

(assert (= (and b!266077 c!50386) b!266083))

(assert (= (and b!266077 (not c!50386)) b!266084))

(assert (= (and b!266084 c!50383) b!266079))

(assert (= (and b!266084 (not c!50383)) b!266081))

(assert (= (or b!266079 b!266081) bm!14430))

(assert (= (or b!266079 b!266081) bm!14431))

(assert (= (and bm!14431 c!50384) b!266082))

(assert (= (and bm!14431 (not c!50384)) b!266080))

(assert (= (or b!266083 bm!14430) bm!14434))

(assert (= (or b!266083 b!266079) bm!14433))

(assert (= (or b!266083 b!266079) bm!14432))

(declare-fun m!333369 () Bool)

(assert (=> bm!14434 m!333369))

(assert (=> b!266082 m!330125))

(declare-fun m!333371 () Bool)

(assert (=> bm!14432 m!333371))

(declare-fun m!333373 () Bool)

(assert (=> b!266079 m!333373))

(declare-fun m!333375 () Bool)

(assert (=> bm!14433 m!333375))

(declare-fun m!333377 () Bool)

(assert (=> bm!14431 m!333377))

(declare-fun m!333379 () Bool)

(assert (=> b!266081 m!333379))

(assert (=> b!266081 m!333379))

(declare-fun m!333381 () Bool)

(assert (=> b!266081 m!333381))

(assert (=> b!266081 m!333379))

(declare-fun m!333385 () Bool)

(assert (=> b!266081 m!333385))

(declare-fun m!333387 () Bool)

(assert (=> b!266081 m!333387))

(declare-fun m!333389 () Bool)

(assert (=> b!266077 m!333389))

(assert (=> b!266077 m!333369))

(assert (=> b!266077 m!333369))

(declare-fun m!333391 () Bool)

(assert (=> b!266077 m!333391))

(declare-fun m!333393 () Bool)

(assert (=> b!266077 m!333393))

(declare-fun m!333395 () Bool)

(assert (=> b!266077 m!333395))

(assert (=> b!266077 m!333391))

(assert (=> b!266077 m!333393))

(declare-fun m!333397 () Bool)

(assert (=> b!266077 m!333397))

(assert (=> b!264827 d!76759))

(declare-fun b!266208 () Bool)

(declare-fun e!165381 () Option!796)

(declare-fun call!14454 () Option!796)

(assert (=> b!266208 (= e!165381 call!14454)))

(declare-fun b!266209 () Bool)

(declare-fun e!165382 () Bool)

(declare-fun lt!109063 () Option!796)

(declare-fun contains!710 (List!3802 Rule!1246) Bool)

(assert (=> b!266209 (= e!165382 (contains!710 rules!1920 (rule!1308 (_1!2340 (get!1246 lt!109063)))))))

(declare-fun d!76771 () Bool)

(declare-fun e!165383 () Bool)

(assert (=> d!76771 e!165383))

(declare-fun res!122048 () Bool)

(assert (=> d!76771 (=> res!122048 e!165383)))

(assert (=> d!76771 (= res!122048 (isEmpty!2387 lt!109063))))

(assert (=> d!76771 (= lt!109063 e!165381)))

(declare-fun c!50420 () Bool)

(assert (=> d!76771 (= c!50420 (and ((_ is Cons!3792) rules!1920) ((_ is Nil!3792) (t!37444 rules!1920))))))

(declare-fun lt!109067 () Unit!4760)

(declare-fun lt!109066 () Unit!4760)

(assert (=> d!76771 (= lt!109067 lt!109066)))

(assert (=> d!76771 (isPrefix!392 (++!980 (list!1535 (charsOf!368 (h!9188 (t!37443 tokens!465)))) lt!108228) (++!980 (list!1535 (charsOf!368 (h!9188 (t!37443 tokens!465)))) lt!108228))))

(assert (=> d!76771 (= lt!109066 (lemmaIsPrefixRefl!202 (++!980 (list!1535 (charsOf!368 (h!9188 (t!37443 tokens!465)))) lt!108228) (++!980 (list!1535 (charsOf!368 (h!9188 (t!37443 tokens!465)))) lt!108228)))))

(assert (=> d!76771 (rulesValidInductive!198 thiss!17480 rules!1920)))

(assert (=> d!76771 (= (maxPrefix!329 thiss!17480 rules!1920 (++!980 (list!1535 (charsOf!368 (h!9188 (t!37443 tokens!465)))) lt!108228)) lt!109063)))

(declare-fun b!266210 () Bool)

(declare-fun res!122047 () Bool)

(assert (=> b!266210 (=> (not res!122047) (not e!165382))))

(assert (=> b!266210 (= res!122047 (= (list!1535 (charsOf!368 (_1!2340 (get!1246 lt!109063)))) (originalCharacters!766 (_1!2340 (get!1246 lt!109063)))))))

(declare-fun b!266212 () Bool)

(declare-fun res!122043 () Bool)

(assert (=> b!266212 (=> (not res!122043) (not e!165382))))

(assert (=> b!266212 (= res!122043 (= (++!980 (list!1535 (charsOf!368 (_1!2340 (get!1246 lt!109063)))) (_2!2340 (get!1246 lt!109063))) (++!980 (list!1535 (charsOf!368 (h!9188 (t!37443 tokens!465)))) lt!108228)))))

(declare-fun b!266213 () Bool)

(assert (=> b!266213 (= e!165383 e!165382)))

(declare-fun res!122044 () Bool)

(assert (=> b!266213 (=> (not res!122044) (not e!165382))))

(assert (=> b!266213 (= res!122044 (isDefined!637 lt!109063))))

(declare-fun b!266214 () Bool)

(declare-fun res!122046 () Bool)

(assert (=> b!266214 (=> (not res!122046) (not e!165382))))

(declare-fun apply!754 (TokenValueInjection!1262 BalanceConc!2544) TokenValue!745)

(assert (=> b!266214 (= res!122046 (= (value!24921 (_1!2340 (get!1246 lt!109063))) (apply!754 (transformation!723 (rule!1308 (_1!2340 (get!1246 lt!109063)))) (seqFromList!813 (originalCharacters!766 (_1!2340 (get!1246 lt!109063)))))))))

(declare-fun b!266215 () Bool)

(declare-fun res!122042 () Bool)

(assert (=> b!266215 (=> (not res!122042) (not e!165382))))

(assert (=> b!266215 (= res!122042 (matchR!270 (regex!723 (rule!1308 (_1!2340 (get!1246 lt!109063)))) (list!1535 (charsOf!368 (_1!2340 (get!1246 lt!109063))))))))

(declare-fun b!266216 () Bool)

(declare-fun lt!109064 () Option!796)

(declare-fun lt!109065 () Option!796)

(assert (=> b!266216 (= e!165381 (ite (and ((_ is None!795) lt!109064) ((_ is None!795) lt!109065)) None!795 (ite ((_ is None!795) lt!109065) lt!109064 (ite ((_ is None!795) lt!109064) lt!109065 (ite (>= (size!3011 (_1!2340 (v!14652 lt!109064))) (size!3011 (_1!2340 (v!14652 lt!109065)))) lt!109064 lt!109065)))))))

(assert (=> b!266216 (= lt!109064 call!14454)))

(assert (=> b!266216 (= lt!109065 (maxPrefix!329 thiss!17480 (t!37444 rules!1920) (++!980 (list!1535 (charsOf!368 (h!9188 (t!37443 tokens!465)))) lt!108228)))))

(declare-fun bm!14449 () Bool)

(assert (=> bm!14449 (= call!14454 (maxPrefixOneRule!136 thiss!17480 (h!9189 rules!1920) (++!980 (list!1535 (charsOf!368 (h!9188 (t!37443 tokens!465)))) lt!108228)))))

(declare-fun b!266217 () Bool)

(declare-fun res!122045 () Bool)

(assert (=> b!266217 (=> (not res!122045) (not e!165382))))

(assert (=> b!266217 (= res!122045 (< (size!3015 (_2!2340 (get!1246 lt!109063))) (size!3015 (++!980 (list!1535 (charsOf!368 (h!9188 (t!37443 tokens!465)))) lt!108228))))))

(assert (= (and d!76771 c!50420) b!266208))

(assert (= (and d!76771 (not c!50420)) b!266216))

(assert (= (or b!266208 b!266216) bm!14449))

(assert (= (and d!76771 (not res!122048)) b!266213))

(assert (= (and b!266213 res!122044) b!266210))

(assert (= (and b!266210 res!122047) b!266217))

(assert (= (and b!266217 res!122045) b!266212))

(assert (= (and b!266212 res!122043) b!266214))

(assert (= (and b!266214 res!122046) b!266215))

(assert (= (and b!266215 res!122042) b!266209))

(declare-fun m!333755 () Bool)

(assert (=> b!266214 m!333755))

(declare-fun m!333761 () Bool)

(assert (=> b!266214 m!333761))

(assert (=> b!266214 m!333761))

(declare-fun m!333771 () Bool)

(assert (=> b!266214 m!333771))

(assert (=> b!266209 m!333755))

(declare-fun m!333775 () Bool)

(assert (=> b!266209 m!333775))

(assert (=> b!266215 m!333755))

(declare-fun m!333777 () Bool)

(assert (=> b!266215 m!333777))

(assert (=> b!266215 m!333777))

(declare-fun m!333781 () Bool)

(assert (=> b!266215 m!333781))

(assert (=> b!266215 m!333781))

(declare-fun m!333785 () Bool)

(assert (=> b!266215 m!333785))

(declare-fun m!333787 () Bool)

(assert (=> d!76771 m!333787))

(assert (=> d!76771 m!330459))

(assert (=> d!76771 m!330459))

(declare-fun m!333789 () Bool)

(assert (=> d!76771 m!333789))

(assert (=> d!76771 m!330459))

(assert (=> d!76771 m!330459))

(declare-fun m!333791 () Bool)

(assert (=> d!76771 m!333791))

(assert (=> d!76771 m!331981))

(assert (=> bm!14449 m!330459))

(declare-fun m!333793 () Bool)

(assert (=> bm!14449 m!333793))

(assert (=> b!266217 m!333755))

(declare-fun m!333795 () Bool)

(assert (=> b!266217 m!333795))

(assert (=> b!266217 m!330459))

(declare-fun m!333797 () Bool)

(assert (=> b!266217 m!333797))

(assert (=> b!266216 m!330459))

(declare-fun m!333799 () Bool)

(assert (=> b!266216 m!333799))

(declare-fun m!333801 () Bool)

(assert (=> b!266213 m!333801))

(assert (=> b!266210 m!333755))

(assert (=> b!266210 m!333777))

(assert (=> b!266210 m!333777))

(assert (=> b!266210 m!333781))

(assert (=> b!266212 m!333755))

(assert (=> b!266212 m!333777))

(assert (=> b!266212 m!333777))

(assert (=> b!266212 m!333781))

(assert (=> b!266212 m!333781))

(declare-fun m!333813 () Bool)

(assert (=> b!266212 m!333813))

(assert (=> b!264827 d!76771))

(declare-fun d!76833 () Bool)

(assert (=> d!76833 (= (list!1535 (charsOf!368 (h!9188 (t!37443 tokens!465)))) (list!1539 (c!50020 (charsOf!368 (h!9188 (t!37443 tokens!465))))))))

(declare-fun bs!29322 () Bool)

(assert (= bs!29322 d!76833))

(declare-fun m!333815 () Bool)

(assert (=> bs!29322 m!333815))

(assert (=> b!264827 d!76833))

(assert (=> b!264827 d!76353))

(declare-fun b!266239 () Bool)

(declare-fun res!122055 () Bool)

(declare-fun e!165397 () Bool)

(assert (=> b!266239 (=> (not res!122055) (not e!165397))))

(assert (=> b!266239 (= res!122055 (isBalanced!343 (++!984 (c!50020 call!14359) (c!50020 lt!108367))))))

(declare-fun b!266241 () Bool)

(declare-fun res!122053 () Bool)

(assert (=> b!266241 (=> (not res!122053) (not e!165397))))

(assert (=> b!266241 (= res!122053 (>= (height!147 (++!984 (c!50020 call!14359) (c!50020 lt!108367))) (max!0 (height!147 (c!50020 call!14359)) (height!147 (c!50020 lt!108367)))))))

(declare-fun d!76835 () Bool)

(assert (=> d!76835 e!165397))

(declare-fun res!122054 () Bool)

(assert (=> d!76835 (=> (not res!122054) (not e!165397))))

(assert (=> d!76835 (= res!122054 (appendAssocInst!59 (c!50020 call!14359) (c!50020 lt!108367)))))

(declare-fun lt!109077 () BalanceConc!2544)

(assert (=> d!76835 (= lt!109077 (BalanceConc!2545 (++!984 (c!50020 call!14359) (c!50020 lt!108367))))))

(assert (=> d!76835 (= (++!982 call!14359 lt!108367) lt!109077)))

(declare-fun b!266242 () Bool)

(assert (=> b!266242 (= e!165397 (= (list!1535 lt!109077) (++!980 (list!1535 call!14359) (list!1535 lt!108367))))))

(declare-fun b!266240 () Bool)

(declare-fun res!122052 () Bool)

(assert (=> b!266240 (=> (not res!122052) (not e!165397))))

(assert (=> b!266240 (= res!122052 (<= (height!147 (++!984 (c!50020 call!14359) (c!50020 lt!108367))) (+ (max!0 (height!147 (c!50020 call!14359)) (height!147 (c!50020 lt!108367))) 1)))))

(assert (= (and d!76835 res!122054) b!266239))

(assert (= (and b!266239 res!122055) b!266240))

(assert (= (and b!266240 res!122052) b!266241))

(assert (= (and b!266241 res!122053) b!266242))

(declare-fun m!333828 () Bool)

(assert (=> b!266240 m!333828))

(assert (=> b!266240 m!333828))

(assert (=> b!266240 m!332247))

(declare-fun m!333833 () Bool)

(assert (=> b!266240 m!333833))

(declare-fun m!333835 () Bool)

(assert (=> b!266240 m!333835))

(declare-fun m!333837 () Bool)

(assert (=> b!266240 m!333837))

(assert (=> b!266240 m!333835))

(assert (=> b!266240 m!332247))

(assert (=> b!266239 m!333835))

(assert (=> b!266239 m!333835))

(declare-fun m!333839 () Bool)

(assert (=> b!266239 m!333839))

(declare-fun m!333841 () Bool)

(assert (=> b!266242 m!333841))

(declare-fun m!333843 () Bool)

(assert (=> b!266242 m!333843))

(assert (=> b!266242 m!330859))

(assert (=> b!266242 m!333843))

(assert (=> b!266242 m!330859))

(declare-fun m!333845 () Bool)

(assert (=> b!266242 m!333845))

(assert (=> b!266241 m!333828))

(assert (=> b!266241 m!333828))

(assert (=> b!266241 m!332247))

(assert (=> b!266241 m!333833))

(assert (=> b!266241 m!333835))

(assert (=> b!266241 m!333837))

(assert (=> b!266241 m!333835))

(assert (=> b!266241 m!332247))

(declare-fun m!333847 () Bool)

(assert (=> d!76835 m!333847))

(assert (=> d!76835 m!333835))

(assert (=> b!265045 d!76835))

(declare-fun lt!109080 () BalanceConc!2544)

(declare-fun d!76841 () Bool)

(assert (=> d!76841 (= (list!1535 lt!109080) (originalCharacters!766 (ite c!50105 call!14351 call!14353)))))

(assert (=> d!76841 (= lt!109080 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (ite c!50105 call!14351 call!14353)))) (value!24921 (ite c!50105 call!14351 call!14353))))))

(assert (=> d!76841 (= (charsOf!368 (ite c!50105 call!14351 call!14353)) lt!109080)))

(declare-fun b_lambda!8319 () Bool)

(assert (=> (not b_lambda!8319) (not d!76841)))

(declare-fun tb!14659 () Bool)

(declare-fun t!37672 () Bool)

(assert (=> (and b!264597 (= (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))) (toChars!1309 (transformation!723 (rule!1308 (ite c!50105 call!14351 call!14353))))) t!37672) tb!14659))

(declare-fun e!165405 () Bool)

(declare-fun b!266257 () Bool)

(declare-fun tp!101477 () Bool)

(assert (=> b!266257 (= e!165405 (and (inv!4685 (c!50020 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (ite c!50105 call!14351 call!14353)))) (value!24921 (ite c!50105 call!14351 call!14353))))) tp!101477))))

(declare-fun result!18214 () Bool)

(assert (=> tb!14659 (= result!18214 (and (inv!4686 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (ite c!50105 call!14351 call!14353)))) (value!24921 (ite c!50105 call!14351 call!14353)))) e!165405))))

(assert (= tb!14659 b!266257))

(declare-fun m!333855 () Bool)

(assert (=> b!266257 m!333855))

(declare-fun m!333857 () Bool)

(assert (=> tb!14659 m!333857))

(assert (=> d!76841 t!37672))

(declare-fun b_and!20963 () Bool)

(assert (= b_and!20933 (and (=> t!37672 result!18214) b_and!20963)))

(declare-fun t!37674 () Bool)

(declare-fun tb!14661 () Bool)

(assert (=> (and b!265105 (= (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 tokens!465))))) (toChars!1309 (transformation!723 (rule!1308 (ite c!50105 call!14351 call!14353))))) t!37674) tb!14661))

(declare-fun result!18216 () Bool)

(assert (= result!18216 result!18214))

(assert (=> d!76841 t!37674))

(declare-fun b_and!20965 () Bool)

(assert (= b_and!20937 (and (=> t!37674 result!18216) b_and!20965)))

(declare-fun t!37676 () Bool)

(declare-fun tb!14663 () Bool)

(assert (=> (and b!265124 (= (toChars!1309 (transformation!723 (h!9189 (t!37444 rules!1920)))) (toChars!1309 (transformation!723 (rule!1308 (ite c!50105 call!14351 call!14353))))) t!37676) tb!14663))

(declare-fun result!18218 () Bool)

(assert (= result!18218 result!18214))

(assert (=> d!76841 t!37676))

(declare-fun b_and!20967 () Bool)

(assert (= b_and!20939 (and (=> t!37676 result!18218) b_and!20967)))

(declare-fun tb!14665 () Bool)

(declare-fun t!37678 () Bool)

(assert (=> (and b!264593 (= (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))) (toChars!1309 (transformation!723 (rule!1308 (ite c!50105 call!14351 call!14353))))) t!37678) tb!14665))

(declare-fun result!18220 () Bool)

(assert (= result!18220 result!18214))

(assert (=> d!76841 t!37678))

(declare-fun b_and!20969 () Bool)

(assert (= b_and!20941 (and (=> t!37678 result!18220) b_and!20969)))

(declare-fun tb!14667 () Bool)

(declare-fun t!37680 () Bool)

(assert (=> (and b!264598 (= (toChars!1309 (transformation!723 (h!9189 rules!1920))) (toChars!1309 (transformation!723 (rule!1308 (ite c!50105 call!14351 call!14353))))) t!37680) tb!14667))

(declare-fun result!18222 () Bool)

(assert (= result!18222 result!18214))

(assert (=> d!76841 t!37680))

(declare-fun b_and!20971 () Bool)

(assert (= b_and!20935 (and (=> t!37680 result!18222) b_and!20971)))

(declare-fun m!333859 () Bool)

(assert (=> d!76841 m!333859))

(declare-fun m!333861 () Bool)

(assert (=> d!76841 m!333861))

(assert (=> bm!14348 d!76841))

(declare-fun d!76845 () Bool)

(declare-fun e!165415 () Bool)

(assert (=> d!76845 e!165415))

(declare-fun res!122067 () Bool)

(assert (=> d!76845 (=> (not res!122067) (not e!165415))))

(declare-fun lt!109087 () BalanceConc!2546)

(assert (=> d!76845 (= res!122067 (= (list!1538 lt!109087) tokens!465))))

(declare-fun fromList!169 (List!3801) Conc!1269)

(assert (=> d!76845 (= lt!109087 (BalanceConc!2547 (fromList!169 tokens!465)))))

(assert (=> d!76845 (= (fromListB!308 tokens!465) lt!109087)))

(declare-fun b!266275 () Bool)

(assert (=> b!266275 (= e!165415 (isBalanced!341 (fromList!169 tokens!465)))))

(assert (= (and d!76845 res!122067) b!266275))

(declare-fun m!333899 () Bool)

(assert (=> d!76845 m!333899))

(declare-fun m!333901 () Bool)

(assert (=> d!76845 m!333901))

(assert (=> b!266275 m!333901))

(assert (=> b!266275 m!333901))

(declare-fun m!333903 () Bool)

(assert (=> b!266275 m!333903))

(assert (=> d!76115 d!76845))

(declare-fun b!266284 () Bool)

(declare-fun res!122071 () Bool)

(declare-fun e!165418 () Bool)

(assert (=> b!266284 (=> (not res!122071) (not e!165418))))

(assert (=> b!266284 (= res!122071 (isBalanced!343 (++!984 (c!50020 call!14357) (c!50020 (ite c!50118 lt!108367 call!14355)))))))

(declare-fun b!266286 () Bool)

(declare-fun res!122069 () Bool)

(assert (=> b!266286 (=> (not res!122069) (not e!165418))))

(assert (=> b!266286 (= res!122069 (>= (height!147 (++!984 (c!50020 call!14357) (c!50020 (ite c!50118 lt!108367 call!14355)))) (max!0 (height!147 (c!50020 call!14357)) (height!147 (c!50020 (ite c!50118 lt!108367 call!14355))))))))

(declare-fun d!76857 () Bool)

(assert (=> d!76857 e!165418))

(declare-fun res!122070 () Bool)

(assert (=> d!76857 (=> (not res!122070) (not e!165418))))

(assert (=> d!76857 (= res!122070 (appendAssocInst!59 (c!50020 call!14357) (c!50020 (ite c!50118 lt!108367 call!14355))))))

(declare-fun lt!109088 () BalanceConc!2544)

(assert (=> d!76857 (= lt!109088 (BalanceConc!2545 (++!984 (c!50020 call!14357) (c!50020 (ite c!50118 lt!108367 call!14355)))))))

(assert (=> d!76857 (= (++!982 call!14357 (ite c!50118 lt!108367 call!14355)) lt!109088)))

(declare-fun b!266287 () Bool)

(assert (=> b!266287 (= e!165418 (= (list!1535 lt!109088) (++!980 (list!1535 call!14357) (list!1535 (ite c!50118 lt!108367 call!14355)))))))

(declare-fun b!266285 () Bool)

(declare-fun res!122068 () Bool)

(assert (=> b!266285 (=> (not res!122068) (not e!165418))))

(assert (=> b!266285 (= res!122068 (<= (height!147 (++!984 (c!50020 call!14357) (c!50020 (ite c!50118 lt!108367 call!14355)))) (+ (max!0 (height!147 (c!50020 call!14357)) (height!147 (c!50020 (ite c!50118 lt!108367 call!14355)))) 1)))))

(assert (= (and d!76857 res!122070) b!266284))

(assert (= (and b!266284 res!122071) b!266285))

(assert (= (and b!266285 res!122068) b!266286))

(assert (= (and b!266286 res!122069) b!266287))

(declare-fun m!333905 () Bool)

(assert (=> b!266285 m!333905))

(assert (=> b!266285 m!333905))

(declare-fun m!333907 () Bool)

(assert (=> b!266285 m!333907))

(declare-fun m!333909 () Bool)

(assert (=> b!266285 m!333909))

(declare-fun m!333911 () Bool)

(assert (=> b!266285 m!333911))

(declare-fun m!333913 () Bool)

(assert (=> b!266285 m!333913))

(assert (=> b!266285 m!333911))

(assert (=> b!266285 m!333907))

(assert (=> b!266284 m!333911))

(assert (=> b!266284 m!333911))

(declare-fun m!333915 () Bool)

(assert (=> b!266284 m!333915))

(declare-fun m!333917 () Bool)

(assert (=> b!266287 m!333917))

(declare-fun m!333919 () Bool)

(assert (=> b!266287 m!333919))

(declare-fun m!333921 () Bool)

(assert (=> b!266287 m!333921))

(assert (=> b!266287 m!333919))

(assert (=> b!266287 m!333921))

(declare-fun m!333923 () Bool)

(assert (=> b!266287 m!333923))

(assert (=> b!266286 m!333905))

(assert (=> b!266286 m!333905))

(assert (=> b!266286 m!333907))

(assert (=> b!266286 m!333909))

(assert (=> b!266286 m!333911))

(assert (=> b!266286 m!333913))

(assert (=> b!266286 m!333911))

(assert (=> b!266286 m!333907))

(declare-fun m!333925 () Bool)

(assert (=> d!76857 m!333925))

(assert (=> d!76857 m!333911))

(assert (=> bm!14350 d!76857))

(declare-fun bs!29323 () Bool)

(declare-fun d!76859 () Bool)

(assert (= bs!29323 (and d!76859 d!76315)))

(declare-fun lambda!8981 () Int)

(assert (=> bs!29323 (= (= (toValue!1450 (transformation!723 (rule!1308 (h!9188 tokens!465)))) (toValue!1450 (transformation!723 (h!9189 rules!1920)))) (= lambda!8981 lambda!8955))))

(declare-fun bs!29324 () Bool)

(assert (= bs!29324 (and d!76859 d!76491)))

(assert (=> bs!29324 (= (= (toValue!1450 (transformation!723 (rule!1308 (h!9188 tokens!465)))) (toValue!1450 (transformation!723 (rule!1308 separatorToken!170)))) (= lambda!8981 lambda!8965))))

(assert (=> d!76859 true))

(assert (=> d!76859 (< (dynLambda!1929 order!2893 (toValue!1450 (transformation!723 (rule!1308 (h!9188 tokens!465))))) (dynLambda!1934 order!2905 lambda!8981))))

(assert (=> d!76859 (= (equivClasses!236 (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))) (toValue!1450 (transformation!723 (rule!1308 (h!9188 tokens!465))))) (Forall2!143 lambda!8981))))

(declare-fun bs!29325 () Bool)

(assert (= bs!29325 d!76859))

(declare-fun m!333927 () Bool)

(assert (=> bs!29325 m!333927))

(assert (=> b!265022 d!76859))

(declare-fun d!76861 () Bool)

(assert (=> d!76861 (= (list!1535 lt!108337) (list!1539 (c!50020 lt!108337)))))

(declare-fun bs!29326 () Bool)

(assert (= bs!29326 d!76861))

(declare-fun m!333929 () Bool)

(assert (=> bs!29326 m!333929))

(assert (=> d!76127 d!76861))

(declare-fun d!76863 () Bool)

(declare-fun c!50437 () Bool)

(assert (=> d!76863 (= c!50437 ((_ is Cons!3791) (list!1538 lt!108109)))))

(declare-fun e!165441 () List!3799)

(assert (=> d!76863 (= (printList!285 thiss!17480 (list!1538 lt!108109)) e!165441)))

(declare-fun b!266332 () Bool)

(assert (=> b!266332 (= e!165441 (++!980 (list!1535 (charsOf!368 (h!9188 (list!1538 lt!108109)))) (printList!285 thiss!17480 (t!37443 (list!1538 lt!108109)))))))

(declare-fun b!266333 () Bool)

(assert (=> b!266333 (= e!165441 Nil!3789)))

(assert (= (and d!76863 c!50437) b!266332))

(assert (= (and d!76863 (not c!50437)) b!266333))

(declare-fun m!333931 () Bool)

(assert (=> b!266332 m!333931))

(assert (=> b!266332 m!333931))

(declare-fun m!333933 () Bool)

(assert (=> b!266332 m!333933))

(declare-fun m!333935 () Bool)

(assert (=> b!266332 m!333935))

(assert (=> b!266332 m!333933))

(assert (=> b!266332 m!333935))

(declare-fun m!333937 () Bool)

(assert (=> b!266332 m!333937))

(assert (=> d!76127 d!76863))

(assert (=> d!76127 d!76739))

(assert (=> d!76127 d!76131))

(declare-fun d!76865 () Bool)

(assert (=> d!76865 (= (list!1535 e!164540) (list!1539 (c!50020 e!164540)))))

(declare-fun bs!29327 () Bool)

(assert (= bs!29327 d!76865))

(declare-fun m!333939 () Bool)

(assert (=> bs!29327 m!333939))

(assert (=> bm!14321 d!76865))

(declare-fun d!76867 () Bool)

(assert (=> d!76867 (dynLambda!1928 lambda!8936 (h!9188 tokens!465))))

(declare-fun lt!109089 () Unit!4760)

(assert (=> d!76867 (= lt!109089 (choose!2429 tokens!465 lambda!8936 (h!9188 tokens!465)))))

(declare-fun e!165442 () Bool)

(assert (=> d!76867 e!165442))

(declare-fun res!122072 () Bool)

(assert (=> d!76867 (=> (not res!122072) (not e!165442))))

(assert (=> d!76867 (= res!122072 (forall!939 tokens!465 lambda!8936))))

(assert (=> d!76867 (= (forallContained!280 tokens!465 lambda!8936 (h!9188 tokens!465)) lt!109089)))

(declare-fun b!266334 () Bool)

(assert (=> b!266334 (= e!165442 (contains!706 tokens!465 (h!9188 tokens!465)))))

(assert (= (and d!76867 res!122072) b!266334))

(declare-fun b_lambda!8321 () Bool)

(assert (=> (not b_lambda!8321) (not d!76867)))

(declare-fun m!333941 () Bool)

(assert (=> d!76867 m!333941))

(declare-fun m!333943 () Bool)

(assert (=> d!76867 m!333943))

(declare-fun m!333945 () Bool)

(assert (=> d!76867 m!333945))

(declare-fun m!333947 () Bool)

(assert (=> b!266334 m!333947))

(assert (=> b!265057 d!76867))

(declare-fun e!165446 () Bool)

(declare-fun b!266341 () Bool)

(declare-fun lt!109090 () List!3799)

(assert (=> b!266341 (= e!165446 (or (not (= lt!108380 Nil!3789)) (= lt!109090 (list!1535 (charsOf!368 (h!9188 tokens!465))))))))

(declare-fun b!266339 () Bool)

(declare-fun e!165445 () List!3799)

(assert (=> b!266339 (= e!165445 (Cons!3789 (h!9186 (list!1535 (charsOf!368 (h!9188 tokens!465)))) (++!980 (t!37441 (list!1535 (charsOf!368 (h!9188 tokens!465)))) lt!108380)))))

(declare-fun b!266340 () Bool)

(declare-fun res!122073 () Bool)

(assert (=> b!266340 (=> (not res!122073) (not e!165446))))

(assert (=> b!266340 (= res!122073 (= (size!3015 lt!109090) (+ (size!3015 (list!1535 (charsOf!368 (h!9188 tokens!465)))) (size!3015 lt!108380))))))

(declare-fun d!76869 () Bool)

(assert (=> d!76869 e!165446))

(declare-fun res!122074 () Bool)

(assert (=> d!76869 (=> (not res!122074) (not e!165446))))

(assert (=> d!76869 (= res!122074 (= (content!539 lt!109090) ((_ map or) (content!539 (list!1535 (charsOf!368 (h!9188 tokens!465)))) (content!539 lt!108380))))))

(assert (=> d!76869 (= lt!109090 e!165445)))

(declare-fun c!50438 () Bool)

(assert (=> d!76869 (= c!50438 ((_ is Nil!3789) (list!1535 (charsOf!368 (h!9188 tokens!465)))))))

(assert (=> d!76869 (= (++!980 (list!1535 (charsOf!368 (h!9188 tokens!465))) lt!108380) lt!109090)))

(declare-fun b!266338 () Bool)

(assert (=> b!266338 (= e!165445 lt!108380)))

(assert (= (and d!76869 c!50438) b!266338))

(assert (= (and d!76869 (not c!50438)) b!266339))

(assert (= (and d!76869 res!122074) b!266340))

(assert (= (and b!266340 res!122073) b!266341))

(declare-fun m!333955 () Bool)

(assert (=> b!266339 m!333955))

(declare-fun m!333957 () Bool)

(assert (=> b!266340 m!333957))

(assert (=> b!266340 m!330139))

(declare-fun m!333959 () Bool)

(assert (=> b!266340 m!333959))

(assert (=> b!266340 m!331519))

(declare-fun m!333961 () Bool)

(assert (=> d!76869 m!333961))

(assert (=> d!76869 m!330139))

(declare-fun m!333963 () Bool)

(assert (=> d!76869 m!333963))

(assert (=> d!76869 m!331525))

(assert (=> b!265057 d!76869))

(assert (=> b!265057 d!76019))

(assert (=> b!265057 d!76103))

(declare-fun b!266350 () Bool)

(declare-fun e!165451 () Option!796)

(declare-fun call!14458 () Option!796)

(assert (=> b!266350 (= e!165451 call!14458)))

(declare-fun b!266351 () Bool)

(declare-fun e!165453 () Bool)

(declare-fun lt!109091 () Option!796)

(assert (=> b!266351 (= e!165453 (contains!710 rules!1920 (rule!1308 (_1!2340 (get!1246 lt!109091)))))))

(declare-fun d!76871 () Bool)

(declare-fun e!165454 () Bool)

(assert (=> d!76871 e!165454))

(declare-fun res!122081 () Bool)

(assert (=> d!76871 (=> res!122081 e!165454)))

(assert (=> d!76871 (= res!122081 (isEmpty!2387 lt!109091))))

(assert (=> d!76871 (= lt!109091 e!165451)))

(declare-fun c!50439 () Bool)

(assert (=> d!76871 (= c!50439 (and ((_ is Cons!3792) rules!1920) ((_ is Nil!3792) (t!37444 rules!1920))))))

(declare-fun lt!109095 () Unit!4760)

(declare-fun lt!109094 () Unit!4760)

(assert (=> d!76871 (= lt!109095 lt!109094)))

(assert (=> d!76871 (isPrefix!392 (++!980 (list!1535 (charsOf!368 (h!9188 tokens!465))) lt!108380) (++!980 (list!1535 (charsOf!368 (h!9188 tokens!465))) lt!108380))))

(assert (=> d!76871 (= lt!109094 (lemmaIsPrefixRefl!202 (++!980 (list!1535 (charsOf!368 (h!9188 tokens!465))) lt!108380) (++!980 (list!1535 (charsOf!368 (h!9188 tokens!465))) lt!108380)))))

(assert (=> d!76871 (rulesValidInductive!198 thiss!17480 rules!1920)))

(assert (=> d!76871 (= (maxPrefix!329 thiss!17480 rules!1920 (++!980 (list!1535 (charsOf!368 (h!9188 tokens!465))) lt!108380)) lt!109091)))

(declare-fun b!266352 () Bool)

(declare-fun res!122080 () Bool)

(assert (=> b!266352 (=> (not res!122080) (not e!165453))))

(assert (=> b!266352 (= res!122080 (= (list!1535 (charsOf!368 (_1!2340 (get!1246 lt!109091)))) (originalCharacters!766 (_1!2340 (get!1246 lt!109091)))))))

(declare-fun b!266353 () Bool)

(declare-fun res!122076 () Bool)

(assert (=> b!266353 (=> (not res!122076) (not e!165453))))

(assert (=> b!266353 (= res!122076 (= (++!980 (list!1535 (charsOf!368 (_1!2340 (get!1246 lt!109091)))) (_2!2340 (get!1246 lt!109091))) (++!980 (list!1535 (charsOf!368 (h!9188 tokens!465))) lt!108380)))))

(declare-fun b!266354 () Bool)

(assert (=> b!266354 (= e!165454 e!165453)))

(declare-fun res!122077 () Bool)

(assert (=> b!266354 (=> (not res!122077) (not e!165453))))

(assert (=> b!266354 (= res!122077 (isDefined!637 lt!109091))))

(declare-fun b!266355 () Bool)

(declare-fun res!122079 () Bool)

(assert (=> b!266355 (=> (not res!122079) (not e!165453))))

(assert (=> b!266355 (= res!122079 (= (value!24921 (_1!2340 (get!1246 lt!109091))) (apply!754 (transformation!723 (rule!1308 (_1!2340 (get!1246 lt!109091)))) (seqFromList!813 (originalCharacters!766 (_1!2340 (get!1246 lt!109091)))))))))

(declare-fun b!266356 () Bool)

(declare-fun res!122075 () Bool)

(assert (=> b!266356 (=> (not res!122075) (not e!165453))))

(assert (=> b!266356 (= res!122075 (matchR!270 (regex!723 (rule!1308 (_1!2340 (get!1246 lt!109091)))) (list!1535 (charsOf!368 (_1!2340 (get!1246 lt!109091))))))))

(declare-fun b!266357 () Bool)

(declare-fun lt!109092 () Option!796)

(declare-fun lt!109093 () Option!796)

(assert (=> b!266357 (= e!165451 (ite (and ((_ is None!795) lt!109092) ((_ is None!795) lt!109093)) None!795 (ite ((_ is None!795) lt!109093) lt!109092 (ite ((_ is None!795) lt!109092) lt!109093 (ite (>= (size!3011 (_1!2340 (v!14652 lt!109092))) (size!3011 (_1!2340 (v!14652 lt!109093)))) lt!109092 lt!109093)))))))

(assert (=> b!266357 (= lt!109092 call!14458)))

(assert (=> b!266357 (= lt!109093 (maxPrefix!329 thiss!17480 (t!37444 rules!1920) (++!980 (list!1535 (charsOf!368 (h!9188 tokens!465))) lt!108380)))))

(declare-fun bm!14453 () Bool)

(assert (=> bm!14453 (= call!14458 (maxPrefixOneRule!136 thiss!17480 (h!9189 rules!1920) (++!980 (list!1535 (charsOf!368 (h!9188 tokens!465))) lt!108380)))))

(declare-fun b!266358 () Bool)

(declare-fun res!122078 () Bool)

(assert (=> b!266358 (=> (not res!122078) (not e!165453))))

(assert (=> b!266358 (= res!122078 (< (size!3015 (_2!2340 (get!1246 lt!109091))) (size!3015 (++!980 (list!1535 (charsOf!368 (h!9188 tokens!465))) lt!108380))))))

(assert (= (and d!76871 c!50439) b!266350))

(assert (= (and d!76871 (not c!50439)) b!266357))

(assert (= (or b!266350 b!266357) bm!14453))

(assert (= (and d!76871 (not res!122081)) b!266354))

(assert (= (and b!266354 res!122077) b!266352))

(assert (= (and b!266352 res!122080) b!266358))

(assert (= (and b!266358 res!122078) b!266353))

(assert (= (and b!266353 res!122076) b!266355))

(assert (= (and b!266355 res!122079) b!266356))

(assert (= (and b!266356 res!122075) b!266351))

(declare-fun m!333965 () Bool)

(assert (=> b!266355 m!333965))

(declare-fun m!333967 () Bool)

(assert (=> b!266355 m!333967))

(assert (=> b!266355 m!333967))

(declare-fun m!333971 () Bool)

(assert (=> b!266355 m!333971))

(assert (=> b!266351 m!333965))

(declare-fun m!333977 () Bool)

(assert (=> b!266351 m!333977))

(assert (=> b!266356 m!333965))

(declare-fun m!333981 () Bool)

(assert (=> b!266356 m!333981))

(assert (=> b!266356 m!333981))

(declare-fun m!333983 () Bool)

(assert (=> b!266356 m!333983))

(assert (=> b!266356 m!333983))

(declare-fun m!333985 () Bool)

(assert (=> b!266356 m!333985))

(declare-fun m!333987 () Bool)

(assert (=> d!76871 m!333987))

(assert (=> d!76871 m!330911))

(assert (=> d!76871 m!330911))

(declare-fun m!333989 () Bool)

(assert (=> d!76871 m!333989))

(assert (=> d!76871 m!330911))

(assert (=> d!76871 m!330911))

(declare-fun m!333991 () Bool)

(assert (=> d!76871 m!333991))

(assert (=> d!76871 m!331981))

(assert (=> bm!14453 m!330911))

(declare-fun m!333993 () Bool)

(assert (=> bm!14453 m!333993))

(assert (=> b!266358 m!333965))

(declare-fun m!333995 () Bool)

(assert (=> b!266358 m!333995))

(assert (=> b!266358 m!330911))

(declare-fun m!333997 () Bool)

(assert (=> b!266358 m!333997))

(assert (=> b!266357 m!330911))

(declare-fun m!333999 () Bool)

(assert (=> b!266357 m!333999))

(declare-fun m!334001 () Bool)

(assert (=> b!266354 m!334001))

(assert (=> b!266352 m!333965))

(assert (=> b!266352 m!333981))

(assert (=> b!266352 m!333981))

(assert (=> b!266352 m!333983))

(assert (=> b!266353 m!333965))

(assert (=> b!266353 m!333981))

(assert (=> b!266353 m!333981))

(assert (=> b!266353 m!333983))

(assert (=> b!266353 m!333983))

(declare-fun m!334003 () Bool)

(assert (=> b!266353 m!334003))

(assert (=> b!265057 d!76871))

(assert (=> b!265057 d!76105))

(declare-fun d!76873 () Bool)

(assert (=> d!76873 (= (list!1535 (ite c!50080 call!14325 call!14326)) (list!1539 (c!50020 (ite c!50080 call!14325 call!14326))))))

(declare-fun bs!29328 () Bool)

(assert (= bs!29328 d!76873))

(declare-fun m!334005 () Bool)

(assert (=> bs!29328 m!334005))

(assert (=> bm!14323 d!76873))

(assert (=> b!265051 d!76339))

(declare-fun b!266372 () Bool)

(declare-fun e!165467 () List!3799)

(declare-fun e!165468 () List!3799)

(assert (=> b!266372 (= e!165467 e!165468)))

(declare-fun c!50441 () Bool)

(assert (=> b!266372 (= c!50441 ((_ is Leaf!1969) (c!50020 lt!108112)))))

(declare-fun b!266371 () Bool)

(assert (=> b!266371 (= e!165467 Nil!3789)))

(declare-fun b!266374 () Bool)

(assert (=> b!266374 (= e!165468 (++!980 (list!1539 (left!3116 (c!50020 lt!108112))) (list!1539 (right!3446 (c!50020 lt!108112)))))))

(declare-fun d!76875 () Bool)

(declare-fun c!50440 () Bool)

(assert (=> d!76875 (= c!50440 ((_ is Empty!1268) (c!50020 lt!108112)))))

(assert (=> d!76875 (= (list!1539 (c!50020 lt!108112)) e!165467)))

(declare-fun b!266373 () Bool)

(assert (=> b!266373 (= e!165468 (list!1543 (xs!3867 (c!50020 lt!108112))))))

(assert (= (and d!76875 c!50440) b!266371))

(assert (= (and d!76875 (not c!50440)) b!266372))

(assert (= (and b!266372 c!50441) b!266373))

(assert (= (and b!266372 (not c!50441)) b!266374))

(declare-fun m!334011 () Bool)

(assert (=> b!266374 m!334011))

(declare-fun m!334013 () Bool)

(assert (=> b!266374 m!334013))

(assert (=> b!266374 m!334011))

(assert (=> b!266374 m!334013))

(declare-fun m!334015 () Bool)

(assert (=> b!266374 m!334015))

(declare-fun m!334017 () Bool)

(assert (=> b!266373 m!334017))

(assert (=> d!76129 d!76875))

(declare-fun d!76877 () Bool)

(declare-fun lt!109096 () Int)

(assert (=> d!76877 (>= lt!109096 0)))

(declare-fun e!165471 () Int)

(assert (=> d!76877 (= lt!109096 e!165471)))

(declare-fun c!50442 () Bool)

(assert (=> d!76877 (= c!50442 ((_ is Nil!3789) lt!108329))))

(assert (=> d!76877 (= (size!3015 lt!108329) lt!109096)))

(declare-fun b!266378 () Bool)

(assert (=> b!266378 (= e!165471 0)))

(declare-fun b!266379 () Bool)

(assert (=> b!266379 (= e!165471 (+ 1 (size!3015 (t!37441 lt!108329))))))

(assert (= (and d!76877 c!50442) b!266378))

(assert (= (and d!76877 (not c!50442)) b!266379))

(declare-fun m!334025 () Bool)

(assert (=> b!266379 m!334025))

(assert (=> b!264978 d!76877))

(assert (=> b!264978 d!76483))

(assert (=> b!264978 d!76381))

(declare-fun e!165474 () Bool)

(declare-fun b!266387 () Bool)

(declare-fun lt!109097 () List!3799)

(assert (=> b!266387 (= e!165474 (or (not (= lt!108116 Nil!3789)) (= lt!109097 (t!37441 (++!980 lt!108117 lt!108119)))))))

(declare-fun b!266385 () Bool)

(declare-fun e!165473 () List!3799)

(assert (=> b!266385 (= e!165473 (Cons!3789 (h!9186 (t!37441 (++!980 lt!108117 lt!108119))) (++!980 (t!37441 (t!37441 (++!980 lt!108117 lt!108119))) lt!108116)))))

(declare-fun b!266386 () Bool)

(declare-fun res!122082 () Bool)

(assert (=> b!266386 (=> (not res!122082) (not e!165474))))

(assert (=> b!266386 (= res!122082 (= (size!3015 lt!109097) (+ (size!3015 (t!37441 (++!980 lt!108117 lt!108119))) (size!3015 lt!108116))))))

(declare-fun d!76879 () Bool)

(assert (=> d!76879 e!165474))

(declare-fun res!122083 () Bool)

(assert (=> d!76879 (=> (not res!122083) (not e!165474))))

(assert (=> d!76879 (= res!122083 (= (content!539 lt!109097) ((_ map or) (content!539 (t!37441 (++!980 lt!108117 lt!108119))) (content!539 lt!108116))))))

(assert (=> d!76879 (= lt!109097 e!165473)))

(declare-fun c!50443 () Bool)

(assert (=> d!76879 (= c!50443 ((_ is Nil!3789) (t!37441 (++!980 lt!108117 lt!108119))))))

(assert (=> d!76879 (= (++!980 (t!37441 (++!980 lt!108117 lt!108119)) lt!108116) lt!109097)))

(declare-fun b!266384 () Bool)

(assert (=> b!266384 (= e!165473 lt!108116)))

(assert (= (and d!76879 c!50443) b!266384))

(assert (= (and d!76879 (not c!50443)) b!266385))

(assert (= (and d!76879 res!122083) b!266386))

(assert (= (and b!266386 res!122082) b!266387))

(declare-fun m!334027 () Bool)

(assert (=> b!266385 m!334027))

(declare-fun m!334029 () Bool)

(assert (=> b!266386 m!334029))

(assert (=> b!266386 m!332739))

(assert (=> b!266386 m!330229))

(declare-fun m!334031 () Bool)

(assert (=> d!76879 m!334031))

(assert (=> d!76879 m!332137))

(assert (=> d!76879 m!330235))

(assert (=> b!264686 d!76879))

(declare-fun d!76881 () Bool)

(assert (=> d!76881 (= (list!1535 e!164702) (list!1539 (c!50020 e!164702)))))

(declare-fun bs!29329 () Bool)

(assert (= bs!29329 d!76881))

(declare-fun m!334033 () Bool)

(assert (=> bs!29329 m!334033))

(assert (=> bm!14356 d!76881))

(declare-fun d!76883 () Bool)

(declare-fun c!50444 () Bool)

(assert (=> d!76883 (= c!50444 ((_ is Node!1268) (c!50020 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))) (value!24921 separatorToken!170)))))))

(declare-fun e!165479 () Bool)

(assert (=> d!76883 (= (inv!4685 (c!50020 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))) (value!24921 separatorToken!170)))) e!165479)))

(declare-fun b!266401 () Bool)

(assert (=> b!266401 (= e!165479 (inv!4687 (c!50020 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))) (value!24921 separatorToken!170)))))))

(declare-fun b!266402 () Bool)

(declare-fun e!165480 () Bool)

(assert (=> b!266402 (= e!165479 e!165480)))

(declare-fun res!122084 () Bool)

(assert (=> b!266402 (= res!122084 (not ((_ is Leaf!1969) (c!50020 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))) (value!24921 separatorToken!170))))))))

(assert (=> b!266402 (=> res!122084 e!165480)))

(declare-fun b!266403 () Bool)

(assert (=> b!266403 (= e!165480 (inv!4688 (c!50020 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))) (value!24921 separatorToken!170)))))))

(assert (= (and d!76883 c!50444) b!266401))

(assert (= (and d!76883 (not c!50444)) b!266402))

(assert (= (and b!266402 (not res!122084)) b!266403))

(declare-fun m!334035 () Bool)

(assert (=> b!266401 m!334035))

(declare-fun m!334037 () Bool)

(assert (=> b!266403 m!334037))

(assert (=> b!264652 d!76883))

(declare-fun d!76885 () Bool)

(declare-fun lt!109098 () BalanceConc!2544)

(assert (=> d!76885 (= (list!1535 lt!109098) (originalCharacters!766 (ite c!50118 call!14356 call!14358)))))

(assert (=> d!76885 (= lt!109098 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (ite c!50118 call!14356 call!14358)))) (value!24921 (ite c!50118 call!14356 call!14358))))))

(assert (=> d!76885 (= (charsOf!368 (ite c!50118 call!14356 call!14358)) lt!109098)))

(declare-fun b_lambda!8323 () Bool)

(assert (=> (not b_lambda!8323) (not d!76885)))

(declare-fun t!37726 () Bool)

(declare-fun tb!14713 () Bool)

(assert (=> (and b!264597 (= (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))) (toChars!1309 (transformation!723 (rule!1308 (ite c!50118 call!14356 call!14358))))) t!37726) tb!14713))

(declare-fun e!165482 () Bool)

(declare-fun b!266408 () Bool)

(declare-fun tp!101587 () Bool)

(assert (=> b!266408 (= e!165482 (and (inv!4685 (c!50020 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (ite c!50118 call!14356 call!14358)))) (value!24921 (ite c!50118 call!14356 call!14358))))) tp!101587))))

(declare-fun result!18270 () Bool)

(assert (=> tb!14713 (= result!18270 (and (inv!4686 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (ite c!50118 call!14356 call!14358)))) (value!24921 (ite c!50118 call!14356 call!14358)))) e!165482))))

(assert (= tb!14713 b!266408))

(declare-fun m!334039 () Bool)

(assert (=> b!266408 m!334039))

(declare-fun m!334041 () Bool)

(assert (=> tb!14713 m!334041))

(assert (=> d!76885 t!37726))

(declare-fun b_and!20981 () Bool)

(assert (= b_and!20963 (and (=> t!37726 result!18270) b_and!20981)))

(declare-fun tb!14715 () Bool)

(declare-fun t!37728 () Bool)

(assert (=> (and b!265124 (= (toChars!1309 (transformation!723 (h!9189 (t!37444 rules!1920)))) (toChars!1309 (transformation!723 (rule!1308 (ite c!50118 call!14356 call!14358))))) t!37728) tb!14715))

(declare-fun result!18272 () Bool)

(assert (= result!18272 result!18270))

(assert (=> d!76885 t!37728))

(declare-fun b_and!20983 () Bool)

(assert (= b_and!20967 (and (=> t!37728 result!18272) b_and!20983)))

(declare-fun t!37730 () Bool)

(declare-fun tb!14717 () Bool)

(assert (=> (and b!264598 (= (toChars!1309 (transformation!723 (h!9189 rules!1920))) (toChars!1309 (transformation!723 (rule!1308 (ite c!50118 call!14356 call!14358))))) t!37730) tb!14717))

(declare-fun result!18274 () Bool)

(assert (= result!18274 result!18270))

(assert (=> d!76885 t!37730))

(declare-fun b_and!20985 () Bool)

(assert (= b_and!20971 (and (=> t!37730 result!18274) b_and!20985)))

(declare-fun t!37732 () Bool)

(declare-fun tb!14719 () Bool)

(assert (=> (and b!265105 (= (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 tokens!465))))) (toChars!1309 (transformation!723 (rule!1308 (ite c!50118 call!14356 call!14358))))) t!37732) tb!14719))

(declare-fun result!18276 () Bool)

(assert (= result!18276 result!18270))

(assert (=> d!76885 t!37732))

(declare-fun b_and!20987 () Bool)

(assert (= b_and!20965 (and (=> t!37732 result!18276) b_and!20987)))

(declare-fun tb!14721 () Bool)

(declare-fun t!37734 () Bool)

(assert (=> (and b!264593 (= (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))) (toChars!1309 (transformation!723 (rule!1308 (ite c!50118 call!14356 call!14358))))) t!37734) tb!14721))

(declare-fun result!18278 () Bool)

(assert (= result!18278 result!18270))

(assert (=> d!76885 t!37734))

(declare-fun b_and!20989 () Bool)

(assert (= b_and!20969 (and (=> t!37734 result!18278) b_and!20989)))

(declare-fun m!334047 () Bool)

(assert (=> d!76885 m!334047))

(declare-fun m!334049 () Bool)

(assert (=> d!76885 m!334049))

(assert (=> bm!14353 d!76885))

(declare-fun d!76891 () Bool)

(assert (=> d!76891 (= (inv!4686 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))) (value!24921 separatorToken!170))) (isBalanced!343 (c!50020 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))) (value!24921 separatorToken!170)))))))

(declare-fun bs!29333 () Bool)

(assert (= bs!29333 d!76891))

(declare-fun m!334053 () Bool)

(assert (=> bs!29333 m!334053))

(assert (=> tb!14475 d!76891))

(declare-fun d!76897 () Bool)

(assert (=> d!76897 (= (list!1535 (ite c!50123 call!14360 call!14361)) (list!1539 (c!50020 (ite c!50123 call!14360 call!14361))))))

(declare-fun bs!29335 () Bool)

(assert (= bs!29335 d!76897))

(declare-fun m!334057 () Bool)

(assert (=> bs!29335 m!334057))

(assert (=> bm!14358 d!76897))

(declare-fun d!76899 () Bool)

(declare-fun c!50445 () Bool)

(assert (=> d!76899 (= c!50445 ((_ is Nil!3789) lt!108329))))

(declare-fun e!165483 () (InoxSet C!2816))

(assert (=> d!76899 (= (content!539 lt!108329) e!165483)))

(declare-fun b!266409 () Bool)

(assert (=> b!266409 (= e!165483 ((as const (Array C!2816 Bool)) false))))

(declare-fun b!266410 () Bool)

(assert (=> b!266410 (= e!165483 ((_ map or) (store ((as const (Array C!2816 Bool)) false) (h!9186 lt!108329) true) (content!539 (t!37441 lt!108329))))))

(assert (= (and d!76899 c!50445) b!266409))

(assert (= (and d!76899 (not c!50445)) b!266410))

(declare-fun m!334059 () Bool)

(assert (=> b!266410 m!334059))

(declare-fun m!334061 () Bool)

(assert (=> b!266410 m!334061))

(assert (=> d!76101 d!76899))

(assert (=> d!76101 d!76615))

(assert (=> d!76101 d!76611))

(declare-fun bs!29338 () Bool)

(declare-fun d!76905 () Bool)

(assert (= bs!29338 (and d!76905 d!76295)))

(declare-fun lambda!8982 () Int)

(assert (=> bs!29338 (= (and (= (toChars!1309 (transformation!723 (h!9189 rules!1920))) (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465))))) (= (toValue!1450 (transformation!723 (h!9189 rules!1920))) (toValue!1450 (transformation!723 (rule!1308 (h!9188 tokens!465)))))) (= lambda!8982 lambda!8952))))

(declare-fun bs!29339 () Bool)

(assert (= bs!29339 (and d!76905 d!76371)))

(assert (=> bs!29339 (= (and (= (toChars!1309 (transformation!723 (h!9189 rules!1920))) (toChars!1309 (transformation!723 (rule!1308 separatorToken!170)))) (= (toValue!1450 (transformation!723 (h!9189 rules!1920))) (toValue!1450 (transformation!723 (rule!1308 separatorToken!170))))) (= lambda!8982 lambda!8958))))

(assert (=> d!76905 true))

(assert (=> d!76905 (< (dynLambda!1931 order!2897 (toChars!1309 (transformation!723 (h!9189 rules!1920)))) (dynLambda!1933 order!2903 lambda!8982))))

(assert (=> d!76905 true))

(assert (=> d!76905 (< (dynLambda!1929 order!2893 (toValue!1450 (transformation!723 (h!9189 rules!1920)))) (dynLambda!1933 order!2903 lambda!8982))))

(assert (=> d!76905 (= (semiInverseModEq!253 (toChars!1309 (transformation!723 (h!9189 rules!1920))) (toValue!1450 (transformation!723 (h!9189 rules!1920)))) (Forall!168 lambda!8982))))

(declare-fun bs!29340 () Bool)

(assert (= bs!29340 d!76905))

(declare-fun m!334063 () Bool)

(assert (=> bs!29340 m!334063))

(assert (=> d!76139 d!76905))

(declare-fun d!76907 () Bool)

(assert (=> d!76907 (= (list!1535 lt!108314) (list!1539 (c!50020 lt!108314)))))

(declare-fun bs!29341 () Bool)

(assert (= bs!29341 d!76907))

(declare-fun m!334065 () Bool)

(assert (=> bs!29341 m!334065))

(assert (=> b!264943 d!76907))

(declare-fun b!266413 () Bool)

(declare-fun e!165484 () Unit!4760)

(declare-fun Unit!4810 () Unit!4760)

(assert (=> b!266413 (= e!165484 Unit!4810)))

(declare-fun lt!109100 () List!3799)

(assert (=> b!266413 (= lt!109100 (++!980 (list!1535 call!14350) (list!1535 lt!108314)))))

(declare-fun lt!109111 () Token!1190)

(declare-fun lt!109112 () Unit!4760)

(assert (=> b!266413 (= lt!109112 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!51 thiss!17480 (rule!1308 lt!109111) rules!1920 lt!109100))))

(assert (=> b!266413 (isEmpty!2387 (maxPrefixOneRule!136 thiss!17480 (rule!1308 lt!109111) lt!109100))))

(declare-fun lt!109114 () Unit!4760)

(assert (=> b!266413 (= lt!109114 lt!109112)))

(declare-fun lt!109105 () List!3799)

(assert (=> b!266413 (= lt!109105 (list!1535 (charsOf!368 lt!109111)))))

(declare-fun lt!109104 () Unit!4760)

(assert (=> b!266413 (= lt!109104 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!51 thiss!17480 (rule!1308 lt!109111) lt!109105 (++!980 (list!1535 call!14350) (list!1535 lt!108314))))))

(assert (=> b!266413 (not (matchR!270 (regex!723 (rule!1308 lt!109111)) lt!109105))))

(declare-fun lt!109101 () Unit!4760)

(assert (=> b!266413 (= lt!109101 lt!109104)))

(assert (=> b!266413 false))

(declare-fun d!76909 () Bool)

(assert (=> d!76909 (isDefined!637 (maxPrefix!329 thiss!17480 rules!1920 (++!980 (list!1535 call!14350) (list!1535 lt!108314))))))

(declare-fun lt!109108 () Unit!4760)

(assert (=> d!76909 (= lt!109108 e!165484)))

(declare-fun c!50446 () Bool)

(assert (=> d!76909 (= c!50446 (isEmpty!2387 (maxPrefix!329 thiss!17480 rules!1920 (++!980 (list!1535 call!14350) (list!1535 lt!108314)))))))

(declare-fun lt!109115 () Unit!4760)

(declare-fun lt!109102 () Unit!4760)

(assert (=> d!76909 (= lt!109115 lt!109102)))

(declare-fun e!165485 () Bool)

(assert (=> d!76909 e!165485))

(declare-fun res!122086 () Bool)

(assert (=> d!76909 (=> (not res!122086) (not e!165485))))

(assert (=> d!76909 (= res!122086 (isDefined!638 (getRuleFromTag!119 thiss!17480 rules!1920 (tag!933 (rule!1308 lt!109111)))))))

(assert (=> d!76909 (= lt!109102 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!119 thiss!17480 rules!1920 (list!1535 call!14350) lt!109111))))

(declare-fun lt!109109 () Unit!4760)

(declare-fun lt!109099 () Unit!4760)

(assert (=> d!76909 (= lt!109109 lt!109099)))

(declare-fun lt!109110 () List!3799)

(assert (=> d!76909 (isPrefix!392 lt!109110 (++!980 (list!1535 call!14350) (list!1535 lt!108314)))))

(assert (=> d!76909 (= lt!109099 (lemmaPrefixStaysPrefixWhenAddingToSuffix!51 lt!109110 (list!1535 call!14350) (list!1535 lt!108314)))))

(assert (=> d!76909 (= lt!109110 (list!1535 (charsOf!368 lt!109111)))))

(declare-fun lt!109106 () Unit!4760)

(declare-fun lt!109113 () Unit!4760)

(assert (=> d!76909 (= lt!109106 lt!109113)))

(declare-fun lt!109107 () List!3799)

(declare-fun lt!109103 () List!3799)

(assert (=> d!76909 (isPrefix!392 lt!109107 (++!980 lt!109107 lt!109103))))

(assert (=> d!76909 (= lt!109113 (lemmaConcatTwoListThenFirstIsPrefix!287 lt!109107 lt!109103))))

(assert (=> d!76909 (= lt!109103 (_2!2340 (get!1246 (maxPrefix!329 thiss!17480 rules!1920 (list!1535 call!14350)))))))

(assert (=> d!76909 (= lt!109107 (list!1535 (charsOf!368 lt!109111)))))

(assert (=> d!76909 (= lt!109111 (head!882 (list!1538 (_1!2338 (lex!402 thiss!17480 rules!1920 (seqFromList!813 (list!1535 call!14350)))))))))

(assert (=> d!76909 (not (isEmpty!2382 rules!1920))))

(assert (=> d!76909 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!106 thiss!17480 rules!1920 (list!1535 call!14350) (list!1535 lt!108314)) lt!109108)))

(declare-fun b!266412 () Bool)

(assert (=> b!266412 (= e!165485 (= (rule!1308 lt!109111) (get!1247 (getRuleFromTag!119 thiss!17480 rules!1920 (tag!933 (rule!1308 lt!109111))))))))

(declare-fun b!266414 () Bool)

(declare-fun Unit!4811 () Unit!4760)

(assert (=> b!266414 (= e!165484 Unit!4811)))

(declare-fun b!266411 () Bool)

(declare-fun res!122085 () Bool)

(assert (=> b!266411 (=> (not res!122085) (not e!165485))))

(assert (=> b!266411 (= res!122085 (matchR!270 (regex!723 (get!1247 (getRuleFromTag!119 thiss!17480 rules!1920 (tag!933 (rule!1308 lt!109111))))) (list!1535 (charsOf!368 lt!109111))))))

(assert (= (and d!76909 res!122086) b!266411))

(assert (= (and b!266411 res!122085) b!266412))

(assert (= (and d!76909 c!50446) b!266413))

(assert (= (and d!76909 (not c!50446)) b!266414))

(declare-fun m!334067 () Bool)

(assert (=> b!266413 m!334067))

(declare-fun m!334069 () Bool)

(assert (=> b!266413 m!334069))

(declare-fun m!334071 () Bool)

(assert (=> b!266413 m!334071))

(declare-fun m!334073 () Bool)

(assert (=> b!266413 m!334073))

(declare-fun m!334075 () Bool)

(assert (=> b!266413 m!334075))

(declare-fun m!334077 () Bool)

(assert (=> b!266413 m!334077))

(declare-fun m!334079 () Bool)

(assert (=> b!266413 m!334079))

(assert (=> b!266413 m!330659))

(assert (=> b!266413 m!330661))

(assert (=> b!266413 m!334069))

(declare-fun m!334081 () Bool)

(assert (=> b!266413 m!334081))

(assert (=> b!266413 m!334077))

(assert (=> b!266413 m!334073))

(declare-fun m!334083 () Bool)

(assert (=> d!76909 m!334083))

(declare-fun m!334085 () Bool)

(assert (=> d!76909 m!334085))

(declare-fun m!334087 () Bool)

(assert (=> d!76909 m!334087))

(declare-fun m!334089 () Bool)

(assert (=> d!76909 m!334089))

(declare-fun m!334091 () Bool)

(assert (=> d!76909 m!334091))

(declare-fun m!334093 () Bool)

(assert (=> d!76909 m!334093))

(assert (=> d!76909 m!334069))

(assert (=> d!76909 m!334087))

(declare-fun m!334095 () Bool)

(assert (=> d!76909 m!334095))

(declare-fun m!334097 () Bool)

(assert (=> d!76909 m!334097))

(assert (=> d!76909 m!334077))

(assert (=> d!76909 m!334079))

(assert (=> d!76909 m!330659))

(assert (=> d!76909 m!330661))

(assert (=> d!76909 m!334069))

(assert (=> d!76909 m!330095))

(assert (=> d!76909 m!334091))

(declare-fun m!334099 () Bool)

(assert (=> d!76909 m!334099))

(assert (=> d!76909 m!330659))

(assert (=> d!76909 m!330661))

(declare-fun m!334101 () Bool)

(assert (=> d!76909 m!334101))

(assert (=> d!76909 m!330659))

(assert (=> d!76909 m!334095))

(declare-fun m!334103 () Bool)

(assert (=> d!76909 m!334103))

(assert (=> d!76909 m!334103))

(declare-fun m!334105 () Bool)

(assert (=> d!76909 m!334105))

(declare-fun m!334107 () Bool)

(assert (=> d!76909 m!334107))

(assert (=> d!76909 m!334069))

(declare-fun m!334109 () Bool)

(assert (=> d!76909 m!334109))

(assert (=> d!76909 m!334087))

(declare-fun m!334111 () Bool)

(assert (=> d!76909 m!334111))

(assert (=> d!76909 m!330659))

(declare-fun m!334113 () Bool)

(assert (=> d!76909 m!334113))

(assert (=> d!76909 m!330659))

(assert (=> d!76909 m!334083))

(assert (=> d!76909 m!334107))

(declare-fun m!334115 () Bool)

(assert (=> d!76909 m!334115))

(assert (=> d!76909 m!334077))

(assert (=> b!266412 m!334103))

(assert (=> b!266412 m!334103))

(declare-fun m!334117 () Bool)

(assert (=> b!266412 m!334117))

(assert (=> b!266411 m!334079))

(declare-fun m!334119 () Bool)

(assert (=> b!266411 m!334119))

(assert (=> b!266411 m!334077))

(assert (=> b!266411 m!334079))

(assert (=> b!266411 m!334103))

(assert (=> b!266411 m!334117))

(assert (=> b!266411 m!334077))

(assert (=> b!266411 m!334103))

(assert (=> b!264943 d!76909))

(declare-fun d!76911 () Bool)

(declare-fun lt!109116 () BalanceConc!2544)

(assert (=> d!76911 (= (list!1535 lt!109116) (printList!285 thiss!17480 (list!1538 (singletonSeq!269 call!14353))))))

(assert (=> d!76911 (= lt!109116 (printTailRec!297 thiss!17480 (singletonSeq!269 call!14353) 0 (BalanceConc!2545 Empty!1268)))))

(assert (=> d!76911 (= (print!334 thiss!17480 (singletonSeq!269 call!14353)) lt!109116)))

(declare-fun bs!29342 () Bool)

(assert (= bs!29342 d!76911))

(declare-fun m!334121 () Bool)

(assert (=> bs!29342 m!334121))

(assert (=> bs!29342 m!330655))

(declare-fun m!334123 () Bool)

(assert (=> bs!29342 m!334123))

(assert (=> bs!29342 m!334123))

(declare-fun m!334125 () Bool)

(assert (=> bs!29342 m!334125))

(assert (=> bs!29342 m!330655))

(assert (=> bs!29342 m!330665))

(assert (=> b!264943 d!76911))

(declare-fun d!76913 () Bool)

(declare-fun e!165486 () Bool)

(assert (=> d!76913 e!165486))

(declare-fun res!122087 () Bool)

(assert (=> d!76913 (=> (not res!122087) (not e!165486))))

(declare-fun lt!109117 () BalanceConc!2546)

(assert (=> d!76913 (= res!122087 (= (list!1538 lt!109117) (Cons!3791 call!14353 Nil!3791)))))

(assert (=> d!76913 (= lt!109117 (singleton!108 call!14353))))

(assert (=> d!76913 (= (singletonSeq!269 call!14353) lt!109117)))

(declare-fun b!266415 () Bool)

(assert (=> b!266415 (= e!165486 (isBalanced!341 (c!50022 lt!109117)))))

(assert (= (and d!76913 res!122087) b!266415))

(declare-fun m!334127 () Bool)

(assert (=> d!76913 m!334127))

(declare-fun m!334129 () Bool)

(assert (=> d!76913 m!334129))

(declare-fun m!334131 () Bool)

(assert (=> b!266415 m!334131))

(assert (=> b!264943 d!76913))

(declare-fun d!76915 () Bool)

(assert (=> d!76915 (= (list!1535 call!14350) (list!1539 (c!50020 call!14350)))))

(declare-fun bs!29343 () Bool)

(assert (= bs!29343 d!76915))

(declare-fun m!334133 () Bool)

(assert (=> bs!29343 m!334133))

(assert (=> b!264943 d!76915))

(declare-fun d!76917 () Bool)

(declare-fun lt!109122 () BalanceConc!2544)

(assert (=> d!76917 (= (list!1535 lt!109122) (printListTailRec!124 thiss!17480 (dropList!158 (singletonSeq!269 call!14353) 0) (list!1535 (BalanceConc!2545 Empty!1268))))))

(declare-fun e!165487 () BalanceConc!2544)

(assert (=> d!76917 (= lt!109122 e!165487)))

(declare-fun c!50447 () Bool)

(assert (=> d!76917 (= c!50447 (>= 0 (size!3014 (singletonSeq!269 call!14353))))))

(declare-fun e!165488 () Bool)

(assert (=> d!76917 e!165488))

(declare-fun res!122088 () Bool)

(assert (=> d!76917 (=> (not res!122088) (not e!165488))))

(assert (=> d!76917 (= res!122088 (>= 0 0))))

(assert (=> d!76917 (= (printTailRec!297 thiss!17480 (singletonSeq!269 call!14353) 0 (BalanceConc!2545 Empty!1268)) lt!109122)))

(declare-fun b!266416 () Bool)

(assert (=> b!266416 (= e!165488 (<= 0 (size!3014 (singletonSeq!269 call!14353))))))

(declare-fun b!266417 () Bool)

(assert (=> b!266417 (= e!165487 (BalanceConc!2545 Empty!1268))))

(declare-fun b!266418 () Bool)

(assert (=> b!266418 (= e!165487 (printTailRec!297 thiss!17480 (singletonSeq!269 call!14353) (+ 0 1) (++!982 (BalanceConc!2545 Empty!1268) (charsOf!368 (apply!749 (singletonSeq!269 call!14353) 0)))))))

(declare-fun lt!109120 () List!3801)

(assert (=> b!266418 (= lt!109120 (list!1538 (singletonSeq!269 call!14353)))))

(declare-fun lt!109123 () Unit!4760)

(assert (=> b!266418 (= lt!109123 (lemmaDropApply!198 lt!109120 0))))

(assert (=> b!266418 (= (head!882 (drop!211 lt!109120 0)) (apply!750 lt!109120 0))))

(declare-fun lt!109119 () Unit!4760)

(assert (=> b!266418 (= lt!109119 lt!109123)))

(declare-fun lt!109124 () List!3801)

(assert (=> b!266418 (= lt!109124 (list!1538 (singletonSeq!269 call!14353)))))

(declare-fun lt!109118 () Unit!4760)

(assert (=> b!266418 (= lt!109118 (lemmaDropTail!190 lt!109124 0))))

(assert (=> b!266418 (= (tail!472 (drop!211 lt!109124 0)) (drop!211 lt!109124 (+ 0 1)))))

(declare-fun lt!109121 () Unit!4760)

(assert (=> b!266418 (= lt!109121 lt!109118)))

(assert (= (and d!76917 res!122088) b!266416))

(assert (= (and d!76917 c!50447) b!266417))

(assert (= (and d!76917 (not c!50447)) b!266418))

(declare-fun m!334135 () Bool)

(assert (=> d!76917 m!334135))

(assert (=> d!76917 m!330783))

(declare-fun m!334137 () Bool)

(assert (=> d!76917 m!334137))

(assert (=> d!76917 m!330655))

(assert (=> d!76917 m!334135))

(assert (=> d!76917 m!330655))

(declare-fun m!334139 () Bool)

(assert (=> d!76917 m!334139))

(declare-fun m!334141 () Bool)

(assert (=> d!76917 m!334141))

(assert (=> d!76917 m!330783))

(assert (=> b!266416 m!330655))

(assert (=> b!266416 m!334139))

(declare-fun m!334143 () Bool)

(assert (=> b!266418 m!334143))

(declare-fun m!334145 () Bool)

(assert (=> b!266418 m!334145))

(declare-fun m!334147 () Bool)

(assert (=> b!266418 m!334147))

(declare-fun m!334149 () Bool)

(assert (=> b!266418 m!334149))

(declare-fun m!334151 () Bool)

(assert (=> b!266418 m!334151))

(declare-fun m!334153 () Bool)

(assert (=> b!266418 m!334153))

(assert (=> b!266418 m!330655))

(assert (=> b!266418 m!334123))

(declare-fun m!334155 () Bool)

(assert (=> b!266418 m!334155))

(declare-fun m!334157 () Bool)

(assert (=> b!266418 m!334157))

(assert (=> b!266418 m!334155))

(declare-fun m!334159 () Bool)

(assert (=> b!266418 m!334159))

(assert (=> b!266418 m!334143))

(assert (=> b!266418 m!330655))

(declare-fun m!334161 () Bool)

(assert (=> b!266418 m!334161))

(declare-fun m!334163 () Bool)

(assert (=> b!266418 m!334163))

(assert (=> b!266418 m!334151))

(assert (=> b!266418 m!334161))

(assert (=> b!266418 m!330655))

(assert (=> b!266418 m!334149))

(declare-fun m!334165 () Bool)

(assert (=> b!266418 m!334165))

(assert (=> b!264943 d!76917))

(declare-fun b!266420 () Bool)

(declare-fun e!165489 () List!3799)

(declare-fun e!165490 () List!3799)

(assert (=> b!266420 (= e!165489 e!165490)))

(declare-fun c!50449 () Bool)

(assert (=> b!266420 (= c!50449 ((_ is Leaf!1969) (c!50020 (charsOf!368 (h!9188 tokens!465)))))))

(declare-fun b!266419 () Bool)

(assert (=> b!266419 (= e!165489 Nil!3789)))

(declare-fun b!266422 () Bool)

(assert (=> b!266422 (= e!165490 (++!980 (list!1539 (left!3116 (c!50020 (charsOf!368 (h!9188 tokens!465))))) (list!1539 (right!3446 (c!50020 (charsOf!368 (h!9188 tokens!465)))))))))

(declare-fun d!76919 () Bool)

(declare-fun c!50448 () Bool)

(assert (=> d!76919 (= c!50448 ((_ is Empty!1268) (c!50020 (charsOf!368 (h!9188 tokens!465)))))))

(assert (=> d!76919 (= (list!1539 (c!50020 (charsOf!368 (h!9188 tokens!465)))) e!165489)))

(declare-fun b!266421 () Bool)

(assert (=> b!266421 (= e!165490 (list!1543 (xs!3867 (c!50020 (charsOf!368 (h!9188 tokens!465))))))))

(assert (= (and d!76919 c!50448) b!266419))

(assert (= (and d!76919 (not c!50448)) b!266420))

(assert (= (and b!266420 c!50449) b!266421))

(assert (= (and b!266420 (not c!50449)) b!266422))

(declare-fun m!334167 () Bool)

(assert (=> b!266422 m!334167))

(declare-fun m!334169 () Bool)

(assert (=> b!266422 m!334169))

(assert (=> b!266422 m!334167))

(assert (=> b!266422 m!334169))

(declare-fun m!334171 () Bool)

(assert (=> b!266422 m!334171))

(declare-fun m!334173 () Bool)

(assert (=> b!266421 m!334173))

(assert (=> d!76103 d!76919))

(declare-fun d!76921 () Bool)

(declare-fun res!122089 () Bool)

(declare-fun e!165491 () Bool)

(assert (=> d!76921 (=> res!122089 e!165491)))

(assert (=> d!76921 (= res!122089 (not ((_ is Cons!3792) (t!37444 rules!1920))))))

(assert (=> d!76921 (= (sepAndNonSepRulesDisjointChars!312 rules!1920 (t!37444 rules!1920)) e!165491)))

(declare-fun b!266423 () Bool)

(declare-fun e!165492 () Bool)

(assert (=> b!266423 (= e!165491 e!165492)))

(declare-fun res!122090 () Bool)

(assert (=> b!266423 (=> (not res!122090) (not e!165492))))

(assert (=> b!266423 (= res!122090 (ruleDisjointCharsFromAllFromOtherType!111 (h!9189 (t!37444 rules!1920)) rules!1920))))

(declare-fun b!266424 () Bool)

(assert (=> b!266424 (= e!165492 (sepAndNonSepRulesDisjointChars!312 rules!1920 (t!37444 (t!37444 rules!1920))))))

(assert (= (and d!76921 (not res!122089)) b!266423))

(assert (= (and b!266423 res!122090) b!266424))

(declare-fun m!334175 () Bool)

(assert (=> b!266423 m!334175))

(declare-fun m!334177 () Bool)

(assert (=> b!266424 m!334177))

(assert (=> b!264641 d!76921))

(declare-fun d!76923 () Bool)

(declare-fun lt!109125 () Bool)

(assert (=> d!76923 (= lt!109125 (isEmpty!2385 (list!1535 (_2!2338 (lex!402 thiss!17480 rules!1920 (print!334 thiss!17480 (singletonSeq!269 separatorToken!170)))))))))

(assert (=> d!76923 (= lt!109125 (isEmpty!2389 (c!50020 (_2!2338 (lex!402 thiss!17480 rules!1920 (print!334 thiss!17480 (singletonSeq!269 separatorToken!170)))))))))

(assert (=> d!76923 (= (isEmpty!2384 (_2!2338 (lex!402 thiss!17480 rules!1920 (print!334 thiss!17480 (singletonSeq!269 separatorToken!170))))) lt!109125)))

(declare-fun bs!29344 () Bool)

(assert (= bs!29344 d!76923))

(declare-fun m!334179 () Bool)

(assert (=> bs!29344 m!334179))

(assert (=> bs!29344 m!334179))

(declare-fun m!334181 () Bool)

(assert (=> bs!29344 m!334181))

(declare-fun m!334183 () Bool)

(assert (=> bs!29344 m!334183))

(assert (=> b!264635 d!76923))

(assert (=> b!264635 d!76545))

(assert (=> b!264635 d!76595))

(assert (=> b!264635 d!76541))

(assert (=> d!76013 d!76015))

(declare-fun d!76925 () Bool)

(assert (=> d!76925 (= (++!980 (++!980 lt!108117 lt!108119) lt!108116) (++!980 lt!108117 (++!980 lt!108119 lt!108116)))))

(assert (=> d!76925 true))

(declare-fun _$52!734 () Unit!4760)

(assert (=> d!76925 (= (choose!2424 lt!108117 lt!108119 lt!108116) _$52!734)))

(declare-fun bs!29345 () Bool)

(assert (= bs!29345 d!76925))

(assert (=> bs!29345 m!330129))

(assert (=> bs!29345 m!330129))

(assert (=> bs!29345 m!330145))

(assert (=> bs!29345 m!330133))

(assert (=> bs!29345 m!330133))

(assert (=> bs!29345 m!330219))

(assert (=> d!76013 d!76925))

(assert (=> d!76013 d!76101))

(declare-fun e!165494 () Bool)

(declare-fun lt!109126 () List!3799)

(declare-fun b!266428 () Bool)

(assert (=> b!266428 (= e!165494 (or (not (= (++!980 lt!108119 lt!108116) Nil!3789)) (= lt!109126 lt!108117)))))

(declare-fun e!165493 () List!3799)

(declare-fun b!266426 () Bool)

(assert (=> b!266426 (= e!165493 (Cons!3789 (h!9186 lt!108117) (++!980 (t!37441 lt!108117) (++!980 lt!108119 lt!108116))))))

(declare-fun b!266427 () Bool)

(declare-fun res!122091 () Bool)

(assert (=> b!266427 (=> (not res!122091) (not e!165494))))

(assert (=> b!266427 (= res!122091 (= (size!3015 lt!109126) (+ (size!3015 lt!108117) (size!3015 (++!980 lt!108119 lt!108116)))))))

(declare-fun d!76927 () Bool)

(assert (=> d!76927 e!165494))

(declare-fun res!122092 () Bool)

(assert (=> d!76927 (=> (not res!122092) (not e!165494))))

(assert (=> d!76927 (= res!122092 (= (content!539 lt!109126) ((_ map or) (content!539 lt!108117) (content!539 (++!980 lt!108119 lt!108116)))))))

(assert (=> d!76927 (= lt!109126 e!165493)))

(declare-fun c!50450 () Bool)

(assert (=> d!76927 (= c!50450 ((_ is Nil!3789) lt!108117))))

(assert (=> d!76927 (= (++!980 lt!108117 (++!980 lt!108119 lt!108116)) lt!109126)))

(declare-fun b!266425 () Bool)

(assert (=> b!266425 (= e!165493 (++!980 lt!108119 lt!108116))))

(assert (= (and d!76927 c!50450) b!266425))

(assert (= (and d!76927 (not c!50450)) b!266426))

(assert (= (and d!76927 res!122092) b!266427))

(assert (= (and b!266427 res!122091) b!266428))

(assert (=> b!266426 m!330133))

(declare-fun m!334185 () Bool)

(assert (=> b!266426 m!334185))

(declare-fun m!334187 () Bool)

(assert (=> b!266427 m!334187))

(assert (=> b!266427 m!330713))

(assert (=> b!266427 m!330133))

(declare-fun m!334189 () Bool)

(assert (=> b!266427 m!334189))

(declare-fun m!334191 () Bool)

(assert (=> d!76927 m!334191))

(assert (=> d!76927 m!330717))

(assert (=> d!76927 m!330133))

(declare-fun m!334193 () Bool)

(assert (=> d!76927 m!334193))

(assert (=> d!76013 d!76927))

(assert (=> d!76013 d!76017))

(declare-fun d!76929 () Bool)

(assert (=> d!76929 (= (inv!4678 (tag!933 (rule!1308 (h!9188 (t!37443 tokens!465))))) (= (mod (str.len (value!24920 (tag!933 (rule!1308 (h!9188 (t!37443 tokens!465)))))) 2) 0))))

(assert (=> b!265104 d!76929))

(declare-fun d!76931 () Bool)

(declare-fun res!122093 () Bool)

(declare-fun e!165495 () Bool)

(assert (=> d!76931 (=> (not res!122093) (not e!165495))))

(assert (=> d!76931 (= res!122093 (semiInverseModEq!253 (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 tokens!465))))) (toValue!1450 (transformation!723 (rule!1308 (h!9188 (t!37443 tokens!465)))))))))

(assert (=> d!76931 (= (inv!4681 (transformation!723 (rule!1308 (h!9188 (t!37443 tokens!465))))) e!165495)))

(declare-fun b!266429 () Bool)

(assert (=> b!266429 (= e!165495 (equivClasses!236 (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 tokens!465))))) (toValue!1450 (transformation!723 (rule!1308 (h!9188 (t!37443 tokens!465)))))))))

(assert (= (and d!76931 res!122093) b!266429))

(declare-fun m!334195 () Bool)

(assert (=> d!76931 m!334195))

(declare-fun m!334197 () Bool)

(assert (=> b!266429 m!334197))

(assert (=> b!265104 d!76931))

(declare-fun b!266433 () Bool)

(declare-fun e!165497 () Bool)

(declare-fun lt!109127 () List!3799)

(assert (=> b!266433 (= e!165497 (or (not (= lt!108119 Nil!3789)) (= lt!109127 (t!37441 lt!108117))))))

(declare-fun b!266431 () Bool)

(declare-fun e!165496 () List!3799)

(assert (=> b!266431 (= e!165496 (Cons!3789 (h!9186 (t!37441 lt!108117)) (++!980 (t!37441 (t!37441 lt!108117)) lt!108119)))))

(declare-fun b!266432 () Bool)

(declare-fun res!122094 () Bool)

(assert (=> b!266432 (=> (not res!122094) (not e!165497))))

(assert (=> b!266432 (= res!122094 (= (size!3015 lt!109127) (+ (size!3015 (t!37441 lt!108117)) (size!3015 lt!108119))))))

(declare-fun d!76933 () Bool)

(assert (=> d!76933 e!165497))

(declare-fun res!122095 () Bool)

(assert (=> d!76933 (=> (not res!122095) (not e!165497))))

(assert (=> d!76933 (= res!122095 (= (content!539 lt!109127) ((_ map or) (content!539 (t!37441 lt!108117)) (content!539 lt!108119))))))

(assert (=> d!76933 (= lt!109127 e!165496)))

(declare-fun c!50451 () Bool)

(assert (=> d!76933 (= c!50451 ((_ is Nil!3789) (t!37441 lt!108117)))))

(assert (=> d!76933 (= (++!980 (t!37441 lt!108117) lt!108119) lt!109127)))

(declare-fun b!266430 () Bool)

(assert (=> b!266430 (= e!165496 lt!108119)))

(assert (= (and d!76933 c!50451) b!266430))

(assert (= (and d!76933 (not c!50451)) b!266431))

(assert (= (and d!76933 res!122095) b!266432))

(assert (= (and b!266432 res!122094) b!266433))

(declare-fun m!334199 () Bool)

(assert (=> b!266431 m!334199))

(declare-fun m!334201 () Bool)

(assert (=> b!266432 m!334201))

(assert (=> b!266432 m!332117))

(assert (=> b!266432 m!330241))

(declare-fun m!334203 () Bool)

(assert (=> d!76933 m!334203))

(assert (=> d!76933 m!332709))

(assert (=> d!76933 m!330245))

(assert (=> b!264977 d!76933))

(declare-fun e!165499 () Bool)

(declare-fun lt!109128 () List!3799)

(declare-fun b!266437 () Bool)

(assert (=> b!266437 (= e!165499 (or (not (= (printList!285 thiss!17480 (t!37443 (Cons!3791 (h!9188 tokens!465) Nil!3791))) Nil!3789)) (= lt!109128 (list!1535 (charsOf!368 (h!9188 (Cons!3791 (h!9188 tokens!465) Nil!3791)))))))))

(declare-fun b!266435 () Bool)

(declare-fun e!165498 () List!3799)

(assert (=> b!266435 (= e!165498 (Cons!3789 (h!9186 (list!1535 (charsOf!368 (h!9188 (Cons!3791 (h!9188 tokens!465) Nil!3791))))) (++!980 (t!37441 (list!1535 (charsOf!368 (h!9188 (Cons!3791 (h!9188 tokens!465) Nil!3791))))) (printList!285 thiss!17480 (t!37443 (Cons!3791 (h!9188 tokens!465) Nil!3791))))))))

(declare-fun b!266436 () Bool)

(declare-fun res!122096 () Bool)

(assert (=> b!266436 (=> (not res!122096) (not e!165499))))

(assert (=> b!266436 (= res!122096 (= (size!3015 lt!109128) (+ (size!3015 (list!1535 (charsOf!368 (h!9188 (Cons!3791 (h!9188 tokens!465) Nil!3791))))) (size!3015 (printList!285 thiss!17480 (t!37443 (Cons!3791 (h!9188 tokens!465) Nil!3791)))))))))

(declare-fun d!76935 () Bool)

(assert (=> d!76935 e!165499))

(declare-fun res!122097 () Bool)

(assert (=> d!76935 (=> (not res!122097) (not e!165499))))

(assert (=> d!76935 (= res!122097 (= (content!539 lt!109128) ((_ map or) (content!539 (list!1535 (charsOf!368 (h!9188 (Cons!3791 (h!9188 tokens!465) Nil!3791))))) (content!539 (printList!285 thiss!17480 (t!37443 (Cons!3791 (h!9188 tokens!465) Nil!3791)))))))))

(assert (=> d!76935 (= lt!109128 e!165498)))

(declare-fun c!50452 () Bool)

(assert (=> d!76935 (= c!50452 ((_ is Nil!3789) (list!1535 (charsOf!368 (h!9188 (Cons!3791 (h!9188 tokens!465) Nil!3791))))))))

(assert (=> d!76935 (= (++!980 (list!1535 (charsOf!368 (h!9188 (Cons!3791 (h!9188 tokens!465) Nil!3791)))) (printList!285 thiss!17480 (t!37443 (Cons!3791 (h!9188 tokens!465) Nil!3791)))) lt!109128)))

(declare-fun b!266434 () Bool)

(assert (=> b!266434 (= e!165498 (printList!285 thiss!17480 (t!37443 (Cons!3791 (h!9188 tokens!465) Nil!3791))))))

(assert (= (and d!76935 c!50452) b!266434))

(assert (= (and d!76935 (not c!50452)) b!266435))

(assert (= (and d!76935 res!122097) b!266436))

(assert (= (and b!266436 res!122096) b!266437))

(assert (=> b!266435 m!330825))

(declare-fun m!334205 () Bool)

(assert (=> b!266435 m!334205))

(declare-fun m!334207 () Bool)

(assert (=> b!266436 m!334207))

(assert (=> b!266436 m!330823))

(declare-fun m!334209 () Bool)

(assert (=> b!266436 m!334209))

(assert (=> b!266436 m!330825))

(declare-fun m!334211 () Bool)

(assert (=> b!266436 m!334211))

(declare-fun m!334213 () Bool)

(assert (=> d!76935 m!334213))

(assert (=> d!76935 m!330823))

(declare-fun m!334215 () Bool)

(assert (=> d!76935 m!334215))

(assert (=> d!76935 m!330825))

(declare-fun m!334217 () Bool)

(assert (=> d!76935 m!334217))

(assert (=> b!265042 d!76935))

(declare-fun d!76937 () Bool)

(assert (=> d!76937 (= (list!1535 (charsOf!368 (h!9188 (Cons!3791 (h!9188 tokens!465) Nil!3791)))) (list!1539 (c!50020 (charsOf!368 (h!9188 (Cons!3791 (h!9188 tokens!465) Nil!3791))))))))

(declare-fun bs!29346 () Bool)

(assert (= bs!29346 d!76937))

(declare-fun m!334219 () Bool)

(assert (=> bs!29346 m!334219))

(assert (=> b!265042 d!76937))

(declare-fun d!76939 () Bool)

(declare-fun lt!109129 () BalanceConc!2544)

(assert (=> d!76939 (= (list!1535 lt!109129) (originalCharacters!766 (h!9188 (Cons!3791 (h!9188 tokens!465) Nil!3791))))))

(assert (=> d!76939 (= lt!109129 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (h!9188 (Cons!3791 (h!9188 tokens!465) Nil!3791))))) (value!24921 (h!9188 (Cons!3791 (h!9188 tokens!465) Nil!3791)))))))

(assert (=> d!76939 (= (charsOf!368 (h!9188 (Cons!3791 (h!9188 tokens!465) Nil!3791))) lt!109129)))

(declare-fun b_lambda!8341 () Bool)

(assert (=> (not b_lambda!8341) (not d!76939)))

(declare-fun t!37736 () Bool)

(declare-fun tb!14723 () Bool)

(assert (=> (and b!264593 (= (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))) (toChars!1309 (transformation!723 (rule!1308 (h!9188 (Cons!3791 (h!9188 tokens!465) Nil!3791)))))) t!37736) tb!14723))

(declare-fun b!266438 () Bool)

(declare-fun e!165500 () Bool)

(declare-fun tp!101588 () Bool)

(assert (=> b!266438 (= e!165500 (and (inv!4685 (c!50020 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (h!9188 (Cons!3791 (h!9188 tokens!465) Nil!3791))))) (value!24921 (h!9188 (Cons!3791 (h!9188 tokens!465) Nil!3791)))))) tp!101588))))

(declare-fun result!18280 () Bool)

(assert (=> tb!14723 (= result!18280 (and (inv!4686 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (h!9188 (Cons!3791 (h!9188 tokens!465) Nil!3791))))) (value!24921 (h!9188 (Cons!3791 (h!9188 tokens!465) Nil!3791))))) e!165500))))

(assert (= tb!14723 b!266438))

(declare-fun m!334221 () Bool)

(assert (=> b!266438 m!334221))

(declare-fun m!334223 () Bool)

(assert (=> tb!14723 m!334223))

(assert (=> d!76939 t!37736))

(declare-fun b_and!20991 () Bool)

(assert (= b_and!20989 (and (=> t!37736 result!18280) b_and!20991)))

(declare-fun tb!14725 () Bool)

(declare-fun t!37738 () Bool)

(assert (=> (and b!264597 (= (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))) (toChars!1309 (transformation!723 (rule!1308 (h!9188 (Cons!3791 (h!9188 tokens!465) Nil!3791)))))) t!37738) tb!14725))

(declare-fun result!18282 () Bool)

(assert (= result!18282 result!18280))

(assert (=> d!76939 t!37738))

(declare-fun b_and!20993 () Bool)

(assert (= b_and!20981 (and (=> t!37738 result!18282) b_and!20993)))

(declare-fun t!37740 () Bool)

(declare-fun tb!14727 () Bool)

(assert (=> (and b!265124 (= (toChars!1309 (transformation!723 (h!9189 (t!37444 rules!1920)))) (toChars!1309 (transformation!723 (rule!1308 (h!9188 (Cons!3791 (h!9188 tokens!465) Nil!3791)))))) t!37740) tb!14727))

(declare-fun result!18284 () Bool)

(assert (= result!18284 result!18280))

(assert (=> d!76939 t!37740))

(declare-fun b_and!20995 () Bool)

(assert (= b_and!20983 (and (=> t!37740 result!18284) b_and!20995)))

(declare-fun tb!14729 () Bool)

(declare-fun t!37742 () Bool)

(assert (=> (and b!264598 (= (toChars!1309 (transformation!723 (h!9189 rules!1920))) (toChars!1309 (transformation!723 (rule!1308 (h!9188 (Cons!3791 (h!9188 tokens!465) Nil!3791)))))) t!37742) tb!14729))

(declare-fun result!18286 () Bool)

(assert (= result!18286 result!18280))

(assert (=> d!76939 t!37742))

(declare-fun b_and!20997 () Bool)

(assert (= b_and!20985 (and (=> t!37742 result!18286) b_and!20997)))

(declare-fun t!37744 () Bool)

(declare-fun tb!14731 () Bool)

(assert (=> (and b!265105 (= (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 tokens!465))))) (toChars!1309 (transformation!723 (rule!1308 (h!9188 (Cons!3791 (h!9188 tokens!465) Nil!3791)))))) t!37744) tb!14731))

(declare-fun result!18288 () Bool)

(assert (= result!18288 result!18280))

(assert (=> d!76939 t!37744))

(declare-fun b_and!20999 () Bool)

(assert (= b_and!20987 (and (=> t!37744 result!18288) b_and!20999)))

(declare-fun m!334225 () Bool)

(assert (=> d!76939 m!334225))

(declare-fun m!334227 () Bool)

(assert (=> d!76939 m!334227))

(assert (=> b!265042 d!76939))

(declare-fun d!76941 () Bool)

(declare-fun c!50453 () Bool)

(assert (=> d!76941 (= c!50453 ((_ is Cons!3791) (t!37443 (Cons!3791 (h!9188 tokens!465) Nil!3791))))))

(declare-fun e!165501 () List!3799)

(assert (=> d!76941 (= (printList!285 thiss!17480 (t!37443 (Cons!3791 (h!9188 tokens!465) Nil!3791))) e!165501)))

(declare-fun b!266439 () Bool)

(assert (=> b!266439 (= e!165501 (++!980 (list!1535 (charsOf!368 (h!9188 (t!37443 (Cons!3791 (h!9188 tokens!465) Nil!3791))))) (printList!285 thiss!17480 (t!37443 (t!37443 (Cons!3791 (h!9188 tokens!465) Nil!3791))))))))

(declare-fun b!266440 () Bool)

(assert (=> b!266440 (= e!165501 Nil!3789)))

(assert (= (and d!76941 c!50453) b!266439))

(assert (= (and d!76941 (not c!50453)) b!266440))

(declare-fun m!334229 () Bool)

(assert (=> b!266439 m!334229))

(assert (=> b!266439 m!334229))

(declare-fun m!334231 () Bool)

(assert (=> b!266439 m!334231))

(declare-fun m!334233 () Bool)

(assert (=> b!266439 m!334233))

(assert (=> b!266439 m!334231))

(assert (=> b!266439 m!334233))

(declare-fun m!334235 () Bool)

(assert (=> b!266439 m!334235))

(assert (=> b!265042 d!76941))

(declare-fun d!76943 () Bool)

(declare-fun e!165502 () Bool)

(assert (=> d!76943 e!165502))

(declare-fun res!122098 () Bool)

(assert (=> d!76943 (=> (not res!122098) (not e!165502))))

(declare-fun lt!109130 () BalanceConc!2546)

(assert (=> d!76943 (= res!122098 (= (list!1538 lt!109130) (t!37443 tokens!465)))))

(assert (=> d!76943 (= lt!109130 (BalanceConc!2547 (fromList!169 (t!37443 tokens!465))))))

(assert (=> d!76943 (= (fromListB!308 (t!37443 tokens!465)) lt!109130)))

(declare-fun b!266441 () Bool)

(assert (=> b!266441 (= e!165502 (isBalanced!341 (fromList!169 (t!37443 tokens!465))))))

(assert (= (and d!76943 res!122098) b!266441))

(declare-fun m!334237 () Bool)

(assert (=> d!76943 m!334237))

(declare-fun m!334239 () Bool)

(assert (=> d!76943 m!334239))

(assert (=> b!266441 m!334239))

(assert (=> b!266441 m!334239))

(declare-fun m!334241 () Bool)

(assert (=> b!266441 m!334241))

(assert (=> d!76007 d!76943))

(assert (=> b!264832 d!76099))

(declare-fun b!266450 () Bool)

(declare-fun tp!101597 () Bool)

(declare-fun e!165508 () Bool)

(declare-fun tp!101595 () Bool)

(assert (=> b!266450 (= e!165508 (and (inv!4685 (left!3116 (c!50020 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))) (value!24921 separatorToken!170))))) tp!101597 (inv!4685 (right!3446 (c!50020 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))) (value!24921 separatorToken!170))))) tp!101595))))

(declare-fun b!266452 () Bool)

(declare-fun e!165507 () Bool)

(declare-fun tp!101596 () Bool)

(assert (=> b!266452 (= e!165507 tp!101596)))

(declare-fun b!266451 () Bool)

(declare-fun inv!4691 (IArray!2537) Bool)

(assert (=> b!266451 (= e!165508 (and (inv!4691 (xs!3867 (c!50020 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))) (value!24921 separatorToken!170))))) e!165507))))

(assert (=> b!264652 (= tp!101347 (and (inv!4685 (c!50020 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))) (value!24921 separatorToken!170)))) e!165508))))

(assert (= (and b!264652 ((_ is Node!1268) (c!50020 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))) (value!24921 separatorToken!170))))) b!266450))

(assert (= b!266451 b!266452))

(assert (= (and b!264652 ((_ is Leaf!1969) (c!50020 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))) (value!24921 separatorToken!170))))) b!266451))

(declare-fun m!334243 () Bool)

(assert (=> b!266450 m!334243))

(declare-fun m!334245 () Bool)

(assert (=> b!266450 m!334245))

(declare-fun m!334247 () Bool)

(assert (=> b!266451 m!334247))

(assert (=> b!264652 m!330187))

(declare-fun b!266455 () Bool)

(declare-fun e!165511 () Bool)

(assert (=> b!266455 (= e!165511 true)))

(declare-fun b!266454 () Bool)

(declare-fun e!165510 () Bool)

(assert (=> b!266454 (= e!165510 e!165511)))

(declare-fun b!266453 () Bool)

(declare-fun e!165509 () Bool)

(assert (=> b!266453 (= e!165509 e!165510)))

(assert (=> b!264844 e!165509))

(assert (= b!266454 b!266455))

(assert (= b!266453 b!266454))

(assert (= (and b!264844 ((_ is Cons!3792) (t!37444 rules!1920))) b!266453))

(assert (=> b!266455 (< (dynLambda!1929 order!2893 (toValue!1450 (transformation!723 (h!9189 (t!37444 rules!1920))))) (dynLambda!1930 order!2895 lambda!8919))))

(assert (=> b!266455 (< (dynLambda!1931 order!2897 (toChars!1309 (transformation!723 (h!9189 (t!37444 rules!1920))))) (dynLambda!1930 order!2895 lambda!8919))))

(declare-fun tp!101598 () Bool)

(declare-fun e!165513 () Bool)

(declare-fun b!266456 () Bool)

(declare-fun tp!101600 () Bool)

(assert (=> b!266456 (= e!165513 (and (inv!4685 (left!3116 (c!50020 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))) (value!24921 (h!9188 tokens!465)))))) tp!101600 (inv!4685 (right!3446 (c!50020 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))) (value!24921 (h!9188 tokens!465)))))) tp!101598))))

(declare-fun b!266458 () Bool)

(declare-fun e!165512 () Bool)

(declare-fun tp!101599 () Bool)

(assert (=> b!266458 (= e!165512 tp!101599)))

(declare-fun b!266457 () Bool)

(assert (=> b!266457 (= e!165513 (and (inv!4691 (xs!3867 (c!50020 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))) (value!24921 (h!9188 tokens!465)))))) e!165512))))

(assert (=> b!264994 (= tp!101389 (and (inv!4685 (c!50020 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))) (value!24921 (h!9188 tokens!465))))) e!165513))))

(assert (= (and b!264994 ((_ is Node!1268) (c!50020 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))) (value!24921 (h!9188 tokens!465)))))) b!266456))

(assert (= b!266457 b!266458))

(assert (= (and b!264994 ((_ is Leaf!1969) (c!50020 (dynLambda!1927 (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))) (value!24921 (h!9188 tokens!465)))))) b!266457))

(declare-fun m!334249 () Bool)

(assert (=> b!266456 m!334249))

(declare-fun m!334251 () Bool)

(assert (=> b!266456 m!334251))

(declare-fun m!334253 () Bool)

(assert (=> b!266457 m!334253))

(assert (=> b!264994 m!330721))

(declare-fun b!266461 () Bool)

(declare-fun e!165514 () Bool)

(declare-fun tp!101602 () Bool)

(assert (=> b!266461 (= e!165514 tp!101602)))

(assert (=> b!265111 (= tp!101448 e!165514)))

(declare-fun b!266459 () Bool)

(assert (=> b!266459 (= e!165514 tp_is_empty!1803)))

(declare-fun b!266460 () Bool)

(declare-fun tp!101604 () Bool)

(declare-fun tp!101605 () Bool)

(assert (=> b!266460 (= e!165514 (and tp!101604 tp!101605))))

(declare-fun b!266462 () Bool)

(declare-fun tp!101603 () Bool)

(declare-fun tp!101601 () Bool)

(assert (=> b!266462 (= e!165514 (and tp!101603 tp!101601))))

(assert (= (and b!265111 ((_ is ElementMatch!947) (regOne!2406 (regex!723 (h!9189 rules!1920))))) b!266459))

(assert (= (and b!265111 ((_ is Concat!1693) (regOne!2406 (regex!723 (h!9189 rules!1920))))) b!266460))

(assert (= (and b!265111 ((_ is Star!947) (regOne!2406 (regex!723 (h!9189 rules!1920))))) b!266461))

(assert (= (and b!265111 ((_ is Union!947) (regOne!2406 (regex!723 (h!9189 rules!1920))))) b!266462))

(declare-fun b!266465 () Bool)

(declare-fun e!165515 () Bool)

(declare-fun tp!101607 () Bool)

(assert (=> b!266465 (= e!165515 tp!101607)))

(assert (=> b!265111 (= tp!101449 e!165515)))

(declare-fun b!266463 () Bool)

(assert (=> b!266463 (= e!165515 tp_is_empty!1803)))

(declare-fun b!266464 () Bool)

(declare-fun tp!101609 () Bool)

(declare-fun tp!101610 () Bool)

(assert (=> b!266464 (= e!165515 (and tp!101609 tp!101610))))

(declare-fun b!266466 () Bool)

(declare-fun tp!101608 () Bool)

(declare-fun tp!101606 () Bool)

(assert (=> b!266466 (= e!165515 (and tp!101608 tp!101606))))

(assert (= (and b!265111 ((_ is ElementMatch!947) (regTwo!2406 (regex!723 (h!9189 rules!1920))))) b!266463))

(assert (= (and b!265111 ((_ is Concat!1693) (regTwo!2406 (regex!723 (h!9189 rules!1920))))) b!266464))

(assert (= (and b!265111 ((_ is Star!947) (regTwo!2406 (regex!723 (h!9189 rules!1920))))) b!266465))

(assert (= (and b!265111 ((_ is Union!947) (regTwo!2406 (regex!723 (h!9189 rules!1920))))) b!266466))

(declare-fun b!266469 () Bool)

(declare-fun e!165516 () Bool)

(declare-fun tp!101612 () Bool)

(assert (=> b!266469 (= e!165516 tp!101612)))

(assert (=> b!265112 (= tp!101446 e!165516)))

(declare-fun b!266467 () Bool)

(assert (=> b!266467 (= e!165516 tp_is_empty!1803)))

(declare-fun b!266468 () Bool)

(declare-fun tp!101614 () Bool)

(declare-fun tp!101615 () Bool)

(assert (=> b!266468 (= e!165516 (and tp!101614 tp!101615))))

(declare-fun b!266470 () Bool)

(declare-fun tp!101613 () Bool)

(declare-fun tp!101611 () Bool)

(assert (=> b!266470 (= e!165516 (and tp!101613 tp!101611))))

(assert (= (and b!265112 ((_ is ElementMatch!947) (reg!1276 (regex!723 (h!9189 rules!1920))))) b!266467))

(assert (= (and b!265112 ((_ is Concat!1693) (reg!1276 (regex!723 (h!9189 rules!1920))))) b!266468))

(assert (= (and b!265112 ((_ is Star!947) (reg!1276 (regex!723 (h!9189 rules!1920))))) b!266469))

(assert (= (and b!265112 ((_ is Union!947) (reg!1276 (regex!723 (h!9189 rules!1920))))) b!266470))

(declare-fun b!266473 () Bool)

(declare-fun e!165517 () Bool)

(declare-fun tp!101617 () Bool)

(assert (=> b!266473 (= e!165517 tp!101617)))

(assert (=> b!265090 (= tp!101421 e!165517)))

(declare-fun b!266471 () Bool)

(assert (=> b!266471 (= e!165517 tp_is_empty!1803)))

(declare-fun b!266472 () Bool)

(declare-fun tp!101619 () Bool)

(declare-fun tp!101620 () Bool)

(assert (=> b!266472 (= e!165517 (and tp!101619 tp!101620))))

(declare-fun b!266474 () Bool)

(declare-fun tp!101618 () Bool)

(declare-fun tp!101616 () Bool)

(assert (=> b!266474 (= e!165517 (and tp!101618 tp!101616))))

(assert (= (and b!265090 ((_ is ElementMatch!947) (reg!1276 (regex!723 (rule!1308 (h!9188 tokens!465)))))) b!266471))

(assert (= (and b!265090 ((_ is Concat!1693) (reg!1276 (regex!723 (rule!1308 (h!9188 tokens!465)))))) b!266472))

(assert (= (and b!265090 ((_ is Star!947) (reg!1276 (regex!723 (rule!1308 (h!9188 tokens!465)))))) b!266473))

(assert (= (and b!265090 ((_ is Union!947) (reg!1276 (regex!723 (rule!1308 (h!9188 tokens!465)))))) b!266474))

(declare-fun b!266477 () Bool)

(declare-fun e!165518 () Bool)

(declare-fun tp!101622 () Bool)

(assert (=> b!266477 (= e!165518 tp!101622)))

(assert (=> b!265089 (= tp!101423 e!165518)))

(declare-fun b!266475 () Bool)

(assert (=> b!266475 (= e!165518 tp_is_empty!1803)))

(declare-fun b!266476 () Bool)

(declare-fun tp!101624 () Bool)

(declare-fun tp!101625 () Bool)

(assert (=> b!266476 (= e!165518 (and tp!101624 tp!101625))))

(declare-fun b!266478 () Bool)

(declare-fun tp!101623 () Bool)

(declare-fun tp!101621 () Bool)

(assert (=> b!266478 (= e!165518 (and tp!101623 tp!101621))))

(assert (= (and b!265089 ((_ is ElementMatch!947) (regOne!2406 (regex!723 (rule!1308 (h!9188 tokens!465)))))) b!266475))

(assert (= (and b!265089 ((_ is Concat!1693) (regOne!2406 (regex!723 (rule!1308 (h!9188 tokens!465)))))) b!266476))

(assert (= (and b!265089 ((_ is Star!947) (regOne!2406 (regex!723 (rule!1308 (h!9188 tokens!465)))))) b!266477))

(assert (= (and b!265089 ((_ is Union!947) (regOne!2406 (regex!723 (rule!1308 (h!9188 tokens!465)))))) b!266478))

(declare-fun b!266481 () Bool)

(declare-fun e!165519 () Bool)

(declare-fun tp!101627 () Bool)

(assert (=> b!266481 (= e!165519 tp!101627)))

(assert (=> b!265089 (= tp!101424 e!165519)))

(declare-fun b!266479 () Bool)

(assert (=> b!266479 (= e!165519 tp_is_empty!1803)))

(declare-fun b!266480 () Bool)

(declare-fun tp!101629 () Bool)

(declare-fun tp!101630 () Bool)

(assert (=> b!266480 (= e!165519 (and tp!101629 tp!101630))))

(declare-fun b!266482 () Bool)

(declare-fun tp!101628 () Bool)

(declare-fun tp!101626 () Bool)

(assert (=> b!266482 (= e!165519 (and tp!101628 tp!101626))))

(assert (= (and b!265089 ((_ is ElementMatch!947) (regTwo!2406 (regex!723 (rule!1308 (h!9188 tokens!465)))))) b!266479))

(assert (= (and b!265089 ((_ is Concat!1693) (regTwo!2406 (regex!723 (rule!1308 (h!9188 tokens!465)))))) b!266480))

(assert (= (and b!265089 ((_ is Star!947) (regTwo!2406 (regex!723 (rule!1308 (h!9188 tokens!465)))))) b!266481))

(assert (= (and b!265089 ((_ is Union!947) (regTwo!2406 (regex!723 (rule!1308 (h!9188 tokens!465)))))) b!266482))

(declare-fun b!266485 () Bool)

(declare-fun e!165520 () Bool)

(declare-fun tp!101632 () Bool)

(assert (=> b!266485 (= e!165520 tp!101632)))

(assert (=> b!265113 (= tp!101447 e!165520)))

(declare-fun b!266483 () Bool)

(assert (=> b!266483 (= e!165520 tp_is_empty!1803)))

(declare-fun b!266484 () Bool)

(declare-fun tp!101634 () Bool)

(declare-fun tp!101635 () Bool)

(assert (=> b!266484 (= e!165520 (and tp!101634 tp!101635))))

(declare-fun b!266486 () Bool)

(declare-fun tp!101633 () Bool)

(declare-fun tp!101631 () Bool)

(assert (=> b!266486 (= e!165520 (and tp!101633 tp!101631))))

(assert (= (and b!265113 ((_ is ElementMatch!947) (regOne!2407 (regex!723 (h!9189 rules!1920))))) b!266483))

(assert (= (and b!265113 ((_ is Concat!1693) (regOne!2407 (regex!723 (h!9189 rules!1920))))) b!266484))

(assert (= (and b!265113 ((_ is Star!947) (regOne!2407 (regex!723 (h!9189 rules!1920))))) b!266485))

(assert (= (and b!265113 ((_ is Union!947) (regOne!2407 (regex!723 (h!9189 rules!1920))))) b!266486))

(declare-fun b!266489 () Bool)

(declare-fun e!165521 () Bool)

(declare-fun tp!101637 () Bool)

(assert (=> b!266489 (= e!165521 tp!101637)))

(assert (=> b!265113 (= tp!101445 e!165521)))

(declare-fun b!266487 () Bool)

(assert (=> b!266487 (= e!165521 tp_is_empty!1803)))

(declare-fun b!266488 () Bool)

(declare-fun tp!101639 () Bool)

(declare-fun tp!101640 () Bool)

(assert (=> b!266488 (= e!165521 (and tp!101639 tp!101640))))

(declare-fun b!266490 () Bool)

(declare-fun tp!101638 () Bool)

(declare-fun tp!101636 () Bool)

(assert (=> b!266490 (= e!165521 (and tp!101638 tp!101636))))

(assert (= (and b!265113 ((_ is ElementMatch!947) (regTwo!2407 (regex!723 (h!9189 rules!1920))))) b!266487))

(assert (= (and b!265113 ((_ is Concat!1693) (regTwo!2407 (regex!723 (h!9189 rules!1920))))) b!266488))

(assert (= (and b!265113 ((_ is Star!947) (regTwo!2407 (regex!723 (h!9189 rules!1920))))) b!266489))

(assert (= (and b!265113 ((_ is Union!947) (regTwo!2407 (regex!723 (h!9189 rules!1920))))) b!266490))

(declare-fun b!266493 () Bool)

(declare-fun e!165522 () Bool)

(declare-fun tp!101642 () Bool)

(assert (=> b!266493 (= e!165522 tp!101642)))

(assert (=> b!265091 (= tp!101422 e!165522)))

(declare-fun b!266491 () Bool)

(assert (=> b!266491 (= e!165522 tp_is_empty!1803)))

(declare-fun b!266492 () Bool)

(declare-fun tp!101644 () Bool)

(declare-fun tp!101645 () Bool)

(assert (=> b!266492 (= e!165522 (and tp!101644 tp!101645))))

(declare-fun b!266494 () Bool)

(declare-fun tp!101643 () Bool)

(declare-fun tp!101641 () Bool)

(assert (=> b!266494 (= e!165522 (and tp!101643 tp!101641))))

(assert (= (and b!265091 ((_ is ElementMatch!947) (regOne!2407 (regex!723 (rule!1308 (h!9188 tokens!465)))))) b!266491))

(assert (= (and b!265091 ((_ is Concat!1693) (regOne!2407 (regex!723 (rule!1308 (h!9188 tokens!465)))))) b!266492))

(assert (= (and b!265091 ((_ is Star!947) (regOne!2407 (regex!723 (rule!1308 (h!9188 tokens!465)))))) b!266493))

(assert (= (and b!265091 ((_ is Union!947) (regOne!2407 (regex!723 (rule!1308 (h!9188 tokens!465)))))) b!266494))

(declare-fun b!266497 () Bool)

(declare-fun e!165523 () Bool)

(declare-fun tp!101647 () Bool)

(assert (=> b!266497 (= e!165523 tp!101647)))

(assert (=> b!265091 (= tp!101420 e!165523)))

(declare-fun b!266495 () Bool)

(assert (=> b!266495 (= e!165523 tp_is_empty!1803)))

(declare-fun b!266496 () Bool)

(declare-fun tp!101649 () Bool)

(declare-fun tp!101650 () Bool)

(assert (=> b!266496 (= e!165523 (and tp!101649 tp!101650))))

(declare-fun b!266498 () Bool)

(declare-fun tp!101648 () Bool)

(declare-fun tp!101646 () Bool)

(assert (=> b!266498 (= e!165523 (and tp!101648 tp!101646))))

(assert (= (and b!265091 ((_ is ElementMatch!947) (regTwo!2407 (regex!723 (rule!1308 (h!9188 tokens!465)))))) b!266495))

(assert (= (and b!265091 ((_ is Concat!1693) (regTwo!2407 (regex!723 (rule!1308 (h!9188 tokens!465)))))) b!266496))

(assert (= (and b!265091 ((_ is Star!947) (regTwo!2407 (regex!723 (rule!1308 (h!9188 tokens!465)))))) b!266497))

(assert (= (and b!265091 ((_ is Union!947) (regTwo!2407 (regex!723 (rule!1308 (h!9188 tokens!465)))))) b!266498))

(declare-fun b!266501 () Bool)

(declare-fun e!165526 () Bool)

(assert (=> b!266501 (= e!165526 true)))

(declare-fun b!266500 () Bool)

(declare-fun e!165525 () Bool)

(assert (=> b!266500 (= e!165525 e!165526)))

(declare-fun b!266499 () Bool)

(declare-fun e!165524 () Bool)

(assert (=> b!266499 (= e!165524 e!165525)))

(assert (=> b!264944 e!165524))

(assert (= b!266500 b!266501))

(assert (= b!266499 b!266500))

(assert (= (and b!264944 ((_ is Cons!3792) (t!37444 rules!1920))) b!266499))

(assert (=> b!266501 (< (dynLambda!1929 order!2893 (toValue!1450 (transformation!723 (h!9189 (t!37444 rules!1920))))) (dynLambda!1930 order!2895 lambda!8928))))

(assert (=> b!266501 (< (dynLambda!1931 order!2897 (toChars!1309 (transformation!723 (h!9189 (t!37444 rules!1920))))) (dynLambda!1930 order!2895 lambda!8928))))

(declare-fun b!266504 () Bool)

(declare-fun b_free!9893 () Bool)

(declare-fun b_next!9893 () Bool)

(assert (=> b!266504 (= b_free!9893 (not b_next!9893))))

(declare-fun tp!101652 () Bool)

(declare-fun b_and!21001 () Bool)

(assert (=> b!266504 (= tp!101652 b_and!21001)))

(declare-fun b_free!9895 () Bool)

(declare-fun b_next!9895 () Bool)

(assert (=> b!266504 (= b_free!9895 (not b_next!9895))))

(declare-fun t!37746 () Bool)

(declare-fun tb!14733 () Bool)

(assert (=> (and b!266504 (= (toChars!1309 (transformation!723 (h!9189 (t!37444 (t!37444 rules!1920))))) (toChars!1309 (transformation!723 (rule!1308 (apply!749 (seqFromList!814 (t!37443 tokens!465)) 0))))) t!37746) tb!14733))

(declare-fun result!18292 () Bool)

(assert (= result!18292 result!18134))

(assert (=> d!76479 t!37746))

(declare-fun tb!14735 () Bool)

(declare-fun t!37748 () Bool)

(assert (=> (and b!266504 (= (toChars!1309 (transformation!723 (h!9189 (t!37444 (t!37444 rules!1920))))) (toChars!1309 (transformation!723 (rule!1308 (h!9188 (Cons!3791 (h!9188 tokens!465) Nil!3791)))))) t!37748) tb!14735))

(declare-fun result!18294 () Bool)

(assert (= result!18294 result!18280))

(assert (=> d!76939 t!37748))

(declare-fun t!37750 () Bool)

(declare-fun tb!14737 () Bool)

(assert (=> (and b!266504 (= (toChars!1309 (transformation!723 (h!9189 (t!37444 (t!37444 rules!1920))))) (toChars!1309 (transformation!723 (rule!1308 (ite c!50105 call!14351 call!14353))))) t!37750) tb!14737))

(declare-fun result!18296 () Bool)

(assert (= result!18296 result!18214))

(assert (=> d!76841 t!37750))

(declare-fun tb!14739 () Bool)

(declare-fun t!37752 () Bool)

(assert (=> (and b!266504 (= (toChars!1309 (transformation!723 (h!9189 (t!37444 (t!37444 rules!1920))))) (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465))))) t!37752) tb!14739))

(declare-fun result!18298 () Bool)

(assert (= result!18298 result!18038))

(assert (=> d!76105 t!37752))

(declare-fun tb!14741 () Bool)

(declare-fun t!37754 () Bool)

(assert (=> (and b!266504 (= (toChars!1309 (transformation!723 (h!9189 (t!37444 (t!37444 rules!1920))))) (toChars!1309 (transformation!723 (rule!1308 (apply!749 lt!108109 0))))) t!37754) tb!14741))

(declare-fun result!18300 () Bool)

(assert (= result!18300 result!18184))

(assert (=> d!76737 t!37754))

(declare-fun tb!14743 () Bool)

(declare-fun t!37756 () Bool)

(assert (=> (and b!266504 (= (toChars!1309 (transformation!723 (h!9189 (t!37444 (t!37444 rules!1920))))) (toChars!1309 (transformation!723 (rule!1308 separatorToken!170)))) t!37756) tb!14743))

(declare-fun result!18302 () Bool)

(assert (= result!18302 result!18012))

(assert (=> b!264646 t!37756))

(declare-fun t!37758 () Bool)

(declare-fun tb!14745 () Bool)

(assert (=> (and b!266504 (= (toChars!1309 (transformation!723 (h!9189 (t!37444 (t!37444 rules!1920))))) (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 tokens!465)))))) t!37758) tb!14745))

(declare-fun result!18304 () Bool)

(assert (= result!18304 result!18094))

(assert (=> d!76353 t!37758))

(declare-fun tb!14747 () Bool)

(declare-fun t!37760 () Bool)

(assert (=> (and b!266504 (= (toChars!1309 (transformation!723 (h!9189 (t!37444 (t!37444 rules!1920))))) (toChars!1309 (transformation!723 (rule!1308 (ite c!50118 call!14356 call!14358))))) t!37760) tb!14747))

(declare-fun result!18306 () Bool)

(assert (= result!18306 result!18270))

(assert (=> d!76885 t!37760))

(declare-fun tb!14749 () Bool)

(declare-fun t!37762 () Bool)

(assert (=> (and b!266504 (= (toChars!1309 (transformation!723 (h!9189 (t!37444 (t!37444 rules!1920))))) (toChars!1309 (transformation!723 (rule!1308 (ite c!50104 separatorToken!170 call!14353))))) t!37762) tb!14749))

(declare-fun result!18308 () Bool)

(assert (= result!18308 result!18144))

(assert (=> d!76505 t!37762))

(assert (=> d!76099 t!37756))

(declare-fun tb!14751 () Bool)

(declare-fun t!37764 () Bool)

(assert (=> (and b!266504 (= (toChars!1309 (transformation!723 (h!9189 (t!37444 (t!37444 rules!1920))))) (toChars!1309 (transformation!723 (rule!1308 (apply!749 lt!108115 0))))) t!37764) tb!14751))

(declare-fun result!18310 () Bool)

(assert (= result!18310 result!18154))

(assert (=> d!76529 t!37764))

(assert (=> b!265023 t!37752))

(assert (=> b!265625 t!37758))

(declare-fun t!37766 () Bool)

(declare-fun tb!14753 () Bool)

(assert (=> (and b!266504 (= (toChars!1309 (transformation!723 (h!9189 (t!37444 (t!37444 rules!1920))))) (toChars!1309 (transformation!723 (rule!1308 (ite c!50117 separatorToken!170 call!14358))))) t!37766) tb!14753))

(declare-fun result!18312 () Bool)

(assert (= result!18312 result!18164))

(assert (=> d!76657 t!37766))

(declare-fun tp!101653 () Bool)

(declare-fun b_and!21003 () Bool)

(assert (=> b!266504 (= tp!101653 (and (=> t!37760 result!18306) (=> t!37748 result!18294) (=> t!37758 result!18304) (=> t!37752 result!18298) (=> t!37746 result!18292) (=> t!37750 result!18296) (=> t!37764 result!18310) (=> t!37766 result!18312) (=> t!37756 result!18302) (=> t!37754 result!18300) (=> t!37762 result!18308) b_and!21003))))

(declare-fun e!165527 () Bool)

(assert (=> b!266504 (= e!165527 (and tp!101652 tp!101653))))

(declare-fun b!266503 () Bool)

(declare-fun e!165528 () Bool)

(declare-fun tp!101654 () Bool)

(assert (=> b!266503 (= e!165528 (and tp!101654 (inv!4678 (tag!933 (h!9189 (t!37444 (t!37444 rules!1920))))) (inv!4681 (transformation!723 (h!9189 (t!37444 (t!37444 rules!1920))))) e!165527))))

(declare-fun b!266502 () Bool)

(declare-fun e!165529 () Bool)

(declare-fun tp!101651 () Bool)

(assert (=> b!266502 (= e!165529 (and e!165528 tp!101651))))

(assert (=> b!265122 (= tp!101458 e!165529)))

(assert (= b!266503 b!266504))

(assert (= b!266502 b!266503))

(assert (= (and b!265122 ((_ is Cons!3792) (t!37444 (t!37444 rules!1920)))) b!266502))

(declare-fun m!334255 () Bool)

(assert (=> b!266503 m!334255))

(declare-fun m!334257 () Bool)

(assert (=> b!266503 m!334257))

(declare-fun b!266507 () Bool)

(declare-fun e!165531 () Bool)

(declare-fun tp!101656 () Bool)

(assert (=> b!266507 (= e!165531 tp!101656)))

(assert (=> b!265123 (= tp!101461 e!165531)))

(declare-fun b!266505 () Bool)

(assert (=> b!266505 (= e!165531 tp_is_empty!1803)))

(declare-fun b!266506 () Bool)

(declare-fun tp!101658 () Bool)

(declare-fun tp!101659 () Bool)

(assert (=> b!266506 (= e!165531 (and tp!101658 tp!101659))))

(declare-fun b!266508 () Bool)

(declare-fun tp!101657 () Bool)

(declare-fun tp!101655 () Bool)

(assert (=> b!266508 (= e!165531 (and tp!101657 tp!101655))))

(assert (= (and b!265123 ((_ is ElementMatch!947) (regex!723 (h!9189 (t!37444 rules!1920))))) b!266505))

(assert (= (and b!265123 ((_ is Concat!1693) (regex!723 (h!9189 (t!37444 rules!1920))))) b!266506))

(assert (= (and b!265123 ((_ is Star!947) (regex!723 (h!9189 (t!37444 rules!1920))))) b!266507))

(assert (= (and b!265123 ((_ is Union!947) (regex!723 (h!9189 (t!37444 rules!1920))))) b!266508))

(declare-fun b!266509 () Bool)

(declare-fun e!165532 () Bool)

(declare-fun tp!101660 () Bool)

(assert (=> b!266509 (= e!165532 (and tp_is_empty!1803 tp!101660))))

(assert (=> b!265076 (= tp!101408 e!165532)))

(assert (= (and b!265076 ((_ is Cons!3789) (t!37441 (originalCharacters!766 (h!9188 tokens!465))))) b!266509))

(declare-fun b!266512 () Bool)

(declare-fun e!165535 () Bool)

(assert (=> b!266512 (= e!165535 true)))

(declare-fun b!266511 () Bool)

(declare-fun e!165534 () Bool)

(assert (=> b!266511 (= e!165534 e!165535)))

(declare-fun b!266510 () Bool)

(declare-fun e!165533 () Bool)

(assert (=> b!266510 (= e!165533 e!165534)))

(assert (=> b!265065 e!165533))

(assert (= b!266511 b!266512))

(assert (= b!266510 b!266511))

(assert (= (and b!265065 ((_ is Cons!3792) (t!37444 rules!1920))) b!266510))

(assert (=> b!266512 (< (dynLambda!1929 order!2893 (toValue!1450 (transformation!723 (h!9189 (t!37444 rules!1920))))) (dynLambda!1930 order!2895 lambda!8936))))

(assert (=> b!266512 (< (dynLambda!1931 order!2897 (toChars!1309 (transformation!723 (h!9189 (t!37444 rules!1920))))) (dynLambda!1930 order!2895 lambda!8936))))

(declare-fun b!266515 () Bool)

(declare-fun e!165538 () Bool)

(assert (=> b!266515 (= e!165538 true)))

(declare-fun b!266514 () Bool)

(declare-fun e!165537 () Bool)

(assert (=> b!266514 (= e!165537 e!165538)))

(declare-fun b!266513 () Bool)

(declare-fun e!165536 () Bool)

(assert (=> b!266513 (= e!165536 e!165537)))

(assert (=> b!265054 e!165536))

(assert (= b!266514 b!266515))

(assert (= b!266513 b!266514))

(assert (= (and b!265054 ((_ is Cons!3792) (t!37444 rules!1920))) b!266513))

(assert (=> b!266515 (< (dynLambda!1929 order!2893 (toValue!1450 (transformation!723 (h!9189 (t!37444 rules!1920))))) (dynLambda!1930 order!2895 lambda!8935))))

(assert (=> b!266515 (< (dynLambda!1931 order!2897 (toChars!1309 (transformation!723 (h!9189 (t!37444 rules!1920))))) (dynLambda!1930 order!2895 lambda!8935))))

(declare-fun b!266516 () Bool)

(declare-fun e!165539 () Bool)

(declare-fun tp!101661 () Bool)

(assert (=> b!266516 (= e!165539 (and tp_is_empty!1803 tp!101661))))

(assert (=> b!265077 (= tp!101409 e!165539)))

(assert (= (and b!265077 ((_ is Cons!3789) (t!37441 (originalCharacters!766 separatorToken!170)))) b!266516))

(declare-fun b!266517 () Bool)

(declare-fun e!165540 () Bool)

(declare-fun tp!101662 () Bool)

(assert (=> b!266517 (= e!165540 (and tp_is_empty!1803 tp!101662))))

(assert (=> b!265103 (= tp!101439 e!165540)))

(assert (= (and b!265103 ((_ is Cons!3789) (originalCharacters!766 (h!9188 (t!37443 tokens!465))))) b!266517))

(declare-fun b!266521 () Bool)

(declare-fun b_free!9897 () Bool)

(declare-fun b_next!9897 () Bool)

(assert (=> b!266521 (= b_free!9897 (not b_next!9897))))

(declare-fun tp!101665 () Bool)

(declare-fun b_and!21005 () Bool)

(assert (=> b!266521 (= tp!101665 b_and!21005)))

(declare-fun b_free!9899 () Bool)

(declare-fun b_next!9899 () Bool)

(assert (=> b!266521 (= b_free!9899 (not b_next!9899))))

(declare-fun t!37768 () Bool)

(declare-fun tb!14755 () Bool)

(assert (=> (and b!266521 (= (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 (t!37443 tokens!465)))))) (toChars!1309 (transformation!723 (rule!1308 (apply!749 (seqFromList!814 (t!37443 tokens!465)) 0))))) t!37768) tb!14755))

(declare-fun result!18314 () Bool)

(assert (= result!18314 result!18134))

(assert (=> d!76479 t!37768))

(declare-fun t!37770 () Bool)

(declare-fun tb!14757 () Bool)

(assert (=> (and b!266521 (= (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 (t!37443 tokens!465)))))) (toChars!1309 (transformation!723 (rule!1308 (h!9188 (Cons!3791 (h!9188 tokens!465) Nil!3791)))))) t!37770) tb!14757))

(declare-fun result!18316 () Bool)

(assert (= result!18316 result!18280))

(assert (=> d!76939 t!37770))

(declare-fun t!37772 () Bool)

(declare-fun tb!14759 () Bool)

(assert (=> (and b!266521 (= (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 (t!37443 tokens!465)))))) (toChars!1309 (transformation!723 (rule!1308 (ite c!50105 call!14351 call!14353))))) t!37772) tb!14759))

(declare-fun result!18318 () Bool)

(assert (= result!18318 result!18214))

(assert (=> d!76841 t!37772))

(declare-fun t!37774 () Bool)

(declare-fun tb!14761 () Bool)

(assert (=> (and b!266521 (= (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 (t!37443 tokens!465)))))) (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465))))) t!37774) tb!14761))

(declare-fun result!18320 () Bool)

(assert (= result!18320 result!18038))

(assert (=> d!76105 t!37774))

(declare-fun tb!14763 () Bool)

(declare-fun t!37776 () Bool)

(assert (=> (and b!266521 (= (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 (t!37443 tokens!465)))))) (toChars!1309 (transformation!723 (rule!1308 (apply!749 lt!108109 0))))) t!37776) tb!14763))

(declare-fun result!18322 () Bool)

(assert (= result!18322 result!18184))

(assert (=> d!76737 t!37776))

(declare-fun tb!14765 () Bool)

(declare-fun t!37778 () Bool)

(assert (=> (and b!266521 (= (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 (t!37443 tokens!465)))))) (toChars!1309 (transformation!723 (rule!1308 separatorToken!170)))) t!37778) tb!14765))

(declare-fun result!18324 () Bool)

(assert (= result!18324 result!18012))

(assert (=> b!264646 t!37778))

(declare-fun t!37780 () Bool)

(declare-fun tb!14767 () Bool)

(assert (=> (and b!266521 (= (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 (t!37443 tokens!465)))))) (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 tokens!465)))))) t!37780) tb!14767))

(declare-fun result!18326 () Bool)

(assert (= result!18326 result!18094))

(assert (=> d!76353 t!37780))

(declare-fun t!37782 () Bool)

(declare-fun tb!14769 () Bool)

(assert (=> (and b!266521 (= (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 (t!37443 tokens!465)))))) (toChars!1309 (transformation!723 (rule!1308 (ite c!50118 call!14356 call!14358))))) t!37782) tb!14769))

(declare-fun result!18328 () Bool)

(assert (= result!18328 result!18270))

(assert (=> d!76885 t!37782))

(declare-fun t!37784 () Bool)

(declare-fun tb!14771 () Bool)

(assert (=> (and b!266521 (= (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 (t!37443 tokens!465)))))) (toChars!1309 (transformation!723 (rule!1308 (ite c!50104 separatorToken!170 call!14353))))) t!37784) tb!14771))

(declare-fun result!18330 () Bool)

(assert (= result!18330 result!18144))

(assert (=> d!76505 t!37784))

(assert (=> d!76099 t!37778))

(declare-fun t!37786 () Bool)

(declare-fun tb!14773 () Bool)

(assert (=> (and b!266521 (= (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 (t!37443 tokens!465)))))) (toChars!1309 (transformation!723 (rule!1308 (apply!749 lt!108115 0))))) t!37786) tb!14773))

(declare-fun result!18332 () Bool)

(assert (= result!18332 result!18154))

(assert (=> d!76529 t!37786))

(assert (=> b!265023 t!37774))

(assert (=> b!265625 t!37780))

(declare-fun tb!14775 () Bool)

(declare-fun t!37788 () Bool)

(assert (=> (and b!266521 (= (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 (t!37443 tokens!465)))))) (toChars!1309 (transformation!723 (rule!1308 (ite c!50117 separatorToken!170 call!14358))))) t!37788) tb!14775))

(declare-fun result!18334 () Bool)

(assert (= result!18334 result!18164))

(assert (=> d!76657 t!37788))

(declare-fun b_and!21007 () Bool)

(declare-fun tp!101666 () Bool)

(assert (=> b!266521 (= tp!101666 (and (=> t!37774 result!18320) (=> t!37782 result!18328) (=> t!37772 result!18318) (=> t!37778 result!18324) (=> t!37784 result!18330) (=> t!37780 result!18326) (=> t!37768 result!18314) (=> t!37786 result!18332) (=> t!37776 result!18322) (=> t!37770 result!18316) (=> t!37788 result!18334) b_and!21007))))

(declare-fun tp!101663 () Bool)

(declare-fun e!165542 () Bool)

(declare-fun b!266520 () Bool)

(declare-fun e!165543 () Bool)

(assert (=> b!266520 (= e!165542 (and tp!101663 (inv!4678 (tag!933 (rule!1308 (h!9188 (t!37443 (t!37443 tokens!465)))))) (inv!4681 (transformation!723 (rule!1308 (h!9188 (t!37443 (t!37443 tokens!465)))))) e!165543))))

(declare-fun e!165544 () Bool)

(declare-fun b!266519 () Bool)

(declare-fun tp!101667 () Bool)

(assert (=> b!266519 (= e!165544 (and (inv!21 (value!24921 (h!9188 (t!37443 (t!37443 tokens!465))))) e!165542 tp!101667))))

(assert (=> b!266521 (= e!165543 (and tp!101665 tp!101666))))

(declare-fun e!165541 () Bool)

(assert (=> b!265102 (= tp!101436 e!165541)))

(declare-fun tp!101664 () Bool)

(declare-fun b!266518 () Bool)

(assert (=> b!266518 (= e!165541 (and (inv!4682 (h!9188 (t!37443 (t!37443 tokens!465)))) e!165544 tp!101664))))

(assert (= b!266520 b!266521))

(assert (= b!266519 b!266520))

(assert (= b!266518 b!266519))

(assert (= (and b!265102 ((_ is Cons!3791) (t!37443 (t!37443 tokens!465)))) b!266518))

(declare-fun m!334259 () Bool)

(assert (=> b!266520 m!334259))

(declare-fun m!334261 () Bool)

(assert (=> b!266520 m!334261))

(declare-fun m!334263 () Bool)

(assert (=> b!266519 m!334263))

(declare-fun m!334265 () Bool)

(assert (=> b!266518 m!334265))

(declare-fun b!266524 () Bool)

(declare-fun e!165547 () Bool)

(declare-fun tp!101669 () Bool)

(assert (=> b!266524 (= e!165547 tp!101669)))

(assert (=> b!265107 (= tp!101443 e!165547)))

(declare-fun b!266522 () Bool)

(assert (=> b!266522 (= e!165547 tp_is_empty!1803)))

(declare-fun b!266523 () Bool)

(declare-fun tp!101671 () Bool)

(declare-fun tp!101672 () Bool)

(assert (=> b!266523 (= e!165547 (and tp!101671 tp!101672))))

(declare-fun b!266525 () Bool)

(declare-fun tp!101670 () Bool)

(declare-fun tp!101668 () Bool)

(assert (=> b!266525 (= e!165547 (and tp!101670 tp!101668))))

(assert (= (and b!265107 ((_ is ElementMatch!947) (regOne!2406 (regex!723 (rule!1308 separatorToken!170))))) b!266522))

(assert (= (and b!265107 ((_ is Concat!1693) (regOne!2406 (regex!723 (rule!1308 separatorToken!170))))) b!266523))

(assert (= (and b!265107 ((_ is Star!947) (regOne!2406 (regex!723 (rule!1308 separatorToken!170))))) b!266524))

(assert (= (and b!265107 ((_ is Union!947) (regOne!2406 (regex!723 (rule!1308 separatorToken!170))))) b!266525))

(declare-fun b!266528 () Bool)

(declare-fun e!165548 () Bool)

(declare-fun tp!101674 () Bool)

(assert (=> b!266528 (= e!165548 tp!101674)))

(assert (=> b!265107 (= tp!101444 e!165548)))

(declare-fun b!266526 () Bool)

(assert (=> b!266526 (= e!165548 tp_is_empty!1803)))

(declare-fun b!266527 () Bool)

(declare-fun tp!101676 () Bool)

(declare-fun tp!101677 () Bool)

(assert (=> b!266527 (= e!165548 (and tp!101676 tp!101677))))

(declare-fun b!266529 () Bool)

(declare-fun tp!101675 () Bool)

(declare-fun tp!101673 () Bool)

(assert (=> b!266529 (= e!165548 (and tp!101675 tp!101673))))

(assert (= (and b!265107 ((_ is ElementMatch!947) (regTwo!2406 (regex!723 (rule!1308 separatorToken!170))))) b!266526))

(assert (= (and b!265107 ((_ is Concat!1693) (regTwo!2406 (regex!723 (rule!1308 separatorToken!170))))) b!266527))

(assert (= (and b!265107 ((_ is Star!947) (regTwo!2406 (regex!723 (rule!1308 separatorToken!170))))) b!266528))

(assert (= (and b!265107 ((_ is Union!947) (regTwo!2406 (regex!723 (rule!1308 separatorToken!170))))) b!266529))

(declare-fun b!266532 () Bool)

(declare-fun e!165549 () Bool)

(declare-fun tp!101679 () Bool)

(assert (=> b!266532 (= e!165549 tp!101679)))

(assert (=> b!265104 (= tp!101435 e!165549)))

(declare-fun b!266530 () Bool)

(assert (=> b!266530 (= e!165549 tp_is_empty!1803)))

(declare-fun b!266531 () Bool)

(declare-fun tp!101681 () Bool)

(declare-fun tp!101682 () Bool)

(assert (=> b!266531 (= e!165549 (and tp!101681 tp!101682))))

(declare-fun b!266533 () Bool)

(declare-fun tp!101680 () Bool)

(declare-fun tp!101678 () Bool)

(assert (=> b!266533 (= e!165549 (and tp!101680 tp!101678))))

(assert (= (and b!265104 ((_ is ElementMatch!947) (regex!723 (rule!1308 (h!9188 (t!37443 tokens!465)))))) b!266530))

(assert (= (and b!265104 ((_ is Concat!1693) (regex!723 (rule!1308 (h!9188 (t!37443 tokens!465)))))) b!266531))

(assert (= (and b!265104 ((_ is Star!947) (regex!723 (rule!1308 (h!9188 (t!37443 tokens!465)))))) b!266532))

(assert (= (and b!265104 ((_ is Union!947) (regex!723 (rule!1308 (h!9188 (t!37443 tokens!465)))))) b!266533))

(declare-fun b!266536 () Bool)

(declare-fun e!165550 () Bool)

(declare-fun tp!101684 () Bool)

(assert (=> b!266536 (= e!165550 tp!101684)))

(assert (=> b!265109 (= tp!101442 e!165550)))

(declare-fun b!266534 () Bool)

(assert (=> b!266534 (= e!165550 tp_is_empty!1803)))

(declare-fun b!266535 () Bool)

(declare-fun tp!101686 () Bool)

(declare-fun tp!101687 () Bool)

(assert (=> b!266535 (= e!165550 (and tp!101686 tp!101687))))

(declare-fun b!266537 () Bool)

(declare-fun tp!101685 () Bool)

(declare-fun tp!101683 () Bool)

(assert (=> b!266537 (= e!165550 (and tp!101685 tp!101683))))

(assert (= (and b!265109 ((_ is ElementMatch!947) (regOne!2407 (regex!723 (rule!1308 separatorToken!170))))) b!266534))

(assert (= (and b!265109 ((_ is Concat!1693) (regOne!2407 (regex!723 (rule!1308 separatorToken!170))))) b!266535))

(assert (= (and b!265109 ((_ is Star!947) (regOne!2407 (regex!723 (rule!1308 separatorToken!170))))) b!266536))

(assert (= (and b!265109 ((_ is Union!947) (regOne!2407 (regex!723 (rule!1308 separatorToken!170))))) b!266537))

(declare-fun b!266540 () Bool)

(declare-fun e!165551 () Bool)

(declare-fun tp!101689 () Bool)

(assert (=> b!266540 (= e!165551 tp!101689)))

(assert (=> b!265109 (= tp!101440 e!165551)))

(declare-fun b!266538 () Bool)

(assert (=> b!266538 (= e!165551 tp_is_empty!1803)))

(declare-fun b!266539 () Bool)

(declare-fun tp!101691 () Bool)

(declare-fun tp!101692 () Bool)

(assert (=> b!266539 (= e!165551 (and tp!101691 tp!101692))))

(declare-fun b!266541 () Bool)

(declare-fun tp!101690 () Bool)

(declare-fun tp!101688 () Bool)

(assert (=> b!266541 (= e!165551 (and tp!101690 tp!101688))))

(assert (= (and b!265109 ((_ is ElementMatch!947) (regTwo!2407 (regex!723 (rule!1308 separatorToken!170))))) b!266538))

(assert (= (and b!265109 ((_ is Concat!1693) (regTwo!2407 (regex!723 (rule!1308 separatorToken!170))))) b!266539))

(assert (= (and b!265109 ((_ is Star!947) (regTwo!2407 (regex!723 (rule!1308 separatorToken!170))))) b!266540))

(assert (= (and b!265109 ((_ is Union!947) (regTwo!2407 (regex!723 (rule!1308 separatorToken!170))))) b!266541))

(declare-fun b!266544 () Bool)

(declare-fun e!165552 () Bool)

(declare-fun tp!101694 () Bool)

(assert (=> b!266544 (= e!165552 tp!101694)))

(assert (=> b!265108 (= tp!101441 e!165552)))

(declare-fun b!266542 () Bool)

(assert (=> b!266542 (= e!165552 tp_is_empty!1803)))

(declare-fun b!266543 () Bool)

(declare-fun tp!101696 () Bool)

(declare-fun tp!101697 () Bool)

(assert (=> b!266543 (= e!165552 (and tp!101696 tp!101697))))

(declare-fun b!266545 () Bool)

(declare-fun tp!101695 () Bool)

(declare-fun tp!101693 () Bool)

(assert (=> b!266545 (= e!165552 (and tp!101695 tp!101693))))

(assert (= (and b!265108 ((_ is ElementMatch!947) (reg!1276 (regex!723 (rule!1308 separatorToken!170))))) b!266542))

(assert (= (and b!265108 ((_ is Concat!1693) (reg!1276 (regex!723 (rule!1308 separatorToken!170))))) b!266543))

(assert (= (and b!265108 ((_ is Star!947) (reg!1276 (regex!723 (rule!1308 separatorToken!170))))) b!266544))

(assert (= (and b!265108 ((_ is Union!947) (reg!1276 (regex!723 (rule!1308 separatorToken!170))))) b!266545))

(declare-fun b!266548 () Bool)

(declare-fun e!165555 () Bool)

(assert (=> b!266548 (= e!165555 true)))

(declare-fun b!266547 () Bool)

(declare-fun e!165554 () Bool)

(assert (=> b!266547 (= e!165554 e!165555)))

(declare-fun b!266546 () Bool)

(declare-fun e!165553 () Bool)

(assert (=> b!266546 (= e!165553 e!165554)))

(assert (=> b!265017 e!165553))

(assert (= b!266547 b!266548))

(assert (= b!266546 b!266547))

(assert (= (and b!265017 ((_ is Cons!3792) (t!37444 rules!1920))) b!266546))

(assert (=> b!266548 (< (dynLambda!1929 order!2893 (toValue!1450 (transformation!723 (h!9189 (t!37444 rules!1920))))) (dynLambda!1930 order!2895 lambda!8933))))

(assert (=> b!266548 (< (dynLambda!1931 order!2897 (toChars!1309 (transformation!723 (h!9189 (t!37444 rules!1920))))) (dynLambda!1930 order!2895 lambda!8933))))

(declare-fun b_lambda!8343 () Bool)

(assert (= b_lambda!8293 (or b!265049 b_lambda!8343)))

(declare-fun bs!29347 () Bool)

(declare-fun d!76945 () Bool)

(assert (= bs!29347 (and d!76945 b!265049)))

(assert (=> bs!29347 (= (dynLambda!1928 lambda!8935 (apply!749 lt!108115 0)) (rulesProduceIndividualToken!358 thiss!17480 rules!1920 (apply!749 lt!108115 0)))))

(assert (=> bs!29347 m!330865))

(declare-fun m!334267 () Bool)

(assert (=> bs!29347 m!334267))

(assert (=> d!76527 d!76945))

(declare-fun b_lambda!8345 () Bool)

(assert (= b_lambda!8309 (or b!264827 b_lambda!8345)))

(declare-fun bs!29348 () Bool)

(declare-fun d!76947 () Bool)

(assert (= bs!29348 (and d!76947 b!264827)))

(assert (=> bs!29348 (= (dynLambda!1928 lambda!8919 (h!9188 (t!37443 tokens!465))) (rulesProduceIndividualToken!358 thiss!17480 rules!1920 (h!9188 (t!37443 tokens!465))))))

(declare-fun m!334269 () Bool)

(assert (=> bs!29348 m!334269))

(assert (=> d!76753 d!76947))

(declare-fun b_lambda!8347 () Bool)

(assert (= b_lambda!8269 (or (and b!266521 b_free!9899 (= (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 (t!37443 tokens!465)))))) (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 tokens!465))))))) (and b!265124 b_free!9883 (= (toChars!1309 (transformation!723 (h!9189 (t!37444 rules!1920)))) (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 tokens!465))))))) (and b!264598 b_free!9859 (= (toChars!1309 (transformation!723 (h!9189 rules!1920))) (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 tokens!465))))))) (and b!264593 b_free!9863 (= (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))) (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 tokens!465))))))) (and b!265105 b_free!9879) (and b!264597 b_free!9867 (= (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))) (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 tokens!465))))))) (and b!266504 b_free!9895 (= (toChars!1309 (transformation!723 (h!9189 (t!37444 (t!37444 rules!1920))))) (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 tokens!465))))))) b_lambda!8347)))

(declare-fun b_lambda!8349 () Bool)

(assert (= b_lambda!8321 (or b!265057 b_lambda!8349)))

(declare-fun bs!29349 () Bool)

(declare-fun d!76949 () Bool)

(assert (= bs!29349 (and d!76949 b!265057)))

(assert (=> bs!29349 (= (dynLambda!1928 lambda!8936 (h!9188 tokens!465)) (rulesProduceIndividualToken!358 thiss!17480 rules!1920 (h!9188 tokens!465)))))

(declare-fun m!334271 () Bool)

(assert (=> bs!29349 m!334271))

(assert (=> d!76867 d!76949))

(declare-fun b_lambda!8351 () Bool)

(assert (= b_lambda!8287 (or b!264588 b_lambda!8351)))

(declare-fun bs!29350 () Bool)

(declare-fun d!76951 () Bool)

(assert (= bs!29350 (and d!76951 b!264588)))

(assert (=> bs!29350 (= (dynLambda!1928 lambda!8902 (h!9188 (t!37443 tokens!465))) (not (isSeparator!723 (rule!1308 (h!9188 (t!37443 tokens!465))))))))

(assert (=> b!265618 d!76951))

(declare-fun b_lambda!8353 () Bool)

(assert (= b_lambda!8291 (or (and b!266521 b_free!9899 (= (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 (t!37443 tokens!465)))))) (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 tokens!465))))))) (and b!265124 b_free!9883 (= (toChars!1309 (transformation!723 (h!9189 (t!37444 rules!1920)))) (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 tokens!465))))))) (and b!264598 b_free!9859 (= (toChars!1309 (transformation!723 (h!9189 rules!1920))) (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 tokens!465))))))) (and b!264593 b_free!9863 (= (toChars!1309 (transformation!723 (rule!1308 (h!9188 tokens!465)))) (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 tokens!465))))))) (and b!265105 b_free!9879) (and b!264597 b_free!9867 (= (toChars!1309 (transformation!723 (rule!1308 separatorToken!170))) (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 tokens!465))))))) (and b!266504 b_free!9895 (= (toChars!1309 (transformation!723 (h!9189 (t!37444 (t!37444 rules!1920))))) (toChars!1309 (transformation!723 (rule!1308 (h!9188 (t!37443 tokens!465))))))) b_lambda!8353)))

(declare-fun b_lambda!8355 () Bool)

(assert (= b_lambda!8271 (or d!76111 b_lambda!8355)))

(declare-fun bs!29351 () Bool)

(declare-fun d!76953 () Bool)

(assert (= bs!29351 (and d!76953 d!76111)))

(assert (=> bs!29351 (= (dynLambda!1928 lambda!8933 (h!9188 (list!1538 lt!108115))) (rulesProduceIndividualToken!358 thiss!17480 rules!1920 (h!9188 (list!1538 lt!108115))))))

(assert (=> bs!29351 m!333127))

(assert (=> b!265391 d!76953))

(declare-fun b_lambda!8357 () Bool)

(assert (= b_lambda!8275 (or b!264939 b_lambda!8357)))

(declare-fun bs!29352 () Bool)

(declare-fun d!76955 () Bool)

(assert (= bs!29352 (and d!76955 b!264939)))

(assert (=> bs!29352 (= (dynLambda!1928 lambda!8928 (apply!749 (seqFromList!814 (t!37443 tokens!465)) 0)) (rulesProduceIndividualToken!358 thiss!17480 rules!1920 (apply!749 (seqFromList!814 (t!37443 tokens!465)) 0)))))

(assert (=> bs!29352 m!330667))

(declare-fun m!334273 () Bool)

(assert (=> bs!29352 m!334273))

(assert (=> d!76431 d!76955))

(check-sat (not d!76755) (not b!266285) (not b!265630) (not d!76633) (not bm!14389) (not b!266212) (not b!265973) (not b!265796) (not d!76523) (not d!76439) (not d!76673) (not b!266546) (not b!265676) (not b!265390) (not b!266013) (not b!266518) (not d!76313) (not d!76293) (not d!76733) (not b!266458) (not b_lambda!8349) (not d!76885) (not d!76911) (not b!266032) (not b!266474) (not b!266450) (not b_lambda!8323) b_and!21007 (not d!76309) (not b!266424) (not tb!14599) (not b!265682) (not d!76669) (not b!266543) (not bm!14376) (not b!265794) (not b!266502) (not b!266506) (not d!76527) (not b!265590) (not b_next!9877) (not b!266451) (not b!266241) (not b!265282) (not b!266242) (not b!266284) (not b!266353) (not b!266427) (not b!266452) (not bm!14396) (not b!266477) (not b!265392) b_and!20993 (not b!265546) (not b!265374) (not bm!14427) (not b!265629) (not b_lambda!8351) (not d!76283) (not b!265611) (not b!266478) (not d!76845) (not b!265703) (not d!76741) (not b!265322) (not bs!29348) (not d!76647) (not b!266523) (not bs!29347) (not b!266468) (not d!76605) (not b!265643) (not d!76505) (not bm!14384) b_and!20999 (not b!265332) (not b_lambda!8307) (not b!265699) (not d!76749) (not d!76943) (not b!266257) (not b!265667) (not b!266354) (not d!76281) (not d!76671) (not d!76431) (not b!266286) (not d!76597) (not b!265545) (not b!265770) (not b!265653) (not d!76663) (not b!266275) (not b!266539) (not b!266240) (not b_next!9859) (not d!76861) (not b!265367) (not b!266037) (not bm!14453) (not b!265449) (not d!76641) (not b!265609) (not bm!14385) (not bm!14383) (not d!76361) (not bm!14369) (not b!266287) (not b!265659) (not b!265885) (not b!264994) (not b!265330) (not d!76489) (not d!76835) (not b!265670) (not d!76197) (not b!266213) (not b!265640) (not d!76599) (not d!76323) (not b!265317) (not d!76375) (not b!265649) (not b!266499) (not d!76541) (not d!76697) (not b!266005) (not d!76603) (not bm!14431) (not b_next!9857) (not b!265779) (not d!76927) (not d!76543) (not d!76933) (not b!266480) (not d!76315) (not bm!14393) (not b!265790) (not b!266006) (not b!265385) (not b!265668) (not d!76297) (not b!266048) (not b!265494) (not bm!14401) (not b!265792) (not b!265868) (not tb!14579) (not d!76873) (not b!265872) (not b_next!9865) (not d!76517) (not bm!14426) (not b!265321) (not b!265451) (not d!76631) (not b!265549) (not b_next!9861) (not b_next!9879) (not d!76869) (not b!265677) (not b!266058) (not d!76193) (not d!76435) (not b!266357) (not b!265402) (not d!76735) (not b!265776) (not d!76533) (not b!266411) (not d!76891) (not b!266209) (not tb!14629) (not b!266035) (not b!265368) (not b!266464) (not b!265679) (not b!266485) (not b!266488) (not b!266466) (not b!266426) (not d!76539) (not b!266470) (not b!266544) (not b!265800) (not tb!14723) (not b!265417) (not b!266510) (not b!265577) (not d!76917) (not b!266408) (not b!264652) (not bm!14377) (not b!266036) (not d!76515) (not b!265698) (not d!76905) (not d!76707) (not b!266503) (not b_lambda!8253) (not b!265387) (not d!76601) (not b!266473) (not bm!14374) (not b!266439) (not b!265663) (not b!265512) (not d!76399) (not b!266071) (not b!265778) (not bm!14368) (not d!76345) (not b!265666) (not b!266496) (not b!265634) (not b!265974) (not b!266490) (not b!266379) (not b!266465) (not b!265522) (not d!76907) (not b!265876) (not b!265616) (not b!266476) (not bs!29351) (not b!265279) (not b!265843) (not d!76675) (not d!76867) (not b!265620) (not b!266486) (not b!266352) (not b!266011) (not b!265370) (not d!76307) (not b!266507) (not b!266462) (not d!76593) (not b!266527) (not b!266498) (not d!76441) (not b_lambda!8355) (not b!265838) (not b!265788) (not b!265306) (not d!76329) (not b!266385) (not d!76695) (not d!76703) (not b!266422) (not b!265503) (not d!76437) (not b_lambda!8347) (not bm!14432) (not b!265275) (not b!265628) (not b!266531) (not b!266472) (not b!265869) (not b!266532) (not b!265662) (not b!265607) tp_is_empty!1803 (not b!265664) b_and!20991 (not d!76333) (not b!265993) (not b_next!9895) b_and!20789 (not d!76915) (not b!265372) (not b!266513) (not d!76881) (not b!265889) (not b!266489) (not b!266493) (not b!266210) (not d!76753) (not b!265697) (not d!76479) (not b!266216) (not b!265632) (not d!76305) (not b_next!9863) (not b!266351) (not bs!29352) (not d!76469) (not b!265519) (not b!266082) (not b!266068) (not b!265500) (not d!76871) b_and!21001 b_and!21003 (not b!265365) (not b!265704) (not b!265684) (not b!265626) (not b!265406) (not b!266355) (not tb!14659) (not b!265491) (not tb!14713) (not d!76897) (not b!265378) (not d!76935) (not d!76607) (not b!266214) (not b!266012) (not b!265996) (not b!265388) (not d!76319) (not b!265548) (not b!266540) (not b!265452) (not b!265768) (not b!265450) (not bm!14397) (not b!265797) (not b!265578) (not b!266435) (not bm!14400) (not d!76637) (not b!266497) (not b_lambda!8257) (not b!265276) (not bm!14386) (not b!265337) (not b!265339) (not b!265890) (not d!76519) (not b!266239) (not d!76745) (not b!265329) (not b!266524) (not d!76595) (not b!265700) (not d!76279) (not d!76651) (not b!266339) (not bm!14398) (not b!265342) (not d!76275) (not b!265283) (not b!265834) b_and!20995 (not b!265285) (not d!76529) (not b!265844) (not b!265594) (not bm!14372) (not d!76635) (not bm!14434) (not b!266081) (not b!265287) (not b!265864) (not d!76591) (not d!76509) (not b!266536) (not d!76909) (not b!265599) (not b!265624) (not d!76771) (not d!76833) (not b!265845) (not b!265702) (not b!265631) (not b!265875) (not b!266410) (not bm!14394) (not b!265870) (not b!265665) (not b!265398) (not b!266418) (not b!266482) (not b!265318) (not b!266545) (not b_lambda!8357) (not b!265617) (not b!265300) (not b!266421) (not d!76347) (not b!265772) (not d!76879) (not d!76913) (not b!266492) (not b!266484) (not b!266494) (not b!265836) (not b_lambda!8301) (not b_next!9897) (not b_lambda!8261) (not b!265999) (not b!266461) (not b!265786) (not b!265674) (not b!266508) (not b_lambda!8255) (not b!266517) b_and!20785 (not b!266429) (not d!76841) (not b!265652) (not b!266528) (not b!266340) (not b!265683) (not d!76291) (not b!265669) (not b!266481) (not b!266423) (not d!76339) (not b!266520) (not b!266529) (not d!76341) (not b!265678) (not b!265509) (not b!265784) (not b!266386) (not b!265773) (not b!265550) (not b!266416) (not b!265769) (not b_next!9899) (not b!266509) (not tb!14589) (not b!266537) (not b!265488) (not b!266373) (not d!76939) (not b!265881) (not b_lambda!8353) (not b_lambda!8345) (not d!76289) (not b!265333) (not b!265547) (not b!266401) (not b!265601) b_and!20997 (not b!265619) (not b!266332) (not b!265972) (not b!266432) (not b!266070) (not bm!14390) (not bm!14395) (not bm!14375) (not b!265521) (not b!265341) (not d!76351) (not b!266046) (not d!76337) b_and!20721 (not b!265774) (not b!265592) (not b!265623) (not b!265288) (not b_lambda!8285) (not b!265352) (not b!266215) (not d!76865) (not b!265375) (not d!76657) (not b_next!9893) (not d!76295) (not b_next!9883) (not d!76299) (not d!76629) (not d!76195) (not tb!14539) (not b!266358) (not b!266415) (not bs!29349) (not d!76491) (not d!76369) (not bm!14424) (not d!76371) (not b!265862) (not d!76621) (not d!76535) (not b!266079) (not b_lambda!8343) (not b!265552) (not b!265335) (not b!266457) (not d!76679) (not d!76931) (not b!266441) (not d!76521) (not b!265880) (not b!265513) (not bm!14433) (not d!76445) (not d!76925) (not b!266077) (not d!76353) (not d!76389) (not bm!14388) b_and!20717 (not b!266413) (not b!266519) (not d!76859) (not bm!14366) (not b_lambda!8259) (not d!76277) (not b!266085) (not b!265596) (not b!265280) b_and!20725 (not b!265802) (not d!76639) (not b_lambda!8341) (not b!266525) (not b!265589) (not b!266456) (not d!76531) (not d!76739) (not b!266004) (not b!265627) (not d!76713) (not b!265795) (not b!265798) (not b!265520) (not b!266541) (not b!265576) b_and!21005 (not b!266460) (not b!266334) (not d!76327) (not b!266533) (not d!76857) (not b!266516) (not b!266453) (not d!76923) (not bm!14367) (not tb!14609) (not b!265884) (not b!265701) (not b!266217) (not b!266535) (not b!266438) (not b!265277) (not b!265871) (not d!76343) (not bm!14402) (not d!76667) (not b_lambda!8319) (not b!265517) (not b!266014) (not b_lambda!8295) (not b!266043) (not b_lambda!8289) (not b!265777) (not d!76545) (not b!266374) (not d!76937) (not b!266436) (not b_next!9867) (not d!76525) (not d!76285) (not b!266403) (not b!265997) (not b!266431) (not bm!14449) (not b!266356) (not b!266412) (not b!266469) (not b!265625) (not b_next!9881) (not d!76737) (not b!265291) (not d!76427))
(check-sat b_and!20993 b_and!20999 (not b_next!9859) (not b_next!9857) (not b_next!9865) (not b_next!9863) b_and!20995 (not b_next!9897) b_and!20785 (not b_next!9899) b_and!20997 (not b_next!9883) b_and!20717 b_and!20725 b_and!21005 b_and!21007 (not b_next!9877) (not b_next!9861) (not b_next!9879) b_and!20991 (not b_next!9895) b_and!20789 b_and!21001 b_and!21003 (not b_next!9893) b_and!20721 (not b_next!9881) (not b_next!9867))
