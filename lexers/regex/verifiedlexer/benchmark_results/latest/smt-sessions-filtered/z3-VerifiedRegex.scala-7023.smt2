; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!372896 () Bool)

(assert start!372896)

(declare-fun b!3964325 () Bool)

(declare-fun b_free!109581 () Bool)

(declare-fun b_next!110285 () Bool)

(assert (=> b!3964325 (= b_free!109581 (not b_next!110285))))

(declare-fun tp!1208391 () Bool)

(declare-fun b_and!304459 () Bool)

(assert (=> b!3964325 (= tp!1208391 b_and!304459)))

(declare-fun b_free!109583 () Bool)

(declare-fun b_next!110287 () Bool)

(assert (=> b!3964325 (= b_free!109583 (not b_next!110287))))

(declare-fun tp!1208383 () Bool)

(declare-fun b_and!304461 () Bool)

(assert (=> b!3964325 (= tp!1208383 b_and!304461)))

(declare-fun b!3964317 () Bool)

(declare-fun b_free!109585 () Bool)

(declare-fun b_next!110289 () Bool)

(assert (=> b!3964317 (= b_free!109585 (not b_next!110289))))

(declare-fun tp!1208392 () Bool)

(declare-fun b_and!304463 () Bool)

(assert (=> b!3964317 (= tp!1208392 b_and!304463)))

(declare-fun b_free!109587 () Bool)

(declare-fun b_next!110291 () Bool)

(assert (=> b!3964317 (= b_free!109587 (not b_next!110291))))

(declare-fun tp!1208388 () Bool)

(declare-fun b_and!304465 () Bool)

(assert (=> b!3964317 (= tp!1208388 b_and!304465)))

(declare-fun b!3964295 () Bool)

(declare-fun b_free!109589 () Bool)

(declare-fun b_next!110293 () Bool)

(assert (=> b!3964295 (= b_free!109589 (not b_next!110293))))

(declare-fun tp!1208395 () Bool)

(declare-fun b_and!304467 () Bool)

(assert (=> b!3964295 (= tp!1208395 b_and!304467)))

(declare-fun b_free!109591 () Bool)

(declare-fun b_next!110295 () Bool)

(assert (=> b!3964295 (= b_free!109591 (not b_next!110295))))

(declare-fun tp!1208393 () Bool)

(declare-fun b_and!304469 () Bool)

(assert (=> b!3964295 (= tp!1208393 b_and!304469)))

(declare-fun b!3964292 () Bool)

(declare-fun res!1604653 () Bool)

(declare-fun e!2455262 () Bool)

(assert (=> b!3964292 (=> (not res!1604653) (not e!2455262))))

(declare-datatypes ((List!42389 0))(
  ( (Nil!42265) (Cons!42265 (h!47685 (_ BitVec 16)) (t!330148 List!42389)) )
))
(declare-datatypes ((TokenValue!6864 0))(
  ( (FloatLiteralValue!13728 (text!48493 List!42389)) (TokenValueExt!6863 (__x!25945 Int)) (Broken!34320 (value!209677 List!42389)) (Object!6987) (End!6864) (Def!6864) (Underscore!6864) (Match!6864) (Else!6864) (Error!6864) (Case!6864) (If!6864) (Extends!6864) (Abstract!6864) (Class!6864) (Val!6864) (DelimiterValue!13728 (del!6924 List!42389)) (KeywordValue!6870 (value!209678 List!42389)) (CommentValue!13728 (value!209679 List!42389)) (WhitespaceValue!13728 (value!209680 List!42389)) (IndentationValue!6864 (value!209681 List!42389)) (String!48037) (Int32!6864) (Broken!34321 (value!209682 List!42389)) (Boolean!6865) (Unit!60882) (OperatorValue!6867 (op!6924 List!42389)) (IdentifierValue!13728 (value!209683 List!42389)) (IdentifierValue!13729 (value!209684 List!42389)) (WhitespaceValue!13729 (value!209685 List!42389)) (True!13728) (False!13728) (Broken!34322 (value!209686 List!42389)) (Broken!34323 (value!209687 List!42389)) (True!13729) (RightBrace!6864) (RightBracket!6864) (Colon!6864) (Null!6864) (Comma!6864) (LeftBracket!6864) (False!13729) (LeftBrace!6864) (ImaginaryLiteralValue!6864 (text!48494 List!42389)) (StringLiteralValue!20592 (value!209688 List!42389)) (EOFValue!6864 (value!209689 List!42389)) (IdentValue!6864 (value!209690 List!42389)) (DelimiterValue!13729 (value!209691 List!42389)) (DedentValue!6864 (value!209692 List!42389)) (NewLineValue!6864 (value!209693 List!42389)) (IntegerValue!20592 (value!209694 (_ BitVec 32)) (text!48495 List!42389)) (IntegerValue!20593 (value!209695 Int) (text!48496 List!42389)) (Times!6864) (Or!6864) (Equal!6864) (Minus!6864) (Broken!34324 (value!209696 List!42389)) (And!6864) (Div!6864) (LessEqual!6864) (Mod!6864) (Concat!18403) (Not!6864) (Plus!6864) (SpaceValue!6864 (value!209697 List!42389)) (IntegerValue!20594 (value!209698 Int) (text!48497 List!42389)) (StringLiteralValue!20593 (text!48498 List!42389)) (FloatLiteralValue!13729 (text!48499 List!42389)) (BytesLiteralValue!6864 (value!209699 List!42389)) (CommentValue!13729 (value!209700 List!42389)) (StringLiteralValue!20594 (value!209701 List!42389)) (ErrorTokenValue!6864 (msg!6925 List!42389)) )
))
(declare-datatypes ((C!23264 0))(
  ( (C!23265 (val!13726 Int)) )
))
(declare-datatypes ((Regex!11539 0))(
  ( (ElementMatch!11539 (c!687772 C!23264)) (Concat!18404 (regOne!23590 Regex!11539) (regTwo!23590 Regex!11539)) (EmptyExpr!11539) (Star!11539 (reg!11868 Regex!11539)) (EmptyLang!11539) (Union!11539 (regOne!23591 Regex!11539) (regTwo!23591 Regex!11539)) )
))
(declare-datatypes ((String!48038 0))(
  ( (String!48039 (value!209702 String)) )
))
(declare-datatypes ((List!42390 0))(
  ( (Nil!42266) (Cons!42266 (h!47686 C!23264) (t!330149 List!42390)) )
))
(declare-datatypes ((IArray!25695 0))(
  ( (IArray!25696 (innerList!12905 List!42390)) )
))
(declare-datatypes ((Conc!12845 0))(
  ( (Node!12845 (left!32044 Conc!12845) (right!32374 Conc!12845) (csize!25920 Int) (cheight!13056 Int)) (Leaf!19869 (xs!16151 IArray!25695) (csize!25921 Int)) (Empty!12845) )
))
(declare-datatypes ((BalanceConc!25284 0))(
  ( (BalanceConc!25285 (c!687773 Conc!12845)) )
))
(declare-datatypes ((TokenValueInjection!13156 0))(
  ( (TokenValueInjection!13157 (toValue!9114 Int) (toChars!8973 Int)) )
))
(declare-datatypes ((Rule!13068 0))(
  ( (Rule!13069 (regex!6634 Regex!11539) (tag!7494 String!48038) (isSeparator!6634 Bool) (transformation!6634 TokenValueInjection!13156)) )
))
(declare-datatypes ((Token!12406 0))(
  ( (Token!12407 (value!209703 TokenValue!6864) (rule!9618 Rule!13068) (size!31638 Int) (originalCharacters!7234 List!42390)) )
))
(declare-datatypes ((List!42391 0))(
  ( (Nil!42267) (Cons!42267 (h!47687 Token!12406) (t!330150 List!42391)) )
))
(declare-fun prefixTokens!80 () List!42391)

(declare-fun isEmpty!25288 (List!42391) Bool)

(assert (=> b!3964292 (= res!1604653 (not (isEmpty!25288 prefixTokens!80)))))

(declare-fun b!3964293 () Bool)

(declare-fun res!1604648 () Bool)

(declare-fun e!2455257 () Bool)

(assert (=> b!3964293 (=> res!1604648 e!2455257)))

(declare-datatypes ((tuple2!41562 0))(
  ( (tuple2!41563 (_1!23915 Token!12406) (_2!23915 List!42390)) )
))
(declare-datatypes ((Option!9054 0))(
  ( (None!9053) (Some!9053 (v!39399 tuple2!41562)) )
))
(declare-fun lt!1388060 () Option!9054)

(declare-fun head!8445 (List!42391) Token!12406)

(assert (=> b!3964293 (= res!1604648 (not (= (head!8445 prefixTokens!80) (_1!23915 (v!39399 lt!1388060)))))))

(declare-fun b!3964294 () Bool)

(declare-fun e!2455242 () Bool)

(assert (=> b!3964294 (= e!2455242 e!2455257)))

(declare-fun res!1604655 () Bool)

(assert (=> b!3964294 (=> res!1604655 e!2455257)))

(declare-fun lt!1388033 () Int)

(declare-fun lt!1388019 () Int)

(assert (=> b!3964294 (= res!1604655 (<= lt!1388033 lt!1388019))))

(declare-datatypes ((Unit!60883 0))(
  ( (Unit!60884) )
))
(declare-fun lt!1388053 () Unit!60883)

(declare-fun e!2455277 () Unit!60883)

(assert (=> b!3964294 (= lt!1388053 e!2455277)))

(declare-fun c!687770 () Bool)

(assert (=> b!3964294 (= c!687770 (= lt!1388033 lt!1388019))))

(declare-fun lt!1388028 () Unit!60883)

(declare-fun e!2455278 () Unit!60883)

(assert (=> b!3964294 (= lt!1388028 e!2455278)))

(declare-fun c!687767 () Bool)

(assert (=> b!3964294 (= c!687767 (< lt!1388033 lt!1388019))))

(declare-fun suffix!1176 () List!42390)

(declare-fun size!31639 (List!42390) Int)

(assert (=> b!3964294 (= lt!1388019 (size!31639 suffix!1176))))

(assert (=> b!3964294 (= lt!1388033 (size!31639 (_2!23915 (v!39399 lt!1388060))))))

(declare-fun e!2455282 () Bool)

(assert (=> b!3964295 (= e!2455282 (and tp!1208395 tp!1208393))))

(declare-fun b!3964296 () Bool)

(declare-fun res!1604636 () Bool)

(assert (=> b!3964296 (=> (not res!1604636) (not e!2455262))))

(declare-datatypes ((List!42392 0))(
  ( (Nil!42268) (Cons!42268 (h!47688 Rule!13068) (t!330151 List!42392)) )
))
(declare-fun rules!2768 () List!42392)

(declare-fun isEmpty!25289 (List!42392) Bool)

(assert (=> b!3964296 (= res!1604636 (not (isEmpty!25289 rules!2768)))))

(declare-fun b!3964297 () Bool)

(declare-fun e!2455263 () Bool)

(declare-fun e!2455272 () Bool)

(assert (=> b!3964297 (= e!2455263 e!2455272)))

(declare-fun res!1604646 () Bool)

(assert (=> b!3964297 (=> res!1604646 e!2455272)))

(declare-fun lt!1388057 () List!42391)

(declare-fun lt!1388044 () List!42391)

(assert (=> b!3964297 (= res!1604646 (not (= lt!1388057 lt!1388044)))))

(declare-fun lt!1388067 () List!42391)

(declare-fun lt!1388029 () List!42391)

(declare-fun ++!11025 (List!42391 List!42391) List!42391)

(assert (=> b!3964297 (= lt!1388057 (++!11025 lt!1388067 lt!1388029))))

(declare-fun lt!1388035 () List!42391)

(declare-fun suffixTokens!72 () List!42391)

(assert (=> b!3964297 (= lt!1388057 (++!11025 (++!11025 lt!1388067 lt!1388035) suffixTokens!72))))

(declare-fun lt!1388022 () Unit!60883)

(declare-fun lemmaConcatAssociativity!2371 (List!42391 List!42391 List!42391) Unit!60883)

(assert (=> b!3964297 (= lt!1388022 (lemmaConcatAssociativity!2371 lt!1388067 lt!1388035 suffixTokens!72))))

(declare-fun lt!1388018 () Unit!60883)

(declare-fun e!2455267 () Unit!60883)

(assert (=> b!3964297 (= lt!1388018 e!2455267)))

(declare-fun c!687771 () Bool)

(declare-fun lt!1388046 () Bool)

(assert (=> b!3964297 (= c!687771 lt!1388046)))

(assert (=> b!3964297 (= lt!1388046 (isEmpty!25288 lt!1388035))))

(declare-fun b!3964298 () Bool)

(declare-fun e!2455253 () Bool)

(declare-fun e!2455255 () Bool)

(assert (=> b!3964298 (= e!2455253 e!2455255)))

(declare-fun res!1604635 () Bool)

(assert (=> b!3964298 (=> (not res!1604635) (not e!2455255))))

(declare-datatypes ((LexerInterface!6223 0))(
  ( (LexerInterfaceExt!6220 (__x!25946 Int)) (Lexer!6221) )
))
(declare-fun thiss!20629 () LexerInterface!6223)

(declare-datatypes ((tuple2!41564 0))(
  ( (tuple2!41565 (_1!23916 List!42391) (_2!23916 List!42390)) )
))
(declare-fun lt!1388037 () tuple2!41564)

(declare-fun lexList!1991 (LexerInterface!6223 List!42392 List!42390) tuple2!41564)

(assert (=> b!3964298 (= res!1604635 (= (lexList!1991 thiss!20629 rules!2768 suffix!1176) lt!1388037))))

(declare-fun suffixResult!91 () List!42390)

(assert (=> b!3964298 (= lt!1388037 (tuple2!41565 suffixTokens!72 suffixResult!91))))

(declare-fun b!3964299 () Bool)

(declare-fun e!2455254 () Bool)

(declare-fun tp_is_empty!20049 () Bool)

(declare-fun tp!1208385 () Bool)

(assert (=> b!3964299 (= e!2455254 (and tp_is_empty!20049 tp!1208385))))

(declare-fun b!3964300 () Bool)

(declare-fun e!2455275 () Bool)

(declare-fun e!2455243 () Bool)

(assert (=> b!3964300 (= e!2455275 (not e!2455243))))

(declare-fun res!1604640 () Bool)

(assert (=> b!3964300 (=> res!1604640 e!2455243)))

(declare-fun lt!1388050 () List!42390)

(declare-fun lt!1388042 () List!42390)

(assert (=> b!3964300 (= res!1604640 (not (= lt!1388050 lt!1388042)))))

(declare-fun lt!1388055 () tuple2!41564)

(assert (=> b!3964300 (= lt!1388055 (lexList!1991 thiss!20629 rules!2768 (_2!23915 (v!39399 lt!1388060))))))

(declare-fun lt!1388031 () Int)

(declare-fun lt!1388036 () TokenValue!6864)

(declare-fun lt!1388041 () List!42390)

(declare-fun lt!1388056 () List!42390)

(assert (=> b!3964300 (and (= (size!31638 (_1!23915 (v!39399 lt!1388060))) lt!1388031) (= (originalCharacters!7234 (_1!23915 (v!39399 lt!1388060))) lt!1388041) (= (v!39399 lt!1388060) (tuple2!41563 (Token!12407 lt!1388036 (rule!9618 (_1!23915 (v!39399 lt!1388060))) lt!1388031 lt!1388041) lt!1388056)))))

(assert (=> b!3964300 (= lt!1388031 (size!31639 lt!1388041))))

(declare-fun e!2455249 () Bool)

(assert (=> b!3964300 e!2455249))

(declare-fun res!1604657 () Bool)

(assert (=> b!3964300 (=> (not res!1604657) (not e!2455249))))

(assert (=> b!3964300 (= res!1604657 (= (value!209703 (_1!23915 (v!39399 lt!1388060))) lt!1388036))))

(declare-fun apply!9865 (TokenValueInjection!13156 BalanceConc!25284) TokenValue!6864)

(declare-fun seqFromList!4893 (List!42390) BalanceConc!25284)

(assert (=> b!3964300 (= lt!1388036 (apply!9865 (transformation!6634 (rule!9618 (_1!23915 (v!39399 lt!1388060)))) (seqFromList!4893 lt!1388041)))))

(assert (=> b!3964300 (= (_2!23915 (v!39399 lt!1388060)) lt!1388056)))

(declare-fun lt!1388034 () Unit!60883)

(declare-fun lemmaSamePrefixThenSameSuffix!1932 (List!42390 List!42390 List!42390 List!42390 List!42390) Unit!60883)

(assert (=> b!3964300 (= lt!1388034 (lemmaSamePrefixThenSameSuffix!1932 lt!1388041 (_2!23915 (v!39399 lt!1388060)) lt!1388041 lt!1388056 lt!1388042))))

(declare-fun getSuffix!2174 (List!42390 List!42390) List!42390)

(assert (=> b!3964300 (= lt!1388056 (getSuffix!2174 lt!1388042 lt!1388041))))

(declare-fun isPrefix!3723 (List!42390 List!42390) Bool)

(assert (=> b!3964300 (isPrefix!3723 lt!1388041 lt!1388050)))

(declare-fun ++!11026 (List!42390 List!42390) List!42390)

(assert (=> b!3964300 (= lt!1388050 (++!11026 lt!1388041 (_2!23915 (v!39399 lt!1388060))))))

(declare-fun lt!1388038 () Unit!60883)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2582 (List!42390 List!42390) Unit!60883)

(assert (=> b!3964300 (= lt!1388038 (lemmaConcatTwoListThenFirstIsPrefix!2582 lt!1388041 (_2!23915 (v!39399 lt!1388060))))))

(declare-fun list!15684 (BalanceConc!25284) List!42390)

(declare-fun charsOf!4452 (Token!12406) BalanceConc!25284)

(assert (=> b!3964300 (= lt!1388041 (list!15684 (charsOf!4452 (_1!23915 (v!39399 lt!1388060)))))))

(declare-fun ruleValid!2576 (LexerInterface!6223 Rule!13068) Bool)

(assert (=> b!3964300 (ruleValid!2576 thiss!20629 (rule!9618 (_1!23915 (v!39399 lt!1388060))))))

(declare-fun lt!1388061 () Unit!60883)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1652 (LexerInterface!6223 Rule!13068 List!42392) Unit!60883)

(assert (=> b!3964300 (= lt!1388061 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1652 thiss!20629 (rule!9618 (_1!23915 (v!39399 lt!1388060))) rules!2768))))

(declare-fun lt!1388027 () Unit!60883)

(declare-fun lemmaCharactersSize!1287 (Token!12406) Unit!60883)

(assert (=> b!3964300 (= lt!1388027 (lemmaCharactersSize!1287 (_1!23915 (v!39399 lt!1388060))))))

(declare-fun b!3964301 () Bool)

(declare-fun Unit!60885 () Unit!60883)

(assert (=> b!3964301 (= e!2455278 Unit!60885)))

(declare-fun b!3964302 () Bool)

(declare-fun e!2455256 () Bool)

(declare-fun e!2455279 () Bool)

(assert (=> b!3964302 (= e!2455256 e!2455279)))

(declare-fun res!1604654 () Bool)

(assert (=> b!3964302 (=> res!1604654 e!2455279)))

(declare-fun lt!1388047 () List!42390)

(declare-fun lt!1388040 () List!42390)

(assert (=> b!3964302 (= res!1604654 (or (not (= lt!1388042 lt!1388047)) (not (= lt!1388042 lt!1388040)) (not (= lt!1388050 lt!1388040))))))

(assert (=> b!3964302 (= lt!1388047 lt!1388040)))

(declare-fun lt!1388054 () List!42390)

(assert (=> b!3964302 (= lt!1388040 (++!11026 lt!1388041 lt!1388054))))

(declare-fun lt!1388059 () List!42390)

(assert (=> b!3964302 (= lt!1388054 (++!11026 lt!1388059 suffix!1176))))

(declare-fun lt!1388039 () Unit!60883)

(declare-fun lemmaConcatAssociativity!2372 (List!42390 List!42390 List!42390) Unit!60883)

(assert (=> b!3964302 (= lt!1388039 (lemmaConcatAssociativity!2372 lt!1388041 lt!1388059 suffix!1176))))

(declare-fun b!3964303 () Bool)

(declare-fun res!1604641 () Bool)

(assert (=> b!3964303 (=> res!1604641 e!2455272)))

(declare-fun lt!1388020 () tuple2!41564)

(assert (=> b!3964303 (= res!1604641 (not (= (lexList!1991 thiss!20629 rules!2768 lt!1388054) lt!1388020)))))

(declare-fun b!3964304 () Bool)

(declare-fun isEmpty!25290 (List!42390) Bool)

(assert (=> b!3964304 (= e!2455272 (not (isEmpty!25290 lt!1388059)))))

(declare-fun b!3964305 () Bool)

(declare-fun e!2455264 () Unit!60883)

(declare-fun Unit!60886 () Unit!60883)

(assert (=> b!3964305 (= e!2455264 Unit!60886)))

(declare-fun lt!1388062 () Unit!60883)

(declare-fun lt!1388065 () tuple2!41562)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!628 (List!42390 List!42390 List!42390 List!42390) Unit!60883)

(assert (=> b!3964305 (= lt!1388062 (lemmaConcatSameAndSameSizesThenSameLists!628 lt!1388041 (_2!23915 (v!39399 lt!1388060)) lt!1388041 (_2!23915 lt!1388065)))))

(assert (=> b!3964305 (= (_2!23915 (v!39399 lt!1388060)) (_2!23915 lt!1388065))))

(declare-fun lt!1388023 () Unit!60883)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!162 (LexerInterface!6223 List!42392 List!42390 List!42390 List!42391 List!42390) Unit!60883)

(assert (=> b!3964305 (= lt!1388023 (lemmaLexWithSmallerInputCannotProduceSameResults!162 thiss!20629 rules!2768 suffix!1176 (_2!23915 lt!1388065) suffixTokens!72 suffixResult!91))))

(declare-fun res!1604642 () Bool)

(declare-fun call!285472 () tuple2!41564)

(assert (=> b!3964305 (= res!1604642 (not (= call!285472 lt!1388037)))))

(declare-fun e!2455258 () Bool)

(assert (=> b!3964305 (=> (not res!1604642) (not e!2455258))))

(assert (=> b!3964305 e!2455258))

(declare-fun b!3964306 () Bool)

(declare-fun e!2455273 () Bool)

(assert (=> b!3964306 (= e!2455273 e!2455263)))

(declare-fun res!1604644 () Bool)

(assert (=> b!3964306 (=> res!1604644 e!2455263)))

(assert (=> b!3964306 (= res!1604644 (not (= lt!1388055 lt!1388020)))))

(assert (=> b!3964306 (= lt!1388020 (tuple2!41565 lt!1388029 suffixResult!91))))

(assert (=> b!3964306 (= lt!1388029 (++!11025 lt!1388035 suffixTokens!72))))

(declare-fun tail!6177 (List!42391) List!42391)

(assert (=> b!3964306 (= lt!1388035 (tail!6177 prefixTokens!80))))

(assert (=> b!3964306 (isPrefix!3723 lt!1388059 lt!1388054)))

(declare-fun lt!1388066 () Unit!60883)

(assert (=> b!3964306 (= lt!1388066 (lemmaConcatTwoListThenFirstIsPrefix!2582 lt!1388059 suffix!1176))))

(declare-fun b!3964307 () Bool)

(declare-fun e!2455280 () Bool)

(assert (=> b!3964307 (= e!2455280 false)))

(declare-fun b!3964308 () Bool)

(declare-fun e!2455260 () Bool)

(assert (=> b!3964308 (= e!2455260 e!2455256)))

(declare-fun res!1604634 () Bool)

(assert (=> b!3964308 (=> res!1604634 e!2455256)))

(assert (=> b!3964308 (= res!1604634 (or (not (= lt!1388047 lt!1388042)) (not (= lt!1388047 lt!1388050))))))

(declare-fun lt!1388051 () List!42390)

(assert (=> b!3964308 (= lt!1388047 (++!11026 lt!1388051 suffix!1176))))

(declare-fun b!3964309 () Bool)

(declare-fun e!2455250 () Bool)

(declare-fun tp!1208382 () Bool)

(declare-fun e!2455266 () Bool)

(declare-fun inv!56491 (Token!12406) Bool)

(assert (=> b!3964309 (= e!2455250 (and (inv!56491 (h!47687 prefixTokens!80)) e!2455266 tp!1208382))))

(declare-fun b!3964310 () Bool)

(declare-fun tp!1208390 () Bool)

(declare-fun e!2455247 () Bool)

(declare-fun e!2455259 () Bool)

(assert (=> b!3964310 (= e!2455247 (and (inv!56491 (h!47687 suffixTokens!72)) e!2455259 tp!1208390))))

(declare-fun b!3964311 () Bool)

(declare-fun res!1604645 () Bool)

(assert (=> b!3964311 (=> (not res!1604645) (not e!2455262))))

(declare-fun prefix!426 () List!42390)

(assert (=> b!3964311 (= res!1604645 (not (isEmpty!25290 prefix!426)))))

(declare-fun b!3964312 () Bool)

(declare-fun e!2455244 () Bool)

(declare-fun tp!1208394 () Bool)

(assert (=> b!3964312 (= e!2455244 (and tp_is_empty!20049 tp!1208394))))

(declare-fun b!3964313 () Bool)

(declare-fun c!687769 () Bool)

(declare-fun lt!1388024 () List!42391)

(assert (=> b!3964313 (= c!687769 (isEmpty!25288 lt!1388024))))

(assert (=> b!3964313 (= lt!1388024 (tail!6177 prefixTokens!80))))

(declare-fun e!2455274 () Unit!60883)

(assert (=> b!3964313 (= e!2455274 e!2455264)))

(declare-fun e!2455246 () Bool)

(declare-fun tp!1208386 () Bool)

(declare-fun b!3964314 () Bool)

(declare-fun e!2455271 () Bool)

(declare-fun inv!56488 (String!48038) Bool)

(declare-fun inv!56492 (TokenValueInjection!13156) Bool)

(assert (=> b!3964314 (= e!2455246 (and tp!1208386 (inv!56488 (tag!7494 (rule!9618 (h!47687 prefixTokens!80)))) (inv!56492 (transformation!6634 (rule!9618 (h!47687 prefixTokens!80)))) e!2455271))))

(declare-fun b!3964315 () Bool)

(assert (=> b!3964315 (= e!2455258 false)))

(declare-fun b!3964316 () Bool)

(declare-fun Unit!60887 () Unit!60883)

(assert (=> b!3964316 (= e!2455277 Unit!60887)))

(declare-fun lt!1388058 () Unit!60883)

(assert (=> b!3964316 (= lt!1388058 (lemmaConcatTwoListThenFirstIsPrefix!2582 prefix!426 suffix!1176))))

(assert (=> b!3964316 (isPrefix!3723 prefix!426 lt!1388042)))

(declare-fun lt!1388052 () Unit!60883)

(declare-fun lemmaIsPrefixSameLengthThenSameList!845 (List!42390 List!42390 List!42390) Unit!60883)

(assert (=> b!3964316 (= lt!1388052 (lemmaIsPrefixSameLengthThenSameList!845 lt!1388041 prefix!426 lt!1388042))))

(assert (=> b!3964316 (= lt!1388041 prefix!426)))

(declare-fun lt!1388064 () Unit!60883)

(assert (=> b!3964316 (= lt!1388064 (lemmaSamePrefixThenSameSuffix!1932 lt!1388041 (_2!23915 (v!39399 lt!1388060)) prefix!426 suffix!1176 lt!1388042))))

(assert (=> b!3964316 false))

(assert (=> b!3964317 (= e!2455271 (and tp!1208392 tp!1208388))))

(declare-fun b!3964318 () Bool)

(declare-fun res!1604652 () Bool)

(assert (=> b!3964318 (=> (not res!1604652) (not e!2455262))))

(declare-fun rulesInvariant!5566 (LexerInterface!6223 List!42392) Bool)

(assert (=> b!3964318 (= res!1604652 (rulesInvariant!5566 thiss!20629 rules!2768))))

(declare-fun res!1604639 () Bool)

(assert (=> start!372896 (=> (not res!1604639) (not e!2455262))))

(get-info :version)

(assert (=> start!372896 (= res!1604639 ((_ is Lexer!6221) thiss!20629))))

(assert (=> start!372896 e!2455262))

(assert (=> start!372896 e!2455254))

(assert (=> start!372896 true))

(declare-fun e!2455268 () Bool)

(assert (=> start!372896 e!2455268))

(declare-fun e!2455276 () Bool)

(assert (=> start!372896 e!2455276))

(assert (=> start!372896 e!2455250))

(assert (=> start!372896 e!2455247))

(assert (=> start!372896 e!2455244))

(declare-fun b!3964319 () Bool)

(assert (=> b!3964319 (= e!2455255 e!2455275)))

(declare-fun res!1604658 () Bool)

(assert (=> b!3964319 (=> (not res!1604658) (not e!2455275))))

(assert (=> b!3964319 (= res!1604658 ((_ is Some!9053) lt!1388060))))

(declare-fun maxPrefix!3527 (LexerInterface!6223 List!42392 List!42390) Option!9054)

(assert (=> b!3964319 (= lt!1388060 (maxPrefix!3527 thiss!20629 rules!2768 lt!1388042))))

(declare-fun e!2455251 () Bool)

(declare-fun b!3964320 () Bool)

(declare-fun e!2455269 () Bool)

(declare-fun tp!1208389 () Bool)

(assert (=> b!3964320 (= e!2455251 (and tp!1208389 (inv!56488 (tag!7494 (h!47688 rules!2768))) (inv!56492 (transformation!6634 (h!47688 rules!2768))) e!2455269))))

(declare-fun b!3964321 () Bool)

(assert (=> b!3964321 (= e!2455262 e!2455253)))

(declare-fun res!1604651 () Bool)

(assert (=> b!3964321 (=> (not res!1604651) (not e!2455253))))

(declare-fun lt!1388045 () tuple2!41564)

(assert (=> b!3964321 (= res!1604651 (= lt!1388045 (tuple2!41565 lt!1388044 suffixResult!91)))))

(assert (=> b!3964321 (= lt!1388045 (lexList!1991 thiss!20629 rules!2768 lt!1388042))))

(assert (=> b!3964321 (= lt!1388044 (++!11025 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3964321 (= lt!1388042 (++!11026 prefix!426 suffix!1176))))

(declare-fun b!3964322 () Bool)

(declare-fun Unit!60888 () Unit!60883)

(assert (=> b!3964322 (= e!2455267 Unit!60888)))

(declare-fun lt!1388048 () Unit!60883)

(assert (=> b!3964322 (= lt!1388048 (lemmaLexWithSmallerInputCannotProduceSameResults!162 thiss!20629 rules!2768 (_2!23915 (v!39399 lt!1388060)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> b!3964322 false))

(declare-fun b!3964323 () Bool)

(declare-fun res!1604649 () Bool)

(assert (=> b!3964323 (=> res!1604649 e!2455272)))

(assert (=> b!3964323 (= res!1604649 lt!1388046)))

(declare-fun b!3964324 () Bool)

(declare-fun Unit!60889 () Unit!60883)

(assert (=> b!3964324 (= e!2455264 Unit!60889)))

(declare-fun lt!1388025 () Unit!60883)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!162 (LexerInterface!6223 List!42392 List!42390 List!42390 List!42391 List!42390 List!42391) Unit!60883)

(assert (=> b!3964324 (= lt!1388025 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!162 thiss!20629 rules!2768 suffix!1176 (_2!23915 lt!1388065) suffixTokens!72 suffixResult!91 lt!1388024))))

(declare-fun res!1604638 () Bool)

(assert (=> b!3964324 (= res!1604638 (not (= call!285472 (tuple2!41565 (++!11025 lt!1388024 suffixTokens!72) suffixResult!91))))))

(assert (=> b!3964324 (=> (not res!1604638) (not e!2455280))))

(assert (=> b!3964324 e!2455280))

(assert (=> b!3964325 (= e!2455269 (and tp!1208391 tp!1208383))))

(declare-fun b!3964326 () Bool)

(declare-fun Unit!60890 () Unit!60883)

(assert (=> b!3964326 (= e!2455277 Unit!60890)))

(declare-fun bm!285467 () Bool)

(assert (=> bm!285467 (= call!285472 (lexList!1991 thiss!20629 rules!2768 (_2!23915 lt!1388065)))))

(declare-fun b!3964327 () Bool)

(declare-fun Unit!60891 () Unit!60883)

(assert (=> b!3964327 (= e!2455267 Unit!60891)))

(declare-fun b!3964328 () Bool)

(declare-fun e!2455281 () Bool)

(assert (=> b!3964328 (= e!2455257 e!2455281)))

(declare-fun res!1604656 () Bool)

(assert (=> b!3964328 (=> res!1604656 e!2455281)))

(assert (=> b!3964328 (= res!1604656 (>= lt!1388031 (size!31639 prefix!426)))))

(assert (=> b!3964328 (isPrefix!3723 lt!1388041 prefix!426)))

(declare-fun lt!1388021 () Unit!60883)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!319 (List!42390 List!42390 List!42390) Unit!60883)

(assert (=> b!3964328 (= lt!1388021 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!319 prefix!426 lt!1388041 lt!1388042))))

(assert (=> b!3964328 (isPrefix!3723 prefix!426 lt!1388042)))

(declare-fun lt!1388043 () Unit!60883)

(assert (=> b!3964328 (= lt!1388043 (lemmaConcatTwoListThenFirstIsPrefix!2582 prefix!426 suffix!1176))))

(declare-fun b!3964329 () Bool)

(declare-fun tp!1208397 () Bool)

(declare-fun inv!21 (TokenValue!6864) Bool)

(assert (=> b!3964329 (= e!2455266 (and (inv!21 (value!209703 (h!47687 prefixTokens!80))) e!2455246 tp!1208397))))

(declare-fun b!3964330 () Bool)

(declare-fun res!1604647 () Bool)

(assert (=> b!3964330 (=> res!1604647 e!2455242)))

(assert (=> b!3964330 (= res!1604647 (or (not (= lt!1388055 (tuple2!41565 (_1!23916 lt!1388055) (_2!23916 lt!1388055)))) (= (_2!23915 (v!39399 lt!1388060)) suffix!1176)))))

(declare-fun b!3964331 () Bool)

(assert (=> b!3964331 (= e!2455249 (= (size!31638 (_1!23915 (v!39399 lt!1388060))) (size!31639 (originalCharacters!7234 (_1!23915 (v!39399 lt!1388060))))))))

(declare-fun b!3964332 () Bool)

(assert (=> b!3964332 (= e!2455279 e!2455273)))

(declare-fun res!1604650 () Bool)

(assert (=> b!3964332 (=> res!1604650 e!2455273)))

(assert (=> b!3964332 (= res!1604650 (not (= lt!1388054 (_2!23915 (v!39399 lt!1388060)))))))

(assert (=> b!3964332 (= (_2!23915 (v!39399 lt!1388060)) lt!1388054)))

(declare-fun lt!1388026 () Unit!60883)

(assert (=> b!3964332 (= lt!1388026 (lemmaSamePrefixThenSameSuffix!1932 lt!1388041 (_2!23915 (v!39399 lt!1388060)) lt!1388041 lt!1388054 lt!1388042))))

(assert (=> b!3964332 (isPrefix!3723 lt!1388041 lt!1388040)))

(declare-fun lt!1388032 () Unit!60883)

(assert (=> b!3964332 (= lt!1388032 (lemmaConcatTwoListThenFirstIsPrefix!2582 lt!1388041 lt!1388054))))

(declare-fun tp!1208384 () Bool)

(declare-fun e!2455248 () Bool)

(declare-fun b!3964333 () Bool)

(assert (=> b!3964333 (= e!2455259 (and (inv!21 (value!209703 (h!47687 suffixTokens!72))) e!2455248 tp!1208384))))

(declare-fun b!3964334 () Bool)

(declare-fun tp!1208396 () Bool)

(assert (=> b!3964334 (= e!2455276 (and e!2455251 tp!1208396))))

(declare-fun b!3964335 () Bool)

(declare-fun Unit!60892 () Unit!60883)

(assert (=> b!3964335 (= e!2455278 Unit!60892)))

(declare-fun lt!1388030 () Int)

(assert (=> b!3964335 (= lt!1388030 (size!31639 lt!1388042))))

(declare-fun lt!1388049 () Unit!60883)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1403 (LexerInterface!6223 List!42392 List!42390 List!42390 List!42390 Rule!13068) Unit!60883)

(assert (=> b!3964335 (= lt!1388049 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1403 thiss!20629 rules!2768 lt!1388041 lt!1388042 (_2!23915 (v!39399 lt!1388060)) (rule!9618 (_1!23915 (v!39399 lt!1388060)))))))

(declare-fun maxPrefixOneRule!2577 (LexerInterface!6223 Rule!13068 List!42390) Option!9054)

(assert (=> b!3964335 (= (maxPrefixOneRule!2577 thiss!20629 (rule!9618 (_1!23915 (v!39399 lt!1388060))) lt!1388042) (Some!9053 (tuple2!41563 (Token!12407 lt!1388036 (rule!9618 (_1!23915 (v!39399 lt!1388060))) lt!1388031 lt!1388041) (_2!23915 (v!39399 lt!1388060)))))))

(declare-fun get!13941 (Option!9054) tuple2!41562)

(assert (=> b!3964335 (= lt!1388065 (get!13941 lt!1388060))))

(declare-fun c!687768 () Bool)

(assert (=> b!3964335 (= c!687768 (< (size!31639 (_2!23915 lt!1388065)) lt!1388019))))

(declare-fun lt!1388063 () Unit!60883)

(assert (=> b!3964335 (= lt!1388063 e!2455274)))

(assert (=> b!3964335 false))

(declare-fun b!3964336 () Bool)

(assert (=> b!3964336 (= e!2455243 e!2455242)))

(declare-fun res!1604643 () Bool)

(assert (=> b!3964336 (=> res!1604643 e!2455242)))

(assert (=> b!3964336 (= res!1604643 (not (= lt!1388045 (tuple2!41565 (++!11025 lt!1388067 (_1!23916 lt!1388055)) (_2!23916 lt!1388055)))))))

(assert (=> b!3964336 (= lt!1388067 (Cons!42267 (_1!23915 (v!39399 lt!1388060)) Nil!42267))))

(declare-fun b!3964337 () Bool)

(declare-fun tp!1208398 () Bool)

(assert (=> b!3964337 (= e!2455268 (and tp_is_empty!20049 tp!1208398))))

(declare-fun b!3964338 () Bool)

(assert (=> b!3964338 (= e!2455281 e!2455260)))

(declare-fun res!1604637 () Bool)

(assert (=> b!3964338 (=> res!1604637 e!2455260)))

(assert (=> b!3964338 (= res!1604637 (not (= lt!1388051 prefix!426)))))

(assert (=> b!3964338 (= lt!1388051 (++!11026 lt!1388041 lt!1388059))))

(assert (=> b!3964338 (= lt!1388059 (getSuffix!2174 prefix!426 lt!1388041))))

(declare-fun b!3964339 () Bool)

(declare-fun tp!1208387 () Bool)

(assert (=> b!3964339 (= e!2455248 (and tp!1208387 (inv!56488 (tag!7494 (rule!9618 (h!47687 suffixTokens!72)))) (inv!56492 (transformation!6634 (rule!9618 (h!47687 suffixTokens!72)))) e!2455282))))

(declare-fun b!3964340 () Bool)

(declare-fun Unit!60893 () Unit!60883)

(assert (=> b!3964340 (= e!2455274 Unit!60893)))

(assert (= (and start!372896 res!1604639) b!3964296))

(assert (= (and b!3964296 res!1604636) b!3964318))

(assert (= (and b!3964318 res!1604652) b!3964292))

(assert (= (and b!3964292 res!1604653) b!3964311))

(assert (= (and b!3964311 res!1604645) b!3964321))

(assert (= (and b!3964321 res!1604651) b!3964298))

(assert (= (and b!3964298 res!1604635) b!3964319))

(assert (= (and b!3964319 res!1604658) b!3964300))

(assert (= (and b!3964300 res!1604657) b!3964331))

(assert (= (and b!3964300 (not res!1604640)) b!3964336))

(assert (= (and b!3964336 (not res!1604643)) b!3964330))

(assert (= (and b!3964330 (not res!1604647)) b!3964294))

(assert (= (and b!3964294 c!687767) b!3964335))

(assert (= (and b!3964294 (not c!687767)) b!3964301))

(assert (= (and b!3964335 c!687768) b!3964313))

(assert (= (and b!3964335 (not c!687768)) b!3964340))

(assert (= (and b!3964313 c!687769) b!3964305))

(assert (= (and b!3964313 (not c!687769)) b!3964324))

(assert (= (and b!3964305 res!1604642) b!3964315))

(assert (= (and b!3964324 res!1604638) b!3964307))

(assert (= (or b!3964305 b!3964324) bm!285467))

(assert (= (and b!3964294 c!687770) b!3964316))

(assert (= (and b!3964294 (not c!687770)) b!3964326))

(assert (= (and b!3964294 (not res!1604655)) b!3964293))

(assert (= (and b!3964293 (not res!1604648)) b!3964328))

(assert (= (and b!3964328 (not res!1604656)) b!3964338))

(assert (= (and b!3964338 (not res!1604637)) b!3964308))

(assert (= (and b!3964308 (not res!1604634)) b!3964302))

(assert (= (and b!3964302 (not res!1604654)) b!3964332))

(assert (= (and b!3964332 (not res!1604650)) b!3964306))

(assert (= (and b!3964306 (not res!1604644)) b!3964297))

(assert (= (and b!3964297 c!687771) b!3964322))

(assert (= (and b!3964297 (not c!687771)) b!3964327))

(assert (= (and b!3964297 (not res!1604646)) b!3964303))

(assert (= (and b!3964303 (not res!1604641)) b!3964323))

(assert (= (and b!3964323 (not res!1604649)) b!3964304))

(assert (= (and start!372896 ((_ is Cons!42266) suffixResult!91)) b!3964299))

(assert (= (and start!372896 ((_ is Cons!42266) suffix!1176)) b!3964337))

(assert (= b!3964320 b!3964325))

(assert (= b!3964334 b!3964320))

(assert (= (and start!372896 ((_ is Cons!42268) rules!2768)) b!3964334))

(assert (= b!3964314 b!3964317))

(assert (= b!3964329 b!3964314))

(assert (= b!3964309 b!3964329))

(assert (= (and start!372896 ((_ is Cons!42267) prefixTokens!80)) b!3964309))

(assert (= b!3964339 b!3964295))

(assert (= b!3964333 b!3964339))

(assert (= b!3964310 b!3964333))

(assert (= (and start!372896 ((_ is Cons!42267) suffixTokens!72)) b!3964310))

(assert (= (and start!372896 ((_ is Cons!42266) prefix!426)) b!3964312))

(declare-fun m!4533607 () Bool)

(assert (=> b!3964316 m!4533607))

(declare-fun m!4533609 () Bool)

(assert (=> b!3964316 m!4533609))

(declare-fun m!4533611 () Bool)

(assert (=> b!3964316 m!4533611))

(declare-fun m!4533613 () Bool)

(assert (=> b!3964316 m!4533613))

(declare-fun m!4533615 () Bool)

(assert (=> b!3964331 m!4533615))

(declare-fun m!4533617 () Bool)

(assert (=> b!3964321 m!4533617))

(declare-fun m!4533619 () Bool)

(assert (=> b!3964321 m!4533619))

(declare-fun m!4533621 () Bool)

(assert (=> b!3964321 m!4533621))

(declare-fun m!4533623 () Bool)

(assert (=> b!3964298 m!4533623))

(declare-fun m!4533625 () Bool)

(assert (=> b!3964335 m!4533625))

(declare-fun m!4533627 () Bool)

(assert (=> b!3964335 m!4533627))

(declare-fun m!4533629 () Bool)

(assert (=> b!3964335 m!4533629))

(declare-fun m!4533631 () Bool)

(assert (=> b!3964335 m!4533631))

(declare-fun m!4533633 () Bool)

(assert (=> b!3964335 m!4533633))

(declare-fun m!4533635 () Bool)

(assert (=> b!3964333 m!4533635))

(declare-fun m!4533637 () Bool)

(assert (=> b!3964320 m!4533637))

(declare-fun m!4533639 () Bool)

(assert (=> b!3964320 m!4533639))

(declare-fun m!4533641 () Bool)

(assert (=> b!3964328 m!4533641))

(declare-fun m!4533643 () Bool)

(assert (=> b!3964328 m!4533643))

(assert (=> b!3964328 m!4533607))

(assert (=> b!3964328 m!4533609))

(declare-fun m!4533645 () Bool)

(assert (=> b!3964328 m!4533645))

(declare-fun m!4533647 () Bool)

(assert (=> b!3964319 m!4533647))

(declare-fun m!4533649 () Bool)

(assert (=> b!3964311 m!4533649))

(declare-fun m!4533651 () Bool)

(assert (=> b!3964310 m!4533651))

(declare-fun m!4533653 () Bool)

(assert (=> b!3964332 m!4533653))

(declare-fun m!4533655 () Bool)

(assert (=> b!3964332 m!4533655))

(declare-fun m!4533657 () Bool)

(assert (=> b!3964332 m!4533657))

(declare-fun m!4533659 () Bool)

(assert (=> b!3964297 m!4533659))

(declare-fun m!4533661 () Bool)

(assert (=> b!3964297 m!4533661))

(declare-fun m!4533663 () Bool)

(assert (=> b!3964297 m!4533663))

(declare-fun m!4533665 () Bool)

(assert (=> b!3964297 m!4533665))

(declare-fun m!4533667 () Bool)

(assert (=> b!3964297 m!4533667))

(assert (=> b!3964297 m!4533663))

(declare-fun m!4533669 () Bool)

(assert (=> b!3964302 m!4533669))

(declare-fun m!4533671 () Bool)

(assert (=> b!3964302 m!4533671))

(declare-fun m!4533673 () Bool)

(assert (=> b!3964302 m!4533673))

(declare-fun m!4533675 () Bool)

(assert (=> b!3964292 m!4533675))

(declare-fun m!4533677 () Bool)

(assert (=> b!3964294 m!4533677))

(declare-fun m!4533679 () Bool)

(assert (=> b!3964294 m!4533679))

(declare-fun m!4533681 () Bool)

(assert (=> b!3964313 m!4533681))

(declare-fun m!4533683 () Bool)

(assert (=> b!3964313 m!4533683))

(declare-fun m!4533685 () Bool)

(assert (=> b!3964300 m!4533685))

(declare-fun m!4533687 () Bool)

(assert (=> b!3964300 m!4533687))

(declare-fun m!4533689 () Bool)

(assert (=> b!3964300 m!4533689))

(declare-fun m!4533691 () Bool)

(assert (=> b!3964300 m!4533691))

(declare-fun m!4533693 () Bool)

(assert (=> b!3964300 m!4533693))

(declare-fun m!4533695 () Bool)

(assert (=> b!3964300 m!4533695))

(declare-fun m!4533697 () Bool)

(assert (=> b!3964300 m!4533697))

(declare-fun m!4533699 () Bool)

(assert (=> b!3964300 m!4533699))

(declare-fun m!4533701 () Bool)

(assert (=> b!3964300 m!4533701))

(declare-fun m!4533703 () Bool)

(assert (=> b!3964300 m!4533703))

(declare-fun m!4533705 () Bool)

(assert (=> b!3964300 m!4533705))

(assert (=> b!3964300 m!4533697))

(declare-fun m!4533707 () Bool)

(assert (=> b!3964300 m!4533707))

(declare-fun m!4533709 () Bool)

(assert (=> b!3964300 m!4533709))

(declare-fun m!4533711 () Bool)

(assert (=> b!3964300 m!4533711))

(assert (=> b!3964300 m!4533691))

(declare-fun m!4533713 () Bool)

(assert (=> b!3964305 m!4533713))

(declare-fun m!4533715 () Bool)

(assert (=> b!3964305 m!4533715))

(declare-fun m!4533717 () Bool)

(assert (=> b!3964324 m!4533717))

(declare-fun m!4533719 () Bool)

(assert (=> b!3964324 m!4533719))

(declare-fun m!4533721 () Bool)

(assert (=> b!3964322 m!4533721))

(declare-fun m!4533723 () Bool)

(assert (=> b!3964309 m!4533723))

(declare-fun m!4533725 () Bool)

(assert (=> b!3964293 m!4533725))

(declare-fun m!4533727 () Bool)

(assert (=> b!3964303 m!4533727))

(declare-fun m!4533729 () Bool)

(assert (=> b!3964318 m!4533729))

(declare-fun m!4533731 () Bool)

(assert (=> b!3964336 m!4533731))

(declare-fun m!4533733 () Bool)

(assert (=> b!3964296 m!4533733))

(declare-fun m!4533735 () Bool)

(assert (=> b!3964338 m!4533735))

(declare-fun m!4533737 () Bool)

(assert (=> b!3964338 m!4533737))

(declare-fun m!4533739 () Bool)

(assert (=> bm!285467 m!4533739))

(declare-fun m!4533741 () Bool)

(assert (=> b!3964306 m!4533741))

(assert (=> b!3964306 m!4533683))

(declare-fun m!4533743 () Bool)

(assert (=> b!3964306 m!4533743))

(declare-fun m!4533745 () Bool)

(assert (=> b!3964306 m!4533745))

(declare-fun m!4533747 () Bool)

(assert (=> b!3964308 m!4533747))

(declare-fun m!4533749 () Bool)

(assert (=> b!3964329 m!4533749))

(declare-fun m!4533751 () Bool)

(assert (=> b!3964304 m!4533751))

(declare-fun m!4533753 () Bool)

(assert (=> b!3964339 m!4533753))

(declare-fun m!4533755 () Bool)

(assert (=> b!3964339 m!4533755))

(declare-fun m!4533757 () Bool)

(assert (=> b!3964314 m!4533757))

(declare-fun m!4533759 () Bool)

(assert (=> b!3964314 m!4533759))

(check-sat (not b!3964338) (not b!3964293) b_and!304469 (not b!3964322) (not b!3964339) (not b!3964334) (not b!3964300) (not b!3964331) (not b!3964298) (not b!3964319) (not b!3964304) (not b!3964311) b_and!304463 (not b!3964305) b_and!304461 (not b_next!110285) (not b!3964302) (not b_next!110293) (not b!3964296) (not b!3964332) (not b!3964303) (not b!3964320) (not b!3964333) (not b_next!110295) (not b_next!110287) (not b!3964312) (not b!3964328) b_and!304459 (not b!3964294) (not b!3964299) (not b!3964316) (not b!3964329) (not b!3964324) (not b!3964336) (not b_next!110289) b_and!304465 (not bm!285467) (not b!3964308) (not b!3964314) (not b!3964335) (not b!3964297) (not b!3964306) (not b_next!110291) (not b!3964309) (not b!3964310) b_and!304467 (not b!3964337) (not b!3964318) (not b!3964313) (not b!3964321) (not b!3964292) tp_is_empty!20049)
(check-sat b_and!304463 (not b_next!110293) b_and!304459 b_and!304469 (not b_next!110289) b_and!304465 (not b_next!110291) b_and!304467 b_and!304461 (not b_next!110285) (not b_next!110295) (not b_next!110287))
(get-model)

(declare-fun d!1174272 () Bool)

(assert (=> d!1174272 (= (head!8445 prefixTokens!80) (h!47687 prefixTokens!80))))

(assert (=> b!3964293 d!1174272))

(declare-fun d!1174274 () Bool)

(assert (=> d!1174274 (= (inv!56488 (tag!7494 (rule!9618 (h!47687 prefixTokens!80)))) (= (mod (str.len (value!209702 (tag!7494 (rule!9618 (h!47687 prefixTokens!80))))) 2) 0))))

(assert (=> b!3964314 d!1174274))

(declare-fun d!1174276 () Bool)

(declare-fun res!1604693 () Bool)

(declare-fun e!2455320 () Bool)

(assert (=> d!1174276 (=> (not res!1604693) (not e!2455320))))

(declare-fun semiInverseModEq!2857 (Int Int) Bool)

(assert (=> d!1174276 (= res!1604693 (semiInverseModEq!2857 (toChars!8973 (transformation!6634 (rule!9618 (h!47687 prefixTokens!80)))) (toValue!9114 (transformation!6634 (rule!9618 (h!47687 prefixTokens!80))))))))

(assert (=> d!1174276 (= (inv!56492 (transformation!6634 (rule!9618 (h!47687 prefixTokens!80)))) e!2455320)))

(declare-fun b!3964400 () Bool)

(declare-fun equivClasses!2756 (Int Int) Bool)

(assert (=> b!3964400 (= e!2455320 (equivClasses!2756 (toChars!8973 (transformation!6634 (rule!9618 (h!47687 prefixTokens!80)))) (toValue!9114 (transformation!6634 (rule!9618 (h!47687 prefixTokens!80))))))))

(assert (= (and d!1174276 res!1604693) b!3964400))

(declare-fun m!4533823 () Bool)

(assert (=> d!1174276 m!4533823))

(declare-fun m!4533825 () Bool)

(assert (=> b!3964400 m!4533825))

(assert (=> b!3964314 d!1174276))

(declare-fun d!1174284 () Bool)

(assert (=> d!1174284 (= (isEmpty!25288 prefixTokens!80) ((_ is Nil!42267) prefixTokens!80))))

(assert (=> b!3964292 d!1174284))

(declare-fun lt!1388113 () List!42391)

(declare-fun b!3964439 () Bool)

(declare-fun e!2455341 () Bool)

(assert (=> b!3964439 (= e!2455341 (or (not (= (_1!23916 lt!1388055) Nil!42267)) (= lt!1388113 lt!1388067)))))

(declare-fun b!3964436 () Bool)

(declare-fun e!2455342 () List!42391)

(assert (=> b!3964436 (= e!2455342 (_1!23916 lt!1388055))))

(declare-fun d!1174286 () Bool)

(assert (=> d!1174286 e!2455341))

(declare-fun res!1604704 () Bool)

(assert (=> d!1174286 (=> (not res!1604704) (not e!2455341))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6418 (List!42391) (InoxSet Token!12406))

(assert (=> d!1174286 (= res!1604704 (= (content!6418 lt!1388113) ((_ map or) (content!6418 lt!1388067) (content!6418 (_1!23916 lt!1388055)))))))

(assert (=> d!1174286 (= lt!1388113 e!2455342)))

(declare-fun c!687799 () Bool)

(assert (=> d!1174286 (= c!687799 ((_ is Nil!42267) lt!1388067))))

(assert (=> d!1174286 (= (++!11025 lt!1388067 (_1!23916 lt!1388055)) lt!1388113)))

(declare-fun b!3964438 () Bool)

(declare-fun res!1604705 () Bool)

(assert (=> b!3964438 (=> (not res!1604705) (not e!2455341))))

(declare-fun size!31641 (List!42391) Int)

(assert (=> b!3964438 (= res!1604705 (= (size!31641 lt!1388113) (+ (size!31641 lt!1388067) (size!31641 (_1!23916 lt!1388055)))))))

(declare-fun b!3964437 () Bool)

(assert (=> b!3964437 (= e!2455342 (Cons!42267 (h!47687 lt!1388067) (++!11025 (t!330150 lt!1388067) (_1!23916 lt!1388055))))))

(assert (= (and d!1174286 c!687799) b!3964436))

(assert (= (and d!1174286 (not c!687799)) b!3964437))

(assert (= (and d!1174286 res!1604704) b!3964438))

(assert (= (and b!3964438 res!1604705) b!3964439))

(declare-fun m!4533863 () Bool)

(assert (=> d!1174286 m!4533863))

(declare-fun m!4533865 () Bool)

(assert (=> d!1174286 m!4533865))

(declare-fun m!4533867 () Bool)

(assert (=> d!1174286 m!4533867))

(declare-fun m!4533869 () Bool)

(assert (=> b!3964438 m!4533869))

(declare-fun m!4533871 () Bool)

(assert (=> b!3964438 m!4533871))

(declare-fun m!4533873 () Bool)

(assert (=> b!3964438 m!4533873))

(declare-fun m!4533875 () Bool)

(assert (=> b!3964437 m!4533875))

(assert (=> b!3964336 d!1174286))

(declare-fun d!1174300 () Bool)

(declare-fun lt!1388121 () Int)

(assert (=> d!1174300 (>= lt!1388121 0)))

(declare-fun e!2455354 () Int)

(assert (=> d!1174300 (= lt!1388121 e!2455354)))

(declare-fun c!687805 () Bool)

(assert (=> d!1174300 (= c!687805 ((_ is Nil!42266) suffix!1176))))

(assert (=> d!1174300 (= (size!31639 suffix!1176) lt!1388121)))

(declare-fun b!3964460 () Bool)

(assert (=> b!3964460 (= e!2455354 0)))

(declare-fun b!3964461 () Bool)

(assert (=> b!3964461 (= e!2455354 (+ 1 (size!31639 (t!330149 suffix!1176))))))

(assert (= (and d!1174300 c!687805) b!3964460))

(assert (= (and d!1174300 (not c!687805)) b!3964461))

(declare-fun m!4533907 () Bool)

(assert (=> b!3964461 m!4533907))

(assert (=> b!3964294 d!1174300))

(declare-fun d!1174312 () Bool)

(declare-fun lt!1388122 () Int)

(assert (=> d!1174312 (>= lt!1388122 0)))

(declare-fun e!2455355 () Int)

(assert (=> d!1174312 (= lt!1388122 e!2455355)))

(declare-fun c!687806 () Bool)

(assert (=> d!1174312 (= c!687806 ((_ is Nil!42266) (_2!23915 (v!39399 lt!1388060))))))

(assert (=> d!1174312 (= (size!31639 (_2!23915 (v!39399 lt!1388060))) lt!1388122)))

(declare-fun b!3964462 () Bool)

(assert (=> b!3964462 (= e!2455355 0)))

(declare-fun b!3964463 () Bool)

(assert (=> b!3964463 (= e!2455355 (+ 1 (size!31639 (t!330149 (_2!23915 (v!39399 lt!1388060))))))))

(assert (= (and d!1174312 c!687806) b!3964462))

(assert (= (and d!1174312 (not c!687806)) b!3964463))

(declare-fun m!4533909 () Bool)

(assert (=> b!3964463 m!4533909))

(assert (=> b!3964294 d!1174312))

(declare-fun d!1174314 () Bool)

(assert (=> d!1174314 (= (maxPrefixOneRule!2577 thiss!20629 (rule!9618 (_1!23915 (v!39399 lt!1388060))) lt!1388042) (Some!9053 (tuple2!41563 (Token!12407 (apply!9865 (transformation!6634 (rule!9618 (_1!23915 (v!39399 lt!1388060)))) (seqFromList!4893 lt!1388041)) (rule!9618 (_1!23915 (v!39399 lt!1388060))) (size!31639 lt!1388041) lt!1388041) (_2!23915 (v!39399 lt!1388060)))))))

(declare-fun lt!1388136 () Unit!60883)

(declare-fun choose!23702 (LexerInterface!6223 List!42392 List!42390 List!42390 List!42390 Rule!13068) Unit!60883)

(assert (=> d!1174314 (= lt!1388136 (choose!23702 thiss!20629 rules!2768 lt!1388041 lt!1388042 (_2!23915 (v!39399 lt!1388060)) (rule!9618 (_1!23915 (v!39399 lt!1388060)))))))

(assert (=> d!1174314 (not (isEmpty!25289 rules!2768))))

(assert (=> d!1174314 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1403 thiss!20629 rules!2768 lt!1388041 lt!1388042 (_2!23915 (v!39399 lt!1388060)) (rule!9618 (_1!23915 (v!39399 lt!1388060)))) lt!1388136)))

(declare-fun bs!587360 () Bool)

(assert (= bs!587360 d!1174314))

(assert (=> bs!587360 m!4533697))

(assert (=> bs!587360 m!4533707))

(declare-fun m!4533961 () Bool)

(assert (=> bs!587360 m!4533961))

(assert (=> bs!587360 m!4533627))

(assert (=> bs!587360 m!4533697))

(assert (=> bs!587360 m!4533709))

(assert (=> bs!587360 m!4533733))

(assert (=> b!3964335 d!1174314))

(declare-fun b!3964593 () Bool)

(declare-fun res!1604806 () Bool)

(declare-fun e!2455421 () Bool)

(assert (=> b!3964593 (=> (not res!1604806) (not e!2455421))))

(declare-fun lt!1388191 () Option!9054)

(assert (=> b!3964593 (= res!1604806 (= (value!209703 (_1!23915 (get!13941 lt!1388191))) (apply!9865 (transformation!6634 (rule!9618 (_1!23915 (get!13941 lt!1388191)))) (seqFromList!4893 (originalCharacters!7234 (_1!23915 (get!13941 lt!1388191)))))))))

(declare-fun b!3964594 () Bool)

(declare-fun e!2455422 () Bool)

(declare-fun matchR!5544 (Regex!11539 List!42390) Bool)

(declare-datatypes ((tuple2!41568 0))(
  ( (tuple2!41569 (_1!23918 List!42390) (_2!23918 List!42390)) )
))
(declare-fun findLongestMatchInner!1300 (Regex!11539 List!42390 Int List!42390 List!42390 Int) tuple2!41568)

(assert (=> b!3964594 (= e!2455422 (matchR!5544 (regex!6634 (rule!9618 (_1!23915 (v!39399 lt!1388060)))) (_1!23918 (findLongestMatchInner!1300 (regex!6634 (rule!9618 (_1!23915 (v!39399 lt!1388060)))) Nil!42266 (size!31639 Nil!42266) lt!1388042 lt!1388042 (size!31639 lt!1388042)))))))

(declare-fun b!3964595 () Bool)

(declare-fun e!2455420 () Bool)

(assert (=> b!3964595 (= e!2455420 e!2455421)))

(declare-fun res!1604804 () Bool)

(assert (=> b!3964595 (=> (not res!1604804) (not e!2455421))))

(assert (=> b!3964595 (= res!1604804 (matchR!5544 (regex!6634 (rule!9618 (_1!23915 (v!39399 lt!1388060)))) (list!15684 (charsOf!4452 (_1!23915 (get!13941 lt!1388191))))))))

(declare-fun d!1174342 () Bool)

(assert (=> d!1174342 e!2455420))

(declare-fun res!1604808 () Bool)

(assert (=> d!1174342 (=> res!1604808 e!2455420)))

(declare-fun isEmpty!25292 (Option!9054) Bool)

(assert (=> d!1174342 (= res!1604808 (isEmpty!25292 lt!1388191))))

(declare-fun e!2455419 () Option!9054)

(assert (=> d!1174342 (= lt!1388191 e!2455419)))

(declare-fun c!687828 () Bool)

(declare-fun lt!1388194 () tuple2!41568)

(assert (=> d!1174342 (= c!687828 (isEmpty!25290 (_1!23918 lt!1388194)))))

(declare-fun findLongestMatch!1213 (Regex!11539 List!42390) tuple2!41568)

(assert (=> d!1174342 (= lt!1388194 (findLongestMatch!1213 (regex!6634 (rule!9618 (_1!23915 (v!39399 lt!1388060)))) lt!1388042))))

(assert (=> d!1174342 (ruleValid!2576 thiss!20629 (rule!9618 (_1!23915 (v!39399 lt!1388060))))))

(assert (=> d!1174342 (= (maxPrefixOneRule!2577 thiss!20629 (rule!9618 (_1!23915 (v!39399 lt!1388060))) lt!1388042) lt!1388191)))

(declare-fun b!3964596 () Bool)

(declare-fun res!1604802 () Bool)

(assert (=> b!3964596 (=> (not res!1604802) (not e!2455421))))

(assert (=> b!3964596 (= res!1604802 (< (size!31639 (_2!23915 (get!13941 lt!1388191))) (size!31639 lt!1388042)))))

(declare-fun b!3964597 () Bool)

(assert (=> b!3964597 (= e!2455421 (= (size!31638 (_1!23915 (get!13941 lt!1388191))) (size!31639 (originalCharacters!7234 (_1!23915 (get!13941 lt!1388191))))))))

(declare-fun b!3964598 () Bool)

(assert (=> b!3964598 (= e!2455419 None!9053)))

(declare-fun b!3964599 () Bool)

(declare-fun res!1604807 () Bool)

(assert (=> b!3964599 (=> (not res!1604807) (not e!2455421))))

(assert (=> b!3964599 (= res!1604807 (= (rule!9618 (_1!23915 (get!13941 lt!1388191))) (rule!9618 (_1!23915 (v!39399 lt!1388060)))))))

(declare-fun b!3964600 () Bool)

(declare-fun size!31643 (BalanceConc!25284) Int)

(assert (=> b!3964600 (= e!2455419 (Some!9053 (tuple2!41563 (Token!12407 (apply!9865 (transformation!6634 (rule!9618 (_1!23915 (v!39399 lt!1388060)))) (seqFromList!4893 (_1!23918 lt!1388194))) (rule!9618 (_1!23915 (v!39399 lt!1388060))) (size!31643 (seqFromList!4893 (_1!23918 lt!1388194))) (_1!23918 lt!1388194)) (_2!23918 lt!1388194))))))

(declare-fun lt!1388192 () Unit!60883)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1273 (Regex!11539 List!42390) Unit!60883)

(assert (=> b!3964600 (= lt!1388192 (longestMatchIsAcceptedByMatchOrIsEmpty!1273 (regex!6634 (rule!9618 (_1!23915 (v!39399 lt!1388060)))) lt!1388042))))

(declare-fun res!1604803 () Bool)

(assert (=> b!3964600 (= res!1604803 (isEmpty!25290 (_1!23918 (findLongestMatchInner!1300 (regex!6634 (rule!9618 (_1!23915 (v!39399 lt!1388060)))) Nil!42266 (size!31639 Nil!42266) lt!1388042 lt!1388042 (size!31639 lt!1388042)))))))

(assert (=> b!3964600 (=> res!1604803 e!2455422)))

(assert (=> b!3964600 e!2455422))

(declare-fun lt!1388193 () Unit!60883)

(assert (=> b!3964600 (= lt!1388193 lt!1388192)))

(declare-fun lt!1388195 () Unit!60883)

(declare-fun lemmaSemiInverse!1808 (TokenValueInjection!13156 BalanceConc!25284) Unit!60883)

(assert (=> b!3964600 (= lt!1388195 (lemmaSemiInverse!1808 (transformation!6634 (rule!9618 (_1!23915 (v!39399 lt!1388060)))) (seqFromList!4893 (_1!23918 lt!1388194))))))

(declare-fun b!3964601 () Bool)

(declare-fun res!1604805 () Bool)

(assert (=> b!3964601 (=> (not res!1604805) (not e!2455421))))

(assert (=> b!3964601 (= res!1604805 (= (++!11026 (list!15684 (charsOf!4452 (_1!23915 (get!13941 lt!1388191)))) (_2!23915 (get!13941 lt!1388191))) lt!1388042))))

(assert (= (and d!1174342 c!687828) b!3964598))

(assert (= (and d!1174342 (not c!687828)) b!3964600))

(assert (= (and b!3964600 (not res!1604803)) b!3964594))

(assert (= (and d!1174342 (not res!1604808)) b!3964595))

(assert (= (and b!3964595 res!1604804) b!3964601))

(assert (= (and b!3964601 res!1604805) b!3964596))

(assert (= (and b!3964596 res!1604802) b!3964599))

(assert (= (and b!3964599 res!1604807) b!3964593))

(assert (= (and b!3964593 res!1604806) b!3964597))

(declare-fun m!4534133 () Bool)

(assert (=> d!1174342 m!4534133))

(declare-fun m!4534135 () Bool)

(assert (=> d!1174342 m!4534135))

(declare-fun m!4534137 () Bool)

(assert (=> d!1174342 m!4534137))

(assert (=> d!1174342 m!4533689))

(declare-fun m!4534139 () Bool)

(assert (=> b!3964594 m!4534139))

(assert (=> b!3964594 m!4533633))

(assert (=> b!3964594 m!4534139))

(assert (=> b!3964594 m!4533633))

(declare-fun m!4534141 () Bool)

(assert (=> b!3964594 m!4534141))

(declare-fun m!4534143 () Bool)

(assert (=> b!3964594 m!4534143))

(declare-fun m!4534145 () Bool)

(assert (=> b!3964597 m!4534145))

(declare-fun m!4534147 () Bool)

(assert (=> b!3964597 m!4534147))

(assert (=> b!3964596 m!4534145))

(declare-fun m!4534149 () Bool)

(assert (=> b!3964596 m!4534149))

(assert (=> b!3964596 m!4533633))

(assert (=> b!3964593 m!4534145))

(declare-fun m!4534151 () Bool)

(assert (=> b!3964593 m!4534151))

(assert (=> b!3964593 m!4534151))

(declare-fun m!4534153 () Bool)

(assert (=> b!3964593 m!4534153))

(declare-fun m!4534155 () Bool)

(assert (=> b!3964600 m!4534155))

(assert (=> b!3964600 m!4534139))

(assert (=> b!3964600 m!4533633))

(declare-fun m!4534157 () Bool)

(assert (=> b!3964600 m!4534157))

(declare-fun m!4534159 () Bool)

(assert (=> b!3964600 m!4534159))

(declare-fun m!4534161 () Bool)

(assert (=> b!3964600 m!4534161))

(assert (=> b!3964600 m!4534159))

(declare-fun m!4534163 () Bool)

(assert (=> b!3964600 m!4534163))

(assert (=> b!3964600 m!4534159))

(declare-fun m!4534165 () Bool)

(assert (=> b!3964600 m!4534165))

(assert (=> b!3964600 m!4534139))

(assert (=> b!3964600 m!4533633))

(assert (=> b!3964600 m!4534141))

(assert (=> b!3964600 m!4534159))

(assert (=> b!3964599 m!4534145))

(assert (=> b!3964595 m!4534145))

(declare-fun m!4534167 () Bool)

(assert (=> b!3964595 m!4534167))

(assert (=> b!3964595 m!4534167))

(declare-fun m!4534169 () Bool)

(assert (=> b!3964595 m!4534169))

(assert (=> b!3964595 m!4534169))

(declare-fun m!4534171 () Bool)

(assert (=> b!3964595 m!4534171))

(assert (=> b!3964601 m!4534145))

(assert (=> b!3964601 m!4534167))

(assert (=> b!3964601 m!4534167))

(assert (=> b!3964601 m!4534169))

(assert (=> b!3964601 m!4534169))

(declare-fun m!4534173 () Bool)

(assert (=> b!3964601 m!4534173))

(assert (=> b!3964335 d!1174342))

(declare-fun d!1174386 () Bool)

(declare-fun lt!1388199 () Int)

(assert (=> d!1174386 (>= lt!1388199 0)))

(declare-fun e!2455429 () Int)

(assert (=> d!1174386 (= lt!1388199 e!2455429)))

(declare-fun c!687833 () Bool)

(assert (=> d!1174386 (= c!687833 ((_ is Nil!42266) lt!1388042))))

(assert (=> d!1174386 (= (size!31639 lt!1388042) lt!1388199)))

(declare-fun b!3964613 () Bool)

(assert (=> b!3964613 (= e!2455429 0)))

(declare-fun b!3964614 () Bool)

(assert (=> b!3964614 (= e!2455429 (+ 1 (size!31639 (t!330149 lt!1388042))))))

(assert (= (and d!1174386 c!687833) b!3964613))

(assert (= (and d!1174386 (not c!687833)) b!3964614))

(declare-fun m!4534175 () Bool)

(assert (=> b!3964614 m!4534175))

(assert (=> b!3964335 d!1174386))

(declare-fun d!1174388 () Bool)

(assert (=> d!1174388 (= (get!13941 lt!1388060) (v!39399 lt!1388060))))

(assert (=> b!3964335 d!1174388))

(declare-fun d!1174390 () Bool)

(declare-fun lt!1388200 () Int)

(assert (=> d!1174390 (>= lt!1388200 0)))

(declare-fun e!2455430 () Int)

(assert (=> d!1174390 (= lt!1388200 e!2455430)))

(declare-fun c!687834 () Bool)

(assert (=> d!1174390 (= c!687834 ((_ is Nil!42266) (_2!23915 lt!1388065)))))

(assert (=> d!1174390 (= (size!31639 (_2!23915 lt!1388065)) lt!1388200)))

(declare-fun b!3964615 () Bool)

(assert (=> b!3964615 (= e!2455430 0)))

(declare-fun b!3964616 () Bool)

(assert (=> b!3964616 (= e!2455430 (+ 1 (size!31639 (t!330149 (_2!23915 lt!1388065)))))))

(assert (= (and d!1174390 c!687834) b!3964615))

(assert (= (and d!1174390 (not c!687834)) b!3964616))

(declare-fun m!4534177 () Bool)

(assert (=> b!3964616 m!4534177))

(assert (=> b!3964335 d!1174390))

(declare-fun d!1174392 () Bool)

(assert (=> d!1174392 (= (_2!23915 (v!39399 lt!1388060)) lt!1388054)))

(declare-fun lt!1388203 () Unit!60883)

(declare-fun choose!23704 (List!42390 List!42390 List!42390 List!42390 List!42390) Unit!60883)

(assert (=> d!1174392 (= lt!1388203 (choose!23704 lt!1388041 (_2!23915 (v!39399 lt!1388060)) lt!1388041 lt!1388054 lt!1388042))))

(assert (=> d!1174392 (isPrefix!3723 lt!1388041 lt!1388042)))

(assert (=> d!1174392 (= (lemmaSamePrefixThenSameSuffix!1932 lt!1388041 (_2!23915 (v!39399 lt!1388060)) lt!1388041 lt!1388054 lt!1388042) lt!1388203)))

(declare-fun bs!587363 () Bool)

(assert (= bs!587363 d!1174392))

(declare-fun m!4534179 () Bool)

(assert (=> bs!587363 m!4534179))

(declare-fun m!4534181 () Bool)

(assert (=> bs!587363 m!4534181))

(assert (=> b!3964332 d!1174392))

(declare-fun b!3964627 () Bool)

(declare-fun e!2455439 () Bool)

(declare-fun tail!6179 (List!42390) List!42390)

(assert (=> b!3964627 (= e!2455439 (isPrefix!3723 (tail!6179 lt!1388041) (tail!6179 lt!1388040)))))

(declare-fun d!1174394 () Bool)

(declare-fun e!2455437 () Bool)

(assert (=> d!1174394 e!2455437))

(declare-fun res!1604820 () Bool)

(assert (=> d!1174394 (=> res!1604820 e!2455437)))

(declare-fun lt!1388206 () Bool)

(assert (=> d!1174394 (= res!1604820 (not lt!1388206))))

(declare-fun e!2455438 () Bool)

(assert (=> d!1174394 (= lt!1388206 e!2455438)))

(declare-fun res!1604823 () Bool)

(assert (=> d!1174394 (=> res!1604823 e!2455438)))

(assert (=> d!1174394 (= res!1604823 ((_ is Nil!42266) lt!1388041))))

(assert (=> d!1174394 (= (isPrefix!3723 lt!1388041 lt!1388040) lt!1388206)))

(declare-fun b!3964625 () Bool)

(assert (=> b!3964625 (= e!2455438 e!2455439)))

(declare-fun res!1604821 () Bool)

(assert (=> b!3964625 (=> (not res!1604821) (not e!2455439))))

(assert (=> b!3964625 (= res!1604821 (not ((_ is Nil!42266) lt!1388040)))))

(declare-fun b!3964626 () Bool)

(declare-fun res!1604822 () Bool)

(assert (=> b!3964626 (=> (not res!1604822) (not e!2455439))))

(declare-fun head!8447 (List!42390) C!23264)

(assert (=> b!3964626 (= res!1604822 (= (head!8447 lt!1388041) (head!8447 lt!1388040)))))

(declare-fun b!3964628 () Bool)

(assert (=> b!3964628 (= e!2455437 (>= (size!31639 lt!1388040) (size!31639 lt!1388041)))))

(assert (= (and d!1174394 (not res!1604823)) b!3964625))

(assert (= (and b!3964625 res!1604821) b!3964626))

(assert (= (and b!3964626 res!1604822) b!3964627))

(assert (= (and d!1174394 (not res!1604820)) b!3964628))

(declare-fun m!4534183 () Bool)

(assert (=> b!3964627 m!4534183))

(declare-fun m!4534185 () Bool)

(assert (=> b!3964627 m!4534185))

(assert (=> b!3964627 m!4534183))

(assert (=> b!3964627 m!4534185))

(declare-fun m!4534187 () Bool)

(assert (=> b!3964627 m!4534187))

(declare-fun m!4534189 () Bool)

(assert (=> b!3964626 m!4534189))

(declare-fun m!4534191 () Bool)

(assert (=> b!3964626 m!4534191))

(declare-fun m!4534193 () Bool)

(assert (=> b!3964628 m!4534193))

(assert (=> b!3964628 m!4533709))

(assert (=> b!3964332 d!1174394))

(declare-fun d!1174396 () Bool)

(assert (=> d!1174396 (isPrefix!3723 lt!1388041 (++!11026 lt!1388041 lt!1388054))))

(declare-fun lt!1388209 () Unit!60883)

(declare-fun choose!23705 (List!42390 List!42390) Unit!60883)

(assert (=> d!1174396 (= lt!1388209 (choose!23705 lt!1388041 lt!1388054))))

(assert (=> d!1174396 (= (lemmaConcatTwoListThenFirstIsPrefix!2582 lt!1388041 lt!1388054) lt!1388209)))

(declare-fun bs!587364 () Bool)

(assert (= bs!587364 d!1174396))

(assert (=> bs!587364 m!4533669))

(assert (=> bs!587364 m!4533669))

(declare-fun m!4534195 () Bool)

(assert (=> bs!587364 m!4534195))

(declare-fun m!4534197 () Bool)

(assert (=> bs!587364 m!4534197))

(assert (=> b!3964332 d!1174396))

(declare-fun d!1174398 () Bool)

(assert (=> d!1174398 (= (isEmpty!25290 prefix!426) ((_ is Nil!42266) prefix!426))))

(assert (=> b!3964311 d!1174398))

(declare-fun d!1174400 () Bool)

(declare-fun lt!1388210 () Int)

(assert (=> d!1174400 (>= lt!1388210 0)))

(declare-fun e!2455440 () Int)

(assert (=> d!1174400 (= lt!1388210 e!2455440)))

(declare-fun c!687835 () Bool)

(assert (=> d!1174400 (= c!687835 ((_ is Nil!42266) (originalCharacters!7234 (_1!23915 (v!39399 lt!1388060)))))))

(assert (=> d!1174400 (= (size!31639 (originalCharacters!7234 (_1!23915 (v!39399 lt!1388060)))) lt!1388210)))

(declare-fun b!3964629 () Bool)

(assert (=> b!3964629 (= e!2455440 0)))

(declare-fun b!3964630 () Bool)

(assert (=> b!3964630 (= e!2455440 (+ 1 (size!31639 (t!330149 (originalCharacters!7234 (_1!23915 (v!39399 lt!1388060)))))))))

(assert (= (and d!1174400 c!687835) b!3964629))

(assert (= (and d!1174400 (not c!687835)) b!3964630))

(declare-fun m!4534199 () Bool)

(assert (=> b!3964630 m!4534199))

(assert (=> b!3964331 d!1174400))

(declare-fun d!1174402 () Bool)

(assert (=> d!1174402 (= (isEmpty!25288 lt!1388024) ((_ is Nil!42267) lt!1388024))))

(assert (=> b!3964313 d!1174402))

(declare-fun d!1174404 () Bool)

(assert (=> d!1174404 (= (tail!6177 prefixTokens!80) (t!330150 prefixTokens!80))))

(assert (=> b!3964313 d!1174404))

(declare-fun b!3964650 () Bool)

(declare-fun res!1604831 () Bool)

(declare-fun e!2455453 () Bool)

(assert (=> b!3964650 (=> res!1604831 e!2455453)))

(assert (=> b!3964650 (= res!1604831 (not ((_ is IntegerValue!20594) (value!209703 (h!47687 suffixTokens!72)))))))

(declare-fun e!2455454 () Bool)

(assert (=> b!3964650 (= e!2455454 e!2455453)))

(declare-fun b!3964651 () Bool)

(declare-fun inv!15 (TokenValue!6864) Bool)

(assert (=> b!3964651 (= e!2455453 (inv!15 (value!209703 (h!47687 suffixTokens!72))))))

(declare-fun b!3964652 () Bool)

(declare-fun e!2455452 () Bool)

(assert (=> b!3964652 (= e!2455452 e!2455454)))

(declare-fun c!687842 () Bool)

(assert (=> b!3964652 (= c!687842 ((_ is IntegerValue!20593) (value!209703 (h!47687 suffixTokens!72))))))

(declare-fun d!1174406 () Bool)

(declare-fun c!687843 () Bool)

(assert (=> d!1174406 (= c!687843 ((_ is IntegerValue!20592) (value!209703 (h!47687 suffixTokens!72))))))

(assert (=> d!1174406 (= (inv!21 (value!209703 (h!47687 suffixTokens!72))) e!2455452)))

(declare-fun b!3964653 () Bool)

(declare-fun inv!16 (TokenValue!6864) Bool)

(assert (=> b!3964653 (= e!2455452 (inv!16 (value!209703 (h!47687 suffixTokens!72))))))

(declare-fun b!3964654 () Bool)

(declare-fun inv!17 (TokenValue!6864) Bool)

(assert (=> b!3964654 (= e!2455454 (inv!17 (value!209703 (h!47687 suffixTokens!72))))))

(assert (= (and d!1174406 c!687843) b!3964653))

(assert (= (and d!1174406 (not c!687843)) b!3964652))

(assert (= (and b!3964652 c!687842) b!3964654))

(assert (= (and b!3964652 (not c!687842)) b!3964650))

(assert (= (and b!3964650 (not res!1604831)) b!3964651))

(declare-fun m!4534227 () Bool)

(assert (=> b!3964651 m!4534227))

(declare-fun m!4534229 () Bool)

(assert (=> b!3964653 m!4534229))

(declare-fun m!4534231 () Bool)

(assert (=> b!3964654 m!4534231))

(assert (=> b!3964333 d!1174406))

(declare-fun d!1174420 () Bool)

(declare-fun res!1604846 () Bool)

(declare-fun e!2455465 () Bool)

(assert (=> d!1174420 (=> (not res!1604846) (not e!2455465))))

(assert (=> d!1174420 (= res!1604846 (not (isEmpty!25290 (originalCharacters!7234 (h!47687 prefixTokens!80)))))))

(assert (=> d!1174420 (= (inv!56491 (h!47687 prefixTokens!80)) e!2455465)))

(declare-fun b!3964670 () Bool)

(declare-fun res!1604847 () Bool)

(assert (=> b!3964670 (=> (not res!1604847) (not e!2455465))))

(declare-fun dynLambda!18040 (Int TokenValue!6864) BalanceConc!25284)

(assert (=> b!3964670 (= res!1604847 (= (originalCharacters!7234 (h!47687 prefixTokens!80)) (list!15684 (dynLambda!18040 (toChars!8973 (transformation!6634 (rule!9618 (h!47687 prefixTokens!80)))) (value!209703 (h!47687 prefixTokens!80))))))))

(declare-fun b!3964671 () Bool)

(assert (=> b!3964671 (= e!2455465 (= (size!31638 (h!47687 prefixTokens!80)) (size!31639 (originalCharacters!7234 (h!47687 prefixTokens!80)))))))

(assert (= (and d!1174420 res!1604846) b!3964670))

(assert (= (and b!3964670 res!1604847) b!3964671))

(declare-fun b_lambda!115915 () Bool)

(assert (=> (not b_lambda!115915) (not b!3964670)))

(declare-fun t!330177 () Bool)

(declare-fun tb!239049 () Bool)

(assert (=> (and b!3964325 (= (toChars!8973 (transformation!6634 (h!47688 rules!2768))) (toChars!8973 (transformation!6634 (rule!9618 (h!47687 prefixTokens!80))))) t!330177) tb!239049))

(declare-fun b!3964676 () Bool)

(declare-fun e!2455468 () Bool)

(declare-fun tp!1208406 () Bool)

(declare-fun inv!56495 (Conc!12845) Bool)

(assert (=> b!3964676 (= e!2455468 (and (inv!56495 (c!687773 (dynLambda!18040 (toChars!8973 (transformation!6634 (rule!9618 (h!47687 prefixTokens!80)))) (value!209703 (h!47687 prefixTokens!80))))) tp!1208406))))

(declare-fun result!289486 () Bool)

(declare-fun inv!56496 (BalanceConc!25284) Bool)

(assert (=> tb!239049 (= result!289486 (and (inv!56496 (dynLambda!18040 (toChars!8973 (transformation!6634 (rule!9618 (h!47687 prefixTokens!80)))) (value!209703 (h!47687 prefixTokens!80)))) e!2455468))))

(assert (= tb!239049 b!3964676))

(declare-fun m!4534257 () Bool)

(assert (=> b!3964676 m!4534257))

(declare-fun m!4534259 () Bool)

(assert (=> tb!239049 m!4534259))

(assert (=> b!3964670 t!330177))

(declare-fun b_and!304495 () Bool)

(assert (= b_and!304461 (and (=> t!330177 result!289486) b_and!304495)))

(declare-fun t!330179 () Bool)

(declare-fun tb!239051 () Bool)

(assert (=> (and b!3964317 (= (toChars!8973 (transformation!6634 (rule!9618 (h!47687 prefixTokens!80)))) (toChars!8973 (transformation!6634 (rule!9618 (h!47687 prefixTokens!80))))) t!330179) tb!239051))

(declare-fun result!289490 () Bool)

(assert (= result!289490 result!289486))

(assert (=> b!3964670 t!330179))

(declare-fun b_and!304497 () Bool)

(assert (= b_and!304465 (and (=> t!330179 result!289490) b_and!304497)))

(declare-fun tb!239053 () Bool)

(declare-fun t!330181 () Bool)

(assert (=> (and b!3964295 (= (toChars!8973 (transformation!6634 (rule!9618 (h!47687 suffixTokens!72)))) (toChars!8973 (transformation!6634 (rule!9618 (h!47687 prefixTokens!80))))) t!330181) tb!239053))

(declare-fun result!289492 () Bool)

(assert (= result!289492 result!289486))

(assert (=> b!3964670 t!330181))

(declare-fun b_and!304499 () Bool)

(assert (= b_and!304469 (and (=> t!330181 result!289492) b_and!304499)))

(declare-fun m!4534263 () Bool)

(assert (=> d!1174420 m!4534263))

(declare-fun m!4534265 () Bool)

(assert (=> b!3964670 m!4534265))

(assert (=> b!3964670 m!4534265))

(declare-fun m!4534267 () Bool)

(assert (=> b!3964670 m!4534267))

(declare-fun m!4534269 () Bool)

(assert (=> b!3964671 m!4534269))

(assert (=> b!3964309 d!1174420))

(declare-fun b!3964679 () Bool)

(declare-fun res!1604848 () Bool)

(declare-fun e!2455471 () Bool)

(assert (=> b!3964679 (=> res!1604848 e!2455471)))

(assert (=> b!3964679 (= res!1604848 (not ((_ is IntegerValue!20594) (value!209703 (h!47687 prefixTokens!80)))))))

(declare-fun e!2455472 () Bool)

(assert (=> b!3964679 (= e!2455472 e!2455471)))

(declare-fun b!3964680 () Bool)

(assert (=> b!3964680 (= e!2455471 (inv!15 (value!209703 (h!47687 prefixTokens!80))))))

(declare-fun b!3964681 () Bool)

(declare-fun e!2455470 () Bool)

(assert (=> b!3964681 (= e!2455470 e!2455472)))

(declare-fun c!687845 () Bool)

(assert (=> b!3964681 (= c!687845 ((_ is IntegerValue!20593) (value!209703 (h!47687 prefixTokens!80))))))

(declare-fun d!1174432 () Bool)

(declare-fun c!687846 () Bool)

(assert (=> d!1174432 (= c!687846 ((_ is IntegerValue!20592) (value!209703 (h!47687 prefixTokens!80))))))

(assert (=> d!1174432 (= (inv!21 (value!209703 (h!47687 prefixTokens!80))) e!2455470)))

(declare-fun b!3964682 () Bool)

(assert (=> b!3964682 (= e!2455470 (inv!16 (value!209703 (h!47687 prefixTokens!80))))))

(declare-fun b!3964683 () Bool)

(assert (=> b!3964683 (= e!2455472 (inv!17 (value!209703 (h!47687 prefixTokens!80))))))

(assert (= (and d!1174432 c!687846) b!3964682))

(assert (= (and d!1174432 (not c!687846)) b!3964681))

(assert (= (and b!3964681 c!687845) b!3964683))

(assert (= (and b!3964681 (not c!687845)) b!3964679))

(assert (= (and b!3964679 (not res!1604848)) b!3964680))

(declare-fun m!4534273 () Bool)

(assert (=> b!3964680 m!4534273))

(declare-fun m!4534275 () Bool)

(assert (=> b!3964682 m!4534275))

(declare-fun m!4534277 () Bool)

(assert (=> b!3964683 m!4534277))

(assert (=> b!3964329 d!1174432))

(declare-fun d!1174436 () Bool)

(declare-fun e!2455487 () Bool)

(assert (=> d!1174436 e!2455487))

(declare-fun res!1604860 () Bool)

(assert (=> d!1174436 (=> (not res!1604860) (not e!2455487))))

(declare-fun lt!1388237 () List!42390)

(declare-fun content!6419 (List!42390) (InoxSet C!23264))

(assert (=> d!1174436 (= res!1604860 (= (content!6419 lt!1388237) ((_ map or) (content!6419 lt!1388051) (content!6419 suffix!1176))))))

(declare-fun e!2455488 () List!42390)

(assert (=> d!1174436 (= lt!1388237 e!2455488)))

(declare-fun c!687855 () Bool)

(assert (=> d!1174436 (= c!687855 ((_ is Nil!42266) lt!1388051))))

(assert (=> d!1174436 (= (++!11026 lt!1388051 suffix!1176) lt!1388237)))

(declare-fun b!3964711 () Bool)

(assert (=> b!3964711 (= e!2455488 (Cons!42266 (h!47686 lt!1388051) (++!11026 (t!330149 lt!1388051) suffix!1176)))))

(declare-fun b!3964712 () Bool)

(declare-fun res!1604859 () Bool)

(assert (=> b!3964712 (=> (not res!1604859) (not e!2455487))))

(assert (=> b!3964712 (= res!1604859 (= (size!31639 lt!1388237) (+ (size!31639 lt!1388051) (size!31639 suffix!1176))))))

(declare-fun b!3964713 () Bool)

(assert (=> b!3964713 (= e!2455487 (or (not (= suffix!1176 Nil!42266)) (= lt!1388237 lt!1388051)))))

(declare-fun b!3964710 () Bool)

(assert (=> b!3964710 (= e!2455488 suffix!1176)))

(assert (= (and d!1174436 c!687855) b!3964710))

(assert (= (and d!1174436 (not c!687855)) b!3964711))

(assert (= (and d!1174436 res!1604860) b!3964712))

(assert (= (and b!3964712 res!1604859) b!3964713))

(declare-fun m!4534319 () Bool)

(assert (=> d!1174436 m!4534319))

(declare-fun m!4534321 () Bool)

(assert (=> d!1174436 m!4534321))

(declare-fun m!4534323 () Bool)

(assert (=> d!1174436 m!4534323))

(declare-fun m!4534325 () Bool)

(assert (=> b!3964711 m!4534325))

(declare-fun m!4534327 () Bool)

(assert (=> b!3964712 m!4534327))

(declare-fun m!4534329 () Bool)

(assert (=> b!3964712 m!4534329))

(assert (=> b!3964712 m!4533677))

(assert (=> b!3964308 d!1174436))

(declare-fun d!1174448 () Bool)

(declare-fun res!1604861 () Bool)

(declare-fun e!2455491 () Bool)

(assert (=> d!1174448 (=> (not res!1604861) (not e!2455491))))

(assert (=> d!1174448 (= res!1604861 (not (isEmpty!25290 (originalCharacters!7234 (h!47687 suffixTokens!72)))))))

(assert (=> d!1174448 (= (inv!56491 (h!47687 suffixTokens!72)) e!2455491)))

(declare-fun b!3964718 () Bool)

(declare-fun res!1604862 () Bool)

(assert (=> b!3964718 (=> (not res!1604862) (not e!2455491))))

(assert (=> b!3964718 (= res!1604862 (= (originalCharacters!7234 (h!47687 suffixTokens!72)) (list!15684 (dynLambda!18040 (toChars!8973 (transformation!6634 (rule!9618 (h!47687 suffixTokens!72)))) (value!209703 (h!47687 suffixTokens!72))))))))

(declare-fun b!3964719 () Bool)

(assert (=> b!3964719 (= e!2455491 (= (size!31638 (h!47687 suffixTokens!72)) (size!31639 (originalCharacters!7234 (h!47687 suffixTokens!72)))))))

(assert (= (and d!1174448 res!1604861) b!3964718))

(assert (= (and b!3964718 res!1604862) b!3964719))

(declare-fun b_lambda!115917 () Bool)

(assert (=> (not b_lambda!115917) (not b!3964718)))

(declare-fun tb!239055 () Bool)

(declare-fun t!330183 () Bool)

(assert (=> (and b!3964325 (= (toChars!8973 (transformation!6634 (h!47688 rules!2768))) (toChars!8973 (transformation!6634 (rule!9618 (h!47687 suffixTokens!72))))) t!330183) tb!239055))

(declare-fun b!3964731 () Bool)

(declare-fun e!2455495 () Bool)

(declare-fun tp!1208418 () Bool)

(assert (=> b!3964731 (= e!2455495 (and (inv!56495 (c!687773 (dynLambda!18040 (toChars!8973 (transformation!6634 (rule!9618 (h!47687 suffixTokens!72)))) (value!209703 (h!47687 suffixTokens!72))))) tp!1208418))))

(declare-fun result!289498 () Bool)

(assert (=> tb!239055 (= result!289498 (and (inv!56496 (dynLambda!18040 (toChars!8973 (transformation!6634 (rule!9618 (h!47687 suffixTokens!72)))) (value!209703 (h!47687 suffixTokens!72)))) e!2455495))))

(assert (= tb!239055 b!3964731))

(declare-fun m!4534331 () Bool)

(assert (=> b!3964731 m!4534331))

(declare-fun m!4534333 () Bool)

(assert (=> tb!239055 m!4534333))

(assert (=> b!3964718 t!330183))

(declare-fun b_and!304501 () Bool)

(assert (= b_and!304495 (and (=> t!330183 result!289498) b_and!304501)))

(declare-fun t!330185 () Bool)

(declare-fun tb!239057 () Bool)

(assert (=> (and b!3964317 (= (toChars!8973 (transformation!6634 (rule!9618 (h!47687 prefixTokens!80)))) (toChars!8973 (transformation!6634 (rule!9618 (h!47687 suffixTokens!72))))) t!330185) tb!239057))

(declare-fun result!289500 () Bool)

(assert (= result!289500 result!289498))

(assert (=> b!3964718 t!330185))

(declare-fun b_and!304503 () Bool)

(assert (= b_and!304497 (and (=> t!330185 result!289500) b_and!304503)))

(declare-fun t!330187 () Bool)

(declare-fun tb!239059 () Bool)

(assert (=> (and b!3964295 (= (toChars!8973 (transformation!6634 (rule!9618 (h!47687 suffixTokens!72)))) (toChars!8973 (transformation!6634 (rule!9618 (h!47687 suffixTokens!72))))) t!330187) tb!239059))

(declare-fun result!289502 () Bool)

(assert (= result!289502 result!289498))

(assert (=> b!3964718 t!330187))

(declare-fun b_and!304505 () Bool)

(assert (= b_and!304499 (and (=> t!330187 result!289502) b_and!304505)))

(declare-fun m!4534335 () Bool)

(assert (=> d!1174448 m!4534335))

(declare-fun m!4534337 () Bool)

(assert (=> b!3964718 m!4534337))

(assert (=> b!3964718 m!4534337))

(declare-fun m!4534339 () Bool)

(assert (=> b!3964718 m!4534339))

(declare-fun m!4534341 () Bool)

(assert (=> b!3964719 m!4534341))

(assert (=> b!3964310 d!1174448))

(declare-fun b!3964735 () Bool)

(declare-fun e!2455496 () Bool)

(declare-fun lt!1388238 () List!42391)

(assert (=> b!3964735 (= e!2455496 (or (not (= suffixTokens!72 Nil!42267)) (= lt!1388238 lt!1388035)))))

(declare-fun b!3964732 () Bool)

(declare-fun e!2455497 () List!42391)

(assert (=> b!3964732 (= e!2455497 suffixTokens!72)))

(declare-fun d!1174450 () Bool)

(assert (=> d!1174450 e!2455496))

(declare-fun res!1604863 () Bool)

(assert (=> d!1174450 (=> (not res!1604863) (not e!2455496))))

(assert (=> d!1174450 (= res!1604863 (= (content!6418 lt!1388238) ((_ map or) (content!6418 lt!1388035) (content!6418 suffixTokens!72))))))

(assert (=> d!1174450 (= lt!1388238 e!2455497)))

(declare-fun c!687856 () Bool)

(assert (=> d!1174450 (= c!687856 ((_ is Nil!42267) lt!1388035))))

(assert (=> d!1174450 (= (++!11025 lt!1388035 suffixTokens!72) lt!1388238)))

(declare-fun b!3964734 () Bool)

(declare-fun res!1604864 () Bool)

(assert (=> b!3964734 (=> (not res!1604864) (not e!2455496))))

(assert (=> b!3964734 (= res!1604864 (= (size!31641 lt!1388238) (+ (size!31641 lt!1388035) (size!31641 suffixTokens!72))))))

(declare-fun b!3964733 () Bool)

(assert (=> b!3964733 (= e!2455497 (Cons!42267 (h!47687 lt!1388035) (++!11025 (t!330150 lt!1388035) suffixTokens!72)))))

(assert (= (and d!1174450 c!687856) b!3964732))

(assert (= (and d!1174450 (not c!687856)) b!3964733))

(assert (= (and d!1174450 res!1604863) b!3964734))

(assert (= (and b!3964734 res!1604864) b!3964735))

(declare-fun m!4534343 () Bool)

(assert (=> d!1174450 m!4534343))

(declare-fun m!4534345 () Bool)

(assert (=> d!1174450 m!4534345))

(declare-fun m!4534347 () Bool)

(assert (=> d!1174450 m!4534347))

(declare-fun m!4534349 () Bool)

(assert (=> b!3964734 m!4534349))

(declare-fun m!4534351 () Bool)

(assert (=> b!3964734 m!4534351))

(declare-fun m!4534353 () Bool)

(assert (=> b!3964734 m!4534353))

(declare-fun m!4534355 () Bool)

(assert (=> b!3964733 m!4534355))

(assert (=> b!3964306 d!1174450))

(assert (=> b!3964306 d!1174404))

(declare-fun b!3964749 () Bool)

(declare-fun e!2455505 () Bool)

(assert (=> b!3964749 (= e!2455505 (isPrefix!3723 (tail!6179 lt!1388059) (tail!6179 lt!1388054)))))

(declare-fun d!1174452 () Bool)

(declare-fun e!2455503 () Bool)

(assert (=> d!1174452 e!2455503))

(declare-fun res!1604865 () Bool)

(assert (=> d!1174452 (=> res!1604865 e!2455503)))

(declare-fun lt!1388239 () Bool)

(assert (=> d!1174452 (= res!1604865 (not lt!1388239))))

(declare-fun e!2455504 () Bool)

(assert (=> d!1174452 (= lt!1388239 e!2455504)))

(declare-fun res!1604868 () Bool)

(assert (=> d!1174452 (=> res!1604868 e!2455504)))

(assert (=> d!1174452 (= res!1604868 ((_ is Nil!42266) lt!1388059))))

(assert (=> d!1174452 (= (isPrefix!3723 lt!1388059 lt!1388054) lt!1388239)))

(declare-fun b!3964747 () Bool)

(assert (=> b!3964747 (= e!2455504 e!2455505)))

(declare-fun res!1604866 () Bool)

(assert (=> b!3964747 (=> (not res!1604866) (not e!2455505))))

(assert (=> b!3964747 (= res!1604866 (not ((_ is Nil!42266) lt!1388054)))))

(declare-fun b!3964748 () Bool)

(declare-fun res!1604867 () Bool)

(assert (=> b!3964748 (=> (not res!1604867) (not e!2455505))))

(assert (=> b!3964748 (= res!1604867 (= (head!8447 lt!1388059) (head!8447 lt!1388054)))))

(declare-fun b!3964750 () Bool)

(assert (=> b!3964750 (= e!2455503 (>= (size!31639 lt!1388054) (size!31639 lt!1388059)))))

(assert (= (and d!1174452 (not res!1604868)) b!3964747))

(assert (= (and b!3964747 res!1604866) b!3964748))

(assert (= (and b!3964748 res!1604867) b!3964749))

(assert (= (and d!1174452 (not res!1604865)) b!3964750))

(declare-fun m!4534357 () Bool)

(assert (=> b!3964749 m!4534357))

(declare-fun m!4534359 () Bool)

(assert (=> b!3964749 m!4534359))

(assert (=> b!3964749 m!4534357))

(assert (=> b!3964749 m!4534359))

(declare-fun m!4534361 () Bool)

(assert (=> b!3964749 m!4534361))

(declare-fun m!4534363 () Bool)

(assert (=> b!3964748 m!4534363))

(declare-fun m!4534365 () Bool)

(assert (=> b!3964748 m!4534365))

(declare-fun m!4534367 () Bool)

(assert (=> b!3964750 m!4534367))

(declare-fun m!4534369 () Bool)

(assert (=> b!3964750 m!4534369))

(assert (=> b!3964306 d!1174452))

(declare-fun d!1174454 () Bool)

(assert (=> d!1174454 (isPrefix!3723 lt!1388059 (++!11026 lt!1388059 suffix!1176))))

(declare-fun lt!1388240 () Unit!60883)

(assert (=> d!1174454 (= lt!1388240 (choose!23705 lt!1388059 suffix!1176))))

(assert (=> d!1174454 (= (lemmaConcatTwoListThenFirstIsPrefix!2582 lt!1388059 suffix!1176) lt!1388240)))

(declare-fun bs!587370 () Bool)

(assert (= bs!587370 d!1174454))

(assert (=> bs!587370 m!4533671))

(assert (=> bs!587370 m!4533671))

(declare-fun m!4534371 () Bool)

(assert (=> bs!587370 m!4534371))

(declare-fun m!4534373 () Bool)

(assert (=> bs!587370 m!4534373))

(assert (=> b!3964306 d!1174454))

(declare-fun d!1174456 () Bool)

(declare-fun e!2455552 () Bool)

(assert (=> d!1174456 e!2455552))

(declare-fun c!687862 () Bool)

(declare-fun lt!1388249 () tuple2!41564)

(assert (=> d!1174456 (= c!687862 (> (size!31641 (_1!23916 lt!1388249)) 0))))

(declare-fun e!2455551 () tuple2!41564)

(assert (=> d!1174456 (= lt!1388249 e!2455551)))

(declare-fun c!687861 () Bool)

(declare-fun lt!1388247 () Option!9054)

(assert (=> d!1174456 (= c!687861 ((_ is Some!9053) lt!1388247))))

(assert (=> d!1174456 (= lt!1388247 (maxPrefix!3527 thiss!20629 rules!2768 (_2!23915 lt!1388065)))))

(assert (=> d!1174456 (= (lexList!1991 thiss!20629 rules!2768 (_2!23915 lt!1388065)) lt!1388249)))

(declare-fun b!3964795 () Bool)

(assert (=> b!3964795 (= e!2455552 (= (_2!23916 lt!1388249) (_2!23915 lt!1388065)))))

(declare-fun b!3964796 () Bool)

(assert (=> b!3964796 (= e!2455551 (tuple2!41565 Nil!42267 (_2!23915 lt!1388065)))))

(declare-fun b!3964797 () Bool)

(declare-fun e!2455550 () Bool)

(assert (=> b!3964797 (= e!2455552 e!2455550)))

(declare-fun res!1604871 () Bool)

(assert (=> b!3964797 (= res!1604871 (< (size!31639 (_2!23916 lt!1388249)) (size!31639 (_2!23915 lt!1388065))))))

(assert (=> b!3964797 (=> (not res!1604871) (not e!2455550))))

(declare-fun b!3964798 () Bool)

(assert (=> b!3964798 (= e!2455550 (not (isEmpty!25288 (_1!23916 lt!1388249))))))

(declare-fun b!3964799 () Bool)

(declare-fun lt!1388248 () tuple2!41564)

(assert (=> b!3964799 (= e!2455551 (tuple2!41565 (Cons!42267 (_1!23915 (v!39399 lt!1388247)) (_1!23916 lt!1388248)) (_2!23916 lt!1388248)))))

(assert (=> b!3964799 (= lt!1388248 (lexList!1991 thiss!20629 rules!2768 (_2!23915 (v!39399 lt!1388247))))))

(assert (= (and d!1174456 c!687861) b!3964799))

(assert (= (and d!1174456 (not c!687861)) b!3964796))

(assert (= (and d!1174456 c!687862) b!3964797))

(assert (= (and d!1174456 (not c!687862)) b!3964795))

(assert (= (and b!3964797 res!1604871) b!3964798))

(declare-fun m!4534395 () Bool)

(assert (=> d!1174456 m!4534395))

(declare-fun m!4534397 () Bool)

(assert (=> d!1174456 m!4534397))

(declare-fun m!4534399 () Bool)

(assert (=> b!3964797 m!4534399))

(assert (=> b!3964797 m!4533625))

(declare-fun m!4534401 () Bool)

(assert (=> b!3964798 m!4534401))

(declare-fun m!4534403 () Bool)

(assert (=> b!3964799 m!4534403))

(assert (=> bm!285467 d!1174456))

(declare-fun b!3964802 () Bool)

(declare-fun e!2455555 () Bool)

(assert (=> b!3964802 (= e!2455555 (isPrefix!3723 (tail!6179 prefix!426) (tail!6179 lt!1388042)))))

(declare-fun d!1174458 () Bool)

(declare-fun e!2455553 () Bool)

(assert (=> d!1174458 e!2455553))

(declare-fun res!1604872 () Bool)

(assert (=> d!1174458 (=> res!1604872 e!2455553)))

(declare-fun lt!1388250 () Bool)

(assert (=> d!1174458 (= res!1604872 (not lt!1388250))))

(declare-fun e!2455554 () Bool)

(assert (=> d!1174458 (= lt!1388250 e!2455554)))

(declare-fun res!1604875 () Bool)

(assert (=> d!1174458 (=> res!1604875 e!2455554)))

(assert (=> d!1174458 (= res!1604875 ((_ is Nil!42266) prefix!426))))

(assert (=> d!1174458 (= (isPrefix!3723 prefix!426 lt!1388042) lt!1388250)))

(declare-fun b!3964800 () Bool)

(assert (=> b!3964800 (= e!2455554 e!2455555)))

(declare-fun res!1604873 () Bool)

(assert (=> b!3964800 (=> (not res!1604873) (not e!2455555))))

(assert (=> b!3964800 (= res!1604873 (not ((_ is Nil!42266) lt!1388042)))))

(declare-fun b!3964801 () Bool)

(declare-fun res!1604874 () Bool)

(assert (=> b!3964801 (=> (not res!1604874) (not e!2455555))))

(assert (=> b!3964801 (= res!1604874 (= (head!8447 prefix!426) (head!8447 lt!1388042)))))

(declare-fun b!3964803 () Bool)

(assert (=> b!3964803 (= e!2455553 (>= (size!31639 lt!1388042) (size!31639 prefix!426)))))

(assert (= (and d!1174458 (not res!1604875)) b!3964800))

(assert (= (and b!3964800 res!1604873) b!3964801))

(assert (= (and b!3964801 res!1604874) b!3964802))

(assert (= (and d!1174458 (not res!1604872)) b!3964803))

(declare-fun m!4534405 () Bool)

(assert (=> b!3964802 m!4534405))

(declare-fun m!4534407 () Bool)

(assert (=> b!3964802 m!4534407))

(assert (=> b!3964802 m!4534405))

(assert (=> b!3964802 m!4534407))

(declare-fun m!4534409 () Bool)

(assert (=> b!3964802 m!4534409))

(declare-fun m!4534411 () Bool)

(assert (=> b!3964801 m!4534411))

(declare-fun m!4534413 () Bool)

(assert (=> b!3964801 m!4534413))

(assert (=> b!3964803 m!4533633))

(assert (=> b!3964803 m!4533643))

(assert (=> b!3964328 d!1174458))

(declare-fun d!1174460 () Bool)

(declare-fun lt!1388251 () Int)

(assert (=> d!1174460 (>= lt!1388251 0)))

(declare-fun e!2455556 () Int)

(assert (=> d!1174460 (= lt!1388251 e!2455556)))

(declare-fun c!687863 () Bool)

(assert (=> d!1174460 (= c!687863 ((_ is Nil!42266) prefix!426))))

(assert (=> d!1174460 (= (size!31639 prefix!426) lt!1388251)))

(declare-fun b!3964804 () Bool)

(assert (=> b!3964804 (= e!2455556 0)))

(declare-fun b!3964805 () Bool)

(assert (=> b!3964805 (= e!2455556 (+ 1 (size!31639 (t!330149 prefix!426))))))

(assert (= (and d!1174460 c!687863) b!3964804))

(assert (= (and d!1174460 (not c!687863)) b!3964805))

(declare-fun m!4534415 () Bool)

(assert (=> b!3964805 m!4534415))

(assert (=> b!3964328 d!1174460))

(declare-fun d!1174462 () Bool)

(assert (=> d!1174462 (isPrefix!3723 lt!1388041 prefix!426)))

(declare-fun lt!1388254 () Unit!60883)

(declare-fun choose!23708 (List!42390 List!42390 List!42390) Unit!60883)

(assert (=> d!1174462 (= lt!1388254 (choose!23708 prefix!426 lt!1388041 lt!1388042))))

(assert (=> d!1174462 (isPrefix!3723 prefix!426 lt!1388042)))

(assert (=> d!1174462 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!319 prefix!426 lt!1388041 lt!1388042) lt!1388254)))

(declare-fun bs!587371 () Bool)

(assert (= bs!587371 d!1174462))

(assert (=> bs!587371 m!4533645))

(declare-fun m!4534417 () Bool)

(assert (=> bs!587371 m!4534417))

(assert (=> bs!587371 m!4533609))

(assert (=> b!3964328 d!1174462))

(declare-fun b!3964808 () Bool)

(declare-fun e!2455559 () Bool)

(assert (=> b!3964808 (= e!2455559 (isPrefix!3723 (tail!6179 lt!1388041) (tail!6179 prefix!426)))))

(declare-fun d!1174464 () Bool)

(declare-fun e!2455557 () Bool)

(assert (=> d!1174464 e!2455557))

(declare-fun res!1604876 () Bool)

(assert (=> d!1174464 (=> res!1604876 e!2455557)))

(declare-fun lt!1388255 () Bool)

(assert (=> d!1174464 (= res!1604876 (not lt!1388255))))

(declare-fun e!2455558 () Bool)

(assert (=> d!1174464 (= lt!1388255 e!2455558)))

(declare-fun res!1604879 () Bool)

(assert (=> d!1174464 (=> res!1604879 e!2455558)))

(assert (=> d!1174464 (= res!1604879 ((_ is Nil!42266) lt!1388041))))

(assert (=> d!1174464 (= (isPrefix!3723 lt!1388041 prefix!426) lt!1388255)))

(declare-fun b!3964806 () Bool)

(assert (=> b!3964806 (= e!2455558 e!2455559)))

(declare-fun res!1604877 () Bool)

(assert (=> b!3964806 (=> (not res!1604877) (not e!2455559))))

(assert (=> b!3964806 (= res!1604877 (not ((_ is Nil!42266) prefix!426)))))

(declare-fun b!3964807 () Bool)

(declare-fun res!1604878 () Bool)

(assert (=> b!3964807 (=> (not res!1604878) (not e!2455559))))

(assert (=> b!3964807 (= res!1604878 (= (head!8447 lt!1388041) (head!8447 prefix!426)))))

(declare-fun b!3964809 () Bool)

(assert (=> b!3964809 (= e!2455557 (>= (size!31639 prefix!426) (size!31639 lt!1388041)))))

(assert (= (and d!1174464 (not res!1604879)) b!3964806))

(assert (= (and b!3964806 res!1604877) b!3964807))

(assert (= (and b!3964807 res!1604878) b!3964808))

(assert (= (and d!1174464 (not res!1604876)) b!3964809))

(assert (=> b!3964808 m!4534183))

(assert (=> b!3964808 m!4534405))

(assert (=> b!3964808 m!4534183))

(assert (=> b!3964808 m!4534405))

(declare-fun m!4534419 () Bool)

(assert (=> b!3964808 m!4534419))

(assert (=> b!3964807 m!4534189))

(assert (=> b!3964807 m!4534411))

(assert (=> b!3964809 m!4533643))

(assert (=> b!3964809 m!4533709))

(assert (=> b!3964328 d!1174464))

(declare-fun d!1174466 () Bool)

(assert (=> d!1174466 (isPrefix!3723 prefix!426 (++!11026 prefix!426 suffix!1176))))

(declare-fun lt!1388256 () Unit!60883)

(assert (=> d!1174466 (= lt!1388256 (choose!23705 prefix!426 suffix!1176))))

(assert (=> d!1174466 (= (lemmaConcatTwoListThenFirstIsPrefix!2582 prefix!426 suffix!1176) lt!1388256)))

(declare-fun bs!587372 () Bool)

(assert (= bs!587372 d!1174466))

(assert (=> bs!587372 m!4533621))

(assert (=> bs!587372 m!4533621))

(declare-fun m!4534421 () Bool)

(assert (=> bs!587372 m!4534421))

(declare-fun m!4534423 () Bool)

(assert (=> bs!587372 m!4534423))

(assert (=> b!3964328 d!1174466))

(declare-fun d!1174468 () Bool)

(declare-fun e!2455562 () Bool)

(assert (=> d!1174468 e!2455562))

(declare-fun c!687865 () Bool)

(declare-fun lt!1388259 () tuple2!41564)

(assert (=> d!1174468 (= c!687865 (> (size!31641 (_1!23916 lt!1388259)) 0))))

(declare-fun e!2455561 () tuple2!41564)

(assert (=> d!1174468 (= lt!1388259 e!2455561)))

(declare-fun c!687864 () Bool)

(declare-fun lt!1388257 () Option!9054)

(assert (=> d!1174468 (= c!687864 ((_ is Some!9053) lt!1388257))))

(assert (=> d!1174468 (= lt!1388257 (maxPrefix!3527 thiss!20629 rules!2768 lt!1388054))))

(assert (=> d!1174468 (= (lexList!1991 thiss!20629 rules!2768 lt!1388054) lt!1388259)))

(declare-fun b!3964810 () Bool)

(assert (=> b!3964810 (= e!2455562 (= (_2!23916 lt!1388259) lt!1388054))))

(declare-fun b!3964811 () Bool)

(assert (=> b!3964811 (= e!2455561 (tuple2!41565 Nil!42267 lt!1388054))))

(declare-fun b!3964812 () Bool)

(declare-fun e!2455560 () Bool)

(assert (=> b!3964812 (= e!2455562 e!2455560)))

(declare-fun res!1604880 () Bool)

(assert (=> b!3964812 (= res!1604880 (< (size!31639 (_2!23916 lt!1388259)) (size!31639 lt!1388054)))))

(assert (=> b!3964812 (=> (not res!1604880) (not e!2455560))))

(declare-fun b!3964813 () Bool)

(assert (=> b!3964813 (= e!2455560 (not (isEmpty!25288 (_1!23916 lt!1388259))))))

(declare-fun b!3964814 () Bool)

(declare-fun lt!1388258 () tuple2!41564)

(assert (=> b!3964814 (= e!2455561 (tuple2!41565 (Cons!42267 (_1!23915 (v!39399 lt!1388257)) (_1!23916 lt!1388258)) (_2!23916 lt!1388258)))))

(assert (=> b!3964814 (= lt!1388258 (lexList!1991 thiss!20629 rules!2768 (_2!23915 (v!39399 lt!1388257))))))

(assert (= (and d!1174468 c!687864) b!3964814))

(assert (= (and d!1174468 (not c!687864)) b!3964811))

(assert (= (and d!1174468 c!687865) b!3964812))

(assert (= (and d!1174468 (not c!687865)) b!3964810))

(assert (= (and b!3964812 res!1604880) b!3964813))

(declare-fun m!4534425 () Bool)

(assert (=> d!1174468 m!4534425))

(declare-fun m!4534427 () Bool)

(assert (=> d!1174468 m!4534427))

(declare-fun m!4534429 () Bool)

(assert (=> b!3964812 m!4534429))

(assert (=> b!3964812 m!4534367))

(declare-fun m!4534431 () Bool)

(assert (=> b!3964813 m!4534431))

(declare-fun m!4534433 () Bool)

(assert (=> b!3964814 m!4534433))

(assert (=> b!3964303 d!1174468))

(declare-fun d!1174470 () Bool)

(assert (=> d!1174470 (not (= (lexList!1991 thiss!20629 rules!2768 (_2!23915 lt!1388065)) (tuple2!41565 (++!11025 lt!1388024 suffixTokens!72) suffixResult!91)))))

(declare-fun lt!1388262 () Unit!60883)

(declare-fun choose!23709 (LexerInterface!6223 List!42392 List!42390 List!42390 List!42391 List!42390 List!42391) Unit!60883)

(assert (=> d!1174470 (= lt!1388262 (choose!23709 thiss!20629 rules!2768 suffix!1176 (_2!23915 lt!1388065) suffixTokens!72 suffixResult!91 lt!1388024))))

(assert (=> d!1174470 (not (isEmpty!25289 rules!2768))))

(assert (=> d!1174470 (= (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!162 thiss!20629 rules!2768 suffix!1176 (_2!23915 lt!1388065) suffixTokens!72 suffixResult!91 lt!1388024) lt!1388262)))

(declare-fun bs!587373 () Bool)

(assert (= bs!587373 d!1174470))

(assert (=> bs!587373 m!4533739))

(assert (=> bs!587373 m!4533719))

(declare-fun m!4534435 () Bool)

(assert (=> bs!587373 m!4534435))

(assert (=> bs!587373 m!4533733))

(assert (=> b!3964324 d!1174470))

(declare-fun b!3964818 () Bool)

(declare-fun lt!1388263 () List!42391)

(declare-fun e!2455563 () Bool)

(assert (=> b!3964818 (= e!2455563 (or (not (= suffixTokens!72 Nil!42267)) (= lt!1388263 lt!1388024)))))

(declare-fun b!3964815 () Bool)

(declare-fun e!2455564 () List!42391)

(assert (=> b!3964815 (= e!2455564 suffixTokens!72)))

(declare-fun d!1174472 () Bool)

(assert (=> d!1174472 e!2455563))

(declare-fun res!1604881 () Bool)

(assert (=> d!1174472 (=> (not res!1604881) (not e!2455563))))

(assert (=> d!1174472 (= res!1604881 (= (content!6418 lt!1388263) ((_ map or) (content!6418 lt!1388024) (content!6418 suffixTokens!72))))))

(assert (=> d!1174472 (= lt!1388263 e!2455564)))

(declare-fun c!687866 () Bool)

(assert (=> d!1174472 (= c!687866 ((_ is Nil!42267) lt!1388024))))

(assert (=> d!1174472 (= (++!11025 lt!1388024 suffixTokens!72) lt!1388263)))

(declare-fun b!3964817 () Bool)

(declare-fun res!1604882 () Bool)

(assert (=> b!3964817 (=> (not res!1604882) (not e!2455563))))

(assert (=> b!3964817 (= res!1604882 (= (size!31641 lt!1388263) (+ (size!31641 lt!1388024) (size!31641 suffixTokens!72))))))

(declare-fun b!3964816 () Bool)

(assert (=> b!3964816 (= e!2455564 (Cons!42267 (h!47687 lt!1388024) (++!11025 (t!330150 lt!1388024) suffixTokens!72)))))

(assert (= (and d!1174472 c!687866) b!3964815))

(assert (= (and d!1174472 (not c!687866)) b!3964816))

(assert (= (and d!1174472 res!1604881) b!3964817))

(assert (= (and b!3964817 res!1604882) b!3964818))

(declare-fun m!4534437 () Bool)

(assert (=> d!1174472 m!4534437))

(declare-fun m!4534439 () Bool)

(assert (=> d!1174472 m!4534439))

(assert (=> d!1174472 m!4534347))

(declare-fun m!4534441 () Bool)

(assert (=> b!3964817 m!4534441))

(declare-fun m!4534443 () Bool)

(assert (=> b!3964817 m!4534443))

(assert (=> b!3964817 m!4534353))

(declare-fun m!4534445 () Bool)

(assert (=> b!3964816 m!4534445))

(assert (=> b!3964324 d!1174472))

(declare-fun d!1174474 () Bool)

(assert (=> d!1174474 (and (= lt!1388041 lt!1388041) (= (_2!23915 (v!39399 lt!1388060)) (_2!23915 lt!1388065)))))

(declare-fun lt!1388266 () Unit!60883)

(declare-fun choose!23710 (List!42390 List!42390 List!42390 List!42390) Unit!60883)

(assert (=> d!1174474 (= lt!1388266 (choose!23710 lt!1388041 (_2!23915 (v!39399 lt!1388060)) lt!1388041 (_2!23915 lt!1388065)))))

(assert (=> d!1174474 (= (++!11026 lt!1388041 (_2!23915 (v!39399 lt!1388060))) (++!11026 lt!1388041 (_2!23915 lt!1388065)))))

(assert (=> d!1174474 (= (lemmaConcatSameAndSameSizesThenSameLists!628 lt!1388041 (_2!23915 (v!39399 lt!1388060)) lt!1388041 (_2!23915 lt!1388065)) lt!1388266)))

(declare-fun bs!587374 () Bool)

(assert (= bs!587374 d!1174474))

(declare-fun m!4534447 () Bool)

(assert (=> bs!587374 m!4534447))

(assert (=> bs!587374 m!4533701))

(declare-fun m!4534449 () Bool)

(assert (=> bs!587374 m!4534449))

(assert (=> b!3964305 d!1174474))

(declare-fun d!1174476 () Bool)

(assert (=> d!1174476 (not (= (lexList!1991 thiss!20629 rules!2768 (_2!23915 lt!1388065)) (tuple2!41565 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1388269 () Unit!60883)

(declare-fun choose!23711 (LexerInterface!6223 List!42392 List!42390 List!42390 List!42391 List!42390) Unit!60883)

(assert (=> d!1174476 (= lt!1388269 (choose!23711 thiss!20629 rules!2768 suffix!1176 (_2!23915 lt!1388065) suffixTokens!72 suffixResult!91))))

(assert (=> d!1174476 (not (isEmpty!25289 rules!2768))))

(assert (=> d!1174476 (= (lemmaLexWithSmallerInputCannotProduceSameResults!162 thiss!20629 rules!2768 suffix!1176 (_2!23915 lt!1388065) suffixTokens!72 suffixResult!91) lt!1388269)))

(declare-fun bs!587375 () Bool)

(assert (= bs!587375 d!1174476))

(assert (=> bs!587375 m!4533739))

(declare-fun m!4534451 () Bool)

(assert (=> bs!587375 m!4534451))

(assert (=> bs!587375 m!4533733))

(assert (=> b!3964305 d!1174476))

(declare-fun d!1174478 () Bool)

(assert (=> d!1174478 (= (isEmpty!25290 lt!1388059) ((_ is Nil!42266) lt!1388059))))

(assert (=> b!3964304 d!1174478))

(declare-fun d!1174480 () Bool)

(assert (=> d!1174480 (not (= (lexList!1991 thiss!20629 rules!2768 suffix!1176) (tuple2!41565 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1388270 () Unit!60883)

(assert (=> d!1174480 (= lt!1388270 (choose!23711 thiss!20629 rules!2768 (_2!23915 (v!39399 lt!1388060)) suffix!1176 suffixTokens!72 suffixResult!91))))

(assert (=> d!1174480 (not (isEmpty!25289 rules!2768))))

(assert (=> d!1174480 (= (lemmaLexWithSmallerInputCannotProduceSameResults!162 thiss!20629 rules!2768 (_2!23915 (v!39399 lt!1388060)) suffix!1176 suffixTokens!72 suffixResult!91) lt!1388270)))

(declare-fun bs!587376 () Bool)

(assert (= bs!587376 d!1174480))

(assert (=> bs!587376 m!4533623))

(declare-fun m!4534453 () Bool)

(assert (=> bs!587376 m!4534453))

(assert (=> bs!587376 m!4533733))

(assert (=> b!3964322 d!1174480))

(declare-fun d!1174482 () Bool)

(declare-fun lt!1388273 () List!42390)

(assert (=> d!1174482 (= (++!11026 lt!1388041 lt!1388273) lt!1388042)))

(declare-fun e!2455567 () List!42390)

(assert (=> d!1174482 (= lt!1388273 e!2455567)))

(declare-fun c!687869 () Bool)

(assert (=> d!1174482 (= c!687869 ((_ is Cons!42266) lt!1388041))))

(assert (=> d!1174482 (>= (size!31639 lt!1388042) (size!31639 lt!1388041))))

(assert (=> d!1174482 (= (getSuffix!2174 lt!1388042 lt!1388041) lt!1388273)))

(declare-fun b!3964823 () Bool)

(assert (=> b!3964823 (= e!2455567 (getSuffix!2174 (tail!6179 lt!1388042) (t!330149 lt!1388041)))))

(declare-fun b!3964824 () Bool)

(assert (=> b!3964824 (= e!2455567 lt!1388042)))

(assert (= (and d!1174482 c!687869) b!3964823))

(assert (= (and d!1174482 (not c!687869)) b!3964824))

(declare-fun m!4534455 () Bool)

(assert (=> d!1174482 m!4534455))

(assert (=> d!1174482 m!4533633))

(assert (=> d!1174482 m!4533709))

(assert (=> b!3964823 m!4534407))

(assert (=> b!3964823 m!4534407))

(declare-fun m!4534457 () Bool)

(assert (=> b!3964823 m!4534457))

(assert (=> b!3964300 d!1174482))

(declare-fun d!1174484 () Bool)

(declare-fun e!2455568 () Bool)

(assert (=> d!1174484 e!2455568))

(declare-fun res!1604884 () Bool)

(assert (=> d!1174484 (=> (not res!1604884) (not e!2455568))))

(declare-fun lt!1388274 () List!42390)

(assert (=> d!1174484 (= res!1604884 (= (content!6419 lt!1388274) ((_ map or) (content!6419 lt!1388041) (content!6419 (_2!23915 (v!39399 lt!1388060))))))))

(declare-fun e!2455569 () List!42390)

(assert (=> d!1174484 (= lt!1388274 e!2455569)))

(declare-fun c!687870 () Bool)

(assert (=> d!1174484 (= c!687870 ((_ is Nil!42266) lt!1388041))))

(assert (=> d!1174484 (= (++!11026 lt!1388041 (_2!23915 (v!39399 lt!1388060))) lt!1388274)))

(declare-fun b!3964826 () Bool)

(assert (=> b!3964826 (= e!2455569 (Cons!42266 (h!47686 lt!1388041) (++!11026 (t!330149 lt!1388041) (_2!23915 (v!39399 lt!1388060)))))))

(declare-fun b!3964827 () Bool)

(declare-fun res!1604883 () Bool)

(assert (=> b!3964827 (=> (not res!1604883) (not e!2455568))))

(assert (=> b!3964827 (= res!1604883 (= (size!31639 lt!1388274) (+ (size!31639 lt!1388041) (size!31639 (_2!23915 (v!39399 lt!1388060))))))))

(declare-fun b!3964828 () Bool)

(assert (=> b!3964828 (= e!2455568 (or (not (= (_2!23915 (v!39399 lt!1388060)) Nil!42266)) (= lt!1388274 lt!1388041)))))

(declare-fun b!3964825 () Bool)

(assert (=> b!3964825 (= e!2455569 (_2!23915 (v!39399 lt!1388060)))))

(assert (= (and d!1174484 c!687870) b!3964825))

(assert (= (and d!1174484 (not c!687870)) b!3964826))

(assert (= (and d!1174484 res!1604884) b!3964827))

(assert (= (and b!3964827 res!1604883) b!3964828))

(declare-fun m!4534459 () Bool)

(assert (=> d!1174484 m!4534459))

(declare-fun m!4534461 () Bool)

(assert (=> d!1174484 m!4534461))

(declare-fun m!4534463 () Bool)

(assert (=> d!1174484 m!4534463))

(declare-fun m!4534465 () Bool)

(assert (=> b!3964826 m!4534465))

(declare-fun m!4534467 () Bool)

(assert (=> b!3964827 m!4534467))

(assert (=> b!3964827 m!4533709))

(assert (=> b!3964827 m!4533679))

(assert (=> b!3964300 d!1174484))

(declare-fun d!1174486 () Bool)

(assert (=> d!1174486 (isPrefix!3723 lt!1388041 (++!11026 lt!1388041 (_2!23915 (v!39399 lt!1388060))))))

(declare-fun lt!1388275 () Unit!60883)

(assert (=> d!1174486 (= lt!1388275 (choose!23705 lt!1388041 (_2!23915 (v!39399 lt!1388060))))))

(assert (=> d!1174486 (= (lemmaConcatTwoListThenFirstIsPrefix!2582 lt!1388041 (_2!23915 (v!39399 lt!1388060))) lt!1388275)))

(declare-fun bs!587377 () Bool)

(assert (= bs!587377 d!1174486))

(assert (=> bs!587377 m!4533701))

(assert (=> bs!587377 m!4533701))

(declare-fun m!4534469 () Bool)

(assert (=> bs!587377 m!4534469))

(declare-fun m!4534471 () Bool)

(assert (=> bs!587377 m!4534471))

(assert (=> b!3964300 d!1174486))

(declare-fun d!1174488 () Bool)

(declare-fun res!1604889 () Bool)

(declare-fun e!2455572 () Bool)

(assert (=> d!1174488 (=> (not res!1604889) (not e!2455572))))

(declare-fun validRegex!5252 (Regex!11539) Bool)

(assert (=> d!1174488 (= res!1604889 (validRegex!5252 (regex!6634 (rule!9618 (_1!23915 (v!39399 lt!1388060))))))))

(assert (=> d!1174488 (= (ruleValid!2576 thiss!20629 (rule!9618 (_1!23915 (v!39399 lt!1388060)))) e!2455572)))

(declare-fun b!3964833 () Bool)

(declare-fun res!1604890 () Bool)

(assert (=> b!3964833 (=> (not res!1604890) (not e!2455572))))

(declare-fun nullable!4053 (Regex!11539) Bool)

(assert (=> b!3964833 (= res!1604890 (not (nullable!4053 (regex!6634 (rule!9618 (_1!23915 (v!39399 lt!1388060)))))))))

(declare-fun b!3964834 () Bool)

(assert (=> b!3964834 (= e!2455572 (not (= (tag!7494 (rule!9618 (_1!23915 (v!39399 lt!1388060)))) (String!48039 ""))))))

(assert (= (and d!1174488 res!1604889) b!3964833))

(assert (= (and b!3964833 res!1604890) b!3964834))

(declare-fun m!4534473 () Bool)

(assert (=> d!1174488 m!4534473))

(declare-fun m!4534475 () Bool)

(assert (=> b!3964833 m!4534475))

(assert (=> b!3964300 d!1174488))

(declare-fun d!1174490 () Bool)

(assert (=> d!1174490 (= (size!31638 (_1!23915 (v!39399 lt!1388060))) (size!31639 (originalCharacters!7234 (_1!23915 (v!39399 lt!1388060)))))))

(declare-fun Unit!60895 () Unit!60883)

(assert (=> d!1174490 (= (lemmaCharactersSize!1287 (_1!23915 (v!39399 lt!1388060))) Unit!60895)))

(declare-fun bs!587378 () Bool)

(assert (= bs!587378 d!1174490))

(assert (=> bs!587378 m!4533615))

(assert (=> b!3964300 d!1174490))

(declare-fun d!1174492 () Bool)

(assert (=> d!1174492 (ruleValid!2576 thiss!20629 (rule!9618 (_1!23915 (v!39399 lt!1388060))))))

(declare-fun lt!1388278 () Unit!60883)

(declare-fun choose!23714 (LexerInterface!6223 Rule!13068 List!42392) Unit!60883)

(assert (=> d!1174492 (= lt!1388278 (choose!23714 thiss!20629 (rule!9618 (_1!23915 (v!39399 lt!1388060))) rules!2768))))

(declare-fun contains!8434 (List!42392 Rule!13068) Bool)

(assert (=> d!1174492 (contains!8434 rules!2768 (rule!9618 (_1!23915 (v!39399 lt!1388060))))))

(assert (=> d!1174492 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1652 thiss!20629 (rule!9618 (_1!23915 (v!39399 lt!1388060))) rules!2768) lt!1388278)))

(declare-fun bs!587379 () Bool)

(assert (= bs!587379 d!1174492))

(assert (=> bs!587379 m!4533689))

(declare-fun m!4534477 () Bool)

(assert (=> bs!587379 m!4534477))

(declare-fun m!4534479 () Bool)

(assert (=> bs!587379 m!4534479))

(assert (=> b!3964300 d!1174492))

(declare-fun d!1174494 () Bool)

(declare-fun dynLambda!18041 (Int BalanceConc!25284) TokenValue!6864)

(assert (=> d!1174494 (= (apply!9865 (transformation!6634 (rule!9618 (_1!23915 (v!39399 lt!1388060)))) (seqFromList!4893 lt!1388041)) (dynLambda!18041 (toValue!9114 (transformation!6634 (rule!9618 (_1!23915 (v!39399 lt!1388060))))) (seqFromList!4893 lt!1388041)))))

(declare-fun b_lambda!115923 () Bool)

(assert (=> (not b_lambda!115923) (not d!1174494)))

(declare-fun tb!239085 () Bool)

(declare-fun t!330213 () Bool)

(assert (=> (and b!3964325 (= (toValue!9114 (transformation!6634 (h!47688 rules!2768))) (toValue!9114 (transformation!6634 (rule!9618 (_1!23915 (v!39399 lt!1388060)))))) t!330213) tb!239085))

(declare-fun result!289532 () Bool)

(assert (=> tb!239085 (= result!289532 (inv!21 (dynLambda!18041 (toValue!9114 (transformation!6634 (rule!9618 (_1!23915 (v!39399 lt!1388060))))) (seqFromList!4893 lt!1388041))))))

(declare-fun m!4534481 () Bool)

(assert (=> tb!239085 m!4534481))

(assert (=> d!1174494 t!330213))

(declare-fun b_and!304519 () Bool)

(assert (= b_and!304459 (and (=> t!330213 result!289532) b_and!304519)))

(declare-fun tb!239087 () Bool)

(declare-fun t!330215 () Bool)

(assert (=> (and b!3964317 (= (toValue!9114 (transformation!6634 (rule!9618 (h!47687 prefixTokens!80)))) (toValue!9114 (transformation!6634 (rule!9618 (_1!23915 (v!39399 lt!1388060)))))) t!330215) tb!239087))

(declare-fun result!289536 () Bool)

(assert (= result!289536 result!289532))

(assert (=> d!1174494 t!330215))

(declare-fun b_and!304521 () Bool)

(assert (= b_and!304463 (and (=> t!330215 result!289536) b_and!304521)))

(declare-fun t!330217 () Bool)

(declare-fun tb!239089 () Bool)

(assert (=> (and b!3964295 (= (toValue!9114 (transformation!6634 (rule!9618 (h!47687 suffixTokens!72)))) (toValue!9114 (transformation!6634 (rule!9618 (_1!23915 (v!39399 lt!1388060)))))) t!330217) tb!239089))

(declare-fun result!289538 () Bool)

(assert (= result!289538 result!289532))

(assert (=> d!1174494 t!330217))

(declare-fun b_and!304523 () Bool)

(assert (= b_and!304467 (and (=> t!330217 result!289538) b_and!304523)))

(assert (=> d!1174494 m!4533697))

(declare-fun m!4534483 () Bool)

(assert (=> d!1174494 m!4534483))

(assert (=> b!3964300 d!1174494))

(declare-fun d!1174496 () Bool)

(declare-fun list!15686 (Conc!12845) List!42390)

(assert (=> d!1174496 (= (list!15684 (charsOf!4452 (_1!23915 (v!39399 lt!1388060)))) (list!15686 (c!687773 (charsOf!4452 (_1!23915 (v!39399 lt!1388060))))))))

(declare-fun bs!587380 () Bool)

(assert (= bs!587380 d!1174496))

(declare-fun m!4534485 () Bool)

(assert (=> bs!587380 m!4534485))

(assert (=> b!3964300 d!1174496))

(declare-fun d!1174498 () Bool)

(declare-fun fromListB!2258 (List!42390) BalanceConc!25284)

(assert (=> d!1174498 (= (seqFromList!4893 lt!1388041) (fromListB!2258 lt!1388041))))

(declare-fun bs!587381 () Bool)

(assert (= bs!587381 d!1174498))

(declare-fun m!4534487 () Bool)

(assert (=> bs!587381 m!4534487))

(assert (=> b!3964300 d!1174498))

(declare-fun b!3964839 () Bool)

(declare-fun e!2455578 () Bool)

(assert (=> b!3964839 (= e!2455578 (isPrefix!3723 (tail!6179 lt!1388041) (tail!6179 lt!1388050)))))

(declare-fun d!1174500 () Bool)

(declare-fun e!2455576 () Bool)

(assert (=> d!1174500 e!2455576))

(declare-fun res!1604891 () Bool)

(assert (=> d!1174500 (=> res!1604891 e!2455576)))

(declare-fun lt!1388279 () Bool)

(assert (=> d!1174500 (= res!1604891 (not lt!1388279))))

(declare-fun e!2455577 () Bool)

(assert (=> d!1174500 (= lt!1388279 e!2455577)))

(declare-fun res!1604894 () Bool)

(assert (=> d!1174500 (=> res!1604894 e!2455577)))

(assert (=> d!1174500 (= res!1604894 ((_ is Nil!42266) lt!1388041))))

(assert (=> d!1174500 (= (isPrefix!3723 lt!1388041 lt!1388050) lt!1388279)))

(declare-fun b!3964837 () Bool)

(assert (=> b!3964837 (= e!2455577 e!2455578)))

(declare-fun res!1604892 () Bool)

(assert (=> b!3964837 (=> (not res!1604892) (not e!2455578))))

(assert (=> b!3964837 (= res!1604892 (not ((_ is Nil!42266) lt!1388050)))))

(declare-fun b!3964838 () Bool)

(declare-fun res!1604893 () Bool)

(assert (=> b!3964838 (=> (not res!1604893) (not e!2455578))))

(assert (=> b!3964838 (= res!1604893 (= (head!8447 lt!1388041) (head!8447 lt!1388050)))))

(declare-fun b!3964840 () Bool)

(assert (=> b!3964840 (= e!2455576 (>= (size!31639 lt!1388050) (size!31639 lt!1388041)))))

(assert (= (and d!1174500 (not res!1604894)) b!3964837))

(assert (= (and b!3964837 res!1604892) b!3964838))

(assert (= (and b!3964838 res!1604893) b!3964839))

(assert (= (and d!1174500 (not res!1604891)) b!3964840))

(assert (=> b!3964839 m!4534183))

(declare-fun m!4534489 () Bool)

(assert (=> b!3964839 m!4534489))

(assert (=> b!3964839 m!4534183))

(assert (=> b!3964839 m!4534489))

(declare-fun m!4534491 () Bool)

(assert (=> b!3964839 m!4534491))

(assert (=> b!3964838 m!4534189))

(declare-fun m!4534493 () Bool)

(assert (=> b!3964838 m!4534493))

(declare-fun m!4534495 () Bool)

(assert (=> b!3964840 m!4534495))

(assert (=> b!3964840 m!4533709))

(assert (=> b!3964300 d!1174500))

(declare-fun d!1174502 () Bool)

(declare-fun e!2455581 () Bool)

(assert (=> d!1174502 e!2455581))

(declare-fun c!687872 () Bool)

(declare-fun lt!1388282 () tuple2!41564)

(assert (=> d!1174502 (= c!687872 (> (size!31641 (_1!23916 lt!1388282)) 0))))

(declare-fun e!2455580 () tuple2!41564)

(assert (=> d!1174502 (= lt!1388282 e!2455580)))

(declare-fun c!687871 () Bool)

(declare-fun lt!1388280 () Option!9054)

(assert (=> d!1174502 (= c!687871 ((_ is Some!9053) lt!1388280))))

(assert (=> d!1174502 (= lt!1388280 (maxPrefix!3527 thiss!20629 rules!2768 (_2!23915 (v!39399 lt!1388060))))))

(assert (=> d!1174502 (= (lexList!1991 thiss!20629 rules!2768 (_2!23915 (v!39399 lt!1388060))) lt!1388282)))

(declare-fun b!3964841 () Bool)

(assert (=> b!3964841 (= e!2455581 (= (_2!23916 lt!1388282) (_2!23915 (v!39399 lt!1388060))))))

(declare-fun b!3964842 () Bool)

(assert (=> b!3964842 (= e!2455580 (tuple2!41565 Nil!42267 (_2!23915 (v!39399 lt!1388060))))))

(declare-fun b!3964843 () Bool)

(declare-fun e!2455579 () Bool)

(assert (=> b!3964843 (= e!2455581 e!2455579)))

(declare-fun res!1604895 () Bool)

(assert (=> b!3964843 (= res!1604895 (< (size!31639 (_2!23916 lt!1388282)) (size!31639 (_2!23915 (v!39399 lt!1388060)))))))

(assert (=> b!3964843 (=> (not res!1604895) (not e!2455579))))

(declare-fun b!3964844 () Bool)

(assert (=> b!3964844 (= e!2455579 (not (isEmpty!25288 (_1!23916 lt!1388282))))))

(declare-fun b!3964845 () Bool)

(declare-fun lt!1388281 () tuple2!41564)

(assert (=> b!3964845 (= e!2455580 (tuple2!41565 (Cons!42267 (_1!23915 (v!39399 lt!1388280)) (_1!23916 lt!1388281)) (_2!23916 lt!1388281)))))

(assert (=> b!3964845 (= lt!1388281 (lexList!1991 thiss!20629 rules!2768 (_2!23915 (v!39399 lt!1388280))))))

(assert (= (and d!1174502 c!687871) b!3964845))

(assert (= (and d!1174502 (not c!687871)) b!3964842))

(assert (= (and d!1174502 c!687872) b!3964843))

(assert (= (and d!1174502 (not c!687872)) b!3964841))

(assert (= (and b!3964843 res!1604895) b!3964844))

(declare-fun m!4534497 () Bool)

(assert (=> d!1174502 m!4534497))

(declare-fun m!4534499 () Bool)

(assert (=> d!1174502 m!4534499))

(declare-fun m!4534501 () Bool)

(assert (=> b!3964843 m!4534501))

(assert (=> b!3964843 m!4533679))

(declare-fun m!4534503 () Bool)

(assert (=> b!3964844 m!4534503))

(declare-fun m!4534505 () Bool)

(assert (=> b!3964845 m!4534505))

(assert (=> b!3964300 d!1174502))

(declare-fun d!1174504 () Bool)

(declare-fun lt!1388283 () Int)

(assert (=> d!1174504 (>= lt!1388283 0)))

(declare-fun e!2455582 () Int)

(assert (=> d!1174504 (= lt!1388283 e!2455582)))

(declare-fun c!687873 () Bool)

(assert (=> d!1174504 (= c!687873 ((_ is Nil!42266) lt!1388041))))

(assert (=> d!1174504 (= (size!31639 lt!1388041) lt!1388283)))

(declare-fun b!3964846 () Bool)

(assert (=> b!3964846 (= e!2455582 0)))

(declare-fun b!3964847 () Bool)

(assert (=> b!3964847 (= e!2455582 (+ 1 (size!31639 (t!330149 lt!1388041))))))

(assert (= (and d!1174504 c!687873) b!3964846))

(assert (= (and d!1174504 (not c!687873)) b!3964847))

(declare-fun m!4534507 () Bool)

(assert (=> b!3964847 m!4534507))

(assert (=> b!3964300 d!1174504))

(declare-fun d!1174506 () Bool)

(assert (=> d!1174506 (= (_2!23915 (v!39399 lt!1388060)) lt!1388056)))

(declare-fun lt!1388284 () Unit!60883)

(assert (=> d!1174506 (= lt!1388284 (choose!23704 lt!1388041 (_2!23915 (v!39399 lt!1388060)) lt!1388041 lt!1388056 lt!1388042))))

(assert (=> d!1174506 (isPrefix!3723 lt!1388041 lt!1388042)))

(assert (=> d!1174506 (= (lemmaSamePrefixThenSameSuffix!1932 lt!1388041 (_2!23915 (v!39399 lt!1388060)) lt!1388041 lt!1388056 lt!1388042) lt!1388284)))

(declare-fun bs!587382 () Bool)

(assert (= bs!587382 d!1174506))

(declare-fun m!4534509 () Bool)

(assert (=> bs!587382 m!4534509))

(assert (=> bs!587382 m!4534181))

(assert (=> b!3964300 d!1174506))

(declare-fun d!1174508 () Bool)

(declare-fun lt!1388287 () BalanceConc!25284)

(assert (=> d!1174508 (= (list!15684 lt!1388287) (originalCharacters!7234 (_1!23915 (v!39399 lt!1388060))))))

(assert (=> d!1174508 (= lt!1388287 (dynLambda!18040 (toChars!8973 (transformation!6634 (rule!9618 (_1!23915 (v!39399 lt!1388060))))) (value!209703 (_1!23915 (v!39399 lt!1388060)))))))

(assert (=> d!1174508 (= (charsOf!4452 (_1!23915 (v!39399 lt!1388060))) lt!1388287)))

(declare-fun b_lambda!115925 () Bool)

(assert (=> (not b_lambda!115925) (not d!1174508)))

(declare-fun t!330219 () Bool)

(declare-fun tb!239091 () Bool)

(assert (=> (and b!3964325 (= (toChars!8973 (transformation!6634 (h!47688 rules!2768))) (toChars!8973 (transformation!6634 (rule!9618 (_1!23915 (v!39399 lt!1388060)))))) t!330219) tb!239091))

(declare-fun b!3964848 () Bool)

(declare-fun e!2455583 () Bool)

(declare-fun tp!1208472 () Bool)

(assert (=> b!3964848 (= e!2455583 (and (inv!56495 (c!687773 (dynLambda!18040 (toChars!8973 (transformation!6634 (rule!9618 (_1!23915 (v!39399 lt!1388060))))) (value!209703 (_1!23915 (v!39399 lt!1388060)))))) tp!1208472))))

(declare-fun result!289540 () Bool)

(assert (=> tb!239091 (= result!289540 (and (inv!56496 (dynLambda!18040 (toChars!8973 (transformation!6634 (rule!9618 (_1!23915 (v!39399 lt!1388060))))) (value!209703 (_1!23915 (v!39399 lt!1388060))))) e!2455583))))

(assert (= tb!239091 b!3964848))

(declare-fun m!4534511 () Bool)

(assert (=> b!3964848 m!4534511))

(declare-fun m!4534513 () Bool)

(assert (=> tb!239091 m!4534513))

(assert (=> d!1174508 t!330219))

(declare-fun b_and!304525 () Bool)

(assert (= b_and!304501 (and (=> t!330219 result!289540) b_and!304525)))

(declare-fun tb!239093 () Bool)

(declare-fun t!330221 () Bool)

(assert (=> (and b!3964317 (= (toChars!8973 (transformation!6634 (rule!9618 (h!47687 prefixTokens!80)))) (toChars!8973 (transformation!6634 (rule!9618 (_1!23915 (v!39399 lt!1388060)))))) t!330221) tb!239093))

(declare-fun result!289542 () Bool)

(assert (= result!289542 result!289540))

(assert (=> d!1174508 t!330221))

(declare-fun b_and!304527 () Bool)

(assert (= b_and!304503 (and (=> t!330221 result!289542) b_and!304527)))

(declare-fun tb!239095 () Bool)

(declare-fun t!330223 () Bool)

(assert (=> (and b!3964295 (= (toChars!8973 (transformation!6634 (rule!9618 (h!47687 suffixTokens!72)))) (toChars!8973 (transformation!6634 (rule!9618 (_1!23915 (v!39399 lt!1388060)))))) t!330223) tb!239095))

(declare-fun result!289544 () Bool)

(assert (= result!289544 result!289540))

(assert (=> d!1174508 t!330223))

(declare-fun b_and!304529 () Bool)

(assert (= b_and!304505 (and (=> t!330223 result!289544) b_and!304529)))

(declare-fun m!4534515 () Bool)

(assert (=> d!1174508 m!4534515))

(declare-fun m!4534517 () Bool)

(assert (=> d!1174508 m!4534517))

(assert (=> b!3964300 d!1174508))

(declare-fun d!1174510 () Bool)

(declare-fun e!2455584 () Bool)

(assert (=> d!1174510 e!2455584))

(declare-fun res!1604897 () Bool)

(assert (=> d!1174510 (=> (not res!1604897) (not e!2455584))))

(declare-fun lt!1388288 () List!42390)

(assert (=> d!1174510 (= res!1604897 (= (content!6419 lt!1388288) ((_ map or) (content!6419 lt!1388041) (content!6419 lt!1388054))))))

(declare-fun e!2455585 () List!42390)

(assert (=> d!1174510 (= lt!1388288 e!2455585)))

(declare-fun c!687874 () Bool)

(assert (=> d!1174510 (= c!687874 ((_ is Nil!42266) lt!1388041))))

(assert (=> d!1174510 (= (++!11026 lt!1388041 lt!1388054) lt!1388288)))

(declare-fun b!3964850 () Bool)

(assert (=> b!3964850 (= e!2455585 (Cons!42266 (h!47686 lt!1388041) (++!11026 (t!330149 lt!1388041) lt!1388054)))))

(declare-fun b!3964851 () Bool)

(declare-fun res!1604896 () Bool)

(assert (=> b!3964851 (=> (not res!1604896) (not e!2455584))))

(assert (=> b!3964851 (= res!1604896 (= (size!31639 lt!1388288) (+ (size!31639 lt!1388041) (size!31639 lt!1388054))))))

(declare-fun b!3964852 () Bool)

(assert (=> b!3964852 (= e!2455584 (or (not (= lt!1388054 Nil!42266)) (= lt!1388288 lt!1388041)))))

(declare-fun b!3964849 () Bool)

(assert (=> b!3964849 (= e!2455585 lt!1388054)))

(assert (= (and d!1174510 c!687874) b!3964849))

(assert (= (and d!1174510 (not c!687874)) b!3964850))

(assert (= (and d!1174510 res!1604897) b!3964851))

(assert (= (and b!3964851 res!1604896) b!3964852))

(declare-fun m!4534519 () Bool)

(assert (=> d!1174510 m!4534519))

(assert (=> d!1174510 m!4534461))

(declare-fun m!4534521 () Bool)

(assert (=> d!1174510 m!4534521))

(declare-fun m!4534523 () Bool)

(assert (=> b!3964850 m!4534523))

(declare-fun m!4534525 () Bool)

(assert (=> b!3964851 m!4534525))

(assert (=> b!3964851 m!4533709))

(assert (=> b!3964851 m!4534367))

(assert (=> b!3964302 d!1174510))

(declare-fun d!1174512 () Bool)

(declare-fun e!2455586 () Bool)

(assert (=> d!1174512 e!2455586))

(declare-fun res!1604899 () Bool)

(assert (=> d!1174512 (=> (not res!1604899) (not e!2455586))))

(declare-fun lt!1388289 () List!42390)

(assert (=> d!1174512 (= res!1604899 (= (content!6419 lt!1388289) ((_ map or) (content!6419 lt!1388059) (content!6419 suffix!1176))))))

(declare-fun e!2455587 () List!42390)

(assert (=> d!1174512 (= lt!1388289 e!2455587)))

(declare-fun c!687875 () Bool)

(assert (=> d!1174512 (= c!687875 ((_ is Nil!42266) lt!1388059))))

(assert (=> d!1174512 (= (++!11026 lt!1388059 suffix!1176) lt!1388289)))

(declare-fun b!3964854 () Bool)

(assert (=> b!3964854 (= e!2455587 (Cons!42266 (h!47686 lt!1388059) (++!11026 (t!330149 lt!1388059) suffix!1176)))))

(declare-fun b!3964855 () Bool)

(declare-fun res!1604898 () Bool)

(assert (=> b!3964855 (=> (not res!1604898) (not e!2455586))))

(assert (=> b!3964855 (= res!1604898 (= (size!31639 lt!1388289) (+ (size!31639 lt!1388059) (size!31639 suffix!1176))))))

(declare-fun b!3964856 () Bool)

(assert (=> b!3964856 (= e!2455586 (or (not (= suffix!1176 Nil!42266)) (= lt!1388289 lt!1388059)))))

(declare-fun b!3964853 () Bool)

(assert (=> b!3964853 (= e!2455587 suffix!1176)))

(assert (= (and d!1174512 c!687875) b!3964853))

(assert (= (and d!1174512 (not c!687875)) b!3964854))

(assert (= (and d!1174512 res!1604899) b!3964855))

(assert (= (and b!3964855 res!1604898) b!3964856))

(declare-fun m!4534527 () Bool)

(assert (=> d!1174512 m!4534527))

(declare-fun m!4534529 () Bool)

(assert (=> d!1174512 m!4534529))

(assert (=> d!1174512 m!4534323))

(declare-fun m!4534531 () Bool)

(assert (=> b!3964854 m!4534531))

(declare-fun m!4534533 () Bool)

(assert (=> b!3964855 m!4534533))

(assert (=> b!3964855 m!4534369))

(assert (=> b!3964855 m!4533677))

(assert (=> b!3964302 d!1174512))

(declare-fun d!1174514 () Bool)

(assert (=> d!1174514 (= (++!11026 (++!11026 lt!1388041 lt!1388059) suffix!1176) (++!11026 lt!1388041 (++!11026 lt!1388059 suffix!1176)))))

(declare-fun lt!1388292 () Unit!60883)

(declare-fun choose!23715 (List!42390 List!42390 List!42390) Unit!60883)

(assert (=> d!1174514 (= lt!1388292 (choose!23715 lt!1388041 lt!1388059 suffix!1176))))

(assert (=> d!1174514 (= (lemmaConcatAssociativity!2372 lt!1388041 lt!1388059 suffix!1176) lt!1388292)))

(declare-fun bs!587383 () Bool)

(assert (= bs!587383 d!1174514))

(assert (=> bs!587383 m!4533671))

(declare-fun m!4534535 () Bool)

(assert (=> bs!587383 m!4534535))

(assert (=> bs!587383 m!4533671))

(assert (=> bs!587383 m!4533735))

(declare-fun m!4534537 () Bool)

(assert (=> bs!587383 m!4534537))

(declare-fun m!4534539 () Bool)

(assert (=> bs!587383 m!4534539))

(assert (=> bs!587383 m!4533735))

(assert (=> b!3964302 d!1174514))

(declare-fun d!1174516 () Bool)

(declare-fun e!2455590 () Bool)

(assert (=> d!1174516 e!2455590))

(declare-fun c!687877 () Bool)

(declare-fun lt!1388295 () tuple2!41564)

(assert (=> d!1174516 (= c!687877 (> (size!31641 (_1!23916 lt!1388295)) 0))))

(declare-fun e!2455589 () tuple2!41564)

(assert (=> d!1174516 (= lt!1388295 e!2455589)))

(declare-fun c!687876 () Bool)

(declare-fun lt!1388293 () Option!9054)

(assert (=> d!1174516 (= c!687876 ((_ is Some!9053) lt!1388293))))

(assert (=> d!1174516 (= lt!1388293 (maxPrefix!3527 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1174516 (= (lexList!1991 thiss!20629 rules!2768 suffix!1176) lt!1388295)))

(declare-fun b!3964857 () Bool)

(assert (=> b!3964857 (= e!2455590 (= (_2!23916 lt!1388295) suffix!1176))))

(declare-fun b!3964858 () Bool)

(assert (=> b!3964858 (= e!2455589 (tuple2!41565 Nil!42267 suffix!1176))))

(declare-fun b!3964859 () Bool)

(declare-fun e!2455588 () Bool)

(assert (=> b!3964859 (= e!2455590 e!2455588)))

(declare-fun res!1604900 () Bool)

(assert (=> b!3964859 (= res!1604900 (< (size!31639 (_2!23916 lt!1388295)) (size!31639 suffix!1176)))))

(assert (=> b!3964859 (=> (not res!1604900) (not e!2455588))))

(declare-fun b!3964860 () Bool)

(assert (=> b!3964860 (= e!2455588 (not (isEmpty!25288 (_1!23916 lt!1388295))))))

(declare-fun b!3964861 () Bool)

(declare-fun lt!1388294 () tuple2!41564)

(assert (=> b!3964861 (= e!2455589 (tuple2!41565 (Cons!42267 (_1!23915 (v!39399 lt!1388293)) (_1!23916 lt!1388294)) (_2!23916 lt!1388294)))))

(assert (=> b!3964861 (= lt!1388294 (lexList!1991 thiss!20629 rules!2768 (_2!23915 (v!39399 lt!1388293))))))

(assert (= (and d!1174516 c!687876) b!3964861))

(assert (= (and d!1174516 (not c!687876)) b!3964858))

(assert (= (and d!1174516 c!687877) b!3964859))

(assert (= (and d!1174516 (not c!687877)) b!3964857))

(assert (= (and b!3964859 res!1604900) b!3964860))

(declare-fun m!4534541 () Bool)

(assert (=> d!1174516 m!4534541))

(declare-fun m!4534543 () Bool)

(assert (=> d!1174516 m!4534543))

(declare-fun m!4534545 () Bool)

(assert (=> b!3964859 m!4534545))

(assert (=> b!3964859 m!4533677))

(declare-fun m!4534547 () Bool)

(assert (=> b!3964860 m!4534547))

(declare-fun m!4534549 () Bool)

(assert (=> b!3964861 m!4534549))

(assert (=> b!3964298 d!1174516))

(declare-fun d!1174518 () Bool)

(declare-fun e!2455599 () Bool)

(assert (=> d!1174518 e!2455599))

(declare-fun res!1604919 () Bool)

(assert (=> d!1174518 (=> res!1604919 e!2455599)))

(declare-fun lt!1388309 () Option!9054)

(assert (=> d!1174518 (= res!1604919 (isEmpty!25292 lt!1388309))))

(declare-fun e!2455598 () Option!9054)

(assert (=> d!1174518 (= lt!1388309 e!2455598)))

(declare-fun c!687880 () Bool)

(assert (=> d!1174518 (= c!687880 (and ((_ is Cons!42268) rules!2768) ((_ is Nil!42268) (t!330151 rules!2768))))))

(declare-fun lt!1388307 () Unit!60883)

(declare-fun lt!1388308 () Unit!60883)

(assert (=> d!1174518 (= lt!1388307 lt!1388308)))

(assert (=> d!1174518 (isPrefix!3723 lt!1388042 lt!1388042)))

(declare-fun lemmaIsPrefixRefl!2346 (List!42390 List!42390) Unit!60883)

(assert (=> d!1174518 (= lt!1388308 (lemmaIsPrefixRefl!2346 lt!1388042 lt!1388042))))

(declare-fun rulesValidInductive!2404 (LexerInterface!6223 List!42392) Bool)

(assert (=> d!1174518 (rulesValidInductive!2404 thiss!20629 rules!2768)))

(assert (=> d!1174518 (= (maxPrefix!3527 thiss!20629 rules!2768 lt!1388042) lt!1388309)))

(declare-fun b!3964880 () Bool)

(declare-fun res!1604920 () Bool)

(declare-fun e!2455597 () Bool)

(assert (=> b!3964880 (=> (not res!1604920) (not e!2455597))))

(assert (=> b!3964880 (= res!1604920 (< (size!31639 (_2!23915 (get!13941 lt!1388309))) (size!31639 lt!1388042)))))

(declare-fun b!3964881 () Bool)

(declare-fun lt!1388306 () Option!9054)

(declare-fun lt!1388310 () Option!9054)

(assert (=> b!3964881 (= e!2455598 (ite (and ((_ is None!9053) lt!1388306) ((_ is None!9053) lt!1388310)) None!9053 (ite ((_ is None!9053) lt!1388310) lt!1388306 (ite ((_ is None!9053) lt!1388306) lt!1388310 (ite (>= (size!31638 (_1!23915 (v!39399 lt!1388306))) (size!31638 (_1!23915 (v!39399 lt!1388310)))) lt!1388306 lt!1388310)))))))

(declare-fun call!285478 () Option!9054)

(assert (=> b!3964881 (= lt!1388306 call!285478)))

(assert (=> b!3964881 (= lt!1388310 (maxPrefix!3527 thiss!20629 (t!330151 rules!2768) lt!1388042))))

(declare-fun b!3964882 () Bool)

(declare-fun res!1604916 () Bool)

(assert (=> b!3964882 (=> (not res!1604916) (not e!2455597))))

(assert (=> b!3964882 (= res!1604916 (matchR!5544 (regex!6634 (rule!9618 (_1!23915 (get!13941 lt!1388309)))) (list!15684 (charsOf!4452 (_1!23915 (get!13941 lt!1388309))))))))

(declare-fun b!3964883 () Bool)

(assert (=> b!3964883 (= e!2455597 (contains!8434 rules!2768 (rule!9618 (_1!23915 (get!13941 lt!1388309)))))))

(declare-fun b!3964884 () Bool)

(assert (=> b!3964884 (= e!2455599 e!2455597)))

(declare-fun res!1604918 () Bool)

(assert (=> b!3964884 (=> (not res!1604918) (not e!2455597))))

(declare-fun isDefined!7005 (Option!9054) Bool)

(assert (=> b!3964884 (= res!1604918 (isDefined!7005 lt!1388309))))

(declare-fun bm!285473 () Bool)

(assert (=> bm!285473 (= call!285478 (maxPrefixOneRule!2577 thiss!20629 (h!47688 rules!2768) lt!1388042))))

(declare-fun b!3964885 () Bool)

(assert (=> b!3964885 (= e!2455598 call!285478)))

(declare-fun b!3964886 () Bool)

(declare-fun res!1604915 () Bool)

(assert (=> b!3964886 (=> (not res!1604915) (not e!2455597))))

(assert (=> b!3964886 (= res!1604915 (= (++!11026 (list!15684 (charsOf!4452 (_1!23915 (get!13941 lt!1388309)))) (_2!23915 (get!13941 lt!1388309))) lt!1388042))))

(declare-fun b!3964887 () Bool)

(declare-fun res!1604921 () Bool)

(assert (=> b!3964887 (=> (not res!1604921) (not e!2455597))))

(assert (=> b!3964887 (= res!1604921 (= (value!209703 (_1!23915 (get!13941 lt!1388309))) (apply!9865 (transformation!6634 (rule!9618 (_1!23915 (get!13941 lt!1388309)))) (seqFromList!4893 (originalCharacters!7234 (_1!23915 (get!13941 lt!1388309)))))))))

(declare-fun b!3964888 () Bool)

(declare-fun res!1604917 () Bool)

(assert (=> b!3964888 (=> (not res!1604917) (not e!2455597))))

(assert (=> b!3964888 (= res!1604917 (= (list!15684 (charsOf!4452 (_1!23915 (get!13941 lt!1388309)))) (originalCharacters!7234 (_1!23915 (get!13941 lt!1388309)))))))

(assert (= (and d!1174518 c!687880) b!3964885))

(assert (= (and d!1174518 (not c!687880)) b!3964881))

(assert (= (or b!3964885 b!3964881) bm!285473))

(assert (= (and d!1174518 (not res!1604919)) b!3964884))

(assert (= (and b!3964884 res!1604918) b!3964888))

(assert (= (and b!3964888 res!1604917) b!3964880))

(assert (= (and b!3964880 res!1604920) b!3964886))

(assert (= (and b!3964886 res!1604915) b!3964887))

(assert (= (and b!3964887 res!1604921) b!3964882))

(assert (= (and b!3964882 res!1604916) b!3964883))

(declare-fun m!4534551 () Bool)

(assert (=> b!3964884 m!4534551))

(declare-fun m!4534553 () Bool)

(assert (=> b!3964888 m!4534553))

(declare-fun m!4534555 () Bool)

(assert (=> b!3964888 m!4534555))

(assert (=> b!3964888 m!4534555))

(declare-fun m!4534557 () Bool)

(assert (=> b!3964888 m!4534557))

(assert (=> b!3964883 m!4534553))

(declare-fun m!4534559 () Bool)

(assert (=> b!3964883 m!4534559))

(declare-fun m!4534561 () Bool)

(assert (=> b!3964881 m!4534561))

(declare-fun m!4534563 () Bool)

(assert (=> d!1174518 m!4534563))

(declare-fun m!4534565 () Bool)

(assert (=> d!1174518 m!4534565))

(declare-fun m!4534567 () Bool)

(assert (=> d!1174518 m!4534567))

(declare-fun m!4534569 () Bool)

(assert (=> d!1174518 m!4534569))

(assert (=> b!3964880 m!4534553))

(declare-fun m!4534571 () Bool)

(assert (=> b!3964880 m!4534571))

(assert (=> b!3964880 m!4533633))

(assert (=> b!3964887 m!4534553))

(declare-fun m!4534573 () Bool)

(assert (=> b!3964887 m!4534573))

(assert (=> b!3964887 m!4534573))

(declare-fun m!4534575 () Bool)

(assert (=> b!3964887 m!4534575))

(declare-fun m!4534577 () Bool)

(assert (=> bm!285473 m!4534577))

(assert (=> b!3964882 m!4534553))

(assert (=> b!3964882 m!4534555))

(assert (=> b!3964882 m!4534555))

(assert (=> b!3964882 m!4534557))

(assert (=> b!3964882 m!4534557))

(declare-fun m!4534579 () Bool)

(assert (=> b!3964882 m!4534579))

(assert (=> b!3964886 m!4534553))

(assert (=> b!3964886 m!4534555))

(assert (=> b!3964886 m!4534555))

(assert (=> b!3964886 m!4534557))

(assert (=> b!3964886 m!4534557))

(declare-fun m!4534581 () Bool)

(assert (=> b!3964886 m!4534581))

(assert (=> b!3964319 d!1174518))

(declare-fun d!1174520 () Bool)

(assert (=> d!1174520 (= (inv!56488 (tag!7494 (rule!9618 (h!47687 suffixTokens!72)))) (= (mod (str.len (value!209702 (tag!7494 (rule!9618 (h!47687 suffixTokens!72))))) 2) 0))))

(assert (=> b!3964339 d!1174520))

(declare-fun d!1174522 () Bool)

(declare-fun res!1604922 () Bool)

(declare-fun e!2455600 () Bool)

(assert (=> d!1174522 (=> (not res!1604922) (not e!2455600))))

(assert (=> d!1174522 (= res!1604922 (semiInverseModEq!2857 (toChars!8973 (transformation!6634 (rule!9618 (h!47687 suffixTokens!72)))) (toValue!9114 (transformation!6634 (rule!9618 (h!47687 suffixTokens!72))))))))

(assert (=> d!1174522 (= (inv!56492 (transformation!6634 (rule!9618 (h!47687 suffixTokens!72)))) e!2455600)))

(declare-fun b!3964889 () Bool)

(assert (=> b!3964889 (= e!2455600 (equivClasses!2756 (toChars!8973 (transformation!6634 (rule!9618 (h!47687 suffixTokens!72)))) (toValue!9114 (transformation!6634 (rule!9618 (h!47687 suffixTokens!72))))))))

(assert (= (and d!1174522 res!1604922) b!3964889))

(declare-fun m!4534583 () Bool)

(assert (=> d!1174522 m!4534583))

(declare-fun m!4534585 () Bool)

(assert (=> b!3964889 m!4534585))

(assert (=> b!3964339 d!1174522))

(declare-fun d!1174524 () Bool)

(declare-fun e!2455603 () Bool)

(assert (=> d!1174524 e!2455603))

(declare-fun c!687882 () Bool)

(declare-fun lt!1388313 () tuple2!41564)

(assert (=> d!1174524 (= c!687882 (> (size!31641 (_1!23916 lt!1388313)) 0))))

(declare-fun e!2455602 () tuple2!41564)

(assert (=> d!1174524 (= lt!1388313 e!2455602)))

(declare-fun c!687881 () Bool)

(declare-fun lt!1388311 () Option!9054)

(assert (=> d!1174524 (= c!687881 ((_ is Some!9053) lt!1388311))))

(assert (=> d!1174524 (= lt!1388311 (maxPrefix!3527 thiss!20629 rules!2768 lt!1388042))))

(assert (=> d!1174524 (= (lexList!1991 thiss!20629 rules!2768 lt!1388042) lt!1388313)))

(declare-fun b!3964890 () Bool)

(assert (=> b!3964890 (= e!2455603 (= (_2!23916 lt!1388313) lt!1388042))))

(declare-fun b!3964891 () Bool)

(assert (=> b!3964891 (= e!2455602 (tuple2!41565 Nil!42267 lt!1388042))))

(declare-fun b!3964892 () Bool)

(declare-fun e!2455601 () Bool)

(assert (=> b!3964892 (= e!2455603 e!2455601)))

(declare-fun res!1604923 () Bool)

(assert (=> b!3964892 (= res!1604923 (< (size!31639 (_2!23916 lt!1388313)) (size!31639 lt!1388042)))))

(assert (=> b!3964892 (=> (not res!1604923) (not e!2455601))))

(declare-fun b!3964893 () Bool)

(assert (=> b!3964893 (= e!2455601 (not (isEmpty!25288 (_1!23916 lt!1388313))))))

(declare-fun b!3964894 () Bool)

(declare-fun lt!1388312 () tuple2!41564)

(assert (=> b!3964894 (= e!2455602 (tuple2!41565 (Cons!42267 (_1!23915 (v!39399 lt!1388311)) (_1!23916 lt!1388312)) (_2!23916 lt!1388312)))))

(assert (=> b!3964894 (= lt!1388312 (lexList!1991 thiss!20629 rules!2768 (_2!23915 (v!39399 lt!1388311))))))

(assert (= (and d!1174524 c!687881) b!3964894))

(assert (= (and d!1174524 (not c!687881)) b!3964891))

(assert (= (and d!1174524 c!687882) b!3964892))

(assert (= (and d!1174524 (not c!687882)) b!3964890))

(assert (= (and b!3964892 res!1604923) b!3964893))

(declare-fun m!4534587 () Bool)

(assert (=> d!1174524 m!4534587))

(assert (=> d!1174524 m!4533647))

(declare-fun m!4534589 () Bool)

(assert (=> b!3964892 m!4534589))

(assert (=> b!3964892 m!4533633))

(declare-fun m!4534591 () Bool)

(assert (=> b!3964893 m!4534591))

(declare-fun m!4534593 () Bool)

(assert (=> b!3964894 m!4534593))

(assert (=> b!3964321 d!1174524))

(declare-fun b!3964898 () Bool)

(declare-fun lt!1388314 () List!42391)

(declare-fun e!2455604 () Bool)

(assert (=> b!3964898 (= e!2455604 (or (not (= suffixTokens!72 Nil!42267)) (= lt!1388314 prefixTokens!80)))))

(declare-fun b!3964895 () Bool)

(declare-fun e!2455605 () List!42391)

(assert (=> b!3964895 (= e!2455605 suffixTokens!72)))

(declare-fun d!1174526 () Bool)

(assert (=> d!1174526 e!2455604))

(declare-fun res!1604924 () Bool)

(assert (=> d!1174526 (=> (not res!1604924) (not e!2455604))))

(assert (=> d!1174526 (= res!1604924 (= (content!6418 lt!1388314) ((_ map or) (content!6418 prefixTokens!80) (content!6418 suffixTokens!72))))))

(assert (=> d!1174526 (= lt!1388314 e!2455605)))

(declare-fun c!687883 () Bool)

(assert (=> d!1174526 (= c!687883 ((_ is Nil!42267) prefixTokens!80))))

(assert (=> d!1174526 (= (++!11025 prefixTokens!80 suffixTokens!72) lt!1388314)))

(declare-fun b!3964897 () Bool)

(declare-fun res!1604925 () Bool)

(assert (=> b!3964897 (=> (not res!1604925) (not e!2455604))))

(assert (=> b!3964897 (= res!1604925 (= (size!31641 lt!1388314) (+ (size!31641 prefixTokens!80) (size!31641 suffixTokens!72))))))

(declare-fun b!3964896 () Bool)

(assert (=> b!3964896 (= e!2455605 (Cons!42267 (h!47687 prefixTokens!80) (++!11025 (t!330150 prefixTokens!80) suffixTokens!72)))))

(assert (= (and d!1174526 c!687883) b!3964895))

(assert (= (and d!1174526 (not c!687883)) b!3964896))

(assert (= (and d!1174526 res!1604924) b!3964897))

(assert (= (and b!3964897 res!1604925) b!3964898))

(declare-fun m!4534595 () Bool)

(assert (=> d!1174526 m!4534595))

(declare-fun m!4534597 () Bool)

(assert (=> d!1174526 m!4534597))

(assert (=> d!1174526 m!4534347))

(declare-fun m!4534599 () Bool)

(assert (=> b!3964897 m!4534599))

(declare-fun m!4534601 () Bool)

(assert (=> b!3964897 m!4534601))

(assert (=> b!3964897 m!4534353))

(declare-fun m!4534603 () Bool)

(assert (=> b!3964896 m!4534603))

(assert (=> b!3964321 d!1174526))

(declare-fun d!1174528 () Bool)

(declare-fun e!2455606 () Bool)

(assert (=> d!1174528 e!2455606))

(declare-fun res!1604927 () Bool)

(assert (=> d!1174528 (=> (not res!1604927) (not e!2455606))))

(declare-fun lt!1388315 () List!42390)

(assert (=> d!1174528 (= res!1604927 (= (content!6419 lt!1388315) ((_ map or) (content!6419 prefix!426) (content!6419 suffix!1176))))))

(declare-fun e!2455607 () List!42390)

(assert (=> d!1174528 (= lt!1388315 e!2455607)))

(declare-fun c!687884 () Bool)

(assert (=> d!1174528 (= c!687884 ((_ is Nil!42266) prefix!426))))

(assert (=> d!1174528 (= (++!11026 prefix!426 suffix!1176) lt!1388315)))

(declare-fun b!3964900 () Bool)

(assert (=> b!3964900 (= e!2455607 (Cons!42266 (h!47686 prefix!426) (++!11026 (t!330149 prefix!426) suffix!1176)))))

(declare-fun b!3964901 () Bool)

(declare-fun res!1604926 () Bool)

(assert (=> b!3964901 (=> (not res!1604926) (not e!2455606))))

(assert (=> b!3964901 (= res!1604926 (= (size!31639 lt!1388315) (+ (size!31639 prefix!426) (size!31639 suffix!1176))))))

(declare-fun b!3964902 () Bool)

(assert (=> b!3964902 (= e!2455606 (or (not (= suffix!1176 Nil!42266)) (= lt!1388315 prefix!426)))))

(declare-fun b!3964899 () Bool)

(assert (=> b!3964899 (= e!2455607 suffix!1176)))

(assert (= (and d!1174528 c!687884) b!3964899))

(assert (= (and d!1174528 (not c!687884)) b!3964900))

(assert (= (and d!1174528 res!1604927) b!3964901))

(assert (= (and b!3964901 res!1604926) b!3964902))

(declare-fun m!4534605 () Bool)

(assert (=> d!1174528 m!4534605))

(declare-fun m!4534607 () Bool)

(assert (=> d!1174528 m!4534607))

(assert (=> d!1174528 m!4534323))

(declare-fun m!4534609 () Bool)

(assert (=> b!3964900 m!4534609))

(declare-fun m!4534611 () Bool)

(assert (=> b!3964901 m!4534611))

(assert (=> b!3964901 m!4533643))

(assert (=> b!3964901 m!4533677))

(assert (=> b!3964321 d!1174528))

(declare-fun d!1174530 () Bool)

(assert (=> d!1174530 (= (inv!56488 (tag!7494 (h!47688 rules!2768))) (= (mod (str.len (value!209702 (tag!7494 (h!47688 rules!2768)))) 2) 0))))

(assert (=> b!3964320 d!1174530))

(declare-fun d!1174532 () Bool)

(declare-fun res!1604928 () Bool)

(declare-fun e!2455608 () Bool)

(assert (=> d!1174532 (=> (not res!1604928) (not e!2455608))))

(assert (=> d!1174532 (= res!1604928 (semiInverseModEq!2857 (toChars!8973 (transformation!6634 (h!47688 rules!2768))) (toValue!9114 (transformation!6634 (h!47688 rules!2768)))))))

(assert (=> d!1174532 (= (inv!56492 (transformation!6634 (h!47688 rules!2768))) e!2455608)))

(declare-fun b!3964903 () Bool)

(assert (=> b!3964903 (= e!2455608 (equivClasses!2756 (toChars!8973 (transformation!6634 (h!47688 rules!2768))) (toValue!9114 (transformation!6634 (h!47688 rules!2768)))))))

(assert (= (and d!1174532 res!1604928) b!3964903))

(declare-fun m!4534613 () Bool)

(assert (=> d!1174532 m!4534613))

(declare-fun m!4534615 () Bool)

(assert (=> b!3964903 m!4534615))

(assert (=> b!3964320 d!1174532))

(assert (=> b!3964316 d!1174466))

(assert (=> b!3964316 d!1174458))

(declare-fun d!1174534 () Bool)

(assert (=> d!1174534 (= lt!1388041 prefix!426)))

(declare-fun lt!1388318 () Unit!60883)

(declare-fun choose!23716 (List!42390 List!42390 List!42390) Unit!60883)

(assert (=> d!1174534 (= lt!1388318 (choose!23716 lt!1388041 prefix!426 lt!1388042))))

(assert (=> d!1174534 (isPrefix!3723 lt!1388041 lt!1388042)))

(assert (=> d!1174534 (= (lemmaIsPrefixSameLengthThenSameList!845 lt!1388041 prefix!426 lt!1388042) lt!1388318)))

(declare-fun bs!587384 () Bool)

(assert (= bs!587384 d!1174534))

(declare-fun m!4534617 () Bool)

(assert (=> bs!587384 m!4534617))

(assert (=> bs!587384 m!4534181))

(assert (=> b!3964316 d!1174534))

(declare-fun d!1174536 () Bool)

(assert (=> d!1174536 (= (_2!23915 (v!39399 lt!1388060)) suffix!1176)))

(declare-fun lt!1388319 () Unit!60883)

(assert (=> d!1174536 (= lt!1388319 (choose!23704 lt!1388041 (_2!23915 (v!39399 lt!1388060)) prefix!426 suffix!1176 lt!1388042))))

(assert (=> d!1174536 (isPrefix!3723 lt!1388041 lt!1388042)))

(assert (=> d!1174536 (= (lemmaSamePrefixThenSameSuffix!1932 lt!1388041 (_2!23915 (v!39399 lt!1388060)) prefix!426 suffix!1176 lt!1388042) lt!1388319)))

(declare-fun bs!587385 () Bool)

(assert (= bs!587385 d!1174536))

(declare-fun m!4534619 () Bool)

(assert (=> bs!587385 m!4534619))

(assert (=> bs!587385 m!4534181))

(assert (=> b!3964316 d!1174536))

(declare-fun b!3964907 () Bool)

(declare-fun lt!1388320 () List!42391)

(declare-fun e!2455609 () Bool)

(assert (=> b!3964907 (= e!2455609 (or (not (= lt!1388029 Nil!42267)) (= lt!1388320 lt!1388067)))))

(declare-fun b!3964904 () Bool)

(declare-fun e!2455610 () List!42391)

(assert (=> b!3964904 (= e!2455610 lt!1388029)))

(declare-fun d!1174538 () Bool)

(assert (=> d!1174538 e!2455609))

(declare-fun res!1604929 () Bool)

(assert (=> d!1174538 (=> (not res!1604929) (not e!2455609))))

(assert (=> d!1174538 (= res!1604929 (= (content!6418 lt!1388320) ((_ map or) (content!6418 lt!1388067) (content!6418 lt!1388029))))))

(assert (=> d!1174538 (= lt!1388320 e!2455610)))

(declare-fun c!687885 () Bool)

(assert (=> d!1174538 (= c!687885 ((_ is Nil!42267) lt!1388067))))

(assert (=> d!1174538 (= (++!11025 lt!1388067 lt!1388029) lt!1388320)))

(declare-fun b!3964906 () Bool)

(declare-fun res!1604930 () Bool)

(assert (=> b!3964906 (=> (not res!1604930) (not e!2455609))))

(assert (=> b!3964906 (= res!1604930 (= (size!31641 lt!1388320) (+ (size!31641 lt!1388067) (size!31641 lt!1388029))))))

(declare-fun b!3964905 () Bool)

(assert (=> b!3964905 (= e!2455610 (Cons!42267 (h!47687 lt!1388067) (++!11025 (t!330150 lt!1388067) lt!1388029)))))

(assert (= (and d!1174538 c!687885) b!3964904))

(assert (= (and d!1174538 (not c!687885)) b!3964905))

(assert (= (and d!1174538 res!1604929) b!3964906))

(assert (= (and b!3964906 res!1604930) b!3964907))

(declare-fun m!4534621 () Bool)

(assert (=> d!1174538 m!4534621))

(assert (=> d!1174538 m!4533865))

(declare-fun m!4534623 () Bool)

(assert (=> d!1174538 m!4534623))

(declare-fun m!4534625 () Bool)

(assert (=> b!3964906 m!4534625))

(assert (=> b!3964906 m!4533871))

(declare-fun m!4534627 () Bool)

(assert (=> b!3964906 m!4534627))

(declare-fun m!4534629 () Bool)

(assert (=> b!3964905 m!4534629))

(assert (=> b!3964297 d!1174538))

(declare-fun lt!1388321 () List!42391)

(declare-fun b!3964911 () Bool)

(declare-fun e!2455611 () Bool)

(assert (=> b!3964911 (= e!2455611 (or (not (= lt!1388035 Nil!42267)) (= lt!1388321 lt!1388067)))))

(declare-fun b!3964908 () Bool)

(declare-fun e!2455612 () List!42391)

(assert (=> b!3964908 (= e!2455612 lt!1388035)))

(declare-fun d!1174540 () Bool)

(assert (=> d!1174540 e!2455611))

(declare-fun res!1604931 () Bool)

(assert (=> d!1174540 (=> (not res!1604931) (not e!2455611))))

(assert (=> d!1174540 (= res!1604931 (= (content!6418 lt!1388321) ((_ map or) (content!6418 lt!1388067) (content!6418 lt!1388035))))))

(assert (=> d!1174540 (= lt!1388321 e!2455612)))

(declare-fun c!687886 () Bool)

(assert (=> d!1174540 (= c!687886 ((_ is Nil!42267) lt!1388067))))

(assert (=> d!1174540 (= (++!11025 lt!1388067 lt!1388035) lt!1388321)))

(declare-fun b!3964910 () Bool)

(declare-fun res!1604932 () Bool)

(assert (=> b!3964910 (=> (not res!1604932) (not e!2455611))))

(assert (=> b!3964910 (= res!1604932 (= (size!31641 lt!1388321) (+ (size!31641 lt!1388067) (size!31641 lt!1388035))))))

(declare-fun b!3964909 () Bool)

(assert (=> b!3964909 (= e!2455612 (Cons!42267 (h!47687 lt!1388067) (++!11025 (t!330150 lt!1388067) lt!1388035)))))

(assert (= (and d!1174540 c!687886) b!3964908))

(assert (= (and d!1174540 (not c!687886)) b!3964909))

(assert (= (and d!1174540 res!1604931) b!3964910))

(assert (= (and b!3964910 res!1604932) b!3964911))

(declare-fun m!4534631 () Bool)

(assert (=> d!1174540 m!4534631))

(assert (=> d!1174540 m!4533865))

(assert (=> d!1174540 m!4534345))

(declare-fun m!4534633 () Bool)

(assert (=> b!3964910 m!4534633))

(assert (=> b!3964910 m!4533871))

(assert (=> b!3964910 m!4534351))

(declare-fun m!4534635 () Bool)

(assert (=> b!3964909 m!4534635))

(assert (=> b!3964297 d!1174540))

(declare-fun e!2455613 () Bool)

(declare-fun b!3964915 () Bool)

(declare-fun lt!1388322 () List!42391)

(assert (=> b!3964915 (= e!2455613 (or (not (= suffixTokens!72 Nil!42267)) (= lt!1388322 (++!11025 lt!1388067 lt!1388035))))))

(declare-fun b!3964912 () Bool)

(declare-fun e!2455614 () List!42391)

(assert (=> b!3964912 (= e!2455614 suffixTokens!72)))

(declare-fun d!1174542 () Bool)

(assert (=> d!1174542 e!2455613))

(declare-fun res!1604933 () Bool)

(assert (=> d!1174542 (=> (not res!1604933) (not e!2455613))))

(assert (=> d!1174542 (= res!1604933 (= (content!6418 lt!1388322) ((_ map or) (content!6418 (++!11025 lt!1388067 lt!1388035)) (content!6418 suffixTokens!72))))))

(assert (=> d!1174542 (= lt!1388322 e!2455614)))

(declare-fun c!687887 () Bool)

(assert (=> d!1174542 (= c!687887 ((_ is Nil!42267) (++!11025 lt!1388067 lt!1388035)))))

(assert (=> d!1174542 (= (++!11025 (++!11025 lt!1388067 lt!1388035) suffixTokens!72) lt!1388322)))

(declare-fun b!3964914 () Bool)

(declare-fun res!1604934 () Bool)

(assert (=> b!3964914 (=> (not res!1604934) (not e!2455613))))

(assert (=> b!3964914 (= res!1604934 (= (size!31641 lt!1388322) (+ (size!31641 (++!11025 lt!1388067 lt!1388035)) (size!31641 suffixTokens!72))))))

(declare-fun b!3964913 () Bool)

(assert (=> b!3964913 (= e!2455614 (Cons!42267 (h!47687 (++!11025 lt!1388067 lt!1388035)) (++!11025 (t!330150 (++!11025 lt!1388067 lt!1388035)) suffixTokens!72)))))

(assert (= (and d!1174542 c!687887) b!3964912))

(assert (= (and d!1174542 (not c!687887)) b!3964913))

(assert (= (and d!1174542 res!1604933) b!3964914))

(assert (= (and b!3964914 res!1604934) b!3964915))

(declare-fun m!4534637 () Bool)

(assert (=> d!1174542 m!4534637))

(assert (=> d!1174542 m!4533663))

(declare-fun m!4534639 () Bool)

(assert (=> d!1174542 m!4534639))

(assert (=> d!1174542 m!4534347))

(declare-fun m!4534641 () Bool)

(assert (=> b!3964914 m!4534641))

(assert (=> b!3964914 m!4533663))

(declare-fun m!4534643 () Bool)

(assert (=> b!3964914 m!4534643))

(assert (=> b!3964914 m!4534353))

(declare-fun m!4534645 () Bool)

(assert (=> b!3964913 m!4534645))

(assert (=> b!3964297 d!1174542))

(declare-fun d!1174544 () Bool)

(assert (=> d!1174544 (= (isEmpty!25288 lt!1388035) ((_ is Nil!42267) lt!1388035))))

(assert (=> b!3964297 d!1174544))

(declare-fun d!1174546 () Bool)

(assert (=> d!1174546 (= (++!11025 (++!11025 lt!1388067 lt!1388035) suffixTokens!72) (++!11025 lt!1388067 (++!11025 lt!1388035 suffixTokens!72)))))

(declare-fun lt!1388325 () Unit!60883)

(declare-fun choose!23717 (List!42391 List!42391 List!42391) Unit!60883)

(assert (=> d!1174546 (= lt!1388325 (choose!23717 lt!1388067 lt!1388035 suffixTokens!72))))

(assert (=> d!1174546 (= (lemmaConcatAssociativity!2371 lt!1388067 lt!1388035 suffixTokens!72) lt!1388325)))

(declare-fun bs!587386 () Bool)

(assert (= bs!587386 d!1174546))

(assert (=> bs!587386 m!4533663))

(assert (=> bs!587386 m!4533665))

(declare-fun m!4534647 () Bool)

(assert (=> bs!587386 m!4534647))

(assert (=> bs!587386 m!4533741))

(assert (=> bs!587386 m!4533663))

(assert (=> bs!587386 m!4533741))

(declare-fun m!4534649 () Bool)

(assert (=> bs!587386 m!4534649))

(assert (=> b!3964297 d!1174546))

(declare-fun d!1174548 () Bool)

(declare-fun res!1604937 () Bool)

(declare-fun e!2455617 () Bool)

(assert (=> d!1174548 (=> (not res!1604937) (not e!2455617))))

(declare-fun rulesValid!2591 (LexerInterface!6223 List!42392) Bool)

(assert (=> d!1174548 (= res!1604937 (rulesValid!2591 thiss!20629 rules!2768))))

(assert (=> d!1174548 (= (rulesInvariant!5566 thiss!20629 rules!2768) e!2455617)))

(declare-fun b!3964918 () Bool)

(declare-datatypes ((List!42394 0))(
  ( (Nil!42270) (Cons!42270 (h!47690 String!48038) (t!330249 List!42394)) )
))
(declare-fun noDuplicateTag!2592 (LexerInterface!6223 List!42392 List!42394) Bool)

(assert (=> b!3964918 (= e!2455617 (noDuplicateTag!2592 thiss!20629 rules!2768 Nil!42270))))

(assert (= (and d!1174548 res!1604937) b!3964918))

(declare-fun m!4534651 () Bool)

(assert (=> d!1174548 m!4534651))

(declare-fun m!4534653 () Bool)

(assert (=> b!3964918 m!4534653))

(assert (=> b!3964318 d!1174548))

(declare-fun d!1174550 () Bool)

(declare-fun e!2455618 () Bool)

(assert (=> d!1174550 e!2455618))

(declare-fun res!1604939 () Bool)

(assert (=> d!1174550 (=> (not res!1604939) (not e!2455618))))

(declare-fun lt!1388326 () List!42390)

(assert (=> d!1174550 (= res!1604939 (= (content!6419 lt!1388326) ((_ map or) (content!6419 lt!1388041) (content!6419 lt!1388059))))))

(declare-fun e!2455619 () List!42390)

(assert (=> d!1174550 (= lt!1388326 e!2455619)))

(declare-fun c!687888 () Bool)

(assert (=> d!1174550 (= c!687888 ((_ is Nil!42266) lt!1388041))))

(assert (=> d!1174550 (= (++!11026 lt!1388041 lt!1388059) lt!1388326)))

(declare-fun b!3964920 () Bool)

(assert (=> b!3964920 (= e!2455619 (Cons!42266 (h!47686 lt!1388041) (++!11026 (t!330149 lt!1388041) lt!1388059)))))

(declare-fun b!3964921 () Bool)

(declare-fun res!1604938 () Bool)

(assert (=> b!3964921 (=> (not res!1604938) (not e!2455618))))

(assert (=> b!3964921 (= res!1604938 (= (size!31639 lt!1388326) (+ (size!31639 lt!1388041) (size!31639 lt!1388059))))))

(declare-fun b!3964922 () Bool)

(assert (=> b!3964922 (= e!2455618 (or (not (= lt!1388059 Nil!42266)) (= lt!1388326 lt!1388041)))))

(declare-fun b!3964919 () Bool)

(assert (=> b!3964919 (= e!2455619 lt!1388059)))

(assert (= (and d!1174550 c!687888) b!3964919))

(assert (= (and d!1174550 (not c!687888)) b!3964920))

(assert (= (and d!1174550 res!1604939) b!3964921))

(assert (= (and b!3964921 res!1604938) b!3964922))

(declare-fun m!4534655 () Bool)

(assert (=> d!1174550 m!4534655))

(assert (=> d!1174550 m!4534461))

(assert (=> d!1174550 m!4534529))

(declare-fun m!4534657 () Bool)

(assert (=> b!3964920 m!4534657))

(declare-fun m!4534659 () Bool)

(assert (=> b!3964921 m!4534659))

(assert (=> b!3964921 m!4533709))

(assert (=> b!3964921 m!4534369))

(assert (=> b!3964338 d!1174550))

(declare-fun d!1174552 () Bool)

(declare-fun lt!1388327 () List!42390)

(assert (=> d!1174552 (= (++!11026 lt!1388041 lt!1388327) prefix!426)))

(declare-fun e!2455620 () List!42390)

(assert (=> d!1174552 (= lt!1388327 e!2455620)))

(declare-fun c!687889 () Bool)

(assert (=> d!1174552 (= c!687889 ((_ is Cons!42266) lt!1388041))))

(assert (=> d!1174552 (>= (size!31639 prefix!426) (size!31639 lt!1388041))))

(assert (=> d!1174552 (= (getSuffix!2174 prefix!426 lt!1388041) lt!1388327)))

(declare-fun b!3964923 () Bool)

(assert (=> b!3964923 (= e!2455620 (getSuffix!2174 (tail!6179 prefix!426) (t!330149 lt!1388041)))))

(declare-fun b!3964924 () Bool)

(assert (=> b!3964924 (= e!2455620 prefix!426)))

(assert (= (and d!1174552 c!687889) b!3964923))

(assert (= (and d!1174552 (not c!687889)) b!3964924))

(declare-fun m!4534661 () Bool)

(assert (=> d!1174552 m!4534661))

(assert (=> d!1174552 m!4533643))

(assert (=> d!1174552 m!4533709))

(assert (=> b!3964923 m!4534405))

(assert (=> b!3964923 m!4534405))

(declare-fun m!4534663 () Bool)

(assert (=> b!3964923 m!4534663))

(assert (=> b!3964338 d!1174552))

(declare-fun d!1174554 () Bool)

(assert (=> d!1174554 (= (isEmpty!25289 rules!2768) ((_ is Nil!42268) rules!2768))))

(assert (=> b!3964296 d!1174554))

(declare-fun e!2455623 () Bool)

(assert (=> b!3964314 (= tp!1208386 e!2455623)))

(declare-fun b!3964935 () Bool)

(assert (=> b!3964935 (= e!2455623 tp_is_empty!20049)))

(declare-fun b!3964938 () Bool)

(declare-fun tp!1208483 () Bool)

(declare-fun tp!1208485 () Bool)

(assert (=> b!3964938 (= e!2455623 (and tp!1208483 tp!1208485))))

(declare-fun b!3964937 () Bool)

(declare-fun tp!1208486 () Bool)

(assert (=> b!3964937 (= e!2455623 tp!1208486)))

(declare-fun b!3964936 () Bool)

(declare-fun tp!1208487 () Bool)

(declare-fun tp!1208484 () Bool)

(assert (=> b!3964936 (= e!2455623 (and tp!1208487 tp!1208484))))

(assert (= (and b!3964314 ((_ is ElementMatch!11539) (regex!6634 (rule!9618 (h!47687 prefixTokens!80))))) b!3964935))

(assert (= (and b!3964314 ((_ is Concat!18404) (regex!6634 (rule!9618 (h!47687 prefixTokens!80))))) b!3964936))

(assert (= (and b!3964314 ((_ is Star!11539) (regex!6634 (rule!9618 (h!47687 prefixTokens!80))))) b!3964937))

(assert (= (and b!3964314 ((_ is Union!11539) (regex!6634 (rule!9618 (h!47687 prefixTokens!80))))) b!3964938))

(declare-fun b!3964949 () Bool)

(declare-fun b_free!109605 () Bool)

(declare-fun b_next!110309 () Bool)

(assert (=> b!3964949 (= b_free!109605 (not b_next!110309))))

(declare-fun t!330225 () Bool)

(declare-fun tb!239097 () Bool)

(assert (=> (and b!3964949 (= (toValue!9114 (transformation!6634 (h!47688 (t!330151 rules!2768)))) (toValue!9114 (transformation!6634 (rule!9618 (_1!23915 (v!39399 lt!1388060)))))) t!330225) tb!239097))

(declare-fun result!289550 () Bool)

(assert (= result!289550 result!289532))

(assert (=> d!1174494 t!330225))

(declare-fun b_and!304531 () Bool)

(declare-fun tp!1208499 () Bool)

(assert (=> b!3964949 (= tp!1208499 (and (=> t!330225 result!289550) b_and!304531))))

(declare-fun b_free!109607 () Bool)

(declare-fun b_next!110311 () Bool)

(assert (=> b!3964949 (= b_free!109607 (not b_next!110311))))

(declare-fun t!330227 () Bool)

(declare-fun tb!239099 () Bool)

(assert (=> (and b!3964949 (= (toChars!8973 (transformation!6634 (h!47688 (t!330151 rules!2768)))) (toChars!8973 (transformation!6634 (rule!9618 (h!47687 prefixTokens!80))))) t!330227) tb!239099))

(declare-fun result!289552 () Bool)

(assert (= result!289552 result!289486))

(assert (=> b!3964670 t!330227))

(declare-fun tb!239101 () Bool)

(declare-fun t!330229 () Bool)

(assert (=> (and b!3964949 (= (toChars!8973 (transformation!6634 (h!47688 (t!330151 rules!2768)))) (toChars!8973 (transformation!6634 (rule!9618 (h!47687 suffixTokens!72))))) t!330229) tb!239101))

(declare-fun result!289554 () Bool)

(assert (= result!289554 result!289498))

(assert (=> b!3964718 t!330229))

(declare-fun tb!239103 () Bool)

(declare-fun t!330231 () Bool)

(assert (=> (and b!3964949 (= (toChars!8973 (transformation!6634 (h!47688 (t!330151 rules!2768)))) (toChars!8973 (transformation!6634 (rule!9618 (_1!23915 (v!39399 lt!1388060)))))) t!330231) tb!239103))

(declare-fun result!289556 () Bool)

(assert (= result!289556 result!289540))

(assert (=> d!1174508 t!330231))

(declare-fun b_and!304533 () Bool)

(declare-fun tp!1208498 () Bool)

(assert (=> b!3964949 (= tp!1208498 (and (=> t!330227 result!289552) (=> t!330229 result!289554) (=> t!330231 result!289556) b_and!304533))))

(declare-fun e!2455632 () Bool)

(assert (=> b!3964949 (= e!2455632 (and tp!1208499 tp!1208498))))

(declare-fun tp!1208497 () Bool)

(declare-fun e!2455635 () Bool)

(declare-fun b!3964948 () Bool)

(assert (=> b!3964948 (= e!2455635 (and tp!1208497 (inv!56488 (tag!7494 (h!47688 (t!330151 rules!2768)))) (inv!56492 (transformation!6634 (h!47688 (t!330151 rules!2768)))) e!2455632))))

(declare-fun b!3964947 () Bool)

(declare-fun e!2455634 () Bool)

(declare-fun tp!1208496 () Bool)

(assert (=> b!3964947 (= e!2455634 (and e!2455635 tp!1208496))))

(assert (=> b!3964334 (= tp!1208396 e!2455634)))

(assert (= b!3964948 b!3964949))

(assert (= b!3964947 b!3964948))

(assert (= (and b!3964334 ((_ is Cons!42268) (t!330151 rules!2768))) b!3964947))

(declare-fun m!4534665 () Bool)

(assert (=> b!3964948 m!4534665))

(declare-fun m!4534667 () Bool)

(assert (=> b!3964948 m!4534667))

(declare-fun b!3964954 () Bool)

(declare-fun e!2455638 () Bool)

(declare-fun tp!1208502 () Bool)

(assert (=> b!3964954 (= e!2455638 (and tp_is_empty!20049 tp!1208502))))

(assert (=> b!3964333 (= tp!1208384 e!2455638)))

(assert (= (and b!3964333 ((_ is Cons!42266) (originalCharacters!7234 (h!47687 suffixTokens!72)))) b!3964954))

(declare-fun b!3964955 () Bool)

(declare-fun e!2455639 () Bool)

(declare-fun tp!1208503 () Bool)

(assert (=> b!3964955 (= e!2455639 (and tp_is_empty!20049 tp!1208503))))

(assert (=> b!3964312 (= tp!1208394 e!2455639)))

(assert (= (and b!3964312 ((_ is Cons!42266) (t!330149 prefix!426))) b!3964955))

(declare-fun b!3964969 () Bool)

(declare-fun b_free!109609 () Bool)

(declare-fun b_next!110313 () Bool)

(assert (=> b!3964969 (= b_free!109609 (not b_next!110313))))

(declare-fun tb!239105 () Bool)

(declare-fun t!330233 () Bool)

(assert (=> (and b!3964969 (= (toValue!9114 (transformation!6634 (rule!9618 (h!47687 (t!330150 prefixTokens!80))))) (toValue!9114 (transformation!6634 (rule!9618 (_1!23915 (v!39399 lt!1388060)))))) t!330233) tb!239105))

(declare-fun result!289562 () Bool)

(assert (= result!289562 result!289532))

(assert (=> d!1174494 t!330233))

(declare-fun b_and!304535 () Bool)

(declare-fun tp!1208514 () Bool)

(assert (=> b!3964969 (= tp!1208514 (and (=> t!330233 result!289562) b_and!304535))))

(declare-fun b_free!109611 () Bool)

(declare-fun b_next!110315 () Bool)

(assert (=> b!3964969 (= b_free!109611 (not b_next!110315))))

(declare-fun t!330235 () Bool)

(declare-fun tb!239107 () Bool)

(assert (=> (and b!3964969 (= (toChars!8973 (transformation!6634 (rule!9618 (h!47687 (t!330150 prefixTokens!80))))) (toChars!8973 (transformation!6634 (rule!9618 (h!47687 prefixTokens!80))))) t!330235) tb!239107))

(declare-fun result!289564 () Bool)

(assert (= result!289564 result!289486))

(assert (=> b!3964670 t!330235))

(declare-fun tb!239109 () Bool)

(declare-fun t!330237 () Bool)

(assert (=> (and b!3964969 (= (toChars!8973 (transformation!6634 (rule!9618 (h!47687 (t!330150 prefixTokens!80))))) (toChars!8973 (transformation!6634 (rule!9618 (h!47687 suffixTokens!72))))) t!330237) tb!239109))

(declare-fun result!289566 () Bool)

(assert (= result!289566 result!289498))

(assert (=> b!3964718 t!330237))

(declare-fun t!330239 () Bool)

(declare-fun tb!239111 () Bool)

(assert (=> (and b!3964969 (= (toChars!8973 (transformation!6634 (rule!9618 (h!47687 (t!330150 prefixTokens!80))))) (toChars!8973 (transformation!6634 (rule!9618 (_1!23915 (v!39399 lt!1388060)))))) t!330239) tb!239111))

(declare-fun result!289568 () Bool)

(assert (= result!289568 result!289540))

(assert (=> d!1174508 t!330239))

(declare-fun tp!1208516 () Bool)

(declare-fun b_and!304537 () Bool)

(assert (=> b!3964969 (= tp!1208516 (and (=> t!330235 result!289564) (=> t!330237 result!289566) (=> t!330239 result!289568) b_and!304537))))

(declare-fun e!2455652 () Bool)

(assert (=> b!3964969 (= e!2455652 (and tp!1208514 tp!1208516))))

(declare-fun tp!1208515 () Bool)

(declare-fun b!3964967 () Bool)

(declare-fun e!2455656 () Bool)

(declare-fun e!2455654 () Bool)

(assert (=> b!3964967 (= e!2455656 (and (inv!21 (value!209703 (h!47687 (t!330150 prefixTokens!80)))) e!2455654 tp!1208515))))

(declare-fun e!2455653 () Bool)

(assert (=> b!3964309 (= tp!1208382 e!2455653)))

(declare-fun b!3964966 () Bool)

(declare-fun tp!1208517 () Bool)

(assert (=> b!3964966 (= e!2455653 (and (inv!56491 (h!47687 (t!330150 prefixTokens!80))) e!2455656 tp!1208517))))

(declare-fun tp!1208518 () Bool)

(declare-fun b!3964968 () Bool)

(assert (=> b!3964968 (= e!2455654 (and tp!1208518 (inv!56488 (tag!7494 (rule!9618 (h!47687 (t!330150 prefixTokens!80))))) (inv!56492 (transformation!6634 (rule!9618 (h!47687 (t!330150 prefixTokens!80))))) e!2455652))))

(assert (= b!3964968 b!3964969))

(assert (= b!3964967 b!3964968))

(assert (= b!3964966 b!3964967))

(assert (= (and b!3964309 ((_ is Cons!42267) (t!330150 prefixTokens!80))) b!3964966))

(declare-fun m!4534669 () Bool)

(assert (=> b!3964967 m!4534669))

(declare-fun m!4534671 () Bool)

(assert (=> b!3964966 m!4534671))

(declare-fun m!4534673 () Bool)

(assert (=> b!3964968 m!4534673))

(declare-fun m!4534675 () Bool)

(assert (=> b!3964968 m!4534675))

(declare-fun b!3964970 () Bool)

(declare-fun e!2455658 () Bool)

(declare-fun tp!1208519 () Bool)

(assert (=> b!3964970 (= e!2455658 (and tp_is_empty!20049 tp!1208519))))

(assert (=> b!3964329 (= tp!1208397 e!2455658)))

(assert (= (and b!3964329 ((_ is Cons!42266) (originalCharacters!7234 (h!47687 prefixTokens!80)))) b!3964970))

(declare-fun e!2455659 () Bool)

(assert (=> b!3964339 (= tp!1208387 e!2455659)))

(declare-fun b!3964971 () Bool)

(assert (=> b!3964971 (= e!2455659 tp_is_empty!20049)))

(declare-fun b!3964974 () Bool)

(declare-fun tp!1208520 () Bool)

(declare-fun tp!1208522 () Bool)

(assert (=> b!3964974 (= e!2455659 (and tp!1208520 tp!1208522))))

(declare-fun b!3964973 () Bool)

(declare-fun tp!1208523 () Bool)

(assert (=> b!3964973 (= e!2455659 tp!1208523)))

(declare-fun b!3964972 () Bool)

(declare-fun tp!1208524 () Bool)

(declare-fun tp!1208521 () Bool)

(assert (=> b!3964972 (= e!2455659 (and tp!1208524 tp!1208521))))

(assert (= (and b!3964339 ((_ is ElementMatch!11539) (regex!6634 (rule!9618 (h!47687 suffixTokens!72))))) b!3964971))

(assert (= (and b!3964339 ((_ is Concat!18404) (regex!6634 (rule!9618 (h!47687 suffixTokens!72))))) b!3964972))

(assert (= (and b!3964339 ((_ is Star!11539) (regex!6634 (rule!9618 (h!47687 suffixTokens!72))))) b!3964973))

(assert (= (and b!3964339 ((_ is Union!11539) (regex!6634 (rule!9618 (h!47687 suffixTokens!72))))) b!3964974))

(declare-fun b!3964978 () Bool)

(declare-fun b_free!109613 () Bool)

(declare-fun b_next!110317 () Bool)

(assert (=> b!3964978 (= b_free!109613 (not b_next!110317))))

(declare-fun tb!239113 () Bool)

(declare-fun t!330241 () Bool)

(assert (=> (and b!3964978 (= (toValue!9114 (transformation!6634 (rule!9618 (h!47687 (t!330150 suffixTokens!72))))) (toValue!9114 (transformation!6634 (rule!9618 (_1!23915 (v!39399 lt!1388060)))))) t!330241) tb!239113))

(declare-fun result!289570 () Bool)

(assert (= result!289570 result!289532))

(assert (=> d!1174494 t!330241))

(declare-fun b_and!304539 () Bool)

(declare-fun tp!1208525 () Bool)

(assert (=> b!3964978 (= tp!1208525 (and (=> t!330241 result!289570) b_and!304539))))

(declare-fun b_free!109615 () Bool)

(declare-fun b_next!110319 () Bool)

(assert (=> b!3964978 (= b_free!109615 (not b_next!110319))))

(declare-fun t!330243 () Bool)

(declare-fun tb!239115 () Bool)

(assert (=> (and b!3964978 (= (toChars!8973 (transformation!6634 (rule!9618 (h!47687 (t!330150 suffixTokens!72))))) (toChars!8973 (transformation!6634 (rule!9618 (h!47687 prefixTokens!80))))) t!330243) tb!239115))

(declare-fun result!289572 () Bool)

(assert (= result!289572 result!289486))

(assert (=> b!3964670 t!330243))

(declare-fun t!330245 () Bool)

(declare-fun tb!239117 () Bool)

(assert (=> (and b!3964978 (= (toChars!8973 (transformation!6634 (rule!9618 (h!47687 (t!330150 suffixTokens!72))))) (toChars!8973 (transformation!6634 (rule!9618 (h!47687 suffixTokens!72))))) t!330245) tb!239117))

(declare-fun result!289574 () Bool)

(assert (= result!289574 result!289498))

(assert (=> b!3964718 t!330245))

(declare-fun tb!239119 () Bool)

(declare-fun t!330247 () Bool)

(assert (=> (and b!3964978 (= (toChars!8973 (transformation!6634 (rule!9618 (h!47687 (t!330150 suffixTokens!72))))) (toChars!8973 (transformation!6634 (rule!9618 (_1!23915 (v!39399 lt!1388060)))))) t!330247) tb!239119))

(declare-fun result!289576 () Bool)

(assert (= result!289576 result!289540))

(assert (=> d!1174508 t!330247))

(declare-fun tp!1208527 () Bool)

(declare-fun b_and!304541 () Bool)

(assert (=> b!3964978 (= tp!1208527 (and (=> t!330243 result!289572) (=> t!330245 result!289574) (=> t!330247 result!289576) b_and!304541))))

(declare-fun e!2455660 () Bool)

(assert (=> b!3964978 (= e!2455660 (and tp!1208525 tp!1208527))))

(declare-fun b!3964976 () Bool)

(declare-fun e!2455662 () Bool)

(declare-fun e!2455664 () Bool)

(declare-fun tp!1208526 () Bool)

(assert (=> b!3964976 (= e!2455664 (and (inv!21 (value!209703 (h!47687 (t!330150 suffixTokens!72)))) e!2455662 tp!1208526))))

(declare-fun e!2455661 () Bool)

(assert (=> b!3964310 (= tp!1208390 e!2455661)))

(declare-fun b!3964975 () Bool)

(declare-fun tp!1208528 () Bool)

(assert (=> b!3964975 (= e!2455661 (and (inv!56491 (h!47687 (t!330150 suffixTokens!72))) e!2455664 tp!1208528))))

(declare-fun tp!1208529 () Bool)

(declare-fun b!3964977 () Bool)

(assert (=> b!3964977 (= e!2455662 (and tp!1208529 (inv!56488 (tag!7494 (rule!9618 (h!47687 (t!330150 suffixTokens!72))))) (inv!56492 (transformation!6634 (rule!9618 (h!47687 (t!330150 suffixTokens!72))))) e!2455660))))

(assert (= b!3964977 b!3964978))

(assert (= b!3964976 b!3964977))

(assert (= b!3964975 b!3964976))

(assert (= (and b!3964310 ((_ is Cons!42267) (t!330150 suffixTokens!72))) b!3964975))

(declare-fun m!4534677 () Bool)

(assert (=> b!3964976 m!4534677))

(declare-fun m!4534679 () Bool)

(assert (=> b!3964975 m!4534679))

(declare-fun m!4534681 () Bool)

(assert (=> b!3964977 m!4534681))

(declare-fun m!4534683 () Bool)

(assert (=> b!3964977 m!4534683))

(declare-fun b!3964979 () Bool)

(declare-fun e!2455666 () Bool)

(declare-fun tp!1208530 () Bool)

(assert (=> b!3964979 (= e!2455666 (and tp_is_empty!20049 tp!1208530))))

(assert (=> b!3964299 (= tp!1208385 e!2455666)))

(assert (= (and b!3964299 ((_ is Cons!42266) (t!330149 suffixResult!91))) b!3964979))

(declare-fun e!2455667 () Bool)

(assert (=> b!3964320 (= tp!1208389 e!2455667)))

(declare-fun b!3964980 () Bool)

(assert (=> b!3964980 (= e!2455667 tp_is_empty!20049)))

(declare-fun b!3964983 () Bool)

(declare-fun tp!1208531 () Bool)

(declare-fun tp!1208533 () Bool)

(assert (=> b!3964983 (= e!2455667 (and tp!1208531 tp!1208533))))

(declare-fun b!3964982 () Bool)

(declare-fun tp!1208534 () Bool)

(assert (=> b!3964982 (= e!2455667 tp!1208534)))

(declare-fun b!3964981 () Bool)

(declare-fun tp!1208535 () Bool)

(declare-fun tp!1208532 () Bool)

(assert (=> b!3964981 (= e!2455667 (and tp!1208535 tp!1208532))))

(assert (= (and b!3964320 ((_ is ElementMatch!11539) (regex!6634 (h!47688 rules!2768)))) b!3964980))

(assert (= (and b!3964320 ((_ is Concat!18404) (regex!6634 (h!47688 rules!2768)))) b!3964981))

(assert (= (and b!3964320 ((_ is Star!11539) (regex!6634 (h!47688 rules!2768)))) b!3964982))

(assert (= (and b!3964320 ((_ is Union!11539) (regex!6634 (h!47688 rules!2768)))) b!3964983))

(declare-fun b!3964984 () Bool)

(declare-fun e!2455668 () Bool)

(declare-fun tp!1208536 () Bool)

(assert (=> b!3964984 (= e!2455668 (and tp_is_empty!20049 tp!1208536))))

(assert (=> b!3964337 (= tp!1208398 e!2455668)))

(assert (= (and b!3964337 ((_ is Cons!42266) (t!330149 suffix!1176))) b!3964984))

(declare-fun b_lambda!115927 () Bool)

(assert (= b_lambda!115917 (or (and b!3964969 b_free!109611 (= (toChars!8973 (transformation!6634 (rule!9618 (h!47687 (t!330150 prefixTokens!80))))) (toChars!8973 (transformation!6634 (rule!9618 (h!47687 suffixTokens!72)))))) (and b!3964295 b_free!109591) (and b!3964317 b_free!109587 (= (toChars!8973 (transformation!6634 (rule!9618 (h!47687 prefixTokens!80)))) (toChars!8973 (transformation!6634 (rule!9618 (h!47687 suffixTokens!72)))))) (and b!3964949 b_free!109607 (= (toChars!8973 (transformation!6634 (h!47688 (t!330151 rules!2768)))) (toChars!8973 (transformation!6634 (rule!9618 (h!47687 suffixTokens!72)))))) (and b!3964978 b_free!109615 (= (toChars!8973 (transformation!6634 (rule!9618 (h!47687 (t!330150 suffixTokens!72))))) (toChars!8973 (transformation!6634 (rule!9618 (h!47687 suffixTokens!72)))))) (and b!3964325 b_free!109583 (= (toChars!8973 (transformation!6634 (h!47688 rules!2768))) (toChars!8973 (transformation!6634 (rule!9618 (h!47687 suffixTokens!72)))))) b_lambda!115927)))

(declare-fun b_lambda!115929 () Bool)

(assert (= b_lambda!115915 (or (and b!3964325 b_free!109583 (= (toChars!8973 (transformation!6634 (h!47688 rules!2768))) (toChars!8973 (transformation!6634 (rule!9618 (h!47687 prefixTokens!80)))))) (and b!3964295 b_free!109591 (= (toChars!8973 (transformation!6634 (rule!9618 (h!47687 suffixTokens!72)))) (toChars!8973 (transformation!6634 (rule!9618 (h!47687 prefixTokens!80)))))) (and b!3964978 b_free!109615 (= (toChars!8973 (transformation!6634 (rule!9618 (h!47687 (t!330150 suffixTokens!72))))) (toChars!8973 (transformation!6634 (rule!9618 (h!47687 prefixTokens!80)))))) (and b!3964969 b_free!109611 (= (toChars!8973 (transformation!6634 (rule!9618 (h!47687 (t!330150 prefixTokens!80))))) (toChars!8973 (transformation!6634 (rule!9618 (h!47687 prefixTokens!80)))))) (and b!3964949 b_free!109607 (= (toChars!8973 (transformation!6634 (h!47688 (t!330151 rules!2768)))) (toChars!8973 (transformation!6634 (rule!9618 (h!47687 prefixTokens!80)))))) (and b!3964317 b_free!109587) b_lambda!115929)))

(check-sat (not b!3964594) b_and!304527 (not d!1174468) b_and!304539 (not b!3964626) b_and!304519 (not b!3964630) (not b!3964601) (not b!3964801) (not b!3964968) (not d!1174548) (not b!3964437) (not b!3964979) (not b_next!110285) (not b!3964984) (not b!3964894) (not b!3964680) (not b!3964823) (not b!3964844) (not d!1174526) (not d!1174508) (not b!3964860) (not d!1174448) (not b!3964682) (not b!3964814) (not d!1174502) (not b_next!110293) (not d!1174550) (not b!3964676) (not b!3964938) (not b!3964749) (not d!1174286) (not b!3964748) (not b!3964614) (not b!3964882) (not b!3964893) (not d!1174496) (not b_lambda!115929) (not tb!239055) (not b!3964833) (not b!3964798) (not b!3964628) (not d!1174510) (not d!1174542) (not d!1174314) (not b!3964827) (not d!1174480) (not b_next!110295) (not d!1174506) (not b!3964731) (not b_next!110287) (not b!3964595) (not b!3964909) (not b_next!110311) (not b!3964947) (not b_lambda!115925) (not b!3964711) (not b!3964816) (not d!1174546) (not b!3964896) (not b!3964982) b_and!304535 (not b!3964973) (not d!1174514) (not d!1174454) (not b!3964843) (not tb!239091) (not b!3964854) (not b!3964839) (not b!3964851) (not b!3964920) (not b!3964886) (not b!3964977) (not b!3964880) (not d!1174456) (not b_next!110315) (not d!1174534) (not b!3964651) (not d!1174528) (not b!3964954) (not b!3964918) b_and!304523 (not b!3964734) (not b!3964948) (not d!1174474) (not d!1174476) (not b!3964955) (not b!3964671) (not b!3964975) (not b!3964654) (not b!3964881) (not b!3964923) (not b!3964719) (not b!3964967) (not b!3964921) (not b_next!110289) (not b!3964859) (not b_next!110309) (not b!3964812) (not b!3964889) (not b!3964627) (not b!3964914) (not b_next!110319) (not d!1174392) (not b!3964718) (not d!1174484) (not d!1174470) (not b!3964913) (not b!3964850) (not b!3964593) (not b!3964826) (not b!3964813) (not b!3964400) (not b!3964463) (not b!3964808) (not b!3964855) (not d!1174466) (not b!3964976) (not b!3964983) (not b!3964972) (not d!1174342) (not b!3964599) (not d!1174396) (not b!3964903) (not b!3964805) b_and!304533 (not d!1174490) (not d!1174276) (not d!1174540) (not b!3964616) (not b!3964809) (not b!3964883) (not d!1174472) (not b!3964900) (not b!3964817) (not b!3964600) (not b!3964892) b_and!304529 (not d!1174462) (not b!3964936) (not b_lambda!115927) (not b!3964905) (not d!1174436) (not b_lambda!115923) b_and!304537 (not b!3964970) (not b!3964596) (not b!3964802) (not b!3964887) (not b!3964937) (not d!1174420) (not b!3964750) (not b!3964799) (not b!3964910) (not b!3964597) (not b!3964797) (not b!3964901) (not b!3964848) (not b!3964974) (not b!3964847) b_and!304531 (not b!3964840) (not tb!239085) (not d!1174498) (not bm!285473) (not b_next!110317) (not d!1174488) (not d!1174522) (not d!1174516) (not b!3964712) (not b!3964683) (not b_next!110291) b_and!304541 (not d!1174536) (not d!1174518) (not d!1174552) (not b!3964803) (not d!1174512) (not d!1174486) (not b!3964966) (not b!3964845) (not b!3964861) (not d!1174538) (not b!3964461) (not b!3964897) (not b!3964838) (not b!3964884) (not b_next!110313) b_and!304521 (not d!1174524) (not b!3964888) (not tb!239049) (not b!3964807) (not d!1174532) (not b!3964981) (not b!3964670) (not b!3964438) (not d!1174450) (not d!1174492) b_and!304525 (not b!3964653) tp_is_empty!20049 (not b!3964733) (not b!3964906) (not d!1174482))
(check-sat (not b_next!110285) (not b_next!110293) (not b_next!110311) b_and!304535 (not b_next!110315) b_and!304523 (not b_next!110319) b_and!304533 b_and!304529 b_and!304537 b_and!304531 (not b_next!110317) b_and!304525 b_and!304527 b_and!304539 b_and!304519 (not b_next!110295) (not b_next!110287) (not b_next!110289) (not b_next!110309) (not b_next!110291) b_and!304541 (not b_next!110313) b_and!304521)
