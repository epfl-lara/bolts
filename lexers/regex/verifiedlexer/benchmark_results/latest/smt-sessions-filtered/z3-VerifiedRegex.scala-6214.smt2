; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!300854 () Bool)

(assert start!300854)

(declare-fun b!3204220 () Bool)

(declare-fun b_free!85177 () Bool)

(declare-fun b_next!85881 () Bool)

(assert (=> b!3204220 (= b_free!85177 (not b_next!85881))))

(declare-fun tp!1012262 () Bool)

(declare-fun b_and!213175 () Bool)

(assert (=> b!3204220 (= tp!1012262 b_and!213175)))

(declare-fun b_free!85179 () Bool)

(declare-fun b_next!85883 () Bool)

(assert (=> b!3204220 (= b_free!85179 (not b_next!85883))))

(declare-fun tp!1012257 () Bool)

(declare-fun b_and!213177 () Bool)

(assert (=> b!3204220 (= tp!1012257 b_and!213177)))

(declare-fun b!3204246 () Bool)

(declare-fun b_free!85181 () Bool)

(declare-fun b_next!85885 () Bool)

(assert (=> b!3204246 (= b_free!85181 (not b_next!85885))))

(declare-fun tp!1012264 () Bool)

(declare-fun b_and!213179 () Bool)

(assert (=> b!3204246 (= tp!1012264 b_and!213179)))

(declare-fun b_free!85183 () Bool)

(declare-fun b_next!85887 () Bool)

(assert (=> b!3204246 (= b_free!85183 (not b_next!85887))))

(declare-fun tp!1012256 () Bool)

(declare-fun b_and!213181 () Bool)

(assert (=> b!3204246 (= tp!1012256 b_and!213181)))

(declare-fun b!3204215 () Bool)

(declare-fun b_free!85185 () Bool)

(declare-fun b_next!85889 () Bool)

(assert (=> b!3204215 (= b_free!85185 (not b_next!85889))))

(declare-fun tp!1012263 () Bool)

(declare-fun b_and!213183 () Bool)

(assert (=> b!3204215 (= tp!1012263 b_and!213183)))

(declare-fun b_free!85187 () Bool)

(declare-fun b_next!85891 () Bool)

(assert (=> b!3204215 (= b_free!85187 (not b_next!85891))))

(declare-fun tp!1012261 () Bool)

(declare-fun b_and!213185 () Bool)

(assert (=> b!3204215 (= tp!1012261 b_and!213185)))

(declare-fun bs!541189 () Bool)

(declare-fun b!3204236 () Bool)

(declare-fun b!3204231 () Bool)

(assert (= bs!541189 (and b!3204236 b!3204231)))

(declare-fun lambda!117271 () Int)

(declare-fun lambda!117270 () Int)

(assert (=> bs!541189 (not (= lambda!117271 lambda!117270))))

(declare-fun b!3204260 () Bool)

(declare-fun e!1997778 () Bool)

(assert (=> b!3204260 (= e!1997778 true)))

(declare-fun b!3204259 () Bool)

(declare-fun e!1997777 () Bool)

(assert (=> b!3204259 (= e!1997777 e!1997778)))

(declare-fun b!3204258 () Bool)

(declare-fun e!1997776 () Bool)

(assert (=> b!3204258 (= e!1997776 e!1997777)))

(assert (=> b!3204236 e!1997776))

(assert (= b!3204259 b!3204260))

(assert (= b!3204258 b!3204259))

(declare-datatypes ((C!20120 0))(
  ( (C!20121 (val!12108 Int)) )
))
(declare-datatypes ((Regex!9967 0))(
  ( (ElementMatch!9967 (c!538112 C!20120)) (Concat!15405 (regOne!20446 Regex!9967) (regTwo!20446 Regex!9967)) (EmptyExpr!9967) (Star!9967 (reg!10296 Regex!9967)) (EmptyLang!9967) (Union!9967 (regOne!20447 Regex!9967) (regTwo!20447 Regex!9967)) )
))
(declare-datatypes ((String!40523 0))(
  ( (String!40524 (value!168862 String)) )
))
(declare-datatypes ((List!36234 0))(
  ( (Nil!36110) (Cons!36110 (h!41530 (_ BitVec 16)) (t!237923 List!36234)) )
))
(declare-datatypes ((TokenValue!5438 0))(
  ( (FloatLiteralValue!10876 (text!38511 List!36234)) (TokenValueExt!5437 (__x!23093 Int)) (Broken!27190 (value!168863 List!36234)) (Object!5561) (End!5438) (Def!5438) (Underscore!5438) (Match!5438) (Else!5438) (Error!5438) (Case!5438) (If!5438) (Extends!5438) (Abstract!5438) (Class!5438) (Val!5438) (DelimiterValue!10876 (del!5498 List!36234)) (KeywordValue!5444 (value!168864 List!36234)) (CommentValue!10876 (value!168865 List!36234)) (WhitespaceValue!10876 (value!168866 List!36234)) (IndentationValue!5438 (value!168867 List!36234)) (String!40525) (Int32!5438) (Broken!27191 (value!168868 List!36234)) (Boolean!5439) (Unit!50543) (OperatorValue!5441 (op!5498 List!36234)) (IdentifierValue!10876 (value!168869 List!36234)) (IdentifierValue!10877 (value!168870 List!36234)) (WhitespaceValue!10877 (value!168871 List!36234)) (True!10876) (False!10876) (Broken!27192 (value!168872 List!36234)) (Broken!27193 (value!168873 List!36234)) (True!10877) (RightBrace!5438) (RightBracket!5438) (Colon!5438) (Null!5438) (Comma!5438) (LeftBracket!5438) (False!10877) (LeftBrace!5438) (ImaginaryLiteralValue!5438 (text!38512 List!36234)) (StringLiteralValue!16314 (value!168874 List!36234)) (EOFValue!5438 (value!168875 List!36234)) (IdentValue!5438 (value!168876 List!36234)) (DelimiterValue!10877 (value!168877 List!36234)) (DedentValue!5438 (value!168878 List!36234)) (NewLineValue!5438 (value!168879 List!36234)) (IntegerValue!16314 (value!168880 (_ BitVec 32)) (text!38513 List!36234)) (IntegerValue!16315 (value!168881 Int) (text!38514 List!36234)) (Times!5438) (Or!5438) (Equal!5438) (Minus!5438) (Broken!27194 (value!168882 List!36234)) (And!5438) (Div!5438) (LessEqual!5438) (Mod!5438) (Concat!15406) (Not!5438) (Plus!5438) (SpaceValue!5438 (value!168883 List!36234)) (IntegerValue!16316 (value!168884 Int) (text!38515 List!36234)) (StringLiteralValue!16315 (text!38516 List!36234)) (FloatLiteralValue!10877 (text!38517 List!36234)) (BytesLiteralValue!5438 (value!168885 List!36234)) (CommentValue!10877 (value!168886 List!36234)) (StringLiteralValue!16316 (value!168887 List!36234)) (ErrorTokenValue!5438 (msg!5499 List!36234)) )
))
(declare-datatypes ((List!36235 0))(
  ( (Nil!36111) (Cons!36111 (h!41531 C!20120) (t!237924 List!36235)) )
))
(declare-datatypes ((IArray!21587 0))(
  ( (IArray!21588 (innerList!10851 List!36235)) )
))
(declare-datatypes ((Conc!10791 0))(
  ( (Node!10791 (left!28061 Conc!10791) (right!28391 Conc!10791) (csize!21812 Int) (cheight!11002 Int)) (Leaf!17006 (xs!13909 IArray!21587) (csize!21813 Int)) (Empty!10791) )
))
(declare-datatypes ((BalanceConc!21196 0))(
  ( (BalanceConc!21197 (c!538113 Conc!10791)) )
))
(declare-datatypes ((TokenValueInjection!10304 0))(
  ( (TokenValueInjection!10305 (toValue!7288 Int) (toChars!7147 Int)) )
))
(declare-datatypes ((Rule!10216 0))(
  ( (Rule!10217 (regex!5208 Regex!9967) (tag!5732 String!40523) (isSeparator!5208 Bool) (transformation!5208 TokenValueInjection!10304)) )
))
(declare-datatypes ((List!36236 0))(
  ( (Nil!36112) (Cons!36112 (h!41532 Rule!10216) (t!237925 List!36236)) )
))
(declare-fun rules!2135 () List!36236)

(get-info :version)

(assert (= (and b!3204236 ((_ is Cons!36112) rules!2135)) b!3204258))

(declare-fun order!18371 () Int)

(declare-fun order!18369 () Int)

(declare-fun dynLambda!14549 (Int Int) Int)

(declare-fun dynLambda!14550 (Int Int) Int)

(assert (=> b!3204260 (< (dynLambda!14549 order!18369 (toValue!7288 (transformation!5208 (h!41532 rules!2135)))) (dynLambda!14550 order!18371 lambda!117271))))

(declare-fun order!18373 () Int)

(declare-fun dynLambda!14551 (Int Int) Int)

(assert (=> b!3204260 (< (dynLambda!14551 order!18373 (toChars!7147 (transformation!5208 (h!41532 rules!2135)))) (dynLambda!14550 order!18371 lambda!117271))))

(assert (=> b!3204236 true))

(declare-fun e!1997760 () Bool)

(declare-fun b!3204212 () Bool)

(declare-fun e!1997741 () Bool)

(declare-datatypes ((Token!9782 0))(
  ( (Token!9783 (value!168888 TokenValue!5438) (rule!7646 Rule!10216) (size!27203 Int) (originalCharacters!5922 List!36235)) )
))
(declare-datatypes ((List!36237 0))(
  ( (Nil!36113) (Cons!36113 (h!41533 Token!9782) (t!237926 List!36237)) )
))
(declare-fun tokens!494 () List!36237)

(declare-fun tp!1012258 () Bool)

(declare-fun inv!48969 (Token!9782) Bool)

(assert (=> b!3204212 (= e!1997741 (and (inv!48969 (h!41533 tokens!494)) e!1997760 tp!1012258))))

(declare-fun b!3204213 () Bool)

(declare-fun e!1997749 () Bool)

(declare-fun e!1997762 () Bool)

(assert (=> b!3204213 (= e!1997749 e!1997762)))

(declare-fun res!1303914 () Bool)

(assert (=> b!3204213 (=> res!1303914 e!1997762)))

(declare-fun lt!1081460 () List!36235)

(declare-fun lt!1081436 () List!36235)

(declare-fun lt!1081456 () List!36235)

(assert (=> b!3204213 (= res!1303914 (or (not (= lt!1081460 lt!1081456)) (not (= lt!1081436 lt!1081456))))))

(declare-fun list!12841 (BalanceConc!21196) List!36235)

(declare-fun charsOf!3224 (Token!9782) BalanceConc!21196)

(assert (=> b!3204213 (= lt!1081456 (list!12841 (charsOf!3224 (h!41533 tokens!494))))))

(declare-fun b!3204214 () Bool)

(declare-fun e!1997753 () Bool)

(declare-datatypes ((IArray!21589 0))(
  ( (IArray!21590 (innerList!10852 List!36237)) )
))
(declare-datatypes ((Conc!10792 0))(
  ( (Node!10792 (left!28062 Conc!10792) (right!28392 Conc!10792) (csize!21814 Int) (cheight!11003 Int)) (Leaf!17007 (xs!13910 IArray!21589) (csize!21815 Int)) (Empty!10792) )
))
(declare-datatypes ((BalanceConc!21198 0))(
  ( (BalanceConc!21199 (c!538114 Conc!10792)) )
))
(declare-datatypes ((tuple2!35498 0))(
  ( (tuple2!35499 (_1!20883 BalanceConc!21198) (_2!20883 BalanceConc!21196)) )
))
(declare-fun lt!1081458 () tuple2!35498)

(declare-fun isEmpty!20197 (BalanceConc!21196) Bool)

(assert (=> b!3204214 (= e!1997753 (isEmpty!20197 (_2!20883 lt!1081458)))))

(declare-fun e!1997750 () Bool)

(assert (=> b!3204215 (= e!1997750 (and tp!1012263 tp!1012261))))

(declare-fun e!1997766 () Bool)

(declare-fun separatorToken!241 () Token!9782)

(declare-fun tp!1012266 () Bool)

(declare-fun b!3204216 () Bool)

(declare-fun e!1997754 () Bool)

(declare-fun inv!21 (TokenValue!5438) Bool)

(assert (=> b!3204216 (= e!1997766 (and (inv!21 (value!168888 separatorToken!241)) e!1997754 tp!1012266))))

(declare-fun b!3204217 () Bool)

(declare-fun e!1997743 () Bool)

(declare-fun lt!1081455 () Rule!10216)

(assert (=> b!3204217 (= e!1997743 (= (rule!7646 (h!41533 tokens!494)) lt!1081455))))

(declare-fun b!3204218 () Bool)

(declare-datatypes ((Unit!50544 0))(
  ( (Unit!50545) )
))
(declare-fun e!1997761 () Unit!50544)

(declare-fun Unit!50546 () Unit!50544)

(assert (=> b!3204218 (= e!1997761 Unit!50546)))

(declare-fun lt!1081447 () C!20120)

(declare-fun lt!1081463 () Unit!50544)

(declare-fun lt!1081445 () List!36235)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!372 (Regex!9967 List!36235 C!20120) Unit!50544)

(assert (=> b!3204218 (= lt!1081463 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!372 (regex!5208 (rule!7646 separatorToken!241)) lt!1081445 lt!1081447))))

(declare-fun res!1303916 () Bool)

(declare-fun matchR!4601 (Regex!9967 List!36235) Bool)

(assert (=> b!3204218 (= res!1303916 (not (matchR!4601 (regex!5208 (rule!7646 separatorToken!241)) lt!1081445)))))

(declare-fun e!1997745 () Bool)

(assert (=> b!3204218 (=> (not res!1303916) (not e!1997745))))

(assert (=> b!3204218 e!1997745))

(declare-fun b!3204219 () Bool)

(declare-fun e!1997764 () Bool)

(declare-fun tp!1012268 () Bool)

(declare-fun inv!48966 (String!40523) Bool)

(declare-fun inv!48970 (TokenValueInjection!10304) Bool)

(assert (=> b!3204219 (= e!1997754 (and tp!1012268 (inv!48966 (tag!5732 (rule!7646 separatorToken!241))) (inv!48970 (transformation!5208 (rule!7646 separatorToken!241))) e!1997764))))

(assert (=> b!3204220 (= e!1997764 (and tp!1012262 tp!1012257))))

(declare-fun b!3204222 () Bool)

(declare-fun e!1997758 () Bool)

(assert (=> b!3204222 (= e!1997758 (not e!1997749))))

(declare-fun res!1303928 () Bool)

(assert (=> b!3204222 (=> res!1303928 e!1997749)))

(assert (=> b!3204222 (= res!1303928 (not (= lt!1081436 lt!1081460)))))

(declare-datatypes ((LexerInterface!4797 0))(
  ( (LexerInterfaceExt!4794 (__x!23094 Int)) (Lexer!4795) )
))
(declare-fun thiss!18206 () LexerInterface!4797)

(declare-fun printList!1347 (LexerInterface!4797 List!36237) List!36235)

(assert (=> b!3204222 (= lt!1081460 (printList!1347 thiss!18206 (Cons!36113 (h!41533 tokens!494) Nil!36113)))))

(declare-fun lt!1081434 () BalanceConc!21196)

(assert (=> b!3204222 (= lt!1081436 (list!12841 lt!1081434))))

(declare-fun lt!1081457 () BalanceConc!21198)

(declare-fun printTailRec!1294 (LexerInterface!4797 BalanceConc!21198 Int BalanceConc!21196) BalanceConc!21196)

(assert (=> b!3204222 (= lt!1081434 (printTailRec!1294 thiss!18206 lt!1081457 0 (BalanceConc!21197 Empty!10791)))))

(declare-fun print!1862 (LexerInterface!4797 BalanceConc!21198) BalanceConc!21196)

(assert (=> b!3204222 (= lt!1081434 (print!1862 thiss!18206 lt!1081457))))

(declare-fun singletonSeq!2304 (Token!9782) BalanceConc!21198)

(assert (=> b!3204222 (= lt!1081457 (singletonSeq!2304 (h!41533 tokens!494)))))

(declare-fun b!3204223 () Bool)

(declare-fun res!1303921 () Bool)

(declare-fun e!1997769 () Bool)

(assert (=> b!3204223 (=> (not res!1303921) (not e!1997769))))

(declare-fun lt!1081442 () tuple2!35498)

(declare-fun apply!8159 (BalanceConc!21198 Int) Token!9782)

(assert (=> b!3204223 (= res!1303921 (= (apply!8159 (_1!20883 lt!1081442) 0) separatorToken!241))))

(declare-fun e!1997756 () Bool)

(declare-fun b!3204224 () Bool)

(declare-fun tp!1012267 () Bool)

(assert (=> b!3204224 (= e!1997756 (and tp!1012267 (inv!48966 (tag!5732 (h!41532 rules!2135))) (inv!48970 (transformation!5208 (h!41532 rules!2135))) e!1997750))))

(declare-fun b!3204225 () Bool)

(assert (=> b!3204225 (= e!1997745 false)))

(declare-fun b!3204226 () Bool)

(declare-fun res!1303911 () Bool)

(assert (=> b!3204226 (=> (not res!1303911) (not e!1997758))))

(assert (=> b!3204226 (= res!1303911 (and (not ((_ is Nil!36113) tokens!494)) (not ((_ is Nil!36113) (t!237926 tokens!494)))))))

(declare-fun b!3204227 () Bool)

(declare-fun res!1303926 () Bool)

(assert (=> b!3204227 (=> res!1303926 e!1997762)))

(declare-fun rulesProduceIndividualToken!2289 (LexerInterface!4797 List!36236 Token!9782) Bool)

(assert (=> b!3204227 (= res!1303926 (not (rulesProduceIndividualToken!2289 thiss!18206 rules!2135 (h!41533 tokens!494))))))

(declare-fun e!1997757 () Bool)

(declare-fun b!3204228 () Bool)

(declare-fun tp!1012259 () Bool)

(assert (=> b!3204228 (= e!1997760 (and (inv!21 (value!168888 (h!41533 tokens!494))) e!1997757 tp!1012259))))

(declare-fun b!3204229 () Bool)

(declare-fun e!1997768 () Bool)

(declare-fun e!1997765 () Bool)

(assert (=> b!3204229 (= e!1997768 e!1997765)))

(declare-fun res!1303923 () Bool)

(assert (=> b!3204229 (=> res!1303923 e!1997765)))

(declare-fun lt!1081466 () List!36235)

(declare-fun lt!1081448 () List!36235)

(assert (=> b!3204229 (= res!1303923 (not (= lt!1081466 lt!1081448)))))

(declare-fun lt!1081453 () List!36235)

(assert (=> b!3204229 (= lt!1081453 lt!1081448)))

(declare-fun lt!1081438 () List!36235)

(declare-fun ++!8658 (List!36235 List!36235) List!36235)

(assert (=> b!3204229 (= lt!1081448 (++!8658 lt!1081456 lt!1081438))))

(declare-fun lt!1081465 () Unit!50544)

(declare-fun lt!1081450 () List!36235)

(declare-fun lemmaConcatAssociativity!1728 (List!36235 List!36235 List!36235) Unit!50544)

(assert (=> b!3204229 (= lt!1081465 (lemmaConcatAssociativity!1728 lt!1081456 lt!1081445 lt!1081450))))

(declare-fun b!3204230 () Bool)

(declare-fun e!1997751 () Bool)

(declare-fun tp!1012260 () Bool)

(assert (=> b!3204230 (= e!1997751 (and e!1997756 tp!1012260))))

(declare-fun res!1303922 () Bool)

(assert (=> b!3204231 (=> (not res!1303922) (not e!1997758))))

(declare-fun forall!7366 (List!36237 Int) Bool)

(assert (=> b!3204231 (= res!1303922 (forall!7366 tokens!494 lambda!117270))))

(declare-fun b!3204232 () Bool)

(declare-fun e!1997739 () Bool)

(assert (=> b!3204232 (= e!1997762 e!1997739)))

(declare-fun res!1303927 () Bool)

(assert (=> b!3204232 (=> res!1303927 e!1997739)))

(declare-fun lt!1081440 () BalanceConc!21196)

(declare-fun isEmpty!20198 (BalanceConc!21198) Bool)

(declare-fun lex!2127 (LexerInterface!4797 List!36236 BalanceConc!21196) tuple2!35498)

(assert (=> b!3204232 (= res!1303927 (isEmpty!20198 (_1!20883 (lex!2127 thiss!18206 rules!2135 lt!1081440))))))

(declare-fun seqFromList!3487 (List!36235) BalanceConc!21196)

(assert (=> b!3204232 (= lt!1081440 (seqFromList!3487 lt!1081456))))

(declare-fun b!3204233 () Bool)

(declare-fun res!1303918 () Bool)

(assert (=> b!3204233 (=> (not res!1303918) (not e!1997758))))

(declare-fun rulesInvariant!4194 (LexerInterface!4797 List!36236) Bool)

(assert (=> b!3204233 (= res!1303918 (rulesInvariant!4194 thiss!18206 rules!2135))))

(declare-fun b!3204234 () Bool)

(assert (=> b!3204234 (= e!1997769 (isEmpty!20197 (_2!20883 lt!1081442)))))

(declare-fun b!3204235 () Bool)

(declare-fun e!1997755 () Bool)

(declare-fun e!1997746 () Bool)

(assert (=> b!3204235 (= e!1997755 e!1997746)))

(declare-fun res!1303915 () Bool)

(assert (=> b!3204235 (=> (not res!1303915) (not e!1997746))))

(declare-fun lt!1081446 () Rule!10216)

(assert (=> b!3204235 (= res!1303915 (matchR!4601 (regex!5208 lt!1081446) lt!1081445))))

(declare-datatypes ((Option!7113 0))(
  ( (None!7112) (Some!7112 (v!35652 Rule!10216)) )
))
(declare-fun lt!1081461 () Option!7113)

(declare-fun get!11491 (Option!7113) Rule!10216)

(assert (=> b!3204235 (= lt!1081446 (get!11491 lt!1081461))))

(assert (=> b!3204236 (= e!1997765 true)))

(declare-fun lt!1081439 () Unit!50544)

(declare-fun forallContained!1179 (List!36237 Int Token!9782) Unit!50544)

(assert (=> b!3204236 (= lt!1081439 (forallContained!1179 tokens!494 lambda!117271 (h!41533 (t!237926 tokens!494))))))

(assert (=> b!3204236 (= (rulesProduceIndividualToken!2289 thiss!18206 rules!2135 (h!41533 (t!237926 tokens!494))) e!1997753)))

(declare-fun res!1303920 () Bool)

(assert (=> b!3204236 (=> (not res!1303920) (not e!1997753))))

(declare-fun size!27204 (BalanceConc!21198) Int)

(assert (=> b!3204236 (= res!1303920 (= (size!27204 (_1!20883 lt!1081458)) 1))))

(declare-fun lt!1081435 () BalanceConc!21196)

(assert (=> b!3204236 (= lt!1081458 (lex!2127 thiss!18206 rules!2135 lt!1081435))))

(declare-fun lt!1081459 () BalanceConc!21198)

(assert (=> b!3204236 (= lt!1081435 (printTailRec!1294 thiss!18206 lt!1081459 0 (BalanceConc!21197 Empty!10791)))))

(assert (=> b!3204236 (= lt!1081435 (print!1862 thiss!18206 lt!1081459))))

(assert (=> b!3204236 (= lt!1081459 (singletonSeq!2304 (h!41533 (t!237926 tokens!494))))))

(assert (=> b!3204236 e!1997769))

(declare-fun res!1303913 () Bool)

(assert (=> b!3204236 (=> (not res!1303913) (not e!1997769))))

(assert (=> b!3204236 (= res!1303913 (= (size!27204 (_1!20883 lt!1081442)) 1))))

(declare-fun lt!1081444 () BalanceConc!21196)

(assert (=> b!3204236 (= lt!1081442 (lex!2127 thiss!18206 rules!2135 lt!1081444))))

(declare-fun lt!1081449 () BalanceConc!21198)

(assert (=> b!3204236 (= lt!1081444 (printTailRec!1294 thiss!18206 lt!1081449 0 (BalanceConc!21197 Empty!10791)))))

(assert (=> b!3204236 (= lt!1081444 (print!1862 thiss!18206 lt!1081449))))

(assert (=> b!3204236 (= lt!1081449 (singletonSeq!2304 separatorToken!241))))

(declare-fun lt!1081441 () Unit!50544)

(assert (=> b!3204236 (= lt!1081441 e!1997761)))

(declare-fun c!538111 () Bool)

(declare-fun contains!6431 (List!36235 C!20120) Bool)

(declare-fun usedCharacters!524 (Regex!9967) List!36235)

(assert (=> b!3204236 (= c!538111 (not (contains!6431 (usedCharacters!524 (regex!5208 (rule!7646 separatorToken!241))) lt!1081447)))))

(declare-fun head!7025 (List!36235) C!20120)

(assert (=> b!3204236 (= lt!1081447 (head!7025 lt!1081445))))

(assert (=> b!3204236 e!1997755))

(declare-fun res!1303925 () Bool)

(assert (=> b!3204236 (=> (not res!1303925) (not e!1997755))))

(declare-fun isDefined!5536 (Option!7113) Bool)

(assert (=> b!3204236 (= res!1303925 (isDefined!5536 lt!1081461))))

(declare-fun getRuleFromTag!913 (LexerInterface!4797 List!36236 String!40523) Option!7113)

(assert (=> b!3204236 (= lt!1081461 (getRuleFromTag!913 thiss!18206 rules!2135 (tag!5732 (rule!7646 separatorToken!241))))))

(declare-fun lt!1081454 () Unit!50544)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!913 (LexerInterface!4797 List!36236 List!36235 Token!9782) Unit!50544)

(assert (=> b!3204236 (= lt!1081454 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!913 thiss!18206 rules!2135 lt!1081445 separatorToken!241))))

(declare-datatypes ((tuple2!35500 0))(
  ( (tuple2!35501 (_1!20884 Token!9782) (_2!20884 List!36235)) )
))
(declare-datatypes ((Option!7114 0))(
  ( (None!7113) (Some!7113 (v!35653 tuple2!35500)) )
))
(declare-fun maxPrefixOneRule!1576 (LexerInterface!4797 Rule!10216 List!36235) Option!7114)

(declare-fun apply!8160 (TokenValueInjection!10304 BalanceConc!21196) TokenValue!5438)

(declare-fun size!27205 (List!36235) Int)

(assert (=> b!3204236 (= (maxPrefixOneRule!1576 thiss!18206 (rule!7646 (h!41533 tokens!494)) lt!1081456) (Some!7113 (tuple2!35501 (Token!9783 (apply!8160 (transformation!5208 (rule!7646 (h!41533 tokens!494))) lt!1081440) (rule!7646 (h!41533 tokens!494)) (size!27205 lt!1081456) lt!1081456) Nil!36111)))))

(declare-fun lt!1081452 () Unit!50544)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!689 (LexerInterface!4797 List!36236 List!36235 List!36235 List!36235 Rule!10216) Unit!50544)

(assert (=> b!3204236 (= lt!1081452 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!689 thiss!18206 rules!2135 lt!1081456 lt!1081456 Nil!36111 (rule!7646 (h!41533 tokens!494))))))

(declare-fun e!1997747 () Bool)

(assert (=> b!3204236 e!1997747))

(declare-fun res!1303905 () Bool)

(assert (=> b!3204236 (=> (not res!1303905) (not e!1997747))))

(declare-fun lt!1081462 () Option!7113)

(assert (=> b!3204236 (= res!1303905 (isDefined!5536 lt!1081462))))

(assert (=> b!3204236 (= lt!1081462 (getRuleFromTag!913 thiss!18206 rules!2135 (tag!5732 (rule!7646 (h!41533 tokens!494)))))))

(declare-fun lt!1081451 () Unit!50544)

(assert (=> b!3204236 (= lt!1081451 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!913 thiss!18206 rules!2135 lt!1081456 (h!41533 tokens!494)))))

(declare-fun lt!1081443 () Unit!50544)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!836 (LexerInterface!4797 List!36236 List!36237 Token!9782) Unit!50544)

(assert (=> b!3204236 (= lt!1081443 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!836 thiss!18206 rules!2135 tokens!494 (h!41533 tokens!494)))))

(declare-fun b!3204237 () Bool)

(assert (=> b!3204237 (= e!1997747 e!1997743)))

(declare-fun res!1303907 () Bool)

(assert (=> b!3204237 (=> (not res!1303907) (not e!1997743))))

(assert (=> b!3204237 (= res!1303907 (matchR!4601 (regex!5208 lt!1081455) lt!1081456))))

(assert (=> b!3204237 (= lt!1081455 (get!11491 lt!1081462))))

(declare-fun b!3204238 () Bool)

(declare-fun res!1303906 () Bool)

(assert (=> b!3204238 (=> (not res!1303906) (not e!1997758))))

(declare-fun rulesProduceEachTokenIndividually!1248 (LexerInterface!4797 List!36236 BalanceConc!21198) Bool)

(declare-fun seqFromList!3488 (List!36237) BalanceConc!21198)

(assert (=> b!3204238 (= res!1303906 (rulesProduceEachTokenIndividually!1248 thiss!18206 rules!2135 (seqFromList!3488 tokens!494)))))

(declare-fun b!3204239 () Bool)

(declare-fun e!1997767 () Bool)

(assert (=> b!3204239 (= e!1997739 e!1997767)))

(declare-fun res!1303929 () Bool)

(assert (=> b!3204239 (=> res!1303929 e!1997767)))

(assert (=> b!3204239 (= res!1303929 (or (isSeparator!5208 (rule!7646 (h!41533 tokens!494))) (isSeparator!5208 (rule!7646 (h!41533 (t!237926 tokens!494))))))))

(declare-fun lt!1081437 () Unit!50544)

(assert (=> b!3204239 (= lt!1081437 (forallContained!1179 tokens!494 lambda!117270 (h!41533 (t!237926 tokens!494))))))

(declare-fun lt!1081464 () Unit!50544)

(assert (=> b!3204239 (= lt!1081464 (forallContained!1179 tokens!494 lambda!117270 (h!41533 tokens!494)))))

(declare-fun b!3204240 () Bool)

(declare-fun res!1303908 () Bool)

(assert (=> b!3204240 (=> (not res!1303908) (not e!1997758))))

(assert (=> b!3204240 (= res!1303908 (rulesProduceIndividualToken!2289 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3204241 () Bool)

(declare-fun e!1997740 () Bool)

(assert (=> b!3204241 (= e!1997740 e!1997768)))

(declare-fun res!1303919 () Bool)

(assert (=> b!3204241 (=> res!1303919 e!1997768)))

(assert (=> b!3204241 (= res!1303919 (not (= lt!1081466 lt!1081453)))))

(assert (=> b!3204241 (= lt!1081453 (++!8658 (++!8658 lt!1081456 lt!1081445) lt!1081450))))

(declare-fun b!3204242 () Bool)

(declare-fun res!1303912 () Bool)

(assert (=> b!3204242 (=> (not res!1303912) (not e!1997758))))

(declare-fun isEmpty!20199 (List!36236) Bool)

(assert (=> b!3204242 (= res!1303912 (not (isEmpty!20199 rules!2135)))))

(declare-fun b!3204243 () Bool)

(assert (=> b!3204243 (= e!1997767 e!1997740)))

(declare-fun res!1303910 () Bool)

(assert (=> b!3204243 (=> res!1303910 e!1997740)))

(declare-fun printWithSeparatorTokenList!142 (LexerInterface!4797 List!36237 Token!9782) List!36235)

(assert (=> b!3204243 (= res!1303910 (not (= lt!1081450 (++!8658 (++!8658 (list!12841 (charsOf!3224 (h!41533 (t!237926 tokens!494)))) lt!1081445) (printWithSeparatorTokenList!142 thiss!18206 (t!237926 (t!237926 tokens!494)) separatorToken!241)))))))

(assert (=> b!3204243 (= lt!1081438 (++!8658 lt!1081445 lt!1081450))))

(assert (=> b!3204243 (= lt!1081445 (list!12841 (charsOf!3224 separatorToken!241)))))

(assert (=> b!3204243 (= lt!1081450 (printWithSeparatorTokenList!142 thiss!18206 (t!237926 tokens!494) separatorToken!241))))

(assert (=> b!3204243 (= lt!1081466 (printWithSeparatorTokenList!142 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3204244 () Bool)

(declare-fun Unit!50547 () Unit!50544)

(assert (=> b!3204244 (= e!1997761 Unit!50547)))

(declare-fun b!3204245 () Bool)

(assert (=> b!3204245 (= e!1997746 (= (rule!7646 separatorToken!241) lt!1081446))))

(declare-fun e!1997748 () Bool)

(assert (=> b!3204246 (= e!1997748 (and tp!1012264 tp!1012256))))

(declare-fun b!3204247 () Bool)

(declare-fun res!1303924 () Bool)

(assert (=> b!3204247 (=> (not res!1303924) (not e!1997753))))

(assert (=> b!3204247 (= res!1303924 (= (apply!8159 (_1!20883 lt!1081458) 0) (h!41533 (t!237926 tokens!494))))))

(declare-fun b!3204248 () Bool)

(declare-fun tp!1012265 () Bool)

(assert (=> b!3204248 (= e!1997757 (and tp!1012265 (inv!48966 (tag!5732 (rule!7646 (h!41533 tokens!494)))) (inv!48970 (transformation!5208 (rule!7646 (h!41533 tokens!494)))) e!1997748))))

(declare-fun b!3204249 () Bool)

(declare-fun res!1303909 () Bool)

(assert (=> b!3204249 (=> (not res!1303909) (not e!1997758))))

(declare-fun sepAndNonSepRulesDisjointChars!1402 (List!36236 List!36236) Bool)

(assert (=> b!3204249 (= res!1303909 (sepAndNonSepRulesDisjointChars!1402 rules!2135 rules!2135))))

(declare-fun res!1303917 () Bool)

(assert (=> start!300854 (=> (not res!1303917) (not e!1997758))))

(assert (=> start!300854 (= res!1303917 ((_ is Lexer!4795) thiss!18206))))

(assert (=> start!300854 e!1997758))

(assert (=> start!300854 true))

(assert (=> start!300854 e!1997751))

(assert (=> start!300854 e!1997741))

(assert (=> start!300854 (and (inv!48969 separatorToken!241) e!1997766)))

(declare-fun b!3204221 () Bool)

(declare-fun res!1303904 () Bool)

(assert (=> b!3204221 (=> (not res!1303904) (not e!1997758))))

(assert (=> b!3204221 (= res!1303904 (isSeparator!5208 (rule!7646 separatorToken!241)))))

(assert (= (and start!300854 res!1303917) b!3204242))

(assert (= (and b!3204242 res!1303912) b!3204233))

(assert (= (and b!3204233 res!1303918) b!3204238))

(assert (= (and b!3204238 res!1303906) b!3204240))

(assert (= (and b!3204240 res!1303908) b!3204221))

(assert (= (and b!3204221 res!1303904) b!3204231))

(assert (= (and b!3204231 res!1303922) b!3204249))

(assert (= (and b!3204249 res!1303909) b!3204226))

(assert (= (and b!3204226 res!1303911) b!3204222))

(assert (= (and b!3204222 (not res!1303928)) b!3204213))

(assert (= (and b!3204213 (not res!1303914)) b!3204227))

(assert (= (and b!3204227 (not res!1303926)) b!3204232))

(assert (= (and b!3204232 (not res!1303927)) b!3204239))

(assert (= (and b!3204239 (not res!1303929)) b!3204243))

(assert (= (and b!3204243 (not res!1303910)) b!3204241))

(assert (= (and b!3204241 (not res!1303919)) b!3204229))

(assert (= (and b!3204229 (not res!1303923)) b!3204236))

(assert (= (and b!3204236 res!1303905) b!3204237))

(assert (= (and b!3204237 res!1303907) b!3204217))

(assert (= (and b!3204236 res!1303925) b!3204235))

(assert (= (and b!3204235 res!1303915) b!3204245))

(assert (= (and b!3204236 c!538111) b!3204218))

(assert (= (and b!3204236 (not c!538111)) b!3204244))

(assert (= (and b!3204218 res!1303916) b!3204225))

(assert (= (and b!3204236 res!1303913) b!3204223))

(assert (= (and b!3204223 res!1303921) b!3204234))

(assert (= (and b!3204236 res!1303920) b!3204247))

(assert (= (and b!3204247 res!1303924) b!3204214))

(assert (= b!3204224 b!3204215))

(assert (= b!3204230 b!3204224))

(assert (= (and start!300854 ((_ is Cons!36112) rules!2135)) b!3204230))

(assert (= b!3204248 b!3204246))

(assert (= b!3204228 b!3204248))

(assert (= b!3204212 b!3204228))

(assert (= (and start!300854 ((_ is Cons!36113) tokens!494)) b!3204212))

(assert (= b!3204219 b!3204220))

(assert (= b!3204216 b!3204219))

(assert (= start!300854 b!3204216))

(declare-fun m!3468823 () Bool)

(assert (=> b!3204216 m!3468823))

(declare-fun m!3468825 () Bool)

(assert (=> b!3204213 m!3468825))

(assert (=> b!3204213 m!3468825))

(declare-fun m!3468827 () Bool)

(assert (=> b!3204213 m!3468827))

(declare-fun m!3468829 () Bool)

(assert (=> b!3204241 m!3468829))

(assert (=> b!3204241 m!3468829))

(declare-fun m!3468831 () Bool)

(assert (=> b!3204241 m!3468831))

(declare-fun m!3468833 () Bool)

(assert (=> b!3204233 m!3468833))

(declare-fun m!3468835 () Bool)

(assert (=> b!3204237 m!3468835))

(declare-fun m!3468837 () Bool)

(assert (=> b!3204237 m!3468837))

(declare-fun m!3468839 () Bool)

(assert (=> b!3204212 m!3468839))

(declare-fun m!3468841 () Bool)

(assert (=> b!3204219 m!3468841))

(declare-fun m!3468843 () Bool)

(assert (=> b!3204219 m!3468843))

(declare-fun m!3468845 () Bool)

(assert (=> b!3204238 m!3468845))

(assert (=> b!3204238 m!3468845))

(declare-fun m!3468847 () Bool)

(assert (=> b!3204238 m!3468847))

(declare-fun m!3468849 () Bool)

(assert (=> b!3204214 m!3468849))

(declare-fun m!3468851 () Bool)

(assert (=> b!3204231 m!3468851))

(declare-fun m!3468853 () Bool)

(assert (=> b!3204240 m!3468853))

(declare-fun m!3468855 () Bool)

(assert (=> b!3204236 m!3468855))

(declare-fun m!3468857 () Bool)

(assert (=> b!3204236 m!3468857))

(assert (=> b!3204236 m!3468857))

(declare-fun m!3468859 () Bool)

(assert (=> b!3204236 m!3468859))

(declare-fun m!3468861 () Bool)

(assert (=> b!3204236 m!3468861))

(declare-fun m!3468863 () Bool)

(assert (=> b!3204236 m!3468863))

(declare-fun m!3468865 () Bool)

(assert (=> b!3204236 m!3468865))

(declare-fun m!3468867 () Bool)

(assert (=> b!3204236 m!3468867))

(declare-fun m!3468869 () Bool)

(assert (=> b!3204236 m!3468869))

(declare-fun m!3468871 () Bool)

(assert (=> b!3204236 m!3468871))

(declare-fun m!3468873 () Bool)

(assert (=> b!3204236 m!3468873))

(declare-fun m!3468875 () Bool)

(assert (=> b!3204236 m!3468875))

(declare-fun m!3468877 () Bool)

(assert (=> b!3204236 m!3468877))

(declare-fun m!3468879 () Bool)

(assert (=> b!3204236 m!3468879))

(declare-fun m!3468881 () Bool)

(assert (=> b!3204236 m!3468881))

(declare-fun m!3468883 () Bool)

(assert (=> b!3204236 m!3468883))

(declare-fun m!3468885 () Bool)

(assert (=> b!3204236 m!3468885))

(declare-fun m!3468887 () Bool)

(assert (=> b!3204236 m!3468887))

(declare-fun m!3468889 () Bool)

(assert (=> b!3204236 m!3468889))

(declare-fun m!3468891 () Bool)

(assert (=> b!3204236 m!3468891))

(declare-fun m!3468893 () Bool)

(assert (=> b!3204236 m!3468893))

(declare-fun m!3468895 () Bool)

(assert (=> b!3204236 m!3468895))

(declare-fun m!3468897 () Bool)

(assert (=> b!3204236 m!3468897))

(declare-fun m!3468899 () Bool)

(assert (=> b!3204236 m!3468899))

(declare-fun m!3468901 () Bool)

(assert (=> b!3204236 m!3468901))

(declare-fun m!3468903 () Bool)

(assert (=> b!3204236 m!3468903))

(declare-fun m!3468905 () Bool)

(assert (=> b!3204236 m!3468905))

(declare-fun m!3468907 () Bool)

(assert (=> b!3204243 m!3468907))

(declare-fun m!3468909 () Bool)

(assert (=> b!3204243 m!3468909))

(declare-fun m!3468911 () Bool)

(assert (=> b!3204243 m!3468911))

(declare-fun m!3468913 () Bool)

(assert (=> b!3204243 m!3468913))

(declare-fun m!3468915 () Bool)

(assert (=> b!3204243 m!3468915))

(declare-fun m!3468917 () Bool)

(assert (=> b!3204243 m!3468917))

(assert (=> b!3204243 m!3468907))

(assert (=> b!3204243 m!3468915))

(declare-fun m!3468919 () Bool)

(assert (=> b!3204243 m!3468919))

(declare-fun m!3468921 () Bool)

(assert (=> b!3204243 m!3468921))

(assert (=> b!3204243 m!3468909))

(declare-fun m!3468923 () Bool)

(assert (=> b!3204243 m!3468923))

(assert (=> b!3204243 m!3468917))

(assert (=> b!3204243 m!3468921))

(declare-fun m!3468925 () Bool)

(assert (=> b!3204243 m!3468925))

(declare-fun m!3468927 () Bool)

(assert (=> b!3204218 m!3468927))

(declare-fun m!3468929 () Bool)

(assert (=> b!3204218 m!3468929))

(declare-fun m!3468931 () Bool)

(assert (=> b!3204232 m!3468931))

(declare-fun m!3468933 () Bool)

(assert (=> b!3204232 m!3468933))

(declare-fun m!3468935 () Bool)

(assert (=> b!3204232 m!3468935))

(declare-fun m!3468937 () Bool)

(assert (=> b!3204247 m!3468937))

(declare-fun m!3468939 () Bool)

(assert (=> start!300854 m!3468939))

(declare-fun m!3468941 () Bool)

(assert (=> b!3204234 m!3468941))

(declare-fun m!3468943 () Bool)

(assert (=> b!3204229 m!3468943))

(declare-fun m!3468945 () Bool)

(assert (=> b!3204229 m!3468945))

(declare-fun m!3468947 () Bool)

(assert (=> b!3204227 m!3468947))

(declare-fun m!3468949 () Bool)

(assert (=> b!3204222 m!3468949))

(declare-fun m!3468951 () Bool)

(assert (=> b!3204222 m!3468951))

(declare-fun m!3468953 () Bool)

(assert (=> b!3204222 m!3468953))

(declare-fun m!3468955 () Bool)

(assert (=> b!3204222 m!3468955))

(declare-fun m!3468957 () Bool)

(assert (=> b!3204222 m!3468957))

(declare-fun m!3468959 () Bool)

(assert (=> b!3204228 m!3468959))

(declare-fun m!3468961 () Bool)

(assert (=> b!3204235 m!3468961))

(declare-fun m!3468963 () Bool)

(assert (=> b!3204235 m!3468963))

(declare-fun m!3468965 () Bool)

(assert (=> b!3204248 m!3468965))

(declare-fun m!3468967 () Bool)

(assert (=> b!3204248 m!3468967))

(declare-fun m!3468969 () Bool)

(assert (=> b!3204249 m!3468969))

(declare-fun m!3468971 () Bool)

(assert (=> b!3204224 m!3468971))

(declare-fun m!3468973 () Bool)

(assert (=> b!3204224 m!3468973))

(declare-fun m!3468975 () Bool)

(assert (=> b!3204242 m!3468975))

(declare-fun m!3468977 () Bool)

(assert (=> b!3204239 m!3468977))

(declare-fun m!3468979 () Bool)

(assert (=> b!3204239 m!3468979))

(declare-fun m!3468981 () Bool)

(assert (=> b!3204223 m!3468981))

(check-sat (not b!3204247) (not b!3204240) (not b!3204224) (not b_next!85885) (not b!3204219) (not b!3204234) (not b!3204214) (not b_next!85891) b_and!213181 (not b!3204212) (not b!3204242) (not b!3204249) (not b_next!85889) (not b_next!85887) (not b!3204248) (not b!3204229) b_and!213179 (not b!3204243) (not b!3204216) (not b!3204230) b_and!213177 (not b!3204218) (not b!3204258) (not b!3204239) (not b!3204223) b_and!213183 (not b!3204228) (not b!3204222) (not start!300854) b_and!213175 (not b!3204241) (not b!3204238) (not b!3204227) b_and!213185 (not b!3204235) (not b!3204237) (not b_next!85883) (not b!3204236) (not b!3204232) (not b!3204213) (not b!3204231) (not b!3204233) (not b_next!85881))
(check-sat b_and!213179 b_and!213177 b_and!213183 b_and!213175 (not b_next!85885) b_and!213185 (not b_next!85891) b_and!213181 (not b_next!85883) (not b_next!85881) (not b_next!85889) (not b_next!85887))
