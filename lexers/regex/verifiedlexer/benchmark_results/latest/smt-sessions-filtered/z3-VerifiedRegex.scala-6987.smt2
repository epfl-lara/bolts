; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!371052 () Bool)

(assert start!371052)

(declare-fun b!3948035 () Bool)

(declare-fun b_free!108293 () Bool)

(declare-fun b_next!108997 () Bool)

(assert (=> b!3948035 (= b_free!108293 (not b_next!108997))))

(declare-fun tp!1202243 () Bool)

(declare-fun b_and!302219 () Bool)

(assert (=> b!3948035 (= tp!1202243 b_and!302219)))

(declare-fun b_free!108295 () Bool)

(declare-fun b_next!108999 () Bool)

(assert (=> b!3948035 (= b_free!108295 (not b_next!108999))))

(declare-fun tp!1202244 () Bool)

(declare-fun b_and!302221 () Bool)

(assert (=> b!3948035 (= tp!1202244 b_and!302221)))

(declare-fun b!3948037 () Bool)

(declare-fun b_free!108297 () Bool)

(declare-fun b_next!109001 () Bool)

(assert (=> b!3948037 (= b_free!108297 (not b_next!109001))))

(declare-fun tp!1202248 () Bool)

(declare-fun b_and!302223 () Bool)

(assert (=> b!3948037 (= tp!1202248 b_and!302223)))

(declare-fun b_free!108299 () Bool)

(declare-fun b_next!109003 () Bool)

(assert (=> b!3948037 (= b_free!108299 (not b_next!109003))))

(declare-fun tp!1202236 () Bool)

(declare-fun b_and!302225 () Bool)

(assert (=> b!3948037 (= tp!1202236 b_and!302225)))

(declare-fun b!3948049 () Bool)

(declare-fun b_free!108301 () Bool)

(declare-fun b_next!109005 () Bool)

(assert (=> b!3948049 (= b_free!108301 (not b_next!109005))))

(declare-fun tp!1202241 () Bool)

(declare-fun b_and!302227 () Bool)

(assert (=> b!3948049 (= tp!1202241 b_and!302227)))

(declare-fun b_free!108303 () Bool)

(declare-fun b_next!109007 () Bool)

(assert (=> b!3948049 (= b_free!108303 (not b_next!109007))))

(declare-fun tp!1202252 () Bool)

(declare-fun b_and!302229 () Bool)

(assert (=> b!3948049 (= tp!1202252 b_and!302229)))

(declare-fun e!2443205 () Bool)

(declare-fun e!2443216 () Bool)

(declare-datatypes ((C!23120 0))(
  ( (C!23121 (val!13654 Int)) )
))
(declare-datatypes ((List!42073 0))(
  ( (Nil!41949) (Cons!41949 (h!47369 C!23120) (t!328122 List!42073)) )
))
(declare-datatypes ((IArray!25551 0))(
  ( (IArray!25552 (innerList!12833 List!42073)) )
))
(declare-datatypes ((Conc!12773 0))(
  ( (Node!12773 (left!31932 Conc!12773) (right!32262 Conc!12773) (csize!25776 Int) (cheight!12984 Int)) (Leaf!19761 (xs!16079 IArray!25551) (csize!25777 Int)) (Empty!12773) )
))
(declare-datatypes ((BalanceConc!25140 0))(
  ( (BalanceConc!25141 (c!685682 Conc!12773)) )
))
(declare-datatypes ((List!42074 0))(
  ( (Nil!41950) (Cons!41950 (h!47370 (_ BitVec 16)) (t!328123 List!42074)) )
))
(declare-datatypes ((TokenValue!6792 0))(
  ( (FloatLiteralValue!13584 (text!47989 List!42074)) (TokenValueExt!6791 (__x!25801 Int)) (Broken!33960 (value!207625 List!42074)) (Object!6915) (End!6792) (Def!6792) (Underscore!6792) (Match!6792) (Else!6792) (Error!6792) (Case!6792) (If!6792) (Extends!6792) (Abstract!6792) (Class!6792) (Val!6792) (DelimiterValue!13584 (del!6852 List!42074)) (KeywordValue!6798 (value!207626 List!42074)) (CommentValue!13584 (value!207627 List!42074)) (WhitespaceValue!13584 (value!207628 List!42074)) (IndentationValue!6792 (value!207629 List!42074)) (String!47677) (Int32!6792) (Broken!33961 (value!207630 List!42074)) (Boolean!6793) (Unit!60477) (OperatorValue!6795 (op!6852 List!42074)) (IdentifierValue!13584 (value!207631 List!42074)) (IdentifierValue!13585 (value!207632 List!42074)) (WhitespaceValue!13585 (value!207633 List!42074)) (True!13584) (False!13584) (Broken!33962 (value!207634 List!42074)) (Broken!33963 (value!207635 List!42074)) (True!13585) (RightBrace!6792) (RightBracket!6792) (Colon!6792) (Null!6792) (Comma!6792) (LeftBracket!6792) (False!13585) (LeftBrace!6792) (ImaginaryLiteralValue!6792 (text!47990 List!42074)) (StringLiteralValue!20376 (value!207636 List!42074)) (EOFValue!6792 (value!207637 List!42074)) (IdentValue!6792 (value!207638 List!42074)) (DelimiterValue!13585 (value!207639 List!42074)) (DedentValue!6792 (value!207640 List!42074)) (NewLineValue!6792 (value!207641 List!42074)) (IntegerValue!20376 (value!207642 (_ BitVec 32)) (text!47991 List!42074)) (IntegerValue!20377 (value!207643 Int) (text!47992 List!42074)) (Times!6792) (Or!6792) (Equal!6792) (Minus!6792) (Broken!33964 (value!207644 List!42074)) (And!6792) (Div!6792) (LessEqual!6792) (Mod!6792) (Concat!18259) (Not!6792) (Plus!6792) (SpaceValue!6792 (value!207645 List!42074)) (IntegerValue!20378 (value!207646 Int) (text!47993 List!42074)) (StringLiteralValue!20377 (text!47994 List!42074)) (FloatLiteralValue!13585 (text!47995 List!42074)) (BytesLiteralValue!6792 (value!207647 List!42074)) (CommentValue!13585 (value!207648 List!42074)) (StringLiteralValue!20378 (value!207649 List!42074)) (ErrorTokenValue!6792 (msg!6853 List!42074)) )
))
(declare-datatypes ((String!47678 0))(
  ( (String!47679 (value!207650 String)) )
))
(declare-datatypes ((Regex!11467 0))(
  ( (ElementMatch!11467 (c!685683 C!23120)) (Concat!18260 (regOne!23446 Regex!11467) (regTwo!23446 Regex!11467)) (EmptyExpr!11467) (Star!11467 (reg!11796 Regex!11467)) (EmptyLang!11467) (Union!11467 (regOne!23447 Regex!11467) (regTwo!23447 Regex!11467)) )
))
(declare-datatypes ((TokenValueInjection!13012 0))(
  ( (TokenValueInjection!13013 (toValue!9038 Int) (toChars!8897 Int)) )
))
(declare-datatypes ((Rule!12924 0))(
  ( (Rule!12925 (regex!6562 Regex!11467) (tag!7422 String!47678) (isSeparator!6562 Bool) (transformation!6562 TokenValueInjection!13012)) )
))
(declare-datatypes ((List!42075 0))(
  ( (Nil!41951) (Cons!41951 (h!47371 Rule!12924) (t!328124 List!42075)) )
))
(declare-fun rules!2768 () List!42075)

(declare-fun tp!1202237 () Bool)

(declare-fun b!3948031 () Bool)

(declare-fun inv!56174 (String!47678) Bool)

(declare-fun inv!56177 (TokenValueInjection!13012) Bool)

(assert (=> b!3948031 (= e!2443205 (and tp!1202237 (inv!56174 (tag!7422 (h!47371 rules!2768))) (inv!56177 (transformation!6562 (h!47371 rules!2768))) e!2443216))))

(declare-fun e!2443218 () Bool)

(declare-fun e!2443223 () Bool)

(declare-fun b!3948032 () Bool)

(declare-datatypes ((Token!12262 0))(
  ( (Token!12263 (value!207651 TokenValue!6792) (rule!9528 Rule!12924) (size!31448 Int) (originalCharacters!7162 List!42073)) )
))
(declare-datatypes ((List!42076 0))(
  ( (Nil!41952) (Cons!41952 (h!47372 Token!12262) (t!328125 List!42076)) )
))
(declare-fun suffixTokens!72 () List!42076)

(declare-fun tp!1202245 () Bool)

(assert (=> b!3948032 (= e!2443223 (and tp!1202245 (inv!56174 (tag!7422 (rule!9528 (h!47372 suffixTokens!72)))) (inv!56177 (transformation!6562 (rule!9528 (h!47372 suffixTokens!72)))) e!2443218))))

(declare-fun tp!1202250 () Bool)

(declare-fun b!3948033 () Bool)

(declare-fun e!2443215 () Bool)

(declare-fun inv!21 (TokenValue!6792) Bool)

(assert (=> b!3948033 (= e!2443215 (and (inv!21 (value!207651 (h!47372 suffixTokens!72))) e!2443223 tp!1202250))))

(declare-fun e!2443220 () Bool)

(declare-fun tp!1202251 () Bool)

(declare-fun prefixTokens!80 () List!42076)

(declare-fun b!3948034 () Bool)

(declare-fun e!2443213 () Bool)

(assert (=> b!3948034 (= e!2443220 (and tp!1202251 (inv!56174 (tag!7422 (rule!9528 (h!47372 prefixTokens!80)))) (inv!56177 (transformation!6562 (rule!9528 (h!47372 prefixTokens!80)))) e!2443213))))

(assert (=> b!3948035 (= e!2443218 (and tp!1202243 tp!1202244))))

(assert (=> b!3948037 (= e!2443213 (and tp!1202248 tp!1202236))))

(declare-fun b!3948038 () Bool)

(declare-fun res!1597459 () Bool)

(declare-fun e!2443203 () Bool)

(assert (=> b!3948038 (=> (not res!1597459) (not e!2443203))))

(declare-fun prefix!426 () List!42073)

(declare-fun isEmpty!25044 (List!42073) Bool)

(assert (=> b!3948038 (= res!1597459 (not (isEmpty!25044 prefix!426)))))

(declare-fun b!3948039 () Bool)

(declare-fun e!2443222 () Bool)

(declare-fun e!2443210 () Bool)

(assert (=> b!3948039 (= e!2443222 e!2443210)))

(declare-fun res!1597456 () Bool)

(assert (=> b!3948039 (=> (not res!1597456) (not e!2443210))))

(declare-datatypes ((tuple2!41238 0))(
  ( (tuple2!41239 (_1!23753 Token!12262) (_2!23753 List!42073)) )
))
(declare-datatypes ((Option!8982 0))(
  ( (None!8981) (Some!8981 (v!39321 tuple2!41238)) )
))
(declare-fun lt!1380120 () Option!8982)

(get-info :version)

(assert (=> b!3948039 (= res!1597456 ((_ is Some!8981) lt!1380120))))

(declare-datatypes ((LexerInterface!6151 0))(
  ( (LexerInterfaceExt!6148 (__x!25802 Int)) (Lexer!6149) )
))
(declare-fun thiss!20629 () LexerInterface!6151)

(declare-fun lt!1380115 () List!42073)

(declare-fun maxPrefix!3455 (LexerInterface!6151 List!42075 List!42073) Option!8982)

(assert (=> b!3948039 (= lt!1380120 (maxPrefix!3455 thiss!20629 rules!2768 lt!1380115))))

(declare-fun b!3948040 () Bool)

(declare-fun lt!1380121 () List!42073)

(declare-fun size!31449 (List!42073) Int)

(assert (=> b!3948040 (= e!2443210 (not (= (size!31448 (_1!23753 (v!39321 lt!1380120))) (size!31449 lt!1380121))))))

(declare-fun e!2443217 () Bool)

(assert (=> b!3948040 e!2443217))

(declare-fun res!1597460 () Bool)

(assert (=> b!3948040 (=> (not res!1597460) (not e!2443217))))

(declare-fun lt!1380114 () List!42073)

(assert (=> b!3948040 (= res!1597460 (= (_2!23753 (v!39321 lt!1380120)) lt!1380114))))

(declare-datatypes ((Unit!60478 0))(
  ( (Unit!60479) )
))
(declare-fun lt!1380117 () Unit!60478)

(declare-fun lemmaSamePrefixThenSameSuffix!1860 (List!42073 List!42073 List!42073 List!42073 List!42073) Unit!60478)

(assert (=> b!3948040 (= lt!1380117 (lemmaSamePrefixThenSameSuffix!1860 lt!1380121 (_2!23753 (v!39321 lt!1380120)) lt!1380121 lt!1380114 lt!1380115))))

(declare-fun getSuffix!2102 (List!42073 List!42073) List!42073)

(assert (=> b!3948040 (= lt!1380114 (getSuffix!2102 lt!1380115 lt!1380121))))

(declare-fun isPrefix!3651 (List!42073 List!42073) Bool)

(declare-fun ++!10881 (List!42073 List!42073) List!42073)

(assert (=> b!3948040 (isPrefix!3651 lt!1380121 (++!10881 lt!1380121 (_2!23753 (v!39321 lt!1380120))))))

(declare-fun lt!1380118 () Unit!60478)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2510 (List!42073 List!42073) Unit!60478)

(assert (=> b!3948040 (= lt!1380118 (lemmaConcatTwoListThenFirstIsPrefix!2510 lt!1380121 (_2!23753 (v!39321 lt!1380120))))))

(declare-fun list!15582 (BalanceConc!25140) List!42073)

(declare-fun charsOf!4380 (Token!12262) BalanceConc!25140)

(assert (=> b!3948040 (= lt!1380121 (list!15582 (charsOf!4380 (_1!23753 (v!39321 lt!1380120)))))))

(declare-fun ruleValid!2504 (LexerInterface!6151 Rule!12924) Bool)

(assert (=> b!3948040 (ruleValid!2504 thiss!20629 (rule!9528 (_1!23753 (v!39321 lt!1380120))))))

(declare-fun lt!1380119 () Unit!60478)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1580 (LexerInterface!6151 Rule!12924 List!42075) Unit!60478)

(assert (=> b!3948040 (= lt!1380119 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1580 thiss!20629 (rule!9528 (_1!23753 (v!39321 lt!1380120))) rules!2768))))

(declare-fun lt!1380116 () Unit!60478)

(declare-fun lemmaCharactersSize!1215 (Token!12262) Unit!60478)

(assert (=> b!3948040 (= lt!1380116 (lemmaCharactersSize!1215 (_1!23753 (v!39321 lt!1380120))))))

(declare-fun b!3948041 () Bool)

(declare-fun res!1597462 () Bool)

(assert (=> b!3948041 (=> (not res!1597462) (not e!2443217))))

(declare-fun apply!9793 (TokenValueInjection!13012 BalanceConc!25140) TokenValue!6792)

(declare-fun seqFromList!4821 (List!42073) BalanceConc!25140)

(assert (=> b!3948041 (= res!1597462 (= (value!207651 (_1!23753 (v!39321 lt!1380120))) (apply!9793 (transformation!6562 (rule!9528 (_1!23753 (v!39321 lt!1380120)))) (seqFromList!4821 lt!1380121))))))

(declare-fun b!3948042 () Bool)

(declare-fun e!2443221 () Bool)

(declare-fun tp_is_empty!19905 () Bool)

(declare-fun tp!1202246 () Bool)

(assert (=> b!3948042 (= e!2443221 (and tp_is_empty!19905 tp!1202246))))

(declare-fun b!3948043 () Bool)

(declare-fun res!1597455 () Bool)

(assert (=> b!3948043 (=> (not res!1597455) (not e!2443203))))

(declare-fun isEmpty!25045 (List!42075) Bool)

(assert (=> b!3948043 (= res!1597455 (not (isEmpty!25045 rules!2768)))))

(declare-fun b!3948044 () Bool)

(declare-fun e!2443204 () Bool)

(declare-fun tp!1202240 () Bool)

(declare-fun inv!56178 (Token!12262) Bool)

(assert (=> b!3948044 (= e!2443204 (and (inv!56178 (h!47372 suffixTokens!72)) e!2443215 tp!1202240))))

(declare-fun b!3948045 () Bool)

(declare-fun res!1597458 () Bool)

(assert (=> b!3948045 (=> (not res!1597458) (not e!2443203))))

(declare-fun rulesInvariant!5494 (LexerInterface!6151 List!42075) Bool)

(assert (=> b!3948045 (= res!1597458 (rulesInvariant!5494 thiss!20629 rules!2768))))

(declare-fun b!3948036 () Bool)

(assert (=> b!3948036 (= e!2443203 e!2443222)))

(declare-fun res!1597463 () Bool)

(assert (=> b!3948036 (=> (not res!1597463) (not e!2443222))))

(declare-fun suffixResult!91 () List!42073)

(declare-datatypes ((tuple2!41240 0))(
  ( (tuple2!41241 (_1!23754 List!42076) (_2!23754 List!42073)) )
))
(declare-fun lexList!1919 (LexerInterface!6151 List!42075 List!42073) tuple2!41240)

(declare-fun ++!10882 (List!42076 List!42076) List!42076)

(assert (=> b!3948036 (= res!1597463 (= (lexList!1919 thiss!20629 rules!2768 lt!1380115) (tuple2!41241 (++!10882 prefixTokens!80 suffixTokens!72) suffixResult!91)))))

(declare-fun suffix!1176 () List!42073)

(assert (=> b!3948036 (= lt!1380115 (++!10881 prefix!426 suffix!1176))))

(declare-fun res!1597457 () Bool)

(assert (=> start!371052 (=> (not res!1597457) (not e!2443203))))

(assert (=> start!371052 (= res!1597457 ((_ is Lexer!6149) thiss!20629))))

(assert (=> start!371052 e!2443203))

(assert (=> start!371052 e!2443221))

(assert (=> start!371052 true))

(declare-fun e!2443207 () Bool)

(assert (=> start!371052 e!2443207))

(declare-fun e!2443206 () Bool)

(assert (=> start!371052 e!2443206))

(declare-fun e!2443212 () Bool)

(assert (=> start!371052 e!2443212))

(assert (=> start!371052 e!2443204))

(declare-fun e!2443219 () Bool)

(assert (=> start!371052 e!2443219))

(declare-fun tp!1202239 () Bool)

(declare-fun e!2443209 () Bool)

(declare-fun b!3948046 () Bool)

(assert (=> b!3948046 (= e!2443209 (and (inv!21 (value!207651 (h!47372 prefixTokens!80))) e!2443220 tp!1202239))))

(declare-fun b!3948047 () Bool)

(declare-fun tp!1202238 () Bool)

(assert (=> b!3948047 (= e!2443206 (and e!2443205 tp!1202238))))

(declare-fun b!3948048 () Bool)

(assert (=> b!3948048 (= e!2443217 (= (size!31448 (_1!23753 (v!39321 lt!1380120))) (size!31449 (originalCharacters!7162 (_1!23753 (v!39321 lt!1380120))))))))

(assert (=> b!3948049 (= e!2443216 (and tp!1202241 tp!1202252))))

(declare-fun b!3948050 () Bool)

(declare-fun tp!1202242 () Bool)

(assert (=> b!3948050 (= e!2443207 (and tp_is_empty!19905 tp!1202242))))

(declare-fun b!3948051 () Bool)

(declare-fun tp!1202249 () Bool)

(assert (=> b!3948051 (= e!2443219 (and tp_is_empty!19905 tp!1202249))))

(declare-fun b!3948052 () Bool)

(declare-fun res!1597464 () Bool)

(assert (=> b!3948052 (=> (not res!1597464) (not e!2443222))))

(assert (=> b!3948052 (= res!1597464 (= (lexList!1919 thiss!20629 rules!2768 suffix!1176) (tuple2!41241 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3948053 () Bool)

(declare-fun res!1597461 () Bool)

(assert (=> b!3948053 (=> (not res!1597461) (not e!2443203))))

(declare-fun isEmpty!25046 (List!42076) Bool)

(assert (=> b!3948053 (= res!1597461 (not (isEmpty!25046 prefixTokens!80)))))

(declare-fun tp!1202247 () Bool)

(declare-fun b!3948054 () Bool)

(assert (=> b!3948054 (= e!2443212 (and (inv!56178 (h!47372 prefixTokens!80)) e!2443209 tp!1202247))))

(assert (= (and start!371052 res!1597457) b!3948043))

(assert (= (and b!3948043 res!1597455) b!3948045))

(assert (= (and b!3948045 res!1597458) b!3948053))

(assert (= (and b!3948053 res!1597461) b!3948038))

(assert (= (and b!3948038 res!1597459) b!3948036))

(assert (= (and b!3948036 res!1597463) b!3948052))

(assert (= (and b!3948052 res!1597464) b!3948039))

(assert (= (and b!3948039 res!1597456) b!3948040))

(assert (= (and b!3948040 res!1597460) b!3948041))

(assert (= (and b!3948041 res!1597462) b!3948048))

(assert (= (and start!371052 ((_ is Cons!41949) suffixResult!91)) b!3948042))

(assert (= (and start!371052 ((_ is Cons!41949) suffix!1176)) b!3948050))

(assert (= b!3948031 b!3948049))

(assert (= b!3948047 b!3948031))

(assert (= (and start!371052 ((_ is Cons!41951) rules!2768)) b!3948047))

(assert (= b!3948034 b!3948037))

(assert (= b!3948046 b!3948034))

(assert (= b!3948054 b!3948046))

(assert (= (and start!371052 ((_ is Cons!41952) prefixTokens!80)) b!3948054))

(assert (= b!3948032 b!3948035))

(assert (= b!3948033 b!3948032))

(assert (= b!3948044 b!3948033))

(assert (= (and start!371052 ((_ is Cons!41952) suffixTokens!72)) b!3948044))

(assert (= (and start!371052 ((_ is Cons!41949) prefix!426)) b!3948051))

(declare-fun m!4516875 () Bool)

(assert (=> b!3948041 m!4516875))

(assert (=> b!3948041 m!4516875))

(declare-fun m!4516877 () Bool)

(assert (=> b!3948041 m!4516877))

(declare-fun m!4516879 () Bool)

(assert (=> b!3948031 m!4516879))

(declare-fun m!4516881 () Bool)

(assert (=> b!3948031 m!4516881))

(declare-fun m!4516883 () Bool)

(assert (=> b!3948040 m!4516883))

(declare-fun m!4516885 () Bool)

(assert (=> b!3948040 m!4516885))

(declare-fun m!4516887 () Bool)

(assert (=> b!3948040 m!4516887))

(declare-fun m!4516889 () Bool)

(assert (=> b!3948040 m!4516889))

(declare-fun m!4516891 () Bool)

(assert (=> b!3948040 m!4516891))

(assert (=> b!3948040 m!4516889))

(declare-fun m!4516893 () Bool)

(assert (=> b!3948040 m!4516893))

(declare-fun m!4516895 () Bool)

(assert (=> b!3948040 m!4516895))

(declare-fun m!4516897 () Bool)

(assert (=> b!3948040 m!4516897))

(declare-fun m!4516899 () Bool)

(assert (=> b!3948040 m!4516899))

(declare-fun m!4516901 () Bool)

(assert (=> b!3948040 m!4516901))

(assert (=> b!3948040 m!4516895))

(declare-fun m!4516903 () Bool)

(assert (=> b!3948040 m!4516903))

(declare-fun m!4516905 () Bool)

(assert (=> b!3948033 m!4516905))

(declare-fun m!4516907 () Bool)

(assert (=> b!3948053 m!4516907))

(declare-fun m!4516909 () Bool)

(assert (=> b!3948045 m!4516909))

(declare-fun m!4516911 () Bool)

(assert (=> b!3948034 m!4516911))

(declare-fun m!4516913 () Bool)

(assert (=> b!3948034 m!4516913))

(declare-fun m!4516915 () Bool)

(assert (=> b!3948036 m!4516915))

(declare-fun m!4516917 () Bool)

(assert (=> b!3948036 m!4516917))

(declare-fun m!4516919 () Bool)

(assert (=> b!3948036 m!4516919))

(declare-fun m!4516921 () Bool)

(assert (=> b!3948039 m!4516921))

(declare-fun m!4516923 () Bool)

(assert (=> b!3948046 m!4516923))

(declare-fun m!4516925 () Bool)

(assert (=> b!3948052 m!4516925))

(declare-fun m!4516927 () Bool)

(assert (=> b!3948048 m!4516927))

(declare-fun m!4516929 () Bool)

(assert (=> b!3948054 m!4516929))

(declare-fun m!4516931 () Bool)

(assert (=> b!3948044 m!4516931))

(declare-fun m!4516933 () Bool)

(assert (=> b!3948032 m!4516933))

(declare-fun m!4516935 () Bool)

(assert (=> b!3948032 m!4516935))

(declare-fun m!4516937 () Bool)

(assert (=> b!3948038 m!4516937))

(declare-fun m!4516939 () Bool)

(assert (=> b!3948043 m!4516939))

(check-sat (not b!3948033) (not b!3948031) (not b_next!109001) (not b!3948044) (not b!3948041) b_and!302229 (not b!3948054) (not b!3948050) b_and!302225 b_and!302227 (not b_next!109005) (not b!3948039) (not b!3948036) (not b!3948048) (not b!3948034) (not b!3948042) (not b!3948032) b_and!302219 (not b!3948051) (not b_next!108997) (not b!3948046) b_and!302221 (not b!3948052) (not b_next!109007) (not b_next!108999) tp_is_empty!19905 (not b!3948047) (not b!3948053) b_and!302223 (not b!3948045) (not b!3948038) (not b_next!109003) (not b!3948040) (not b!3948043))
(check-sat b_and!302225 b_and!302219 (not b_next!108997) b_and!302221 (not b_next!109007) (not b_next!108999) (not b_next!109001) b_and!302223 (not b_next!109003) b_and!302229 b_and!302227 (not b_next!109005))
(get-model)

(declare-fun b!3948065 () Bool)

(declare-fun e!2443232 () Bool)

(declare-fun inv!15 (TokenValue!6792) Bool)

(assert (=> b!3948065 (= e!2443232 (inv!15 (value!207651 (h!47372 prefixTokens!80))))))

(declare-fun d!1171100 () Bool)

(declare-fun c!685689 () Bool)

(assert (=> d!1171100 (= c!685689 ((_ is IntegerValue!20376) (value!207651 (h!47372 prefixTokens!80))))))

(declare-fun e!2443233 () Bool)

(assert (=> d!1171100 (= (inv!21 (value!207651 (h!47372 prefixTokens!80))) e!2443233)))

(declare-fun b!3948066 () Bool)

(declare-fun inv!16 (TokenValue!6792) Bool)

(assert (=> b!3948066 (= e!2443233 (inv!16 (value!207651 (h!47372 prefixTokens!80))))))

(declare-fun b!3948067 () Bool)

(declare-fun res!1597469 () Bool)

(assert (=> b!3948067 (=> res!1597469 e!2443232)))

(assert (=> b!3948067 (= res!1597469 (not ((_ is IntegerValue!20378) (value!207651 (h!47372 prefixTokens!80)))))))

(declare-fun e!2443231 () Bool)

(assert (=> b!3948067 (= e!2443231 e!2443232)))

(declare-fun b!3948068 () Bool)

(declare-fun inv!17 (TokenValue!6792) Bool)

(assert (=> b!3948068 (= e!2443231 (inv!17 (value!207651 (h!47372 prefixTokens!80))))))

(declare-fun b!3948069 () Bool)

(assert (=> b!3948069 (= e!2443233 e!2443231)))

(declare-fun c!685688 () Bool)

(assert (=> b!3948069 (= c!685688 ((_ is IntegerValue!20377) (value!207651 (h!47372 prefixTokens!80))))))

(assert (= (and d!1171100 c!685689) b!3948066))

(assert (= (and d!1171100 (not c!685689)) b!3948069))

(assert (= (and b!3948069 c!685688) b!3948068))

(assert (= (and b!3948069 (not c!685688)) b!3948067))

(assert (= (and b!3948067 (not res!1597469)) b!3948065))

(declare-fun m!4516941 () Bool)

(assert (=> b!3948065 m!4516941))

(declare-fun m!4516943 () Bool)

(assert (=> b!3948066 m!4516943))

(declare-fun m!4516945 () Bool)

(assert (=> b!3948068 m!4516945))

(assert (=> b!3948046 d!1171100))

(declare-fun d!1171102 () Bool)

(declare-fun e!2443278 () Bool)

(assert (=> d!1171102 e!2443278))

(declare-fun c!685711 () Bool)

(declare-fun lt!1380140 () tuple2!41240)

(declare-fun size!31451 (List!42076) Int)

(assert (=> d!1171102 (= c!685711 (> (size!31451 (_1!23754 lt!1380140)) 0))))

(declare-fun e!2443279 () tuple2!41240)

(assert (=> d!1171102 (= lt!1380140 e!2443279)))

(declare-fun c!685710 () Bool)

(declare-fun lt!1380141 () Option!8982)

(assert (=> d!1171102 (= c!685710 ((_ is Some!8981) lt!1380141))))

(assert (=> d!1171102 (= lt!1380141 (maxPrefix!3455 thiss!20629 rules!2768 lt!1380115))))

(assert (=> d!1171102 (= (lexList!1919 thiss!20629 rules!2768 lt!1380115) lt!1380140)))

(declare-fun b!3948139 () Bool)

(declare-fun lt!1380139 () tuple2!41240)

(assert (=> b!3948139 (= e!2443279 (tuple2!41241 (Cons!41952 (_1!23753 (v!39321 lt!1380141)) (_1!23754 lt!1380139)) (_2!23754 lt!1380139)))))

(assert (=> b!3948139 (= lt!1380139 (lexList!1919 thiss!20629 rules!2768 (_2!23753 (v!39321 lt!1380141))))))

(declare-fun b!3948140 () Bool)

(assert (=> b!3948140 (= e!2443278 (= (_2!23754 lt!1380140) lt!1380115))))

(declare-fun b!3948141 () Bool)

(assert (=> b!3948141 (= e!2443279 (tuple2!41241 Nil!41952 lt!1380115))))

(declare-fun b!3948142 () Bool)

(declare-fun e!2443277 () Bool)

(assert (=> b!3948142 (= e!2443277 (not (isEmpty!25046 (_1!23754 lt!1380140))))))

(declare-fun b!3948143 () Bool)

(assert (=> b!3948143 (= e!2443278 e!2443277)))

(declare-fun res!1597494 () Bool)

(assert (=> b!3948143 (= res!1597494 (< (size!31449 (_2!23754 lt!1380140)) (size!31449 lt!1380115)))))

(assert (=> b!3948143 (=> (not res!1597494) (not e!2443277))))

(assert (= (and d!1171102 c!685710) b!3948139))

(assert (= (and d!1171102 (not c!685710)) b!3948141))

(assert (= (and d!1171102 c!685711) b!3948143))

(assert (= (and d!1171102 (not c!685711)) b!3948140))

(assert (= (and b!3948143 res!1597494) b!3948142))

(declare-fun m!4517005 () Bool)

(assert (=> d!1171102 m!4517005))

(assert (=> d!1171102 m!4516921))

(declare-fun m!4517007 () Bool)

(assert (=> b!3948139 m!4517007))

(declare-fun m!4517009 () Bool)

(assert (=> b!3948142 m!4517009))

(declare-fun m!4517011 () Bool)

(assert (=> b!3948143 m!4517011))

(declare-fun m!4517013 () Bool)

(assert (=> b!3948143 m!4517013))

(assert (=> b!3948036 d!1171102))

(declare-fun b!3948168 () Bool)

(declare-fun e!2443293 () List!42076)

(assert (=> b!3948168 (= e!2443293 suffixTokens!72)))

(declare-fun b!3948170 () Bool)

(declare-fun res!1597508 () Bool)

(declare-fun e!2443292 () Bool)

(assert (=> b!3948170 (=> (not res!1597508) (not e!2443292))))

(declare-fun lt!1380148 () List!42076)

(assert (=> b!3948170 (= res!1597508 (= (size!31451 lt!1380148) (+ (size!31451 prefixTokens!80) (size!31451 suffixTokens!72))))))

(declare-fun b!3948169 () Bool)

(assert (=> b!3948169 (= e!2443293 (Cons!41952 (h!47372 prefixTokens!80) (++!10882 (t!328125 prefixTokens!80) suffixTokens!72)))))

(declare-fun d!1171122 () Bool)

(assert (=> d!1171122 e!2443292))

(declare-fun res!1597507 () Bool)

(assert (=> d!1171122 (=> (not res!1597507) (not e!2443292))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6356 (List!42076) (InoxSet Token!12262))

(assert (=> d!1171122 (= res!1597507 (= (content!6356 lt!1380148) ((_ map or) (content!6356 prefixTokens!80) (content!6356 suffixTokens!72))))))

(assert (=> d!1171122 (= lt!1380148 e!2443293)))

(declare-fun c!685718 () Bool)

(assert (=> d!1171122 (= c!685718 ((_ is Nil!41952) prefixTokens!80))))

(assert (=> d!1171122 (= (++!10882 prefixTokens!80 suffixTokens!72) lt!1380148)))

(declare-fun b!3948171 () Bool)

(assert (=> b!3948171 (= e!2443292 (or (not (= suffixTokens!72 Nil!41952)) (= lt!1380148 prefixTokens!80)))))

(assert (= (and d!1171122 c!685718) b!3948168))

(assert (= (and d!1171122 (not c!685718)) b!3948169))

(assert (= (and d!1171122 res!1597507) b!3948170))

(assert (= (and b!3948170 res!1597508) b!3948171))

(declare-fun m!4517029 () Bool)

(assert (=> b!3948170 m!4517029))

(declare-fun m!4517031 () Bool)

(assert (=> b!3948170 m!4517031))

(declare-fun m!4517033 () Bool)

(assert (=> b!3948170 m!4517033))

(declare-fun m!4517035 () Bool)

(assert (=> b!3948169 m!4517035))

(declare-fun m!4517037 () Bool)

(assert (=> d!1171122 m!4517037))

(declare-fun m!4517039 () Bool)

(assert (=> d!1171122 m!4517039))

(declare-fun m!4517041 () Bool)

(assert (=> d!1171122 m!4517041))

(assert (=> b!3948036 d!1171122))

(declare-fun b!3948182 () Bool)

(declare-fun res!1597514 () Bool)

(declare-fun e!2443298 () Bool)

(assert (=> b!3948182 (=> (not res!1597514) (not e!2443298))))

(declare-fun lt!1380151 () List!42073)

(assert (=> b!3948182 (= res!1597514 (= (size!31449 lt!1380151) (+ (size!31449 prefix!426) (size!31449 suffix!1176))))))

(declare-fun b!3948181 () Bool)

(declare-fun e!2443299 () List!42073)

(assert (=> b!3948181 (= e!2443299 (Cons!41949 (h!47369 prefix!426) (++!10881 (t!328122 prefix!426) suffix!1176)))))

(declare-fun b!3948183 () Bool)

(assert (=> b!3948183 (= e!2443298 (or (not (= suffix!1176 Nil!41949)) (= lt!1380151 prefix!426)))))

(declare-fun d!1171126 () Bool)

(assert (=> d!1171126 e!2443298))

(declare-fun res!1597513 () Bool)

(assert (=> d!1171126 (=> (not res!1597513) (not e!2443298))))

(declare-fun content!6357 (List!42073) (InoxSet C!23120))

(assert (=> d!1171126 (= res!1597513 (= (content!6357 lt!1380151) ((_ map or) (content!6357 prefix!426) (content!6357 suffix!1176))))))

(assert (=> d!1171126 (= lt!1380151 e!2443299)))

(declare-fun c!685721 () Bool)

(assert (=> d!1171126 (= c!685721 ((_ is Nil!41949) prefix!426))))

(assert (=> d!1171126 (= (++!10881 prefix!426 suffix!1176) lt!1380151)))

(declare-fun b!3948180 () Bool)

(assert (=> b!3948180 (= e!2443299 suffix!1176)))

(assert (= (and d!1171126 c!685721) b!3948180))

(assert (= (and d!1171126 (not c!685721)) b!3948181))

(assert (= (and d!1171126 res!1597513) b!3948182))

(assert (= (and b!3948182 res!1597514) b!3948183))

(declare-fun m!4517043 () Bool)

(assert (=> b!3948182 m!4517043))

(declare-fun m!4517045 () Bool)

(assert (=> b!3948182 m!4517045))

(declare-fun m!4517047 () Bool)

(assert (=> b!3948182 m!4517047))

(declare-fun m!4517049 () Bool)

(assert (=> b!3948181 m!4517049))

(declare-fun m!4517051 () Bool)

(assert (=> d!1171126 m!4517051))

(declare-fun m!4517053 () Bool)

(assert (=> d!1171126 m!4517053))

(declare-fun m!4517055 () Bool)

(assert (=> d!1171126 m!4517055))

(assert (=> b!3948036 d!1171126))

(declare-fun d!1171128 () Bool)

(assert (=> d!1171128 (= (isEmpty!25044 prefix!426) ((_ is Nil!41949) prefix!426))))

(assert (=> b!3948038 d!1171128))

(declare-fun d!1171130 () Bool)

(declare-fun lt!1380164 () Int)

(assert (=> d!1171130 (>= lt!1380164 0)))

(declare-fun e!2443308 () Int)

(assert (=> d!1171130 (= lt!1380164 e!2443308)))

(declare-fun c!685726 () Bool)

(assert (=> d!1171130 (= c!685726 ((_ is Nil!41949) (originalCharacters!7162 (_1!23753 (v!39321 lt!1380120)))))))

(assert (=> d!1171130 (= (size!31449 (originalCharacters!7162 (_1!23753 (v!39321 lt!1380120)))) lt!1380164)))

(declare-fun b!3948206 () Bool)

(assert (=> b!3948206 (= e!2443308 0)))

(declare-fun b!3948207 () Bool)

(assert (=> b!3948207 (= e!2443308 (+ 1 (size!31449 (t!328122 (originalCharacters!7162 (_1!23753 (v!39321 lt!1380120)))))))))

(assert (= (and d!1171130 c!685726) b!3948206))

(assert (= (and d!1171130 (not c!685726)) b!3948207))

(declare-fun m!4517057 () Bool)

(assert (=> b!3948207 m!4517057))

(assert (=> b!3948048 d!1171130))

(declare-fun b!3948345 () Bool)

(declare-fun e!2443400 () Option!8982)

(declare-fun call!285188 () Option!8982)

(assert (=> b!3948345 (= e!2443400 call!285188)))

(declare-fun b!3948346 () Bool)

(declare-fun e!2443398 () Bool)

(declare-fun e!2443399 () Bool)

(assert (=> b!3948346 (= e!2443398 e!2443399)))

(declare-fun res!1597578 () Bool)

(assert (=> b!3948346 (=> (not res!1597578) (not e!2443399))))

(declare-fun lt!1380207 () Option!8982)

(declare-fun isDefined!6975 (Option!8982) Bool)

(assert (=> b!3948346 (= res!1597578 (isDefined!6975 lt!1380207))))

(declare-fun b!3948347 () Bool)

(declare-fun res!1597580 () Bool)

(assert (=> b!3948347 (=> (not res!1597580) (not e!2443399))))

(declare-fun get!13851 (Option!8982) tuple2!41238)

(assert (=> b!3948347 (= res!1597580 (= (++!10881 (list!15582 (charsOf!4380 (_1!23753 (get!13851 lt!1380207)))) (_2!23753 (get!13851 lt!1380207))) lt!1380115))))

(declare-fun bm!285183 () Bool)

(declare-fun maxPrefixOneRule!2513 (LexerInterface!6151 Rule!12924 List!42073) Option!8982)

(assert (=> bm!285183 (= call!285188 (maxPrefixOneRule!2513 thiss!20629 (h!47371 rules!2768) lt!1380115))))

(declare-fun b!3948349 () Bool)

(declare-fun res!1597582 () Bool)

(assert (=> b!3948349 (=> (not res!1597582) (not e!2443399))))

(assert (=> b!3948349 (= res!1597582 (= (value!207651 (_1!23753 (get!13851 lt!1380207))) (apply!9793 (transformation!6562 (rule!9528 (_1!23753 (get!13851 lt!1380207)))) (seqFromList!4821 (originalCharacters!7162 (_1!23753 (get!13851 lt!1380207)))))))))

(declare-fun d!1171132 () Bool)

(assert (=> d!1171132 e!2443398))

(declare-fun res!1597579 () Bool)

(assert (=> d!1171132 (=> res!1597579 e!2443398)))

(declare-fun isEmpty!25048 (Option!8982) Bool)

(assert (=> d!1171132 (= res!1597579 (isEmpty!25048 lt!1380207))))

(assert (=> d!1171132 (= lt!1380207 e!2443400)))

(declare-fun c!685740 () Bool)

(assert (=> d!1171132 (= c!685740 (and ((_ is Cons!41951) rules!2768) ((_ is Nil!41951) (t!328124 rules!2768))))))

(declare-fun lt!1380210 () Unit!60478)

(declare-fun lt!1380206 () Unit!60478)

(assert (=> d!1171132 (= lt!1380210 lt!1380206)))

(assert (=> d!1171132 (isPrefix!3651 lt!1380115 lt!1380115)))

(declare-fun lemmaIsPrefixRefl!2306 (List!42073 List!42073) Unit!60478)

(assert (=> d!1171132 (= lt!1380206 (lemmaIsPrefixRefl!2306 lt!1380115 lt!1380115))))

(declare-fun rulesValidInductive!2376 (LexerInterface!6151 List!42075) Bool)

(assert (=> d!1171132 (rulesValidInductive!2376 thiss!20629 rules!2768)))

(assert (=> d!1171132 (= (maxPrefix!3455 thiss!20629 rules!2768 lt!1380115) lt!1380207)))

(declare-fun b!3948348 () Bool)

(declare-fun contains!8400 (List!42075 Rule!12924) Bool)

(assert (=> b!3948348 (= e!2443399 (contains!8400 rules!2768 (rule!9528 (_1!23753 (get!13851 lt!1380207)))))))

(declare-fun b!3948350 () Bool)

(declare-fun res!1597584 () Bool)

(assert (=> b!3948350 (=> (not res!1597584) (not e!2443399))))

(assert (=> b!3948350 (= res!1597584 (< (size!31449 (_2!23753 (get!13851 lt!1380207))) (size!31449 lt!1380115)))))

(declare-fun b!3948351 () Bool)

(declare-fun res!1597583 () Bool)

(assert (=> b!3948351 (=> (not res!1597583) (not e!2443399))))

(declare-fun matchR!5508 (Regex!11467 List!42073) Bool)

(assert (=> b!3948351 (= res!1597583 (matchR!5508 (regex!6562 (rule!9528 (_1!23753 (get!13851 lt!1380207)))) (list!15582 (charsOf!4380 (_1!23753 (get!13851 lt!1380207))))))))

(declare-fun b!3948352 () Bool)

(declare-fun lt!1380208 () Option!8982)

(declare-fun lt!1380209 () Option!8982)

(assert (=> b!3948352 (= e!2443400 (ite (and ((_ is None!8981) lt!1380208) ((_ is None!8981) lt!1380209)) None!8981 (ite ((_ is None!8981) lt!1380209) lt!1380208 (ite ((_ is None!8981) lt!1380208) lt!1380209 (ite (>= (size!31448 (_1!23753 (v!39321 lt!1380208))) (size!31448 (_1!23753 (v!39321 lt!1380209)))) lt!1380208 lt!1380209)))))))

(assert (=> b!3948352 (= lt!1380208 call!285188)))

(assert (=> b!3948352 (= lt!1380209 (maxPrefix!3455 thiss!20629 (t!328124 rules!2768) lt!1380115))))

(declare-fun b!3948353 () Bool)

(declare-fun res!1597581 () Bool)

(assert (=> b!3948353 (=> (not res!1597581) (not e!2443399))))

(assert (=> b!3948353 (= res!1597581 (= (list!15582 (charsOf!4380 (_1!23753 (get!13851 lt!1380207)))) (originalCharacters!7162 (_1!23753 (get!13851 lt!1380207)))))))

(assert (= (and d!1171132 c!685740) b!3948345))

(assert (= (and d!1171132 (not c!685740)) b!3948352))

(assert (= (or b!3948345 b!3948352) bm!285183))

(assert (= (and d!1171132 (not res!1597579)) b!3948346))

(assert (= (and b!3948346 res!1597578) b!3948353))

(assert (= (and b!3948353 res!1597581) b!3948350))

(assert (= (and b!3948350 res!1597584) b!3948347))

(assert (= (and b!3948347 res!1597580) b!3948349))

(assert (= (and b!3948349 res!1597582) b!3948351))

(assert (= (and b!3948351 res!1597583) b!3948348))

(declare-fun m!4517203 () Bool)

(assert (=> b!3948352 m!4517203))

(declare-fun m!4517205 () Bool)

(assert (=> bm!285183 m!4517205))

(declare-fun m!4517207 () Bool)

(assert (=> b!3948347 m!4517207))

(declare-fun m!4517209 () Bool)

(assert (=> b!3948347 m!4517209))

(assert (=> b!3948347 m!4517209))

(declare-fun m!4517211 () Bool)

(assert (=> b!3948347 m!4517211))

(assert (=> b!3948347 m!4517211))

(declare-fun m!4517213 () Bool)

(assert (=> b!3948347 m!4517213))

(assert (=> b!3948348 m!4517207))

(declare-fun m!4517215 () Bool)

(assert (=> b!3948348 m!4517215))

(declare-fun m!4517217 () Bool)

(assert (=> b!3948346 m!4517217))

(assert (=> b!3948351 m!4517207))

(assert (=> b!3948351 m!4517209))

(assert (=> b!3948351 m!4517209))

(assert (=> b!3948351 m!4517211))

(assert (=> b!3948351 m!4517211))

(declare-fun m!4517219 () Bool)

(assert (=> b!3948351 m!4517219))

(declare-fun m!4517221 () Bool)

(assert (=> d!1171132 m!4517221))

(declare-fun m!4517223 () Bool)

(assert (=> d!1171132 m!4517223))

(declare-fun m!4517225 () Bool)

(assert (=> d!1171132 m!4517225))

(declare-fun m!4517227 () Bool)

(assert (=> d!1171132 m!4517227))

(assert (=> b!3948350 m!4517207))

(declare-fun m!4517229 () Bool)

(assert (=> b!3948350 m!4517229))

(assert (=> b!3948350 m!4517013))

(assert (=> b!3948353 m!4517207))

(assert (=> b!3948353 m!4517209))

(assert (=> b!3948353 m!4517209))

(assert (=> b!3948353 m!4517211))

(assert (=> b!3948349 m!4517207))

(declare-fun m!4517231 () Bool)

(assert (=> b!3948349 m!4517231))

(assert (=> b!3948349 m!4517231))

(declare-fun m!4517233 () Bool)

(assert (=> b!3948349 m!4517233))

(assert (=> b!3948039 d!1171132))

(declare-fun d!1171180 () Bool)

(declare-fun dynLambda!17974 (Int BalanceConc!25140) TokenValue!6792)

(assert (=> d!1171180 (= (apply!9793 (transformation!6562 (rule!9528 (_1!23753 (v!39321 lt!1380120)))) (seqFromList!4821 lt!1380121)) (dynLambda!17974 (toValue!9038 (transformation!6562 (rule!9528 (_1!23753 (v!39321 lt!1380120))))) (seqFromList!4821 lt!1380121)))))

(declare-fun b_lambda!115495 () Bool)

(assert (=> (not b_lambda!115495) (not d!1171180)))

(declare-fun t!328176 () Bool)

(declare-fun tb!237365 () Bool)

(assert (=> (and b!3948035 (= (toValue!9038 (transformation!6562 (rule!9528 (h!47372 suffixTokens!72)))) (toValue!9038 (transformation!6562 (rule!9528 (_1!23753 (v!39321 lt!1380120)))))) t!328176) tb!237365))

(declare-fun result!287470 () Bool)

(assert (=> tb!237365 (= result!287470 (inv!21 (dynLambda!17974 (toValue!9038 (transformation!6562 (rule!9528 (_1!23753 (v!39321 lt!1380120))))) (seqFromList!4821 lt!1380121))))))

(declare-fun m!4517235 () Bool)

(assert (=> tb!237365 m!4517235))

(assert (=> d!1171180 t!328176))

(declare-fun b_and!302267 () Bool)

(assert (= b_and!302219 (and (=> t!328176 result!287470) b_and!302267)))

(declare-fun tb!237367 () Bool)

(declare-fun t!328178 () Bool)

(assert (=> (and b!3948037 (= (toValue!9038 (transformation!6562 (rule!9528 (h!47372 prefixTokens!80)))) (toValue!9038 (transformation!6562 (rule!9528 (_1!23753 (v!39321 lt!1380120)))))) t!328178) tb!237367))

(declare-fun result!287474 () Bool)

(assert (= result!287474 result!287470))

(assert (=> d!1171180 t!328178))

(declare-fun b_and!302269 () Bool)

(assert (= b_and!302223 (and (=> t!328178 result!287474) b_and!302269)))

(declare-fun t!328180 () Bool)

(declare-fun tb!237369 () Bool)

(assert (=> (and b!3948049 (= (toValue!9038 (transformation!6562 (h!47371 rules!2768))) (toValue!9038 (transformation!6562 (rule!9528 (_1!23753 (v!39321 lt!1380120)))))) t!328180) tb!237369))

(declare-fun result!287476 () Bool)

(assert (= result!287476 result!287470))

(assert (=> d!1171180 t!328180))

(declare-fun b_and!302271 () Bool)

(assert (= b_and!302227 (and (=> t!328180 result!287476) b_and!302271)))

(assert (=> d!1171180 m!4516875))

(declare-fun m!4517237 () Bool)

(assert (=> d!1171180 m!4517237))

(assert (=> b!3948041 d!1171180))

(declare-fun d!1171182 () Bool)

(declare-fun fromListB!2230 (List!42073) BalanceConc!25140)

(assert (=> d!1171182 (= (seqFromList!4821 lt!1380121) (fromListB!2230 lt!1380121))))

(declare-fun bs!586961 () Bool)

(assert (= bs!586961 d!1171182))

(declare-fun m!4517239 () Bool)

(assert (=> bs!586961 m!4517239))

(assert (=> b!3948041 d!1171182))

(declare-fun d!1171184 () Bool)

(declare-fun list!15584 (Conc!12773) List!42073)

(assert (=> d!1171184 (= (list!15582 (charsOf!4380 (_1!23753 (v!39321 lt!1380120)))) (list!15584 (c!685682 (charsOf!4380 (_1!23753 (v!39321 lt!1380120))))))))

(declare-fun bs!586962 () Bool)

(assert (= bs!586962 d!1171184))

(declare-fun m!4517241 () Bool)

(assert (=> bs!586962 m!4517241))

(assert (=> b!3948040 d!1171184))

(declare-fun d!1171186 () Bool)

(declare-fun lt!1380213 () List!42073)

(assert (=> d!1171186 (= (++!10881 lt!1380121 lt!1380213) lt!1380115)))

(declare-fun e!2443406 () List!42073)

(assert (=> d!1171186 (= lt!1380213 e!2443406)))

(declare-fun c!685743 () Bool)

(assert (=> d!1171186 (= c!685743 ((_ is Cons!41949) lt!1380121))))

(assert (=> d!1171186 (>= (size!31449 lt!1380115) (size!31449 lt!1380121))))

(assert (=> d!1171186 (= (getSuffix!2102 lt!1380115 lt!1380121) lt!1380213)))

(declare-fun b!3948360 () Bool)

(declare-fun tail!6113 (List!42073) List!42073)

(assert (=> b!3948360 (= e!2443406 (getSuffix!2102 (tail!6113 lt!1380115) (t!328122 lt!1380121)))))

(declare-fun b!3948361 () Bool)

(assert (=> b!3948361 (= e!2443406 lt!1380115)))

(assert (= (and d!1171186 c!685743) b!3948360))

(assert (= (and d!1171186 (not c!685743)) b!3948361))

(declare-fun m!4517243 () Bool)

(assert (=> d!1171186 m!4517243))

(assert (=> d!1171186 m!4517013))

(assert (=> d!1171186 m!4516893))

(declare-fun m!4517245 () Bool)

(assert (=> b!3948360 m!4517245))

(assert (=> b!3948360 m!4517245))

(declare-fun m!4517247 () Bool)

(assert (=> b!3948360 m!4517247))

(assert (=> b!3948040 d!1171186))

(declare-fun d!1171188 () Bool)

(assert (=> d!1171188 (isPrefix!3651 lt!1380121 (++!10881 lt!1380121 (_2!23753 (v!39321 lt!1380120))))))

(declare-fun lt!1380216 () Unit!60478)

(declare-fun choose!23559 (List!42073 List!42073) Unit!60478)

(assert (=> d!1171188 (= lt!1380216 (choose!23559 lt!1380121 (_2!23753 (v!39321 lt!1380120))))))

(assert (=> d!1171188 (= (lemmaConcatTwoListThenFirstIsPrefix!2510 lt!1380121 (_2!23753 (v!39321 lt!1380120))) lt!1380216)))

(declare-fun bs!586963 () Bool)

(assert (= bs!586963 d!1171188))

(assert (=> bs!586963 m!4516895))

(assert (=> bs!586963 m!4516895))

(assert (=> bs!586963 m!4516897))

(declare-fun m!4517249 () Bool)

(assert (=> bs!586963 m!4517249))

(assert (=> b!3948040 d!1171188))

(declare-fun d!1171190 () Bool)

(declare-fun lt!1380219 () BalanceConc!25140)

(assert (=> d!1171190 (= (list!15582 lt!1380219) (originalCharacters!7162 (_1!23753 (v!39321 lt!1380120))))))

(declare-fun dynLambda!17975 (Int TokenValue!6792) BalanceConc!25140)

(assert (=> d!1171190 (= lt!1380219 (dynLambda!17975 (toChars!8897 (transformation!6562 (rule!9528 (_1!23753 (v!39321 lt!1380120))))) (value!207651 (_1!23753 (v!39321 lt!1380120)))))))

(assert (=> d!1171190 (= (charsOf!4380 (_1!23753 (v!39321 lt!1380120))) lt!1380219)))

(declare-fun b_lambda!115497 () Bool)

(assert (=> (not b_lambda!115497) (not d!1171190)))

(declare-fun t!328182 () Bool)

(declare-fun tb!237371 () Bool)

(assert (=> (and b!3948035 (= (toChars!8897 (transformation!6562 (rule!9528 (h!47372 suffixTokens!72)))) (toChars!8897 (transformation!6562 (rule!9528 (_1!23753 (v!39321 lt!1380120)))))) t!328182) tb!237371))

(declare-fun b!3948366 () Bool)

(declare-fun e!2443409 () Bool)

(declare-fun tp!1202324 () Bool)

(declare-fun inv!56181 (Conc!12773) Bool)

(assert (=> b!3948366 (= e!2443409 (and (inv!56181 (c!685682 (dynLambda!17975 (toChars!8897 (transformation!6562 (rule!9528 (_1!23753 (v!39321 lt!1380120))))) (value!207651 (_1!23753 (v!39321 lt!1380120)))))) tp!1202324))))

(declare-fun result!287478 () Bool)

(declare-fun inv!56182 (BalanceConc!25140) Bool)

(assert (=> tb!237371 (= result!287478 (and (inv!56182 (dynLambda!17975 (toChars!8897 (transformation!6562 (rule!9528 (_1!23753 (v!39321 lt!1380120))))) (value!207651 (_1!23753 (v!39321 lt!1380120))))) e!2443409))))

(assert (= tb!237371 b!3948366))

(declare-fun m!4517251 () Bool)

(assert (=> b!3948366 m!4517251))

(declare-fun m!4517253 () Bool)

(assert (=> tb!237371 m!4517253))

(assert (=> d!1171190 t!328182))

(declare-fun b_and!302273 () Bool)

(assert (= b_and!302221 (and (=> t!328182 result!287478) b_and!302273)))

(declare-fun t!328184 () Bool)

(declare-fun tb!237373 () Bool)

(assert (=> (and b!3948037 (= (toChars!8897 (transformation!6562 (rule!9528 (h!47372 prefixTokens!80)))) (toChars!8897 (transformation!6562 (rule!9528 (_1!23753 (v!39321 lt!1380120)))))) t!328184) tb!237373))

(declare-fun result!287482 () Bool)

(assert (= result!287482 result!287478))

(assert (=> d!1171190 t!328184))

(declare-fun b_and!302275 () Bool)

(assert (= b_and!302225 (and (=> t!328184 result!287482) b_and!302275)))

(declare-fun tb!237375 () Bool)

(declare-fun t!328186 () Bool)

(assert (=> (and b!3948049 (= (toChars!8897 (transformation!6562 (h!47371 rules!2768))) (toChars!8897 (transformation!6562 (rule!9528 (_1!23753 (v!39321 lt!1380120)))))) t!328186) tb!237375))

(declare-fun result!287484 () Bool)

(assert (= result!287484 result!287478))

(assert (=> d!1171190 t!328186))

(declare-fun b_and!302277 () Bool)

(assert (= b_and!302229 (and (=> t!328186 result!287484) b_and!302277)))

(declare-fun m!4517255 () Bool)

(assert (=> d!1171190 m!4517255))

(declare-fun m!4517257 () Bool)

(assert (=> d!1171190 m!4517257))

(assert (=> b!3948040 d!1171190))

(declare-fun d!1171192 () Bool)

(declare-fun res!1597589 () Bool)

(declare-fun e!2443412 () Bool)

(assert (=> d!1171192 (=> (not res!1597589) (not e!2443412))))

(declare-fun validRegex!5224 (Regex!11467) Bool)

(assert (=> d!1171192 (= res!1597589 (validRegex!5224 (regex!6562 (rule!9528 (_1!23753 (v!39321 lt!1380120))))))))

(assert (=> d!1171192 (= (ruleValid!2504 thiss!20629 (rule!9528 (_1!23753 (v!39321 lt!1380120)))) e!2443412)))

(declare-fun b!3948371 () Bool)

(declare-fun res!1597590 () Bool)

(assert (=> b!3948371 (=> (not res!1597590) (not e!2443412))))

(declare-fun nullable!4025 (Regex!11467) Bool)

(assert (=> b!3948371 (= res!1597590 (not (nullable!4025 (regex!6562 (rule!9528 (_1!23753 (v!39321 lt!1380120)))))))))

(declare-fun b!3948372 () Bool)

(assert (=> b!3948372 (= e!2443412 (not (= (tag!7422 (rule!9528 (_1!23753 (v!39321 lt!1380120)))) (String!47679 ""))))))

(assert (= (and d!1171192 res!1597589) b!3948371))

(assert (= (and b!3948371 res!1597590) b!3948372))

(declare-fun m!4517259 () Bool)

(assert (=> d!1171192 m!4517259))

(declare-fun m!4517261 () Bool)

(assert (=> b!3948371 m!4517261))

(assert (=> b!3948040 d!1171192))

(declare-fun d!1171194 () Bool)

(assert (=> d!1171194 (= (size!31448 (_1!23753 (v!39321 lt!1380120))) (size!31449 (originalCharacters!7162 (_1!23753 (v!39321 lt!1380120)))))))

(declare-fun Unit!60481 () Unit!60478)

(assert (=> d!1171194 (= (lemmaCharactersSize!1215 (_1!23753 (v!39321 lt!1380120))) Unit!60481)))

(declare-fun bs!586964 () Bool)

(assert (= bs!586964 d!1171194))

(assert (=> bs!586964 m!4516927))

(assert (=> b!3948040 d!1171194))

(declare-fun d!1171196 () Bool)

(assert (=> d!1171196 (ruleValid!2504 thiss!20629 (rule!9528 (_1!23753 (v!39321 lt!1380120))))))

(declare-fun lt!1380222 () Unit!60478)

(declare-fun choose!23560 (LexerInterface!6151 Rule!12924 List!42075) Unit!60478)

(assert (=> d!1171196 (= lt!1380222 (choose!23560 thiss!20629 (rule!9528 (_1!23753 (v!39321 lt!1380120))) rules!2768))))

(assert (=> d!1171196 (contains!8400 rules!2768 (rule!9528 (_1!23753 (v!39321 lt!1380120))))))

(assert (=> d!1171196 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1580 thiss!20629 (rule!9528 (_1!23753 (v!39321 lt!1380120))) rules!2768) lt!1380222)))

(declare-fun bs!586965 () Bool)

(assert (= bs!586965 d!1171196))

(assert (=> bs!586965 m!4516903))

(declare-fun m!4517263 () Bool)

(assert (=> bs!586965 m!4517263))

(declare-fun m!4517265 () Bool)

(assert (=> bs!586965 m!4517265))

(assert (=> b!3948040 d!1171196))

(declare-fun b!3948375 () Bool)

(declare-fun res!1597592 () Bool)

(declare-fun e!2443413 () Bool)

(assert (=> b!3948375 (=> (not res!1597592) (not e!2443413))))

(declare-fun lt!1380223 () List!42073)

(assert (=> b!3948375 (= res!1597592 (= (size!31449 lt!1380223) (+ (size!31449 lt!1380121) (size!31449 (_2!23753 (v!39321 lt!1380120))))))))

(declare-fun b!3948374 () Bool)

(declare-fun e!2443414 () List!42073)

(assert (=> b!3948374 (= e!2443414 (Cons!41949 (h!47369 lt!1380121) (++!10881 (t!328122 lt!1380121) (_2!23753 (v!39321 lt!1380120)))))))

(declare-fun b!3948376 () Bool)

(assert (=> b!3948376 (= e!2443413 (or (not (= (_2!23753 (v!39321 lt!1380120)) Nil!41949)) (= lt!1380223 lt!1380121)))))

(declare-fun d!1171198 () Bool)

(assert (=> d!1171198 e!2443413))

(declare-fun res!1597591 () Bool)

(assert (=> d!1171198 (=> (not res!1597591) (not e!2443413))))

(assert (=> d!1171198 (= res!1597591 (= (content!6357 lt!1380223) ((_ map or) (content!6357 lt!1380121) (content!6357 (_2!23753 (v!39321 lt!1380120))))))))

(assert (=> d!1171198 (= lt!1380223 e!2443414)))

(declare-fun c!685744 () Bool)

(assert (=> d!1171198 (= c!685744 ((_ is Nil!41949) lt!1380121))))

(assert (=> d!1171198 (= (++!10881 lt!1380121 (_2!23753 (v!39321 lt!1380120))) lt!1380223)))

(declare-fun b!3948373 () Bool)

(assert (=> b!3948373 (= e!2443414 (_2!23753 (v!39321 lt!1380120)))))

(assert (= (and d!1171198 c!685744) b!3948373))

(assert (= (and d!1171198 (not c!685744)) b!3948374))

(assert (= (and d!1171198 res!1597591) b!3948375))

(assert (= (and b!3948375 res!1597592) b!3948376))

(declare-fun m!4517267 () Bool)

(assert (=> b!3948375 m!4517267))

(assert (=> b!3948375 m!4516893))

(declare-fun m!4517269 () Bool)

(assert (=> b!3948375 m!4517269))

(declare-fun m!4517271 () Bool)

(assert (=> b!3948374 m!4517271))

(declare-fun m!4517273 () Bool)

(assert (=> d!1171198 m!4517273))

(declare-fun m!4517275 () Bool)

(assert (=> d!1171198 m!4517275))

(declare-fun m!4517277 () Bool)

(assert (=> d!1171198 m!4517277))

(assert (=> b!3948040 d!1171198))

(declare-fun d!1171200 () Bool)

(declare-fun lt!1380224 () Int)

(assert (=> d!1171200 (>= lt!1380224 0)))

(declare-fun e!2443415 () Int)

(assert (=> d!1171200 (= lt!1380224 e!2443415)))

(declare-fun c!685745 () Bool)

(assert (=> d!1171200 (= c!685745 ((_ is Nil!41949) lt!1380121))))

(assert (=> d!1171200 (= (size!31449 lt!1380121) lt!1380224)))

(declare-fun b!3948377 () Bool)

(assert (=> b!3948377 (= e!2443415 0)))

(declare-fun b!3948378 () Bool)

(assert (=> b!3948378 (= e!2443415 (+ 1 (size!31449 (t!328122 lt!1380121))))))

(assert (= (and d!1171200 c!685745) b!3948377))

(assert (= (and d!1171200 (not c!685745)) b!3948378))

(declare-fun m!4517279 () Bool)

(assert (=> b!3948378 m!4517279))

(assert (=> b!3948040 d!1171200))

(declare-fun b!3948387 () Bool)

(declare-fun e!2443422 () Bool)

(declare-fun e!2443423 () Bool)

(assert (=> b!3948387 (= e!2443422 e!2443423)))

(declare-fun res!1597602 () Bool)

(assert (=> b!3948387 (=> (not res!1597602) (not e!2443423))))

(assert (=> b!3948387 (= res!1597602 (not ((_ is Nil!41949) (++!10881 lt!1380121 (_2!23753 (v!39321 lt!1380120))))))))

(declare-fun d!1171202 () Bool)

(declare-fun e!2443424 () Bool)

(assert (=> d!1171202 e!2443424))

(declare-fun res!1597601 () Bool)

(assert (=> d!1171202 (=> res!1597601 e!2443424)))

(declare-fun lt!1380227 () Bool)

(assert (=> d!1171202 (= res!1597601 (not lt!1380227))))

(assert (=> d!1171202 (= lt!1380227 e!2443422)))

(declare-fun res!1597603 () Bool)

(assert (=> d!1171202 (=> res!1597603 e!2443422)))

(assert (=> d!1171202 (= res!1597603 ((_ is Nil!41949) lt!1380121))))

(assert (=> d!1171202 (= (isPrefix!3651 lt!1380121 (++!10881 lt!1380121 (_2!23753 (v!39321 lt!1380120)))) lt!1380227)))

(declare-fun b!3948388 () Bool)

(declare-fun res!1597604 () Bool)

(assert (=> b!3948388 (=> (not res!1597604) (not e!2443423))))

(declare-fun head!8387 (List!42073) C!23120)

(assert (=> b!3948388 (= res!1597604 (= (head!8387 lt!1380121) (head!8387 (++!10881 lt!1380121 (_2!23753 (v!39321 lt!1380120))))))))

(declare-fun b!3948390 () Bool)

(assert (=> b!3948390 (= e!2443424 (>= (size!31449 (++!10881 lt!1380121 (_2!23753 (v!39321 lt!1380120)))) (size!31449 lt!1380121)))))

(declare-fun b!3948389 () Bool)

(assert (=> b!3948389 (= e!2443423 (isPrefix!3651 (tail!6113 lt!1380121) (tail!6113 (++!10881 lt!1380121 (_2!23753 (v!39321 lt!1380120))))))))

(assert (= (and d!1171202 (not res!1597603)) b!3948387))

(assert (= (and b!3948387 res!1597602) b!3948388))

(assert (= (and b!3948388 res!1597604) b!3948389))

(assert (= (and d!1171202 (not res!1597601)) b!3948390))

(declare-fun m!4517281 () Bool)

(assert (=> b!3948388 m!4517281))

(assert (=> b!3948388 m!4516895))

(declare-fun m!4517283 () Bool)

(assert (=> b!3948388 m!4517283))

(assert (=> b!3948390 m!4516895))

(declare-fun m!4517285 () Bool)

(assert (=> b!3948390 m!4517285))

(assert (=> b!3948390 m!4516893))

(declare-fun m!4517287 () Bool)

(assert (=> b!3948389 m!4517287))

(assert (=> b!3948389 m!4516895))

(declare-fun m!4517289 () Bool)

(assert (=> b!3948389 m!4517289))

(assert (=> b!3948389 m!4517287))

(assert (=> b!3948389 m!4517289))

(declare-fun m!4517291 () Bool)

(assert (=> b!3948389 m!4517291))

(assert (=> b!3948040 d!1171202))

(declare-fun d!1171204 () Bool)

(assert (=> d!1171204 (= (_2!23753 (v!39321 lt!1380120)) lt!1380114)))

(declare-fun lt!1380230 () Unit!60478)

(declare-fun choose!23561 (List!42073 List!42073 List!42073 List!42073 List!42073) Unit!60478)

(assert (=> d!1171204 (= lt!1380230 (choose!23561 lt!1380121 (_2!23753 (v!39321 lt!1380120)) lt!1380121 lt!1380114 lt!1380115))))

(assert (=> d!1171204 (isPrefix!3651 lt!1380121 lt!1380115)))

(assert (=> d!1171204 (= (lemmaSamePrefixThenSameSuffix!1860 lt!1380121 (_2!23753 (v!39321 lt!1380120)) lt!1380121 lt!1380114 lt!1380115) lt!1380230)))

(declare-fun bs!586966 () Bool)

(assert (= bs!586966 d!1171204))

(declare-fun m!4517293 () Bool)

(assert (=> bs!586966 m!4517293))

(declare-fun m!4517295 () Bool)

(assert (=> bs!586966 m!4517295))

(assert (=> b!3948040 d!1171204))

(declare-fun d!1171206 () Bool)

(assert (=> d!1171206 (= (isEmpty!25046 prefixTokens!80) ((_ is Nil!41952) prefixTokens!80))))

(assert (=> b!3948053 d!1171206))

(declare-fun d!1171208 () Bool)

(declare-fun e!2443426 () Bool)

(assert (=> d!1171208 e!2443426))

(declare-fun c!685747 () Bool)

(declare-fun lt!1380232 () tuple2!41240)

(assert (=> d!1171208 (= c!685747 (> (size!31451 (_1!23754 lt!1380232)) 0))))

(declare-fun e!2443427 () tuple2!41240)

(assert (=> d!1171208 (= lt!1380232 e!2443427)))

(declare-fun c!685746 () Bool)

(declare-fun lt!1380233 () Option!8982)

(assert (=> d!1171208 (= c!685746 ((_ is Some!8981) lt!1380233))))

(assert (=> d!1171208 (= lt!1380233 (maxPrefix!3455 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1171208 (= (lexList!1919 thiss!20629 rules!2768 suffix!1176) lt!1380232)))

(declare-fun b!3948391 () Bool)

(declare-fun lt!1380231 () tuple2!41240)

(assert (=> b!3948391 (= e!2443427 (tuple2!41241 (Cons!41952 (_1!23753 (v!39321 lt!1380233)) (_1!23754 lt!1380231)) (_2!23754 lt!1380231)))))

(assert (=> b!3948391 (= lt!1380231 (lexList!1919 thiss!20629 rules!2768 (_2!23753 (v!39321 lt!1380233))))))

(declare-fun b!3948392 () Bool)

(assert (=> b!3948392 (= e!2443426 (= (_2!23754 lt!1380232) suffix!1176))))

(declare-fun b!3948393 () Bool)

(assert (=> b!3948393 (= e!2443427 (tuple2!41241 Nil!41952 suffix!1176))))

(declare-fun b!3948394 () Bool)

(declare-fun e!2443425 () Bool)

(assert (=> b!3948394 (= e!2443425 (not (isEmpty!25046 (_1!23754 lt!1380232))))))

(declare-fun b!3948395 () Bool)

(assert (=> b!3948395 (= e!2443426 e!2443425)))

(declare-fun res!1597605 () Bool)

(assert (=> b!3948395 (= res!1597605 (< (size!31449 (_2!23754 lt!1380232)) (size!31449 suffix!1176)))))

(assert (=> b!3948395 (=> (not res!1597605) (not e!2443425))))

(assert (= (and d!1171208 c!685746) b!3948391))

(assert (= (and d!1171208 (not c!685746)) b!3948393))

(assert (= (and d!1171208 c!685747) b!3948395))

(assert (= (and d!1171208 (not c!685747)) b!3948392))

(assert (= (and b!3948395 res!1597605) b!3948394))

(declare-fun m!4517297 () Bool)

(assert (=> d!1171208 m!4517297))

(declare-fun m!4517299 () Bool)

(assert (=> d!1171208 m!4517299))

(declare-fun m!4517301 () Bool)

(assert (=> b!3948391 m!4517301))

(declare-fun m!4517303 () Bool)

(assert (=> b!3948394 m!4517303))

(declare-fun m!4517305 () Bool)

(assert (=> b!3948395 m!4517305))

(assert (=> b!3948395 m!4517047))

(assert (=> b!3948052 d!1171208))

(declare-fun d!1171210 () Bool)

(assert (=> d!1171210 (= (inv!56174 (tag!7422 (h!47371 rules!2768))) (= (mod (str.len (value!207650 (tag!7422 (h!47371 rules!2768)))) 2) 0))))

(assert (=> b!3948031 d!1171210))

(declare-fun d!1171212 () Bool)

(declare-fun res!1597608 () Bool)

(declare-fun e!2443430 () Bool)

(assert (=> d!1171212 (=> (not res!1597608) (not e!2443430))))

(declare-fun semiInverseModEq!2829 (Int Int) Bool)

(assert (=> d!1171212 (= res!1597608 (semiInverseModEq!2829 (toChars!8897 (transformation!6562 (h!47371 rules!2768))) (toValue!9038 (transformation!6562 (h!47371 rules!2768)))))))

(assert (=> d!1171212 (= (inv!56177 (transformation!6562 (h!47371 rules!2768))) e!2443430)))

(declare-fun b!3948398 () Bool)

(declare-fun equivClasses!2728 (Int Int) Bool)

(assert (=> b!3948398 (= e!2443430 (equivClasses!2728 (toChars!8897 (transformation!6562 (h!47371 rules!2768))) (toValue!9038 (transformation!6562 (h!47371 rules!2768)))))))

(assert (= (and d!1171212 res!1597608) b!3948398))

(declare-fun m!4517307 () Bool)

(assert (=> d!1171212 m!4517307))

(declare-fun m!4517309 () Bool)

(assert (=> b!3948398 m!4517309))

(assert (=> b!3948031 d!1171212))

(declare-fun d!1171214 () Bool)

(declare-fun res!1597613 () Bool)

(declare-fun e!2443433 () Bool)

(assert (=> d!1171214 (=> (not res!1597613) (not e!2443433))))

(assert (=> d!1171214 (= res!1597613 (not (isEmpty!25044 (originalCharacters!7162 (h!47372 prefixTokens!80)))))))

(assert (=> d!1171214 (= (inv!56178 (h!47372 prefixTokens!80)) e!2443433)))

(declare-fun b!3948403 () Bool)

(declare-fun res!1597614 () Bool)

(assert (=> b!3948403 (=> (not res!1597614) (not e!2443433))))

(assert (=> b!3948403 (= res!1597614 (= (originalCharacters!7162 (h!47372 prefixTokens!80)) (list!15582 (dynLambda!17975 (toChars!8897 (transformation!6562 (rule!9528 (h!47372 prefixTokens!80)))) (value!207651 (h!47372 prefixTokens!80))))))))

(declare-fun b!3948404 () Bool)

(assert (=> b!3948404 (= e!2443433 (= (size!31448 (h!47372 prefixTokens!80)) (size!31449 (originalCharacters!7162 (h!47372 prefixTokens!80)))))))

(assert (= (and d!1171214 res!1597613) b!3948403))

(assert (= (and b!3948403 res!1597614) b!3948404))

(declare-fun b_lambda!115499 () Bool)

(assert (=> (not b_lambda!115499) (not b!3948403)))

(declare-fun t!328188 () Bool)

(declare-fun tb!237377 () Bool)

(assert (=> (and b!3948035 (= (toChars!8897 (transformation!6562 (rule!9528 (h!47372 suffixTokens!72)))) (toChars!8897 (transformation!6562 (rule!9528 (h!47372 prefixTokens!80))))) t!328188) tb!237377))

(declare-fun b!3948405 () Bool)

(declare-fun e!2443434 () Bool)

(declare-fun tp!1202325 () Bool)

(assert (=> b!3948405 (= e!2443434 (and (inv!56181 (c!685682 (dynLambda!17975 (toChars!8897 (transformation!6562 (rule!9528 (h!47372 prefixTokens!80)))) (value!207651 (h!47372 prefixTokens!80))))) tp!1202325))))

(declare-fun result!287486 () Bool)

(assert (=> tb!237377 (= result!287486 (and (inv!56182 (dynLambda!17975 (toChars!8897 (transformation!6562 (rule!9528 (h!47372 prefixTokens!80)))) (value!207651 (h!47372 prefixTokens!80)))) e!2443434))))

(assert (= tb!237377 b!3948405))

(declare-fun m!4517311 () Bool)

(assert (=> b!3948405 m!4517311))

(declare-fun m!4517313 () Bool)

(assert (=> tb!237377 m!4517313))

(assert (=> b!3948403 t!328188))

(declare-fun b_and!302279 () Bool)

(assert (= b_and!302273 (and (=> t!328188 result!287486) b_and!302279)))

(declare-fun t!328190 () Bool)

(declare-fun tb!237379 () Bool)

(assert (=> (and b!3948037 (= (toChars!8897 (transformation!6562 (rule!9528 (h!47372 prefixTokens!80)))) (toChars!8897 (transformation!6562 (rule!9528 (h!47372 prefixTokens!80))))) t!328190) tb!237379))

(declare-fun result!287488 () Bool)

(assert (= result!287488 result!287486))

(assert (=> b!3948403 t!328190))

(declare-fun b_and!302281 () Bool)

(assert (= b_and!302275 (and (=> t!328190 result!287488) b_and!302281)))

(declare-fun tb!237381 () Bool)

(declare-fun t!328192 () Bool)

(assert (=> (and b!3948049 (= (toChars!8897 (transformation!6562 (h!47371 rules!2768))) (toChars!8897 (transformation!6562 (rule!9528 (h!47372 prefixTokens!80))))) t!328192) tb!237381))

(declare-fun result!287490 () Bool)

(assert (= result!287490 result!287486))

(assert (=> b!3948403 t!328192))

(declare-fun b_and!302283 () Bool)

(assert (= b_and!302277 (and (=> t!328192 result!287490) b_and!302283)))

(declare-fun m!4517315 () Bool)

(assert (=> d!1171214 m!4517315))

(declare-fun m!4517317 () Bool)

(assert (=> b!3948403 m!4517317))

(assert (=> b!3948403 m!4517317))

(declare-fun m!4517319 () Bool)

(assert (=> b!3948403 m!4517319))

(declare-fun m!4517321 () Bool)

(assert (=> b!3948404 m!4517321))

(assert (=> b!3948054 d!1171214))

(declare-fun b!3948406 () Bool)

(declare-fun e!2443436 () Bool)

(assert (=> b!3948406 (= e!2443436 (inv!15 (value!207651 (h!47372 suffixTokens!72))))))

(declare-fun d!1171216 () Bool)

(declare-fun c!685749 () Bool)

(assert (=> d!1171216 (= c!685749 ((_ is IntegerValue!20376) (value!207651 (h!47372 suffixTokens!72))))))

(declare-fun e!2443437 () Bool)

(assert (=> d!1171216 (= (inv!21 (value!207651 (h!47372 suffixTokens!72))) e!2443437)))

(declare-fun b!3948407 () Bool)

(assert (=> b!3948407 (= e!2443437 (inv!16 (value!207651 (h!47372 suffixTokens!72))))))

(declare-fun b!3948408 () Bool)

(declare-fun res!1597615 () Bool)

(assert (=> b!3948408 (=> res!1597615 e!2443436)))

(assert (=> b!3948408 (= res!1597615 (not ((_ is IntegerValue!20378) (value!207651 (h!47372 suffixTokens!72)))))))

(declare-fun e!2443435 () Bool)

(assert (=> b!3948408 (= e!2443435 e!2443436)))

(declare-fun b!3948409 () Bool)

(assert (=> b!3948409 (= e!2443435 (inv!17 (value!207651 (h!47372 suffixTokens!72))))))

(declare-fun b!3948410 () Bool)

(assert (=> b!3948410 (= e!2443437 e!2443435)))

(declare-fun c!685748 () Bool)

(assert (=> b!3948410 (= c!685748 ((_ is IntegerValue!20377) (value!207651 (h!47372 suffixTokens!72))))))

(assert (= (and d!1171216 c!685749) b!3948407))

(assert (= (and d!1171216 (not c!685749)) b!3948410))

(assert (= (and b!3948410 c!685748) b!3948409))

(assert (= (and b!3948410 (not c!685748)) b!3948408))

(assert (= (and b!3948408 (not res!1597615)) b!3948406))

(declare-fun m!4517323 () Bool)

(assert (=> b!3948406 m!4517323))

(declare-fun m!4517325 () Bool)

(assert (=> b!3948407 m!4517325))

(declare-fun m!4517327 () Bool)

(assert (=> b!3948409 m!4517327))

(assert (=> b!3948033 d!1171216))

(declare-fun d!1171218 () Bool)

(assert (=> d!1171218 (= (inv!56174 (tag!7422 (rule!9528 (h!47372 suffixTokens!72)))) (= (mod (str.len (value!207650 (tag!7422 (rule!9528 (h!47372 suffixTokens!72))))) 2) 0))))

(assert (=> b!3948032 d!1171218))

(declare-fun d!1171220 () Bool)

(declare-fun res!1597616 () Bool)

(declare-fun e!2443438 () Bool)

(assert (=> d!1171220 (=> (not res!1597616) (not e!2443438))))

(assert (=> d!1171220 (= res!1597616 (semiInverseModEq!2829 (toChars!8897 (transformation!6562 (rule!9528 (h!47372 suffixTokens!72)))) (toValue!9038 (transformation!6562 (rule!9528 (h!47372 suffixTokens!72))))))))

(assert (=> d!1171220 (= (inv!56177 (transformation!6562 (rule!9528 (h!47372 suffixTokens!72)))) e!2443438)))

(declare-fun b!3948411 () Bool)

(assert (=> b!3948411 (= e!2443438 (equivClasses!2728 (toChars!8897 (transformation!6562 (rule!9528 (h!47372 suffixTokens!72)))) (toValue!9038 (transformation!6562 (rule!9528 (h!47372 suffixTokens!72))))))))

(assert (= (and d!1171220 res!1597616) b!3948411))

(declare-fun m!4517329 () Bool)

(assert (=> d!1171220 m!4517329))

(declare-fun m!4517331 () Bool)

(assert (=> b!3948411 m!4517331))

(assert (=> b!3948032 d!1171220))

(declare-fun d!1171222 () Bool)

(assert (=> d!1171222 (= (isEmpty!25045 rules!2768) ((_ is Nil!41951) rules!2768))))

(assert (=> b!3948043 d!1171222))

(declare-fun d!1171224 () Bool)

(assert (=> d!1171224 (= (inv!56174 (tag!7422 (rule!9528 (h!47372 prefixTokens!80)))) (= (mod (str.len (value!207650 (tag!7422 (rule!9528 (h!47372 prefixTokens!80))))) 2) 0))))

(assert (=> b!3948034 d!1171224))

(declare-fun d!1171226 () Bool)

(declare-fun res!1597617 () Bool)

(declare-fun e!2443439 () Bool)

(assert (=> d!1171226 (=> (not res!1597617) (not e!2443439))))

(assert (=> d!1171226 (= res!1597617 (semiInverseModEq!2829 (toChars!8897 (transformation!6562 (rule!9528 (h!47372 prefixTokens!80)))) (toValue!9038 (transformation!6562 (rule!9528 (h!47372 prefixTokens!80))))))))

(assert (=> d!1171226 (= (inv!56177 (transformation!6562 (rule!9528 (h!47372 prefixTokens!80)))) e!2443439)))

(declare-fun b!3948412 () Bool)

(assert (=> b!3948412 (= e!2443439 (equivClasses!2728 (toChars!8897 (transformation!6562 (rule!9528 (h!47372 prefixTokens!80)))) (toValue!9038 (transformation!6562 (rule!9528 (h!47372 prefixTokens!80))))))))

(assert (= (and d!1171226 res!1597617) b!3948412))

(declare-fun m!4517333 () Bool)

(assert (=> d!1171226 m!4517333))

(declare-fun m!4517335 () Bool)

(assert (=> b!3948412 m!4517335))

(assert (=> b!3948034 d!1171226))

(declare-fun d!1171228 () Bool)

(declare-fun res!1597620 () Bool)

(declare-fun e!2443442 () Bool)

(assert (=> d!1171228 (=> (not res!1597620) (not e!2443442))))

(declare-fun rulesValid!2563 (LexerInterface!6151 List!42075) Bool)

(assert (=> d!1171228 (= res!1597620 (rulesValid!2563 thiss!20629 rules!2768))))

(assert (=> d!1171228 (= (rulesInvariant!5494 thiss!20629 rules!2768) e!2443442)))

(declare-fun b!3948415 () Bool)

(declare-datatypes ((List!42078 0))(
  ( (Nil!41954) (Cons!41954 (h!47374 String!47678) (t!328223 List!42078)) )
))
(declare-fun noDuplicateTag!2564 (LexerInterface!6151 List!42075 List!42078) Bool)

(assert (=> b!3948415 (= e!2443442 (noDuplicateTag!2564 thiss!20629 rules!2768 Nil!41954))))

(assert (= (and d!1171228 res!1597620) b!3948415))

(declare-fun m!4517337 () Bool)

(assert (=> d!1171228 m!4517337))

(declare-fun m!4517339 () Bool)

(assert (=> b!3948415 m!4517339))

(assert (=> b!3948045 d!1171228))

(declare-fun d!1171230 () Bool)

(declare-fun res!1597621 () Bool)

(declare-fun e!2443443 () Bool)

(assert (=> d!1171230 (=> (not res!1597621) (not e!2443443))))

(assert (=> d!1171230 (= res!1597621 (not (isEmpty!25044 (originalCharacters!7162 (h!47372 suffixTokens!72)))))))

(assert (=> d!1171230 (= (inv!56178 (h!47372 suffixTokens!72)) e!2443443)))

(declare-fun b!3948416 () Bool)

(declare-fun res!1597622 () Bool)

(assert (=> b!3948416 (=> (not res!1597622) (not e!2443443))))

(assert (=> b!3948416 (= res!1597622 (= (originalCharacters!7162 (h!47372 suffixTokens!72)) (list!15582 (dynLambda!17975 (toChars!8897 (transformation!6562 (rule!9528 (h!47372 suffixTokens!72)))) (value!207651 (h!47372 suffixTokens!72))))))))

(declare-fun b!3948417 () Bool)

(assert (=> b!3948417 (= e!2443443 (= (size!31448 (h!47372 suffixTokens!72)) (size!31449 (originalCharacters!7162 (h!47372 suffixTokens!72)))))))

(assert (= (and d!1171230 res!1597621) b!3948416))

(assert (= (and b!3948416 res!1597622) b!3948417))

(declare-fun b_lambda!115501 () Bool)

(assert (=> (not b_lambda!115501) (not b!3948416)))

(declare-fun t!328194 () Bool)

(declare-fun tb!237383 () Bool)

(assert (=> (and b!3948035 (= (toChars!8897 (transformation!6562 (rule!9528 (h!47372 suffixTokens!72)))) (toChars!8897 (transformation!6562 (rule!9528 (h!47372 suffixTokens!72))))) t!328194) tb!237383))

(declare-fun b!3948418 () Bool)

(declare-fun e!2443444 () Bool)

(declare-fun tp!1202326 () Bool)

(assert (=> b!3948418 (= e!2443444 (and (inv!56181 (c!685682 (dynLambda!17975 (toChars!8897 (transformation!6562 (rule!9528 (h!47372 suffixTokens!72)))) (value!207651 (h!47372 suffixTokens!72))))) tp!1202326))))

(declare-fun result!287492 () Bool)

(assert (=> tb!237383 (= result!287492 (and (inv!56182 (dynLambda!17975 (toChars!8897 (transformation!6562 (rule!9528 (h!47372 suffixTokens!72)))) (value!207651 (h!47372 suffixTokens!72)))) e!2443444))))

(assert (= tb!237383 b!3948418))

(declare-fun m!4517341 () Bool)

(assert (=> b!3948418 m!4517341))

(declare-fun m!4517343 () Bool)

(assert (=> tb!237383 m!4517343))

(assert (=> b!3948416 t!328194))

(declare-fun b_and!302285 () Bool)

(assert (= b_and!302279 (and (=> t!328194 result!287492) b_and!302285)))

(declare-fun tb!237385 () Bool)

(declare-fun t!328196 () Bool)

(assert (=> (and b!3948037 (= (toChars!8897 (transformation!6562 (rule!9528 (h!47372 prefixTokens!80)))) (toChars!8897 (transformation!6562 (rule!9528 (h!47372 suffixTokens!72))))) t!328196) tb!237385))

(declare-fun result!287494 () Bool)

(assert (= result!287494 result!287492))

(assert (=> b!3948416 t!328196))

(declare-fun b_and!302287 () Bool)

(assert (= b_and!302281 (and (=> t!328196 result!287494) b_and!302287)))

(declare-fun tb!237387 () Bool)

(declare-fun t!328198 () Bool)

(assert (=> (and b!3948049 (= (toChars!8897 (transformation!6562 (h!47371 rules!2768))) (toChars!8897 (transformation!6562 (rule!9528 (h!47372 suffixTokens!72))))) t!328198) tb!237387))

(declare-fun result!287496 () Bool)

(assert (= result!287496 result!287492))

(assert (=> b!3948416 t!328198))

(declare-fun b_and!302289 () Bool)

(assert (= b_and!302283 (and (=> t!328198 result!287496) b_and!302289)))

(declare-fun m!4517345 () Bool)

(assert (=> d!1171230 m!4517345))

(declare-fun m!4517347 () Bool)

(assert (=> b!3948416 m!4517347))

(assert (=> b!3948416 m!4517347))

(declare-fun m!4517349 () Bool)

(assert (=> b!3948416 m!4517349))

(declare-fun m!4517351 () Bool)

(assert (=> b!3948417 m!4517351))

(assert (=> b!3948044 d!1171230))

(declare-fun b!3948423 () Bool)

(declare-fun e!2443447 () Bool)

(declare-fun tp!1202329 () Bool)

(assert (=> b!3948423 (= e!2443447 (and tp_is_empty!19905 tp!1202329))))

(assert (=> b!3948046 (= tp!1202239 e!2443447)))

(assert (= (and b!3948046 ((_ is Cons!41949) (originalCharacters!7162 (h!47372 prefixTokens!80)))) b!3948423))

(declare-fun b!3948434 () Bool)

(declare-fun b_free!108317 () Bool)

(declare-fun b_next!109021 () Bool)

(assert (=> b!3948434 (= b_free!108317 (not b_next!109021))))

(declare-fun t!328200 () Bool)

(declare-fun tb!237389 () Bool)

(assert (=> (and b!3948434 (= (toValue!9038 (transformation!6562 (h!47371 (t!328124 rules!2768)))) (toValue!9038 (transformation!6562 (rule!9528 (_1!23753 (v!39321 lt!1380120)))))) t!328200) tb!237389))

(declare-fun result!287502 () Bool)

(assert (= result!287502 result!287470))

(assert (=> d!1171180 t!328200))

(declare-fun b_and!302291 () Bool)

(declare-fun tp!1202339 () Bool)

(assert (=> b!3948434 (= tp!1202339 (and (=> t!328200 result!287502) b_and!302291))))

(declare-fun b_free!108319 () Bool)

(declare-fun b_next!109023 () Bool)

(assert (=> b!3948434 (= b_free!108319 (not b_next!109023))))

(declare-fun tb!237391 () Bool)

(declare-fun t!328202 () Bool)

(assert (=> (and b!3948434 (= (toChars!8897 (transformation!6562 (h!47371 (t!328124 rules!2768)))) (toChars!8897 (transformation!6562 (rule!9528 (_1!23753 (v!39321 lt!1380120)))))) t!328202) tb!237391))

(declare-fun result!287504 () Bool)

(assert (= result!287504 result!287478))

(assert (=> d!1171190 t!328202))

(declare-fun tb!237393 () Bool)

(declare-fun t!328204 () Bool)

(assert (=> (and b!3948434 (= (toChars!8897 (transformation!6562 (h!47371 (t!328124 rules!2768)))) (toChars!8897 (transformation!6562 (rule!9528 (h!47372 prefixTokens!80))))) t!328204) tb!237393))

(declare-fun result!287506 () Bool)

(assert (= result!287506 result!287486))

(assert (=> b!3948403 t!328204))

(declare-fun tb!237395 () Bool)

(declare-fun t!328206 () Bool)

(assert (=> (and b!3948434 (= (toChars!8897 (transformation!6562 (h!47371 (t!328124 rules!2768)))) (toChars!8897 (transformation!6562 (rule!9528 (h!47372 suffixTokens!72))))) t!328206) tb!237395))

(declare-fun result!287508 () Bool)

(assert (= result!287508 result!287492))

(assert (=> b!3948416 t!328206))

(declare-fun tp!1202338 () Bool)

(declare-fun b_and!302293 () Bool)

(assert (=> b!3948434 (= tp!1202338 (and (=> t!328202 result!287504) (=> t!328204 result!287506) (=> t!328206 result!287508) b_and!302293))))

(declare-fun e!2443458 () Bool)

(assert (=> b!3948434 (= e!2443458 (and tp!1202339 tp!1202338))))

(declare-fun e!2443456 () Bool)

(declare-fun b!3948433 () Bool)

(declare-fun tp!1202340 () Bool)

(assert (=> b!3948433 (= e!2443456 (and tp!1202340 (inv!56174 (tag!7422 (h!47371 (t!328124 rules!2768)))) (inv!56177 (transformation!6562 (h!47371 (t!328124 rules!2768)))) e!2443458))))

(declare-fun b!3948432 () Bool)

(declare-fun e!2443457 () Bool)

(declare-fun tp!1202341 () Bool)

(assert (=> b!3948432 (= e!2443457 (and e!2443456 tp!1202341))))

(assert (=> b!3948047 (= tp!1202238 e!2443457)))

(assert (= b!3948433 b!3948434))

(assert (= b!3948432 b!3948433))

(assert (= (and b!3948047 ((_ is Cons!41951) (t!328124 rules!2768))) b!3948432))

(declare-fun m!4517353 () Bool)

(assert (=> b!3948433 m!4517353))

(declare-fun m!4517355 () Bool)

(assert (=> b!3948433 m!4517355))

(declare-fun b!3948435 () Bool)

(declare-fun e!2443460 () Bool)

(declare-fun tp!1202342 () Bool)

(assert (=> b!3948435 (= e!2443460 (and tp_is_empty!19905 tp!1202342))))

(assert (=> b!3948050 (= tp!1202242 e!2443460)))

(assert (= (and b!3948050 ((_ is Cons!41949) (t!328122 suffix!1176))) b!3948435))

(declare-fun b!3948436 () Bool)

(declare-fun e!2443461 () Bool)

(declare-fun tp!1202343 () Bool)

(assert (=> b!3948436 (= e!2443461 (and tp_is_empty!19905 tp!1202343))))

(assert (=> b!3948051 (= tp!1202249 e!2443461)))

(assert (= (and b!3948051 ((_ is Cons!41949) (t!328122 prefix!426))) b!3948436))

(declare-fun b!3948437 () Bool)

(declare-fun e!2443462 () Bool)

(declare-fun tp!1202344 () Bool)

(assert (=> b!3948437 (= e!2443462 (and tp_is_empty!19905 tp!1202344))))

(assert (=> b!3948042 (= tp!1202246 e!2443462)))

(assert (= (and b!3948042 ((_ is Cons!41949) (t!328122 suffixResult!91))) b!3948437))

(declare-fun b!3948448 () Bool)

(declare-fun e!2443465 () Bool)

(assert (=> b!3948448 (= e!2443465 tp_is_empty!19905)))

(declare-fun b!3948451 () Bool)

(declare-fun tp!1202357 () Bool)

(declare-fun tp!1202359 () Bool)

(assert (=> b!3948451 (= e!2443465 (and tp!1202357 tp!1202359))))

(declare-fun b!3948450 () Bool)

(declare-fun tp!1202358 () Bool)

(assert (=> b!3948450 (= e!2443465 tp!1202358)))

(assert (=> b!3948031 (= tp!1202237 e!2443465)))

(declare-fun b!3948449 () Bool)

(declare-fun tp!1202356 () Bool)

(declare-fun tp!1202355 () Bool)

(assert (=> b!3948449 (= e!2443465 (and tp!1202356 tp!1202355))))

(assert (= (and b!3948031 ((_ is ElementMatch!11467) (regex!6562 (h!47371 rules!2768)))) b!3948448))

(assert (= (and b!3948031 ((_ is Concat!18260) (regex!6562 (h!47371 rules!2768)))) b!3948449))

(assert (= (and b!3948031 ((_ is Star!11467) (regex!6562 (h!47371 rules!2768)))) b!3948450))

(assert (= (and b!3948031 ((_ is Union!11467) (regex!6562 (h!47371 rules!2768)))) b!3948451))

(declare-fun b!3948465 () Bool)

(declare-fun b_free!108321 () Bool)

(declare-fun b_next!109025 () Bool)

(assert (=> b!3948465 (= b_free!108321 (not b_next!109025))))

(declare-fun tb!237397 () Bool)

(declare-fun t!328208 () Bool)

(assert (=> (and b!3948465 (= (toValue!9038 (transformation!6562 (rule!9528 (h!47372 (t!328125 prefixTokens!80))))) (toValue!9038 (transformation!6562 (rule!9528 (_1!23753 (v!39321 lt!1380120)))))) t!328208) tb!237397))

(declare-fun result!287514 () Bool)

(assert (= result!287514 result!287470))

(assert (=> d!1171180 t!328208))

(declare-fun tp!1202374 () Bool)

(declare-fun b_and!302295 () Bool)

(assert (=> b!3948465 (= tp!1202374 (and (=> t!328208 result!287514) b_and!302295))))

(declare-fun b_free!108323 () Bool)

(declare-fun b_next!109027 () Bool)

(assert (=> b!3948465 (= b_free!108323 (not b_next!109027))))

(declare-fun tb!237399 () Bool)

(declare-fun t!328210 () Bool)

(assert (=> (and b!3948465 (= (toChars!8897 (transformation!6562 (rule!9528 (h!47372 (t!328125 prefixTokens!80))))) (toChars!8897 (transformation!6562 (rule!9528 (_1!23753 (v!39321 lt!1380120)))))) t!328210) tb!237399))

(declare-fun result!287516 () Bool)

(assert (= result!287516 result!287478))

(assert (=> d!1171190 t!328210))

(declare-fun t!328212 () Bool)

(declare-fun tb!237401 () Bool)

(assert (=> (and b!3948465 (= (toChars!8897 (transformation!6562 (rule!9528 (h!47372 (t!328125 prefixTokens!80))))) (toChars!8897 (transformation!6562 (rule!9528 (h!47372 prefixTokens!80))))) t!328212) tb!237401))

(declare-fun result!287518 () Bool)

(assert (= result!287518 result!287486))

(assert (=> b!3948403 t!328212))

(declare-fun tb!237403 () Bool)

(declare-fun t!328214 () Bool)

(assert (=> (and b!3948465 (= (toChars!8897 (transformation!6562 (rule!9528 (h!47372 (t!328125 prefixTokens!80))))) (toChars!8897 (transformation!6562 (rule!9528 (h!47372 suffixTokens!72))))) t!328214) tb!237403))

(declare-fun result!287520 () Bool)

(assert (= result!287520 result!287492))

(assert (=> b!3948416 t!328214))

(declare-fun b_and!302297 () Bool)

(declare-fun tp!1202372 () Bool)

(assert (=> b!3948465 (= tp!1202372 (and (=> t!328210 result!287516) (=> t!328212 result!287518) (=> t!328214 result!287520) b_and!302297))))

(declare-fun e!2443482 () Bool)

(assert (=> b!3948054 (= tp!1202247 e!2443482)))

(declare-fun tp!1202371 () Bool)

(declare-fun b!3948462 () Bool)

(declare-fun e!2443479 () Bool)

(assert (=> b!3948462 (= e!2443482 (and (inv!56178 (h!47372 (t!328125 prefixTokens!80))) e!2443479 tp!1202371))))

(declare-fun b!3948464 () Bool)

(declare-fun e!2443478 () Bool)

(declare-fun tp!1202373 () Bool)

(declare-fun e!2443480 () Bool)

(assert (=> b!3948464 (= e!2443478 (and tp!1202373 (inv!56174 (tag!7422 (rule!9528 (h!47372 (t!328125 prefixTokens!80))))) (inv!56177 (transformation!6562 (rule!9528 (h!47372 (t!328125 prefixTokens!80))))) e!2443480))))

(assert (=> b!3948465 (= e!2443480 (and tp!1202374 tp!1202372))))

(declare-fun tp!1202370 () Bool)

(declare-fun b!3948463 () Bool)

(assert (=> b!3948463 (= e!2443479 (and (inv!21 (value!207651 (h!47372 (t!328125 prefixTokens!80)))) e!2443478 tp!1202370))))

(assert (= b!3948464 b!3948465))

(assert (= b!3948463 b!3948464))

(assert (= b!3948462 b!3948463))

(assert (= (and b!3948054 ((_ is Cons!41952) (t!328125 prefixTokens!80))) b!3948462))

(declare-fun m!4517357 () Bool)

(assert (=> b!3948462 m!4517357))

(declare-fun m!4517359 () Bool)

(assert (=> b!3948464 m!4517359))

(declare-fun m!4517361 () Bool)

(assert (=> b!3948464 m!4517361))

(declare-fun m!4517363 () Bool)

(assert (=> b!3948463 m!4517363))

(declare-fun b!3948466 () Bool)

(declare-fun e!2443484 () Bool)

(declare-fun tp!1202375 () Bool)

(assert (=> b!3948466 (= e!2443484 (and tp_is_empty!19905 tp!1202375))))

(assert (=> b!3948033 (= tp!1202250 e!2443484)))

(assert (= (and b!3948033 ((_ is Cons!41949) (originalCharacters!7162 (h!47372 suffixTokens!72)))) b!3948466))

(declare-fun b!3948467 () Bool)

(declare-fun e!2443485 () Bool)

(assert (=> b!3948467 (= e!2443485 tp_is_empty!19905)))

(declare-fun b!3948470 () Bool)

(declare-fun tp!1202378 () Bool)

(declare-fun tp!1202380 () Bool)

(assert (=> b!3948470 (= e!2443485 (and tp!1202378 tp!1202380))))

(declare-fun b!3948469 () Bool)

(declare-fun tp!1202379 () Bool)

(assert (=> b!3948469 (= e!2443485 tp!1202379)))

(assert (=> b!3948032 (= tp!1202245 e!2443485)))

(declare-fun b!3948468 () Bool)

(declare-fun tp!1202377 () Bool)

(declare-fun tp!1202376 () Bool)

(assert (=> b!3948468 (= e!2443485 (and tp!1202377 tp!1202376))))

(assert (= (and b!3948032 ((_ is ElementMatch!11467) (regex!6562 (rule!9528 (h!47372 suffixTokens!72))))) b!3948467))

(assert (= (and b!3948032 ((_ is Concat!18260) (regex!6562 (rule!9528 (h!47372 suffixTokens!72))))) b!3948468))

(assert (= (and b!3948032 ((_ is Star!11467) (regex!6562 (rule!9528 (h!47372 suffixTokens!72))))) b!3948469))

(assert (= (and b!3948032 ((_ is Union!11467) (regex!6562 (rule!9528 (h!47372 suffixTokens!72))))) b!3948470))

(declare-fun b!3948471 () Bool)

(declare-fun e!2443486 () Bool)

(assert (=> b!3948471 (= e!2443486 tp_is_empty!19905)))

(declare-fun b!3948474 () Bool)

(declare-fun tp!1202383 () Bool)

(declare-fun tp!1202385 () Bool)

(assert (=> b!3948474 (= e!2443486 (and tp!1202383 tp!1202385))))

(declare-fun b!3948473 () Bool)

(declare-fun tp!1202384 () Bool)

(assert (=> b!3948473 (= e!2443486 tp!1202384)))

(assert (=> b!3948034 (= tp!1202251 e!2443486)))

(declare-fun b!3948472 () Bool)

(declare-fun tp!1202382 () Bool)

(declare-fun tp!1202381 () Bool)

(assert (=> b!3948472 (= e!2443486 (and tp!1202382 tp!1202381))))

(assert (= (and b!3948034 ((_ is ElementMatch!11467) (regex!6562 (rule!9528 (h!47372 prefixTokens!80))))) b!3948471))

(assert (= (and b!3948034 ((_ is Concat!18260) (regex!6562 (rule!9528 (h!47372 prefixTokens!80))))) b!3948472))

(assert (= (and b!3948034 ((_ is Star!11467) (regex!6562 (rule!9528 (h!47372 prefixTokens!80))))) b!3948473))

(assert (= (and b!3948034 ((_ is Union!11467) (regex!6562 (rule!9528 (h!47372 prefixTokens!80))))) b!3948474))

(declare-fun b!3948478 () Bool)

(declare-fun b_free!108325 () Bool)

(declare-fun b_next!109029 () Bool)

(assert (=> b!3948478 (= b_free!108325 (not b_next!109029))))

(declare-fun t!328216 () Bool)

(declare-fun tb!237405 () Bool)

(assert (=> (and b!3948478 (= (toValue!9038 (transformation!6562 (rule!9528 (h!47372 (t!328125 suffixTokens!72))))) (toValue!9038 (transformation!6562 (rule!9528 (_1!23753 (v!39321 lt!1380120)))))) t!328216) tb!237405))

(declare-fun result!287522 () Bool)

(assert (= result!287522 result!287470))

(assert (=> d!1171180 t!328216))

(declare-fun b_and!302299 () Bool)

(declare-fun tp!1202390 () Bool)

(assert (=> b!3948478 (= tp!1202390 (and (=> t!328216 result!287522) b_and!302299))))

(declare-fun b_free!108327 () Bool)

(declare-fun b_next!109031 () Bool)

(assert (=> b!3948478 (= b_free!108327 (not b_next!109031))))

(declare-fun t!328218 () Bool)

(declare-fun tb!237407 () Bool)

(assert (=> (and b!3948478 (= (toChars!8897 (transformation!6562 (rule!9528 (h!47372 (t!328125 suffixTokens!72))))) (toChars!8897 (transformation!6562 (rule!9528 (_1!23753 (v!39321 lt!1380120)))))) t!328218) tb!237407))

(declare-fun result!287524 () Bool)

(assert (= result!287524 result!287478))

(assert (=> d!1171190 t!328218))

(declare-fun tb!237409 () Bool)

(declare-fun t!328220 () Bool)

(assert (=> (and b!3948478 (= (toChars!8897 (transformation!6562 (rule!9528 (h!47372 (t!328125 suffixTokens!72))))) (toChars!8897 (transformation!6562 (rule!9528 (h!47372 prefixTokens!80))))) t!328220) tb!237409))

(declare-fun result!287526 () Bool)

(assert (= result!287526 result!287486))

(assert (=> b!3948403 t!328220))

(declare-fun t!328222 () Bool)

(declare-fun tb!237411 () Bool)

(assert (=> (and b!3948478 (= (toChars!8897 (transformation!6562 (rule!9528 (h!47372 (t!328125 suffixTokens!72))))) (toChars!8897 (transformation!6562 (rule!9528 (h!47372 suffixTokens!72))))) t!328222) tb!237411))

(declare-fun result!287528 () Bool)

(assert (= result!287528 result!287492))

(assert (=> b!3948416 t!328222))

(declare-fun tp!1202388 () Bool)

(declare-fun b_and!302301 () Bool)

(assert (=> b!3948478 (= tp!1202388 (and (=> t!328218 result!287524) (=> t!328220 result!287526) (=> t!328222 result!287528) b_and!302301))))

(declare-fun e!2443491 () Bool)

(assert (=> b!3948044 (= tp!1202240 e!2443491)))

(declare-fun b!3948475 () Bool)

(declare-fun e!2443488 () Bool)

(declare-fun tp!1202387 () Bool)

(assert (=> b!3948475 (= e!2443491 (and (inv!56178 (h!47372 (t!328125 suffixTokens!72))) e!2443488 tp!1202387))))

(declare-fun e!2443489 () Bool)

(declare-fun tp!1202389 () Bool)

(declare-fun b!3948477 () Bool)

(declare-fun e!2443487 () Bool)

(assert (=> b!3948477 (= e!2443487 (and tp!1202389 (inv!56174 (tag!7422 (rule!9528 (h!47372 (t!328125 suffixTokens!72))))) (inv!56177 (transformation!6562 (rule!9528 (h!47372 (t!328125 suffixTokens!72))))) e!2443489))))

(assert (=> b!3948478 (= e!2443489 (and tp!1202390 tp!1202388))))

(declare-fun b!3948476 () Bool)

(declare-fun tp!1202386 () Bool)

(assert (=> b!3948476 (= e!2443488 (and (inv!21 (value!207651 (h!47372 (t!328125 suffixTokens!72)))) e!2443487 tp!1202386))))

(assert (= b!3948477 b!3948478))

(assert (= b!3948476 b!3948477))

(assert (= b!3948475 b!3948476))

(assert (= (and b!3948044 ((_ is Cons!41952) (t!328125 suffixTokens!72))) b!3948475))

(declare-fun m!4517365 () Bool)

(assert (=> b!3948475 m!4517365))

(declare-fun m!4517367 () Bool)

(assert (=> b!3948477 m!4517367))

(declare-fun m!4517369 () Bool)

(assert (=> b!3948477 m!4517369))

(declare-fun m!4517371 () Bool)

(assert (=> b!3948476 m!4517371))

(declare-fun b_lambda!115503 () Bool)

(assert (= b_lambda!115499 (or (and b!3948478 b_free!108327 (= (toChars!8897 (transformation!6562 (rule!9528 (h!47372 (t!328125 suffixTokens!72))))) (toChars!8897 (transformation!6562 (rule!9528 (h!47372 prefixTokens!80)))))) (and b!3948049 b_free!108303 (= (toChars!8897 (transformation!6562 (h!47371 rules!2768))) (toChars!8897 (transformation!6562 (rule!9528 (h!47372 prefixTokens!80)))))) (and b!3948037 b_free!108299) (and b!3948434 b_free!108319 (= (toChars!8897 (transformation!6562 (h!47371 (t!328124 rules!2768)))) (toChars!8897 (transformation!6562 (rule!9528 (h!47372 prefixTokens!80)))))) (and b!3948465 b_free!108323 (= (toChars!8897 (transformation!6562 (rule!9528 (h!47372 (t!328125 prefixTokens!80))))) (toChars!8897 (transformation!6562 (rule!9528 (h!47372 prefixTokens!80)))))) (and b!3948035 b_free!108295 (= (toChars!8897 (transformation!6562 (rule!9528 (h!47372 suffixTokens!72)))) (toChars!8897 (transformation!6562 (rule!9528 (h!47372 prefixTokens!80)))))) b_lambda!115503)))

(declare-fun b_lambda!115505 () Bool)

(assert (= b_lambda!115501 (or (and b!3948035 b_free!108295) (and b!3948434 b_free!108319 (= (toChars!8897 (transformation!6562 (h!47371 (t!328124 rules!2768)))) (toChars!8897 (transformation!6562 (rule!9528 (h!47372 suffixTokens!72)))))) (and b!3948478 b_free!108327 (= (toChars!8897 (transformation!6562 (rule!9528 (h!47372 (t!328125 suffixTokens!72))))) (toChars!8897 (transformation!6562 (rule!9528 (h!47372 suffixTokens!72)))))) (and b!3948037 b_free!108299 (= (toChars!8897 (transformation!6562 (rule!9528 (h!47372 prefixTokens!80)))) (toChars!8897 (transformation!6562 (rule!9528 (h!47372 suffixTokens!72)))))) (and b!3948049 b_free!108303 (= (toChars!8897 (transformation!6562 (h!47371 rules!2768))) (toChars!8897 (transformation!6562 (rule!9528 (h!47372 suffixTokens!72)))))) (and b!3948465 b_free!108323 (= (toChars!8897 (transformation!6562 (rule!9528 (h!47372 (t!328125 prefixTokens!80))))) (toChars!8897 (transformation!6562 (rule!9528 (h!47372 suffixTokens!72)))))) b_lambda!115505)))

(check-sat (not b!3948432) (not b!3948403) b_and!302289 (not b_next!109023) (not b_next!109029) (not b!3948449) (not b_next!109025) (not b!3948374) (not b!3948423) (not b!3948418) (not b!3948371) (not b_next!109005) (not b!3948470) (not b!3948466) (not b!3948348) b_and!302287 b_and!302299 (not b!3948360) (not d!1171194) (not b!3948406) (not b!3948450) (not d!1171214) (not b!3948415) (not d!1171208) b_and!302297 (not b_next!109021) (not b!3948473) (not b!3948388) (not b_next!109031) (not b_next!108997) (not b!3948170) (not b!3948437) (not b!3948143) (not b!3948395) (not b!3948207) b_and!302293 (not b!3948366) b_and!302267 (not b!3948349) (not b!3948390) (not d!1171122) (not b!3948139) (not bm!285183) (not tb!237365) (not b!3948346) (not b!3948068) (not b!3948065) (not b!3948416) (not b!3948464) (not d!1171230) (not b!3948404) (not b_next!109007) (not d!1171186) (not d!1171184) (not b!3948451) tp_is_empty!19905 (not b!3948394) (not b_next!108999) (not b_lambda!115503) (not b!3948433) (not d!1171204) (not b_lambda!115497) (not d!1171192) (not b!3948347) (not b!3948474) (not b!3948411) (not b!3948391) (not b_next!109001) (not b_lambda!115495) (not d!1171220) (not b!3948378) (not b!3948463) (not b!3948375) (not b!3948351) b_and!302295 (not b_lambda!115505) (not b!3948398) (not d!1171198) (not d!1171226) (not b!3948468) (not b!3948181) (not b!3948169) (not d!1171196) b_and!302301 (not b!3948462) b_and!302271 (not b!3948407) (not b!3948142) (not d!1171102) b_and!302291 (not b!3948469) (not b!3948352) (not d!1171188) (not b!3948417) b_and!302269 (not b!3948436) (not d!1171228) (not b_next!109003) (not d!1171190) (not b!3948405) (not b_next!109027) (not b!3948353) (not b!3948066) (not d!1171126) (not d!1171212) (not b!3948477) b_and!302285 (not b!3948475) (not b!3948389) (not b!3948412) (not tb!237377) (not b!3948476) (not b!3948182) (not tb!237383) (not b!3948350) (not d!1171182) (not tb!237371) (not d!1171132) (not b!3948472) (not b!3948435) (not b!3948409))
(check-sat b_and!302299 b_and!302289 (not b_next!109023) b_and!302293 b_and!302267 (not b_next!109007) (not b_next!108999) (not b_next!109001) b_and!302295 b_and!302301 b_and!302271 (not b_next!109029) b_and!302291 (not b_next!109027) b_and!302285 (not b_next!109025) b_and!302287 (not b_next!109005) b_and!302297 (not b_next!109021) (not b_next!109031) (not b_next!108997) b_and!302269 (not b_next!109003))
