; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!405344 () Bool)

(assert start!405344)

(declare-fun b!4236085 () Bool)

(declare-fun b_free!125155 () Bool)

(declare-fun b_next!125859 () Bool)

(assert (=> b!4236085 (= b_free!125155 (not b_next!125859))))

(declare-fun tp!1297452 () Bool)

(declare-fun b_and!334577 () Bool)

(assert (=> b!4236085 (= tp!1297452 b_and!334577)))

(declare-fun b_free!125157 () Bool)

(declare-fun b_next!125861 () Bool)

(assert (=> b!4236085 (= b_free!125157 (not b_next!125861))))

(declare-fun tp!1297457 () Bool)

(declare-fun b_and!334579 () Bool)

(assert (=> b!4236085 (= tp!1297457 b_and!334579)))

(declare-fun b!4236069 () Bool)

(declare-fun b_free!125159 () Bool)

(declare-fun b_next!125863 () Bool)

(assert (=> b!4236069 (= b_free!125159 (not b_next!125863))))

(declare-fun tp!1297454 () Bool)

(declare-fun b_and!334581 () Bool)

(assert (=> b!4236069 (= tp!1297454 b_and!334581)))

(declare-fun b_free!125161 () Bool)

(declare-fun b_next!125865 () Bool)

(assert (=> b!4236069 (= b_free!125161 (not b_next!125865))))

(declare-fun tp!1297456 () Bool)

(declare-fun b_and!334583 () Bool)

(assert (=> b!4236069 (= tp!1297456 b_and!334583)))

(declare-fun b!4236084 () Bool)

(declare-fun b_free!125163 () Bool)

(declare-fun b_next!125867 () Bool)

(assert (=> b!4236084 (= b_free!125163 (not b_next!125867))))

(declare-fun tp!1297465 () Bool)

(declare-fun b_and!334585 () Bool)

(assert (=> b!4236084 (= tp!1297465 b_and!334585)))

(declare-fun b_free!125165 () Bool)

(declare-fun b_next!125869 () Bool)

(assert (=> b!4236084 (= b_free!125165 (not b_next!125869))))

(declare-fun tp!1297462 () Bool)

(declare-fun b_and!334587 () Bool)

(assert (=> b!4236084 (= tp!1297462 b_and!334587)))

(declare-fun e!2630366 () Bool)

(assert (=> b!4236069 (= e!2630366 (and tp!1297454 tp!1297456))))

(declare-fun b!4236070 () Bool)

(declare-fun res!1742179 () Bool)

(declare-fun e!2630368 () Bool)

(assert (=> b!4236070 (=> (not res!1742179) (not e!2630368))))

(declare-datatypes ((C!25826 0))(
  ( (C!25827 (val!15103 Int)) )
))
(declare-datatypes ((List!46930 0))(
  ( (Nil!46806) (Cons!46806 (h!52226 C!25826) (t!349777 List!46930)) )
))
(declare-fun longerInput!51 () List!46930)

(declare-fun isEmpty!27656 (List!46930) Bool)

(assert (=> b!4236070 (= res!1742179 (not (isEmpty!27656 longerInput!51)))))

(declare-fun e!2630375 () Bool)

(declare-fun tp!1297451 () Bool)

(declare-fun b!4236071 () Bool)

(declare-datatypes ((List!46931 0))(
  ( (Nil!46807) (Cons!46807 (h!52227 (_ BitVec 16)) (t!349778 List!46931)) )
))
(declare-datatypes ((TokenValue!8139 0))(
  ( (FloatLiteralValue!16278 (text!57418 List!46931)) (TokenValueExt!8138 (__x!28501 Int)) (Broken!40695 (value!245918 List!46931)) (Object!8262) (End!8139) (Def!8139) (Underscore!8139) (Match!8139) (Else!8139) (Error!8139) (Case!8139) (If!8139) (Extends!8139) (Abstract!8139) (Class!8139) (Val!8139) (DelimiterValue!16278 (del!8199 List!46931)) (KeywordValue!8145 (value!245919 List!46931)) (CommentValue!16278 (value!245920 List!46931)) (WhitespaceValue!16278 (value!245921 List!46931)) (IndentationValue!8139 (value!245922 List!46931)) (String!54626) (Int32!8139) (Broken!40696 (value!245923 List!46931)) (Boolean!8140) (Unit!65929) (OperatorValue!8142 (op!8199 List!46931)) (IdentifierValue!16278 (value!245924 List!46931)) (IdentifierValue!16279 (value!245925 List!46931)) (WhitespaceValue!16279 (value!245926 List!46931)) (True!16278) (False!16278) (Broken!40697 (value!245927 List!46931)) (Broken!40698 (value!245928 List!46931)) (True!16279) (RightBrace!8139) (RightBracket!8139) (Colon!8139) (Null!8139) (Comma!8139) (LeftBracket!8139) (False!16279) (LeftBrace!8139) (ImaginaryLiteralValue!8139 (text!57419 List!46931)) (StringLiteralValue!24417 (value!245929 List!46931)) (EOFValue!8139 (value!245930 List!46931)) (IdentValue!8139 (value!245931 List!46931)) (DelimiterValue!16279 (value!245932 List!46931)) (DedentValue!8139 (value!245933 List!46931)) (NewLineValue!8139 (value!245934 List!46931)) (IntegerValue!24417 (value!245935 (_ BitVec 32)) (text!57420 List!46931)) (IntegerValue!24418 (value!245936 Int) (text!57421 List!46931)) (Times!8139) (Or!8139) (Equal!8139) (Minus!8139) (Broken!40699 (value!245937 List!46931)) (And!8139) (Div!8139) (LessEqual!8139) (Mod!8139) (Concat!20953) (Not!8139) (Plus!8139) (SpaceValue!8139 (value!245938 List!46931)) (IntegerValue!24419 (value!245939 Int) (text!57422 List!46931)) (StringLiteralValue!24418 (text!57423 List!46931)) (FloatLiteralValue!16279 (text!57424 List!46931)) (BytesLiteralValue!8139 (value!245940 List!46931)) (CommentValue!16279 (value!245941 List!46931)) (StringLiteralValue!24419 (value!245942 List!46931)) (ErrorTokenValue!8139 (msg!8200 List!46931)) )
))
(declare-datatypes ((Regex!12814 0))(
  ( (ElementMatch!12814 (c!719971 C!25826)) (Concat!20954 (regOne!26140 Regex!12814) (regTwo!26140 Regex!12814)) (EmptyExpr!12814) (Star!12814 (reg!13143 Regex!12814)) (EmptyLang!12814) (Union!12814 (regOne!26141 Regex!12814) (regTwo!26141 Regex!12814)) )
))
(declare-datatypes ((String!54627 0))(
  ( (String!54628 (value!245943 String)) )
))
(declare-datatypes ((IArray!28245 0))(
  ( (IArray!28246 (innerList!14180 List!46930)) )
))
(declare-datatypes ((Conc!14120 0))(
  ( (Node!14120 (left!34809 Conc!14120) (right!35139 Conc!14120) (csize!28470 Int) (cheight!14331 Int)) (Leaf!21834 (xs!17426 IArray!28245) (csize!28471 Int)) (Empty!14120) )
))
(declare-datatypes ((BalanceConc!27834 0))(
  ( (BalanceConc!27835 (c!719972 Conc!14120)) )
))
(declare-datatypes ((TokenValueInjection!15706 0))(
  ( (TokenValueInjection!15707 (toValue!10653 Int) (toChars!10512 Int)) )
))
(declare-datatypes ((Rule!15618 0))(
  ( (Rule!15619 (regex!7909 Regex!12814) (tag!8773 String!54627) (isSeparator!7909 Bool) (transformation!7909 TokenValueInjection!15706)) )
))
(declare-datatypes ((Token!14444 0))(
  ( (Token!14445 (value!245944 TokenValue!8139) (rule!11033 Rule!15618) (size!34290 Int) (originalCharacters!8253 List!46930)) )
))
(declare-datatypes ((List!46932 0))(
  ( (Nil!46808) (Cons!46808 (h!52228 Token!14444) (t!349779 List!46932)) )
))
(declare-fun tokens!581 () List!46932)

(declare-fun inv!61535 (String!54627) Bool)

(declare-fun inv!61538 (TokenValueInjection!15706) Bool)

(assert (=> b!4236071 (= e!2630375 (and tp!1297451 (inv!61535 (tag!8773 (rule!11033 (h!52228 tokens!581)))) (inv!61538 (transformation!7909 (rule!11033 (h!52228 tokens!581)))) e!2630366))))

(declare-fun b!4236072 () Bool)

(declare-fun e!2630369 () Bool)

(declare-fun e!2630362 () Bool)

(declare-fun tp!1297467 () Bool)

(declare-fun addTokens!17 () List!46932)

(assert (=> b!4236072 (= e!2630362 (and tp!1297467 (inv!61535 (tag!8773 (rule!11033 (h!52228 addTokens!17)))) (inv!61538 (transformation!7909 (rule!11033 (h!52228 addTokens!17)))) e!2630369))))

(declare-fun b!4236073 () Bool)

(declare-fun res!1742183 () Bool)

(assert (=> b!4236073 (=> (not res!1742183) (not e!2630368))))

(declare-datatypes ((LexerInterface!7504 0))(
  ( (LexerInterfaceExt!7501 (__x!28502 Int)) (Lexer!7502) )
))
(declare-fun thiss!21540 () LexerInterface!7504)

(declare-datatypes ((List!46933 0))(
  ( (Nil!46809) (Cons!46809 (h!52229 Rule!15618) (t!349780 List!46933)) )
))
(declare-fun rules!2932 () List!46933)

(declare-fun rulesInvariant!6615 (LexerInterface!7504 List!46933) Bool)

(assert (=> b!4236073 (= res!1742183 (rulesInvariant!6615 thiss!21540 rules!2932))))

(declare-fun b!4236074 () Bool)

(declare-fun res!1742182 () Bool)

(assert (=> b!4236074 (=> (not res!1742182) (not e!2630368))))

(declare-fun isEmpty!27657 (List!46933) Bool)

(assert (=> b!4236074 (= res!1742182 (not (isEmpty!27657 rules!2932)))))

(declare-fun res!1742185 () Bool)

(assert (=> start!405344 (=> (not res!1742185) (not e!2630368))))

(assert (=> start!405344 (= res!1742185 (is-Lexer!7502 thiss!21540))))

(assert (=> start!405344 e!2630368))

(assert (=> start!405344 true))

(declare-fun e!2630374 () Bool)

(assert (=> start!405344 e!2630374))

(declare-fun e!2630376 () Bool)

(assert (=> start!405344 e!2630376))

(declare-fun e!2630364 () Bool)

(assert (=> start!405344 e!2630364))

(declare-fun e!2630370 () Bool)

(assert (=> start!405344 e!2630370))

(declare-fun e!2630367 () Bool)

(assert (=> start!405344 e!2630367))

(declare-fun e!2630380 () Bool)

(assert (=> start!405344 e!2630380))

(declare-fun b!4236075 () Bool)

(declare-fun res!1742178 () Bool)

(assert (=> b!4236075 (=> (not res!1742178) (not e!2630368))))

(declare-fun shorterInput!51 () List!46930)

(declare-fun size!34291 (List!46930) Int)

(assert (=> b!4236075 (= res!1742178 (> (size!34291 longerInput!51) (size!34291 shorterInput!51)))))

(declare-fun b!4236076 () Bool)

(declare-fun e!2630365 () Bool)

(declare-fun tp!1297460 () Bool)

(assert (=> b!4236076 (= e!2630374 (and e!2630365 tp!1297460))))

(declare-fun e!2630373 () Bool)

(declare-fun tp!1297458 () Bool)

(declare-fun b!4236077 () Bool)

(declare-fun inv!61539 (Token!14444) Bool)

(assert (=> b!4236077 (= e!2630367 (and (inv!61539 (h!52228 tokens!581)) e!2630373 tp!1297458))))

(declare-fun b!4236078 () Bool)

(declare-fun tp_is_empty!22619 () Bool)

(declare-fun tp!1297463 () Bool)

(assert (=> b!4236078 (= e!2630364 (and tp_is_empty!22619 tp!1297463))))

(declare-fun tp!1297466 () Bool)

(declare-fun b!4236079 () Bool)

(declare-fun inv!21 (TokenValue!8139) Bool)

(assert (=> b!4236079 (= e!2630373 (and (inv!21 (value!245944 (h!52228 tokens!581))) e!2630375 tp!1297466))))

(declare-fun b!4236080 () Bool)

(declare-fun res!1742181 () Bool)

(assert (=> b!4236080 (=> (not res!1742181) (not e!2630368))))

(declare-fun suffix!1262 () List!46930)

(declare-datatypes ((tuple2!44390 0))(
  ( (tuple2!44391 (_1!25329 List!46932) (_2!25329 List!46930)) )
))
(declare-fun lexList!2010 (LexerInterface!7504 List!46933 List!46930) tuple2!44390)

(assert (=> b!4236080 (= res!1742181 (= (lexList!2010 thiss!21540 rules!2932 longerInput!51) (tuple2!44391 tokens!581 suffix!1262)))))

(declare-fun b!4236081 () Bool)

(declare-fun tp!1297455 () Bool)

(assert (=> b!4236081 (= e!2630380 (and tp_is_empty!22619 tp!1297455))))

(declare-fun b!4236082 () Bool)

(declare-fun res!1742180 () Bool)

(assert (=> b!4236082 (=> (not res!1742180) (not e!2630368))))

(declare-fun size!34292 (List!46932) Int)

(assert (=> b!4236082 (= res!1742180 (> (size!34292 addTokens!17) 0))))

(declare-fun b!4236083 () Bool)

(assert (=> b!4236083 (= e!2630368 false)))

(declare-fun lt!1505809 () Bool)

(declare-fun rulesValidInductive!2963 (LexerInterface!7504 List!46933) Bool)

(assert (=> b!4236083 (= lt!1505809 (rulesValidInductive!2963 thiss!21540 rules!2932))))

(declare-fun e!2630379 () Bool)

(assert (=> b!4236084 (= e!2630379 (and tp!1297465 tp!1297462))))

(assert (=> b!4236085 (= e!2630369 (and tp!1297452 tp!1297457))))

(declare-fun b!4236086 () Bool)

(declare-fun tp!1297453 () Bool)

(assert (=> b!4236086 (= e!2630370 (and tp_is_empty!22619 tp!1297453))))

(declare-fun b!4236087 () Bool)

(declare-fun res!1742184 () Bool)

(assert (=> b!4236087 (=> (not res!1742184) (not e!2630368))))

(declare-fun isEmpty!27658 (List!46932) Bool)

(assert (=> b!4236087 (= res!1742184 (not (isEmpty!27658 addTokens!17)))))

(declare-fun tp!1297459 () Bool)

(declare-fun b!4236088 () Bool)

(assert (=> b!4236088 (= e!2630365 (and tp!1297459 (inv!61535 (tag!8773 (h!52229 rules!2932))) (inv!61538 (transformation!7909 (h!52229 rules!2932))) e!2630379))))

(declare-fun b!4236089 () Bool)

(declare-fun e!2630372 () Bool)

(declare-fun tp!1297464 () Bool)

(assert (=> b!4236089 (= e!2630372 (and (inv!21 (value!245944 (h!52228 addTokens!17))) e!2630362 tp!1297464))))

(declare-fun tp!1297461 () Bool)

(declare-fun b!4236090 () Bool)

(assert (=> b!4236090 (= e!2630376 (and (inv!61539 (h!52228 addTokens!17)) e!2630372 tp!1297461))))

(assert (= (and start!405344 res!1742185) b!4236074))

(assert (= (and b!4236074 res!1742182) b!4236073))

(assert (= (and b!4236073 res!1742183) b!4236070))

(assert (= (and b!4236070 res!1742179) b!4236075))

(assert (= (and b!4236075 res!1742178) b!4236080))

(assert (= (and b!4236080 res!1742181) b!4236087))

(assert (= (and b!4236087 res!1742184) b!4236082))

(assert (= (and b!4236082 res!1742180) b!4236083))

(assert (= b!4236088 b!4236084))

(assert (= b!4236076 b!4236088))

(assert (= (and start!405344 (is-Cons!46809 rules!2932)) b!4236076))

(assert (= b!4236072 b!4236085))

(assert (= b!4236089 b!4236072))

(assert (= b!4236090 b!4236089))

(assert (= (and start!405344 (is-Cons!46808 addTokens!17)) b!4236090))

(assert (= (and start!405344 (is-Cons!46806 shorterInput!51)) b!4236078))

(assert (= (and start!405344 (is-Cons!46806 suffix!1262)) b!4236086))

(assert (= b!4236071 b!4236069))

(assert (= b!4236079 b!4236071))

(assert (= b!4236077 b!4236079))

(assert (= (and start!405344 (is-Cons!46808 tokens!581)) b!4236077))

(assert (= (and start!405344 (is-Cons!46806 longerInput!51)) b!4236081))

(declare-fun m!4821707 () Bool)

(assert (=> b!4236072 m!4821707))

(declare-fun m!4821709 () Bool)

(assert (=> b!4236072 m!4821709))

(declare-fun m!4821711 () Bool)

(assert (=> b!4236083 m!4821711))

(declare-fun m!4821713 () Bool)

(assert (=> b!4236070 m!4821713))

(declare-fun m!4821715 () Bool)

(assert (=> b!4236075 m!4821715))

(declare-fun m!4821717 () Bool)

(assert (=> b!4236075 m!4821717))

(declare-fun m!4821719 () Bool)

(assert (=> b!4236088 m!4821719))

(declare-fun m!4821721 () Bool)

(assert (=> b!4236088 m!4821721))

(declare-fun m!4821723 () Bool)

(assert (=> b!4236071 m!4821723))

(declare-fun m!4821725 () Bool)

(assert (=> b!4236071 m!4821725))

(declare-fun m!4821727 () Bool)

(assert (=> b!4236077 m!4821727))

(declare-fun m!4821729 () Bool)

(assert (=> b!4236082 m!4821729))

(declare-fun m!4821731 () Bool)

(assert (=> b!4236089 m!4821731))

(declare-fun m!4821733 () Bool)

(assert (=> b!4236087 m!4821733))

(declare-fun m!4821735 () Bool)

(assert (=> b!4236080 m!4821735))

(declare-fun m!4821737 () Bool)

(assert (=> b!4236073 m!4821737))

(declare-fun m!4821739 () Bool)

(assert (=> b!4236090 m!4821739))

(declare-fun m!4821741 () Bool)

(assert (=> b!4236074 m!4821741))

(declare-fun m!4821743 () Bool)

(assert (=> b!4236079 m!4821743))

(push 1)

(assert (not b!4236075))

(assert b_and!334585)

(assert (not b!4236082))

(assert (not b_next!125865))

(assert (not b!4236076))

(assert (not b!4236089))

(assert b_and!334577)

(assert (not b!4236071))

(assert (not b!4236081))

(assert (not b!4236083))

(assert b_and!334583)

(assert (not b!4236073))

(assert (not b_next!125861))

(assert (not b_next!125869))

(assert (not b_next!125867))

(assert (not b!4236074))

(assert (not b!4236088))

(assert (not b!4236087))

(assert (not b!4236086))

(assert (not b!4236080))

(assert b_and!334581)

(assert (not b!4236090))

(assert (not b_next!125863))

(assert (not b!4236078))

(assert b_and!334579)

(assert (not b!4236077))

(assert b_and!334587)

(assert (not b_next!125859))

(assert (not b!4236079))

(assert tp_is_empty!22619)

(assert (not b!4236072))

(assert (not b!4236070))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!125867))

(assert b_and!334585)

(assert (not b_next!125865))

(assert b_and!334579)

(assert b_and!334577)

(assert b_and!334583)

(assert (not b_next!125861))

(assert (not b_next!125869))

(assert b_and!334581)

(assert (not b_next!125863))

(assert b_and!334587)

(assert (not b_next!125859))

(check-sat)

(pop 1)

