; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!105524 () Bool)

(assert start!105524)

(declare-fun b!1188451 () Bool)

(declare-fun b_free!28693 () Bool)

(declare-fun b_next!29397 () Bool)

(assert (=> b!1188451 (= b_free!28693 (not b_next!29397))))

(declare-fun tp!339172 () Bool)

(declare-fun b_and!81869 () Bool)

(assert (=> b!1188451 (= tp!339172 b_and!81869)))

(declare-fun b_free!28695 () Bool)

(declare-fun b_next!29399 () Bool)

(assert (=> b!1188451 (= b_free!28695 (not b_next!29399))))

(declare-fun tp!339175 () Bool)

(declare-fun b_and!81871 () Bool)

(assert (=> b!1188451 (= tp!339175 b_and!81871)))

(declare-fun b!1188457 () Bool)

(declare-fun b_free!28697 () Bool)

(declare-fun b_next!29401 () Bool)

(assert (=> b!1188457 (= b_free!28697 (not b_next!29401))))

(declare-fun tp!339167 () Bool)

(declare-fun b_and!81873 () Bool)

(assert (=> b!1188457 (= tp!339167 b_and!81873)))

(declare-fun b_free!28699 () Bool)

(declare-fun b_next!29403 () Bool)

(assert (=> b!1188457 (= b_free!28699 (not b_next!29403))))

(declare-fun tp!339168 () Bool)

(declare-fun b_and!81875 () Bool)

(assert (=> b!1188457 (= tp!339168 b_and!81875)))

(declare-fun b!1188448 () Bool)

(declare-fun res!536945 () Bool)

(declare-fun e!763832 () Bool)

(assert (=> b!1188448 (=> (not res!536945) (not e!763832))))

(declare-datatypes ((LexerInterface!1787 0))(
  ( (LexerInterfaceExt!1784 (__x!8027 Int)) (Lexer!1785) )
))
(declare-fun thiss!27592 () LexerInterface!1787)

(declare-datatypes ((C!7042 0))(
  ( (C!7043 (val!3817 Int)) )
))
(declare-datatypes ((List!11976 0))(
  ( (Nil!11952) (Cons!11952 (h!17353 C!7042) (t!112098 List!11976)) )
))
(declare-datatypes ((IArray!7831 0))(
  ( (IArray!7832 (innerList!3973 List!11976)) )
))
(declare-datatypes ((Conc!3913 0))(
  ( (Node!3913 (left!10401 Conc!3913) (right!10731 Conc!3913) (csize!8056 Int) (cheight!4124 Int)) (Leaf!5990 (xs!6618 IArray!7831) (csize!8057 Int)) (Empty!3913) )
))
(declare-datatypes ((List!11977 0))(
  ( (Nil!11953) (Cons!11953 (h!17354 (_ BitVec 16)) (t!112099 List!11977)) )
))
(declare-datatypes ((BalanceConc!7848 0))(
  ( (BalanceConc!7849 (c!197353 Conc!3913)) )
))
(declare-datatypes ((TokenValue!2158 0))(
  ( (FloatLiteralValue!4316 (text!15551 List!11977)) (TokenValueExt!2157 (__x!8028 Int)) (Broken!10790 (value!67654 List!11977)) (Object!2181) (End!2158) (Def!2158) (Underscore!2158) (Match!2158) (Else!2158) (Error!2158) (Case!2158) (If!2158) (Extends!2158) (Abstract!2158) (Class!2158) (Val!2158) (DelimiterValue!4316 (del!2218 List!11977)) (KeywordValue!2164 (value!67655 List!11977)) (CommentValue!4316 (value!67656 List!11977)) (WhitespaceValue!4316 (value!67657 List!11977)) (IndentationValue!2158 (value!67658 List!11977)) (String!14459) (Int32!2158) (Broken!10791 (value!67659 List!11977)) (Boolean!2159) (Unit!18336) (OperatorValue!2161 (op!2218 List!11977)) (IdentifierValue!4316 (value!67660 List!11977)) (IdentifierValue!4317 (value!67661 List!11977)) (WhitespaceValue!4317 (value!67662 List!11977)) (True!4316) (False!4316) (Broken!10792 (value!67663 List!11977)) (Broken!10793 (value!67664 List!11977)) (True!4317) (RightBrace!2158) (RightBracket!2158) (Colon!2158) (Null!2158) (Comma!2158) (LeftBracket!2158) (False!4317) (LeftBrace!2158) (ImaginaryLiteralValue!2158 (text!15552 List!11977)) (StringLiteralValue!6474 (value!67665 List!11977)) (EOFValue!2158 (value!67666 List!11977)) (IdentValue!2158 (value!67667 List!11977)) (DelimiterValue!4317 (value!67668 List!11977)) (DedentValue!2158 (value!67669 List!11977)) (NewLineValue!2158 (value!67670 List!11977)) (IntegerValue!6474 (value!67671 (_ BitVec 32)) (text!15553 List!11977)) (IntegerValue!6475 (value!67672 Int) (text!15554 List!11977)) (Times!2158) (Or!2158) (Equal!2158) (Minus!2158) (Broken!10794 (value!67673 List!11977)) (And!2158) (Div!2158) (LessEqual!2158) (Mod!2158) (Concat!5520) (Not!2158) (Plus!2158) (SpaceValue!2158 (value!67674 List!11977)) (IntegerValue!6476 (value!67675 Int) (text!15555 List!11977)) (StringLiteralValue!6475 (text!15556 List!11977)) (FloatLiteralValue!4317 (text!15557 List!11977)) (BytesLiteralValue!2158 (value!67676 List!11977)) (CommentValue!4317 (value!67677 List!11977)) (StringLiteralValue!6476 (value!67678 List!11977)) (ErrorTokenValue!2158 (msg!2219 List!11977)) )
))
(declare-datatypes ((Regex!3362 0))(
  ( (ElementMatch!3362 (c!197354 C!7042)) (Concat!5521 (regOne!7236 Regex!3362) (regTwo!7236 Regex!3362)) (EmptyExpr!3362) (Star!3362 (reg!3691 Regex!3362)) (EmptyLang!3362) (Union!3362 (regOne!7237 Regex!3362) (regTwo!7237 Regex!3362)) )
))
(declare-datatypes ((String!14460 0))(
  ( (String!14461 (value!67679 String)) )
))
(declare-datatypes ((TokenValueInjection!4016 0))(
  ( (TokenValueInjection!4017 (toValue!3209 Int) (toChars!3068 Int)) )
))
(declare-datatypes ((Rule!3984 0))(
  ( (Rule!3985 (regex!2092 Regex!3362) (tag!2354 String!14460) (isSeparator!2092 Bool) (transformation!2092 TokenValueInjection!4016)) )
))
(declare-datatypes ((List!11978 0))(
  ( (Nil!11954) (Cons!11954 (h!17355 Rule!3984) (t!112100 List!11978)) )
))
(declare-fun rules!4386 () List!11978)

(declare-fun rulesInvariant!1661 (LexerInterface!1787 List!11978) Bool)

(assert (=> b!1188448 (= res!536945 (rulesInvariant!1661 thiss!27592 rules!4386))))

(declare-fun res!536942 () Bool)

(assert (=> start!105524 (=> (not res!536942) (not e!763832))))

(assert (=> start!105524 (= res!536942 (is-Lexer!1785 thiss!27592))))

(assert (=> start!105524 e!763832))

(assert (=> start!105524 true))

(declare-fun e!763828 () Bool)

(assert (=> start!105524 e!763828))

(declare-fun e!763826 () Bool)

(assert (=> start!105524 e!763826))

(declare-fun e!763827 () Bool)

(declare-fun tp!339173 () Bool)

(declare-datatypes ((Token!3846 0))(
  ( (Token!3847 (value!67680 TokenValue!2158) (rule!3513 Rule!3984) (size!9423 Int) (originalCharacters!2646 List!11976)) )
))
(declare-datatypes ((List!11979 0))(
  ( (Nil!11955) (Cons!11955 (h!17356 Token!3846) (t!112101 List!11979)) )
))
(declare-fun l!6534 () List!11979)

(declare-fun b!1188449 () Bool)

(declare-fun e!763833 () Bool)

(declare-fun inv!15787 (String!14460) Bool)

(declare-fun inv!15790 (TokenValueInjection!4016) Bool)

(assert (=> b!1188449 (= e!763833 (and tp!339173 (inv!15787 (tag!2354 (rule!3513 (h!17356 l!6534)))) (inv!15790 (transformation!2092 (rule!3513 (h!17356 l!6534)))) e!763827))))

(declare-fun b!1188450 () Bool)

(declare-fun res!536943 () Bool)

(assert (=> b!1188450 (=> (not res!536943) (not e!763832))))

(declare-fun isEmpty!7189 (List!11978) Bool)

(assert (=> b!1188450 (= res!536943 (not (isEmpty!7189 rules!4386)))))

(assert (=> b!1188451 (= e!763827 (and tp!339172 tp!339175))))

(declare-fun b!1188452 () Bool)

(declare-fun e!763824 () Bool)

(declare-fun tp!339174 () Bool)

(assert (=> b!1188452 (= e!763828 (and e!763824 tp!339174))))

(declare-fun b!1188453 () Bool)

(declare-fun res!536946 () Bool)

(assert (=> b!1188453 (=> (not res!536946) (not e!763832))))

(declare-fun rulesProduceEachTokenIndividuallyList!653 (LexerInterface!1787 List!11978 List!11979) Bool)

(assert (=> b!1188453 (= res!536946 (rulesProduceEachTokenIndividuallyList!653 thiss!27592 rules!4386 l!6534))))

(declare-fun b!1188454 () Bool)

(declare-fun res!536948 () Bool)

(assert (=> b!1188454 (=> (not res!536948) (not e!763832))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!181 (LexerInterface!1787 List!11979 List!11978) Bool)

(assert (=> b!1188454 (= res!536948 (tokensListTwoByTwoPredicateSeparableList!181 thiss!27592 l!6534 rules!4386))))

(declare-fun b!1188455 () Bool)

(declare-fun ListPrimitiveSize!71 (List!11979) Int)

(assert (=> b!1188455 (= e!763832 (>= (ListPrimitiveSize!71 (t!112101 l!6534)) (ListPrimitiveSize!71 l!6534)))))

(declare-fun b!1188456 () Bool)

(declare-fun res!536947 () Bool)

(assert (=> b!1188456 (=> (not res!536947) (not e!763832))))

(declare-fun i!1621 () Int)

(assert (=> b!1188456 (= res!536947 (and (not (is-Nil!11955 l!6534)) (> i!1621 0)))))

(declare-fun e!763825 () Bool)

(assert (=> b!1188457 (= e!763825 (and tp!339167 tp!339168))))

(declare-fun tp!339171 () Bool)

(declare-fun e!763830 () Bool)

(declare-fun b!1188458 () Bool)

(declare-fun inv!15791 (Token!3846) Bool)

(assert (=> b!1188458 (= e!763826 (and (inv!15791 (h!17356 l!6534)) e!763830 tp!339171))))

(declare-fun b!1188459 () Bool)

(declare-fun res!536941 () Bool)

(assert (=> b!1188459 (=> (not res!536941) (not e!763832))))

(assert (=> b!1188459 (= res!536941 (rulesProduceEachTokenIndividuallyList!653 thiss!27592 rules!4386 (t!112101 l!6534)))))

(declare-fun b!1188460 () Bool)

(declare-fun tp!339169 () Bool)

(assert (=> b!1188460 (= e!763824 (and tp!339169 (inv!15787 (tag!2354 (h!17355 rules!4386))) (inv!15790 (transformation!2092 (h!17355 rules!4386))) e!763825))))

(declare-fun tp!339170 () Bool)

(declare-fun b!1188461 () Bool)

(declare-fun inv!21 (TokenValue!2158) Bool)

(assert (=> b!1188461 (= e!763830 (and (inv!21 (value!67680 (h!17356 l!6534))) e!763833 tp!339170))))

(declare-fun b!1188462 () Bool)

(declare-fun res!536944 () Bool)

(assert (=> b!1188462 (=> (not res!536944) (not e!763832))))

(assert (=> b!1188462 (= res!536944 (tokensListTwoByTwoPredicateSeparableList!181 thiss!27592 (t!112101 l!6534) rules!4386))))

(assert (= (and start!105524 res!536942) b!1188450))

(assert (= (and b!1188450 res!536943) b!1188448))

(assert (= (and b!1188448 res!536945) b!1188453))

(assert (= (and b!1188453 res!536946) b!1188454))

(assert (= (and b!1188454 res!536948) b!1188456))

(assert (= (and b!1188456 res!536947) b!1188459))

(assert (= (and b!1188459 res!536941) b!1188462))

(assert (= (and b!1188462 res!536944) b!1188455))

(assert (= b!1188460 b!1188457))

(assert (= b!1188452 b!1188460))

(assert (= (and start!105524 (is-Cons!11954 rules!4386)) b!1188452))

(assert (= b!1188449 b!1188451))

(assert (= b!1188461 b!1188449))

(assert (= b!1188458 b!1188461))

(assert (= (and start!105524 (is-Cons!11955 l!6534)) b!1188458))

(declare-fun m!1363883 () Bool)

(assert (=> b!1188458 m!1363883))

(declare-fun m!1363885 () Bool)

(assert (=> b!1188454 m!1363885))

(declare-fun m!1363887 () Bool)

(assert (=> b!1188462 m!1363887))

(declare-fun m!1363889 () Bool)

(assert (=> b!1188450 m!1363889))

(declare-fun m!1363891 () Bool)

(assert (=> b!1188459 m!1363891))

(declare-fun m!1363893 () Bool)

(assert (=> b!1188453 m!1363893))

(declare-fun m!1363895 () Bool)

(assert (=> b!1188455 m!1363895))

(declare-fun m!1363897 () Bool)

(assert (=> b!1188455 m!1363897))

(declare-fun m!1363899 () Bool)

(assert (=> b!1188448 m!1363899))

(declare-fun m!1363901 () Bool)

(assert (=> b!1188460 m!1363901))

(declare-fun m!1363903 () Bool)

(assert (=> b!1188460 m!1363903))

(declare-fun m!1363905 () Bool)

(assert (=> b!1188449 m!1363905))

(declare-fun m!1363907 () Bool)

(assert (=> b!1188449 m!1363907))

(declare-fun m!1363909 () Bool)

(assert (=> b!1188461 m!1363909))

(push 1)

(assert b_and!81869)

(assert (not b!1188450))

(assert (not b!1188448))

(assert (not b!1188454))

(assert (not b!1188449))

(assert (not b_next!29403))

(assert (not b!1188453))

(assert (not b!1188461))

(assert (not b_next!29401))

(assert b_and!81875)

(assert (not b!1188460))

(assert b_and!81871)

(assert (not b!1188459))

(assert (not b!1188452))

(assert (not b!1188462))

(assert b_and!81873)

(assert (not b!1188455))

(assert (not b_next!29399))

(assert (not b!1188458))

(assert (not b_next!29397))

(check-sat)

(pop 1)

(push 1)

(assert b_and!81875)

(assert b_and!81869)

(assert b_and!81871)

(assert (not b_next!29403))

(assert (not b_next!29401))

(assert (not b_next!29397))

(assert b_and!81873)

(assert (not b_next!29399))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!339801 () Bool)

(declare-fun res!536981 () Bool)

(declare-fun e!763870 () Bool)

(assert (=> d!339801 (=> (not res!536981) (not e!763870))))

(declare-fun isEmpty!7191 (List!11976) Bool)

(assert (=> d!339801 (= res!536981 (not (isEmpty!7191 (originalCharacters!2646 (h!17356 l!6534)))))))

(assert (=> d!339801 (= (inv!15791 (h!17356 l!6534)) e!763870)))

(declare-fun b!1188512 () Bool)

(declare-fun res!536982 () Bool)

(assert (=> b!1188512 (=> (not res!536982) (not e!763870))))

(declare-fun list!4387 (BalanceConc!7848) List!11976)

(declare-fun dynLambda!5357 (Int TokenValue!2158) BalanceConc!7848)

(assert (=> b!1188512 (= res!536982 (= (originalCharacters!2646 (h!17356 l!6534)) (list!4387 (dynLambda!5357 (toChars!3068 (transformation!2092 (rule!3513 (h!17356 l!6534)))) (value!67680 (h!17356 l!6534))))))))

(declare-fun b!1188513 () Bool)

(declare-fun size!9425 (List!11976) Int)

(assert (=> b!1188513 (= e!763870 (= (size!9423 (h!17356 l!6534)) (size!9425 (originalCharacters!2646 (h!17356 l!6534)))))))

(assert (= (and d!339801 res!536981) b!1188512))

(assert (= (and b!1188512 res!536982) b!1188513))

(declare-fun b_lambda!35687 () Bool)

(assert (=> (not b_lambda!35687) (not b!1188512)))

(declare-fun t!112107 () Bool)

(declare-fun tb!66429 () Bool)

(assert (=> (and b!1188451 (= (toChars!3068 (transformation!2092 (rule!3513 (h!17356 l!6534)))) (toChars!3068 (transformation!2092 (rule!3513 (h!17356 l!6534))))) t!112107) tb!66429))

(declare-fun b!1188518 () Bool)

(declare-fun e!763873 () Bool)

(declare-fun tp!339205 () Bool)

(declare-fun inv!15794 (Conc!3913) Bool)

(assert (=> b!1188518 (= e!763873 (and (inv!15794 (c!197353 (dynLambda!5357 (toChars!3068 (transformation!2092 (rule!3513 (h!17356 l!6534)))) (value!67680 (h!17356 l!6534))))) tp!339205))))

(declare-fun result!79874 () Bool)

(declare-fun inv!15795 (BalanceConc!7848) Bool)

(assert (=> tb!66429 (= result!79874 (and (inv!15795 (dynLambda!5357 (toChars!3068 (transformation!2092 (rule!3513 (h!17356 l!6534)))) (value!67680 (h!17356 l!6534)))) e!763873))))

(assert (= tb!66429 b!1188518))

(declare-fun m!1363939 () Bool)

(assert (=> b!1188518 m!1363939))

(declare-fun m!1363941 () Bool)

(assert (=> tb!66429 m!1363941))

(assert (=> b!1188512 t!112107))

(declare-fun b_and!81885 () Bool)

(assert (= b_and!81871 (and (=> t!112107 result!79874) b_and!81885)))

(declare-fun tb!66431 () Bool)

(declare-fun t!112109 () Bool)

(assert (=> (and b!1188457 (= (toChars!3068 (transformation!2092 (h!17355 rules!4386))) (toChars!3068 (transformation!2092 (rule!3513 (h!17356 l!6534))))) t!112109) tb!66431))

(declare-fun result!79878 () Bool)

(assert (= result!79878 result!79874))

(assert (=> b!1188512 t!112109))

(declare-fun b_and!81887 () Bool)

(assert (= b_and!81875 (and (=> t!112109 result!79878) b_and!81887)))

(declare-fun m!1363943 () Bool)

(assert (=> d!339801 m!1363943))

(declare-fun m!1363945 () Bool)

(assert (=> b!1188512 m!1363945))

(assert (=> b!1188512 m!1363945))

(declare-fun m!1363947 () Bool)

(assert (=> b!1188512 m!1363947))

(declare-fun m!1363949 () Bool)

(assert (=> b!1188513 m!1363949))

(assert (=> b!1188458 d!339801))

(declare-fun d!339803 () Bool)

(declare-fun res!536985 () Bool)

(declare-fun e!763876 () Bool)

(assert (=> d!339803 (=> (not res!536985) (not e!763876))))

(declare-fun rulesValid!748 (LexerInterface!1787 List!11978) Bool)

(assert (=> d!339803 (= res!536985 (rulesValid!748 thiss!27592 rules!4386))))

(assert (=> d!339803 (= (rulesInvariant!1661 thiss!27592 rules!4386) e!763876)))

(declare-fun b!1188521 () Bool)

(declare-datatypes ((List!11984 0))(
  ( (Nil!11960) (Cons!11960 (h!17361 String!14460) (t!112118 List!11984)) )
))
(declare-fun noDuplicateTag!748 (LexerInterface!1787 List!11978 List!11984) Bool)

(assert (=> b!1188521 (= e!763876 (noDuplicateTag!748 thiss!27592 rules!4386 Nil!11960))))

(assert (= (and d!339803 res!536985) b!1188521))

(declare-fun m!1363951 () Bool)

(assert (=> d!339803 m!1363951))

(declare-fun m!1363953 () Bool)

(assert (=> b!1188521 m!1363953))

(assert (=> b!1188448 d!339803))

(declare-fun b!1188542 () Bool)

(declare-fun e!763895 () Bool)

(assert (=> b!1188542 (= e!763895 true)))

(declare-fun b!1188541 () Bool)

(declare-fun e!763894 () Bool)

(assert (=> b!1188541 (= e!763894 e!763895)))

(declare-fun b!1188540 () Bool)

(declare-fun e!763893 () Bool)

(assert (=> b!1188540 (= e!763893 e!763894)))

(declare-fun d!339805 () Bool)

(assert (=> d!339805 e!763893))

(assert (= b!1188541 b!1188542))

(assert (= b!1188540 b!1188541))

(assert (= (and d!339805 (is-Cons!11954 rules!4386)) b!1188540))

(declare-fun order!7465 () Int)

(declare-fun lambda!48976 () Int)

(declare-fun order!7463 () Int)

(declare-fun dynLambda!5358 (Int Int) Int)

(declare-fun dynLambda!5359 (Int Int) Int)

(assert (=> b!1188542 (< (dynLambda!5358 order!7463 (toValue!3209 (transformation!2092 (h!17355 rules!4386)))) (dynLambda!5359 order!7465 lambda!48976))))

(declare-fun order!7467 () Int)

(declare-fun dynLambda!5360 (Int Int) Int)

(assert (=> b!1188542 (< (dynLambda!5360 order!7467 (toChars!3068 (transformation!2092 (h!17355 rules!4386)))) (dynLambda!5359 order!7465 lambda!48976))))

(assert (=> d!339805 true))

(declare-fun lt!408629 () Bool)

(declare-fun forall!3163 (List!11979 Int) Bool)

(assert (=> d!339805 (= lt!408629 (forall!3163 l!6534 lambda!48976))))

(declare-fun e!763885 () Bool)

(assert (=> d!339805 (= lt!408629 e!763885)))

(declare-fun res!536995 () Bool)

(assert (=> d!339805 (=> res!536995 e!763885)))

(assert (=> d!339805 (= res!536995 (not (is-Cons!11955 l!6534)))))

(assert (=> d!339805 (not (isEmpty!7189 rules!4386))))

(assert (=> d!339805 (= (rulesProduceEachTokenIndividuallyList!653 thiss!27592 rules!4386 l!6534) lt!408629)))

(declare-fun b!1188530 () Bool)

(declare-fun e!763886 () Bool)

(assert (=> b!1188530 (= e!763885 e!763886)))

(declare-fun res!536994 () Bool)

(assert (=> b!1188530 (=> (not res!536994) (not e!763886))))

(declare-fun rulesProduceIndividualToken!814 (LexerInterface!1787 List!11978 Token!3846) Bool)

(assert (=> b!1188530 (= res!536994 (rulesProduceIndividualToken!814 thiss!27592 rules!4386 (h!17356 l!6534)))))

(declare-fun b!1188531 () Bool)

(assert (=> b!1188531 (= e!763886 (rulesProduceEachTokenIndividuallyList!653 thiss!27592 rules!4386 (t!112101 l!6534)))))

(assert (= (and d!339805 (not res!536995)) b!1188530))

(assert (= (and b!1188530 res!536994) b!1188531))

(declare-fun m!1363955 () Bool)

(assert (=> d!339805 m!1363955))

(assert (=> d!339805 m!1363889))

(declare-fun m!1363957 () Bool)

(assert (=> b!1188530 m!1363957))

(assert (=> b!1188531 m!1363891))

(assert (=> b!1188453 d!339805))

(declare-fun d!339809 () Bool)

(declare-fun res!537000 () Bool)

(declare-fun e!763901 () Bool)

(assert (=> d!339809 (=> res!537000 e!763901)))

(assert (=> d!339809 (= res!537000 (or (not (is-Cons!11955 l!6534)) (not (is-Cons!11955 (t!112101 l!6534)))))))

(assert (=> d!339809 (= (tokensListTwoByTwoPredicateSeparableList!181 thiss!27592 l!6534 rules!4386) e!763901)))

(declare-fun b!1188549 () Bool)

(declare-fun e!763900 () Bool)

(assert (=> b!1188549 (= e!763901 e!763900)))

(declare-fun res!537001 () Bool)

(assert (=> b!1188549 (=> (not res!537001) (not e!763900))))

(declare-fun separableTokensPredicate!171 (LexerInterface!1787 Token!3846 Token!3846 List!11978) Bool)

(assert (=> b!1188549 (= res!537001 (separableTokensPredicate!171 thiss!27592 (h!17356 l!6534) (h!17356 (t!112101 l!6534)) rules!4386))))

(declare-datatypes ((Unit!18338 0))(
  ( (Unit!18339) )
))
(declare-fun lt!408649 () Unit!18338)

(declare-fun Unit!18340 () Unit!18338)

(assert (=> b!1188549 (= lt!408649 Unit!18340)))

(declare-fun size!9426 (BalanceConc!7848) Int)

(declare-fun charsOf!1109 (Token!3846) BalanceConc!7848)

(assert (=> b!1188549 (> (size!9426 (charsOf!1109 (h!17356 (t!112101 l!6534)))) 0)))

(declare-fun lt!408650 () Unit!18338)

(declare-fun Unit!18341 () Unit!18338)

(assert (=> b!1188549 (= lt!408650 Unit!18341)))

(assert (=> b!1188549 (rulesProduceIndividualToken!814 thiss!27592 rules!4386 (h!17356 (t!112101 l!6534)))))

(declare-fun lt!408645 () Unit!18338)

(declare-fun Unit!18342 () Unit!18338)

(assert (=> b!1188549 (= lt!408645 Unit!18342)))

(assert (=> b!1188549 (rulesProduceIndividualToken!814 thiss!27592 rules!4386 (h!17356 l!6534))))

(declare-fun lt!408644 () Unit!18338)

(declare-fun lt!408648 () Unit!18338)

(assert (=> b!1188549 (= lt!408644 lt!408648)))

(assert (=> b!1188549 (rulesProduceIndividualToken!814 thiss!27592 rules!4386 (h!17356 (t!112101 l!6534)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!330 (LexerInterface!1787 List!11978 List!11979 Token!3846) Unit!18338)

(assert (=> b!1188549 (= lt!408648 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!330 thiss!27592 rules!4386 l!6534 (h!17356 (t!112101 l!6534))))))

(declare-fun lt!408646 () Unit!18338)

(declare-fun lt!408647 () Unit!18338)

(assert (=> b!1188549 (= lt!408646 lt!408647)))

(assert (=> b!1188549 (rulesProduceIndividualToken!814 thiss!27592 rules!4386 (h!17356 l!6534))))

(assert (=> b!1188549 (= lt!408647 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!330 thiss!27592 rules!4386 l!6534 (h!17356 l!6534)))))

(declare-fun b!1188550 () Bool)

(assert (=> b!1188550 (= e!763900 (tokensListTwoByTwoPredicateSeparableList!181 thiss!27592 (Cons!11955 (h!17356 (t!112101 l!6534)) (t!112101 (t!112101 l!6534))) rules!4386))))

(assert (= (and d!339809 (not res!537000)) b!1188549))

(assert (= (and b!1188549 res!537001) b!1188550))

(declare-fun m!1363959 () Bool)

(assert (=> b!1188549 m!1363959))

(declare-fun m!1363961 () Bool)

(assert (=> b!1188549 m!1363961))

(declare-fun m!1363963 () Bool)

(assert (=> b!1188549 m!1363963))

(assert (=> b!1188549 m!1363957))

(declare-fun m!1363965 () Bool)

(assert (=> b!1188549 m!1363965))

(declare-fun m!1363967 () Bool)

(assert (=> b!1188549 m!1363967))

(assert (=> b!1188549 m!1363961))

(declare-fun m!1363969 () Bool)

(assert (=> b!1188549 m!1363969))

(declare-fun m!1363971 () Bool)

(assert (=> b!1188550 m!1363971))

(assert (=> b!1188454 d!339809))

(declare-fun bs!287695 () Bool)

(declare-fun d!339811 () Bool)

(assert (= bs!287695 (and d!339811 d!339805)))

(declare-fun lambda!48977 () Int)

(assert (=> bs!287695 (= lambda!48977 lambda!48976)))

(declare-fun b!1188555 () Bool)

(declare-fun e!763906 () Bool)

(assert (=> b!1188555 (= e!763906 true)))

(declare-fun b!1188554 () Bool)

(declare-fun e!763905 () Bool)

(assert (=> b!1188554 (= e!763905 e!763906)))

(declare-fun b!1188553 () Bool)

(declare-fun e!763904 () Bool)

(assert (=> b!1188553 (= e!763904 e!763905)))

(assert (=> d!339811 e!763904))

(assert (= b!1188554 b!1188555))

(assert (= b!1188553 b!1188554))

(assert (= (and d!339811 (is-Cons!11954 rules!4386)) b!1188553))

(assert (=> b!1188555 (< (dynLambda!5358 order!7463 (toValue!3209 (transformation!2092 (h!17355 rules!4386)))) (dynLambda!5359 order!7465 lambda!48977))))

(assert (=> b!1188555 (< (dynLambda!5360 order!7467 (toChars!3068 (transformation!2092 (h!17355 rules!4386)))) (dynLambda!5359 order!7465 lambda!48977))))

(assert (=> d!339811 true))

(declare-fun lt!408651 () Bool)

(assert (=> d!339811 (= lt!408651 (forall!3163 (t!112101 l!6534) lambda!48977))))

(declare-fun e!763902 () Bool)

(assert (=> d!339811 (= lt!408651 e!763902)))

(declare-fun res!537003 () Bool)

(assert (=> d!339811 (=> res!537003 e!763902)))

(assert (=> d!339811 (= res!537003 (not (is-Cons!11955 (t!112101 l!6534))))))

(assert (=> d!339811 (not (isEmpty!7189 rules!4386))))

(assert (=> d!339811 (= (rulesProduceEachTokenIndividuallyList!653 thiss!27592 rules!4386 (t!112101 l!6534)) lt!408651)))

(declare-fun b!1188551 () Bool)

(declare-fun e!763903 () Bool)

(assert (=> b!1188551 (= e!763902 e!763903)))

(declare-fun res!537002 () Bool)

(assert (=> b!1188551 (=> (not res!537002) (not e!763903))))

(assert (=> b!1188551 (= res!537002 (rulesProduceIndividualToken!814 thiss!27592 rules!4386 (h!17356 (t!112101 l!6534))))))

(declare-fun b!1188552 () Bool)

(assert (=> b!1188552 (= e!763903 (rulesProduceEachTokenIndividuallyList!653 thiss!27592 rules!4386 (t!112101 (t!112101 l!6534))))))

(assert (= (and d!339811 (not res!537003)) b!1188551))

(assert (= (and b!1188551 res!537002) b!1188552))

(declare-fun m!1363973 () Bool)

(assert (=> d!339811 m!1363973))

(assert (=> d!339811 m!1363889))

(assert (=> b!1188551 m!1363963))

(declare-fun m!1363975 () Bool)

(assert (=> b!1188552 m!1363975))

(assert (=> b!1188459 d!339811))

(declare-fun d!339813 () Bool)

(assert (=> d!339813 (= (inv!15787 (tag!2354 (h!17355 rules!4386))) (= (mod (str.len (value!67679 (tag!2354 (h!17355 rules!4386)))) 2) 0))))

(assert (=> b!1188460 d!339813))

(declare-fun d!339815 () Bool)

(declare-fun res!537006 () Bool)

(declare-fun e!763909 () Bool)

(assert (=> d!339815 (=> (not res!537006) (not e!763909))))

(declare-fun semiInverseModEq!760 (Int Int) Bool)

(assert (=> d!339815 (= res!537006 (semiInverseModEq!760 (toChars!3068 (transformation!2092 (h!17355 rules!4386))) (toValue!3209 (transformation!2092 (h!17355 rules!4386)))))))

(assert (=> d!339815 (= (inv!15790 (transformation!2092 (h!17355 rules!4386))) e!763909)))

(declare-fun b!1188558 () Bool)

(declare-fun equivClasses!727 (Int Int) Bool)

(assert (=> b!1188558 (= e!763909 (equivClasses!727 (toChars!3068 (transformation!2092 (h!17355 rules!4386))) (toValue!3209 (transformation!2092 (h!17355 rules!4386)))))))

(assert (= (and d!339815 res!537006) b!1188558))

(declare-fun m!1363977 () Bool)

(assert (=> d!339815 m!1363977))

(declare-fun m!1363979 () Bool)

(assert (=> b!1188558 m!1363979))

(assert (=> b!1188460 d!339815))

(declare-fun d!339817 () Bool)

(assert (=> d!339817 (= (inv!15787 (tag!2354 (rule!3513 (h!17356 l!6534)))) (= (mod (str.len (value!67679 (tag!2354 (rule!3513 (h!17356 l!6534))))) 2) 0))))

(assert (=> b!1188449 d!339817))

(declare-fun d!339819 () Bool)

(declare-fun res!537007 () Bool)

(declare-fun e!763910 () Bool)

(assert (=> d!339819 (=> (not res!537007) (not e!763910))))

(assert (=> d!339819 (= res!537007 (semiInverseModEq!760 (toChars!3068 (transformation!2092 (rule!3513 (h!17356 l!6534)))) (toValue!3209 (transformation!2092 (rule!3513 (h!17356 l!6534))))))))

(assert (=> d!339819 (= (inv!15790 (transformation!2092 (rule!3513 (h!17356 l!6534)))) e!763910)))

(declare-fun b!1188559 () Bool)

(assert (=> b!1188559 (= e!763910 (equivClasses!727 (toChars!3068 (transformation!2092 (rule!3513 (h!17356 l!6534)))) (toValue!3209 (transformation!2092 (rule!3513 (h!17356 l!6534))))))))

(assert (= (and d!339819 res!537007) b!1188559))

(declare-fun m!1363981 () Bool)

(assert (=> d!339819 m!1363981))

(declare-fun m!1363983 () Bool)

(assert (=> b!1188559 m!1363983))

(assert (=> b!1188449 d!339819))

(declare-fun d!339821 () Bool)

(assert (=> d!339821 (= (isEmpty!7189 rules!4386) (is-Nil!11954 rules!4386))))

(assert (=> b!1188450 d!339821))

(declare-fun d!339823 () Bool)

(declare-fun lt!408654 () Int)

(assert (=> d!339823 (>= lt!408654 0)))

(declare-fun e!763913 () Int)

(assert (=> d!339823 (= lt!408654 e!763913)))

(declare-fun c!197359 () Bool)

(assert (=> d!339823 (= c!197359 (is-Nil!11955 (t!112101 l!6534)))))

(assert (=> d!339823 (= (ListPrimitiveSize!71 (t!112101 l!6534)) lt!408654)))

(declare-fun b!1188564 () Bool)

(assert (=> b!1188564 (= e!763913 0)))

(declare-fun b!1188565 () Bool)

(assert (=> b!1188565 (= e!763913 (+ 1 (ListPrimitiveSize!71 (t!112101 (t!112101 l!6534)))))))

(assert (= (and d!339823 c!197359) b!1188564))

(assert (= (and d!339823 (not c!197359)) b!1188565))

(declare-fun m!1363985 () Bool)

(assert (=> b!1188565 m!1363985))

(assert (=> b!1188455 d!339823))

(declare-fun d!339825 () Bool)

(declare-fun lt!408655 () Int)

(assert (=> d!339825 (>= lt!408655 0)))

(declare-fun e!763914 () Int)

(assert (=> d!339825 (= lt!408655 e!763914)))

(declare-fun c!197360 () Bool)

(assert (=> d!339825 (= c!197360 (is-Nil!11955 l!6534))))

(assert (=> d!339825 (= (ListPrimitiveSize!71 l!6534) lt!408655)))

(declare-fun b!1188566 () Bool)

(assert (=> b!1188566 (= e!763914 0)))

(declare-fun b!1188567 () Bool)

(assert (=> b!1188567 (= e!763914 (+ 1 (ListPrimitiveSize!71 (t!112101 l!6534))))))

(assert (= (and d!339825 c!197360) b!1188566))

(assert (= (and d!339825 (not c!197360)) b!1188567))

(assert (=> b!1188567 m!1363895))

(assert (=> b!1188455 d!339825))

(declare-fun d!339827 () Bool)

(declare-fun c!197365 () Bool)

(assert (=> d!339827 (= c!197365 (is-IntegerValue!6474 (value!67680 (h!17356 l!6534))))))

(declare-fun e!763922 () Bool)

(assert (=> d!339827 (= (inv!21 (value!67680 (h!17356 l!6534))) e!763922)))

(declare-fun b!1188578 () Bool)

(declare-fun e!763923 () Bool)

(declare-fun inv!15 (TokenValue!2158) Bool)

(assert (=> b!1188578 (= e!763923 (inv!15 (value!67680 (h!17356 l!6534))))))

(declare-fun b!1188579 () Bool)

(declare-fun e!763921 () Bool)

(declare-fun inv!17 (TokenValue!2158) Bool)

(assert (=> b!1188579 (= e!763921 (inv!17 (value!67680 (h!17356 l!6534))))))

(declare-fun b!1188580 () Bool)

(declare-fun res!537010 () Bool)

(assert (=> b!1188580 (=> res!537010 e!763923)))

(assert (=> b!1188580 (= res!537010 (not (is-IntegerValue!6476 (value!67680 (h!17356 l!6534)))))))

(assert (=> b!1188580 (= e!763921 e!763923)))

(declare-fun b!1188581 () Bool)

(assert (=> b!1188581 (= e!763922 e!763921)))

(declare-fun c!197366 () Bool)

(assert (=> b!1188581 (= c!197366 (is-IntegerValue!6475 (value!67680 (h!17356 l!6534))))))

(declare-fun b!1188582 () Bool)

(declare-fun inv!16 (TokenValue!2158) Bool)

(assert (=> b!1188582 (= e!763922 (inv!16 (value!67680 (h!17356 l!6534))))))

(assert (= (and d!339827 c!197365) b!1188582))

(assert (= (and d!339827 (not c!197365)) b!1188581))

(assert (= (and b!1188581 c!197366) b!1188579))

(assert (= (and b!1188581 (not c!197366)) b!1188580))

(assert (= (and b!1188580 (not res!537010)) b!1188578))

(declare-fun m!1363987 () Bool)

(assert (=> b!1188578 m!1363987))

(declare-fun m!1363989 () Bool)

(assert (=> b!1188579 m!1363989))

(declare-fun m!1363991 () Bool)

(assert (=> b!1188582 m!1363991))

(assert (=> b!1188461 d!339827))

(declare-fun d!339829 () Bool)

(declare-fun res!537011 () Bool)

(declare-fun e!763925 () Bool)

(assert (=> d!339829 (=> res!537011 e!763925)))

(assert (=> d!339829 (= res!537011 (or (not (is-Cons!11955 (t!112101 l!6534))) (not (is-Cons!11955 (t!112101 (t!112101 l!6534))))))))

(assert (=> d!339829 (= (tokensListTwoByTwoPredicateSeparableList!181 thiss!27592 (t!112101 l!6534) rules!4386) e!763925)))

(declare-fun b!1188583 () Bool)

(declare-fun e!763924 () Bool)

(assert (=> b!1188583 (= e!763925 e!763924)))

(declare-fun res!537012 () Bool)

(assert (=> b!1188583 (=> (not res!537012) (not e!763924))))

(assert (=> b!1188583 (= res!537012 (separableTokensPredicate!171 thiss!27592 (h!17356 (t!112101 l!6534)) (h!17356 (t!112101 (t!112101 l!6534))) rules!4386))))

(declare-fun lt!408661 () Unit!18338)

(declare-fun Unit!18343 () Unit!18338)

(assert (=> b!1188583 (= lt!408661 Unit!18343)))

(assert (=> b!1188583 (> (size!9426 (charsOf!1109 (h!17356 (t!112101 (t!112101 l!6534))))) 0)))

(declare-fun lt!408662 () Unit!18338)

(declare-fun Unit!18344 () Unit!18338)

(assert (=> b!1188583 (= lt!408662 Unit!18344)))

(assert (=> b!1188583 (rulesProduceIndividualToken!814 thiss!27592 rules!4386 (h!17356 (t!112101 (t!112101 l!6534))))))

(declare-fun lt!408657 () Unit!18338)

(declare-fun Unit!18345 () Unit!18338)

(assert (=> b!1188583 (= lt!408657 Unit!18345)))

(assert (=> b!1188583 (rulesProduceIndividualToken!814 thiss!27592 rules!4386 (h!17356 (t!112101 l!6534)))))

(declare-fun lt!408656 () Unit!18338)

(declare-fun lt!408660 () Unit!18338)

(assert (=> b!1188583 (= lt!408656 lt!408660)))

(assert (=> b!1188583 (rulesProduceIndividualToken!814 thiss!27592 rules!4386 (h!17356 (t!112101 (t!112101 l!6534))))))

(assert (=> b!1188583 (= lt!408660 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!330 thiss!27592 rules!4386 (t!112101 l!6534) (h!17356 (t!112101 (t!112101 l!6534)))))))

(declare-fun lt!408658 () Unit!18338)

(declare-fun lt!408659 () Unit!18338)

(assert (=> b!1188583 (= lt!408658 lt!408659)))

(assert (=> b!1188583 (rulesProduceIndividualToken!814 thiss!27592 rules!4386 (h!17356 (t!112101 l!6534)))))

(assert (=> b!1188583 (= lt!408659 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!330 thiss!27592 rules!4386 (t!112101 l!6534) (h!17356 (t!112101 l!6534))))))

(declare-fun b!1188584 () Bool)

(assert (=> b!1188584 (= e!763924 (tokensListTwoByTwoPredicateSeparableList!181 thiss!27592 (Cons!11955 (h!17356 (t!112101 (t!112101 l!6534))) (t!112101 (t!112101 (t!112101 l!6534)))) rules!4386))))

(assert (= (and d!339829 (not res!537011)) b!1188583))

(assert (= (and b!1188583 res!537012) b!1188584))

(declare-fun m!1363993 () Bool)

(assert (=> b!1188583 m!1363993))

(declare-fun m!1363995 () Bool)

(assert (=> b!1188583 m!1363995))

(declare-fun m!1363997 () Bool)

(assert (=> b!1188583 m!1363997))

(assert (=> b!1188583 m!1363963))

(declare-fun m!1363999 () Bool)

(assert (=> b!1188583 m!1363999))

(declare-fun m!1364001 () Bool)

(assert (=> b!1188583 m!1364001))

(assert (=> b!1188583 m!1363995))

(declare-fun m!1364003 () Bool)

(assert (=> b!1188583 m!1364003))

(declare-fun m!1364005 () Bool)

(assert (=> b!1188584 m!1364005))

(assert (=> b!1188462 d!339829))

(declare-fun b!1188598 () Bool)

(declare-fun b_free!28709 () Bool)

(declare-fun b_next!29413 () Bool)

(assert (=> b!1188598 (= b_free!28709 (not b_next!29413))))

(declare-fun tp!339219 () Bool)

(declare-fun b_and!81889 () Bool)

(assert (=> b!1188598 (= tp!339219 b_and!81889)))

(declare-fun b_free!28711 () Bool)

(declare-fun b_next!29415 () Bool)

(assert (=> b!1188598 (= b_free!28711 (not b_next!29415))))

(declare-fun t!112115 () Bool)

(declare-fun tb!66433 () Bool)

(assert (=> (and b!1188598 (= (toChars!3068 (transformation!2092 (rule!3513 (h!17356 (t!112101 l!6534))))) (toChars!3068 (transformation!2092 (rule!3513 (h!17356 l!6534))))) t!112115) tb!66433))

(declare-fun result!79882 () Bool)

(assert (= result!79882 result!79874))

(assert (=> b!1188512 t!112115))

(declare-fun b_and!81891 () Bool)

(declare-fun tp!339216 () Bool)

(assert (=> b!1188598 (= tp!339216 (and (=> t!112115 result!79882) b_and!81891))))

(declare-fun e!763938 () Bool)

(declare-fun tp!339218 () Bool)

(declare-fun b!1188596 () Bool)

(declare-fun e!763943 () Bool)

(assert (=> b!1188596 (= e!763943 (and (inv!21 (value!67680 (h!17356 (t!112101 l!6534)))) e!763938 tp!339218))))

(declare-fun e!763941 () Bool)

(assert (=> b!1188458 (= tp!339171 e!763941)))

(declare-fun b!1188595 () Bool)

(declare-fun tp!339220 () Bool)

(assert (=> b!1188595 (= e!763941 (and (inv!15791 (h!17356 (t!112101 l!6534))) e!763943 tp!339220))))

(declare-fun tp!339217 () Bool)

(declare-fun b!1188597 () Bool)

(declare-fun e!763939 () Bool)

(assert (=> b!1188597 (= e!763938 (and tp!339217 (inv!15787 (tag!2354 (rule!3513 (h!17356 (t!112101 l!6534))))) (inv!15790 (transformation!2092 (rule!3513 (h!17356 (t!112101 l!6534))))) e!763939))))

(assert (=> b!1188598 (= e!763939 (and tp!339219 tp!339216))))

(assert (= b!1188597 b!1188598))

(assert (= b!1188596 b!1188597))

(assert (= b!1188595 b!1188596))

(assert (= (and b!1188458 (is-Cons!11955 (t!112101 l!6534))) b!1188595))

(declare-fun m!1364007 () Bool)

(assert (=> b!1188596 m!1364007))

(declare-fun m!1364009 () Bool)

(assert (=> b!1188595 m!1364009))

(declare-fun m!1364011 () Bool)

(assert (=> b!1188597 m!1364011))

(declare-fun m!1364013 () Bool)

(assert (=> b!1188597 m!1364013))

(declare-fun b!1188609 () Bool)

(declare-fun e!763946 () Bool)

(declare-fun tp_is_empty!5853 () Bool)

(assert (=> b!1188609 (= e!763946 tp_is_empty!5853)))

(assert (=> b!1188460 (= tp!339169 e!763946)))

(declare-fun b!1188611 () Bool)

(declare-fun tp!339234 () Bool)

(assert (=> b!1188611 (= e!763946 tp!339234)))

(declare-fun b!1188612 () Bool)

(declare-fun tp!339235 () Bool)

(declare-fun tp!339233 () Bool)

(assert (=> b!1188612 (= e!763946 (and tp!339235 tp!339233))))

(declare-fun b!1188610 () Bool)

(declare-fun tp!339231 () Bool)

(declare-fun tp!339232 () Bool)

(assert (=> b!1188610 (= e!763946 (and tp!339231 tp!339232))))

(assert (= (and b!1188460 (is-ElementMatch!3362 (regex!2092 (h!17355 rules!4386)))) b!1188609))

(assert (= (and b!1188460 (is-Concat!5521 (regex!2092 (h!17355 rules!4386)))) b!1188610))

(assert (= (and b!1188460 (is-Star!3362 (regex!2092 (h!17355 rules!4386)))) b!1188611))

(assert (= (and b!1188460 (is-Union!3362 (regex!2092 (h!17355 rules!4386)))) b!1188612))

(declare-fun b!1188613 () Bool)

(declare-fun e!763947 () Bool)

(assert (=> b!1188613 (= e!763947 tp_is_empty!5853)))

(assert (=> b!1188449 (= tp!339173 e!763947)))

(declare-fun b!1188615 () Bool)

(declare-fun tp!339239 () Bool)

(assert (=> b!1188615 (= e!763947 tp!339239)))

(declare-fun b!1188616 () Bool)

(declare-fun tp!339240 () Bool)

(declare-fun tp!339238 () Bool)

(assert (=> b!1188616 (= e!763947 (and tp!339240 tp!339238))))

(declare-fun b!1188614 () Bool)

(declare-fun tp!339236 () Bool)

(declare-fun tp!339237 () Bool)

(assert (=> b!1188614 (= e!763947 (and tp!339236 tp!339237))))

(assert (= (and b!1188449 (is-ElementMatch!3362 (regex!2092 (rule!3513 (h!17356 l!6534))))) b!1188613))

(assert (= (and b!1188449 (is-Concat!5521 (regex!2092 (rule!3513 (h!17356 l!6534))))) b!1188614))

(assert (= (and b!1188449 (is-Star!3362 (regex!2092 (rule!3513 (h!17356 l!6534))))) b!1188615))

(assert (= (and b!1188449 (is-Union!3362 (regex!2092 (rule!3513 (h!17356 l!6534))))) b!1188616))

(declare-fun b!1188621 () Bool)

(declare-fun e!763950 () Bool)

(declare-fun tp!339243 () Bool)

(assert (=> b!1188621 (= e!763950 (and tp_is_empty!5853 tp!339243))))

(assert (=> b!1188461 (= tp!339170 e!763950)))

(assert (= (and b!1188461 (is-Cons!11952 (originalCharacters!2646 (h!17356 l!6534)))) b!1188621))

(declare-fun b!1188632 () Bool)

(declare-fun b_free!28713 () Bool)

(declare-fun b_next!29417 () Bool)

(assert (=> b!1188632 (= b_free!28713 (not b_next!29417))))

(declare-fun tp!339254 () Bool)

(declare-fun b_and!81893 () Bool)

(assert (=> b!1188632 (= tp!339254 b_and!81893)))

(declare-fun b_free!28715 () Bool)

(declare-fun b_next!29419 () Bool)

(assert (=> b!1188632 (= b_free!28715 (not b_next!29419))))

(declare-fun t!112117 () Bool)

(declare-fun tb!66435 () Bool)

(assert (=> (and b!1188632 (= (toChars!3068 (transformation!2092 (h!17355 (t!112100 rules!4386)))) (toChars!3068 (transformation!2092 (rule!3513 (h!17356 l!6534))))) t!112117) tb!66435))

(declare-fun result!79890 () Bool)

(assert (= result!79890 result!79874))

(assert (=> b!1188512 t!112117))

(declare-fun b_and!81895 () Bool)

(declare-fun tp!339252 () Bool)

(assert (=> b!1188632 (= tp!339252 (and (=> t!112117 result!79890) b_and!81895))))

(declare-fun e!763959 () Bool)

(assert (=> b!1188632 (= e!763959 (and tp!339254 tp!339252))))

(declare-fun tp!339253 () Bool)

(declare-fun e!763962 () Bool)

(declare-fun b!1188631 () Bool)

(assert (=> b!1188631 (= e!763962 (and tp!339253 (inv!15787 (tag!2354 (h!17355 (t!112100 rules!4386)))) (inv!15790 (transformation!2092 (h!17355 (t!112100 rules!4386)))) e!763959))))

(declare-fun b!1188630 () Bool)

(declare-fun e!763961 () Bool)

(declare-fun tp!339255 () Bool)

(assert (=> b!1188630 (= e!763961 (and e!763962 tp!339255))))

(assert (=> b!1188452 (= tp!339174 e!763961)))

(assert (= b!1188631 b!1188632))

(assert (= b!1188630 b!1188631))

(assert (= (and b!1188452 (is-Cons!11954 (t!112100 rules!4386))) b!1188630))

(declare-fun m!1364015 () Bool)

(assert (=> b!1188631 m!1364015))

(declare-fun m!1364017 () Bool)

(assert (=> b!1188631 m!1364017))

(declare-fun b_lambda!35689 () Bool)

(assert (= b_lambda!35687 (or (and b!1188451 b_free!28695) (and b!1188457 b_free!28699 (= (toChars!3068 (transformation!2092 (h!17355 rules!4386))) (toChars!3068 (transformation!2092 (rule!3513 (h!17356 l!6534)))))) (and b!1188598 b_free!28711 (= (toChars!3068 (transformation!2092 (rule!3513 (h!17356 (t!112101 l!6534))))) (toChars!3068 (transformation!2092 (rule!3513 (h!17356 l!6534)))))) (and b!1188632 b_free!28715 (= (toChars!3068 (transformation!2092 (h!17355 (t!112100 rules!4386)))) (toChars!3068 (transformation!2092 (rule!3513 (h!17356 l!6534)))))) b_lambda!35689)))

(push 1)

(assert (not b!1188631))

(assert (not b!1188610))

(assert b_and!81891)

(assert (not b!1188551))

(assert (not b_next!29415))

(assert (not b!1188583))

(assert (not b_next!29417))

(assert (not b!1188518))

(assert (not b!1188553))

(assert (not b_next!29419))

(assert (not b!1188597))

(assert b_and!81887)

(assert (not d!339815))

(assert (not d!339811))

(assert tp_is_empty!5853)

(assert (not b_lambda!35689))

(assert (not b!1188621))

(assert (not d!339801))

(assert b_and!81869)

(assert (not tb!66429))

(assert (not b!1188615))

(assert (not d!339805))

(assert (not b!1188584))

(assert (not b_next!29413))

(assert (not d!339819))

(assert b_and!81885)

(assert (not b!1188582))

(assert (not b!1188579))

(assert b_and!81889)

(assert b_and!81895)

(assert (not d!339803))

(assert (not b!1188565))

(assert b_and!81893)

(assert (not b!1188612))

(assert (not b!1188549))

(assert b_and!81873)

(assert (not b!1188630))

(assert (not b_next!29399))

(assert (not b!1188550))

(assert (not b!1188611))

(assert (not b!1188521))

(assert (not b!1188596))

(assert (not b!1188616))

(assert (not b!1188578))

(assert (not b!1188530))

(assert (not b_next!29403))

(assert (not b!1188540))

(assert (not b!1188595))

(assert (not b!1188567))

(assert (not b!1188513))

(assert (not b!1188512))

(assert (not b!1188552))

(assert (not b!1188614))

(assert (not b!1188559))

(assert (not b_next!29401))

(assert (not b!1188558))

(assert (not b!1188531))

(assert (not b_next!29397))

(check-sat)

(pop 1)

(push 1)

(assert b_and!81869)

(assert b_and!81891)

(assert (not b_next!29415))

(assert b_and!81889)

(assert (not b_next!29417))

(assert (not b_next!29403))

(assert (not b_next!29401))

(assert (not b_next!29397))

(assert (not b_next!29419))

(assert b_and!81887)

(assert (not b_next!29413))

(assert b_and!81885)

(assert b_and!81895)

(assert b_and!81893)

(assert b_and!81873)

(assert (not b_next!29399))

(check-sat)

(pop 1)

