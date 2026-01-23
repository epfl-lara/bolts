; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!276012 () Bool)

(assert start!276012)

(declare-fun b!2837836 () Bool)

(declare-fun b_free!81985 () Bool)

(declare-fun b_next!82689 () Bool)

(assert (=> b!2837836 (= b_free!81985 (not b_next!82689))))

(declare-fun tp!908367 () Bool)

(declare-fun b_and!207879 () Bool)

(assert (=> b!2837836 (= tp!908367 b_and!207879)))

(declare-fun b_free!81987 () Bool)

(declare-fun b_next!82691 () Bool)

(assert (=> b!2837836 (= b_free!81987 (not b_next!82691))))

(declare-fun tp!908366 () Bool)

(declare-fun b_and!207881 () Bool)

(assert (=> b!2837836 (= tp!908366 b_and!207881)))

(declare-fun b!2837839 () Bool)

(declare-fun b_free!81989 () Bool)

(declare-fun b_next!82693 () Bool)

(assert (=> b!2837839 (= b_free!81989 (not b_next!82693))))

(declare-fun tp!908364 () Bool)

(declare-fun b_and!207883 () Bool)

(assert (=> b!2837839 (= tp!908364 b_and!207883)))

(declare-fun b_free!81991 () Bool)

(declare-fun b_next!82695 () Bool)

(assert (=> b!2837839 (= b_free!81991 (not b_next!82695))))

(declare-fun tp!908359 () Bool)

(declare-fun b_and!207885 () Bool)

(assert (=> b!2837839 (= tp!908359 b_and!207885)))

(declare-fun b!2837838 () Bool)

(declare-fun b_free!81993 () Bool)

(declare-fun b_next!82697 () Bool)

(assert (=> b!2837838 (= b_free!81993 (not b_next!82697))))

(declare-fun tp!908355 () Bool)

(declare-fun b_and!207887 () Bool)

(assert (=> b!2837838 (= tp!908355 b_and!207887)))

(declare-fun b_free!81995 () Bool)

(declare-fun b_next!82699 () Bool)

(assert (=> b!2837838 (= b_free!81995 (not b_next!82699))))

(declare-fun tp!908363 () Bool)

(declare-fun b_and!207889 () Bool)

(assert (=> b!2837838 (= tp!908363 b_and!207889)))

(declare-fun b!2837830 () Bool)

(declare-fun tp!908357 () Bool)

(declare-fun e!1797207 () Bool)

(declare-datatypes ((C!17044 0))(
  ( (C!17045 (val!10534 Int)) )
))
(declare-datatypes ((List!33668 0))(
  ( (Nil!33544) (Cons!33544 (h!38964 C!17044) (t!232097 List!33668)) )
))
(declare-datatypes ((List!33669 0))(
  ( (Nil!33545) (Cons!33545 (h!38965 (_ BitVec 16)) (t!232098 List!33669)) )
))
(declare-datatypes ((Regex!8431 0))(
  ( (ElementMatch!8431 (c!458442 C!17044)) (Concat!13701 (regOne!17374 Regex!8431) (regTwo!17374 Regex!8431)) (EmptyExpr!8431) (Star!8431 (reg!8760 Regex!8431)) (EmptyLang!8431) (Union!8431 (regOne!17375 Regex!8431) (regTwo!17375 Regex!8431)) )
))
(declare-datatypes ((String!36871 0))(
  ( (String!36872 (value!161983 String)) )
))
(declare-datatypes ((TokenValue!5270 0))(
  ( (FloatLiteralValue!10540 (text!37335 List!33669)) (TokenValueExt!5269 (__x!22278 Int)) (Broken!26350 (value!161984 List!33669)) (Object!5393) (End!5270) (Def!5270) (Underscore!5270) (Match!5270) (Else!5270) (Error!5270) (Case!5270) (If!5270) (Extends!5270) (Abstract!5270) (Class!5270) (Val!5270) (DelimiterValue!10540 (del!5330 List!33669)) (KeywordValue!5276 (value!161985 List!33669)) (CommentValue!10540 (value!161986 List!33669)) (WhitespaceValue!10540 (value!161987 List!33669)) (IndentationValue!5270 (value!161988 List!33669)) (String!36873) (Int32!5270) (Broken!26351 (value!161989 List!33669)) (Boolean!5271) (Unit!47450) (OperatorValue!5273 (op!5330 List!33669)) (IdentifierValue!10540 (value!161990 List!33669)) (IdentifierValue!10541 (value!161991 List!33669)) (WhitespaceValue!10541 (value!161992 List!33669)) (True!10540) (False!10540) (Broken!26352 (value!161993 List!33669)) (Broken!26353 (value!161994 List!33669)) (True!10541) (RightBrace!5270) (RightBracket!5270) (Colon!5270) (Null!5270) (Comma!5270) (LeftBracket!5270) (False!10541) (LeftBrace!5270) (ImaginaryLiteralValue!5270 (text!37336 List!33669)) (StringLiteralValue!15810 (value!161995 List!33669)) (EOFValue!5270 (value!161996 List!33669)) (IdentValue!5270 (value!161997 List!33669)) (DelimiterValue!10541 (value!161998 List!33669)) (DedentValue!5270 (value!161999 List!33669)) (NewLineValue!5270 (value!162000 List!33669)) (IntegerValue!15810 (value!162001 (_ BitVec 32)) (text!37337 List!33669)) (IntegerValue!15811 (value!162002 Int) (text!37338 List!33669)) (Times!5270) (Or!5270) (Equal!5270) (Minus!5270) (Broken!26354 (value!162003 List!33669)) (And!5270) (Div!5270) (LessEqual!5270) (Mod!5270) (Concat!13702) (Not!5270) (Plus!5270) (SpaceValue!5270 (value!162004 List!33669)) (IntegerValue!15812 (value!162005 Int) (text!37339 List!33669)) (StringLiteralValue!15811 (text!37340 List!33669)) (FloatLiteralValue!10541 (text!37341 List!33669)) (BytesLiteralValue!5270 (value!162006 List!33669)) (CommentValue!10541 (value!162007 List!33669)) (StringLiteralValue!15812 (value!162008 List!33669)) (ErrorTokenValue!5270 (msg!5331 List!33669)) )
))
(declare-datatypes ((IArray!20845 0))(
  ( (IArray!20846 (innerList!10480 List!33668)) )
))
(declare-datatypes ((Conc!10420 0))(
  ( (Node!10420 (left!25295 Conc!10420) (right!25625 Conc!10420) (csize!21070 Int) (cheight!10631 Int)) (Leaf!15848 (xs!13532 IArray!20845) (csize!21071 Int)) (Empty!10420) )
))
(declare-datatypes ((BalanceConc!20478 0))(
  ( (BalanceConc!20479 (c!458443 Conc!10420)) )
))
(declare-datatypes ((TokenValueInjection!9968 0))(
  ( (TokenValueInjection!9969 (toValue!7082 Int) (toChars!6941 Int)) )
))
(declare-datatypes ((Rule!9880 0))(
  ( (Rule!9881 (regex!5040 Regex!8431) (tag!5544 String!36871) (isSeparator!5040 Bool) (transformation!5040 TokenValueInjection!9968)) )
))
(declare-datatypes ((Token!9482 0))(
  ( (Token!9483 (value!162009 TokenValue!5270) (rule!7468 Rule!9880) (size!26075 Int) (originalCharacters!5772 List!33668)) )
))
(declare-datatypes ((List!33670 0))(
  ( (Nil!33546) (Cons!33546 (h!38966 Token!9482) (t!232099 List!33670)) )
))
(declare-fun tokensBis!14 () List!33670)

(declare-fun e!1797219 () Bool)

(declare-fun inv!45511 (String!36871) Bool)

(declare-fun inv!45514 (TokenValueInjection!9968) Bool)

(assert (=> b!2837830 (= e!1797207 (and tp!908357 (inv!45511 (tag!5544 (rule!7468 (h!38966 tokensBis!14)))) (inv!45514 (transformation!5040 (rule!7468 (h!38966 tokensBis!14)))) e!1797219))))

(declare-fun e!1797221 () Bool)

(declare-fun tp!908356 () Bool)

(declare-fun e!1797223 () Bool)

(declare-fun b!2837831 () Bool)

(declare-datatypes ((List!33671 0))(
  ( (Nil!33547) (Cons!33547 (h!38967 Rule!9880) (t!232100 List!33671)) )
))
(declare-fun rules!4246 () List!33671)

(assert (=> b!2837831 (= e!1797221 (and tp!908356 (inv!45511 (tag!5544 (h!38967 rules!4246))) (inv!45514 (transformation!5040 (h!38967 rules!4246))) e!1797223))))

(declare-fun b!2837832 () Bool)

(declare-fun res!1180822 () Bool)

(declare-fun e!1797210 () Bool)

(assert (=> b!2837832 (=> (not res!1180822) (not e!1797210))))

(declare-datatypes ((LexerInterface!4630 0))(
  ( (LexerInterfaceExt!4627 (__x!22279 Int)) (Lexer!4628) )
))
(declare-fun thiss!27264 () LexerInterface!4630)

(declare-fun rulesInvariant!4046 (LexerInterface!4630 List!33671) Bool)

(assert (=> b!2837832 (= res!1180822 (rulesInvariant!4046 thiss!27264 rules!4246))))

(declare-fun b!2837833 () Bool)

(declare-fun res!1180820 () Bool)

(assert (=> b!2837833 (=> (not res!1180820) (not e!1797210))))

(get-info :version)

(assert (=> b!2837833 (= res!1180820 ((_ is Nil!33546) tokensBis!14))))

(declare-fun b!2837834 () Bool)

(declare-fun e!1797220 () Bool)

(declare-fun tp!908360 () Bool)

(assert (=> b!2837834 (= e!1797220 (and e!1797221 tp!908360))))

(declare-fun b!2837835 () Bool)

(declare-fun tp!908368 () Bool)

(declare-fun tokens!612 () List!33670)

(declare-fun e!1797217 () Bool)

(declare-fun e!1797208 () Bool)

(assert (=> b!2837835 (= e!1797217 (and tp!908368 (inv!45511 (tag!5544 (rule!7468 (h!38966 tokens!612)))) (inv!45514 (transformation!5040 (rule!7468 (h!38966 tokens!612)))) e!1797208))))

(assert (=> b!2837836 (= e!1797223 (and tp!908367 tp!908366))))

(declare-fun b!2837837 () Bool)

(declare-fun e!1797218 () Bool)

(declare-fun tp!908365 () Bool)

(declare-fun inv!21 (TokenValue!5270) Bool)

(assert (=> b!2837837 (= e!1797218 (and (inv!21 (value!162009 (h!38966 tokensBis!14))) e!1797207 tp!908365))))

(assert (=> b!2837838 (= e!1797219 (and tp!908355 tp!908363))))

(declare-fun res!1180821 () Bool)

(assert (=> start!276012 (=> (not res!1180821) (not e!1797210))))

(assert (=> start!276012 (= res!1180821 ((_ is Lexer!4628) thiss!27264))))

(assert (=> start!276012 e!1797210))

(assert (=> start!276012 true))

(assert (=> start!276012 e!1797220))

(declare-fun e!1797213 () Bool)

(assert (=> start!276012 e!1797213))

(declare-fun e!1797212 () Bool)

(assert (=> start!276012 e!1797212))

(assert (=> b!2837839 (= e!1797208 (and tp!908364 tp!908359))))

(declare-fun e!1797222 () Bool)

(declare-fun b!2837840 () Bool)

(declare-fun tp!908361 () Bool)

(assert (=> b!2837840 (= e!1797222 (and (inv!21 (value!162009 (h!38966 tokens!612))) e!1797217 tp!908361))))

(declare-fun b!2837841 () Bool)

(declare-fun tp!908362 () Bool)

(declare-fun inv!45515 (Token!9482) Bool)

(assert (=> b!2837841 (= e!1797213 (and (inv!45515 (h!38966 tokensBis!14)) e!1797218 tp!908362))))

(declare-fun b!2837842 () Bool)

(declare-fun res!1180824 () Bool)

(assert (=> b!2837842 (=> (not res!1180824) (not e!1797210))))

(declare-fun subseq!506 (List!33670 List!33670) Bool)

(assert (=> b!2837842 (= res!1180824 (subseq!506 tokensBis!14 tokens!612))))

(declare-fun b!2837843 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1671 (LexerInterface!4630 List!33671 List!33670) Bool)

(assert (=> b!2837843 (= e!1797210 (not (rulesProduceEachTokenIndividuallyList!1671 thiss!27264 rules!4246 tokensBis!14)))))

(declare-fun tp!908358 () Bool)

(declare-fun b!2837844 () Bool)

(assert (=> b!2837844 (= e!1797212 (and (inv!45515 (h!38966 tokens!612)) e!1797222 tp!908358))))

(declare-fun b!2837845 () Bool)

(declare-fun res!1180825 () Bool)

(assert (=> b!2837845 (=> (not res!1180825) (not e!1797210))))

(declare-fun isEmpty!18487 (List!33671) Bool)

(assert (=> b!2837845 (= res!1180825 (not (isEmpty!18487 rules!4246)))))

(declare-fun b!2837846 () Bool)

(declare-fun res!1180823 () Bool)

(assert (=> b!2837846 (=> (not res!1180823) (not e!1797210))))

(assert (=> b!2837846 (= res!1180823 (rulesProduceEachTokenIndividuallyList!1671 thiss!27264 rules!4246 tokens!612))))

(assert (= (and start!276012 res!1180821) b!2837845))

(assert (= (and b!2837845 res!1180825) b!2837832))

(assert (= (and b!2837832 res!1180822) b!2837842))

(assert (= (and b!2837842 res!1180824) b!2837846))

(assert (= (and b!2837846 res!1180823) b!2837833))

(assert (= (and b!2837833 res!1180820) b!2837843))

(assert (= b!2837831 b!2837836))

(assert (= b!2837834 b!2837831))

(assert (= (and start!276012 ((_ is Cons!33547) rules!4246)) b!2837834))

(assert (= b!2837830 b!2837838))

(assert (= b!2837837 b!2837830))

(assert (= b!2837841 b!2837837))

(assert (= (and start!276012 ((_ is Cons!33546) tokensBis!14)) b!2837841))

(assert (= b!2837835 b!2837839))

(assert (= b!2837840 b!2837835))

(assert (= b!2837844 b!2837840))

(assert (= (and start!276012 ((_ is Cons!33546) tokens!612)) b!2837844))

(declare-fun m!3267241 () Bool)

(assert (=> b!2837843 m!3267241))

(declare-fun m!3267243 () Bool)

(assert (=> b!2837844 m!3267243))

(declare-fun m!3267245 () Bool)

(assert (=> b!2837846 m!3267245))

(declare-fun m!3267247 () Bool)

(assert (=> b!2837831 m!3267247))

(declare-fun m!3267249 () Bool)

(assert (=> b!2837831 m!3267249))

(declare-fun m!3267251 () Bool)

(assert (=> b!2837835 m!3267251))

(declare-fun m!3267253 () Bool)

(assert (=> b!2837835 m!3267253))

(declare-fun m!3267255 () Bool)

(assert (=> b!2837830 m!3267255))

(declare-fun m!3267257 () Bool)

(assert (=> b!2837830 m!3267257))

(declare-fun m!3267259 () Bool)

(assert (=> b!2837841 m!3267259))

(declare-fun m!3267261 () Bool)

(assert (=> b!2837842 m!3267261))

(declare-fun m!3267263 () Bool)

(assert (=> b!2837832 m!3267263))

(declare-fun m!3267265 () Bool)

(assert (=> b!2837837 m!3267265))

(declare-fun m!3267267 () Bool)

(assert (=> b!2837840 m!3267267))

(declare-fun m!3267269 () Bool)

(assert (=> b!2837845 m!3267269))

(check-sat (not b!2837832) (not b_next!82689) (not b!2837834) (not b!2837840) (not b!2837831) (not b!2837843) (not b!2837830) (not b_next!82695) (not b!2837842) b_and!207885 (not b!2837835) (not b!2837841) (not b!2837844) b_and!207887 (not b!2837845) (not b_next!82691) b_and!207881 (not b_next!82693) b_and!207889 b_and!207883 (not b_next!82697) (not b_next!82699) b_and!207879 (not b!2837846) (not b!2837837))
(check-sat (not b_next!82689) (not b_next!82695) b_and!207885 b_and!207887 (not b_next!82691) b_and!207881 (not b_next!82693) b_and!207889 b_and!207883 (not b_next!82697) (not b_next!82699) b_and!207879)
(get-model)

(declare-fun b!2837857 () Bool)

(declare-fun e!1797230 () Bool)

(declare-fun inv!16 (TokenValue!5270) Bool)

(assert (=> b!2837857 (= e!1797230 (inv!16 (value!162009 (h!38966 tokens!612))))))

(declare-fun b!2837858 () Bool)

(declare-fun e!1797232 () Bool)

(declare-fun inv!17 (TokenValue!5270) Bool)

(assert (=> b!2837858 (= e!1797232 (inv!17 (value!162009 (h!38966 tokens!612))))))

(declare-fun d!823310 () Bool)

(declare-fun c!458448 () Bool)

(assert (=> d!823310 (= c!458448 ((_ is IntegerValue!15810) (value!162009 (h!38966 tokens!612))))))

(assert (=> d!823310 (= (inv!21 (value!162009 (h!38966 tokens!612))) e!1797230)))

(declare-fun b!2837859 () Bool)

(declare-fun res!1180831 () Bool)

(declare-fun e!1797231 () Bool)

(assert (=> b!2837859 (=> res!1180831 e!1797231)))

(assert (=> b!2837859 (= res!1180831 (not ((_ is IntegerValue!15812) (value!162009 (h!38966 tokens!612)))))))

(assert (=> b!2837859 (= e!1797232 e!1797231)))

(declare-fun b!2837860 () Bool)

(assert (=> b!2837860 (= e!1797230 e!1797232)))

(declare-fun c!458449 () Bool)

(assert (=> b!2837860 (= c!458449 ((_ is IntegerValue!15811) (value!162009 (h!38966 tokens!612))))))

(declare-fun b!2837861 () Bool)

(declare-fun inv!15 (TokenValue!5270) Bool)

(assert (=> b!2837861 (= e!1797231 (inv!15 (value!162009 (h!38966 tokens!612))))))

(assert (= (and d!823310 c!458448) b!2837857))

(assert (= (and d!823310 (not c!458448)) b!2837860))

(assert (= (and b!2837860 c!458449) b!2837858))

(assert (= (and b!2837860 (not c!458449)) b!2837859))

(assert (= (and b!2837859 (not res!1180831)) b!2837861))

(declare-fun m!3267271 () Bool)

(assert (=> b!2837857 m!3267271))

(declare-fun m!3267273 () Bool)

(assert (=> b!2837858 m!3267273))

(declare-fun m!3267275 () Bool)

(assert (=> b!2837861 m!3267275))

(assert (=> b!2837840 d!823310))

(declare-fun d!823312 () Bool)

(assert (=> d!823312 (= (inv!45511 (tag!5544 (rule!7468 (h!38966 tokensBis!14)))) (= (mod (str.len (value!161983 (tag!5544 (rule!7468 (h!38966 tokensBis!14))))) 2) 0))))

(assert (=> b!2837830 d!823312))

(declare-fun d!823314 () Bool)

(declare-fun res!1180839 () Bool)

(declare-fun e!1797244 () Bool)

(assert (=> d!823314 (=> (not res!1180839) (not e!1797244))))

(declare-fun semiInverseModEq!2095 (Int Int) Bool)

(assert (=> d!823314 (= res!1180839 (semiInverseModEq!2095 (toChars!6941 (transformation!5040 (rule!7468 (h!38966 tokensBis!14)))) (toValue!7082 (transformation!5040 (rule!7468 (h!38966 tokensBis!14))))))))

(assert (=> d!823314 (= (inv!45514 (transformation!5040 (rule!7468 (h!38966 tokensBis!14)))) e!1797244)))

(declare-fun b!2837879 () Bool)

(declare-fun equivClasses!1994 (Int Int) Bool)

(assert (=> b!2837879 (= e!1797244 (equivClasses!1994 (toChars!6941 (transformation!5040 (rule!7468 (h!38966 tokensBis!14)))) (toValue!7082 (transformation!5040 (rule!7468 (h!38966 tokensBis!14))))))))

(assert (= (and d!823314 res!1180839) b!2837879))

(declare-fun m!3267283 () Bool)

(assert (=> d!823314 m!3267283))

(declare-fun m!3267285 () Bool)

(assert (=> b!2837879 m!3267285))

(assert (=> b!2837830 d!823314))

(declare-fun d!823320 () Bool)

(declare-fun res!1180852 () Bool)

(declare-fun e!1797255 () Bool)

(assert (=> d!823320 (=> (not res!1180852) (not e!1797255))))

(declare-fun isEmpty!18489 (List!33668) Bool)

(assert (=> d!823320 (= res!1180852 (not (isEmpty!18489 (originalCharacters!5772 (h!38966 tokensBis!14)))))))

(assert (=> d!823320 (= (inv!45515 (h!38966 tokensBis!14)) e!1797255)))

(declare-fun b!2837898 () Bool)

(declare-fun res!1180853 () Bool)

(assert (=> b!2837898 (=> (not res!1180853) (not e!1797255))))

(declare-fun list!12524 (BalanceConc!20478) List!33668)

(declare-fun dynLambda!14104 (Int TokenValue!5270) BalanceConc!20478)

(assert (=> b!2837898 (= res!1180853 (= (originalCharacters!5772 (h!38966 tokensBis!14)) (list!12524 (dynLambda!14104 (toChars!6941 (transformation!5040 (rule!7468 (h!38966 tokensBis!14)))) (value!162009 (h!38966 tokensBis!14))))))))

(declare-fun b!2837899 () Bool)

(declare-fun size!26077 (List!33668) Int)

(assert (=> b!2837899 (= e!1797255 (= (size!26075 (h!38966 tokensBis!14)) (size!26077 (originalCharacters!5772 (h!38966 tokensBis!14)))))))

(assert (= (and d!823320 res!1180852) b!2837898))

(assert (= (and b!2837898 res!1180853) b!2837899))

(declare-fun b_lambda!85299 () Bool)

(assert (=> (not b_lambda!85299) (not b!2837898)))

(declare-fun t!232114 () Bool)

(declare-fun tb!154577 () Bool)

(assert (=> (and b!2837836 (= (toChars!6941 (transformation!5040 (h!38967 rules!4246))) (toChars!6941 (transformation!5040 (rule!7468 (h!38966 tokensBis!14))))) t!232114) tb!154577))

(declare-fun b!2837904 () Bool)

(declare-fun e!1797258 () Bool)

(declare-fun tp!908375 () Bool)

(declare-fun inv!45518 (Conc!10420) Bool)

(assert (=> b!2837904 (= e!1797258 (and (inv!45518 (c!458443 (dynLambda!14104 (toChars!6941 (transformation!5040 (rule!7468 (h!38966 tokensBis!14)))) (value!162009 (h!38966 tokensBis!14))))) tp!908375))))

(declare-fun result!192784 () Bool)

(declare-fun inv!45519 (BalanceConc!20478) Bool)

(assert (=> tb!154577 (= result!192784 (and (inv!45519 (dynLambda!14104 (toChars!6941 (transformation!5040 (rule!7468 (h!38966 tokensBis!14)))) (value!162009 (h!38966 tokensBis!14)))) e!1797258))))

(assert (= tb!154577 b!2837904))

(declare-fun m!3267311 () Bool)

(assert (=> b!2837904 m!3267311))

(declare-fun m!3267313 () Bool)

(assert (=> tb!154577 m!3267313))

(assert (=> b!2837898 t!232114))

(declare-fun b_and!207903 () Bool)

(assert (= b_and!207881 (and (=> t!232114 result!192784) b_and!207903)))

(declare-fun tb!154579 () Bool)

(declare-fun t!232116 () Bool)

(assert (=> (and b!2837839 (= (toChars!6941 (transformation!5040 (rule!7468 (h!38966 tokens!612)))) (toChars!6941 (transformation!5040 (rule!7468 (h!38966 tokensBis!14))))) t!232116) tb!154579))

(declare-fun result!192788 () Bool)

(assert (= result!192788 result!192784))

(assert (=> b!2837898 t!232116))

(declare-fun b_and!207905 () Bool)

(assert (= b_and!207885 (and (=> t!232116 result!192788) b_and!207905)))

(declare-fun t!232118 () Bool)

(declare-fun tb!154581 () Bool)

(assert (=> (and b!2837838 (= (toChars!6941 (transformation!5040 (rule!7468 (h!38966 tokensBis!14)))) (toChars!6941 (transformation!5040 (rule!7468 (h!38966 tokensBis!14))))) t!232118) tb!154581))

(declare-fun result!192790 () Bool)

(assert (= result!192790 result!192784))

(assert (=> b!2837898 t!232118))

(declare-fun b_and!207907 () Bool)

(assert (= b_and!207889 (and (=> t!232118 result!192790) b_and!207907)))

(declare-fun m!3267315 () Bool)

(assert (=> d!823320 m!3267315))

(declare-fun m!3267317 () Bool)

(assert (=> b!2837898 m!3267317))

(assert (=> b!2837898 m!3267317))

(declare-fun m!3267319 () Bool)

(assert (=> b!2837898 m!3267319))

(declare-fun m!3267321 () Bool)

(assert (=> b!2837899 m!3267321))

(assert (=> b!2837841 d!823320))

(declare-fun b!2837915 () Bool)

(declare-fun e!1797268 () Bool)

(assert (=> b!2837915 (= e!1797268 (subseq!506 (t!232099 tokensBis!14) (t!232099 tokens!612)))))

(declare-fun b!2837914 () Bool)

(declare-fun e!1797269 () Bool)

(declare-fun e!1797270 () Bool)

(assert (=> b!2837914 (= e!1797269 e!1797270)))

(declare-fun res!1180862 () Bool)

(assert (=> b!2837914 (=> res!1180862 e!1797270)))

(assert (=> b!2837914 (= res!1180862 e!1797268)))

(declare-fun res!1180864 () Bool)

(assert (=> b!2837914 (=> (not res!1180864) (not e!1797268))))

(assert (=> b!2837914 (= res!1180864 (= (h!38966 tokensBis!14) (h!38966 tokens!612)))))

(declare-fun b!2837916 () Bool)

(assert (=> b!2837916 (= e!1797270 (subseq!506 tokensBis!14 (t!232099 tokens!612)))))

(declare-fun b!2837913 () Bool)

(declare-fun e!1797267 () Bool)

(assert (=> b!2837913 (= e!1797267 e!1797269)))

(declare-fun res!1180865 () Bool)

(assert (=> b!2837913 (=> (not res!1180865) (not e!1797269))))

(assert (=> b!2837913 (= res!1180865 ((_ is Cons!33546) tokens!612))))

(declare-fun d!823328 () Bool)

(declare-fun res!1180863 () Bool)

(assert (=> d!823328 (=> res!1180863 e!1797267)))

(assert (=> d!823328 (= res!1180863 ((_ is Nil!33546) tokensBis!14))))

(assert (=> d!823328 (= (subseq!506 tokensBis!14 tokens!612) e!1797267)))

(assert (= (and d!823328 (not res!1180863)) b!2837913))

(assert (= (and b!2837913 res!1180865) b!2837914))

(assert (= (and b!2837914 res!1180864) b!2837915))

(assert (= (and b!2837914 (not res!1180862)) b!2837916))

(declare-fun m!3267323 () Bool)

(assert (=> b!2837915 m!3267323))

(declare-fun m!3267325 () Bool)

(assert (=> b!2837916 m!3267325))

(assert (=> b!2837842 d!823328))

(declare-fun d!823330 () Bool)

(assert (=> d!823330 (= (inv!45511 (tag!5544 (h!38967 rules!4246))) (= (mod (str.len (value!161983 (tag!5544 (h!38967 rules!4246)))) 2) 0))))

(assert (=> b!2837831 d!823330))

(declare-fun d!823332 () Bool)

(declare-fun res!1180866 () Bool)

(declare-fun e!1797271 () Bool)

(assert (=> d!823332 (=> (not res!1180866) (not e!1797271))))

(assert (=> d!823332 (= res!1180866 (semiInverseModEq!2095 (toChars!6941 (transformation!5040 (h!38967 rules!4246))) (toValue!7082 (transformation!5040 (h!38967 rules!4246)))))))

(assert (=> d!823332 (= (inv!45514 (transformation!5040 (h!38967 rules!4246))) e!1797271)))

(declare-fun b!2837917 () Bool)

(assert (=> b!2837917 (= e!1797271 (equivClasses!1994 (toChars!6941 (transformation!5040 (h!38967 rules!4246))) (toValue!7082 (transformation!5040 (h!38967 rules!4246)))))))

(assert (= (and d!823332 res!1180866) b!2837917))

(declare-fun m!3267327 () Bool)

(assert (=> d!823332 m!3267327))

(declare-fun m!3267329 () Bool)

(assert (=> b!2837917 m!3267329))

(assert (=> b!2837831 d!823332))

(declare-fun d!823334 () Bool)

(declare-fun res!1180869 () Bool)

(declare-fun e!1797274 () Bool)

(assert (=> d!823334 (=> (not res!1180869) (not e!1797274))))

(declare-fun rulesValid!1865 (LexerInterface!4630 List!33671) Bool)

(assert (=> d!823334 (= res!1180869 (rulesValid!1865 thiss!27264 rules!4246))))

(assert (=> d!823334 (= (rulesInvariant!4046 thiss!27264 rules!4246) e!1797274)))

(declare-fun b!2837920 () Bool)

(declare-datatypes ((List!33673 0))(
  ( (Nil!33549) (Cons!33549 (h!38969 String!36871) (t!232154 List!33673)) )
))
(declare-fun noDuplicateTag!1861 (LexerInterface!4630 List!33671 List!33673) Bool)

(assert (=> b!2837920 (= e!1797274 (noDuplicateTag!1861 thiss!27264 rules!4246 Nil!33549))))

(assert (= (and d!823334 res!1180869) b!2837920))

(declare-fun m!3267331 () Bool)

(assert (=> d!823334 m!3267331))

(declare-fun m!3267333 () Bool)

(assert (=> b!2837920 m!3267333))

(assert (=> b!2837832 d!823334))

(declare-fun b!2838043 () Bool)

(declare-fun e!1797377 () Bool)

(assert (=> b!2838043 (= e!1797377 true)))

(declare-fun b!2838042 () Bool)

(declare-fun e!1797376 () Bool)

(assert (=> b!2838042 (= e!1797376 e!1797377)))

(declare-fun b!2838041 () Bool)

(declare-fun e!1797375 () Bool)

(assert (=> b!2838041 (= e!1797375 e!1797376)))

(declare-fun d!823336 () Bool)

(assert (=> d!823336 e!1797375))

(assert (= b!2838042 b!2838043))

(assert (= b!2838041 b!2838042))

(assert (= (and d!823336 ((_ is Cons!33547) rules!4246)) b!2838041))

(declare-fun order!17913 () Int)

(declare-fun lambda!104188 () Int)

(declare-fun order!17911 () Int)

(declare-fun dynLambda!14105 (Int Int) Int)

(declare-fun dynLambda!14106 (Int Int) Int)

(assert (=> b!2838043 (< (dynLambda!14105 order!17911 (toValue!7082 (transformation!5040 (h!38967 rules!4246)))) (dynLambda!14106 order!17913 lambda!104188))))

(declare-fun order!17915 () Int)

(declare-fun dynLambda!14107 (Int Int) Int)

(assert (=> b!2838043 (< (dynLambda!14107 order!17915 (toChars!6941 (transformation!5040 (h!38967 rules!4246)))) (dynLambda!14106 order!17913 lambda!104188))))

(assert (=> d!823336 true))

(declare-fun lt!1011498 () Bool)

(declare-fun forall!6901 (List!33670 Int) Bool)

(assert (=> d!823336 (= lt!1011498 (forall!6901 tokensBis!14 lambda!104188))))

(declare-fun e!1797367 () Bool)

(assert (=> d!823336 (= lt!1011498 e!1797367)))

(declare-fun res!1180903 () Bool)

(assert (=> d!823336 (=> res!1180903 e!1797367)))

(assert (=> d!823336 (= res!1180903 (not ((_ is Cons!33546) tokensBis!14)))))

(assert (=> d!823336 (not (isEmpty!18487 rules!4246))))

(assert (=> d!823336 (= (rulesProduceEachTokenIndividuallyList!1671 thiss!27264 rules!4246 tokensBis!14) lt!1011498)))

(declare-fun b!2838031 () Bool)

(declare-fun e!1797368 () Bool)

(assert (=> b!2838031 (= e!1797367 e!1797368)))

(declare-fun res!1180904 () Bool)

(assert (=> b!2838031 (=> (not res!1180904) (not e!1797368))))

(declare-fun rulesProduceIndividualToken!2148 (LexerInterface!4630 List!33671 Token!9482) Bool)

(assert (=> b!2838031 (= res!1180904 (rulesProduceIndividualToken!2148 thiss!27264 rules!4246 (h!38966 tokensBis!14)))))

(declare-fun b!2838032 () Bool)

(assert (=> b!2838032 (= e!1797368 (rulesProduceEachTokenIndividuallyList!1671 thiss!27264 rules!4246 (t!232099 tokensBis!14)))))

(assert (= (and d!823336 (not res!1180903)) b!2838031))

(assert (= (and b!2838031 res!1180904) b!2838032))

(declare-fun m!3267393 () Bool)

(assert (=> d!823336 m!3267393))

(assert (=> d!823336 m!3267269))

(declare-fun m!3267395 () Bool)

(assert (=> b!2838031 m!3267395))

(declare-fun m!3267397 () Bool)

(assert (=> b!2838032 m!3267397))

(assert (=> b!2837843 d!823336))

(declare-fun d!823358 () Bool)

(declare-fun res!1180905 () Bool)

(declare-fun e!1797378 () Bool)

(assert (=> d!823358 (=> (not res!1180905) (not e!1797378))))

(assert (=> d!823358 (= res!1180905 (not (isEmpty!18489 (originalCharacters!5772 (h!38966 tokens!612)))))))

(assert (=> d!823358 (= (inv!45515 (h!38966 tokens!612)) e!1797378)))

(declare-fun b!2838046 () Bool)

(declare-fun res!1180906 () Bool)

(assert (=> b!2838046 (=> (not res!1180906) (not e!1797378))))

(assert (=> b!2838046 (= res!1180906 (= (originalCharacters!5772 (h!38966 tokens!612)) (list!12524 (dynLambda!14104 (toChars!6941 (transformation!5040 (rule!7468 (h!38966 tokens!612)))) (value!162009 (h!38966 tokens!612))))))))

(declare-fun b!2838047 () Bool)

(assert (=> b!2838047 (= e!1797378 (= (size!26075 (h!38966 tokens!612)) (size!26077 (originalCharacters!5772 (h!38966 tokens!612)))))))

(assert (= (and d!823358 res!1180905) b!2838046))

(assert (= (and b!2838046 res!1180906) b!2838047))

(declare-fun b_lambda!85305 () Bool)

(assert (=> (not b_lambda!85305) (not b!2838046)))

(declare-fun tb!154595 () Bool)

(declare-fun t!232137 () Bool)

(assert (=> (and b!2837836 (= (toChars!6941 (transformation!5040 (h!38967 rules!4246))) (toChars!6941 (transformation!5040 (rule!7468 (h!38966 tokens!612))))) t!232137) tb!154595))

(declare-fun b!2838048 () Bool)

(declare-fun e!1797379 () Bool)

(declare-fun tp!908437 () Bool)

(assert (=> b!2838048 (= e!1797379 (and (inv!45518 (c!458443 (dynLambda!14104 (toChars!6941 (transformation!5040 (rule!7468 (h!38966 tokens!612)))) (value!162009 (h!38966 tokens!612))))) tp!908437))))

(declare-fun result!192812 () Bool)

(assert (=> tb!154595 (= result!192812 (and (inv!45519 (dynLambda!14104 (toChars!6941 (transformation!5040 (rule!7468 (h!38966 tokens!612)))) (value!162009 (h!38966 tokens!612)))) e!1797379))))

(assert (= tb!154595 b!2838048))

(declare-fun m!3267399 () Bool)

(assert (=> b!2838048 m!3267399))

(declare-fun m!3267401 () Bool)

(assert (=> tb!154595 m!3267401))

(assert (=> b!2838046 t!232137))

(declare-fun b_and!207921 () Bool)

(assert (= b_and!207903 (and (=> t!232137 result!192812) b_and!207921)))

(declare-fun t!232139 () Bool)

(declare-fun tb!154597 () Bool)

(assert (=> (and b!2837839 (= (toChars!6941 (transformation!5040 (rule!7468 (h!38966 tokens!612)))) (toChars!6941 (transformation!5040 (rule!7468 (h!38966 tokens!612))))) t!232139) tb!154597))

(declare-fun result!192814 () Bool)

(assert (= result!192814 result!192812))

(assert (=> b!2838046 t!232139))

(declare-fun b_and!207923 () Bool)

(assert (= b_and!207905 (and (=> t!232139 result!192814) b_and!207923)))

(declare-fun t!232141 () Bool)

(declare-fun tb!154599 () Bool)

(assert (=> (and b!2837838 (= (toChars!6941 (transformation!5040 (rule!7468 (h!38966 tokensBis!14)))) (toChars!6941 (transformation!5040 (rule!7468 (h!38966 tokens!612))))) t!232141) tb!154599))

(declare-fun result!192816 () Bool)

(assert (= result!192816 result!192812))

(assert (=> b!2838046 t!232141))

(declare-fun b_and!207925 () Bool)

(assert (= b_and!207907 (and (=> t!232141 result!192816) b_and!207925)))

(declare-fun m!3267403 () Bool)

(assert (=> d!823358 m!3267403))

(declare-fun m!3267405 () Bool)

(assert (=> b!2838046 m!3267405))

(assert (=> b!2838046 m!3267405))

(declare-fun m!3267407 () Bool)

(assert (=> b!2838046 m!3267407))

(declare-fun m!3267409 () Bool)

(assert (=> b!2838047 m!3267409))

(assert (=> b!2837844 d!823358))

(declare-fun d!823360 () Bool)

(assert (=> d!823360 (= (isEmpty!18487 rules!4246) ((_ is Nil!33547) rules!4246))))

(assert (=> b!2837845 d!823360))

(declare-fun bs!518839 () Bool)

(declare-fun d!823362 () Bool)

(assert (= bs!518839 (and d!823362 d!823336)))

(declare-fun lambda!104189 () Int)

(assert (=> bs!518839 (= lambda!104189 lambda!104188)))

(declare-fun b!2838053 () Bool)

(declare-fun e!1797384 () Bool)

(assert (=> b!2838053 (= e!1797384 true)))

(declare-fun b!2838052 () Bool)

(declare-fun e!1797383 () Bool)

(assert (=> b!2838052 (= e!1797383 e!1797384)))

(declare-fun b!2838051 () Bool)

(declare-fun e!1797382 () Bool)

(assert (=> b!2838051 (= e!1797382 e!1797383)))

(assert (=> d!823362 e!1797382))

(assert (= b!2838052 b!2838053))

(assert (= b!2838051 b!2838052))

(assert (= (and d!823362 ((_ is Cons!33547) rules!4246)) b!2838051))

(assert (=> b!2838053 (< (dynLambda!14105 order!17911 (toValue!7082 (transformation!5040 (h!38967 rules!4246)))) (dynLambda!14106 order!17913 lambda!104189))))

(assert (=> b!2838053 (< (dynLambda!14107 order!17915 (toChars!6941 (transformation!5040 (h!38967 rules!4246)))) (dynLambda!14106 order!17913 lambda!104189))))

(assert (=> d!823362 true))

(declare-fun lt!1011499 () Bool)

(assert (=> d!823362 (= lt!1011499 (forall!6901 tokens!612 lambda!104189))))

(declare-fun e!1797380 () Bool)

(assert (=> d!823362 (= lt!1011499 e!1797380)))

(declare-fun res!1180907 () Bool)

(assert (=> d!823362 (=> res!1180907 e!1797380)))

(assert (=> d!823362 (= res!1180907 (not ((_ is Cons!33546) tokens!612)))))

(assert (=> d!823362 (not (isEmpty!18487 rules!4246))))

(assert (=> d!823362 (= (rulesProduceEachTokenIndividuallyList!1671 thiss!27264 rules!4246 tokens!612) lt!1011499)))

(declare-fun b!2838049 () Bool)

(declare-fun e!1797381 () Bool)

(assert (=> b!2838049 (= e!1797380 e!1797381)))

(declare-fun res!1180908 () Bool)

(assert (=> b!2838049 (=> (not res!1180908) (not e!1797381))))

(assert (=> b!2838049 (= res!1180908 (rulesProduceIndividualToken!2148 thiss!27264 rules!4246 (h!38966 tokens!612)))))

(declare-fun b!2838050 () Bool)

(assert (=> b!2838050 (= e!1797381 (rulesProduceEachTokenIndividuallyList!1671 thiss!27264 rules!4246 (t!232099 tokens!612)))))

(assert (= (and d!823362 (not res!1180907)) b!2838049))

(assert (= (and b!2838049 res!1180908) b!2838050))

(declare-fun m!3267411 () Bool)

(assert (=> d!823362 m!3267411))

(assert (=> d!823362 m!3267269))

(declare-fun m!3267413 () Bool)

(assert (=> b!2838049 m!3267413))

(declare-fun m!3267415 () Bool)

(assert (=> b!2838050 m!3267415))

(assert (=> b!2837846 d!823362))

(declare-fun d!823364 () Bool)

(assert (=> d!823364 (= (inv!45511 (tag!5544 (rule!7468 (h!38966 tokens!612)))) (= (mod (str.len (value!161983 (tag!5544 (rule!7468 (h!38966 tokens!612))))) 2) 0))))

(assert (=> b!2837835 d!823364))

(declare-fun d!823366 () Bool)

(declare-fun res!1180909 () Bool)

(declare-fun e!1797385 () Bool)

(assert (=> d!823366 (=> (not res!1180909) (not e!1797385))))

(assert (=> d!823366 (= res!1180909 (semiInverseModEq!2095 (toChars!6941 (transformation!5040 (rule!7468 (h!38966 tokens!612)))) (toValue!7082 (transformation!5040 (rule!7468 (h!38966 tokens!612))))))))

(assert (=> d!823366 (= (inv!45514 (transformation!5040 (rule!7468 (h!38966 tokens!612)))) e!1797385)))

(declare-fun b!2838054 () Bool)

(assert (=> b!2838054 (= e!1797385 (equivClasses!1994 (toChars!6941 (transformation!5040 (rule!7468 (h!38966 tokens!612)))) (toValue!7082 (transformation!5040 (rule!7468 (h!38966 tokens!612))))))))

(assert (= (and d!823366 res!1180909) b!2838054))

(declare-fun m!3267417 () Bool)

(assert (=> d!823366 m!3267417))

(declare-fun m!3267419 () Bool)

(assert (=> b!2838054 m!3267419))

(assert (=> b!2837835 d!823366))

(declare-fun b!2838055 () Bool)

(declare-fun e!1797386 () Bool)

(assert (=> b!2838055 (= e!1797386 (inv!16 (value!162009 (h!38966 tokensBis!14))))))

(declare-fun b!2838056 () Bool)

(declare-fun e!1797388 () Bool)

(assert (=> b!2838056 (= e!1797388 (inv!17 (value!162009 (h!38966 tokensBis!14))))))

(declare-fun d!823368 () Bool)

(declare-fun c!458458 () Bool)

(assert (=> d!823368 (= c!458458 ((_ is IntegerValue!15810) (value!162009 (h!38966 tokensBis!14))))))

(assert (=> d!823368 (= (inv!21 (value!162009 (h!38966 tokensBis!14))) e!1797386)))

(declare-fun b!2838057 () Bool)

(declare-fun res!1180910 () Bool)

(declare-fun e!1797387 () Bool)

(assert (=> b!2838057 (=> res!1180910 e!1797387)))

(assert (=> b!2838057 (= res!1180910 (not ((_ is IntegerValue!15812) (value!162009 (h!38966 tokensBis!14)))))))

(assert (=> b!2838057 (= e!1797388 e!1797387)))

(declare-fun b!2838058 () Bool)

(assert (=> b!2838058 (= e!1797386 e!1797388)))

(declare-fun c!458459 () Bool)

(assert (=> b!2838058 (= c!458459 ((_ is IntegerValue!15811) (value!162009 (h!38966 tokensBis!14))))))

(declare-fun b!2838059 () Bool)

(assert (=> b!2838059 (= e!1797387 (inv!15 (value!162009 (h!38966 tokensBis!14))))))

(assert (= (and d!823368 c!458458) b!2838055))

(assert (= (and d!823368 (not c!458458)) b!2838058))

(assert (= (and b!2838058 c!458459) b!2838056))

(assert (= (and b!2838058 (not c!458459)) b!2838057))

(assert (= (and b!2838057 (not res!1180910)) b!2838059))

(declare-fun m!3267421 () Bool)

(assert (=> b!2838055 m!3267421))

(declare-fun m!3267423 () Bool)

(assert (=> b!2838056 m!3267423))

(declare-fun m!3267425 () Bool)

(assert (=> b!2838059 m!3267425))

(assert (=> b!2837837 d!823368))

(declare-fun b!2838064 () Bool)

(declare-fun e!1797391 () Bool)

(declare-fun tp_is_empty!14603 () Bool)

(declare-fun tp!908440 () Bool)

(assert (=> b!2838064 (= e!1797391 (and tp_is_empty!14603 tp!908440))))

(assert (=> b!2837840 (= tp!908361 e!1797391)))

(assert (= (and b!2837840 ((_ is Cons!33544) (originalCharacters!5772 (h!38966 tokens!612)))) b!2838064))

(declare-fun b!2838076 () Bool)

(declare-fun e!1797394 () Bool)

(declare-fun tp!908453 () Bool)

(declare-fun tp!908454 () Bool)

(assert (=> b!2838076 (= e!1797394 (and tp!908453 tp!908454))))

(declare-fun b!2838077 () Bool)

(declare-fun tp!908451 () Bool)

(assert (=> b!2838077 (= e!1797394 tp!908451)))

(declare-fun b!2838078 () Bool)

(declare-fun tp!908455 () Bool)

(declare-fun tp!908452 () Bool)

(assert (=> b!2838078 (= e!1797394 (and tp!908455 tp!908452))))

(assert (=> b!2837830 (= tp!908357 e!1797394)))

(declare-fun b!2838075 () Bool)

(assert (=> b!2838075 (= e!1797394 tp_is_empty!14603)))

(assert (= (and b!2837830 ((_ is ElementMatch!8431) (regex!5040 (rule!7468 (h!38966 tokensBis!14))))) b!2838075))

(assert (= (and b!2837830 ((_ is Concat!13701) (regex!5040 (rule!7468 (h!38966 tokensBis!14))))) b!2838076))

(assert (= (and b!2837830 ((_ is Star!8431) (regex!5040 (rule!7468 (h!38966 tokensBis!14))))) b!2838077))

(assert (= (and b!2837830 ((_ is Union!8431) (regex!5040 (rule!7468 (h!38966 tokensBis!14))))) b!2838078))

(declare-fun b!2838092 () Bool)

(declare-fun b_free!82009 () Bool)

(declare-fun b_next!82713 () Bool)

(assert (=> b!2838092 (= b_free!82009 (not b_next!82713))))

(declare-fun tp!908466 () Bool)

(declare-fun b_and!207927 () Bool)

(assert (=> b!2838092 (= tp!908466 b_and!207927)))

(declare-fun b_free!82011 () Bool)

(declare-fun b_next!82715 () Bool)

(assert (=> b!2838092 (= b_free!82011 (not b_next!82715))))

(declare-fun t!232143 () Bool)

(declare-fun tb!154601 () Bool)

(assert (=> (and b!2838092 (= (toChars!6941 (transformation!5040 (rule!7468 (h!38966 (t!232099 tokensBis!14))))) (toChars!6941 (transformation!5040 (rule!7468 (h!38966 tokensBis!14))))) t!232143) tb!154601))

(declare-fun result!192824 () Bool)

(assert (= result!192824 result!192784))

(assert (=> b!2837898 t!232143))

(declare-fun tb!154603 () Bool)

(declare-fun t!232145 () Bool)

(assert (=> (and b!2838092 (= (toChars!6941 (transformation!5040 (rule!7468 (h!38966 (t!232099 tokensBis!14))))) (toChars!6941 (transformation!5040 (rule!7468 (h!38966 tokens!612))))) t!232145) tb!154603))

(declare-fun result!192826 () Bool)

(assert (= result!192826 result!192812))

(assert (=> b!2838046 t!232145))

(declare-fun tp!908469 () Bool)

(declare-fun b_and!207929 () Bool)

(assert (=> b!2838092 (= tp!908469 (and (=> t!232143 result!192824) (=> t!232145 result!192826) b_and!207929))))

(declare-fun b!2838091 () Bool)

(declare-fun tp!908467 () Bool)

(declare-fun e!1797412 () Bool)

(declare-fun e!1797409 () Bool)

(assert (=> b!2838091 (= e!1797409 (and tp!908467 (inv!45511 (tag!5544 (rule!7468 (h!38966 (t!232099 tokensBis!14))))) (inv!45514 (transformation!5040 (rule!7468 (h!38966 (t!232099 tokensBis!14))))) e!1797412))))

(declare-fun e!1797411 () Bool)

(assert (=> b!2837841 (= tp!908362 e!1797411)))

(declare-fun tp!908468 () Bool)

(declare-fun b!2838089 () Bool)

(declare-fun e!1797408 () Bool)

(assert (=> b!2838089 (= e!1797411 (and (inv!45515 (h!38966 (t!232099 tokensBis!14))) e!1797408 tp!908468))))

(declare-fun tp!908470 () Bool)

(declare-fun b!2838090 () Bool)

(assert (=> b!2838090 (= e!1797408 (and (inv!21 (value!162009 (h!38966 (t!232099 tokensBis!14)))) e!1797409 tp!908470))))

(assert (=> b!2838092 (= e!1797412 (and tp!908466 tp!908469))))

(assert (= b!2838091 b!2838092))

(assert (= b!2838090 b!2838091))

(assert (= b!2838089 b!2838090))

(assert (= (and b!2837841 ((_ is Cons!33546) (t!232099 tokensBis!14))) b!2838089))

(declare-fun m!3267427 () Bool)

(assert (=> b!2838091 m!3267427))

(declare-fun m!3267429 () Bool)

(assert (=> b!2838091 m!3267429))

(declare-fun m!3267431 () Bool)

(assert (=> b!2838089 m!3267431))

(declare-fun m!3267433 () Bool)

(assert (=> b!2838090 m!3267433))

(declare-fun b!2838094 () Bool)

(declare-fun e!1797413 () Bool)

(declare-fun tp!908473 () Bool)

(declare-fun tp!908474 () Bool)

(assert (=> b!2838094 (= e!1797413 (and tp!908473 tp!908474))))

(declare-fun b!2838095 () Bool)

(declare-fun tp!908471 () Bool)

(assert (=> b!2838095 (= e!1797413 tp!908471)))

(declare-fun b!2838096 () Bool)

(declare-fun tp!908475 () Bool)

(declare-fun tp!908472 () Bool)

(assert (=> b!2838096 (= e!1797413 (and tp!908475 tp!908472))))

(assert (=> b!2837831 (= tp!908356 e!1797413)))

(declare-fun b!2838093 () Bool)

(assert (=> b!2838093 (= e!1797413 tp_is_empty!14603)))

(assert (= (and b!2837831 ((_ is ElementMatch!8431) (regex!5040 (h!38967 rules!4246)))) b!2838093))

(assert (= (and b!2837831 ((_ is Concat!13701) (regex!5040 (h!38967 rules!4246)))) b!2838094))

(assert (= (and b!2837831 ((_ is Star!8431) (regex!5040 (h!38967 rules!4246)))) b!2838095))

(assert (= (and b!2837831 ((_ is Union!8431) (regex!5040 (h!38967 rules!4246)))) b!2838096))

(declare-fun b!2838100 () Bool)

(declare-fun b_free!82013 () Bool)

(declare-fun b_next!82717 () Bool)

(assert (=> b!2838100 (= b_free!82013 (not b_next!82717))))

(declare-fun tp!908476 () Bool)

(declare-fun b_and!207931 () Bool)

(assert (=> b!2838100 (= tp!908476 b_and!207931)))

(declare-fun b_free!82015 () Bool)

(declare-fun b_next!82719 () Bool)

(assert (=> b!2838100 (= b_free!82015 (not b_next!82719))))

(declare-fun tb!154605 () Bool)

(declare-fun t!232147 () Bool)

(assert (=> (and b!2838100 (= (toChars!6941 (transformation!5040 (rule!7468 (h!38966 (t!232099 tokens!612))))) (toChars!6941 (transformation!5040 (rule!7468 (h!38966 tokensBis!14))))) t!232147) tb!154605))

(declare-fun result!192828 () Bool)

(assert (= result!192828 result!192784))

(assert (=> b!2837898 t!232147))

(declare-fun t!232149 () Bool)

(declare-fun tb!154607 () Bool)

(assert (=> (and b!2838100 (= (toChars!6941 (transformation!5040 (rule!7468 (h!38966 (t!232099 tokens!612))))) (toChars!6941 (transformation!5040 (rule!7468 (h!38966 tokens!612))))) t!232149) tb!154607))

(declare-fun result!192830 () Bool)

(assert (= result!192830 result!192812))

(assert (=> b!2838046 t!232149))

(declare-fun tp!908479 () Bool)

(declare-fun b_and!207933 () Bool)

(assert (=> b!2838100 (= tp!908479 (and (=> t!232147 result!192828) (=> t!232149 result!192830) b_and!207933))))

(declare-fun b!2838099 () Bool)

(declare-fun tp!908477 () Bool)

(declare-fun e!1797419 () Bool)

(declare-fun e!1797416 () Bool)

(assert (=> b!2838099 (= e!1797416 (and tp!908477 (inv!45511 (tag!5544 (rule!7468 (h!38966 (t!232099 tokens!612))))) (inv!45514 (transformation!5040 (rule!7468 (h!38966 (t!232099 tokens!612))))) e!1797419))))

(declare-fun e!1797418 () Bool)

(assert (=> b!2837844 (= tp!908358 e!1797418)))

(declare-fun tp!908478 () Bool)

(declare-fun b!2838097 () Bool)

(declare-fun e!1797415 () Bool)

(assert (=> b!2838097 (= e!1797418 (and (inv!45515 (h!38966 (t!232099 tokens!612))) e!1797415 tp!908478))))

(declare-fun b!2838098 () Bool)

(declare-fun tp!908480 () Bool)

(assert (=> b!2838098 (= e!1797415 (and (inv!21 (value!162009 (h!38966 (t!232099 tokens!612)))) e!1797416 tp!908480))))

(assert (=> b!2838100 (= e!1797419 (and tp!908476 tp!908479))))

(assert (= b!2838099 b!2838100))

(assert (= b!2838098 b!2838099))

(assert (= b!2838097 b!2838098))

(assert (= (and b!2837844 ((_ is Cons!33546) (t!232099 tokens!612))) b!2838097))

(declare-fun m!3267435 () Bool)

(assert (=> b!2838099 m!3267435))

(declare-fun m!3267437 () Bool)

(assert (=> b!2838099 m!3267437))

(declare-fun m!3267439 () Bool)

(assert (=> b!2838097 m!3267439))

(declare-fun m!3267441 () Bool)

(assert (=> b!2838098 m!3267441))

(declare-fun b!2838111 () Bool)

(declare-fun b_free!82017 () Bool)

(declare-fun b_next!82721 () Bool)

(assert (=> b!2838111 (= b_free!82017 (not b_next!82721))))

(declare-fun tp!908489 () Bool)

(declare-fun b_and!207935 () Bool)

(assert (=> b!2838111 (= tp!908489 b_and!207935)))

(declare-fun b_free!82019 () Bool)

(declare-fun b_next!82723 () Bool)

(assert (=> b!2838111 (= b_free!82019 (not b_next!82723))))

(declare-fun t!232151 () Bool)

(declare-fun tb!154609 () Bool)

(assert (=> (and b!2838111 (= (toChars!6941 (transformation!5040 (h!38967 (t!232100 rules!4246)))) (toChars!6941 (transformation!5040 (rule!7468 (h!38966 tokensBis!14))))) t!232151) tb!154609))

(declare-fun result!192834 () Bool)

(assert (= result!192834 result!192784))

(assert (=> b!2837898 t!232151))

(declare-fun t!232153 () Bool)

(declare-fun tb!154611 () Bool)

(assert (=> (and b!2838111 (= (toChars!6941 (transformation!5040 (h!38967 (t!232100 rules!4246)))) (toChars!6941 (transformation!5040 (rule!7468 (h!38966 tokens!612))))) t!232153) tb!154611))

(declare-fun result!192836 () Bool)

(assert (= result!192836 result!192812))

(assert (=> b!2838046 t!232153))

(declare-fun tp!908491 () Bool)

(declare-fun b_and!207937 () Bool)

(assert (=> b!2838111 (= tp!908491 (and (=> t!232151 result!192834) (=> t!232153 result!192836) b_and!207937))))

(declare-fun e!1797430 () Bool)

(assert (=> b!2838111 (= e!1797430 (and tp!908489 tp!908491))))

(declare-fun tp!908490 () Bool)

(declare-fun e!1797429 () Bool)

(declare-fun b!2838110 () Bool)

(assert (=> b!2838110 (= e!1797429 (and tp!908490 (inv!45511 (tag!5544 (h!38967 (t!232100 rules!4246)))) (inv!45514 (transformation!5040 (h!38967 (t!232100 rules!4246)))) e!1797430))))

(declare-fun b!2838109 () Bool)

(declare-fun e!1797431 () Bool)

(declare-fun tp!908492 () Bool)

(assert (=> b!2838109 (= e!1797431 (and e!1797429 tp!908492))))

(assert (=> b!2837834 (= tp!908360 e!1797431)))

(assert (= b!2838110 b!2838111))

(assert (= b!2838109 b!2838110))

(assert (= (and b!2837834 ((_ is Cons!33547) (t!232100 rules!4246))) b!2838109))

(declare-fun m!3267443 () Bool)

(assert (=> b!2838110 m!3267443))

(declare-fun m!3267445 () Bool)

(assert (=> b!2838110 m!3267445))

(declare-fun b!2838113 () Bool)

(declare-fun e!1797432 () Bool)

(declare-fun tp!908495 () Bool)

(declare-fun tp!908496 () Bool)

(assert (=> b!2838113 (= e!1797432 (and tp!908495 tp!908496))))

(declare-fun b!2838114 () Bool)

(declare-fun tp!908493 () Bool)

(assert (=> b!2838114 (= e!1797432 tp!908493)))

(declare-fun b!2838115 () Bool)

(declare-fun tp!908497 () Bool)

(declare-fun tp!908494 () Bool)

(assert (=> b!2838115 (= e!1797432 (and tp!908497 tp!908494))))

(assert (=> b!2837835 (= tp!908368 e!1797432)))

(declare-fun b!2838112 () Bool)

(assert (=> b!2838112 (= e!1797432 tp_is_empty!14603)))

(assert (= (and b!2837835 ((_ is ElementMatch!8431) (regex!5040 (rule!7468 (h!38966 tokens!612))))) b!2838112))

(assert (= (and b!2837835 ((_ is Concat!13701) (regex!5040 (rule!7468 (h!38966 tokens!612))))) b!2838113))

(assert (= (and b!2837835 ((_ is Star!8431) (regex!5040 (rule!7468 (h!38966 tokens!612))))) b!2838114))

(assert (= (and b!2837835 ((_ is Union!8431) (regex!5040 (rule!7468 (h!38966 tokens!612))))) b!2838115))

(declare-fun b!2838116 () Bool)

(declare-fun e!1797433 () Bool)

(declare-fun tp!908498 () Bool)

(assert (=> b!2838116 (= e!1797433 (and tp_is_empty!14603 tp!908498))))

(assert (=> b!2837837 (= tp!908365 e!1797433)))

(assert (= (and b!2837837 ((_ is Cons!33544) (originalCharacters!5772 (h!38966 tokensBis!14)))) b!2838116))

(declare-fun b_lambda!85307 () Bool)

(assert (= b_lambda!85305 (or (and b!2837838 b_free!81995 (= (toChars!6941 (transformation!5040 (rule!7468 (h!38966 tokensBis!14)))) (toChars!6941 (transformation!5040 (rule!7468 (h!38966 tokens!612)))))) (and b!2837839 b_free!81991) (and b!2838092 b_free!82011 (= (toChars!6941 (transformation!5040 (rule!7468 (h!38966 (t!232099 tokensBis!14))))) (toChars!6941 (transformation!5040 (rule!7468 (h!38966 tokens!612)))))) (and b!2838100 b_free!82015 (= (toChars!6941 (transformation!5040 (rule!7468 (h!38966 (t!232099 tokens!612))))) (toChars!6941 (transformation!5040 (rule!7468 (h!38966 tokens!612)))))) (and b!2838111 b_free!82019 (= (toChars!6941 (transformation!5040 (h!38967 (t!232100 rules!4246)))) (toChars!6941 (transformation!5040 (rule!7468 (h!38966 tokens!612)))))) (and b!2837836 b_free!81987 (= (toChars!6941 (transformation!5040 (h!38967 rules!4246))) (toChars!6941 (transformation!5040 (rule!7468 (h!38966 tokens!612)))))) b_lambda!85307)))

(declare-fun b_lambda!85309 () Bool)

(assert (= b_lambda!85299 (or (and b!2838100 b_free!82015 (= (toChars!6941 (transformation!5040 (rule!7468 (h!38966 (t!232099 tokens!612))))) (toChars!6941 (transformation!5040 (rule!7468 (h!38966 tokensBis!14)))))) (and b!2838092 b_free!82011 (= (toChars!6941 (transformation!5040 (rule!7468 (h!38966 (t!232099 tokensBis!14))))) (toChars!6941 (transformation!5040 (rule!7468 (h!38966 tokensBis!14)))))) (and b!2837838 b_free!81995) (and b!2838111 b_free!82019 (= (toChars!6941 (transformation!5040 (h!38967 (t!232100 rules!4246)))) (toChars!6941 (transformation!5040 (rule!7468 (h!38966 tokensBis!14)))))) (and b!2837836 b_free!81987 (= (toChars!6941 (transformation!5040 (h!38967 rules!4246))) (toChars!6941 (transformation!5040 (rule!7468 (h!38966 tokensBis!14)))))) (and b!2837839 b_free!81991 (= (toChars!6941 (transformation!5040 (rule!7468 (h!38966 tokens!612)))) (toChars!6941 (transformation!5040 (rule!7468 (h!38966 tokensBis!14)))))) b_lambda!85309)))

(check-sat (not b!2838078) (not b!2838109) b_and!207935 (not b!2838099) (not b!2837899) (not b!2838091) (not b!2837857) (not b!2838055) (not b!2837920) (not b!2838096) (not b!2838113) (not b!2837879) (not b_next!82723) (not b!2838097) (not b!2837858) (not b_next!82721) (not d!823314) b_and!207887 (not b_next!82691) (not d!823366) (not b_next!82689) (not b!2838110) (not b!2838047) b_and!207923 (not b!2838077) (not b!2838050) (not b!2838051) (not b!2838048) (not b_next!82693) (not b!2838094) (not b_lambda!85307) (not b!2838098) (not b!2838049) (not b!2837915) (not tb!154595) (not b!2838115) (not d!823362) b_and!207937 (not b_lambda!85309) (not b!2838041) (not b!2837917) (not d!823358) (not b!2837916) (not b!2838090) (not b!2838032) tp_is_empty!14603 (not b!2837861) (not b_next!82715) b_and!207929 (not b!2837898) (not b!2838031) (not b!2838116) (not b_next!82717) (not b!2838089) (not b!2838076) (not d!823320) b_and!207925 (not b_next!82697) b_and!207921 b_and!207883 (not b_next!82695) (not b!2838059) (not b!2838054) b_and!207931 (not d!823336) (not b_next!82699) (not d!823334) b_and!207879 (not b!2837904) (not b!2838095) (not b!2838056) (not b_next!82719) b_and!207933 (not b!2838046) (not tb!154577) (not b!2838114) (not b!2838064) (not b_next!82713) b_and!207927 (not d!823332))
(check-sat (not b_next!82689) b_and!207923 (not b_next!82693) b_and!207935 b_and!207937 (not b_next!82715) b_and!207929 (not b_next!82717) (not b_next!82695) b_and!207931 (not b_next!82719) b_and!207933 (not b_next!82723) (not b_next!82721) b_and!207887 (not b_next!82691) b_and!207925 (not b_next!82697) b_and!207921 b_and!207883 (not b_next!82699) b_and!207879 (not b_next!82713) b_and!207927)
