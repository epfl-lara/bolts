; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!397410 () Bool)

(assert start!397410)

(declare-fun b!4168331 () Bool)

(declare-fun b_free!120415 () Bool)

(declare-fun b_next!121119 () Bool)

(assert (=> b!4168331 (= b_free!120415 (not b_next!121119))))

(declare-fun tp!1273188 () Bool)

(declare-fun b_and!325285 () Bool)

(assert (=> b!4168331 (= tp!1273188 b_and!325285)))

(declare-fun b_free!120417 () Bool)

(declare-fun b_next!121121 () Bool)

(assert (=> b!4168331 (= b_free!120417 (not b_next!121121))))

(declare-fun tp!1273192 () Bool)

(declare-fun b_and!325287 () Bool)

(assert (=> b!4168331 (= tp!1273192 b_and!325287)))

(declare-fun b!4168316 () Bool)

(declare-fun b_free!120419 () Bool)

(declare-fun b_next!121123 () Bool)

(assert (=> b!4168316 (= b_free!120419 (not b_next!121123))))

(declare-fun tp!1273193 () Bool)

(declare-fun b_and!325289 () Bool)

(assert (=> b!4168316 (= tp!1273193 b_and!325289)))

(declare-fun b_free!120421 () Bool)

(declare-fun b_next!121125 () Bool)

(assert (=> b!4168316 (= b_free!120421 (not b_next!121125))))

(declare-fun tp!1273183 () Bool)

(declare-fun b_and!325291 () Bool)

(assert (=> b!4168316 (= tp!1273183 b_and!325291)))

(declare-fun b!4168334 () Bool)

(declare-fun b_free!120423 () Bool)

(declare-fun b_next!121127 () Bool)

(assert (=> b!4168334 (= b_free!120423 (not b_next!121127))))

(declare-fun tp!1273186 () Bool)

(declare-fun b_and!325293 () Bool)

(assert (=> b!4168334 (= tp!1273186 b_and!325293)))

(declare-fun b_free!120425 () Bool)

(declare-fun b_next!121129 () Bool)

(assert (=> b!4168334 (= b_free!120425 (not b_next!121129))))

(declare-fun tp!1273182 () Bool)

(declare-fun b_and!325295 () Bool)

(assert (=> b!4168334 (= tp!1273182 b_and!325295)))

(declare-fun b!4168315 () Bool)

(declare-fun e!2587658 () Bool)

(declare-fun tp_is_empty!21885 () Bool)

(declare-fun tp!1273185 () Bool)

(assert (=> b!4168315 (= e!2587658 (and tp_is_empty!21885 tp!1273185))))

(declare-fun e!2587656 () Bool)

(assert (=> b!4168316 (= e!2587656 (and tp!1273193 tp!1273183))))

(declare-fun b!4168317 () Bool)

(declare-fun res!1707696 () Bool)

(declare-fun e!2587660 () Bool)

(assert (=> b!4168317 (=> (not res!1707696) (not e!2587660))))

(declare-datatypes ((C!25112 0))(
  ( (C!25113 (val!14718 Int)) )
))
(declare-datatypes ((List!45757 0))(
  ( (Nil!45633) (Cons!45633 (h!51053 C!25112) (t!344204 List!45757)) )
))
(declare-datatypes ((IArray!27539 0))(
  ( (IArray!27540 (innerList!13827 List!45757)) )
))
(declare-datatypes ((Conc!13767 0))(
  ( (Node!13767 (left!34023 Conc!13767) (right!34353 Conc!13767) (csize!27764 Int) (cheight!13978 Int)) (Leaf!21288 (xs!17073 IArray!27539) (csize!27765 Int)) (Empty!13767) )
))
(declare-datatypes ((List!45758 0))(
  ( (Nil!45634) (Cons!45634 (h!51054 (_ BitVec 16)) (t!344205 List!45758)) )
))
(declare-datatypes ((BalanceConc!27128 0))(
  ( (BalanceConc!27129 (c!712696 Conc!13767)) )
))
(declare-datatypes ((TokenValue!7786 0))(
  ( (FloatLiteralValue!15572 (text!54947 List!45758)) (TokenValueExt!7785 (__x!27793 Int)) (Broken!38930 (value!235864 List!45758)) (Object!7909) (End!7786) (Def!7786) (Underscore!7786) (Match!7786) (Else!7786) (Error!7786) (Case!7786) (If!7786) (Extends!7786) (Abstract!7786) (Class!7786) (Val!7786) (DelimiterValue!15572 (del!7846 List!45758)) (KeywordValue!7792 (value!235865 List!45758)) (CommentValue!15572 (value!235866 List!45758)) (WhitespaceValue!15572 (value!235867 List!45758)) (IndentationValue!7786 (value!235868 List!45758)) (String!52795) (Int32!7786) (Broken!38931 (value!235869 List!45758)) (Boolean!7787) (Unit!64714) (OperatorValue!7789 (op!7846 List!45758)) (IdentifierValue!15572 (value!235870 List!45758)) (IdentifierValue!15573 (value!235871 List!45758)) (WhitespaceValue!15573 (value!235872 List!45758)) (True!15572) (False!15572) (Broken!38932 (value!235873 List!45758)) (Broken!38933 (value!235874 List!45758)) (True!15573) (RightBrace!7786) (RightBracket!7786) (Colon!7786) (Null!7786) (Comma!7786) (LeftBracket!7786) (False!15573) (LeftBrace!7786) (ImaginaryLiteralValue!7786 (text!54948 List!45758)) (StringLiteralValue!23358 (value!235875 List!45758)) (EOFValue!7786 (value!235876 List!45758)) (IdentValue!7786 (value!235877 List!45758)) (DelimiterValue!15573 (value!235878 List!45758)) (DedentValue!7786 (value!235879 List!45758)) (NewLineValue!7786 (value!235880 List!45758)) (IntegerValue!23358 (value!235881 (_ BitVec 32)) (text!54949 List!45758)) (IntegerValue!23359 (value!235882 Int) (text!54950 List!45758)) (Times!7786) (Or!7786) (Equal!7786) (Minus!7786) (Broken!38934 (value!235883 List!45758)) (And!7786) (Div!7786) (LessEqual!7786) (Mod!7786) (Concat!20247) (Not!7786) (Plus!7786) (SpaceValue!7786 (value!235884 List!45758)) (IntegerValue!23360 (value!235885 Int) (text!54951 List!45758)) (StringLiteralValue!23359 (text!54952 List!45758)) (FloatLiteralValue!15573 (text!54953 List!45758)) (BytesLiteralValue!7786 (value!235886 List!45758)) (CommentValue!15573 (value!235887 List!45758)) (StringLiteralValue!23360 (value!235888 List!45758)) (ErrorTokenValue!7786 (msg!7847 List!45758)) )
))
(declare-datatypes ((TokenValueInjection!15000 0))(
  ( (TokenValueInjection!15001 (toValue!10236 Int) (toChars!10095 Int)) )
))
(declare-datatypes ((Regex!12461 0))(
  ( (ElementMatch!12461 (c!712697 C!25112)) (Concat!20248 (regOne!25434 Regex!12461) (regTwo!25434 Regex!12461)) (EmptyExpr!12461) (Star!12461 (reg!12790 Regex!12461)) (EmptyLang!12461) (Union!12461 (regOne!25435 Regex!12461) (regTwo!25435 Regex!12461)) )
))
(declare-datatypes ((String!52796 0))(
  ( (String!52797 (value!235889 String)) )
))
(declare-datatypes ((Rule!14912 0))(
  ( (Rule!14913 (regex!7556 Regex!12461) (tag!8420 String!52796) (isSeparator!7556 Bool) (transformation!7556 TokenValueInjection!15000)) )
))
(declare-datatypes ((List!45759 0))(
  ( (Nil!45635) (Cons!45635 (h!51055 Rule!14912) (t!344206 List!45759)) )
))
(declare-fun rules!3820 () List!45759)

(declare-fun isEmpty!27007 (List!45759) Bool)

(assert (=> b!4168317 (= res!1707696 (not (isEmpty!27007 rules!3820)))))

(declare-fun b!4168318 () Bool)

(declare-fun e!2587652 () Bool)

(assert (=> b!4168318 (= e!2587652 true)))

(declare-datatypes ((Token!13850 0))(
  ( (Token!13851 (value!235890 TokenValue!7786) (rule!10610 Rule!14912) (size!33521 Int) (originalCharacters!7956 List!45757)) )
))
(declare-datatypes ((tuple2!43538 0))(
  ( (tuple2!43539 (_1!24903 Token!13850) (_2!24903 List!45757)) )
))
(declare-datatypes ((Option!9764 0))(
  ( (None!9763) (Some!9763 (v!40549 tuple2!43538)) )
))
(declare-fun lt!1484719 () Option!9764)

(declare-fun input!3316 () List!45757)

(declare-datatypes ((LexerInterface!7149 0))(
  ( (LexerInterfaceExt!7146 (__x!27794 Int)) (Lexer!7147) )
))
(declare-fun thiss!25889 () LexerInterface!7149)

(declare-fun maxPrefix!4225 (LexerInterface!7149 List!45759 List!45757) Option!9764)

(assert (=> b!4168318 (= lt!1484719 (maxPrefix!4225 thiss!25889 rules!3820 input!3316))))

(declare-fun b!4168319 () Bool)

(declare-fun e!2587663 () Bool)

(assert (=> b!4168319 (= e!2587660 (not e!2587663))))

(declare-fun res!1707699 () Bool)

(assert (=> b!4168319 (=> res!1707699 e!2587663)))

(declare-fun r!4097 () Rule!14912)

(declare-fun p!2942 () List!45757)

(declare-fun matchR!6202 (Regex!12461 List!45757) Bool)

(assert (=> b!4168319 (= res!1707699 (not (matchR!6202 (regex!7556 r!4097) p!2942)))))

(declare-fun ruleValid!3278 (LexerInterface!7149 Rule!14912) Bool)

(assert (=> b!4168319 (ruleValid!3278 thiss!25889 r!4097)))

(declare-datatypes ((Unit!64715 0))(
  ( (Unit!64716) )
))
(declare-fun lt!1484714 () Unit!64715)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2316 (LexerInterface!7149 Rule!14912 List!45759) Unit!64715)

(assert (=> b!4168319 (= lt!1484714 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2316 thiss!25889 r!4097 rules!3820))))

(declare-fun b!4168320 () Bool)

(declare-fun e!2587657 () Bool)

(declare-fun tp!1273191 () Bool)

(assert (=> b!4168320 (= e!2587657 (and tp_is_empty!21885 tp!1273191))))

(declare-fun b!4168321 () Bool)

(declare-fun e!2587655 () Bool)

(declare-fun e!2587651 () Bool)

(declare-fun tp!1273189 () Bool)

(assert (=> b!4168321 (= e!2587655 (and e!2587651 tp!1273189))))

(declare-fun b!4168322 () Bool)

(declare-fun res!1707702 () Bool)

(assert (=> b!4168322 (=> (not res!1707702) (not e!2587660))))

(declare-fun isPrefix!4413 (List!45757 List!45757) Bool)

(assert (=> b!4168322 (= res!1707702 (isPrefix!4413 p!2942 input!3316))))

(declare-fun b!4168323 () Bool)

(declare-fun res!1707700 () Bool)

(assert (=> b!4168323 (=> (not res!1707700) (not e!2587660))))

(declare-fun rBis!161 () Rule!14912)

(declare-fun contains!9357 (List!45759 Rule!14912) Bool)

(assert (=> b!4168323 (= res!1707700 (contains!9357 rules!3820 rBis!161))))

(declare-fun e!2587653 () Bool)

(declare-fun e!2587659 () Bool)

(declare-fun tp!1273187 () Bool)

(declare-fun b!4168324 () Bool)

(declare-fun inv!60165 (String!52796) Bool)

(declare-fun inv!60167 (TokenValueInjection!15000) Bool)

(assert (=> b!4168324 (= e!2587659 (and tp!1273187 (inv!60165 (tag!8420 r!4097)) (inv!60167 (transformation!7556 r!4097)) e!2587653))))

(declare-fun b!4168326 () Bool)

(declare-fun e!2587665 () Bool)

(declare-fun tp!1273194 () Bool)

(assert (=> b!4168326 (= e!2587665 (and tp_is_empty!21885 tp!1273194))))

(declare-fun b!4168327 () Bool)

(declare-fun res!1707703 () Bool)

(assert (=> b!4168327 (=> res!1707703 e!2587652)))

(declare-fun pBis!100 () List!45757)

(declare-fun lt!1484717 () Int)

(declare-fun size!33522 (List!45757) Int)

(assert (=> b!4168327 (= res!1707703 (<= (size!33522 pBis!100) lt!1484717))))

(declare-fun tp!1273184 () Bool)

(declare-fun b!4168328 () Bool)

(declare-fun e!2587666 () Bool)

(declare-fun e!2587661 () Bool)

(assert (=> b!4168328 (= e!2587661 (and tp!1273184 (inv!60165 (tag!8420 rBis!161)) (inv!60167 (transformation!7556 rBis!161)) e!2587666))))

(declare-fun b!4168329 () Bool)

(assert (=> b!4168329 (= e!2587663 e!2587652)))

(declare-fun res!1707704 () Bool)

(assert (=> b!4168329 (=> res!1707704 e!2587652)))

(declare-fun lt!1484715 () TokenValue!7786)

(declare-fun maxPrefixOneRule!3172 (LexerInterface!7149 Rule!14912 List!45757) Option!9764)

(declare-fun getSuffix!2720 (List!45757 List!45757) List!45757)

(assert (=> b!4168329 (= res!1707704 (not (= (maxPrefixOneRule!3172 thiss!25889 r!4097 input!3316) (Some!9763 (tuple2!43539 (Token!13851 lt!1484715 r!4097 lt!1484717 p!2942) (getSuffix!2720 input!3316 p!2942))))))))

(assert (=> b!4168329 (= lt!1484717 (size!33522 p!2942))))

(declare-fun lt!1484718 () BalanceConc!27128)

(declare-fun apply!10533 (TokenValueInjection!15000 BalanceConc!27128) TokenValue!7786)

(assert (=> b!4168329 (= lt!1484715 (apply!10533 (transformation!7556 r!4097) lt!1484718))))

(assert (=> b!4168329 (isPrefix!4413 input!3316 input!3316)))

(declare-fun lt!1484716 () Unit!64715)

(declare-fun lemmaIsPrefixRefl!2848 (List!45757 List!45757) Unit!64715)

(assert (=> b!4168329 (= lt!1484716 (lemmaIsPrefixRefl!2848 input!3316 input!3316))))

(declare-fun lt!1484720 () Unit!64715)

(declare-fun lemmaSemiInverse!2326 (TokenValueInjection!15000 BalanceConc!27128) Unit!64715)

(assert (=> b!4168329 (= lt!1484720 (lemmaSemiInverse!2326 (transformation!7556 r!4097) lt!1484718))))

(declare-fun seqFromList!5585 (List!45757) BalanceConc!27128)

(assert (=> b!4168329 (= lt!1484718 (seqFromList!5585 p!2942))))

(declare-fun b!4168330 () Bool)

(declare-fun tp!1273190 () Bool)

(assert (=> b!4168330 (= e!2587651 (and tp!1273190 (inv!60165 (tag!8420 (h!51055 rules!3820))) (inv!60167 (transformation!7556 (h!51055 rules!3820))) e!2587656))))

(assert (=> b!4168331 (= e!2587653 (and tp!1273188 tp!1273192))))

(declare-fun b!4168332 () Bool)

(declare-fun res!1707698 () Bool)

(assert (=> b!4168332 (=> (not res!1707698) (not e!2587660))))

(assert (=> b!4168332 (= res!1707698 (isPrefix!4413 pBis!100 input!3316))))

(declare-fun b!4168333 () Bool)

(declare-fun res!1707701 () Bool)

(assert (=> b!4168333 (=> (not res!1707701) (not e!2587660))))

(assert (=> b!4168333 (= res!1707701 (contains!9357 rules!3820 r!4097))))

(assert (=> b!4168334 (= e!2587666 (and tp!1273186 tp!1273182))))

(declare-fun b!4168325 () Bool)

(declare-fun res!1707695 () Bool)

(assert (=> b!4168325 (=> (not res!1707695) (not e!2587660))))

(declare-fun rulesInvariant!6362 (LexerInterface!7149 List!45759) Bool)

(assert (=> b!4168325 (= res!1707695 (rulesInvariant!6362 thiss!25889 rules!3820))))

(declare-fun res!1707697 () Bool)

(assert (=> start!397410 (=> (not res!1707697) (not e!2587660))))

(get-info :version)

(assert (=> start!397410 (= res!1707697 ((_ is Lexer!7147) thiss!25889))))

(assert (=> start!397410 e!2587660))

(assert (=> start!397410 e!2587665))

(assert (=> start!397410 e!2587655))

(assert (=> start!397410 e!2587657))

(assert (=> start!397410 e!2587658))

(assert (=> start!397410 true))

(assert (=> start!397410 e!2587661))

(assert (=> start!397410 e!2587659))

(assert (= (and start!397410 res!1707697) b!4168322))

(assert (= (and b!4168322 res!1707702) b!4168332))

(assert (= (and b!4168332 res!1707698) b!4168317))

(assert (= (and b!4168317 res!1707696) b!4168325))

(assert (= (and b!4168325 res!1707695) b!4168333))

(assert (= (and b!4168333 res!1707701) b!4168323))

(assert (= (and b!4168323 res!1707700) b!4168319))

(assert (= (and b!4168319 (not res!1707699)) b!4168329))

(assert (= (and b!4168329 (not res!1707704)) b!4168327))

(assert (= (and b!4168327 (not res!1707703)) b!4168318))

(assert (= (and start!397410 ((_ is Cons!45633) pBis!100)) b!4168326))

(assert (= b!4168330 b!4168316))

(assert (= b!4168321 b!4168330))

(assert (= (and start!397410 ((_ is Cons!45635) rules!3820)) b!4168321))

(assert (= (and start!397410 ((_ is Cons!45633) p!2942)) b!4168320))

(assert (= (and start!397410 ((_ is Cons!45633) input!3316)) b!4168315))

(assert (= b!4168328 b!4168334))

(assert (= start!397410 b!4168328))

(assert (= b!4168324 b!4168331))

(assert (= start!397410 b!4168324))

(declare-fun m!4759577 () Bool)

(assert (=> b!4168325 m!4759577))

(declare-fun m!4759579 () Bool)

(assert (=> b!4168324 m!4759579))

(declare-fun m!4759581 () Bool)

(assert (=> b!4168324 m!4759581))

(declare-fun m!4759583 () Bool)

(assert (=> b!4168318 m!4759583))

(declare-fun m!4759585 () Bool)

(assert (=> b!4168330 m!4759585))

(declare-fun m!4759587 () Bool)

(assert (=> b!4168330 m!4759587))

(declare-fun m!4759589 () Bool)

(assert (=> b!4168322 m!4759589))

(declare-fun m!4759591 () Bool)

(assert (=> b!4168328 m!4759591))

(declare-fun m!4759593 () Bool)

(assert (=> b!4168328 m!4759593))

(declare-fun m!4759595 () Bool)

(assert (=> b!4168333 m!4759595))

(declare-fun m!4759597 () Bool)

(assert (=> b!4168329 m!4759597))

(declare-fun m!4759599 () Bool)

(assert (=> b!4168329 m!4759599))

(declare-fun m!4759601 () Bool)

(assert (=> b!4168329 m!4759601))

(declare-fun m!4759603 () Bool)

(assert (=> b!4168329 m!4759603))

(declare-fun m!4759605 () Bool)

(assert (=> b!4168329 m!4759605))

(declare-fun m!4759607 () Bool)

(assert (=> b!4168329 m!4759607))

(declare-fun m!4759609 () Bool)

(assert (=> b!4168329 m!4759609))

(declare-fun m!4759611 () Bool)

(assert (=> b!4168329 m!4759611))

(declare-fun m!4759613 () Bool)

(assert (=> b!4168319 m!4759613))

(declare-fun m!4759615 () Bool)

(assert (=> b!4168319 m!4759615))

(declare-fun m!4759617 () Bool)

(assert (=> b!4168319 m!4759617))

(declare-fun m!4759619 () Bool)

(assert (=> b!4168332 m!4759619))

(declare-fun m!4759621 () Bool)

(assert (=> b!4168317 m!4759621))

(declare-fun m!4759623 () Bool)

(assert (=> b!4168323 m!4759623))

(declare-fun m!4759625 () Bool)

(assert (=> b!4168327 m!4759625))

(check-sat (not b!4168325) (not b_next!121121) (not b!4168318) b_and!325291 (not b!4168333) tp_is_empty!21885 b_and!325285 (not b!4168324) b_and!325293 (not b!4168326) (not b!4168332) (not b!4168322) (not b!4168320) (not b_next!121125) (not b!4168323) (not b!4168329) (not b!4168319) (not b!4168328) (not b_next!121129) (not b!4168321) (not b!4168327) (not b!4168315) (not b_next!121119) (not b!4168330) (not b_next!121127) b_and!325289 b_and!325295 (not b!4168317) b_and!325287 (not b_next!121123))
(check-sat (not b_next!121121) b_and!325291 (not b_next!121125) (not b_next!121129) b_and!325285 (not b_next!121119) b_and!325293 b_and!325295 (not b_next!121127) b_and!325289 b_and!325287 (not b_next!121123))
