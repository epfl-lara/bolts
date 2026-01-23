; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!179206 () Bool)

(assert start!179206)

(declare-fun b!1811925 () Bool)

(declare-fun b_free!49871 () Bool)

(declare-fun b_next!50575 () Bool)

(assert (=> b!1811925 (= b_free!49871 (not b_next!50575))))

(declare-fun tp!511853 () Bool)

(declare-fun b_and!139831 () Bool)

(assert (=> b!1811925 (= tp!511853 b_and!139831)))

(declare-fun b_free!49873 () Bool)

(declare-fun b_next!50577 () Bool)

(assert (=> b!1811925 (= b_free!49873 (not b_next!50577))))

(declare-fun tp!511857 () Bool)

(declare-fun b_and!139833 () Bool)

(assert (=> b!1811925 (= tp!511857 b_and!139833)))

(declare-fun b!1811918 () Bool)

(declare-fun b_free!49875 () Bool)

(declare-fun b_next!50579 () Bool)

(assert (=> b!1811918 (= b_free!49875 (not b_next!50579))))

(declare-fun tp!511860 () Bool)

(declare-fun b_and!139835 () Bool)

(assert (=> b!1811918 (= tp!511860 b_and!139835)))

(declare-fun b_free!49877 () Bool)

(declare-fun b_next!50581 () Bool)

(assert (=> b!1811918 (= b_free!49877 (not b_next!50581))))

(declare-fun tp!511854 () Bool)

(declare-fun b_and!139837 () Bool)

(assert (=> b!1811918 (= tp!511854 b_and!139837)))

(declare-fun b!1811945 () Bool)

(declare-fun b_free!49879 () Bool)

(declare-fun b_next!50583 () Bool)

(assert (=> b!1811945 (= b_free!49879 (not b_next!50583))))

(declare-fun tp!511861 () Bool)

(declare-fun b_and!139839 () Bool)

(assert (=> b!1811945 (= tp!511861 b_and!139839)))

(declare-fun b_free!49881 () Bool)

(declare-fun b_next!50585 () Bool)

(assert (=> b!1811945 (= b_free!49881 (not b_next!50585))))

(declare-fun tp!511855 () Bool)

(declare-fun b_and!139841 () Bool)

(assert (=> b!1811945 (= tp!511855 b_and!139841)))

(declare-fun b!1811966 () Bool)

(declare-fun e!1157415 () Bool)

(assert (=> b!1811966 (= e!1157415 true)))

(declare-fun b!1811965 () Bool)

(declare-fun e!1157414 () Bool)

(assert (=> b!1811965 (= e!1157414 e!1157415)))

(declare-fun b!1811964 () Bool)

(declare-fun e!1157413 () Bool)

(assert (=> b!1811964 (= e!1157413 e!1157414)))

(declare-fun b!1811928 () Bool)

(assert (=> b!1811928 e!1157413))

(assert (= b!1811965 b!1811966))

(assert (= b!1811964 b!1811965))

(assert (= b!1811928 b!1811964))

(declare-fun lambda!70994 () Int)

(declare-datatypes ((List!19827 0))(
  ( (Nil!19757) (Cons!19757 (h!25158 (_ BitVec 16)) (t!169124 List!19827)) )
))
(declare-datatypes ((TokenValue!3635 0))(
  ( (FloatLiteralValue!7270 (text!25890 List!19827)) (TokenValueExt!3634 (__x!12572 Int)) (Broken!18175 (value!110679 List!19827)) (Object!3704) (End!3635) (Def!3635) (Underscore!3635) (Match!3635) (Else!3635) (Error!3635) (Case!3635) (If!3635) (Extends!3635) (Abstract!3635) (Class!3635) (Val!3635) (DelimiterValue!7270 (del!3695 List!19827)) (KeywordValue!3641 (value!110680 List!19827)) (CommentValue!7270 (value!110681 List!19827)) (WhitespaceValue!7270 (value!110682 List!19827)) (IndentationValue!3635 (value!110683 List!19827)) (String!22506) (Int32!3635) (Broken!18176 (value!110684 List!19827)) (Boolean!3636) (Unit!34338) (OperatorValue!3638 (op!3695 List!19827)) (IdentifierValue!7270 (value!110685 List!19827)) (IdentifierValue!7271 (value!110686 List!19827)) (WhitespaceValue!7271 (value!110687 List!19827)) (True!7270) (False!7270) (Broken!18177 (value!110688 List!19827)) (Broken!18178 (value!110689 List!19827)) (True!7271) (RightBrace!3635) (RightBracket!3635) (Colon!3635) (Null!3635) (Comma!3635) (LeftBracket!3635) (False!7271) (LeftBrace!3635) (ImaginaryLiteralValue!3635 (text!25891 List!19827)) (StringLiteralValue!10905 (value!110690 List!19827)) (EOFValue!3635 (value!110691 List!19827)) (IdentValue!3635 (value!110692 List!19827)) (DelimiterValue!7271 (value!110693 List!19827)) (DedentValue!3635 (value!110694 List!19827)) (NewLineValue!3635 (value!110695 List!19827)) (IntegerValue!10905 (value!110696 (_ BitVec 32)) (text!25892 List!19827)) (IntegerValue!10906 (value!110697 Int) (text!25893 List!19827)) (Times!3635) (Or!3635) (Equal!3635) (Minus!3635) (Broken!18179 (value!110698 List!19827)) (And!3635) (Div!3635) (LessEqual!3635) (Mod!3635) (Concat!8508) (Not!3635) (Plus!3635) (SpaceValue!3635 (value!110699 List!19827)) (IntegerValue!10907 (value!110700 Int) (text!25894 List!19827)) (StringLiteralValue!10906 (text!25895 List!19827)) (FloatLiteralValue!7271 (text!25896 List!19827)) (BytesLiteralValue!3635 (value!110701 List!19827)) (CommentValue!7271 (value!110702 List!19827)) (StringLiteralValue!10907 (value!110703 List!19827)) (ErrorTokenValue!3635 (msg!3696 List!19827)) )
))
(declare-datatypes ((String!22507 0))(
  ( (String!22508 (value!110704 String)) )
))
(declare-datatypes ((C!9920 0))(
  ( (C!9921 (val!5556 Int)) )
))
(declare-datatypes ((List!19828 0))(
  ( (Nil!19758) (Cons!19758 (h!25159 C!9920) (t!169125 List!19828)) )
))
(declare-datatypes ((Regex!4873 0))(
  ( (ElementMatch!4873 (c!296056 C!9920)) (Concat!8509 (regOne!10258 Regex!4873) (regTwo!10258 Regex!4873)) (EmptyExpr!4873) (Star!4873 (reg!5202 Regex!4873)) (EmptyLang!4873) (Union!4873 (regOne!10259 Regex!4873) (regTwo!10259 Regex!4873)) )
))
(declare-datatypes ((IArray!13151 0))(
  ( (IArray!13152 (innerList!6633 List!19828)) )
))
(declare-datatypes ((Conc!6573 0))(
  ( (Node!6573 (left!15847 Conc!6573) (right!16177 Conc!6573) (csize!13376 Int) (cheight!6784 Int)) (Leaf!9566 (xs!9449 IArray!13151) (csize!13377 Int)) (Empty!6573) )
))
(declare-datatypes ((BalanceConc!13090 0))(
  ( (BalanceConc!13091 (c!296057 Conc!6573)) )
))
(declare-datatypes ((TokenValueInjection!6930 0))(
  ( (TokenValueInjection!6931 (toValue!5076 Int) (toChars!4935 Int)) )
))
(declare-datatypes ((Rule!6890 0))(
  ( (Rule!6891 (regex!3545 Regex!4873) (tag!3955 String!22507) (isSeparator!3545 Bool) (transformation!3545 TokenValueInjection!6930)) )
))
(declare-datatypes ((Token!6656 0))(
  ( (Token!6657 (value!110705 TokenValue!3635) (rule!5651 Rule!6890) (size!15704 Int) (originalCharacters!4359 List!19828)) )
))
(declare-datatypes ((tuple2!19346 0))(
  ( (tuple2!19347 (_1!11075 Token!6656) (_2!11075 List!19828)) )
))
(declare-fun lt!703043 () tuple2!19346)

(declare-fun order!12863 () Int)

(declare-fun order!12865 () Int)

(declare-fun dynLambda!9803 (Int Int) Int)

(declare-fun dynLambda!9804 (Int Int) Int)

(assert (=> b!1811966 (< (dynLambda!9803 order!12863 (toValue!5076 (transformation!3545 (rule!5651 (_1!11075 lt!703043))))) (dynLambda!9804 order!12865 lambda!70994))))

(declare-fun order!12867 () Int)

(declare-fun dynLambda!9805 (Int Int) Int)

(assert (=> b!1811966 (< (dynLambda!9805 order!12867 (toChars!4935 (transformation!3545 (rule!5651 (_1!11075 lt!703043))))) (dynLambda!9804 order!12865 lambda!70994))))

(declare-fun b!1811911 () Bool)

(declare-fun e!1157394 () Bool)

(declare-fun e!1157381 () Bool)

(assert (=> b!1811911 (= e!1157394 e!1157381)))

(declare-fun res!814432 () Bool)

(assert (=> b!1811911 (=> res!814432 e!1157381)))

(declare-fun lt!703025 () BalanceConc!13090)

(declare-fun token!523 () Token!6656)

(declare-datatypes ((Option!4116 0))(
  ( (None!4115) (Some!4115 (v!25634 tuple2!19346)) )
))
(declare-fun lt!703011 () Option!4116)

(declare-fun lt!703009 () List!19828)

(declare-fun apply!5345 (TokenValueInjection!6930 BalanceConc!13090) TokenValue!3635)

(declare-fun size!15705 (List!19828) Int)

(declare-fun getSuffix!952 (List!19828 List!19828) List!19828)

(assert (=> b!1811911 (= res!814432 (not (= lt!703011 (Some!4115 (tuple2!19347 (Token!6657 (apply!5345 (transformation!3545 (rule!5651 token!523)) lt!703025) (rule!5651 token!523) (size!15705 lt!703009) lt!703009) (getSuffix!952 lt!703009 lt!703009))))))))

(declare-datatypes ((Unit!34339 0))(
  ( (Unit!34340) )
))
(declare-fun lt!703024 () Unit!34339)

(declare-fun lemmaSemiInverse!683 (TokenValueInjection!6930 BalanceConc!13090) Unit!34339)

(assert (=> b!1811911 (= lt!703024 (lemmaSemiInverse!683 (transformation!3545 (rule!5651 token!523)) lt!703025))))

(declare-fun seqFromList!2514 (List!19828) BalanceConc!13090)

(assert (=> b!1811911 (= lt!703025 (seqFromList!2514 lt!703009))))

(declare-fun e!1157393 () Bool)

(declare-fun e!1157385 () Bool)

(declare-fun b!1811912 () Bool)

(declare-fun tp!511859 () Bool)

(declare-fun inv!25742 (String!22507) Bool)

(declare-fun inv!25747 (TokenValueInjection!6930) Bool)

(assert (=> b!1811912 (= e!1157393 (and tp!511859 (inv!25742 (tag!3955 (rule!5651 token!523))) (inv!25747 (transformation!3545 (rule!5651 token!523))) e!1157385))))

(declare-fun b!1811913 () Bool)

(declare-fun e!1157398 () Unit!34339)

(declare-fun Unit!34341 () Unit!34339)

(assert (=> b!1811913 (= e!1157398 Unit!34341)))

(declare-datatypes ((LexerInterface!3174 0))(
  ( (LexerInterfaceExt!3171 (__x!12573 Int)) (Lexer!3172) )
))
(declare-fun thiss!24550 () LexerInterface!3174)

(declare-datatypes ((List!19829 0))(
  ( (Nil!19759) (Cons!19759 (h!25160 Rule!6890) (t!169126 List!19829)) )
))
(declare-fun rules!3447 () List!19829)

(declare-fun lt!703007 () Unit!34339)

(declare-fun lt!703039 () List!19828)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!252 (LexerInterface!3174 List!19829 List!19828 Token!6656 Rule!6890 List!19828) Unit!34339)

(assert (=> b!1811913 (= lt!703007 (lemmaMaxPrefixThenMatchesRulesRegex!252 thiss!24550 rules!3447 lt!703039 (_1!11075 lt!703043) (rule!5651 (_1!11075 lt!703043)) (_2!11075 lt!703043)))))

(declare-fun lt!703029 () Regex!4873)

(declare-fun lt!703034 () List!19828)

(declare-fun matchR!2346 (Regex!4873 List!19828) Bool)

(assert (=> b!1811913 (matchR!2346 lt!703029 lt!703034)))

(declare-fun lt!703053 () List!19828)

(assert (=> b!1811913 (= lt!703053 (getSuffix!952 lt!703039 lt!703009))))

(declare-fun suffix!1421 () List!19828)

(declare-fun lt!703013 () Unit!34339)

(declare-fun lemmaSamePrefixThenSameSuffix!896 (List!19828 List!19828 List!19828 List!19828 List!19828) Unit!34339)

(assert (=> b!1811913 (= lt!703013 (lemmaSamePrefixThenSameSuffix!896 lt!703009 suffix!1421 lt!703009 lt!703053 lt!703039))))

(assert (=> b!1811913 (= suffix!1421 lt!703053)))

(declare-fun lt!703048 () Unit!34339)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!321 (List!19828 List!19828) Unit!34339)

(assert (=> b!1811913 (= lt!703048 (lemmaAddHeadSuffixToPrefixStillPrefix!321 lt!703009 lt!703039))))

(declare-fun isPrefix!1785 (List!19828 List!19828) Bool)

(declare-fun ++!5375 (List!19828 List!19828) List!19828)

(declare-fun head!4208 (List!19828) C!9920)

(assert (=> b!1811913 (isPrefix!1785 (++!5375 lt!703009 (Cons!19758 (head!4208 lt!703053) Nil!19758)) lt!703039)))

(declare-fun lt!703045 () Unit!34339)

(declare-fun lt!703020 () List!19828)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!193 (List!19828 List!19828 List!19828) Unit!34339)

(assert (=> b!1811913 (= lt!703045 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!193 lt!703034 lt!703020 lt!703039))))

(assert (=> b!1811913 (isPrefix!1785 lt!703020 lt!703034)))

(declare-fun lt!703050 () Unit!34339)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!184 (Regex!4873 List!19828 List!19828) Unit!34339)

(assert (=> b!1811913 (= lt!703050 (lemmaNotPrefixMatchThenCannotMatchLonger!184 lt!703029 lt!703020 lt!703034))))

(assert (=> b!1811913 false))

(declare-fun b!1811914 () Bool)

(declare-fun e!1157376 () Bool)

(declare-fun e!1157379 () Bool)

(assert (=> b!1811914 (= e!1157376 e!1157379)))

(declare-fun res!814455 () Bool)

(assert (=> b!1811914 (=> (not res!814455) (not e!1157379))))

(declare-fun isDefined!3457 (Option!4116) Bool)

(assert (=> b!1811914 (= res!814455 (isDefined!3457 lt!703011))))

(declare-fun maxPrefix!1728 (LexerInterface!3174 List!19829 List!19828) Option!4116)

(assert (=> b!1811914 (= lt!703011 (maxPrefix!1728 thiss!24550 rules!3447 lt!703009))))

(declare-fun lt!703021 () BalanceConc!13090)

(declare-fun list!8045 (BalanceConc!13090) List!19828)

(assert (=> b!1811914 (= lt!703009 (list!8045 lt!703021))))

(declare-fun charsOf!2194 (Token!6656) BalanceConc!13090)

(assert (=> b!1811914 (= lt!703021 (charsOf!2194 token!523))))

(declare-fun b!1811915 () Bool)

(declare-fun res!814445 () Bool)

(declare-fun e!1157395 () Bool)

(assert (=> b!1811915 (=> (not res!814445) (not e!1157395))))

(declare-fun lt!703010 () tuple2!19346)

(declare-fun isEmpty!12502 (List!19828) Bool)

(assert (=> b!1811915 (= res!814445 (isEmpty!12502 (_2!11075 lt!703010)))))

(declare-fun b!1811916 () Bool)

(declare-fun res!814441 () Bool)

(assert (=> b!1811916 (=> res!814441 e!1157394)))

(assert (=> b!1811916 (= res!814441 (isEmpty!12502 lt!703009))))

(declare-fun rule!422 () Rule!6890)

(declare-fun tp!511856 () Bool)

(declare-fun b!1811917 () Bool)

(declare-fun e!1157391 () Bool)

(declare-fun e!1157399 () Bool)

(assert (=> b!1811917 (= e!1157391 (and tp!511856 (inv!25742 (tag!3955 rule!422)) (inv!25747 (transformation!3545 rule!422)) e!1157399))))

(assert (=> b!1811918 (= e!1157399 (and tp!511860 tp!511854))))

(declare-fun b!1811919 () Bool)

(declare-fun e!1157406 () Unit!34339)

(declare-fun Unit!34342 () Unit!34339)

(assert (=> b!1811919 (= e!1157406 Unit!34342)))

(declare-fun b!1811920 () Bool)

(declare-fun e!1157378 () Bool)

(declare-fun e!1157404 () Bool)

(assert (=> b!1811920 (= e!1157378 e!1157404)))

(declare-fun res!814450 () Bool)

(assert (=> b!1811920 (=> res!814450 e!1157404)))

(declare-fun lt!703044 () TokenValue!3635)

(declare-fun lt!703027 () Option!4116)

(declare-fun lt!703017 () Int)

(assert (=> b!1811920 (= res!814450 (not (= lt!703027 (Some!4115 (tuple2!19347 (Token!6657 lt!703044 (rule!5651 (_1!11075 lt!703043)) lt!703017 lt!703034) (_2!11075 lt!703043))))))))

(declare-fun lt!703028 () BalanceConc!13090)

(declare-fun size!15706 (BalanceConc!13090) Int)

(assert (=> b!1811920 (= lt!703017 (size!15706 lt!703028))))

(assert (=> b!1811920 (= lt!703044 (apply!5345 (transformation!3545 (rule!5651 (_1!11075 lt!703043))) lt!703028))))

(declare-fun lt!703023 () Unit!34339)

(declare-fun lemmaCharactersSize!603 (Token!6656) Unit!34339)

(assert (=> b!1811920 (= lt!703023 (lemmaCharactersSize!603 (_1!11075 lt!703043)))))

(declare-fun lt!703047 () Unit!34339)

(declare-fun lemmaEqSameImage!456 (TokenValueInjection!6930 BalanceConc!13090 BalanceConc!13090) Unit!34339)

(assert (=> b!1811920 (= lt!703047 (lemmaEqSameImage!456 (transformation!3545 (rule!5651 (_1!11075 lt!703043))) lt!703028 (seqFromList!2514 (originalCharacters!4359 (_1!11075 lt!703043)))))))

(declare-fun b!1811921 () Bool)

(declare-fun e!1157405 () Unit!34339)

(declare-fun Unit!34343 () Unit!34339)

(assert (=> b!1811921 (= e!1157405 Unit!34343)))

(declare-fun b!1811922 () Bool)

(declare-fun e!1157377 () Bool)

(assert (=> b!1811922 (= e!1157377 e!1157378)))

(declare-fun res!814448 () Bool)

(assert (=> b!1811922 (=> res!814448 e!1157378)))

(declare-fun dynLambda!9806 (Int TokenValue!3635) BalanceConc!13090)

(declare-fun dynLambda!9807 (Int BalanceConc!13090) TokenValue!3635)

(assert (=> b!1811922 (= res!814448 (not (= (list!8045 (dynLambda!9806 (toChars!4935 (transformation!3545 (rule!5651 (_1!11075 lt!703043)))) (dynLambda!9807 (toValue!5076 (transformation!3545 (rule!5651 (_1!11075 lt!703043)))) lt!703028))) lt!703034)))))

(declare-fun lt!703037 () Unit!34339)

(assert (=> b!1811922 (= lt!703037 (lemmaSemiInverse!683 (transformation!3545 (rule!5651 (_1!11075 lt!703043))) lt!703028))))

(declare-fun b!1811923 () Bool)

(declare-fun res!814431 () Bool)

(assert (=> b!1811923 (=> (not res!814431) (not e!1157376))))

(declare-fun isEmpty!12503 (List!19829) Bool)

(assert (=> b!1811923 (= res!814431 (not (isEmpty!12503 rules!3447)))))

(declare-fun b!1811924 () Bool)

(declare-fun e!1157396 () Bool)

(declare-fun e!1157400 () Bool)

(assert (=> b!1811924 (= e!1157396 e!1157400)))

(declare-fun res!814457 () Bool)

(assert (=> b!1811924 (=> res!814457 e!1157400)))

(assert (=> b!1811924 (= res!814457 (= (rule!5651 (_1!11075 lt!703043)) (rule!5651 token!523)))))

(assert (=> b!1811924 (= suffix!1421 (_2!11075 lt!703043))))

(declare-fun lt!703005 () Unit!34339)

(assert (=> b!1811924 (= lt!703005 (lemmaSamePrefixThenSameSuffix!896 lt!703009 suffix!1421 lt!703009 (_2!11075 lt!703043) lt!703039))))

(assert (=> b!1811924 (= lt!703034 lt!703009)))

(declare-fun lt!703054 () Unit!34339)

(declare-fun lemmaIsPrefixSameLengthThenSameList!281 (List!19828 List!19828 List!19828) Unit!34339)

(assert (=> b!1811924 (= lt!703054 (lemmaIsPrefixSameLengthThenSameList!281 lt!703034 lt!703009 lt!703039))))

(declare-fun e!1157375 () Bool)

(assert (=> b!1811925 (= e!1157375 (and tp!511853 tp!511857))))

(declare-fun b!1811926 () Bool)

(declare-fun e!1157401 () Bool)

(assert (=> b!1811926 (= e!1157401 false)))

(declare-fun b!1811927 () Bool)

(declare-fun Unit!34344 () Unit!34339)

(assert (=> b!1811927 (= e!1157398 Unit!34344)))

(declare-fun e!1157383 () Bool)

(assert (=> b!1811928 (= e!1157383 e!1157377)))

(declare-fun res!814456 () Bool)

(assert (=> b!1811928 (=> res!814456 e!1157377)))

(declare-fun Forall!912 (Int) Bool)

(assert (=> b!1811928 (= res!814456 (not (Forall!912 lambda!70994)))))

(declare-fun lt!703041 () Unit!34339)

(declare-fun lemmaInv!744 (TokenValueInjection!6930) Unit!34339)

(assert (=> b!1811928 (= lt!703041 (lemmaInv!744 (transformation!3545 (rule!5651 (_1!11075 lt!703043)))))))

(declare-fun b!1811929 () Bool)

(declare-fun res!814446 () Bool)

(assert (=> b!1811929 (=> res!814446 e!1157378)))

(assert (=> b!1811929 (= res!814446 (not (= lt!703028 (dynLambda!9806 (toChars!4935 (transformation!3545 (rule!5651 (_1!11075 lt!703043)))) (value!110705 (_1!11075 lt!703043))))))))

(declare-fun b!1811930 () Bool)

(declare-fun res!814458 () Bool)

(assert (=> b!1811930 (=> (not res!814458) (not e!1157376))))

(declare-fun contains!3579 (List!19829 Rule!6890) Bool)

(assert (=> b!1811930 (= res!814458 (contains!3579 rules!3447 rule!422))))

(declare-fun res!814440 () Bool)

(assert (=> start!179206 (=> (not res!814440) (not e!1157376))))

(get-info :version)

(assert (=> start!179206 (= res!814440 ((_ is Lexer!3172) thiss!24550))))

(assert (=> start!179206 e!1157376))

(declare-fun e!1157386 () Bool)

(assert (=> start!179206 e!1157386))

(assert (=> start!179206 e!1157391))

(assert (=> start!179206 true))

(declare-fun e!1157380 () Bool)

(declare-fun inv!25748 (Token!6656) Bool)

(assert (=> start!179206 (and (inv!25748 token!523) e!1157380)))

(declare-fun e!1157384 () Bool)

(assert (=> start!179206 e!1157384))

(declare-fun b!1811931 () Bool)

(declare-fun tp_is_empty!7989 () Bool)

(declare-fun tp!511852 () Bool)

(assert (=> b!1811931 (= e!1157386 (and tp_is_empty!7989 tp!511852))))

(declare-fun b!1811932 () Bool)

(declare-fun e!1157387 () Bool)

(declare-fun e!1157373 () Bool)

(assert (=> b!1811932 (= e!1157387 e!1157373)))

(declare-fun res!814443 () Bool)

(assert (=> b!1811932 (=> res!814443 e!1157373)))

(declare-fun prefixMatch!756 (Regex!4873 List!19828) Bool)

(assert (=> b!1811932 (= res!814443 (prefixMatch!756 lt!703029 lt!703020))))

(assert (=> b!1811932 (= lt!703020 (++!5375 lt!703009 (Cons!19758 (head!4208 suffix!1421) Nil!19758)))))

(declare-fun rulesRegex!901 (LexerInterface!3174 List!19829) Regex!4873)

(assert (=> b!1811932 (= lt!703029 (rulesRegex!901 thiss!24550 rules!3447))))

(declare-fun b!1811933 () Bool)

(declare-fun Unit!34345 () Unit!34339)

(assert (=> b!1811933 (= e!1157406 Unit!34345)))

(declare-fun lt!703006 () Unit!34339)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!254 (LexerInterface!3174 List!19829 Rule!6890 List!19828 List!19828 List!19828 Rule!6890) Unit!34339)

(assert (=> b!1811933 (= lt!703006 (lemmaMaxPrefixOutputsMaxPrefix!254 thiss!24550 rules!3447 (rule!5651 (_1!11075 lt!703043)) lt!703034 lt!703039 lt!703009 rule!422))))

(assert (=> b!1811933 false))

(declare-fun b!1811934 () Bool)

(declare-fun res!814437 () Bool)

(assert (=> b!1811934 (=> res!814437 e!1157394)))

(assert (=> b!1811934 (= res!814437 (not (contains!3579 rules!3447 (rule!5651 token!523))))))

(declare-fun b!1811935 () Bool)

(declare-fun res!814442 () Bool)

(assert (=> b!1811935 (=> res!814442 e!1157394)))

(assert (=> b!1811935 (= res!814442 (not (contains!3579 rules!3447 (rule!5651 (_1!11075 lt!703043)))))))

(declare-fun b!1811936 () Bool)

(declare-fun e!1157389 () Bool)

(declare-fun e!1157390 () Bool)

(assert (=> b!1811936 (= e!1157389 e!1157390)))

(declare-fun res!814452 () Bool)

(assert (=> b!1811936 (=> res!814452 e!1157390)))

(declare-fun lt!703032 () Bool)

(assert (=> b!1811936 (= res!814452 lt!703032)))

(declare-fun lt!703014 () Unit!34339)

(assert (=> b!1811936 (= lt!703014 e!1157398)))

(declare-fun c!296055 () Bool)

(assert (=> b!1811936 (= c!296055 lt!703032)))

(declare-fun lt!703036 () Int)

(assert (=> b!1811936 (= lt!703032 (> lt!703017 lt!703036))))

(assert (=> b!1811936 (= lt!703036 (size!15706 lt!703021))))

(assert (=> b!1811936 (matchR!2346 lt!703029 lt!703009)))

(declare-fun lt!703015 () Unit!34339)

(assert (=> b!1811936 (= lt!703015 (lemmaMaxPrefixThenMatchesRulesRegex!252 thiss!24550 rules!3447 lt!703009 token!523 rule!422 Nil!19758))))

(declare-fun b!1811937 () Bool)

(assert (=> b!1811937 (= e!1157400 e!1157394)))

(declare-fun res!814444 () Bool)

(assert (=> b!1811937 (=> res!814444 e!1157394)))

(declare-fun lt!703035 () Int)

(declare-fun lt!703052 () Int)

(assert (=> b!1811937 (= res!814444 (>= lt!703035 lt!703052))))

(declare-fun lt!703012 () Unit!34339)

(assert (=> b!1811937 (= lt!703012 e!1157405)))

(declare-fun c!296053 () Bool)

(assert (=> b!1811937 (= c!296053 (< lt!703052 lt!703035))))

(declare-fun getIndex!210 (List!19829 Rule!6890) Int)

(assert (=> b!1811937 (= lt!703035 (getIndex!210 rules!3447 (rule!5651 (_1!11075 lt!703043))))))

(assert (=> b!1811937 (= lt!703052 (getIndex!210 rules!3447 (rule!5651 token!523)))))

(declare-fun b!1811938 () Bool)

(declare-fun res!814451 () Bool)

(assert (=> b!1811938 (=> res!814451 e!1157394)))

(assert (=> b!1811938 (= res!814451 (not (isPrefix!1785 lt!703009 lt!703009)))))

(declare-fun b!1811939 () Bool)

(declare-fun Unit!34346 () Unit!34339)

(assert (=> b!1811939 (= e!1157405 Unit!34346)))

(declare-fun lt!703026 () Unit!34339)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!166 (LexerInterface!3174 List!19829 Rule!6890 List!19828 List!19828 Rule!6890) Unit!34339)

(assert (=> b!1811939 (= lt!703026 (lemmaMaxPrefNoSmallerRuleMatches!166 thiss!24550 rules!3447 (rule!5651 (_1!11075 lt!703043)) lt!703034 lt!703039 (rule!5651 token!523)))))

(declare-fun res!814433 () Bool)

(assert (=> b!1811939 (= res!814433 (not (matchR!2346 (regex!3545 (rule!5651 token!523)) lt!703034)))))

(assert (=> b!1811939 (=> (not res!814433) (not e!1157401))))

(assert (=> b!1811939 e!1157401))

(declare-fun b!1811940 () Bool)

(assert (=> b!1811940 (= e!1157390 e!1157396)))

(declare-fun res!814438 () Bool)

(assert (=> b!1811940 (=> res!814438 e!1157396)))

(assert (=> b!1811940 (= res!814438 (not (= lt!703017 lt!703036)))))

(declare-fun lt!703004 () Unit!34339)

(assert (=> b!1811940 (= lt!703004 e!1157406)))

(declare-fun c!296054 () Bool)

(assert (=> b!1811940 (= c!296054 (< lt!703017 lt!703036))))

(declare-fun b!1811941 () Bool)

(assert (=> b!1811941 (= e!1157395 (not e!1157387))))

(declare-fun res!814447 () Bool)

(assert (=> b!1811941 (=> res!814447 e!1157387)))

(assert (=> b!1811941 (= res!814447 (not (matchR!2346 (regex!3545 rule!422) lt!703009)))))

(declare-fun ruleValid!1043 (LexerInterface!3174 Rule!6890) Bool)

(assert (=> b!1811941 (ruleValid!1043 thiss!24550 rule!422)))

(declare-fun lt!703042 () Unit!34339)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!566 (LexerInterface!3174 Rule!6890 List!19829) Unit!34339)

(assert (=> b!1811941 (= lt!703042 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!566 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1811942 () Bool)

(assert (=> b!1811942 (= e!1157381 true)))

(declare-fun lt!703040 () Bool)

(assert (=> b!1811942 (= lt!703040 (matchR!2346 (regex!3545 (rule!5651 token!523)) lt!703009))))

(declare-fun b!1811943 () Bool)

(declare-fun res!814449 () Bool)

(assert (=> b!1811943 (=> (not res!814449) (not e!1157395))))

(assert (=> b!1811943 (= res!814449 (= (rule!5651 token!523) rule!422))))

(declare-fun b!1811944 () Bool)

(declare-fun e!1157374 () Bool)

(declare-fun lt!703018 () Rule!6890)

(assert (=> b!1811944 (= e!1157374 (= (rule!5651 (_1!11075 lt!703043)) lt!703018))))

(assert (=> b!1811945 (= e!1157385 (and tp!511861 tp!511855))))

(declare-fun b!1811946 () Bool)

(assert (=> b!1811946 (= e!1157373 e!1157383)))

(declare-fun res!814435 () Bool)

(assert (=> b!1811946 (=> res!814435 e!1157383)))

(assert (=> b!1811946 (= res!814435 (not (isPrefix!1785 lt!703034 lt!703039)))))

(assert (=> b!1811946 (isPrefix!1785 lt!703034 (++!5375 lt!703034 (_2!11075 lt!703043)))))

(declare-fun lt!703031 () Unit!34339)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1294 (List!19828 List!19828) Unit!34339)

(assert (=> b!1811946 (= lt!703031 (lemmaConcatTwoListThenFirstIsPrefix!1294 lt!703034 (_2!11075 lt!703043)))))

(assert (=> b!1811946 (= lt!703034 (list!8045 lt!703028))))

(assert (=> b!1811946 (= lt!703028 (charsOf!2194 (_1!11075 lt!703043)))))

(declare-fun e!1157402 () Bool)

(assert (=> b!1811946 e!1157402))

(declare-fun res!814439 () Bool)

(assert (=> b!1811946 (=> (not res!814439) (not e!1157402))))

(declare-datatypes ((Option!4117 0))(
  ( (None!4116) (Some!4116 (v!25635 Rule!6890)) )
))
(declare-fun lt!703030 () Option!4117)

(declare-fun isDefined!3458 (Option!4117) Bool)

(assert (=> b!1811946 (= res!814439 (isDefined!3458 lt!703030))))

(declare-fun getRuleFromTag!593 (LexerInterface!3174 List!19829 String!22507) Option!4117)

(assert (=> b!1811946 (= lt!703030 (getRuleFromTag!593 thiss!24550 rules!3447 (tag!3955 (rule!5651 (_1!11075 lt!703043)))))))

(declare-fun lt!703022 () Unit!34339)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!593 (LexerInterface!3174 List!19829 List!19828 Token!6656) Unit!34339)

(assert (=> b!1811946 (= lt!703022 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!593 thiss!24550 rules!3447 lt!703039 (_1!11075 lt!703043)))))

(declare-fun get!6104 (Option!4116) tuple2!19346)

(assert (=> b!1811946 (= lt!703043 (get!6104 lt!703027))))

(declare-fun lt!703016 () Unit!34339)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!696 (LexerInterface!3174 List!19829 List!19828 List!19828) Unit!34339)

(assert (=> b!1811946 (= lt!703016 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!696 thiss!24550 rules!3447 lt!703009 suffix!1421))))

(assert (=> b!1811946 (= lt!703027 (maxPrefix!1728 thiss!24550 rules!3447 lt!703039))))

(assert (=> b!1811946 (isPrefix!1785 lt!703009 lt!703039)))

(declare-fun lt!703019 () Unit!34339)

(assert (=> b!1811946 (= lt!703019 (lemmaConcatTwoListThenFirstIsPrefix!1294 lt!703009 suffix!1421))))

(assert (=> b!1811946 (= lt!703039 (++!5375 lt!703009 suffix!1421))))

(declare-fun tp!511862 () Bool)

(declare-fun b!1811947 () Bool)

(declare-fun inv!21 (TokenValue!3635) Bool)

(assert (=> b!1811947 (= e!1157380 (and (inv!21 (value!110705 token!523)) e!1157393 tp!511862))))

(declare-fun b!1811948 () Bool)

(assert (=> b!1811948 (= e!1157402 e!1157374)))

(declare-fun res!814454 () Bool)

(assert (=> b!1811948 (=> (not res!814454) (not e!1157374))))

(assert (=> b!1811948 (= res!814454 (matchR!2346 (regex!3545 lt!703018) (list!8045 (charsOf!2194 (_1!11075 lt!703043)))))))

(declare-fun get!6105 (Option!4117) Rule!6890)

(assert (=> b!1811948 (= lt!703018 (get!6105 lt!703030))))

(declare-fun b!1811949 () Bool)

(assert (=> b!1811949 (= e!1157379 e!1157395)))

(declare-fun res!814436 () Bool)

(assert (=> b!1811949 (=> (not res!814436) (not e!1157395))))

(assert (=> b!1811949 (= res!814436 (= (_1!11075 lt!703010) token!523))))

(assert (=> b!1811949 (= lt!703010 (get!6104 lt!703011))))

(declare-fun b!1811950 () Bool)

(declare-fun res!814434 () Bool)

(assert (=> b!1811950 (=> res!814434 e!1157383)))

(assert (=> b!1811950 (= res!814434 (not (matchR!2346 (regex!3545 (rule!5651 (_1!11075 lt!703043))) lt!703034)))))

(declare-fun b!1811951 () Bool)

(declare-fun res!814430 () Bool)

(assert (=> b!1811951 (=> (not res!814430) (not e!1157376))))

(declare-fun rulesInvariant!2843 (LexerInterface!3174 List!19829) Bool)

(assert (=> b!1811951 (= res!814430 (rulesInvariant!2843 thiss!24550 rules!3447))))

(declare-fun b!1811952 () Bool)

(declare-fun e!1157392 () Bool)

(declare-fun tp!511858 () Bool)

(assert (=> b!1811952 (= e!1157384 (and e!1157392 tp!511858))))

(declare-fun b!1811953 () Bool)

(declare-fun res!814453 () Bool)

(assert (=> b!1811953 (=> res!814453 e!1157387)))

(assert (=> b!1811953 (= res!814453 (isEmpty!12502 suffix!1421))))

(declare-fun b!1811954 () Bool)

(assert (=> b!1811954 (= e!1157404 e!1157389)))

(declare-fun res!814429 () Bool)

(assert (=> b!1811954 (=> res!814429 e!1157389)))

(declare-fun lt!703051 () Option!4116)

(declare-fun lt!703008 () List!19828)

(assert (=> b!1811954 (= res!814429 (or (not (= lt!703008 (_2!11075 lt!703043))) (not (= lt!703051 (Some!4115 (tuple2!19347 (_1!11075 lt!703043) lt!703008))))))))

(assert (=> b!1811954 (= (_2!11075 lt!703043) lt!703008)))

(declare-fun lt!703038 () Unit!34339)

(assert (=> b!1811954 (= lt!703038 (lemmaSamePrefixThenSameSuffix!896 lt!703034 (_2!11075 lt!703043) lt!703034 lt!703008 lt!703039))))

(assert (=> b!1811954 (= lt!703008 (getSuffix!952 lt!703039 lt!703034))))

(declare-fun lt!703049 () TokenValue!3635)

(declare-fun lt!703033 () Int)

(assert (=> b!1811954 (= lt!703051 (Some!4115 (tuple2!19347 (Token!6657 lt!703049 (rule!5651 (_1!11075 lt!703043)) lt!703033 lt!703034) (_2!11075 lt!703043))))))

(declare-fun maxPrefixOneRule!1097 (LexerInterface!3174 Rule!6890 List!19828) Option!4116)

(assert (=> b!1811954 (= lt!703051 (maxPrefixOneRule!1097 thiss!24550 (rule!5651 (_1!11075 lt!703043)) lt!703039))))

(assert (=> b!1811954 (= lt!703033 (size!15705 lt!703034))))

(assert (=> b!1811954 (= lt!703049 (apply!5345 (transformation!3545 (rule!5651 (_1!11075 lt!703043))) (seqFromList!2514 lt!703034)))))

(declare-fun lt!703046 () Unit!34339)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!475 (LexerInterface!3174 List!19829 List!19828 List!19828 List!19828 Rule!6890) Unit!34339)

(assert (=> b!1811954 (= lt!703046 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!475 thiss!24550 rules!3447 lt!703034 lt!703039 (_2!11075 lt!703043) (rule!5651 (_1!11075 lt!703043))))))

(declare-fun tp!511851 () Bool)

(declare-fun b!1811955 () Bool)

(assert (=> b!1811955 (= e!1157392 (and tp!511851 (inv!25742 (tag!3955 (h!25160 rules!3447))) (inv!25747 (transformation!3545 (h!25160 rules!3447))) e!1157375))))

(assert (= (and start!179206 res!814440) b!1811923))

(assert (= (and b!1811923 res!814431) b!1811951))

(assert (= (and b!1811951 res!814430) b!1811930))

(assert (= (and b!1811930 res!814458) b!1811914))

(assert (= (and b!1811914 res!814455) b!1811949))

(assert (= (and b!1811949 res!814436) b!1811915))

(assert (= (and b!1811915 res!814445) b!1811943))

(assert (= (and b!1811943 res!814449) b!1811941))

(assert (= (and b!1811941 (not res!814447)) b!1811953))

(assert (= (and b!1811953 (not res!814453)) b!1811932))

(assert (= (and b!1811932 (not res!814443)) b!1811946))

(assert (= (and b!1811946 res!814439) b!1811948))

(assert (= (and b!1811948 res!814454) b!1811944))

(assert (= (and b!1811946 (not res!814435)) b!1811950))

(assert (= (and b!1811950 (not res!814434)) b!1811928))

(assert (= (and b!1811928 (not res!814456)) b!1811922))

(assert (= (and b!1811922 (not res!814448)) b!1811929))

(assert (= (and b!1811929 (not res!814446)) b!1811920))

(assert (= (and b!1811920 (not res!814450)) b!1811954))

(assert (= (and b!1811954 (not res!814429)) b!1811936))

(assert (= (and b!1811936 c!296055) b!1811913))

(assert (= (and b!1811936 (not c!296055)) b!1811927))

(assert (= (and b!1811936 (not res!814452)) b!1811940))

(assert (= (and b!1811940 c!296054) b!1811933))

(assert (= (and b!1811940 (not c!296054)) b!1811919))

(assert (= (and b!1811940 (not res!814438)) b!1811924))

(assert (= (and b!1811924 (not res!814457)) b!1811937))

(assert (= (and b!1811937 c!296053) b!1811939))

(assert (= (and b!1811937 (not c!296053)) b!1811921))

(assert (= (and b!1811939 res!814433) b!1811926))

(assert (= (and b!1811937 (not res!814444)) b!1811938))

(assert (= (and b!1811938 (not res!814451)) b!1811934))

(assert (= (and b!1811934 (not res!814437)) b!1811935))

(assert (= (and b!1811935 (not res!814442)) b!1811916))

(assert (= (and b!1811916 (not res!814441)) b!1811911))

(assert (= (and b!1811911 (not res!814432)) b!1811942))

(assert (= (and start!179206 ((_ is Cons!19758) suffix!1421)) b!1811931))

(assert (= b!1811917 b!1811918))

(assert (= start!179206 b!1811917))

(assert (= b!1811912 b!1811945))

(assert (= b!1811947 b!1811912))

(assert (= start!179206 b!1811947))

(assert (= b!1811955 b!1811925))

(assert (= b!1811952 b!1811955))

(assert (= (and start!179206 ((_ is Cons!19759) rules!3447)) b!1811952))

(declare-fun b_lambda!59727 () Bool)

(assert (=> (not b_lambda!59727) (not b!1811922)))

(declare-fun t!169107 () Bool)

(declare-fun tb!110671 () Bool)

(assert (=> (and b!1811925 (= (toChars!4935 (transformation!3545 (h!25160 rules!3447))) (toChars!4935 (transformation!3545 (rule!5651 (_1!11075 lt!703043))))) t!169107) tb!110671))

(declare-fun e!1157418 () Bool)

(declare-fun b!1811971 () Bool)

(declare-fun tp!511865 () Bool)

(declare-fun inv!25749 (Conc!6573) Bool)

(assert (=> b!1811971 (= e!1157418 (and (inv!25749 (c!296057 (dynLambda!9806 (toChars!4935 (transformation!3545 (rule!5651 (_1!11075 lt!703043)))) (dynLambda!9807 (toValue!5076 (transformation!3545 (rule!5651 (_1!11075 lt!703043)))) lt!703028)))) tp!511865))))

(declare-fun result!132890 () Bool)

(declare-fun inv!25750 (BalanceConc!13090) Bool)

(assert (=> tb!110671 (= result!132890 (and (inv!25750 (dynLambda!9806 (toChars!4935 (transformation!3545 (rule!5651 (_1!11075 lt!703043)))) (dynLambda!9807 (toValue!5076 (transformation!3545 (rule!5651 (_1!11075 lt!703043)))) lt!703028))) e!1157418))))

(assert (= tb!110671 b!1811971))

(declare-fun m!2240751 () Bool)

(assert (=> b!1811971 m!2240751))

(declare-fun m!2240753 () Bool)

(assert (=> tb!110671 m!2240753))

(assert (=> b!1811922 t!169107))

(declare-fun b_and!139843 () Bool)

(assert (= b_and!139833 (and (=> t!169107 result!132890) b_and!139843)))

(declare-fun t!169109 () Bool)

(declare-fun tb!110673 () Bool)

(assert (=> (and b!1811918 (= (toChars!4935 (transformation!3545 rule!422)) (toChars!4935 (transformation!3545 (rule!5651 (_1!11075 lt!703043))))) t!169109) tb!110673))

(declare-fun result!132894 () Bool)

(assert (= result!132894 result!132890))

(assert (=> b!1811922 t!169109))

(declare-fun b_and!139845 () Bool)

(assert (= b_and!139837 (and (=> t!169109 result!132894) b_and!139845)))

(declare-fun t!169111 () Bool)

(declare-fun tb!110675 () Bool)

(assert (=> (and b!1811945 (= (toChars!4935 (transformation!3545 (rule!5651 token!523))) (toChars!4935 (transformation!3545 (rule!5651 (_1!11075 lt!703043))))) t!169111) tb!110675))

(declare-fun result!132896 () Bool)

(assert (= result!132896 result!132890))

(assert (=> b!1811922 t!169111))

(declare-fun b_and!139847 () Bool)

(assert (= b_and!139841 (and (=> t!169111 result!132896) b_and!139847)))

(declare-fun b_lambda!59729 () Bool)

(assert (=> (not b_lambda!59729) (not b!1811922)))

(declare-fun t!169113 () Bool)

(declare-fun tb!110677 () Bool)

(assert (=> (and b!1811925 (= (toValue!5076 (transformation!3545 (h!25160 rules!3447))) (toValue!5076 (transformation!3545 (rule!5651 (_1!11075 lt!703043))))) t!169113) tb!110677))

(declare-fun result!132898 () Bool)

(assert (=> tb!110677 (= result!132898 (inv!21 (dynLambda!9807 (toValue!5076 (transformation!3545 (rule!5651 (_1!11075 lt!703043)))) lt!703028)))))

(declare-fun m!2240755 () Bool)

(assert (=> tb!110677 m!2240755))

(assert (=> b!1811922 t!169113))

(declare-fun b_and!139849 () Bool)

(assert (= b_and!139831 (and (=> t!169113 result!132898) b_and!139849)))

(declare-fun t!169115 () Bool)

(declare-fun tb!110679 () Bool)

(assert (=> (and b!1811918 (= (toValue!5076 (transformation!3545 rule!422)) (toValue!5076 (transformation!3545 (rule!5651 (_1!11075 lt!703043))))) t!169115) tb!110679))

(declare-fun result!132902 () Bool)

(assert (= result!132902 result!132898))

(assert (=> b!1811922 t!169115))

(declare-fun b_and!139851 () Bool)

(assert (= b_and!139835 (and (=> t!169115 result!132902) b_and!139851)))

(declare-fun t!169117 () Bool)

(declare-fun tb!110681 () Bool)

(assert (=> (and b!1811945 (= (toValue!5076 (transformation!3545 (rule!5651 token!523))) (toValue!5076 (transformation!3545 (rule!5651 (_1!11075 lt!703043))))) t!169117) tb!110681))

(declare-fun result!132904 () Bool)

(assert (= result!132904 result!132898))

(assert (=> b!1811922 t!169117))

(declare-fun b_and!139853 () Bool)

(assert (= b_and!139839 (and (=> t!169117 result!132904) b_and!139853)))

(declare-fun b_lambda!59731 () Bool)

(assert (=> (not b_lambda!59731) (not b!1811929)))

(declare-fun tb!110683 () Bool)

(declare-fun t!169119 () Bool)

(assert (=> (and b!1811925 (= (toChars!4935 (transformation!3545 (h!25160 rules!3447))) (toChars!4935 (transformation!3545 (rule!5651 (_1!11075 lt!703043))))) t!169119) tb!110683))

(declare-fun b!1811974 () Bool)

(declare-fun e!1157422 () Bool)

(declare-fun tp!511866 () Bool)

(assert (=> b!1811974 (= e!1157422 (and (inv!25749 (c!296057 (dynLambda!9806 (toChars!4935 (transformation!3545 (rule!5651 (_1!11075 lt!703043)))) (value!110705 (_1!11075 lt!703043))))) tp!511866))))

(declare-fun result!132906 () Bool)

(assert (=> tb!110683 (= result!132906 (and (inv!25750 (dynLambda!9806 (toChars!4935 (transformation!3545 (rule!5651 (_1!11075 lt!703043)))) (value!110705 (_1!11075 lt!703043)))) e!1157422))))

(assert (= tb!110683 b!1811974))

(declare-fun m!2240757 () Bool)

(assert (=> b!1811974 m!2240757))

(declare-fun m!2240759 () Bool)

(assert (=> tb!110683 m!2240759))

(assert (=> b!1811929 t!169119))

(declare-fun b_and!139855 () Bool)

(assert (= b_and!139843 (and (=> t!169119 result!132906) b_and!139855)))

(declare-fun tb!110685 () Bool)

(declare-fun t!169121 () Bool)

(assert (=> (and b!1811918 (= (toChars!4935 (transformation!3545 rule!422)) (toChars!4935 (transformation!3545 (rule!5651 (_1!11075 lt!703043))))) t!169121) tb!110685))

(declare-fun result!132908 () Bool)

(assert (= result!132908 result!132906))

(assert (=> b!1811929 t!169121))

(declare-fun b_and!139857 () Bool)

(assert (= b_and!139845 (and (=> t!169121 result!132908) b_and!139857)))

(declare-fun tb!110687 () Bool)

(declare-fun t!169123 () Bool)

(assert (=> (and b!1811945 (= (toChars!4935 (transformation!3545 (rule!5651 token!523))) (toChars!4935 (transformation!3545 (rule!5651 (_1!11075 lt!703043))))) t!169123) tb!110687))

(declare-fun result!132910 () Bool)

(assert (= result!132910 result!132906))

(assert (=> b!1811929 t!169123))

(declare-fun b_and!139859 () Bool)

(assert (= b_and!139847 (and (=> t!169123 result!132910) b_and!139859)))

(declare-fun m!2240761 () Bool)

(assert (=> b!1811933 m!2240761))

(declare-fun m!2240763 () Bool)

(assert (=> b!1811913 m!2240763))

(declare-fun m!2240765 () Bool)

(assert (=> b!1811913 m!2240765))

(declare-fun m!2240767 () Bool)

(assert (=> b!1811913 m!2240767))

(declare-fun m!2240769 () Bool)

(assert (=> b!1811913 m!2240769))

(declare-fun m!2240771 () Bool)

(assert (=> b!1811913 m!2240771))

(declare-fun m!2240773 () Bool)

(assert (=> b!1811913 m!2240773))

(declare-fun m!2240775 () Bool)

(assert (=> b!1811913 m!2240775))

(declare-fun m!2240777 () Bool)

(assert (=> b!1811913 m!2240777))

(declare-fun m!2240779 () Bool)

(assert (=> b!1811913 m!2240779))

(assert (=> b!1811913 m!2240779))

(declare-fun m!2240781 () Bool)

(assert (=> b!1811913 m!2240781))

(declare-fun m!2240783 () Bool)

(assert (=> b!1811913 m!2240783))

(declare-fun m!2240785 () Bool)

(assert (=> b!1811954 m!2240785))

(declare-fun m!2240787 () Bool)

(assert (=> b!1811954 m!2240787))

(declare-fun m!2240789 () Bool)

(assert (=> b!1811954 m!2240789))

(declare-fun m!2240791 () Bool)

(assert (=> b!1811954 m!2240791))

(declare-fun m!2240793 () Bool)

(assert (=> b!1811954 m!2240793))

(assert (=> b!1811954 m!2240787))

(declare-fun m!2240795 () Bool)

(assert (=> b!1811954 m!2240795))

(declare-fun m!2240797 () Bool)

(assert (=> b!1811954 m!2240797))

(declare-fun m!2240799 () Bool)

(assert (=> b!1811916 m!2240799))

(declare-fun m!2240801 () Bool)

(assert (=> b!1811917 m!2240801))

(declare-fun m!2240803 () Bool)

(assert (=> b!1811917 m!2240803))

(declare-fun m!2240805 () Bool)

(assert (=> b!1811936 m!2240805))

(declare-fun m!2240807 () Bool)

(assert (=> b!1811936 m!2240807))

(declare-fun m!2240809 () Bool)

(assert (=> b!1811936 m!2240809))

(declare-fun m!2240811 () Bool)

(assert (=> b!1811929 m!2240811))

(declare-fun m!2240813 () Bool)

(assert (=> b!1811935 m!2240813))

(declare-fun m!2240815 () Bool)

(assert (=> b!1811946 m!2240815))

(declare-fun m!2240817 () Bool)

(assert (=> b!1811946 m!2240817))

(declare-fun m!2240819 () Bool)

(assert (=> b!1811946 m!2240819))

(declare-fun m!2240821 () Bool)

(assert (=> b!1811946 m!2240821))

(declare-fun m!2240823 () Bool)

(assert (=> b!1811946 m!2240823))

(declare-fun m!2240825 () Bool)

(assert (=> b!1811946 m!2240825))

(declare-fun m!2240827 () Bool)

(assert (=> b!1811946 m!2240827))

(declare-fun m!2240829 () Bool)

(assert (=> b!1811946 m!2240829))

(declare-fun m!2240831 () Bool)

(assert (=> b!1811946 m!2240831))

(declare-fun m!2240833 () Bool)

(assert (=> b!1811946 m!2240833))

(declare-fun m!2240835 () Bool)

(assert (=> b!1811946 m!2240835))

(declare-fun m!2240837 () Bool)

(assert (=> b!1811946 m!2240837))

(assert (=> b!1811946 m!2240817))

(declare-fun m!2240839 () Bool)

(assert (=> b!1811946 m!2240839))

(declare-fun m!2240841 () Bool)

(assert (=> b!1811946 m!2240841))

(declare-fun m!2240843 () Bool)

(assert (=> b!1811946 m!2240843))

(declare-fun m!2240845 () Bool)

(assert (=> b!1811912 m!2240845))

(declare-fun m!2240847 () Bool)

(assert (=> b!1811912 m!2240847))

(declare-fun m!2240849 () Bool)

(assert (=> b!1811911 m!2240849))

(declare-fun m!2240851 () Bool)

(assert (=> b!1811911 m!2240851))

(declare-fun m!2240853 () Bool)

(assert (=> b!1811911 m!2240853))

(declare-fun m!2240855 () Bool)

(assert (=> b!1811911 m!2240855))

(declare-fun m!2240857 () Bool)

(assert (=> b!1811911 m!2240857))

(declare-fun m!2240859 () Bool)

(assert (=> b!1811949 m!2240859))

(declare-fun m!2240861 () Bool)

(assert (=> b!1811932 m!2240861))

(declare-fun m!2240863 () Bool)

(assert (=> b!1811932 m!2240863))

(declare-fun m!2240865 () Bool)

(assert (=> b!1811932 m!2240865))

(declare-fun m!2240867 () Bool)

(assert (=> b!1811932 m!2240867))

(declare-fun m!2240869 () Bool)

(assert (=> b!1811950 m!2240869))

(declare-fun m!2240871 () Bool)

(assert (=> b!1811955 m!2240871))

(declare-fun m!2240873 () Bool)

(assert (=> b!1811955 m!2240873))

(declare-fun m!2240875 () Bool)

(assert (=> b!1811937 m!2240875))

(declare-fun m!2240877 () Bool)

(assert (=> b!1811937 m!2240877))

(declare-fun m!2240879 () Bool)

(assert (=> b!1811924 m!2240879))

(declare-fun m!2240881 () Bool)

(assert (=> b!1811924 m!2240881))

(declare-fun m!2240883 () Bool)

(assert (=> b!1811922 m!2240883))

(assert (=> b!1811922 m!2240883))

(declare-fun m!2240885 () Bool)

(assert (=> b!1811922 m!2240885))

(assert (=> b!1811922 m!2240885))

(declare-fun m!2240887 () Bool)

(assert (=> b!1811922 m!2240887))

(declare-fun m!2240889 () Bool)

(assert (=> b!1811922 m!2240889))

(declare-fun m!2240891 () Bool)

(assert (=> b!1811942 m!2240891))

(declare-fun m!2240893 () Bool)

(assert (=> b!1811915 m!2240893))

(declare-fun m!2240895 () Bool)

(assert (=> b!1811923 m!2240895))

(declare-fun m!2240897 () Bool)

(assert (=> b!1811930 m!2240897))

(declare-fun m!2240899 () Bool)

(assert (=> b!1811953 m!2240899))

(declare-fun m!2240901 () Bool)

(assert (=> b!1811947 m!2240901))

(declare-fun m!2240903 () Bool)

(assert (=> b!1811951 m!2240903))

(declare-fun m!2240905 () Bool)

(assert (=> start!179206 m!2240905))

(declare-fun m!2240907 () Bool)

(assert (=> b!1811928 m!2240907))

(declare-fun m!2240909 () Bool)

(assert (=> b!1811928 m!2240909))

(declare-fun m!2240911 () Bool)

(assert (=> b!1811920 m!2240911))

(declare-fun m!2240913 () Bool)

(assert (=> b!1811920 m!2240913))

(declare-fun m!2240915 () Bool)

(assert (=> b!1811920 m!2240915))

(declare-fun m!2240917 () Bool)

(assert (=> b!1811920 m!2240917))

(assert (=> b!1811920 m!2240911))

(declare-fun m!2240919 () Bool)

(assert (=> b!1811920 m!2240919))

(declare-fun m!2240921 () Bool)

(assert (=> b!1811934 m!2240921))

(assert (=> b!1811948 m!2240829))

(assert (=> b!1811948 m!2240829))

(declare-fun m!2240923 () Bool)

(assert (=> b!1811948 m!2240923))

(assert (=> b!1811948 m!2240923))

(declare-fun m!2240925 () Bool)

(assert (=> b!1811948 m!2240925))

(declare-fun m!2240927 () Bool)

(assert (=> b!1811948 m!2240927))

(declare-fun m!2240929 () Bool)

(assert (=> b!1811939 m!2240929))

(declare-fun m!2240931 () Bool)

(assert (=> b!1811939 m!2240931))

(declare-fun m!2240933 () Bool)

(assert (=> b!1811941 m!2240933))

(declare-fun m!2240935 () Bool)

(assert (=> b!1811941 m!2240935))

(declare-fun m!2240937 () Bool)

(assert (=> b!1811941 m!2240937))

(declare-fun m!2240939 () Bool)

(assert (=> b!1811938 m!2240939))

(declare-fun m!2240941 () Bool)

(assert (=> b!1811914 m!2240941))

(declare-fun m!2240943 () Bool)

(assert (=> b!1811914 m!2240943))

(declare-fun m!2240945 () Bool)

(assert (=> b!1811914 m!2240945))

(declare-fun m!2240947 () Bool)

(assert (=> b!1811914 m!2240947))

(check-sat (not b_next!50575) (not tb!110671) (not b!1811950) b_and!139849 (not b!1811936) (not b!1811912) (not b!1811941) (not b!1811914) (not b!1811911) b_and!139859 (not b!1811942) (not b!1811924) (not b_lambda!59727) (not b!1811935) (not b!1811948) (not b_next!50579) (not b!1811951) (not b_next!50581) (not b!1811916) (not b!1811955) (not b_next!50585) (not b!1811937) b_and!139851 (not b_lambda!59731) (not b!1811923) (not b!1811974) (not tb!110677) (not b_next!50583) (not b!1811949) (not b!1811930) (not b!1811932) (not b_next!50577) (not start!179206) (not b!1811947) (not b!1811953) (not b!1811934) (not b!1811917) (not b!1811931) tp_is_empty!7989 (not b!1811928) b_and!139853 (not b!1811913) (not b!1811939) b_and!139855 (not b!1811946) (not b!1811933) (not b!1811922) (not b!1811971) (not b_lambda!59729) (not tb!110683) (not b!1811920) (not b!1811954) (not b!1811952) (not b!1811915) (not b!1811938) b_and!139857)
(check-sat (not b_next!50575) (not b_next!50579) (not b_next!50581) (not b_next!50585) b_and!139851 (not b_next!50583) (not b_next!50577) b_and!139849 b_and!139859 b_and!139857 b_and!139853 b_and!139855)
