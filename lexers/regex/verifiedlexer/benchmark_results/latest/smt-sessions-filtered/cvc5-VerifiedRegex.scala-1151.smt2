; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!59722 () Bool)

(assert start!59722)

(declare-fun b!620797 () Bool)

(declare-fun b_free!18073 () Bool)

(declare-fun b_next!18089 () Bool)

(assert (=> b!620797 (= b_free!18073 (not b_next!18089))))

(declare-fun tp!192621 () Bool)

(declare-fun b_and!61667 () Bool)

(assert (=> b!620797 (= tp!192621 b_and!61667)))

(declare-fun b_free!18075 () Bool)

(declare-fun b_next!18091 () Bool)

(assert (=> b!620797 (= b_free!18075 (not b_next!18091))))

(declare-fun tp!192625 () Bool)

(declare-fun b_and!61669 () Bool)

(assert (=> b!620797 (= tp!192625 b_and!61669)))

(declare-fun b!620796 () Bool)

(declare-fun b_free!18077 () Bool)

(declare-fun b_next!18093 () Bool)

(assert (=> b!620796 (= b_free!18077 (not b_next!18093))))

(declare-fun tp!192622 () Bool)

(declare-fun b_and!61671 () Bool)

(assert (=> b!620796 (= tp!192622 b_and!61671)))

(declare-fun b_free!18079 () Bool)

(declare-fun b_next!18095 () Bool)

(assert (=> b!620796 (= b_free!18079 (not b_next!18095))))

(declare-fun tp!192628 () Bool)

(declare-fun b_and!61673 () Bool)

(assert (=> b!620796 (= tp!192628 b_and!61673)))

(declare-fun b!620790 () Bool)

(declare-fun e!376742 () Bool)

(declare-fun e!376746 () Bool)

(declare-fun tp!192620 () Bool)

(assert (=> b!620790 (= e!376742 (and e!376746 tp!192620))))

(declare-fun b!620791 () Bool)

(declare-fun res!270238 () Bool)

(declare-fun e!376737 () Bool)

(assert (=> b!620791 (=> (not res!270238) (not e!376737))))

(declare-datatypes ((LexerInterface!1174 0))(
  ( (LexerInterfaceExt!1171 (__x!4520 Int)) (Lexer!1172) )
))
(declare-fun thiss!25571 () LexerInterface!1174)

(declare-datatypes ((List!6345 0))(
  ( (Nil!6335) (Cons!6335 (h!11736 (_ BitVec 16)) (t!81736 List!6345)) )
))
(declare-datatypes ((TokenValue!1310 0))(
  ( (FloatLiteralValue!2620 (text!9615 List!6345)) (TokenValueExt!1309 (__x!4521 Int)) (Broken!6550 (value!41490 List!6345)) (Object!1319) (End!1310) (Def!1310) (Underscore!1310) (Match!1310) (Else!1310) (Error!1310) (Case!1310) (If!1310) (Extends!1310) (Abstract!1310) (Class!1310) (Val!1310) (DelimiterValue!2620 (del!1370 List!6345)) (KeywordValue!1316 (value!41491 List!6345)) (CommentValue!2620 (value!41492 List!6345)) (WhitespaceValue!2620 (value!41493 List!6345)) (IndentationValue!1310 (value!41494 List!6345)) (String!8299) (Int32!1310) (Broken!6551 (value!41495 List!6345)) (Boolean!1311) (Unit!11442) (OperatorValue!1313 (op!1370 List!6345)) (IdentifierValue!2620 (value!41496 List!6345)) (IdentifierValue!2621 (value!41497 List!6345)) (WhitespaceValue!2621 (value!41498 List!6345)) (True!2620) (False!2620) (Broken!6552 (value!41499 List!6345)) (Broken!6553 (value!41500 List!6345)) (True!2621) (RightBrace!1310) (RightBracket!1310) (Colon!1310) (Null!1310) (Comma!1310) (LeftBracket!1310) (False!2621) (LeftBrace!1310) (ImaginaryLiteralValue!1310 (text!9616 List!6345)) (StringLiteralValue!3930 (value!41501 List!6345)) (EOFValue!1310 (value!41502 List!6345)) (IdentValue!1310 (value!41503 List!6345)) (DelimiterValue!2621 (value!41504 List!6345)) (DedentValue!1310 (value!41505 List!6345)) (NewLineValue!1310 (value!41506 List!6345)) (IntegerValue!3930 (value!41507 (_ BitVec 32)) (text!9617 List!6345)) (IntegerValue!3931 (value!41508 Int) (text!9618 List!6345)) (Times!1310) (Or!1310) (Equal!1310) (Minus!1310) (Broken!6554 (value!41509 List!6345)) (And!1310) (Div!1310) (LessEqual!1310) (Mod!1310) (Concat!2930) (Not!1310) (Plus!1310) (SpaceValue!1310 (value!41510 List!6345)) (IntegerValue!3932 (value!41511 Int) (text!9619 List!6345)) (StringLiteralValue!3931 (text!9620 List!6345)) (FloatLiteralValue!2621 (text!9621 List!6345)) (BytesLiteralValue!1310 (value!41512 List!6345)) (CommentValue!2621 (value!41513 List!6345)) (StringLiteralValue!3932 (value!41514 List!6345)) (ErrorTokenValue!1310 (msg!1371 List!6345)) )
))
(declare-datatypes ((C!4166 0))(
  ( (C!4167 (val!2309 Int)) )
))
(declare-datatypes ((List!6346 0))(
  ( (Nil!6336) (Cons!6336 (h!11737 C!4166) (t!81737 List!6346)) )
))
(declare-datatypes ((IArray!4027 0))(
  ( (IArray!4028 (innerList!2071 List!6346)) )
))
(declare-datatypes ((Conc!2013 0))(
  ( (Node!2013 (left!5026 Conc!2013) (right!5356 Conc!2013) (csize!4256 Int) (cheight!2224 Int)) (Leaf!3165 (xs!4650 IArray!4027) (csize!4257 Int)) (Empty!2013) )
))
(declare-datatypes ((BalanceConc!4034 0))(
  ( (BalanceConc!4035 (c!114175 Conc!2013)) )
))
(declare-datatypes ((Regex!1620 0))(
  ( (ElementMatch!1620 (c!114176 C!4166)) (Concat!2931 (regOne!3752 Regex!1620) (regTwo!3752 Regex!1620)) (EmptyExpr!1620) (Star!1620 (reg!1949 Regex!1620)) (EmptyLang!1620) (Union!1620 (regOne!3753 Regex!1620) (regTwo!3753 Regex!1620)) )
))
(declare-datatypes ((String!8300 0))(
  ( (String!8301 (value!41515 String)) )
))
(declare-datatypes ((TokenValueInjection!2388 0))(
  ( (TokenValueInjection!2389 (toValue!2207 Int) (toChars!2066 Int)) )
))
(declare-datatypes ((Rule!2372 0))(
  ( (Rule!2373 (regex!1286 Regex!1620) (tag!1548 String!8300) (isSeparator!1286 Bool) (transformation!1286 TokenValueInjection!2388)) )
))
(declare-datatypes ((List!6347 0))(
  ( (Nil!6337) (Cons!6337 (h!11738 Rule!2372) (t!81738 List!6347)) )
))
(declare-fun rules!3735 () List!6347)

(declare-fun rulesInvariant!1135 (LexerInterface!1174 List!6347) Bool)

(assert (=> b!620791 (= res!270238 (rulesInvariant!1135 thiss!25571 rules!3735))))

(declare-fun b!620792 () Bool)

(declare-fun e!376735 () Bool)

(assert (=> b!620792 (= e!376735 false)))

(declare-fun lt!265583 () BalanceConc!4034)

(declare-fun input!3206 () List!6346)

(declare-fun seqFromList!1441 (List!6346) BalanceConc!4034)

(declare-datatypes ((Token!2296 0))(
  ( (Token!2297 (value!41516 TokenValue!1310) (rule!2080 Rule!2372) (size!4934 Int) (originalCharacters!1319 List!6346)) )
))
(declare-datatypes ((tuple2!7132 0))(
  ( (tuple2!7133 (_1!3830 Token!2296) (_2!3830 List!6346)) )
))
(declare-datatypes ((Option!1626 0))(
  ( (None!1625) (Some!1625 (v!16554 tuple2!7132)) )
))
(declare-fun get!2416 (Option!1626) tuple2!7132)

(declare-fun maxPrefix!856 (LexerInterface!1174 List!6347 List!6346) Option!1626)

(assert (=> b!620792 (= lt!265583 (seqFromList!1441 (_2!3830 (get!2416 (maxPrefix!856 thiss!25571 rules!3735 input!3206)))))))

(declare-fun e!376745 () Bool)

(declare-fun e!376743 () Bool)

(declare-fun b!620794 () Bool)

(declare-datatypes ((List!6348 0))(
  ( (Nil!6338) (Cons!6338 (h!11739 Token!2296) (t!81739 List!6348)) )
))
(declare-fun producedTokens!8 () List!6348)

(declare-fun tp!192624 () Bool)

(declare-fun inv!8019 (Token!2296) Bool)

(assert (=> b!620794 (= e!376743 (and (inv!8019 (h!11739 producedTokens!8)) e!376745 tp!192624))))

(declare-fun b!620795 () Bool)

(declare-fun e!376741 () Bool)

(declare-fun tp_is_empty!3599 () Bool)

(declare-fun tp!192623 () Bool)

(assert (=> b!620795 (= e!376741 (and tp_is_empty!3599 tp!192623))))

(declare-fun e!376738 () Bool)

(assert (=> b!620796 (= e!376738 (and tp!192622 tp!192628))))

(declare-fun e!376740 () Bool)

(assert (=> b!620797 (= e!376740 (and tp!192621 tp!192625))))

(declare-fun b!620798 () Bool)

(declare-fun e!376739 () Bool)

(declare-fun tp!192626 () Bool)

(assert (=> b!620798 (= e!376739 (and tp_is_empty!3599 tp!192626))))

(declare-fun b!620799 () Bool)

(declare-fun res!270237 () Bool)

(assert (=> b!620799 (=> (not res!270237) (not e!376737))))

(declare-fun isEmpty!4549 (List!6347) Bool)

(assert (=> b!620799 (= res!270237 (not (isEmpty!4549 rules!3735)))))

(declare-fun b!620800 () Bool)

(declare-fun res!270241 () Bool)

(assert (=> b!620800 (=> (not res!270241) (not e!376735))))

(declare-datatypes ((IArray!4029 0))(
  ( (IArray!4030 (innerList!2072 List!6348)) )
))
(declare-datatypes ((Conc!2014 0))(
  ( (Node!2014 (left!5027 Conc!2014) (right!5357 Conc!2014) (csize!4258 Int) (cheight!2225 Int)) (Leaf!3166 (xs!4651 IArray!4029) (csize!4259 Int)) (Empty!2014) )
))
(declare-datatypes ((BalanceConc!4036 0))(
  ( (BalanceConc!4037 (c!114177 Conc!2014)) )
))
(declare-datatypes ((tuple2!7134 0))(
  ( (tuple2!7135 (_1!3831 BalanceConc!4036) (_2!3831 BalanceConc!4034)) )
))
(declare-fun lt!265584 () tuple2!7134)

(declare-fun suffix!1461 () List!6346)

(declare-fun list!2650 (BalanceConc!4034) List!6346)

(assert (=> b!620800 (= res!270241 (= (list!2650 (_2!3831 lt!265584)) suffix!1461))))

(declare-fun b!620801 () Bool)

(declare-fun e!376736 () Bool)

(declare-fun tp!192619 () Bool)

(declare-fun inv!8016 (String!8300) Bool)

(declare-fun inv!8020 (TokenValueInjection!2388) Bool)

(assert (=> b!620801 (= e!376736 (and tp!192619 (inv!8016 (tag!1548 (rule!2080 (h!11739 producedTokens!8)))) (inv!8020 (transformation!1286 (rule!2080 (h!11739 producedTokens!8)))) e!376740))))

(declare-fun b!620802 () Bool)

(declare-fun res!270239 () Bool)

(assert (=> b!620802 (=> (not res!270239) (not e!376737))))

(declare-fun size!4935 (List!6348) Int)

(assert (=> b!620802 (= res!270239 (> (size!4935 producedTokens!8) 0))))

(declare-fun tp!192627 () Bool)

(declare-fun b!620793 () Bool)

(declare-fun inv!21 (TokenValue!1310) Bool)

(assert (=> b!620793 (= e!376745 (and (inv!21 (value!41516 (h!11739 producedTokens!8))) e!376736 tp!192627))))

(declare-fun res!270240 () Bool)

(assert (=> start!59722 (=> (not res!270240) (not e!376737))))

(assert (=> start!59722 (= res!270240 (is-Lexer!1172 thiss!25571))))

(assert (=> start!59722 e!376737))

(assert (=> start!59722 e!376743))

(assert (=> start!59722 true))

(assert (=> start!59722 e!376741))

(assert (=> start!59722 e!376739))

(assert (=> start!59722 e!376742))

(declare-fun b!620803 () Bool)

(assert (=> b!620803 (= e!376737 e!376735)))

(declare-fun res!270236 () Bool)

(assert (=> b!620803 (=> (not res!270236) (not e!376735))))

(declare-fun list!2651 (BalanceConc!4036) List!6348)

(assert (=> b!620803 (= res!270236 (= (list!2651 (_1!3831 lt!265584)) producedTokens!8))))

(declare-fun lex!569 (LexerInterface!1174 List!6347 BalanceConc!4034) tuple2!7134)

(assert (=> b!620803 (= lt!265584 (lex!569 thiss!25571 rules!3735 (seqFromList!1441 input!3206)))))

(declare-fun tp!192618 () Bool)

(declare-fun b!620804 () Bool)

(assert (=> b!620804 (= e!376746 (and tp!192618 (inv!8016 (tag!1548 (h!11738 rules!3735))) (inv!8020 (transformation!1286 (h!11738 rules!3735))) e!376738))))

(assert (= (and start!59722 res!270240) b!620791))

(assert (= (and b!620791 res!270238) b!620799))

(assert (= (and b!620799 res!270237) b!620802))

(assert (= (and b!620802 res!270239) b!620803))

(assert (= (and b!620803 res!270236) b!620800))

(assert (= (and b!620800 res!270241) b!620792))

(assert (= b!620801 b!620797))

(assert (= b!620793 b!620801))

(assert (= b!620794 b!620793))

(assert (= (and start!59722 (is-Cons!6338 producedTokens!8)) b!620794))

(assert (= (and start!59722 (is-Cons!6336 suffix!1461)) b!620795))

(assert (= (and start!59722 (is-Cons!6336 input!3206)) b!620798))

(assert (= b!620804 b!620796))

(assert (= b!620790 b!620804))

(assert (= (and start!59722 (is-Cons!6337 rules!3735)) b!620790))

(declare-fun m!888667 () Bool)

(assert (=> b!620799 m!888667))

(declare-fun m!888669 () Bool)

(assert (=> b!620791 m!888669))

(declare-fun m!888671 () Bool)

(assert (=> b!620801 m!888671))

(declare-fun m!888673 () Bool)

(assert (=> b!620801 m!888673))

(declare-fun m!888675 () Bool)

(assert (=> b!620793 m!888675))

(declare-fun m!888677 () Bool)

(assert (=> b!620792 m!888677))

(assert (=> b!620792 m!888677))

(declare-fun m!888679 () Bool)

(assert (=> b!620792 m!888679))

(declare-fun m!888681 () Bool)

(assert (=> b!620792 m!888681))

(declare-fun m!888683 () Bool)

(assert (=> b!620800 m!888683))

(declare-fun m!888685 () Bool)

(assert (=> b!620804 m!888685))

(declare-fun m!888687 () Bool)

(assert (=> b!620804 m!888687))

(declare-fun m!888689 () Bool)

(assert (=> b!620802 m!888689))

(declare-fun m!888691 () Bool)

(assert (=> b!620794 m!888691))

(declare-fun m!888693 () Bool)

(assert (=> b!620803 m!888693))

(declare-fun m!888695 () Bool)

(assert (=> b!620803 m!888695))

(assert (=> b!620803 m!888695))

(declare-fun m!888697 () Bool)

(assert (=> b!620803 m!888697))

(push 1)

(assert b_and!61667)

(assert (not b!620804))

(assert (not b!620794))

(assert (not b!620790))

(assert (not b!620793))

(assert (not b_next!18095))

(assert (not b_next!18093))

(assert (not b!620802))

(assert b_and!61671)

(assert (not b!620800))

(assert (not b!620795))

(assert (not b!620799))

(assert (not b_next!18091))

(assert (not b_next!18089))

(assert (not b!620791))

(assert (not b!620798))

(assert (not b!620801))

(assert b_and!61673)

(assert b_and!61669)

(assert tp_is_empty!3599)

(assert (not b!620803))

(assert (not b!620792))

(check-sat)

(pop 1)

(push 1)

(assert b_and!61667)

(assert b_and!61671)

(assert b_and!61673)

(assert (not b_next!18095))

(assert b_and!61669)

(assert (not b_next!18093))

(assert (not b_next!18091))

(assert (not b_next!18089))

(check-sat)

(pop 1)

