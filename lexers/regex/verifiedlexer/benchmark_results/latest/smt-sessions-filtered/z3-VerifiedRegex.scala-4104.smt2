; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!220020 () Bool)

(assert start!220020)

(declare-fun b!2254318 () Bool)

(declare-fun b_free!66173 () Bool)

(declare-fun b_next!66877 () Bool)

(assert (=> b!2254318 (= b_free!66173 (not b_next!66877))))

(declare-fun tp!712364 () Bool)

(declare-fun b_and!176769 () Bool)

(assert (=> b!2254318 (= tp!712364 b_and!176769)))

(declare-fun b_free!66175 () Bool)

(declare-fun b_next!66879 () Bool)

(assert (=> b!2254318 (= b_free!66175 (not b_next!66879))))

(declare-fun tp!712360 () Bool)

(declare-fun b_and!176771 () Bool)

(assert (=> b!2254318 (= tp!712360 b_and!176771)))

(declare-fun b!2254301 () Bool)

(declare-fun b_free!66177 () Bool)

(declare-fun b_next!66881 () Bool)

(assert (=> b!2254301 (= b_free!66177 (not b_next!66881))))

(declare-fun tp!712367 () Bool)

(declare-fun b_and!176773 () Bool)

(assert (=> b!2254301 (= tp!712367 b_and!176773)))

(declare-fun b_free!66179 () Bool)

(declare-fun b_next!66883 () Bool)

(assert (=> b!2254301 (= b_free!66179 (not b_next!66883))))

(declare-fun tp!712361 () Bool)

(declare-fun b_and!176775 () Bool)

(assert (=> b!2254301 (= tp!712361 b_and!176775)))

(declare-fun b!2254291 () Bool)

(declare-fun b_free!66181 () Bool)

(declare-fun b_next!66885 () Bool)

(assert (=> b!2254291 (= b_free!66181 (not b_next!66885))))

(declare-fun tp!712373 () Bool)

(declare-fun b_and!176777 () Bool)

(assert (=> b!2254291 (= tp!712373 b_and!176777)))

(declare-fun b_free!66183 () Bool)

(declare-fun b_next!66887 () Bool)

(assert (=> b!2254291 (= b_free!66183 (not b_next!66887))))

(declare-fun tp!712362 () Bool)

(declare-fun b_and!176779 () Bool)

(assert (=> b!2254291 (= tp!712362 b_and!176779)))

(declare-fun b!2254320 () Bool)

(declare-fun b_free!66185 () Bool)

(declare-fun b_next!66889 () Bool)

(assert (=> b!2254320 (= b_free!66185 (not b_next!66889))))

(declare-fun tp!712359 () Bool)

(declare-fun b_and!176781 () Bool)

(assert (=> b!2254320 (= tp!712359 b_and!176781)))

(declare-fun b_free!66187 () Bool)

(declare-fun b_next!66891 () Bool)

(assert (=> b!2254320 (= b_free!66187 (not b_next!66891))))

(declare-fun tp!712371 () Bool)

(declare-fun b_and!176783 () Bool)

(assert (=> b!2254320 (= tp!712371 b_and!176783)))

(declare-fun e!1442732 () Bool)

(assert (=> b!2254291 (= e!1442732 (and tp!712373 tp!712362))))

(declare-fun b!2254292 () Bool)

(declare-fun res!963381 () Bool)

(declare-fun e!1442726 () Bool)

(assert (=> b!2254292 (=> res!963381 e!1442726)))

(declare-datatypes ((C!13320 0))(
  ( (C!13321 (val!7708 Int)) )
))
(declare-datatypes ((List!26809 0))(
  ( (Nil!26715) (Cons!26715 (h!32116 C!13320) (t!201133 List!26809)) )
))
(declare-fun lt!837872 () List!26809)

(declare-fun isEmpty!15078 (List!26809) Bool)

(assert (=> b!2254292 (= res!963381 (isEmpty!15078 lt!837872))))

(declare-fun b!2254293 () Bool)

(declare-fun e!1442741 () Bool)

(declare-datatypes ((List!26810 0))(
  ( (Nil!26716) (Cons!26716 (h!32117 (_ BitVec 16)) (t!201134 List!26810)) )
))
(declare-datatypes ((TokenValue!4401 0))(
  ( (FloatLiteralValue!8802 (text!31252 List!26810)) (TokenValueExt!4400 (__x!17862 Int)) (Broken!22005 (value!134605 List!26810)) (Object!4494) (End!4401) (Def!4401) (Underscore!4401) (Match!4401) (Else!4401) (Error!4401) (Case!4401) (If!4401) (Extends!4401) (Abstract!4401) (Class!4401) (Val!4401) (DelimiterValue!8802 (del!4461 List!26810)) (KeywordValue!4407 (value!134606 List!26810)) (CommentValue!8802 (value!134607 List!26810)) (WhitespaceValue!8802 (value!134608 List!26810)) (IndentationValue!4401 (value!134609 List!26810)) (String!29108) (Int32!4401) (Broken!22006 (value!134610 List!26810)) (Boolean!4402) (Unit!39643) (OperatorValue!4404 (op!4461 List!26810)) (IdentifierValue!8802 (value!134611 List!26810)) (IdentifierValue!8803 (value!134612 List!26810)) (WhitespaceValue!8803 (value!134613 List!26810)) (True!8802) (False!8802) (Broken!22007 (value!134614 List!26810)) (Broken!22008 (value!134615 List!26810)) (True!8803) (RightBrace!4401) (RightBracket!4401) (Colon!4401) (Null!4401) (Comma!4401) (LeftBracket!4401) (False!8803) (LeftBrace!4401) (ImaginaryLiteralValue!4401 (text!31253 List!26810)) (StringLiteralValue!13203 (value!134616 List!26810)) (EOFValue!4401 (value!134617 List!26810)) (IdentValue!4401 (value!134618 List!26810)) (DelimiterValue!8803 (value!134619 List!26810)) (DedentValue!4401 (value!134620 List!26810)) (NewLineValue!4401 (value!134621 List!26810)) (IntegerValue!13203 (value!134622 (_ BitVec 32)) (text!31254 List!26810)) (IntegerValue!13204 (value!134623 Int) (text!31255 List!26810)) (Times!4401) (Or!4401) (Equal!4401) (Minus!4401) (Broken!22009 (value!134624 List!26810)) (And!4401) (Div!4401) (LessEqual!4401) (Mod!4401) (Concat!10988) (Not!4401) (Plus!4401) (SpaceValue!4401 (value!134625 List!26810)) (IntegerValue!13205 (value!134626 Int) (text!31256 List!26810)) (StringLiteralValue!13204 (text!31257 List!26810)) (FloatLiteralValue!8803 (text!31258 List!26810)) (BytesLiteralValue!4401 (value!134627 List!26810)) (CommentValue!8803 (value!134628 List!26810)) (StringLiteralValue!13205 (value!134629 List!26810)) (ErrorTokenValue!4401 (msg!4462 List!26810)) )
))
(declare-datatypes ((IArray!17257 0))(
  ( (IArray!17258 (innerList!8686 List!26809)) )
))
(declare-datatypes ((Conc!8626 0))(
  ( (Node!8626 (left!20294 Conc!8626) (right!20624 Conc!8626) (csize!17482 Int) (cheight!8837 Int)) (Leaf!12731 (xs!11568 IArray!17257) (csize!17483 Int)) (Empty!8626) )
))
(declare-datatypes ((BalanceConc!16980 0))(
  ( (BalanceConc!16981 (c!358420 Conc!8626)) )
))
(declare-datatypes ((String!29109 0))(
  ( (String!29110 (value!134630 String)) )
))
(declare-datatypes ((Regex!6587 0))(
  ( (ElementMatch!6587 (c!358421 C!13320)) (Concat!10989 (regOne!13686 Regex!6587) (regTwo!13686 Regex!6587)) (EmptyExpr!6587) (Star!6587 (reg!6916 Regex!6587)) (EmptyLang!6587) (Union!6587 (regOne!13687 Regex!6587) (regTwo!13687 Regex!6587)) )
))
(declare-datatypes ((TokenValueInjection!8342 0))(
  ( (TokenValueInjection!8343 (toValue!5981 Int) (toChars!5840 Int)) )
))
(declare-datatypes ((Rule!8278 0))(
  ( (Rule!8279 (regex!4239 Regex!6587) (tag!4729 String!29109) (isSeparator!4239 Bool) (transformation!4239 TokenValueInjection!8342)) )
))
(declare-datatypes ((Token!7956 0))(
  ( (Token!7957 (value!134631 TokenValue!4401) (rule!6543 Rule!8278) (size!20914 Int) (originalCharacters!5009 List!26809)) )
))
(declare-datatypes ((List!26811 0))(
  ( (Nil!26717) (Cons!26717 (h!32118 Token!7956) (t!201135 List!26811)) )
))
(declare-fun tokens!456 () List!26811)

(declare-fun otherP!12 () List!26809)

(declare-fun size!20915 (BalanceConc!16980) Int)

(declare-fun charsOf!2627 (Token!7956) BalanceConc!16980)

(declare-fun head!4810 (List!26811) Token!7956)

(declare-fun size!20916 (List!26809) Int)

(assert (=> b!2254293 (= e!1442741 (<= (size!20915 (charsOf!2627 (head!4810 tokens!456))) (size!20916 otherP!12)))))

(declare-fun b!2254294 () Bool)

(declare-fun e!1442744 () Bool)

(declare-fun e!1442729 () Bool)

(assert (=> b!2254294 (= e!1442744 e!1442729)))

(declare-fun res!963362 () Bool)

(assert (=> b!2254294 (=> res!963362 e!1442729)))

(declare-datatypes ((tuple2!26242 0))(
  ( (tuple2!26243 (_1!15631 Token!7956) (_2!15631 List!26809)) )
))
(declare-fun lt!837877 () tuple2!26242)

(assert (=> b!2254294 (= res!963362 (not (= (h!32118 tokens!456) (_1!15631 lt!837877))))))

(declare-datatypes ((Option!5215 0))(
  ( (None!5214) (Some!5214 (v!30238 tuple2!26242)) )
))
(declare-fun lt!837871 () Option!5215)

(declare-fun get!8066 (Option!5215) tuple2!26242)

(assert (=> b!2254294 (= lt!837877 (get!8066 lt!837871))))

(declare-datatypes ((LexerInterface!3836 0))(
  ( (LexerInterfaceExt!3833 (__x!17863 Int)) (Lexer!3834) )
))
(declare-fun thiss!16613 () LexerInterface!3836)

(declare-fun input!1722 () List!26809)

(declare-datatypes ((List!26812 0))(
  ( (Nil!26718) (Cons!26718 (h!32119 Rule!8278) (t!201136 List!26812)) )
))
(declare-fun rules!1750 () List!26812)

(declare-fun maxPrefix!2124 (LexerInterface!3836 List!26812 List!26809) Option!5215)

(assert (=> b!2254294 (= lt!837871 (maxPrefix!2124 thiss!16613 rules!1750 input!1722))))

(declare-fun e!1442727 () Bool)

(declare-fun e!1442730 () Bool)

(declare-fun b!2254295 () Bool)

(declare-fun tp!712366 () Bool)

(declare-fun inv!36250 (String!29109) Bool)

(declare-fun inv!36253 (TokenValueInjection!8342) Bool)

(assert (=> b!2254295 (= e!1442727 (and tp!712366 (inv!36250 (tag!4729 (rule!6543 (h!32118 tokens!456)))) (inv!36253 (transformation!4239 (rule!6543 (h!32118 tokens!456)))) e!1442730))))

(declare-fun res!963378 () Bool)

(declare-fun e!1442738 () Bool)

(assert (=> start!220020 (=> (not res!963378) (not e!1442738))))

(get-info :version)

(assert (=> start!220020 (= res!963378 ((_ is Lexer!3834) thiss!16613))))

(assert (=> start!220020 e!1442738))

(assert (=> start!220020 true))

(declare-fun e!1442734 () Bool)

(assert (=> start!220020 e!1442734))

(declare-fun e!1442752 () Bool)

(assert (=> start!220020 e!1442752))

(declare-fun e!1442740 () Bool)

(assert (=> start!220020 e!1442740))

(declare-fun e!1442743 () Bool)

(assert (=> start!220020 e!1442743))

(declare-fun e!1442751 () Bool)

(assert (=> start!220020 e!1442751))

(declare-fun e!1442737 () Bool)

(assert (=> start!220020 e!1442737))

(declare-fun e!1442755 () Bool)

(assert (=> start!220020 e!1442755))

(declare-fun b!2254296 () Bool)

(declare-fun res!963380 () Bool)

(declare-fun e!1442753 () Bool)

(assert (=> b!2254296 (=> (not res!963380) (not e!1442753))))

(declare-fun e!1442749 () Bool)

(assert (=> b!2254296 (= res!963380 e!1442749)))

(declare-fun res!963374 () Bool)

(assert (=> b!2254296 (=> res!963374 e!1442749)))

(declare-fun lt!837878 () Bool)

(assert (=> b!2254296 (= res!963374 lt!837878)))

(declare-fun b!2254297 () Bool)

(declare-fun res!963366 () Bool)

(assert (=> b!2254297 (=> (not res!963366) (not e!1442738))))

(declare-fun r!2363 () Rule!8278)

(declare-fun contains!4591 (List!26812 Rule!8278) Bool)

(assert (=> b!2254297 (= res!963366 (contains!4591 rules!1750 r!2363))))

(declare-fun e!1442731 () Bool)

(declare-fun b!2254298 () Bool)

(declare-fun tp!712372 () Bool)

(assert (=> b!2254298 (= e!1442737 (and tp!712372 (inv!36250 (tag!4729 r!2363)) (inv!36253 (transformation!4239 r!2363)) e!1442731))))

(declare-fun b!2254299 () Bool)

(declare-fun e!1442742 () Bool)

(declare-fun tp!712356 () Bool)

(declare-fun inv!36254 (Token!7956) Bool)

(assert (=> b!2254299 (= e!1442755 (and (inv!36254 (h!32118 tokens!456)) e!1442742 tp!712356))))

(declare-fun tp!712357 () Bool)

(declare-fun e!1442745 () Bool)

(declare-fun b!2254300 () Bool)

(assert (=> b!2254300 (= e!1442745 (and tp!712357 (inv!36250 (tag!4729 (h!32119 rules!1750))) (inv!36253 (transformation!4239 (h!32119 rules!1750))) e!1442732))))

(declare-fun e!1442748 () Bool)

(assert (=> b!2254301 (= e!1442748 (and tp!712367 tp!712361))))

(declare-fun b!2254302 () Bool)

(declare-fun e!1442733 () Bool)

(assert (=> b!2254302 (= e!1442733 e!1442753)))

(declare-fun res!963377 () Bool)

(assert (=> b!2254302 (=> (not res!963377) (not e!1442753))))

(assert (=> b!2254302 (= res!963377 e!1442741)))

(declare-fun res!963379 () Bool)

(assert (=> b!2254302 (=> res!963379 e!1442741)))

(assert (=> b!2254302 (= res!963379 lt!837878)))

(declare-fun isEmpty!15079 (List!26811) Bool)

(assert (=> b!2254302 (= lt!837878 (isEmpty!15079 tokens!456))))

(declare-fun b!2254303 () Bool)

(declare-fun res!963376 () Bool)

(assert (=> b!2254303 (=> (not res!963376) (not e!1442753))))

(declare-fun otherR!12 () Rule!8278)

(assert (=> b!2254303 (= res!963376 (not (= r!2363 otherR!12)))))

(declare-fun b!2254304 () Bool)

(declare-fun e!1442735 () Bool)

(assert (=> b!2254304 (= e!1442726 e!1442735)))

(declare-fun res!963365 () Bool)

(assert (=> b!2254304 (=> res!963365 e!1442735)))

(declare-fun lt!837874 () Int)

(declare-fun lt!837869 () BalanceConc!16980)

(declare-fun apply!6559 (TokenValueInjection!8342 BalanceConc!16980) TokenValue!4401)

(assert (=> b!2254304 (= res!963365 (not (= lt!837871 (Some!5214 (tuple2!26243 (Token!7957 (apply!6559 (transformation!4239 r!2363) lt!837869) r!2363 lt!837874 lt!837872) (_2!15631 lt!837877))))))))

(declare-datatypes ((Unit!39644 0))(
  ( (Unit!39645) )
))
(declare-fun lt!837882 () Unit!39644)

(declare-fun lemmaSemiInverse!1004 (TokenValueInjection!8342 BalanceConc!16980) Unit!39644)

(assert (=> b!2254304 (= lt!837882 (lemmaSemiInverse!1004 (transformation!4239 r!2363) lt!837869))))

(declare-fun seqFromList!2943 (List!26809) BalanceConc!16980)

(assert (=> b!2254304 (= lt!837869 (seqFromList!2943 lt!837872))))

(declare-fun b!2254305 () Bool)

(declare-fun e!1442739 () Bool)

(assert (=> b!2254305 (= e!1442753 (not e!1442739))))

(declare-fun res!963375 () Bool)

(assert (=> b!2254305 (=> res!963375 e!1442739)))

(declare-fun e!1442747 () Bool)

(assert (=> b!2254305 (= res!963375 e!1442747)))

(declare-fun res!963372 () Bool)

(assert (=> b!2254305 (=> (not res!963372) (not e!1442747))))

(assert (=> b!2254305 (= res!963372 (not lt!837878))))

(declare-fun ruleValid!1331 (LexerInterface!3836 Rule!8278) Bool)

(assert (=> b!2254305 (ruleValid!1331 thiss!16613 r!2363)))

(declare-fun lt!837876 () Unit!39644)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!738 (LexerInterface!3836 Rule!8278 List!26812) Unit!39644)

(assert (=> b!2254305 (= lt!837876 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!738 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2254306 () Bool)

(declare-fun tp_is_empty!10395 () Bool)

(declare-fun tp!712363 () Bool)

(assert (=> b!2254306 (= e!1442734 (and tp_is_empty!10395 tp!712363))))

(declare-fun b!2254307 () Bool)

(declare-fun res!963373 () Bool)

(assert (=> b!2254307 (=> (not res!963373) (not e!1442738))))

(declare-fun isEmpty!15080 (List!26812) Bool)

(assert (=> b!2254307 (= res!963373 (not (isEmpty!15080 rules!1750)))))

(declare-fun b!2254308 () Bool)

(declare-fun res!963371 () Bool)

(assert (=> b!2254308 (=> (not res!963371) (not e!1442738))))

(declare-fun rulesInvariant!3338 (LexerInterface!3836 List!26812) Bool)

(assert (=> b!2254308 (= res!963371 (rulesInvariant!3338 thiss!16613 rules!1750))))

(declare-fun b!2254309 () Bool)

(declare-fun tp!712365 () Bool)

(declare-fun inv!21 (TokenValue!4401) Bool)

(assert (=> b!2254309 (= e!1442742 (and (inv!21 (value!134631 (h!32118 tokens!456))) e!1442727 tp!712365))))

(declare-fun b!2254310 () Bool)

(declare-fun tp!712370 () Bool)

(assert (=> b!2254310 (= e!1442743 (and tp_is_empty!10395 tp!712370))))

(declare-fun b!2254311 () Bool)

(declare-fun res!963364 () Bool)

(assert (=> b!2254311 (=> res!963364 e!1442744)))

(assert (=> b!2254311 (= res!963364 ((_ is Nil!26717) tokens!456))))

(declare-fun b!2254312 () Bool)

(assert (=> b!2254312 (= e!1442739 e!1442744)))

(declare-fun res!963367 () Bool)

(assert (=> b!2254312 (=> res!963367 e!1442744)))

(declare-fun getIndex!260 (List!26812 Rule!8278) Int)

(assert (=> b!2254312 (= res!963367 (<= (getIndex!260 rules!1750 r!2363) (getIndex!260 rules!1750 otherR!12)))))

(assert (=> b!2254312 (ruleValid!1331 thiss!16613 otherR!12)))

(declare-fun lt!837884 () Unit!39644)

(assert (=> b!2254312 (= lt!837884 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!738 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2254313 () Bool)

(declare-fun matchR!2848 (Regex!6587 List!26809) Bool)

(declare-fun list!10269 (BalanceConc!16980) List!26809)

(assert (=> b!2254313 (= e!1442747 (not (matchR!2848 (regex!4239 r!2363) (list!10269 (charsOf!2627 (head!4810 tokens!456))))))))

(declare-fun b!2254314 () Bool)

(declare-fun res!963369 () Bool)

(assert (=> b!2254314 (=> (not res!963369) (not e!1442753))))

(declare-fun isPrefix!2229 (List!26809 List!26809) Bool)

(assert (=> b!2254314 (= res!963369 (isPrefix!2229 otherP!12 input!1722))))

(declare-fun b!2254315 () Bool)

(declare-fun tp!712369 () Bool)

(assert (=> b!2254315 (= e!1442740 (and tp_is_empty!10395 tp!712369))))

(declare-fun tp!712368 () Bool)

(declare-fun b!2254316 () Bool)

(assert (=> b!2254316 (= e!1442752 (and tp!712368 (inv!36250 (tag!4729 otherR!12)) (inv!36253 (transformation!4239 otherR!12)) e!1442748))))

(declare-fun b!2254317 () Bool)

(declare-fun res!963370 () Bool)

(assert (=> b!2254317 (=> (not res!963370) (not e!1442738))))

(assert (=> b!2254317 (= res!963370 (contains!4591 rules!1750 otherR!12))))

(assert (=> b!2254318 (= e!1442731 (and tp!712364 tp!712360))))

(declare-fun b!2254319 () Bool)

(declare-fun tp!712358 () Bool)

(assert (=> b!2254319 (= e!1442751 (and e!1442745 tp!712358))))

(assert (=> b!2254320 (= e!1442730 (and tp!712359 tp!712371))))

(declare-fun b!2254321 () Bool)

(assert (=> b!2254321 (= e!1442738 e!1442733)))

(declare-fun res!963368 () Bool)

(assert (=> b!2254321 (=> (not res!963368) (not e!1442733))))

(declare-datatypes ((IArray!17259 0))(
  ( (IArray!17260 (innerList!8687 List!26811)) )
))
(declare-datatypes ((Conc!8627 0))(
  ( (Node!8627 (left!20295 Conc!8627) (right!20625 Conc!8627) (csize!17484 Int) (cheight!8838 Int)) (Leaf!12732 (xs!11569 IArray!17259) (csize!17485 Int)) (Empty!8627) )
))
(declare-datatypes ((BalanceConc!16982 0))(
  ( (BalanceConc!16983 (c!358422 Conc!8627)) )
))
(declare-datatypes ((tuple2!26244 0))(
  ( (tuple2!26245 (_1!15632 BalanceConc!16982) (_2!15632 BalanceConc!16980)) )
))
(declare-fun lt!837883 () tuple2!26244)

(declare-fun suffix!886 () List!26809)

(declare-datatypes ((tuple2!26246 0))(
  ( (tuple2!26247 (_1!15633 List!26811) (_2!15633 List!26809)) )
))
(declare-fun list!10270 (BalanceConc!16982) List!26811)

(assert (=> b!2254321 (= res!963368 (= (tuple2!26247 (list!10270 (_1!15632 lt!837883)) (list!10269 (_2!15632 lt!837883))) (tuple2!26247 tokens!456 suffix!886)))))

(declare-fun lex!1675 (LexerInterface!3836 List!26812 BalanceConc!16980) tuple2!26244)

(assert (=> b!2254321 (= lt!837883 (lex!1675 thiss!16613 rules!1750 (seqFromList!2943 input!1722)))))

(declare-fun b!2254322 () Bool)

(assert (=> b!2254322 (= e!1442749 (= (rule!6543 (head!4810 tokens!456)) r!2363))))

(declare-fun b!2254323 () Bool)

(assert (=> b!2254323 (= e!1442735 true)))

(declare-fun lt!837880 () Bool)

(assert (=> b!2254323 (= lt!837880 (matchR!2848 (regex!4239 r!2363) lt!837872))))

(declare-fun b!2254324 () Bool)

(assert (=> b!2254324 (= e!1442729 e!1442726)))

(declare-fun res!963363 () Bool)

(assert (=> b!2254324 (=> res!963363 e!1442726)))

(declare-fun lt!837879 () Int)

(declare-fun lt!837870 () List!26809)

(assert (=> b!2254324 (= res!963363 (or (= lt!837879 lt!837874) (not (= input!1722 lt!837870))))))

(assert (=> b!2254324 (= lt!837874 (size!20916 lt!837872))))

(assert (=> b!2254324 (= lt!837879 (size!20916 otherP!12))))

(declare-fun lt!837873 () List!26809)

(assert (=> b!2254324 (= (_2!15631 lt!837877) lt!837873)))

(declare-fun lt!837875 () Unit!39644)

(declare-fun lemmaSamePrefixThenSameSuffix!984 (List!26809 List!26809 List!26809 List!26809 List!26809) Unit!39644)

(assert (=> b!2254324 (= lt!837875 (lemmaSamePrefixThenSameSuffix!984 lt!837872 (_2!15631 lt!837877) lt!837872 lt!837873 input!1722))))

(declare-fun getSuffix!1064 (List!26809 List!26809) List!26809)

(assert (=> b!2254324 (= lt!837873 (getSuffix!1064 input!1722 lt!837872))))

(assert (=> b!2254324 (isPrefix!2229 lt!837872 lt!837870)))

(declare-fun ++!6511 (List!26809 List!26809) List!26809)

(assert (=> b!2254324 (= lt!837870 (++!6511 lt!837872 (_2!15631 lt!837877)))))

(declare-fun lt!837881 () Unit!39644)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1474 (List!26809 List!26809) Unit!39644)

(assert (=> b!2254324 (= lt!837881 (lemmaConcatTwoListThenFirstIsPrefix!1474 lt!837872 (_2!15631 lt!837877)))))

(assert (=> b!2254324 (= lt!837872 (list!10269 (charsOf!2627 (h!32118 tokens!456))))))

(assert (= (and start!220020 res!963378) b!2254307))

(assert (= (and b!2254307 res!963373) b!2254308))

(assert (= (and b!2254308 res!963371) b!2254297))

(assert (= (and b!2254297 res!963366) b!2254317))

(assert (= (and b!2254317 res!963370) b!2254321))

(assert (= (and b!2254321 res!963368) b!2254302))

(assert (= (and b!2254302 (not res!963379)) b!2254293))

(assert (= (and b!2254302 res!963377) b!2254296))

(assert (= (and b!2254296 (not res!963374)) b!2254322))

(assert (= (and b!2254296 res!963380) b!2254314))

(assert (= (and b!2254314 res!963369) b!2254303))

(assert (= (and b!2254303 res!963376) b!2254305))

(assert (= (and b!2254305 res!963372) b!2254313))

(assert (= (and b!2254305 (not res!963375)) b!2254312))

(assert (= (and b!2254312 (not res!963367)) b!2254311))

(assert (= (and b!2254311 (not res!963364)) b!2254294))

(assert (= (and b!2254294 (not res!963362)) b!2254324))

(assert (= (and b!2254324 (not res!963363)) b!2254292))

(assert (= (and b!2254292 (not res!963381)) b!2254304))

(assert (= (and b!2254304 (not res!963365)) b!2254323))

(assert (= (and start!220020 ((_ is Cons!26715) input!1722)) b!2254306))

(assert (= b!2254316 b!2254301))

(assert (= start!220020 b!2254316))

(assert (= (and start!220020 ((_ is Cons!26715) suffix!886)) b!2254315))

(assert (= (and start!220020 ((_ is Cons!26715) otherP!12)) b!2254310))

(assert (= b!2254300 b!2254291))

(assert (= b!2254319 b!2254300))

(assert (= (and start!220020 ((_ is Cons!26718) rules!1750)) b!2254319))

(assert (= b!2254298 b!2254318))

(assert (= start!220020 b!2254298))

(assert (= b!2254295 b!2254320))

(assert (= b!2254309 b!2254295))

(assert (= b!2254299 b!2254309))

(assert (= (and start!220020 ((_ is Cons!26717) tokens!456)) b!2254299))

(declare-fun m!2684865 () Bool)

(assert (=> b!2254307 m!2684865))

(declare-fun m!2684867 () Bool)

(assert (=> b!2254322 m!2684867))

(declare-fun m!2684869 () Bool)

(assert (=> b!2254292 m!2684869))

(declare-fun m!2684871 () Bool)

(assert (=> b!2254324 m!2684871))

(declare-fun m!2684873 () Bool)

(assert (=> b!2254324 m!2684873))

(declare-fun m!2684875 () Bool)

(assert (=> b!2254324 m!2684875))

(declare-fun m!2684877 () Bool)

(assert (=> b!2254324 m!2684877))

(declare-fun m!2684879 () Bool)

(assert (=> b!2254324 m!2684879))

(declare-fun m!2684881 () Bool)

(assert (=> b!2254324 m!2684881))

(declare-fun m!2684883 () Bool)

(assert (=> b!2254324 m!2684883))

(declare-fun m!2684885 () Bool)

(assert (=> b!2254324 m!2684885))

(assert (=> b!2254324 m!2684883))

(declare-fun m!2684887 () Bool)

(assert (=> b!2254324 m!2684887))

(declare-fun m!2684889 () Bool)

(assert (=> b!2254309 m!2684889))

(declare-fun m!2684891 () Bool)

(assert (=> b!2254302 m!2684891))

(assert (=> b!2254313 m!2684867))

(assert (=> b!2254313 m!2684867))

(declare-fun m!2684893 () Bool)

(assert (=> b!2254313 m!2684893))

(assert (=> b!2254313 m!2684893))

(declare-fun m!2684895 () Bool)

(assert (=> b!2254313 m!2684895))

(assert (=> b!2254313 m!2684895))

(declare-fun m!2684897 () Bool)

(assert (=> b!2254313 m!2684897))

(declare-fun m!2684899 () Bool)

(assert (=> b!2254321 m!2684899))

(declare-fun m!2684901 () Bool)

(assert (=> b!2254321 m!2684901))

(declare-fun m!2684903 () Bool)

(assert (=> b!2254321 m!2684903))

(assert (=> b!2254321 m!2684903))

(declare-fun m!2684905 () Bool)

(assert (=> b!2254321 m!2684905))

(declare-fun m!2684907 () Bool)

(assert (=> b!2254312 m!2684907))

(declare-fun m!2684909 () Bool)

(assert (=> b!2254312 m!2684909))

(declare-fun m!2684911 () Bool)

(assert (=> b!2254312 m!2684911))

(declare-fun m!2684913 () Bool)

(assert (=> b!2254312 m!2684913))

(declare-fun m!2684915 () Bool)

(assert (=> b!2254300 m!2684915))

(declare-fun m!2684917 () Bool)

(assert (=> b!2254300 m!2684917))

(declare-fun m!2684919 () Bool)

(assert (=> b!2254314 m!2684919))

(declare-fun m!2684921 () Bool)

(assert (=> b!2254297 m!2684921))

(declare-fun m!2684923 () Bool)

(assert (=> b!2254308 m!2684923))

(assert (=> b!2254293 m!2684867))

(assert (=> b!2254293 m!2684867))

(assert (=> b!2254293 m!2684893))

(assert (=> b!2254293 m!2684893))

(declare-fun m!2684925 () Bool)

(assert (=> b!2254293 m!2684925))

(assert (=> b!2254293 m!2684875))

(declare-fun m!2684927 () Bool)

(assert (=> b!2254294 m!2684927))

(declare-fun m!2684929 () Bool)

(assert (=> b!2254294 m!2684929))

(declare-fun m!2684931 () Bool)

(assert (=> b!2254323 m!2684931))

(declare-fun m!2684933 () Bool)

(assert (=> b!2254298 m!2684933))

(declare-fun m!2684935 () Bool)

(assert (=> b!2254298 m!2684935))

(declare-fun m!2684937 () Bool)

(assert (=> b!2254295 m!2684937))

(declare-fun m!2684939 () Bool)

(assert (=> b!2254295 m!2684939))

(declare-fun m!2684941 () Bool)

(assert (=> b!2254304 m!2684941))

(declare-fun m!2684943 () Bool)

(assert (=> b!2254304 m!2684943))

(declare-fun m!2684945 () Bool)

(assert (=> b!2254304 m!2684945))

(declare-fun m!2684947 () Bool)

(assert (=> b!2254317 m!2684947))

(declare-fun m!2684949 () Bool)

(assert (=> b!2254305 m!2684949))

(declare-fun m!2684951 () Bool)

(assert (=> b!2254305 m!2684951))

(declare-fun m!2684953 () Bool)

(assert (=> b!2254316 m!2684953))

(declare-fun m!2684955 () Bool)

(assert (=> b!2254316 m!2684955))

(declare-fun m!2684957 () Bool)

(assert (=> b!2254299 m!2684957))

(check-sat (not b!2254319) (not b_next!66885) (not b!2254292) (not b!2254306) b_and!176777 (not b!2254295) (not b!2254314) (not b_next!66881) (not b_next!66877) b_and!176783 (not b!2254300) (not b_next!66879) (not b!2254317) (not b!2254308) (not b!2254302) (not b!2254323) (not b!2254322) b_and!176771 (not b_next!66883) (not b!2254316) (not b_next!66891) tp_is_empty!10395 (not b!2254298) (not b!2254294) (not b!2254305) (not b!2254315) (not b!2254324) (not b!2254321) b_and!176779 b_and!176781 (not b!2254307) (not b!2254293) (not b!2254312) (not b!2254304) b_and!176775 (not b_next!66889) (not b!2254299) (not b!2254309) b_and!176769 (not b_next!66887) (not b!2254310) (not b!2254313) (not b!2254297) b_and!176773)
(check-sat (not b_next!66879) (not b_next!66885) (not b_next!66891) b_and!176777 b_and!176773 (not b_next!66881) (not b_next!66877) b_and!176783 b_and!176771 (not b_next!66883) b_and!176779 b_and!176781 b_and!176775 (not b_next!66889) b_and!176769 (not b_next!66887))
