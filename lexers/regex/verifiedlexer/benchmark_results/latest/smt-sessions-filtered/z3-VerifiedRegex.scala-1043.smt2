; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52084 () Bool)

(assert start!52084)

(declare-fun b!565712 () Bool)

(declare-fun b_free!15765 () Bool)

(declare-fun b_next!15781 () Bool)

(assert (=> b!565712 (= b_free!15765 (not b_next!15781))))

(declare-fun tp!178479 () Bool)

(declare-fun b_and!55139 () Bool)

(assert (=> b!565712 (= tp!178479 b_and!55139)))

(declare-fun b_free!15767 () Bool)

(declare-fun b_next!15783 () Bool)

(assert (=> b!565712 (= b_free!15767 (not b_next!15783))))

(declare-fun tp!178477 () Bool)

(declare-fun b_and!55141 () Bool)

(assert (=> b!565712 (= tp!178477 b_and!55141)))

(declare-fun b!565725 () Bool)

(declare-fun b_free!15769 () Bool)

(declare-fun b_next!15785 () Bool)

(assert (=> b!565725 (= b_free!15769 (not b_next!15785))))

(declare-fun tp!178481 () Bool)

(declare-fun b_and!55143 () Bool)

(assert (=> b!565725 (= tp!178481 b_and!55143)))

(declare-fun b_free!15771 () Bool)

(declare-fun b_next!15787 () Bool)

(assert (=> b!565725 (= b_free!15771 (not b_next!15787))))

(declare-fun tp!178484 () Bool)

(declare-fun b_and!55145 () Bool)

(assert (=> b!565725 (= tp!178484 b_and!55145)))

(declare-fun b!565695 () Bool)

(declare-datatypes ((C!3736 0))(
  ( (C!3737 (val!2094 Int)) )
))
(declare-datatypes ((List!5586 0))(
  ( (Nil!5576) (Cons!5576 (h!10977 C!3736) (t!76269 List!5586)) )
))
(declare-fun lt!238389 () List!5586)

(declare-fun e!341857 () Bool)

(declare-datatypes ((Regex!1407 0))(
  ( (ElementMatch!1407 (c!106201 C!3736)) (Concat!2504 (regOne!3326 Regex!1407) (regTwo!3326 Regex!1407)) (EmptyExpr!1407) (Star!1407 (reg!1736 Regex!1407)) (EmptyLang!1407) (Union!1407 (regOne!3327 Regex!1407) (regTwo!3327 Regex!1407)) )
))
(declare-datatypes ((List!5587 0))(
  ( (Nil!5577) (Cons!5577 (h!10978 (_ BitVec 16)) (t!76270 List!5587)) )
))
(declare-datatypes ((IArray!3581 0))(
  ( (IArray!3582 (innerList!1848 List!5586)) )
))
(declare-datatypes ((Conc!1790 0))(
  ( (Node!1790 (left!4571 Conc!1790) (right!4901 Conc!1790) (csize!3810 Int) (cheight!2001 Int)) (Leaf!2834 (xs!4427 IArray!3581) (csize!3811 Int)) (Empty!1790) )
))
(declare-datatypes ((BalanceConc!3588 0))(
  ( (BalanceConc!3589 (c!106202 Conc!1790)) )
))
(declare-datatypes ((TokenValue!1097 0))(
  ( (FloatLiteralValue!2194 (text!8124 List!5587)) (TokenValueExt!1096 (__x!4092 Int)) (Broken!5485 (value!35421 List!5587)) (Object!1106) (End!1097) (Def!1097) (Underscore!1097) (Match!1097) (Else!1097) (Error!1097) (Case!1097) (If!1097) (Extends!1097) (Abstract!1097) (Class!1097) (Val!1097) (DelimiterValue!2194 (del!1157 List!5587)) (KeywordValue!1103 (value!35422 List!5587)) (CommentValue!2194 (value!35423 List!5587)) (WhitespaceValue!2194 (value!35424 List!5587)) (IndentationValue!1097 (value!35425 List!5587)) (String!7228) (Int32!1097) (Broken!5486 (value!35426 List!5587)) (Boolean!1098) (Unit!9968) (OperatorValue!1100 (op!1157 List!5587)) (IdentifierValue!2194 (value!35427 List!5587)) (IdentifierValue!2195 (value!35428 List!5587)) (WhitespaceValue!2195 (value!35429 List!5587)) (True!2194) (False!2194) (Broken!5487 (value!35430 List!5587)) (Broken!5488 (value!35431 List!5587)) (True!2195) (RightBrace!1097) (RightBracket!1097) (Colon!1097) (Null!1097) (Comma!1097) (LeftBracket!1097) (False!2195) (LeftBrace!1097) (ImaginaryLiteralValue!1097 (text!8125 List!5587)) (StringLiteralValue!3291 (value!35432 List!5587)) (EOFValue!1097 (value!35433 List!5587)) (IdentValue!1097 (value!35434 List!5587)) (DelimiterValue!2195 (value!35435 List!5587)) (DedentValue!1097 (value!35436 List!5587)) (NewLineValue!1097 (value!35437 List!5587)) (IntegerValue!3291 (value!35438 (_ BitVec 32)) (text!8126 List!5587)) (IntegerValue!3292 (value!35439 Int) (text!8127 List!5587)) (Times!1097) (Or!1097) (Equal!1097) (Minus!1097) (Broken!5489 (value!35440 List!5587)) (And!1097) (Div!1097) (LessEqual!1097) (Mod!1097) (Concat!2505) (Not!1097) (Plus!1097) (SpaceValue!1097 (value!35441 List!5587)) (IntegerValue!3293 (value!35442 Int) (text!8128 List!5587)) (StringLiteralValue!3292 (text!8129 List!5587)) (FloatLiteralValue!2195 (text!8130 List!5587)) (BytesLiteralValue!1097 (value!35443 List!5587)) (CommentValue!2195 (value!35444 List!5587)) (StringLiteralValue!3293 (value!35445 List!5587)) (ErrorTokenValue!1097 (msg!1158 List!5587)) )
))
(declare-datatypes ((String!7229 0))(
  ( (String!7230 (value!35446 String)) )
))
(declare-datatypes ((TokenValueInjection!1962 0))(
  ( (TokenValueInjection!1963 (toValue!1928 Int) (toChars!1787 Int)) )
))
(declare-datatypes ((Rule!1946 0))(
  ( (Rule!1947 (regex!1073 Regex!1407) (tag!1335 String!7229) (isSeparator!1073 Bool) (transformation!1073 TokenValueInjection!1962)) )
))
(declare-datatypes ((Token!1882 0))(
  ( (Token!1883 (value!35447 TokenValue!1097) (rule!1809 Rule!1946) (size!4444 Int) (originalCharacters!1112 List!5586)) )
))
(declare-datatypes ((tuple2!6572 0))(
  ( (tuple2!6573 (_1!3550 Token!1882) (_2!3550 List!5586)) )
))
(declare-datatypes ((Option!1424 0))(
  ( (None!1423) (Some!1423 (v!16268 tuple2!6572)) )
))
(declare-fun lt!238400 () Option!1424)

(declare-fun lt!238393 () tuple2!6572)

(declare-fun lt!238381 () TokenValue!1097)

(declare-fun lt!238382 () List!5586)

(declare-fun lt!238374 () Int)

(assert (=> b!565695 (= e!341857 (and (= (size!4444 (_1!3550 (v!16268 lt!238400))) lt!238374) (= (originalCharacters!1112 (_1!3550 (v!16268 lt!238400))) lt!238382) (= lt!238393 (tuple2!6573 (Token!1883 lt!238381 (rule!1809 (_1!3550 (v!16268 lt!238400))) lt!238374 lt!238382) lt!238389))))))

(declare-fun b!565696 () Bool)

(declare-fun e!341871 () Bool)

(declare-fun e!341859 () Bool)

(declare-fun tp!178480 () Bool)

(assert (=> b!565696 (= e!341871 (and e!341859 tp!178480))))

(declare-fun b!565697 () Bool)

(declare-fun res!242434 () Bool)

(declare-fun e!341863 () Bool)

(assert (=> b!565697 (=> (not res!242434) (not e!341863))))

(declare-datatypes ((List!5588 0))(
  ( (Nil!5578) (Cons!5578 (h!10979 Rule!1946) (t!76271 List!5588)) )
))
(declare-fun rules!3103 () List!5588)

(declare-fun isEmpty!4025 (List!5588) Bool)

(assert (=> b!565697 (= res!242434 (not (isEmpty!4025 rules!3103)))))

(declare-fun b!565698 () Bool)

(declare-fun res!242430 () Bool)

(declare-fun e!341861 () Bool)

(assert (=> b!565698 (=> res!242430 e!341861)))

(declare-fun input!2705 () List!5586)

(declare-fun ++!1561 (List!5586 List!5586) List!5586)

(assert (=> b!565698 (= res!242430 (not (= (++!1561 lt!238382 lt!238389) input!2705)))))

(declare-fun b!565699 () Bool)

(declare-fun e!341870 () Bool)

(declare-fun e!341852 () Bool)

(assert (=> b!565699 (= e!341870 e!341852)))

(declare-fun res!242440 () Bool)

(assert (=> b!565699 (=> (not res!242440) (not e!341852))))

(declare-fun lt!238394 () Option!1424)

(declare-fun isDefined!1235 (Option!1424) Bool)

(assert (=> b!565699 (= res!242440 (isDefined!1235 lt!238394))))

(declare-datatypes ((LexerInterface!959 0))(
  ( (LexerInterfaceExt!956 (__x!4093 Int)) (Lexer!957) )
))
(declare-fun thiss!22590 () LexerInterface!959)

(declare-fun lt!238384 () List!5586)

(declare-fun maxPrefix!657 (LexerInterface!959 List!5588 List!5586) Option!1424)

(assert (=> b!565699 (= lt!238394 (maxPrefix!657 thiss!22590 rules!3103 lt!238384))))

(declare-fun suffix!1342 () List!5586)

(assert (=> b!565699 (= lt!238384 (++!1561 input!2705 suffix!1342))))

(declare-fun b!565701 () Bool)

(declare-fun e!341873 () Bool)

(declare-fun e!341860 () Bool)

(assert (=> b!565701 (= e!341873 e!341860)))

(declare-fun res!242422 () Bool)

(assert (=> b!565701 (=> (not res!242422) (not e!341860))))

(declare-fun lt!238398 () List!5586)

(assert (=> b!565701 (= res!242422 (= lt!238398 lt!238384))))

(declare-fun lt!238392 () List!5586)

(assert (=> b!565701 (= lt!238398 (++!1561 lt!238392 suffix!1342))))

(declare-fun b!565702 () Bool)

(declare-fun e!341851 () Bool)

(declare-fun e!341849 () Bool)

(assert (=> b!565702 (= e!341851 e!341849)))

(declare-fun res!242432 () Bool)

(assert (=> b!565702 (=> res!242432 e!341849)))

(declare-fun lt!238373 () Int)

(assert (=> b!565702 (= res!242432 (>= lt!238374 lt!238373))))

(declare-fun b!565703 () Bool)

(declare-fun res!242420 () Bool)

(assert (=> b!565703 (=> (not res!242420) (not e!341857))))

(declare-fun size!4445 (List!5586) Int)

(assert (=> b!565703 (= res!242420 (= (size!4444 (_1!3550 (v!16268 lt!238400))) (size!4445 (originalCharacters!1112 (_1!3550 (v!16268 lt!238400))))))))

(declare-fun b!565704 () Bool)

(declare-fun e!341856 () Bool)

(declare-fun tp_is_empty!3169 () Bool)

(declare-fun tp!178475 () Bool)

(assert (=> b!565704 (= e!341856 (and tp_is_empty!3169 tp!178475))))

(declare-fun b!565705 () Bool)

(declare-fun e!341862 () Bool)

(assert (=> b!565705 (= e!341860 (not e!341862))))

(declare-fun res!242424 () Bool)

(assert (=> b!565705 (=> res!242424 e!341862)))

(declare-fun isPrefix!707 (List!5586 List!5586) Bool)

(assert (=> b!565705 (= res!242424 (not (isPrefix!707 input!2705 lt!238398)))))

(assert (=> b!565705 (isPrefix!707 lt!238392 lt!238398)))

(declare-datatypes ((Unit!9969 0))(
  ( (Unit!9970) )
))
(declare-fun lt!238388 () Unit!9969)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!554 (List!5586 List!5586) Unit!9969)

(assert (=> b!565705 (= lt!238388 (lemmaConcatTwoListThenFirstIsPrefix!554 lt!238392 suffix!1342))))

(assert (=> b!565705 (isPrefix!707 input!2705 lt!238384)))

(declare-fun lt!238372 () Unit!9969)

(assert (=> b!565705 (= lt!238372 (lemmaConcatTwoListThenFirstIsPrefix!554 input!2705 suffix!1342))))

(assert (=> b!565705 e!341857))

(declare-fun res!242417 () Bool)

(assert (=> b!565705 (=> (not res!242417) (not e!341857))))

(assert (=> b!565705 (= res!242417 (= (value!35447 (_1!3550 (v!16268 lt!238400))) lt!238381))))

(declare-fun apply!1338 (TokenValueInjection!1962 BalanceConc!3588) TokenValue!1097)

(declare-fun seqFromList!1261 (List!5586) BalanceConc!3588)

(assert (=> b!565705 (= lt!238381 (apply!1338 (transformation!1073 (rule!1809 (_1!3550 (v!16268 lt!238400)))) (seqFromList!1261 lt!238382)))))

(declare-fun lt!238396 () Unit!9969)

(declare-fun token!491 () Token!1882)

(declare-fun lemmaInv!209 (TokenValueInjection!1962) Unit!9969)

(assert (=> b!565705 (= lt!238396 (lemmaInv!209 (transformation!1073 (rule!1809 token!491))))))

(declare-fun lt!238383 () Unit!9969)

(assert (=> b!565705 (= lt!238383 (lemmaInv!209 (transformation!1073 (rule!1809 (_1!3550 (v!16268 lt!238400))))))))

(declare-fun ruleValid!283 (LexerInterface!959 Rule!1946) Bool)

(assert (=> b!565705 (ruleValid!283 thiss!22590 (rule!1809 token!491))))

(declare-fun lt!238376 () Unit!9969)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!140 (LexerInterface!959 Rule!1946 List!5588) Unit!9969)

(assert (=> b!565705 (= lt!238376 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!140 thiss!22590 (rule!1809 token!491) rules!3103))))

(assert (=> b!565705 (ruleValid!283 thiss!22590 (rule!1809 (_1!3550 (v!16268 lt!238400))))))

(declare-fun lt!238379 () Unit!9969)

(assert (=> b!565705 (= lt!238379 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!140 thiss!22590 (rule!1809 (_1!3550 (v!16268 lt!238400))) rules!3103))))

(assert (=> b!565705 (isPrefix!707 input!2705 input!2705)))

(declare-fun lt!238377 () Unit!9969)

(declare-fun lemmaIsPrefixRefl!445 (List!5586 List!5586) Unit!9969)

(assert (=> b!565705 (= lt!238377 (lemmaIsPrefixRefl!445 input!2705 input!2705))))

(assert (=> b!565705 (= (_2!3550 (v!16268 lt!238400)) lt!238389)))

(declare-fun lt!238399 () Unit!9969)

(declare-fun lemmaSamePrefixThenSameSuffix!430 (List!5586 List!5586 List!5586 List!5586 List!5586) Unit!9969)

(assert (=> b!565705 (= lt!238399 (lemmaSamePrefixThenSameSuffix!430 lt!238382 (_2!3550 (v!16268 lt!238400)) lt!238382 lt!238389 input!2705))))

(declare-fun getSuffix!226 (List!5586 List!5586) List!5586)

(assert (=> b!565705 (= lt!238389 (getSuffix!226 input!2705 lt!238382))))

(declare-fun lt!238375 () List!5586)

(assert (=> b!565705 (isPrefix!707 lt!238382 lt!238375)))

(assert (=> b!565705 (= lt!238375 (++!1561 lt!238382 (_2!3550 (v!16268 lt!238400))))))

(declare-fun lt!238385 () Unit!9969)

(assert (=> b!565705 (= lt!238385 (lemmaConcatTwoListThenFirstIsPrefix!554 lt!238382 (_2!3550 (v!16268 lt!238400))))))

(declare-fun lt!238397 () Unit!9969)

(declare-fun lemmaCharactersSize!140 (Token!1882) Unit!9969)

(assert (=> b!565705 (= lt!238397 (lemmaCharactersSize!140 token!491))))

(declare-fun lt!238401 () Unit!9969)

(assert (=> b!565705 (= lt!238401 (lemmaCharactersSize!140 (_1!3550 (v!16268 lt!238400))))))

(declare-fun lt!238395 () Unit!9969)

(declare-fun e!341864 () Unit!9969)

(assert (=> b!565705 (= lt!238395 e!341864)))

(declare-fun c!106200 () Bool)

(assert (=> b!565705 (= c!106200 (> lt!238374 lt!238373))))

(assert (=> b!565705 (= lt!238373 (size!4445 lt!238392))))

(assert (=> b!565705 (= lt!238374 (size!4445 lt!238382))))

(declare-fun list!2313 (BalanceConc!3588) List!5586)

(declare-fun charsOf!702 (Token!1882) BalanceConc!3588)

(assert (=> b!565705 (= lt!238382 (list!2313 (charsOf!702 (_1!3550 (v!16268 lt!238400)))))))

(assert (=> b!565705 (= lt!238400 (Some!1423 lt!238393))))

(assert (=> b!565705 (= lt!238393 (tuple2!6573 (_1!3550 (v!16268 lt!238400)) (_2!3550 (v!16268 lt!238400))))))

(declare-fun lt!238390 () Unit!9969)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!150 (List!5586 List!5586 List!5586 List!5586) Unit!9969)

(assert (=> b!565705 (= lt!238390 (lemmaConcatSameAndSameSizesThenSameLists!150 lt!238392 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!565706 () Bool)

(declare-fun tp!178483 () Bool)

(declare-fun e!341865 () Bool)

(declare-fun inv!7004 (String!7229) Bool)

(declare-fun inv!7007 (TokenValueInjection!1962) Bool)

(assert (=> b!565706 (= e!341859 (and tp!178483 (inv!7004 (tag!1335 (h!10979 rules!3103))) (inv!7007 (transformation!1073 (h!10979 rules!3103))) e!341865))))

(declare-fun b!565707 () Bool)

(declare-fun e!341868 () Bool)

(declare-fun get!2124 (Option!1424) tuple2!6572)

(assert (=> b!565707 (= e!341868 (= (_1!3550 (get!2124 lt!238400)) (_1!3550 (v!16268 lt!238400))))))

(declare-fun b!565708 () Bool)

(declare-fun e!341872 () Bool)

(assert (=> b!565708 (= e!341872 e!341873)))

(declare-fun res!242431 () Bool)

(assert (=> b!565708 (=> (not res!242431) (not e!341873))))

(get-info :version)

(assert (=> b!565708 (= res!242431 ((_ is Some!1423) lt!238400))))

(assert (=> b!565708 (= lt!238400 (maxPrefix!657 thiss!22590 rules!3103 input!2705))))

(declare-fun e!341869 () Bool)

(declare-fun tp!178476 () Bool)

(declare-fun b!565709 () Bool)

(declare-fun e!341858 () Bool)

(assert (=> b!565709 (= e!341858 (and tp!178476 (inv!7004 (tag!1335 (rule!1809 token!491))) (inv!7007 (transformation!1073 (rule!1809 token!491))) e!341869))))

(declare-fun lt!238402 () TokenValue!1097)

(declare-fun lt!238387 () List!5586)

(declare-fun b!565710 () Bool)

(declare-fun e!341854 () Bool)

(assert (=> b!565710 (= e!341854 (and (= (size!4444 token!491) lt!238373) (= (originalCharacters!1112 token!491) lt!238392) (= (tuple2!6573 token!491 suffix!1342) (tuple2!6573 (Token!1883 lt!238402 (rule!1809 token!491) lt!238373 lt!238392) lt!238387))))))

(declare-fun b!565711 () Bool)

(declare-fun res!242439 () Bool)

(assert (=> b!565711 (=> res!242439 e!341861)))

(assert (=> b!565711 (= res!242439 (not (= lt!238375 input!2705)))))

(assert (=> b!565712 (= e!341865 (and tp!178479 tp!178477))))

(declare-fun b!565713 () Bool)

(assert (=> b!565713 (= e!341852 e!341872)))

(declare-fun res!242421 () Bool)

(assert (=> b!565713 (=> (not res!242421) (not e!341872))))

(declare-fun lt!238391 () tuple2!6572)

(assert (=> b!565713 (= res!242421 (and (= (_1!3550 lt!238391) token!491) (= (_2!3550 lt!238391) suffix!1342)))))

(assert (=> b!565713 (= lt!238391 (get!2124 lt!238394))))

(declare-fun b!565714 () Bool)

(declare-fun res!242428 () Bool)

(assert (=> b!565714 (=> (not res!242428) (not e!341854))))

(assert (=> b!565714 (= res!242428 (= (size!4444 token!491) (size!4445 (originalCharacters!1112 token!491))))))

(declare-fun b!565715 () Bool)

(declare-fun res!242416 () Bool)

(assert (=> b!565715 (=> (not res!242416) (not e!341863))))

(declare-fun isEmpty!4026 (List!5586) Bool)

(assert (=> b!565715 (= res!242416 (not (isEmpty!4026 input!2705)))))

(declare-fun b!565716 () Bool)

(declare-fun res!242418 () Bool)

(assert (=> b!565716 (=> res!242418 e!341861)))

(assert (=> b!565716 (= res!242418 (not (isPrefix!707 lt!238392 input!2705)))))

(declare-fun b!565717 () Bool)

(declare-fun e!341866 () Bool)

(declare-fun tp!178478 () Bool)

(assert (=> b!565717 (= e!341866 (and tp_is_empty!3169 tp!178478))))

(declare-fun b!565718 () Bool)

(declare-fun res!242433 () Bool)

(assert (=> b!565718 (=> res!242433 e!341861)))

(assert (=> b!565718 (= res!242433 (not (isPrefix!707 lt!238382 input!2705)))))

(declare-fun b!565700 () Bool)

(declare-fun res!242438 () Bool)

(assert (=> b!565700 (=> res!242438 e!341861)))

(declare-fun contains!1307 (List!5588 Rule!1946) Bool)

(assert (=> b!565700 (= res!242438 (not (contains!1307 rules!3103 (rule!1809 token!491))))))

(declare-fun res!242427 () Bool)

(assert (=> start!52084 (=> (not res!242427) (not e!341863))))

(assert (=> start!52084 (= res!242427 ((_ is Lexer!957) thiss!22590))))

(assert (=> start!52084 e!341863))

(assert (=> start!52084 e!341856))

(assert (=> start!52084 e!341871))

(declare-fun e!341855 () Bool)

(declare-fun inv!7008 (Token!1882) Bool)

(assert (=> start!52084 (and (inv!7008 token!491) e!341855)))

(assert (=> start!52084 true))

(assert (=> start!52084 e!341866))

(declare-fun b!565719 () Bool)

(assert (=> b!565719 (= e!341863 e!341870)))

(declare-fun res!242423 () Bool)

(assert (=> b!565719 (=> (not res!242423) (not e!341870))))

(assert (=> b!565719 (= res!242423 (= lt!238392 input!2705))))

(assert (=> b!565719 (= lt!238392 (list!2313 (charsOf!702 token!491)))))

(declare-fun b!565720 () Bool)

(declare-fun res!242435 () Bool)

(assert (=> b!565720 (=> res!242435 e!341861)))

(assert (=> b!565720 (= res!242435 (not (= (getSuffix!226 input!2705 input!2705) Nil!5576)))))

(declare-fun b!565721 () Bool)

(assert (=> b!565721 (= e!341862 e!341861)))

(declare-fun res!242429 () Bool)

(assert (=> b!565721 (=> res!242429 e!341861)))

(assert (=> b!565721 (= res!242429 (>= lt!238374 lt!238373))))

(assert (=> b!565721 e!341851))

(declare-fun res!242437 () Bool)

(assert (=> b!565721 (=> (not res!242437) (not e!341851))))

(declare-fun maxPrefixOneRule!358 (LexerInterface!959 Rule!1946 List!5586) Option!1424)

(assert (=> b!565721 (= res!242437 (= (maxPrefixOneRule!358 thiss!22590 (rule!1809 token!491) lt!238384) (Some!1423 (tuple2!6573 (Token!1883 lt!238402 (rule!1809 token!491) lt!238373 lt!238392) suffix!1342))))))

(declare-fun lt!238386 () Unit!9969)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!108 (LexerInterface!959 List!5588 List!5586 List!5586 List!5586 Rule!1946) Unit!9969)

(assert (=> b!565721 (= lt!238386 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!108 thiss!22590 rules!3103 lt!238392 lt!238384 suffix!1342 (rule!1809 token!491)))))

(assert (=> b!565721 (= (maxPrefixOneRule!358 thiss!22590 (rule!1809 (_1!3550 (v!16268 lt!238400))) input!2705) (Some!1423 (tuple2!6573 (Token!1883 lt!238381 (rule!1809 (_1!3550 (v!16268 lt!238400))) lt!238374 lt!238382) (_2!3550 (v!16268 lt!238400)))))))

(declare-fun lt!238380 () Unit!9969)

(assert (=> b!565721 (= lt!238380 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!108 thiss!22590 rules!3103 lt!238382 input!2705 (_2!3550 (v!16268 lt!238400)) (rule!1809 (_1!3550 (v!16268 lt!238400)))))))

(assert (=> b!565721 e!341854))

(declare-fun res!242425 () Bool)

(assert (=> b!565721 (=> (not res!242425) (not e!341854))))

(assert (=> b!565721 (= res!242425 (= (value!35447 token!491) lt!238402))))

(assert (=> b!565721 (= lt!238402 (apply!1338 (transformation!1073 (rule!1809 token!491)) (seqFromList!1261 lt!238392)))))

(assert (=> b!565721 (= suffix!1342 lt!238387)))

(declare-fun lt!238378 () Unit!9969)

(assert (=> b!565721 (= lt!238378 (lemmaSamePrefixThenSameSuffix!430 lt!238392 suffix!1342 lt!238392 lt!238387 lt!238384))))

(assert (=> b!565721 (= lt!238387 (getSuffix!226 lt!238384 lt!238392))))

(declare-fun b!565722 () Bool)

(declare-fun Unit!9971 () Unit!9969)

(assert (=> b!565722 (= e!341864 Unit!9971)))

(assert (=> b!565722 false))

(declare-fun b!565723 () Bool)

(assert (=> b!565723 (= e!341861 (contains!1307 rules!3103 (rule!1809 (_1!3550 (v!16268 lt!238400)))))))

(assert (=> b!565723 (= lt!238389 (_2!3550 (v!16268 lt!238400)))))

(declare-fun b!565724 () Bool)

(declare-fun tp!178482 () Bool)

(declare-fun inv!21 (TokenValue!1097) Bool)

(assert (=> b!565724 (= e!341855 (and (inv!21 (value!35447 token!491)) e!341858 tp!178482))))

(assert (=> b!565725 (= e!341869 (and tp!178481 tp!178484))))

(declare-fun b!565726 () Bool)

(declare-fun res!242436 () Bool)

(assert (=> b!565726 (=> res!242436 e!341861)))

(declare-fun matchR!554 (Regex!1407 List!5586) Bool)

(assert (=> b!565726 (= res!242436 (not (matchR!554 (regex!1073 (rule!1809 token!491)) input!2705)))))

(declare-fun b!565727 () Bool)

(declare-fun Unit!9972 () Unit!9969)

(assert (=> b!565727 (= e!341864 Unit!9972)))

(declare-fun b!565728 () Bool)

(declare-fun res!242426 () Bool)

(assert (=> b!565728 (=> (not res!242426) (not e!341863))))

(declare-fun rulesInvariant!922 (LexerInterface!959 List!5588) Bool)

(assert (=> b!565728 (= res!242426 (rulesInvariant!922 thiss!22590 rules!3103))))

(declare-fun b!565729 () Bool)

(assert (=> b!565729 (= e!341849 e!341868)))

(declare-fun res!242419 () Bool)

(assert (=> b!565729 (=> (not res!242419) (not e!341868))))

(assert (=> b!565729 (= res!242419 (isDefined!1235 lt!238400))))

(assert (= (and start!52084 res!242427) b!565697))

(assert (= (and b!565697 res!242434) b!565728))

(assert (= (and b!565728 res!242426) b!565715))

(assert (= (and b!565715 res!242416) b!565719))

(assert (= (and b!565719 res!242423) b!565699))

(assert (= (and b!565699 res!242440) b!565713))

(assert (= (and b!565713 res!242421) b!565708))

(assert (= (and b!565708 res!242431) b!565701))

(assert (= (and b!565701 res!242422) b!565705))

(assert (= (and b!565705 c!106200) b!565722))

(assert (= (and b!565705 (not c!106200)) b!565727))

(assert (= (and b!565705 res!242417) b!565703))

(assert (= (and b!565703 res!242420) b!565695))

(assert (= (and b!565705 (not res!242424)) b!565721))

(assert (= (and b!565721 res!242425) b!565714))

(assert (= (and b!565714 res!242428) b!565710))

(assert (= (and b!565721 res!242437) b!565702))

(assert (= (and b!565702 (not res!242432)) b!565729))

(assert (= (and b!565729 res!242419) b!565707))

(assert (= (and b!565721 (not res!242429)) b!565700))

(assert (= (and b!565700 (not res!242438)) b!565726))

(assert (= (and b!565726 (not res!242436)) b!565716))

(assert (= (and b!565716 (not res!242418)) b!565720))

(assert (= (and b!565720 (not res!242435)) b!565711))

(assert (= (and b!565711 (not res!242439)) b!565718))

(assert (= (and b!565718 (not res!242433)) b!565698))

(assert (= (and b!565698 (not res!242430)) b!565723))

(assert (= (and start!52084 ((_ is Cons!5576) suffix!1342)) b!565704))

(assert (= b!565706 b!565712))

(assert (= b!565696 b!565706))

(assert (= (and start!52084 ((_ is Cons!5578) rules!3103)) b!565696))

(assert (= b!565709 b!565725))

(assert (= b!565724 b!565709))

(assert (= start!52084 b!565724))

(assert (= (and start!52084 ((_ is Cons!5576) input!2705)) b!565717))

(declare-fun m!819167 () Bool)

(assert (=> b!565724 m!819167))

(declare-fun m!819169 () Bool)

(assert (=> start!52084 m!819169))

(declare-fun m!819171 () Bool)

(assert (=> b!565728 m!819171))

(declare-fun m!819173 () Bool)

(assert (=> b!565705 m!819173))

(declare-fun m!819175 () Bool)

(assert (=> b!565705 m!819175))

(declare-fun m!819177 () Bool)

(assert (=> b!565705 m!819177))

(declare-fun m!819179 () Bool)

(assert (=> b!565705 m!819179))

(declare-fun m!819181 () Bool)

(assert (=> b!565705 m!819181))

(declare-fun m!819183 () Bool)

(assert (=> b!565705 m!819183))

(declare-fun m!819185 () Bool)

(assert (=> b!565705 m!819185))

(declare-fun m!819187 () Bool)

(assert (=> b!565705 m!819187))

(declare-fun m!819189 () Bool)

(assert (=> b!565705 m!819189))

(declare-fun m!819191 () Bool)

(assert (=> b!565705 m!819191))

(declare-fun m!819193 () Bool)

(assert (=> b!565705 m!819193))

(declare-fun m!819195 () Bool)

(assert (=> b!565705 m!819195))

(declare-fun m!819197 () Bool)

(assert (=> b!565705 m!819197))

(declare-fun m!819199 () Bool)

(assert (=> b!565705 m!819199))

(declare-fun m!819201 () Bool)

(assert (=> b!565705 m!819201))

(declare-fun m!819203 () Bool)

(assert (=> b!565705 m!819203))

(declare-fun m!819205 () Bool)

(assert (=> b!565705 m!819205))

(declare-fun m!819207 () Bool)

(assert (=> b!565705 m!819207))

(declare-fun m!819209 () Bool)

(assert (=> b!565705 m!819209))

(declare-fun m!819211 () Bool)

(assert (=> b!565705 m!819211))

(declare-fun m!819213 () Bool)

(assert (=> b!565705 m!819213))

(assert (=> b!565705 m!819179))

(declare-fun m!819215 () Bool)

(assert (=> b!565705 m!819215))

(declare-fun m!819217 () Bool)

(assert (=> b!565705 m!819217))

(declare-fun m!819219 () Bool)

(assert (=> b!565705 m!819219))

(declare-fun m!819221 () Bool)

(assert (=> b!565705 m!819221))

(declare-fun m!819223 () Bool)

(assert (=> b!565705 m!819223))

(assert (=> b!565705 m!819207))

(declare-fun m!819225 () Bool)

(assert (=> b!565705 m!819225))

(declare-fun m!819227 () Bool)

(assert (=> b!565721 m!819227))

(declare-fun m!819229 () Bool)

(assert (=> b!565721 m!819229))

(declare-fun m!819231 () Bool)

(assert (=> b!565721 m!819231))

(declare-fun m!819233 () Bool)

(assert (=> b!565721 m!819233))

(assert (=> b!565721 m!819229))

(declare-fun m!819235 () Bool)

(assert (=> b!565721 m!819235))

(declare-fun m!819237 () Bool)

(assert (=> b!565721 m!819237))

(declare-fun m!819239 () Bool)

(assert (=> b!565721 m!819239))

(declare-fun m!819241 () Bool)

(assert (=> b!565721 m!819241))

(declare-fun m!819243 () Bool)

(assert (=> b!565720 m!819243))

(declare-fun m!819245 () Bool)

(assert (=> b!565701 m!819245))

(declare-fun m!819247 () Bool)

(assert (=> b!565703 m!819247))

(declare-fun m!819249 () Bool)

(assert (=> b!565708 m!819249))

(declare-fun m!819251 () Bool)

(assert (=> b!565699 m!819251))

(declare-fun m!819253 () Bool)

(assert (=> b!565699 m!819253))

(declare-fun m!819255 () Bool)

(assert (=> b!565699 m!819255))

(declare-fun m!819257 () Bool)

(assert (=> b!565729 m!819257))

(declare-fun m!819259 () Bool)

(assert (=> b!565698 m!819259))

(declare-fun m!819261 () Bool)

(assert (=> b!565726 m!819261))

(declare-fun m!819263 () Bool)

(assert (=> b!565700 m!819263))

(declare-fun m!819265 () Bool)

(assert (=> b!565706 m!819265))

(declare-fun m!819267 () Bool)

(assert (=> b!565706 m!819267))

(declare-fun m!819269 () Bool)

(assert (=> b!565719 m!819269))

(assert (=> b!565719 m!819269))

(declare-fun m!819271 () Bool)

(assert (=> b!565719 m!819271))

(declare-fun m!819273 () Bool)

(assert (=> b!565718 m!819273))

(declare-fun m!819275 () Bool)

(assert (=> b!565697 m!819275))

(declare-fun m!819277 () Bool)

(assert (=> b!565707 m!819277))

(declare-fun m!819279 () Bool)

(assert (=> b!565716 m!819279))

(declare-fun m!819281 () Bool)

(assert (=> b!565713 m!819281))

(declare-fun m!819283 () Bool)

(assert (=> b!565723 m!819283))

(declare-fun m!819285 () Bool)

(assert (=> b!565715 m!819285))

(declare-fun m!819287 () Bool)

(assert (=> b!565714 m!819287))

(declare-fun m!819289 () Bool)

(assert (=> b!565709 m!819289))

(declare-fun m!819291 () Bool)

(assert (=> b!565709 m!819291))

(check-sat (not start!52084) (not b_next!15787) (not b!565696) (not b!565697) (not b!565699) (not b!565708) (not b!565726) (not b!565713) (not b_next!15785) (not b!565709) (not b!565717) b_and!55143 (not b!565721) (not b!565719) (not b!565728) (not b!565724) (not b!565707) (not b!565704) (not b!565705) (not b!565714) b_and!55145 (not b!565729) (not b!565706) (not b!565715) (not b_next!15783) (not b_next!15781) (not b!565703) (not b!565701) (not b!565718) (not b!565698) (not b!565716) (not b!565723) tp_is_empty!3169 (not b!565700) (not b!565720) b_and!55139 b_and!55141)
(check-sat (not b_next!15787) b_and!55143 b_and!55145 (not b_next!15785) (not b_next!15783) (not b_next!15781) b_and!55139 b_and!55141)
(get-model)

(declare-fun b!565740 () Bool)

(declare-fun res!242450 () Bool)

(declare-fun e!341878 () Bool)

(assert (=> b!565740 (=> (not res!242450) (not e!341878))))

(declare-fun lt!238405 () List!5586)

(assert (=> b!565740 (= res!242450 (= (size!4445 lt!238405) (+ (size!4445 lt!238392) (size!4445 suffix!1342))))))

(declare-fun b!565738 () Bool)

(declare-fun e!341879 () List!5586)

(assert (=> b!565738 (= e!341879 suffix!1342)))

(declare-fun d!198164 () Bool)

(assert (=> d!198164 e!341878))

(declare-fun res!242449 () Bool)

(assert (=> d!198164 (=> (not res!242449) (not e!341878))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!978 (List!5586) (InoxSet C!3736))

(assert (=> d!198164 (= res!242449 (= (content!978 lt!238405) ((_ map or) (content!978 lt!238392) (content!978 suffix!1342))))))

(assert (=> d!198164 (= lt!238405 e!341879)))

(declare-fun c!106205 () Bool)

(assert (=> d!198164 (= c!106205 ((_ is Nil!5576) lt!238392))))

(assert (=> d!198164 (= (++!1561 lt!238392 suffix!1342) lt!238405)))

(declare-fun b!565741 () Bool)

(assert (=> b!565741 (= e!341878 (or (not (= suffix!1342 Nil!5576)) (= lt!238405 lt!238392)))))

(declare-fun b!565739 () Bool)

(assert (=> b!565739 (= e!341879 (Cons!5576 (h!10977 lt!238392) (++!1561 (t!76269 lt!238392) suffix!1342)))))

(assert (= (and d!198164 c!106205) b!565738))

(assert (= (and d!198164 (not c!106205)) b!565739))

(assert (= (and d!198164 res!242449) b!565740))

(assert (= (and b!565740 res!242450) b!565741))

(declare-fun m!819293 () Bool)

(assert (=> b!565740 m!819293))

(assert (=> b!565740 m!819205))

(declare-fun m!819295 () Bool)

(assert (=> b!565740 m!819295))

(declare-fun m!819297 () Bool)

(assert (=> d!198164 m!819297))

(declare-fun m!819299 () Bool)

(assert (=> d!198164 m!819299))

(declare-fun m!819301 () Bool)

(assert (=> d!198164 m!819301))

(declare-fun m!819303 () Bool)

(assert (=> b!565739 m!819303))

(assert (=> b!565701 d!198164))

(declare-fun d!198166 () Bool)

(declare-fun lt!238408 () Bool)

(declare-fun content!979 (List!5588) (InoxSet Rule!1946))

(assert (=> d!198166 (= lt!238408 (select (content!979 rules!3103) (rule!1809 (_1!3550 (v!16268 lt!238400)))))))

(declare-fun e!341884 () Bool)

(assert (=> d!198166 (= lt!238408 e!341884)))

(declare-fun res!242459 () Bool)

(assert (=> d!198166 (=> (not res!242459) (not e!341884))))

(assert (=> d!198166 (= res!242459 ((_ is Cons!5578) rules!3103))))

(assert (=> d!198166 (= (contains!1307 rules!3103 (rule!1809 (_1!3550 (v!16268 lt!238400)))) lt!238408)))

(declare-fun b!565746 () Bool)

(declare-fun e!341885 () Bool)

(assert (=> b!565746 (= e!341884 e!341885)))

(declare-fun res!242460 () Bool)

(assert (=> b!565746 (=> res!242460 e!341885)))

(assert (=> b!565746 (= res!242460 (= (h!10979 rules!3103) (rule!1809 (_1!3550 (v!16268 lt!238400)))))))

(declare-fun b!565747 () Bool)

(assert (=> b!565747 (= e!341885 (contains!1307 (t!76271 rules!3103) (rule!1809 (_1!3550 (v!16268 lt!238400)))))))

(assert (= (and d!198166 res!242459) b!565746))

(assert (= (and b!565746 (not res!242460)) b!565747))

(declare-fun m!819305 () Bool)

(assert (=> d!198166 m!819305))

(declare-fun m!819307 () Bool)

(assert (=> d!198166 m!819307))

(declare-fun m!819309 () Bool)

(assert (=> b!565747 m!819309))

(assert (=> b!565723 d!198166))

(declare-fun b!565864 () Bool)

(declare-fun res!242536 () Bool)

(declare-fun e!341951 () Bool)

(assert (=> b!565864 (=> (not res!242536) (not e!341951))))

(declare-fun lt!238452 () Option!1424)

(assert (=> b!565864 (= res!242536 (= (rule!1809 (_1!3550 (get!2124 lt!238452))) (rule!1809 (_1!3550 (v!16268 lt!238400)))))))

(declare-fun b!565865 () Bool)

(declare-fun e!341952 () Option!1424)

(declare-datatypes ((tuple2!6576 0))(
  ( (tuple2!6577 (_1!3552 List!5586) (_2!3552 List!5586)) )
))
(declare-fun lt!238451 () tuple2!6576)

(declare-fun size!4446 (BalanceConc!3588) Int)

(assert (=> b!565865 (= e!341952 (Some!1423 (tuple2!6573 (Token!1883 (apply!1338 (transformation!1073 (rule!1809 (_1!3550 (v!16268 lt!238400)))) (seqFromList!1261 (_1!3552 lt!238451))) (rule!1809 (_1!3550 (v!16268 lt!238400))) (size!4446 (seqFromList!1261 (_1!3552 lt!238451))) (_1!3552 lt!238451)) (_2!3552 lt!238451))))))

(declare-fun lt!238454 () Unit!9969)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!140 (Regex!1407 List!5586) Unit!9969)

(assert (=> b!565865 (= lt!238454 (longestMatchIsAcceptedByMatchOrIsEmpty!140 (regex!1073 (rule!1809 (_1!3550 (v!16268 lt!238400)))) input!2705))))

(declare-fun res!242539 () Bool)

(declare-fun findLongestMatchInner!156 (Regex!1407 List!5586 Int List!5586 List!5586 Int) tuple2!6576)

(assert (=> b!565865 (= res!242539 (isEmpty!4026 (_1!3552 (findLongestMatchInner!156 (regex!1073 (rule!1809 (_1!3550 (v!16268 lt!238400)))) Nil!5576 (size!4445 Nil!5576) input!2705 input!2705 (size!4445 input!2705)))))))

(declare-fun e!341950 () Bool)

(assert (=> b!565865 (=> res!242539 e!341950)))

(assert (=> b!565865 e!341950))

(declare-fun lt!238450 () Unit!9969)

(assert (=> b!565865 (= lt!238450 lt!238454)))

(declare-fun lt!238453 () Unit!9969)

(declare-fun lemmaSemiInverse!175 (TokenValueInjection!1962 BalanceConc!3588) Unit!9969)

(assert (=> b!565865 (= lt!238453 (lemmaSemiInverse!175 (transformation!1073 (rule!1809 (_1!3550 (v!16268 lt!238400)))) (seqFromList!1261 (_1!3552 lt!238451))))))

(declare-fun d!198168 () Bool)

(declare-fun e!341953 () Bool)

(assert (=> d!198168 e!341953))

(declare-fun res!242540 () Bool)

(assert (=> d!198168 (=> res!242540 e!341953)))

(declare-fun isEmpty!4028 (Option!1424) Bool)

(assert (=> d!198168 (= res!242540 (isEmpty!4028 lt!238452))))

(assert (=> d!198168 (= lt!238452 e!341952)))

(declare-fun c!106224 () Bool)

(assert (=> d!198168 (= c!106224 (isEmpty!4026 (_1!3552 lt!238451)))))

(declare-fun findLongestMatch!136 (Regex!1407 List!5586) tuple2!6576)

(assert (=> d!198168 (= lt!238451 (findLongestMatch!136 (regex!1073 (rule!1809 (_1!3550 (v!16268 lt!238400)))) input!2705))))

(assert (=> d!198168 (ruleValid!283 thiss!22590 (rule!1809 (_1!3550 (v!16268 lt!238400))))))

(assert (=> d!198168 (= (maxPrefixOneRule!358 thiss!22590 (rule!1809 (_1!3550 (v!16268 lt!238400))) input!2705) lt!238452)))

(declare-fun b!565866 () Bool)

(declare-fun res!242538 () Bool)

(assert (=> b!565866 (=> (not res!242538) (not e!341951))))

(assert (=> b!565866 (= res!242538 (< (size!4445 (_2!3550 (get!2124 lt!238452))) (size!4445 input!2705)))))

(declare-fun b!565867 () Bool)

(declare-fun res!242534 () Bool)

(assert (=> b!565867 (=> (not res!242534) (not e!341951))))

(assert (=> b!565867 (= res!242534 (= (++!1561 (list!2313 (charsOf!702 (_1!3550 (get!2124 lt!238452)))) (_2!3550 (get!2124 lt!238452))) input!2705))))

(declare-fun b!565868 () Bool)

(assert (=> b!565868 (= e!341950 (matchR!554 (regex!1073 (rule!1809 (_1!3550 (v!16268 lt!238400)))) (_1!3552 (findLongestMatchInner!156 (regex!1073 (rule!1809 (_1!3550 (v!16268 lt!238400)))) Nil!5576 (size!4445 Nil!5576) input!2705 input!2705 (size!4445 input!2705)))))))

(declare-fun b!565869 () Bool)

(assert (=> b!565869 (= e!341951 (= (size!4444 (_1!3550 (get!2124 lt!238452))) (size!4445 (originalCharacters!1112 (_1!3550 (get!2124 lt!238452))))))))

(declare-fun b!565870 () Bool)

(assert (=> b!565870 (= e!341953 e!341951)))

(declare-fun res!242535 () Bool)

(assert (=> b!565870 (=> (not res!242535) (not e!341951))))

(assert (=> b!565870 (= res!242535 (matchR!554 (regex!1073 (rule!1809 (_1!3550 (v!16268 lt!238400)))) (list!2313 (charsOf!702 (_1!3550 (get!2124 lt!238452))))))))

(declare-fun b!565871 () Bool)

(assert (=> b!565871 (= e!341952 None!1423)))

(declare-fun b!565872 () Bool)

(declare-fun res!242537 () Bool)

(assert (=> b!565872 (=> (not res!242537) (not e!341951))))

(assert (=> b!565872 (= res!242537 (= (value!35447 (_1!3550 (get!2124 lt!238452))) (apply!1338 (transformation!1073 (rule!1809 (_1!3550 (get!2124 lt!238452)))) (seqFromList!1261 (originalCharacters!1112 (_1!3550 (get!2124 lt!238452)))))))))

(assert (= (and d!198168 c!106224) b!565871))

(assert (= (and d!198168 (not c!106224)) b!565865))

(assert (= (and b!565865 (not res!242539)) b!565868))

(assert (= (and d!198168 (not res!242540)) b!565870))

(assert (= (and b!565870 res!242535) b!565867))

(assert (= (and b!565867 res!242534) b!565866))

(assert (= (and b!565866 res!242538) b!565864))

(assert (= (and b!565864 res!242536) b!565872))

(assert (= (and b!565872 res!242537) b!565869))

(declare-fun m!819421 () Bool)

(assert (=> d!198168 m!819421))

(declare-fun m!819423 () Bool)

(assert (=> d!198168 m!819423))

(declare-fun m!819425 () Bool)

(assert (=> d!198168 m!819425))

(assert (=> d!198168 m!819201))

(declare-fun m!819427 () Bool)

(assert (=> b!565872 m!819427))

(declare-fun m!819429 () Bool)

(assert (=> b!565872 m!819429))

(assert (=> b!565872 m!819429))

(declare-fun m!819431 () Bool)

(assert (=> b!565872 m!819431))

(assert (=> b!565867 m!819427))

(declare-fun m!819433 () Bool)

(assert (=> b!565867 m!819433))

(assert (=> b!565867 m!819433))

(declare-fun m!819435 () Bool)

(assert (=> b!565867 m!819435))

(assert (=> b!565867 m!819435))

(declare-fun m!819437 () Bool)

(assert (=> b!565867 m!819437))

(declare-fun m!819439 () Bool)

(assert (=> b!565868 m!819439))

(declare-fun m!819441 () Bool)

(assert (=> b!565868 m!819441))

(assert (=> b!565868 m!819439))

(assert (=> b!565868 m!819441))

(declare-fun m!819443 () Bool)

(assert (=> b!565868 m!819443))

(declare-fun m!819445 () Bool)

(assert (=> b!565868 m!819445))

(assert (=> b!565870 m!819427))

(assert (=> b!565870 m!819433))

(assert (=> b!565870 m!819433))

(assert (=> b!565870 m!819435))

(assert (=> b!565870 m!819435))

(declare-fun m!819447 () Bool)

(assert (=> b!565870 m!819447))

(assert (=> b!565866 m!819427))

(declare-fun m!819449 () Bool)

(assert (=> b!565866 m!819449))

(assert (=> b!565866 m!819441))

(declare-fun m!819451 () Bool)

(assert (=> b!565865 m!819451))

(declare-fun m!819453 () Bool)

(assert (=> b!565865 m!819453))

(assert (=> b!565865 m!819441))

(declare-fun m!819455 () Bool)

(assert (=> b!565865 m!819455))

(assert (=> b!565865 m!819439))

(assert (=> b!565865 m!819455))

(declare-fun m!819457 () Bool)

(assert (=> b!565865 m!819457))

(assert (=> b!565865 m!819455))

(declare-fun m!819459 () Bool)

(assert (=> b!565865 m!819459))

(assert (=> b!565865 m!819439))

(assert (=> b!565865 m!819441))

(assert (=> b!565865 m!819443))

(assert (=> b!565865 m!819455))

(declare-fun m!819461 () Bool)

(assert (=> b!565865 m!819461))

(assert (=> b!565864 m!819427))

(assert (=> b!565869 m!819427))

(declare-fun m!819463 () Bool)

(assert (=> b!565869 m!819463))

(assert (=> b!565721 d!198168))

(declare-fun d!198210 () Bool)

(declare-fun dynLambda!3224 (Int BalanceConc!3588) TokenValue!1097)

(assert (=> d!198210 (= (apply!1338 (transformation!1073 (rule!1809 token!491)) (seqFromList!1261 lt!238392)) (dynLambda!3224 (toValue!1928 (transformation!1073 (rule!1809 token!491))) (seqFromList!1261 lt!238392)))))

(declare-fun b_lambda!21795 () Bool)

(assert (=> (not b_lambda!21795) (not d!198210)))

(declare-fun tb!49251 () Bool)

(declare-fun t!76281 () Bool)

(assert (=> (and b!565712 (= (toValue!1928 (transformation!1073 (h!10979 rules!3103))) (toValue!1928 (transformation!1073 (rule!1809 token!491)))) t!76281) tb!49251))

(declare-fun result!55118 () Bool)

(assert (=> tb!49251 (= result!55118 (inv!21 (dynLambda!3224 (toValue!1928 (transformation!1073 (rule!1809 token!491))) (seqFromList!1261 lt!238392))))))

(declare-fun m!819465 () Bool)

(assert (=> tb!49251 m!819465))

(assert (=> d!198210 t!76281))

(declare-fun b_and!55159 () Bool)

(assert (= b_and!55139 (and (=> t!76281 result!55118) b_and!55159)))

(declare-fun t!76283 () Bool)

(declare-fun tb!49253 () Bool)

(assert (=> (and b!565725 (= (toValue!1928 (transformation!1073 (rule!1809 token!491))) (toValue!1928 (transformation!1073 (rule!1809 token!491)))) t!76283) tb!49253))

(declare-fun result!55122 () Bool)

(assert (= result!55122 result!55118))

(assert (=> d!198210 t!76283))

(declare-fun b_and!55161 () Bool)

(assert (= b_and!55143 (and (=> t!76283 result!55122) b_and!55161)))

(assert (=> d!198210 m!819229))

(declare-fun m!819467 () Bool)

(assert (=> d!198210 m!819467))

(assert (=> b!565721 d!198210))

(declare-fun d!198212 () Bool)

(assert (=> d!198212 (= (maxPrefixOneRule!358 thiss!22590 (rule!1809 (_1!3550 (v!16268 lt!238400))) input!2705) (Some!1423 (tuple2!6573 (Token!1883 (apply!1338 (transformation!1073 (rule!1809 (_1!3550 (v!16268 lt!238400)))) (seqFromList!1261 lt!238382)) (rule!1809 (_1!3550 (v!16268 lt!238400))) (size!4445 lt!238382) lt!238382) (_2!3550 (v!16268 lt!238400)))))))

(declare-fun lt!238484 () Unit!9969)

(declare-fun choose!4014 (LexerInterface!959 List!5588 List!5586 List!5586 List!5586 Rule!1946) Unit!9969)

(assert (=> d!198212 (= lt!238484 (choose!4014 thiss!22590 rules!3103 lt!238382 input!2705 (_2!3550 (v!16268 lt!238400)) (rule!1809 (_1!3550 (v!16268 lt!238400)))))))

(assert (=> d!198212 (not (isEmpty!4025 rules!3103))))

(assert (=> d!198212 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!108 thiss!22590 rules!3103 lt!238382 input!2705 (_2!3550 (v!16268 lt!238400)) (rule!1809 (_1!3550 (v!16268 lt!238400)))) lt!238484)))

(declare-fun bs!68678 () Bool)

(assert (= bs!68678 d!198212))

(assert (=> bs!68678 m!819207))

(assert (=> bs!68678 m!819209))

(declare-fun m!819545 () Bool)

(assert (=> bs!68678 m!819545))

(assert (=> bs!68678 m!819185))

(assert (=> bs!68678 m!819235))

(assert (=> bs!68678 m!819207))

(assert (=> bs!68678 m!819275))

(assert (=> b!565721 d!198212))

(declare-fun d!198222 () Bool)

(declare-fun fromListB!547 (List!5586) BalanceConc!3588)

(assert (=> d!198222 (= (seqFromList!1261 lt!238392) (fromListB!547 lt!238392))))

(declare-fun bs!68679 () Bool)

(assert (= bs!68679 d!198222))

(declare-fun m!819561 () Bool)

(assert (=> bs!68679 m!819561))

(assert (=> b!565721 d!198222))

(declare-fun b!565915 () Bool)

(declare-fun res!242571 () Bool)

(declare-fun e!341976 () Bool)

(assert (=> b!565915 (=> (not res!242571) (not e!341976))))

(declare-fun lt!238489 () Option!1424)

(assert (=> b!565915 (= res!242571 (= (rule!1809 (_1!3550 (get!2124 lt!238489))) (rule!1809 token!491)))))

(declare-fun b!565916 () Bool)

(declare-fun e!341977 () Option!1424)

(declare-fun lt!238488 () tuple2!6576)

(assert (=> b!565916 (= e!341977 (Some!1423 (tuple2!6573 (Token!1883 (apply!1338 (transformation!1073 (rule!1809 token!491)) (seqFromList!1261 (_1!3552 lt!238488))) (rule!1809 token!491) (size!4446 (seqFromList!1261 (_1!3552 lt!238488))) (_1!3552 lt!238488)) (_2!3552 lt!238488))))))

(declare-fun lt!238491 () Unit!9969)

(assert (=> b!565916 (= lt!238491 (longestMatchIsAcceptedByMatchOrIsEmpty!140 (regex!1073 (rule!1809 token!491)) lt!238384))))

(declare-fun res!242574 () Bool)

(assert (=> b!565916 (= res!242574 (isEmpty!4026 (_1!3552 (findLongestMatchInner!156 (regex!1073 (rule!1809 token!491)) Nil!5576 (size!4445 Nil!5576) lt!238384 lt!238384 (size!4445 lt!238384)))))))

(declare-fun e!341975 () Bool)

(assert (=> b!565916 (=> res!242574 e!341975)))

(assert (=> b!565916 e!341975))

(declare-fun lt!238487 () Unit!9969)

(assert (=> b!565916 (= lt!238487 lt!238491)))

(declare-fun lt!238490 () Unit!9969)

(assert (=> b!565916 (= lt!238490 (lemmaSemiInverse!175 (transformation!1073 (rule!1809 token!491)) (seqFromList!1261 (_1!3552 lt!238488))))))

(declare-fun d!198226 () Bool)

(declare-fun e!341978 () Bool)

(assert (=> d!198226 e!341978))

(declare-fun res!242575 () Bool)

(assert (=> d!198226 (=> res!242575 e!341978)))

(assert (=> d!198226 (= res!242575 (isEmpty!4028 lt!238489))))

(assert (=> d!198226 (= lt!238489 e!341977)))

(declare-fun c!106231 () Bool)

(assert (=> d!198226 (= c!106231 (isEmpty!4026 (_1!3552 lt!238488)))))

(assert (=> d!198226 (= lt!238488 (findLongestMatch!136 (regex!1073 (rule!1809 token!491)) lt!238384))))

(assert (=> d!198226 (ruleValid!283 thiss!22590 (rule!1809 token!491))))

(assert (=> d!198226 (= (maxPrefixOneRule!358 thiss!22590 (rule!1809 token!491) lt!238384) lt!238489)))

(declare-fun b!565917 () Bool)

(declare-fun res!242573 () Bool)

(assert (=> b!565917 (=> (not res!242573) (not e!341976))))

(assert (=> b!565917 (= res!242573 (< (size!4445 (_2!3550 (get!2124 lt!238489))) (size!4445 lt!238384)))))

(declare-fun b!565918 () Bool)

(declare-fun res!242569 () Bool)

(assert (=> b!565918 (=> (not res!242569) (not e!341976))))

(assert (=> b!565918 (= res!242569 (= (++!1561 (list!2313 (charsOf!702 (_1!3550 (get!2124 lt!238489)))) (_2!3550 (get!2124 lt!238489))) lt!238384))))

(declare-fun b!565919 () Bool)

(assert (=> b!565919 (= e!341975 (matchR!554 (regex!1073 (rule!1809 token!491)) (_1!3552 (findLongestMatchInner!156 (regex!1073 (rule!1809 token!491)) Nil!5576 (size!4445 Nil!5576) lt!238384 lt!238384 (size!4445 lt!238384)))))))

(declare-fun b!565920 () Bool)

(assert (=> b!565920 (= e!341976 (= (size!4444 (_1!3550 (get!2124 lt!238489))) (size!4445 (originalCharacters!1112 (_1!3550 (get!2124 lt!238489))))))))

(declare-fun b!565921 () Bool)

(assert (=> b!565921 (= e!341978 e!341976)))

(declare-fun res!242570 () Bool)

(assert (=> b!565921 (=> (not res!242570) (not e!341976))))

(assert (=> b!565921 (= res!242570 (matchR!554 (regex!1073 (rule!1809 token!491)) (list!2313 (charsOf!702 (_1!3550 (get!2124 lt!238489))))))))

(declare-fun b!565922 () Bool)

(assert (=> b!565922 (= e!341977 None!1423)))

(declare-fun b!565923 () Bool)

(declare-fun res!242572 () Bool)

(assert (=> b!565923 (=> (not res!242572) (not e!341976))))

(assert (=> b!565923 (= res!242572 (= (value!35447 (_1!3550 (get!2124 lt!238489))) (apply!1338 (transformation!1073 (rule!1809 (_1!3550 (get!2124 lt!238489)))) (seqFromList!1261 (originalCharacters!1112 (_1!3550 (get!2124 lt!238489)))))))))

(assert (= (and d!198226 c!106231) b!565922))

(assert (= (and d!198226 (not c!106231)) b!565916))

(assert (= (and b!565916 (not res!242574)) b!565919))

(assert (= (and d!198226 (not res!242575)) b!565921))

(assert (= (and b!565921 res!242570) b!565918))

(assert (= (and b!565918 res!242569) b!565917))

(assert (= (and b!565917 res!242573) b!565915))

(assert (= (and b!565915 res!242571) b!565923))

(assert (= (and b!565923 res!242572) b!565920))

(declare-fun m!819569 () Bool)

(assert (=> d!198226 m!819569))

(declare-fun m!819571 () Bool)

(assert (=> d!198226 m!819571))

(declare-fun m!819573 () Bool)

(assert (=> d!198226 m!819573))

(assert (=> d!198226 m!819177))

(declare-fun m!819575 () Bool)

(assert (=> b!565923 m!819575))

(declare-fun m!819577 () Bool)

(assert (=> b!565923 m!819577))

(assert (=> b!565923 m!819577))

(declare-fun m!819579 () Bool)

(assert (=> b!565923 m!819579))

(assert (=> b!565918 m!819575))

(declare-fun m!819581 () Bool)

(assert (=> b!565918 m!819581))

(assert (=> b!565918 m!819581))

(declare-fun m!819583 () Bool)

(assert (=> b!565918 m!819583))

(assert (=> b!565918 m!819583))

(declare-fun m!819585 () Bool)

(assert (=> b!565918 m!819585))

(assert (=> b!565919 m!819439))

(declare-fun m!819587 () Bool)

(assert (=> b!565919 m!819587))

(assert (=> b!565919 m!819439))

(assert (=> b!565919 m!819587))

(declare-fun m!819589 () Bool)

(assert (=> b!565919 m!819589))

(declare-fun m!819591 () Bool)

(assert (=> b!565919 m!819591))

(assert (=> b!565921 m!819575))

(assert (=> b!565921 m!819581))

(assert (=> b!565921 m!819581))

(assert (=> b!565921 m!819583))

(assert (=> b!565921 m!819583))

(declare-fun m!819593 () Bool)

(assert (=> b!565921 m!819593))

(assert (=> b!565917 m!819575))

(declare-fun m!819595 () Bool)

(assert (=> b!565917 m!819595))

(assert (=> b!565917 m!819587))

(declare-fun m!819597 () Bool)

(assert (=> b!565916 m!819597))

(declare-fun m!819599 () Bool)

(assert (=> b!565916 m!819599))

(assert (=> b!565916 m!819587))

(declare-fun m!819601 () Bool)

(assert (=> b!565916 m!819601))

(assert (=> b!565916 m!819439))

(assert (=> b!565916 m!819601))

(declare-fun m!819603 () Bool)

(assert (=> b!565916 m!819603))

(assert (=> b!565916 m!819601))

(declare-fun m!819605 () Bool)

(assert (=> b!565916 m!819605))

(assert (=> b!565916 m!819439))

(assert (=> b!565916 m!819587))

(assert (=> b!565916 m!819589))

(assert (=> b!565916 m!819601))

(declare-fun m!819607 () Bool)

(assert (=> b!565916 m!819607))

(assert (=> b!565915 m!819575))

(assert (=> b!565920 m!819575))

(declare-fun m!819609 () Bool)

(assert (=> b!565920 m!819609))

(assert (=> b!565721 d!198226))

(declare-fun d!198230 () Bool)

(assert (=> d!198230 (= (maxPrefixOneRule!358 thiss!22590 (rule!1809 token!491) lt!238384) (Some!1423 (tuple2!6573 (Token!1883 (apply!1338 (transformation!1073 (rule!1809 token!491)) (seqFromList!1261 lt!238392)) (rule!1809 token!491) (size!4445 lt!238392) lt!238392) suffix!1342)))))

(declare-fun lt!238493 () Unit!9969)

(assert (=> d!198230 (= lt!238493 (choose!4014 thiss!22590 rules!3103 lt!238392 lt!238384 suffix!1342 (rule!1809 token!491)))))

(assert (=> d!198230 (not (isEmpty!4025 rules!3103))))

(assert (=> d!198230 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!108 thiss!22590 rules!3103 lt!238392 lt!238384 suffix!1342 (rule!1809 token!491)) lt!238493)))

(declare-fun bs!68680 () Bool)

(assert (= bs!68680 d!198230))

(assert (=> bs!68680 m!819229))

(assert (=> bs!68680 m!819231))

(declare-fun m!819611 () Bool)

(assert (=> bs!68680 m!819611))

(assert (=> bs!68680 m!819205))

(assert (=> bs!68680 m!819233))

(assert (=> bs!68680 m!819229))

(assert (=> bs!68680 m!819275))

(assert (=> b!565721 d!198230))

(declare-fun d!198234 () Bool)

(assert (=> d!198234 (= suffix!1342 lt!238387)))

(declare-fun lt!238499 () Unit!9969)

(declare-fun choose!4016 (List!5586 List!5586 List!5586 List!5586 List!5586) Unit!9969)

(assert (=> d!198234 (= lt!238499 (choose!4016 lt!238392 suffix!1342 lt!238392 lt!238387 lt!238384))))

(assert (=> d!198234 (isPrefix!707 lt!238392 lt!238384)))

(assert (=> d!198234 (= (lemmaSamePrefixThenSameSuffix!430 lt!238392 suffix!1342 lt!238392 lt!238387 lt!238384) lt!238499)))

(declare-fun bs!68682 () Bool)

(assert (= bs!68682 d!198234))

(declare-fun m!819625 () Bool)

(assert (=> bs!68682 m!819625))

(declare-fun m!819627 () Bool)

(assert (=> bs!68682 m!819627))

(assert (=> b!565721 d!198234))

(declare-fun d!198240 () Bool)

(declare-fun lt!238505 () List!5586)

(assert (=> d!198240 (= (++!1561 lt!238392 lt!238505) lt!238384)))

(declare-fun e!341988 () List!5586)

(assert (=> d!198240 (= lt!238505 e!341988)))

(declare-fun c!106236 () Bool)

(assert (=> d!198240 (= c!106236 ((_ is Cons!5576) lt!238392))))

(assert (=> d!198240 (>= (size!4445 lt!238384) (size!4445 lt!238392))))

(assert (=> d!198240 (= (getSuffix!226 lt!238384 lt!238392) lt!238505)))

(declare-fun b!565936 () Bool)

(declare-fun tail!739 (List!5586) List!5586)

(assert (=> b!565936 (= e!341988 (getSuffix!226 (tail!739 lt!238384) (t!76269 lt!238392)))))

(declare-fun b!565937 () Bool)

(assert (=> b!565937 (= e!341988 lt!238384)))

(assert (= (and d!198240 c!106236) b!565936))

(assert (= (and d!198240 (not c!106236)) b!565937))

(declare-fun m!819645 () Bool)

(assert (=> d!198240 m!819645))

(assert (=> d!198240 m!819587))

(assert (=> d!198240 m!819205))

(declare-fun m!819647 () Bool)

(assert (=> b!565936 m!819647))

(assert (=> b!565936 m!819647))

(declare-fun m!819649 () Bool)

(assert (=> b!565936 m!819649))

(assert (=> b!565721 d!198240))

(declare-fun d!198248 () Bool)

(declare-fun res!242586 () Bool)

(declare-fun e!341996 () Bool)

(assert (=> d!198248 (=> (not res!242586) (not e!341996))))

(assert (=> d!198248 (= res!242586 (not (isEmpty!4026 (originalCharacters!1112 token!491))))))

(assert (=> d!198248 (= (inv!7008 token!491) e!341996)))

(declare-fun b!565949 () Bool)

(declare-fun res!242587 () Bool)

(assert (=> b!565949 (=> (not res!242587) (not e!341996))))

(declare-fun dynLambda!3225 (Int TokenValue!1097) BalanceConc!3588)

(assert (=> b!565949 (= res!242587 (= (originalCharacters!1112 token!491) (list!2313 (dynLambda!3225 (toChars!1787 (transformation!1073 (rule!1809 token!491))) (value!35447 token!491)))))))

(declare-fun b!565950 () Bool)

(assert (=> b!565950 (= e!341996 (= (size!4444 token!491) (size!4445 (originalCharacters!1112 token!491))))))

(assert (= (and d!198248 res!242586) b!565949))

(assert (= (and b!565949 res!242587) b!565950))

(declare-fun b_lambda!21801 () Bool)

(assert (=> (not b_lambda!21801) (not b!565949)))

(declare-fun tb!49263 () Bool)

(declare-fun t!76293 () Bool)

(assert (=> (and b!565712 (= (toChars!1787 (transformation!1073 (h!10979 rules!3103))) (toChars!1787 (transformation!1073 (rule!1809 token!491)))) t!76293) tb!49263))

(declare-fun b!565955 () Bool)

(declare-fun e!341999 () Bool)

(declare-fun tp!178491 () Bool)

(declare-fun inv!7011 (Conc!1790) Bool)

(assert (=> b!565955 (= e!341999 (and (inv!7011 (c!106202 (dynLambda!3225 (toChars!1787 (transformation!1073 (rule!1809 token!491))) (value!35447 token!491)))) tp!178491))))

(declare-fun result!55132 () Bool)

(declare-fun inv!7012 (BalanceConc!3588) Bool)

(assert (=> tb!49263 (= result!55132 (and (inv!7012 (dynLambda!3225 (toChars!1787 (transformation!1073 (rule!1809 token!491))) (value!35447 token!491))) e!341999))))

(assert (= tb!49263 b!565955))

(declare-fun m!819661 () Bool)

(assert (=> b!565955 m!819661))

(declare-fun m!819663 () Bool)

(assert (=> tb!49263 m!819663))

(assert (=> b!565949 t!76293))

(declare-fun b_and!55171 () Bool)

(assert (= b_and!55141 (and (=> t!76293 result!55132) b_and!55171)))

(declare-fun t!76295 () Bool)

(declare-fun tb!49265 () Bool)

(assert (=> (and b!565725 (= (toChars!1787 (transformation!1073 (rule!1809 token!491))) (toChars!1787 (transformation!1073 (rule!1809 token!491)))) t!76295) tb!49265))

(declare-fun result!55136 () Bool)

(assert (= result!55136 result!55132))

(assert (=> b!565949 t!76295))

(declare-fun b_and!55173 () Bool)

(assert (= b_and!55145 (and (=> t!76295 result!55136) b_and!55173)))

(declare-fun m!819665 () Bool)

(assert (=> d!198248 m!819665))

(declare-fun m!819669 () Bool)

(assert (=> b!565949 m!819669))

(assert (=> b!565949 m!819669))

(declare-fun m!819671 () Bool)

(assert (=> b!565949 m!819671))

(assert (=> b!565950 m!819287))

(assert (=> start!52084 d!198248))

(declare-fun d!198258 () Bool)

(declare-fun lt!238511 () Bool)

(assert (=> d!198258 (= lt!238511 (select (content!979 rules!3103) (rule!1809 token!491)))))

(declare-fun e!342000 () Bool)

(assert (=> d!198258 (= lt!238511 e!342000)))

(declare-fun res!242588 () Bool)

(assert (=> d!198258 (=> (not res!242588) (not e!342000))))

(assert (=> d!198258 (= res!242588 ((_ is Cons!5578) rules!3103))))

(assert (=> d!198258 (= (contains!1307 rules!3103 (rule!1809 token!491)) lt!238511)))

(declare-fun b!565956 () Bool)

(declare-fun e!342001 () Bool)

(assert (=> b!565956 (= e!342000 e!342001)))

(declare-fun res!242589 () Bool)

(assert (=> b!565956 (=> res!242589 e!342001)))

(assert (=> b!565956 (= res!242589 (= (h!10979 rules!3103) (rule!1809 token!491)))))

(declare-fun b!565957 () Bool)

(assert (=> b!565957 (= e!342001 (contains!1307 (t!76271 rules!3103) (rule!1809 token!491)))))

(assert (= (and d!198258 res!242588) b!565956))

(assert (= (and b!565956 (not res!242589)) b!565957))

(assert (=> d!198258 m!819305))

(declare-fun m!819673 () Bool)

(assert (=> d!198258 m!819673))

(declare-fun m!819675 () Bool)

(assert (=> b!565957 m!819675))

(assert (=> b!565700 d!198258))

(declare-fun b!566015 () Bool)

(declare-fun res!242632 () Bool)

(declare-fun e!342035 () Bool)

(assert (=> b!566015 (=> (not res!242632) (not e!342035))))

(declare-fun call!39325 () Bool)

(assert (=> b!566015 (= res!242632 (not call!39325))))

(declare-fun b!566016 () Bool)

(declare-fun res!242635 () Bool)

(declare-fun e!342039 () Bool)

(assert (=> b!566016 (=> res!242635 e!342039)))

(assert (=> b!566016 (= res!242635 e!342035)))

(declare-fun res!242633 () Bool)

(assert (=> b!566016 (=> (not res!242633) (not e!342035))))

(declare-fun lt!238529 () Bool)

(assert (=> b!566016 (= res!242633 lt!238529)))

(declare-fun b!566017 () Bool)

(declare-fun e!342036 () Bool)

(declare-fun derivativeStep!286 (Regex!1407 C!3736) Regex!1407)

(declare-fun head!1210 (List!5586) C!3736)

(assert (=> b!566017 (= e!342036 (matchR!554 (derivativeStep!286 (regex!1073 (rule!1809 token!491)) (head!1210 input!2705)) (tail!739 input!2705)))))

(declare-fun b!566018 () Bool)

(declare-fun e!342040 () Bool)

(declare-fun e!342038 () Bool)

(assert (=> b!566018 (= e!342040 e!342038)))

(declare-fun c!106248 () Bool)

(assert (=> b!566018 (= c!106248 ((_ is EmptyLang!1407) (regex!1073 (rule!1809 token!491))))))

(declare-fun b!566019 () Bool)

(declare-fun e!342037 () Bool)

(declare-fun e!342041 () Bool)

(assert (=> b!566019 (= e!342037 e!342041)))

(declare-fun res!242637 () Bool)

(assert (=> b!566019 (=> res!242637 e!342041)))

(assert (=> b!566019 (= res!242637 call!39325)))

(declare-fun bm!39320 () Bool)

(assert (=> bm!39320 (= call!39325 (isEmpty!4026 input!2705))))

(declare-fun b!566021 () Bool)

(assert (=> b!566021 (= e!342040 (= lt!238529 call!39325))))

(declare-fun b!566022 () Bool)

(declare-fun res!242634 () Bool)

(assert (=> b!566022 (=> (not res!242634) (not e!342035))))

(assert (=> b!566022 (= res!242634 (isEmpty!4026 (tail!739 input!2705)))))

(declare-fun b!566023 () Bool)

(assert (=> b!566023 (= e!342041 (not (= (head!1210 input!2705) (c!106201 (regex!1073 (rule!1809 token!491))))))))

(declare-fun b!566024 () Bool)

(declare-fun nullable!372 (Regex!1407) Bool)

(assert (=> b!566024 (= e!342036 (nullable!372 (regex!1073 (rule!1809 token!491))))))

(declare-fun b!566025 () Bool)

(declare-fun res!242631 () Bool)

(assert (=> b!566025 (=> res!242631 e!342041)))

(assert (=> b!566025 (= res!242631 (not (isEmpty!4026 (tail!739 input!2705))))))

(declare-fun b!566026 () Bool)

(assert (=> b!566026 (= e!342039 e!342037)))

(declare-fun res!242638 () Bool)

(assert (=> b!566026 (=> (not res!242638) (not e!342037))))

(assert (=> b!566026 (= res!242638 (not lt!238529))))

(declare-fun b!566020 () Bool)

(assert (=> b!566020 (= e!342038 (not lt!238529))))

(declare-fun d!198260 () Bool)

(assert (=> d!198260 e!342040))

(declare-fun c!106249 () Bool)

(assert (=> d!198260 (= c!106249 ((_ is EmptyExpr!1407) (regex!1073 (rule!1809 token!491))))))

(assert (=> d!198260 (= lt!238529 e!342036)))

(declare-fun c!106247 () Bool)

(assert (=> d!198260 (= c!106247 (isEmpty!4026 input!2705))))

(declare-fun validRegex!467 (Regex!1407) Bool)

(assert (=> d!198260 (validRegex!467 (regex!1073 (rule!1809 token!491)))))

(assert (=> d!198260 (= (matchR!554 (regex!1073 (rule!1809 token!491)) input!2705) lt!238529)))

(declare-fun b!566027 () Bool)

(declare-fun res!242636 () Bool)

(assert (=> b!566027 (=> res!242636 e!342039)))

(assert (=> b!566027 (= res!242636 (not ((_ is ElementMatch!1407) (regex!1073 (rule!1809 token!491)))))))

(assert (=> b!566027 (= e!342038 e!342039)))

(declare-fun b!566028 () Bool)

(assert (=> b!566028 (= e!342035 (= (head!1210 input!2705) (c!106201 (regex!1073 (rule!1809 token!491)))))))

(assert (= (and d!198260 c!106247) b!566024))

(assert (= (and d!198260 (not c!106247)) b!566017))

(assert (= (and d!198260 c!106249) b!566021))

(assert (= (and d!198260 (not c!106249)) b!566018))

(assert (= (and b!566018 c!106248) b!566020))

(assert (= (and b!566018 (not c!106248)) b!566027))

(assert (= (and b!566027 (not res!242636)) b!566016))

(assert (= (and b!566016 res!242633) b!566015))

(assert (= (and b!566015 res!242632) b!566022))

(assert (= (and b!566022 res!242634) b!566028))

(assert (= (and b!566016 (not res!242635)) b!566026))

(assert (= (and b!566026 res!242638) b!566019))

(assert (= (and b!566019 (not res!242637)) b!566025))

(assert (= (and b!566025 (not res!242631)) b!566023))

(assert (= (or b!566021 b!566015 b!566019) bm!39320))

(declare-fun m!819741 () Bool)

(assert (=> b!566025 m!819741))

(assert (=> b!566025 m!819741))

(declare-fun m!819743 () Bool)

(assert (=> b!566025 m!819743))

(declare-fun m!819745 () Bool)

(assert (=> b!566023 m!819745))

(assert (=> d!198260 m!819285))

(declare-fun m!819747 () Bool)

(assert (=> d!198260 m!819747))

(assert (=> b!566028 m!819745))

(assert (=> b!566017 m!819745))

(assert (=> b!566017 m!819745))

(declare-fun m!819749 () Bool)

(assert (=> b!566017 m!819749))

(assert (=> b!566017 m!819741))

(assert (=> b!566017 m!819749))

(assert (=> b!566017 m!819741))

(declare-fun m!819751 () Bool)

(assert (=> b!566017 m!819751))

(assert (=> b!566022 m!819741))

(assert (=> b!566022 m!819741))

(assert (=> b!566022 m!819743))

(assert (=> bm!39320 m!819285))

(declare-fun m!819753 () Bool)

(assert (=> b!566024 m!819753))

(assert (=> b!565726 d!198260))

(declare-fun b!566045 () Bool)

(declare-fun e!342054 () Bool)

(declare-fun inv!17 (TokenValue!1097) Bool)

(assert (=> b!566045 (= e!342054 (inv!17 (value!35447 token!491)))))

(declare-fun b!566046 () Bool)

(declare-fun e!342052 () Bool)

(declare-fun inv!15 (TokenValue!1097) Bool)

(assert (=> b!566046 (= e!342052 (inv!15 (value!35447 token!491)))))

(declare-fun b!566047 () Bool)

(declare-fun e!342053 () Bool)

(assert (=> b!566047 (= e!342053 e!342054)))

(declare-fun c!106255 () Bool)

(assert (=> b!566047 (= c!106255 ((_ is IntegerValue!3292) (value!35447 token!491)))))

(declare-fun d!198300 () Bool)

(declare-fun c!106254 () Bool)

(assert (=> d!198300 (= c!106254 ((_ is IntegerValue!3291) (value!35447 token!491)))))

(assert (=> d!198300 (= (inv!21 (value!35447 token!491)) e!342053)))

(declare-fun b!566048 () Bool)

(declare-fun res!242647 () Bool)

(assert (=> b!566048 (=> res!242647 e!342052)))

(assert (=> b!566048 (= res!242647 (not ((_ is IntegerValue!3293) (value!35447 token!491))))))

(assert (=> b!566048 (= e!342054 e!342052)))

(declare-fun b!566049 () Bool)

(declare-fun inv!16 (TokenValue!1097) Bool)

(assert (=> b!566049 (= e!342053 (inv!16 (value!35447 token!491)))))

(assert (= (and d!198300 c!106254) b!566049))

(assert (= (and d!198300 (not c!106254)) b!566047))

(assert (= (and b!566047 c!106255) b!566045))

(assert (= (and b!566047 (not c!106255)) b!566048))

(assert (= (and b!566048 (not res!242647)) b!566046))

(declare-fun m!819755 () Bool)

(assert (=> b!566045 m!819755))

(declare-fun m!819757 () Bool)

(assert (=> b!566046 m!819757))

(declare-fun m!819759 () Bool)

(assert (=> b!566049 m!819759))

(assert (=> b!565724 d!198300))

(declare-fun d!198302 () Bool)

(declare-fun lt!238535 () Int)

(assert (=> d!198302 (>= lt!238535 0)))

(declare-fun e!342071 () Int)

(assert (=> d!198302 (= lt!238535 e!342071)))

(declare-fun c!106264 () Bool)

(assert (=> d!198302 (= c!106264 ((_ is Nil!5576) (originalCharacters!1112 (_1!3550 (v!16268 lt!238400)))))))

(assert (=> d!198302 (= (size!4445 (originalCharacters!1112 (_1!3550 (v!16268 lt!238400)))) lt!238535)))

(declare-fun b!566082 () Bool)

(assert (=> b!566082 (= e!342071 0)))

(declare-fun b!566083 () Bool)

(assert (=> b!566083 (= e!342071 (+ 1 (size!4445 (t!76269 (originalCharacters!1112 (_1!3550 (v!16268 lt!238400)))))))))

(assert (= (and d!198302 c!106264) b!566082))

(assert (= (and d!198302 (not c!106264)) b!566083))

(declare-fun m!819761 () Bool)

(assert (=> b!566083 m!819761))

(assert (=> b!565703 d!198302))

(declare-fun d!198304 () Bool)

(declare-fun res!242666 () Bool)

(declare-fun e!342074 () Bool)

(assert (=> d!198304 (=> (not res!242666) (not e!342074))))

(declare-fun rulesValid!375 (LexerInterface!959 List!5588) Bool)

(assert (=> d!198304 (= res!242666 (rulesValid!375 thiss!22590 rules!3103))))

(assert (=> d!198304 (= (rulesInvariant!922 thiss!22590 rules!3103) e!342074)))

(declare-fun b!566086 () Bool)

(declare-datatypes ((List!5590 0))(
  ( (Nil!5580) (Cons!5580 (h!10981 String!7229) (t!76321 List!5590)) )
))
(declare-fun noDuplicateTag!375 (LexerInterface!959 List!5588 List!5590) Bool)

(assert (=> b!566086 (= e!342074 (noDuplicateTag!375 thiss!22590 rules!3103 Nil!5580))))

(assert (= (and d!198304 res!242666) b!566086))

(declare-fun m!819763 () Bool)

(assert (=> d!198304 m!819763))

(declare-fun m!819765 () Bool)

(assert (=> b!566086 m!819765))

(assert (=> b!565728 d!198304))

(declare-fun d!198306 () Bool)

(assert (=> d!198306 (= (get!2124 lt!238400) (v!16268 lt!238400))))

(assert (=> b!565707 d!198306))

(declare-fun d!198308 () Bool)

(declare-fun list!2315 (Conc!1790) List!5586)

(assert (=> d!198308 (= (list!2313 (charsOf!702 (_1!3550 (v!16268 lt!238400)))) (list!2315 (c!106202 (charsOf!702 (_1!3550 (v!16268 lt!238400))))))))

(declare-fun bs!68694 () Bool)

(assert (= bs!68694 d!198308))

(declare-fun m!819767 () Bool)

(assert (=> bs!68694 m!819767))

(assert (=> b!565705 d!198308))

(declare-fun d!198310 () Bool)

(declare-fun lt!238539 () BalanceConc!3588)

(assert (=> d!198310 (= (list!2313 lt!238539) (originalCharacters!1112 (_1!3550 (v!16268 lt!238400))))))

(assert (=> d!198310 (= lt!238539 (dynLambda!3225 (toChars!1787 (transformation!1073 (rule!1809 (_1!3550 (v!16268 lt!238400))))) (value!35447 (_1!3550 (v!16268 lt!238400)))))))

(assert (=> d!198310 (= (charsOf!702 (_1!3550 (v!16268 lt!238400))) lt!238539)))

(declare-fun b_lambda!21803 () Bool)

(assert (=> (not b_lambda!21803) (not d!198310)))

(declare-fun t!76297 () Bool)

(declare-fun tb!49267 () Bool)

(assert (=> (and b!565712 (= (toChars!1787 (transformation!1073 (h!10979 rules!3103))) (toChars!1787 (transformation!1073 (rule!1809 (_1!3550 (v!16268 lt!238400)))))) t!76297) tb!49267))

(declare-fun b!566110 () Bool)

(declare-fun e!342085 () Bool)

(declare-fun tp!178492 () Bool)

(assert (=> b!566110 (= e!342085 (and (inv!7011 (c!106202 (dynLambda!3225 (toChars!1787 (transformation!1073 (rule!1809 (_1!3550 (v!16268 lt!238400))))) (value!35447 (_1!3550 (v!16268 lt!238400)))))) tp!178492))))

(declare-fun result!55138 () Bool)

(assert (=> tb!49267 (= result!55138 (and (inv!7012 (dynLambda!3225 (toChars!1787 (transformation!1073 (rule!1809 (_1!3550 (v!16268 lt!238400))))) (value!35447 (_1!3550 (v!16268 lt!238400))))) e!342085))))

(assert (= tb!49267 b!566110))

(declare-fun m!819775 () Bool)

(assert (=> b!566110 m!819775))

(declare-fun m!819777 () Bool)

(assert (=> tb!49267 m!819777))

(assert (=> d!198310 t!76297))

(declare-fun b_and!55175 () Bool)

(assert (= b_and!55171 (and (=> t!76297 result!55138) b_and!55175)))

(declare-fun tb!49269 () Bool)

(declare-fun t!76299 () Bool)

(assert (=> (and b!565725 (= (toChars!1787 (transformation!1073 (rule!1809 token!491))) (toChars!1787 (transformation!1073 (rule!1809 (_1!3550 (v!16268 lt!238400)))))) t!76299) tb!49269))

(declare-fun result!55140 () Bool)

(assert (= result!55140 result!55138))

(assert (=> d!198310 t!76299))

(declare-fun b_and!55177 () Bool)

(assert (= b_and!55173 (and (=> t!76299 result!55140) b_and!55177)))

(declare-fun m!819779 () Bool)

(assert (=> d!198310 m!819779))

(declare-fun m!819781 () Bool)

(assert (=> d!198310 m!819781))

(assert (=> b!565705 d!198310))

(declare-fun d!198314 () Bool)

(declare-fun lt!238545 () Int)

(assert (=> d!198314 (>= lt!238545 0)))

(declare-fun e!342086 () Int)

(assert (=> d!198314 (= lt!238545 e!342086)))

(declare-fun c!106269 () Bool)

(assert (=> d!198314 (= c!106269 ((_ is Nil!5576) lt!238382))))

(assert (=> d!198314 (= (size!4445 lt!238382) lt!238545)))

(declare-fun b!566111 () Bool)

(assert (=> b!566111 (= e!342086 0)))

(declare-fun b!566112 () Bool)

(assert (=> b!566112 (= e!342086 (+ 1 (size!4445 (t!76269 lt!238382))))))

(assert (= (and d!198314 c!106269) b!566111))

(assert (= (and d!198314 (not c!106269)) b!566112))

(declare-fun m!819783 () Bool)

(assert (=> b!566112 m!819783))

(assert (=> b!565705 d!198314))

(declare-fun b!566136 () Bool)

(declare-fun e!342104 () Bool)

(assert (=> b!566136 (= e!342104 (isPrefix!707 (tail!739 input!2705) (tail!739 lt!238384)))))

(declare-fun d!198316 () Bool)

(declare-fun e!342102 () Bool)

(assert (=> d!198316 e!342102))

(declare-fun res!242702 () Bool)

(assert (=> d!198316 (=> res!242702 e!342102)))

(declare-fun lt!238552 () Bool)

(assert (=> d!198316 (= res!242702 (not lt!238552))))

(declare-fun e!342103 () Bool)

(assert (=> d!198316 (= lt!238552 e!342103)))

(declare-fun res!242700 () Bool)

(assert (=> d!198316 (=> res!242700 e!342103)))

(assert (=> d!198316 (= res!242700 ((_ is Nil!5576) input!2705))))

(assert (=> d!198316 (= (isPrefix!707 input!2705 lt!238384) lt!238552)))

(declare-fun b!566135 () Bool)

(declare-fun res!242701 () Bool)

(assert (=> b!566135 (=> (not res!242701) (not e!342104))))

(assert (=> b!566135 (= res!242701 (= (head!1210 input!2705) (head!1210 lt!238384)))))

(declare-fun b!566137 () Bool)

(assert (=> b!566137 (= e!342102 (>= (size!4445 lt!238384) (size!4445 input!2705)))))

(declare-fun b!566134 () Bool)

(assert (=> b!566134 (= e!342103 e!342104)))

(declare-fun res!242699 () Bool)

(assert (=> b!566134 (=> (not res!242699) (not e!342104))))

(assert (=> b!566134 (= res!242699 (not ((_ is Nil!5576) lt!238384)))))

(assert (= (and d!198316 (not res!242700)) b!566134))

(assert (= (and b!566134 res!242699) b!566135))

(assert (= (and b!566135 res!242701) b!566136))

(assert (= (and d!198316 (not res!242702)) b!566137))

(assert (=> b!566136 m!819741))

(assert (=> b!566136 m!819647))

(assert (=> b!566136 m!819741))

(assert (=> b!566136 m!819647))

(declare-fun m!819833 () Bool)

(assert (=> b!566136 m!819833))

(assert (=> b!566135 m!819745))

(declare-fun m!819835 () Bool)

(assert (=> b!566135 m!819835))

(assert (=> b!566137 m!819587))

(assert (=> b!566137 m!819441))

(assert (=> b!565705 d!198316))

(declare-fun b!566146 () Bool)

(declare-fun res!242704 () Bool)

(declare-fun e!342107 () Bool)

(assert (=> b!566146 (=> (not res!242704) (not e!342107))))

(declare-fun lt!238553 () List!5586)

(assert (=> b!566146 (= res!242704 (= (size!4445 lt!238553) (+ (size!4445 lt!238382) (size!4445 (_2!3550 (v!16268 lt!238400))))))))

(declare-fun b!566144 () Bool)

(declare-fun e!342110 () List!5586)

(assert (=> b!566144 (= e!342110 (_2!3550 (v!16268 lt!238400)))))

(declare-fun d!198332 () Bool)

(assert (=> d!198332 e!342107))

(declare-fun res!242703 () Bool)

(assert (=> d!198332 (=> (not res!242703) (not e!342107))))

(assert (=> d!198332 (= res!242703 (= (content!978 lt!238553) ((_ map or) (content!978 lt!238382) (content!978 (_2!3550 (v!16268 lt!238400))))))))

(assert (=> d!198332 (= lt!238553 e!342110)))

(declare-fun c!106272 () Bool)

(assert (=> d!198332 (= c!106272 ((_ is Nil!5576) lt!238382))))

(assert (=> d!198332 (= (++!1561 lt!238382 (_2!3550 (v!16268 lt!238400))) lt!238553)))

(declare-fun b!566147 () Bool)

(assert (=> b!566147 (= e!342107 (or (not (= (_2!3550 (v!16268 lt!238400)) Nil!5576)) (= lt!238553 lt!238382)))))

(declare-fun b!566145 () Bool)

(assert (=> b!566145 (= e!342110 (Cons!5576 (h!10977 lt!238382) (++!1561 (t!76269 lt!238382) (_2!3550 (v!16268 lt!238400)))))))

(assert (= (and d!198332 c!106272) b!566144))

(assert (= (and d!198332 (not c!106272)) b!566145))

(assert (= (and d!198332 res!242703) b!566146))

(assert (= (and b!566146 res!242704) b!566147))

(declare-fun m!819837 () Bool)

(assert (=> b!566146 m!819837))

(assert (=> b!566146 m!819185))

(declare-fun m!819839 () Bool)

(assert (=> b!566146 m!819839))

(declare-fun m!819841 () Bool)

(assert (=> d!198332 m!819841))

(declare-fun m!819843 () Bool)

(assert (=> d!198332 m!819843))

(declare-fun m!819845 () Bool)

(assert (=> d!198332 m!819845))

(declare-fun m!819847 () Bool)

(assert (=> b!566145 m!819847))

(assert (=> b!565705 d!198332))

(declare-fun d!198334 () Bool)

(assert (=> d!198334 (isPrefix!707 lt!238392 (++!1561 lt!238392 suffix!1342))))

(declare-fun lt!238556 () Unit!9969)

(declare-fun choose!4020 (List!5586 List!5586) Unit!9969)

(assert (=> d!198334 (= lt!238556 (choose!4020 lt!238392 suffix!1342))))

(assert (=> d!198334 (= (lemmaConcatTwoListThenFirstIsPrefix!554 lt!238392 suffix!1342) lt!238556)))

(declare-fun bs!68696 () Bool)

(assert (= bs!68696 d!198334))

(assert (=> bs!68696 m!819245))

(assert (=> bs!68696 m!819245))

(declare-fun m!819849 () Bool)

(assert (=> bs!68696 m!819849))

(declare-fun m!819853 () Bool)

(assert (=> bs!68696 m!819853))

(assert (=> b!565705 d!198334))

(declare-fun d!198336 () Bool)

(assert (=> d!198336 (= (size!4444 (_1!3550 (v!16268 lt!238400))) (size!4445 (originalCharacters!1112 (_1!3550 (v!16268 lt!238400)))))))

(declare-fun Unit!9975 () Unit!9969)

(assert (=> d!198336 (= (lemmaCharactersSize!140 (_1!3550 (v!16268 lt!238400))) Unit!9975)))

(declare-fun bs!68697 () Bool)

(assert (= bs!68697 d!198336))

(assert (=> bs!68697 m!819247))

(assert (=> b!565705 d!198336))

(declare-fun d!198338 () Bool)

(declare-fun res!242709 () Bool)

(declare-fun e!342130 () Bool)

(assert (=> d!198338 (=> (not res!242709) (not e!342130))))

(assert (=> d!198338 (= res!242709 (validRegex!467 (regex!1073 (rule!1809 token!491))))))

(assert (=> d!198338 (= (ruleValid!283 thiss!22590 (rule!1809 token!491)) e!342130)))

(declare-fun b!566182 () Bool)

(declare-fun res!242710 () Bool)

(assert (=> b!566182 (=> (not res!242710) (not e!342130))))

(assert (=> b!566182 (= res!242710 (not (nullable!372 (regex!1073 (rule!1809 token!491)))))))

(declare-fun b!566183 () Bool)

(assert (=> b!566183 (= e!342130 (not (= (tag!1335 (rule!1809 token!491)) (String!7230 ""))))))

(assert (= (and d!198338 res!242709) b!566182))

(assert (= (and b!566182 res!242710) b!566183))

(assert (=> d!198338 m!819747))

(assert (=> b!566182 m!819753))

(assert (=> b!565705 d!198338))

(declare-fun d!198340 () Bool)

(assert (=> d!198340 (isPrefix!707 input!2705 input!2705)))

(declare-fun lt!238559 () Unit!9969)

(declare-fun choose!4022 (List!5586 List!5586) Unit!9969)

(assert (=> d!198340 (= lt!238559 (choose!4022 input!2705 input!2705))))

(assert (=> d!198340 (= (lemmaIsPrefixRefl!445 input!2705 input!2705) lt!238559)))

(declare-fun bs!68698 () Bool)

(assert (= bs!68698 d!198340))

(assert (=> bs!68698 m!819193))

(declare-fun m!819857 () Bool)

(assert (=> bs!68698 m!819857))

(assert (=> b!565705 d!198340))

(declare-fun d!198342 () Bool)

(assert (=> d!198342 (isPrefix!707 lt!238382 (++!1561 lt!238382 (_2!3550 (v!16268 lt!238400))))))

(declare-fun lt!238560 () Unit!9969)

(assert (=> d!198342 (= lt!238560 (choose!4020 lt!238382 (_2!3550 (v!16268 lt!238400))))))

(assert (=> d!198342 (= (lemmaConcatTwoListThenFirstIsPrefix!554 lt!238382 (_2!3550 (v!16268 lt!238400))) lt!238560)))

(declare-fun bs!68699 () Bool)

(assert (= bs!68699 d!198342))

(assert (=> bs!68699 m!819187))

(assert (=> bs!68699 m!819187))

(declare-fun m!819859 () Bool)

(assert (=> bs!68699 m!819859))

(declare-fun m!819861 () Bool)

(assert (=> bs!68699 m!819861))

(assert (=> b!565705 d!198342))

(declare-fun d!198344 () Bool)

(declare-fun e!342133 () Bool)

(assert (=> d!198344 e!342133))

(declare-fun res!242713 () Bool)

(assert (=> d!198344 (=> (not res!242713) (not e!342133))))

(declare-fun semiInverseModEq!411 (Int Int) Bool)

(assert (=> d!198344 (= res!242713 (semiInverseModEq!411 (toChars!1787 (transformation!1073 (rule!1809 token!491))) (toValue!1928 (transformation!1073 (rule!1809 token!491)))))))

(declare-fun Unit!9976 () Unit!9969)

(assert (=> d!198344 (= (lemmaInv!209 (transformation!1073 (rule!1809 token!491))) Unit!9976)))

(declare-fun b!566186 () Bool)

(declare-fun equivClasses!394 (Int Int) Bool)

(assert (=> b!566186 (= e!342133 (equivClasses!394 (toChars!1787 (transformation!1073 (rule!1809 token!491))) (toValue!1928 (transformation!1073 (rule!1809 token!491)))))))

(assert (= (and d!198344 res!242713) b!566186))

(declare-fun m!819863 () Bool)

(assert (=> d!198344 m!819863))

(declare-fun m!819865 () Bool)

(assert (=> b!566186 m!819865))

(assert (=> b!565705 d!198344))

(declare-fun d!198346 () Bool)

(assert (=> d!198346 (= (size!4444 token!491) (size!4445 (originalCharacters!1112 token!491)))))

(declare-fun Unit!9977 () Unit!9969)

(assert (=> d!198346 (= (lemmaCharactersSize!140 token!491) Unit!9977)))

(declare-fun bs!68700 () Bool)

(assert (= bs!68700 d!198346))

(assert (=> bs!68700 m!819287))

(assert (=> b!565705 d!198346))

(declare-fun d!198348 () Bool)

(assert (=> d!198348 (and (= lt!238392 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!238563 () Unit!9969)

(declare-fun choose!4023 (List!5586 List!5586 List!5586 List!5586) Unit!9969)

(assert (=> d!198348 (= lt!238563 (choose!4023 lt!238392 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!198348 (= (++!1561 lt!238392 suffix!1342) (++!1561 input!2705 suffix!1342))))

(assert (=> d!198348 (= (lemmaConcatSameAndSameSizesThenSameLists!150 lt!238392 suffix!1342 input!2705 suffix!1342) lt!238563)))

(declare-fun bs!68701 () Bool)

(assert (= bs!68701 d!198348))

(declare-fun m!819867 () Bool)

(assert (=> bs!68701 m!819867))

(assert (=> bs!68701 m!819245))

(assert (=> bs!68701 m!819255))

(assert (=> b!565705 d!198348))

(declare-fun d!198350 () Bool)

(assert (=> d!198350 (= (_2!3550 (v!16268 lt!238400)) lt!238389)))

(declare-fun lt!238564 () Unit!9969)

(assert (=> d!198350 (= lt!238564 (choose!4016 lt!238382 (_2!3550 (v!16268 lt!238400)) lt!238382 lt!238389 input!2705))))

(assert (=> d!198350 (isPrefix!707 lt!238382 input!2705)))

(assert (=> d!198350 (= (lemmaSamePrefixThenSameSuffix!430 lt!238382 (_2!3550 (v!16268 lt!238400)) lt!238382 lt!238389 input!2705) lt!238564)))

(declare-fun bs!68702 () Bool)

(assert (= bs!68702 d!198350))

(declare-fun m!819869 () Bool)

(assert (=> bs!68702 m!819869))

(assert (=> bs!68702 m!819273))

(assert (=> b!565705 d!198350))

(declare-fun d!198352 () Bool)

(assert (=> d!198352 (= (seqFromList!1261 lt!238382) (fromListB!547 lt!238382))))

(declare-fun bs!68703 () Bool)

(assert (= bs!68703 d!198352))

(declare-fun m!819871 () Bool)

(assert (=> bs!68703 m!819871))

(assert (=> b!565705 d!198352))

(declare-fun b!566189 () Bool)

(declare-fun e!342136 () Bool)

(assert (=> b!566189 (= e!342136 (isPrefix!707 (tail!739 input!2705) (tail!739 lt!238398)))))

(declare-fun d!198354 () Bool)

(declare-fun e!342134 () Bool)

(assert (=> d!198354 e!342134))

(declare-fun res!242717 () Bool)

(assert (=> d!198354 (=> res!242717 e!342134)))

(declare-fun lt!238565 () Bool)

(assert (=> d!198354 (= res!242717 (not lt!238565))))

(declare-fun e!342135 () Bool)

(assert (=> d!198354 (= lt!238565 e!342135)))

(declare-fun res!242715 () Bool)

(assert (=> d!198354 (=> res!242715 e!342135)))

(assert (=> d!198354 (= res!242715 ((_ is Nil!5576) input!2705))))

(assert (=> d!198354 (= (isPrefix!707 input!2705 lt!238398) lt!238565)))

(declare-fun b!566188 () Bool)

(declare-fun res!242716 () Bool)

(assert (=> b!566188 (=> (not res!242716) (not e!342136))))

(assert (=> b!566188 (= res!242716 (= (head!1210 input!2705) (head!1210 lt!238398)))))

(declare-fun b!566190 () Bool)

(assert (=> b!566190 (= e!342134 (>= (size!4445 lt!238398) (size!4445 input!2705)))))

(declare-fun b!566187 () Bool)

(assert (=> b!566187 (= e!342135 e!342136)))

(declare-fun res!242714 () Bool)

(assert (=> b!566187 (=> (not res!242714) (not e!342136))))

(assert (=> b!566187 (= res!242714 (not ((_ is Nil!5576) lt!238398)))))

(assert (= (and d!198354 (not res!242715)) b!566187))

(assert (= (and b!566187 res!242714) b!566188))

(assert (= (and b!566188 res!242716) b!566189))

(assert (= (and d!198354 (not res!242717)) b!566190))

(assert (=> b!566189 m!819741))

(declare-fun m!819873 () Bool)

(assert (=> b!566189 m!819873))

(assert (=> b!566189 m!819741))

(assert (=> b!566189 m!819873))

(declare-fun m!819875 () Bool)

(assert (=> b!566189 m!819875))

(assert (=> b!566188 m!819745))

(declare-fun m!819877 () Bool)

(assert (=> b!566188 m!819877))

(declare-fun m!819879 () Bool)

(assert (=> b!566190 m!819879))

(assert (=> b!566190 m!819441))

(assert (=> b!565705 d!198354))

(declare-fun d!198356 () Bool)

(declare-fun e!342137 () Bool)

(assert (=> d!198356 e!342137))

(declare-fun res!242718 () Bool)

(assert (=> d!198356 (=> (not res!242718) (not e!342137))))

(assert (=> d!198356 (= res!242718 (semiInverseModEq!411 (toChars!1787 (transformation!1073 (rule!1809 (_1!3550 (v!16268 lt!238400))))) (toValue!1928 (transformation!1073 (rule!1809 (_1!3550 (v!16268 lt!238400)))))))))

(declare-fun Unit!9980 () Unit!9969)

(assert (=> d!198356 (= (lemmaInv!209 (transformation!1073 (rule!1809 (_1!3550 (v!16268 lt!238400))))) Unit!9980)))

(declare-fun b!566191 () Bool)

(assert (=> b!566191 (= e!342137 (equivClasses!394 (toChars!1787 (transformation!1073 (rule!1809 (_1!3550 (v!16268 lt!238400))))) (toValue!1928 (transformation!1073 (rule!1809 (_1!3550 (v!16268 lt!238400)))))))))

(assert (= (and d!198356 res!242718) b!566191))

(declare-fun m!819881 () Bool)

(assert (=> d!198356 m!819881))

(declare-fun m!819883 () Bool)

(assert (=> b!566191 m!819883))

(assert (=> b!565705 d!198356))

(declare-fun d!198358 () Bool)

(declare-fun res!242719 () Bool)

(declare-fun e!342138 () Bool)

(assert (=> d!198358 (=> (not res!242719) (not e!342138))))

(assert (=> d!198358 (= res!242719 (validRegex!467 (regex!1073 (rule!1809 (_1!3550 (v!16268 lt!238400))))))))

(assert (=> d!198358 (= (ruleValid!283 thiss!22590 (rule!1809 (_1!3550 (v!16268 lt!238400)))) e!342138)))

(declare-fun b!566192 () Bool)

(declare-fun res!242720 () Bool)

(assert (=> b!566192 (=> (not res!242720) (not e!342138))))

(assert (=> b!566192 (= res!242720 (not (nullable!372 (regex!1073 (rule!1809 (_1!3550 (v!16268 lt!238400)))))))))

(declare-fun b!566193 () Bool)

(assert (=> b!566193 (= e!342138 (not (= (tag!1335 (rule!1809 (_1!3550 (v!16268 lt!238400)))) (String!7230 ""))))))

(assert (= (and d!198358 res!242719) b!566192))

(assert (= (and b!566192 res!242720) b!566193))

(declare-fun m!819885 () Bool)

(assert (=> d!198358 m!819885))

(declare-fun m!819887 () Bool)

(assert (=> b!566192 m!819887))

(assert (=> b!565705 d!198358))

(declare-fun b!566196 () Bool)

(declare-fun e!342141 () Bool)

(assert (=> b!566196 (= e!342141 (isPrefix!707 (tail!739 input!2705) (tail!739 input!2705)))))

(declare-fun d!198360 () Bool)

(declare-fun e!342139 () Bool)

(assert (=> d!198360 e!342139))

(declare-fun res!242724 () Bool)

(assert (=> d!198360 (=> res!242724 e!342139)))

(declare-fun lt!238566 () Bool)

(assert (=> d!198360 (= res!242724 (not lt!238566))))

(declare-fun e!342140 () Bool)

(assert (=> d!198360 (= lt!238566 e!342140)))

(declare-fun res!242722 () Bool)

(assert (=> d!198360 (=> res!242722 e!342140)))

(assert (=> d!198360 (= res!242722 ((_ is Nil!5576) input!2705))))

(assert (=> d!198360 (= (isPrefix!707 input!2705 input!2705) lt!238566)))

(declare-fun b!566195 () Bool)

(declare-fun res!242723 () Bool)

(assert (=> b!566195 (=> (not res!242723) (not e!342141))))

(assert (=> b!566195 (= res!242723 (= (head!1210 input!2705) (head!1210 input!2705)))))

(declare-fun b!566197 () Bool)

(assert (=> b!566197 (= e!342139 (>= (size!4445 input!2705) (size!4445 input!2705)))))

(declare-fun b!566194 () Bool)

(assert (=> b!566194 (= e!342140 e!342141)))

(declare-fun res!242721 () Bool)

(assert (=> b!566194 (=> (not res!242721) (not e!342141))))

(assert (=> b!566194 (= res!242721 (not ((_ is Nil!5576) input!2705)))))

(assert (= (and d!198360 (not res!242722)) b!566194))

(assert (= (and b!566194 res!242721) b!566195))

(assert (= (and b!566195 res!242723) b!566196))

(assert (= (and d!198360 (not res!242724)) b!566197))

(assert (=> b!566196 m!819741))

(assert (=> b!566196 m!819741))

(assert (=> b!566196 m!819741))

(assert (=> b!566196 m!819741))

(declare-fun m!819889 () Bool)

(assert (=> b!566196 m!819889))

(assert (=> b!566195 m!819745))

(assert (=> b!566195 m!819745))

(assert (=> b!566197 m!819441))

(assert (=> b!566197 m!819441))

(assert (=> b!565705 d!198360))

(declare-fun d!198362 () Bool)

(declare-fun lt!238567 () List!5586)

(assert (=> d!198362 (= (++!1561 lt!238382 lt!238567) input!2705)))

(declare-fun e!342142 () List!5586)

(assert (=> d!198362 (= lt!238567 e!342142)))

(declare-fun c!106273 () Bool)

(assert (=> d!198362 (= c!106273 ((_ is Cons!5576) lt!238382))))

(assert (=> d!198362 (>= (size!4445 input!2705) (size!4445 lt!238382))))

(assert (=> d!198362 (= (getSuffix!226 input!2705 lt!238382) lt!238567)))

(declare-fun b!566198 () Bool)

(assert (=> b!566198 (= e!342142 (getSuffix!226 (tail!739 input!2705) (t!76269 lt!238382)))))

(declare-fun b!566199 () Bool)

(assert (=> b!566199 (= e!342142 input!2705)))

(assert (= (and d!198362 c!106273) b!566198))

(assert (= (and d!198362 (not c!106273)) b!566199))

(declare-fun m!819891 () Bool)

(assert (=> d!198362 m!819891))

(assert (=> d!198362 m!819441))

(assert (=> d!198362 m!819185))

(assert (=> b!566198 m!819741))

(assert (=> b!566198 m!819741))

(declare-fun m!819893 () Bool)

(assert (=> b!566198 m!819893))

(assert (=> b!565705 d!198362))

(declare-fun d!198364 () Bool)

(assert (=> d!198364 (ruleValid!283 thiss!22590 (rule!1809 token!491))))

(declare-fun lt!238570 () Unit!9969)

(declare-fun choose!4024 (LexerInterface!959 Rule!1946 List!5588) Unit!9969)

(assert (=> d!198364 (= lt!238570 (choose!4024 thiss!22590 (rule!1809 token!491) rules!3103))))

(assert (=> d!198364 (contains!1307 rules!3103 (rule!1809 token!491))))

(assert (=> d!198364 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!140 thiss!22590 (rule!1809 token!491) rules!3103) lt!238570)))

(declare-fun bs!68704 () Bool)

(assert (= bs!68704 d!198364))

(assert (=> bs!68704 m!819177))

(declare-fun m!819895 () Bool)

(assert (=> bs!68704 m!819895))

(assert (=> bs!68704 m!819263))

(assert (=> b!565705 d!198364))

(declare-fun d!198366 () Bool)

(assert (=> d!198366 (isPrefix!707 input!2705 (++!1561 input!2705 suffix!1342))))

(declare-fun lt!238571 () Unit!9969)

(assert (=> d!198366 (= lt!238571 (choose!4020 input!2705 suffix!1342))))

(assert (=> d!198366 (= (lemmaConcatTwoListThenFirstIsPrefix!554 input!2705 suffix!1342) lt!238571)))

(declare-fun bs!68705 () Bool)

(assert (= bs!68705 d!198366))

(assert (=> bs!68705 m!819255))

(assert (=> bs!68705 m!819255))

(declare-fun m!819897 () Bool)

(assert (=> bs!68705 m!819897))

(declare-fun m!819899 () Bool)

(assert (=> bs!68705 m!819899))

(assert (=> b!565705 d!198366))

(declare-fun b!566202 () Bool)

(declare-fun e!342145 () Bool)

(assert (=> b!566202 (= e!342145 (isPrefix!707 (tail!739 lt!238392) (tail!739 lt!238398)))))

(declare-fun d!198368 () Bool)

(declare-fun e!342143 () Bool)

(assert (=> d!198368 e!342143))

(declare-fun res!242728 () Bool)

(assert (=> d!198368 (=> res!242728 e!342143)))

(declare-fun lt!238572 () Bool)

(assert (=> d!198368 (= res!242728 (not lt!238572))))

(declare-fun e!342144 () Bool)

(assert (=> d!198368 (= lt!238572 e!342144)))

(declare-fun res!242726 () Bool)

(assert (=> d!198368 (=> res!242726 e!342144)))

(assert (=> d!198368 (= res!242726 ((_ is Nil!5576) lt!238392))))

(assert (=> d!198368 (= (isPrefix!707 lt!238392 lt!238398) lt!238572)))

(declare-fun b!566201 () Bool)

(declare-fun res!242727 () Bool)

(assert (=> b!566201 (=> (not res!242727) (not e!342145))))

(assert (=> b!566201 (= res!242727 (= (head!1210 lt!238392) (head!1210 lt!238398)))))

(declare-fun b!566203 () Bool)

(assert (=> b!566203 (= e!342143 (>= (size!4445 lt!238398) (size!4445 lt!238392)))))

(declare-fun b!566200 () Bool)

(assert (=> b!566200 (= e!342144 e!342145)))

(declare-fun res!242725 () Bool)

(assert (=> b!566200 (=> (not res!242725) (not e!342145))))

(assert (=> b!566200 (= res!242725 (not ((_ is Nil!5576) lt!238398)))))

(assert (= (and d!198368 (not res!242726)) b!566200))

(assert (= (and b!566200 res!242725) b!566201))

(assert (= (and b!566201 res!242727) b!566202))

(assert (= (and d!198368 (not res!242728)) b!566203))

(declare-fun m!819901 () Bool)

(assert (=> b!566202 m!819901))

(assert (=> b!566202 m!819873))

(assert (=> b!566202 m!819901))

(assert (=> b!566202 m!819873))

(declare-fun m!819903 () Bool)

(assert (=> b!566202 m!819903))

(declare-fun m!819905 () Bool)

(assert (=> b!566201 m!819905))

(assert (=> b!566201 m!819877))

(assert (=> b!566203 m!819879))

(assert (=> b!566203 m!819205))

(assert (=> b!565705 d!198368))

(declare-fun b!566206 () Bool)

(declare-fun e!342148 () Bool)

(assert (=> b!566206 (= e!342148 (isPrefix!707 (tail!739 lt!238382) (tail!739 lt!238375)))))

(declare-fun d!198370 () Bool)

(declare-fun e!342146 () Bool)

(assert (=> d!198370 e!342146))

(declare-fun res!242732 () Bool)

(assert (=> d!198370 (=> res!242732 e!342146)))

(declare-fun lt!238573 () Bool)

(assert (=> d!198370 (= res!242732 (not lt!238573))))

(declare-fun e!342147 () Bool)

(assert (=> d!198370 (= lt!238573 e!342147)))

(declare-fun res!242730 () Bool)

(assert (=> d!198370 (=> res!242730 e!342147)))

(assert (=> d!198370 (= res!242730 ((_ is Nil!5576) lt!238382))))

(assert (=> d!198370 (= (isPrefix!707 lt!238382 lt!238375) lt!238573)))

(declare-fun b!566205 () Bool)

(declare-fun res!242731 () Bool)

(assert (=> b!566205 (=> (not res!242731) (not e!342148))))

(assert (=> b!566205 (= res!242731 (= (head!1210 lt!238382) (head!1210 lt!238375)))))

(declare-fun b!566207 () Bool)

(assert (=> b!566207 (= e!342146 (>= (size!4445 lt!238375) (size!4445 lt!238382)))))

(declare-fun b!566204 () Bool)

(assert (=> b!566204 (= e!342147 e!342148)))

(declare-fun res!242729 () Bool)

(assert (=> b!566204 (=> (not res!242729) (not e!342148))))

(assert (=> b!566204 (= res!242729 (not ((_ is Nil!5576) lt!238375)))))

(assert (= (and d!198370 (not res!242730)) b!566204))

(assert (= (and b!566204 res!242729) b!566205))

(assert (= (and b!566205 res!242731) b!566206))

(assert (= (and d!198370 (not res!242732)) b!566207))

(declare-fun m!819907 () Bool)

(assert (=> b!566206 m!819907))

(declare-fun m!819909 () Bool)

(assert (=> b!566206 m!819909))

(assert (=> b!566206 m!819907))

(assert (=> b!566206 m!819909))

(declare-fun m!819911 () Bool)

(assert (=> b!566206 m!819911))

(declare-fun m!819913 () Bool)

(assert (=> b!566205 m!819913))

(declare-fun m!819915 () Bool)

(assert (=> b!566205 m!819915))

(declare-fun m!819917 () Bool)

(assert (=> b!566207 m!819917))

(assert (=> b!566207 m!819185))

(assert (=> b!565705 d!198370))

(declare-fun d!198372 () Bool)

(assert (=> d!198372 (= (apply!1338 (transformation!1073 (rule!1809 (_1!3550 (v!16268 lt!238400)))) (seqFromList!1261 lt!238382)) (dynLambda!3224 (toValue!1928 (transformation!1073 (rule!1809 (_1!3550 (v!16268 lt!238400))))) (seqFromList!1261 lt!238382)))))

(declare-fun b_lambda!21811 () Bool)

(assert (=> (not b_lambda!21811) (not d!198372)))

(declare-fun t!76309 () Bool)

(declare-fun tb!49279 () Bool)

(assert (=> (and b!565712 (= (toValue!1928 (transformation!1073 (h!10979 rules!3103))) (toValue!1928 (transformation!1073 (rule!1809 (_1!3550 (v!16268 lt!238400)))))) t!76309) tb!49279))

(declare-fun result!55156 () Bool)

(assert (=> tb!49279 (= result!55156 (inv!21 (dynLambda!3224 (toValue!1928 (transformation!1073 (rule!1809 (_1!3550 (v!16268 lt!238400))))) (seqFromList!1261 lt!238382))))))

(declare-fun m!819919 () Bool)

(assert (=> tb!49279 m!819919))

(assert (=> d!198372 t!76309))

(declare-fun b_and!55183 () Bool)

(assert (= b_and!55159 (and (=> t!76309 result!55156) b_and!55183)))

(declare-fun t!76311 () Bool)

(declare-fun tb!49281 () Bool)

(assert (=> (and b!565725 (= (toValue!1928 (transformation!1073 (rule!1809 token!491))) (toValue!1928 (transformation!1073 (rule!1809 (_1!3550 (v!16268 lt!238400)))))) t!76311) tb!49281))

(declare-fun result!55158 () Bool)

(assert (= result!55158 result!55156))

(assert (=> d!198372 t!76311))

(declare-fun b_and!55185 () Bool)

(assert (= b_and!55161 (and (=> t!76311 result!55158) b_and!55185)))

(assert (=> d!198372 m!819207))

(declare-fun m!819921 () Bool)

(assert (=> d!198372 m!819921))

(assert (=> b!565705 d!198372))

(declare-fun d!198374 () Bool)

(declare-fun lt!238574 () Int)

(assert (=> d!198374 (>= lt!238574 0)))

(declare-fun e!342150 () Int)

(assert (=> d!198374 (= lt!238574 e!342150)))

(declare-fun c!106274 () Bool)

(assert (=> d!198374 (= c!106274 ((_ is Nil!5576) lt!238392))))

(assert (=> d!198374 (= (size!4445 lt!238392) lt!238574)))

(declare-fun b!566208 () Bool)

(assert (=> b!566208 (= e!342150 0)))

(declare-fun b!566209 () Bool)

(assert (=> b!566209 (= e!342150 (+ 1 (size!4445 (t!76269 lt!238392))))))

(assert (= (and d!198374 c!106274) b!566208))

(assert (= (and d!198374 (not c!106274)) b!566209))

(declare-fun m!819923 () Bool)

(assert (=> b!566209 m!819923))

(assert (=> b!565705 d!198374))

(declare-fun d!198376 () Bool)

(assert (=> d!198376 (ruleValid!283 thiss!22590 (rule!1809 (_1!3550 (v!16268 lt!238400))))))

(declare-fun lt!238575 () Unit!9969)

(assert (=> d!198376 (= lt!238575 (choose!4024 thiss!22590 (rule!1809 (_1!3550 (v!16268 lt!238400))) rules!3103))))

(assert (=> d!198376 (contains!1307 rules!3103 (rule!1809 (_1!3550 (v!16268 lt!238400))))))

(assert (=> d!198376 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!140 thiss!22590 (rule!1809 (_1!3550 (v!16268 lt!238400))) rules!3103) lt!238575)))

(declare-fun bs!68706 () Bool)

(assert (= bs!68706 d!198376))

(assert (=> bs!68706 m!819201))

(declare-fun m!819925 () Bool)

(assert (=> bs!68706 m!819925))

(assert (=> bs!68706 m!819283))

(assert (=> b!565705 d!198376))

(declare-fun d!198378 () Bool)

(assert (=> d!198378 (= (inv!7004 (tag!1335 (h!10979 rules!3103))) (= (mod (str.len (value!35446 (tag!1335 (h!10979 rules!3103)))) 2) 0))))

(assert (=> b!565706 d!198378))

(declare-fun d!198380 () Bool)

(declare-fun res!242735 () Bool)

(declare-fun e!342153 () Bool)

(assert (=> d!198380 (=> (not res!242735) (not e!342153))))

(assert (=> d!198380 (= res!242735 (semiInverseModEq!411 (toChars!1787 (transformation!1073 (h!10979 rules!3103))) (toValue!1928 (transformation!1073 (h!10979 rules!3103)))))))

(assert (=> d!198380 (= (inv!7007 (transformation!1073 (h!10979 rules!3103))) e!342153)))

(declare-fun b!566212 () Bool)

(assert (=> b!566212 (= e!342153 (equivClasses!394 (toChars!1787 (transformation!1073 (h!10979 rules!3103))) (toValue!1928 (transformation!1073 (h!10979 rules!3103)))))))

(assert (= (and d!198380 res!242735) b!566212))

(declare-fun m!819927 () Bool)

(assert (=> d!198380 m!819927))

(declare-fun m!819929 () Bool)

(assert (=> b!566212 m!819929))

(assert (=> b!565706 d!198380))

(declare-fun d!198382 () Bool)

(assert (=> d!198382 (= (inv!7004 (tag!1335 (rule!1809 token!491))) (= (mod (str.len (value!35446 (tag!1335 (rule!1809 token!491)))) 2) 0))))

(assert (=> b!565709 d!198382))

(declare-fun d!198384 () Bool)

(declare-fun res!242736 () Bool)

(declare-fun e!342154 () Bool)

(assert (=> d!198384 (=> (not res!242736) (not e!342154))))

(assert (=> d!198384 (= res!242736 (semiInverseModEq!411 (toChars!1787 (transformation!1073 (rule!1809 token!491))) (toValue!1928 (transformation!1073 (rule!1809 token!491)))))))

(assert (=> d!198384 (= (inv!7007 (transformation!1073 (rule!1809 token!491))) e!342154)))

(declare-fun b!566213 () Bool)

(assert (=> b!566213 (= e!342154 (equivClasses!394 (toChars!1787 (transformation!1073 (rule!1809 token!491))) (toValue!1928 (transformation!1073 (rule!1809 token!491)))))))

(assert (= (and d!198384 res!242736) b!566213))

(assert (=> d!198384 m!819863))

(assert (=> b!566213 m!819865))

(assert (=> b!565709 d!198384))

(declare-fun d!198386 () Bool)

(assert (=> d!198386 (= (isDefined!1235 lt!238400) (not (isEmpty!4028 lt!238400)))))

(declare-fun bs!68707 () Bool)

(assert (= bs!68707 d!198386))

(declare-fun m!819931 () Bool)

(assert (=> bs!68707 m!819931))

(assert (=> b!565729 d!198386))

(declare-fun b!566232 () Bool)

(declare-fun res!242753 () Bool)

(declare-fun e!342162 () Bool)

(assert (=> b!566232 (=> (not res!242753) (not e!342162))))

(declare-fun lt!238589 () Option!1424)

(assert (=> b!566232 (= res!242753 (matchR!554 (regex!1073 (rule!1809 (_1!3550 (get!2124 lt!238589)))) (list!2313 (charsOf!702 (_1!3550 (get!2124 lt!238589))))))))

(declare-fun b!566233 () Bool)

(declare-fun res!242751 () Bool)

(assert (=> b!566233 (=> (not res!242751) (not e!342162))))

(assert (=> b!566233 (= res!242751 (= (value!35447 (_1!3550 (get!2124 lt!238589))) (apply!1338 (transformation!1073 (rule!1809 (_1!3550 (get!2124 lt!238589)))) (seqFromList!1261 (originalCharacters!1112 (_1!3550 (get!2124 lt!238589)))))))))

(declare-fun b!566234 () Bool)

(declare-fun res!242757 () Bool)

(assert (=> b!566234 (=> (not res!242757) (not e!342162))))

(assert (=> b!566234 (= res!242757 (= (list!2313 (charsOf!702 (_1!3550 (get!2124 lt!238589)))) (originalCharacters!1112 (_1!3550 (get!2124 lt!238589)))))))

(declare-fun call!39332 () Option!1424)

(declare-fun bm!39327 () Bool)

(assert (=> bm!39327 (= call!39332 (maxPrefixOneRule!358 thiss!22590 (h!10979 rules!3103) input!2705))))

(declare-fun b!566235 () Bool)

(declare-fun res!242755 () Bool)

(assert (=> b!566235 (=> (not res!242755) (not e!342162))))

(assert (=> b!566235 (= res!242755 (< (size!4445 (_2!3550 (get!2124 lt!238589))) (size!4445 input!2705)))))

(declare-fun b!566236 () Bool)

(assert (=> b!566236 (= e!342162 (contains!1307 rules!3103 (rule!1809 (_1!3550 (get!2124 lt!238589)))))))

(declare-fun b!566237 () Bool)

(declare-fun e!342163 () Option!1424)

(declare-fun lt!238587 () Option!1424)

(declare-fun lt!238586 () Option!1424)

(assert (=> b!566237 (= e!342163 (ite (and ((_ is None!1423) lt!238587) ((_ is None!1423) lt!238586)) None!1423 (ite ((_ is None!1423) lt!238586) lt!238587 (ite ((_ is None!1423) lt!238587) lt!238586 (ite (>= (size!4444 (_1!3550 (v!16268 lt!238587))) (size!4444 (_1!3550 (v!16268 lt!238586)))) lt!238587 lt!238586)))))))

(assert (=> b!566237 (= lt!238587 call!39332)))

(assert (=> b!566237 (= lt!238586 (maxPrefix!657 thiss!22590 (t!76271 rules!3103) input!2705))))

(declare-fun d!198388 () Bool)

(declare-fun e!342161 () Bool)

(assert (=> d!198388 e!342161))

(declare-fun res!242754 () Bool)

(assert (=> d!198388 (=> res!242754 e!342161)))

(assert (=> d!198388 (= res!242754 (isEmpty!4028 lt!238589))))

(assert (=> d!198388 (= lt!238589 e!342163)))

(declare-fun c!106277 () Bool)

(assert (=> d!198388 (= c!106277 (and ((_ is Cons!5578) rules!3103) ((_ is Nil!5578) (t!76271 rules!3103))))))

(declare-fun lt!238588 () Unit!9969)

(declare-fun lt!238590 () Unit!9969)

(assert (=> d!198388 (= lt!238588 lt!238590)))

(assert (=> d!198388 (isPrefix!707 input!2705 input!2705)))

(assert (=> d!198388 (= lt!238590 (lemmaIsPrefixRefl!445 input!2705 input!2705))))

(declare-fun rulesValidInductive!380 (LexerInterface!959 List!5588) Bool)

(assert (=> d!198388 (rulesValidInductive!380 thiss!22590 rules!3103)))

(assert (=> d!198388 (= (maxPrefix!657 thiss!22590 rules!3103 input!2705) lt!238589)))

(declare-fun b!566238 () Bool)

(assert (=> b!566238 (= e!342161 e!342162)))

(declare-fun res!242756 () Bool)

(assert (=> b!566238 (=> (not res!242756) (not e!342162))))

(assert (=> b!566238 (= res!242756 (isDefined!1235 lt!238589))))

(declare-fun b!566239 () Bool)

(assert (=> b!566239 (= e!342163 call!39332)))

(declare-fun b!566240 () Bool)

(declare-fun res!242752 () Bool)

(assert (=> b!566240 (=> (not res!242752) (not e!342162))))

(assert (=> b!566240 (= res!242752 (= (++!1561 (list!2313 (charsOf!702 (_1!3550 (get!2124 lt!238589)))) (_2!3550 (get!2124 lt!238589))) input!2705))))

(assert (= (and d!198388 c!106277) b!566239))

(assert (= (and d!198388 (not c!106277)) b!566237))

(assert (= (or b!566239 b!566237) bm!39327))

(assert (= (and d!198388 (not res!242754)) b!566238))

(assert (= (and b!566238 res!242756) b!566234))

(assert (= (and b!566234 res!242757) b!566235))

(assert (= (and b!566235 res!242755) b!566240))

(assert (= (and b!566240 res!242752) b!566233))

(assert (= (and b!566233 res!242751) b!566232))

(assert (= (and b!566232 res!242753) b!566236))

(declare-fun m!819933 () Bool)

(assert (=> b!566234 m!819933))

(declare-fun m!819935 () Bool)

(assert (=> b!566234 m!819935))

(assert (=> b!566234 m!819935))

(declare-fun m!819937 () Bool)

(assert (=> b!566234 m!819937))

(assert (=> b!566240 m!819933))

(assert (=> b!566240 m!819935))

(assert (=> b!566240 m!819935))

(assert (=> b!566240 m!819937))

(assert (=> b!566240 m!819937))

(declare-fun m!819939 () Bool)

(assert (=> b!566240 m!819939))

(declare-fun m!819941 () Bool)

(assert (=> bm!39327 m!819941))

(assert (=> b!566235 m!819933))

(declare-fun m!819943 () Bool)

(assert (=> b!566235 m!819943))

(assert (=> b!566235 m!819441))

(declare-fun m!819945 () Bool)

(assert (=> d!198388 m!819945))

(assert (=> d!198388 m!819193))

(assert (=> d!198388 m!819225))

(declare-fun m!819947 () Bool)

(assert (=> d!198388 m!819947))

(assert (=> b!566233 m!819933))

(declare-fun m!819949 () Bool)

(assert (=> b!566233 m!819949))

(assert (=> b!566233 m!819949))

(declare-fun m!819951 () Bool)

(assert (=> b!566233 m!819951))

(assert (=> b!566232 m!819933))

(assert (=> b!566232 m!819935))

(assert (=> b!566232 m!819935))

(assert (=> b!566232 m!819937))

(assert (=> b!566232 m!819937))

(declare-fun m!819953 () Bool)

(assert (=> b!566232 m!819953))

(declare-fun m!819955 () Bool)

(assert (=> b!566237 m!819955))

(assert (=> b!566236 m!819933))

(declare-fun m!819957 () Bool)

(assert (=> b!566236 m!819957))

(declare-fun m!819959 () Bool)

(assert (=> b!566238 m!819959))

(assert (=> b!565708 d!198388))

(declare-fun d!198390 () Bool)

(assert (=> d!198390 (= (isEmpty!4026 input!2705) ((_ is Nil!5576) input!2705))))

(assert (=> b!565715 d!198390))

(declare-fun d!198392 () Bool)

(assert (=> d!198392 (= (get!2124 lt!238394) (v!16268 lt!238394))))

(assert (=> b!565713 d!198392))

(declare-fun d!198394 () Bool)

(declare-fun lt!238591 () Int)

(assert (=> d!198394 (>= lt!238591 0)))

(declare-fun e!342164 () Int)

(assert (=> d!198394 (= lt!238591 e!342164)))

(declare-fun c!106278 () Bool)

(assert (=> d!198394 (= c!106278 ((_ is Nil!5576) (originalCharacters!1112 token!491)))))

(assert (=> d!198394 (= (size!4445 (originalCharacters!1112 token!491)) lt!238591)))

(declare-fun b!566241 () Bool)

(assert (=> b!566241 (= e!342164 0)))

(declare-fun b!566242 () Bool)

(assert (=> b!566242 (= e!342164 (+ 1 (size!4445 (t!76269 (originalCharacters!1112 token!491)))))))

(assert (= (and d!198394 c!106278) b!566241))

(assert (= (and d!198394 (not c!106278)) b!566242))

(declare-fun m!819961 () Bool)

(assert (=> b!566242 m!819961))

(assert (=> b!565714 d!198394))

(declare-fun b!566245 () Bool)

(declare-fun e!342167 () Bool)

(assert (=> b!566245 (= e!342167 (isPrefix!707 (tail!739 lt!238382) (tail!739 input!2705)))))

(declare-fun d!198396 () Bool)

(declare-fun e!342165 () Bool)

(assert (=> d!198396 e!342165))

(declare-fun res!242761 () Bool)

(assert (=> d!198396 (=> res!242761 e!342165)))

(declare-fun lt!238592 () Bool)

(assert (=> d!198396 (= res!242761 (not lt!238592))))

(declare-fun e!342166 () Bool)

(assert (=> d!198396 (= lt!238592 e!342166)))

(declare-fun res!242759 () Bool)

(assert (=> d!198396 (=> res!242759 e!342166)))

(assert (=> d!198396 (= res!242759 ((_ is Nil!5576) lt!238382))))

(assert (=> d!198396 (= (isPrefix!707 lt!238382 input!2705) lt!238592)))

(declare-fun b!566244 () Bool)

(declare-fun res!242760 () Bool)

(assert (=> b!566244 (=> (not res!242760) (not e!342167))))

(assert (=> b!566244 (= res!242760 (= (head!1210 lt!238382) (head!1210 input!2705)))))

(declare-fun b!566246 () Bool)

(assert (=> b!566246 (= e!342165 (>= (size!4445 input!2705) (size!4445 lt!238382)))))

(declare-fun b!566243 () Bool)

(assert (=> b!566243 (= e!342166 e!342167)))

(declare-fun res!242758 () Bool)

(assert (=> b!566243 (=> (not res!242758) (not e!342167))))

(assert (=> b!566243 (= res!242758 (not ((_ is Nil!5576) input!2705)))))

(assert (= (and d!198396 (not res!242759)) b!566243))

(assert (= (and b!566243 res!242758) b!566244))

(assert (= (and b!566244 res!242760) b!566245))

(assert (= (and d!198396 (not res!242761)) b!566246))

(assert (=> b!566245 m!819907))

(assert (=> b!566245 m!819741))

(assert (=> b!566245 m!819907))

(assert (=> b!566245 m!819741))

(declare-fun m!819963 () Bool)

(assert (=> b!566245 m!819963))

(assert (=> b!566244 m!819913))

(assert (=> b!566244 m!819745))

(assert (=> b!566246 m!819441))

(assert (=> b!566246 m!819185))

(assert (=> b!565718 d!198396))

(declare-fun b!566249 () Bool)

(declare-fun e!342170 () Bool)

(assert (=> b!566249 (= e!342170 (isPrefix!707 (tail!739 lt!238392) (tail!739 input!2705)))))

(declare-fun d!198398 () Bool)

(declare-fun e!342168 () Bool)

(assert (=> d!198398 e!342168))

(declare-fun res!242765 () Bool)

(assert (=> d!198398 (=> res!242765 e!342168)))

(declare-fun lt!238593 () Bool)

(assert (=> d!198398 (= res!242765 (not lt!238593))))

(declare-fun e!342169 () Bool)

(assert (=> d!198398 (= lt!238593 e!342169)))

(declare-fun res!242763 () Bool)

(assert (=> d!198398 (=> res!242763 e!342169)))

(assert (=> d!198398 (= res!242763 ((_ is Nil!5576) lt!238392))))

(assert (=> d!198398 (= (isPrefix!707 lt!238392 input!2705) lt!238593)))

(declare-fun b!566248 () Bool)

(declare-fun res!242764 () Bool)

(assert (=> b!566248 (=> (not res!242764) (not e!342170))))

(assert (=> b!566248 (= res!242764 (= (head!1210 lt!238392) (head!1210 input!2705)))))

(declare-fun b!566250 () Bool)

(assert (=> b!566250 (= e!342168 (>= (size!4445 input!2705) (size!4445 lt!238392)))))

(declare-fun b!566247 () Bool)

(assert (=> b!566247 (= e!342169 e!342170)))

(declare-fun res!242762 () Bool)

(assert (=> b!566247 (=> (not res!242762) (not e!342170))))

(assert (=> b!566247 (= res!242762 (not ((_ is Nil!5576) input!2705)))))

(assert (= (and d!198398 (not res!242763)) b!566247))

(assert (= (and b!566247 res!242762) b!566248))

(assert (= (and b!566248 res!242764) b!566249))

(assert (= (and d!198398 (not res!242765)) b!566250))

(assert (=> b!566249 m!819901))

(assert (=> b!566249 m!819741))

(assert (=> b!566249 m!819901))

(assert (=> b!566249 m!819741))

(declare-fun m!819965 () Bool)

(assert (=> b!566249 m!819965))

(assert (=> b!566248 m!819905))

(assert (=> b!566248 m!819745))

(assert (=> b!566250 m!819441))

(assert (=> b!566250 m!819205))

(assert (=> b!565716 d!198398))

(declare-fun d!198400 () Bool)

(declare-fun lt!238594 () List!5586)

(assert (=> d!198400 (= (++!1561 input!2705 lt!238594) input!2705)))

(declare-fun e!342171 () List!5586)

(assert (=> d!198400 (= lt!238594 e!342171)))

(declare-fun c!106279 () Bool)

(assert (=> d!198400 (= c!106279 ((_ is Cons!5576) input!2705))))

(assert (=> d!198400 (>= (size!4445 input!2705) (size!4445 input!2705))))

(assert (=> d!198400 (= (getSuffix!226 input!2705 input!2705) lt!238594)))

(declare-fun b!566251 () Bool)

(assert (=> b!566251 (= e!342171 (getSuffix!226 (tail!739 input!2705) (t!76269 input!2705)))))

(declare-fun b!566252 () Bool)

(assert (=> b!566252 (= e!342171 input!2705)))

(assert (= (and d!198400 c!106279) b!566251))

(assert (= (and d!198400 (not c!106279)) b!566252))

(declare-fun m!819967 () Bool)

(assert (=> d!198400 m!819967))

(assert (=> d!198400 m!819441))

(assert (=> d!198400 m!819441))

(assert (=> b!566251 m!819741))

(assert (=> b!566251 m!819741))

(declare-fun m!819969 () Bool)

(assert (=> b!566251 m!819969))

(assert (=> b!565720 d!198400))

(declare-fun d!198402 () Bool)

(assert (=> d!198402 (= (isDefined!1235 lt!238394) (not (isEmpty!4028 lt!238394)))))

(declare-fun bs!68708 () Bool)

(assert (= bs!68708 d!198402))

(declare-fun m!819971 () Bool)

(assert (=> bs!68708 m!819971))

(assert (=> b!565699 d!198402))

(declare-fun b!566253 () Bool)

(declare-fun res!242768 () Bool)

(declare-fun e!342173 () Bool)

(assert (=> b!566253 (=> (not res!242768) (not e!342173))))

(declare-fun lt!238598 () Option!1424)

(assert (=> b!566253 (= res!242768 (matchR!554 (regex!1073 (rule!1809 (_1!3550 (get!2124 lt!238598)))) (list!2313 (charsOf!702 (_1!3550 (get!2124 lt!238598))))))))

(declare-fun b!566254 () Bool)

(declare-fun res!242766 () Bool)

(assert (=> b!566254 (=> (not res!242766) (not e!342173))))

(assert (=> b!566254 (= res!242766 (= (value!35447 (_1!3550 (get!2124 lt!238598))) (apply!1338 (transformation!1073 (rule!1809 (_1!3550 (get!2124 lt!238598)))) (seqFromList!1261 (originalCharacters!1112 (_1!3550 (get!2124 lt!238598)))))))))

(declare-fun b!566255 () Bool)

(declare-fun res!242772 () Bool)

(assert (=> b!566255 (=> (not res!242772) (not e!342173))))

(assert (=> b!566255 (= res!242772 (= (list!2313 (charsOf!702 (_1!3550 (get!2124 lt!238598)))) (originalCharacters!1112 (_1!3550 (get!2124 lt!238598)))))))

(declare-fun call!39333 () Option!1424)

(declare-fun bm!39328 () Bool)

(assert (=> bm!39328 (= call!39333 (maxPrefixOneRule!358 thiss!22590 (h!10979 rules!3103) lt!238384))))

(declare-fun b!566256 () Bool)

(declare-fun res!242770 () Bool)

(assert (=> b!566256 (=> (not res!242770) (not e!342173))))

(assert (=> b!566256 (= res!242770 (< (size!4445 (_2!3550 (get!2124 lt!238598))) (size!4445 lt!238384)))))

(declare-fun b!566257 () Bool)

(assert (=> b!566257 (= e!342173 (contains!1307 rules!3103 (rule!1809 (_1!3550 (get!2124 lt!238598)))))))

(declare-fun b!566258 () Bool)

(declare-fun e!342174 () Option!1424)

(declare-fun lt!238596 () Option!1424)

(declare-fun lt!238595 () Option!1424)

(assert (=> b!566258 (= e!342174 (ite (and ((_ is None!1423) lt!238596) ((_ is None!1423) lt!238595)) None!1423 (ite ((_ is None!1423) lt!238595) lt!238596 (ite ((_ is None!1423) lt!238596) lt!238595 (ite (>= (size!4444 (_1!3550 (v!16268 lt!238596))) (size!4444 (_1!3550 (v!16268 lt!238595)))) lt!238596 lt!238595)))))))

(assert (=> b!566258 (= lt!238596 call!39333)))

(assert (=> b!566258 (= lt!238595 (maxPrefix!657 thiss!22590 (t!76271 rules!3103) lt!238384))))

(declare-fun d!198404 () Bool)

(declare-fun e!342172 () Bool)

(assert (=> d!198404 e!342172))

(declare-fun res!242769 () Bool)

(assert (=> d!198404 (=> res!242769 e!342172)))

(assert (=> d!198404 (= res!242769 (isEmpty!4028 lt!238598))))

(assert (=> d!198404 (= lt!238598 e!342174)))

(declare-fun c!106280 () Bool)

(assert (=> d!198404 (= c!106280 (and ((_ is Cons!5578) rules!3103) ((_ is Nil!5578) (t!76271 rules!3103))))))

(declare-fun lt!238597 () Unit!9969)

(declare-fun lt!238599 () Unit!9969)

(assert (=> d!198404 (= lt!238597 lt!238599)))

(assert (=> d!198404 (isPrefix!707 lt!238384 lt!238384)))

(assert (=> d!198404 (= lt!238599 (lemmaIsPrefixRefl!445 lt!238384 lt!238384))))

(assert (=> d!198404 (rulesValidInductive!380 thiss!22590 rules!3103)))

(assert (=> d!198404 (= (maxPrefix!657 thiss!22590 rules!3103 lt!238384) lt!238598)))

(declare-fun b!566259 () Bool)

(assert (=> b!566259 (= e!342172 e!342173)))

(declare-fun res!242771 () Bool)

(assert (=> b!566259 (=> (not res!242771) (not e!342173))))

(assert (=> b!566259 (= res!242771 (isDefined!1235 lt!238598))))

(declare-fun b!566260 () Bool)

(assert (=> b!566260 (= e!342174 call!39333)))

(declare-fun b!566261 () Bool)

(declare-fun res!242767 () Bool)

(assert (=> b!566261 (=> (not res!242767) (not e!342173))))

(assert (=> b!566261 (= res!242767 (= (++!1561 (list!2313 (charsOf!702 (_1!3550 (get!2124 lt!238598)))) (_2!3550 (get!2124 lt!238598))) lt!238384))))

(assert (= (and d!198404 c!106280) b!566260))

(assert (= (and d!198404 (not c!106280)) b!566258))

(assert (= (or b!566260 b!566258) bm!39328))

(assert (= (and d!198404 (not res!242769)) b!566259))

(assert (= (and b!566259 res!242771) b!566255))

(assert (= (and b!566255 res!242772) b!566256))

(assert (= (and b!566256 res!242770) b!566261))

(assert (= (and b!566261 res!242767) b!566254))

(assert (= (and b!566254 res!242766) b!566253))

(assert (= (and b!566253 res!242768) b!566257))

(declare-fun m!819973 () Bool)

(assert (=> b!566255 m!819973))

(declare-fun m!819975 () Bool)

(assert (=> b!566255 m!819975))

(assert (=> b!566255 m!819975))

(declare-fun m!819977 () Bool)

(assert (=> b!566255 m!819977))

(assert (=> b!566261 m!819973))

(assert (=> b!566261 m!819975))

(assert (=> b!566261 m!819975))

(assert (=> b!566261 m!819977))

(assert (=> b!566261 m!819977))

(declare-fun m!819979 () Bool)

(assert (=> b!566261 m!819979))

(declare-fun m!819981 () Bool)

(assert (=> bm!39328 m!819981))

(assert (=> b!566256 m!819973))

(declare-fun m!819983 () Bool)

(assert (=> b!566256 m!819983))

(assert (=> b!566256 m!819587))

(declare-fun m!819985 () Bool)

(assert (=> d!198404 m!819985))

(declare-fun m!819987 () Bool)

(assert (=> d!198404 m!819987))

(declare-fun m!819989 () Bool)

(assert (=> d!198404 m!819989))

(assert (=> d!198404 m!819947))

(assert (=> b!566254 m!819973))

(declare-fun m!819991 () Bool)

(assert (=> b!566254 m!819991))

(assert (=> b!566254 m!819991))

(declare-fun m!819993 () Bool)

(assert (=> b!566254 m!819993))

(assert (=> b!566253 m!819973))

(assert (=> b!566253 m!819975))

(assert (=> b!566253 m!819975))

(assert (=> b!566253 m!819977))

(assert (=> b!566253 m!819977))

(declare-fun m!819995 () Bool)

(assert (=> b!566253 m!819995))

(declare-fun m!819997 () Bool)

(assert (=> b!566258 m!819997))

(assert (=> b!566257 m!819973))

(declare-fun m!819999 () Bool)

(assert (=> b!566257 m!819999))

(declare-fun m!820001 () Bool)

(assert (=> b!566259 m!820001))

(assert (=> b!565699 d!198404))

(declare-fun b!566264 () Bool)

(declare-fun res!242774 () Bool)

(declare-fun e!342175 () Bool)

(assert (=> b!566264 (=> (not res!242774) (not e!342175))))

(declare-fun lt!238600 () List!5586)

(assert (=> b!566264 (= res!242774 (= (size!4445 lt!238600) (+ (size!4445 input!2705) (size!4445 suffix!1342))))))

(declare-fun b!566262 () Bool)

(declare-fun e!342176 () List!5586)

(assert (=> b!566262 (= e!342176 suffix!1342)))

(declare-fun d!198406 () Bool)

(assert (=> d!198406 e!342175))

(declare-fun res!242773 () Bool)

(assert (=> d!198406 (=> (not res!242773) (not e!342175))))

(assert (=> d!198406 (= res!242773 (= (content!978 lt!238600) ((_ map or) (content!978 input!2705) (content!978 suffix!1342))))))

(assert (=> d!198406 (= lt!238600 e!342176)))

(declare-fun c!106281 () Bool)

(assert (=> d!198406 (= c!106281 ((_ is Nil!5576) input!2705))))

(assert (=> d!198406 (= (++!1561 input!2705 suffix!1342) lt!238600)))

(declare-fun b!566265 () Bool)

(assert (=> b!566265 (= e!342175 (or (not (= suffix!1342 Nil!5576)) (= lt!238600 input!2705)))))

(declare-fun b!566263 () Bool)

(assert (=> b!566263 (= e!342176 (Cons!5576 (h!10977 input!2705) (++!1561 (t!76269 input!2705) suffix!1342)))))

(assert (= (and d!198406 c!106281) b!566262))

(assert (= (and d!198406 (not c!106281)) b!566263))

(assert (= (and d!198406 res!242773) b!566264))

(assert (= (and b!566264 res!242774) b!566265))

(declare-fun m!820003 () Bool)

(assert (=> b!566264 m!820003))

(assert (=> b!566264 m!819441))

(assert (=> b!566264 m!819295))

(declare-fun m!820005 () Bool)

(assert (=> d!198406 m!820005))

(declare-fun m!820007 () Bool)

(assert (=> d!198406 m!820007))

(assert (=> d!198406 m!819301))

(declare-fun m!820009 () Bool)

(assert (=> b!566263 m!820009))

(assert (=> b!565699 d!198406))

(declare-fun d!198408 () Bool)

(assert (=> d!198408 (= (isEmpty!4025 rules!3103) ((_ is Nil!5578) rules!3103))))

(assert (=> b!565697 d!198408))

(declare-fun d!198410 () Bool)

(assert (=> d!198410 (= (list!2313 (charsOf!702 token!491)) (list!2315 (c!106202 (charsOf!702 token!491))))))

(declare-fun bs!68709 () Bool)

(assert (= bs!68709 d!198410))

(declare-fun m!820011 () Bool)

(assert (=> bs!68709 m!820011))

(assert (=> b!565719 d!198410))

(declare-fun d!198412 () Bool)

(declare-fun lt!238601 () BalanceConc!3588)

(assert (=> d!198412 (= (list!2313 lt!238601) (originalCharacters!1112 token!491))))

(assert (=> d!198412 (= lt!238601 (dynLambda!3225 (toChars!1787 (transformation!1073 (rule!1809 token!491))) (value!35447 token!491)))))

(assert (=> d!198412 (= (charsOf!702 token!491) lt!238601)))

(declare-fun b_lambda!21813 () Bool)

(assert (=> (not b_lambda!21813) (not d!198412)))

(assert (=> d!198412 t!76293))

(declare-fun b_and!55187 () Bool)

(assert (= b_and!55175 (and (=> t!76293 result!55132) b_and!55187)))

(assert (=> d!198412 t!76295))

(declare-fun b_and!55189 () Bool)

(assert (= b_and!55177 (and (=> t!76295 result!55136) b_and!55189)))

(declare-fun m!820013 () Bool)

(assert (=> d!198412 m!820013))

(assert (=> d!198412 m!819669))

(assert (=> b!565719 d!198412))

(declare-fun b!566268 () Bool)

(declare-fun res!242776 () Bool)

(declare-fun e!342177 () Bool)

(assert (=> b!566268 (=> (not res!242776) (not e!342177))))

(declare-fun lt!238602 () List!5586)

(assert (=> b!566268 (= res!242776 (= (size!4445 lt!238602) (+ (size!4445 lt!238382) (size!4445 lt!238389))))))

(declare-fun b!566266 () Bool)

(declare-fun e!342178 () List!5586)

(assert (=> b!566266 (= e!342178 lt!238389)))

(declare-fun d!198414 () Bool)

(assert (=> d!198414 e!342177))

(declare-fun res!242775 () Bool)

(assert (=> d!198414 (=> (not res!242775) (not e!342177))))

(assert (=> d!198414 (= res!242775 (= (content!978 lt!238602) ((_ map or) (content!978 lt!238382) (content!978 lt!238389))))))

(assert (=> d!198414 (= lt!238602 e!342178)))

(declare-fun c!106282 () Bool)

(assert (=> d!198414 (= c!106282 ((_ is Nil!5576) lt!238382))))

(assert (=> d!198414 (= (++!1561 lt!238382 lt!238389) lt!238602)))

(declare-fun b!566269 () Bool)

(assert (=> b!566269 (= e!342177 (or (not (= lt!238389 Nil!5576)) (= lt!238602 lt!238382)))))

(declare-fun b!566267 () Bool)

(assert (=> b!566267 (= e!342178 (Cons!5576 (h!10977 lt!238382) (++!1561 (t!76269 lt!238382) lt!238389)))))

(assert (= (and d!198414 c!106282) b!566266))

(assert (= (and d!198414 (not c!106282)) b!566267))

(assert (= (and d!198414 res!242775) b!566268))

(assert (= (and b!566268 res!242776) b!566269))

(declare-fun m!820015 () Bool)

(assert (=> b!566268 m!820015))

(assert (=> b!566268 m!819185))

(declare-fun m!820017 () Bool)

(assert (=> b!566268 m!820017))

(declare-fun m!820019 () Bool)

(assert (=> d!198414 m!820019))

(assert (=> d!198414 m!819843))

(declare-fun m!820021 () Bool)

(assert (=> d!198414 m!820021))

(declare-fun m!820023 () Bool)

(assert (=> b!566267 m!820023))

(assert (=> b!565698 d!198414))

(declare-fun b!566274 () Bool)

(declare-fun e!342181 () Bool)

(declare-fun tp!178532 () Bool)

(assert (=> b!566274 (= e!342181 (and tp_is_empty!3169 tp!178532))))

(assert (=> b!565717 (= tp!178478 e!342181)))

(assert (= (and b!565717 ((_ is Cons!5576) (t!76269 input!2705))) b!566274))

(declare-fun b!566285 () Bool)

(declare-fun b_free!15777 () Bool)

(declare-fun b_next!15793 () Bool)

(assert (=> b!566285 (= b_free!15777 (not b_next!15793))))

(declare-fun t!76313 () Bool)

(declare-fun tb!49283 () Bool)

(assert (=> (and b!566285 (= (toValue!1928 (transformation!1073 (h!10979 (t!76271 rules!3103)))) (toValue!1928 (transformation!1073 (rule!1809 token!491)))) t!76313) tb!49283))

(declare-fun result!55164 () Bool)

(assert (= result!55164 result!55118))

(assert (=> d!198210 t!76313))

(declare-fun t!76315 () Bool)

(declare-fun tb!49285 () Bool)

(assert (=> (and b!566285 (= (toValue!1928 (transformation!1073 (h!10979 (t!76271 rules!3103)))) (toValue!1928 (transformation!1073 (rule!1809 (_1!3550 (v!16268 lt!238400)))))) t!76315) tb!49285))

(declare-fun result!55166 () Bool)

(assert (= result!55166 result!55156))

(assert (=> d!198372 t!76315))

(declare-fun tp!178541 () Bool)

(declare-fun b_and!55191 () Bool)

(assert (=> b!566285 (= tp!178541 (and (=> t!76313 result!55164) (=> t!76315 result!55166) b_and!55191))))

(declare-fun b_free!15779 () Bool)

(declare-fun b_next!15795 () Bool)

(assert (=> b!566285 (= b_free!15779 (not b_next!15795))))

(declare-fun t!76317 () Bool)

(declare-fun tb!49287 () Bool)

(assert (=> (and b!566285 (= (toChars!1787 (transformation!1073 (h!10979 (t!76271 rules!3103)))) (toChars!1787 (transformation!1073 (rule!1809 token!491)))) t!76317) tb!49287))

(declare-fun result!55168 () Bool)

(assert (= result!55168 result!55132))

(assert (=> b!565949 t!76317))

(declare-fun tb!49289 () Bool)

(declare-fun t!76319 () Bool)

(assert (=> (and b!566285 (= (toChars!1787 (transformation!1073 (h!10979 (t!76271 rules!3103)))) (toChars!1787 (transformation!1073 (rule!1809 (_1!3550 (v!16268 lt!238400)))))) t!76319) tb!49289))

(declare-fun result!55170 () Bool)

(assert (= result!55170 result!55138))

(assert (=> d!198310 t!76319))

(assert (=> d!198412 t!76317))

(declare-fun b_and!55193 () Bool)

(declare-fun tp!178543 () Bool)

(assert (=> b!566285 (= tp!178543 (and (=> t!76317 result!55168) (=> t!76319 result!55170) b_and!55193))))

(declare-fun e!342192 () Bool)

(assert (=> b!566285 (= e!342192 (and tp!178541 tp!178543))))

(declare-fun tp!178542 () Bool)

(declare-fun b!566284 () Bool)

(declare-fun e!342193 () Bool)

(assert (=> b!566284 (= e!342193 (and tp!178542 (inv!7004 (tag!1335 (h!10979 (t!76271 rules!3103)))) (inv!7007 (transformation!1073 (h!10979 (t!76271 rules!3103)))) e!342192))))

(declare-fun b!566283 () Bool)

(declare-fun e!342190 () Bool)

(declare-fun tp!178544 () Bool)

(assert (=> b!566283 (= e!342190 (and e!342193 tp!178544))))

(assert (=> b!565696 (= tp!178480 e!342190)))

(assert (= b!566284 b!566285))

(assert (= b!566283 b!566284))

(assert (= (and b!565696 ((_ is Cons!5578) (t!76271 rules!3103))) b!566283))

(declare-fun m!820025 () Bool)

(assert (=> b!566284 m!820025))

(declare-fun m!820027 () Bool)

(assert (=> b!566284 m!820027))

(declare-fun b!566296 () Bool)

(declare-fun e!342196 () Bool)

(assert (=> b!566296 (= e!342196 tp_is_empty!3169)))

(declare-fun b!566299 () Bool)

(declare-fun tp!178557 () Bool)

(declare-fun tp!178559 () Bool)

(assert (=> b!566299 (= e!342196 (and tp!178557 tp!178559))))

(declare-fun b!566297 () Bool)

(declare-fun tp!178558 () Bool)

(declare-fun tp!178555 () Bool)

(assert (=> b!566297 (= e!342196 (and tp!178558 tp!178555))))

(declare-fun b!566298 () Bool)

(declare-fun tp!178556 () Bool)

(assert (=> b!566298 (= e!342196 tp!178556)))

(assert (=> b!565706 (= tp!178483 e!342196)))

(assert (= (and b!565706 ((_ is ElementMatch!1407) (regex!1073 (h!10979 rules!3103)))) b!566296))

(assert (= (and b!565706 ((_ is Concat!2504) (regex!1073 (h!10979 rules!3103)))) b!566297))

(assert (= (and b!565706 ((_ is Star!1407) (regex!1073 (h!10979 rules!3103)))) b!566298))

(assert (= (and b!565706 ((_ is Union!1407) (regex!1073 (h!10979 rules!3103)))) b!566299))

(declare-fun b!566300 () Bool)

(declare-fun e!342197 () Bool)

(assert (=> b!566300 (= e!342197 tp_is_empty!3169)))

(declare-fun b!566303 () Bool)

(declare-fun tp!178562 () Bool)

(declare-fun tp!178564 () Bool)

(assert (=> b!566303 (= e!342197 (and tp!178562 tp!178564))))

(declare-fun b!566301 () Bool)

(declare-fun tp!178563 () Bool)

(declare-fun tp!178560 () Bool)

(assert (=> b!566301 (= e!342197 (and tp!178563 tp!178560))))

(declare-fun b!566302 () Bool)

(declare-fun tp!178561 () Bool)

(assert (=> b!566302 (= e!342197 tp!178561)))

(assert (=> b!565709 (= tp!178476 e!342197)))

(assert (= (and b!565709 ((_ is ElementMatch!1407) (regex!1073 (rule!1809 token!491)))) b!566300))

(assert (= (and b!565709 ((_ is Concat!2504) (regex!1073 (rule!1809 token!491)))) b!566301))

(assert (= (and b!565709 ((_ is Star!1407) (regex!1073 (rule!1809 token!491)))) b!566302))

(assert (= (and b!565709 ((_ is Union!1407) (regex!1073 (rule!1809 token!491)))) b!566303))

(declare-fun b!566304 () Bool)

(declare-fun e!342198 () Bool)

(declare-fun tp!178565 () Bool)

(assert (=> b!566304 (= e!342198 (and tp_is_empty!3169 tp!178565))))

(assert (=> b!565704 (= tp!178475 e!342198)))

(assert (= (and b!565704 ((_ is Cons!5576) (t!76269 suffix!1342))) b!566304))

(declare-fun b!566305 () Bool)

(declare-fun e!342199 () Bool)

(declare-fun tp!178566 () Bool)

(assert (=> b!566305 (= e!342199 (and tp_is_empty!3169 tp!178566))))

(assert (=> b!565724 (= tp!178482 e!342199)))

(assert (= (and b!565724 ((_ is Cons!5576) (originalCharacters!1112 token!491))) b!566305))

(declare-fun b_lambda!21815 () Bool)

(assert (= b_lambda!21813 (or (and b!565712 b_free!15767 (= (toChars!1787 (transformation!1073 (h!10979 rules!3103))) (toChars!1787 (transformation!1073 (rule!1809 token!491))))) (and b!565725 b_free!15771) (and b!566285 b_free!15779 (= (toChars!1787 (transformation!1073 (h!10979 (t!76271 rules!3103)))) (toChars!1787 (transformation!1073 (rule!1809 token!491))))) b_lambda!21815)))

(declare-fun b_lambda!21817 () Bool)

(assert (= b_lambda!21795 (or (and b!565712 b_free!15765 (= (toValue!1928 (transformation!1073 (h!10979 rules!3103))) (toValue!1928 (transformation!1073 (rule!1809 token!491))))) (and b!565725 b_free!15769) (and b!566285 b_free!15777 (= (toValue!1928 (transformation!1073 (h!10979 (t!76271 rules!3103)))) (toValue!1928 (transformation!1073 (rule!1809 token!491))))) b_lambda!21817)))

(declare-fun b_lambda!21819 () Bool)

(assert (= b_lambda!21801 (or (and b!565712 b_free!15767 (= (toChars!1787 (transformation!1073 (h!10979 rules!3103))) (toChars!1787 (transformation!1073 (rule!1809 token!491))))) (and b!565725 b_free!15771) (and b!566285 b_free!15779 (= (toChars!1787 (transformation!1073 (h!10979 (t!76271 rules!3103)))) (toChars!1787 (transformation!1073 (rule!1809 token!491))))) b_lambda!21819)))

(check-sat (not bm!39327) (not b!566197) (not b!566250) (not b!566191) (not b!565917) (not b!566259) (not b!566233) b_and!55183 (not b!566263) (not tb!49279) (not b!565865) (not b!566190) (not b_next!15787) b_and!55193 (not b!566110) (not b!566145) (not b!565923) (not b!566202) (not b!565915) (not b!565936) (not tb!49267) (not d!198212) (not d!198164) (not b!566257) (not b!566255) (not d!198336) (not d!198404) (not d!198366) (not b!566244) (not d!198226) (not b!566146) (not tb!49263) (not b!566302) (not b!565916) (not b!566254) (not b!565872) (not b!565955) (not b!565739) (not b!566186) (not bm!39320) (not b!566205) (not b!565740) (not b!566301) (not d!198410) (not b!566235) (not b!566206) (not b!566022) (not b!566251) (not d!198358) (not d!198304) (not b!565949) (not d!198258) (not b!566025) (not b!566207) (not d!198308) (not b!566253) (not b!566046) (not d!198222) (not d!198414) (not b!566024) (not b!566248) (not d!198380) (not b!566303) (not b!566284) (not b_lambda!21817) (not b!566249) (not d!198340) (not b!566195) (not b!566196) (not b!565921) (not d!198386) (not d!198350) (not d!198348) (not b!566264) (not b!565867) (not b!566083) (not b_lambda!21803) (not b!565957) (not b!566297) (not b!566245) (not b!566305) (not b!565870) (not d!198240) (not b!566261) (not b!565918) (not b!566049) (not b!565919) b_and!55187 (not b!565868) (not b!566213) (not b!566258) (not b!566298) (not b!566246) (not b!565950) (not b!566304) (not b!566283) (not b!566017) (not b_next!15783) (not b!565864) (not b_next!15781) (not b!566112) (not b!566274) (not d!198310) (not b!566240) (not b!566212) (not b!566242) (not d!198400) (not b!565747) (not b!566236) (not b!566299) (not d!198356) (not b!566201) (not d!198352) (not d!198346) (not d!198362) (not b_lambda!21815) (not b!566256) (not b!566268) (not d!198388) (not d!198234) (not d!198166) (not b_next!15785) (not b!566234) (not b!566232) (not d!198376) (not b!566198) (not b!566182) (not d!198412) (not b_next!15795) (not b_lambda!21811) (not b_lambda!21819) (not b!566203) (not d!198260) tp_is_empty!3169 (not b!566086) (not d!198230) (not d!198168) (not d!198384) (not b!566209) (not tb!49251) (not d!198332) (not d!198364) (not b!566188) (not b!566189) (not b!566238) (not d!198342) (not d!198338) (not b_next!15793) (not b!566237) (not d!198334) (not b!566028) (not b!566137) (not d!198248) (not b!565866) (not b!565920) (not d!198402) (not b!565869) (not b!566023) (not b!566267) (not b!566192) (not b!566136) (not b!566045) (not bm!39328) (not d!198406) b_and!55191 (not b!566135) (not d!198344) b_and!55189 b_and!55185)
(check-sat b_and!55183 b_and!55187 (not b_next!15785) (not b_next!15795) (not b_next!15793) b_and!55191 (not b_next!15787) b_and!55193 (not b_next!15783) (not b_next!15781) b_and!55189 b_and!55185)
