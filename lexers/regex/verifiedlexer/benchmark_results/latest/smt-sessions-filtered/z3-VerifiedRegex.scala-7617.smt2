; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!402394 () Bool)

(assert start!402394)

(declare-fun b!4210706 () Bool)

(declare-fun b_free!123235 () Bool)

(declare-fun b_next!123939 () Bool)

(assert (=> b!4210706 (= b_free!123235 (not b_next!123939))))

(declare-fun tp!1287523 () Bool)

(declare-fun b_and!331349 () Bool)

(assert (=> b!4210706 (= tp!1287523 b_and!331349)))

(declare-fun b_free!123237 () Bool)

(declare-fun b_next!123941 () Bool)

(assert (=> b!4210706 (= b_free!123237 (not b_next!123941))))

(declare-fun tp!1287518 () Bool)

(declare-fun b_and!331351 () Bool)

(assert (=> b!4210706 (= tp!1287518 b_and!331351)))

(declare-fun b!4210696 () Bool)

(declare-fun b_free!123239 () Bool)

(declare-fun b_next!123943 () Bool)

(assert (=> b!4210696 (= b_free!123239 (not b_next!123943))))

(declare-fun tp!1287513 () Bool)

(declare-fun b_and!331353 () Bool)

(assert (=> b!4210696 (= tp!1287513 b_and!331353)))

(declare-fun b_free!123241 () Bool)

(declare-fun b_next!123945 () Bool)

(assert (=> b!4210696 (= b_free!123241 (not b_next!123945))))

(declare-fun tp!1287517 () Bool)

(declare-fun b_and!331355 () Bool)

(assert (=> b!4210696 (= tp!1287517 b_and!331355)))

(declare-fun b!4210697 () Bool)

(declare-fun b_free!123243 () Bool)

(declare-fun b_next!123947 () Bool)

(assert (=> b!4210697 (= b_free!123243 (not b_next!123947))))

(declare-fun tp!1287515 () Bool)

(declare-fun b_and!331357 () Bool)

(assert (=> b!4210697 (= tp!1287515 b_and!331357)))

(declare-fun b_free!123245 () Bool)

(declare-fun b_next!123949 () Bool)

(assert (=> b!4210697 (= b_free!123245 (not b_next!123949))))

(declare-fun tp!1287520 () Bool)

(declare-fun b_and!331359 () Bool)

(assert (=> b!4210697 (= tp!1287520 b_and!331359)))

(declare-fun b!4210708 () Bool)

(declare-fun b_free!123247 () Bool)

(declare-fun b_next!123951 () Bool)

(assert (=> b!4210708 (= b_free!123247 (not b_next!123951))))

(declare-fun tp!1287509 () Bool)

(declare-fun b_and!331361 () Bool)

(assert (=> b!4210708 (= tp!1287509 b_and!331361)))

(declare-fun b_free!123249 () Bool)

(declare-fun b_next!123953 () Bool)

(assert (=> b!4210708 (= b_free!123249 (not b_next!123953))))

(declare-fun tp!1287511 () Bool)

(declare-fun b_and!331363 () Bool)

(assert (=> b!4210708 (= tp!1287511 b_and!331363)))

(declare-fun b!4210691 () Bool)

(declare-fun res!1729605 () Bool)

(declare-fun e!2613929 () Bool)

(assert (=> b!4210691 (=> (not res!1729605) (not e!2613929))))

(declare-datatypes ((LexerInterface!7343 0))(
  ( (LexerInterfaceExt!7340 (__x!28179 Int)) (Lexer!7341) )
))
(declare-fun thiss!26544 () LexerInterface!7343)

(declare-datatypes ((List!46417 0))(
  ( (Nil!46293) (Cons!46293 (h!51713 (_ BitVec 16)) (t!347976 List!46417)) )
))
(declare-datatypes ((TokenValue!7978 0))(
  ( (FloatLiteralValue!15956 (text!56291 List!46417)) (TokenValueExt!7977 (__x!28180 Int)) (Broken!39890 (value!241321 List!46417)) (Object!8101) (End!7978) (Def!7978) (Underscore!7978) (Match!7978) (Else!7978) (Error!7978) (Case!7978) (If!7978) (Extends!7978) (Abstract!7978) (Class!7978) (Val!7978) (DelimiterValue!15956 (del!8038 List!46417)) (KeywordValue!7984 (value!241322 List!46417)) (CommentValue!15956 (value!241323 List!46417)) (WhitespaceValue!15956 (value!241324 List!46417)) (IndentationValue!7978 (value!241325 List!46417)) (String!53759) (Int32!7978) (Broken!39891 (value!241326 List!46417)) (Boolean!7979) (Unit!65416) (OperatorValue!7981 (op!8038 List!46417)) (IdentifierValue!15956 (value!241327 List!46417)) (IdentifierValue!15957 (value!241328 List!46417)) (WhitespaceValue!15957 (value!241329 List!46417)) (True!15956) (False!15956) (Broken!39892 (value!241330 List!46417)) (Broken!39893 (value!241331 List!46417)) (True!15957) (RightBrace!7978) (RightBracket!7978) (Colon!7978) (Null!7978) (Comma!7978) (LeftBracket!7978) (False!15957) (LeftBrace!7978) (ImaginaryLiteralValue!7978 (text!56292 List!46417)) (StringLiteralValue!23934 (value!241332 List!46417)) (EOFValue!7978 (value!241333 List!46417)) (IdentValue!7978 (value!241334 List!46417)) (DelimiterValue!15957 (value!241335 List!46417)) (DedentValue!7978 (value!241336 List!46417)) (NewLineValue!7978 (value!241337 List!46417)) (IntegerValue!23934 (value!241338 (_ BitVec 32)) (text!56293 List!46417)) (IntegerValue!23935 (value!241339 Int) (text!56294 List!46417)) (Times!7978) (Or!7978) (Equal!7978) (Minus!7978) (Broken!39894 (value!241340 List!46417)) (And!7978) (Div!7978) (LessEqual!7978) (Mod!7978) (Concat!20631) (Not!7978) (Plus!7978) (SpaceValue!7978 (value!241341 List!46417)) (IntegerValue!23936 (value!241342 Int) (text!56295 List!46417)) (StringLiteralValue!23935 (text!56296 List!46417)) (FloatLiteralValue!15957 (text!56297 List!46417)) (BytesLiteralValue!7978 (value!241343 List!46417)) (CommentValue!15957 (value!241344 List!46417)) (StringLiteralValue!23936 (value!241345 List!46417)) (ErrorTokenValue!7978 (msg!8039 List!46417)) )
))
(declare-datatypes ((C!25500 0))(
  ( (C!25501 (val!14912 Int)) )
))
(declare-datatypes ((List!46418 0))(
  ( (Nil!46294) (Cons!46294 (h!51714 C!25500) (t!347977 List!46418)) )
))
(declare-datatypes ((IArray!27923 0))(
  ( (IArray!27924 (innerList!14019 List!46418)) )
))
(declare-datatypes ((Regex!12653 0))(
  ( (ElementMatch!12653 (c!717360 C!25500)) (Concat!20632 (regOne!25818 Regex!12653) (regTwo!25818 Regex!12653)) (EmptyExpr!12653) (Star!12653 (reg!12982 Regex!12653)) (EmptyLang!12653) (Union!12653 (regOne!25819 Regex!12653) (regTwo!25819 Regex!12653)) )
))
(declare-datatypes ((String!53760 0))(
  ( (String!53761 (value!241346 String)) )
))
(declare-datatypes ((Conc!13959 0))(
  ( (Node!13959 (left!34464 Conc!13959) (right!34794 Conc!13959) (csize!28148 Int) (cheight!14170 Int)) (Leaf!21577 (xs!17265 IArray!27923) (csize!28149 Int)) (Empty!13959) )
))
(declare-datatypes ((BalanceConc!27512 0))(
  ( (BalanceConc!27513 (c!717361 Conc!13959)) )
))
(declare-datatypes ((TokenValueInjection!15384 0))(
  ( (TokenValueInjection!15385 (toValue!10468 Int) (toChars!10327 Int)) )
))
(declare-datatypes ((Rule!15296 0))(
  ( (Rule!15297 (regex!7748 Regex!12653) (tag!8612 String!53760) (isSeparator!7748 Bool) (transformation!7748 TokenValueInjection!15384)) )
))
(declare-datatypes ((List!46419 0))(
  ( (Nil!46295) (Cons!46295 (h!51715 Rule!15296) (t!347978 List!46419)) )
))
(declare-fun rules!3967 () List!46419)

(declare-fun rulesInvariant!6554 (LexerInterface!7343 List!46419) Bool)

(assert (=> b!4210691 (= res!1729605 (rulesInvariant!6554 thiss!26544 rules!3967))))

(declare-fun b!4210692 () Bool)

(declare-fun e!2613918 () Bool)

(declare-fun tp!1287527 () Bool)

(declare-fun e!2613914 () Bool)

(declare-fun inv!60905 (String!53760) Bool)

(declare-fun inv!60908 (TokenValueInjection!15384) Bool)

(assert (=> b!4210692 (= e!2613914 (and tp!1287527 (inv!60905 (tag!8612 (h!51715 rules!3967))) (inv!60908 (transformation!7748 (h!51715 rules!3967))) e!2613918))))

(declare-fun b!4210693 () Bool)

(declare-fun res!1729614 () Bool)

(assert (=> b!4210693 (=> (not res!1729614) (not e!2613929))))

(declare-fun pBis!121 () List!46418)

(declare-fun input!3517 () List!46418)

(declare-fun isPrefix!4607 (List!46418 List!46418) Bool)

(assert (=> b!4210693 (= res!1729614 (isPrefix!4607 pBis!121 input!3517))))

(declare-fun b!4210694 () Bool)

(declare-fun res!1729615 () Bool)

(assert (=> b!4210694 (=> (not res!1729615) (not e!2613929))))

(declare-fun p!3001 () List!46418)

(declare-fun suffix!1557 () List!46418)

(declare-fun ++!11822 (List!46418 List!46418) List!46418)

(assert (=> b!4210694 (= res!1729615 (= (++!11822 p!3001 suffix!1557) input!3517))))

(declare-fun tp!1287510 () Bool)

(declare-fun rBis!178 () Rule!15296)

(declare-fun b!4210695 () Bool)

(declare-fun e!2613915 () Bool)

(declare-fun e!2613931 () Bool)

(assert (=> b!4210695 (= e!2613915 (and tp!1287510 (inv!60905 (tag!8612 rBis!178)) (inv!60908 (transformation!7748 rBis!178)) e!2613931))))

(assert (=> b!4210696 (= e!2613931 (and tp!1287513 tp!1287517))))

(declare-fun e!2613923 () Bool)

(assert (=> b!4210697 (= e!2613923 (and tp!1287515 tp!1287520))))

(declare-fun b!4210698 () Bool)

(declare-fun res!1729613 () Bool)

(declare-fun e!2613913 () Bool)

(assert (=> b!4210698 (=> res!1729613 e!2613913)))

(get-info :version)

(assert (=> b!4210698 (= res!1729613 (or (and ((_ is Cons!46295) rules!3967) ((_ is Nil!46295) (t!347978 rules!3967))) (not ((_ is Cons!46295) rules!3967)) (= (h!51715 rules!3967) rBis!178)))))

(declare-fun b!4210700 () Bool)

(declare-fun e!2613917 () Bool)

(declare-fun tp_is_empty!22273 () Bool)

(declare-fun tp!1287521 () Bool)

(assert (=> b!4210700 (= e!2613917 (and tp_is_empty!22273 tp!1287521))))

(declare-fun b!4210701 () Bool)

(declare-fun res!1729610 () Bool)

(assert (=> b!4210701 (=> res!1729610 e!2613913)))

(declare-fun suffixBis!41 () List!46418)

(assert (=> b!4210701 (= res!1729610 (not (= (++!11822 pBis!121 suffixBis!41) input!3517)))))

(declare-fun b!4210702 () Bool)

(declare-fun res!1729604 () Bool)

(assert (=> b!4210702 (=> (not res!1729604) (not e!2613929))))

(declare-fun contains!9569 (List!46419 Rule!15296) Bool)

(assert (=> b!4210702 (= res!1729604 (contains!9569 rules!3967 rBis!178))))

(declare-fun b!4210703 () Bool)

(declare-fun e!2613928 () Bool)

(declare-fun tp!1287528 () Bool)

(assert (=> b!4210703 (= e!2613928 (and tp_is_empty!22273 tp!1287528))))

(declare-fun b!4210704 () Bool)

(declare-fun res!1729616 () Bool)

(assert (=> b!4210704 (=> (not res!1729616) (not e!2613929))))

(assert (=> b!4210704 (= res!1729616 (isPrefix!4607 p!3001 input!3517))))

(declare-fun b!4210705 () Bool)

(declare-fun res!1729602 () Bool)

(assert (=> b!4210705 (=> res!1729602 e!2613913)))

(declare-datatypes ((Token!14198 0))(
  ( (Token!14199 (value!241347 TokenValue!7978) (rule!10860 Rule!15296) (size!34005 Int) (originalCharacters!8130 List!46418)) )
))
(declare-fun tBis!41 () Token!14198)

(declare-fun list!16739 (BalanceConc!27512) List!46418)

(declare-fun charsOf!5171 (Token!14198) BalanceConc!27512)

(assert (=> b!4210705 (= res!1729602 (not (= (list!16739 (charsOf!5171 tBis!41)) pBis!121)))))

(declare-fun e!2613925 () Bool)

(assert (=> b!4210706 (= e!2613925 (and tp!1287523 tp!1287518))))

(declare-fun b!4210707 () Bool)

(declare-fun res!1729606 () Bool)

(assert (=> b!4210707 (=> res!1729606 e!2613913)))

(declare-datatypes ((tuple2!44034 0))(
  ( (tuple2!44035 (_1!25151 Token!14198) (_2!25151 List!46418)) )
))
(declare-datatypes ((Option!9936 0))(
  ( (None!9935) (Some!9935 (v!40803 tuple2!44034)) )
))
(declare-fun lt!1499001 () Option!9936)

(declare-fun maxPrefixOneRule!3338 (LexerInterface!7343 Rule!15296 List!46418) Option!9936)

(assert (=> b!4210707 (= res!1729606 (not (= (maxPrefixOneRule!3338 thiss!26544 (h!51715 rules!3967) input!3517) lt!1499001)))))

(assert (=> b!4210708 (= e!2613918 (and tp!1287509 tp!1287511))))

(declare-fun b!4210709 () Bool)

(declare-fun e!2613916 () Bool)

(declare-fun tp!1287526 () Bool)

(assert (=> b!4210709 (= e!2613916 (and e!2613914 tp!1287526))))

(declare-fun b!4210710 () Bool)

(declare-fun e!2613932 () Bool)

(declare-fun tp!1287525 () Bool)

(assert (=> b!4210710 (= e!2613932 (and tp_is_empty!22273 tp!1287525))))

(declare-fun b!4210711 () Bool)

(declare-fun res!1729607 () Bool)

(declare-fun e!2613933 () Bool)

(assert (=> b!4210711 (=> (not res!1729607) (not e!2613933))))

(declare-fun ruleValid!3460 (LexerInterface!7343 Rule!15296) Bool)

(assert (=> b!4210711 (= res!1729607 (ruleValid!3460 thiss!26544 rBis!178))))

(declare-fun b!4210712 () Bool)

(declare-fun e!2613926 () Bool)

(declare-fun tp!1287519 () Bool)

(assert (=> b!4210712 (= e!2613926 (and tp_is_empty!22273 tp!1287519))))

(declare-fun b!4210713 () Bool)

(declare-fun isEmpty!27412 (List!46419) Bool)

(assert (=> b!4210713 (= e!2613913 (not (isEmpty!27412 (t!347978 rules!3967))))))

(declare-fun e!2613910 () Bool)

(declare-fun e!2613934 () Bool)

(declare-fun b!4210714 () Bool)

(declare-fun tp!1287512 () Bool)

(declare-fun inv!21 (TokenValue!7978) Bool)

(assert (=> b!4210714 (= e!2613934 (and (inv!21 (value!241347 tBis!41)) e!2613910 tp!1287512))))

(declare-fun b!4210715 () Bool)

(declare-fun res!1729611 () Bool)

(assert (=> b!4210715 (=> res!1729611 e!2613913)))

(assert (=> b!4210715 (= res!1729611 (not (= (rule!10860 tBis!41) rBis!178)))))

(declare-fun res!1729612 () Bool)

(assert (=> start!402394 (=> (not res!1729612) (not e!2613929))))

(assert (=> start!402394 (= res!1729612 ((_ is Lexer!7341) thiss!26544))))

(assert (=> start!402394 e!2613929))

(declare-fun inv!60909 (Token!14198) Bool)

(assert (=> start!402394 (and (inv!60909 tBis!41) e!2613934)))

(assert (=> start!402394 true))

(assert (=> start!402394 e!2613915))

(assert (=> start!402394 e!2613932))

(assert (=> start!402394 e!2613916))

(assert (=> start!402394 e!2613917))

(declare-fun t!8364 () Token!14198)

(declare-fun e!2613930 () Bool)

(assert (=> start!402394 (and (inv!60909 t!8364) e!2613930)))

(declare-fun e!2613911 () Bool)

(assert (=> start!402394 e!2613911))

(assert (=> start!402394 e!2613928))

(assert (=> start!402394 e!2613926))

(declare-fun b!4210699 () Bool)

(declare-fun res!1729603 () Bool)

(assert (=> b!4210699 (=> res!1729603 e!2613913)))

(declare-fun isEmpty!27413 (Option!9936) Bool)

(declare-fun maxPrefix!4383 (LexerInterface!7343 List!46419 List!46418) Option!9936)

(assert (=> b!4210699 (= res!1729603 (not (isEmpty!27413 (maxPrefix!4383 thiss!26544 (t!347978 rules!3967) input!3517))))))

(declare-fun b!4210716 () Bool)

(assert (=> b!4210716 (= e!2613933 (not e!2613913))))

(declare-fun res!1729608 () Bool)

(assert (=> b!4210716 (=> res!1729608 e!2613913)))

(assert (=> b!4210716 (= res!1729608 (not (= (maxPrefixOneRule!3338 thiss!26544 rBis!178 input!3517) (Some!9935 (tuple2!44035 tBis!41 suffixBis!41)))))))

(assert (=> b!4210716 (isPrefix!4607 input!3517 input!3517)))

(declare-datatypes ((Unit!65417 0))(
  ( (Unit!65418) )
))
(declare-fun lt!1499002 () Unit!65417)

(declare-fun lemmaIsPrefixRefl!3024 (List!46418 List!46418) Unit!65417)

(assert (=> b!4210716 (= lt!1499002 (lemmaIsPrefixRefl!3024 input!3517 input!3517))))

(declare-fun b!4210717 () Bool)

(declare-fun res!1729617 () Bool)

(assert (=> b!4210717 (=> (not res!1729617) (not e!2613929))))

(assert (=> b!4210717 (= res!1729617 (not (isEmpty!27412 rules!3967)))))

(declare-fun b!4210718 () Bool)

(declare-fun tp!1287516 () Bool)

(declare-fun e!2613927 () Bool)

(assert (=> b!4210718 (= e!2613927 (and tp!1287516 (inv!60905 (tag!8612 (rule!10860 t!8364))) (inv!60908 (transformation!7748 (rule!10860 t!8364))) e!2613925))))

(declare-fun b!4210719 () Bool)

(declare-fun tp!1287524 () Bool)

(assert (=> b!4210719 (= e!2613911 (and tp_is_empty!22273 tp!1287524))))

(declare-fun b!4210720 () Bool)

(assert (=> b!4210720 (= e!2613929 e!2613933)))

(declare-fun res!1729609 () Bool)

(assert (=> b!4210720 (=> (not res!1729609) (not e!2613933))))

(assert (=> b!4210720 (= res!1729609 (= (maxPrefix!4383 thiss!26544 rules!3967 input!3517) lt!1499001))))

(assert (=> b!4210720 (= lt!1499001 (Some!9935 (tuple2!44035 t!8364 suffix!1557)))))

(declare-fun b!4210721 () Bool)

(declare-fun tp!1287522 () Bool)

(assert (=> b!4210721 (= e!2613930 (and (inv!21 (value!241347 t!8364)) e!2613927 tp!1287522))))

(declare-fun tp!1287514 () Bool)

(declare-fun b!4210722 () Bool)

(assert (=> b!4210722 (= e!2613910 (and tp!1287514 (inv!60905 (tag!8612 (rule!10860 tBis!41))) (inv!60908 (transformation!7748 (rule!10860 tBis!41))) e!2613923))))

(assert (= (and start!402394 res!1729612) b!4210694))

(assert (= (and b!4210694 res!1729615) b!4210704))

(assert (= (and b!4210704 res!1729616) b!4210693))

(assert (= (and b!4210693 res!1729614) b!4210717))

(assert (= (and b!4210717 res!1729617) b!4210691))

(assert (= (and b!4210691 res!1729605) b!4210702))

(assert (= (and b!4210702 res!1729604) b!4210720))

(assert (= (and b!4210720 res!1729609) b!4210711))

(assert (= (and b!4210711 res!1729607) b!4210716))

(assert (= (and b!4210716 (not res!1729608)) b!4210715))

(assert (= (and b!4210715 (not res!1729611)) b!4210705))

(assert (= (and b!4210705 (not res!1729602)) b!4210701))

(assert (= (and b!4210701 (not res!1729610)) b!4210698))

(assert (= (and b!4210698 (not res!1729613)) b!4210707))

(assert (= (and b!4210707 (not res!1729606)) b!4210699))

(assert (= (and b!4210699 (not res!1729603)) b!4210713))

(assert (= b!4210722 b!4210697))

(assert (= b!4210714 b!4210722))

(assert (= start!402394 b!4210714))

(assert (= b!4210695 b!4210696))

(assert (= start!402394 b!4210695))

(assert (= (and start!402394 ((_ is Cons!46294) p!3001)) b!4210710))

(assert (= b!4210692 b!4210708))

(assert (= b!4210709 b!4210692))

(assert (= (and start!402394 ((_ is Cons!46295) rules!3967)) b!4210709))

(assert (= (and start!402394 ((_ is Cons!46294) input!3517)) b!4210700))

(assert (= b!4210718 b!4210706))

(assert (= b!4210721 b!4210718))

(assert (= start!402394 b!4210721))

(assert (= (and start!402394 ((_ is Cons!46294) pBis!121)) b!4210719))

(assert (= (and start!402394 ((_ is Cons!46294) suffix!1557)) b!4210703))

(assert (= (and start!402394 ((_ is Cons!46294) suffixBis!41)) b!4210712))

(declare-fun m!4798479 () Bool)

(assert (=> b!4210721 m!4798479))

(declare-fun m!4798481 () Bool)

(assert (=> b!4210699 m!4798481))

(assert (=> b!4210699 m!4798481))

(declare-fun m!4798483 () Bool)

(assert (=> b!4210699 m!4798483))

(declare-fun m!4798485 () Bool)

(assert (=> b!4210705 m!4798485))

(assert (=> b!4210705 m!4798485))

(declare-fun m!4798487 () Bool)

(assert (=> b!4210705 m!4798487))

(declare-fun m!4798489 () Bool)

(assert (=> b!4210711 m!4798489))

(declare-fun m!4798491 () Bool)

(assert (=> b!4210691 m!4798491))

(declare-fun m!4798493 () Bool)

(assert (=> b!4210701 m!4798493))

(declare-fun m!4798495 () Bool)

(assert (=> b!4210694 m!4798495))

(declare-fun m!4798497 () Bool)

(assert (=> b!4210718 m!4798497))

(declare-fun m!4798499 () Bool)

(assert (=> b!4210718 m!4798499))

(declare-fun m!4798501 () Bool)

(assert (=> b!4210707 m!4798501))

(declare-fun m!4798503 () Bool)

(assert (=> b!4210713 m!4798503))

(declare-fun m!4798505 () Bool)

(assert (=> start!402394 m!4798505))

(declare-fun m!4798507 () Bool)

(assert (=> start!402394 m!4798507))

(declare-fun m!4798509 () Bool)

(assert (=> b!4210717 m!4798509))

(declare-fun m!4798511 () Bool)

(assert (=> b!4210702 m!4798511))

(declare-fun m!4798513 () Bool)

(assert (=> b!4210693 m!4798513))

(declare-fun m!4798515 () Bool)

(assert (=> b!4210720 m!4798515))

(declare-fun m!4798517 () Bool)

(assert (=> b!4210704 m!4798517))

(declare-fun m!4798519 () Bool)

(assert (=> b!4210722 m!4798519))

(declare-fun m!4798521 () Bool)

(assert (=> b!4210722 m!4798521))

(declare-fun m!4798523 () Bool)

(assert (=> b!4210695 m!4798523))

(declare-fun m!4798525 () Bool)

(assert (=> b!4210695 m!4798525))

(declare-fun m!4798527 () Bool)

(assert (=> b!4210714 m!4798527))

(declare-fun m!4798529 () Bool)

(assert (=> b!4210716 m!4798529))

(declare-fun m!4798531 () Bool)

(assert (=> b!4210716 m!4798531))

(declare-fun m!4798533 () Bool)

(assert (=> b!4210716 m!4798533))

(declare-fun m!4798535 () Bool)

(assert (=> b!4210692 m!4798535))

(declare-fun m!4798537 () Bool)

(assert (=> b!4210692 m!4798537))

(check-sat (not b!4210712) (not b!4210719) (not b!4210704) (not b!4210705) (not b!4210703) (not b_next!123943) (not b!4210707) (not b!4210699) (not b!4210694) (not b!4210700) (not b!4210711) (not start!402394) b_and!331361 (not b_next!123951) (not b!4210714) (not b!4210722) (not b!4210701) (not b!4210721) tp_is_empty!22273 b_and!331351 (not b_next!123939) (not b!4210717) b_and!331355 b_and!331359 (not b!4210693) (not b!4210695) (not b!4210691) (not b!4210692) (not b_next!123953) (not b!4210709) b_and!331357 (not b_next!123947) (not b!4210716) (not b!4210702) (not b!4210713) (not b!4210720) (not b_next!123949) (not b_next!123941) b_and!331353 (not b!4210718) b_and!331349 (not b!4210710) (not b_next!123945) b_and!331363)
(check-sat b_and!331361 (not b_next!123951) (not b_next!123953) (not b_next!123943) b_and!331353 b_and!331349 b_and!331351 (not b_next!123939) b_and!331355 b_and!331359 b_and!331357 (not b_next!123947) (not b_next!123949) (not b_next!123941) (not b_next!123945) b_and!331363)
(get-model)

(declare-fun b!4210788 () Bool)

(declare-fun e!2613971 () Option!9936)

(declare-fun call!292961 () Option!9936)

(assert (=> b!4210788 (= e!2613971 call!292961)))

(declare-fun b!4210789 () Bool)

(declare-fun e!2613970 () Bool)

(declare-fun lt!1499023 () Option!9936)

(declare-fun get!15056 (Option!9936) tuple2!44034)

(assert (=> b!4210789 (= e!2613970 (contains!9569 rules!3967 (rule!10860 (_1!25151 (get!15056 lt!1499023)))))))

(declare-fun bm!292956 () Bool)

(assert (=> bm!292956 (= call!292961 (maxPrefixOneRule!3338 thiss!26544 (h!51715 rules!3967) input!3517))))

(declare-fun d!1241030 () Bool)

(declare-fun e!2613972 () Bool)

(assert (=> d!1241030 e!2613972))

(declare-fun res!1729680 () Bool)

(assert (=> d!1241030 (=> res!1729680 e!2613972)))

(assert (=> d!1241030 (= res!1729680 (isEmpty!27413 lt!1499023))))

(assert (=> d!1241030 (= lt!1499023 e!2613971)))

(declare-fun c!717367 () Bool)

(assert (=> d!1241030 (= c!717367 (and ((_ is Cons!46295) rules!3967) ((_ is Nil!46295) (t!347978 rules!3967))))))

(declare-fun lt!1499019 () Unit!65417)

(declare-fun lt!1499020 () Unit!65417)

(assert (=> d!1241030 (= lt!1499019 lt!1499020)))

(assert (=> d!1241030 (isPrefix!4607 input!3517 input!3517)))

(assert (=> d!1241030 (= lt!1499020 (lemmaIsPrefixRefl!3024 input!3517 input!3517))))

(declare-fun rulesValidInductive!2873 (LexerInterface!7343 List!46419) Bool)

(assert (=> d!1241030 (rulesValidInductive!2873 thiss!26544 rules!3967)))

(assert (=> d!1241030 (= (maxPrefix!4383 thiss!26544 rules!3967 input!3517) lt!1499023)))

(declare-fun b!4210790 () Bool)

(assert (=> b!4210790 (= e!2613972 e!2613970)))

(declare-fun res!1729682 () Bool)

(assert (=> b!4210790 (=> (not res!1729682) (not e!2613970))))

(declare-fun isDefined!7383 (Option!9936) Bool)

(assert (=> b!4210790 (= res!1729682 (isDefined!7383 lt!1499023))))

(declare-fun b!4210791 () Bool)

(declare-fun lt!1499021 () Option!9936)

(declare-fun lt!1499022 () Option!9936)

(assert (=> b!4210791 (= e!2613971 (ite (and ((_ is None!9935) lt!1499021) ((_ is None!9935) lt!1499022)) None!9935 (ite ((_ is None!9935) lt!1499022) lt!1499021 (ite ((_ is None!9935) lt!1499021) lt!1499022 (ite (>= (size!34005 (_1!25151 (v!40803 lt!1499021))) (size!34005 (_1!25151 (v!40803 lt!1499022)))) lt!1499021 lt!1499022)))))))

(assert (=> b!4210791 (= lt!1499021 call!292961)))

(assert (=> b!4210791 (= lt!1499022 (maxPrefix!4383 thiss!26544 (t!347978 rules!3967) input!3517))))

(declare-fun b!4210792 () Bool)

(declare-fun res!1729683 () Bool)

(assert (=> b!4210792 (=> (not res!1729683) (not e!2613970))))

(declare-fun size!34008 (List!46418) Int)

(assert (=> b!4210792 (= res!1729683 (< (size!34008 (_2!25151 (get!15056 lt!1499023))) (size!34008 input!3517)))))

(declare-fun b!4210793 () Bool)

(declare-fun res!1729679 () Bool)

(assert (=> b!4210793 (=> (not res!1729679) (not e!2613970))))

(declare-fun apply!10683 (TokenValueInjection!15384 BalanceConc!27512) TokenValue!7978)

(declare-fun seqFromList!5743 (List!46418) BalanceConc!27512)

(assert (=> b!4210793 (= res!1729679 (= (value!241347 (_1!25151 (get!15056 lt!1499023))) (apply!10683 (transformation!7748 (rule!10860 (_1!25151 (get!15056 lt!1499023)))) (seqFromList!5743 (originalCharacters!8130 (_1!25151 (get!15056 lt!1499023)))))))))

(declare-fun b!4210794 () Bool)

(declare-fun res!1729681 () Bool)

(assert (=> b!4210794 (=> (not res!1729681) (not e!2613970))))

(assert (=> b!4210794 (= res!1729681 (= (++!11822 (list!16739 (charsOf!5171 (_1!25151 (get!15056 lt!1499023)))) (_2!25151 (get!15056 lt!1499023))) input!3517))))

(declare-fun b!4210795 () Bool)

(declare-fun res!1729684 () Bool)

(assert (=> b!4210795 (=> (not res!1729684) (not e!2613970))))

(declare-fun matchR!6362 (Regex!12653 List!46418) Bool)

(assert (=> b!4210795 (= res!1729684 (matchR!6362 (regex!7748 (rule!10860 (_1!25151 (get!15056 lt!1499023)))) (list!16739 (charsOf!5171 (_1!25151 (get!15056 lt!1499023))))))))

(declare-fun b!4210796 () Bool)

(declare-fun res!1729685 () Bool)

(assert (=> b!4210796 (=> (not res!1729685) (not e!2613970))))

(assert (=> b!4210796 (= res!1729685 (= (list!16739 (charsOf!5171 (_1!25151 (get!15056 lt!1499023)))) (originalCharacters!8130 (_1!25151 (get!15056 lt!1499023)))))))

(assert (= (and d!1241030 c!717367) b!4210788))

(assert (= (and d!1241030 (not c!717367)) b!4210791))

(assert (= (or b!4210788 b!4210791) bm!292956))

(assert (= (and d!1241030 (not res!1729680)) b!4210790))

(assert (= (and b!4210790 res!1729682) b!4210796))

(assert (= (and b!4210796 res!1729685) b!4210792))

(assert (= (and b!4210792 res!1729683) b!4210794))

(assert (= (and b!4210794 res!1729681) b!4210793))

(assert (= (and b!4210793 res!1729679) b!4210795))

(assert (= (and b!4210795 res!1729684) b!4210789))

(assert (=> bm!292956 m!4798501))

(declare-fun m!4798599 () Bool)

(assert (=> b!4210793 m!4798599))

(declare-fun m!4798601 () Bool)

(assert (=> b!4210793 m!4798601))

(assert (=> b!4210793 m!4798601))

(declare-fun m!4798603 () Bool)

(assert (=> b!4210793 m!4798603))

(declare-fun m!4798605 () Bool)

(assert (=> d!1241030 m!4798605))

(assert (=> d!1241030 m!4798531))

(assert (=> d!1241030 m!4798533))

(declare-fun m!4798607 () Bool)

(assert (=> d!1241030 m!4798607))

(declare-fun m!4798609 () Bool)

(assert (=> b!4210790 m!4798609))

(assert (=> b!4210794 m!4798599))

(declare-fun m!4798611 () Bool)

(assert (=> b!4210794 m!4798611))

(assert (=> b!4210794 m!4798611))

(declare-fun m!4798613 () Bool)

(assert (=> b!4210794 m!4798613))

(assert (=> b!4210794 m!4798613))

(declare-fun m!4798615 () Bool)

(assert (=> b!4210794 m!4798615))

(assert (=> b!4210795 m!4798599))

(assert (=> b!4210795 m!4798611))

(assert (=> b!4210795 m!4798611))

(assert (=> b!4210795 m!4798613))

(assert (=> b!4210795 m!4798613))

(declare-fun m!4798617 () Bool)

(assert (=> b!4210795 m!4798617))

(assert (=> b!4210789 m!4798599))

(declare-fun m!4798619 () Bool)

(assert (=> b!4210789 m!4798619))

(assert (=> b!4210791 m!4798481))

(assert (=> b!4210796 m!4798599))

(assert (=> b!4210796 m!4798611))

(assert (=> b!4210796 m!4798611))

(assert (=> b!4210796 m!4798613))

(assert (=> b!4210792 m!4798599))

(declare-fun m!4798621 () Bool)

(assert (=> b!4210792 m!4798621))

(declare-fun m!4798623 () Bool)

(assert (=> b!4210792 m!4798623))

(assert (=> b!4210720 d!1241030))

(declare-fun d!1241050 () Bool)

(assert (=> d!1241050 (= (inv!60905 (tag!8612 (rule!10860 t!8364))) (= (mod (str.len (value!241346 (tag!8612 (rule!10860 t!8364)))) 2) 0))))

(assert (=> b!4210718 d!1241050))

(declare-fun d!1241052 () Bool)

(declare-fun res!1729688 () Bool)

(declare-fun e!2613975 () Bool)

(assert (=> d!1241052 (=> (not res!1729688) (not e!2613975))))

(declare-fun semiInverseModEq!3364 (Int Int) Bool)

(assert (=> d!1241052 (= res!1729688 (semiInverseModEq!3364 (toChars!10327 (transformation!7748 (rule!10860 t!8364))) (toValue!10468 (transformation!7748 (rule!10860 t!8364)))))))

(assert (=> d!1241052 (= (inv!60908 (transformation!7748 (rule!10860 t!8364))) e!2613975)))

(declare-fun b!4210799 () Bool)

(declare-fun equivClasses!3263 (Int Int) Bool)

(assert (=> b!4210799 (= e!2613975 (equivClasses!3263 (toChars!10327 (transformation!7748 (rule!10860 t!8364))) (toValue!10468 (transformation!7748 (rule!10860 t!8364)))))))

(assert (= (and d!1241052 res!1729688) b!4210799))

(declare-fun m!4798625 () Bool)

(assert (=> d!1241052 m!4798625))

(declare-fun m!4798627 () Bool)

(assert (=> b!4210799 m!4798627))

(assert (=> b!4210718 d!1241052))

(declare-fun b!4210982 () Bool)

(declare-fun res!1729790 () Bool)

(declare-fun e!2614072 () Bool)

(assert (=> b!4210982 (=> (not res!1729790) (not e!2614072))))

(declare-fun lt!1499088 () Option!9936)

(assert (=> b!4210982 (= res!1729790 (< (size!34008 (_2!25151 (get!15056 lt!1499088))) (size!34008 input!3517)))))

(declare-fun b!4210983 () Bool)

(assert (=> b!4210983 (= e!2614072 (= (size!34005 (_1!25151 (get!15056 lt!1499088))) (size!34008 (originalCharacters!8130 (_1!25151 (get!15056 lt!1499088))))))))

(declare-fun d!1241054 () Bool)

(declare-fun e!2614073 () Bool)

(assert (=> d!1241054 e!2614073))

(declare-fun res!1729791 () Bool)

(assert (=> d!1241054 (=> res!1729791 e!2614073)))

(assert (=> d!1241054 (= res!1729791 (isEmpty!27413 lt!1499088))))

(declare-fun e!2614074 () Option!9936)

(assert (=> d!1241054 (= lt!1499088 e!2614074)))

(declare-fun c!717387 () Bool)

(declare-datatypes ((tuple2!44038 0))(
  ( (tuple2!44039 (_1!25153 List!46418) (_2!25153 List!46418)) )
))
(declare-fun lt!1499089 () tuple2!44038)

(declare-fun isEmpty!27415 (List!46418) Bool)

(assert (=> d!1241054 (= c!717387 (isEmpty!27415 (_1!25153 lt!1499089)))))

(declare-fun findLongestMatch!1556 (Regex!12653 List!46418) tuple2!44038)

(assert (=> d!1241054 (= lt!1499089 (findLongestMatch!1556 (regex!7748 (h!51715 rules!3967)) input!3517))))

(assert (=> d!1241054 (ruleValid!3460 thiss!26544 (h!51715 rules!3967))))

(assert (=> d!1241054 (= (maxPrefixOneRule!3338 thiss!26544 (h!51715 rules!3967) input!3517) lt!1499088)))

(declare-fun b!4210984 () Bool)

(declare-fun res!1729789 () Bool)

(assert (=> b!4210984 (=> (not res!1729789) (not e!2614072))))

(assert (=> b!4210984 (= res!1729789 (= (rule!10860 (_1!25151 (get!15056 lt!1499088))) (h!51715 rules!3967)))))

(declare-fun b!4210985 () Bool)

(declare-fun e!2614071 () Bool)

(declare-fun findLongestMatchInner!1643 (Regex!12653 List!46418 Int List!46418 List!46418 Int) tuple2!44038)

(assert (=> b!4210985 (= e!2614071 (matchR!6362 (regex!7748 (h!51715 rules!3967)) (_1!25153 (findLongestMatchInner!1643 (regex!7748 (h!51715 rules!3967)) Nil!46294 (size!34008 Nil!46294) input!3517 input!3517 (size!34008 input!3517)))))))

(declare-fun b!4210986 () Bool)

(declare-fun res!1729785 () Bool)

(assert (=> b!4210986 (=> (not res!1729785) (not e!2614072))))

(assert (=> b!4210986 (= res!1729785 (= (value!241347 (_1!25151 (get!15056 lt!1499088))) (apply!10683 (transformation!7748 (rule!10860 (_1!25151 (get!15056 lt!1499088)))) (seqFromList!5743 (originalCharacters!8130 (_1!25151 (get!15056 lt!1499088)))))))))

(declare-fun b!4210987 () Bool)

(declare-fun res!1729786 () Bool)

(assert (=> b!4210987 (=> (not res!1729786) (not e!2614072))))

(assert (=> b!4210987 (= res!1729786 (= (++!11822 (list!16739 (charsOf!5171 (_1!25151 (get!15056 lt!1499088)))) (_2!25151 (get!15056 lt!1499088))) input!3517))))

(declare-fun b!4210988 () Bool)

(assert (=> b!4210988 (= e!2614074 None!9935)))

(declare-fun b!4210989 () Bool)

(assert (=> b!4210989 (= e!2614073 e!2614072)))

(declare-fun res!1729788 () Bool)

(assert (=> b!4210989 (=> (not res!1729788) (not e!2614072))))

(assert (=> b!4210989 (= res!1729788 (matchR!6362 (regex!7748 (h!51715 rules!3967)) (list!16739 (charsOf!5171 (_1!25151 (get!15056 lt!1499088))))))))

(declare-fun b!4210990 () Bool)

(declare-fun size!34009 (BalanceConc!27512) Int)

(assert (=> b!4210990 (= e!2614074 (Some!9935 (tuple2!44035 (Token!14199 (apply!10683 (transformation!7748 (h!51715 rules!3967)) (seqFromList!5743 (_1!25153 lt!1499089))) (h!51715 rules!3967) (size!34009 (seqFromList!5743 (_1!25153 lt!1499089))) (_1!25153 lt!1499089)) (_2!25153 lt!1499089))))))

(declare-fun lt!1499086 () Unit!65417)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1616 (Regex!12653 List!46418) Unit!65417)

(assert (=> b!4210990 (= lt!1499086 (longestMatchIsAcceptedByMatchOrIsEmpty!1616 (regex!7748 (h!51715 rules!3967)) input!3517))))

(declare-fun res!1729787 () Bool)

(assert (=> b!4210990 (= res!1729787 (isEmpty!27415 (_1!25153 (findLongestMatchInner!1643 (regex!7748 (h!51715 rules!3967)) Nil!46294 (size!34008 Nil!46294) input!3517 input!3517 (size!34008 input!3517)))))))

(assert (=> b!4210990 (=> res!1729787 e!2614071)))

(assert (=> b!4210990 e!2614071))

(declare-fun lt!1499090 () Unit!65417)

(assert (=> b!4210990 (= lt!1499090 lt!1499086)))

(declare-fun lt!1499087 () Unit!65417)

(declare-fun lemmaSemiInverse!2484 (TokenValueInjection!15384 BalanceConc!27512) Unit!65417)

(assert (=> b!4210990 (= lt!1499087 (lemmaSemiInverse!2484 (transformation!7748 (h!51715 rules!3967)) (seqFromList!5743 (_1!25153 lt!1499089))))))

(assert (= (and d!1241054 c!717387) b!4210988))

(assert (= (and d!1241054 (not c!717387)) b!4210990))

(assert (= (and b!4210990 (not res!1729787)) b!4210985))

(assert (= (and d!1241054 (not res!1729791)) b!4210989))

(assert (= (and b!4210989 res!1729788) b!4210987))

(assert (= (and b!4210987 res!1729786) b!4210982))

(assert (= (and b!4210982 res!1729790) b!4210984))

(assert (= (and b!4210984 res!1729789) b!4210986))

(assert (= (and b!4210986 res!1729785) b!4210983))

(declare-fun m!4798829 () Bool)

(assert (=> b!4210983 m!4798829))

(declare-fun m!4798831 () Bool)

(assert (=> b!4210983 m!4798831))

(assert (=> b!4210989 m!4798829))

(declare-fun m!4798833 () Bool)

(assert (=> b!4210989 m!4798833))

(assert (=> b!4210989 m!4798833))

(declare-fun m!4798835 () Bool)

(assert (=> b!4210989 m!4798835))

(assert (=> b!4210989 m!4798835))

(declare-fun m!4798837 () Bool)

(assert (=> b!4210989 m!4798837))

(assert (=> b!4210990 m!4798623))

(declare-fun m!4798839 () Bool)

(assert (=> b!4210990 m!4798839))

(declare-fun m!4798841 () Bool)

(assert (=> b!4210990 m!4798841))

(declare-fun m!4798843 () Bool)

(assert (=> b!4210990 m!4798843))

(assert (=> b!4210990 m!4798839))

(declare-fun m!4798845 () Bool)

(assert (=> b!4210990 m!4798845))

(assert (=> b!4210990 m!4798845))

(assert (=> b!4210990 m!4798623))

(declare-fun m!4798847 () Bool)

(assert (=> b!4210990 m!4798847))

(assert (=> b!4210990 m!4798839))

(declare-fun m!4798849 () Bool)

(assert (=> b!4210990 m!4798849))

(declare-fun m!4798851 () Bool)

(assert (=> b!4210990 m!4798851))

(assert (=> b!4210990 m!4798839))

(declare-fun m!4798853 () Bool)

(assert (=> b!4210990 m!4798853))

(assert (=> b!4210984 m!4798829))

(assert (=> b!4210986 m!4798829))

(declare-fun m!4798855 () Bool)

(assert (=> b!4210986 m!4798855))

(assert (=> b!4210986 m!4798855))

(declare-fun m!4798857 () Bool)

(assert (=> b!4210986 m!4798857))

(assert (=> b!4210987 m!4798829))

(assert (=> b!4210987 m!4798833))

(assert (=> b!4210987 m!4798833))

(assert (=> b!4210987 m!4798835))

(assert (=> b!4210987 m!4798835))

(declare-fun m!4798859 () Bool)

(assert (=> b!4210987 m!4798859))

(assert (=> b!4210982 m!4798829))

(declare-fun m!4798861 () Bool)

(assert (=> b!4210982 m!4798861))

(assert (=> b!4210982 m!4798623))

(assert (=> b!4210985 m!4798845))

(assert (=> b!4210985 m!4798623))

(assert (=> b!4210985 m!4798845))

(assert (=> b!4210985 m!4798623))

(assert (=> b!4210985 m!4798847))

(declare-fun m!4798863 () Bool)

(assert (=> b!4210985 m!4798863))

(declare-fun m!4798865 () Bool)

(assert (=> d!1241054 m!4798865))

(declare-fun m!4798867 () Bool)

(assert (=> d!1241054 m!4798867))

(declare-fun m!4798869 () Bool)

(assert (=> d!1241054 m!4798869))

(declare-fun m!4798871 () Bool)

(assert (=> d!1241054 m!4798871))

(assert (=> b!4210707 d!1241054))

(declare-fun d!1241098 () Bool)

(declare-fun res!1729796 () Bool)

(declare-fun e!2614077 () Bool)

(assert (=> d!1241098 (=> (not res!1729796) (not e!2614077))))

(assert (=> d!1241098 (= res!1729796 (not (isEmpty!27415 (originalCharacters!8130 tBis!41))))))

(assert (=> d!1241098 (= (inv!60909 tBis!41) e!2614077)))

(declare-fun b!4210995 () Bool)

(declare-fun res!1729797 () Bool)

(assert (=> b!4210995 (=> (not res!1729797) (not e!2614077))))

(declare-fun dynLambda!19968 (Int TokenValue!7978) BalanceConc!27512)

(assert (=> b!4210995 (= res!1729797 (= (originalCharacters!8130 tBis!41) (list!16739 (dynLambda!19968 (toChars!10327 (transformation!7748 (rule!10860 tBis!41))) (value!241347 tBis!41)))))))

(declare-fun b!4210996 () Bool)

(assert (=> b!4210996 (= e!2614077 (= (size!34005 tBis!41) (size!34008 (originalCharacters!8130 tBis!41))))))

(assert (= (and d!1241098 res!1729796) b!4210995))

(assert (= (and b!4210995 res!1729797) b!4210996))

(declare-fun b_lambda!124035 () Bool)

(assert (=> (not b_lambda!124035) (not b!4210995)))

(declare-fun t!348000 () Bool)

(declare-fun tb!252779 () Bool)

(assert (=> (and b!4210706 (= (toChars!10327 (transformation!7748 (rule!10860 t!8364))) (toChars!10327 (transformation!7748 (rule!10860 tBis!41)))) t!348000) tb!252779))

(declare-fun b!4211001 () Bool)

(declare-fun e!2614080 () Bool)

(declare-fun tp!1287586 () Bool)

(declare-fun inv!60912 (Conc!13959) Bool)

(assert (=> b!4211001 (= e!2614080 (and (inv!60912 (c!717361 (dynLambda!19968 (toChars!10327 (transformation!7748 (rule!10860 tBis!41))) (value!241347 tBis!41)))) tp!1287586))))

(declare-fun result!308068 () Bool)

(declare-fun inv!60913 (BalanceConc!27512) Bool)

(assert (=> tb!252779 (= result!308068 (and (inv!60913 (dynLambda!19968 (toChars!10327 (transformation!7748 (rule!10860 tBis!41))) (value!241347 tBis!41))) e!2614080))))

(assert (= tb!252779 b!4211001))

(declare-fun m!4798873 () Bool)

(assert (=> b!4211001 m!4798873))

(declare-fun m!4798875 () Bool)

(assert (=> tb!252779 m!4798875))

(assert (=> b!4210995 t!348000))

(declare-fun b_and!331393 () Bool)

(assert (= b_and!331351 (and (=> t!348000 result!308068) b_and!331393)))

(declare-fun tb!252781 () Bool)

(declare-fun t!348002 () Bool)

(assert (=> (and b!4210696 (= (toChars!10327 (transformation!7748 rBis!178)) (toChars!10327 (transformation!7748 (rule!10860 tBis!41)))) t!348002) tb!252781))

(declare-fun result!308072 () Bool)

(assert (= result!308072 result!308068))

(assert (=> b!4210995 t!348002))

(declare-fun b_and!331395 () Bool)

(assert (= b_and!331355 (and (=> t!348002 result!308072) b_and!331395)))

(declare-fun t!348004 () Bool)

(declare-fun tb!252783 () Bool)

(assert (=> (and b!4210697 (= (toChars!10327 (transformation!7748 (rule!10860 tBis!41))) (toChars!10327 (transformation!7748 (rule!10860 tBis!41)))) t!348004) tb!252783))

(declare-fun result!308074 () Bool)

(assert (= result!308074 result!308068))

(assert (=> b!4210995 t!348004))

(declare-fun b_and!331397 () Bool)

(assert (= b_and!331359 (and (=> t!348004 result!308074) b_and!331397)))

(declare-fun tb!252785 () Bool)

(declare-fun t!348006 () Bool)

(assert (=> (and b!4210708 (= (toChars!10327 (transformation!7748 (h!51715 rules!3967))) (toChars!10327 (transformation!7748 (rule!10860 tBis!41)))) t!348006) tb!252785))

(declare-fun result!308076 () Bool)

(assert (= result!308076 result!308068))

(assert (=> b!4210995 t!348006))

(declare-fun b_and!331399 () Bool)

(assert (= b_and!331363 (and (=> t!348006 result!308076) b_and!331399)))

(declare-fun m!4798877 () Bool)

(assert (=> d!1241098 m!4798877))

(declare-fun m!4798879 () Bool)

(assert (=> b!4210995 m!4798879))

(assert (=> b!4210995 m!4798879))

(declare-fun m!4798881 () Bool)

(assert (=> b!4210995 m!4798881))

(declare-fun m!4798883 () Bool)

(assert (=> b!4210996 m!4798883))

(assert (=> start!402394 d!1241098))

(declare-fun d!1241100 () Bool)

(declare-fun res!1729798 () Bool)

(declare-fun e!2614081 () Bool)

(assert (=> d!1241100 (=> (not res!1729798) (not e!2614081))))

(assert (=> d!1241100 (= res!1729798 (not (isEmpty!27415 (originalCharacters!8130 t!8364))))))

(assert (=> d!1241100 (= (inv!60909 t!8364) e!2614081)))

(declare-fun b!4211002 () Bool)

(declare-fun res!1729799 () Bool)

(assert (=> b!4211002 (=> (not res!1729799) (not e!2614081))))

(assert (=> b!4211002 (= res!1729799 (= (originalCharacters!8130 t!8364) (list!16739 (dynLambda!19968 (toChars!10327 (transformation!7748 (rule!10860 t!8364))) (value!241347 t!8364)))))))

(declare-fun b!4211003 () Bool)

(assert (=> b!4211003 (= e!2614081 (= (size!34005 t!8364) (size!34008 (originalCharacters!8130 t!8364))))))

(assert (= (and d!1241100 res!1729798) b!4211002))

(assert (= (and b!4211002 res!1729799) b!4211003))

(declare-fun b_lambda!124037 () Bool)

(assert (=> (not b_lambda!124037) (not b!4211002)))

(declare-fun t!348008 () Bool)

(declare-fun tb!252787 () Bool)

(assert (=> (and b!4210706 (= (toChars!10327 (transformation!7748 (rule!10860 t!8364))) (toChars!10327 (transformation!7748 (rule!10860 t!8364)))) t!348008) tb!252787))

(declare-fun b!4211004 () Bool)

(declare-fun e!2614082 () Bool)

(declare-fun tp!1287587 () Bool)

(assert (=> b!4211004 (= e!2614082 (and (inv!60912 (c!717361 (dynLambda!19968 (toChars!10327 (transformation!7748 (rule!10860 t!8364))) (value!241347 t!8364)))) tp!1287587))))

(declare-fun result!308078 () Bool)

(assert (=> tb!252787 (= result!308078 (and (inv!60913 (dynLambda!19968 (toChars!10327 (transformation!7748 (rule!10860 t!8364))) (value!241347 t!8364))) e!2614082))))

(assert (= tb!252787 b!4211004))

(declare-fun m!4798885 () Bool)

(assert (=> b!4211004 m!4798885))

(declare-fun m!4798887 () Bool)

(assert (=> tb!252787 m!4798887))

(assert (=> b!4211002 t!348008))

(declare-fun b_and!331401 () Bool)

(assert (= b_and!331393 (and (=> t!348008 result!308078) b_and!331401)))

(declare-fun t!348010 () Bool)

(declare-fun tb!252789 () Bool)

(assert (=> (and b!4210696 (= (toChars!10327 (transformation!7748 rBis!178)) (toChars!10327 (transformation!7748 (rule!10860 t!8364)))) t!348010) tb!252789))

(declare-fun result!308080 () Bool)

(assert (= result!308080 result!308078))

(assert (=> b!4211002 t!348010))

(declare-fun b_and!331403 () Bool)

(assert (= b_and!331395 (and (=> t!348010 result!308080) b_and!331403)))

(declare-fun t!348012 () Bool)

(declare-fun tb!252791 () Bool)

(assert (=> (and b!4210697 (= (toChars!10327 (transformation!7748 (rule!10860 tBis!41))) (toChars!10327 (transformation!7748 (rule!10860 t!8364)))) t!348012) tb!252791))

(declare-fun result!308082 () Bool)

(assert (= result!308082 result!308078))

(assert (=> b!4211002 t!348012))

(declare-fun b_and!331405 () Bool)

(assert (= b_and!331397 (and (=> t!348012 result!308082) b_and!331405)))

(declare-fun tb!252793 () Bool)

(declare-fun t!348014 () Bool)

(assert (=> (and b!4210708 (= (toChars!10327 (transformation!7748 (h!51715 rules!3967))) (toChars!10327 (transformation!7748 (rule!10860 t!8364)))) t!348014) tb!252793))

(declare-fun result!308084 () Bool)

(assert (= result!308084 result!308078))

(assert (=> b!4211002 t!348014))

(declare-fun b_and!331407 () Bool)

(assert (= b_and!331399 (and (=> t!348014 result!308084) b_and!331407)))

(declare-fun m!4798889 () Bool)

(assert (=> d!1241100 m!4798889))

(declare-fun m!4798891 () Bool)

(assert (=> b!4211002 m!4798891))

(assert (=> b!4211002 m!4798891))

(declare-fun m!4798893 () Bool)

(assert (=> b!4211002 m!4798893))

(declare-fun m!4798895 () Bool)

(assert (=> b!4211003 m!4798895))

(assert (=> start!402394 d!1241100))

(declare-fun d!1241102 () Bool)

(assert (=> d!1241102 (= (inv!60905 (tag!8612 (rule!10860 tBis!41))) (= (mod (str.len (value!241346 (tag!8612 (rule!10860 tBis!41)))) 2) 0))))

(assert (=> b!4210722 d!1241102))

(declare-fun d!1241104 () Bool)

(declare-fun res!1729800 () Bool)

(declare-fun e!2614083 () Bool)

(assert (=> d!1241104 (=> (not res!1729800) (not e!2614083))))

(assert (=> d!1241104 (= res!1729800 (semiInverseModEq!3364 (toChars!10327 (transformation!7748 (rule!10860 tBis!41))) (toValue!10468 (transformation!7748 (rule!10860 tBis!41)))))))

(assert (=> d!1241104 (= (inv!60908 (transformation!7748 (rule!10860 tBis!41))) e!2614083)))

(declare-fun b!4211005 () Bool)

(assert (=> b!4211005 (= e!2614083 (equivClasses!3263 (toChars!10327 (transformation!7748 (rule!10860 tBis!41))) (toValue!10468 (transformation!7748 (rule!10860 tBis!41)))))))

(assert (= (and d!1241104 res!1729800) b!4211005))

(declare-fun m!4798897 () Bool)

(assert (=> d!1241104 m!4798897))

(declare-fun m!4798899 () Bool)

(assert (=> b!4211005 m!4798899))

(assert (=> b!4210722 d!1241104))

(declare-fun d!1241106 () Bool)

(declare-fun res!1729805 () Bool)

(declare-fun e!2614086 () Bool)

(assert (=> d!1241106 (=> (not res!1729805) (not e!2614086))))

(declare-fun validRegex!5742 (Regex!12653) Bool)

(assert (=> d!1241106 (= res!1729805 (validRegex!5742 (regex!7748 rBis!178)))))

(assert (=> d!1241106 (= (ruleValid!3460 thiss!26544 rBis!178) e!2614086)))

(declare-fun b!4211010 () Bool)

(declare-fun res!1729806 () Bool)

(assert (=> b!4211010 (=> (not res!1729806) (not e!2614086))))

(declare-fun nullable!4455 (Regex!12653) Bool)

(assert (=> b!4211010 (= res!1729806 (not (nullable!4455 (regex!7748 rBis!178))))))

(declare-fun b!4211011 () Bool)

(assert (=> b!4211011 (= e!2614086 (not (= (tag!8612 rBis!178) (String!53761 ""))))))

(assert (= (and d!1241106 res!1729805) b!4211010))

(assert (= (and b!4211010 res!1729806) b!4211011))

(declare-fun m!4798901 () Bool)

(assert (=> d!1241106 m!4798901))

(declare-fun m!4798903 () Bool)

(assert (=> b!4211010 m!4798903))

(assert (=> b!4210711 d!1241106))

(declare-fun b!4211021 () Bool)

(declare-fun e!2614091 () List!46418)

(assert (=> b!4211021 (= e!2614091 (Cons!46294 (h!51714 pBis!121) (++!11822 (t!347977 pBis!121) suffixBis!41)))))

(declare-fun d!1241108 () Bool)

(declare-fun e!2614092 () Bool)

(assert (=> d!1241108 e!2614092))

(declare-fun res!1729811 () Bool)

(assert (=> d!1241108 (=> (not res!1729811) (not e!2614092))))

(declare-fun lt!1499093 () List!46418)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7243 (List!46418) (InoxSet C!25500))

(assert (=> d!1241108 (= res!1729811 (= (content!7243 lt!1499093) ((_ map or) (content!7243 pBis!121) (content!7243 suffixBis!41))))))

(assert (=> d!1241108 (= lt!1499093 e!2614091)))

(declare-fun c!717390 () Bool)

(assert (=> d!1241108 (= c!717390 ((_ is Nil!46294) pBis!121))))

(assert (=> d!1241108 (= (++!11822 pBis!121 suffixBis!41) lt!1499093)))

(declare-fun b!4211022 () Bool)

(declare-fun res!1729812 () Bool)

(assert (=> b!4211022 (=> (not res!1729812) (not e!2614092))))

(assert (=> b!4211022 (= res!1729812 (= (size!34008 lt!1499093) (+ (size!34008 pBis!121) (size!34008 suffixBis!41))))))

(declare-fun b!4211023 () Bool)

(assert (=> b!4211023 (= e!2614092 (or (not (= suffixBis!41 Nil!46294)) (= lt!1499093 pBis!121)))))

(declare-fun b!4211020 () Bool)

(assert (=> b!4211020 (= e!2614091 suffixBis!41)))

(assert (= (and d!1241108 c!717390) b!4211020))

(assert (= (and d!1241108 (not c!717390)) b!4211021))

(assert (= (and d!1241108 res!1729811) b!4211022))

(assert (= (and b!4211022 res!1729812) b!4211023))

(declare-fun m!4798905 () Bool)

(assert (=> b!4211021 m!4798905))

(declare-fun m!4798907 () Bool)

(assert (=> d!1241108 m!4798907))

(declare-fun m!4798909 () Bool)

(assert (=> d!1241108 m!4798909))

(declare-fun m!4798911 () Bool)

(assert (=> d!1241108 m!4798911))

(declare-fun m!4798913 () Bool)

(assert (=> b!4211022 m!4798913))

(declare-fun m!4798915 () Bool)

(assert (=> b!4211022 m!4798915))

(declare-fun m!4798917 () Bool)

(assert (=> b!4211022 m!4798917))

(assert (=> b!4210701 d!1241108))

(declare-fun d!1241110 () Bool)

(assert (=> d!1241110 (= (isEmpty!27413 (maxPrefix!4383 thiss!26544 (t!347978 rules!3967) input!3517)) (not ((_ is Some!9935) (maxPrefix!4383 thiss!26544 (t!347978 rules!3967) input!3517))))))

(assert (=> b!4210699 d!1241110))

(declare-fun b!4211024 () Bool)

(declare-fun e!2614094 () Option!9936)

(declare-fun call!292966 () Option!9936)

(assert (=> b!4211024 (= e!2614094 call!292966)))

(declare-fun b!4211025 () Bool)

(declare-fun e!2614093 () Bool)

(declare-fun lt!1499098 () Option!9936)

(assert (=> b!4211025 (= e!2614093 (contains!9569 (t!347978 rules!3967) (rule!10860 (_1!25151 (get!15056 lt!1499098)))))))

(declare-fun bm!292961 () Bool)

(assert (=> bm!292961 (= call!292966 (maxPrefixOneRule!3338 thiss!26544 (h!51715 (t!347978 rules!3967)) input!3517))))

(declare-fun d!1241112 () Bool)

(declare-fun e!2614095 () Bool)

(assert (=> d!1241112 e!2614095))

(declare-fun res!1729814 () Bool)

(assert (=> d!1241112 (=> res!1729814 e!2614095)))

(assert (=> d!1241112 (= res!1729814 (isEmpty!27413 lt!1499098))))

(assert (=> d!1241112 (= lt!1499098 e!2614094)))

(declare-fun c!717391 () Bool)

(assert (=> d!1241112 (= c!717391 (and ((_ is Cons!46295) (t!347978 rules!3967)) ((_ is Nil!46295) (t!347978 (t!347978 rules!3967)))))))

(declare-fun lt!1499094 () Unit!65417)

(declare-fun lt!1499095 () Unit!65417)

(assert (=> d!1241112 (= lt!1499094 lt!1499095)))

(assert (=> d!1241112 (isPrefix!4607 input!3517 input!3517)))

(assert (=> d!1241112 (= lt!1499095 (lemmaIsPrefixRefl!3024 input!3517 input!3517))))

(assert (=> d!1241112 (rulesValidInductive!2873 thiss!26544 (t!347978 rules!3967))))

(assert (=> d!1241112 (= (maxPrefix!4383 thiss!26544 (t!347978 rules!3967) input!3517) lt!1499098)))

(declare-fun b!4211026 () Bool)

(assert (=> b!4211026 (= e!2614095 e!2614093)))

(declare-fun res!1729816 () Bool)

(assert (=> b!4211026 (=> (not res!1729816) (not e!2614093))))

(assert (=> b!4211026 (= res!1729816 (isDefined!7383 lt!1499098))))

(declare-fun b!4211027 () Bool)

(declare-fun lt!1499096 () Option!9936)

(declare-fun lt!1499097 () Option!9936)

(assert (=> b!4211027 (= e!2614094 (ite (and ((_ is None!9935) lt!1499096) ((_ is None!9935) lt!1499097)) None!9935 (ite ((_ is None!9935) lt!1499097) lt!1499096 (ite ((_ is None!9935) lt!1499096) lt!1499097 (ite (>= (size!34005 (_1!25151 (v!40803 lt!1499096))) (size!34005 (_1!25151 (v!40803 lt!1499097)))) lt!1499096 lt!1499097)))))))

(assert (=> b!4211027 (= lt!1499096 call!292966)))

(assert (=> b!4211027 (= lt!1499097 (maxPrefix!4383 thiss!26544 (t!347978 (t!347978 rules!3967)) input!3517))))

(declare-fun b!4211028 () Bool)

(declare-fun res!1729817 () Bool)

(assert (=> b!4211028 (=> (not res!1729817) (not e!2614093))))

(assert (=> b!4211028 (= res!1729817 (< (size!34008 (_2!25151 (get!15056 lt!1499098))) (size!34008 input!3517)))))

(declare-fun b!4211029 () Bool)

(declare-fun res!1729813 () Bool)

(assert (=> b!4211029 (=> (not res!1729813) (not e!2614093))))

(assert (=> b!4211029 (= res!1729813 (= (value!241347 (_1!25151 (get!15056 lt!1499098))) (apply!10683 (transformation!7748 (rule!10860 (_1!25151 (get!15056 lt!1499098)))) (seqFromList!5743 (originalCharacters!8130 (_1!25151 (get!15056 lt!1499098)))))))))

(declare-fun b!4211030 () Bool)

(declare-fun res!1729815 () Bool)

(assert (=> b!4211030 (=> (not res!1729815) (not e!2614093))))

(assert (=> b!4211030 (= res!1729815 (= (++!11822 (list!16739 (charsOf!5171 (_1!25151 (get!15056 lt!1499098)))) (_2!25151 (get!15056 lt!1499098))) input!3517))))

(declare-fun b!4211031 () Bool)

(declare-fun res!1729818 () Bool)

(assert (=> b!4211031 (=> (not res!1729818) (not e!2614093))))

(assert (=> b!4211031 (= res!1729818 (matchR!6362 (regex!7748 (rule!10860 (_1!25151 (get!15056 lt!1499098)))) (list!16739 (charsOf!5171 (_1!25151 (get!15056 lt!1499098))))))))

(declare-fun b!4211032 () Bool)

(declare-fun res!1729819 () Bool)

(assert (=> b!4211032 (=> (not res!1729819) (not e!2614093))))

(assert (=> b!4211032 (= res!1729819 (= (list!16739 (charsOf!5171 (_1!25151 (get!15056 lt!1499098)))) (originalCharacters!8130 (_1!25151 (get!15056 lt!1499098)))))))

(assert (= (and d!1241112 c!717391) b!4211024))

(assert (= (and d!1241112 (not c!717391)) b!4211027))

(assert (= (or b!4211024 b!4211027) bm!292961))

(assert (= (and d!1241112 (not res!1729814)) b!4211026))

(assert (= (and b!4211026 res!1729816) b!4211032))

(assert (= (and b!4211032 res!1729819) b!4211028))

(assert (= (and b!4211028 res!1729817) b!4211030))

(assert (= (and b!4211030 res!1729815) b!4211029))

(assert (= (and b!4211029 res!1729813) b!4211031))

(assert (= (and b!4211031 res!1729818) b!4211025))

(declare-fun m!4798919 () Bool)

(assert (=> bm!292961 m!4798919))

(declare-fun m!4798921 () Bool)

(assert (=> b!4211029 m!4798921))

(declare-fun m!4798923 () Bool)

(assert (=> b!4211029 m!4798923))

(assert (=> b!4211029 m!4798923))

(declare-fun m!4798925 () Bool)

(assert (=> b!4211029 m!4798925))

(declare-fun m!4798927 () Bool)

(assert (=> d!1241112 m!4798927))

(assert (=> d!1241112 m!4798531))

(assert (=> d!1241112 m!4798533))

(declare-fun m!4798929 () Bool)

(assert (=> d!1241112 m!4798929))

(declare-fun m!4798931 () Bool)

(assert (=> b!4211026 m!4798931))

(assert (=> b!4211030 m!4798921))

(declare-fun m!4798933 () Bool)

(assert (=> b!4211030 m!4798933))

(assert (=> b!4211030 m!4798933))

(declare-fun m!4798935 () Bool)

(assert (=> b!4211030 m!4798935))

(assert (=> b!4211030 m!4798935))

(declare-fun m!4798937 () Bool)

(assert (=> b!4211030 m!4798937))

(assert (=> b!4211031 m!4798921))

(assert (=> b!4211031 m!4798933))

(assert (=> b!4211031 m!4798933))

(assert (=> b!4211031 m!4798935))

(assert (=> b!4211031 m!4798935))

(declare-fun m!4798939 () Bool)

(assert (=> b!4211031 m!4798939))

(assert (=> b!4211025 m!4798921))

(declare-fun m!4798941 () Bool)

(assert (=> b!4211025 m!4798941))

(declare-fun m!4798943 () Bool)

(assert (=> b!4211027 m!4798943))

(assert (=> b!4211032 m!4798921))

(assert (=> b!4211032 m!4798933))

(assert (=> b!4211032 m!4798933))

(assert (=> b!4211032 m!4798935))

(assert (=> b!4211028 m!4798921))

(declare-fun m!4798945 () Bool)

(assert (=> b!4211028 m!4798945))

(assert (=> b!4211028 m!4798623))

(assert (=> b!4210699 d!1241112))

(declare-fun b!4211043 () Bool)

(declare-fun e!2614102 () Bool)

(declare-fun inv!15 (TokenValue!7978) Bool)

(assert (=> b!4211043 (= e!2614102 (inv!15 (value!241347 t!8364)))))

(declare-fun b!4211044 () Bool)

(declare-fun e!2614103 () Bool)

(declare-fun inv!17 (TokenValue!7978) Bool)

(assert (=> b!4211044 (= e!2614103 (inv!17 (value!241347 t!8364)))))

(declare-fun b!4211045 () Bool)

(declare-fun res!1729822 () Bool)

(assert (=> b!4211045 (=> res!1729822 e!2614102)))

(assert (=> b!4211045 (= res!1729822 (not ((_ is IntegerValue!23936) (value!241347 t!8364))))))

(assert (=> b!4211045 (= e!2614103 e!2614102)))

(declare-fun b!4211046 () Bool)

(declare-fun e!2614104 () Bool)

(assert (=> b!4211046 (= e!2614104 e!2614103)))

(declare-fun c!717396 () Bool)

(assert (=> b!4211046 (= c!717396 ((_ is IntegerValue!23935) (value!241347 t!8364)))))

(declare-fun d!1241114 () Bool)

(declare-fun c!717397 () Bool)

(assert (=> d!1241114 (= c!717397 ((_ is IntegerValue!23934) (value!241347 t!8364)))))

(assert (=> d!1241114 (= (inv!21 (value!241347 t!8364)) e!2614104)))

(declare-fun b!4211047 () Bool)

(declare-fun inv!16 (TokenValue!7978) Bool)

(assert (=> b!4211047 (= e!2614104 (inv!16 (value!241347 t!8364)))))

(assert (= (and d!1241114 c!717397) b!4211047))

(assert (= (and d!1241114 (not c!717397)) b!4211046))

(assert (= (and b!4211046 c!717396) b!4211044))

(assert (= (and b!4211046 (not c!717396)) b!4211045))

(assert (= (and b!4211045 (not res!1729822)) b!4211043))

(declare-fun m!4798947 () Bool)

(assert (=> b!4211043 m!4798947))

(declare-fun m!4798949 () Bool)

(assert (=> b!4211044 m!4798949))

(declare-fun m!4798951 () Bool)

(assert (=> b!4211047 m!4798951))

(assert (=> b!4210721 d!1241114))

(declare-fun b!4211048 () Bool)

(declare-fun e!2614105 () Bool)

(assert (=> b!4211048 (= e!2614105 (inv!15 (value!241347 tBis!41)))))

(declare-fun b!4211049 () Bool)

(declare-fun e!2614106 () Bool)

(assert (=> b!4211049 (= e!2614106 (inv!17 (value!241347 tBis!41)))))

(declare-fun b!4211050 () Bool)

(declare-fun res!1729823 () Bool)

(assert (=> b!4211050 (=> res!1729823 e!2614105)))

(assert (=> b!4211050 (= res!1729823 (not ((_ is IntegerValue!23936) (value!241347 tBis!41))))))

(assert (=> b!4211050 (= e!2614106 e!2614105)))

(declare-fun b!4211051 () Bool)

(declare-fun e!2614107 () Bool)

(assert (=> b!4211051 (= e!2614107 e!2614106)))

(declare-fun c!717398 () Bool)

(assert (=> b!4211051 (= c!717398 ((_ is IntegerValue!23935) (value!241347 tBis!41)))))

(declare-fun d!1241116 () Bool)

(declare-fun c!717399 () Bool)

(assert (=> d!1241116 (= c!717399 ((_ is IntegerValue!23934) (value!241347 tBis!41)))))

(assert (=> d!1241116 (= (inv!21 (value!241347 tBis!41)) e!2614107)))

(declare-fun b!4211052 () Bool)

(assert (=> b!4211052 (= e!2614107 (inv!16 (value!241347 tBis!41)))))

(assert (= (and d!1241116 c!717399) b!4211052))

(assert (= (and d!1241116 (not c!717399)) b!4211051))

(assert (= (and b!4211051 c!717398) b!4211049))

(assert (= (and b!4211051 (not c!717398)) b!4211050))

(assert (= (and b!4211050 (not res!1729823)) b!4211048))

(declare-fun m!4798953 () Bool)

(assert (=> b!4211048 m!4798953))

(declare-fun m!4798955 () Bool)

(assert (=> b!4211049 m!4798955))

(declare-fun m!4798957 () Bool)

(assert (=> b!4211052 m!4798957))

(assert (=> b!4210714 d!1241116))

(declare-fun b!4211063 () Bool)

(declare-fun e!2614114 () Bool)

(declare-fun tail!6779 (List!46418) List!46418)

(assert (=> b!4211063 (= e!2614114 (isPrefix!4607 (tail!6779 p!3001) (tail!6779 input!3517)))))

(declare-fun b!4211064 () Bool)

(declare-fun e!2614116 () Bool)

(assert (=> b!4211064 (= e!2614116 (>= (size!34008 input!3517) (size!34008 p!3001)))))

(declare-fun b!4211062 () Bool)

(declare-fun res!1729832 () Bool)

(assert (=> b!4211062 (=> (not res!1729832) (not e!2614114))))

(declare-fun head!8932 (List!46418) C!25500)

(assert (=> b!4211062 (= res!1729832 (= (head!8932 p!3001) (head!8932 input!3517)))))

(declare-fun b!4211061 () Bool)

(declare-fun e!2614115 () Bool)

(assert (=> b!4211061 (= e!2614115 e!2614114)))

(declare-fun res!1729834 () Bool)

(assert (=> b!4211061 (=> (not res!1729834) (not e!2614114))))

(assert (=> b!4211061 (= res!1729834 (not ((_ is Nil!46294) input!3517)))))

(declare-fun d!1241118 () Bool)

(assert (=> d!1241118 e!2614116))

(declare-fun res!1729833 () Bool)

(assert (=> d!1241118 (=> res!1729833 e!2614116)))

(declare-fun lt!1499101 () Bool)

(assert (=> d!1241118 (= res!1729833 (not lt!1499101))))

(assert (=> d!1241118 (= lt!1499101 e!2614115)))

(declare-fun res!1729835 () Bool)

(assert (=> d!1241118 (=> res!1729835 e!2614115)))

(assert (=> d!1241118 (= res!1729835 ((_ is Nil!46294) p!3001))))

(assert (=> d!1241118 (= (isPrefix!4607 p!3001 input!3517) lt!1499101)))

(assert (= (and d!1241118 (not res!1729835)) b!4211061))

(assert (= (and b!4211061 res!1729834) b!4211062))

(assert (= (and b!4211062 res!1729832) b!4211063))

(assert (= (and d!1241118 (not res!1729833)) b!4211064))

(declare-fun m!4798959 () Bool)

(assert (=> b!4211063 m!4798959))

(declare-fun m!4798961 () Bool)

(assert (=> b!4211063 m!4798961))

(assert (=> b!4211063 m!4798959))

(assert (=> b!4211063 m!4798961))

(declare-fun m!4798963 () Bool)

(assert (=> b!4211063 m!4798963))

(assert (=> b!4211064 m!4798623))

(declare-fun m!4798965 () Bool)

(assert (=> b!4211064 m!4798965))

(declare-fun m!4798967 () Bool)

(assert (=> b!4211062 m!4798967))

(declare-fun m!4798969 () Bool)

(assert (=> b!4211062 m!4798969))

(assert (=> b!4210704 d!1241118))

(declare-fun b!4211067 () Bool)

(declare-fun e!2614117 () Bool)

(assert (=> b!4211067 (= e!2614117 (isPrefix!4607 (tail!6779 pBis!121) (tail!6779 input!3517)))))

(declare-fun b!4211068 () Bool)

(declare-fun e!2614119 () Bool)

(assert (=> b!4211068 (= e!2614119 (>= (size!34008 input!3517) (size!34008 pBis!121)))))

(declare-fun b!4211066 () Bool)

(declare-fun res!1729836 () Bool)

(assert (=> b!4211066 (=> (not res!1729836) (not e!2614117))))

(assert (=> b!4211066 (= res!1729836 (= (head!8932 pBis!121) (head!8932 input!3517)))))

(declare-fun b!4211065 () Bool)

(declare-fun e!2614118 () Bool)

(assert (=> b!4211065 (= e!2614118 e!2614117)))

(declare-fun res!1729838 () Bool)

(assert (=> b!4211065 (=> (not res!1729838) (not e!2614117))))

(assert (=> b!4211065 (= res!1729838 (not ((_ is Nil!46294) input!3517)))))

(declare-fun d!1241120 () Bool)

(assert (=> d!1241120 e!2614119))

(declare-fun res!1729837 () Bool)

(assert (=> d!1241120 (=> res!1729837 e!2614119)))

(declare-fun lt!1499102 () Bool)

(assert (=> d!1241120 (= res!1729837 (not lt!1499102))))

(assert (=> d!1241120 (= lt!1499102 e!2614118)))

(declare-fun res!1729839 () Bool)

(assert (=> d!1241120 (=> res!1729839 e!2614118)))

(assert (=> d!1241120 (= res!1729839 ((_ is Nil!46294) pBis!121))))

(assert (=> d!1241120 (= (isPrefix!4607 pBis!121 input!3517) lt!1499102)))

(assert (= (and d!1241120 (not res!1729839)) b!4211065))

(assert (= (and b!4211065 res!1729838) b!4211066))

(assert (= (and b!4211066 res!1729836) b!4211067))

(assert (= (and d!1241120 (not res!1729837)) b!4211068))

(declare-fun m!4798971 () Bool)

(assert (=> b!4211067 m!4798971))

(assert (=> b!4211067 m!4798961))

(assert (=> b!4211067 m!4798971))

(assert (=> b!4211067 m!4798961))

(declare-fun m!4798973 () Bool)

(assert (=> b!4211067 m!4798973))

(assert (=> b!4211068 m!4798623))

(assert (=> b!4211068 m!4798915))

(declare-fun m!4798975 () Bool)

(assert (=> b!4211066 m!4798975))

(assert (=> b!4211066 m!4798969))

(assert (=> b!4210693 d!1241120))

(declare-fun d!1241122 () Bool)

(declare-fun lt!1499105 () Bool)

(declare-fun content!7245 (List!46419) (InoxSet Rule!15296))

(assert (=> d!1241122 (= lt!1499105 (select (content!7245 rules!3967) rBis!178))))

(declare-fun e!2614125 () Bool)

(assert (=> d!1241122 (= lt!1499105 e!2614125)))

(declare-fun res!1729845 () Bool)

(assert (=> d!1241122 (=> (not res!1729845) (not e!2614125))))

(assert (=> d!1241122 (= res!1729845 ((_ is Cons!46295) rules!3967))))

(assert (=> d!1241122 (= (contains!9569 rules!3967 rBis!178) lt!1499105)))

(declare-fun b!4211073 () Bool)

(declare-fun e!2614124 () Bool)

(assert (=> b!4211073 (= e!2614125 e!2614124)))

(declare-fun res!1729844 () Bool)

(assert (=> b!4211073 (=> res!1729844 e!2614124)))

(assert (=> b!4211073 (= res!1729844 (= (h!51715 rules!3967) rBis!178))))

(declare-fun b!4211074 () Bool)

(assert (=> b!4211074 (= e!2614124 (contains!9569 (t!347978 rules!3967) rBis!178))))

(assert (= (and d!1241122 res!1729845) b!4211073))

(assert (= (and b!4211073 (not res!1729844)) b!4211074))

(declare-fun m!4798977 () Bool)

(assert (=> d!1241122 m!4798977))

(declare-fun m!4798979 () Bool)

(assert (=> d!1241122 m!4798979))

(declare-fun m!4798981 () Bool)

(assert (=> b!4211074 m!4798981))

(assert (=> b!4210702 d!1241122))

(declare-fun d!1241124 () Bool)

(declare-fun res!1729848 () Bool)

(declare-fun e!2614128 () Bool)

(assert (=> d!1241124 (=> (not res!1729848) (not e!2614128))))

(declare-fun rulesValid!3032 (LexerInterface!7343 List!46419) Bool)

(assert (=> d!1241124 (= res!1729848 (rulesValid!3032 thiss!26544 rules!3967))))

(assert (=> d!1241124 (= (rulesInvariant!6554 thiss!26544 rules!3967) e!2614128)))

(declare-fun b!4211077 () Bool)

(declare-datatypes ((List!46421 0))(
  ( (Nil!46297) (Cons!46297 (h!51717 String!53760) (t!348020 List!46421)) )
))
(declare-fun noDuplicateTag!3193 (LexerInterface!7343 List!46419 List!46421) Bool)

(assert (=> b!4211077 (= e!2614128 (noDuplicateTag!3193 thiss!26544 rules!3967 Nil!46297))))

(assert (= (and d!1241124 res!1729848) b!4211077))

(declare-fun m!4798983 () Bool)

(assert (=> d!1241124 m!4798983))

(declare-fun m!4798985 () Bool)

(assert (=> b!4211077 m!4798985))

(assert (=> b!4210691 d!1241124))

(declare-fun d!1241126 () Bool)

(assert (=> d!1241126 (= (inv!60905 (tag!8612 (h!51715 rules!3967))) (= (mod (str.len (value!241346 (tag!8612 (h!51715 rules!3967)))) 2) 0))))

(assert (=> b!4210692 d!1241126))

(declare-fun d!1241128 () Bool)

(declare-fun res!1729849 () Bool)

(declare-fun e!2614129 () Bool)

(assert (=> d!1241128 (=> (not res!1729849) (not e!2614129))))

(assert (=> d!1241128 (= res!1729849 (semiInverseModEq!3364 (toChars!10327 (transformation!7748 (h!51715 rules!3967))) (toValue!10468 (transformation!7748 (h!51715 rules!3967)))))))

(assert (=> d!1241128 (= (inv!60908 (transformation!7748 (h!51715 rules!3967))) e!2614129)))

(declare-fun b!4211078 () Bool)

(assert (=> b!4211078 (= e!2614129 (equivClasses!3263 (toChars!10327 (transformation!7748 (h!51715 rules!3967))) (toValue!10468 (transformation!7748 (h!51715 rules!3967)))))))

(assert (= (and d!1241128 res!1729849) b!4211078))

(declare-fun m!4798987 () Bool)

(assert (=> d!1241128 m!4798987))

(declare-fun m!4798989 () Bool)

(assert (=> b!4211078 m!4798989))

(assert (=> b!4210692 d!1241128))

(declare-fun d!1241130 () Bool)

(assert (=> d!1241130 (= (isEmpty!27412 (t!347978 rules!3967)) ((_ is Nil!46295) (t!347978 rules!3967)))))

(assert (=> b!4210713 d!1241130))

(declare-fun d!1241132 () Bool)

(assert (=> d!1241132 (= (inv!60905 (tag!8612 rBis!178)) (= (mod (str.len (value!241346 (tag!8612 rBis!178))) 2) 0))))

(assert (=> b!4210695 d!1241132))

(declare-fun d!1241134 () Bool)

(declare-fun res!1729850 () Bool)

(declare-fun e!2614130 () Bool)

(assert (=> d!1241134 (=> (not res!1729850) (not e!2614130))))

(assert (=> d!1241134 (= res!1729850 (semiInverseModEq!3364 (toChars!10327 (transformation!7748 rBis!178)) (toValue!10468 (transformation!7748 rBis!178))))))

(assert (=> d!1241134 (= (inv!60908 (transformation!7748 rBis!178)) e!2614130)))

(declare-fun b!4211079 () Bool)

(assert (=> b!4211079 (= e!2614130 (equivClasses!3263 (toChars!10327 (transformation!7748 rBis!178)) (toValue!10468 (transformation!7748 rBis!178))))))

(assert (= (and d!1241134 res!1729850) b!4211079))

(declare-fun m!4798991 () Bool)

(assert (=> d!1241134 m!4798991))

(declare-fun m!4798993 () Bool)

(assert (=> b!4211079 m!4798993))

(assert (=> b!4210695 d!1241134))

(declare-fun d!1241136 () Bool)

(assert (=> d!1241136 (= (isEmpty!27412 rules!3967) ((_ is Nil!46295) rules!3967))))

(assert (=> b!4210717 d!1241136))

(declare-fun b!4211081 () Bool)

(declare-fun e!2614131 () List!46418)

(assert (=> b!4211081 (= e!2614131 (Cons!46294 (h!51714 p!3001) (++!11822 (t!347977 p!3001) suffix!1557)))))

(declare-fun d!1241138 () Bool)

(declare-fun e!2614132 () Bool)

(assert (=> d!1241138 e!2614132))

(declare-fun res!1729851 () Bool)

(assert (=> d!1241138 (=> (not res!1729851) (not e!2614132))))

(declare-fun lt!1499106 () List!46418)

(assert (=> d!1241138 (= res!1729851 (= (content!7243 lt!1499106) ((_ map or) (content!7243 p!3001) (content!7243 suffix!1557))))))

(assert (=> d!1241138 (= lt!1499106 e!2614131)))

(declare-fun c!717400 () Bool)

(assert (=> d!1241138 (= c!717400 ((_ is Nil!46294) p!3001))))

(assert (=> d!1241138 (= (++!11822 p!3001 suffix!1557) lt!1499106)))

(declare-fun b!4211082 () Bool)

(declare-fun res!1729852 () Bool)

(assert (=> b!4211082 (=> (not res!1729852) (not e!2614132))))

(assert (=> b!4211082 (= res!1729852 (= (size!34008 lt!1499106) (+ (size!34008 p!3001) (size!34008 suffix!1557))))))

(declare-fun b!4211083 () Bool)

(assert (=> b!4211083 (= e!2614132 (or (not (= suffix!1557 Nil!46294)) (= lt!1499106 p!3001)))))

(declare-fun b!4211080 () Bool)

(assert (=> b!4211080 (= e!2614131 suffix!1557)))

(assert (= (and d!1241138 c!717400) b!4211080))

(assert (= (and d!1241138 (not c!717400)) b!4211081))

(assert (= (and d!1241138 res!1729851) b!4211082))

(assert (= (and b!4211082 res!1729852) b!4211083))

(declare-fun m!4798995 () Bool)

(assert (=> b!4211081 m!4798995))

(declare-fun m!4798997 () Bool)

(assert (=> d!1241138 m!4798997))

(declare-fun m!4798999 () Bool)

(assert (=> d!1241138 m!4798999))

(declare-fun m!4799001 () Bool)

(assert (=> d!1241138 m!4799001))

(declare-fun m!4799003 () Bool)

(assert (=> b!4211082 m!4799003))

(assert (=> b!4211082 m!4798965))

(declare-fun m!4799005 () Bool)

(assert (=> b!4211082 m!4799005))

(assert (=> b!4210694 d!1241138))

(declare-fun b!4211084 () Bool)

(declare-fun res!1729858 () Bool)

(declare-fun e!2614134 () Bool)

(assert (=> b!4211084 (=> (not res!1729858) (not e!2614134))))

(declare-fun lt!1499109 () Option!9936)

(assert (=> b!4211084 (= res!1729858 (< (size!34008 (_2!25151 (get!15056 lt!1499109))) (size!34008 input!3517)))))

(declare-fun b!4211085 () Bool)

(assert (=> b!4211085 (= e!2614134 (= (size!34005 (_1!25151 (get!15056 lt!1499109))) (size!34008 (originalCharacters!8130 (_1!25151 (get!15056 lt!1499109))))))))

(declare-fun d!1241140 () Bool)

(declare-fun e!2614135 () Bool)

(assert (=> d!1241140 e!2614135))

(declare-fun res!1729859 () Bool)

(assert (=> d!1241140 (=> res!1729859 e!2614135)))

(assert (=> d!1241140 (= res!1729859 (isEmpty!27413 lt!1499109))))

(declare-fun e!2614136 () Option!9936)

(assert (=> d!1241140 (= lt!1499109 e!2614136)))

(declare-fun c!717401 () Bool)

(declare-fun lt!1499110 () tuple2!44038)

(assert (=> d!1241140 (= c!717401 (isEmpty!27415 (_1!25153 lt!1499110)))))

(assert (=> d!1241140 (= lt!1499110 (findLongestMatch!1556 (regex!7748 rBis!178) input!3517))))

(assert (=> d!1241140 (ruleValid!3460 thiss!26544 rBis!178)))

(assert (=> d!1241140 (= (maxPrefixOneRule!3338 thiss!26544 rBis!178 input!3517) lt!1499109)))

(declare-fun b!4211086 () Bool)

(declare-fun res!1729857 () Bool)

(assert (=> b!4211086 (=> (not res!1729857) (not e!2614134))))

(assert (=> b!4211086 (= res!1729857 (= (rule!10860 (_1!25151 (get!15056 lt!1499109))) rBis!178))))

(declare-fun b!4211087 () Bool)

(declare-fun e!2614133 () Bool)

(assert (=> b!4211087 (= e!2614133 (matchR!6362 (regex!7748 rBis!178) (_1!25153 (findLongestMatchInner!1643 (regex!7748 rBis!178) Nil!46294 (size!34008 Nil!46294) input!3517 input!3517 (size!34008 input!3517)))))))

(declare-fun b!4211088 () Bool)

(declare-fun res!1729853 () Bool)

(assert (=> b!4211088 (=> (not res!1729853) (not e!2614134))))

(assert (=> b!4211088 (= res!1729853 (= (value!241347 (_1!25151 (get!15056 lt!1499109))) (apply!10683 (transformation!7748 (rule!10860 (_1!25151 (get!15056 lt!1499109)))) (seqFromList!5743 (originalCharacters!8130 (_1!25151 (get!15056 lt!1499109)))))))))

(declare-fun b!4211089 () Bool)

(declare-fun res!1729854 () Bool)

(assert (=> b!4211089 (=> (not res!1729854) (not e!2614134))))

(assert (=> b!4211089 (= res!1729854 (= (++!11822 (list!16739 (charsOf!5171 (_1!25151 (get!15056 lt!1499109)))) (_2!25151 (get!15056 lt!1499109))) input!3517))))

(declare-fun b!4211090 () Bool)

(assert (=> b!4211090 (= e!2614136 None!9935)))

(declare-fun b!4211091 () Bool)

(assert (=> b!4211091 (= e!2614135 e!2614134)))

(declare-fun res!1729856 () Bool)

(assert (=> b!4211091 (=> (not res!1729856) (not e!2614134))))

(assert (=> b!4211091 (= res!1729856 (matchR!6362 (regex!7748 rBis!178) (list!16739 (charsOf!5171 (_1!25151 (get!15056 lt!1499109))))))))

(declare-fun b!4211092 () Bool)

(assert (=> b!4211092 (= e!2614136 (Some!9935 (tuple2!44035 (Token!14199 (apply!10683 (transformation!7748 rBis!178) (seqFromList!5743 (_1!25153 lt!1499110))) rBis!178 (size!34009 (seqFromList!5743 (_1!25153 lt!1499110))) (_1!25153 lt!1499110)) (_2!25153 lt!1499110))))))

(declare-fun lt!1499107 () Unit!65417)

(assert (=> b!4211092 (= lt!1499107 (longestMatchIsAcceptedByMatchOrIsEmpty!1616 (regex!7748 rBis!178) input!3517))))

(declare-fun res!1729855 () Bool)

(assert (=> b!4211092 (= res!1729855 (isEmpty!27415 (_1!25153 (findLongestMatchInner!1643 (regex!7748 rBis!178) Nil!46294 (size!34008 Nil!46294) input!3517 input!3517 (size!34008 input!3517)))))))

(assert (=> b!4211092 (=> res!1729855 e!2614133)))

(assert (=> b!4211092 e!2614133))

(declare-fun lt!1499111 () Unit!65417)

(assert (=> b!4211092 (= lt!1499111 lt!1499107)))

(declare-fun lt!1499108 () Unit!65417)

(assert (=> b!4211092 (= lt!1499108 (lemmaSemiInverse!2484 (transformation!7748 rBis!178) (seqFromList!5743 (_1!25153 lt!1499110))))))

(assert (= (and d!1241140 c!717401) b!4211090))

(assert (= (and d!1241140 (not c!717401)) b!4211092))

(assert (= (and b!4211092 (not res!1729855)) b!4211087))

(assert (= (and d!1241140 (not res!1729859)) b!4211091))

(assert (= (and b!4211091 res!1729856) b!4211089))

(assert (= (and b!4211089 res!1729854) b!4211084))

(assert (= (and b!4211084 res!1729858) b!4211086))

(assert (= (and b!4211086 res!1729857) b!4211088))

(assert (= (and b!4211088 res!1729853) b!4211085))

(declare-fun m!4799007 () Bool)

(assert (=> b!4211085 m!4799007))

(declare-fun m!4799009 () Bool)

(assert (=> b!4211085 m!4799009))

(assert (=> b!4211091 m!4799007))

(declare-fun m!4799011 () Bool)

(assert (=> b!4211091 m!4799011))

(assert (=> b!4211091 m!4799011))

(declare-fun m!4799013 () Bool)

(assert (=> b!4211091 m!4799013))

(assert (=> b!4211091 m!4799013))

(declare-fun m!4799015 () Bool)

(assert (=> b!4211091 m!4799015))

(assert (=> b!4211092 m!4798623))

(declare-fun m!4799017 () Bool)

(assert (=> b!4211092 m!4799017))

(declare-fun m!4799019 () Bool)

(assert (=> b!4211092 m!4799019))

(declare-fun m!4799021 () Bool)

(assert (=> b!4211092 m!4799021))

(assert (=> b!4211092 m!4799017))

(assert (=> b!4211092 m!4798845))

(assert (=> b!4211092 m!4798845))

(assert (=> b!4211092 m!4798623))

(declare-fun m!4799023 () Bool)

(assert (=> b!4211092 m!4799023))

(assert (=> b!4211092 m!4799017))

(declare-fun m!4799025 () Bool)

(assert (=> b!4211092 m!4799025))

(declare-fun m!4799027 () Bool)

(assert (=> b!4211092 m!4799027))

(assert (=> b!4211092 m!4799017))

(declare-fun m!4799029 () Bool)

(assert (=> b!4211092 m!4799029))

(assert (=> b!4211086 m!4799007))

(assert (=> b!4211088 m!4799007))

(declare-fun m!4799031 () Bool)

(assert (=> b!4211088 m!4799031))

(assert (=> b!4211088 m!4799031))

(declare-fun m!4799033 () Bool)

(assert (=> b!4211088 m!4799033))

(assert (=> b!4211089 m!4799007))

(assert (=> b!4211089 m!4799011))

(assert (=> b!4211089 m!4799011))

(assert (=> b!4211089 m!4799013))

(assert (=> b!4211089 m!4799013))

(declare-fun m!4799035 () Bool)

(assert (=> b!4211089 m!4799035))

(assert (=> b!4211084 m!4799007))

(declare-fun m!4799037 () Bool)

(assert (=> b!4211084 m!4799037))

(assert (=> b!4211084 m!4798623))

(assert (=> b!4211087 m!4798845))

(assert (=> b!4211087 m!4798623))

(assert (=> b!4211087 m!4798845))

(assert (=> b!4211087 m!4798623))

(assert (=> b!4211087 m!4799023))

(declare-fun m!4799039 () Bool)

(assert (=> b!4211087 m!4799039))

(declare-fun m!4799041 () Bool)

(assert (=> d!1241140 m!4799041))

(declare-fun m!4799043 () Bool)

(assert (=> d!1241140 m!4799043))

(declare-fun m!4799045 () Bool)

(assert (=> d!1241140 m!4799045))

(assert (=> d!1241140 m!4798489))

(assert (=> b!4210716 d!1241140))

(declare-fun b!4211095 () Bool)

(declare-fun e!2614137 () Bool)

(assert (=> b!4211095 (= e!2614137 (isPrefix!4607 (tail!6779 input!3517) (tail!6779 input!3517)))))

(declare-fun b!4211096 () Bool)

(declare-fun e!2614139 () Bool)

(assert (=> b!4211096 (= e!2614139 (>= (size!34008 input!3517) (size!34008 input!3517)))))

(declare-fun b!4211094 () Bool)

(declare-fun res!1729860 () Bool)

(assert (=> b!4211094 (=> (not res!1729860) (not e!2614137))))

(assert (=> b!4211094 (= res!1729860 (= (head!8932 input!3517) (head!8932 input!3517)))))

(declare-fun b!4211093 () Bool)

(declare-fun e!2614138 () Bool)

(assert (=> b!4211093 (= e!2614138 e!2614137)))

(declare-fun res!1729862 () Bool)

(assert (=> b!4211093 (=> (not res!1729862) (not e!2614137))))

(assert (=> b!4211093 (= res!1729862 (not ((_ is Nil!46294) input!3517)))))

(declare-fun d!1241142 () Bool)

(assert (=> d!1241142 e!2614139))

(declare-fun res!1729861 () Bool)

(assert (=> d!1241142 (=> res!1729861 e!2614139)))

(declare-fun lt!1499112 () Bool)

(assert (=> d!1241142 (= res!1729861 (not lt!1499112))))

(assert (=> d!1241142 (= lt!1499112 e!2614138)))

(declare-fun res!1729863 () Bool)

(assert (=> d!1241142 (=> res!1729863 e!2614138)))

(assert (=> d!1241142 (= res!1729863 ((_ is Nil!46294) input!3517))))

(assert (=> d!1241142 (= (isPrefix!4607 input!3517 input!3517) lt!1499112)))

(assert (= (and d!1241142 (not res!1729863)) b!4211093))

(assert (= (and b!4211093 res!1729862) b!4211094))

(assert (= (and b!4211094 res!1729860) b!4211095))

(assert (= (and d!1241142 (not res!1729861)) b!4211096))

(assert (=> b!4211095 m!4798961))

(assert (=> b!4211095 m!4798961))

(assert (=> b!4211095 m!4798961))

(assert (=> b!4211095 m!4798961))

(declare-fun m!4799047 () Bool)

(assert (=> b!4211095 m!4799047))

(assert (=> b!4211096 m!4798623))

(assert (=> b!4211096 m!4798623))

(assert (=> b!4211094 m!4798969))

(assert (=> b!4211094 m!4798969))

(assert (=> b!4210716 d!1241142))

(declare-fun d!1241144 () Bool)

(assert (=> d!1241144 (isPrefix!4607 input!3517 input!3517)))

(declare-fun lt!1499115 () Unit!65417)

(declare-fun choose!25800 (List!46418 List!46418) Unit!65417)

(assert (=> d!1241144 (= lt!1499115 (choose!25800 input!3517 input!3517))))

(assert (=> d!1241144 (= (lemmaIsPrefixRefl!3024 input!3517 input!3517) lt!1499115)))

(declare-fun bs!597446 () Bool)

(assert (= bs!597446 d!1241144))

(assert (=> bs!597446 m!4798531))

(declare-fun m!4799049 () Bool)

(assert (=> bs!597446 m!4799049))

(assert (=> b!4210716 d!1241144))

(declare-fun d!1241146 () Bool)

(declare-fun list!16741 (Conc!13959) List!46418)

(assert (=> d!1241146 (= (list!16739 (charsOf!5171 tBis!41)) (list!16741 (c!717361 (charsOf!5171 tBis!41))))))

(declare-fun bs!597447 () Bool)

(assert (= bs!597447 d!1241146))

(declare-fun m!4799051 () Bool)

(assert (=> bs!597447 m!4799051))

(assert (=> b!4210705 d!1241146))

(declare-fun d!1241148 () Bool)

(declare-fun lt!1499118 () BalanceConc!27512)

(assert (=> d!1241148 (= (list!16739 lt!1499118) (originalCharacters!8130 tBis!41))))

(assert (=> d!1241148 (= lt!1499118 (dynLambda!19968 (toChars!10327 (transformation!7748 (rule!10860 tBis!41))) (value!241347 tBis!41)))))

(assert (=> d!1241148 (= (charsOf!5171 tBis!41) lt!1499118)))

(declare-fun b_lambda!124039 () Bool)

(assert (=> (not b_lambda!124039) (not d!1241148)))

(assert (=> d!1241148 t!348000))

(declare-fun b_and!331409 () Bool)

(assert (= b_and!331401 (and (=> t!348000 result!308068) b_and!331409)))

(assert (=> d!1241148 t!348002))

(declare-fun b_and!331411 () Bool)

(assert (= b_and!331403 (and (=> t!348002 result!308072) b_and!331411)))

(assert (=> d!1241148 t!348004))

(declare-fun b_and!331413 () Bool)

(assert (= b_and!331405 (and (=> t!348004 result!308074) b_and!331413)))

(assert (=> d!1241148 t!348006))

(declare-fun b_and!331415 () Bool)

(assert (= b_and!331407 (and (=> t!348006 result!308076) b_and!331415)))

(declare-fun m!4799053 () Bool)

(assert (=> d!1241148 m!4799053))

(assert (=> d!1241148 m!4798879))

(assert (=> b!4210705 d!1241148))

(declare-fun b!4211101 () Bool)

(declare-fun e!2614142 () Bool)

(declare-fun tp!1287590 () Bool)

(assert (=> b!4211101 (= e!2614142 (and tp_is_empty!22273 tp!1287590))))

(assert (=> b!4210719 (= tp!1287524 e!2614142)))

(assert (= (and b!4210719 ((_ is Cons!46294) (t!347977 pBis!121))) b!4211101))

(declare-fun b!4211112 () Bool)

(declare-fun b_free!123255 () Bool)

(declare-fun b_next!123959 () Bool)

(assert (=> b!4211112 (= b_free!123255 (not b_next!123959))))

(declare-fun tp!1287599 () Bool)

(declare-fun b_and!331417 () Bool)

(assert (=> b!4211112 (= tp!1287599 b_and!331417)))

(declare-fun b_free!123257 () Bool)

(declare-fun b_next!123961 () Bool)

(assert (=> b!4211112 (= b_free!123257 (not b_next!123961))))

(declare-fun t!348016 () Bool)

(declare-fun tb!252795 () Bool)

(assert (=> (and b!4211112 (= (toChars!10327 (transformation!7748 (h!51715 (t!347978 rules!3967)))) (toChars!10327 (transformation!7748 (rule!10860 tBis!41)))) t!348016) tb!252795))

(declare-fun result!308090 () Bool)

(assert (= result!308090 result!308068))

(assert (=> b!4210995 t!348016))

(declare-fun tb!252797 () Bool)

(declare-fun t!348018 () Bool)

(assert (=> (and b!4211112 (= (toChars!10327 (transformation!7748 (h!51715 (t!347978 rules!3967)))) (toChars!10327 (transformation!7748 (rule!10860 t!8364)))) t!348018) tb!252797))

(declare-fun result!308092 () Bool)

(assert (= result!308092 result!308078))

(assert (=> b!4211002 t!348018))

(assert (=> d!1241148 t!348016))

(declare-fun b_and!331419 () Bool)

(declare-fun tp!1287601 () Bool)

(assert (=> b!4211112 (= tp!1287601 (and (=> t!348016 result!308090) (=> t!348018 result!308092) b_and!331419))))

(declare-fun e!2614153 () Bool)

(assert (=> b!4211112 (= e!2614153 (and tp!1287599 tp!1287601))))

(declare-fun e!2614154 () Bool)

(declare-fun b!4211111 () Bool)

(declare-fun tp!1287602 () Bool)

(assert (=> b!4211111 (= e!2614154 (and tp!1287602 (inv!60905 (tag!8612 (h!51715 (t!347978 rules!3967)))) (inv!60908 (transformation!7748 (h!51715 (t!347978 rules!3967)))) e!2614153))))

(declare-fun b!4211110 () Bool)

(declare-fun e!2614152 () Bool)

(declare-fun tp!1287600 () Bool)

(assert (=> b!4211110 (= e!2614152 (and e!2614154 tp!1287600))))

(assert (=> b!4210709 (= tp!1287526 e!2614152)))

(assert (= b!4211111 b!4211112))

(assert (= b!4211110 b!4211111))

(assert (= (and b!4210709 ((_ is Cons!46295) (t!347978 rules!3967))) b!4211110))

(declare-fun m!4799055 () Bool)

(assert (=> b!4211111 m!4799055))

(declare-fun m!4799057 () Bool)

(assert (=> b!4211111 m!4799057))

(declare-fun b!4211126 () Bool)

(declare-fun e!2614157 () Bool)

(declare-fun tp!1287616 () Bool)

(declare-fun tp!1287613 () Bool)

(assert (=> b!4211126 (= e!2614157 (and tp!1287616 tp!1287613))))

(assert (=> b!4210718 (= tp!1287516 e!2614157)))

(declare-fun b!4211124 () Bool)

(declare-fun tp!1287614 () Bool)

(declare-fun tp!1287617 () Bool)

(assert (=> b!4211124 (= e!2614157 (and tp!1287614 tp!1287617))))

(declare-fun b!4211125 () Bool)

(declare-fun tp!1287615 () Bool)

(assert (=> b!4211125 (= e!2614157 tp!1287615)))

(declare-fun b!4211123 () Bool)

(assert (=> b!4211123 (= e!2614157 tp_is_empty!22273)))

(assert (= (and b!4210718 ((_ is ElementMatch!12653) (regex!7748 (rule!10860 t!8364)))) b!4211123))

(assert (= (and b!4210718 ((_ is Concat!20632) (regex!7748 (rule!10860 t!8364)))) b!4211124))

(assert (= (and b!4210718 ((_ is Star!12653) (regex!7748 (rule!10860 t!8364)))) b!4211125))

(assert (= (and b!4210718 ((_ is Union!12653) (regex!7748 (rule!10860 t!8364)))) b!4211126))

(declare-fun b!4211130 () Bool)

(declare-fun e!2614158 () Bool)

(declare-fun tp!1287621 () Bool)

(declare-fun tp!1287618 () Bool)

(assert (=> b!4211130 (= e!2614158 (and tp!1287621 tp!1287618))))

(assert (=> b!4210722 (= tp!1287514 e!2614158)))

(declare-fun b!4211128 () Bool)

(declare-fun tp!1287619 () Bool)

(declare-fun tp!1287622 () Bool)

(assert (=> b!4211128 (= e!2614158 (and tp!1287619 tp!1287622))))

(declare-fun b!4211129 () Bool)

(declare-fun tp!1287620 () Bool)

(assert (=> b!4211129 (= e!2614158 tp!1287620)))

(declare-fun b!4211127 () Bool)

(assert (=> b!4211127 (= e!2614158 tp_is_empty!22273)))

(assert (= (and b!4210722 ((_ is ElementMatch!12653) (regex!7748 (rule!10860 tBis!41)))) b!4211127))

(assert (= (and b!4210722 ((_ is Concat!20632) (regex!7748 (rule!10860 tBis!41)))) b!4211128))

(assert (= (and b!4210722 ((_ is Star!12653) (regex!7748 (rule!10860 tBis!41)))) b!4211129))

(assert (= (and b!4210722 ((_ is Union!12653) (regex!7748 (rule!10860 tBis!41)))) b!4211130))

(declare-fun b!4211131 () Bool)

(declare-fun e!2614159 () Bool)

(declare-fun tp!1287623 () Bool)

(assert (=> b!4211131 (= e!2614159 (and tp_is_empty!22273 tp!1287623))))

(assert (=> b!4210712 (= tp!1287519 e!2614159)))

(assert (= (and b!4210712 ((_ is Cons!46294) (t!347977 suffixBis!41))) b!4211131))

(declare-fun b!4211132 () Bool)

(declare-fun e!2614160 () Bool)

(declare-fun tp!1287624 () Bool)

(assert (=> b!4211132 (= e!2614160 (and tp_is_empty!22273 tp!1287624))))

(assert (=> b!4210710 (= tp!1287525 e!2614160)))

(assert (= (and b!4210710 ((_ is Cons!46294) (t!347977 p!3001))) b!4211132))

(declare-fun b!4211133 () Bool)

(declare-fun e!2614161 () Bool)

(declare-fun tp!1287625 () Bool)

(assert (=> b!4211133 (= e!2614161 (and tp_is_empty!22273 tp!1287625))))

(assert (=> b!4210700 (= tp!1287521 e!2614161)))

(assert (= (and b!4210700 ((_ is Cons!46294) (t!347977 input!3517))) b!4211133))

(declare-fun b!4211134 () Bool)

(declare-fun e!2614162 () Bool)

(declare-fun tp!1287626 () Bool)

(assert (=> b!4211134 (= e!2614162 (and tp_is_empty!22273 tp!1287626))))

(assert (=> b!4210721 (= tp!1287522 e!2614162)))

(assert (= (and b!4210721 ((_ is Cons!46294) (originalCharacters!8130 t!8364))) b!4211134))

(declare-fun b!4211135 () Bool)

(declare-fun e!2614163 () Bool)

(declare-fun tp!1287627 () Bool)

(assert (=> b!4211135 (= e!2614163 (and tp_is_empty!22273 tp!1287627))))

(assert (=> b!4210714 (= tp!1287512 e!2614163)))

(assert (= (and b!4210714 ((_ is Cons!46294) (originalCharacters!8130 tBis!41))) b!4211135))

(declare-fun b!4211136 () Bool)

(declare-fun e!2614164 () Bool)

(declare-fun tp!1287628 () Bool)

(assert (=> b!4211136 (= e!2614164 (and tp_is_empty!22273 tp!1287628))))

(assert (=> b!4210703 (= tp!1287528 e!2614164)))

(assert (= (and b!4210703 ((_ is Cons!46294) (t!347977 suffix!1557))) b!4211136))

(declare-fun b!4211140 () Bool)

(declare-fun e!2614165 () Bool)

(declare-fun tp!1287632 () Bool)

(declare-fun tp!1287629 () Bool)

(assert (=> b!4211140 (= e!2614165 (and tp!1287632 tp!1287629))))

(assert (=> b!4210692 (= tp!1287527 e!2614165)))

(declare-fun b!4211138 () Bool)

(declare-fun tp!1287630 () Bool)

(declare-fun tp!1287633 () Bool)

(assert (=> b!4211138 (= e!2614165 (and tp!1287630 tp!1287633))))

(declare-fun b!4211139 () Bool)

(declare-fun tp!1287631 () Bool)

(assert (=> b!4211139 (= e!2614165 tp!1287631)))

(declare-fun b!4211137 () Bool)

(assert (=> b!4211137 (= e!2614165 tp_is_empty!22273)))

(assert (= (and b!4210692 ((_ is ElementMatch!12653) (regex!7748 (h!51715 rules!3967)))) b!4211137))

(assert (= (and b!4210692 ((_ is Concat!20632) (regex!7748 (h!51715 rules!3967)))) b!4211138))

(assert (= (and b!4210692 ((_ is Star!12653) (regex!7748 (h!51715 rules!3967)))) b!4211139))

(assert (= (and b!4210692 ((_ is Union!12653) (regex!7748 (h!51715 rules!3967)))) b!4211140))

(declare-fun b!4211144 () Bool)

(declare-fun e!2614166 () Bool)

(declare-fun tp!1287637 () Bool)

(declare-fun tp!1287634 () Bool)

(assert (=> b!4211144 (= e!2614166 (and tp!1287637 tp!1287634))))

(assert (=> b!4210695 (= tp!1287510 e!2614166)))

(declare-fun b!4211142 () Bool)

(declare-fun tp!1287635 () Bool)

(declare-fun tp!1287638 () Bool)

(assert (=> b!4211142 (= e!2614166 (and tp!1287635 tp!1287638))))

(declare-fun b!4211143 () Bool)

(declare-fun tp!1287636 () Bool)

(assert (=> b!4211143 (= e!2614166 tp!1287636)))

(declare-fun b!4211141 () Bool)

(assert (=> b!4211141 (= e!2614166 tp_is_empty!22273)))

(assert (= (and b!4210695 ((_ is ElementMatch!12653) (regex!7748 rBis!178))) b!4211141))

(assert (= (and b!4210695 ((_ is Concat!20632) (regex!7748 rBis!178))) b!4211142))

(assert (= (and b!4210695 ((_ is Star!12653) (regex!7748 rBis!178))) b!4211143))

(assert (= (and b!4210695 ((_ is Union!12653) (regex!7748 rBis!178))) b!4211144))

(declare-fun b_lambda!124041 () Bool)

(assert (= b_lambda!124035 (or (and b!4210696 b_free!123241 (= (toChars!10327 (transformation!7748 rBis!178)) (toChars!10327 (transformation!7748 (rule!10860 tBis!41))))) (and b!4210706 b_free!123237 (= (toChars!10327 (transformation!7748 (rule!10860 t!8364))) (toChars!10327 (transformation!7748 (rule!10860 tBis!41))))) (and b!4210697 b_free!123245) (and b!4210708 b_free!123249 (= (toChars!10327 (transformation!7748 (h!51715 rules!3967))) (toChars!10327 (transformation!7748 (rule!10860 tBis!41))))) (and b!4211112 b_free!123257 (= (toChars!10327 (transformation!7748 (h!51715 (t!347978 rules!3967)))) (toChars!10327 (transformation!7748 (rule!10860 tBis!41))))) b_lambda!124041)))

(declare-fun b_lambda!124043 () Bool)

(assert (= b_lambda!124039 (or (and b!4210696 b_free!123241 (= (toChars!10327 (transformation!7748 rBis!178)) (toChars!10327 (transformation!7748 (rule!10860 tBis!41))))) (and b!4210706 b_free!123237 (= (toChars!10327 (transformation!7748 (rule!10860 t!8364))) (toChars!10327 (transformation!7748 (rule!10860 tBis!41))))) (and b!4210697 b_free!123245) (and b!4210708 b_free!123249 (= (toChars!10327 (transformation!7748 (h!51715 rules!3967))) (toChars!10327 (transformation!7748 (rule!10860 tBis!41))))) (and b!4211112 b_free!123257 (= (toChars!10327 (transformation!7748 (h!51715 (t!347978 rules!3967)))) (toChars!10327 (transformation!7748 (rule!10860 tBis!41))))) b_lambda!124043)))

(declare-fun b_lambda!124045 () Bool)

(assert (= b_lambda!124037 (or (and b!4211112 b_free!123257 (= (toChars!10327 (transformation!7748 (h!51715 (t!347978 rules!3967)))) (toChars!10327 (transformation!7748 (rule!10860 t!8364))))) (and b!4210708 b_free!123249 (= (toChars!10327 (transformation!7748 (h!51715 rules!3967))) (toChars!10327 (transformation!7748 (rule!10860 t!8364))))) (and b!4210697 b_free!123245 (= (toChars!10327 (transformation!7748 (rule!10860 tBis!41))) (toChars!10327 (transformation!7748 (rule!10860 t!8364))))) (and b!4210696 b_free!123241 (= (toChars!10327 (transformation!7748 rBis!178)) (toChars!10327 (transformation!7748 (rule!10860 t!8364))))) (and b!4210706 b_free!123237) b_lambda!124045)))

(check-sat (not b!4211025) (not b!4211092) (not b!4211095) b_and!331415 (not b!4211049) (not b!4210791) (not b_next!123961) (not b!4210996) (not b!4211130) b_and!331361 (not b_lambda!124043) (not b!4211144) b_and!331413 (not b!4211128) (not b!4211084) (not b!4210990) (not b!4211026) (not b!4211047) (not b!4210792) (not b!4211089) (not b!4211021) (not b!4211125) (not b!4211064) (not b_next!123951) (not b!4211110) (not b!4210995) (not d!1241122) (not b!4210982) (not b_next!123959) (not d!1241108) (not b!4210795) (not b!4211067) (not b!4211082) (not b!4211081) (not b!4211143) b_and!331419 (not b!4211138) (not bm!292961) (not b!4211028) (not d!1241052) (not b!4211074) tp_is_empty!22273 (not tb!252779) (not b!4210799) (not b_next!123939) (not b!4211111) (not b_lambda!124045) (not b!4211085) (not b!4211086) (not b!4211101) (not b!4211140) (not b!4211044) (not b!4210789) (not b!4211048) (not b!4211079) b_and!331417 (not d!1241054) (not d!1241140) (not b!4211088) (not d!1241138) (not d!1241124) (not d!1241098) (not b!4210986) (not b!4211094) (not b!4210794) (not b!4211010) (not d!1241146) (not b!4211052) (not b_next!123953) (not b!4210790) (not d!1241030) (not d!1241104) (not b!4211062) b_and!331357 (not b_next!123947) (not b!4210985) (not b!4210796) (not b!4211022) (not b!4211029) (not b!4210987) (not b!4211142) (not b!4210983) (not bm!292956) (not b!4211005) (not b!4211002) b_and!331411 b_and!331409 (not b!4210984) (not d!1241144) (not d!1241128) (not b!4211131) (not b!4211135) (not b!4211124) (not b!4211066) (not b!4211132) (not b!4211129) (not b!4211027) (not b!4211126) (not b_next!123943) (not d!1241134) (not b_next!123949) (not b_next!123941) (not tb!252787) (not b!4211031) (not b!4211096) b_and!331353 (not b!4211077) (not b!4211030) (not b!4211032) (not b!4211003) (not b!4211133) (not b!4211134) (not d!1241112) b_and!331349 (not b!4211068) (not b!4211087) (not b_lambda!124041) (not b!4211091) (not b!4211001) (not d!1241148) (not b!4211043) (not b!4211063) (not b!4210793) (not b!4211004) (not b_next!123945) (not b!4211078) (not d!1241100) (not b!4211139) (not b!4210989) (not d!1241106) (not b!4211136))
(check-sat b_and!331415 b_and!331413 b_and!331419 (not b_next!123939) b_and!331417 (not b_next!123953) (not b_next!123943) b_and!331353 b_and!331349 (not b_next!123945) (not b_next!123961) b_and!331361 (not b_next!123959) (not b_next!123951) b_and!331357 (not b_next!123947) b_and!331411 b_and!331409 (not b_next!123949) (not b_next!123941))
