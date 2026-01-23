; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137142 () Bool)

(assert start!137142)

(declare-fun b!1466196 () Bool)

(declare-fun b_free!36599 () Bool)

(declare-fun b_next!37303 () Bool)

(assert (=> b!1466196 (= b_free!36599 (not b_next!37303))))

(declare-fun tp!412213 () Bool)

(declare-fun b_and!100073 () Bool)

(assert (=> b!1466196 (= tp!412213 b_and!100073)))

(declare-fun b_free!36601 () Bool)

(declare-fun b_next!37305 () Bool)

(assert (=> b!1466196 (= b_free!36601 (not b_next!37305))))

(declare-fun tp!412216 () Bool)

(declare-fun b_and!100075 () Bool)

(assert (=> b!1466196 (= tp!412216 b_and!100075)))

(declare-fun b!1466199 () Bool)

(declare-fun b_free!36603 () Bool)

(declare-fun b_next!37307 () Bool)

(assert (=> b!1466199 (= b_free!36603 (not b_next!37307))))

(declare-fun tp!412214 () Bool)

(declare-fun b_and!100077 () Bool)

(assert (=> b!1466199 (= tp!412214 b_and!100077)))

(declare-fun b_free!36605 () Bool)

(declare-fun b_next!37309 () Bool)

(assert (=> b!1466199 (= b_free!36605 (not b_next!37309))))

(declare-fun tp!412212 () Bool)

(declare-fun b_and!100079 () Bool)

(assert (=> b!1466199 (= tp!412212 b_and!100079)))

(declare-fun res!663780 () Bool)

(declare-fun e!935348 () Bool)

(assert (=> start!137142 (=> (not res!663780) (not e!935348))))

(declare-datatypes ((LexerInterface!2339 0))(
  ( (LexerInterfaceExt!2336 (__x!9336 Int)) (Lexer!2337) )
))
(declare-fun thiss!20360 () LexerInterface!2339)

(declare-datatypes ((List!15287 0))(
  ( (Nil!15221) (Cons!15221 (h!20622 (_ BitVec 16)) (t!134986 List!15287)) )
))
(declare-datatypes ((TokenValue!2773 0))(
  ( (FloatLiteralValue!5546 (text!19856 List!15287)) (TokenValueExt!2772 (__x!9337 Int)) (Broken!13865 (value!86087 List!15287)) (Object!2838) (End!2773) (Def!2773) (Underscore!2773) (Match!2773) (Else!2773) (Error!2773) (Case!2773) (If!2773) (Extends!2773) (Abstract!2773) (Class!2773) (Val!2773) (DelimiterValue!5546 (del!2833 List!15287)) (KeywordValue!2779 (value!86088 List!15287)) (CommentValue!5546 (value!86089 List!15287)) (WhitespaceValue!5546 (value!86090 List!15287)) (IndentationValue!2773 (value!86091 List!15287)) (String!18120) (Int32!2773) (Broken!13866 (value!86092 List!15287)) (Boolean!2774) (Unit!25008) (OperatorValue!2776 (op!2833 List!15287)) (IdentifierValue!5546 (value!86093 List!15287)) (IdentifierValue!5547 (value!86094 List!15287)) (WhitespaceValue!5547 (value!86095 List!15287)) (True!5546) (False!5546) (Broken!13867 (value!86096 List!15287)) (Broken!13868 (value!86097 List!15287)) (True!5547) (RightBrace!2773) (RightBracket!2773) (Colon!2773) (Null!2773) (Comma!2773) (LeftBracket!2773) (False!5547) (LeftBrace!2773) (ImaginaryLiteralValue!2773 (text!19857 List!15287)) (StringLiteralValue!8319 (value!86098 List!15287)) (EOFValue!2773 (value!86099 List!15287)) (IdentValue!2773 (value!86100 List!15287)) (DelimiterValue!5547 (value!86101 List!15287)) (DedentValue!2773 (value!86102 List!15287)) (NewLineValue!2773 (value!86103 List!15287)) (IntegerValue!8319 (value!86104 (_ BitVec 32)) (text!19858 List!15287)) (IntegerValue!8320 (value!86105 Int) (text!19859 List!15287)) (Times!2773) (Or!2773) (Equal!2773) (Minus!2773) (Broken!13869 (value!86106 List!15287)) (And!2773) (Div!2773) (LessEqual!2773) (Mod!2773) (Concat!6770) (Not!2773) (Plus!2773) (SpaceValue!2773 (value!86107 List!15287)) (IntegerValue!8321 (value!86108 Int) (text!19860 List!15287)) (StringLiteralValue!8320 (text!19861 List!15287)) (FloatLiteralValue!5547 (text!19862 List!15287)) (BytesLiteralValue!2773 (value!86109 List!15287)) (CommentValue!5547 (value!86110 List!15287)) (StringLiteralValue!8321 (value!86111 List!15287)) (ErrorTokenValue!2773 (msg!2834 List!15287)) )
))
(declare-datatypes ((C!8172 0))(
  ( (C!8173 (val!4656 Int)) )
))
(declare-datatypes ((List!15288 0))(
  ( (Nil!15222) (Cons!15222 (h!20623 C!8172) (t!134987 List!15288)) )
))
(declare-datatypes ((IArray!10383 0))(
  ( (IArray!10384 (innerList!5249 List!15288)) )
))
(declare-datatypes ((Conc!5189 0))(
  ( (Node!5189 (left!12929 Conc!5189) (right!13259 Conc!5189) (csize!10608 Int) (cheight!5400 Int)) (Leaf!7732 (xs!7944 IArray!10383) (csize!10609 Int)) (Empty!5189) )
))
(declare-datatypes ((BalanceConc!10318 0))(
  ( (BalanceConc!10319 (c!241729 Conc!5189)) )
))
(declare-datatypes ((TokenValueInjection!5206 0))(
  ( (TokenValueInjection!5207 (toValue!3994 Int) (toChars!3853 Int)) )
))
(declare-datatypes ((Regex!3997 0))(
  ( (ElementMatch!3997 (c!241730 C!8172)) (Concat!6771 (regOne!8506 Regex!3997) (regTwo!8506 Regex!3997)) (EmptyExpr!3997) (Star!3997 (reg!4326 Regex!3997)) (EmptyLang!3997) (Union!3997 (regOne!8507 Regex!3997) (regTwo!8507 Regex!3997)) )
))
(declare-datatypes ((String!18121 0))(
  ( (String!18122 (value!86112 String)) )
))
(declare-datatypes ((Rule!5166 0))(
  ( (Rule!5167 (regex!2683 Regex!3997) (tag!2947 String!18121) (isSeparator!2683 Bool) (transformation!2683 TokenValueInjection!5206)) )
))
(declare-datatypes ((Token!5028 0))(
  ( (Token!5029 (value!86113 TokenValue!2773) (rule!4460 Rule!5166) (size!12449 Int) (originalCharacters!3545 List!15288)) )
))
(declare-datatypes ((List!15289 0))(
  ( (Nil!15223) (Cons!15223 (h!20624 Token!5028) (t!134988 List!15289)) )
))
(declare-fun tokens1!47 () List!15289)

(get-info :version)

(assert (=> start!137142 (= res!663780 (and ((_ is Lexer!2337) thiss!20360) ((_ is Cons!15223) tokens1!47)))))

(assert (=> start!137142 e!935348))

(assert (=> start!137142 true))

(declare-fun e!935352 () Bool)

(assert (=> start!137142 e!935352))

(declare-fun e!935344 () Bool)

(assert (=> start!137142 e!935344))

(declare-fun tp!412209 () Bool)

(declare-fun e!935351 () Bool)

(declare-fun tokens2!49 () List!15289)

(declare-fun b!1466191 () Bool)

(declare-fun e!935350 () Bool)

(declare-fun inv!20350 (String!18121) Bool)

(declare-fun inv!20353 (TokenValueInjection!5206) Bool)

(assert (=> b!1466191 (= e!935351 (and tp!412209 (inv!20350 (tag!2947 (rule!4460 (h!20624 tokens2!49)))) (inv!20353 (transformation!2683 (rule!4460 (h!20624 tokens2!49)))) e!935350))))

(declare-fun b!1466192 () Bool)

(declare-fun e!935358 () Bool)

(assert (=> b!1466192 (= e!935358 (not true))))

(declare-fun lt!510528 () List!15289)

(declare-fun lt!510529 () List!15288)

(declare-fun printList!733 (LexerInterface!2339 List!15289) List!15288)

(declare-fun ++!4118 (List!15288 List!15288) List!15288)

(assert (=> b!1466192 (= (printList!733 thiss!20360 lt!510528) (++!4118 lt!510529 (printList!733 thiss!20360 tokens2!49)))))

(declare-fun b!1466193 () Bool)

(declare-fun res!663783 () Bool)

(assert (=> b!1466193 (=> (not res!663783) (not e!935348))))

(declare-fun isEmpty!9569 (List!15289) Bool)

(assert (=> b!1466193 (= res!663783 (isEmpty!9569 (t!134988 tokens1!47)))))

(declare-fun e!935349 () Bool)

(declare-fun b!1466194 () Bool)

(declare-fun e!935346 () Bool)

(declare-fun tp!412215 () Bool)

(assert (=> b!1466194 (= e!935346 (and tp!412215 (inv!20350 (tag!2947 (rule!4460 (h!20624 tokens1!47)))) (inv!20353 (transformation!2683 (rule!4460 (h!20624 tokens1!47)))) e!935349))))

(declare-fun b!1466195 () Bool)

(declare-fun e!935356 () Bool)

(declare-fun tp!412210 () Bool)

(declare-fun inv!20354 (Token!5028) Bool)

(assert (=> b!1466195 (= e!935352 (and (inv!20354 (h!20624 tokens1!47)) e!935356 tp!412210))))

(assert (=> b!1466196 (= e!935350 (and tp!412213 tp!412216))))

(declare-fun tp!412211 () Bool)

(declare-fun b!1466197 () Bool)

(declare-fun inv!21 (TokenValue!2773) Bool)

(assert (=> b!1466197 (= e!935356 (and (inv!21 (value!86113 (h!20624 tokens1!47))) e!935346 tp!412211))))

(declare-fun b!1466198 () Bool)

(declare-fun e!935357 () Bool)

(assert (=> b!1466198 (= e!935348 e!935357)))

(declare-fun res!663782 () Bool)

(assert (=> b!1466198 (=> (not res!663782) (not e!935357))))

(declare-fun lt!510527 () List!15288)

(assert (=> b!1466198 (= res!663782 (= lt!510527 lt!510529))))

(declare-fun lt!510526 () BalanceConc!10318)

(declare-fun list!6107 (BalanceConc!10318) List!15288)

(assert (=> b!1466198 (= lt!510529 (list!6107 lt!510526))))

(assert (=> b!1466198 (= lt!510527 (printList!733 thiss!20360 tokens1!47))))

(declare-fun charsOf!1544 (Token!5028) BalanceConc!10318)

(assert (=> b!1466198 (= lt!510526 (charsOf!1544 (h!20624 tokens1!47)))))

(assert (=> b!1466199 (= e!935349 (and tp!412214 tp!412212))))

(declare-fun e!935347 () Bool)

(declare-fun tp!412208 () Bool)

(declare-fun b!1466200 () Bool)

(assert (=> b!1466200 (= e!935344 (and (inv!20354 (h!20624 tokens2!49)) e!935347 tp!412208))))

(declare-fun tp!412207 () Bool)

(declare-fun b!1466201 () Bool)

(assert (=> b!1466201 (= e!935347 (and (inv!21 (value!86113 (h!20624 tokens2!49))) e!935351 tp!412207))))

(declare-fun b!1466202 () Bool)

(assert (=> b!1466202 (= e!935357 e!935358)))

(declare-fun res!663781 () Bool)

(assert (=> b!1466202 (=> (not res!663781) (not e!935358))))

(declare-fun ++!4119 (List!15289 List!15289) List!15289)

(assert (=> b!1466202 (= res!663781 (= (++!4119 tokens1!47 tokens2!49) lt!510528))))

(assert (=> b!1466202 (= lt!510528 (Cons!15223 (h!20624 tokens1!47) tokens2!49))))

(assert (= (and start!137142 res!663780) b!1466193))

(assert (= (and b!1466193 res!663783) b!1466198))

(assert (= (and b!1466198 res!663782) b!1466202))

(assert (= (and b!1466202 res!663781) b!1466192))

(assert (= b!1466194 b!1466199))

(assert (= b!1466197 b!1466194))

(assert (= b!1466195 b!1466197))

(assert (= (and start!137142 ((_ is Cons!15223) tokens1!47)) b!1466195))

(assert (= b!1466191 b!1466196))

(assert (= b!1466201 b!1466191))

(assert (= b!1466200 b!1466201))

(assert (= (and start!137142 ((_ is Cons!15223) tokens2!49)) b!1466200))

(declare-fun m!1710797 () Bool)

(assert (=> b!1466202 m!1710797))

(declare-fun m!1710799 () Bool)

(assert (=> b!1466197 m!1710799))

(declare-fun m!1710801 () Bool)

(assert (=> b!1466200 m!1710801))

(declare-fun m!1710803 () Bool)

(assert (=> b!1466193 m!1710803))

(declare-fun m!1710805 () Bool)

(assert (=> b!1466198 m!1710805))

(declare-fun m!1710807 () Bool)

(assert (=> b!1466198 m!1710807))

(declare-fun m!1710809 () Bool)

(assert (=> b!1466198 m!1710809))

(declare-fun m!1710811 () Bool)

(assert (=> b!1466192 m!1710811))

(declare-fun m!1710813 () Bool)

(assert (=> b!1466192 m!1710813))

(assert (=> b!1466192 m!1710813))

(declare-fun m!1710815 () Bool)

(assert (=> b!1466192 m!1710815))

(declare-fun m!1710817 () Bool)

(assert (=> b!1466195 m!1710817))

(declare-fun m!1710819 () Bool)

(assert (=> b!1466191 m!1710819))

(declare-fun m!1710821 () Bool)

(assert (=> b!1466191 m!1710821))

(declare-fun m!1710823 () Bool)

(assert (=> b!1466201 m!1710823))

(declare-fun m!1710825 () Bool)

(assert (=> b!1466194 m!1710825))

(declare-fun m!1710827 () Bool)

(assert (=> b!1466194 m!1710827))

(check-sat (not b!1466195) (not b!1466194) (not b_next!37303) (not b!1466197) (not b!1466193) (not b!1466191) (not b!1466200) (not b!1466198) (not b!1466202) (not b_next!37309) (not b!1466201) b_and!100077 b_and!100075 (not b!1466192) (not b_next!37307) (not b_next!37305) b_and!100079 b_and!100073)
(check-sat (not b_next!37303) (not b_next!37309) b_and!100077 b_and!100075 (not b_next!37307) (not b_next!37305) b_and!100079 b_and!100073)
