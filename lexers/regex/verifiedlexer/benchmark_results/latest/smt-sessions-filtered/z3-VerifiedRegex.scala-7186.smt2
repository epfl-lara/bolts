; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!382716 () Bool)

(assert start!382716)

(declare-fun b!4058071 () Bool)

(declare-fun b_free!112929 () Bool)

(declare-fun b_next!113633 () Bool)

(assert (=> b!4058071 (= b_free!112929 (not b_next!113633))))

(declare-fun tp!1229734 () Bool)

(declare-fun b_and!312003 () Bool)

(assert (=> b!4058071 (= tp!1229734 b_and!312003)))

(declare-fun b_free!112931 () Bool)

(declare-fun b_next!113635 () Bool)

(assert (=> b!4058071 (= b_free!112931 (not b_next!113635))))

(declare-fun tp!1229738 () Bool)

(declare-fun b_and!312005 () Bool)

(assert (=> b!4058071 (= tp!1229738 b_and!312005)))

(declare-fun b!4058069 () Bool)

(declare-fun b_free!112933 () Bool)

(declare-fun b_next!113637 () Bool)

(assert (=> b!4058069 (= b_free!112933 (not b_next!113637))))

(declare-fun tp!1229730 () Bool)

(declare-fun b_and!312007 () Bool)

(assert (=> b!4058069 (= tp!1229730 b_and!312007)))

(declare-fun b_free!112935 () Bool)

(declare-fun b_next!113639 () Bool)

(assert (=> b!4058069 (= b_free!112935 (not b_next!113639))))

(declare-fun tp!1229739 () Bool)

(declare-fun b_and!312009 () Bool)

(assert (=> b!4058069 (= tp!1229739 b_and!312009)))

(declare-fun e!2518258 () Bool)

(declare-fun e!2518227 () Bool)

(declare-fun b!4058040 () Bool)

(declare-datatypes ((C!23916 0))(
  ( (C!23917 (val!14052 Int)) )
))
(declare-datatypes ((List!43497 0))(
  ( (Nil!43373) (Cons!43373 (h!48793 C!23916) (t!336350 List!43497)) )
))
(declare-datatypes ((IArray!26347 0))(
  ( (IArray!26348 (innerList!13231 List!43497)) )
))
(declare-datatypes ((Conc!13171 0))(
  ( (Node!13171 (left!32641 Conc!13171) (right!32971 Conc!13171) (csize!26572 Int) (cheight!13382 Int)) (Leaf!20358 (xs!16477 IArray!26347) (csize!26573 Int)) (Empty!13171) )
))
(declare-datatypes ((BalanceConc!25936 0))(
  ( (BalanceConc!25937 (c!700780 Conc!13171)) )
))
(declare-datatypes ((String!49667 0))(
  ( (String!49668 (value!218968 String)) )
))
(declare-datatypes ((List!43498 0))(
  ( (Nil!43374) (Cons!43374 (h!48794 (_ BitVec 16)) (t!336351 List!43498)) )
))
(declare-datatypes ((TokenValue!7190 0))(
  ( (FloatLiteralValue!14380 (text!50775 List!43498)) (TokenValueExt!7189 (__x!26597 Int)) (Broken!35950 (value!218969 List!43498)) (Object!7313) (End!7190) (Def!7190) (Underscore!7190) (Match!7190) (Else!7190) (Error!7190) (Case!7190) (If!7190) (Extends!7190) (Abstract!7190) (Class!7190) (Val!7190) (DelimiterValue!14380 (del!7250 List!43498)) (KeywordValue!7196 (value!218970 List!43498)) (CommentValue!14380 (value!218971 List!43498)) (WhitespaceValue!14380 (value!218972 List!43498)) (IndentationValue!7190 (value!218973 List!43498)) (String!49669) (Int32!7190) (Broken!35951 (value!218974 List!43498)) (Boolean!7191) (Unit!62756) (OperatorValue!7193 (op!7250 List!43498)) (IdentifierValue!14380 (value!218975 List!43498)) (IdentifierValue!14381 (value!218976 List!43498)) (WhitespaceValue!14381 (value!218977 List!43498)) (True!14380) (False!14380) (Broken!35952 (value!218978 List!43498)) (Broken!35953 (value!218979 List!43498)) (True!14381) (RightBrace!7190) (RightBracket!7190) (Colon!7190) (Null!7190) (Comma!7190) (LeftBracket!7190) (False!14381) (LeftBrace!7190) (ImaginaryLiteralValue!7190 (text!50776 List!43498)) (StringLiteralValue!21570 (value!218980 List!43498)) (EOFValue!7190 (value!218981 List!43498)) (IdentValue!7190 (value!218982 List!43498)) (DelimiterValue!14381 (value!218983 List!43498)) (DedentValue!7190 (value!218984 List!43498)) (NewLineValue!7190 (value!218985 List!43498)) (IntegerValue!21570 (value!218986 (_ BitVec 32)) (text!50777 List!43498)) (IntegerValue!21571 (value!218987 Int) (text!50778 List!43498)) (Times!7190) (Or!7190) (Equal!7190) (Minus!7190) (Broken!35954 (value!218988 List!43498)) (And!7190) (Div!7190) (LessEqual!7190) (Mod!7190) (Concat!19055) (Not!7190) (Plus!7190) (SpaceValue!7190 (value!218989 List!43498)) (IntegerValue!21572 (value!218990 Int) (text!50779 List!43498)) (StringLiteralValue!21571 (text!50780 List!43498)) (FloatLiteralValue!14381 (text!50781 List!43498)) (BytesLiteralValue!7190 (value!218991 List!43498)) (CommentValue!14381 (value!218992 List!43498)) (StringLiteralValue!21572 (value!218993 List!43498)) (ErrorTokenValue!7190 (msg!7251 List!43498)) )
))
(declare-datatypes ((Regex!11865 0))(
  ( (ElementMatch!11865 (c!700781 C!23916)) (Concat!19056 (regOne!24242 Regex!11865) (regTwo!24242 Regex!11865)) (EmptyExpr!11865) (Star!11865 (reg!12194 Regex!11865)) (EmptyLang!11865) (Union!11865 (regOne!24243 Regex!11865) (regTwo!24243 Regex!11865)) )
))
(declare-datatypes ((TokenValueInjection!13808 0))(
  ( (TokenValueInjection!13809 (toValue!9516 Int) (toChars!9375 Int)) )
))
(declare-datatypes ((Rule!13720 0))(
  ( (Rule!13721 (regex!6960 Regex!11865) (tag!7820 String!49667) (isSeparator!6960 Bool) (transformation!6960 TokenValueInjection!13808)) )
))
(declare-datatypes ((List!43499 0))(
  ( (Nil!43375) (Cons!43375 (h!48795 Rule!13720) (t!336352 List!43499)) )
))
(declare-fun rules!2999 () List!43499)

(declare-fun tp!1229729 () Bool)

(declare-fun inv!57978 (String!49667) Bool)

(declare-fun inv!57981 (TokenValueInjection!13808) Bool)

(assert (=> b!4058040 (= e!2518227 (and tp!1229729 (inv!57978 (tag!7820 (h!48795 rules!2999))) (inv!57981 (transformation!6960 (h!48795 rules!2999))) e!2518258))))

(declare-fun b!4058041 () Bool)

(declare-datatypes ((Token!13058 0))(
  ( (Token!13059 (value!218994 TokenValue!7190) (rule!10050 Rule!13720) (size!32427 Int) (originalCharacters!7560 List!43497)) )
))
(declare-fun token!484 () Token!13058)

(declare-fun e!2518226 () Bool)

(declare-fun e!2518252 () Bool)

(declare-fun tp!1229736 () Bool)

(assert (=> b!4058041 (= e!2518252 (and tp!1229736 (inv!57978 (tag!7820 (rule!10050 token!484))) (inv!57981 (transformation!6960 (rule!10050 token!484))) e!2518226))))

(declare-fun b!4058042 () Bool)

(declare-fun res!1655005 () Bool)

(declare-fun e!2518251 () Bool)

(assert (=> b!4058042 (=> res!1655005 e!2518251)))

(declare-fun lt!1449249 () List!43497)

(declare-fun lt!1449255 () List!43497)

(declare-fun isPrefix!4047 (List!43497 List!43497) Bool)

(assert (=> b!4058042 (= res!1655005 (not (isPrefix!4047 lt!1449249 lt!1449255)))))

(declare-fun b!4058043 () Bool)

(declare-fun e!2518232 () Bool)

(declare-fun e!2518257 () Bool)

(assert (=> b!4058043 (= e!2518232 e!2518257)))

(declare-fun res!1655004 () Bool)

(assert (=> b!4058043 (=> res!1655004 e!2518257)))

(declare-fun lt!1449219 () List!43497)

(declare-fun suffix!1299 () List!43497)

(assert (=> b!4058043 (= res!1655004 (not (= lt!1449219 suffix!1299)))))

(declare-fun newSuffix!27 () List!43497)

(declare-fun lt!1449227 () List!43497)

(declare-fun ++!11362 (List!43497 List!43497) List!43497)

(assert (=> b!4058043 (= lt!1449219 (++!11362 newSuffix!27 lt!1449227))))

(declare-fun getSuffix!2464 (List!43497 List!43497) List!43497)

(assert (=> b!4058043 (= lt!1449227 (getSuffix!2464 suffix!1299 newSuffix!27))))

(declare-fun b!4058044 () Bool)

(declare-datatypes ((Unit!62757 0))(
  ( (Unit!62758) )
))
(declare-fun e!2518248 () Unit!62757)

(declare-fun Unit!62759 () Unit!62757)

(assert (=> b!4058044 (= e!2518248 Unit!62759)))

(declare-fun b!4058045 () Bool)

(declare-fun res!1654998 () Bool)

(declare-fun e!2518239 () Bool)

(assert (=> b!4058045 (=> (not res!1654998) (not e!2518239))))

(declare-fun size!32428 (List!43497) Int)

(assert (=> b!4058045 (= res!1654998 (>= (size!32428 suffix!1299) (size!32428 newSuffix!27)))))

(declare-fun b!4058046 () Bool)

(declare-fun e!2518229 () Bool)

(declare-fun tp_is_empty!20701 () Bool)

(declare-fun tp!1229733 () Bool)

(assert (=> b!4058046 (= e!2518229 (and tp_is_empty!20701 tp!1229733))))

(declare-fun b!4058047 () Bool)

(declare-fun e!2518240 () Bool)

(declare-fun tp!1229737 () Bool)

(assert (=> b!4058047 (= e!2518240 (and tp_is_empty!20701 tp!1229737))))

(declare-fun b!4058048 () Bool)

(declare-fun res!1655019 () Bool)

(declare-fun e!2518243 () Bool)

(assert (=> b!4058048 (=> (not res!1655019) (not e!2518243))))

(assert (=> b!4058048 (= res!1655019 (= (size!32427 token!484) (size!32428 (originalCharacters!7560 token!484))))))

(declare-fun b!4058049 () Bool)

(declare-fun e!2518255 () Bool)

(declare-fun e!2518228 () Bool)

(assert (=> b!4058049 (= e!2518255 e!2518228)))

(declare-fun res!1654996 () Bool)

(assert (=> b!4058049 (=> res!1654996 e!2518228)))

(declare-fun lt!1449266 () List!43497)

(declare-fun lt!1449231 () List!43497)

(assert (=> b!4058049 (= res!1654996 (not (isPrefix!4047 lt!1449266 lt!1449231)))))

(declare-fun prefix!494 () List!43497)

(assert (=> b!4058049 (isPrefix!4047 prefix!494 lt!1449231)))

(declare-fun lt!1449237 () Unit!62757)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2882 (List!43497 List!43497) Unit!62757)

(assert (=> b!4058049 (= lt!1449237 (lemmaConcatTwoListThenFirstIsPrefix!2882 prefix!494 suffix!1299))))

(declare-fun lt!1449257 () List!43497)

(assert (=> b!4058049 (isPrefix!4047 lt!1449266 lt!1449257)))

(declare-fun lt!1449226 () Unit!62757)

(declare-fun suffixResult!105 () List!43497)

(assert (=> b!4058049 (= lt!1449226 (lemmaConcatTwoListThenFirstIsPrefix!2882 lt!1449266 suffixResult!105))))

(declare-fun b!4058050 () Bool)

(declare-fun Unit!62760 () Unit!62757)

(assert (=> b!4058050 (= e!2518248 Unit!62760)))

(declare-fun lt!1449243 () Unit!62757)

(declare-datatypes ((tuple2!42434 0))(
  ( (tuple2!42435 (_1!24351 Token!13058) (_2!24351 List!43497)) )
))
(declare-datatypes ((Option!9374 0))(
  ( (None!9373) (Some!9373 (v!39791 tuple2!42434)) )
))
(declare-fun lt!1449276 () Option!9374)

(declare-datatypes ((LexerInterface!6549 0))(
  ( (LexerInterfaceExt!6546 (__x!26598 Int)) (Lexer!6547) )
))
(declare-fun thiss!21717 () LexerInterface!6549)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!486 (LexerInterface!6549 List!43499 Rule!13720 List!43497 List!43497 List!43497 Rule!13720) Unit!62757)

(assert (=> b!4058050 (= lt!1449243 (lemmaMaxPrefixOutputsMaxPrefix!486 thiss!21717 rules!2999 (rule!10050 (_1!24351 (v!39791 lt!1449276))) lt!1449249 lt!1449255 lt!1449266 (rule!10050 token!484)))))

(assert (=> b!4058050 false))

(declare-fun b!4058051 () Bool)

(declare-fun e!2518235 () Bool)

(assert (=> b!4058051 (= e!2518235 false)))

(declare-fun b!4058052 () Bool)

(declare-fun e!2518237 () Bool)

(declare-fun e!2518260 () Bool)

(assert (=> b!4058052 (= e!2518237 e!2518260)))

(declare-fun res!1655006 () Bool)

(assert (=> b!4058052 (=> res!1655006 e!2518260)))

(get-info :version)

(assert (=> b!4058052 (= res!1655006 (not ((_ is Some!9373) lt!1449276)))))

(declare-fun maxPrefix!3847 (LexerInterface!6549 List!43499 List!43497) Option!9374)

(assert (=> b!4058052 (= lt!1449276 (maxPrefix!3847 thiss!21717 rules!2999 lt!1449255))))

(declare-fun lt!1449234 () Token!13058)

(declare-fun lt!1449232 () List!43497)

(declare-fun lt!1449224 () tuple2!42434)

(assert (=> b!4058052 (and (= suffixResult!105 lt!1449232) (= lt!1449224 (tuple2!42435 lt!1449234 lt!1449232)))))

(declare-fun lt!1449242 () Unit!62757)

(declare-fun lemmaSamePrefixThenSameSuffix!2208 (List!43497 List!43497 List!43497 List!43497 List!43497) Unit!62757)

(assert (=> b!4058052 (= lt!1449242 (lemmaSamePrefixThenSameSuffix!2208 lt!1449266 suffixResult!105 lt!1449266 lt!1449232 lt!1449231))))

(declare-fun lt!1449229 () List!43497)

(assert (=> b!4058052 (isPrefix!4047 lt!1449266 lt!1449229)))

(declare-fun lt!1449228 () Unit!62757)

(assert (=> b!4058052 (= lt!1449228 (lemmaConcatTwoListThenFirstIsPrefix!2882 lt!1449266 lt!1449232))))

(declare-fun b!4058053 () Bool)

(declare-fun e!2518250 () Unit!62757)

(declare-fun Unit!62761 () Unit!62757)

(assert (=> b!4058053 (= e!2518250 Unit!62761)))

(declare-fun b!4058054 () Bool)

(declare-fun e!2518241 () Bool)

(declare-fun tp!1229731 () Bool)

(assert (=> b!4058054 (= e!2518241 (and tp_is_empty!20701 tp!1229731))))

(declare-fun b!4058055 () Bool)

(declare-fun e!2518225 () Bool)

(assert (=> b!4058055 (= e!2518239 e!2518225)))

(declare-fun res!1654997 () Bool)

(assert (=> b!4058055 (=> (not res!1654997) (not e!2518225))))

(declare-fun lt!1449254 () Int)

(declare-fun lt!1449262 () Int)

(assert (=> b!4058055 (= res!1654997 (>= lt!1449254 lt!1449262))))

(assert (=> b!4058055 (= lt!1449262 (size!32428 lt!1449266))))

(assert (=> b!4058055 (= lt!1449254 (size!32428 prefix!494))))

(declare-fun list!16164 (BalanceConc!25936) List!43497)

(declare-fun charsOf!4776 (Token!13058) BalanceConc!25936)

(assert (=> b!4058055 (= lt!1449266 (list!16164 (charsOf!4776 token!484)))))

(declare-fun res!1655018 () Bool)

(assert (=> start!382716 (=> (not res!1655018) (not e!2518239))))

(assert (=> start!382716 (= res!1655018 ((_ is Lexer!6547) thiss!21717))))

(assert (=> start!382716 e!2518239))

(assert (=> start!382716 e!2518241))

(declare-fun e!2518253 () Bool)

(declare-fun inv!57982 (Token!13058) Bool)

(assert (=> start!382716 (and (inv!57982 token!484) e!2518253)))

(assert (=> start!382716 e!2518229))

(declare-fun e!2518234 () Bool)

(assert (=> start!382716 e!2518234))

(declare-fun e!2518254 () Bool)

(assert (=> start!382716 e!2518254))

(assert (=> start!382716 true))

(declare-fun e!2518244 () Bool)

(assert (=> start!382716 e!2518244))

(assert (=> start!382716 e!2518240))

(declare-fun b!4058056 () Bool)

(declare-fun tp!1229735 () Bool)

(assert (=> b!4058056 (= e!2518234 (and tp_is_empty!20701 tp!1229735))))

(declare-fun b!4058057 () Bool)

(declare-fun Unit!62762 () Unit!62757)

(assert (=> b!4058057 (= e!2518250 Unit!62762)))

(declare-fun lt!1449256 () Unit!62757)

(assert (=> b!4058057 (= lt!1449256 (lemmaMaxPrefixOutputsMaxPrefix!486 thiss!21717 rules!2999 (rule!10050 token!484) lt!1449266 lt!1449231 lt!1449249 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))))

(declare-fun res!1654994 () Bool)

(declare-fun matchR!5818 (Regex!11865 List!43497) Bool)

(assert (=> b!4058057 (= res!1654994 (not (matchR!5818 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) lt!1449249)))))

(assert (=> b!4058057 (=> (not res!1654994) (not e!2518235))))

(assert (=> b!4058057 e!2518235))

(declare-fun b!4058058 () Bool)

(declare-fun e!2518245 () Bool)

(assert (=> b!4058058 (= e!2518245 e!2518251)))

(declare-fun res!1655020 () Bool)

(assert (=> b!4058058 (=> res!1655020 e!2518251)))

(declare-fun lt!1449278 () Int)

(assert (=> b!4058058 (= res!1655020 (not (= lt!1449262 lt!1449278)))))

(declare-fun lt!1449235 () Unit!62757)

(assert (=> b!4058058 (= lt!1449235 e!2518248)))

(declare-fun c!700779 () Bool)

(assert (=> b!4058058 (= c!700779 (< lt!1449278 lt!1449262))))

(declare-fun lt!1449239 () Unit!62757)

(assert (=> b!4058058 (= lt!1449239 e!2518250)))

(declare-fun c!700778 () Bool)

(assert (=> b!4058058 (= c!700778 (> lt!1449278 lt!1449262))))

(declare-fun lt!1449225 () List!43497)

(assert (=> b!4058058 (= (_2!24351 (v!39791 lt!1449276)) lt!1449225)))

(declare-fun lt!1449244 () Unit!62757)

(assert (=> b!4058058 (= lt!1449244 (lemmaSamePrefixThenSameSuffix!2208 lt!1449249 (_2!24351 (v!39791 lt!1449276)) lt!1449249 lt!1449225 lt!1449255))))

(declare-fun lt!1449259 () List!43497)

(assert (=> b!4058058 (isPrefix!4047 lt!1449249 lt!1449259)))

(declare-fun lt!1449279 () Unit!62757)

(assert (=> b!4058058 (= lt!1449279 (lemmaConcatTwoListThenFirstIsPrefix!2882 lt!1449249 lt!1449225))))

(declare-fun b!4058059 () Bool)

(declare-fun res!1655007 () Bool)

(assert (=> b!4058059 (=> (not res!1655007) (not e!2518239))))

(assert (=> b!4058059 (= res!1655007 (isPrefix!4047 newSuffix!27 suffix!1299))))

(declare-fun b!4058060 () Bool)

(declare-fun res!1655014 () Bool)

(assert (=> b!4058060 (=> (not res!1655014) (not e!2518239))))

(declare-fun isEmpty!25881 (List!43499) Bool)

(assert (=> b!4058060 (= res!1655014 (not (isEmpty!25881 rules!2999)))))

(declare-fun b!4058061 () Bool)

(assert (=> b!4058061 (= e!2518260 e!2518232)))

(declare-fun res!1655016 () Bool)

(assert (=> b!4058061 (=> res!1655016 e!2518232)))

(declare-fun lt!1449261 () Option!9374)

(assert (=> b!4058061 (= res!1655016 (not (= lt!1449261 (Some!9373 (v!39791 lt!1449276)))))))

(declare-fun newSuffixResult!27 () List!43497)

(assert (=> b!4058061 (isPrefix!4047 lt!1449249 (++!11362 lt!1449249 newSuffixResult!27))))

(declare-fun lt!1449222 () Unit!62757)

(assert (=> b!4058061 (= lt!1449222 (lemmaConcatTwoListThenFirstIsPrefix!2882 lt!1449249 newSuffixResult!27))))

(declare-fun lt!1449274 () List!43497)

(assert (=> b!4058061 (isPrefix!4047 lt!1449249 lt!1449274)))

(assert (=> b!4058061 (= lt!1449274 (++!11362 lt!1449249 (_2!24351 (v!39791 lt!1449276))))))

(declare-fun lt!1449270 () Unit!62757)

(assert (=> b!4058061 (= lt!1449270 (lemmaConcatTwoListThenFirstIsPrefix!2882 lt!1449249 (_2!24351 (v!39791 lt!1449276))))))

(declare-fun lt!1449271 () TokenValue!7190)

(assert (=> b!4058061 (= lt!1449261 (Some!9373 (tuple2!42435 (Token!13059 lt!1449271 (rule!10050 (_1!24351 (v!39791 lt!1449276))) lt!1449278 lt!1449249) (_2!24351 (v!39791 lt!1449276)))))))

(declare-fun maxPrefixOneRule!2859 (LexerInterface!6549 Rule!13720 List!43497) Option!9374)

(assert (=> b!4058061 (= lt!1449261 (maxPrefixOneRule!2859 thiss!21717 (rule!10050 (_1!24351 (v!39791 lt!1449276))) lt!1449255))))

(assert (=> b!4058061 (= lt!1449278 (size!32428 lt!1449249))))

(declare-fun apply!10149 (TokenValueInjection!13808 BalanceConc!25936) TokenValue!7190)

(declare-fun seqFromList!5177 (List!43497) BalanceConc!25936)

(assert (=> b!4058061 (= lt!1449271 (apply!10149 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) (seqFromList!5177 lt!1449249)))))

(declare-fun lt!1449217 () Unit!62757)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1665 (LexerInterface!6549 List!43499 List!43497 List!43497 List!43497 Rule!13720) Unit!62757)

(assert (=> b!4058061 (= lt!1449217 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1665 thiss!21717 rules!2999 lt!1449249 lt!1449255 (_2!24351 (v!39791 lt!1449276)) (rule!10050 (_1!24351 (v!39791 lt!1449276)))))))

(assert (=> b!4058061 (= lt!1449249 (list!16164 (charsOf!4776 (_1!24351 (v!39791 lt!1449276)))))))

(declare-fun lt!1449253 () Unit!62757)

(declare-fun lemmaInv!1169 (TokenValueInjection!13808) Unit!62757)

(assert (=> b!4058061 (= lt!1449253 (lemmaInv!1169 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))))

(declare-fun ruleValid!2890 (LexerInterface!6549 Rule!13720) Bool)

(assert (=> b!4058061 (ruleValid!2890 thiss!21717 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))

(declare-fun lt!1449223 () Unit!62757)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1960 (LexerInterface!6549 Rule!13720 List!43499) Unit!62757)

(assert (=> b!4058061 (= lt!1449223 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1960 thiss!21717 (rule!10050 (_1!24351 (v!39791 lt!1449276))) rules!2999))))

(declare-fun lt!1449268 () Unit!62757)

(declare-fun lemmaCharactersSize!1479 (Token!13058) Unit!62757)

(assert (=> b!4058061 (= lt!1449268 (lemmaCharactersSize!1479 token!484))))

(declare-fun lt!1449251 () Unit!62757)

(assert (=> b!4058061 (= lt!1449251 (lemmaCharactersSize!1479 (_1!24351 (v!39791 lt!1449276))))))

(declare-fun b!4058062 () Bool)

(declare-fun e!2518242 () Bool)

(assert (=> b!4058062 (= e!2518242 e!2518237)))

(declare-fun res!1655010 () Bool)

(assert (=> b!4058062 (=> res!1655010 e!2518237)))

(assert (=> b!4058062 (= res!1655010 (not (= lt!1449229 lt!1449231)))))

(assert (=> b!4058062 (= lt!1449229 (++!11362 lt!1449266 lt!1449232))))

(assert (=> b!4058062 (= lt!1449232 (getSuffix!2464 lt!1449231 lt!1449266))))

(assert (=> b!4058062 e!2518243))

(declare-fun res!1654999 () Bool)

(assert (=> b!4058062 (=> (not res!1654999) (not e!2518243))))

(assert (=> b!4058062 (= res!1654999 (isPrefix!4047 lt!1449231 lt!1449231))))

(declare-fun lt!1449258 () Unit!62757)

(declare-fun lemmaIsPrefixRefl!2614 (List!43497 List!43497) Unit!62757)

(assert (=> b!4058062 (= lt!1449258 (lemmaIsPrefixRefl!2614 lt!1449231 lt!1449231))))

(declare-fun b!4058063 () Bool)

(declare-fun e!2518246 () Bool)

(assert (=> b!4058063 (= e!2518228 e!2518246)))

(declare-fun res!1655012 () Bool)

(assert (=> b!4058063 (=> res!1655012 e!2518246)))

(declare-fun lt!1449260 () List!43497)

(assert (=> b!4058063 (= res!1655012 (not (= lt!1449260 prefix!494)))))

(declare-fun lt!1449238 () List!43497)

(assert (=> b!4058063 (= lt!1449260 (++!11362 lt!1449266 lt!1449238))))

(assert (=> b!4058063 (= lt!1449238 (getSuffix!2464 prefix!494 lt!1449266))))

(assert (=> b!4058063 (isPrefix!4047 lt!1449266 prefix!494)))

(declare-fun lt!1449263 () Unit!62757)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!611 (List!43497 List!43497 List!43497) Unit!62757)

(assert (=> b!4058063 (= lt!1449263 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!611 prefix!494 lt!1449266 lt!1449231))))

(declare-fun b!4058064 () Bool)

(declare-fun tp!1229740 () Bool)

(declare-fun inv!21 (TokenValue!7190) Bool)

(assert (=> b!4058064 (= e!2518253 (and (inv!21 (value!218994 token!484)) e!2518252 tp!1229740))))

(declare-fun b!4058065 () Bool)

(declare-fun res!1655011 () Bool)

(declare-fun e!2518259 () Bool)

(assert (=> b!4058065 (=> res!1655011 e!2518259)))

(assert (=> b!4058065 (= res!1655011 (not (= lt!1449274 lt!1449255)))))

(declare-fun b!4058066 () Bool)

(declare-fun e!2518238 () Bool)

(declare-fun e!2518256 () Bool)

(assert (=> b!4058066 (= e!2518238 e!2518256)))

(declare-fun res!1655003 () Bool)

(assert (=> b!4058066 (=> res!1655003 e!2518256)))

(declare-fun lt!1449218 () Option!9374)

(declare-fun lt!1449250 () Option!9374)

(assert (=> b!4058066 (= res!1655003 (not (= lt!1449218 lt!1449250)))))

(assert (=> b!4058066 (= lt!1449218 (Some!9373 (tuple2!42435 lt!1449234 suffixResult!105)))))

(assert (=> b!4058066 (= lt!1449218 (maxPrefixOneRule!2859 thiss!21717 (rule!10050 token!484) lt!1449231))))

(declare-fun lt!1449221 () TokenValue!7190)

(assert (=> b!4058066 (= lt!1449234 (Token!13059 lt!1449221 (rule!10050 token!484) lt!1449262 lt!1449266))))

(assert (=> b!4058066 (= lt!1449221 (apply!10149 (transformation!6960 (rule!10050 token!484)) (seqFromList!5177 lt!1449266)))))

(declare-fun lt!1449275 () Unit!62757)

(assert (=> b!4058066 (= lt!1449275 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1665 thiss!21717 rules!2999 lt!1449266 lt!1449231 suffixResult!105 (rule!10050 token!484)))))

(declare-fun lt!1449267 () List!43497)

(assert (=> b!4058066 (= lt!1449267 suffixResult!105)))

(declare-fun lt!1449269 () Unit!62757)

(assert (=> b!4058066 (= lt!1449269 (lemmaSamePrefixThenSameSuffix!2208 lt!1449266 lt!1449267 lt!1449266 suffixResult!105 lt!1449231))))

(declare-fun lt!1449246 () List!43497)

(assert (=> b!4058066 (isPrefix!4047 lt!1449266 lt!1449246)))

(declare-fun lt!1449245 () Unit!62757)

(assert (=> b!4058066 (= lt!1449245 (lemmaConcatTwoListThenFirstIsPrefix!2882 lt!1449266 lt!1449267))))

(declare-fun b!4058067 () Bool)

(declare-fun res!1654995 () Bool)

(declare-fun e!2518236 () Bool)

(assert (=> b!4058067 (=> res!1654995 e!2518236)))

(declare-fun lt!1449241 () Option!9374)

(assert (=> b!4058067 (= res!1654995 (not (= lt!1449241 (Some!9373 (tuple2!42435 lt!1449234 lt!1449232)))))))

(declare-fun b!4058068 () Bool)

(assert (=> b!4058068 (= e!2518236 false)))

(assert (=> b!4058068 (not (matchR!5818 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) lt!1449266))))

(declare-fun lt!1449272 () Unit!62757)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!288 (LexerInterface!6549 List!43499 Rule!13720 List!43497 List!43497 Rule!13720) Unit!62757)

(assert (=> b!4058068 (= lt!1449272 (lemmaMaxPrefNoSmallerRuleMatches!288 thiss!21717 rules!2999 (rule!10050 token!484) lt!1449266 lt!1449231 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))))

(assert (=> b!4058069 (= e!2518226 (and tp!1229730 tp!1229739))))

(declare-fun b!4058070 () Bool)

(declare-fun res!1655015 () Bool)

(assert (=> b!4058070 (=> (not res!1655015) (not e!2518243))))

(assert (=> b!4058070 (= res!1655015 (= (value!218994 token!484) lt!1449221))))

(assert (=> b!4058071 (= e!2518258 (and tp!1229734 tp!1229738))))

(declare-fun b!4058072 () Bool)

(declare-fun e!2518233 () Bool)

(assert (=> b!4058072 (= e!2518225 e!2518233)))

(declare-fun res!1655022 () Bool)

(assert (=> b!4058072 (=> (not res!1655022) (not e!2518233))))

(declare-fun lt!1449230 () List!43497)

(assert (=> b!4058072 (= res!1655022 (= lt!1449230 lt!1449255))))

(assert (=> b!4058072 (= lt!1449255 (++!11362 prefix!494 newSuffix!27))))

(assert (=> b!4058072 (= lt!1449230 (++!11362 lt!1449266 newSuffixResult!27))))

(declare-fun b!4058073 () Bool)

(declare-fun res!1655008 () Bool)

(assert (=> b!4058073 (=> (not res!1655008) (not e!2518239))))

(declare-fun rulesInvariant!5892 (LexerInterface!6549 List!43499) Bool)

(assert (=> b!4058073 (= res!1655008 (rulesInvariant!5892 thiss!21717 rules!2999))))

(declare-fun b!4058074 () Bool)

(declare-fun e!2518224 () Bool)

(assert (=> b!4058074 (= e!2518233 e!2518224)))

(declare-fun res!1655021 () Bool)

(assert (=> b!4058074 (=> (not res!1655021) (not e!2518224))))

(assert (=> b!4058074 (= res!1655021 (= lt!1449241 lt!1449250))))

(assert (=> b!4058074 (= lt!1449250 (Some!9373 lt!1449224))))

(assert (=> b!4058074 (= lt!1449241 (maxPrefix!3847 thiss!21717 rules!2999 lt!1449231))))

(assert (=> b!4058074 (= lt!1449224 (tuple2!42435 token!484 suffixResult!105))))

(assert (=> b!4058074 (= lt!1449231 (++!11362 prefix!494 suffix!1299))))

(declare-fun b!4058075 () Bool)

(declare-fun tp!1229732 () Bool)

(assert (=> b!4058075 (= e!2518244 (and e!2518227 tp!1229732))))

(declare-fun b!4058076 () Bool)

(assert (=> b!4058076 (= e!2518224 (not e!2518255))))

(declare-fun res!1655009 () Bool)

(assert (=> b!4058076 (=> res!1655009 e!2518255)))

(assert (=> b!4058076 (= res!1655009 (not (= lt!1449257 lt!1449231)))))

(assert (=> b!4058076 (= lt!1449257 (++!11362 lt!1449266 suffixResult!105))))

(declare-fun lt!1449264 () Unit!62757)

(assert (=> b!4058076 (= lt!1449264 (lemmaInv!1169 (transformation!6960 (rule!10050 token!484))))))

(assert (=> b!4058076 (ruleValid!2890 thiss!21717 (rule!10050 token!484))))

(declare-fun lt!1449240 () Unit!62757)

(assert (=> b!4058076 (= lt!1449240 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1960 thiss!21717 (rule!10050 token!484) rules!2999))))

(declare-fun b!4058077 () Bool)

(assert (=> b!4058077 (= e!2518251 e!2518236)))

(declare-fun res!1655017 () Bool)

(assert (=> b!4058077 (=> res!1655017 e!2518236)))

(declare-fun getIndex!572 (List!43499 Rule!13720) Int)

(assert (=> b!4058077 (= res!1655017 (>= (getIndex!572 rules!2999 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) (getIndex!572 rules!2999 (rule!10050 token!484))))))

(assert (=> b!4058077 (= (_2!24351 (v!39791 lt!1449276)) newSuffixResult!27)))

(declare-fun lt!1449247 () Unit!62757)

(assert (=> b!4058077 (= lt!1449247 (lemmaSamePrefixThenSameSuffix!2208 lt!1449249 (_2!24351 (v!39791 lt!1449276)) lt!1449266 newSuffixResult!27 lt!1449255))))

(assert (=> b!4058077 (= lt!1449249 lt!1449266)))

(declare-fun lt!1449233 () Unit!62757)

(declare-fun lemmaIsPrefixSameLengthThenSameList!937 (List!43497 List!43497 List!43497) Unit!62757)

(assert (=> b!4058077 (= lt!1449233 (lemmaIsPrefixSameLengthThenSameList!937 lt!1449249 lt!1449266 lt!1449255))))

(declare-fun b!4058078 () Bool)

(declare-fun e!2518249 () Bool)

(assert (=> b!4058078 (= e!2518257 e!2518249)))

(declare-fun res!1655002 () Bool)

(assert (=> b!4058078 (=> res!1655002 e!2518249)))

(declare-fun lt!1449265 () List!43497)

(assert (=> b!4058078 (= res!1655002 (not (= lt!1449265 lt!1449231)))))

(assert (=> b!4058078 (= lt!1449265 (++!11362 prefix!494 lt!1449219))))

(assert (=> b!4058078 (= lt!1449265 (++!11362 lt!1449255 lt!1449227))))

(declare-fun lt!1449220 () Unit!62757)

(declare-fun lemmaConcatAssociativity!2664 (List!43497 List!43497 List!43497) Unit!62757)

(assert (=> b!4058078 (= lt!1449220 (lemmaConcatAssociativity!2664 prefix!494 newSuffix!27 lt!1449227))))

(declare-fun b!4058079 () Bool)

(assert (=> b!4058079 (= e!2518259 e!2518245)))

(declare-fun res!1655000 () Bool)

(assert (=> b!4058079 (=> res!1655000 e!2518245)))

(assert (=> b!4058079 (= res!1655000 (not (= lt!1449259 lt!1449255)))))

(assert (=> b!4058079 (= lt!1449259 (++!11362 lt!1449249 lt!1449225))))

(assert (=> b!4058079 (= lt!1449225 (getSuffix!2464 lt!1449255 lt!1449249))))

(declare-fun b!4058080 () Bool)

(assert (=> b!4058080 (= e!2518246 e!2518238)))

(declare-fun res!1655023 () Bool)

(assert (=> b!4058080 (=> res!1655023 e!2518238)))

(declare-fun lt!1449277 () List!43497)

(assert (=> b!4058080 (= res!1655023 (or (not (= lt!1449231 lt!1449277)) (not (= lt!1449231 lt!1449246))))))

(assert (=> b!4058080 (= lt!1449277 lt!1449246)))

(assert (=> b!4058080 (= lt!1449246 (++!11362 lt!1449266 lt!1449267))))

(assert (=> b!4058080 (= lt!1449277 (++!11362 lt!1449260 suffix!1299))))

(assert (=> b!4058080 (= lt!1449267 (++!11362 lt!1449238 suffix!1299))))

(declare-fun lt!1449273 () Unit!62757)

(assert (=> b!4058080 (= lt!1449273 (lemmaConcatAssociativity!2664 lt!1449266 lt!1449238 suffix!1299))))

(declare-fun b!4058081 () Bool)

(declare-fun tp!1229728 () Bool)

(assert (=> b!4058081 (= e!2518254 (and tp_is_empty!20701 tp!1229728))))

(declare-fun b!4058082 () Bool)

(assert (=> b!4058082 (= e!2518256 e!2518242)))

(declare-fun res!1655013 () Bool)

(assert (=> b!4058082 (=> res!1655013 e!2518242)))

(assert (=> b!4058082 (= res!1655013 (not (matchR!5818 (regex!6960 (rule!10050 token!484)) lt!1449266)))))

(assert (=> b!4058082 (isPrefix!4047 lt!1449266 lt!1449255)))

(declare-fun lt!1449248 () Unit!62757)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!840 (List!43497 List!43497 List!43497) Unit!62757)

(assert (=> b!4058082 (= lt!1449248 (lemmaPrefixStaysPrefixWhenAddingToSuffix!840 lt!1449266 prefix!494 newSuffix!27))))

(declare-fun lt!1449236 () Unit!62757)

(assert (=> b!4058082 (= lt!1449236 (lemmaPrefixStaysPrefixWhenAddingToSuffix!840 lt!1449266 prefix!494 suffix!1299))))

(declare-fun b!4058083 () Bool)

(assert (=> b!4058083 (= e!2518243 (and (= (size!32427 token!484) lt!1449262) (= (originalCharacters!7560 token!484) lt!1449266)))))

(declare-fun b!4058084 () Bool)

(assert (=> b!4058084 (= e!2518249 e!2518259)))

(declare-fun res!1655001 () Bool)

(assert (=> b!4058084 (=> res!1655001 e!2518259)))

(assert (=> b!4058084 (= res!1655001 (not (isPrefix!4047 lt!1449249 lt!1449231)))))

(assert (=> b!4058084 (isPrefix!4047 lt!1449249 lt!1449265)))

(declare-fun lt!1449252 () Unit!62757)

(assert (=> b!4058084 (= lt!1449252 (lemmaPrefixStaysPrefixWhenAddingToSuffix!840 lt!1449249 lt!1449255 lt!1449227))))

(assert (= (and start!382716 res!1655018) b!4058060))

(assert (= (and b!4058060 res!1655014) b!4058073))

(assert (= (and b!4058073 res!1655008) b!4058045))

(assert (= (and b!4058045 res!1654998) b!4058059))

(assert (= (and b!4058059 res!1655007) b!4058055))

(assert (= (and b!4058055 res!1654997) b!4058072))

(assert (= (and b!4058072 res!1655022) b!4058074))

(assert (= (and b!4058074 res!1655021) b!4058076))

(assert (= (and b!4058076 (not res!1655009)) b!4058049))

(assert (= (and b!4058049 (not res!1654996)) b!4058063))

(assert (= (and b!4058063 (not res!1655012)) b!4058080))

(assert (= (and b!4058080 (not res!1655023)) b!4058066))

(assert (= (and b!4058066 (not res!1655003)) b!4058082))

(assert (= (and b!4058082 (not res!1655013)) b!4058062))

(assert (= (and b!4058062 res!1654999) b!4058070))

(assert (= (and b!4058070 res!1655015) b!4058048))

(assert (= (and b!4058048 res!1655019) b!4058083))

(assert (= (and b!4058062 (not res!1655010)) b!4058052))

(assert (= (and b!4058052 (not res!1655006)) b!4058061))

(assert (= (and b!4058061 (not res!1655016)) b!4058043))

(assert (= (and b!4058043 (not res!1655004)) b!4058078))

(assert (= (and b!4058078 (not res!1655002)) b!4058084))

(assert (= (and b!4058084 (not res!1655001)) b!4058065))

(assert (= (and b!4058065 (not res!1655011)) b!4058079))

(assert (= (and b!4058079 (not res!1655000)) b!4058058))

(assert (= (and b!4058058 c!700778) b!4058057))

(assert (= (and b!4058058 (not c!700778)) b!4058053))

(assert (= (and b!4058057 res!1654994) b!4058051))

(assert (= (and b!4058058 c!700779) b!4058050))

(assert (= (and b!4058058 (not c!700779)) b!4058044))

(assert (= (and b!4058058 (not res!1655020)) b!4058042))

(assert (= (and b!4058042 (not res!1655005)) b!4058077))

(assert (= (and b!4058077 (not res!1655017)) b!4058067))

(assert (= (and b!4058067 (not res!1654995)) b!4058068))

(assert (= (and start!382716 ((_ is Cons!43373) prefix!494)) b!4058054))

(assert (= b!4058041 b!4058069))

(assert (= b!4058064 b!4058041))

(assert (= start!382716 b!4058064))

(assert (= (and start!382716 ((_ is Cons!43373) suffixResult!105)) b!4058046))

(assert (= (and start!382716 ((_ is Cons!43373) suffix!1299)) b!4058056))

(assert (= (and start!382716 ((_ is Cons!43373) newSuffix!27)) b!4058081))

(assert (= b!4058040 b!4058071))

(assert (= b!4058075 b!4058040))

(assert (= (and start!382716 ((_ is Cons!43375) rules!2999)) b!4058075))

(assert (= (and start!382716 ((_ is Cons!43373) newSuffixResult!27)) b!4058047))

(declare-fun m!4662427 () Bool)

(assert (=> b!4058063 m!4662427))

(declare-fun m!4662429 () Bool)

(assert (=> b!4058063 m!4662429))

(declare-fun m!4662431 () Bool)

(assert (=> b!4058063 m!4662431))

(declare-fun m!4662433 () Bool)

(assert (=> b!4058063 m!4662433))

(declare-fun m!4662435 () Bool)

(assert (=> b!4058041 m!4662435))

(declare-fun m!4662437 () Bool)

(assert (=> b!4058041 m!4662437))

(declare-fun m!4662439 () Bool)

(assert (=> b!4058066 m!4662439))

(declare-fun m!4662441 () Bool)

(assert (=> b!4058066 m!4662441))

(declare-fun m!4662443 () Bool)

(assert (=> b!4058066 m!4662443))

(declare-fun m!4662445 () Bool)

(assert (=> b!4058066 m!4662445))

(declare-fun m!4662447 () Bool)

(assert (=> b!4058066 m!4662447))

(assert (=> b!4058066 m!4662439))

(declare-fun m!4662449 () Bool)

(assert (=> b!4058066 m!4662449))

(declare-fun m!4662451 () Bool)

(assert (=> b!4058066 m!4662451))

(declare-fun m!4662453 () Bool)

(assert (=> b!4058062 m!4662453))

(declare-fun m!4662455 () Bool)

(assert (=> b!4058062 m!4662455))

(declare-fun m!4662457 () Bool)

(assert (=> b!4058062 m!4662457))

(declare-fun m!4662459 () Bool)

(assert (=> b!4058062 m!4662459))

(declare-fun m!4662461 () Bool)

(assert (=> b!4058080 m!4662461))

(declare-fun m!4662463 () Bool)

(assert (=> b!4058080 m!4662463))

(declare-fun m!4662465 () Bool)

(assert (=> b!4058080 m!4662465))

(declare-fun m!4662467 () Bool)

(assert (=> b!4058080 m!4662467))

(declare-fun m!4662469 () Bool)

(assert (=> b!4058078 m!4662469))

(declare-fun m!4662471 () Bool)

(assert (=> b!4058078 m!4662471))

(declare-fun m!4662473 () Bool)

(assert (=> b!4058078 m!4662473))

(declare-fun m!4662475 () Bool)

(assert (=> b!4058060 m!4662475))

(declare-fun m!4662477 () Bool)

(assert (=> b!4058052 m!4662477))

(declare-fun m!4662479 () Bool)

(assert (=> b!4058052 m!4662479))

(declare-fun m!4662481 () Bool)

(assert (=> b!4058052 m!4662481))

(declare-fun m!4662483 () Bool)

(assert (=> b!4058052 m!4662483))

(declare-fun m!4662485 () Bool)

(assert (=> b!4058064 m!4662485))

(declare-fun m!4662487 () Bool)

(assert (=> b!4058058 m!4662487))

(declare-fun m!4662489 () Bool)

(assert (=> b!4058058 m!4662489))

(declare-fun m!4662491 () Bool)

(assert (=> b!4058058 m!4662491))

(declare-fun m!4662493 () Bool)

(assert (=> b!4058059 m!4662493))

(declare-fun m!4662495 () Bool)

(assert (=> b!4058043 m!4662495))

(declare-fun m!4662497 () Bool)

(assert (=> b!4058043 m!4662497))

(declare-fun m!4662499 () Bool)

(assert (=> b!4058040 m!4662499))

(declare-fun m!4662501 () Bool)

(assert (=> b!4058040 m!4662501))

(declare-fun m!4662503 () Bool)

(assert (=> b!4058068 m!4662503))

(declare-fun m!4662505 () Bool)

(assert (=> b!4058068 m!4662505))

(declare-fun m!4662507 () Bool)

(assert (=> b!4058074 m!4662507))

(declare-fun m!4662509 () Bool)

(assert (=> b!4058074 m!4662509))

(declare-fun m!4662511 () Bool)

(assert (=> b!4058045 m!4662511))

(declare-fun m!4662513 () Bool)

(assert (=> b!4058045 m!4662513))

(declare-fun m!4662515 () Bool)

(assert (=> start!382716 m!4662515))

(declare-fun m!4662517 () Bool)

(assert (=> b!4058084 m!4662517))

(declare-fun m!4662519 () Bool)

(assert (=> b!4058084 m!4662519))

(declare-fun m!4662521 () Bool)

(assert (=> b!4058084 m!4662521))

(declare-fun m!4662523 () Bool)

(assert (=> b!4058057 m!4662523))

(declare-fun m!4662525 () Bool)

(assert (=> b!4058057 m!4662525))

(declare-fun m!4662527 () Bool)

(assert (=> b!4058048 m!4662527))

(declare-fun m!4662529 () Bool)

(assert (=> b!4058055 m!4662529))

(declare-fun m!4662531 () Bool)

(assert (=> b!4058055 m!4662531))

(declare-fun m!4662533 () Bool)

(assert (=> b!4058055 m!4662533))

(assert (=> b!4058055 m!4662533))

(declare-fun m!4662535 () Bool)

(assert (=> b!4058055 m!4662535))

(declare-fun m!4662537 () Bool)

(assert (=> b!4058042 m!4662537))

(declare-fun m!4662539 () Bool)

(assert (=> b!4058079 m!4662539))

(declare-fun m!4662541 () Bool)

(assert (=> b!4058079 m!4662541))

(declare-fun m!4662543 () Bool)

(assert (=> b!4058050 m!4662543))

(declare-fun m!4662545 () Bool)

(assert (=> b!4058076 m!4662545))

(declare-fun m!4662547 () Bool)

(assert (=> b!4058076 m!4662547))

(declare-fun m!4662549 () Bool)

(assert (=> b!4058076 m!4662549))

(declare-fun m!4662551 () Bool)

(assert (=> b!4058076 m!4662551))

(declare-fun m!4662553 () Bool)

(assert (=> b!4058049 m!4662553))

(declare-fun m!4662555 () Bool)

(assert (=> b!4058049 m!4662555))

(declare-fun m!4662557 () Bool)

(assert (=> b!4058049 m!4662557))

(declare-fun m!4662559 () Bool)

(assert (=> b!4058049 m!4662559))

(declare-fun m!4662561 () Bool)

(assert (=> b!4058049 m!4662561))

(declare-fun m!4662563 () Bool)

(assert (=> b!4058061 m!4662563))

(declare-fun m!4662565 () Bool)

(assert (=> b!4058061 m!4662565))

(declare-fun m!4662567 () Bool)

(assert (=> b!4058061 m!4662567))

(declare-fun m!4662569 () Bool)

(assert (=> b!4058061 m!4662569))

(declare-fun m!4662571 () Bool)

(assert (=> b!4058061 m!4662571))

(declare-fun m!4662573 () Bool)

(assert (=> b!4058061 m!4662573))

(declare-fun m!4662575 () Bool)

(assert (=> b!4058061 m!4662575))

(declare-fun m!4662577 () Bool)

(assert (=> b!4058061 m!4662577))

(assert (=> b!4058061 m!4662565))

(declare-fun m!4662579 () Bool)

(assert (=> b!4058061 m!4662579))

(assert (=> b!4058061 m!4662563))

(declare-fun m!4662581 () Bool)

(assert (=> b!4058061 m!4662581))

(declare-fun m!4662583 () Bool)

(assert (=> b!4058061 m!4662583))

(assert (=> b!4058061 m!4662573))

(declare-fun m!4662585 () Bool)

(assert (=> b!4058061 m!4662585))

(declare-fun m!4662587 () Bool)

(assert (=> b!4058061 m!4662587))

(declare-fun m!4662589 () Bool)

(assert (=> b!4058061 m!4662589))

(declare-fun m!4662591 () Bool)

(assert (=> b!4058061 m!4662591))

(declare-fun m!4662593 () Bool)

(assert (=> b!4058061 m!4662593))

(declare-fun m!4662595 () Bool)

(assert (=> b!4058061 m!4662595))

(declare-fun m!4662597 () Bool)

(assert (=> b!4058061 m!4662597))

(declare-fun m!4662599 () Bool)

(assert (=> b!4058072 m!4662599))

(declare-fun m!4662601 () Bool)

(assert (=> b!4058072 m!4662601))

(declare-fun m!4662603 () Bool)

(assert (=> b!4058077 m!4662603))

(declare-fun m!4662605 () Bool)

(assert (=> b!4058077 m!4662605))

(declare-fun m!4662607 () Bool)

(assert (=> b!4058077 m!4662607))

(declare-fun m!4662609 () Bool)

(assert (=> b!4058077 m!4662609))

(declare-fun m!4662611 () Bool)

(assert (=> b!4058082 m!4662611))

(declare-fun m!4662613 () Bool)

(assert (=> b!4058082 m!4662613))

(declare-fun m!4662615 () Bool)

(assert (=> b!4058082 m!4662615))

(declare-fun m!4662617 () Bool)

(assert (=> b!4058082 m!4662617))

(declare-fun m!4662619 () Bool)

(assert (=> b!4058073 m!4662619))

(check-sat (not b!4058061) (not b!4058081) (not start!382716) (not b!4058062) (not b!4058064) (not b!4058043) (not b_next!113635) (not b!4058078) (not b!4058084) (not b!4058072) (not b!4058046) (not b!4058079) (not b_next!113639) b_and!312009 (not b!4058076) (not b!4058052) (not b!4058057) (not b_next!113633) (not b!4058042) (not b!4058059) (not b!4058058) (not b!4058073) b_and!312003 (not b!4058047) (not b!4058066) (not b!4058077) (not b!4058049) (not b!4058082) (not b!4058045) (not b!4058050) (not b_next!113637) (not b!4058068) tp_is_empty!20701 b_and!312007 (not b!4058048) b_and!312005 (not b!4058040) (not b!4058063) (not b!4058075) (not b!4058055) (not b!4058074) (not b!4058080) (not b!4058056) (not b!4058041) (not b!4058060) (not b!4058054))
(check-sat b_and!312009 (not b_next!113633) b_and!312003 (not b_next!113635) (not b_next!113637) b_and!312007 b_and!312005 (not b_next!113639))
(get-model)

(declare-fun d!1205599 () Bool)

(assert (=> d!1205599 (not (matchR!5818 (regex!6960 (rule!10050 token!484)) lt!1449266))))

(declare-fun lt!1449282 () Unit!62757)

(declare-fun choose!24654 (LexerInterface!6549 List!43499 Rule!13720 List!43497 List!43497 List!43497 Rule!13720) Unit!62757)

(assert (=> d!1205599 (= lt!1449282 (choose!24654 thiss!21717 rules!2999 (rule!10050 (_1!24351 (v!39791 lt!1449276))) lt!1449249 lt!1449255 lt!1449266 (rule!10050 token!484)))))

(assert (=> d!1205599 (isPrefix!4047 lt!1449249 lt!1449255)))

(assert (=> d!1205599 (= (lemmaMaxPrefixOutputsMaxPrefix!486 thiss!21717 rules!2999 (rule!10050 (_1!24351 (v!39791 lt!1449276))) lt!1449249 lt!1449255 lt!1449266 (rule!10050 token!484)) lt!1449282)))

(declare-fun bs!591905 () Bool)

(assert (= bs!591905 d!1205599))

(assert (=> bs!591905 m!4662611))

(declare-fun m!4662621 () Bool)

(assert (=> bs!591905 m!4662621))

(assert (=> bs!591905 m!4662537))

(assert (=> b!4058050 d!1205599))

(declare-fun b!4058095 () Bool)

(declare-fun res!1655033 () Bool)

(declare-fun e!2518265 () Bool)

(assert (=> b!4058095 (=> (not res!1655033) (not e!2518265))))

(declare-fun lt!1449285 () List!43497)

(assert (=> b!4058095 (= res!1655033 (= (size!32428 lt!1449285) (+ (size!32428 prefix!494) (size!32428 newSuffix!27))))))

(declare-fun b!4058093 () Bool)

(declare-fun e!2518266 () List!43497)

(assert (=> b!4058093 (= e!2518266 newSuffix!27)))

(declare-fun b!4058094 () Bool)

(assert (=> b!4058094 (= e!2518266 (Cons!43373 (h!48793 prefix!494) (++!11362 (t!336350 prefix!494) newSuffix!27)))))

(declare-fun d!1205601 () Bool)

(assert (=> d!1205601 e!2518265))

(declare-fun res!1655034 () Bool)

(assert (=> d!1205601 (=> (not res!1655034) (not e!2518265))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6612 (List!43497) (InoxSet C!23916))

(assert (=> d!1205601 (= res!1655034 (= (content!6612 lt!1449285) ((_ map or) (content!6612 prefix!494) (content!6612 newSuffix!27))))))

(assert (=> d!1205601 (= lt!1449285 e!2518266)))

(declare-fun c!700784 () Bool)

(assert (=> d!1205601 (= c!700784 ((_ is Nil!43373) prefix!494))))

(assert (=> d!1205601 (= (++!11362 prefix!494 newSuffix!27) lt!1449285)))

(declare-fun b!4058096 () Bool)

(assert (=> b!4058096 (= e!2518265 (or (not (= newSuffix!27 Nil!43373)) (= lt!1449285 prefix!494)))))

(assert (= (and d!1205601 c!700784) b!4058093))

(assert (= (and d!1205601 (not c!700784)) b!4058094))

(assert (= (and d!1205601 res!1655034) b!4058095))

(assert (= (and b!4058095 res!1655033) b!4058096))

(declare-fun m!4662623 () Bool)

(assert (=> b!4058095 m!4662623))

(assert (=> b!4058095 m!4662531))

(assert (=> b!4058095 m!4662513))

(declare-fun m!4662625 () Bool)

(assert (=> b!4058094 m!4662625))

(declare-fun m!4662627 () Bool)

(assert (=> d!1205601 m!4662627))

(declare-fun m!4662629 () Bool)

(assert (=> d!1205601 m!4662629))

(declare-fun m!4662631 () Bool)

(assert (=> d!1205601 m!4662631))

(assert (=> b!4058072 d!1205601))

(declare-fun b!4058099 () Bool)

(declare-fun res!1655036 () Bool)

(declare-fun e!2518267 () Bool)

(assert (=> b!4058099 (=> (not res!1655036) (not e!2518267))))

(declare-fun lt!1449286 () List!43497)

(assert (=> b!4058099 (= res!1655036 (= (size!32428 lt!1449286) (+ (size!32428 lt!1449266) (size!32428 newSuffixResult!27))))))

(declare-fun b!4058097 () Bool)

(declare-fun e!2518268 () List!43497)

(assert (=> b!4058097 (= e!2518268 newSuffixResult!27)))

(declare-fun b!4058098 () Bool)

(assert (=> b!4058098 (= e!2518268 (Cons!43373 (h!48793 lt!1449266) (++!11362 (t!336350 lt!1449266) newSuffixResult!27)))))

(declare-fun d!1205603 () Bool)

(assert (=> d!1205603 e!2518267))

(declare-fun res!1655037 () Bool)

(assert (=> d!1205603 (=> (not res!1655037) (not e!2518267))))

(assert (=> d!1205603 (= res!1655037 (= (content!6612 lt!1449286) ((_ map or) (content!6612 lt!1449266) (content!6612 newSuffixResult!27))))))

(assert (=> d!1205603 (= lt!1449286 e!2518268)))

(declare-fun c!700785 () Bool)

(assert (=> d!1205603 (= c!700785 ((_ is Nil!43373) lt!1449266))))

(assert (=> d!1205603 (= (++!11362 lt!1449266 newSuffixResult!27) lt!1449286)))

(declare-fun b!4058100 () Bool)

(assert (=> b!4058100 (= e!2518267 (or (not (= newSuffixResult!27 Nil!43373)) (= lt!1449286 lt!1449266)))))

(assert (= (and d!1205603 c!700785) b!4058097))

(assert (= (and d!1205603 (not c!700785)) b!4058098))

(assert (= (and d!1205603 res!1655037) b!4058099))

(assert (= (and b!4058099 res!1655036) b!4058100))

(declare-fun m!4662633 () Bool)

(assert (=> b!4058099 m!4662633))

(assert (=> b!4058099 m!4662529))

(declare-fun m!4662635 () Bool)

(assert (=> b!4058099 m!4662635))

(declare-fun m!4662637 () Bool)

(assert (=> b!4058098 m!4662637))

(declare-fun m!4662639 () Bool)

(assert (=> d!1205603 m!4662639))

(declare-fun m!4662641 () Bool)

(assert (=> d!1205603 m!4662641))

(declare-fun m!4662643 () Bool)

(assert (=> d!1205603 m!4662643))

(assert (=> b!4058072 d!1205603))

(declare-fun d!1205605 () Bool)

(assert (=> d!1205605 (isPrefix!4047 lt!1449266 (++!11362 lt!1449266 suffixResult!105))))

(declare-fun lt!1449289 () Unit!62757)

(declare-fun choose!24655 (List!43497 List!43497) Unit!62757)

(assert (=> d!1205605 (= lt!1449289 (choose!24655 lt!1449266 suffixResult!105))))

(assert (=> d!1205605 (= (lemmaConcatTwoListThenFirstIsPrefix!2882 lt!1449266 suffixResult!105) lt!1449289)))

(declare-fun bs!591906 () Bool)

(assert (= bs!591906 d!1205605))

(assert (=> bs!591906 m!4662545))

(assert (=> bs!591906 m!4662545))

(declare-fun m!4662645 () Bool)

(assert (=> bs!591906 m!4662645))

(declare-fun m!4662647 () Bool)

(assert (=> bs!591906 m!4662647))

(assert (=> b!4058049 d!1205605))

(declare-fun b!4058115 () Bool)

(declare-fun e!2518277 () Bool)

(declare-fun tail!6303 (List!43497) List!43497)

(assert (=> b!4058115 (= e!2518277 (isPrefix!4047 (tail!6303 lt!1449266) (tail!6303 lt!1449231)))))

(declare-fun b!4058113 () Bool)

(declare-fun e!2518279 () Bool)

(assert (=> b!4058113 (= e!2518279 e!2518277)))

(declare-fun res!1655048 () Bool)

(assert (=> b!4058113 (=> (not res!1655048) (not e!2518277))))

(assert (=> b!4058113 (= res!1655048 (not ((_ is Nil!43373) lt!1449231)))))

(declare-fun b!4058114 () Bool)

(declare-fun res!1655049 () Bool)

(assert (=> b!4058114 (=> (not res!1655049) (not e!2518277))))

(declare-fun head!8571 (List!43497) C!23916)

(assert (=> b!4058114 (= res!1655049 (= (head!8571 lt!1449266) (head!8571 lt!1449231)))))

(declare-fun d!1205607 () Bool)

(declare-fun e!2518278 () Bool)

(assert (=> d!1205607 e!2518278))

(declare-fun res!1655050 () Bool)

(assert (=> d!1205607 (=> res!1655050 e!2518278)))

(declare-fun lt!1449294 () Bool)

(assert (=> d!1205607 (= res!1655050 (not lt!1449294))))

(assert (=> d!1205607 (= lt!1449294 e!2518279)))

(declare-fun res!1655051 () Bool)

(assert (=> d!1205607 (=> res!1655051 e!2518279)))

(assert (=> d!1205607 (= res!1655051 ((_ is Nil!43373) lt!1449266))))

(assert (=> d!1205607 (= (isPrefix!4047 lt!1449266 lt!1449231) lt!1449294)))

(declare-fun b!4058116 () Bool)

(assert (=> b!4058116 (= e!2518278 (>= (size!32428 lt!1449231) (size!32428 lt!1449266)))))

(assert (= (and d!1205607 (not res!1655051)) b!4058113))

(assert (= (and b!4058113 res!1655048) b!4058114))

(assert (= (and b!4058114 res!1655049) b!4058115))

(assert (= (and d!1205607 (not res!1655050)) b!4058116))

(declare-fun m!4662649 () Bool)

(assert (=> b!4058115 m!4662649))

(declare-fun m!4662651 () Bool)

(assert (=> b!4058115 m!4662651))

(assert (=> b!4058115 m!4662649))

(assert (=> b!4058115 m!4662651))

(declare-fun m!4662653 () Bool)

(assert (=> b!4058115 m!4662653))

(declare-fun m!4662655 () Bool)

(assert (=> b!4058114 m!4662655))

(declare-fun m!4662657 () Bool)

(assert (=> b!4058114 m!4662657))

(declare-fun m!4662659 () Bool)

(assert (=> b!4058116 m!4662659))

(assert (=> b!4058116 m!4662529))

(assert (=> b!4058049 d!1205607))

(declare-fun b!4058143 () Bool)

(declare-fun e!2518292 () Bool)

(assert (=> b!4058143 (= e!2518292 (isPrefix!4047 (tail!6303 lt!1449266) (tail!6303 lt!1449257)))))

(declare-fun b!4058141 () Bool)

(declare-fun e!2518294 () Bool)

(assert (=> b!4058141 (= e!2518294 e!2518292)))

(declare-fun res!1655068 () Bool)

(assert (=> b!4058141 (=> (not res!1655068) (not e!2518292))))

(assert (=> b!4058141 (= res!1655068 (not ((_ is Nil!43373) lt!1449257)))))

(declare-fun b!4058142 () Bool)

(declare-fun res!1655069 () Bool)

(assert (=> b!4058142 (=> (not res!1655069) (not e!2518292))))

(assert (=> b!4058142 (= res!1655069 (= (head!8571 lt!1449266) (head!8571 lt!1449257)))))

(declare-fun d!1205611 () Bool)

(declare-fun e!2518293 () Bool)

(assert (=> d!1205611 e!2518293))

(declare-fun res!1655070 () Bool)

(assert (=> d!1205611 (=> res!1655070 e!2518293)))

(declare-fun lt!1449295 () Bool)

(assert (=> d!1205611 (= res!1655070 (not lt!1449295))))

(assert (=> d!1205611 (= lt!1449295 e!2518294)))

(declare-fun res!1655071 () Bool)

(assert (=> d!1205611 (=> res!1655071 e!2518294)))

(assert (=> d!1205611 (= res!1655071 ((_ is Nil!43373) lt!1449266))))

(assert (=> d!1205611 (= (isPrefix!4047 lt!1449266 lt!1449257) lt!1449295)))

(declare-fun b!4058144 () Bool)

(assert (=> b!4058144 (= e!2518293 (>= (size!32428 lt!1449257) (size!32428 lt!1449266)))))

(assert (= (and d!1205611 (not res!1655071)) b!4058141))

(assert (= (and b!4058141 res!1655068) b!4058142))

(assert (= (and b!4058142 res!1655069) b!4058143))

(assert (= (and d!1205611 (not res!1655070)) b!4058144))

(assert (=> b!4058143 m!4662649))

(declare-fun m!4662661 () Bool)

(assert (=> b!4058143 m!4662661))

(assert (=> b!4058143 m!4662649))

(assert (=> b!4058143 m!4662661))

(declare-fun m!4662663 () Bool)

(assert (=> b!4058143 m!4662663))

(assert (=> b!4058142 m!4662655))

(declare-fun m!4662665 () Bool)

(assert (=> b!4058142 m!4662665))

(declare-fun m!4662667 () Bool)

(assert (=> b!4058144 m!4662667))

(assert (=> b!4058144 m!4662529))

(assert (=> b!4058049 d!1205611))

(declare-fun b!4058147 () Bool)

(declare-fun e!2518295 () Bool)

(assert (=> b!4058147 (= e!2518295 (isPrefix!4047 (tail!6303 prefix!494) (tail!6303 lt!1449231)))))

(declare-fun b!4058145 () Bool)

(declare-fun e!2518297 () Bool)

(assert (=> b!4058145 (= e!2518297 e!2518295)))

(declare-fun res!1655072 () Bool)

(assert (=> b!4058145 (=> (not res!1655072) (not e!2518295))))

(assert (=> b!4058145 (= res!1655072 (not ((_ is Nil!43373) lt!1449231)))))

(declare-fun b!4058146 () Bool)

(declare-fun res!1655073 () Bool)

(assert (=> b!4058146 (=> (not res!1655073) (not e!2518295))))

(assert (=> b!4058146 (= res!1655073 (= (head!8571 prefix!494) (head!8571 lt!1449231)))))

(declare-fun d!1205613 () Bool)

(declare-fun e!2518296 () Bool)

(assert (=> d!1205613 e!2518296))

(declare-fun res!1655074 () Bool)

(assert (=> d!1205613 (=> res!1655074 e!2518296)))

(declare-fun lt!1449296 () Bool)

(assert (=> d!1205613 (= res!1655074 (not lt!1449296))))

(assert (=> d!1205613 (= lt!1449296 e!2518297)))

(declare-fun res!1655075 () Bool)

(assert (=> d!1205613 (=> res!1655075 e!2518297)))

(assert (=> d!1205613 (= res!1655075 ((_ is Nil!43373) prefix!494))))

(assert (=> d!1205613 (= (isPrefix!4047 prefix!494 lt!1449231) lt!1449296)))

(declare-fun b!4058148 () Bool)

(assert (=> b!4058148 (= e!2518296 (>= (size!32428 lt!1449231) (size!32428 prefix!494)))))

(assert (= (and d!1205613 (not res!1655075)) b!4058145))

(assert (= (and b!4058145 res!1655072) b!4058146))

(assert (= (and b!4058146 res!1655073) b!4058147))

(assert (= (and d!1205613 (not res!1655074)) b!4058148))

(declare-fun m!4662669 () Bool)

(assert (=> b!4058147 m!4662669))

(assert (=> b!4058147 m!4662651))

(assert (=> b!4058147 m!4662669))

(assert (=> b!4058147 m!4662651))

(declare-fun m!4662671 () Bool)

(assert (=> b!4058147 m!4662671))

(declare-fun m!4662673 () Bool)

(assert (=> b!4058146 m!4662673))

(assert (=> b!4058146 m!4662657))

(assert (=> b!4058148 m!4662659))

(assert (=> b!4058148 m!4662531))

(assert (=> b!4058049 d!1205613))

(declare-fun d!1205615 () Bool)

(assert (=> d!1205615 (isPrefix!4047 prefix!494 (++!11362 prefix!494 suffix!1299))))

(declare-fun lt!1449297 () Unit!62757)

(assert (=> d!1205615 (= lt!1449297 (choose!24655 prefix!494 suffix!1299))))

(assert (=> d!1205615 (= (lemmaConcatTwoListThenFirstIsPrefix!2882 prefix!494 suffix!1299) lt!1449297)))

(declare-fun bs!591907 () Bool)

(assert (= bs!591907 d!1205615))

(assert (=> bs!591907 m!4662509))

(assert (=> bs!591907 m!4662509))

(declare-fun m!4662675 () Bool)

(assert (=> bs!591907 m!4662675))

(declare-fun m!4662677 () Bool)

(assert (=> bs!591907 m!4662677))

(assert (=> b!4058049 d!1205615))

(declare-fun b!4058264 () Bool)

(declare-fun res!1655155 () Bool)

(declare-fun e!2518355 () Bool)

(assert (=> b!4058264 (=> (not res!1655155) (not e!2518355))))

(declare-fun lt!1449345 () Option!9374)

(declare-fun get!14226 (Option!9374) tuple2!42434)

(assert (=> b!4058264 (= res!1655155 (matchR!5818 (regex!6960 (rule!10050 (_1!24351 (get!14226 lt!1449345)))) (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449345))))))))

(declare-fun call!288059 () Option!9374)

(declare-fun bm!288054 () Bool)

(assert (=> bm!288054 (= call!288059 (maxPrefixOneRule!2859 thiss!21717 (h!48795 rules!2999) lt!1449231))))

(declare-fun b!4058265 () Bool)

(declare-fun e!2518354 () Bool)

(assert (=> b!4058265 (= e!2518354 e!2518355)))

(declare-fun res!1655152 () Bool)

(assert (=> b!4058265 (=> (not res!1655152) (not e!2518355))))

(declare-fun isDefined!7122 (Option!9374) Bool)

(assert (=> b!4058265 (= res!1655152 (isDefined!7122 lt!1449345))))

(declare-fun b!4058266 () Bool)

(declare-fun res!1655154 () Bool)

(assert (=> b!4058266 (=> (not res!1655154) (not e!2518355))))

(assert (=> b!4058266 (= res!1655154 (= (value!218994 (_1!24351 (get!14226 lt!1449345))) (apply!10149 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449345)))) (seqFromList!5177 (originalCharacters!7560 (_1!24351 (get!14226 lt!1449345)))))))))

(declare-fun b!4058267 () Bool)

(declare-fun res!1655151 () Bool)

(assert (=> b!4058267 (=> (not res!1655151) (not e!2518355))))

(assert (=> b!4058267 (= res!1655151 (= (++!11362 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449345)))) (_2!24351 (get!14226 lt!1449345))) lt!1449231))))

(declare-fun d!1205617 () Bool)

(assert (=> d!1205617 e!2518354))

(declare-fun res!1655156 () Bool)

(assert (=> d!1205617 (=> res!1655156 e!2518354)))

(declare-fun isEmpty!25884 (Option!9374) Bool)

(assert (=> d!1205617 (= res!1655156 (isEmpty!25884 lt!1449345))))

(declare-fun e!2518356 () Option!9374)

(assert (=> d!1205617 (= lt!1449345 e!2518356)))

(declare-fun c!700810 () Bool)

(assert (=> d!1205617 (= c!700810 (and ((_ is Cons!43375) rules!2999) ((_ is Nil!43375) (t!336352 rules!2999))))))

(declare-fun lt!1449346 () Unit!62757)

(declare-fun lt!1449347 () Unit!62757)

(assert (=> d!1205617 (= lt!1449346 lt!1449347)))

(assert (=> d!1205617 (isPrefix!4047 lt!1449231 lt!1449231)))

(assert (=> d!1205617 (= lt!1449347 (lemmaIsPrefixRefl!2614 lt!1449231 lt!1449231))))

(declare-fun rulesValidInductive!2543 (LexerInterface!6549 List!43499) Bool)

(assert (=> d!1205617 (rulesValidInductive!2543 thiss!21717 rules!2999)))

(assert (=> d!1205617 (= (maxPrefix!3847 thiss!21717 rules!2999 lt!1449231) lt!1449345)))

(declare-fun b!4058268 () Bool)

(declare-fun contains!8628 (List!43499 Rule!13720) Bool)

(assert (=> b!4058268 (= e!2518355 (contains!8628 rules!2999 (rule!10050 (_1!24351 (get!14226 lt!1449345)))))))

(declare-fun b!4058269 () Bool)

(assert (=> b!4058269 (= e!2518356 call!288059)))

(declare-fun b!4058270 () Bool)

(declare-fun res!1655153 () Bool)

(assert (=> b!4058270 (=> (not res!1655153) (not e!2518355))))

(assert (=> b!4058270 (= res!1655153 (= (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449345)))) (originalCharacters!7560 (_1!24351 (get!14226 lt!1449345)))))))

(declare-fun b!4058271 () Bool)

(declare-fun res!1655150 () Bool)

(assert (=> b!4058271 (=> (not res!1655150) (not e!2518355))))

(assert (=> b!4058271 (= res!1655150 (< (size!32428 (_2!24351 (get!14226 lt!1449345))) (size!32428 lt!1449231)))))

(declare-fun b!4058272 () Bool)

(declare-fun lt!1449348 () Option!9374)

(declare-fun lt!1449349 () Option!9374)

(assert (=> b!4058272 (= e!2518356 (ite (and ((_ is None!9373) lt!1449348) ((_ is None!9373) lt!1449349)) None!9373 (ite ((_ is None!9373) lt!1449349) lt!1449348 (ite ((_ is None!9373) lt!1449348) lt!1449349 (ite (>= (size!32427 (_1!24351 (v!39791 lt!1449348))) (size!32427 (_1!24351 (v!39791 lt!1449349)))) lt!1449348 lt!1449349)))))))

(assert (=> b!4058272 (= lt!1449348 call!288059)))

(assert (=> b!4058272 (= lt!1449349 (maxPrefix!3847 thiss!21717 (t!336352 rules!2999) lt!1449231))))

(assert (= (and d!1205617 c!700810) b!4058269))

(assert (= (and d!1205617 (not c!700810)) b!4058272))

(assert (= (or b!4058269 b!4058272) bm!288054))

(assert (= (and d!1205617 (not res!1655156)) b!4058265))

(assert (= (and b!4058265 res!1655152) b!4058270))

(assert (= (and b!4058270 res!1655153) b!4058271))

(assert (= (and b!4058271 res!1655150) b!4058267))

(assert (= (and b!4058267 res!1655151) b!4058266))

(assert (= (and b!4058266 res!1655154) b!4058264))

(assert (= (and b!4058264 res!1655155) b!4058268))

(declare-fun m!4662793 () Bool)

(assert (=> b!4058266 m!4662793))

(declare-fun m!4662795 () Bool)

(assert (=> b!4058266 m!4662795))

(assert (=> b!4058266 m!4662795))

(declare-fun m!4662797 () Bool)

(assert (=> b!4058266 m!4662797))

(assert (=> b!4058268 m!4662793))

(declare-fun m!4662799 () Bool)

(assert (=> b!4058268 m!4662799))

(assert (=> b!4058270 m!4662793))

(declare-fun m!4662801 () Bool)

(assert (=> b!4058270 m!4662801))

(assert (=> b!4058270 m!4662801))

(declare-fun m!4662803 () Bool)

(assert (=> b!4058270 m!4662803))

(declare-fun m!4662805 () Bool)

(assert (=> b!4058265 m!4662805))

(declare-fun m!4662807 () Bool)

(assert (=> d!1205617 m!4662807))

(assert (=> d!1205617 m!4662457))

(assert (=> d!1205617 m!4662459))

(declare-fun m!4662809 () Bool)

(assert (=> d!1205617 m!4662809))

(assert (=> b!4058267 m!4662793))

(assert (=> b!4058267 m!4662801))

(assert (=> b!4058267 m!4662801))

(assert (=> b!4058267 m!4662803))

(assert (=> b!4058267 m!4662803))

(declare-fun m!4662815 () Bool)

(assert (=> b!4058267 m!4662815))

(declare-fun m!4662817 () Bool)

(assert (=> b!4058272 m!4662817))

(declare-fun m!4662819 () Bool)

(assert (=> bm!288054 m!4662819))

(assert (=> b!4058264 m!4662793))

(assert (=> b!4058264 m!4662801))

(assert (=> b!4058264 m!4662801))

(assert (=> b!4058264 m!4662803))

(assert (=> b!4058264 m!4662803))

(declare-fun m!4662827 () Bool)

(assert (=> b!4058264 m!4662827))

(assert (=> b!4058271 m!4662793))

(declare-fun m!4662829 () Bool)

(assert (=> b!4058271 m!4662829))

(assert (=> b!4058271 m!4662659))

(assert (=> b!4058074 d!1205617))

(declare-fun b!4058290 () Bool)

(declare-fun res!1655170 () Bool)

(declare-fun e!2518368 () Bool)

(assert (=> b!4058290 (=> (not res!1655170) (not e!2518368))))

(declare-fun lt!1449353 () List!43497)

(assert (=> b!4058290 (= res!1655170 (= (size!32428 lt!1449353) (+ (size!32428 prefix!494) (size!32428 suffix!1299))))))

(declare-fun b!4058288 () Bool)

(declare-fun e!2518369 () List!43497)

(assert (=> b!4058288 (= e!2518369 suffix!1299)))

(declare-fun b!4058289 () Bool)

(assert (=> b!4058289 (= e!2518369 (Cons!43373 (h!48793 prefix!494) (++!11362 (t!336350 prefix!494) suffix!1299)))))

(declare-fun d!1205655 () Bool)

(assert (=> d!1205655 e!2518368))

(declare-fun res!1655171 () Bool)

(assert (=> d!1205655 (=> (not res!1655171) (not e!2518368))))

(assert (=> d!1205655 (= res!1655171 (= (content!6612 lt!1449353) ((_ map or) (content!6612 prefix!494) (content!6612 suffix!1299))))))

(assert (=> d!1205655 (= lt!1449353 e!2518369)))

(declare-fun c!700812 () Bool)

(assert (=> d!1205655 (= c!700812 ((_ is Nil!43373) prefix!494))))

(assert (=> d!1205655 (= (++!11362 prefix!494 suffix!1299) lt!1449353)))

(declare-fun b!4058291 () Bool)

(assert (=> b!4058291 (= e!2518368 (or (not (= suffix!1299 Nil!43373)) (= lt!1449353 prefix!494)))))

(assert (= (and d!1205655 c!700812) b!4058288))

(assert (= (and d!1205655 (not c!700812)) b!4058289))

(assert (= (and d!1205655 res!1655171) b!4058290))

(assert (= (and b!4058290 res!1655170) b!4058291))

(declare-fun m!4662843 () Bool)

(assert (=> b!4058290 m!4662843))

(assert (=> b!4058290 m!4662531))

(assert (=> b!4058290 m!4662511))

(declare-fun m!4662845 () Bool)

(assert (=> b!4058289 m!4662845))

(declare-fun m!4662847 () Bool)

(assert (=> d!1205655 m!4662847))

(assert (=> d!1205655 m!4662629))

(declare-fun m!4662849 () Bool)

(assert (=> d!1205655 m!4662849))

(assert (=> b!4058074 d!1205655))

(declare-fun d!1205661 () Bool)

(declare-fun res!1655182 () Bool)

(declare-fun e!2518379 () Bool)

(assert (=> d!1205661 (=> (not res!1655182) (not e!2518379))))

(declare-fun rulesValid!2710 (LexerInterface!6549 List!43499) Bool)

(assert (=> d!1205661 (= res!1655182 (rulesValid!2710 thiss!21717 rules!2999))))

(assert (=> d!1205661 (= (rulesInvariant!5892 thiss!21717 rules!2999) e!2518379)))

(declare-fun b!4058308 () Bool)

(declare-datatypes ((List!43501 0))(
  ( (Nil!43377) (Cons!43377 (h!48797 String!49667) (t!336402 List!43501)) )
))
(declare-fun noDuplicateTag!2711 (LexerInterface!6549 List!43499 List!43501) Bool)

(assert (=> b!4058308 (= e!2518379 (noDuplicateTag!2711 thiss!21717 rules!2999 Nil!43377))))

(assert (= (and d!1205661 res!1655182) b!4058308))

(declare-fun m!4662859 () Bool)

(assert (=> d!1205661 m!4662859))

(declare-fun m!4662861 () Bool)

(assert (=> b!4058308 m!4662861))

(assert (=> b!4058073 d!1205661))

(declare-fun b!4058309 () Bool)

(declare-fun res!1655188 () Bool)

(declare-fun e!2518381 () Bool)

(assert (=> b!4058309 (=> (not res!1655188) (not e!2518381))))

(declare-fun lt!1449359 () Option!9374)

(assert (=> b!4058309 (= res!1655188 (matchR!5818 (regex!6960 (rule!10050 (_1!24351 (get!14226 lt!1449359)))) (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449359))))))))

(declare-fun bm!288056 () Bool)

(declare-fun call!288061 () Option!9374)

(assert (=> bm!288056 (= call!288061 (maxPrefixOneRule!2859 thiss!21717 (h!48795 rules!2999) lt!1449255))))

(declare-fun b!4058310 () Bool)

(declare-fun e!2518380 () Bool)

(assert (=> b!4058310 (= e!2518380 e!2518381)))

(declare-fun res!1655185 () Bool)

(assert (=> b!4058310 (=> (not res!1655185) (not e!2518381))))

(assert (=> b!4058310 (= res!1655185 (isDefined!7122 lt!1449359))))

(declare-fun b!4058311 () Bool)

(declare-fun res!1655187 () Bool)

(assert (=> b!4058311 (=> (not res!1655187) (not e!2518381))))

(assert (=> b!4058311 (= res!1655187 (= (value!218994 (_1!24351 (get!14226 lt!1449359))) (apply!10149 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449359)))) (seqFromList!5177 (originalCharacters!7560 (_1!24351 (get!14226 lt!1449359)))))))))

(declare-fun b!4058312 () Bool)

(declare-fun res!1655184 () Bool)

(assert (=> b!4058312 (=> (not res!1655184) (not e!2518381))))

(assert (=> b!4058312 (= res!1655184 (= (++!11362 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449359)))) (_2!24351 (get!14226 lt!1449359))) lt!1449255))))

(declare-fun d!1205665 () Bool)

(assert (=> d!1205665 e!2518380))

(declare-fun res!1655189 () Bool)

(assert (=> d!1205665 (=> res!1655189 e!2518380)))

(assert (=> d!1205665 (= res!1655189 (isEmpty!25884 lt!1449359))))

(declare-fun e!2518382 () Option!9374)

(assert (=> d!1205665 (= lt!1449359 e!2518382)))

(declare-fun c!700816 () Bool)

(assert (=> d!1205665 (= c!700816 (and ((_ is Cons!43375) rules!2999) ((_ is Nil!43375) (t!336352 rules!2999))))))

(declare-fun lt!1449360 () Unit!62757)

(declare-fun lt!1449361 () Unit!62757)

(assert (=> d!1205665 (= lt!1449360 lt!1449361)))

(assert (=> d!1205665 (isPrefix!4047 lt!1449255 lt!1449255)))

(assert (=> d!1205665 (= lt!1449361 (lemmaIsPrefixRefl!2614 lt!1449255 lt!1449255))))

(assert (=> d!1205665 (rulesValidInductive!2543 thiss!21717 rules!2999)))

(assert (=> d!1205665 (= (maxPrefix!3847 thiss!21717 rules!2999 lt!1449255) lt!1449359)))

(declare-fun b!4058313 () Bool)

(assert (=> b!4058313 (= e!2518381 (contains!8628 rules!2999 (rule!10050 (_1!24351 (get!14226 lt!1449359)))))))

(declare-fun b!4058314 () Bool)

(assert (=> b!4058314 (= e!2518382 call!288061)))

(declare-fun b!4058315 () Bool)

(declare-fun res!1655186 () Bool)

(assert (=> b!4058315 (=> (not res!1655186) (not e!2518381))))

(assert (=> b!4058315 (= res!1655186 (= (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449359)))) (originalCharacters!7560 (_1!24351 (get!14226 lt!1449359)))))))

(declare-fun b!4058316 () Bool)

(declare-fun res!1655183 () Bool)

(assert (=> b!4058316 (=> (not res!1655183) (not e!2518381))))

(assert (=> b!4058316 (= res!1655183 (< (size!32428 (_2!24351 (get!14226 lt!1449359))) (size!32428 lt!1449255)))))

(declare-fun b!4058317 () Bool)

(declare-fun lt!1449362 () Option!9374)

(declare-fun lt!1449363 () Option!9374)

(assert (=> b!4058317 (= e!2518382 (ite (and ((_ is None!9373) lt!1449362) ((_ is None!9373) lt!1449363)) None!9373 (ite ((_ is None!9373) lt!1449363) lt!1449362 (ite ((_ is None!9373) lt!1449362) lt!1449363 (ite (>= (size!32427 (_1!24351 (v!39791 lt!1449362))) (size!32427 (_1!24351 (v!39791 lt!1449363)))) lt!1449362 lt!1449363)))))))

(assert (=> b!4058317 (= lt!1449362 call!288061)))

(assert (=> b!4058317 (= lt!1449363 (maxPrefix!3847 thiss!21717 (t!336352 rules!2999) lt!1449255))))

(assert (= (and d!1205665 c!700816) b!4058314))

(assert (= (and d!1205665 (not c!700816)) b!4058317))

(assert (= (or b!4058314 b!4058317) bm!288056))

(assert (= (and d!1205665 (not res!1655189)) b!4058310))

(assert (= (and b!4058310 res!1655185) b!4058315))

(assert (= (and b!4058315 res!1655186) b!4058316))

(assert (= (and b!4058316 res!1655183) b!4058312))

(assert (= (and b!4058312 res!1655184) b!4058311))

(assert (= (and b!4058311 res!1655187) b!4058309))

(assert (= (and b!4058309 res!1655188) b!4058313))

(declare-fun m!4662865 () Bool)

(assert (=> b!4058311 m!4662865))

(declare-fun m!4662867 () Bool)

(assert (=> b!4058311 m!4662867))

(assert (=> b!4058311 m!4662867))

(declare-fun m!4662869 () Bool)

(assert (=> b!4058311 m!4662869))

(assert (=> b!4058313 m!4662865))

(declare-fun m!4662871 () Bool)

(assert (=> b!4058313 m!4662871))

(assert (=> b!4058315 m!4662865))

(declare-fun m!4662873 () Bool)

(assert (=> b!4058315 m!4662873))

(assert (=> b!4058315 m!4662873))

(declare-fun m!4662877 () Bool)

(assert (=> b!4058315 m!4662877))

(declare-fun m!4662879 () Bool)

(assert (=> b!4058310 m!4662879))

(declare-fun m!4662881 () Bool)

(assert (=> d!1205665 m!4662881))

(declare-fun m!4662883 () Bool)

(assert (=> d!1205665 m!4662883))

(declare-fun m!4662885 () Bool)

(assert (=> d!1205665 m!4662885))

(assert (=> d!1205665 m!4662809))

(assert (=> b!4058312 m!4662865))

(assert (=> b!4058312 m!4662873))

(assert (=> b!4058312 m!4662873))

(assert (=> b!4058312 m!4662877))

(assert (=> b!4058312 m!4662877))

(declare-fun m!4662887 () Bool)

(assert (=> b!4058312 m!4662887))

(declare-fun m!4662889 () Bool)

(assert (=> b!4058317 m!4662889))

(declare-fun m!4662891 () Bool)

(assert (=> bm!288056 m!4662891))

(assert (=> b!4058309 m!4662865))

(assert (=> b!4058309 m!4662873))

(assert (=> b!4058309 m!4662873))

(assert (=> b!4058309 m!4662877))

(assert (=> b!4058309 m!4662877))

(declare-fun m!4662895 () Bool)

(assert (=> b!4058309 m!4662895))

(assert (=> b!4058316 m!4662865))

(declare-fun m!4662899 () Bool)

(assert (=> b!4058316 m!4662899))

(declare-fun m!4662901 () Bool)

(assert (=> b!4058316 m!4662901))

(assert (=> b!4058052 d!1205665))

(declare-fun d!1205671 () Bool)

(assert (=> d!1205671 (= suffixResult!105 lt!1449232)))

(declare-fun lt!1449373 () Unit!62757)

(declare-fun choose!24657 (List!43497 List!43497 List!43497 List!43497 List!43497) Unit!62757)

(assert (=> d!1205671 (= lt!1449373 (choose!24657 lt!1449266 suffixResult!105 lt!1449266 lt!1449232 lt!1449231))))

(assert (=> d!1205671 (isPrefix!4047 lt!1449266 lt!1449231)))

(assert (=> d!1205671 (= (lemmaSamePrefixThenSameSuffix!2208 lt!1449266 suffixResult!105 lt!1449266 lt!1449232 lt!1449231) lt!1449373)))

(declare-fun bs!591914 () Bool)

(assert (= bs!591914 d!1205671))

(declare-fun m!4662909 () Bool)

(assert (=> bs!591914 m!4662909))

(assert (=> bs!591914 m!4662561))

(assert (=> b!4058052 d!1205671))

(declare-fun b!4058344 () Bool)

(declare-fun e!2518396 () Bool)

(assert (=> b!4058344 (= e!2518396 (isPrefix!4047 (tail!6303 lt!1449266) (tail!6303 lt!1449229)))))

(declare-fun b!4058342 () Bool)

(declare-fun e!2518398 () Bool)

(assert (=> b!4058342 (= e!2518398 e!2518396)))

(declare-fun res!1655198 () Bool)

(assert (=> b!4058342 (=> (not res!1655198) (not e!2518396))))

(assert (=> b!4058342 (= res!1655198 (not ((_ is Nil!43373) lt!1449229)))))

(declare-fun b!4058343 () Bool)

(declare-fun res!1655199 () Bool)

(assert (=> b!4058343 (=> (not res!1655199) (not e!2518396))))

(assert (=> b!4058343 (= res!1655199 (= (head!8571 lt!1449266) (head!8571 lt!1449229)))))

(declare-fun d!1205677 () Bool)

(declare-fun e!2518397 () Bool)

(assert (=> d!1205677 e!2518397))

(declare-fun res!1655200 () Bool)

(assert (=> d!1205677 (=> res!1655200 e!2518397)))

(declare-fun lt!1449374 () Bool)

(assert (=> d!1205677 (= res!1655200 (not lt!1449374))))

(assert (=> d!1205677 (= lt!1449374 e!2518398)))

(declare-fun res!1655201 () Bool)

(assert (=> d!1205677 (=> res!1655201 e!2518398)))

(assert (=> d!1205677 (= res!1655201 ((_ is Nil!43373) lt!1449266))))

(assert (=> d!1205677 (= (isPrefix!4047 lt!1449266 lt!1449229) lt!1449374)))

(declare-fun b!4058345 () Bool)

(assert (=> b!4058345 (= e!2518397 (>= (size!32428 lt!1449229) (size!32428 lt!1449266)))))

(assert (= (and d!1205677 (not res!1655201)) b!4058342))

(assert (= (and b!4058342 res!1655198) b!4058343))

(assert (= (and b!4058343 res!1655199) b!4058344))

(assert (= (and d!1205677 (not res!1655200)) b!4058345))

(assert (=> b!4058344 m!4662649))

(declare-fun m!4662915 () Bool)

(assert (=> b!4058344 m!4662915))

(assert (=> b!4058344 m!4662649))

(assert (=> b!4058344 m!4662915))

(declare-fun m!4662917 () Bool)

(assert (=> b!4058344 m!4662917))

(assert (=> b!4058343 m!4662655))

(declare-fun m!4662919 () Bool)

(assert (=> b!4058343 m!4662919))

(declare-fun m!4662921 () Bool)

(assert (=> b!4058345 m!4662921))

(assert (=> b!4058345 m!4662529))

(assert (=> b!4058052 d!1205677))

(declare-fun d!1205681 () Bool)

(assert (=> d!1205681 (isPrefix!4047 lt!1449266 (++!11362 lt!1449266 lt!1449232))))

(declare-fun lt!1449377 () Unit!62757)

(assert (=> d!1205681 (= lt!1449377 (choose!24655 lt!1449266 lt!1449232))))

(assert (=> d!1205681 (= (lemmaConcatTwoListThenFirstIsPrefix!2882 lt!1449266 lt!1449232) lt!1449377)))

(declare-fun bs!591915 () Bool)

(assert (= bs!591915 d!1205681))

(assert (=> bs!591915 m!4662453))

(assert (=> bs!591915 m!4662453))

(declare-fun m!4662927 () Bool)

(assert (=> bs!591915 m!4662927))

(declare-fun m!4662929 () Bool)

(assert (=> bs!591915 m!4662929))

(assert (=> b!4058052 d!1205681))

(declare-fun d!1205685 () Bool)

(declare-fun lt!1449385 () Int)

(assert (=> d!1205685 (>= lt!1449385 0)))

(declare-fun e!2518405 () Int)

(assert (=> d!1205685 (= lt!1449385 e!2518405)))

(declare-fun c!700831 () Bool)

(assert (=> d!1205685 (= c!700831 ((_ is Nil!43373) lt!1449266))))

(assert (=> d!1205685 (= (size!32428 lt!1449266) lt!1449385)))

(declare-fun b!4058358 () Bool)

(assert (=> b!4058358 (= e!2518405 0)))

(declare-fun b!4058359 () Bool)

(assert (=> b!4058359 (= e!2518405 (+ 1 (size!32428 (t!336350 lt!1449266))))))

(assert (= (and d!1205685 c!700831) b!4058358))

(assert (= (and d!1205685 (not c!700831)) b!4058359))

(declare-fun m!4662933 () Bool)

(assert (=> b!4058359 m!4662933))

(assert (=> b!4058055 d!1205685))

(declare-fun d!1205689 () Bool)

(declare-fun lt!1449387 () Int)

(assert (=> d!1205689 (>= lt!1449387 0)))

(declare-fun e!2518406 () Int)

(assert (=> d!1205689 (= lt!1449387 e!2518406)))

(declare-fun c!700832 () Bool)

(assert (=> d!1205689 (= c!700832 ((_ is Nil!43373) prefix!494))))

(assert (=> d!1205689 (= (size!32428 prefix!494) lt!1449387)))

(declare-fun b!4058360 () Bool)

(assert (=> b!4058360 (= e!2518406 0)))

(declare-fun b!4058361 () Bool)

(assert (=> b!4058361 (= e!2518406 (+ 1 (size!32428 (t!336350 prefix!494))))))

(assert (= (and d!1205689 c!700832) b!4058360))

(assert (= (and d!1205689 (not c!700832)) b!4058361))

(declare-fun m!4662937 () Bool)

(assert (=> b!4058361 m!4662937))

(assert (=> b!4058055 d!1205689))

(declare-fun d!1205693 () Bool)

(declare-fun list!16165 (Conc!13171) List!43497)

(assert (=> d!1205693 (= (list!16164 (charsOf!4776 token!484)) (list!16165 (c!700780 (charsOf!4776 token!484))))))

(declare-fun bs!591919 () Bool)

(assert (= bs!591919 d!1205693))

(declare-fun m!4662941 () Bool)

(assert (=> bs!591919 m!4662941))

(assert (=> b!4058055 d!1205693))

(declare-fun d!1205697 () Bool)

(declare-fun lt!1449398 () BalanceConc!25936)

(assert (=> d!1205697 (= (list!16164 lt!1449398) (originalCharacters!7560 token!484))))

(declare-fun dynLambda!18424 (Int TokenValue!7190) BalanceConc!25936)

(assert (=> d!1205697 (= lt!1449398 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 token!484))) (value!218994 token!484)))))

(assert (=> d!1205697 (= (charsOf!4776 token!484) lt!1449398)))

(declare-fun b_lambda!118573 () Bool)

(assert (=> (not b_lambda!118573) (not d!1205697)))

(declare-fun t!336358 () Bool)

(declare-fun tb!244085 () Bool)

(assert (=> (and b!4058071 (= (toChars!9375 (transformation!6960 (h!48795 rules!2999))) (toChars!9375 (transformation!6960 (rule!10050 token!484)))) t!336358) tb!244085))

(declare-fun b!4058387 () Bool)

(declare-fun e!2518419 () Bool)

(declare-fun tp!1229746 () Bool)

(declare-fun inv!57985 (Conc!13171) Bool)

(assert (=> b!4058387 (= e!2518419 (and (inv!57985 (c!700780 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 token!484))) (value!218994 token!484)))) tp!1229746))))

(declare-fun result!295780 () Bool)

(declare-fun inv!57986 (BalanceConc!25936) Bool)

(assert (=> tb!244085 (= result!295780 (and (inv!57986 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 token!484))) (value!218994 token!484))) e!2518419))))

(assert (= tb!244085 b!4058387))

(declare-fun m!4663007 () Bool)

(assert (=> b!4058387 m!4663007))

(declare-fun m!4663009 () Bool)

(assert (=> tb!244085 m!4663009))

(assert (=> d!1205697 t!336358))

(declare-fun b_and!312015 () Bool)

(assert (= b_and!312005 (and (=> t!336358 result!295780) b_and!312015)))

(declare-fun t!336360 () Bool)

(declare-fun tb!244087 () Bool)

(assert (=> (and b!4058069 (= (toChars!9375 (transformation!6960 (rule!10050 token!484))) (toChars!9375 (transformation!6960 (rule!10050 token!484)))) t!336360) tb!244087))

(declare-fun result!295784 () Bool)

(assert (= result!295784 result!295780))

(assert (=> d!1205697 t!336360))

(declare-fun b_and!312017 () Bool)

(assert (= b_and!312009 (and (=> t!336360 result!295784) b_and!312017)))

(declare-fun m!4663015 () Bool)

(assert (=> d!1205697 m!4663015))

(declare-fun m!4663019 () Bool)

(assert (=> d!1205697 m!4663019))

(assert (=> b!4058055 d!1205697))

(declare-fun b!4058414 () Bool)

(declare-fun e!2518435 () Int)

(assert (=> b!4058414 (= e!2518435 (- 1))))

(declare-fun b!4058411 () Bool)

(declare-fun e!2518434 () Int)

(assert (=> b!4058411 (= e!2518434 0)))

(declare-fun b!4058413 () Bool)

(assert (=> b!4058413 (= e!2518435 (+ 1 (getIndex!572 (t!336352 rules!2999) (rule!10050 (_1!24351 (v!39791 lt!1449276))))))))

(declare-fun b!4058412 () Bool)

(assert (=> b!4058412 (= e!2518434 e!2518435)))

(declare-fun c!700845 () Bool)

(assert (=> b!4058412 (= c!700845 (and ((_ is Cons!43375) rules!2999) (not (= (h!48795 rules!2999) (rule!10050 (_1!24351 (v!39791 lt!1449276)))))))))

(declare-fun d!1205715 () Bool)

(declare-fun lt!1449416 () Int)

(assert (=> d!1205715 (>= lt!1449416 0)))

(assert (=> d!1205715 (= lt!1449416 e!2518434)))

(declare-fun c!700844 () Bool)

(assert (=> d!1205715 (= c!700844 (and ((_ is Cons!43375) rules!2999) (= (h!48795 rules!2999) (rule!10050 (_1!24351 (v!39791 lt!1449276))))))))

(assert (=> d!1205715 (contains!8628 rules!2999 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))

(assert (=> d!1205715 (= (getIndex!572 rules!2999 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) lt!1449416)))

(assert (= (and d!1205715 c!700844) b!4058411))

(assert (= (and d!1205715 (not c!700844)) b!4058412))

(assert (= (and b!4058412 c!700845) b!4058413))

(assert (= (and b!4058412 (not c!700845)) b!4058414))

(declare-fun m!4663055 () Bool)

(assert (=> b!4058413 m!4663055))

(declare-fun m!4663057 () Bool)

(assert (=> d!1205715 m!4663057))

(assert (=> b!4058077 d!1205715))

(declare-fun b!4058422 () Bool)

(declare-fun e!2518439 () Int)

(assert (=> b!4058422 (= e!2518439 (- 1))))

(declare-fun b!4058419 () Bool)

(declare-fun e!2518438 () Int)

(assert (=> b!4058419 (= e!2518438 0)))

(declare-fun b!4058421 () Bool)

(assert (=> b!4058421 (= e!2518439 (+ 1 (getIndex!572 (t!336352 rules!2999) (rule!10050 token!484))))))

(declare-fun b!4058420 () Bool)

(assert (=> b!4058420 (= e!2518438 e!2518439)))

(declare-fun c!700848 () Bool)

(assert (=> b!4058420 (= c!700848 (and ((_ is Cons!43375) rules!2999) (not (= (h!48795 rules!2999) (rule!10050 token!484)))))))

(declare-fun d!1205735 () Bool)

(declare-fun lt!1449418 () Int)

(assert (=> d!1205735 (>= lt!1449418 0)))

(assert (=> d!1205735 (= lt!1449418 e!2518438)))

(declare-fun c!700847 () Bool)

(assert (=> d!1205735 (= c!700847 (and ((_ is Cons!43375) rules!2999) (= (h!48795 rules!2999) (rule!10050 token!484))))))

(assert (=> d!1205735 (contains!8628 rules!2999 (rule!10050 token!484))))

(assert (=> d!1205735 (= (getIndex!572 rules!2999 (rule!10050 token!484)) lt!1449418)))

(assert (= (and d!1205735 c!700847) b!4058419))

(assert (= (and d!1205735 (not c!700847)) b!4058420))

(assert (= (and b!4058420 c!700848) b!4058421))

(assert (= (and b!4058420 (not c!700848)) b!4058422))

(declare-fun m!4663069 () Bool)

(assert (=> b!4058421 m!4663069))

(declare-fun m!4663071 () Bool)

(assert (=> d!1205735 m!4663071))

(assert (=> b!4058077 d!1205735))

(declare-fun d!1205739 () Bool)

(assert (=> d!1205739 (= (_2!24351 (v!39791 lt!1449276)) newSuffixResult!27)))

(declare-fun lt!1449420 () Unit!62757)

(assert (=> d!1205739 (= lt!1449420 (choose!24657 lt!1449249 (_2!24351 (v!39791 lt!1449276)) lt!1449266 newSuffixResult!27 lt!1449255))))

(assert (=> d!1205739 (isPrefix!4047 lt!1449249 lt!1449255)))

(assert (=> d!1205739 (= (lemmaSamePrefixThenSameSuffix!2208 lt!1449249 (_2!24351 (v!39791 lt!1449276)) lt!1449266 newSuffixResult!27 lt!1449255) lt!1449420)))

(declare-fun bs!591925 () Bool)

(assert (= bs!591925 d!1205739))

(declare-fun m!4663079 () Bool)

(assert (=> bs!591925 m!4663079))

(assert (=> bs!591925 m!4662537))

(assert (=> b!4058077 d!1205739))

(declare-fun d!1205743 () Bool)

(assert (=> d!1205743 (= lt!1449249 lt!1449266)))

(declare-fun lt!1449428 () Unit!62757)

(declare-fun choose!24660 (List!43497 List!43497 List!43497) Unit!62757)

(assert (=> d!1205743 (= lt!1449428 (choose!24660 lt!1449249 lt!1449266 lt!1449255))))

(assert (=> d!1205743 (isPrefix!4047 lt!1449249 lt!1449255)))

(assert (=> d!1205743 (= (lemmaIsPrefixSameLengthThenSameList!937 lt!1449249 lt!1449266 lt!1449255) lt!1449428)))

(declare-fun bs!591927 () Bool)

(assert (= bs!591927 d!1205743))

(declare-fun m!4663103 () Bool)

(assert (=> bs!591927 m!4663103))

(assert (=> bs!591927 m!4662537))

(assert (=> b!4058077 d!1205743))

(declare-fun b!4058443 () Bool)

(declare-fun res!1655242 () Bool)

(declare-fun e!2518453 () Bool)

(assert (=> b!4058443 (=> (not res!1655242) (not e!2518453))))

(declare-fun lt!1449430 () List!43497)

(assert (=> b!4058443 (= res!1655242 (= (size!32428 lt!1449430) (+ (size!32428 lt!1449266) (size!32428 suffixResult!105))))))

(declare-fun b!4058441 () Bool)

(declare-fun e!2518454 () List!43497)

(assert (=> b!4058441 (= e!2518454 suffixResult!105)))

(declare-fun b!4058442 () Bool)

(assert (=> b!4058442 (= e!2518454 (Cons!43373 (h!48793 lt!1449266) (++!11362 (t!336350 lt!1449266) suffixResult!105)))))

(declare-fun d!1205755 () Bool)

(assert (=> d!1205755 e!2518453))

(declare-fun res!1655243 () Bool)

(assert (=> d!1205755 (=> (not res!1655243) (not e!2518453))))

(assert (=> d!1205755 (= res!1655243 (= (content!6612 lt!1449430) ((_ map or) (content!6612 lt!1449266) (content!6612 suffixResult!105))))))

(assert (=> d!1205755 (= lt!1449430 e!2518454)))

(declare-fun c!700850 () Bool)

(assert (=> d!1205755 (= c!700850 ((_ is Nil!43373) lt!1449266))))

(assert (=> d!1205755 (= (++!11362 lt!1449266 suffixResult!105) lt!1449430)))

(declare-fun b!4058444 () Bool)

(assert (=> b!4058444 (= e!2518453 (or (not (= suffixResult!105 Nil!43373)) (= lt!1449430 lt!1449266)))))

(assert (= (and d!1205755 c!700850) b!4058441))

(assert (= (and d!1205755 (not c!700850)) b!4058442))

(assert (= (and d!1205755 res!1655243) b!4058443))

(assert (= (and b!4058443 res!1655242) b!4058444))

(declare-fun m!4663109 () Bool)

(assert (=> b!4058443 m!4663109))

(assert (=> b!4058443 m!4662529))

(declare-fun m!4663113 () Bool)

(assert (=> b!4058443 m!4663113))

(declare-fun m!4663117 () Bool)

(assert (=> b!4058442 m!4663117))

(declare-fun m!4663119 () Bool)

(assert (=> d!1205755 m!4663119))

(assert (=> d!1205755 m!4662641))

(declare-fun m!4663127 () Bool)

(assert (=> d!1205755 m!4663127))

(assert (=> b!4058076 d!1205755))

(declare-fun d!1205761 () Bool)

(declare-fun e!2518463 () Bool)

(assert (=> d!1205761 e!2518463))

(declare-fun res!1655252 () Bool)

(assert (=> d!1205761 (=> (not res!1655252) (not e!2518463))))

(declare-fun semiInverseModEq!2976 (Int Int) Bool)

(assert (=> d!1205761 (= res!1655252 (semiInverseModEq!2976 (toChars!9375 (transformation!6960 (rule!10050 token!484))) (toValue!9516 (transformation!6960 (rule!10050 token!484)))))))

(declare-fun Unit!62763 () Unit!62757)

(assert (=> d!1205761 (= (lemmaInv!1169 (transformation!6960 (rule!10050 token!484))) Unit!62763)))

(declare-fun b!4058457 () Bool)

(declare-fun equivClasses!2875 (Int Int) Bool)

(assert (=> b!4058457 (= e!2518463 (equivClasses!2875 (toChars!9375 (transformation!6960 (rule!10050 token!484))) (toValue!9516 (transformation!6960 (rule!10050 token!484)))))))

(assert (= (and d!1205761 res!1655252) b!4058457))

(declare-fun m!4663137 () Bool)

(assert (=> d!1205761 m!4663137))

(declare-fun m!4663139 () Bool)

(assert (=> b!4058457 m!4663139))

(assert (=> b!4058076 d!1205761))

(declare-fun d!1205769 () Bool)

(declare-fun res!1655260 () Bool)

(declare-fun e!2518469 () Bool)

(assert (=> d!1205769 (=> (not res!1655260) (not e!2518469))))

(declare-fun validRegex!5368 (Regex!11865) Bool)

(assert (=> d!1205769 (= res!1655260 (validRegex!5368 (regex!6960 (rule!10050 token!484))))))

(assert (=> d!1205769 (= (ruleValid!2890 thiss!21717 (rule!10050 token!484)) e!2518469)))

(declare-fun b!4058465 () Bool)

(declare-fun res!1655261 () Bool)

(assert (=> b!4058465 (=> (not res!1655261) (not e!2518469))))

(declare-fun nullable!4168 (Regex!11865) Bool)

(assert (=> b!4058465 (= res!1655261 (not (nullable!4168 (regex!6960 (rule!10050 token!484)))))))

(declare-fun b!4058466 () Bool)

(assert (=> b!4058466 (= e!2518469 (not (= (tag!7820 (rule!10050 token!484)) (String!49668 ""))))))

(assert (= (and d!1205769 res!1655260) b!4058465))

(assert (= (and b!4058465 res!1655261) b!4058466))

(declare-fun m!4663145 () Bool)

(assert (=> d!1205769 m!4663145))

(declare-fun m!4663147 () Bool)

(assert (=> b!4058465 m!4663147))

(assert (=> b!4058076 d!1205769))

(declare-fun d!1205773 () Bool)

(assert (=> d!1205773 (ruleValid!2890 thiss!21717 (rule!10050 token!484))))

(declare-fun lt!1449439 () Unit!62757)

(declare-fun choose!24663 (LexerInterface!6549 Rule!13720 List!43499) Unit!62757)

(assert (=> d!1205773 (= lt!1449439 (choose!24663 thiss!21717 (rule!10050 token!484) rules!2999))))

(assert (=> d!1205773 (contains!8628 rules!2999 (rule!10050 token!484))))

(assert (=> d!1205773 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1960 thiss!21717 (rule!10050 token!484) rules!2999) lt!1449439)))

(declare-fun bs!591930 () Bool)

(assert (= bs!591930 d!1205773))

(assert (=> bs!591930 m!4662549))

(declare-fun m!4663149 () Bool)

(assert (=> bs!591930 m!4663149))

(assert (=> bs!591930 m!4663071))

(assert (=> b!4058076 d!1205773))

(declare-fun b!4058469 () Bool)

(declare-fun res!1655262 () Bool)

(declare-fun e!2518470 () Bool)

(assert (=> b!4058469 (=> (not res!1655262) (not e!2518470))))

(declare-fun lt!1449440 () List!43497)

(assert (=> b!4058469 (= res!1655262 (= (size!32428 lt!1449440) (+ (size!32428 lt!1449249) (size!32428 lt!1449225))))))

(declare-fun b!4058467 () Bool)

(declare-fun e!2518471 () List!43497)

(assert (=> b!4058467 (= e!2518471 lt!1449225)))

(declare-fun b!4058468 () Bool)

(assert (=> b!4058468 (= e!2518471 (Cons!43373 (h!48793 lt!1449249) (++!11362 (t!336350 lt!1449249) lt!1449225)))))

(declare-fun d!1205775 () Bool)

(assert (=> d!1205775 e!2518470))

(declare-fun res!1655263 () Bool)

(assert (=> d!1205775 (=> (not res!1655263) (not e!2518470))))

(assert (=> d!1205775 (= res!1655263 (= (content!6612 lt!1449440) ((_ map or) (content!6612 lt!1449249) (content!6612 lt!1449225))))))

(assert (=> d!1205775 (= lt!1449440 e!2518471)))

(declare-fun c!700853 () Bool)

(assert (=> d!1205775 (= c!700853 ((_ is Nil!43373) lt!1449249))))

(assert (=> d!1205775 (= (++!11362 lt!1449249 lt!1449225) lt!1449440)))

(declare-fun b!4058470 () Bool)

(assert (=> b!4058470 (= e!2518470 (or (not (= lt!1449225 Nil!43373)) (= lt!1449440 lt!1449249)))))

(assert (= (and d!1205775 c!700853) b!4058467))

(assert (= (and d!1205775 (not c!700853)) b!4058468))

(assert (= (and d!1205775 res!1655263) b!4058469))

(assert (= (and b!4058469 res!1655262) b!4058470))

(declare-fun m!4663151 () Bool)

(assert (=> b!4058469 m!4663151))

(assert (=> b!4058469 m!4662577))

(declare-fun m!4663153 () Bool)

(assert (=> b!4058469 m!4663153))

(declare-fun m!4663155 () Bool)

(assert (=> b!4058468 m!4663155))

(declare-fun m!4663157 () Bool)

(assert (=> d!1205775 m!4663157))

(declare-fun m!4663159 () Bool)

(assert (=> d!1205775 m!4663159))

(declare-fun m!4663161 () Bool)

(assert (=> d!1205775 m!4663161))

(assert (=> b!4058079 d!1205775))

(declare-fun d!1205777 () Bool)

(declare-fun lt!1449443 () List!43497)

(assert (=> d!1205777 (= (++!11362 lt!1449249 lt!1449443) lt!1449255)))

(declare-fun e!2518474 () List!43497)

(assert (=> d!1205777 (= lt!1449443 e!2518474)))

(declare-fun c!700856 () Bool)

(assert (=> d!1205777 (= c!700856 ((_ is Cons!43373) lt!1449249))))

(assert (=> d!1205777 (>= (size!32428 lt!1449255) (size!32428 lt!1449249))))

(assert (=> d!1205777 (= (getSuffix!2464 lt!1449255 lt!1449249) lt!1449443)))

(declare-fun b!4058475 () Bool)

(assert (=> b!4058475 (= e!2518474 (getSuffix!2464 (tail!6303 lt!1449255) (t!336350 lt!1449249)))))

(declare-fun b!4058476 () Bool)

(assert (=> b!4058476 (= e!2518474 lt!1449255)))

(assert (= (and d!1205777 c!700856) b!4058475))

(assert (= (and d!1205777 (not c!700856)) b!4058476))

(declare-fun m!4663163 () Bool)

(assert (=> d!1205777 m!4663163))

(assert (=> d!1205777 m!4662901))

(assert (=> d!1205777 m!4662577))

(declare-fun m!4663165 () Bool)

(assert (=> b!4058475 m!4663165))

(assert (=> b!4058475 m!4663165))

(declare-fun m!4663167 () Bool)

(assert (=> b!4058475 m!4663167))

(assert (=> b!4058079 d!1205777))

(declare-fun d!1205779 () Bool)

(assert (=> d!1205779 (= (_2!24351 (v!39791 lt!1449276)) lt!1449225)))

(declare-fun lt!1449444 () Unit!62757)

(assert (=> d!1205779 (= lt!1449444 (choose!24657 lt!1449249 (_2!24351 (v!39791 lt!1449276)) lt!1449249 lt!1449225 lt!1449255))))

(assert (=> d!1205779 (isPrefix!4047 lt!1449249 lt!1449255)))

(assert (=> d!1205779 (= (lemmaSamePrefixThenSameSuffix!2208 lt!1449249 (_2!24351 (v!39791 lt!1449276)) lt!1449249 lt!1449225 lt!1449255) lt!1449444)))

(declare-fun bs!591931 () Bool)

(assert (= bs!591931 d!1205779))

(declare-fun m!4663169 () Bool)

(assert (=> bs!591931 m!4663169))

(assert (=> bs!591931 m!4662537))

(assert (=> b!4058058 d!1205779))

(declare-fun b!4058479 () Bool)

(declare-fun e!2518475 () Bool)

(assert (=> b!4058479 (= e!2518475 (isPrefix!4047 (tail!6303 lt!1449249) (tail!6303 lt!1449259)))))

(declare-fun b!4058477 () Bool)

(declare-fun e!2518477 () Bool)

(assert (=> b!4058477 (= e!2518477 e!2518475)))

(declare-fun res!1655264 () Bool)

(assert (=> b!4058477 (=> (not res!1655264) (not e!2518475))))

(assert (=> b!4058477 (= res!1655264 (not ((_ is Nil!43373) lt!1449259)))))

(declare-fun b!4058478 () Bool)

(declare-fun res!1655265 () Bool)

(assert (=> b!4058478 (=> (not res!1655265) (not e!2518475))))

(assert (=> b!4058478 (= res!1655265 (= (head!8571 lt!1449249) (head!8571 lt!1449259)))))

(declare-fun d!1205781 () Bool)

(declare-fun e!2518476 () Bool)

(assert (=> d!1205781 e!2518476))

(declare-fun res!1655266 () Bool)

(assert (=> d!1205781 (=> res!1655266 e!2518476)))

(declare-fun lt!1449445 () Bool)

(assert (=> d!1205781 (= res!1655266 (not lt!1449445))))

(assert (=> d!1205781 (= lt!1449445 e!2518477)))

(declare-fun res!1655267 () Bool)

(assert (=> d!1205781 (=> res!1655267 e!2518477)))

(assert (=> d!1205781 (= res!1655267 ((_ is Nil!43373) lt!1449249))))

(assert (=> d!1205781 (= (isPrefix!4047 lt!1449249 lt!1449259) lt!1449445)))

(declare-fun b!4058480 () Bool)

(assert (=> b!4058480 (= e!2518476 (>= (size!32428 lt!1449259) (size!32428 lt!1449249)))))

(assert (= (and d!1205781 (not res!1655267)) b!4058477))

(assert (= (and b!4058477 res!1655264) b!4058478))

(assert (= (and b!4058478 res!1655265) b!4058479))

(assert (= (and d!1205781 (not res!1655266)) b!4058480))

(declare-fun m!4663171 () Bool)

(assert (=> b!4058479 m!4663171))

(declare-fun m!4663173 () Bool)

(assert (=> b!4058479 m!4663173))

(assert (=> b!4058479 m!4663171))

(assert (=> b!4058479 m!4663173))

(declare-fun m!4663175 () Bool)

(assert (=> b!4058479 m!4663175))

(declare-fun m!4663177 () Bool)

(assert (=> b!4058478 m!4663177))

(declare-fun m!4663179 () Bool)

(assert (=> b!4058478 m!4663179))

(declare-fun m!4663181 () Bool)

(assert (=> b!4058480 m!4663181))

(assert (=> b!4058480 m!4662577))

(assert (=> b!4058058 d!1205781))

(declare-fun d!1205783 () Bool)

(assert (=> d!1205783 (isPrefix!4047 lt!1449249 (++!11362 lt!1449249 lt!1449225))))

(declare-fun lt!1449446 () Unit!62757)

(assert (=> d!1205783 (= lt!1449446 (choose!24655 lt!1449249 lt!1449225))))

(assert (=> d!1205783 (= (lemmaConcatTwoListThenFirstIsPrefix!2882 lt!1449249 lt!1449225) lt!1449446)))

(declare-fun bs!591932 () Bool)

(assert (= bs!591932 d!1205783))

(assert (=> bs!591932 m!4662539))

(assert (=> bs!591932 m!4662539))

(declare-fun m!4663183 () Bool)

(assert (=> bs!591932 m!4663183))

(declare-fun m!4663185 () Bool)

(assert (=> bs!591932 m!4663185))

(assert (=> b!4058058 d!1205783))

(declare-fun b!4058483 () Bool)

(declare-fun res!1655268 () Bool)

(declare-fun e!2518478 () Bool)

(assert (=> b!4058483 (=> (not res!1655268) (not e!2518478))))

(declare-fun lt!1449447 () List!43497)

(assert (=> b!4058483 (= res!1655268 (= (size!32428 lt!1449447) (+ (size!32428 lt!1449266) (size!32428 lt!1449267))))))

(declare-fun b!4058481 () Bool)

(declare-fun e!2518479 () List!43497)

(assert (=> b!4058481 (= e!2518479 lt!1449267)))

(declare-fun b!4058482 () Bool)

(assert (=> b!4058482 (= e!2518479 (Cons!43373 (h!48793 lt!1449266) (++!11362 (t!336350 lt!1449266) lt!1449267)))))

(declare-fun d!1205785 () Bool)

(assert (=> d!1205785 e!2518478))

(declare-fun res!1655269 () Bool)

(assert (=> d!1205785 (=> (not res!1655269) (not e!2518478))))

(assert (=> d!1205785 (= res!1655269 (= (content!6612 lt!1449447) ((_ map or) (content!6612 lt!1449266) (content!6612 lt!1449267))))))

(assert (=> d!1205785 (= lt!1449447 e!2518479)))

(declare-fun c!700857 () Bool)

(assert (=> d!1205785 (= c!700857 ((_ is Nil!43373) lt!1449266))))

(assert (=> d!1205785 (= (++!11362 lt!1449266 lt!1449267) lt!1449447)))

(declare-fun b!4058484 () Bool)

(assert (=> b!4058484 (= e!2518478 (or (not (= lt!1449267 Nil!43373)) (= lt!1449447 lt!1449266)))))

(assert (= (and d!1205785 c!700857) b!4058481))

(assert (= (and d!1205785 (not c!700857)) b!4058482))

(assert (= (and d!1205785 res!1655269) b!4058483))

(assert (= (and b!4058483 res!1655268) b!4058484))

(declare-fun m!4663187 () Bool)

(assert (=> b!4058483 m!4663187))

(assert (=> b!4058483 m!4662529))

(declare-fun m!4663189 () Bool)

(assert (=> b!4058483 m!4663189))

(declare-fun m!4663191 () Bool)

(assert (=> b!4058482 m!4663191))

(declare-fun m!4663193 () Bool)

(assert (=> d!1205785 m!4663193))

(assert (=> d!1205785 m!4662641))

(declare-fun m!4663195 () Bool)

(assert (=> d!1205785 m!4663195))

(assert (=> b!4058080 d!1205785))

(declare-fun b!4058487 () Bool)

(declare-fun res!1655270 () Bool)

(declare-fun e!2518480 () Bool)

(assert (=> b!4058487 (=> (not res!1655270) (not e!2518480))))

(declare-fun lt!1449448 () List!43497)

(assert (=> b!4058487 (= res!1655270 (= (size!32428 lt!1449448) (+ (size!32428 lt!1449260) (size!32428 suffix!1299))))))

(declare-fun b!4058485 () Bool)

(declare-fun e!2518481 () List!43497)

(assert (=> b!4058485 (= e!2518481 suffix!1299)))

(declare-fun b!4058486 () Bool)

(assert (=> b!4058486 (= e!2518481 (Cons!43373 (h!48793 lt!1449260) (++!11362 (t!336350 lt!1449260) suffix!1299)))))

(declare-fun d!1205787 () Bool)

(assert (=> d!1205787 e!2518480))

(declare-fun res!1655271 () Bool)

(assert (=> d!1205787 (=> (not res!1655271) (not e!2518480))))

(assert (=> d!1205787 (= res!1655271 (= (content!6612 lt!1449448) ((_ map or) (content!6612 lt!1449260) (content!6612 suffix!1299))))))

(assert (=> d!1205787 (= lt!1449448 e!2518481)))

(declare-fun c!700858 () Bool)

(assert (=> d!1205787 (= c!700858 ((_ is Nil!43373) lt!1449260))))

(assert (=> d!1205787 (= (++!11362 lt!1449260 suffix!1299) lt!1449448)))

(declare-fun b!4058488 () Bool)

(assert (=> b!4058488 (= e!2518480 (or (not (= suffix!1299 Nil!43373)) (= lt!1449448 lt!1449260)))))

(assert (= (and d!1205787 c!700858) b!4058485))

(assert (= (and d!1205787 (not c!700858)) b!4058486))

(assert (= (and d!1205787 res!1655271) b!4058487))

(assert (= (and b!4058487 res!1655270) b!4058488))

(declare-fun m!4663197 () Bool)

(assert (=> b!4058487 m!4663197))

(declare-fun m!4663199 () Bool)

(assert (=> b!4058487 m!4663199))

(assert (=> b!4058487 m!4662511))

(declare-fun m!4663201 () Bool)

(assert (=> b!4058486 m!4663201))

(declare-fun m!4663203 () Bool)

(assert (=> d!1205787 m!4663203))

(declare-fun m!4663205 () Bool)

(assert (=> d!1205787 m!4663205))

(assert (=> d!1205787 m!4662849))

(assert (=> b!4058080 d!1205787))

(declare-fun b!4058491 () Bool)

(declare-fun res!1655272 () Bool)

(declare-fun e!2518482 () Bool)

(assert (=> b!4058491 (=> (not res!1655272) (not e!2518482))))

(declare-fun lt!1449449 () List!43497)

(assert (=> b!4058491 (= res!1655272 (= (size!32428 lt!1449449) (+ (size!32428 lt!1449238) (size!32428 suffix!1299))))))

(declare-fun b!4058489 () Bool)

(declare-fun e!2518483 () List!43497)

(assert (=> b!4058489 (= e!2518483 suffix!1299)))

(declare-fun b!4058490 () Bool)

(assert (=> b!4058490 (= e!2518483 (Cons!43373 (h!48793 lt!1449238) (++!11362 (t!336350 lt!1449238) suffix!1299)))))

(declare-fun d!1205789 () Bool)

(assert (=> d!1205789 e!2518482))

(declare-fun res!1655273 () Bool)

(assert (=> d!1205789 (=> (not res!1655273) (not e!2518482))))

(assert (=> d!1205789 (= res!1655273 (= (content!6612 lt!1449449) ((_ map or) (content!6612 lt!1449238) (content!6612 suffix!1299))))))

(assert (=> d!1205789 (= lt!1449449 e!2518483)))

(declare-fun c!700859 () Bool)

(assert (=> d!1205789 (= c!700859 ((_ is Nil!43373) lt!1449238))))

(assert (=> d!1205789 (= (++!11362 lt!1449238 suffix!1299) lt!1449449)))

(declare-fun b!4058492 () Bool)

(assert (=> b!4058492 (= e!2518482 (or (not (= suffix!1299 Nil!43373)) (= lt!1449449 lt!1449238)))))

(assert (= (and d!1205789 c!700859) b!4058489))

(assert (= (and d!1205789 (not c!700859)) b!4058490))

(assert (= (and d!1205789 res!1655273) b!4058491))

(assert (= (and b!4058491 res!1655272) b!4058492))

(declare-fun m!4663207 () Bool)

(assert (=> b!4058491 m!4663207))

(declare-fun m!4663209 () Bool)

(assert (=> b!4058491 m!4663209))

(assert (=> b!4058491 m!4662511))

(declare-fun m!4663211 () Bool)

(assert (=> b!4058490 m!4663211))

(declare-fun m!4663213 () Bool)

(assert (=> d!1205789 m!4663213))

(declare-fun m!4663215 () Bool)

(assert (=> d!1205789 m!4663215))

(assert (=> d!1205789 m!4662849))

(assert (=> b!4058080 d!1205789))

(declare-fun d!1205791 () Bool)

(assert (=> d!1205791 (= (++!11362 (++!11362 lt!1449266 lt!1449238) suffix!1299) (++!11362 lt!1449266 (++!11362 lt!1449238 suffix!1299)))))

(declare-fun lt!1449452 () Unit!62757)

(declare-fun choose!24665 (List!43497 List!43497 List!43497) Unit!62757)

(assert (=> d!1205791 (= lt!1449452 (choose!24665 lt!1449266 lt!1449238 suffix!1299))))

(assert (=> d!1205791 (= (lemmaConcatAssociativity!2664 lt!1449266 lt!1449238 suffix!1299) lt!1449452)))

(declare-fun bs!591933 () Bool)

(assert (= bs!591933 d!1205791))

(declare-fun m!4663217 () Bool)

(assert (=> bs!591933 m!4663217))

(assert (=> bs!591933 m!4662427))

(declare-fun m!4663219 () Bool)

(assert (=> bs!591933 m!4663219))

(assert (=> bs!591933 m!4662427))

(assert (=> bs!591933 m!4662465))

(assert (=> bs!591933 m!4662465))

(declare-fun m!4663221 () Bool)

(assert (=> bs!591933 m!4663221))

(assert (=> b!4058080 d!1205791))

(declare-fun b!4058495 () Bool)

(declare-fun res!1655274 () Bool)

(declare-fun e!2518484 () Bool)

(assert (=> b!4058495 (=> (not res!1655274) (not e!2518484))))

(declare-fun lt!1449453 () List!43497)

(assert (=> b!4058495 (= res!1655274 (= (size!32428 lt!1449453) (+ (size!32428 prefix!494) (size!32428 lt!1449219))))))

(declare-fun b!4058493 () Bool)

(declare-fun e!2518485 () List!43497)

(assert (=> b!4058493 (= e!2518485 lt!1449219)))

(declare-fun b!4058494 () Bool)

(assert (=> b!4058494 (= e!2518485 (Cons!43373 (h!48793 prefix!494) (++!11362 (t!336350 prefix!494) lt!1449219)))))

(declare-fun d!1205793 () Bool)

(assert (=> d!1205793 e!2518484))

(declare-fun res!1655275 () Bool)

(assert (=> d!1205793 (=> (not res!1655275) (not e!2518484))))

(assert (=> d!1205793 (= res!1655275 (= (content!6612 lt!1449453) ((_ map or) (content!6612 prefix!494) (content!6612 lt!1449219))))))

(assert (=> d!1205793 (= lt!1449453 e!2518485)))

(declare-fun c!700860 () Bool)

(assert (=> d!1205793 (= c!700860 ((_ is Nil!43373) prefix!494))))

(assert (=> d!1205793 (= (++!11362 prefix!494 lt!1449219) lt!1449453)))

(declare-fun b!4058496 () Bool)

(assert (=> b!4058496 (= e!2518484 (or (not (= lt!1449219 Nil!43373)) (= lt!1449453 prefix!494)))))

(assert (= (and d!1205793 c!700860) b!4058493))

(assert (= (and d!1205793 (not c!700860)) b!4058494))

(assert (= (and d!1205793 res!1655275) b!4058495))

(assert (= (and b!4058495 res!1655274) b!4058496))

(declare-fun m!4663223 () Bool)

(assert (=> b!4058495 m!4663223))

(assert (=> b!4058495 m!4662531))

(declare-fun m!4663225 () Bool)

(assert (=> b!4058495 m!4663225))

(declare-fun m!4663227 () Bool)

(assert (=> b!4058494 m!4663227))

(declare-fun m!4663229 () Bool)

(assert (=> d!1205793 m!4663229))

(assert (=> d!1205793 m!4662629))

(declare-fun m!4663231 () Bool)

(assert (=> d!1205793 m!4663231))

(assert (=> b!4058078 d!1205793))

(declare-fun b!4058499 () Bool)

(declare-fun res!1655276 () Bool)

(declare-fun e!2518486 () Bool)

(assert (=> b!4058499 (=> (not res!1655276) (not e!2518486))))

(declare-fun lt!1449456 () List!43497)

(assert (=> b!4058499 (= res!1655276 (= (size!32428 lt!1449456) (+ (size!32428 lt!1449255) (size!32428 lt!1449227))))))

(declare-fun b!4058497 () Bool)

(declare-fun e!2518487 () List!43497)

(assert (=> b!4058497 (= e!2518487 lt!1449227)))

(declare-fun b!4058498 () Bool)

(assert (=> b!4058498 (= e!2518487 (Cons!43373 (h!48793 lt!1449255) (++!11362 (t!336350 lt!1449255) lt!1449227)))))

(declare-fun d!1205795 () Bool)

(assert (=> d!1205795 e!2518486))

(declare-fun res!1655277 () Bool)

(assert (=> d!1205795 (=> (not res!1655277) (not e!2518486))))

(assert (=> d!1205795 (= res!1655277 (= (content!6612 lt!1449456) ((_ map or) (content!6612 lt!1449255) (content!6612 lt!1449227))))))

(assert (=> d!1205795 (= lt!1449456 e!2518487)))

(declare-fun c!700861 () Bool)

(assert (=> d!1205795 (= c!700861 ((_ is Nil!43373) lt!1449255))))

(assert (=> d!1205795 (= (++!11362 lt!1449255 lt!1449227) lt!1449456)))

(declare-fun b!4058500 () Bool)

(assert (=> b!4058500 (= e!2518486 (or (not (= lt!1449227 Nil!43373)) (= lt!1449456 lt!1449255)))))

(assert (= (and d!1205795 c!700861) b!4058497))

(assert (= (and d!1205795 (not c!700861)) b!4058498))

(assert (= (and d!1205795 res!1655277) b!4058499))

(assert (= (and b!4058499 res!1655276) b!4058500))

(declare-fun m!4663233 () Bool)

(assert (=> b!4058499 m!4663233))

(assert (=> b!4058499 m!4662901))

(declare-fun m!4663235 () Bool)

(assert (=> b!4058499 m!4663235))

(declare-fun m!4663237 () Bool)

(assert (=> b!4058498 m!4663237))

(declare-fun m!4663239 () Bool)

(assert (=> d!1205795 m!4663239))

(declare-fun m!4663241 () Bool)

(assert (=> d!1205795 m!4663241))

(declare-fun m!4663243 () Bool)

(assert (=> d!1205795 m!4663243))

(assert (=> b!4058078 d!1205795))

(declare-fun d!1205797 () Bool)

(assert (=> d!1205797 (= (++!11362 (++!11362 prefix!494 newSuffix!27) lt!1449227) (++!11362 prefix!494 (++!11362 newSuffix!27 lt!1449227)))))

(declare-fun lt!1449457 () Unit!62757)

(assert (=> d!1205797 (= lt!1449457 (choose!24665 prefix!494 newSuffix!27 lt!1449227))))

(assert (=> d!1205797 (= (lemmaConcatAssociativity!2664 prefix!494 newSuffix!27 lt!1449227) lt!1449457)))

(declare-fun bs!591934 () Bool)

(assert (= bs!591934 d!1205797))

(declare-fun m!4663245 () Bool)

(assert (=> bs!591934 m!4663245))

(assert (=> bs!591934 m!4662599))

(declare-fun m!4663247 () Bool)

(assert (=> bs!591934 m!4663247))

(assert (=> bs!591934 m!4662599))

(assert (=> bs!591934 m!4662495))

(assert (=> bs!591934 m!4662495))

(declare-fun m!4663249 () Bool)

(assert (=> bs!591934 m!4663249))

(assert (=> b!4058078 d!1205797))

(declare-fun d!1205799 () Bool)

(assert (=> d!1205799 (not (matchR!5818 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) lt!1449249))))

(declare-fun lt!1449459 () Unit!62757)

(assert (=> d!1205799 (= lt!1449459 (choose!24654 thiss!21717 rules!2999 (rule!10050 token!484) lt!1449266 lt!1449231 lt!1449249 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))))

(assert (=> d!1205799 (isPrefix!4047 lt!1449266 lt!1449231)))

(assert (=> d!1205799 (= (lemmaMaxPrefixOutputsMaxPrefix!486 thiss!21717 rules!2999 (rule!10050 token!484) lt!1449266 lt!1449231 lt!1449249 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) lt!1449459)))

(declare-fun bs!591935 () Bool)

(assert (= bs!591935 d!1205799))

(assert (=> bs!591935 m!4662525))

(declare-fun m!4663251 () Bool)

(assert (=> bs!591935 m!4663251))

(assert (=> bs!591935 m!4662561))

(assert (=> b!4058057 d!1205799))

(declare-fun b!4058545 () Bool)

(declare-fun e!2518516 () Bool)

(assert (=> b!4058545 (= e!2518516 (nullable!4168 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))))

(declare-fun b!4058546 () Bool)

(declare-fun res!1655307 () Bool)

(declare-fun e!2518515 () Bool)

(assert (=> b!4058546 (=> (not res!1655307) (not e!2518515))))

(declare-fun isEmpty!25885 (List!43497) Bool)

(assert (=> b!4058546 (= res!1655307 (isEmpty!25885 (tail!6303 lt!1449249)))))

(declare-fun b!4058547 () Bool)

(declare-fun e!2518520 () Bool)

(declare-fun e!2518518 () Bool)

(assert (=> b!4058547 (= e!2518520 e!2518518)))

(declare-fun res!1655306 () Bool)

(assert (=> b!4058547 (=> res!1655306 e!2518518)))

(declare-fun call!288066 () Bool)

(assert (=> b!4058547 (= res!1655306 call!288066)))

(declare-fun b!4058548 () Bool)

(declare-fun res!1655305 () Bool)

(assert (=> b!4058548 (=> res!1655305 e!2518518)))

(assert (=> b!4058548 (= res!1655305 (not (isEmpty!25885 (tail!6303 lt!1449249))))))

(declare-fun b!4058549 () Bool)

(declare-fun res!1655308 () Bool)

(assert (=> b!4058549 (=> (not res!1655308) (not e!2518515))))

(assert (=> b!4058549 (= res!1655308 (not call!288066))))

(declare-fun b!4058550 () Bool)

(assert (=> b!4058550 (= e!2518518 (not (= (head!8571 lt!1449249) (c!700781 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))))))

(declare-fun b!4058551 () Bool)

(declare-fun e!2518517 () Bool)

(declare-fun e!2518519 () Bool)

(assert (=> b!4058551 (= e!2518517 e!2518519)))

(declare-fun c!700870 () Bool)

(assert (=> b!4058551 (= c!700870 ((_ is EmptyLang!11865) (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))))

(declare-fun d!1205801 () Bool)

(assert (=> d!1205801 e!2518517))

(declare-fun c!700872 () Bool)

(assert (=> d!1205801 (= c!700872 ((_ is EmptyExpr!11865) (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))))

(declare-fun lt!1449470 () Bool)

(assert (=> d!1205801 (= lt!1449470 e!2518516)))

(declare-fun c!700871 () Bool)

(assert (=> d!1205801 (= c!700871 (isEmpty!25885 lt!1449249))))

(assert (=> d!1205801 (validRegex!5368 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))))

(assert (=> d!1205801 (= (matchR!5818 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) lt!1449249) lt!1449470)))

(declare-fun b!4058552 () Bool)

(declare-fun res!1655310 () Bool)

(declare-fun e!2518514 () Bool)

(assert (=> b!4058552 (=> res!1655310 e!2518514)))

(assert (=> b!4058552 (= res!1655310 (not ((_ is ElementMatch!11865) (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))))))

(assert (=> b!4058552 (= e!2518519 e!2518514)))

(declare-fun b!4058553 () Bool)

(declare-fun derivativeStep!3573 (Regex!11865 C!23916) Regex!11865)

(assert (=> b!4058553 (= e!2518516 (matchR!5818 (derivativeStep!3573 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) (head!8571 lt!1449249)) (tail!6303 lt!1449249)))))

(declare-fun b!4058554 () Bool)

(assert (=> b!4058554 (= e!2518515 (= (head!8571 lt!1449249) (c!700781 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))))))

(declare-fun b!4058555 () Bool)

(assert (=> b!4058555 (= e!2518519 (not lt!1449470))))

(declare-fun b!4058556 () Bool)

(assert (=> b!4058556 (= e!2518514 e!2518520)))

(declare-fun res!1655311 () Bool)

(assert (=> b!4058556 (=> (not res!1655311) (not e!2518520))))

(assert (=> b!4058556 (= res!1655311 (not lt!1449470))))

(declare-fun bm!288061 () Bool)

(assert (=> bm!288061 (= call!288066 (isEmpty!25885 lt!1449249))))

(declare-fun b!4058557 () Bool)

(assert (=> b!4058557 (= e!2518517 (= lt!1449470 call!288066))))

(declare-fun b!4058558 () Bool)

(declare-fun res!1655304 () Bool)

(assert (=> b!4058558 (=> res!1655304 e!2518514)))

(assert (=> b!4058558 (= res!1655304 e!2518515)))

(declare-fun res!1655309 () Bool)

(assert (=> b!4058558 (=> (not res!1655309) (not e!2518515))))

(assert (=> b!4058558 (= res!1655309 lt!1449470)))

(assert (= (and d!1205801 c!700871) b!4058545))

(assert (= (and d!1205801 (not c!700871)) b!4058553))

(assert (= (and d!1205801 c!700872) b!4058557))

(assert (= (and d!1205801 (not c!700872)) b!4058551))

(assert (= (and b!4058551 c!700870) b!4058555))

(assert (= (and b!4058551 (not c!700870)) b!4058552))

(assert (= (and b!4058552 (not res!1655310)) b!4058558))

(assert (= (and b!4058558 res!1655309) b!4058549))

(assert (= (and b!4058549 res!1655308) b!4058546))

(assert (= (and b!4058546 res!1655307) b!4058554))

(assert (= (and b!4058558 (not res!1655304)) b!4058556))

(assert (= (and b!4058556 res!1655311) b!4058547))

(assert (= (and b!4058547 (not res!1655306)) b!4058548))

(assert (= (and b!4058548 (not res!1655305)) b!4058550))

(assert (= (or b!4058557 b!4058547 b!4058549) bm!288061))

(declare-fun m!4663293 () Bool)

(assert (=> b!4058545 m!4663293))

(assert (=> b!4058548 m!4663171))

(assert (=> b!4058548 m!4663171))

(declare-fun m!4663295 () Bool)

(assert (=> b!4058548 m!4663295))

(declare-fun m!4663297 () Bool)

(assert (=> d!1205801 m!4663297))

(declare-fun m!4663299 () Bool)

(assert (=> d!1205801 m!4663299))

(assert (=> bm!288061 m!4663297))

(assert (=> b!4058546 m!4663171))

(assert (=> b!4058546 m!4663171))

(assert (=> b!4058546 m!4663295))

(assert (=> b!4058550 m!4663177))

(assert (=> b!4058553 m!4663177))

(assert (=> b!4058553 m!4663177))

(declare-fun m!4663301 () Bool)

(assert (=> b!4058553 m!4663301))

(assert (=> b!4058553 m!4663171))

(assert (=> b!4058553 m!4663301))

(assert (=> b!4058553 m!4663171))

(declare-fun m!4663303 () Bool)

(assert (=> b!4058553 m!4663303))

(assert (=> b!4058554 m!4663177))

(assert (=> b!4058057 d!1205801))

(declare-fun b!4058559 () Bool)

(declare-fun e!2518523 () Bool)

(assert (=> b!4058559 (= e!2518523 (nullable!4168 (regex!6960 (rule!10050 token!484))))))

(declare-fun b!4058560 () Bool)

(declare-fun res!1655315 () Bool)

(declare-fun e!2518522 () Bool)

(assert (=> b!4058560 (=> (not res!1655315) (not e!2518522))))

(assert (=> b!4058560 (= res!1655315 (isEmpty!25885 (tail!6303 lt!1449266)))))

(declare-fun b!4058561 () Bool)

(declare-fun e!2518527 () Bool)

(declare-fun e!2518525 () Bool)

(assert (=> b!4058561 (= e!2518527 e!2518525)))

(declare-fun res!1655314 () Bool)

(assert (=> b!4058561 (=> res!1655314 e!2518525)))

(declare-fun call!288067 () Bool)

(assert (=> b!4058561 (= res!1655314 call!288067)))

(declare-fun b!4058562 () Bool)

(declare-fun res!1655313 () Bool)

(assert (=> b!4058562 (=> res!1655313 e!2518525)))

(assert (=> b!4058562 (= res!1655313 (not (isEmpty!25885 (tail!6303 lt!1449266))))))

(declare-fun b!4058563 () Bool)

(declare-fun res!1655316 () Bool)

(assert (=> b!4058563 (=> (not res!1655316) (not e!2518522))))

(assert (=> b!4058563 (= res!1655316 (not call!288067))))

(declare-fun b!4058564 () Bool)

(assert (=> b!4058564 (= e!2518525 (not (= (head!8571 lt!1449266) (c!700781 (regex!6960 (rule!10050 token!484))))))))

(declare-fun b!4058565 () Bool)

(declare-fun e!2518524 () Bool)

(declare-fun e!2518526 () Bool)

(assert (=> b!4058565 (= e!2518524 e!2518526)))

(declare-fun c!700873 () Bool)

(assert (=> b!4058565 (= c!700873 ((_ is EmptyLang!11865) (regex!6960 (rule!10050 token!484))))))

(declare-fun d!1205821 () Bool)

(assert (=> d!1205821 e!2518524))

(declare-fun c!700875 () Bool)

(assert (=> d!1205821 (= c!700875 ((_ is EmptyExpr!11865) (regex!6960 (rule!10050 token!484))))))

(declare-fun lt!1449471 () Bool)

(assert (=> d!1205821 (= lt!1449471 e!2518523)))

(declare-fun c!700874 () Bool)

(assert (=> d!1205821 (= c!700874 (isEmpty!25885 lt!1449266))))

(assert (=> d!1205821 (validRegex!5368 (regex!6960 (rule!10050 token!484)))))

(assert (=> d!1205821 (= (matchR!5818 (regex!6960 (rule!10050 token!484)) lt!1449266) lt!1449471)))

(declare-fun b!4058566 () Bool)

(declare-fun res!1655318 () Bool)

(declare-fun e!2518521 () Bool)

(assert (=> b!4058566 (=> res!1655318 e!2518521)))

(assert (=> b!4058566 (= res!1655318 (not ((_ is ElementMatch!11865) (regex!6960 (rule!10050 token!484)))))))

(assert (=> b!4058566 (= e!2518526 e!2518521)))

(declare-fun b!4058567 () Bool)

(assert (=> b!4058567 (= e!2518523 (matchR!5818 (derivativeStep!3573 (regex!6960 (rule!10050 token!484)) (head!8571 lt!1449266)) (tail!6303 lt!1449266)))))

(declare-fun b!4058568 () Bool)

(assert (=> b!4058568 (= e!2518522 (= (head!8571 lt!1449266) (c!700781 (regex!6960 (rule!10050 token!484)))))))

(declare-fun b!4058569 () Bool)

(assert (=> b!4058569 (= e!2518526 (not lt!1449471))))

(declare-fun b!4058570 () Bool)

(assert (=> b!4058570 (= e!2518521 e!2518527)))

(declare-fun res!1655319 () Bool)

(assert (=> b!4058570 (=> (not res!1655319) (not e!2518527))))

(assert (=> b!4058570 (= res!1655319 (not lt!1449471))))

(declare-fun bm!288062 () Bool)

(assert (=> bm!288062 (= call!288067 (isEmpty!25885 lt!1449266))))

(declare-fun b!4058571 () Bool)

(assert (=> b!4058571 (= e!2518524 (= lt!1449471 call!288067))))

(declare-fun b!4058572 () Bool)

(declare-fun res!1655312 () Bool)

(assert (=> b!4058572 (=> res!1655312 e!2518521)))

(assert (=> b!4058572 (= res!1655312 e!2518522)))

(declare-fun res!1655317 () Bool)

(assert (=> b!4058572 (=> (not res!1655317) (not e!2518522))))

(assert (=> b!4058572 (= res!1655317 lt!1449471)))

(assert (= (and d!1205821 c!700874) b!4058559))

(assert (= (and d!1205821 (not c!700874)) b!4058567))

(assert (= (and d!1205821 c!700875) b!4058571))

(assert (= (and d!1205821 (not c!700875)) b!4058565))

(assert (= (and b!4058565 c!700873) b!4058569))

(assert (= (and b!4058565 (not c!700873)) b!4058566))

(assert (= (and b!4058566 (not res!1655318)) b!4058572))

(assert (= (and b!4058572 res!1655317) b!4058563))

(assert (= (and b!4058563 res!1655316) b!4058560))

(assert (= (and b!4058560 res!1655315) b!4058568))

(assert (= (and b!4058572 (not res!1655312)) b!4058570))

(assert (= (and b!4058570 res!1655319) b!4058561))

(assert (= (and b!4058561 (not res!1655314)) b!4058562))

(assert (= (and b!4058562 (not res!1655313)) b!4058564))

(assert (= (or b!4058571 b!4058561 b!4058563) bm!288062))

(assert (=> b!4058559 m!4663147))

(assert (=> b!4058562 m!4662649))

(assert (=> b!4058562 m!4662649))

(declare-fun m!4663305 () Bool)

(assert (=> b!4058562 m!4663305))

(declare-fun m!4663307 () Bool)

(assert (=> d!1205821 m!4663307))

(assert (=> d!1205821 m!4663145))

(assert (=> bm!288062 m!4663307))

(assert (=> b!4058560 m!4662649))

(assert (=> b!4058560 m!4662649))

(assert (=> b!4058560 m!4663305))

(assert (=> b!4058564 m!4662655))

(assert (=> b!4058567 m!4662655))

(assert (=> b!4058567 m!4662655))

(declare-fun m!4663309 () Bool)

(assert (=> b!4058567 m!4663309))

(assert (=> b!4058567 m!4662649))

(assert (=> b!4058567 m!4663309))

(assert (=> b!4058567 m!4662649))

(declare-fun m!4663311 () Bool)

(assert (=> b!4058567 m!4663311))

(assert (=> b!4058568 m!4662655))

(assert (=> b!4058082 d!1205821))

(declare-fun b!4058575 () Bool)

(declare-fun e!2518528 () Bool)

(assert (=> b!4058575 (= e!2518528 (isPrefix!4047 (tail!6303 lt!1449266) (tail!6303 lt!1449255)))))

(declare-fun b!4058573 () Bool)

(declare-fun e!2518530 () Bool)

(assert (=> b!4058573 (= e!2518530 e!2518528)))

(declare-fun res!1655320 () Bool)

(assert (=> b!4058573 (=> (not res!1655320) (not e!2518528))))

(assert (=> b!4058573 (= res!1655320 (not ((_ is Nil!43373) lt!1449255)))))

(declare-fun b!4058574 () Bool)

(declare-fun res!1655321 () Bool)

(assert (=> b!4058574 (=> (not res!1655321) (not e!2518528))))

(assert (=> b!4058574 (= res!1655321 (= (head!8571 lt!1449266) (head!8571 lt!1449255)))))

(declare-fun d!1205823 () Bool)

(declare-fun e!2518529 () Bool)

(assert (=> d!1205823 e!2518529))

(declare-fun res!1655322 () Bool)

(assert (=> d!1205823 (=> res!1655322 e!2518529)))

(declare-fun lt!1449472 () Bool)

(assert (=> d!1205823 (= res!1655322 (not lt!1449472))))

(assert (=> d!1205823 (= lt!1449472 e!2518530)))

(declare-fun res!1655323 () Bool)

(assert (=> d!1205823 (=> res!1655323 e!2518530)))

(assert (=> d!1205823 (= res!1655323 ((_ is Nil!43373) lt!1449266))))

(assert (=> d!1205823 (= (isPrefix!4047 lt!1449266 lt!1449255) lt!1449472)))

(declare-fun b!4058576 () Bool)

(assert (=> b!4058576 (= e!2518529 (>= (size!32428 lt!1449255) (size!32428 lt!1449266)))))

(assert (= (and d!1205823 (not res!1655323)) b!4058573))

(assert (= (and b!4058573 res!1655320) b!4058574))

(assert (= (and b!4058574 res!1655321) b!4058575))

(assert (= (and d!1205823 (not res!1655322)) b!4058576))

(assert (=> b!4058575 m!4662649))

(assert (=> b!4058575 m!4663165))

(assert (=> b!4058575 m!4662649))

(assert (=> b!4058575 m!4663165))

(declare-fun m!4663313 () Bool)

(assert (=> b!4058575 m!4663313))

(assert (=> b!4058574 m!4662655))

(declare-fun m!4663315 () Bool)

(assert (=> b!4058574 m!4663315))

(assert (=> b!4058576 m!4662901))

(assert (=> b!4058576 m!4662529))

(assert (=> b!4058082 d!1205823))

(declare-fun d!1205825 () Bool)

(assert (=> d!1205825 (isPrefix!4047 lt!1449266 (++!11362 prefix!494 newSuffix!27))))

(declare-fun lt!1449475 () Unit!62757)

(declare-fun choose!24666 (List!43497 List!43497 List!43497) Unit!62757)

(assert (=> d!1205825 (= lt!1449475 (choose!24666 lt!1449266 prefix!494 newSuffix!27))))

(assert (=> d!1205825 (isPrefix!4047 lt!1449266 prefix!494)))

(assert (=> d!1205825 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!840 lt!1449266 prefix!494 newSuffix!27) lt!1449475)))

(declare-fun bs!591940 () Bool)

(assert (= bs!591940 d!1205825))

(assert (=> bs!591940 m!4662599))

(assert (=> bs!591940 m!4662599))

(declare-fun m!4663317 () Bool)

(assert (=> bs!591940 m!4663317))

(declare-fun m!4663319 () Bool)

(assert (=> bs!591940 m!4663319))

(assert (=> bs!591940 m!4662431))

(assert (=> b!4058082 d!1205825))

(declare-fun d!1205827 () Bool)

(assert (=> d!1205827 (isPrefix!4047 lt!1449266 (++!11362 prefix!494 suffix!1299))))

(declare-fun lt!1449476 () Unit!62757)

(assert (=> d!1205827 (= lt!1449476 (choose!24666 lt!1449266 prefix!494 suffix!1299))))

(assert (=> d!1205827 (isPrefix!4047 lt!1449266 prefix!494)))

(assert (=> d!1205827 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!840 lt!1449266 prefix!494 suffix!1299) lt!1449476)))

(declare-fun bs!591941 () Bool)

(assert (= bs!591941 d!1205827))

(assert (=> bs!591941 m!4662509))

(assert (=> bs!591941 m!4662509))

(declare-fun m!4663321 () Bool)

(assert (=> bs!591941 m!4663321))

(declare-fun m!4663323 () Bool)

(assert (=> bs!591941 m!4663323))

(assert (=> bs!591941 m!4662431))

(assert (=> b!4058082 d!1205827))

(declare-fun d!1205829 () Bool)

(declare-fun res!1655324 () Bool)

(declare-fun e!2518531 () Bool)

(assert (=> d!1205829 (=> (not res!1655324) (not e!2518531))))

(assert (=> d!1205829 (= res!1655324 (validRegex!5368 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))))

(assert (=> d!1205829 (= (ruleValid!2890 thiss!21717 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) e!2518531)))

(declare-fun b!4058577 () Bool)

(declare-fun res!1655325 () Bool)

(assert (=> b!4058577 (=> (not res!1655325) (not e!2518531))))

(assert (=> b!4058577 (= res!1655325 (not (nullable!4168 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))))))

(declare-fun b!4058578 () Bool)

(assert (=> b!4058578 (= e!2518531 (not (= (tag!7820 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) (String!49668 ""))))))

(assert (= (and d!1205829 res!1655324) b!4058577))

(assert (= (and b!4058577 res!1655325) b!4058578))

(assert (=> d!1205829 m!4663299))

(assert (=> b!4058577 m!4663293))

(assert (=> b!4058061 d!1205829))

(declare-fun d!1205831 () Bool)

(declare-fun lt!1449477 () BalanceConc!25936)

(assert (=> d!1205831 (= (list!16164 lt!1449477) (originalCharacters!7560 (_1!24351 (v!39791 lt!1449276))))))

(assert (=> d!1205831 (= lt!1449477 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (value!218994 (_1!24351 (v!39791 lt!1449276)))))))

(assert (=> d!1205831 (= (charsOf!4776 (_1!24351 (v!39791 lt!1449276))) lt!1449477)))

(declare-fun b_lambda!118579 () Bool)

(assert (=> (not b_lambda!118579) (not d!1205831)))

(declare-fun tb!244093 () Bool)

(declare-fun t!336366 () Bool)

(assert (=> (and b!4058071 (= (toChars!9375 (transformation!6960 (h!48795 rules!2999))) (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))) t!336366) tb!244093))

(declare-fun b!4058579 () Bool)

(declare-fun e!2518532 () Bool)

(declare-fun tp!1229747 () Bool)

(assert (=> b!4058579 (= e!2518532 (and (inv!57985 (c!700780 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (value!218994 (_1!24351 (v!39791 lt!1449276)))))) tp!1229747))))

(declare-fun result!295792 () Bool)

(assert (=> tb!244093 (= result!295792 (and (inv!57986 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (value!218994 (_1!24351 (v!39791 lt!1449276))))) e!2518532))))

(assert (= tb!244093 b!4058579))

(declare-fun m!4663325 () Bool)

(assert (=> b!4058579 m!4663325))

(declare-fun m!4663327 () Bool)

(assert (=> tb!244093 m!4663327))

(assert (=> d!1205831 t!336366))

(declare-fun b_and!312027 () Bool)

(assert (= b_and!312015 (and (=> t!336366 result!295792) b_and!312027)))

(declare-fun t!336368 () Bool)

(declare-fun tb!244095 () Bool)

(assert (=> (and b!4058069 (= (toChars!9375 (transformation!6960 (rule!10050 token!484))) (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))) t!336368) tb!244095))

(declare-fun result!295794 () Bool)

(assert (= result!295794 result!295792))

(assert (=> d!1205831 t!336368))

(declare-fun b_and!312029 () Bool)

(assert (= b_and!312017 (and (=> t!336368 result!295794) b_and!312029)))

(declare-fun m!4663329 () Bool)

(assert (=> d!1205831 m!4663329))

(declare-fun m!4663331 () Bool)

(assert (=> d!1205831 m!4663331))

(assert (=> b!4058061 d!1205831))

(declare-fun d!1205833 () Bool)

(assert (=> d!1205833 (isPrefix!4047 lt!1449249 (++!11362 lt!1449249 newSuffixResult!27))))

(declare-fun lt!1449478 () Unit!62757)

(assert (=> d!1205833 (= lt!1449478 (choose!24655 lt!1449249 newSuffixResult!27))))

(assert (=> d!1205833 (= (lemmaConcatTwoListThenFirstIsPrefix!2882 lt!1449249 newSuffixResult!27) lt!1449478)))

(declare-fun bs!591942 () Bool)

(assert (= bs!591942 d!1205833))

(assert (=> bs!591942 m!4662563))

(assert (=> bs!591942 m!4662563))

(assert (=> bs!591942 m!4662581))

(declare-fun m!4663333 () Bool)

(assert (=> bs!591942 m!4663333))

(assert (=> b!4058061 d!1205833))

(declare-fun b!4058582 () Bool)

(declare-fun e!2518533 () Bool)

(assert (=> b!4058582 (= e!2518533 (isPrefix!4047 (tail!6303 lt!1449249) (tail!6303 lt!1449274)))))

(declare-fun b!4058580 () Bool)

(declare-fun e!2518535 () Bool)

(assert (=> b!4058580 (= e!2518535 e!2518533)))

(declare-fun res!1655326 () Bool)

(assert (=> b!4058580 (=> (not res!1655326) (not e!2518533))))

(assert (=> b!4058580 (= res!1655326 (not ((_ is Nil!43373) lt!1449274)))))

(declare-fun b!4058581 () Bool)

(declare-fun res!1655327 () Bool)

(assert (=> b!4058581 (=> (not res!1655327) (not e!2518533))))

(assert (=> b!4058581 (= res!1655327 (= (head!8571 lt!1449249) (head!8571 lt!1449274)))))

(declare-fun d!1205835 () Bool)

(declare-fun e!2518534 () Bool)

(assert (=> d!1205835 e!2518534))

(declare-fun res!1655328 () Bool)

(assert (=> d!1205835 (=> res!1655328 e!2518534)))

(declare-fun lt!1449479 () Bool)

(assert (=> d!1205835 (= res!1655328 (not lt!1449479))))

(assert (=> d!1205835 (= lt!1449479 e!2518535)))

(declare-fun res!1655329 () Bool)

(assert (=> d!1205835 (=> res!1655329 e!2518535)))

(assert (=> d!1205835 (= res!1655329 ((_ is Nil!43373) lt!1449249))))

(assert (=> d!1205835 (= (isPrefix!4047 lt!1449249 lt!1449274) lt!1449479)))

(declare-fun b!4058583 () Bool)

(assert (=> b!4058583 (= e!2518534 (>= (size!32428 lt!1449274) (size!32428 lt!1449249)))))

(assert (= (and d!1205835 (not res!1655329)) b!4058580))

(assert (= (and b!4058580 res!1655326) b!4058581))

(assert (= (and b!4058581 res!1655327) b!4058582))

(assert (= (and d!1205835 (not res!1655328)) b!4058583))

(assert (=> b!4058582 m!4663171))

(declare-fun m!4663335 () Bool)

(assert (=> b!4058582 m!4663335))

(assert (=> b!4058582 m!4663171))

(assert (=> b!4058582 m!4663335))

(declare-fun m!4663337 () Bool)

(assert (=> b!4058582 m!4663337))

(assert (=> b!4058581 m!4663177))

(declare-fun m!4663339 () Bool)

(assert (=> b!4058581 m!4663339))

(declare-fun m!4663341 () Bool)

(assert (=> b!4058583 m!4663341))

(assert (=> b!4058583 m!4662577))

(assert (=> b!4058061 d!1205835))

(declare-fun d!1205837 () Bool)

(assert (=> d!1205837 (= (maxPrefixOneRule!2859 thiss!21717 (rule!10050 (_1!24351 (v!39791 lt!1449276))) lt!1449255) (Some!9373 (tuple2!42435 (Token!13059 (apply!10149 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) (seqFromList!5177 lt!1449249)) (rule!10050 (_1!24351 (v!39791 lt!1449276))) (size!32428 lt!1449249) lt!1449249) (_2!24351 (v!39791 lt!1449276)))))))

(declare-fun lt!1449482 () Unit!62757)

(declare-fun choose!24667 (LexerInterface!6549 List!43499 List!43497 List!43497 List!43497 Rule!13720) Unit!62757)

(assert (=> d!1205837 (= lt!1449482 (choose!24667 thiss!21717 rules!2999 lt!1449249 lt!1449255 (_2!24351 (v!39791 lt!1449276)) (rule!10050 (_1!24351 (v!39791 lt!1449276)))))))

(assert (=> d!1205837 (not (isEmpty!25881 rules!2999))))

(assert (=> d!1205837 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1665 thiss!21717 rules!2999 lt!1449249 lt!1449255 (_2!24351 (v!39791 lt!1449276)) (rule!10050 (_1!24351 (v!39791 lt!1449276)))) lt!1449482)))

(declare-fun bs!591943 () Bool)

(assert (= bs!591943 d!1205837))

(assert (=> bs!591943 m!4662577))

(assert (=> bs!591943 m!4662475))

(declare-fun m!4663343 () Bool)

(assert (=> bs!591943 m!4663343))

(assert (=> bs!591943 m!4662589))

(assert (=> bs!591943 m!4662573))

(assert (=> bs!591943 m!4662575))

(assert (=> bs!591943 m!4662573))

(assert (=> b!4058061 d!1205837))

(declare-fun d!1205839 () Bool)

(assert (=> d!1205839 (= (size!32427 (_1!24351 (v!39791 lt!1449276))) (size!32428 (originalCharacters!7560 (_1!24351 (v!39791 lt!1449276)))))))

(declare-fun Unit!62764 () Unit!62757)

(assert (=> d!1205839 (= (lemmaCharactersSize!1479 (_1!24351 (v!39791 lt!1449276))) Unit!62764)))

(declare-fun bs!591944 () Bool)

(assert (= bs!591944 d!1205839))

(declare-fun m!4663345 () Bool)

(assert (=> bs!591944 m!4663345))

(assert (=> b!4058061 d!1205839))

(declare-fun d!1205841 () Bool)

(assert (=> d!1205841 (= (list!16164 (charsOf!4776 (_1!24351 (v!39791 lt!1449276)))) (list!16165 (c!700780 (charsOf!4776 (_1!24351 (v!39791 lt!1449276))))))))

(declare-fun bs!591945 () Bool)

(assert (= bs!591945 d!1205841))

(declare-fun m!4663347 () Bool)

(assert (=> bs!591945 m!4663347))

(assert (=> b!4058061 d!1205841))

(declare-fun b!4058586 () Bool)

(declare-fun e!2518536 () Bool)

(assert (=> b!4058586 (= e!2518536 (isPrefix!4047 (tail!6303 lt!1449249) (tail!6303 (++!11362 lt!1449249 newSuffixResult!27))))))

(declare-fun b!4058584 () Bool)

(declare-fun e!2518538 () Bool)

(assert (=> b!4058584 (= e!2518538 e!2518536)))

(declare-fun res!1655330 () Bool)

(assert (=> b!4058584 (=> (not res!1655330) (not e!2518536))))

(assert (=> b!4058584 (= res!1655330 (not ((_ is Nil!43373) (++!11362 lt!1449249 newSuffixResult!27))))))

(declare-fun b!4058585 () Bool)

(declare-fun res!1655331 () Bool)

(assert (=> b!4058585 (=> (not res!1655331) (not e!2518536))))

(assert (=> b!4058585 (= res!1655331 (= (head!8571 lt!1449249) (head!8571 (++!11362 lt!1449249 newSuffixResult!27))))))

(declare-fun d!1205843 () Bool)

(declare-fun e!2518537 () Bool)

(assert (=> d!1205843 e!2518537))

(declare-fun res!1655332 () Bool)

(assert (=> d!1205843 (=> res!1655332 e!2518537)))

(declare-fun lt!1449483 () Bool)

(assert (=> d!1205843 (= res!1655332 (not lt!1449483))))

(assert (=> d!1205843 (= lt!1449483 e!2518538)))

(declare-fun res!1655333 () Bool)

(assert (=> d!1205843 (=> res!1655333 e!2518538)))

(assert (=> d!1205843 (= res!1655333 ((_ is Nil!43373) lt!1449249))))

(assert (=> d!1205843 (= (isPrefix!4047 lt!1449249 (++!11362 lt!1449249 newSuffixResult!27)) lt!1449483)))

(declare-fun b!4058587 () Bool)

(assert (=> b!4058587 (= e!2518537 (>= (size!32428 (++!11362 lt!1449249 newSuffixResult!27)) (size!32428 lt!1449249)))))

(assert (= (and d!1205843 (not res!1655333)) b!4058584))

(assert (= (and b!4058584 res!1655330) b!4058585))

(assert (= (and b!4058585 res!1655331) b!4058586))

(assert (= (and d!1205843 (not res!1655332)) b!4058587))

(assert (=> b!4058586 m!4663171))

(assert (=> b!4058586 m!4662563))

(declare-fun m!4663349 () Bool)

(assert (=> b!4058586 m!4663349))

(assert (=> b!4058586 m!4663171))

(assert (=> b!4058586 m!4663349))

(declare-fun m!4663351 () Bool)

(assert (=> b!4058586 m!4663351))

(assert (=> b!4058585 m!4663177))

(assert (=> b!4058585 m!4662563))

(declare-fun m!4663353 () Bool)

(assert (=> b!4058585 m!4663353))

(assert (=> b!4058587 m!4662563))

(declare-fun m!4663355 () Bool)

(assert (=> b!4058587 m!4663355))

(assert (=> b!4058587 m!4662577))

(assert (=> b!4058061 d!1205843))

(declare-fun b!4058590 () Bool)

(declare-fun res!1655334 () Bool)

(declare-fun e!2518539 () Bool)

(assert (=> b!4058590 (=> (not res!1655334) (not e!2518539))))

(declare-fun lt!1449484 () List!43497)

(assert (=> b!4058590 (= res!1655334 (= (size!32428 lt!1449484) (+ (size!32428 lt!1449249) (size!32428 newSuffixResult!27))))))

(declare-fun b!4058588 () Bool)

(declare-fun e!2518540 () List!43497)

(assert (=> b!4058588 (= e!2518540 newSuffixResult!27)))

(declare-fun b!4058589 () Bool)

(assert (=> b!4058589 (= e!2518540 (Cons!43373 (h!48793 lt!1449249) (++!11362 (t!336350 lt!1449249) newSuffixResult!27)))))

(declare-fun d!1205845 () Bool)

(assert (=> d!1205845 e!2518539))

(declare-fun res!1655335 () Bool)

(assert (=> d!1205845 (=> (not res!1655335) (not e!2518539))))

(assert (=> d!1205845 (= res!1655335 (= (content!6612 lt!1449484) ((_ map or) (content!6612 lt!1449249) (content!6612 newSuffixResult!27))))))

(assert (=> d!1205845 (= lt!1449484 e!2518540)))

(declare-fun c!700876 () Bool)

(assert (=> d!1205845 (= c!700876 ((_ is Nil!43373) lt!1449249))))

(assert (=> d!1205845 (= (++!11362 lt!1449249 newSuffixResult!27) lt!1449484)))

(declare-fun b!4058591 () Bool)

(assert (=> b!4058591 (= e!2518539 (or (not (= newSuffixResult!27 Nil!43373)) (= lt!1449484 lt!1449249)))))

(assert (= (and d!1205845 c!700876) b!4058588))

(assert (= (and d!1205845 (not c!700876)) b!4058589))

(assert (= (and d!1205845 res!1655335) b!4058590))

(assert (= (and b!4058590 res!1655334) b!4058591))

(declare-fun m!4663357 () Bool)

(assert (=> b!4058590 m!4663357))

(assert (=> b!4058590 m!4662577))

(assert (=> b!4058590 m!4662635))

(declare-fun m!4663359 () Bool)

(assert (=> b!4058589 m!4663359))

(declare-fun m!4663361 () Bool)

(assert (=> d!1205845 m!4663361))

(assert (=> d!1205845 m!4663159))

(assert (=> d!1205845 m!4662643))

(assert (=> b!4058061 d!1205845))

(declare-fun d!1205847 () Bool)

(declare-fun e!2518602 () Bool)

(assert (=> d!1205847 e!2518602))

(declare-fun res!1655418 () Bool)

(assert (=> d!1205847 (=> res!1655418 e!2518602)))

(declare-fun lt!1449534 () Option!9374)

(assert (=> d!1205847 (= res!1655418 (isEmpty!25884 lt!1449534))))

(declare-fun e!2518604 () Option!9374)

(assert (=> d!1205847 (= lt!1449534 e!2518604)))

(declare-fun c!700896 () Bool)

(declare-datatypes ((tuple2!42436 0))(
  ( (tuple2!42437 (_1!24352 List!43497) (_2!24352 List!43497)) )
))
(declare-fun lt!1449535 () tuple2!42436)

(assert (=> d!1205847 (= c!700896 (isEmpty!25885 (_1!24352 lt!1449535)))))

(declare-fun findLongestMatch!1317 (Regex!11865 List!43497) tuple2!42436)

(assert (=> d!1205847 (= lt!1449535 (findLongestMatch!1317 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) lt!1449255))))

(assert (=> d!1205847 (ruleValid!2890 thiss!21717 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))

(assert (=> d!1205847 (= (maxPrefixOneRule!2859 thiss!21717 (rule!10050 (_1!24351 (v!39791 lt!1449276))) lt!1449255) lt!1449534)))

(declare-fun b!4058707 () Bool)

(declare-fun e!2518601 () Bool)

(declare-fun findLongestMatchInner!1404 (Regex!11865 List!43497 Int List!43497 List!43497 Int) tuple2!42436)

(assert (=> b!4058707 (= e!2518601 (matchR!5818 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) (_1!24352 (findLongestMatchInner!1404 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) Nil!43373 (size!32428 Nil!43373) lt!1449255 lt!1449255 (size!32428 lt!1449255)))))))

(declare-fun b!4058708 () Bool)

(declare-fun size!32429 (BalanceConc!25936) Int)

(assert (=> b!4058708 (= e!2518604 (Some!9373 (tuple2!42435 (Token!13059 (apply!10149 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) (seqFromList!5177 (_1!24352 lt!1449535))) (rule!10050 (_1!24351 (v!39791 lt!1449276))) (size!32429 (seqFromList!5177 (_1!24352 lt!1449535))) (_1!24352 lt!1449535)) (_2!24352 lt!1449535))))))

(declare-fun lt!1449538 () Unit!62757)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1377 (Regex!11865 List!43497) Unit!62757)

(assert (=> b!4058708 (= lt!1449538 (longestMatchIsAcceptedByMatchOrIsEmpty!1377 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) lt!1449255))))

(declare-fun res!1655417 () Bool)

(assert (=> b!4058708 (= res!1655417 (isEmpty!25885 (_1!24352 (findLongestMatchInner!1404 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) Nil!43373 (size!32428 Nil!43373) lt!1449255 lt!1449255 (size!32428 lt!1449255)))))))

(assert (=> b!4058708 (=> res!1655417 e!2518601)))

(assert (=> b!4058708 e!2518601))

(declare-fun lt!1449536 () Unit!62757)

(assert (=> b!4058708 (= lt!1449536 lt!1449538)))

(declare-fun lt!1449537 () Unit!62757)

(declare-fun lemmaSemiInverse!1932 (TokenValueInjection!13808 BalanceConc!25936) Unit!62757)

(assert (=> b!4058708 (= lt!1449537 (lemmaSemiInverse!1932 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) (seqFromList!5177 (_1!24352 lt!1449535))))))

(declare-fun b!4058709 () Bool)

(declare-fun e!2518603 () Bool)

(assert (=> b!4058709 (= e!2518602 e!2518603)))

(declare-fun res!1655413 () Bool)

(assert (=> b!4058709 (=> (not res!1655413) (not e!2518603))))

(assert (=> b!4058709 (= res!1655413 (matchR!5818 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449534))))))))

(declare-fun b!4058710 () Bool)

(assert (=> b!4058710 (= e!2518604 None!9373)))

(declare-fun b!4058711 () Bool)

(declare-fun res!1655416 () Bool)

(assert (=> b!4058711 (=> (not res!1655416) (not e!2518603))))

(assert (=> b!4058711 (= res!1655416 (= (value!218994 (_1!24351 (get!14226 lt!1449534))) (apply!10149 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449534)))) (seqFromList!5177 (originalCharacters!7560 (_1!24351 (get!14226 lt!1449534)))))))))

(declare-fun b!4058712 () Bool)

(declare-fun res!1655415 () Bool)

(assert (=> b!4058712 (=> (not res!1655415) (not e!2518603))))

(assert (=> b!4058712 (= res!1655415 (= (rule!10050 (_1!24351 (get!14226 lt!1449534))) (rule!10050 (_1!24351 (v!39791 lt!1449276)))))))

(declare-fun b!4058713 () Bool)

(declare-fun res!1655414 () Bool)

(assert (=> b!4058713 (=> (not res!1655414) (not e!2518603))))

(assert (=> b!4058713 (= res!1655414 (= (++!11362 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449534)))) (_2!24351 (get!14226 lt!1449534))) lt!1449255))))

(declare-fun b!4058714 () Bool)

(assert (=> b!4058714 (= e!2518603 (= (size!32427 (_1!24351 (get!14226 lt!1449534))) (size!32428 (originalCharacters!7560 (_1!24351 (get!14226 lt!1449534))))))))

(declare-fun b!4058715 () Bool)

(declare-fun res!1655412 () Bool)

(assert (=> b!4058715 (=> (not res!1655412) (not e!2518603))))

(assert (=> b!4058715 (= res!1655412 (< (size!32428 (_2!24351 (get!14226 lt!1449534))) (size!32428 lt!1449255)))))

(assert (= (and d!1205847 c!700896) b!4058710))

(assert (= (and d!1205847 (not c!700896)) b!4058708))

(assert (= (and b!4058708 (not res!1655417)) b!4058707))

(assert (= (and d!1205847 (not res!1655418)) b!4058709))

(assert (= (and b!4058709 res!1655413) b!4058713))

(assert (= (and b!4058713 res!1655414) b!4058715))

(assert (= (and b!4058715 res!1655412) b!4058712))

(assert (= (and b!4058712 res!1655415) b!4058711))

(assert (= (and b!4058711 res!1655416) b!4058714))

(declare-fun m!4663571 () Bool)

(assert (=> b!4058712 m!4663571))

(assert (=> b!4058711 m!4663571))

(declare-fun m!4663573 () Bool)

(assert (=> b!4058711 m!4663573))

(assert (=> b!4058711 m!4663573))

(declare-fun m!4663575 () Bool)

(assert (=> b!4058711 m!4663575))

(assert (=> b!4058713 m!4663571))

(declare-fun m!4663577 () Bool)

(assert (=> b!4058713 m!4663577))

(assert (=> b!4058713 m!4663577))

(declare-fun m!4663579 () Bool)

(assert (=> b!4058713 m!4663579))

(assert (=> b!4058713 m!4663579))

(declare-fun m!4663581 () Bool)

(assert (=> b!4058713 m!4663581))

(declare-fun m!4663583 () Bool)

(assert (=> d!1205847 m!4663583))

(declare-fun m!4663585 () Bool)

(assert (=> d!1205847 m!4663585))

(declare-fun m!4663587 () Bool)

(assert (=> d!1205847 m!4663587))

(assert (=> d!1205847 m!4662579))

(assert (=> b!4058715 m!4663571))

(declare-fun m!4663589 () Bool)

(assert (=> b!4058715 m!4663589))

(assert (=> b!4058715 m!4662901))

(assert (=> b!4058709 m!4663571))

(assert (=> b!4058709 m!4663577))

(assert (=> b!4058709 m!4663577))

(assert (=> b!4058709 m!4663579))

(assert (=> b!4058709 m!4663579))

(declare-fun m!4663591 () Bool)

(assert (=> b!4058709 m!4663591))

(declare-fun m!4663593 () Bool)

(assert (=> b!4058707 m!4663593))

(assert (=> b!4058707 m!4662901))

(assert (=> b!4058707 m!4663593))

(assert (=> b!4058707 m!4662901))

(declare-fun m!4663595 () Bool)

(assert (=> b!4058707 m!4663595))

(declare-fun m!4663597 () Bool)

(assert (=> b!4058707 m!4663597))

(assert (=> b!4058714 m!4663571))

(declare-fun m!4663599 () Bool)

(assert (=> b!4058714 m!4663599))

(declare-fun m!4663601 () Bool)

(assert (=> b!4058708 m!4663601))

(declare-fun m!4663603 () Bool)

(assert (=> b!4058708 m!4663603))

(declare-fun m!4663605 () Bool)

(assert (=> b!4058708 m!4663605))

(declare-fun m!4663607 () Bool)

(assert (=> b!4058708 m!4663607))

(assert (=> b!4058708 m!4663605))

(declare-fun m!4663609 () Bool)

(assert (=> b!4058708 m!4663609))

(assert (=> b!4058708 m!4663593))

(assert (=> b!4058708 m!4662901))

(assert (=> b!4058708 m!4663595))

(assert (=> b!4058708 m!4663605))

(declare-fun m!4663611 () Bool)

(assert (=> b!4058708 m!4663611))

(assert (=> b!4058708 m!4663605))

(assert (=> b!4058708 m!4662901))

(assert (=> b!4058708 m!4663593))

(assert (=> b!4058061 d!1205847))

(declare-fun d!1205903 () Bool)

(assert (=> d!1205903 (= (size!32427 token!484) (size!32428 (originalCharacters!7560 token!484)))))

(declare-fun Unit!62766 () Unit!62757)

(assert (=> d!1205903 (= (lemmaCharactersSize!1479 token!484) Unit!62766)))

(declare-fun bs!591957 () Bool)

(assert (= bs!591957 d!1205903))

(assert (=> bs!591957 m!4662527))

(assert (=> b!4058061 d!1205903))

(declare-fun d!1205905 () Bool)

(declare-fun fromListB!2362 (List!43497) BalanceConc!25936)

(assert (=> d!1205905 (= (seqFromList!5177 lt!1449249) (fromListB!2362 lt!1449249))))

(declare-fun bs!591958 () Bool)

(assert (= bs!591958 d!1205905))

(declare-fun m!4663617 () Bool)

(assert (=> bs!591958 m!4663617))

(assert (=> b!4058061 d!1205905))

(declare-fun d!1205907 () Bool)

(declare-fun lt!1449539 () Int)

(assert (=> d!1205907 (>= lt!1449539 0)))

(declare-fun e!2518629 () Int)

(assert (=> d!1205907 (= lt!1449539 e!2518629)))

(declare-fun c!700897 () Bool)

(assert (=> d!1205907 (= c!700897 ((_ is Nil!43373) lt!1449249))))

(assert (=> d!1205907 (= (size!32428 lt!1449249) lt!1449539)))

(declare-fun b!4058755 () Bool)

(assert (=> b!4058755 (= e!2518629 0)))

(declare-fun b!4058756 () Bool)

(assert (=> b!4058756 (= e!2518629 (+ 1 (size!32428 (t!336350 lt!1449249))))))

(assert (= (and d!1205907 c!700897) b!4058755))

(assert (= (and d!1205907 (not c!700897)) b!4058756))

(declare-fun m!4663619 () Bool)

(assert (=> b!4058756 m!4663619))

(assert (=> b!4058061 d!1205907))

(declare-fun d!1205909 () Bool)

(assert (=> d!1205909 (isPrefix!4047 lt!1449249 (++!11362 lt!1449249 (_2!24351 (v!39791 lt!1449276))))))

(declare-fun lt!1449540 () Unit!62757)

(assert (=> d!1205909 (= lt!1449540 (choose!24655 lt!1449249 (_2!24351 (v!39791 lt!1449276))))))

(assert (=> d!1205909 (= (lemmaConcatTwoListThenFirstIsPrefix!2882 lt!1449249 (_2!24351 (v!39791 lt!1449276))) lt!1449540)))

(declare-fun bs!591959 () Bool)

(assert (= bs!591959 d!1205909))

(assert (=> bs!591959 m!4662569))

(assert (=> bs!591959 m!4662569))

(declare-fun m!4663621 () Bool)

(assert (=> bs!591959 m!4663621))

(declare-fun m!4663623 () Bool)

(assert (=> bs!591959 m!4663623))

(assert (=> b!4058061 d!1205909))

(declare-fun d!1205911 () Bool)

(declare-fun e!2518630 () Bool)

(assert (=> d!1205911 e!2518630))

(declare-fun res!1655419 () Bool)

(assert (=> d!1205911 (=> (not res!1655419) (not e!2518630))))

(assert (=> d!1205911 (= res!1655419 (semiInverseModEq!2976 (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))))))

(declare-fun Unit!62767 () Unit!62757)

(assert (=> d!1205911 (= (lemmaInv!1169 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) Unit!62767)))

(declare-fun b!4058757 () Bool)

(assert (=> b!4058757 (= e!2518630 (equivClasses!2875 (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))))))

(assert (= (and d!1205911 res!1655419) b!4058757))

(declare-fun m!4663625 () Bool)

(assert (=> d!1205911 m!4663625))

(declare-fun m!4663627 () Bool)

(assert (=> b!4058757 m!4663627))

(assert (=> b!4058061 d!1205911))

(declare-fun b!4058760 () Bool)

(declare-fun res!1655420 () Bool)

(declare-fun e!2518631 () Bool)

(assert (=> b!4058760 (=> (not res!1655420) (not e!2518631))))

(declare-fun lt!1449541 () List!43497)

(assert (=> b!4058760 (= res!1655420 (= (size!32428 lt!1449541) (+ (size!32428 lt!1449249) (size!32428 (_2!24351 (v!39791 lt!1449276))))))))

(declare-fun b!4058758 () Bool)

(declare-fun e!2518632 () List!43497)

(assert (=> b!4058758 (= e!2518632 (_2!24351 (v!39791 lt!1449276)))))

(declare-fun b!4058759 () Bool)

(assert (=> b!4058759 (= e!2518632 (Cons!43373 (h!48793 lt!1449249) (++!11362 (t!336350 lt!1449249) (_2!24351 (v!39791 lt!1449276)))))))

(declare-fun d!1205913 () Bool)

(assert (=> d!1205913 e!2518631))

(declare-fun res!1655421 () Bool)

(assert (=> d!1205913 (=> (not res!1655421) (not e!2518631))))

(assert (=> d!1205913 (= res!1655421 (= (content!6612 lt!1449541) ((_ map or) (content!6612 lt!1449249) (content!6612 (_2!24351 (v!39791 lt!1449276))))))))

(assert (=> d!1205913 (= lt!1449541 e!2518632)))

(declare-fun c!700898 () Bool)

(assert (=> d!1205913 (= c!700898 ((_ is Nil!43373) lt!1449249))))

(assert (=> d!1205913 (= (++!11362 lt!1449249 (_2!24351 (v!39791 lt!1449276))) lt!1449541)))

(declare-fun b!4058761 () Bool)

(assert (=> b!4058761 (= e!2518631 (or (not (= (_2!24351 (v!39791 lt!1449276)) Nil!43373)) (= lt!1449541 lt!1449249)))))

(assert (= (and d!1205913 c!700898) b!4058758))

(assert (= (and d!1205913 (not c!700898)) b!4058759))

(assert (= (and d!1205913 res!1655421) b!4058760))

(assert (= (and b!4058760 res!1655420) b!4058761))

(declare-fun m!4663629 () Bool)

(assert (=> b!4058760 m!4663629))

(assert (=> b!4058760 m!4662577))

(declare-fun m!4663631 () Bool)

(assert (=> b!4058760 m!4663631))

(declare-fun m!4663633 () Bool)

(assert (=> b!4058759 m!4663633))

(declare-fun m!4663635 () Bool)

(assert (=> d!1205913 m!4663635))

(assert (=> d!1205913 m!4663159))

(declare-fun m!4663637 () Bool)

(assert (=> d!1205913 m!4663637))

(assert (=> b!4058061 d!1205913))

(declare-fun d!1205915 () Bool)

(assert (=> d!1205915 (ruleValid!2890 thiss!21717 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))

(declare-fun lt!1449542 () Unit!62757)

(assert (=> d!1205915 (= lt!1449542 (choose!24663 thiss!21717 (rule!10050 (_1!24351 (v!39791 lt!1449276))) rules!2999))))

(assert (=> d!1205915 (contains!8628 rules!2999 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))

(assert (=> d!1205915 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1960 thiss!21717 (rule!10050 (_1!24351 (v!39791 lt!1449276))) rules!2999) lt!1449542)))

(declare-fun bs!591960 () Bool)

(assert (= bs!591960 d!1205915))

(assert (=> bs!591960 m!4662579))

(declare-fun m!4663639 () Bool)

(assert (=> bs!591960 m!4663639))

(assert (=> bs!591960 m!4663057))

(assert (=> b!4058061 d!1205915))

(declare-fun d!1205917 () Bool)

(declare-fun dynLambda!18426 (Int BalanceConc!25936) TokenValue!7190)

(assert (=> d!1205917 (= (apply!10149 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) (seqFromList!5177 lt!1449249)) (dynLambda!18426 (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (seqFromList!5177 lt!1449249)))))

(declare-fun b_lambda!118591 () Bool)

(assert (=> (not b_lambda!118591) (not d!1205917)))

(declare-fun tb!244113 () Bool)

(declare-fun t!336386 () Bool)

(assert (=> (and b!4058071 (= (toValue!9516 (transformation!6960 (h!48795 rules!2999))) (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))) t!336386) tb!244113))

(declare-fun result!295818 () Bool)

(assert (=> tb!244113 (= result!295818 (inv!21 (dynLambda!18426 (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (seqFromList!5177 lt!1449249))))))

(declare-fun m!4663641 () Bool)

(assert (=> tb!244113 m!4663641))

(assert (=> d!1205917 t!336386))

(declare-fun b_and!312043 () Bool)

(assert (= b_and!312003 (and (=> t!336386 result!295818) b_and!312043)))

(declare-fun t!336388 () Bool)

(declare-fun tb!244115 () Bool)

(assert (=> (and b!4058069 (= (toValue!9516 (transformation!6960 (rule!10050 token!484))) (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))) t!336388) tb!244115))

(declare-fun result!295822 () Bool)

(assert (= result!295822 result!295818))

(assert (=> d!1205917 t!336388))

(declare-fun b_and!312045 () Bool)

(assert (= b_and!312007 (and (=> t!336388 result!295822) b_and!312045)))

(assert (=> d!1205917 m!4662573))

(declare-fun m!4663643 () Bool)

(assert (=> d!1205917 m!4663643))

(assert (=> b!4058061 d!1205917))

(declare-fun d!1205919 () Bool)

(assert (=> d!1205919 (= (inv!57978 (tag!7820 (h!48795 rules!2999))) (= (mod (str.len (value!218968 (tag!7820 (h!48795 rules!2999)))) 2) 0))))

(assert (=> b!4058040 d!1205919))

(declare-fun d!1205921 () Bool)

(declare-fun res!1655424 () Bool)

(declare-fun e!2518638 () Bool)

(assert (=> d!1205921 (=> (not res!1655424) (not e!2518638))))

(assert (=> d!1205921 (= res!1655424 (semiInverseModEq!2976 (toChars!9375 (transformation!6960 (h!48795 rules!2999))) (toValue!9516 (transformation!6960 (h!48795 rules!2999)))))))

(assert (=> d!1205921 (= (inv!57981 (transformation!6960 (h!48795 rules!2999))) e!2518638)))

(declare-fun b!4058766 () Bool)

(assert (=> b!4058766 (= e!2518638 (equivClasses!2875 (toChars!9375 (transformation!6960 (h!48795 rules!2999))) (toValue!9516 (transformation!6960 (h!48795 rules!2999)))))))

(assert (= (and d!1205921 res!1655424) b!4058766))

(declare-fun m!4663645 () Bool)

(assert (=> d!1205921 m!4663645))

(declare-fun m!4663647 () Bool)

(assert (=> b!4058766 m!4663647))

(assert (=> b!4058040 d!1205921))

(declare-fun b!4058769 () Bool)

(declare-fun e!2518639 () Bool)

(assert (=> b!4058769 (= e!2518639 (isPrefix!4047 (tail!6303 newSuffix!27) (tail!6303 suffix!1299)))))

(declare-fun b!4058767 () Bool)

(declare-fun e!2518641 () Bool)

(assert (=> b!4058767 (= e!2518641 e!2518639)))

(declare-fun res!1655425 () Bool)

(assert (=> b!4058767 (=> (not res!1655425) (not e!2518639))))

(assert (=> b!4058767 (= res!1655425 (not ((_ is Nil!43373) suffix!1299)))))

(declare-fun b!4058768 () Bool)

(declare-fun res!1655426 () Bool)

(assert (=> b!4058768 (=> (not res!1655426) (not e!2518639))))

(assert (=> b!4058768 (= res!1655426 (= (head!8571 newSuffix!27) (head!8571 suffix!1299)))))

(declare-fun d!1205923 () Bool)

(declare-fun e!2518640 () Bool)

(assert (=> d!1205923 e!2518640))

(declare-fun res!1655427 () Bool)

(assert (=> d!1205923 (=> res!1655427 e!2518640)))

(declare-fun lt!1449543 () Bool)

(assert (=> d!1205923 (= res!1655427 (not lt!1449543))))

(assert (=> d!1205923 (= lt!1449543 e!2518641)))

(declare-fun res!1655428 () Bool)

(assert (=> d!1205923 (=> res!1655428 e!2518641)))

(assert (=> d!1205923 (= res!1655428 ((_ is Nil!43373) newSuffix!27))))

(assert (=> d!1205923 (= (isPrefix!4047 newSuffix!27 suffix!1299) lt!1449543)))

(declare-fun b!4058770 () Bool)

(assert (=> b!4058770 (= e!2518640 (>= (size!32428 suffix!1299) (size!32428 newSuffix!27)))))

(assert (= (and d!1205923 (not res!1655428)) b!4058767))

(assert (= (and b!4058767 res!1655425) b!4058768))

(assert (= (and b!4058768 res!1655426) b!4058769))

(assert (= (and d!1205923 (not res!1655427)) b!4058770))

(declare-fun m!4663649 () Bool)

(assert (=> b!4058769 m!4663649))

(declare-fun m!4663651 () Bool)

(assert (=> b!4058769 m!4663651))

(assert (=> b!4058769 m!4663649))

(assert (=> b!4058769 m!4663651))

(declare-fun m!4663653 () Bool)

(assert (=> b!4058769 m!4663653))

(declare-fun m!4663655 () Bool)

(assert (=> b!4058768 m!4663655))

(declare-fun m!4663657 () Bool)

(assert (=> b!4058768 m!4663657))

(assert (=> b!4058770 m!4662511))

(assert (=> b!4058770 m!4662513))

(assert (=> b!4058059 d!1205923))

(declare-fun d!1205925 () Bool)

(assert (=> d!1205925 (= (isEmpty!25881 rules!2999) ((_ is Nil!43375) rules!2999))))

(assert (=> b!4058060 d!1205925))

(declare-fun b!4058773 () Bool)

(declare-fun res!1655429 () Bool)

(declare-fun e!2518642 () Bool)

(assert (=> b!4058773 (=> (not res!1655429) (not e!2518642))))

(declare-fun lt!1449544 () List!43497)

(assert (=> b!4058773 (= res!1655429 (= (size!32428 lt!1449544) (+ (size!32428 lt!1449266) (size!32428 lt!1449238))))))

(declare-fun b!4058771 () Bool)

(declare-fun e!2518643 () List!43497)

(assert (=> b!4058771 (= e!2518643 lt!1449238)))

(declare-fun b!4058772 () Bool)

(assert (=> b!4058772 (= e!2518643 (Cons!43373 (h!48793 lt!1449266) (++!11362 (t!336350 lt!1449266) lt!1449238)))))

(declare-fun d!1205927 () Bool)

(assert (=> d!1205927 e!2518642))

(declare-fun res!1655430 () Bool)

(assert (=> d!1205927 (=> (not res!1655430) (not e!2518642))))

(assert (=> d!1205927 (= res!1655430 (= (content!6612 lt!1449544) ((_ map or) (content!6612 lt!1449266) (content!6612 lt!1449238))))))

(assert (=> d!1205927 (= lt!1449544 e!2518643)))

(declare-fun c!700899 () Bool)

(assert (=> d!1205927 (= c!700899 ((_ is Nil!43373) lt!1449266))))

(assert (=> d!1205927 (= (++!11362 lt!1449266 lt!1449238) lt!1449544)))

(declare-fun b!4058774 () Bool)

(assert (=> b!4058774 (= e!2518642 (or (not (= lt!1449238 Nil!43373)) (= lt!1449544 lt!1449266)))))

(assert (= (and d!1205927 c!700899) b!4058771))

(assert (= (and d!1205927 (not c!700899)) b!4058772))

(assert (= (and d!1205927 res!1655430) b!4058773))

(assert (= (and b!4058773 res!1655429) b!4058774))

(declare-fun m!4663659 () Bool)

(assert (=> b!4058773 m!4663659))

(assert (=> b!4058773 m!4662529))

(assert (=> b!4058773 m!4663209))

(declare-fun m!4663661 () Bool)

(assert (=> b!4058772 m!4663661))

(declare-fun m!4663663 () Bool)

(assert (=> d!1205927 m!4663663))

(assert (=> d!1205927 m!4662641))

(assert (=> d!1205927 m!4663215))

(assert (=> b!4058063 d!1205927))

(declare-fun d!1205929 () Bool)

(declare-fun lt!1449545 () List!43497)

(assert (=> d!1205929 (= (++!11362 lt!1449266 lt!1449545) prefix!494)))

(declare-fun e!2518644 () List!43497)

(assert (=> d!1205929 (= lt!1449545 e!2518644)))

(declare-fun c!700900 () Bool)

(assert (=> d!1205929 (= c!700900 ((_ is Cons!43373) lt!1449266))))

(assert (=> d!1205929 (>= (size!32428 prefix!494) (size!32428 lt!1449266))))

(assert (=> d!1205929 (= (getSuffix!2464 prefix!494 lt!1449266) lt!1449545)))

(declare-fun b!4058775 () Bool)

(assert (=> b!4058775 (= e!2518644 (getSuffix!2464 (tail!6303 prefix!494) (t!336350 lt!1449266)))))

(declare-fun b!4058776 () Bool)

(assert (=> b!4058776 (= e!2518644 prefix!494)))

(assert (= (and d!1205929 c!700900) b!4058775))

(assert (= (and d!1205929 (not c!700900)) b!4058776))

(declare-fun m!4663665 () Bool)

(assert (=> d!1205929 m!4663665))

(assert (=> d!1205929 m!4662531))

(assert (=> d!1205929 m!4662529))

(assert (=> b!4058775 m!4662669))

(assert (=> b!4058775 m!4662669))

(declare-fun m!4663667 () Bool)

(assert (=> b!4058775 m!4663667))

(assert (=> b!4058063 d!1205929))

(declare-fun b!4058779 () Bool)

(declare-fun e!2518645 () Bool)

(assert (=> b!4058779 (= e!2518645 (isPrefix!4047 (tail!6303 lt!1449266) (tail!6303 prefix!494)))))

(declare-fun b!4058777 () Bool)

(declare-fun e!2518647 () Bool)

(assert (=> b!4058777 (= e!2518647 e!2518645)))

(declare-fun res!1655431 () Bool)

(assert (=> b!4058777 (=> (not res!1655431) (not e!2518645))))

(assert (=> b!4058777 (= res!1655431 (not ((_ is Nil!43373) prefix!494)))))

(declare-fun b!4058778 () Bool)

(declare-fun res!1655432 () Bool)

(assert (=> b!4058778 (=> (not res!1655432) (not e!2518645))))

(assert (=> b!4058778 (= res!1655432 (= (head!8571 lt!1449266) (head!8571 prefix!494)))))

(declare-fun d!1205931 () Bool)

(declare-fun e!2518646 () Bool)

(assert (=> d!1205931 e!2518646))

(declare-fun res!1655433 () Bool)

(assert (=> d!1205931 (=> res!1655433 e!2518646)))

(declare-fun lt!1449546 () Bool)

(assert (=> d!1205931 (= res!1655433 (not lt!1449546))))

(assert (=> d!1205931 (= lt!1449546 e!2518647)))

(declare-fun res!1655434 () Bool)

(assert (=> d!1205931 (=> res!1655434 e!2518647)))

(assert (=> d!1205931 (= res!1655434 ((_ is Nil!43373) lt!1449266))))

(assert (=> d!1205931 (= (isPrefix!4047 lt!1449266 prefix!494) lt!1449546)))

(declare-fun b!4058780 () Bool)

(assert (=> b!4058780 (= e!2518646 (>= (size!32428 prefix!494) (size!32428 lt!1449266)))))

(assert (= (and d!1205931 (not res!1655434)) b!4058777))

(assert (= (and b!4058777 res!1655431) b!4058778))

(assert (= (and b!4058778 res!1655432) b!4058779))

(assert (= (and d!1205931 (not res!1655433)) b!4058780))

(assert (=> b!4058779 m!4662649))

(assert (=> b!4058779 m!4662669))

(assert (=> b!4058779 m!4662649))

(assert (=> b!4058779 m!4662669))

(declare-fun m!4663669 () Bool)

(assert (=> b!4058779 m!4663669))

(assert (=> b!4058778 m!4662655))

(assert (=> b!4058778 m!4662673))

(assert (=> b!4058780 m!4662531))

(assert (=> b!4058780 m!4662529))

(assert (=> b!4058063 d!1205931))

(declare-fun d!1205933 () Bool)

(assert (=> d!1205933 (isPrefix!4047 lt!1449266 prefix!494)))

(declare-fun lt!1449549 () Unit!62757)

(declare-fun choose!24671 (List!43497 List!43497 List!43497) Unit!62757)

(assert (=> d!1205933 (= lt!1449549 (choose!24671 prefix!494 lt!1449266 lt!1449231))))

(assert (=> d!1205933 (isPrefix!4047 prefix!494 lt!1449231)))

(assert (=> d!1205933 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!611 prefix!494 lt!1449266 lt!1449231) lt!1449549)))

(declare-fun bs!591961 () Bool)

(assert (= bs!591961 d!1205933))

(assert (=> bs!591961 m!4662431))

(declare-fun m!4663671 () Bool)

(assert (=> bs!591961 m!4663671))

(assert (=> bs!591961 m!4662559))

(assert (=> b!4058063 d!1205933))

(declare-fun b!4058783 () Bool)

(declare-fun e!2518648 () Bool)

(assert (=> b!4058783 (= e!2518648 (isPrefix!4047 (tail!6303 lt!1449249) (tail!6303 lt!1449255)))))

(declare-fun b!4058781 () Bool)

(declare-fun e!2518650 () Bool)

(assert (=> b!4058781 (= e!2518650 e!2518648)))

(declare-fun res!1655435 () Bool)

(assert (=> b!4058781 (=> (not res!1655435) (not e!2518648))))

(assert (=> b!4058781 (= res!1655435 (not ((_ is Nil!43373) lt!1449255)))))

(declare-fun b!4058782 () Bool)

(declare-fun res!1655436 () Bool)

(assert (=> b!4058782 (=> (not res!1655436) (not e!2518648))))

(assert (=> b!4058782 (= res!1655436 (= (head!8571 lt!1449249) (head!8571 lt!1449255)))))

(declare-fun d!1205935 () Bool)

(declare-fun e!2518649 () Bool)

(assert (=> d!1205935 e!2518649))

(declare-fun res!1655437 () Bool)

(assert (=> d!1205935 (=> res!1655437 e!2518649)))

(declare-fun lt!1449550 () Bool)

(assert (=> d!1205935 (= res!1655437 (not lt!1449550))))

(assert (=> d!1205935 (= lt!1449550 e!2518650)))

(declare-fun res!1655438 () Bool)

(assert (=> d!1205935 (=> res!1655438 e!2518650)))

(assert (=> d!1205935 (= res!1655438 ((_ is Nil!43373) lt!1449249))))

(assert (=> d!1205935 (= (isPrefix!4047 lt!1449249 lt!1449255) lt!1449550)))

(declare-fun b!4058784 () Bool)

(assert (=> b!4058784 (= e!2518649 (>= (size!32428 lt!1449255) (size!32428 lt!1449249)))))

(assert (= (and d!1205935 (not res!1655438)) b!4058781))

(assert (= (and b!4058781 res!1655435) b!4058782))

(assert (= (and b!4058782 res!1655436) b!4058783))

(assert (= (and d!1205935 (not res!1655437)) b!4058784))

(assert (=> b!4058783 m!4663171))

(assert (=> b!4058783 m!4663165))

(assert (=> b!4058783 m!4663171))

(assert (=> b!4058783 m!4663165))

(declare-fun m!4663673 () Bool)

(assert (=> b!4058783 m!4663673))

(assert (=> b!4058782 m!4663177))

(assert (=> b!4058782 m!4663315))

(assert (=> b!4058784 m!4662901))

(assert (=> b!4058784 m!4662577))

(assert (=> b!4058042 d!1205935))

(declare-fun b!4058795 () Bool)

(declare-fun e!2518659 () Bool)

(declare-fun inv!16 (TokenValue!7190) Bool)

(assert (=> b!4058795 (= e!2518659 (inv!16 (value!218994 token!484)))))

(declare-fun b!4058796 () Bool)

(declare-fun res!1655441 () Bool)

(declare-fun e!2518657 () Bool)

(assert (=> b!4058796 (=> res!1655441 e!2518657)))

(assert (=> b!4058796 (= res!1655441 (not ((_ is IntegerValue!21572) (value!218994 token!484))))))

(declare-fun e!2518658 () Bool)

(assert (=> b!4058796 (= e!2518658 e!2518657)))

(declare-fun d!1205937 () Bool)

(declare-fun c!700906 () Bool)

(assert (=> d!1205937 (= c!700906 ((_ is IntegerValue!21570) (value!218994 token!484)))))

(assert (=> d!1205937 (= (inv!21 (value!218994 token!484)) e!2518659)))

(declare-fun b!4058797 () Bool)

(assert (=> b!4058797 (= e!2518659 e!2518658)))

(declare-fun c!700905 () Bool)

(assert (=> b!4058797 (= c!700905 ((_ is IntegerValue!21571) (value!218994 token!484)))))

(declare-fun b!4058798 () Bool)

(declare-fun inv!15 (TokenValue!7190) Bool)

(assert (=> b!4058798 (= e!2518657 (inv!15 (value!218994 token!484)))))

(declare-fun b!4058799 () Bool)

(declare-fun inv!17 (TokenValue!7190) Bool)

(assert (=> b!4058799 (= e!2518658 (inv!17 (value!218994 token!484)))))

(assert (= (and d!1205937 c!700906) b!4058795))

(assert (= (and d!1205937 (not c!700906)) b!4058797))

(assert (= (and b!4058797 c!700905) b!4058799))

(assert (= (and b!4058797 (not c!700905)) b!4058796))

(assert (= (and b!4058796 (not res!1655441)) b!4058798))

(declare-fun m!4663675 () Bool)

(assert (=> b!4058795 m!4663675))

(declare-fun m!4663677 () Bool)

(assert (=> b!4058798 m!4663677))

(declare-fun m!4663679 () Bool)

(assert (=> b!4058799 m!4663679))

(assert (=> b!4058064 d!1205937))

(declare-fun b!4058802 () Bool)

(declare-fun res!1655442 () Bool)

(declare-fun e!2518660 () Bool)

(assert (=> b!4058802 (=> (not res!1655442) (not e!2518660))))

(declare-fun lt!1449551 () List!43497)

(assert (=> b!4058802 (= res!1655442 (= (size!32428 lt!1449551) (+ (size!32428 lt!1449266) (size!32428 lt!1449232))))))

(declare-fun b!4058800 () Bool)

(declare-fun e!2518661 () List!43497)

(assert (=> b!4058800 (= e!2518661 lt!1449232)))

(declare-fun b!4058801 () Bool)

(assert (=> b!4058801 (= e!2518661 (Cons!43373 (h!48793 lt!1449266) (++!11362 (t!336350 lt!1449266) lt!1449232)))))

(declare-fun d!1205939 () Bool)

(assert (=> d!1205939 e!2518660))

(declare-fun res!1655443 () Bool)

(assert (=> d!1205939 (=> (not res!1655443) (not e!2518660))))

(assert (=> d!1205939 (= res!1655443 (= (content!6612 lt!1449551) ((_ map or) (content!6612 lt!1449266) (content!6612 lt!1449232))))))

(assert (=> d!1205939 (= lt!1449551 e!2518661)))

(declare-fun c!700907 () Bool)

(assert (=> d!1205939 (= c!700907 ((_ is Nil!43373) lt!1449266))))

(assert (=> d!1205939 (= (++!11362 lt!1449266 lt!1449232) lt!1449551)))

(declare-fun b!4058803 () Bool)

(assert (=> b!4058803 (= e!2518660 (or (not (= lt!1449232 Nil!43373)) (= lt!1449551 lt!1449266)))))

(assert (= (and d!1205939 c!700907) b!4058800))

(assert (= (and d!1205939 (not c!700907)) b!4058801))

(assert (= (and d!1205939 res!1655443) b!4058802))

(assert (= (and b!4058802 res!1655442) b!4058803))

(declare-fun m!4663681 () Bool)

(assert (=> b!4058802 m!4663681))

(assert (=> b!4058802 m!4662529))

(declare-fun m!4663683 () Bool)

(assert (=> b!4058802 m!4663683))

(declare-fun m!4663685 () Bool)

(assert (=> b!4058801 m!4663685))

(declare-fun m!4663687 () Bool)

(assert (=> d!1205939 m!4663687))

(assert (=> d!1205939 m!4662641))

(declare-fun m!4663689 () Bool)

(assert (=> d!1205939 m!4663689))

(assert (=> b!4058062 d!1205939))

(declare-fun d!1205941 () Bool)

(declare-fun lt!1449552 () List!43497)

(assert (=> d!1205941 (= (++!11362 lt!1449266 lt!1449552) lt!1449231)))

(declare-fun e!2518662 () List!43497)

(assert (=> d!1205941 (= lt!1449552 e!2518662)))

(declare-fun c!700908 () Bool)

(assert (=> d!1205941 (= c!700908 ((_ is Cons!43373) lt!1449266))))

(assert (=> d!1205941 (>= (size!32428 lt!1449231) (size!32428 lt!1449266))))

(assert (=> d!1205941 (= (getSuffix!2464 lt!1449231 lt!1449266) lt!1449552)))

(declare-fun b!4058804 () Bool)

(assert (=> b!4058804 (= e!2518662 (getSuffix!2464 (tail!6303 lt!1449231) (t!336350 lt!1449266)))))

(declare-fun b!4058805 () Bool)

(assert (=> b!4058805 (= e!2518662 lt!1449231)))

(assert (= (and d!1205941 c!700908) b!4058804))

(assert (= (and d!1205941 (not c!700908)) b!4058805))

(declare-fun m!4663691 () Bool)

(assert (=> d!1205941 m!4663691))

(assert (=> d!1205941 m!4662659))

(assert (=> d!1205941 m!4662529))

(assert (=> b!4058804 m!4662651))

(assert (=> b!4058804 m!4662651))

(declare-fun m!4663693 () Bool)

(assert (=> b!4058804 m!4663693))

(assert (=> b!4058062 d!1205941))

(declare-fun b!4058808 () Bool)

(declare-fun e!2518663 () Bool)

(assert (=> b!4058808 (= e!2518663 (isPrefix!4047 (tail!6303 lt!1449231) (tail!6303 lt!1449231)))))

(declare-fun b!4058806 () Bool)

(declare-fun e!2518665 () Bool)

(assert (=> b!4058806 (= e!2518665 e!2518663)))

(declare-fun res!1655444 () Bool)

(assert (=> b!4058806 (=> (not res!1655444) (not e!2518663))))

(assert (=> b!4058806 (= res!1655444 (not ((_ is Nil!43373) lt!1449231)))))

(declare-fun b!4058807 () Bool)

(declare-fun res!1655445 () Bool)

(assert (=> b!4058807 (=> (not res!1655445) (not e!2518663))))

(assert (=> b!4058807 (= res!1655445 (= (head!8571 lt!1449231) (head!8571 lt!1449231)))))

(declare-fun d!1205943 () Bool)

(declare-fun e!2518664 () Bool)

(assert (=> d!1205943 e!2518664))

(declare-fun res!1655446 () Bool)

(assert (=> d!1205943 (=> res!1655446 e!2518664)))

(declare-fun lt!1449553 () Bool)

(assert (=> d!1205943 (= res!1655446 (not lt!1449553))))

(assert (=> d!1205943 (= lt!1449553 e!2518665)))

(declare-fun res!1655447 () Bool)

(assert (=> d!1205943 (=> res!1655447 e!2518665)))

(assert (=> d!1205943 (= res!1655447 ((_ is Nil!43373) lt!1449231))))

(assert (=> d!1205943 (= (isPrefix!4047 lt!1449231 lt!1449231) lt!1449553)))

(declare-fun b!4058809 () Bool)

(assert (=> b!4058809 (= e!2518664 (>= (size!32428 lt!1449231) (size!32428 lt!1449231)))))

(assert (= (and d!1205943 (not res!1655447)) b!4058806))

(assert (= (and b!4058806 res!1655444) b!4058807))

(assert (= (and b!4058807 res!1655445) b!4058808))

(assert (= (and d!1205943 (not res!1655446)) b!4058809))

(assert (=> b!4058808 m!4662651))

(assert (=> b!4058808 m!4662651))

(assert (=> b!4058808 m!4662651))

(assert (=> b!4058808 m!4662651))

(declare-fun m!4663695 () Bool)

(assert (=> b!4058808 m!4663695))

(assert (=> b!4058807 m!4662657))

(assert (=> b!4058807 m!4662657))

(assert (=> b!4058809 m!4662659))

(assert (=> b!4058809 m!4662659))

(assert (=> b!4058062 d!1205943))

(declare-fun d!1205945 () Bool)

(assert (=> d!1205945 (isPrefix!4047 lt!1449231 lt!1449231)))

(declare-fun lt!1449556 () Unit!62757)

(declare-fun choose!24672 (List!43497 List!43497) Unit!62757)

(assert (=> d!1205945 (= lt!1449556 (choose!24672 lt!1449231 lt!1449231))))

(assert (=> d!1205945 (= (lemmaIsPrefixRefl!2614 lt!1449231 lt!1449231) lt!1449556)))

(declare-fun bs!591962 () Bool)

(assert (= bs!591962 d!1205945))

(assert (=> bs!591962 m!4662457))

(declare-fun m!4663697 () Bool)

(assert (=> bs!591962 m!4663697))

(assert (=> b!4058062 d!1205945))

(declare-fun d!1205947 () Bool)

(assert (=> d!1205947 (= (inv!57978 (tag!7820 (rule!10050 token!484))) (= (mod (str.len (value!218968 (tag!7820 (rule!10050 token!484)))) 2) 0))))

(assert (=> b!4058041 d!1205947))

(declare-fun d!1205949 () Bool)

(declare-fun res!1655448 () Bool)

(declare-fun e!2518666 () Bool)

(assert (=> d!1205949 (=> (not res!1655448) (not e!2518666))))

(assert (=> d!1205949 (= res!1655448 (semiInverseModEq!2976 (toChars!9375 (transformation!6960 (rule!10050 token!484))) (toValue!9516 (transformation!6960 (rule!10050 token!484)))))))

(assert (=> d!1205949 (= (inv!57981 (transformation!6960 (rule!10050 token!484))) e!2518666)))

(declare-fun b!4058810 () Bool)

(assert (=> b!4058810 (= e!2518666 (equivClasses!2875 (toChars!9375 (transformation!6960 (rule!10050 token!484))) (toValue!9516 (transformation!6960 (rule!10050 token!484)))))))

(assert (= (and d!1205949 res!1655448) b!4058810))

(assert (=> d!1205949 m!4663137))

(assert (=> b!4058810 m!4663139))

(assert (=> b!4058041 d!1205949))

(declare-fun b!4058813 () Bool)

(declare-fun e!2518667 () Bool)

(assert (=> b!4058813 (= e!2518667 (isPrefix!4047 (tail!6303 lt!1449249) (tail!6303 lt!1449231)))))

(declare-fun b!4058811 () Bool)

(declare-fun e!2518669 () Bool)

(assert (=> b!4058811 (= e!2518669 e!2518667)))

(declare-fun res!1655449 () Bool)

(assert (=> b!4058811 (=> (not res!1655449) (not e!2518667))))

(assert (=> b!4058811 (= res!1655449 (not ((_ is Nil!43373) lt!1449231)))))

(declare-fun b!4058812 () Bool)

(declare-fun res!1655450 () Bool)

(assert (=> b!4058812 (=> (not res!1655450) (not e!2518667))))

(assert (=> b!4058812 (= res!1655450 (= (head!8571 lt!1449249) (head!8571 lt!1449231)))))

(declare-fun d!1205951 () Bool)

(declare-fun e!2518668 () Bool)

(assert (=> d!1205951 e!2518668))

(declare-fun res!1655451 () Bool)

(assert (=> d!1205951 (=> res!1655451 e!2518668)))

(declare-fun lt!1449557 () Bool)

(assert (=> d!1205951 (= res!1655451 (not lt!1449557))))

(assert (=> d!1205951 (= lt!1449557 e!2518669)))

(declare-fun res!1655452 () Bool)

(assert (=> d!1205951 (=> res!1655452 e!2518669)))

(assert (=> d!1205951 (= res!1655452 ((_ is Nil!43373) lt!1449249))))

(assert (=> d!1205951 (= (isPrefix!4047 lt!1449249 lt!1449231) lt!1449557)))

(declare-fun b!4058814 () Bool)

(assert (=> b!4058814 (= e!2518668 (>= (size!32428 lt!1449231) (size!32428 lt!1449249)))))

(assert (= (and d!1205951 (not res!1655452)) b!4058811))

(assert (= (and b!4058811 res!1655449) b!4058812))

(assert (= (and b!4058812 res!1655450) b!4058813))

(assert (= (and d!1205951 (not res!1655451)) b!4058814))

(assert (=> b!4058813 m!4663171))

(assert (=> b!4058813 m!4662651))

(assert (=> b!4058813 m!4663171))

(assert (=> b!4058813 m!4662651))

(declare-fun m!4663699 () Bool)

(assert (=> b!4058813 m!4663699))

(assert (=> b!4058812 m!4663177))

(assert (=> b!4058812 m!4662657))

(assert (=> b!4058814 m!4662659))

(assert (=> b!4058814 m!4662577))

(assert (=> b!4058084 d!1205951))

(declare-fun b!4058817 () Bool)

(declare-fun e!2518670 () Bool)

(assert (=> b!4058817 (= e!2518670 (isPrefix!4047 (tail!6303 lt!1449249) (tail!6303 lt!1449265)))))

(declare-fun b!4058815 () Bool)

(declare-fun e!2518672 () Bool)

(assert (=> b!4058815 (= e!2518672 e!2518670)))

(declare-fun res!1655453 () Bool)

(assert (=> b!4058815 (=> (not res!1655453) (not e!2518670))))

(assert (=> b!4058815 (= res!1655453 (not ((_ is Nil!43373) lt!1449265)))))

(declare-fun b!4058816 () Bool)

(declare-fun res!1655454 () Bool)

(assert (=> b!4058816 (=> (not res!1655454) (not e!2518670))))

(assert (=> b!4058816 (= res!1655454 (= (head!8571 lt!1449249) (head!8571 lt!1449265)))))

(declare-fun d!1205953 () Bool)

(declare-fun e!2518671 () Bool)

(assert (=> d!1205953 e!2518671))

(declare-fun res!1655455 () Bool)

(assert (=> d!1205953 (=> res!1655455 e!2518671)))

(declare-fun lt!1449558 () Bool)

(assert (=> d!1205953 (= res!1655455 (not lt!1449558))))

(assert (=> d!1205953 (= lt!1449558 e!2518672)))

(declare-fun res!1655456 () Bool)

(assert (=> d!1205953 (=> res!1655456 e!2518672)))

(assert (=> d!1205953 (= res!1655456 ((_ is Nil!43373) lt!1449249))))

(assert (=> d!1205953 (= (isPrefix!4047 lt!1449249 lt!1449265) lt!1449558)))

(declare-fun b!4058818 () Bool)

(assert (=> b!4058818 (= e!2518671 (>= (size!32428 lt!1449265) (size!32428 lt!1449249)))))

(assert (= (and d!1205953 (not res!1655456)) b!4058815))

(assert (= (and b!4058815 res!1655453) b!4058816))

(assert (= (and b!4058816 res!1655454) b!4058817))

(assert (= (and d!1205953 (not res!1655455)) b!4058818))

(assert (=> b!4058817 m!4663171))

(declare-fun m!4663701 () Bool)

(assert (=> b!4058817 m!4663701))

(assert (=> b!4058817 m!4663171))

(assert (=> b!4058817 m!4663701))

(declare-fun m!4663703 () Bool)

(assert (=> b!4058817 m!4663703))

(assert (=> b!4058816 m!4663177))

(declare-fun m!4663705 () Bool)

(assert (=> b!4058816 m!4663705))

(declare-fun m!4663707 () Bool)

(assert (=> b!4058818 m!4663707))

(assert (=> b!4058818 m!4662577))

(assert (=> b!4058084 d!1205953))

(declare-fun d!1205955 () Bool)

(assert (=> d!1205955 (isPrefix!4047 lt!1449249 (++!11362 lt!1449255 lt!1449227))))

(declare-fun lt!1449559 () Unit!62757)

(assert (=> d!1205955 (= lt!1449559 (choose!24666 lt!1449249 lt!1449255 lt!1449227))))

(assert (=> d!1205955 (isPrefix!4047 lt!1449249 lt!1449255)))

(assert (=> d!1205955 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!840 lt!1449249 lt!1449255 lt!1449227) lt!1449559)))

(declare-fun bs!591963 () Bool)

(assert (= bs!591963 d!1205955))

(assert (=> bs!591963 m!4662471))

(assert (=> bs!591963 m!4662471))

(declare-fun m!4663709 () Bool)

(assert (=> bs!591963 m!4663709))

(declare-fun m!4663711 () Bool)

(assert (=> bs!591963 m!4663711))

(assert (=> bs!591963 m!4662537))

(assert (=> b!4058084 d!1205955))

(declare-fun d!1205957 () Bool)

(assert (=> d!1205957 (= (seqFromList!5177 lt!1449266) (fromListB!2362 lt!1449266))))

(declare-fun bs!591964 () Bool)

(assert (= bs!591964 d!1205957))

(declare-fun m!4663713 () Bool)

(assert (=> bs!591964 m!4663713))

(assert (=> b!4058066 d!1205957))

(declare-fun d!1205959 () Bool)

(assert (=> d!1205959 (= (maxPrefixOneRule!2859 thiss!21717 (rule!10050 token!484) lt!1449231) (Some!9373 (tuple2!42435 (Token!13059 (apply!10149 (transformation!6960 (rule!10050 token!484)) (seqFromList!5177 lt!1449266)) (rule!10050 token!484) (size!32428 lt!1449266) lt!1449266) suffixResult!105)))))

(declare-fun lt!1449560 () Unit!62757)

(assert (=> d!1205959 (= lt!1449560 (choose!24667 thiss!21717 rules!2999 lt!1449266 lt!1449231 suffixResult!105 (rule!10050 token!484)))))

(assert (=> d!1205959 (not (isEmpty!25881 rules!2999))))

(assert (=> d!1205959 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1665 thiss!21717 rules!2999 lt!1449266 lt!1449231 suffixResult!105 (rule!10050 token!484)) lt!1449560)))

(declare-fun bs!591965 () Bool)

(assert (= bs!591965 d!1205959))

(assert (=> bs!591965 m!4662529))

(assert (=> bs!591965 m!4662475))

(declare-fun m!4663715 () Bool)

(assert (=> bs!591965 m!4663715))

(assert (=> bs!591965 m!4662447))

(assert (=> bs!591965 m!4662439))

(assert (=> bs!591965 m!4662441))

(assert (=> bs!591965 m!4662439))

(assert (=> b!4058066 d!1205959))

(declare-fun d!1205961 () Bool)

(assert (=> d!1205961 (isPrefix!4047 lt!1449266 (++!11362 lt!1449266 lt!1449267))))

(declare-fun lt!1449561 () Unit!62757)

(assert (=> d!1205961 (= lt!1449561 (choose!24655 lt!1449266 lt!1449267))))

(assert (=> d!1205961 (= (lemmaConcatTwoListThenFirstIsPrefix!2882 lt!1449266 lt!1449267) lt!1449561)))

(declare-fun bs!591966 () Bool)

(assert (= bs!591966 d!1205961))

(assert (=> bs!591966 m!4662461))

(assert (=> bs!591966 m!4662461))

(declare-fun m!4663717 () Bool)

(assert (=> bs!591966 m!4663717))

(declare-fun m!4663719 () Bool)

(assert (=> bs!591966 m!4663719))

(assert (=> b!4058066 d!1205961))

(declare-fun d!1205963 () Bool)

(assert (=> d!1205963 (= (apply!10149 (transformation!6960 (rule!10050 token!484)) (seqFromList!5177 lt!1449266)) (dynLambda!18426 (toValue!9516 (transformation!6960 (rule!10050 token!484))) (seqFromList!5177 lt!1449266)))))

(declare-fun b_lambda!118593 () Bool)

(assert (=> (not b_lambda!118593) (not d!1205963)))

(declare-fun t!336390 () Bool)

(declare-fun tb!244117 () Bool)

(assert (=> (and b!4058071 (= (toValue!9516 (transformation!6960 (h!48795 rules!2999))) (toValue!9516 (transformation!6960 (rule!10050 token!484)))) t!336390) tb!244117))

(declare-fun result!295824 () Bool)

(assert (=> tb!244117 (= result!295824 (inv!21 (dynLambda!18426 (toValue!9516 (transformation!6960 (rule!10050 token!484))) (seqFromList!5177 lt!1449266))))))

(declare-fun m!4663721 () Bool)

(assert (=> tb!244117 m!4663721))

(assert (=> d!1205963 t!336390))

(declare-fun b_and!312047 () Bool)

(assert (= b_and!312043 (and (=> t!336390 result!295824) b_and!312047)))

(declare-fun t!336392 () Bool)

(declare-fun tb!244119 () Bool)

(assert (=> (and b!4058069 (= (toValue!9516 (transformation!6960 (rule!10050 token!484))) (toValue!9516 (transformation!6960 (rule!10050 token!484)))) t!336392) tb!244119))

(declare-fun result!295826 () Bool)

(assert (= result!295826 result!295824))

(assert (=> d!1205963 t!336392))

(declare-fun b_and!312049 () Bool)

(assert (= b_and!312045 (and (=> t!336392 result!295826) b_and!312049)))

(assert (=> d!1205963 m!4662439))

(declare-fun m!4663723 () Bool)

(assert (=> d!1205963 m!4663723))

(assert (=> b!4058066 d!1205963))

(declare-fun d!1205965 () Bool)

(assert (=> d!1205965 (= lt!1449267 suffixResult!105)))

(declare-fun lt!1449562 () Unit!62757)

(assert (=> d!1205965 (= lt!1449562 (choose!24657 lt!1449266 lt!1449267 lt!1449266 suffixResult!105 lt!1449231))))

(assert (=> d!1205965 (isPrefix!4047 lt!1449266 lt!1449231)))

(assert (=> d!1205965 (= (lemmaSamePrefixThenSameSuffix!2208 lt!1449266 lt!1449267 lt!1449266 suffixResult!105 lt!1449231) lt!1449562)))

(declare-fun bs!591967 () Bool)

(assert (= bs!591967 d!1205965))

(declare-fun m!4663725 () Bool)

(assert (=> bs!591967 m!4663725))

(assert (=> bs!591967 m!4662561))

(assert (=> b!4058066 d!1205965))

(declare-fun d!1205967 () Bool)

(declare-fun e!2518675 () Bool)

(assert (=> d!1205967 e!2518675))

(declare-fun res!1655463 () Bool)

(assert (=> d!1205967 (=> res!1655463 e!2518675)))

(declare-fun lt!1449563 () Option!9374)

(assert (=> d!1205967 (= res!1655463 (isEmpty!25884 lt!1449563))))

(declare-fun e!2518677 () Option!9374)

(assert (=> d!1205967 (= lt!1449563 e!2518677)))

(declare-fun c!700909 () Bool)

(declare-fun lt!1449564 () tuple2!42436)

(assert (=> d!1205967 (= c!700909 (isEmpty!25885 (_1!24352 lt!1449564)))))

(assert (=> d!1205967 (= lt!1449564 (findLongestMatch!1317 (regex!6960 (rule!10050 token!484)) lt!1449231))))

(assert (=> d!1205967 (ruleValid!2890 thiss!21717 (rule!10050 token!484))))

(assert (=> d!1205967 (= (maxPrefixOneRule!2859 thiss!21717 (rule!10050 token!484) lt!1449231) lt!1449563)))

(declare-fun b!4058819 () Bool)

(declare-fun e!2518674 () Bool)

(assert (=> b!4058819 (= e!2518674 (matchR!5818 (regex!6960 (rule!10050 token!484)) (_1!24352 (findLongestMatchInner!1404 (regex!6960 (rule!10050 token!484)) Nil!43373 (size!32428 Nil!43373) lt!1449231 lt!1449231 (size!32428 lt!1449231)))))))

(declare-fun b!4058820 () Bool)

(assert (=> b!4058820 (= e!2518677 (Some!9373 (tuple2!42435 (Token!13059 (apply!10149 (transformation!6960 (rule!10050 token!484)) (seqFromList!5177 (_1!24352 lt!1449564))) (rule!10050 token!484) (size!32429 (seqFromList!5177 (_1!24352 lt!1449564))) (_1!24352 lt!1449564)) (_2!24352 lt!1449564))))))

(declare-fun lt!1449567 () Unit!62757)

(assert (=> b!4058820 (= lt!1449567 (longestMatchIsAcceptedByMatchOrIsEmpty!1377 (regex!6960 (rule!10050 token!484)) lt!1449231))))

(declare-fun res!1655462 () Bool)

(assert (=> b!4058820 (= res!1655462 (isEmpty!25885 (_1!24352 (findLongestMatchInner!1404 (regex!6960 (rule!10050 token!484)) Nil!43373 (size!32428 Nil!43373) lt!1449231 lt!1449231 (size!32428 lt!1449231)))))))

(assert (=> b!4058820 (=> res!1655462 e!2518674)))

(assert (=> b!4058820 e!2518674))

(declare-fun lt!1449565 () Unit!62757)

(assert (=> b!4058820 (= lt!1449565 lt!1449567)))

(declare-fun lt!1449566 () Unit!62757)

(assert (=> b!4058820 (= lt!1449566 (lemmaSemiInverse!1932 (transformation!6960 (rule!10050 token!484)) (seqFromList!5177 (_1!24352 lt!1449564))))))

(declare-fun b!4058821 () Bool)

(declare-fun e!2518676 () Bool)

(assert (=> b!4058821 (= e!2518675 e!2518676)))

(declare-fun res!1655458 () Bool)

(assert (=> b!4058821 (=> (not res!1655458) (not e!2518676))))

(assert (=> b!4058821 (= res!1655458 (matchR!5818 (regex!6960 (rule!10050 token!484)) (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449563))))))))

(declare-fun b!4058822 () Bool)

(assert (=> b!4058822 (= e!2518677 None!9373)))

(declare-fun b!4058823 () Bool)

(declare-fun res!1655461 () Bool)

(assert (=> b!4058823 (=> (not res!1655461) (not e!2518676))))

(assert (=> b!4058823 (= res!1655461 (= (value!218994 (_1!24351 (get!14226 lt!1449563))) (apply!10149 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449563)))) (seqFromList!5177 (originalCharacters!7560 (_1!24351 (get!14226 lt!1449563)))))))))

(declare-fun b!4058824 () Bool)

(declare-fun res!1655460 () Bool)

(assert (=> b!4058824 (=> (not res!1655460) (not e!2518676))))

(assert (=> b!4058824 (= res!1655460 (= (rule!10050 (_1!24351 (get!14226 lt!1449563))) (rule!10050 token!484)))))

(declare-fun b!4058825 () Bool)

(declare-fun res!1655459 () Bool)

(assert (=> b!4058825 (=> (not res!1655459) (not e!2518676))))

(assert (=> b!4058825 (= res!1655459 (= (++!11362 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449563)))) (_2!24351 (get!14226 lt!1449563))) lt!1449231))))

(declare-fun b!4058826 () Bool)

(assert (=> b!4058826 (= e!2518676 (= (size!32427 (_1!24351 (get!14226 lt!1449563))) (size!32428 (originalCharacters!7560 (_1!24351 (get!14226 lt!1449563))))))))

(declare-fun b!4058827 () Bool)

(declare-fun res!1655457 () Bool)

(assert (=> b!4058827 (=> (not res!1655457) (not e!2518676))))

(assert (=> b!4058827 (= res!1655457 (< (size!32428 (_2!24351 (get!14226 lt!1449563))) (size!32428 lt!1449231)))))

(assert (= (and d!1205967 c!700909) b!4058822))

(assert (= (and d!1205967 (not c!700909)) b!4058820))

(assert (= (and b!4058820 (not res!1655462)) b!4058819))

(assert (= (and d!1205967 (not res!1655463)) b!4058821))

(assert (= (and b!4058821 res!1655458) b!4058825))

(assert (= (and b!4058825 res!1655459) b!4058827))

(assert (= (and b!4058827 res!1655457) b!4058824))

(assert (= (and b!4058824 res!1655460) b!4058823))

(assert (= (and b!4058823 res!1655461) b!4058826))

(declare-fun m!4663727 () Bool)

(assert (=> b!4058824 m!4663727))

(assert (=> b!4058823 m!4663727))

(declare-fun m!4663729 () Bool)

(assert (=> b!4058823 m!4663729))

(assert (=> b!4058823 m!4663729))

(declare-fun m!4663731 () Bool)

(assert (=> b!4058823 m!4663731))

(assert (=> b!4058825 m!4663727))

(declare-fun m!4663733 () Bool)

(assert (=> b!4058825 m!4663733))

(assert (=> b!4058825 m!4663733))

(declare-fun m!4663735 () Bool)

(assert (=> b!4058825 m!4663735))

(assert (=> b!4058825 m!4663735))

(declare-fun m!4663737 () Bool)

(assert (=> b!4058825 m!4663737))

(declare-fun m!4663739 () Bool)

(assert (=> d!1205967 m!4663739))

(declare-fun m!4663741 () Bool)

(assert (=> d!1205967 m!4663741))

(declare-fun m!4663743 () Bool)

(assert (=> d!1205967 m!4663743))

(assert (=> d!1205967 m!4662549))

(assert (=> b!4058827 m!4663727))

(declare-fun m!4663745 () Bool)

(assert (=> b!4058827 m!4663745))

(assert (=> b!4058827 m!4662659))

(assert (=> b!4058821 m!4663727))

(assert (=> b!4058821 m!4663733))

(assert (=> b!4058821 m!4663733))

(assert (=> b!4058821 m!4663735))

(assert (=> b!4058821 m!4663735))

(declare-fun m!4663747 () Bool)

(assert (=> b!4058821 m!4663747))

(assert (=> b!4058819 m!4663593))

(assert (=> b!4058819 m!4662659))

(assert (=> b!4058819 m!4663593))

(assert (=> b!4058819 m!4662659))

(declare-fun m!4663749 () Bool)

(assert (=> b!4058819 m!4663749))

(declare-fun m!4663751 () Bool)

(assert (=> b!4058819 m!4663751))

(assert (=> b!4058826 m!4663727))

(declare-fun m!4663753 () Bool)

(assert (=> b!4058826 m!4663753))

(declare-fun m!4663755 () Bool)

(assert (=> b!4058820 m!4663755))

(declare-fun m!4663757 () Bool)

(assert (=> b!4058820 m!4663757))

(declare-fun m!4663759 () Bool)

(assert (=> b!4058820 m!4663759))

(declare-fun m!4663761 () Bool)

(assert (=> b!4058820 m!4663761))

(assert (=> b!4058820 m!4663759))

(declare-fun m!4663763 () Bool)

(assert (=> b!4058820 m!4663763))

(assert (=> b!4058820 m!4663593))

(assert (=> b!4058820 m!4662659))

(assert (=> b!4058820 m!4663749))

(assert (=> b!4058820 m!4663759))

(declare-fun m!4663765 () Bool)

(assert (=> b!4058820 m!4663765))

(assert (=> b!4058820 m!4663759))

(assert (=> b!4058820 m!4662659))

(assert (=> b!4058820 m!4663593))

(assert (=> b!4058066 d!1205967))

(declare-fun b!4058830 () Bool)

(declare-fun e!2518678 () Bool)

(assert (=> b!4058830 (= e!2518678 (isPrefix!4047 (tail!6303 lt!1449266) (tail!6303 lt!1449246)))))

(declare-fun b!4058828 () Bool)

(declare-fun e!2518680 () Bool)

(assert (=> b!4058828 (= e!2518680 e!2518678)))

(declare-fun res!1655464 () Bool)

(assert (=> b!4058828 (=> (not res!1655464) (not e!2518678))))

(assert (=> b!4058828 (= res!1655464 (not ((_ is Nil!43373) lt!1449246)))))

(declare-fun b!4058829 () Bool)

(declare-fun res!1655465 () Bool)

(assert (=> b!4058829 (=> (not res!1655465) (not e!2518678))))

(assert (=> b!4058829 (= res!1655465 (= (head!8571 lt!1449266) (head!8571 lt!1449246)))))

(declare-fun d!1205969 () Bool)

(declare-fun e!2518679 () Bool)

(assert (=> d!1205969 e!2518679))

(declare-fun res!1655466 () Bool)

(assert (=> d!1205969 (=> res!1655466 e!2518679)))

(declare-fun lt!1449568 () Bool)

(assert (=> d!1205969 (= res!1655466 (not lt!1449568))))

(assert (=> d!1205969 (= lt!1449568 e!2518680)))

(declare-fun res!1655467 () Bool)

(assert (=> d!1205969 (=> res!1655467 e!2518680)))

(assert (=> d!1205969 (= res!1655467 ((_ is Nil!43373) lt!1449266))))

(assert (=> d!1205969 (= (isPrefix!4047 lt!1449266 lt!1449246) lt!1449568)))

(declare-fun b!4058831 () Bool)

(assert (=> b!4058831 (= e!2518679 (>= (size!32428 lt!1449246) (size!32428 lt!1449266)))))

(assert (= (and d!1205969 (not res!1655467)) b!4058828))

(assert (= (and b!4058828 res!1655464) b!4058829))

(assert (= (and b!4058829 res!1655465) b!4058830))

(assert (= (and d!1205969 (not res!1655466)) b!4058831))

(assert (=> b!4058830 m!4662649))

(declare-fun m!4663767 () Bool)

(assert (=> b!4058830 m!4663767))

(assert (=> b!4058830 m!4662649))

(assert (=> b!4058830 m!4663767))

(declare-fun m!4663769 () Bool)

(assert (=> b!4058830 m!4663769))

(assert (=> b!4058829 m!4662655))

(declare-fun m!4663771 () Bool)

(assert (=> b!4058829 m!4663771))

(declare-fun m!4663773 () Bool)

(assert (=> b!4058831 m!4663773))

(assert (=> b!4058831 m!4662529))

(assert (=> b!4058066 d!1205969))

(declare-fun d!1205971 () Bool)

(declare-fun lt!1449569 () Int)

(assert (=> d!1205971 (>= lt!1449569 0)))

(declare-fun e!2518681 () Int)

(assert (=> d!1205971 (= lt!1449569 e!2518681)))

(declare-fun c!700910 () Bool)

(assert (=> d!1205971 (= c!700910 ((_ is Nil!43373) suffix!1299))))

(assert (=> d!1205971 (= (size!32428 suffix!1299) lt!1449569)))

(declare-fun b!4058832 () Bool)

(assert (=> b!4058832 (= e!2518681 0)))

(declare-fun b!4058833 () Bool)

(assert (=> b!4058833 (= e!2518681 (+ 1 (size!32428 (t!336350 suffix!1299))))))

(assert (= (and d!1205971 c!700910) b!4058832))

(assert (= (and d!1205971 (not c!700910)) b!4058833))

(declare-fun m!4663775 () Bool)

(assert (=> b!4058833 m!4663775))

(assert (=> b!4058045 d!1205971))

(declare-fun d!1205973 () Bool)

(declare-fun lt!1449570 () Int)

(assert (=> d!1205973 (>= lt!1449570 0)))

(declare-fun e!2518682 () Int)

(assert (=> d!1205973 (= lt!1449570 e!2518682)))

(declare-fun c!700911 () Bool)

(assert (=> d!1205973 (= c!700911 ((_ is Nil!43373) newSuffix!27))))

(assert (=> d!1205973 (= (size!32428 newSuffix!27) lt!1449570)))

(declare-fun b!4058834 () Bool)

(assert (=> b!4058834 (= e!2518682 0)))

(declare-fun b!4058835 () Bool)

(assert (=> b!4058835 (= e!2518682 (+ 1 (size!32428 (t!336350 newSuffix!27))))))

(assert (= (and d!1205973 c!700911) b!4058834))

(assert (= (and d!1205973 (not c!700911)) b!4058835))

(declare-fun m!4663777 () Bool)

(assert (=> b!4058835 m!4663777))

(assert (=> b!4058045 d!1205973))

(declare-fun b!4058838 () Bool)

(declare-fun res!1655468 () Bool)

(declare-fun e!2518683 () Bool)

(assert (=> b!4058838 (=> (not res!1655468) (not e!2518683))))

(declare-fun lt!1449571 () List!43497)

(assert (=> b!4058838 (= res!1655468 (= (size!32428 lt!1449571) (+ (size!32428 newSuffix!27) (size!32428 lt!1449227))))))

(declare-fun b!4058836 () Bool)

(declare-fun e!2518684 () List!43497)

(assert (=> b!4058836 (= e!2518684 lt!1449227)))

(declare-fun b!4058837 () Bool)

(assert (=> b!4058837 (= e!2518684 (Cons!43373 (h!48793 newSuffix!27) (++!11362 (t!336350 newSuffix!27) lt!1449227)))))

(declare-fun d!1205975 () Bool)

(assert (=> d!1205975 e!2518683))

(declare-fun res!1655469 () Bool)

(assert (=> d!1205975 (=> (not res!1655469) (not e!2518683))))

(assert (=> d!1205975 (= res!1655469 (= (content!6612 lt!1449571) ((_ map or) (content!6612 newSuffix!27) (content!6612 lt!1449227))))))

(assert (=> d!1205975 (= lt!1449571 e!2518684)))

(declare-fun c!700912 () Bool)

(assert (=> d!1205975 (= c!700912 ((_ is Nil!43373) newSuffix!27))))

(assert (=> d!1205975 (= (++!11362 newSuffix!27 lt!1449227) lt!1449571)))

(declare-fun b!4058839 () Bool)

(assert (=> b!4058839 (= e!2518683 (or (not (= lt!1449227 Nil!43373)) (= lt!1449571 newSuffix!27)))))

(assert (= (and d!1205975 c!700912) b!4058836))

(assert (= (and d!1205975 (not c!700912)) b!4058837))

(assert (= (and d!1205975 res!1655469) b!4058838))

(assert (= (and b!4058838 res!1655468) b!4058839))

(declare-fun m!4663779 () Bool)

(assert (=> b!4058838 m!4663779))

(assert (=> b!4058838 m!4662513))

(assert (=> b!4058838 m!4663235))

(declare-fun m!4663781 () Bool)

(assert (=> b!4058837 m!4663781))

(declare-fun m!4663783 () Bool)

(assert (=> d!1205975 m!4663783))

(assert (=> d!1205975 m!4662631))

(assert (=> d!1205975 m!4663243))

(assert (=> b!4058043 d!1205975))

(declare-fun d!1205977 () Bool)

(declare-fun lt!1449572 () List!43497)

(assert (=> d!1205977 (= (++!11362 newSuffix!27 lt!1449572) suffix!1299)))

(declare-fun e!2518685 () List!43497)

(assert (=> d!1205977 (= lt!1449572 e!2518685)))

(declare-fun c!700913 () Bool)

(assert (=> d!1205977 (= c!700913 ((_ is Cons!43373) newSuffix!27))))

(assert (=> d!1205977 (>= (size!32428 suffix!1299) (size!32428 newSuffix!27))))

(assert (=> d!1205977 (= (getSuffix!2464 suffix!1299 newSuffix!27) lt!1449572)))

(declare-fun b!4058840 () Bool)

(assert (=> b!4058840 (= e!2518685 (getSuffix!2464 (tail!6303 suffix!1299) (t!336350 newSuffix!27)))))

(declare-fun b!4058841 () Bool)

(assert (=> b!4058841 (= e!2518685 suffix!1299)))

(assert (= (and d!1205977 c!700913) b!4058840))

(assert (= (and d!1205977 (not c!700913)) b!4058841))

(declare-fun m!4663785 () Bool)

(assert (=> d!1205977 m!4663785))

(assert (=> d!1205977 m!4662511))

(assert (=> d!1205977 m!4662513))

(assert (=> b!4058840 m!4663651))

(assert (=> b!4058840 m!4663651))

(declare-fun m!4663787 () Bool)

(assert (=> b!4058840 m!4663787))

(assert (=> b!4058043 d!1205977))

(declare-fun d!1205979 () Bool)

(declare-fun res!1655474 () Bool)

(declare-fun e!2518688 () Bool)

(assert (=> d!1205979 (=> (not res!1655474) (not e!2518688))))

(assert (=> d!1205979 (= res!1655474 (not (isEmpty!25885 (originalCharacters!7560 token!484))))))

(assert (=> d!1205979 (= (inv!57982 token!484) e!2518688)))

(declare-fun b!4058846 () Bool)

(declare-fun res!1655475 () Bool)

(assert (=> b!4058846 (=> (not res!1655475) (not e!2518688))))

(assert (=> b!4058846 (= res!1655475 (= (originalCharacters!7560 token!484) (list!16164 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 token!484))) (value!218994 token!484)))))))

(declare-fun b!4058847 () Bool)

(assert (=> b!4058847 (= e!2518688 (= (size!32427 token!484) (size!32428 (originalCharacters!7560 token!484))))))

(assert (= (and d!1205979 res!1655474) b!4058846))

(assert (= (and b!4058846 res!1655475) b!4058847))

(declare-fun b_lambda!118595 () Bool)

(assert (=> (not b_lambda!118595) (not b!4058846)))

(assert (=> b!4058846 t!336358))

(declare-fun b_and!312051 () Bool)

(assert (= b_and!312027 (and (=> t!336358 result!295780) b_and!312051)))

(assert (=> b!4058846 t!336360))

(declare-fun b_and!312053 () Bool)

(assert (= b_and!312029 (and (=> t!336360 result!295784) b_and!312053)))

(declare-fun m!4663789 () Bool)

(assert (=> d!1205979 m!4663789))

(assert (=> b!4058846 m!4663019))

(assert (=> b!4058846 m!4663019))

(declare-fun m!4663791 () Bool)

(assert (=> b!4058846 m!4663791))

(assert (=> b!4058847 m!4662527))

(assert (=> start!382716 d!1205979))

(declare-fun d!1205981 () Bool)

(declare-fun lt!1449573 () Int)

(assert (=> d!1205981 (>= lt!1449573 0)))

(declare-fun e!2518689 () Int)

(assert (=> d!1205981 (= lt!1449573 e!2518689)))

(declare-fun c!700914 () Bool)

(assert (=> d!1205981 (= c!700914 ((_ is Nil!43373) (originalCharacters!7560 token!484)))))

(assert (=> d!1205981 (= (size!32428 (originalCharacters!7560 token!484)) lt!1449573)))

(declare-fun b!4058848 () Bool)

(assert (=> b!4058848 (= e!2518689 0)))

(declare-fun b!4058849 () Bool)

(assert (=> b!4058849 (= e!2518689 (+ 1 (size!32428 (t!336350 (originalCharacters!7560 token!484)))))))

(assert (= (and d!1205981 c!700914) b!4058848))

(assert (= (and d!1205981 (not c!700914)) b!4058849))

(declare-fun m!4663793 () Bool)

(assert (=> b!4058849 m!4663793))

(assert (=> b!4058048 d!1205981))

(declare-fun b!4058850 () Bool)

(declare-fun e!2518692 () Bool)

(assert (=> b!4058850 (= e!2518692 (nullable!4168 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))))

(declare-fun b!4058851 () Bool)

(declare-fun res!1655479 () Bool)

(declare-fun e!2518691 () Bool)

(assert (=> b!4058851 (=> (not res!1655479) (not e!2518691))))

(assert (=> b!4058851 (= res!1655479 (isEmpty!25885 (tail!6303 lt!1449266)))))

(declare-fun b!4058852 () Bool)

(declare-fun e!2518696 () Bool)

(declare-fun e!2518694 () Bool)

(assert (=> b!4058852 (= e!2518696 e!2518694)))

(declare-fun res!1655478 () Bool)

(assert (=> b!4058852 (=> res!1655478 e!2518694)))

(declare-fun call!288068 () Bool)

(assert (=> b!4058852 (= res!1655478 call!288068)))

(declare-fun b!4058853 () Bool)

(declare-fun res!1655477 () Bool)

(assert (=> b!4058853 (=> res!1655477 e!2518694)))

(assert (=> b!4058853 (= res!1655477 (not (isEmpty!25885 (tail!6303 lt!1449266))))))

(declare-fun b!4058854 () Bool)

(declare-fun res!1655480 () Bool)

(assert (=> b!4058854 (=> (not res!1655480) (not e!2518691))))

(assert (=> b!4058854 (= res!1655480 (not call!288068))))

(declare-fun b!4058855 () Bool)

(assert (=> b!4058855 (= e!2518694 (not (= (head!8571 lt!1449266) (c!700781 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))))))

(declare-fun b!4058856 () Bool)

(declare-fun e!2518693 () Bool)

(declare-fun e!2518695 () Bool)

(assert (=> b!4058856 (= e!2518693 e!2518695)))

(declare-fun c!700915 () Bool)

(assert (=> b!4058856 (= c!700915 ((_ is EmptyLang!11865) (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))))

(declare-fun d!1205983 () Bool)

(assert (=> d!1205983 e!2518693))

(declare-fun c!700917 () Bool)

(assert (=> d!1205983 (= c!700917 ((_ is EmptyExpr!11865) (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))))

(declare-fun lt!1449574 () Bool)

(assert (=> d!1205983 (= lt!1449574 e!2518692)))

(declare-fun c!700916 () Bool)

(assert (=> d!1205983 (= c!700916 (isEmpty!25885 lt!1449266))))

(assert (=> d!1205983 (validRegex!5368 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))))

(assert (=> d!1205983 (= (matchR!5818 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) lt!1449266) lt!1449574)))

(declare-fun b!4058857 () Bool)

(declare-fun res!1655482 () Bool)

(declare-fun e!2518690 () Bool)

(assert (=> b!4058857 (=> res!1655482 e!2518690)))

(assert (=> b!4058857 (= res!1655482 (not ((_ is ElementMatch!11865) (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))))))

(assert (=> b!4058857 (= e!2518695 e!2518690)))

(declare-fun b!4058858 () Bool)

(assert (=> b!4058858 (= e!2518692 (matchR!5818 (derivativeStep!3573 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) (head!8571 lt!1449266)) (tail!6303 lt!1449266)))))

(declare-fun b!4058859 () Bool)

(assert (=> b!4058859 (= e!2518691 (= (head!8571 lt!1449266) (c!700781 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))))))

(declare-fun b!4058860 () Bool)

(assert (=> b!4058860 (= e!2518695 (not lt!1449574))))

(declare-fun b!4058861 () Bool)

(assert (=> b!4058861 (= e!2518690 e!2518696)))

(declare-fun res!1655483 () Bool)

(assert (=> b!4058861 (=> (not res!1655483) (not e!2518696))))

(assert (=> b!4058861 (= res!1655483 (not lt!1449574))))

(declare-fun bm!288063 () Bool)

(assert (=> bm!288063 (= call!288068 (isEmpty!25885 lt!1449266))))

(declare-fun b!4058862 () Bool)

(assert (=> b!4058862 (= e!2518693 (= lt!1449574 call!288068))))

(declare-fun b!4058863 () Bool)

(declare-fun res!1655476 () Bool)

(assert (=> b!4058863 (=> res!1655476 e!2518690)))

(assert (=> b!4058863 (= res!1655476 e!2518691)))

(declare-fun res!1655481 () Bool)

(assert (=> b!4058863 (=> (not res!1655481) (not e!2518691))))

(assert (=> b!4058863 (= res!1655481 lt!1449574)))

(assert (= (and d!1205983 c!700916) b!4058850))

(assert (= (and d!1205983 (not c!700916)) b!4058858))

(assert (= (and d!1205983 c!700917) b!4058862))

(assert (= (and d!1205983 (not c!700917)) b!4058856))

(assert (= (and b!4058856 c!700915) b!4058860))

(assert (= (and b!4058856 (not c!700915)) b!4058857))

(assert (= (and b!4058857 (not res!1655482)) b!4058863))

(assert (= (and b!4058863 res!1655481) b!4058854))

(assert (= (and b!4058854 res!1655480) b!4058851))

(assert (= (and b!4058851 res!1655479) b!4058859))

(assert (= (and b!4058863 (not res!1655476)) b!4058861))

(assert (= (and b!4058861 res!1655483) b!4058852))

(assert (= (and b!4058852 (not res!1655478)) b!4058853))

(assert (= (and b!4058853 (not res!1655477)) b!4058855))

(assert (= (or b!4058862 b!4058852 b!4058854) bm!288063))

(assert (=> b!4058850 m!4663293))

(assert (=> b!4058853 m!4662649))

(assert (=> b!4058853 m!4662649))

(assert (=> b!4058853 m!4663305))

(assert (=> d!1205983 m!4663307))

(assert (=> d!1205983 m!4663299))

(assert (=> bm!288063 m!4663307))

(assert (=> b!4058851 m!4662649))

(assert (=> b!4058851 m!4662649))

(assert (=> b!4058851 m!4663305))

(assert (=> b!4058855 m!4662655))

(assert (=> b!4058858 m!4662655))

(assert (=> b!4058858 m!4662655))

(declare-fun m!4663795 () Bool)

(assert (=> b!4058858 m!4663795))

(assert (=> b!4058858 m!4662649))

(assert (=> b!4058858 m!4663795))

(assert (=> b!4058858 m!4662649))

(declare-fun m!4663797 () Bool)

(assert (=> b!4058858 m!4663797))

(assert (=> b!4058859 m!4662655))

(assert (=> b!4058068 d!1205983))

(declare-fun d!1205985 () Bool)

(assert (=> d!1205985 (not (matchR!5818 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) lt!1449266))))

(declare-fun lt!1449577 () Unit!62757)

(declare-fun choose!24674 (LexerInterface!6549 List!43499 Rule!13720 List!43497 List!43497 Rule!13720) Unit!62757)

(assert (=> d!1205985 (= lt!1449577 (choose!24674 thiss!21717 rules!2999 (rule!10050 token!484) lt!1449266 lt!1449231 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))))

(assert (=> d!1205985 (isPrefix!4047 lt!1449266 lt!1449231)))

(assert (=> d!1205985 (= (lemmaMaxPrefNoSmallerRuleMatches!288 thiss!21717 rules!2999 (rule!10050 token!484) lt!1449266 lt!1449231 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) lt!1449577)))

(declare-fun bs!591968 () Bool)

(assert (= bs!591968 d!1205985))

(assert (=> bs!591968 m!4662503))

(declare-fun m!4663799 () Bool)

(assert (=> bs!591968 m!4663799))

(assert (=> bs!591968 m!4662561))

(assert (=> b!4058068 d!1205985))

(declare-fun b!4058868 () Bool)

(declare-fun e!2518699 () Bool)

(declare-fun tp!1229791 () Bool)

(assert (=> b!4058868 (= e!2518699 (and tp_is_empty!20701 tp!1229791))))

(assert (=> b!4058056 (= tp!1229735 e!2518699)))

(assert (= (and b!4058056 ((_ is Cons!43373) (t!336350 suffix!1299))) b!4058868))

(declare-fun b!4058882 () Bool)

(declare-fun e!2518702 () Bool)

(declare-fun tp!1229806 () Bool)

(declare-fun tp!1229803 () Bool)

(assert (=> b!4058882 (= e!2518702 (and tp!1229806 tp!1229803))))

(declare-fun b!4058879 () Bool)

(assert (=> b!4058879 (= e!2518702 tp_is_empty!20701)))

(declare-fun b!4058880 () Bool)

(declare-fun tp!1229805 () Bool)

(declare-fun tp!1229802 () Bool)

(assert (=> b!4058880 (= e!2518702 (and tp!1229805 tp!1229802))))

(declare-fun b!4058881 () Bool)

(declare-fun tp!1229804 () Bool)

(assert (=> b!4058881 (= e!2518702 tp!1229804)))

(assert (=> b!4058040 (= tp!1229729 e!2518702)))

(assert (= (and b!4058040 ((_ is ElementMatch!11865) (regex!6960 (h!48795 rules!2999)))) b!4058879))

(assert (= (and b!4058040 ((_ is Concat!19056) (regex!6960 (h!48795 rules!2999)))) b!4058880))

(assert (= (and b!4058040 ((_ is Star!11865) (regex!6960 (h!48795 rules!2999)))) b!4058881))

(assert (= (and b!4058040 ((_ is Union!11865) (regex!6960 (h!48795 rules!2999)))) b!4058882))

(declare-fun b!4058893 () Bool)

(declare-fun b_free!112941 () Bool)

(declare-fun b_next!113645 () Bool)

(assert (=> b!4058893 (= b_free!112941 (not b_next!113645))))

(declare-fun t!336394 () Bool)

(declare-fun tb!244121 () Bool)

(assert (=> (and b!4058893 (= (toValue!9516 (transformation!6960 (h!48795 (t!336352 rules!2999)))) (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))) t!336394) tb!244121))

(declare-fun result!295834 () Bool)

(assert (= result!295834 result!295818))

(assert (=> d!1205917 t!336394))

(declare-fun t!336396 () Bool)

(declare-fun tb!244123 () Bool)

(assert (=> (and b!4058893 (= (toValue!9516 (transformation!6960 (h!48795 (t!336352 rules!2999)))) (toValue!9516 (transformation!6960 (rule!10050 token!484)))) t!336396) tb!244123))

(declare-fun result!295836 () Bool)

(assert (= result!295836 result!295824))

(assert (=> d!1205963 t!336396))

(declare-fun b_and!312055 () Bool)

(declare-fun tp!1229818 () Bool)

(assert (=> b!4058893 (= tp!1229818 (and (=> t!336394 result!295834) (=> t!336396 result!295836) b_and!312055))))

(declare-fun b_free!112943 () Bool)

(declare-fun b_next!113647 () Bool)

(assert (=> b!4058893 (= b_free!112943 (not b_next!113647))))

(declare-fun tb!244125 () Bool)

(declare-fun t!336398 () Bool)

(assert (=> (and b!4058893 (= (toChars!9375 (transformation!6960 (h!48795 (t!336352 rules!2999)))) (toChars!9375 (transformation!6960 (rule!10050 token!484)))) t!336398) tb!244125))

(declare-fun result!295838 () Bool)

(assert (= result!295838 result!295780))

(assert (=> d!1205697 t!336398))

(declare-fun t!336400 () Bool)

(declare-fun tb!244127 () Bool)

(assert (=> (and b!4058893 (= (toChars!9375 (transformation!6960 (h!48795 (t!336352 rules!2999)))) (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))) t!336400) tb!244127))

(declare-fun result!295840 () Bool)

(assert (= result!295840 result!295792))

(assert (=> d!1205831 t!336400))

(assert (=> b!4058846 t!336398))

(declare-fun tp!1229817 () Bool)

(declare-fun b_and!312057 () Bool)

(assert (=> b!4058893 (= tp!1229817 (and (=> t!336398 result!295838) (=> t!336400 result!295840) b_and!312057))))

(declare-fun e!2518712 () Bool)

(assert (=> b!4058893 (= e!2518712 (and tp!1229818 tp!1229817))))

(declare-fun b!4058892 () Bool)

(declare-fun e!2518714 () Bool)

(declare-fun tp!1229816 () Bool)

(assert (=> b!4058892 (= e!2518714 (and tp!1229816 (inv!57978 (tag!7820 (h!48795 (t!336352 rules!2999)))) (inv!57981 (transformation!6960 (h!48795 (t!336352 rules!2999)))) e!2518712))))

(declare-fun b!4058891 () Bool)

(declare-fun e!2518713 () Bool)

(declare-fun tp!1229815 () Bool)

(assert (=> b!4058891 (= e!2518713 (and e!2518714 tp!1229815))))

(assert (=> b!4058075 (= tp!1229732 e!2518713)))

(assert (= b!4058892 b!4058893))

(assert (= b!4058891 b!4058892))

(assert (= (and b!4058075 ((_ is Cons!43375) (t!336352 rules!2999))) b!4058891))

(declare-fun m!4663801 () Bool)

(assert (=> b!4058892 m!4663801))

(declare-fun m!4663803 () Bool)

(assert (=> b!4058892 m!4663803))

(declare-fun b!4058894 () Bool)

(declare-fun e!2518715 () Bool)

(declare-fun tp!1229819 () Bool)

(assert (=> b!4058894 (= e!2518715 (and tp_is_empty!20701 tp!1229819))))

(assert (=> b!4058054 (= tp!1229731 e!2518715)))

(assert (= (and b!4058054 ((_ is Cons!43373) (t!336350 prefix!494))) b!4058894))

(declare-fun b!4058895 () Bool)

(declare-fun e!2518716 () Bool)

(declare-fun tp!1229820 () Bool)

(assert (=> b!4058895 (= e!2518716 (and tp_is_empty!20701 tp!1229820))))

(assert (=> b!4058081 (= tp!1229728 e!2518716)))

(assert (= (and b!4058081 ((_ is Cons!43373) (t!336350 newSuffix!27))) b!4058895))

(declare-fun b!4058896 () Bool)

(declare-fun e!2518717 () Bool)

(declare-fun tp!1229821 () Bool)

(assert (=> b!4058896 (= e!2518717 (and tp_is_empty!20701 tp!1229821))))

(assert (=> b!4058047 (= tp!1229737 e!2518717)))

(assert (= (and b!4058047 ((_ is Cons!43373) (t!336350 newSuffixResult!27))) b!4058896))

(declare-fun b!4058897 () Bool)

(declare-fun e!2518718 () Bool)

(declare-fun tp!1229822 () Bool)

(assert (=> b!4058897 (= e!2518718 (and tp_is_empty!20701 tp!1229822))))

(assert (=> b!4058064 (= tp!1229740 e!2518718)))

(assert (= (and b!4058064 ((_ is Cons!43373) (originalCharacters!7560 token!484))) b!4058897))

(declare-fun b!4058898 () Bool)

(declare-fun e!2518719 () Bool)

(declare-fun tp!1229823 () Bool)

(assert (=> b!4058898 (= e!2518719 (and tp_is_empty!20701 tp!1229823))))

(assert (=> b!4058046 (= tp!1229733 e!2518719)))

(assert (= (and b!4058046 ((_ is Cons!43373) (t!336350 suffixResult!105))) b!4058898))

(declare-fun b!4058902 () Bool)

(declare-fun e!2518720 () Bool)

(declare-fun tp!1229828 () Bool)

(declare-fun tp!1229825 () Bool)

(assert (=> b!4058902 (= e!2518720 (and tp!1229828 tp!1229825))))

(declare-fun b!4058899 () Bool)

(assert (=> b!4058899 (= e!2518720 tp_is_empty!20701)))

(declare-fun b!4058900 () Bool)

(declare-fun tp!1229827 () Bool)

(declare-fun tp!1229824 () Bool)

(assert (=> b!4058900 (= e!2518720 (and tp!1229827 tp!1229824))))

(declare-fun b!4058901 () Bool)

(declare-fun tp!1229826 () Bool)

(assert (=> b!4058901 (= e!2518720 tp!1229826)))

(assert (=> b!4058041 (= tp!1229736 e!2518720)))

(assert (= (and b!4058041 ((_ is ElementMatch!11865) (regex!6960 (rule!10050 token!484)))) b!4058899))

(assert (= (and b!4058041 ((_ is Concat!19056) (regex!6960 (rule!10050 token!484)))) b!4058900))

(assert (= (and b!4058041 ((_ is Star!11865) (regex!6960 (rule!10050 token!484)))) b!4058901))

(assert (= (and b!4058041 ((_ is Union!11865) (regex!6960 (rule!10050 token!484)))) b!4058902))

(declare-fun b_lambda!118597 () Bool)

(assert (= b_lambda!118573 (or (and b!4058071 b_free!112931 (= (toChars!9375 (transformation!6960 (h!48795 rules!2999))) (toChars!9375 (transformation!6960 (rule!10050 token!484))))) (and b!4058069 b_free!112935) (and b!4058893 b_free!112943 (= (toChars!9375 (transformation!6960 (h!48795 (t!336352 rules!2999)))) (toChars!9375 (transformation!6960 (rule!10050 token!484))))) b_lambda!118597)))

(declare-fun b_lambda!118599 () Bool)

(assert (= b_lambda!118595 (or (and b!4058071 b_free!112931 (= (toChars!9375 (transformation!6960 (h!48795 rules!2999))) (toChars!9375 (transformation!6960 (rule!10050 token!484))))) (and b!4058069 b_free!112935) (and b!4058893 b_free!112943 (= (toChars!9375 (transformation!6960 (h!48795 (t!336352 rules!2999)))) (toChars!9375 (transformation!6960 (rule!10050 token!484))))) b_lambda!118599)))

(declare-fun b_lambda!118601 () Bool)

(assert (= b_lambda!118593 (or (and b!4058071 b_free!112929 (= (toValue!9516 (transformation!6960 (h!48795 rules!2999))) (toValue!9516 (transformation!6960 (rule!10050 token!484))))) (and b!4058069 b_free!112933) (and b!4058893 b_free!112941 (= (toValue!9516 (transformation!6960 (h!48795 (t!336352 rules!2999)))) (toValue!9516 (transformation!6960 (rule!10050 token!484))))) b_lambda!118601)))

(check-sat (not b!4058892) (not d!1205957) (not b!4058575) (not b!4058498) (not b!4058707) (not b!4058576) (not b!4058715) (not b!4058344) (not b!4058783) (not b!4058823) (not d!1205665) (not b!4058810) (not b!4058782) (not b!4058814) (not d!1205799) (not b!4058442) b_and!312047 (not b!4058868) (not b!4058421) (not d!1205837) (not b!4058479) b_and!312053 (not b!4058846) (not d!1205783) (not b_next!113645) (not b!4058590) (not d!1205979) (not b!4058345) (not b!4058581) (not b!4058835) (not d!1205913) (not b!4058817) (not b!4058775) (not b!4058589) (not b!4058779) (not b!4058585) (not b!4058487) (not d!1205847) b_and!312049 (not b!4058757) (not b!4058290) (not d!1205693) (not b_lambda!118591) (not b!4058853) (not d!1205785) (not b_next!113633) (not b!4058770) (not bm!288054) (not b!4058821) (not b!4058784) (not b!4058808) (not b!4058311) (not d!1205959) (not b!4058801) (not b!4058144) (not bm!288061) (not b!4058312) (not bm!288062) (not b!4058499) (not b!4058099) (not b!4058798) (not b!4058443) (not b!4058567) (not b!4058142) (not b!4058361) (not b!4058266) (not d!1205845) (not b!4058469) (not d!1205777) (not b!4058574) (not b!4058115) (not b!4058855) (not b!4058317) (not b!4058468) (not d!1205911) (not b!4058712) (not b!4058486) (not tb!244085) (not d!1205681) (not b!4058264) (not b!4058799) (not b!4058559) (not b!4058548) (not d!1205761) (not d!1205773) (not d!1205909) (not b!4058491) (not b!4058859) (not b!4058478) (not b!4058583) (not d!1205841) (not d!1205903) (not b!4058891) (not b!4058894) (not b!4058769) (not d!1205949) (not tb!244113) (not b!4058309) (not d!1205825) (not d!1205789) (not d!1205735) (not b!4058897) (not b!4058820) (not b!4058310) (not b!4058483) (not b!4058778) (not d!1205601) (not d!1205793) (not b!4058812) (not d!1205977) (not b!4058895) (not b!4058840) (not d!1205915) (not b!4058568) (not d!1205769) (not b!4058826) (not b!4058148) (not b!4058851) (not d!1205941) (not d!1205965) (not d!1205655) (not d!1205743) (not b!4058759) b_and!312051 (not d!1205739) (not b!4058268) (not d!1205795) (not b!4058847) b_and!312055 (not b_next!113635) (not d!1205715) (not b!4058482) (not d!1205839) (not b!4058816) (not b!4058562) (not b!4058773) (not d!1205801) (not b!4058795) (not b!4058465) (not d!1205831) (not d!1205779) (not d!1205605) (not b!4058880) (not b!4058760) (not b!4058829) (not d!1205697) (not d!1205905) (not b!4058387) (not b!4058858) (not b!4058579) (not d!1205921) (not b!4058554) (not d!1205945) (not b!4058095) (not b_next!113637) (not b_next!113647) (not d!1205617) (not b!4058289) b_and!312057 (not b!4058098) (not b!4058272) tp_is_empty!20701 (not b!4058577) (not d!1205833) (not d!1205603) (not b!4058809) (not b!4058780) (not b!4058711) (not b!4058586) (not b!4058343) (not b!4058813) (not b!4058475) (not b!4058147) (not d!1205615) (not b!4058772) (not b!4058768) (not b!4058825) (not bm!288063) (not b!4058850) (not b!4058827) (not d!1205827) (not b!4058457) (not b!4058830) (not b!4058709) (not b!4058553) (not b!4058270) (not b!4058900) (not b!4058833) (not b!4058494) (not d!1205961) (not b!4058316) (not d!1205975) (not d!1205775) (not b!4058708) (not b!4058114) (not b!4058881) (not b!4058308) (not d!1205985) (not b!4058313) (not b!4058587) (not b!4058849) (not tb!244117) (not b!4058766) (not b!4058831) (not b!4058818) (not d!1205955) (not b!4058495) (not b!4058902) (not b!4058837) (not b!4058901) (not b!4058267) (not tb!244093) (not d!1205661) (not b!4058271) (not b!4058714) (not b!4058819) (not b!4058564) (not d!1205829) (not b!4058804) (not b!4058896) (not d!1205821) (not b!4058546) (not d!1205967) (not d!1205927) (not d!1205791) (not b!4058265) (not b_lambda!118599) (not d!1205599) (not b!4058143) (not d!1205787) (not bm!288056) (not b!4058413) (not b!4058582) (not b!4058094) (not d!1205797) (not b!4058480) (not b!4058560) (not b_lambda!118601) (not d!1205939) (not b!4058545) (not d!1205929) (not b!4058898) (not b!4058838) (not d!1205933) (not b!4058550) (not b!4058824) (not b!4058882) (not b!4058116) (not b!4058146) (not b_lambda!118579) (not d!1205671) (not b!4058490) (not b!4058802) (not d!1205983) (not b!4058807) (not b!4058713) (not d!1205755) (not b_next!113639) (not b!4058756) (not b!4058359) (not b_lambda!118597) (not b!4058315))
(check-sat b_and!312047 b_and!312049 (not b_next!113633) (not b_next!113635) b_and!312057 (not b_next!113639) b_and!312053 (not b_next!113645) b_and!312051 b_and!312055 (not b_next!113637) (not b_next!113647))
(get-model)

(declare-fun b!4058905 () Bool)

(declare-fun res!1655484 () Bool)

(declare-fun e!2518721 () Bool)

(assert (=> b!4058905 (=> (not res!1655484) (not e!2518721))))

(declare-fun lt!1449578 () List!43497)

(assert (=> b!4058905 (= res!1655484 (= (size!32428 lt!1449578) (+ (size!32428 lt!1449249) (size!32428 lt!1449443))))))

(declare-fun b!4058903 () Bool)

(declare-fun e!2518722 () List!43497)

(assert (=> b!4058903 (= e!2518722 lt!1449443)))

(declare-fun b!4058904 () Bool)

(assert (=> b!4058904 (= e!2518722 (Cons!43373 (h!48793 lt!1449249) (++!11362 (t!336350 lt!1449249) lt!1449443)))))

(declare-fun d!1205987 () Bool)

(assert (=> d!1205987 e!2518721))

(declare-fun res!1655485 () Bool)

(assert (=> d!1205987 (=> (not res!1655485) (not e!2518721))))

(assert (=> d!1205987 (= res!1655485 (= (content!6612 lt!1449578) ((_ map or) (content!6612 lt!1449249) (content!6612 lt!1449443))))))

(assert (=> d!1205987 (= lt!1449578 e!2518722)))

(declare-fun c!700918 () Bool)

(assert (=> d!1205987 (= c!700918 ((_ is Nil!43373) lt!1449249))))

(assert (=> d!1205987 (= (++!11362 lt!1449249 lt!1449443) lt!1449578)))

(declare-fun b!4058906 () Bool)

(assert (=> b!4058906 (= e!2518721 (or (not (= lt!1449443 Nil!43373)) (= lt!1449578 lt!1449249)))))

(assert (= (and d!1205987 c!700918) b!4058903))

(assert (= (and d!1205987 (not c!700918)) b!4058904))

(assert (= (and d!1205987 res!1655485) b!4058905))

(assert (= (and b!4058905 res!1655484) b!4058906))

(declare-fun m!4663805 () Bool)

(assert (=> b!4058905 m!4663805))

(assert (=> b!4058905 m!4662577))

(declare-fun m!4663807 () Bool)

(assert (=> b!4058905 m!4663807))

(declare-fun m!4663809 () Bool)

(assert (=> b!4058904 m!4663809))

(declare-fun m!4663811 () Bool)

(assert (=> d!1205987 m!4663811))

(assert (=> d!1205987 m!4663159))

(declare-fun m!4663813 () Bool)

(assert (=> d!1205987 m!4663813))

(assert (=> d!1205777 d!1205987))

(declare-fun d!1205989 () Bool)

(declare-fun lt!1449579 () Int)

(assert (=> d!1205989 (>= lt!1449579 0)))

(declare-fun e!2518723 () Int)

(assert (=> d!1205989 (= lt!1449579 e!2518723)))

(declare-fun c!700919 () Bool)

(assert (=> d!1205989 (= c!700919 ((_ is Nil!43373) lt!1449255))))

(assert (=> d!1205989 (= (size!32428 lt!1449255) lt!1449579)))

(declare-fun b!4058907 () Bool)

(assert (=> b!4058907 (= e!2518723 0)))

(declare-fun b!4058908 () Bool)

(assert (=> b!4058908 (= e!2518723 (+ 1 (size!32428 (t!336350 lt!1449255))))))

(assert (= (and d!1205989 c!700919) b!4058907))

(assert (= (and d!1205989 (not c!700919)) b!4058908))

(declare-fun m!4663815 () Bool)

(assert (=> b!4058908 m!4663815))

(assert (=> d!1205777 d!1205989))

(assert (=> d!1205777 d!1205907))

(declare-fun d!1205991 () Bool)

(assert (=> d!1205991 (= (isEmpty!25885 (tail!6303 lt!1449266)) ((_ is Nil!43373) (tail!6303 lt!1449266)))))

(assert (=> b!4058560 d!1205991))

(declare-fun d!1205993 () Bool)

(assert (=> d!1205993 (= (tail!6303 lt!1449266) (t!336350 lt!1449266))))

(assert (=> b!4058560 d!1205993))

(declare-fun b!4058909 () Bool)

(declare-fun e!2518726 () Bool)

(assert (=> b!4058909 (= e!2518726 (nullable!4168 (derivativeStep!3573 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) (head!8571 lt!1449249))))))

(declare-fun b!4058910 () Bool)

(declare-fun res!1655489 () Bool)

(declare-fun e!2518725 () Bool)

(assert (=> b!4058910 (=> (not res!1655489) (not e!2518725))))

(assert (=> b!4058910 (= res!1655489 (isEmpty!25885 (tail!6303 (tail!6303 lt!1449249))))))

(declare-fun b!4058911 () Bool)

(declare-fun e!2518730 () Bool)

(declare-fun e!2518728 () Bool)

(assert (=> b!4058911 (= e!2518730 e!2518728)))

(declare-fun res!1655488 () Bool)

(assert (=> b!4058911 (=> res!1655488 e!2518728)))

(declare-fun call!288069 () Bool)

(assert (=> b!4058911 (= res!1655488 call!288069)))

(declare-fun b!4058912 () Bool)

(declare-fun res!1655487 () Bool)

(assert (=> b!4058912 (=> res!1655487 e!2518728)))

(assert (=> b!4058912 (= res!1655487 (not (isEmpty!25885 (tail!6303 (tail!6303 lt!1449249)))))))

(declare-fun b!4058913 () Bool)

(declare-fun res!1655490 () Bool)

(assert (=> b!4058913 (=> (not res!1655490) (not e!2518725))))

(assert (=> b!4058913 (= res!1655490 (not call!288069))))

(declare-fun b!4058914 () Bool)

(assert (=> b!4058914 (= e!2518728 (not (= (head!8571 (tail!6303 lt!1449249)) (c!700781 (derivativeStep!3573 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) (head!8571 lt!1449249))))))))

(declare-fun b!4058915 () Bool)

(declare-fun e!2518727 () Bool)

(declare-fun e!2518729 () Bool)

(assert (=> b!4058915 (= e!2518727 e!2518729)))

(declare-fun c!700920 () Bool)

(assert (=> b!4058915 (= c!700920 ((_ is EmptyLang!11865) (derivativeStep!3573 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) (head!8571 lt!1449249))))))

(declare-fun d!1205995 () Bool)

(assert (=> d!1205995 e!2518727))

(declare-fun c!700922 () Bool)

(assert (=> d!1205995 (= c!700922 ((_ is EmptyExpr!11865) (derivativeStep!3573 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) (head!8571 lt!1449249))))))

(declare-fun lt!1449580 () Bool)

(assert (=> d!1205995 (= lt!1449580 e!2518726)))

(declare-fun c!700921 () Bool)

(assert (=> d!1205995 (= c!700921 (isEmpty!25885 (tail!6303 lt!1449249)))))

(assert (=> d!1205995 (validRegex!5368 (derivativeStep!3573 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) (head!8571 lt!1449249)))))

(assert (=> d!1205995 (= (matchR!5818 (derivativeStep!3573 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) (head!8571 lt!1449249)) (tail!6303 lt!1449249)) lt!1449580)))

(declare-fun b!4058916 () Bool)

(declare-fun res!1655492 () Bool)

(declare-fun e!2518724 () Bool)

(assert (=> b!4058916 (=> res!1655492 e!2518724)))

(assert (=> b!4058916 (= res!1655492 (not ((_ is ElementMatch!11865) (derivativeStep!3573 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) (head!8571 lt!1449249)))))))

(assert (=> b!4058916 (= e!2518729 e!2518724)))

(declare-fun b!4058917 () Bool)

(assert (=> b!4058917 (= e!2518726 (matchR!5818 (derivativeStep!3573 (derivativeStep!3573 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) (head!8571 lt!1449249)) (head!8571 (tail!6303 lt!1449249))) (tail!6303 (tail!6303 lt!1449249))))))

(declare-fun b!4058918 () Bool)

(assert (=> b!4058918 (= e!2518725 (= (head!8571 (tail!6303 lt!1449249)) (c!700781 (derivativeStep!3573 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) (head!8571 lt!1449249)))))))

(declare-fun b!4058919 () Bool)

(assert (=> b!4058919 (= e!2518729 (not lt!1449580))))

(declare-fun b!4058920 () Bool)

(assert (=> b!4058920 (= e!2518724 e!2518730)))

(declare-fun res!1655493 () Bool)

(assert (=> b!4058920 (=> (not res!1655493) (not e!2518730))))

(assert (=> b!4058920 (= res!1655493 (not lt!1449580))))

(declare-fun bm!288064 () Bool)

(assert (=> bm!288064 (= call!288069 (isEmpty!25885 (tail!6303 lt!1449249)))))

(declare-fun b!4058921 () Bool)

(assert (=> b!4058921 (= e!2518727 (= lt!1449580 call!288069))))

(declare-fun b!4058922 () Bool)

(declare-fun res!1655486 () Bool)

(assert (=> b!4058922 (=> res!1655486 e!2518724)))

(assert (=> b!4058922 (= res!1655486 e!2518725)))

(declare-fun res!1655491 () Bool)

(assert (=> b!4058922 (=> (not res!1655491) (not e!2518725))))

(assert (=> b!4058922 (= res!1655491 lt!1449580)))

(assert (= (and d!1205995 c!700921) b!4058909))

(assert (= (and d!1205995 (not c!700921)) b!4058917))

(assert (= (and d!1205995 c!700922) b!4058921))

(assert (= (and d!1205995 (not c!700922)) b!4058915))

(assert (= (and b!4058915 c!700920) b!4058919))

(assert (= (and b!4058915 (not c!700920)) b!4058916))

(assert (= (and b!4058916 (not res!1655492)) b!4058922))

(assert (= (and b!4058922 res!1655491) b!4058913))

(assert (= (and b!4058913 res!1655490) b!4058910))

(assert (= (and b!4058910 res!1655489) b!4058918))

(assert (= (and b!4058922 (not res!1655486)) b!4058920))

(assert (= (and b!4058920 res!1655493) b!4058911))

(assert (= (and b!4058911 (not res!1655488)) b!4058912))

(assert (= (and b!4058912 (not res!1655487)) b!4058914))

(assert (= (or b!4058921 b!4058911 b!4058913) bm!288064))

(assert (=> b!4058909 m!4663301))

(declare-fun m!4663817 () Bool)

(assert (=> b!4058909 m!4663817))

(assert (=> b!4058912 m!4663171))

(declare-fun m!4663819 () Bool)

(assert (=> b!4058912 m!4663819))

(assert (=> b!4058912 m!4663819))

(declare-fun m!4663821 () Bool)

(assert (=> b!4058912 m!4663821))

(assert (=> d!1205995 m!4663171))

(assert (=> d!1205995 m!4663295))

(assert (=> d!1205995 m!4663301))

(declare-fun m!4663823 () Bool)

(assert (=> d!1205995 m!4663823))

(assert (=> bm!288064 m!4663171))

(assert (=> bm!288064 m!4663295))

(assert (=> b!4058910 m!4663171))

(assert (=> b!4058910 m!4663819))

(assert (=> b!4058910 m!4663819))

(assert (=> b!4058910 m!4663821))

(assert (=> b!4058914 m!4663171))

(declare-fun m!4663825 () Bool)

(assert (=> b!4058914 m!4663825))

(assert (=> b!4058917 m!4663171))

(assert (=> b!4058917 m!4663825))

(assert (=> b!4058917 m!4663301))

(assert (=> b!4058917 m!4663825))

(declare-fun m!4663827 () Bool)

(assert (=> b!4058917 m!4663827))

(assert (=> b!4058917 m!4663171))

(assert (=> b!4058917 m!4663819))

(assert (=> b!4058917 m!4663827))

(assert (=> b!4058917 m!4663819))

(declare-fun m!4663829 () Bool)

(assert (=> b!4058917 m!4663829))

(assert (=> b!4058918 m!4663171))

(assert (=> b!4058918 m!4663825))

(assert (=> b!4058553 d!1205995))

(declare-fun bm!288073 () Bool)

(declare-fun call!288081 () Regex!11865)

(declare-fun call!288079 () Regex!11865)

(assert (=> bm!288073 (= call!288081 call!288079)))

(declare-fun b!4058943 () Bool)

(declare-fun c!700934 () Bool)

(assert (=> b!4058943 (= c!700934 (nullable!4168 (regOne!24242 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))))))

(declare-fun e!2518743 () Regex!11865)

(declare-fun e!2518744 () Regex!11865)

(assert (=> b!4058943 (= e!2518743 e!2518744)))

(declare-fun d!1205997 () Bool)

(declare-fun lt!1449583 () Regex!11865)

(assert (=> d!1205997 (validRegex!5368 lt!1449583)))

(declare-fun e!2518745 () Regex!11865)

(assert (=> d!1205997 (= lt!1449583 e!2518745)))

(declare-fun c!700933 () Bool)

(assert (=> d!1205997 (= c!700933 (or ((_ is EmptyExpr!11865) (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) ((_ is EmptyLang!11865) (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))))))

(assert (=> d!1205997 (validRegex!5368 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))))

(assert (=> d!1205997 (= (derivativeStep!3573 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) (head!8571 lt!1449249)) lt!1449583)))

(declare-fun b!4058944 () Bool)

(assert (=> b!4058944 (= e!2518744 (Union!11865 (Concat!19056 call!288081 (regTwo!24242 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))) EmptyLang!11865))))

(declare-fun call!288080 () Regex!11865)

(declare-fun bm!288074 () Bool)

(declare-fun c!700935 () Bool)

(assert (=> bm!288074 (= call!288080 (derivativeStep!3573 (ite c!700935 (regTwo!24243 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (regTwo!24242 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))) (head!8571 lt!1449249)))))

(declare-fun b!4058945 () Bool)

(assert (=> b!4058945 (= e!2518745 EmptyLang!11865)))

(declare-fun b!4058946 () Bool)

(assert (=> b!4058946 (= e!2518743 (Concat!19056 call!288079 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))))

(declare-fun b!4058947 () Bool)

(declare-fun e!2518741 () Regex!11865)

(assert (=> b!4058947 (= e!2518741 (ite (= (head!8571 lt!1449249) (c!700781 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))) EmptyExpr!11865 EmptyLang!11865))))

(declare-fun b!4058948 () Bool)

(assert (=> b!4058948 (= e!2518745 e!2518741)))

(declare-fun c!700937 () Bool)

(assert (=> b!4058948 (= c!700937 ((_ is ElementMatch!11865) (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))))

(declare-fun b!4058949 () Bool)

(assert (=> b!4058949 (= c!700935 ((_ is Union!11865) (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))))

(declare-fun e!2518742 () Regex!11865)

(assert (=> b!4058949 (= e!2518741 e!2518742)))

(declare-fun b!4058950 () Bool)

(assert (=> b!4058950 (= e!2518744 (Union!11865 (Concat!19056 call!288081 (regTwo!24242 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))) call!288080))))

(declare-fun c!700936 () Bool)

(declare-fun call!288078 () Regex!11865)

(declare-fun bm!288075 () Bool)

(assert (=> bm!288075 (= call!288078 (derivativeStep!3573 (ite c!700935 (regOne!24243 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (ite c!700936 (reg!12194 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (regOne!24242 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))) (head!8571 lt!1449249)))))

(declare-fun b!4058951 () Bool)

(assert (=> b!4058951 (= e!2518742 e!2518743)))

(assert (=> b!4058951 (= c!700936 ((_ is Star!11865) (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))))

(declare-fun bm!288076 () Bool)

(assert (=> bm!288076 (= call!288079 call!288078)))

(declare-fun b!4058952 () Bool)

(assert (=> b!4058952 (= e!2518742 (Union!11865 call!288078 call!288080))))

(assert (= (and d!1205997 c!700933) b!4058945))

(assert (= (and d!1205997 (not c!700933)) b!4058948))

(assert (= (and b!4058948 c!700937) b!4058947))

(assert (= (and b!4058948 (not c!700937)) b!4058949))

(assert (= (and b!4058949 c!700935) b!4058952))

(assert (= (and b!4058949 (not c!700935)) b!4058951))

(assert (= (and b!4058951 c!700936) b!4058946))

(assert (= (and b!4058951 (not c!700936)) b!4058943))

(assert (= (and b!4058943 c!700934) b!4058950))

(assert (= (and b!4058943 (not c!700934)) b!4058944))

(assert (= (or b!4058950 b!4058944) bm!288073))

(assert (= (or b!4058946 bm!288073) bm!288076))

(assert (= (or b!4058952 bm!288076) bm!288075))

(assert (= (or b!4058952 b!4058950) bm!288074))

(declare-fun m!4663831 () Bool)

(assert (=> b!4058943 m!4663831))

(declare-fun m!4663833 () Bool)

(assert (=> d!1205997 m!4663833))

(assert (=> d!1205997 m!4663299))

(assert (=> bm!288074 m!4663177))

(declare-fun m!4663835 () Bool)

(assert (=> bm!288074 m!4663835))

(assert (=> bm!288075 m!4663177))

(declare-fun m!4663837 () Bool)

(assert (=> bm!288075 m!4663837))

(assert (=> b!4058553 d!1205997))

(declare-fun d!1205999 () Bool)

(assert (=> d!1205999 (= (head!8571 lt!1449249) (h!48793 lt!1449249))))

(assert (=> b!4058553 d!1205999))

(declare-fun d!1206001 () Bool)

(assert (=> d!1206001 (= (tail!6303 lt!1449249) (t!336350 lt!1449249))))

(assert (=> b!4058553 d!1206001))

(declare-fun d!1206003 () Bool)

(assert (=> d!1206003 (= (isEmpty!25885 lt!1449266) ((_ is Nil!43373) lt!1449266))))

(assert (=> d!1205983 d!1206003))

(declare-fun b!4058971 () Bool)

(declare-fun res!1655505 () Bool)

(declare-fun e!2518765 () Bool)

(assert (=> b!4058971 (=> (not res!1655505) (not e!2518765))))

(declare-fun call!288088 () Bool)

(assert (=> b!4058971 (= res!1655505 call!288088)))

(declare-fun e!2518762 () Bool)

(assert (=> b!4058971 (= e!2518762 e!2518765)))

(declare-fun bm!288083 () Bool)

(declare-fun call!288090 () Bool)

(declare-fun call!288089 () Bool)

(assert (=> bm!288083 (= call!288090 call!288089)))

(declare-fun d!1206005 () Bool)

(declare-fun res!1655508 () Bool)

(declare-fun e!2518761 () Bool)

(assert (=> d!1206005 (=> res!1655508 e!2518761)))

(assert (=> d!1206005 (= res!1655508 ((_ is ElementMatch!11865) (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))))

(assert (=> d!1206005 (= (validRegex!5368 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) e!2518761)))

(declare-fun b!4058972 () Bool)

(declare-fun e!2518764 () Bool)

(declare-fun e!2518763 () Bool)

(assert (=> b!4058972 (= e!2518764 e!2518763)))

(declare-fun res!1655506 () Bool)

(assert (=> b!4058972 (= res!1655506 (not (nullable!4168 (reg!12194 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))))))

(assert (=> b!4058972 (=> (not res!1655506) (not e!2518763))))

(declare-fun b!4058973 () Bool)

(declare-fun e!2518766 () Bool)

(assert (=> b!4058973 (= e!2518766 call!288090)))

(declare-fun b!4058974 () Bool)

(assert (=> b!4058974 (= e!2518765 call!288090)))

(declare-fun b!4058975 () Bool)

(assert (=> b!4058975 (= e!2518764 e!2518762)))

(declare-fun c!700942 () Bool)

(assert (=> b!4058975 (= c!700942 ((_ is Union!11865) (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))))

(declare-fun b!4058976 () Bool)

(assert (=> b!4058976 (= e!2518761 e!2518764)))

(declare-fun c!700943 () Bool)

(assert (=> b!4058976 (= c!700943 ((_ is Star!11865) (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))))

(declare-fun b!4058977 () Bool)

(declare-fun res!1655507 () Bool)

(declare-fun e!2518760 () Bool)

(assert (=> b!4058977 (=> res!1655507 e!2518760)))

(assert (=> b!4058977 (= res!1655507 (not ((_ is Concat!19056) (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))))))

(assert (=> b!4058977 (= e!2518762 e!2518760)))

(declare-fun b!4058978 () Bool)

(assert (=> b!4058978 (= e!2518760 e!2518766)))

(declare-fun res!1655504 () Bool)

(assert (=> b!4058978 (=> (not res!1655504) (not e!2518766))))

(assert (=> b!4058978 (= res!1655504 call!288088)))

(declare-fun bm!288084 () Bool)

(assert (=> bm!288084 (= call!288088 (validRegex!5368 (ite c!700942 (regOne!24243 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (regOne!24242 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))))))

(declare-fun bm!288085 () Bool)

(assert (=> bm!288085 (= call!288089 (validRegex!5368 (ite c!700943 (reg!12194 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (ite c!700942 (regTwo!24243 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (regTwo!24242 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))))))))

(declare-fun b!4058979 () Bool)

(assert (=> b!4058979 (= e!2518763 call!288089)))

(assert (= (and d!1206005 (not res!1655508)) b!4058976))

(assert (= (and b!4058976 c!700943) b!4058972))

(assert (= (and b!4058976 (not c!700943)) b!4058975))

(assert (= (and b!4058972 res!1655506) b!4058979))

(assert (= (and b!4058975 c!700942) b!4058971))

(assert (= (and b!4058975 (not c!700942)) b!4058977))

(assert (= (and b!4058971 res!1655505) b!4058974))

(assert (= (and b!4058977 (not res!1655507)) b!4058978))

(assert (= (and b!4058978 res!1655504) b!4058973))

(assert (= (or b!4058974 b!4058973) bm!288083))

(assert (= (or b!4058971 b!4058978) bm!288084))

(assert (= (or b!4058979 bm!288083) bm!288085))

(declare-fun m!4663839 () Bool)

(assert (=> b!4058972 m!4663839))

(declare-fun m!4663841 () Bool)

(assert (=> bm!288084 m!4663841))

(declare-fun m!4663843 () Bool)

(assert (=> bm!288085 m!4663843))

(assert (=> d!1205983 d!1206005))

(declare-fun d!1206007 () Bool)

(declare-fun c!700946 () Bool)

(assert (=> d!1206007 (= c!700946 ((_ is Nil!43373) lt!1449353))))

(declare-fun e!2518769 () (InoxSet C!23916))

(assert (=> d!1206007 (= (content!6612 lt!1449353) e!2518769)))

(declare-fun b!4058984 () Bool)

(assert (=> b!4058984 (= e!2518769 ((as const (Array C!23916 Bool)) false))))

(declare-fun b!4058985 () Bool)

(assert (=> b!4058985 (= e!2518769 ((_ map or) (store ((as const (Array C!23916 Bool)) false) (h!48793 lt!1449353) true) (content!6612 (t!336350 lt!1449353))))))

(assert (= (and d!1206007 c!700946) b!4058984))

(assert (= (and d!1206007 (not c!700946)) b!4058985))

(declare-fun m!4663845 () Bool)

(assert (=> b!4058985 m!4663845))

(declare-fun m!4663847 () Bool)

(assert (=> b!4058985 m!4663847))

(assert (=> d!1205655 d!1206007))

(declare-fun d!1206009 () Bool)

(declare-fun c!700947 () Bool)

(assert (=> d!1206009 (= c!700947 ((_ is Nil!43373) prefix!494))))

(declare-fun e!2518770 () (InoxSet C!23916))

(assert (=> d!1206009 (= (content!6612 prefix!494) e!2518770)))

(declare-fun b!4058986 () Bool)

(assert (=> b!4058986 (= e!2518770 ((as const (Array C!23916 Bool)) false))))

(declare-fun b!4058987 () Bool)

(assert (=> b!4058987 (= e!2518770 ((_ map or) (store ((as const (Array C!23916 Bool)) false) (h!48793 prefix!494) true) (content!6612 (t!336350 prefix!494))))))

(assert (= (and d!1206009 c!700947) b!4058986))

(assert (= (and d!1206009 (not c!700947)) b!4058987))

(declare-fun m!4663849 () Bool)

(assert (=> b!4058987 m!4663849))

(declare-fun m!4663851 () Bool)

(assert (=> b!4058987 m!4663851))

(assert (=> d!1205655 d!1206009))

(declare-fun d!1206011 () Bool)

(declare-fun c!700948 () Bool)

(assert (=> d!1206011 (= c!700948 ((_ is Nil!43373) suffix!1299))))

(declare-fun e!2518771 () (InoxSet C!23916))

(assert (=> d!1206011 (= (content!6612 suffix!1299) e!2518771)))

(declare-fun b!4058988 () Bool)

(assert (=> b!4058988 (= e!2518771 ((as const (Array C!23916 Bool)) false))))

(declare-fun b!4058989 () Bool)

(assert (=> b!4058989 (= e!2518771 ((_ map or) (store ((as const (Array C!23916 Bool)) false) (h!48793 suffix!1299) true) (content!6612 (t!336350 suffix!1299))))))

(assert (= (and d!1206011 c!700948) b!4058988))

(assert (= (and d!1206011 (not c!700948)) b!4058989))

(declare-fun m!4663853 () Bool)

(assert (=> b!4058989 m!4663853))

(declare-fun m!4663855 () Bool)

(assert (=> b!4058989 m!4663855))

(assert (=> d!1205655 d!1206011))

(declare-fun d!1206013 () Bool)

(declare-fun c!700949 () Bool)

(assert (=> d!1206013 (= c!700949 ((_ is Nil!43373) lt!1449447))))

(declare-fun e!2518772 () (InoxSet C!23916))

(assert (=> d!1206013 (= (content!6612 lt!1449447) e!2518772)))

(declare-fun b!4058990 () Bool)

(assert (=> b!4058990 (= e!2518772 ((as const (Array C!23916 Bool)) false))))

(declare-fun b!4058991 () Bool)

(assert (=> b!4058991 (= e!2518772 ((_ map or) (store ((as const (Array C!23916 Bool)) false) (h!48793 lt!1449447) true) (content!6612 (t!336350 lt!1449447))))))

(assert (= (and d!1206013 c!700949) b!4058990))

(assert (= (and d!1206013 (not c!700949)) b!4058991))

(declare-fun m!4663857 () Bool)

(assert (=> b!4058991 m!4663857))

(declare-fun m!4663859 () Bool)

(assert (=> b!4058991 m!4663859))

(assert (=> d!1205785 d!1206013))

(declare-fun d!1206015 () Bool)

(declare-fun c!700950 () Bool)

(assert (=> d!1206015 (= c!700950 ((_ is Nil!43373) lt!1449266))))

(declare-fun e!2518773 () (InoxSet C!23916))

(assert (=> d!1206015 (= (content!6612 lt!1449266) e!2518773)))

(declare-fun b!4058992 () Bool)

(assert (=> b!4058992 (= e!2518773 ((as const (Array C!23916 Bool)) false))))

(declare-fun b!4058993 () Bool)

(assert (=> b!4058993 (= e!2518773 ((_ map or) (store ((as const (Array C!23916 Bool)) false) (h!48793 lt!1449266) true) (content!6612 (t!336350 lt!1449266))))))

(assert (= (and d!1206015 c!700950) b!4058992))

(assert (= (and d!1206015 (not c!700950)) b!4058993))

(declare-fun m!4663861 () Bool)

(assert (=> b!4058993 m!4663861))

(declare-fun m!4663863 () Bool)

(assert (=> b!4058993 m!4663863))

(assert (=> d!1205785 d!1206015))

(declare-fun d!1206017 () Bool)

(declare-fun c!700951 () Bool)

(assert (=> d!1206017 (= c!700951 ((_ is Nil!43373) lt!1449267))))

(declare-fun e!2518774 () (InoxSet C!23916))

(assert (=> d!1206017 (= (content!6612 lt!1449267) e!2518774)))

(declare-fun b!4058994 () Bool)

(assert (=> b!4058994 (= e!2518774 ((as const (Array C!23916 Bool)) false))))

(declare-fun b!4058995 () Bool)

(assert (=> b!4058995 (= e!2518774 ((_ map or) (store ((as const (Array C!23916 Bool)) false) (h!48793 lt!1449267) true) (content!6612 (t!336350 lt!1449267))))))

(assert (= (and d!1206017 c!700951) b!4058994))

(assert (= (and d!1206017 (not c!700951)) b!4058995))

(declare-fun m!4663865 () Bool)

(assert (=> b!4058995 m!4663865))

(declare-fun m!4663867 () Bool)

(assert (=> b!4058995 m!4663867))

(assert (=> d!1205785 d!1206017))

(declare-fun d!1206019 () Bool)

(declare-fun lt!1449584 () Int)

(assert (=> d!1206019 (>= lt!1449584 0)))

(declare-fun e!2518775 () Int)

(assert (=> d!1206019 (= lt!1449584 e!2518775)))

(declare-fun c!700952 () Bool)

(assert (=> d!1206019 (= c!700952 ((_ is Nil!43373) (_2!24351 (get!14226 lt!1449563))))))

(assert (=> d!1206019 (= (size!32428 (_2!24351 (get!14226 lt!1449563))) lt!1449584)))

(declare-fun b!4058996 () Bool)

(assert (=> b!4058996 (= e!2518775 0)))

(declare-fun b!4058997 () Bool)

(assert (=> b!4058997 (= e!2518775 (+ 1 (size!32428 (t!336350 (_2!24351 (get!14226 lt!1449563))))))))

(assert (= (and d!1206019 c!700952) b!4058996))

(assert (= (and d!1206019 (not c!700952)) b!4058997))

(declare-fun m!4663869 () Bool)

(assert (=> b!4058997 m!4663869))

(assert (=> b!4058827 d!1206019))

(declare-fun d!1206021 () Bool)

(assert (=> d!1206021 (= (get!14226 lt!1449563) (v!39791 lt!1449563))))

(assert (=> b!4058827 d!1206021))

(declare-fun d!1206023 () Bool)

(declare-fun lt!1449585 () Int)

(assert (=> d!1206023 (>= lt!1449585 0)))

(declare-fun e!2518776 () Int)

(assert (=> d!1206023 (= lt!1449585 e!2518776)))

(declare-fun c!700953 () Bool)

(assert (=> d!1206023 (= c!700953 ((_ is Nil!43373) lt!1449231))))

(assert (=> d!1206023 (= (size!32428 lt!1449231) lt!1449585)))

(declare-fun b!4058998 () Bool)

(assert (=> b!4058998 (= e!2518776 0)))

(declare-fun b!4058999 () Bool)

(assert (=> b!4058999 (= e!2518776 (+ 1 (size!32428 (t!336350 lt!1449231))))))

(assert (= (and d!1206023 c!700953) b!4058998))

(assert (= (and d!1206023 (not c!700953)) b!4058999))

(declare-fun m!4663871 () Bool)

(assert (=> b!4058999 m!4663871))

(assert (=> b!4058827 d!1206023))

(declare-fun d!1206025 () Bool)

(assert (=> d!1206025 true))

(declare-fun lt!1449651 () Bool)

(assert (=> d!1206025 (= lt!1449651 (rulesValidInductive!2543 thiss!21717 rules!2999))))

(declare-fun lambda!127542 () Int)

(declare-fun forall!8381 (List!43499 Int) Bool)

(assert (=> d!1206025 (= lt!1449651 (forall!8381 rules!2999 lambda!127542))))

(assert (=> d!1206025 (= (rulesValid!2710 thiss!21717 rules!2999) lt!1449651)))

(declare-fun bs!591970 () Bool)

(assert (= bs!591970 d!1206025))

(assert (=> bs!591970 m!4662809))

(declare-fun m!4663921 () Bool)

(assert (=> bs!591970 m!4663921))

(assert (=> d!1205661 d!1206025))

(declare-fun d!1206045 () Bool)

(declare-fun lt!1449652 () Int)

(assert (=> d!1206045 (>= lt!1449652 0)))

(declare-fun e!2518812 () Int)

(assert (=> d!1206045 (= lt!1449652 e!2518812)))

(declare-fun c!700973 () Bool)

(assert (=> d!1206045 (= c!700973 ((_ is Nil!43373) lt!1449285))))

(assert (=> d!1206045 (= (size!32428 lt!1449285) lt!1449652)))

(declare-fun b!4059065 () Bool)

(assert (=> b!4059065 (= e!2518812 0)))

(declare-fun b!4059066 () Bool)

(assert (=> b!4059066 (= e!2518812 (+ 1 (size!32428 (t!336350 lt!1449285))))))

(assert (= (and d!1206045 c!700973) b!4059065))

(assert (= (and d!1206045 (not c!700973)) b!4059066))

(declare-fun m!4663923 () Bool)

(assert (=> b!4059066 m!4663923))

(assert (=> b!4058095 d!1206045))

(assert (=> b!4058095 d!1205689))

(assert (=> b!4058095 d!1205973))

(declare-fun d!1206047 () Bool)

(declare-fun c!700974 () Bool)

(assert (=> d!1206047 (= c!700974 ((_ is Nil!43373) lt!1449544))))

(declare-fun e!2518813 () (InoxSet C!23916))

(assert (=> d!1206047 (= (content!6612 lt!1449544) e!2518813)))

(declare-fun b!4059067 () Bool)

(assert (=> b!4059067 (= e!2518813 ((as const (Array C!23916 Bool)) false))))

(declare-fun b!4059068 () Bool)

(assert (=> b!4059068 (= e!2518813 ((_ map or) (store ((as const (Array C!23916 Bool)) false) (h!48793 lt!1449544) true) (content!6612 (t!336350 lt!1449544))))))

(assert (= (and d!1206047 c!700974) b!4059067))

(assert (= (and d!1206047 (not c!700974)) b!4059068))

(declare-fun m!4663925 () Bool)

(assert (=> b!4059068 m!4663925))

(declare-fun m!4663927 () Bool)

(assert (=> b!4059068 m!4663927))

(assert (=> d!1205927 d!1206047))

(assert (=> d!1205927 d!1206015))

(declare-fun d!1206049 () Bool)

(declare-fun c!700975 () Bool)

(assert (=> d!1206049 (= c!700975 ((_ is Nil!43373) lt!1449238))))

(declare-fun e!2518818 () (InoxSet C!23916))

(assert (=> d!1206049 (= (content!6612 lt!1449238) e!2518818)))

(declare-fun b!4059073 () Bool)

(assert (=> b!4059073 (= e!2518818 ((as const (Array C!23916 Bool)) false))))

(declare-fun b!4059074 () Bool)

(assert (=> b!4059074 (= e!2518818 ((_ map or) (store ((as const (Array C!23916 Bool)) false) (h!48793 lt!1449238) true) (content!6612 (t!336350 lt!1449238))))))

(assert (= (and d!1206049 c!700975) b!4059073))

(assert (= (and d!1206049 (not c!700975)) b!4059074))

(declare-fun m!4663929 () Bool)

(assert (=> b!4059074 m!4663929))

(declare-fun m!4663931 () Bool)

(assert (=> b!4059074 m!4663931))

(assert (=> d!1205927 d!1206049))

(declare-fun d!1206051 () Bool)

(declare-fun e!2518821 () Bool)

(assert (=> d!1206051 e!2518821))

(declare-fun res!1655539 () Bool)

(assert (=> d!1206051 (=> (not res!1655539) (not e!2518821))))

(declare-fun lt!1449655 () BalanceConc!25936)

(assert (=> d!1206051 (= res!1655539 (= (list!16164 lt!1449655) lt!1449266))))

(declare-fun fromList!868 (List!43497) Conc!13171)

(assert (=> d!1206051 (= lt!1449655 (BalanceConc!25937 (fromList!868 lt!1449266)))))

(assert (=> d!1206051 (= (fromListB!2362 lt!1449266) lt!1449655)))

(declare-fun b!4059077 () Bool)

(declare-fun isBalanced!3688 (Conc!13171) Bool)

(assert (=> b!4059077 (= e!2518821 (isBalanced!3688 (fromList!868 lt!1449266)))))

(assert (= (and d!1206051 res!1655539) b!4059077))

(declare-fun m!4663933 () Bool)

(assert (=> d!1206051 m!4663933))

(declare-fun m!4663935 () Bool)

(assert (=> d!1206051 m!4663935))

(assert (=> b!4059077 m!4663935))

(assert (=> b!4059077 m!4663935))

(declare-fun m!4663937 () Bool)

(assert (=> b!4059077 m!4663937))

(assert (=> d!1205957 d!1206051))

(declare-fun b!4059080 () Bool)

(declare-fun res!1655540 () Bool)

(declare-fun e!2518822 () Bool)

(assert (=> b!4059080 (=> (not res!1655540) (not e!2518822))))

(declare-fun lt!1449656 () List!43497)

(assert (=> b!4059080 (= res!1655540 (= (size!32428 lt!1449656) (+ (size!32428 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449359))))) (size!32428 (_2!24351 (get!14226 lt!1449359))))))))

(declare-fun b!4059078 () Bool)

(declare-fun e!2518823 () List!43497)

(assert (=> b!4059078 (= e!2518823 (_2!24351 (get!14226 lt!1449359)))))

(declare-fun b!4059079 () Bool)

(assert (=> b!4059079 (= e!2518823 (Cons!43373 (h!48793 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449359))))) (++!11362 (t!336350 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449359))))) (_2!24351 (get!14226 lt!1449359)))))))

(declare-fun d!1206053 () Bool)

(assert (=> d!1206053 e!2518822))

(declare-fun res!1655541 () Bool)

(assert (=> d!1206053 (=> (not res!1655541) (not e!2518822))))

(assert (=> d!1206053 (= res!1655541 (= (content!6612 lt!1449656) ((_ map or) (content!6612 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449359))))) (content!6612 (_2!24351 (get!14226 lt!1449359))))))))

(assert (=> d!1206053 (= lt!1449656 e!2518823)))

(declare-fun c!700977 () Bool)

(assert (=> d!1206053 (= c!700977 ((_ is Nil!43373) (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449359))))))))

(assert (=> d!1206053 (= (++!11362 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449359)))) (_2!24351 (get!14226 lt!1449359))) lt!1449656)))

(declare-fun b!4059081 () Bool)

(assert (=> b!4059081 (= e!2518822 (or (not (= (_2!24351 (get!14226 lt!1449359)) Nil!43373)) (= lt!1449656 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449359)))))))))

(assert (= (and d!1206053 c!700977) b!4059078))

(assert (= (and d!1206053 (not c!700977)) b!4059079))

(assert (= (and d!1206053 res!1655541) b!4059080))

(assert (= (and b!4059080 res!1655540) b!4059081))

(declare-fun m!4663939 () Bool)

(assert (=> b!4059080 m!4663939))

(assert (=> b!4059080 m!4662877))

(declare-fun m!4663941 () Bool)

(assert (=> b!4059080 m!4663941))

(assert (=> b!4059080 m!4662899))

(declare-fun m!4663943 () Bool)

(assert (=> b!4059079 m!4663943))

(declare-fun m!4663945 () Bool)

(assert (=> d!1206053 m!4663945))

(assert (=> d!1206053 m!4662877))

(declare-fun m!4663947 () Bool)

(assert (=> d!1206053 m!4663947))

(declare-fun m!4663949 () Bool)

(assert (=> d!1206053 m!4663949))

(assert (=> b!4058312 d!1206053))

(declare-fun d!1206055 () Bool)

(assert (=> d!1206055 (= (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449359)))) (list!16165 (c!700780 (charsOf!4776 (_1!24351 (get!14226 lt!1449359))))))))

(declare-fun bs!591971 () Bool)

(assert (= bs!591971 d!1206055))

(declare-fun m!4663951 () Bool)

(assert (=> bs!591971 m!4663951))

(assert (=> b!4058312 d!1206055))

(declare-fun d!1206057 () Bool)

(declare-fun lt!1449657 () BalanceConc!25936)

(assert (=> d!1206057 (= (list!16164 lt!1449657) (originalCharacters!7560 (_1!24351 (get!14226 lt!1449359))))))

(assert (=> d!1206057 (= lt!1449657 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449359))))) (value!218994 (_1!24351 (get!14226 lt!1449359)))))))

(assert (=> d!1206057 (= (charsOf!4776 (_1!24351 (get!14226 lt!1449359))) lt!1449657)))

(declare-fun b_lambda!118605 () Bool)

(assert (=> (not b_lambda!118605) (not d!1206057)))

(declare-fun tb!244135 () Bool)

(declare-fun t!336410 () Bool)

(assert (=> (and b!4058071 (= (toChars!9375 (transformation!6960 (h!48795 rules!2999))) (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449359)))))) t!336410) tb!244135))

(declare-fun b!4059082 () Bool)

(declare-fun e!2518824 () Bool)

(declare-fun tp!1229830 () Bool)

(assert (=> b!4059082 (= e!2518824 (and (inv!57985 (c!700780 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449359))))) (value!218994 (_1!24351 (get!14226 lt!1449359)))))) tp!1229830))))

(declare-fun result!295848 () Bool)

(assert (=> tb!244135 (= result!295848 (and (inv!57986 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449359))))) (value!218994 (_1!24351 (get!14226 lt!1449359))))) e!2518824))))

(assert (= tb!244135 b!4059082))

(declare-fun m!4663953 () Bool)

(assert (=> b!4059082 m!4663953))

(declare-fun m!4663955 () Bool)

(assert (=> tb!244135 m!4663955))

(assert (=> d!1206057 t!336410))

(declare-fun b_and!312065 () Bool)

(assert (= b_and!312051 (and (=> t!336410 result!295848) b_and!312065)))

(declare-fun tb!244137 () Bool)

(declare-fun t!336412 () Bool)

(assert (=> (and b!4058069 (= (toChars!9375 (transformation!6960 (rule!10050 token!484))) (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449359)))))) t!336412) tb!244137))

(declare-fun result!295850 () Bool)

(assert (= result!295850 result!295848))

(assert (=> d!1206057 t!336412))

(declare-fun b_and!312067 () Bool)

(assert (= b_and!312053 (and (=> t!336412 result!295850) b_and!312067)))

(declare-fun t!336414 () Bool)

(declare-fun tb!244139 () Bool)

(assert (=> (and b!4058893 (= (toChars!9375 (transformation!6960 (h!48795 (t!336352 rules!2999)))) (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449359)))))) t!336414) tb!244139))

(declare-fun result!295852 () Bool)

(assert (= result!295852 result!295848))

(assert (=> d!1206057 t!336414))

(declare-fun b_and!312069 () Bool)

(assert (= b_and!312057 (and (=> t!336414 result!295852) b_and!312069)))

(declare-fun m!4663957 () Bool)

(assert (=> d!1206057 m!4663957))

(declare-fun m!4663959 () Bool)

(assert (=> d!1206057 m!4663959))

(assert (=> b!4058312 d!1206057))

(declare-fun d!1206059 () Bool)

(assert (=> d!1206059 (= (get!14226 lt!1449359) (v!39791 lt!1449359))))

(assert (=> b!4058312 d!1206059))

(declare-fun d!1206061 () Bool)

(assert (=> d!1206061 true))

(declare-fun order!22703 () Int)

(declare-fun lambda!127545 () Int)

(declare-fun order!22705 () Int)

(declare-fun dynLambda!18427 (Int Int) Int)

(declare-fun dynLambda!18428 (Int Int) Int)

(assert (=> d!1206061 (< (dynLambda!18427 order!22703 (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))) (dynLambda!18428 order!22705 lambda!127545))))

(declare-fun Forall2!1098 (Int) Bool)

(assert (=> d!1206061 (= (equivClasses!2875 (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))) (Forall2!1098 lambda!127545))))

(declare-fun bs!591972 () Bool)

(assert (= bs!591972 d!1206061))

(declare-fun m!4664007 () Bool)

(assert (=> bs!591972 m!4664007))

(assert (=> b!4058757 d!1206061))

(declare-fun d!1206067 () Bool)

(declare-fun charsToInt!0 (List!43498) (_ BitVec 32))

(assert (=> d!1206067 (= (inv!16 (value!218994 token!484)) (= (charsToInt!0 (text!50777 (value!218994 token!484))) (value!218986 (value!218994 token!484))))))

(declare-fun bs!591973 () Bool)

(assert (= bs!591973 d!1206067))

(declare-fun m!4664019 () Bool)

(assert (=> bs!591973 m!4664019))

(assert (=> b!4058795 d!1206067))

(declare-fun b!4059111 () Bool)

(declare-fun e!2518839 () Bool)

(assert (=> b!4059111 (= e!2518839 (isPrefix!4047 (tail!6303 lt!1449266) (tail!6303 (++!11362 lt!1449266 lt!1449232))))))

(declare-fun b!4059109 () Bool)

(declare-fun e!2518841 () Bool)

(assert (=> b!4059109 (= e!2518841 e!2518839)))

(declare-fun res!1655548 () Bool)

(assert (=> b!4059109 (=> (not res!1655548) (not e!2518839))))

(assert (=> b!4059109 (= res!1655548 (not ((_ is Nil!43373) (++!11362 lt!1449266 lt!1449232))))))

(declare-fun b!4059110 () Bool)

(declare-fun res!1655549 () Bool)

(assert (=> b!4059110 (=> (not res!1655549) (not e!2518839))))

(assert (=> b!4059110 (= res!1655549 (= (head!8571 lt!1449266) (head!8571 (++!11362 lt!1449266 lt!1449232))))))

(declare-fun d!1206073 () Bool)

(declare-fun e!2518840 () Bool)

(assert (=> d!1206073 e!2518840))

(declare-fun res!1655550 () Bool)

(assert (=> d!1206073 (=> res!1655550 e!2518840)))

(declare-fun lt!1449689 () Bool)

(assert (=> d!1206073 (= res!1655550 (not lt!1449689))))

(assert (=> d!1206073 (= lt!1449689 e!2518841)))

(declare-fun res!1655551 () Bool)

(assert (=> d!1206073 (=> res!1655551 e!2518841)))

(assert (=> d!1206073 (= res!1655551 ((_ is Nil!43373) lt!1449266))))

(assert (=> d!1206073 (= (isPrefix!4047 lt!1449266 (++!11362 lt!1449266 lt!1449232)) lt!1449689)))

(declare-fun b!4059112 () Bool)

(assert (=> b!4059112 (= e!2518840 (>= (size!32428 (++!11362 lt!1449266 lt!1449232)) (size!32428 lt!1449266)))))

(assert (= (and d!1206073 (not res!1655551)) b!4059109))

(assert (= (and b!4059109 res!1655548) b!4059110))

(assert (= (and b!4059110 res!1655549) b!4059111))

(assert (= (and d!1206073 (not res!1655550)) b!4059112))

(assert (=> b!4059111 m!4662649))

(assert (=> b!4059111 m!4662453))

(declare-fun m!4664021 () Bool)

(assert (=> b!4059111 m!4664021))

(assert (=> b!4059111 m!4662649))

(assert (=> b!4059111 m!4664021))

(declare-fun m!4664023 () Bool)

(assert (=> b!4059111 m!4664023))

(assert (=> b!4059110 m!4662655))

(assert (=> b!4059110 m!4662453))

(declare-fun m!4664025 () Bool)

(assert (=> b!4059110 m!4664025))

(assert (=> b!4059112 m!4662453))

(declare-fun m!4664027 () Bool)

(assert (=> b!4059112 m!4664027))

(assert (=> b!4059112 m!4662529))

(assert (=> d!1205681 d!1206073))

(assert (=> d!1205681 d!1205939))

(declare-fun d!1206081 () Bool)

(assert (=> d!1206081 (isPrefix!4047 lt!1449266 (++!11362 lt!1449266 lt!1449232))))

(assert (=> d!1206081 true))

(declare-fun _$46!1826 () Unit!62757)

(assert (=> d!1206081 (= (choose!24655 lt!1449266 lt!1449232) _$46!1826)))

(declare-fun bs!591974 () Bool)

(assert (= bs!591974 d!1206081))

(assert (=> bs!591974 m!4662453))

(assert (=> bs!591974 m!4662453))

(assert (=> bs!591974 m!4662927))

(assert (=> d!1205681 d!1206081))

(declare-fun d!1206083 () Bool)

(assert (=> d!1206083 (= (head!8571 lt!1449266) (h!48793 lt!1449266))))

(assert (=> b!4058568 d!1206083))

(declare-fun d!1206085 () Bool)

(declare-fun e!2518843 () Bool)

(assert (=> d!1206085 e!2518843))

(declare-fun res!1655558 () Bool)

(assert (=> d!1206085 (=> res!1655558 e!2518843)))

(declare-fun lt!1449690 () Option!9374)

(assert (=> d!1206085 (= res!1655558 (isEmpty!25884 lt!1449690))))

(declare-fun e!2518845 () Option!9374)

(assert (=> d!1206085 (= lt!1449690 e!2518845)))

(declare-fun c!700987 () Bool)

(declare-fun lt!1449691 () tuple2!42436)

(assert (=> d!1206085 (= c!700987 (isEmpty!25885 (_1!24352 lt!1449691)))))

(assert (=> d!1206085 (= lt!1449691 (findLongestMatch!1317 (regex!6960 (h!48795 rules!2999)) lt!1449231))))

(assert (=> d!1206085 (ruleValid!2890 thiss!21717 (h!48795 rules!2999))))

(assert (=> d!1206085 (= (maxPrefixOneRule!2859 thiss!21717 (h!48795 rules!2999) lt!1449231) lt!1449690)))

(declare-fun b!4059113 () Bool)

(declare-fun e!2518842 () Bool)

(assert (=> b!4059113 (= e!2518842 (matchR!5818 (regex!6960 (h!48795 rules!2999)) (_1!24352 (findLongestMatchInner!1404 (regex!6960 (h!48795 rules!2999)) Nil!43373 (size!32428 Nil!43373) lt!1449231 lt!1449231 (size!32428 lt!1449231)))))))

(declare-fun b!4059114 () Bool)

(assert (=> b!4059114 (= e!2518845 (Some!9373 (tuple2!42435 (Token!13059 (apply!10149 (transformation!6960 (h!48795 rules!2999)) (seqFromList!5177 (_1!24352 lt!1449691))) (h!48795 rules!2999) (size!32429 (seqFromList!5177 (_1!24352 lt!1449691))) (_1!24352 lt!1449691)) (_2!24352 lt!1449691))))))

(declare-fun lt!1449694 () Unit!62757)

(assert (=> b!4059114 (= lt!1449694 (longestMatchIsAcceptedByMatchOrIsEmpty!1377 (regex!6960 (h!48795 rules!2999)) lt!1449231))))

(declare-fun res!1655557 () Bool)

(assert (=> b!4059114 (= res!1655557 (isEmpty!25885 (_1!24352 (findLongestMatchInner!1404 (regex!6960 (h!48795 rules!2999)) Nil!43373 (size!32428 Nil!43373) lt!1449231 lt!1449231 (size!32428 lt!1449231)))))))

(assert (=> b!4059114 (=> res!1655557 e!2518842)))

(assert (=> b!4059114 e!2518842))

(declare-fun lt!1449692 () Unit!62757)

(assert (=> b!4059114 (= lt!1449692 lt!1449694)))

(declare-fun lt!1449693 () Unit!62757)

(assert (=> b!4059114 (= lt!1449693 (lemmaSemiInverse!1932 (transformation!6960 (h!48795 rules!2999)) (seqFromList!5177 (_1!24352 lt!1449691))))))

(declare-fun b!4059115 () Bool)

(declare-fun e!2518844 () Bool)

(assert (=> b!4059115 (= e!2518843 e!2518844)))

(declare-fun res!1655553 () Bool)

(assert (=> b!4059115 (=> (not res!1655553) (not e!2518844))))

(assert (=> b!4059115 (= res!1655553 (matchR!5818 (regex!6960 (h!48795 rules!2999)) (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449690))))))))

(declare-fun b!4059116 () Bool)

(assert (=> b!4059116 (= e!2518845 None!9373)))

(declare-fun b!4059117 () Bool)

(declare-fun res!1655556 () Bool)

(assert (=> b!4059117 (=> (not res!1655556) (not e!2518844))))

(assert (=> b!4059117 (= res!1655556 (= (value!218994 (_1!24351 (get!14226 lt!1449690))) (apply!10149 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449690)))) (seqFromList!5177 (originalCharacters!7560 (_1!24351 (get!14226 lt!1449690)))))))))

(declare-fun b!4059118 () Bool)

(declare-fun res!1655555 () Bool)

(assert (=> b!4059118 (=> (not res!1655555) (not e!2518844))))

(assert (=> b!4059118 (= res!1655555 (= (rule!10050 (_1!24351 (get!14226 lt!1449690))) (h!48795 rules!2999)))))

(declare-fun b!4059119 () Bool)

(declare-fun res!1655554 () Bool)

(assert (=> b!4059119 (=> (not res!1655554) (not e!2518844))))

(assert (=> b!4059119 (= res!1655554 (= (++!11362 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449690)))) (_2!24351 (get!14226 lt!1449690))) lt!1449231))))

(declare-fun b!4059120 () Bool)

(assert (=> b!4059120 (= e!2518844 (= (size!32427 (_1!24351 (get!14226 lt!1449690))) (size!32428 (originalCharacters!7560 (_1!24351 (get!14226 lt!1449690))))))))

(declare-fun b!4059121 () Bool)

(declare-fun res!1655552 () Bool)

(assert (=> b!4059121 (=> (not res!1655552) (not e!2518844))))

(assert (=> b!4059121 (= res!1655552 (< (size!32428 (_2!24351 (get!14226 lt!1449690))) (size!32428 lt!1449231)))))

(assert (= (and d!1206085 c!700987) b!4059116))

(assert (= (and d!1206085 (not c!700987)) b!4059114))

(assert (= (and b!4059114 (not res!1655557)) b!4059113))

(assert (= (and d!1206085 (not res!1655558)) b!4059115))

(assert (= (and b!4059115 res!1655553) b!4059119))

(assert (= (and b!4059119 res!1655554) b!4059121))

(assert (= (and b!4059121 res!1655552) b!4059118))

(assert (= (and b!4059118 res!1655555) b!4059117))

(assert (= (and b!4059117 res!1655556) b!4059120))

(declare-fun m!4664029 () Bool)

(assert (=> b!4059118 m!4664029))

(assert (=> b!4059117 m!4664029))

(declare-fun m!4664031 () Bool)

(assert (=> b!4059117 m!4664031))

(assert (=> b!4059117 m!4664031))

(declare-fun m!4664033 () Bool)

(assert (=> b!4059117 m!4664033))

(assert (=> b!4059119 m!4664029))

(declare-fun m!4664035 () Bool)

(assert (=> b!4059119 m!4664035))

(assert (=> b!4059119 m!4664035))

(declare-fun m!4664037 () Bool)

(assert (=> b!4059119 m!4664037))

(assert (=> b!4059119 m!4664037))

(declare-fun m!4664039 () Bool)

(assert (=> b!4059119 m!4664039))

(declare-fun m!4664041 () Bool)

(assert (=> d!1206085 m!4664041))

(declare-fun m!4664043 () Bool)

(assert (=> d!1206085 m!4664043))

(declare-fun m!4664045 () Bool)

(assert (=> d!1206085 m!4664045))

(declare-fun m!4664047 () Bool)

(assert (=> d!1206085 m!4664047))

(assert (=> b!4059121 m!4664029))

(declare-fun m!4664049 () Bool)

(assert (=> b!4059121 m!4664049))

(assert (=> b!4059121 m!4662659))

(assert (=> b!4059115 m!4664029))

(assert (=> b!4059115 m!4664035))

(assert (=> b!4059115 m!4664035))

(assert (=> b!4059115 m!4664037))

(assert (=> b!4059115 m!4664037))

(declare-fun m!4664051 () Bool)

(assert (=> b!4059115 m!4664051))

(assert (=> b!4059113 m!4663593))

(assert (=> b!4059113 m!4662659))

(assert (=> b!4059113 m!4663593))

(assert (=> b!4059113 m!4662659))

(declare-fun m!4664053 () Bool)

(assert (=> b!4059113 m!4664053))

(declare-fun m!4664055 () Bool)

(assert (=> b!4059113 m!4664055))

(assert (=> b!4059120 m!4664029))

(declare-fun m!4664057 () Bool)

(assert (=> b!4059120 m!4664057))

(declare-fun m!4664059 () Bool)

(assert (=> b!4059114 m!4664059))

(declare-fun m!4664061 () Bool)

(assert (=> b!4059114 m!4664061))

(declare-fun m!4664063 () Bool)

(assert (=> b!4059114 m!4664063))

(declare-fun m!4664065 () Bool)

(assert (=> b!4059114 m!4664065))

(assert (=> b!4059114 m!4664063))

(declare-fun m!4664067 () Bool)

(assert (=> b!4059114 m!4664067))

(assert (=> b!4059114 m!4663593))

(assert (=> b!4059114 m!4662659))

(assert (=> b!4059114 m!4664053))

(assert (=> b!4059114 m!4664063))

(declare-fun m!4664069 () Bool)

(assert (=> b!4059114 m!4664069))

(assert (=> b!4059114 m!4664063))

(assert (=> b!4059114 m!4662659))

(assert (=> b!4059114 m!4663593))

(assert (=> bm!288054 d!1206085))

(declare-fun b!4059122 () Bool)

(declare-fun e!2518848 () Bool)

(assert (=> b!4059122 (= e!2518848 (inv!16 (dynLambda!18426 (toValue!9516 (transformation!6960 (rule!10050 token!484))) (seqFromList!5177 lt!1449266))))))

(declare-fun b!4059123 () Bool)

(declare-fun res!1655559 () Bool)

(declare-fun e!2518846 () Bool)

(assert (=> b!4059123 (=> res!1655559 e!2518846)))

(assert (=> b!4059123 (= res!1655559 (not ((_ is IntegerValue!21572) (dynLambda!18426 (toValue!9516 (transformation!6960 (rule!10050 token!484))) (seqFromList!5177 lt!1449266)))))))

(declare-fun e!2518847 () Bool)

(assert (=> b!4059123 (= e!2518847 e!2518846)))

(declare-fun d!1206087 () Bool)

(declare-fun c!700989 () Bool)

(assert (=> d!1206087 (= c!700989 ((_ is IntegerValue!21570) (dynLambda!18426 (toValue!9516 (transformation!6960 (rule!10050 token!484))) (seqFromList!5177 lt!1449266))))))

(assert (=> d!1206087 (= (inv!21 (dynLambda!18426 (toValue!9516 (transformation!6960 (rule!10050 token!484))) (seqFromList!5177 lt!1449266))) e!2518848)))

(declare-fun b!4059124 () Bool)

(assert (=> b!4059124 (= e!2518848 e!2518847)))

(declare-fun c!700988 () Bool)

(assert (=> b!4059124 (= c!700988 ((_ is IntegerValue!21571) (dynLambda!18426 (toValue!9516 (transformation!6960 (rule!10050 token!484))) (seqFromList!5177 lt!1449266))))))

(declare-fun b!4059125 () Bool)

(assert (=> b!4059125 (= e!2518846 (inv!15 (dynLambda!18426 (toValue!9516 (transformation!6960 (rule!10050 token!484))) (seqFromList!5177 lt!1449266))))))

(declare-fun b!4059126 () Bool)

(assert (=> b!4059126 (= e!2518847 (inv!17 (dynLambda!18426 (toValue!9516 (transformation!6960 (rule!10050 token!484))) (seqFromList!5177 lt!1449266))))))

(assert (= (and d!1206087 c!700989) b!4059122))

(assert (= (and d!1206087 (not c!700989)) b!4059124))

(assert (= (and b!4059124 c!700988) b!4059126))

(assert (= (and b!4059124 (not c!700988)) b!4059123))

(assert (= (and b!4059123 (not res!1655559)) b!4059125))

(declare-fun m!4664071 () Bool)

(assert (=> b!4059122 m!4664071))

(declare-fun m!4664073 () Bool)

(assert (=> b!4059125 m!4664073))

(declare-fun m!4664075 () Bool)

(assert (=> b!4059126 m!4664075))

(assert (=> tb!244117 d!1206087))

(assert (=> b!4058770 d!1205971))

(assert (=> b!4058770 d!1205973))

(declare-fun b!4059129 () Bool)

(declare-fun res!1655560 () Bool)

(declare-fun e!2518849 () Bool)

(assert (=> b!4059129 (=> (not res!1655560) (not e!2518849))))

(declare-fun lt!1449695 () List!43497)

(assert (=> b!4059129 (= res!1655560 (= (size!32428 lt!1449695) (+ (size!32428 newSuffix!27) (size!32428 lt!1449572))))))

(declare-fun b!4059127 () Bool)

(declare-fun e!2518850 () List!43497)

(assert (=> b!4059127 (= e!2518850 lt!1449572)))

(declare-fun b!4059128 () Bool)

(assert (=> b!4059128 (= e!2518850 (Cons!43373 (h!48793 newSuffix!27) (++!11362 (t!336350 newSuffix!27) lt!1449572)))))

(declare-fun d!1206089 () Bool)

(assert (=> d!1206089 e!2518849))

(declare-fun res!1655561 () Bool)

(assert (=> d!1206089 (=> (not res!1655561) (not e!2518849))))

(assert (=> d!1206089 (= res!1655561 (= (content!6612 lt!1449695) ((_ map or) (content!6612 newSuffix!27) (content!6612 lt!1449572))))))

(assert (=> d!1206089 (= lt!1449695 e!2518850)))

(declare-fun c!700990 () Bool)

(assert (=> d!1206089 (= c!700990 ((_ is Nil!43373) newSuffix!27))))

(assert (=> d!1206089 (= (++!11362 newSuffix!27 lt!1449572) lt!1449695)))

(declare-fun b!4059130 () Bool)

(assert (=> b!4059130 (= e!2518849 (or (not (= lt!1449572 Nil!43373)) (= lt!1449695 newSuffix!27)))))

(assert (= (and d!1206089 c!700990) b!4059127))

(assert (= (and d!1206089 (not c!700990)) b!4059128))

(assert (= (and d!1206089 res!1655561) b!4059129))

(assert (= (and b!4059129 res!1655560) b!4059130))

(declare-fun m!4664077 () Bool)

(assert (=> b!4059129 m!4664077))

(assert (=> b!4059129 m!4662513))

(declare-fun m!4664079 () Bool)

(assert (=> b!4059129 m!4664079))

(declare-fun m!4664081 () Bool)

(assert (=> b!4059128 m!4664081))

(declare-fun m!4664083 () Bool)

(assert (=> d!1206089 m!4664083))

(assert (=> d!1206089 m!4662631))

(declare-fun m!4664085 () Bool)

(assert (=> d!1206089 m!4664085))

(assert (=> d!1205977 d!1206089))

(assert (=> d!1205977 d!1205971))

(assert (=> d!1205977 d!1205973))

(declare-fun d!1206091 () Bool)

(declare-fun lt!1449696 () Int)

(assert (=> d!1206091 (>= lt!1449696 0)))

(declare-fun e!2518851 () Int)

(assert (=> d!1206091 (= lt!1449696 e!2518851)))

(declare-fun c!700991 () Bool)

(assert (=> d!1206091 (= c!700991 ((_ is Nil!43373) lt!1449453))))

(assert (=> d!1206091 (= (size!32428 lt!1449453) lt!1449696)))

(declare-fun b!4059131 () Bool)

(assert (=> b!4059131 (= e!2518851 0)))

(declare-fun b!4059132 () Bool)

(assert (=> b!4059132 (= e!2518851 (+ 1 (size!32428 (t!336350 lt!1449453))))))

(assert (= (and d!1206091 c!700991) b!4059131))

(assert (= (and d!1206091 (not c!700991)) b!4059132))

(declare-fun m!4664087 () Bool)

(assert (=> b!4059132 m!4664087))

(assert (=> b!4058495 d!1206091))

(assert (=> b!4058495 d!1205689))

(declare-fun d!1206093 () Bool)

(declare-fun lt!1449697 () Int)

(assert (=> d!1206093 (>= lt!1449697 0)))

(declare-fun e!2518852 () Int)

(assert (=> d!1206093 (= lt!1449697 e!2518852)))

(declare-fun c!700992 () Bool)

(assert (=> d!1206093 (= c!700992 ((_ is Nil!43373) lt!1449219))))

(assert (=> d!1206093 (= (size!32428 lt!1449219) lt!1449697)))

(declare-fun b!4059133 () Bool)

(assert (=> b!4059133 (= e!2518852 0)))

(declare-fun b!4059134 () Bool)

(assert (=> b!4059134 (= e!2518852 (+ 1 (size!32428 (t!336350 lt!1449219))))))

(assert (= (and d!1206093 c!700992) b!4059133))

(assert (= (and d!1206093 (not c!700992)) b!4059134))

(declare-fun m!4664089 () Bool)

(assert (=> b!4059134 m!4664089))

(assert (=> b!4058495 d!1206093))

(declare-fun b!4059135 () Bool)

(declare-fun e!2518855 () Bool)

(assert (=> b!4059135 (= e!2518855 (nullable!4168 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))))

(declare-fun b!4059136 () Bool)

(declare-fun res!1655565 () Bool)

(declare-fun e!2518854 () Bool)

(assert (=> b!4059136 (=> (not res!1655565) (not e!2518854))))

(assert (=> b!4059136 (= res!1655565 (isEmpty!25885 (tail!6303 (_1!24352 (findLongestMatchInner!1404 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) Nil!43373 (size!32428 Nil!43373) lt!1449255 lt!1449255 (size!32428 lt!1449255))))))))

(declare-fun b!4059137 () Bool)

(declare-fun e!2518859 () Bool)

(declare-fun e!2518857 () Bool)

(assert (=> b!4059137 (= e!2518859 e!2518857)))

(declare-fun res!1655564 () Bool)

(assert (=> b!4059137 (=> res!1655564 e!2518857)))

(declare-fun call!288117 () Bool)

(assert (=> b!4059137 (= res!1655564 call!288117)))

(declare-fun b!4059138 () Bool)

(declare-fun res!1655563 () Bool)

(assert (=> b!4059138 (=> res!1655563 e!2518857)))

(assert (=> b!4059138 (= res!1655563 (not (isEmpty!25885 (tail!6303 (_1!24352 (findLongestMatchInner!1404 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) Nil!43373 (size!32428 Nil!43373) lt!1449255 lt!1449255 (size!32428 lt!1449255)))))))))

(declare-fun b!4059139 () Bool)

(declare-fun res!1655566 () Bool)

(assert (=> b!4059139 (=> (not res!1655566) (not e!2518854))))

(assert (=> b!4059139 (= res!1655566 (not call!288117))))

(declare-fun b!4059140 () Bool)

(assert (=> b!4059140 (= e!2518857 (not (= (head!8571 (_1!24352 (findLongestMatchInner!1404 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) Nil!43373 (size!32428 Nil!43373) lt!1449255 lt!1449255 (size!32428 lt!1449255)))) (c!700781 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))))))

(declare-fun b!4059141 () Bool)

(declare-fun e!2518856 () Bool)

(declare-fun e!2518858 () Bool)

(assert (=> b!4059141 (= e!2518856 e!2518858)))

(declare-fun c!700993 () Bool)

(assert (=> b!4059141 (= c!700993 ((_ is EmptyLang!11865) (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))))

(declare-fun d!1206095 () Bool)

(assert (=> d!1206095 e!2518856))

(declare-fun c!700995 () Bool)

(assert (=> d!1206095 (= c!700995 ((_ is EmptyExpr!11865) (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))))

(declare-fun lt!1449698 () Bool)

(assert (=> d!1206095 (= lt!1449698 e!2518855)))

(declare-fun c!700994 () Bool)

(assert (=> d!1206095 (= c!700994 (isEmpty!25885 (_1!24352 (findLongestMatchInner!1404 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) Nil!43373 (size!32428 Nil!43373) lt!1449255 lt!1449255 (size!32428 lt!1449255)))))))

(assert (=> d!1206095 (validRegex!5368 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))))

(assert (=> d!1206095 (= (matchR!5818 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) (_1!24352 (findLongestMatchInner!1404 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) Nil!43373 (size!32428 Nil!43373) lt!1449255 lt!1449255 (size!32428 lt!1449255)))) lt!1449698)))

(declare-fun b!4059142 () Bool)

(declare-fun res!1655568 () Bool)

(declare-fun e!2518853 () Bool)

(assert (=> b!4059142 (=> res!1655568 e!2518853)))

(assert (=> b!4059142 (= res!1655568 (not ((_ is ElementMatch!11865) (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))))))

(assert (=> b!4059142 (= e!2518858 e!2518853)))

(declare-fun b!4059143 () Bool)

(assert (=> b!4059143 (= e!2518855 (matchR!5818 (derivativeStep!3573 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) (head!8571 (_1!24352 (findLongestMatchInner!1404 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) Nil!43373 (size!32428 Nil!43373) lt!1449255 lt!1449255 (size!32428 lt!1449255))))) (tail!6303 (_1!24352 (findLongestMatchInner!1404 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) Nil!43373 (size!32428 Nil!43373) lt!1449255 lt!1449255 (size!32428 lt!1449255))))))))

(declare-fun b!4059144 () Bool)

(assert (=> b!4059144 (= e!2518854 (= (head!8571 (_1!24352 (findLongestMatchInner!1404 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) Nil!43373 (size!32428 Nil!43373) lt!1449255 lt!1449255 (size!32428 lt!1449255)))) (c!700781 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))))))

(declare-fun b!4059145 () Bool)

(assert (=> b!4059145 (= e!2518858 (not lt!1449698))))

(declare-fun b!4059146 () Bool)

(assert (=> b!4059146 (= e!2518853 e!2518859)))

(declare-fun res!1655569 () Bool)

(assert (=> b!4059146 (=> (not res!1655569) (not e!2518859))))

(assert (=> b!4059146 (= res!1655569 (not lt!1449698))))

(declare-fun bm!288112 () Bool)

(assert (=> bm!288112 (= call!288117 (isEmpty!25885 (_1!24352 (findLongestMatchInner!1404 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) Nil!43373 (size!32428 Nil!43373) lt!1449255 lt!1449255 (size!32428 lt!1449255)))))))

(declare-fun b!4059147 () Bool)

(assert (=> b!4059147 (= e!2518856 (= lt!1449698 call!288117))))

(declare-fun b!4059148 () Bool)

(declare-fun res!1655562 () Bool)

(assert (=> b!4059148 (=> res!1655562 e!2518853)))

(assert (=> b!4059148 (= res!1655562 e!2518854)))

(declare-fun res!1655567 () Bool)

(assert (=> b!4059148 (=> (not res!1655567) (not e!2518854))))

(assert (=> b!4059148 (= res!1655567 lt!1449698)))

(assert (= (and d!1206095 c!700994) b!4059135))

(assert (= (and d!1206095 (not c!700994)) b!4059143))

(assert (= (and d!1206095 c!700995) b!4059147))

(assert (= (and d!1206095 (not c!700995)) b!4059141))

(assert (= (and b!4059141 c!700993) b!4059145))

(assert (= (and b!4059141 (not c!700993)) b!4059142))

(assert (= (and b!4059142 (not res!1655568)) b!4059148))

(assert (= (and b!4059148 res!1655567) b!4059139))

(assert (= (and b!4059139 res!1655566) b!4059136))

(assert (= (and b!4059136 res!1655565) b!4059144))

(assert (= (and b!4059148 (not res!1655562)) b!4059146))

(assert (= (and b!4059146 res!1655569) b!4059137))

(assert (= (and b!4059137 (not res!1655564)) b!4059138))

(assert (= (and b!4059138 (not res!1655563)) b!4059140))

(assert (= (or b!4059147 b!4059137 b!4059139) bm!288112))

(assert (=> b!4059135 m!4663293))

(declare-fun m!4664091 () Bool)

(assert (=> b!4059138 m!4664091))

(assert (=> b!4059138 m!4664091))

(declare-fun m!4664093 () Bool)

(assert (=> b!4059138 m!4664093))

(assert (=> d!1206095 m!4663603))

(assert (=> d!1206095 m!4663299))

(assert (=> bm!288112 m!4663603))

(assert (=> b!4059136 m!4664091))

(assert (=> b!4059136 m!4664091))

(assert (=> b!4059136 m!4664093))

(declare-fun m!4664095 () Bool)

(assert (=> b!4059140 m!4664095))

(assert (=> b!4059143 m!4664095))

(assert (=> b!4059143 m!4664095))

(declare-fun m!4664097 () Bool)

(assert (=> b!4059143 m!4664097))

(assert (=> b!4059143 m!4664091))

(assert (=> b!4059143 m!4664097))

(assert (=> b!4059143 m!4664091))

(declare-fun m!4664099 () Bool)

(assert (=> b!4059143 m!4664099))

(assert (=> b!4059144 m!4664095))

(assert (=> b!4058707 d!1206095))

(declare-fun call!288141 () tuple2!42436)

(declare-fun bm!288129 () Bool)

(declare-fun lt!1449782 () List!43497)

(declare-fun call!288137 () Regex!11865)

(declare-fun call!288134 () List!43497)

(assert (=> bm!288129 (= call!288141 (findLongestMatchInner!1404 call!288137 lt!1449782 (+ (size!32428 Nil!43373) 1) call!288134 lt!1449255 (size!32428 lt!1449255)))))

(declare-fun b!4059181 () Bool)

(declare-fun e!2518882 () Unit!62757)

(declare-fun Unit!62771 () Unit!62757)

(assert (=> b!4059181 (= e!2518882 Unit!62771)))

(declare-fun lt!1449767 () Unit!62757)

(declare-fun call!288139 () Unit!62757)

(assert (=> b!4059181 (= lt!1449767 call!288139)))

(declare-fun call!288140 () Bool)

(assert (=> b!4059181 call!288140))

(declare-fun lt!1449760 () Unit!62757)

(assert (=> b!4059181 (= lt!1449760 lt!1449767)))

(declare-fun lt!1449757 () Unit!62757)

(declare-fun call!288135 () Unit!62757)

(assert (=> b!4059181 (= lt!1449757 call!288135)))

(assert (=> b!4059181 (= lt!1449255 Nil!43373)))

(declare-fun lt!1449766 () Unit!62757)

(assert (=> b!4059181 (= lt!1449766 lt!1449757)))

(assert (=> b!4059181 false))

(declare-fun b!4059183 () Bool)

(declare-fun e!2518886 () tuple2!42436)

(assert (=> b!4059183 (= e!2518886 (tuple2!42437 Nil!43373 lt!1449255))))

(declare-fun bm!288130 () Bool)

(assert (=> bm!288130 (= call!288139 (lemmaIsPrefixRefl!2614 lt!1449255 lt!1449255))))

(declare-fun b!4059184 () Bool)

(declare-fun e!2518883 () tuple2!42436)

(assert (=> b!4059184 (= e!2518883 (tuple2!42437 Nil!43373 lt!1449255))))

(declare-fun bm!288131 () Bool)

(assert (=> bm!288131 (= call!288140 (isPrefix!4047 lt!1449255 lt!1449255))))

(declare-fun bm!288132 () Bool)

(declare-fun call!288136 () C!23916)

(assert (=> bm!288132 (= call!288136 (head!8571 lt!1449255))))

(declare-fun b!4059185 () Bool)

(declare-fun e!2518885 () tuple2!42436)

(assert (=> b!4059185 (= e!2518885 call!288141)))

(declare-fun b!4059186 () Bool)

(declare-fun e!2518881 () Bool)

(declare-fun lt!1449763 () tuple2!42436)

(assert (=> b!4059186 (= e!2518881 (>= (size!32428 (_1!24352 lt!1449763)) (size!32428 Nil!43373)))))

(declare-fun bm!288133 () Bool)

(declare-fun call!288138 () Bool)

(assert (=> bm!288133 (= call!288138 (nullable!4168 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))))

(declare-fun b!4059187 () Bool)

(declare-fun Unit!62772 () Unit!62757)

(assert (=> b!4059187 (= e!2518882 Unit!62772)))

(declare-fun b!4059188 () Bool)

(assert (=> b!4059188 (= e!2518883 (tuple2!42437 Nil!43373 Nil!43373))))

(declare-fun bm!288134 () Bool)

(assert (=> bm!288134 (= call!288135 (lemmaIsPrefixSameLengthThenSameList!937 lt!1449255 Nil!43373 lt!1449255))))

(declare-fun d!1206097 () Bool)

(declare-fun e!2518887 () Bool)

(assert (=> d!1206097 e!2518887))

(declare-fun res!1655579 () Bool)

(assert (=> d!1206097 (=> (not res!1655579) (not e!2518887))))

(assert (=> d!1206097 (= res!1655579 (= (++!11362 (_1!24352 lt!1449763) (_2!24352 lt!1449763)) lt!1449255))))

(assert (=> d!1206097 (= lt!1449763 e!2518886)))

(declare-fun c!701008 () Bool)

(declare-fun lostCause!1018 (Regex!11865) Bool)

(assert (=> d!1206097 (= c!701008 (lostCause!1018 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))))

(declare-fun lt!1449768 () Unit!62757)

(declare-fun Unit!62773 () Unit!62757)

(assert (=> d!1206097 (= lt!1449768 Unit!62773)))

(assert (=> d!1206097 (= (getSuffix!2464 lt!1449255 Nil!43373) lt!1449255)))

(declare-fun lt!1449772 () Unit!62757)

(declare-fun lt!1449778 () Unit!62757)

(assert (=> d!1206097 (= lt!1449772 lt!1449778)))

(declare-fun lt!1449764 () List!43497)

(assert (=> d!1206097 (= lt!1449255 lt!1449764)))

(assert (=> d!1206097 (= lt!1449778 (lemmaSamePrefixThenSameSuffix!2208 Nil!43373 lt!1449255 Nil!43373 lt!1449764 lt!1449255))))

(assert (=> d!1206097 (= lt!1449764 (getSuffix!2464 lt!1449255 Nil!43373))))

(declare-fun lt!1449780 () Unit!62757)

(declare-fun lt!1449758 () Unit!62757)

(assert (=> d!1206097 (= lt!1449780 lt!1449758)))

(assert (=> d!1206097 (isPrefix!4047 Nil!43373 (++!11362 Nil!43373 lt!1449255))))

(assert (=> d!1206097 (= lt!1449758 (lemmaConcatTwoListThenFirstIsPrefix!2882 Nil!43373 lt!1449255))))

(assert (=> d!1206097 (validRegex!5368 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))))

(assert (=> d!1206097 (= (findLongestMatchInner!1404 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) Nil!43373 (size!32428 Nil!43373) lt!1449255 lt!1449255 (size!32428 lt!1449255)) lt!1449763)))

(declare-fun b!4059182 () Bool)

(declare-fun c!701011 () Bool)

(assert (=> b!4059182 (= c!701011 call!288138)))

(declare-fun lt!1449784 () Unit!62757)

(declare-fun lt!1449776 () Unit!62757)

(assert (=> b!4059182 (= lt!1449784 lt!1449776)))

(declare-fun lt!1449761 () C!23916)

(declare-fun lt!1449773 () List!43497)

(assert (=> b!4059182 (= (++!11362 (++!11362 Nil!43373 (Cons!43373 lt!1449761 Nil!43373)) lt!1449773) lt!1449255)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1262 (List!43497 C!23916 List!43497 List!43497) Unit!62757)

(assert (=> b!4059182 (= lt!1449776 (lemmaMoveElementToOtherListKeepsConcatEq!1262 Nil!43373 lt!1449761 lt!1449773 lt!1449255))))

(assert (=> b!4059182 (= lt!1449773 (tail!6303 lt!1449255))))

(assert (=> b!4059182 (= lt!1449761 (head!8571 lt!1449255))))

(declare-fun lt!1449769 () Unit!62757)

(declare-fun lt!1449765 () Unit!62757)

(assert (=> b!4059182 (= lt!1449769 lt!1449765)))

(assert (=> b!4059182 (isPrefix!4047 (++!11362 Nil!43373 (Cons!43373 (head!8571 (getSuffix!2464 lt!1449255 Nil!43373)) Nil!43373)) lt!1449255)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!644 (List!43497 List!43497) Unit!62757)

(assert (=> b!4059182 (= lt!1449765 (lemmaAddHeadSuffixToPrefixStillPrefix!644 Nil!43373 lt!1449255))))

(declare-fun lt!1449781 () Unit!62757)

(declare-fun lt!1449774 () Unit!62757)

(assert (=> b!4059182 (= lt!1449781 lt!1449774)))

(assert (=> b!4059182 (= lt!1449774 (lemmaAddHeadSuffixToPrefixStillPrefix!644 Nil!43373 lt!1449255))))

(assert (=> b!4059182 (= lt!1449782 (++!11362 Nil!43373 (Cons!43373 (head!8571 lt!1449255) Nil!43373)))))

(declare-fun lt!1449770 () Unit!62757)

(assert (=> b!4059182 (= lt!1449770 e!2518882)))

(declare-fun c!701013 () Bool)

(assert (=> b!4059182 (= c!701013 (= (size!32428 Nil!43373) (size!32428 lt!1449255)))))

(declare-fun lt!1449759 () Unit!62757)

(declare-fun lt!1449779 () Unit!62757)

(assert (=> b!4059182 (= lt!1449759 lt!1449779)))

(assert (=> b!4059182 (<= (size!32428 Nil!43373) (size!32428 lt!1449255))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!452 (List!43497 List!43497) Unit!62757)

(assert (=> b!4059182 (= lt!1449779 (lemmaIsPrefixThenSmallerEqSize!452 Nil!43373 lt!1449255))))

(declare-fun e!2518880 () tuple2!42436)

(assert (=> b!4059182 (= e!2518880 e!2518885)))

(declare-fun bm!288135 () Bool)

(assert (=> bm!288135 (= call!288134 (tail!6303 lt!1449255))))

(declare-fun b!4059189 () Bool)

(assert (=> b!4059189 (= e!2518887 e!2518881)))

(declare-fun res!1655578 () Bool)

(assert (=> b!4059189 (=> res!1655578 e!2518881)))

(assert (=> b!4059189 (= res!1655578 (isEmpty!25885 (_1!24352 lt!1449763)))))

(declare-fun b!4059190 () Bool)

(assert (=> b!4059190 (= e!2518886 e!2518880)))

(declare-fun c!701010 () Bool)

(assert (=> b!4059190 (= c!701010 (= (size!32428 Nil!43373) (size!32428 lt!1449255)))))

(declare-fun b!4059191 () Bool)

(declare-fun e!2518884 () tuple2!42436)

(assert (=> b!4059191 (= e!2518885 e!2518884)))

(declare-fun lt!1449783 () tuple2!42436)

(assert (=> b!4059191 (= lt!1449783 call!288141)))

(declare-fun c!701012 () Bool)

(assert (=> b!4059191 (= c!701012 (isEmpty!25885 (_1!24352 lt!1449783)))))

(declare-fun bm!288136 () Bool)

(assert (=> bm!288136 (= call!288137 (derivativeStep!3573 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) call!288136))))

(declare-fun b!4059192 () Bool)

(assert (=> b!4059192 (= e!2518884 (tuple2!42437 Nil!43373 lt!1449255))))

(declare-fun b!4059193 () Bool)

(assert (=> b!4059193 (= e!2518884 lt!1449783)))

(declare-fun b!4059194 () Bool)

(declare-fun c!701009 () Bool)

(assert (=> b!4059194 (= c!701009 call!288138)))

(declare-fun lt!1449771 () Unit!62757)

(declare-fun lt!1449775 () Unit!62757)

(assert (=> b!4059194 (= lt!1449771 lt!1449775)))

(assert (=> b!4059194 (= lt!1449255 Nil!43373)))

(assert (=> b!4059194 (= lt!1449775 call!288135)))

(declare-fun lt!1449762 () Unit!62757)

(declare-fun lt!1449777 () Unit!62757)

(assert (=> b!4059194 (= lt!1449762 lt!1449777)))

(assert (=> b!4059194 call!288140))

(assert (=> b!4059194 (= lt!1449777 call!288139)))

(assert (=> b!4059194 (= e!2518880 e!2518883)))

(assert (= (and d!1206097 c!701008) b!4059183))

(assert (= (and d!1206097 (not c!701008)) b!4059190))

(assert (= (and b!4059190 c!701010) b!4059194))

(assert (= (and b!4059190 (not c!701010)) b!4059182))

(assert (= (and b!4059194 c!701009) b!4059188))

(assert (= (and b!4059194 (not c!701009)) b!4059184))

(assert (= (and b!4059182 c!701013) b!4059181))

(assert (= (and b!4059182 (not c!701013)) b!4059187))

(assert (= (and b!4059182 c!701011) b!4059191))

(assert (= (and b!4059182 (not c!701011)) b!4059185))

(assert (= (and b!4059191 c!701012) b!4059192))

(assert (= (and b!4059191 (not c!701012)) b!4059193))

(assert (= (or b!4059191 b!4059185) bm!288132))

(assert (= (or b!4059191 b!4059185) bm!288135))

(assert (= (or b!4059191 b!4059185) bm!288136))

(assert (= (or b!4059191 b!4059185) bm!288129))

(assert (= (or b!4059194 b!4059181) bm!288131))

(assert (= (or b!4059194 b!4059182) bm!288133))

(assert (= (or b!4059194 b!4059181) bm!288134))

(assert (= (or b!4059194 b!4059181) bm!288130))

(assert (= (and d!1206097 res!1655579) b!4059189))

(assert (= (and b!4059189 (not res!1655578)) b!4059186))

(assert (=> bm!288133 m!4663293))

(assert (=> bm!288130 m!4662885))

(declare-fun m!4664101 () Bool)

(assert (=> b!4059186 m!4664101))

(assert (=> b!4059186 m!4663593))

(assert (=> bm!288129 m!4662901))

(declare-fun m!4664103 () Bool)

(assert (=> bm!288129 m!4664103))

(declare-fun m!4664105 () Bool)

(assert (=> bm!288134 m!4664105))

(declare-fun m!4664107 () Bool)

(assert (=> bm!288136 m!4664107))

(assert (=> bm!288131 m!4662883))

(assert (=> bm!288135 m!4663165))

(declare-fun m!4664109 () Bool)

(assert (=> b!4059189 m!4664109))

(declare-fun m!4664111 () Bool)

(assert (=> b!4059191 m!4664111))

(declare-fun m!4664113 () Bool)

(assert (=> b!4059182 m!4664113))

(assert (=> b!4059182 m!4663593))

(declare-fun m!4664115 () Bool)

(assert (=> b!4059182 m!4664115))

(declare-fun m!4664117 () Bool)

(assert (=> b!4059182 m!4664117))

(assert (=> b!4059182 m!4663315))

(declare-fun m!4664119 () Bool)

(assert (=> b!4059182 m!4664119))

(assert (=> b!4059182 m!4664117))

(declare-fun m!4664121 () Bool)

(assert (=> b!4059182 m!4664121))

(declare-fun m!4664123 () Bool)

(assert (=> b!4059182 m!4664123))

(assert (=> b!4059182 m!4664113))

(declare-fun m!4664125 () Bool)

(assert (=> b!4059182 m!4664125))

(assert (=> b!4059182 m!4662901))

(declare-fun m!4664127 () Bool)

(assert (=> b!4059182 m!4664127))

(assert (=> b!4059182 m!4664115))

(declare-fun m!4664129 () Bool)

(assert (=> b!4059182 m!4664129))

(assert (=> b!4059182 m!4663165))

(declare-fun m!4664131 () Bool)

(assert (=> b!4059182 m!4664131))

(declare-fun m!4664133 () Bool)

(assert (=> d!1206097 m!4664133))

(declare-fun m!4664135 () Bool)

(assert (=> d!1206097 m!4664135))

(declare-fun m!4664137 () Bool)

(assert (=> d!1206097 m!4664137))

(declare-fun m!4664139 () Bool)

(assert (=> d!1206097 m!4664139))

(assert (=> d!1206097 m!4664117))

(assert (=> d!1206097 m!4664137))

(assert (=> d!1206097 m!4663299))

(declare-fun m!4664141 () Bool)

(assert (=> d!1206097 m!4664141))

(declare-fun m!4664143 () Bool)

(assert (=> d!1206097 m!4664143))

(assert (=> bm!288132 m!4663315))

(assert (=> b!4058707 d!1206097))

(declare-fun d!1206103 () Bool)

(declare-fun lt!1449785 () Int)

(assert (=> d!1206103 (>= lt!1449785 0)))

(declare-fun e!2518888 () Int)

(assert (=> d!1206103 (= lt!1449785 e!2518888)))

(declare-fun c!701014 () Bool)

(assert (=> d!1206103 (= c!701014 ((_ is Nil!43373) Nil!43373))))

(assert (=> d!1206103 (= (size!32428 Nil!43373) lt!1449785)))

(declare-fun b!4059195 () Bool)

(assert (=> b!4059195 (= e!2518888 0)))

(declare-fun b!4059196 () Bool)

(assert (=> b!4059196 (= e!2518888 (+ 1 (size!32428 (t!336350 Nil!43373))))))

(assert (= (and d!1206103 c!701014) b!4059195))

(assert (= (and d!1206103 (not c!701014)) b!4059196))

(declare-fun m!4664145 () Bool)

(assert (=> b!4059196 m!4664145))

(assert (=> b!4058707 d!1206103))

(assert (=> b!4058707 d!1205989))

(declare-fun b!4059199 () Bool)

(declare-fun res!1655580 () Bool)

(declare-fun e!2518889 () Bool)

(assert (=> b!4059199 (=> (not res!1655580) (not e!2518889))))

(declare-fun lt!1449786 () List!43497)

(assert (=> b!4059199 (= res!1655580 (= (size!32428 lt!1449786) (+ (size!32428 (t!336350 lt!1449266)) (size!32428 lt!1449267))))))

(declare-fun b!4059197 () Bool)

(declare-fun e!2518890 () List!43497)

(assert (=> b!4059197 (= e!2518890 lt!1449267)))

(declare-fun b!4059198 () Bool)

(assert (=> b!4059198 (= e!2518890 (Cons!43373 (h!48793 (t!336350 lt!1449266)) (++!11362 (t!336350 (t!336350 lt!1449266)) lt!1449267)))))

(declare-fun d!1206105 () Bool)

(assert (=> d!1206105 e!2518889))

(declare-fun res!1655581 () Bool)

(assert (=> d!1206105 (=> (not res!1655581) (not e!2518889))))

(assert (=> d!1206105 (= res!1655581 (= (content!6612 lt!1449786) ((_ map or) (content!6612 (t!336350 lt!1449266)) (content!6612 lt!1449267))))))

(assert (=> d!1206105 (= lt!1449786 e!2518890)))

(declare-fun c!701015 () Bool)

(assert (=> d!1206105 (= c!701015 ((_ is Nil!43373) (t!336350 lt!1449266)))))

(assert (=> d!1206105 (= (++!11362 (t!336350 lt!1449266) lt!1449267) lt!1449786)))

(declare-fun b!4059200 () Bool)

(assert (=> b!4059200 (= e!2518889 (or (not (= lt!1449267 Nil!43373)) (= lt!1449786 (t!336350 lt!1449266))))))

(assert (= (and d!1206105 c!701015) b!4059197))

(assert (= (and d!1206105 (not c!701015)) b!4059198))

(assert (= (and d!1206105 res!1655581) b!4059199))

(assert (= (and b!4059199 res!1655580) b!4059200))

(declare-fun m!4664147 () Bool)

(assert (=> b!4059199 m!4664147))

(assert (=> b!4059199 m!4662933))

(assert (=> b!4059199 m!4663189))

(declare-fun m!4664149 () Bool)

(assert (=> b!4059198 m!4664149))

(declare-fun m!4664151 () Bool)

(assert (=> d!1206105 m!4664151))

(assert (=> d!1206105 m!4663863))

(assert (=> d!1206105 m!4663195))

(assert (=> b!4058482 d!1206105))

(declare-fun b!4059201 () Bool)

(declare-fun e!2518893 () Bool)

(assert (=> b!4059201 (= e!2518893 (nullable!4168 (regex!6960 (rule!10050 token!484))))))

(declare-fun b!4059202 () Bool)

(declare-fun res!1655585 () Bool)

(declare-fun e!2518892 () Bool)

(assert (=> b!4059202 (=> (not res!1655585) (not e!2518892))))

(assert (=> b!4059202 (= res!1655585 (isEmpty!25885 (tail!6303 (_1!24352 (findLongestMatchInner!1404 (regex!6960 (rule!10050 token!484)) Nil!43373 (size!32428 Nil!43373) lt!1449231 lt!1449231 (size!32428 lt!1449231))))))))

(declare-fun b!4059203 () Bool)

(declare-fun e!2518897 () Bool)

(declare-fun e!2518895 () Bool)

(assert (=> b!4059203 (= e!2518897 e!2518895)))

(declare-fun res!1655584 () Bool)

(assert (=> b!4059203 (=> res!1655584 e!2518895)))

(declare-fun call!288142 () Bool)

(assert (=> b!4059203 (= res!1655584 call!288142)))

(declare-fun b!4059204 () Bool)

(declare-fun res!1655583 () Bool)

(assert (=> b!4059204 (=> res!1655583 e!2518895)))

(assert (=> b!4059204 (= res!1655583 (not (isEmpty!25885 (tail!6303 (_1!24352 (findLongestMatchInner!1404 (regex!6960 (rule!10050 token!484)) Nil!43373 (size!32428 Nil!43373) lt!1449231 lt!1449231 (size!32428 lt!1449231)))))))))

(declare-fun b!4059205 () Bool)

(declare-fun res!1655586 () Bool)

(assert (=> b!4059205 (=> (not res!1655586) (not e!2518892))))

(assert (=> b!4059205 (= res!1655586 (not call!288142))))

(declare-fun b!4059206 () Bool)

(assert (=> b!4059206 (= e!2518895 (not (= (head!8571 (_1!24352 (findLongestMatchInner!1404 (regex!6960 (rule!10050 token!484)) Nil!43373 (size!32428 Nil!43373) lt!1449231 lt!1449231 (size!32428 lt!1449231)))) (c!700781 (regex!6960 (rule!10050 token!484))))))))

(declare-fun b!4059207 () Bool)

(declare-fun e!2518894 () Bool)

(declare-fun e!2518896 () Bool)

(assert (=> b!4059207 (= e!2518894 e!2518896)))

(declare-fun c!701016 () Bool)

(assert (=> b!4059207 (= c!701016 ((_ is EmptyLang!11865) (regex!6960 (rule!10050 token!484))))))

(declare-fun d!1206107 () Bool)

(assert (=> d!1206107 e!2518894))

(declare-fun c!701018 () Bool)

(assert (=> d!1206107 (= c!701018 ((_ is EmptyExpr!11865) (regex!6960 (rule!10050 token!484))))))

(declare-fun lt!1449787 () Bool)

(assert (=> d!1206107 (= lt!1449787 e!2518893)))

(declare-fun c!701017 () Bool)

(assert (=> d!1206107 (= c!701017 (isEmpty!25885 (_1!24352 (findLongestMatchInner!1404 (regex!6960 (rule!10050 token!484)) Nil!43373 (size!32428 Nil!43373) lt!1449231 lt!1449231 (size!32428 lt!1449231)))))))

(assert (=> d!1206107 (validRegex!5368 (regex!6960 (rule!10050 token!484)))))

(assert (=> d!1206107 (= (matchR!5818 (regex!6960 (rule!10050 token!484)) (_1!24352 (findLongestMatchInner!1404 (regex!6960 (rule!10050 token!484)) Nil!43373 (size!32428 Nil!43373) lt!1449231 lt!1449231 (size!32428 lt!1449231)))) lt!1449787)))

(declare-fun b!4059208 () Bool)

(declare-fun res!1655588 () Bool)

(declare-fun e!2518891 () Bool)

(assert (=> b!4059208 (=> res!1655588 e!2518891)))

(assert (=> b!4059208 (= res!1655588 (not ((_ is ElementMatch!11865) (regex!6960 (rule!10050 token!484)))))))

(assert (=> b!4059208 (= e!2518896 e!2518891)))

(declare-fun b!4059209 () Bool)

(assert (=> b!4059209 (= e!2518893 (matchR!5818 (derivativeStep!3573 (regex!6960 (rule!10050 token!484)) (head!8571 (_1!24352 (findLongestMatchInner!1404 (regex!6960 (rule!10050 token!484)) Nil!43373 (size!32428 Nil!43373) lt!1449231 lt!1449231 (size!32428 lt!1449231))))) (tail!6303 (_1!24352 (findLongestMatchInner!1404 (regex!6960 (rule!10050 token!484)) Nil!43373 (size!32428 Nil!43373) lt!1449231 lt!1449231 (size!32428 lt!1449231))))))))

(declare-fun b!4059210 () Bool)

(assert (=> b!4059210 (= e!2518892 (= (head!8571 (_1!24352 (findLongestMatchInner!1404 (regex!6960 (rule!10050 token!484)) Nil!43373 (size!32428 Nil!43373) lt!1449231 lt!1449231 (size!32428 lt!1449231)))) (c!700781 (regex!6960 (rule!10050 token!484)))))))

(declare-fun b!4059211 () Bool)

(assert (=> b!4059211 (= e!2518896 (not lt!1449787))))

(declare-fun b!4059212 () Bool)

(assert (=> b!4059212 (= e!2518891 e!2518897)))

(declare-fun res!1655589 () Bool)

(assert (=> b!4059212 (=> (not res!1655589) (not e!2518897))))

(assert (=> b!4059212 (= res!1655589 (not lt!1449787))))

(declare-fun bm!288137 () Bool)

(assert (=> bm!288137 (= call!288142 (isEmpty!25885 (_1!24352 (findLongestMatchInner!1404 (regex!6960 (rule!10050 token!484)) Nil!43373 (size!32428 Nil!43373) lt!1449231 lt!1449231 (size!32428 lt!1449231)))))))

(declare-fun b!4059213 () Bool)

(assert (=> b!4059213 (= e!2518894 (= lt!1449787 call!288142))))

(declare-fun b!4059214 () Bool)

(declare-fun res!1655582 () Bool)

(assert (=> b!4059214 (=> res!1655582 e!2518891)))

(assert (=> b!4059214 (= res!1655582 e!2518892)))

(declare-fun res!1655587 () Bool)

(assert (=> b!4059214 (=> (not res!1655587) (not e!2518892))))

(assert (=> b!4059214 (= res!1655587 lt!1449787)))

(assert (= (and d!1206107 c!701017) b!4059201))

(assert (= (and d!1206107 (not c!701017)) b!4059209))

(assert (= (and d!1206107 c!701018) b!4059213))

(assert (= (and d!1206107 (not c!701018)) b!4059207))

(assert (= (and b!4059207 c!701016) b!4059211))

(assert (= (and b!4059207 (not c!701016)) b!4059208))

(assert (= (and b!4059208 (not res!1655588)) b!4059214))

(assert (= (and b!4059214 res!1655587) b!4059205))

(assert (= (and b!4059205 res!1655586) b!4059202))

(assert (= (and b!4059202 res!1655585) b!4059210))

(assert (= (and b!4059214 (not res!1655582)) b!4059212))

(assert (= (and b!4059212 res!1655589) b!4059203))

(assert (= (and b!4059203 (not res!1655584)) b!4059204))

(assert (= (and b!4059204 (not res!1655583)) b!4059206))

(assert (= (or b!4059213 b!4059203 b!4059205) bm!288137))

(assert (=> b!4059201 m!4663147))

(declare-fun m!4664153 () Bool)

(assert (=> b!4059204 m!4664153))

(assert (=> b!4059204 m!4664153))

(declare-fun m!4664155 () Bool)

(assert (=> b!4059204 m!4664155))

(assert (=> d!1206107 m!4663757))

(assert (=> d!1206107 m!4663145))

(assert (=> bm!288137 m!4663757))

(assert (=> b!4059202 m!4664153))

(assert (=> b!4059202 m!4664153))

(assert (=> b!4059202 m!4664155))

(declare-fun m!4664157 () Bool)

(assert (=> b!4059206 m!4664157))

(assert (=> b!4059209 m!4664157))

(assert (=> b!4059209 m!4664157))

(declare-fun m!4664159 () Bool)

(assert (=> b!4059209 m!4664159))

(assert (=> b!4059209 m!4664153))

(assert (=> b!4059209 m!4664159))

(assert (=> b!4059209 m!4664153))

(declare-fun m!4664161 () Bool)

(assert (=> b!4059209 m!4664161))

(assert (=> b!4059210 m!4664157))

(assert (=> b!4058819 d!1206107))

(declare-fun bm!288138 () Bool)

(declare-fun call!288143 () List!43497)

(declare-fun call!288146 () Regex!11865)

(declare-fun call!288150 () tuple2!42436)

(declare-fun lt!1449813 () List!43497)

(assert (=> bm!288138 (= call!288150 (findLongestMatchInner!1404 call!288146 lt!1449813 (+ (size!32428 Nil!43373) 1) call!288143 lt!1449231 (size!32428 lt!1449231)))))

(declare-fun b!4059215 () Bool)

(declare-fun e!2518900 () Unit!62757)

(declare-fun Unit!62774 () Unit!62757)

(assert (=> b!4059215 (= e!2518900 Unit!62774)))

(declare-fun lt!1449798 () Unit!62757)

(declare-fun call!288148 () Unit!62757)

(assert (=> b!4059215 (= lt!1449798 call!288148)))

(declare-fun call!288149 () Bool)

(assert (=> b!4059215 call!288149))

(declare-fun lt!1449791 () Unit!62757)

(assert (=> b!4059215 (= lt!1449791 lt!1449798)))

(declare-fun lt!1449788 () Unit!62757)

(declare-fun call!288144 () Unit!62757)

(assert (=> b!4059215 (= lt!1449788 call!288144)))

(assert (=> b!4059215 (= lt!1449231 Nil!43373)))

(declare-fun lt!1449797 () Unit!62757)

(assert (=> b!4059215 (= lt!1449797 lt!1449788)))

(assert (=> b!4059215 false))

(declare-fun b!4059217 () Bool)

(declare-fun e!2518904 () tuple2!42436)

(assert (=> b!4059217 (= e!2518904 (tuple2!42437 Nil!43373 lt!1449231))))

(declare-fun bm!288139 () Bool)

(assert (=> bm!288139 (= call!288148 (lemmaIsPrefixRefl!2614 lt!1449231 lt!1449231))))

(declare-fun b!4059218 () Bool)

(declare-fun e!2518901 () tuple2!42436)

(assert (=> b!4059218 (= e!2518901 (tuple2!42437 Nil!43373 lt!1449231))))

(declare-fun bm!288140 () Bool)

(assert (=> bm!288140 (= call!288149 (isPrefix!4047 lt!1449231 lt!1449231))))

(declare-fun bm!288141 () Bool)

(declare-fun call!288145 () C!23916)

(assert (=> bm!288141 (= call!288145 (head!8571 lt!1449231))))

(declare-fun b!4059219 () Bool)

(declare-fun e!2518903 () tuple2!42436)

(assert (=> b!4059219 (= e!2518903 call!288150)))

(declare-fun b!4059220 () Bool)

(declare-fun e!2518899 () Bool)

(declare-fun lt!1449794 () tuple2!42436)

(assert (=> b!4059220 (= e!2518899 (>= (size!32428 (_1!24352 lt!1449794)) (size!32428 Nil!43373)))))

(declare-fun bm!288142 () Bool)

(declare-fun call!288147 () Bool)

(assert (=> bm!288142 (= call!288147 (nullable!4168 (regex!6960 (rule!10050 token!484))))))

(declare-fun b!4059221 () Bool)

(declare-fun Unit!62775 () Unit!62757)

(assert (=> b!4059221 (= e!2518900 Unit!62775)))

(declare-fun b!4059222 () Bool)

(assert (=> b!4059222 (= e!2518901 (tuple2!42437 Nil!43373 Nil!43373))))

(declare-fun bm!288143 () Bool)

(assert (=> bm!288143 (= call!288144 (lemmaIsPrefixSameLengthThenSameList!937 lt!1449231 Nil!43373 lt!1449231))))

(declare-fun d!1206109 () Bool)

(declare-fun e!2518905 () Bool)

(assert (=> d!1206109 e!2518905))

(declare-fun res!1655591 () Bool)

(assert (=> d!1206109 (=> (not res!1655591) (not e!2518905))))

(assert (=> d!1206109 (= res!1655591 (= (++!11362 (_1!24352 lt!1449794) (_2!24352 lt!1449794)) lt!1449231))))

(assert (=> d!1206109 (= lt!1449794 e!2518904)))

(declare-fun c!701019 () Bool)

(assert (=> d!1206109 (= c!701019 (lostCause!1018 (regex!6960 (rule!10050 token!484))))))

(declare-fun lt!1449799 () Unit!62757)

(declare-fun Unit!62776 () Unit!62757)

(assert (=> d!1206109 (= lt!1449799 Unit!62776)))

(assert (=> d!1206109 (= (getSuffix!2464 lt!1449231 Nil!43373) lt!1449231)))

(declare-fun lt!1449803 () Unit!62757)

(declare-fun lt!1449809 () Unit!62757)

(assert (=> d!1206109 (= lt!1449803 lt!1449809)))

(declare-fun lt!1449795 () List!43497)

(assert (=> d!1206109 (= lt!1449231 lt!1449795)))

(assert (=> d!1206109 (= lt!1449809 (lemmaSamePrefixThenSameSuffix!2208 Nil!43373 lt!1449231 Nil!43373 lt!1449795 lt!1449231))))

(assert (=> d!1206109 (= lt!1449795 (getSuffix!2464 lt!1449231 Nil!43373))))

(declare-fun lt!1449811 () Unit!62757)

(declare-fun lt!1449789 () Unit!62757)

(assert (=> d!1206109 (= lt!1449811 lt!1449789)))

(assert (=> d!1206109 (isPrefix!4047 Nil!43373 (++!11362 Nil!43373 lt!1449231))))

(assert (=> d!1206109 (= lt!1449789 (lemmaConcatTwoListThenFirstIsPrefix!2882 Nil!43373 lt!1449231))))

(assert (=> d!1206109 (validRegex!5368 (regex!6960 (rule!10050 token!484)))))

(assert (=> d!1206109 (= (findLongestMatchInner!1404 (regex!6960 (rule!10050 token!484)) Nil!43373 (size!32428 Nil!43373) lt!1449231 lt!1449231 (size!32428 lt!1449231)) lt!1449794)))

(declare-fun b!4059216 () Bool)

(declare-fun c!701022 () Bool)

(assert (=> b!4059216 (= c!701022 call!288147)))

(declare-fun lt!1449815 () Unit!62757)

(declare-fun lt!1449807 () Unit!62757)

(assert (=> b!4059216 (= lt!1449815 lt!1449807)))

(declare-fun lt!1449792 () C!23916)

(declare-fun lt!1449804 () List!43497)

(assert (=> b!4059216 (= (++!11362 (++!11362 Nil!43373 (Cons!43373 lt!1449792 Nil!43373)) lt!1449804) lt!1449231)))

(assert (=> b!4059216 (= lt!1449807 (lemmaMoveElementToOtherListKeepsConcatEq!1262 Nil!43373 lt!1449792 lt!1449804 lt!1449231))))

(assert (=> b!4059216 (= lt!1449804 (tail!6303 lt!1449231))))

(assert (=> b!4059216 (= lt!1449792 (head!8571 lt!1449231))))

(declare-fun lt!1449800 () Unit!62757)

(declare-fun lt!1449796 () Unit!62757)

(assert (=> b!4059216 (= lt!1449800 lt!1449796)))

(assert (=> b!4059216 (isPrefix!4047 (++!11362 Nil!43373 (Cons!43373 (head!8571 (getSuffix!2464 lt!1449231 Nil!43373)) Nil!43373)) lt!1449231)))

(assert (=> b!4059216 (= lt!1449796 (lemmaAddHeadSuffixToPrefixStillPrefix!644 Nil!43373 lt!1449231))))

(declare-fun lt!1449812 () Unit!62757)

(declare-fun lt!1449805 () Unit!62757)

(assert (=> b!4059216 (= lt!1449812 lt!1449805)))

(assert (=> b!4059216 (= lt!1449805 (lemmaAddHeadSuffixToPrefixStillPrefix!644 Nil!43373 lt!1449231))))

(assert (=> b!4059216 (= lt!1449813 (++!11362 Nil!43373 (Cons!43373 (head!8571 lt!1449231) Nil!43373)))))

(declare-fun lt!1449801 () Unit!62757)

(assert (=> b!4059216 (= lt!1449801 e!2518900)))

(declare-fun c!701024 () Bool)

(assert (=> b!4059216 (= c!701024 (= (size!32428 Nil!43373) (size!32428 lt!1449231)))))

(declare-fun lt!1449790 () Unit!62757)

(declare-fun lt!1449810 () Unit!62757)

(assert (=> b!4059216 (= lt!1449790 lt!1449810)))

(assert (=> b!4059216 (<= (size!32428 Nil!43373) (size!32428 lt!1449231))))

(assert (=> b!4059216 (= lt!1449810 (lemmaIsPrefixThenSmallerEqSize!452 Nil!43373 lt!1449231))))

(declare-fun e!2518898 () tuple2!42436)

(assert (=> b!4059216 (= e!2518898 e!2518903)))

(declare-fun bm!288144 () Bool)

(assert (=> bm!288144 (= call!288143 (tail!6303 lt!1449231))))

(declare-fun b!4059223 () Bool)

(assert (=> b!4059223 (= e!2518905 e!2518899)))

(declare-fun res!1655590 () Bool)

(assert (=> b!4059223 (=> res!1655590 e!2518899)))

(assert (=> b!4059223 (= res!1655590 (isEmpty!25885 (_1!24352 lt!1449794)))))

(declare-fun b!4059224 () Bool)

(assert (=> b!4059224 (= e!2518904 e!2518898)))

(declare-fun c!701021 () Bool)

(assert (=> b!4059224 (= c!701021 (= (size!32428 Nil!43373) (size!32428 lt!1449231)))))

(declare-fun b!4059225 () Bool)

(declare-fun e!2518902 () tuple2!42436)

(assert (=> b!4059225 (= e!2518903 e!2518902)))

(declare-fun lt!1449814 () tuple2!42436)

(assert (=> b!4059225 (= lt!1449814 call!288150)))

(declare-fun c!701023 () Bool)

(assert (=> b!4059225 (= c!701023 (isEmpty!25885 (_1!24352 lt!1449814)))))

(declare-fun bm!288145 () Bool)

(assert (=> bm!288145 (= call!288146 (derivativeStep!3573 (regex!6960 (rule!10050 token!484)) call!288145))))

(declare-fun b!4059226 () Bool)

(assert (=> b!4059226 (= e!2518902 (tuple2!42437 Nil!43373 lt!1449231))))

(declare-fun b!4059227 () Bool)

(assert (=> b!4059227 (= e!2518902 lt!1449814)))

(declare-fun b!4059228 () Bool)

(declare-fun c!701020 () Bool)

(assert (=> b!4059228 (= c!701020 call!288147)))

(declare-fun lt!1449802 () Unit!62757)

(declare-fun lt!1449806 () Unit!62757)

(assert (=> b!4059228 (= lt!1449802 lt!1449806)))

(assert (=> b!4059228 (= lt!1449231 Nil!43373)))

(assert (=> b!4059228 (= lt!1449806 call!288144)))

(declare-fun lt!1449793 () Unit!62757)

(declare-fun lt!1449808 () Unit!62757)

(assert (=> b!4059228 (= lt!1449793 lt!1449808)))

(assert (=> b!4059228 call!288149))

(assert (=> b!4059228 (= lt!1449808 call!288148)))

(assert (=> b!4059228 (= e!2518898 e!2518901)))

(assert (= (and d!1206109 c!701019) b!4059217))

(assert (= (and d!1206109 (not c!701019)) b!4059224))

(assert (= (and b!4059224 c!701021) b!4059228))

(assert (= (and b!4059224 (not c!701021)) b!4059216))

(assert (= (and b!4059228 c!701020) b!4059222))

(assert (= (and b!4059228 (not c!701020)) b!4059218))

(assert (= (and b!4059216 c!701024) b!4059215))

(assert (= (and b!4059216 (not c!701024)) b!4059221))

(assert (= (and b!4059216 c!701022) b!4059225))

(assert (= (and b!4059216 (not c!701022)) b!4059219))

(assert (= (and b!4059225 c!701023) b!4059226))

(assert (= (and b!4059225 (not c!701023)) b!4059227))

(assert (= (or b!4059225 b!4059219) bm!288141))

(assert (= (or b!4059225 b!4059219) bm!288144))

(assert (= (or b!4059225 b!4059219) bm!288145))

(assert (= (or b!4059225 b!4059219) bm!288138))

(assert (= (or b!4059228 b!4059215) bm!288140))

(assert (= (or b!4059228 b!4059216) bm!288142))

(assert (= (or b!4059228 b!4059215) bm!288143))

(assert (= (or b!4059228 b!4059215) bm!288139))

(assert (= (and d!1206109 res!1655591) b!4059223))

(assert (= (and b!4059223 (not res!1655590)) b!4059220))

(assert (=> bm!288142 m!4663147))

(assert (=> bm!288139 m!4662459))

(declare-fun m!4664163 () Bool)

(assert (=> b!4059220 m!4664163))

(assert (=> b!4059220 m!4663593))

(assert (=> bm!288138 m!4662659))

(declare-fun m!4664165 () Bool)

(assert (=> bm!288138 m!4664165))

(declare-fun m!4664167 () Bool)

(assert (=> bm!288143 m!4664167))

(declare-fun m!4664169 () Bool)

(assert (=> bm!288145 m!4664169))

(assert (=> bm!288140 m!4662457))

(assert (=> bm!288144 m!4662651))

(declare-fun m!4664171 () Bool)

(assert (=> b!4059223 m!4664171))

(declare-fun m!4664173 () Bool)

(assert (=> b!4059225 m!4664173))

(declare-fun m!4664175 () Bool)

(assert (=> b!4059216 m!4664175))

(assert (=> b!4059216 m!4663593))

(declare-fun m!4664177 () Bool)

(assert (=> b!4059216 m!4664177))

(declare-fun m!4664179 () Bool)

(assert (=> b!4059216 m!4664179))

(assert (=> b!4059216 m!4662657))

(declare-fun m!4664181 () Bool)

(assert (=> b!4059216 m!4664181))

(assert (=> b!4059216 m!4664179))

(declare-fun m!4664183 () Bool)

(assert (=> b!4059216 m!4664183))

(declare-fun m!4664185 () Bool)

(assert (=> b!4059216 m!4664185))

(assert (=> b!4059216 m!4664175))

(declare-fun m!4664187 () Bool)

(assert (=> b!4059216 m!4664187))

(assert (=> b!4059216 m!4662659))

(declare-fun m!4664189 () Bool)

(assert (=> b!4059216 m!4664189))

(assert (=> b!4059216 m!4664177))

(declare-fun m!4664191 () Bool)

(assert (=> b!4059216 m!4664191))

(assert (=> b!4059216 m!4662651))

(declare-fun m!4664193 () Bool)

(assert (=> b!4059216 m!4664193))

(declare-fun m!4664195 () Bool)

(assert (=> d!1206109 m!4664195))

(declare-fun m!4664197 () Bool)

(assert (=> d!1206109 m!4664197))

(declare-fun m!4664199 () Bool)

(assert (=> d!1206109 m!4664199))

(declare-fun m!4664201 () Bool)

(assert (=> d!1206109 m!4664201))

(assert (=> d!1206109 m!4664179))

(assert (=> d!1206109 m!4664199))

(assert (=> d!1206109 m!4663145))

(declare-fun m!4664203 () Bool)

(assert (=> d!1206109 m!4664203))

(declare-fun m!4664205 () Bool)

(assert (=> d!1206109 m!4664205))

(assert (=> bm!288141 m!4662657))

(assert (=> b!4058819 d!1206109))

(assert (=> b!4058819 d!1206103))

(assert (=> b!4058819 d!1206023))

(assert (=> b!4058574 d!1206083))

(declare-fun d!1206111 () Bool)

(assert (=> d!1206111 (= (head!8571 lt!1449255) (h!48793 lt!1449255))))

(assert (=> b!4058574 d!1206111))

(declare-fun d!1206113 () Bool)

(assert (=> d!1206113 (= (isEmpty!25884 lt!1449563) (not ((_ is Some!9373) lt!1449563)))))

(assert (=> d!1205967 d!1206113))

(declare-fun d!1206115 () Bool)

(assert (=> d!1206115 (= (isEmpty!25885 (_1!24352 lt!1449564)) ((_ is Nil!43373) (_1!24352 lt!1449564)))))

(assert (=> d!1205967 d!1206115))

(declare-fun d!1206117 () Bool)

(declare-fun lt!1449839 () tuple2!42436)

(assert (=> d!1206117 (= (++!11362 (_1!24352 lt!1449839) (_2!24352 lt!1449839)) lt!1449231)))

(declare-fun sizeTr!281 (List!43497 Int) Int)

(assert (=> d!1206117 (= lt!1449839 (findLongestMatchInner!1404 (regex!6960 (rule!10050 token!484)) Nil!43373 0 lt!1449231 lt!1449231 (sizeTr!281 lt!1449231 0)))))

(declare-fun lt!1449832 () Unit!62757)

(declare-fun lt!1449836 () Unit!62757)

(assert (=> d!1206117 (= lt!1449832 lt!1449836)))

(declare-fun lt!1449835 () List!43497)

(declare-fun lt!1449834 () Int)

(assert (=> d!1206117 (= (sizeTr!281 lt!1449835 lt!1449834) (+ (size!32428 lt!1449835) lt!1449834))))

(declare-fun lemmaSizeTrEqualsSize!280 (List!43497 Int) Unit!62757)

(assert (=> d!1206117 (= lt!1449836 (lemmaSizeTrEqualsSize!280 lt!1449835 lt!1449834))))

(assert (=> d!1206117 (= lt!1449834 0)))

(assert (=> d!1206117 (= lt!1449835 Nil!43373)))

(declare-fun lt!1449833 () Unit!62757)

(declare-fun lt!1449838 () Unit!62757)

(assert (=> d!1206117 (= lt!1449833 lt!1449838)))

(declare-fun lt!1449837 () Int)

(assert (=> d!1206117 (= (sizeTr!281 lt!1449231 lt!1449837) (+ (size!32428 lt!1449231) lt!1449837))))

(assert (=> d!1206117 (= lt!1449838 (lemmaSizeTrEqualsSize!280 lt!1449231 lt!1449837))))

(assert (=> d!1206117 (= lt!1449837 0)))

(assert (=> d!1206117 (validRegex!5368 (regex!6960 (rule!10050 token!484)))))

(assert (=> d!1206117 (= (findLongestMatch!1317 (regex!6960 (rule!10050 token!484)) lt!1449231) lt!1449839)))

(declare-fun bs!591976 () Bool)

(assert (= bs!591976 d!1206117))

(assert (=> bs!591976 m!4663145))

(declare-fun m!4664207 () Bool)

(assert (=> bs!591976 m!4664207))

(declare-fun m!4664209 () Bool)

(assert (=> bs!591976 m!4664209))

(declare-fun m!4664211 () Bool)

(assert (=> bs!591976 m!4664211))

(assert (=> bs!591976 m!4662659))

(declare-fun m!4664213 () Bool)

(assert (=> bs!591976 m!4664213))

(declare-fun m!4664215 () Bool)

(assert (=> bs!591976 m!4664215))

(declare-fun m!4664217 () Bool)

(assert (=> bs!591976 m!4664217))

(declare-fun m!4664219 () Bool)

(assert (=> bs!591976 m!4664219))

(declare-fun m!4664221 () Bool)

(assert (=> bs!591976 m!4664221))

(assert (=> bs!591976 m!4664215))

(assert (=> d!1205967 d!1206117))

(assert (=> d!1205967 d!1205769))

(declare-fun b!4059231 () Bool)

(declare-fun res!1655592 () Bool)

(declare-fun e!2518906 () Bool)

(assert (=> b!4059231 (=> (not res!1655592) (not e!2518906))))

(declare-fun lt!1449840 () List!43497)

(assert (=> b!4059231 (= res!1655592 (= (size!32428 lt!1449840) (+ (size!32428 (t!336350 lt!1449266)) (size!32428 lt!1449238))))))

(declare-fun b!4059229 () Bool)

(declare-fun e!2518907 () List!43497)

(assert (=> b!4059229 (= e!2518907 lt!1449238)))

(declare-fun b!4059230 () Bool)

(assert (=> b!4059230 (= e!2518907 (Cons!43373 (h!48793 (t!336350 lt!1449266)) (++!11362 (t!336350 (t!336350 lt!1449266)) lt!1449238)))))

(declare-fun d!1206119 () Bool)

(assert (=> d!1206119 e!2518906))

(declare-fun res!1655593 () Bool)

(assert (=> d!1206119 (=> (not res!1655593) (not e!2518906))))

(assert (=> d!1206119 (= res!1655593 (= (content!6612 lt!1449840) ((_ map or) (content!6612 (t!336350 lt!1449266)) (content!6612 lt!1449238))))))

(assert (=> d!1206119 (= lt!1449840 e!2518907)))

(declare-fun c!701025 () Bool)

(assert (=> d!1206119 (= c!701025 ((_ is Nil!43373) (t!336350 lt!1449266)))))

(assert (=> d!1206119 (= (++!11362 (t!336350 lt!1449266) lt!1449238) lt!1449840)))

(declare-fun b!4059232 () Bool)

(assert (=> b!4059232 (= e!2518906 (or (not (= lt!1449238 Nil!43373)) (= lt!1449840 (t!336350 lt!1449266))))))

(assert (= (and d!1206119 c!701025) b!4059229))

(assert (= (and d!1206119 (not c!701025)) b!4059230))

(assert (= (and d!1206119 res!1655593) b!4059231))

(assert (= (and b!4059231 res!1655592) b!4059232))

(declare-fun m!4664223 () Bool)

(assert (=> b!4059231 m!4664223))

(assert (=> b!4059231 m!4662933))

(assert (=> b!4059231 m!4663209))

(declare-fun m!4664225 () Bool)

(assert (=> b!4059230 m!4664225))

(declare-fun m!4664227 () Bool)

(assert (=> d!1206119 m!4664227))

(assert (=> d!1206119 m!4663863))

(assert (=> d!1206119 m!4663215))

(assert (=> b!4058772 d!1206119))

(assert (=> b!4058814 d!1206023))

(assert (=> b!4058814 d!1205907))

(declare-fun d!1206121 () Bool)

(declare-fun lt!1449841 () Int)

(assert (=> d!1206121 (>= lt!1449841 0)))

(declare-fun e!2518908 () Int)

(assert (=> d!1206121 (= lt!1449841 e!2518908)))

(declare-fun c!701026 () Bool)

(assert (=> d!1206121 (= c!701026 ((_ is Nil!43373) lt!1449430))))

(assert (=> d!1206121 (= (size!32428 lt!1449430) lt!1449841)))

(declare-fun b!4059233 () Bool)

(assert (=> b!4059233 (= e!2518908 0)))

(declare-fun b!4059234 () Bool)

(assert (=> b!4059234 (= e!2518908 (+ 1 (size!32428 (t!336350 lt!1449430))))))

(assert (= (and d!1206121 c!701026) b!4059233))

(assert (= (and d!1206121 (not c!701026)) b!4059234))

(declare-fun m!4664229 () Bool)

(assert (=> b!4059234 m!4664229))

(assert (=> b!4058443 d!1206121))

(assert (=> b!4058443 d!1205685))

(declare-fun d!1206123 () Bool)

(declare-fun lt!1449842 () Int)

(assert (=> d!1206123 (>= lt!1449842 0)))

(declare-fun e!2518909 () Int)

(assert (=> d!1206123 (= lt!1449842 e!2518909)))

(declare-fun c!701027 () Bool)

(assert (=> d!1206123 (= c!701027 ((_ is Nil!43373) suffixResult!105))))

(assert (=> d!1206123 (= (size!32428 suffixResult!105) lt!1449842)))

(declare-fun b!4059235 () Bool)

(assert (=> b!4059235 (= e!2518909 0)))

(declare-fun b!4059236 () Bool)

(assert (=> b!4059236 (= e!2518909 (+ 1 (size!32428 (t!336350 suffixResult!105))))))

(assert (= (and d!1206123 c!701027) b!4059235))

(assert (= (and d!1206123 (not c!701027)) b!4059236))

(declare-fun m!4664231 () Bool)

(assert (=> b!4059236 m!4664231))

(assert (=> b!4058443 d!1206123))

(declare-fun d!1206125 () Bool)

(assert (=> d!1206125 (= (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449345)))) (list!16165 (c!700780 (charsOf!4776 (_1!24351 (get!14226 lt!1449345))))))))

(declare-fun bs!591977 () Bool)

(assert (= bs!591977 d!1206125))

(declare-fun m!4664233 () Bool)

(assert (=> bs!591977 m!4664233))

(assert (=> b!4058270 d!1206125))

(declare-fun d!1206127 () Bool)

(declare-fun lt!1449843 () BalanceConc!25936)

(assert (=> d!1206127 (= (list!16164 lt!1449843) (originalCharacters!7560 (_1!24351 (get!14226 lt!1449345))))))

(assert (=> d!1206127 (= lt!1449843 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449345))))) (value!218994 (_1!24351 (get!14226 lt!1449345)))))))

(assert (=> d!1206127 (= (charsOf!4776 (_1!24351 (get!14226 lt!1449345))) lt!1449843)))

(declare-fun b_lambda!118607 () Bool)

(assert (=> (not b_lambda!118607) (not d!1206127)))

(declare-fun t!336416 () Bool)

(declare-fun tb!244141 () Bool)

(assert (=> (and b!4058071 (= (toChars!9375 (transformation!6960 (h!48795 rules!2999))) (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449345)))))) t!336416) tb!244141))

(declare-fun b!4059237 () Bool)

(declare-fun e!2518910 () Bool)

(declare-fun tp!1229831 () Bool)

(assert (=> b!4059237 (= e!2518910 (and (inv!57985 (c!700780 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449345))))) (value!218994 (_1!24351 (get!14226 lt!1449345)))))) tp!1229831))))

(declare-fun result!295854 () Bool)

(assert (=> tb!244141 (= result!295854 (and (inv!57986 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449345))))) (value!218994 (_1!24351 (get!14226 lt!1449345))))) e!2518910))))

(assert (= tb!244141 b!4059237))

(declare-fun m!4664235 () Bool)

(assert (=> b!4059237 m!4664235))

(declare-fun m!4664237 () Bool)

(assert (=> tb!244141 m!4664237))

(assert (=> d!1206127 t!336416))

(declare-fun b_and!312071 () Bool)

(assert (= b_and!312065 (and (=> t!336416 result!295854) b_and!312071)))

(declare-fun t!336418 () Bool)

(declare-fun tb!244143 () Bool)

(assert (=> (and b!4058069 (= (toChars!9375 (transformation!6960 (rule!10050 token!484))) (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449345)))))) t!336418) tb!244143))

(declare-fun result!295856 () Bool)

(assert (= result!295856 result!295854))

(assert (=> d!1206127 t!336418))

(declare-fun b_and!312073 () Bool)

(assert (= b_and!312067 (and (=> t!336418 result!295856) b_and!312073)))

(declare-fun tb!244145 () Bool)

(declare-fun t!336420 () Bool)

(assert (=> (and b!4058893 (= (toChars!9375 (transformation!6960 (h!48795 (t!336352 rules!2999)))) (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449345)))))) t!336420) tb!244145))

(declare-fun result!295858 () Bool)

(assert (= result!295858 result!295854))

(assert (=> d!1206127 t!336420))

(declare-fun b_and!312075 () Bool)

(assert (= b_and!312069 (and (=> t!336420 result!295858) b_and!312075)))

(declare-fun m!4664239 () Bool)

(assert (=> d!1206127 m!4664239))

(declare-fun m!4664241 () Bool)

(assert (=> d!1206127 m!4664241))

(assert (=> b!4058270 d!1206127))

(declare-fun d!1206129 () Bool)

(assert (=> d!1206129 (= (get!14226 lt!1449345) (v!39791 lt!1449345))))

(assert (=> b!4058270 d!1206129))

(declare-fun d!1206131 () Bool)

(declare-fun res!1655598 () Bool)

(declare-fun e!2518915 () Bool)

(assert (=> d!1206131 (=> res!1655598 e!2518915)))

(assert (=> d!1206131 (= res!1655598 ((_ is Nil!43375) rules!2999))))

(assert (=> d!1206131 (= (noDuplicateTag!2711 thiss!21717 rules!2999 Nil!43377) e!2518915)))

(declare-fun b!4059242 () Bool)

(declare-fun e!2518916 () Bool)

(assert (=> b!4059242 (= e!2518915 e!2518916)))

(declare-fun res!1655599 () Bool)

(assert (=> b!4059242 (=> (not res!1655599) (not e!2518916))))

(declare-fun contains!8629 (List!43501 String!49667) Bool)

(assert (=> b!4059242 (= res!1655599 (not (contains!8629 Nil!43377 (tag!7820 (h!48795 rules!2999)))))))

(declare-fun b!4059243 () Bool)

(assert (=> b!4059243 (= e!2518916 (noDuplicateTag!2711 thiss!21717 (t!336352 rules!2999) (Cons!43377 (tag!7820 (h!48795 rules!2999)) Nil!43377)))))

(assert (= (and d!1206131 (not res!1655598)) b!4059242))

(assert (= (and b!4059242 res!1655599) b!4059243))

(declare-fun m!4664243 () Bool)

(assert (=> b!4059242 m!4664243))

(declare-fun m!4664245 () Bool)

(assert (=> b!4059243 m!4664245))

(assert (=> b!4058308 d!1206131))

(declare-fun d!1206133 () Bool)

(declare-fun lt!1449844 () Int)

(assert (=> d!1206133 (>= lt!1449844 0)))

(declare-fun e!2518917 () Int)

(assert (=> d!1206133 (= lt!1449844 e!2518917)))

(declare-fun c!701028 () Bool)

(assert (=> d!1206133 (= c!701028 ((_ is Nil!43373) lt!1449229))))

(assert (=> d!1206133 (= (size!32428 lt!1449229) lt!1449844)))

(declare-fun b!4059244 () Bool)

(assert (=> b!4059244 (= e!2518917 0)))

(declare-fun b!4059245 () Bool)

(assert (=> b!4059245 (= e!2518917 (+ 1 (size!32428 (t!336350 lt!1449229))))))

(assert (= (and d!1206133 c!701028) b!4059244))

(assert (= (and d!1206133 (not c!701028)) b!4059245))

(declare-fun m!4664247 () Bool)

(assert (=> b!4059245 m!4664247))

(assert (=> b!4058345 d!1206133))

(assert (=> b!4058345 d!1205685))

(declare-fun d!1206135 () Bool)

(assert (=> d!1206135 true))

(declare-fun lambda!127548 () Int)

(declare-fun order!22707 () Int)

(declare-fun order!22709 () Int)

(declare-fun dynLambda!18429 (Int Int) Int)

(declare-fun dynLambda!18430 (Int Int) Int)

(assert (=> d!1206135 (< (dynLambda!18429 order!22707 (toChars!9375 (transformation!6960 (rule!10050 token!484)))) (dynLambda!18430 order!22709 lambda!127548))))

(assert (=> d!1206135 true))

(assert (=> d!1206135 (< (dynLambda!18427 order!22703 (toValue!9516 (transformation!6960 (rule!10050 token!484)))) (dynLambda!18430 order!22709 lambda!127548))))

(declare-fun Forall!1498 (Int) Bool)

(assert (=> d!1206135 (= (semiInverseModEq!2976 (toChars!9375 (transformation!6960 (rule!10050 token!484))) (toValue!9516 (transformation!6960 (rule!10050 token!484)))) (Forall!1498 lambda!127548))))

(declare-fun bs!591978 () Bool)

(assert (= bs!591978 d!1206135))

(declare-fun m!4664249 () Bool)

(assert (=> bs!591978 m!4664249))

(assert (=> d!1205949 d!1206135))

(assert (=> b!4058855 d!1206083))

(declare-fun b!4059252 () Bool)

(declare-fun res!1655600 () Bool)

(declare-fun e!2518918 () Bool)

(assert (=> b!4059252 (=> (not res!1655600) (not e!2518918))))

(declare-fun lt!1449845 () List!43497)

(assert (=> b!4059252 (= res!1655600 (= (size!32428 lt!1449845) (+ (size!32428 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449534))))) (size!32428 (_2!24351 (get!14226 lt!1449534))))))))

(declare-fun b!4059250 () Bool)

(declare-fun e!2518919 () List!43497)

(assert (=> b!4059250 (= e!2518919 (_2!24351 (get!14226 lt!1449534)))))

(declare-fun b!4059251 () Bool)

(assert (=> b!4059251 (= e!2518919 (Cons!43373 (h!48793 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449534))))) (++!11362 (t!336350 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449534))))) (_2!24351 (get!14226 lt!1449534)))))))

(declare-fun d!1206137 () Bool)

(assert (=> d!1206137 e!2518918))

(declare-fun res!1655601 () Bool)

(assert (=> d!1206137 (=> (not res!1655601) (not e!2518918))))

(assert (=> d!1206137 (= res!1655601 (= (content!6612 lt!1449845) ((_ map or) (content!6612 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449534))))) (content!6612 (_2!24351 (get!14226 lt!1449534))))))))

(assert (=> d!1206137 (= lt!1449845 e!2518919)))

(declare-fun c!701029 () Bool)

(assert (=> d!1206137 (= c!701029 ((_ is Nil!43373) (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449534))))))))

(assert (=> d!1206137 (= (++!11362 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449534)))) (_2!24351 (get!14226 lt!1449534))) lt!1449845)))

(declare-fun b!4059253 () Bool)

(assert (=> b!4059253 (= e!2518918 (or (not (= (_2!24351 (get!14226 lt!1449534)) Nil!43373)) (= lt!1449845 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449534)))))))))

(assert (= (and d!1206137 c!701029) b!4059250))

(assert (= (and d!1206137 (not c!701029)) b!4059251))

(assert (= (and d!1206137 res!1655601) b!4059252))

(assert (= (and b!4059252 res!1655600) b!4059253))

(declare-fun m!4664251 () Bool)

(assert (=> b!4059252 m!4664251))

(assert (=> b!4059252 m!4663579))

(declare-fun m!4664253 () Bool)

(assert (=> b!4059252 m!4664253))

(assert (=> b!4059252 m!4663589))

(declare-fun m!4664255 () Bool)

(assert (=> b!4059251 m!4664255))

(declare-fun m!4664257 () Bool)

(assert (=> d!1206137 m!4664257))

(assert (=> d!1206137 m!4663579))

(declare-fun m!4664259 () Bool)

(assert (=> d!1206137 m!4664259))

(declare-fun m!4664261 () Bool)

(assert (=> d!1206137 m!4664261))

(assert (=> b!4058713 d!1206137))

(declare-fun d!1206139 () Bool)

(assert (=> d!1206139 (= (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449534)))) (list!16165 (c!700780 (charsOf!4776 (_1!24351 (get!14226 lt!1449534))))))))

(declare-fun bs!591979 () Bool)

(assert (= bs!591979 d!1206139))

(declare-fun m!4664263 () Bool)

(assert (=> bs!591979 m!4664263))

(assert (=> b!4058713 d!1206139))

(declare-fun d!1206141 () Bool)

(declare-fun lt!1449846 () BalanceConc!25936)

(assert (=> d!1206141 (= (list!16164 lt!1449846) (originalCharacters!7560 (_1!24351 (get!14226 lt!1449534))))))

(assert (=> d!1206141 (= lt!1449846 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449534))))) (value!218994 (_1!24351 (get!14226 lt!1449534)))))))

(assert (=> d!1206141 (= (charsOf!4776 (_1!24351 (get!14226 lt!1449534))) lt!1449846)))

(declare-fun b_lambda!118609 () Bool)

(assert (=> (not b_lambda!118609) (not d!1206141)))

(declare-fun t!336422 () Bool)

(declare-fun tb!244147 () Bool)

(assert (=> (and b!4058071 (= (toChars!9375 (transformation!6960 (h!48795 rules!2999))) (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449534)))))) t!336422) tb!244147))

(declare-fun b!4059254 () Bool)

(declare-fun e!2518920 () Bool)

(declare-fun tp!1229832 () Bool)

(assert (=> b!4059254 (= e!2518920 (and (inv!57985 (c!700780 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449534))))) (value!218994 (_1!24351 (get!14226 lt!1449534)))))) tp!1229832))))

(declare-fun result!295860 () Bool)

(assert (=> tb!244147 (= result!295860 (and (inv!57986 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449534))))) (value!218994 (_1!24351 (get!14226 lt!1449534))))) e!2518920))))

(assert (= tb!244147 b!4059254))

(declare-fun m!4664265 () Bool)

(assert (=> b!4059254 m!4664265))

(declare-fun m!4664267 () Bool)

(assert (=> tb!244147 m!4664267))

(assert (=> d!1206141 t!336422))

(declare-fun b_and!312077 () Bool)

(assert (= b_and!312071 (and (=> t!336422 result!295860) b_and!312077)))

(declare-fun t!336424 () Bool)

(declare-fun tb!244149 () Bool)

(assert (=> (and b!4058069 (= (toChars!9375 (transformation!6960 (rule!10050 token!484))) (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449534)))))) t!336424) tb!244149))

(declare-fun result!295862 () Bool)

(assert (= result!295862 result!295860))

(assert (=> d!1206141 t!336424))

(declare-fun b_and!312079 () Bool)

(assert (= b_and!312073 (and (=> t!336424 result!295862) b_and!312079)))

(declare-fun tb!244151 () Bool)

(declare-fun t!336426 () Bool)

(assert (=> (and b!4058893 (= (toChars!9375 (transformation!6960 (h!48795 (t!336352 rules!2999)))) (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449534)))))) t!336426) tb!244151))

(declare-fun result!295864 () Bool)

(assert (= result!295864 result!295860))

(assert (=> d!1206141 t!336426))

(declare-fun b_and!312081 () Bool)

(assert (= b_and!312075 (and (=> t!336426 result!295864) b_and!312081)))

(declare-fun m!4664269 () Bool)

(assert (=> d!1206141 m!4664269))

(declare-fun m!4664271 () Bool)

(assert (=> d!1206141 m!4664271))

(assert (=> b!4058713 d!1206141))

(declare-fun d!1206143 () Bool)

(assert (=> d!1206143 (= (get!14226 lt!1449534) (v!39791 lt!1449534))))

(assert (=> b!4058713 d!1206143))

(declare-fun d!1206145 () Bool)

(declare-fun c!701032 () Bool)

(assert (=> d!1206145 (= c!701032 ((_ is Node!13171) (c!700780 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (value!218994 (_1!24351 (v!39791 lt!1449276)))))))))

(declare-fun e!2518925 () Bool)

(assert (=> d!1206145 (= (inv!57985 (c!700780 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (value!218994 (_1!24351 (v!39791 lt!1449276)))))) e!2518925)))

(declare-fun b!4059261 () Bool)

(declare-fun inv!57987 (Conc!13171) Bool)

(assert (=> b!4059261 (= e!2518925 (inv!57987 (c!700780 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (value!218994 (_1!24351 (v!39791 lt!1449276)))))))))

(declare-fun b!4059262 () Bool)

(declare-fun e!2518926 () Bool)

(assert (=> b!4059262 (= e!2518925 e!2518926)))

(declare-fun res!1655604 () Bool)

(assert (=> b!4059262 (= res!1655604 (not ((_ is Leaf!20358) (c!700780 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (value!218994 (_1!24351 (v!39791 lt!1449276))))))))))

(assert (=> b!4059262 (=> res!1655604 e!2518926)))

(declare-fun b!4059263 () Bool)

(declare-fun inv!57988 (Conc!13171) Bool)

(assert (=> b!4059263 (= e!2518926 (inv!57988 (c!700780 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (value!218994 (_1!24351 (v!39791 lt!1449276)))))))))

(assert (= (and d!1206145 c!701032) b!4059261))

(assert (= (and d!1206145 (not c!701032)) b!4059262))

(assert (= (and b!4059262 (not res!1655604)) b!4059263))

(declare-fun m!4664273 () Bool)

(assert (=> b!4059261 m!4664273))

(declare-fun m!4664275 () Bool)

(assert (=> b!4059263 m!4664275))

(assert (=> b!4058579 d!1206145))

(declare-fun b!4059266 () Bool)

(declare-fun e!2518927 () Bool)

(assert (=> b!4059266 (= e!2518927 (isPrefix!4047 (tail!6303 lt!1449266) (tail!6303 (++!11362 prefix!494 newSuffix!27))))))

(declare-fun b!4059264 () Bool)

(declare-fun e!2518929 () Bool)

(assert (=> b!4059264 (= e!2518929 e!2518927)))

(declare-fun res!1655605 () Bool)

(assert (=> b!4059264 (=> (not res!1655605) (not e!2518927))))

(assert (=> b!4059264 (= res!1655605 (not ((_ is Nil!43373) (++!11362 prefix!494 newSuffix!27))))))

(declare-fun b!4059265 () Bool)

(declare-fun res!1655606 () Bool)

(assert (=> b!4059265 (=> (not res!1655606) (not e!2518927))))

(assert (=> b!4059265 (= res!1655606 (= (head!8571 lt!1449266) (head!8571 (++!11362 prefix!494 newSuffix!27))))))

(declare-fun d!1206147 () Bool)

(declare-fun e!2518928 () Bool)

(assert (=> d!1206147 e!2518928))

(declare-fun res!1655607 () Bool)

(assert (=> d!1206147 (=> res!1655607 e!2518928)))

(declare-fun lt!1449847 () Bool)

(assert (=> d!1206147 (= res!1655607 (not lt!1449847))))

(assert (=> d!1206147 (= lt!1449847 e!2518929)))

(declare-fun res!1655608 () Bool)

(assert (=> d!1206147 (=> res!1655608 e!2518929)))

(assert (=> d!1206147 (= res!1655608 ((_ is Nil!43373) lt!1449266))))

(assert (=> d!1206147 (= (isPrefix!4047 lt!1449266 (++!11362 prefix!494 newSuffix!27)) lt!1449847)))

(declare-fun b!4059267 () Bool)

(assert (=> b!4059267 (= e!2518928 (>= (size!32428 (++!11362 prefix!494 newSuffix!27)) (size!32428 lt!1449266)))))

(assert (= (and d!1206147 (not res!1655608)) b!4059264))

(assert (= (and b!4059264 res!1655605) b!4059265))

(assert (= (and b!4059265 res!1655606) b!4059266))

(assert (= (and d!1206147 (not res!1655607)) b!4059267))

(assert (=> b!4059266 m!4662649))

(assert (=> b!4059266 m!4662599))

(declare-fun m!4664277 () Bool)

(assert (=> b!4059266 m!4664277))

(assert (=> b!4059266 m!4662649))

(assert (=> b!4059266 m!4664277))

(declare-fun m!4664279 () Bool)

(assert (=> b!4059266 m!4664279))

(assert (=> b!4059265 m!4662655))

(assert (=> b!4059265 m!4662599))

(declare-fun m!4664281 () Bool)

(assert (=> b!4059265 m!4664281))

(assert (=> b!4059267 m!4662599))

(declare-fun m!4664283 () Bool)

(assert (=> b!4059267 m!4664283))

(assert (=> b!4059267 m!4662529))

(assert (=> d!1205825 d!1206147))

(assert (=> d!1205825 d!1205601))

(declare-fun d!1206149 () Bool)

(assert (=> d!1206149 (isPrefix!4047 lt!1449266 (++!11362 prefix!494 newSuffix!27))))

(assert (=> d!1206149 true))

(declare-fun _$58!621 () Unit!62757)

(assert (=> d!1206149 (= (choose!24666 lt!1449266 prefix!494 newSuffix!27) _$58!621)))

(declare-fun bs!591980 () Bool)

(assert (= bs!591980 d!1206149))

(assert (=> bs!591980 m!4662599))

(assert (=> bs!591980 m!4662599))

(assert (=> bs!591980 m!4663317))

(assert (=> d!1205825 d!1206149))

(assert (=> d!1205825 d!1205931))

(declare-fun d!1206151 () Bool)

(declare-fun nullableFct!1173 (Regex!11865) Bool)

(assert (=> d!1206151 (= (nullable!4168 (regex!6960 (rule!10050 token!484))) (nullableFct!1173 (regex!6960 (rule!10050 token!484))))))

(declare-fun bs!591981 () Bool)

(assert (= bs!591981 d!1206151))

(declare-fun m!4664285 () Bool)

(assert (=> bs!591981 m!4664285))

(assert (=> b!4058559 d!1206151))

(assert (=> b!4058478 d!1205999))

(declare-fun d!1206153 () Bool)

(assert (=> d!1206153 (= (head!8571 lt!1449259) (h!48793 lt!1449259))))

(assert (=> b!4058478 d!1206153))

(declare-fun b!4059270 () Bool)

(declare-fun res!1655609 () Bool)

(declare-fun e!2518930 () Bool)

(assert (=> b!4059270 (=> (not res!1655609) (not e!2518930))))

(declare-fun lt!1449848 () List!43497)

(assert (=> b!4059270 (= res!1655609 (= (size!32428 lt!1449848) (+ (size!32428 lt!1449266) (size!32428 lt!1449545))))))

(declare-fun b!4059268 () Bool)

(declare-fun e!2518931 () List!43497)

(assert (=> b!4059268 (= e!2518931 lt!1449545)))

(declare-fun b!4059269 () Bool)

(assert (=> b!4059269 (= e!2518931 (Cons!43373 (h!48793 lt!1449266) (++!11362 (t!336350 lt!1449266) lt!1449545)))))

(declare-fun d!1206155 () Bool)

(assert (=> d!1206155 e!2518930))

(declare-fun res!1655610 () Bool)

(assert (=> d!1206155 (=> (not res!1655610) (not e!2518930))))

(assert (=> d!1206155 (= res!1655610 (= (content!6612 lt!1449848) ((_ map or) (content!6612 lt!1449266) (content!6612 lt!1449545))))))

(assert (=> d!1206155 (= lt!1449848 e!2518931)))

(declare-fun c!701033 () Bool)

(assert (=> d!1206155 (= c!701033 ((_ is Nil!43373) lt!1449266))))

(assert (=> d!1206155 (= (++!11362 lt!1449266 lt!1449545) lt!1449848)))

(declare-fun b!4059271 () Bool)

(assert (=> b!4059271 (= e!2518930 (or (not (= lt!1449545 Nil!43373)) (= lt!1449848 lt!1449266)))))

(assert (= (and d!1206155 c!701033) b!4059268))

(assert (= (and d!1206155 (not c!701033)) b!4059269))

(assert (= (and d!1206155 res!1655610) b!4059270))

(assert (= (and b!4059270 res!1655609) b!4059271))

(declare-fun m!4664287 () Bool)

(assert (=> b!4059270 m!4664287))

(assert (=> b!4059270 m!4662529))

(declare-fun m!4664289 () Bool)

(assert (=> b!4059270 m!4664289))

(declare-fun m!4664291 () Bool)

(assert (=> b!4059269 m!4664291))

(declare-fun m!4664293 () Bool)

(assert (=> d!1206155 m!4664293))

(assert (=> d!1206155 m!4662641))

(declare-fun m!4664295 () Bool)

(assert (=> d!1206155 m!4664295))

(assert (=> d!1205929 d!1206155))

(assert (=> d!1205929 d!1205689))

(assert (=> d!1205929 d!1205685))

(assert (=> b!4058554 d!1205999))

(assert (=> d!1205985 d!1205983))

(declare-fun d!1206157 () Bool)

(assert (=> d!1206157 (not (matchR!5818 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) lt!1449266))))

(assert (=> d!1206157 true))

(declare-fun _$56!359 () Unit!62757)

(assert (=> d!1206157 (= (choose!24674 thiss!21717 rules!2999 (rule!10050 token!484) lt!1449266 lt!1449231 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) _$56!359)))

(declare-fun bs!591982 () Bool)

(assert (= bs!591982 d!1206157))

(assert (=> bs!591982 m!4662503))

(assert (=> d!1205985 d!1206157))

(assert (=> d!1205985 d!1205607))

(declare-fun d!1206159 () Bool)

(assert (=> d!1206159 (= (nullable!4168 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (nullableFct!1173 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))))

(declare-fun bs!591983 () Bool)

(assert (= bs!591983 d!1206159))

(declare-fun m!4664297 () Bool)

(assert (=> bs!591983 m!4664297))

(assert (=> b!4058577 d!1206159))

(declare-fun d!1206161 () Bool)

(assert (=> d!1206161 (= (isEmpty!25884 lt!1449359) (not ((_ is Some!9373) lt!1449359)))))

(assert (=> d!1205665 d!1206161))

(declare-fun b!4059274 () Bool)

(declare-fun e!2518932 () Bool)

(assert (=> b!4059274 (= e!2518932 (isPrefix!4047 (tail!6303 lt!1449255) (tail!6303 lt!1449255)))))

(declare-fun b!4059272 () Bool)

(declare-fun e!2518934 () Bool)

(assert (=> b!4059272 (= e!2518934 e!2518932)))

(declare-fun res!1655611 () Bool)

(assert (=> b!4059272 (=> (not res!1655611) (not e!2518932))))

(assert (=> b!4059272 (= res!1655611 (not ((_ is Nil!43373) lt!1449255)))))

(declare-fun b!4059273 () Bool)

(declare-fun res!1655612 () Bool)

(assert (=> b!4059273 (=> (not res!1655612) (not e!2518932))))

(assert (=> b!4059273 (= res!1655612 (= (head!8571 lt!1449255) (head!8571 lt!1449255)))))

(declare-fun d!1206163 () Bool)

(declare-fun e!2518933 () Bool)

(assert (=> d!1206163 e!2518933))

(declare-fun res!1655613 () Bool)

(assert (=> d!1206163 (=> res!1655613 e!2518933)))

(declare-fun lt!1449849 () Bool)

(assert (=> d!1206163 (= res!1655613 (not lt!1449849))))

(assert (=> d!1206163 (= lt!1449849 e!2518934)))

(declare-fun res!1655614 () Bool)

(assert (=> d!1206163 (=> res!1655614 e!2518934)))

(assert (=> d!1206163 (= res!1655614 ((_ is Nil!43373) lt!1449255))))

(assert (=> d!1206163 (= (isPrefix!4047 lt!1449255 lt!1449255) lt!1449849)))

(declare-fun b!4059275 () Bool)

(assert (=> b!4059275 (= e!2518933 (>= (size!32428 lt!1449255) (size!32428 lt!1449255)))))

(assert (= (and d!1206163 (not res!1655614)) b!4059272))

(assert (= (and b!4059272 res!1655611) b!4059273))

(assert (= (and b!4059273 res!1655612) b!4059274))

(assert (= (and d!1206163 (not res!1655613)) b!4059275))

(assert (=> b!4059274 m!4663165))

(assert (=> b!4059274 m!4663165))

(assert (=> b!4059274 m!4663165))

(assert (=> b!4059274 m!4663165))

(declare-fun m!4664299 () Bool)

(assert (=> b!4059274 m!4664299))

(assert (=> b!4059273 m!4663315))

(assert (=> b!4059273 m!4663315))

(assert (=> b!4059275 m!4662901))

(assert (=> b!4059275 m!4662901))

(assert (=> d!1205665 d!1206163))

(declare-fun d!1206165 () Bool)

(assert (=> d!1206165 (isPrefix!4047 lt!1449255 lt!1449255)))

(declare-fun lt!1449850 () Unit!62757)

(assert (=> d!1206165 (= lt!1449850 (choose!24672 lt!1449255 lt!1449255))))

(assert (=> d!1206165 (= (lemmaIsPrefixRefl!2614 lt!1449255 lt!1449255) lt!1449850)))

(declare-fun bs!591984 () Bool)

(assert (= bs!591984 d!1206165))

(assert (=> bs!591984 m!4662883))

(declare-fun m!4664301 () Bool)

(assert (=> bs!591984 m!4664301))

(assert (=> d!1205665 d!1206165))

(declare-fun bs!591985 () Bool)

(declare-fun d!1206167 () Bool)

(assert (= bs!591985 (and d!1206167 d!1206025)))

(declare-fun lambda!127551 () Int)

(assert (=> bs!591985 (= lambda!127551 lambda!127542)))

(assert (=> d!1206167 true))

(declare-fun lt!1449853 () Bool)

(assert (=> d!1206167 (= lt!1449853 (forall!8381 rules!2999 lambda!127551))))

(declare-fun e!2518939 () Bool)

(assert (=> d!1206167 (= lt!1449853 e!2518939)))

(declare-fun res!1655619 () Bool)

(assert (=> d!1206167 (=> res!1655619 e!2518939)))

(assert (=> d!1206167 (= res!1655619 (not ((_ is Cons!43375) rules!2999)))))

(assert (=> d!1206167 (= (rulesValidInductive!2543 thiss!21717 rules!2999) lt!1449853)))

(declare-fun b!4059280 () Bool)

(declare-fun e!2518940 () Bool)

(assert (=> b!4059280 (= e!2518939 e!2518940)))

(declare-fun res!1655620 () Bool)

(assert (=> b!4059280 (=> (not res!1655620) (not e!2518940))))

(assert (=> b!4059280 (= res!1655620 (ruleValid!2890 thiss!21717 (h!48795 rules!2999)))))

(declare-fun b!4059281 () Bool)

(assert (=> b!4059281 (= e!2518940 (rulesValidInductive!2543 thiss!21717 (t!336352 rules!2999)))))

(assert (= (and d!1206167 (not res!1655619)) b!4059280))

(assert (= (and b!4059280 res!1655620) b!4059281))

(declare-fun m!4664303 () Bool)

(assert (=> d!1206167 m!4664303))

(assert (=> b!4059280 m!4664047))

(declare-fun m!4664305 () Bool)

(assert (=> b!4059281 m!4664305))

(assert (=> d!1205665 d!1206167))

(assert (=> b!4058826 d!1206021))

(declare-fun d!1206169 () Bool)

(declare-fun lt!1449854 () Int)

(assert (=> d!1206169 (>= lt!1449854 0)))

(declare-fun e!2518941 () Int)

(assert (=> d!1206169 (= lt!1449854 e!2518941)))

(declare-fun c!701034 () Bool)

(assert (=> d!1206169 (= c!701034 ((_ is Nil!43373) (originalCharacters!7560 (_1!24351 (get!14226 lt!1449563)))))))

(assert (=> d!1206169 (= (size!32428 (originalCharacters!7560 (_1!24351 (get!14226 lt!1449563)))) lt!1449854)))

(declare-fun b!4059282 () Bool)

(assert (=> b!4059282 (= e!2518941 0)))

(declare-fun b!4059283 () Bool)

(assert (=> b!4059283 (= e!2518941 (+ 1 (size!32428 (t!336350 (originalCharacters!7560 (_1!24351 (get!14226 lt!1449563)))))))))

(assert (= (and d!1206169 c!701034) b!4059282))

(assert (= (and d!1206169 (not c!701034)) b!4059283))

(declare-fun m!4664307 () Bool)

(assert (=> b!4059283 m!4664307))

(assert (=> b!4058826 d!1206169))

(declare-fun b!4059286 () Bool)

(declare-fun res!1655621 () Bool)

(declare-fun e!2518942 () Bool)

(assert (=> b!4059286 (=> (not res!1655621) (not e!2518942))))

(declare-fun lt!1449855 () List!43497)

(assert (=> b!4059286 (= res!1655621 (= (size!32428 lt!1449855) (+ (size!32428 (t!336350 lt!1449249)) (size!32428 lt!1449225))))))

(declare-fun b!4059284 () Bool)

(declare-fun e!2518943 () List!43497)

(assert (=> b!4059284 (= e!2518943 lt!1449225)))

(declare-fun b!4059285 () Bool)

(assert (=> b!4059285 (= e!2518943 (Cons!43373 (h!48793 (t!336350 lt!1449249)) (++!11362 (t!336350 (t!336350 lt!1449249)) lt!1449225)))))

(declare-fun d!1206171 () Bool)

(assert (=> d!1206171 e!2518942))

(declare-fun res!1655622 () Bool)

(assert (=> d!1206171 (=> (not res!1655622) (not e!2518942))))

(assert (=> d!1206171 (= res!1655622 (= (content!6612 lt!1449855) ((_ map or) (content!6612 (t!336350 lt!1449249)) (content!6612 lt!1449225))))))

(assert (=> d!1206171 (= lt!1449855 e!2518943)))

(declare-fun c!701035 () Bool)

(assert (=> d!1206171 (= c!701035 ((_ is Nil!43373) (t!336350 lt!1449249)))))

(assert (=> d!1206171 (= (++!11362 (t!336350 lt!1449249) lt!1449225) lt!1449855)))

(declare-fun b!4059287 () Bool)

(assert (=> b!4059287 (= e!2518942 (or (not (= lt!1449225 Nil!43373)) (= lt!1449855 (t!336350 lt!1449249))))))

(assert (= (and d!1206171 c!701035) b!4059284))

(assert (= (and d!1206171 (not c!701035)) b!4059285))

(assert (= (and d!1206171 res!1655622) b!4059286))

(assert (= (and b!4059286 res!1655621) b!4059287))

(declare-fun m!4664309 () Bool)

(assert (=> b!4059286 m!4664309))

(assert (=> b!4059286 m!4663619))

(assert (=> b!4059286 m!4663153))

(declare-fun m!4664311 () Bool)

(assert (=> b!4059285 m!4664311))

(declare-fun m!4664313 () Bool)

(assert (=> d!1206171 m!4664313))

(declare-fun m!4664315 () Bool)

(assert (=> d!1206171 m!4664315))

(assert (=> d!1206171 m!4663161))

(assert (=> b!4058468 d!1206171))

(declare-fun d!1206173 () Bool)

(assert (=> d!1206173 (= (isDefined!7122 lt!1449345) (not (isEmpty!25884 lt!1449345)))))

(declare-fun bs!591986 () Bool)

(assert (= bs!591986 d!1206173))

(assert (=> bs!591986 m!4662807))

(assert (=> b!4058265 d!1206173))

(declare-fun d!1206175 () Bool)

(declare-fun lt!1449858 () Bool)

(declare-fun content!6615 (List!43499) (InoxSet Rule!13720))

(assert (=> d!1206175 (= lt!1449858 (select (content!6615 rules!2999) (rule!10050 (_1!24351 (get!14226 lt!1449359)))))))

(declare-fun e!2518949 () Bool)

(assert (=> d!1206175 (= lt!1449858 e!2518949)))

(declare-fun res!1655627 () Bool)

(assert (=> d!1206175 (=> (not res!1655627) (not e!2518949))))

(assert (=> d!1206175 (= res!1655627 ((_ is Cons!43375) rules!2999))))

(assert (=> d!1206175 (= (contains!8628 rules!2999 (rule!10050 (_1!24351 (get!14226 lt!1449359)))) lt!1449858)))

(declare-fun b!4059292 () Bool)

(declare-fun e!2518948 () Bool)

(assert (=> b!4059292 (= e!2518949 e!2518948)))

(declare-fun res!1655628 () Bool)

(assert (=> b!4059292 (=> res!1655628 e!2518948)))

(assert (=> b!4059292 (= res!1655628 (= (h!48795 rules!2999) (rule!10050 (_1!24351 (get!14226 lt!1449359)))))))

(declare-fun b!4059293 () Bool)

(assert (=> b!4059293 (= e!2518948 (contains!8628 (t!336352 rules!2999) (rule!10050 (_1!24351 (get!14226 lt!1449359)))))))

(assert (= (and d!1206175 res!1655627) b!4059292))

(assert (= (and b!4059292 (not res!1655628)) b!4059293))

(declare-fun m!4664317 () Bool)

(assert (=> d!1206175 m!4664317))

(declare-fun m!4664319 () Bool)

(assert (=> d!1206175 m!4664319))

(declare-fun m!4664321 () Bool)

(assert (=> b!4059293 m!4664321))

(assert (=> b!4058313 d!1206175))

(assert (=> b!4058313 d!1206059))

(assert (=> bm!288063 d!1206003))

(declare-fun d!1206177 () Bool)

(declare-fun lt!1449859 () Int)

(assert (=> d!1206177 (>= lt!1449859 0)))

(declare-fun e!2518950 () Int)

(assert (=> d!1206177 (= lt!1449859 e!2518950)))

(declare-fun c!701036 () Bool)

(assert (=> d!1206177 (= c!701036 ((_ is Nil!43373) lt!1449447))))

(assert (=> d!1206177 (= (size!32428 lt!1449447) lt!1449859)))

(declare-fun b!4059294 () Bool)

(assert (=> b!4059294 (= e!2518950 0)))

(declare-fun b!4059295 () Bool)

(assert (=> b!4059295 (= e!2518950 (+ 1 (size!32428 (t!336350 lt!1449447))))))

(assert (= (and d!1206177 c!701036) b!4059294))

(assert (= (and d!1206177 (not c!701036)) b!4059295))

(declare-fun m!4664323 () Bool)

(assert (=> b!4059295 m!4664323))

(assert (=> b!4058483 d!1206177))

(assert (=> b!4058483 d!1205685))

(declare-fun d!1206179 () Bool)

(declare-fun lt!1449860 () Int)

(assert (=> d!1206179 (>= lt!1449860 0)))

(declare-fun e!2518951 () Int)

(assert (=> d!1206179 (= lt!1449860 e!2518951)))

(declare-fun c!701037 () Bool)

(assert (=> d!1206179 (= c!701037 ((_ is Nil!43373) lt!1449267))))

(assert (=> d!1206179 (= (size!32428 lt!1449267) lt!1449860)))

(declare-fun b!4059296 () Bool)

(assert (=> b!4059296 (= e!2518951 0)))

(declare-fun b!4059297 () Bool)

(assert (=> b!4059297 (= e!2518951 (+ 1 (size!32428 (t!336350 lt!1449267))))))

(assert (= (and d!1206179 c!701037) b!4059296))

(assert (= (and d!1206179 (not c!701037)) b!4059297))

(declare-fun m!4664325 () Bool)

(assert (=> b!4059297 m!4664325))

(assert (=> b!4058483 d!1206179))

(declare-fun d!1206181 () Bool)

(assert (=> d!1206181 (= (isEmpty!25885 (_1!24352 (findLongestMatchInner!1404 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) Nil!43373 (size!32428 Nil!43373) lt!1449255 lt!1449255 (size!32428 lt!1449255)))) ((_ is Nil!43373) (_1!24352 (findLongestMatchInner!1404 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) Nil!43373 (size!32428 Nil!43373) lt!1449255 lt!1449255 (size!32428 lt!1449255)))))))

(assert (=> b!4058708 d!1206181))

(declare-fun d!1206183 () Bool)

(assert (=> d!1206183 (= (apply!10149 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) (seqFromList!5177 (_1!24352 lt!1449535))) (dynLambda!18426 (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (seqFromList!5177 (_1!24352 lt!1449535))))))

(declare-fun b_lambda!118611 () Bool)

(assert (=> (not b_lambda!118611) (not d!1206183)))

(declare-fun tb!244153 () Bool)

(declare-fun t!336428 () Bool)

(assert (=> (and b!4058071 (= (toValue!9516 (transformation!6960 (h!48795 rules!2999))) (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))) t!336428) tb!244153))

(declare-fun result!295866 () Bool)

(assert (=> tb!244153 (= result!295866 (inv!21 (dynLambda!18426 (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (seqFromList!5177 (_1!24352 lt!1449535)))))))

(declare-fun m!4664327 () Bool)

(assert (=> tb!244153 m!4664327))

(assert (=> d!1206183 t!336428))

(declare-fun b_and!312083 () Bool)

(assert (= b_and!312047 (and (=> t!336428 result!295866) b_and!312083)))

(declare-fun tb!244155 () Bool)

(declare-fun t!336430 () Bool)

(assert (=> (and b!4058069 (= (toValue!9516 (transformation!6960 (rule!10050 token!484))) (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))) t!336430) tb!244155))

(declare-fun result!295868 () Bool)

(assert (= result!295868 result!295866))

(assert (=> d!1206183 t!336430))

(declare-fun b_and!312085 () Bool)

(assert (= b_and!312049 (and (=> t!336430 result!295868) b_and!312085)))

(declare-fun t!336432 () Bool)

(declare-fun tb!244157 () Bool)

(assert (=> (and b!4058893 (= (toValue!9516 (transformation!6960 (h!48795 (t!336352 rules!2999)))) (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))) t!336432) tb!244157))

(declare-fun result!295870 () Bool)

(assert (= result!295870 result!295866))

(assert (=> d!1206183 t!336432))

(declare-fun b_and!312087 () Bool)

(assert (= b_and!312055 (and (=> t!336432 result!295870) b_and!312087)))

(assert (=> d!1206183 m!4663605))

(declare-fun m!4664329 () Bool)

(assert (=> d!1206183 m!4664329))

(assert (=> b!4058708 d!1206183))

(declare-fun d!1206185 () Bool)

(declare-fun e!2518955 () Bool)

(assert (=> d!1206185 e!2518955))

(declare-fun res!1655631 () Bool)

(assert (=> d!1206185 (=> res!1655631 e!2518955)))

(assert (=> d!1206185 (= res!1655631 (isEmpty!25885 (_1!24352 (findLongestMatchInner!1404 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) Nil!43373 (size!32428 Nil!43373) lt!1449255 lt!1449255 (size!32428 lt!1449255)))))))

(declare-fun lt!1449863 () Unit!62757)

(declare-fun choose!24675 (Regex!11865 List!43497) Unit!62757)

(assert (=> d!1206185 (= lt!1449863 (choose!24675 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) lt!1449255))))

(assert (=> d!1206185 (validRegex!5368 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))))

(assert (=> d!1206185 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1377 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) lt!1449255) lt!1449863)))

(declare-fun b!4059300 () Bool)

(assert (=> b!4059300 (= e!2518955 (matchR!5818 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) (_1!24352 (findLongestMatchInner!1404 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) Nil!43373 (size!32428 Nil!43373) lt!1449255 lt!1449255 (size!32428 lt!1449255)))))))

(assert (= (and d!1206185 (not res!1655631)) b!4059300))

(assert (=> d!1206185 m!4662901))

(declare-fun m!4664331 () Bool)

(assert (=> d!1206185 m!4664331))

(assert (=> d!1206185 m!4663593))

(assert (=> d!1206185 m!4662901))

(assert (=> d!1206185 m!4663595))

(assert (=> d!1206185 m!4663299))

(assert (=> d!1206185 m!4663603))

(assert (=> d!1206185 m!4663593))

(assert (=> b!4059300 m!4663593))

(assert (=> b!4059300 m!4662901))

(assert (=> b!4059300 m!4663593))

(assert (=> b!4059300 m!4662901))

(assert (=> b!4059300 m!4663595))

(assert (=> b!4059300 m!4663597))

(assert (=> b!4058708 d!1206185))

(assert (=> b!4058708 d!1206103))

(declare-fun d!1206187 () Bool)

(declare-fun lt!1449866 () Int)

(assert (=> d!1206187 (= lt!1449866 (size!32428 (list!16164 (seqFromList!5177 (_1!24352 lt!1449535)))))))

(declare-fun size!32431 (Conc!13171) Int)

(assert (=> d!1206187 (= lt!1449866 (size!32431 (c!700780 (seqFromList!5177 (_1!24352 lt!1449535)))))))

(assert (=> d!1206187 (= (size!32429 (seqFromList!5177 (_1!24352 lt!1449535))) lt!1449866)))

(declare-fun bs!591987 () Bool)

(assert (= bs!591987 d!1206187))

(assert (=> bs!591987 m!4663605))

(declare-fun m!4664333 () Bool)

(assert (=> bs!591987 m!4664333))

(assert (=> bs!591987 m!4664333))

(declare-fun m!4664335 () Bool)

(assert (=> bs!591987 m!4664335))

(declare-fun m!4664337 () Bool)

(assert (=> bs!591987 m!4664337))

(assert (=> b!4058708 d!1206187))

(declare-fun bs!591988 () Bool)

(declare-fun d!1206189 () Bool)

(assert (= bs!591988 (and d!1206189 d!1206135)))

(declare-fun lambda!127554 () Int)

(assert (=> bs!591988 (= (and (= (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (toChars!9375 (transformation!6960 (rule!10050 token!484)))) (= (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (toValue!9516 (transformation!6960 (rule!10050 token!484))))) (= lambda!127554 lambda!127548))))

(declare-fun b!4059305 () Bool)

(declare-fun e!2518958 () Bool)

(assert (=> b!4059305 (= e!2518958 true)))

(assert (=> d!1206189 e!2518958))

(assert (= d!1206189 b!4059305))

(assert (=> b!4059305 (< (dynLambda!18427 order!22703 (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))) (dynLambda!18430 order!22709 lambda!127554))))

(assert (=> b!4059305 (< (dynLambda!18429 order!22707 (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))) (dynLambda!18430 order!22709 lambda!127554))))

(assert (=> d!1206189 (= (list!16164 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (dynLambda!18426 (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (seqFromList!5177 (_1!24352 lt!1449535))))) (list!16164 (seqFromList!5177 (_1!24352 lt!1449535))))))

(declare-fun lt!1449869 () Unit!62757)

(declare-fun ForallOf!832 (Int BalanceConc!25936) Unit!62757)

(assert (=> d!1206189 (= lt!1449869 (ForallOf!832 lambda!127554 (seqFromList!5177 (_1!24352 lt!1449535))))))

(assert (=> d!1206189 (= (lemmaSemiInverse!1932 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) (seqFromList!5177 (_1!24352 lt!1449535))) lt!1449869)))

(declare-fun b_lambda!118613 () Bool)

(assert (=> (not b_lambda!118613) (not d!1206189)))

(declare-fun tb!244159 () Bool)

(declare-fun t!336434 () Bool)

(assert (=> (and b!4058071 (= (toChars!9375 (transformation!6960 (h!48795 rules!2999))) (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))) t!336434) tb!244159))

(declare-fun tp!1229833 () Bool)

(declare-fun b!4059306 () Bool)

(declare-fun e!2518959 () Bool)

(assert (=> b!4059306 (= e!2518959 (and (inv!57985 (c!700780 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (dynLambda!18426 (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (seqFromList!5177 (_1!24352 lt!1449535)))))) tp!1229833))))

(declare-fun result!295872 () Bool)

(assert (=> tb!244159 (= result!295872 (and (inv!57986 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (dynLambda!18426 (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (seqFromList!5177 (_1!24352 lt!1449535))))) e!2518959))))

(assert (= tb!244159 b!4059306))

(declare-fun m!4664339 () Bool)

(assert (=> b!4059306 m!4664339))

(declare-fun m!4664341 () Bool)

(assert (=> tb!244159 m!4664341))

(assert (=> d!1206189 t!336434))

(declare-fun b_and!312089 () Bool)

(assert (= b_and!312077 (and (=> t!336434 result!295872) b_and!312089)))

(declare-fun tb!244161 () Bool)

(declare-fun t!336436 () Bool)

(assert (=> (and b!4058069 (= (toChars!9375 (transformation!6960 (rule!10050 token!484))) (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))) t!336436) tb!244161))

(declare-fun result!295874 () Bool)

(assert (= result!295874 result!295872))

(assert (=> d!1206189 t!336436))

(declare-fun b_and!312091 () Bool)

(assert (= b_and!312079 (and (=> t!336436 result!295874) b_and!312091)))

(declare-fun t!336438 () Bool)

(declare-fun tb!244163 () Bool)

(assert (=> (and b!4058893 (= (toChars!9375 (transformation!6960 (h!48795 (t!336352 rules!2999)))) (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))) t!336438) tb!244163))

(declare-fun result!295876 () Bool)

(assert (= result!295876 result!295872))

(assert (=> d!1206189 t!336438))

(declare-fun b_and!312093 () Bool)

(assert (= b_and!312081 (and (=> t!336438 result!295876) b_and!312093)))

(declare-fun b_lambda!118615 () Bool)

(assert (=> (not b_lambda!118615) (not d!1206189)))

(assert (=> d!1206189 t!336428))

(declare-fun b_and!312095 () Bool)

(assert (= b_and!312083 (and (=> t!336428 result!295866) b_and!312095)))

(assert (=> d!1206189 t!336430))

(declare-fun b_and!312097 () Bool)

(assert (= b_and!312085 (and (=> t!336430 result!295868) b_and!312097)))

(assert (=> d!1206189 t!336432))

(declare-fun b_and!312099 () Bool)

(assert (= b_and!312087 (and (=> t!336432 result!295870) b_and!312099)))

(assert (=> d!1206189 m!4663605))

(declare-fun m!4664343 () Bool)

(assert (=> d!1206189 m!4664343))

(assert (=> d!1206189 m!4663605))

(assert (=> d!1206189 m!4664329))

(assert (=> d!1206189 m!4664329))

(declare-fun m!4664345 () Bool)

(assert (=> d!1206189 m!4664345))

(assert (=> d!1206189 m!4663605))

(assert (=> d!1206189 m!4664333))

(assert (=> d!1206189 m!4664345))

(declare-fun m!4664347 () Bool)

(assert (=> d!1206189 m!4664347))

(assert (=> b!4058708 d!1206189))

(assert (=> b!4058708 d!1205989))

(declare-fun d!1206191 () Bool)

(assert (=> d!1206191 (= (seqFromList!5177 (_1!24352 lt!1449535)) (fromListB!2362 (_1!24352 lt!1449535)))))

(declare-fun bs!591989 () Bool)

(assert (= bs!591989 d!1206191))

(declare-fun m!4664349 () Bool)

(assert (=> bs!591989 m!4664349))

(assert (=> b!4058708 d!1206191))

(assert (=> b!4058708 d!1206097))

(declare-fun b!4059309 () Bool)

(declare-fun e!2518960 () Bool)

(assert (=> b!4059309 (= e!2518960 (isPrefix!4047 (tail!6303 (tail!6303 lt!1449266)) (tail!6303 (tail!6303 lt!1449255))))))

(declare-fun b!4059307 () Bool)

(declare-fun e!2518962 () Bool)

(assert (=> b!4059307 (= e!2518962 e!2518960)))

(declare-fun res!1655632 () Bool)

(assert (=> b!4059307 (=> (not res!1655632) (not e!2518960))))

(assert (=> b!4059307 (= res!1655632 (not ((_ is Nil!43373) (tail!6303 lt!1449255))))))

(declare-fun b!4059308 () Bool)

(declare-fun res!1655633 () Bool)

(assert (=> b!4059308 (=> (not res!1655633) (not e!2518960))))

(assert (=> b!4059308 (= res!1655633 (= (head!8571 (tail!6303 lt!1449266)) (head!8571 (tail!6303 lt!1449255))))))

(declare-fun d!1206193 () Bool)

(declare-fun e!2518961 () Bool)

(assert (=> d!1206193 e!2518961))

(declare-fun res!1655634 () Bool)

(assert (=> d!1206193 (=> res!1655634 e!2518961)))

(declare-fun lt!1449870 () Bool)

(assert (=> d!1206193 (= res!1655634 (not lt!1449870))))

(assert (=> d!1206193 (= lt!1449870 e!2518962)))

(declare-fun res!1655635 () Bool)

(assert (=> d!1206193 (=> res!1655635 e!2518962)))

(assert (=> d!1206193 (= res!1655635 ((_ is Nil!43373) (tail!6303 lt!1449266)))))

(assert (=> d!1206193 (= (isPrefix!4047 (tail!6303 lt!1449266) (tail!6303 lt!1449255)) lt!1449870)))

(declare-fun b!4059310 () Bool)

(assert (=> b!4059310 (= e!2518961 (>= (size!32428 (tail!6303 lt!1449255)) (size!32428 (tail!6303 lt!1449266))))))

(assert (= (and d!1206193 (not res!1655635)) b!4059307))

(assert (= (and b!4059307 res!1655632) b!4059308))

(assert (= (and b!4059308 res!1655633) b!4059309))

(assert (= (and d!1206193 (not res!1655634)) b!4059310))

(assert (=> b!4059309 m!4662649))

(declare-fun m!4664351 () Bool)

(assert (=> b!4059309 m!4664351))

(assert (=> b!4059309 m!4663165))

(declare-fun m!4664353 () Bool)

(assert (=> b!4059309 m!4664353))

(assert (=> b!4059309 m!4664351))

(assert (=> b!4059309 m!4664353))

(declare-fun m!4664355 () Bool)

(assert (=> b!4059309 m!4664355))

(assert (=> b!4059308 m!4662649))

(declare-fun m!4664357 () Bool)

(assert (=> b!4059308 m!4664357))

(assert (=> b!4059308 m!4663165))

(declare-fun m!4664359 () Bool)

(assert (=> b!4059308 m!4664359))

(assert (=> b!4059310 m!4663165))

(declare-fun m!4664361 () Bool)

(assert (=> b!4059310 m!4664361))

(assert (=> b!4059310 m!4662649))

(declare-fun m!4664363 () Bool)

(assert (=> b!4059310 m!4664363))

(assert (=> b!4058575 d!1206193))

(assert (=> b!4058575 d!1205993))

(declare-fun d!1206195 () Bool)

(assert (=> d!1206195 (= (tail!6303 lt!1449255) (t!336350 lt!1449255))))

(assert (=> b!4058575 d!1206195))

(assert (=> b!4058465 d!1206151))

(assert (=> b!4058545 d!1206159))

(declare-fun d!1206197 () Bool)

(declare-fun lt!1449871 () Int)

(assert (=> d!1206197 (>= lt!1449871 0)))

(declare-fun e!2518963 () Int)

(assert (=> d!1206197 (= lt!1449871 e!2518963)))

(declare-fun c!701039 () Bool)

(assert (=> d!1206197 (= c!701039 ((_ is Nil!43373) lt!1449544))))

(assert (=> d!1206197 (= (size!32428 lt!1449544) lt!1449871)))

(declare-fun b!4059311 () Bool)

(assert (=> b!4059311 (= e!2518963 0)))

(declare-fun b!4059312 () Bool)

(assert (=> b!4059312 (= e!2518963 (+ 1 (size!32428 (t!336350 lt!1449544))))))

(assert (= (and d!1206197 c!701039) b!4059311))

(assert (= (and d!1206197 (not c!701039)) b!4059312))

(declare-fun m!4664365 () Bool)

(assert (=> b!4059312 m!4664365))

(assert (=> b!4058773 d!1206197))

(assert (=> b!4058773 d!1205685))

(declare-fun d!1206199 () Bool)

(declare-fun lt!1449872 () Int)

(assert (=> d!1206199 (>= lt!1449872 0)))

(declare-fun e!2518964 () Int)

(assert (=> d!1206199 (= lt!1449872 e!2518964)))

(declare-fun c!701040 () Bool)

(assert (=> d!1206199 (= c!701040 ((_ is Nil!43373) lt!1449238))))

(assert (=> d!1206199 (= (size!32428 lt!1449238) lt!1449872)))

(declare-fun b!4059313 () Bool)

(assert (=> b!4059313 (= e!2518964 0)))

(declare-fun b!4059314 () Bool)

(assert (=> b!4059314 (= e!2518964 (+ 1 (size!32428 (t!336350 lt!1449238))))))

(assert (= (and d!1206199 c!701040) b!4059313))

(assert (= (and d!1206199 (not c!701040)) b!4059314))

(declare-fun m!4664367 () Bool)

(assert (=> b!4059314 m!4664367))

(assert (=> b!4058773 d!1206199))

(declare-fun d!1206201 () Bool)

(declare-fun lt!1449873 () Int)

(assert (=> d!1206201 (>= lt!1449873 0)))

(declare-fun e!2518965 () Int)

(assert (=> d!1206201 (= lt!1449873 e!2518965)))

(declare-fun c!701041 () Bool)

(assert (=> d!1206201 (= c!701041 ((_ is Nil!43373) (_2!24351 (get!14226 lt!1449345))))))

(assert (=> d!1206201 (= (size!32428 (_2!24351 (get!14226 lt!1449345))) lt!1449873)))

(declare-fun b!4059315 () Bool)

(assert (=> b!4059315 (= e!2518965 0)))

(declare-fun b!4059316 () Bool)

(assert (=> b!4059316 (= e!2518965 (+ 1 (size!32428 (t!336350 (_2!24351 (get!14226 lt!1449345))))))))

(assert (= (and d!1206201 c!701041) b!4059315))

(assert (= (and d!1206201 (not c!701041)) b!4059316))

(declare-fun m!4664369 () Bool)

(assert (=> b!4059316 m!4664369))

(assert (=> b!4058271 d!1206201))

(assert (=> b!4058271 d!1206129))

(assert (=> b!4058271 d!1206023))

(declare-fun b!4059319 () Bool)

(declare-fun e!2518966 () Bool)

(assert (=> b!4059319 (= e!2518966 (isPrefix!4047 (tail!6303 lt!1449249) (tail!6303 (++!11362 lt!1449249 lt!1449225))))))

(declare-fun b!4059317 () Bool)

(declare-fun e!2518968 () Bool)

(assert (=> b!4059317 (= e!2518968 e!2518966)))

(declare-fun res!1655636 () Bool)

(assert (=> b!4059317 (=> (not res!1655636) (not e!2518966))))

(assert (=> b!4059317 (= res!1655636 (not ((_ is Nil!43373) (++!11362 lt!1449249 lt!1449225))))))

(declare-fun b!4059318 () Bool)

(declare-fun res!1655637 () Bool)

(assert (=> b!4059318 (=> (not res!1655637) (not e!2518966))))

(assert (=> b!4059318 (= res!1655637 (= (head!8571 lt!1449249) (head!8571 (++!11362 lt!1449249 lt!1449225))))))

(declare-fun d!1206203 () Bool)

(declare-fun e!2518967 () Bool)

(assert (=> d!1206203 e!2518967))

(declare-fun res!1655638 () Bool)

(assert (=> d!1206203 (=> res!1655638 e!2518967)))

(declare-fun lt!1449874 () Bool)

(assert (=> d!1206203 (= res!1655638 (not lt!1449874))))

(assert (=> d!1206203 (= lt!1449874 e!2518968)))

(declare-fun res!1655639 () Bool)

(assert (=> d!1206203 (=> res!1655639 e!2518968)))

(assert (=> d!1206203 (= res!1655639 ((_ is Nil!43373) lt!1449249))))

(assert (=> d!1206203 (= (isPrefix!4047 lt!1449249 (++!11362 lt!1449249 lt!1449225)) lt!1449874)))

(declare-fun b!4059320 () Bool)

(assert (=> b!4059320 (= e!2518967 (>= (size!32428 (++!11362 lt!1449249 lt!1449225)) (size!32428 lt!1449249)))))

(assert (= (and d!1206203 (not res!1655639)) b!4059317))

(assert (= (and b!4059317 res!1655636) b!4059318))

(assert (= (and b!4059318 res!1655637) b!4059319))

(assert (= (and d!1206203 (not res!1655638)) b!4059320))

(assert (=> b!4059319 m!4663171))

(assert (=> b!4059319 m!4662539))

(declare-fun m!4664371 () Bool)

(assert (=> b!4059319 m!4664371))

(assert (=> b!4059319 m!4663171))

(assert (=> b!4059319 m!4664371))

(declare-fun m!4664373 () Bool)

(assert (=> b!4059319 m!4664373))

(assert (=> b!4059318 m!4663177))

(assert (=> b!4059318 m!4662539))

(declare-fun m!4664375 () Bool)

(assert (=> b!4059318 m!4664375))

(assert (=> b!4059320 m!4662539))

(declare-fun m!4664377 () Bool)

(assert (=> b!4059320 m!4664377))

(assert (=> b!4059320 m!4662577))

(assert (=> d!1205783 d!1206203))

(assert (=> d!1205783 d!1205775))

(declare-fun d!1206205 () Bool)

(assert (=> d!1206205 (isPrefix!4047 lt!1449249 (++!11362 lt!1449249 lt!1449225))))

(assert (=> d!1206205 true))

(declare-fun _$46!1827 () Unit!62757)

(assert (=> d!1206205 (= (choose!24655 lt!1449249 lt!1449225) _$46!1827)))

(declare-fun bs!591990 () Bool)

(assert (= bs!591990 d!1206205))

(assert (=> bs!591990 m!4662539))

(assert (=> bs!591990 m!4662539))

(assert (=> bs!591990 m!4663183))

(assert (=> d!1205783 d!1206205))

(declare-fun e!2518969 () Bool)

(declare-fun b!4059323 () Bool)

(assert (=> b!4059323 (= e!2518969 (isPrefix!4047 (tail!6303 lt!1449249) (tail!6303 (++!11362 lt!1449255 lt!1449227))))))

(declare-fun b!4059321 () Bool)

(declare-fun e!2518971 () Bool)

(assert (=> b!4059321 (= e!2518971 e!2518969)))

(declare-fun res!1655640 () Bool)

(assert (=> b!4059321 (=> (not res!1655640) (not e!2518969))))

(assert (=> b!4059321 (= res!1655640 (not ((_ is Nil!43373) (++!11362 lt!1449255 lt!1449227))))))

(declare-fun b!4059322 () Bool)

(declare-fun res!1655641 () Bool)

(assert (=> b!4059322 (=> (not res!1655641) (not e!2518969))))

(assert (=> b!4059322 (= res!1655641 (= (head!8571 lt!1449249) (head!8571 (++!11362 lt!1449255 lt!1449227))))))

(declare-fun d!1206207 () Bool)

(declare-fun e!2518970 () Bool)

(assert (=> d!1206207 e!2518970))

(declare-fun res!1655642 () Bool)

(assert (=> d!1206207 (=> res!1655642 e!2518970)))

(declare-fun lt!1449875 () Bool)

(assert (=> d!1206207 (= res!1655642 (not lt!1449875))))

(assert (=> d!1206207 (= lt!1449875 e!2518971)))

(declare-fun res!1655643 () Bool)

(assert (=> d!1206207 (=> res!1655643 e!2518971)))

(assert (=> d!1206207 (= res!1655643 ((_ is Nil!43373) lt!1449249))))

(assert (=> d!1206207 (= (isPrefix!4047 lt!1449249 (++!11362 lt!1449255 lt!1449227)) lt!1449875)))

(declare-fun b!4059324 () Bool)

(assert (=> b!4059324 (= e!2518970 (>= (size!32428 (++!11362 lt!1449255 lt!1449227)) (size!32428 lt!1449249)))))

(assert (= (and d!1206207 (not res!1655643)) b!4059321))

(assert (= (and b!4059321 res!1655640) b!4059322))

(assert (= (and b!4059322 res!1655641) b!4059323))

(assert (= (and d!1206207 (not res!1655642)) b!4059324))

(assert (=> b!4059323 m!4663171))

(assert (=> b!4059323 m!4662471))

(declare-fun m!4664379 () Bool)

(assert (=> b!4059323 m!4664379))

(assert (=> b!4059323 m!4663171))

(assert (=> b!4059323 m!4664379))

(declare-fun m!4664381 () Bool)

(assert (=> b!4059323 m!4664381))

(assert (=> b!4059322 m!4663177))

(assert (=> b!4059322 m!4662471))

(declare-fun m!4664383 () Bool)

(assert (=> b!4059322 m!4664383))

(assert (=> b!4059324 m!4662471))

(declare-fun m!4664385 () Bool)

(assert (=> b!4059324 m!4664385))

(assert (=> b!4059324 m!4662577))

(assert (=> d!1205955 d!1206207))

(assert (=> d!1205955 d!1205795))

(declare-fun d!1206209 () Bool)

(assert (=> d!1206209 (isPrefix!4047 lt!1449249 (++!11362 lt!1449255 lt!1449227))))

(assert (=> d!1206209 true))

(declare-fun _$58!622 () Unit!62757)

(assert (=> d!1206209 (= (choose!24666 lt!1449249 lt!1449255 lt!1449227) _$58!622)))

(declare-fun bs!591991 () Bool)

(assert (= bs!591991 d!1206209))

(assert (=> bs!591991 m!4662471))

(assert (=> bs!591991 m!4662471))

(assert (=> bs!591991 m!4663709))

(assert (=> d!1205955 d!1206209))

(assert (=> d!1205955 d!1205935))

(assert (=> b!4058714 d!1206143))

(declare-fun d!1206211 () Bool)

(declare-fun lt!1449876 () Int)

(assert (=> d!1206211 (>= lt!1449876 0)))

(declare-fun e!2518972 () Int)

(assert (=> d!1206211 (= lt!1449876 e!2518972)))

(declare-fun c!701042 () Bool)

(assert (=> d!1206211 (= c!701042 ((_ is Nil!43373) (originalCharacters!7560 (_1!24351 (get!14226 lt!1449534)))))))

(assert (=> d!1206211 (= (size!32428 (originalCharacters!7560 (_1!24351 (get!14226 lt!1449534)))) lt!1449876)))

(declare-fun b!4059325 () Bool)

(assert (=> b!4059325 (= e!2518972 0)))

(declare-fun b!4059326 () Bool)

(assert (=> b!4059326 (= e!2518972 (+ 1 (size!32428 (t!336350 (originalCharacters!7560 (_1!24351 (get!14226 lt!1449534)))))))))

(assert (= (and d!1206211 c!701042) b!4059325))

(assert (= (and d!1206211 (not c!701042)) b!4059326))

(declare-fun m!4664387 () Bool)

(assert (=> b!4059326 m!4664387))

(assert (=> b!4058714 d!1206211))

(declare-fun b!4059329 () Bool)

(declare-fun res!1655644 () Bool)

(declare-fun e!2518973 () Bool)

(assert (=> b!4059329 (=> (not res!1655644) (not e!2518973))))

(declare-fun lt!1449877 () List!43497)

(assert (=> b!4059329 (= res!1655644 (= (size!32428 lt!1449877) (+ (size!32428 lt!1449266) (size!32428 lt!1449552))))))

(declare-fun b!4059327 () Bool)

(declare-fun e!2518974 () List!43497)

(assert (=> b!4059327 (= e!2518974 lt!1449552)))

(declare-fun b!4059328 () Bool)

(assert (=> b!4059328 (= e!2518974 (Cons!43373 (h!48793 lt!1449266) (++!11362 (t!336350 lt!1449266) lt!1449552)))))

(declare-fun d!1206213 () Bool)

(assert (=> d!1206213 e!2518973))

(declare-fun res!1655645 () Bool)

(assert (=> d!1206213 (=> (not res!1655645) (not e!2518973))))

(assert (=> d!1206213 (= res!1655645 (= (content!6612 lt!1449877) ((_ map or) (content!6612 lt!1449266) (content!6612 lt!1449552))))))

(assert (=> d!1206213 (= lt!1449877 e!2518974)))

(declare-fun c!701043 () Bool)

(assert (=> d!1206213 (= c!701043 ((_ is Nil!43373) lt!1449266))))

(assert (=> d!1206213 (= (++!11362 lt!1449266 lt!1449552) lt!1449877)))

(declare-fun b!4059330 () Bool)

(assert (=> b!4059330 (= e!2518973 (or (not (= lt!1449552 Nil!43373)) (= lt!1449877 lt!1449266)))))

(assert (= (and d!1206213 c!701043) b!4059327))

(assert (= (and d!1206213 (not c!701043)) b!4059328))

(assert (= (and d!1206213 res!1655645) b!4059329))

(assert (= (and b!4059329 res!1655644) b!4059330))

(declare-fun m!4664389 () Bool)

(assert (=> b!4059329 m!4664389))

(assert (=> b!4059329 m!4662529))

(declare-fun m!4664391 () Bool)

(assert (=> b!4059329 m!4664391))

(declare-fun m!4664393 () Bool)

(assert (=> b!4059328 m!4664393))

(declare-fun m!4664395 () Bool)

(assert (=> d!1206213 m!4664395))

(assert (=> d!1206213 m!4662641))

(declare-fun m!4664397 () Bool)

(assert (=> d!1206213 m!4664397))

(assert (=> d!1205941 d!1206213))

(assert (=> d!1205941 d!1206023))

(assert (=> d!1205941 d!1205685))

(assert (=> b!4058809 d!1206023))

(declare-fun d!1206215 () Bool)

(declare-fun lt!1449878 () Int)

(assert (=> d!1206215 (>= lt!1449878 0)))

(declare-fun e!2518975 () Int)

(assert (=> d!1206215 (= lt!1449878 e!2518975)))

(declare-fun c!701044 () Bool)

(assert (=> d!1206215 (= c!701044 ((_ is Nil!43373) lt!1449541))))

(assert (=> d!1206215 (= (size!32428 lt!1449541) lt!1449878)))

(declare-fun b!4059331 () Bool)

(assert (=> b!4059331 (= e!2518975 0)))

(declare-fun b!4059332 () Bool)

(assert (=> b!4059332 (= e!2518975 (+ 1 (size!32428 (t!336350 lt!1449541))))))

(assert (= (and d!1206215 c!701044) b!4059331))

(assert (= (and d!1206215 (not c!701044)) b!4059332))

(declare-fun m!4664399 () Bool)

(assert (=> b!4059332 m!4664399))

(assert (=> b!4058760 d!1206215))

(assert (=> b!4058760 d!1205907))

(declare-fun d!1206217 () Bool)

(declare-fun lt!1449879 () Int)

(assert (=> d!1206217 (>= lt!1449879 0)))

(declare-fun e!2518976 () Int)

(assert (=> d!1206217 (= lt!1449879 e!2518976)))

(declare-fun c!701045 () Bool)

(assert (=> d!1206217 (= c!701045 ((_ is Nil!43373) (_2!24351 (v!39791 lt!1449276))))))

(assert (=> d!1206217 (= (size!32428 (_2!24351 (v!39791 lt!1449276))) lt!1449879)))

(declare-fun b!4059333 () Bool)

(assert (=> b!4059333 (= e!2518976 0)))

(declare-fun b!4059334 () Bool)

(assert (=> b!4059334 (= e!2518976 (+ 1 (size!32428 (t!336350 (_2!24351 (v!39791 lt!1449276))))))))

(assert (= (and d!1206217 c!701045) b!4059333))

(assert (= (and d!1206217 (not c!701045)) b!4059334))

(declare-fun m!4664401 () Bool)

(assert (=> b!4059334 m!4664401))

(assert (=> b!4058760 d!1206217))

(declare-fun b!4059337 () Bool)

(declare-fun e!2518977 () Bool)

(assert (=> b!4059337 (= e!2518977 (isPrefix!4047 (tail!6303 (tail!6303 lt!1449266)) (tail!6303 (tail!6303 lt!1449231))))))

(declare-fun b!4059335 () Bool)

(declare-fun e!2518979 () Bool)

(assert (=> b!4059335 (= e!2518979 e!2518977)))

(declare-fun res!1655646 () Bool)

(assert (=> b!4059335 (=> (not res!1655646) (not e!2518977))))

(assert (=> b!4059335 (= res!1655646 (not ((_ is Nil!43373) (tail!6303 lt!1449231))))))

(declare-fun b!4059336 () Bool)

(declare-fun res!1655647 () Bool)

(assert (=> b!4059336 (=> (not res!1655647) (not e!2518977))))

(assert (=> b!4059336 (= res!1655647 (= (head!8571 (tail!6303 lt!1449266)) (head!8571 (tail!6303 lt!1449231))))))

(declare-fun d!1206219 () Bool)

(declare-fun e!2518978 () Bool)

(assert (=> d!1206219 e!2518978))

(declare-fun res!1655648 () Bool)

(assert (=> d!1206219 (=> res!1655648 e!2518978)))

(declare-fun lt!1449880 () Bool)

(assert (=> d!1206219 (= res!1655648 (not lt!1449880))))

(assert (=> d!1206219 (= lt!1449880 e!2518979)))

(declare-fun res!1655649 () Bool)

(assert (=> d!1206219 (=> res!1655649 e!2518979)))

(assert (=> d!1206219 (= res!1655649 ((_ is Nil!43373) (tail!6303 lt!1449266)))))

(assert (=> d!1206219 (= (isPrefix!4047 (tail!6303 lt!1449266) (tail!6303 lt!1449231)) lt!1449880)))

(declare-fun b!4059338 () Bool)

(assert (=> b!4059338 (= e!2518978 (>= (size!32428 (tail!6303 lt!1449231)) (size!32428 (tail!6303 lt!1449266))))))

(assert (= (and d!1206219 (not res!1655649)) b!4059335))

(assert (= (and b!4059335 res!1655646) b!4059336))

(assert (= (and b!4059336 res!1655647) b!4059337))

(assert (= (and d!1206219 (not res!1655648)) b!4059338))

(assert (=> b!4059337 m!4662649))

(assert (=> b!4059337 m!4664351))

(assert (=> b!4059337 m!4662651))

(declare-fun m!4664403 () Bool)

(assert (=> b!4059337 m!4664403))

(assert (=> b!4059337 m!4664351))

(assert (=> b!4059337 m!4664403))

(declare-fun m!4664405 () Bool)

(assert (=> b!4059337 m!4664405))

(assert (=> b!4059336 m!4662649))

(assert (=> b!4059336 m!4664357))

(assert (=> b!4059336 m!4662651))

(declare-fun m!4664407 () Bool)

(assert (=> b!4059336 m!4664407))

(assert (=> b!4059338 m!4662651))

(declare-fun m!4664409 () Bool)

(assert (=> b!4059338 m!4664409))

(assert (=> b!4059338 m!4662649))

(assert (=> b!4059338 m!4664363))

(assert (=> b!4058115 d!1206219))

(assert (=> b!4058115 d!1205993))

(declare-fun d!1206221 () Bool)

(assert (=> d!1206221 (= (tail!6303 lt!1449231) (t!336350 lt!1449231))))

(assert (=> b!4058115 d!1206221))

(assert (=> b!4058148 d!1206023))

(assert (=> b!4058148 d!1205689))

(declare-fun b!4059341 () Bool)

(declare-fun e!2518980 () Bool)

(assert (=> b!4059341 (= e!2518980 (isPrefix!4047 (tail!6303 (tail!6303 lt!1449266)) (tail!6303 (tail!6303 prefix!494))))))

(declare-fun b!4059339 () Bool)

(declare-fun e!2518982 () Bool)

(assert (=> b!4059339 (= e!2518982 e!2518980)))

(declare-fun res!1655650 () Bool)

(assert (=> b!4059339 (=> (not res!1655650) (not e!2518980))))

(assert (=> b!4059339 (= res!1655650 (not ((_ is Nil!43373) (tail!6303 prefix!494))))))

(declare-fun b!4059340 () Bool)

(declare-fun res!1655651 () Bool)

(assert (=> b!4059340 (=> (not res!1655651) (not e!2518980))))

(assert (=> b!4059340 (= res!1655651 (= (head!8571 (tail!6303 lt!1449266)) (head!8571 (tail!6303 prefix!494))))))

(declare-fun d!1206223 () Bool)

(declare-fun e!2518981 () Bool)

(assert (=> d!1206223 e!2518981))

(declare-fun res!1655652 () Bool)

(assert (=> d!1206223 (=> res!1655652 e!2518981)))

(declare-fun lt!1449881 () Bool)

(assert (=> d!1206223 (= res!1655652 (not lt!1449881))))

(assert (=> d!1206223 (= lt!1449881 e!2518982)))

(declare-fun res!1655653 () Bool)

(assert (=> d!1206223 (=> res!1655653 e!2518982)))

(assert (=> d!1206223 (= res!1655653 ((_ is Nil!43373) (tail!6303 lt!1449266)))))

(assert (=> d!1206223 (= (isPrefix!4047 (tail!6303 lt!1449266) (tail!6303 prefix!494)) lt!1449881)))

(declare-fun b!4059342 () Bool)

(assert (=> b!4059342 (= e!2518981 (>= (size!32428 (tail!6303 prefix!494)) (size!32428 (tail!6303 lt!1449266))))))

(assert (= (and d!1206223 (not res!1655653)) b!4059339))

(assert (= (and b!4059339 res!1655650) b!4059340))

(assert (= (and b!4059340 res!1655651) b!4059341))

(assert (= (and d!1206223 (not res!1655652)) b!4059342))

(assert (=> b!4059341 m!4662649))

(assert (=> b!4059341 m!4664351))

(assert (=> b!4059341 m!4662669))

(declare-fun m!4664411 () Bool)

(assert (=> b!4059341 m!4664411))

(assert (=> b!4059341 m!4664351))

(assert (=> b!4059341 m!4664411))

(declare-fun m!4664413 () Bool)

(assert (=> b!4059341 m!4664413))

(assert (=> b!4059340 m!4662649))

(assert (=> b!4059340 m!4664357))

(assert (=> b!4059340 m!4662669))

(declare-fun m!4664415 () Bool)

(assert (=> b!4059340 m!4664415))

(assert (=> b!4059342 m!4662669))

(declare-fun m!4664417 () Bool)

(assert (=> b!4059342 m!4664417))

(assert (=> b!4059342 m!4662649))

(assert (=> b!4059342 m!4664363))

(assert (=> b!4058779 d!1206223))

(assert (=> b!4058779 d!1205993))

(declare-fun d!1206225 () Bool)

(assert (=> d!1206225 (= (tail!6303 prefix!494) (t!336350 prefix!494))))

(assert (=> b!4058779 d!1206225))

(declare-fun d!1206227 () Bool)

(assert (=> d!1206227 (= (inv!57978 (tag!7820 (h!48795 (t!336352 rules!2999)))) (= (mod (str.len (value!218968 (tag!7820 (h!48795 (t!336352 rules!2999))))) 2) 0))))

(assert (=> b!4058892 d!1206227))

(declare-fun d!1206229 () Bool)

(declare-fun res!1655654 () Bool)

(declare-fun e!2518983 () Bool)

(assert (=> d!1206229 (=> (not res!1655654) (not e!2518983))))

(assert (=> d!1206229 (= res!1655654 (semiInverseModEq!2976 (toChars!9375 (transformation!6960 (h!48795 (t!336352 rules!2999)))) (toValue!9516 (transformation!6960 (h!48795 (t!336352 rules!2999))))))))

(assert (=> d!1206229 (= (inv!57981 (transformation!6960 (h!48795 (t!336352 rules!2999)))) e!2518983)))

(declare-fun b!4059343 () Bool)

(assert (=> b!4059343 (= e!2518983 (equivClasses!2875 (toChars!9375 (transformation!6960 (h!48795 (t!336352 rules!2999)))) (toValue!9516 (transformation!6960 (h!48795 (t!336352 rules!2999))))))))

(assert (= (and d!1206229 res!1655654) b!4059343))

(declare-fun m!4664419 () Bool)

(assert (=> d!1206229 m!4664419))

(declare-fun m!4664421 () Bool)

(assert (=> b!4059343 m!4664421))

(assert (=> b!4058892 d!1206229))

(assert (=> d!1205799 d!1205801))

(declare-fun d!1206231 () Bool)

(assert (=> d!1206231 (not (matchR!5818 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) lt!1449249))))

(assert (=> d!1206231 true))

(declare-fun _$57!132 () Unit!62757)

(assert (=> d!1206231 (= (choose!24654 thiss!21717 rules!2999 (rule!10050 token!484) lt!1449266 lt!1449231 lt!1449249 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) _$57!132)))

(declare-fun bs!591992 () Bool)

(assert (= bs!591992 d!1206231))

(assert (=> bs!591992 m!4662525))

(assert (=> d!1205799 d!1206231))

(assert (=> d!1205799 d!1205607))

(declare-fun b!4059346 () Bool)

(declare-fun res!1655655 () Bool)

(declare-fun e!2518984 () Bool)

(assert (=> b!4059346 (=> (not res!1655655) (not e!2518984))))

(declare-fun lt!1449882 () List!43497)

(assert (=> b!4059346 (= res!1655655 (= (size!32428 lt!1449882) (+ (size!32428 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449563))))) (size!32428 (_2!24351 (get!14226 lt!1449563))))))))

(declare-fun b!4059344 () Bool)

(declare-fun e!2518985 () List!43497)

(assert (=> b!4059344 (= e!2518985 (_2!24351 (get!14226 lt!1449563)))))

(declare-fun b!4059345 () Bool)

(assert (=> b!4059345 (= e!2518985 (Cons!43373 (h!48793 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449563))))) (++!11362 (t!336350 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449563))))) (_2!24351 (get!14226 lt!1449563)))))))

(declare-fun d!1206233 () Bool)

(assert (=> d!1206233 e!2518984))

(declare-fun res!1655656 () Bool)

(assert (=> d!1206233 (=> (not res!1655656) (not e!2518984))))

(assert (=> d!1206233 (= res!1655656 (= (content!6612 lt!1449882) ((_ map or) (content!6612 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449563))))) (content!6612 (_2!24351 (get!14226 lt!1449563))))))))

(assert (=> d!1206233 (= lt!1449882 e!2518985)))

(declare-fun c!701046 () Bool)

(assert (=> d!1206233 (= c!701046 ((_ is Nil!43373) (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449563))))))))

(assert (=> d!1206233 (= (++!11362 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449563)))) (_2!24351 (get!14226 lt!1449563))) lt!1449882)))

(declare-fun b!4059347 () Bool)

(assert (=> b!4059347 (= e!2518984 (or (not (= (_2!24351 (get!14226 lt!1449563)) Nil!43373)) (= lt!1449882 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449563)))))))))

(assert (= (and d!1206233 c!701046) b!4059344))

(assert (= (and d!1206233 (not c!701046)) b!4059345))

(assert (= (and d!1206233 res!1655656) b!4059346))

(assert (= (and b!4059346 res!1655655) b!4059347))

(declare-fun m!4664423 () Bool)

(assert (=> b!4059346 m!4664423))

(assert (=> b!4059346 m!4663735))

(declare-fun m!4664425 () Bool)

(assert (=> b!4059346 m!4664425))

(assert (=> b!4059346 m!4663745))

(declare-fun m!4664427 () Bool)

(assert (=> b!4059345 m!4664427))

(declare-fun m!4664429 () Bool)

(assert (=> d!1206233 m!4664429))

(assert (=> d!1206233 m!4663735))

(declare-fun m!4664431 () Bool)

(assert (=> d!1206233 m!4664431))

(declare-fun m!4664433 () Bool)

(assert (=> d!1206233 m!4664433))

(assert (=> b!4058825 d!1206233))

(declare-fun d!1206235 () Bool)

(assert (=> d!1206235 (= (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449563)))) (list!16165 (c!700780 (charsOf!4776 (_1!24351 (get!14226 lt!1449563))))))))

(declare-fun bs!591993 () Bool)

(assert (= bs!591993 d!1206235))

(declare-fun m!4664435 () Bool)

(assert (=> bs!591993 m!4664435))

(assert (=> b!4058825 d!1206235))

(declare-fun d!1206237 () Bool)

(declare-fun lt!1449883 () BalanceConc!25936)

(assert (=> d!1206237 (= (list!16164 lt!1449883) (originalCharacters!7560 (_1!24351 (get!14226 lt!1449563))))))

(assert (=> d!1206237 (= lt!1449883 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449563))))) (value!218994 (_1!24351 (get!14226 lt!1449563)))))))

(assert (=> d!1206237 (= (charsOf!4776 (_1!24351 (get!14226 lt!1449563))) lt!1449883)))

(declare-fun b_lambda!118617 () Bool)

(assert (=> (not b_lambda!118617) (not d!1206237)))

(declare-fun tb!244165 () Bool)

(declare-fun t!336440 () Bool)

(assert (=> (and b!4058071 (= (toChars!9375 (transformation!6960 (h!48795 rules!2999))) (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449563)))))) t!336440) tb!244165))

(declare-fun b!4059348 () Bool)

(declare-fun e!2518986 () Bool)

(declare-fun tp!1229834 () Bool)

(assert (=> b!4059348 (= e!2518986 (and (inv!57985 (c!700780 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449563))))) (value!218994 (_1!24351 (get!14226 lt!1449563)))))) tp!1229834))))

(declare-fun result!295878 () Bool)

(assert (=> tb!244165 (= result!295878 (and (inv!57986 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449563))))) (value!218994 (_1!24351 (get!14226 lt!1449563))))) e!2518986))))

(assert (= tb!244165 b!4059348))

(declare-fun m!4664437 () Bool)

(assert (=> b!4059348 m!4664437))

(declare-fun m!4664439 () Bool)

(assert (=> tb!244165 m!4664439))

(assert (=> d!1206237 t!336440))

(declare-fun b_and!312101 () Bool)

(assert (= b_and!312089 (and (=> t!336440 result!295878) b_and!312101)))

(declare-fun t!336442 () Bool)

(declare-fun tb!244167 () Bool)

(assert (=> (and b!4058069 (= (toChars!9375 (transformation!6960 (rule!10050 token!484))) (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449563)))))) t!336442) tb!244167))

(declare-fun result!295880 () Bool)

(assert (= result!295880 result!295878))

(assert (=> d!1206237 t!336442))

(declare-fun b_and!312103 () Bool)

(assert (= b_and!312091 (and (=> t!336442 result!295880) b_and!312103)))

(declare-fun t!336444 () Bool)

(declare-fun tb!244169 () Bool)

(assert (=> (and b!4058893 (= (toChars!9375 (transformation!6960 (h!48795 (t!336352 rules!2999)))) (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449563)))))) t!336444) tb!244169))

(declare-fun result!295882 () Bool)

(assert (= result!295882 result!295878))

(assert (=> d!1206237 t!336444))

(declare-fun b_and!312105 () Bool)

(assert (= b_and!312093 (and (=> t!336444 result!295882) b_and!312105)))

(declare-fun m!4664441 () Bool)

(assert (=> d!1206237 m!4664441))

(declare-fun m!4664443 () Bool)

(assert (=> d!1206237 m!4664443))

(assert (=> b!4058825 d!1206237))

(assert (=> b!4058825 d!1206021))

(declare-fun d!1206239 () Bool)

(assert (=> d!1206239 (= (isDefined!7122 lt!1449359) (not (isEmpty!25884 lt!1449359)))))

(declare-fun bs!591994 () Bool)

(assert (= bs!591994 d!1206239))

(assert (=> bs!591994 m!4662881))

(assert (=> b!4058310 d!1206239))

(declare-fun d!1206241 () Bool)

(declare-fun c!701047 () Bool)

(assert (=> d!1206241 (= c!701047 ((_ is Nil!43373) lt!1449571))))

(declare-fun e!2518987 () (InoxSet C!23916))

(assert (=> d!1206241 (= (content!6612 lt!1449571) e!2518987)))

(declare-fun b!4059349 () Bool)

(assert (=> b!4059349 (= e!2518987 ((as const (Array C!23916 Bool)) false))))

(declare-fun b!4059350 () Bool)

(assert (=> b!4059350 (= e!2518987 ((_ map or) (store ((as const (Array C!23916 Bool)) false) (h!48793 lt!1449571) true) (content!6612 (t!336350 lt!1449571))))))

(assert (= (and d!1206241 c!701047) b!4059349))

(assert (= (and d!1206241 (not c!701047)) b!4059350))

(declare-fun m!4664445 () Bool)

(assert (=> b!4059350 m!4664445))

(declare-fun m!4664447 () Bool)

(assert (=> b!4059350 m!4664447))

(assert (=> d!1205975 d!1206241))

(declare-fun d!1206243 () Bool)

(declare-fun c!701048 () Bool)

(assert (=> d!1206243 (= c!701048 ((_ is Nil!43373) newSuffix!27))))

(declare-fun e!2518988 () (InoxSet C!23916))

(assert (=> d!1206243 (= (content!6612 newSuffix!27) e!2518988)))

(declare-fun b!4059351 () Bool)

(assert (=> b!4059351 (= e!2518988 ((as const (Array C!23916 Bool)) false))))

(declare-fun b!4059352 () Bool)

(assert (=> b!4059352 (= e!2518988 ((_ map or) (store ((as const (Array C!23916 Bool)) false) (h!48793 newSuffix!27) true) (content!6612 (t!336350 newSuffix!27))))))

(assert (= (and d!1206243 c!701048) b!4059351))

(assert (= (and d!1206243 (not c!701048)) b!4059352))

(declare-fun m!4664449 () Bool)

(assert (=> b!4059352 m!4664449))

(declare-fun m!4664451 () Bool)

(assert (=> b!4059352 m!4664451))

(assert (=> d!1205975 d!1206243))

(declare-fun d!1206245 () Bool)

(declare-fun c!701049 () Bool)

(assert (=> d!1206245 (= c!701049 ((_ is Nil!43373) lt!1449227))))

(declare-fun e!2518989 () (InoxSet C!23916))

(assert (=> d!1206245 (= (content!6612 lt!1449227) e!2518989)))

(declare-fun b!4059353 () Bool)

(assert (=> b!4059353 (= e!2518989 ((as const (Array C!23916 Bool)) false))))

(declare-fun b!4059354 () Bool)

(assert (=> b!4059354 (= e!2518989 ((_ map or) (store ((as const (Array C!23916 Bool)) false) (h!48793 lt!1449227) true) (content!6612 (t!336350 lt!1449227))))))

(assert (= (and d!1206245 c!701049) b!4059353))

(assert (= (and d!1206245 (not c!701049)) b!4059354))

(declare-fun m!4664453 () Bool)

(assert (=> b!4059354 m!4664453))

(declare-fun m!4664455 () Bool)

(assert (=> b!4059354 m!4664455))

(assert (=> d!1205975 d!1206245))

(declare-fun d!1206247 () Bool)

(assert (=> d!1206247 (= (head!8571 newSuffix!27) (h!48793 newSuffix!27))))

(assert (=> b!4058768 d!1206247))

(declare-fun d!1206249 () Bool)

(assert (=> d!1206249 (= (head!8571 suffix!1299) (h!48793 suffix!1299))))

(assert (=> b!4058768 d!1206249))

(declare-fun b!4059357 () Bool)

(declare-fun e!2518990 () Bool)

(assert (=> b!4059357 (= e!2518990 (isPrefix!4047 (tail!6303 (tail!6303 lt!1449249)) (tail!6303 (tail!6303 lt!1449265))))))

(declare-fun b!4059355 () Bool)

(declare-fun e!2518992 () Bool)

(assert (=> b!4059355 (= e!2518992 e!2518990)))

(declare-fun res!1655657 () Bool)

(assert (=> b!4059355 (=> (not res!1655657) (not e!2518990))))

(assert (=> b!4059355 (= res!1655657 (not ((_ is Nil!43373) (tail!6303 lt!1449265))))))

(declare-fun b!4059356 () Bool)

(declare-fun res!1655658 () Bool)

(assert (=> b!4059356 (=> (not res!1655658) (not e!2518990))))

(assert (=> b!4059356 (= res!1655658 (= (head!8571 (tail!6303 lt!1449249)) (head!8571 (tail!6303 lt!1449265))))))

(declare-fun d!1206251 () Bool)

(declare-fun e!2518991 () Bool)

(assert (=> d!1206251 e!2518991))

(declare-fun res!1655659 () Bool)

(assert (=> d!1206251 (=> res!1655659 e!2518991)))

(declare-fun lt!1449884 () Bool)

(assert (=> d!1206251 (= res!1655659 (not lt!1449884))))

(assert (=> d!1206251 (= lt!1449884 e!2518992)))

(declare-fun res!1655660 () Bool)

(assert (=> d!1206251 (=> res!1655660 e!2518992)))

(assert (=> d!1206251 (= res!1655660 ((_ is Nil!43373) (tail!6303 lt!1449249)))))

(assert (=> d!1206251 (= (isPrefix!4047 (tail!6303 lt!1449249) (tail!6303 lt!1449265)) lt!1449884)))

(declare-fun b!4059358 () Bool)

(assert (=> b!4059358 (= e!2518991 (>= (size!32428 (tail!6303 lt!1449265)) (size!32428 (tail!6303 lt!1449249))))))

(assert (= (and d!1206251 (not res!1655660)) b!4059355))

(assert (= (and b!4059355 res!1655657) b!4059356))

(assert (= (and b!4059356 res!1655658) b!4059357))

(assert (= (and d!1206251 (not res!1655659)) b!4059358))

(assert (=> b!4059357 m!4663171))

(assert (=> b!4059357 m!4663819))

(assert (=> b!4059357 m!4663701))

(declare-fun m!4664457 () Bool)

(assert (=> b!4059357 m!4664457))

(assert (=> b!4059357 m!4663819))

(assert (=> b!4059357 m!4664457))

(declare-fun m!4664459 () Bool)

(assert (=> b!4059357 m!4664459))

(assert (=> b!4059356 m!4663171))

(assert (=> b!4059356 m!4663825))

(assert (=> b!4059356 m!4663701))

(declare-fun m!4664461 () Bool)

(assert (=> b!4059356 m!4664461))

(assert (=> b!4059358 m!4663701))

(declare-fun m!4664463 () Bool)

(assert (=> b!4059358 m!4664463))

(assert (=> b!4059358 m!4663171))

(declare-fun m!4664465 () Bool)

(assert (=> b!4059358 m!4664465))

(assert (=> b!4058817 d!1206251))

(assert (=> b!4058817 d!1206001))

(declare-fun d!1206253 () Bool)

(assert (=> d!1206253 (= (tail!6303 lt!1449265) (t!336350 lt!1449265))))

(assert (=> b!4058817 d!1206253))

(declare-fun b!4059361 () Bool)

(declare-fun e!2518993 () Bool)

(assert (=> b!4059361 (= e!2518993 (isPrefix!4047 (tail!6303 prefix!494) (tail!6303 (++!11362 prefix!494 suffix!1299))))))

(declare-fun b!4059359 () Bool)

(declare-fun e!2518995 () Bool)

(assert (=> b!4059359 (= e!2518995 e!2518993)))

(declare-fun res!1655661 () Bool)

(assert (=> b!4059359 (=> (not res!1655661) (not e!2518993))))

(assert (=> b!4059359 (= res!1655661 (not ((_ is Nil!43373) (++!11362 prefix!494 suffix!1299))))))

(declare-fun b!4059360 () Bool)

(declare-fun res!1655662 () Bool)

(assert (=> b!4059360 (=> (not res!1655662) (not e!2518993))))

(assert (=> b!4059360 (= res!1655662 (= (head!8571 prefix!494) (head!8571 (++!11362 prefix!494 suffix!1299))))))

(declare-fun d!1206255 () Bool)

(declare-fun e!2518994 () Bool)

(assert (=> d!1206255 e!2518994))

(declare-fun res!1655663 () Bool)

(assert (=> d!1206255 (=> res!1655663 e!2518994)))

(declare-fun lt!1449885 () Bool)

(assert (=> d!1206255 (= res!1655663 (not lt!1449885))))

(assert (=> d!1206255 (= lt!1449885 e!2518995)))

(declare-fun res!1655664 () Bool)

(assert (=> d!1206255 (=> res!1655664 e!2518995)))

(assert (=> d!1206255 (= res!1655664 ((_ is Nil!43373) prefix!494))))

(assert (=> d!1206255 (= (isPrefix!4047 prefix!494 (++!11362 prefix!494 suffix!1299)) lt!1449885)))

(declare-fun b!4059362 () Bool)

(assert (=> b!4059362 (= e!2518994 (>= (size!32428 (++!11362 prefix!494 suffix!1299)) (size!32428 prefix!494)))))

(assert (= (and d!1206255 (not res!1655664)) b!4059359))

(assert (= (and b!4059359 res!1655661) b!4059360))

(assert (= (and b!4059360 res!1655662) b!4059361))

(assert (= (and d!1206255 (not res!1655663)) b!4059362))

(assert (=> b!4059361 m!4662669))

(assert (=> b!4059361 m!4662509))

(declare-fun m!4664467 () Bool)

(assert (=> b!4059361 m!4664467))

(assert (=> b!4059361 m!4662669))

(assert (=> b!4059361 m!4664467))

(declare-fun m!4664469 () Bool)

(assert (=> b!4059361 m!4664469))

(assert (=> b!4059360 m!4662673))

(assert (=> b!4059360 m!4662509))

(declare-fun m!4664471 () Bool)

(assert (=> b!4059360 m!4664471))

(assert (=> b!4059362 m!4662509))

(declare-fun m!4664473 () Bool)

(assert (=> b!4059362 m!4664473))

(assert (=> b!4059362 m!4662531))

(assert (=> d!1205615 d!1206255))

(assert (=> d!1205615 d!1205655))

(declare-fun d!1206257 () Bool)

(assert (=> d!1206257 (isPrefix!4047 prefix!494 (++!11362 prefix!494 suffix!1299))))

(assert (=> d!1206257 true))

(declare-fun _$46!1828 () Unit!62757)

(assert (=> d!1206257 (= (choose!24655 prefix!494 suffix!1299) _$46!1828)))

(declare-fun bs!591995 () Bool)

(assert (= bs!591995 d!1206257))

(assert (=> bs!591995 m!4662509))

(assert (=> bs!591995 m!4662509))

(assert (=> bs!591995 m!4662675))

(assert (=> d!1205615 d!1206257))

(declare-fun d!1206259 () Bool)

(assert (=> d!1206259 (= (isEmpty!25885 lt!1449249) ((_ is Nil!43373) lt!1449249))))

(assert (=> d!1205801 d!1206259))

(assert (=> d!1205801 d!1206005))

(declare-fun d!1206261 () Bool)

(declare-fun c!701050 () Bool)

(assert (=> d!1206261 (= c!701050 ((_ is Nil!43373) lt!1449456))))

(declare-fun e!2518996 () (InoxSet C!23916))

(assert (=> d!1206261 (= (content!6612 lt!1449456) e!2518996)))

(declare-fun b!4059363 () Bool)

(assert (=> b!4059363 (= e!2518996 ((as const (Array C!23916 Bool)) false))))

(declare-fun b!4059364 () Bool)

(assert (=> b!4059364 (= e!2518996 ((_ map or) (store ((as const (Array C!23916 Bool)) false) (h!48793 lt!1449456) true) (content!6612 (t!336350 lt!1449456))))))

(assert (= (and d!1206261 c!701050) b!4059363))

(assert (= (and d!1206261 (not c!701050)) b!4059364))

(declare-fun m!4664475 () Bool)

(assert (=> b!4059364 m!4664475))

(declare-fun m!4664477 () Bool)

(assert (=> b!4059364 m!4664477))

(assert (=> d!1205795 d!1206261))

(declare-fun d!1206263 () Bool)

(declare-fun c!701051 () Bool)

(assert (=> d!1206263 (= c!701051 ((_ is Nil!43373) lt!1449255))))

(declare-fun e!2518997 () (InoxSet C!23916))

(assert (=> d!1206263 (= (content!6612 lt!1449255) e!2518997)))

(declare-fun b!4059365 () Bool)

(assert (=> b!4059365 (= e!2518997 ((as const (Array C!23916 Bool)) false))))

(declare-fun b!4059366 () Bool)

(assert (=> b!4059366 (= e!2518997 ((_ map or) (store ((as const (Array C!23916 Bool)) false) (h!48793 lt!1449255) true) (content!6612 (t!336350 lt!1449255))))))

(assert (= (and d!1206263 c!701051) b!4059365))

(assert (= (and d!1206263 (not c!701051)) b!4059366))

(declare-fun m!4664479 () Bool)

(assert (=> b!4059366 m!4664479))

(declare-fun m!4664481 () Bool)

(assert (=> b!4059366 m!4664481))

(assert (=> d!1205795 d!1206263))

(assert (=> d!1205795 d!1206245))

(declare-fun d!1206265 () Bool)

(declare-fun c!701052 () Bool)

(assert (=> d!1206265 (= c!701052 ((_ is Nil!43373) lt!1449484))))

(declare-fun e!2518998 () (InoxSet C!23916))

(assert (=> d!1206265 (= (content!6612 lt!1449484) e!2518998)))

(declare-fun b!4059367 () Bool)

(assert (=> b!4059367 (= e!2518998 ((as const (Array C!23916 Bool)) false))))

(declare-fun b!4059368 () Bool)

(assert (=> b!4059368 (= e!2518998 ((_ map or) (store ((as const (Array C!23916 Bool)) false) (h!48793 lt!1449484) true) (content!6612 (t!336350 lt!1449484))))))

(assert (= (and d!1206265 c!701052) b!4059367))

(assert (= (and d!1206265 (not c!701052)) b!4059368))

(declare-fun m!4664483 () Bool)

(assert (=> b!4059368 m!4664483))

(declare-fun m!4664485 () Bool)

(assert (=> b!4059368 m!4664485))

(assert (=> d!1205845 d!1206265))

(declare-fun d!1206267 () Bool)

(declare-fun c!701053 () Bool)

(assert (=> d!1206267 (= c!701053 ((_ is Nil!43373) lt!1449249))))

(declare-fun e!2518999 () (InoxSet C!23916))

(assert (=> d!1206267 (= (content!6612 lt!1449249) e!2518999)))

(declare-fun b!4059369 () Bool)

(assert (=> b!4059369 (= e!2518999 ((as const (Array C!23916 Bool)) false))))

(declare-fun b!4059370 () Bool)

(assert (=> b!4059370 (= e!2518999 ((_ map or) (store ((as const (Array C!23916 Bool)) false) (h!48793 lt!1449249) true) (content!6612 (t!336350 lt!1449249))))))

(assert (= (and d!1206267 c!701053) b!4059369))

(assert (= (and d!1206267 (not c!701053)) b!4059370))

(declare-fun m!4664487 () Bool)

(assert (=> b!4059370 m!4664487))

(assert (=> b!4059370 m!4664315))

(assert (=> d!1205845 d!1206267))

(declare-fun d!1206269 () Bool)

(declare-fun c!701054 () Bool)

(assert (=> d!1206269 (= c!701054 ((_ is Nil!43373) newSuffixResult!27))))

(declare-fun e!2519000 () (InoxSet C!23916))

(assert (=> d!1206269 (= (content!6612 newSuffixResult!27) e!2519000)))

(declare-fun b!4059371 () Bool)

(assert (=> b!4059371 (= e!2519000 ((as const (Array C!23916 Bool)) false))))

(declare-fun b!4059372 () Bool)

(assert (=> b!4059372 (= e!2519000 ((_ map or) (store ((as const (Array C!23916 Bool)) false) (h!48793 newSuffixResult!27) true) (content!6612 (t!336350 newSuffixResult!27))))))

(assert (= (and d!1206269 c!701054) b!4059371))

(assert (= (and d!1206269 (not c!701054)) b!4059372))

(declare-fun m!4664489 () Bool)

(assert (=> b!4059372 m!4664489))

(declare-fun m!4664491 () Bool)

(assert (=> b!4059372 m!4664491))

(assert (=> d!1205845 d!1206269))

(assert (=> b!4058812 d!1205999))

(declare-fun d!1206271 () Bool)

(assert (=> d!1206271 (= (head!8571 lt!1449231) (h!48793 lt!1449231))))

(assert (=> b!4058812 d!1206271))

(declare-fun d!1206273 () Bool)

(declare-fun lt!1449886 () Int)

(assert (=> d!1206273 (>= lt!1449886 0)))

(declare-fun e!2519001 () Int)

(assert (=> d!1206273 (= lt!1449886 e!2519001)))

(declare-fun c!701055 () Bool)

(assert (=> d!1206273 (= c!701055 ((_ is Nil!43373) lt!1449448))))

(assert (=> d!1206273 (= (size!32428 lt!1449448) lt!1449886)))

(declare-fun b!4059373 () Bool)

(assert (=> b!4059373 (= e!2519001 0)))

(declare-fun b!4059374 () Bool)

(assert (=> b!4059374 (= e!2519001 (+ 1 (size!32428 (t!336350 lt!1449448))))))

(assert (= (and d!1206273 c!701055) b!4059373))

(assert (= (and d!1206273 (not c!701055)) b!4059374))

(declare-fun m!4664493 () Bool)

(assert (=> b!4059374 m!4664493))

(assert (=> b!4058487 d!1206273))

(declare-fun d!1206275 () Bool)

(declare-fun lt!1449887 () Int)

(assert (=> d!1206275 (>= lt!1449887 0)))

(declare-fun e!2519002 () Int)

(assert (=> d!1206275 (= lt!1449887 e!2519002)))

(declare-fun c!701056 () Bool)

(assert (=> d!1206275 (= c!701056 ((_ is Nil!43373) lt!1449260))))

(assert (=> d!1206275 (= (size!32428 lt!1449260) lt!1449887)))

(declare-fun b!4059375 () Bool)

(assert (=> b!4059375 (= e!2519002 0)))

(declare-fun b!4059376 () Bool)

(assert (=> b!4059376 (= e!2519002 (+ 1 (size!32428 (t!336350 lt!1449260))))))

(assert (= (and d!1206275 c!701056) b!4059375))

(assert (= (and d!1206275 (not c!701056)) b!4059376))

(declare-fun m!4664495 () Bool)

(assert (=> b!4059376 m!4664495))

(assert (=> b!4058487 d!1206275))

(assert (=> b!4058487 d!1205971))

(declare-fun d!1206277 () Bool)

(declare-fun c!701057 () Bool)

(assert (=> d!1206277 (= c!701057 ((_ is Nil!43373) lt!1449541))))

(declare-fun e!2519003 () (InoxSet C!23916))

(assert (=> d!1206277 (= (content!6612 lt!1449541) e!2519003)))

(declare-fun b!4059377 () Bool)

(assert (=> b!4059377 (= e!2519003 ((as const (Array C!23916 Bool)) false))))

(declare-fun b!4059378 () Bool)

(assert (=> b!4059378 (= e!2519003 ((_ map or) (store ((as const (Array C!23916 Bool)) false) (h!48793 lt!1449541) true) (content!6612 (t!336350 lt!1449541))))))

(assert (= (and d!1206277 c!701057) b!4059377))

(assert (= (and d!1206277 (not c!701057)) b!4059378))

(declare-fun m!4664497 () Bool)

(assert (=> b!4059378 m!4664497))

(declare-fun m!4664499 () Bool)

(assert (=> b!4059378 m!4664499))

(assert (=> d!1205913 d!1206277))

(assert (=> d!1205913 d!1206267))

(declare-fun d!1206279 () Bool)

(declare-fun c!701058 () Bool)

(assert (=> d!1206279 (= c!701058 ((_ is Nil!43373) (_2!24351 (v!39791 lt!1449276))))))

(declare-fun e!2519004 () (InoxSet C!23916))

(assert (=> d!1206279 (= (content!6612 (_2!24351 (v!39791 lt!1449276))) e!2519004)))

(declare-fun b!4059379 () Bool)

(assert (=> b!4059379 (= e!2519004 ((as const (Array C!23916 Bool)) false))))

(declare-fun b!4059380 () Bool)

(assert (=> b!4059380 (= e!2519004 ((_ map or) (store ((as const (Array C!23916 Bool)) false) (h!48793 (_2!24351 (v!39791 lt!1449276))) true) (content!6612 (t!336350 (_2!24351 (v!39791 lt!1449276))))))))

(assert (= (and d!1206279 c!701058) b!4059379))

(assert (= (and d!1206279 (not c!701058)) b!4059380))

(declare-fun m!4664501 () Bool)

(assert (=> b!4059380 m!4664501))

(declare-fun m!4664503 () Bool)

(assert (=> b!4059380 m!4664503))

(assert (=> d!1205913 d!1206279))

(declare-fun e!2519005 () Bool)

(declare-fun b!4059383 () Bool)

(assert (=> b!4059383 (= e!2519005 (isPrefix!4047 (tail!6303 lt!1449266) (tail!6303 (++!11362 prefix!494 suffix!1299))))))

(declare-fun b!4059381 () Bool)

(declare-fun e!2519007 () Bool)

(assert (=> b!4059381 (= e!2519007 e!2519005)))

(declare-fun res!1655665 () Bool)

(assert (=> b!4059381 (=> (not res!1655665) (not e!2519005))))

(assert (=> b!4059381 (= res!1655665 (not ((_ is Nil!43373) (++!11362 prefix!494 suffix!1299))))))

(declare-fun b!4059382 () Bool)

(declare-fun res!1655666 () Bool)

(assert (=> b!4059382 (=> (not res!1655666) (not e!2519005))))

(assert (=> b!4059382 (= res!1655666 (= (head!8571 lt!1449266) (head!8571 (++!11362 prefix!494 suffix!1299))))))

(declare-fun d!1206281 () Bool)

(declare-fun e!2519006 () Bool)

(assert (=> d!1206281 e!2519006))

(declare-fun res!1655667 () Bool)

(assert (=> d!1206281 (=> res!1655667 e!2519006)))

(declare-fun lt!1449888 () Bool)

(assert (=> d!1206281 (= res!1655667 (not lt!1449888))))

(assert (=> d!1206281 (= lt!1449888 e!2519007)))

(declare-fun res!1655668 () Bool)

(assert (=> d!1206281 (=> res!1655668 e!2519007)))

(assert (=> d!1206281 (= res!1655668 ((_ is Nil!43373) lt!1449266))))

(assert (=> d!1206281 (= (isPrefix!4047 lt!1449266 (++!11362 prefix!494 suffix!1299)) lt!1449888)))

(declare-fun b!4059384 () Bool)

(assert (=> b!4059384 (= e!2519006 (>= (size!32428 (++!11362 prefix!494 suffix!1299)) (size!32428 lt!1449266)))))

(assert (= (and d!1206281 (not res!1655668)) b!4059381))

(assert (= (and b!4059381 res!1655665) b!4059382))

(assert (= (and b!4059382 res!1655666) b!4059383))

(assert (= (and d!1206281 (not res!1655667)) b!4059384))

(assert (=> b!4059383 m!4662649))

(assert (=> b!4059383 m!4662509))

(assert (=> b!4059383 m!4664467))

(assert (=> b!4059383 m!4662649))

(assert (=> b!4059383 m!4664467))

(declare-fun m!4664505 () Bool)

(assert (=> b!4059383 m!4664505))

(assert (=> b!4059382 m!4662655))

(assert (=> b!4059382 m!4662509))

(assert (=> b!4059382 m!4664471))

(assert (=> b!4059384 m!4662509))

(assert (=> b!4059384 m!4664473))

(assert (=> b!4059384 m!4662529))

(assert (=> d!1205827 d!1206281))

(assert (=> d!1205827 d!1205655))

(declare-fun d!1206283 () Bool)

(assert (=> d!1206283 (isPrefix!4047 lt!1449266 (++!11362 prefix!494 suffix!1299))))

(assert (=> d!1206283 true))

(declare-fun _$58!623 () Unit!62757)

(assert (=> d!1206283 (= (choose!24666 lt!1449266 prefix!494 suffix!1299) _$58!623)))

(declare-fun bs!591996 () Bool)

(assert (= bs!591996 d!1206283))

(assert (=> bs!591996 m!4662509))

(assert (=> bs!591996 m!4662509))

(assert (=> bs!591996 m!4663321))

(assert (=> d!1205827 d!1206283))

(assert (=> d!1205827 d!1205931))

(declare-fun d!1206285 () Bool)

(declare-fun lt!1449889 () Bool)

(assert (=> d!1206285 (= lt!1449889 (select (content!6615 rules!2999) (rule!10050 (_1!24351 (get!14226 lt!1449345)))))))

(declare-fun e!2519009 () Bool)

(assert (=> d!1206285 (= lt!1449889 e!2519009)))

(declare-fun res!1655669 () Bool)

(assert (=> d!1206285 (=> (not res!1655669) (not e!2519009))))

(assert (=> d!1206285 (= res!1655669 ((_ is Cons!43375) rules!2999))))

(assert (=> d!1206285 (= (contains!8628 rules!2999 (rule!10050 (_1!24351 (get!14226 lt!1449345)))) lt!1449889)))

(declare-fun b!4059385 () Bool)

(declare-fun e!2519008 () Bool)

(assert (=> b!4059385 (= e!2519009 e!2519008)))

(declare-fun res!1655670 () Bool)

(assert (=> b!4059385 (=> res!1655670 e!2519008)))

(assert (=> b!4059385 (= res!1655670 (= (h!48795 rules!2999) (rule!10050 (_1!24351 (get!14226 lt!1449345)))))))

(declare-fun b!4059386 () Bool)

(assert (=> b!4059386 (= e!2519008 (contains!8628 (t!336352 rules!2999) (rule!10050 (_1!24351 (get!14226 lt!1449345)))))))

(assert (= (and d!1206285 res!1655669) b!4059385))

(assert (= (and b!4059385 (not res!1655670)) b!4059386))

(assert (=> d!1206285 m!4664317))

(declare-fun m!4664507 () Bool)

(assert (=> d!1206285 m!4664507))

(declare-fun m!4664509 () Bool)

(assert (=> b!4059386 m!4664509))

(assert (=> b!4058268 d!1206285))

(assert (=> b!4058268 d!1206129))

(assert (=> b!4058784 d!1205989))

(assert (=> b!4058784 d!1205907))

(assert (=> b!4058343 d!1206083))

(declare-fun d!1206287 () Bool)

(assert (=> d!1206287 (= (head!8571 lt!1449229) (h!48793 lt!1449229))))

(assert (=> b!4058343 d!1206287))

(declare-fun d!1206289 () Bool)

(declare-fun lt!1449890 () Int)

(assert (=> d!1206289 (>= lt!1449890 0)))

(declare-fun e!2519010 () Int)

(assert (=> d!1206289 (= lt!1449890 e!2519010)))

(declare-fun c!701059 () Bool)

(assert (=> d!1206289 (= c!701059 ((_ is Nil!43373) lt!1449353))))

(assert (=> d!1206289 (= (size!32428 lt!1449353) lt!1449890)))

(declare-fun b!4059387 () Bool)

(assert (=> b!4059387 (= e!2519010 0)))

(declare-fun b!4059388 () Bool)

(assert (=> b!4059388 (= e!2519010 (+ 1 (size!32428 (t!336350 lt!1449353))))))

(assert (= (and d!1206289 c!701059) b!4059387))

(assert (= (and d!1206289 (not c!701059)) b!4059388))

(declare-fun m!4664511 () Bool)

(assert (=> b!4059388 m!4664511))

(assert (=> b!4058290 d!1206289))

(assert (=> b!4058290 d!1205689))

(assert (=> b!4058290 d!1205971))

(assert (=> b!4058711 d!1206143))

(declare-fun d!1206291 () Bool)

(assert (=> d!1206291 (= (apply!10149 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449534)))) (seqFromList!5177 (originalCharacters!7560 (_1!24351 (get!14226 lt!1449534))))) (dynLambda!18426 (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449534))))) (seqFromList!5177 (originalCharacters!7560 (_1!24351 (get!14226 lt!1449534))))))))

(declare-fun b_lambda!118619 () Bool)

(assert (=> (not b_lambda!118619) (not d!1206291)))

(declare-fun t!336446 () Bool)

(declare-fun tb!244171 () Bool)

(assert (=> (and b!4058071 (= (toValue!9516 (transformation!6960 (h!48795 rules!2999))) (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449534)))))) t!336446) tb!244171))

(declare-fun result!295884 () Bool)

(assert (=> tb!244171 (= result!295884 (inv!21 (dynLambda!18426 (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449534))))) (seqFromList!5177 (originalCharacters!7560 (_1!24351 (get!14226 lt!1449534)))))))))

(declare-fun m!4664513 () Bool)

(assert (=> tb!244171 m!4664513))

(assert (=> d!1206291 t!336446))

(declare-fun b_and!312107 () Bool)

(assert (= b_and!312095 (and (=> t!336446 result!295884) b_and!312107)))

(declare-fun t!336448 () Bool)

(declare-fun tb!244173 () Bool)

(assert (=> (and b!4058069 (= (toValue!9516 (transformation!6960 (rule!10050 token!484))) (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449534)))))) t!336448) tb!244173))

(declare-fun result!295886 () Bool)

(assert (= result!295886 result!295884))

(assert (=> d!1206291 t!336448))

(declare-fun b_and!312109 () Bool)

(assert (= b_and!312097 (and (=> t!336448 result!295886) b_and!312109)))

(declare-fun t!336450 () Bool)

(declare-fun tb!244175 () Bool)

(assert (=> (and b!4058893 (= (toValue!9516 (transformation!6960 (h!48795 (t!336352 rules!2999)))) (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449534)))))) t!336450) tb!244175))

(declare-fun result!295888 () Bool)

(assert (= result!295888 result!295884))

(assert (=> d!1206291 t!336450))

(declare-fun b_and!312111 () Bool)

(assert (= b_and!312099 (and (=> t!336450 result!295888) b_and!312111)))

(assert (=> d!1206291 m!4663573))

(declare-fun m!4664515 () Bool)

(assert (=> d!1206291 m!4664515))

(assert (=> b!4058711 d!1206291))

(declare-fun d!1206293 () Bool)

(assert (=> d!1206293 (= (seqFromList!5177 (originalCharacters!7560 (_1!24351 (get!14226 lt!1449534)))) (fromListB!2362 (originalCharacters!7560 (_1!24351 (get!14226 lt!1449534)))))))

(declare-fun bs!591997 () Bool)

(assert (= bs!591997 d!1206293))

(declare-fun m!4664517 () Bool)

(assert (=> bs!591997 m!4664517))

(assert (=> b!4058711 d!1206293))

(declare-fun d!1206295 () Bool)

(assert (=> d!1206295 (= (isEmpty!25884 lt!1449345) (not ((_ is Some!9373) lt!1449345)))))

(assert (=> d!1205617 d!1206295))

(assert (=> d!1205617 d!1205943))

(assert (=> d!1205617 d!1205945))

(assert (=> d!1205617 d!1206167))

(declare-fun d!1206297 () Bool)

(declare-fun lt!1449891 () Bool)

(assert (=> d!1206297 (= lt!1449891 (select (content!6615 rules!2999) (rule!10050 (_1!24351 (v!39791 lt!1449276)))))))

(declare-fun e!2519013 () Bool)

(assert (=> d!1206297 (= lt!1449891 e!2519013)))

(declare-fun res!1655671 () Bool)

(assert (=> d!1206297 (=> (not res!1655671) (not e!2519013))))

(assert (=> d!1206297 (= res!1655671 ((_ is Cons!43375) rules!2999))))

(assert (=> d!1206297 (= (contains!8628 rules!2999 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) lt!1449891)))

(declare-fun b!4059389 () Bool)

(declare-fun e!2519012 () Bool)

(assert (=> b!4059389 (= e!2519013 e!2519012)))

(declare-fun res!1655672 () Bool)

(assert (=> b!4059389 (=> res!1655672 e!2519012)))

(assert (=> b!4059389 (= res!1655672 (= (h!48795 rules!2999) (rule!10050 (_1!24351 (v!39791 lt!1449276)))))))

(declare-fun b!4059390 () Bool)

(assert (=> b!4059390 (= e!2519012 (contains!8628 (t!336352 rules!2999) (rule!10050 (_1!24351 (v!39791 lt!1449276)))))))

(assert (= (and d!1206297 res!1655671) b!4059389))

(assert (= (and b!4059389 (not res!1655672)) b!4059390))

(assert (=> d!1206297 m!4664317))

(declare-fun m!4664519 () Bool)

(assert (=> d!1206297 m!4664519))

(declare-fun m!4664521 () Bool)

(assert (=> b!4059390 m!4664521))

(assert (=> d!1205715 d!1206297))

(declare-fun b!4059393 () Bool)

(declare-fun e!2519014 () Bool)

(assert (=> b!4059393 (= e!2519014 (isPrefix!4047 (tail!6303 lt!1449249) (tail!6303 (++!11362 lt!1449249 (_2!24351 (v!39791 lt!1449276))))))))

(declare-fun b!4059391 () Bool)

(declare-fun e!2519016 () Bool)

(assert (=> b!4059391 (= e!2519016 e!2519014)))

(declare-fun res!1655673 () Bool)

(assert (=> b!4059391 (=> (not res!1655673) (not e!2519014))))

(assert (=> b!4059391 (= res!1655673 (not ((_ is Nil!43373) (++!11362 lt!1449249 (_2!24351 (v!39791 lt!1449276))))))))

(declare-fun b!4059392 () Bool)

(declare-fun res!1655674 () Bool)

(assert (=> b!4059392 (=> (not res!1655674) (not e!2519014))))

(assert (=> b!4059392 (= res!1655674 (= (head!8571 lt!1449249) (head!8571 (++!11362 lt!1449249 (_2!24351 (v!39791 lt!1449276))))))))

(declare-fun d!1206299 () Bool)

(declare-fun e!2519015 () Bool)

(assert (=> d!1206299 e!2519015))

(declare-fun res!1655675 () Bool)

(assert (=> d!1206299 (=> res!1655675 e!2519015)))

(declare-fun lt!1449892 () Bool)

(assert (=> d!1206299 (= res!1655675 (not lt!1449892))))

(assert (=> d!1206299 (= lt!1449892 e!2519016)))

(declare-fun res!1655676 () Bool)

(assert (=> d!1206299 (=> res!1655676 e!2519016)))

(assert (=> d!1206299 (= res!1655676 ((_ is Nil!43373) lt!1449249))))

(assert (=> d!1206299 (= (isPrefix!4047 lt!1449249 (++!11362 lt!1449249 (_2!24351 (v!39791 lt!1449276)))) lt!1449892)))

(declare-fun b!4059394 () Bool)

(assert (=> b!4059394 (= e!2519015 (>= (size!32428 (++!11362 lt!1449249 (_2!24351 (v!39791 lt!1449276)))) (size!32428 lt!1449249)))))

(assert (= (and d!1206299 (not res!1655676)) b!4059391))

(assert (= (and b!4059391 res!1655673) b!4059392))

(assert (= (and b!4059392 res!1655674) b!4059393))

(assert (= (and d!1206299 (not res!1655675)) b!4059394))

(assert (=> b!4059393 m!4663171))

(assert (=> b!4059393 m!4662569))

(declare-fun m!4664523 () Bool)

(assert (=> b!4059393 m!4664523))

(assert (=> b!4059393 m!4663171))

(assert (=> b!4059393 m!4664523))

(declare-fun m!4664525 () Bool)

(assert (=> b!4059393 m!4664525))

(assert (=> b!4059392 m!4663177))

(assert (=> b!4059392 m!4662569))

(declare-fun m!4664527 () Bool)

(assert (=> b!4059392 m!4664527))

(assert (=> b!4059394 m!4662569))

(declare-fun m!4664529 () Bool)

(assert (=> b!4059394 m!4664529))

(assert (=> b!4059394 m!4662577))

(assert (=> d!1205909 d!1206299))

(assert (=> d!1205909 d!1205913))

(declare-fun d!1206301 () Bool)

(assert (=> d!1206301 (isPrefix!4047 lt!1449249 (++!11362 lt!1449249 (_2!24351 (v!39791 lt!1449276))))))

(assert (=> d!1206301 true))

(declare-fun _$46!1829 () Unit!62757)

(assert (=> d!1206301 (= (choose!24655 lt!1449249 (_2!24351 (v!39791 lt!1449276))) _$46!1829)))

(declare-fun bs!591998 () Bool)

(assert (= bs!591998 d!1206301))

(assert (=> bs!591998 m!4662569))

(assert (=> bs!591998 m!4662569))

(assert (=> bs!591998 m!4663621))

(assert (=> d!1205909 d!1206301))

(declare-fun d!1206303 () Bool)

(declare-fun lt!1449893 () Int)

(assert (=> d!1206303 (>= lt!1449893 0)))

(declare-fun e!2519017 () Int)

(assert (=> d!1206303 (= lt!1449893 e!2519017)))

(declare-fun c!701060 () Bool)

(assert (=> d!1206303 (= c!701060 ((_ is Nil!43373) lt!1449257))))

(assert (=> d!1206303 (= (size!32428 lt!1449257) lt!1449893)))

(declare-fun b!4059395 () Bool)

(assert (=> b!4059395 (= e!2519017 0)))

(declare-fun b!4059396 () Bool)

(assert (=> b!4059396 (= e!2519017 (+ 1 (size!32428 (t!336350 lt!1449257))))))

(assert (= (and d!1206303 c!701060) b!4059395))

(assert (= (and d!1206303 (not c!701060)) b!4059396))

(declare-fun m!4664531 () Bool)

(assert (=> b!4059396 m!4664531))

(assert (=> b!4058144 d!1206303))

(assert (=> b!4058144 d!1205685))

(declare-fun b!4059399 () Bool)

(declare-fun res!1655677 () Bool)

(declare-fun e!2519018 () Bool)

(assert (=> b!4059399 (=> (not res!1655677) (not e!2519018))))

(declare-fun lt!1449894 () List!43497)

(assert (=> b!4059399 (= res!1655677 (= (size!32428 lt!1449894) (+ (size!32428 (t!336350 lt!1449255)) (size!32428 lt!1449227))))))

(declare-fun b!4059397 () Bool)

(declare-fun e!2519019 () List!43497)

(assert (=> b!4059397 (= e!2519019 lt!1449227)))

(declare-fun b!4059398 () Bool)

(assert (=> b!4059398 (= e!2519019 (Cons!43373 (h!48793 (t!336350 lt!1449255)) (++!11362 (t!336350 (t!336350 lt!1449255)) lt!1449227)))))

(declare-fun d!1206305 () Bool)

(assert (=> d!1206305 e!2519018))

(declare-fun res!1655678 () Bool)

(assert (=> d!1206305 (=> (not res!1655678) (not e!2519018))))

(assert (=> d!1206305 (= res!1655678 (= (content!6612 lt!1449894) ((_ map or) (content!6612 (t!336350 lt!1449255)) (content!6612 lt!1449227))))))

(assert (=> d!1206305 (= lt!1449894 e!2519019)))

(declare-fun c!701061 () Bool)

(assert (=> d!1206305 (= c!701061 ((_ is Nil!43373) (t!336350 lt!1449255)))))

(assert (=> d!1206305 (= (++!11362 (t!336350 lt!1449255) lt!1449227) lt!1449894)))

(declare-fun b!4059400 () Bool)

(assert (=> b!4059400 (= e!2519018 (or (not (= lt!1449227 Nil!43373)) (= lt!1449894 (t!336350 lt!1449255))))))

(assert (= (and d!1206305 c!701061) b!4059397))

(assert (= (and d!1206305 (not c!701061)) b!4059398))

(assert (= (and d!1206305 res!1655678) b!4059399))

(assert (= (and b!4059399 res!1655677) b!4059400))

(declare-fun m!4664533 () Bool)

(assert (=> b!4059399 m!4664533))

(assert (=> b!4059399 m!4663815))

(assert (=> b!4059399 m!4663235))

(declare-fun m!4664535 () Bool)

(assert (=> b!4059398 m!4664535))

(declare-fun m!4664537 () Bool)

(assert (=> d!1206305 m!4664537))

(assert (=> d!1206305 m!4664481))

(assert (=> d!1206305 m!4663243))

(assert (=> b!4058498 d!1206305))

(declare-fun b!4059403 () Bool)

(declare-fun res!1655679 () Bool)

(declare-fun e!2519020 () Bool)

(assert (=> b!4059403 (=> (not res!1655679) (not e!2519020))))

(declare-fun lt!1449895 () List!43497)

(assert (=> b!4059403 (= res!1655679 (= (size!32428 lt!1449895) (+ (size!32428 (t!336350 lt!1449249)) (size!32428 newSuffixResult!27))))))

(declare-fun b!4059401 () Bool)

(declare-fun e!2519021 () List!43497)

(assert (=> b!4059401 (= e!2519021 newSuffixResult!27)))

(declare-fun b!4059402 () Bool)

(assert (=> b!4059402 (= e!2519021 (Cons!43373 (h!48793 (t!336350 lt!1449249)) (++!11362 (t!336350 (t!336350 lt!1449249)) newSuffixResult!27)))))

(declare-fun d!1206307 () Bool)

(assert (=> d!1206307 e!2519020))

(declare-fun res!1655680 () Bool)

(assert (=> d!1206307 (=> (not res!1655680) (not e!2519020))))

(assert (=> d!1206307 (= res!1655680 (= (content!6612 lt!1449895) ((_ map or) (content!6612 (t!336350 lt!1449249)) (content!6612 newSuffixResult!27))))))

(assert (=> d!1206307 (= lt!1449895 e!2519021)))

(declare-fun c!701062 () Bool)

(assert (=> d!1206307 (= c!701062 ((_ is Nil!43373) (t!336350 lt!1449249)))))

(assert (=> d!1206307 (= (++!11362 (t!336350 lt!1449249) newSuffixResult!27) lt!1449895)))

(declare-fun b!4059404 () Bool)

(assert (=> b!4059404 (= e!2519020 (or (not (= newSuffixResult!27 Nil!43373)) (= lt!1449895 (t!336350 lt!1449249))))))

(assert (= (and d!1206307 c!701062) b!4059401))

(assert (= (and d!1206307 (not c!701062)) b!4059402))

(assert (= (and d!1206307 res!1655680) b!4059403))

(assert (= (and b!4059403 res!1655679) b!4059404))

(declare-fun m!4664539 () Bool)

(assert (=> b!4059403 m!4664539))

(assert (=> b!4059403 m!4663619))

(assert (=> b!4059403 m!4662635))

(declare-fun m!4664541 () Bool)

(assert (=> b!4059402 m!4664541))

(declare-fun m!4664543 () Bool)

(assert (=> d!1206307 m!4664543))

(assert (=> d!1206307 m!4664315))

(assert (=> d!1206307 m!4662643))

(assert (=> b!4058589 d!1206307))

(declare-fun d!1206309 () Bool)

(declare-fun lt!1449896 () Int)

(assert (=> d!1206309 (>= lt!1449896 0)))

(declare-fun e!2519022 () Int)

(assert (=> d!1206309 (= lt!1449896 e!2519022)))

(declare-fun c!701063 () Bool)

(assert (=> d!1206309 (= c!701063 ((_ is Nil!43373) lt!1449571))))

(assert (=> d!1206309 (= (size!32428 lt!1449571) lt!1449896)))

(declare-fun b!4059405 () Bool)

(assert (=> b!4059405 (= e!2519022 0)))

(declare-fun b!4059406 () Bool)

(assert (=> b!4059406 (= e!2519022 (+ 1 (size!32428 (t!336350 lt!1449571))))))

(assert (= (and d!1206309 c!701063) b!4059405))

(assert (= (and d!1206309 (not c!701063)) b!4059406))

(declare-fun m!4664545 () Bool)

(assert (=> b!4059406 m!4664545))

(assert (=> b!4058838 d!1206309))

(assert (=> b!4058838 d!1205973))

(declare-fun d!1206311 () Bool)

(declare-fun lt!1449897 () Int)

(assert (=> d!1206311 (>= lt!1449897 0)))

(declare-fun e!2519023 () Int)

(assert (=> d!1206311 (= lt!1449897 e!2519023)))

(declare-fun c!701064 () Bool)

(assert (=> d!1206311 (= c!701064 ((_ is Nil!43373) lt!1449227))))

(assert (=> d!1206311 (= (size!32428 lt!1449227) lt!1449897)))

(declare-fun b!4059407 () Bool)

(assert (=> b!4059407 (= e!2519023 0)))

(declare-fun b!4059408 () Bool)

(assert (=> b!4059408 (= e!2519023 (+ 1 (size!32428 (t!336350 lt!1449227))))))

(assert (= (and d!1206311 c!701064) b!4059407))

(assert (= (and d!1206311 (not c!701064)) b!4059408))

(declare-fun m!4664547 () Bool)

(assert (=> b!4059408 m!4664547))

(assert (=> b!4058838 d!1206311))

(assert (=> b!4058550 d!1205999))

(assert (=> b!4058114 d!1206083))

(assert (=> b!4058114 d!1206271))

(declare-fun b!4059411 () Bool)

(declare-fun e!2519024 () Bool)

(assert (=> b!4059411 (= e!2519024 (isPrefix!4047 (tail!6303 (tail!6303 lt!1449231)) (tail!6303 (tail!6303 lt!1449231))))))

(declare-fun b!4059409 () Bool)

(declare-fun e!2519026 () Bool)

(assert (=> b!4059409 (= e!2519026 e!2519024)))

(declare-fun res!1655681 () Bool)

(assert (=> b!4059409 (=> (not res!1655681) (not e!2519024))))

(assert (=> b!4059409 (= res!1655681 (not ((_ is Nil!43373) (tail!6303 lt!1449231))))))

(declare-fun b!4059410 () Bool)

(declare-fun res!1655682 () Bool)

(assert (=> b!4059410 (=> (not res!1655682) (not e!2519024))))

(assert (=> b!4059410 (= res!1655682 (= (head!8571 (tail!6303 lt!1449231)) (head!8571 (tail!6303 lt!1449231))))))

(declare-fun d!1206313 () Bool)

(declare-fun e!2519025 () Bool)

(assert (=> d!1206313 e!2519025))

(declare-fun res!1655683 () Bool)

(assert (=> d!1206313 (=> res!1655683 e!2519025)))

(declare-fun lt!1449898 () Bool)

(assert (=> d!1206313 (= res!1655683 (not lt!1449898))))

(assert (=> d!1206313 (= lt!1449898 e!2519026)))

(declare-fun res!1655684 () Bool)

(assert (=> d!1206313 (=> res!1655684 e!2519026)))

(assert (=> d!1206313 (= res!1655684 ((_ is Nil!43373) (tail!6303 lt!1449231)))))

(assert (=> d!1206313 (= (isPrefix!4047 (tail!6303 lt!1449231) (tail!6303 lt!1449231)) lt!1449898)))

(declare-fun b!4059412 () Bool)

(assert (=> b!4059412 (= e!2519025 (>= (size!32428 (tail!6303 lt!1449231)) (size!32428 (tail!6303 lt!1449231))))))

(assert (= (and d!1206313 (not res!1655684)) b!4059409))

(assert (= (and b!4059409 res!1655681) b!4059410))

(assert (= (and b!4059410 res!1655682) b!4059411))

(assert (= (and d!1206313 (not res!1655683)) b!4059412))

(assert (=> b!4059411 m!4662651))

(assert (=> b!4059411 m!4664403))

(assert (=> b!4059411 m!4662651))

(assert (=> b!4059411 m!4664403))

(assert (=> b!4059411 m!4664403))

(assert (=> b!4059411 m!4664403))

(declare-fun m!4664549 () Bool)

(assert (=> b!4059411 m!4664549))

(assert (=> b!4059410 m!4662651))

(assert (=> b!4059410 m!4664407))

(assert (=> b!4059410 m!4662651))

(assert (=> b!4059410 m!4664407))

(assert (=> b!4059412 m!4662651))

(assert (=> b!4059412 m!4664409))

(assert (=> b!4059412 m!4662651))

(assert (=> b!4059412 m!4664409))

(assert (=> b!4058808 d!1206313))

(assert (=> b!4058808 d!1206221))

(assert (=> b!4058853 d!1205991))

(assert (=> b!4058853 d!1205993))

(declare-fun b!4059415 () Bool)

(declare-fun res!1655685 () Bool)

(declare-fun e!2519027 () Bool)

(assert (=> b!4059415 (=> (not res!1655685) (not e!2519027))))

(declare-fun lt!1449899 () List!43497)

(assert (=> b!4059415 (= res!1655685 (= (size!32428 lt!1449899) (+ (size!32428 (t!336350 lt!1449249)) (size!32428 (_2!24351 (v!39791 lt!1449276))))))))

(declare-fun b!4059413 () Bool)

(declare-fun e!2519028 () List!43497)

(assert (=> b!4059413 (= e!2519028 (_2!24351 (v!39791 lt!1449276)))))

(declare-fun b!4059414 () Bool)

(assert (=> b!4059414 (= e!2519028 (Cons!43373 (h!48793 (t!336350 lt!1449249)) (++!11362 (t!336350 (t!336350 lt!1449249)) (_2!24351 (v!39791 lt!1449276)))))))

(declare-fun d!1206315 () Bool)

(assert (=> d!1206315 e!2519027))

(declare-fun res!1655686 () Bool)

(assert (=> d!1206315 (=> (not res!1655686) (not e!2519027))))

(assert (=> d!1206315 (= res!1655686 (= (content!6612 lt!1449899) ((_ map or) (content!6612 (t!336350 lt!1449249)) (content!6612 (_2!24351 (v!39791 lt!1449276))))))))

(assert (=> d!1206315 (= lt!1449899 e!2519028)))

(declare-fun c!701065 () Bool)

(assert (=> d!1206315 (= c!701065 ((_ is Nil!43373) (t!336350 lt!1449249)))))

(assert (=> d!1206315 (= (++!11362 (t!336350 lt!1449249) (_2!24351 (v!39791 lt!1449276))) lt!1449899)))

(declare-fun b!4059416 () Bool)

(assert (=> b!4059416 (= e!2519027 (or (not (= (_2!24351 (v!39791 lt!1449276)) Nil!43373)) (= lt!1449899 (t!336350 lt!1449249))))))

(assert (= (and d!1206315 c!701065) b!4059413))

(assert (= (and d!1206315 (not c!701065)) b!4059414))

(assert (= (and d!1206315 res!1655686) b!4059415))

(assert (= (and b!4059415 res!1655685) b!4059416))

(declare-fun m!4664551 () Bool)

(assert (=> b!4059415 m!4664551))

(assert (=> b!4059415 m!4663619))

(assert (=> b!4059415 m!4663631))

(declare-fun m!4664553 () Bool)

(assert (=> b!4059414 m!4664553))

(declare-fun m!4664555 () Bool)

(assert (=> d!1206315 m!4664555))

(assert (=> d!1206315 m!4664315))

(assert (=> d!1206315 m!4663637))

(assert (=> b!4058759 d!1206315))

(assert (=> b!4058116 d!1206023))

(assert (=> b!4058116 d!1205685))

(declare-fun d!1206317 () Bool)

(declare-fun c!701066 () Bool)

(assert (=> d!1206317 (= c!701066 ((_ is Nil!43373) lt!1449453))))

(declare-fun e!2519029 () (InoxSet C!23916))

(assert (=> d!1206317 (= (content!6612 lt!1449453) e!2519029)))

(declare-fun b!4059417 () Bool)

(assert (=> b!4059417 (= e!2519029 ((as const (Array C!23916 Bool)) false))))

(declare-fun b!4059418 () Bool)

(assert (=> b!4059418 (= e!2519029 ((_ map or) (store ((as const (Array C!23916 Bool)) false) (h!48793 lt!1449453) true) (content!6612 (t!336350 lt!1449453))))))

(assert (= (and d!1206317 c!701066) b!4059417))

(assert (= (and d!1206317 (not c!701066)) b!4059418))

(declare-fun m!4664557 () Bool)

(assert (=> b!4059418 m!4664557))

(declare-fun m!4664559 () Bool)

(assert (=> b!4059418 m!4664559))

(assert (=> d!1205793 d!1206317))

(assert (=> d!1205793 d!1206009))

(declare-fun d!1206319 () Bool)

(declare-fun c!701067 () Bool)

(assert (=> d!1206319 (= c!701067 ((_ is Nil!43373) lt!1449219))))

(declare-fun e!2519030 () (InoxSet C!23916))

(assert (=> d!1206319 (= (content!6612 lt!1449219) e!2519030)))

(declare-fun b!4059419 () Bool)

(assert (=> b!4059419 (= e!2519030 ((as const (Array C!23916 Bool)) false))))

(declare-fun b!4059420 () Bool)

(assert (=> b!4059420 (= e!2519030 ((_ map or) (store ((as const (Array C!23916 Bool)) false) (h!48793 lt!1449219) true) (content!6612 (t!336350 lt!1449219))))))

(assert (= (and d!1206319 c!701067) b!4059419))

(assert (= (and d!1206319 (not c!701067)) b!4059420))

(declare-fun m!4664561 () Bool)

(assert (=> b!4059420 m!4664561))

(declare-fun m!4664563 () Bool)

(assert (=> b!4059420 m!4664563))

(assert (=> d!1205793 d!1206319))

(assert (=> b!4058851 d!1205991))

(assert (=> b!4058851 d!1205993))

(declare-fun b!4059423 () Bool)

(declare-fun res!1655687 () Bool)

(declare-fun e!2519031 () Bool)

(assert (=> b!4059423 (=> (not res!1655687) (not e!2519031))))

(declare-fun lt!1449900 () List!43497)

(assert (=> b!4059423 (= res!1655687 (= (size!32428 lt!1449900) (+ (size!32428 (t!336350 prefix!494)) (size!32428 newSuffix!27))))))

(declare-fun b!4059421 () Bool)

(declare-fun e!2519032 () List!43497)

(assert (=> b!4059421 (= e!2519032 newSuffix!27)))

(declare-fun b!4059422 () Bool)

(assert (=> b!4059422 (= e!2519032 (Cons!43373 (h!48793 (t!336350 prefix!494)) (++!11362 (t!336350 (t!336350 prefix!494)) newSuffix!27)))))

(declare-fun d!1206321 () Bool)

(assert (=> d!1206321 e!2519031))

(declare-fun res!1655688 () Bool)

(assert (=> d!1206321 (=> (not res!1655688) (not e!2519031))))

(assert (=> d!1206321 (= res!1655688 (= (content!6612 lt!1449900) ((_ map or) (content!6612 (t!336350 prefix!494)) (content!6612 newSuffix!27))))))

(assert (=> d!1206321 (= lt!1449900 e!2519032)))

(declare-fun c!701068 () Bool)

(assert (=> d!1206321 (= c!701068 ((_ is Nil!43373) (t!336350 prefix!494)))))

(assert (=> d!1206321 (= (++!11362 (t!336350 prefix!494) newSuffix!27) lt!1449900)))

(declare-fun b!4059424 () Bool)

(assert (=> b!4059424 (= e!2519031 (or (not (= newSuffix!27 Nil!43373)) (= lt!1449900 (t!336350 prefix!494))))))

(assert (= (and d!1206321 c!701068) b!4059421))

(assert (= (and d!1206321 (not c!701068)) b!4059422))

(assert (= (and d!1206321 res!1655688) b!4059423))

(assert (= (and b!4059423 res!1655687) b!4059424))

(declare-fun m!4664565 () Bool)

(assert (=> b!4059423 m!4664565))

(assert (=> b!4059423 m!4662937))

(assert (=> b!4059423 m!4662513))

(declare-fun m!4664567 () Bool)

(assert (=> b!4059422 m!4664567))

(declare-fun m!4664569 () Bool)

(assert (=> d!1206321 m!4664569))

(assert (=> d!1206321 m!4663851))

(assert (=> d!1206321 m!4662631))

(assert (=> b!4058094 d!1206321))

(assert (=> b!4058780 d!1205689))

(assert (=> b!4058780 d!1205685))

(declare-fun b!4059427 () Bool)

(declare-fun res!1655689 () Bool)

(declare-fun e!2519033 () Bool)

(assert (=> b!4059427 (=> (not res!1655689) (not e!2519033))))

(declare-fun lt!1449901 () List!43497)

(assert (=> b!4059427 (= res!1655689 (= (size!32428 lt!1449901) (+ (size!32428 (++!11362 lt!1449266 lt!1449238)) (size!32428 suffix!1299))))))

(declare-fun b!4059425 () Bool)

(declare-fun e!2519034 () List!43497)

(assert (=> b!4059425 (= e!2519034 suffix!1299)))

(declare-fun b!4059426 () Bool)

(assert (=> b!4059426 (= e!2519034 (Cons!43373 (h!48793 (++!11362 lt!1449266 lt!1449238)) (++!11362 (t!336350 (++!11362 lt!1449266 lt!1449238)) suffix!1299)))))

(declare-fun d!1206323 () Bool)

(assert (=> d!1206323 e!2519033))

(declare-fun res!1655690 () Bool)

(assert (=> d!1206323 (=> (not res!1655690) (not e!2519033))))

(assert (=> d!1206323 (= res!1655690 (= (content!6612 lt!1449901) ((_ map or) (content!6612 (++!11362 lt!1449266 lt!1449238)) (content!6612 suffix!1299))))))

(assert (=> d!1206323 (= lt!1449901 e!2519034)))

(declare-fun c!701069 () Bool)

(assert (=> d!1206323 (= c!701069 ((_ is Nil!43373) (++!11362 lt!1449266 lt!1449238)))))

(assert (=> d!1206323 (= (++!11362 (++!11362 lt!1449266 lt!1449238) suffix!1299) lt!1449901)))

(declare-fun b!4059428 () Bool)

(assert (=> b!4059428 (= e!2519033 (or (not (= suffix!1299 Nil!43373)) (= lt!1449901 (++!11362 lt!1449266 lt!1449238))))))

(assert (= (and d!1206323 c!701069) b!4059425))

(assert (= (and d!1206323 (not c!701069)) b!4059426))

(assert (= (and d!1206323 res!1655690) b!4059427))

(assert (= (and b!4059427 res!1655689) b!4059428))

(declare-fun m!4664571 () Bool)

(assert (=> b!4059427 m!4664571))

(assert (=> b!4059427 m!4662427))

(declare-fun m!4664573 () Bool)

(assert (=> b!4059427 m!4664573))

(assert (=> b!4059427 m!4662511))

(declare-fun m!4664575 () Bool)

(assert (=> b!4059426 m!4664575))

(declare-fun m!4664577 () Bool)

(assert (=> d!1206323 m!4664577))

(assert (=> d!1206323 m!4662427))

(declare-fun m!4664579 () Bool)

(assert (=> d!1206323 m!4664579))

(assert (=> d!1206323 m!4662849))

(assert (=> d!1205791 d!1206323))

(assert (=> d!1205791 d!1205789))

(declare-fun b!4059431 () Bool)

(declare-fun res!1655691 () Bool)

(declare-fun e!2519035 () Bool)

(assert (=> b!4059431 (=> (not res!1655691) (not e!2519035))))

(declare-fun lt!1449902 () List!43497)

(assert (=> b!4059431 (= res!1655691 (= (size!32428 lt!1449902) (+ (size!32428 lt!1449266) (size!32428 (++!11362 lt!1449238 suffix!1299)))))))

(declare-fun b!4059429 () Bool)

(declare-fun e!2519036 () List!43497)

(assert (=> b!4059429 (= e!2519036 (++!11362 lt!1449238 suffix!1299))))

(declare-fun b!4059430 () Bool)

(assert (=> b!4059430 (= e!2519036 (Cons!43373 (h!48793 lt!1449266) (++!11362 (t!336350 lt!1449266) (++!11362 lt!1449238 suffix!1299))))))

(declare-fun d!1206325 () Bool)

(assert (=> d!1206325 e!2519035))

(declare-fun res!1655692 () Bool)

(assert (=> d!1206325 (=> (not res!1655692) (not e!2519035))))

(assert (=> d!1206325 (= res!1655692 (= (content!6612 lt!1449902) ((_ map or) (content!6612 lt!1449266) (content!6612 (++!11362 lt!1449238 suffix!1299)))))))

(assert (=> d!1206325 (= lt!1449902 e!2519036)))

(declare-fun c!701070 () Bool)

(assert (=> d!1206325 (= c!701070 ((_ is Nil!43373) lt!1449266))))

(assert (=> d!1206325 (= (++!11362 lt!1449266 (++!11362 lt!1449238 suffix!1299)) lt!1449902)))

(declare-fun b!4059432 () Bool)

(assert (=> b!4059432 (= e!2519035 (or (not (= (++!11362 lt!1449238 suffix!1299) Nil!43373)) (= lt!1449902 lt!1449266)))))

(assert (= (and d!1206325 c!701070) b!4059429))

(assert (= (and d!1206325 (not c!701070)) b!4059430))

(assert (= (and d!1206325 res!1655692) b!4059431))

(assert (= (and b!4059431 res!1655691) b!4059432))

(declare-fun m!4664581 () Bool)

(assert (=> b!4059431 m!4664581))

(assert (=> b!4059431 m!4662529))

(assert (=> b!4059431 m!4662465))

(declare-fun m!4664583 () Bool)

(assert (=> b!4059431 m!4664583))

(assert (=> b!4059430 m!4662465))

(declare-fun m!4664585 () Bool)

(assert (=> b!4059430 m!4664585))

(declare-fun m!4664587 () Bool)

(assert (=> d!1206325 m!4664587))

(assert (=> d!1206325 m!4662641))

(assert (=> d!1206325 m!4662465))

(declare-fun m!4664589 () Bool)

(assert (=> d!1206325 m!4664589))

(assert (=> d!1205791 d!1206325))

(assert (=> d!1205791 d!1205927))

(declare-fun d!1206327 () Bool)

(assert (=> d!1206327 (= (++!11362 (++!11362 lt!1449266 lt!1449238) suffix!1299) (++!11362 lt!1449266 (++!11362 lt!1449238 suffix!1299)))))

(assert (=> d!1206327 true))

(declare-fun _$52!2343 () Unit!62757)

(assert (=> d!1206327 (= (choose!24665 lt!1449266 lt!1449238 suffix!1299) _$52!2343)))

(declare-fun bs!591999 () Bool)

(assert (= bs!591999 d!1206327))

(assert (=> bs!591999 m!4662427))

(assert (=> bs!591999 m!4662427))

(assert (=> bs!591999 m!4663219))

(assert (=> bs!591999 m!4662465))

(assert (=> bs!591999 m!4662465))

(assert (=> bs!591999 m!4663221))

(assert (=> d!1205791 d!1206327))

(assert (=> b!4058824 d!1206021))

(declare-fun b!4059433 () Bool)

(declare-fun e!2519039 () Bool)

(assert (=> b!4059433 (= e!2519039 (nullable!4168 (regex!6960 (rule!10050 (_1!24351 (get!14226 lt!1449345))))))))

(declare-fun b!4059434 () Bool)

(declare-fun res!1655696 () Bool)

(declare-fun e!2519038 () Bool)

(assert (=> b!4059434 (=> (not res!1655696) (not e!2519038))))

(assert (=> b!4059434 (= res!1655696 (isEmpty!25885 (tail!6303 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449345)))))))))

(declare-fun b!4059435 () Bool)

(declare-fun e!2519043 () Bool)

(declare-fun e!2519041 () Bool)

(assert (=> b!4059435 (= e!2519043 e!2519041)))

(declare-fun res!1655695 () Bool)

(assert (=> b!4059435 (=> res!1655695 e!2519041)))

(declare-fun call!288151 () Bool)

(assert (=> b!4059435 (= res!1655695 call!288151)))

(declare-fun b!4059436 () Bool)

(declare-fun res!1655694 () Bool)

(assert (=> b!4059436 (=> res!1655694 e!2519041)))

(assert (=> b!4059436 (= res!1655694 (not (isEmpty!25885 (tail!6303 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449345))))))))))

(declare-fun b!4059437 () Bool)

(declare-fun res!1655697 () Bool)

(assert (=> b!4059437 (=> (not res!1655697) (not e!2519038))))

(assert (=> b!4059437 (= res!1655697 (not call!288151))))

(declare-fun b!4059438 () Bool)

(assert (=> b!4059438 (= e!2519041 (not (= (head!8571 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449345))))) (c!700781 (regex!6960 (rule!10050 (_1!24351 (get!14226 lt!1449345))))))))))

(declare-fun b!4059439 () Bool)

(declare-fun e!2519040 () Bool)

(declare-fun e!2519042 () Bool)

(assert (=> b!4059439 (= e!2519040 e!2519042)))

(declare-fun c!701071 () Bool)

(assert (=> b!4059439 (= c!701071 ((_ is EmptyLang!11865) (regex!6960 (rule!10050 (_1!24351 (get!14226 lt!1449345))))))))

(declare-fun d!1206329 () Bool)

(assert (=> d!1206329 e!2519040))

(declare-fun c!701073 () Bool)

(assert (=> d!1206329 (= c!701073 ((_ is EmptyExpr!11865) (regex!6960 (rule!10050 (_1!24351 (get!14226 lt!1449345))))))))

(declare-fun lt!1449903 () Bool)

(assert (=> d!1206329 (= lt!1449903 e!2519039)))

(declare-fun c!701072 () Bool)

(assert (=> d!1206329 (= c!701072 (isEmpty!25885 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449345))))))))

(assert (=> d!1206329 (validRegex!5368 (regex!6960 (rule!10050 (_1!24351 (get!14226 lt!1449345)))))))

(assert (=> d!1206329 (= (matchR!5818 (regex!6960 (rule!10050 (_1!24351 (get!14226 lt!1449345)))) (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449345))))) lt!1449903)))

(declare-fun b!4059440 () Bool)

(declare-fun res!1655699 () Bool)

(declare-fun e!2519037 () Bool)

(assert (=> b!4059440 (=> res!1655699 e!2519037)))

(assert (=> b!4059440 (= res!1655699 (not ((_ is ElementMatch!11865) (regex!6960 (rule!10050 (_1!24351 (get!14226 lt!1449345)))))))))

(assert (=> b!4059440 (= e!2519042 e!2519037)))

(declare-fun b!4059441 () Bool)

(assert (=> b!4059441 (= e!2519039 (matchR!5818 (derivativeStep!3573 (regex!6960 (rule!10050 (_1!24351 (get!14226 lt!1449345)))) (head!8571 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449345)))))) (tail!6303 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449345)))))))))

(declare-fun b!4059442 () Bool)

(assert (=> b!4059442 (= e!2519038 (= (head!8571 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449345))))) (c!700781 (regex!6960 (rule!10050 (_1!24351 (get!14226 lt!1449345)))))))))

(declare-fun b!4059443 () Bool)

(assert (=> b!4059443 (= e!2519042 (not lt!1449903))))

(declare-fun b!4059444 () Bool)

(assert (=> b!4059444 (= e!2519037 e!2519043)))

(declare-fun res!1655700 () Bool)

(assert (=> b!4059444 (=> (not res!1655700) (not e!2519043))))

(assert (=> b!4059444 (= res!1655700 (not lt!1449903))))

(declare-fun bm!288146 () Bool)

(assert (=> bm!288146 (= call!288151 (isEmpty!25885 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449345))))))))

(declare-fun b!4059445 () Bool)

(assert (=> b!4059445 (= e!2519040 (= lt!1449903 call!288151))))

(declare-fun b!4059446 () Bool)

(declare-fun res!1655693 () Bool)

(assert (=> b!4059446 (=> res!1655693 e!2519037)))

(assert (=> b!4059446 (= res!1655693 e!2519038)))

(declare-fun res!1655698 () Bool)

(assert (=> b!4059446 (=> (not res!1655698) (not e!2519038))))

(assert (=> b!4059446 (= res!1655698 lt!1449903)))

(assert (= (and d!1206329 c!701072) b!4059433))

(assert (= (and d!1206329 (not c!701072)) b!4059441))

(assert (= (and d!1206329 c!701073) b!4059445))

(assert (= (and d!1206329 (not c!701073)) b!4059439))

(assert (= (and b!4059439 c!701071) b!4059443))

(assert (= (and b!4059439 (not c!701071)) b!4059440))

(assert (= (and b!4059440 (not res!1655699)) b!4059446))

(assert (= (and b!4059446 res!1655698) b!4059437))

(assert (= (and b!4059437 res!1655697) b!4059434))

(assert (= (and b!4059434 res!1655696) b!4059442))

(assert (= (and b!4059446 (not res!1655693)) b!4059444))

(assert (= (and b!4059444 res!1655700) b!4059435))

(assert (= (and b!4059435 (not res!1655695)) b!4059436))

(assert (= (and b!4059436 (not res!1655694)) b!4059438))

(assert (= (or b!4059445 b!4059435 b!4059437) bm!288146))

(declare-fun m!4664591 () Bool)

(assert (=> b!4059433 m!4664591))

(assert (=> b!4059436 m!4662803))

(declare-fun m!4664593 () Bool)

(assert (=> b!4059436 m!4664593))

(assert (=> b!4059436 m!4664593))

(declare-fun m!4664595 () Bool)

(assert (=> b!4059436 m!4664595))

(assert (=> d!1206329 m!4662803))

(declare-fun m!4664597 () Bool)

(assert (=> d!1206329 m!4664597))

(declare-fun m!4664599 () Bool)

(assert (=> d!1206329 m!4664599))

(assert (=> bm!288146 m!4662803))

(assert (=> bm!288146 m!4664597))

(assert (=> b!4059434 m!4662803))

(assert (=> b!4059434 m!4664593))

(assert (=> b!4059434 m!4664593))

(assert (=> b!4059434 m!4664595))

(assert (=> b!4059438 m!4662803))

(declare-fun m!4664601 () Bool)

(assert (=> b!4059438 m!4664601))

(assert (=> b!4059441 m!4662803))

(assert (=> b!4059441 m!4664601))

(assert (=> b!4059441 m!4664601))

(declare-fun m!4664603 () Bool)

(assert (=> b!4059441 m!4664603))

(assert (=> b!4059441 m!4662803))

(assert (=> b!4059441 m!4664593))

(assert (=> b!4059441 m!4664603))

(assert (=> b!4059441 m!4664593))

(declare-fun m!4664605 () Bool)

(assert (=> b!4059441 m!4664605))

(assert (=> b!4059442 m!4662803))

(assert (=> b!4059442 m!4664601))

(assert (=> b!4058264 d!1206329))

(assert (=> b!4058264 d!1206129))

(assert (=> b!4058264 d!1206125))

(assert (=> b!4058264 d!1206127))

(assert (=> b!4058311 d!1206059))

(declare-fun d!1206331 () Bool)

(assert (=> d!1206331 (= (apply!10149 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449359)))) (seqFromList!5177 (originalCharacters!7560 (_1!24351 (get!14226 lt!1449359))))) (dynLambda!18426 (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449359))))) (seqFromList!5177 (originalCharacters!7560 (_1!24351 (get!14226 lt!1449359))))))))

(declare-fun b_lambda!118621 () Bool)

(assert (=> (not b_lambda!118621) (not d!1206331)))

(declare-fun t!336452 () Bool)

(declare-fun tb!244177 () Bool)

(assert (=> (and b!4058071 (= (toValue!9516 (transformation!6960 (h!48795 rules!2999))) (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449359)))))) t!336452) tb!244177))

(declare-fun result!295890 () Bool)

(assert (=> tb!244177 (= result!295890 (inv!21 (dynLambda!18426 (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449359))))) (seqFromList!5177 (originalCharacters!7560 (_1!24351 (get!14226 lt!1449359)))))))))

(declare-fun m!4664607 () Bool)

(assert (=> tb!244177 m!4664607))

(assert (=> d!1206331 t!336452))

(declare-fun b_and!312113 () Bool)

(assert (= b_and!312107 (and (=> t!336452 result!295890) b_and!312113)))

(declare-fun tb!244179 () Bool)

(declare-fun t!336454 () Bool)

(assert (=> (and b!4058069 (= (toValue!9516 (transformation!6960 (rule!10050 token!484))) (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449359)))))) t!336454) tb!244179))

(declare-fun result!295892 () Bool)

(assert (= result!295892 result!295890))

(assert (=> d!1206331 t!336454))

(declare-fun b_and!312115 () Bool)

(assert (= b_and!312109 (and (=> t!336454 result!295892) b_and!312115)))

(declare-fun t!336456 () Bool)

(declare-fun tb!244181 () Bool)

(assert (=> (and b!4058893 (= (toValue!9516 (transformation!6960 (h!48795 (t!336352 rules!2999)))) (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449359)))))) t!336456) tb!244181))

(declare-fun result!295894 () Bool)

(assert (= result!295894 result!295890))

(assert (=> d!1206331 t!336456))

(declare-fun b_and!312117 () Bool)

(assert (= b_and!312111 (and (=> t!336456 result!295894) b_and!312117)))

(assert (=> d!1206331 m!4662867))

(declare-fun m!4664609 () Bool)

(assert (=> d!1206331 m!4664609))

(assert (=> b!4058311 d!1206331))

(declare-fun d!1206333 () Bool)

(assert (=> d!1206333 (= (seqFromList!5177 (originalCharacters!7560 (_1!24351 (get!14226 lt!1449359)))) (fromListB!2362 (originalCharacters!7560 (_1!24351 (get!14226 lt!1449359)))))))

(declare-fun bs!592000 () Bool)

(assert (= bs!592000 d!1206333))

(declare-fun m!4664611 () Bool)

(assert (=> bs!592000 m!4664611))

(assert (=> b!4058311 d!1206333))

(declare-fun d!1206335 () Bool)

(declare-fun e!2519045 () Bool)

(assert (=> d!1206335 e!2519045))

(declare-fun res!1655701 () Bool)

(assert (=> d!1206335 (=> (not res!1655701) (not e!2519045))))

(declare-fun lt!1449904 () BalanceConc!25936)

(assert (=> d!1206335 (= res!1655701 (= (list!16164 lt!1449904) lt!1449249))))

(assert (=> d!1206335 (= lt!1449904 (BalanceConc!25937 (fromList!868 lt!1449249)))))

(assert (=> d!1206335 (= (fromListB!2362 lt!1449249) lt!1449904)))

(declare-fun b!4059447 () Bool)

(assert (=> b!4059447 (= e!2519045 (isBalanced!3688 (fromList!868 lt!1449249)))))

(assert (= (and d!1206335 res!1655701) b!4059447))

(declare-fun m!4664613 () Bool)

(assert (=> d!1206335 m!4664613))

(declare-fun m!4664615 () Bool)

(assert (=> d!1206335 m!4664615))

(assert (=> b!4059447 m!4664615))

(assert (=> b!4059447 m!4664615))

(declare-fun m!4664617 () Bool)

(assert (=> b!4059447 m!4664617))

(assert (=> d!1205905 d!1206335))

(declare-fun b!4059448 () Bool)

(declare-fun e!2519048 () Bool)

(assert (=> b!4059448 (= e!2519048 (nullable!4168 (derivativeStep!3573 (regex!6960 (rule!10050 token!484)) (head!8571 lt!1449266))))))

(declare-fun b!4059449 () Bool)

(declare-fun res!1655705 () Bool)

(declare-fun e!2519047 () Bool)

(assert (=> b!4059449 (=> (not res!1655705) (not e!2519047))))

(assert (=> b!4059449 (= res!1655705 (isEmpty!25885 (tail!6303 (tail!6303 lt!1449266))))))

(declare-fun b!4059450 () Bool)

(declare-fun e!2519052 () Bool)

(declare-fun e!2519050 () Bool)

(assert (=> b!4059450 (= e!2519052 e!2519050)))

(declare-fun res!1655704 () Bool)

(assert (=> b!4059450 (=> res!1655704 e!2519050)))

(declare-fun call!288152 () Bool)

(assert (=> b!4059450 (= res!1655704 call!288152)))

(declare-fun b!4059451 () Bool)

(declare-fun res!1655703 () Bool)

(assert (=> b!4059451 (=> res!1655703 e!2519050)))

(assert (=> b!4059451 (= res!1655703 (not (isEmpty!25885 (tail!6303 (tail!6303 lt!1449266)))))))

(declare-fun b!4059452 () Bool)

(declare-fun res!1655706 () Bool)

(assert (=> b!4059452 (=> (not res!1655706) (not e!2519047))))

(assert (=> b!4059452 (= res!1655706 (not call!288152))))

(declare-fun b!4059453 () Bool)

(assert (=> b!4059453 (= e!2519050 (not (= (head!8571 (tail!6303 lt!1449266)) (c!700781 (derivativeStep!3573 (regex!6960 (rule!10050 token!484)) (head!8571 lt!1449266))))))))

(declare-fun b!4059454 () Bool)

(declare-fun e!2519049 () Bool)

(declare-fun e!2519051 () Bool)

(assert (=> b!4059454 (= e!2519049 e!2519051)))

(declare-fun c!701074 () Bool)

(assert (=> b!4059454 (= c!701074 ((_ is EmptyLang!11865) (derivativeStep!3573 (regex!6960 (rule!10050 token!484)) (head!8571 lt!1449266))))))

(declare-fun d!1206337 () Bool)

(assert (=> d!1206337 e!2519049))

(declare-fun c!701076 () Bool)

(assert (=> d!1206337 (= c!701076 ((_ is EmptyExpr!11865) (derivativeStep!3573 (regex!6960 (rule!10050 token!484)) (head!8571 lt!1449266))))))

(declare-fun lt!1449905 () Bool)

(assert (=> d!1206337 (= lt!1449905 e!2519048)))

(declare-fun c!701075 () Bool)

(assert (=> d!1206337 (= c!701075 (isEmpty!25885 (tail!6303 lt!1449266)))))

(assert (=> d!1206337 (validRegex!5368 (derivativeStep!3573 (regex!6960 (rule!10050 token!484)) (head!8571 lt!1449266)))))

(assert (=> d!1206337 (= (matchR!5818 (derivativeStep!3573 (regex!6960 (rule!10050 token!484)) (head!8571 lt!1449266)) (tail!6303 lt!1449266)) lt!1449905)))

(declare-fun b!4059455 () Bool)

(declare-fun res!1655708 () Bool)

(declare-fun e!2519046 () Bool)

(assert (=> b!4059455 (=> res!1655708 e!2519046)))

(assert (=> b!4059455 (= res!1655708 (not ((_ is ElementMatch!11865) (derivativeStep!3573 (regex!6960 (rule!10050 token!484)) (head!8571 lt!1449266)))))))

(assert (=> b!4059455 (= e!2519051 e!2519046)))

(declare-fun b!4059456 () Bool)

(assert (=> b!4059456 (= e!2519048 (matchR!5818 (derivativeStep!3573 (derivativeStep!3573 (regex!6960 (rule!10050 token!484)) (head!8571 lt!1449266)) (head!8571 (tail!6303 lt!1449266))) (tail!6303 (tail!6303 lt!1449266))))))

(declare-fun b!4059457 () Bool)

(assert (=> b!4059457 (= e!2519047 (= (head!8571 (tail!6303 lt!1449266)) (c!700781 (derivativeStep!3573 (regex!6960 (rule!10050 token!484)) (head!8571 lt!1449266)))))))

(declare-fun b!4059458 () Bool)

(assert (=> b!4059458 (= e!2519051 (not lt!1449905))))

(declare-fun b!4059459 () Bool)

(assert (=> b!4059459 (= e!2519046 e!2519052)))

(declare-fun res!1655709 () Bool)

(assert (=> b!4059459 (=> (not res!1655709) (not e!2519052))))

(assert (=> b!4059459 (= res!1655709 (not lt!1449905))))

(declare-fun bm!288147 () Bool)

(assert (=> bm!288147 (= call!288152 (isEmpty!25885 (tail!6303 lt!1449266)))))

(declare-fun b!4059460 () Bool)

(assert (=> b!4059460 (= e!2519049 (= lt!1449905 call!288152))))

(declare-fun b!4059461 () Bool)

(declare-fun res!1655702 () Bool)

(assert (=> b!4059461 (=> res!1655702 e!2519046)))

(assert (=> b!4059461 (= res!1655702 e!2519047)))

(declare-fun res!1655707 () Bool)

(assert (=> b!4059461 (=> (not res!1655707) (not e!2519047))))

(assert (=> b!4059461 (= res!1655707 lt!1449905)))

(assert (= (and d!1206337 c!701075) b!4059448))

(assert (= (and d!1206337 (not c!701075)) b!4059456))

(assert (= (and d!1206337 c!701076) b!4059460))

(assert (= (and d!1206337 (not c!701076)) b!4059454))

(assert (= (and b!4059454 c!701074) b!4059458))

(assert (= (and b!4059454 (not c!701074)) b!4059455))

(assert (= (and b!4059455 (not res!1655708)) b!4059461))

(assert (= (and b!4059461 res!1655707) b!4059452))

(assert (= (and b!4059452 res!1655706) b!4059449))

(assert (= (and b!4059449 res!1655705) b!4059457))

(assert (= (and b!4059461 (not res!1655702)) b!4059459))

(assert (= (and b!4059459 res!1655709) b!4059450))

(assert (= (and b!4059450 (not res!1655704)) b!4059451))

(assert (= (and b!4059451 (not res!1655703)) b!4059453))

(assert (= (or b!4059460 b!4059450 b!4059452) bm!288147))

(assert (=> b!4059448 m!4663309))

(declare-fun m!4664619 () Bool)

(assert (=> b!4059448 m!4664619))

(assert (=> b!4059451 m!4662649))

(assert (=> b!4059451 m!4664351))

(assert (=> b!4059451 m!4664351))

(declare-fun m!4664621 () Bool)

(assert (=> b!4059451 m!4664621))

(assert (=> d!1206337 m!4662649))

(assert (=> d!1206337 m!4663305))

(assert (=> d!1206337 m!4663309))

(declare-fun m!4664623 () Bool)

(assert (=> d!1206337 m!4664623))

(assert (=> bm!288147 m!4662649))

(assert (=> bm!288147 m!4663305))

(assert (=> b!4059449 m!4662649))

(assert (=> b!4059449 m!4664351))

(assert (=> b!4059449 m!4664351))

(assert (=> b!4059449 m!4664621))

(assert (=> b!4059453 m!4662649))

(assert (=> b!4059453 m!4664357))

(assert (=> b!4059456 m!4662649))

(assert (=> b!4059456 m!4664357))

(assert (=> b!4059456 m!4663309))

(assert (=> b!4059456 m!4664357))

(declare-fun m!4664625 () Bool)

(assert (=> b!4059456 m!4664625))

(assert (=> b!4059456 m!4662649))

(assert (=> b!4059456 m!4664351))

(assert (=> b!4059456 m!4664625))

(assert (=> b!4059456 m!4664351))

(declare-fun m!4664627 () Bool)

(assert (=> b!4059456 m!4664627))

(assert (=> b!4059457 m!4662649))

(assert (=> b!4059457 m!4664357))

(assert (=> b!4058567 d!1206337))

(declare-fun bm!288148 () Bool)

(declare-fun call!288156 () Regex!11865)

(declare-fun call!288154 () Regex!11865)

(assert (=> bm!288148 (= call!288156 call!288154)))

(declare-fun b!4059462 () Bool)

(declare-fun c!701078 () Bool)

(assert (=> b!4059462 (= c!701078 (nullable!4168 (regOne!24242 (regex!6960 (rule!10050 token!484)))))))

(declare-fun e!2519055 () Regex!11865)

(declare-fun e!2519056 () Regex!11865)

(assert (=> b!4059462 (= e!2519055 e!2519056)))

(declare-fun d!1206339 () Bool)

(declare-fun lt!1449906 () Regex!11865)

(assert (=> d!1206339 (validRegex!5368 lt!1449906)))

(declare-fun e!2519057 () Regex!11865)

(assert (=> d!1206339 (= lt!1449906 e!2519057)))

(declare-fun c!701077 () Bool)

(assert (=> d!1206339 (= c!701077 (or ((_ is EmptyExpr!11865) (regex!6960 (rule!10050 token!484))) ((_ is EmptyLang!11865) (regex!6960 (rule!10050 token!484)))))))

(assert (=> d!1206339 (validRegex!5368 (regex!6960 (rule!10050 token!484)))))

(assert (=> d!1206339 (= (derivativeStep!3573 (regex!6960 (rule!10050 token!484)) (head!8571 lt!1449266)) lt!1449906)))

(declare-fun b!4059463 () Bool)

(assert (=> b!4059463 (= e!2519056 (Union!11865 (Concat!19056 call!288156 (regTwo!24242 (regex!6960 (rule!10050 token!484)))) EmptyLang!11865))))

(declare-fun bm!288149 () Bool)

(declare-fun c!701079 () Bool)

(declare-fun call!288155 () Regex!11865)

(assert (=> bm!288149 (= call!288155 (derivativeStep!3573 (ite c!701079 (regTwo!24243 (regex!6960 (rule!10050 token!484))) (regTwo!24242 (regex!6960 (rule!10050 token!484)))) (head!8571 lt!1449266)))))

(declare-fun b!4059464 () Bool)

(assert (=> b!4059464 (= e!2519057 EmptyLang!11865)))

(declare-fun b!4059465 () Bool)

(assert (=> b!4059465 (= e!2519055 (Concat!19056 call!288154 (regex!6960 (rule!10050 token!484))))))

(declare-fun b!4059466 () Bool)

(declare-fun e!2519053 () Regex!11865)

(assert (=> b!4059466 (= e!2519053 (ite (= (head!8571 lt!1449266) (c!700781 (regex!6960 (rule!10050 token!484)))) EmptyExpr!11865 EmptyLang!11865))))

(declare-fun b!4059467 () Bool)

(assert (=> b!4059467 (= e!2519057 e!2519053)))

(declare-fun c!701081 () Bool)

(assert (=> b!4059467 (= c!701081 ((_ is ElementMatch!11865) (regex!6960 (rule!10050 token!484))))))

(declare-fun b!4059468 () Bool)

(assert (=> b!4059468 (= c!701079 ((_ is Union!11865) (regex!6960 (rule!10050 token!484))))))

(declare-fun e!2519054 () Regex!11865)

(assert (=> b!4059468 (= e!2519053 e!2519054)))

(declare-fun b!4059469 () Bool)

(assert (=> b!4059469 (= e!2519056 (Union!11865 (Concat!19056 call!288156 (regTwo!24242 (regex!6960 (rule!10050 token!484)))) call!288155))))

(declare-fun bm!288150 () Bool)

(declare-fun c!701080 () Bool)

(declare-fun call!288153 () Regex!11865)

(assert (=> bm!288150 (= call!288153 (derivativeStep!3573 (ite c!701079 (regOne!24243 (regex!6960 (rule!10050 token!484))) (ite c!701080 (reg!12194 (regex!6960 (rule!10050 token!484))) (regOne!24242 (regex!6960 (rule!10050 token!484))))) (head!8571 lt!1449266)))))

(declare-fun b!4059470 () Bool)

(assert (=> b!4059470 (= e!2519054 e!2519055)))

(assert (=> b!4059470 (= c!701080 ((_ is Star!11865) (regex!6960 (rule!10050 token!484))))))

(declare-fun bm!288151 () Bool)

(assert (=> bm!288151 (= call!288154 call!288153)))

(declare-fun b!4059471 () Bool)

(assert (=> b!4059471 (= e!2519054 (Union!11865 call!288153 call!288155))))

(assert (= (and d!1206339 c!701077) b!4059464))

(assert (= (and d!1206339 (not c!701077)) b!4059467))

(assert (= (and b!4059467 c!701081) b!4059466))

(assert (= (and b!4059467 (not c!701081)) b!4059468))

(assert (= (and b!4059468 c!701079) b!4059471))

(assert (= (and b!4059468 (not c!701079)) b!4059470))

(assert (= (and b!4059470 c!701080) b!4059465))

(assert (= (and b!4059470 (not c!701080)) b!4059462))

(assert (= (and b!4059462 c!701078) b!4059469))

(assert (= (and b!4059462 (not c!701078)) b!4059463))

(assert (= (or b!4059469 b!4059463) bm!288148))

(assert (= (or b!4059465 bm!288148) bm!288151))

(assert (= (or b!4059471 bm!288151) bm!288150))

(assert (= (or b!4059471 b!4059469) bm!288149))

(declare-fun m!4664629 () Bool)

(assert (=> b!4059462 m!4664629))

(declare-fun m!4664631 () Bool)

(assert (=> d!1206339 m!4664631))

(assert (=> d!1206339 m!4663145))

(assert (=> bm!288149 m!4662655))

(declare-fun m!4664633 () Bool)

(assert (=> bm!288149 m!4664633))

(assert (=> bm!288150 m!4662655))

(declare-fun m!4664635 () Bool)

(assert (=> bm!288150 m!4664635))

(assert (=> b!4058567 d!1206339))

(assert (=> b!4058567 d!1206083))

(assert (=> b!4058567 d!1205993))

(declare-fun d!1206341 () Bool)

(assert (=> d!1206341 (= (inv!57986 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 token!484))) (value!218994 token!484))) (isBalanced!3688 (c!700780 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 token!484))) (value!218994 token!484)))))))

(declare-fun bs!592001 () Bool)

(assert (= bs!592001 d!1206341))

(declare-fun m!4664637 () Bool)

(assert (=> bs!592001 m!4664637))

(assert (=> tb!244085 d!1206341))

(declare-fun d!1206343 () Bool)

(assert (=> d!1206343 (= (isEmpty!25884 lt!1449534) (not ((_ is Some!9373) lt!1449534)))))

(assert (=> d!1205847 d!1206343))

(declare-fun d!1206345 () Bool)

(assert (=> d!1206345 (= (isEmpty!25885 (_1!24352 lt!1449535)) ((_ is Nil!43373) (_1!24352 lt!1449535)))))

(assert (=> d!1205847 d!1206345))

(declare-fun d!1206347 () Bool)

(declare-fun lt!1449914 () tuple2!42436)

(assert (=> d!1206347 (= (++!11362 (_1!24352 lt!1449914) (_2!24352 lt!1449914)) lt!1449255)))

(assert (=> d!1206347 (= lt!1449914 (findLongestMatchInner!1404 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) Nil!43373 0 lt!1449255 lt!1449255 (sizeTr!281 lt!1449255 0)))))

(declare-fun lt!1449907 () Unit!62757)

(declare-fun lt!1449911 () Unit!62757)

(assert (=> d!1206347 (= lt!1449907 lt!1449911)))

(declare-fun lt!1449910 () List!43497)

(declare-fun lt!1449909 () Int)

(assert (=> d!1206347 (= (sizeTr!281 lt!1449910 lt!1449909) (+ (size!32428 lt!1449910) lt!1449909))))

(assert (=> d!1206347 (= lt!1449911 (lemmaSizeTrEqualsSize!280 lt!1449910 lt!1449909))))

(assert (=> d!1206347 (= lt!1449909 0)))

(assert (=> d!1206347 (= lt!1449910 Nil!43373)))

(declare-fun lt!1449908 () Unit!62757)

(declare-fun lt!1449913 () Unit!62757)

(assert (=> d!1206347 (= lt!1449908 lt!1449913)))

(declare-fun lt!1449912 () Int)

(assert (=> d!1206347 (= (sizeTr!281 lt!1449255 lt!1449912) (+ (size!32428 lt!1449255) lt!1449912))))

(assert (=> d!1206347 (= lt!1449913 (lemmaSizeTrEqualsSize!280 lt!1449255 lt!1449912))))

(assert (=> d!1206347 (= lt!1449912 0)))

(assert (=> d!1206347 (validRegex!5368 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))))

(assert (=> d!1206347 (= (findLongestMatch!1317 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) lt!1449255) lt!1449914)))

(declare-fun bs!592002 () Bool)

(assert (= bs!592002 d!1206347))

(assert (=> bs!592002 m!4663299))

(declare-fun m!4664639 () Bool)

(assert (=> bs!592002 m!4664639))

(declare-fun m!4664641 () Bool)

(assert (=> bs!592002 m!4664641))

(declare-fun m!4664643 () Bool)

(assert (=> bs!592002 m!4664643))

(assert (=> bs!592002 m!4662901))

(declare-fun m!4664645 () Bool)

(assert (=> bs!592002 m!4664645))

(declare-fun m!4664647 () Bool)

(assert (=> bs!592002 m!4664647))

(declare-fun m!4664649 () Bool)

(assert (=> bs!592002 m!4664649))

(declare-fun m!4664651 () Bool)

(assert (=> bs!592002 m!4664651))

(declare-fun m!4664653 () Bool)

(assert (=> bs!592002 m!4664653))

(assert (=> bs!592002 m!4664647))

(assert (=> d!1205847 d!1206347))

(assert (=> d!1205847 d!1205829))

(declare-fun b!4059475 () Bool)

(declare-fun e!2519059 () Int)

(assert (=> b!4059475 (= e!2519059 (- 1))))

(declare-fun b!4059472 () Bool)

(declare-fun e!2519058 () Int)

(assert (=> b!4059472 (= e!2519058 0)))

(declare-fun b!4059474 () Bool)

(assert (=> b!4059474 (= e!2519059 (+ 1 (getIndex!572 (t!336352 (t!336352 rules!2999)) (rule!10050 (_1!24351 (v!39791 lt!1449276))))))))

(declare-fun b!4059473 () Bool)

(assert (=> b!4059473 (= e!2519058 e!2519059)))

(declare-fun c!701083 () Bool)

(assert (=> b!4059473 (= c!701083 (and ((_ is Cons!43375) (t!336352 rules!2999)) (not (= (h!48795 (t!336352 rules!2999)) (rule!10050 (_1!24351 (v!39791 lt!1449276)))))))))

(declare-fun d!1206349 () Bool)

(declare-fun lt!1449915 () Int)

(assert (=> d!1206349 (>= lt!1449915 0)))

(assert (=> d!1206349 (= lt!1449915 e!2519058)))

(declare-fun c!701082 () Bool)

(assert (=> d!1206349 (= c!701082 (and ((_ is Cons!43375) (t!336352 rules!2999)) (= (h!48795 (t!336352 rules!2999)) (rule!10050 (_1!24351 (v!39791 lt!1449276))))))))

(assert (=> d!1206349 (contains!8628 (t!336352 rules!2999) (rule!10050 (_1!24351 (v!39791 lt!1449276))))))

(assert (=> d!1206349 (= (getIndex!572 (t!336352 rules!2999) (rule!10050 (_1!24351 (v!39791 lt!1449276)))) lt!1449915)))

(assert (= (and d!1206349 c!701082) b!4059472))

(assert (= (and d!1206349 (not c!701082)) b!4059473))

(assert (= (and b!4059473 c!701083) b!4059474))

(assert (= (and b!4059473 (not c!701083)) b!4059475))

(declare-fun m!4664655 () Bool)

(assert (=> b!4059474 m!4664655))

(assert (=> d!1206349 m!4664521))

(assert (=> b!4058413 d!1206349))

(declare-fun b!4059478 () Bool)

(declare-fun e!2519060 () Bool)

(assert (=> b!4059478 (= e!2519060 (isPrefix!4047 (tail!6303 (tail!6303 newSuffix!27)) (tail!6303 (tail!6303 suffix!1299))))))

(declare-fun b!4059476 () Bool)

(declare-fun e!2519062 () Bool)

(assert (=> b!4059476 (= e!2519062 e!2519060)))

(declare-fun res!1655710 () Bool)

(assert (=> b!4059476 (=> (not res!1655710) (not e!2519060))))

(assert (=> b!4059476 (= res!1655710 (not ((_ is Nil!43373) (tail!6303 suffix!1299))))))

(declare-fun b!4059477 () Bool)

(declare-fun res!1655711 () Bool)

(assert (=> b!4059477 (=> (not res!1655711) (not e!2519060))))

(assert (=> b!4059477 (= res!1655711 (= (head!8571 (tail!6303 newSuffix!27)) (head!8571 (tail!6303 suffix!1299))))))

(declare-fun d!1206351 () Bool)

(declare-fun e!2519061 () Bool)

(assert (=> d!1206351 e!2519061))

(declare-fun res!1655712 () Bool)

(assert (=> d!1206351 (=> res!1655712 e!2519061)))

(declare-fun lt!1449916 () Bool)

(assert (=> d!1206351 (= res!1655712 (not lt!1449916))))

(assert (=> d!1206351 (= lt!1449916 e!2519062)))

(declare-fun res!1655713 () Bool)

(assert (=> d!1206351 (=> res!1655713 e!2519062)))

(assert (=> d!1206351 (= res!1655713 ((_ is Nil!43373) (tail!6303 newSuffix!27)))))

(assert (=> d!1206351 (= (isPrefix!4047 (tail!6303 newSuffix!27) (tail!6303 suffix!1299)) lt!1449916)))

(declare-fun b!4059479 () Bool)

(assert (=> b!4059479 (= e!2519061 (>= (size!32428 (tail!6303 suffix!1299)) (size!32428 (tail!6303 newSuffix!27))))))

(assert (= (and d!1206351 (not res!1655713)) b!4059476))

(assert (= (and b!4059476 res!1655710) b!4059477))

(assert (= (and b!4059477 res!1655711) b!4059478))

(assert (= (and d!1206351 (not res!1655712)) b!4059479))

(assert (=> b!4059478 m!4663649))

(declare-fun m!4664657 () Bool)

(assert (=> b!4059478 m!4664657))

(assert (=> b!4059478 m!4663651))

(declare-fun m!4664659 () Bool)

(assert (=> b!4059478 m!4664659))

(assert (=> b!4059478 m!4664657))

(assert (=> b!4059478 m!4664659))

(declare-fun m!4664661 () Bool)

(assert (=> b!4059478 m!4664661))

(assert (=> b!4059477 m!4663649))

(declare-fun m!4664663 () Bool)

(assert (=> b!4059477 m!4664663))

(assert (=> b!4059477 m!4663651))

(declare-fun m!4664665 () Bool)

(assert (=> b!4059477 m!4664665))

(assert (=> b!4059479 m!4663651))

(declare-fun m!4664667 () Bool)

(assert (=> b!4059479 m!4664667))

(assert (=> b!4059479 m!4663649))

(declare-fun m!4664669 () Bool)

(assert (=> b!4059479 m!4664669))

(assert (=> b!4058769 d!1206351))

(declare-fun d!1206353 () Bool)

(assert (=> d!1206353 (= (tail!6303 newSuffix!27) (t!336350 newSuffix!27))))

(assert (=> b!4058769 d!1206353))

(declare-fun d!1206355 () Bool)

(assert (=> d!1206355 (= (tail!6303 suffix!1299) (t!336350 suffix!1299))))

(assert (=> b!4058769 d!1206355))

(declare-fun b!4059482 () Bool)

(declare-fun res!1655714 () Bool)

(declare-fun e!2519063 () Bool)

(assert (=> b!4059482 (=> (not res!1655714) (not e!2519063))))

(declare-fun lt!1449917 () List!43497)

(assert (=> b!4059482 (= res!1655714 (= (size!32428 lt!1449917) (+ (size!32428 (t!336350 prefix!494)) (size!32428 lt!1449219))))))

(declare-fun b!4059480 () Bool)

(declare-fun e!2519064 () List!43497)

(assert (=> b!4059480 (= e!2519064 lt!1449219)))

(declare-fun b!4059481 () Bool)

(assert (=> b!4059481 (= e!2519064 (Cons!43373 (h!48793 (t!336350 prefix!494)) (++!11362 (t!336350 (t!336350 prefix!494)) lt!1449219)))))

(declare-fun d!1206357 () Bool)

(assert (=> d!1206357 e!2519063))

(declare-fun res!1655715 () Bool)

(assert (=> d!1206357 (=> (not res!1655715) (not e!2519063))))

(assert (=> d!1206357 (= res!1655715 (= (content!6612 lt!1449917) ((_ map or) (content!6612 (t!336350 prefix!494)) (content!6612 lt!1449219))))))

(assert (=> d!1206357 (= lt!1449917 e!2519064)))

(declare-fun c!701084 () Bool)

(assert (=> d!1206357 (= c!701084 ((_ is Nil!43373) (t!336350 prefix!494)))))

(assert (=> d!1206357 (= (++!11362 (t!336350 prefix!494) lt!1449219) lt!1449917)))

(declare-fun b!4059483 () Bool)

(assert (=> b!4059483 (= e!2519063 (or (not (= lt!1449219 Nil!43373)) (= lt!1449917 (t!336350 prefix!494))))))

(assert (= (and d!1206357 c!701084) b!4059480))

(assert (= (and d!1206357 (not c!701084)) b!4059481))

(assert (= (and d!1206357 res!1655715) b!4059482))

(assert (= (and b!4059482 res!1655714) b!4059483))

(declare-fun m!4664671 () Bool)

(assert (=> b!4059482 m!4664671))

(assert (=> b!4059482 m!4662937))

(assert (=> b!4059482 m!4663225))

(declare-fun m!4664673 () Bool)

(assert (=> b!4059481 m!4664673))

(declare-fun m!4664675 () Bool)

(assert (=> d!1206357 m!4664675))

(assert (=> d!1206357 m!4663851))

(assert (=> d!1206357 m!4663231))

(assert (=> b!4058494 d!1206357))

(declare-fun d!1206359 () Bool)

(declare-fun lt!1449918 () Int)

(assert (=> d!1206359 (>= lt!1449918 0)))

(declare-fun e!2519065 () Int)

(assert (=> d!1206359 (= lt!1449918 e!2519065)))

(declare-fun c!701085 () Bool)

(assert (=> d!1206359 (= c!701085 ((_ is Nil!43373) lt!1449265))))

(assert (=> d!1206359 (= (size!32428 lt!1449265) lt!1449918)))

(declare-fun b!4059484 () Bool)

(assert (=> b!4059484 (= e!2519065 0)))

(declare-fun b!4059485 () Bool)

(assert (=> b!4059485 (= e!2519065 (+ 1 (size!32428 (t!336350 lt!1449265))))))

(assert (= (and d!1206359 c!701085) b!4059484))

(assert (= (and d!1206359 (not c!701085)) b!4059485))

(declare-fun m!4664677 () Bool)

(assert (=> b!4059485 m!4664677))

(assert (=> b!4058818 d!1206359))

(assert (=> b!4058818 d!1205907))

(declare-fun b!4059488 () Bool)

(declare-fun e!2519066 () Bool)

(assert (=> b!4059488 (= e!2519066 (isPrefix!4047 (tail!6303 lt!1449266) (tail!6303 (++!11362 lt!1449266 suffixResult!105))))))

(declare-fun b!4059486 () Bool)

(declare-fun e!2519068 () Bool)

(assert (=> b!4059486 (= e!2519068 e!2519066)))

(declare-fun res!1655716 () Bool)

(assert (=> b!4059486 (=> (not res!1655716) (not e!2519066))))

(assert (=> b!4059486 (= res!1655716 (not ((_ is Nil!43373) (++!11362 lt!1449266 suffixResult!105))))))

(declare-fun b!4059487 () Bool)

(declare-fun res!1655717 () Bool)

(assert (=> b!4059487 (=> (not res!1655717) (not e!2519066))))

(assert (=> b!4059487 (= res!1655717 (= (head!8571 lt!1449266) (head!8571 (++!11362 lt!1449266 suffixResult!105))))))

(declare-fun d!1206361 () Bool)

(declare-fun e!2519067 () Bool)

(assert (=> d!1206361 e!2519067))

(declare-fun res!1655718 () Bool)

(assert (=> d!1206361 (=> res!1655718 e!2519067)))

(declare-fun lt!1449919 () Bool)

(assert (=> d!1206361 (= res!1655718 (not lt!1449919))))

(assert (=> d!1206361 (= lt!1449919 e!2519068)))

(declare-fun res!1655719 () Bool)

(assert (=> d!1206361 (=> res!1655719 e!2519068)))

(assert (=> d!1206361 (= res!1655719 ((_ is Nil!43373) lt!1449266))))

(assert (=> d!1206361 (= (isPrefix!4047 lt!1449266 (++!11362 lt!1449266 suffixResult!105)) lt!1449919)))

(declare-fun b!4059489 () Bool)

(assert (=> b!4059489 (= e!2519067 (>= (size!32428 (++!11362 lt!1449266 suffixResult!105)) (size!32428 lt!1449266)))))

(assert (= (and d!1206361 (not res!1655719)) b!4059486))

(assert (= (and b!4059486 res!1655716) b!4059487))

(assert (= (and b!4059487 res!1655717) b!4059488))

(assert (= (and d!1206361 (not res!1655718)) b!4059489))

(assert (=> b!4059488 m!4662649))

(assert (=> b!4059488 m!4662545))

(declare-fun m!4664679 () Bool)

(assert (=> b!4059488 m!4664679))

(assert (=> b!4059488 m!4662649))

(assert (=> b!4059488 m!4664679))

(declare-fun m!4664681 () Bool)

(assert (=> b!4059488 m!4664681))

(assert (=> b!4059487 m!4662655))

(assert (=> b!4059487 m!4662545))

(declare-fun m!4664683 () Bool)

(assert (=> b!4059487 m!4664683))

(assert (=> b!4059489 m!4662545))

(declare-fun m!4664685 () Bool)

(assert (=> b!4059489 m!4664685))

(assert (=> b!4059489 m!4662529))

(assert (=> d!1205605 d!1206361))

(assert (=> d!1205605 d!1205755))

(declare-fun d!1206363 () Bool)

(assert (=> d!1206363 (isPrefix!4047 lt!1449266 (++!11362 lt!1449266 suffixResult!105))))

(assert (=> d!1206363 true))

(declare-fun _$46!1830 () Unit!62757)

(assert (=> d!1206363 (= (choose!24655 lt!1449266 suffixResult!105) _$46!1830)))

(declare-fun bs!592003 () Bool)

(assert (= bs!592003 d!1206363))

(assert (=> bs!592003 m!4662545))

(assert (=> bs!592003 m!4662545))

(assert (=> bs!592003 m!4662645))

(assert (=> d!1205605 d!1206363))

(declare-fun bs!592004 () Bool)

(declare-fun d!1206365 () Bool)

(assert (= bs!592004 (and d!1206365 d!1206061)))

(declare-fun lambda!127555 () Int)

(assert (=> bs!592004 (= (= (toValue!9516 (transformation!6960 (h!48795 rules!2999))) (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))) (= lambda!127555 lambda!127545))))

(assert (=> d!1206365 true))

(assert (=> d!1206365 (< (dynLambda!18427 order!22703 (toValue!9516 (transformation!6960 (h!48795 rules!2999)))) (dynLambda!18428 order!22705 lambda!127555))))

(assert (=> d!1206365 (= (equivClasses!2875 (toChars!9375 (transformation!6960 (h!48795 rules!2999))) (toValue!9516 (transformation!6960 (h!48795 rules!2999)))) (Forall2!1098 lambda!127555))))

(declare-fun bs!592005 () Bool)

(assert (= bs!592005 d!1206365))

(declare-fun m!4664687 () Bool)

(assert (=> bs!592005 m!4664687))

(assert (=> b!4058766 d!1206365))

(declare-fun b!4059492 () Bool)

(declare-fun e!2519069 () Bool)

(assert (=> b!4059492 (= e!2519069 (isPrefix!4047 (tail!6303 (tail!6303 lt!1449249)) (tail!6303 (tail!6303 lt!1449231))))))

(declare-fun b!4059490 () Bool)

(declare-fun e!2519071 () Bool)

(assert (=> b!4059490 (= e!2519071 e!2519069)))

(declare-fun res!1655720 () Bool)

(assert (=> b!4059490 (=> (not res!1655720) (not e!2519069))))

(assert (=> b!4059490 (= res!1655720 (not ((_ is Nil!43373) (tail!6303 lt!1449231))))))

(declare-fun b!4059491 () Bool)

(declare-fun res!1655721 () Bool)

(assert (=> b!4059491 (=> (not res!1655721) (not e!2519069))))

(assert (=> b!4059491 (= res!1655721 (= (head!8571 (tail!6303 lt!1449249)) (head!8571 (tail!6303 lt!1449231))))))

(declare-fun d!1206367 () Bool)

(declare-fun e!2519070 () Bool)

(assert (=> d!1206367 e!2519070))

(declare-fun res!1655722 () Bool)

(assert (=> d!1206367 (=> res!1655722 e!2519070)))

(declare-fun lt!1449920 () Bool)

(assert (=> d!1206367 (= res!1655722 (not lt!1449920))))

(assert (=> d!1206367 (= lt!1449920 e!2519071)))

(declare-fun res!1655723 () Bool)

(assert (=> d!1206367 (=> res!1655723 e!2519071)))

(assert (=> d!1206367 (= res!1655723 ((_ is Nil!43373) (tail!6303 lt!1449249)))))

(assert (=> d!1206367 (= (isPrefix!4047 (tail!6303 lt!1449249) (tail!6303 lt!1449231)) lt!1449920)))

(declare-fun b!4059493 () Bool)

(assert (=> b!4059493 (= e!2519070 (>= (size!32428 (tail!6303 lt!1449231)) (size!32428 (tail!6303 lt!1449249))))))

(assert (= (and d!1206367 (not res!1655723)) b!4059490))

(assert (= (and b!4059490 res!1655720) b!4059491))

(assert (= (and b!4059491 res!1655721) b!4059492))

(assert (= (and d!1206367 (not res!1655722)) b!4059493))

(assert (=> b!4059492 m!4663171))

(assert (=> b!4059492 m!4663819))

(assert (=> b!4059492 m!4662651))

(assert (=> b!4059492 m!4664403))

(assert (=> b!4059492 m!4663819))

(assert (=> b!4059492 m!4664403))

(declare-fun m!4664689 () Bool)

(assert (=> b!4059492 m!4664689))

(assert (=> b!4059491 m!4663171))

(assert (=> b!4059491 m!4663825))

(assert (=> b!4059491 m!4662651))

(assert (=> b!4059491 m!4664407))

(assert (=> b!4059493 m!4662651))

(assert (=> b!4059493 m!4664409))

(assert (=> b!4059493 m!4663171))

(assert (=> b!4059493 m!4664465))

(assert (=> b!4058813 d!1206367))

(assert (=> b!4058813 d!1206001))

(assert (=> b!4058813 d!1206221))

(declare-fun b!4059496 () Bool)

(declare-fun res!1655724 () Bool)

(declare-fun e!2519072 () Bool)

(assert (=> b!4059496 (=> (not res!1655724) (not e!2519072))))

(declare-fun lt!1449921 () List!43497)

(assert (=> b!4059496 (= res!1655724 (= (size!32428 lt!1449921) (+ (size!32428 (t!336350 lt!1449266)) (size!32428 suffixResult!105))))))

(declare-fun b!4059494 () Bool)

(declare-fun e!2519073 () List!43497)

(assert (=> b!4059494 (= e!2519073 suffixResult!105)))

(declare-fun b!4059495 () Bool)

(assert (=> b!4059495 (= e!2519073 (Cons!43373 (h!48793 (t!336350 lt!1449266)) (++!11362 (t!336350 (t!336350 lt!1449266)) suffixResult!105)))))

(declare-fun d!1206369 () Bool)

(assert (=> d!1206369 e!2519072))

(declare-fun res!1655725 () Bool)

(assert (=> d!1206369 (=> (not res!1655725) (not e!2519072))))

(assert (=> d!1206369 (= res!1655725 (= (content!6612 lt!1449921) ((_ map or) (content!6612 (t!336350 lt!1449266)) (content!6612 suffixResult!105))))))

(assert (=> d!1206369 (= lt!1449921 e!2519073)))

(declare-fun c!701086 () Bool)

(assert (=> d!1206369 (= c!701086 ((_ is Nil!43373) (t!336350 lt!1449266)))))

(assert (=> d!1206369 (= (++!11362 (t!336350 lt!1449266) suffixResult!105) lt!1449921)))

(declare-fun b!4059497 () Bool)

(assert (=> b!4059497 (= e!2519072 (or (not (= suffixResult!105 Nil!43373)) (= lt!1449921 (t!336350 lt!1449266))))))

(assert (= (and d!1206369 c!701086) b!4059494))

(assert (= (and d!1206369 (not c!701086)) b!4059495))

(assert (= (and d!1206369 res!1655725) b!4059496))

(assert (= (and b!4059496 res!1655724) b!4059497))

(declare-fun m!4664691 () Bool)

(assert (=> b!4059496 m!4664691))

(assert (=> b!4059496 m!4662933))

(assert (=> b!4059496 m!4663113))

(declare-fun m!4664693 () Bool)

(assert (=> b!4059495 m!4664693))

(declare-fun m!4664695 () Bool)

(assert (=> d!1206369 m!4664695))

(assert (=> d!1206369 m!4663863))

(assert (=> d!1206369 m!4663127))

(assert (=> b!4058442 d!1206369))

(declare-fun b!4059500 () Bool)

(declare-fun e!2519074 () Bool)

(assert (=> b!4059500 (= e!2519074 (isPrefix!4047 (tail!6303 (tail!6303 lt!1449266)) (tail!6303 (tail!6303 lt!1449229))))))

(declare-fun b!4059498 () Bool)

(declare-fun e!2519076 () Bool)

(assert (=> b!4059498 (= e!2519076 e!2519074)))

(declare-fun res!1655726 () Bool)

(assert (=> b!4059498 (=> (not res!1655726) (not e!2519074))))

(assert (=> b!4059498 (= res!1655726 (not ((_ is Nil!43373) (tail!6303 lt!1449229))))))

(declare-fun b!4059499 () Bool)

(declare-fun res!1655727 () Bool)

(assert (=> b!4059499 (=> (not res!1655727) (not e!2519074))))

(assert (=> b!4059499 (= res!1655727 (= (head!8571 (tail!6303 lt!1449266)) (head!8571 (tail!6303 lt!1449229))))))

(declare-fun d!1206371 () Bool)

(declare-fun e!2519075 () Bool)

(assert (=> d!1206371 e!2519075))

(declare-fun res!1655728 () Bool)

(assert (=> d!1206371 (=> res!1655728 e!2519075)))

(declare-fun lt!1449922 () Bool)

(assert (=> d!1206371 (= res!1655728 (not lt!1449922))))

(assert (=> d!1206371 (= lt!1449922 e!2519076)))

(declare-fun res!1655729 () Bool)

(assert (=> d!1206371 (=> res!1655729 e!2519076)))

(assert (=> d!1206371 (= res!1655729 ((_ is Nil!43373) (tail!6303 lt!1449266)))))

(assert (=> d!1206371 (= (isPrefix!4047 (tail!6303 lt!1449266) (tail!6303 lt!1449229)) lt!1449922)))

(declare-fun b!4059501 () Bool)

(assert (=> b!4059501 (= e!2519075 (>= (size!32428 (tail!6303 lt!1449229)) (size!32428 (tail!6303 lt!1449266))))))

(assert (= (and d!1206371 (not res!1655729)) b!4059498))

(assert (= (and b!4059498 res!1655726) b!4059499))

(assert (= (and b!4059499 res!1655727) b!4059500))

(assert (= (and d!1206371 (not res!1655728)) b!4059501))

(assert (=> b!4059500 m!4662649))

(assert (=> b!4059500 m!4664351))

(assert (=> b!4059500 m!4662915))

(declare-fun m!4664697 () Bool)

(assert (=> b!4059500 m!4664697))

(assert (=> b!4059500 m!4664351))

(assert (=> b!4059500 m!4664697))

(declare-fun m!4664699 () Bool)

(assert (=> b!4059500 m!4664699))

(assert (=> b!4059499 m!4662649))

(assert (=> b!4059499 m!4664357))

(assert (=> b!4059499 m!4662915))

(declare-fun m!4664701 () Bool)

(assert (=> b!4059499 m!4664701))

(assert (=> b!4059501 m!4662915))

(declare-fun m!4664703 () Bool)

(assert (=> b!4059501 m!4664703))

(assert (=> b!4059501 m!4662649))

(assert (=> b!4059501 m!4664363))

(assert (=> b!4058344 d!1206371))

(assert (=> b!4058344 d!1205993))

(declare-fun d!1206373 () Bool)

(assert (=> d!1206373 (= (tail!6303 lt!1449229) (t!336350 lt!1449229))))

(assert (=> b!4058344 d!1206373))

(assert (=> b!4058712 d!1206143))

(declare-fun b!4059511 () Bool)

(declare-fun e!2519081 () List!43497)

(declare-fun e!2519082 () List!43497)

(assert (=> b!4059511 (= e!2519081 e!2519082)))

(declare-fun c!701092 () Bool)

(assert (=> b!4059511 (= c!701092 ((_ is Leaf!20358) (c!700780 (charsOf!4776 token!484))))))

(declare-fun b!4059513 () Bool)

(assert (=> b!4059513 (= e!2519082 (++!11362 (list!16165 (left!32641 (c!700780 (charsOf!4776 token!484)))) (list!16165 (right!32971 (c!700780 (charsOf!4776 token!484))))))))

(declare-fun b!4059512 () Bool)

(declare-fun list!16168 (IArray!26347) List!43497)

(assert (=> b!4059512 (= e!2519082 (list!16168 (xs!16477 (c!700780 (charsOf!4776 token!484)))))))

(declare-fun b!4059510 () Bool)

(assert (=> b!4059510 (= e!2519081 Nil!43373)))

(declare-fun d!1206375 () Bool)

(declare-fun c!701091 () Bool)

(assert (=> d!1206375 (= c!701091 ((_ is Empty!13171) (c!700780 (charsOf!4776 token!484))))))

(assert (=> d!1206375 (= (list!16165 (c!700780 (charsOf!4776 token!484))) e!2519081)))

(assert (= (and d!1206375 c!701091) b!4059510))

(assert (= (and d!1206375 (not c!701091)) b!4059511))

(assert (= (and b!4059511 c!701092) b!4059512))

(assert (= (and b!4059511 (not c!701092)) b!4059513))

(declare-fun m!4664705 () Bool)

(assert (=> b!4059513 m!4664705))

(declare-fun m!4664707 () Bool)

(assert (=> b!4059513 m!4664707))

(assert (=> b!4059513 m!4664705))

(assert (=> b!4059513 m!4664707))

(declare-fun m!4664709 () Bool)

(assert (=> b!4059513 m!4664709))

(declare-fun m!4664711 () Bool)

(assert (=> b!4059512 m!4664711))

(assert (=> d!1205693 d!1206375))

(declare-fun b!4059517 () Bool)

(declare-fun e!2519084 () Int)

(assert (=> b!4059517 (= e!2519084 (- 1))))

(declare-fun b!4059514 () Bool)

(declare-fun e!2519083 () Int)

(assert (=> b!4059514 (= e!2519083 0)))

(declare-fun b!4059516 () Bool)

(assert (=> b!4059516 (= e!2519084 (+ 1 (getIndex!572 (t!336352 (t!336352 rules!2999)) (rule!10050 token!484))))))

(declare-fun b!4059515 () Bool)

(assert (=> b!4059515 (= e!2519083 e!2519084)))

(declare-fun c!701094 () Bool)

(assert (=> b!4059515 (= c!701094 (and ((_ is Cons!43375) (t!336352 rules!2999)) (not (= (h!48795 (t!336352 rules!2999)) (rule!10050 token!484)))))))

(declare-fun d!1206377 () Bool)

(declare-fun lt!1449923 () Int)

(assert (=> d!1206377 (>= lt!1449923 0)))

(assert (=> d!1206377 (= lt!1449923 e!2519083)))

(declare-fun c!701093 () Bool)

(assert (=> d!1206377 (= c!701093 (and ((_ is Cons!43375) (t!336352 rules!2999)) (= (h!48795 (t!336352 rules!2999)) (rule!10050 token!484))))))

(assert (=> d!1206377 (contains!8628 (t!336352 rules!2999) (rule!10050 token!484))))

(assert (=> d!1206377 (= (getIndex!572 (t!336352 rules!2999) (rule!10050 token!484)) lt!1449923)))

(assert (= (and d!1206377 c!701093) b!4059514))

(assert (= (and d!1206377 (not c!701093)) b!4059515))

(assert (= (and b!4059515 c!701094) b!4059516))

(assert (= (and b!4059515 (not c!701094)) b!4059517))

(declare-fun m!4664713 () Bool)

(assert (=> b!4059516 m!4664713))

(declare-fun m!4664715 () Bool)

(assert (=> d!1206377 m!4664715))

(assert (=> b!4058421 d!1206377))

(declare-fun b!4059520 () Bool)

(declare-fun res!1655730 () Bool)

(declare-fun e!2519085 () Bool)

(assert (=> b!4059520 (=> (not res!1655730) (not e!2519085))))

(declare-fun lt!1449924 () List!43497)

(assert (=> b!4059520 (= res!1655730 (= (size!32428 lt!1449924) (+ (size!32428 (t!336350 newSuffix!27)) (size!32428 lt!1449227))))))

(declare-fun b!4059518 () Bool)

(declare-fun e!2519086 () List!43497)

(assert (=> b!4059518 (= e!2519086 lt!1449227)))

(declare-fun b!4059519 () Bool)

(assert (=> b!4059519 (= e!2519086 (Cons!43373 (h!48793 (t!336350 newSuffix!27)) (++!11362 (t!336350 (t!336350 newSuffix!27)) lt!1449227)))))

(declare-fun d!1206379 () Bool)

(assert (=> d!1206379 e!2519085))

(declare-fun res!1655731 () Bool)

(assert (=> d!1206379 (=> (not res!1655731) (not e!2519085))))

(assert (=> d!1206379 (= res!1655731 (= (content!6612 lt!1449924) ((_ map or) (content!6612 (t!336350 newSuffix!27)) (content!6612 lt!1449227))))))

(assert (=> d!1206379 (= lt!1449924 e!2519086)))

(declare-fun c!701095 () Bool)

(assert (=> d!1206379 (= c!701095 ((_ is Nil!43373) (t!336350 newSuffix!27)))))

(assert (=> d!1206379 (= (++!11362 (t!336350 newSuffix!27) lt!1449227) lt!1449924)))

(declare-fun b!4059521 () Bool)

(assert (=> b!4059521 (= e!2519085 (or (not (= lt!1449227 Nil!43373)) (= lt!1449924 (t!336350 newSuffix!27))))))

(assert (= (and d!1206379 c!701095) b!4059518))

(assert (= (and d!1206379 (not c!701095)) b!4059519))

(assert (= (and d!1206379 res!1655731) b!4059520))

(assert (= (and b!4059520 res!1655730) b!4059521))

(declare-fun m!4664717 () Bool)

(assert (=> b!4059520 m!4664717))

(assert (=> b!4059520 m!4663777))

(assert (=> b!4059520 m!4663235))

(declare-fun m!4664719 () Bool)

(assert (=> b!4059519 m!4664719))

(declare-fun m!4664721 () Bool)

(assert (=> d!1206379 m!4664721))

(assert (=> d!1206379 m!4664451))

(assert (=> d!1206379 m!4663243))

(assert (=> b!4058837 d!1206379))

(declare-fun bs!592006 () Bool)

(declare-fun d!1206381 () Bool)

(assert (= bs!592006 (and d!1206381 d!1206061)))

(declare-fun lambda!127556 () Int)

(assert (=> bs!592006 (= (= (toValue!9516 (transformation!6960 (rule!10050 token!484))) (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))) (= lambda!127556 lambda!127545))))

(declare-fun bs!592007 () Bool)

(assert (= bs!592007 (and d!1206381 d!1206365)))

(assert (=> bs!592007 (= (= (toValue!9516 (transformation!6960 (rule!10050 token!484))) (toValue!9516 (transformation!6960 (h!48795 rules!2999)))) (= lambda!127556 lambda!127555))))

(assert (=> d!1206381 true))

(assert (=> d!1206381 (< (dynLambda!18427 order!22703 (toValue!9516 (transformation!6960 (rule!10050 token!484)))) (dynLambda!18428 order!22705 lambda!127556))))

(assert (=> d!1206381 (= (equivClasses!2875 (toChars!9375 (transformation!6960 (rule!10050 token!484))) (toValue!9516 (transformation!6960 (rule!10050 token!484)))) (Forall2!1098 lambda!127556))))

(declare-fun bs!592008 () Bool)

(assert (= bs!592008 d!1206381))

(declare-fun m!4664723 () Bool)

(assert (=> bs!592008 m!4664723))

(assert (=> b!4058457 d!1206381))

(declare-fun d!1206383 () Bool)

(declare-fun lt!1449925 () Int)

(assert (=> d!1206383 (>= lt!1449925 0)))

(declare-fun e!2519087 () Int)

(assert (=> d!1206383 (= lt!1449925 e!2519087)))

(declare-fun c!701096 () Bool)

(assert (=> d!1206383 (= c!701096 ((_ is Nil!43373) lt!1449456))))

(assert (=> d!1206383 (= (size!32428 lt!1449456) lt!1449925)))

(declare-fun b!4059522 () Bool)

(assert (=> b!4059522 (= e!2519087 0)))

(declare-fun b!4059523 () Bool)

(assert (=> b!4059523 (= e!2519087 (+ 1 (size!32428 (t!336350 lt!1449456))))))

(assert (= (and d!1206383 c!701096) b!4059522))

(assert (= (and d!1206383 (not c!701096)) b!4059523))

(declare-fun m!4664725 () Bool)

(assert (=> b!4059523 m!4664725))

(assert (=> b!4058499 d!1206383))

(assert (=> b!4058499 d!1205989))

(assert (=> b!4058499 d!1206311))

(declare-fun d!1206385 () Bool)

(declare-fun lt!1449926 () Int)

(assert (=> d!1206385 (>= lt!1449926 0)))

(declare-fun e!2519088 () Int)

(assert (=> d!1206385 (= lt!1449926 e!2519088)))

(declare-fun c!701097 () Bool)

(assert (=> d!1206385 (= c!701097 ((_ is Nil!43373) lt!1449484))))

(assert (=> d!1206385 (= (size!32428 lt!1449484) lt!1449926)))

(declare-fun b!4059524 () Bool)

(assert (=> b!4059524 (= e!2519088 0)))

(declare-fun b!4059525 () Bool)

(assert (=> b!4059525 (= e!2519088 (+ 1 (size!32428 (t!336350 lt!1449484))))))

(assert (= (and d!1206385 c!701097) b!4059524))

(assert (= (and d!1206385 (not c!701097)) b!4059525))

(declare-fun m!4664727 () Bool)

(assert (=> b!4059525 m!4664727))

(assert (=> b!4058590 d!1206385))

(assert (=> b!4058590 d!1205907))

(declare-fun d!1206387 () Bool)

(declare-fun lt!1449927 () Int)

(assert (=> d!1206387 (>= lt!1449927 0)))

(declare-fun e!2519089 () Int)

(assert (=> d!1206387 (= lt!1449927 e!2519089)))

(declare-fun c!701098 () Bool)

(assert (=> d!1206387 (= c!701098 ((_ is Nil!43373) newSuffixResult!27))))

(assert (=> d!1206387 (= (size!32428 newSuffixResult!27) lt!1449927)))

(declare-fun b!4059526 () Bool)

(assert (=> b!4059526 (= e!2519089 0)))

(declare-fun b!4059527 () Bool)

(assert (=> b!4059527 (= e!2519089 (+ 1 (size!32428 (t!336350 newSuffixResult!27))))))

(assert (= (and d!1206387 c!701098) b!4059526))

(assert (= (and d!1206387 (not c!701098)) b!4059527))

(declare-fun m!4664729 () Bool)

(assert (=> b!4059527 m!4664729))

(assert (=> b!4058590 d!1206387))

(declare-fun d!1206389 () Bool)

(assert (=> d!1206389 (= (head!8571 prefix!494) (h!48793 prefix!494))))

(assert (=> b!4058146 d!1206389))

(assert (=> b!4058146 d!1206271))

(declare-fun d!1206391 () Bool)

(declare-fun lt!1449928 () Int)

(assert (=> d!1206391 (>= lt!1449928 0)))

(declare-fun e!2519090 () Int)

(assert (=> d!1206391 (= lt!1449928 e!2519090)))

(declare-fun c!701099 () Bool)

(assert (=> d!1206391 (= c!701099 ((_ is Nil!43373) (++!11362 lt!1449249 newSuffixResult!27)))))

(assert (=> d!1206391 (= (size!32428 (++!11362 lt!1449249 newSuffixResult!27)) lt!1449928)))

(declare-fun b!4059528 () Bool)

(assert (=> b!4059528 (= e!2519090 0)))

(declare-fun b!4059529 () Bool)

(assert (=> b!4059529 (= e!2519090 (+ 1 (size!32428 (t!336350 (++!11362 lt!1449249 newSuffixResult!27)))))))

(assert (= (and d!1206391 c!701099) b!4059528))

(assert (= (and d!1206391 (not c!701099)) b!4059529))

(declare-fun m!4664731 () Bool)

(assert (=> b!4059529 m!4664731))

(assert (=> b!4058587 d!1206391))

(assert (=> b!4058587 d!1205907))

(assert (=> b!4058847 d!1205981))

(assert (=> b!4058850 d!1206159))

(declare-fun d!1206393 () Bool)

(declare-fun c!701100 () Bool)

(assert (=> d!1206393 (= c!701100 ((_ is Nil!43373) lt!1449430))))

(declare-fun e!2519091 () (InoxSet C!23916))

(assert (=> d!1206393 (= (content!6612 lt!1449430) e!2519091)))

(declare-fun b!4059530 () Bool)

(assert (=> b!4059530 (= e!2519091 ((as const (Array C!23916 Bool)) false))))

(declare-fun b!4059531 () Bool)

(assert (=> b!4059531 (= e!2519091 ((_ map or) (store ((as const (Array C!23916 Bool)) false) (h!48793 lt!1449430) true) (content!6612 (t!336350 lt!1449430))))))

(assert (= (and d!1206393 c!701100) b!4059530))

(assert (= (and d!1206393 (not c!701100)) b!4059531))

(declare-fun m!4664733 () Bool)

(assert (=> b!4059531 m!4664733))

(declare-fun m!4664735 () Bool)

(assert (=> b!4059531 m!4664735))

(assert (=> d!1205755 d!1206393))

(assert (=> d!1205755 d!1206015))

(declare-fun d!1206395 () Bool)

(declare-fun c!701101 () Bool)

(assert (=> d!1206395 (= c!701101 ((_ is Nil!43373) suffixResult!105))))

(declare-fun e!2519092 () (InoxSet C!23916))

(assert (=> d!1206395 (= (content!6612 suffixResult!105) e!2519092)))

(declare-fun b!4059532 () Bool)

(assert (=> b!4059532 (= e!2519092 ((as const (Array C!23916 Bool)) false))))

(declare-fun b!4059533 () Bool)

(assert (=> b!4059533 (= e!2519092 ((_ map or) (store ((as const (Array C!23916 Bool)) false) (h!48793 suffixResult!105) true) (content!6612 (t!336350 suffixResult!105))))))

(assert (= (and d!1206395 c!701101) b!4059532))

(assert (= (and d!1206395 (not c!701101)) b!4059533))

(declare-fun m!4664737 () Bool)

(assert (=> b!4059533 m!4664737))

(declare-fun m!4664739 () Bool)

(assert (=> b!4059533 m!4664739))

(assert (=> d!1205755 d!1206395))

(declare-fun d!1206397 () Bool)

(declare-fun lt!1449929 () List!43497)

(assert (=> d!1206397 (= (++!11362 (t!336350 lt!1449266) lt!1449929) (tail!6303 lt!1449231))))

(declare-fun e!2519093 () List!43497)

(assert (=> d!1206397 (= lt!1449929 e!2519093)))

(declare-fun c!701102 () Bool)

(assert (=> d!1206397 (= c!701102 ((_ is Cons!43373) (t!336350 lt!1449266)))))

(assert (=> d!1206397 (>= (size!32428 (tail!6303 lt!1449231)) (size!32428 (t!336350 lt!1449266)))))

(assert (=> d!1206397 (= (getSuffix!2464 (tail!6303 lt!1449231) (t!336350 lt!1449266)) lt!1449929)))

(declare-fun b!4059534 () Bool)

(assert (=> b!4059534 (= e!2519093 (getSuffix!2464 (tail!6303 (tail!6303 lt!1449231)) (t!336350 (t!336350 lt!1449266))))))

(declare-fun b!4059535 () Bool)

(assert (=> b!4059535 (= e!2519093 (tail!6303 lt!1449231))))

(assert (= (and d!1206397 c!701102) b!4059534))

(assert (= (and d!1206397 (not c!701102)) b!4059535))

(declare-fun m!4664741 () Bool)

(assert (=> d!1206397 m!4664741))

(assert (=> d!1206397 m!4662651))

(assert (=> d!1206397 m!4664409))

(assert (=> d!1206397 m!4662933))

(assert (=> b!4059534 m!4662651))

(assert (=> b!4059534 m!4664403))

(assert (=> b!4059534 m!4664403))

(declare-fun m!4664743 () Bool)

(assert (=> b!4059534 m!4664743))

(assert (=> b!4058804 d!1206397))

(assert (=> b!4058804 d!1206221))

(declare-fun b!4059536 () Bool)

(declare-fun e!2519096 () Bool)

(assert (=> b!4059536 (= e!2519096 (nullable!4168 (regex!6960 (rule!10050 (_1!24351 (get!14226 lt!1449359))))))))

(declare-fun b!4059537 () Bool)

(declare-fun res!1655735 () Bool)

(declare-fun e!2519095 () Bool)

(assert (=> b!4059537 (=> (not res!1655735) (not e!2519095))))

(assert (=> b!4059537 (= res!1655735 (isEmpty!25885 (tail!6303 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449359)))))))))

(declare-fun b!4059538 () Bool)

(declare-fun e!2519100 () Bool)

(declare-fun e!2519098 () Bool)

(assert (=> b!4059538 (= e!2519100 e!2519098)))

(declare-fun res!1655734 () Bool)

(assert (=> b!4059538 (=> res!1655734 e!2519098)))

(declare-fun call!288157 () Bool)

(assert (=> b!4059538 (= res!1655734 call!288157)))

(declare-fun b!4059539 () Bool)

(declare-fun res!1655733 () Bool)

(assert (=> b!4059539 (=> res!1655733 e!2519098)))

(assert (=> b!4059539 (= res!1655733 (not (isEmpty!25885 (tail!6303 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449359))))))))))

(declare-fun b!4059540 () Bool)

(declare-fun res!1655736 () Bool)

(assert (=> b!4059540 (=> (not res!1655736) (not e!2519095))))

(assert (=> b!4059540 (= res!1655736 (not call!288157))))

(declare-fun b!4059541 () Bool)

(assert (=> b!4059541 (= e!2519098 (not (= (head!8571 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449359))))) (c!700781 (regex!6960 (rule!10050 (_1!24351 (get!14226 lt!1449359))))))))))

(declare-fun b!4059542 () Bool)

(declare-fun e!2519097 () Bool)

(declare-fun e!2519099 () Bool)

(assert (=> b!4059542 (= e!2519097 e!2519099)))

(declare-fun c!701103 () Bool)

(assert (=> b!4059542 (= c!701103 ((_ is EmptyLang!11865) (regex!6960 (rule!10050 (_1!24351 (get!14226 lt!1449359))))))))

(declare-fun d!1206399 () Bool)

(assert (=> d!1206399 e!2519097))

(declare-fun c!701105 () Bool)

(assert (=> d!1206399 (= c!701105 ((_ is EmptyExpr!11865) (regex!6960 (rule!10050 (_1!24351 (get!14226 lt!1449359))))))))

(declare-fun lt!1449930 () Bool)

(assert (=> d!1206399 (= lt!1449930 e!2519096)))

(declare-fun c!701104 () Bool)

(assert (=> d!1206399 (= c!701104 (isEmpty!25885 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449359))))))))

(assert (=> d!1206399 (validRegex!5368 (regex!6960 (rule!10050 (_1!24351 (get!14226 lt!1449359)))))))

(assert (=> d!1206399 (= (matchR!5818 (regex!6960 (rule!10050 (_1!24351 (get!14226 lt!1449359)))) (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449359))))) lt!1449930)))

(declare-fun b!4059543 () Bool)

(declare-fun res!1655738 () Bool)

(declare-fun e!2519094 () Bool)

(assert (=> b!4059543 (=> res!1655738 e!2519094)))

(assert (=> b!4059543 (= res!1655738 (not ((_ is ElementMatch!11865) (regex!6960 (rule!10050 (_1!24351 (get!14226 lt!1449359)))))))))

(assert (=> b!4059543 (= e!2519099 e!2519094)))

(declare-fun b!4059544 () Bool)

(assert (=> b!4059544 (= e!2519096 (matchR!5818 (derivativeStep!3573 (regex!6960 (rule!10050 (_1!24351 (get!14226 lt!1449359)))) (head!8571 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449359)))))) (tail!6303 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449359)))))))))

(declare-fun b!4059545 () Bool)

(assert (=> b!4059545 (= e!2519095 (= (head!8571 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449359))))) (c!700781 (regex!6960 (rule!10050 (_1!24351 (get!14226 lt!1449359)))))))))

(declare-fun b!4059546 () Bool)

(assert (=> b!4059546 (= e!2519099 (not lt!1449930))))

(declare-fun b!4059547 () Bool)

(assert (=> b!4059547 (= e!2519094 e!2519100)))

(declare-fun res!1655739 () Bool)

(assert (=> b!4059547 (=> (not res!1655739) (not e!2519100))))

(assert (=> b!4059547 (= res!1655739 (not lt!1449930))))

(declare-fun bm!288152 () Bool)

(assert (=> bm!288152 (= call!288157 (isEmpty!25885 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449359))))))))

(declare-fun b!4059548 () Bool)

(assert (=> b!4059548 (= e!2519097 (= lt!1449930 call!288157))))

(declare-fun b!4059549 () Bool)

(declare-fun res!1655732 () Bool)

(assert (=> b!4059549 (=> res!1655732 e!2519094)))

(assert (=> b!4059549 (= res!1655732 e!2519095)))

(declare-fun res!1655737 () Bool)

(assert (=> b!4059549 (=> (not res!1655737) (not e!2519095))))

(assert (=> b!4059549 (= res!1655737 lt!1449930)))

(assert (= (and d!1206399 c!701104) b!4059536))

(assert (= (and d!1206399 (not c!701104)) b!4059544))

(assert (= (and d!1206399 c!701105) b!4059548))

(assert (= (and d!1206399 (not c!701105)) b!4059542))

(assert (= (and b!4059542 c!701103) b!4059546))

(assert (= (and b!4059542 (not c!701103)) b!4059543))

(assert (= (and b!4059543 (not res!1655738)) b!4059549))

(assert (= (and b!4059549 res!1655737) b!4059540))

(assert (= (and b!4059540 res!1655736) b!4059537))

(assert (= (and b!4059537 res!1655735) b!4059545))

(assert (= (and b!4059549 (not res!1655732)) b!4059547))

(assert (= (and b!4059547 res!1655739) b!4059538))

(assert (= (and b!4059538 (not res!1655734)) b!4059539))

(assert (= (and b!4059539 (not res!1655733)) b!4059541))

(assert (= (or b!4059548 b!4059538 b!4059540) bm!288152))

(declare-fun m!4664745 () Bool)

(assert (=> b!4059536 m!4664745))

(assert (=> b!4059539 m!4662877))

(declare-fun m!4664747 () Bool)

(assert (=> b!4059539 m!4664747))

(assert (=> b!4059539 m!4664747))

(declare-fun m!4664749 () Bool)

(assert (=> b!4059539 m!4664749))

(assert (=> d!1206399 m!4662877))

(declare-fun m!4664751 () Bool)

(assert (=> d!1206399 m!4664751))

(declare-fun m!4664753 () Bool)

(assert (=> d!1206399 m!4664753))

(assert (=> bm!288152 m!4662877))

(assert (=> bm!288152 m!4664751))

(assert (=> b!4059537 m!4662877))

(assert (=> b!4059537 m!4664747))

(assert (=> b!4059537 m!4664747))

(assert (=> b!4059537 m!4664749))

(assert (=> b!4059541 m!4662877))

(declare-fun m!4664755 () Bool)

(assert (=> b!4059541 m!4664755))

(assert (=> b!4059544 m!4662877))

(assert (=> b!4059544 m!4664755))

(assert (=> b!4059544 m!4664755))

(declare-fun m!4664757 () Bool)

(assert (=> b!4059544 m!4664757))

(assert (=> b!4059544 m!4662877))

(assert (=> b!4059544 m!4664747))

(assert (=> b!4059544 m!4664757))

(assert (=> b!4059544 m!4664747))

(declare-fun m!4664759 () Bool)

(assert (=> b!4059544 m!4664759))

(assert (=> b!4059545 m!4662877))

(assert (=> b!4059545 m!4664755))

(assert (=> b!4058309 d!1206399))

(assert (=> b!4058309 d!1206059))

(assert (=> b!4058309 d!1206055))

(assert (=> b!4058309 d!1206057))

(declare-fun d!1206401 () Bool)

(assert (=> d!1206401 (= lt!1449249 lt!1449266)))

(assert (=> d!1206401 true))

(declare-fun _$60!825 () Unit!62757)

(assert (=> d!1206401 (= (choose!24660 lt!1449249 lt!1449266 lt!1449255) _$60!825)))

(assert (=> d!1205743 d!1206401))

(assert (=> d!1205743 d!1205935))

(assert (=> b!4058564 d!1206083))

(assert (=> bm!288061 d!1206259))

(declare-fun b!4059550 () Bool)

(declare-fun res!1655741 () Bool)

(declare-fun e!2519106 () Bool)

(assert (=> b!4059550 (=> (not res!1655741) (not e!2519106))))

(declare-fun call!288158 () Bool)

(assert (=> b!4059550 (= res!1655741 call!288158)))

(declare-fun e!2519103 () Bool)

(assert (=> b!4059550 (= e!2519103 e!2519106)))

(declare-fun bm!288153 () Bool)

(declare-fun call!288160 () Bool)

(declare-fun call!288159 () Bool)

(assert (=> bm!288153 (= call!288160 call!288159)))

(declare-fun d!1206403 () Bool)

(declare-fun res!1655744 () Bool)

(declare-fun e!2519102 () Bool)

(assert (=> d!1206403 (=> res!1655744 e!2519102)))

(assert (=> d!1206403 (= res!1655744 ((_ is ElementMatch!11865) (regex!6960 (rule!10050 token!484))))))

(assert (=> d!1206403 (= (validRegex!5368 (regex!6960 (rule!10050 token!484))) e!2519102)))

(declare-fun b!4059551 () Bool)

(declare-fun e!2519105 () Bool)

(declare-fun e!2519104 () Bool)

(assert (=> b!4059551 (= e!2519105 e!2519104)))

(declare-fun res!1655742 () Bool)

(assert (=> b!4059551 (= res!1655742 (not (nullable!4168 (reg!12194 (regex!6960 (rule!10050 token!484))))))))

(assert (=> b!4059551 (=> (not res!1655742) (not e!2519104))))

(declare-fun b!4059552 () Bool)

(declare-fun e!2519107 () Bool)

(assert (=> b!4059552 (= e!2519107 call!288160)))

(declare-fun b!4059553 () Bool)

(assert (=> b!4059553 (= e!2519106 call!288160)))

(declare-fun b!4059554 () Bool)

(assert (=> b!4059554 (= e!2519105 e!2519103)))

(declare-fun c!701106 () Bool)

(assert (=> b!4059554 (= c!701106 ((_ is Union!11865) (regex!6960 (rule!10050 token!484))))))

(declare-fun b!4059555 () Bool)

(assert (=> b!4059555 (= e!2519102 e!2519105)))

(declare-fun c!701107 () Bool)

(assert (=> b!4059555 (= c!701107 ((_ is Star!11865) (regex!6960 (rule!10050 token!484))))))

(declare-fun b!4059556 () Bool)

(declare-fun res!1655743 () Bool)

(declare-fun e!2519101 () Bool)

(assert (=> b!4059556 (=> res!1655743 e!2519101)))

(assert (=> b!4059556 (= res!1655743 (not ((_ is Concat!19056) (regex!6960 (rule!10050 token!484)))))))

(assert (=> b!4059556 (= e!2519103 e!2519101)))

(declare-fun b!4059557 () Bool)

(assert (=> b!4059557 (= e!2519101 e!2519107)))

(declare-fun res!1655740 () Bool)

(assert (=> b!4059557 (=> (not res!1655740) (not e!2519107))))

(assert (=> b!4059557 (= res!1655740 call!288158)))

(declare-fun bm!288154 () Bool)

(assert (=> bm!288154 (= call!288158 (validRegex!5368 (ite c!701106 (regOne!24243 (regex!6960 (rule!10050 token!484))) (regOne!24242 (regex!6960 (rule!10050 token!484))))))))

(declare-fun bm!288155 () Bool)

(assert (=> bm!288155 (= call!288159 (validRegex!5368 (ite c!701107 (reg!12194 (regex!6960 (rule!10050 token!484))) (ite c!701106 (regTwo!24243 (regex!6960 (rule!10050 token!484))) (regTwo!24242 (regex!6960 (rule!10050 token!484)))))))))

(declare-fun b!4059558 () Bool)

(assert (=> b!4059558 (= e!2519104 call!288159)))

(assert (= (and d!1206403 (not res!1655744)) b!4059555))

(assert (= (and b!4059555 c!701107) b!4059551))

(assert (= (and b!4059555 (not c!701107)) b!4059554))

(assert (= (and b!4059551 res!1655742) b!4059558))

(assert (= (and b!4059554 c!701106) b!4059550))

(assert (= (and b!4059554 (not c!701106)) b!4059556))

(assert (= (and b!4059550 res!1655741) b!4059553))

(assert (= (and b!4059556 (not res!1655743)) b!4059557))

(assert (= (and b!4059557 res!1655740) b!4059552))

(assert (= (or b!4059553 b!4059552) bm!288153))

(assert (= (or b!4059550 b!4059557) bm!288154))

(assert (= (or b!4059558 bm!288153) bm!288155))

(declare-fun m!4664761 () Bool)

(assert (=> b!4059551 m!4664761))

(declare-fun m!4664763 () Bool)

(assert (=> bm!288154 m!4664763))

(declare-fun m!4664765 () Bool)

(assert (=> bm!288155 m!4664765))

(assert (=> d!1205769 d!1206403))

(declare-fun d!1206405 () Bool)

(declare-fun lt!1449931 () List!43497)

(assert (=> d!1206405 (= (++!11362 (t!336350 newSuffix!27) lt!1449931) (tail!6303 suffix!1299))))

(declare-fun e!2519108 () List!43497)

(assert (=> d!1206405 (= lt!1449931 e!2519108)))

(declare-fun c!701108 () Bool)

(assert (=> d!1206405 (= c!701108 ((_ is Cons!43373) (t!336350 newSuffix!27)))))

(assert (=> d!1206405 (>= (size!32428 (tail!6303 suffix!1299)) (size!32428 (t!336350 newSuffix!27)))))

(assert (=> d!1206405 (= (getSuffix!2464 (tail!6303 suffix!1299) (t!336350 newSuffix!27)) lt!1449931)))

(declare-fun b!4059559 () Bool)

(assert (=> b!4059559 (= e!2519108 (getSuffix!2464 (tail!6303 (tail!6303 suffix!1299)) (t!336350 (t!336350 newSuffix!27))))))

(declare-fun b!4059560 () Bool)

(assert (=> b!4059560 (= e!2519108 (tail!6303 suffix!1299))))

(assert (= (and d!1206405 c!701108) b!4059559))

(assert (= (and d!1206405 (not c!701108)) b!4059560))

(declare-fun m!4664767 () Bool)

(assert (=> d!1206405 m!4664767))

(assert (=> d!1206405 m!4663651))

(assert (=> d!1206405 m!4664667))

(assert (=> d!1206405 m!4663777))

(assert (=> b!4059559 m!4663651))

(assert (=> b!4059559 m!4664659))

(assert (=> b!4059559 m!4664659))

(declare-fun m!4664769 () Bool)

(assert (=> b!4059559 m!4664769))

(assert (=> b!4058840 d!1206405))

(assert (=> b!4058840 d!1206355))

(declare-fun d!1206407 () Bool)

(declare-fun lt!1449932 () Int)

(assert (=> d!1206407 (>= lt!1449932 0)))

(declare-fun e!2519109 () Int)

(assert (=> d!1206407 (= lt!1449932 e!2519109)))

(declare-fun c!701109 () Bool)

(assert (=> d!1206407 (= c!701109 ((_ is Nil!43373) (t!336350 (originalCharacters!7560 token!484))))))

(assert (=> d!1206407 (= (size!32428 (t!336350 (originalCharacters!7560 token!484))) lt!1449932)))

(declare-fun b!4059561 () Bool)

(assert (=> b!4059561 (= e!2519109 0)))

(declare-fun b!4059562 () Bool)

(assert (=> b!4059562 (= e!2519109 (+ 1 (size!32428 (t!336350 (t!336350 (originalCharacters!7560 token!484))))))))

(assert (= (and d!1206407 c!701109) b!4059561))

(assert (= (and d!1206407 (not c!701109)) b!4059562))

(declare-fun m!4664771 () Bool)

(assert (=> b!4059562 m!4664771))

(assert (=> b!4058849 d!1206407))

(declare-fun b!4059564 () Bool)

(declare-fun e!2519110 () List!43497)

(declare-fun e!2519111 () List!43497)

(assert (=> b!4059564 (= e!2519110 e!2519111)))

(declare-fun c!701111 () Bool)

(assert (=> b!4059564 (= c!701111 ((_ is Leaf!20358) (c!700780 (charsOf!4776 (_1!24351 (v!39791 lt!1449276))))))))

(declare-fun b!4059566 () Bool)

(assert (=> b!4059566 (= e!2519111 (++!11362 (list!16165 (left!32641 (c!700780 (charsOf!4776 (_1!24351 (v!39791 lt!1449276)))))) (list!16165 (right!32971 (c!700780 (charsOf!4776 (_1!24351 (v!39791 lt!1449276))))))))))

(declare-fun b!4059565 () Bool)

(assert (=> b!4059565 (= e!2519111 (list!16168 (xs!16477 (c!700780 (charsOf!4776 (_1!24351 (v!39791 lt!1449276)))))))))

(declare-fun b!4059563 () Bool)

(assert (=> b!4059563 (= e!2519110 Nil!43373)))

(declare-fun d!1206409 () Bool)

(declare-fun c!701110 () Bool)

(assert (=> d!1206409 (= c!701110 ((_ is Empty!13171) (c!700780 (charsOf!4776 (_1!24351 (v!39791 lt!1449276))))))))

(assert (=> d!1206409 (= (list!16165 (c!700780 (charsOf!4776 (_1!24351 (v!39791 lt!1449276))))) e!2519110)))

(assert (= (and d!1206409 c!701110) b!4059563))

(assert (= (and d!1206409 (not c!701110)) b!4059564))

(assert (= (and b!4059564 c!701111) b!4059565))

(assert (= (and b!4059564 (not c!701111)) b!4059566))

(declare-fun m!4664773 () Bool)

(assert (=> b!4059566 m!4664773))

(declare-fun m!4664775 () Bool)

(assert (=> b!4059566 m!4664775))

(assert (=> b!4059566 m!4664773))

(assert (=> b!4059566 m!4664775))

(declare-fun m!4664777 () Bool)

(assert (=> b!4059566 m!4664777))

(declare-fun m!4664779 () Bool)

(assert (=> b!4059565 m!4664779))

(assert (=> d!1205841 d!1206409))

(declare-fun d!1206411 () Bool)

(declare-fun lt!1449933 () Int)

(assert (=> d!1206411 (>= lt!1449933 0)))

(declare-fun e!2519112 () Int)

(assert (=> d!1206411 (= lt!1449933 e!2519112)))

(declare-fun c!701112 () Bool)

(assert (=> d!1206411 (= c!701112 ((_ is Nil!43373) lt!1449551))))

(assert (=> d!1206411 (= (size!32428 lt!1449551) lt!1449933)))

(declare-fun b!4059567 () Bool)

(assert (=> b!4059567 (= e!2519112 0)))

(declare-fun b!4059568 () Bool)

(assert (=> b!4059568 (= e!2519112 (+ 1 (size!32428 (t!336350 lt!1449551))))))

(assert (= (and d!1206411 c!701112) b!4059567))

(assert (= (and d!1206411 (not c!701112)) b!4059568))

(declare-fun m!4664781 () Bool)

(assert (=> b!4059568 m!4664781))

(assert (=> b!4058802 d!1206411))

(assert (=> b!4058802 d!1205685))

(declare-fun d!1206413 () Bool)

(declare-fun lt!1449934 () Int)

(assert (=> d!1206413 (>= lt!1449934 0)))

(declare-fun e!2519113 () Int)

(assert (=> d!1206413 (= lt!1449934 e!2519113)))

(declare-fun c!701113 () Bool)

(assert (=> d!1206413 (= c!701113 ((_ is Nil!43373) lt!1449232))))

(assert (=> d!1206413 (= (size!32428 lt!1449232) lt!1449934)))

(declare-fun b!4059569 () Bool)

(assert (=> b!4059569 (= e!2519113 0)))

(declare-fun b!4059570 () Bool)

(assert (=> b!4059570 (= e!2519113 (+ 1 (size!32428 (t!336350 lt!1449232))))))

(assert (= (and d!1206413 c!701113) b!4059569))

(assert (= (and d!1206413 (not c!701113)) b!4059570))

(declare-fun m!4664783 () Bool)

(assert (=> b!4059570 m!4664783))

(assert (=> b!4058802 d!1206413))

(declare-fun d!1206415 () Bool)

(assert (=> d!1206415 (= (list!16164 lt!1449477) (list!16165 (c!700780 lt!1449477)))))

(declare-fun bs!592009 () Bool)

(assert (= bs!592009 d!1206415))

(declare-fun m!4664785 () Bool)

(assert (=> bs!592009 m!4664785))

(assert (=> d!1205831 d!1206415))

(assert (=> b!4058823 d!1206021))

(declare-fun d!1206417 () Bool)

(assert (=> d!1206417 (= (apply!10149 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449563)))) (seqFromList!5177 (originalCharacters!7560 (_1!24351 (get!14226 lt!1449563))))) (dynLambda!18426 (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449563))))) (seqFromList!5177 (originalCharacters!7560 (_1!24351 (get!14226 lt!1449563))))))))

(declare-fun b_lambda!118623 () Bool)

(assert (=> (not b_lambda!118623) (not d!1206417)))

(declare-fun tb!244183 () Bool)

(declare-fun t!336459 () Bool)

(assert (=> (and b!4058071 (= (toValue!9516 (transformation!6960 (h!48795 rules!2999))) (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449563)))))) t!336459) tb!244183))

(declare-fun result!295896 () Bool)

(assert (=> tb!244183 (= result!295896 (inv!21 (dynLambda!18426 (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449563))))) (seqFromList!5177 (originalCharacters!7560 (_1!24351 (get!14226 lt!1449563)))))))))

(declare-fun m!4664787 () Bool)

(assert (=> tb!244183 m!4664787))

(assert (=> d!1206417 t!336459))

(declare-fun b_and!312119 () Bool)

(assert (= b_and!312113 (and (=> t!336459 result!295896) b_and!312119)))

(declare-fun t!336461 () Bool)

(declare-fun tb!244185 () Bool)

(assert (=> (and b!4058069 (= (toValue!9516 (transformation!6960 (rule!10050 token!484))) (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449563)))))) t!336461) tb!244185))

(declare-fun result!295898 () Bool)

(assert (= result!295898 result!295896))

(assert (=> d!1206417 t!336461))

(declare-fun b_and!312121 () Bool)

(assert (= b_and!312115 (and (=> t!336461 result!295898) b_and!312121)))

(declare-fun t!336463 () Bool)

(declare-fun tb!244187 () Bool)

(assert (=> (and b!4058893 (= (toValue!9516 (transformation!6960 (h!48795 (t!336352 rules!2999)))) (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449563)))))) t!336463) tb!244187))

(declare-fun result!295900 () Bool)

(assert (= result!295900 result!295896))

(assert (=> d!1206417 t!336463))

(declare-fun b_and!312123 () Bool)

(assert (= b_and!312117 (and (=> t!336463 result!295900) b_and!312123)))

(assert (=> d!1206417 m!4663729))

(declare-fun m!4664789 () Bool)

(assert (=> d!1206417 m!4664789))

(assert (=> b!4058823 d!1206417))

(declare-fun d!1206419 () Bool)

(assert (=> d!1206419 (= (seqFromList!5177 (originalCharacters!7560 (_1!24351 (get!14226 lt!1449563)))) (fromListB!2362 (originalCharacters!7560 (_1!24351 (get!14226 lt!1449563)))))))

(declare-fun bs!592010 () Bool)

(assert (= bs!592010 d!1206419))

(declare-fun m!4664791 () Bool)

(assert (=> bs!592010 m!4664791))

(assert (=> b!4058823 d!1206419))

(declare-fun d!1206421 () Bool)

(declare-fun lt!1449935 () Int)

(assert (=> d!1206421 (>= lt!1449935 0)))

(declare-fun e!2519115 () Int)

(assert (=> d!1206421 (= lt!1449935 e!2519115)))

(declare-fun c!701114 () Bool)

(assert (=> d!1206421 (= c!701114 ((_ is Nil!43373) (_2!24351 (get!14226 lt!1449359))))))

(assert (=> d!1206421 (= (size!32428 (_2!24351 (get!14226 lt!1449359))) lt!1449935)))

(declare-fun b!4059571 () Bool)

(assert (=> b!4059571 (= e!2519115 0)))

(declare-fun b!4059572 () Bool)

(assert (=> b!4059572 (= e!2519115 (+ 1 (size!32428 (t!336350 (_2!24351 (get!14226 lt!1449359))))))))

(assert (= (and d!1206421 c!701114) b!4059571))

(assert (= (and d!1206421 (not c!701114)) b!4059572))

(declare-fun m!4664793 () Bool)

(assert (=> b!4059572 m!4664793))

(assert (=> b!4058316 d!1206421))

(assert (=> b!4058316 d!1206059))

(assert (=> b!4058316 d!1205989))

(declare-fun d!1206423 () Bool)

(declare-fun charsToBigInt!1 (List!43498) Int)

(assert (=> d!1206423 (= (inv!17 (value!218994 token!484)) (= (charsToBigInt!1 (text!50778 (value!218994 token!484))) (value!218987 (value!218994 token!484))))))

(declare-fun bs!592011 () Bool)

(assert (= bs!592011 d!1206423))

(declare-fun m!4664795 () Bool)

(assert (=> bs!592011 m!4664795))

(assert (=> b!4058799 d!1206423))

(assert (=> b!4058782 d!1205999))

(assert (=> b!4058782 d!1206111))

(assert (=> b!4058266 d!1206129))

(declare-fun d!1206425 () Bool)

(assert (=> d!1206425 (= (apply!10149 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449345)))) (seqFromList!5177 (originalCharacters!7560 (_1!24351 (get!14226 lt!1449345))))) (dynLambda!18426 (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449345))))) (seqFromList!5177 (originalCharacters!7560 (_1!24351 (get!14226 lt!1449345))))))))

(declare-fun b_lambda!118625 () Bool)

(assert (=> (not b_lambda!118625) (not d!1206425)))

(declare-fun tb!244189 () Bool)

(declare-fun t!336465 () Bool)

(assert (=> (and b!4058071 (= (toValue!9516 (transformation!6960 (h!48795 rules!2999))) (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449345)))))) t!336465) tb!244189))

(declare-fun result!295902 () Bool)

(assert (=> tb!244189 (= result!295902 (inv!21 (dynLambda!18426 (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449345))))) (seqFromList!5177 (originalCharacters!7560 (_1!24351 (get!14226 lt!1449345)))))))))

(declare-fun m!4664797 () Bool)

(assert (=> tb!244189 m!4664797))

(assert (=> d!1206425 t!336465))

(declare-fun b_and!312125 () Bool)

(assert (= b_and!312119 (and (=> t!336465 result!295902) b_and!312125)))

(declare-fun tb!244191 () Bool)

(declare-fun t!336467 () Bool)

(assert (=> (and b!4058069 (= (toValue!9516 (transformation!6960 (rule!10050 token!484))) (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449345)))))) t!336467) tb!244191))

(declare-fun result!295904 () Bool)

(assert (= result!295904 result!295902))

(assert (=> d!1206425 t!336467))

(declare-fun b_and!312127 () Bool)

(assert (= b_and!312121 (and (=> t!336467 result!295904) b_and!312127)))

(declare-fun tb!244193 () Bool)

(declare-fun t!336469 () Bool)

(assert (=> (and b!4058893 (= (toValue!9516 (transformation!6960 (h!48795 (t!336352 rules!2999)))) (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449345)))))) t!336469) tb!244193))

(declare-fun result!295906 () Bool)

(assert (= result!295906 result!295902))

(assert (=> d!1206425 t!336469))

(declare-fun b_and!312129 () Bool)

(assert (= b_and!312123 (and (=> t!336469 result!295906) b_and!312129)))

(assert (=> d!1206425 m!4662795))

(declare-fun m!4664799 () Bool)

(assert (=> d!1206425 m!4664799))

(assert (=> b!4058266 d!1206425))

(declare-fun d!1206427 () Bool)

(assert (=> d!1206427 (= (seqFromList!5177 (originalCharacters!7560 (_1!24351 (get!14226 lt!1449345)))) (fromListB!2362 (originalCharacters!7560 (_1!24351 (get!14226 lt!1449345)))))))

(declare-fun bs!592012 () Bool)

(assert (= bs!592012 d!1206427))

(declare-fun m!4664801 () Bool)

(assert (=> bs!592012 m!4664801))

(assert (=> b!4058266 d!1206427))

(assert (=> b!4058859 d!1206083))

(declare-fun d!1206429 () Bool)

(declare-fun lt!1449936 () Int)

(assert (=> d!1206429 (>= lt!1449936 0)))

(declare-fun e!2519117 () Int)

(assert (=> d!1206429 (= lt!1449936 e!2519117)))

(declare-fun c!701115 () Bool)

(assert (=> d!1206429 (= c!701115 ((_ is Nil!43373) lt!1449274))))

(assert (=> d!1206429 (= (size!32428 lt!1449274) lt!1449936)))

(declare-fun b!4059573 () Bool)

(assert (=> b!4059573 (= e!2519117 0)))

(declare-fun b!4059574 () Bool)

(assert (=> b!4059574 (= e!2519117 (+ 1 (size!32428 (t!336350 lt!1449274))))))

(assert (= (and d!1206429 c!701115) b!4059573))

(assert (= (and d!1206429 (not c!701115)) b!4059574))

(declare-fun m!4664803 () Bool)

(assert (=> b!4059574 m!4664803))

(assert (=> b!4058583 d!1206429))

(assert (=> b!4058583 d!1205907))

(assert (=> b!4058142 d!1206083))

(declare-fun d!1206431 () Bool)

(assert (=> d!1206431 (= (head!8571 lt!1449257) (h!48793 lt!1449257))))

(assert (=> b!4058142 d!1206431))

(declare-fun d!1206433 () Bool)

(assert (=> d!1206433 (= (isEmpty!25885 (tail!6303 lt!1449249)) ((_ is Nil!43373) (tail!6303 lt!1449249)))))

(assert (=> b!4058548 d!1206433))

(assert (=> b!4058548 d!1206001))

(declare-fun d!1206435 () Bool)

(declare-fun c!701116 () Bool)

(assert (=> d!1206435 (= c!701116 ((_ is Nil!43373) lt!1449551))))

(declare-fun e!2519118 () (InoxSet C!23916))

(assert (=> d!1206435 (= (content!6612 lt!1449551) e!2519118)))

(declare-fun b!4059575 () Bool)

(assert (=> b!4059575 (= e!2519118 ((as const (Array C!23916 Bool)) false))))

(declare-fun b!4059576 () Bool)

(assert (=> b!4059576 (= e!2519118 ((_ map or) (store ((as const (Array C!23916 Bool)) false) (h!48793 lt!1449551) true) (content!6612 (t!336350 lt!1449551))))))

(assert (= (and d!1206435 c!701116) b!4059575))

(assert (= (and d!1206435 (not c!701116)) b!4059576))

(declare-fun m!4664805 () Bool)

(assert (=> b!4059576 m!4664805))

(declare-fun m!4664807 () Bool)

(assert (=> b!4059576 m!4664807))

(assert (=> d!1205939 d!1206435))

(assert (=> d!1205939 d!1206015))

(declare-fun d!1206437 () Bool)

(declare-fun c!701117 () Bool)

(assert (=> d!1206437 (= c!701117 ((_ is Nil!43373) lt!1449232))))

(declare-fun e!2519119 () (InoxSet C!23916))

(assert (=> d!1206437 (= (content!6612 lt!1449232) e!2519119)))

(declare-fun b!4059577 () Bool)

(assert (=> b!4059577 (= e!2519119 ((as const (Array C!23916 Bool)) false))))

(declare-fun b!4059578 () Bool)

(assert (=> b!4059578 (= e!2519119 ((_ map or) (store ((as const (Array C!23916 Bool)) false) (h!48793 lt!1449232) true) (content!6612 (t!336350 lt!1449232))))))

(assert (= (and d!1206437 c!701117) b!4059577))

(assert (= (and d!1206437 (not c!701117)) b!4059578))

(declare-fun m!4664809 () Bool)

(assert (=> b!4059578 m!4664809))

(declare-fun m!4664811 () Bool)

(assert (=> b!4059578 m!4664811))

(assert (=> d!1205939 d!1206437))

(declare-fun d!1206439 () Bool)

(declare-fun lt!1449938 () Int)

(assert (=> d!1206439 (>= lt!1449938 0)))

(declare-fun e!2519122 () Int)

(assert (=> d!1206439 (= lt!1449938 e!2519122)))

(declare-fun c!701118 () Bool)

(assert (=> d!1206439 (= c!701118 ((_ is Nil!43373) (t!336350 lt!1449266)))))

(assert (=> d!1206439 (= (size!32428 (t!336350 lt!1449266)) lt!1449938)))

(declare-fun b!4059581 () Bool)

(assert (=> b!4059581 (= e!2519122 0)))

(declare-fun b!4059582 () Bool)

(assert (=> b!4059582 (= e!2519122 (+ 1 (size!32428 (t!336350 (t!336350 lt!1449266)))))))

(assert (= (and d!1206439 c!701118) b!4059581))

(assert (= (and d!1206439 (not c!701118)) b!4059582))

(declare-fun m!4664813 () Bool)

(assert (=> b!4059582 m!4664813))

(assert (=> b!4058359 d!1206439))

(assert (=> d!1205821 d!1206003))

(assert (=> d!1205821 d!1206403))

(assert (=> d!1205829 d!1206005))

(assert (=> b!4058778 d!1206083))

(assert (=> b!4058778 d!1206389))

(declare-fun b!4059587 () Bool)

(declare-fun e!2519123 () Bool)

(assert (=> b!4059587 (= e!2519123 (isPrefix!4047 (tail!6303 (tail!6303 prefix!494)) (tail!6303 (tail!6303 lt!1449231))))))

(declare-fun b!4059585 () Bool)

(declare-fun e!2519125 () Bool)

(assert (=> b!4059585 (= e!2519125 e!2519123)))

(declare-fun res!1655747 () Bool)

(assert (=> b!4059585 (=> (not res!1655747) (not e!2519123))))

(assert (=> b!4059585 (= res!1655747 (not ((_ is Nil!43373) (tail!6303 lt!1449231))))))

(declare-fun b!4059586 () Bool)

(declare-fun res!1655748 () Bool)

(assert (=> b!4059586 (=> (not res!1655748) (not e!2519123))))

(assert (=> b!4059586 (= res!1655748 (= (head!8571 (tail!6303 prefix!494)) (head!8571 (tail!6303 lt!1449231))))))

(declare-fun d!1206441 () Bool)

(declare-fun e!2519124 () Bool)

(assert (=> d!1206441 e!2519124))

(declare-fun res!1655749 () Bool)

(assert (=> d!1206441 (=> res!1655749 e!2519124)))

(declare-fun lt!1449939 () Bool)

(assert (=> d!1206441 (= res!1655749 (not lt!1449939))))

(assert (=> d!1206441 (= lt!1449939 e!2519125)))

(declare-fun res!1655750 () Bool)

(assert (=> d!1206441 (=> res!1655750 e!2519125)))

(assert (=> d!1206441 (= res!1655750 ((_ is Nil!43373) (tail!6303 prefix!494)))))

(assert (=> d!1206441 (= (isPrefix!4047 (tail!6303 prefix!494) (tail!6303 lt!1449231)) lt!1449939)))

(declare-fun b!4059588 () Bool)

(assert (=> b!4059588 (= e!2519124 (>= (size!32428 (tail!6303 lt!1449231)) (size!32428 (tail!6303 prefix!494))))))

(assert (= (and d!1206441 (not res!1655750)) b!4059585))

(assert (= (and b!4059585 res!1655747) b!4059586))

(assert (= (and b!4059586 res!1655748) b!4059587))

(assert (= (and d!1206441 (not res!1655749)) b!4059588))

(assert (=> b!4059587 m!4662669))

(assert (=> b!4059587 m!4664411))

(assert (=> b!4059587 m!4662651))

(assert (=> b!4059587 m!4664403))

(assert (=> b!4059587 m!4664411))

(assert (=> b!4059587 m!4664403))

(declare-fun m!4664819 () Bool)

(assert (=> b!4059587 m!4664819))

(assert (=> b!4059586 m!4662669))

(assert (=> b!4059586 m!4664415))

(assert (=> b!4059586 m!4662651))

(assert (=> b!4059586 m!4664407))

(assert (=> b!4059588 m!4662651))

(assert (=> b!4059588 m!4664409))

(assert (=> b!4059588 m!4662669))

(assert (=> b!4059588 m!4664417))

(assert (=> b!4058147 d!1206441))

(assert (=> b!4058147 d!1206225))

(assert (=> b!4058147 d!1206221))

(declare-fun d!1206445 () Bool)

(assert (=> d!1206445 (= (list!16164 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 token!484))) (value!218994 token!484))) (list!16165 (c!700780 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 token!484))) (value!218994 token!484)))))))

(declare-fun bs!592013 () Bool)

(assert (= bs!592013 d!1206445))

(declare-fun m!4664823 () Bool)

(assert (=> bs!592013 m!4664823))

(assert (=> b!4058846 d!1206445))

(assert (=> d!1205837 d!1205925))

(assert (=> d!1205837 d!1205905))

(assert (=> d!1205837 d!1205907))

(declare-fun d!1206447 () Bool)

(assert (=> d!1206447 (= (maxPrefixOneRule!2859 thiss!21717 (rule!10050 (_1!24351 (v!39791 lt!1449276))) lt!1449255) (Some!9373 (tuple2!42435 (Token!13059 (apply!10149 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) (seqFromList!5177 lt!1449249)) (rule!10050 (_1!24351 (v!39791 lt!1449276))) (size!32428 lt!1449249) lt!1449249) (_2!24351 (v!39791 lt!1449276)))))))

(assert (=> d!1206447 true))

(declare-fun _$59!725 () Unit!62757)

(assert (=> d!1206447 (= (choose!24667 thiss!21717 rules!2999 lt!1449249 lt!1449255 (_2!24351 (v!39791 lt!1449276)) (rule!10050 (_1!24351 (v!39791 lt!1449276)))) _$59!725)))

(declare-fun bs!592016 () Bool)

(assert (= bs!592016 d!1206447))

(assert (=> bs!592016 m!4662589))

(assert (=> bs!592016 m!4662573))

(assert (=> bs!592016 m!4662573))

(assert (=> bs!592016 m!4662575))

(assert (=> bs!592016 m!4662577))

(assert (=> d!1205837 d!1206447))

(assert (=> d!1205837 d!1205917))

(assert (=> d!1205837 d!1205847))

(declare-fun d!1206477 () Bool)

(declare-fun e!2519146 () Bool)

(assert (=> d!1206477 e!2519146))

(declare-fun res!1655770 () Bool)

(assert (=> d!1206477 (=> res!1655770 e!2519146)))

(declare-fun lt!1449953 () Option!9374)

(assert (=> d!1206477 (= res!1655770 (isEmpty!25884 lt!1449953))))

(declare-fun e!2519148 () Option!9374)

(assert (=> d!1206477 (= lt!1449953 e!2519148)))

(declare-fun c!701129 () Bool)

(declare-fun lt!1449954 () tuple2!42436)

(assert (=> d!1206477 (= c!701129 (isEmpty!25885 (_1!24352 lt!1449954)))))

(assert (=> d!1206477 (= lt!1449954 (findLongestMatch!1317 (regex!6960 (h!48795 rules!2999)) lt!1449255))))

(assert (=> d!1206477 (ruleValid!2890 thiss!21717 (h!48795 rules!2999))))

(assert (=> d!1206477 (= (maxPrefixOneRule!2859 thiss!21717 (h!48795 rules!2999) lt!1449255) lt!1449953)))

(declare-fun b!4059620 () Bool)

(declare-fun e!2519145 () Bool)

(assert (=> b!4059620 (= e!2519145 (matchR!5818 (regex!6960 (h!48795 rules!2999)) (_1!24352 (findLongestMatchInner!1404 (regex!6960 (h!48795 rules!2999)) Nil!43373 (size!32428 Nil!43373) lt!1449255 lt!1449255 (size!32428 lt!1449255)))))))

(declare-fun b!4059621 () Bool)

(assert (=> b!4059621 (= e!2519148 (Some!9373 (tuple2!42435 (Token!13059 (apply!10149 (transformation!6960 (h!48795 rules!2999)) (seqFromList!5177 (_1!24352 lt!1449954))) (h!48795 rules!2999) (size!32429 (seqFromList!5177 (_1!24352 lt!1449954))) (_1!24352 lt!1449954)) (_2!24352 lt!1449954))))))

(declare-fun lt!1449957 () Unit!62757)

(assert (=> b!4059621 (= lt!1449957 (longestMatchIsAcceptedByMatchOrIsEmpty!1377 (regex!6960 (h!48795 rules!2999)) lt!1449255))))

(declare-fun res!1655769 () Bool)

(assert (=> b!4059621 (= res!1655769 (isEmpty!25885 (_1!24352 (findLongestMatchInner!1404 (regex!6960 (h!48795 rules!2999)) Nil!43373 (size!32428 Nil!43373) lt!1449255 lt!1449255 (size!32428 lt!1449255)))))))

(assert (=> b!4059621 (=> res!1655769 e!2519145)))

(assert (=> b!4059621 e!2519145))

(declare-fun lt!1449955 () Unit!62757)

(assert (=> b!4059621 (= lt!1449955 lt!1449957)))

(declare-fun lt!1449956 () Unit!62757)

(assert (=> b!4059621 (= lt!1449956 (lemmaSemiInverse!1932 (transformation!6960 (h!48795 rules!2999)) (seqFromList!5177 (_1!24352 lt!1449954))))))

(declare-fun b!4059622 () Bool)

(declare-fun e!2519147 () Bool)

(assert (=> b!4059622 (= e!2519146 e!2519147)))

(declare-fun res!1655765 () Bool)

(assert (=> b!4059622 (=> (not res!1655765) (not e!2519147))))

(assert (=> b!4059622 (= res!1655765 (matchR!5818 (regex!6960 (h!48795 rules!2999)) (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449953))))))))

(declare-fun b!4059623 () Bool)

(assert (=> b!4059623 (= e!2519148 None!9373)))

(declare-fun b!4059624 () Bool)

(declare-fun res!1655768 () Bool)

(assert (=> b!4059624 (=> (not res!1655768) (not e!2519147))))

(assert (=> b!4059624 (= res!1655768 (= (value!218994 (_1!24351 (get!14226 lt!1449953))) (apply!10149 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449953)))) (seqFromList!5177 (originalCharacters!7560 (_1!24351 (get!14226 lt!1449953)))))))))

(declare-fun b!4059625 () Bool)

(declare-fun res!1655767 () Bool)

(assert (=> b!4059625 (=> (not res!1655767) (not e!2519147))))

(assert (=> b!4059625 (= res!1655767 (= (rule!10050 (_1!24351 (get!14226 lt!1449953))) (h!48795 rules!2999)))))

(declare-fun b!4059626 () Bool)

(declare-fun res!1655766 () Bool)

(assert (=> b!4059626 (=> (not res!1655766) (not e!2519147))))

(assert (=> b!4059626 (= res!1655766 (= (++!11362 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449953)))) (_2!24351 (get!14226 lt!1449953))) lt!1449255))))

(declare-fun b!4059627 () Bool)

(assert (=> b!4059627 (= e!2519147 (= (size!32427 (_1!24351 (get!14226 lt!1449953))) (size!32428 (originalCharacters!7560 (_1!24351 (get!14226 lt!1449953))))))))

(declare-fun b!4059628 () Bool)

(declare-fun res!1655764 () Bool)

(assert (=> b!4059628 (=> (not res!1655764) (not e!2519147))))

(assert (=> b!4059628 (= res!1655764 (< (size!32428 (_2!24351 (get!14226 lt!1449953))) (size!32428 lt!1449255)))))

(assert (= (and d!1206477 c!701129) b!4059623))

(assert (= (and d!1206477 (not c!701129)) b!4059621))

(assert (= (and b!4059621 (not res!1655769)) b!4059620))

(assert (= (and d!1206477 (not res!1655770)) b!4059622))

(assert (= (and b!4059622 res!1655765) b!4059626))

(assert (= (and b!4059626 res!1655766) b!4059628))

(assert (= (and b!4059628 res!1655764) b!4059625))

(assert (= (and b!4059625 res!1655767) b!4059624))

(assert (= (and b!4059624 res!1655768) b!4059627))

(declare-fun m!4664879 () Bool)

(assert (=> b!4059625 m!4664879))

(assert (=> b!4059624 m!4664879))

(declare-fun m!4664881 () Bool)

(assert (=> b!4059624 m!4664881))

(assert (=> b!4059624 m!4664881))

(declare-fun m!4664883 () Bool)

(assert (=> b!4059624 m!4664883))

(assert (=> b!4059626 m!4664879))

(declare-fun m!4664885 () Bool)

(assert (=> b!4059626 m!4664885))

(assert (=> b!4059626 m!4664885))

(declare-fun m!4664887 () Bool)

(assert (=> b!4059626 m!4664887))

(assert (=> b!4059626 m!4664887))

(declare-fun m!4664889 () Bool)

(assert (=> b!4059626 m!4664889))

(declare-fun m!4664891 () Bool)

(assert (=> d!1206477 m!4664891))

(declare-fun m!4664893 () Bool)

(assert (=> d!1206477 m!4664893))

(declare-fun m!4664895 () Bool)

(assert (=> d!1206477 m!4664895))

(assert (=> d!1206477 m!4664047))

(assert (=> b!4059628 m!4664879))

(declare-fun m!4664897 () Bool)

(assert (=> b!4059628 m!4664897))

(assert (=> b!4059628 m!4662901))

(assert (=> b!4059622 m!4664879))

(assert (=> b!4059622 m!4664885))

(assert (=> b!4059622 m!4664885))

(assert (=> b!4059622 m!4664887))

(assert (=> b!4059622 m!4664887))

(declare-fun m!4664903 () Bool)

(assert (=> b!4059622 m!4664903))

(assert (=> b!4059620 m!4663593))

(assert (=> b!4059620 m!4662901))

(assert (=> b!4059620 m!4663593))

(assert (=> b!4059620 m!4662901))

(declare-fun m!4664909 () Bool)

(assert (=> b!4059620 m!4664909))

(declare-fun m!4664915 () Bool)

(assert (=> b!4059620 m!4664915))

(assert (=> b!4059627 m!4664879))

(declare-fun m!4664919 () Bool)

(assert (=> b!4059627 m!4664919))

(declare-fun m!4664921 () Bool)

(assert (=> b!4059621 m!4664921))

(declare-fun m!4664923 () Bool)

(assert (=> b!4059621 m!4664923))

(declare-fun m!4664927 () Bool)

(assert (=> b!4059621 m!4664927))

(declare-fun m!4664929 () Bool)

(assert (=> b!4059621 m!4664929))

(assert (=> b!4059621 m!4664927))

(declare-fun m!4664931 () Bool)

(assert (=> b!4059621 m!4664931))

(assert (=> b!4059621 m!4663593))

(assert (=> b!4059621 m!4662901))

(assert (=> b!4059621 m!4664909))

(assert (=> b!4059621 m!4664927))

(declare-fun m!4664935 () Bool)

(assert (=> b!4059621 m!4664935))

(assert (=> b!4059621 m!4664927))

(assert (=> b!4059621 m!4662901))

(assert (=> b!4059621 m!4663593))

(assert (=> bm!288056 d!1206477))

(declare-fun bs!592018 () Bool)

(declare-fun d!1206483 () Bool)

(assert (= bs!592018 (and d!1206483 d!1206135)))

(declare-fun lambda!127560 () Int)

(assert (=> bs!592018 (= (and (= (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (toChars!9375 (transformation!6960 (rule!10050 token!484)))) (= (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (toValue!9516 (transformation!6960 (rule!10050 token!484))))) (= lambda!127560 lambda!127548))))

(declare-fun bs!592019 () Bool)

(assert (= bs!592019 (and d!1206483 d!1206189)))

(assert (=> bs!592019 (= lambda!127560 lambda!127554)))

(assert (=> d!1206483 true))

(assert (=> d!1206483 (< (dynLambda!18429 order!22707 (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))) (dynLambda!18430 order!22709 lambda!127560))))

(assert (=> d!1206483 true))

(assert (=> d!1206483 (< (dynLambda!18427 order!22703 (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))) (dynLambda!18430 order!22709 lambda!127560))))

(assert (=> d!1206483 (= (semiInverseModEq!2976 (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))) (Forall!1498 lambda!127560))))

(declare-fun bs!592020 () Bool)

(assert (= bs!592020 d!1206483))

(declare-fun m!4664947 () Bool)

(assert (=> bs!592020 m!4664947))

(assert (=> d!1205911 d!1206483))

(declare-fun d!1206493 () Bool)

(declare-fun c!701134 () Bool)

(assert (=> d!1206493 (= c!701134 ((_ is Nil!43373) lt!1449448))))

(declare-fun e!2519155 () (InoxSet C!23916))

(assert (=> d!1206493 (= (content!6612 lt!1449448) e!2519155)))

(declare-fun b!4059644 () Bool)

(assert (=> b!4059644 (= e!2519155 ((as const (Array C!23916 Bool)) false))))

(declare-fun b!4059645 () Bool)

(assert (=> b!4059645 (= e!2519155 ((_ map or) (store ((as const (Array C!23916 Bool)) false) (h!48793 lt!1449448) true) (content!6612 (t!336350 lt!1449448))))))

(assert (= (and d!1206493 c!701134) b!4059644))

(assert (= (and d!1206493 (not c!701134)) b!4059645))

(declare-fun m!4664951 () Bool)

(assert (=> b!4059645 m!4664951))

(declare-fun m!4664953 () Bool)

(assert (=> b!4059645 m!4664953))

(assert (=> d!1205787 d!1206493))

(declare-fun d!1206497 () Bool)

(declare-fun c!701135 () Bool)

(assert (=> d!1206497 (= c!701135 ((_ is Nil!43373) lt!1449260))))

(declare-fun e!2519156 () (InoxSet C!23916))

(assert (=> d!1206497 (= (content!6612 lt!1449260) e!2519156)))

(declare-fun b!4059646 () Bool)

(assert (=> b!4059646 (= e!2519156 ((as const (Array C!23916 Bool)) false))))

(declare-fun b!4059647 () Bool)

(assert (=> b!4059647 (= e!2519156 ((_ map or) (store ((as const (Array C!23916 Bool)) false) (h!48793 lt!1449260) true) (content!6612 (t!336350 lt!1449260))))))

(assert (= (and d!1206497 c!701135) b!4059646))

(assert (= (and d!1206497 (not c!701135)) b!4059647))

(declare-fun m!4664955 () Bool)

(assert (=> b!4059647 m!4664955))

(declare-fun m!4664957 () Bool)

(assert (=> b!4059647 m!4664957))

(assert (=> d!1205787 d!1206497))

(assert (=> d!1205787 d!1206011))

(declare-fun d!1206499 () Bool)

(declare-fun lt!1449966 () List!43497)

(assert (=> d!1206499 (= (++!11362 (t!336350 lt!1449266) lt!1449966) (tail!6303 prefix!494))))

(declare-fun e!2519157 () List!43497)

(assert (=> d!1206499 (= lt!1449966 e!2519157)))

(declare-fun c!701136 () Bool)

(assert (=> d!1206499 (= c!701136 ((_ is Cons!43373) (t!336350 lt!1449266)))))

(assert (=> d!1206499 (>= (size!32428 (tail!6303 prefix!494)) (size!32428 (t!336350 lt!1449266)))))

(assert (=> d!1206499 (= (getSuffix!2464 (tail!6303 prefix!494) (t!336350 lt!1449266)) lt!1449966)))

(declare-fun b!4059648 () Bool)

(assert (=> b!4059648 (= e!2519157 (getSuffix!2464 (tail!6303 (tail!6303 prefix!494)) (t!336350 (t!336350 lt!1449266))))))

(declare-fun b!4059649 () Bool)

(assert (=> b!4059649 (= e!2519157 (tail!6303 prefix!494))))

(assert (= (and d!1206499 c!701136) b!4059648))

(assert (= (and d!1206499 (not c!701136)) b!4059649))

(declare-fun m!4664959 () Bool)

(assert (=> d!1206499 m!4664959))

(assert (=> d!1206499 m!4662669))

(assert (=> d!1206499 m!4664417))

(assert (=> d!1206499 m!4662933))

(assert (=> b!4059648 m!4662669))

(assert (=> b!4059648 m!4664411))

(assert (=> b!4059648 m!4664411))

(declare-fun m!4664961 () Bool)

(assert (=> b!4059648 m!4664961))

(assert (=> b!4058775 d!1206499))

(assert (=> b!4058775 d!1206225))

(assert (=> d!1205773 d!1205769))

(declare-fun d!1206501 () Bool)

(assert (=> d!1206501 (ruleValid!2890 thiss!21717 (rule!10050 token!484))))

(assert (=> d!1206501 true))

(declare-fun _$65!1535 () Unit!62757)

(assert (=> d!1206501 (= (choose!24663 thiss!21717 (rule!10050 token!484) rules!2999) _$65!1535)))

(declare-fun bs!592022 () Bool)

(assert (= bs!592022 d!1206501))

(assert (=> bs!592022 m!4662549))

(assert (=> d!1205773 d!1206501))

(declare-fun d!1206507 () Bool)

(declare-fun lt!1449967 () Bool)

(assert (=> d!1206507 (= lt!1449967 (select (content!6615 rules!2999) (rule!10050 token!484)))))

(declare-fun e!2519160 () Bool)

(assert (=> d!1206507 (= lt!1449967 e!2519160)))

(declare-fun res!1655778 () Bool)

(assert (=> d!1206507 (=> (not res!1655778) (not e!2519160))))

(assert (=> d!1206507 (= res!1655778 ((_ is Cons!43375) rules!2999))))

(assert (=> d!1206507 (= (contains!8628 rules!2999 (rule!10050 token!484)) lt!1449967)))

(declare-fun b!4059650 () Bool)

(declare-fun e!2519159 () Bool)

(assert (=> b!4059650 (= e!2519160 e!2519159)))

(declare-fun res!1655779 () Bool)

(assert (=> b!4059650 (=> res!1655779 e!2519159)))

(assert (=> b!4059650 (= res!1655779 (= (h!48795 rules!2999) (rule!10050 token!484)))))

(declare-fun b!4059651 () Bool)

(assert (=> b!4059651 (= e!2519159 (contains!8628 (t!336352 rules!2999) (rule!10050 token!484)))))

(assert (= (and d!1206507 res!1655778) b!4059650))

(assert (= (and b!4059650 (not res!1655779)) b!4059651))

(assert (=> d!1206507 m!4664317))

(declare-fun m!4664967 () Bool)

(assert (=> d!1206507 m!4664967))

(assert (=> b!4059651 m!4664715))

(assert (=> d!1205773 d!1206507))

(assert (=> b!4058816 d!1205999))

(declare-fun d!1206509 () Bool)

(assert (=> d!1206509 (= (head!8571 lt!1449265) (h!48793 lt!1449265))))

(assert (=> b!4058816 d!1206509))

(declare-fun d!1206511 () Bool)

(declare-fun lt!1449968 () Int)

(assert (=> d!1206511 (>= lt!1449968 0)))

(declare-fun e!2519161 () Int)

(assert (=> d!1206511 (= lt!1449968 e!2519161)))

(declare-fun c!701137 () Bool)

(assert (=> d!1206511 (= c!701137 ((_ is Nil!43373) (t!336350 prefix!494)))))

(assert (=> d!1206511 (= (size!32428 (t!336350 prefix!494)) lt!1449968)))

(declare-fun b!4059652 () Bool)

(assert (=> b!4059652 (= e!2519161 0)))

(declare-fun b!4059653 () Bool)

(assert (=> b!4059653 (= e!2519161 (+ 1 (size!32428 (t!336350 (t!336350 prefix!494)))))))

(assert (= (and d!1206511 c!701137) b!4059652))

(assert (= (and d!1206511 (not c!701137)) b!4059653))

(declare-fun m!4664973 () Bool)

(assert (=> b!4059653 m!4664973))

(assert (=> b!4058361 d!1206511))

(declare-fun d!1206517 () Bool)

(declare-fun c!701138 () Bool)

(assert (=> d!1206517 (= c!701138 ((_ is Node!13171) (c!700780 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 token!484))) (value!218994 token!484)))))))

(declare-fun e!2519162 () Bool)

(assert (=> d!1206517 (= (inv!57985 (c!700780 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 token!484))) (value!218994 token!484)))) e!2519162)))

(declare-fun b!4059654 () Bool)

(assert (=> b!4059654 (= e!2519162 (inv!57987 (c!700780 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 token!484))) (value!218994 token!484)))))))

(declare-fun b!4059655 () Bool)

(declare-fun e!2519163 () Bool)

(assert (=> b!4059655 (= e!2519162 e!2519163)))

(declare-fun res!1655780 () Bool)

(assert (=> b!4059655 (= res!1655780 (not ((_ is Leaf!20358) (c!700780 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 token!484))) (value!218994 token!484))))))))

(assert (=> b!4059655 (=> res!1655780 e!2519163)))

(declare-fun b!4059656 () Bool)

(assert (=> b!4059656 (= e!2519163 (inv!57988 (c!700780 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 token!484))) (value!218994 token!484)))))))

(assert (= (and d!1206517 c!701138) b!4059654))

(assert (= (and d!1206517 (not c!701138)) b!4059655))

(assert (= (and b!4059655 (not res!1655780)) b!4059656))

(declare-fun m!4664975 () Bool)

(assert (=> b!4059654 m!4664975))

(declare-fun m!4664977 () Bool)

(assert (=> b!4059656 m!4664977))

(assert (=> b!4058387 d!1206517))

(assert (=> d!1205959 d!1205957))

(declare-fun d!1206519 () Bool)

(assert (=> d!1206519 (= (maxPrefixOneRule!2859 thiss!21717 (rule!10050 token!484) lt!1449231) (Some!9373 (tuple2!42435 (Token!13059 (apply!10149 (transformation!6960 (rule!10050 token!484)) (seqFromList!5177 lt!1449266)) (rule!10050 token!484) (size!32428 lt!1449266) lt!1449266) suffixResult!105)))))

(assert (=> d!1206519 true))

(declare-fun _$59!727 () Unit!62757)

(assert (=> d!1206519 (= (choose!24667 thiss!21717 rules!2999 lt!1449266 lt!1449231 suffixResult!105 (rule!10050 token!484)) _$59!727)))

(declare-fun bs!592024 () Bool)

(assert (= bs!592024 d!1206519))

(assert (=> bs!592024 m!4662447))

(assert (=> bs!592024 m!4662439))

(assert (=> bs!592024 m!4662439))

(assert (=> bs!592024 m!4662441))

(assert (=> bs!592024 m!4662529))

(assert (=> d!1205959 d!1206519))

(assert (=> d!1205959 d!1205925))

(assert (=> d!1205959 d!1205963))

(assert (=> d!1205959 d!1205685))

(assert (=> d!1205959 d!1205967))

(assert (=> d!1205761 d!1206135))

(assert (=> d!1205735 d!1206507))

(declare-fun b!4059659 () Bool)

(declare-fun res!1655781 () Bool)

(declare-fun e!2519164 () Bool)

(assert (=> b!4059659 (=> (not res!1655781) (not e!2519164))))

(declare-fun lt!1449969 () List!43497)

(assert (=> b!4059659 (= res!1655781 (= (size!32428 lt!1449969) (+ (size!32428 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449345))))) (size!32428 (_2!24351 (get!14226 lt!1449345))))))))

(declare-fun b!4059657 () Bool)

(declare-fun e!2519165 () List!43497)

(assert (=> b!4059657 (= e!2519165 (_2!24351 (get!14226 lt!1449345)))))

(declare-fun b!4059658 () Bool)

(assert (=> b!4059658 (= e!2519165 (Cons!43373 (h!48793 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449345))))) (++!11362 (t!336350 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449345))))) (_2!24351 (get!14226 lt!1449345)))))))

(declare-fun d!1206521 () Bool)

(assert (=> d!1206521 e!2519164))

(declare-fun res!1655782 () Bool)

(assert (=> d!1206521 (=> (not res!1655782) (not e!2519164))))

(assert (=> d!1206521 (= res!1655782 (= (content!6612 lt!1449969) ((_ map or) (content!6612 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449345))))) (content!6612 (_2!24351 (get!14226 lt!1449345))))))))

(assert (=> d!1206521 (= lt!1449969 e!2519165)))

(declare-fun c!701139 () Bool)

(assert (=> d!1206521 (= c!701139 ((_ is Nil!43373) (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449345))))))))

(assert (=> d!1206521 (= (++!11362 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449345)))) (_2!24351 (get!14226 lt!1449345))) lt!1449969)))

(declare-fun b!4059660 () Bool)

(assert (=> b!4059660 (= e!2519164 (or (not (= (_2!24351 (get!14226 lt!1449345)) Nil!43373)) (= lt!1449969 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449345)))))))))

(assert (= (and d!1206521 c!701139) b!4059657))

(assert (= (and d!1206521 (not c!701139)) b!4059658))

(assert (= (and d!1206521 res!1655782) b!4059659))

(assert (= (and b!4059659 res!1655781) b!4059660))

(declare-fun m!4664979 () Bool)

(assert (=> b!4059659 m!4664979))

(assert (=> b!4059659 m!4662803))

(declare-fun m!4664981 () Bool)

(assert (=> b!4059659 m!4664981))

(assert (=> b!4059659 m!4662829))

(declare-fun m!4664983 () Bool)

(assert (=> b!4059658 m!4664983))

(declare-fun m!4664985 () Bool)

(assert (=> d!1206521 m!4664985))

(assert (=> d!1206521 m!4662803))

(declare-fun m!4664987 () Bool)

(assert (=> d!1206521 m!4664987))

(declare-fun m!4664989 () Bool)

(assert (=> d!1206521 m!4664989))

(assert (=> b!4058267 d!1206521))

(assert (=> b!4058267 d!1206125))

(assert (=> b!4058267 d!1206127))

(assert (=> b!4058267 d!1206129))

(declare-fun b!4059665 () Bool)

(declare-fun res!1655792 () Bool)

(declare-fun e!2519171 () Bool)

(assert (=> b!4059665 (=> (not res!1655792) (not e!2519171))))

(declare-fun lt!1449970 () Option!9374)

(assert (=> b!4059665 (= res!1655792 (matchR!5818 (regex!6960 (rule!10050 (_1!24351 (get!14226 lt!1449970)))) (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449970))))))))

(declare-fun call!288162 () Option!9374)

(declare-fun bm!288157 () Bool)

(assert (=> bm!288157 (= call!288162 (maxPrefixOneRule!2859 thiss!21717 (h!48795 (t!336352 rules!2999)) lt!1449255))))

(declare-fun b!4059666 () Bool)

(declare-fun e!2519170 () Bool)

(assert (=> b!4059666 (= e!2519170 e!2519171)))

(declare-fun res!1655789 () Bool)

(assert (=> b!4059666 (=> (not res!1655789) (not e!2519171))))

(assert (=> b!4059666 (= res!1655789 (isDefined!7122 lt!1449970))))

(declare-fun b!4059667 () Bool)

(declare-fun res!1655791 () Bool)

(assert (=> b!4059667 (=> (not res!1655791) (not e!2519171))))

(assert (=> b!4059667 (= res!1655791 (= (value!218994 (_1!24351 (get!14226 lt!1449970))) (apply!10149 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449970)))) (seqFromList!5177 (originalCharacters!7560 (_1!24351 (get!14226 lt!1449970)))))))))

(declare-fun b!4059668 () Bool)

(declare-fun res!1655788 () Bool)

(assert (=> b!4059668 (=> (not res!1655788) (not e!2519171))))

(assert (=> b!4059668 (= res!1655788 (= (++!11362 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449970)))) (_2!24351 (get!14226 lt!1449970))) lt!1449255))))

(declare-fun d!1206523 () Bool)

(assert (=> d!1206523 e!2519170))

(declare-fun res!1655793 () Bool)

(assert (=> d!1206523 (=> res!1655793 e!2519170)))

(assert (=> d!1206523 (= res!1655793 (isEmpty!25884 lt!1449970))))

(declare-fun e!2519172 () Option!9374)

(assert (=> d!1206523 (= lt!1449970 e!2519172)))

(declare-fun c!701140 () Bool)

(assert (=> d!1206523 (= c!701140 (and ((_ is Cons!43375) (t!336352 rules!2999)) ((_ is Nil!43375) (t!336352 (t!336352 rules!2999)))))))

(declare-fun lt!1449971 () Unit!62757)

(declare-fun lt!1449972 () Unit!62757)

(assert (=> d!1206523 (= lt!1449971 lt!1449972)))

(assert (=> d!1206523 (isPrefix!4047 lt!1449255 lt!1449255)))

(assert (=> d!1206523 (= lt!1449972 (lemmaIsPrefixRefl!2614 lt!1449255 lt!1449255))))

(assert (=> d!1206523 (rulesValidInductive!2543 thiss!21717 (t!336352 rules!2999))))

(assert (=> d!1206523 (= (maxPrefix!3847 thiss!21717 (t!336352 rules!2999) lt!1449255) lt!1449970)))

(declare-fun b!4059669 () Bool)

(assert (=> b!4059669 (= e!2519171 (contains!8628 (t!336352 rules!2999) (rule!10050 (_1!24351 (get!14226 lt!1449970)))))))

(declare-fun b!4059670 () Bool)

(assert (=> b!4059670 (= e!2519172 call!288162)))

(declare-fun b!4059671 () Bool)

(declare-fun res!1655790 () Bool)

(assert (=> b!4059671 (=> (not res!1655790) (not e!2519171))))

(assert (=> b!4059671 (= res!1655790 (= (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449970)))) (originalCharacters!7560 (_1!24351 (get!14226 lt!1449970)))))))

(declare-fun b!4059672 () Bool)

(declare-fun res!1655787 () Bool)

(assert (=> b!4059672 (=> (not res!1655787) (not e!2519171))))

(assert (=> b!4059672 (= res!1655787 (< (size!32428 (_2!24351 (get!14226 lt!1449970))) (size!32428 lt!1449255)))))

(declare-fun b!4059673 () Bool)

(declare-fun lt!1449973 () Option!9374)

(declare-fun lt!1449974 () Option!9374)

(assert (=> b!4059673 (= e!2519172 (ite (and ((_ is None!9373) lt!1449973) ((_ is None!9373) lt!1449974)) None!9373 (ite ((_ is None!9373) lt!1449974) lt!1449973 (ite ((_ is None!9373) lt!1449973) lt!1449974 (ite (>= (size!32427 (_1!24351 (v!39791 lt!1449973))) (size!32427 (_1!24351 (v!39791 lt!1449974)))) lt!1449973 lt!1449974)))))))

(assert (=> b!4059673 (= lt!1449973 call!288162)))

(assert (=> b!4059673 (= lt!1449974 (maxPrefix!3847 thiss!21717 (t!336352 (t!336352 rules!2999)) lt!1449255))))

(assert (= (and d!1206523 c!701140) b!4059670))

(assert (= (and d!1206523 (not c!701140)) b!4059673))

(assert (= (or b!4059670 b!4059673) bm!288157))

(assert (= (and d!1206523 (not res!1655793)) b!4059666))

(assert (= (and b!4059666 res!1655789) b!4059671))

(assert (= (and b!4059671 res!1655790) b!4059672))

(assert (= (and b!4059672 res!1655787) b!4059668))

(assert (= (and b!4059668 res!1655788) b!4059667))

(assert (= (and b!4059667 res!1655791) b!4059665))

(assert (= (and b!4059665 res!1655792) b!4059669))

(declare-fun m!4664999 () Bool)

(assert (=> b!4059667 m!4664999))

(declare-fun m!4665001 () Bool)

(assert (=> b!4059667 m!4665001))

(assert (=> b!4059667 m!4665001))

(declare-fun m!4665003 () Bool)

(assert (=> b!4059667 m!4665003))

(assert (=> b!4059669 m!4664999))

(declare-fun m!4665007 () Bool)

(assert (=> b!4059669 m!4665007))

(assert (=> b!4059671 m!4664999))

(declare-fun m!4665015 () Bool)

(assert (=> b!4059671 m!4665015))

(assert (=> b!4059671 m!4665015))

(declare-fun m!4665019 () Bool)

(assert (=> b!4059671 m!4665019))

(declare-fun m!4665021 () Bool)

(assert (=> b!4059666 m!4665021))

(declare-fun m!4665023 () Bool)

(assert (=> d!1206523 m!4665023))

(assert (=> d!1206523 m!4662883))

(assert (=> d!1206523 m!4662885))

(assert (=> d!1206523 m!4664305))

(assert (=> b!4059668 m!4664999))

(assert (=> b!4059668 m!4665015))

(assert (=> b!4059668 m!4665015))

(assert (=> b!4059668 m!4665019))

(assert (=> b!4059668 m!4665019))

(declare-fun m!4665025 () Bool)

(assert (=> b!4059668 m!4665025))

(declare-fun m!4665027 () Bool)

(assert (=> b!4059673 m!4665027))

(declare-fun m!4665029 () Bool)

(assert (=> bm!288157 m!4665029))

(assert (=> b!4059665 m!4664999))

(assert (=> b!4059665 m!4665015))

(assert (=> b!4059665 m!4665015))

(assert (=> b!4059665 m!4665019))

(assert (=> b!4059665 m!4665019))

(declare-fun m!4665037 () Bool)

(assert (=> b!4059665 m!4665037))

(assert (=> b!4059672 m!4664999))

(declare-fun m!4665045 () Bool)

(assert (=> b!4059672 m!4665045))

(assert (=> b!4059672 m!4662901))

(assert (=> b!4058317 d!1206523))

(declare-fun b!4059690 () Bool)

(declare-fun res!1655802 () Bool)

(declare-fun e!2519182 () Bool)

(assert (=> b!4059690 (=> (not res!1655802) (not e!2519182))))

(declare-fun lt!1449979 () List!43497)

(assert (=> b!4059690 (= res!1655802 (= (size!32428 lt!1449979) (+ (size!32428 (t!336350 lt!1449260)) (size!32428 suffix!1299))))))

(declare-fun b!4059688 () Bool)

(declare-fun e!2519183 () List!43497)

(assert (=> b!4059688 (= e!2519183 suffix!1299)))

(declare-fun b!4059689 () Bool)

(assert (=> b!4059689 (= e!2519183 (Cons!43373 (h!48793 (t!336350 lt!1449260)) (++!11362 (t!336350 (t!336350 lt!1449260)) suffix!1299)))))

(declare-fun d!1206533 () Bool)

(assert (=> d!1206533 e!2519182))

(declare-fun res!1655803 () Bool)

(assert (=> d!1206533 (=> (not res!1655803) (not e!2519182))))

(assert (=> d!1206533 (= res!1655803 (= (content!6612 lt!1449979) ((_ map or) (content!6612 (t!336350 lt!1449260)) (content!6612 suffix!1299))))))

(assert (=> d!1206533 (= lt!1449979 e!2519183)))

(declare-fun c!701144 () Bool)

(assert (=> d!1206533 (= c!701144 ((_ is Nil!43373) (t!336350 lt!1449260)))))

(assert (=> d!1206533 (= (++!11362 (t!336350 lt!1449260) suffix!1299) lt!1449979)))

(declare-fun b!4059691 () Bool)

(assert (=> b!4059691 (= e!2519182 (or (not (= suffix!1299 Nil!43373)) (= lt!1449979 (t!336350 lt!1449260))))))

(assert (= (and d!1206533 c!701144) b!4059688))

(assert (= (and d!1206533 (not c!701144)) b!4059689))

(assert (= (and d!1206533 res!1655803) b!4059690))

(assert (= (and b!4059690 res!1655802) b!4059691))

(declare-fun m!4665049 () Bool)

(assert (=> b!4059690 m!4665049))

(assert (=> b!4059690 m!4664495))

(assert (=> b!4059690 m!4662511))

(declare-fun m!4665051 () Bool)

(assert (=> b!4059689 m!4665051))

(declare-fun m!4665053 () Bool)

(assert (=> d!1206533 m!4665053))

(assert (=> d!1206533 m!4664957))

(assert (=> d!1206533 m!4662849))

(assert (=> b!4058486 d!1206533))

(declare-fun b!4059696 () Bool)

(declare-fun e!2519185 () Bool)

(assert (=> b!4059696 (= e!2519185 (isPrefix!4047 (tail!6303 (tail!6303 lt!1449249)) (tail!6303 (tail!6303 lt!1449255))))))

(declare-fun b!4059694 () Bool)

(declare-fun e!2519188 () Bool)

(assert (=> b!4059694 (= e!2519188 e!2519185)))

(declare-fun res!1655806 () Bool)

(assert (=> b!4059694 (=> (not res!1655806) (not e!2519185))))

(assert (=> b!4059694 (= res!1655806 (not ((_ is Nil!43373) (tail!6303 lt!1449255))))))

(declare-fun b!4059695 () Bool)

(declare-fun res!1655807 () Bool)

(assert (=> b!4059695 (=> (not res!1655807) (not e!2519185))))

(assert (=> b!4059695 (= res!1655807 (= (head!8571 (tail!6303 lt!1449249)) (head!8571 (tail!6303 lt!1449255))))))

(declare-fun d!1206543 () Bool)

(declare-fun e!2519186 () Bool)

(assert (=> d!1206543 e!2519186))

(declare-fun res!1655808 () Bool)

(assert (=> d!1206543 (=> res!1655808 e!2519186)))

(declare-fun lt!1449981 () Bool)

(assert (=> d!1206543 (= res!1655808 (not lt!1449981))))

(assert (=> d!1206543 (= lt!1449981 e!2519188)))

(declare-fun res!1655809 () Bool)

(assert (=> d!1206543 (=> res!1655809 e!2519188)))

(assert (=> d!1206543 (= res!1655809 ((_ is Nil!43373) (tail!6303 lt!1449249)))))

(assert (=> d!1206543 (= (isPrefix!4047 (tail!6303 lt!1449249) (tail!6303 lt!1449255)) lt!1449981)))

(declare-fun b!4059697 () Bool)

(assert (=> b!4059697 (= e!2519186 (>= (size!32428 (tail!6303 lt!1449255)) (size!32428 (tail!6303 lt!1449249))))))

(assert (= (and d!1206543 (not res!1655809)) b!4059694))

(assert (= (and b!4059694 res!1655806) b!4059695))

(assert (= (and b!4059695 res!1655807) b!4059696))

(assert (= (and d!1206543 (not res!1655808)) b!4059697))

(assert (=> b!4059696 m!4663171))

(assert (=> b!4059696 m!4663819))

(assert (=> b!4059696 m!4663165))

(assert (=> b!4059696 m!4664353))

(assert (=> b!4059696 m!4663819))

(assert (=> b!4059696 m!4664353))

(declare-fun m!4665059 () Bool)

(assert (=> b!4059696 m!4665059))

(assert (=> b!4059695 m!4663171))

(assert (=> b!4059695 m!4663825))

(assert (=> b!4059695 m!4663165))

(assert (=> b!4059695 m!4664359))

(assert (=> b!4059697 m!4663165))

(assert (=> b!4059697 m!4664361))

(assert (=> b!4059697 m!4663171))

(assert (=> b!4059697 m!4664465))

(assert (=> b!4058783 d!1206543))

(assert (=> b!4058783 d!1206001))

(assert (=> b!4058783 d!1206195))

(declare-fun d!1206549 () Bool)

(declare-fun lt!1449983 () Int)

(assert (=> d!1206549 (>= lt!1449983 0)))

(declare-fun e!2519190 () Int)

(assert (=> d!1206549 (= lt!1449983 e!2519190)))

(declare-fun c!701146 () Bool)

(assert (=> d!1206549 (= c!701146 ((_ is Nil!43373) lt!1449246))))

(assert (=> d!1206549 (= (size!32428 lt!1449246) lt!1449983)))

(declare-fun b!4059700 () Bool)

(assert (=> b!4059700 (= e!2519190 0)))

(declare-fun b!4059701 () Bool)

(assert (=> b!4059701 (= e!2519190 (+ 1 (size!32428 (t!336350 lt!1449246))))))

(assert (= (and d!1206549 c!701146) b!4059700))

(assert (= (and d!1206549 (not c!701146)) b!4059701))

(declare-fun m!4665069 () Bool)

(assert (=> b!4059701 m!4665069))

(assert (=> b!4058831 d!1206549))

(assert (=> b!4058831 d!1205685))

(assert (=> d!1205797 d!1205975))

(assert (=> d!1205797 d!1205601))

(declare-fun b!4059709 () Bool)

(declare-fun res!1655811 () Bool)

(declare-fun e!2519194 () Bool)

(assert (=> b!4059709 (=> (not res!1655811) (not e!2519194))))

(declare-fun lt!1449984 () List!43497)

(assert (=> b!4059709 (= res!1655811 (= (size!32428 lt!1449984) (+ (size!32428 (++!11362 prefix!494 newSuffix!27)) (size!32428 lt!1449227))))))

(declare-fun b!4059706 () Bool)

(declare-fun e!2519195 () List!43497)

(assert (=> b!4059706 (= e!2519195 lt!1449227)))

(declare-fun b!4059708 () Bool)

(assert (=> b!4059708 (= e!2519195 (Cons!43373 (h!48793 (++!11362 prefix!494 newSuffix!27)) (++!11362 (t!336350 (++!11362 prefix!494 newSuffix!27)) lt!1449227)))))

(declare-fun d!1206554 () Bool)

(assert (=> d!1206554 e!2519194))

(declare-fun res!1655812 () Bool)

(assert (=> d!1206554 (=> (not res!1655812) (not e!2519194))))

(assert (=> d!1206554 (= res!1655812 (= (content!6612 lt!1449984) ((_ map or) (content!6612 (++!11362 prefix!494 newSuffix!27)) (content!6612 lt!1449227))))))

(assert (=> d!1206554 (= lt!1449984 e!2519195)))

(declare-fun c!701149 () Bool)

(assert (=> d!1206554 (= c!701149 ((_ is Nil!43373) (++!11362 prefix!494 newSuffix!27)))))

(assert (=> d!1206554 (= (++!11362 (++!11362 prefix!494 newSuffix!27) lt!1449227) lt!1449984)))

(declare-fun b!4059710 () Bool)

(assert (=> b!4059710 (= e!2519194 (or (not (= lt!1449227 Nil!43373)) (= lt!1449984 (++!11362 prefix!494 newSuffix!27))))))

(assert (= (and d!1206554 c!701149) b!4059706))

(assert (= (and d!1206554 (not c!701149)) b!4059708))

(assert (= (and d!1206554 res!1655812) b!4059709))

(assert (= (and b!4059709 res!1655811) b!4059710))

(declare-fun m!4665075 () Bool)

(assert (=> b!4059709 m!4665075))

(assert (=> b!4059709 m!4662599))

(assert (=> b!4059709 m!4664283))

(assert (=> b!4059709 m!4663235))

(declare-fun m!4665079 () Bool)

(assert (=> b!4059708 m!4665079))

(declare-fun m!4665081 () Bool)

(assert (=> d!1206554 m!4665081))

(assert (=> d!1206554 m!4662599))

(declare-fun m!4665083 () Bool)

(assert (=> d!1206554 m!4665083))

(assert (=> d!1206554 m!4663243))

(assert (=> d!1205797 d!1206554))

(declare-fun d!1206561 () Bool)

(assert (=> d!1206561 (= (++!11362 (++!11362 prefix!494 newSuffix!27) lt!1449227) (++!11362 prefix!494 (++!11362 newSuffix!27 lt!1449227)))))

(assert (=> d!1206561 true))

(declare-fun _$52!2344 () Unit!62757)

(assert (=> d!1206561 (= (choose!24665 prefix!494 newSuffix!27 lt!1449227) _$52!2344)))

(declare-fun bs!592025 () Bool)

(assert (= bs!592025 d!1206561))

(assert (=> bs!592025 m!4662599))

(assert (=> bs!592025 m!4662599))

(assert (=> bs!592025 m!4663247))

(assert (=> bs!592025 m!4662495))

(assert (=> bs!592025 m!4662495))

(assert (=> bs!592025 m!4663249))

(assert (=> d!1205797 d!1206561))

(declare-fun b!4059713 () Bool)

(declare-fun res!1655813 () Bool)

(declare-fun e!2519196 () Bool)

(assert (=> b!4059713 (=> (not res!1655813) (not e!2519196))))

(declare-fun lt!1449985 () List!43497)

(assert (=> b!4059713 (= res!1655813 (= (size!32428 lt!1449985) (+ (size!32428 prefix!494) (size!32428 (++!11362 newSuffix!27 lt!1449227)))))))

(declare-fun b!4059711 () Bool)

(declare-fun e!2519197 () List!43497)

(assert (=> b!4059711 (= e!2519197 (++!11362 newSuffix!27 lt!1449227))))

(declare-fun b!4059712 () Bool)

(assert (=> b!4059712 (= e!2519197 (Cons!43373 (h!48793 prefix!494) (++!11362 (t!336350 prefix!494) (++!11362 newSuffix!27 lt!1449227))))))

(declare-fun d!1206563 () Bool)

(assert (=> d!1206563 e!2519196))

(declare-fun res!1655814 () Bool)

(assert (=> d!1206563 (=> (not res!1655814) (not e!2519196))))

(assert (=> d!1206563 (= res!1655814 (= (content!6612 lt!1449985) ((_ map or) (content!6612 prefix!494) (content!6612 (++!11362 newSuffix!27 lt!1449227)))))))

(assert (=> d!1206563 (= lt!1449985 e!2519197)))

(declare-fun c!701150 () Bool)

(assert (=> d!1206563 (= c!701150 ((_ is Nil!43373) prefix!494))))

(assert (=> d!1206563 (= (++!11362 prefix!494 (++!11362 newSuffix!27 lt!1449227)) lt!1449985)))

(declare-fun b!4059714 () Bool)

(assert (=> b!4059714 (= e!2519196 (or (not (= (++!11362 newSuffix!27 lt!1449227) Nil!43373)) (= lt!1449985 prefix!494)))))

(assert (= (and d!1206563 c!701150) b!4059711))

(assert (= (and d!1206563 (not c!701150)) b!4059712))

(assert (= (and d!1206563 res!1655814) b!4059713))

(assert (= (and b!4059713 res!1655813) b!4059714))

(declare-fun m!4665085 () Bool)

(assert (=> b!4059713 m!4665085))

(assert (=> b!4059713 m!4662531))

(assert (=> b!4059713 m!4662495))

(declare-fun m!4665087 () Bool)

(assert (=> b!4059713 m!4665087))

(assert (=> b!4059712 m!4662495))

(declare-fun m!4665089 () Bool)

(assert (=> b!4059712 m!4665089))

(declare-fun m!4665091 () Bool)

(assert (=> d!1206563 m!4665091))

(assert (=> d!1206563 m!4662629))

(assert (=> d!1206563 m!4662495))

(declare-fun m!4665093 () Bool)

(assert (=> d!1206563 m!4665093))

(assert (=> d!1205797 d!1206563))

(declare-fun b!4059717 () Bool)

(declare-fun res!1655815 () Bool)

(declare-fun e!2519198 () Bool)

(assert (=> b!4059717 (=> (not res!1655815) (not e!2519198))))

(declare-fun lt!1449986 () List!43497)

(assert (=> b!4059717 (= res!1655815 (= (size!32428 lt!1449986) (+ (size!32428 (t!336350 prefix!494)) (size!32428 suffix!1299))))))

(declare-fun b!4059715 () Bool)

(declare-fun e!2519199 () List!43497)

(assert (=> b!4059715 (= e!2519199 suffix!1299)))

(declare-fun b!4059716 () Bool)

(assert (=> b!4059716 (= e!2519199 (Cons!43373 (h!48793 (t!336350 prefix!494)) (++!11362 (t!336350 (t!336350 prefix!494)) suffix!1299)))))

(declare-fun d!1206565 () Bool)

(assert (=> d!1206565 e!2519198))

(declare-fun res!1655816 () Bool)

(assert (=> d!1206565 (=> (not res!1655816) (not e!2519198))))

(assert (=> d!1206565 (= res!1655816 (= (content!6612 lt!1449986) ((_ map or) (content!6612 (t!336350 prefix!494)) (content!6612 suffix!1299))))))

(assert (=> d!1206565 (= lt!1449986 e!2519199)))

(declare-fun c!701151 () Bool)

(assert (=> d!1206565 (= c!701151 ((_ is Nil!43373) (t!336350 prefix!494)))))

(assert (=> d!1206565 (= (++!11362 (t!336350 prefix!494) suffix!1299) lt!1449986)))

(declare-fun b!4059718 () Bool)

(assert (=> b!4059718 (= e!2519198 (or (not (= suffix!1299 Nil!43373)) (= lt!1449986 (t!336350 prefix!494))))))

(assert (= (and d!1206565 c!701151) b!4059715))

(assert (= (and d!1206565 (not c!701151)) b!4059716))

(assert (= (and d!1206565 res!1655816) b!4059717))

(assert (= (and b!4059717 res!1655815) b!4059718))

(declare-fun m!4665095 () Bool)

(assert (=> b!4059717 m!4665095))

(assert (=> b!4059717 m!4662937))

(assert (=> b!4059717 m!4662511))

(declare-fun m!4665097 () Bool)

(assert (=> b!4059716 m!4665097))

(declare-fun m!4665101 () Bool)

(assert (=> d!1206565 m!4665101))

(assert (=> d!1206565 m!4663851))

(assert (=> d!1206565 m!4662849))

(assert (=> b!4058289 d!1206565))

(declare-fun b!4059721 () Bool)

(declare-fun e!2519203 () Bool)

(assert (=> b!4059721 (= e!2519203 (nullable!4168 (derivativeStep!3573 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) (head!8571 lt!1449266))))))

(declare-fun b!4059722 () Bool)

(declare-fun res!1655820 () Bool)

(declare-fun e!2519202 () Bool)

(assert (=> b!4059722 (=> (not res!1655820) (not e!2519202))))

(assert (=> b!4059722 (= res!1655820 (isEmpty!25885 (tail!6303 (tail!6303 lt!1449266))))))

(declare-fun b!4059723 () Bool)

(declare-fun e!2519207 () Bool)

(declare-fun e!2519205 () Bool)

(assert (=> b!4059723 (= e!2519207 e!2519205)))

(declare-fun res!1655819 () Bool)

(assert (=> b!4059723 (=> res!1655819 e!2519205)))

(declare-fun call!288163 () Bool)

(assert (=> b!4059723 (= res!1655819 call!288163)))

(declare-fun b!4059724 () Bool)

(declare-fun res!1655818 () Bool)

(assert (=> b!4059724 (=> res!1655818 e!2519205)))

(assert (=> b!4059724 (= res!1655818 (not (isEmpty!25885 (tail!6303 (tail!6303 lt!1449266)))))))

(declare-fun b!4059725 () Bool)

(declare-fun res!1655821 () Bool)

(assert (=> b!4059725 (=> (not res!1655821) (not e!2519202))))

(assert (=> b!4059725 (= res!1655821 (not call!288163))))

(declare-fun b!4059726 () Bool)

(assert (=> b!4059726 (= e!2519205 (not (= (head!8571 (tail!6303 lt!1449266)) (c!700781 (derivativeStep!3573 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) (head!8571 lt!1449266))))))))

(declare-fun b!4059727 () Bool)

(declare-fun e!2519204 () Bool)

(declare-fun e!2519206 () Bool)

(assert (=> b!4059727 (= e!2519204 e!2519206)))

(declare-fun c!701153 () Bool)

(assert (=> b!4059727 (= c!701153 ((_ is EmptyLang!11865) (derivativeStep!3573 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) (head!8571 lt!1449266))))))

(declare-fun d!1206569 () Bool)

(assert (=> d!1206569 e!2519204))

(declare-fun c!701155 () Bool)

(assert (=> d!1206569 (= c!701155 ((_ is EmptyExpr!11865) (derivativeStep!3573 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) (head!8571 lt!1449266))))))

(declare-fun lt!1449988 () Bool)

(assert (=> d!1206569 (= lt!1449988 e!2519203)))

(declare-fun c!701154 () Bool)

(assert (=> d!1206569 (= c!701154 (isEmpty!25885 (tail!6303 lt!1449266)))))

(assert (=> d!1206569 (validRegex!5368 (derivativeStep!3573 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) (head!8571 lt!1449266)))))

(assert (=> d!1206569 (= (matchR!5818 (derivativeStep!3573 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) (head!8571 lt!1449266)) (tail!6303 lt!1449266)) lt!1449988)))

(declare-fun b!4059728 () Bool)

(declare-fun res!1655823 () Bool)

(declare-fun e!2519201 () Bool)

(assert (=> b!4059728 (=> res!1655823 e!2519201)))

(assert (=> b!4059728 (= res!1655823 (not ((_ is ElementMatch!11865) (derivativeStep!3573 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) (head!8571 lt!1449266)))))))

(assert (=> b!4059728 (= e!2519206 e!2519201)))

(declare-fun b!4059729 () Bool)

(assert (=> b!4059729 (= e!2519203 (matchR!5818 (derivativeStep!3573 (derivativeStep!3573 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) (head!8571 lt!1449266)) (head!8571 (tail!6303 lt!1449266))) (tail!6303 (tail!6303 lt!1449266))))))

(declare-fun b!4059730 () Bool)

(assert (=> b!4059730 (= e!2519202 (= (head!8571 (tail!6303 lt!1449266)) (c!700781 (derivativeStep!3573 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) (head!8571 lt!1449266)))))))

(declare-fun b!4059731 () Bool)

(assert (=> b!4059731 (= e!2519206 (not lt!1449988))))

(declare-fun b!4059732 () Bool)

(assert (=> b!4059732 (= e!2519201 e!2519207)))

(declare-fun res!1655824 () Bool)

(assert (=> b!4059732 (=> (not res!1655824) (not e!2519207))))

(assert (=> b!4059732 (= res!1655824 (not lt!1449988))))

(declare-fun bm!288158 () Bool)

(assert (=> bm!288158 (= call!288163 (isEmpty!25885 (tail!6303 lt!1449266)))))

(declare-fun b!4059733 () Bool)

(assert (=> b!4059733 (= e!2519204 (= lt!1449988 call!288163))))

(declare-fun b!4059734 () Bool)

(declare-fun res!1655817 () Bool)

(assert (=> b!4059734 (=> res!1655817 e!2519201)))

(assert (=> b!4059734 (= res!1655817 e!2519202)))

(declare-fun res!1655822 () Bool)

(assert (=> b!4059734 (=> (not res!1655822) (not e!2519202))))

(assert (=> b!4059734 (= res!1655822 lt!1449988)))

(assert (= (and d!1206569 c!701154) b!4059721))

(assert (= (and d!1206569 (not c!701154)) b!4059729))

(assert (= (and d!1206569 c!701155) b!4059733))

(assert (= (and d!1206569 (not c!701155)) b!4059727))

(assert (= (and b!4059727 c!701153) b!4059731))

(assert (= (and b!4059727 (not c!701153)) b!4059728))

(assert (= (and b!4059728 (not res!1655823)) b!4059734))

(assert (= (and b!4059734 res!1655822) b!4059725))

(assert (= (and b!4059725 res!1655821) b!4059722))

(assert (= (and b!4059722 res!1655820) b!4059730))

(assert (= (and b!4059734 (not res!1655817)) b!4059732))

(assert (= (and b!4059732 res!1655824) b!4059723))

(assert (= (and b!4059723 (not res!1655819)) b!4059724))

(assert (= (and b!4059724 (not res!1655818)) b!4059726))

(assert (= (or b!4059733 b!4059723 b!4059725) bm!288158))

(assert (=> b!4059721 m!4663795))

(declare-fun m!4665109 () Bool)

(assert (=> b!4059721 m!4665109))

(assert (=> b!4059724 m!4662649))

(assert (=> b!4059724 m!4664351))

(assert (=> b!4059724 m!4664351))

(assert (=> b!4059724 m!4664621))

(assert (=> d!1206569 m!4662649))

(assert (=> d!1206569 m!4663305))

(assert (=> d!1206569 m!4663795))

(declare-fun m!4665111 () Bool)

(assert (=> d!1206569 m!4665111))

(assert (=> bm!288158 m!4662649))

(assert (=> bm!288158 m!4663305))

(assert (=> b!4059722 m!4662649))

(assert (=> b!4059722 m!4664351))

(assert (=> b!4059722 m!4664351))

(assert (=> b!4059722 m!4664621))

(assert (=> b!4059726 m!4662649))

(assert (=> b!4059726 m!4664357))

(assert (=> b!4059729 m!4662649))

(assert (=> b!4059729 m!4664357))

(assert (=> b!4059729 m!4663795))

(assert (=> b!4059729 m!4664357))

(declare-fun m!4665113 () Bool)

(assert (=> b!4059729 m!4665113))

(assert (=> b!4059729 m!4662649))

(assert (=> b!4059729 m!4664351))

(assert (=> b!4059729 m!4665113))

(assert (=> b!4059729 m!4664351))

(declare-fun m!4665115 () Bool)

(assert (=> b!4059729 m!4665115))

(assert (=> b!4059730 m!4662649))

(assert (=> b!4059730 m!4664357))

(assert (=> b!4058858 d!1206569))

(declare-fun bm!288159 () Bool)

(declare-fun call!288167 () Regex!11865)

(declare-fun call!288165 () Regex!11865)

(assert (=> bm!288159 (= call!288167 call!288165)))

(declare-fun b!4059739 () Bool)

(declare-fun c!701159 () Bool)

(assert (=> b!4059739 (= c!701159 (nullable!4168 (regOne!24242 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))))))

(declare-fun e!2519212 () Regex!11865)

(declare-fun e!2519213 () Regex!11865)

(assert (=> b!4059739 (= e!2519212 e!2519213)))

(declare-fun d!1206575 () Bool)

(declare-fun lt!1449989 () Regex!11865)

(assert (=> d!1206575 (validRegex!5368 lt!1449989)))

(declare-fun e!2519214 () Regex!11865)

(assert (=> d!1206575 (= lt!1449989 e!2519214)))

(declare-fun c!701158 () Bool)

(assert (=> d!1206575 (= c!701158 (or ((_ is EmptyExpr!11865) (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) ((_ is EmptyLang!11865) (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))))))

(assert (=> d!1206575 (validRegex!5368 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))))

(assert (=> d!1206575 (= (derivativeStep!3573 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) (head!8571 lt!1449266)) lt!1449989)))

(declare-fun b!4059740 () Bool)

(assert (=> b!4059740 (= e!2519213 (Union!11865 (Concat!19056 call!288167 (regTwo!24242 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))) EmptyLang!11865))))

(declare-fun bm!288160 () Bool)

(declare-fun call!288166 () Regex!11865)

(declare-fun c!701160 () Bool)

(assert (=> bm!288160 (= call!288166 (derivativeStep!3573 (ite c!701160 (regTwo!24243 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (regTwo!24242 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))) (head!8571 lt!1449266)))))

(declare-fun b!4059741 () Bool)

(assert (=> b!4059741 (= e!2519214 EmptyLang!11865)))

(declare-fun b!4059742 () Bool)

(assert (=> b!4059742 (= e!2519212 (Concat!19056 call!288165 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))))

(declare-fun b!4059743 () Bool)

(declare-fun e!2519210 () Regex!11865)

(assert (=> b!4059743 (= e!2519210 (ite (= (head!8571 lt!1449266) (c!700781 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))) EmptyExpr!11865 EmptyLang!11865))))

(declare-fun b!4059744 () Bool)

(assert (=> b!4059744 (= e!2519214 e!2519210)))

(declare-fun c!701162 () Bool)

(assert (=> b!4059744 (= c!701162 ((_ is ElementMatch!11865) (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))))

(declare-fun b!4059745 () Bool)

(assert (=> b!4059745 (= c!701160 ((_ is Union!11865) (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))))

(declare-fun e!2519211 () Regex!11865)

(assert (=> b!4059745 (= e!2519210 e!2519211)))

(declare-fun b!4059746 () Bool)

(assert (=> b!4059746 (= e!2519213 (Union!11865 (Concat!19056 call!288167 (regTwo!24242 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))) call!288166))))

(declare-fun bm!288161 () Bool)

(declare-fun c!701161 () Bool)

(declare-fun call!288164 () Regex!11865)

(assert (=> bm!288161 (= call!288164 (derivativeStep!3573 (ite c!701160 (regOne!24243 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (ite c!701161 (reg!12194 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (regOne!24242 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))) (head!8571 lt!1449266)))))

(declare-fun b!4059747 () Bool)

(assert (=> b!4059747 (= e!2519211 e!2519212)))

(assert (=> b!4059747 (= c!701161 ((_ is Star!11865) (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))))

(declare-fun bm!288162 () Bool)

(assert (=> bm!288162 (= call!288165 call!288164)))

(declare-fun b!4059748 () Bool)

(assert (=> b!4059748 (= e!2519211 (Union!11865 call!288164 call!288166))))

(assert (= (and d!1206575 c!701158) b!4059741))

(assert (= (and d!1206575 (not c!701158)) b!4059744))

(assert (= (and b!4059744 c!701162) b!4059743))

(assert (= (and b!4059744 (not c!701162)) b!4059745))

(assert (= (and b!4059745 c!701160) b!4059748))

(assert (= (and b!4059745 (not c!701160)) b!4059747))

(assert (= (and b!4059747 c!701161) b!4059742))

(assert (= (and b!4059747 (not c!701161)) b!4059739))

(assert (= (and b!4059739 c!701159) b!4059746))

(assert (= (and b!4059739 (not c!701159)) b!4059740))

(assert (= (or b!4059746 b!4059740) bm!288159))

(assert (= (or b!4059742 bm!288159) bm!288162))

(assert (= (or b!4059748 bm!288162) bm!288161))

(assert (= (or b!4059748 b!4059746) bm!288160))

(assert (=> b!4059739 m!4663831))

(declare-fun m!4665123 () Bool)

(assert (=> d!1206575 m!4665123))

(assert (=> d!1206575 m!4663299))

(assert (=> bm!288160 m!4662655))

(declare-fun m!4665129 () Bool)

(assert (=> bm!288160 m!4665129))

(assert (=> bm!288161 m!4662655))

(declare-fun m!4665131 () Bool)

(assert (=> bm!288161 m!4665131))

(assert (=> b!4058858 d!1206575))

(assert (=> b!4058858 d!1206083))

(assert (=> b!4058858 d!1205993))

(declare-fun d!1206585 () Bool)

(assert (=> d!1206585 (= (list!16164 lt!1449398) (list!16165 (c!700780 lt!1449398)))))

(declare-fun bs!592027 () Bool)

(assert (= bs!592027 d!1206585))

(declare-fun m!4665133 () Bool)

(assert (=> bs!592027 m!4665133))

(assert (=> d!1205697 d!1206585))

(declare-fun b!4059758 () Bool)

(declare-fun e!2519219 () Bool)

(assert (=> b!4059758 (= e!2519219 (isPrefix!4047 (tail!6303 (tail!6303 lt!1449266)) (tail!6303 (tail!6303 lt!1449257))))))

(declare-fun b!4059756 () Bool)

(declare-fun e!2519221 () Bool)

(assert (=> b!4059756 (= e!2519221 e!2519219)))

(declare-fun res!1655826 () Bool)

(assert (=> b!4059756 (=> (not res!1655826) (not e!2519219))))

(assert (=> b!4059756 (= res!1655826 (not ((_ is Nil!43373) (tail!6303 lt!1449257))))))

(declare-fun b!4059757 () Bool)

(declare-fun res!1655827 () Bool)

(assert (=> b!4059757 (=> (not res!1655827) (not e!2519219))))

(assert (=> b!4059757 (= res!1655827 (= (head!8571 (tail!6303 lt!1449266)) (head!8571 (tail!6303 lt!1449257))))))

(declare-fun d!1206587 () Bool)

(declare-fun e!2519220 () Bool)

(assert (=> d!1206587 e!2519220))

(declare-fun res!1655828 () Bool)

(assert (=> d!1206587 (=> res!1655828 e!2519220)))

(declare-fun lt!1449990 () Bool)

(assert (=> d!1206587 (= res!1655828 (not lt!1449990))))

(assert (=> d!1206587 (= lt!1449990 e!2519221)))

(declare-fun res!1655829 () Bool)

(assert (=> d!1206587 (=> res!1655829 e!2519221)))

(assert (=> d!1206587 (= res!1655829 ((_ is Nil!43373) (tail!6303 lt!1449266)))))

(assert (=> d!1206587 (= (isPrefix!4047 (tail!6303 lt!1449266) (tail!6303 lt!1449257)) lt!1449990)))

(declare-fun b!4059759 () Bool)

(assert (=> b!4059759 (= e!2519220 (>= (size!32428 (tail!6303 lt!1449257)) (size!32428 (tail!6303 lt!1449266))))))

(assert (= (and d!1206587 (not res!1655829)) b!4059756))

(assert (= (and b!4059756 res!1655826) b!4059757))

(assert (= (and b!4059757 res!1655827) b!4059758))

(assert (= (and d!1206587 (not res!1655828)) b!4059759))

(assert (=> b!4059758 m!4662649))

(assert (=> b!4059758 m!4664351))

(assert (=> b!4059758 m!4662661))

(declare-fun m!4665139 () Bool)

(assert (=> b!4059758 m!4665139))

(assert (=> b!4059758 m!4664351))

(assert (=> b!4059758 m!4665139))

(declare-fun m!4665143 () Bool)

(assert (=> b!4059758 m!4665143))

(assert (=> b!4059757 m!4662649))

(assert (=> b!4059757 m!4664357))

(assert (=> b!4059757 m!4662661))

(declare-fun m!4665149 () Bool)

(assert (=> b!4059757 m!4665149))

(assert (=> b!4059759 m!4662661))

(declare-fun m!4665153 () Bool)

(assert (=> b!4059759 m!4665153))

(assert (=> b!4059759 m!4662649))

(assert (=> b!4059759 m!4664363))

(assert (=> b!4058143 d!1206587))

(assert (=> b!4058143 d!1205993))

(declare-fun d!1206593 () Bool)

(assert (=> d!1206593 (= (tail!6303 lt!1449257) (t!336350 lt!1449257))))

(assert (=> b!4058143 d!1206593))

(declare-fun d!1206595 () Bool)

(assert (=> d!1206595 (= suffixResult!105 lt!1449232)))

(assert (=> d!1206595 true))

(declare-fun _$63!1148 () Unit!62757)

(assert (=> d!1206595 (= (choose!24657 lt!1449266 suffixResult!105 lt!1449266 lt!1449232 lt!1449231) _$63!1148)))

(assert (=> d!1205671 d!1206595))

(assert (=> d!1205671 d!1205607))

(declare-fun d!1206603 () Bool)

(declare-fun lt!1449992 () Int)

(assert (=> d!1206603 (>= lt!1449992 0)))

(declare-fun e!2519226 () Int)

(assert (=> d!1206603 (= lt!1449992 e!2519226)))

(declare-fun c!701169 () Bool)

(assert (=> d!1206603 (= c!701169 ((_ is Nil!43373) (originalCharacters!7560 (_1!24351 (v!39791 lt!1449276)))))))

(assert (=> d!1206603 (= (size!32428 (originalCharacters!7560 (_1!24351 (v!39791 lt!1449276)))) lt!1449992)))

(declare-fun b!4059768 () Bool)

(assert (=> b!4059768 (= e!2519226 0)))

(declare-fun b!4059769 () Bool)

(assert (=> b!4059769 (= e!2519226 (+ 1 (size!32428 (t!336350 (originalCharacters!7560 (_1!24351 (v!39791 lt!1449276)))))))))

(assert (= (and d!1206603 c!701169) b!4059768))

(assert (= (and d!1206603 (not c!701169)) b!4059769))

(declare-fun m!4665161 () Bool)

(assert (=> b!4059769 m!4665161))

(assert (=> d!1205839 d!1206603))

(assert (=> b!4058807 d!1206271))

(assert (=> b!4058810 d!1206381))

(declare-fun b!4059772 () Bool)

(declare-fun e!2519227 () Bool)

(assert (=> b!4059772 (= e!2519227 (isPrefix!4047 (tail!6303 (tail!6303 lt!1449249)) (tail!6303 (tail!6303 lt!1449259))))))

(declare-fun b!4059770 () Bool)

(declare-fun e!2519229 () Bool)

(assert (=> b!4059770 (= e!2519229 e!2519227)))

(declare-fun res!1655832 () Bool)

(assert (=> b!4059770 (=> (not res!1655832) (not e!2519227))))

(assert (=> b!4059770 (= res!1655832 (not ((_ is Nil!43373) (tail!6303 lt!1449259))))))

(declare-fun b!4059771 () Bool)

(declare-fun res!1655833 () Bool)

(assert (=> b!4059771 (=> (not res!1655833) (not e!2519227))))

(assert (=> b!4059771 (= res!1655833 (= (head!8571 (tail!6303 lt!1449249)) (head!8571 (tail!6303 lt!1449259))))))

(declare-fun d!1206605 () Bool)

(declare-fun e!2519228 () Bool)

(assert (=> d!1206605 e!2519228))

(declare-fun res!1655834 () Bool)

(assert (=> d!1206605 (=> res!1655834 e!2519228)))

(declare-fun lt!1449993 () Bool)

(assert (=> d!1206605 (= res!1655834 (not lt!1449993))))

(assert (=> d!1206605 (= lt!1449993 e!2519229)))

(declare-fun res!1655835 () Bool)

(assert (=> d!1206605 (=> res!1655835 e!2519229)))

(assert (=> d!1206605 (= res!1655835 ((_ is Nil!43373) (tail!6303 lt!1449249)))))

(assert (=> d!1206605 (= (isPrefix!4047 (tail!6303 lt!1449249) (tail!6303 lt!1449259)) lt!1449993)))

(declare-fun b!4059773 () Bool)

(assert (=> b!4059773 (= e!2519228 (>= (size!32428 (tail!6303 lt!1449259)) (size!32428 (tail!6303 lt!1449249))))))

(assert (= (and d!1206605 (not res!1655835)) b!4059770))

(assert (= (and b!4059770 res!1655832) b!4059771))

(assert (= (and b!4059771 res!1655833) b!4059772))

(assert (= (and d!1206605 (not res!1655834)) b!4059773))

(assert (=> b!4059772 m!4663171))

(assert (=> b!4059772 m!4663819))

(assert (=> b!4059772 m!4663173))

(declare-fun m!4665163 () Bool)

(assert (=> b!4059772 m!4665163))

(assert (=> b!4059772 m!4663819))

(assert (=> b!4059772 m!4665163))

(declare-fun m!4665165 () Bool)

(assert (=> b!4059772 m!4665165))

(assert (=> b!4059771 m!4663171))

(assert (=> b!4059771 m!4663825))

(assert (=> b!4059771 m!4663173))

(declare-fun m!4665167 () Bool)

(assert (=> b!4059771 m!4665167))

(assert (=> b!4059773 m!4663173))

(declare-fun m!4665169 () Bool)

(assert (=> b!4059773 m!4665169))

(assert (=> b!4059773 m!4663171))

(assert (=> b!4059773 m!4664465))

(assert (=> b!4058479 d!1206605))

(assert (=> b!4058479 d!1206001))

(declare-fun d!1206607 () Bool)

(assert (=> d!1206607 (= (tail!6303 lt!1449259) (t!336350 lt!1449259))))

(assert (=> b!4058479 d!1206607))

(declare-fun d!1206609 () Bool)

(declare-fun c!701170 () Bool)

(assert (=> d!1206609 (= c!701170 ((_ is Nil!43373) lt!1449286))))

(declare-fun e!2519230 () (InoxSet C!23916))

(assert (=> d!1206609 (= (content!6612 lt!1449286) e!2519230)))

(declare-fun b!4059774 () Bool)

(assert (=> b!4059774 (= e!2519230 ((as const (Array C!23916 Bool)) false))))

(declare-fun b!4059775 () Bool)

(assert (=> b!4059775 (= e!2519230 ((_ map or) (store ((as const (Array C!23916 Bool)) false) (h!48793 lt!1449286) true) (content!6612 (t!336350 lt!1449286))))))

(assert (= (and d!1206609 c!701170) b!4059774))

(assert (= (and d!1206609 (not c!701170)) b!4059775))

(declare-fun m!4665171 () Bool)

(assert (=> b!4059775 m!4665171))

(declare-fun m!4665173 () Bool)

(assert (=> b!4059775 m!4665173))

(assert (=> d!1205603 d!1206609))

(assert (=> d!1205603 d!1206015))

(assert (=> d!1205603 d!1206269))

(assert (=> b!4058562 d!1205991))

(assert (=> b!4058562 d!1205993))

(assert (=> d!1205903 d!1205981))

(assert (=> d!1205945 d!1205943))

(declare-fun d!1206611 () Bool)

(assert (=> d!1206611 (isPrefix!4047 lt!1449231 lt!1449231)))

(assert (=> d!1206611 true))

(declare-fun _$45!2012 () Unit!62757)

(assert (=> d!1206611 (= (choose!24672 lt!1449231 lt!1449231) _$45!2012)))

(declare-fun bs!592028 () Bool)

(assert (= bs!592028 d!1206611))

(assert (=> bs!592028 m!4662457))

(assert (=> d!1205945 d!1206611))

(declare-fun d!1206613 () Bool)

(declare-fun c!701175 () Bool)

(assert (=> d!1206613 (= c!701175 ((_ is Nil!43373) lt!1449449))))

(declare-fun e!2519245 () (InoxSet C!23916))

(assert (=> d!1206613 (= (content!6612 lt!1449449) e!2519245)))

(declare-fun b!4059794 () Bool)

(assert (=> b!4059794 (= e!2519245 ((as const (Array C!23916 Bool)) false))))

(declare-fun b!4059795 () Bool)

(assert (=> b!4059795 (= e!2519245 ((_ map or) (store ((as const (Array C!23916 Bool)) false) (h!48793 lt!1449449) true) (content!6612 (t!336350 lt!1449449))))))

(assert (= (and d!1206613 c!701175) b!4059794))

(assert (= (and d!1206613 (not c!701175)) b!4059795))

(declare-fun m!4665175 () Bool)

(assert (=> b!4059795 m!4665175))

(declare-fun m!4665177 () Bool)

(assert (=> b!4059795 m!4665177))

(assert (=> d!1205789 d!1206613))

(assert (=> d!1205789 d!1206049))

(assert (=> d!1205789 d!1206011))

(declare-fun d!1206615 () Bool)

(assert (=> d!1206615 (= (_2!24351 (v!39791 lt!1449276)) lt!1449225)))

(assert (=> d!1206615 true))

(declare-fun _$63!1149 () Unit!62757)

(assert (=> d!1206615 (= (choose!24657 lt!1449249 (_2!24351 (v!39791 lt!1449276)) lt!1449249 lt!1449225 lt!1449255) _$63!1149)))

(assert (=> d!1205779 d!1206615))

(assert (=> d!1205779 d!1205935))

(declare-fun d!1206617 () Bool)

(assert (=> d!1206617 (= lt!1449267 suffixResult!105)))

(assert (=> d!1206617 true))

(declare-fun _$63!1150 () Unit!62757)

(assert (=> d!1206617 (= (choose!24657 lt!1449266 lt!1449267 lt!1449266 suffixResult!105 lt!1449231) _$63!1150)))

(assert (=> d!1205965 d!1206617))

(assert (=> d!1205965 d!1205607))

(declare-fun d!1206619 () Bool)

(declare-fun lt!1449994 () Int)

(assert (=> d!1206619 (>= lt!1449994 0)))

(declare-fun e!2519246 () Int)

(assert (=> d!1206619 (= lt!1449994 e!2519246)))

(declare-fun c!701176 () Bool)

(assert (=> d!1206619 (= c!701176 ((_ is Nil!43373) lt!1449440))))

(assert (=> d!1206619 (= (size!32428 lt!1449440) lt!1449994)))

(declare-fun b!4059796 () Bool)

(assert (=> b!4059796 (= e!2519246 0)))

(declare-fun b!4059797 () Bool)

(assert (=> b!4059797 (= e!2519246 (+ 1 (size!32428 (t!336350 lt!1449440))))))

(assert (= (and d!1206619 c!701176) b!4059796))

(assert (= (and d!1206619 (not c!701176)) b!4059797))

(declare-fun m!4665179 () Bool)

(assert (=> b!4059797 m!4665179))

(assert (=> b!4058469 d!1206619))

(assert (=> b!4058469 d!1205907))

(declare-fun d!1206621 () Bool)

(declare-fun lt!1449995 () Int)

(assert (=> d!1206621 (>= lt!1449995 0)))

(declare-fun e!2519247 () Int)

(assert (=> d!1206621 (= lt!1449995 e!2519247)))

(declare-fun c!701177 () Bool)

(assert (=> d!1206621 (= c!701177 ((_ is Nil!43373) lt!1449225))))

(assert (=> d!1206621 (= (size!32428 lt!1449225) lt!1449995)))

(declare-fun b!4059798 () Bool)

(assert (=> b!4059798 (= e!2519247 0)))

(declare-fun b!4059799 () Bool)

(assert (=> b!4059799 (= e!2519247 (+ 1 (size!32428 (t!336350 lt!1449225))))))

(assert (= (and d!1206621 c!701177) b!4059798))

(assert (= (and d!1206621 (not c!701177)) b!4059799))

(declare-fun m!4665181 () Bool)

(assert (=> b!4059799 m!4665181))

(assert (=> b!4058469 d!1206621))

(declare-fun b!4059800 () Bool)

(declare-fun e!2519250 () Bool)

(assert (=> b!4059800 (= e!2519250 (inv!16 (dynLambda!18426 (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (seqFromList!5177 lt!1449249))))))

(declare-fun b!4059801 () Bool)

(declare-fun res!1655846 () Bool)

(declare-fun e!2519248 () Bool)

(assert (=> b!4059801 (=> res!1655846 e!2519248)))

(assert (=> b!4059801 (= res!1655846 (not ((_ is IntegerValue!21572) (dynLambda!18426 (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (seqFromList!5177 lt!1449249)))))))

(declare-fun e!2519249 () Bool)

(assert (=> b!4059801 (= e!2519249 e!2519248)))

(declare-fun d!1206623 () Bool)

(declare-fun c!701179 () Bool)

(assert (=> d!1206623 (= c!701179 ((_ is IntegerValue!21570) (dynLambda!18426 (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (seqFromList!5177 lt!1449249))))))

(assert (=> d!1206623 (= (inv!21 (dynLambda!18426 (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (seqFromList!5177 lt!1449249))) e!2519250)))

(declare-fun b!4059802 () Bool)

(assert (=> b!4059802 (= e!2519250 e!2519249)))

(declare-fun c!701178 () Bool)

(assert (=> b!4059802 (= c!701178 ((_ is IntegerValue!21571) (dynLambda!18426 (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (seqFromList!5177 lt!1449249))))))

(declare-fun b!4059803 () Bool)

(assert (=> b!4059803 (= e!2519248 (inv!15 (dynLambda!18426 (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (seqFromList!5177 lt!1449249))))))

(declare-fun b!4059804 () Bool)

(assert (=> b!4059804 (= e!2519249 (inv!17 (dynLambda!18426 (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (seqFromList!5177 lt!1449249))))))

(assert (= (and d!1206623 c!701179) b!4059800))

(assert (= (and d!1206623 (not c!701179)) b!4059802))

(assert (= (and b!4059802 c!701178) b!4059804))

(assert (= (and b!4059802 (not c!701178)) b!4059801))

(assert (= (and b!4059801 (not res!1655846)) b!4059803))

(declare-fun m!4665183 () Bool)

(assert (=> b!4059800 m!4665183))

(declare-fun m!4665185 () Bool)

(assert (=> b!4059803 m!4665185))

(declare-fun m!4665187 () Bool)

(assert (=> b!4059804 m!4665187))

(assert (=> tb!244113 d!1206623))

(declare-fun b!4059805 () Bool)

(declare-fun e!2519253 () Bool)

(assert (=> b!4059805 (= e!2519253 (nullable!4168 (regex!6960 (rule!10050 token!484))))))

(declare-fun b!4059806 () Bool)

(declare-fun res!1655850 () Bool)

(declare-fun e!2519252 () Bool)

(assert (=> b!4059806 (=> (not res!1655850) (not e!2519252))))

(assert (=> b!4059806 (= res!1655850 (isEmpty!25885 (tail!6303 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449563)))))))))

(declare-fun b!4059807 () Bool)

(declare-fun e!2519257 () Bool)

(declare-fun e!2519255 () Bool)

(assert (=> b!4059807 (= e!2519257 e!2519255)))

(declare-fun res!1655849 () Bool)

(assert (=> b!4059807 (=> res!1655849 e!2519255)))

(declare-fun call!288174 () Bool)

(assert (=> b!4059807 (= res!1655849 call!288174)))

(declare-fun b!4059808 () Bool)

(declare-fun res!1655848 () Bool)

(assert (=> b!4059808 (=> res!1655848 e!2519255)))

(assert (=> b!4059808 (= res!1655848 (not (isEmpty!25885 (tail!6303 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449563))))))))))

(declare-fun b!4059809 () Bool)

(declare-fun res!1655851 () Bool)

(assert (=> b!4059809 (=> (not res!1655851) (not e!2519252))))

(assert (=> b!4059809 (= res!1655851 (not call!288174))))

(declare-fun b!4059810 () Bool)

(assert (=> b!4059810 (= e!2519255 (not (= (head!8571 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449563))))) (c!700781 (regex!6960 (rule!10050 token!484))))))))

(declare-fun b!4059811 () Bool)

(declare-fun e!2519254 () Bool)

(declare-fun e!2519256 () Bool)

(assert (=> b!4059811 (= e!2519254 e!2519256)))

(declare-fun c!701180 () Bool)

(assert (=> b!4059811 (= c!701180 ((_ is EmptyLang!11865) (regex!6960 (rule!10050 token!484))))))

(declare-fun d!1206625 () Bool)

(assert (=> d!1206625 e!2519254))

(declare-fun c!701182 () Bool)

(assert (=> d!1206625 (= c!701182 ((_ is EmptyExpr!11865) (regex!6960 (rule!10050 token!484))))))

(declare-fun lt!1449996 () Bool)

(assert (=> d!1206625 (= lt!1449996 e!2519253)))

(declare-fun c!701181 () Bool)

(assert (=> d!1206625 (= c!701181 (isEmpty!25885 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449563))))))))

(assert (=> d!1206625 (validRegex!5368 (regex!6960 (rule!10050 token!484)))))

(assert (=> d!1206625 (= (matchR!5818 (regex!6960 (rule!10050 token!484)) (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449563))))) lt!1449996)))

(declare-fun b!4059812 () Bool)

(declare-fun res!1655853 () Bool)

(declare-fun e!2519251 () Bool)

(assert (=> b!4059812 (=> res!1655853 e!2519251)))

(assert (=> b!4059812 (= res!1655853 (not ((_ is ElementMatch!11865) (regex!6960 (rule!10050 token!484)))))))

(assert (=> b!4059812 (= e!2519256 e!2519251)))

(declare-fun b!4059813 () Bool)

(assert (=> b!4059813 (= e!2519253 (matchR!5818 (derivativeStep!3573 (regex!6960 (rule!10050 token!484)) (head!8571 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449563)))))) (tail!6303 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449563)))))))))

(declare-fun b!4059814 () Bool)

(assert (=> b!4059814 (= e!2519252 (= (head!8571 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449563))))) (c!700781 (regex!6960 (rule!10050 token!484)))))))

(declare-fun b!4059815 () Bool)

(assert (=> b!4059815 (= e!2519256 (not lt!1449996))))

(declare-fun b!4059816 () Bool)

(assert (=> b!4059816 (= e!2519251 e!2519257)))

(declare-fun res!1655854 () Bool)

(assert (=> b!4059816 (=> (not res!1655854) (not e!2519257))))

(assert (=> b!4059816 (= res!1655854 (not lt!1449996))))

(declare-fun bm!288169 () Bool)

(assert (=> bm!288169 (= call!288174 (isEmpty!25885 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449563))))))))

(declare-fun b!4059817 () Bool)

(assert (=> b!4059817 (= e!2519254 (= lt!1449996 call!288174))))

(declare-fun b!4059818 () Bool)

(declare-fun res!1655847 () Bool)

(assert (=> b!4059818 (=> res!1655847 e!2519251)))

(assert (=> b!4059818 (= res!1655847 e!2519252)))

(declare-fun res!1655852 () Bool)

(assert (=> b!4059818 (=> (not res!1655852) (not e!2519252))))

(assert (=> b!4059818 (= res!1655852 lt!1449996)))

(assert (= (and d!1206625 c!701181) b!4059805))

(assert (= (and d!1206625 (not c!701181)) b!4059813))

(assert (= (and d!1206625 c!701182) b!4059817))

(assert (= (and d!1206625 (not c!701182)) b!4059811))

(assert (= (and b!4059811 c!701180) b!4059815))

(assert (= (and b!4059811 (not c!701180)) b!4059812))

(assert (= (and b!4059812 (not res!1655853)) b!4059818))

(assert (= (and b!4059818 res!1655852) b!4059809))

(assert (= (and b!4059809 res!1655851) b!4059806))

(assert (= (and b!4059806 res!1655850) b!4059814))

(assert (= (and b!4059818 (not res!1655847)) b!4059816))

(assert (= (and b!4059816 res!1655854) b!4059807))

(assert (= (and b!4059807 (not res!1655849)) b!4059808))

(assert (= (and b!4059808 (not res!1655848)) b!4059810))

(assert (= (or b!4059817 b!4059807 b!4059809) bm!288169))

(assert (=> b!4059805 m!4663147))

(assert (=> b!4059808 m!4663735))

(declare-fun m!4665189 () Bool)

(assert (=> b!4059808 m!4665189))

(assert (=> b!4059808 m!4665189))

(declare-fun m!4665191 () Bool)

(assert (=> b!4059808 m!4665191))

(assert (=> d!1206625 m!4663735))

(declare-fun m!4665193 () Bool)

(assert (=> d!1206625 m!4665193))

(assert (=> d!1206625 m!4663145))

(assert (=> bm!288169 m!4663735))

(assert (=> bm!288169 m!4665193))

(assert (=> b!4059806 m!4663735))

(assert (=> b!4059806 m!4665189))

(assert (=> b!4059806 m!4665189))

(assert (=> b!4059806 m!4665191))

(assert (=> b!4059810 m!4663735))

(declare-fun m!4665195 () Bool)

(assert (=> b!4059810 m!4665195))

(assert (=> b!4059813 m!4663735))

(assert (=> b!4059813 m!4665195))

(assert (=> b!4059813 m!4665195))

(declare-fun m!4665197 () Bool)

(assert (=> b!4059813 m!4665197))

(assert (=> b!4059813 m!4663735))

(assert (=> b!4059813 m!4665189))

(assert (=> b!4059813 m!4665197))

(assert (=> b!4059813 m!4665189))

(declare-fun m!4665199 () Bool)

(assert (=> b!4059813 m!4665199))

(assert (=> b!4059814 m!4663735))

(assert (=> b!4059814 m!4665195))

(assert (=> b!4058821 d!1206625))

(assert (=> b!4058821 d!1206235))

(assert (=> b!4058821 d!1206237))

(assert (=> b!4058821 d!1206021))

(declare-fun b!4059830 () Bool)

(declare-fun res!1655860 () Bool)

(declare-fun e!2519265 () Bool)

(assert (=> b!4059830 (=> (not res!1655860) (not e!2519265))))

(declare-fun lt!1449997 () List!43497)

(assert (=> b!4059830 (= res!1655860 (= (size!32428 lt!1449997) (+ (size!32428 (t!336350 lt!1449266)) (size!32428 newSuffixResult!27))))))

(declare-fun b!4059828 () Bool)

(declare-fun e!2519266 () List!43497)

(assert (=> b!4059828 (= e!2519266 newSuffixResult!27)))

(declare-fun b!4059829 () Bool)

(assert (=> b!4059829 (= e!2519266 (Cons!43373 (h!48793 (t!336350 lt!1449266)) (++!11362 (t!336350 (t!336350 lt!1449266)) newSuffixResult!27)))))

(declare-fun d!1206627 () Bool)

(assert (=> d!1206627 e!2519265))

(declare-fun res!1655861 () Bool)

(assert (=> d!1206627 (=> (not res!1655861) (not e!2519265))))

(assert (=> d!1206627 (= res!1655861 (= (content!6612 lt!1449997) ((_ map or) (content!6612 (t!336350 lt!1449266)) (content!6612 newSuffixResult!27))))))

(assert (=> d!1206627 (= lt!1449997 e!2519266)))

(declare-fun c!701185 () Bool)

(assert (=> d!1206627 (= c!701185 ((_ is Nil!43373) (t!336350 lt!1449266)))))

(assert (=> d!1206627 (= (++!11362 (t!336350 lt!1449266) newSuffixResult!27) lt!1449997)))

(declare-fun b!4059831 () Bool)

(assert (=> b!4059831 (= e!2519265 (or (not (= newSuffixResult!27 Nil!43373)) (= lt!1449997 (t!336350 lt!1449266))))))

(assert (= (and d!1206627 c!701185) b!4059828))

(assert (= (and d!1206627 (not c!701185)) b!4059829))

(assert (= (and d!1206627 res!1655861) b!4059830))

(assert (= (and b!4059830 res!1655860) b!4059831))

(declare-fun m!4665202 () Bool)

(assert (=> b!4059830 m!4665202))

(assert (=> b!4059830 m!4662933))

(assert (=> b!4059830 m!4662635))

(declare-fun m!4665205 () Bool)

(assert (=> b!4059829 m!4665205))

(declare-fun m!4665207 () Bool)

(assert (=> d!1206627 m!4665207))

(assert (=> d!1206627 m!4663863))

(assert (=> d!1206627 m!4662643))

(assert (=> b!4058098 d!1206627))

(declare-fun d!1206629 () Bool)

(declare-fun lt!1449998 () Int)

(assert (=> d!1206629 (>= lt!1449998 0)))

(declare-fun e!2519267 () Int)

(assert (=> d!1206629 (= lt!1449998 e!2519267)))

(declare-fun c!701186 () Bool)

(assert (=> d!1206629 (= c!701186 ((_ is Nil!43373) (t!336350 newSuffix!27)))))

(assert (=> d!1206629 (= (size!32428 (t!336350 newSuffix!27)) lt!1449998)))

(declare-fun b!4059832 () Bool)

(assert (=> b!4059832 (= e!2519267 0)))

(declare-fun b!4059833 () Bool)

(assert (=> b!4059833 (= e!2519267 (+ 1 (size!32428 (t!336350 (t!336350 newSuffix!27)))))))

(assert (= (and d!1206629 c!701186) b!4059832))

(assert (= (and d!1206629 (not c!701186)) b!4059833))

(declare-fun m!4665213 () Bool)

(assert (=> b!4059833 m!4665213))

(assert (=> b!4058835 d!1206629))

(declare-fun b!4059836 () Bool)

(declare-fun res!1655862 () Bool)

(declare-fun e!2519268 () Bool)

(assert (=> b!4059836 (=> (not res!1655862) (not e!2519268))))

(declare-fun lt!1449999 () List!43497)

(assert (=> b!4059836 (= res!1655862 (= (size!32428 lt!1449999) (+ (size!32428 (t!336350 lt!1449238)) (size!32428 suffix!1299))))))

(declare-fun b!4059834 () Bool)

(declare-fun e!2519269 () List!43497)

(assert (=> b!4059834 (= e!2519269 suffix!1299)))

(declare-fun b!4059835 () Bool)

(assert (=> b!4059835 (= e!2519269 (Cons!43373 (h!48793 (t!336350 lt!1449238)) (++!11362 (t!336350 (t!336350 lt!1449238)) suffix!1299)))))

(declare-fun d!1206633 () Bool)

(assert (=> d!1206633 e!2519268))

(declare-fun res!1655863 () Bool)

(assert (=> d!1206633 (=> (not res!1655863) (not e!2519268))))

(assert (=> d!1206633 (= res!1655863 (= (content!6612 lt!1449999) ((_ map or) (content!6612 (t!336350 lt!1449238)) (content!6612 suffix!1299))))))

(assert (=> d!1206633 (= lt!1449999 e!2519269)))

(declare-fun c!701187 () Bool)

(assert (=> d!1206633 (= c!701187 ((_ is Nil!43373) (t!336350 lt!1449238)))))

(assert (=> d!1206633 (= (++!11362 (t!336350 lt!1449238) suffix!1299) lt!1449999)))

(declare-fun b!4059837 () Bool)

(assert (=> b!4059837 (= e!2519268 (or (not (= suffix!1299 Nil!43373)) (= lt!1449999 (t!336350 lt!1449238))))))

(assert (= (and d!1206633 c!701187) b!4059834))

(assert (= (and d!1206633 (not c!701187)) b!4059835))

(assert (= (and d!1206633 res!1655863) b!4059836))

(assert (= (and b!4059836 res!1655862) b!4059837))

(declare-fun m!4665215 () Bool)

(assert (=> b!4059836 m!4665215))

(assert (=> b!4059836 m!4664367))

(assert (=> b!4059836 m!4662511))

(declare-fun m!4665217 () Bool)

(assert (=> b!4059835 m!4665217))

(declare-fun m!4665219 () Bool)

(assert (=> d!1206633 m!4665219))

(assert (=> d!1206633 m!4663931))

(assert (=> d!1206633 m!4662849))

(assert (=> b!4058490 d!1206633))

(assert (=> b!4058581 d!1205999))

(declare-fun d!1206635 () Bool)

(assert (=> d!1206635 (= (head!8571 lt!1449274) (h!48793 lt!1449274))))

(assert (=> b!4058581 d!1206635))

(declare-fun b!4059838 () Bool)

(declare-fun e!2519272 () Bool)

(assert (=> b!4059838 (= e!2519272 (nullable!4168 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))))

(declare-fun b!4059839 () Bool)

(declare-fun res!1655867 () Bool)

(declare-fun e!2519271 () Bool)

(assert (=> b!4059839 (=> (not res!1655867) (not e!2519271))))

(assert (=> b!4059839 (= res!1655867 (isEmpty!25885 (tail!6303 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449534)))))))))

(declare-fun b!4059840 () Bool)

(declare-fun e!2519276 () Bool)

(declare-fun e!2519274 () Bool)

(assert (=> b!4059840 (= e!2519276 e!2519274)))

(declare-fun res!1655866 () Bool)

(assert (=> b!4059840 (=> res!1655866 e!2519274)))

(declare-fun call!288178 () Bool)

(assert (=> b!4059840 (= res!1655866 call!288178)))

(declare-fun b!4059841 () Bool)

(declare-fun res!1655865 () Bool)

(assert (=> b!4059841 (=> res!1655865 e!2519274)))

(assert (=> b!4059841 (= res!1655865 (not (isEmpty!25885 (tail!6303 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449534))))))))))

(declare-fun b!4059842 () Bool)

(declare-fun res!1655868 () Bool)

(assert (=> b!4059842 (=> (not res!1655868) (not e!2519271))))

(assert (=> b!4059842 (= res!1655868 (not call!288178))))

(declare-fun b!4059843 () Bool)

(assert (=> b!4059843 (= e!2519274 (not (= (head!8571 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449534))))) (c!700781 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))))))

(declare-fun b!4059844 () Bool)

(declare-fun e!2519273 () Bool)

(declare-fun e!2519275 () Bool)

(assert (=> b!4059844 (= e!2519273 e!2519275)))

(declare-fun c!701188 () Bool)

(assert (=> b!4059844 (= c!701188 ((_ is EmptyLang!11865) (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))))

(declare-fun d!1206637 () Bool)

(assert (=> d!1206637 e!2519273))

(declare-fun c!701190 () Bool)

(assert (=> d!1206637 (= c!701190 ((_ is EmptyExpr!11865) (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))))

(declare-fun lt!1450000 () Bool)

(assert (=> d!1206637 (= lt!1450000 e!2519272)))

(declare-fun c!701189 () Bool)

(assert (=> d!1206637 (= c!701189 (isEmpty!25885 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449534))))))))

(assert (=> d!1206637 (validRegex!5368 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))))

(assert (=> d!1206637 (= (matchR!5818 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449534))))) lt!1450000)))

(declare-fun b!4059845 () Bool)

(declare-fun res!1655870 () Bool)

(declare-fun e!2519270 () Bool)

(assert (=> b!4059845 (=> res!1655870 e!2519270)))

(assert (=> b!4059845 (= res!1655870 (not ((_ is ElementMatch!11865) (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))))))

(assert (=> b!4059845 (= e!2519275 e!2519270)))

(declare-fun b!4059846 () Bool)

(assert (=> b!4059846 (= e!2519272 (matchR!5818 (derivativeStep!3573 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))) (head!8571 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449534)))))) (tail!6303 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449534)))))))))

(declare-fun b!4059847 () Bool)

(assert (=> b!4059847 (= e!2519271 (= (head!8571 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449534))))) (c!700781 (regex!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))))))

(declare-fun b!4059848 () Bool)

(assert (=> b!4059848 (= e!2519275 (not lt!1450000))))

(declare-fun b!4059849 () Bool)

(assert (=> b!4059849 (= e!2519270 e!2519276)))

(declare-fun res!1655871 () Bool)

(assert (=> b!4059849 (=> (not res!1655871) (not e!2519276))))

(assert (=> b!4059849 (= res!1655871 (not lt!1450000))))

(declare-fun bm!288173 () Bool)

(assert (=> bm!288173 (= call!288178 (isEmpty!25885 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1449534))))))))

(declare-fun b!4059850 () Bool)

(assert (=> b!4059850 (= e!2519273 (= lt!1450000 call!288178))))

(declare-fun b!4059851 () Bool)

(declare-fun res!1655864 () Bool)

(assert (=> b!4059851 (=> res!1655864 e!2519270)))

(assert (=> b!4059851 (= res!1655864 e!2519271)))

(declare-fun res!1655869 () Bool)

(assert (=> b!4059851 (=> (not res!1655869) (not e!2519271))))

(assert (=> b!4059851 (= res!1655869 lt!1450000)))

(assert (= (and d!1206637 c!701189) b!4059838))

(assert (= (and d!1206637 (not c!701189)) b!4059846))

(assert (= (and d!1206637 c!701190) b!4059850))

(assert (= (and d!1206637 (not c!701190)) b!4059844))

(assert (= (and b!4059844 c!701188) b!4059848))

(assert (= (and b!4059844 (not c!701188)) b!4059845))

(assert (= (and b!4059845 (not res!1655870)) b!4059851))

(assert (= (and b!4059851 res!1655869) b!4059842))

(assert (= (and b!4059842 res!1655868) b!4059839))

(assert (= (and b!4059839 res!1655867) b!4059847))

(assert (= (and b!4059851 (not res!1655864)) b!4059849))

(assert (= (and b!4059849 res!1655871) b!4059840))

(assert (= (and b!4059840 (not res!1655866)) b!4059841))

(assert (= (and b!4059841 (not res!1655865)) b!4059843))

(assert (= (or b!4059850 b!4059840 b!4059842) bm!288173))

(assert (=> b!4059838 m!4663293))

(assert (=> b!4059841 m!4663579))

(declare-fun m!4665223 () Bool)

(assert (=> b!4059841 m!4665223))

(assert (=> b!4059841 m!4665223))

(declare-fun m!4665225 () Bool)

(assert (=> b!4059841 m!4665225))

(assert (=> d!1206637 m!4663579))

(declare-fun m!4665227 () Bool)

(assert (=> d!1206637 m!4665227))

(assert (=> d!1206637 m!4663299))

(assert (=> bm!288173 m!4663579))

(assert (=> bm!288173 m!4665227))

(assert (=> b!4059839 m!4663579))

(assert (=> b!4059839 m!4665223))

(assert (=> b!4059839 m!4665223))

(assert (=> b!4059839 m!4665225))

(assert (=> b!4059843 m!4663579))

(declare-fun m!4665229 () Bool)

(assert (=> b!4059843 m!4665229))

(assert (=> b!4059846 m!4663579))

(assert (=> b!4059846 m!4665229))

(assert (=> b!4059846 m!4665229))

(declare-fun m!4665231 () Bool)

(assert (=> b!4059846 m!4665231))

(assert (=> b!4059846 m!4663579))

(assert (=> b!4059846 m!4665223))

(assert (=> b!4059846 m!4665231))

(assert (=> b!4059846 m!4665223))

(declare-fun m!4665233 () Bool)

(assert (=> b!4059846 m!4665233))

(assert (=> b!4059847 m!4663579))

(assert (=> b!4059847 m!4665229))

(assert (=> b!4058709 d!1206637))

(assert (=> b!4058709 d!1206139))

(assert (=> b!4058709 d!1206141))

(assert (=> b!4058709 d!1206143))

(declare-fun d!1206643 () Bool)

(declare-fun lt!1450002 () Int)

(assert (=> d!1206643 (>= lt!1450002 0)))

(declare-fun e!2519278 () Int)

(assert (=> d!1206643 (= lt!1450002 e!2519278)))

(declare-fun c!701192 () Bool)

(assert (=> d!1206643 (= c!701192 ((_ is Nil!43373) (t!336350 lt!1449249)))))

(assert (=> d!1206643 (= (size!32428 (t!336350 lt!1449249)) lt!1450002)))

(declare-fun b!4059854 () Bool)

(assert (=> b!4059854 (= e!2519278 0)))

(declare-fun b!4059855 () Bool)

(assert (=> b!4059855 (= e!2519278 (+ 1 (size!32428 (t!336350 (t!336350 lt!1449249)))))))

(assert (= (and d!1206643 c!701192) b!4059854))

(assert (= (and d!1206643 (not c!701192)) b!4059855))

(declare-fun m!4665243 () Bool)

(assert (=> b!4059855 m!4665243))

(assert (=> b!4058756 d!1206643))

(assert (=> b!4058576 d!1205989))

(assert (=> b!4058576 d!1205685))

(declare-fun b!4059867 () Bool)

(declare-fun e!2519282 () Bool)

(assert (=> b!4059867 (= e!2519282 (isPrefix!4047 (tail!6303 (tail!6303 lt!1449266)) (tail!6303 (tail!6303 lt!1449246))))))

(declare-fun b!4059865 () Bool)

(declare-fun e!2519284 () Bool)

(assert (=> b!4059865 (= e!2519284 e!2519282)))

(declare-fun res!1655879 () Bool)

(assert (=> b!4059865 (=> (not res!1655879) (not e!2519282))))

(assert (=> b!4059865 (= res!1655879 (not ((_ is Nil!43373) (tail!6303 lt!1449246))))))

(declare-fun b!4059866 () Bool)

(declare-fun res!1655880 () Bool)

(assert (=> b!4059866 (=> (not res!1655880) (not e!2519282))))

(assert (=> b!4059866 (= res!1655880 (= (head!8571 (tail!6303 lt!1449266)) (head!8571 (tail!6303 lt!1449246))))))

(declare-fun d!1206649 () Bool)

(declare-fun e!2519283 () Bool)

(assert (=> d!1206649 e!2519283))

(declare-fun res!1655881 () Bool)

(assert (=> d!1206649 (=> res!1655881 e!2519283)))

(declare-fun lt!1450008 () Bool)

(assert (=> d!1206649 (= res!1655881 (not lt!1450008))))

(assert (=> d!1206649 (= lt!1450008 e!2519284)))

(declare-fun res!1655882 () Bool)

(assert (=> d!1206649 (=> res!1655882 e!2519284)))

(assert (=> d!1206649 (= res!1655882 ((_ is Nil!43373) (tail!6303 lt!1449266)))))

(assert (=> d!1206649 (= (isPrefix!4047 (tail!6303 lt!1449266) (tail!6303 lt!1449246)) lt!1450008)))

(declare-fun b!4059868 () Bool)

(assert (=> b!4059868 (= e!2519283 (>= (size!32428 (tail!6303 lt!1449246)) (size!32428 (tail!6303 lt!1449266))))))

(assert (= (and d!1206649 (not res!1655882)) b!4059865))

(assert (= (and b!4059865 res!1655879) b!4059866))

(assert (= (and b!4059866 res!1655880) b!4059867))

(assert (= (and d!1206649 (not res!1655881)) b!4059868))

(assert (=> b!4059867 m!4662649))

(assert (=> b!4059867 m!4664351))

(assert (=> b!4059867 m!4663767))

(declare-fun m!4665245 () Bool)

(assert (=> b!4059867 m!4665245))

(assert (=> b!4059867 m!4664351))

(assert (=> b!4059867 m!4665245))

(declare-fun m!4665247 () Bool)

(assert (=> b!4059867 m!4665247))

(assert (=> b!4059866 m!4662649))

(assert (=> b!4059866 m!4664357))

(assert (=> b!4059866 m!4663767))

(declare-fun m!4665249 () Bool)

(assert (=> b!4059866 m!4665249))

(assert (=> b!4059868 m!4663767))

(declare-fun m!4665251 () Bool)

(assert (=> b!4059868 m!4665251))

(assert (=> b!4059868 m!4662649))

(assert (=> b!4059868 m!4664363))

(assert (=> b!4058830 d!1206649))

(assert (=> b!4058830 d!1205993))

(declare-fun d!1206651 () Bool)

(assert (=> d!1206651 (= (tail!6303 lt!1449246) (t!336350 lt!1449246))))

(assert (=> b!4058830 d!1206651))

(assert (=> b!4058546 d!1206433))

(assert (=> b!4058546 d!1206001))

(declare-fun b!4059869 () Bool)

(declare-fun res!1655888 () Bool)

(declare-fun e!2519286 () Bool)

(assert (=> b!4059869 (=> (not res!1655888) (not e!2519286))))

(declare-fun lt!1450009 () Option!9374)

(assert (=> b!4059869 (= res!1655888 (matchR!5818 (regex!6960 (rule!10050 (_1!24351 (get!14226 lt!1450009)))) (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1450009))))))))

(declare-fun bm!288175 () Bool)

(declare-fun call!288180 () Option!9374)

(assert (=> bm!288175 (= call!288180 (maxPrefixOneRule!2859 thiss!21717 (h!48795 (t!336352 rules!2999)) lt!1449231))))

(declare-fun b!4059870 () Bool)

(declare-fun e!2519285 () Bool)

(assert (=> b!4059870 (= e!2519285 e!2519286)))

(declare-fun res!1655885 () Bool)

(assert (=> b!4059870 (=> (not res!1655885) (not e!2519286))))

(assert (=> b!4059870 (= res!1655885 (isDefined!7122 lt!1450009))))

(declare-fun b!4059871 () Bool)

(declare-fun res!1655887 () Bool)

(assert (=> b!4059871 (=> (not res!1655887) (not e!2519286))))

(assert (=> b!4059871 (= res!1655887 (= (value!218994 (_1!24351 (get!14226 lt!1450009))) (apply!10149 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1450009)))) (seqFromList!5177 (originalCharacters!7560 (_1!24351 (get!14226 lt!1450009)))))))))

(declare-fun b!4059872 () Bool)

(declare-fun res!1655884 () Bool)

(assert (=> b!4059872 (=> (not res!1655884) (not e!2519286))))

(assert (=> b!4059872 (= res!1655884 (= (++!11362 (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1450009)))) (_2!24351 (get!14226 lt!1450009))) lt!1449231))))

(declare-fun d!1206653 () Bool)

(assert (=> d!1206653 e!2519285))

(declare-fun res!1655889 () Bool)

(assert (=> d!1206653 (=> res!1655889 e!2519285)))

(assert (=> d!1206653 (= res!1655889 (isEmpty!25884 lt!1450009))))

(declare-fun e!2519287 () Option!9374)

(assert (=> d!1206653 (= lt!1450009 e!2519287)))

(declare-fun c!701194 () Bool)

(assert (=> d!1206653 (= c!701194 (and ((_ is Cons!43375) (t!336352 rules!2999)) ((_ is Nil!43375) (t!336352 (t!336352 rules!2999)))))))

(declare-fun lt!1450010 () Unit!62757)

(declare-fun lt!1450011 () Unit!62757)

(assert (=> d!1206653 (= lt!1450010 lt!1450011)))

(assert (=> d!1206653 (isPrefix!4047 lt!1449231 lt!1449231)))

(assert (=> d!1206653 (= lt!1450011 (lemmaIsPrefixRefl!2614 lt!1449231 lt!1449231))))

(assert (=> d!1206653 (rulesValidInductive!2543 thiss!21717 (t!336352 rules!2999))))

(assert (=> d!1206653 (= (maxPrefix!3847 thiss!21717 (t!336352 rules!2999) lt!1449231) lt!1450009)))

(declare-fun b!4059873 () Bool)

(assert (=> b!4059873 (= e!2519286 (contains!8628 (t!336352 rules!2999) (rule!10050 (_1!24351 (get!14226 lt!1450009)))))))

(declare-fun b!4059874 () Bool)

(assert (=> b!4059874 (= e!2519287 call!288180)))

(declare-fun b!4059875 () Bool)

(declare-fun res!1655886 () Bool)

(assert (=> b!4059875 (=> (not res!1655886) (not e!2519286))))

(assert (=> b!4059875 (= res!1655886 (= (list!16164 (charsOf!4776 (_1!24351 (get!14226 lt!1450009)))) (originalCharacters!7560 (_1!24351 (get!14226 lt!1450009)))))))

(declare-fun b!4059876 () Bool)

(declare-fun res!1655883 () Bool)

(assert (=> b!4059876 (=> (not res!1655883) (not e!2519286))))

(assert (=> b!4059876 (= res!1655883 (< (size!32428 (_2!24351 (get!14226 lt!1450009))) (size!32428 lt!1449231)))))

(declare-fun b!4059877 () Bool)

(declare-fun lt!1450012 () Option!9374)

(declare-fun lt!1450013 () Option!9374)

(assert (=> b!4059877 (= e!2519287 (ite (and ((_ is None!9373) lt!1450012) ((_ is None!9373) lt!1450013)) None!9373 (ite ((_ is None!9373) lt!1450013) lt!1450012 (ite ((_ is None!9373) lt!1450012) lt!1450013 (ite (>= (size!32427 (_1!24351 (v!39791 lt!1450012))) (size!32427 (_1!24351 (v!39791 lt!1450013)))) lt!1450012 lt!1450013)))))))

(assert (=> b!4059877 (= lt!1450012 call!288180)))

(assert (=> b!4059877 (= lt!1450013 (maxPrefix!3847 thiss!21717 (t!336352 (t!336352 rules!2999)) lt!1449231))))

(assert (= (and d!1206653 c!701194) b!4059874))

(assert (= (and d!1206653 (not c!701194)) b!4059877))

(assert (= (or b!4059874 b!4059877) bm!288175))

(assert (= (and d!1206653 (not res!1655889)) b!4059870))

(assert (= (and b!4059870 res!1655885) b!4059875))

(assert (= (and b!4059875 res!1655886) b!4059876))

(assert (= (and b!4059876 res!1655883) b!4059872))

(assert (= (and b!4059872 res!1655884) b!4059871))

(assert (= (and b!4059871 res!1655887) b!4059869))

(assert (= (and b!4059869 res!1655888) b!4059873))

(declare-fun m!4665273 () Bool)

(assert (=> b!4059871 m!4665273))

(declare-fun m!4665275 () Bool)

(assert (=> b!4059871 m!4665275))

(assert (=> b!4059871 m!4665275))

(declare-fun m!4665279 () Bool)

(assert (=> b!4059871 m!4665279))

(assert (=> b!4059873 m!4665273))

(declare-fun m!4665281 () Bool)

(assert (=> b!4059873 m!4665281))

(assert (=> b!4059875 m!4665273))

(declare-fun m!4665283 () Bool)

(assert (=> b!4059875 m!4665283))

(assert (=> b!4059875 m!4665283))

(declare-fun m!4665289 () Bool)

(assert (=> b!4059875 m!4665289))

(declare-fun m!4665291 () Bool)

(assert (=> b!4059870 m!4665291))

(declare-fun m!4665293 () Bool)

(assert (=> d!1206653 m!4665293))

(assert (=> d!1206653 m!4662457))

(assert (=> d!1206653 m!4662459))

(assert (=> d!1206653 m!4664305))

(assert (=> b!4059872 m!4665273))

(assert (=> b!4059872 m!4665283))

(assert (=> b!4059872 m!4665283))

(assert (=> b!4059872 m!4665289))

(assert (=> b!4059872 m!4665289))

(declare-fun m!4665295 () Bool)

(assert (=> b!4059872 m!4665295))

(declare-fun m!4665297 () Bool)

(assert (=> b!4059877 m!4665297))

(declare-fun m!4665299 () Bool)

(assert (=> bm!288175 m!4665299))

(assert (=> b!4059869 m!4665273))

(assert (=> b!4059869 m!4665283))

(assert (=> b!4059869 m!4665283))

(assert (=> b!4059869 m!4665289))

(assert (=> b!4059869 m!4665289))

(declare-fun m!4665307 () Bool)

(assert (=> b!4059869 m!4665307))

(assert (=> b!4059876 m!4665273))

(declare-fun m!4665309 () Bool)

(assert (=> b!4059876 m!4665309))

(assert (=> b!4059876 m!4662659))

(assert (=> b!4058272 d!1206653))

(declare-fun d!1206659 () Bool)

(declare-fun lt!1450016 () List!43497)

(assert (=> d!1206659 (= (++!11362 (t!336350 lt!1449249) lt!1450016) (tail!6303 lt!1449255))))

(declare-fun e!2519291 () List!43497)

(assert (=> d!1206659 (= lt!1450016 e!2519291)))

(declare-fun c!701197 () Bool)

(assert (=> d!1206659 (= c!701197 ((_ is Cons!43373) (t!336350 lt!1449249)))))

(assert (=> d!1206659 (>= (size!32428 (tail!6303 lt!1449255)) (size!32428 (t!336350 lt!1449249)))))

(assert (=> d!1206659 (= (getSuffix!2464 (tail!6303 lt!1449255) (t!336350 lt!1449249)) lt!1450016)))

(declare-fun b!4059884 () Bool)

(assert (=> b!4059884 (= e!2519291 (getSuffix!2464 (tail!6303 (tail!6303 lt!1449255)) (t!336350 (t!336350 lt!1449249))))))

(declare-fun b!4059885 () Bool)

(assert (=> b!4059885 (= e!2519291 (tail!6303 lt!1449255))))

(assert (= (and d!1206659 c!701197) b!4059884))

(assert (= (and d!1206659 (not c!701197)) b!4059885))

(declare-fun m!4665313 () Bool)

(assert (=> d!1206659 m!4665313))

(assert (=> d!1206659 m!4663165))

(assert (=> d!1206659 m!4664361))

(assert (=> d!1206659 m!4663619))

(assert (=> b!4059884 m!4663165))

(assert (=> b!4059884 m!4664353))

(assert (=> b!4059884 m!4664353))

(declare-fun m!4665315 () Bool)

(assert (=> b!4059884 m!4665315))

(assert (=> b!4058475 d!1206659))

(assert (=> b!4058475 d!1206195))

(declare-fun d!1206663 () Bool)

(declare-fun c!701199 () Bool)

(assert (=> d!1206663 (= c!701199 ((_ is Nil!43373) lt!1449440))))

(declare-fun e!2519293 () (InoxSet C!23916))

(assert (=> d!1206663 (= (content!6612 lt!1449440) e!2519293)))

(declare-fun b!4059888 () Bool)

(assert (=> b!4059888 (= e!2519293 ((as const (Array C!23916 Bool)) false))))

(declare-fun b!4059889 () Bool)

(assert (=> b!4059889 (= e!2519293 ((_ map or) (store ((as const (Array C!23916 Bool)) false) (h!48793 lt!1449440) true) (content!6612 (t!336350 lt!1449440))))))

(assert (= (and d!1206663 c!701199) b!4059888))

(assert (= (and d!1206663 (not c!701199)) b!4059889))

(declare-fun m!4665319 () Bool)

(assert (=> b!4059889 m!4665319))

(declare-fun m!4665321 () Bool)

(assert (=> b!4059889 m!4665321))

(assert (=> d!1205775 d!1206663))

(assert (=> d!1205775 d!1206267))

(declare-fun d!1206667 () Bool)

(declare-fun c!701200 () Bool)

(assert (=> d!1206667 (= c!701200 ((_ is Nil!43373) lt!1449225))))

(declare-fun e!2519294 () (InoxSet C!23916))

(assert (=> d!1206667 (= (content!6612 lt!1449225) e!2519294)))

(declare-fun b!4059890 () Bool)

(assert (=> b!4059890 (= e!2519294 ((as const (Array C!23916 Bool)) false))))

(declare-fun b!4059891 () Bool)

(assert (=> b!4059891 (= e!2519294 ((_ map or) (store ((as const (Array C!23916 Bool)) false) (h!48793 lt!1449225) true) (content!6612 (t!336350 lt!1449225))))))

(assert (= (and d!1206667 c!701200) b!4059890))

(assert (= (and d!1206667 (not c!701200)) b!4059891))

(declare-fun m!4665323 () Bool)

(assert (=> b!4059891 m!4665323))

(declare-fun m!4665325 () Bool)

(assert (=> b!4059891 m!4665325))

(assert (=> d!1205775 d!1206667))

(declare-fun d!1206669 () Bool)

(assert (=> d!1206669 (= (isEmpty!25885 (originalCharacters!7560 token!484)) ((_ is Nil!43373) (originalCharacters!7560 token!484)))))

(assert (=> d!1205979 d!1206669))

(declare-fun d!1206671 () Bool)

(declare-fun lt!1450018 () Int)

(assert (=> d!1206671 (>= lt!1450018 0)))

(declare-fun e!2519295 () Int)

(assert (=> d!1206671 (= lt!1450018 e!2519295)))

(declare-fun c!701201 () Bool)

(assert (=> d!1206671 (= c!701201 ((_ is Nil!43373) (_2!24351 (get!14226 lt!1449534))))))

(assert (=> d!1206671 (= (size!32428 (_2!24351 (get!14226 lt!1449534))) lt!1450018)))

(declare-fun b!4059892 () Bool)

(assert (=> b!4059892 (= e!2519295 0)))

(declare-fun b!4059893 () Bool)

(assert (=> b!4059893 (= e!2519295 (+ 1 (size!32428 (t!336350 (_2!24351 (get!14226 lt!1449534))))))))

(assert (= (and d!1206671 c!701201) b!4059892))

(assert (= (and d!1206671 (not c!701201)) b!4059893))

(declare-fun m!4665327 () Bool)

(assert (=> b!4059893 m!4665327))

(assert (=> b!4058715 d!1206671))

(assert (=> b!4058715 d!1206143))

(assert (=> b!4058715 d!1205989))

(declare-fun d!1206673 () Bool)

(assert (=> d!1206673 (= (_2!24351 (v!39791 lt!1449276)) newSuffixResult!27)))

(assert (=> d!1206673 true))

(declare-fun _$63!1151 () Unit!62757)

(assert (=> d!1206673 (= (choose!24657 lt!1449249 (_2!24351 (v!39791 lt!1449276)) lt!1449266 newSuffixResult!27 lt!1449255) _$63!1151)))

(assert (=> d!1205739 d!1206673))

(assert (=> d!1205739 d!1205935))

(declare-fun b!4059896 () Bool)

(declare-fun e!2519296 () Bool)

(assert (=> b!4059896 (= e!2519296 (isPrefix!4047 (tail!6303 (tail!6303 lt!1449249)) (tail!6303 (tail!6303 (++!11362 lt!1449249 newSuffixResult!27)))))))

(declare-fun b!4059894 () Bool)

(declare-fun e!2519298 () Bool)

(assert (=> b!4059894 (= e!2519298 e!2519296)))

(declare-fun res!1655892 () Bool)

(assert (=> b!4059894 (=> (not res!1655892) (not e!2519296))))

(assert (=> b!4059894 (= res!1655892 (not ((_ is Nil!43373) (tail!6303 (++!11362 lt!1449249 newSuffixResult!27)))))))

(declare-fun b!4059895 () Bool)

(declare-fun res!1655893 () Bool)

(assert (=> b!4059895 (=> (not res!1655893) (not e!2519296))))

(assert (=> b!4059895 (= res!1655893 (= (head!8571 (tail!6303 lt!1449249)) (head!8571 (tail!6303 (++!11362 lt!1449249 newSuffixResult!27)))))))

(declare-fun d!1206675 () Bool)

(declare-fun e!2519297 () Bool)

(assert (=> d!1206675 e!2519297))

(declare-fun res!1655894 () Bool)

(assert (=> d!1206675 (=> res!1655894 e!2519297)))

(declare-fun lt!1450019 () Bool)

(assert (=> d!1206675 (= res!1655894 (not lt!1450019))))

(assert (=> d!1206675 (= lt!1450019 e!2519298)))

(declare-fun res!1655895 () Bool)

(assert (=> d!1206675 (=> res!1655895 e!2519298)))

(assert (=> d!1206675 (= res!1655895 ((_ is Nil!43373) (tail!6303 lt!1449249)))))

(assert (=> d!1206675 (= (isPrefix!4047 (tail!6303 lt!1449249) (tail!6303 (++!11362 lt!1449249 newSuffixResult!27))) lt!1450019)))

(declare-fun b!4059897 () Bool)

(assert (=> b!4059897 (= e!2519297 (>= (size!32428 (tail!6303 (++!11362 lt!1449249 newSuffixResult!27))) (size!32428 (tail!6303 lt!1449249))))))

(assert (= (and d!1206675 (not res!1655895)) b!4059894))

(assert (= (and b!4059894 res!1655892) b!4059895))

(assert (= (and b!4059895 res!1655893) b!4059896))

(assert (= (and d!1206675 (not res!1655894)) b!4059897))

(assert (=> b!4059896 m!4663171))

(assert (=> b!4059896 m!4663819))

(assert (=> b!4059896 m!4663349))

(declare-fun m!4665329 () Bool)

(assert (=> b!4059896 m!4665329))

(assert (=> b!4059896 m!4663819))

(assert (=> b!4059896 m!4665329))

(declare-fun m!4665331 () Bool)

(assert (=> b!4059896 m!4665331))

(assert (=> b!4059895 m!4663171))

(assert (=> b!4059895 m!4663825))

(assert (=> b!4059895 m!4663349))

(declare-fun m!4665333 () Bool)

(assert (=> b!4059895 m!4665333))

(assert (=> b!4059897 m!4663349))

(declare-fun m!4665335 () Bool)

(assert (=> b!4059897 m!4665335))

(assert (=> b!4059897 m!4663171))

(assert (=> b!4059897 m!4664465))

(assert (=> b!4058586 d!1206675))

(assert (=> b!4058586 d!1206001))

(declare-fun d!1206677 () Bool)

(assert (=> d!1206677 (= (tail!6303 (++!11362 lt!1449249 newSuffixResult!27)) (t!336350 (++!11362 lt!1449249 newSuffixResult!27)))))

(assert (=> b!4058586 d!1206677))

(declare-fun d!1206679 () Bool)

(declare-fun lt!1450020 () Int)

(assert (=> d!1206679 (>= lt!1450020 0)))

(declare-fun e!2519299 () Int)

(assert (=> d!1206679 (= lt!1450020 e!2519299)))

(declare-fun c!701202 () Bool)

(assert (=> d!1206679 (= c!701202 ((_ is Nil!43373) lt!1449259))))

(assert (=> d!1206679 (= (size!32428 lt!1449259) lt!1450020)))

(declare-fun b!4059898 () Bool)

(assert (=> b!4059898 (= e!2519299 0)))

(declare-fun b!4059899 () Bool)

(assert (=> b!4059899 (= e!2519299 (+ 1 (size!32428 (t!336350 lt!1449259))))))

(assert (= (and d!1206679 c!701202) b!4059898))

(assert (= (and d!1206679 (not c!701202)) b!4059899))

(declare-fun m!4665337 () Bool)

(assert (=> b!4059899 m!4665337))

(assert (=> b!4058480 d!1206679))

(assert (=> b!4058480 d!1205907))

(declare-fun b!4059902 () Bool)

(declare-fun res!1655896 () Bool)

(declare-fun e!2519300 () Bool)

(assert (=> b!4059902 (=> (not res!1655896) (not e!2519300))))

(declare-fun lt!1450021 () List!43497)

(assert (=> b!4059902 (= res!1655896 (= (size!32428 lt!1450021) (+ (size!32428 (t!336350 lt!1449266)) (size!32428 lt!1449232))))))

(declare-fun b!4059900 () Bool)

(declare-fun e!2519301 () List!43497)

(assert (=> b!4059900 (= e!2519301 lt!1449232)))

(declare-fun b!4059901 () Bool)

(assert (=> b!4059901 (= e!2519301 (Cons!43373 (h!48793 (t!336350 lt!1449266)) (++!11362 (t!336350 (t!336350 lt!1449266)) lt!1449232)))))

(declare-fun d!1206681 () Bool)

(assert (=> d!1206681 e!2519300))

(declare-fun res!1655897 () Bool)

(assert (=> d!1206681 (=> (not res!1655897) (not e!2519300))))

(assert (=> d!1206681 (= res!1655897 (= (content!6612 lt!1450021) ((_ map or) (content!6612 (t!336350 lt!1449266)) (content!6612 lt!1449232))))))

(assert (=> d!1206681 (= lt!1450021 e!2519301)))

(declare-fun c!701203 () Bool)

(assert (=> d!1206681 (= c!701203 ((_ is Nil!43373) (t!336350 lt!1449266)))))

(assert (=> d!1206681 (= (++!11362 (t!336350 lt!1449266) lt!1449232) lt!1450021)))

(declare-fun b!4059903 () Bool)

(assert (=> b!4059903 (= e!2519300 (or (not (= lt!1449232 Nil!43373)) (= lt!1450021 (t!336350 lt!1449266))))))

(assert (= (and d!1206681 c!701203) b!4059900))

(assert (= (and d!1206681 (not c!701203)) b!4059901))

(assert (= (and d!1206681 res!1655897) b!4059902))

(assert (= (and b!4059902 res!1655896) b!4059903))

(declare-fun m!4665339 () Bool)

(assert (=> b!4059902 m!4665339))

(assert (=> b!4059902 m!4662933))

(assert (=> b!4059902 m!4663683))

(declare-fun m!4665341 () Bool)

(assert (=> b!4059901 m!4665341))

(declare-fun m!4665343 () Bool)

(assert (=> d!1206681 m!4665343))

(assert (=> d!1206681 m!4663863))

(assert (=> d!1206681 m!4663689))

(assert (=> b!4058801 d!1206681))

(declare-fun d!1206683 () Bool)

(declare-fun c!701204 () Bool)

(assert (=> d!1206683 (= c!701204 ((_ is Nil!43373) lt!1449285))))

(declare-fun e!2519304 () (InoxSet C!23916))

(assert (=> d!1206683 (= (content!6612 lt!1449285) e!2519304)))

(declare-fun b!4059906 () Bool)

(assert (=> b!4059906 (= e!2519304 ((as const (Array C!23916 Bool)) false))))

(declare-fun b!4059907 () Bool)

(assert (=> b!4059907 (= e!2519304 ((_ map or) (store ((as const (Array C!23916 Bool)) false) (h!48793 lt!1449285) true) (content!6612 (t!336350 lt!1449285))))))

(assert (= (and d!1206683 c!701204) b!4059906))

(assert (= (and d!1206683 (not c!701204)) b!4059907))

(declare-fun m!4665345 () Bool)

(assert (=> b!4059907 m!4665345))

(declare-fun m!4665347 () Bool)

(assert (=> b!4059907 m!4665347))

(assert (=> d!1205601 d!1206683))

(assert (=> d!1205601 d!1206009))

(assert (=> d!1205601 d!1206243))

(assert (=> d!1205933 d!1205931))

(declare-fun d!1206685 () Bool)

(assert (=> d!1206685 (isPrefix!4047 lt!1449266 prefix!494)))

(assert (=> d!1206685 true))

(declare-fun _$69!313 () Unit!62757)

(assert (=> d!1206685 (= (choose!24671 prefix!494 lt!1449266 lt!1449231) _$69!313)))

(declare-fun bs!592031 () Bool)

(assert (= bs!592031 d!1206685))

(assert (=> bs!592031 m!4662431))

(assert (=> d!1205933 d!1206685))

(assert (=> d!1205933 d!1205613))

(declare-fun d!1206687 () Bool)

(declare-fun charsToBigInt!0 (List!43498 Int) Int)

(assert (=> d!1206687 (= (inv!15 (value!218994 token!484)) (= (charsToBigInt!0 (text!50779 (value!218994 token!484)) 0) (value!218990 (value!218994 token!484))))))

(declare-fun bs!592033 () Bool)

(assert (= bs!592033 d!1206687))

(declare-fun m!4665351 () Bool)

(assert (=> bs!592033 m!4665351))

(assert (=> b!4058798 d!1206687))

(declare-fun d!1206691 () Bool)

(declare-fun e!2519309 () Bool)

(assert (=> d!1206691 e!2519309))

(declare-fun res!1655900 () Bool)

(assert (=> d!1206691 (=> res!1655900 e!2519309)))

(assert (=> d!1206691 (= res!1655900 (isEmpty!25885 (_1!24352 (findLongestMatchInner!1404 (regex!6960 (rule!10050 token!484)) Nil!43373 (size!32428 Nil!43373) lt!1449231 lt!1449231 (size!32428 lt!1449231)))))))

(declare-fun lt!1450022 () Unit!62757)

(assert (=> d!1206691 (= lt!1450022 (choose!24675 (regex!6960 (rule!10050 token!484)) lt!1449231))))

(assert (=> d!1206691 (validRegex!5368 (regex!6960 (rule!10050 token!484)))))

(assert (=> d!1206691 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1377 (regex!6960 (rule!10050 token!484)) lt!1449231) lt!1450022)))

(declare-fun b!4059918 () Bool)

(assert (=> b!4059918 (= e!2519309 (matchR!5818 (regex!6960 (rule!10050 token!484)) (_1!24352 (findLongestMatchInner!1404 (regex!6960 (rule!10050 token!484)) Nil!43373 (size!32428 Nil!43373) lt!1449231 lt!1449231 (size!32428 lt!1449231)))))))

(assert (= (and d!1206691 (not res!1655900)) b!4059918))

(assert (=> d!1206691 m!4662659))

(declare-fun m!4665353 () Bool)

(assert (=> d!1206691 m!4665353))

(assert (=> d!1206691 m!4663593))

(assert (=> d!1206691 m!4662659))

(assert (=> d!1206691 m!4663749))

(assert (=> d!1206691 m!4663145))

(assert (=> d!1206691 m!4663757))

(assert (=> d!1206691 m!4663593))

(assert (=> b!4059918 m!4663593))

(assert (=> b!4059918 m!4662659))

(assert (=> b!4059918 m!4663593))

(assert (=> b!4059918 m!4662659))

(assert (=> b!4059918 m!4663749))

(assert (=> b!4059918 m!4663751))

(assert (=> b!4058820 d!1206691))

(assert (=> b!4058820 d!1206023))

(declare-fun d!1206693 () Bool)

(assert (=> d!1206693 (= (apply!10149 (transformation!6960 (rule!10050 token!484)) (seqFromList!5177 (_1!24352 lt!1449564))) (dynLambda!18426 (toValue!9516 (transformation!6960 (rule!10050 token!484))) (seqFromList!5177 (_1!24352 lt!1449564))))))

(declare-fun b_lambda!118629 () Bool)

(assert (=> (not b_lambda!118629) (not d!1206693)))

(declare-fun tb!244201 () Bool)

(declare-fun t!336478 () Bool)

(assert (=> (and b!4058071 (= (toValue!9516 (transformation!6960 (h!48795 rules!2999))) (toValue!9516 (transformation!6960 (rule!10050 token!484)))) t!336478) tb!244201))

(declare-fun result!295914 () Bool)

(assert (=> tb!244201 (= result!295914 (inv!21 (dynLambda!18426 (toValue!9516 (transformation!6960 (rule!10050 token!484))) (seqFromList!5177 (_1!24352 lt!1449564)))))))

(declare-fun m!4665355 () Bool)

(assert (=> tb!244201 m!4665355))

(assert (=> d!1206693 t!336478))

(declare-fun b_and!312137 () Bool)

(assert (= b_and!312125 (and (=> t!336478 result!295914) b_and!312137)))

(declare-fun t!336480 () Bool)

(declare-fun tb!244203 () Bool)

(assert (=> (and b!4058069 (= (toValue!9516 (transformation!6960 (rule!10050 token!484))) (toValue!9516 (transformation!6960 (rule!10050 token!484)))) t!336480) tb!244203))

(declare-fun result!295916 () Bool)

(assert (= result!295916 result!295914))

(assert (=> d!1206693 t!336480))

(declare-fun b_and!312139 () Bool)

(assert (= b_and!312127 (and (=> t!336480 result!295916) b_and!312139)))

(declare-fun t!336482 () Bool)

(declare-fun tb!244205 () Bool)

(assert (=> (and b!4058893 (= (toValue!9516 (transformation!6960 (h!48795 (t!336352 rules!2999)))) (toValue!9516 (transformation!6960 (rule!10050 token!484)))) t!336482) tb!244205))

(declare-fun result!295918 () Bool)

(assert (= result!295918 result!295914))

(assert (=> d!1206693 t!336482))

(declare-fun b_and!312141 () Bool)

(assert (= b_and!312129 (and (=> t!336482 result!295918) b_and!312141)))

(assert (=> d!1206693 m!4663759))

(declare-fun m!4665357 () Bool)

(assert (=> d!1206693 m!4665357))

(assert (=> b!4058820 d!1206693))

(declare-fun d!1206695 () Bool)

(declare-fun lt!1450023 () Int)

(assert (=> d!1206695 (= lt!1450023 (size!32428 (list!16164 (seqFromList!5177 (_1!24352 lt!1449564)))))))

(assert (=> d!1206695 (= lt!1450023 (size!32431 (c!700780 (seqFromList!5177 (_1!24352 lt!1449564)))))))

(assert (=> d!1206695 (= (size!32429 (seqFromList!5177 (_1!24352 lt!1449564))) lt!1450023)))

(declare-fun bs!592034 () Bool)

(assert (= bs!592034 d!1206695))

(assert (=> bs!592034 m!4663759))

(declare-fun m!4665367 () Bool)

(assert (=> bs!592034 m!4665367))

(assert (=> bs!592034 m!4665367))

(declare-fun m!4665369 () Bool)

(assert (=> bs!592034 m!4665369))

(declare-fun m!4665371 () Bool)

(assert (=> bs!592034 m!4665371))

(assert (=> b!4058820 d!1206695))

(assert (=> b!4058820 d!1206109))

(declare-fun d!1206699 () Bool)

(assert (=> d!1206699 (= (isEmpty!25885 (_1!24352 (findLongestMatchInner!1404 (regex!6960 (rule!10050 token!484)) Nil!43373 (size!32428 Nil!43373) lt!1449231 lt!1449231 (size!32428 lt!1449231)))) ((_ is Nil!43373) (_1!24352 (findLongestMatchInner!1404 (regex!6960 (rule!10050 token!484)) Nil!43373 (size!32428 Nil!43373) lt!1449231 lt!1449231 (size!32428 lt!1449231)))))))

(assert (=> b!4058820 d!1206699))

(declare-fun bs!592035 () Bool)

(declare-fun d!1206703 () Bool)

(assert (= bs!592035 (and d!1206703 d!1206135)))

(declare-fun lambda!127564 () Int)

(assert (=> bs!592035 (= lambda!127564 lambda!127548)))

(declare-fun bs!592036 () Bool)

(assert (= bs!592036 (and d!1206703 d!1206189)))

(assert (=> bs!592036 (= (and (= (toChars!9375 (transformation!6960 (rule!10050 token!484))) (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))) (= (toValue!9516 (transformation!6960 (rule!10050 token!484))) (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))) (= lambda!127564 lambda!127554))))

(declare-fun bs!592037 () Bool)

(assert (= bs!592037 (and d!1206703 d!1206483)))

(assert (=> bs!592037 (= (and (= (toChars!9375 (transformation!6960 (rule!10050 token!484))) (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))) (= (toValue!9516 (transformation!6960 (rule!10050 token!484))) (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))) (= lambda!127564 lambda!127560))))

(declare-fun b!4059929 () Bool)

(declare-fun e!2519316 () Bool)

(assert (=> b!4059929 (= e!2519316 true)))

(assert (=> d!1206703 e!2519316))

(assert (= d!1206703 b!4059929))

(assert (=> b!4059929 (< (dynLambda!18427 order!22703 (toValue!9516 (transformation!6960 (rule!10050 token!484)))) (dynLambda!18430 order!22709 lambda!127564))))

(assert (=> b!4059929 (< (dynLambda!18429 order!22707 (toChars!9375 (transformation!6960 (rule!10050 token!484)))) (dynLambda!18430 order!22709 lambda!127564))))

(assert (=> d!1206703 (= (list!16164 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 token!484))) (dynLambda!18426 (toValue!9516 (transformation!6960 (rule!10050 token!484))) (seqFromList!5177 (_1!24352 lt!1449564))))) (list!16164 (seqFromList!5177 (_1!24352 lt!1449564))))))

(declare-fun lt!1450026 () Unit!62757)

(assert (=> d!1206703 (= lt!1450026 (ForallOf!832 lambda!127564 (seqFromList!5177 (_1!24352 lt!1449564))))))

(assert (=> d!1206703 (= (lemmaSemiInverse!1932 (transformation!6960 (rule!10050 token!484)) (seqFromList!5177 (_1!24352 lt!1449564))) lt!1450026)))

(declare-fun b_lambda!118631 () Bool)

(assert (=> (not b_lambda!118631) (not d!1206703)))

(declare-fun t!336484 () Bool)

(declare-fun tb!244207 () Bool)

(assert (=> (and b!4058071 (= (toChars!9375 (transformation!6960 (h!48795 rules!2999))) (toChars!9375 (transformation!6960 (rule!10050 token!484)))) t!336484) tb!244207))

(declare-fun tp!1229835 () Bool)

(declare-fun b!4059944 () Bool)

(declare-fun e!2519325 () Bool)

(assert (=> b!4059944 (= e!2519325 (and (inv!57985 (c!700780 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 token!484))) (dynLambda!18426 (toValue!9516 (transformation!6960 (rule!10050 token!484))) (seqFromList!5177 (_1!24352 lt!1449564)))))) tp!1229835))))

(declare-fun result!295920 () Bool)

(assert (=> tb!244207 (= result!295920 (and (inv!57986 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 token!484))) (dynLambda!18426 (toValue!9516 (transformation!6960 (rule!10050 token!484))) (seqFromList!5177 (_1!24352 lt!1449564))))) e!2519325))))

(assert (= tb!244207 b!4059944))

(declare-fun m!4665379 () Bool)

(assert (=> b!4059944 m!4665379))

(declare-fun m!4665381 () Bool)

(assert (=> tb!244207 m!4665381))

(assert (=> d!1206703 t!336484))

(declare-fun b_and!312143 () Bool)

(assert (= b_and!312101 (and (=> t!336484 result!295920) b_and!312143)))

(declare-fun t!336486 () Bool)

(declare-fun tb!244209 () Bool)

(assert (=> (and b!4058069 (= (toChars!9375 (transformation!6960 (rule!10050 token!484))) (toChars!9375 (transformation!6960 (rule!10050 token!484)))) t!336486) tb!244209))

(declare-fun result!295922 () Bool)

(assert (= result!295922 result!295920))

(assert (=> d!1206703 t!336486))

(declare-fun b_and!312145 () Bool)

(assert (= b_and!312103 (and (=> t!336486 result!295922) b_and!312145)))

(declare-fun tb!244211 () Bool)

(declare-fun t!336488 () Bool)

(assert (=> (and b!4058893 (= (toChars!9375 (transformation!6960 (h!48795 (t!336352 rules!2999)))) (toChars!9375 (transformation!6960 (rule!10050 token!484)))) t!336488) tb!244211))

(declare-fun result!295924 () Bool)

(assert (= result!295924 result!295920))

(assert (=> d!1206703 t!336488))

(declare-fun b_and!312147 () Bool)

(assert (= b_and!312105 (and (=> t!336488 result!295924) b_and!312147)))

(declare-fun b_lambda!118633 () Bool)

(assert (=> (not b_lambda!118633) (not d!1206703)))

(assert (=> d!1206703 t!336478))

(declare-fun b_and!312149 () Bool)

(assert (= b_and!312137 (and (=> t!336478 result!295914) b_and!312149)))

(assert (=> d!1206703 t!336480))

(declare-fun b_and!312151 () Bool)

(assert (= b_and!312139 (and (=> t!336480 result!295916) b_and!312151)))

(assert (=> d!1206703 t!336482))

(declare-fun b_and!312153 () Bool)

(assert (= b_and!312141 (and (=> t!336482 result!295918) b_and!312153)))

(assert (=> d!1206703 m!4663759))

(declare-fun m!4665383 () Bool)

(assert (=> d!1206703 m!4665383))

(assert (=> d!1206703 m!4663759))

(assert (=> d!1206703 m!4665357))

(assert (=> d!1206703 m!4665357))

(declare-fun m!4665385 () Bool)

(assert (=> d!1206703 m!4665385))

(assert (=> d!1206703 m!4663759))

(assert (=> d!1206703 m!4665367))

(assert (=> d!1206703 m!4665385))

(declare-fun m!4665387 () Bool)

(assert (=> d!1206703 m!4665387))

(assert (=> b!4058820 d!1206703))

(assert (=> b!4058820 d!1206103))

(declare-fun d!1206709 () Bool)

(assert (=> d!1206709 (= (seqFromList!5177 (_1!24352 lt!1449564)) (fromListB!2362 (_1!24352 lt!1449564)))))

(declare-fun bs!592038 () Bool)

(assert (= bs!592038 d!1206709))

(declare-fun m!4665389 () Bool)

(assert (=> bs!592038 m!4665389))

(assert (=> b!4058820 d!1206709))

(assert (=> b!4058315 d!1206055))

(assert (=> b!4058315 d!1206057))

(assert (=> b!4058315 d!1206059))

(declare-fun d!1206711 () Bool)

(declare-fun lt!1450056 () Int)

(assert (=> d!1206711 (>= lt!1450056 0)))

(declare-fun e!2519326 () Int)

(assert (=> d!1206711 (= lt!1450056 e!2519326)))

(declare-fun c!701220 () Bool)

(assert (=> d!1206711 (= c!701220 ((_ is Nil!43373) lt!1449286))))

(assert (=> d!1206711 (= (size!32428 lt!1449286) lt!1450056)))

(declare-fun b!4059945 () Bool)

(assert (=> b!4059945 (= e!2519326 0)))

(declare-fun b!4059946 () Bool)

(assert (=> b!4059946 (= e!2519326 (+ 1 (size!32428 (t!336350 lt!1449286))))))

(assert (= (and d!1206711 c!701220) b!4059945))

(assert (= (and d!1206711 (not c!701220)) b!4059946))

(declare-fun m!4665391 () Bool)

(assert (=> b!4059946 m!4665391))

(assert (=> b!4058099 d!1206711))

(assert (=> b!4058099 d!1205685))

(assert (=> b!4058099 d!1206387))

(assert (=> bm!288062 d!1206003))

(assert (=> d!1205599 d!1205821))

(declare-fun d!1206713 () Bool)

(assert (=> d!1206713 (not (matchR!5818 (regex!6960 (rule!10050 token!484)) lt!1449266))))

(assert (=> d!1206713 true))

(declare-fun _$57!133 () Unit!62757)

(assert (=> d!1206713 (= (choose!24654 thiss!21717 rules!2999 (rule!10050 (_1!24351 (v!39791 lt!1449276))) lt!1449249 lt!1449255 lt!1449266 (rule!10050 token!484)) _$57!133)))

(declare-fun bs!592039 () Bool)

(assert (= bs!592039 d!1206713))

(assert (=> bs!592039 m!4662611))

(assert (=> d!1205599 d!1206713))

(assert (=> d!1205599 d!1205935))

(declare-fun d!1206715 () Bool)

(declare-fun lt!1450057 () Int)

(assert (=> d!1206715 (>= lt!1450057 0)))

(declare-fun e!2519327 () Int)

(assert (=> d!1206715 (= lt!1450057 e!2519327)))

(declare-fun c!701221 () Bool)

(assert (=> d!1206715 (= c!701221 ((_ is Nil!43373) lt!1449449))))

(assert (=> d!1206715 (= (size!32428 lt!1449449) lt!1450057)))

(declare-fun b!4059947 () Bool)

(assert (=> b!4059947 (= e!2519327 0)))

(declare-fun b!4059948 () Bool)

(assert (=> b!4059948 (= e!2519327 (+ 1 (size!32428 (t!336350 lt!1449449))))))

(assert (= (and d!1206715 c!701221) b!4059947))

(assert (= (and d!1206715 (not c!701221)) b!4059948))

(declare-fun m!4665413 () Bool)

(assert (=> b!4059948 m!4665413))

(assert (=> b!4058491 d!1206715))

(assert (=> b!4058491 d!1206199))

(assert (=> b!4058491 d!1205971))

(declare-fun b!4059951 () Bool)

(declare-fun e!2519328 () Bool)

(assert (=> b!4059951 (= e!2519328 (isPrefix!4047 (tail!6303 (tail!6303 lt!1449249)) (tail!6303 (tail!6303 lt!1449274))))))

(declare-fun b!4059949 () Bool)

(declare-fun e!2519330 () Bool)

(assert (=> b!4059949 (= e!2519330 e!2519328)))

(declare-fun res!1655903 () Bool)

(assert (=> b!4059949 (=> (not res!1655903) (not e!2519328))))

(assert (=> b!4059949 (= res!1655903 (not ((_ is Nil!43373) (tail!6303 lt!1449274))))))

(declare-fun b!4059950 () Bool)

(declare-fun res!1655904 () Bool)

(assert (=> b!4059950 (=> (not res!1655904) (not e!2519328))))

(assert (=> b!4059950 (= res!1655904 (= (head!8571 (tail!6303 lt!1449249)) (head!8571 (tail!6303 lt!1449274))))))

(declare-fun d!1206717 () Bool)

(declare-fun e!2519329 () Bool)

(assert (=> d!1206717 e!2519329))

(declare-fun res!1655905 () Bool)

(assert (=> d!1206717 (=> res!1655905 e!2519329)))

(declare-fun lt!1450058 () Bool)

(assert (=> d!1206717 (= res!1655905 (not lt!1450058))))

(assert (=> d!1206717 (= lt!1450058 e!2519330)))

(declare-fun res!1655906 () Bool)

(assert (=> d!1206717 (=> res!1655906 e!2519330)))

(assert (=> d!1206717 (= res!1655906 ((_ is Nil!43373) (tail!6303 lt!1449249)))))

(assert (=> d!1206717 (= (isPrefix!4047 (tail!6303 lt!1449249) (tail!6303 lt!1449274)) lt!1450058)))

(declare-fun b!4059952 () Bool)

(assert (=> b!4059952 (= e!2519329 (>= (size!32428 (tail!6303 lt!1449274)) (size!32428 (tail!6303 lt!1449249))))))

(assert (= (and d!1206717 (not res!1655906)) b!4059949))

(assert (= (and b!4059949 res!1655903) b!4059950))

(assert (= (and b!4059950 res!1655904) b!4059951))

(assert (= (and d!1206717 (not res!1655905)) b!4059952))

(assert (=> b!4059951 m!4663171))

(assert (=> b!4059951 m!4663819))

(assert (=> b!4059951 m!4663335))

(declare-fun m!4665439 () Bool)

(assert (=> b!4059951 m!4665439))

(assert (=> b!4059951 m!4663819))

(assert (=> b!4059951 m!4665439))

(declare-fun m!4665441 () Bool)

(assert (=> b!4059951 m!4665441))

(assert (=> b!4059950 m!4663171))

(assert (=> b!4059950 m!4663825))

(assert (=> b!4059950 m!4663335))

(declare-fun m!4665443 () Bool)

(assert (=> b!4059950 m!4665443))

(assert (=> b!4059952 m!4663335))

(declare-fun m!4665445 () Bool)

(assert (=> b!4059952 m!4665445))

(assert (=> b!4059952 m!4663171))

(assert (=> b!4059952 m!4664465))

(assert (=> b!4058582 d!1206717))

(assert (=> b!4058582 d!1206001))

(declare-fun d!1206721 () Bool)

(assert (=> d!1206721 (= (tail!6303 lt!1449274) (t!336350 lt!1449274))))

(assert (=> b!4058582 d!1206721))

(assert (=> d!1205915 d!1205829))

(declare-fun d!1206723 () Bool)

(assert (=> d!1206723 (ruleValid!2890 thiss!21717 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))

(assert (=> d!1206723 true))

(declare-fun _$65!1539 () Unit!62757)

(assert (=> d!1206723 (= (choose!24663 thiss!21717 (rule!10050 (_1!24351 (v!39791 lt!1449276))) rules!2999) _$65!1539)))

(declare-fun bs!592040 () Bool)

(assert (= bs!592040 d!1206723))

(assert (=> bs!592040 m!4662579))

(assert (=> d!1205915 d!1206723))

(assert (=> d!1205915 d!1206297))

(declare-fun d!1206725 () Bool)

(assert (=> d!1206725 (= (inv!57986 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (value!218994 (_1!24351 (v!39791 lt!1449276))))) (isBalanced!3688 (c!700780 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (value!218994 (_1!24351 (v!39791 lt!1449276)))))))))

(declare-fun bs!592041 () Bool)

(assert (= bs!592041 d!1206725))

(declare-fun m!4665447 () Bool)

(assert (=> bs!592041 m!4665447))

(assert (=> tb!244093 d!1206725))

(assert (=> b!4058829 d!1206083))

(declare-fun d!1206727 () Bool)

(assert (=> d!1206727 (= (head!8571 lt!1449246) (h!48793 lt!1449246))))

(assert (=> b!4058829 d!1206727))

(declare-fun b!4059955 () Bool)

(declare-fun e!2519331 () Bool)

(assert (=> b!4059955 (= e!2519331 (isPrefix!4047 (tail!6303 lt!1449266) (tail!6303 (++!11362 lt!1449266 lt!1449267))))))

(declare-fun b!4059953 () Bool)

(declare-fun e!2519333 () Bool)

(assert (=> b!4059953 (= e!2519333 e!2519331)))

(declare-fun res!1655907 () Bool)

(assert (=> b!4059953 (=> (not res!1655907) (not e!2519331))))

(assert (=> b!4059953 (= res!1655907 (not ((_ is Nil!43373) (++!11362 lt!1449266 lt!1449267))))))

(declare-fun b!4059954 () Bool)

(declare-fun res!1655908 () Bool)

(assert (=> b!4059954 (=> (not res!1655908) (not e!2519331))))

(assert (=> b!4059954 (= res!1655908 (= (head!8571 lt!1449266) (head!8571 (++!11362 lt!1449266 lt!1449267))))))

(declare-fun d!1206729 () Bool)

(declare-fun e!2519332 () Bool)

(assert (=> d!1206729 e!2519332))

(declare-fun res!1655909 () Bool)

(assert (=> d!1206729 (=> res!1655909 e!2519332)))

(declare-fun lt!1450059 () Bool)

(assert (=> d!1206729 (= res!1655909 (not lt!1450059))))

(assert (=> d!1206729 (= lt!1450059 e!2519333)))

(declare-fun res!1655910 () Bool)

(assert (=> d!1206729 (=> res!1655910 e!2519333)))

(assert (=> d!1206729 (= res!1655910 ((_ is Nil!43373) lt!1449266))))

(assert (=> d!1206729 (= (isPrefix!4047 lt!1449266 (++!11362 lt!1449266 lt!1449267)) lt!1450059)))

(declare-fun b!4059956 () Bool)

(assert (=> b!4059956 (= e!2519332 (>= (size!32428 (++!11362 lt!1449266 lt!1449267)) (size!32428 lt!1449266)))))

(assert (= (and d!1206729 (not res!1655910)) b!4059953))

(assert (= (and b!4059953 res!1655907) b!4059954))

(assert (= (and b!4059954 res!1655908) b!4059955))

(assert (= (and d!1206729 (not res!1655909)) b!4059956))

(assert (=> b!4059955 m!4662649))

(assert (=> b!4059955 m!4662461))

(declare-fun m!4665449 () Bool)

(assert (=> b!4059955 m!4665449))

(assert (=> b!4059955 m!4662649))

(assert (=> b!4059955 m!4665449))

(declare-fun m!4665451 () Bool)

(assert (=> b!4059955 m!4665451))

(assert (=> b!4059954 m!4662655))

(assert (=> b!4059954 m!4662461))

(declare-fun m!4665453 () Bool)

(assert (=> b!4059954 m!4665453))

(assert (=> b!4059956 m!4662461))

(declare-fun m!4665455 () Bool)

(assert (=> b!4059956 m!4665455))

(assert (=> b!4059956 m!4662529))

(assert (=> d!1205961 d!1206729))

(assert (=> d!1205961 d!1205785))

(declare-fun d!1206731 () Bool)

(assert (=> d!1206731 (isPrefix!4047 lt!1449266 (++!11362 lt!1449266 lt!1449267))))

(assert (=> d!1206731 true))

(declare-fun _$46!1831 () Unit!62757)

(assert (=> d!1206731 (= (choose!24655 lt!1449266 lt!1449267) _$46!1831)))

(declare-fun bs!592042 () Bool)

(assert (= bs!592042 d!1206731))

(assert (=> bs!592042 m!4662461))

(assert (=> bs!592042 m!4662461))

(assert (=> bs!592042 m!4663717))

(assert (=> d!1205961 d!1206731))

(assert (=> d!1205833 d!1205843))

(assert (=> d!1205833 d!1205845))

(declare-fun d!1206733 () Bool)

(assert (=> d!1206733 (isPrefix!4047 lt!1449249 (++!11362 lt!1449249 newSuffixResult!27))))

(assert (=> d!1206733 true))

(declare-fun _$46!1832 () Unit!62757)

(assert (=> d!1206733 (= (choose!24655 lt!1449249 newSuffixResult!27) _$46!1832)))

(declare-fun bs!592043 () Bool)

(assert (= bs!592043 d!1206733))

(assert (=> bs!592043 m!4662563))

(assert (=> bs!592043 m!4662563))

(assert (=> bs!592043 m!4662581))

(assert (=> d!1205833 d!1206733))

(declare-fun d!1206735 () Bool)

(declare-fun lt!1450063 () Int)

(assert (=> d!1206735 (>= lt!1450063 0)))

(declare-fun e!2519334 () Int)

(assert (=> d!1206735 (= lt!1450063 e!2519334)))

(declare-fun c!701222 () Bool)

(assert (=> d!1206735 (= c!701222 ((_ is Nil!43373) (t!336350 suffix!1299)))))

(assert (=> d!1206735 (= (size!32428 (t!336350 suffix!1299)) lt!1450063)))

(declare-fun b!4059957 () Bool)

(assert (=> b!4059957 (= e!2519334 0)))

(declare-fun b!4059958 () Bool)

(assert (=> b!4059958 (= e!2519334 (+ 1 (size!32428 (t!336350 (t!336350 suffix!1299)))))))

(assert (= (and d!1206735 c!701222) b!4059957))

(assert (= (and d!1206735 (not c!701222)) b!4059958))

(declare-fun m!4665461 () Bool)

(assert (=> b!4059958 m!4665461))

(assert (=> b!4058833 d!1206735))

(assert (=> b!4058585 d!1205999))

(declare-fun d!1206737 () Bool)

(assert (=> d!1206737 (= (head!8571 (++!11362 lt!1449249 newSuffixResult!27)) (h!48793 (++!11362 lt!1449249 newSuffixResult!27)))))

(assert (=> b!4058585 d!1206737))

(declare-fun bs!592045 () Bool)

(declare-fun d!1206741 () Bool)

(assert (= bs!592045 (and d!1206741 d!1206135)))

(declare-fun lambda!127565 () Int)

(assert (=> bs!592045 (= (and (= (toChars!9375 (transformation!6960 (h!48795 rules!2999))) (toChars!9375 (transformation!6960 (rule!10050 token!484)))) (= (toValue!9516 (transformation!6960 (h!48795 rules!2999))) (toValue!9516 (transformation!6960 (rule!10050 token!484))))) (= lambda!127565 lambda!127548))))

(declare-fun bs!592046 () Bool)

(assert (= bs!592046 (and d!1206741 d!1206189)))

(assert (=> bs!592046 (= (and (= (toChars!9375 (transformation!6960 (h!48795 rules!2999))) (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))) (= (toValue!9516 (transformation!6960 (h!48795 rules!2999))) (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))) (= lambda!127565 lambda!127554))))

(declare-fun bs!592047 () Bool)

(assert (= bs!592047 (and d!1206741 d!1206483)))

(assert (=> bs!592047 (= (and (= (toChars!9375 (transformation!6960 (h!48795 rules!2999))) (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))) (= (toValue!9516 (transformation!6960 (h!48795 rules!2999))) (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))) (= lambda!127565 lambda!127560))))

(declare-fun bs!592048 () Bool)

(assert (= bs!592048 (and d!1206741 d!1206703)))

(assert (=> bs!592048 (= (and (= (toChars!9375 (transformation!6960 (h!48795 rules!2999))) (toChars!9375 (transformation!6960 (rule!10050 token!484)))) (= (toValue!9516 (transformation!6960 (h!48795 rules!2999))) (toValue!9516 (transformation!6960 (rule!10050 token!484))))) (= lambda!127565 lambda!127564))))

(assert (=> d!1206741 true))

(assert (=> d!1206741 (< (dynLambda!18429 order!22707 (toChars!9375 (transformation!6960 (h!48795 rules!2999)))) (dynLambda!18430 order!22709 lambda!127565))))

(assert (=> d!1206741 true))

(assert (=> d!1206741 (< (dynLambda!18427 order!22703 (toValue!9516 (transformation!6960 (h!48795 rules!2999)))) (dynLambda!18430 order!22709 lambda!127565))))

(assert (=> d!1206741 (= (semiInverseModEq!2976 (toChars!9375 (transformation!6960 (h!48795 rules!2999))) (toValue!9516 (transformation!6960 (h!48795 rules!2999)))) (Forall!1498 lambda!127565))))

(declare-fun bs!592049 () Bool)

(assert (= bs!592049 d!1206741))

(declare-fun m!4665465 () Bool)

(assert (=> bs!592049 m!4665465))

(assert (=> d!1205921 d!1206741))

(declare-fun b!4059962 () Bool)

(declare-fun e!2519335 () Bool)

(declare-fun tp!1229840 () Bool)

(declare-fun tp!1229837 () Bool)

(assert (=> b!4059962 (= e!2519335 (and tp!1229840 tp!1229837))))

(declare-fun b!4059959 () Bool)

(assert (=> b!4059959 (= e!2519335 tp_is_empty!20701)))

(declare-fun b!4059960 () Bool)

(declare-fun tp!1229839 () Bool)

(declare-fun tp!1229836 () Bool)

(assert (=> b!4059960 (= e!2519335 (and tp!1229839 tp!1229836))))

(declare-fun b!4059961 () Bool)

(declare-fun tp!1229838 () Bool)

(assert (=> b!4059961 (= e!2519335 tp!1229838)))

(assert (=> b!4058902 (= tp!1229828 e!2519335)))

(assert (= (and b!4058902 ((_ is ElementMatch!11865) (regOne!24243 (regex!6960 (rule!10050 token!484))))) b!4059959))

(assert (= (and b!4058902 ((_ is Concat!19056) (regOne!24243 (regex!6960 (rule!10050 token!484))))) b!4059960))

(assert (= (and b!4058902 ((_ is Star!11865) (regOne!24243 (regex!6960 (rule!10050 token!484))))) b!4059961))

(assert (= (and b!4058902 ((_ is Union!11865) (regOne!24243 (regex!6960 (rule!10050 token!484))))) b!4059962))

(declare-fun b!4059966 () Bool)

(declare-fun e!2519336 () Bool)

(declare-fun tp!1229845 () Bool)

(declare-fun tp!1229842 () Bool)

(assert (=> b!4059966 (= e!2519336 (and tp!1229845 tp!1229842))))

(declare-fun b!4059963 () Bool)

(assert (=> b!4059963 (= e!2519336 tp_is_empty!20701)))

(declare-fun b!4059964 () Bool)

(declare-fun tp!1229844 () Bool)

(declare-fun tp!1229841 () Bool)

(assert (=> b!4059964 (= e!2519336 (and tp!1229844 tp!1229841))))

(declare-fun b!4059965 () Bool)

(declare-fun tp!1229843 () Bool)

(assert (=> b!4059965 (= e!2519336 tp!1229843)))

(assert (=> b!4058902 (= tp!1229825 e!2519336)))

(assert (= (and b!4058902 ((_ is ElementMatch!11865) (regTwo!24243 (regex!6960 (rule!10050 token!484))))) b!4059963))

(assert (= (and b!4058902 ((_ is Concat!19056) (regTwo!24243 (regex!6960 (rule!10050 token!484))))) b!4059964))

(assert (= (and b!4058902 ((_ is Star!11865) (regTwo!24243 (regex!6960 (rule!10050 token!484))))) b!4059965))

(assert (= (and b!4058902 ((_ is Union!11865) (regTwo!24243 (regex!6960 (rule!10050 token!484))))) b!4059966))

(declare-fun b!4059970 () Bool)

(declare-fun e!2519337 () Bool)

(declare-fun tp!1229850 () Bool)

(declare-fun tp!1229847 () Bool)

(assert (=> b!4059970 (= e!2519337 (and tp!1229850 tp!1229847))))

(declare-fun b!4059967 () Bool)

(assert (=> b!4059967 (= e!2519337 tp_is_empty!20701)))

(declare-fun b!4059968 () Bool)

(declare-fun tp!1229849 () Bool)

(declare-fun tp!1229846 () Bool)

(assert (=> b!4059968 (= e!2519337 (and tp!1229849 tp!1229846))))

(declare-fun b!4059969 () Bool)

(declare-fun tp!1229848 () Bool)

(assert (=> b!4059969 (= e!2519337 tp!1229848)))

(assert (=> b!4058881 (= tp!1229804 e!2519337)))

(assert (= (and b!4058881 ((_ is ElementMatch!11865) (reg!12194 (regex!6960 (h!48795 rules!2999))))) b!4059967))

(assert (= (and b!4058881 ((_ is Concat!19056) (reg!12194 (regex!6960 (h!48795 rules!2999))))) b!4059968))

(assert (= (and b!4058881 ((_ is Star!11865) (reg!12194 (regex!6960 (h!48795 rules!2999))))) b!4059969))

(assert (= (and b!4058881 ((_ is Union!11865) (reg!12194 (regex!6960 (h!48795 rules!2999))))) b!4059970))

(declare-fun b!4059971 () Bool)

(declare-fun e!2519338 () Bool)

(declare-fun tp!1229851 () Bool)

(assert (=> b!4059971 (= e!2519338 (and tp_is_empty!20701 tp!1229851))))

(assert (=> b!4058894 (= tp!1229819 e!2519338)))

(assert (= (and b!4058894 ((_ is Cons!43373) (t!336350 (t!336350 prefix!494)))) b!4059971))

(declare-fun b!4059975 () Bool)

(declare-fun e!2519339 () Bool)

(declare-fun tp!1229856 () Bool)

(declare-fun tp!1229853 () Bool)

(assert (=> b!4059975 (= e!2519339 (and tp!1229856 tp!1229853))))

(declare-fun b!4059972 () Bool)

(assert (=> b!4059972 (= e!2519339 tp_is_empty!20701)))

(declare-fun b!4059973 () Bool)

(declare-fun tp!1229855 () Bool)

(declare-fun tp!1229852 () Bool)

(assert (=> b!4059973 (= e!2519339 (and tp!1229855 tp!1229852))))

(declare-fun b!4059974 () Bool)

(declare-fun tp!1229854 () Bool)

(assert (=> b!4059974 (= e!2519339 tp!1229854)))

(assert (=> b!4058901 (= tp!1229826 e!2519339)))

(assert (= (and b!4058901 ((_ is ElementMatch!11865) (reg!12194 (regex!6960 (rule!10050 token!484))))) b!4059972))

(assert (= (and b!4058901 ((_ is Concat!19056) (reg!12194 (regex!6960 (rule!10050 token!484))))) b!4059973))

(assert (= (and b!4058901 ((_ is Star!11865) (reg!12194 (regex!6960 (rule!10050 token!484))))) b!4059974))

(assert (= (and b!4058901 ((_ is Union!11865) (reg!12194 (regex!6960 (rule!10050 token!484))))) b!4059975))

(declare-fun b!4059979 () Bool)

(declare-fun e!2519340 () Bool)

(declare-fun tp!1229861 () Bool)

(declare-fun tp!1229858 () Bool)

(assert (=> b!4059979 (= e!2519340 (and tp!1229861 tp!1229858))))

(declare-fun b!4059976 () Bool)

(assert (=> b!4059976 (= e!2519340 tp_is_empty!20701)))

(declare-fun b!4059977 () Bool)

(declare-fun tp!1229860 () Bool)

(declare-fun tp!1229857 () Bool)

(assert (=> b!4059977 (= e!2519340 (and tp!1229860 tp!1229857))))

(declare-fun b!4059978 () Bool)

(declare-fun tp!1229859 () Bool)

(assert (=> b!4059978 (= e!2519340 tp!1229859)))

(assert (=> b!4058880 (= tp!1229805 e!2519340)))

(assert (= (and b!4058880 ((_ is ElementMatch!11865) (regOne!24242 (regex!6960 (h!48795 rules!2999))))) b!4059976))

(assert (= (and b!4058880 ((_ is Concat!19056) (regOne!24242 (regex!6960 (h!48795 rules!2999))))) b!4059977))

(assert (= (and b!4058880 ((_ is Star!11865) (regOne!24242 (regex!6960 (h!48795 rules!2999))))) b!4059978))

(assert (= (and b!4058880 ((_ is Union!11865) (regOne!24242 (regex!6960 (h!48795 rules!2999))))) b!4059979))

(declare-fun b!4059983 () Bool)

(declare-fun e!2519341 () Bool)

(declare-fun tp!1229866 () Bool)

(declare-fun tp!1229863 () Bool)

(assert (=> b!4059983 (= e!2519341 (and tp!1229866 tp!1229863))))

(declare-fun b!4059980 () Bool)

(assert (=> b!4059980 (= e!2519341 tp_is_empty!20701)))

(declare-fun b!4059981 () Bool)

(declare-fun tp!1229865 () Bool)

(declare-fun tp!1229862 () Bool)

(assert (=> b!4059981 (= e!2519341 (and tp!1229865 tp!1229862))))

(declare-fun b!4059982 () Bool)

(declare-fun tp!1229864 () Bool)

(assert (=> b!4059982 (= e!2519341 tp!1229864)))

(assert (=> b!4058880 (= tp!1229802 e!2519341)))

(assert (= (and b!4058880 ((_ is ElementMatch!11865) (regTwo!24242 (regex!6960 (h!48795 rules!2999))))) b!4059980))

(assert (= (and b!4058880 ((_ is Concat!19056) (regTwo!24242 (regex!6960 (h!48795 rules!2999))))) b!4059981))

(assert (= (and b!4058880 ((_ is Star!11865) (regTwo!24242 (regex!6960 (h!48795 rules!2999))))) b!4059982))

(assert (= (and b!4058880 ((_ is Union!11865) (regTwo!24242 (regex!6960 (h!48795 rules!2999))))) b!4059983))

(declare-fun b!4059987 () Bool)

(declare-fun e!2519342 () Bool)

(declare-fun tp!1229871 () Bool)

(declare-fun tp!1229868 () Bool)

(assert (=> b!4059987 (= e!2519342 (and tp!1229871 tp!1229868))))

(declare-fun b!4059984 () Bool)

(assert (=> b!4059984 (= e!2519342 tp_is_empty!20701)))

(declare-fun b!4059985 () Bool)

(declare-fun tp!1229870 () Bool)

(declare-fun tp!1229867 () Bool)

(assert (=> b!4059985 (= e!2519342 (and tp!1229870 tp!1229867))))

(declare-fun b!4059986 () Bool)

(declare-fun tp!1229869 () Bool)

(assert (=> b!4059986 (= e!2519342 tp!1229869)))

(assert (=> b!4058892 (= tp!1229816 e!2519342)))

(assert (= (and b!4058892 ((_ is ElementMatch!11865) (regex!6960 (h!48795 (t!336352 rules!2999))))) b!4059984))

(assert (= (and b!4058892 ((_ is Concat!19056) (regex!6960 (h!48795 (t!336352 rules!2999))))) b!4059985))

(assert (= (and b!4058892 ((_ is Star!11865) (regex!6960 (h!48795 (t!336352 rules!2999))))) b!4059986))

(assert (= (and b!4058892 ((_ is Union!11865) (regex!6960 (h!48795 (t!336352 rules!2999))))) b!4059987))

(declare-fun b!4059991 () Bool)

(declare-fun e!2519343 () Bool)

(declare-fun tp!1229876 () Bool)

(declare-fun tp!1229873 () Bool)

(assert (=> b!4059991 (= e!2519343 (and tp!1229876 tp!1229873))))

(declare-fun b!4059988 () Bool)

(assert (=> b!4059988 (= e!2519343 tp_is_empty!20701)))

(declare-fun b!4059989 () Bool)

(declare-fun tp!1229875 () Bool)

(declare-fun tp!1229872 () Bool)

(assert (=> b!4059989 (= e!2519343 (and tp!1229875 tp!1229872))))

(declare-fun b!4059990 () Bool)

(declare-fun tp!1229874 () Bool)

(assert (=> b!4059990 (= e!2519343 tp!1229874)))

(assert (=> b!4058900 (= tp!1229827 e!2519343)))

(assert (= (and b!4058900 ((_ is ElementMatch!11865) (regOne!24242 (regex!6960 (rule!10050 token!484))))) b!4059988))

(assert (= (and b!4058900 ((_ is Concat!19056) (regOne!24242 (regex!6960 (rule!10050 token!484))))) b!4059989))

(assert (= (and b!4058900 ((_ is Star!11865) (regOne!24242 (regex!6960 (rule!10050 token!484))))) b!4059990))

(assert (= (and b!4058900 ((_ is Union!11865) (regOne!24242 (regex!6960 (rule!10050 token!484))))) b!4059991))

(declare-fun b!4059995 () Bool)

(declare-fun e!2519344 () Bool)

(declare-fun tp!1229881 () Bool)

(declare-fun tp!1229878 () Bool)

(assert (=> b!4059995 (= e!2519344 (and tp!1229881 tp!1229878))))

(declare-fun b!4059992 () Bool)

(assert (=> b!4059992 (= e!2519344 tp_is_empty!20701)))

(declare-fun b!4059993 () Bool)

(declare-fun tp!1229880 () Bool)

(declare-fun tp!1229877 () Bool)

(assert (=> b!4059993 (= e!2519344 (and tp!1229880 tp!1229877))))

(declare-fun b!4059994 () Bool)

(declare-fun tp!1229879 () Bool)

(assert (=> b!4059994 (= e!2519344 tp!1229879)))

(assert (=> b!4058900 (= tp!1229824 e!2519344)))

(assert (= (and b!4058900 ((_ is ElementMatch!11865) (regTwo!24242 (regex!6960 (rule!10050 token!484))))) b!4059992))

(assert (= (and b!4058900 ((_ is Concat!19056) (regTwo!24242 (regex!6960 (rule!10050 token!484))))) b!4059993))

(assert (= (and b!4058900 ((_ is Star!11865) (regTwo!24242 (regex!6960 (rule!10050 token!484))))) b!4059994))

(assert (= (and b!4058900 ((_ is Union!11865) (regTwo!24242 (regex!6960 (rule!10050 token!484))))) b!4059995))

(declare-fun b!4059996 () Bool)

(declare-fun e!2519345 () Bool)

(declare-fun tp!1229882 () Bool)

(assert (=> b!4059996 (= e!2519345 (and tp_is_empty!20701 tp!1229882))))

(assert (=> b!4058897 (= tp!1229822 e!2519345)))

(assert (= (and b!4058897 ((_ is Cons!43373) (t!336350 (originalCharacters!7560 token!484)))) b!4059996))

(declare-fun b!4059997 () Bool)

(declare-fun e!2519346 () Bool)

(declare-fun tp!1229883 () Bool)

(assert (=> b!4059997 (= e!2519346 (and tp_is_empty!20701 tp!1229883))))

(assert (=> b!4058868 (= tp!1229791 e!2519346)))

(assert (= (and b!4058868 ((_ is Cons!43373) (t!336350 (t!336350 suffix!1299)))) b!4059997))

(declare-fun b!4060000 () Bool)

(declare-fun b_free!112945 () Bool)

(declare-fun b_next!113649 () Bool)

(assert (=> b!4060000 (= b_free!112945 (not b_next!113649))))

(declare-fun tb!244213 () Bool)

(declare-fun t!336490 () Bool)

(assert (=> (and b!4060000 (= (toValue!9516 (transformation!6960 (h!48795 (t!336352 (t!336352 rules!2999))))) (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))) t!336490) tb!244213))

(declare-fun result!295926 () Bool)

(assert (= result!295926 result!295818))

(assert (=> d!1205917 t!336490))

(declare-fun tb!244215 () Bool)

(declare-fun t!336492 () Bool)

(assert (=> (and b!4060000 (= (toValue!9516 (transformation!6960 (h!48795 (t!336352 (t!336352 rules!2999))))) (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449359)))))) t!336492) tb!244215))

(declare-fun result!295928 () Bool)

(assert (= result!295928 result!295890))

(assert (=> d!1206331 t!336492))

(declare-fun tb!244217 () Bool)

(declare-fun t!336494 () Bool)

(assert (=> (and b!4060000 (= (toValue!9516 (transformation!6960 (h!48795 (t!336352 (t!336352 rules!2999))))) (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449345)))))) t!336494) tb!244217))

(declare-fun result!295930 () Bool)

(assert (= result!295930 result!295902))

(assert (=> d!1206425 t!336494))

(declare-fun t!336496 () Bool)

(declare-fun tb!244219 () Bool)

(assert (=> (and b!4060000 (= (toValue!9516 (transformation!6960 (h!48795 (t!336352 (t!336352 rules!2999))))) (toValue!9516 (transformation!6960 (rule!10050 token!484)))) t!336496) tb!244219))

(declare-fun result!295932 () Bool)

(assert (= result!295932 result!295914))

(assert (=> d!1206693 t!336496))

(declare-fun t!336498 () Bool)

(declare-fun tb!244221 () Bool)

(assert (=> (and b!4060000 (= (toValue!9516 (transformation!6960 (h!48795 (t!336352 (t!336352 rules!2999))))) (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))) t!336498) tb!244221))

(declare-fun result!295934 () Bool)

(assert (= result!295934 result!295866))

(assert (=> d!1206183 t!336498))

(assert (=> d!1206189 t!336498))

(declare-fun t!336500 () Bool)

(declare-fun tb!244223 () Bool)

(assert (=> (and b!4060000 (= (toValue!9516 (transformation!6960 (h!48795 (t!336352 (t!336352 rules!2999))))) (toValue!9516 (transformation!6960 (rule!10050 token!484)))) t!336500) tb!244223))

(declare-fun result!295936 () Bool)

(assert (= result!295936 result!295824))

(assert (=> d!1205963 t!336500))

(declare-fun t!336502 () Bool)

(declare-fun tb!244225 () Bool)

(assert (=> (and b!4060000 (= (toValue!9516 (transformation!6960 (h!48795 (t!336352 (t!336352 rules!2999))))) (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449563)))))) t!336502) tb!244225))

(declare-fun result!295938 () Bool)

(assert (= result!295938 result!295896))

(assert (=> d!1206417 t!336502))

(declare-fun t!336504 () Bool)

(declare-fun tb!244227 () Bool)

(assert (=> (and b!4060000 (= (toValue!9516 (transformation!6960 (h!48795 (t!336352 (t!336352 rules!2999))))) (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449534)))))) t!336504) tb!244227))

(declare-fun result!295940 () Bool)

(assert (= result!295940 result!295884))

(assert (=> d!1206291 t!336504))

(assert (=> d!1206703 t!336496))

(declare-fun tp!1229887 () Bool)

(declare-fun b_and!312155 () Bool)

(assert (=> b!4060000 (= tp!1229887 (and (=> t!336498 result!295934) (=> t!336496 result!295932) (=> t!336500 result!295936) (=> t!336502 result!295938) (=> t!336492 result!295928) (=> t!336494 result!295930) (=> t!336490 result!295926) (=> t!336504 result!295940) b_and!312155))))

(declare-fun b_free!112947 () Bool)

(declare-fun b_next!113651 () Bool)

(assert (=> b!4060000 (= b_free!112947 (not b_next!113651))))

(declare-fun tb!244229 () Bool)

(declare-fun t!336506 () Bool)

(assert (=> (and b!4060000 (= (toChars!9375 (transformation!6960 (h!48795 (t!336352 (t!336352 rules!2999))))) (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449345)))))) t!336506) tb!244229))

(declare-fun result!295942 () Bool)

(assert (= result!295942 result!295854))

(assert (=> d!1206127 t!336506))

(declare-fun tb!244231 () Bool)

(declare-fun t!336508 () Bool)

(assert (=> (and b!4060000 (= (toChars!9375 (transformation!6960 (h!48795 (t!336352 (t!336352 rules!2999))))) (toChars!9375 (transformation!6960 (rule!10050 token!484)))) t!336508) tb!244231))

(declare-fun result!295944 () Bool)

(assert (= result!295944 result!295920))

(assert (=> d!1206703 t!336508))

(declare-fun tb!244233 () Bool)

(declare-fun t!336510 () Bool)

(assert (=> (and b!4060000 (= (toChars!9375 (transformation!6960 (h!48795 (t!336352 (t!336352 rules!2999))))) (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))) t!336510) tb!244233))

(declare-fun result!295946 () Bool)

(assert (= result!295946 result!295792))

(assert (=> d!1205831 t!336510))

(declare-fun tb!244235 () Bool)

(declare-fun t!336512 () Bool)

(assert (=> (and b!4060000 (= (toChars!9375 (transformation!6960 (h!48795 (t!336352 (t!336352 rules!2999))))) (toChars!9375 (transformation!6960 (rule!10050 token!484)))) t!336512) tb!244235))

(declare-fun result!295948 () Bool)

(assert (= result!295948 result!295780))

(assert (=> d!1205697 t!336512))

(declare-fun t!336514 () Bool)

(declare-fun tb!244237 () Bool)

(assert (=> (and b!4060000 (= (toChars!9375 (transformation!6960 (h!48795 (t!336352 (t!336352 rules!2999))))) (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449563)))))) t!336514) tb!244237))

(declare-fun result!295950 () Bool)

(assert (= result!295950 result!295878))

(assert (=> d!1206237 t!336514))

(assert (=> b!4058846 t!336512))

(declare-fun t!336516 () Bool)

(declare-fun tb!244239 () Bool)

(assert (=> (and b!4060000 (= (toChars!9375 (transformation!6960 (h!48795 (t!336352 (t!336352 rules!2999))))) (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449534)))))) t!336516) tb!244239))

(declare-fun result!295952 () Bool)

(assert (= result!295952 result!295860))

(assert (=> d!1206141 t!336516))

(declare-fun t!336518 () Bool)

(declare-fun tb!244241 () Bool)

(assert (=> (and b!4060000 (= (toChars!9375 (transformation!6960 (h!48795 (t!336352 (t!336352 rules!2999))))) (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276)))))) t!336518) tb!244241))

(declare-fun result!295954 () Bool)

(assert (= result!295954 result!295872))

(assert (=> d!1206189 t!336518))

(declare-fun t!336522 () Bool)

(declare-fun tb!244245 () Bool)

(assert (=> (and b!4060000 (= (toChars!9375 (transformation!6960 (h!48795 (t!336352 (t!336352 rules!2999))))) (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (get!14226 lt!1449359)))))) t!336522) tb!244245))

(declare-fun result!295958 () Bool)

(assert (= result!295958 result!295848))

(assert (=> d!1206057 t!336522))

(declare-fun b_and!312157 () Bool)

(declare-fun tp!1229886 () Bool)

(assert (=> b!4060000 (= tp!1229886 (and (=> t!336506 result!295942) (=> t!336512 result!295948) (=> t!336508 result!295944) (=> t!336510 result!295946) (=> t!336522 result!295958) (=> t!336516 result!295952) (=> t!336514 result!295950) (=> t!336518 result!295954) b_and!312157))))

(declare-fun e!2519348 () Bool)

(assert (=> b!4060000 (= e!2519348 (and tp!1229887 tp!1229886))))

(declare-fun b!4059999 () Bool)

(declare-fun tp!1229885 () Bool)

(declare-fun e!2519350 () Bool)

(assert (=> b!4059999 (= e!2519350 (and tp!1229885 (inv!57978 (tag!7820 (h!48795 (t!336352 (t!336352 rules!2999))))) (inv!57981 (transformation!6960 (h!48795 (t!336352 (t!336352 rules!2999))))) e!2519348))))

(declare-fun b!4059998 () Bool)

(declare-fun e!2519349 () Bool)

(declare-fun tp!1229884 () Bool)

(assert (=> b!4059998 (= e!2519349 (and e!2519350 tp!1229884))))

(assert (=> b!4058891 (= tp!1229815 e!2519349)))

(assert (= b!4059999 b!4060000))

(assert (= b!4059998 b!4059999))

(assert (= (and b!4058891 ((_ is Cons!43375) (t!336352 (t!336352 rules!2999)))) b!4059998))

(declare-fun m!4665471 () Bool)

(assert (=> b!4059999 m!4665471))

(declare-fun m!4665473 () Bool)

(assert (=> b!4059999 m!4665473))

(declare-fun b!4060007 () Bool)

(declare-fun e!2519355 () Bool)

(declare-fun tp!1229889 () Bool)

(assert (=> b!4060007 (= e!2519355 (and tp_is_empty!20701 tp!1229889))))

(assert (=> b!4058896 (= tp!1229821 e!2519355)))

(assert (= (and b!4058896 ((_ is Cons!43373) (t!336350 (t!336350 newSuffixResult!27)))) b!4060007))

(declare-fun b!4060008 () Bool)

(declare-fun e!2519356 () Bool)

(declare-fun tp!1229890 () Bool)

(assert (=> b!4060008 (= e!2519356 (and tp_is_empty!20701 tp!1229890))))

(assert (=> b!4058895 (= tp!1229820 e!2519356)))

(assert (= (and b!4058895 ((_ is Cons!43373) (t!336350 (t!336350 newSuffix!27)))) b!4060008))

(declare-fun tp!1229899 () Bool)

(declare-fun tp!1229897 () Bool)

(declare-fun b!4060017 () Bool)

(declare-fun e!2519362 () Bool)

(assert (=> b!4060017 (= e!2519362 (and (inv!57985 (left!32641 (c!700780 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (value!218994 (_1!24351 (v!39791 lt!1449276))))))) tp!1229897 (inv!57985 (right!32971 (c!700780 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (value!218994 (_1!24351 (v!39791 lt!1449276))))))) tp!1229899))))

(declare-fun b!4060019 () Bool)

(declare-fun e!2519363 () Bool)

(declare-fun tp!1229898 () Bool)

(assert (=> b!4060019 (= e!2519363 tp!1229898)))

(declare-fun b!4060018 () Bool)

(declare-fun inv!57989 (IArray!26347) Bool)

(assert (=> b!4060018 (= e!2519362 (and (inv!57989 (xs!16477 (c!700780 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (value!218994 (_1!24351 (v!39791 lt!1449276))))))) e!2519363))))

(assert (=> b!4058579 (= tp!1229747 (and (inv!57985 (c!700780 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (value!218994 (_1!24351 (v!39791 lt!1449276)))))) e!2519362))))

(assert (= (and b!4058579 ((_ is Node!13171) (c!700780 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (value!218994 (_1!24351 (v!39791 lt!1449276))))))) b!4060017))

(assert (= b!4060018 b!4060019))

(assert (= (and b!4058579 ((_ is Leaf!20358) (c!700780 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))) (value!218994 (_1!24351 (v!39791 lt!1449276))))))) b!4060018))

(declare-fun m!4665487 () Bool)

(assert (=> b!4060017 m!4665487))

(declare-fun m!4665489 () Bool)

(assert (=> b!4060017 m!4665489))

(declare-fun m!4665491 () Bool)

(assert (=> b!4060018 m!4665491))

(assert (=> b!4058579 m!4663325))

(declare-fun b!4060020 () Bool)

(declare-fun e!2519364 () Bool)

(declare-fun tp!1229900 () Bool)

(declare-fun tp!1229902 () Bool)

(assert (=> b!4060020 (= e!2519364 (and (inv!57985 (left!32641 (c!700780 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 token!484))) (value!218994 token!484))))) tp!1229900 (inv!57985 (right!32971 (c!700780 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 token!484))) (value!218994 token!484))))) tp!1229902))))

(declare-fun b!4060022 () Bool)

(declare-fun e!2519365 () Bool)

(declare-fun tp!1229901 () Bool)

(assert (=> b!4060022 (= e!2519365 tp!1229901)))

(declare-fun b!4060021 () Bool)

(assert (=> b!4060021 (= e!2519364 (and (inv!57989 (xs!16477 (c!700780 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 token!484))) (value!218994 token!484))))) e!2519365))))

(assert (=> b!4058387 (= tp!1229746 (and (inv!57985 (c!700780 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 token!484))) (value!218994 token!484)))) e!2519364))))

(assert (= (and b!4058387 ((_ is Node!13171) (c!700780 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 token!484))) (value!218994 token!484))))) b!4060020))

(assert (= b!4060021 b!4060022))

(assert (= (and b!4058387 ((_ is Leaf!20358) (c!700780 (dynLambda!18424 (toChars!9375 (transformation!6960 (rule!10050 token!484))) (value!218994 token!484))))) b!4060021))

(declare-fun m!4665493 () Bool)

(assert (=> b!4060020 m!4665493))

(declare-fun m!4665495 () Bool)

(assert (=> b!4060020 m!4665495))

(declare-fun m!4665497 () Bool)

(assert (=> b!4060021 m!4665497))

(assert (=> b!4058387 m!4663007))

(declare-fun b!4060026 () Bool)

(declare-fun e!2519366 () Bool)

(declare-fun tp!1229907 () Bool)

(declare-fun tp!1229904 () Bool)

(assert (=> b!4060026 (= e!2519366 (and tp!1229907 tp!1229904))))

(declare-fun b!4060023 () Bool)

(assert (=> b!4060023 (= e!2519366 tp_is_empty!20701)))

(declare-fun b!4060024 () Bool)

(declare-fun tp!1229906 () Bool)

(declare-fun tp!1229903 () Bool)

(assert (=> b!4060024 (= e!2519366 (and tp!1229906 tp!1229903))))

(declare-fun b!4060025 () Bool)

(declare-fun tp!1229905 () Bool)

(assert (=> b!4060025 (= e!2519366 tp!1229905)))

(assert (=> b!4058882 (= tp!1229806 e!2519366)))

(assert (= (and b!4058882 ((_ is ElementMatch!11865) (regOne!24243 (regex!6960 (h!48795 rules!2999))))) b!4060023))

(assert (= (and b!4058882 ((_ is Concat!19056) (regOne!24243 (regex!6960 (h!48795 rules!2999))))) b!4060024))

(assert (= (and b!4058882 ((_ is Star!11865) (regOne!24243 (regex!6960 (h!48795 rules!2999))))) b!4060025))

(assert (= (and b!4058882 ((_ is Union!11865) (regOne!24243 (regex!6960 (h!48795 rules!2999))))) b!4060026))

(declare-fun b!4060030 () Bool)

(declare-fun e!2519367 () Bool)

(declare-fun tp!1229912 () Bool)

(declare-fun tp!1229909 () Bool)

(assert (=> b!4060030 (= e!2519367 (and tp!1229912 tp!1229909))))

(declare-fun b!4060027 () Bool)

(assert (=> b!4060027 (= e!2519367 tp_is_empty!20701)))

(declare-fun b!4060028 () Bool)

(declare-fun tp!1229911 () Bool)

(declare-fun tp!1229908 () Bool)

(assert (=> b!4060028 (= e!2519367 (and tp!1229911 tp!1229908))))

(declare-fun b!4060029 () Bool)

(declare-fun tp!1229910 () Bool)

(assert (=> b!4060029 (= e!2519367 tp!1229910)))

(assert (=> b!4058882 (= tp!1229803 e!2519367)))

(assert (= (and b!4058882 ((_ is ElementMatch!11865) (regTwo!24243 (regex!6960 (h!48795 rules!2999))))) b!4060027))

(assert (= (and b!4058882 ((_ is Concat!19056) (regTwo!24243 (regex!6960 (h!48795 rules!2999))))) b!4060028))

(assert (= (and b!4058882 ((_ is Star!11865) (regTwo!24243 (regex!6960 (h!48795 rules!2999))))) b!4060029))

(assert (= (and b!4058882 ((_ is Union!11865) (regTwo!24243 (regex!6960 (h!48795 rules!2999))))) b!4060030))

(declare-fun b!4060031 () Bool)

(declare-fun e!2519368 () Bool)

(declare-fun tp!1229913 () Bool)

(assert (=> b!4060031 (= e!2519368 (and tp_is_empty!20701 tp!1229913))))

(assert (=> b!4058898 (= tp!1229823 e!2519368)))

(assert (= (and b!4058898 ((_ is Cons!43373) (t!336350 (t!336350 suffixResult!105)))) b!4060031))

(declare-fun b_lambda!118639 () Bool)

(assert (= b_lambda!118629 (or (and b!4058071 b_free!112929 (= (toValue!9516 (transformation!6960 (h!48795 rules!2999))) (toValue!9516 (transformation!6960 (rule!10050 token!484))))) (and b!4058069 b_free!112933) (and b!4058893 b_free!112941 (= (toValue!9516 (transformation!6960 (h!48795 (t!336352 rules!2999)))) (toValue!9516 (transformation!6960 (rule!10050 token!484))))) (and b!4060000 b_free!112945 (= (toValue!9516 (transformation!6960 (h!48795 (t!336352 (t!336352 rules!2999))))) (toValue!9516 (transformation!6960 (rule!10050 token!484))))) b_lambda!118639)))

(declare-fun b_lambda!118641 () Bool)

(assert (= b_lambda!118631 (or (and b!4058071 b_free!112931 (= (toChars!9375 (transformation!6960 (h!48795 rules!2999))) (toChars!9375 (transformation!6960 (rule!10050 token!484))))) (and b!4058069 b_free!112935) (and b!4058893 b_free!112943 (= (toChars!9375 (transformation!6960 (h!48795 (t!336352 rules!2999)))) (toChars!9375 (transformation!6960 (rule!10050 token!484))))) (and b!4060000 b_free!112947 (= (toChars!9375 (transformation!6960 (h!48795 (t!336352 (t!336352 rules!2999))))) (toChars!9375 (transformation!6960 (rule!10050 token!484))))) b_lambda!118641)))

(declare-fun b_lambda!118643 () Bool)

(assert (= b_lambda!118633 (or (and b!4058071 b_free!112929 (= (toValue!9516 (transformation!6960 (h!48795 rules!2999))) (toValue!9516 (transformation!6960 (rule!10050 token!484))))) (and b!4058069 b_free!112933) (and b!4058893 b_free!112941 (= (toValue!9516 (transformation!6960 (h!48795 (t!336352 rules!2999)))) (toValue!9516 (transformation!6960 (rule!10050 token!484))))) (and b!4060000 b_free!112945 (= (toValue!9516 (transformation!6960 (h!48795 (t!336352 (t!336352 rules!2999))))) (toValue!9516 (transformation!6960 (rule!10050 token!484))))) b_lambda!118643)))

(declare-fun b_lambda!118645 () Bool)

(assert (= b_lambda!118591 (or (and b!4058071 b_free!112929 (= (toValue!9516 (transformation!6960 (h!48795 rules!2999))) (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))) (and b!4058069 b_free!112933 (= (toValue!9516 (transformation!6960 (rule!10050 token!484))) (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))) (and b!4058893 b_free!112941 (= (toValue!9516 (transformation!6960 (h!48795 (t!336352 rules!2999)))) (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))) (and b!4060000 b_free!112945 (= (toValue!9516 (transformation!6960 (h!48795 (t!336352 (t!336352 rules!2999))))) (toValue!9516 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))) b_lambda!118645)))

(declare-fun b_lambda!118647 () Bool)

(assert (= b_lambda!118579 (or (and b!4058071 b_free!112931 (= (toChars!9375 (transformation!6960 (h!48795 rules!2999))) (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))) (and b!4058069 b_free!112935 (= (toChars!9375 (transformation!6960 (rule!10050 token!484))) (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))) (and b!4058893 b_free!112943 (= (toChars!9375 (transformation!6960 (h!48795 (t!336352 rules!2999)))) (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))) (and b!4060000 b_free!112947 (= (toChars!9375 (transformation!6960 (h!48795 (t!336352 (t!336352 rules!2999))))) (toChars!9375 (transformation!6960 (rule!10050 (_1!24351 (v!39791 lt!1449276))))))) b_lambda!118647)))

(check-sat (not d!1206139) (not b_next!113651) (not b!4059418) (not b!4059138) (not b!4059814) (not b!4059808) (not bm!288074) (not d!1206723) (not b!4059265) (not bm!288175) b_and!312145 (not b!4059300) (not b!4059695) (not b!4059870) (not b!4059433) (not bm!288085) (not b!4059645) (not d!1206709) (not b!4059701) (not d!1206185) (not tb!244201) (not d!1206189) (not b!4060019) (not tb!244171) (not b!4059895) b_and!312149 (not b!4059717) (not b!4059441) (not b!4059836) (not b!4059918) (not b!4059074) (not d!1206141) (not bm!288152) (not b!4059973) (not b_lambda!118611) (not b!4059318) (not b!4059128) (not b!4059626) (not d!1206187) (not b!4059201) (not b!4058910) (not d!1206149) (not d!1206691) (not b_next!113645) (not b!4059204) (not b!4059134) (not d!1206625) (not b!4059189) (not d!1206499) (not bm!288132) (not b!4059323) (not b!4059996) (not b!4059813) (not b!4059110) (not b!4059804) (not b!4059280) (not b!4059671) (not d!1206347) (not b!4059799) (not b!4060025) (not b!4059758) (not b!4059350) (not bm!288133) (not d!1206659) (not b!4059653) (not d!1206337) (not d!1206081) (not b!4059572) (not b!4059501) (not b!4059308) (not b!4058987) (not b!4059658) (not b!4059659) (not d!1206575) (not d!1206741) (not d!1206233) (not b!4059283) (not b_lambda!118619) (not bm!288137) (not b!4059983) (not b!4059340) (not d!1206213) (not d!1206205) (not b!4059285) (not b!4059974) (not d!1206061) (not b!4059565) (not d!1206229) (not b_next!113633) (not b!4058972) (not b!4059492) (not b_lambda!118609) (not b!4059408) (not b!4059899) (not b!4059114) (not bm!288135) (not b!4058997) (not b!4059118) (not b!4059415) (not b!4059254) (not d!1206151) (not d!1206733) (not b!4059877) (not b!4060030) (not d!1206637) (not d!1206687) (not b!4059281) (not b!4059989) (not b!4058991) (not b!4058993) (not b!4059588) (not b!4059423) (not b!4059368) (not b!4059491) (not b!4060022) (not b!4059220) (not b!4059343) (not d!1206323) (not b!4059871) (not b!4059991) (not d!1206585) (not b!4059121) (not b_lambda!118625) (not b!4059310) (not b!4059625) (not d!1206171) (not b!4059797) (not b!4059251) (not b!4059986) (not d!1206257) (not b!4060021) (not b!4059243) (not tb!244207) (not b!4059627) (not bm!288142) (not d!1206157) (not b!4059382) (not b!4059336) (not b!4059384) (not b!4059559) (not d!1206611) (not d!1206685) (not b!4059624) (not b!4059266) (not b!4059523) (not b!4059364) (not d!1206725) (not b!4059126) (not b!4059210) (not b!4059810) (not b!4059361) (not d!1206325) b_and!312151 (not d!1206381) (not b!4059891) (not b!4059621) (not b!4059739) (not bm!288155) (not b!4059872) (not b!4059341) (not b!4059386) (not d!1206561) (not b!4059979) (not b!4059978) (not bm!288130) (not b!4059998) (not b!4059297) (not b!4059182) (not b!4059647) (not b!4059830) (not b!4059999) (not b!4059269) (not d!1206089) (not b!4059771) (not b!4059513) (not b!4059869) (not d!1206137) (not b!4059868) (not b!4059420) (not b!4059474) (not b!4059328) (not b!4059448) (not b!4059191) (not b!4059716) (not b!4059427) (not d!1206357) (not tb!244135) (not b!4059875) (not b!4059534) (not b!4059690) (not bm!288157) (not b_lambda!118643) (not d!1206501) (not bm!288136) (not d!1206293) (not d!1206305) (not b!4059374) (not bm!288129) (not bm!288150) (not bm!288141) (not b!4059431) (not d!1206423) (not tb!244165) (not d!1206419) (not b!4058995) (not b!4059412) (not b!4059951) (not b!4059709) (not bm!288145) (not b!4059533) (not b!4059186) (not bm!288134) (not d!1206307) (not d!1206731) (not b!4059457) (not d!1205987) (not b!4059378) (not d!1206627) (not b!4059562) (not b!4059338) (not b!4059434) (not bm!288112) (not b!4059769) (not d!1206477) (not bm!288131) (not b!4059995) (not b!4059587) (not b!4060017) (not d!1206107) (not b!4059380) (not d!1206025) (not b!4059356) (not b!4059499) (not b!4059113) (not b!4059964) (not b!4059234) (not b!4059263) (not b!4059332) (not b!4059403) (not bm!288158) (not b!4059889) (not b!4059531) (not b!4059388) (not b!4059143) (not d!1206175) (not b!4059570) (not b!4059396) (not b!4059479) (not b!4059965) (not b!4059867) (not d!1206653) (not b!4059759) (not b!4059960) (not b!4058985) (not b_lambda!118647) (not b!4059838) (not b!4059536) (not b!4059119) (not b!4059897) (not d!1206521) (not d!1206339) (not b!4059800) (not d!1206399) (not b!4059225) (not d!1206125) (not d!1206377) (not b_lambda!118615) (not d!1206321) (not b_next!113635) (not b!4059990) (not b!4059478) (not b!4059252) (not tb!244147) (not b!4059346) (not b!4059997) (not b!4059295) (not b!4059209) (not d!1206231) (not b!4059286) (not b!4059345) (not b!4059512) (not d!1206119) (not b!4059206) (not b_lambda!118607) (not b!4059654) (not b!4059082) (not b!4059312) (not b!4059125) (not d!1206533) (not b!4059955) (not b!4059519) (not b!4059544) (not b_lambda!118641) (not b!4059944) (not b!4059242) (not b!4059841) (not d!1206283) (not b!4059578) b_and!312157 (not d!1206703) (not b!4059245) (not b!4059273) (not bm!288084) (not b!4059352) (not b!4059775) (not b!4059846) (not b!4059117) (not d!1206379) (not b!4059961) (not b!4059135) (not tb!244177) (not b!4059907) (not b!4059566) (not d!1206415) (not d!1206155) (not b!4059582) (not b_lambda!118623) (not b!4059950) (not d!1206397) (not b!4059901) (not b!4059708) (not b!4059493) (not b!4059274) (not bm!288149) (not b!4059411) (not bm!288139) (not b_next!113647) (not b!4059442) (not b!4058908) (not b!4059873) (not b!4058387) (not b!4059696) (not b!4058579) (not b!4058912) (not b_next!113637) (not b!4060029) (not b!4059839) (not b!4059481) (not b!4059357) (not d!1206057) (not b!4059306) (not b!4059236) (not b!4059969) (not b!4058917) (not b!4059545) (not d!1206297) (not b!4059111) (not b!4059390) (not b!4059426) (not b!4059648) (not b!4059196) (not b!4059366) (not b!4059453) tp_is_empty!20701 (not d!1206095) (not b!4059115) (not b!4059956) (not b!4059329) (not b!4059198) (not b!4059952) (not bm!288064) (not b!4059129) (not d!1206445) (not b!4059326) (not b!4059140) (not b!4059422) (not b!4059966) (not b!4059456) (not b!4059574) b_and!312147 (not b!4059393) (not bm!288161) (not b!4059806) b_and!312155 (not b!4059398) (not b!4060028) (not b!4059529) (not b!4059293) (not d!1206713) (not b!4060026) (not b!4060024) (not b!4059342) (not b!4059261) (not b!4059651) (not d!1206565) (not b!4060031) (not b!4058999) (not b!4059337) (not b!4059551) (not d!1206301) (not b!4059392) (not b!4059537) (not d!1206135) (not b!4059884) (not d!1206405) (not b!4059414) (not d!1206285) (not b!4059496) (not d!1206349) (not b!4059066) (not b!4059968) (not b!4059362) (not b!4059077) (not b!4059348) (not b!4059406) (not b!4059721) (not b!4059757) (not d!1206051) (not b!4059628) (not b!4060007) (not b!4059773) (not d!1206053) (not b_lambda!118613) (not b!4060018) (not b!4059539) (not b!4059270) (not b!4059843) (not d!1205995) (not b!4059985) (not d!1206191) (not d!1206235) (not b!4059576) (not b!4059975) (not b!4059394) (not d!1206447) (not b!4058918) (not d!1206507) (not b!4058905) (not d!1206329) (not b!4059805) (not b!4059729) (not b!4058943) (not b!4058904) (not bm!288147) (not b!4060020) (not d!1206681) (not b!4059669) (not b!4059383) (not d!1206563) (not b!4059893) (not b!4059449) (not d!1206085) (not b!4059668) (not b!4059436) (not d!1206695) (not d!1206333) (not d!1206427) (not b!4059372) (not b!4059958) (not b!4059376) (not b!4059833) (not b!4059803) (not b_lambda!118639) (not tb!244141) (not b!4059462) (not b_lambda!118621) (not b!4059430) (not tb!244159) (not tb!244189) (not b!4059358) (not b!4059829) (not b!4059954) (not b!4059079) (not d!1206315) (not bm!288173) (not b!4059399) (not tb!244153) (not b!4059488) (not b!4059360) (not b!4058989) (not b!4059970) b_and!312143 (not b!4059962) (not bm!288160) (not d!1206173) (not b!4058909) (not b!4059482) (not b_next!113649) (not b!4059202) (not b!4059144) (not b!4059199) (not b!4059977) (not bm!288144) (not d!1206341) (not b!4059902) (not b!4059673) (not b!4059122) (not b!4059667) (not b!4059267) (not d!1206519) (not d!1206327) (not d!1205997) (not b!4059665) (not b!4059132) (not b!4059971) (not b!4059489) (not b!4059855) (not d!1206167) (not b!4059835) (not b!4059080) (not d!1206363) (not bm!288138) (not b!4059726) (not b!4059309) (not b_lambda!118599) (not bm!288140) (not b!4059866) (not b!4059230) (not d!1206554) (not b!4059451) (not b!4059722) (not d!1206523) (not b!4059322) (not b!4059237) (not d!1206097) (not d!1206067) (not b!4059136) (not d!1206105) (not b!4059485) (not b!4059656) (not d!1206127) (not b!4059994) (not d!1206055) (not b!4059713) b_and!312153 (not bm!288075) (not b_lambda!118645) (not b!4059948) (not d!1206159) (not d!1206369) (not b!4059068) (not b!4059516) (not b!4059370) (not b!4059525) (not b!4059320) (not bm!288169) (not b!4059324) (not b!4059223) (not b!4059697) (not b!4059666) (not b!4059993) (not b!4059112) (not b!4059847) (not b!4059120) (not b!4059622) (not b!4059987) (not b!4059689) (not b_lambda!118601) (not d!1206117) (not b!4059795) (not b!4059319) (not bm!288146) (not b!4059982) (not d!1206165) (not b!4060008) (not b_lambda!118605) (not d!1206633) (not b!4059772) (not b!4059672) (not b!4059520) (not b!4059216) (not b!4059495) (not bm!288154) (not b!4059730) (not b!4059402) (not b!4059316) (not b!4059231) (not d!1206335) (not tb!244183) (not b!4059447) (not b!4059896) (not b!4059334) (not b!4059724) (not b!4059527) (not b!4059712) (not d!1206239) (not b!4059500) (not b!4059477) (not b!4059487) (not b!4059275) (not b!4059541) (not b!4059354) (not b_next!113639) (not b!4058914) (not d!1206569) (not b!4059568) (not b!4059620) (not b!4059586) (not bm!288143) (not d!1206365) (not b!4059314) (not b!4059946) (not d!1206109) (not b!4059410) (not d!1206209) (not b_lambda!118617) (not b!4059438) (not b_lambda!118597) (not d!1206237) (not d!1206483) (not b!4059876) (not b!4059981))
(check-sat b_and!312149 (not b_next!113645) (not b_next!113633) b_and!312151 b_and!312153 (not b_next!113639) (not b_next!113651) b_and!312145 (not b_next!113635) b_and!312157 (not b_next!113637) (not b_next!113647) b_and!312147 b_and!312155 b_and!312143 (not b_next!113649))
