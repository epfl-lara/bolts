; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137146 () Bool)

(assert start!137146)

(declare-fun b!1466268 () Bool)

(declare-fun b_free!36615 () Bool)

(declare-fun b_next!37319 () Bool)

(assert (=> b!1466268 (= b_free!36615 (not b_next!37319))))

(declare-fun tp!412267 () Bool)

(declare-fun b_and!100089 () Bool)

(assert (=> b!1466268 (= tp!412267 b_and!100089)))

(declare-fun b_free!36617 () Bool)

(declare-fun b_next!37321 () Bool)

(assert (=> b!1466268 (= b_free!36617 (not b_next!37321))))

(declare-fun tp!412269 () Bool)

(declare-fun b_and!100091 () Bool)

(assert (=> b!1466268 (= tp!412269 b_and!100091)))

(declare-fun b!1466265 () Bool)

(declare-fun b_free!36619 () Bool)

(declare-fun b_next!37323 () Bool)

(assert (=> b!1466265 (= b_free!36619 (not b_next!37323))))

(declare-fun tp!412271 () Bool)

(declare-fun b_and!100093 () Bool)

(assert (=> b!1466265 (= tp!412271 b_and!100093)))

(declare-fun b_free!36621 () Bool)

(declare-fun b_next!37325 () Bool)

(assert (=> b!1466265 (= b_free!36621 (not b_next!37325))))

(declare-fun tp!412273 () Bool)

(declare-fun b_and!100095 () Bool)

(assert (=> b!1466265 (= tp!412273 b_and!100095)))

(declare-datatypes ((String!18130 0))(
  ( (String!18131 (value!86144 String)) )
))
(declare-datatypes ((List!15293 0))(
  ( (Nil!15227) (Cons!15227 (h!20628 (_ BitVec 16)) (t!134992 List!15293)) )
))
(declare-datatypes ((TokenValue!2775 0))(
  ( (FloatLiteralValue!5550 (text!19870 List!15293)) (TokenValueExt!2774 (__x!9340 Int)) (Broken!13875 (value!86145 List!15293)) (Object!2840) (End!2775) (Def!2775) (Underscore!2775) (Match!2775) (Else!2775) (Error!2775) (Case!2775) (If!2775) (Extends!2775) (Abstract!2775) (Class!2775) (Val!2775) (DelimiterValue!5550 (del!2835 List!15293)) (KeywordValue!2781 (value!86146 List!15293)) (CommentValue!5550 (value!86147 List!15293)) (WhitespaceValue!5550 (value!86148 List!15293)) (IndentationValue!2775 (value!86149 List!15293)) (String!18132) (Int32!2775) (Broken!13876 (value!86150 List!15293)) (Boolean!2776) (Unit!25010) (OperatorValue!2778 (op!2835 List!15293)) (IdentifierValue!5550 (value!86151 List!15293)) (IdentifierValue!5551 (value!86152 List!15293)) (WhitespaceValue!5551 (value!86153 List!15293)) (True!5550) (False!5550) (Broken!13877 (value!86154 List!15293)) (Broken!13878 (value!86155 List!15293)) (True!5551) (RightBrace!2775) (RightBracket!2775) (Colon!2775) (Null!2775) (Comma!2775) (LeftBracket!2775) (False!5551) (LeftBrace!2775) (ImaginaryLiteralValue!2775 (text!19871 List!15293)) (StringLiteralValue!8325 (value!86156 List!15293)) (EOFValue!2775 (value!86157 List!15293)) (IdentValue!2775 (value!86158 List!15293)) (DelimiterValue!5551 (value!86159 List!15293)) (DedentValue!2775 (value!86160 List!15293)) (NewLineValue!2775 (value!86161 List!15293)) (IntegerValue!8325 (value!86162 (_ BitVec 32)) (text!19872 List!15293)) (IntegerValue!8326 (value!86163 Int) (text!19873 List!15293)) (Times!2775) (Or!2775) (Equal!2775) (Minus!2775) (Broken!13879 (value!86164 List!15293)) (And!2775) (Div!2775) (LessEqual!2775) (Mod!2775) (Concat!6774) (Not!2775) (Plus!2775) (SpaceValue!2775 (value!86165 List!15293)) (IntegerValue!8327 (value!86166 Int) (text!19874 List!15293)) (StringLiteralValue!8326 (text!19875 List!15293)) (FloatLiteralValue!5551 (text!19876 List!15293)) (BytesLiteralValue!2775 (value!86167 List!15293)) (CommentValue!5551 (value!86168 List!15293)) (StringLiteralValue!8327 (value!86169 List!15293)) (ErrorTokenValue!2775 (msg!2836 List!15293)) )
))
(declare-datatypes ((C!8176 0))(
  ( (C!8177 (val!4658 Int)) )
))
(declare-datatypes ((List!15294 0))(
  ( (Nil!15228) (Cons!15228 (h!20629 C!8176) (t!134993 List!15294)) )
))
(declare-datatypes ((IArray!10387 0))(
  ( (IArray!10388 (innerList!5251 List!15294)) )
))
(declare-datatypes ((Conc!5191 0))(
  ( (Node!5191 (left!12932 Conc!5191) (right!13262 Conc!5191) (csize!10612 Int) (cheight!5402 Int)) (Leaf!7735 (xs!7946 IArray!10387) (csize!10613 Int)) (Empty!5191) )
))
(declare-datatypes ((BalanceConc!10322 0))(
  ( (BalanceConc!10323 (c!241733 Conc!5191)) )
))
(declare-datatypes ((TokenValueInjection!5210 0))(
  ( (TokenValueInjection!5211 (toValue!3996 Int) (toChars!3855 Int)) )
))
(declare-datatypes ((Regex!3999 0))(
  ( (ElementMatch!3999 (c!241734 C!8176)) (Concat!6775 (regOne!8510 Regex!3999) (regTwo!8510 Regex!3999)) (EmptyExpr!3999) (Star!3999 (reg!4328 Regex!3999)) (EmptyLang!3999) (Union!3999 (regOne!8511 Regex!3999) (regTwo!8511 Regex!3999)) )
))
(declare-datatypes ((Rule!5170 0))(
  ( (Rule!5171 (regex!2685 Regex!3999) (tag!2949 String!18130) (isSeparator!2685 Bool) (transformation!2685 TokenValueInjection!5210)) )
))
(declare-datatypes ((Token!5032 0))(
  ( (Token!5033 (value!86170 TokenValue!2775) (rule!4462 Rule!5170) (size!12451 Int) (originalCharacters!3547 List!15294)) )
))
(declare-datatypes ((List!15295 0))(
  ( (Nil!15229) (Cons!15229 (h!20630 Token!5032) (t!134994 List!15295)) )
))
(declare-fun tokens2!49 () List!15295)

(declare-fun e!935445 () Bool)

(declare-fun e!935435 () Bool)

(declare-fun b!1466263 () Bool)

(declare-fun tp!412268 () Bool)

(declare-fun inv!21 (TokenValue!2775) Bool)

(assert (=> b!1466263 (= e!935435 (and (inv!21 (value!86170 (h!20630 tokens2!49))) e!935445 tp!412268))))

(declare-fun b!1466264 () Bool)

(declare-fun res!663806 () Bool)

(declare-fun e!935441 () Bool)

(assert (=> b!1466264 (=> (not res!663806) (not e!935441))))

(declare-fun tokens1!47 () List!15295)

(declare-fun isEmpty!9571 (List!15295) Bool)

(assert (=> b!1466264 (= res!663806 (isEmpty!9571 (t!134994 tokens1!47)))))

(declare-fun e!935442 () Bool)

(assert (=> b!1466265 (= e!935442 (and tp!412271 tp!412273))))

(declare-fun tp!412276 () Bool)

(declare-fun b!1466266 () Bool)

(declare-fun e!935448 () Bool)

(declare-fun e!935443 () Bool)

(assert (=> b!1466266 (= e!935443 (and (inv!21 (value!86170 (h!20630 tokens1!47))) e!935448 tp!412276))))

(declare-fun res!663805 () Bool)

(assert (=> start!137146 (=> (not res!663805) (not e!935441))))

(declare-datatypes ((LexerInterface!2341 0))(
  ( (LexerInterfaceExt!2338 (__x!9341 Int)) (Lexer!2339) )
))
(declare-fun thiss!20360 () LexerInterface!2341)

(get-info :version)

(assert (=> start!137146 (= res!663805 (and ((_ is Lexer!2339) thiss!20360) ((_ is Cons!15229) tokens1!47)))))

(assert (=> start!137146 e!935441))

(assert (=> start!137146 true))

(declare-fun e!935438 () Bool)

(assert (=> start!137146 e!935438))

(declare-fun e!935437 () Bool)

(assert (=> start!137146 e!935437))

(declare-fun b!1466267 () Bool)

(declare-fun e!935444 () Bool)

(declare-fun e!935434 () Bool)

(assert (=> b!1466267 (= e!935444 e!935434)))

(declare-fun res!663807 () Bool)

(assert (=> b!1466267 (=> (not res!663807) (not e!935434))))

(declare-fun lt!510565 () List!15295)

(declare-fun lt!510563 () List!15295)

(assert (=> b!1466267 (= res!663807 (= lt!510565 lt!510563))))

(assert (=> b!1466267 (= lt!510563 (Cons!15229 (h!20630 tokens1!47) tokens2!49))))

(declare-fun ++!4122 (List!15295 List!15295) List!15295)

(assert (=> b!1466267 (= lt!510565 (++!4122 tokens1!47 tokens2!49))))

(declare-fun e!935436 () Bool)

(assert (=> b!1466268 (= e!935436 (and tp!412267 tp!412269))))

(declare-fun b!1466269 () Bool)

(declare-fun tp!412275 () Bool)

(declare-fun inv!20357 (String!18130) Bool)

(declare-fun inv!20360 (TokenValueInjection!5210) Bool)

(assert (=> b!1466269 (= e!935448 (and tp!412275 (inv!20357 (tag!2949 (rule!4462 (h!20630 tokens1!47)))) (inv!20360 (transformation!2685 (rule!4462 (h!20630 tokens1!47)))) e!935436))))

(declare-fun tp!412272 () Bool)

(declare-fun b!1466270 () Bool)

(declare-fun inv!20361 (Token!5032) Bool)

(assert (=> b!1466270 (= e!935437 (and (inv!20361 (h!20630 tokens2!49)) e!935435 tp!412272))))

(declare-fun b!1466271 () Bool)

(declare-fun tp!412274 () Bool)

(assert (=> b!1466271 (= e!935445 (and tp!412274 (inv!20357 (tag!2949 (rule!4462 (h!20630 tokens2!49)))) (inv!20360 (transformation!2685 (rule!4462 (h!20630 tokens2!49)))) e!935442))))

(declare-fun tp!412270 () Bool)

(declare-fun b!1466272 () Bool)

(assert (=> b!1466272 (= e!935438 (and (inv!20361 (h!20630 tokens1!47)) e!935443 tp!412270))))

(declare-fun b!1466273 () Bool)

(assert (=> b!1466273 (= e!935441 e!935444)))

(declare-fun res!663804 () Bool)

(assert (=> b!1466273 (=> (not res!663804) (not e!935444))))

(declare-fun lt!510561 () List!15294)

(declare-fun lt!510564 () List!15294)

(assert (=> b!1466273 (= res!663804 (= lt!510561 lt!510564))))

(declare-fun lt!510560 () BalanceConc!10322)

(declare-fun list!6109 (BalanceConc!10322) List!15294)

(assert (=> b!1466273 (= lt!510564 (list!6109 lt!510560))))

(declare-fun printList!735 (LexerInterface!2341 List!15295) List!15294)

(assert (=> b!1466273 (= lt!510561 (printList!735 thiss!20360 tokens1!47))))

(declare-fun charsOf!1546 (Token!5032) BalanceConc!10322)

(assert (=> b!1466273 (= lt!510560 (charsOf!1546 (h!20630 tokens1!47)))))

(declare-fun b!1466274 () Bool)

(assert (=> b!1466274 (= e!935434 (not true))))

(declare-fun lt!510562 () List!15294)

(assert (=> b!1466274 (= lt!510562 (printList!735 thiss!20360 lt!510565))))

(declare-fun ++!4123 (List!15294 List!15294) List!15294)

(assert (=> b!1466274 (= (printList!735 thiss!20360 lt!510563) (++!4123 lt!510564 (printList!735 thiss!20360 tokens2!49)))))

(assert (= (and start!137146 res!663805) b!1466264))

(assert (= (and b!1466264 res!663806) b!1466273))

(assert (= (and b!1466273 res!663804) b!1466267))

(assert (= (and b!1466267 res!663807) b!1466274))

(assert (= b!1466269 b!1466268))

(assert (= b!1466266 b!1466269))

(assert (= b!1466272 b!1466266))

(assert (= (and start!137146 ((_ is Cons!15229) tokens1!47)) b!1466272))

(assert (= b!1466271 b!1466265))

(assert (= b!1466263 b!1466271))

(assert (= b!1466270 b!1466263))

(assert (= (and start!137146 ((_ is Cons!15229) tokens2!49)) b!1466270))

(declare-fun m!1710863 () Bool)

(assert (=> b!1466266 m!1710863))

(declare-fun m!1710865 () Bool)

(assert (=> b!1466267 m!1710865))

(declare-fun m!1710867 () Bool)

(assert (=> b!1466269 m!1710867))

(declare-fun m!1710869 () Bool)

(assert (=> b!1466269 m!1710869))

(declare-fun m!1710871 () Bool)

(assert (=> b!1466273 m!1710871))

(declare-fun m!1710873 () Bool)

(assert (=> b!1466273 m!1710873))

(declare-fun m!1710875 () Bool)

(assert (=> b!1466273 m!1710875))

(declare-fun m!1710877 () Bool)

(assert (=> b!1466271 m!1710877))

(declare-fun m!1710879 () Bool)

(assert (=> b!1466271 m!1710879))

(declare-fun m!1710881 () Bool)

(assert (=> b!1466270 m!1710881))

(declare-fun m!1710883 () Bool)

(assert (=> b!1466274 m!1710883))

(declare-fun m!1710885 () Bool)

(assert (=> b!1466274 m!1710885))

(declare-fun m!1710887 () Bool)

(assert (=> b!1466274 m!1710887))

(assert (=> b!1466274 m!1710887))

(declare-fun m!1710889 () Bool)

(assert (=> b!1466274 m!1710889))

(declare-fun m!1710891 () Bool)

(assert (=> b!1466272 m!1710891))

(declare-fun m!1710893 () Bool)

(assert (=> b!1466263 m!1710893))

(declare-fun m!1710895 () Bool)

(assert (=> b!1466264 m!1710895))

(check-sat (not b_next!37325) (not b!1466266) b_and!100095 (not b!1466273) (not b_next!37323) (not b!1466272) (not b!1466264) b_and!100091 (not b_next!37321) (not b!1466270) (not b!1466271) (not b!1466269) (not b!1466263) (not b_next!37319) b_and!100093 (not b!1466274) b_and!100089 (not b!1466267))
(check-sat (not b_next!37325) b_and!100095 (not b_next!37323) b_and!100089 b_and!100091 (not b_next!37321) (not b_next!37319) b_and!100093)
