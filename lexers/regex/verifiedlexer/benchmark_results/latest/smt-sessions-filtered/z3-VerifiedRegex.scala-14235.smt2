; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!744860 () Bool)

(assert start!744860)

(declare-fun b!7897328 () Bool)

(declare-fun b_free!134471 () Bool)

(declare-fun b_next!135261 () Bool)

(assert (=> b!7897328 (= b_free!134471 (not b_next!135261))))

(declare-fun tp!2352811 () Bool)

(declare-fun b_and!352323 () Bool)

(assert (=> b!7897328 (= tp!2352811 b_and!352323)))

(declare-fun b_free!134473 () Bool)

(declare-fun b_next!135263 () Bool)

(assert (=> b!7897328 (= b_free!134473 (not b_next!135263))))

(declare-fun tp!2352808 () Bool)

(declare-fun b_and!352325 () Bool)

(assert (=> b!7897328 (= tp!2352808 b_and!352325)))

(declare-fun e!4661349 () Bool)

(assert (=> b!7897328 (= e!4661349 (and tp!2352811 tp!2352808))))

(declare-fun b!7897329 () Bool)

(declare-fun e!4661351 () Bool)

(declare-fun e!4661356 () Bool)

(declare-fun tp!2352809 () Bool)

(assert (=> b!7897329 (= e!4661351 (and e!4661356 tp!2352809))))

(declare-fun b!7897330 () Bool)

(declare-fun res!3132679 () Bool)

(declare-fun e!4661348 () Bool)

(assert (=> b!7897330 (=> (not res!3132679) (not e!4661348))))

(declare-datatypes ((LexerInterface!8128 0))(
  ( (LexerInterfaceExt!8125 (__x!34991 Int)) (Lexer!8126) )
))
(declare-fun thiss!14377 () LexerInterface!8128)

(declare-datatypes ((List!74128 0))(
  ( (Nil!74004) (Cons!74004 (h!80452 (_ BitVec 16)) (t!388863 List!74128)) )
))
(declare-datatypes ((TokenValue!8852 0))(
  ( (FloatLiteralValue!17704 (text!62409 List!74128)) (TokenValueExt!8851 (__x!34992 Int)) (Broken!44260 (value!285231 List!74128)) (Object!8975) (End!8852) (Def!8852) (Underscore!8852) (Match!8852) (Else!8852) (Error!8852) (Case!8852) (If!8852) (Extends!8852) (Abstract!8852) (Class!8852) (Val!8852) (DelimiterValue!17704 (del!8912 List!74128)) (KeywordValue!8858 (value!285232 List!74128)) (CommentValue!17704 (value!285233 List!74128)) (WhitespaceValue!17704 (value!285234 List!74128)) (IndentationValue!8852 (value!285235 List!74128)) (String!82681) (Int32!8852) (Broken!44261 (value!285236 List!74128)) (Boolean!8853) (Unit!169019) (OperatorValue!8855 (op!8912 List!74128)) (IdentifierValue!17704 (value!285237 List!74128)) (IdentifierValue!17705 (value!285238 List!74128)) (WhitespaceValue!17705 (value!285239 List!74128)) (True!17704) (False!17704) (Broken!44262 (value!285240 List!74128)) (Broken!44263 (value!285241 List!74128)) (True!17705) (RightBrace!8852) (RightBracket!8852) (Colon!8852) (Null!8852) (Comma!8852) (LeftBracket!8852) (False!17705) (LeftBrace!8852) (ImaginaryLiteralValue!8852 (text!62410 List!74128)) (StringLiteralValue!26556 (value!285242 List!74128)) (EOFValue!8852 (value!285243 List!74128)) (IdentValue!8852 (value!285244 List!74128)) (DelimiterValue!17705 (value!285245 List!74128)) (DedentValue!8852 (value!285246 List!74128)) (NewLineValue!8852 (value!285247 List!74128)) (IntegerValue!26556 (value!285248 (_ BitVec 32)) (text!62411 List!74128)) (IntegerValue!26557 (value!285249 Int) (text!62412 List!74128)) (Times!8852) (Or!8852) (Equal!8852) (Minus!8852) (Broken!44264 (value!285250 List!74128)) (And!8852) (Div!8852) (LessEqual!8852) (Mod!8852) (Concat!30091) (Not!8852) (Plus!8852) (SpaceValue!8852 (value!285251 List!74128)) (IntegerValue!26558 (value!285252 Int) (text!62413 List!74128)) (StringLiteralValue!26557 (text!62414 List!74128)) (FloatLiteralValue!17705 (text!62415 List!74128)) (BytesLiteralValue!8852 (value!285253 List!74128)) (CommentValue!17705 (value!285254 List!74128)) (StringLiteralValue!26558 (value!285255 List!74128)) (ErrorTokenValue!8852 (msg!8913 List!74128)) )
))
(declare-datatypes ((C!42808 0))(
  ( (C!42809 (val!31868 Int)) )
))
(declare-datatypes ((List!74129 0))(
  ( (Nil!74005) (Cons!74005 (h!80453 C!42808) (t!388864 List!74129)) )
))
(declare-datatypes ((IArray!31481 0))(
  ( (IArray!31482 (innerList!15798 List!74129)) )
))
(declare-datatypes ((Conc!15710 0))(
  ( (Node!15710 (left!56481 Conc!15710) (right!56811 Conc!15710) (csize!31650 Int) (cheight!15921 Int)) (Leaf!29946 (xs!19092 IArray!31481) (csize!31651 Int)) (Empty!15710) )
))
(declare-datatypes ((BalanceConc!30538 0))(
  ( (BalanceConc!30539 (c!1449515 Conc!15710)) )
))
(declare-datatypes ((Regex!21239 0))(
  ( (ElementMatch!21239 (c!1449516 C!42808)) (Concat!30092 (regOne!42990 Regex!21239) (regTwo!42990 Regex!21239)) (EmptyExpr!21239) (Star!21239 (reg!21568 Regex!21239)) (EmptyLang!21239) (Union!21239 (regOne!42991 Regex!21239) (regTwo!42991 Regex!21239)) )
))
(declare-datatypes ((String!82682 0))(
  ( (String!82683 (value!285256 String)) )
))
(declare-datatypes ((TokenValueInjection!17012 0))(
  ( (TokenValueInjection!17013 (toValue!11573 Int) (toChars!11432 Int)) )
))
(declare-datatypes ((Rule!16872 0))(
  ( (Rule!16873 (regex!8536 Regex!21239) (tag!9400 String!82682) (isSeparator!8536 Bool) (transformation!8536 TokenValueInjection!17012)) )
))
(declare-datatypes ((List!74130 0))(
  ( (Nil!74006) (Cons!74006 (h!80454 Rule!16872) (t!388865 List!74130)) )
))
(declare-fun rulesArg!141 () List!74130)

(declare-fun rulesValidInductive!3347 (LexerInterface!8128 List!74130) Bool)

(assert (=> b!7897330 (= res!3132679 (rulesValidInductive!3347 thiss!14377 rulesArg!141))))

(declare-fun res!3132681 () Bool)

(assert (=> start!744860 (=> (not res!3132681) (not e!4661348))))

(get-info :version)

(assert (=> start!744860 (= res!3132681 ((_ is Lexer!8126) thiss!14377))))

(assert (=> start!744860 e!4661348))

(assert (=> start!744860 true))

(assert (=> start!744860 e!4661351))

(declare-fun e!4661355 () Bool)

(assert (=> start!744860 e!4661355))

(declare-fun b!7897331 () Bool)

(declare-fun e!4661350 () Bool)

(declare-fun e!4661354 () Bool)

(assert (=> b!7897331 (= e!4661350 e!4661354)))

(declare-fun res!3132677 () Bool)

(assert (=> b!7897331 (=> res!3132677 e!4661354)))

(declare-datatypes ((Token!15492 0))(
  ( (Token!15493 (value!285257 TokenValue!8852) (rule!11814 Rule!16872) (size!42865 Int) (originalCharacters!8777 List!74129)) )
))
(declare-datatypes ((tuple2!70080 0))(
  ( (tuple2!70081 (_1!38343 Token!15492) (_2!38343 List!74129)) )
))
(declare-datatypes ((Option!17818 0))(
  ( (None!17817) (Some!17817 (v!54954 tuple2!70080)) )
))
(declare-fun lt!2681822 () Option!17818)

(declare-fun isEmpty!42448 (Option!17818) Bool)

(assert (=> b!7897331 (= res!3132677 (isEmpty!42448 lt!2681822))))

(declare-fun input!1184 () List!74129)

(declare-fun maxPrefixOneRule!3716 (LexerInterface!8128 Rule!16872 List!74129) Option!17818)

(assert (=> b!7897331 (= lt!2681822 (maxPrefixOneRule!3716 thiss!14377 (h!80454 rulesArg!141) input!1184))))

(declare-fun tp!2352812 () Bool)

(declare-fun b!7897332 () Bool)

(declare-fun inv!94993 (String!82682) Bool)

(declare-fun inv!94995 (TokenValueInjection!17012) Bool)

(assert (=> b!7897332 (= e!4661356 (and tp!2352812 (inv!94993 (tag!9400 (h!80454 rulesArg!141))) (inv!94995 (transformation!8536 (h!80454 rulesArg!141))) e!4661349))))

(declare-fun b!7897333 () Bool)

(declare-fun tp_is_empty!52853 () Bool)

(declare-fun tp!2352810 () Bool)

(assert (=> b!7897333 (= e!4661355 (and tp_is_empty!52853 tp!2352810))))

(declare-fun b!7897334 () Bool)

(declare-fun res!3132680 () Bool)

(assert (=> b!7897334 (=> res!3132680 e!4661354)))

(declare-fun isDefined!14414 (Option!17818) Bool)

(assert (=> b!7897334 (= res!3132680 (not (isDefined!14414 lt!2681822)))))

(declare-fun b!7897335 () Bool)

(declare-fun res!3132676 () Bool)

(assert (=> b!7897335 (=> (not res!3132676) (not e!4661348))))

(declare-fun isEmpty!42449 (List!74130) Bool)

(assert (=> b!7897335 (= res!3132676 (not (isEmpty!42449 rulesArg!141)))))

(declare-fun b!7897336 () Bool)

(declare-fun e!4661353 () Bool)

(assert (=> b!7897336 (= e!4661353 true)))

(declare-fun lt!2681824 () Int)

(declare-fun size!42866 (List!74129) Int)

(assert (=> b!7897336 (= lt!2681824 (size!42866 input!1184))))

(declare-fun lt!2681825 () Int)

(declare-fun lt!2681826 () tuple2!70080)

(assert (=> b!7897336 (= lt!2681825 (size!42866 (_2!38343 lt!2681826)))))

(declare-fun b!7897337 () Bool)

(assert (=> b!7897337 (= e!4661354 e!4661353)))

(declare-fun res!3132678 () Bool)

(assert (=> b!7897337 (=> res!3132678 e!4661353)))

(declare-fun list!19157 (BalanceConc!30538) List!74129)

(declare-fun charsOf!5485 (Token!15492) BalanceConc!30538)

(assert (=> b!7897337 (= res!3132678 (not (= (list!19157 (charsOf!5485 (_1!38343 lt!2681826))) (originalCharacters!8777 (_1!38343 lt!2681826)))))))

(declare-fun get!26563 (Option!17818) tuple2!70080)

(assert (=> b!7897337 (= lt!2681826 (get!26563 lt!2681822))))

(declare-fun b!7897338 () Bool)

(assert (=> b!7897338 (= e!4661348 (not e!4661350))))

(declare-fun res!3132682 () Bool)

(assert (=> b!7897338 (=> res!3132682 e!4661350)))

(assert (=> b!7897338 (= res!3132682 (or (not ((_ is Cons!74006) rulesArg!141)) (not ((_ is Nil!74006) (t!388865 rulesArg!141)))))))

(declare-fun isPrefix!6369 (List!74129 List!74129) Bool)

(assert (=> b!7897338 (isPrefix!6369 input!1184 input!1184)))

(declare-datatypes ((Unit!169020 0))(
  ( (Unit!169021) )
))
(declare-fun lt!2681823 () Unit!169020)

(declare-fun lemmaIsPrefixRefl!3880 (List!74129 List!74129) Unit!169020)

(assert (=> b!7897338 (= lt!2681823 (lemmaIsPrefixRefl!3880 input!1184 input!1184))))

(assert (= (and start!744860 res!3132681) b!7897330))

(assert (= (and b!7897330 res!3132679) b!7897335))

(assert (= (and b!7897335 res!3132676) b!7897338))

(assert (= (and b!7897338 (not res!3132682)) b!7897331))

(assert (= (and b!7897331 (not res!3132677)) b!7897334))

(assert (= (and b!7897334 (not res!3132680)) b!7897337))

(assert (= (and b!7897337 (not res!3132678)) b!7897336))

(assert (= b!7897332 b!7897328))

(assert (= b!7897329 b!7897332))

(assert (= (and start!744860 ((_ is Cons!74006) rulesArg!141)) b!7897329))

(assert (= (and start!744860 ((_ is Cons!74005) input!1184)) b!7897333))

(declare-fun m!8272500 () Bool)

(assert (=> b!7897335 m!8272500))

(declare-fun m!8272502 () Bool)

(assert (=> b!7897331 m!8272502))

(declare-fun m!8272504 () Bool)

(assert (=> b!7897331 m!8272504))

(declare-fun m!8272506 () Bool)

(assert (=> b!7897332 m!8272506))

(declare-fun m!8272508 () Bool)

(assert (=> b!7897332 m!8272508))

(declare-fun m!8272510 () Bool)

(assert (=> b!7897334 m!8272510))

(declare-fun m!8272512 () Bool)

(assert (=> b!7897338 m!8272512))

(declare-fun m!8272514 () Bool)

(assert (=> b!7897338 m!8272514))

(declare-fun m!8272516 () Bool)

(assert (=> b!7897337 m!8272516))

(assert (=> b!7897337 m!8272516))

(declare-fun m!8272518 () Bool)

(assert (=> b!7897337 m!8272518))

(declare-fun m!8272520 () Bool)

(assert (=> b!7897337 m!8272520))

(declare-fun m!8272522 () Bool)

(assert (=> b!7897330 m!8272522))

(declare-fun m!8272524 () Bool)

(assert (=> b!7897336 m!8272524))

(declare-fun m!8272526 () Bool)

(assert (=> b!7897336 m!8272526))

(check-sat (not b!7897330) (not b!7897335) (not b_next!135261) (not b_next!135263) (not b!7897331) (not b!7897329) (not b!7897333) tp_is_empty!52853 (not b!7897336) (not b!7897334) (not b!7897338) b_and!352323 b_and!352325 (not b!7897332) (not b!7897337))
(check-sat b_and!352325 b_and!352323 (not b_next!135263) (not b_next!135261))
