; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108206 () Bool)

(assert start!108206)

(declare-fun b!1212251 () Bool)

(declare-fun b_free!28889 () Bool)

(declare-fun b_next!29593 () Bool)

(assert (=> b!1212251 (= b_free!28889 (not b_next!29593))))

(declare-fun tp!343549 () Bool)

(declare-fun b_and!82113 () Bool)

(assert (=> b!1212251 (= tp!343549 b_and!82113)))

(declare-fun b_free!28891 () Bool)

(declare-fun b_next!29595 () Bool)

(assert (=> b!1212251 (= b_free!28891 (not b_next!29595))))

(declare-fun tp!343544 () Bool)

(declare-fun b_and!82115 () Bool)

(assert (=> b!1212251 (= tp!343544 b_and!82115)))

(declare-fun b!1212256 () Bool)

(declare-fun b_free!28893 () Bool)

(declare-fun b_next!29597 () Bool)

(assert (=> b!1212256 (= b_free!28893 (not b_next!29597))))

(declare-fun tp!343552 () Bool)

(declare-fun b_and!82117 () Bool)

(assert (=> b!1212256 (= tp!343552 b_and!82117)))

(declare-fun b_free!28895 () Bool)

(declare-fun b_next!29599 () Bool)

(assert (=> b!1212256 (= b_free!28895 (not b_next!29599))))

(declare-fun tp!343546 () Bool)

(declare-fun b_and!82119 () Bool)

(assert (=> b!1212256 (= tp!343546 b_and!82119)))

(declare-datatypes ((List!12342 0))(
  ( (Nil!12284) (Cons!12284 (h!17685 (_ BitVec 16)) (t!112774 List!12342)) )
))
(declare-datatypes ((TokenValue!2175 0))(
  ( (FloatLiteralValue!4350 (text!15670 List!12342)) (TokenValueExt!2174 (__x!8065 Int)) (Broken!10875 (value!68620 List!12342)) (Object!2232) (End!2175) (Def!2175) (Underscore!2175) (Match!2175) (Else!2175) (Error!2175) (Case!2175) (If!2175) (Extends!2175) (Abstract!2175) (Class!2175) (Val!2175) (DelimiterValue!4350 (del!2235 List!12342)) (KeywordValue!2181 (value!68621 List!12342)) (CommentValue!4350 (value!68622 List!12342)) (WhitespaceValue!4350 (value!68623 List!12342)) (IndentationValue!2175 (value!68624 List!12342)) (String!15006) (Int32!2175) (Broken!10876 (value!68625 List!12342)) (Boolean!2176) (Unit!18619) (OperatorValue!2178 (op!2235 List!12342)) (IdentifierValue!4350 (value!68626 List!12342)) (IdentifierValue!4351 (value!68627 List!12342)) (WhitespaceValue!4351 (value!68628 List!12342)) (True!4350) (False!4350) (Broken!10877 (value!68629 List!12342)) (Broken!10878 (value!68630 List!12342)) (True!4351) (RightBrace!2175) (RightBracket!2175) (Colon!2175) (Null!2175) (Comma!2175) (LeftBracket!2175) (False!4351) (LeftBrace!2175) (ImaginaryLiteralValue!2175 (text!15671 List!12342)) (StringLiteralValue!6525 (value!68631 List!12342)) (EOFValue!2175 (value!68632 List!12342)) (IdentValue!2175 (value!68633 List!12342)) (DelimiterValue!4351 (value!68634 List!12342)) (DedentValue!2175 (value!68635 List!12342)) (NewLineValue!2175 (value!68636 List!12342)) (IntegerValue!6525 (value!68637 (_ BitVec 32)) (text!15672 List!12342)) (IntegerValue!6526 (value!68638 Int) (text!15673 List!12342)) (Times!2175) (Or!2175) (Equal!2175) (Minus!2175) (Broken!10879 (value!68639 List!12342)) (And!2175) (Div!2175) (LessEqual!2175) (Mod!2175) (Concat!5552) (Not!2175) (Plus!2175) (SpaceValue!2175 (value!68640 List!12342)) (IntegerValue!6527 (value!68641 Int) (text!15674 List!12342)) (StringLiteralValue!6526 (text!15675 List!12342)) (FloatLiteralValue!4351 (text!15676 List!12342)) (BytesLiteralValue!2175 (value!68642 List!12342)) (CommentValue!4351 (value!68643 List!12342)) (StringLiteralValue!6527 (value!68644 List!12342)) (ErrorTokenValue!2175 (msg!2236 List!12342)) )
))
(declare-datatypes ((C!7072 0))(
  ( (C!7073 (val!4066 Int)) )
))
(declare-datatypes ((List!12343 0))(
  ( (Nil!12285) (Cons!12285 (h!17686 C!7072) (t!112775 List!12343)) )
))
(declare-datatypes ((IArray!8069 0))(
  ( (IArray!8070 (innerList!4092 List!12343)) )
))
(declare-datatypes ((Conc!4032 0))(
  ( (Node!4032 (left!10661 Conc!4032) (right!10991 Conc!4032) (csize!8294 Int) (cheight!4243 Int)) (Leaf!6234 (xs!6743 IArray!8069) (csize!8295 Int)) (Empty!4032) )
))
(declare-datatypes ((BalanceConc!7996 0))(
  ( (BalanceConc!7997 (c!202984 Conc!4032)) )
))
(declare-datatypes ((Regex!3377 0))(
  ( (ElementMatch!3377 (c!202985 C!7072)) (Concat!5553 (regOne!7266 Regex!3377) (regTwo!7266 Regex!3377)) (EmptyExpr!3377) (Star!3377 (reg!3706 Regex!3377)) (EmptyLang!3377) (Union!3377 (regOne!7267 Regex!3377) (regTwo!7267 Regex!3377)) )
))
(declare-datatypes ((String!15007 0))(
  ( (String!15008 (value!68645 String)) )
))
(declare-datatypes ((TokenValueInjection!4046 0))(
  ( (TokenValueInjection!4047 (toValue!3228 Int) (toChars!3087 Int)) )
))
(declare-datatypes ((Rule!4014 0))(
  ( (Rule!4015 (regex!2107 Regex!3377) (tag!2369 String!15007) (isSeparator!2107 Bool) (transformation!2107 TokenValueInjection!4046)) )
))
(declare-datatypes ((Token!3876 0))(
  ( (Token!3877 (value!68646 TokenValue!2175) (rule!3528 Rule!4014) (size!9767 Int) (originalCharacters!2661 List!12343)) )
))
(declare-datatypes ((List!12344 0))(
  ( (Nil!12286) (Cons!12286 (h!17687 Token!3876) (t!112776 List!12344)) )
))
(declare-fun tokens!556 () List!12344)

(declare-fun b!1212245 () Bool)

(declare-fun tp!343553 () Bool)

(declare-fun e!777789 () Bool)

(declare-fun e!777790 () Bool)

(declare-fun inv!21 (TokenValue!2175) Bool)

(assert (=> b!1212245 (= e!777789 (and (inv!21 (value!68646 (h!17687 tokens!556))) e!777790 tp!343553))))

(declare-fun b!1212246 () Bool)

(declare-fun res!545152 () Bool)

(declare-fun e!777793 () Bool)

(assert (=> b!1212246 (=> (not res!545152) (not e!777793))))

(declare-datatypes ((LexerInterface!1802 0))(
  ( (LexerInterfaceExt!1799 (__x!8066 Int)) (Lexer!1800) )
))
(declare-fun thiss!20528 () LexerInterface!1802)

(declare-datatypes ((List!12345 0))(
  ( (Nil!12287) (Cons!12287 (h!17688 Rule!4014) (t!112777 List!12345)) )
))
(declare-fun rules!2728 () List!12345)

(declare-fun input!2346 () List!12343)

(declare-datatypes ((tuple2!12156 0))(
  ( (tuple2!12157 (_1!6925 List!12344) (_2!6925 List!12343)) )
))
(declare-fun lexList!432 (LexerInterface!1802 List!12345 List!12343) tuple2!12156)

(assert (=> b!1212246 (= res!545152 (= (_1!6925 (lexList!432 thiss!20528 rules!2728 input!2346)) tokens!556))))

(declare-fun b!1212247 () Bool)

(declare-fun res!545155 () Bool)

(assert (=> b!1212247 (=> (not res!545155) (not e!777793))))

(declare-fun rulesInvariant!1676 (LexerInterface!1802 List!12345) Bool)

(assert (=> b!1212247 (= res!545155 (rulesInvariant!1676 thiss!20528 rules!2728))))

(declare-fun b!1212248 () Bool)

(declare-fun res!545156 () Bool)

(assert (=> b!1212248 (=> (not res!545156) (not e!777793))))

(declare-fun isEmpty!7321 (List!12345) Bool)

(assert (=> b!1212248 (= res!545156 (not (isEmpty!7321 rules!2728)))))

(declare-fun b!1212249 () Bool)

(declare-fun e!777795 () Bool)

(declare-fun e!777792 () Bool)

(declare-fun tp!343545 () Bool)

(assert (=> b!1212249 (= e!777795 (and e!777792 tp!343545))))

(declare-fun b!1212250 () Bool)

(declare-fun e!777794 () Bool)

(declare-fun tp!343550 () Bool)

(declare-fun inv!16471 (String!15007) Bool)

(declare-fun inv!16474 (TokenValueInjection!4046) Bool)

(assert (=> b!1212250 (= e!777792 (and tp!343550 (inv!16471 (tag!2369 (h!17688 rules!2728))) (inv!16474 (transformation!2107 (h!17688 rules!2728))) e!777794))))

(declare-fun res!545154 () Bool)

(assert (=> start!108206 (=> (not res!545154) (not e!777793))))

(get-info :version)

(assert (=> start!108206 (= res!545154 ((_ is Lexer!1800) thiss!20528))))

(assert (=> start!108206 e!777793))

(assert (=> start!108206 true))

(assert (=> start!108206 e!777795))

(declare-fun e!777786 () Bool)

(assert (=> start!108206 e!777786))

(declare-fun e!777785 () Bool)

(assert (=> start!108206 e!777785))

(assert (=> b!1212251 (= e!777794 (and tp!343549 tp!343544))))

(declare-fun tp!343547 () Bool)

(declare-fun e!777796 () Bool)

(declare-fun b!1212252 () Bool)

(assert (=> b!1212252 (= e!777790 (and tp!343547 (inv!16471 (tag!2369 (rule!3528 (h!17687 tokens!556)))) (inv!16474 (transformation!2107 (rule!3528 (h!17687 tokens!556)))) e!777796))))

(declare-fun b!1212253 () Bool)

(declare-fun tp_is_empty!6275 () Bool)

(declare-fun tp!343548 () Bool)

(assert (=> b!1212253 (= e!777786 (and tp_is_empty!6275 tp!343548))))

(declare-fun b!1212254 () Bool)

(declare-fun tp!343551 () Bool)

(declare-fun inv!16475 (Token!3876) Bool)

(assert (=> b!1212254 (= e!777785 (and (inv!16475 (h!17687 tokens!556)) e!777789 tp!343551))))

(declare-fun b!1212255 () Bool)

(assert (=> b!1212255 (= e!777793 false)))

(declare-datatypes ((tuple2!12158 0))(
  ( (tuple2!12159 (_1!6926 Token!3876) (_2!6926 List!12343)) )
))
(declare-datatypes ((Option!2469 0))(
  ( (None!2468) (Some!2468 (v!20595 tuple2!12158)) )
))
(declare-fun lt!414705 () Option!2469)

(declare-fun maxPrefix!924 (LexerInterface!1802 List!12345 List!12343) Option!2469)

(assert (=> b!1212255 (= lt!414705 (maxPrefix!924 thiss!20528 rules!2728 input!2346))))

(assert (=> b!1212256 (= e!777796 (and tp!343552 tp!343546))))

(declare-fun b!1212257 () Bool)

(declare-fun res!545153 () Bool)

(assert (=> b!1212257 (=> (not res!545153) (not e!777793))))

(assert (=> b!1212257 (= res!545153 (not ((_ is Nil!12286) tokens!556)))))

(assert (= (and start!108206 res!545154) b!1212248))

(assert (= (and b!1212248 res!545156) b!1212247))

(assert (= (and b!1212247 res!545155) b!1212246))

(assert (= (and b!1212246 res!545152) b!1212257))

(assert (= (and b!1212257 res!545153) b!1212255))

(assert (= b!1212250 b!1212251))

(assert (= b!1212249 b!1212250))

(assert (= (and start!108206 ((_ is Cons!12287) rules!2728)) b!1212249))

(assert (= (and start!108206 ((_ is Cons!12285) input!2346)) b!1212253))

(assert (= b!1212252 b!1212256))

(assert (= b!1212245 b!1212252))

(assert (= b!1212254 b!1212245))

(assert (= (and start!108206 ((_ is Cons!12286) tokens!556)) b!1212254))

(declare-fun m!1387595 () Bool)

(assert (=> b!1212250 m!1387595))

(declare-fun m!1387597 () Bool)

(assert (=> b!1212250 m!1387597))

(declare-fun m!1387599 () Bool)

(assert (=> b!1212254 m!1387599))

(declare-fun m!1387601 () Bool)

(assert (=> b!1212248 m!1387601))

(declare-fun m!1387603 () Bool)

(assert (=> b!1212247 m!1387603))

(declare-fun m!1387605 () Bool)

(assert (=> b!1212246 m!1387605))

(declare-fun m!1387607 () Bool)

(assert (=> b!1212255 m!1387607))

(declare-fun m!1387609 () Bool)

(assert (=> b!1212252 m!1387609))

(declare-fun m!1387611 () Bool)

(assert (=> b!1212252 m!1387611))

(declare-fun m!1387613 () Bool)

(assert (=> b!1212245 m!1387613))

(check-sat (not b!1212248) (not b_next!29597) b_and!82119 (not b!1212246) (not b!1212247) (not b!1212254) b_and!82113 (not b!1212252) tp_is_empty!6275 (not b!1212249) (not b_next!29593) (not b_next!29599) (not b!1212245) (not b!1212250) (not b_next!29595) b_and!82115 (not b!1212255) (not b!1212253) b_and!82117)
(check-sat (not b_next!29597) b_and!82119 b_and!82113 b_and!82115 b_and!82117 (not b_next!29593) (not b_next!29599) (not b_next!29595))
