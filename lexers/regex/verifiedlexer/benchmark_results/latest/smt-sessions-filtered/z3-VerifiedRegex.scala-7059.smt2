; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!374360 () Bool)

(assert start!374360)

(declare-fun b!3977671 () Bool)

(declare-fun b_free!110369 () Bool)

(declare-fun b_next!111073 () Bool)

(assert (=> b!3977671 (= b_free!110369 (not b_next!111073))))

(declare-fun tp!1212809 () Bool)

(declare-fun b_and!305759 () Bool)

(assert (=> b!3977671 (= tp!1212809 b_and!305759)))

(declare-fun b_free!110371 () Bool)

(declare-fun b_next!111075 () Bool)

(assert (=> b!3977671 (= b_free!110371 (not b_next!111075))))

(declare-fun tp!1212810 () Bool)

(declare-fun b_and!305761 () Bool)

(assert (=> b!3977671 (= tp!1212810 b_and!305761)))

(declare-fun b!3977667 () Bool)

(declare-fun b_free!110373 () Bool)

(declare-fun b_next!111077 () Bool)

(assert (=> b!3977667 (= b_free!110373 (not b_next!111077))))

(declare-fun tp!1212806 () Bool)

(declare-fun b_and!305763 () Bool)

(assert (=> b!3977667 (= tp!1212806 b_and!305763)))

(declare-fun b_free!110375 () Bool)

(declare-fun b_next!111079 () Bool)

(assert (=> b!3977667 (= b_free!110375 (not b_next!111079))))

(declare-fun tp!1212812 () Bool)

(declare-fun b_and!305765 () Bool)

(assert (=> b!3977667 (= tp!1212812 b_and!305765)))

(declare-fun b!3977644 () Bool)

(declare-fun e!2464731 () Bool)

(declare-fun tp_is_empty!20193 () Bool)

(declare-fun tp!1212811 () Bool)

(assert (=> b!3977644 (= e!2464731 (and tp_is_empty!20193 tp!1212811))))

(declare-fun b!3977645 () Bool)

(declare-fun e!2464741 () Bool)

(assert (=> b!3977645 (= e!2464741 true)))

(declare-fun lt!1395641 () Bool)

(declare-datatypes ((C!23408 0))(
  ( (C!23409 (val!13798 Int)) )
))
(declare-datatypes ((List!42638 0))(
  ( (Nil!42514) (Cons!42514 (h!47934 C!23408) (t!331149 List!42638)) )
))
(declare-fun lt!1395654 () List!42638)

(declare-fun lt!1395634 () List!42638)

(declare-fun isPrefix!3793 (List!42638 List!42638) Bool)

(assert (=> b!3977645 (= lt!1395641 (isPrefix!3793 lt!1395654 lt!1395634))))

(declare-fun b!3977646 () Bool)

(declare-fun e!2464735 () Bool)

(declare-fun tp!1212803 () Bool)

(assert (=> b!3977646 (= e!2464735 (and tp_is_empty!20193 tp!1212803))))

(declare-fun res!1611302 () Bool)

(declare-fun e!2464752 () Bool)

(assert (=> start!374360 (=> (not res!1611302) (not e!2464752))))

(declare-datatypes ((LexerInterface!6295 0))(
  ( (LexerInterfaceExt!6292 (__x!26089 Int)) (Lexer!6293) )
))
(declare-fun thiss!21717 () LexerInterface!6295)

(get-info :version)

(assert (=> start!374360 (= res!1611302 ((_ is Lexer!6293) thiss!21717))))

(assert (=> start!374360 e!2464752))

(declare-fun e!2464758 () Bool)

(assert (=> start!374360 e!2464758))

(declare-datatypes ((IArray!25839 0))(
  ( (IArray!25840 (innerList!12977 List!42638)) )
))
(declare-datatypes ((Conc!12917 0))(
  ( (Node!12917 (left!32168 Conc!12917) (right!32498 Conc!12917) (csize!26064 Int) (cheight!13128 Int)) (Leaf!19977 (xs!16223 IArray!25839) (csize!26065 Int)) (Empty!12917) )
))
(declare-datatypes ((BalanceConc!25428 0))(
  ( (BalanceConc!25429 (c!689360 Conc!12917)) )
))
(declare-datatypes ((List!42639 0))(
  ( (Nil!42515) (Cons!42515 (h!47935 (_ BitVec 16)) (t!331150 List!42639)) )
))
(declare-datatypes ((TokenValue!6936 0))(
  ( (FloatLiteralValue!13872 (text!48997 List!42639)) (TokenValueExt!6935 (__x!26090 Int)) (Broken!34680 (value!211729 List!42639)) (Object!7059) (End!6936) (Def!6936) (Underscore!6936) (Match!6936) (Else!6936) (Error!6936) (Case!6936) (If!6936) (Extends!6936) (Abstract!6936) (Class!6936) (Val!6936) (DelimiterValue!13872 (del!6996 List!42639)) (KeywordValue!6942 (value!211730 List!42639)) (CommentValue!13872 (value!211731 List!42639)) (WhitespaceValue!13872 (value!211732 List!42639)) (IndentationValue!6936 (value!211733 List!42639)) (String!48397) (Int32!6936) (Broken!34681 (value!211734 List!42639)) (Boolean!6937) (Unit!61164) (OperatorValue!6939 (op!6996 List!42639)) (IdentifierValue!13872 (value!211735 List!42639)) (IdentifierValue!13873 (value!211736 List!42639)) (WhitespaceValue!13873 (value!211737 List!42639)) (True!13872) (False!13872) (Broken!34682 (value!211738 List!42639)) (Broken!34683 (value!211739 List!42639)) (True!13873) (RightBrace!6936) (RightBracket!6936) (Colon!6936) (Null!6936) (Comma!6936) (LeftBracket!6936) (False!13873) (LeftBrace!6936) (ImaginaryLiteralValue!6936 (text!48998 List!42639)) (StringLiteralValue!20808 (value!211740 List!42639)) (EOFValue!6936 (value!211741 List!42639)) (IdentValue!6936 (value!211742 List!42639)) (DelimiterValue!13873 (value!211743 List!42639)) (DedentValue!6936 (value!211744 List!42639)) (NewLineValue!6936 (value!211745 List!42639)) (IntegerValue!20808 (value!211746 (_ BitVec 32)) (text!48999 List!42639)) (IntegerValue!20809 (value!211747 Int) (text!49000 List!42639)) (Times!6936) (Or!6936) (Equal!6936) (Minus!6936) (Broken!34684 (value!211748 List!42639)) (And!6936) (Div!6936) (LessEqual!6936) (Mod!6936) (Concat!18547) (Not!6936) (Plus!6936) (SpaceValue!6936 (value!211749 List!42639)) (IntegerValue!20810 (value!211750 Int) (text!49001 List!42639)) (StringLiteralValue!20809 (text!49002 List!42639)) (FloatLiteralValue!13873 (text!49003 List!42639)) (BytesLiteralValue!6936 (value!211751 List!42639)) (CommentValue!13873 (value!211752 List!42639)) (StringLiteralValue!20810 (value!211753 List!42639)) (ErrorTokenValue!6936 (msg!6997 List!42639)) )
))
(declare-datatypes ((Regex!11611 0))(
  ( (ElementMatch!11611 (c!689361 C!23408)) (Concat!18548 (regOne!23734 Regex!11611) (regTwo!23734 Regex!11611)) (EmptyExpr!11611) (Star!11611 (reg!11940 Regex!11611)) (EmptyLang!11611) (Union!11611 (regOne!23735 Regex!11611) (regTwo!23735 Regex!11611)) )
))
(declare-datatypes ((String!48398 0))(
  ( (String!48399 (value!211754 String)) )
))
(declare-datatypes ((TokenValueInjection!13300 0))(
  ( (TokenValueInjection!13301 (toValue!9194 Int) (toChars!9053 Int)) )
))
(declare-datatypes ((Rule!13212 0))(
  ( (Rule!13213 (regex!6706 Regex!11611) (tag!7566 String!48398) (isSeparator!6706 Bool) (transformation!6706 TokenValueInjection!13300)) )
))
(declare-datatypes ((Token!12550 0))(
  ( (Token!12551 (value!211755 TokenValue!6936) (rule!9706 Rule!13212) (size!31804 Int) (originalCharacters!7306 List!42638)) )
))
(declare-fun token!484 () Token!12550)

(declare-fun e!2464740 () Bool)

(declare-fun inv!56798 (Token!12550) Bool)

(assert (=> start!374360 (and (inv!56798 token!484) e!2464740)))

(assert (=> start!374360 e!2464735))

(declare-fun e!2464733 () Bool)

(assert (=> start!374360 e!2464733))

(declare-fun e!2464754 () Bool)

(assert (=> start!374360 e!2464754))

(assert (=> start!374360 true))

(declare-fun e!2464749 () Bool)

(assert (=> start!374360 e!2464749))

(assert (=> start!374360 e!2464731))

(declare-fun b!3977647 () Bool)

(declare-fun res!1611310 () Bool)

(assert (=> b!3977647 (=> (not res!1611310) (not e!2464752))))

(declare-datatypes ((List!42640 0))(
  ( (Nil!42516) (Cons!42516 (h!47936 Rule!13212) (t!331151 List!42640)) )
))
(declare-fun rules!2999 () List!42640)

(declare-fun rulesInvariant!5638 (LexerInterface!6295 List!42640) Bool)

(assert (=> b!3977647 (= res!1611310 (rulesInvariant!5638 thiss!21717 rules!2999))))

(declare-fun b!3977648 () Bool)

(declare-fun e!2464757 () Bool)

(declare-fun e!2464737 () Bool)

(assert (=> b!3977648 (= e!2464757 e!2464737)))

(declare-fun res!1611308 () Bool)

(assert (=> b!3977648 (=> res!1611308 e!2464737)))

(declare-fun lt!1395626 () List!42638)

(declare-fun matchR!5588 (Regex!11611 List!42638) Bool)

(assert (=> b!3977648 (= res!1611308 (not (matchR!5588 (regex!6706 (rule!9706 token!484)) lt!1395626)))))

(assert (=> b!3977648 (isPrefix!3793 lt!1395626 lt!1395634)))

(declare-fun prefix!494 () List!42638)

(declare-fun newSuffix!27 () List!42638)

(declare-datatypes ((Unit!61165 0))(
  ( (Unit!61166) )
))
(declare-fun lt!1395632 () Unit!61165)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!626 (List!42638 List!42638 List!42638) Unit!61165)

(assert (=> b!3977648 (= lt!1395632 (lemmaPrefixStaysPrefixWhenAddingToSuffix!626 lt!1395626 prefix!494 newSuffix!27))))

(declare-fun suffix!1299 () List!42638)

(declare-fun lt!1395625 () Unit!61165)

(assert (=> b!3977648 (= lt!1395625 (lemmaPrefixStaysPrefixWhenAddingToSuffix!626 lt!1395626 prefix!494 suffix!1299))))

(declare-fun b!3977649 () Bool)

(declare-fun tp!1212804 () Bool)

(assert (=> b!3977649 (= e!2464733 (and tp_is_empty!20193 tp!1212804))))

(declare-fun e!2464730 () Bool)

(declare-fun tp!1212807 () Bool)

(declare-fun e!2464745 () Bool)

(declare-fun b!3977650 () Bool)

(declare-fun inv!56795 (String!48398) Bool)

(declare-fun inv!56799 (TokenValueInjection!13300) Bool)

(assert (=> b!3977650 (= e!2464730 (and tp!1212807 (inv!56795 (tag!7566 (rule!9706 token!484))) (inv!56799 (transformation!6706 (rule!9706 token!484))) e!2464745))))

(declare-fun b!3977651 () Bool)

(declare-fun e!2464748 () Bool)

(declare-fun e!2464742 () Bool)

(assert (=> b!3977651 (= e!2464748 e!2464742)))

(declare-fun res!1611313 () Bool)

(assert (=> b!3977651 (=> res!1611313 e!2464742)))

(declare-fun lt!1395660 () List!42638)

(assert (=> b!3977651 (= res!1611313 (not (isPrefix!3793 lt!1395626 lt!1395660)))))

(assert (=> b!3977651 (isPrefix!3793 prefix!494 lt!1395660)))

(declare-fun lt!1395636 () Unit!61165)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2636 (List!42638 List!42638) Unit!61165)

(assert (=> b!3977651 (= lt!1395636 (lemmaConcatTwoListThenFirstIsPrefix!2636 prefix!494 suffix!1299))))

(declare-fun lt!1395669 () List!42638)

(assert (=> b!3977651 (isPrefix!3793 lt!1395626 lt!1395669)))

(declare-fun lt!1395631 () Unit!61165)

(declare-fun suffixResult!105 () List!42638)

(assert (=> b!3977651 (= lt!1395631 (lemmaConcatTwoListThenFirstIsPrefix!2636 lt!1395626 suffixResult!105))))

(declare-fun b!3977652 () Bool)

(declare-fun e!2464747 () Bool)

(declare-fun e!2464732 () Bool)

(assert (=> b!3977652 (= e!2464747 e!2464732)))

(declare-fun res!1611306 () Bool)

(assert (=> b!3977652 (=> res!1611306 e!2464732)))

(declare-fun lt!1395643 () List!42638)

(declare-fun lt!1395627 () List!42638)

(assert (=> b!3977652 (= res!1611306 (or (not (= lt!1395660 lt!1395627)) (not (= lt!1395660 lt!1395643))))))

(assert (=> b!3977652 (= lt!1395627 lt!1395643)))

(declare-fun lt!1395624 () List!42638)

(declare-fun ++!11108 (List!42638 List!42638) List!42638)

(assert (=> b!3977652 (= lt!1395643 (++!11108 lt!1395626 lt!1395624))))

(declare-fun lt!1395650 () List!42638)

(assert (=> b!3977652 (= lt!1395627 (++!11108 lt!1395650 suffix!1299))))

(declare-fun lt!1395664 () List!42638)

(assert (=> b!3977652 (= lt!1395624 (++!11108 lt!1395664 suffix!1299))))

(declare-fun lt!1395644 () Unit!61165)

(declare-fun lemmaConcatAssociativity!2428 (List!42638 List!42638 List!42638) Unit!61165)

(assert (=> b!3977652 (= lt!1395644 (lemmaConcatAssociativity!2428 lt!1395626 lt!1395664 suffix!1299))))

(declare-fun e!2464750 () Bool)

(declare-fun tp!1212813 () Bool)

(declare-fun e!2464744 () Bool)

(declare-fun b!3977653 () Bool)

(assert (=> b!3977653 (= e!2464744 (and tp!1212813 (inv!56795 (tag!7566 (h!47936 rules!2999))) (inv!56799 (transformation!6706 (h!47936 rules!2999))) e!2464750))))

(declare-fun b!3977654 () Bool)

(declare-fun e!2464753 () Bool)

(declare-fun e!2464739 () Bool)

(assert (=> b!3977654 (= e!2464753 e!2464739)))

(declare-fun res!1611304 () Bool)

(assert (=> b!3977654 (=> (not res!1611304) (not e!2464739))))

(declare-datatypes ((tuple2!41748 0))(
  ( (tuple2!41749 (_1!24008 Token!12550) (_2!24008 List!42638)) )
))
(declare-datatypes ((Option!9120 0))(
  ( (None!9119) (Some!9119 (v!39467 tuple2!41748)) )
))
(declare-fun lt!1395628 () Option!9120)

(declare-fun maxPrefix!3593 (LexerInterface!6295 List!42640 List!42638) Option!9120)

(assert (=> b!3977654 (= res!1611304 (= (maxPrefix!3593 thiss!21717 rules!2999 lt!1395660) lt!1395628))))

(declare-fun lt!1395668 () tuple2!41748)

(assert (=> b!3977654 (= lt!1395628 (Some!9119 lt!1395668))))

(assert (=> b!3977654 (= lt!1395668 (tuple2!41749 token!484 suffixResult!105))))

(assert (=> b!3977654 (= lt!1395660 (++!11108 prefix!494 suffix!1299))))

(declare-fun b!3977655 () Bool)

(declare-fun res!1611311 () Bool)

(declare-fun e!2464729 () Bool)

(assert (=> b!3977655 (=> (not res!1611311) (not e!2464729))))

(declare-fun lt!1395648 () TokenValue!6936)

(assert (=> b!3977655 (= res!1611311 (= (value!211755 token!484) lt!1395648))))

(declare-fun b!3977656 () Bool)

(declare-fun res!1611300 () Bool)

(assert (=> b!3977656 (=> (not res!1611300) (not e!2464752))))

(declare-fun size!31805 (List!42638) Int)

(assert (=> b!3977656 (= res!1611300 (>= (size!31805 suffix!1299) (size!31805 newSuffix!27)))))

(declare-fun b!3977657 () Bool)

(declare-fun e!2464738 () Bool)

(declare-fun e!2464756 () Bool)

(assert (=> b!3977657 (= e!2464738 e!2464756)))

(declare-fun res!1611294 () Bool)

(assert (=> b!3977657 (=> res!1611294 e!2464756)))

(declare-fun lt!1395629 () List!42638)

(assert (=> b!3977657 (= res!1611294 (not (= lt!1395629 suffix!1299)))))

(declare-fun lt!1395646 () List!42638)

(assert (=> b!3977657 (= lt!1395629 (++!11108 newSuffix!27 lt!1395646))))

(declare-fun getSuffix!2224 (List!42638 List!42638) List!42638)

(assert (=> b!3977657 (= lt!1395646 (getSuffix!2224 suffix!1299 newSuffix!27))))

(declare-fun b!3977658 () Bool)

(declare-fun e!2464736 () Bool)

(assert (=> b!3977658 (= e!2464737 e!2464736)))

(declare-fun res!1611293 () Bool)

(assert (=> b!3977658 (=> res!1611293 e!2464736)))

(declare-fun lt!1395662 () List!42638)

(assert (=> b!3977658 (= res!1611293 (not (= lt!1395662 lt!1395660)))))

(declare-fun lt!1395621 () List!42638)

(assert (=> b!3977658 (= lt!1395662 (++!11108 lt!1395626 lt!1395621))))

(assert (=> b!3977658 (= lt!1395621 (getSuffix!2224 lt!1395660 lt!1395626))))

(assert (=> b!3977658 e!2464729))

(declare-fun res!1611305 () Bool)

(assert (=> b!3977658 (=> (not res!1611305) (not e!2464729))))

(assert (=> b!3977658 (= res!1611305 (isPrefix!3793 lt!1395660 lt!1395660))))

(declare-fun lt!1395659 () Unit!61165)

(declare-fun lemmaIsPrefixRefl!2385 (List!42638 List!42638) Unit!61165)

(assert (=> b!3977658 (= lt!1395659 (lemmaIsPrefixRefl!2385 lt!1395660 lt!1395660))))

(declare-fun b!3977659 () Bool)

(declare-fun tp!1212808 () Bool)

(assert (=> b!3977659 (= e!2464758 (and tp_is_empty!20193 tp!1212808))))

(declare-fun b!3977660 () Bool)

(declare-fun e!2464751 () Bool)

(assert (=> b!3977660 (= e!2464752 e!2464751)))

(declare-fun res!1611314 () Bool)

(assert (=> b!3977660 (=> (not res!1611314) (not e!2464751))))

(declare-fun lt!1395647 () Int)

(declare-fun lt!1395640 () Int)

(assert (=> b!3977660 (= res!1611314 (>= lt!1395647 lt!1395640))))

(assert (=> b!3977660 (= lt!1395640 (size!31805 lt!1395626))))

(assert (=> b!3977660 (= lt!1395647 (size!31805 prefix!494))))

(declare-fun list!15778 (BalanceConc!25428) List!42638)

(declare-fun charsOf!4522 (Token!12550) BalanceConc!25428)

(assert (=> b!3977660 (= lt!1395626 (list!15778 (charsOf!4522 token!484)))))

(declare-fun b!3977661 () Bool)

(assert (=> b!3977661 (= e!2464739 (not e!2464748))))

(declare-fun res!1611296 () Bool)

(assert (=> b!3977661 (=> res!1611296 e!2464748)))

(assert (=> b!3977661 (= res!1611296 (not (= lt!1395669 lt!1395660)))))

(assert (=> b!3977661 (= lt!1395669 (++!11108 lt!1395626 suffixResult!105))))

(declare-fun lt!1395645 () Unit!61165)

(declare-fun lemmaInv!921 (TokenValueInjection!13300) Unit!61165)

(assert (=> b!3977661 (= lt!1395645 (lemmaInv!921 (transformation!6706 (rule!9706 token!484))))))

(declare-fun ruleValid!2638 (LexerInterface!6295 Rule!13212) Bool)

(assert (=> b!3977661 (ruleValid!2638 thiss!21717 (rule!9706 token!484))))

(declare-fun lt!1395637 () Unit!61165)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1712 (LexerInterface!6295 Rule!13212 List!42640) Unit!61165)

(assert (=> b!3977661 (= lt!1395637 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1712 thiss!21717 (rule!9706 token!484) rules!2999))))

(declare-fun b!3977662 () Bool)

(assert (=> b!3977662 (= e!2464732 e!2464757)))

(declare-fun res!1611303 () Bool)

(assert (=> b!3977662 (=> res!1611303 e!2464757)))

(declare-fun lt!1395639 () Option!9120)

(assert (=> b!3977662 (= res!1611303 (not (= lt!1395639 lt!1395628)))))

(declare-fun lt!1395667 () Token!12550)

(assert (=> b!3977662 (= lt!1395639 (Some!9119 (tuple2!41749 lt!1395667 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2627 (LexerInterface!6295 Rule!13212 List!42638) Option!9120)

(assert (=> b!3977662 (= lt!1395639 (maxPrefixOneRule!2627 thiss!21717 (rule!9706 token!484) lt!1395660))))

(assert (=> b!3977662 (= lt!1395667 (Token!12551 lt!1395648 (rule!9706 token!484) lt!1395640 lt!1395626))))

(declare-fun apply!9917 (TokenValueInjection!13300 BalanceConc!25428) TokenValue!6936)

(declare-fun seqFromList!4945 (List!42638) BalanceConc!25428)

(assert (=> b!3977662 (= lt!1395648 (apply!9917 (transformation!6706 (rule!9706 token!484)) (seqFromList!4945 lt!1395626)))))

(declare-fun lt!1395642 () Unit!61165)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1449 (LexerInterface!6295 List!42640 List!42638 List!42638 List!42638 Rule!13212) Unit!61165)

(assert (=> b!3977662 (= lt!1395642 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1449 thiss!21717 rules!2999 lt!1395626 lt!1395660 suffixResult!105 (rule!9706 token!484)))))

(assert (=> b!3977662 (= lt!1395624 suffixResult!105)))

(declare-fun lt!1395653 () Unit!61165)

(declare-fun lemmaSamePrefixThenSameSuffix!1980 (List!42638 List!42638 List!42638 List!42638 List!42638) Unit!61165)

(assert (=> b!3977662 (= lt!1395653 (lemmaSamePrefixThenSameSuffix!1980 lt!1395626 lt!1395624 lt!1395626 suffixResult!105 lt!1395660))))

(assert (=> b!3977662 (isPrefix!3793 lt!1395626 lt!1395643)))

(declare-fun lt!1395652 () Unit!61165)

(assert (=> b!3977662 (= lt!1395652 (lemmaConcatTwoListThenFirstIsPrefix!2636 lt!1395626 lt!1395624))))

(declare-fun b!3977663 () Bool)

(declare-fun res!1611301 () Bool)

(assert (=> b!3977663 (=> (not res!1611301) (not e!2464752))))

(assert (=> b!3977663 (= res!1611301 (isPrefix!3793 newSuffix!27 suffix!1299))))

(declare-fun b!3977664 () Bool)

(declare-fun e!2464755 () Bool)

(assert (=> b!3977664 (= e!2464755 e!2464738)))

(declare-fun res!1611297 () Bool)

(assert (=> b!3977664 (=> res!1611297 e!2464738)))

(declare-fun lt!1395661 () Option!9120)

(declare-fun lt!1395651 () Option!9120)

(assert (=> b!3977664 (= res!1611297 (not (= lt!1395661 (Some!9119 (v!39467 lt!1395651)))))))

(declare-fun newSuffixResult!27 () List!42638)

(assert (=> b!3977664 (isPrefix!3793 lt!1395654 (++!11108 lt!1395654 newSuffixResult!27))))

(declare-fun lt!1395658 () Unit!61165)

(assert (=> b!3977664 (= lt!1395658 (lemmaConcatTwoListThenFirstIsPrefix!2636 lt!1395654 newSuffixResult!27))))

(assert (=> b!3977664 (isPrefix!3793 lt!1395654 (++!11108 lt!1395654 (_2!24008 (v!39467 lt!1395651))))))

(declare-fun lt!1395635 () Unit!61165)

(assert (=> b!3977664 (= lt!1395635 (lemmaConcatTwoListThenFirstIsPrefix!2636 lt!1395654 (_2!24008 (v!39467 lt!1395651))))))

(declare-fun lt!1395657 () TokenValue!6936)

(declare-fun lt!1395638 () Int)

(assert (=> b!3977664 (= lt!1395661 (Some!9119 (tuple2!41749 (Token!12551 lt!1395657 (rule!9706 (_1!24008 (v!39467 lt!1395651))) lt!1395638 lt!1395654) (_2!24008 (v!39467 lt!1395651)))))))

(assert (=> b!3977664 (= lt!1395661 (maxPrefixOneRule!2627 thiss!21717 (rule!9706 (_1!24008 (v!39467 lt!1395651))) lt!1395634))))

(assert (=> b!3977664 (= lt!1395638 (size!31805 lt!1395654))))

(assert (=> b!3977664 (= lt!1395657 (apply!9917 (transformation!6706 (rule!9706 (_1!24008 (v!39467 lt!1395651)))) (seqFromList!4945 lt!1395654)))))

(declare-fun lt!1395630 () Unit!61165)

(assert (=> b!3977664 (= lt!1395630 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1449 thiss!21717 rules!2999 lt!1395654 lt!1395634 (_2!24008 (v!39467 lt!1395651)) (rule!9706 (_1!24008 (v!39467 lt!1395651)))))))

(assert (=> b!3977664 (= lt!1395654 (list!15778 (charsOf!4522 (_1!24008 (v!39467 lt!1395651)))))))

(declare-fun lt!1395622 () Unit!61165)

(assert (=> b!3977664 (= lt!1395622 (lemmaInv!921 (transformation!6706 (rule!9706 (_1!24008 (v!39467 lt!1395651))))))))

(assert (=> b!3977664 (ruleValid!2638 thiss!21717 (rule!9706 (_1!24008 (v!39467 lt!1395651))))))

(declare-fun lt!1395623 () Unit!61165)

(assert (=> b!3977664 (= lt!1395623 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1712 thiss!21717 (rule!9706 (_1!24008 (v!39467 lt!1395651))) rules!2999))))

(declare-fun lt!1395620 () Unit!61165)

(declare-fun lemmaCharactersSize!1301 (Token!12550) Unit!61165)

(assert (=> b!3977664 (= lt!1395620 (lemmaCharactersSize!1301 token!484))))

(declare-fun lt!1395655 () Unit!61165)

(assert (=> b!3977664 (= lt!1395655 (lemmaCharactersSize!1301 (_1!24008 (v!39467 lt!1395651))))))

(declare-fun b!3977665 () Bool)

(assert (=> b!3977665 (= e!2464756 e!2464741)))

(declare-fun res!1611298 () Bool)

(assert (=> b!3977665 (=> res!1611298 e!2464741)))

(declare-fun lt!1395663 () List!42638)

(assert (=> b!3977665 (= res!1611298 (not (= lt!1395663 lt!1395660)))))

(assert (=> b!3977665 (= lt!1395663 (++!11108 prefix!494 lt!1395629))))

(assert (=> b!3977665 (= lt!1395663 (++!11108 lt!1395634 lt!1395646))))

(declare-fun lt!1395633 () Unit!61165)

(assert (=> b!3977665 (= lt!1395633 (lemmaConcatAssociativity!2428 prefix!494 newSuffix!27 lt!1395646))))

(declare-fun b!3977666 () Bool)

(declare-fun res!1611309 () Bool)

(assert (=> b!3977666 (=> (not res!1611309) (not e!2464752))))

(declare-fun isEmpty!25422 (List!42640) Bool)

(assert (=> b!3977666 (= res!1611309 (not (isEmpty!25422 rules!2999)))))

(assert (=> b!3977667 (= e!2464745 (and tp!1212806 tp!1212812))))

(declare-fun b!3977668 () Bool)

(assert (=> b!3977668 (= e!2464751 e!2464753)))

(declare-fun res!1611295 () Bool)

(assert (=> b!3977668 (=> (not res!1611295) (not e!2464753))))

(declare-fun lt!1395649 () List!42638)

(assert (=> b!3977668 (= res!1611295 (= lt!1395649 lt!1395634))))

(assert (=> b!3977668 (= lt!1395634 (++!11108 prefix!494 newSuffix!27))))

(assert (=> b!3977668 (= lt!1395649 (++!11108 lt!1395626 newSuffixResult!27))))

(declare-fun b!3977669 () Bool)

(assert (=> b!3977669 (= e!2464736 e!2464755)))

(declare-fun res!1611299 () Bool)

(assert (=> b!3977669 (=> res!1611299 e!2464755)))

(assert (=> b!3977669 (= res!1611299 (not ((_ is Some!9119) lt!1395651)))))

(assert (=> b!3977669 (= lt!1395651 (maxPrefix!3593 thiss!21717 rules!2999 lt!1395634))))

(assert (=> b!3977669 (and (= suffixResult!105 lt!1395621) (= lt!1395668 (tuple2!41749 lt!1395667 lt!1395621)))))

(declare-fun lt!1395665 () Unit!61165)

(assert (=> b!3977669 (= lt!1395665 (lemmaSamePrefixThenSameSuffix!1980 lt!1395626 suffixResult!105 lt!1395626 lt!1395621 lt!1395660))))

(assert (=> b!3977669 (isPrefix!3793 lt!1395626 lt!1395662)))

(declare-fun lt!1395666 () Unit!61165)

(assert (=> b!3977669 (= lt!1395666 (lemmaConcatTwoListThenFirstIsPrefix!2636 lt!1395626 lt!1395621))))

(declare-fun b!3977670 () Bool)

(declare-fun tp!1212805 () Bool)

(declare-fun inv!21 (TokenValue!6936) Bool)

(assert (=> b!3977670 (= e!2464740 (and (inv!21 (value!211755 token!484)) e!2464730 tp!1212805))))

(assert (=> b!3977671 (= e!2464750 (and tp!1212809 tp!1212810))))

(declare-fun b!3977672 () Bool)

(declare-fun tp!1212814 () Bool)

(assert (=> b!3977672 (= e!2464749 (and e!2464744 tp!1212814))))

(declare-fun b!3977673 () Bool)

(declare-fun res!1611312 () Bool)

(assert (=> b!3977673 (=> (not res!1611312) (not e!2464729))))

(assert (=> b!3977673 (= res!1611312 (= (size!31804 token!484) (size!31805 (originalCharacters!7306 token!484))))))

(declare-fun b!3977674 () Bool)

(assert (=> b!3977674 (= e!2464729 (and (= (size!31804 token!484) lt!1395640) (= (originalCharacters!7306 token!484) lt!1395626)))))

(declare-fun b!3977675 () Bool)

(declare-fun tp!1212802 () Bool)

(assert (=> b!3977675 (= e!2464754 (and tp_is_empty!20193 tp!1212802))))

(declare-fun b!3977676 () Bool)

(assert (=> b!3977676 (= e!2464742 e!2464747)))

(declare-fun res!1611307 () Bool)

(assert (=> b!3977676 (=> res!1611307 e!2464747)))

(assert (=> b!3977676 (= res!1611307 (not (= lt!1395650 prefix!494)))))

(assert (=> b!3977676 (= lt!1395650 (++!11108 lt!1395626 lt!1395664))))

(assert (=> b!3977676 (= lt!1395664 (getSuffix!2224 prefix!494 lt!1395626))))

(assert (=> b!3977676 (isPrefix!3793 lt!1395626 prefix!494)))

(declare-fun lt!1395656 () Unit!61165)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!371 (List!42638 List!42638 List!42638) Unit!61165)

(assert (=> b!3977676 (= lt!1395656 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!371 prefix!494 lt!1395626 lt!1395660))))

(assert (= (and start!374360 res!1611302) b!3977666))

(assert (= (and b!3977666 res!1611309) b!3977647))

(assert (= (and b!3977647 res!1611310) b!3977656))

(assert (= (and b!3977656 res!1611300) b!3977663))

(assert (= (and b!3977663 res!1611301) b!3977660))

(assert (= (and b!3977660 res!1611314) b!3977668))

(assert (= (and b!3977668 res!1611295) b!3977654))

(assert (= (and b!3977654 res!1611304) b!3977661))

(assert (= (and b!3977661 (not res!1611296)) b!3977651))

(assert (= (and b!3977651 (not res!1611313)) b!3977676))

(assert (= (and b!3977676 (not res!1611307)) b!3977652))

(assert (= (and b!3977652 (not res!1611306)) b!3977662))

(assert (= (and b!3977662 (not res!1611303)) b!3977648))

(assert (= (and b!3977648 (not res!1611308)) b!3977658))

(assert (= (and b!3977658 res!1611305) b!3977655))

(assert (= (and b!3977655 res!1611311) b!3977673))

(assert (= (and b!3977673 res!1611312) b!3977674))

(assert (= (and b!3977658 (not res!1611293)) b!3977669))

(assert (= (and b!3977669 (not res!1611299)) b!3977664))

(assert (= (and b!3977664 (not res!1611297)) b!3977657))

(assert (= (and b!3977657 (not res!1611294)) b!3977665))

(assert (= (and b!3977665 (not res!1611298)) b!3977645))

(assert (= (and start!374360 ((_ is Cons!42514) prefix!494)) b!3977659))

(assert (= b!3977650 b!3977667))

(assert (= b!3977670 b!3977650))

(assert (= start!374360 b!3977670))

(assert (= (and start!374360 ((_ is Cons!42514) suffixResult!105)) b!3977646))

(assert (= (and start!374360 ((_ is Cons!42514) suffix!1299)) b!3977649))

(assert (= (and start!374360 ((_ is Cons!42514) newSuffix!27)) b!3977675))

(assert (= b!3977653 b!3977671))

(assert (= b!3977672 b!3977653))

(assert (= (and start!374360 ((_ is Cons!42516) rules!2999)) b!3977672))

(assert (= (and start!374360 ((_ is Cons!42514) newSuffixResult!27)) b!3977644))

(declare-fun m!4549253 () Bool)

(assert (=> b!3977650 m!4549253))

(declare-fun m!4549255 () Bool)

(assert (=> b!3977650 m!4549255))

(declare-fun m!4549257 () Bool)

(assert (=> b!3977673 m!4549257))

(declare-fun m!4549259 () Bool)

(assert (=> b!3977669 m!4549259))

(declare-fun m!4549261 () Bool)

(assert (=> b!3977669 m!4549261))

(declare-fun m!4549263 () Bool)

(assert (=> b!3977669 m!4549263))

(declare-fun m!4549265 () Bool)

(assert (=> b!3977669 m!4549265))

(declare-fun m!4549267 () Bool)

(assert (=> b!3977665 m!4549267))

(declare-fun m!4549269 () Bool)

(assert (=> b!3977665 m!4549269))

(declare-fun m!4549271 () Bool)

(assert (=> b!3977665 m!4549271))

(declare-fun m!4549273 () Bool)

(assert (=> b!3977668 m!4549273))

(declare-fun m!4549275 () Bool)

(assert (=> b!3977668 m!4549275))

(declare-fun m!4549277 () Bool)

(assert (=> b!3977663 m!4549277))

(declare-fun m!4549279 () Bool)

(assert (=> b!3977651 m!4549279))

(declare-fun m!4549281 () Bool)

(assert (=> b!3977651 m!4549281))

(declare-fun m!4549283 () Bool)

(assert (=> b!3977651 m!4549283))

(declare-fun m!4549285 () Bool)

(assert (=> b!3977651 m!4549285))

(declare-fun m!4549287 () Bool)

(assert (=> b!3977651 m!4549287))

(declare-fun m!4549289 () Bool)

(assert (=> b!3977648 m!4549289))

(declare-fun m!4549291 () Bool)

(assert (=> b!3977648 m!4549291))

(declare-fun m!4549293 () Bool)

(assert (=> b!3977648 m!4549293))

(declare-fun m!4549295 () Bool)

(assert (=> b!3977648 m!4549295))

(declare-fun m!4549297 () Bool)

(assert (=> b!3977653 m!4549297))

(declare-fun m!4549299 () Bool)

(assert (=> b!3977653 m!4549299))

(declare-fun m!4549301 () Bool)

(assert (=> b!3977658 m!4549301))

(declare-fun m!4549303 () Bool)

(assert (=> b!3977658 m!4549303))

(declare-fun m!4549305 () Bool)

(assert (=> b!3977658 m!4549305))

(declare-fun m!4549307 () Bool)

(assert (=> b!3977658 m!4549307))

(declare-fun m!4549309 () Bool)

(assert (=> b!3977657 m!4549309))

(declare-fun m!4549311 () Bool)

(assert (=> b!3977657 m!4549311))

(declare-fun m!4549313 () Bool)

(assert (=> b!3977647 m!4549313))

(declare-fun m!4549315 () Bool)

(assert (=> start!374360 m!4549315))

(declare-fun m!4549317 () Bool)

(assert (=> b!3977662 m!4549317))

(declare-fun m!4549319 () Bool)

(assert (=> b!3977662 m!4549319))

(declare-fun m!4549321 () Bool)

(assert (=> b!3977662 m!4549321))

(declare-fun m!4549323 () Bool)

(assert (=> b!3977662 m!4549323))

(declare-fun m!4549325 () Bool)

(assert (=> b!3977662 m!4549325))

(declare-fun m!4549327 () Bool)

(assert (=> b!3977662 m!4549327))

(assert (=> b!3977662 m!4549317))

(declare-fun m!4549329 () Bool)

(assert (=> b!3977662 m!4549329))

(declare-fun m!4549331 () Bool)

(assert (=> b!3977660 m!4549331))

(declare-fun m!4549333 () Bool)

(assert (=> b!3977660 m!4549333))

(declare-fun m!4549335 () Bool)

(assert (=> b!3977660 m!4549335))

(assert (=> b!3977660 m!4549335))

(declare-fun m!4549337 () Bool)

(assert (=> b!3977660 m!4549337))

(declare-fun m!4549339 () Bool)

(assert (=> b!3977645 m!4549339))

(declare-fun m!4549341 () Bool)

(assert (=> b!3977652 m!4549341))

(declare-fun m!4549343 () Bool)

(assert (=> b!3977652 m!4549343))

(declare-fun m!4549345 () Bool)

(assert (=> b!3977652 m!4549345))

(declare-fun m!4549347 () Bool)

(assert (=> b!3977652 m!4549347))

(declare-fun m!4549349 () Bool)

(assert (=> b!3977661 m!4549349))

(declare-fun m!4549351 () Bool)

(assert (=> b!3977661 m!4549351))

(declare-fun m!4549353 () Bool)

(assert (=> b!3977661 m!4549353))

(declare-fun m!4549355 () Bool)

(assert (=> b!3977661 m!4549355))

(declare-fun m!4549357 () Bool)

(assert (=> b!3977676 m!4549357))

(declare-fun m!4549359 () Bool)

(assert (=> b!3977676 m!4549359))

(declare-fun m!4549361 () Bool)

(assert (=> b!3977676 m!4549361))

(declare-fun m!4549363 () Bool)

(assert (=> b!3977676 m!4549363))

(declare-fun m!4549365 () Bool)

(assert (=> b!3977666 m!4549365))

(declare-fun m!4549367 () Bool)

(assert (=> b!3977656 m!4549367))

(declare-fun m!4549369 () Bool)

(assert (=> b!3977656 m!4549369))

(declare-fun m!4549371 () Bool)

(assert (=> b!3977664 m!4549371))

(declare-fun m!4549373 () Bool)

(assert (=> b!3977664 m!4549373))

(declare-fun m!4549375 () Bool)

(assert (=> b!3977664 m!4549375))

(declare-fun m!4549377 () Bool)

(assert (=> b!3977664 m!4549377))

(declare-fun m!4549379 () Bool)

(assert (=> b!3977664 m!4549379))

(declare-fun m!4549381 () Bool)

(assert (=> b!3977664 m!4549381))

(assert (=> b!3977664 m!4549381))

(declare-fun m!4549383 () Bool)

(assert (=> b!3977664 m!4549383))

(declare-fun m!4549385 () Bool)

(assert (=> b!3977664 m!4549385))

(assert (=> b!3977664 m!4549377))

(declare-fun m!4549387 () Bool)

(assert (=> b!3977664 m!4549387))

(declare-fun m!4549389 () Bool)

(assert (=> b!3977664 m!4549389))

(declare-fun m!4549391 () Bool)

(assert (=> b!3977664 m!4549391))

(declare-fun m!4549393 () Bool)

(assert (=> b!3977664 m!4549393))

(declare-fun m!4549395 () Bool)

(assert (=> b!3977664 m!4549395))

(declare-fun m!4549397 () Bool)

(assert (=> b!3977664 m!4549397))

(declare-fun m!4549399 () Bool)

(assert (=> b!3977664 m!4549399))

(declare-fun m!4549401 () Bool)

(assert (=> b!3977664 m!4549401))

(assert (=> b!3977664 m!4549389))

(declare-fun m!4549403 () Bool)

(assert (=> b!3977664 m!4549403))

(assert (=> b!3977664 m!4549395))

(declare-fun m!4549405 () Bool)

(assert (=> b!3977664 m!4549405))

(declare-fun m!4549407 () Bool)

(assert (=> b!3977670 m!4549407))

(declare-fun m!4549409 () Bool)

(assert (=> b!3977654 m!4549409))

(declare-fun m!4549411 () Bool)

(assert (=> b!3977654 m!4549411))

(check-sat (not b!3977659) (not b!3977664) (not b!3977670) (not b!3977666) (not b!3977662) (not b!3977651) (not b!3977665) (not b!3977650) (not b!3977656) (not b!3977675) b_and!305759 (not b!3977673) (not b_next!111073) (not b!3977644) (not b!3977668) (not b!3977653) (not b!3977654) (not b!3977669) (not b!3977649) (not b!3977646) b_and!305765 (not b!3977663) (not b!3977661) (not b_next!111075) (not b!3977652) (not b!3977658) (not b_next!111079) (not b!3977672) (not b!3977647) b_and!305763 (not b!3977645) (not b!3977648) tp_is_empty!20193 (not b!3977676) b_and!305761 (not start!374360) (not b!3977657) (not b!3977660) (not b_next!111077))
(check-sat b_and!305765 (not b_next!111075) (not b_next!111079) b_and!305763 b_and!305759 (not b_next!111073) b_and!305761 (not b_next!111077))
