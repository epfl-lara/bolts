; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!274964 () Bool)

(assert start!274964)

(declare-fun b!2831012 () Bool)

(declare-fun b_free!81341 () Bool)

(declare-fun b_next!82045 () Bool)

(assert (=> b!2831012 (= b_free!81341 (not b_next!82045))))

(declare-fun tp!904614 () Bool)

(declare-fun b_and!207003 () Bool)

(assert (=> b!2831012 (= tp!904614 b_and!207003)))

(declare-fun b_free!81343 () Bool)

(declare-fun b_next!82047 () Bool)

(assert (=> b!2831012 (= b_free!81343 (not b_next!82047))))

(declare-fun tp!904612 () Bool)

(declare-fun b_and!207005 () Bool)

(assert (=> b!2831012 (= tp!904612 b_and!207005)))

(declare-fun b!2831013 () Bool)

(declare-fun b_free!81345 () Bool)

(declare-fun b_next!82049 () Bool)

(assert (=> b!2831013 (= b_free!81345 (not b_next!82049))))

(declare-fun tp!904616 () Bool)

(declare-fun b_and!207007 () Bool)

(assert (=> b!2831013 (= tp!904616 b_and!207007)))

(declare-fun b_free!81347 () Bool)

(declare-fun b_next!82051 () Bool)

(assert (=> b!2831013 (= b_free!81347 (not b_next!82051))))

(declare-fun tp!904610 () Bool)

(declare-fun b_and!207009 () Bool)

(assert (=> b!2831013 (= tp!904610 b_and!207009)))

(declare-fun b!2831010 () Bool)

(declare-fun res!1178482 () Bool)

(declare-fun e!1792298 () Bool)

(assert (=> b!2831010 (=> (not res!1178482) (not e!1792298))))

(declare-datatypes ((LexerInterface!4586 0))(
  ( (LexerInterfaceExt!4583 (__x!22190 Int)) (Lexer!4584) )
))
(declare-fun thiss!11007 () LexerInterface!4586)

(declare-datatypes ((List!33471 0))(
  ( (Nil!33347) (Cons!33347 (h!38767 (_ BitVec 16)) (t!231348 List!33471)) )
))
(declare-datatypes ((TokenValue!5226 0))(
  ( (FloatLiteralValue!10452 (text!37027 List!33471)) (TokenValueExt!5225 (__x!22191 Int)) (Broken!26130 (value!160729 List!33471)) (Object!5349) (End!5226) (Def!5226) (Underscore!5226) (Match!5226) (Else!5226) (Error!5226) (Case!5226) (If!5226) (Extends!5226) (Abstract!5226) (Class!5226) (Val!5226) (DelimiterValue!10452 (del!5286 List!33471)) (KeywordValue!5232 (value!160730 List!33471)) (CommentValue!10452 (value!160731 List!33471)) (WhitespaceValue!10452 (value!160732 List!33471)) (IndentationValue!5226 (value!160733 List!33471)) (String!36651) (Int32!5226) (Broken!26131 (value!160734 List!33471)) (Boolean!5227) (Unit!47346) (OperatorValue!5229 (op!5286 List!33471)) (IdentifierValue!10452 (value!160735 List!33471)) (IdentifierValue!10453 (value!160736 List!33471)) (WhitespaceValue!10453 (value!160737 List!33471)) (True!10452) (False!10452) (Broken!26132 (value!160738 List!33471)) (Broken!26133 (value!160739 List!33471)) (True!10453) (RightBrace!5226) (RightBracket!5226) (Colon!5226) (Null!5226) (Comma!5226) (LeftBracket!5226) (False!10453) (LeftBrace!5226) (ImaginaryLiteralValue!5226 (text!37028 List!33471)) (StringLiteralValue!15678 (value!160740 List!33471)) (EOFValue!5226 (value!160741 List!33471)) (IdentValue!5226 (value!160742 List!33471)) (DelimiterValue!10453 (value!160743 List!33471)) (DedentValue!5226 (value!160744 List!33471)) (NewLineValue!5226 (value!160745 List!33471)) (IntegerValue!15678 (value!160746 (_ BitVec 32)) (text!37029 List!33471)) (IntegerValue!15679 (value!160747 Int) (text!37030 List!33471)) (Times!5226) (Or!5226) (Equal!5226) (Minus!5226) (Broken!26134 (value!160748 List!33471)) (And!5226) (Div!5226) (LessEqual!5226) (Mod!5226) (Concat!13613) (Not!5226) (Plus!5226) (SpaceValue!5226 (value!160749 List!33471)) (IntegerValue!15680 (value!160750 Int) (text!37031 List!33471)) (StringLiteralValue!15679 (text!37032 List!33471)) (FloatLiteralValue!10453 (text!37033 List!33471)) (BytesLiteralValue!5226 (value!160751 List!33471)) (CommentValue!10453 (value!160752 List!33471)) (StringLiteralValue!15680 (value!160753 List!33471)) (ErrorTokenValue!5226 (msg!5287 List!33471)) )
))
(declare-datatypes ((C!16956 0))(
  ( (C!16957 (val!10490 Int)) )
))
(declare-datatypes ((List!33472 0))(
  ( (Nil!33348) (Cons!33348 (h!38768 C!16956) (t!231349 List!33472)) )
))
(declare-datatypes ((IArray!20699 0))(
  ( (IArray!20700 (innerList!10407 List!33472)) )
))
(declare-datatypes ((Conc!10347 0))(
  ( (Node!10347 (left!25164 Conc!10347) (right!25494 Conc!10347) (csize!20924 Int) (cheight!10558 Int)) (Leaf!15753 (xs!13459 IArray!20699) (csize!20925 Int)) (Empty!10347) )
))
(declare-datatypes ((Regex!8387 0))(
  ( (ElementMatch!8387 (c!457863 C!16956)) (Concat!13614 (regOne!17286 Regex!8387) (regTwo!17286 Regex!8387)) (EmptyExpr!8387) (Star!8387 (reg!8716 Regex!8387)) (EmptyLang!8387) (Union!8387 (regOne!17287 Regex!8387) (regTwo!17287 Regex!8387)) )
))
(declare-datatypes ((String!36652 0))(
  ( (String!36653 (value!160754 String)) )
))
(declare-datatypes ((BalanceConc!20332 0))(
  ( (BalanceConc!20333 (c!457864 Conc!10347)) )
))
(declare-datatypes ((TokenValueInjection!9880 0))(
  ( (TokenValueInjection!9881 (toValue!7022 Int) (toChars!6881 Int)) )
))
(declare-datatypes ((Rule!9792 0))(
  ( (Rule!9793 (regex!4996 Regex!8387) (tag!5500 String!36652) (isSeparator!4996 Bool) (transformation!4996 TokenValueInjection!9880)) )
))
(declare-datatypes ((Token!9394 0))(
  ( (Token!9395 (value!160755 TokenValue!5226) (rule!7424 Rule!9792) (size!25959 Int) (originalCharacters!5728 List!33472)) )
))
(declare-datatypes ((List!33473 0))(
  ( (Nil!33349) (Cons!33349 (h!38769 Token!9394) (t!231350 List!33473)) )
))
(declare-fun l!4019 () List!33473)

(declare-datatypes ((List!33474 0))(
  ( (Nil!33350) (Cons!33350 (h!38770 Rule!9792) (t!231351 List!33474)) )
))
(declare-fun rules!1047 () List!33474)

(declare-fun rulesProduceEachTokenIndividuallyList!1629 (LexerInterface!4586 List!33474 List!33473) Bool)

(assert (=> b!2831010 (= res!1178482 (rulesProduceEachTokenIndividuallyList!1629 thiss!11007 rules!1047 l!4019))))

(declare-fun b!2831011 () Bool)

(declare-fun res!1178485 () Bool)

(assert (=> b!2831011 (=> (not res!1178485) (not e!1792298))))

(get-info :version)

(assert (=> b!2831011 (= res!1178485 (and ((_ is Cons!33349) l!4019) ((_ is Cons!33349) (t!231350 l!4019))))))

(declare-fun res!1178481 () Bool)

(assert (=> start!274964 (=> (not res!1178481) (not e!1792298))))

(assert (=> start!274964 (= res!1178481 ((_ is Lexer!4584) thiss!11007))))

(assert (=> start!274964 e!1792298))

(assert (=> start!274964 true))

(declare-fun e!1792301 () Bool)

(assert (=> start!274964 e!1792301))

(declare-fun e!1792297 () Bool)

(assert (=> start!274964 e!1792297))

(declare-fun e!1792291 () Bool)

(assert (=> b!2831012 (= e!1792291 (and tp!904614 tp!904612))))

(declare-fun e!1792295 () Bool)

(assert (=> b!2831013 (= e!1792295 (and tp!904616 tp!904610))))

(declare-fun tp!904611 () Bool)

(declare-fun b!2831014 () Bool)

(declare-fun e!1792300 () Bool)

(declare-fun inv!45298 (String!36652) Bool)

(declare-fun inv!45301 (TokenValueInjection!9880) Bool)

(assert (=> b!2831014 (= e!1792300 (and tp!904611 (inv!45298 (tag!5500 (h!38770 rules!1047))) (inv!45301 (transformation!4996 (h!38770 rules!1047))) e!1792291))))

(declare-fun e!1792294 () Bool)

(declare-fun tp!904618 () Bool)

(declare-fun b!2831015 () Bool)

(assert (=> b!2831015 (= e!1792294 (and tp!904618 (inv!45298 (tag!5500 (rule!7424 (h!38769 l!4019)))) (inv!45301 (transformation!4996 (rule!7424 (h!38769 l!4019)))) e!1792295))))

(declare-fun b!2831016 () Bool)

(declare-fun res!1178480 () Bool)

(assert (=> b!2831016 (=> (not res!1178480) (not e!1792298))))

(declare-fun rulesInvariant!4002 (LexerInterface!4586 List!33474) Bool)

(assert (=> b!2831016 (= res!1178480 (rulesInvariant!4002 thiss!11007 rules!1047))))

(declare-fun b!2831017 () Bool)

(declare-fun tp!904617 () Bool)

(declare-fun e!1792296 () Bool)

(declare-fun inv!45302 (Token!9394) Bool)

(assert (=> b!2831017 (= e!1792297 (and (inv!45302 (h!38769 l!4019)) e!1792296 tp!904617))))

(declare-fun b!2831018 () Bool)

(assert (=> b!2831018 (= e!1792298 false)))

(declare-fun lt!1010075 () Bool)

(declare-fun contains!6094 (List!33473 Token!9394) Bool)

(assert (=> b!2831018 (= lt!1010075 (contains!6094 l!4019 (h!38769 l!4019)))))

(declare-fun b!2831019 () Bool)

(declare-fun tp!904613 () Bool)

(assert (=> b!2831019 (= e!1792301 (and e!1792300 tp!904613))))

(declare-fun b!2831020 () Bool)

(declare-fun tp!904615 () Bool)

(declare-fun inv!21 (TokenValue!5226) Bool)

(assert (=> b!2831020 (= e!1792296 (and (inv!21 (value!160755 (h!38769 l!4019))) e!1792294 tp!904615))))

(declare-fun b!2831021 () Bool)

(declare-fun res!1178483 () Bool)

(assert (=> b!2831021 (=> (not res!1178483) (not e!1792298))))

(declare-fun isEmpty!18393 (List!33474) Bool)

(assert (=> b!2831021 (= res!1178483 (not (isEmpty!18393 rules!1047)))))

(declare-fun b!2831022 () Bool)

(declare-fun res!1178484 () Bool)

(assert (=> b!2831022 (=> (not res!1178484) (not e!1792298))))

(declare-datatypes ((IArray!20701 0))(
  ( (IArray!20702 (innerList!10408 List!33473)) )
))
(declare-datatypes ((Conc!10348 0))(
  ( (Node!10348 (left!25165 Conc!10348) (right!25495 Conc!10348) (csize!20926 Int) (cheight!10559 Int)) (Leaf!15754 (xs!13460 IArray!20701) (csize!20927 Int)) (Empty!10348) )
))
(declare-datatypes ((BalanceConc!20334 0))(
  ( (BalanceConc!20335 (c!457865 Conc!10348)) )
))
(declare-fun rulesProduceEachTokenIndividually!1102 (LexerInterface!4586 List!33474 BalanceConc!20334) Bool)

(declare-fun seqFromList!3242 (List!33473) BalanceConc!20334)

(assert (=> b!2831022 (= res!1178484 (rulesProduceEachTokenIndividually!1102 thiss!11007 rules!1047 (seqFromList!3242 l!4019)))))

(assert (= (and start!274964 res!1178481) b!2831021))

(assert (= (and b!2831021 res!1178483) b!2831016))

(assert (= (and b!2831016 res!1178480) b!2831010))

(assert (= (and b!2831010 res!1178482) b!2831022))

(assert (= (and b!2831022 res!1178484) b!2831011))

(assert (= (and b!2831011 res!1178485) b!2831018))

(assert (= b!2831014 b!2831012))

(assert (= b!2831019 b!2831014))

(assert (= (and start!274964 ((_ is Cons!33350) rules!1047)) b!2831019))

(assert (= b!2831015 b!2831013))

(assert (= b!2831020 b!2831015))

(assert (= b!2831017 b!2831020))

(assert (= (and start!274964 ((_ is Cons!33349) l!4019)) b!2831017))

(declare-fun m!3260623 () Bool)

(assert (=> b!2831022 m!3260623))

(assert (=> b!2831022 m!3260623))

(declare-fun m!3260625 () Bool)

(assert (=> b!2831022 m!3260625))

(declare-fun m!3260627 () Bool)

(assert (=> b!2831018 m!3260627))

(declare-fun m!3260629 () Bool)

(assert (=> b!2831014 m!3260629))

(declare-fun m!3260631 () Bool)

(assert (=> b!2831014 m!3260631))

(declare-fun m!3260633 () Bool)

(assert (=> b!2831010 m!3260633))

(declare-fun m!3260635 () Bool)

(assert (=> b!2831021 m!3260635))

(declare-fun m!3260637 () Bool)

(assert (=> b!2831015 m!3260637))

(declare-fun m!3260639 () Bool)

(assert (=> b!2831015 m!3260639))

(declare-fun m!3260641 () Bool)

(assert (=> b!2831020 m!3260641))

(declare-fun m!3260643 () Bool)

(assert (=> b!2831017 m!3260643))

(declare-fun m!3260645 () Bool)

(assert (=> b!2831016 m!3260645))

(check-sat b_and!207003 (not b_next!82049) (not b!2831021) (not b!2831019) (not b!2831016) b_and!207005 (not b!2831018) (not b_next!82045) (not b!2831017) b_and!207007 (not b!2831020) (not b!2831022) b_and!207009 (not b_next!82047) (not b!2831014) (not b!2831010) (not b_next!82051) (not b!2831015))
(check-sat b_and!207003 (not b_next!82049) b_and!207007 b_and!207005 (not b_next!82045) b_and!207009 (not b_next!82047) (not b_next!82051))
