; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!526612 () Bool)

(assert start!526612)

(declare-fun b!4985151 () Bool)

(declare-fun b_free!133167 () Bool)

(declare-fun b_next!133957 () Bool)

(assert (=> b!4985151 (= b_free!133167 (not b_next!133957))))

(declare-fun tp!1397217 () Bool)

(declare-fun b_and!349859 () Bool)

(assert (=> b!4985151 (= tp!1397217 b_and!349859)))

(declare-fun b_free!133169 () Bool)

(declare-fun b_next!133959 () Bool)

(assert (=> b!4985151 (= b_free!133169 (not b_next!133959))))

(declare-fun tp!1397219 () Bool)

(declare-fun b_and!349861 () Bool)

(assert (=> b!4985151 (= tp!1397219 b_and!349861)))

(declare-fun b!4985160 () Bool)

(declare-fun e!3115678 () Bool)

(assert (=> b!4985160 (= e!3115678 true)))

(declare-fun b!4985159 () Bool)

(declare-fun e!3115677 () Bool)

(assert (=> b!4985159 (= e!3115677 e!3115678)))

(declare-fun b!4985149 () Bool)

(assert (=> b!4985149 e!3115677))

(assert (= b!4985159 b!4985160))

(assert (= b!4985149 b!4985159))

(declare-fun order!26587 () Int)

(declare-fun lambda!248003 () Int)

(declare-fun order!26589 () Int)

(declare-datatypes ((C!27650 0))(
  ( (C!27651 (val!23191 Int)) )
))
(declare-datatypes ((List!57730 0))(
  ( (Nil!57606) (Cons!57606 (h!64054 C!27650) (t!369942 List!57730)) )
))
(declare-datatypes ((IArray!30499 0))(
  ( (IArray!30500 (innerList!15307 List!57730)) )
))
(declare-datatypes ((List!57731 0))(
  ( (Nil!57607) (Cons!57607 (h!64055 (_ BitVec 16)) (t!369943 List!57731)) )
))
(declare-datatypes ((Regex!13700 0))(
  ( (ElementMatch!13700 (c!850678 C!27650)) (Concat!22477 (regOne!27912 Regex!13700) (regTwo!27912 Regex!13700)) (EmptyExpr!13700) (Star!13700 (reg!14029 Regex!13700)) (EmptyLang!13700) (Union!13700 (regOne!27913 Regex!13700) (regTwo!27913 Regex!13700)) )
))
(declare-datatypes ((Conc!15219 0))(
  ( (Node!15219 (left!42133 Conc!15219) (right!42463 Conc!15219) (csize!30668 Int) (cheight!15430 Int)) (Leaf!25278 (xs!18545 IArray!30499) (csize!30669 Int)) (Empty!15219) )
))
(declare-datatypes ((BalanceConc!29868 0))(
  ( (BalanceConc!29869 (c!850679 Conc!15219)) )
))
(declare-datatypes ((TokenValue!8777 0))(
  ( (FloatLiteralValue!17554 (text!61884 List!57731)) (TokenValueExt!8776 (__x!34847 Int)) (Broken!43885 (value!270705 List!57731)) (Object!8900) (End!8777) (Def!8777) (Underscore!8777) (Match!8777) (Else!8777) (Error!8777) (Case!8777) (If!8777) (Extends!8777) (Abstract!8777) (Class!8777) (Val!8777) (DelimiterValue!17554 (del!8837 List!57731)) (KeywordValue!8783 (value!270706 List!57731)) (CommentValue!17554 (value!270707 List!57731)) (WhitespaceValue!17554 (value!270708 List!57731)) (IndentationValue!8777 (value!270709 List!57731)) (String!65760) (Int32!8777) (Broken!43886 (value!270710 List!57731)) (Boolean!8778) (Unit!148729) (OperatorValue!8780 (op!8837 List!57731)) (IdentifierValue!17554 (value!270711 List!57731)) (IdentifierValue!17555 (value!270712 List!57731)) (WhitespaceValue!17555 (value!270713 List!57731)) (True!17554) (False!17554) (Broken!43887 (value!270714 List!57731)) (Broken!43888 (value!270715 List!57731)) (True!17555) (RightBrace!8777) (RightBracket!8777) (Colon!8777) (Null!8777) (Comma!8777) (LeftBracket!8777) (False!17555) (LeftBrace!8777) (ImaginaryLiteralValue!8777 (text!61885 List!57731)) (StringLiteralValue!26331 (value!270716 List!57731)) (EOFValue!8777 (value!270717 List!57731)) (IdentValue!8777 (value!270718 List!57731)) (DelimiterValue!17555 (value!270719 List!57731)) (DedentValue!8777 (value!270720 List!57731)) (NewLineValue!8777 (value!270721 List!57731)) (IntegerValue!26331 (value!270722 (_ BitVec 32)) (text!61886 List!57731)) (IntegerValue!26332 (value!270723 Int) (text!61887 List!57731)) (Times!8777) (Or!8777) (Equal!8777) (Minus!8777) (Broken!43889 (value!270724 List!57731)) (And!8777) (Div!8777) (LessEqual!8777) (Mod!8777) (Concat!22478) (Not!8777) (Plus!8777) (SpaceValue!8777 (value!270725 List!57731)) (IntegerValue!26333 (value!270726 Int) (text!61888 List!57731)) (StringLiteralValue!26332 (text!61889 List!57731)) (FloatLiteralValue!17555 (text!61890 List!57731)) (BytesLiteralValue!8777 (value!270727 List!57731)) (CommentValue!17555 (value!270728 List!57731)) (StringLiteralValue!26333 (value!270729 List!57731)) (ErrorTokenValue!8777 (msg!8838 List!57731)) )
))
(declare-datatypes ((TokenValueInjection!16862 0))(
  ( (TokenValueInjection!16863 (toValue!11468 Int) (toChars!11327 Int)) )
))
(declare-datatypes ((String!65761 0))(
  ( (String!65762 (value!270730 String)) )
))
(declare-datatypes ((Rule!16734 0))(
  ( (Rule!16735 (regex!8467 Regex!13700) (tag!9331 String!65761) (isSeparator!8467 Bool) (transformation!8467 TokenValueInjection!16862)) )
))
(declare-fun rule!200 () Rule!16734)

(declare-fun dynLambda!23429 (Int Int) Int)

(declare-fun dynLambda!23430 (Int Int) Int)

(assert (=> b!4985160 (< (dynLambda!23429 order!26587 (toValue!11468 (transformation!8467 rule!200))) (dynLambda!23430 order!26589 lambda!248003))))

(declare-fun order!26591 () Int)

(declare-fun dynLambda!23431 (Int Int) Int)

(assert (=> b!4985160 (< (dynLambda!23431 order!26591 (toChars!11327 (transformation!8467 rule!200))) (dynLambda!23430 order!26589 lambda!248003))))

(declare-fun b!4985137 () Bool)

(declare-fun res!2128092 () Bool)

(declare-fun e!3115661 () Bool)

(assert (=> b!4985137 (=> res!2128092 e!3115661)))

(declare-fun lt!2060271 () Bool)

(assert (=> b!4985137 (= res!2128092 (not lt!2060271))))

(declare-fun res!2128089 () Bool)

(declare-fun e!3115665 () Bool)

(assert (=> start!526612 (=> (not res!2128089) (not e!3115665))))

(declare-datatypes ((LexerInterface!8059 0))(
  ( (LexerInterfaceExt!8056 (__x!34848 Int)) (Lexer!8057) )
))
(declare-fun thiss!16165 () LexerInterface!8059)

(assert (=> start!526612 (= res!2128089 (is-Lexer!8057 thiss!16165))))

(assert (=> start!526612 e!3115665))

(assert (=> start!526612 true))

(declare-fun e!3115666 () Bool)

(assert (=> start!526612 e!3115666))

(declare-fun totalInput!520 () BalanceConc!29868)

(declare-fun e!3115671 () Bool)

(declare-fun inv!75500 (BalanceConc!29868) Bool)

(assert (=> start!526612 (and (inv!75500 totalInput!520) e!3115671)))

(declare-fun input!1580 () BalanceConc!29868)

(declare-fun e!3115667 () Bool)

(assert (=> start!526612 (and (inv!75500 input!1580) e!3115667)))

(declare-fun b!4985138 () Bool)

(declare-fun e!3115662 () Bool)

(assert (=> b!4985138 (= e!3115665 e!3115662)))

(declare-fun res!2128090 () Bool)

(assert (=> b!4985138 (=> (not res!2128090) (not e!3115662))))

(declare-fun lt!2060259 () List!57730)

(declare-fun isSuffix!1266 (List!57730 List!57730) Bool)

(declare-fun list!18485 (BalanceConc!29868) List!57730)

(assert (=> b!4985138 (= res!2128090 (isSuffix!1266 lt!2060259 (list!18485 totalInput!520)))))

(assert (=> b!4985138 (= lt!2060259 (list!18485 input!1580))))

(declare-fun b!4985139 () Bool)

(declare-fun e!3115668 () Bool)

(assert (=> b!4985139 (= e!3115661 e!3115668)))

(declare-fun res!2128088 () Bool)

(assert (=> b!4985139 (=> res!2128088 e!3115668)))

(declare-fun lt!2060260 () BalanceConc!29868)

(declare-fun lt!2060261 () TokenValue!8777)

(declare-fun apply!13954 (TokenValueInjection!16862 BalanceConc!29868) TokenValue!8777)

(assert (=> b!4985139 (= res!2128088 (not (= (apply!13954 (transformation!8467 rule!200) lt!2060260) lt!2060261)))))

(declare-datatypes ((tuple2!62616 0))(
  ( (tuple2!62617 (_1!34611 BalanceConc!29868) (_2!34611 BalanceConc!29868)) )
))
(declare-fun lt!2060270 () tuple2!62616)

(declare-datatypes ((Unit!148730 0))(
  ( (Unit!148731) )
))
(declare-fun lt!2060266 () Unit!148730)

(declare-fun lemmaEqSameImage!1206 (TokenValueInjection!16862 BalanceConc!29868 BalanceConc!29868) Unit!148730)

(assert (=> b!4985139 (= lt!2060266 (lemmaEqSameImage!1206 (transformation!8467 rule!200) (_1!34611 lt!2060270) lt!2060260))))

(declare-fun b!4985140 () Bool)

(declare-fun e!3115672 () Bool)

(declare-datatypes ((Token!15390 0))(
  ( (Token!15391 (value!270731 TokenValue!8777) (rule!11731 Rule!16734) (size!38255 Int) (originalCharacters!8726 List!57730)) )
))
(declare-datatypes ((tuple2!62618 0))(
  ( (tuple2!62619 (_1!34612 Token!15390) (_2!34612 BalanceConc!29868)) )
))
(declare-datatypes ((Option!14553 0))(
  ( (None!14552) (Some!14552 (v!50549 tuple2!62618)) )
))
(declare-fun lt!2060272 () Option!14553)

(declare-datatypes ((tuple2!62620 0))(
  ( (tuple2!62621 (_1!34613 Token!15390) (_2!34613 List!57730)) )
))
(declare-fun lt!2060268 () tuple2!62620)

(declare-fun get!20037 (Option!14553) tuple2!62618)

(assert (=> b!4985140 (= e!3115672 (= (_1!34612 (get!20037 lt!2060272)) (_1!34613 lt!2060268)))))

(declare-fun b!4985141 () Bool)

(declare-fun e!3115660 () Bool)

(assert (=> b!4985141 (= e!3115660 e!3115661)))

(declare-fun res!2128094 () Bool)

(assert (=> b!4985141 (=> res!2128094 e!3115661)))

(declare-datatypes ((Option!14554 0))(
  ( (None!14553) (Some!14553 (v!50550 tuple2!62620)) )
))
(declare-fun lt!2060275 () Option!14554)

(declare-fun isDefined!11462 (Option!14554) Bool)

(assert (=> b!4985141 (= res!2128094 (not (= lt!2060271 (isDefined!11462 lt!2060275))))))

(declare-fun isDefined!11463 (Option!14553) Bool)

(assert (=> b!4985141 (= lt!2060271 (isDefined!11463 lt!2060272))))

(declare-fun maxPrefixOneRule!3683 (LexerInterface!8059 Rule!16734 List!57730) Option!14554)

(assert (=> b!4985141 (= lt!2060275 (maxPrefixOneRule!3683 thiss!16165 rule!200 lt!2060259))))

(declare-fun lt!2060263 () Token!15390)

(assert (=> b!4985141 (= lt!2060272 (Some!14552 (tuple2!62619 lt!2060263 (_2!34611 lt!2060270))))))

(declare-fun lt!2060273 () Int)

(declare-fun lt!2060264 () List!57730)

(assert (=> b!4985141 (= lt!2060263 (Token!15391 lt!2060261 rule!200 lt!2060273 lt!2060264))))

(declare-fun size!38256 (BalanceConc!29868) Int)

(assert (=> b!4985141 (= lt!2060273 (size!38256 (_1!34611 lt!2060270)))))

(assert (=> b!4985141 (= lt!2060261 (apply!13954 (transformation!8467 rule!200) (_1!34611 lt!2060270)))))

(declare-fun lt!2060269 () Unit!148730)

(declare-fun ForallOf!1277 (Int BalanceConc!29868) Unit!148730)

(assert (=> b!4985141 (= lt!2060269 (ForallOf!1277 lambda!248003 lt!2060260))))

(declare-fun seqFromList!6088 (List!57730) BalanceConc!29868)

(assert (=> b!4985141 (= lt!2060260 (seqFromList!6088 lt!2060264))))

(assert (=> b!4985141 (= lt!2060264 (list!18485 (_1!34611 lt!2060270)))))

(declare-fun lt!2060265 () Unit!148730)

(assert (=> b!4985141 (= lt!2060265 (ForallOf!1277 lambda!248003 (_1!34611 lt!2060270)))))

(declare-fun b!4985142 () Bool)

(assert (=> b!4985142 (= e!3115668 e!3115672)))

(declare-fun res!2128091 () Bool)

(assert (=> b!4985142 (=> res!2128091 e!3115672)))

(assert (=> b!4985142 (= res!2128091 (or (not (= (value!270731 (_1!34613 lt!2060268)) lt!2060261)) (not (= (rule!11731 (_1!34613 lt!2060268)) rule!200)) (not (= (size!38255 (_1!34613 lt!2060268)) lt!2060273)) (not (= (originalCharacters!8726 (_1!34613 lt!2060268)) lt!2060264)) (not (= lt!2060263 (_1!34613 lt!2060268)))))))

(declare-fun get!20038 (Option!14554) tuple2!62620)

(assert (=> b!4985142 (= lt!2060268 (get!20038 lt!2060275))))

(declare-fun b!4985143 () Bool)

(declare-fun tp!1397220 () Bool)

(declare-fun inv!75501 (Conc!15219) Bool)

(assert (=> b!4985143 (= e!3115667 (and (inv!75501 (c!850679 input!1580)) tp!1397220))))

(declare-fun b!4985144 () Bool)

(declare-fun e!3115669 () Bool)

(assert (=> b!4985144 (= e!3115669 (not e!3115660))))

(declare-fun res!2128098 () Bool)

(assert (=> b!4985144 (=> res!2128098 e!3115660)))

(declare-fun semiInverseModEq!3760 (Int Int) Bool)

(assert (=> b!4985144 (= res!2128098 (not (semiInverseModEq!3760 (toChars!11327 (transformation!8467 rule!200)) (toValue!11468 (transformation!8467 rule!200)))))))

(declare-fun lt!2060274 () Unit!148730)

(declare-fun lemmaInv!1390 (TokenValueInjection!16862) Unit!148730)

(assert (=> b!4985144 (= lt!2060274 (lemmaInv!1390 (transformation!8467 rule!200)))))

(declare-fun e!3115663 () Bool)

(assert (=> b!4985144 e!3115663))

(declare-fun res!2128096 () Bool)

(assert (=> b!4985144 (=> res!2128096 e!3115663)))

(declare-datatypes ((tuple2!62622 0))(
  ( (tuple2!62623 (_1!34614 List!57730) (_2!34614 List!57730)) )
))
(declare-fun lt!2060262 () tuple2!62622)

(declare-fun isEmpty!31146 (List!57730) Bool)

(assert (=> b!4985144 (= res!2128096 (isEmpty!31146 (_1!34614 lt!2060262)))))

(declare-fun findLongestMatchInner!1911 (Regex!13700 List!57730 Int List!57730 List!57730 Int) tuple2!62622)

(declare-fun size!38257 (List!57730) Int)

(assert (=> b!4985144 (= lt!2060262 (findLongestMatchInner!1911 (regex!8467 rule!200) Nil!57606 (size!38257 Nil!57606) lt!2060259 lt!2060259 (size!38257 lt!2060259)))))

(declare-fun lt!2060267 () Unit!148730)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1872 (Regex!13700 List!57730) Unit!148730)

(assert (=> b!4985144 (= lt!2060267 (longestMatchIsAcceptedByMatchOrIsEmpty!1872 (regex!8467 rule!200) lt!2060259))))

(declare-fun tp!1397218 () Bool)

(declare-fun e!3115670 () Bool)

(declare-fun b!4985145 () Bool)

(declare-fun inv!75497 (String!65761) Bool)

(declare-fun inv!75502 (TokenValueInjection!16862) Bool)

(assert (=> b!4985145 (= e!3115666 (and tp!1397218 (inv!75497 (tag!9331 rule!200)) (inv!75502 (transformation!8467 rule!200)) e!3115670))))

(declare-fun b!4985146 () Bool)

(assert (=> b!4985146 (= e!3115662 e!3115669)))

(declare-fun res!2128095 () Bool)

(assert (=> b!4985146 (=> (not res!2128095) (not e!3115669))))

(declare-fun isEmpty!31147 (BalanceConc!29868) Bool)

(assert (=> b!4985146 (= res!2128095 (not (isEmpty!31147 (_1!34611 lt!2060270))))))

(declare-fun findLongestMatchWithZipperSequenceV2!230 (Regex!13700 BalanceConc!29868 BalanceConc!29868) tuple2!62616)

(assert (=> b!4985146 (= lt!2060270 (findLongestMatchWithZipperSequenceV2!230 (regex!8467 rule!200) input!1580 totalInput!520))))

(declare-fun b!4985147 () Bool)

(declare-fun matchR!6694 (Regex!13700 List!57730) Bool)

(assert (=> b!4985147 (= e!3115663 (matchR!6694 (regex!8467 rule!200) (_1!34614 lt!2060262)))))

(declare-fun b!4985148 () Bool)

(declare-fun res!2128099 () Bool)

(assert (=> b!4985148 (=> res!2128099 e!3115661)))

(assert (=> b!4985148 (= res!2128099 (not (= (list!18485 lt!2060260) lt!2060264)))))

(declare-fun res!2128093 () Bool)

(assert (=> b!4985149 (=> res!2128093 e!3115660)))

(declare-fun Forall!1817 (Int) Bool)

(assert (=> b!4985149 (= res!2128093 (not (Forall!1817 lambda!248003)))))

(declare-fun b!4985150 () Bool)

(declare-fun tp!1397221 () Bool)

(assert (=> b!4985150 (= e!3115671 (and (inv!75501 (c!850679 totalInput!520)) tp!1397221))))

(assert (=> b!4985151 (= e!3115670 (and tp!1397217 tp!1397219))))

(declare-fun b!4985152 () Bool)

(declare-fun res!2128097 () Bool)

(assert (=> b!4985152 (=> (not res!2128097) (not e!3115665))))

(declare-fun ruleValid!3875 (LexerInterface!8059 Rule!16734) Bool)

(assert (=> b!4985152 (= res!2128097 (ruleValid!3875 thiss!16165 rule!200))))

(assert (= (and start!526612 res!2128089) b!4985152))

(assert (= (and b!4985152 res!2128097) b!4985138))

(assert (= (and b!4985138 res!2128090) b!4985146))

(assert (= (and b!4985146 res!2128095) b!4985144))

(assert (= (and b!4985144 (not res!2128096)) b!4985147))

(assert (= (and b!4985144 (not res!2128098)) b!4985149))

(assert (= (and b!4985149 (not res!2128093)) b!4985141))

(assert (= (and b!4985141 (not res!2128094)) b!4985137))

(assert (= (and b!4985137 (not res!2128092)) b!4985148))

(assert (= (and b!4985148 (not res!2128099)) b!4985139))

(assert (= (and b!4985139 (not res!2128088)) b!4985142))

(assert (= (and b!4985142 (not res!2128091)) b!4985140))

(assert (= b!4985145 b!4985151))

(assert (= start!526612 b!4985145))

(assert (= start!526612 b!4985150))

(assert (= start!526612 b!4985143))

(declare-fun m!6016794 () Bool)

(assert (=> b!4985150 m!6016794))

(declare-fun m!6016796 () Bool)

(assert (=> start!526612 m!6016796))

(declare-fun m!6016798 () Bool)

(assert (=> start!526612 m!6016798))

(declare-fun m!6016800 () Bool)

(assert (=> b!4985146 m!6016800))

(declare-fun m!6016802 () Bool)

(assert (=> b!4985146 m!6016802))

(declare-fun m!6016804 () Bool)

(assert (=> b!4985148 m!6016804))

(declare-fun m!6016806 () Bool)

(assert (=> b!4985147 m!6016806))

(declare-fun m!6016808 () Bool)

(assert (=> b!4985139 m!6016808))

(declare-fun m!6016810 () Bool)

(assert (=> b!4985139 m!6016810))

(declare-fun m!6016812 () Bool)

(assert (=> b!4985142 m!6016812))

(declare-fun m!6016814 () Bool)

(assert (=> b!4985140 m!6016814))

(declare-fun m!6016816 () Bool)

(assert (=> b!4985138 m!6016816))

(assert (=> b!4985138 m!6016816))

(declare-fun m!6016818 () Bool)

(assert (=> b!4985138 m!6016818))

(declare-fun m!6016820 () Bool)

(assert (=> b!4985138 m!6016820))

(declare-fun m!6016822 () Bool)

(assert (=> b!4985144 m!6016822))

(declare-fun m!6016824 () Bool)

(assert (=> b!4985144 m!6016824))

(declare-fun m!6016826 () Bool)

(assert (=> b!4985144 m!6016826))

(declare-fun m!6016828 () Bool)

(assert (=> b!4985144 m!6016828))

(assert (=> b!4985144 m!6016826))

(assert (=> b!4985144 m!6016824))

(declare-fun m!6016830 () Bool)

(assert (=> b!4985144 m!6016830))

(declare-fun m!6016832 () Bool)

(assert (=> b!4985144 m!6016832))

(declare-fun m!6016834 () Bool)

(assert (=> b!4985144 m!6016834))

(declare-fun m!6016836 () Bool)

(assert (=> b!4985141 m!6016836))

(declare-fun m!6016838 () Bool)

(assert (=> b!4985141 m!6016838))

(declare-fun m!6016840 () Bool)

(assert (=> b!4985141 m!6016840))

(declare-fun m!6016842 () Bool)

(assert (=> b!4985141 m!6016842))

(declare-fun m!6016844 () Bool)

(assert (=> b!4985141 m!6016844))

(declare-fun m!6016846 () Bool)

(assert (=> b!4985141 m!6016846))

(declare-fun m!6016848 () Bool)

(assert (=> b!4985141 m!6016848))

(declare-fun m!6016850 () Bool)

(assert (=> b!4985141 m!6016850))

(declare-fun m!6016852 () Bool)

(assert (=> b!4985141 m!6016852))

(declare-fun m!6016854 () Bool)

(assert (=> b!4985152 m!6016854))

(declare-fun m!6016856 () Bool)

(assert (=> b!4985143 m!6016856))

(declare-fun m!6016858 () Bool)

(assert (=> b!4985145 m!6016858))

(declare-fun m!6016860 () Bool)

(assert (=> b!4985145 m!6016860))

(declare-fun m!6016862 () Bool)

(assert (=> b!4985149 m!6016862))

(push 1)

(assert b_and!349859)

(assert (not b!4985143))

(assert (not b!4985138))

(assert (not b!4985152))

(assert b_and!349861)

(assert (not b!4985146))

(assert (not b!4985141))

(assert (not b!4985147))

(assert (not b!4985148))

(assert (not b!4985139))

(assert (not start!526612))

(assert (not b!4985145))

(assert (not b!4985144))

(assert (not b!4985150))

(assert (not b!4985140))

(assert (not b!4985142))

(assert (not b!4985149))

(assert (not b_next!133957))

(assert (not b_next!133959))

(check-sat)

(pop 1)

(push 1)

(assert b_and!349861)

(assert b_and!349859)

(assert (not b_next!133959))

(assert (not b_next!133957))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1605363 () Bool)

(assert (=> d!1605363 (= (get!20038 lt!2060275) (v!50550 lt!2060275))))

(assert (=> b!4985142 d!1605363))

(declare-fun d!1605365 () Bool)

(declare-fun res!2128144 () Bool)

(declare-fun e!3115726 () Bool)

(assert (=> d!1605365 (=> (not res!2128144) (not e!3115726))))

(declare-fun validRegex!5999 (Regex!13700) Bool)

(assert (=> d!1605365 (= res!2128144 (validRegex!5999 (regex!8467 rule!200)))))

(assert (=> d!1605365 (= (ruleValid!3875 thiss!16165 rule!200) e!3115726)))

(declare-fun b!4985221 () Bool)

(declare-fun res!2128145 () Bool)

(assert (=> b!4985221 (=> (not res!2128145) (not e!3115726))))

(declare-fun nullable!4650 (Regex!13700) Bool)

(assert (=> b!4985221 (= res!2128145 (not (nullable!4650 (regex!8467 rule!200))))))

(declare-fun b!4985222 () Bool)

(assert (=> b!4985222 (= e!3115726 (not (= (tag!9331 rule!200) (String!65762 ""))))))

(assert (= (and d!1605365 res!2128144) b!4985221))

(assert (= (and b!4985221 res!2128145) b!4985222))

(declare-fun m!6016934 () Bool)

(assert (=> d!1605365 m!6016934))

(declare-fun m!6016936 () Bool)

(assert (=> b!4985221 m!6016936))

(assert (=> b!4985152 d!1605365))

(declare-fun d!1605367 () Bool)

(declare-fun c!850685 () Bool)

(assert (=> d!1605367 (= c!850685 (is-Node!15219 (c!850679 input!1580)))))

(declare-fun e!3115731 () Bool)

(assert (=> d!1605367 (= (inv!75501 (c!850679 input!1580)) e!3115731)))

(declare-fun b!4985229 () Bool)

(declare-fun inv!75506 (Conc!15219) Bool)

(assert (=> b!4985229 (= e!3115731 (inv!75506 (c!850679 input!1580)))))

(declare-fun b!4985230 () Bool)

(declare-fun e!3115732 () Bool)

(assert (=> b!4985230 (= e!3115731 e!3115732)))

(declare-fun res!2128148 () Bool)

(assert (=> b!4985230 (= res!2128148 (not (is-Leaf!25278 (c!850679 input!1580))))))

(assert (=> b!4985230 (=> res!2128148 e!3115732)))

(declare-fun b!4985231 () Bool)

(declare-fun inv!75507 (Conc!15219) Bool)

(assert (=> b!4985231 (= e!3115732 (inv!75507 (c!850679 input!1580)))))

(assert (= (and d!1605367 c!850685) b!4985229))

(assert (= (and d!1605367 (not c!850685)) b!4985230))

(assert (= (and b!4985230 (not res!2128148)) b!4985231))

(declare-fun m!6016938 () Bool)

(assert (=> b!4985229 m!6016938))

(declare-fun m!6016940 () Bool)

(assert (=> b!4985231 m!6016940))

(assert (=> b!4985143 d!1605367))

(declare-fun d!1605369 () Bool)

(declare-fun isBalanced!4234 (Conc!15219) Bool)

(assert (=> d!1605369 (= (inv!75500 totalInput!520) (isBalanced!4234 (c!850679 totalInput!520)))))

(declare-fun bs!1184567 () Bool)

(assert (= bs!1184567 d!1605369))

(declare-fun m!6016942 () Bool)

(assert (=> bs!1184567 m!6016942))

(assert (=> start!526612 d!1605369))

(declare-fun d!1605371 () Bool)

(assert (=> d!1605371 (= (inv!75500 input!1580) (isBalanced!4234 (c!850679 input!1580)))))

(declare-fun bs!1184568 () Bool)

(assert (= bs!1184568 d!1605371))

(declare-fun m!6016944 () Bool)

(assert (=> bs!1184568 m!6016944))

(assert (=> start!526612 d!1605371))

(declare-fun d!1605373 () Bool)

(assert (=> d!1605373 (= (inv!75497 (tag!9331 rule!200)) (= (mod (str.len (value!270730 (tag!9331 rule!200))) 2) 0))))

(assert (=> b!4985145 d!1605373))

(declare-fun d!1605375 () Bool)

(declare-fun res!2128151 () Bool)

(declare-fun e!3115735 () Bool)

(assert (=> d!1605375 (=> (not res!2128151) (not e!3115735))))

(assert (=> d!1605375 (= res!2128151 (semiInverseModEq!3760 (toChars!11327 (transformation!8467 rule!200)) (toValue!11468 (transformation!8467 rule!200))))))

(assert (=> d!1605375 (= (inv!75502 (transformation!8467 rule!200)) e!3115735)))

(declare-fun b!4985234 () Bool)

(declare-fun equivClasses!3579 (Int Int) Bool)

(assert (=> b!4985234 (= e!3115735 (equivClasses!3579 (toChars!11327 (transformation!8467 rule!200)) (toValue!11468 (transformation!8467 rule!200))))))

(assert (= (and d!1605375 res!2128151) b!4985234))

(assert (=> d!1605375 m!6016828))

(declare-fun m!6016946 () Bool)

(assert (=> b!4985234 m!6016946))

(assert (=> b!4985145 d!1605375))

(declare-fun d!1605377 () Bool)

(assert (=> d!1605377 (= (isEmpty!31146 (_1!34614 lt!2060262)) (is-Nil!57606 (_1!34614 lt!2060262)))))

(assert (=> b!4985144 d!1605377))

(declare-fun d!1605379 () Bool)

(declare-fun e!3115771 () Bool)

(assert (=> d!1605379 e!3115771))

(declare-fun res!2128172 () Bool)

(assert (=> d!1605379 (=> (not res!2128172) (not e!3115771))))

(declare-fun lt!2060399 () tuple2!62622)

(declare-fun ++!12562 (List!57730 List!57730) List!57730)

(assert (=> d!1605379 (= res!2128172 (= (++!12562 (_1!34614 lt!2060399) (_2!34614 lt!2060399)) lt!2060259))))

(declare-fun e!3115768 () tuple2!62622)

(assert (=> d!1605379 (= lt!2060399 e!3115768)))

(declare-fun c!850709 () Bool)

(declare-fun lostCause!1159 (Regex!13700) Bool)

(assert (=> d!1605379 (= c!850709 (lostCause!1159 (regex!8467 rule!200)))))

(declare-fun lt!2060402 () Unit!148730)

(declare-fun Unit!148735 () Unit!148730)

(assert (=> d!1605379 (= lt!2060402 Unit!148735)))

(declare-fun getSuffix!3115 (List!57730 List!57730) List!57730)

(assert (=> d!1605379 (= (getSuffix!3115 lt!2060259 Nil!57606) lt!2060259)))

(declare-fun lt!2060400 () Unit!148730)

(declare-fun lt!2060414 () Unit!148730)

(assert (=> d!1605379 (= lt!2060400 lt!2060414)))

(declare-fun lt!2060403 () List!57730)

(assert (=> d!1605379 (= lt!2060259 lt!2060403)))

(declare-fun lemmaSamePrefixThenSameSuffix!2527 (List!57730 List!57730 List!57730 List!57730 List!57730) Unit!148730)

(assert (=> d!1605379 (= lt!2060414 (lemmaSamePrefixThenSameSuffix!2527 Nil!57606 lt!2060259 Nil!57606 lt!2060403 lt!2060259))))

(assert (=> d!1605379 (= lt!2060403 (getSuffix!3115 lt!2060259 Nil!57606))))

(declare-fun lt!2060406 () Unit!148730)

(declare-fun lt!2060416 () Unit!148730)

(assert (=> d!1605379 (= lt!2060406 lt!2060416)))

(declare-fun isPrefix!5275 (List!57730 List!57730) Bool)

(assert (=> d!1605379 (isPrefix!5275 Nil!57606 (++!12562 Nil!57606 lt!2060259))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3373 (List!57730 List!57730) Unit!148730)

(assert (=> d!1605379 (= lt!2060416 (lemmaConcatTwoListThenFirstIsPrefix!3373 Nil!57606 lt!2060259))))

(assert (=> d!1605379 (validRegex!5999 (regex!8467 rule!200))))

(assert (=> d!1605379 (= (findLongestMatchInner!1911 (regex!8467 rule!200) Nil!57606 (size!38257 Nil!57606) lt!2060259 lt!2060259 (size!38257 lt!2060259)) lt!2060399)))

(declare-fun call!347878 () tuple2!62622)

(declare-fun call!347880 () Regex!13700)

(declare-fun bm!347871 () Bool)

(declare-fun lt!2060396 () List!57730)

(declare-fun call!347883 () List!57730)

(assert (=> bm!347871 (= call!347878 (findLongestMatchInner!1911 call!347880 lt!2060396 (+ (size!38257 Nil!57606) 1) call!347883 lt!2060259 (size!38257 lt!2060259)))))

(declare-fun b!4985291 () Bool)

(declare-fun e!3115766 () tuple2!62622)

(declare-fun e!3115770 () tuple2!62622)

(assert (=> b!4985291 (= e!3115766 e!3115770)))

(declare-fun lt!2060415 () tuple2!62622)

(assert (=> b!4985291 (= lt!2060415 call!347878)))

(declare-fun c!850708 () Bool)

(assert (=> b!4985291 (= c!850708 (isEmpty!31146 (_1!34614 lt!2060415)))))

(declare-fun b!4985292 () Bool)

(assert (=> b!4985292 (= e!3115766 call!347878)))

(declare-fun b!4985293 () Bool)

(declare-fun e!3115769 () Unit!148730)

(declare-fun Unit!148736 () Unit!148730)

(assert (=> b!4985293 (= e!3115769 Unit!148736)))

(declare-fun bm!347872 () Bool)

(declare-fun call!347879 () C!27650)

(declare-fun derivativeStep!3950 (Regex!13700 C!27650) Regex!13700)

(assert (=> bm!347872 (= call!347880 (derivativeStep!3950 (regex!8467 rule!200) call!347879))))

(declare-fun b!4985294 () Bool)

(assert (=> b!4985294 (= e!3115770 lt!2060415)))

(declare-fun b!4985295 () Bool)

(declare-fun e!3115772 () tuple2!62622)

(assert (=> b!4985295 (= e!3115768 e!3115772)))

(declare-fun c!850706 () Bool)

(assert (=> b!4985295 (= c!850706 (= (size!38257 Nil!57606) (size!38257 lt!2060259)))))

(declare-fun bm!347873 () Bool)

(declare-fun call!347882 () Unit!148730)

(declare-fun lemmaIsPrefixRefl!3598 (List!57730 List!57730) Unit!148730)

(assert (=> bm!347873 (= call!347882 (lemmaIsPrefixRefl!3598 lt!2060259 lt!2060259))))

(declare-fun bm!347874 () Bool)

(declare-fun call!347877 () Bool)

(assert (=> bm!347874 (= call!347877 (nullable!4650 (regex!8467 rule!200)))))

(declare-fun b!4985296 () Bool)

(declare-fun c!850704 () Bool)

(assert (=> b!4985296 (= c!850704 call!347877)))

(declare-fun lt!2060413 () Unit!148730)

(declare-fun lt!2060393 () Unit!148730)

(assert (=> b!4985296 (= lt!2060413 lt!2060393)))

(assert (=> b!4985296 (= lt!2060259 Nil!57606)))

(declare-fun call!347876 () Unit!148730)

(assert (=> b!4985296 (= lt!2060393 call!347876)))

(declare-fun lt!2060395 () Unit!148730)

(declare-fun lt!2060408 () Unit!148730)

(assert (=> b!4985296 (= lt!2060395 lt!2060408)))

(declare-fun call!347881 () Bool)

(assert (=> b!4985296 call!347881))

(assert (=> b!4985296 (= lt!2060408 call!347882)))

(declare-fun e!3115767 () tuple2!62622)

(assert (=> b!4985296 (= e!3115772 e!3115767)))

(declare-fun bm!347875 () Bool)

(assert (=> bm!347875 (= call!347881 (isPrefix!5275 lt!2060259 lt!2060259))))

(declare-fun bm!347876 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1235 (List!57730 List!57730 List!57730) Unit!148730)

(assert (=> bm!347876 (= call!347876 (lemmaIsPrefixSameLengthThenSameList!1235 lt!2060259 Nil!57606 lt!2060259))))

(declare-fun b!4985297 () Bool)

(declare-fun e!3115773 () Bool)

(assert (=> b!4985297 (= e!3115771 e!3115773)))

(declare-fun res!2128173 () Bool)

(assert (=> b!4985297 (=> res!2128173 e!3115773)))

(assert (=> b!4985297 (= res!2128173 (isEmpty!31146 (_1!34614 lt!2060399)))))

(declare-fun b!4985298 () Bool)

(declare-fun Unit!148737 () Unit!148730)

(assert (=> b!4985298 (= e!3115769 Unit!148737)))

(declare-fun lt!2060409 () Unit!148730)

(assert (=> b!4985298 (= lt!2060409 call!347882)))

(assert (=> b!4985298 call!347881))

(declare-fun lt!2060392 () Unit!148730)

(assert (=> b!4985298 (= lt!2060392 lt!2060409)))

(declare-fun lt!2060397 () Unit!148730)

(assert (=> b!4985298 (= lt!2060397 call!347876)))

(assert (=> b!4985298 (= lt!2060259 Nil!57606)))

(declare-fun lt!2060405 () Unit!148730)

(assert (=> b!4985298 (= lt!2060405 lt!2060397)))

(assert (=> b!4985298 false))

(declare-fun bm!347877 () Bool)

(declare-fun tail!9832 (List!57730) List!57730)

(assert (=> bm!347877 (= call!347883 (tail!9832 lt!2060259))))

(declare-fun b!4985299 () Bool)

(assert (=> b!4985299 (= e!3115767 (tuple2!62623 Nil!57606 lt!2060259))))

(declare-fun bm!347878 () Bool)

(declare-fun head!10699 (List!57730) C!27650)

(assert (=> bm!347878 (= call!347879 (head!10699 lt!2060259))))

(declare-fun b!4985300 () Bool)

(declare-fun c!850705 () Bool)

(assert (=> b!4985300 (= c!850705 call!347877)))

(declare-fun lt!2060418 () Unit!148730)

(declare-fun lt!2060394 () Unit!148730)

(assert (=> b!4985300 (= lt!2060418 lt!2060394)))

(declare-fun lt!2060410 () C!27650)

(declare-fun lt!2060391 () List!57730)

(assert (=> b!4985300 (= (++!12562 (++!12562 Nil!57606 (Cons!57606 lt!2060410 Nil!57606)) lt!2060391) lt!2060259)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1472 (List!57730 C!27650 List!57730 List!57730) Unit!148730)

(assert (=> b!4985300 (= lt!2060394 (lemmaMoveElementToOtherListKeepsConcatEq!1472 Nil!57606 lt!2060410 lt!2060391 lt!2060259))))

(assert (=> b!4985300 (= lt!2060391 (tail!9832 lt!2060259))))

(assert (=> b!4985300 (= lt!2060410 (head!10699 lt!2060259))))

(declare-fun lt!2060404 () Unit!148730)

(declare-fun lt!2060398 () Unit!148730)

(assert (=> b!4985300 (= lt!2060404 lt!2060398)))

(assert (=> b!4985300 (isPrefix!5275 (++!12562 Nil!57606 (Cons!57606 (head!10699 (getSuffix!3115 lt!2060259 Nil!57606)) Nil!57606)) lt!2060259)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!861 (List!57730 List!57730) Unit!148730)

(assert (=> b!4985300 (= lt!2060398 (lemmaAddHeadSuffixToPrefixStillPrefix!861 Nil!57606 lt!2060259))))

(declare-fun lt!2060412 () Unit!148730)

(declare-fun lt!2060401 () Unit!148730)

(assert (=> b!4985300 (= lt!2060412 lt!2060401)))

(assert (=> b!4985300 (= lt!2060401 (lemmaAddHeadSuffixToPrefixStillPrefix!861 Nil!57606 lt!2060259))))

(assert (=> b!4985300 (= lt!2060396 (++!12562 Nil!57606 (Cons!57606 (head!10699 lt!2060259) Nil!57606)))))

(declare-fun lt!2060407 () Unit!148730)

(assert (=> b!4985300 (= lt!2060407 e!3115769)))

(declare-fun c!850707 () Bool)

(assert (=> b!4985300 (= c!850707 (= (size!38257 Nil!57606) (size!38257 lt!2060259)))))

(declare-fun lt!2060417 () Unit!148730)

(declare-fun lt!2060411 () Unit!148730)

(assert (=> b!4985300 (= lt!2060417 lt!2060411)))

(assert (=> b!4985300 (<= (size!38257 Nil!57606) (size!38257 lt!2060259))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!787 (List!57730 List!57730) Unit!148730)

(assert (=> b!4985300 (= lt!2060411 (lemmaIsPrefixThenSmallerEqSize!787 Nil!57606 lt!2060259))))

(assert (=> b!4985300 (= e!3115772 e!3115766)))

(declare-fun b!4985301 () Bool)

(assert (=> b!4985301 (= e!3115773 (>= (size!38257 (_1!34614 lt!2060399)) (size!38257 Nil!57606)))))

(declare-fun b!4985302 () Bool)

(assert (=> b!4985302 (= e!3115768 (tuple2!62623 Nil!57606 lt!2060259))))

(declare-fun b!4985303 () Bool)

(assert (=> b!4985303 (= e!3115770 (tuple2!62623 Nil!57606 lt!2060259))))

(declare-fun b!4985304 () Bool)

(assert (=> b!4985304 (= e!3115767 (tuple2!62623 Nil!57606 Nil!57606))))

(assert (= (and d!1605379 c!850709) b!4985302))

(assert (= (and d!1605379 (not c!850709)) b!4985295))

(assert (= (and b!4985295 c!850706) b!4985296))

(assert (= (and b!4985295 (not c!850706)) b!4985300))

(assert (= (and b!4985296 c!850704) b!4985304))

(assert (= (and b!4985296 (not c!850704)) b!4985299))

(assert (= (and b!4985300 c!850707) b!4985298))

(assert (= (and b!4985300 (not c!850707)) b!4985293))

(assert (= (and b!4985300 c!850705) b!4985291))

(assert (= (and b!4985300 (not c!850705)) b!4985292))

(assert (= (and b!4985291 c!850708) b!4985303))

(assert (= (and b!4985291 (not c!850708)) b!4985294))

(assert (= (or b!4985291 b!4985292) bm!347878))

(assert (= (or b!4985291 b!4985292) bm!347877))

(assert (= (or b!4985291 b!4985292) bm!347872))

(assert (= (or b!4985291 b!4985292) bm!347871))

(assert (= (or b!4985296 b!4985298) bm!347875))

(assert (= (or b!4985296 b!4985298) bm!347876))

(assert (= (or b!4985296 b!4985298) bm!347873))

(assert (= (or b!4985296 b!4985300) bm!347874))

(assert (= (and d!1605379 res!2128172) b!4985297))

(assert (= (and b!4985297 (not res!2128173)) b!4985301))

(declare-fun m!6016964 () Bool)

(assert (=> bm!347876 m!6016964))

(assert (=> bm!347871 m!6016824))

(declare-fun m!6016966 () Bool)

(assert (=> bm!347871 m!6016966))

(declare-fun m!6016968 () Bool)

(assert (=> b!4985297 m!6016968))

(declare-fun m!6016970 () Bool)

(assert (=> bm!347873 m!6016970))

(declare-fun m!6016972 () Bool)

(assert (=> b!4985301 m!6016972))

(assert (=> b!4985301 m!6016826))

(declare-fun m!6016974 () Bool)

(assert (=> bm!347875 m!6016974))

(declare-fun m!6016976 () Bool)

(assert (=> bm!347878 m!6016976))

(declare-fun m!6016978 () Bool)

(assert (=> bm!347877 m!6016978))

(declare-fun m!6016980 () Bool)

(assert (=> b!4985300 m!6016980))

(declare-fun m!6016982 () Bool)

(assert (=> b!4985300 m!6016982))

(declare-fun m!6016984 () Bool)

(assert (=> b!4985300 m!6016984))

(assert (=> b!4985300 m!6016980))

(declare-fun m!6016986 () Bool)

(assert (=> b!4985300 m!6016986))

(declare-fun m!6016988 () Bool)

(assert (=> b!4985300 m!6016988))

(assert (=> b!4985300 m!6016982))

(declare-fun m!6016990 () Bool)

(assert (=> b!4985300 m!6016990))

(declare-fun m!6016992 () Bool)

(assert (=> b!4985300 m!6016992))

(declare-fun m!6016994 () Bool)

(assert (=> b!4985300 m!6016994))

(assert (=> b!4985300 m!6016824))

(declare-fun m!6016996 () Bool)

(assert (=> b!4985300 m!6016996))

(assert (=> b!4985300 m!6016826))

(assert (=> b!4985300 m!6016976))

(assert (=> b!4985300 m!6016978))

(assert (=> b!4985300 m!6016994))

(declare-fun m!6016998 () Bool)

(assert (=> b!4985300 m!6016998))

(assert (=> bm!347874 m!6016936))

(assert (=> d!1605379 m!6016980))

(declare-fun m!6017000 () Bool)

(assert (=> d!1605379 m!6017000))

(assert (=> d!1605379 m!6016934))

(declare-fun m!6017002 () Bool)

(assert (=> d!1605379 m!6017002))

(declare-fun m!6017004 () Bool)

(assert (=> d!1605379 m!6017004))

(declare-fun m!6017006 () Bool)

(assert (=> d!1605379 m!6017006))

(assert (=> d!1605379 m!6017002))

(declare-fun m!6017008 () Bool)

(assert (=> d!1605379 m!6017008))

(declare-fun m!6017010 () Bool)

(assert (=> d!1605379 m!6017010))

(declare-fun m!6017012 () Bool)

(assert (=> b!4985291 m!6017012))

(declare-fun m!6017014 () Bool)

(assert (=> bm!347872 m!6017014))

(assert (=> b!4985144 d!1605379))

(declare-fun d!1605389 () Bool)

(declare-fun lt!2060422 () Int)

(assert (=> d!1605389 (>= lt!2060422 0)))

(declare-fun e!3115783 () Int)

(assert (=> d!1605389 (= lt!2060422 e!3115783)))

(declare-fun c!850715 () Bool)

(assert (=> d!1605389 (= c!850715 (is-Nil!57606 Nil!57606))))

(assert (=> d!1605389 (= (size!38257 Nil!57606) lt!2060422)))

(declare-fun b!4985323 () Bool)

(assert (=> b!4985323 (= e!3115783 0)))

(declare-fun b!4985324 () Bool)

(assert (=> b!4985324 (= e!3115783 (+ 1 (size!38257 (t!369942 Nil!57606))))))

(assert (= (and d!1605389 c!850715) b!4985323))

(assert (= (and d!1605389 (not c!850715)) b!4985324))

(declare-fun m!6017028 () Bool)

(assert (=> b!4985324 m!6017028))

(assert (=> b!4985144 d!1605389))

(declare-fun d!1605393 () Bool)

(declare-fun e!3115789 () Bool)

(assert (=> d!1605393 e!3115789))

(declare-fun res!2128184 () Bool)

(assert (=> d!1605393 (=> (not res!2128184) (not e!3115789))))

(assert (=> d!1605393 (= res!2128184 (semiInverseModEq!3760 (toChars!11327 (transformation!8467 rule!200)) (toValue!11468 (transformation!8467 rule!200))))))

(declare-fun Unit!148738 () Unit!148730)

(assert (=> d!1605393 (= (lemmaInv!1390 (transformation!8467 rule!200)) Unit!148738)))

(declare-fun b!4985329 () Bool)

(assert (=> b!4985329 (= e!3115789 (equivClasses!3579 (toChars!11327 (transformation!8467 rule!200)) (toValue!11468 (transformation!8467 rule!200))))))

(assert (= (and d!1605393 res!2128184) b!4985329))

(assert (=> d!1605393 m!6016828))

(assert (=> b!4985329 m!6016946))

(assert (=> b!4985144 d!1605393))

(declare-fun d!1605397 () Bool)

(declare-fun e!3115792 () Bool)

(assert (=> d!1605397 e!3115792))

(declare-fun res!2128187 () Bool)

(assert (=> d!1605397 (=> res!2128187 e!3115792)))

(assert (=> d!1605397 (= res!2128187 (isEmpty!31146 (_1!34614 (findLongestMatchInner!1911 (regex!8467 rule!200) Nil!57606 (size!38257 Nil!57606) lt!2060259 lt!2060259 (size!38257 lt!2060259)))))))

(declare-fun lt!2060427 () Unit!148730)

(declare-fun choose!36845 (Regex!13700 List!57730) Unit!148730)

(assert (=> d!1605397 (= lt!2060427 (choose!36845 (regex!8467 rule!200) lt!2060259))))

(assert (=> d!1605397 (validRegex!5999 (regex!8467 rule!200))))

(assert (=> d!1605397 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1872 (regex!8467 rule!200) lt!2060259) lt!2060427)))

(declare-fun b!4985332 () Bool)

(assert (=> b!4985332 (= e!3115792 (matchR!6694 (regex!8467 rule!200) (_1!34614 (findLongestMatchInner!1911 (regex!8467 rule!200) Nil!57606 (size!38257 Nil!57606) lt!2060259 lt!2060259 (size!38257 lt!2060259)))))))

(assert (= (and d!1605397 (not res!2128187)) b!4985332))

(assert (=> d!1605397 m!6016826))

(assert (=> d!1605397 m!6016824))

(assert (=> d!1605397 m!6016830))

(declare-fun m!6017034 () Bool)

(assert (=> d!1605397 m!6017034))

(assert (=> d!1605397 m!6016826))

(declare-fun m!6017036 () Bool)

(assert (=> d!1605397 m!6017036))

(assert (=> d!1605397 m!6016824))

(assert (=> d!1605397 m!6016934))

(assert (=> b!4985332 m!6016826))

(assert (=> b!4985332 m!6016824))

(assert (=> b!4985332 m!6016826))

(assert (=> b!4985332 m!6016824))

(assert (=> b!4985332 m!6016830))

(declare-fun m!6017038 () Bool)

(assert (=> b!4985332 m!6017038))

(assert (=> b!4985144 d!1605397))

(declare-fun d!1605399 () Bool)

(declare-fun lt!2060428 () Int)

(assert (=> d!1605399 (>= lt!2060428 0)))

(declare-fun e!3115795 () Int)

(assert (=> d!1605399 (= lt!2060428 e!3115795)))

(declare-fun c!850716 () Bool)

(assert (=> d!1605399 (= c!850716 (is-Nil!57606 lt!2060259))))

(assert (=> d!1605399 (= (size!38257 lt!2060259) lt!2060428)))

(declare-fun b!4985335 () Bool)

(assert (=> b!4985335 (= e!3115795 0)))

(declare-fun b!4985336 () Bool)

(assert (=> b!4985336 (= e!3115795 (+ 1 (size!38257 (t!369942 lt!2060259))))))

(assert (= (and d!1605399 c!850716) b!4985335))

(assert (= (and d!1605399 (not c!850716)) b!4985336))

(declare-fun m!6017040 () Bool)

(assert (=> b!4985336 m!6017040))

(assert (=> b!4985144 d!1605399))

(declare-fun bs!1184572 () Bool)

(declare-fun d!1605401 () Bool)

(assert (= bs!1184572 (and d!1605401 b!4985149)))

(declare-fun lambda!248015 () Int)

(assert (=> bs!1184572 (= lambda!248015 lambda!248003)))

(assert (=> d!1605401 true))

(assert (=> d!1605401 (< (dynLambda!23431 order!26591 (toChars!11327 (transformation!8467 rule!200))) (dynLambda!23430 order!26589 lambda!248015))))

(assert (=> d!1605401 true))

(assert (=> d!1605401 (< (dynLambda!23429 order!26587 (toValue!11468 (transformation!8467 rule!200))) (dynLambda!23430 order!26589 lambda!248015))))

(assert (=> d!1605401 (= (semiInverseModEq!3760 (toChars!11327 (transformation!8467 rule!200)) (toValue!11468 (transformation!8467 rule!200))) (Forall!1817 lambda!248015))))

(declare-fun bs!1184573 () Bool)

(assert (= bs!1184573 d!1605401))

(declare-fun m!6017042 () Bool)

(assert (=> bs!1184573 m!6017042))

(assert (=> b!4985144 d!1605401))

(declare-fun d!1605403 () Bool)

(declare-fun lt!2060432 () Bool)

(assert (=> d!1605403 (= lt!2060432 (isEmpty!31146 (list!18485 (_1!34611 lt!2060270))))))

(declare-fun isEmpty!31150 (Conc!15219) Bool)

(assert (=> d!1605403 (= lt!2060432 (isEmpty!31150 (c!850679 (_1!34611 lt!2060270))))))

(assert (=> d!1605403 (= (isEmpty!31147 (_1!34611 lt!2060270)) lt!2060432)))

(declare-fun bs!1184574 () Bool)

(assert (= bs!1184574 d!1605403))

(assert (=> bs!1184574 m!6016840))

(assert (=> bs!1184574 m!6016840))

(declare-fun m!6017044 () Bool)

(assert (=> bs!1184574 m!6017044))

(declare-fun m!6017046 () Bool)

(assert (=> bs!1184574 m!6017046))

(assert (=> b!4985146 d!1605403))

(declare-fun d!1605405 () Bool)

(declare-fun lt!2060435 () tuple2!62616)

(declare-fun findLongestMatch!1725 (Regex!13700 List!57730) tuple2!62622)

(assert (=> d!1605405 (= (tuple2!62623 (list!18485 (_1!34611 lt!2060435)) (list!18485 (_2!34611 lt!2060435))) (findLongestMatch!1725 (regex!8467 rule!200) (list!18485 input!1580)))))

(declare-fun choose!36846 (Regex!13700 BalanceConc!29868 BalanceConc!29868) tuple2!62616)

(assert (=> d!1605405 (= lt!2060435 (choose!36846 (regex!8467 rule!200) input!1580 totalInput!520))))

(assert (=> d!1605405 (validRegex!5999 (regex!8467 rule!200))))

(assert (=> d!1605405 (= (findLongestMatchWithZipperSequenceV2!230 (regex!8467 rule!200) input!1580 totalInput!520) lt!2060435)))

(declare-fun bs!1184575 () Bool)

(assert (= bs!1184575 d!1605405))

(declare-fun m!6017058 () Bool)

(assert (=> bs!1184575 m!6017058))

(assert (=> bs!1184575 m!6016934))

(assert (=> bs!1184575 m!6016820))

(declare-fun m!6017060 () Bool)

(assert (=> bs!1184575 m!6017060))

(assert (=> bs!1184575 m!6016820))

(declare-fun m!6017062 () Bool)

(assert (=> bs!1184575 m!6017062))

(declare-fun m!6017064 () Bool)

(assert (=> bs!1184575 m!6017064))

(assert (=> b!4985146 d!1605405))

(declare-fun b!4985392 () Bool)

(declare-fun e!3115829 () Bool)

(assert (=> b!4985392 (= e!3115829 (= (head!10699 (_1!34614 lt!2060262)) (c!850678 (regex!8467 rule!200))))))

(declare-fun b!4985393 () Bool)

(declare-fun res!2128217 () Bool)

(assert (=> b!4985393 (=> (not res!2128217) (not e!3115829))))

(assert (=> b!4985393 (= res!2128217 (isEmpty!31146 (tail!9832 (_1!34614 lt!2060262))))))

(declare-fun b!4985394 () Bool)

(declare-fun e!3115828 () Bool)

(declare-fun e!3115827 () Bool)

(assert (=> b!4985394 (= e!3115828 e!3115827)))

(declare-fun res!2128218 () Bool)

(assert (=> b!4985394 (=> res!2128218 e!3115827)))

(declare-fun call!347887 () Bool)

(assert (=> b!4985394 (= res!2128218 call!347887)))

(declare-fun b!4985395 () Bool)

(declare-fun res!2128219 () Bool)

(declare-fun e!3115830 () Bool)

(assert (=> b!4985395 (=> res!2128219 e!3115830)))

(assert (=> b!4985395 (= res!2128219 e!3115829)))

(declare-fun res!2128212 () Bool)

(assert (=> b!4985395 (=> (not res!2128212) (not e!3115829))))

(declare-fun lt!2060441 () Bool)

(assert (=> b!4985395 (= res!2128212 lt!2060441)))

(declare-fun b!4985396 () Bool)

(declare-fun res!2128215 () Bool)

(assert (=> b!4985396 (=> (not res!2128215) (not e!3115829))))

(assert (=> b!4985396 (= res!2128215 (not call!347887))))

(declare-fun b!4985397 () Bool)

(declare-fun e!3115832 () Bool)

(declare-fun e!3115831 () Bool)

(assert (=> b!4985397 (= e!3115832 e!3115831)))

(declare-fun c!850730 () Bool)

(assert (=> b!4985397 (= c!850730 (is-EmptyLang!13700 (regex!8467 rule!200)))))

(declare-fun b!4985398 () Bool)

(declare-fun res!2128213 () Bool)

(assert (=> b!4985398 (=> res!2128213 e!3115827)))

(assert (=> b!4985398 (= res!2128213 (not (isEmpty!31146 (tail!9832 (_1!34614 lt!2060262)))))))

(declare-fun b!4985400 () Bool)

(assert (=> b!4985400 (= e!3115827 (not (= (head!10699 (_1!34614 lt!2060262)) (c!850678 (regex!8467 rule!200)))))))

(declare-fun b!4985401 () Bool)

(declare-fun res!2128214 () Bool)

(assert (=> b!4985401 (=> res!2128214 e!3115830)))

(assert (=> b!4985401 (= res!2128214 (not (is-ElementMatch!13700 (regex!8467 rule!200))))))

(assert (=> b!4985401 (= e!3115831 e!3115830)))

(declare-fun b!4985402 () Bool)

(assert (=> b!4985402 (= e!3115830 e!3115828)))

(declare-fun res!2128216 () Bool)

(assert (=> b!4985402 (=> (not res!2128216) (not e!3115828))))

(assert (=> b!4985402 (= res!2128216 (not lt!2060441))))

(declare-fun b!4985403 () Bool)

(assert (=> b!4985403 (= e!3115832 (= lt!2060441 call!347887))))

(declare-fun b!4985404 () Bool)

(assert (=> b!4985404 (= e!3115831 (not lt!2060441))))

(declare-fun b!4985405 () Bool)

(declare-fun e!3115826 () Bool)

(assert (=> b!4985405 (= e!3115826 (nullable!4650 (regex!8467 rule!200)))))

(declare-fun bm!347882 () Bool)

(assert (=> bm!347882 (= call!347887 (isEmpty!31146 (_1!34614 lt!2060262)))))

(declare-fun d!1605413 () Bool)

(assert (=> d!1605413 e!3115832))

(declare-fun c!850729 () Bool)

(assert (=> d!1605413 (= c!850729 (is-EmptyExpr!13700 (regex!8467 rule!200)))))

(assert (=> d!1605413 (= lt!2060441 e!3115826)))

(declare-fun c!850731 () Bool)

(assert (=> d!1605413 (= c!850731 (isEmpty!31146 (_1!34614 lt!2060262)))))

(assert (=> d!1605413 (validRegex!5999 (regex!8467 rule!200))))

(assert (=> d!1605413 (= (matchR!6694 (regex!8467 rule!200) (_1!34614 lt!2060262)) lt!2060441)))

(declare-fun b!4985399 () Bool)

(assert (=> b!4985399 (= e!3115826 (matchR!6694 (derivativeStep!3950 (regex!8467 rule!200) (head!10699 (_1!34614 lt!2060262))) (tail!9832 (_1!34614 lt!2060262))))))

(assert (= (and d!1605413 c!850731) b!4985405))

(assert (= (and d!1605413 (not c!850731)) b!4985399))

(assert (= (and d!1605413 c!850729) b!4985403))

(assert (= (and d!1605413 (not c!850729)) b!4985397))

(assert (= (and b!4985397 c!850730) b!4985404))

(assert (= (and b!4985397 (not c!850730)) b!4985401))

(assert (= (and b!4985401 (not res!2128214)) b!4985395))

(assert (= (and b!4985395 res!2128212) b!4985396))

(assert (= (and b!4985396 res!2128215) b!4985393))

(assert (= (and b!4985393 res!2128217) b!4985392))

(assert (= (and b!4985395 (not res!2128219)) b!4985402))

(assert (= (and b!4985402 res!2128216) b!4985394))

(assert (= (and b!4985394 (not res!2128218)) b!4985398))

(assert (= (and b!4985398 (not res!2128213)) b!4985400))

(assert (= (or b!4985403 b!4985394 b!4985396) bm!347882))

(assert (=> b!4985405 m!6016936))

(declare-fun m!6017070 () Bool)

(assert (=> b!4985392 m!6017070))

(assert (=> d!1605413 m!6016834))

(assert (=> d!1605413 m!6016934))

(assert (=> bm!347882 m!6016834))

(assert (=> b!4985400 m!6017070))

(assert (=> b!4985399 m!6017070))

(assert (=> b!4985399 m!6017070))

(declare-fun m!6017072 () Bool)

(assert (=> b!4985399 m!6017072))

(declare-fun m!6017074 () Bool)

(assert (=> b!4985399 m!6017074))

(assert (=> b!4985399 m!6017072))

(assert (=> b!4985399 m!6017074))

(declare-fun m!6017076 () Bool)

(assert (=> b!4985399 m!6017076))

(assert (=> b!4985398 m!6017074))

(assert (=> b!4985398 m!6017074))

(declare-fun m!6017078 () Bool)

(assert (=> b!4985398 m!6017078))

(assert (=> b!4985393 m!6017074))

(assert (=> b!4985393 m!6017074))

(assert (=> b!4985393 m!6017078))

(assert (=> b!4985147 d!1605413))

(declare-fun d!1605421 () Bool)

(declare-fun choose!36847 (Int) Bool)

(assert (=> d!1605421 (= (Forall!1817 lambda!248003) (choose!36847 lambda!248003))))

(declare-fun bs!1184576 () Bool)

(assert (= bs!1184576 d!1605421))

(declare-fun m!6017080 () Bool)

(assert (=> bs!1184576 m!6017080))

(assert (=> b!4985149 d!1605421))

(declare-fun d!1605423 () Bool)

(declare-fun e!3115835 () Bool)

(assert (=> d!1605423 e!3115835))

(declare-fun res!2128222 () Bool)

(assert (=> d!1605423 (=> res!2128222 e!3115835)))

(declare-fun lt!2060444 () Bool)

(assert (=> d!1605423 (= res!2128222 (not lt!2060444))))

(declare-fun drop!2381 (List!57730 Int) List!57730)

(assert (=> d!1605423 (= lt!2060444 (= lt!2060259 (drop!2381 (list!18485 totalInput!520) (- (size!38257 (list!18485 totalInput!520)) (size!38257 lt!2060259)))))))

(assert (=> d!1605423 (= (isSuffix!1266 lt!2060259 (list!18485 totalInput!520)) lt!2060444)))

(declare-fun b!4985408 () Bool)

(assert (=> b!4985408 (= e!3115835 (>= (size!38257 (list!18485 totalInput!520)) (size!38257 lt!2060259)))))

(assert (= (and d!1605423 (not res!2128222)) b!4985408))

(assert (=> d!1605423 m!6016816))

(declare-fun m!6017082 () Bool)

(assert (=> d!1605423 m!6017082))

(assert (=> d!1605423 m!6016824))

(assert (=> d!1605423 m!6016816))

(declare-fun m!6017084 () Bool)

(assert (=> d!1605423 m!6017084))

(assert (=> b!4985408 m!6016816))

(assert (=> b!4985408 m!6017082))

(assert (=> b!4985408 m!6016824))

(assert (=> b!4985138 d!1605423))

(declare-fun d!1605425 () Bool)

(declare-fun list!18487 (Conc!15219) List!57730)

(assert (=> d!1605425 (= (list!18485 totalInput!520) (list!18487 (c!850679 totalInput!520)))))

(declare-fun bs!1184577 () Bool)

(assert (= bs!1184577 d!1605425))

(declare-fun m!6017086 () Bool)

(assert (=> bs!1184577 m!6017086))

(assert (=> b!4985138 d!1605425))

(declare-fun d!1605427 () Bool)

(assert (=> d!1605427 (= (list!18485 input!1580) (list!18487 (c!850679 input!1580)))))

(declare-fun bs!1184578 () Bool)

(assert (= bs!1184578 d!1605427))

(declare-fun m!6017088 () Bool)

(assert (=> bs!1184578 m!6017088))

(assert (=> b!4985138 d!1605427))

(declare-fun d!1605429 () Bool)

(assert (=> d!1605429 (= (list!18485 lt!2060260) (list!18487 (c!850679 lt!2060260)))))

(declare-fun bs!1184579 () Bool)

(assert (= bs!1184579 d!1605429))

(declare-fun m!6017090 () Bool)

(assert (=> bs!1184579 m!6017090))

(assert (=> b!4985148 d!1605429))

(declare-fun d!1605431 () Bool)

(declare-fun c!850732 () Bool)

(assert (=> d!1605431 (= c!850732 (is-Node!15219 (c!850679 totalInput!520)))))

(declare-fun e!3115836 () Bool)

(assert (=> d!1605431 (= (inv!75501 (c!850679 totalInput!520)) e!3115836)))

(declare-fun b!4985409 () Bool)

(assert (=> b!4985409 (= e!3115836 (inv!75506 (c!850679 totalInput!520)))))

(declare-fun b!4985410 () Bool)

(declare-fun e!3115837 () Bool)

(assert (=> b!4985410 (= e!3115836 e!3115837)))

(declare-fun res!2128223 () Bool)

(assert (=> b!4985410 (= res!2128223 (not (is-Leaf!25278 (c!850679 totalInput!520))))))

(assert (=> b!4985410 (=> res!2128223 e!3115837)))

(declare-fun b!4985411 () Bool)

(assert (=> b!4985411 (= e!3115837 (inv!75507 (c!850679 totalInput!520)))))

(assert (= (and d!1605431 c!850732) b!4985409))

(assert (= (and d!1605431 (not c!850732)) b!4985410))

(assert (= (and b!4985410 (not res!2128223)) b!4985411))

(declare-fun m!6017092 () Bool)

(assert (=> b!4985409 m!6017092))

(declare-fun m!6017094 () Bool)

(assert (=> b!4985411 m!6017094))

(assert (=> b!4985150 d!1605431))

(declare-fun d!1605433 () Bool)

(declare-fun dynLambda!23435 (Int BalanceConc!29868) TokenValue!8777)

(assert (=> d!1605433 (= (apply!13954 (transformation!8467 rule!200) lt!2060260) (dynLambda!23435 (toValue!11468 (transformation!8467 rule!200)) lt!2060260))))

(declare-fun b_lambda!198235 () Bool)

(assert (=> (not b_lambda!198235) (not d!1605433)))

(declare-fun t!369951 () Bool)

(declare-fun tb!261715 () Bool)

(assert (=> (and b!4985151 (= (toValue!11468 (transformation!8467 rule!200)) (toValue!11468 (transformation!8467 rule!200))) t!369951) tb!261715))

(declare-fun result!327104 () Bool)

(declare-fun inv!21 (TokenValue!8777) Bool)

(assert (=> tb!261715 (= result!327104 (inv!21 (dynLambda!23435 (toValue!11468 (transformation!8467 rule!200)) lt!2060260)))))

(declare-fun m!6017096 () Bool)

(assert (=> tb!261715 m!6017096))

(assert (=> d!1605433 t!369951))

(declare-fun b_and!349873 () Bool)

(assert (= b_and!349859 (and (=> t!369951 result!327104) b_and!349873)))

(declare-fun m!6017098 () Bool)

(assert (=> d!1605433 m!6017098))

(assert (=> b!4985139 d!1605433))

(declare-fun b!4985422 () Bool)

(declare-fun e!3115847 () Bool)

(assert (=> b!4985422 (= e!3115847 true)))

(declare-fun d!1605435 () Bool)

(assert (=> d!1605435 e!3115847))

(assert (= d!1605435 b!4985422))

(declare-fun order!26601 () Int)

(declare-fun lambda!248019 () Int)

(declare-fun dynLambda!23436 (Int Int) Int)

(assert (=> b!4985422 (< (dynLambda!23429 order!26587 (toValue!11468 (transformation!8467 rule!200))) (dynLambda!23436 order!26601 lambda!248019))))

(assert (=> b!4985422 (< (dynLambda!23431 order!26591 (toChars!11327 (transformation!8467 rule!200))) (dynLambda!23436 order!26601 lambda!248019))))

(assert (=> d!1605435 (= (dynLambda!23435 (toValue!11468 (transformation!8467 rule!200)) (_1!34611 lt!2060270)) (dynLambda!23435 (toValue!11468 (transformation!8467 rule!200)) lt!2060260))))

(declare-fun lt!2060449 () Unit!148730)

(declare-fun Forall2of!494 (Int BalanceConc!29868 BalanceConc!29868) Unit!148730)

(assert (=> d!1605435 (= lt!2060449 (Forall2of!494 lambda!248019 (_1!34611 lt!2060270) lt!2060260))))

(assert (=> d!1605435 (= (list!18485 (_1!34611 lt!2060270)) (list!18485 lt!2060260))))

(assert (=> d!1605435 (= (lemmaEqSameImage!1206 (transformation!8467 rule!200) (_1!34611 lt!2060270) lt!2060260) lt!2060449)))

(declare-fun b_lambda!198237 () Bool)

(assert (=> (not b_lambda!198237) (not d!1605435)))

(declare-fun t!369953 () Bool)

(declare-fun tb!261717 () Bool)

(assert (=> (and b!4985151 (= (toValue!11468 (transformation!8467 rule!200)) (toValue!11468 (transformation!8467 rule!200))) t!369953) tb!261717))

(declare-fun result!327108 () Bool)

(assert (=> tb!261717 (= result!327108 (inv!21 (dynLambda!23435 (toValue!11468 (transformation!8467 rule!200)) (_1!34611 lt!2060270))))))

(declare-fun m!6017100 () Bool)

(assert (=> tb!261717 m!6017100))

(assert (=> d!1605435 t!369953))

(declare-fun b_and!349875 () Bool)

(assert (= b_and!349873 (and (=> t!369953 result!327108) b_and!349875)))

(declare-fun b_lambda!198239 () Bool)

(assert (=> (not b_lambda!198239) (not d!1605435)))

(assert (=> d!1605435 t!369951))

(declare-fun b_and!349877 () Bool)

(assert (= b_and!349875 (and (=> t!369951 result!327104) b_and!349877)))

(assert (=> d!1605435 m!6017098))

(assert (=> d!1605435 m!6016840))

(declare-fun m!6017102 () Bool)

(assert (=> d!1605435 m!6017102))

(assert (=> d!1605435 m!6016804))

(declare-fun m!6017104 () Bool)

(assert (=> d!1605435 m!6017104))

(assert (=> b!4985139 d!1605435))

(declare-fun d!1605437 () Bool)

(declare-fun lt!2060453 () Int)

(assert (=> d!1605437 (= lt!2060453 (size!38257 (list!18485 (_1!34611 lt!2060270))))))

(declare-fun size!38261 (Conc!15219) Int)

(assert (=> d!1605437 (= lt!2060453 (size!38261 (c!850679 (_1!34611 lt!2060270))))))

(assert (=> d!1605437 (= (size!38256 (_1!34611 lt!2060270)) lt!2060453)))

(declare-fun bs!1184580 () Bool)

(assert (= bs!1184580 d!1605437))

(assert (=> bs!1184580 m!6016840))

(assert (=> bs!1184580 m!6016840))

(declare-fun m!6017112 () Bool)

(assert (=> bs!1184580 m!6017112))

(declare-fun m!6017114 () Bool)

(assert (=> bs!1184580 m!6017114))

(assert (=> b!4985141 d!1605437))

(declare-fun d!1605441 () Bool)

(assert (=> d!1605441 (= (apply!13954 (transformation!8467 rule!200) (_1!34611 lt!2060270)) (dynLambda!23435 (toValue!11468 (transformation!8467 rule!200)) (_1!34611 lt!2060270)))))

(declare-fun b_lambda!198241 () Bool)

(assert (=> (not b_lambda!198241) (not d!1605441)))

(assert (=> d!1605441 t!369953))

(declare-fun b_and!349879 () Bool)

(assert (= b_and!349877 (and (=> t!369953 result!327108) b_and!349879)))

(assert (=> d!1605441 m!6017102))

(assert (=> b!4985141 d!1605441))

(declare-fun d!1605443 () Bool)

(declare-fun isEmpty!31151 (Option!14554) Bool)

(assert (=> d!1605443 (= (isDefined!11462 lt!2060275) (not (isEmpty!31151 lt!2060275)))))

(declare-fun bs!1184581 () Bool)

(assert (= bs!1184581 d!1605443))

(declare-fun m!6017116 () Bool)

(assert (=> bs!1184581 m!6017116))

(assert (=> b!4985141 d!1605443))

(declare-fun d!1605445 () Bool)

(assert (=> d!1605445 (= (list!18485 (_1!34611 lt!2060270)) (list!18487 (c!850679 (_1!34611 lt!2060270))))))

(declare-fun bs!1184582 () Bool)

(assert (= bs!1184582 d!1605445))

(declare-fun m!6017118 () Bool)

(assert (=> bs!1184582 m!6017118))

(assert (=> b!4985141 d!1605445))

(declare-fun d!1605447 () Bool)

(declare-fun isEmpty!31152 (Option!14553) Bool)

(assert (=> d!1605447 (= (isDefined!11463 lt!2060272) (not (isEmpty!31152 lt!2060272)))))

(declare-fun bs!1184583 () Bool)

(assert (= bs!1184583 d!1605447))

(declare-fun m!6017120 () Bool)

(assert (=> bs!1184583 m!6017120))

(assert (=> b!4985141 d!1605447))

(declare-fun d!1605449 () Bool)

(declare-fun dynLambda!23437 (Int BalanceConc!29868) Bool)

(assert (=> d!1605449 (dynLambda!23437 lambda!248003 (_1!34611 lt!2060270))))

(declare-fun lt!2060456 () Unit!148730)

(declare-fun choose!36848 (Int BalanceConc!29868) Unit!148730)

(assert (=> d!1605449 (= lt!2060456 (choose!36848 lambda!248003 (_1!34611 lt!2060270)))))

(assert (=> d!1605449 (Forall!1817 lambda!248003)))

(assert (=> d!1605449 (= (ForallOf!1277 lambda!248003 (_1!34611 lt!2060270)) lt!2060456)))

(declare-fun b_lambda!198243 () Bool)

(assert (=> (not b_lambda!198243) (not d!1605449)))

(declare-fun bs!1184584 () Bool)

(assert (= bs!1184584 d!1605449))

(declare-fun m!6017122 () Bool)

(assert (=> bs!1184584 m!6017122))

(declare-fun m!6017124 () Bool)

(assert (=> bs!1184584 m!6017124))

(assert (=> bs!1184584 m!6016862))

(assert (=> b!4985141 d!1605449))

(declare-fun d!1605451 () Bool)

(assert (=> d!1605451 (dynLambda!23437 lambda!248003 lt!2060260)))

(declare-fun lt!2060457 () Unit!148730)

(assert (=> d!1605451 (= lt!2060457 (choose!36848 lambda!248003 lt!2060260))))

(assert (=> d!1605451 (Forall!1817 lambda!248003)))

(assert (=> d!1605451 (= (ForallOf!1277 lambda!248003 lt!2060260) lt!2060457)))

(declare-fun b_lambda!198245 () Bool)

(assert (=> (not b_lambda!198245) (not d!1605451)))

(declare-fun bs!1184585 () Bool)

(assert (= bs!1184585 d!1605451))

(declare-fun m!6017126 () Bool)

(assert (=> bs!1184585 m!6017126))

(declare-fun m!6017128 () Bool)

(assert (=> bs!1184585 m!6017128))

(assert (=> bs!1184585 m!6016862))

(assert (=> b!4985141 d!1605451))

(declare-fun b!4985448 () Bool)

(declare-fun res!2128246 () Bool)

(declare-fun e!3115860 () Bool)

(assert (=> b!4985448 (=> (not res!2128246) (not e!3115860))))

(declare-fun lt!2060473 () Option!14554)

(declare-fun charsOf!5463 (Token!15390) BalanceConc!29868)

(assert (=> b!4985448 (= res!2128246 (= (++!12562 (list!18485 (charsOf!5463 (_1!34613 (get!20038 lt!2060473)))) (_2!34613 (get!20038 lt!2060473))) lt!2060259))))

(declare-fun b!4985449 () Bool)

(declare-fun e!3115862 () Bool)

(assert (=> b!4985449 (= e!3115862 (matchR!6694 (regex!8467 rule!200) (_1!34614 (findLongestMatchInner!1911 (regex!8467 rule!200) Nil!57606 (size!38257 Nil!57606) lt!2060259 lt!2060259 (size!38257 lt!2060259)))))))

(declare-fun b!4985450 () Bool)

(declare-fun res!2128244 () Bool)

(assert (=> b!4985450 (=> (not res!2128244) (not e!3115860))))

(assert (=> b!4985450 (= res!2128244 (= (value!270731 (_1!34613 (get!20038 lt!2060473))) (apply!13954 (transformation!8467 (rule!11731 (_1!34613 (get!20038 lt!2060473)))) (seqFromList!6088 (originalCharacters!8726 (_1!34613 (get!20038 lt!2060473)))))))))

(declare-fun d!1605453 () Bool)

(declare-fun e!3115861 () Bool)

(assert (=> d!1605453 e!3115861))

(declare-fun res!2128247 () Bool)

(assert (=> d!1605453 (=> res!2128247 e!3115861)))

(assert (=> d!1605453 (= res!2128247 (isEmpty!31151 lt!2060473))))

(declare-fun e!3115859 () Option!14554)

(assert (=> d!1605453 (= lt!2060473 e!3115859)))

(declare-fun c!850736 () Bool)

(declare-fun lt!2060469 () tuple2!62622)

(assert (=> d!1605453 (= c!850736 (isEmpty!31146 (_1!34614 lt!2060469)))))

(assert (=> d!1605453 (= lt!2060469 (findLongestMatch!1725 (regex!8467 rule!200) lt!2060259))))

(assert (=> d!1605453 (ruleValid!3875 thiss!16165 rule!200)))

(assert (=> d!1605453 (= (maxPrefixOneRule!3683 thiss!16165 rule!200 lt!2060259) lt!2060473)))

(declare-fun b!4985451 () Bool)

(assert (=> b!4985451 (= e!3115861 e!3115860)))

(declare-fun res!2128248 () Bool)

(assert (=> b!4985451 (=> (not res!2128248) (not e!3115860))))

(assert (=> b!4985451 (= res!2128248 (matchR!6694 (regex!8467 rule!200) (list!18485 (charsOf!5463 (_1!34613 (get!20038 lt!2060473))))))))

(declare-fun b!4985452 () Bool)

(declare-fun res!2128245 () Bool)

(assert (=> b!4985452 (=> (not res!2128245) (not e!3115860))))

(assert (=> b!4985452 (= res!2128245 (= (rule!11731 (_1!34613 (get!20038 lt!2060473))) rule!200))))

(declare-fun b!4985453 () Bool)

(assert (=> b!4985453 (= e!3115860 (= (size!38255 (_1!34613 (get!20038 lt!2060473))) (size!38257 (originalCharacters!8726 (_1!34613 (get!20038 lt!2060473))))))))

(declare-fun b!4985454 () Bool)

(assert (=> b!4985454 (= e!3115859 None!14553)))

(declare-fun b!4985455 () Bool)

(assert (=> b!4985455 (= e!3115859 (Some!14553 (tuple2!62621 (Token!15391 (apply!13954 (transformation!8467 rule!200) (seqFromList!6088 (_1!34614 lt!2060469))) rule!200 (size!38256 (seqFromList!6088 (_1!34614 lt!2060469))) (_1!34614 lt!2060469)) (_2!34614 lt!2060469))))))

(declare-fun lt!2060472 () Unit!148730)

(assert (=> b!4985455 (= lt!2060472 (longestMatchIsAcceptedByMatchOrIsEmpty!1872 (regex!8467 rule!200) lt!2060259))))

(declare-fun res!2128249 () Bool)

(assert (=> b!4985455 (= res!2128249 (isEmpty!31146 (_1!34614 (findLongestMatchInner!1911 (regex!8467 rule!200) Nil!57606 (size!38257 Nil!57606) lt!2060259 lt!2060259 (size!38257 lt!2060259)))))))

(assert (=> b!4985455 (=> res!2128249 e!3115862)))

(assert (=> b!4985455 e!3115862))

(declare-fun lt!2060471 () Unit!148730)

(assert (=> b!4985455 (= lt!2060471 lt!2060472)))

(declare-fun lt!2060470 () Unit!148730)

(declare-fun lemmaSemiInverse!2626 (TokenValueInjection!16862 BalanceConc!29868) Unit!148730)

(assert (=> b!4985455 (= lt!2060470 (lemmaSemiInverse!2626 (transformation!8467 rule!200) (seqFromList!6088 (_1!34614 lt!2060469))))))

(declare-fun b!4985456 () Bool)

(declare-fun res!2128243 () Bool)

(assert (=> b!4985456 (=> (not res!2128243) (not e!3115860))))

(assert (=> b!4985456 (= res!2128243 (< (size!38257 (_2!34613 (get!20038 lt!2060473))) (size!38257 lt!2060259)))))

(assert (= (and d!1605453 c!850736) b!4985454))

(assert (= (and d!1605453 (not c!850736)) b!4985455))

(assert (= (and b!4985455 (not res!2128249)) b!4985449))

(assert (= (and d!1605453 (not res!2128247)) b!4985451))

(assert (= (and b!4985451 res!2128248) b!4985448))

(assert (= (and b!4985448 res!2128246) b!4985456))

(assert (= (and b!4985456 res!2128243) b!4985452))

(assert (= (and b!4985452 res!2128245) b!4985450))

(assert (= (and b!4985450 res!2128244) b!4985453))

(declare-fun m!6017134 () Bool)

(assert (=> b!4985453 m!6017134))

(declare-fun m!6017136 () Bool)

(assert (=> b!4985453 m!6017136))

(assert (=> b!4985450 m!6017134))

(declare-fun m!6017138 () Bool)

(assert (=> b!4985450 m!6017138))

(assert (=> b!4985450 m!6017138))

(declare-fun m!6017140 () Bool)

(assert (=> b!4985450 m!6017140))

(assert (=> b!4985451 m!6017134))

(declare-fun m!6017142 () Bool)

(assert (=> b!4985451 m!6017142))

(assert (=> b!4985451 m!6017142))

(declare-fun m!6017144 () Bool)

(assert (=> b!4985451 m!6017144))

(assert (=> b!4985451 m!6017144))

(declare-fun m!6017146 () Bool)

(assert (=> b!4985451 m!6017146))

(assert (=> b!4985449 m!6016826))

(assert (=> b!4985449 m!6016824))

(assert (=> b!4985449 m!6016826))

(assert (=> b!4985449 m!6016824))

(assert (=> b!4985449 m!6016830))

(assert (=> b!4985449 m!6017038))

(declare-fun m!6017148 () Bool)

(assert (=> d!1605453 m!6017148))

(declare-fun m!6017150 () Bool)

(assert (=> d!1605453 m!6017150))

(declare-fun m!6017152 () Bool)

(assert (=> d!1605453 m!6017152))

(assert (=> d!1605453 m!6016854))

(declare-fun m!6017154 () Bool)

(assert (=> b!4985455 m!6017154))

(assert (=> b!4985455 m!6016824))

(assert (=> b!4985455 m!6017154))

(declare-fun m!6017156 () Bool)

(assert (=> b!4985455 m!6017156))

(assert (=> b!4985455 m!6017154))

(declare-fun m!6017158 () Bool)

(assert (=> b!4985455 m!6017158))

(assert (=> b!4985455 m!6016822))

(assert (=> b!4985455 m!6016826))

(assert (=> b!4985455 m!6016824))

(assert (=> b!4985455 m!6016830))

(assert (=> b!4985455 m!6017036))

(assert (=> b!4985455 m!6016826))

(assert (=> b!4985455 m!6017154))

(declare-fun m!6017160 () Bool)

(assert (=> b!4985455 m!6017160))

(assert (=> b!4985448 m!6017134))

(assert (=> b!4985448 m!6017142))

(assert (=> b!4985448 m!6017142))

(assert (=> b!4985448 m!6017144))

(assert (=> b!4985448 m!6017144))

(declare-fun m!6017162 () Bool)

(assert (=> b!4985448 m!6017162))

(assert (=> b!4985452 m!6017134))

(assert (=> b!4985456 m!6017134))

(declare-fun m!6017164 () Bool)

(assert (=> b!4985456 m!6017164))

(assert (=> b!4985456 m!6016824))

(assert (=> b!4985141 d!1605453))

(declare-fun d!1605459 () Bool)

(declare-fun fromListB!2754 (List!57730) BalanceConc!29868)

(assert (=> d!1605459 (= (seqFromList!6088 lt!2060264) (fromListB!2754 lt!2060264))))

(declare-fun bs!1184588 () Bool)

(assert (= bs!1184588 d!1605459))

(declare-fun m!6017166 () Bool)

(assert (=> bs!1184588 m!6017166))

(assert (=> b!4985141 d!1605459))

(declare-fun d!1605461 () Bool)

(assert (=> d!1605461 (= (get!20037 lt!2060272) (v!50549 lt!2060272))))

(assert (=> b!4985140 d!1605461))

(declare-fun b!4985465 () Bool)

(declare-fun tp!1397243 () Bool)

(declare-fun tp!1397245 () Bool)

(declare-fun e!3115868 () Bool)

(assert (=> b!4985465 (= e!3115868 (and (inv!75501 (left!42133 (c!850679 input!1580))) tp!1397243 (inv!75501 (right!42463 (c!850679 input!1580))) tp!1397245))))

(declare-fun b!4985467 () Bool)

(declare-fun e!3115867 () Bool)

(declare-fun tp!1397244 () Bool)

(assert (=> b!4985467 (= e!3115867 tp!1397244)))

(declare-fun b!4985466 () Bool)

(declare-fun inv!75508 (IArray!30499) Bool)

(assert (=> b!4985466 (= e!3115868 (and (inv!75508 (xs!18545 (c!850679 input!1580))) e!3115867))))

(assert (=> b!4985143 (= tp!1397220 (and (inv!75501 (c!850679 input!1580)) e!3115868))))

(assert (= (and b!4985143 (is-Node!15219 (c!850679 input!1580))) b!4985465))

(assert (= b!4985466 b!4985467))

(assert (= (and b!4985143 (is-Leaf!25278 (c!850679 input!1580))) b!4985466))

(declare-fun m!6017168 () Bool)

(assert (=> b!4985465 m!6017168))

(declare-fun m!6017170 () Bool)

(assert (=> b!4985465 m!6017170))

(declare-fun m!6017172 () Bool)

(assert (=> b!4985466 m!6017172))

(assert (=> b!4985143 m!6016856))

(declare-fun b!4985480 () Bool)

(declare-fun e!3115871 () Bool)

(declare-fun tp!1397258 () Bool)

(assert (=> b!4985480 (= e!3115871 tp!1397258)))

(declare-fun b!4985481 () Bool)

(declare-fun tp!1397256 () Bool)

(declare-fun tp!1397259 () Bool)

(assert (=> b!4985481 (= e!3115871 (and tp!1397256 tp!1397259))))

(declare-fun b!4985479 () Bool)

(declare-fun tp!1397257 () Bool)

(declare-fun tp!1397260 () Bool)

(assert (=> b!4985479 (= e!3115871 (and tp!1397257 tp!1397260))))

(declare-fun b!4985478 () Bool)

(declare-fun tp_is_empty!36401 () Bool)

(assert (=> b!4985478 (= e!3115871 tp_is_empty!36401)))

(assert (=> b!4985145 (= tp!1397218 e!3115871)))

(assert (= (and b!4985145 (is-ElementMatch!13700 (regex!8467 rule!200))) b!4985478))

(assert (= (and b!4985145 (is-Concat!22477 (regex!8467 rule!200))) b!4985479))

(assert (= (and b!4985145 (is-Star!13700 (regex!8467 rule!200))) b!4985480))

(assert (= (and b!4985145 (is-Union!13700 (regex!8467 rule!200))) b!4985481))

(declare-fun tp!1397261 () Bool)

(declare-fun e!3115873 () Bool)

(declare-fun b!4985482 () Bool)

(declare-fun tp!1397263 () Bool)

(assert (=> b!4985482 (= e!3115873 (and (inv!75501 (left!42133 (c!850679 totalInput!520))) tp!1397261 (inv!75501 (right!42463 (c!850679 totalInput!520))) tp!1397263))))

(declare-fun b!4985484 () Bool)

(declare-fun e!3115872 () Bool)

(declare-fun tp!1397262 () Bool)

(assert (=> b!4985484 (= e!3115872 tp!1397262)))

(declare-fun b!4985483 () Bool)

(assert (=> b!4985483 (= e!3115873 (and (inv!75508 (xs!18545 (c!850679 totalInput!520))) e!3115872))))

(assert (=> b!4985150 (= tp!1397221 (and (inv!75501 (c!850679 totalInput!520)) e!3115873))))

(assert (= (and b!4985150 (is-Node!15219 (c!850679 totalInput!520))) b!4985482))

(assert (= b!4985483 b!4985484))

(assert (= (and b!4985150 (is-Leaf!25278 (c!850679 totalInput!520))) b!4985483))

(declare-fun m!6017174 () Bool)

(assert (=> b!4985482 m!6017174))

(declare-fun m!6017176 () Bool)

(assert (=> b!4985482 m!6017176))

(declare-fun m!6017178 () Bool)

(assert (=> b!4985483 m!6017178))

(assert (=> b!4985150 m!6016794))

(declare-fun b_lambda!198247 () Bool)

(assert (= b_lambda!198237 (or (and b!4985151 b_free!133167) b_lambda!198247)))

(declare-fun b_lambda!198249 () Bool)

(assert (= b_lambda!198243 (or b!4985149 b_lambda!198249)))

(declare-fun bs!1184589 () Bool)

(declare-fun d!1605463 () Bool)

(assert (= bs!1184589 (and d!1605463 b!4985149)))

(declare-fun dynLambda!23438 (Int TokenValue!8777) BalanceConc!29868)

(assert (=> bs!1184589 (= (dynLambda!23437 lambda!248003 (_1!34611 lt!2060270)) (= (list!18485 (dynLambda!23438 (toChars!11327 (transformation!8467 rule!200)) (dynLambda!23435 (toValue!11468 (transformation!8467 rule!200)) (_1!34611 lt!2060270)))) (list!18485 (_1!34611 lt!2060270))))))

(declare-fun b_lambda!198259 () Bool)

(assert (=> (not b_lambda!198259) (not bs!1184589)))

(declare-fun t!369955 () Bool)

(declare-fun tb!261719 () Bool)

(assert (=> (and b!4985151 (= (toChars!11327 (transformation!8467 rule!200)) (toChars!11327 (transformation!8467 rule!200))) t!369955) tb!261719))

(declare-fun tp!1397266 () Bool)

(declare-fun e!3115876 () Bool)

(declare-fun b!4985489 () Bool)

(assert (=> b!4985489 (= e!3115876 (and (inv!75501 (c!850679 (dynLambda!23438 (toChars!11327 (transformation!8467 rule!200)) (dynLambda!23435 (toValue!11468 (transformation!8467 rule!200)) (_1!34611 lt!2060270))))) tp!1397266))))

(declare-fun result!327114 () Bool)

(assert (=> tb!261719 (= result!327114 (and (inv!75500 (dynLambda!23438 (toChars!11327 (transformation!8467 rule!200)) (dynLambda!23435 (toValue!11468 (transformation!8467 rule!200)) (_1!34611 lt!2060270)))) e!3115876))))

(assert (= tb!261719 b!4985489))

(declare-fun m!6017180 () Bool)

(assert (=> b!4985489 m!6017180))

(declare-fun m!6017182 () Bool)

(assert (=> tb!261719 m!6017182))

(assert (=> bs!1184589 t!369955))

(declare-fun b_and!349881 () Bool)

(assert (= b_and!349861 (and (=> t!369955 result!327114) b_and!349881)))

(declare-fun b_lambda!198261 () Bool)

(assert (=> (not b_lambda!198261) (not bs!1184589)))

(assert (=> bs!1184589 t!369953))

(declare-fun b_and!349883 () Bool)

(assert (= b_and!349879 (and (=> t!369953 result!327108) b_and!349883)))

(assert (=> bs!1184589 m!6017102))

(declare-fun m!6017184 () Bool)

(assert (=> bs!1184589 m!6017184))

(declare-fun m!6017186 () Bool)

(assert (=> bs!1184589 m!6017186))

(assert (=> bs!1184589 m!6016840))

(assert (=> bs!1184589 m!6017102))

(assert (=> bs!1184589 m!6017184))

(assert (=> d!1605449 d!1605463))

(declare-fun b_lambda!198251 () Bool)

(assert (= b_lambda!198235 (or (and b!4985151 b_free!133167) b_lambda!198251)))

(declare-fun b_lambda!198253 () Bool)

(assert (= b_lambda!198239 (or (and b!4985151 b_free!133167) b_lambda!198253)))

(declare-fun b_lambda!198255 () Bool)

(assert (= b_lambda!198245 (or b!4985149 b_lambda!198255)))

(declare-fun bs!1184590 () Bool)

(declare-fun d!1605465 () Bool)

(assert (= bs!1184590 (and d!1605465 b!4985149)))

(assert (=> bs!1184590 (= (dynLambda!23437 lambda!248003 lt!2060260) (= (list!18485 (dynLambda!23438 (toChars!11327 (transformation!8467 rule!200)) (dynLambda!23435 (toValue!11468 (transformation!8467 rule!200)) lt!2060260))) (list!18485 lt!2060260)))))

(declare-fun b_lambda!198263 () Bool)

(assert (=> (not b_lambda!198263) (not bs!1184590)))

(declare-fun t!369957 () Bool)

(declare-fun tb!261721 () Bool)

(assert (=> (and b!4985151 (= (toChars!11327 (transformation!8467 rule!200)) (toChars!11327 (transformation!8467 rule!200))) t!369957) tb!261721))

(declare-fun b!4985490 () Bool)

(declare-fun tp!1397267 () Bool)

(declare-fun e!3115877 () Bool)

(assert (=> b!4985490 (= e!3115877 (and (inv!75501 (c!850679 (dynLambda!23438 (toChars!11327 (transformation!8467 rule!200)) (dynLambda!23435 (toValue!11468 (transformation!8467 rule!200)) lt!2060260)))) tp!1397267))))

(declare-fun result!327118 () Bool)

(assert (=> tb!261721 (= result!327118 (and (inv!75500 (dynLambda!23438 (toChars!11327 (transformation!8467 rule!200)) (dynLambda!23435 (toValue!11468 (transformation!8467 rule!200)) lt!2060260))) e!3115877))))

(assert (= tb!261721 b!4985490))

(declare-fun m!6017188 () Bool)

(assert (=> b!4985490 m!6017188))

(declare-fun m!6017190 () Bool)

(assert (=> tb!261721 m!6017190))

(assert (=> bs!1184590 t!369957))

(declare-fun b_and!349885 () Bool)

(assert (= b_and!349881 (and (=> t!369957 result!327118) b_and!349885)))

(declare-fun b_lambda!198265 () Bool)

(assert (=> (not b_lambda!198265) (not bs!1184590)))

(assert (=> bs!1184590 t!369951))

(declare-fun b_and!349887 () Bool)

(assert (= b_and!349883 (and (=> t!369951 result!327104) b_and!349887)))

(assert (=> bs!1184590 m!6017098))

(declare-fun m!6017192 () Bool)

(assert (=> bs!1184590 m!6017192))

(declare-fun m!6017194 () Bool)

(assert (=> bs!1184590 m!6017194))

(assert (=> bs!1184590 m!6016804))

(assert (=> bs!1184590 m!6017098))

(assert (=> bs!1184590 m!6017192))

(assert (=> d!1605451 d!1605465))

(declare-fun b_lambda!198257 () Bool)

(assert (= b_lambda!198241 (or (and b!4985151 b_free!133167) b_lambda!198257)))

(push 1)

(assert (not b_lambda!198261))

(assert (not b_lambda!198259))

(assert (not b!4985400))

(assert (not d!1605413))

(assert (not b!4985300))

(assert (not bm!347874))

(assert (not d!1605437))

(assert (not tb!261717))

(assert (not b!4985301))

(assert (not b!4985467))

(assert (not d!1605453))

(assert (not b!4985398))

(assert (not tb!261719))

(assert (not bm!347876))

(assert (not b_lambda!198257))

(assert (not b!4985143))

(assert (not b!4985229))

(assert (not d!1605459))

(assert (not b!4985490))

(assert (not b!4985480))

(assert (not d!1605443))

(assert (not b_lambda!198263))

(assert (not b!4985465))

(assert (not b!4985297))

(assert (not b!4985332))

(assert (not d!1605427))

(assert (not b_lambda!198253))

(assert (not d!1605375))

(assert (not d!1605371))

(assert (not b!4985451))

(assert (not tb!261721))

(assert (not bs!1184589))

(assert (not d!1605447))

(assert (not b_lambda!198255))

(assert (not b!4985449))

(assert (not bm!347872))

(assert (not b!4985231))

(assert (not b_lambda!198251))

(assert (not b_lambda!198249))

(assert (not d!1605405))

(assert (not b!4985329))

(assert (not b!4985324))

(assert (not b!4985409))

(assert (not bm!347878))

(assert (not d!1605449))

(assert (not b!4985456))

(assert (not d!1605369))

(assert (not bm!347877))

(assert b_and!349887)

(assert (not b_lambda!198247))

(assert (not bm!347875))

(assert (not d!1605379))

(assert (not d!1605401))

(assert (not b!4985150))

(assert (not b!4985411))

(assert (not b!4985405))

(assert (not tb!261715))

(assert (not d!1605397))

(assert (not b!4985482))

(assert tp_is_empty!36401)

(assert (not d!1605393))

(assert (not d!1605429))

(assert (not b!4985452))

(assert (not b!4985234))

(assert (not b!4985484))

(assert (not d!1605425))

(assert (not b!4985479))

(assert (not b!4985448))

(assert (not d!1605445))

(assert (not d!1605365))

(assert (not b!4985483))

(assert (not d!1605421))

(assert (not b!4985291))

(assert (not bm!347873))

(assert (not b!4985399))

(assert (not b!4985455))

(assert (not b!4985453))

(assert (not d!1605435))

(assert (not b!4985489))

(assert (not b_next!133957))

(assert (not b!4985466))

(assert (not b_next!133959))

(assert (not d!1605403))

(assert (not b!4985221))

(assert (not b!4985393))

(assert b_and!349885)

(assert (not d!1605451))

(assert (not bm!347871))

(assert (not b!4985481))

(assert (not b!4985392))

(assert (not b!4985450))

(assert (not b!4985336))

(assert (not bm!347882))

(assert (not b!4985408))

(assert (not b_lambda!198265))

(assert (not bs!1184590))

(assert (not d!1605423))

(check-sat)

(pop 1)

(push 1)

(assert b_and!349885)

(assert b_and!349887)

(assert (not b_next!133959))

(assert (not b_next!133957))

(check-sat)

(pop 1)

