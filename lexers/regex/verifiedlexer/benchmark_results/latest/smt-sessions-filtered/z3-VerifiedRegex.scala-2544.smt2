; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137150 () Bool)

(assert start!137150)

(declare-fun b!1466329 () Bool)

(declare-fun b_free!36631 () Bool)

(declare-fun b_next!37335 () Bool)

(assert (=> b!1466329 (= b_free!36631 (not b_next!37335))))

(declare-fun tp!412336 () Bool)

(declare-fun b_and!100105 () Bool)

(assert (=> b!1466329 (= tp!412336 b_and!100105)))

(declare-fun b_free!36633 () Bool)

(declare-fun b_next!37337 () Bool)

(assert (=> b!1466329 (= b_free!36633 (not b_next!37337))))

(declare-fun tp!412332 () Bool)

(declare-fun b_and!100107 () Bool)

(assert (=> b!1466329 (= tp!412332 b_and!100107)))

(declare-fun b!1466327 () Bool)

(declare-fun b_free!36635 () Bool)

(declare-fun b_next!37339 () Bool)

(assert (=> b!1466327 (= b_free!36635 (not b_next!37339))))

(declare-fun tp!412335 () Bool)

(declare-fun b_and!100109 () Bool)

(assert (=> b!1466327 (= tp!412335 b_and!100109)))

(declare-fun b_free!36637 () Bool)

(declare-fun b_next!37341 () Bool)

(assert (=> b!1466327 (= b_free!36637 (not b_next!37341))))

(declare-fun tp!412334 () Bool)

(declare-fun b_and!100111 () Bool)

(assert (=> b!1466327 (= tp!412334 b_and!100111)))

(declare-fun res!663819 () Bool)

(declare-fun e!935526 () Bool)

(assert (=> start!137150 (=> (not res!663819) (not e!935526))))

(declare-datatypes ((LexerInterface!2343 0))(
  ( (LexerInterfaceExt!2340 (__x!9344 Int)) (Lexer!2341) )
))
(declare-fun thiss!20360 () LexerInterface!2343)

(declare-datatypes ((String!18140 0))(
  ( (String!18141 (value!86201 String)) )
))
(declare-datatypes ((List!15299 0))(
  ( (Nil!15233) (Cons!15233 (h!20634 (_ BitVec 16)) (t!134998 List!15299)) )
))
(declare-datatypes ((TokenValue!2777 0))(
  ( (FloatLiteralValue!5554 (text!19884 List!15299)) (TokenValueExt!2776 (__x!9345 Int)) (Broken!13885 (value!86202 List!15299)) (Object!2842) (End!2777) (Def!2777) (Underscore!2777) (Match!2777) (Else!2777) (Error!2777) (Case!2777) (If!2777) (Extends!2777) (Abstract!2777) (Class!2777) (Val!2777) (DelimiterValue!5554 (del!2837 List!15299)) (KeywordValue!2783 (value!86203 List!15299)) (CommentValue!5554 (value!86204 List!15299)) (WhitespaceValue!5554 (value!86205 List!15299)) (IndentationValue!2777 (value!86206 List!15299)) (String!18142) (Int32!2777) (Broken!13886 (value!86207 List!15299)) (Boolean!2778) (Unit!25014) (OperatorValue!2780 (op!2837 List!15299)) (IdentifierValue!5554 (value!86208 List!15299)) (IdentifierValue!5555 (value!86209 List!15299)) (WhitespaceValue!5555 (value!86210 List!15299)) (True!5554) (False!5554) (Broken!13887 (value!86211 List!15299)) (Broken!13888 (value!86212 List!15299)) (True!5555) (RightBrace!2777) (RightBracket!2777) (Colon!2777) (Null!2777) (Comma!2777) (LeftBracket!2777) (False!5555) (LeftBrace!2777) (ImaginaryLiteralValue!2777 (text!19885 List!15299)) (StringLiteralValue!8331 (value!86213 List!15299)) (EOFValue!2777 (value!86214 List!15299)) (IdentValue!2777 (value!86215 List!15299)) (DelimiterValue!5555 (value!86216 List!15299)) (DedentValue!2777 (value!86217 List!15299)) (NewLineValue!2777 (value!86218 List!15299)) (IntegerValue!8331 (value!86219 (_ BitVec 32)) (text!19886 List!15299)) (IntegerValue!8332 (value!86220 Int) (text!19887 List!15299)) (Times!2777) (Or!2777) (Equal!2777) (Minus!2777) (Broken!13889 (value!86221 List!15299)) (And!2777) (Div!2777) (LessEqual!2777) (Mod!2777) (Concat!6778) (Not!2777) (Plus!2777) (SpaceValue!2777 (value!86222 List!15299)) (IntegerValue!8333 (value!86223 Int) (text!19888 List!15299)) (StringLiteralValue!8332 (text!19889 List!15299)) (FloatLiteralValue!5555 (text!19890 List!15299)) (BytesLiteralValue!2777 (value!86224 List!15299)) (CommentValue!5555 (value!86225 List!15299)) (StringLiteralValue!8333 (value!86226 List!15299)) (ErrorTokenValue!2777 (msg!2838 List!15299)) )
))
(declare-datatypes ((C!8180 0))(
  ( (C!8181 (val!4660 Int)) )
))
(declare-datatypes ((List!15300 0))(
  ( (Nil!15234) (Cons!15234 (h!20635 C!8180) (t!134999 List!15300)) )
))
(declare-datatypes ((IArray!10391 0))(
  ( (IArray!10392 (innerList!5253 List!15300)) )
))
(declare-datatypes ((Conc!5193 0))(
  ( (Node!5193 (left!12935 Conc!5193) (right!13265 Conc!5193) (csize!10616 Int) (cheight!5404 Int)) (Leaf!7738 (xs!7948 IArray!10391) (csize!10617 Int)) (Empty!5193) )
))
(declare-datatypes ((BalanceConc!10326 0))(
  ( (BalanceConc!10327 (c!241737 Conc!5193)) )
))
(declare-datatypes ((TokenValueInjection!5214 0))(
  ( (TokenValueInjection!5215 (toValue!3998 Int) (toChars!3857 Int)) )
))
(declare-datatypes ((Regex!4001 0))(
  ( (ElementMatch!4001 (c!241738 C!8180)) (Concat!6779 (regOne!8514 Regex!4001) (regTwo!8514 Regex!4001)) (EmptyExpr!4001) (Star!4001 (reg!4330 Regex!4001)) (EmptyLang!4001) (Union!4001 (regOne!8515 Regex!4001) (regTwo!8515 Regex!4001)) )
))
(declare-datatypes ((Rule!5174 0))(
  ( (Rule!5175 (regex!2687 Regex!4001) (tag!2951 String!18140) (isSeparator!2687 Bool) (transformation!2687 TokenValueInjection!5214)) )
))
(declare-datatypes ((Token!5036 0))(
  ( (Token!5037 (value!86227 TokenValue!2777) (rule!4464 Rule!5174) (size!12453 Int) (originalCharacters!3549 List!15300)) )
))
(declare-datatypes ((List!15301 0))(
  ( (Nil!15235) (Cons!15235 (h!20636 Token!5036) (t!135000 List!15301)) )
))
(declare-fun tokens1!47 () List!15301)

(get-info :version)

(assert (=> start!137150 (= res!663819 (and ((_ is Lexer!2341) thiss!20360) ((_ is Cons!15235) tokens1!47)))))

(assert (=> start!137150 e!935526))

(assert (=> start!137150 true))

(declare-fun e!935525 () Bool)

(assert (=> start!137150 e!935525))

(declare-fun e!935520 () Bool)

(assert (=> start!137150 e!935520))

(declare-fun b!1466325 () Bool)

(declare-fun tokens2!49 () List!15301)

(declare-fun e!935518 () Bool)

(declare-fun tp!412328 () Bool)

(declare-fun inv!20367 (Token!5036) Bool)

(assert (=> b!1466325 (= e!935520 (and (inv!20367 (h!20636 tokens2!49)) e!935518 tp!412328))))

(declare-fun b!1466326 () Bool)

(declare-fun tp!412329 () Bool)

(declare-fun e!935519 () Bool)

(declare-fun e!935515 () Bool)

(declare-fun inv!21 (TokenValue!2777) Bool)

(assert (=> b!1466326 (= e!935519 (and (inv!21 (value!86227 (h!20636 tokens1!47))) e!935515 tp!412329))))

(declare-fun e!935516 () Bool)

(assert (=> b!1466327 (= e!935516 (and tp!412335 tp!412334))))

(declare-fun e!935524 () Bool)

(declare-fun b!1466328 () Bool)

(declare-fun tp!412330 () Bool)

(assert (=> b!1466328 (= e!935518 (and (inv!21 (value!86227 (h!20636 tokens2!49))) e!935524 tp!412330))))

(declare-fun e!935514 () Bool)

(assert (=> b!1466329 (= e!935514 (and tp!412336 tp!412332))))

(declare-fun b!1466330 () Bool)

(declare-fun res!663818 () Bool)

(assert (=> b!1466330 (=> (not res!663818) (not e!935526))))

(declare-fun isEmpty!9573 (List!15301) Bool)

(assert (=> b!1466330 (= res!663818 (not (isEmpty!9573 (t!135000 tokens1!47))))))

(declare-fun b!1466331 () Bool)

(declare-fun tp!412331 () Bool)

(declare-fun inv!20364 (String!18140) Bool)

(declare-fun inv!20368 (TokenValueInjection!5214) Bool)

(assert (=> b!1466331 (= e!935515 (and tp!412331 (inv!20364 (tag!2951 (rule!4464 (h!20636 tokens1!47)))) (inv!20368 (transformation!2687 (rule!4464 (h!20636 tokens1!47)))) e!935514))))

(declare-fun b!1466332 () Bool)

(assert (=> b!1466332 (= e!935526 (not true))))

(declare-fun printList!737 (LexerInterface!2343 List!15301) List!15300)

(declare-fun ++!4126 (List!15301 List!15301) List!15301)

(declare-fun ++!4127 (List!15300 List!15300) List!15300)

(assert (=> b!1466332 (= (printList!737 thiss!20360 (++!4126 (t!135000 tokens1!47) tokens2!49)) (++!4127 (printList!737 thiss!20360 (t!135000 tokens1!47)) (printList!737 thiss!20360 tokens2!49)))))

(declare-datatypes ((Unit!25015 0))(
  ( (Unit!25016) )
))
(declare-fun lt!510571 () Unit!25015)

(declare-fun lemmaPrintConcatSameAsConcatPrint!82 (LexerInterface!2343 List!15301 List!15301) Unit!25015)

(assert (=> b!1466332 (= lt!510571 (lemmaPrintConcatSameAsConcatPrint!82 thiss!20360 (t!135000 tokens1!47) tokens2!49))))

(declare-fun b!1466333 () Bool)

(declare-fun tp!412327 () Bool)

(assert (=> b!1466333 (= e!935525 (and (inv!20367 (h!20636 tokens1!47)) e!935519 tp!412327))))

(declare-fun b!1466334 () Bool)

(declare-fun tp!412333 () Bool)

(assert (=> b!1466334 (= e!935524 (and tp!412333 (inv!20364 (tag!2951 (rule!4464 (h!20636 tokens2!49)))) (inv!20368 (transformation!2687 (rule!4464 (h!20636 tokens2!49)))) e!935516))))

(assert (= (and start!137150 res!663819) b!1466330))

(assert (= (and b!1466330 res!663818) b!1466332))

(assert (= b!1466331 b!1466329))

(assert (= b!1466326 b!1466331))

(assert (= b!1466333 b!1466326))

(assert (= (and start!137150 ((_ is Cons!15235) tokens1!47)) b!1466333))

(assert (= b!1466334 b!1466327))

(assert (= b!1466328 b!1466334))

(assert (= b!1466325 b!1466328))

(assert (= (and start!137150 ((_ is Cons!15235) tokens2!49)) b!1466325))

(declare-fun m!1710927 () Bool)

(assert (=> b!1466331 m!1710927))

(declare-fun m!1710929 () Bool)

(assert (=> b!1466331 m!1710929))

(declare-fun m!1710931 () Bool)

(assert (=> b!1466332 m!1710931))

(declare-fun m!1710933 () Bool)

(assert (=> b!1466332 m!1710933))

(declare-fun m!1710935 () Bool)

(assert (=> b!1466332 m!1710935))

(assert (=> b!1466332 m!1710933))

(declare-fun m!1710937 () Bool)

(assert (=> b!1466332 m!1710937))

(declare-fun m!1710939 () Bool)

(assert (=> b!1466332 m!1710939))

(declare-fun m!1710941 () Bool)

(assert (=> b!1466332 m!1710941))

(assert (=> b!1466332 m!1710937))

(assert (=> b!1466332 m!1710939))

(declare-fun m!1710943 () Bool)

(assert (=> b!1466328 m!1710943))

(declare-fun m!1710945 () Bool)

(assert (=> b!1466333 m!1710945))

(declare-fun m!1710947 () Bool)

(assert (=> b!1466330 m!1710947))

(declare-fun m!1710949 () Bool)

(assert (=> b!1466326 m!1710949))

(declare-fun m!1710951 () Bool)

(assert (=> b!1466334 m!1710951))

(declare-fun m!1710953 () Bool)

(assert (=> b!1466334 m!1710953))

(declare-fun m!1710955 () Bool)

(assert (=> b!1466325 m!1710955))

(check-sat (not b!1466334) b_and!100107 (not b!1466332) (not b!1466326) (not b_next!37337) (not b!1466330) (not b_next!37335) (not b!1466331) (not b!1466328) (not b_next!37341) (not b!1466333) (not b!1466325) (not b_next!37339) b_and!100105 b_and!100111 b_and!100109)
(check-sat b_and!100107 (not b_next!37337) (not b_next!37335) (not b_next!37341) (not b_next!37339) b_and!100105 b_and!100111 b_and!100109)
