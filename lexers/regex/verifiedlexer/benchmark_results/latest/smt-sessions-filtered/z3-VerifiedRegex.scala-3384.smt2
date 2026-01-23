; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!191812 () Bool)

(assert start!191812)

(declare-fun b!1911992 () Bool)

(declare-fun b_free!53993 () Bool)

(declare-fun b_next!54697 () Bool)

(assert (=> b!1911992 (= b_free!53993 (not b_next!54697))))

(declare-fun tp!545729 () Bool)

(declare-fun b_and!149007 () Bool)

(assert (=> b!1911992 (= tp!545729 b_and!149007)))

(declare-fun b_free!53995 () Bool)

(declare-fun b_next!54699 () Bool)

(assert (=> b!1911992 (= b_free!53995 (not b_next!54699))))

(declare-fun tp!545735 () Bool)

(declare-fun b_and!149009 () Bool)

(assert (=> b!1911992 (= tp!545735 b_and!149009)))

(declare-fun b!1912006 () Bool)

(declare-fun b_free!53997 () Bool)

(declare-fun b_next!54701 () Bool)

(assert (=> b!1912006 (= b_free!53997 (not b_next!54701))))

(declare-fun tp!545737 () Bool)

(declare-fun b_and!149011 () Bool)

(assert (=> b!1912006 (= tp!545737 b_and!149011)))

(declare-fun b_free!53999 () Bool)

(declare-fun b_next!54703 () Bool)

(assert (=> b!1912006 (= b_free!53999 (not b_next!54703))))

(declare-fun tp!545731 () Bool)

(declare-fun b_and!149013 () Bool)

(assert (=> b!1912006 (= tp!545731 b_and!149013)))

(declare-fun b!1912023 () Bool)

(declare-fun b_free!54001 () Bool)

(declare-fun b_next!54705 () Bool)

(assert (=> b!1912023 (= b_free!54001 (not b_next!54705))))

(declare-fun tp!545733 () Bool)

(declare-fun b_and!149015 () Bool)

(assert (=> b!1912023 (= tp!545733 b_and!149015)))

(declare-fun b_free!54003 () Bool)

(declare-fun b_next!54707 () Bool)

(assert (=> b!1912023 (= b_free!54003 (not b_next!54707))))

(declare-fun tp!545730 () Bool)

(declare-fun b_and!149017 () Bool)

(assert (=> b!1912023 (= tp!545730 b_and!149017)))

(declare-fun b!1911990 () Bool)

(declare-datatypes ((Unit!35925 0))(
  ( (Unit!35926) )
))
(declare-fun e!1221402 () Unit!35925)

(declare-fun Unit!35927 () Unit!35925)

(assert (=> b!1911990 (= e!1221402 Unit!35927)))

(declare-fun b!1911991 () Bool)

(declare-fun res!853874 () Bool)

(declare-fun e!1221419 () Bool)

(assert (=> b!1911991 (=> (not res!853874) (not e!1221419))))

(declare-datatypes ((LexerInterface!3457 0))(
  ( (LexerInterfaceExt!3454 (__x!13458 Int)) (Lexer!3455) )
))
(declare-fun thiss!23328 () LexerInterface!3457)

(declare-datatypes ((C!10684 0))(
  ( (C!10685 (val!6294 Int)) )
))
(declare-datatypes ((List!21640 0))(
  ( (Nil!21558) (Cons!21558 (h!26959 C!10684) (t!178209 List!21640)) )
))
(declare-datatypes ((List!21641 0))(
  ( (Nil!21559) (Cons!21559 (h!26960 (_ BitVec 16)) (t!178210 List!21641)) )
))
(declare-datatypes ((TokenValue!3980 0))(
  ( (FloatLiteralValue!7960 (text!28305 List!21641)) (TokenValueExt!3979 (__x!13459 Int)) (Broken!19900 (value!121119 List!21641)) (Object!4061) (End!3980) (Def!3980) (Underscore!3980) (Match!3980) (Else!3980) (Error!3980) (Case!3980) (If!3980) (Extends!3980) (Abstract!3980) (Class!3980) (Val!3980) (DelimiterValue!7960 (del!4040 List!21641)) (KeywordValue!3986 (value!121120 List!21641)) (CommentValue!7960 (value!121121 List!21641)) (WhitespaceValue!7960 (value!121122 List!21641)) (IndentationValue!3980 (value!121123 List!21641)) (String!25017) (Int32!3980) (Broken!19901 (value!121124 List!21641)) (Boolean!3981) (Unit!35928) (OperatorValue!3983 (op!4040 List!21641)) (IdentifierValue!7960 (value!121125 List!21641)) (IdentifierValue!7961 (value!121126 List!21641)) (WhitespaceValue!7961 (value!121127 List!21641)) (True!7960) (False!7960) (Broken!19902 (value!121128 List!21641)) (Broken!19903 (value!121129 List!21641)) (True!7961) (RightBrace!3980) (RightBracket!3980) (Colon!3980) (Null!3980) (Comma!3980) (LeftBracket!3980) (False!7961) (LeftBrace!3980) (ImaginaryLiteralValue!3980 (text!28306 List!21641)) (StringLiteralValue!11940 (value!121130 List!21641)) (EOFValue!3980 (value!121131 List!21641)) (IdentValue!3980 (value!121132 List!21641)) (DelimiterValue!7961 (value!121133 List!21641)) (DedentValue!3980 (value!121134 List!21641)) (NewLineValue!3980 (value!121135 List!21641)) (IntegerValue!11940 (value!121136 (_ BitVec 32)) (text!28307 List!21641)) (IntegerValue!11941 (value!121137 Int) (text!28308 List!21641)) (Times!3980) (Or!3980) (Equal!3980) (Minus!3980) (Broken!19904 (value!121138 List!21641)) (And!3980) (Div!3980) (LessEqual!3980) (Mod!3980) (Concat!9249) (Not!3980) (Plus!3980) (SpaceValue!3980 (value!121139 List!21641)) (IntegerValue!11942 (value!121140 Int) (text!28309 List!21641)) (StringLiteralValue!11941 (text!28310 List!21641)) (FloatLiteralValue!7961 (text!28311 List!21641)) (BytesLiteralValue!3980 (value!121141 List!21641)) (CommentValue!7961 (value!121142 List!21641)) (StringLiteralValue!11942 (value!121143 List!21641)) (ErrorTokenValue!3980 (msg!4041 List!21641)) )
))
(declare-datatypes ((IArray!14365 0))(
  ( (IArray!14366 (innerList!7240 List!21640)) )
))
(declare-datatypes ((Conc!7180 0))(
  ( (Node!7180 (left!17228 Conc!7180) (right!17558 Conc!7180) (csize!14590 Int) (cheight!7391 Int)) (Leaf!10565 (xs!10074 IArray!14365) (csize!14591 Int)) (Empty!7180) )
))
(declare-datatypes ((BalanceConc!14176 0))(
  ( (BalanceConc!14177 (c!311486 Conc!7180)) )
))
(declare-datatypes ((TokenValueInjection!7544 0))(
  ( (TokenValueInjection!7545 (toValue!5473 Int) (toChars!5332 Int)) )
))
(declare-datatypes ((String!25018 0))(
  ( (String!25019 (value!121144 String)) )
))
(declare-datatypes ((Regex!5269 0))(
  ( (ElementMatch!5269 (c!311487 C!10684)) (Concat!9250 (regOne!11050 Regex!5269) (regTwo!11050 Regex!5269)) (EmptyExpr!5269) (Star!5269 (reg!5598 Regex!5269)) (EmptyLang!5269) (Union!5269 (regOne!11051 Regex!5269) (regTwo!11051 Regex!5269)) )
))
(declare-datatypes ((Rule!7488 0))(
  ( (Rule!7489 (regex!3844 Regex!5269) (tag!4280 String!25018) (isSeparator!3844 Bool) (transformation!3844 TokenValueInjection!7544)) )
))
(declare-datatypes ((List!21642 0))(
  ( (Nil!21560) (Cons!21560 (h!26961 Rule!7488) (t!178211 List!21642)) )
))
(declare-fun rules!3198 () List!21642)

(declare-datatypes ((Token!7240 0))(
  ( (Token!7241 (value!121145 TokenValue!3980) (rule!6043 Rule!7488) (size!16978 Int) (originalCharacters!4651 List!21640)) )
))
(declare-datatypes ((List!21643 0))(
  ( (Nil!21561) (Cons!21561 (h!26962 Token!7240) (t!178212 List!21643)) )
))
(declare-fun tokens!598 () List!21643)

(declare-fun rulesProduceEachTokenIndividuallyList!1188 (LexerInterface!3457 List!21642 List!21643) Bool)

(assert (=> b!1911991 (= res!853874 (rulesProduceEachTokenIndividuallyList!1188 thiss!23328 rules!3198 tokens!598))))

(declare-fun e!1221410 () Bool)

(assert (=> b!1911992 (= e!1221410 (and tp!545729 tp!545735))))

(declare-fun b!1911993 () Bool)

(declare-fun e!1221399 () Bool)

(declare-fun e!1221404 () Bool)

(declare-fun tp!545732 () Bool)

(declare-fun inv!28661 (String!25018) Bool)

(declare-fun inv!28664 (TokenValueInjection!7544) Bool)

(assert (=> b!1911993 (= e!1221404 (and tp!545732 (inv!28661 (tag!4280 (h!26961 rules!3198))) (inv!28664 (transformation!3844 (h!26961 rules!3198))) e!1221399))))

(declare-fun b!1911994 () Bool)

(declare-fun res!853888 () Bool)

(assert (=> b!1911994 (=> (not res!853888) (not e!1221419))))

(declare-fun separatorToken!354 () Token!7240)

(assert (=> b!1911994 (= res!853888 (isSeparator!3844 (rule!6043 separatorToken!354)))))

(declare-fun res!853883 () Bool)

(assert (=> start!191812 (=> (not res!853883) (not e!1221419))))

(get-info :version)

(assert (=> start!191812 (= res!853883 ((_ is Lexer!3455) thiss!23328))))

(assert (=> start!191812 e!1221419))

(assert (=> start!191812 true))

(declare-fun e!1221415 () Bool)

(assert (=> start!191812 e!1221415))

(declare-fun e!1221413 () Bool)

(assert (=> start!191812 e!1221413))

(declare-fun e!1221400 () Bool)

(declare-fun inv!28665 (Token!7240) Bool)

(assert (=> start!191812 (and (inv!28665 separatorToken!354) e!1221400)))

(declare-fun e!1221421 () Bool)

(declare-fun tp!545727 () Bool)

(declare-fun b!1911995 () Bool)

(declare-fun inv!21 (TokenValue!3980) Bool)

(assert (=> b!1911995 (= e!1221400 (and (inv!21 (value!121145 separatorToken!354)) e!1221421 tp!545727))))

(declare-fun b!1911996 () Bool)

(declare-fun res!853880 () Bool)

(declare-fun e!1221411 () Bool)

(assert (=> b!1911996 (=> res!853880 e!1221411)))

(declare-datatypes ((tuple2!20286 0))(
  ( (tuple2!20287 (_1!11612 Token!7240) (_2!11612 List!21640)) )
))
(declare-fun lt!731524 () tuple2!20286)

(declare-fun isEmpty!13242 (List!21640) Bool)

(assert (=> b!1911996 (= res!853880 (not (isEmpty!13242 (_2!11612 lt!731524))))))

(declare-fun b!1911997 () Bool)

(declare-fun e!1221412 () Bool)

(declare-fun e!1221422 () Bool)

(assert (=> b!1911997 (= e!1221412 e!1221422)))

(declare-fun res!853879 () Bool)

(assert (=> b!1911997 (=> (not res!853879) (not e!1221422))))

(declare-fun lt!731526 () Rule!7488)

(declare-fun lt!731542 () List!21640)

(declare-fun matchR!2555 (Regex!5269 List!21640) Bool)

(assert (=> b!1911997 (= res!853879 (matchR!2555 (regex!3844 lt!731526) lt!731542))))

(declare-datatypes ((Option!4393 0))(
  ( (None!4392) (Some!4392 (v!26449 Rule!7488)) )
))
(declare-fun lt!731521 () Option!4393)

(declare-fun get!6722 (Option!4393) Rule!7488)

(assert (=> b!1911997 (= lt!731526 (get!6722 lt!731521))))

(declare-fun b!1911998 () Bool)

(declare-fun res!853886 () Bool)

(assert (=> b!1911998 (=> res!853886 e!1221411)))

(declare-fun contains!3892 (List!21642 Rule!7488) Bool)

(assert (=> b!1911998 (= res!853886 (not (contains!3892 rules!3198 (rule!6043 separatorToken!354))))))

(declare-fun b!1911999 () Bool)

(declare-fun res!853891 () Bool)

(assert (=> b!1911999 (=> (not res!853891) (not e!1221419))))

(declare-fun lambda!74659 () Int)

(declare-fun forall!4536 (List!21643 Int) Bool)

(assert (=> b!1911999 (= res!853891 (forall!4536 tokens!598 lambda!74659))))

(declare-fun b!1912000 () Bool)

(declare-fun e!1221416 () Bool)

(assert (=> b!1912000 (= e!1221416 false)))

(declare-fun b!1912001 () Bool)

(declare-fun Unit!35929 () Unit!35925)

(assert (=> b!1912001 (= e!1221402 Unit!35929)))

(declare-fun lt!731531 () Unit!35925)

(declare-fun lt!731515 () List!21640)

(declare-fun lt!731522 () C!10684)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!252 (Regex!5269 List!21640 C!10684) Unit!35925)

(assert (=> b!1912001 (= lt!731531 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!252 (regex!3844 (rule!6043 separatorToken!354)) lt!731515 lt!731522))))

(declare-fun res!853878 () Bool)

(assert (=> b!1912001 (= res!853878 (not (matchR!2555 (regex!3844 (rule!6043 separatorToken!354)) lt!731515)))))

(assert (=> b!1912001 (=> (not res!853878) (not e!1221416))))

(assert (=> b!1912001 e!1221416))

(declare-fun b!1912002 () Bool)

(declare-fun res!853875 () Bool)

(assert (=> b!1912002 (=> res!853875 e!1221411)))

(assert (=> b!1912002 (= res!853875 (isSeparator!3844 (rule!6043 (h!26962 tokens!598))))))

(declare-fun b!1912003 () Bool)

(declare-fun tp!545736 () Bool)

(assert (=> b!1912003 (= e!1221415 (and e!1221404 tp!545736))))

(declare-fun b!1912004 () Bool)

(declare-fun res!853887 () Bool)

(assert (=> b!1912004 (=> res!853887 e!1221411)))

(declare-datatypes ((IArray!14367 0))(
  ( (IArray!14368 (innerList!7241 List!21643)) )
))
(declare-datatypes ((Conc!7181 0))(
  ( (Node!7181 (left!17229 Conc!7181) (right!17559 Conc!7181) (csize!14592 Int) (cheight!7392 Int)) (Leaf!10566 (xs!10075 IArray!14367) (csize!14593 Int)) (Empty!7181) )
))
(declare-datatypes ((BalanceConc!14178 0))(
  ( (BalanceConc!14179 (c!311488 Conc!7181)) )
))
(declare-fun isEmpty!13243 (BalanceConc!14178) Bool)

(declare-datatypes ((tuple2!20288 0))(
  ( (tuple2!20289 (_1!11613 BalanceConc!14178) (_2!11613 BalanceConc!14176)) )
))
(declare-fun lex!1532 (LexerInterface!3457 List!21642 BalanceConc!14176) tuple2!20288)

(declare-fun seqFromList!2716 (List!21640) BalanceConc!14176)

(assert (=> b!1912004 (= res!853887 (isEmpty!13243 (_1!11613 (lex!1532 thiss!23328 rules!3198 (seqFromList!2716 lt!731542)))))))

(declare-fun b!1912005 () Bool)

(declare-fun e!1221405 () Bool)

(declare-fun e!1221406 () Bool)

(assert (=> b!1912005 (= e!1221405 e!1221406)))

(declare-fun res!853895 () Bool)

(assert (=> b!1912005 (=> (not res!853895) (not e!1221406))))

(declare-fun lt!731516 () Rule!7488)

(assert (=> b!1912005 (= res!853895 (matchR!2555 (regex!3844 lt!731516) lt!731515))))

(declare-fun lt!731525 () Option!4393)

(assert (=> b!1912005 (= lt!731516 (get!6722 lt!731525))))

(declare-fun e!1221409 () Bool)

(assert (=> b!1912006 (= e!1221409 (and tp!545737 tp!545731))))

(declare-fun b!1912007 () Bool)

(declare-fun e!1221420 () Bool)

(assert (=> b!1912007 (= e!1221420 e!1221411)))

(declare-fun res!853881 () Bool)

(assert (=> b!1912007 (=> res!853881 e!1221411)))

(declare-fun lt!731514 () List!21640)

(declare-fun lt!731537 () List!21640)

(assert (=> b!1912007 (= res!853881 (or (not (= lt!731514 lt!731537)) (not (= lt!731537 lt!731542)) (not (= lt!731514 lt!731542))))))

(declare-fun printList!1040 (LexerInterface!3457 List!21643) List!21640)

(assert (=> b!1912007 (= lt!731537 (printList!1040 thiss!23328 (Cons!21561 (h!26962 tokens!598) Nil!21561)))))

(declare-fun lt!731541 () BalanceConc!14176)

(declare-fun list!8768 (BalanceConc!14176) List!21640)

(assert (=> b!1912007 (= lt!731514 (list!8768 lt!731541))))

(declare-fun lt!731530 () BalanceConc!14178)

(declare-fun printTailRec!974 (LexerInterface!3457 BalanceConc!14178 Int BalanceConc!14176) BalanceConc!14176)

(assert (=> b!1912007 (= lt!731541 (printTailRec!974 thiss!23328 lt!731530 0 (BalanceConc!14177 Empty!7180)))))

(declare-fun print!1467 (LexerInterface!3457 BalanceConc!14178) BalanceConc!14176)

(assert (=> b!1912007 (= lt!731541 (print!1467 thiss!23328 lt!731530))))

(declare-fun singletonSeq!1867 (Token!7240) BalanceConc!14178)

(assert (=> b!1912007 (= lt!731530 (singletonSeq!1867 (h!26962 tokens!598)))))

(declare-fun lt!731540 () List!21640)

(declare-fun contains!3893 (List!21640 C!10684) Bool)

(assert (=> b!1912007 (not (contains!3893 lt!731540 lt!731522))))

(declare-fun usedCharacters!352 (Regex!5269) List!21640)

(assert (=> b!1912007 (= lt!731540 (usedCharacters!352 (regex!3844 (rule!6043 (h!26962 tokens!598)))))))

(declare-fun lt!731536 () Unit!35925)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!48 (LexerInterface!3457 List!21642 List!21642 Rule!7488 Rule!7488 C!10684) Unit!35925)

(assert (=> b!1912007 (= lt!731536 (lemmaNonSepRuleNotContainsCharContainedInASepRule!48 thiss!23328 rules!3198 rules!3198 (rule!6043 (h!26962 tokens!598)) (rule!6043 separatorToken!354) lt!731522))))

(declare-fun lt!731519 () Unit!35925)

(assert (=> b!1912007 (= lt!731519 e!1221402)))

(declare-fun c!311485 () Bool)

(declare-fun lt!731518 () List!21640)

(assert (=> b!1912007 (= c!311485 (not (contains!3893 lt!731518 lt!731522)))))

(declare-fun head!4450 (List!21640) C!10684)

(assert (=> b!1912007 (= lt!731522 (head!4450 lt!731515))))

(assert (=> b!1912007 (= lt!731518 (usedCharacters!352 (regex!3844 (rule!6043 separatorToken!354))))))

(declare-fun lt!731538 () List!21640)

(declare-fun lt!731520 () List!21640)

(declare-fun lt!731512 () List!21640)

(declare-fun ++!5795 (List!21640 List!21640) List!21640)

(assert (=> b!1912007 (= (++!5795 lt!731520 lt!731538) (++!5795 lt!731542 lt!731512))))

(assert (=> b!1912007 (= lt!731512 (++!5795 lt!731515 lt!731538))))

(assert (=> b!1912007 (= lt!731520 (++!5795 lt!731542 lt!731515))))

(declare-fun lt!731527 () Unit!35925)

(declare-fun lemmaConcatAssociativity!1159 (List!21640 List!21640 List!21640) Unit!35925)

(assert (=> b!1912007 (= lt!731527 (lemmaConcatAssociativity!1159 lt!731542 lt!731515 lt!731538))))

(declare-fun e!1221424 () Bool)

(declare-fun b!1912008 () Bool)

(declare-fun tp!545728 () Bool)

(assert (=> b!1912008 (= e!1221424 (and tp!545728 (inv!28661 (tag!4280 (rule!6043 (h!26962 tokens!598)))) (inv!28664 (transformation!3844 (rule!6043 (h!26962 tokens!598)))) e!1221410))))

(declare-fun b!1912009 () Bool)

(assert (=> b!1912009 (= e!1221422 (= (rule!6043 (h!26962 tokens!598)) lt!731526))))

(declare-fun tp!545738 () Bool)

(declare-fun b!1912010 () Bool)

(assert (=> b!1912010 (= e!1221421 (and tp!545738 (inv!28661 (tag!4280 (rule!6043 separatorToken!354))) (inv!28664 (transformation!3844 (rule!6043 separatorToken!354))) e!1221409))))

(declare-fun b!1912011 () Bool)

(declare-fun res!853894 () Bool)

(declare-fun e!1221408 () Bool)

(assert (=> b!1912011 (=> res!853894 e!1221408)))

(assert (=> b!1912011 (= res!853894 (isEmpty!13242 lt!731512))))

(declare-fun b!1912012 () Bool)

(declare-fun e!1221423 () Bool)

(assert (=> b!1912012 (= e!1221423 true)))

(declare-fun lt!731532 () Bool)

(declare-fun lt!731523 () C!10684)

(assert (=> b!1912012 (= lt!731532 (contains!3893 lt!731518 lt!731523))))

(declare-fun b!1912013 () Bool)

(declare-fun res!853890 () Bool)

(assert (=> b!1912013 (=> res!853890 e!1221411)))

(declare-fun rulesProduceIndividualToken!1629 (LexerInterface!3457 List!21642 Token!7240) Bool)

(assert (=> b!1912013 (= res!853890 (not (rulesProduceIndividualToken!1629 thiss!23328 rules!3198 (h!26962 tokens!598))))))

(declare-fun e!1221407 () Bool)

(declare-fun b!1912014 () Bool)

(declare-fun tp!545734 () Bool)

(assert (=> b!1912014 (= e!1221407 (and (inv!21 (value!121145 (h!26962 tokens!598))) e!1221424 tp!545734))))

(declare-fun b!1912015 () Bool)

(declare-fun res!853882 () Bool)

(assert (=> b!1912015 (=> (not res!853882) (not e!1221419))))

(assert (=> b!1912015 (= res!853882 (rulesProduceIndividualToken!1629 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1912016 () Bool)

(assert (=> b!1912016 (= e!1221419 (not e!1221420))))

(declare-fun res!853893 () Bool)

(assert (=> b!1912016 (=> res!853893 e!1221420)))

(declare-fun lt!731529 () Bool)

(declare-datatypes ((Option!4394 0))(
  ( (None!4393) (Some!4393 (v!26450 tuple2!20286)) )
))
(declare-fun lt!731511 () Option!4394)

(assert (=> b!1912016 (= res!853893 (or (and (not lt!731529) (= (_1!11612 (v!26450 lt!731511)) (h!26962 tokens!598))) lt!731529 (= (_1!11612 (v!26450 lt!731511)) (h!26962 tokens!598))))))

(assert (=> b!1912016 (= lt!731529 (not ((_ is Some!4393) lt!731511)))))

(declare-fun maxPrefix!1903 (LexerInterface!3457 List!21642 List!21640) Option!4394)

(assert (=> b!1912016 (= lt!731511 (maxPrefix!1903 thiss!23328 rules!3198 (++!5795 lt!731542 lt!731538)))))

(declare-fun printWithSeparatorTokenWhenNeededList!500 (LexerInterface!3457 List!21642 List!21643 Token!7240) List!21640)

(assert (=> b!1912016 (= lt!731538 (printWithSeparatorTokenWhenNeededList!500 thiss!23328 rules!3198 (t!178212 tokens!598) separatorToken!354))))

(assert (=> b!1912016 e!1221412))

(declare-fun res!853896 () Bool)

(assert (=> b!1912016 (=> (not res!853896) (not e!1221412))))

(declare-fun isDefined!3691 (Option!4393) Bool)

(assert (=> b!1912016 (= res!853896 (isDefined!3691 lt!731521))))

(declare-fun getRuleFromTag!687 (LexerInterface!3457 List!21642 String!25018) Option!4393)

(assert (=> b!1912016 (= lt!731521 (getRuleFromTag!687 thiss!23328 rules!3198 (tag!4280 (rule!6043 (h!26962 tokens!598)))))))

(declare-fun lt!731528 () Unit!35925)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!687 (LexerInterface!3457 List!21642 List!21640 Token!7240) Unit!35925)

(assert (=> b!1912016 (= lt!731528 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!687 thiss!23328 rules!3198 lt!731542 (h!26962 tokens!598)))))

(assert (=> b!1912016 (= (_1!11612 lt!731524) (h!26962 tokens!598))))

(declare-fun lt!731517 () Option!4394)

(declare-fun get!6723 (Option!4394) tuple2!20286)

(assert (=> b!1912016 (= lt!731524 (get!6723 lt!731517))))

(declare-fun isDefined!3692 (Option!4394) Bool)

(assert (=> b!1912016 (isDefined!3692 lt!731517)))

(assert (=> b!1912016 (= lt!731517 (maxPrefix!1903 thiss!23328 rules!3198 lt!731542))))

(declare-fun lt!731535 () BalanceConc!14176)

(assert (=> b!1912016 (= lt!731542 (list!8768 lt!731535))))

(assert (=> b!1912016 e!1221405))

(declare-fun res!853877 () Bool)

(assert (=> b!1912016 (=> (not res!853877) (not e!1221405))))

(assert (=> b!1912016 (= res!853877 (isDefined!3691 lt!731525))))

(assert (=> b!1912016 (= lt!731525 (getRuleFromTag!687 thiss!23328 rules!3198 (tag!4280 (rule!6043 separatorToken!354))))))

(declare-fun lt!731539 () Unit!35925)

(assert (=> b!1912016 (= lt!731539 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!687 thiss!23328 rules!3198 lt!731515 separatorToken!354))))

(declare-fun charsOf!2400 (Token!7240) BalanceConc!14176)

(assert (=> b!1912016 (= lt!731515 (list!8768 (charsOf!2400 separatorToken!354)))))

(declare-fun lt!731533 () Unit!35925)

(declare-fun lemmaEqSameImage!552 (TokenValueInjection!7544 BalanceConc!14176 BalanceConc!14176) Unit!35925)

(assert (=> b!1912016 (= lt!731533 (lemmaEqSameImage!552 (transformation!3844 (rule!6043 (h!26962 tokens!598))) lt!731535 (seqFromList!2716 (originalCharacters!4651 (h!26962 tokens!598)))))))

(declare-fun lt!731513 () Unit!35925)

(declare-fun lemmaSemiInverse!823 (TokenValueInjection!7544 BalanceConc!14176) Unit!35925)

(assert (=> b!1912016 (= lt!731513 (lemmaSemiInverse!823 (transformation!3844 (rule!6043 (h!26962 tokens!598))) lt!731535))))

(assert (=> b!1912016 (= lt!731535 (charsOf!2400 (h!26962 tokens!598)))))

(declare-fun b!1912017 () Bool)

(declare-fun tp!545726 () Bool)

(assert (=> b!1912017 (= e!1221413 (and (inv!28665 (h!26962 tokens!598)) e!1221407 tp!545726))))

(declare-fun b!1912018 () Bool)

(declare-fun res!853884 () Bool)

(assert (=> b!1912018 (=> (not res!853884) (not e!1221419))))

(declare-fun isEmpty!13244 (List!21642) Bool)

(assert (=> b!1912018 (= res!853884 (not (isEmpty!13244 rules!3198)))))

(declare-fun b!1912019 () Bool)

(assert (=> b!1912019 (= e!1221411 e!1221408)))

(declare-fun res!853872 () Bool)

(assert (=> b!1912019 (=> res!853872 e!1221408)))

(assert (=> b!1912019 (= res!853872 (not (matchR!2555 (regex!3844 (rule!6043 (h!26962 tokens!598))) lt!731542)))))

(declare-fun ruleValid!1163 (LexerInterface!3457 Rule!7488) Bool)

(assert (=> b!1912019 (ruleValid!1163 thiss!23328 (rule!6043 (h!26962 tokens!598)))))

(declare-fun lt!731534 () Unit!35925)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!660 (LexerInterface!3457 Rule!7488 List!21642) Unit!35925)

(assert (=> b!1912019 (= lt!731534 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!660 thiss!23328 (rule!6043 (h!26962 tokens!598)) rules!3198))))

(declare-fun b!1912020 () Bool)

(declare-fun res!853889 () Bool)

(assert (=> b!1912020 (=> (not res!853889) (not e!1221419))))

(assert (=> b!1912020 (= res!853889 ((_ is Cons!21561) tokens!598))))

(declare-fun b!1912021 () Bool)

(assert (=> b!1912021 (= e!1221406 (= (rule!6043 separatorToken!354) lt!731516))))

(declare-fun b!1912022 () Bool)

(assert (=> b!1912022 (= e!1221408 e!1221423)))

(declare-fun res!853876 () Bool)

(assert (=> b!1912022 (=> res!853876 e!1221423)))

(assert (=> b!1912022 (= res!853876 (contains!3893 lt!731540 lt!731523))))

(assert (=> b!1912022 (= lt!731523 (head!4450 lt!731512))))

(assert (=> b!1912023 (= e!1221399 (and tp!545733 tp!545730))))

(declare-fun b!1912024 () Bool)

(declare-fun res!853873 () Bool)

(assert (=> b!1912024 (=> (not res!853873) (not e!1221419))))

(declare-fun sepAndNonSepRulesDisjointChars!942 (List!21642 List!21642) Bool)

(assert (=> b!1912024 (= res!853873 (sepAndNonSepRulesDisjointChars!942 rules!3198 rules!3198))))

(declare-fun b!1912025 () Bool)

(declare-fun res!853892 () Bool)

(assert (=> b!1912025 (=> (not res!853892) (not e!1221419))))

(declare-fun rulesInvariant!3064 (LexerInterface!3457 List!21642) Bool)

(assert (=> b!1912025 (= res!853892 (rulesInvariant!3064 thiss!23328 rules!3198))))

(declare-fun b!1912026 () Bool)

(declare-fun res!853885 () Bool)

(assert (=> b!1912026 (=> res!853885 e!1221411)))

(assert (=> b!1912026 (= res!853885 (not (contains!3892 rules!3198 (rule!6043 (h!26962 tokens!598)))))))

(assert (= (and start!191812 res!853883) b!1912018))

(assert (= (and b!1912018 res!853884) b!1912025))

(assert (= (and b!1912025 res!853892) b!1911991))

(assert (= (and b!1911991 res!853874) b!1912015))

(assert (= (and b!1912015 res!853882) b!1911994))

(assert (= (and b!1911994 res!853888) b!1911999))

(assert (= (and b!1911999 res!853891) b!1912024))

(assert (= (and b!1912024 res!853873) b!1912020))

(assert (= (and b!1912020 res!853889) b!1912016))

(assert (= (and b!1912016 res!853877) b!1912005))

(assert (= (and b!1912005 res!853895) b!1912021))

(assert (= (and b!1912016 res!853896) b!1911997))

(assert (= (and b!1911997 res!853879) b!1912009))

(assert (= (and b!1912016 (not res!853893)) b!1912007))

(assert (= (and b!1912007 c!311485) b!1912001))

(assert (= (and b!1912007 (not c!311485)) b!1911990))

(assert (= (and b!1912001 res!853878) b!1912000))

(assert (= (and b!1912007 (not res!853881)) b!1912013))

(assert (= (and b!1912013 (not res!853890)) b!1912004))

(assert (= (and b!1912004 (not res!853887)) b!1912026))

(assert (= (and b!1912026 (not res!853885)) b!1911998))

(assert (= (and b!1911998 (not res!853886)) b!1912002))

(assert (= (and b!1912002 (not res!853875)) b!1911996))

(assert (= (and b!1911996 (not res!853880)) b!1912019))

(assert (= (and b!1912019 (not res!853872)) b!1912011))

(assert (= (and b!1912011 (not res!853894)) b!1912022))

(assert (= (and b!1912022 (not res!853876)) b!1912012))

(assert (= b!1911993 b!1912023))

(assert (= b!1912003 b!1911993))

(assert (= (and start!191812 ((_ is Cons!21560) rules!3198)) b!1912003))

(assert (= b!1912008 b!1911992))

(assert (= b!1912014 b!1912008))

(assert (= b!1912017 b!1912014))

(assert (= (and start!191812 ((_ is Cons!21561) tokens!598)) b!1912017))

(assert (= b!1912010 b!1912006))

(assert (= b!1911995 b!1912010))

(assert (= start!191812 b!1911995))

(declare-fun m!2345917 () Bool)

(assert (=> b!1912026 m!2345917))

(declare-fun m!2345919 () Bool)

(assert (=> b!1912017 m!2345919))

(declare-fun m!2345921 () Bool)

(assert (=> b!1911995 m!2345921))

(declare-fun m!2345923 () Bool)

(assert (=> b!1912008 m!2345923))

(declare-fun m!2345925 () Bool)

(assert (=> b!1912008 m!2345925))

(declare-fun m!2345927 () Bool)

(assert (=> b!1912022 m!2345927))

(declare-fun m!2345929 () Bool)

(assert (=> b!1912022 m!2345929))

(declare-fun m!2345931 () Bool)

(assert (=> b!1912001 m!2345931))

(declare-fun m!2345933 () Bool)

(assert (=> b!1912001 m!2345933))

(declare-fun m!2345935 () Bool)

(assert (=> b!1911993 m!2345935))

(declare-fun m!2345937 () Bool)

(assert (=> b!1911993 m!2345937))

(declare-fun m!2345939 () Bool)

(assert (=> b!1911997 m!2345939))

(declare-fun m!2345941 () Bool)

(assert (=> b!1911997 m!2345941))

(declare-fun m!2345943 () Bool)

(assert (=> b!1912005 m!2345943))

(declare-fun m!2345945 () Bool)

(assert (=> b!1912005 m!2345945))

(declare-fun m!2345947 () Bool)

(assert (=> b!1912011 m!2345947))

(declare-fun m!2345949 () Bool)

(assert (=> b!1912019 m!2345949))

(declare-fun m!2345951 () Bool)

(assert (=> b!1912019 m!2345951))

(declare-fun m!2345953 () Bool)

(assert (=> b!1912019 m!2345953))

(declare-fun m!2345955 () Bool)

(assert (=> start!191812 m!2345955))

(declare-fun m!2345957 () Bool)

(assert (=> b!1912024 m!2345957))

(declare-fun m!2345959 () Bool)

(assert (=> b!1912016 m!2345959))

(declare-fun m!2345961 () Bool)

(assert (=> b!1912016 m!2345961))

(declare-fun m!2345963 () Bool)

(assert (=> b!1912016 m!2345963))

(declare-fun m!2345965 () Bool)

(assert (=> b!1912016 m!2345965))

(declare-fun m!2345967 () Bool)

(assert (=> b!1912016 m!2345967))

(declare-fun m!2345969 () Bool)

(assert (=> b!1912016 m!2345969))

(declare-fun m!2345971 () Bool)

(assert (=> b!1912016 m!2345971))

(declare-fun m!2345973 () Bool)

(assert (=> b!1912016 m!2345973))

(declare-fun m!2345975 () Bool)

(assert (=> b!1912016 m!2345975))

(declare-fun m!2345977 () Bool)

(assert (=> b!1912016 m!2345977))

(declare-fun m!2345979 () Bool)

(assert (=> b!1912016 m!2345979))

(declare-fun m!2345981 () Bool)

(assert (=> b!1912016 m!2345981))

(declare-fun m!2345983 () Bool)

(assert (=> b!1912016 m!2345983))

(declare-fun m!2345985 () Bool)

(assert (=> b!1912016 m!2345985))

(assert (=> b!1912016 m!2345981))

(declare-fun m!2345987 () Bool)

(assert (=> b!1912016 m!2345987))

(declare-fun m!2345989 () Bool)

(assert (=> b!1912016 m!2345989))

(declare-fun m!2345991 () Bool)

(assert (=> b!1912016 m!2345991))

(assert (=> b!1912016 m!2345973))

(declare-fun m!2345993 () Bool)

(assert (=> b!1912016 m!2345993))

(assert (=> b!1912016 m!2345969))

(declare-fun m!2345995 () Bool)

(assert (=> b!1912016 m!2345995))

(declare-fun m!2345997 () Bool)

(assert (=> b!1911999 m!2345997))

(declare-fun m!2345999 () Bool)

(assert (=> b!1912004 m!2345999))

(assert (=> b!1912004 m!2345999))

(declare-fun m!2346001 () Bool)

(assert (=> b!1912004 m!2346001))

(declare-fun m!2346003 () Bool)

(assert (=> b!1912004 m!2346003))

(declare-fun m!2346005 () Bool)

(assert (=> b!1912015 m!2346005))

(declare-fun m!2346007 () Bool)

(assert (=> b!1912014 m!2346007))

(declare-fun m!2346009 () Bool)

(assert (=> b!1911991 m!2346009))

(declare-fun m!2346011 () Bool)

(assert (=> b!1912013 m!2346011))

(declare-fun m!2346013 () Bool)

(assert (=> b!1912025 m!2346013))

(declare-fun m!2346015 () Bool)

(assert (=> b!1911998 m!2346015))

(declare-fun m!2346017 () Bool)

(assert (=> b!1912012 m!2346017))

(declare-fun m!2346019 () Bool)

(assert (=> b!1912018 m!2346019))

(declare-fun m!2346021 () Bool)

(assert (=> b!1912010 m!2346021))

(declare-fun m!2346023 () Bool)

(assert (=> b!1912010 m!2346023))

(declare-fun m!2346025 () Bool)

(assert (=> b!1911996 m!2346025))

(declare-fun m!2346027 () Bool)

(assert (=> b!1912007 m!2346027))

(declare-fun m!2346029 () Bool)

(assert (=> b!1912007 m!2346029))

(declare-fun m!2346031 () Bool)

(assert (=> b!1912007 m!2346031))

(declare-fun m!2346033 () Bool)

(assert (=> b!1912007 m!2346033))

(declare-fun m!2346035 () Bool)

(assert (=> b!1912007 m!2346035))

(declare-fun m!2346037 () Bool)

(assert (=> b!1912007 m!2346037))

(declare-fun m!2346039 () Bool)

(assert (=> b!1912007 m!2346039))

(declare-fun m!2346041 () Bool)

(assert (=> b!1912007 m!2346041))

(declare-fun m!2346043 () Bool)

(assert (=> b!1912007 m!2346043))

(declare-fun m!2346045 () Bool)

(assert (=> b!1912007 m!2346045))

(declare-fun m!2346047 () Bool)

(assert (=> b!1912007 m!2346047))

(declare-fun m!2346049 () Bool)

(assert (=> b!1912007 m!2346049))

(declare-fun m!2346051 () Bool)

(assert (=> b!1912007 m!2346051))

(declare-fun m!2346053 () Bool)

(assert (=> b!1912007 m!2346053))

(declare-fun m!2346055 () Bool)

(assert (=> b!1912007 m!2346055))

(declare-fun m!2346057 () Bool)

(assert (=> b!1912007 m!2346057))

(check-sat (not b!1912026) (not b!1912012) (not b_next!54699) (not b!1911993) (not b!1912001) (not b!1912018) b_and!149009 (not b!1912007) (not b!1911995) (not b!1912008) (not b!1911999) (not b!1912010) b_and!149011 b_and!149013 (not b_next!54703) (not b!1912022) (not b!1911991) b_and!149007 (not b!1912015) (not b!1912024) (not b!1912004) (not b!1911996) (not b!1912016) (not b_next!54701) (not start!191812) (not b!1911998) (not b!1912013) (not b!1912017) b_and!149017 (not b_next!54705) (not b_next!54697) (not b!1912005) (not b!1912003) b_and!149015 (not b!1912025) (not b_next!54707) (not b!1912019) (not b!1911997) (not b!1912014) (not b!1912011))
(check-sat b_and!149009 (not b_next!54699) b_and!149011 b_and!149007 (not b_next!54701) b_and!149017 b_and!149015 (not b_next!54707) b_and!149013 (not b_next!54703) (not b_next!54705) (not b_next!54697))
