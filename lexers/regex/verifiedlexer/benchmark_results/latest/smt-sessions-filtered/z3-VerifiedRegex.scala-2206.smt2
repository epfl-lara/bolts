; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108422 () Bool)

(assert start!108422)

(declare-fun b!1213921 () Bool)

(declare-fun b_free!29017 () Bool)

(declare-fun b_next!29721 () Bool)

(assert (=> b!1213921 (= b_free!29017 (not b_next!29721))))

(declare-fun tp!344235 () Bool)

(declare-fun b_and!82321 () Bool)

(assert (=> b!1213921 (= tp!344235 b_and!82321)))

(declare-fun b_free!29019 () Bool)

(declare-fun b_next!29723 () Bool)

(assert (=> b!1213921 (= b_free!29019 (not b_next!29723))))

(declare-fun tp!344239 () Bool)

(declare-fun b_and!82323 () Bool)

(assert (=> b!1213921 (= tp!344239 b_and!82323)))

(declare-fun b!1213927 () Bool)

(declare-fun b_free!29021 () Bool)

(declare-fun b_next!29725 () Bool)

(assert (=> b!1213927 (= b_free!29021 (not b_next!29725))))

(declare-fun tp!344243 () Bool)

(declare-fun b_and!82325 () Bool)

(assert (=> b!1213927 (= tp!344243 b_and!82325)))

(declare-fun b_free!29023 () Bool)

(declare-fun b_next!29727 () Bool)

(assert (=> b!1213927 (= b_free!29023 (not b_next!29727))))

(declare-fun tp!344242 () Bool)

(declare-fun b_and!82327 () Bool)

(assert (=> b!1213927 (= tp!344242 b_and!82327)))

(declare-fun e!778930 () Bool)

(assert (=> b!1213921 (= e!778930 (and tp!344235 tp!344239))))

(declare-datatypes ((List!12386 0))(
  ( (Nil!12328) (Cons!12328 (h!17729 (_ BitVec 16)) (t!112956 List!12386)) )
))
(declare-datatypes ((TokenValue!2185 0))(
  ( (FloatLiteralValue!4370 (text!15740 List!12386)) (TokenValueExt!2184 (__x!8085 Int)) (Broken!10925 (value!68905 List!12386)) (Object!2242) (End!2185) (Def!2185) (Underscore!2185) (Match!2185) (Else!2185) (Error!2185) (Case!2185) (If!2185) (Extends!2185) (Abstract!2185) (Class!2185) (Val!2185) (DelimiterValue!4370 (del!2245 List!12386)) (KeywordValue!2191 (value!68906 List!12386)) (CommentValue!4370 (value!68907 List!12386)) (WhitespaceValue!4370 (value!68908 List!12386)) (IndentationValue!2185 (value!68909 List!12386)) (String!15056) (Int32!2185) (Broken!10926 (value!68910 List!12386)) (Boolean!2186) (Unit!18637) (OperatorValue!2188 (op!2245 List!12386)) (IdentifierValue!4370 (value!68911 List!12386)) (IdentifierValue!4371 (value!68912 List!12386)) (WhitespaceValue!4371 (value!68913 List!12386)) (True!4370) (False!4370) (Broken!10927 (value!68914 List!12386)) (Broken!10928 (value!68915 List!12386)) (True!4371) (RightBrace!2185) (RightBracket!2185) (Colon!2185) (Null!2185) (Comma!2185) (LeftBracket!2185) (False!4371) (LeftBrace!2185) (ImaginaryLiteralValue!2185 (text!15741 List!12386)) (StringLiteralValue!6555 (value!68916 List!12386)) (EOFValue!2185 (value!68917 List!12386)) (IdentValue!2185 (value!68918 List!12386)) (DelimiterValue!4371 (value!68919 List!12386)) (DedentValue!2185 (value!68920 List!12386)) (NewLineValue!2185 (value!68921 List!12386)) (IntegerValue!6555 (value!68922 (_ BitVec 32)) (text!15742 List!12386)) (IntegerValue!6556 (value!68923 Int) (text!15743 List!12386)) (Times!2185) (Or!2185) (Equal!2185) (Minus!2185) (Broken!10929 (value!68924 List!12386)) (And!2185) (Div!2185) (LessEqual!2185) (Mod!2185) (Concat!5572) (Not!2185) (Plus!2185) (SpaceValue!2185 (value!68925 List!12386)) (IntegerValue!6557 (value!68926 Int) (text!15744 List!12386)) (StringLiteralValue!6556 (text!15745 List!12386)) (FloatLiteralValue!4371 (text!15746 List!12386)) (BytesLiteralValue!2185 (value!68927 List!12386)) (CommentValue!4371 (value!68928 List!12386)) (StringLiteralValue!6557 (value!68929 List!12386)) (ErrorTokenValue!2185 (msg!2246 List!12386)) )
))
(declare-datatypes ((C!7092 0))(
  ( (C!7093 (val!4076 Int)) )
))
(declare-datatypes ((List!12387 0))(
  ( (Nil!12329) (Cons!12329 (h!17730 C!7092) (t!112957 List!12387)) )
))
(declare-datatypes ((IArray!8089 0))(
  ( (IArray!8090 (innerList!4102 List!12387)) )
))
(declare-datatypes ((Conc!4042 0))(
  ( (Node!4042 (left!10684 Conc!4042) (right!11014 Conc!4042) (csize!8314 Int) (cheight!4253 Int)) (Leaf!6249 (xs!6753 IArray!8089) (csize!8315 Int)) (Empty!4042) )
))
(declare-datatypes ((BalanceConc!8016 0))(
  ( (BalanceConc!8017 (c!203196 Conc!4042)) )
))
(declare-datatypes ((Regex!3387 0))(
  ( (ElementMatch!3387 (c!203197 C!7092)) (Concat!5573 (regOne!7286 Regex!3387) (regTwo!7286 Regex!3387)) (EmptyExpr!3387) (Star!3387 (reg!3716 Regex!3387)) (EmptyLang!3387) (Union!3387 (regOne!7287 Regex!3387) (regTwo!7287 Regex!3387)) )
))
(declare-datatypes ((String!15057 0))(
  ( (String!15058 (value!68930 String)) )
))
(declare-datatypes ((TokenValueInjection!4066 0))(
  ( (TokenValueInjection!4067 (toValue!3242 Int) (toChars!3101 Int)) )
))
(declare-datatypes ((Rule!4034 0))(
  ( (Rule!4035 (regex!2117 Regex!3387) (tag!2379 String!15057) (isSeparator!2117 Bool) (transformation!2117 TokenValueInjection!4066)) )
))
(declare-datatypes ((Token!3896 0))(
  ( (Token!3897 (value!68931 TokenValue!2185) (rule!3540 Rule!4034) (size!9785 Int) (originalCharacters!2671 List!12387)) )
))
(declare-datatypes ((List!12388 0))(
  ( (Nil!12330) (Cons!12330 (h!17731 Token!3896) (t!112958 List!12388)) )
))
(declare-fun tokens!556 () List!12388)

(declare-fun b!1213922 () Bool)

(declare-fun e!778924 () Bool)

(declare-fun tp!344237 () Bool)

(declare-fun e!778921 () Bool)

(declare-fun inv!16520 (Token!3896) Bool)

(assert (=> b!1213922 (= e!778924 (and (inv!16520 (h!17731 tokens!556)) e!778921 tp!344237))))

(declare-fun b!1213923 () Bool)

(declare-fun e!778932 () Bool)

(declare-fun e!778923 () Bool)

(assert (=> b!1213923 (= e!778932 e!778923)))

(declare-fun res!545848 () Bool)

(assert (=> b!1213923 (=> (not res!545848) (not e!778923))))

(declare-datatypes ((tuple2!12198 0))(
  ( (tuple2!12199 (_1!6946 Token!3896) (_2!6946 List!12387)) )
))
(declare-datatypes ((Option!2479 0))(
  ( (None!2478) (Some!2478 (v!20607 tuple2!12198)) )
))
(declare-fun lt!415055 () Option!2479)

(declare-fun isDefined!2117 (Option!2479) Bool)

(assert (=> b!1213923 (= res!545848 (isDefined!2117 lt!415055))))

(declare-datatypes ((List!12389 0))(
  ( (Nil!12331) (Cons!12331 (h!17732 Rule!4034) (t!112959 List!12389)) )
))
(declare-fun rules!2728 () List!12389)

(declare-fun input!2346 () List!12387)

(declare-datatypes ((LexerInterface!1812 0))(
  ( (LexerInterfaceExt!1809 (__x!8086 Int)) (Lexer!1810) )
))
(declare-fun thiss!20528 () LexerInterface!1812)

(declare-fun maxPrefix!934 (LexerInterface!1812 List!12389 List!12387) Option!2479)

(assert (=> b!1213923 (= lt!415055 (maxPrefix!934 thiss!20528 rules!2728 input!2346))))

(declare-fun b!1213924 () Bool)

(declare-fun e!778931 () Bool)

(declare-fun e!778920 () Bool)

(assert (=> b!1213924 (= e!778931 e!778920)))

(declare-fun res!545851 () Bool)

(assert (=> b!1213924 (=> (not res!545851) (not e!778920))))

(declare-fun lt!415059 () List!12387)

(declare-fun lt!415058 () List!12387)

(assert (=> b!1213924 (= res!545851 (= lt!415059 lt!415058))))

(declare-fun lt!415057 () BalanceConc!8016)

(declare-fun list!4555 (BalanceConc!8016) List!12387)

(assert (=> b!1213924 (= lt!415058 (list!4555 lt!415057))))

(declare-fun lt!415054 () BalanceConc!8016)

(assert (=> b!1213924 (= lt!415059 (list!4555 lt!415054))))

(declare-fun tp!344238 () Bool)

(declare-fun b!1213925 () Bool)

(declare-fun e!778927 () Bool)

(declare-fun inv!16517 (String!15057) Bool)

(declare-fun inv!16521 (TokenValueInjection!4066) Bool)

(assert (=> b!1213925 (= e!778927 (and tp!344238 (inv!16517 (tag!2379 (rule!3540 (h!17731 tokens!556)))) (inv!16521 (transformation!2117 (rule!3540 (h!17731 tokens!556)))) e!778930))))

(declare-fun res!545849 () Bool)

(assert (=> start!108422 (=> (not res!545849) (not e!778932))))

(get-info :version)

(assert (=> start!108422 (= res!545849 ((_ is Lexer!1810) thiss!20528))))

(assert (=> start!108422 e!778932))

(assert (=> start!108422 true))

(declare-fun e!778919 () Bool)

(assert (=> start!108422 e!778919))

(declare-fun e!778928 () Bool)

(assert (=> start!108422 e!778928))

(assert (=> start!108422 e!778924))

(declare-fun b!1213926 () Bool)

(declare-fun e!778926 () Bool)

(declare-fun tp!344236 () Bool)

(assert (=> b!1213926 (= e!778919 (and e!778926 tp!344236))))

(declare-fun e!778922 () Bool)

(assert (=> b!1213927 (= e!778922 (and tp!344243 tp!344242))))

(declare-fun b!1213928 () Bool)

(declare-fun res!545853 () Bool)

(assert (=> b!1213928 (=> (not res!545853) (not e!778932))))

(declare-fun rulesInvariant!1686 (LexerInterface!1812 List!12389) Bool)

(assert (=> b!1213928 (= res!545853 (rulesInvariant!1686 thiss!20528 rules!2728))))

(declare-fun b!1213929 () Bool)

(declare-fun tp!344234 () Bool)

(declare-fun inv!21 (TokenValue!2185) Bool)

(assert (=> b!1213929 (= e!778921 (and (inv!21 (value!68931 (h!17731 tokens!556))) e!778927 tp!344234))))

(declare-fun b!1213930 () Bool)

(declare-fun res!545854 () Bool)

(assert (=> b!1213930 (=> (not res!545854) (not e!778920))))

(declare-fun lt!415056 () tuple2!12198)

(declare-fun matchR!1509 (Regex!3387 List!12387) Bool)

(assert (=> b!1213930 (= res!545854 (matchR!1509 (regex!2117 (rule!3540 (_1!6946 lt!415056))) lt!415059))))

(declare-fun b!1213931 () Bool)

(declare-fun res!545846 () Bool)

(assert (=> b!1213931 (=> (not res!545846) (not e!778932))))

(declare-fun isEmpty!7341 (List!12389) Bool)

(assert (=> b!1213931 (= res!545846 (not (isEmpty!7341 rules!2728)))))

(declare-fun b!1213932 () Bool)

(declare-fun res!545847 () Bool)

(assert (=> b!1213932 (=> (not res!545847) (not e!778920))))

(declare-fun ++!3155 (List!12387 List!12387) List!12387)

(assert (=> b!1213932 (= res!545847 (= (++!3155 lt!415058 (_2!6946 lt!415056)) input!2346))))

(declare-fun b!1213933 () Bool)

(declare-fun tp_is_empty!6295 () Bool)

(declare-fun tp!344241 () Bool)

(assert (=> b!1213933 (= e!778928 (and tp_is_empty!6295 tp!344241))))

(declare-fun b!1213934 () Bool)

(assert (=> b!1213934 (= e!778920 false)))

(declare-fun lt!415053 () Bool)

(declare-fun rulesProduceIndividualToken!820 (LexerInterface!1812 List!12389 Token!3896) Bool)

(assert (=> b!1213934 (= lt!415053 (rulesProduceIndividualToken!820 thiss!20528 rules!2728 (h!17731 tokens!556)))))

(declare-fun b!1213935 () Bool)

(declare-fun e!778929 () Bool)

(assert (=> b!1213935 (= e!778929 e!778931)))

(declare-fun res!545856 () Bool)

(assert (=> b!1213935 (=> (not res!545856) (not e!778931))))

(assert (=> b!1213935 (= res!545856 (= lt!415054 lt!415057))))

(declare-fun charsOf!1123 (Token!3896) BalanceConc!8016)

(assert (=> b!1213935 (= lt!415057 (charsOf!1123 (h!17731 tokens!556)))))

(assert (=> b!1213935 (= lt!415054 (charsOf!1123 (_1!6946 lt!415056)))))

(declare-fun b!1213936 () Bool)

(declare-fun res!545850 () Bool)

(assert (=> b!1213936 (=> (not res!545850) (not e!778932))))

(assert (=> b!1213936 (= res!545850 (not ((_ is Nil!12330) tokens!556)))))

(declare-fun b!1213937 () Bool)

(assert (=> b!1213937 (= e!778923 e!778929)))

(declare-fun res!545852 () Bool)

(assert (=> b!1213937 (=> (not res!545852) (not e!778929))))

(assert (=> b!1213937 (= res!545852 (= (_1!6946 lt!415056) (h!17731 tokens!556)))))

(declare-fun get!4055 (Option!2479) tuple2!12198)

(assert (=> b!1213937 (= lt!415056 (get!4055 lt!415055))))

(declare-fun b!1213938 () Bool)

(declare-fun tp!344240 () Bool)

(assert (=> b!1213938 (= e!778926 (and tp!344240 (inv!16517 (tag!2379 (h!17732 rules!2728))) (inv!16521 (transformation!2117 (h!17732 rules!2728))) e!778922))))

(declare-fun b!1213939 () Bool)

(declare-fun res!545855 () Bool)

(assert (=> b!1213939 (=> (not res!545855) (not e!778932))))

(declare-datatypes ((tuple2!12200 0))(
  ( (tuple2!12201 (_1!6947 List!12388) (_2!6947 List!12387)) )
))
(declare-fun lexList!442 (LexerInterface!1812 List!12389 List!12387) tuple2!12200)

(assert (=> b!1213939 (= res!545855 (= (_1!6947 (lexList!442 thiss!20528 rules!2728 input!2346)) tokens!556))))

(assert (= (and start!108422 res!545849) b!1213931))

(assert (= (and b!1213931 res!545846) b!1213928))

(assert (= (and b!1213928 res!545853) b!1213939))

(assert (= (and b!1213939 res!545855) b!1213936))

(assert (= (and b!1213936 res!545850) b!1213923))

(assert (= (and b!1213923 res!545848) b!1213937))

(assert (= (and b!1213937 res!545852) b!1213935))

(assert (= (and b!1213935 res!545856) b!1213924))

(assert (= (and b!1213924 res!545851) b!1213932))

(assert (= (and b!1213932 res!545847) b!1213930))

(assert (= (and b!1213930 res!545854) b!1213934))

(assert (= b!1213938 b!1213927))

(assert (= b!1213926 b!1213938))

(assert (= (and start!108422 ((_ is Cons!12331) rules!2728)) b!1213926))

(assert (= (and start!108422 ((_ is Cons!12329) input!2346)) b!1213933))

(assert (= b!1213925 b!1213921))

(assert (= b!1213929 b!1213925))

(assert (= b!1213922 b!1213929))

(assert (= (and start!108422 ((_ is Cons!12330) tokens!556)) b!1213922))

(declare-fun m!1388905 () Bool)

(assert (=> b!1213934 m!1388905))

(declare-fun m!1388907 () Bool)

(assert (=> b!1213939 m!1388907))

(declare-fun m!1388909 () Bool)

(assert (=> b!1213924 m!1388909))

(declare-fun m!1388911 () Bool)

(assert (=> b!1213924 m!1388911))

(declare-fun m!1388913 () Bool)

(assert (=> b!1213935 m!1388913))

(declare-fun m!1388915 () Bool)

(assert (=> b!1213935 m!1388915))

(declare-fun m!1388917 () Bool)

(assert (=> b!1213932 m!1388917))

(declare-fun m!1388919 () Bool)

(assert (=> b!1213928 m!1388919))

(declare-fun m!1388921 () Bool)

(assert (=> b!1213925 m!1388921))

(declare-fun m!1388923 () Bool)

(assert (=> b!1213925 m!1388923))

(declare-fun m!1388925 () Bool)

(assert (=> b!1213930 m!1388925))

(declare-fun m!1388927 () Bool)

(assert (=> b!1213923 m!1388927))

(declare-fun m!1388929 () Bool)

(assert (=> b!1213923 m!1388929))

(declare-fun m!1388931 () Bool)

(assert (=> b!1213929 m!1388931))

(declare-fun m!1388933 () Bool)

(assert (=> b!1213922 m!1388933))

(declare-fun m!1388935 () Bool)

(assert (=> b!1213938 m!1388935))

(declare-fun m!1388937 () Bool)

(assert (=> b!1213938 m!1388937))

(declare-fun m!1388939 () Bool)

(assert (=> b!1213937 m!1388939))

(declare-fun m!1388941 () Bool)

(assert (=> b!1213931 m!1388941))

(check-sat (not b!1213932) (not b_next!29725) b_and!82321 (not b!1213935) (not b!1213930) b_and!82327 (not b!1213931) (not b!1213923) (not b!1213925) (not b!1213933) (not b_next!29723) (not b!1213939) (not b_next!29721) (not b_next!29727) (not b!1213926) b_and!82325 (not b!1213934) (not b!1213928) (not b!1213929) (not b!1213938) tp_is_empty!6295 (not b!1213937) (not b!1213922) (not b!1213924) b_and!82323)
(check-sat b_and!82325 (not b_next!29725) b_and!82321 b_and!82327 (not b_next!29723) (not b_next!29721) (not b_next!29727) b_and!82323)
