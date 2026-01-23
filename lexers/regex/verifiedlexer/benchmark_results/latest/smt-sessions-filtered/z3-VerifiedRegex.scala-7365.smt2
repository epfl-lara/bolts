; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!391510 () Bool)

(assert start!391510)

(declare-fun b!4126225 () Bool)

(declare-fun b_free!116859 () Bool)

(declare-fun b_next!117563 () Bool)

(assert (=> b!4126225 (= b_free!116859 (not b_next!117563))))

(declare-fun tp!1257406 () Bool)

(declare-fun b_and!319457 () Bool)

(assert (=> b!4126225 (= tp!1257406 b_and!319457)))

(declare-fun b_free!116861 () Bool)

(declare-fun b_next!117565 () Bool)

(assert (=> b!4126225 (= b_free!116861 (not b_next!117565))))

(declare-fun tp!1257409 () Bool)

(declare-fun b_and!319459 () Bool)

(assert (=> b!4126225 (= tp!1257409 b_and!319459)))

(declare-fun b!4126222 () Bool)

(declare-fun b_free!116863 () Bool)

(declare-fun b_next!117567 () Bool)

(assert (=> b!4126222 (= b_free!116863 (not b_next!117567))))

(declare-fun tp!1257401 () Bool)

(declare-fun b_and!319461 () Bool)

(assert (=> b!4126222 (= tp!1257401 b_and!319461)))

(declare-fun b_free!116865 () Bool)

(declare-fun b_next!117569 () Bool)

(assert (=> b!4126222 (= b_free!116865 (not b_next!117569))))

(declare-fun tp!1257405 () Bool)

(declare-fun b_and!319463 () Bool)

(assert (=> b!4126222 (= tp!1257405 b_and!319463)))

(declare-fun b!4126230 () Bool)

(declare-fun b_free!116867 () Bool)

(declare-fun b_next!117571 () Bool)

(assert (=> b!4126230 (= b_free!116867 (not b_next!117571))))

(declare-fun tp!1257407 () Bool)

(declare-fun b_and!319465 () Bool)

(assert (=> b!4126230 (= tp!1257407 b_and!319465)))

(declare-fun b_free!116869 () Bool)

(declare-fun b_next!117573 () Bool)

(assert (=> b!4126230 (= b_free!116869 (not b_next!117573))))

(declare-fun tp!1257410 () Bool)

(declare-fun b_and!319467 () Bool)

(assert (=> b!4126230 (= tp!1257410 b_and!319467)))

(declare-fun b!4126218 () Bool)

(declare-fun res!1686444 () Bool)

(declare-fun e!2560299 () Bool)

(assert (=> b!4126218 (=> (not res!1686444) (not e!2560299))))

(declare-datatypes ((List!44771 0))(
  ( (Nil!44647) (Cons!44647 (h!50067 (_ BitVec 16)) (t!341156 List!44771)) )
))
(declare-datatypes ((TokenValue!7532 0))(
  ( (FloatLiteralValue!15064 (text!53169 List!44771)) (TokenValueExt!7531 (__x!27281 Int)) (Broken!37660 (value!228635 List!44771)) (Object!7655) (End!7532) (Def!7532) (Underscore!7532) (Match!7532) (Else!7532) (Error!7532) (Case!7532) (If!7532) (Extends!7532) (Abstract!7532) (Class!7532) (Val!7532) (DelimiterValue!15064 (del!7592 List!44771)) (KeywordValue!7538 (value!228636 List!44771)) (CommentValue!15064 (value!228637 List!44771)) (WhitespaceValue!15064 (value!228638 List!44771)) (IndentationValue!7532 (value!228639 List!44771)) (String!51409) (Int32!7532) (Broken!37661 (value!228640 List!44771)) (Boolean!7533) (Unit!63982) (OperatorValue!7535 (op!7592 List!44771)) (IdentifierValue!15064 (value!228641 List!44771)) (IdentifierValue!15065 (value!228642 List!44771)) (WhitespaceValue!15065 (value!228643 List!44771)) (True!15064) (False!15064) (Broken!37662 (value!228644 List!44771)) (Broken!37663 (value!228645 List!44771)) (True!15065) (RightBrace!7532) (RightBracket!7532) (Colon!7532) (Null!7532) (Comma!7532) (LeftBracket!7532) (False!15065) (LeftBrace!7532) (ImaginaryLiteralValue!7532 (text!53170 List!44771)) (StringLiteralValue!22596 (value!228646 List!44771)) (EOFValue!7532 (value!228647 List!44771)) (IdentValue!7532 (value!228648 List!44771)) (DelimiterValue!15065 (value!228649 List!44771)) (DedentValue!7532 (value!228650 List!44771)) (NewLineValue!7532 (value!228651 List!44771)) (IntegerValue!22596 (value!228652 (_ BitVec 32)) (text!53171 List!44771)) (IntegerValue!22597 (value!228653 Int) (text!53172 List!44771)) (Times!7532) (Or!7532) (Equal!7532) (Minus!7532) (Broken!37664 (value!228654 List!44771)) (And!7532) (Div!7532) (LessEqual!7532) (Mod!7532) (Concat!19739) (Not!7532) (Plus!7532) (SpaceValue!7532 (value!228655 List!44771)) (IntegerValue!22598 (value!228656 Int) (text!53173 List!44771)) (StringLiteralValue!22597 (text!53174 List!44771)) (FloatLiteralValue!15065 (text!53175 List!44771)) (BytesLiteralValue!7532 (value!228657 List!44771)) (CommentValue!15065 (value!228658 List!44771)) (StringLiteralValue!22598 (value!228659 List!44771)) (ErrorTokenValue!7532 (msg!7593 List!44771)) )
))
(declare-datatypes ((C!24600 0))(
  ( (C!24601 (val!14410 Int)) )
))
(declare-datatypes ((List!44772 0))(
  ( (Nil!44648) (Cons!44648 (h!50068 C!24600) (t!341157 List!44772)) )
))
(declare-datatypes ((IArray!27031 0))(
  ( (IArray!27032 (innerList!13573 List!44772)) )
))
(declare-datatypes ((Conc!13513 0))(
  ( (Node!13513 (left!33438 Conc!13513) (right!33768 Conc!13513) (csize!27256 Int) (cheight!13724 Int)) (Leaf!20879 (xs!16819 IArray!27031) (csize!27257 Int)) (Empty!13513) )
))
(declare-datatypes ((BalanceConc!26620 0))(
  ( (BalanceConc!26621 (c!708216 Conc!13513)) )
))
(declare-datatypes ((String!51410 0))(
  ( (String!51411 (value!228660 String)) )
))
(declare-datatypes ((Regex!12207 0))(
  ( (ElementMatch!12207 (c!708217 C!24600)) (Concat!19740 (regOne!24926 Regex!12207) (regTwo!24926 Regex!12207)) (EmptyExpr!12207) (Star!12207 (reg!12536 Regex!12207)) (EmptyLang!12207) (Union!12207 (regOne!24927 Regex!12207) (regTwo!24927 Regex!12207)) )
))
(declare-datatypes ((TokenValueInjection!14492 0))(
  ( (TokenValueInjection!14493 (toValue!9958 Int) (toChars!9817 Int)) )
))
(declare-datatypes ((Rule!14404 0))(
  ( (Rule!14405 (regex!7302 Regex!12207) (tag!8162 String!51410) (isSeparator!7302 Bool) (transformation!7302 TokenValueInjection!14492)) )
))
(declare-fun r!4008 () Rule!14404)

(declare-fun p!2912 () List!44772)

(declare-fun matchR!6038 (Regex!12207 List!44772) Bool)

(assert (=> b!4126218 (= res!1686444 (matchR!6038 (regex!7302 r!4008) p!2912))))

(declare-fun b!4126219 () Bool)

(declare-fun res!1686446 () Bool)

(declare-fun e!2560298 () Bool)

(assert (=> b!4126219 (=> (not res!1686446) (not e!2560298))))

(declare-datatypes ((List!44773 0))(
  ( (Nil!44649) (Cons!44649 (h!50069 Rule!14404) (t!341158 List!44773)) )
))
(declare-fun rules!3756 () List!44773)

(declare-fun contains!8976 (List!44773 Rule!14404) Bool)

(assert (=> b!4126219 (= res!1686446 (contains!8976 rules!3756 r!4008))))

(declare-fun b!4126220 () Bool)

(declare-fun e!2560291 () Bool)

(declare-fun tp_is_empty!21337 () Bool)

(declare-fun tp!1257403 () Bool)

(assert (=> b!4126220 (= e!2560291 (and tp_is_empty!21337 tp!1257403))))

(declare-fun b!4126221 () Bool)

(declare-fun e!2560293 () Bool)

(declare-fun e!2560289 () Bool)

(declare-fun tp!1257400 () Bool)

(assert (=> b!4126221 (= e!2560293 (and e!2560289 tp!1257400))))

(declare-fun e!2560295 () Bool)

(assert (=> b!4126222 (= e!2560295 (and tp!1257401 tp!1257405))))

(declare-fun tp!1257402 () Bool)

(declare-fun b!4126224 () Bool)

(declare-fun e!2560296 () Bool)

(declare-fun inv!59234 (String!51410) Bool)

(declare-fun inv!59236 (TokenValueInjection!14492) Bool)

(assert (=> b!4126224 (= e!2560289 (and tp!1257402 (inv!59234 (tag!8162 (h!50069 rules!3756))) (inv!59236 (transformation!7302 (h!50069 rules!3756))) e!2560296))))

(declare-fun e!2560300 () Bool)

(assert (=> b!4126225 (= e!2560300 (and tp!1257406 tp!1257409))))

(declare-fun b!4126226 () Bool)

(declare-fun res!1686433 () Bool)

(assert (=> b!4126226 (=> (not res!1686433) (not e!2560298))))

(declare-fun rBis!149 () Rule!14404)

(assert (=> b!4126226 (= res!1686433 (contains!8976 rules!3756 rBis!149))))

(declare-fun b!4126227 () Bool)

(declare-fun res!1686439 () Bool)

(assert (=> b!4126227 (=> (not res!1686439) (not e!2560298))))

(declare-fun isEmpty!26577 (List!44773) Bool)

(assert (=> b!4126227 (= res!1686439 (not (isEmpty!26577 rules!3756)))))

(declare-fun b!4126228 () Bool)

(declare-fun e!2560294 () Bool)

(assert (=> b!4126228 (= e!2560299 (not e!2560294))))

(declare-fun res!1686443 () Bool)

(assert (=> b!4126228 (=> res!1686443 e!2560294)))

(get-info :version)

(assert (=> b!4126228 (= res!1686443 (or (and ((_ is Cons!44649) rules!3756) (= (h!50069 rules!3756) rBis!149)) (not ((_ is Cons!44649) rules!3756)) (= (h!50069 rules!3756) rBis!149)))))

(declare-datatypes ((Unit!63983 0))(
  ( (Unit!63984) )
))
(declare-fun lt!1471958 () Unit!63983)

(declare-datatypes ((LexerInterface!6891 0))(
  ( (LexerInterfaceExt!6888 (__x!27282 Int)) (Lexer!6889) )
))
(declare-fun thiss!25645 () LexerInterface!6891)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2154 (LexerInterface!6891 Rule!14404 List!44773) Unit!63983)

(assert (=> b!4126228 (= lt!1471958 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2154 thiss!25645 r!4008 rules!3756))))

(declare-fun ruleValid!3110 (LexerInterface!6891 Rule!14404) Bool)

(assert (=> b!4126228 (ruleValid!3110 thiss!25645 rBis!149)))

(declare-fun lt!1471959 () Unit!63983)

(assert (=> b!4126228 (= lt!1471959 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2154 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4126229 () Bool)

(declare-fun e!2560288 () Bool)

(declare-fun tp!1257404 () Bool)

(assert (=> b!4126229 (= e!2560288 (and tp_is_empty!21337 tp!1257404))))

(assert (=> b!4126230 (= e!2560296 (and tp!1257407 tp!1257410))))

(declare-fun b!4126231 () Bool)

(declare-fun res!1686437 () Bool)

(assert (=> b!4126231 (=> (not res!1686437) (not e!2560298))))

(declare-fun rulesInvariant!6188 (LexerInterface!6891 List!44773) Bool)

(assert (=> b!4126231 (= res!1686437 (rulesInvariant!6188 thiss!25645 rules!3756))))

(declare-fun b!4126223 () Bool)

(declare-fun res!1686441 () Bool)

(assert (=> b!4126223 (=> res!1686441 e!2560294)))

(assert (=> b!4126223 (= res!1686441 (not (contains!8976 (t!341158 rules!3756) rBis!149)))))

(declare-fun res!1686434 () Bool)

(assert (=> start!391510 (=> (not res!1686434) (not e!2560298))))

(assert (=> start!391510 (= res!1686434 ((_ is Lexer!6889) thiss!25645))))

(assert (=> start!391510 e!2560298))

(assert (=> start!391510 e!2560293))

(assert (=> start!391510 e!2560291))

(assert (=> start!391510 true))

(declare-fun e!2560287 () Bool)

(assert (=> start!391510 e!2560287))

(assert (=> start!391510 e!2560288))

(declare-fun e!2560292 () Bool)

(assert (=> start!391510 e!2560292))

(declare-fun b!4126232 () Bool)

(declare-fun res!1686445 () Bool)

(assert (=> b!4126232 (=> (not res!1686445) (not e!2560299))))

(assert (=> b!4126232 (= res!1686445 (ruleValid!3110 thiss!25645 r!4008))))

(declare-fun b!4126233 () Bool)

(declare-fun res!1686435 () Bool)

(assert (=> b!4126233 (=> (not res!1686435) (not e!2560298))))

(declare-fun input!3238 () List!44772)

(declare-fun isPrefix!4237 (List!44772 List!44772) Bool)

(assert (=> b!4126233 (= res!1686435 (isPrefix!4237 p!2912 input!3238))))

(declare-fun b!4126234 () Bool)

(assert (=> b!4126234 (= e!2560294 true)))

(declare-datatypes ((Token!13534 0))(
  ( (Token!13535 (value!228661 TokenValue!7532) (rule!10388 Rule!14404) (size!33061 Int) (originalCharacters!7798 List!44772)) )
))
(declare-datatypes ((tuple2!43102 0))(
  ( (tuple2!43103 (_1!24685 Token!13534) (_2!24685 List!44772)) )
))
(declare-datatypes ((Option!9610 0))(
  ( (None!9609) (Some!9609 (v!40207 tuple2!43102)) )
))
(declare-fun lt!1471957 () Option!9610)

(declare-fun maxPrefixOneRule!3031 (LexerInterface!6891 Rule!14404 List!44772) Option!9610)

(assert (=> b!4126234 (= lt!1471957 (maxPrefixOneRule!3031 thiss!25645 (h!50069 rules!3756) input!3238))))

(declare-fun tp!1257399 () Bool)

(declare-fun b!4126235 () Bool)

(assert (=> b!4126235 (= e!2560292 (and tp!1257399 (inv!59234 (tag!8162 rBis!149)) (inv!59236 (transformation!7302 rBis!149)) e!2560300))))

(declare-fun b!4126236 () Bool)

(declare-fun tp!1257408 () Bool)

(assert (=> b!4126236 (= e!2560287 (and tp!1257408 (inv!59234 (tag!8162 r!4008)) (inv!59236 (transformation!7302 r!4008)) e!2560295))))

(declare-fun b!4126237 () Bool)

(declare-fun res!1686442 () Bool)

(assert (=> b!4126237 (=> (not res!1686442) (not e!2560299))))

(declare-fun getIndex!650 (List!44773 Rule!14404) Int)

(assert (=> b!4126237 (= res!1686442 (< (getIndex!650 rules!3756 rBis!149) (getIndex!650 rules!3756 r!4008)))))

(declare-fun b!4126238 () Bool)

(declare-fun res!1686436 () Bool)

(assert (=> b!4126238 (=> (not res!1686436) (not e!2560298))))

(declare-fun isEmpty!26578 (List!44772) Bool)

(assert (=> b!4126238 (= res!1686436 (not (isEmpty!26578 p!2912)))))

(declare-fun b!4126239 () Bool)

(assert (=> b!4126239 (= e!2560298 e!2560299)))

(declare-fun res!1686438 () Bool)

(assert (=> b!4126239 (=> (not res!1686438) (not e!2560299))))

(declare-fun lt!1471960 () BalanceConc!26620)

(declare-fun maxPrefix!4083 (LexerInterface!6891 List!44773 List!44772) Option!9610)

(declare-fun apply!10375 (TokenValueInjection!14492 BalanceConc!26620) TokenValue!7532)

(declare-fun size!33062 (List!44772) Int)

(declare-fun getSuffix!2566 (List!44772 List!44772) List!44772)

(assert (=> b!4126239 (= res!1686438 (= (maxPrefix!4083 thiss!25645 rules!3756 input!3238) (Some!9609 (tuple2!43103 (Token!13535 (apply!10375 (transformation!7302 r!4008) lt!1471960) r!4008 (size!33062 p!2912) p!2912) (getSuffix!2566 input!3238 p!2912)))))))

(declare-fun lt!1471956 () Unit!63983)

(declare-fun lemmaSemiInverse!2160 (TokenValueInjection!14492 BalanceConc!26620) Unit!63983)

(assert (=> b!4126239 (= lt!1471956 (lemmaSemiInverse!2160 (transformation!7302 r!4008) lt!1471960))))

(declare-fun seqFromList!5419 (List!44772) BalanceConc!26620)

(assert (=> b!4126239 (= lt!1471960 (seqFromList!5419 p!2912))))

(declare-fun b!4126240 () Bool)

(declare-fun res!1686440 () Bool)

(assert (=> b!4126240 (=> res!1686440 e!2560294)))

(assert (=> b!4126240 (= res!1686440 (not (contains!8976 (t!341158 rules!3756) r!4008)))))

(assert (= (and start!391510 res!1686434) b!4126233))

(assert (= (and b!4126233 res!1686435) b!4126227))

(assert (= (and b!4126227 res!1686439) b!4126231))

(assert (= (and b!4126231 res!1686437) b!4126219))

(assert (= (and b!4126219 res!1686446) b!4126226))

(assert (= (and b!4126226 res!1686433) b!4126238))

(assert (= (and b!4126238 res!1686436) b!4126239))

(assert (= (and b!4126239 res!1686438) b!4126218))

(assert (= (and b!4126218 res!1686444) b!4126237))

(assert (= (and b!4126237 res!1686442) b!4126232))

(assert (= (and b!4126232 res!1686445) b!4126228))

(assert (= (and b!4126228 (not res!1686443)) b!4126240))

(assert (= (and b!4126240 (not res!1686440)) b!4126223))

(assert (= (and b!4126223 (not res!1686441)) b!4126234))

(assert (= b!4126224 b!4126230))

(assert (= b!4126221 b!4126224))

(assert (= (and start!391510 ((_ is Cons!44649) rules!3756)) b!4126221))

(assert (= (and start!391510 ((_ is Cons!44648) p!2912)) b!4126220))

(assert (= b!4126236 b!4126222))

(assert (= start!391510 b!4126236))

(assert (= (and start!391510 ((_ is Cons!44648) input!3238)) b!4126229))

(assert (= b!4126235 b!4126225))

(assert (= start!391510 b!4126235))

(declare-fun m!4724725 () Bool)

(assert (=> b!4126226 m!4724725))

(declare-fun m!4724727 () Bool)

(assert (=> b!4126234 m!4724727))

(declare-fun m!4724729 () Bool)

(assert (=> b!4126240 m!4724729))

(declare-fun m!4724731 () Bool)

(assert (=> b!4126235 m!4724731))

(declare-fun m!4724733 () Bool)

(assert (=> b!4126235 m!4724733))

(declare-fun m!4724735 () Bool)

(assert (=> b!4126224 m!4724735))

(declare-fun m!4724737 () Bool)

(assert (=> b!4126224 m!4724737))

(declare-fun m!4724739 () Bool)

(assert (=> b!4126232 m!4724739))

(declare-fun m!4724741 () Bool)

(assert (=> b!4126218 m!4724741))

(declare-fun m!4724743 () Bool)

(assert (=> b!4126227 m!4724743))

(declare-fun m!4724745 () Bool)

(assert (=> b!4126237 m!4724745))

(declare-fun m!4724747 () Bool)

(assert (=> b!4126237 m!4724747))

(declare-fun m!4724749 () Bool)

(assert (=> b!4126233 m!4724749))

(declare-fun m!4724751 () Bool)

(assert (=> b!4126231 m!4724751))

(declare-fun m!4724753 () Bool)

(assert (=> b!4126223 m!4724753))

(declare-fun m!4724755 () Bool)

(assert (=> b!4126228 m!4724755))

(declare-fun m!4724757 () Bool)

(assert (=> b!4126228 m!4724757))

(declare-fun m!4724759 () Bool)

(assert (=> b!4126228 m!4724759))

(declare-fun m!4724761 () Bool)

(assert (=> b!4126219 m!4724761))

(declare-fun m!4724763 () Bool)

(assert (=> b!4126236 m!4724763))

(declare-fun m!4724765 () Bool)

(assert (=> b!4126236 m!4724765))

(declare-fun m!4724767 () Bool)

(assert (=> b!4126238 m!4724767))

(declare-fun m!4724769 () Bool)

(assert (=> b!4126239 m!4724769))

(declare-fun m!4724771 () Bool)

(assert (=> b!4126239 m!4724771))

(declare-fun m!4724773 () Bool)

(assert (=> b!4126239 m!4724773))

(declare-fun m!4724775 () Bool)

(assert (=> b!4126239 m!4724775))

(declare-fun m!4724777 () Bool)

(assert (=> b!4126239 m!4724777))

(declare-fun m!4724779 () Bool)

(assert (=> b!4126239 m!4724779))

(check-sat (not b!4126235) (not b!4126219) b_and!319457 b_and!319463 (not b_next!117573) (not b!4126224) b_and!319461 (not b!4126227) (not b!4126228) b_and!319465 (not b!4126240) (not b_next!117571) (not b_next!117567) (not b!4126229) b_and!319459 (not b!4126233) b_and!319467 (not b!4126238) (not b!4126221) tp_is_empty!21337 (not b!4126236) (not b!4126239) (not b!4126237) (not b!4126220) (not b_next!117569) (not b_next!117565) (not b!4126218) (not b!4126226) (not b!4126223) (not b_next!117563) (not b!4126232) (not b!4126231) (not b!4126234))
(check-sat b_and!319467 b_and!319457 b_and!319463 (not b_next!117573) (not b_next!117563) b_and!319461 b_and!319465 (not b_next!117571) (not b_next!117567) b_and!319459 (not b_next!117569) (not b_next!117565))
