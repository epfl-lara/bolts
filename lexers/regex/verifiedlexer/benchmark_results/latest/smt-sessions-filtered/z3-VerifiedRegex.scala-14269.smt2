; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!745684 () Bool)

(assert start!745684)

(declare-fun b!7903862 () Bool)

(declare-fun b_free!134823 () Bool)

(declare-fun b_next!135613 () Bool)

(assert (=> b!7903862 (= b_free!134823 (not b_next!135613))))

(declare-fun tp!2354590 () Bool)

(declare-fun b_and!352915 () Bool)

(assert (=> b!7903862 (= tp!2354590 b_and!352915)))

(declare-fun b_free!134825 () Bool)

(declare-fun b_next!135615 () Bool)

(assert (=> b!7903862 (= b_free!134825 (not b_next!135615))))

(declare-fun tp!2354587 () Bool)

(declare-fun b_and!352917 () Bool)

(assert (=> b!7903862 (= tp!2354587 b_and!352917)))

(declare-fun b!7903855 () Bool)

(declare-fun res!3136175 () Bool)

(declare-fun e!4665403 () Bool)

(assert (=> b!7903855 (=> (not res!3136175) (not e!4665403))))

(declare-datatypes ((List!74332 0))(
  ( (Nil!74208) (Cons!74208 (h!80656 (_ BitVec 16)) (t!389435 List!74332)) )
))
(declare-datatypes ((TokenValue!8920 0))(
  ( (FloatLiteralValue!17840 (text!62885 List!74332)) (TokenValueExt!8919 (__x!35127 Int)) (Broken!44600 (value!287169 List!74332)) (Object!9043) (End!8920) (Def!8920) (Underscore!8920) (Match!8920) (Else!8920) (Error!8920) (Case!8920) (If!8920) (Extends!8920) (Abstract!8920) (Class!8920) (Val!8920) (DelimiterValue!17840 (del!8980 List!74332)) (KeywordValue!8926 (value!287170 List!74332)) (CommentValue!17840 (value!287171 List!74332)) (WhitespaceValue!17840 (value!287172 List!74332)) (IndentationValue!8920 (value!287173 List!74332)) (String!83021) (Int32!8920) (Broken!44601 (value!287174 List!74332)) (Boolean!8921) (Unit!169244) (OperatorValue!8923 (op!8980 List!74332)) (IdentifierValue!17840 (value!287175 List!74332)) (IdentifierValue!17841 (value!287176 List!74332)) (WhitespaceValue!17841 (value!287177 List!74332)) (True!17840) (False!17840) (Broken!44602 (value!287178 List!74332)) (Broken!44603 (value!287179 List!74332)) (True!17841) (RightBrace!8920) (RightBracket!8920) (Colon!8920) (Null!8920) (Comma!8920) (LeftBracket!8920) (False!17841) (LeftBrace!8920) (ImaginaryLiteralValue!8920 (text!62886 List!74332)) (StringLiteralValue!26760 (value!287180 List!74332)) (EOFValue!8920 (value!287181 List!74332)) (IdentValue!8920 (value!287182 List!74332)) (DelimiterValue!17841 (value!287183 List!74332)) (DedentValue!8920 (value!287184 List!74332)) (NewLineValue!8920 (value!287185 List!74332)) (IntegerValue!26760 (value!287186 (_ BitVec 32)) (text!62887 List!74332)) (IntegerValue!26761 (value!287187 Int) (text!62888 List!74332)) (Times!8920) (Or!8920) (Equal!8920) (Minus!8920) (Broken!44604 (value!287188 List!74332)) (And!8920) (Div!8920) (LessEqual!8920) (Mod!8920) (Concat!30227) (Not!8920) (Plus!8920) (SpaceValue!8920 (value!287189 List!74332)) (IntegerValue!26762 (value!287190 Int) (text!62889 List!74332)) (StringLiteralValue!26761 (text!62890 List!74332)) (FloatLiteralValue!17841 (text!62891 List!74332)) (BytesLiteralValue!8920 (value!287191 List!74332)) (CommentValue!17841 (value!287192 List!74332)) (StringLiteralValue!26762 (value!287193 List!74332)) (ErrorTokenValue!8920 (msg!8981 List!74332)) )
))
(declare-datatypes ((C!42944 0))(
  ( (C!42945 (val!31936 Int)) )
))
(declare-datatypes ((List!74333 0))(
  ( (Nil!74209) (Cons!74209 (h!80657 C!42944) (t!389436 List!74333)) )
))
(declare-datatypes ((IArray!31617 0))(
  ( (IArray!31618 (innerList!15866 List!74333)) )
))
(declare-datatypes ((Conc!15778 0))(
  ( (Node!15778 (left!56607 Conc!15778) (right!56937 Conc!15778) (csize!31786 Int) (cheight!15989 Int)) (Leaf!30048 (xs!19160 IArray!31617) (csize!31787 Int)) (Empty!15778) )
))
(declare-datatypes ((BalanceConc!30674 0))(
  ( (BalanceConc!30675 (c!1450435 Conc!15778)) )
))
(declare-datatypes ((String!83022 0))(
  ( (String!83023 (value!287194 String)) )
))
(declare-datatypes ((Regex!21307 0))(
  ( (ElementMatch!21307 (c!1450436 C!42944)) (Concat!30228 (regOne!43126 Regex!21307) (regTwo!43126 Regex!21307)) (EmptyExpr!21307) (Star!21307 (reg!21636 Regex!21307)) (EmptyLang!21307) (Union!21307 (regOne!43127 Regex!21307) (regTwo!43127 Regex!21307)) )
))
(declare-datatypes ((TokenValueInjection!17148 0))(
  ( (TokenValueInjection!17149 (toValue!11657 Int) (toChars!11516 Int)) )
))
(declare-datatypes ((Rule!17008 0))(
  ( (Rule!17009 (regex!8604 Regex!21307) (tag!9468 String!83022) (isSeparator!8604 Bool) (transformation!8604 TokenValueInjection!17148)) )
))
(declare-datatypes ((List!74334 0))(
  ( (Nil!74210) (Cons!74210 (h!80658 Rule!17008) (t!389437 List!74334)) )
))
(declare-fun rulesArg!141 () List!74334)

(declare-fun isEmpty!42578 (List!74334) Bool)

(assert (=> b!7903855 (= res!3136175 (not (isEmpty!42578 rulesArg!141)))))

(declare-fun e!4665396 () Bool)

(declare-fun b!7903856 () Bool)

(declare-fun e!4665400 () Bool)

(declare-fun tp!2354589 () Bool)

(declare-fun inv!95202 (String!83022) Bool)

(declare-fun inv!95204 (TokenValueInjection!17148) Bool)

(assert (=> b!7903856 (= e!4665400 (and tp!2354589 (inv!95202 (tag!9468 (h!80658 rulesArg!141))) (inv!95204 (transformation!8604 (h!80658 rulesArg!141))) e!4665396))))

(declare-fun b!7903857 () Bool)

(declare-fun e!4665402 () Bool)

(declare-fun tp!2354588 () Bool)

(assert (=> b!7903857 (= e!4665402 (and e!4665400 tp!2354588))))

(declare-fun b!7903858 () Bool)

(declare-fun e!4665401 () Bool)

(declare-fun tp_is_empty!52989 () Bool)

(declare-fun tp!2354586 () Bool)

(assert (=> b!7903858 (= e!4665401 (and tp_is_empty!52989 tp!2354586))))

(declare-fun b!7903859 () Bool)

(declare-fun e!4665397 () Bool)

(assert (=> b!7903859 (= e!4665397 true)))

(declare-fun lt!2684405 () Int)

(declare-fun input!1184 () List!74333)

(declare-fun size!43004 (List!74333) Int)

(assert (=> b!7903859 (= lt!2684405 (size!43004 input!1184))))

(declare-fun lt!2684403 () Int)

(declare-datatypes ((Token!15628 0))(
  ( (Token!15629 (value!287195 TokenValue!8920) (rule!11894 Rule!17008) (size!43005 Int) (originalCharacters!8845 List!74333)) )
))
(declare-datatypes ((tuple2!70238 0))(
  ( (tuple2!70239 (_1!38422 Token!15628) (_2!38422 List!74333)) )
))
(declare-fun lt!2684404 () tuple2!70238)

(assert (=> b!7903859 (= lt!2684403 (size!43004 (_2!38422 lt!2684404)))))

(declare-fun b!7903860 () Bool)

(declare-fun res!3136174 () Bool)

(declare-fun e!4665404 () Bool)

(assert (=> b!7903860 (=> res!3136174 e!4665404)))

(declare-datatypes ((Option!17886 0))(
  ( (None!17885) (Some!17885 (v!55028 tuple2!70238)) )
))
(declare-fun lt!2684407 () Option!17886)

(declare-fun isEmpty!42579 (Option!17886) Bool)

(assert (=> b!7903860 (= res!3136174 (isEmpty!42579 lt!2684407))))

(declare-fun b!7903861 () Bool)

(assert (=> b!7903861 (= e!4665404 e!4665397)))

(declare-fun res!3136171 () Bool)

(assert (=> b!7903861 (=> res!3136171 e!4665397)))

(declare-fun list!19235 (BalanceConc!30674) List!74333)

(declare-fun charsOf!5548 (Token!15628) BalanceConc!30674)

(assert (=> b!7903861 (= res!3136171 (not (= (list!19235 (charsOf!5548 (_1!38422 lt!2684404))) (originalCharacters!8845 (_1!38422 lt!2684404)))))))

(declare-fun get!26660 (Option!17886) tuple2!70238)

(assert (=> b!7903861 (= lt!2684404 (get!26660 lt!2684407))))

(assert (=> b!7903862 (= e!4665396 (and tp!2354590 tp!2354587))))

(declare-fun b!7903863 () Bool)

(declare-fun e!4665398 () Bool)

(assert (=> b!7903863 (= e!4665403 (not e!4665398))))

(declare-fun res!3136178 () Bool)

(assert (=> b!7903863 (=> res!3136178 e!4665398)))

(get-info :version)

(assert (=> b!7903863 (= res!3136178 (or (and ((_ is Cons!74210) rulesArg!141) ((_ is Nil!74210) (t!389437 rulesArg!141))) (not ((_ is Cons!74210) rulesArg!141))))))

(declare-fun isPrefix!6437 (List!74333 List!74333) Bool)

(assert (=> b!7903863 (isPrefix!6437 input!1184 input!1184)))

(declare-datatypes ((Unit!169245 0))(
  ( (Unit!169246) )
))
(declare-fun lt!2684408 () Unit!169245)

(declare-fun lemmaIsPrefixRefl!3948 (List!74333 List!74333) Unit!169245)

(assert (=> b!7903863 (= lt!2684408 (lemmaIsPrefixRefl!3948 input!1184 input!1184))))

(declare-fun b!7903864 () Bool)

(declare-fun res!3136177 () Bool)

(assert (=> b!7903864 (=> res!3136177 e!4665404)))

(declare-fun isDefined!14462 (Option!17886) Bool)

(assert (=> b!7903864 (= res!3136177 (not (isDefined!14462 lt!2684407)))))

(declare-fun res!3136172 () Bool)

(assert (=> start!745684 (=> (not res!3136172) (not e!4665403))))

(declare-datatypes ((LexerInterface!8196 0))(
  ( (LexerInterfaceExt!8193 (__x!35128 Int)) (Lexer!8194) )
))
(declare-fun thiss!14377 () LexerInterface!8196)

(assert (=> start!745684 (= res!3136172 ((_ is Lexer!8194) thiss!14377))))

(assert (=> start!745684 e!4665403))

(assert (=> start!745684 true))

(assert (=> start!745684 e!4665402))

(assert (=> start!745684 e!4665401))

(declare-fun b!7903865 () Bool)

(declare-fun res!3136176 () Bool)

(assert (=> b!7903865 (=> (not res!3136176) (not e!4665403))))

(declare-fun rulesValidInductive!3415 (LexerInterface!8196 List!74334) Bool)

(assert (=> b!7903865 (= res!3136176 (rulesValidInductive!3415 thiss!14377 rulesArg!141))))

(declare-fun b!7903866 () Bool)

(assert (=> b!7903866 (= e!4665398 e!4665404)))

(declare-fun res!3136173 () Bool)

(assert (=> b!7903866 (=> res!3136173 e!4665404)))

(declare-fun lt!2684406 () Option!17886)

(assert (=> b!7903866 (= res!3136173 (or (and ((_ is None!17885) lt!2684406) ((_ is None!17885) lt!2684407)) ((_ is None!17885) lt!2684407) ((_ is None!17885) lt!2684406) (>= (size!43005 (_1!38422 (v!55028 lt!2684406))) (size!43005 (_1!38422 (v!55028 lt!2684407))))))))

(declare-fun maxPrefix!4737 (LexerInterface!8196 List!74334 List!74333) Option!17886)

(assert (=> b!7903866 (= lt!2684407 (maxPrefix!4737 thiss!14377 (t!389437 rulesArg!141) input!1184))))

(declare-fun maxPrefixOneRule!3784 (LexerInterface!8196 Rule!17008 List!74333) Option!17886)

(assert (=> b!7903866 (= lt!2684406 (maxPrefixOneRule!3784 thiss!14377 (h!80658 rulesArg!141) input!1184))))

(assert (= (and start!745684 res!3136172) b!7903865))

(assert (= (and b!7903865 res!3136176) b!7903855))

(assert (= (and b!7903855 res!3136175) b!7903863))

(assert (= (and b!7903863 (not res!3136178)) b!7903866))

(assert (= (and b!7903866 (not res!3136173)) b!7903860))

(assert (= (and b!7903860 (not res!3136174)) b!7903864))

(assert (= (and b!7903864 (not res!3136177)) b!7903861))

(assert (= (and b!7903861 (not res!3136171)) b!7903859))

(assert (= b!7903856 b!7903862))

(assert (= b!7903857 b!7903856))

(assert (= (and start!745684 ((_ is Cons!74210) rulesArg!141)) b!7903857))

(assert (= (and start!745684 ((_ is Cons!74209) input!1184)) b!7903858))

(declare-fun m!8278506 () Bool)

(assert (=> b!7903859 m!8278506))

(declare-fun m!8278508 () Bool)

(assert (=> b!7903859 m!8278508))

(declare-fun m!8278510 () Bool)

(assert (=> b!7903860 m!8278510))

(declare-fun m!8278512 () Bool)

(assert (=> b!7903864 m!8278512))

(declare-fun m!8278514 () Bool)

(assert (=> b!7903866 m!8278514))

(declare-fun m!8278516 () Bool)

(assert (=> b!7903866 m!8278516))

(declare-fun m!8278518 () Bool)

(assert (=> b!7903865 m!8278518))

(declare-fun m!8278520 () Bool)

(assert (=> b!7903856 m!8278520))

(declare-fun m!8278522 () Bool)

(assert (=> b!7903856 m!8278522))

(declare-fun m!8278524 () Bool)

(assert (=> b!7903855 m!8278524))

(declare-fun m!8278526 () Bool)

(assert (=> b!7903861 m!8278526))

(assert (=> b!7903861 m!8278526))

(declare-fun m!8278528 () Bool)

(assert (=> b!7903861 m!8278528))

(declare-fun m!8278530 () Bool)

(assert (=> b!7903861 m!8278530))

(declare-fun m!8278532 () Bool)

(assert (=> b!7903863 m!8278532))

(declare-fun m!8278534 () Bool)

(assert (=> b!7903863 m!8278534))

(check-sat (not b!7903858) (not b_next!135613) (not b!7903865) (not b!7903855) tp_is_empty!52989 (not b!7903860) (not b_next!135615) (not b!7903856) b_and!352915 (not b!7903857) (not b!7903866) b_and!352917 (not b!7903863) (not b!7903861) (not b!7903864) (not b!7903859))
(check-sat b_and!352917 b_and!352915 (not b_next!135615) (not b_next!135613))
