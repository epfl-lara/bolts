; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20498 () Bool)

(assert start!20498)

(declare-fun b!189360 () Bool)

(declare-fun b_free!7497 () Bool)

(declare-fun b_next!7497 () Bool)

(assert (=> b!189360 (= b_free!7497 (not b_next!7497))))

(declare-fun tp!88307 () Bool)

(declare-fun b_and!13101 () Bool)

(assert (=> b!189360 (= tp!88307 b_and!13101)))

(declare-fun b_free!7499 () Bool)

(declare-fun b_next!7499 () Bool)

(assert (=> b!189360 (= b_free!7499 (not b_next!7499))))

(declare-fun tp!88313 () Bool)

(declare-fun b_and!13103 () Bool)

(assert (=> b!189360 (= tp!88313 b_and!13103)))

(declare-fun b!189384 () Bool)

(declare-fun b_free!7501 () Bool)

(declare-fun b_next!7501 () Bool)

(assert (=> b!189384 (= b_free!7501 (not b_next!7501))))

(declare-fun tp!88310 () Bool)

(declare-fun b_and!13105 () Bool)

(assert (=> b!189384 (= tp!88310 b_and!13105)))

(declare-fun b_free!7503 () Bool)

(declare-fun b_next!7503 () Bool)

(assert (=> b!189384 (= b_free!7503 (not b_next!7503))))

(declare-fun tp!88302 () Bool)

(declare-fun b_and!13107 () Bool)

(assert (=> b!189384 (= tp!88302 b_and!13107)))

(declare-fun b!189378 () Bool)

(declare-fun b_free!7505 () Bool)

(declare-fun b_next!7505 () Bool)

(assert (=> b!189378 (= b_free!7505 (not b_next!7505))))

(declare-fun tp!88305 () Bool)

(declare-fun b_and!13109 () Bool)

(assert (=> b!189378 (= tp!88305 b_and!13109)))

(declare-fun b_free!7507 () Bool)

(declare-fun b_next!7507 () Bool)

(assert (=> b!189378 (= b_free!7507 (not b_next!7507))))

(declare-fun tp!88303 () Bool)

(declare-fun b_and!13111 () Bool)

(assert (=> b!189378 (= tp!88303 b_and!13111)))

(declare-fun bs!18754 () Bool)

(declare-fun b!189369 () Bool)

(declare-fun b!189363 () Bool)

(assert (= bs!18754 (and b!189369 b!189363)))

(declare-fun lambda!5764 () Int)

(declare-fun lambda!5763 () Int)

(assert (=> bs!18754 (not (= lambda!5764 lambda!5763))))

(declare-fun b!189404 () Bool)

(declare-fun e!116179 () Bool)

(assert (=> b!189404 (= e!116179 true)))

(declare-fun b!189403 () Bool)

(declare-fun e!116178 () Bool)

(assert (=> b!189403 (= e!116178 e!116179)))

(declare-fun b!189402 () Bool)

(declare-fun e!116177 () Bool)

(assert (=> b!189402 (= e!116177 e!116178)))

(assert (=> b!189369 e!116177))

(assert (= b!189403 b!189404))

(assert (= b!189402 b!189403))

(declare-datatypes ((List!3179 0))(
  ( (Nil!3169) (Cons!3169 (h!8566 (_ BitVec 16)) (t!28853 List!3179)) )
))
(declare-datatypes ((TokenValue!603 0))(
  ( (FloatLiteralValue!1206 (text!4666 List!3179)) (TokenValueExt!602 (__x!2693 Int)) (Broken!3015 (value!20848 List!3179)) (Object!612) (End!603) (Def!603) (Underscore!603) (Match!603) (Else!603) (Error!603) (Case!603) (If!603) (Extends!603) (Abstract!603) (Class!603) (Val!603) (DelimiterValue!1206 (del!663 List!3179)) (KeywordValue!609 (value!20849 List!3179)) (CommentValue!1206 (value!20850 List!3179)) (WhitespaceValue!1206 (value!20851 List!3179)) (IndentationValue!603 (value!20852 List!3179)) (String!4094) (Int32!603) (Broken!3016 (value!20853 List!3179)) (Boolean!604) (Unit!2975) (OperatorValue!606 (op!663 List!3179)) (IdentifierValue!1206 (value!20854 List!3179)) (IdentifierValue!1207 (value!20855 List!3179)) (WhitespaceValue!1207 (value!20856 List!3179)) (True!1206) (False!1206) (Broken!3017 (value!20857 List!3179)) (Broken!3018 (value!20858 List!3179)) (True!1207) (RightBrace!603) (RightBracket!603) (Colon!603) (Null!603) (Comma!603) (LeftBracket!603) (False!1207) (LeftBrace!603) (ImaginaryLiteralValue!603 (text!4667 List!3179)) (StringLiteralValue!1809 (value!20859 List!3179)) (EOFValue!603 (value!20860 List!3179)) (IdentValue!603 (value!20861 List!3179)) (DelimiterValue!1207 (value!20862 List!3179)) (DedentValue!603 (value!20863 List!3179)) (NewLineValue!603 (value!20864 List!3179)) (IntegerValue!1809 (value!20865 (_ BitVec 32)) (text!4668 List!3179)) (IntegerValue!1810 (value!20866 Int) (text!4669 List!3179)) (Times!603) (Or!603) (Equal!603) (Minus!603) (Broken!3019 (value!20867 List!3179)) (And!603) (Div!603) (LessEqual!603) (Mod!603) (Concat!1408) (Not!603) (Plus!603) (SpaceValue!603 (value!20868 List!3179)) (IntegerValue!1811 (value!20869 Int) (text!4670 List!3179)) (StringLiteralValue!1810 (text!4671 List!3179)) (FloatLiteralValue!1207 (text!4672 List!3179)) (BytesLiteralValue!603 (value!20870 List!3179)) (CommentValue!1207 (value!20871 List!3179)) (StringLiteralValue!1811 (value!20872 List!3179)) (ErrorTokenValue!603 (msg!664 List!3179)) )
))
(declare-datatypes ((C!2532 0))(
  ( (C!2533 (val!1152 Int)) )
))
(declare-datatypes ((List!3180 0))(
  ( (Nil!3170) (Cons!3170 (h!8567 C!2532) (t!28854 List!3180)) )
))
(declare-datatypes ((IArray!1969 0))(
  ( (IArray!1970 (innerList!1042 List!3180)) )
))
(declare-datatypes ((Conc!984 0))(
  ( (Node!984 (left!2493 Conc!984) (right!2823 Conc!984) (csize!2198 Int) (cheight!1195 Int)) (Leaf!1614 (xs!3579 IArray!1969) (csize!2199 Int)) (Empty!984) )
))
(declare-datatypes ((BalanceConc!1976 0))(
  ( (BalanceConc!1977 (c!36341 Conc!984)) )
))
(declare-datatypes ((TokenValueInjection!978 0))(
  ( (TokenValueInjection!979 (toValue!1252 Int) (toChars!1111 Int)) )
))
(declare-datatypes ((String!4095 0))(
  ( (String!4096 (value!20873 String)) )
))
(declare-datatypes ((Regex!805 0))(
  ( (ElementMatch!805 (c!36342 C!2532)) (Concat!1409 (regOne!2122 Regex!805) (regTwo!2122 Regex!805)) (EmptyExpr!805) (Star!805 (reg!1134 Regex!805)) (EmptyLang!805) (Union!805 (regOne!2123 Regex!805) (regTwo!2123 Regex!805)) )
))
(declare-datatypes ((Rule!962 0))(
  ( (Rule!963 (regex!581 Regex!805) (tag!759 String!4095) (isSeparator!581 Bool) (transformation!581 TokenValueInjection!978)) )
))
(declare-datatypes ((List!3181 0))(
  ( (Nil!3171) (Cons!3171 (h!8568 Rule!962) (t!28855 List!3181)) )
))
(declare-fun rules!1920 () List!3181)

(get-info :version)

(assert (= (and b!189369 ((_ is Cons!3171) rules!1920)) b!189402))

(declare-fun order!1963 () Int)

(declare-fun order!1961 () Int)

(declare-fun dynLambda!1333 (Int Int) Int)

(declare-fun dynLambda!1334 (Int Int) Int)

(assert (=> b!189404 (< (dynLambda!1333 order!1961 (toValue!1252 (transformation!581 (h!8568 rules!1920)))) (dynLambda!1334 order!1963 lambda!5764))))

(declare-fun order!1965 () Int)

(declare-fun dynLambda!1335 (Int Int) Int)

(assert (=> b!189404 (< (dynLambda!1335 order!1965 (toChars!1111 (transformation!581 (h!8568 rules!1920)))) (dynLambda!1334 order!1963 lambda!5764))))

(assert (=> b!189369 true))

(declare-fun b!189359 () Bool)

(declare-fun res!86558 () Bool)

(declare-fun e!116167 () Bool)

(assert (=> b!189359 (=> (not res!86558) (not e!116167))))

(declare-fun lt!64236 () List!3180)

(declare-fun lt!64239 () List!3180)

(declare-fun list!1167 (BalanceConc!1976) List!3180)

(declare-fun seqFromList!539 (List!3180) BalanceConc!1976)

(assert (=> b!189359 (= res!86558 (= (list!1167 (seqFromList!539 lt!64236)) lt!64239))))

(declare-fun e!116149 () Bool)

(assert (=> b!189360 (= e!116149 (and tp!88307 tp!88313))))

(declare-fun b!189361 () Bool)

(declare-datatypes ((Token!906 0))(
  ( (Token!907 (value!20874 TokenValue!603) (rule!1096 Rule!962) (size!2541 Int) (originalCharacters!624 List!3180)) )
))
(declare-fun separatorToken!170 () Token!906)

(declare-fun e!116153 () Bool)

(declare-fun e!116164 () Bool)

(declare-fun tp!88309 () Bool)

(declare-fun inv!21 (TokenValue!603) Bool)

(assert (=> b!189361 (= e!116153 (and (inv!21 (value!20874 separatorToken!170)) e!116164 tp!88309))))

(declare-fun tp!88308 () Bool)

(declare-fun e!116152 () Bool)

(declare-datatypes ((List!3182 0))(
  ( (Nil!3172) (Cons!3172 (h!8569 Token!906) (t!28856 List!3182)) )
))
(declare-fun tokens!465 () List!3182)

(declare-fun b!189362 () Bool)

(declare-fun e!116162 () Bool)

(assert (=> b!189362 (= e!116162 (and (inv!21 (value!20874 (h!8569 tokens!465))) e!116152 tp!88308))))

(declare-fun res!86566 () Bool)

(declare-fun e!116170 () Bool)

(assert (=> b!189363 (=> (not res!86566) (not e!116170))))

(declare-fun forall!663 (List!3182 Int) Bool)

(assert (=> b!189363 (= res!86566 (forall!663 tokens!465 lambda!5763))))

(declare-fun b!189364 () Bool)

(declare-fun e!116163 () Bool)

(declare-fun e!116148 () Bool)

(assert (=> b!189364 (= e!116163 e!116148)))

(declare-fun res!86562 () Bool)

(assert (=> b!189364 (=> res!86562 e!116148)))

(declare-fun lt!64232 () List!3180)

(declare-fun lt!64238 () List!3180)

(declare-fun lt!64246 () List!3180)

(assert (=> b!189364 (= res!86562 (or (not (= lt!64246 lt!64232)) (not (= lt!64232 lt!64238)) (not (= lt!64246 lt!64238))))))

(declare-datatypes ((LexerInterface!467 0))(
  ( (LexerInterfaceExt!464 (__x!2694 Int)) (Lexer!465) )
))
(declare-fun thiss!17480 () LexerInterface!467)

(declare-fun printList!151 (LexerInterface!467 List!3182) List!3180)

(assert (=> b!189364 (= lt!64232 (printList!151 thiss!17480 (Cons!3172 (h!8569 tokens!465) Nil!3172)))))

(declare-fun lt!64237 () BalanceConc!1976)

(assert (=> b!189364 (= lt!64246 (list!1167 lt!64237))))

(declare-datatypes ((IArray!1971 0))(
  ( (IArray!1972 (innerList!1043 List!3182)) )
))
(declare-datatypes ((Conc!985 0))(
  ( (Node!985 (left!2494 Conc!985) (right!2824 Conc!985) (csize!2200 Int) (cheight!1196 Int)) (Leaf!1615 (xs!3580 IArray!1971) (csize!2201 Int)) (Empty!985) )
))
(declare-datatypes ((BalanceConc!1978 0))(
  ( (BalanceConc!1979 (c!36343 Conc!985)) )
))
(declare-fun lt!64244 () BalanceConc!1978)

(declare-fun printTailRec!161 (LexerInterface!467 BalanceConc!1978 Int BalanceConc!1976) BalanceConc!1976)

(assert (=> b!189364 (= lt!64237 (printTailRec!161 thiss!17480 lt!64244 0 (BalanceConc!1977 Empty!984)))))

(declare-fun print!198 (LexerInterface!467 BalanceConc!1978) BalanceConc!1976)

(assert (=> b!189364 (= lt!64237 (print!198 thiss!17480 lt!64244))))

(declare-fun singletonSeq!133 (Token!906) BalanceConc!1978)

(assert (=> b!189364 (= lt!64244 (singletonSeq!133 (h!8569 tokens!465)))))

(declare-fun e!116150 () Bool)

(declare-fun b!189365 () Bool)

(declare-fun tp!88304 () Bool)

(declare-fun inv!3995 (String!4095) Bool)

(declare-fun inv!3998 (TokenValueInjection!978) Bool)

(assert (=> b!189365 (= e!116150 (and tp!88304 (inv!3995 (tag!759 (h!8568 rules!1920))) (inv!3998 (transformation!581 (h!8568 rules!1920))) e!116149))))

(declare-fun b!189366 () Bool)

(declare-fun res!86560 () Bool)

(declare-fun e!116169 () Bool)

(assert (=> b!189366 (=> (not res!86560) (not e!116169))))

(declare-fun isEmpty!1551 (List!3181) Bool)

(assert (=> b!189366 (= res!86560 (not (isEmpty!1551 rules!1920)))))

(declare-fun b!189367 () Bool)

(declare-fun e!116166 () Bool)

(assert (=> b!189367 (= e!116167 (not e!116166))))

(declare-fun res!86554 () Bool)

(assert (=> b!189367 (=> res!86554 e!116166)))

(declare-fun lt!64223 () List!3180)

(declare-fun printWithSeparatorTokenWhenNeededRec!150 (LexerInterface!467 List!3181 BalanceConc!1978 Token!906 Int) BalanceConc!1976)

(declare-fun seqFromList!540 (List!3182) BalanceConc!1978)

(assert (=> b!189367 (= res!86554 (not (= lt!64223 (list!1167 (printWithSeparatorTokenWhenNeededRec!150 thiss!17480 rules!1920 (seqFromList!540 (t!28856 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!64245 () List!3180)

(declare-fun lt!64241 () List!3180)

(assert (=> b!189367 (= lt!64245 lt!64241)))

(declare-fun lt!64234 () List!3180)

(declare-fun ++!756 (List!3180 List!3180) List!3180)

(assert (=> b!189367 (= lt!64241 (++!756 lt!64238 lt!64234))))

(declare-fun lt!64219 () List!3180)

(assert (=> b!189367 (= lt!64245 (++!756 (++!756 lt!64238 lt!64219) lt!64223))))

(declare-datatypes ((Unit!2976 0))(
  ( (Unit!2977) )
))
(declare-fun lt!64230 () Unit!2976)

(declare-fun lemmaConcatAssociativity!270 (List!3180 List!3180 List!3180) Unit!2976)

(assert (=> b!189367 (= lt!64230 (lemmaConcatAssociativity!270 lt!64238 lt!64219 lt!64223))))

(declare-fun charsOf!236 (Token!906) BalanceConc!1976)

(assert (=> b!189367 (= lt!64238 (list!1167 (charsOf!236 (h!8569 tokens!465))))))

(assert (=> b!189367 (= lt!64234 (++!756 lt!64219 lt!64223))))

(declare-fun printWithSeparatorTokenWhenNeededList!160 (LexerInterface!467 List!3181 List!3182 Token!906) List!3180)

(assert (=> b!189367 (= lt!64223 (printWithSeparatorTokenWhenNeededList!160 thiss!17480 rules!1920 (t!28856 tokens!465) separatorToken!170))))

(assert (=> b!189367 (= lt!64219 (list!1167 (charsOf!236 separatorToken!170)))))

(declare-fun b!189368 () Bool)

(declare-fun res!86552 () Bool)

(assert (=> b!189368 (=> (not res!86552) (not e!116169))))

(declare-fun rulesInvariant!433 (LexerInterface!467 List!3181) Bool)

(assert (=> b!189368 (= res!86552 (rulesInvariant!433 thiss!17480 rules!1920))))

(declare-fun e!116157 () Bool)

(assert (=> b!189369 (= e!116148 e!116157)))

(declare-fun res!86550 () Bool)

(assert (=> b!189369 (=> res!86550 e!116157)))

(declare-datatypes ((tuple2!3230 0))(
  ( (tuple2!3231 (_1!1831 Token!906) (_2!1831 BalanceConc!1976)) )
))
(declare-datatypes ((Option!440 0))(
  ( (None!439) (Some!439 (v!13950 tuple2!3230)) )
))
(declare-fun isDefined!291 (Option!440) Bool)

(declare-fun maxPrefixZipperSequence!160 (LexerInterface!467 List!3181 BalanceConc!1976) Option!440)

(assert (=> b!189369 (= res!86550 (not (isDefined!291 (maxPrefixZipperSequence!160 thiss!17480 rules!1920 (seqFromList!539 (originalCharacters!624 (h!8569 tokens!465)))))))))

(declare-fun lt!64222 () Unit!2976)

(declare-fun forallContained!148 (List!3182 Int Token!906) Unit!2976)

(assert (=> b!189369 (= lt!64222 (forallContained!148 tokens!465 lambda!5764 (h!8569 tokens!465)))))

(assert (=> b!189369 (= lt!64238 (originalCharacters!624 (h!8569 tokens!465)))))

(declare-fun b!189370 () Bool)

(declare-fun res!86563 () Bool)

(assert (=> b!189370 (=> (not res!86563) (not e!116170))))

(declare-fun rulesProduceIndividualToken!216 (LexerInterface!467 List!3181 Token!906) Bool)

(assert (=> b!189370 (= res!86563 (rulesProduceIndividualToken!216 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!189371 () Bool)

(declare-fun e!116145 () Bool)

(assert (=> b!189371 (= e!116145 (not (= lt!64236 (++!756 lt!64238 lt!64223))))))

(declare-fun b!189372 () Bool)

(declare-fun e!116165 () Unit!2976)

(declare-fun Unit!2978 () Unit!2976)

(assert (=> b!189372 (= e!116165 Unit!2978)))

(assert (=> b!189372 false))

(declare-fun b!189373 () Bool)

(declare-fun e!116155 () Bool)

(declare-fun e!116161 () Bool)

(assert (=> b!189373 (= e!116155 e!116161)))

(declare-fun res!86564 () Bool)

(assert (=> b!189373 (=> (not res!86564) (not e!116161))))

(declare-datatypes ((tuple2!3232 0))(
  ( (tuple2!3233 (_1!1832 Token!906) (_2!1832 List!3180)) )
))
(declare-datatypes ((Option!441 0))(
  ( (None!440) (Some!440 (v!13951 tuple2!3232)) )
))
(declare-fun lt!64226 () Option!441)

(declare-fun isDefined!292 (Option!441) Bool)

(assert (=> b!189373 (= res!86564 (isDefined!292 lt!64226))))

(declare-fun maxPrefix!197 (LexerInterface!467 List!3181 List!3180) Option!441)

(assert (=> b!189373 (= lt!64226 (maxPrefix!197 thiss!17480 rules!1920 lt!64236))))

(declare-fun b!189374 () Bool)

(declare-fun res!86549 () Bool)

(assert (=> b!189374 (=> (not res!86549) (not e!116170))))

(assert (=> b!189374 (= res!86549 (isSeparator!581 (rule!1096 separatorToken!170)))))

(declare-fun e!116144 () Bool)

(declare-fun tp!88312 () Bool)

(declare-fun b!189375 () Bool)

(assert (=> b!189375 (= e!116152 (and tp!88312 (inv!3995 (tag!759 (rule!1096 (h!8569 tokens!465)))) (inv!3998 (transformation!581 (rule!1096 (h!8569 tokens!465)))) e!116144))))

(declare-fun e!116160 () Bool)

(declare-fun b!189376 () Bool)

(declare-fun tp!88301 () Bool)

(assert (=> b!189376 (= e!116164 (and tp!88301 (inv!3995 (tag!759 (rule!1096 separatorToken!170))) (inv!3998 (transformation!581 (rule!1096 separatorToken!170))) e!116160))))

(declare-fun b!189377 () Bool)

(declare-fun Unit!2979 () Unit!2976)

(assert (=> b!189377 (= e!116165 Unit!2979)))

(assert (=> b!189378 (= e!116160 (and tp!88305 tp!88303))))

(declare-fun b!189379 () Bool)

(declare-fun e!116159 () Bool)

(assert (=> b!189379 (= e!116157 e!116159)))

(declare-fun res!86569 () Bool)

(assert (=> b!189379 (=> res!86569 e!116159)))

(declare-fun lt!64220 () Bool)

(assert (=> b!189379 (= res!86569 (not lt!64220))))

(declare-fun e!116147 () Bool)

(assert (=> b!189379 e!116147))

(declare-fun res!86556 () Bool)

(assert (=> b!189379 (=> (not res!86556) (not e!116147))))

(declare-fun lt!64224 () tuple2!3232)

(assert (=> b!189379 (= res!86556 (= (_1!1832 lt!64224) (h!8569 tokens!465)))))

(declare-fun lt!64228 () Option!441)

(declare-fun get!912 (Option!441) tuple2!3232)

(assert (=> b!189379 (= lt!64224 (get!912 lt!64228))))

(assert (=> b!189379 (isDefined!292 lt!64228)))

(assert (=> b!189379 (= lt!64228 (maxPrefix!197 thiss!17480 rules!1920 lt!64238))))

(declare-fun tp!88311 () Bool)

(declare-fun b!189380 () Bool)

(declare-fun e!116168 () Bool)

(declare-fun inv!3999 (Token!906) Bool)

(assert (=> b!189380 (= e!116168 (and (inv!3999 (h!8569 tokens!465)) e!116162 tp!88311))))

(declare-fun b!189381 () Bool)

(assert (=> b!189381 (= e!116169 e!116170)))

(declare-fun res!86565 () Bool)

(assert (=> b!189381 (=> (not res!86565) (not e!116170))))

(declare-fun lt!64233 () BalanceConc!1978)

(declare-fun rulesProduceEachTokenIndividually!259 (LexerInterface!467 List!3181 BalanceConc!1978) Bool)

(assert (=> b!189381 (= res!86565 (rulesProduceEachTokenIndividually!259 thiss!17480 rules!1920 lt!64233))))

(assert (=> b!189381 (= lt!64233 (seqFromList!540 tokens!465))))

(declare-fun b!189382 () Bool)

(assert (=> b!189382 (= e!116166 e!116163)))

(declare-fun res!86568 () Bool)

(assert (=> b!189382 (=> res!86568 e!116163)))

(assert (=> b!189382 (= res!86568 e!116145)))

(declare-fun res!86555 () Bool)

(assert (=> b!189382 (=> (not res!86555) (not e!116145))))

(assert (=> b!189382 (= res!86555 (not lt!64220))))

(assert (=> b!189382 (= lt!64220 (= lt!64236 lt!64241))))

(declare-fun res!86557 () Bool)

(assert (=> start!20498 (=> (not res!86557) (not e!116169))))

(assert (=> start!20498 (= res!86557 ((_ is Lexer!465) thiss!17480))))

(assert (=> start!20498 e!116169))

(assert (=> start!20498 true))

(declare-fun e!116158 () Bool)

(assert (=> start!20498 e!116158))

(assert (=> start!20498 (and (inv!3999 separatorToken!170) e!116153)))

(assert (=> start!20498 e!116168))

(declare-fun b!189383 () Bool)

(declare-fun res!86547 () Bool)

(assert (=> b!189383 (=> res!86547 e!116148)))

(declare-fun isEmpty!1552 (BalanceConc!1978) Bool)

(declare-datatypes ((tuple2!3234 0))(
  ( (tuple2!3235 (_1!1833 BalanceConc!1978) (_2!1833 BalanceConc!1976)) )
))
(declare-fun lex!267 (LexerInterface!467 List!3181 BalanceConc!1976) tuple2!3234)

(assert (=> b!189383 (= res!86547 (isEmpty!1552 (_1!1833 (lex!267 thiss!17480 rules!1920 (seqFromList!539 lt!64238)))))))

(assert (=> b!189384 (= e!116144 (and tp!88310 tp!88302))))

(declare-fun b!189385 () Bool)

(declare-fun res!86548 () Bool)

(assert (=> b!189385 (=> res!86548 e!116148)))

(assert (=> b!189385 (= res!86548 (not (rulesProduceIndividualToken!216 thiss!17480 rules!1920 (h!8569 tokens!465))))))

(declare-fun b!189386 () Bool)

(declare-fun tp!88306 () Bool)

(assert (=> b!189386 (= e!116158 (and e!116150 tp!88306))))

(declare-fun b!189387 () Bool)

(declare-fun head!670 (List!3182) Token!906)

(assert (=> b!189387 (= e!116161 (= (_1!1832 (get!912 lt!64226)) (head!670 tokens!465)))))

(declare-fun b!189388 () Bool)

(assert (=> b!189388 (= e!116159 true)))

(declare-fun lt!64225 () BalanceConc!1978)

(assert (=> b!189388 (= lt!64225 (singletonSeq!133 separatorToken!170))))

(declare-fun lt!64242 () Token!906)

(assert (=> b!189388 (rulesProduceIndividualToken!216 thiss!17480 rules!1920 lt!64242)))

(declare-fun lt!64221 () Unit!2976)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!34 (LexerInterface!467 List!3181 List!3182 Token!906) Unit!2976)

(assert (=> b!189388 (= lt!64221 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!34 thiss!17480 rules!1920 tokens!465 lt!64242))))

(assert (=> b!189388 (= lt!64242 (head!670 (t!28856 tokens!465)))))

(declare-fun lt!64243 () Unit!2976)

(assert (=> b!189388 (= lt!64243 e!116165)))

(declare-fun c!36340 () Bool)

(declare-fun isEmpty!1553 (List!3182) Bool)

(assert (=> b!189388 (= c!36340 (isEmpty!1553 (t!28856 tokens!465)))))

(declare-fun lt!64240 () Option!441)

(assert (=> b!189388 (= lt!64240 (maxPrefix!197 thiss!17480 rules!1920 lt!64234))))

(declare-fun lt!64235 () tuple2!3232)

(assert (=> b!189388 (= lt!64234 (_2!1832 lt!64235))))

(declare-fun lt!64231 () Unit!2976)

(declare-fun lemmaSamePrefixThenSameSuffix!102 (List!3180 List!3180 List!3180 List!3180 List!3180) Unit!2976)

(assert (=> b!189388 (= lt!64231 (lemmaSamePrefixThenSameSuffix!102 lt!64238 lt!64234 lt!64238 (_2!1832 lt!64235) lt!64236))))

(assert (=> b!189388 (= lt!64235 (get!912 (maxPrefix!197 thiss!17480 rules!1920 lt!64236)))))

(declare-fun isPrefix!277 (List!3180 List!3180) Bool)

(assert (=> b!189388 (isPrefix!277 lt!64238 lt!64241)))

(declare-fun lt!64229 () Unit!2976)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!172 (List!3180 List!3180) Unit!2976)

(assert (=> b!189388 (= lt!64229 (lemmaConcatTwoListThenFirstIsPrefix!172 lt!64238 lt!64234))))

(assert (=> b!189388 e!116155))

(declare-fun res!86567 () Bool)

(assert (=> b!189388 (=> res!86567 e!116155)))

(assert (=> b!189388 (= res!86567 (isEmpty!1553 tokens!465))))

(declare-fun lt!64227 () Unit!2976)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!42 (LexerInterface!467 List!3181 List!3182 Token!906) Unit!2976)

(assert (=> b!189388 (= lt!64227 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!42 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!189389 () Bool)

(declare-fun res!86559 () Bool)

(assert (=> b!189389 (=> (not res!86559) (not e!116147))))

(declare-fun isEmpty!1554 (List!3180) Bool)

(assert (=> b!189389 (= res!86559 (isEmpty!1554 (_2!1832 lt!64224)))))

(declare-fun b!189390 () Bool)

(assert (=> b!189390 (= e!116170 e!116167)))

(declare-fun res!86551 () Bool)

(assert (=> b!189390 (=> (not res!86551) (not e!116167))))

(assert (=> b!189390 (= res!86551 (= lt!64236 lt!64239))))

(assert (=> b!189390 (= lt!64239 (list!1167 (printWithSeparatorTokenWhenNeededRec!150 thiss!17480 rules!1920 lt!64233 separatorToken!170 0)))))

(assert (=> b!189390 (= lt!64236 (printWithSeparatorTokenWhenNeededList!160 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!189391 () Bool)

(declare-fun res!86561 () Bool)

(assert (=> b!189391 (=> (not res!86561) (not e!116170))))

(assert (=> b!189391 (= res!86561 ((_ is Cons!3172) tokens!465))))

(declare-fun b!189392 () Bool)

(declare-fun matchR!143 (Regex!805 List!3180) Bool)

(assert (=> b!189392 (= e!116147 (matchR!143 (regex!581 (rule!1096 (h!8569 tokens!465))) lt!64238))))

(declare-fun b!189393 () Bool)

(declare-fun res!86553 () Bool)

(assert (=> b!189393 (=> (not res!86553) (not e!116170))))

(declare-fun sepAndNonSepRulesDisjointChars!170 (List!3181 List!3181) Bool)

(assert (=> b!189393 (= res!86553 (sepAndNonSepRulesDisjointChars!170 rules!1920 rules!1920))))

(assert (= (and start!20498 res!86557) b!189366))

(assert (= (and b!189366 res!86560) b!189368))

(assert (= (and b!189368 res!86552) b!189381))

(assert (= (and b!189381 res!86565) b!189370))

(assert (= (and b!189370 res!86563) b!189374))

(assert (= (and b!189374 res!86549) b!189363))

(assert (= (and b!189363 res!86566) b!189393))

(assert (= (and b!189393 res!86553) b!189391))

(assert (= (and b!189391 res!86561) b!189390))

(assert (= (and b!189390 res!86551) b!189359))

(assert (= (and b!189359 res!86558) b!189367))

(assert (= (and b!189367 (not res!86554)) b!189382))

(assert (= (and b!189382 res!86555) b!189371))

(assert (= (and b!189382 (not res!86568)) b!189364))

(assert (= (and b!189364 (not res!86562)) b!189385))

(assert (= (and b!189385 (not res!86548)) b!189383))

(assert (= (and b!189383 (not res!86547)) b!189369))

(assert (= (and b!189369 (not res!86550)) b!189379))

(assert (= (and b!189379 res!86556) b!189389))

(assert (= (and b!189389 res!86559) b!189392))

(assert (= (and b!189379 (not res!86569)) b!189388))

(assert (= (and b!189388 (not res!86567)) b!189373))

(assert (= (and b!189373 res!86564) b!189387))

(assert (= (and b!189388 c!36340) b!189372))

(assert (= (and b!189388 (not c!36340)) b!189377))

(assert (= b!189365 b!189360))

(assert (= b!189386 b!189365))

(assert (= (and start!20498 ((_ is Cons!3171) rules!1920)) b!189386))

(assert (= b!189376 b!189378))

(assert (= b!189361 b!189376))

(assert (= start!20498 b!189361))

(assert (= b!189375 b!189384))

(assert (= b!189362 b!189375))

(assert (= b!189380 b!189362))

(assert (= (and start!20498 ((_ is Cons!3172) tokens!465)) b!189380))

(declare-fun m!194471 () Bool)

(assert (=> b!189380 m!194471))

(declare-fun m!194473 () Bool)

(assert (=> b!189368 m!194473))

(declare-fun m!194475 () Bool)

(assert (=> b!189376 m!194475))

(declare-fun m!194477 () Bool)

(assert (=> b!189376 m!194477))

(declare-fun m!194479 () Bool)

(assert (=> b!189388 m!194479))

(declare-fun m!194481 () Bool)

(assert (=> b!189388 m!194481))

(declare-fun m!194483 () Bool)

(assert (=> b!189388 m!194483))

(declare-fun m!194485 () Bool)

(assert (=> b!189388 m!194485))

(declare-fun m!194487 () Bool)

(assert (=> b!189388 m!194487))

(declare-fun m!194489 () Bool)

(assert (=> b!189388 m!194489))

(declare-fun m!194491 () Bool)

(assert (=> b!189388 m!194491))

(declare-fun m!194493 () Bool)

(assert (=> b!189388 m!194493))

(declare-fun m!194495 () Bool)

(assert (=> b!189388 m!194495))

(declare-fun m!194497 () Bool)

(assert (=> b!189388 m!194497))

(declare-fun m!194499 () Bool)

(assert (=> b!189388 m!194499))

(assert (=> b!189388 m!194483))

(declare-fun m!194501 () Bool)

(assert (=> b!189388 m!194501))

(declare-fun m!194503 () Bool)

(assert (=> b!189388 m!194503))

(declare-fun m!194505 () Bool)

(assert (=> b!189364 m!194505))

(declare-fun m!194507 () Bool)

(assert (=> b!189364 m!194507))

(declare-fun m!194509 () Bool)

(assert (=> b!189364 m!194509))

(declare-fun m!194511 () Bool)

(assert (=> b!189364 m!194511))

(declare-fun m!194513 () Bool)

(assert (=> b!189364 m!194513))

(declare-fun m!194515 () Bool)

(assert (=> b!189371 m!194515))

(declare-fun m!194517 () Bool)

(assert (=> b!189366 m!194517))

(declare-fun m!194519 () Bool)

(assert (=> b!189373 m!194519))

(assert (=> b!189373 m!194483))

(declare-fun m!194521 () Bool)

(assert (=> b!189390 m!194521))

(assert (=> b!189390 m!194521))

(declare-fun m!194523 () Bool)

(assert (=> b!189390 m!194523))

(declare-fun m!194525 () Bool)

(assert (=> b!189390 m!194525))

(declare-fun m!194527 () Bool)

(assert (=> b!189361 m!194527))

(declare-fun m!194529 () Bool)

(assert (=> b!189383 m!194529))

(assert (=> b!189383 m!194529))

(declare-fun m!194531 () Bool)

(assert (=> b!189383 m!194531))

(declare-fun m!194533 () Bool)

(assert (=> b!189383 m!194533))

(declare-fun m!194535 () Bool)

(assert (=> b!189375 m!194535))

(declare-fun m!194537 () Bool)

(assert (=> b!189375 m!194537))

(declare-fun m!194539 () Bool)

(assert (=> b!189392 m!194539))

(declare-fun m!194541 () Bool)

(assert (=> b!189359 m!194541))

(assert (=> b!189359 m!194541))

(declare-fun m!194543 () Bool)

(assert (=> b!189359 m!194543))

(declare-fun m!194545 () Bool)

(assert (=> b!189385 m!194545))

(declare-fun m!194547 () Bool)

(assert (=> b!189362 m!194547))

(declare-fun m!194549 () Bool)

(assert (=> b!189369 m!194549))

(assert (=> b!189369 m!194549))

(declare-fun m!194551 () Bool)

(assert (=> b!189369 m!194551))

(assert (=> b!189369 m!194551))

(declare-fun m!194553 () Bool)

(assert (=> b!189369 m!194553))

(declare-fun m!194555 () Bool)

(assert (=> b!189369 m!194555))

(declare-fun m!194557 () Bool)

(assert (=> b!189367 m!194557))

(declare-fun m!194559 () Bool)

(assert (=> b!189367 m!194559))

(declare-fun m!194561 () Bool)

(assert (=> b!189367 m!194561))

(declare-fun m!194563 () Bool)

(assert (=> b!189367 m!194563))

(assert (=> b!189367 m!194559))

(declare-fun m!194565 () Bool)

(assert (=> b!189367 m!194565))

(declare-fun m!194567 () Bool)

(assert (=> b!189367 m!194567))

(assert (=> b!189367 m!194565))

(declare-fun m!194569 () Bool)

(assert (=> b!189367 m!194569))

(declare-fun m!194571 () Bool)

(assert (=> b!189367 m!194571))

(declare-fun m!194573 () Bool)

(assert (=> b!189367 m!194573))

(assert (=> b!189367 m!194569))

(declare-fun m!194575 () Bool)

(assert (=> b!189367 m!194575))

(declare-fun m!194577 () Bool)

(assert (=> b!189367 m!194577))

(declare-fun m!194579 () Bool)

(assert (=> b!189367 m!194579))

(declare-fun m!194581 () Bool)

(assert (=> b!189367 m!194581))

(assert (=> b!189367 m!194557))

(assert (=> b!189367 m!194577))

(declare-fun m!194583 () Bool)

(assert (=> b!189379 m!194583))

(declare-fun m!194585 () Bool)

(assert (=> b!189379 m!194585))

(declare-fun m!194587 () Bool)

(assert (=> b!189379 m!194587))

(declare-fun m!194589 () Bool)

(assert (=> start!20498 m!194589))

(declare-fun m!194591 () Bool)

(assert (=> b!189393 m!194591))

(declare-fun m!194593 () Bool)

(assert (=> b!189370 m!194593))

(declare-fun m!194595 () Bool)

(assert (=> b!189363 m!194595))

(declare-fun m!194597 () Bool)

(assert (=> b!189389 m!194597))

(declare-fun m!194599 () Bool)

(assert (=> b!189381 m!194599))

(declare-fun m!194601 () Bool)

(assert (=> b!189381 m!194601))

(declare-fun m!194603 () Bool)

(assert (=> b!189387 m!194603))

(declare-fun m!194605 () Bool)

(assert (=> b!189387 m!194605))

(declare-fun m!194607 () Bool)

(assert (=> b!189365 m!194607))

(declare-fun m!194609 () Bool)

(assert (=> b!189365 m!194609))

(check-sat (not b!189376) (not b_next!7505) (not b!189392) (not b!189393) (not b!189385) (not b!189387) (not b!189369) (not b!189366) (not b!189388) (not b!189383) (not b_next!7499) (not b_next!7503) (not b!189363) (not b!189359) (not b!189371) (not b!189364) b_and!13111 b_and!13109 (not b_next!7497) (not b!189381) (not b_next!7507) b_and!13101 (not b!189367) (not b!189402) (not b!189386) (not start!20498) (not b!189379) (not b!189389) (not b!189362) b_and!13107 (not b!189375) (not b_next!7501) (not b!189368) (not b!189380) (not b!189370) (not b!189390) b_and!13105 (not b!189373) b_and!13103 (not b!189365) (not b!189361))
(check-sat (not b_next!7499) (not b_next!7505) (not b_next!7503) b_and!13107 (not b_next!7501) b_and!13105 b_and!13103 b_and!13111 b_and!13109 (not b_next!7497) (not b_next!7507) b_and!13101)
