; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!338824 () Bool)

(assert start!338824)

(declare-fun b!3632974 () Bool)

(declare-fun b_free!95041 () Bool)

(declare-fun b_next!95745 () Bool)

(assert (=> b!3632974 (= b_free!95041 (not b_next!95745))))

(declare-fun tp!1108979 () Bool)

(declare-fun b_and!266843 () Bool)

(assert (=> b!3632974 (= tp!1108979 b_and!266843)))

(declare-fun b_free!95043 () Bool)

(declare-fun b_next!95747 () Bool)

(assert (=> b!3632974 (= b_free!95043 (not b_next!95747))))

(declare-fun tp!1108983 () Bool)

(declare-fun b_and!266845 () Bool)

(assert (=> b!3632974 (= tp!1108983 b_and!266845)))

(declare-fun b!3632979 () Bool)

(declare-fun b_free!95045 () Bool)

(declare-fun b_next!95749 () Bool)

(assert (=> b!3632979 (= b_free!95045 (not b_next!95749))))

(declare-fun tp!1108985 () Bool)

(declare-fun b_and!266847 () Bool)

(assert (=> b!3632979 (= tp!1108985 b_and!266847)))

(declare-fun b_free!95047 () Bool)

(declare-fun b_next!95751 () Bool)

(assert (=> b!3632979 (= b_free!95047 (not b_next!95751))))

(declare-fun tp!1108980 () Bool)

(declare-fun b_and!266849 () Bool)

(assert (=> b!3632979 (= tp!1108980 b_and!266849)))

(declare-fun b!3632982 () Bool)

(declare-fun b_free!95049 () Bool)

(declare-fun b_next!95753 () Bool)

(assert (=> b!3632982 (= b_free!95049 (not b_next!95753))))

(declare-fun tp!1108991 () Bool)

(declare-fun b_and!266851 () Bool)

(assert (=> b!3632982 (= tp!1108991 b_and!266851)))

(declare-fun b_free!95051 () Bool)

(declare-fun b_next!95755 () Bool)

(assert (=> b!3632982 (= b_free!95051 (not b_next!95755))))

(declare-fun tp!1108986 () Bool)

(declare-fun b_and!266853 () Bool)

(assert (=> b!3632982 (= tp!1108986 b_and!266853)))

(declare-fun b!3633002 () Bool)

(declare-fun b_free!95053 () Bool)

(declare-fun b_next!95757 () Bool)

(assert (=> b!3633002 (= b_free!95053 (not b_next!95757))))

(declare-fun tp!1108984 () Bool)

(declare-fun b_and!266855 () Bool)

(assert (=> b!3633002 (= tp!1108984 b_and!266855)))

(declare-fun b_free!95055 () Bool)

(declare-fun b_next!95759 () Bool)

(assert (=> b!3633002 (= b_free!95055 (not b_next!95759))))

(declare-fun tp!1108993 () Bool)

(declare-fun b_and!266857 () Bool)

(assert (=> b!3633002 (= tp!1108993 b_and!266857)))

(declare-fun b!3632973 () Bool)

(declare-fun res!1471397 () Bool)

(declare-fun e!2248805 () Bool)

(assert (=> b!3632973 (=> res!1471397 e!2248805)))

(declare-datatypes ((List!38400 0))(
  ( (Nil!38276) (Cons!38276 (h!43696 (_ BitVec 16)) (t!295463 List!38400)) )
))
(declare-datatypes ((TokenValue!5941 0))(
  ( (FloatLiteralValue!11882 (text!42032 List!38400)) (TokenValueExt!5940 (__x!24099 Int)) (Broken!29705 (value!183199 List!38400)) (Object!6064) (End!5941) (Def!5941) (Underscore!5941) (Match!5941) (Else!5941) (Error!5941) (Case!5941) (If!5941) (Extends!5941) (Abstract!5941) (Class!5941) (Val!5941) (DelimiterValue!11882 (del!6001 List!38400)) (KeywordValue!5947 (value!183200 List!38400)) (CommentValue!11882 (value!183201 List!38400)) (WhitespaceValue!11882 (value!183202 List!38400)) (IndentationValue!5941 (value!183203 List!38400)) (String!43040) (Int32!5941) (Broken!29706 (value!183204 List!38400)) (Boolean!5942) (Unit!55096) (OperatorValue!5944 (op!6001 List!38400)) (IdentifierValue!11882 (value!183205 List!38400)) (IdentifierValue!11883 (value!183206 List!38400)) (WhitespaceValue!11883 (value!183207 List!38400)) (True!11882) (False!11882) (Broken!29707 (value!183208 List!38400)) (Broken!29708 (value!183209 List!38400)) (True!11883) (RightBrace!5941) (RightBracket!5941) (Colon!5941) (Null!5941) (Comma!5941) (LeftBracket!5941) (False!11883) (LeftBrace!5941) (ImaginaryLiteralValue!5941 (text!42033 List!38400)) (StringLiteralValue!17823 (value!183210 List!38400)) (EOFValue!5941 (value!183211 List!38400)) (IdentValue!5941 (value!183212 List!38400)) (DelimiterValue!11883 (value!183213 List!38400)) (DedentValue!5941 (value!183214 List!38400)) (NewLineValue!5941 (value!183215 List!38400)) (IntegerValue!17823 (value!183216 (_ BitVec 32)) (text!42034 List!38400)) (IntegerValue!17824 (value!183217 Int) (text!42035 List!38400)) (Times!5941) (Or!5941) (Equal!5941) (Minus!5941) (Broken!29709 (value!183218 List!38400)) (And!5941) (Div!5941) (LessEqual!5941) (Mod!5941) (Concat!16411) (Not!5941) (Plus!5941) (SpaceValue!5941 (value!183219 List!38400)) (IntegerValue!17825 (value!183220 Int) (text!42036 List!38400)) (StringLiteralValue!17824 (text!42037 List!38400)) (FloatLiteralValue!11883 (text!42038 List!38400)) (BytesLiteralValue!5941 (value!183221 List!38400)) (CommentValue!11883 (value!183222 List!38400)) (StringLiteralValue!17825 (value!183223 List!38400)) (ErrorTokenValue!5941 (msg!6002 List!38400)) )
))
(declare-datatypes ((C!21126 0))(
  ( (C!21127 (val!12611 Int)) )
))
(declare-datatypes ((Regex!10470 0))(
  ( (ElementMatch!10470 (c!628437 C!21126)) (Concat!16412 (regOne!21452 Regex!10470) (regTwo!21452 Regex!10470)) (EmptyExpr!10470) (Star!10470 (reg!10799 Regex!10470)) (EmptyLang!10470) (Union!10470 (regOne!21453 Regex!10470) (regTwo!21453 Regex!10470)) )
))
(declare-datatypes ((String!43041 0))(
  ( (String!43042 (value!183224 String)) )
))
(declare-datatypes ((List!38401 0))(
  ( (Nil!38277) (Cons!38277 (h!43697 C!21126) (t!295464 List!38401)) )
))
(declare-datatypes ((IArray!23365 0))(
  ( (IArray!23366 (innerList!11740 List!38401)) )
))
(declare-datatypes ((Conc!11680 0))(
  ( (Node!11680 (left!29882 Conc!11680) (right!30212 Conc!11680) (csize!23590 Int) (cheight!11891 Int)) (Leaf!18147 (xs!14882 IArray!23365) (csize!23591 Int)) (Empty!11680) )
))
(declare-datatypes ((BalanceConc!22974 0))(
  ( (BalanceConc!22975 (c!628438 Conc!11680)) )
))
(declare-datatypes ((TokenValueInjection!11310 0))(
  ( (TokenValueInjection!11311 (toValue!8003 Int) (toChars!7862 Int)) )
))
(declare-datatypes ((Rule!11222 0))(
  ( (Rule!11223 (regex!5711 Regex!10470) (tag!6445 String!43041) (isSeparator!5711 Bool) (transformation!5711 TokenValueInjection!11310)) )
))
(declare-datatypes ((List!38402 0))(
  ( (Nil!38278) (Cons!38278 (h!43698 Rule!11222) (t!295465 List!38402)) )
))
(declare-fun rules!3307 () List!38402)

(declare-datatypes ((Token!10788 0))(
  ( (Token!10789 (value!183225 TokenValue!5941) (rule!8483 Rule!11222) (size!29206 Int) (originalCharacters!6425 List!38401)) )
))
(declare-datatypes ((tuple2!38146 0))(
  ( (tuple2!38147 (_1!22207 Token!10788) (_2!22207 List!38401)) )
))
(declare-fun lt!1256725 () tuple2!38146)

(declare-fun contains!7487 (List!38402 Rule!11222) Bool)

(assert (=> b!3632973 (= res!1471397 (not (contains!7487 rules!3307 (rule!8483 (_1!22207 lt!1256725)))))))

(declare-fun e!2248820 () Bool)

(assert (=> b!3632974 (= e!2248820 (and tp!1108979 tp!1108983))))

(declare-fun b!3632975 () Bool)

(declare-fun e!2248818 () Bool)

(declare-fun e!2248807 () Bool)

(assert (=> b!3632975 (= e!2248818 e!2248807)))

(declare-fun res!1471393 () Bool)

(assert (=> b!3632975 (=> (not res!1471393) (not e!2248807))))

(declare-datatypes ((Option!8050 0))(
  ( (None!8049) (Some!8049 (v!37849 tuple2!38146)) )
))
(declare-fun lt!1256731 () Option!8050)

(declare-fun isDefined!6282 (Option!8050) Bool)

(assert (=> b!3632975 (= res!1471393 (isDefined!6282 lt!1256731))))

(declare-datatypes ((LexerInterface!5300 0))(
  ( (LexerInterfaceExt!5297 (__x!24100 Int)) (Lexer!5298) )
))
(declare-fun thiss!23823 () LexerInterface!5300)

(declare-fun lt!1256732 () List!38401)

(declare-fun maxPrefix!2834 (LexerInterface!5300 List!38402 List!38401) Option!8050)

(assert (=> b!3632975 (= lt!1256731 (maxPrefix!2834 thiss!23823 rules!3307 lt!1256732))))

(declare-fun token!511 () Token!10788)

(declare-fun list!14153 (BalanceConc!22974) List!38401)

(declare-fun charsOf!3725 (Token!10788) BalanceConc!22974)

(assert (=> b!3632975 (= lt!1256732 (list!14153 (charsOf!3725 token!511)))))

(declare-fun b!3632976 () Bool)

(declare-fun res!1471390 () Bool)

(declare-fun e!2248801 () Bool)

(assert (=> b!3632976 (=> res!1471390 e!2248801)))

(declare-fun suffix!1395 () List!38401)

(declare-fun isEmpty!22646 (List!38401) Bool)

(assert (=> b!3632976 (= res!1471390 (isEmpty!22646 suffix!1395))))

(declare-fun b!3632978 () Bool)

(declare-fun res!1471405 () Bool)

(assert (=> b!3632978 (=> (not res!1471405) (not e!2248818))))

(declare-fun anOtherTypeRule!33 () Rule!11222)

(assert (=> b!3632978 (= res!1471405 (contains!7487 rules!3307 anOtherTypeRule!33))))

(declare-fun e!2248811 () Bool)

(assert (=> b!3632979 (= e!2248811 (and tp!1108985 tp!1108980))))

(declare-fun b!3632980 () Bool)

(declare-fun e!2248813 () Bool)

(declare-fun e!2248810 () Bool)

(assert (=> b!3632980 (= e!2248813 e!2248810)))

(declare-fun res!1471387 () Bool)

(assert (=> b!3632980 (=> (not res!1471387) (not e!2248810))))

(declare-fun lt!1256728 () Rule!11222)

(declare-fun matchR!5039 (Regex!10470 List!38401) Bool)

(assert (=> b!3632980 (= res!1471387 (matchR!5039 (regex!5711 lt!1256728) (list!14153 (charsOf!3725 (_1!22207 lt!1256725)))))))

(declare-datatypes ((Option!8051 0))(
  ( (None!8050) (Some!8050 (v!37850 Rule!11222)) )
))
(declare-fun lt!1256734 () Option!8051)

(declare-fun get!12516 (Option!8051) Rule!11222)

(assert (=> b!3632980 (= lt!1256728 (get!12516 lt!1256734))))

(declare-fun b!3632981 () Bool)

(assert (=> b!3632981 (= e!2248810 (= (rule!8483 (_1!22207 lt!1256725)) lt!1256728))))

(declare-fun e!2248823 () Bool)

(assert (=> b!3632982 (= e!2248823 (and tp!1108991 tp!1108986))))

(declare-fun b!3632983 () Bool)

(declare-fun e!2248802 () Bool)

(assert (=> b!3632983 (= e!2248801 e!2248802)))

(declare-fun res!1471394 () Bool)

(assert (=> b!3632983 (=> res!1471394 e!2248802)))

(declare-fun rule!403 () Rule!11222)

(declare-fun lt!1256723 () C!21126)

(declare-fun contains!7488 (List!38401 C!21126) Bool)

(declare-fun usedCharacters!923 (Regex!10470) List!38401)

(assert (=> b!3632983 (= res!1471394 (contains!7488 (usedCharacters!923 (regex!5711 rule!403)) lt!1256723))))

(declare-fun head!7695 (List!38401) C!21126)

(assert (=> b!3632983 (= lt!1256723 (head!7695 suffix!1395))))

(declare-fun b!3632984 () Bool)

(declare-fun res!1471391 () Bool)

(assert (=> b!3632984 (=> (not res!1471391) (not e!2248818))))

(assert (=> b!3632984 (= res!1471391 (not (= (isSeparator!5711 anOtherTypeRule!33) (isSeparator!5711 rule!403))))))

(declare-fun b!3632985 () Bool)

(declare-fun res!1471407 () Bool)

(assert (=> b!3632985 (=> res!1471407 e!2248802)))

(declare-fun sepAndNonSepRulesDisjointChars!1879 (List!38402 List!38402) Bool)

(assert (=> b!3632985 (= res!1471407 (not (sepAndNonSepRulesDisjointChars!1879 rules!3307 rules!3307)))))

(declare-fun b!3632986 () Bool)

(declare-fun e!2248799 () Bool)

(declare-fun e!2248817 () Bool)

(declare-fun tp!1108990 () Bool)

(assert (=> b!3632986 (= e!2248799 (and e!2248817 tp!1108990))))

(declare-fun b!3632987 () Bool)

(declare-fun res!1471392 () Bool)

(assert (=> b!3632987 (=> res!1471392 e!2248805)))

(declare-fun lt!1256719 () List!38401)

(declare-fun lt!1256733 () List!38401)

(assert (=> b!3632987 (= res!1471392 (not (= lt!1256719 lt!1256733)))))

(declare-fun b!3632977 () Bool)

(declare-fun res!1471402 () Bool)

(assert (=> b!3632977 (=> (not res!1471402) (not e!2248818))))

(declare-fun rulesInvariant!4697 (LexerInterface!5300 List!38402) Bool)

(assert (=> b!3632977 (= res!1471402 (rulesInvariant!4697 thiss!23823 rules!3307))))

(declare-fun res!1471389 () Bool)

(assert (=> start!338824 (=> (not res!1471389) (not e!2248818))))

(assert (=> start!338824 (= res!1471389 (is-Lexer!5298 thiss!23823))))

(assert (=> start!338824 e!2248818))

(assert (=> start!338824 e!2248799))

(declare-fun e!2248803 () Bool)

(assert (=> start!338824 e!2248803))

(assert (=> start!338824 true))

(declare-fun e!2248814 () Bool)

(declare-fun inv!51702 (Token!10788) Bool)

(assert (=> start!338824 (and (inv!51702 token!511) e!2248814)))

(declare-fun e!2248809 () Bool)

(assert (=> start!338824 e!2248809))

(declare-fun e!2248812 () Bool)

(assert (=> start!338824 e!2248812))

(declare-fun b!3632988 () Bool)

(declare-fun e!2248804 () Bool)

(assert (=> b!3632988 (= e!2248804 e!2248805)))

(declare-fun res!1471401 () Bool)

(assert (=> b!3632988 (=> res!1471401 e!2248805)))

(declare-fun lt!1256716 () List!38401)

(declare-fun lt!1256720 () BalanceConc!22974)

(declare-fun lt!1256726 () Option!8050)

(declare-fun apply!9213 (TokenValueInjection!11310 BalanceConc!22974) TokenValue!5941)

(declare-fun size!29207 (BalanceConc!22974) Int)

(assert (=> b!3632988 (= res!1471401 (not (= lt!1256726 (Some!8049 (tuple2!38147 (Token!10789 (apply!9213 (transformation!5711 (rule!8483 (_1!22207 lt!1256725))) lt!1256720) (rule!8483 (_1!22207 lt!1256725)) (size!29207 lt!1256720) lt!1256716) (_2!22207 lt!1256725))))))))

(declare-datatypes ((Unit!55097 0))(
  ( (Unit!55098) )
))
(declare-fun lt!1256721 () Unit!55097)

(declare-fun lemmaCharactersSize!756 (Token!10788) Unit!55097)

(assert (=> b!3632988 (= lt!1256721 (lemmaCharactersSize!756 (_1!22207 lt!1256725)))))

(declare-fun lt!1256727 () Unit!55097)

(declare-fun lemmaEqSameImage!894 (TokenValueInjection!11310 BalanceConc!22974 BalanceConc!22974) Unit!55097)

(declare-fun seqFromList!4260 (List!38401) BalanceConc!22974)

(assert (=> b!3632988 (= lt!1256727 (lemmaEqSameImage!894 (transformation!5711 (rule!8483 (_1!22207 lt!1256725))) lt!1256720 (seqFromList!4260 (originalCharacters!6425 (_1!22207 lt!1256725)))))))

(declare-fun lt!1256718 () Unit!55097)

(declare-fun lemmaSemiInverse!1460 (TokenValueInjection!11310 BalanceConc!22974) Unit!55097)

(assert (=> b!3632988 (= lt!1256718 (lemmaSemiInverse!1460 (transformation!5711 (rule!8483 (_1!22207 lt!1256725))) lt!1256720))))

(declare-fun b!3632989 () Bool)

(declare-fun tp!1108988 () Bool)

(declare-fun inv!51699 (String!43041) Bool)

(declare-fun inv!51703 (TokenValueInjection!11310) Bool)

(assert (=> b!3632989 (= e!2248817 (and tp!1108988 (inv!51699 (tag!6445 (h!43698 rules!3307))) (inv!51703 (transformation!5711 (h!43698 rules!3307))) e!2248823))))

(declare-fun b!3632990 () Bool)

(declare-fun e!2248815 () Bool)

(assert (=> b!3632990 (= e!2248815 (not e!2248801))))

(declare-fun res!1471399 () Bool)

(assert (=> b!3632990 (=> res!1471399 e!2248801)))

(assert (=> b!3632990 (= res!1471399 (not (matchR!5039 (regex!5711 rule!403) lt!1256732)))))

(declare-fun ruleValid!1975 (LexerInterface!5300 Rule!11222) Bool)

(assert (=> b!3632990 (ruleValid!1975 thiss!23823 rule!403)))

(declare-fun lt!1256722 () Unit!55097)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1129 (LexerInterface!5300 Rule!11222 List!38402) Unit!55097)

(assert (=> b!3632990 (= lt!1256722 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1129 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3632991 () Bool)

(declare-fun res!1471398 () Bool)

(assert (=> b!3632991 (=> res!1471398 e!2248802)))

(assert (=> b!3632991 (= res!1471398 (not (contains!7488 (usedCharacters!923 (regex!5711 anOtherTypeRule!33)) lt!1256723)))))

(declare-fun b!3632992 () Bool)

(declare-fun res!1471403 () Bool)

(assert (=> b!3632992 (=> (not res!1471403) (not e!2248815))))

(declare-fun lt!1256715 () tuple2!38146)

(assert (=> b!3632992 (= res!1471403 (isEmpty!22646 (_2!22207 lt!1256715)))))

(declare-fun b!3632993 () Bool)

(assert (=> b!3632993 (= e!2248805 (not (isEmpty!22646 lt!1256716)))))

(declare-fun b!3632994 () Bool)

(declare-fun tp!1108992 () Bool)

(assert (=> b!3632994 (= e!2248812 (and tp!1108992 (inv!51699 (tag!6445 anOtherTypeRule!33)) (inv!51703 (transformation!5711 anOtherTypeRule!33)) e!2248811))))

(declare-fun b!3632995 () Bool)

(declare-fun res!1471406 () Bool)

(assert (=> b!3632995 (=> (not res!1471406) (not e!2248818))))

(declare-fun isEmpty!22647 (List!38402) Bool)

(assert (=> b!3632995 (= res!1471406 (not (isEmpty!22647 rules!3307)))))

(declare-fun b!3632996 () Bool)

(assert (=> b!3632996 (= e!2248807 e!2248815)))

(declare-fun res!1471386 () Bool)

(assert (=> b!3632996 (=> (not res!1471386) (not e!2248815))))

(assert (=> b!3632996 (= res!1471386 (= (_1!22207 lt!1256715) token!511))))

(declare-fun get!12517 (Option!8050) tuple2!38146)

(assert (=> b!3632996 (= lt!1256715 (get!12517 lt!1256731))))

(declare-fun b!3632997 () Bool)

(declare-fun res!1471388 () Bool)

(assert (=> b!3632997 (=> (not res!1471388) (not e!2248815))))

(assert (=> b!3632997 (= res!1471388 (= (rule!8483 token!511) rule!403))))

(declare-fun tp!1108981 () Bool)

(declare-fun b!3632998 () Bool)

(declare-fun e!2248821 () Bool)

(assert (=> b!3632998 (= e!2248821 (and tp!1108981 (inv!51699 (tag!6445 (rule!8483 token!511))) (inv!51703 (transformation!5711 (rule!8483 token!511))) e!2248820))))

(declare-fun e!2248806 () Bool)

(declare-fun b!3632999 () Bool)

(declare-fun tp!1108982 () Bool)

(assert (=> b!3632999 (= e!2248809 (and tp!1108982 (inv!51699 (tag!6445 rule!403)) (inv!51703 (transformation!5711 rule!403)) e!2248806))))

(declare-fun tp!1108989 () Bool)

(declare-fun b!3633000 () Bool)

(declare-fun inv!21 (TokenValue!5941) Bool)

(assert (=> b!3633000 (= e!2248814 (and (inv!21 (value!183225 token!511)) e!2248821 tp!1108989))))

(declare-fun b!3633001 () Bool)

(declare-fun res!1471404 () Bool)

(assert (=> b!3633001 (=> (not res!1471404) (not e!2248818))))

(assert (=> b!3633001 (= res!1471404 (contains!7487 rules!3307 rule!403))))

(assert (=> b!3633002 (= e!2248806 (and tp!1108984 tp!1108993))))

(declare-fun b!3633003 () Bool)

(declare-fun tp_is_empty!18023 () Bool)

(declare-fun tp!1108987 () Bool)

(assert (=> b!3633003 (= e!2248803 (and tp_is_empty!18023 tp!1108987))))

(declare-fun b!3633004 () Bool)

(declare-fun res!1471400 () Bool)

(assert (=> b!3633004 (=> res!1471400 e!2248804)))

(assert (=> b!3633004 (= res!1471400 (not (matchR!5039 (regex!5711 (rule!8483 (_1!22207 lt!1256725))) lt!1256716)))))

(declare-fun b!3633005 () Bool)

(assert (=> b!3633005 (= e!2248802 e!2248804)))

(declare-fun res!1471396 () Bool)

(assert (=> b!3633005 (=> res!1471396 e!2248804)))

(declare-fun isPrefix!3074 (List!38401 List!38401) Bool)

(assert (=> b!3633005 (= res!1471396 (not (isPrefix!3074 lt!1256716 lt!1256719)))))

(assert (=> b!3633005 (isPrefix!3074 lt!1256716 lt!1256733)))

(declare-fun ++!9527 (List!38401 List!38401) List!38401)

(assert (=> b!3633005 (= lt!1256733 (++!9527 lt!1256716 (_2!22207 lt!1256725)))))

(declare-fun lt!1256717 () Unit!55097)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1993 (List!38401 List!38401) Unit!55097)

(assert (=> b!3633005 (= lt!1256717 (lemmaConcatTwoListThenFirstIsPrefix!1993 lt!1256716 (_2!22207 lt!1256725)))))

(assert (=> b!3633005 (= lt!1256716 (list!14153 lt!1256720))))

(assert (=> b!3633005 (= lt!1256720 (charsOf!3725 (_1!22207 lt!1256725)))))

(assert (=> b!3633005 e!2248813))

(declare-fun res!1471395 () Bool)

(assert (=> b!3633005 (=> (not res!1471395) (not e!2248813))))

(declare-fun isDefined!6283 (Option!8051) Bool)

(assert (=> b!3633005 (= res!1471395 (isDefined!6283 lt!1256734))))

(declare-fun getRuleFromTag!1315 (LexerInterface!5300 List!38402 String!43041) Option!8051)

(assert (=> b!3633005 (= lt!1256734 (getRuleFromTag!1315 thiss!23823 rules!3307 (tag!6445 (rule!8483 (_1!22207 lt!1256725)))))))

(declare-fun lt!1256729 () Unit!55097)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1315 (LexerInterface!5300 List!38402 List!38401 Token!10788) Unit!55097)

(assert (=> b!3633005 (= lt!1256729 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1315 thiss!23823 rules!3307 lt!1256719 (_1!22207 lt!1256725)))))

(assert (=> b!3633005 (= lt!1256725 (get!12517 lt!1256726))))

(declare-fun lt!1256724 () Unit!55097)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!978 (LexerInterface!5300 List!38402 List!38401 List!38401) Unit!55097)

(assert (=> b!3633005 (= lt!1256724 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!978 thiss!23823 rules!3307 lt!1256732 suffix!1395))))

(assert (=> b!3633005 (= lt!1256726 (maxPrefix!2834 thiss!23823 rules!3307 lt!1256719))))

(assert (=> b!3633005 (isPrefix!3074 lt!1256732 lt!1256719)))

(declare-fun lt!1256730 () Unit!55097)

(assert (=> b!3633005 (= lt!1256730 (lemmaConcatTwoListThenFirstIsPrefix!1993 lt!1256732 suffix!1395))))

(assert (=> b!3633005 (= lt!1256719 (++!9527 lt!1256732 suffix!1395))))

(assert (= (and start!338824 res!1471389) b!3632995))

(assert (= (and b!3632995 res!1471406) b!3632977))

(assert (= (and b!3632977 res!1471402) b!3633001))

(assert (= (and b!3633001 res!1471404) b!3632978))

(assert (= (and b!3632978 res!1471405) b!3632984))

(assert (= (and b!3632984 res!1471391) b!3632975))

(assert (= (and b!3632975 res!1471393) b!3632996))

(assert (= (and b!3632996 res!1471386) b!3632992))

(assert (= (and b!3632992 res!1471403) b!3632997))

(assert (= (and b!3632997 res!1471388) b!3632990))

(assert (= (and b!3632990 (not res!1471399)) b!3632976))

(assert (= (and b!3632976 (not res!1471390)) b!3632983))

(assert (= (and b!3632983 (not res!1471394)) b!3632991))

(assert (= (and b!3632991 (not res!1471398)) b!3632985))

(assert (= (and b!3632985 (not res!1471407)) b!3633005))

(assert (= (and b!3633005 res!1471395) b!3632980))

(assert (= (and b!3632980 res!1471387) b!3632981))

(assert (= (and b!3633005 (not res!1471396)) b!3633004))

(assert (= (and b!3633004 (not res!1471400)) b!3632988))

(assert (= (and b!3632988 (not res!1471401)) b!3632973))

(assert (= (and b!3632973 (not res!1471397)) b!3632987))

(assert (= (and b!3632987 (not res!1471392)) b!3632993))

(assert (= b!3632989 b!3632982))

(assert (= b!3632986 b!3632989))

(assert (= (and start!338824 (is-Cons!38278 rules!3307)) b!3632986))

(assert (= (and start!338824 (is-Cons!38277 suffix!1395)) b!3633003))

(assert (= b!3632998 b!3632974))

(assert (= b!3633000 b!3632998))

(assert (= start!338824 b!3633000))

(assert (= b!3632999 b!3633002))

(assert (= start!338824 b!3632999))

(assert (= b!3632994 b!3632979))

(assert (= start!338824 b!3632994))

(declare-fun m!4134757 () Bool)

(assert (=> b!3633001 m!4134757))

(declare-fun m!4134759 () Bool)

(assert (=> b!3633000 m!4134759))

(declare-fun m!4134761 () Bool)

(assert (=> b!3632994 m!4134761))

(declare-fun m!4134763 () Bool)

(assert (=> b!3632994 m!4134763))

(declare-fun m!4134765 () Bool)

(assert (=> b!3632995 m!4134765))

(declare-fun m!4134767 () Bool)

(assert (=> b!3632992 m!4134767))

(declare-fun m!4134769 () Bool)

(assert (=> b!3632993 m!4134769))

(declare-fun m!4134771 () Bool)

(assert (=> b!3632975 m!4134771))

(declare-fun m!4134773 () Bool)

(assert (=> b!3632975 m!4134773))

(declare-fun m!4134775 () Bool)

(assert (=> b!3632975 m!4134775))

(assert (=> b!3632975 m!4134775))

(declare-fun m!4134777 () Bool)

(assert (=> b!3632975 m!4134777))

(declare-fun m!4134779 () Bool)

(assert (=> b!3632980 m!4134779))

(assert (=> b!3632980 m!4134779))

(declare-fun m!4134781 () Bool)

(assert (=> b!3632980 m!4134781))

(assert (=> b!3632980 m!4134781))

(declare-fun m!4134783 () Bool)

(assert (=> b!3632980 m!4134783))

(declare-fun m!4134785 () Bool)

(assert (=> b!3632980 m!4134785))

(declare-fun m!4134787 () Bool)

(assert (=> b!3633005 m!4134787))

(declare-fun m!4134789 () Bool)

(assert (=> b!3633005 m!4134789))

(assert (=> b!3633005 m!4134779))

(declare-fun m!4134791 () Bool)

(assert (=> b!3633005 m!4134791))

(declare-fun m!4134793 () Bool)

(assert (=> b!3633005 m!4134793))

(declare-fun m!4134795 () Bool)

(assert (=> b!3633005 m!4134795))

(declare-fun m!4134797 () Bool)

(assert (=> b!3633005 m!4134797))

(declare-fun m!4134799 () Bool)

(assert (=> b!3633005 m!4134799))

(declare-fun m!4134801 () Bool)

(assert (=> b!3633005 m!4134801))

(declare-fun m!4134803 () Bool)

(assert (=> b!3633005 m!4134803))

(declare-fun m!4134805 () Bool)

(assert (=> b!3633005 m!4134805))

(declare-fun m!4134807 () Bool)

(assert (=> b!3633005 m!4134807))

(declare-fun m!4134809 () Bool)

(assert (=> b!3633005 m!4134809))

(declare-fun m!4134811 () Bool)

(assert (=> b!3633005 m!4134811))

(declare-fun m!4134813 () Bool)

(assert (=> b!3633005 m!4134813))

(declare-fun m!4134815 () Bool)

(assert (=> b!3632973 m!4134815))

(declare-fun m!4134817 () Bool)

(assert (=> b!3632976 m!4134817))

(declare-fun m!4134819 () Bool)

(assert (=> b!3632988 m!4134819))

(declare-fun m!4134821 () Bool)

(assert (=> b!3632988 m!4134821))

(declare-fun m!4134823 () Bool)

(assert (=> b!3632988 m!4134823))

(declare-fun m!4134825 () Bool)

(assert (=> b!3632988 m!4134825))

(assert (=> b!3632988 m!4134819))

(declare-fun m!4134827 () Bool)

(assert (=> b!3632988 m!4134827))

(declare-fun m!4134829 () Bool)

(assert (=> b!3632988 m!4134829))

(declare-fun m!4134831 () Bool)

(assert (=> b!3632996 m!4134831))

(declare-fun m!4134833 () Bool)

(assert (=> b!3632983 m!4134833))

(assert (=> b!3632983 m!4134833))

(declare-fun m!4134835 () Bool)

(assert (=> b!3632983 m!4134835))

(declare-fun m!4134837 () Bool)

(assert (=> b!3632983 m!4134837))

(declare-fun m!4134839 () Bool)

(assert (=> b!3632978 m!4134839))

(declare-fun m!4134841 () Bool)

(assert (=> b!3632990 m!4134841))

(declare-fun m!4134843 () Bool)

(assert (=> b!3632990 m!4134843))

(declare-fun m!4134845 () Bool)

(assert (=> b!3632990 m!4134845))

(declare-fun m!4134847 () Bool)

(assert (=> b!3633004 m!4134847))

(declare-fun m!4134849 () Bool)

(assert (=> b!3632991 m!4134849))

(assert (=> b!3632991 m!4134849))

(declare-fun m!4134851 () Bool)

(assert (=> b!3632991 m!4134851))

(declare-fun m!4134853 () Bool)

(assert (=> start!338824 m!4134853))

(declare-fun m!4134855 () Bool)

(assert (=> b!3632985 m!4134855))

(declare-fun m!4134857 () Bool)

(assert (=> b!3632999 m!4134857))

(declare-fun m!4134859 () Bool)

(assert (=> b!3632999 m!4134859))

(declare-fun m!4134861 () Bool)

(assert (=> b!3632989 m!4134861))

(declare-fun m!4134863 () Bool)

(assert (=> b!3632989 m!4134863))

(declare-fun m!4134865 () Bool)

(assert (=> b!3632998 m!4134865))

(declare-fun m!4134867 () Bool)

(assert (=> b!3632998 m!4134867))

(declare-fun m!4134869 () Bool)

(assert (=> b!3632977 m!4134869))

(push 1)

(assert (not b!3632988))

(assert (not b!3632989))

(assert (not b!3633003))

(assert (not b!3632998))

(assert (not b!3632983))

(assert (not b!3632991))

(assert (not b!3632992))

(assert (not b!3632980))

(assert (not b!3632977))

(assert (not b_next!95751))

(assert (not b!3632995))

(assert (not b!3632986))

(assert (not start!338824))

(assert b_and!266849)

(assert (not b!3633005))

(assert (not b!3632990))

(assert tp_is_empty!18023)

(assert (not b_next!95755))

(assert (not b!3632993))

(assert (not b_next!95749))

(assert (not b!3632973))

(assert b_and!266855)

(assert (not b_next!95745))

(assert b_and!266851)

(assert (not b_next!95753))

(assert b_and!266847)

(assert (not b!3632976))

(assert (not b!3633000))

(assert (not b!3632999))

(assert (not b!3633004))

(assert (not b!3632978))

(assert b_and!266853)

(assert (not b_next!95759))

(assert (not b!3632994))

(assert b_and!266845)

(assert b_and!266843)

(assert (not b!3632996))

(assert (not b_next!95747))

(assert (not b!3633001))

(assert (not b_next!95757))

(assert (not b!3632985))

(assert (not b!3632975))

(assert b_and!266857)

(check-sat)

(pop 1)

(push 1)

(assert b_and!266849)

(assert (not b_next!95755))

(assert (not b_next!95749))

(assert b_and!266847)

(assert (not b_next!95751))

(assert b_and!266857)

(assert b_and!266855)

(assert (not b_next!95745))

(assert b_and!266851)

(assert (not b_next!95753))

(assert b_and!266853)

(assert (not b_next!95759))

(assert b_and!266845)

(assert b_and!266843)

(assert (not b_next!95747))

(assert (not b_next!95757))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1068553 () Bool)

(declare-fun size!29210 (List!38401) Int)

(assert (=> d!1068553 (= (size!29206 (_1!22207 lt!1256725)) (size!29210 (originalCharacters!6425 (_1!22207 lt!1256725))))))

(declare-fun Unit!55102 () Unit!55097)

(assert (=> d!1068553 (= (lemmaCharactersSize!756 (_1!22207 lt!1256725)) Unit!55102)))

(declare-fun bs!571718 () Bool)

(assert (= bs!571718 d!1068553))

(declare-fun m!4134985 () Bool)

(assert (=> bs!571718 m!4134985))

(assert (=> b!3632988 d!1068553))

(declare-fun b!3633113 () Bool)

(declare-fun e!2248906 () Bool)

(assert (=> b!3633113 (= e!2248906 true)))

(declare-fun d!1068555 () Bool)

(assert (=> d!1068555 e!2248906))

(assert (= d!1068555 b!3633113))

(declare-fun lambda!124296 () Int)

(declare-fun order!20965 () Int)

(declare-fun order!20963 () Int)

(declare-fun dynLambda!16602 (Int Int) Int)

(declare-fun dynLambda!16603 (Int Int) Int)

(assert (=> b!3633113 (< (dynLambda!16602 order!20963 (toValue!8003 (transformation!5711 (rule!8483 (_1!22207 lt!1256725))))) (dynLambda!16603 order!20965 lambda!124296))))

(declare-fun order!20967 () Int)

(declare-fun dynLambda!16604 (Int Int) Int)

(assert (=> b!3633113 (< (dynLambda!16604 order!20967 (toChars!7862 (transformation!5711 (rule!8483 (_1!22207 lt!1256725))))) (dynLambda!16603 order!20965 lambda!124296))))

(declare-fun dynLambda!16605 (Int BalanceConc!22974) TokenValue!5941)

(assert (=> d!1068555 (= (dynLambda!16605 (toValue!8003 (transformation!5711 (rule!8483 (_1!22207 lt!1256725)))) lt!1256720) (dynLambda!16605 (toValue!8003 (transformation!5711 (rule!8483 (_1!22207 lt!1256725)))) (seqFromList!4260 (originalCharacters!6425 (_1!22207 lt!1256725)))))))

(declare-fun lt!1256802 () Unit!55097)

(declare-fun Forall2of!341 (Int BalanceConc!22974 BalanceConc!22974) Unit!55097)

(assert (=> d!1068555 (= lt!1256802 (Forall2of!341 lambda!124296 lt!1256720 (seqFromList!4260 (originalCharacters!6425 (_1!22207 lt!1256725)))))))

(assert (=> d!1068555 (= (list!14153 lt!1256720) (list!14153 (seqFromList!4260 (originalCharacters!6425 (_1!22207 lt!1256725)))))))

(assert (=> d!1068555 (= (lemmaEqSameImage!894 (transformation!5711 (rule!8483 (_1!22207 lt!1256725))) lt!1256720 (seqFromList!4260 (originalCharacters!6425 (_1!22207 lt!1256725)))) lt!1256802)))

(declare-fun b_lambda!107589 () Bool)

(assert (=> (not b_lambda!107589) (not d!1068555)))

(declare-fun t!295478 () Bool)

(declare-fun tb!208829 () Bool)

(assert (=> (and b!3632974 (= (toValue!8003 (transformation!5711 (rule!8483 token!511))) (toValue!8003 (transformation!5711 (rule!8483 (_1!22207 lt!1256725))))) t!295478) tb!208829))

(declare-fun result!254392 () Bool)

(assert (=> tb!208829 (= result!254392 (inv!21 (dynLambda!16605 (toValue!8003 (transformation!5711 (rule!8483 (_1!22207 lt!1256725)))) lt!1256720)))))

(declare-fun m!4134997 () Bool)

(assert (=> tb!208829 m!4134997))

(assert (=> d!1068555 t!295478))

(declare-fun b_and!266883 () Bool)

(assert (= b_and!266843 (and (=> t!295478 result!254392) b_and!266883)))

(declare-fun tb!208831 () Bool)

(declare-fun t!295480 () Bool)

(assert (=> (and b!3632979 (= (toValue!8003 (transformation!5711 anOtherTypeRule!33)) (toValue!8003 (transformation!5711 (rule!8483 (_1!22207 lt!1256725))))) t!295480) tb!208831))

(declare-fun result!254396 () Bool)

(assert (= result!254396 result!254392))

(assert (=> d!1068555 t!295480))

(declare-fun b_and!266885 () Bool)

(assert (= b_and!266847 (and (=> t!295480 result!254396) b_and!266885)))

(declare-fun t!295482 () Bool)

(declare-fun tb!208833 () Bool)

(assert (=> (and b!3632982 (= (toValue!8003 (transformation!5711 (h!43698 rules!3307))) (toValue!8003 (transformation!5711 (rule!8483 (_1!22207 lt!1256725))))) t!295482) tb!208833))

(declare-fun result!254398 () Bool)

(assert (= result!254398 result!254392))

(assert (=> d!1068555 t!295482))

(declare-fun b_and!266887 () Bool)

(assert (= b_and!266851 (and (=> t!295482 result!254398) b_and!266887)))

(declare-fun tb!208835 () Bool)

(declare-fun t!295484 () Bool)

(assert (=> (and b!3633002 (= (toValue!8003 (transformation!5711 rule!403)) (toValue!8003 (transformation!5711 (rule!8483 (_1!22207 lt!1256725))))) t!295484) tb!208835))

(declare-fun result!254400 () Bool)

(assert (= result!254400 result!254392))

(assert (=> d!1068555 t!295484))

(declare-fun b_and!266889 () Bool)

(assert (= b_and!266855 (and (=> t!295484 result!254400) b_and!266889)))

(declare-fun b_lambda!107591 () Bool)

(assert (=> (not b_lambda!107591) (not d!1068555)))

(declare-fun tb!208837 () Bool)

(declare-fun t!295486 () Bool)

(assert (=> (and b!3632974 (= (toValue!8003 (transformation!5711 (rule!8483 token!511))) (toValue!8003 (transformation!5711 (rule!8483 (_1!22207 lt!1256725))))) t!295486) tb!208837))

(declare-fun result!254402 () Bool)

(assert (=> tb!208837 (= result!254402 (inv!21 (dynLambda!16605 (toValue!8003 (transformation!5711 (rule!8483 (_1!22207 lt!1256725)))) (seqFromList!4260 (originalCharacters!6425 (_1!22207 lt!1256725))))))))

(declare-fun m!4134999 () Bool)

(assert (=> tb!208837 m!4134999))

(assert (=> d!1068555 t!295486))

(declare-fun b_and!266891 () Bool)

(assert (= b_and!266883 (and (=> t!295486 result!254402) b_and!266891)))

(declare-fun tb!208839 () Bool)

(declare-fun t!295488 () Bool)

(assert (=> (and b!3632979 (= (toValue!8003 (transformation!5711 anOtherTypeRule!33)) (toValue!8003 (transformation!5711 (rule!8483 (_1!22207 lt!1256725))))) t!295488) tb!208839))

(declare-fun result!254404 () Bool)

(assert (= result!254404 result!254402))

(assert (=> d!1068555 t!295488))

(declare-fun b_and!266893 () Bool)

(assert (= b_and!266885 (and (=> t!295488 result!254404) b_and!266893)))

(declare-fun t!295490 () Bool)

(declare-fun tb!208841 () Bool)

(assert (=> (and b!3632982 (= (toValue!8003 (transformation!5711 (h!43698 rules!3307))) (toValue!8003 (transformation!5711 (rule!8483 (_1!22207 lt!1256725))))) t!295490) tb!208841))

(declare-fun result!254406 () Bool)

(assert (= result!254406 result!254402))

(assert (=> d!1068555 t!295490))

(declare-fun b_and!266895 () Bool)

(assert (= b_and!266887 (and (=> t!295490 result!254406) b_and!266895)))

(declare-fun tb!208843 () Bool)

(declare-fun t!295492 () Bool)

(assert (=> (and b!3633002 (= (toValue!8003 (transformation!5711 rule!403)) (toValue!8003 (transformation!5711 (rule!8483 (_1!22207 lt!1256725))))) t!295492) tb!208843))

(declare-fun result!254408 () Bool)

(assert (= result!254408 result!254402))

(assert (=> d!1068555 t!295492))

(declare-fun b_and!266897 () Bool)

(assert (= b_and!266889 (and (=> t!295492 result!254408) b_and!266897)))

(assert (=> d!1068555 m!4134819))

(declare-fun m!4135001 () Bool)

(assert (=> d!1068555 m!4135001))

(assert (=> d!1068555 m!4134819))

(declare-fun m!4135003 () Bool)

(assert (=> d!1068555 m!4135003))

(declare-fun m!4135005 () Bool)

(assert (=> d!1068555 m!4135005))

(assert (=> d!1068555 m!4134787))

(assert (=> d!1068555 m!4134819))

(declare-fun m!4135007 () Bool)

(assert (=> d!1068555 m!4135007))

(assert (=> b!3632988 d!1068555))

(declare-fun d!1068565 () Bool)

(declare-fun lt!1256805 () Int)

(assert (=> d!1068565 (= lt!1256805 (size!29210 (list!14153 lt!1256720)))))

(declare-fun size!29211 (Conc!11680) Int)

(assert (=> d!1068565 (= lt!1256805 (size!29211 (c!628438 lt!1256720)))))

(assert (=> d!1068565 (= (size!29207 lt!1256720) lt!1256805)))

(declare-fun bs!571721 () Bool)

(assert (= bs!571721 d!1068565))

(assert (=> bs!571721 m!4134787))

(assert (=> bs!571721 m!4134787))

(declare-fun m!4135009 () Bool)

(assert (=> bs!571721 m!4135009))

(declare-fun m!4135011 () Bool)

(assert (=> bs!571721 m!4135011))

(assert (=> b!3632988 d!1068565))

(declare-fun d!1068567 () Bool)

(declare-fun fromListB!1962 (List!38401) BalanceConc!22974)

(assert (=> d!1068567 (= (seqFromList!4260 (originalCharacters!6425 (_1!22207 lt!1256725))) (fromListB!1962 (originalCharacters!6425 (_1!22207 lt!1256725))))))

(declare-fun bs!571722 () Bool)

(assert (= bs!571722 d!1068567))

(declare-fun m!4135013 () Bool)

(assert (=> bs!571722 m!4135013))

(assert (=> b!3632988 d!1068567))

(declare-fun d!1068569 () Bool)

(assert (=> d!1068569 (= (apply!9213 (transformation!5711 (rule!8483 (_1!22207 lt!1256725))) lt!1256720) (dynLambda!16605 (toValue!8003 (transformation!5711 (rule!8483 (_1!22207 lt!1256725)))) lt!1256720))))

(declare-fun b_lambda!107593 () Bool)

(assert (=> (not b_lambda!107593) (not d!1068569)))

(assert (=> d!1068569 t!295478))

(declare-fun b_and!266899 () Bool)

(assert (= b_and!266891 (and (=> t!295478 result!254392) b_and!266899)))

(assert (=> d!1068569 t!295480))

(declare-fun b_and!266901 () Bool)

(assert (= b_and!266893 (and (=> t!295480 result!254396) b_and!266901)))

(assert (=> d!1068569 t!295482))

(declare-fun b_and!266903 () Bool)

(assert (= b_and!266895 (and (=> t!295482 result!254398) b_and!266903)))

(assert (=> d!1068569 t!295484))

(declare-fun b_and!266905 () Bool)

(assert (= b_and!266897 (and (=> t!295484 result!254400) b_and!266905)))

(assert (=> d!1068569 m!4135005))

(assert (=> b!3632988 d!1068569))

(declare-fun b!3633120 () Bool)

(declare-fun e!2248913 () Bool)

(assert (=> b!3633120 (= e!2248913 true)))

(declare-fun d!1068571 () Bool)

(assert (=> d!1068571 e!2248913))

(assert (= d!1068571 b!3633120))

(declare-fun lambda!124299 () Int)

(declare-fun order!20969 () Int)

(declare-fun dynLambda!16606 (Int Int) Int)

(assert (=> b!3633120 (< (dynLambda!16602 order!20963 (toValue!8003 (transformation!5711 (rule!8483 (_1!22207 lt!1256725))))) (dynLambda!16606 order!20969 lambda!124299))))

(assert (=> b!3633120 (< (dynLambda!16604 order!20967 (toChars!7862 (transformation!5711 (rule!8483 (_1!22207 lt!1256725))))) (dynLambda!16606 order!20969 lambda!124299))))

(declare-fun dynLambda!16607 (Int TokenValue!5941) BalanceConc!22974)

(assert (=> d!1068571 (= (list!14153 (dynLambda!16607 (toChars!7862 (transformation!5711 (rule!8483 (_1!22207 lt!1256725)))) (dynLambda!16605 (toValue!8003 (transformation!5711 (rule!8483 (_1!22207 lt!1256725)))) lt!1256720))) (list!14153 lt!1256720))))

(declare-fun lt!1256808 () Unit!55097)

(declare-fun ForallOf!683 (Int BalanceConc!22974) Unit!55097)

(assert (=> d!1068571 (= lt!1256808 (ForallOf!683 lambda!124299 lt!1256720))))

(assert (=> d!1068571 (= (lemmaSemiInverse!1460 (transformation!5711 (rule!8483 (_1!22207 lt!1256725))) lt!1256720) lt!1256808)))

(declare-fun b_lambda!107595 () Bool)

(assert (=> (not b_lambda!107595) (not d!1068571)))

(declare-fun tb!208845 () Bool)

(declare-fun t!295494 () Bool)

(assert (=> (and b!3632974 (= (toChars!7862 (transformation!5711 (rule!8483 token!511))) (toChars!7862 (transformation!5711 (rule!8483 (_1!22207 lt!1256725))))) t!295494) tb!208845))

(declare-fun e!2248916 () Bool)

(declare-fun tp!1109041 () Bool)

(declare-fun b!3633125 () Bool)

(declare-fun inv!51706 (Conc!11680) Bool)

(assert (=> b!3633125 (= e!2248916 (and (inv!51706 (c!628438 (dynLambda!16607 (toChars!7862 (transformation!5711 (rule!8483 (_1!22207 lt!1256725)))) (dynLambda!16605 (toValue!8003 (transformation!5711 (rule!8483 (_1!22207 lt!1256725)))) lt!1256720)))) tp!1109041))))

(declare-fun result!254410 () Bool)

(declare-fun inv!51707 (BalanceConc!22974) Bool)

(assert (=> tb!208845 (= result!254410 (and (inv!51707 (dynLambda!16607 (toChars!7862 (transformation!5711 (rule!8483 (_1!22207 lt!1256725)))) (dynLambda!16605 (toValue!8003 (transformation!5711 (rule!8483 (_1!22207 lt!1256725)))) lt!1256720))) e!2248916))))

(assert (= tb!208845 b!3633125))

(declare-fun m!4135015 () Bool)

(assert (=> b!3633125 m!4135015))

(declare-fun m!4135017 () Bool)

(assert (=> tb!208845 m!4135017))

(assert (=> d!1068571 t!295494))

(declare-fun b_and!266907 () Bool)

(assert (= b_and!266845 (and (=> t!295494 result!254410) b_and!266907)))

(declare-fun tb!208847 () Bool)

(declare-fun t!295496 () Bool)

(assert (=> (and b!3632979 (= (toChars!7862 (transformation!5711 anOtherTypeRule!33)) (toChars!7862 (transformation!5711 (rule!8483 (_1!22207 lt!1256725))))) t!295496) tb!208847))

(declare-fun result!254414 () Bool)

(assert (= result!254414 result!254410))

(assert (=> d!1068571 t!295496))

(declare-fun b_and!266909 () Bool)

(assert (= b_and!266849 (and (=> t!295496 result!254414) b_and!266909)))

(declare-fun t!295498 () Bool)

(declare-fun tb!208849 () Bool)

(assert (=> (and b!3632982 (= (toChars!7862 (transformation!5711 (h!43698 rules!3307))) (toChars!7862 (transformation!5711 (rule!8483 (_1!22207 lt!1256725))))) t!295498) tb!208849))

(declare-fun result!254416 () Bool)

(assert (= result!254416 result!254410))

(assert (=> d!1068571 t!295498))

(declare-fun b_and!266911 () Bool)

(assert (= b_and!266853 (and (=> t!295498 result!254416) b_and!266911)))

(declare-fun tb!208851 () Bool)

(declare-fun t!295500 () Bool)

(assert (=> (and b!3633002 (= (toChars!7862 (transformation!5711 rule!403)) (toChars!7862 (transformation!5711 (rule!8483 (_1!22207 lt!1256725))))) t!295500) tb!208851))

(declare-fun result!254418 () Bool)

(assert (= result!254418 result!254410))

(assert (=> d!1068571 t!295500))

(declare-fun b_and!266913 () Bool)

(assert (= b_and!266857 (and (=> t!295500 result!254418) b_and!266913)))

(declare-fun b_lambda!107597 () Bool)

(assert (=> (not b_lambda!107597) (not d!1068571)))

(assert (=> d!1068571 t!295478))

(declare-fun b_and!266915 () Bool)

(assert (= b_and!266899 (and (=> t!295478 result!254392) b_and!266915)))

(assert (=> d!1068571 t!295480))

(declare-fun b_and!266917 () Bool)

(assert (= b_and!266901 (and (=> t!295480 result!254396) b_and!266917)))

(assert (=> d!1068571 t!295482))

(declare-fun b_and!266919 () Bool)

(assert (= b_and!266903 (and (=> t!295482 result!254398) b_and!266919)))

(assert (=> d!1068571 t!295484))

(declare-fun b_and!266921 () Bool)

(assert (= b_and!266905 (and (=> t!295484 result!254400) b_and!266921)))

(declare-fun m!4135019 () Bool)

(assert (=> d!1068571 m!4135019))

(declare-fun m!4135021 () Bool)

(assert (=> d!1068571 m!4135021))

(assert (=> d!1068571 m!4135005))

(assert (=> d!1068571 m!4135019))

(declare-fun m!4135023 () Bool)

(assert (=> d!1068571 m!4135023))

(assert (=> d!1068571 m!4134787))

(assert (=> d!1068571 m!4135005))

(assert (=> b!3632988 d!1068571))

(declare-fun d!1068573 () Bool)

(declare-fun lt!1256811 () Bool)

(declare-fun content!5492 (List!38401) (Set C!21126))

(assert (=> d!1068573 (= lt!1256811 (set.member lt!1256723 (content!5492 (usedCharacters!923 (regex!5711 anOtherTypeRule!33)))))))

(declare-fun e!2248922 () Bool)

(assert (=> d!1068573 (= lt!1256811 e!2248922)))

(declare-fun res!1471491 () Bool)

(assert (=> d!1068573 (=> (not res!1471491) (not e!2248922))))

(assert (=> d!1068573 (= res!1471491 (is-Cons!38277 (usedCharacters!923 (regex!5711 anOtherTypeRule!33))))))

(assert (=> d!1068573 (= (contains!7488 (usedCharacters!923 (regex!5711 anOtherTypeRule!33)) lt!1256723) lt!1256811)))

(declare-fun b!3633130 () Bool)

(declare-fun e!2248921 () Bool)

(assert (=> b!3633130 (= e!2248922 e!2248921)))

(declare-fun res!1471492 () Bool)

(assert (=> b!3633130 (=> res!1471492 e!2248921)))

(assert (=> b!3633130 (= res!1471492 (= (h!43697 (usedCharacters!923 (regex!5711 anOtherTypeRule!33))) lt!1256723))))

(declare-fun b!3633131 () Bool)

(assert (=> b!3633131 (= e!2248921 (contains!7488 (t!295464 (usedCharacters!923 (regex!5711 anOtherTypeRule!33))) lt!1256723))))

(assert (= (and d!1068573 res!1471491) b!3633130))

(assert (= (and b!3633130 (not res!1471492)) b!3633131))

(assert (=> d!1068573 m!4134849))

(declare-fun m!4135025 () Bool)

(assert (=> d!1068573 m!4135025))

(declare-fun m!4135027 () Bool)

(assert (=> d!1068573 m!4135027))

(declare-fun m!4135029 () Bool)

(assert (=> b!3633131 m!4135029))

(assert (=> b!3632991 d!1068573))

(declare-fun bm!262746 () Bool)

(declare-fun call!262752 () List!38401)

(declare-fun c!628455 () Bool)

(assert (=> bm!262746 (= call!262752 (usedCharacters!923 (ite c!628455 (regTwo!21453 (regex!5711 anOtherTypeRule!33)) (regOne!21452 (regex!5711 anOtherTypeRule!33)))))))

(declare-fun b!3633148 () Bool)

(declare-fun e!2248934 () List!38401)

(declare-fun call!262754 () List!38401)

(assert (=> b!3633148 (= e!2248934 call!262754)))

(declare-fun b!3633149 () Bool)

(declare-fun e!2248931 () List!38401)

(assert (=> b!3633149 (= e!2248931 (Cons!38277 (c!628437 (regex!5711 anOtherTypeRule!33)) Nil!38277))))

(declare-fun b!3633150 () Bool)

(declare-fun e!2248933 () List!38401)

(assert (=> b!3633150 (= e!2248933 e!2248931)))

(declare-fun c!628452 () Bool)

(assert (=> b!3633150 (= c!628452 (is-ElementMatch!10470 (regex!5711 anOtherTypeRule!33)))))

(declare-fun b!3633151 () Bool)

(declare-fun e!2248932 () List!38401)

(declare-fun call!262751 () List!38401)

(assert (=> b!3633151 (= e!2248932 call!262751)))

(declare-fun bm!262747 () Bool)

(declare-fun call!262753 () List!38401)

(assert (=> bm!262747 (= call!262753 call!262751)))

(declare-fun b!3633152 () Bool)

(assert (=> b!3633152 (= e!2248934 call!262754)))

(declare-fun bm!262748 () Bool)

(declare-fun c!628454 () Bool)

(assert (=> bm!262748 (= call!262751 (usedCharacters!923 (ite c!628454 (reg!10799 (regex!5711 anOtherTypeRule!33)) (ite c!628455 (regOne!21453 (regex!5711 anOtherTypeRule!33)) (regTwo!21452 (regex!5711 anOtherTypeRule!33))))))))

(declare-fun b!3633153 () Bool)

(assert (=> b!3633153 (= e!2248933 Nil!38277)))

(declare-fun b!3633154 () Bool)

(assert (=> b!3633154 (= c!628454 (is-Star!10470 (regex!5711 anOtherTypeRule!33)))))

(assert (=> b!3633154 (= e!2248931 e!2248932)))

(declare-fun d!1068575 () Bool)

(declare-fun c!628453 () Bool)

(assert (=> d!1068575 (= c!628453 (or (is-EmptyExpr!10470 (regex!5711 anOtherTypeRule!33)) (is-EmptyLang!10470 (regex!5711 anOtherTypeRule!33))))))

(assert (=> d!1068575 (= (usedCharacters!923 (regex!5711 anOtherTypeRule!33)) e!2248933)))

(declare-fun bm!262749 () Bool)

(assert (=> bm!262749 (= call!262754 (++!9527 (ite c!628455 call!262753 call!262752) (ite c!628455 call!262752 call!262753)))))

(declare-fun b!3633155 () Bool)

(assert (=> b!3633155 (= e!2248932 e!2248934)))

(assert (=> b!3633155 (= c!628455 (is-Union!10470 (regex!5711 anOtherTypeRule!33)))))

(assert (= (and d!1068575 c!628453) b!3633153))

(assert (= (and d!1068575 (not c!628453)) b!3633150))

(assert (= (and b!3633150 c!628452) b!3633149))

(assert (= (and b!3633150 (not c!628452)) b!3633154))

(assert (= (and b!3633154 c!628454) b!3633151))

(assert (= (and b!3633154 (not c!628454)) b!3633155))

(assert (= (and b!3633155 c!628455) b!3633152))

(assert (= (and b!3633155 (not c!628455)) b!3633148))

(assert (= (or b!3633152 b!3633148) bm!262747))

(assert (= (or b!3633152 b!3633148) bm!262746))

(assert (= (or b!3633152 b!3633148) bm!262749))

(assert (= (or b!3633151 bm!262747) bm!262748))

(declare-fun m!4135031 () Bool)

(assert (=> bm!262746 m!4135031))

(declare-fun m!4135033 () Bool)

(assert (=> bm!262748 m!4135033))

(declare-fun m!4135035 () Bool)

(assert (=> bm!262749 m!4135035))

(assert (=> b!3632991 d!1068575))

(declare-fun b!3633184 () Bool)

(declare-fun e!2248954 () Bool)

(declare-fun nullable!3626 (Regex!10470) Bool)

(assert (=> b!3633184 (= e!2248954 (nullable!3626 (regex!5711 rule!403)))))

(declare-fun b!3633186 () Bool)

(declare-fun res!1471516 () Bool)

(declare-fun e!2248951 () Bool)

(assert (=> b!3633186 (=> (not res!1471516) (not e!2248951))))

(declare-fun call!262757 () Bool)

(assert (=> b!3633186 (= res!1471516 (not call!262757))))

(declare-fun b!3633187 () Bool)

(declare-fun e!2248953 () Bool)

(assert (=> b!3633187 (= e!2248953 (not (= (head!7695 lt!1256732) (c!628437 (regex!5711 rule!403)))))))

(declare-fun b!3633188 () Bool)

(declare-fun e!2248952 () Bool)

(assert (=> b!3633188 (= e!2248952 e!2248953)))

(declare-fun res!1471509 () Bool)

(assert (=> b!3633188 (=> res!1471509 e!2248953)))

(assert (=> b!3633188 (= res!1471509 call!262757)))

(declare-fun b!3633189 () Bool)

(declare-fun e!2248949 () Bool)

(assert (=> b!3633189 (= e!2248949 e!2248952)))

(declare-fun res!1471515 () Bool)

(assert (=> b!3633189 (=> (not res!1471515) (not e!2248952))))

(declare-fun lt!1256814 () Bool)

(assert (=> b!3633189 (= res!1471515 (not lt!1256814))))

(declare-fun b!3633190 () Bool)

(declare-fun e!2248950 () Bool)

(assert (=> b!3633190 (= e!2248950 (not lt!1256814))))

(declare-fun b!3633191 () Bool)

(declare-fun res!1471512 () Bool)

(assert (=> b!3633191 (=> res!1471512 e!2248949)))

(assert (=> b!3633191 (= res!1471512 e!2248951)))

(declare-fun res!1471513 () Bool)

(assert (=> b!3633191 (=> (not res!1471513) (not e!2248951))))

(assert (=> b!3633191 (= res!1471513 lt!1256814)))

(declare-fun b!3633192 () Bool)

(declare-fun res!1471510 () Bool)

(assert (=> b!3633192 (=> res!1471510 e!2248949)))

(assert (=> b!3633192 (= res!1471510 (not (is-ElementMatch!10470 (regex!5711 rule!403))))))

(assert (=> b!3633192 (= e!2248950 e!2248949)))

(declare-fun b!3633193 () Bool)

(declare-fun derivativeStep!3175 (Regex!10470 C!21126) Regex!10470)

(declare-fun tail!5624 (List!38401) List!38401)

(assert (=> b!3633193 (= e!2248954 (matchR!5039 (derivativeStep!3175 (regex!5711 rule!403) (head!7695 lt!1256732)) (tail!5624 lt!1256732)))))

(declare-fun b!3633194 () Bool)

(declare-fun res!1471514 () Bool)

(assert (=> b!3633194 (=> res!1471514 e!2248953)))

(assert (=> b!3633194 (= res!1471514 (not (isEmpty!22646 (tail!5624 lt!1256732))))))

(declare-fun b!3633195 () Bool)

(declare-fun res!1471511 () Bool)

(assert (=> b!3633195 (=> (not res!1471511) (not e!2248951))))

(assert (=> b!3633195 (= res!1471511 (isEmpty!22646 (tail!5624 lt!1256732)))))

(declare-fun d!1068577 () Bool)

(declare-fun e!2248955 () Bool)

(assert (=> d!1068577 e!2248955))

(declare-fun c!628464 () Bool)

(assert (=> d!1068577 (= c!628464 (is-EmptyExpr!10470 (regex!5711 rule!403)))))

(assert (=> d!1068577 (= lt!1256814 e!2248954)))

(declare-fun c!628462 () Bool)

(assert (=> d!1068577 (= c!628462 (isEmpty!22646 lt!1256732))))

(declare-fun validRegex!4788 (Regex!10470) Bool)

(assert (=> d!1068577 (validRegex!4788 (regex!5711 rule!403))))

(assert (=> d!1068577 (= (matchR!5039 (regex!5711 rule!403) lt!1256732) lt!1256814)))

(declare-fun b!3633185 () Bool)

(assert (=> b!3633185 (= e!2248955 (= lt!1256814 call!262757))))

(declare-fun bm!262752 () Bool)

(assert (=> bm!262752 (= call!262757 (isEmpty!22646 lt!1256732))))

(declare-fun b!3633196 () Bool)

(assert (=> b!3633196 (= e!2248955 e!2248950)))

(declare-fun c!628463 () Bool)

(assert (=> b!3633196 (= c!628463 (is-EmptyLang!10470 (regex!5711 rule!403)))))

(declare-fun b!3633197 () Bool)

(assert (=> b!3633197 (= e!2248951 (= (head!7695 lt!1256732) (c!628437 (regex!5711 rule!403))))))

(assert (= (and d!1068577 c!628462) b!3633184))

(assert (= (and d!1068577 (not c!628462)) b!3633193))

(assert (= (and d!1068577 c!628464) b!3633185))

(assert (= (and d!1068577 (not c!628464)) b!3633196))

(assert (= (and b!3633196 c!628463) b!3633190))

(assert (= (and b!3633196 (not c!628463)) b!3633192))

(assert (= (and b!3633192 (not res!1471510)) b!3633191))

(assert (= (and b!3633191 res!1471513) b!3633186))

(assert (= (and b!3633186 res!1471516) b!3633195))

(assert (= (and b!3633195 res!1471511) b!3633197))

(assert (= (and b!3633191 (not res!1471512)) b!3633189))

(assert (= (and b!3633189 res!1471515) b!3633188))

(assert (= (and b!3633188 (not res!1471509)) b!3633194))

(assert (= (and b!3633194 (not res!1471514)) b!3633187))

(assert (= (or b!3633185 b!3633186 b!3633188) bm!262752))

(declare-fun m!4135037 () Bool)

(assert (=> b!3633184 m!4135037))

(declare-fun m!4135039 () Bool)

(assert (=> d!1068577 m!4135039))

(declare-fun m!4135041 () Bool)

(assert (=> d!1068577 m!4135041))

(assert (=> bm!262752 m!4135039))

(declare-fun m!4135043 () Bool)

(assert (=> b!3633197 m!4135043))

(declare-fun m!4135045 () Bool)

(assert (=> b!3633195 m!4135045))

(assert (=> b!3633195 m!4135045))

(declare-fun m!4135047 () Bool)

(assert (=> b!3633195 m!4135047))

(assert (=> b!3633193 m!4135043))

(assert (=> b!3633193 m!4135043))

(declare-fun m!4135049 () Bool)

(assert (=> b!3633193 m!4135049))

(assert (=> b!3633193 m!4135045))

(assert (=> b!3633193 m!4135049))

(assert (=> b!3633193 m!4135045))

(declare-fun m!4135051 () Bool)

(assert (=> b!3633193 m!4135051))

(assert (=> b!3633194 m!4135045))

(assert (=> b!3633194 m!4135045))

(assert (=> b!3633194 m!4135047))

(assert (=> b!3633187 m!4135043))

(assert (=> b!3632990 d!1068577))

(declare-fun d!1068579 () Bool)

(declare-fun res!1471521 () Bool)

(declare-fun e!2248958 () Bool)

(assert (=> d!1068579 (=> (not res!1471521) (not e!2248958))))

(assert (=> d!1068579 (= res!1471521 (validRegex!4788 (regex!5711 rule!403)))))

(assert (=> d!1068579 (= (ruleValid!1975 thiss!23823 rule!403) e!2248958)))

(declare-fun b!3633202 () Bool)

(declare-fun res!1471522 () Bool)

(assert (=> b!3633202 (=> (not res!1471522) (not e!2248958))))

(assert (=> b!3633202 (= res!1471522 (not (nullable!3626 (regex!5711 rule!403))))))

(declare-fun b!3633203 () Bool)

(assert (=> b!3633203 (= e!2248958 (not (= (tag!6445 rule!403) (String!43042 ""))))))

(assert (= (and d!1068579 res!1471521) b!3633202))

(assert (= (and b!3633202 res!1471522) b!3633203))

(assert (=> d!1068579 m!4135041))

(assert (=> b!3633202 m!4135037))

(assert (=> b!3632990 d!1068579))

(declare-fun d!1068581 () Bool)

(assert (=> d!1068581 (ruleValid!1975 thiss!23823 rule!403)))

(declare-fun lt!1256817 () Unit!55097)

(declare-fun choose!21339 (LexerInterface!5300 Rule!11222 List!38402) Unit!55097)

(assert (=> d!1068581 (= lt!1256817 (choose!21339 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1068581 (contains!7487 rules!3307 rule!403)))

(assert (=> d!1068581 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1129 thiss!23823 rule!403 rules!3307) lt!1256817)))

(declare-fun bs!571723 () Bool)

(assert (= bs!571723 d!1068581))

(assert (=> bs!571723 m!4134843))

(declare-fun m!4135053 () Bool)

(assert (=> bs!571723 m!4135053))

(assert (=> bs!571723 m!4134757))

(assert (=> b!3632990 d!1068581))

(declare-fun d!1068583 () Bool)

(assert (=> d!1068583 (= (inv!51699 (tag!6445 (h!43698 rules!3307))) (= (mod (str.len (value!183224 (tag!6445 (h!43698 rules!3307)))) 2) 0))))

(assert (=> b!3632989 d!1068583))

(declare-fun d!1068585 () Bool)

(declare-fun res!1471525 () Bool)

(declare-fun e!2248961 () Bool)

(assert (=> d!1068585 (=> (not res!1471525) (not e!2248961))))

(declare-fun semiInverseModEq!2426 (Int Int) Bool)

(assert (=> d!1068585 (= res!1471525 (semiInverseModEq!2426 (toChars!7862 (transformation!5711 (h!43698 rules!3307))) (toValue!8003 (transformation!5711 (h!43698 rules!3307)))))))

(assert (=> d!1068585 (= (inv!51703 (transformation!5711 (h!43698 rules!3307))) e!2248961)))

(declare-fun b!3633206 () Bool)

(declare-fun equivClasses!2325 (Int Int) Bool)

(assert (=> b!3633206 (= e!2248961 (equivClasses!2325 (toChars!7862 (transformation!5711 (h!43698 rules!3307))) (toValue!8003 (transformation!5711 (h!43698 rules!3307)))))))

(assert (= (and d!1068585 res!1471525) b!3633206))

(declare-fun m!4135055 () Bool)

(assert (=> d!1068585 m!4135055))

(declare-fun m!4135057 () Bool)

(assert (=> b!3633206 m!4135057))

(assert (=> b!3632989 d!1068585))

(declare-fun b!3633207 () Bool)

(declare-fun e!2248967 () Bool)

(assert (=> b!3633207 (= e!2248967 (nullable!3626 (regex!5711 (rule!8483 (_1!22207 lt!1256725)))))))

(declare-fun b!3633209 () Bool)

(declare-fun res!1471533 () Bool)

(declare-fun e!2248964 () Bool)

(assert (=> b!3633209 (=> (not res!1471533) (not e!2248964))))

(declare-fun call!262758 () Bool)

(assert (=> b!3633209 (= res!1471533 (not call!262758))))

(declare-fun b!3633210 () Bool)

(declare-fun e!2248966 () Bool)

(assert (=> b!3633210 (= e!2248966 (not (= (head!7695 lt!1256716) (c!628437 (regex!5711 (rule!8483 (_1!22207 lt!1256725)))))))))

(declare-fun b!3633211 () Bool)

(declare-fun e!2248965 () Bool)

(assert (=> b!3633211 (= e!2248965 e!2248966)))

(declare-fun res!1471526 () Bool)

(assert (=> b!3633211 (=> res!1471526 e!2248966)))

(assert (=> b!3633211 (= res!1471526 call!262758)))

(declare-fun b!3633212 () Bool)

(declare-fun e!2248962 () Bool)

(assert (=> b!3633212 (= e!2248962 e!2248965)))

(declare-fun res!1471532 () Bool)

(assert (=> b!3633212 (=> (not res!1471532) (not e!2248965))))

(declare-fun lt!1256818 () Bool)

(assert (=> b!3633212 (= res!1471532 (not lt!1256818))))

(declare-fun b!3633213 () Bool)

(declare-fun e!2248963 () Bool)

(assert (=> b!3633213 (= e!2248963 (not lt!1256818))))

(declare-fun b!3633214 () Bool)

(declare-fun res!1471529 () Bool)

(assert (=> b!3633214 (=> res!1471529 e!2248962)))

(assert (=> b!3633214 (= res!1471529 e!2248964)))

(declare-fun res!1471530 () Bool)

(assert (=> b!3633214 (=> (not res!1471530) (not e!2248964))))

(assert (=> b!3633214 (= res!1471530 lt!1256818)))

(declare-fun b!3633215 () Bool)

(declare-fun res!1471527 () Bool)

(assert (=> b!3633215 (=> res!1471527 e!2248962)))

(assert (=> b!3633215 (= res!1471527 (not (is-ElementMatch!10470 (regex!5711 (rule!8483 (_1!22207 lt!1256725))))))))

(assert (=> b!3633215 (= e!2248963 e!2248962)))

(declare-fun b!3633216 () Bool)

(assert (=> b!3633216 (= e!2248967 (matchR!5039 (derivativeStep!3175 (regex!5711 (rule!8483 (_1!22207 lt!1256725))) (head!7695 lt!1256716)) (tail!5624 lt!1256716)))))

(declare-fun b!3633217 () Bool)

(declare-fun res!1471531 () Bool)

(assert (=> b!3633217 (=> res!1471531 e!2248966)))

(assert (=> b!3633217 (= res!1471531 (not (isEmpty!22646 (tail!5624 lt!1256716))))))

(declare-fun b!3633218 () Bool)

(declare-fun res!1471528 () Bool)

(assert (=> b!3633218 (=> (not res!1471528) (not e!2248964))))

(assert (=> b!3633218 (= res!1471528 (isEmpty!22646 (tail!5624 lt!1256716)))))

(declare-fun d!1068587 () Bool)

(declare-fun e!2248968 () Bool)

(assert (=> d!1068587 e!2248968))

(declare-fun c!628467 () Bool)

(assert (=> d!1068587 (= c!628467 (is-EmptyExpr!10470 (regex!5711 (rule!8483 (_1!22207 lt!1256725)))))))

(assert (=> d!1068587 (= lt!1256818 e!2248967)))

(declare-fun c!628465 () Bool)

(assert (=> d!1068587 (= c!628465 (isEmpty!22646 lt!1256716))))

(assert (=> d!1068587 (validRegex!4788 (regex!5711 (rule!8483 (_1!22207 lt!1256725))))))

(assert (=> d!1068587 (= (matchR!5039 (regex!5711 (rule!8483 (_1!22207 lt!1256725))) lt!1256716) lt!1256818)))

(declare-fun b!3633208 () Bool)

(assert (=> b!3633208 (= e!2248968 (= lt!1256818 call!262758))))

(declare-fun bm!262753 () Bool)

(assert (=> bm!262753 (= call!262758 (isEmpty!22646 lt!1256716))))

(declare-fun b!3633219 () Bool)

(assert (=> b!3633219 (= e!2248968 e!2248963)))

(declare-fun c!628466 () Bool)

(assert (=> b!3633219 (= c!628466 (is-EmptyLang!10470 (regex!5711 (rule!8483 (_1!22207 lt!1256725)))))))

(declare-fun b!3633220 () Bool)

(assert (=> b!3633220 (= e!2248964 (= (head!7695 lt!1256716) (c!628437 (regex!5711 (rule!8483 (_1!22207 lt!1256725))))))))

(assert (= (and d!1068587 c!628465) b!3633207))

(assert (= (and d!1068587 (not c!628465)) b!3633216))

(assert (= (and d!1068587 c!628467) b!3633208))

(assert (= (and d!1068587 (not c!628467)) b!3633219))

(assert (= (and b!3633219 c!628466) b!3633213))

(assert (= (and b!3633219 (not c!628466)) b!3633215))

(assert (= (and b!3633215 (not res!1471527)) b!3633214))

(assert (= (and b!3633214 res!1471530) b!3633209))

(assert (= (and b!3633209 res!1471533) b!3633218))

(assert (= (and b!3633218 res!1471528) b!3633220))

(assert (= (and b!3633214 (not res!1471529)) b!3633212))

(assert (= (and b!3633212 res!1471532) b!3633211))

(assert (= (and b!3633211 (not res!1471526)) b!3633217))

(assert (= (and b!3633217 (not res!1471531)) b!3633210))

(assert (= (or b!3633208 b!3633209 b!3633211) bm!262753))

(declare-fun m!4135059 () Bool)

(assert (=> b!3633207 m!4135059))

(assert (=> d!1068587 m!4134769))

(declare-fun m!4135061 () Bool)

(assert (=> d!1068587 m!4135061))

(assert (=> bm!262753 m!4134769))

(declare-fun m!4135063 () Bool)

(assert (=> b!3633220 m!4135063))

(declare-fun m!4135065 () Bool)

(assert (=> b!3633218 m!4135065))

(assert (=> b!3633218 m!4135065))

(declare-fun m!4135067 () Bool)

(assert (=> b!3633218 m!4135067))

(assert (=> b!3633216 m!4135063))

(assert (=> b!3633216 m!4135063))

(declare-fun m!4135069 () Bool)

(assert (=> b!3633216 m!4135069))

(assert (=> b!3633216 m!4135065))

(assert (=> b!3633216 m!4135069))

(assert (=> b!3633216 m!4135065))

(declare-fun m!4135071 () Bool)

(assert (=> b!3633216 m!4135071))

(assert (=> b!3633217 m!4135065))

(assert (=> b!3633217 m!4135065))

(assert (=> b!3633217 m!4135067))

(assert (=> b!3633210 m!4135063))

(assert (=> b!3633004 d!1068587))

(declare-fun d!1068589 () Bool)

(declare-fun lt!1256819 () Bool)

(assert (=> d!1068589 (= lt!1256819 (set.member lt!1256723 (content!5492 (usedCharacters!923 (regex!5711 rule!403)))))))

(declare-fun e!2248970 () Bool)

(assert (=> d!1068589 (= lt!1256819 e!2248970)))

(declare-fun res!1471534 () Bool)

(assert (=> d!1068589 (=> (not res!1471534) (not e!2248970))))

(assert (=> d!1068589 (= res!1471534 (is-Cons!38277 (usedCharacters!923 (regex!5711 rule!403))))))

(assert (=> d!1068589 (= (contains!7488 (usedCharacters!923 (regex!5711 rule!403)) lt!1256723) lt!1256819)))

(declare-fun b!3633221 () Bool)

(declare-fun e!2248969 () Bool)

(assert (=> b!3633221 (= e!2248970 e!2248969)))

(declare-fun res!1471535 () Bool)

(assert (=> b!3633221 (=> res!1471535 e!2248969)))

(assert (=> b!3633221 (= res!1471535 (= (h!43697 (usedCharacters!923 (regex!5711 rule!403))) lt!1256723))))

(declare-fun b!3633222 () Bool)

(assert (=> b!3633222 (= e!2248969 (contains!7488 (t!295464 (usedCharacters!923 (regex!5711 rule!403))) lt!1256723))))

(assert (= (and d!1068589 res!1471534) b!3633221))

(assert (= (and b!3633221 (not res!1471535)) b!3633222))

(assert (=> d!1068589 m!4134833))

(declare-fun m!4135073 () Bool)

(assert (=> d!1068589 m!4135073))

(declare-fun m!4135075 () Bool)

(assert (=> d!1068589 m!4135075))

(declare-fun m!4135077 () Bool)

(assert (=> b!3633222 m!4135077))

(assert (=> b!3632983 d!1068589))

(declare-fun bm!262754 () Bool)

(declare-fun call!262760 () List!38401)

(declare-fun c!628471 () Bool)

(assert (=> bm!262754 (= call!262760 (usedCharacters!923 (ite c!628471 (regTwo!21453 (regex!5711 rule!403)) (regOne!21452 (regex!5711 rule!403)))))))

(declare-fun b!3633223 () Bool)

(declare-fun e!2248974 () List!38401)

(declare-fun call!262762 () List!38401)

(assert (=> b!3633223 (= e!2248974 call!262762)))

(declare-fun b!3633224 () Bool)

(declare-fun e!2248971 () List!38401)

(assert (=> b!3633224 (= e!2248971 (Cons!38277 (c!628437 (regex!5711 rule!403)) Nil!38277))))

(declare-fun b!3633225 () Bool)

(declare-fun e!2248973 () List!38401)

(assert (=> b!3633225 (= e!2248973 e!2248971)))

(declare-fun c!628468 () Bool)

(assert (=> b!3633225 (= c!628468 (is-ElementMatch!10470 (regex!5711 rule!403)))))

(declare-fun b!3633226 () Bool)

(declare-fun e!2248972 () List!38401)

(declare-fun call!262759 () List!38401)

(assert (=> b!3633226 (= e!2248972 call!262759)))

(declare-fun bm!262755 () Bool)

(declare-fun call!262761 () List!38401)

(assert (=> bm!262755 (= call!262761 call!262759)))

(declare-fun b!3633227 () Bool)

(assert (=> b!3633227 (= e!2248974 call!262762)))

(declare-fun c!628470 () Bool)

(declare-fun bm!262756 () Bool)

(assert (=> bm!262756 (= call!262759 (usedCharacters!923 (ite c!628470 (reg!10799 (regex!5711 rule!403)) (ite c!628471 (regOne!21453 (regex!5711 rule!403)) (regTwo!21452 (regex!5711 rule!403))))))))

(declare-fun b!3633228 () Bool)

(assert (=> b!3633228 (= e!2248973 Nil!38277)))

(declare-fun b!3633229 () Bool)

(assert (=> b!3633229 (= c!628470 (is-Star!10470 (regex!5711 rule!403)))))

(assert (=> b!3633229 (= e!2248971 e!2248972)))

(declare-fun d!1068591 () Bool)

(declare-fun c!628469 () Bool)

(assert (=> d!1068591 (= c!628469 (or (is-EmptyExpr!10470 (regex!5711 rule!403)) (is-EmptyLang!10470 (regex!5711 rule!403))))))

(assert (=> d!1068591 (= (usedCharacters!923 (regex!5711 rule!403)) e!2248973)))

(declare-fun bm!262757 () Bool)

(assert (=> bm!262757 (= call!262762 (++!9527 (ite c!628471 call!262761 call!262760) (ite c!628471 call!262760 call!262761)))))

(declare-fun b!3633230 () Bool)

(assert (=> b!3633230 (= e!2248972 e!2248974)))

(assert (=> b!3633230 (= c!628471 (is-Union!10470 (regex!5711 rule!403)))))

(assert (= (and d!1068591 c!628469) b!3633228))

(assert (= (and d!1068591 (not c!628469)) b!3633225))

(assert (= (and b!3633225 c!628468) b!3633224))

(assert (= (and b!3633225 (not c!628468)) b!3633229))

(assert (= (and b!3633229 c!628470) b!3633226))

(assert (= (and b!3633229 (not c!628470)) b!3633230))

(assert (= (and b!3633230 c!628471) b!3633227))

(assert (= (and b!3633230 (not c!628471)) b!3633223))

(assert (= (or b!3633227 b!3633223) bm!262755))

(assert (= (or b!3633227 b!3633223) bm!262754))

(assert (= (or b!3633227 b!3633223) bm!262757))

(assert (= (or b!3633226 bm!262755) bm!262756))

(declare-fun m!4135079 () Bool)

(assert (=> bm!262754 m!4135079))

(declare-fun m!4135081 () Bool)

(assert (=> bm!262756 m!4135081))

(declare-fun m!4135083 () Bool)

(assert (=> bm!262757 m!4135083))

(assert (=> b!3632983 d!1068591))

(declare-fun d!1068593 () Bool)

(assert (=> d!1068593 (= (head!7695 suffix!1395) (h!43697 suffix!1395))))

(assert (=> b!3632983 d!1068593))

(declare-fun d!1068595 () Bool)

(declare-fun res!1471540 () Bool)

(declare-fun e!2248979 () Bool)

(assert (=> d!1068595 (=> res!1471540 e!2248979)))

(assert (=> d!1068595 (= res!1471540 (not (is-Cons!38278 rules!3307)))))

(assert (=> d!1068595 (= (sepAndNonSepRulesDisjointChars!1879 rules!3307 rules!3307) e!2248979)))

(declare-fun b!3633235 () Bool)

(declare-fun e!2248980 () Bool)

(assert (=> b!3633235 (= e!2248979 e!2248980)))

(declare-fun res!1471541 () Bool)

(assert (=> b!3633235 (=> (not res!1471541) (not e!2248980))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!850 (Rule!11222 List!38402) Bool)

(assert (=> b!3633235 (= res!1471541 (ruleDisjointCharsFromAllFromOtherType!850 (h!43698 rules!3307) rules!3307))))

(declare-fun b!3633236 () Bool)

(assert (=> b!3633236 (= e!2248980 (sepAndNonSepRulesDisjointChars!1879 rules!3307 (t!295465 rules!3307)))))

(assert (= (and d!1068595 (not res!1471540)) b!3633235))

(assert (= (and b!3633235 res!1471541) b!3633236))

(declare-fun m!4135085 () Bool)

(assert (=> b!3633235 m!4135085))

(declare-fun m!4135087 () Bool)

(assert (=> b!3633236 m!4135087))

(assert (=> b!3632985 d!1068595))

(declare-fun d!1068597 () Bool)

(declare-fun e!2248983 () Bool)

(assert (=> d!1068597 e!2248983))

(declare-fun res!1471546 () Bool)

(assert (=> d!1068597 (=> (not res!1471546) (not e!2248983))))

(assert (=> d!1068597 (= res!1471546 (isDefined!6283 (getRuleFromTag!1315 thiss!23823 rules!3307 (tag!6445 (rule!8483 (_1!22207 lt!1256725))))))))

(declare-fun lt!1256822 () Unit!55097)

(declare-fun choose!21340 (LexerInterface!5300 List!38402 List!38401 Token!10788) Unit!55097)

(assert (=> d!1068597 (= lt!1256822 (choose!21340 thiss!23823 rules!3307 lt!1256719 (_1!22207 lt!1256725)))))

(assert (=> d!1068597 (rulesInvariant!4697 thiss!23823 rules!3307)))

(assert (=> d!1068597 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1315 thiss!23823 rules!3307 lt!1256719 (_1!22207 lt!1256725)) lt!1256822)))

(declare-fun b!3633241 () Bool)

(declare-fun res!1471547 () Bool)

(assert (=> b!3633241 (=> (not res!1471547) (not e!2248983))))

(assert (=> b!3633241 (= res!1471547 (matchR!5039 (regex!5711 (get!12516 (getRuleFromTag!1315 thiss!23823 rules!3307 (tag!6445 (rule!8483 (_1!22207 lt!1256725)))))) (list!14153 (charsOf!3725 (_1!22207 lt!1256725)))))))

(declare-fun b!3633242 () Bool)

(assert (=> b!3633242 (= e!2248983 (= (rule!8483 (_1!22207 lt!1256725)) (get!12516 (getRuleFromTag!1315 thiss!23823 rules!3307 (tag!6445 (rule!8483 (_1!22207 lt!1256725)))))))))

(assert (= (and d!1068597 res!1471546) b!3633241))

(assert (= (and b!3633241 res!1471547) b!3633242))

(assert (=> d!1068597 m!4134801))

(assert (=> d!1068597 m!4134801))

(declare-fun m!4135089 () Bool)

(assert (=> d!1068597 m!4135089))

(declare-fun m!4135091 () Bool)

(assert (=> d!1068597 m!4135091))

(assert (=> d!1068597 m!4134869))

(assert (=> b!3633241 m!4134781))

(declare-fun m!4135093 () Bool)

(assert (=> b!3633241 m!4135093))

(assert (=> b!3633241 m!4134779))

(assert (=> b!3633241 m!4134801))

(assert (=> b!3633241 m!4134779))

(assert (=> b!3633241 m!4134781))

(assert (=> b!3633241 m!4134801))

(declare-fun m!4135095 () Bool)

(assert (=> b!3633241 m!4135095))

(assert (=> b!3633242 m!4134801))

(assert (=> b!3633242 m!4134801))

(assert (=> b!3633242 m!4135095))

(assert (=> b!3633005 d!1068597))

(declare-fun b!3633252 () Bool)

(declare-fun e!2248989 () List!38401)

(assert (=> b!3633252 (= e!2248989 (Cons!38277 (h!43697 lt!1256732) (++!9527 (t!295464 lt!1256732) suffix!1395)))))

(declare-fun b!3633251 () Bool)

(assert (=> b!3633251 (= e!2248989 suffix!1395)))

(declare-fun d!1068599 () Bool)

(declare-fun e!2248988 () Bool)

(assert (=> d!1068599 e!2248988))

(declare-fun res!1471553 () Bool)

(assert (=> d!1068599 (=> (not res!1471553) (not e!2248988))))

(declare-fun lt!1256825 () List!38401)

(assert (=> d!1068599 (= res!1471553 (= (content!5492 lt!1256825) (set.union (content!5492 lt!1256732) (content!5492 suffix!1395))))))

(assert (=> d!1068599 (= lt!1256825 e!2248989)))

(declare-fun c!628474 () Bool)

(assert (=> d!1068599 (= c!628474 (is-Nil!38277 lt!1256732))))

(assert (=> d!1068599 (= (++!9527 lt!1256732 suffix!1395) lt!1256825)))

(declare-fun b!3633253 () Bool)

(declare-fun res!1471552 () Bool)

(assert (=> b!3633253 (=> (not res!1471552) (not e!2248988))))

(assert (=> b!3633253 (= res!1471552 (= (size!29210 lt!1256825) (+ (size!29210 lt!1256732) (size!29210 suffix!1395))))))

(declare-fun b!3633254 () Bool)

(assert (=> b!3633254 (= e!2248988 (or (not (= suffix!1395 Nil!38277)) (= lt!1256825 lt!1256732)))))

(assert (= (and d!1068599 c!628474) b!3633251))

(assert (= (and d!1068599 (not c!628474)) b!3633252))

(assert (= (and d!1068599 res!1471553) b!3633253))

(assert (= (and b!3633253 res!1471552) b!3633254))

(declare-fun m!4135097 () Bool)

(assert (=> b!3633252 m!4135097))

(declare-fun m!4135099 () Bool)

(assert (=> d!1068599 m!4135099))

(declare-fun m!4135101 () Bool)

(assert (=> d!1068599 m!4135101))

(declare-fun m!4135103 () Bool)

(assert (=> d!1068599 m!4135103))

(declare-fun m!4135105 () Bool)

(assert (=> b!3633253 m!4135105))

(declare-fun m!4135107 () Bool)

(assert (=> b!3633253 m!4135107))

(declare-fun m!4135109 () Bool)

(assert (=> b!3633253 m!4135109))

(assert (=> b!3633005 d!1068599))

(declare-fun b!3633266 () Bool)

(declare-fun e!2248998 () Bool)

(assert (=> b!3633266 (= e!2248998 (>= (size!29210 lt!1256719) (size!29210 lt!1256732)))))

(declare-fun b!3633265 () Bool)

(declare-fun e!2248997 () Bool)

(assert (=> b!3633265 (= e!2248997 (isPrefix!3074 (tail!5624 lt!1256732) (tail!5624 lt!1256719)))))

(declare-fun b!3633264 () Bool)

(declare-fun res!1471564 () Bool)

(assert (=> b!3633264 (=> (not res!1471564) (not e!2248997))))

(assert (=> b!3633264 (= res!1471564 (= (head!7695 lt!1256732) (head!7695 lt!1256719)))))

(declare-fun b!3633263 () Bool)

(declare-fun e!2248996 () Bool)

(assert (=> b!3633263 (= e!2248996 e!2248997)))

(declare-fun res!1471565 () Bool)

(assert (=> b!3633263 (=> (not res!1471565) (not e!2248997))))

(assert (=> b!3633263 (= res!1471565 (not (is-Nil!38277 lt!1256719)))))

(declare-fun d!1068601 () Bool)

(assert (=> d!1068601 e!2248998))

(declare-fun res!1471562 () Bool)

(assert (=> d!1068601 (=> res!1471562 e!2248998)))

(declare-fun lt!1256828 () Bool)

(assert (=> d!1068601 (= res!1471562 (not lt!1256828))))

(assert (=> d!1068601 (= lt!1256828 e!2248996)))

(declare-fun res!1471563 () Bool)

(assert (=> d!1068601 (=> res!1471563 e!2248996)))

(assert (=> d!1068601 (= res!1471563 (is-Nil!38277 lt!1256732))))

(assert (=> d!1068601 (= (isPrefix!3074 lt!1256732 lt!1256719) lt!1256828)))

(assert (= (and d!1068601 (not res!1471563)) b!3633263))

(assert (= (and b!3633263 res!1471565) b!3633264))

(assert (= (and b!3633264 res!1471564) b!3633265))

(assert (= (and d!1068601 (not res!1471562)) b!3633266))

(declare-fun m!4135111 () Bool)

(assert (=> b!3633266 m!4135111))

(assert (=> b!3633266 m!4135107))

(assert (=> b!3633265 m!4135045))

(declare-fun m!4135113 () Bool)

(assert (=> b!3633265 m!4135113))

(assert (=> b!3633265 m!4135045))

(assert (=> b!3633265 m!4135113))

(declare-fun m!4135115 () Bool)

(assert (=> b!3633265 m!4135115))

(assert (=> b!3633264 m!4135043))

(declare-fun m!4135117 () Bool)

(assert (=> b!3633264 m!4135117))

(assert (=> b!3633005 d!1068601))

(declare-fun b!3633285 () Bool)

(declare-fun e!2249007 () Option!8050)

(declare-fun call!262765 () Option!8050)

(assert (=> b!3633285 (= e!2249007 call!262765)))

(declare-fun bm!262760 () Bool)

(declare-fun maxPrefixOneRule!1972 (LexerInterface!5300 Rule!11222 List!38401) Option!8050)

(assert (=> bm!262760 (= call!262765 (maxPrefixOneRule!1972 thiss!23823 (h!43698 rules!3307) lt!1256719))))

(declare-fun b!3633286 () Bool)

(declare-fun res!1471580 () Bool)

(declare-fun e!2249006 () Bool)

(assert (=> b!3633286 (=> (not res!1471580) (not e!2249006))))

(declare-fun lt!1256839 () Option!8050)

(assert (=> b!3633286 (= res!1471580 (= (list!14153 (charsOf!3725 (_1!22207 (get!12517 lt!1256839)))) (originalCharacters!6425 (_1!22207 (get!12517 lt!1256839)))))))

(declare-fun b!3633287 () Bool)

(declare-fun e!2249005 () Bool)

(assert (=> b!3633287 (= e!2249005 e!2249006)))

(declare-fun res!1471582 () Bool)

(assert (=> b!3633287 (=> (not res!1471582) (not e!2249006))))

(assert (=> b!3633287 (= res!1471582 (isDefined!6282 lt!1256839))))

(declare-fun b!3633288 () Bool)

(declare-fun res!1471584 () Bool)

(assert (=> b!3633288 (=> (not res!1471584) (not e!2249006))))

(assert (=> b!3633288 (= res!1471584 (matchR!5039 (regex!5711 (rule!8483 (_1!22207 (get!12517 lt!1256839)))) (list!14153 (charsOf!3725 (_1!22207 (get!12517 lt!1256839))))))))

(declare-fun b!3633289 () Bool)

(declare-fun res!1471581 () Bool)

(assert (=> b!3633289 (=> (not res!1471581) (not e!2249006))))

(assert (=> b!3633289 (= res!1471581 (= (++!9527 (list!14153 (charsOf!3725 (_1!22207 (get!12517 lt!1256839)))) (_2!22207 (get!12517 lt!1256839))) lt!1256719))))

(declare-fun d!1068603 () Bool)

(assert (=> d!1068603 e!2249005))

(declare-fun res!1471586 () Bool)

(assert (=> d!1068603 (=> res!1471586 e!2249005)))

(declare-fun isEmpty!22650 (Option!8050) Bool)

(assert (=> d!1068603 (= res!1471586 (isEmpty!22650 lt!1256839))))

(assert (=> d!1068603 (= lt!1256839 e!2249007)))

(declare-fun c!628477 () Bool)

(assert (=> d!1068603 (= c!628477 (and (is-Cons!38278 rules!3307) (is-Nil!38278 (t!295465 rules!3307))))))

(declare-fun lt!1256842 () Unit!55097)

(declare-fun lt!1256843 () Unit!55097)

(assert (=> d!1068603 (= lt!1256842 lt!1256843)))

(assert (=> d!1068603 (isPrefix!3074 lt!1256719 lt!1256719)))

(declare-fun lemmaIsPrefixRefl!1947 (List!38401 List!38401) Unit!55097)

(assert (=> d!1068603 (= lt!1256843 (lemmaIsPrefixRefl!1947 lt!1256719 lt!1256719))))

(declare-fun rulesValidInductive!2012 (LexerInterface!5300 List!38402) Bool)

(assert (=> d!1068603 (rulesValidInductive!2012 thiss!23823 rules!3307)))

(assert (=> d!1068603 (= (maxPrefix!2834 thiss!23823 rules!3307 lt!1256719) lt!1256839)))

(declare-fun b!3633290 () Bool)

(declare-fun res!1471583 () Bool)

(assert (=> b!3633290 (=> (not res!1471583) (not e!2249006))))

(assert (=> b!3633290 (= res!1471583 (= (value!183225 (_1!22207 (get!12517 lt!1256839))) (apply!9213 (transformation!5711 (rule!8483 (_1!22207 (get!12517 lt!1256839)))) (seqFromList!4260 (originalCharacters!6425 (_1!22207 (get!12517 lt!1256839)))))))))

(declare-fun b!3633291 () Bool)

(declare-fun res!1471585 () Bool)

(assert (=> b!3633291 (=> (not res!1471585) (not e!2249006))))

(assert (=> b!3633291 (= res!1471585 (< (size!29210 (_2!22207 (get!12517 lt!1256839))) (size!29210 lt!1256719)))))

(declare-fun b!3633292 () Bool)

(assert (=> b!3633292 (= e!2249006 (contains!7487 rules!3307 (rule!8483 (_1!22207 (get!12517 lt!1256839)))))))

(declare-fun b!3633293 () Bool)

(declare-fun lt!1256841 () Option!8050)

(declare-fun lt!1256840 () Option!8050)

(assert (=> b!3633293 (= e!2249007 (ite (and (is-None!8049 lt!1256841) (is-None!8049 lt!1256840)) None!8049 (ite (is-None!8049 lt!1256840) lt!1256841 (ite (is-None!8049 lt!1256841) lt!1256840 (ite (>= (size!29206 (_1!22207 (v!37849 lt!1256841))) (size!29206 (_1!22207 (v!37849 lt!1256840)))) lt!1256841 lt!1256840)))))))

(assert (=> b!3633293 (= lt!1256841 call!262765)))

(assert (=> b!3633293 (= lt!1256840 (maxPrefix!2834 thiss!23823 (t!295465 rules!3307) lt!1256719))))

(assert (= (and d!1068603 c!628477) b!3633285))

(assert (= (and d!1068603 (not c!628477)) b!3633293))

(assert (= (or b!3633285 b!3633293) bm!262760))

(assert (= (and d!1068603 (not res!1471586)) b!3633287))

(assert (= (and b!3633287 res!1471582) b!3633286))

(assert (= (and b!3633286 res!1471580) b!3633291))

(assert (= (and b!3633291 res!1471585) b!3633289))

(assert (= (and b!3633289 res!1471581) b!3633290))

(assert (= (and b!3633290 res!1471583) b!3633288))

(assert (= (and b!3633288 res!1471584) b!3633292))

(declare-fun m!4135119 () Bool)

(assert (=> b!3633290 m!4135119))

(declare-fun m!4135121 () Bool)

(assert (=> b!3633290 m!4135121))

(assert (=> b!3633290 m!4135121))

(declare-fun m!4135123 () Bool)

(assert (=> b!3633290 m!4135123))

(assert (=> b!3633289 m!4135119))

(declare-fun m!4135125 () Bool)

(assert (=> b!3633289 m!4135125))

(assert (=> b!3633289 m!4135125))

(declare-fun m!4135127 () Bool)

(assert (=> b!3633289 m!4135127))

(assert (=> b!3633289 m!4135127))

(declare-fun m!4135129 () Bool)

(assert (=> b!3633289 m!4135129))

(declare-fun m!4135131 () Bool)

(assert (=> d!1068603 m!4135131))

(declare-fun m!4135133 () Bool)

(assert (=> d!1068603 m!4135133))

(declare-fun m!4135135 () Bool)

(assert (=> d!1068603 m!4135135))

(declare-fun m!4135137 () Bool)

(assert (=> d!1068603 m!4135137))

(assert (=> b!3633291 m!4135119))

(declare-fun m!4135139 () Bool)

(assert (=> b!3633291 m!4135139))

(assert (=> b!3633291 m!4135111))

(assert (=> b!3633288 m!4135119))

(assert (=> b!3633288 m!4135125))

(assert (=> b!3633288 m!4135125))

(assert (=> b!3633288 m!4135127))

(assert (=> b!3633288 m!4135127))

(declare-fun m!4135141 () Bool)

(assert (=> b!3633288 m!4135141))

(declare-fun m!4135143 () Bool)

(assert (=> bm!262760 m!4135143))

(declare-fun m!4135145 () Bool)

(assert (=> b!3633287 m!4135145))

(assert (=> b!3633292 m!4135119))

(declare-fun m!4135147 () Bool)

(assert (=> b!3633292 m!4135147))

(declare-fun m!4135149 () Bool)

(assert (=> b!3633293 m!4135149))

(assert (=> b!3633286 m!4135119))

(assert (=> b!3633286 m!4135125))

(assert (=> b!3633286 m!4135125))

(assert (=> b!3633286 m!4135127))

(assert (=> b!3633005 d!1068603))

(declare-fun d!1068605 () Bool)

(declare-fun e!2249019 () Bool)

(assert (=> d!1068605 e!2249019))

(declare-fun res!1471591 () Bool)

(assert (=> d!1068605 (=> res!1471591 e!2249019)))

(declare-fun lt!1256852 () Option!8051)

(declare-fun isEmpty!22651 (Option!8051) Bool)

(assert (=> d!1068605 (= res!1471591 (isEmpty!22651 lt!1256852))))

(declare-fun e!2249018 () Option!8051)

(assert (=> d!1068605 (= lt!1256852 e!2249018)))

(declare-fun c!628483 () Bool)

(assert (=> d!1068605 (= c!628483 (and (is-Cons!38278 rules!3307) (= (tag!6445 (h!43698 rules!3307)) (tag!6445 (rule!8483 (_1!22207 lt!1256725))))))))

(assert (=> d!1068605 (rulesInvariant!4697 thiss!23823 rules!3307)))

(assert (=> d!1068605 (= (getRuleFromTag!1315 thiss!23823 rules!3307 (tag!6445 (rule!8483 (_1!22207 lt!1256725)))) lt!1256852)))

(declare-fun b!3633306 () Bool)

(declare-fun e!2249016 () Bool)

(assert (=> b!3633306 (= e!2249016 (= (tag!6445 (get!12516 lt!1256852)) (tag!6445 (rule!8483 (_1!22207 lt!1256725)))))))

(declare-fun b!3633307 () Bool)

(declare-fun e!2249017 () Option!8051)

(assert (=> b!3633307 (= e!2249017 None!8050)))

(declare-fun b!3633308 () Bool)

(assert (=> b!3633308 (= e!2249018 (Some!8050 (h!43698 rules!3307)))))

(declare-fun b!3633309 () Bool)

(declare-fun lt!1256851 () Unit!55097)

(declare-fun lt!1256850 () Unit!55097)

(assert (=> b!3633309 (= lt!1256851 lt!1256850)))

(assert (=> b!3633309 (rulesInvariant!4697 thiss!23823 (t!295465 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!556 (LexerInterface!5300 Rule!11222 List!38402) Unit!55097)

(assert (=> b!3633309 (= lt!1256850 (lemmaInvariantOnRulesThenOnTail!556 thiss!23823 (h!43698 rules!3307) (t!295465 rules!3307)))))

(assert (=> b!3633309 (= e!2249017 (getRuleFromTag!1315 thiss!23823 (t!295465 rules!3307) (tag!6445 (rule!8483 (_1!22207 lt!1256725)))))))

(declare-fun b!3633310 () Bool)

(assert (=> b!3633310 (= e!2249019 e!2249016)))

(declare-fun res!1471592 () Bool)

(assert (=> b!3633310 (=> (not res!1471592) (not e!2249016))))

(assert (=> b!3633310 (= res!1471592 (contains!7487 rules!3307 (get!12516 lt!1256852)))))

(declare-fun b!3633311 () Bool)

(assert (=> b!3633311 (= e!2249018 e!2249017)))

(declare-fun c!628482 () Bool)

(assert (=> b!3633311 (= c!628482 (and (is-Cons!38278 rules!3307) (not (= (tag!6445 (h!43698 rules!3307)) (tag!6445 (rule!8483 (_1!22207 lt!1256725)))))))))

(assert (= (and d!1068605 c!628483) b!3633308))

(assert (= (and d!1068605 (not c!628483)) b!3633311))

(assert (= (and b!3633311 c!628482) b!3633309))

(assert (= (and b!3633311 (not c!628482)) b!3633307))

(assert (= (and d!1068605 (not res!1471591)) b!3633310))

(assert (= (and b!3633310 res!1471592) b!3633306))

(declare-fun m!4135151 () Bool)

(assert (=> d!1068605 m!4135151))

(assert (=> d!1068605 m!4134869))

(declare-fun m!4135153 () Bool)

(assert (=> b!3633306 m!4135153))

(declare-fun m!4135155 () Bool)

(assert (=> b!3633309 m!4135155))

(declare-fun m!4135157 () Bool)

(assert (=> b!3633309 m!4135157))

(declare-fun m!4135159 () Bool)

(assert (=> b!3633309 m!4135159))

(assert (=> b!3633310 m!4135153))

(assert (=> b!3633310 m!4135153))

(declare-fun m!4135161 () Bool)

(assert (=> b!3633310 m!4135161))

(assert (=> b!3633005 d!1068605))

(declare-fun d!1068607 () Bool)

(assert (=> d!1068607 (= (isDefined!6283 lt!1256734) (not (isEmpty!22651 lt!1256734)))))

(declare-fun bs!571724 () Bool)

(assert (= bs!571724 d!1068607))

(declare-fun m!4135163 () Bool)

(assert (=> bs!571724 m!4135163))

(assert (=> b!3633005 d!1068607))

(declare-fun b!3633315 () Bool)

(declare-fun e!2249022 () Bool)

(assert (=> b!3633315 (= e!2249022 (>= (size!29210 lt!1256733) (size!29210 lt!1256716)))))

(declare-fun b!3633314 () Bool)

(declare-fun e!2249021 () Bool)

(assert (=> b!3633314 (= e!2249021 (isPrefix!3074 (tail!5624 lt!1256716) (tail!5624 lt!1256733)))))

(declare-fun b!3633313 () Bool)

(declare-fun res!1471595 () Bool)

(assert (=> b!3633313 (=> (not res!1471595) (not e!2249021))))

(assert (=> b!3633313 (= res!1471595 (= (head!7695 lt!1256716) (head!7695 lt!1256733)))))

(declare-fun b!3633312 () Bool)

(declare-fun e!2249020 () Bool)

(assert (=> b!3633312 (= e!2249020 e!2249021)))

(declare-fun res!1471596 () Bool)

(assert (=> b!3633312 (=> (not res!1471596) (not e!2249021))))

(assert (=> b!3633312 (= res!1471596 (not (is-Nil!38277 lt!1256733)))))

(declare-fun d!1068609 () Bool)

(assert (=> d!1068609 e!2249022))

(declare-fun res!1471593 () Bool)

(assert (=> d!1068609 (=> res!1471593 e!2249022)))

(declare-fun lt!1256853 () Bool)

(assert (=> d!1068609 (= res!1471593 (not lt!1256853))))

(assert (=> d!1068609 (= lt!1256853 e!2249020)))

(declare-fun res!1471594 () Bool)

(assert (=> d!1068609 (=> res!1471594 e!2249020)))

(assert (=> d!1068609 (= res!1471594 (is-Nil!38277 lt!1256716))))

(assert (=> d!1068609 (= (isPrefix!3074 lt!1256716 lt!1256733) lt!1256853)))

(assert (= (and d!1068609 (not res!1471594)) b!3633312))

(assert (= (and b!3633312 res!1471596) b!3633313))

(assert (= (and b!3633313 res!1471595) b!3633314))

(assert (= (and d!1068609 (not res!1471593)) b!3633315))

(declare-fun m!4135165 () Bool)

(assert (=> b!3633315 m!4135165))

(declare-fun m!4135167 () Bool)

(assert (=> b!3633315 m!4135167))

(assert (=> b!3633314 m!4135065))

(declare-fun m!4135169 () Bool)

(assert (=> b!3633314 m!4135169))

(assert (=> b!3633314 m!4135065))

(assert (=> b!3633314 m!4135169))

(declare-fun m!4135171 () Bool)

(assert (=> b!3633314 m!4135171))

(assert (=> b!3633313 m!4135063))

(declare-fun m!4135173 () Bool)

(assert (=> b!3633313 m!4135173))

(assert (=> b!3633005 d!1068609))

(declare-fun d!1068611 () Bool)

(assert (=> d!1068611 (= (get!12517 lt!1256726) (v!37849 lt!1256726))))

(assert (=> b!3633005 d!1068611))

(declare-fun d!1068613 () Bool)

(declare-fun list!14155 (Conc!11680) List!38401)

(assert (=> d!1068613 (= (list!14153 lt!1256720) (list!14155 (c!628438 lt!1256720)))))

(declare-fun bs!571725 () Bool)

(assert (= bs!571725 d!1068613))

(declare-fun m!4135175 () Bool)

(assert (=> bs!571725 m!4135175))

(assert (=> b!3633005 d!1068613))

(declare-fun d!1068615 () Bool)

(assert (=> d!1068615 (isPrefix!3074 lt!1256732 (++!9527 lt!1256732 suffix!1395))))

(declare-fun lt!1256856 () Unit!55097)

(declare-fun choose!21341 (List!38401 List!38401) Unit!55097)

(assert (=> d!1068615 (= lt!1256856 (choose!21341 lt!1256732 suffix!1395))))

(assert (=> d!1068615 (= (lemmaConcatTwoListThenFirstIsPrefix!1993 lt!1256732 suffix!1395) lt!1256856)))

(declare-fun bs!571726 () Bool)

(assert (= bs!571726 d!1068615))

(assert (=> bs!571726 m!4134789))

(assert (=> bs!571726 m!4134789))

(declare-fun m!4135177 () Bool)

(assert (=> bs!571726 m!4135177))

(declare-fun m!4135179 () Bool)

(assert (=> bs!571726 m!4135179))

(assert (=> b!3633005 d!1068615))

(declare-fun d!1068617 () Bool)

(assert (=> d!1068617 (isPrefix!3074 lt!1256716 (++!9527 lt!1256716 (_2!22207 lt!1256725)))))

(declare-fun lt!1256857 () Unit!55097)

(assert (=> d!1068617 (= lt!1256857 (choose!21341 lt!1256716 (_2!22207 lt!1256725)))))

(assert (=> d!1068617 (= (lemmaConcatTwoListThenFirstIsPrefix!1993 lt!1256716 (_2!22207 lt!1256725)) lt!1256857)))

(declare-fun bs!571727 () Bool)

(assert (= bs!571727 d!1068617))

(assert (=> bs!571727 m!4134809))

(assert (=> bs!571727 m!4134809))

(declare-fun m!4135181 () Bool)

(assert (=> bs!571727 m!4135181))

(declare-fun m!4135183 () Bool)

(assert (=> bs!571727 m!4135183))

(assert (=> b!3633005 d!1068617))

(declare-fun d!1068619 () Bool)

(declare-fun lt!1256860 () BalanceConc!22974)

(assert (=> d!1068619 (= (list!14153 lt!1256860) (originalCharacters!6425 (_1!22207 lt!1256725)))))

(assert (=> d!1068619 (= lt!1256860 (dynLambda!16607 (toChars!7862 (transformation!5711 (rule!8483 (_1!22207 lt!1256725)))) (value!183225 (_1!22207 lt!1256725))))))

(assert (=> d!1068619 (= (charsOf!3725 (_1!22207 lt!1256725)) lt!1256860)))

(declare-fun b_lambda!107599 () Bool)

(assert (=> (not b_lambda!107599) (not d!1068619)))

(declare-fun t!295502 () Bool)

(declare-fun tb!208853 () Bool)

(assert (=> (and b!3632974 (= (toChars!7862 (transformation!5711 (rule!8483 token!511))) (toChars!7862 (transformation!5711 (rule!8483 (_1!22207 lt!1256725))))) t!295502) tb!208853))

(declare-fun b!3633316 () Bool)

(declare-fun e!2249023 () Bool)

(declare-fun tp!1109042 () Bool)

(assert (=> b!3633316 (= e!2249023 (and (inv!51706 (c!628438 (dynLambda!16607 (toChars!7862 (transformation!5711 (rule!8483 (_1!22207 lt!1256725)))) (value!183225 (_1!22207 lt!1256725))))) tp!1109042))))

(declare-fun result!254420 () Bool)

(assert (=> tb!208853 (= result!254420 (and (inv!51707 (dynLambda!16607 (toChars!7862 (transformation!5711 (rule!8483 (_1!22207 lt!1256725)))) (value!183225 (_1!22207 lt!1256725)))) e!2249023))))

(assert (= tb!208853 b!3633316))

(declare-fun m!4135185 () Bool)

(assert (=> b!3633316 m!4135185))

(declare-fun m!4135187 () Bool)

(assert (=> tb!208853 m!4135187))

(assert (=> d!1068619 t!295502))

(declare-fun b_and!266923 () Bool)

(assert (= b_and!266907 (and (=> t!295502 result!254420) b_and!266923)))

(declare-fun t!295504 () Bool)

(declare-fun tb!208855 () Bool)

(assert (=> (and b!3632979 (= (toChars!7862 (transformation!5711 anOtherTypeRule!33)) (toChars!7862 (transformation!5711 (rule!8483 (_1!22207 lt!1256725))))) t!295504) tb!208855))

(declare-fun result!254422 () Bool)

(assert (= result!254422 result!254420))

(assert (=> d!1068619 t!295504))

(declare-fun b_and!266925 () Bool)

(assert (= b_and!266909 (and (=> t!295504 result!254422) b_and!266925)))

(declare-fun tb!208857 () Bool)

(declare-fun t!295506 () Bool)

(assert (=> (and b!3632982 (= (toChars!7862 (transformation!5711 (h!43698 rules!3307))) (toChars!7862 (transformation!5711 (rule!8483 (_1!22207 lt!1256725))))) t!295506) tb!208857))

(declare-fun result!254424 () Bool)

(assert (= result!254424 result!254420))

(assert (=> d!1068619 t!295506))

(declare-fun b_and!266927 () Bool)

(assert (= b_and!266911 (and (=> t!295506 result!254424) b_and!266927)))

(declare-fun t!295508 () Bool)

(declare-fun tb!208859 () Bool)

(assert (=> (and b!3633002 (= (toChars!7862 (transformation!5711 rule!403)) (toChars!7862 (transformation!5711 (rule!8483 (_1!22207 lt!1256725))))) t!295508) tb!208859))

(declare-fun result!254426 () Bool)

(assert (= result!254426 result!254420))

(assert (=> d!1068619 t!295508))

(declare-fun b_and!266929 () Bool)

(assert (= b_and!266913 (and (=> t!295508 result!254426) b_and!266929)))

(declare-fun m!4135189 () Bool)

(assert (=> d!1068619 m!4135189))

(declare-fun m!4135191 () Bool)

(assert (=> d!1068619 m!4135191))

(assert (=> b!3633005 d!1068619))

(declare-fun b!3633318 () Bool)

(declare-fun e!2249025 () List!38401)

(assert (=> b!3633318 (= e!2249025 (Cons!38277 (h!43697 lt!1256716) (++!9527 (t!295464 lt!1256716) (_2!22207 lt!1256725))))))

(declare-fun b!3633317 () Bool)

(assert (=> b!3633317 (= e!2249025 (_2!22207 lt!1256725))))

(declare-fun d!1068621 () Bool)

(declare-fun e!2249024 () Bool)

(assert (=> d!1068621 e!2249024))

(declare-fun res!1471598 () Bool)

(assert (=> d!1068621 (=> (not res!1471598) (not e!2249024))))

(declare-fun lt!1256861 () List!38401)

(assert (=> d!1068621 (= res!1471598 (= (content!5492 lt!1256861) (set.union (content!5492 lt!1256716) (content!5492 (_2!22207 lt!1256725)))))))

(assert (=> d!1068621 (= lt!1256861 e!2249025)))

(declare-fun c!628484 () Bool)

(assert (=> d!1068621 (= c!628484 (is-Nil!38277 lt!1256716))))

(assert (=> d!1068621 (= (++!9527 lt!1256716 (_2!22207 lt!1256725)) lt!1256861)))

(declare-fun b!3633319 () Bool)

(declare-fun res!1471597 () Bool)

(assert (=> b!3633319 (=> (not res!1471597) (not e!2249024))))

(assert (=> b!3633319 (= res!1471597 (= (size!29210 lt!1256861) (+ (size!29210 lt!1256716) (size!29210 (_2!22207 lt!1256725)))))))

(declare-fun b!3633320 () Bool)

(assert (=> b!3633320 (= e!2249024 (or (not (= (_2!22207 lt!1256725) Nil!38277)) (= lt!1256861 lt!1256716)))))

(assert (= (and d!1068621 c!628484) b!3633317))

(assert (= (and d!1068621 (not c!628484)) b!3633318))

(assert (= (and d!1068621 res!1471598) b!3633319))

(assert (= (and b!3633319 res!1471597) b!3633320))

(declare-fun m!4135193 () Bool)

(assert (=> b!3633318 m!4135193))

(declare-fun m!4135195 () Bool)

(assert (=> d!1068621 m!4135195))

(declare-fun m!4135197 () Bool)

(assert (=> d!1068621 m!4135197))

(declare-fun m!4135199 () Bool)

(assert (=> d!1068621 m!4135199))

(declare-fun m!4135201 () Bool)

(assert (=> b!3633319 m!4135201))

(assert (=> b!3633319 m!4135167))

(declare-fun m!4135203 () Bool)

(assert (=> b!3633319 m!4135203))

(assert (=> b!3633005 d!1068621))

(declare-fun b!3633324 () Bool)

(declare-fun e!2249028 () Bool)

(assert (=> b!3633324 (= e!2249028 (>= (size!29210 lt!1256719) (size!29210 lt!1256716)))))

(declare-fun b!3633323 () Bool)

(declare-fun e!2249027 () Bool)

(assert (=> b!3633323 (= e!2249027 (isPrefix!3074 (tail!5624 lt!1256716) (tail!5624 lt!1256719)))))

(declare-fun b!3633322 () Bool)

(declare-fun res!1471601 () Bool)

(assert (=> b!3633322 (=> (not res!1471601) (not e!2249027))))

(assert (=> b!3633322 (= res!1471601 (= (head!7695 lt!1256716) (head!7695 lt!1256719)))))

(declare-fun b!3633321 () Bool)

(declare-fun e!2249026 () Bool)

(assert (=> b!3633321 (= e!2249026 e!2249027)))

(declare-fun res!1471602 () Bool)

(assert (=> b!3633321 (=> (not res!1471602) (not e!2249027))))

(assert (=> b!3633321 (= res!1471602 (not (is-Nil!38277 lt!1256719)))))

(declare-fun d!1068623 () Bool)

(assert (=> d!1068623 e!2249028))

(declare-fun res!1471599 () Bool)

(assert (=> d!1068623 (=> res!1471599 e!2249028)))

(declare-fun lt!1256862 () Bool)

(assert (=> d!1068623 (= res!1471599 (not lt!1256862))))

(assert (=> d!1068623 (= lt!1256862 e!2249026)))

(declare-fun res!1471600 () Bool)

(assert (=> d!1068623 (=> res!1471600 e!2249026)))

(assert (=> d!1068623 (= res!1471600 (is-Nil!38277 lt!1256716))))

(assert (=> d!1068623 (= (isPrefix!3074 lt!1256716 lt!1256719) lt!1256862)))

(assert (= (and d!1068623 (not res!1471600)) b!3633321))

(assert (= (and b!3633321 res!1471602) b!3633322))

(assert (= (and b!3633322 res!1471601) b!3633323))

(assert (= (and d!1068623 (not res!1471599)) b!3633324))

(assert (=> b!3633324 m!4135111))

(assert (=> b!3633324 m!4135167))

(assert (=> b!3633323 m!4135065))

(assert (=> b!3633323 m!4135113))

(assert (=> b!3633323 m!4135065))

(assert (=> b!3633323 m!4135113))

(declare-fun m!4135205 () Bool)

(assert (=> b!3633323 m!4135205))

(assert (=> b!3633322 m!4135063))

(assert (=> b!3633322 m!4135117))

(assert (=> b!3633005 d!1068623))

(declare-fun b!3633456 () Bool)

(declare-fun res!1471676 () Bool)

(declare-fun e!2249105 () Bool)

(assert (=> b!3633456 (=> (not res!1471676) (not e!2249105))))

(declare-fun lt!1256950 () Token!10788)

(assert (=> b!3633456 (= res!1471676 (matchR!5039 (regex!5711 (get!12516 (getRuleFromTag!1315 thiss!23823 rules!3307 (tag!6445 (rule!8483 lt!1256950))))) (list!14153 (charsOf!3725 lt!1256950))))))

(declare-fun b!3633458 () Bool)

(declare-fun e!2249106 () Unit!55097)

(declare-fun Unit!55103 () Unit!55097)

(assert (=> b!3633458 (= e!2249106 Unit!55103)))

(declare-fun lt!1256948 () List!38401)

(assert (=> b!3633458 (= lt!1256948 (++!9527 lt!1256732 suffix!1395))))

(declare-fun lt!1256960 () Unit!55097)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!513 (LexerInterface!5300 Rule!11222 List!38402 List!38401) Unit!55097)

(assert (=> b!3633458 (= lt!1256960 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!513 thiss!23823 (rule!8483 lt!1256950) rules!3307 lt!1256948))))

(assert (=> b!3633458 (isEmpty!22650 (maxPrefixOneRule!1972 thiss!23823 (rule!8483 lt!1256950) lt!1256948))))

(declare-fun lt!1256945 () Unit!55097)

(assert (=> b!3633458 (= lt!1256945 lt!1256960)))

(declare-fun lt!1256944 () List!38401)

(assert (=> b!3633458 (= lt!1256944 (list!14153 (charsOf!3725 lt!1256950)))))

(declare-fun lt!1256957 () Unit!55097)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!501 (LexerInterface!5300 Rule!11222 List!38401 List!38401) Unit!55097)

(assert (=> b!3633458 (= lt!1256957 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!501 thiss!23823 (rule!8483 lt!1256950) lt!1256944 (++!9527 lt!1256732 suffix!1395)))))

(assert (=> b!3633458 (not (matchR!5039 (regex!5711 (rule!8483 lt!1256950)) lt!1256944))))

(declare-fun lt!1256946 () Unit!55097)

(assert (=> b!3633458 (= lt!1256946 lt!1256957)))

(assert (=> b!3633458 false))

(declare-fun b!3633459 () Bool)

(declare-fun Unit!55105 () Unit!55097)

(assert (=> b!3633459 (= e!2249106 Unit!55105)))

(declare-fun b!3633457 () Bool)

(assert (=> b!3633457 (= e!2249105 (= (rule!8483 lt!1256950) (get!12516 (getRuleFromTag!1315 thiss!23823 rules!3307 (tag!6445 (rule!8483 lt!1256950))))))))

(declare-fun d!1068625 () Bool)

(assert (=> d!1068625 (isDefined!6282 (maxPrefix!2834 thiss!23823 rules!3307 (++!9527 lt!1256732 suffix!1395)))))

(declare-fun lt!1256953 () Unit!55097)

(assert (=> d!1068625 (= lt!1256953 e!2249106)))

(declare-fun c!628506 () Bool)

(assert (=> d!1068625 (= c!628506 (isEmpty!22650 (maxPrefix!2834 thiss!23823 rules!3307 (++!9527 lt!1256732 suffix!1395))))))

(declare-fun lt!1256949 () Unit!55097)

(declare-fun lt!1256955 () Unit!55097)

(assert (=> d!1068625 (= lt!1256949 lt!1256955)))

(assert (=> d!1068625 e!2249105))

(declare-fun res!1471677 () Bool)

(assert (=> d!1068625 (=> (not res!1471677) (not e!2249105))))

(assert (=> d!1068625 (= res!1471677 (isDefined!6283 (getRuleFromTag!1315 thiss!23823 rules!3307 (tag!6445 (rule!8483 lt!1256950)))))))

(assert (=> d!1068625 (= lt!1256955 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1315 thiss!23823 rules!3307 lt!1256732 lt!1256950))))

(declare-fun lt!1256954 () Unit!55097)

(declare-fun lt!1256952 () Unit!55097)

(assert (=> d!1068625 (= lt!1256954 lt!1256952)))

(declare-fun lt!1256947 () List!38401)

(assert (=> d!1068625 (isPrefix!3074 lt!1256947 (++!9527 lt!1256732 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!477 (List!38401 List!38401 List!38401) Unit!55097)

(assert (=> d!1068625 (= lt!1256952 (lemmaPrefixStaysPrefixWhenAddingToSuffix!477 lt!1256947 lt!1256732 suffix!1395))))

(assert (=> d!1068625 (= lt!1256947 (list!14153 (charsOf!3725 lt!1256950)))))

(declare-fun lt!1256959 () Unit!55097)

(declare-fun lt!1256958 () Unit!55097)

(assert (=> d!1068625 (= lt!1256959 lt!1256958)))

(declare-fun lt!1256951 () List!38401)

(declare-fun lt!1256956 () List!38401)

(assert (=> d!1068625 (isPrefix!3074 lt!1256951 (++!9527 lt!1256951 lt!1256956))))

(assert (=> d!1068625 (= lt!1256958 (lemmaConcatTwoListThenFirstIsPrefix!1993 lt!1256951 lt!1256956))))

(assert (=> d!1068625 (= lt!1256956 (_2!22207 (get!12517 (maxPrefix!2834 thiss!23823 rules!3307 lt!1256732))))))

(assert (=> d!1068625 (= lt!1256951 (list!14153 (charsOf!3725 lt!1256950)))))

(declare-datatypes ((List!38406 0))(
  ( (Nil!38282) (Cons!38282 (h!43702 Token!10788) (t!295569 List!38406)) )
))
(declare-fun head!7697 (List!38406) Token!10788)

(declare-datatypes ((IArray!23369 0))(
  ( (IArray!23370 (innerList!11742 List!38406)) )
))
(declare-datatypes ((Conc!11682 0))(
  ( (Node!11682 (left!29888 Conc!11682) (right!30218 Conc!11682) (csize!23594 Int) (cheight!11893 Int)) (Leaf!18149 (xs!14884 IArray!23369) (csize!23595 Int)) (Empty!11682) )
))
(declare-datatypes ((BalanceConc!22978 0))(
  ( (BalanceConc!22979 (c!628552 Conc!11682)) )
))
(declare-fun list!14156 (BalanceConc!22978) List!38406)

(declare-datatypes ((tuple2!38150 0))(
  ( (tuple2!38151 (_1!22209 BalanceConc!22978) (_2!22209 BalanceConc!22974)) )
))
(declare-fun lex!2509 (LexerInterface!5300 List!38402 BalanceConc!22974) tuple2!38150)

(assert (=> d!1068625 (= lt!1256950 (head!7697 (list!14156 (_1!22209 (lex!2509 thiss!23823 rules!3307 (seqFromList!4260 lt!1256732))))))))

(assert (=> d!1068625 (not (isEmpty!22647 rules!3307))))

(assert (=> d!1068625 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!978 thiss!23823 rules!3307 lt!1256732 suffix!1395) lt!1256953)))

(assert (= (and d!1068625 res!1471677) b!3633456))

(assert (= (and b!3633456 res!1471676) b!3633457))

(assert (= (and d!1068625 c!628506) b!3633458))

(assert (= (and d!1068625 (not c!628506)) b!3633459))

(declare-fun m!4135363 () Bool)

(assert (=> b!3633456 m!4135363))

(declare-fun m!4135365 () Bool)

(assert (=> b!3633456 m!4135365))

(declare-fun m!4135367 () Bool)

(assert (=> b!3633456 m!4135367))

(assert (=> b!3633456 m!4135363))

(assert (=> b!3633456 m!4135367))

(declare-fun m!4135369 () Bool)

(assert (=> b!3633456 m!4135369))

(assert (=> b!3633456 m!4135369))

(declare-fun m!4135371 () Bool)

(assert (=> b!3633456 m!4135371))

(declare-fun m!4135373 () Bool)

(assert (=> b!3633458 m!4135373))

(assert (=> b!3633458 m!4134789))

(assert (=> b!3633458 m!4135367))

(assert (=> b!3633458 m!4135367))

(assert (=> b!3633458 m!4135369))

(declare-fun m!4135375 () Bool)

(assert (=> b!3633458 m!4135375))

(declare-fun m!4135377 () Bool)

(assert (=> b!3633458 m!4135377))

(assert (=> b!3633458 m!4134789))

(declare-fun m!4135379 () Bool)

(assert (=> b!3633458 m!4135379))

(assert (=> b!3633458 m!4135377))

(declare-fun m!4135381 () Bool)

(assert (=> b!3633458 m!4135381))

(assert (=> b!3633457 m!4135363))

(assert (=> b!3633457 m!4135363))

(assert (=> b!3633457 m!4135365))

(assert (=> d!1068625 m!4134773))

(declare-fun m!4135383 () Bool)

(assert (=> d!1068625 m!4135383))

(assert (=> d!1068625 m!4135367))

(declare-fun m!4135385 () Bool)

(assert (=> d!1068625 m!4135385))

(declare-fun m!4135387 () Bool)

(assert (=> d!1068625 m!4135387))

(declare-fun m!4135389 () Bool)

(assert (=> d!1068625 m!4135389))

(declare-fun m!4135391 () Bool)

(assert (=> d!1068625 m!4135391))

(assert (=> d!1068625 m!4135363))

(assert (=> d!1068625 m!4134773))

(declare-fun m!4135393 () Bool)

(assert (=> d!1068625 m!4135393))

(assert (=> d!1068625 m!4134789))

(declare-fun m!4135395 () Bool)

(assert (=> d!1068625 m!4135395))

(assert (=> d!1068625 m!4134765))

(declare-fun m!4135397 () Bool)

(assert (=> d!1068625 m!4135397))

(assert (=> d!1068625 m!4135389))

(declare-fun m!4135399 () Bool)

(assert (=> d!1068625 m!4135399))

(declare-fun m!4135401 () Bool)

(assert (=> d!1068625 m!4135401))

(declare-fun m!4135403 () Bool)

(assert (=> d!1068625 m!4135403))

(assert (=> d!1068625 m!4134789))

(assert (=> d!1068625 m!4135383))

(declare-fun m!4135405 () Bool)

(assert (=> d!1068625 m!4135405))

(assert (=> d!1068625 m!4135367))

(assert (=> d!1068625 m!4135369))

(declare-fun m!4135407 () Bool)

(assert (=> d!1068625 m!4135407))

(assert (=> d!1068625 m!4135401))

(assert (=> d!1068625 m!4135385))

(assert (=> d!1068625 m!4135363))

(declare-fun m!4135409 () Bool)

(assert (=> d!1068625 m!4135409))

(assert (=> d!1068625 m!4134789))

(assert (=> d!1068625 m!4135389))

(declare-fun m!4135411 () Bool)

(assert (=> d!1068625 m!4135411))

(assert (=> b!3633005 d!1068625))

(declare-fun d!1068667 () Bool)

(assert (=> d!1068667 (= (inv!51699 (tag!6445 rule!403)) (= (mod (str.len (value!183224 (tag!6445 rule!403))) 2) 0))))

(assert (=> b!3632999 d!1068667))

(declare-fun d!1068669 () Bool)

(declare-fun res!1471678 () Bool)

(declare-fun e!2249107 () Bool)

(assert (=> d!1068669 (=> (not res!1471678) (not e!2249107))))

(assert (=> d!1068669 (= res!1471678 (semiInverseModEq!2426 (toChars!7862 (transformation!5711 rule!403)) (toValue!8003 (transformation!5711 rule!403))))))

(assert (=> d!1068669 (= (inv!51703 (transformation!5711 rule!403)) e!2249107)))

(declare-fun b!3633460 () Bool)

(assert (=> b!3633460 (= e!2249107 (equivClasses!2325 (toChars!7862 (transformation!5711 rule!403)) (toValue!8003 (transformation!5711 rule!403))))))

(assert (= (and d!1068669 res!1471678) b!3633460))

(declare-fun m!4135413 () Bool)

(assert (=> d!1068669 m!4135413))

(declare-fun m!4135415 () Bool)

(assert (=> b!3633460 m!4135415))

(assert (=> b!3632999 d!1068669))

(declare-fun d!1068671 () Bool)

(declare-fun res!1471683 () Bool)

(declare-fun e!2249110 () Bool)

(assert (=> d!1068671 (=> (not res!1471683) (not e!2249110))))

(assert (=> d!1068671 (= res!1471683 (not (isEmpty!22646 (originalCharacters!6425 token!511))))))

(assert (=> d!1068671 (= (inv!51702 token!511) e!2249110)))

(declare-fun b!3633465 () Bool)

(declare-fun res!1471684 () Bool)

(assert (=> b!3633465 (=> (not res!1471684) (not e!2249110))))

(assert (=> b!3633465 (= res!1471684 (= (originalCharacters!6425 token!511) (list!14153 (dynLambda!16607 (toChars!7862 (transformation!5711 (rule!8483 token!511))) (value!183225 token!511)))))))

(declare-fun b!3633466 () Bool)

(assert (=> b!3633466 (= e!2249110 (= (size!29206 token!511) (size!29210 (originalCharacters!6425 token!511))))))

(assert (= (and d!1068671 res!1471683) b!3633465))

(assert (= (and b!3633465 res!1471684) b!3633466))

(declare-fun b_lambda!107611 () Bool)

(assert (=> (not b_lambda!107611) (not b!3633465)))

(declare-fun t!295534 () Bool)

(declare-fun tb!208885 () Bool)

(assert (=> (and b!3632974 (= (toChars!7862 (transformation!5711 (rule!8483 token!511))) (toChars!7862 (transformation!5711 (rule!8483 token!511)))) t!295534) tb!208885))

(declare-fun b!3633467 () Bool)

(declare-fun e!2249111 () Bool)

(declare-fun tp!1109047 () Bool)

(assert (=> b!3633467 (= e!2249111 (and (inv!51706 (c!628438 (dynLambda!16607 (toChars!7862 (transformation!5711 (rule!8483 token!511))) (value!183225 token!511)))) tp!1109047))))

(declare-fun result!254454 () Bool)

(assert (=> tb!208885 (= result!254454 (and (inv!51707 (dynLambda!16607 (toChars!7862 (transformation!5711 (rule!8483 token!511))) (value!183225 token!511))) e!2249111))))

(assert (= tb!208885 b!3633467))

(declare-fun m!4135417 () Bool)

(assert (=> b!3633467 m!4135417))

(declare-fun m!4135419 () Bool)

(assert (=> tb!208885 m!4135419))

(assert (=> b!3633465 t!295534))

(declare-fun b_and!266971 () Bool)

(assert (= b_and!266923 (and (=> t!295534 result!254454) b_and!266971)))

(declare-fun t!295536 () Bool)

(declare-fun tb!208887 () Bool)

(assert (=> (and b!3632979 (= (toChars!7862 (transformation!5711 anOtherTypeRule!33)) (toChars!7862 (transformation!5711 (rule!8483 token!511)))) t!295536) tb!208887))

(declare-fun result!254456 () Bool)

(assert (= result!254456 result!254454))

(assert (=> b!3633465 t!295536))

(declare-fun b_and!266973 () Bool)

(assert (= b_and!266925 (and (=> t!295536 result!254456) b_and!266973)))

(declare-fun t!295538 () Bool)

(declare-fun tb!208889 () Bool)

(assert (=> (and b!3632982 (= (toChars!7862 (transformation!5711 (h!43698 rules!3307))) (toChars!7862 (transformation!5711 (rule!8483 token!511)))) t!295538) tb!208889))

(declare-fun result!254458 () Bool)

(assert (= result!254458 result!254454))

(assert (=> b!3633465 t!295538))

(declare-fun b_and!266975 () Bool)

(assert (= b_and!266927 (and (=> t!295538 result!254458) b_and!266975)))

(declare-fun tb!208891 () Bool)

(declare-fun t!295540 () Bool)

(assert (=> (and b!3633002 (= (toChars!7862 (transformation!5711 rule!403)) (toChars!7862 (transformation!5711 (rule!8483 token!511)))) t!295540) tb!208891))

(declare-fun result!254460 () Bool)

(assert (= result!254460 result!254454))

(assert (=> b!3633465 t!295540))

(declare-fun b_and!266977 () Bool)

(assert (= b_and!266929 (and (=> t!295540 result!254460) b_and!266977)))

(declare-fun m!4135421 () Bool)

(assert (=> d!1068671 m!4135421))

(declare-fun m!4135423 () Bool)

(assert (=> b!3633465 m!4135423))

(assert (=> b!3633465 m!4135423))

(declare-fun m!4135425 () Bool)

(assert (=> b!3633465 m!4135425))

(declare-fun m!4135427 () Bool)

(assert (=> b!3633466 m!4135427))

(assert (=> start!338824 d!1068671))

(declare-fun d!1068673 () Bool)

(assert (=> d!1068673 (= (inv!51699 (tag!6445 (rule!8483 token!511))) (= (mod (str.len (value!183224 (tag!6445 (rule!8483 token!511)))) 2) 0))))

(assert (=> b!3632998 d!1068673))

(declare-fun d!1068675 () Bool)

(declare-fun res!1471685 () Bool)

(declare-fun e!2249112 () Bool)

(assert (=> d!1068675 (=> (not res!1471685) (not e!2249112))))

(assert (=> d!1068675 (= res!1471685 (semiInverseModEq!2426 (toChars!7862 (transformation!5711 (rule!8483 token!511))) (toValue!8003 (transformation!5711 (rule!8483 token!511)))))))

(assert (=> d!1068675 (= (inv!51703 (transformation!5711 (rule!8483 token!511))) e!2249112)))

(declare-fun b!3633468 () Bool)

(assert (=> b!3633468 (= e!2249112 (equivClasses!2325 (toChars!7862 (transformation!5711 (rule!8483 token!511))) (toValue!8003 (transformation!5711 (rule!8483 token!511)))))))

(assert (= (and d!1068675 res!1471685) b!3633468))

(declare-fun m!4135429 () Bool)

(assert (=> d!1068675 m!4135429))

(declare-fun m!4135431 () Bool)

(assert (=> b!3633468 m!4135431))

(assert (=> b!3632998 d!1068675))

(declare-fun d!1068677 () Bool)

(declare-fun res!1471688 () Bool)

(declare-fun e!2249115 () Bool)

(assert (=> d!1068677 (=> (not res!1471688) (not e!2249115))))

(declare-fun rulesValid!2183 (LexerInterface!5300 List!38402) Bool)

(assert (=> d!1068677 (= res!1471688 (rulesValid!2183 thiss!23823 rules!3307))))

(assert (=> d!1068677 (= (rulesInvariant!4697 thiss!23823 rules!3307) e!2249115)))

(declare-fun b!3633471 () Bool)

(declare-datatypes ((List!38407 0))(
  ( (Nil!38283) (Cons!38283 (h!43703 String!43041) (t!295570 List!38407)) )
))
(declare-fun noDuplicateTag!2179 (LexerInterface!5300 List!38402 List!38407) Bool)

(assert (=> b!3633471 (= e!2249115 (noDuplicateTag!2179 thiss!23823 rules!3307 Nil!38283))))

(assert (= (and d!1068677 res!1471688) b!3633471))

(declare-fun m!4135433 () Bool)

(assert (=> d!1068677 m!4135433))

(declare-fun m!4135435 () Bool)

(assert (=> b!3633471 m!4135435))

(assert (=> b!3632977 d!1068677))

(declare-fun d!1068679 () Bool)

(assert (=> d!1068679 (= (isEmpty!22646 suffix!1395) (is-Nil!38277 suffix!1395))))

(assert (=> b!3632976 d!1068679))

(declare-fun b!3633472 () Bool)

(declare-fun e!2249121 () Bool)

(assert (=> b!3633472 (= e!2249121 (nullable!3626 (regex!5711 lt!1256728)))))

(declare-fun b!3633474 () Bool)

(declare-fun res!1471696 () Bool)

(declare-fun e!2249118 () Bool)

(assert (=> b!3633474 (=> (not res!1471696) (not e!2249118))))

(declare-fun call!262769 () Bool)

(assert (=> b!3633474 (= res!1471696 (not call!262769))))

(declare-fun b!3633475 () Bool)

(declare-fun e!2249120 () Bool)

(assert (=> b!3633475 (= e!2249120 (not (= (head!7695 (list!14153 (charsOf!3725 (_1!22207 lt!1256725)))) (c!628437 (regex!5711 lt!1256728)))))))

(declare-fun b!3633476 () Bool)

(declare-fun e!2249119 () Bool)

(assert (=> b!3633476 (= e!2249119 e!2249120)))

(declare-fun res!1471689 () Bool)

(assert (=> b!3633476 (=> res!1471689 e!2249120)))

(assert (=> b!3633476 (= res!1471689 call!262769)))

(declare-fun b!3633477 () Bool)

(declare-fun e!2249116 () Bool)

(assert (=> b!3633477 (= e!2249116 e!2249119)))

(declare-fun res!1471695 () Bool)

(assert (=> b!3633477 (=> (not res!1471695) (not e!2249119))))

(declare-fun lt!1256961 () Bool)

(assert (=> b!3633477 (= res!1471695 (not lt!1256961))))

(declare-fun b!3633478 () Bool)

(declare-fun e!2249117 () Bool)

(assert (=> b!3633478 (= e!2249117 (not lt!1256961))))

(declare-fun b!3633479 () Bool)

(declare-fun res!1471692 () Bool)

(assert (=> b!3633479 (=> res!1471692 e!2249116)))

(assert (=> b!3633479 (= res!1471692 e!2249118)))

(declare-fun res!1471693 () Bool)

(assert (=> b!3633479 (=> (not res!1471693) (not e!2249118))))

(assert (=> b!3633479 (= res!1471693 lt!1256961)))

(declare-fun b!3633480 () Bool)

(declare-fun res!1471690 () Bool)

(assert (=> b!3633480 (=> res!1471690 e!2249116)))

(assert (=> b!3633480 (= res!1471690 (not (is-ElementMatch!10470 (regex!5711 lt!1256728))))))

(assert (=> b!3633480 (= e!2249117 e!2249116)))

(declare-fun b!3633481 () Bool)

(assert (=> b!3633481 (= e!2249121 (matchR!5039 (derivativeStep!3175 (regex!5711 lt!1256728) (head!7695 (list!14153 (charsOf!3725 (_1!22207 lt!1256725))))) (tail!5624 (list!14153 (charsOf!3725 (_1!22207 lt!1256725))))))))

(declare-fun b!3633482 () Bool)

(declare-fun res!1471694 () Bool)

(assert (=> b!3633482 (=> res!1471694 e!2249120)))

(assert (=> b!3633482 (= res!1471694 (not (isEmpty!22646 (tail!5624 (list!14153 (charsOf!3725 (_1!22207 lt!1256725)))))))))

(declare-fun b!3633483 () Bool)

(declare-fun res!1471691 () Bool)

(assert (=> b!3633483 (=> (not res!1471691) (not e!2249118))))

(assert (=> b!3633483 (= res!1471691 (isEmpty!22646 (tail!5624 (list!14153 (charsOf!3725 (_1!22207 lt!1256725))))))))

(declare-fun d!1068681 () Bool)

(declare-fun e!2249122 () Bool)

(assert (=> d!1068681 e!2249122))

(declare-fun c!628509 () Bool)

(assert (=> d!1068681 (= c!628509 (is-EmptyExpr!10470 (regex!5711 lt!1256728)))))

(assert (=> d!1068681 (= lt!1256961 e!2249121)))

(declare-fun c!628507 () Bool)

(assert (=> d!1068681 (= c!628507 (isEmpty!22646 (list!14153 (charsOf!3725 (_1!22207 lt!1256725)))))))

(assert (=> d!1068681 (validRegex!4788 (regex!5711 lt!1256728))))

(assert (=> d!1068681 (= (matchR!5039 (regex!5711 lt!1256728) (list!14153 (charsOf!3725 (_1!22207 lt!1256725)))) lt!1256961)))

(declare-fun b!3633473 () Bool)

(assert (=> b!3633473 (= e!2249122 (= lt!1256961 call!262769))))

(declare-fun bm!262764 () Bool)

(assert (=> bm!262764 (= call!262769 (isEmpty!22646 (list!14153 (charsOf!3725 (_1!22207 lt!1256725)))))))

(declare-fun b!3633484 () Bool)

(assert (=> b!3633484 (= e!2249122 e!2249117)))

(declare-fun c!628508 () Bool)

(assert (=> b!3633484 (= c!628508 (is-EmptyLang!10470 (regex!5711 lt!1256728)))))

(declare-fun b!3633485 () Bool)

(assert (=> b!3633485 (= e!2249118 (= (head!7695 (list!14153 (charsOf!3725 (_1!22207 lt!1256725)))) (c!628437 (regex!5711 lt!1256728))))))

(assert (= (and d!1068681 c!628507) b!3633472))

(assert (= (and d!1068681 (not c!628507)) b!3633481))

(assert (= (and d!1068681 c!628509) b!3633473))

(assert (= (and d!1068681 (not c!628509)) b!3633484))

(assert (= (and b!3633484 c!628508) b!3633478))

(assert (= (and b!3633484 (not c!628508)) b!3633480))

(assert (= (and b!3633480 (not res!1471690)) b!3633479))

(assert (= (and b!3633479 res!1471693) b!3633474))

(assert (= (and b!3633474 res!1471696) b!3633483))

(assert (= (and b!3633483 res!1471691) b!3633485))

(assert (= (and b!3633479 (not res!1471692)) b!3633477))

(assert (= (and b!3633477 res!1471695) b!3633476))

(assert (= (and b!3633476 (not res!1471689)) b!3633482))

(assert (= (and b!3633482 (not res!1471694)) b!3633475))

(assert (= (or b!3633473 b!3633474 b!3633476) bm!262764))

(declare-fun m!4135437 () Bool)

(assert (=> b!3633472 m!4135437))

(assert (=> d!1068681 m!4134781))

(declare-fun m!4135439 () Bool)

(assert (=> d!1068681 m!4135439))

(declare-fun m!4135441 () Bool)

(assert (=> d!1068681 m!4135441))

(assert (=> bm!262764 m!4134781))

(assert (=> bm!262764 m!4135439))

(assert (=> b!3633485 m!4134781))

(declare-fun m!4135443 () Bool)

(assert (=> b!3633485 m!4135443))

(assert (=> b!3633483 m!4134781))

(declare-fun m!4135445 () Bool)

(assert (=> b!3633483 m!4135445))

(assert (=> b!3633483 m!4135445))

(declare-fun m!4135447 () Bool)

(assert (=> b!3633483 m!4135447))

(assert (=> b!3633481 m!4134781))

(assert (=> b!3633481 m!4135443))

(assert (=> b!3633481 m!4135443))

(declare-fun m!4135449 () Bool)

(assert (=> b!3633481 m!4135449))

(assert (=> b!3633481 m!4134781))

(assert (=> b!3633481 m!4135445))

(assert (=> b!3633481 m!4135449))

(assert (=> b!3633481 m!4135445))

(declare-fun m!4135451 () Bool)

(assert (=> b!3633481 m!4135451))

(assert (=> b!3633482 m!4134781))

(assert (=> b!3633482 m!4135445))

(assert (=> b!3633482 m!4135445))

(assert (=> b!3633482 m!4135447))

(assert (=> b!3633475 m!4134781))

(assert (=> b!3633475 m!4135443))

(assert (=> b!3632980 d!1068681))

(declare-fun d!1068683 () Bool)

(assert (=> d!1068683 (= (list!14153 (charsOf!3725 (_1!22207 lt!1256725))) (list!14155 (c!628438 (charsOf!3725 (_1!22207 lt!1256725)))))))

(declare-fun bs!571733 () Bool)

(assert (= bs!571733 d!1068683))

(declare-fun m!4135453 () Bool)

(assert (=> bs!571733 m!4135453))

(assert (=> b!3632980 d!1068683))

(assert (=> b!3632980 d!1068619))

(declare-fun d!1068685 () Bool)

(assert (=> d!1068685 (= (get!12516 lt!1256734) (v!37850 lt!1256734))))

(assert (=> b!3632980 d!1068685))

(declare-fun d!1068687 () Bool)

(declare-fun lt!1256964 () Bool)

(declare-fun content!5494 (List!38402) (Set Rule!11222))

(assert (=> d!1068687 (= lt!1256964 (set.member rule!403 (content!5494 rules!3307)))))

(declare-fun e!2249128 () Bool)

(assert (=> d!1068687 (= lt!1256964 e!2249128)))

(declare-fun res!1471701 () Bool)

(assert (=> d!1068687 (=> (not res!1471701) (not e!2249128))))

(assert (=> d!1068687 (= res!1471701 (is-Cons!38278 rules!3307))))

(assert (=> d!1068687 (= (contains!7487 rules!3307 rule!403) lt!1256964)))

(declare-fun b!3633490 () Bool)

(declare-fun e!2249127 () Bool)

(assert (=> b!3633490 (= e!2249128 e!2249127)))

(declare-fun res!1471702 () Bool)

(assert (=> b!3633490 (=> res!1471702 e!2249127)))

(assert (=> b!3633490 (= res!1471702 (= (h!43698 rules!3307) rule!403))))

(declare-fun b!3633491 () Bool)

(assert (=> b!3633491 (= e!2249127 (contains!7487 (t!295465 rules!3307) rule!403))))

(assert (= (and d!1068687 res!1471701) b!3633490))

(assert (= (and b!3633490 (not res!1471702)) b!3633491))

(declare-fun m!4135455 () Bool)

(assert (=> d!1068687 m!4135455))

(declare-fun m!4135457 () Bool)

(assert (=> d!1068687 m!4135457))

(declare-fun m!4135459 () Bool)

(assert (=> b!3633491 m!4135459))

(assert (=> b!3633001 d!1068687))

(declare-fun b!3633502 () Bool)

(declare-fun e!2249136 () Bool)

(declare-fun e!2249135 () Bool)

(assert (=> b!3633502 (= e!2249136 e!2249135)))

(declare-fun c!628515 () Bool)

(assert (=> b!3633502 (= c!628515 (is-IntegerValue!17824 (value!183225 token!511)))))

(declare-fun b!3633503 () Bool)

(declare-fun inv!16 (TokenValue!5941) Bool)

(assert (=> b!3633503 (= e!2249136 (inv!16 (value!183225 token!511)))))

(declare-fun b!3633504 () Bool)

(declare-fun e!2249137 () Bool)

(declare-fun inv!15 (TokenValue!5941) Bool)

(assert (=> b!3633504 (= e!2249137 (inv!15 (value!183225 token!511)))))

(declare-fun d!1068689 () Bool)

(declare-fun c!628514 () Bool)

(assert (=> d!1068689 (= c!628514 (is-IntegerValue!17823 (value!183225 token!511)))))

(assert (=> d!1068689 (= (inv!21 (value!183225 token!511)) e!2249136)))

(declare-fun b!3633505 () Bool)

(declare-fun inv!17 (TokenValue!5941) Bool)

(assert (=> b!3633505 (= e!2249135 (inv!17 (value!183225 token!511)))))

(declare-fun b!3633506 () Bool)

(declare-fun res!1471705 () Bool)

(assert (=> b!3633506 (=> res!1471705 e!2249137)))

(assert (=> b!3633506 (= res!1471705 (not (is-IntegerValue!17825 (value!183225 token!511))))))

(assert (=> b!3633506 (= e!2249135 e!2249137)))

(assert (= (and d!1068689 c!628514) b!3633503))

(assert (= (and d!1068689 (not c!628514)) b!3633502))

(assert (= (and b!3633502 c!628515) b!3633505))

(assert (= (and b!3633502 (not c!628515)) b!3633506))

(assert (= (and b!3633506 (not res!1471705)) b!3633504))

(declare-fun m!4135461 () Bool)

(assert (=> b!3633503 m!4135461))

(declare-fun m!4135463 () Bool)

(assert (=> b!3633504 m!4135463))

(declare-fun m!4135465 () Bool)

(assert (=> b!3633505 m!4135465))

(assert (=> b!3633000 d!1068689))

(declare-fun d!1068691 () Bool)

(declare-fun lt!1256965 () Bool)

(assert (=> d!1068691 (= lt!1256965 (set.member anOtherTypeRule!33 (content!5494 rules!3307)))))

(declare-fun e!2249139 () Bool)

(assert (=> d!1068691 (= lt!1256965 e!2249139)))

(declare-fun res!1471706 () Bool)

(assert (=> d!1068691 (=> (not res!1471706) (not e!2249139))))

(assert (=> d!1068691 (= res!1471706 (is-Cons!38278 rules!3307))))

(assert (=> d!1068691 (= (contains!7487 rules!3307 anOtherTypeRule!33) lt!1256965)))

(declare-fun b!3633507 () Bool)

(declare-fun e!2249138 () Bool)

(assert (=> b!3633507 (= e!2249139 e!2249138)))

(declare-fun res!1471707 () Bool)

(assert (=> b!3633507 (=> res!1471707 e!2249138)))

(assert (=> b!3633507 (= res!1471707 (= (h!43698 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3633508 () Bool)

(assert (=> b!3633508 (= e!2249138 (contains!7487 (t!295465 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1068691 res!1471706) b!3633507))

(assert (= (and b!3633507 (not res!1471707)) b!3633508))

(assert (=> d!1068691 m!4135455))

(declare-fun m!4135467 () Bool)

(assert (=> d!1068691 m!4135467))

(declare-fun m!4135469 () Bool)

(assert (=> b!3633508 m!4135469))

(assert (=> b!3632978 d!1068691))

(declare-fun d!1068693 () Bool)

(assert (=> d!1068693 (= (isEmpty!22646 lt!1256716) (is-Nil!38277 lt!1256716))))

(assert (=> b!3632993 d!1068693))

(declare-fun d!1068695 () Bool)

(assert (=> d!1068695 (= (isEmpty!22646 (_2!22207 lt!1256715)) (is-Nil!38277 (_2!22207 lt!1256715)))))

(assert (=> b!3632992 d!1068695))

(declare-fun d!1068697 () Bool)

(assert (=> d!1068697 (= (get!12517 lt!1256731) (v!37849 lt!1256731))))

(assert (=> b!3632996 d!1068697))

(declare-fun d!1068699 () Bool)

(assert (=> d!1068699 (= (isDefined!6282 lt!1256731) (not (isEmpty!22650 lt!1256731)))))

(declare-fun bs!571734 () Bool)

(assert (= bs!571734 d!1068699))

(declare-fun m!4135471 () Bool)

(assert (=> bs!571734 m!4135471))

(assert (=> b!3632975 d!1068699))

(declare-fun b!3633509 () Bool)

(declare-fun e!2249142 () Option!8050)

(declare-fun call!262770 () Option!8050)

(assert (=> b!3633509 (= e!2249142 call!262770)))

(declare-fun bm!262765 () Bool)

(assert (=> bm!262765 (= call!262770 (maxPrefixOneRule!1972 thiss!23823 (h!43698 rules!3307) lt!1256732))))

(declare-fun b!3633510 () Bool)

(declare-fun res!1471708 () Bool)

(declare-fun e!2249141 () Bool)

(assert (=> b!3633510 (=> (not res!1471708) (not e!2249141))))

(declare-fun lt!1256966 () Option!8050)

(assert (=> b!3633510 (= res!1471708 (= (list!14153 (charsOf!3725 (_1!22207 (get!12517 lt!1256966)))) (originalCharacters!6425 (_1!22207 (get!12517 lt!1256966)))))))

(declare-fun b!3633511 () Bool)

(declare-fun e!2249140 () Bool)

(assert (=> b!3633511 (= e!2249140 e!2249141)))

(declare-fun res!1471710 () Bool)

(assert (=> b!3633511 (=> (not res!1471710) (not e!2249141))))

(assert (=> b!3633511 (= res!1471710 (isDefined!6282 lt!1256966))))

(declare-fun b!3633512 () Bool)

(declare-fun res!1471712 () Bool)

(assert (=> b!3633512 (=> (not res!1471712) (not e!2249141))))

(assert (=> b!3633512 (= res!1471712 (matchR!5039 (regex!5711 (rule!8483 (_1!22207 (get!12517 lt!1256966)))) (list!14153 (charsOf!3725 (_1!22207 (get!12517 lt!1256966))))))))

(declare-fun b!3633513 () Bool)

(declare-fun res!1471709 () Bool)

(assert (=> b!3633513 (=> (not res!1471709) (not e!2249141))))

(assert (=> b!3633513 (= res!1471709 (= (++!9527 (list!14153 (charsOf!3725 (_1!22207 (get!12517 lt!1256966)))) (_2!22207 (get!12517 lt!1256966))) lt!1256732))))

(declare-fun d!1068701 () Bool)

(assert (=> d!1068701 e!2249140))

(declare-fun res!1471714 () Bool)

(assert (=> d!1068701 (=> res!1471714 e!2249140)))

(assert (=> d!1068701 (= res!1471714 (isEmpty!22650 lt!1256966))))

(assert (=> d!1068701 (= lt!1256966 e!2249142)))

(declare-fun c!628516 () Bool)

(assert (=> d!1068701 (= c!628516 (and (is-Cons!38278 rules!3307) (is-Nil!38278 (t!295465 rules!3307))))))

(declare-fun lt!1256969 () Unit!55097)

(declare-fun lt!1256970 () Unit!55097)

(assert (=> d!1068701 (= lt!1256969 lt!1256970)))

(assert (=> d!1068701 (isPrefix!3074 lt!1256732 lt!1256732)))

(assert (=> d!1068701 (= lt!1256970 (lemmaIsPrefixRefl!1947 lt!1256732 lt!1256732))))

(assert (=> d!1068701 (rulesValidInductive!2012 thiss!23823 rules!3307)))

(assert (=> d!1068701 (= (maxPrefix!2834 thiss!23823 rules!3307 lt!1256732) lt!1256966)))

(declare-fun b!3633514 () Bool)

(declare-fun res!1471711 () Bool)

(assert (=> b!3633514 (=> (not res!1471711) (not e!2249141))))

(assert (=> b!3633514 (= res!1471711 (= (value!183225 (_1!22207 (get!12517 lt!1256966))) (apply!9213 (transformation!5711 (rule!8483 (_1!22207 (get!12517 lt!1256966)))) (seqFromList!4260 (originalCharacters!6425 (_1!22207 (get!12517 lt!1256966)))))))))

(declare-fun b!3633515 () Bool)

(declare-fun res!1471713 () Bool)

(assert (=> b!3633515 (=> (not res!1471713) (not e!2249141))))

(assert (=> b!3633515 (= res!1471713 (< (size!29210 (_2!22207 (get!12517 lt!1256966))) (size!29210 lt!1256732)))))

(declare-fun b!3633516 () Bool)

(assert (=> b!3633516 (= e!2249141 (contains!7487 rules!3307 (rule!8483 (_1!22207 (get!12517 lt!1256966)))))))

(declare-fun b!3633517 () Bool)

(declare-fun lt!1256968 () Option!8050)

(declare-fun lt!1256967 () Option!8050)

(assert (=> b!3633517 (= e!2249142 (ite (and (is-None!8049 lt!1256968) (is-None!8049 lt!1256967)) None!8049 (ite (is-None!8049 lt!1256967) lt!1256968 (ite (is-None!8049 lt!1256968) lt!1256967 (ite (>= (size!29206 (_1!22207 (v!37849 lt!1256968))) (size!29206 (_1!22207 (v!37849 lt!1256967)))) lt!1256968 lt!1256967)))))))

(assert (=> b!3633517 (= lt!1256968 call!262770)))

(assert (=> b!3633517 (= lt!1256967 (maxPrefix!2834 thiss!23823 (t!295465 rules!3307) lt!1256732))))

(assert (= (and d!1068701 c!628516) b!3633509))

(assert (= (and d!1068701 (not c!628516)) b!3633517))

(assert (= (or b!3633509 b!3633517) bm!262765))

(assert (= (and d!1068701 (not res!1471714)) b!3633511))

(assert (= (and b!3633511 res!1471710) b!3633510))

(assert (= (and b!3633510 res!1471708) b!3633515))

(assert (= (and b!3633515 res!1471713) b!3633513))

(assert (= (and b!3633513 res!1471709) b!3633514))

(assert (= (and b!3633514 res!1471711) b!3633512))

(assert (= (and b!3633512 res!1471712) b!3633516))

(declare-fun m!4135473 () Bool)

(assert (=> b!3633514 m!4135473))

(declare-fun m!4135475 () Bool)

(assert (=> b!3633514 m!4135475))

(assert (=> b!3633514 m!4135475))

(declare-fun m!4135477 () Bool)

(assert (=> b!3633514 m!4135477))

(assert (=> b!3633513 m!4135473))

(declare-fun m!4135479 () Bool)

(assert (=> b!3633513 m!4135479))

(assert (=> b!3633513 m!4135479))

(declare-fun m!4135481 () Bool)

(assert (=> b!3633513 m!4135481))

(assert (=> b!3633513 m!4135481))

(declare-fun m!4135483 () Bool)

(assert (=> b!3633513 m!4135483))

(declare-fun m!4135485 () Bool)

(assert (=> d!1068701 m!4135485))

(declare-fun m!4135487 () Bool)

(assert (=> d!1068701 m!4135487))

(declare-fun m!4135489 () Bool)

(assert (=> d!1068701 m!4135489))

(assert (=> d!1068701 m!4135137))

(assert (=> b!3633515 m!4135473))

(declare-fun m!4135491 () Bool)

(assert (=> b!3633515 m!4135491))

(assert (=> b!3633515 m!4135107))

(assert (=> b!3633512 m!4135473))

(assert (=> b!3633512 m!4135479))

(assert (=> b!3633512 m!4135479))

(assert (=> b!3633512 m!4135481))

(assert (=> b!3633512 m!4135481))

(declare-fun m!4135493 () Bool)

(assert (=> b!3633512 m!4135493))

(declare-fun m!4135495 () Bool)

(assert (=> bm!262765 m!4135495))

(declare-fun m!4135497 () Bool)

(assert (=> b!3633511 m!4135497))

(assert (=> b!3633516 m!4135473))

(declare-fun m!4135499 () Bool)

(assert (=> b!3633516 m!4135499))

(declare-fun m!4135501 () Bool)

(assert (=> b!3633517 m!4135501))

(assert (=> b!3633510 m!4135473))

(assert (=> b!3633510 m!4135479))

(assert (=> b!3633510 m!4135479))

(assert (=> b!3633510 m!4135481))

(assert (=> b!3632975 d!1068701))

(declare-fun d!1068703 () Bool)

(assert (=> d!1068703 (= (list!14153 (charsOf!3725 token!511)) (list!14155 (c!628438 (charsOf!3725 token!511))))))

(declare-fun bs!571735 () Bool)

(assert (= bs!571735 d!1068703))

(declare-fun m!4135503 () Bool)

(assert (=> bs!571735 m!4135503))

(assert (=> b!3632975 d!1068703))

(declare-fun d!1068705 () Bool)

(declare-fun lt!1256971 () BalanceConc!22974)

(assert (=> d!1068705 (= (list!14153 lt!1256971) (originalCharacters!6425 token!511))))

(assert (=> d!1068705 (= lt!1256971 (dynLambda!16607 (toChars!7862 (transformation!5711 (rule!8483 token!511))) (value!183225 token!511)))))

(assert (=> d!1068705 (= (charsOf!3725 token!511) lt!1256971)))

(declare-fun b_lambda!107613 () Bool)

(assert (=> (not b_lambda!107613) (not d!1068705)))

(assert (=> d!1068705 t!295534))

(declare-fun b_and!266979 () Bool)

(assert (= b_and!266971 (and (=> t!295534 result!254454) b_and!266979)))

(assert (=> d!1068705 t!295536))

(declare-fun b_and!266981 () Bool)

(assert (= b_and!266973 (and (=> t!295536 result!254456) b_and!266981)))

(assert (=> d!1068705 t!295538))

(declare-fun b_and!266983 () Bool)

(assert (= b_and!266975 (and (=> t!295538 result!254458) b_and!266983)))

(assert (=> d!1068705 t!295540))

(declare-fun b_and!266985 () Bool)

(assert (= b_and!266977 (and (=> t!295540 result!254460) b_and!266985)))

(declare-fun m!4135505 () Bool)

(assert (=> d!1068705 m!4135505))

(assert (=> d!1068705 m!4135423))

(assert (=> b!3632975 d!1068705))

(declare-fun d!1068707 () Bool)

(assert (=> d!1068707 (= (isEmpty!22647 rules!3307) (is-Nil!38278 rules!3307))))

(assert (=> b!3632995 d!1068707))

(declare-fun d!1068709 () Bool)

(assert (=> d!1068709 (= (inv!51699 (tag!6445 anOtherTypeRule!33)) (= (mod (str.len (value!183224 (tag!6445 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3632994 d!1068709))

(declare-fun d!1068711 () Bool)

(declare-fun res!1471715 () Bool)

(declare-fun e!2249143 () Bool)

(assert (=> d!1068711 (=> (not res!1471715) (not e!2249143))))

(assert (=> d!1068711 (= res!1471715 (semiInverseModEq!2426 (toChars!7862 (transformation!5711 anOtherTypeRule!33)) (toValue!8003 (transformation!5711 anOtherTypeRule!33))))))

(assert (=> d!1068711 (= (inv!51703 (transformation!5711 anOtherTypeRule!33)) e!2249143)))

(declare-fun b!3633518 () Bool)

(assert (=> b!3633518 (= e!2249143 (equivClasses!2325 (toChars!7862 (transformation!5711 anOtherTypeRule!33)) (toValue!8003 (transformation!5711 anOtherTypeRule!33))))))

(assert (= (and d!1068711 res!1471715) b!3633518))

(declare-fun m!4135507 () Bool)

(assert (=> d!1068711 m!4135507))

(declare-fun m!4135509 () Bool)

(assert (=> b!3633518 m!4135509))

(assert (=> b!3632994 d!1068711))

(declare-fun d!1068713 () Bool)

(declare-fun lt!1256972 () Bool)

(assert (=> d!1068713 (= lt!1256972 (set.member (rule!8483 (_1!22207 lt!1256725)) (content!5494 rules!3307)))))

(declare-fun e!2249145 () Bool)

(assert (=> d!1068713 (= lt!1256972 e!2249145)))

(declare-fun res!1471716 () Bool)

(assert (=> d!1068713 (=> (not res!1471716) (not e!2249145))))

(assert (=> d!1068713 (= res!1471716 (is-Cons!38278 rules!3307))))

(assert (=> d!1068713 (= (contains!7487 rules!3307 (rule!8483 (_1!22207 lt!1256725))) lt!1256972)))

(declare-fun b!3633519 () Bool)

(declare-fun e!2249144 () Bool)

(assert (=> b!3633519 (= e!2249145 e!2249144)))

(declare-fun res!1471717 () Bool)

(assert (=> b!3633519 (=> res!1471717 e!2249144)))

(assert (=> b!3633519 (= res!1471717 (= (h!43698 rules!3307) (rule!8483 (_1!22207 lt!1256725))))))

(declare-fun b!3633520 () Bool)

(assert (=> b!3633520 (= e!2249144 (contains!7487 (t!295465 rules!3307) (rule!8483 (_1!22207 lt!1256725))))))

(assert (= (and d!1068713 res!1471716) b!3633519))

(assert (= (and b!3633519 (not res!1471717)) b!3633520))

(assert (=> d!1068713 m!4135455))

(declare-fun m!4135511 () Bool)

(assert (=> d!1068713 m!4135511))

(declare-fun m!4135513 () Bool)

(assert (=> b!3633520 m!4135513))

(assert (=> b!3632973 d!1068713))

(declare-fun b!3633531 () Bool)

(declare-fun e!2249148 () Bool)

(assert (=> b!3633531 (= e!2249148 tp_is_empty!18023)))

(declare-fun b!3633532 () Bool)

(declare-fun tp!1109059 () Bool)

(declare-fun tp!1109058 () Bool)

(assert (=> b!3633532 (= e!2249148 (and tp!1109059 tp!1109058))))

(assert (=> b!3632999 (= tp!1108982 e!2249148)))

(declare-fun b!3633533 () Bool)

(declare-fun tp!1109061 () Bool)

(assert (=> b!3633533 (= e!2249148 tp!1109061)))

(declare-fun b!3633534 () Bool)

(declare-fun tp!1109062 () Bool)

(declare-fun tp!1109060 () Bool)

(assert (=> b!3633534 (= e!2249148 (and tp!1109062 tp!1109060))))

(assert (= (and b!3632999 (is-ElementMatch!10470 (regex!5711 rule!403))) b!3633531))

(assert (= (and b!3632999 (is-Concat!16412 (regex!5711 rule!403))) b!3633532))

(assert (= (and b!3632999 (is-Star!10470 (regex!5711 rule!403))) b!3633533))

(assert (= (and b!3632999 (is-Union!10470 (regex!5711 rule!403))) b!3633534))

(declare-fun b!3633535 () Bool)

(declare-fun e!2249149 () Bool)

(assert (=> b!3633535 (= e!2249149 tp_is_empty!18023)))

(declare-fun b!3633536 () Bool)

(declare-fun tp!1109064 () Bool)

(declare-fun tp!1109063 () Bool)

(assert (=> b!3633536 (= e!2249149 (and tp!1109064 tp!1109063))))

(assert (=> b!3632998 (= tp!1108981 e!2249149)))

(declare-fun b!3633537 () Bool)

(declare-fun tp!1109066 () Bool)

(assert (=> b!3633537 (= e!2249149 tp!1109066)))

(declare-fun b!3633538 () Bool)

(declare-fun tp!1109067 () Bool)

(declare-fun tp!1109065 () Bool)

(assert (=> b!3633538 (= e!2249149 (and tp!1109067 tp!1109065))))

(assert (= (and b!3632998 (is-ElementMatch!10470 (regex!5711 (rule!8483 token!511)))) b!3633535))

(assert (= (and b!3632998 (is-Concat!16412 (regex!5711 (rule!8483 token!511)))) b!3633536))

(assert (= (and b!3632998 (is-Star!10470 (regex!5711 (rule!8483 token!511)))) b!3633537))

(assert (= (and b!3632998 (is-Union!10470 (regex!5711 (rule!8483 token!511)))) b!3633538))

(declare-fun b!3633543 () Bool)

(declare-fun e!2249152 () Bool)

(declare-fun tp!1109070 () Bool)

(assert (=> b!3633543 (= e!2249152 (and tp_is_empty!18023 tp!1109070))))

(assert (=> b!3633003 (= tp!1108987 e!2249152)))

(assert (= (and b!3633003 (is-Cons!38277 (t!295464 suffix!1395))) b!3633543))

(declare-fun b!3633554 () Bool)

(declare-fun b_free!95073 () Bool)

(declare-fun b_next!95777 () Bool)

(assert (=> b!3633554 (= b_free!95073 (not b_next!95777))))

(declare-fun t!295542 () Bool)

(declare-fun tb!208893 () Bool)

(assert (=> (and b!3633554 (= (toValue!8003 (transformation!5711 (h!43698 (t!295465 rules!3307)))) (toValue!8003 (transformation!5711 (rule!8483 (_1!22207 lt!1256725))))) t!295542) tb!208893))

(declare-fun result!254468 () Bool)

(assert (= result!254468 result!254392))

(assert (=> d!1068555 t!295542))

(declare-fun tb!208895 () Bool)

(declare-fun t!295544 () Bool)

(assert (=> (and b!3633554 (= (toValue!8003 (transformation!5711 (h!43698 (t!295465 rules!3307)))) (toValue!8003 (transformation!5711 (rule!8483 (_1!22207 lt!1256725))))) t!295544) tb!208895))

(declare-fun result!254470 () Bool)

(assert (= result!254470 result!254402))

(assert (=> d!1068555 t!295544))

(assert (=> d!1068569 t!295542))

(assert (=> d!1068571 t!295542))

(declare-fun b_and!266987 () Bool)

(declare-fun tp!1109082 () Bool)

(assert (=> b!3633554 (= tp!1109082 (and (=> t!295542 result!254468) (=> t!295544 result!254470) b_and!266987))))

(declare-fun b_free!95075 () Bool)

(declare-fun b_next!95779 () Bool)

(assert (=> b!3633554 (= b_free!95075 (not b_next!95779))))

(declare-fun t!295546 () Bool)

(declare-fun tb!208897 () Bool)

(assert (=> (and b!3633554 (= (toChars!7862 (transformation!5711 (h!43698 (t!295465 rules!3307)))) (toChars!7862 (transformation!5711 (rule!8483 (_1!22207 lt!1256725))))) t!295546) tb!208897))

(declare-fun result!254472 () Bool)

(assert (= result!254472 result!254410))

(assert (=> d!1068571 t!295546))

(declare-fun tb!208899 () Bool)

(declare-fun t!295548 () Bool)

(assert (=> (and b!3633554 (= (toChars!7862 (transformation!5711 (h!43698 (t!295465 rules!3307)))) (toChars!7862 (transformation!5711 (rule!8483 (_1!22207 lt!1256725))))) t!295548) tb!208899))

(declare-fun result!254474 () Bool)

(assert (= result!254474 result!254420))

(assert (=> d!1068619 t!295548))

(declare-fun tb!208901 () Bool)

(declare-fun t!295550 () Bool)

(assert (=> (and b!3633554 (= (toChars!7862 (transformation!5711 (h!43698 (t!295465 rules!3307)))) (toChars!7862 (transformation!5711 (rule!8483 token!511)))) t!295550) tb!208901))

(declare-fun result!254476 () Bool)

(assert (= result!254476 result!254454))

(assert (=> b!3633465 t!295550))

(assert (=> d!1068705 t!295550))

(declare-fun tp!1109081 () Bool)

(declare-fun b_and!266989 () Bool)

(assert (=> b!3633554 (= tp!1109081 (and (=> t!295546 result!254472) (=> t!295548 result!254474) (=> t!295550 result!254476) b_and!266989))))

(declare-fun e!2249163 () Bool)

(assert (=> b!3633554 (= e!2249163 (and tp!1109082 tp!1109081))))

(declare-fun tp!1109079 () Bool)

(declare-fun e!2249162 () Bool)

(declare-fun b!3633553 () Bool)

(assert (=> b!3633553 (= e!2249162 (and tp!1109079 (inv!51699 (tag!6445 (h!43698 (t!295465 rules!3307)))) (inv!51703 (transformation!5711 (h!43698 (t!295465 rules!3307)))) e!2249163))))

(declare-fun b!3633552 () Bool)

(declare-fun e!2249164 () Bool)

(declare-fun tp!1109080 () Bool)

(assert (=> b!3633552 (= e!2249164 (and e!2249162 tp!1109080))))

(assert (=> b!3632986 (= tp!1108990 e!2249164)))

(assert (= b!3633553 b!3633554))

(assert (= b!3633552 b!3633553))

(assert (= (and b!3632986 (is-Cons!38278 (t!295465 rules!3307))) b!3633552))

(declare-fun m!4135515 () Bool)

(assert (=> b!3633553 m!4135515))

(declare-fun m!4135517 () Bool)

(assert (=> b!3633553 m!4135517))

(declare-fun b!3633555 () Bool)

(declare-fun e!2249165 () Bool)

(declare-fun tp!1109083 () Bool)

(assert (=> b!3633555 (= e!2249165 (and tp_is_empty!18023 tp!1109083))))

(assert (=> b!3633000 (= tp!1108989 e!2249165)))

(assert (= (and b!3633000 (is-Cons!38277 (originalCharacters!6425 token!511))) b!3633555))

(declare-fun b!3633556 () Bool)

(declare-fun e!2249166 () Bool)

(assert (=> b!3633556 (= e!2249166 tp_is_empty!18023)))

(declare-fun b!3633557 () Bool)

(declare-fun tp!1109085 () Bool)

(declare-fun tp!1109084 () Bool)

(assert (=> b!3633557 (= e!2249166 (and tp!1109085 tp!1109084))))

(assert (=> b!3632994 (= tp!1108992 e!2249166)))

(declare-fun b!3633558 () Bool)

(declare-fun tp!1109087 () Bool)

(assert (=> b!3633558 (= e!2249166 tp!1109087)))

(declare-fun b!3633559 () Bool)

(declare-fun tp!1109088 () Bool)

(declare-fun tp!1109086 () Bool)

(assert (=> b!3633559 (= e!2249166 (and tp!1109088 tp!1109086))))

(assert (= (and b!3632994 (is-ElementMatch!10470 (regex!5711 anOtherTypeRule!33))) b!3633556))

(assert (= (and b!3632994 (is-Concat!16412 (regex!5711 anOtherTypeRule!33))) b!3633557))

(assert (= (and b!3632994 (is-Star!10470 (regex!5711 anOtherTypeRule!33))) b!3633558))

(assert (= (and b!3632994 (is-Union!10470 (regex!5711 anOtherTypeRule!33))) b!3633559))

(declare-fun b!3633560 () Bool)

(declare-fun e!2249167 () Bool)

(assert (=> b!3633560 (= e!2249167 tp_is_empty!18023)))

(declare-fun b!3633561 () Bool)

(declare-fun tp!1109090 () Bool)

(declare-fun tp!1109089 () Bool)

(assert (=> b!3633561 (= e!2249167 (and tp!1109090 tp!1109089))))

(assert (=> b!3632989 (= tp!1108988 e!2249167)))

(declare-fun b!3633562 () Bool)

(declare-fun tp!1109092 () Bool)

(assert (=> b!3633562 (= e!2249167 tp!1109092)))

(declare-fun b!3633563 () Bool)

(declare-fun tp!1109093 () Bool)

(declare-fun tp!1109091 () Bool)

(assert (=> b!3633563 (= e!2249167 (and tp!1109093 tp!1109091))))

(assert (= (and b!3632989 (is-ElementMatch!10470 (regex!5711 (h!43698 rules!3307)))) b!3633560))

(assert (= (and b!3632989 (is-Concat!16412 (regex!5711 (h!43698 rules!3307)))) b!3633561))

(assert (= (and b!3632989 (is-Star!10470 (regex!5711 (h!43698 rules!3307)))) b!3633562))

(assert (= (and b!3632989 (is-Union!10470 (regex!5711 (h!43698 rules!3307)))) b!3633563))

(declare-fun b_lambda!107615 () Bool)

(assert (= b_lambda!107611 (or (and b!3632979 b_free!95047 (= (toChars!7862 (transformation!5711 anOtherTypeRule!33)) (toChars!7862 (transformation!5711 (rule!8483 token!511))))) (and b!3633554 b_free!95075 (= (toChars!7862 (transformation!5711 (h!43698 (t!295465 rules!3307)))) (toChars!7862 (transformation!5711 (rule!8483 token!511))))) (and b!3632982 b_free!95051 (= (toChars!7862 (transformation!5711 (h!43698 rules!3307))) (toChars!7862 (transformation!5711 (rule!8483 token!511))))) (and b!3632974 b_free!95043) (and b!3633002 b_free!95055 (= (toChars!7862 (transformation!5711 rule!403)) (toChars!7862 (transformation!5711 (rule!8483 token!511))))) b_lambda!107615)))

(declare-fun b_lambda!107617 () Bool)

(assert (= b_lambda!107613 (or (and b!3632979 b_free!95047 (= (toChars!7862 (transformation!5711 anOtherTypeRule!33)) (toChars!7862 (transformation!5711 (rule!8483 token!511))))) (and b!3633554 b_free!95075 (= (toChars!7862 (transformation!5711 (h!43698 (t!295465 rules!3307)))) (toChars!7862 (transformation!5711 (rule!8483 token!511))))) (and b!3632982 b_free!95051 (= (toChars!7862 (transformation!5711 (h!43698 rules!3307))) (toChars!7862 (transformation!5711 (rule!8483 token!511))))) (and b!3632974 b_free!95043) (and b!3633002 b_free!95055 (= (toChars!7862 (transformation!5711 rule!403)) (toChars!7862 (transformation!5711 (rule!8483 token!511))))) b_lambda!107617)))

(push 1)

(assert (not tb!208845))

(assert (not b!3633288))

(assert (not b!3633465))

(assert (not b!3633562))

(assert b_and!266981)

(assert (not d!1068677))

(assert (not d!1068589))

(assert (not b!3633309))

(assert (not bm!262757))

(assert (not b!3633467))

(assert b_and!266917)

(assert (not b!3633472))

(assert tp_is_empty!18023)

(assert (not tb!208853))

(assert b_and!266983)

(assert (not b!3633475))

(assert (not b!3633319))

(assert (not b_lambda!107615))

(assert (not b_lambda!107593))

(assert (not d!1068603))

(assert (not bm!262765))

(assert (not b!3633457))

(assert (not b!3633460))

(assert (not b!3633512))

(assert (not b!3633217))

(assert (not b!3633517))

(assert (not b!3633561))

(assert (not bm!262754))

(assert (not b!3633520))

(assert (not b!3633559))

(assert (not b!3633210))

(assert (not b_lambda!107591))

(assert (not d!1068681))

(assert b_and!266985)

(assert (not b!3633558))

(assert (not b_next!95755))

(assert (not b!3633235))

(assert (not d!1068567))

(assert (not b!3633292))

(assert (not b!3633306))

(assert (not d!1068705))

(assert (not b!3633323))

(assert (not d!1068615))

(assert (not b!3633197))

(assert (not b!3633316))

(assert (not d!1068605))

(assert (not d!1068587))

(assert (not b!3633242))

(assert (not d!1068565))

(assert (not b!3633216))

(assert (not d!1068577))

(assert (not bm!262753))

(assert (not b!3633503))

(assert (not d!1068701))

(assert (not d!1068597))

(assert (not b!3633184))

(assert (not b_lambda!107597))

(assert (not b!3633538))

(assert (not b!3633466))

(assert (not b!3633505))

(assert (not b!3633516))

(assert (not b_lambda!107589))

(assert (not d!1068619))

(assert (not b_next!95749))

(assert (not d!1068683))

(assert b_and!266921)

(assert (not d!1068711))

(assert (not d!1068581))

(assert (not b!3633508))

(assert (not b!3633315))

(assert (not b!3633553))

(assert (not b!3633514))

(assert (not d!1068571))

(assert (not d!1068713))

(assert (not b!3633187))

(assert (not bm!262748))

(assert (not b!3633468))

(assert (not d!1068699))

(assert (not d!1068613))

(assert (not b!3633537))

(assert (not d!1068599))

(assert (not b!3633193))

(assert (not tb!208829))

(assert (not tb!208837))

(assert (not b!3633513))

(assert (not b!3633314))

(assert (not b!3633266))

(assert (not bm!262764))

(assert (not d!1068573))

(assert (not b!3633471))

(assert (not b!3633252))

(assert (not b_next!95745))

(assert (not b_next!95753))

(assert (not bm!262749))

(assert (not b!3633222))

(assert (not d!1068553))

(assert (not b!3633324))

(assert (not d!1068625))

(assert (not b!3633202))

(assert (not b!3633555))

(assert (not d!1068607))

(assert (not b!3633511))

(assert (not b!3633253))

(assert (not b!3633481))

(assert (not b_next!95759))

(assert (not b!3633313))

(assert (not b!3633290))

(assert (not d!1068617))

(assert (not b!3633510))

(assert (not b!3633563))

(assert (not b!3633543))

(assert (not b!3633310))

(assert (not d!1068687))

(assert (not b!3633322))

(assert (not b!3633504))

(assert (not d!1068675))

(assert (not d!1068621))

(assert (not bm!262756))

(assert (not b!3633456))

(assert (not b!3633195))

(assert b_and!266919)

(assert (not d!1068669))

(assert (not d!1068579))

(assert (not b!3633206))

(assert (not bm!262760))

(assert (not b!3633532))

(assert (not b!3633293))

(assert (not b_next!95777))

(assert (not b_lambda!107617))

(assert (not b!3633518))

(assert (not b!3633286))

(assert (not b_next!95751))

(assert (not b_next!95757))

(assert (not b!3633557))

(assert b_and!266915)

(assert (not b!3633236))

(assert (not b_lambda!107595))

(assert (not b_next!95747))

(assert b_and!266979)

(assert (not d!1068585))

(assert (not b!3633482))

(assert (not b!3633533))

(assert (not b!3633194))

(assert (not d!1068671))

(assert (not tb!208885))

(assert (not b!3633131))

(assert (not b!3633491))

(assert (not b!3633125))

(assert (not b_lambda!107599))

(assert (not b!3633515))

(assert (not b!3633218))

(assert (not d!1068555))

(assert (not b_next!95779))

(assert (not b!3633483))

(assert b_and!266987)

(assert (not b!3633291))

(assert (not b!3633241))

(assert (not b!3633552))

(assert (not b!3633536))

(assert (not b!3633485))

(assert (not b!3633220))

(assert (not b!3633534))

(assert (not bm!262746))

(assert (not b!3633207))

(assert (not b!3633265))

(assert (not bm!262752))

(assert b_and!266989)

(assert (not b!3633264))

(assert (not b!3633458))

(assert (not d!1068691))

(assert (not d!1068703))

(assert (not b!3633318))

(assert (not b!3633289))

(assert (not b!3633287))

(check-sat)

(pop 1)

(push 1)

(assert b_and!266981)

(assert b_and!266917)

(assert b_and!266983)

(assert b_and!266985)

(assert (not b_next!95755))

(assert (not b_next!95759))

(assert b_and!266919)

(assert b_and!266979)

(assert b_and!266989)

(assert (not b_next!95749))

(assert b_and!266921)

(assert (not b_next!95745))

(assert (not b_next!95753))

(assert (not b_next!95777))

(assert (not b_next!95751))

(assert (not b_next!95747))

(assert (not b_next!95757))

(assert b_and!266915)

(assert (not b_next!95779))

(assert b_and!266987)

(check-sat)

(pop 1)

