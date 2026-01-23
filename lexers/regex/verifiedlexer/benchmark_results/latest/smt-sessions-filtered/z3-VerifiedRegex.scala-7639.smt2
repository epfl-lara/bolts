; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!403502 () Bool)

(assert start!403502)

(declare-fun b!4221429 () Bool)

(declare-fun b_free!124043 () Bool)

(declare-fun b_next!124747 () Bool)

(assert (=> b!4221429 (= b_free!124043 (not b_next!124747))))

(declare-fun tp!1291762 () Bool)

(declare-fun b_and!333109 () Bool)

(assert (=> b!4221429 (= tp!1291762 b_and!333109)))

(declare-fun b_free!124045 () Bool)

(declare-fun b_next!124749 () Bool)

(assert (=> b!4221429 (= b_free!124045 (not b_next!124749))))

(declare-fun tp!1291768 () Bool)

(declare-fun b_and!333111 () Bool)

(assert (=> b!4221429 (= tp!1291768 b_and!333111)))

(declare-fun b!4221421 () Bool)

(declare-fun b_free!124047 () Bool)

(declare-fun b_next!124751 () Bool)

(assert (=> b!4221421 (= b_free!124047 (not b_next!124751))))

(declare-fun tp!1291770 () Bool)

(declare-fun b_and!333113 () Bool)

(assert (=> b!4221421 (= tp!1291770 b_and!333113)))

(declare-fun b_free!124049 () Bool)

(declare-fun b_next!124753 () Bool)

(assert (=> b!4221421 (= b_free!124049 (not b_next!124753))))

(declare-fun tp!1291758 () Bool)

(declare-fun b_and!333115 () Bool)

(assert (=> b!4221421 (= tp!1291758 b_and!333115)))

(declare-fun b!4221419 () Bool)

(declare-fun b_free!124051 () Bool)

(declare-fun b_next!124755 () Bool)

(assert (=> b!4221419 (= b_free!124051 (not b_next!124755))))

(declare-fun tp!1291764 () Bool)

(declare-fun b_and!333117 () Bool)

(assert (=> b!4221419 (= tp!1291764 b_and!333117)))

(declare-fun b_free!124053 () Bool)

(declare-fun b_next!124757 () Bool)

(assert (=> b!4221419 (= b_free!124053 (not b_next!124757))))

(declare-fun tp!1291767 () Bool)

(declare-fun b_and!333119 () Bool)

(assert (=> b!4221419 (= tp!1291767 b_and!333119)))

(declare-fun b!4221435 () Bool)

(declare-fun b_free!124055 () Bool)

(declare-fun b_next!124759 () Bool)

(assert (=> b!4221435 (= b_free!124055 (not b_next!124759))))

(declare-fun tp!1291757 () Bool)

(declare-fun b_and!333121 () Bool)

(assert (=> b!4221435 (= tp!1291757 b_and!333121)))

(declare-fun b_free!124057 () Bool)

(declare-fun b_next!124761 () Bool)

(assert (=> b!4221435 (= b_free!124057 (not b_next!124761))))

(declare-fun tp!1291755 () Bool)

(declare-fun b_and!333123 () Bool)

(assert (=> b!4221435 (= tp!1291755 b_and!333123)))

(declare-fun b!4221412 () Bool)

(declare-fun e!2620882 () Bool)

(declare-fun e!2620866 () Bool)

(assert (=> b!4221412 (= e!2620882 e!2620866)))

(declare-fun res!1735180 () Bool)

(assert (=> b!4221412 (=> (not res!1735180) (not e!2620866))))

(declare-datatypes ((List!46573 0))(
  ( (Nil!46449) (Cons!46449 (h!51869 (_ BitVec 16)) (t!349038 List!46573)) )
))
(declare-datatypes ((TokenValue!8022 0))(
  ( (FloatLiteralValue!16044 (text!56599 List!46573)) (TokenValueExt!8021 (__x!28267 Int)) (Broken!40110 (value!242575 List!46573)) (Object!8145) (End!8022) (Def!8022) (Underscore!8022) (Match!8022) (Else!8022) (Error!8022) (Case!8022) (If!8022) (Extends!8022) (Abstract!8022) (Class!8022) (Val!8022) (DelimiterValue!16044 (del!8082 List!46573)) (KeywordValue!8028 (value!242576 List!46573)) (CommentValue!16044 (value!242577 List!46573)) (WhitespaceValue!16044 (value!242578 List!46573)) (IndentationValue!8022 (value!242579 List!46573)) (String!53979) (Int32!8022) (Broken!40111 (value!242580 List!46573)) (Boolean!8023) (Unit!65622) (OperatorValue!8025 (op!8082 List!46573)) (IdentifierValue!16044 (value!242581 List!46573)) (IdentifierValue!16045 (value!242582 List!46573)) (WhitespaceValue!16045 (value!242583 List!46573)) (True!16044) (False!16044) (Broken!40112 (value!242584 List!46573)) (Broken!40113 (value!242585 List!46573)) (True!16045) (RightBrace!8022) (RightBracket!8022) (Colon!8022) (Null!8022) (Comma!8022) (LeftBracket!8022) (False!16045) (LeftBrace!8022) (ImaginaryLiteralValue!8022 (text!56600 List!46573)) (StringLiteralValue!24066 (value!242586 List!46573)) (EOFValue!8022 (value!242587 List!46573)) (IdentValue!8022 (value!242588 List!46573)) (DelimiterValue!16045 (value!242589 List!46573)) (DedentValue!8022 (value!242590 List!46573)) (NewLineValue!8022 (value!242591 List!46573)) (IntegerValue!24066 (value!242592 (_ BitVec 32)) (text!56601 List!46573)) (IntegerValue!24067 (value!242593 Int) (text!56602 List!46573)) (Times!8022) (Or!8022) (Equal!8022) (Minus!8022) (Broken!40114 (value!242594 List!46573)) (And!8022) (Div!8022) (LessEqual!8022) (Mod!8022) (Concat!20719) (Not!8022) (Plus!8022) (SpaceValue!8022 (value!242595 List!46573)) (IntegerValue!24068 (value!242596 Int) (text!56603 List!46573)) (StringLiteralValue!24067 (text!56604 List!46573)) (FloatLiteralValue!16045 (text!56605 List!46573)) (BytesLiteralValue!8022 (value!242597 List!46573)) (CommentValue!16045 (value!242598 List!46573)) (StringLiteralValue!24068 (value!242599 List!46573)) (ErrorTokenValue!8022 (msg!8083 List!46573)) )
))
(declare-datatypes ((C!25588 0))(
  ( (C!25589 (val!14956 Int)) )
))
(declare-datatypes ((List!46574 0))(
  ( (Nil!46450) (Cons!46450 (h!51870 C!25588) (t!349039 List!46574)) )
))
(declare-datatypes ((IArray!28011 0))(
  ( (IArray!28012 (innerList!14063 List!46574)) )
))
(declare-datatypes ((Regex!12697 0))(
  ( (ElementMatch!12697 (c!718306 C!25588)) (Concat!20720 (regOne!25906 Regex!12697) (regTwo!25906 Regex!12697)) (EmptyExpr!12697) (Star!12697 (reg!13026 Regex!12697)) (EmptyLang!12697) (Union!12697 (regOne!25907 Regex!12697) (regTwo!25907 Regex!12697)) )
))
(declare-datatypes ((String!53980 0))(
  ( (String!53981 (value!242600 String)) )
))
(declare-datatypes ((Conc!14003 0))(
  ( (Node!14003 (left!34542 Conc!14003) (right!34872 Conc!14003) (csize!28236 Int) (cheight!14214 Int)) (Leaf!21643 (xs!17309 IArray!28011) (csize!28237 Int)) (Empty!14003) )
))
(declare-datatypes ((BalanceConc!27600 0))(
  ( (BalanceConc!27601 (c!718307 Conc!14003)) )
))
(declare-datatypes ((TokenValueInjection!15472 0))(
  ( (TokenValueInjection!15473 (toValue!10516 Int) (toChars!10375 Int)) )
))
(declare-datatypes ((Rule!15384 0))(
  ( (Rule!15385 (regex!7792 Regex!12697) (tag!8656 String!53980) (isSeparator!7792 Bool) (transformation!7792 TokenValueInjection!15472)) )
))
(declare-datatypes ((List!46575 0))(
  ( (Nil!46451) (Cons!46451 (h!51871 Rule!15384) (t!349040 List!46575)) )
))
(declare-fun rules!3967 () List!46575)

(declare-fun input!3517 () List!46574)

(declare-datatypes ((LexerInterface!7387 0))(
  ( (LexerInterfaceExt!7384 (__x!28268 Int)) (Lexer!7385) )
))
(declare-fun thiss!26544 () LexerInterface!7387)

(declare-datatypes ((Token!14286 0))(
  ( (Token!14287 (value!242601 TokenValue!8022) (rule!10928 Rule!15384) (size!34105 Int) (originalCharacters!8174 List!46574)) )
))
(declare-datatypes ((tuple2!44170 0))(
  ( (tuple2!44171 (_1!25219 Token!14286) (_2!25219 List!46574)) )
))
(declare-datatypes ((Option!9980 0))(
  ( (None!9979) (Some!9979 (v!40871 tuple2!44170)) )
))
(declare-fun lt!1502092 () Option!9980)

(declare-fun maxPrefix!4427 (LexerInterface!7387 List!46575 List!46574) Option!9980)

(assert (=> b!4221412 (= res!1735180 (= (maxPrefix!4427 thiss!26544 rules!3967 input!3517) lt!1502092))))

(declare-fun t!8364 () Token!14286)

(declare-fun suffix!1557 () List!46574)

(assert (=> b!4221412 (= lt!1502092 (Some!9979 (tuple2!44171 t!8364 suffix!1557)))))

(declare-fun b!4221413 () Bool)

(declare-fun tp!1291774 () Bool)

(declare-fun e!2620862 () Bool)

(declare-fun e!2620884 () Bool)

(declare-fun inv!61112 (String!53980) Bool)

(declare-fun inv!61115 (TokenValueInjection!15472) Bool)

(assert (=> b!4221413 (= e!2620862 (and tp!1291774 (inv!61112 (tag!8656 (h!51871 rules!3967))) (inv!61115 (transformation!7792 (h!51871 rules!3967))) e!2620884))))

(declare-fun b!4221414 () Bool)

(declare-fun e!2620876 () Bool)

(declare-fun tp_is_empty!22361 () Bool)

(declare-fun tp!1291769 () Bool)

(assert (=> b!4221414 (= e!2620876 (and tp_is_empty!22361 tp!1291769))))

(declare-fun b!4221415 () Bool)

(declare-fun res!1735185 () Bool)

(declare-fun e!2620863 () Bool)

(assert (=> b!4221415 (=> res!1735185 e!2620863)))

(declare-fun suffixBis!41 () List!46574)

(declare-fun pBis!121 () List!46574)

(declare-fun ++!11866 (List!46574 List!46574) List!46574)

(assert (=> b!4221415 (= res!1735185 (not (= (++!11866 pBis!121 suffixBis!41) input!3517)))))

(declare-fun b!4221416 () Bool)

(declare-fun e!2620872 () Bool)

(assert (=> b!4221416 (= e!2620863 e!2620872)))

(declare-fun res!1735170 () Bool)

(assert (=> b!4221416 (=> res!1735170 e!2620872)))

(declare-fun isEmpty!27519 (List!46575) Bool)

(assert (=> b!4221416 (= res!1735170 (isEmpty!27519 (t!349040 rules!3967)))))

(declare-fun rulesInvariant!6598 (LexerInterface!7387 List!46575) Bool)

(assert (=> b!4221416 (rulesInvariant!6598 thiss!26544 (t!349040 rules!3967))))

(declare-datatypes ((Unit!65623 0))(
  ( (Unit!65624) )
))
(declare-fun lt!1502093 () Unit!65623)

(declare-fun lemmaInvariantOnRulesThenOnTail!880 (LexerInterface!7387 Rule!15384 List!46575) Unit!65623)

(assert (=> b!4221416 (= lt!1502093 (lemmaInvariantOnRulesThenOnTail!880 thiss!26544 (h!51871 rules!3967) (t!349040 rules!3967)))))

(declare-fun b!4221417 () Bool)

(declare-fun res!1735179 () Bool)

(assert (=> b!4221417 (=> res!1735179 e!2620872)))

(declare-fun rBis!178 () Rule!15384)

(declare-fun contains!9615 (List!46575 Rule!15384) Bool)

(assert (=> b!4221417 (= res!1735179 (not (contains!9615 (t!349040 rules!3967) rBis!178)))))

(declare-fun tBis!41 () Token!14286)

(declare-fun e!2620861 () Bool)

(declare-fun b!4221418 () Bool)

(declare-fun e!2620869 () Bool)

(declare-fun tp!1291766 () Bool)

(declare-fun inv!21 (TokenValue!8022) Bool)

(assert (=> b!4221418 (= e!2620869 (and (inv!21 (value!242601 tBis!41)) e!2620861 tp!1291766))))

(declare-fun e!2620871 () Bool)

(assert (=> b!4221419 (= e!2620871 (and tp!1291764 tp!1291767))))

(declare-fun e!2620879 () Bool)

(declare-fun tp!1291765 () Bool)

(declare-fun b!4221420 () Bool)

(assert (=> b!4221420 (= e!2620879 (and tp!1291765 (inv!61112 (tag!8656 (rule!10928 t!8364))) (inv!61115 (transformation!7792 (rule!10928 t!8364))) e!2620871))))

(declare-fun e!2620878 () Bool)

(assert (=> b!4221421 (= e!2620878 (and tp!1291770 tp!1291758))))

(declare-fun b!4221422 () Bool)

(declare-fun res!1735174 () Bool)

(assert (=> b!4221422 (=> (not res!1735174) (not e!2620882))))

(declare-fun isPrefix!4651 (List!46574 List!46574) Bool)

(assert (=> b!4221422 (= res!1735174 (isPrefix!4651 pBis!121 input!3517))))

(declare-fun b!4221423 () Bool)

(declare-fun res!1735182 () Bool)

(assert (=> b!4221423 (=> (not res!1735182) (not e!2620882))))

(assert (=> b!4221423 (= res!1735182 (not (isEmpty!27519 rules!3967)))))

(declare-fun e!2620875 () Bool)

(declare-fun b!4221424 () Bool)

(declare-fun tp!1291763 () Bool)

(assert (=> b!4221424 (= e!2620875 (and (inv!21 (value!242601 t!8364)) e!2620879 tp!1291763))))

(declare-fun b!4221425 () Bool)

(declare-fun res!1735186 () Bool)

(assert (=> b!4221425 (=> (not res!1735186) (not e!2620882))))

(assert (=> b!4221425 (= res!1735186 (contains!9615 rules!3967 rBis!178))))

(declare-fun b!4221426 () Bool)

(declare-fun e!2620865 () Bool)

(declare-fun tp!1291773 () Bool)

(assert (=> b!4221426 (= e!2620865 (and tp_is_empty!22361 tp!1291773))))

(declare-fun b!4221427 () Bool)

(declare-fun e!2620883 () Bool)

(declare-fun tp!1291772 () Bool)

(assert (=> b!4221427 (= e!2620883 (and tp_is_empty!22361 tp!1291772))))

(declare-fun b!4221428 () Bool)

(declare-fun res!1735172 () Bool)

(assert (=> b!4221428 (=> (not res!1735172) (not e!2620882))))

(assert (=> b!4221428 (= res!1735172 (rulesInvariant!6598 thiss!26544 rules!3967))))

(assert (=> b!4221429 (= e!2620884 (and tp!1291762 tp!1291768))))

(declare-fun b!4221430 () Bool)

(assert (=> b!4221430 (= e!2620866 (not e!2620863))))

(declare-fun res!1735176 () Bool)

(assert (=> b!4221430 (=> res!1735176 e!2620863)))

(declare-fun maxPrefixOneRule!3382 (LexerInterface!7387 Rule!15384 List!46574) Option!9980)

(assert (=> b!4221430 (= res!1735176 (not (= (maxPrefixOneRule!3382 thiss!26544 rBis!178 input!3517) (Some!9979 (tuple2!44171 tBis!41 suffixBis!41)))))))

(assert (=> b!4221430 (isPrefix!4651 input!3517 input!3517)))

(declare-fun lt!1502094 () Unit!65623)

(declare-fun lemmaIsPrefixRefl!3068 (List!46574 List!46574) Unit!65623)

(assert (=> b!4221430 (= lt!1502094 (lemmaIsPrefixRefl!3068 input!3517 input!3517))))

(declare-fun b!4221431 () Bool)

(declare-fun tp!1291771 () Bool)

(assert (=> b!4221431 (= e!2620861 (and tp!1291771 (inv!61112 (tag!8656 (rule!10928 tBis!41))) (inv!61115 (transformation!7792 (rule!10928 tBis!41))) e!2620878))))

(declare-fun b!4221432 () Bool)

(declare-fun res!1735178 () Bool)

(assert (=> b!4221432 (=> res!1735178 e!2620863)))

(assert (=> b!4221432 (= res!1735178 (not (= (rule!10928 tBis!41) rBis!178)))))

(declare-fun b!4221433 () Bool)

(declare-fun e!2620867 () Bool)

(declare-fun tp!1291759 () Bool)

(assert (=> b!4221433 (= e!2620867 (and tp_is_empty!22361 tp!1291759))))

(declare-fun b!4221434 () Bool)

(declare-fun res!1735173 () Bool)

(assert (=> b!4221434 (=> res!1735173 e!2620863)))

(get-info :version)

(assert (=> b!4221434 (= res!1735173 (or (and ((_ is Cons!46451) rules!3967) ((_ is Nil!46451) (t!349040 rules!3967))) (not ((_ is Cons!46451) rules!3967)) (= (h!51871 rules!3967) rBis!178)))))

(declare-fun e!2620874 () Bool)

(assert (=> b!4221435 (= e!2620874 (and tp!1291757 tp!1291755))))

(declare-fun b!4221436 () Bool)

(declare-fun res!1735171 () Bool)

(assert (=> b!4221436 (=> (not res!1735171) (not e!2620882))))

(declare-fun p!3001 () List!46574)

(assert (=> b!4221436 (= res!1735171 (isPrefix!4651 p!3001 input!3517))))

(declare-fun b!4221437 () Bool)

(assert (=> b!4221437 (= e!2620872 (= (maxPrefix!4427 thiss!26544 (t!349040 rules!3967) input!3517) lt!1502092))))

(declare-fun res!1735181 () Bool)

(assert (=> start!403502 (=> (not res!1735181) (not e!2620882))))

(assert (=> start!403502 (= res!1735181 ((_ is Lexer!7385) thiss!26544))))

(assert (=> start!403502 e!2620882))

(declare-fun inv!61116 (Token!14286) Bool)

(assert (=> start!403502 (and (inv!61116 tBis!41) e!2620869)))

(assert (=> start!403502 true))

(declare-fun e!2620880 () Bool)

(assert (=> start!403502 e!2620880))

(assert (=> start!403502 e!2620883))

(declare-fun e!2620859 () Bool)

(assert (=> start!403502 e!2620859))

(declare-fun e!2620877 () Bool)

(assert (=> start!403502 e!2620877))

(assert (=> start!403502 (and (inv!61116 t!8364) e!2620875)))

(assert (=> start!403502 e!2620876))

(assert (=> start!403502 e!2620865))

(assert (=> start!403502 e!2620867))

(declare-fun b!4221438 () Bool)

(declare-fun res!1735175 () Bool)

(assert (=> b!4221438 (=> res!1735175 e!2620863)))

(declare-fun list!16809 (BalanceConc!27600) List!46574)

(declare-fun charsOf!5215 (Token!14286) BalanceConc!27600)

(assert (=> b!4221438 (= res!1735175 (not (= (list!16809 (charsOf!5215 tBis!41)) pBis!121)))))

(declare-fun b!4221439 () Bool)

(declare-fun res!1735184 () Bool)

(assert (=> b!4221439 (=> (not res!1735184) (not e!2620882))))

(assert (=> b!4221439 (= res!1735184 (= (++!11866 p!3001 suffix!1557) input!3517))))

(declare-fun b!4221440 () Bool)

(declare-fun tp!1291760 () Bool)

(assert (=> b!4221440 (= e!2620877 (and tp_is_empty!22361 tp!1291760))))

(declare-fun b!4221441 () Bool)

(declare-fun res!1735177 () Bool)

(assert (=> b!4221441 (=> (not res!1735177) (not e!2620866))))

(declare-fun ruleValid!3504 (LexerInterface!7387 Rule!15384) Bool)

(assert (=> b!4221441 (= res!1735177 (ruleValid!3504 thiss!26544 rBis!178))))

(declare-fun b!4221442 () Bool)

(declare-fun tp!1291756 () Bool)

(assert (=> b!4221442 (= e!2620859 (and e!2620862 tp!1291756))))

(declare-fun tp!1291761 () Bool)

(declare-fun b!4221443 () Bool)

(assert (=> b!4221443 (= e!2620880 (and tp!1291761 (inv!61112 (tag!8656 rBis!178)) (inv!61115 (transformation!7792 rBis!178)) e!2620874))))

(declare-fun b!4221444 () Bool)

(declare-fun res!1735183 () Bool)

(assert (=> b!4221444 (=> res!1735183 e!2620863)))

(assert (=> b!4221444 (= res!1735183 (= (maxPrefixOneRule!3382 thiss!26544 (h!51871 rules!3967) input!3517) lt!1502092))))

(assert (= (and start!403502 res!1735181) b!4221439))

(assert (= (and b!4221439 res!1735184) b!4221436))

(assert (= (and b!4221436 res!1735171) b!4221422))

(assert (= (and b!4221422 res!1735174) b!4221423))

(assert (= (and b!4221423 res!1735182) b!4221428))

(assert (= (and b!4221428 res!1735172) b!4221425))

(assert (= (and b!4221425 res!1735186) b!4221412))

(assert (= (and b!4221412 res!1735180) b!4221441))

(assert (= (and b!4221441 res!1735177) b!4221430))

(assert (= (and b!4221430 (not res!1735176)) b!4221432))

(assert (= (and b!4221432 (not res!1735178)) b!4221438))

(assert (= (and b!4221438 (not res!1735175)) b!4221415))

(assert (= (and b!4221415 (not res!1735185)) b!4221434))

(assert (= (and b!4221434 (not res!1735173)) b!4221444))

(assert (= (and b!4221444 (not res!1735183)) b!4221416))

(assert (= (and b!4221416 (not res!1735170)) b!4221417))

(assert (= (and b!4221417 (not res!1735179)) b!4221437))

(assert (= b!4221431 b!4221421))

(assert (= b!4221418 b!4221431))

(assert (= start!403502 b!4221418))

(assert (= b!4221443 b!4221435))

(assert (= start!403502 b!4221443))

(assert (= (and start!403502 ((_ is Cons!46450) p!3001)) b!4221427))

(assert (= b!4221413 b!4221429))

(assert (= b!4221442 b!4221413))

(assert (= (and start!403502 ((_ is Cons!46451) rules!3967)) b!4221442))

(assert (= (and start!403502 ((_ is Cons!46450) input!3517)) b!4221440))

(assert (= b!4221420 b!4221419))

(assert (= b!4221424 b!4221420))

(assert (= start!403502 b!4221424))

(assert (= (and start!403502 ((_ is Cons!46450) pBis!121)) b!4221414))

(assert (= (and start!403502 ((_ is Cons!46450) suffix!1557)) b!4221426))

(assert (= (and start!403502 ((_ is Cons!46450) suffixBis!41)) b!4221433))

(declare-fun m!4809987 () Bool)

(assert (=> b!4221439 m!4809987))

(declare-fun m!4809989 () Bool)

(assert (=> b!4221441 m!4809989))

(declare-fun m!4809991 () Bool)

(assert (=> b!4221415 m!4809991))

(declare-fun m!4809993 () Bool)

(assert (=> start!403502 m!4809993))

(declare-fun m!4809995 () Bool)

(assert (=> start!403502 m!4809995))

(declare-fun m!4809997 () Bool)

(assert (=> b!4221425 m!4809997))

(declare-fun m!4809999 () Bool)

(assert (=> b!4221436 m!4809999))

(declare-fun m!4810001 () Bool)

(assert (=> b!4221428 m!4810001))

(declare-fun m!4810003 () Bool)

(assert (=> b!4221431 m!4810003))

(declare-fun m!4810005 () Bool)

(assert (=> b!4221431 m!4810005))

(declare-fun m!4810007 () Bool)

(assert (=> b!4221424 m!4810007))

(declare-fun m!4810009 () Bool)

(assert (=> b!4221413 m!4810009))

(declare-fun m!4810011 () Bool)

(assert (=> b!4221413 m!4810011))

(declare-fun m!4810013 () Bool)

(assert (=> b!4221422 m!4810013))

(declare-fun m!4810015 () Bool)

(assert (=> b!4221412 m!4810015))

(declare-fun m!4810017 () Bool)

(assert (=> b!4221430 m!4810017))

(declare-fun m!4810019 () Bool)

(assert (=> b!4221430 m!4810019))

(declare-fun m!4810021 () Bool)

(assert (=> b!4221430 m!4810021))

(declare-fun m!4810023 () Bool)

(assert (=> b!4221423 m!4810023))

(declare-fun m!4810025 () Bool)

(assert (=> b!4221420 m!4810025))

(declare-fun m!4810027 () Bool)

(assert (=> b!4221420 m!4810027))

(declare-fun m!4810029 () Bool)

(assert (=> b!4221443 m!4810029))

(declare-fun m!4810031 () Bool)

(assert (=> b!4221443 m!4810031))

(declare-fun m!4810033 () Bool)

(assert (=> b!4221444 m!4810033))

(declare-fun m!4810035 () Bool)

(assert (=> b!4221416 m!4810035))

(declare-fun m!4810037 () Bool)

(assert (=> b!4221416 m!4810037))

(declare-fun m!4810039 () Bool)

(assert (=> b!4221416 m!4810039))

(declare-fun m!4810041 () Bool)

(assert (=> b!4221417 m!4810041))

(declare-fun m!4810043 () Bool)

(assert (=> b!4221418 m!4810043))

(declare-fun m!4810045 () Bool)

(assert (=> b!4221438 m!4810045))

(assert (=> b!4221438 m!4810045))

(declare-fun m!4810047 () Bool)

(assert (=> b!4221438 m!4810047))

(declare-fun m!4810049 () Bool)

(assert (=> b!4221437 m!4810049))

(check-sat (not b!4221427) (not b!4221428) b_and!333117 b_and!333113 b_and!333119 (not b!4221431) (not start!403502) b_and!333115 (not b!4221413) (not b_next!124755) (not b!4221440) (not b!4221437) (not b!4221433) (not b!4221439) (not b_next!124761) (not b!4221424) (not b!4221441) (not b!4221442) (not b!4221423) (not b!4221414) b_and!333109 (not b!4221444) b_and!333123 tp_is_empty!22361 (not b!4221415) (not b_next!124751) (not b_next!124757) (not b_next!124749) (not b!4221425) (not b!4221430) (not b!4221417) b_and!333111 (not b!4221436) (not b!4221422) (not b_next!124753) b_and!333121 (not b!4221438) (not b!4221418) (not b!4221412) (not b!4221420) (not b_next!124747) (not b_next!124759) (not b!4221426) (not b!4221443) (not b!4221416))
(check-sat b_and!333117 (not b_next!124761) b_and!333113 b_and!333109 b_and!333119 b_and!333123 (not b_next!124749) b_and!333111 (not b_next!124747) (not b_next!124759) b_and!333115 (not b_next!124755) (not b_next!124751) (not b_next!124757) (not b_next!124753) b_and!333121)
(get-model)

(declare-fun b!4221498 () Bool)

(declare-fun e!2620915 () Bool)

(declare-fun e!2620916 () Bool)

(assert (=> b!4221498 (= e!2620915 e!2620916)))

(declare-fun res!1735233 () Bool)

(assert (=> b!4221498 (=> (not res!1735233) (not e!2620916))))

(declare-fun lt!1502111 () Option!9980)

(declare-fun isDefined!7407 (Option!9980) Bool)

(assert (=> b!4221498 (= res!1735233 (isDefined!7407 lt!1502111))))

(declare-fun b!4221499 () Bool)

(declare-fun res!1735231 () Bool)

(assert (=> b!4221499 (=> (not res!1735231) (not e!2620916))))

(declare-fun get!15117 (Option!9980) tuple2!44170)

(assert (=> b!4221499 (= res!1735231 (= (list!16809 (charsOf!5215 (_1!25219 (get!15117 lt!1502111)))) (originalCharacters!8174 (_1!25219 (get!15117 lt!1502111)))))))

(declare-fun b!4221500 () Bool)

(declare-fun e!2620914 () Option!9980)

(declare-fun lt!1502112 () Option!9980)

(declare-fun lt!1502114 () Option!9980)

(assert (=> b!4221500 (= e!2620914 (ite (and ((_ is None!9979) lt!1502112) ((_ is None!9979) lt!1502114)) None!9979 (ite ((_ is None!9979) lt!1502114) lt!1502112 (ite ((_ is None!9979) lt!1502112) lt!1502114 (ite (>= (size!34105 (_1!25219 (v!40871 lt!1502112))) (size!34105 (_1!25219 (v!40871 lt!1502114)))) lt!1502112 lt!1502114)))))))

(declare-fun call!293153 () Option!9980)

(assert (=> b!4221500 (= lt!1502112 call!293153)))

(assert (=> b!4221500 (= lt!1502114 (maxPrefix!4427 thiss!26544 (t!349040 rules!3967) input!3517))))

(declare-fun b!4221501 () Bool)

(declare-fun res!1735236 () Bool)

(assert (=> b!4221501 (=> (not res!1735236) (not e!2620916))))

(assert (=> b!4221501 (= res!1735236 (= (++!11866 (list!16809 (charsOf!5215 (_1!25219 (get!15117 lt!1502111)))) (_2!25219 (get!15117 lt!1502111))) input!3517))))

(declare-fun b!4221502 () Bool)

(declare-fun res!1735234 () Bool)

(assert (=> b!4221502 (=> (not res!1735234) (not e!2620916))))

(declare-fun matchR!6385 (Regex!12697 List!46574) Bool)

(assert (=> b!4221502 (= res!1735234 (matchR!6385 (regex!7792 (rule!10928 (_1!25219 (get!15117 lt!1502111)))) (list!16809 (charsOf!5215 (_1!25219 (get!15117 lt!1502111))))))))

(declare-fun b!4221503 () Bool)

(declare-fun res!1735235 () Bool)

(assert (=> b!4221503 (=> (not res!1735235) (not e!2620916))))

(declare-fun size!34107 (List!46574) Int)

(assert (=> b!4221503 (= res!1735235 (< (size!34107 (_2!25219 (get!15117 lt!1502111))) (size!34107 input!3517)))))

(declare-fun b!4221504 () Bool)

(assert (=> b!4221504 (= e!2620916 (contains!9615 rules!3967 (rule!10928 (_1!25219 (get!15117 lt!1502111)))))))

(declare-fun b!4221505 () Bool)

(assert (=> b!4221505 (= e!2620914 call!293153)))

(declare-fun b!4221506 () Bool)

(declare-fun res!1735230 () Bool)

(assert (=> b!4221506 (=> (not res!1735230) (not e!2620916))))

(declare-fun apply!10706 (TokenValueInjection!15472 BalanceConc!27600) TokenValue!8022)

(declare-fun seqFromList!5766 (List!46574) BalanceConc!27600)

(assert (=> b!4221506 (= res!1735230 (= (value!242601 (_1!25219 (get!15117 lt!1502111))) (apply!10706 (transformation!7792 (rule!10928 (_1!25219 (get!15117 lt!1502111)))) (seqFromList!5766 (originalCharacters!8174 (_1!25219 (get!15117 lt!1502111)))))))))

(declare-fun bm!293148 () Bool)

(assert (=> bm!293148 (= call!293153 (maxPrefixOneRule!3382 thiss!26544 (h!51871 rules!3967) input!3517))))

(declare-fun d!1243400 () Bool)

(assert (=> d!1243400 e!2620915))

(declare-fun res!1735232 () Bool)

(assert (=> d!1243400 (=> res!1735232 e!2620915)))

(declare-fun isEmpty!27521 (Option!9980) Bool)

(assert (=> d!1243400 (= res!1735232 (isEmpty!27521 lt!1502111))))

(assert (=> d!1243400 (= lt!1502111 e!2620914)))

(declare-fun c!718316 () Bool)

(assert (=> d!1243400 (= c!718316 (and ((_ is Cons!46451) rules!3967) ((_ is Nil!46451) (t!349040 rules!3967))))))

(declare-fun lt!1502115 () Unit!65623)

(declare-fun lt!1502113 () Unit!65623)

(assert (=> d!1243400 (= lt!1502115 lt!1502113)))

(assert (=> d!1243400 (isPrefix!4651 input!3517 input!3517)))

(assert (=> d!1243400 (= lt!1502113 (lemmaIsPrefixRefl!3068 input!3517 input!3517))))

(declare-fun rulesValidInductive!2897 (LexerInterface!7387 List!46575) Bool)

(assert (=> d!1243400 (rulesValidInductive!2897 thiss!26544 rules!3967)))

(assert (=> d!1243400 (= (maxPrefix!4427 thiss!26544 rules!3967 input!3517) lt!1502111)))

(assert (= (and d!1243400 c!718316) b!4221505))

(assert (= (and d!1243400 (not c!718316)) b!4221500))

(assert (= (or b!4221505 b!4221500) bm!293148))

(assert (= (and d!1243400 (not res!1735232)) b!4221498))

(assert (= (and b!4221498 res!1735233) b!4221499))

(assert (= (and b!4221499 res!1735231) b!4221503))

(assert (= (and b!4221503 res!1735235) b!4221501))

(assert (= (and b!4221501 res!1735236) b!4221506))

(assert (= (and b!4221506 res!1735230) b!4221502))

(assert (= (and b!4221502 res!1735234) b!4221504))

(declare-fun m!4810097 () Bool)

(assert (=> b!4221502 m!4810097))

(declare-fun m!4810099 () Bool)

(assert (=> b!4221502 m!4810099))

(assert (=> b!4221502 m!4810099))

(declare-fun m!4810101 () Bool)

(assert (=> b!4221502 m!4810101))

(assert (=> b!4221502 m!4810101))

(declare-fun m!4810103 () Bool)

(assert (=> b!4221502 m!4810103))

(assert (=> b!4221500 m!4810049))

(assert (=> b!4221499 m!4810097))

(assert (=> b!4221499 m!4810099))

(assert (=> b!4221499 m!4810099))

(assert (=> b!4221499 m!4810101))

(declare-fun m!4810105 () Bool)

(assert (=> d!1243400 m!4810105))

(assert (=> d!1243400 m!4810019))

(assert (=> d!1243400 m!4810021))

(declare-fun m!4810107 () Bool)

(assert (=> d!1243400 m!4810107))

(assert (=> b!4221506 m!4810097))

(declare-fun m!4810109 () Bool)

(assert (=> b!4221506 m!4810109))

(assert (=> b!4221506 m!4810109))

(declare-fun m!4810111 () Bool)

(assert (=> b!4221506 m!4810111))

(declare-fun m!4810113 () Bool)

(assert (=> b!4221498 m!4810113))

(assert (=> b!4221504 m!4810097))

(declare-fun m!4810115 () Bool)

(assert (=> b!4221504 m!4810115))

(assert (=> bm!293148 m!4810033))

(assert (=> b!4221503 m!4810097))

(declare-fun m!4810117 () Bool)

(assert (=> b!4221503 m!4810117))

(declare-fun m!4810119 () Bool)

(assert (=> b!4221503 m!4810119))

(assert (=> b!4221501 m!4810097))

(assert (=> b!4221501 m!4810099))

(assert (=> b!4221501 m!4810099))

(assert (=> b!4221501 m!4810101))

(assert (=> b!4221501 m!4810101))

(declare-fun m!4810121 () Bool)

(assert (=> b!4221501 m!4810121))

(assert (=> b!4221412 d!1243400))

(declare-fun b!4221606 () Bool)

(declare-fun res!1735312 () Bool)

(declare-fun e!2620970 () Bool)

(assert (=> b!4221606 (=> (not res!1735312) (not e!2620970))))

(declare-fun lt!1502163 () Option!9980)

(assert (=> b!4221606 (= res!1735312 (= (rule!10928 (_1!25219 (get!15117 lt!1502163))) (h!51871 rules!3967)))))

(declare-fun b!4221607 () Bool)

(declare-fun e!2620968 () Option!9980)

(assert (=> b!4221607 (= e!2620968 None!9979)))

(declare-fun b!4221608 () Bool)

(declare-fun res!1735315 () Bool)

(assert (=> b!4221608 (=> (not res!1735315) (not e!2620970))))

(assert (=> b!4221608 (= res!1735315 (< (size!34107 (_2!25219 (get!15117 lt!1502163))) (size!34107 input!3517)))))

(declare-fun b!4221609 () Bool)

(assert (=> b!4221609 (= e!2620970 (= (size!34105 (_1!25219 (get!15117 lt!1502163))) (size!34107 (originalCharacters!8174 (_1!25219 (get!15117 lt!1502163))))))))

(declare-fun b!4221611 () Bool)

(declare-fun res!1735313 () Bool)

(assert (=> b!4221611 (=> (not res!1735313) (not e!2620970))))

(assert (=> b!4221611 (= res!1735313 (= (++!11866 (list!16809 (charsOf!5215 (_1!25219 (get!15117 lt!1502163)))) (_2!25219 (get!15117 lt!1502163))) input!3517))))

(declare-fun b!4221612 () Bool)

(declare-fun res!1735318 () Bool)

(assert (=> b!4221612 (=> (not res!1735318) (not e!2620970))))

(assert (=> b!4221612 (= res!1735318 (= (value!242601 (_1!25219 (get!15117 lt!1502163))) (apply!10706 (transformation!7792 (rule!10928 (_1!25219 (get!15117 lt!1502163)))) (seqFromList!5766 (originalCharacters!8174 (_1!25219 (get!15117 lt!1502163)))))))))

(declare-fun b!4221613 () Bool)

(declare-fun e!2620967 () Bool)

(declare-datatypes ((tuple2!44172 0))(
  ( (tuple2!44173 (_1!25220 List!46574) (_2!25220 List!46574)) )
))
(declare-fun findLongestMatchInner!1666 (Regex!12697 List!46574 Int List!46574 List!46574 Int) tuple2!44172)

(assert (=> b!4221613 (= e!2620967 (matchR!6385 (regex!7792 (h!51871 rules!3967)) (_1!25220 (findLongestMatchInner!1666 (regex!7792 (h!51871 rules!3967)) Nil!46450 (size!34107 Nil!46450) input!3517 input!3517 (size!34107 input!3517)))))))

(declare-fun b!4221614 () Bool)

(declare-fun lt!1502161 () tuple2!44172)

(declare-fun size!34108 (BalanceConc!27600) Int)

(assert (=> b!4221614 (= e!2620968 (Some!9979 (tuple2!44171 (Token!14287 (apply!10706 (transformation!7792 (h!51871 rules!3967)) (seqFromList!5766 (_1!25220 lt!1502161))) (h!51871 rules!3967) (size!34108 (seqFromList!5766 (_1!25220 lt!1502161))) (_1!25220 lt!1502161)) (_2!25220 lt!1502161))))))

(declare-fun lt!1502160 () Unit!65623)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1639 (Regex!12697 List!46574) Unit!65623)

(assert (=> b!4221614 (= lt!1502160 (longestMatchIsAcceptedByMatchOrIsEmpty!1639 (regex!7792 (h!51871 rules!3967)) input!3517))))

(declare-fun res!1735316 () Bool)

(declare-fun isEmpty!27523 (List!46574) Bool)

(assert (=> b!4221614 (= res!1735316 (isEmpty!27523 (_1!25220 (findLongestMatchInner!1666 (regex!7792 (h!51871 rules!3967)) Nil!46450 (size!34107 Nil!46450) input!3517 input!3517 (size!34107 input!3517)))))))

(assert (=> b!4221614 (=> res!1735316 e!2620967)))

(assert (=> b!4221614 e!2620967))

(declare-fun lt!1502162 () Unit!65623)

(assert (=> b!4221614 (= lt!1502162 lt!1502160)))

(declare-fun lt!1502164 () Unit!65623)

(declare-fun lemmaSemiInverse!2507 (TokenValueInjection!15472 BalanceConc!27600) Unit!65623)

(assert (=> b!4221614 (= lt!1502164 (lemmaSemiInverse!2507 (transformation!7792 (h!51871 rules!3967)) (seqFromList!5766 (_1!25220 lt!1502161))))))

(declare-fun b!4221610 () Bool)

(declare-fun e!2620969 () Bool)

(assert (=> b!4221610 (= e!2620969 e!2620970)))

(declare-fun res!1735314 () Bool)

(assert (=> b!4221610 (=> (not res!1735314) (not e!2620970))))

(assert (=> b!4221610 (= res!1735314 (matchR!6385 (regex!7792 (h!51871 rules!3967)) (list!16809 (charsOf!5215 (_1!25219 (get!15117 lt!1502163))))))))

(declare-fun d!1243424 () Bool)

(assert (=> d!1243424 e!2620969))

(declare-fun res!1735317 () Bool)

(assert (=> d!1243424 (=> res!1735317 e!2620969)))

(assert (=> d!1243424 (= res!1735317 (isEmpty!27521 lt!1502163))))

(assert (=> d!1243424 (= lt!1502163 e!2620968)))

(declare-fun c!718329 () Bool)

(assert (=> d!1243424 (= c!718329 (isEmpty!27523 (_1!25220 lt!1502161)))))

(declare-fun findLongestMatch!1579 (Regex!12697 List!46574) tuple2!44172)

(assert (=> d!1243424 (= lt!1502161 (findLongestMatch!1579 (regex!7792 (h!51871 rules!3967)) input!3517))))

(assert (=> d!1243424 (ruleValid!3504 thiss!26544 (h!51871 rules!3967))))

(assert (=> d!1243424 (= (maxPrefixOneRule!3382 thiss!26544 (h!51871 rules!3967) input!3517) lt!1502163)))

(assert (= (and d!1243424 c!718329) b!4221607))

(assert (= (and d!1243424 (not c!718329)) b!4221614))

(assert (= (and b!4221614 (not res!1735316)) b!4221613))

(assert (= (and d!1243424 (not res!1735317)) b!4221610))

(assert (= (and b!4221610 res!1735314) b!4221611))

(assert (= (and b!4221611 res!1735313) b!4221608))

(assert (= (and b!4221608 res!1735315) b!4221606))

(assert (= (and b!4221606 res!1735312) b!4221612))

(assert (= (and b!4221612 res!1735318) b!4221609))

(declare-fun m!4810195 () Bool)

(assert (=> b!4221612 m!4810195))

(declare-fun m!4810197 () Bool)

(assert (=> b!4221612 m!4810197))

(assert (=> b!4221612 m!4810197))

(declare-fun m!4810199 () Bool)

(assert (=> b!4221612 m!4810199))

(assert (=> b!4221609 m!4810195))

(declare-fun m!4810201 () Bool)

(assert (=> b!4221609 m!4810201))

(declare-fun m!4810203 () Bool)

(assert (=> b!4221613 m!4810203))

(assert (=> b!4221613 m!4810119))

(assert (=> b!4221613 m!4810203))

(assert (=> b!4221613 m!4810119))

(declare-fun m!4810205 () Bool)

(assert (=> b!4221613 m!4810205))

(declare-fun m!4810207 () Bool)

(assert (=> b!4221613 m!4810207))

(declare-fun m!4810209 () Bool)

(assert (=> d!1243424 m!4810209))

(declare-fun m!4810211 () Bool)

(assert (=> d!1243424 m!4810211))

(declare-fun m!4810213 () Bool)

(assert (=> d!1243424 m!4810213))

(declare-fun m!4810215 () Bool)

(assert (=> d!1243424 m!4810215))

(assert (=> b!4221606 m!4810195))

(assert (=> b!4221610 m!4810195))

(declare-fun m!4810217 () Bool)

(assert (=> b!4221610 m!4810217))

(assert (=> b!4221610 m!4810217))

(declare-fun m!4810219 () Bool)

(assert (=> b!4221610 m!4810219))

(assert (=> b!4221610 m!4810219))

(declare-fun m!4810221 () Bool)

(assert (=> b!4221610 m!4810221))

(assert (=> b!4221608 m!4810195))

(declare-fun m!4810223 () Bool)

(assert (=> b!4221608 m!4810223))

(assert (=> b!4221608 m!4810119))

(declare-fun m!4810225 () Bool)

(assert (=> b!4221614 m!4810225))

(assert (=> b!4221614 m!4810119))

(assert (=> b!4221614 m!4810203))

(assert (=> b!4221614 m!4810119))

(assert (=> b!4221614 m!4810205))

(declare-fun m!4810227 () Bool)

(assert (=> b!4221614 m!4810227))

(assert (=> b!4221614 m!4810227))

(declare-fun m!4810229 () Bool)

(assert (=> b!4221614 m!4810229))

(assert (=> b!4221614 m!4810203))

(assert (=> b!4221614 m!4810227))

(declare-fun m!4810231 () Bool)

(assert (=> b!4221614 m!4810231))

(assert (=> b!4221614 m!4810227))

(declare-fun m!4810233 () Bool)

(assert (=> b!4221614 m!4810233))

(declare-fun m!4810235 () Bool)

(assert (=> b!4221614 m!4810235))

(assert (=> b!4221611 m!4810195))

(assert (=> b!4221611 m!4810217))

(assert (=> b!4221611 m!4810217))

(assert (=> b!4221611 m!4810219))

(assert (=> b!4221611 m!4810219))

(declare-fun m!4810237 () Bool)

(assert (=> b!4221611 m!4810237))

(assert (=> b!4221444 d!1243424))

(declare-fun d!1243438 () Bool)

(assert (=> d!1243438 (= (isEmpty!27519 rules!3967) ((_ is Nil!46451) rules!3967))))

(assert (=> b!4221423 d!1243438))

(declare-fun d!1243440 () Bool)

(declare-fun res!1735330 () Bool)

(declare-fun e!2620977 () Bool)

(assert (=> d!1243440 (=> (not res!1735330) (not e!2620977))))

(assert (=> d!1243440 (= res!1735330 (not (isEmpty!27523 (originalCharacters!8174 tBis!41))))))

(assert (=> d!1243440 (= (inv!61116 tBis!41) e!2620977)))

(declare-fun b!4221628 () Bool)

(declare-fun res!1735331 () Bool)

(assert (=> b!4221628 (=> (not res!1735331) (not e!2620977))))

(declare-fun dynLambda!20002 (Int TokenValue!8022) BalanceConc!27600)

(assert (=> b!4221628 (= res!1735331 (= (originalCharacters!8174 tBis!41) (list!16809 (dynLambda!20002 (toChars!10375 (transformation!7792 (rule!10928 tBis!41))) (value!242601 tBis!41)))))))

(declare-fun b!4221629 () Bool)

(assert (=> b!4221629 (= e!2620977 (= (size!34105 tBis!41) (size!34107 (originalCharacters!8174 tBis!41))))))

(assert (= (and d!1243440 res!1735330) b!4221628))

(assert (= (and b!4221628 res!1735331) b!4221629))

(declare-fun b_lambda!124425 () Bool)

(assert (=> (not b_lambda!124425) (not b!4221628)))

(declare-fun t!349058 () Bool)

(declare-fun tb!253675 () Bool)

(assert (=> (and b!4221429 (= (toChars!10375 (transformation!7792 (h!51871 rules!3967))) (toChars!10375 (transformation!7792 (rule!10928 tBis!41)))) t!349058) tb!253675))

(declare-fun b!4221634 () Bool)

(declare-fun e!2620980 () Bool)

(declare-fun tp!1291781 () Bool)

(declare-fun inv!61119 (Conc!14003) Bool)

(assert (=> b!4221634 (= e!2620980 (and (inv!61119 (c!718307 (dynLambda!20002 (toChars!10375 (transformation!7792 (rule!10928 tBis!41))) (value!242601 tBis!41)))) tp!1291781))))

(declare-fun result!309158 () Bool)

(declare-fun inv!61120 (BalanceConc!27600) Bool)

(assert (=> tb!253675 (= result!309158 (and (inv!61120 (dynLambda!20002 (toChars!10375 (transformation!7792 (rule!10928 tBis!41))) (value!242601 tBis!41))) e!2620980))))

(assert (= tb!253675 b!4221634))

(declare-fun m!4810275 () Bool)

(assert (=> b!4221634 m!4810275))

(declare-fun m!4810279 () Bool)

(assert (=> tb!253675 m!4810279))

(assert (=> b!4221628 t!349058))

(declare-fun b_and!333149 () Bool)

(assert (= b_and!333111 (and (=> t!349058 result!309158) b_and!333149)))

(declare-fun t!349060 () Bool)

(declare-fun tb!253677 () Bool)

(assert (=> (and b!4221421 (= (toChars!10375 (transformation!7792 (rule!10928 tBis!41))) (toChars!10375 (transformation!7792 (rule!10928 tBis!41)))) t!349060) tb!253677))

(declare-fun result!309162 () Bool)

(assert (= result!309162 result!309158))

(assert (=> b!4221628 t!349060))

(declare-fun b_and!333151 () Bool)

(assert (= b_and!333115 (and (=> t!349060 result!309162) b_and!333151)))

(declare-fun t!349062 () Bool)

(declare-fun tb!253679 () Bool)

(assert (=> (and b!4221419 (= (toChars!10375 (transformation!7792 (rule!10928 t!8364))) (toChars!10375 (transformation!7792 (rule!10928 tBis!41)))) t!349062) tb!253679))

(declare-fun result!309164 () Bool)

(assert (= result!309164 result!309158))

(assert (=> b!4221628 t!349062))

(declare-fun b_and!333153 () Bool)

(assert (= b_and!333119 (and (=> t!349062 result!309164) b_and!333153)))

(declare-fun tb!253681 () Bool)

(declare-fun t!349064 () Bool)

(assert (=> (and b!4221435 (= (toChars!10375 (transformation!7792 rBis!178)) (toChars!10375 (transformation!7792 (rule!10928 tBis!41)))) t!349064) tb!253681))

(declare-fun result!309166 () Bool)

(assert (= result!309166 result!309158))

(assert (=> b!4221628 t!349064))

(declare-fun b_and!333155 () Bool)

(assert (= b_and!333123 (and (=> t!349064 result!309166) b_and!333155)))

(declare-fun m!4810285 () Bool)

(assert (=> d!1243440 m!4810285))

(declare-fun m!4810287 () Bool)

(assert (=> b!4221628 m!4810287))

(assert (=> b!4221628 m!4810287))

(declare-fun m!4810289 () Bool)

(assert (=> b!4221628 m!4810289))

(declare-fun m!4810291 () Bool)

(assert (=> b!4221629 m!4810291))

(assert (=> start!403502 d!1243440))

(declare-fun d!1243444 () Bool)

(declare-fun res!1735336 () Bool)

(declare-fun e!2620984 () Bool)

(assert (=> d!1243444 (=> (not res!1735336) (not e!2620984))))

(assert (=> d!1243444 (= res!1735336 (not (isEmpty!27523 (originalCharacters!8174 t!8364))))))

(assert (=> d!1243444 (= (inv!61116 t!8364) e!2620984)))

(declare-fun b!4221639 () Bool)

(declare-fun res!1735337 () Bool)

(assert (=> b!4221639 (=> (not res!1735337) (not e!2620984))))

(assert (=> b!4221639 (= res!1735337 (= (originalCharacters!8174 t!8364) (list!16809 (dynLambda!20002 (toChars!10375 (transformation!7792 (rule!10928 t!8364))) (value!242601 t!8364)))))))

(declare-fun b!4221640 () Bool)

(assert (=> b!4221640 (= e!2620984 (= (size!34105 t!8364) (size!34107 (originalCharacters!8174 t!8364))))))

(assert (= (and d!1243444 res!1735336) b!4221639))

(assert (= (and b!4221639 res!1735337) b!4221640))

(declare-fun b_lambda!124427 () Bool)

(assert (=> (not b_lambda!124427) (not b!4221639)))

(declare-fun t!349066 () Bool)

(declare-fun tb!253683 () Bool)

(assert (=> (and b!4221429 (= (toChars!10375 (transformation!7792 (h!51871 rules!3967))) (toChars!10375 (transformation!7792 (rule!10928 t!8364)))) t!349066) tb!253683))

(declare-fun b!4221641 () Bool)

(declare-fun e!2620985 () Bool)

(declare-fun tp!1291782 () Bool)

(assert (=> b!4221641 (= e!2620985 (and (inv!61119 (c!718307 (dynLambda!20002 (toChars!10375 (transformation!7792 (rule!10928 t!8364))) (value!242601 t!8364)))) tp!1291782))))

(declare-fun result!309168 () Bool)

(assert (=> tb!253683 (= result!309168 (and (inv!61120 (dynLambda!20002 (toChars!10375 (transformation!7792 (rule!10928 t!8364))) (value!242601 t!8364))) e!2620985))))

(assert (= tb!253683 b!4221641))

(declare-fun m!4810295 () Bool)

(assert (=> b!4221641 m!4810295))

(declare-fun m!4810297 () Bool)

(assert (=> tb!253683 m!4810297))

(assert (=> b!4221639 t!349066))

(declare-fun b_and!333157 () Bool)

(assert (= b_and!333149 (and (=> t!349066 result!309168) b_and!333157)))

(declare-fun tb!253685 () Bool)

(declare-fun t!349068 () Bool)

(assert (=> (and b!4221421 (= (toChars!10375 (transformation!7792 (rule!10928 tBis!41))) (toChars!10375 (transformation!7792 (rule!10928 t!8364)))) t!349068) tb!253685))

(declare-fun result!309170 () Bool)

(assert (= result!309170 result!309168))

(assert (=> b!4221639 t!349068))

(declare-fun b_and!333159 () Bool)

(assert (= b_and!333151 (and (=> t!349068 result!309170) b_and!333159)))

(declare-fun t!349070 () Bool)

(declare-fun tb!253687 () Bool)

(assert (=> (and b!4221419 (= (toChars!10375 (transformation!7792 (rule!10928 t!8364))) (toChars!10375 (transformation!7792 (rule!10928 t!8364)))) t!349070) tb!253687))

(declare-fun result!309172 () Bool)

(assert (= result!309172 result!309168))

(assert (=> b!4221639 t!349070))

(declare-fun b_and!333161 () Bool)

(assert (= b_and!333153 (and (=> t!349070 result!309172) b_and!333161)))

(declare-fun tb!253689 () Bool)

(declare-fun t!349072 () Bool)

(assert (=> (and b!4221435 (= (toChars!10375 (transformation!7792 rBis!178)) (toChars!10375 (transformation!7792 (rule!10928 t!8364)))) t!349072) tb!253689))

(declare-fun result!309174 () Bool)

(assert (= result!309174 result!309168))

(assert (=> b!4221639 t!349072))

(declare-fun b_and!333163 () Bool)

(assert (= b_and!333155 (and (=> t!349072 result!309174) b_and!333163)))

(declare-fun m!4810299 () Bool)

(assert (=> d!1243444 m!4810299))

(declare-fun m!4810301 () Bool)

(assert (=> b!4221639 m!4810301))

(assert (=> b!4221639 m!4810301))

(declare-fun m!4810303 () Bool)

(assert (=> b!4221639 m!4810303))

(declare-fun m!4810305 () Bool)

(assert (=> b!4221640 m!4810305))

(assert (=> start!403502 d!1243444))

(declare-fun b!4221660 () Bool)

(declare-fun e!2621000 () Bool)

(declare-fun e!2621001 () Bool)

(assert (=> b!4221660 (= e!2621000 e!2621001)))

(declare-fun res!1735359 () Bool)

(assert (=> b!4221660 (=> (not res!1735359) (not e!2621001))))

(assert (=> b!4221660 (= res!1735359 (not ((_ is Nil!46450) input!3517)))))

(declare-fun b!4221662 () Bool)

(declare-fun tail!6803 (List!46574) List!46574)

(assert (=> b!4221662 (= e!2621001 (isPrefix!4651 (tail!6803 pBis!121) (tail!6803 input!3517)))))

(declare-fun b!4221661 () Bool)

(declare-fun res!1735356 () Bool)

(assert (=> b!4221661 (=> (not res!1735356) (not e!2621001))))

(declare-fun head!8956 (List!46574) C!25588)

(assert (=> b!4221661 (= res!1735356 (= (head!8956 pBis!121) (head!8956 input!3517)))))

(declare-fun d!1243448 () Bool)

(declare-fun e!2620999 () Bool)

(assert (=> d!1243448 e!2620999))

(declare-fun res!1735357 () Bool)

(assert (=> d!1243448 (=> res!1735357 e!2620999)))

(declare-fun lt!1502177 () Bool)

(assert (=> d!1243448 (= res!1735357 (not lt!1502177))))

(assert (=> d!1243448 (= lt!1502177 e!2621000)))

(declare-fun res!1735358 () Bool)

(assert (=> d!1243448 (=> res!1735358 e!2621000)))

(assert (=> d!1243448 (= res!1735358 ((_ is Nil!46450) pBis!121))))

(assert (=> d!1243448 (= (isPrefix!4651 pBis!121 input!3517) lt!1502177)))

(declare-fun b!4221663 () Bool)

(assert (=> b!4221663 (= e!2620999 (>= (size!34107 input!3517) (size!34107 pBis!121)))))

(assert (= (and d!1243448 (not res!1735358)) b!4221660))

(assert (= (and b!4221660 res!1735359) b!4221661))

(assert (= (and b!4221661 res!1735356) b!4221662))

(assert (= (and d!1243448 (not res!1735357)) b!4221663))

(declare-fun m!4810325 () Bool)

(assert (=> b!4221662 m!4810325))

(declare-fun m!4810327 () Bool)

(assert (=> b!4221662 m!4810327))

(assert (=> b!4221662 m!4810325))

(assert (=> b!4221662 m!4810327))

(declare-fun m!4810329 () Bool)

(assert (=> b!4221662 m!4810329))

(declare-fun m!4810331 () Bool)

(assert (=> b!4221661 m!4810331))

(declare-fun m!4810333 () Bool)

(assert (=> b!4221661 m!4810333))

(assert (=> b!4221663 m!4810119))

(declare-fun m!4810335 () Bool)

(assert (=> b!4221663 m!4810335))

(assert (=> b!4221422 d!1243448))

(declare-fun d!1243466 () Bool)

(assert (=> d!1243466 (= (inv!61112 (tag!8656 rBis!178)) (= (mod (str.len (value!242600 (tag!8656 rBis!178))) 2) 0))))

(assert (=> b!4221443 d!1243466))

(declare-fun d!1243474 () Bool)

(declare-fun res!1735379 () Bool)

(declare-fun e!2621014 () Bool)

(assert (=> d!1243474 (=> (not res!1735379) (not e!2621014))))

(declare-fun semiInverseModEq!3387 (Int Int) Bool)

(assert (=> d!1243474 (= res!1735379 (semiInverseModEq!3387 (toChars!10375 (transformation!7792 rBis!178)) (toValue!10516 (transformation!7792 rBis!178))))))

(assert (=> d!1243474 (= (inv!61115 (transformation!7792 rBis!178)) e!2621014)))

(declare-fun b!4221689 () Bool)

(declare-fun equivClasses!3286 (Int Int) Bool)

(assert (=> b!4221689 (= e!2621014 (equivClasses!3286 (toChars!10375 (transformation!7792 rBis!178)) (toValue!10516 (transformation!7792 rBis!178))))))

(assert (= (and d!1243474 res!1735379) b!4221689))

(declare-fun m!4810377 () Bool)

(assert (=> d!1243474 m!4810377))

(declare-fun m!4810379 () Bool)

(assert (=> b!4221689 m!4810379))

(assert (=> b!4221443 d!1243474))

(declare-fun b!4221690 () Bool)

(declare-fun e!2621016 () Bool)

(declare-fun e!2621017 () Bool)

(assert (=> b!4221690 (= e!2621016 e!2621017)))

(declare-fun res!1735383 () Bool)

(assert (=> b!4221690 (=> (not res!1735383) (not e!2621017))))

(assert (=> b!4221690 (= res!1735383 (not ((_ is Nil!46450) input!3517)))))

(declare-fun b!4221692 () Bool)

(assert (=> b!4221692 (= e!2621017 (isPrefix!4651 (tail!6803 p!3001) (tail!6803 input!3517)))))

(declare-fun b!4221691 () Bool)

(declare-fun res!1735380 () Bool)

(assert (=> b!4221691 (=> (not res!1735380) (not e!2621017))))

(assert (=> b!4221691 (= res!1735380 (= (head!8956 p!3001) (head!8956 input!3517)))))

(declare-fun d!1243478 () Bool)

(declare-fun e!2621015 () Bool)

(assert (=> d!1243478 e!2621015))

(declare-fun res!1735381 () Bool)

(assert (=> d!1243478 (=> res!1735381 e!2621015)))

(declare-fun lt!1502189 () Bool)

(assert (=> d!1243478 (= res!1735381 (not lt!1502189))))

(assert (=> d!1243478 (= lt!1502189 e!2621016)))

(declare-fun res!1735382 () Bool)

(assert (=> d!1243478 (=> res!1735382 e!2621016)))

(assert (=> d!1243478 (= res!1735382 ((_ is Nil!46450) p!3001))))

(assert (=> d!1243478 (= (isPrefix!4651 p!3001 input!3517) lt!1502189)))

(declare-fun b!4221693 () Bool)

(assert (=> b!4221693 (= e!2621015 (>= (size!34107 input!3517) (size!34107 p!3001)))))

(assert (= (and d!1243478 (not res!1735382)) b!4221690))

(assert (= (and b!4221690 res!1735383) b!4221691))

(assert (= (and b!4221691 res!1735380) b!4221692))

(assert (= (and d!1243478 (not res!1735381)) b!4221693))

(declare-fun m!4810381 () Bool)

(assert (=> b!4221692 m!4810381))

(assert (=> b!4221692 m!4810327))

(assert (=> b!4221692 m!4810381))

(assert (=> b!4221692 m!4810327))

(declare-fun m!4810383 () Bool)

(assert (=> b!4221692 m!4810383))

(declare-fun m!4810385 () Bool)

(assert (=> b!4221691 m!4810385))

(assert (=> b!4221691 m!4810333))

(assert (=> b!4221693 m!4810119))

(declare-fun m!4810387 () Bool)

(assert (=> b!4221693 m!4810387))

(assert (=> b!4221436 d!1243478))

(declare-fun d!1243480 () Bool)

(declare-fun lt!1502193 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7292 (List!46575) (InoxSet Rule!15384))

(assert (=> d!1243480 (= lt!1502193 (select (content!7292 rules!3967) rBis!178))))

(declare-fun e!2621026 () Bool)

(assert (=> d!1243480 (= lt!1502193 e!2621026)))

(declare-fun res!1735392 () Bool)

(assert (=> d!1243480 (=> (not res!1735392) (not e!2621026))))

(assert (=> d!1243480 (= res!1735392 ((_ is Cons!46451) rules!3967))))

(assert (=> d!1243480 (= (contains!9615 rules!3967 rBis!178) lt!1502193)))

(declare-fun b!4221702 () Bool)

(declare-fun e!2621025 () Bool)

(assert (=> b!4221702 (= e!2621026 e!2621025)))

(declare-fun res!1735393 () Bool)

(assert (=> b!4221702 (=> res!1735393 e!2621025)))

(assert (=> b!4221702 (= res!1735393 (= (h!51871 rules!3967) rBis!178))))

(declare-fun b!4221703 () Bool)

(assert (=> b!4221703 (= e!2621025 (contains!9615 (t!349040 rules!3967) rBis!178))))

(assert (= (and d!1243480 res!1735392) b!4221702))

(assert (= (and b!4221702 (not res!1735393)) b!4221703))

(declare-fun m!4810437 () Bool)

(assert (=> d!1243480 m!4810437))

(declare-fun m!4810439 () Bool)

(assert (=> d!1243480 m!4810439))

(assert (=> b!4221703 m!4810041))

(assert (=> b!4221425 d!1243480))

(declare-fun b!4221744 () Bool)

(declare-fun e!2621051 () List!46574)

(assert (=> b!4221744 (= e!2621051 (Cons!46450 (h!51870 pBis!121) (++!11866 (t!349039 pBis!121) suffixBis!41)))))

(declare-fun lt!1502196 () List!46574)

(declare-fun b!4221746 () Bool)

(declare-fun e!2621050 () Bool)

(assert (=> b!4221746 (= e!2621050 (or (not (= suffixBis!41 Nil!46450)) (= lt!1502196 pBis!121)))))

(declare-fun b!4221743 () Bool)

(assert (=> b!4221743 (= e!2621051 suffixBis!41)))

(declare-fun b!4221745 () Bool)

(declare-fun res!1735398 () Bool)

(assert (=> b!4221745 (=> (not res!1735398) (not e!2621050))))

(assert (=> b!4221745 (= res!1735398 (= (size!34107 lt!1502196) (+ (size!34107 pBis!121) (size!34107 suffixBis!41))))))

(declare-fun d!1243484 () Bool)

(assert (=> d!1243484 e!2621050))

(declare-fun res!1735399 () Bool)

(assert (=> d!1243484 (=> (not res!1735399) (not e!2621050))))

(declare-fun content!7293 (List!46574) (InoxSet C!25588))

(assert (=> d!1243484 (= res!1735399 (= (content!7293 lt!1502196) ((_ map or) (content!7293 pBis!121) (content!7293 suffixBis!41))))))

(assert (=> d!1243484 (= lt!1502196 e!2621051)))

(declare-fun c!718336 () Bool)

(assert (=> d!1243484 (= c!718336 ((_ is Nil!46450) pBis!121))))

(assert (=> d!1243484 (= (++!11866 pBis!121 suffixBis!41) lt!1502196)))

(assert (= (and d!1243484 c!718336) b!4221743))

(assert (= (and d!1243484 (not c!718336)) b!4221744))

(assert (= (and d!1243484 res!1735399) b!4221745))

(assert (= (and b!4221745 res!1735398) b!4221746))

(declare-fun m!4810445 () Bool)

(assert (=> b!4221744 m!4810445))

(declare-fun m!4810447 () Bool)

(assert (=> b!4221745 m!4810447))

(assert (=> b!4221745 m!4810335))

(declare-fun m!4810449 () Bool)

(assert (=> b!4221745 m!4810449))

(declare-fun m!4810451 () Bool)

(assert (=> d!1243484 m!4810451))

(declare-fun m!4810453 () Bool)

(assert (=> d!1243484 m!4810453))

(declare-fun m!4810455 () Bool)

(assert (=> d!1243484 m!4810455))

(assert (=> b!4221415 d!1243484))

(declare-fun b!4221774 () Bool)

(declare-fun e!2621066 () Bool)

(declare-fun e!2621068 () Bool)

(assert (=> b!4221774 (= e!2621066 e!2621068)))

(declare-fun c!718341 () Bool)

(assert (=> b!4221774 (= c!718341 ((_ is IntegerValue!24067) (value!242601 t!8364)))))

(declare-fun b!4221775 () Bool)

(declare-fun e!2621067 () Bool)

(declare-fun inv!15 (TokenValue!8022) Bool)

(assert (=> b!4221775 (= e!2621067 (inv!15 (value!242601 t!8364)))))

(declare-fun b!4221776 () Bool)

(declare-fun inv!17 (TokenValue!8022) Bool)

(assert (=> b!4221776 (= e!2621068 (inv!17 (value!242601 t!8364)))))

(declare-fun b!4221777 () Bool)

(declare-fun res!1735402 () Bool)

(assert (=> b!4221777 (=> res!1735402 e!2621067)))

(assert (=> b!4221777 (= res!1735402 (not ((_ is IntegerValue!24068) (value!242601 t!8364))))))

(assert (=> b!4221777 (= e!2621068 e!2621067)))

(declare-fun d!1243486 () Bool)

(declare-fun c!718342 () Bool)

(assert (=> d!1243486 (= c!718342 ((_ is IntegerValue!24066) (value!242601 t!8364)))))

(assert (=> d!1243486 (= (inv!21 (value!242601 t!8364)) e!2621066)))

(declare-fun b!4221778 () Bool)

(declare-fun inv!16 (TokenValue!8022) Bool)

(assert (=> b!4221778 (= e!2621066 (inv!16 (value!242601 t!8364)))))

(assert (= (and d!1243486 c!718342) b!4221778))

(assert (= (and d!1243486 (not c!718342)) b!4221774))

(assert (= (and b!4221774 c!718341) b!4221776))

(assert (= (and b!4221774 (not c!718341)) b!4221777))

(assert (= (and b!4221777 (not res!1735402)) b!4221775))

(declare-fun m!4810457 () Bool)

(assert (=> b!4221775 m!4810457))

(declare-fun m!4810459 () Bool)

(assert (=> b!4221776 m!4810459))

(declare-fun m!4810461 () Bool)

(assert (=> b!4221778 m!4810461))

(assert (=> b!4221424 d!1243486))

(declare-fun d!1243488 () Bool)

(assert (=> d!1243488 (= (inv!61112 (tag!8656 (h!51871 rules!3967))) (= (mod (str.len (value!242600 (tag!8656 (h!51871 rules!3967)))) 2) 0))))

(assert (=> b!4221413 d!1243488))

(declare-fun d!1243490 () Bool)

(declare-fun res!1735403 () Bool)

(declare-fun e!2621069 () Bool)

(assert (=> d!1243490 (=> (not res!1735403) (not e!2621069))))

(assert (=> d!1243490 (= res!1735403 (semiInverseModEq!3387 (toChars!10375 (transformation!7792 (h!51871 rules!3967))) (toValue!10516 (transformation!7792 (h!51871 rules!3967)))))))

(assert (=> d!1243490 (= (inv!61115 (transformation!7792 (h!51871 rules!3967))) e!2621069)))

(declare-fun b!4221779 () Bool)

(assert (=> b!4221779 (= e!2621069 (equivClasses!3286 (toChars!10375 (transformation!7792 (h!51871 rules!3967))) (toValue!10516 (transformation!7792 (h!51871 rules!3967)))))))

(assert (= (and d!1243490 res!1735403) b!4221779))

(declare-fun m!4810463 () Bool)

(assert (=> d!1243490 m!4810463))

(declare-fun m!4810465 () Bool)

(assert (=> b!4221779 m!4810465))

(assert (=> b!4221413 d!1243490))

(declare-fun d!1243492 () Bool)

(declare-fun res!1735406 () Bool)

(declare-fun e!2621072 () Bool)

(assert (=> d!1243492 (=> (not res!1735406) (not e!2621072))))

(declare-fun rulesValid!3056 (LexerInterface!7387 List!46575) Bool)

(assert (=> d!1243492 (= res!1735406 (rulesValid!3056 thiss!26544 rules!3967))))

(assert (=> d!1243492 (= (rulesInvariant!6598 thiss!26544 rules!3967) e!2621072)))

(declare-fun b!4221782 () Bool)

(declare-datatypes ((List!46577 0))(
  ( (Nil!46453) (Cons!46453 (h!51873 String!53980) (t!349082 List!46577)) )
))
(declare-fun noDuplicateTag!3217 (LexerInterface!7387 List!46575 List!46577) Bool)

(assert (=> b!4221782 (= e!2621072 (noDuplicateTag!3217 thiss!26544 rules!3967 Nil!46453))))

(assert (= (and d!1243492 res!1735406) b!4221782))

(declare-fun m!4810467 () Bool)

(assert (=> d!1243492 m!4810467))

(declare-fun m!4810469 () Bool)

(assert (=> b!4221782 m!4810469))

(assert (=> b!4221428 d!1243492))

(declare-fun d!1243494 () Bool)

(declare-fun lt!1502197 () Bool)

(assert (=> d!1243494 (= lt!1502197 (select (content!7292 (t!349040 rules!3967)) rBis!178))))

(declare-fun e!2621074 () Bool)

(assert (=> d!1243494 (= lt!1502197 e!2621074)))

(declare-fun res!1735407 () Bool)

(assert (=> d!1243494 (=> (not res!1735407) (not e!2621074))))

(assert (=> d!1243494 (= res!1735407 ((_ is Cons!46451) (t!349040 rules!3967)))))

(assert (=> d!1243494 (= (contains!9615 (t!349040 rules!3967) rBis!178) lt!1502197)))

(declare-fun b!4221783 () Bool)

(declare-fun e!2621073 () Bool)

(assert (=> b!4221783 (= e!2621074 e!2621073)))

(declare-fun res!1735408 () Bool)

(assert (=> b!4221783 (=> res!1735408 e!2621073)))

(assert (=> b!4221783 (= res!1735408 (= (h!51871 (t!349040 rules!3967)) rBis!178))))

(declare-fun b!4221784 () Bool)

(assert (=> b!4221784 (= e!2621073 (contains!9615 (t!349040 (t!349040 rules!3967)) rBis!178))))

(assert (= (and d!1243494 res!1735407) b!4221783))

(assert (= (and b!4221783 (not res!1735408)) b!4221784))

(declare-fun m!4810471 () Bool)

(assert (=> d!1243494 m!4810471))

(declare-fun m!4810473 () Bool)

(assert (=> d!1243494 m!4810473))

(declare-fun m!4810475 () Bool)

(assert (=> b!4221784 m!4810475))

(assert (=> b!4221417 d!1243494))

(declare-fun b!4221785 () Bool)

(declare-fun e!2621075 () Bool)

(declare-fun e!2621077 () Bool)

(assert (=> b!4221785 (= e!2621075 e!2621077)))

(declare-fun c!718343 () Bool)

(assert (=> b!4221785 (= c!718343 ((_ is IntegerValue!24067) (value!242601 tBis!41)))))

(declare-fun b!4221786 () Bool)

(declare-fun e!2621076 () Bool)

(assert (=> b!4221786 (= e!2621076 (inv!15 (value!242601 tBis!41)))))

(declare-fun b!4221787 () Bool)

(assert (=> b!4221787 (= e!2621077 (inv!17 (value!242601 tBis!41)))))

(declare-fun b!4221788 () Bool)

(declare-fun res!1735409 () Bool)

(assert (=> b!4221788 (=> res!1735409 e!2621076)))

(assert (=> b!4221788 (= res!1735409 (not ((_ is IntegerValue!24068) (value!242601 tBis!41))))))

(assert (=> b!4221788 (= e!2621077 e!2621076)))

(declare-fun d!1243496 () Bool)

(declare-fun c!718344 () Bool)

(assert (=> d!1243496 (= c!718344 ((_ is IntegerValue!24066) (value!242601 tBis!41)))))

(assert (=> d!1243496 (= (inv!21 (value!242601 tBis!41)) e!2621075)))

(declare-fun b!4221789 () Bool)

(assert (=> b!4221789 (= e!2621075 (inv!16 (value!242601 tBis!41)))))

(assert (= (and d!1243496 c!718344) b!4221789))

(assert (= (and d!1243496 (not c!718344)) b!4221785))

(assert (= (and b!4221785 c!718343) b!4221787))

(assert (= (and b!4221785 (not c!718343)) b!4221788))

(assert (= (and b!4221788 (not res!1735409)) b!4221786))

(declare-fun m!4810477 () Bool)

(assert (=> b!4221786 m!4810477))

(declare-fun m!4810479 () Bool)

(assert (=> b!4221787 m!4810479))

(declare-fun m!4810481 () Bool)

(assert (=> b!4221789 m!4810481))

(assert (=> b!4221418 d!1243496))

(declare-fun b!4221791 () Bool)

(declare-fun e!2621079 () List!46574)

(assert (=> b!4221791 (= e!2621079 (Cons!46450 (h!51870 p!3001) (++!11866 (t!349039 p!3001) suffix!1557)))))

(declare-fun e!2621078 () Bool)

(declare-fun lt!1502198 () List!46574)

(declare-fun b!4221793 () Bool)

(assert (=> b!4221793 (= e!2621078 (or (not (= suffix!1557 Nil!46450)) (= lt!1502198 p!3001)))))

(declare-fun b!4221790 () Bool)

(assert (=> b!4221790 (= e!2621079 suffix!1557)))

(declare-fun b!4221792 () Bool)

(declare-fun res!1735410 () Bool)

(assert (=> b!4221792 (=> (not res!1735410) (not e!2621078))))

(assert (=> b!4221792 (= res!1735410 (= (size!34107 lt!1502198) (+ (size!34107 p!3001) (size!34107 suffix!1557))))))

(declare-fun d!1243498 () Bool)

(assert (=> d!1243498 e!2621078))

(declare-fun res!1735411 () Bool)

(assert (=> d!1243498 (=> (not res!1735411) (not e!2621078))))

(assert (=> d!1243498 (= res!1735411 (= (content!7293 lt!1502198) ((_ map or) (content!7293 p!3001) (content!7293 suffix!1557))))))

(assert (=> d!1243498 (= lt!1502198 e!2621079)))

(declare-fun c!718345 () Bool)

(assert (=> d!1243498 (= c!718345 ((_ is Nil!46450) p!3001))))

(assert (=> d!1243498 (= (++!11866 p!3001 suffix!1557) lt!1502198)))

(assert (= (and d!1243498 c!718345) b!4221790))

(assert (= (and d!1243498 (not c!718345)) b!4221791))

(assert (= (and d!1243498 res!1735411) b!4221792))

(assert (= (and b!4221792 res!1735410) b!4221793))

(declare-fun m!4810483 () Bool)

(assert (=> b!4221791 m!4810483))

(declare-fun m!4810485 () Bool)

(assert (=> b!4221792 m!4810485))

(assert (=> b!4221792 m!4810387))

(declare-fun m!4810487 () Bool)

(assert (=> b!4221792 m!4810487))

(declare-fun m!4810489 () Bool)

(assert (=> d!1243498 m!4810489))

(declare-fun m!4810491 () Bool)

(assert (=> d!1243498 m!4810491))

(declare-fun m!4810493 () Bool)

(assert (=> d!1243498 m!4810493))

(assert (=> b!4221439 d!1243498))

(declare-fun d!1243500 () Bool)

(assert (=> d!1243500 (= (isEmpty!27519 (t!349040 rules!3967)) ((_ is Nil!46451) (t!349040 rules!3967)))))

(assert (=> b!4221416 d!1243500))

(declare-fun d!1243502 () Bool)

(declare-fun res!1735412 () Bool)

(declare-fun e!2621080 () Bool)

(assert (=> d!1243502 (=> (not res!1735412) (not e!2621080))))

(assert (=> d!1243502 (= res!1735412 (rulesValid!3056 thiss!26544 (t!349040 rules!3967)))))

(assert (=> d!1243502 (= (rulesInvariant!6598 thiss!26544 (t!349040 rules!3967)) e!2621080)))

(declare-fun b!4221794 () Bool)

(assert (=> b!4221794 (= e!2621080 (noDuplicateTag!3217 thiss!26544 (t!349040 rules!3967) Nil!46453))))

(assert (= (and d!1243502 res!1735412) b!4221794))

(declare-fun m!4810495 () Bool)

(assert (=> d!1243502 m!4810495))

(declare-fun m!4810497 () Bool)

(assert (=> b!4221794 m!4810497))

(assert (=> b!4221416 d!1243502))

(declare-fun d!1243504 () Bool)

(assert (=> d!1243504 (rulesInvariant!6598 thiss!26544 (t!349040 rules!3967))))

(declare-fun lt!1502201 () Unit!65623)

(declare-fun choose!25867 (LexerInterface!7387 Rule!15384 List!46575) Unit!65623)

(assert (=> d!1243504 (= lt!1502201 (choose!25867 thiss!26544 (h!51871 rules!3967) (t!349040 rules!3967)))))

(assert (=> d!1243504 (rulesInvariant!6598 thiss!26544 (Cons!46451 (h!51871 rules!3967) (t!349040 rules!3967)))))

(assert (=> d!1243504 (= (lemmaInvariantOnRulesThenOnTail!880 thiss!26544 (h!51871 rules!3967) (t!349040 rules!3967)) lt!1502201)))

(declare-fun bs!597745 () Bool)

(assert (= bs!597745 d!1243504))

(assert (=> bs!597745 m!4810037))

(declare-fun m!4810499 () Bool)

(assert (=> bs!597745 m!4810499))

(declare-fun m!4810501 () Bool)

(assert (=> bs!597745 m!4810501))

(assert (=> b!4221416 d!1243504))

(declare-fun b!4221795 () Bool)

(declare-fun e!2621082 () Bool)

(declare-fun e!2621083 () Bool)

(assert (=> b!4221795 (= e!2621082 e!2621083)))

(declare-fun res!1735416 () Bool)

(assert (=> b!4221795 (=> (not res!1735416) (not e!2621083))))

(declare-fun lt!1502202 () Option!9980)

(assert (=> b!4221795 (= res!1735416 (isDefined!7407 lt!1502202))))

(declare-fun b!4221796 () Bool)

(declare-fun res!1735414 () Bool)

(assert (=> b!4221796 (=> (not res!1735414) (not e!2621083))))

(assert (=> b!4221796 (= res!1735414 (= (list!16809 (charsOf!5215 (_1!25219 (get!15117 lt!1502202)))) (originalCharacters!8174 (_1!25219 (get!15117 lt!1502202)))))))

(declare-fun b!4221797 () Bool)

(declare-fun e!2621081 () Option!9980)

(declare-fun lt!1502203 () Option!9980)

(declare-fun lt!1502205 () Option!9980)

(assert (=> b!4221797 (= e!2621081 (ite (and ((_ is None!9979) lt!1502203) ((_ is None!9979) lt!1502205)) None!9979 (ite ((_ is None!9979) lt!1502205) lt!1502203 (ite ((_ is None!9979) lt!1502203) lt!1502205 (ite (>= (size!34105 (_1!25219 (v!40871 lt!1502203))) (size!34105 (_1!25219 (v!40871 lt!1502205)))) lt!1502203 lt!1502205)))))))

(declare-fun call!293158 () Option!9980)

(assert (=> b!4221797 (= lt!1502203 call!293158)))

(assert (=> b!4221797 (= lt!1502205 (maxPrefix!4427 thiss!26544 (t!349040 (t!349040 rules!3967)) input!3517))))

(declare-fun b!4221798 () Bool)

(declare-fun res!1735419 () Bool)

(assert (=> b!4221798 (=> (not res!1735419) (not e!2621083))))

(assert (=> b!4221798 (= res!1735419 (= (++!11866 (list!16809 (charsOf!5215 (_1!25219 (get!15117 lt!1502202)))) (_2!25219 (get!15117 lt!1502202))) input!3517))))

(declare-fun b!4221799 () Bool)

(declare-fun res!1735417 () Bool)

(assert (=> b!4221799 (=> (not res!1735417) (not e!2621083))))

(assert (=> b!4221799 (= res!1735417 (matchR!6385 (regex!7792 (rule!10928 (_1!25219 (get!15117 lt!1502202)))) (list!16809 (charsOf!5215 (_1!25219 (get!15117 lt!1502202))))))))

(declare-fun b!4221800 () Bool)

(declare-fun res!1735418 () Bool)

(assert (=> b!4221800 (=> (not res!1735418) (not e!2621083))))

(assert (=> b!4221800 (= res!1735418 (< (size!34107 (_2!25219 (get!15117 lt!1502202))) (size!34107 input!3517)))))

(declare-fun b!4221801 () Bool)

(assert (=> b!4221801 (= e!2621083 (contains!9615 (t!349040 rules!3967) (rule!10928 (_1!25219 (get!15117 lt!1502202)))))))

(declare-fun b!4221802 () Bool)

(assert (=> b!4221802 (= e!2621081 call!293158)))

(declare-fun b!4221803 () Bool)

(declare-fun res!1735413 () Bool)

(assert (=> b!4221803 (=> (not res!1735413) (not e!2621083))))

(assert (=> b!4221803 (= res!1735413 (= (value!242601 (_1!25219 (get!15117 lt!1502202))) (apply!10706 (transformation!7792 (rule!10928 (_1!25219 (get!15117 lt!1502202)))) (seqFromList!5766 (originalCharacters!8174 (_1!25219 (get!15117 lt!1502202)))))))))

(declare-fun bm!293153 () Bool)

(assert (=> bm!293153 (= call!293158 (maxPrefixOneRule!3382 thiss!26544 (h!51871 (t!349040 rules!3967)) input!3517))))

(declare-fun d!1243506 () Bool)

(assert (=> d!1243506 e!2621082))

(declare-fun res!1735415 () Bool)

(assert (=> d!1243506 (=> res!1735415 e!2621082)))

(assert (=> d!1243506 (= res!1735415 (isEmpty!27521 lt!1502202))))

(assert (=> d!1243506 (= lt!1502202 e!2621081)))

(declare-fun c!718346 () Bool)

(assert (=> d!1243506 (= c!718346 (and ((_ is Cons!46451) (t!349040 rules!3967)) ((_ is Nil!46451) (t!349040 (t!349040 rules!3967)))))))

(declare-fun lt!1502206 () Unit!65623)

(declare-fun lt!1502204 () Unit!65623)

(assert (=> d!1243506 (= lt!1502206 lt!1502204)))

(assert (=> d!1243506 (isPrefix!4651 input!3517 input!3517)))

(assert (=> d!1243506 (= lt!1502204 (lemmaIsPrefixRefl!3068 input!3517 input!3517))))

(assert (=> d!1243506 (rulesValidInductive!2897 thiss!26544 (t!349040 rules!3967))))

(assert (=> d!1243506 (= (maxPrefix!4427 thiss!26544 (t!349040 rules!3967) input!3517) lt!1502202)))

(assert (= (and d!1243506 c!718346) b!4221802))

(assert (= (and d!1243506 (not c!718346)) b!4221797))

(assert (= (or b!4221802 b!4221797) bm!293153))

(assert (= (and d!1243506 (not res!1735415)) b!4221795))

(assert (= (and b!4221795 res!1735416) b!4221796))

(assert (= (and b!4221796 res!1735414) b!4221800))

(assert (= (and b!4221800 res!1735418) b!4221798))

(assert (= (and b!4221798 res!1735419) b!4221803))

(assert (= (and b!4221803 res!1735413) b!4221799))

(assert (= (and b!4221799 res!1735417) b!4221801))

(declare-fun m!4810503 () Bool)

(assert (=> b!4221799 m!4810503))

(declare-fun m!4810505 () Bool)

(assert (=> b!4221799 m!4810505))

(assert (=> b!4221799 m!4810505))

(declare-fun m!4810507 () Bool)

(assert (=> b!4221799 m!4810507))

(assert (=> b!4221799 m!4810507))

(declare-fun m!4810509 () Bool)

(assert (=> b!4221799 m!4810509))

(declare-fun m!4810511 () Bool)

(assert (=> b!4221797 m!4810511))

(assert (=> b!4221796 m!4810503))

(assert (=> b!4221796 m!4810505))

(assert (=> b!4221796 m!4810505))

(assert (=> b!4221796 m!4810507))

(declare-fun m!4810513 () Bool)

(assert (=> d!1243506 m!4810513))

(assert (=> d!1243506 m!4810019))

(assert (=> d!1243506 m!4810021))

(declare-fun m!4810515 () Bool)

(assert (=> d!1243506 m!4810515))

(assert (=> b!4221803 m!4810503))

(declare-fun m!4810517 () Bool)

(assert (=> b!4221803 m!4810517))

(assert (=> b!4221803 m!4810517))

(declare-fun m!4810519 () Bool)

(assert (=> b!4221803 m!4810519))

(declare-fun m!4810521 () Bool)

(assert (=> b!4221795 m!4810521))

(assert (=> b!4221801 m!4810503))

(declare-fun m!4810523 () Bool)

(assert (=> b!4221801 m!4810523))

(declare-fun m!4810525 () Bool)

(assert (=> bm!293153 m!4810525))

(assert (=> b!4221800 m!4810503))

(declare-fun m!4810527 () Bool)

(assert (=> b!4221800 m!4810527))

(assert (=> b!4221800 m!4810119))

(assert (=> b!4221798 m!4810503))

(assert (=> b!4221798 m!4810505))

(assert (=> b!4221798 m!4810505))

(assert (=> b!4221798 m!4810507))

(assert (=> b!4221798 m!4810507))

(declare-fun m!4810529 () Bool)

(assert (=> b!4221798 m!4810529))

(assert (=> b!4221437 d!1243506))

(declare-fun d!1243508 () Bool)

(declare-fun list!16811 (Conc!14003) List!46574)

(assert (=> d!1243508 (= (list!16809 (charsOf!5215 tBis!41)) (list!16811 (c!718307 (charsOf!5215 tBis!41))))))

(declare-fun bs!597746 () Bool)

(assert (= bs!597746 d!1243508))

(declare-fun m!4810531 () Bool)

(assert (=> bs!597746 m!4810531))

(assert (=> b!4221438 d!1243508))

(declare-fun d!1243510 () Bool)

(declare-fun lt!1502209 () BalanceConc!27600)

(assert (=> d!1243510 (= (list!16809 lt!1502209) (originalCharacters!8174 tBis!41))))

(assert (=> d!1243510 (= lt!1502209 (dynLambda!20002 (toChars!10375 (transformation!7792 (rule!10928 tBis!41))) (value!242601 tBis!41)))))

(assert (=> d!1243510 (= (charsOf!5215 tBis!41) lt!1502209)))

(declare-fun b_lambda!124435 () Bool)

(assert (=> (not b_lambda!124435) (not d!1243510)))

(assert (=> d!1243510 t!349058))

(declare-fun b_and!333169 () Bool)

(assert (= b_and!333157 (and (=> t!349058 result!309158) b_and!333169)))

(assert (=> d!1243510 t!349060))

(declare-fun b_and!333171 () Bool)

(assert (= b_and!333159 (and (=> t!349060 result!309162) b_and!333171)))

(assert (=> d!1243510 t!349062))

(declare-fun b_and!333173 () Bool)

(assert (= b_and!333161 (and (=> t!349062 result!309164) b_and!333173)))

(assert (=> d!1243510 t!349064))

(declare-fun b_and!333175 () Bool)

(assert (= b_and!333163 (and (=> t!349064 result!309166) b_and!333175)))

(declare-fun m!4810533 () Bool)

(assert (=> d!1243510 m!4810533))

(assert (=> d!1243510 m!4810287))

(assert (=> b!4221438 d!1243510))

(declare-fun d!1243512 () Bool)

(assert (=> d!1243512 (= (inv!61112 (tag!8656 (rule!10928 t!8364))) (= (mod (str.len (value!242600 (tag!8656 (rule!10928 t!8364)))) 2) 0))))

(assert (=> b!4221420 d!1243512))

(declare-fun d!1243514 () Bool)

(declare-fun res!1735420 () Bool)

(declare-fun e!2621084 () Bool)

(assert (=> d!1243514 (=> (not res!1735420) (not e!2621084))))

(assert (=> d!1243514 (= res!1735420 (semiInverseModEq!3387 (toChars!10375 (transformation!7792 (rule!10928 t!8364))) (toValue!10516 (transformation!7792 (rule!10928 t!8364)))))))

(assert (=> d!1243514 (= (inv!61115 (transformation!7792 (rule!10928 t!8364))) e!2621084)))

(declare-fun b!4221804 () Bool)

(assert (=> b!4221804 (= e!2621084 (equivClasses!3286 (toChars!10375 (transformation!7792 (rule!10928 t!8364))) (toValue!10516 (transformation!7792 (rule!10928 t!8364)))))))

(assert (= (and d!1243514 res!1735420) b!4221804))

(declare-fun m!4810535 () Bool)

(assert (=> d!1243514 m!4810535))

(declare-fun m!4810537 () Bool)

(assert (=> b!4221804 m!4810537))

(assert (=> b!4221420 d!1243514))

(declare-fun d!1243516 () Bool)

(declare-fun res!1735425 () Bool)

(declare-fun e!2621087 () Bool)

(assert (=> d!1243516 (=> (not res!1735425) (not e!2621087))))

(declare-fun validRegex!5764 (Regex!12697) Bool)

(assert (=> d!1243516 (= res!1735425 (validRegex!5764 (regex!7792 rBis!178)))))

(assert (=> d!1243516 (= (ruleValid!3504 thiss!26544 rBis!178) e!2621087)))

(declare-fun b!4221809 () Bool)

(declare-fun res!1735426 () Bool)

(assert (=> b!4221809 (=> (not res!1735426) (not e!2621087))))

(declare-fun nullable!4477 (Regex!12697) Bool)

(assert (=> b!4221809 (= res!1735426 (not (nullable!4477 (regex!7792 rBis!178))))))

(declare-fun b!4221810 () Bool)

(assert (=> b!4221810 (= e!2621087 (not (= (tag!8656 rBis!178) (String!53981 ""))))))

(assert (= (and d!1243516 res!1735425) b!4221809))

(assert (= (and b!4221809 res!1735426) b!4221810))

(declare-fun m!4810539 () Bool)

(assert (=> d!1243516 m!4810539))

(declare-fun m!4810541 () Bool)

(assert (=> b!4221809 m!4810541))

(assert (=> b!4221441 d!1243516))

(declare-fun d!1243518 () Bool)

(assert (=> d!1243518 (= (inv!61112 (tag!8656 (rule!10928 tBis!41))) (= (mod (str.len (value!242600 (tag!8656 (rule!10928 tBis!41)))) 2) 0))))

(assert (=> b!4221431 d!1243518))

(declare-fun d!1243520 () Bool)

(declare-fun res!1735427 () Bool)

(declare-fun e!2621088 () Bool)

(assert (=> d!1243520 (=> (not res!1735427) (not e!2621088))))

(assert (=> d!1243520 (= res!1735427 (semiInverseModEq!3387 (toChars!10375 (transformation!7792 (rule!10928 tBis!41))) (toValue!10516 (transformation!7792 (rule!10928 tBis!41)))))))

(assert (=> d!1243520 (= (inv!61115 (transformation!7792 (rule!10928 tBis!41))) e!2621088)))

(declare-fun b!4221811 () Bool)

(assert (=> b!4221811 (= e!2621088 (equivClasses!3286 (toChars!10375 (transformation!7792 (rule!10928 tBis!41))) (toValue!10516 (transformation!7792 (rule!10928 tBis!41)))))))

(assert (= (and d!1243520 res!1735427) b!4221811))

(declare-fun m!4810543 () Bool)

(assert (=> d!1243520 m!4810543))

(declare-fun m!4810545 () Bool)

(assert (=> b!4221811 m!4810545))

(assert (=> b!4221431 d!1243520))

(declare-fun b!4221812 () Bool)

(declare-fun res!1735428 () Bool)

(declare-fun e!2621092 () Bool)

(assert (=> b!4221812 (=> (not res!1735428) (not e!2621092))))

(declare-fun lt!1502213 () Option!9980)

(assert (=> b!4221812 (= res!1735428 (= (rule!10928 (_1!25219 (get!15117 lt!1502213))) rBis!178))))

(declare-fun b!4221813 () Bool)

(declare-fun e!2621090 () Option!9980)

(assert (=> b!4221813 (= e!2621090 None!9979)))

(declare-fun b!4221814 () Bool)

(declare-fun res!1735431 () Bool)

(assert (=> b!4221814 (=> (not res!1735431) (not e!2621092))))

(assert (=> b!4221814 (= res!1735431 (< (size!34107 (_2!25219 (get!15117 lt!1502213))) (size!34107 input!3517)))))

(declare-fun b!4221815 () Bool)

(assert (=> b!4221815 (= e!2621092 (= (size!34105 (_1!25219 (get!15117 lt!1502213))) (size!34107 (originalCharacters!8174 (_1!25219 (get!15117 lt!1502213))))))))

(declare-fun b!4221817 () Bool)

(declare-fun res!1735429 () Bool)

(assert (=> b!4221817 (=> (not res!1735429) (not e!2621092))))

(assert (=> b!4221817 (= res!1735429 (= (++!11866 (list!16809 (charsOf!5215 (_1!25219 (get!15117 lt!1502213)))) (_2!25219 (get!15117 lt!1502213))) input!3517))))

(declare-fun b!4221818 () Bool)

(declare-fun res!1735434 () Bool)

(assert (=> b!4221818 (=> (not res!1735434) (not e!2621092))))

(assert (=> b!4221818 (= res!1735434 (= (value!242601 (_1!25219 (get!15117 lt!1502213))) (apply!10706 (transformation!7792 (rule!10928 (_1!25219 (get!15117 lt!1502213)))) (seqFromList!5766 (originalCharacters!8174 (_1!25219 (get!15117 lt!1502213)))))))))

(declare-fun b!4221819 () Bool)

(declare-fun e!2621089 () Bool)

(assert (=> b!4221819 (= e!2621089 (matchR!6385 (regex!7792 rBis!178) (_1!25220 (findLongestMatchInner!1666 (regex!7792 rBis!178) Nil!46450 (size!34107 Nil!46450) input!3517 input!3517 (size!34107 input!3517)))))))

(declare-fun b!4221820 () Bool)

(declare-fun lt!1502211 () tuple2!44172)

(assert (=> b!4221820 (= e!2621090 (Some!9979 (tuple2!44171 (Token!14287 (apply!10706 (transformation!7792 rBis!178) (seqFromList!5766 (_1!25220 lt!1502211))) rBis!178 (size!34108 (seqFromList!5766 (_1!25220 lt!1502211))) (_1!25220 lt!1502211)) (_2!25220 lt!1502211))))))

(declare-fun lt!1502210 () Unit!65623)

(assert (=> b!4221820 (= lt!1502210 (longestMatchIsAcceptedByMatchOrIsEmpty!1639 (regex!7792 rBis!178) input!3517))))

(declare-fun res!1735432 () Bool)

(assert (=> b!4221820 (= res!1735432 (isEmpty!27523 (_1!25220 (findLongestMatchInner!1666 (regex!7792 rBis!178) Nil!46450 (size!34107 Nil!46450) input!3517 input!3517 (size!34107 input!3517)))))))

(assert (=> b!4221820 (=> res!1735432 e!2621089)))

(assert (=> b!4221820 e!2621089))

(declare-fun lt!1502212 () Unit!65623)

(assert (=> b!4221820 (= lt!1502212 lt!1502210)))

(declare-fun lt!1502214 () Unit!65623)

(assert (=> b!4221820 (= lt!1502214 (lemmaSemiInverse!2507 (transformation!7792 rBis!178) (seqFromList!5766 (_1!25220 lt!1502211))))))

(declare-fun b!4221816 () Bool)

(declare-fun e!2621091 () Bool)

(assert (=> b!4221816 (= e!2621091 e!2621092)))

(declare-fun res!1735430 () Bool)

(assert (=> b!4221816 (=> (not res!1735430) (not e!2621092))))

(assert (=> b!4221816 (= res!1735430 (matchR!6385 (regex!7792 rBis!178) (list!16809 (charsOf!5215 (_1!25219 (get!15117 lt!1502213))))))))

(declare-fun d!1243522 () Bool)

(assert (=> d!1243522 e!2621091))

(declare-fun res!1735433 () Bool)

(assert (=> d!1243522 (=> res!1735433 e!2621091)))

(assert (=> d!1243522 (= res!1735433 (isEmpty!27521 lt!1502213))))

(assert (=> d!1243522 (= lt!1502213 e!2621090)))

(declare-fun c!718347 () Bool)

(assert (=> d!1243522 (= c!718347 (isEmpty!27523 (_1!25220 lt!1502211)))))

(assert (=> d!1243522 (= lt!1502211 (findLongestMatch!1579 (regex!7792 rBis!178) input!3517))))

(assert (=> d!1243522 (ruleValid!3504 thiss!26544 rBis!178)))

(assert (=> d!1243522 (= (maxPrefixOneRule!3382 thiss!26544 rBis!178 input!3517) lt!1502213)))

(assert (= (and d!1243522 c!718347) b!4221813))

(assert (= (and d!1243522 (not c!718347)) b!4221820))

(assert (= (and b!4221820 (not res!1735432)) b!4221819))

(assert (= (and d!1243522 (not res!1735433)) b!4221816))

(assert (= (and b!4221816 res!1735430) b!4221817))

(assert (= (and b!4221817 res!1735429) b!4221814))

(assert (= (and b!4221814 res!1735431) b!4221812))

(assert (= (and b!4221812 res!1735428) b!4221818))

(assert (= (and b!4221818 res!1735434) b!4221815))

(declare-fun m!4810547 () Bool)

(assert (=> b!4221818 m!4810547))

(declare-fun m!4810549 () Bool)

(assert (=> b!4221818 m!4810549))

(assert (=> b!4221818 m!4810549))

(declare-fun m!4810551 () Bool)

(assert (=> b!4221818 m!4810551))

(assert (=> b!4221815 m!4810547))

(declare-fun m!4810553 () Bool)

(assert (=> b!4221815 m!4810553))

(assert (=> b!4221819 m!4810203))

(assert (=> b!4221819 m!4810119))

(assert (=> b!4221819 m!4810203))

(assert (=> b!4221819 m!4810119))

(declare-fun m!4810555 () Bool)

(assert (=> b!4221819 m!4810555))

(declare-fun m!4810557 () Bool)

(assert (=> b!4221819 m!4810557))

(declare-fun m!4810559 () Bool)

(assert (=> d!1243522 m!4810559))

(declare-fun m!4810561 () Bool)

(assert (=> d!1243522 m!4810561))

(declare-fun m!4810563 () Bool)

(assert (=> d!1243522 m!4810563))

(assert (=> d!1243522 m!4809989))

(assert (=> b!4221812 m!4810547))

(assert (=> b!4221816 m!4810547))

(declare-fun m!4810565 () Bool)

(assert (=> b!4221816 m!4810565))

(assert (=> b!4221816 m!4810565))

(declare-fun m!4810567 () Bool)

(assert (=> b!4221816 m!4810567))

(assert (=> b!4221816 m!4810567))

(declare-fun m!4810569 () Bool)

(assert (=> b!4221816 m!4810569))

(assert (=> b!4221814 m!4810547))

(declare-fun m!4810571 () Bool)

(assert (=> b!4221814 m!4810571))

(assert (=> b!4221814 m!4810119))

(declare-fun m!4810573 () Bool)

(assert (=> b!4221820 m!4810573))

(assert (=> b!4221820 m!4810119))

(assert (=> b!4221820 m!4810203))

(assert (=> b!4221820 m!4810119))

(assert (=> b!4221820 m!4810555))

(declare-fun m!4810575 () Bool)

(assert (=> b!4221820 m!4810575))

(assert (=> b!4221820 m!4810575))

(declare-fun m!4810577 () Bool)

(assert (=> b!4221820 m!4810577))

(assert (=> b!4221820 m!4810203))

(assert (=> b!4221820 m!4810575))

(declare-fun m!4810579 () Bool)

(assert (=> b!4221820 m!4810579))

(assert (=> b!4221820 m!4810575))

(declare-fun m!4810581 () Bool)

(assert (=> b!4221820 m!4810581))

(declare-fun m!4810583 () Bool)

(assert (=> b!4221820 m!4810583))

(assert (=> b!4221817 m!4810547))

(assert (=> b!4221817 m!4810565))

(assert (=> b!4221817 m!4810565))

(assert (=> b!4221817 m!4810567))

(assert (=> b!4221817 m!4810567))

(declare-fun m!4810585 () Bool)

(assert (=> b!4221817 m!4810585))

(assert (=> b!4221430 d!1243522))

(declare-fun b!4221821 () Bool)

(declare-fun e!2621094 () Bool)

(declare-fun e!2621095 () Bool)

(assert (=> b!4221821 (= e!2621094 e!2621095)))

(declare-fun res!1735438 () Bool)

(assert (=> b!4221821 (=> (not res!1735438) (not e!2621095))))

(assert (=> b!4221821 (= res!1735438 (not ((_ is Nil!46450) input!3517)))))

(declare-fun b!4221823 () Bool)

(assert (=> b!4221823 (= e!2621095 (isPrefix!4651 (tail!6803 input!3517) (tail!6803 input!3517)))))

(declare-fun b!4221822 () Bool)

(declare-fun res!1735435 () Bool)

(assert (=> b!4221822 (=> (not res!1735435) (not e!2621095))))

(assert (=> b!4221822 (= res!1735435 (= (head!8956 input!3517) (head!8956 input!3517)))))

(declare-fun d!1243524 () Bool)

(declare-fun e!2621093 () Bool)

(assert (=> d!1243524 e!2621093))

(declare-fun res!1735436 () Bool)

(assert (=> d!1243524 (=> res!1735436 e!2621093)))

(declare-fun lt!1502215 () Bool)

(assert (=> d!1243524 (= res!1735436 (not lt!1502215))))

(assert (=> d!1243524 (= lt!1502215 e!2621094)))

(declare-fun res!1735437 () Bool)

(assert (=> d!1243524 (=> res!1735437 e!2621094)))

(assert (=> d!1243524 (= res!1735437 ((_ is Nil!46450) input!3517))))

(assert (=> d!1243524 (= (isPrefix!4651 input!3517 input!3517) lt!1502215)))

(declare-fun b!4221824 () Bool)

(assert (=> b!4221824 (= e!2621093 (>= (size!34107 input!3517) (size!34107 input!3517)))))

(assert (= (and d!1243524 (not res!1735437)) b!4221821))

(assert (= (and b!4221821 res!1735438) b!4221822))

(assert (= (and b!4221822 res!1735435) b!4221823))

(assert (= (and d!1243524 (not res!1735436)) b!4221824))

(assert (=> b!4221823 m!4810327))

(assert (=> b!4221823 m!4810327))

(assert (=> b!4221823 m!4810327))

(assert (=> b!4221823 m!4810327))

(declare-fun m!4810587 () Bool)

(assert (=> b!4221823 m!4810587))

(assert (=> b!4221822 m!4810333))

(assert (=> b!4221822 m!4810333))

(assert (=> b!4221824 m!4810119))

(assert (=> b!4221824 m!4810119))

(assert (=> b!4221430 d!1243524))

(declare-fun d!1243526 () Bool)

(assert (=> d!1243526 (isPrefix!4651 input!3517 input!3517)))

(declare-fun lt!1502218 () Unit!65623)

(declare-fun choose!25869 (List!46574 List!46574) Unit!65623)

(assert (=> d!1243526 (= lt!1502218 (choose!25869 input!3517 input!3517))))

(assert (=> d!1243526 (= (lemmaIsPrefixRefl!3068 input!3517 input!3517) lt!1502218)))

(declare-fun bs!597747 () Bool)

(assert (= bs!597747 d!1243526))

(assert (=> bs!597747 m!4810019))

(declare-fun m!4810589 () Bool)

(assert (=> bs!597747 m!4810589))

(assert (=> b!4221430 d!1243526))

(declare-fun b!4221829 () Bool)

(declare-fun e!2621098 () Bool)

(declare-fun tp!1291836 () Bool)

(assert (=> b!4221829 (= e!2621098 (and tp_is_empty!22361 tp!1291836))))

(assert (=> b!4221433 (= tp!1291759 e!2621098)))

(assert (= (and b!4221433 ((_ is Cons!46450) (t!349039 suffixBis!41))) b!4221829))

(declare-fun e!2621101 () Bool)

(assert (=> b!4221443 (= tp!1291761 e!2621101)))

(declare-fun b!4221840 () Bool)

(assert (=> b!4221840 (= e!2621101 tp_is_empty!22361)))

(declare-fun b!4221842 () Bool)

(declare-fun tp!1291848 () Bool)

(assert (=> b!4221842 (= e!2621101 tp!1291848)))

(declare-fun b!4221843 () Bool)

(declare-fun tp!1291850 () Bool)

(declare-fun tp!1291847 () Bool)

(assert (=> b!4221843 (= e!2621101 (and tp!1291850 tp!1291847))))

(declare-fun b!4221841 () Bool)

(declare-fun tp!1291849 () Bool)

(declare-fun tp!1291851 () Bool)

(assert (=> b!4221841 (= e!2621101 (and tp!1291849 tp!1291851))))

(assert (= (and b!4221443 ((_ is ElementMatch!12697) (regex!7792 rBis!178))) b!4221840))

(assert (= (and b!4221443 ((_ is Concat!20720) (regex!7792 rBis!178))) b!4221841))

(assert (= (and b!4221443 ((_ is Star!12697) (regex!7792 rBis!178))) b!4221842))

(assert (= (and b!4221443 ((_ is Union!12697) (regex!7792 rBis!178))) b!4221843))

(declare-fun b!4221844 () Bool)

(declare-fun e!2621102 () Bool)

(declare-fun tp!1291852 () Bool)

(assert (=> b!4221844 (= e!2621102 (and tp_is_empty!22361 tp!1291852))))

(assert (=> b!4221426 (= tp!1291773 e!2621102)))

(assert (= (and b!4221426 ((_ is Cons!46450) (t!349039 suffix!1557))) b!4221844))

(declare-fun b!4221845 () Bool)

(declare-fun e!2621103 () Bool)

(declare-fun tp!1291853 () Bool)

(assert (=> b!4221845 (= e!2621103 (and tp_is_empty!22361 tp!1291853))))

(assert (=> b!4221424 (= tp!1291763 e!2621103)))

(assert (= (and b!4221424 ((_ is Cons!46450) (originalCharacters!8174 t!8364))) b!4221845))

(declare-fun e!2621104 () Bool)

(assert (=> b!4221413 (= tp!1291774 e!2621104)))

(declare-fun b!4221846 () Bool)

(assert (=> b!4221846 (= e!2621104 tp_is_empty!22361)))

(declare-fun b!4221848 () Bool)

(declare-fun tp!1291855 () Bool)

(assert (=> b!4221848 (= e!2621104 tp!1291855)))

(declare-fun b!4221849 () Bool)

(declare-fun tp!1291857 () Bool)

(declare-fun tp!1291854 () Bool)

(assert (=> b!4221849 (= e!2621104 (and tp!1291857 tp!1291854))))

(declare-fun b!4221847 () Bool)

(declare-fun tp!1291856 () Bool)

(declare-fun tp!1291858 () Bool)

(assert (=> b!4221847 (= e!2621104 (and tp!1291856 tp!1291858))))

(assert (= (and b!4221413 ((_ is ElementMatch!12697) (regex!7792 (h!51871 rules!3967)))) b!4221846))

(assert (= (and b!4221413 ((_ is Concat!20720) (regex!7792 (h!51871 rules!3967)))) b!4221847))

(assert (= (and b!4221413 ((_ is Star!12697) (regex!7792 (h!51871 rules!3967)))) b!4221848))

(assert (= (and b!4221413 ((_ is Union!12697) (regex!7792 (h!51871 rules!3967)))) b!4221849))

(declare-fun b!4221850 () Bool)

(declare-fun e!2621105 () Bool)

(declare-fun tp!1291859 () Bool)

(assert (=> b!4221850 (= e!2621105 (and tp_is_empty!22361 tp!1291859))))

(assert (=> b!4221414 (= tp!1291769 e!2621105)))

(assert (= (and b!4221414 ((_ is Cons!46450) (t!349039 pBis!121))) b!4221850))

(declare-fun b!4221851 () Bool)

(declare-fun e!2621106 () Bool)

(declare-fun tp!1291860 () Bool)

(assert (=> b!4221851 (= e!2621106 (and tp_is_empty!22361 tp!1291860))))

(assert (=> b!4221418 (= tp!1291766 e!2621106)))

(assert (= (and b!4221418 ((_ is Cons!46450) (originalCharacters!8174 tBis!41))) b!4221851))

(declare-fun b!4221852 () Bool)

(declare-fun e!2621107 () Bool)

(declare-fun tp!1291861 () Bool)

(assert (=> b!4221852 (= e!2621107 (and tp_is_empty!22361 tp!1291861))))

(assert (=> b!4221427 (= tp!1291772 e!2621107)))

(assert (= (and b!4221427 ((_ is Cons!46450) (t!349039 p!3001))) b!4221852))

(declare-fun e!2621108 () Bool)

(assert (=> b!4221420 (= tp!1291765 e!2621108)))

(declare-fun b!4221853 () Bool)

(assert (=> b!4221853 (= e!2621108 tp_is_empty!22361)))

(declare-fun b!4221855 () Bool)

(declare-fun tp!1291863 () Bool)

(assert (=> b!4221855 (= e!2621108 tp!1291863)))

(declare-fun b!4221856 () Bool)

(declare-fun tp!1291865 () Bool)

(declare-fun tp!1291862 () Bool)

(assert (=> b!4221856 (= e!2621108 (and tp!1291865 tp!1291862))))

(declare-fun b!4221854 () Bool)

(declare-fun tp!1291864 () Bool)

(declare-fun tp!1291866 () Bool)

(assert (=> b!4221854 (= e!2621108 (and tp!1291864 tp!1291866))))

(assert (= (and b!4221420 ((_ is ElementMatch!12697) (regex!7792 (rule!10928 t!8364)))) b!4221853))

(assert (= (and b!4221420 ((_ is Concat!20720) (regex!7792 (rule!10928 t!8364)))) b!4221854))

(assert (= (and b!4221420 ((_ is Star!12697) (regex!7792 (rule!10928 t!8364)))) b!4221855))

(assert (= (and b!4221420 ((_ is Union!12697) (regex!7792 (rule!10928 t!8364)))) b!4221856))

(declare-fun b!4221867 () Bool)

(declare-fun b_free!124063 () Bool)

(declare-fun b_next!124767 () Bool)

(assert (=> b!4221867 (= b_free!124063 (not b_next!124767))))

(declare-fun tp!1291878 () Bool)

(declare-fun b_and!333177 () Bool)

(assert (=> b!4221867 (= tp!1291878 b_and!333177)))

(declare-fun b_free!124065 () Bool)

(declare-fun b_next!124769 () Bool)

(assert (=> b!4221867 (= b_free!124065 (not b_next!124769))))

(declare-fun tb!253695 () Bool)

(declare-fun t!349079 () Bool)

(assert (=> (and b!4221867 (= (toChars!10375 (transformation!7792 (h!51871 (t!349040 rules!3967)))) (toChars!10375 (transformation!7792 (rule!10928 tBis!41)))) t!349079) tb!253695))

(declare-fun result!309192 () Bool)

(assert (= result!309192 result!309158))

(assert (=> b!4221628 t!349079))

(declare-fun tb!253697 () Bool)

(declare-fun t!349081 () Bool)

(assert (=> (and b!4221867 (= (toChars!10375 (transformation!7792 (h!51871 (t!349040 rules!3967)))) (toChars!10375 (transformation!7792 (rule!10928 t!8364)))) t!349081) tb!253697))

(declare-fun result!309194 () Bool)

(assert (= result!309194 result!309168))

(assert (=> b!4221639 t!349081))

(assert (=> d!1243510 t!349079))

(declare-fun b_and!333179 () Bool)

(declare-fun tp!1291876 () Bool)

(assert (=> b!4221867 (= tp!1291876 (and (=> t!349079 result!309192) (=> t!349081 result!309194) b_and!333179))))

(declare-fun e!2621118 () Bool)

(assert (=> b!4221867 (= e!2621118 (and tp!1291878 tp!1291876))))

(declare-fun tp!1291875 () Bool)

(declare-fun b!4221866 () Bool)

(declare-fun e!2621119 () Bool)

(assert (=> b!4221866 (= e!2621119 (and tp!1291875 (inv!61112 (tag!8656 (h!51871 (t!349040 rules!3967)))) (inv!61115 (transformation!7792 (h!51871 (t!349040 rules!3967)))) e!2621118))))

(declare-fun b!4221865 () Bool)

(declare-fun e!2621117 () Bool)

(declare-fun tp!1291877 () Bool)

(assert (=> b!4221865 (= e!2621117 (and e!2621119 tp!1291877))))

(assert (=> b!4221442 (= tp!1291756 e!2621117)))

(assert (= b!4221866 b!4221867))

(assert (= b!4221865 b!4221866))

(assert (= (and b!4221442 ((_ is Cons!46451) (t!349040 rules!3967))) b!4221865))

(declare-fun m!4810591 () Bool)

(assert (=> b!4221866 m!4810591))

(declare-fun m!4810593 () Bool)

(assert (=> b!4221866 m!4810593))

(declare-fun e!2621121 () Bool)

(assert (=> b!4221431 (= tp!1291771 e!2621121)))

(declare-fun b!4221868 () Bool)

(assert (=> b!4221868 (= e!2621121 tp_is_empty!22361)))

(declare-fun b!4221870 () Bool)

(declare-fun tp!1291880 () Bool)

(assert (=> b!4221870 (= e!2621121 tp!1291880)))

(declare-fun b!4221871 () Bool)

(declare-fun tp!1291882 () Bool)

(declare-fun tp!1291879 () Bool)

(assert (=> b!4221871 (= e!2621121 (and tp!1291882 tp!1291879))))

(declare-fun b!4221869 () Bool)

(declare-fun tp!1291881 () Bool)

(declare-fun tp!1291883 () Bool)

(assert (=> b!4221869 (= e!2621121 (and tp!1291881 tp!1291883))))

(assert (= (and b!4221431 ((_ is ElementMatch!12697) (regex!7792 (rule!10928 tBis!41)))) b!4221868))

(assert (= (and b!4221431 ((_ is Concat!20720) (regex!7792 (rule!10928 tBis!41)))) b!4221869))

(assert (= (and b!4221431 ((_ is Star!12697) (regex!7792 (rule!10928 tBis!41)))) b!4221870))

(assert (= (and b!4221431 ((_ is Union!12697) (regex!7792 (rule!10928 tBis!41)))) b!4221871))

(declare-fun b!4221872 () Bool)

(declare-fun e!2621122 () Bool)

(declare-fun tp!1291884 () Bool)

(assert (=> b!4221872 (= e!2621122 (and tp_is_empty!22361 tp!1291884))))

(assert (=> b!4221440 (= tp!1291760 e!2621122)))

(assert (= (and b!4221440 ((_ is Cons!46450) (t!349039 input!3517))) b!4221872))

(declare-fun b_lambda!124437 () Bool)

(assert (= b_lambda!124425 (or (and b!4221419 b_free!124053 (= (toChars!10375 (transformation!7792 (rule!10928 t!8364))) (toChars!10375 (transformation!7792 (rule!10928 tBis!41))))) (and b!4221429 b_free!124045 (= (toChars!10375 (transformation!7792 (h!51871 rules!3967))) (toChars!10375 (transformation!7792 (rule!10928 tBis!41))))) (and b!4221867 b_free!124065 (= (toChars!10375 (transformation!7792 (h!51871 (t!349040 rules!3967)))) (toChars!10375 (transformation!7792 (rule!10928 tBis!41))))) (and b!4221435 b_free!124057 (= (toChars!10375 (transformation!7792 rBis!178)) (toChars!10375 (transformation!7792 (rule!10928 tBis!41))))) (and b!4221421 b_free!124049) b_lambda!124437)))

(declare-fun b_lambda!124439 () Bool)

(assert (= b_lambda!124435 (or (and b!4221419 b_free!124053 (= (toChars!10375 (transformation!7792 (rule!10928 t!8364))) (toChars!10375 (transformation!7792 (rule!10928 tBis!41))))) (and b!4221429 b_free!124045 (= (toChars!10375 (transformation!7792 (h!51871 rules!3967))) (toChars!10375 (transformation!7792 (rule!10928 tBis!41))))) (and b!4221867 b_free!124065 (= (toChars!10375 (transformation!7792 (h!51871 (t!349040 rules!3967)))) (toChars!10375 (transformation!7792 (rule!10928 tBis!41))))) (and b!4221435 b_free!124057 (= (toChars!10375 (transformation!7792 rBis!178)) (toChars!10375 (transformation!7792 (rule!10928 tBis!41))))) (and b!4221421 b_free!124049) b_lambda!124439)))

(declare-fun b_lambda!124441 () Bool)

(assert (= b_lambda!124427 (or (and b!4221421 b_free!124049 (= (toChars!10375 (transformation!7792 (rule!10928 tBis!41))) (toChars!10375 (transformation!7792 (rule!10928 t!8364))))) (and b!4221435 b_free!124057 (= (toChars!10375 (transformation!7792 rBis!178)) (toChars!10375 (transformation!7792 (rule!10928 t!8364))))) (and b!4221429 b_free!124045 (= (toChars!10375 (transformation!7792 (h!51871 rules!3967))) (toChars!10375 (transformation!7792 (rule!10928 t!8364))))) (and b!4221419 b_free!124053) (and b!4221867 b_free!124065 (= (toChars!10375 (transformation!7792 (h!51871 (t!349040 rules!3967)))) (toChars!10375 (transformation!7792 (rule!10928 t!8364))))) b_lambda!124441)))

(check-sat (not b!4221818) (not b!4221503) (not b!4221499) (not b!4221501) (not b!4221775) (not d!1243510) (not d!1243474) (not b!4221829) (not b!4221693) (not b!4221812) (not b!4221814) (not b!4221778) (not b!4221610) (not b!4221613) b_and!333177 (not b!4221847) (not b_next!124767) (not b!4221820) (not d!1243502) (not b_lambda!124441) b_and!333117 (not b!4221870) (not b!4221871) (not b!4221703) (not b_next!124761) (not b!4221817) (not b!4221803) (not bm!293153) b_and!333175 (not b!4221819) b_and!333113 (not d!1243522) (not b!4221634) (not d!1243526) (not b!4221609) (not b!4221502) (not b!4221852) (not d!1243498) (not b!4221800) (not b!4221504) (not b!4221801) (not d!1243490) (not b!4221663) (not b!4221789) (not b!4221855) (not b!4221506) (not b!4221641) (not d!1243444) (not d!1243514) b_and!333109 (not b!4221662) (not b!4221794) (not d!1243400) (not b!4221498) (not b!4221823) (not b!4221691) (not b!4221500) (not b!4221856) (not b!4221799) (not b!4221815) (not b!4221611) (not b!4221854) tp_is_empty!22361 (not b!4221782) (not b!4221628) (not b_next!124769) (not bm!293148) (not tb!253675) (not b!4221824) (not b!4221811) (not b!4221872) (not b!4221843) (not b!4221844) (not b_next!124751) (not b!4221639) (not b_next!124757) (not d!1243424) (not b_next!124749) (not b!4221866) (not d!1243506) (not b_lambda!124437) (not b!4221809) (not d!1243494) (not b!4221822) b_and!333171 (not b!4221614) (not d!1243504) (not b!4221640) (not b!4221796) (not b_next!124753) (not d!1243440) (not b_lambda!124439) b_and!333121 (not b!4221661) (not b!4221606) b_and!333169 (not b!4221776) (not b!4221692) (not b!4221842) (not b!4221786) (not b!4221792) (not d!1243516) (not b!4221850) (not b!4221629) (not b!4221804) (not b!4221797) (not b!4221845) (not b_next!124747) (not b!4221848) (not b!4221612) (not d!1243492) (not b!4221816) (not b!4221841) (not d!1243520) (not b!4221745) (not b_next!124759) (not b!4221869) (not d!1243480) (not b!4221865) b_and!333173 (not b!4221784) (not b!4221791) (not b!4221779) (not b!4221689) (not tb!253683) (not d!1243484) b_and!333179 (not b!4221795) (not b!4221798) (not d!1243508) (not b!4221851) (not b!4221744) (not b!4221787) (not b_next!124755) (not b!4221608) (not b!4221849))
(check-sat b_and!333177 (not b_next!124767) b_and!333117 (not b_next!124761) b_and!333109 (not b_next!124769) (not b_next!124749) b_and!333171 b_and!333169 (not b_next!124747) (not b_next!124759) b_and!333173 b_and!333179 (not b_next!124755) b_and!333175 b_and!333113 (not b_next!124751) (not b_next!124757) (not b_next!124753) b_and!333121)
