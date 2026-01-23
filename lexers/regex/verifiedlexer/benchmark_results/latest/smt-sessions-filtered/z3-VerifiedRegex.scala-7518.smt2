; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!397090 () Bool)

(assert start!397090)

(declare-fun b!4166296 () Bool)

(declare-fun b_free!120335 () Bool)

(declare-fun b_next!121039 () Bool)

(assert (=> b!4166296 (= b_free!120335 (not b_next!121039))))

(declare-fun tp!1272445 () Bool)

(declare-fun b_and!324949 () Bool)

(assert (=> b!4166296 (= tp!1272445 b_and!324949)))

(declare-fun b_free!120337 () Bool)

(declare-fun b_next!121041 () Bool)

(assert (=> b!4166296 (= b_free!120337 (not b_next!121041))))

(declare-fun tp!1272447 () Bool)

(declare-fun b_and!324951 () Bool)

(assert (=> b!4166296 (= tp!1272447 b_and!324951)))

(declare-fun b!4166294 () Bool)

(declare-fun b_free!120339 () Bool)

(declare-fun b_next!121043 () Bool)

(assert (=> b!4166294 (= b_free!120339 (not b_next!121043))))

(declare-fun tp!1272452 () Bool)

(declare-fun b_and!324953 () Bool)

(assert (=> b!4166294 (= tp!1272452 b_and!324953)))

(declare-fun b_free!120341 () Bool)

(declare-fun b_next!121045 () Bool)

(assert (=> b!4166294 (= b_free!120341 (not b_next!121045))))

(declare-fun tp!1272444 () Bool)

(declare-fun b_and!324955 () Bool)

(assert (=> b!4166294 (= tp!1272444 b_and!324955)))

(declare-fun b!4166289 () Bool)

(declare-fun b_free!120343 () Bool)

(declare-fun b_next!121047 () Bool)

(assert (=> b!4166289 (= b_free!120343 (not b_next!121047))))

(declare-fun tp!1272451 () Bool)

(declare-fun b_and!324957 () Bool)

(assert (=> b!4166289 (= tp!1272451 b_and!324957)))

(declare-fun b_free!120345 () Bool)

(declare-fun b_next!121049 () Bool)

(assert (=> b!4166289 (= b_free!120345 (not b_next!121049))))

(declare-fun tp!1272442 () Bool)

(declare-fun b_and!324959 () Bool)

(assert (=> b!4166289 (= tp!1272442 b_and!324959)))

(declare-fun b!4166283 () Bool)

(declare-fun e!2586460 () Bool)

(declare-fun tp_is_empty!21877 () Bool)

(declare-fun tp!1272448 () Bool)

(assert (=> b!4166283 (= e!2586460 (and tp_is_empty!21877 tp!1272448))))

(declare-fun b!4166284 () Bool)

(declare-fun e!2586449 () Bool)

(declare-fun tp!1272454 () Bool)

(assert (=> b!4166284 (= e!2586449 (and tp_is_empty!21877 tp!1272454))))

(declare-fun b!4166285 () Bool)

(declare-datatypes ((C!25104 0))(
  ( (C!25105 (val!14714 Int)) )
))
(declare-datatypes ((List!45741 0))(
  ( (Nil!45617) (Cons!45617 (h!51037 C!25104) (t!343988 List!45741)) )
))
(declare-datatypes ((IArray!27531 0))(
  ( (IArray!27532 (innerList!13823 List!45741)) )
))
(declare-datatypes ((Conc!13763 0))(
  ( (Node!13763 (left!34009 Conc!13763) (right!34339 Conc!13763) (csize!27756 Int) (cheight!13974 Int)) (Leaf!21282 (xs!17069 IArray!27531) (csize!27757 Int)) (Empty!13763) )
))
(declare-datatypes ((BalanceConc!27120 0))(
  ( (BalanceConc!27121 (c!712386 Conc!13763)) )
))
(declare-fun lt!1484158 () BalanceConc!27120)

(declare-fun p!2942 () List!45741)

(declare-fun e!2586454 () Bool)

(declare-datatypes ((List!45742 0))(
  ( (Nil!45618) (Cons!45618 (h!51038 (_ BitVec 16)) (t!343989 List!45742)) )
))
(declare-datatypes ((TokenValue!7782 0))(
  ( (FloatLiteralValue!15564 (text!54919 List!45742)) (TokenValueExt!7781 (__x!27785 Int)) (Broken!38910 (value!235750 List!45742)) (Object!7905) (End!7782) (Def!7782) (Underscore!7782) (Match!7782) (Else!7782) (Error!7782) (Case!7782) (If!7782) (Extends!7782) (Abstract!7782) (Class!7782) (Val!7782) (DelimiterValue!15564 (del!7842 List!45742)) (KeywordValue!7788 (value!235751 List!45742)) (CommentValue!15564 (value!235752 List!45742)) (WhitespaceValue!15564 (value!235753 List!45742)) (IndentationValue!7782 (value!235754 List!45742)) (String!52775) (Int32!7782) (Broken!38911 (value!235755 List!45742)) (Boolean!7783) (Unit!64696) (OperatorValue!7785 (op!7842 List!45742)) (IdentifierValue!15564 (value!235756 List!45742)) (IdentifierValue!15565 (value!235757 List!45742)) (WhitespaceValue!15565 (value!235758 List!45742)) (True!15564) (False!15564) (Broken!38912 (value!235759 List!45742)) (Broken!38913 (value!235760 List!45742)) (True!15565) (RightBrace!7782) (RightBracket!7782) (Colon!7782) (Null!7782) (Comma!7782) (LeftBracket!7782) (False!15565) (LeftBrace!7782) (ImaginaryLiteralValue!7782 (text!54920 List!45742)) (StringLiteralValue!23346 (value!235761 List!45742)) (EOFValue!7782 (value!235762 List!45742)) (IdentValue!7782 (value!235763 List!45742)) (DelimiterValue!15565 (value!235764 List!45742)) (DedentValue!7782 (value!235765 List!45742)) (NewLineValue!7782 (value!235766 List!45742)) (IntegerValue!23346 (value!235767 (_ BitVec 32)) (text!54921 List!45742)) (IntegerValue!23347 (value!235768 Int) (text!54922 List!45742)) (Times!7782) (Or!7782) (Equal!7782) (Minus!7782) (Broken!38914 (value!235769 List!45742)) (And!7782) (Div!7782) (LessEqual!7782) (Mod!7782) (Concat!20239) (Not!7782) (Plus!7782) (SpaceValue!7782 (value!235770 List!45742)) (IntegerValue!23348 (value!235771 Int) (text!54923 List!45742)) (StringLiteralValue!23347 (text!54924 List!45742)) (FloatLiteralValue!15565 (text!54925 List!45742)) (BytesLiteralValue!7782 (value!235772 List!45742)) (CommentValue!15565 (value!235773 List!45742)) (StringLiteralValue!23348 (value!235774 List!45742)) (ErrorTokenValue!7782 (msg!7843 List!45742)) )
))
(declare-datatypes ((TokenValueInjection!14992 0))(
  ( (TokenValueInjection!14993 (toValue!10224 Int) (toChars!10083 Int)) )
))
(declare-datatypes ((Regex!12457 0))(
  ( (ElementMatch!12457 (c!712387 C!25104)) (Concat!20240 (regOne!25426 Regex!12457) (regTwo!25426 Regex!12457)) (EmptyExpr!12457) (Star!12457 (reg!12786 Regex!12457)) (EmptyLang!12457) (Union!12457 (regOne!25427 Regex!12457) (regTwo!25427 Regex!12457)) )
))
(declare-datatypes ((String!52776 0))(
  ( (String!52777 (value!235775 String)) )
))
(declare-datatypes ((Rule!14904 0))(
  ( (Rule!14905 (regex!7552 Regex!12457) (tag!8416 String!52776) (isSeparator!7552 Bool) (transformation!7552 TokenValueInjection!14992)) )
))
(declare-fun r!4097 () Rule!14904)

(declare-datatypes ((Token!13842 0))(
  ( (Token!13843 (value!235776 TokenValue!7782) (rule!10604 Rule!14904) (size!33509 Int) (originalCharacters!7952 List!45741)) )
))
(declare-fun inv!60134 (Token!13842) Bool)

(declare-fun apply!10529 (TokenValueInjection!14992 BalanceConc!27120) TokenValue!7782)

(declare-fun size!33510 (List!45741) Int)

(assert (=> b!4166285 (= e!2586454 (inv!60134 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942)))))

(declare-fun input!3316 () List!45741)

(declare-fun isPrefix!4409 (List!45741 List!45741) Bool)

(assert (=> b!4166285 (isPrefix!4409 input!3316 input!3316)))

(declare-datatypes ((Unit!64697 0))(
  ( (Unit!64698) )
))
(declare-fun lt!1484157 () Unit!64697)

(declare-fun lemmaIsPrefixRefl!2844 (List!45741 List!45741) Unit!64697)

(assert (=> b!4166285 (= lt!1484157 (lemmaIsPrefixRefl!2844 input!3316 input!3316))))

(declare-fun lt!1484156 () Unit!64697)

(declare-fun lemmaSemiInverse!2322 (TokenValueInjection!14992 BalanceConc!27120) Unit!64697)

(assert (=> b!4166285 (= lt!1484156 (lemmaSemiInverse!2322 (transformation!7552 r!4097) lt!1484158))))

(declare-fun seqFromList!5581 (List!45741) BalanceConc!27120)

(assert (=> b!4166285 (= lt!1484158 (seqFromList!5581 p!2942))))

(declare-fun res!1706937 () Bool)

(declare-fun e!2586459 () Bool)

(assert (=> start!397090 (=> (not res!1706937) (not e!2586459))))

(declare-datatypes ((LexerInterface!7145 0))(
  ( (LexerInterfaceExt!7142 (__x!27786 Int)) (Lexer!7143) )
))
(declare-fun thiss!25889 () LexerInterface!7145)

(get-info :version)

(assert (=> start!397090 (= res!1706937 ((_ is Lexer!7143) thiss!25889))))

(assert (=> start!397090 e!2586459))

(declare-fun e!2586462 () Bool)

(assert (=> start!397090 e!2586462))

(declare-fun e!2586451 () Bool)

(assert (=> start!397090 e!2586451))

(assert (=> start!397090 e!2586460))

(assert (=> start!397090 e!2586449))

(assert (=> start!397090 true))

(declare-fun e!2586453 () Bool)

(assert (=> start!397090 e!2586453))

(declare-fun e!2586461 () Bool)

(assert (=> start!397090 e!2586461))

(declare-fun b!4166286 () Bool)

(declare-fun res!1706935 () Bool)

(assert (=> b!4166286 (=> (not res!1706935) (not e!2586459))))

(declare-datatypes ((List!45743 0))(
  ( (Nil!45619) (Cons!45619 (h!51039 Rule!14904) (t!343990 List!45743)) )
))
(declare-fun rules!3820 () List!45743)

(declare-fun contains!9349 (List!45743 Rule!14904) Bool)

(assert (=> b!4166286 (= res!1706935 (contains!9349 rules!3820 r!4097))))

(declare-fun tp!1272450 () Bool)

(declare-fun e!2586452 () Bool)

(declare-fun b!4166287 () Bool)

(declare-fun inv!60131 (String!52776) Bool)

(declare-fun inv!60135 (TokenValueInjection!14992) Bool)

(assert (=> b!4166287 (= e!2586461 (and tp!1272450 (inv!60131 (tag!8416 r!4097)) (inv!60135 (transformation!7552 r!4097)) e!2586452))))

(declare-fun b!4166288 () Bool)

(declare-fun res!1706934 () Bool)

(assert (=> b!4166288 (=> (not res!1706934) (not e!2586459))))

(declare-fun rulesInvariant!6358 (LexerInterface!7145 List!45743) Bool)

(assert (=> b!4166288 (= res!1706934 (rulesInvariant!6358 thiss!25889 rules!3820))))

(declare-fun e!2586450 () Bool)

(assert (=> b!4166289 (= e!2586450 (and tp!1272451 tp!1272442))))

(declare-fun b!4166290 () Bool)

(declare-fun tp!1272443 () Bool)

(assert (=> b!4166290 (= e!2586462 (and tp_is_empty!21877 tp!1272443))))

(declare-fun tp!1272453 () Bool)

(declare-fun b!4166291 () Bool)

(declare-fun e!2586448 () Bool)

(declare-fun rBis!161 () Rule!14904)

(assert (=> b!4166291 (= e!2586453 (and tp!1272453 (inv!60131 (tag!8416 rBis!161)) (inv!60135 (transformation!7552 rBis!161)) e!2586448))))

(declare-fun b!4166292 () Bool)

(declare-fun e!2586457 () Bool)

(declare-fun tp!1272446 () Bool)

(assert (=> b!4166292 (= e!2586451 (and e!2586457 tp!1272446))))

(declare-fun b!4166293 () Bool)

(assert (=> b!4166293 (= e!2586459 (not e!2586454))))

(declare-fun res!1706936 () Bool)

(assert (=> b!4166293 (=> res!1706936 e!2586454)))

(declare-fun matchR!6198 (Regex!12457 List!45741) Bool)

(assert (=> b!4166293 (= res!1706936 (not (matchR!6198 (regex!7552 r!4097) p!2942)))))

(declare-fun ruleValid!3274 (LexerInterface!7145 Rule!14904) Bool)

(assert (=> b!4166293 (ruleValid!3274 thiss!25889 r!4097)))

(declare-fun lt!1484155 () Unit!64697)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2312 (LexerInterface!7145 Rule!14904 List!45743) Unit!64697)

(assert (=> b!4166293 (= lt!1484155 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2312 thiss!25889 r!4097 rules!3820))))

(assert (=> b!4166294 (= e!2586452 (and tp!1272452 tp!1272444))))

(declare-fun b!4166295 () Bool)

(declare-fun res!1706933 () Bool)

(assert (=> b!4166295 (=> (not res!1706933) (not e!2586459))))

(assert (=> b!4166295 (= res!1706933 (isPrefix!4409 p!2942 input!3316))))

(assert (=> b!4166296 (= e!2586448 (and tp!1272445 tp!1272447))))

(declare-fun b!4166297 () Bool)

(declare-fun res!1706940 () Bool)

(assert (=> b!4166297 (=> (not res!1706940) (not e!2586459))))

(declare-fun pBis!100 () List!45741)

(assert (=> b!4166297 (= res!1706940 (isPrefix!4409 pBis!100 input!3316))))

(declare-fun b!4166298 () Bool)

(declare-fun res!1706939 () Bool)

(assert (=> b!4166298 (=> (not res!1706939) (not e!2586459))))

(declare-fun isEmpty!26997 (List!45743) Bool)

(assert (=> b!4166298 (= res!1706939 (not (isEmpty!26997 rules!3820)))))

(declare-fun b!4166299 () Bool)

(declare-fun res!1706938 () Bool)

(assert (=> b!4166299 (=> (not res!1706938) (not e!2586459))))

(assert (=> b!4166299 (= res!1706938 (contains!9349 rules!3820 rBis!161))))

(declare-fun b!4166300 () Bool)

(declare-fun tp!1272449 () Bool)

(assert (=> b!4166300 (= e!2586457 (and tp!1272449 (inv!60131 (tag!8416 (h!51039 rules!3820))) (inv!60135 (transformation!7552 (h!51039 rules!3820))) e!2586450))))

(assert (= (and start!397090 res!1706937) b!4166295))

(assert (= (and b!4166295 res!1706933) b!4166297))

(assert (= (and b!4166297 res!1706940) b!4166298))

(assert (= (and b!4166298 res!1706939) b!4166288))

(assert (= (and b!4166288 res!1706934) b!4166286))

(assert (= (and b!4166286 res!1706935) b!4166299))

(assert (= (and b!4166299 res!1706938) b!4166293))

(assert (= (and b!4166293 (not res!1706936)) b!4166285))

(assert (= (and start!397090 ((_ is Cons!45617) pBis!100)) b!4166290))

(assert (= b!4166300 b!4166289))

(assert (= b!4166292 b!4166300))

(assert (= (and start!397090 ((_ is Cons!45619) rules!3820)) b!4166292))

(assert (= (and start!397090 ((_ is Cons!45617) p!2942)) b!4166283))

(assert (= (and start!397090 ((_ is Cons!45617) input!3316)) b!4166284))

(assert (= b!4166291 b!4166296))

(assert (= start!397090 b!4166291))

(assert (= b!4166287 b!4166294))

(assert (= start!397090 b!4166287))

(declare-fun m!4757995 () Bool)

(assert (=> b!4166285 m!4757995))

(declare-fun m!4757997 () Bool)

(assert (=> b!4166285 m!4757997))

(declare-fun m!4757999 () Bool)

(assert (=> b!4166285 m!4757999))

(declare-fun m!4758001 () Bool)

(assert (=> b!4166285 m!4758001))

(declare-fun m!4758003 () Bool)

(assert (=> b!4166285 m!4758003))

(declare-fun m!4758005 () Bool)

(assert (=> b!4166285 m!4758005))

(declare-fun m!4758007 () Bool)

(assert (=> b!4166285 m!4758007))

(declare-fun m!4758009 () Bool)

(assert (=> b!4166298 m!4758009))

(declare-fun m!4758011 () Bool)

(assert (=> b!4166288 m!4758011))

(declare-fun m!4758013 () Bool)

(assert (=> b!4166295 m!4758013))

(declare-fun m!4758015 () Bool)

(assert (=> b!4166291 m!4758015))

(declare-fun m!4758017 () Bool)

(assert (=> b!4166291 m!4758017))

(declare-fun m!4758019 () Bool)

(assert (=> b!4166287 m!4758019))

(declare-fun m!4758021 () Bool)

(assert (=> b!4166287 m!4758021))

(declare-fun m!4758023 () Bool)

(assert (=> b!4166299 m!4758023))

(declare-fun m!4758025 () Bool)

(assert (=> b!4166293 m!4758025))

(declare-fun m!4758027 () Bool)

(assert (=> b!4166293 m!4758027))

(declare-fun m!4758029 () Bool)

(assert (=> b!4166293 m!4758029))

(declare-fun m!4758031 () Bool)

(assert (=> b!4166286 m!4758031))

(declare-fun m!4758033 () Bool)

(assert (=> b!4166297 m!4758033))

(declare-fun m!4758035 () Bool)

(assert (=> b!4166300 m!4758035))

(declare-fun m!4758037 () Bool)

(assert (=> b!4166300 m!4758037))

(check-sat (not b!4166286) (not b_next!121043) (not b!4166288) (not b!4166292) (not b!4166295) (not b_next!121049) (not b!4166284) (not b!4166285) (not b!4166283) b_and!324955 b_and!324953 (not b_next!121039) (not b_next!121045) (not b!4166299) b_and!324949 b_and!324957 (not b!4166293) (not b_next!121047) (not b!4166298) (not b!4166290) b_and!324959 (not b!4166287) (not b!4166297) tp_is_empty!21877 (not b!4166300) (not b!4166291) b_and!324951 (not b_next!121041))
(check-sat (not b_next!121045) (not b_next!121043) (not b_next!121047) (not b_next!121049) b_and!324959 b_and!324955 b_and!324953 (not b_next!121039) b_and!324949 b_and!324957 b_and!324951 (not b_next!121041))
(get-model)

(declare-fun d!1231169 () Bool)

(declare-fun e!2586479 () Bool)

(assert (=> d!1231169 e!2586479))

(declare-fun res!1706969 () Bool)

(assert (=> d!1231169 (=> res!1706969 e!2586479)))

(declare-fun lt!1484164 () Bool)

(assert (=> d!1231169 (= res!1706969 (not lt!1484164))))

(declare-fun e!2586478 () Bool)

(assert (=> d!1231169 (= lt!1484164 e!2586478)))

(declare-fun res!1706967 () Bool)

(assert (=> d!1231169 (=> res!1706967 e!2586478)))

(assert (=> d!1231169 (= res!1706967 ((_ is Nil!45617) p!2942))))

(assert (=> d!1231169 (= (isPrefix!4409 p!2942 input!3316) lt!1484164)))

(declare-fun b!4166319 () Bool)

(declare-fun res!1706966 () Bool)

(declare-fun e!2586480 () Bool)

(assert (=> b!4166319 (=> (not res!1706966) (not e!2586480))))

(declare-fun head!8846 (List!45741) C!25104)

(assert (=> b!4166319 (= res!1706966 (= (head!8846 p!2942) (head!8846 input!3316)))))

(declare-fun b!4166321 () Bool)

(assert (=> b!4166321 (= e!2586479 (>= (size!33510 input!3316) (size!33510 p!2942)))))

(declare-fun b!4166320 () Bool)

(declare-fun tail!6693 (List!45741) List!45741)

(assert (=> b!4166320 (= e!2586480 (isPrefix!4409 (tail!6693 p!2942) (tail!6693 input!3316)))))

(declare-fun b!4166318 () Bool)

(assert (=> b!4166318 (= e!2586478 e!2586480)))

(declare-fun res!1706968 () Bool)

(assert (=> b!4166318 (=> (not res!1706968) (not e!2586480))))

(assert (=> b!4166318 (= res!1706968 (not ((_ is Nil!45617) input!3316)))))

(assert (= (and d!1231169 (not res!1706967)) b!4166318))

(assert (= (and b!4166318 res!1706968) b!4166319))

(assert (= (and b!4166319 res!1706966) b!4166320))

(assert (= (and d!1231169 (not res!1706969)) b!4166321))

(declare-fun m!4758049 () Bool)

(assert (=> b!4166319 m!4758049))

(declare-fun m!4758051 () Bool)

(assert (=> b!4166319 m!4758051))

(declare-fun m!4758053 () Bool)

(assert (=> b!4166321 m!4758053))

(assert (=> b!4166321 m!4758007))

(declare-fun m!4758055 () Bool)

(assert (=> b!4166320 m!4758055))

(declare-fun m!4758057 () Bool)

(assert (=> b!4166320 m!4758057))

(assert (=> b!4166320 m!4758055))

(assert (=> b!4166320 m!4758057))

(declare-fun m!4758059 () Bool)

(assert (=> b!4166320 m!4758059))

(assert (=> b!4166295 d!1231169))

(declare-fun b!4166366 () Bool)

(declare-fun e!2586508 () Bool)

(assert (=> b!4166366 (= e!2586508 (= (head!8846 p!2942) (c!712387 (regex!7552 r!4097))))))

(declare-fun b!4166367 () Bool)

(declare-fun e!2586513 () Bool)

(declare-fun lt!1484172 () Bool)

(declare-fun call!290999 () Bool)

(assert (=> b!4166367 (= e!2586513 (= lt!1484172 call!290999))))

(declare-fun b!4166368 () Bool)

(declare-fun res!1707009 () Bool)

(declare-fun e!2586512 () Bool)

(assert (=> b!4166368 (=> res!1707009 e!2586512)))

(declare-fun isEmpty!26999 (List!45741) Bool)

(assert (=> b!4166368 (= res!1707009 (not (isEmpty!26999 (tail!6693 p!2942))))))

(declare-fun b!4166369 () Bool)

(declare-fun e!2586511 () Bool)

(declare-fun derivativeStep!3758 (Regex!12457 C!25104) Regex!12457)

(assert (=> b!4166369 (= e!2586511 (matchR!6198 (derivativeStep!3758 (regex!7552 r!4097) (head!8846 p!2942)) (tail!6693 p!2942)))))

(declare-fun d!1231177 () Bool)

(assert (=> d!1231177 e!2586513))

(declare-fun c!712397 () Bool)

(assert (=> d!1231177 (= c!712397 ((_ is EmptyExpr!12457) (regex!7552 r!4097)))))

(assert (=> d!1231177 (= lt!1484172 e!2586511)))

(declare-fun c!712396 () Bool)

(assert (=> d!1231177 (= c!712396 (isEmpty!26999 p!2942))))

(declare-fun validRegex!5578 (Regex!12457) Bool)

(assert (=> d!1231177 (validRegex!5578 (regex!7552 r!4097))))

(assert (=> d!1231177 (= (matchR!6198 (regex!7552 r!4097) p!2942) lt!1484172)))

(declare-fun b!4166370 () Bool)

(declare-fun res!1707003 () Bool)

(declare-fun e!2586509 () Bool)

(assert (=> b!4166370 (=> res!1707003 e!2586509)))

(assert (=> b!4166370 (= res!1707003 e!2586508)))

(declare-fun res!1707006 () Bool)

(assert (=> b!4166370 (=> (not res!1707006) (not e!2586508))))

(assert (=> b!4166370 (= res!1707006 lt!1484172)))

(declare-fun bm!290994 () Bool)

(assert (=> bm!290994 (= call!290999 (isEmpty!26999 p!2942))))

(declare-fun b!4166371 () Bool)

(declare-fun e!2586510 () Bool)

(assert (=> b!4166371 (= e!2586510 e!2586512)))

(declare-fun res!1707007 () Bool)

(assert (=> b!4166371 (=> res!1707007 e!2586512)))

(assert (=> b!4166371 (= res!1707007 call!290999)))

(declare-fun b!4166372 () Bool)

(declare-fun res!1707005 () Bool)

(assert (=> b!4166372 (=> (not res!1707005) (not e!2586508))))

(assert (=> b!4166372 (= res!1707005 (isEmpty!26999 (tail!6693 p!2942)))))

(declare-fun b!4166373 () Bool)

(declare-fun res!1707002 () Bool)

(assert (=> b!4166373 (=> (not res!1707002) (not e!2586508))))

(assert (=> b!4166373 (= res!1707002 (not call!290999))))

(declare-fun b!4166374 () Bool)

(declare-fun nullable!4369 (Regex!12457) Bool)

(assert (=> b!4166374 (= e!2586511 (nullable!4369 (regex!7552 r!4097)))))

(declare-fun b!4166375 () Bool)

(assert (=> b!4166375 (= e!2586509 e!2586510)))

(declare-fun res!1707008 () Bool)

(assert (=> b!4166375 (=> (not res!1707008) (not e!2586510))))

(assert (=> b!4166375 (= res!1707008 (not lt!1484172))))

(declare-fun b!4166376 () Bool)

(assert (=> b!4166376 (= e!2586512 (not (= (head!8846 p!2942) (c!712387 (regex!7552 r!4097)))))))

(declare-fun b!4166377 () Bool)

(declare-fun res!1707004 () Bool)

(assert (=> b!4166377 (=> res!1707004 e!2586509)))

(assert (=> b!4166377 (= res!1707004 (not ((_ is ElementMatch!12457) (regex!7552 r!4097))))))

(declare-fun e!2586514 () Bool)

(assert (=> b!4166377 (= e!2586514 e!2586509)))

(declare-fun b!4166378 () Bool)

(assert (=> b!4166378 (= e!2586513 e!2586514)))

(declare-fun c!712395 () Bool)

(assert (=> b!4166378 (= c!712395 ((_ is EmptyLang!12457) (regex!7552 r!4097)))))

(declare-fun b!4166379 () Bool)

(assert (=> b!4166379 (= e!2586514 (not lt!1484172))))

(assert (= (and d!1231177 c!712396) b!4166374))

(assert (= (and d!1231177 (not c!712396)) b!4166369))

(assert (= (and d!1231177 c!712397) b!4166367))

(assert (= (and d!1231177 (not c!712397)) b!4166378))

(assert (= (and b!4166378 c!712395) b!4166379))

(assert (= (and b!4166378 (not c!712395)) b!4166377))

(assert (= (and b!4166377 (not res!1707004)) b!4166370))

(assert (= (and b!4166370 res!1707006) b!4166373))

(assert (= (and b!4166373 res!1707002) b!4166372))

(assert (= (and b!4166372 res!1707005) b!4166366))

(assert (= (and b!4166370 (not res!1707003)) b!4166375))

(assert (= (and b!4166375 res!1707008) b!4166371))

(assert (= (and b!4166371 (not res!1707007)) b!4166368))

(assert (= (and b!4166368 (not res!1707009)) b!4166376))

(assert (= (or b!4166367 b!4166371 b!4166373) bm!290994))

(assert (=> b!4166369 m!4758049))

(assert (=> b!4166369 m!4758049))

(declare-fun m!4758083 () Bool)

(assert (=> b!4166369 m!4758083))

(assert (=> b!4166369 m!4758055))

(assert (=> b!4166369 m!4758083))

(assert (=> b!4166369 m!4758055))

(declare-fun m!4758085 () Bool)

(assert (=> b!4166369 m!4758085))

(assert (=> b!4166372 m!4758055))

(assert (=> b!4166372 m!4758055))

(declare-fun m!4758087 () Bool)

(assert (=> b!4166372 m!4758087))

(declare-fun m!4758089 () Bool)

(assert (=> bm!290994 m!4758089))

(assert (=> b!4166366 m!4758049))

(assert (=> d!1231177 m!4758089))

(declare-fun m!4758091 () Bool)

(assert (=> d!1231177 m!4758091))

(assert (=> b!4166376 m!4758049))

(declare-fun m!4758093 () Bool)

(assert (=> b!4166374 m!4758093))

(assert (=> b!4166368 m!4758055))

(assert (=> b!4166368 m!4758055))

(assert (=> b!4166368 m!4758087))

(assert (=> b!4166293 d!1231177))

(declare-fun d!1231189 () Bool)

(declare-fun res!1707014 () Bool)

(declare-fun e!2586517 () Bool)

(assert (=> d!1231189 (=> (not res!1707014) (not e!2586517))))

(assert (=> d!1231189 (= res!1707014 (validRegex!5578 (regex!7552 r!4097)))))

(assert (=> d!1231189 (= (ruleValid!3274 thiss!25889 r!4097) e!2586517)))

(declare-fun b!4166384 () Bool)

(declare-fun res!1707015 () Bool)

(assert (=> b!4166384 (=> (not res!1707015) (not e!2586517))))

(assert (=> b!4166384 (= res!1707015 (not (nullable!4369 (regex!7552 r!4097))))))

(declare-fun b!4166385 () Bool)

(assert (=> b!4166385 (= e!2586517 (not (= (tag!8416 r!4097) (String!52777 ""))))))

(assert (= (and d!1231189 res!1707014) b!4166384))

(assert (= (and b!4166384 res!1707015) b!4166385))

(assert (=> d!1231189 m!4758091))

(assert (=> b!4166384 m!4758093))

(assert (=> b!4166293 d!1231189))

(declare-fun d!1231191 () Bool)

(assert (=> d!1231191 (ruleValid!3274 thiss!25889 r!4097)))

(declare-fun lt!1484175 () Unit!64697)

(declare-fun choose!25509 (LexerInterface!7145 Rule!14904 List!45743) Unit!64697)

(assert (=> d!1231191 (= lt!1484175 (choose!25509 thiss!25889 r!4097 rules!3820))))

(assert (=> d!1231191 (contains!9349 rules!3820 r!4097)))

(assert (=> d!1231191 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2312 thiss!25889 r!4097 rules!3820) lt!1484175)))

(declare-fun bs!595834 () Bool)

(assert (= bs!595834 d!1231191))

(assert (=> bs!595834 m!4758027))

(declare-fun m!4758095 () Bool)

(assert (=> bs!595834 m!4758095))

(assert (=> bs!595834 m!4758031))

(assert (=> b!4166293 d!1231191))

(declare-fun d!1231193 () Bool)

(assert (=> d!1231193 (= (inv!60131 (tag!8416 rBis!161)) (= (mod (str.len (value!235775 (tag!8416 rBis!161))) 2) 0))))

(assert (=> b!4166291 d!1231193))

(declare-fun d!1231195 () Bool)

(declare-fun res!1707018 () Bool)

(declare-fun e!2586520 () Bool)

(assert (=> d!1231195 (=> (not res!1707018) (not e!2586520))))

(declare-fun semiInverseModEq!3278 (Int Int) Bool)

(assert (=> d!1231195 (= res!1707018 (semiInverseModEq!3278 (toChars!10083 (transformation!7552 rBis!161)) (toValue!10224 (transformation!7552 rBis!161))))))

(assert (=> d!1231195 (= (inv!60135 (transformation!7552 rBis!161)) e!2586520)))

(declare-fun b!4166388 () Bool)

(declare-fun equivClasses!3177 (Int Int) Bool)

(assert (=> b!4166388 (= e!2586520 (equivClasses!3177 (toChars!10083 (transformation!7552 rBis!161)) (toValue!10224 (transformation!7552 rBis!161))))))

(assert (= (and d!1231195 res!1707018) b!4166388))

(declare-fun m!4758097 () Bool)

(assert (=> d!1231195 m!4758097))

(declare-fun m!4758099 () Bool)

(assert (=> b!4166388 m!4758099))

(assert (=> b!4166291 d!1231195))

(declare-fun d!1231197 () Bool)

(assert (=> d!1231197 (= (inv!60131 (tag!8416 (h!51039 rules!3820))) (= (mod (str.len (value!235775 (tag!8416 (h!51039 rules!3820)))) 2) 0))))

(assert (=> b!4166300 d!1231197))

(declare-fun d!1231199 () Bool)

(declare-fun res!1707019 () Bool)

(declare-fun e!2586521 () Bool)

(assert (=> d!1231199 (=> (not res!1707019) (not e!2586521))))

(assert (=> d!1231199 (= res!1707019 (semiInverseModEq!3278 (toChars!10083 (transformation!7552 (h!51039 rules!3820))) (toValue!10224 (transformation!7552 (h!51039 rules!3820)))))))

(assert (=> d!1231199 (= (inv!60135 (transformation!7552 (h!51039 rules!3820))) e!2586521)))

(declare-fun b!4166389 () Bool)

(assert (=> b!4166389 (= e!2586521 (equivClasses!3177 (toChars!10083 (transformation!7552 (h!51039 rules!3820))) (toValue!10224 (transformation!7552 (h!51039 rules!3820)))))))

(assert (= (and d!1231199 res!1707019) b!4166389))

(declare-fun m!4758101 () Bool)

(assert (=> d!1231199 m!4758101))

(declare-fun m!4758103 () Bool)

(assert (=> b!4166389 m!4758103))

(assert (=> b!4166300 d!1231199))

(declare-fun d!1231201 () Bool)

(assert (=> d!1231201 (= (isEmpty!26997 rules!3820) ((_ is Nil!45619) rules!3820))))

(assert (=> b!4166298 d!1231201))

(declare-fun d!1231203 () Bool)

(declare-fun lt!1484178 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7092 (List!45743) (InoxSet Rule!14904))

(assert (=> d!1231203 (= lt!1484178 (select (content!7092 rules!3820) rBis!161))))

(declare-fun e!2586526 () Bool)

(assert (=> d!1231203 (= lt!1484178 e!2586526)))

(declare-fun res!1707025 () Bool)

(assert (=> d!1231203 (=> (not res!1707025) (not e!2586526))))

(assert (=> d!1231203 (= res!1707025 ((_ is Cons!45619) rules!3820))))

(assert (=> d!1231203 (= (contains!9349 rules!3820 rBis!161) lt!1484178)))

(declare-fun b!4166394 () Bool)

(declare-fun e!2586527 () Bool)

(assert (=> b!4166394 (= e!2586526 e!2586527)))

(declare-fun res!1707024 () Bool)

(assert (=> b!4166394 (=> res!1707024 e!2586527)))

(assert (=> b!4166394 (= res!1707024 (= (h!51039 rules!3820) rBis!161))))

(declare-fun b!4166395 () Bool)

(assert (=> b!4166395 (= e!2586527 (contains!9349 (t!343990 rules!3820) rBis!161))))

(assert (= (and d!1231203 res!1707025) b!4166394))

(assert (= (and b!4166394 (not res!1707024)) b!4166395))

(declare-fun m!4758105 () Bool)

(assert (=> d!1231203 m!4758105))

(declare-fun m!4758107 () Bool)

(assert (=> d!1231203 m!4758107))

(declare-fun m!4758109 () Bool)

(assert (=> b!4166395 m!4758109))

(assert (=> b!4166299 d!1231203))

(declare-fun d!1231205 () Bool)

(declare-fun res!1707028 () Bool)

(declare-fun e!2586530 () Bool)

(assert (=> d!1231205 (=> (not res!1707028) (not e!2586530))))

(declare-fun rulesValid!2946 (LexerInterface!7145 List!45743) Bool)

(assert (=> d!1231205 (= res!1707028 (rulesValid!2946 thiss!25889 rules!3820))))

(assert (=> d!1231205 (= (rulesInvariant!6358 thiss!25889 rules!3820) e!2586530)))

(declare-fun b!4166398 () Bool)

(declare-datatypes ((List!45745 0))(
  ( (Nil!45621) (Cons!45621 (h!51041 String!52776) (t!344040 List!45745)) )
))
(declare-fun noDuplicateTag!3107 (LexerInterface!7145 List!45743 List!45745) Bool)

(assert (=> b!4166398 (= e!2586530 (noDuplicateTag!3107 thiss!25889 rules!3820 Nil!45621))))

(assert (= (and d!1231205 res!1707028) b!4166398))

(declare-fun m!4758111 () Bool)

(assert (=> d!1231205 m!4758111))

(declare-fun m!4758113 () Bool)

(assert (=> b!4166398 m!4758113))

(assert (=> b!4166288 d!1231205))

(declare-fun d!1231207 () Bool)

(declare-fun e!2586532 () Bool)

(assert (=> d!1231207 e!2586532))

(declare-fun res!1707032 () Bool)

(assert (=> d!1231207 (=> res!1707032 e!2586532)))

(declare-fun lt!1484179 () Bool)

(assert (=> d!1231207 (= res!1707032 (not lt!1484179))))

(declare-fun e!2586531 () Bool)

(assert (=> d!1231207 (= lt!1484179 e!2586531)))

(declare-fun res!1707030 () Bool)

(assert (=> d!1231207 (=> res!1707030 e!2586531)))

(assert (=> d!1231207 (= res!1707030 ((_ is Nil!45617) pBis!100))))

(assert (=> d!1231207 (= (isPrefix!4409 pBis!100 input!3316) lt!1484179)))

(declare-fun b!4166400 () Bool)

(declare-fun res!1707029 () Bool)

(declare-fun e!2586533 () Bool)

(assert (=> b!4166400 (=> (not res!1707029) (not e!2586533))))

(assert (=> b!4166400 (= res!1707029 (= (head!8846 pBis!100) (head!8846 input!3316)))))

(declare-fun b!4166402 () Bool)

(assert (=> b!4166402 (= e!2586532 (>= (size!33510 input!3316) (size!33510 pBis!100)))))

(declare-fun b!4166401 () Bool)

(assert (=> b!4166401 (= e!2586533 (isPrefix!4409 (tail!6693 pBis!100) (tail!6693 input!3316)))))

(declare-fun b!4166399 () Bool)

(assert (=> b!4166399 (= e!2586531 e!2586533)))

(declare-fun res!1707031 () Bool)

(assert (=> b!4166399 (=> (not res!1707031) (not e!2586533))))

(assert (=> b!4166399 (= res!1707031 (not ((_ is Nil!45617) input!3316)))))

(assert (= (and d!1231207 (not res!1707030)) b!4166399))

(assert (= (and b!4166399 res!1707031) b!4166400))

(assert (= (and b!4166400 res!1707029) b!4166401))

(assert (= (and d!1231207 (not res!1707032)) b!4166402))

(declare-fun m!4758115 () Bool)

(assert (=> b!4166400 m!4758115))

(assert (=> b!4166400 m!4758051))

(assert (=> b!4166402 m!4758053))

(declare-fun m!4758117 () Bool)

(assert (=> b!4166402 m!4758117))

(declare-fun m!4758119 () Bool)

(assert (=> b!4166401 m!4758119))

(assert (=> b!4166401 m!4758057))

(assert (=> b!4166401 m!4758119))

(assert (=> b!4166401 m!4758057))

(declare-fun m!4758121 () Bool)

(assert (=> b!4166401 m!4758121))

(assert (=> b!4166297 d!1231207))

(declare-fun d!1231209 () Bool)

(declare-fun lt!1484180 () Bool)

(assert (=> d!1231209 (= lt!1484180 (select (content!7092 rules!3820) r!4097))))

(declare-fun e!2586534 () Bool)

(assert (=> d!1231209 (= lt!1484180 e!2586534)))

(declare-fun res!1707034 () Bool)

(assert (=> d!1231209 (=> (not res!1707034) (not e!2586534))))

(assert (=> d!1231209 (= res!1707034 ((_ is Cons!45619) rules!3820))))

(assert (=> d!1231209 (= (contains!9349 rules!3820 r!4097) lt!1484180)))

(declare-fun b!4166403 () Bool)

(declare-fun e!2586535 () Bool)

(assert (=> b!4166403 (= e!2586534 e!2586535)))

(declare-fun res!1707033 () Bool)

(assert (=> b!4166403 (=> res!1707033 e!2586535)))

(assert (=> b!4166403 (= res!1707033 (= (h!51039 rules!3820) r!4097))))

(declare-fun b!4166404 () Bool)

(assert (=> b!4166404 (= e!2586535 (contains!9349 (t!343990 rules!3820) r!4097))))

(assert (= (and d!1231209 res!1707034) b!4166403))

(assert (= (and b!4166403 (not res!1707033)) b!4166404))

(assert (=> d!1231209 m!4758105))

(declare-fun m!4758123 () Bool)

(assert (=> d!1231209 m!4758123))

(declare-fun m!4758125 () Bool)

(assert (=> b!4166404 m!4758125))

(assert (=> b!4166286 d!1231209))

(declare-fun d!1231211 () Bool)

(assert (=> d!1231211 (= (inv!60131 (tag!8416 r!4097)) (= (mod (str.len (value!235775 (tag!8416 r!4097))) 2) 0))))

(assert (=> b!4166287 d!1231211))

(declare-fun d!1231213 () Bool)

(declare-fun res!1707035 () Bool)

(declare-fun e!2586536 () Bool)

(assert (=> d!1231213 (=> (not res!1707035) (not e!2586536))))

(assert (=> d!1231213 (= res!1707035 (semiInverseModEq!3278 (toChars!10083 (transformation!7552 r!4097)) (toValue!10224 (transformation!7552 r!4097))))))

(assert (=> d!1231213 (= (inv!60135 (transformation!7552 r!4097)) e!2586536)))

(declare-fun b!4166405 () Bool)

(assert (=> b!4166405 (= e!2586536 (equivClasses!3177 (toChars!10083 (transformation!7552 r!4097)) (toValue!10224 (transformation!7552 r!4097))))))

(assert (= (and d!1231213 res!1707035) b!4166405))

(declare-fun m!4758127 () Bool)

(assert (=> d!1231213 m!4758127))

(declare-fun m!4758129 () Bool)

(assert (=> b!4166405 m!4758129))

(assert (=> b!4166287 d!1231213))

(declare-fun b!4166534 () Bool)

(declare-fun e!2586610 () Bool)

(assert (=> b!4166534 (= e!2586610 true)))

(declare-fun d!1231215 () Bool)

(assert (=> d!1231215 e!2586610))

(assert (= d!1231215 b!4166534))

(declare-fun order!24039 () Int)

(declare-fun order!24037 () Int)

(declare-fun lambda!129145 () Int)

(declare-fun dynLambda!19539 (Int Int) Int)

(declare-fun dynLambda!19540 (Int Int) Int)

(assert (=> b!4166534 (< (dynLambda!19539 order!24037 (toValue!10224 (transformation!7552 r!4097))) (dynLambda!19540 order!24039 lambda!129145))))

(declare-fun order!24041 () Int)

(declare-fun dynLambda!19541 (Int Int) Int)

(assert (=> b!4166534 (< (dynLambda!19541 order!24041 (toChars!10083 (transformation!7552 r!4097))) (dynLambda!19540 order!24039 lambda!129145))))

(declare-fun list!16511 (BalanceConc!27120) List!45741)

(declare-fun dynLambda!19542 (Int TokenValue!7782) BalanceConc!27120)

(declare-fun dynLambda!19543 (Int BalanceConc!27120) TokenValue!7782)

(assert (=> d!1231215 (= (list!16511 (dynLambda!19542 (toChars!10083 (transformation!7552 r!4097)) (dynLambda!19543 (toValue!10224 (transformation!7552 r!4097)) lt!1484158))) (list!16511 lt!1484158))))

(declare-fun lt!1484199 () Unit!64697)

(declare-fun ForallOf!1012 (Int BalanceConc!27120) Unit!64697)

(assert (=> d!1231215 (= lt!1484199 (ForallOf!1012 lambda!129145 lt!1484158))))

(assert (=> d!1231215 (= (lemmaSemiInverse!2322 (transformation!7552 r!4097) lt!1484158) lt!1484199)))

(declare-fun b_lambda!122325 () Bool)

(assert (=> (not b_lambda!122325) (not d!1231215)))

(declare-fun tb!249491 () Bool)

(declare-fun t!344017 () Bool)

(assert (=> (and b!4166296 (= (toChars!10083 (transformation!7552 rBis!161)) (toChars!10083 (transformation!7552 r!4097))) t!344017) tb!249491))

(declare-fun b!4166539 () Bool)

(declare-fun tp!1272503 () Bool)

(declare-fun e!2586613 () Bool)

(declare-fun inv!60138 (Conc!13763) Bool)

(assert (=> b!4166539 (= e!2586613 (and (inv!60138 (c!712386 (dynLambda!19542 (toChars!10083 (transformation!7552 r!4097)) (dynLambda!19543 (toValue!10224 (transformation!7552 r!4097)) lt!1484158)))) tp!1272503))))

(declare-fun result!303902 () Bool)

(declare-fun inv!60139 (BalanceConc!27120) Bool)

(assert (=> tb!249491 (= result!303902 (and (inv!60139 (dynLambda!19542 (toChars!10083 (transformation!7552 r!4097)) (dynLambda!19543 (toValue!10224 (transformation!7552 r!4097)) lt!1484158))) e!2586613))))

(assert (= tb!249491 b!4166539))

(declare-fun m!4758199 () Bool)

(assert (=> b!4166539 m!4758199))

(declare-fun m!4758201 () Bool)

(assert (=> tb!249491 m!4758201))

(assert (=> d!1231215 t!344017))

(declare-fun b_and!324989 () Bool)

(assert (= b_and!324951 (and (=> t!344017 result!303902) b_and!324989)))

(declare-fun t!344019 () Bool)

(declare-fun tb!249493 () Bool)

(assert (=> (and b!4166294 (= (toChars!10083 (transformation!7552 r!4097)) (toChars!10083 (transformation!7552 r!4097))) t!344019) tb!249493))

(declare-fun result!303906 () Bool)

(assert (= result!303906 result!303902))

(assert (=> d!1231215 t!344019))

(declare-fun b_and!324991 () Bool)

(assert (= b_and!324955 (and (=> t!344019 result!303906) b_and!324991)))

(declare-fun t!344021 () Bool)

(declare-fun tb!249495 () Bool)

(assert (=> (and b!4166289 (= (toChars!10083 (transformation!7552 (h!51039 rules!3820))) (toChars!10083 (transformation!7552 r!4097))) t!344021) tb!249495))

(declare-fun result!303908 () Bool)

(assert (= result!303908 result!303902))

(assert (=> d!1231215 t!344021))

(declare-fun b_and!324993 () Bool)

(assert (= b_and!324959 (and (=> t!344021 result!303908) b_and!324993)))

(declare-fun b_lambda!122327 () Bool)

(assert (=> (not b_lambda!122327) (not d!1231215)))

(declare-fun t!344023 () Bool)

(declare-fun tb!249497 () Bool)

(assert (=> (and b!4166296 (= (toValue!10224 (transformation!7552 rBis!161)) (toValue!10224 (transformation!7552 r!4097))) t!344023) tb!249497))

(declare-fun result!303910 () Bool)

(declare-fun inv!21 (TokenValue!7782) Bool)

(assert (=> tb!249497 (= result!303910 (inv!21 (dynLambda!19543 (toValue!10224 (transformation!7552 r!4097)) lt!1484158)))))

(declare-fun m!4758203 () Bool)

(assert (=> tb!249497 m!4758203))

(assert (=> d!1231215 t!344023))

(declare-fun b_and!324995 () Bool)

(assert (= b_and!324949 (and (=> t!344023 result!303910) b_and!324995)))

(declare-fun t!344025 () Bool)

(declare-fun tb!249499 () Bool)

(assert (=> (and b!4166294 (= (toValue!10224 (transformation!7552 r!4097)) (toValue!10224 (transformation!7552 r!4097))) t!344025) tb!249499))

(declare-fun result!303914 () Bool)

(assert (= result!303914 result!303910))

(assert (=> d!1231215 t!344025))

(declare-fun b_and!324997 () Bool)

(assert (= b_and!324953 (and (=> t!344025 result!303914) b_and!324997)))

(declare-fun t!344027 () Bool)

(declare-fun tb!249501 () Bool)

(assert (=> (and b!4166289 (= (toValue!10224 (transformation!7552 (h!51039 rules!3820))) (toValue!10224 (transformation!7552 r!4097))) t!344027) tb!249501))

(declare-fun result!303916 () Bool)

(assert (= result!303916 result!303910))

(assert (=> d!1231215 t!344027))

(declare-fun b_and!324999 () Bool)

(assert (= b_and!324957 (and (=> t!344027 result!303916) b_and!324999)))

(declare-fun m!4758205 () Bool)

(assert (=> d!1231215 m!4758205))

(declare-fun m!4758207 () Bool)

(assert (=> d!1231215 m!4758207))

(declare-fun m!4758209 () Bool)

(assert (=> d!1231215 m!4758209))

(assert (=> d!1231215 m!4758205))

(declare-fun m!4758211 () Bool)

(assert (=> d!1231215 m!4758211))

(assert (=> d!1231215 m!4758211))

(declare-fun m!4758213 () Bool)

(assert (=> d!1231215 m!4758213))

(assert (=> b!4166285 d!1231215))

(declare-fun d!1231243 () Bool)

(declare-fun lt!1484202 () Int)

(assert (=> d!1231243 (>= lt!1484202 0)))

(declare-fun e!2586619 () Int)

(assert (=> d!1231243 (= lt!1484202 e!2586619)))

(declare-fun c!712413 () Bool)

(assert (=> d!1231243 (= c!712413 ((_ is Nil!45617) p!2942))))

(assert (=> d!1231243 (= (size!33510 p!2942) lt!1484202)))

(declare-fun b!4166546 () Bool)

(assert (=> b!4166546 (= e!2586619 0)))

(declare-fun b!4166547 () Bool)

(assert (=> b!4166547 (= e!2586619 (+ 1 (size!33510 (t!343988 p!2942))))))

(assert (= (and d!1231243 c!712413) b!4166546))

(assert (= (and d!1231243 (not c!712413)) b!4166547))

(declare-fun m!4758215 () Bool)

(assert (=> b!4166547 m!4758215))

(assert (=> b!4166285 d!1231243))

(declare-fun d!1231245 () Bool)

(declare-fun fromListB!2561 (List!45741) BalanceConc!27120)

(assert (=> d!1231245 (= (seqFromList!5581 p!2942) (fromListB!2561 p!2942))))

(declare-fun bs!595838 () Bool)

(assert (= bs!595838 d!1231245))

(declare-fun m!4758217 () Bool)

(assert (=> bs!595838 m!4758217))

(assert (=> b!4166285 d!1231245))

(declare-fun d!1231247 () Bool)

(declare-fun res!1707087 () Bool)

(declare-fun e!2586622 () Bool)

(assert (=> d!1231247 (=> (not res!1707087) (not e!2586622))))

(assert (=> d!1231247 (= res!1707087 (not (isEmpty!26999 (originalCharacters!7952 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942)))))))

(assert (=> d!1231247 (= (inv!60134 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942)) e!2586622)))

(declare-fun b!4166552 () Bool)

(declare-fun res!1707088 () Bool)

(assert (=> b!4166552 (=> (not res!1707088) (not e!2586622))))

(assert (=> b!4166552 (= res!1707088 (= (originalCharacters!7952 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942)) (list!16511 (dynLambda!19542 (toChars!10083 (transformation!7552 (rule!10604 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942)))) (value!235776 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942))))))))

(declare-fun b!4166553 () Bool)

(assert (=> b!4166553 (= e!2586622 (= (size!33509 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942)) (size!33510 (originalCharacters!7952 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942)))))))

(assert (= (and d!1231247 res!1707087) b!4166552))

(assert (= (and b!4166552 res!1707088) b!4166553))

(declare-fun b_lambda!122329 () Bool)

(assert (=> (not b_lambda!122329) (not b!4166552)))

(declare-fun t!344029 () Bool)

(declare-fun tb!249503 () Bool)

(assert (=> (and b!4166296 (= (toChars!10083 (transformation!7552 rBis!161)) (toChars!10083 (transformation!7552 (rule!10604 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942))))) t!344029) tb!249503))

(declare-fun b!4166554 () Bool)

(declare-fun e!2586623 () Bool)

(declare-fun tp!1272504 () Bool)

(assert (=> b!4166554 (= e!2586623 (and (inv!60138 (c!712386 (dynLambda!19542 (toChars!10083 (transformation!7552 (rule!10604 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942)))) (value!235776 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942))))) tp!1272504))))

(declare-fun result!303918 () Bool)

(assert (=> tb!249503 (= result!303918 (and (inv!60139 (dynLambda!19542 (toChars!10083 (transformation!7552 (rule!10604 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942)))) (value!235776 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942)))) e!2586623))))

(assert (= tb!249503 b!4166554))

(declare-fun m!4758219 () Bool)

(assert (=> b!4166554 m!4758219))

(declare-fun m!4758221 () Bool)

(assert (=> tb!249503 m!4758221))

(assert (=> b!4166552 t!344029))

(declare-fun b_and!325001 () Bool)

(assert (= b_and!324989 (and (=> t!344029 result!303918) b_and!325001)))

(declare-fun t!344031 () Bool)

(declare-fun tb!249505 () Bool)

(assert (=> (and b!4166294 (= (toChars!10083 (transformation!7552 r!4097)) (toChars!10083 (transformation!7552 (rule!10604 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942))))) t!344031) tb!249505))

(declare-fun result!303920 () Bool)

(assert (= result!303920 result!303918))

(assert (=> b!4166552 t!344031))

(declare-fun b_and!325003 () Bool)

(assert (= b_and!324991 (and (=> t!344031 result!303920) b_and!325003)))

(declare-fun tb!249507 () Bool)

(declare-fun t!344033 () Bool)

(assert (=> (and b!4166289 (= (toChars!10083 (transformation!7552 (h!51039 rules!3820))) (toChars!10083 (transformation!7552 (rule!10604 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942))))) t!344033) tb!249507))

(declare-fun result!303922 () Bool)

(assert (= result!303922 result!303918))

(assert (=> b!4166552 t!344033))

(declare-fun b_and!325005 () Bool)

(assert (= b_and!324993 (and (=> t!344033 result!303922) b_and!325005)))

(declare-fun m!4758223 () Bool)

(assert (=> d!1231247 m!4758223))

(declare-fun m!4758225 () Bool)

(assert (=> b!4166552 m!4758225))

(assert (=> b!4166552 m!4758225))

(declare-fun m!4758227 () Bool)

(assert (=> b!4166552 m!4758227))

(declare-fun m!4758229 () Bool)

(assert (=> b!4166553 m!4758229))

(assert (=> b!4166285 d!1231247))

(declare-fun d!1231249 () Bool)

(declare-fun e!2586625 () Bool)

(assert (=> d!1231249 e!2586625))

(declare-fun res!1707092 () Bool)

(assert (=> d!1231249 (=> res!1707092 e!2586625)))

(declare-fun lt!1484203 () Bool)

(assert (=> d!1231249 (= res!1707092 (not lt!1484203))))

(declare-fun e!2586624 () Bool)

(assert (=> d!1231249 (= lt!1484203 e!2586624)))

(declare-fun res!1707090 () Bool)

(assert (=> d!1231249 (=> res!1707090 e!2586624)))

(assert (=> d!1231249 (= res!1707090 ((_ is Nil!45617) input!3316))))

(assert (=> d!1231249 (= (isPrefix!4409 input!3316 input!3316) lt!1484203)))

(declare-fun b!4166556 () Bool)

(declare-fun res!1707089 () Bool)

(declare-fun e!2586626 () Bool)

(assert (=> b!4166556 (=> (not res!1707089) (not e!2586626))))

(assert (=> b!4166556 (= res!1707089 (= (head!8846 input!3316) (head!8846 input!3316)))))

(declare-fun b!4166558 () Bool)

(assert (=> b!4166558 (= e!2586625 (>= (size!33510 input!3316) (size!33510 input!3316)))))

(declare-fun b!4166557 () Bool)

(assert (=> b!4166557 (= e!2586626 (isPrefix!4409 (tail!6693 input!3316) (tail!6693 input!3316)))))

(declare-fun b!4166555 () Bool)

(assert (=> b!4166555 (= e!2586624 e!2586626)))

(declare-fun res!1707091 () Bool)

(assert (=> b!4166555 (=> (not res!1707091) (not e!2586626))))

(assert (=> b!4166555 (= res!1707091 (not ((_ is Nil!45617) input!3316)))))

(assert (= (and d!1231249 (not res!1707090)) b!4166555))

(assert (= (and b!4166555 res!1707091) b!4166556))

(assert (= (and b!4166556 res!1707089) b!4166557))

(assert (= (and d!1231249 (not res!1707092)) b!4166558))

(assert (=> b!4166556 m!4758051))

(assert (=> b!4166556 m!4758051))

(assert (=> b!4166558 m!4758053))

(assert (=> b!4166558 m!4758053))

(assert (=> b!4166557 m!4758057))

(assert (=> b!4166557 m!4758057))

(assert (=> b!4166557 m!4758057))

(assert (=> b!4166557 m!4758057))

(declare-fun m!4758231 () Bool)

(assert (=> b!4166557 m!4758231))

(assert (=> b!4166285 d!1231249))

(declare-fun d!1231251 () Bool)

(assert (=> d!1231251 (isPrefix!4409 input!3316 input!3316)))

(declare-fun lt!1484206 () Unit!64697)

(declare-fun choose!25511 (List!45741 List!45741) Unit!64697)

(assert (=> d!1231251 (= lt!1484206 (choose!25511 input!3316 input!3316))))

(assert (=> d!1231251 (= (lemmaIsPrefixRefl!2844 input!3316 input!3316) lt!1484206)))

(declare-fun bs!595839 () Bool)

(assert (= bs!595839 d!1231251))

(assert (=> bs!595839 m!4757995))

(declare-fun m!4758233 () Bool)

(assert (=> bs!595839 m!4758233))

(assert (=> b!4166285 d!1231251))

(declare-fun d!1231253 () Bool)

(assert (=> d!1231253 (= (apply!10529 (transformation!7552 r!4097) lt!1484158) (dynLambda!19543 (toValue!10224 (transformation!7552 r!4097)) lt!1484158))))

(declare-fun b_lambda!122331 () Bool)

(assert (=> (not b_lambda!122331) (not d!1231253)))

(assert (=> d!1231253 t!344023))

(declare-fun b_and!325007 () Bool)

(assert (= b_and!324995 (and (=> t!344023 result!303910) b_and!325007)))

(assert (=> d!1231253 t!344025))

(declare-fun b_and!325009 () Bool)

(assert (= b_and!324997 (and (=> t!344025 result!303914) b_and!325009)))

(assert (=> d!1231253 t!344027))

(declare-fun b_and!325011 () Bool)

(assert (= b_and!324999 (and (=> t!344027 result!303916) b_and!325011)))

(assert (=> d!1231253 m!4758205))

(assert (=> b!4166285 d!1231253))

(declare-fun b!4166563 () Bool)

(declare-fun e!2586629 () Bool)

(declare-fun tp!1272507 () Bool)

(assert (=> b!4166563 (= e!2586629 (and tp_is_empty!21877 tp!1272507))))

(assert (=> b!4166284 (= tp!1272454 e!2586629)))

(assert (= (and b!4166284 ((_ is Cons!45617) (t!343988 input!3316))) b!4166563))

(declare-fun b!4166577 () Bool)

(declare-fun e!2586632 () Bool)

(declare-fun tp!1272518 () Bool)

(declare-fun tp!1272520 () Bool)

(assert (=> b!4166577 (= e!2586632 (and tp!1272518 tp!1272520))))

(declare-fun b!4166576 () Bool)

(declare-fun tp!1272522 () Bool)

(assert (=> b!4166576 (= e!2586632 tp!1272522)))

(declare-fun b!4166575 () Bool)

(declare-fun tp!1272521 () Bool)

(declare-fun tp!1272519 () Bool)

(assert (=> b!4166575 (= e!2586632 (and tp!1272521 tp!1272519))))

(declare-fun b!4166574 () Bool)

(assert (=> b!4166574 (= e!2586632 tp_is_empty!21877)))

(assert (=> b!4166300 (= tp!1272449 e!2586632)))

(assert (= (and b!4166300 ((_ is ElementMatch!12457) (regex!7552 (h!51039 rules!3820)))) b!4166574))

(assert (= (and b!4166300 ((_ is Concat!20240) (regex!7552 (h!51039 rules!3820)))) b!4166575))

(assert (= (and b!4166300 ((_ is Star!12457) (regex!7552 (h!51039 rules!3820)))) b!4166576))

(assert (= (and b!4166300 ((_ is Union!12457) (regex!7552 (h!51039 rules!3820)))) b!4166577))

(declare-fun b!4166578 () Bool)

(declare-fun e!2586633 () Bool)

(declare-fun tp!1272523 () Bool)

(assert (=> b!4166578 (= e!2586633 (and tp_is_empty!21877 tp!1272523))))

(assert (=> b!4166283 (= tp!1272448 e!2586633)))

(assert (= (and b!4166283 ((_ is Cons!45617) (t!343988 p!2942))) b!4166578))

(declare-fun b!4166582 () Bool)

(declare-fun e!2586634 () Bool)

(declare-fun tp!1272524 () Bool)

(declare-fun tp!1272526 () Bool)

(assert (=> b!4166582 (= e!2586634 (and tp!1272524 tp!1272526))))

(declare-fun b!4166581 () Bool)

(declare-fun tp!1272528 () Bool)

(assert (=> b!4166581 (= e!2586634 tp!1272528)))

(declare-fun b!4166580 () Bool)

(declare-fun tp!1272527 () Bool)

(declare-fun tp!1272525 () Bool)

(assert (=> b!4166580 (= e!2586634 (and tp!1272527 tp!1272525))))

(declare-fun b!4166579 () Bool)

(assert (=> b!4166579 (= e!2586634 tp_is_empty!21877)))

(assert (=> b!4166287 (= tp!1272450 e!2586634)))

(assert (= (and b!4166287 ((_ is ElementMatch!12457) (regex!7552 r!4097))) b!4166579))

(assert (= (and b!4166287 ((_ is Concat!20240) (regex!7552 r!4097))) b!4166580))

(assert (= (and b!4166287 ((_ is Star!12457) (regex!7552 r!4097))) b!4166581))

(assert (= (and b!4166287 ((_ is Union!12457) (regex!7552 r!4097))) b!4166582))

(declare-fun b!4166593 () Bool)

(declare-fun b_free!120351 () Bool)

(declare-fun b_next!121055 () Bool)

(assert (=> b!4166593 (= b_free!120351 (not b_next!121055))))

(declare-fun t!344035 () Bool)

(declare-fun tb!249509 () Bool)

(assert (=> (and b!4166593 (= (toValue!10224 (transformation!7552 (h!51039 (t!343990 rules!3820)))) (toValue!10224 (transformation!7552 r!4097))) t!344035) tb!249509))

(declare-fun result!303930 () Bool)

(assert (= result!303930 result!303910))

(assert (=> d!1231215 t!344035))

(assert (=> d!1231253 t!344035))

(declare-fun b_and!325013 () Bool)

(declare-fun tp!1272540 () Bool)

(assert (=> b!4166593 (= tp!1272540 (and (=> t!344035 result!303930) b_and!325013))))

(declare-fun b_free!120353 () Bool)

(declare-fun b_next!121057 () Bool)

(assert (=> b!4166593 (= b_free!120353 (not b_next!121057))))

(declare-fun t!344037 () Bool)

(declare-fun tb!249511 () Bool)

(assert (=> (and b!4166593 (= (toChars!10083 (transformation!7552 (h!51039 (t!343990 rules!3820)))) (toChars!10083 (transformation!7552 r!4097))) t!344037) tb!249511))

(declare-fun result!303932 () Bool)

(assert (= result!303932 result!303902))

(assert (=> d!1231215 t!344037))

(declare-fun tb!249513 () Bool)

(declare-fun t!344039 () Bool)

(assert (=> (and b!4166593 (= (toChars!10083 (transformation!7552 (h!51039 (t!343990 rules!3820)))) (toChars!10083 (transformation!7552 (rule!10604 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942))))) t!344039) tb!249513))

(declare-fun result!303934 () Bool)

(assert (= result!303934 result!303918))

(assert (=> b!4166552 t!344039))

(declare-fun tp!1272539 () Bool)

(declare-fun b_and!325015 () Bool)

(assert (=> b!4166593 (= tp!1272539 (and (=> t!344037 result!303932) (=> t!344039 result!303934) b_and!325015))))

(declare-fun e!2586643 () Bool)

(assert (=> b!4166593 (= e!2586643 (and tp!1272540 tp!1272539))))

(declare-fun b!4166592 () Bool)

(declare-fun e!2586645 () Bool)

(declare-fun tp!1272538 () Bool)

(assert (=> b!4166592 (= e!2586645 (and tp!1272538 (inv!60131 (tag!8416 (h!51039 (t!343990 rules!3820)))) (inv!60135 (transformation!7552 (h!51039 (t!343990 rules!3820)))) e!2586643))))

(declare-fun b!4166591 () Bool)

(declare-fun e!2586644 () Bool)

(declare-fun tp!1272537 () Bool)

(assert (=> b!4166591 (= e!2586644 (and e!2586645 tp!1272537))))

(assert (=> b!4166292 (= tp!1272446 e!2586644)))

(assert (= b!4166592 b!4166593))

(assert (= b!4166591 b!4166592))

(assert (= (and b!4166292 ((_ is Cons!45619) (t!343990 rules!3820))) b!4166591))

(declare-fun m!4758235 () Bool)

(assert (=> b!4166592 m!4758235))

(declare-fun m!4758237 () Bool)

(assert (=> b!4166592 m!4758237))

(declare-fun b!4166594 () Bool)

(declare-fun e!2586647 () Bool)

(declare-fun tp!1272541 () Bool)

(assert (=> b!4166594 (= e!2586647 (and tp_is_empty!21877 tp!1272541))))

(assert (=> b!4166290 (= tp!1272443 e!2586647)))

(assert (= (and b!4166290 ((_ is Cons!45617) (t!343988 pBis!100))) b!4166594))

(declare-fun b!4166598 () Bool)

(declare-fun e!2586648 () Bool)

(declare-fun tp!1272542 () Bool)

(declare-fun tp!1272544 () Bool)

(assert (=> b!4166598 (= e!2586648 (and tp!1272542 tp!1272544))))

(declare-fun b!4166597 () Bool)

(declare-fun tp!1272546 () Bool)

(assert (=> b!4166597 (= e!2586648 tp!1272546)))

(declare-fun b!4166596 () Bool)

(declare-fun tp!1272545 () Bool)

(declare-fun tp!1272543 () Bool)

(assert (=> b!4166596 (= e!2586648 (and tp!1272545 tp!1272543))))

(declare-fun b!4166595 () Bool)

(assert (=> b!4166595 (= e!2586648 tp_is_empty!21877)))

(assert (=> b!4166291 (= tp!1272453 e!2586648)))

(assert (= (and b!4166291 ((_ is ElementMatch!12457) (regex!7552 rBis!161))) b!4166595))

(assert (= (and b!4166291 ((_ is Concat!20240) (regex!7552 rBis!161))) b!4166596))

(assert (= (and b!4166291 ((_ is Star!12457) (regex!7552 rBis!161))) b!4166597))

(assert (= (and b!4166291 ((_ is Union!12457) (regex!7552 rBis!161))) b!4166598))

(declare-fun b_lambda!122333 () Bool)

(assert (= b_lambda!122325 (or (and b!4166296 b_free!120337 (= (toChars!10083 (transformation!7552 rBis!161)) (toChars!10083 (transformation!7552 r!4097)))) (and b!4166294 b_free!120341) (and b!4166289 b_free!120345 (= (toChars!10083 (transformation!7552 (h!51039 rules!3820))) (toChars!10083 (transformation!7552 r!4097)))) (and b!4166593 b_free!120353 (= (toChars!10083 (transformation!7552 (h!51039 (t!343990 rules!3820)))) (toChars!10083 (transformation!7552 r!4097)))) b_lambda!122333)))

(declare-fun b_lambda!122335 () Bool)

(assert (= b_lambda!122331 (or (and b!4166296 b_free!120335 (= (toValue!10224 (transformation!7552 rBis!161)) (toValue!10224 (transformation!7552 r!4097)))) (and b!4166294 b_free!120339) (and b!4166289 b_free!120343 (= (toValue!10224 (transformation!7552 (h!51039 rules!3820))) (toValue!10224 (transformation!7552 r!4097)))) (and b!4166593 b_free!120351 (= (toValue!10224 (transformation!7552 (h!51039 (t!343990 rules!3820)))) (toValue!10224 (transformation!7552 r!4097)))) b_lambda!122335)))

(declare-fun b_lambda!122337 () Bool)

(assert (= b_lambda!122327 (or (and b!4166296 b_free!120335 (= (toValue!10224 (transformation!7552 rBis!161)) (toValue!10224 (transformation!7552 r!4097)))) (and b!4166294 b_free!120339) (and b!4166289 b_free!120343 (= (toValue!10224 (transformation!7552 (h!51039 rules!3820))) (toValue!10224 (transformation!7552 r!4097)))) (and b!4166593 b_free!120351 (= (toValue!10224 (transformation!7552 (h!51039 (t!343990 rules!3820)))) (toValue!10224 (transformation!7552 r!4097)))) b_lambda!122337)))

(check-sat (not b!4166581) (not b!4166592) (not b_lambda!122333) (not b!4166558) (not tb!249491) (not b_next!121039) (not tb!249503) (not b!4166578) (not b!4166401) (not b!4166404) (not b_next!121045) (not b_next!121055) (not b_lambda!122335) b_and!325001 (not d!1231215) (not b!4166539) (not b!4166374) (not tb!249497) (not b!4166576) (not b!4166395) (not b!4166400) (not b!4166319) (not b!4166321) (not b_lambda!122329) (not b!4166388) (not b_next!121057) b_and!325013 (not b_next!121043) b_and!325005 (not b!4166575) (not b!4166554) (not b_lambda!122337) (not b!4166376) (not d!1231247) (not b!4166320) (not b_next!121047) (not b!4166582) (not b!4166591) (not b!4166594) b_and!325015 (not d!1231203) (not d!1231191) (not b!4166547) (not b!4166556) (not b!4166366) (not b!4166563) (not bm!290994) (not b!4166402) (not b!4166553) b_and!325009 (not b!4166597) (not b_next!121049) (not b!4166369) (not b!4166405) (not d!1231189) b_and!325011 (not b!4166557) (not b!4166596) (not b!4166398) (not b!4166577) (not d!1231199) (not b!4166580) (not b!4166389) (not d!1231195) (not b!4166384) (not b!4166552) (not d!1231209) (not d!1231205) (not b!4166372) (not d!1231177) b_and!325007 tp_is_empty!21877 (not d!1231213) b_and!325003 (not d!1231251) (not d!1231245) (not b!4166598) (not b!4166368) (not b_next!121041))
(check-sat (not b_next!121039) b_and!325001 (not b_next!121047) b_and!325015 b_and!325009 (not b_next!121049) b_and!325011 (not b_next!121041) (not b_next!121045) (not b_next!121055) (not b_next!121057) b_and!325013 (not b_next!121043) b_and!325005 b_and!325003 b_and!325007)
(get-model)

(declare-fun d!1231261 () Bool)

(declare-fun nullableFct!1205 (Regex!12457) Bool)

(assert (=> d!1231261 (= (nullable!4369 (regex!7552 r!4097)) (nullableFct!1205 (regex!7552 r!4097)))))

(declare-fun bs!595841 () Bool)

(assert (= bs!595841 d!1231261))

(declare-fun m!4758245 () Bool)

(assert (=> bs!595841 m!4758245))

(assert (=> b!4166374 d!1231261))

(declare-fun d!1231265 () Bool)

(assert (=> d!1231265 (= (isEmpty!26999 (originalCharacters!7952 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942))) ((_ is Nil!45617) (originalCharacters!7952 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942))))))

(assert (=> d!1231247 d!1231265))

(declare-fun d!1231267 () Bool)

(declare-fun list!16512 (Conc!13763) List!45741)

(assert (=> d!1231267 (= (list!16511 (dynLambda!19542 (toChars!10083 (transformation!7552 r!4097)) (dynLambda!19543 (toValue!10224 (transformation!7552 r!4097)) lt!1484158))) (list!16512 (c!712386 (dynLambda!19542 (toChars!10083 (transformation!7552 r!4097)) (dynLambda!19543 (toValue!10224 (transformation!7552 r!4097)) lt!1484158)))))))

(declare-fun bs!595842 () Bool)

(assert (= bs!595842 d!1231267))

(declare-fun m!4758247 () Bool)

(assert (=> bs!595842 m!4758247))

(assert (=> d!1231215 d!1231267))

(declare-fun d!1231269 () Bool)

(assert (=> d!1231269 (= (list!16511 lt!1484158) (list!16512 (c!712386 lt!1484158)))))

(declare-fun bs!595843 () Bool)

(assert (= bs!595843 d!1231269))

(declare-fun m!4758249 () Bool)

(assert (=> bs!595843 m!4758249))

(assert (=> d!1231215 d!1231269))

(declare-fun d!1231271 () Bool)

(declare-fun dynLambda!19544 (Int BalanceConc!27120) Bool)

(assert (=> d!1231271 (dynLambda!19544 lambda!129145 lt!1484158)))

(declare-fun lt!1484211 () Unit!64697)

(declare-fun choose!25512 (Int BalanceConc!27120) Unit!64697)

(assert (=> d!1231271 (= lt!1484211 (choose!25512 lambda!129145 lt!1484158))))

(declare-fun Forall!1555 (Int) Bool)

(assert (=> d!1231271 (Forall!1555 lambda!129145)))

(assert (=> d!1231271 (= (ForallOf!1012 lambda!129145 lt!1484158) lt!1484211)))

(declare-fun b_lambda!122339 () Bool)

(assert (=> (not b_lambda!122339) (not d!1231271)))

(declare-fun bs!595845 () Bool)

(assert (= bs!595845 d!1231271))

(declare-fun m!4758253 () Bool)

(assert (=> bs!595845 m!4758253))

(declare-fun m!4758255 () Bool)

(assert (=> bs!595845 m!4758255))

(declare-fun m!4758257 () Bool)

(assert (=> bs!595845 m!4758257))

(assert (=> d!1231215 d!1231271))

(declare-fun d!1231279 () Bool)

(assert (=> d!1231279 (= (isEmpty!26999 (tail!6693 p!2942)) ((_ is Nil!45617) (tail!6693 p!2942)))))

(assert (=> b!4166372 d!1231279))

(declare-fun d!1231281 () Bool)

(assert (=> d!1231281 (= (tail!6693 p!2942) (t!343988 p!2942))))

(assert (=> b!4166372 d!1231281))

(declare-fun d!1231283 () Bool)

(assert (=> d!1231283 true))

(declare-fun lt!1484216 () Bool)

(declare-fun rulesValidInductive!2783 (LexerInterface!7145 List!45743) Bool)

(assert (=> d!1231283 (= lt!1484216 (rulesValidInductive!2783 thiss!25889 rules!3820))))

(declare-fun lambda!129153 () Int)

(declare-fun forall!8463 (List!45743 Int) Bool)

(assert (=> d!1231283 (= lt!1484216 (forall!8463 rules!3820 lambda!129153))))

(assert (=> d!1231283 (= (rulesValid!2946 thiss!25889 rules!3820) lt!1484216)))

(declare-fun bs!595846 () Bool)

(assert (= bs!595846 d!1231283))

(declare-fun m!4758259 () Bool)

(assert (=> bs!595846 m!4758259))

(declare-fun m!4758261 () Bool)

(assert (=> bs!595846 m!4758261))

(assert (=> d!1231205 d!1231283))

(declare-fun d!1231285 () Bool)

(declare-fun lt!1484218 () Int)

(assert (=> d!1231285 (>= lt!1484218 0)))

(declare-fun e!2586653 () Int)

(assert (=> d!1231285 (= lt!1484218 e!2586653)))

(declare-fun c!712416 () Bool)

(assert (=> d!1231285 (= c!712416 ((_ is Nil!45617) (originalCharacters!7952 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942))))))

(assert (=> d!1231285 (= (size!33510 (originalCharacters!7952 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942))) lt!1484218)))

(declare-fun b!4166609 () Bool)

(assert (=> b!4166609 (= e!2586653 0)))

(declare-fun b!4166610 () Bool)

(assert (=> b!4166610 (= e!2586653 (+ 1 (size!33510 (t!343988 (originalCharacters!7952 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942))))))))

(assert (= (and d!1231285 c!712416) b!4166609))

(assert (= (and d!1231285 (not c!712416)) b!4166610))

(declare-fun m!4758263 () Bool)

(assert (=> b!4166610 m!4758263))

(assert (=> b!4166553 d!1231285))

(assert (=> d!1231191 d!1231189))

(declare-fun d!1231287 () Bool)

(assert (=> d!1231287 (ruleValid!3274 thiss!25889 r!4097)))

(assert (=> d!1231287 true))

(declare-fun _$65!1623 () Unit!64697)

(assert (=> d!1231287 (= (choose!25509 thiss!25889 r!4097 rules!3820) _$65!1623)))

(declare-fun bs!595848 () Bool)

(assert (= bs!595848 d!1231287))

(assert (=> bs!595848 m!4758027))

(assert (=> d!1231191 d!1231287))

(assert (=> d!1231191 d!1231209))

(declare-fun d!1231291 () Bool)

(declare-fun lt!1484219 () Int)

(assert (=> d!1231291 (>= lt!1484219 0)))

(declare-fun e!2586654 () Int)

(assert (=> d!1231291 (= lt!1484219 e!2586654)))

(declare-fun c!712417 () Bool)

(assert (=> d!1231291 (= c!712417 ((_ is Nil!45617) input!3316))))

(assert (=> d!1231291 (= (size!33510 input!3316) lt!1484219)))

(declare-fun b!4166613 () Bool)

(assert (=> b!4166613 (= e!2586654 0)))

(declare-fun b!4166614 () Bool)

(assert (=> b!4166614 (= e!2586654 (+ 1 (size!33510 (t!343988 input!3316))))))

(assert (= (and d!1231291 c!712417) b!4166613))

(assert (= (and d!1231291 (not c!712417)) b!4166614))

(declare-fun m!4758269 () Bool)

(assert (=> b!4166614 m!4758269))

(assert (=> b!4166321 d!1231291))

(assert (=> b!4166321 d!1231243))

(declare-fun b!4166641 () Bool)

(declare-fun e!2586681 () Bool)

(declare-fun call!291010 () Bool)

(assert (=> b!4166641 (= e!2586681 call!291010)))

(declare-fun b!4166642 () Bool)

(declare-fun e!2586676 () Bool)

(declare-fun e!2586679 () Bool)

(assert (=> b!4166642 (= e!2586676 e!2586679)))

(declare-fun c!712422 () Bool)

(assert (=> b!4166642 (= c!712422 ((_ is Star!12457) (regex!7552 r!4097)))))

(declare-fun b!4166643 () Bool)

(declare-fun e!2586677 () Bool)

(assert (=> b!4166643 (= e!2586679 e!2586677)))

(declare-fun c!712423 () Bool)

(assert (=> b!4166643 (= c!712423 ((_ is Union!12457) (regex!7552 r!4097)))))

(declare-fun b!4166644 () Bool)

(declare-fun res!1707113 () Bool)

(declare-fun e!2586682 () Bool)

(assert (=> b!4166644 (=> res!1707113 e!2586682)))

(assert (=> b!4166644 (= res!1707113 (not ((_ is Concat!20240) (regex!7552 r!4097))))))

(assert (=> b!4166644 (= e!2586677 e!2586682)))

(declare-fun b!4166645 () Bool)

(assert (=> b!4166645 (= e!2586682 e!2586681)))

(declare-fun res!1707115 () Bool)

(assert (=> b!4166645 (=> (not res!1707115) (not e!2586681))))

(declare-fun call!291011 () Bool)

(assert (=> b!4166645 (= res!1707115 call!291011)))

(declare-fun b!4166646 () Bool)

(declare-fun e!2586678 () Bool)

(declare-fun call!291009 () Bool)

(assert (=> b!4166646 (= e!2586678 call!291009)))

(declare-fun bm!291004 () Bool)

(assert (=> bm!291004 (= call!291010 (validRegex!5578 (ite c!712423 (regTwo!25427 (regex!7552 r!4097)) (regTwo!25426 (regex!7552 r!4097)))))))

(declare-fun d!1231293 () Bool)

(declare-fun res!1707117 () Bool)

(assert (=> d!1231293 (=> res!1707117 e!2586676)))

(assert (=> d!1231293 (= res!1707117 ((_ is ElementMatch!12457) (regex!7552 r!4097)))))

(assert (=> d!1231293 (= (validRegex!5578 (regex!7552 r!4097)) e!2586676)))

(declare-fun bm!291005 () Bool)

(assert (=> bm!291005 (= call!291009 (validRegex!5578 (ite c!712422 (reg!12786 (regex!7552 r!4097)) (ite c!712423 (regOne!25427 (regex!7552 r!4097)) (regOne!25426 (regex!7552 r!4097))))))))

(declare-fun bm!291006 () Bool)

(assert (=> bm!291006 (= call!291011 call!291009)))

(declare-fun b!4166647 () Bool)

(declare-fun res!1707114 () Bool)

(declare-fun e!2586680 () Bool)

(assert (=> b!4166647 (=> (not res!1707114) (not e!2586680))))

(assert (=> b!4166647 (= res!1707114 call!291011)))

(assert (=> b!4166647 (= e!2586677 e!2586680)))

(declare-fun b!4166648 () Bool)

(assert (=> b!4166648 (= e!2586680 call!291010)))

(declare-fun b!4166649 () Bool)

(assert (=> b!4166649 (= e!2586679 e!2586678)))

(declare-fun res!1707116 () Bool)

(assert (=> b!4166649 (= res!1707116 (not (nullable!4369 (reg!12786 (regex!7552 r!4097)))))))

(assert (=> b!4166649 (=> (not res!1707116) (not e!2586678))))

(assert (= (and d!1231293 (not res!1707117)) b!4166642))

(assert (= (and b!4166642 c!712422) b!4166649))

(assert (= (and b!4166642 (not c!712422)) b!4166643))

(assert (= (and b!4166649 res!1707116) b!4166646))

(assert (= (and b!4166643 c!712423) b!4166647))

(assert (= (and b!4166643 (not c!712423)) b!4166644))

(assert (= (and b!4166647 res!1707114) b!4166648))

(assert (= (and b!4166644 (not res!1707113)) b!4166645))

(assert (= (and b!4166645 res!1707115) b!4166641))

(assert (= (or b!4166648 b!4166641) bm!291004))

(assert (= (or b!4166647 b!4166645) bm!291006))

(assert (= (or b!4166646 bm!291006) bm!291005))

(declare-fun m!4758285 () Bool)

(assert (=> bm!291004 m!4758285))

(declare-fun m!4758287 () Bool)

(assert (=> bm!291005 m!4758287))

(declare-fun m!4758289 () Bool)

(assert (=> b!4166649 m!4758289))

(assert (=> d!1231189 d!1231293))

(declare-fun d!1231303 () Bool)

(declare-fun c!712426 () Bool)

(assert (=> d!1231303 (= c!712426 ((_ is Nil!45619) rules!3820))))

(declare-fun e!2586687 () (InoxSet Rule!14904))

(assert (=> d!1231303 (= (content!7092 rules!3820) e!2586687)))

(declare-fun b!4166656 () Bool)

(assert (=> b!4166656 (= e!2586687 ((as const (Array Rule!14904 Bool)) false))))

(declare-fun b!4166657 () Bool)

(assert (=> b!4166657 (= e!2586687 ((_ map or) (store ((as const (Array Rule!14904 Bool)) false) (h!51039 rules!3820) true) (content!7092 (t!343990 rules!3820))))))

(assert (= (and d!1231303 c!712426) b!4166656))

(assert (= (and d!1231303 (not c!712426)) b!4166657))

(declare-fun m!4758295 () Bool)

(assert (=> b!4166657 m!4758295))

(declare-fun m!4758297 () Bool)

(assert (=> b!4166657 m!4758297))

(assert (=> d!1231209 d!1231303))

(declare-fun d!1231307 () Bool)

(assert (=> d!1231307 (= (head!8846 p!2942) (h!51037 p!2942))))

(assert (=> b!4166319 d!1231307))

(declare-fun d!1231309 () Bool)

(assert (=> d!1231309 (= (head!8846 input!3316) (h!51037 input!3316))))

(assert (=> b!4166319 d!1231309))

(declare-fun d!1231311 () Bool)

(assert (=> d!1231311 true))

(declare-fun order!24045 () Int)

(declare-fun lambda!129157 () Int)

(declare-fun dynLambda!19546 (Int Int) Int)

(assert (=> d!1231311 (< (dynLambda!19539 order!24037 (toValue!10224 (transformation!7552 (h!51039 rules!3820)))) (dynLambda!19546 order!24045 lambda!129157))))

(declare-fun Forall2!1155 (Int) Bool)

(assert (=> d!1231311 (= (equivClasses!3177 (toChars!10083 (transformation!7552 (h!51039 rules!3820))) (toValue!10224 (transformation!7552 (h!51039 rules!3820)))) (Forall2!1155 lambda!129157))))

(declare-fun bs!595849 () Bool)

(assert (= bs!595849 d!1231311))

(declare-fun m!4758299 () Bool)

(assert (=> bs!595849 m!4758299))

(assert (=> b!4166389 d!1231311))

(declare-fun d!1231313 () Bool)

(declare-fun e!2586705 () Bool)

(assert (=> d!1231313 e!2586705))

(declare-fun res!1707135 () Bool)

(assert (=> d!1231313 (=> res!1707135 e!2586705)))

(declare-fun lt!1484221 () Bool)

(assert (=> d!1231313 (= res!1707135 (not lt!1484221))))

(declare-fun e!2586704 () Bool)

(assert (=> d!1231313 (= lt!1484221 e!2586704)))

(declare-fun res!1707133 () Bool)

(assert (=> d!1231313 (=> res!1707133 e!2586704)))

(assert (=> d!1231313 (= res!1707133 ((_ is Nil!45617) (tail!6693 p!2942)))))

(assert (=> d!1231313 (= (isPrefix!4409 (tail!6693 p!2942) (tail!6693 input!3316)) lt!1484221)))

(declare-fun b!4166681 () Bool)

(declare-fun res!1707132 () Bool)

(declare-fun e!2586706 () Bool)

(assert (=> b!4166681 (=> (not res!1707132) (not e!2586706))))

(assert (=> b!4166681 (= res!1707132 (= (head!8846 (tail!6693 p!2942)) (head!8846 (tail!6693 input!3316))))))

(declare-fun b!4166683 () Bool)

(assert (=> b!4166683 (= e!2586705 (>= (size!33510 (tail!6693 input!3316)) (size!33510 (tail!6693 p!2942))))))

(declare-fun b!4166682 () Bool)

(assert (=> b!4166682 (= e!2586706 (isPrefix!4409 (tail!6693 (tail!6693 p!2942)) (tail!6693 (tail!6693 input!3316))))))

(declare-fun b!4166680 () Bool)

(assert (=> b!4166680 (= e!2586704 e!2586706)))

(declare-fun res!1707134 () Bool)

(assert (=> b!4166680 (=> (not res!1707134) (not e!2586706))))

(assert (=> b!4166680 (= res!1707134 (not ((_ is Nil!45617) (tail!6693 input!3316))))))

(assert (= (and d!1231313 (not res!1707133)) b!4166680))

(assert (= (and b!4166680 res!1707134) b!4166681))

(assert (= (and b!4166681 res!1707132) b!4166682))

(assert (= (and d!1231313 (not res!1707135)) b!4166683))

(assert (=> b!4166681 m!4758055))

(declare-fun m!4758301 () Bool)

(assert (=> b!4166681 m!4758301))

(assert (=> b!4166681 m!4758057))

(declare-fun m!4758303 () Bool)

(assert (=> b!4166681 m!4758303))

(assert (=> b!4166683 m!4758057))

(declare-fun m!4758305 () Bool)

(assert (=> b!4166683 m!4758305))

(assert (=> b!4166683 m!4758055))

(declare-fun m!4758307 () Bool)

(assert (=> b!4166683 m!4758307))

(assert (=> b!4166682 m!4758055))

(declare-fun m!4758309 () Bool)

(assert (=> b!4166682 m!4758309))

(assert (=> b!4166682 m!4758057))

(declare-fun m!4758311 () Bool)

(assert (=> b!4166682 m!4758311))

(assert (=> b!4166682 m!4758309))

(assert (=> b!4166682 m!4758311))

(declare-fun m!4758313 () Bool)

(assert (=> b!4166682 m!4758313))

(assert (=> b!4166320 d!1231313))

(assert (=> b!4166320 d!1231281))

(declare-fun d!1231315 () Bool)

(assert (=> d!1231315 (= (tail!6693 input!3316) (t!343988 input!3316))))

(assert (=> b!4166320 d!1231315))

(declare-fun d!1231317 () Bool)

(assert (=> d!1231317 (= (list!16511 (dynLambda!19542 (toChars!10083 (transformation!7552 (rule!10604 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942)))) (value!235776 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942)))) (list!16512 (c!712386 (dynLambda!19542 (toChars!10083 (transformation!7552 (rule!10604 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942)))) (value!235776 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942))))))))

(declare-fun bs!595850 () Bool)

(assert (= bs!595850 d!1231317))

(declare-fun m!4758315 () Bool)

(assert (=> bs!595850 m!4758315))

(assert (=> b!4166552 d!1231317))

(declare-fun d!1231319 () Bool)

(assert (=> d!1231319 (= (isEmpty!26999 p!2942) ((_ is Nil!45617) p!2942))))

(assert (=> bm!290994 d!1231319))

(declare-fun d!1231321 () Bool)

(assert (=> d!1231321 (= (head!8846 pBis!100) (h!51037 pBis!100))))

(assert (=> b!4166400 d!1231321))

(assert (=> b!4166400 d!1231309))

(declare-fun d!1231323 () Bool)

(declare-fun e!2586708 () Bool)

(assert (=> d!1231323 e!2586708))

(declare-fun res!1707139 () Bool)

(assert (=> d!1231323 (=> res!1707139 e!2586708)))

(declare-fun lt!1484222 () Bool)

(assert (=> d!1231323 (= res!1707139 (not lt!1484222))))

(declare-fun e!2586707 () Bool)

(assert (=> d!1231323 (= lt!1484222 e!2586707)))

(declare-fun res!1707137 () Bool)

(assert (=> d!1231323 (=> res!1707137 e!2586707)))

(assert (=> d!1231323 (= res!1707137 ((_ is Nil!45617) (tail!6693 pBis!100)))))

(assert (=> d!1231323 (= (isPrefix!4409 (tail!6693 pBis!100) (tail!6693 input!3316)) lt!1484222)))

(declare-fun b!4166685 () Bool)

(declare-fun res!1707136 () Bool)

(declare-fun e!2586709 () Bool)

(assert (=> b!4166685 (=> (not res!1707136) (not e!2586709))))

(assert (=> b!4166685 (= res!1707136 (= (head!8846 (tail!6693 pBis!100)) (head!8846 (tail!6693 input!3316))))))

(declare-fun b!4166687 () Bool)

(assert (=> b!4166687 (= e!2586708 (>= (size!33510 (tail!6693 input!3316)) (size!33510 (tail!6693 pBis!100))))))

(declare-fun b!4166686 () Bool)

(assert (=> b!4166686 (= e!2586709 (isPrefix!4409 (tail!6693 (tail!6693 pBis!100)) (tail!6693 (tail!6693 input!3316))))))

(declare-fun b!4166684 () Bool)

(assert (=> b!4166684 (= e!2586707 e!2586709)))

(declare-fun res!1707138 () Bool)

(assert (=> b!4166684 (=> (not res!1707138) (not e!2586709))))

(assert (=> b!4166684 (= res!1707138 (not ((_ is Nil!45617) (tail!6693 input!3316))))))

(assert (= (and d!1231323 (not res!1707137)) b!4166684))

(assert (= (and b!4166684 res!1707138) b!4166685))

(assert (= (and b!4166685 res!1707136) b!4166686))

(assert (= (and d!1231323 (not res!1707139)) b!4166687))

(assert (=> b!4166685 m!4758119))

(declare-fun m!4758317 () Bool)

(assert (=> b!4166685 m!4758317))

(assert (=> b!4166685 m!4758057))

(assert (=> b!4166685 m!4758303))

(assert (=> b!4166687 m!4758057))

(assert (=> b!4166687 m!4758305))

(assert (=> b!4166687 m!4758119))

(declare-fun m!4758319 () Bool)

(assert (=> b!4166687 m!4758319))

(assert (=> b!4166686 m!4758119))

(declare-fun m!4758321 () Bool)

(assert (=> b!4166686 m!4758321))

(assert (=> b!4166686 m!4758057))

(assert (=> b!4166686 m!4758311))

(assert (=> b!4166686 m!4758321))

(assert (=> b!4166686 m!4758311))

(declare-fun m!4758323 () Bool)

(assert (=> b!4166686 m!4758323))

(assert (=> b!4166401 d!1231323))

(declare-fun d!1231325 () Bool)

(assert (=> d!1231325 (= (tail!6693 pBis!100) (t!343988 pBis!100))))

(assert (=> b!4166401 d!1231325))

(assert (=> b!4166401 d!1231315))

(declare-fun d!1231327 () Bool)

(declare-fun c!712435 () Bool)

(assert (=> d!1231327 (= c!712435 ((_ is Node!13763) (c!712386 (dynLambda!19542 (toChars!10083 (transformation!7552 r!4097)) (dynLambda!19543 (toValue!10224 (transformation!7552 r!4097)) lt!1484158)))))))

(declare-fun e!2586721 () Bool)

(assert (=> d!1231327 (= (inv!60138 (c!712386 (dynLambda!19542 (toChars!10083 (transformation!7552 r!4097)) (dynLambda!19543 (toValue!10224 (transformation!7552 r!4097)) lt!1484158)))) e!2586721)))

(declare-fun b!4166703 () Bool)

(declare-fun inv!60140 (Conc!13763) Bool)

(assert (=> b!4166703 (= e!2586721 (inv!60140 (c!712386 (dynLambda!19542 (toChars!10083 (transformation!7552 r!4097)) (dynLambda!19543 (toValue!10224 (transformation!7552 r!4097)) lt!1484158)))))))

(declare-fun b!4166704 () Bool)

(declare-fun e!2586722 () Bool)

(assert (=> b!4166704 (= e!2586721 e!2586722)))

(declare-fun res!1707147 () Bool)

(assert (=> b!4166704 (= res!1707147 (not ((_ is Leaf!21282) (c!712386 (dynLambda!19542 (toChars!10083 (transformation!7552 r!4097)) (dynLambda!19543 (toValue!10224 (transformation!7552 r!4097)) lt!1484158))))))))

(assert (=> b!4166704 (=> res!1707147 e!2586722)))

(declare-fun b!4166705 () Bool)

(declare-fun inv!60141 (Conc!13763) Bool)

(assert (=> b!4166705 (= e!2586722 (inv!60141 (c!712386 (dynLambda!19542 (toChars!10083 (transformation!7552 r!4097)) (dynLambda!19543 (toValue!10224 (transformation!7552 r!4097)) lt!1484158)))))))

(assert (= (and d!1231327 c!712435) b!4166703))

(assert (= (and d!1231327 (not c!712435)) b!4166704))

(assert (= (and b!4166704 (not res!1707147)) b!4166705))

(declare-fun m!4758325 () Bool)

(assert (=> b!4166703 m!4758325))

(declare-fun m!4758327 () Bool)

(assert (=> b!4166705 m!4758327))

(assert (=> b!4166539 d!1231327))

(assert (=> b!4166376 d!1231307))

(declare-fun d!1231329 () Bool)

(declare-fun lt!1484223 () Bool)

(assert (=> d!1231329 (= lt!1484223 (select (content!7092 (t!343990 rules!3820)) r!4097))))

(declare-fun e!2586723 () Bool)

(assert (=> d!1231329 (= lt!1484223 e!2586723)))

(declare-fun res!1707149 () Bool)

(assert (=> d!1231329 (=> (not res!1707149) (not e!2586723))))

(assert (=> d!1231329 (= res!1707149 ((_ is Cons!45619) (t!343990 rules!3820)))))

(assert (=> d!1231329 (= (contains!9349 (t!343990 rules!3820) r!4097) lt!1484223)))

(declare-fun b!4166706 () Bool)

(declare-fun e!2586724 () Bool)

(assert (=> b!4166706 (= e!2586723 e!2586724)))

(declare-fun res!1707148 () Bool)

(assert (=> b!4166706 (=> res!1707148 e!2586724)))

(assert (=> b!4166706 (= res!1707148 (= (h!51039 (t!343990 rules!3820)) r!4097))))

(declare-fun b!4166707 () Bool)

(assert (=> b!4166707 (= e!2586724 (contains!9349 (t!343990 (t!343990 rules!3820)) r!4097))))

(assert (= (and d!1231329 res!1707149) b!4166706))

(assert (= (and b!4166706 (not res!1707148)) b!4166707))

(assert (=> d!1231329 m!4758297))

(declare-fun m!4758331 () Bool)

(assert (=> d!1231329 m!4758331))

(declare-fun m!4758333 () Bool)

(assert (=> b!4166707 m!4758333))

(assert (=> b!4166404 d!1231329))

(declare-fun d!1231331 () Bool)

(declare-fun isBalanced!3726 (Conc!13763) Bool)

(assert (=> d!1231331 (= (inv!60139 (dynLambda!19542 (toChars!10083 (transformation!7552 (rule!10604 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942)))) (value!235776 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942)))) (isBalanced!3726 (c!712386 (dynLambda!19542 (toChars!10083 (transformation!7552 (rule!10604 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942)))) (value!235776 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942))))))))

(declare-fun bs!595851 () Bool)

(assert (= bs!595851 d!1231331))

(declare-fun m!4758339 () Bool)

(assert (=> bs!595851 m!4758339))

(assert (=> tb!249503 d!1231331))

(declare-fun d!1231335 () Bool)

(declare-fun res!1707154 () Bool)

(declare-fun e!2586729 () Bool)

(assert (=> d!1231335 (=> res!1707154 e!2586729)))

(assert (=> d!1231335 (= res!1707154 ((_ is Nil!45619) rules!3820))))

(assert (=> d!1231335 (= (noDuplicateTag!3107 thiss!25889 rules!3820 Nil!45621) e!2586729)))

(declare-fun b!4166712 () Bool)

(declare-fun e!2586730 () Bool)

(assert (=> b!4166712 (= e!2586729 e!2586730)))

(declare-fun res!1707155 () Bool)

(assert (=> b!4166712 (=> (not res!1707155) (not e!2586730))))

(declare-fun contains!9351 (List!45745 String!52776) Bool)

(assert (=> b!4166712 (= res!1707155 (not (contains!9351 Nil!45621 (tag!8416 (h!51039 rules!3820)))))))

(declare-fun b!4166713 () Bool)

(assert (=> b!4166713 (= e!2586730 (noDuplicateTag!3107 thiss!25889 (t!343990 rules!3820) (Cons!45621 (tag!8416 (h!51039 rules!3820)) Nil!45621)))))

(assert (= (and d!1231335 (not res!1707154)) b!4166712))

(assert (= (and b!4166712 res!1707155) b!4166713))

(declare-fun m!4758341 () Bool)

(assert (=> b!4166712 m!4758341))

(declare-fun m!4758343 () Bool)

(assert (=> b!4166713 m!4758343))

(assert (=> b!4166398 d!1231335))

(declare-fun d!1231337 () Bool)

(declare-fun lt!1484224 () Bool)

(assert (=> d!1231337 (= lt!1484224 (select (content!7092 (t!343990 rules!3820)) rBis!161))))

(declare-fun e!2586731 () Bool)

(assert (=> d!1231337 (= lt!1484224 e!2586731)))

(declare-fun res!1707157 () Bool)

(assert (=> d!1231337 (=> (not res!1707157) (not e!2586731))))

(assert (=> d!1231337 (= res!1707157 ((_ is Cons!45619) (t!343990 rules!3820)))))

(assert (=> d!1231337 (= (contains!9349 (t!343990 rules!3820) rBis!161) lt!1484224)))

(declare-fun b!4166714 () Bool)

(declare-fun e!2586732 () Bool)

(assert (=> b!4166714 (= e!2586731 e!2586732)))

(declare-fun res!1707156 () Bool)

(assert (=> b!4166714 (=> res!1707156 e!2586732)))

(assert (=> b!4166714 (= res!1707156 (= (h!51039 (t!343990 rules!3820)) rBis!161))))

(declare-fun b!4166715 () Bool)

(assert (=> b!4166715 (= e!2586732 (contains!9349 (t!343990 (t!343990 rules!3820)) rBis!161))))

(assert (= (and d!1231337 res!1707157) b!4166714))

(assert (= (and b!4166714 (not res!1707156)) b!4166715))

(assert (=> d!1231337 m!4758297))

(declare-fun m!4758345 () Bool)

(assert (=> d!1231337 m!4758345))

(declare-fun m!4758347 () Bool)

(assert (=> b!4166715 m!4758347))

(assert (=> b!4166395 d!1231337))

(declare-fun bs!595854 () Bool)

(declare-fun d!1231339 () Bool)

(assert (= bs!595854 (and d!1231339 d!1231215)))

(declare-fun lambda!129163 () Int)

(assert (=> bs!595854 (= lambda!129163 lambda!129145)))

(assert (=> d!1231339 true))

(assert (=> d!1231339 (< (dynLambda!19541 order!24041 (toChars!10083 (transformation!7552 r!4097))) (dynLambda!19540 order!24039 lambda!129163))))

(assert (=> d!1231339 true))

(assert (=> d!1231339 (< (dynLambda!19539 order!24037 (toValue!10224 (transformation!7552 r!4097))) (dynLambda!19540 order!24039 lambda!129163))))

(assert (=> d!1231339 (= (semiInverseModEq!3278 (toChars!10083 (transformation!7552 r!4097)) (toValue!10224 (transformation!7552 r!4097))) (Forall!1555 lambda!129163))))

(declare-fun bs!595855 () Bool)

(assert (= bs!595855 d!1231339))

(declare-fun m!4758351 () Bool)

(assert (=> bs!595855 m!4758351))

(assert (=> d!1231213 d!1231339))

(declare-fun b!4166740 () Bool)

(declare-fun e!2586742 () Bool)

(declare-fun e!2586743 () Bool)

(assert (=> b!4166740 (= e!2586742 e!2586743)))

(declare-fun c!712443 () Bool)

(assert (=> b!4166740 (= c!712443 ((_ is IntegerValue!23347) (dynLambda!19543 (toValue!10224 (transformation!7552 r!4097)) lt!1484158)))))

(declare-fun b!4166741 () Bool)

(declare-fun res!1707160 () Bool)

(declare-fun e!2586744 () Bool)

(assert (=> b!4166741 (=> res!1707160 e!2586744)))

(assert (=> b!4166741 (= res!1707160 (not ((_ is IntegerValue!23348) (dynLambda!19543 (toValue!10224 (transformation!7552 r!4097)) lt!1484158))))))

(assert (=> b!4166741 (= e!2586743 e!2586744)))

(declare-fun b!4166742 () Bool)

(declare-fun inv!17 (TokenValue!7782) Bool)

(assert (=> b!4166742 (= e!2586743 (inv!17 (dynLambda!19543 (toValue!10224 (transformation!7552 r!4097)) lt!1484158)))))

(declare-fun b!4166743 () Bool)

(declare-fun inv!15 (TokenValue!7782) Bool)

(assert (=> b!4166743 (= e!2586744 (inv!15 (dynLambda!19543 (toValue!10224 (transformation!7552 r!4097)) lt!1484158)))))

(declare-fun b!4166744 () Bool)

(declare-fun inv!16 (TokenValue!7782) Bool)

(assert (=> b!4166744 (= e!2586742 (inv!16 (dynLambda!19543 (toValue!10224 (transformation!7552 r!4097)) lt!1484158)))))

(declare-fun d!1231345 () Bool)

(declare-fun c!712444 () Bool)

(assert (=> d!1231345 (= c!712444 ((_ is IntegerValue!23346) (dynLambda!19543 (toValue!10224 (transformation!7552 r!4097)) lt!1484158)))))

(assert (=> d!1231345 (= (inv!21 (dynLambda!19543 (toValue!10224 (transformation!7552 r!4097)) lt!1484158)) e!2586742)))

(assert (= (and d!1231345 c!712444) b!4166744))

(assert (= (and d!1231345 (not c!712444)) b!4166740))

(assert (= (and b!4166740 c!712443) b!4166742))

(assert (= (and b!4166740 (not c!712443)) b!4166741))

(assert (= (and b!4166741 (not res!1707160)) b!4166743))

(declare-fun m!4758357 () Bool)

(assert (=> b!4166742 m!4758357))

(declare-fun m!4758359 () Bool)

(assert (=> b!4166743 m!4758359))

(declare-fun m!4758361 () Bool)

(assert (=> b!4166744 m!4758361))

(assert (=> tb!249497 d!1231345))

(declare-fun d!1231349 () Bool)

(declare-fun lt!1484225 () Int)

(assert (=> d!1231349 (>= lt!1484225 0)))

(declare-fun e!2586745 () Int)

(assert (=> d!1231349 (= lt!1484225 e!2586745)))

(declare-fun c!712445 () Bool)

(assert (=> d!1231349 (= c!712445 ((_ is Nil!45617) (t!343988 p!2942)))))

(assert (=> d!1231349 (= (size!33510 (t!343988 p!2942)) lt!1484225)))

(declare-fun b!4166745 () Bool)

(assert (=> b!4166745 (= e!2586745 0)))

(declare-fun b!4166746 () Bool)

(assert (=> b!4166746 (= e!2586745 (+ 1 (size!33510 (t!343988 (t!343988 p!2942)))))))

(assert (= (and d!1231349 c!712445) b!4166745))

(assert (= (and d!1231349 (not c!712445)) b!4166746))

(declare-fun m!4758363 () Bool)

(assert (=> b!4166746 m!4758363))

(assert (=> b!4166547 d!1231349))

(assert (=> b!4166558 d!1231291))

(assert (=> b!4166556 d!1231309))

(declare-fun d!1231353 () Bool)

(declare-fun c!712446 () Bool)

(assert (=> d!1231353 (= c!712446 ((_ is Node!13763) (c!712386 (dynLambda!19542 (toChars!10083 (transformation!7552 (rule!10604 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942)))) (value!235776 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942))))))))

(declare-fun e!2586746 () Bool)

(assert (=> d!1231353 (= (inv!60138 (c!712386 (dynLambda!19542 (toChars!10083 (transformation!7552 (rule!10604 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942)))) (value!235776 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942))))) e!2586746)))

(declare-fun b!4166747 () Bool)

(assert (=> b!4166747 (= e!2586746 (inv!60140 (c!712386 (dynLambda!19542 (toChars!10083 (transformation!7552 (rule!10604 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942)))) (value!235776 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942))))))))

(declare-fun b!4166748 () Bool)

(declare-fun e!2586747 () Bool)

(assert (=> b!4166748 (= e!2586746 e!2586747)))

(declare-fun res!1707161 () Bool)

(assert (=> b!4166748 (= res!1707161 (not ((_ is Leaf!21282) (c!712386 (dynLambda!19542 (toChars!10083 (transformation!7552 (rule!10604 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942)))) (value!235776 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942)))))))))

(assert (=> b!4166748 (=> res!1707161 e!2586747)))

(declare-fun b!4166749 () Bool)

(assert (=> b!4166749 (= e!2586747 (inv!60141 (c!712386 (dynLambda!19542 (toChars!10083 (transformation!7552 (rule!10604 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942)))) (value!235776 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942))))))))

(assert (= (and d!1231353 c!712446) b!4166747))

(assert (= (and d!1231353 (not c!712446)) b!4166748))

(assert (= (and b!4166748 (not res!1707161)) b!4166749))

(declare-fun m!4758365 () Bool)

(assert (=> b!4166747 m!4758365))

(declare-fun m!4758367 () Bool)

(assert (=> b!4166749 m!4758367))

(assert (=> b!4166554 d!1231353))

(declare-fun d!1231355 () Bool)

(assert (=> d!1231355 (= (inv!60139 (dynLambda!19542 (toChars!10083 (transformation!7552 r!4097)) (dynLambda!19543 (toValue!10224 (transformation!7552 r!4097)) lt!1484158))) (isBalanced!3726 (c!712386 (dynLambda!19542 (toChars!10083 (transformation!7552 r!4097)) (dynLambda!19543 (toValue!10224 (transformation!7552 r!4097)) lt!1484158)))))))

(declare-fun bs!595857 () Bool)

(assert (= bs!595857 d!1231355))

(declare-fun m!4758369 () Bool)

(assert (=> bs!595857 m!4758369))

(assert (=> tb!249491 d!1231355))

(declare-fun d!1231357 () Bool)

(declare-fun e!2586749 () Bool)

(assert (=> d!1231357 e!2586749))

(declare-fun res!1707165 () Bool)

(assert (=> d!1231357 (=> res!1707165 e!2586749)))

(declare-fun lt!1484226 () Bool)

(assert (=> d!1231357 (= res!1707165 (not lt!1484226))))

(declare-fun e!2586748 () Bool)

(assert (=> d!1231357 (= lt!1484226 e!2586748)))

(declare-fun res!1707163 () Bool)

(assert (=> d!1231357 (=> res!1707163 e!2586748)))

(assert (=> d!1231357 (= res!1707163 ((_ is Nil!45617) (tail!6693 input!3316)))))

(assert (=> d!1231357 (= (isPrefix!4409 (tail!6693 input!3316) (tail!6693 input!3316)) lt!1484226)))

(declare-fun b!4166751 () Bool)

(declare-fun res!1707162 () Bool)

(declare-fun e!2586750 () Bool)

(assert (=> b!4166751 (=> (not res!1707162) (not e!2586750))))

(assert (=> b!4166751 (= res!1707162 (= (head!8846 (tail!6693 input!3316)) (head!8846 (tail!6693 input!3316))))))

(declare-fun b!4166753 () Bool)

(assert (=> b!4166753 (= e!2586749 (>= (size!33510 (tail!6693 input!3316)) (size!33510 (tail!6693 input!3316))))))

(declare-fun b!4166752 () Bool)

(assert (=> b!4166752 (= e!2586750 (isPrefix!4409 (tail!6693 (tail!6693 input!3316)) (tail!6693 (tail!6693 input!3316))))))

(declare-fun b!4166750 () Bool)

(assert (=> b!4166750 (= e!2586748 e!2586750)))

(declare-fun res!1707164 () Bool)

(assert (=> b!4166750 (=> (not res!1707164) (not e!2586750))))

(assert (=> b!4166750 (= res!1707164 (not ((_ is Nil!45617) (tail!6693 input!3316))))))

(assert (= (and d!1231357 (not res!1707163)) b!4166750))

(assert (= (and b!4166750 res!1707164) b!4166751))

(assert (= (and b!4166751 res!1707162) b!4166752))

(assert (= (and d!1231357 (not res!1707165)) b!4166753))

(assert (=> b!4166751 m!4758057))

(assert (=> b!4166751 m!4758303))

(assert (=> b!4166751 m!4758057))

(assert (=> b!4166751 m!4758303))

(assert (=> b!4166753 m!4758057))

(assert (=> b!4166753 m!4758305))

(assert (=> b!4166753 m!4758057))

(assert (=> b!4166753 m!4758305))

(assert (=> b!4166752 m!4758057))

(assert (=> b!4166752 m!4758311))

(assert (=> b!4166752 m!4758057))

(assert (=> b!4166752 m!4758311))

(assert (=> b!4166752 m!4758311))

(assert (=> b!4166752 m!4758311))

(declare-fun m!4758371 () Bool)

(assert (=> b!4166752 m!4758371))

(assert (=> b!4166557 d!1231357))

(assert (=> b!4166557 d!1231315))

(declare-fun bs!595860 () Bool)

(declare-fun d!1231359 () Bool)

(assert (= bs!595860 (and d!1231359 d!1231311)))

(declare-fun lambda!129165 () Int)

(assert (=> bs!595860 (= (= (toValue!10224 (transformation!7552 rBis!161)) (toValue!10224 (transformation!7552 (h!51039 rules!3820)))) (= lambda!129165 lambda!129157))))

(assert (=> d!1231359 true))

(assert (=> d!1231359 (< (dynLambda!19539 order!24037 (toValue!10224 (transformation!7552 rBis!161))) (dynLambda!19546 order!24045 lambda!129165))))

(assert (=> d!1231359 (= (equivClasses!3177 (toChars!10083 (transformation!7552 rBis!161)) (toValue!10224 (transformation!7552 rBis!161))) (Forall2!1155 lambda!129165))))

(declare-fun bs!595861 () Bool)

(assert (= bs!595861 d!1231359))

(declare-fun m!4758375 () Bool)

(assert (=> bs!595861 m!4758375))

(assert (=> b!4166388 d!1231359))

(assert (=> d!1231203 d!1231303))

(assert (=> b!4166402 d!1231291))

(declare-fun d!1231363 () Bool)

(declare-fun lt!1484227 () Int)

(assert (=> d!1231363 (>= lt!1484227 0)))

(declare-fun e!2586751 () Int)

(assert (=> d!1231363 (= lt!1484227 e!2586751)))

(declare-fun c!712447 () Bool)

(assert (=> d!1231363 (= c!712447 ((_ is Nil!45617) pBis!100))))

(assert (=> d!1231363 (= (size!33510 pBis!100) lt!1484227)))

(declare-fun b!4166754 () Bool)

(assert (=> b!4166754 (= e!2586751 0)))

(declare-fun b!4166755 () Bool)

(assert (=> b!4166755 (= e!2586751 (+ 1 (size!33510 (t!343988 pBis!100))))))

(assert (= (and d!1231363 c!712447) b!4166754))

(assert (= (and d!1231363 (not c!712447)) b!4166755))

(declare-fun m!4758377 () Bool)

(assert (=> b!4166755 m!4758377))

(assert (=> b!4166402 d!1231363))

(declare-fun bs!595862 () Bool)

(declare-fun d!1231365 () Bool)

(assert (= bs!595862 (and d!1231365 d!1231215)))

(declare-fun lambda!129166 () Int)

(assert (=> bs!595862 (= (and (= (toChars!10083 (transformation!7552 rBis!161)) (toChars!10083 (transformation!7552 r!4097))) (= (toValue!10224 (transformation!7552 rBis!161)) (toValue!10224 (transformation!7552 r!4097)))) (= lambda!129166 lambda!129145))))

(declare-fun bs!595863 () Bool)

(assert (= bs!595863 (and d!1231365 d!1231339)))

(assert (=> bs!595863 (= (and (= (toChars!10083 (transformation!7552 rBis!161)) (toChars!10083 (transformation!7552 r!4097))) (= (toValue!10224 (transformation!7552 rBis!161)) (toValue!10224 (transformation!7552 r!4097)))) (= lambda!129166 lambda!129163))))

(assert (=> d!1231365 true))

(assert (=> d!1231365 (< (dynLambda!19541 order!24041 (toChars!10083 (transformation!7552 rBis!161))) (dynLambda!19540 order!24039 lambda!129166))))

(assert (=> d!1231365 true))

(assert (=> d!1231365 (< (dynLambda!19539 order!24037 (toValue!10224 (transformation!7552 rBis!161))) (dynLambda!19540 order!24039 lambda!129166))))

(assert (=> d!1231365 (= (semiInverseModEq!3278 (toChars!10083 (transformation!7552 rBis!161)) (toValue!10224 (transformation!7552 rBis!161))) (Forall!1555 lambda!129166))))

(declare-fun bs!595864 () Bool)

(assert (= bs!595864 d!1231365))

(declare-fun m!4758379 () Bool)

(assert (=> bs!595864 m!4758379))

(assert (=> d!1231195 d!1231365))

(declare-fun b!4166756 () Bool)

(declare-fun e!2586752 () Bool)

(assert (=> b!4166756 (= e!2586752 (= (head!8846 (tail!6693 p!2942)) (c!712387 (derivativeStep!3758 (regex!7552 r!4097) (head!8846 p!2942)))))))

(declare-fun b!4166757 () Bool)

(declare-fun e!2586757 () Bool)

(declare-fun lt!1484228 () Bool)

(declare-fun call!291021 () Bool)

(assert (=> b!4166757 (= e!2586757 (= lt!1484228 call!291021))))

(declare-fun b!4166758 () Bool)

(declare-fun res!1707173 () Bool)

(declare-fun e!2586756 () Bool)

(assert (=> b!4166758 (=> res!1707173 e!2586756)))

(assert (=> b!4166758 (= res!1707173 (not (isEmpty!26999 (tail!6693 (tail!6693 p!2942)))))))

(declare-fun b!4166759 () Bool)

(declare-fun e!2586755 () Bool)

(assert (=> b!4166759 (= e!2586755 (matchR!6198 (derivativeStep!3758 (derivativeStep!3758 (regex!7552 r!4097) (head!8846 p!2942)) (head!8846 (tail!6693 p!2942))) (tail!6693 (tail!6693 p!2942))))))

(declare-fun d!1231367 () Bool)

(assert (=> d!1231367 e!2586757))

(declare-fun c!712450 () Bool)

(assert (=> d!1231367 (= c!712450 ((_ is EmptyExpr!12457) (derivativeStep!3758 (regex!7552 r!4097) (head!8846 p!2942))))))

(assert (=> d!1231367 (= lt!1484228 e!2586755)))

(declare-fun c!712449 () Bool)

(assert (=> d!1231367 (= c!712449 (isEmpty!26999 (tail!6693 p!2942)))))

(assert (=> d!1231367 (validRegex!5578 (derivativeStep!3758 (regex!7552 r!4097) (head!8846 p!2942)))))

(assert (=> d!1231367 (= (matchR!6198 (derivativeStep!3758 (regex!7552 r!4097) (head!8846 p!2942)) (tail!6693 p!2942)) lt!1484228)))

(declare-fun b!4166760 () Bool)

(declare-fun res!1707167 () Bool)

(declare-fun e!2586753 () Bool)

(assert (=> b!4166760 (=> res!1707167 e!2586753)))

(assert (=> b!4166760 (= res!1707167 e!2586752)))

(declare-fun res!1707170 () Bool)

(assert (=> b!4166760 (=> (not res!1707170) (not e!2586752))))

(assert (=> b!4166760 (= res!1707170 lt!1484228)))

(declare-fun bm!291016 () Bool)

(assert (=> bm!291016 (= call!291021 (isEmpty!26999 (tail!6693 p!2942)))))

(declare-fun b!4166761 () Bool)

(declare-fun e!2586754 () Bool)

(assert (=> b!4166761 (= e!2586754 e!2586756)))

(declare-fun res!1707171 () Bool)

(assert (=> b!4166761 (=> res!1707171 e!2586756)))

(assert (=> b!4166761 (= res!1707171 call!291021)))

(declare-fun b!4166762 () Bool)

(declare-fun res!1707169 () Bool)

(assert (=> b!4166762 (=> (not res!1707169) (not e!2586752))))

(assert (=> b!4166762 (= res!1707169 (isEmpty!26999 (tail!6693 (tail!6693 p!2942))))))

(declare-fun b!4166763 () Bool)

(declare-fun res!1707166 () Bool)

(assert (=> b!4166763 (=> (not res!1707166) (not e!2586752))))

(assert (=> b!4166763 (= res!1707166 (not call!291021))))

(declare-fun b!4166764 () Bool)

(assert (=> b!4166764 (= e!2586755 (nullable!4369 (derivativeStep!3758 (regex!7552 r!4097) (head!8846 p!2942))))))

(declare-fun b!4166765 () Bool)

(assert (=> b!4166765 (= e!2586753 e!2586754)))

(declare-fun res!1707172 () Bool)

(assert (=> b!4166765 (=> (not res!1707172) (not e!2586754))))

(assert (=> b!4166765 (= res!1707172 (not lt!1484228))))

(declare-fun b!4166766 () Bool)

(assert (=> b!4166766 (= e!2586756 (not (= (head!8846 (tail!6693 p!2942)) (c!712387 (derivativeStep!3758 (regex!7552 r!4097) (head!8846 p!2942))))))))

(declare-fun b!4166767 () Bool)

(declare-fun res!1707168 () Bool)

(assert (=> b!4166767 (=> res!1707168 e!2586753)))

(assert (=> b!4166767 (= res!1707168 (not ((_ is ElementMatch!12457) (derivativeStep!3758 (regex!7552 r!4097) (head!8846 p!2942)))))))

(declare-fun e!2586758 () Bool)

(assert (=> b!4166767 (= e!2586758 e!2586753)))

(declare-fun b!4166768 () Bool)

(assert (=> b!4166768 (= e!2586757 e!2586758)))

(declare-fun c!712448 () Bool)

(assert (=> b!4166768 (= c!712448 ((_ is EmptyLang!12457) (derivativeStep!3758 (regex!7552 r!4097) (head!8846 p!2942))))))

(declare-fun b!4166769 () Bool)

(assert (=> b!4166769 (= e!2586758 (not lt!1484228))))

(assert (= (and d!1231367 c!712449) b!4166764))

(assert (= (and d!1231367 (not c!712449)) b!4166759))

(assert (= (and d!1231367 c!712450) b!4166757))

(assert (= (and d!1231367 (not c!712450)) b!4166768))

(assert (= (and b!4166768 c!712448) b!4166769))

(assert (= (and b!4166768 (not c!712448)) b!4166767))

(assert (= (and b!4166767 (not res!1707168)) b!4166760))

(assert (= (and b!4166760 res!1707170) b!4166763))

(assert (= (and b!4166763 res!1707166) b!4166762))

(assert (= (and b!4166762 res!1707169) b!4166756))

(assert (= (and b!4166760 (not res!1707167)) b!4166765))

(assert (= (and b!4166765 res!1707172) b!4166761))

(assert (= (and b!4166761 (not res!1707171)) b!4166758))

(assert (= (and b!4166758 (not res!1707173)) b!4166766))

(assert (= (or b!4166757 b!4166761 b!4166763) bm!291016))

(assert (=> b!4166759 m!4758055))

(assert (=> b!4166759 m!4758301))

(assert (=> b!4166759 m!4758083))

(assert (=> b!4166759 m!4758301))

(declare-fun m!4758381 () Bool)

(assert (=> b!4166759 m!4758381))

(assert (=> b!4166759 m!4758055))

(assert (=> b!4166759 m!4758309))

(assert (=> b!4166759 m!4758381))

(assert (=> b!4166759 m!4758309))

(declare-fun m!4758383 () Bool)

(assert (=> b!4166759 m!4758383))

(assert (=> b!4166762 m!4758055))

(assert (=> b!4166762 m!4758309))

(assert (=> b!4166762 m!4758309))

(declare-fun m!4758385 () Bool)

(assert (=> b!4166762 m!4758385))

(assert (=> bm!291016 m!4758055))

(assert (=> bm!291016 m!4758087))

(assert (=> b!4166756 m!4758055))

(assert (=> b!4166756 m!4758301))

(assert (=> d!1231367 m!4758055))

(assert (=> d!1231367 m!4758087))

(assert (=> d!1231367 m!4758083))

(declare-fun m!4758387 () Bool)

(assert (=> d!1231367 m!4758387))

(assert (=> b!4166766 m!4758055))

(assert (=> b!4166766 m!4758301))

(assert (=> b!4166764 m!4758083))

(declare-fun m!4758389 () Bool)

(assert (=> b!4166764 m!4758389))

(assert (=> b!4166758 m!4758055))

(assert (=> b!4166758 m!4758309))

(assert (=> b!4166758 m!4758309))

(assert (=> b!4166758 m!4758385))

(assert (=> b!4166369 d!1231367))

(declare-fun bm!291025 () Bool)

(declare-fun call!291031 () Regex!12457)

(declare-fun c!712474 () Bool)

(assert (=> bm!291025 (= call!291031 (derivativeStep!3758 (ite c!712474 (regTwo!25427 (regex!7552 r!4097)) (regTwo!25426 (regex!7552 r!4097))) (head!8846 p!2942)))))

(declare-fun bm!291026 () Bool)

(declare-fun call!291032 () Regex!12457)

(declare-fun call!291033 () Regex!12457)

(assert (=> bm!291026 (= call!291032 call!291033)))

(declare-fun bm!291027 () Bool)

(declare-fun call!291030 () Regex!12457)

(assert (=> bm!291027 (= call!291033 call!291030)))

(declare-fun b!4166822 () Bool)

(assert (=> b!4166822 (= c!712474 ((_ is Union!12457) (regex!7552 r!4097)))))

(declare-fun e!2586794 () Regex!12457)

(declare-fun e!2586790 () Regex!12457)

(assert (=> b!4166822 (= e!2586794 e!2586790)))

(declare-fun b!4166823 () Bool)

(declare-fun e!2586791 () Regex!12457)

(assert (=> b!4166823 (= e!2586790 e!2586791)))

(declare-fun c!712472 () Bool)

(assert (=> b!4166823 (= c!712472 ((_ is Star!12457) (regex!7552 r!4097)))))

(declare-fun b!4166824 () Bool)

(declare-fun e!2586792 () Regex!12457)

(assert (=> b!4166824 (= e!2586792 (Union!12457 (Concat!20240 call!291032 (regTwo!25426 (regex!7552 r!4097))) EmptyLang!12457))))

(declare-fun b!4166825 () Bool)

(declare-fun c!712473 () Bool)

(assert (=> b!4166825 (= c!712473 (nullable!4369 (regOne!25426 (regex!7552 r!4097))))))

(assert (=> b!4166825 (= e!2586791 e!2586792)))

(declare-fun b!4166826 () Bool)

(assert (=> b!4166826 (= e!2586791 (Concat!20240 call!291033 (regex!7552 r!4097)))))

(declare-fun b!4166827 () Bool)

(declare-fun e!2586793 () Regex!12457)

(assert (=> b!4166827 (= e!2586793 e!2586794)))

(declare-fun c!712470 () Bool)

(assert (=> b!4166827 (= c!712470 ((_ is ElementMatch!12457) (regex!7552 r!4097)))))

(declare-fun b!4166821 () Bool)

(assert (=> b!4166821 (= e!2586793 EmptyLang!12457)))

(declare-fun d!1231369 () Bool)

(declare-fun lt!1484234 () Regex!12457)

(assert (=> d!1231369 (validRegex!5578 lt!1484234)))

(assert (=> d!1231369 (= lt!1484234 e!2586793)))

(declare-fun c!712471 () Bool)

(assert (=> d!1231369 (= c!712471 (or ((_ is EmptyExpr!12457) (regex!7552 r!4097)) ((_ is EmptyLang!12457) (regex!7552 r!4097))))))

(assert (=> d!1231369 (validRegex!5578 (regex!7552 r!4097))))

(assert (=> d!1231369 (= (derivativeStep!3758 (regex!7552 r!4097) (head!8846 p!2942)) lt!1484234)))

(declare-fun b!4166828 () Bool)

(assert (=> b!4166828 (= e!2586790 (Union!12457 call!291030 call!291031))))

(declare-fun b!4166829 () Bool)

(assert (=> b!4166829 (= e!2586794 (ite (= (head!8846 p!2942) (c!712387 (regex!7552 r!4097))) EmptyExpr!12457 EmptyLang!12457))))

(declare-fun bm!291028 () Bool)

(assert (=> bm!291028 (= call!291030 (derivativeStep!3758 (ite c!712474 (regOne!25427 (regex!7552 r!4097)) (ite c!712472 (reg!12786 (regex!7552 r!4097)) (regOne!25426 (regex!7552 r!4097)))) (head!8846 p!2942)))))

(declare-fun b!4166830 () Bool)

(assert (=> b!4166830 (= e!2586792 (Union!12457 (Concat!20240 call!291032 (regTwo!25426 (regex!7552 r!4097))) call!291031))))

(assert (= (and d!1231369 c!712471) b!4166821))

(assert (= (and d!1231369 (not c!712471)) b!4166827))

(assert (= (and b!4166827 c!712470) b!4166829))

(assert (= (and b!4166827 (not c!712470)) b!4166822))

(assert (= (and b!4166822 c!712474) b!4166828))

(assert (= (and b!4166822 (not c!712474)) b!4166823))

(assert (= (and b!4166823 c!712472) b!4166826))

(assert (= (and b!4166823 (not c!712472)) b!4166825))

(assert (= (and b!4166825 c!712473) b!4166830))

(assert (= (and b!4166825 (not c!712473)) b!4166824))

(assert (= (or b!4166830 b!4166824) bm!291026))

(assert (= (or b!4166826 bm!291026) bm!291027))

(assert (= (or b!4166828 b!4166830) bm!291025))

(assert (= (or b!4166828 bm!291027) bm!291028))

(assert (=> bm!291025 m!4758049))

(declare-fun m!4758415 () Bool)

(assert (=> bm!291025 m!4758415))

(declare-fun m!4758417 () Bool)

(assert (=> b!4166825 m!4758417))

(declare-fun m!4758419 () Bool)

(assert (=> d!1231369 m!4758419))

(assert (=> d!1231369 m!4758091))

(assert (=> bm!291028 m!4758049))

(declare-fun m!4758427 () Bool)

(assert (=> bm!291028 m!4758427))

(assert (=> b!4166369 d!1231369))

(assert (=> b!4166369 d!1231307))

(assert (=> b!4166369 d!1231281))

(assert (=> b!4166384 d!1231261))

(assert (=> b!4166368 d!1231279))

(assert (=> b!4166368 d!1231281))

(declare-fun bs!595870 () Bool)

(declare-fun d!1231391 () Bool)

(assert (= bs!595870 (and d!1231391 d!1231215)))

(declare-fun lambda!129168 () Int)

(assert (=> bs!595870 (= (and (= (toChars!10083 (transformation!7552 (h!51039 rules!3820))) (toChars!10083 (transformation!7552 r!4097))) (= (toValue!10224 (transformation!7552 (h!51039 rules!3820))) (toValue!10224 (transformation!7552 r!4097)))) (= lambda!129168 lambda!129145))))

(declare-fun bs!595872 () Bool)

(assert (= bs!595872 (and d!1231391 d!1231339)))

(assert (=> bs!595872 (= (and (= (toChars!10083 (transformation!7552 (h!51039 rules!3820))) (toChars!10083 (transformation!7552 r!4097))) (= (toValue!10224 (transformation!7552 (h!51039 rules!3820))) (toValue!10224 (transformation!7552 r!4097)))) (= lambda!129168 lambda!129163))))

(declare-fun bs!595873 () Bool)

(assert (= bs!595873 (and d!1231391 d!1231365)))

(assert (=> bs!595873 (= (and (= (toChars!10083 (transformation!7552 (h!51039 rules!3820))) (toChars!10083 (transformation!7552 rBis!161))) (= (toValue!10224 (transformation!7552 (h!51039 rules!3820))) (toValue!10224 (transformation!7552 rBis!161)))) (= lambda!129168 lambda!129166))))

(assert (=> d!1231391 true))

(assert (=> d!1231391 (< (dynLambda!19541 order!24041 (toChars!10083 (transformation!7552 (h!51039 rules!3820)))) (dynLambda!19540 order!24039 lambda!129168))))

(assert (=> d!1231391 true))

(assert (=> d!1231391 (< (dynLambda!19539 order!24037 (toValue!10224 (transformation!7552 (h!51039 rules!3820)))) (dynLambda!19540 order!24039 lambda!129168))))

(assert (=> d!1231391 (= (semiInverseModEq!3278 (toChars!10083 (transformation!7552 (h!51039 rules!3820))) (toValue!10224 (transformation!7552 (h!51039 rules!3820)))) (Forall!1555 lambda!129168))))

(declare-fun bs!595874 () Bool)

(assert (= bs!595874 d!1231391))

(declare-fun m!4758433 () Bool)

(assert (=> bs!595874 m!4758433))

(assert (=> d!1231199 d!1231391))

(declare-fun d!1231397 () Bool)

(declare-fun e!2586810 () Bool)

(assert (=> d!1231397 e!2586810))

(declare-fun res!1707202 () Bool)

(assert (=> d!1231397 (=> (not res!1707202) (not e!2586810))))

(declare-fun lt!1484239 () BalanceConc!27120)

(assert (=> d!1231397 (= res!1707202 (= (list!16511 lt!1484239) p!2942))))

(declare-fun fromList!904 (List!45741) Conc!13763)

(assert (=> d!1231397 (= lt!1484239 (BalanceConc!27121 (fromList!904 p!2942)))))

(assert (=> d!1231397 (= (fromListB!2561 p!2942) lt!1484239)))

(declare-fun b!4166856 () Bool)

(assert (=> b!4166856 (= e!2586810 (isBalanced!3726 (fromList!904 p!2942)))))

(assert (= (and d!1231397 res!1707202) b!4166856))

(declare-fun m!4758453 () Bool)

(assert (=> d!1231397 m!4758453))

(declare-fun m!4758455 () Bool)

(assert (=> d!1231397 m!4758455))

(assert (=> b!4166856 m!4758455))

(assert (=> b!4166856 m!4758455))

(declare-fun m!4758457 () Bool)

(assert (=> b!4166856 m!4758457))

(assert (=> d!1231245 d!1231397))

(declare-fun d!1231405 () Bool)

(assert (=> d!1231405 (= (inv!60131 (tag!8416 (h!51039 (t!343990 rules!3820)))) (= (mod (str.len (value!235775 (tag!8416 (h!51039 (t!343990 rules!3820))))) 2) 0))))

(assert (=> b!4166592 d!1231405))

(declare-fun d!1231407 () Bool)

(declare-fun res!1707203 () Bool)

(declare-fun e!2586811 () Bool)

(assert (=> d!1231407 (=> (not res!1707203) (not e!2586811))))

(assert (=> d!1231407 (= res!1707203 (semiInverseModEq!3278 (toChars!10083 (transformation!7552 (h!51039 (t!343990 rules!3820)))) (toValue!10224 (transformation!7552 (h!51039 (t!343990 rules!3820))))))))

(assert (=> d!1231407 (= (inv!60135 (transformation!7552 (h!51039 (t!343990 rules!3820)))) e!2586811)))

(declare-fun b!4166857 () Bool)

(assert (=> b!4166857 (= e!2586811 (equivClasses!3177 (toChars!10083 (transformation!7552 (h!51039 (t!343990 rules!3820)))) (toValue!10224 (transformation!7552 (h!51039 (t!343990 rules!3820))))))))

(assert (= (and d!1231407 res!1707203) b!4166857))

(declare-fun m!4758459 () Bool)

(assert (=> d!1231407 m!4758459))

(declare-fun m!4758461 () Bool)

(assert (=> b!4166857 m!4758461))

(assert (=> b!4166592 d!1231407))

(declare-fun bs!595875 () Bool)

(declare-fun d!1231409 () Bool)

(assert (= bs!595875 (and d!1231409 d!1231311)))

(declare-fun lambda!129169 () Int)

(assert (=> bs!595875 (= (= (toValue!10224 (transformation!7552 r!4097)) (toValue!10224 (transformation!7552 (h!51039 rules!3820)))) (= lambda!129169 lambda!129157))))

(declare-fun bs!595876 () Bool)

(assert (= bs!595876 (and d!1231409 d!1231359)))

(assert (=> bs!595876 (= (= (toValue!10224 (transformation!7552 r!4097)) (toValue!10224 (transformation!7552 rBis!161))) (= lambda!129169 lambda!129165))))

(assert (=> d!1231409 true))

(assert (=> d!1231409 (< (dynLambda!19539 order!24037 (toValue!10224 (transformation!7552 r!4097))) (dynLambda!19546 order!24045 lambda!129169))))

(assert (=> d!1231409 (= (equivClasses!3177 (toChars!10083 (transformation!7552 r!4097)) (toValue!10224 (transformation!7552 r!4097))) (Forall2!1155 lambda!129169))))

(declare-fun bs!595877 () Bool)

(assert (= bs!595877 d!1231409))

(declare-fun m!4758463 () Bool)

(assert (=> bs!595877 m!4758463))

(assert (=> b!4166405 d!1231409))

(assert (=> d!1231251 d!1231249))

(declare-fun d!1231411 () Bool)

(assert (=> d!1231411 (isPrefix!4409 input!3316 input!3316)))

(assert (=> d!1231411 true))

(declare-fun _$45!2033 () Unit!64697)

(assert (=> d!1231411 (= (choose!25511 input!3316 input!3316) _$45!2033)))

(declare-fun bs!595878 () Bool)

(assert (= bs!595878 d!1231411))

(assert (=> bs!595878 m!4757995))

(assert (=> d!1231251 d!1231411))

(assert (=> d!1231177 d!1231319))

(assert (=> d!1231177 d!1231293))

(assert (=> b!4166366 d!1231307))

(declare-fun b!4166858 () Bool)

(declare-fun e!2586812 () Bool)

(declare-fun tp!1272547 () Bool)

(assert (=> b!4166858 (= e!2586812 (and tp_is_empty!21877 tp!1272547))))

(assert (=> b!4166563 (= tp!1272507 e!2586812)))

(assert (= (and b!4166563 ((_ is Cons!45617) (t!343988 (t!343988 input!3316)))) b!4166858))

(declare-fun b!4166862 () Bool)

(declare-fun e!2586813 () Bool)

(declare-fun tp!1272548 () Bool)

(declare-fun tp!1272550 () Bool)

(assert (=> b!4166862 (= e!2586813 (and tp!1272548 tp!1272550))))

(declare-fun b!4166861 () Bool)

(declare-fun tp!1272552 () Bool)

(assert (=> b!4166861 (= e!2586813 tp!1272552)))

(declare-fun b!4166860 () Bool)

(declare-fun tp!1272551 () Bool)

(declare-fun tp!1272549 () Bool)

(assert (=> b!4166860 (= e!2586813 (and tp!1272551 tp!1272549))))

(declare-fun b!4166859 () Bool)

(assert (=> b!4166859 (= e!2586813 tp_is_empty!21877)))

(assert (=> b!4166598 (= tp!1272542 e!2586813)))

(assert (= (and b!4166598 ((_ is ElementMatch!12457) (regOne!25427 (regex!7552 rBis!161)))) b!4166859))

(assert (= (and b!4166598 ((_ is Concat!20240) (regOne!25427 (regex!7552 rBis!161)))) b!4166860))

(assert (= (and b!4166598 ((_ is Star!12457) (regOne!25427 (regex!7552 rBis!161)))) b!4166861))

(assert (= (and b!4166598 ((_ is Union!12457) (regOne!25427 (regex!7552 rBis!161)))) b!4166862))

(declare-fun b!4166866 () Bool)

(declare-fun e!2586814 () Bool)

(declare-fun tp!1272553 () Bool)

(declare-fun tp!1272555 () Bool)

(assert (=> b!4166866 (= e!2586814 (and tp!1272553 tp!1272555))))

(declare-fun b!4166865 () Bool)

(declare-fun tp!1272557 () Bool)

(assert (=> b!4166865 (= e!2586814 tp!1272557)))

(declare-fun b!4166864 () Bool)

(declare-fun tp!1272556 () Bool)

(declare-fun tp!1272554 () Bool)

(assert (=> b!4166864 (= e!2586814 (and tp!1272556 tp!1272554))))

(declare-fun b!4166863 () Bool)

(assert (=> b!4166863 (= e!2586814 tp_is_empty!21877)))

(assert (=> b!4166598 (= tp!1272544 e!2586814)))

(assert (= (and b!4166598 ((_ is ElementMatch!12457) (regTwo!25427 (regex!7552 rBis!161)))) b!4166863))

(assert (= (and b!4166598 ((_ is Concat!20240) (regTwo!25427 (regex!7552 rBis!161)))) b!4166864))

(assert (= (and b!4166598 ((_ is Star!12457) (regTwo!25427 (regex!7552 rBis!161)))) b!4166865))

(assert (= (and b!4166598 ((_ is Union!12457) (regTwo!25427 (regex!7552 rBis!161)))) b!4166866))

(declare-fun e!2586829 () Bool)

(declare-fun b!4166895 () Bool)

(declare-fun tp!1272564 () Bool)

(declare-fun tp!1272566 () Bool)

(assert (=> b!4166895 (= e!2586829 (and (inv!60138 (left!34009 (c!712386 (dynLambda!19542 (toChars!10083 (transformation!7552 (rule!10604 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942)))) (value!235776 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942)))))) tp!1272566 (inv!60138 (right!34339 (c!712386 (dynLambda!19542 (toChars!10083 (transformation!7552 (rule!10604 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942)))) (value!235776 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942)))))) tp!1272564))))

(declare-fun b!4166897 () Bool)

(declare-fun e!2586830 () Bool)

(declare-fun tp!1272565 () Bool)

(assert (=> b!4166897 (= e!2586830 tp!1272565)))

(declare-fun b!4166896 () Bool)

(declare-fun inv!60144 (IArray!27531) Bool)

(assert (=> b!4166896 (= e!2586829 (and (inv!60144 (xs!17069 (c!712386 (dynLambda!19542 (toChars!10083 (transformation!7552 (rule!10604 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942)))) (value!235776 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942)))))) e!2586830))))

(assert (=> b!4166554 (= tp!1272504 (and (inv!60138 (c!712386 (dynLambda!19542 (toChars!10083 (transformation!7552 (rule!10604 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942)))) (value!235776 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942))))) e!2586829))))

(assert (= (and b!4166554 ((_ is Node!13763) (c!712386 (dynLambda!19542 (toChars!10083 (transformation!7552 (rule!10604 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942)))) (value!235776 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942)))))) b!4166895))

(assert (= b!4166896 b!4166897))

(assert (= (and b!4166554 ((_ is Leaf!21282) (c!712386 (dynLambda!19542 (toChars!10083 (transformation!7552 (rule!10604 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942)))) (value!235776 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942)))))) b!4166896))

(declare-fun m!4758465 () Bool)

(assert (=> b!4166895 m!4758465))

(declare-fun m!4758467 () Bool)

(assert (=> b!4166895 m!4758467))

(declare-fun m!4758469 () Bool)

(assert (=> b!4166896 m!4758469))

(assert (=> b!4166554 m!4758219))

(declare-fun b!4166898 () Bool)

(declare-fun e!2586831 () Bool)

(declare-fun tp!1272567 () Bool)

(assert (=> b!4166898 (= e!2586831 (and tp_is_empty!21877 tp!1272567))))

(assert (=> b!4166578 (= tp!1272523 e!2586831)))

(assert (= (and b!4166578 ((_ is Cons!45617) (t!343988 (t!343988 p!2942)))) b!4166898))

(declare-fun b!4166902 () Bool)

(declare-fun e!2586832 () Bool)

(declare-fun tp!1272568 () Bool)

(declare-fun tp!1272570 () Bool)

(assert (=> b!4166902 (= e!2586832 (and tp!1272568 tp!1272570))))

(declare-fun b!4166901 () Bool)

(declare-fun tp!1272572 () Bool)

(assert (=> b!4166901 (= e!2586832 tp!1272572)))

(declare-fun b!4166900 () Bool)

(declare-fun tp!1272571 () Bool)

(declare-fun tp!1272569 () Bool)

(assert (=> b!4166900 (= e!2586832 (and tp!1272571 tp!1272569))))

(declare-fun b!4166899 () Bool)

(assert (=> b!4166899 (= e!2586832 tp_is_empty!21877)))

(assert (=> b!4166597 (= tp!1272546 e!2586832)))

(assert (= (and b!4166597 ((_ is ElementMatch!12457) (reg!12786 (regex!7552 rBis!161)))) b!4166899))

(assert (= (and b!4166597 ((_ is Concat!20240) (reg!12786 (regex!7552 rBis!161)))) b!4166900))

(assert (= (and b!4166597 ((_ is Star!12457) (reg!12786 (regex!7552 rBis!161)))) b!4166901))

(assert (= (and b!4166597 ((_ is Union!12457) (reg!12786 (regex!7552 rBis!161)))) b!4166902))

(declare-fun b!4166903 () Bool)

(declare-fun e!2586833 () Bool)

(declare-fun tp!1272573 () Bool)

(assert (=> b!4166903 (= e!2586833 (and tp_is_empty!21877 tp!1272573))))

(assert (=> b!4166594 (= tp!1272541 e!2586833)))

(assert (= (and b!4166594 ((_ is Cons!45617) (t!343988 (t!343988 pBis!100)))) b!4166903))

(declare-fun b!4166907 () Bool)

(declare-fun e!2586834 () Bool)

(declare-fun tp!1272574 () Bool)

(declare-fun tp!1272576 () Bool)

(assert (=> b!4166907 (= e!2586834 (and tp!1272574 tp!1272576))))

(declare-fun b!4166906 () Bool)

(declare-fun tp!1272578 () Bool)

(assert (=> b!4166906 (= e!2586834 tp!1272578)))

(declare-fun b!4166905 () Bool)

(declare-fun tp!1272577 () Bool)

(declare-fun tp!1272575 () Bool)

(assert (=> b!4166905 (= e!2586834 (and tp!1272577 tp!1272575))))

(declare-fun b!4166904 () Bool)

(assert (=> b!4166904 (= e!2586834 tp_is_empty!21877)))

(assert (=> b!4166581 (= tp!1272528 e!2586834)))

(assert (= (and b!4166581 ((_ is ElementMatch!12457) (reg!12786 (regex!7552 r!4097)))) b!4166904))

(assert (= (and b!4166581 ((_ is Concat!20240) (reg!12786 (regex!7552 r!4097)))) b!4166905))

(assert (= (and b!4166581 ((_ is Star!12457) (reg!12786 (regex!7552 r!4097)))) b!4166906))

(assert (= (and b!4166581 ((_ is Union!12457) (reg!12786 (regex!7552 r!4097)))) b!4166907))

(declare-fun b!4166911 () Bool)

(declare-fun e!2586835 () Bool)

(declare-fun tp!1272579 () Bool)

(declare-fun tp!1272581 () Bool)

(assert (=> b!4166911 (= e!2586835 (and tp!1272579 tp!1272581))))

(declare-fun b!4166910 () Bool)

(declare-fun tp!1272583 () Bool)

(assert (=> b!4166910 (= e!2586835 tp!1272583)))

(declare-fun b!4166909 () Bool)

(declare-fun tp!1272582 () Bool)

(declare-fun tp!1272580 () Bool)

(assert (=> b!4166909 (= e!2586835 (and tp!1272582 tp!1272580))))

(declare-fun b!4166908 () Bool)

(assert (=> b!4166908 (= e!2586835 tp_is_empty!21877)))

(assert (=> b!4166580 (= tp!1272527 e!2586835)))

(assert (= (and b!4166580 ((_ is ElementMatch!12457) (regOne!25426 (regex!7552 r!4097)))) b!4166908))

(assert (= (and b!4166580 ((_ is Concat!20240) (regOne!25426 (regex!7552 r!4097)))) b!4166909))

(assert (= (and b!4166580 ((_ is Star!12457) (regOne!25426 (regex!7552 r!4097)))) b!4166910))

(assert (= (and b!4166580 ((_ is Union!12457) (regOne!25426 (regex!7552 r!4097)))) b!4166911))

(declare-fun b!4166915 () Bool)

(declare-fun e!2586836 () Bool)

(declare-fun tp!1272584 () Bool)

(declare-fun tp!1272586 () Bool)

(assert (=> b!4166915 (= e!2586836 (and tp!1272584 tp!1272586))))

(declare-fun b!4166914 () Bool)

(declare-fun tp!1272588 () Bool)

(assert (=> b!4166914 (= e!2586836 tp!1272588)))

(declare-fun b!4166913 () Bool)

(declare-fun tp!1272587 () Bool)

(declare-fun tp!1272585 () Bool)

(assert (=> b!4166913 (= e!2586836 (and tp!1272587 tp!1272585))))

(declare-fun b!4166912 () Bool)

(assert (=> b!4166912 (= e!2586836 tp_is_empty!21877)))

(assert (=> b!4166580 (= tp!1272525 e!2586836)))

(assert (= (and b!4166580 ((_ is ElementMatch!12457) (regTwo!25426 (regex!7552 r!4097)))) b!4166912))

(assert (= (and b!4166580 ((_ is Concat!20240) (regTwo!25426 (regex!7552 r!4097)))) b!4166913))

(assert (= (and b!4166580 ((_ is Star!12457) (regTwo!25426 (regex!7552 r!4097)))) b!4166914))

(assert (= (and b!4166580 ((_ is Union!12457) (regTwo!25426 (regex!7552 r!4097)))) b!4166915))

(declare-fun b!4166919 () Bool)

(declare-fun e!2586837 () Bool)

(declare-fun tp!1272589 () Bool)

(declare-fun tp!1272591 () Bool)

(assert (=> b!4166919 (= e!2586837 (and tp!1272589 tp!1272591))))

(declare-fun b!4166918 () Bool)

(declare-fun tp!1272593 () Bool)

(assert (=> b!4166918 (= e!2586837 tp!1272593)))

(declare-fun b!4166917 () Bool)

(declare-fun tp!1272592 () Bool)

(declare-fun tp!1272590 () Bool)

(assert (=> b!4166917 (= e!2586837 (and tp!1272592 tp!1272590))))

(declare-fun b!4166916 () Bool)

(assert (=> b!4166916 (= e!2586837 tp_is_empty!21877)))

(assert (=> b!4166582 (= tp!1272524 e!2586837)))

(assert (= (and b!4166582 ((_ is ElementMatch!12457) (regOne!25427 (regex!7552 r!4097)))) b!4166916))

(assert (= (and b!4166582 ((_ is Concat!20240) (regOne!25427 (regex!7552 r!4097)))) b!4166917))

(assert (= (and b!4166582 ((_ is Star!12457) (regOne!25427 (regex!7552 r!4097)))) b!4166918))

(assert (= (and b!4166582 ((_ is Union!12457) (regOne!25427 (regex!7552 r!4097)))) b!4166919))

(declare-fun b!4166923 () Bool)

(declare-fun e!2586838 () Bool)

(declare-fun tp!1272594 () Bool)

(declare-fun tp!1272596 () Bool)

(assert (=> b!4166923 (= e!2586838 (and tp!1272594 tp!1272596))))

(declare-fun b!4166922 () Bool)

(declare-fun tp!1272598 () Bool)

(assert (=> b!4166922 (= e!2586838 tp!1272598)))

(declare-fun b!4166921 () Bool)

(declare-fun tp!1272597 () Bool)

(declare-fun tp!1272595 () Bool)

(assert (=> b!4166921 (= e!2586838 (and tp!1272597 tp!1272595))))

(declare-fun b!4166920 () Bool)

(assert (=> b!4166920 (= e!2586838 tp_is_empty!21877)))

(assert (=> b!4166582 (= tp!1272526 e!2586838)))

(assert (= (and b!4166582 ((_ is ElementMatch!12457) (regTwo!25427 (regex!7552 r!4097)))) b!4166920))

(assert (= (and b!4166582 ((_ is Concat!20240) (regTwo!25427 (regex!7552 r!4097)))) b!4166921))

(assert (= (and b!4166582 ((_ is Star!12457) (regTwo!25427 (regex!7552 r!4097)))) b!4166922))

(assert (= (and b!4166582 ((_ is Union!12457) (regTwo!25427 (regex!7552 r!4097)))) b!4166923))

(declare-fun e!2586839 () Bool)

(declare-fun tp!1272599 () Bool)

(declare-fun b!4166924 () Bool)

(declare-fun tp!1272601 () Bool)

(assert (=> b!4166924 (= e!2586839 (and (inv!60138 (left!34009 (c!712386 (dynLambda!19542 (toChars!10083 (transformation!7552 r!4097)) (dynLambda!19543 (toValue!10224 (transformation!7552 r!4097)) lt!1484158))))) tp!1272601 (inv!60138 (right!34339 (c!712386 (dynLambda!19542 (toChars!10083 (transformation!7552 r!4097)) (dynLambda!19543 (toValue!10224 (transformation!7552 r!4097)) lt!1484158))))) tp!1272599))))

(declare-fun b!4166926 () Bool)

(declare-fun e!2586840 () Bool)

(declare-fun tp!1272600 () Bool)

(assert (=> b!4166926 (= e!2586840 tp!1272600)))

(declare-fun b!4166925 () Bool)

(assert (=> b!4166925 (= e!2586839 (and (inv!60144 (xs!17069 (c!712386 (dynLambda!19542 (toChars!10083 (transformation!7552 r!4097)) (dynLambda!19543 (toValue!10224 (transformation!7552 r!4097)) lt!1484158))))) e!2586840))))

(assert (=> b!4166539 (= tp!1272503 (and (inv!60138 (c!712386 (dynLambda!19542 (toChars!10083 (transformation!7552 r!4097)) (dynLambda!19543 (toValue!10224 (transformation!7552 r!4097)) lt!1484158)))) e!2586839))))

(assert (= (and b!4166539 ((_ is Node!13763) (c!712386 (dynLambda!19542 (toChars!10083 (transformation!7552 r!4097)) (dynLambda!19543 (toValue!10224 (transformation!7552 r!4097)) lt!1484158))))) b!4166924))

(assert (= b!4166925 b!4166926))

(assert (= (and b!4166539 ((_ is Leaf!21282) (c!712386 (dynLambda!19542 (toChars!10083 (transformation!7552 r!4097)) (dynLambda!19543 (toValue!10224 (transformation!7552 r!4097)) lt!1484158))))) b!4166925))

(declare-fun m!4758471 () Bool)

(assert (=> b!4166924 m!4758471))

(declare-fun m!4758473 () Bool)

(assert (=> b!4166924 m!4758473))

(declare-fun m!4758475 () Bool)

(assert (=> b!4166925 m!4758475))

(assert (=> b!4166539 m!4758199))

(declare-fun b!4166930 () Bool)

(declare-fun e!2586841 () Bool)

(declare-fun tp!1272602 () Bool)

(declare-fun tp!1272604 () Bool)

(assert (=> b!4166930 (= e!2586841 (and tp!1272602 tp!1272604))))

(declare-fun b!4166929 () Bool)

(declare-fun tp!1272606 () Bool)

(assert (=> b!4166929 (= e!2586841 tp!1272606)))

(declare-fun b!4166928 () Bool)

(declare-fun tp!1272605 () Bool)

(declare-fun tp!1272603 () Bool)

(assert (=> b!4166928 (= e!2586841 (and tp!1272605 tp!1272603))))

(declare-fun b!4166927 () Bool)

(assert (=> b!4166927 (= e!2586841 tp_is_empty!21877)))

(assert (=> b!4166596 (= tp!1272545 e!2586841)))

(assert (= (and b!4166596 ((_ is ElementMatch!12457) (regOne!25426 (regex!7552 rBis!161)))) b!4166927))

(assert (= (and b!4166596 ((_ is Concat!20240) (regOne!25426 (regex!7552 rBis!161)))) b!4166928))

(assert (= (and b!4166596 ((_ is Star!12457) (regOne!25426 (regex!7552 rBis!161)))) b!4166929))

(assert (= (and b!4166596 ((_ is Union!12457) (regOne!25426 (regex!7552 rBis!161)))) b!4166930))

(declare-fun b!4166934 () Bool)

(declare-fun e!2586842 () Bool)

(declare-fun tp!1272607 () Bool)

(declare-fun tp!1272609 () Bool)

(assert (=> b!4166934 (= e!2586842 (and tp!1272607 tp!1272609))))

(declare-fun b!4166933 () Bool)

(declare-fun tp!1272611 () Bool)

(assert (=> b!4166933 (= e!2586842 tp!1272611)))

(declare-fun b!4166932 () Bool)

(declare-fun tp!1272610 () Bool)

(declare-fun tp!1272608 () Bool)

(assert (=> b!4166932 (= e!2586842 (and tp!1272610 tp!1272608))))

(declare-fun b!4166931 () Bool)

(assert (=> b!4166931 (= e!2586842 tp_is_empty!21877)))

(assert (=> b!4166596 (= tp!1272543 e!2586842)))

(assert (= (and b!4166596 ((_ is ElementMatch!12457) (regTwo!25426 (regex!7552 rBis!161)))) b!4166931))

(assert (= (and b!4166596 ((_ is Concat!20240) (regTwo!25426 (regex!7552 rBis!161)))) b!4166932))

(assert (= (and b!4166596 ((_ is Star!12457) (regTwo!25426 (regex!7552 rBis!161)))) b!4166933))

(assert (= (and b!4166596 ((_ is Union!12457) (regTwo!25426 (regex!7552 rBis!161)))) b!4166934))

(declare-fun b!4166938 () Bool)

(declare-fun e!2586843 () Bool)

(declare-fun tp!1272612 () Bool)

(declare-fun tp!1272614 () Bool)

(assert (=> b!4166938 (= e!2586843 (and tp!1272612 tp!1272614))))

(declare-fun b!4166937 () Bool)

(declare-fun tp!1272616 () Bool)

(assert (=> b!4166937 (= e!2586843 tp!1272616)))

(declare-fun b!4166936 () Bool)

(declare-fun tp!1272615 () Bool)

(declare-fun tp!1272613 () Bool)

(assert (=> b!4166936 (= e!2586843 (and tp!1272615 tp!1272613))))

(declare-fun b!4166935 () Bool)

(assert (=> b!4166935 (= e!2586843 tp_is_empty!21877)))

(assert (=> b!4166592 (= tp!1272538 e!2586843)))

(assert (= (and b!4166592 ((_ is ElementMatch!12457) (regex!7552 (h!51039 (t!343990 rules!3820))))) b!4166935))

(assert (= (and b!4166592 ((_ is Concat!20240) (regex!7552 (h!51039 (t!343990 rules!3820))))) b!4166936))

(assert (= (and b!4166592 ((_ is Star!12457) (regex!7552 (h!51039 (t!343990 rules!3820))))) b!4166937))

(assert (= (and b!4166592 ((_ is Union!12457) (regex!7552 (h!51039 (t!343990 rules!3820))))) b!4166938))

(declare-fun b!4166942 () Bool)

(declare-fun e!2586844 () Bool)

(declare-fun tp!1272617 () Bool)

(declare-fun tp!1272619 () Bool)

(assert (=> b!4166942 (= e!2586844 (and tp!1272617 tp!1272619))))

(declare-fun b!4166941 () Bool)

(declare-fun tp!1272621 () Bool)

(assert (=> b!4166941 (= e!2586844 tp!1272621)))

(declare-fun b!4166940 () Bool)

(declare-fun tp!1272620 () Bool)

(declare-fun tp!1272618 () Bool)

(assert (=> b!4166940 (= e!2586844 (and tp!1272620 tp!1272618))))

(declare-fun b!4166939 () Bool)

(assert (=> b!4166939 (= e!2586844 tp_is_empty!21877)))

(assert (=> b!4166575 (= tp!1272521 e!2586844)))

(assert (= (and b!4166575 ((_ is ElementMatch!12457) (regOne!25426 (regex!7552 (h!51039 rules!3820))))) b!4166939))

(assert (= (and b!4166575 ((_ is Concat!20240) (regOne!25426 (regex!7552 (h!51039 rules!3820))))) b!4166940))

(assert (= (and b!4166575 ((_ is Star!12457) (regOne!25426 (regex!7552 (h!51039 rules!3820))))) b!4166941))

(assert (= (and b!4166575 ((_ is Union!12457) (regOne!25426 (regex!7552 (h!51039 rules!3820))))) b!4166942))

(declare-fun b!4166946 () Bool)

(declare-fun e!2586845 () Bool)

(declare-fun tp!1272622 () Bool)

(declare-fun tp!1272624 () Bool)

(assert (=> b!4166946 (= e!2586845 (and tp!1272622 tp!1272624))))

(declare-fun b!4166945 () Bool)

(declare-fun tp!1272626 () Bool)

(assert (=> b!4166945 (= e!2586845 tp!1272626)))

(declare-fun b!4166944 () Bool)

(declare-fun tp!1272625 () Bool)

(declare-fun tp!1272623 () Bool)

(assert (=> b!4166944 (= e!2586845 (and tp!1272625 tp!1272623))))

(declare-fun b!4166943 () Bool)

(assert (=> b!4166943 (= e!2586845 tp_is_empty!21877)))

(assert (=> b!4166575 (= tp!1272519 e!2586845)))

(assert (= (and b!4166575 ((_ is ElementMatch!12457) (regTwo!25426 (regex!7552 (h!51039 rules!3820))))) b!4166943))

(assert (= (and b!4166575 ((_ is Concat!20240) (regTwo!25426 (regex!7552 (h!51039 rules!3820))))) b!4166944))

(assert (= (and b!4166575 ((_ is Star!12457) (regTwo!25426 (regex!7552 (h!51039 rules!3820))))) b!4166945))

(assert (= (and b!4166575 ((_ is Union!12457) (regTwo!25426 (regex!7552 (h!51039 rules!3820))))) b!4166946))

(declare-fun b!4166949 () Bool)

(declare-fun b_free!120355 () Bool)

(declare-fun b_next!121059 () Bool)

(assert (=> b!4166949 (= b_free!120355 (not b_next!121059))))

(declare-fun tb!249515 () Bool)

(declare-fun t!344042 () Bool)

(assert (=> (and b!4166949 (= (toValue!10224 (transformation!7552 (h!51039 (t!343990 (t!343990 rules!3820))))) (toValue!10224 (transformation!7552 r!4097))) t!344042) tb!249515))

(declare-fun result!303938 () Bool)

(assert (= result!303938 result!303910))

(assert (=> d!1231215 t!344042))

(assert (=> d!1231253 t!344042))

(declare-fun tp!1272630 () Bool)

(declare-fun b_and!325017 () Bool)

(assert (=> b!4166949 (= tp!1272630 (and (=> t!344042 result!303938) b_and!325017))))

(declare-fun b_free!120357 () Bool)

(declare-fun b_next!121061 () Bool)

(assert (=> b!4166949 (= b_free!120357 (not b_next!121061))))

(declare-fun t!344044 () Bool)

(declare-fun tb!249517 () Bool)

(assert (=> (and b!4166949 (= (toChars!10083 (transformation!7552 (h!51039 (t!343990 (t!343990 rules!3820))))) (toChars!10083 (transformation!7552 r!4097))) t!344044) tb!249517))

(declare-fun result!303940 () Bool)

(assert (= result!303940 result!303902))

(assert (=> d!1231215 t!344044))

(declare-fun tb!249519 () Bool)

(declare-fun t!344046 () Bool)

(assert (=> (and b!4166949 (= (toChars!10083 (transformation!7552 (h!51039 (t!343990 (t!343990 rules!3820))))) (toChars!10083 (transformation!7552 (rule!10604 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942))))) t!344046) tb!249519))

(declare-fun result!303942 () Bool)

(assert (= result!303942 result!303918))

(assert (=> b!4166552 t!344046))

(declare-fun tp!1272629 () Bool)

(declare-fun b_and!325019 () Bool)

(assert (=> b!4166949 (= tp!1272629 (and (=> t!344044 result!303940) (=> t!344046 result!303942) b_and!325019))))

(declare-fun e!2586846 () Bool)

(assert (=> b!4166949 (= e!2586846 (and tp!1272630 tp!1272629))))

(declare-fun tp!1272628 () Bool)

(declare-fun b!4166948 () Bool)

(declare-fun e!2586848 () Bool)

(assert (=> b!4166948 (= e!2586848 (and tp!1272628 (inv!60131 (tag!8416 (h!51039 (t!343990 (t!343990 rules!3820))))) (inv!60135 (transformation!7552 (h!51039 (t!343990 (t!343990 rules!3820))))) e!2586846))))

(declare-fun b!4166947 () Bool)

(declare-fun e!2586847 () Bool)

(declare-fun tp!1272627 () Bool)

(assert (=> b!4166947 (= e!2586847 (and e!2586848 tp!1272627))))

(assert (=> b!4166591 (= tp!1272537 e!2586847)))

(assert (= b!4166948 b!4166949))

(assert (= b!4166947 b!4166948))

(assert (= (and b!4166591 ((_ is Cons!45619) (t!343990 (t!343990 rules!3820)))) b!4166947))

(declare-fun m!4758477 () Bool)

(assert (=> b!4166948 m!4758477))

(declare-fun m!4758479 () Bool)

(assert (=> b!4166948 m!4758479))

(declare-fun b!4166953 () Bool)

(declare-fun e!2586850 () Bool)

(declare-fun tp!1272631 () Bool)

(declare-fun tp!1272633 () Bool)

(assert (=> b!4166953 (= e!2586850 (and tp!1272631 tp!1272633))))

(declare-fun b!4166952 () Bool)

(declare-fun tp!1272635 () Bool)

(assert (=> b!4166952 (= e!2586850 tp!1272635)))

(declare-fun b!4166951 () Bool)

(declare-fun tp!1272634 () Bool)

(declare-fun tp!1272632 () Bool)

(assert (=> b!4166951 (= e!2586850 (and tp!1272634 tp!1272632))))

(declare-fun b!4166950 () Bool)

(assert (=> b!4166950 (= e!2586850 tp_is_empty!21877)))

(assert (=> b!4166577 (= tp!1272518 e!2586850)))

(assert (= (and b!4166577 ((_ is ElementMatch!12457) (regOne!25427 (regex!7552 (h!51039 rules!3820))))) b!4166950))

(assert (= (and b!4166577 ((_ is Concat!20240) (regOne!25427 (regex!7552 (h!51039 rules!3820))))) b!4166951))

(assert (= (and b!4166577 ((_ is Star!12457) (regOne!25427 (regex!7552 (h!51039 rules!3820))))) b!4166952))

(assert (= (and b!4166577 ((_ is Union!12457) (regOne!25427 (regex!7552 (h!51039 rules!3820))))) b!4166953))

(declare-fun b!4166957 () Bool)

(declare-fun e!2586851 () Bool)

(declare-fun tp!1272636 () Bool)

(declare-fun tp!1272638 () Bool)

(assert (=> b!4166957 (= e!2586851 (and tp!1272636 tp!1272638))))

(declare-fun b!4166956 () Bool)

(declare-fun tp!1272640 () Bool)

(assert (=> b!4166956 (= e!2586851 tp!1272640)))

(declare-fun b!4166955 () Bool)

(declare-fun tp!1272639 () Bool)

(declare-fun tp!1272637 () Bool)

(assert (=> b!4166955 (= e!2586851 (and tp!1272639 tp!1272637))))

(declare-fun b!4166954 () Bool)

(assert (=> b!4166954 (= e!2586851 tp_is_empty!21877)))

(assert (=> b!4166577 (= tp!1272520 e!2586851)))

(assert (= (and b!4166577 ((_ is ElementMatch!12457) (regTwo!25427 (regex!7552 (h!51039 rules!3820))))) b!4166954))

(assert (= (and b!4166577 ((_ is Concat!20240) (regTwo!25427 (regex!7552 (h!51039 rules!3820))))) b!4166955))

(assert (= (and b!4166577 ((_ is Star!12457) (regTwo!25427 (regex!7552 (h!51039 rules!3820))))) b!4166956))

(assert (= (and b!4166577 ((_ is Union!12457) (regTwo!25427 (regex!7552 (h!51039 rules!3820))))) b!4166957))

(declare-fun b!4166971 () Bool)

(declare-fun e!2586857 () Bool)

(declare-fun tp!1272641 () Bool)

(declare-fun tp!1272643 () Bool)

(assert (=> b!4166971 (= e!2586857 (and tp!1272641 tp!1272643))))

(declare-fun b!4166970 () Bool)

(declare-fun tp!1272645 () Bool)

(assert (=> b!4166970 (= e!2586857 tp!1272645)))

(declare-fun b!4166969 () Bool)

(declare-fun tp!1272644 () Bool)

(declare-fun tp!1272642 () Bool)

(assert (=> b!4166969 (= e!2586857 (and tp!1272644 tp!1272642))))

(declare-fun b!4166968 () Bool)

(assert (=> b!4166968 (= e!2586857 tp_is_empty!21877)))

(assert (=> b!4166576 (= tp!1272522 e!2586857)))

(assert (= (and b!4166576 ((_ is ElementMatch!12457) (reg!12786 (regex!7552 (h!51039 rules!3820))))) b!4166968))

(assert (= (and b!4166576 ((_ is Concat!20240) (reg!12786 (regex!7552 (h!51039 rules!3820))))) b!4166969))

(assert (= (and b!4166576 ((_ is Star!12457) (reg!12786 (regex!7552 (h!51039 rules!3820))))) b!4166970))

(assert (= (and b!4166576 ((_ is Union!12457) (reg!12786 (regex!7552 (h!51039 rules!3820))))) b!4166971))

(declare-fun b_lambda!122341 () Bool)

(assert (= b_lambda!122329 (or (and b!4166289 b_free!120345 (= (toChars!10083 (transformation!7552 (h!51039 rules!3820))) (toChars!10083 (transformation!7552 (rule!10604 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942)))))) (and b!4166294 b_free!120341 (= (toChars!10083 (transformation!7552 r!4097)) (toChars!10083 (transformation!7552 (rule!10604 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942)))))) (and b!4166593 b_free!120353 (= (toChars!10083 (transformation!7552 (h!51039 (t!343990 rules!3820)))) (toChars!10083 (transformation!7552 (rule!10604 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942)))))) (and b!4166949 b_free!120357 (= (toChars!10083 (transformation!7552 (h!51039 (t!343990 (t!343990 rules!3820))))) (toChars!10083 (transformation!7552 (rule!10604 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942)))))) (and b!4166296 b_free!120337 (= (toChars!10083 (transformation!7552 rBis!161)) (toChars!10083 (transformation!7552 (rule!10604 (Token!13843 (apply!10529 (transformation!7552 r!4097) lt!1484158) r!4097 (size!33510 p!2942) p!2942)))))) b_lambda!122341)))

(declare-fun b_lambda!122343 () Bool)

(assert (= b_lambda!122339 (or d!1231215 b_lambda!122343)))

(declare-fun bs!595879 () Bool)

(declare-fun d!1231413 () Bool)

(assert (= bs!595879 (and d!1231413 d!1231215)))

(assert (=> bs!595879 (= (dynLambda!19544 lambda!129145 lt!1484158) (= (list!16511 (dynLambda!19542 (toChars!10083 (transformation!7552 r!4097)) (dynLambda!19543 (toValue!10224 (transformation!7552 r!4097)) lt!1484158))) (list!16511 lt!1484158)))))

(declare-fun b_lambda!122345 () Bool)

(assert (=> (not b_lambda!122345) (not bs!595879)))

(assert (=> bs!595879 t!344019))

(declare-fun b_and!325021 () Bool)

(assert (= b_and!325003 (and (=> t!344019 result!303906) b_and!325021)))

(assert (=> bs!595879 t!344044))

(declare-fun b_and!325023 () Bool)

(assert (= b_and!325019 (and (=> t!344044 result!303940) b_and!325023)))

(assert (=> bs!595879 t!344037))

(declare-fun b_and!325025 () Bool)

(assert (= b_and!325015 (and (=> t!344037 result!303932) b_and!325025)))

(assert (=> bs!595879 t!344017))

(declare-fun b_and!325027 () Bool)

(assert (= b_and!325001 (and (=> t!344017 result!303902) b_and!325027)))

(assert (=> bs!595879 t!344021))

(declare-fun b_and!325029 () Bool)

(assert (= b_and!325005 (and (=> t!344021 result!303908) b_and!325029)))

(declare-fun b_lambda!122347 () Bool)

(assert (=> (not b_lambda!122347) (not bs!595879)))

(assert (=> bs!595879 t!344025))

(declare-fun b_and!325031 () Bool)

(assert (= b_and!325009 (and (=> t!344025 result!303914) b_and!325031)))

(assert (=> bs!595879 t!344042))

(declare-fun b_and!325033 () Bool)

(assert (= b_and!325017 (and (=> t!344042 result!303938) b_and!325033)))

(assert (=> bs!595879 t!344027))

(declare-fun b_and!325035 () Bool)

(assert (= b_and!325011 (and (=> t!344027 result!303916) b_and!325035)))

(assert (=> bs!595879 t!344035))

(declare-fun b_and!325037 () Bool)

(assert (= b_and!325013 (and (=> t!344035 result!303930) b_and!325037)))

(assert (=> bs!595879 t!344023))

(declare-fun b_and!325039 () Bool)

(assert (= b_and!325007 (and (=> t!344023 result!303910) b_and!325039)))

(assert (=> bs!595879 m!4758209))

(assert (=> bs!595879 m!4758205))

(assert (=> bs!595879 m!4758211))

(assert (=> bs!595879 m!4758211))

(assert (=> bs!595879 m!4758213))

(assert (=> bs!595879 m!4758205))

(assert (=> d!1231271 d!1231413))

(check-sat (not d!1231391) (not b!4166915) (not b_next!121039) (not b!4166922) (not d!1231267) (not b!4166918) (not b!4166766) (not b_next!121045) (not b_next!121059) (not d!1231411) (not b!4166742) (not b!4166940) (not b_next!121055) (not bm!291005) (not d!1231339) (not b_lambda!122335) (not b!4166539) b_and!325035 (not b!4166933) (not b!4166752) (not b!4166895) (not bs!595879) (not b!4166900) (not b!4166825) (not b!4166743) (not b_next!121061) (not b!4166747) (not b!4166759) (not b!4166755) (not bm!291016) (not b_next!121057) (not b!4166703) (not b!4166955) (not b_next!121043) (not b!4166753) (not d!1231311) (not d!1231283) (not b!4166897) (not b!4166554) (not b!4166682) (not b_lambda!122337) (not b!4166906) (not b!4166705) (not d!1231261) (not d!1231359) (not b!4166957) (not d!1231331) (not b!4166898) (not b!4166614) (not b!4166861) b_and!325027 (not b_next!121047) (not b!4166921) (not b_lambda!122341) (not d!1231407) (not b!4166937) (not b!4166914) (not b!4166969) (not d!1231409) b_and!325033 (not b!4166657) (not b!4166858) (not d!1231269) b_and!325039 (not b!4166862) (not b!4166919) (not b_lambda!122343) (not b!4166896) (not b!4166928) (not b!4166903) (not b!4166932) (not b!4166901) (not b!4166925) (not b!4166866) (not b!4166945) (not b!4166744) (not d!1231367) (not b!4166941) (not b!4166946) (not b!4166762) b_and!325029 (not b!4166926) (not b_lambda!122347) (not b!4166713) (not d!1231365) (not b!4166902) (not b!4166911) (not d!1231271) (not b!4166905) (not d!1231397) (not b!4166929) (not b!4166857) (not b!4166952) b_and!325023 (not b!4166758) b_and!325037 (not b!4166610) (not b!4166756) b_and!325025 (not b_next!121049) (not b!4166751) (not d!1231287) (not b!4166649) (not b!4166909) (not b!4166923) (not b!4166685) (not b!4166953) (not b!4166865) (not b!4166913) (not b!4166686) (not b!4166951) (not b!4166715) (not b!4166712) (not bm!291028) (not b!4166687) (not d!1231355) (not b!4166856) b_and!325021 (not b!4166956) (not b!4166938) (not b!4166944) (not b_lambda!122333) (not b!4166947) (not bm!291004) (not b!4166948) (not b!4166942) (not b!4166864) (not bm!291025) (not b!4166681) (not b!4166971) (not b!4166860) (not b!4166917) (not d!1231329) (not b!4166683) (not b!4166970) (not d!1231317) (not b!4166934) b_and!325031 tp_is_empty!21877 (not b!4166930) (not b!4166764) (not b!4166910) (not d!1231337) (not b!4166749) (not b!4166907) (not b!4166936) (not b!4166707) (not b!4166924) (not b!4166746) (not b_lambda!122345) (not d!1231369) (not b_next!121041))
(check-sat (not b_next!121039) b_and!325035 (not b_next!121061) (not b_next!121057) (not b_next!121043) b_and!325027 (not b_next!121047) b_and!325033 b_and!325039 b_and!325029 b_and!325021 b_and!325031 (not b_next!121041) (not b_next!121045) (not b_next!121059) (not b_next!121055) b_and!325023 b_and!325037 b_and!325025 (not b_next!121049))
