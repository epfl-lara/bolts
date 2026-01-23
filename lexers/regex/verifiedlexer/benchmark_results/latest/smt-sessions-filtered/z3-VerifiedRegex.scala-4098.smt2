; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!219632 () Bool)

(assert start!219632)

(declare-fun b!2251051 () Bool)

(declare-fun b_free!65933 () Bool)

(declare-fun b_next!66637 () Bool)

(assert (=> b!2251051 (= b_free!65933 (not b_next!66637))))

(declare-fun tp!711166 () Bool)

(declare-fun b_and!176313 () Bool)

(assert (=> b!2251051 (= tp!711166 b_and!176313)))

(declare-fun b_free!65935 () Bool)

(declare-fun b_next!66639 () Bool)

(assert (=> b!2251051 (= b_free!65935 (not b_next!66639))))

(declare-fun tp!711173 () Bool)

(declare-fun b_and!176315 () Bool)

(assert (=> b!2251051 (= tp!711173 b_and!176315)))

(declare-fun b!2251043 () Bool)

(declare-fun b_free!65937 () Bool)

(declare-fun b_next!66641 () Bool)

(assert (=> b!2251043 (= b_free!65937 (not b_next!66641))))

(declare-fun tp!711163 () Bool)

(declare-fun b_and!176317 () Bool)

(assert (=> b!2251043 (= tp!711163 b_and!176317)))

(declare-fun b_free!65939 () Bool)

(declare-fun b_next!66643 () Bool)

(assert (=> b!2251043 (= b_free!65939 (not b_next!66643))))

(declare-fun tp!711178 () Bool)

(declare-fun b_and!176319 () Bool)

(assert (=> b!2251043 (= tp!711178 b_and!176319)))

(declare-fun b!2251057 () Bool)

(declare-fun b_free!65941 () Bool)

(declare-fun b_next!66645 () Bool)

(assert (=> b!2251057 (= b_free!65941 (not b_next!66645))))

(declare-fun tp!711179 () Bool)

(declare-fun b_and!176321 () Bool)

(assert (=> b!2251057 (= tp!711179 b_and!176321)))

(declare-fun b_free!65943 () Bool)

(declare-fun b_next!66647 () Bool)

(assert (=> b!2251057 (= b_free!65943 (not b_next!66647))))

(declare-fun tp!711167 () Bool)

(declare-fun b_and!176323 () Bool)

(assert (=> b!2251057 (= tp!711167 b_and!176323)))

(declare-fun b!2251071 () Bool)

(declare-fun b_free!65945 () Bool)

(declare-fun b_next!66649 () Bool)

(assert (=> b!2251071 (= b_free!65945 (not b_next!66649))))

(declare-fun tp!711175 () Bool)

(declare-fun b_and!176325 () Bool)

(assert (=> b!2251071 (= tp!711175 b_and!176325)))

(declare-fun b_free!65947 () Bool)

(declare-fun b_next!66651 () Bool)

(assert (=> b!2251071 (= b_free!65947 (not b_next!66651))))

(declare-fun tp!711168 () Bool)

(declare-fun b_and!176327 () Bool)

(assert (=> b!2251071 (= tp!711168 b_and!176327)))

(declare-fun e!1440488 () Bool)

(assert (=> b!2251043 (= e!1440488 (and tp!711163 tp!711178))))

(declare-fun b!2251044 () Bool)

(declare-fun e!1440491 () Bool)

(declare-fun e!1440479 () Bool)

(assert (=> b!2251044 (= e!1440491 e!1440479)))

(declare-fun res!961857 () Bool)

(assert (=> b!2251044 (=> res!961857 e!1440479)))

(declare-datatypes ((C!13296 0))(
  ( (C!13297 (val!7696 Int)) )
))
(declare-datatypes ((List!26757 0))(
  ( (Nil!26663) (Cons!26663 (h!32064 C!13296) (t!200819 List!26757)) )
))
(declare-fun input!1722 () List!26757)

(declare-fun lt!836736 () List!26757)

(declare-fun size!20866 (List!26757) Int)

(assert (=> b!2251044 (= res!961857 (< (size!20866 input!1722) (size!20866 lt!836736)))))

(declare-datatypes ((List!26758 0))(
  ( (Nil!26664) (Cons!26664 (h!32065 (_ BitVec 16)) (t!200820 List!26758)) )
))
(declare-datatypes ((TokenValue!4389 0))(
  ( (FloatLiteralValue!8778 (text!31168 List!26758)) (TokenValueExt!4388 (__x!17838 Int)) (Broken!21945 (value!134263 List!26758)) (Object!4482) (End!4389) (Def!4389) (Underscore!4389) (Match!4389) (Else!4389) (Error!4389) (Case!4389) (If!4389) (Extends!4389) (Abstract!4389) (Class!4389) (Val!4389) (DelimiterValue!8778 (del!4449 List!26758)) (KeywordValue!4395 (value!134264 List!26758)) (CommentValue!8778 (value!134265 List!26758)) (WhitespaceValue!8778 (value!134266 List!26758)) (IndentationValue!4389 (value!134267 List!26758)) (String!29048) (Int32!4389) (Broken!21946 (value!134268 List!26758)) (Boolean!4390) (Unit!39603) (OperatorValue!4392 (op!4449 List!26758)) (IdentifierValue!8778 (value!134269 List!26758)) (IdentifierValue!8779 (value!134270 List!26758)) (WhitespaceValue!8779 (value!134271 List!26758)) (True!8778) (False!8778) (Broken!21947 (value!134272 List!26758)) (Broken!21948 (value!134273 List!26758)) (True!8779) (RightBrace!4389) (RightBracket!4389) (Colon!4389) (Null!4389) (Comma!4389) (LeftBracket!4389) (False!8779) (LeftBrace!4389) (ImaginaryLiteralValue!4389 (text!31169 List!26758)) (StringLiteralValue!13167 (value!134274 List!26758)) (EOFValue!4389 (value!134275 List!26758)) (IdentValue!4389 (value!134276 List!26758)) (DelimiterValue!8779 (value!134277 List!26758)) (DedentValue!4389 (value!134278 List!26758)) (NewLineValue!4389 (value!134279 List!26758)) (IntegerValue!13167 (value!134280 (_ BitVec 32)) (text!31170 List!26758)) (IntegerValue!13168 (value!134281 Int) (text!31171 List!26758)) (Times!4389) (Or!4389) (Equal!4389) (Minus!4389) (Broken!21949 (value!134282 List!26758)) (And!4389) (Div!4389) (LessEqual!4389) (Mod!4389) (Concat!10964) (Not!4389) (Plus!4389) (SpaceValue!4389 (value!134283 List!26758)) (IntegerValue!13169 (value!134284 Int) (text!31172 List!26758)) (StringLiteralValue!13168 (text!31173 List!26758)) (FloatLiteralValue!8779 (text!31174 List!26758)) (BytesLiteralValue!4389 (value!134285 List!26758)) (CommentValue!8779 (value!134286 List!26758)) (StringLiteralValue!13169 (value!134287 List!26758)) (ErrorTokenValue!4389 (msg!4450 List!26758)) )
))
(declare-datatypes ((IArray!17209 0))(
  ( (IArray!17210 (innerList!8662 List!26757)) )
))
(declare-datatypes ((Conc!8602 0))(
  ( (Node!8602 (left!20256 Conc!8602) (right!20586 Conc!8602) (csize!17434 Int) (cheight!8813 Int)) (Leaf!12701 (xs!11544 IArray!17209) (csize!17435 Int)) (Empty!8602) )
))
(declare-datatypes ((BalanceConc!16932 0))(
  ( (BalanceConc!16933 (c!358006 Conc!8602)) )
))
(declare-datatypes ((String!29049 0))(
  ( (String!29050 (value!134288 String)) )
))
(declare-datatypes ((Regex!6575 0))(
  ( (ElementMatch!6575 (c!358007 C!13296)) (Concat!10965 (regOne!13662 Regex!6575) (regTwo!13662 Regex!6575)) (EmptyExpr!6575) (Star!6575 (reg!6904 Regex!6575)) (EmptyLang!6575) (Union!6575 (regOne!13663 Regex!6575) (regTwo!13663 Regex!6575)) )
))
(declare-datatypes ((TokenValueInjection!8318 0))(
  ( (TokenValueInjection!8319 (toValue!5965 Int) (toChars!5824 Int)) )
))
(declare-datatypes ((Rule!8254 0))(
  ( (Rule!8255 (regex!4227 Regex!6575) (tag!4717 String!29049) (isSeparator!4227 Bool) (transformation!4227 TokenValueInjection!8318)) )
))
(declare-datatypes ((Token!7932 0))(
  ( (Token!7933 (value!134289 TokenValue!4389) (rule!6529 Rule!8254) (size!20867 Int) (originalCharacters!4997 List!26757)) )
))
(declare-datatypes ((tuple2!26162 0))(
  ( (tuple2!26163 (_1!15591 Token!7932) (_2!15591 List!26757)) )
))
(declare-fun lt!836738 () tuple2!26162)

(declare-fun isPrefix!2217 (List!26757 List!26757) Bool)

(declare-fun ++!6495 (List!26757 List!26757) List!26757)

(assert (=> b!2251044 (isPrefix!2217 lt!836736 (++!6495 lt!836736 (_2!15591 lt!836738)))))

(declare-datatypes ((Unit!39604 0))(
  ( (Unit!39605) )
))
(declare-fun lt!836739 () Unit!39604)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1462 (List!26757 List!26757) Unit!39604)

(assert (=> b!2251044 (= lt!836739 (lemmaConcatTwoListThenFirstIsPrefix!1462 lt!836736 (_2!15591 lt!836738)))))

(declare-datatypes ((List!26759 0))(
  ( (Nil!26665) (Cons!26665 (h!32066 Token!7932) (t!200821 List!26759)) )
))
(declare-fun tokens!456 () List!26759)

(declare-fun list!10233 (BalanceConc!16932) List!26757)

(declare-fun charsOf!2615 (Token!7932) BalanceConc!16932)

(assert (=> b!2251044 (= lt!836736 (list!10233 (charsOf!2615 (h!32066 tokens!456))))))

(declare-fun b!2251045 () Bool)

(declare-fun e!1440496 () Bool)

(declare-fun e!1440475 () Bool)

(assert (=> b!2251045 (= e!1440496 e!1440475)))

(declare-fun res!961846 () Bool)

(assert (=> b!2251045 (=> (not res!961846) (not e!1440475))))

(declare-fun e!1440487 () Bool)

(assert (=> b!2251045 (= res!961846 e!1440487)))

(declare-fun res!961853 () Bool)

(assert (=> b!2251045 (=> res!961853 e!1440487)))

(declare-fun lt!836740 () Bool)

(assert (=> b!2251045 (= res!961853 lt!836740)))

(declare-fun isEmpty!15036 (List!26759) Bool)

(assert (=> b!2251045 (= lt!836740 (isEmpty!15036 tokens!456))))

(declare-fun b!2251046 () Bool)

(declare-fun e!1440480 () Bool)

(declare-fun r!2363 () Rule!8254)

(declare-fun matchR!2836 (Regex!6575 List!26757) Bool)

(declare-fun head!4794 (List!26759) Token!7932)

(assert (=> b!2251046 (= e!1440480 (not (matchR!2836 (regex!4227 r!2363) (list!10233 (charsOf!2615 (head!4794 tokens!456))))))))

(declare-fun b!2251047 () Bool)

(declare-fun e!1440476 () Bool)

(declare-fun e!1440494 () Bool)

(declare-fun tp!711176 () Bool)

(assert (=> b!2251047 (= e!1440476 (and e!1440494 tp!711176))))

(declare-fun b!2251048 () Bool)

(declare-fun otherP!12 () List!26757)

(declare-fun size!20868 (BalanceConc!16932) Int)

(assert (=> b!2251048 (= e!1440487 (<= (size!20868 (charsOf!2615 (head!4794 tokens!456))) (size!20866 otherP!12)))))

(declare-fun b!2251049 () Bool)

(assert (=> b!2251049 (= e!1440479 (isPrefix!2217 lt!836736 input!1722))))

(declare-fun tp!711165 () Bool)

(declare-fun e!1440478 () Bool)

(declare-fun b!2251050 () Bool)

(declare-datatypes ((List!26760 0))(
  ( (Nil!26666) (Cons!26666 (h!32067 Rule!8254) (t!200822 List!26760)) )
))
(declare-fun rules!1750 () List!26760)

(declare-fun inv!36195 (String!29049) Bool)

(declare-fun inv!36198 (TokenValueInjection!8318) Bool)

(assert (=> b!2251050 (= e!1440494 (and tp!711165 (inv!36195 (tag!4717 (h!32067 rules!1750))) (inv!36198 (transformation!4227 (h!32067 rules!1750))) e!1440478))))

(declare-fun e!1440485 () Bool)

(assert (=> b!2251051 (= e!1440485 (and tp!711166 tp!711173))))

(declare-fun tp!711174 () Bool)

(declare-fun otherR!12 () Rule!8254)

(declare-fun b!2251052 () Bool)

(declare-fun e!1440483 () Bool)

(assert (=> b!2251052 (= e!1440483 (and tp!711174 (inv!36195 (tag!4717 otherR!12)) (inv!36198 (transformation!4227 otherR!12)) e!1440485))))

(declare-fun b!2251053 () Bool)

(declare-fun res!961858 () Bool)

(declare-fun e!1440490 () Bool)

(assert (=> b!2251053 (=> (not res!961858) (not e!1440490))))

(declare-datatypes ((LexerInterface!3824 0))(
  ( (LexerInterfaceExt!3821 (__x!17839 Int)) (Lexer!3822) )
))
(declare-fun thiss!16613 () LexerInterface!3824)

(declare-fun rulesInvariant!3326 (LexerInterface!3824 List!26760) Bool)

(assert (=> b!2251053 (= res!961858 (rulesInvariant!3326 thiss!16613 rules!1750))))

(declare-fun b!2251054 () Bool)

(declare-fun e!1440482 () Bool)

(declare-fun tp_is_empty!10371 () Bool)

(declare-fun tp!711169 () Bool)

(assert (=> b!2251054 (= e!1440482 (and tp_is_empty!10371 tp!711169))))

(declare-fun b!2251055 () Bool)

(declare-fun res!961847 () Bool)

(assert (=> b!2251055 (=> (not res!961847) (not e!1440490))))

(declare-fun contains!4577 (List!26760 Rule!8254) Bool)

(assert (=> b!2251055 (= res!961847 (contains!4577 rules!1750 otherR!12))))

(declare-fun b!2251056 () Bool)

(declare-fun e!1440489 () Bool)

(declare-fun tp!711170 () Bool)

(assert (=> b!2251056 (= e!1440489 (and tp_is_empty!10371 tp!711170))))

(declare-fun e!1440493 () Bool)

(assert (=> b!2251057 (= e!1440493 (and tp!711179 tp!711167))))

(declare-fun tp!711162 () Bool)

(declare-fun e!1440501 () Bool)

(declare-fun b!2251058 () Bool)

(declare-fun e!1440481 () Bool)

(declare-fun inv!21 (TokenValue!4389) Bool)

(assert (=> b!2251058 (= e!1440481 (and (inv!21 (value!134289 (h!32066 tokens!456))) e!1440501 tp!711162))))

(declare-fun b!2251059 () Bool)

(declare-fun e!1440477 () Bool)

(declare-fun e!1440500 () Bool)

(assert (=> b!2251059 (= e!1440477 e!1440500)))

(declare-fun res!961850 () Bool)

(assert (=> b!2251059 (=> res!961850 e!1440500)))

(declare-fun getIndex!248 (List!26760 Rule!8254) Int)

(assert (=> b!2251059 (= res!961850 (<= (getIndex!248 rules!1750 r!2363) (getIndex!248 rules!1750 otherR!12)))))

(declare-fun ruleValid!1319 (LexerInterface!3824 Rule!8254) Bool)

(assert (=> b!2251059 (ruleValid!1319 thiss!16613 otherR!12)))

(declare-fun lt!836735 () Unit!39604)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!726 (LexerInterface!3824 Rule!8254 List!26760) Unit!39604)

(assert (=> b!2251059 (= lt!836735 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!726 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2251060 () Bool)

(declare-fun tp!711177 () Bool)

(declare-fun e!1440492 () Bool)

(assert (=> b!2251060 (= e!1440492 (and tp!711177 (inv!36195 (tag!4717 r!2363)) (inv!36198 (transformation!4227 r!2363)) e!1440493))))

(declare-fun b!2251061 () Bool)

(declare-fun res!961849 () Bool)

(assert (=> b!2251061 (=> (not res!961849) (not e!1440475))))

(assert (=> b!2251061 (= res!961849 (not (= r!2363 otherR!12)))))

(declare-fun b!2251062 () Bool)

(declare-fun e!1440484 () Bool)

(assert (=> b!2251062 (= e!1440484 (= (rule!6529 (head!4794 tokens!456)) r!2363))))

(declare-fun b!2251063 () Bool)

(declare-fun res!961855 () Bool)

(assert (=> b!2251063 (=> (not res!961855) (not e!1440475))))

(assert (=> b!2251063 (= res!961855 (isPrefix!2217 otherP!12 input!1722))))

(declare-fun b!2251064 () Bool)

(declare-fun tp!711164 () Bool)

(declare-fun e!1440495 () Bool)

(declare-fun inv!36199 (Token!7932) Bool)

(assert (=> b!2251064 (= e!1440495 (and (inv!36199 (h!32066 tokens!456)) e!1440481 tp!711164))))

(declare-fun b!2251065 () Bool)

(assert (=> b!2251065 (= e!1440490 e!1440496)))

(declare-fun res!961845 () Bool)

(assert (=> b!2251065 (=> (not res!961845) (not e!1440496))))

(declare-datatypes ((IArray!17211 0))(
  ( (IArray!17212 (innerList!8663 List!26759)) )
))
(declare-datatypes ((Conc!8603 0))(
  ( (Node!8603 (left!20257 Conc!8603) (right!20587 Conc!8603) (csize!17436 Int) (cheight!8814 Int)) (Leaf!12702 (xs!11545 IArray!17211) (csize!17437 Int)) (Empty!8603) )
))
(declare-datatypes ((BalanceConc!16934 0))(
  ( (BalanceConc!16935 (c!358008 Conc!8603)) )
))
(declare-datatypes ((tuple2!26164 0))(
  ( (tuple2!26165 (_1!15592 BalanceConc!16934) (_2!15592 BalanceConc!16932)) )
))
(declare-fun lt!836734 () tuple2!26164)

(declare-fun suffix!886 () List!26757)

(declare-datatypes ((tuple2!26166 0))(
  ( (tuple2!26167 (_1!15593 List!26759) (_2!15593 List!26757)) )
))
(declare-fun list!10234 (BalanceConc!16934) List!26759)

(assert (=> b!2251065 (= res!961845 (= (tuple2!26167 (list!10234 (_1!15592 lt!836734)) (list!10233 (_2!15592 lt!836734))) (tuple2!26167 tokens!456 suffix!886)))))

(declare-fun lex!1663 (LexerInterface!3824 List!26760 BalanceConc!16932) tuple2!26164)

(declare-fun seqFromList!2931 (List!26757) BalanceConc!16932)

(assert (=> b!2251065 (= lt!836734 (lex!1663 thiss!16613 rules!1750 (seqFromList!2931 input!1722)))))

(declare-fun b!2251066 () Bool)

(assert (=> b!2251066 (= e!1440500 e!1440491)))

(declare-fun res!961854 () Bool)

(assert (=> b!2251066 (=> res!961854 e!1440491)))

(assert (=> b!2251066 (= res!961854 (not (= (h!32066 tokens!456) (_1!15591 lt!836738))))))

(declare-datatypes ((Option!5201 0))(
  ( (None!5200) (Some!5200 (v!30220 tuple2!26162)) )
))
(declare-fun get!8048 (Option!5201) tuple2!26162)

(declare-fun maxPrefix!2112 (LexerInterface!3824 List!26760 List!26757) Option!5201)

(assert (=> b!2251066 (= lt!836738 (get!8048 (maxPrefix!2112 thiss!16613 rules!1750 input!1722)))))

(declare-fun b!2251067 () Bool)

(assert (=> b!2251067 (= e!1440475 (not e!1440477))))

(declare-fun res!961844 () Bool)

(assert (=> b!2251067 (=> res!961844 e!1440477)))

(assert (=> b!2251067 (= res!961844 e!1440480)))

(declare-fun res!961856 () Bool)

(assert (=> b!2251067 (=> (not res!961856) (not e!1440480))))

(assert (=> b!2251067 (= res!961856 (not lt!836740))))

(assert (=> b!2251067 (ruleValid!1319 thiss!16613 r!2363)))

(declare-fun lt!836737 () Unit!39604)

(assert (=> b!2251067 (= lt!836737 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!726 thiss!16613 r!2363 rules!1750))))

(declare-fun tp!711171 () Bool)

(declare-fun b!2251068 () Bool)

(assert (=> b!2251068 (= e!1440501 (and tp!711171 (inv!36195 (tag!4717 (rule!6529 (h!32066 tokens!456)))) (inv!36198 (transformation!4227 (rule!6529 (h!32066 tokens!456)))) e!1440488))))

(declare-fun b!2251069 () Bool)

(declare-fun res!961852 () Bool)

(assert (=> b!2251069 (=> (not res!961852) (not e!1440475))))

(assert (=> b!2251069 (= res!961852 e!1440484)))

(declare-fun res!961851 () Bool)

(assert (=> b!2251069 (=> res!961851 e!1440484)))

(assert (=> b!2251069 (= res!961851 lt!836740)))

(declare-fun b!2251070 () Bool)

(declare-fun e!1440502 () Bool)

(declare-fun tp!711172 () Bool)

(assert (=> b!2251070 (= e!1440502 (and tp_is_empty!10371 tp!711172))))

(declare-fun res!961843 () Bool)

(assert (=> start!219632 (=> (not res!961843) (not e!1440490))))

(get-info :version)

(assert (=> start!219632 (= res!961843 ((_ is Lexer!3822) thiss!16613))))

(assert (=> start!219632 e!1440490))

(assert (=> start!219632 true))

(assert (=> start!219632 e!1440482))

(assert (=> start!219632 e!1440483))

(assert (=> start!219632 e!1440502))

(assert (=> start!219632 e!1440489))

(assert (=> start!219632 e!1440476))

(assert (=> start!219632 e!1440492))

(assert (=> start!219632 e!1440495))

(assert (=> b!2251071 (= e!1440478 (and tp!711175 tp!711168))))

(declare-fun b!2251072 () Bool)

(declare-fun res!961841 () Bool)

(assert (=> b!2251072 (=> (not res!961841) (not e!1440490))))

(assert (=> b!2251072 (= res!961841 (contains!4577 rules!1750 r!2363))))

(declare-fun b!2251073 () Bool)

(declare-fun res!961848 () Bool)

(assert (=> b!2251073 (=> res!961848 e!1440500)))

(assert (=> b!2251073 (= res!961848 ((_ is Nil!26665) tokens!456))))

(declare-fun b!2251074 () Bool)

(declare-fun res!961842 () Bool)

(assert (=> b!2251074 (=> (not res!961842) (not e!1440490))))

(declare-fun isEmpty!15037 (List!26760) Bool)

(assert (=> b!2251074 (= res!961842 (not (isEmpty!15037 rules!1750)))))

(assert (= (and start!219632 res!961843) b!2251074))

(assert (= (and b!2251074 res!961842) b!2251053))

(assert (= (and b!2251053 res!961858) b!2251072))

(assert (= (and b!2251072 res!961841) b!2251055))

(assert (= (and b!2251055 res!961847) b!2251065))

(assert (= (and b!2251065 res!961845) b!2251045))

(assert (= (and b!2251045 (not res!961853)) b!2251048))

(assert (= (and b!2251045 res!961846) b!2251069))

(assert (= (and b!2251069 (not res!961851)) b!2251062))

(assert (= (and b!2251069 res!961852) b!2251063))

(assert (= (and b!2251063 res!961855) b!2251061))

(assert (= (and b!2251061 res!961849) b!2251067))

(assert (= (and b!2251067 res!961856) b!2251046))

(assert (= (and b!2251067 (not res!961844)) b!2251059))

(assert (= (and b!2251059 (not res!961850)) b!2251073))

(assert (= (and b!2251073 (not res!961848)) b!2251066))

(assert (= (and b!2251066 (not res!961854)) b!2251044))

(assert (= (and b!2251044 (not res!961857)) b!2251049))

(assert (= (and start!219632 ((_ is Cons!26663) input!1722)) b!2251054))

(assert (= b!2251052 b!2251051))

(assert (= start!219632 b!2251052))

(assert (= (and start!219632 ((_ is Cons!26663) suffix!886)) b!2251070))

(assert (= (and start!219632 ((_ is Cons!26663) otherP!12)) b!2251056))

(assert (= b!2251050 b!2251071))

(assert (= b!2251047 b!2251050))

(assert (= (and start!219632 ((_ is Cons!26666) rules!1750)) b!2251047))

(assert (= b!2251060 b!2251057))

(assert (= start!219632 b!2251060))

(assert (= b!2251068 b!2251043))

(assert (= b!2251058 b!2251068))

(assert (= b!2251064 b!2251058))

(assert (= (and start!219632 ((_ is Cons!26665) tokens!456)) b!2251064))

(declare-fun m!2681823 () Bool)

(assert (=> b!2251065 m!2681823))

(declare-fun m!2681825 () Bool)

(assert (=> b!2251065 m!2681825))

(declare-fun m!2681827 () Bool)

(assert (=> b!2251065 m!2681827))

(assert (=> b!2251065 m!2681827))

(declare-fun m!2681829 () Bool)

(assert (=> b!2251065 m!2681829))

(declare-fun m!2681831 () Bool)

(assert (=> b!2251050 m!2681831))

(declare-fun m!2681833 () Bool)

(assert (=> b!2251050 m!2681833))

(declare-fun m!2681835 () Bool)

(assert (=> b!2251046 m!2681835))

(assert (=> b!2251046 m!2681835))

(declare-fun m!2681837 () Bool)

(assert (=> b!2251046 m!2681837))

(assert (=> b!2251046 m!2681837))

(declare-fun m!2681839 () Bool)

(assert (=> b!2251046 m!2681839))

(assert (=> b!2251046 m!2681839))

(declare-fun m!2681841 () Bool)

(assert (=> b!2251046 m!2681841))

(declare-fun m!2681843 () Bool)

(assert (=> b!2251045 m!2681843))

(declare-fun m!2681845 () Bool)

(assert (=> b!2251060 m!2681845))

(declare-fun m!2681847 () Bool)

(assert (=> b!2251060 m!2681847))

(declare-fun m!2681849 () Bool)

(assert (=> b!2251059 m!2681849))

(declare-fun m!2681851 () Bool)

(assert (=> b!2251059 m!2681851))

(declare-fun m!2681853 () Bool)

(assert (=> b!2251059 m!2681853))

(declare-fun m!2681855 () Bool)

(assert (=> b!2251059 m!2681855))

(declare-fun m!2681857 () Bool)

(assert (=> b!2251063 m!2681857))

(declare-fun m!2681859 () Bool)

(assert (=> b!2251044 m!2681859))

(declare-fun m!2681861 () Bool)

(assert (=> b!2251044 m!2681861))

(declare-fun m!2681863 () Bool)

(assert (=> b!2251044 m!2681863))

(declare-fun m!2681865 () Bool)

(assert (=> b!2251044 m!2681865))

(declare-fun m!2681867 () Bool)

(assert (=> b!2251044 m!2681867))

(assert (=> b!2251044 m!2681859))

(declare-fun m!2681869 () Bool)

(assert (=> b!2251044 m!2681869))

(declare-fun m!2681871 () Bool)

(assert (=> b!2251044 m!2681871))

(assert (=> b!2251044 m!2681869))

(declare-fun m!2681873 () Bool)

(assert (=> b!2251066 m!2681873))

(assert (=> b!2251066 m!2681873))

(declare-fun m!2681875 () Bool)

(assert (=> b!2251066 m!2681875))

(assert (=> b!2251062 m!2681835))

(declare-fun m!2681877 () Bool)

(assert (=> b!2251049 m!2681877))

(declare-fun m!2681879 () Bool)

(assert (=> b!2251058 m!2681879))

(declare-fun m!2681881 () Bool)

(assert (=> b!2251067 m!2681881))

(declare-fun m!2681883 () Bool)

(assert (=> b!2251067 m!2681883))

(declare-fun m!2681885 () Bool)

(assert (=> b!2251052 m!2681885))

(declare-fun m!2681887 () Bool)

(assert (=> b!2251052 m!2681887))

(declare-fun m!2681889 () Bool)

(assert (=> b!2251064 m!2681889))

(declare-fun m!2681891 () Bool)

(assert (=> b!2251068 m!2681891))

(declare-fun m!2681893 () Bool)

(assert (=> b!2251068 m!2681893))

(assert (=> b!2251048 m!2681835))

(assert (=> b!2251048 m!2681835))

(assert (=> b!2251048 m!2681837))

(assert (=> b!2251048 m!2681837))

(declare-fun m!2681895 () Bool)

(assert (=> b!2251048 m!2681895))

(declare-fun m!2681897 () Bool)

(assert (=> b!2251048 m!2681897))

(declare-fun m!2681899 () Bool)

(assert (=> b!2251055 m!2681899))

(declare-fun m!2681901 () Bool)

(assert (=> b!2251053 m!2681901))

(declare-fun m!2681903 () Bool)

(assert (=> b!2251074 m!2681903))

(declare-fun m!2681905 () Bool)

(assert (=> b!2251072 m!2681905))

(check-sat (not b!2251049) (not b!2251046) (not b_next!66647) b_and!176313 (not b!2251047) b_and!176319 (not b_next!66645) (not b!2251070) (not b!2251052) b_and!176327 (not b!2251058) (not b_next!66639) (not b_next!66643) (not b!2251055) (not b!2251053) (not b!2251063) b_and!176315 (not b!2251065) (not b!2251064) (not b!2251048) (not b!2251067) (not b_next!66651) (not b_next!66637) (not b!2251060) (not b!2251074) b_and!176317 (not b_next!66641) (not b!2251059) (not b!2251062) b_and!176321 (not b!2251050) (not b!2251054) tp_is_empty!10371 b_and!176325 (not b!2251068) (not b!2251066) (not b!2251045) (not b_next!66649) (not b!2251072) b_and!176323 (not b!2251044) (not b!2251056))
(check-sat (not b_next!66647) b_and!176315 b_and!176313 b_and!176319 b_and!176321 (not b_next!66645) b_and!176327 b_and!176325 (not b_next!66649) (not b_next!66639) b_and!176323 (not b_next!66643) (not b_next!66651) (not b_next!66637) b_and!176317 (not b_next!66641))
(get-model)

(declare-fun d!667815 () Bool)

(assert (=> d!667815 (= (head!4794 tokens!456) (h!32066 tokens!456))))

(assert (=> b!2251062 d!667815))

(declare-fun d!667817 () Bool)

(assert (=> d!667817 (= (inv!36195 (tag!4717 otherR!12)) (= (mod (str.len (value!134288 (tag!4717 otherR!12))) 2) 0))))

(assert (=> b!2251052 d!667817))

(declare-fun d!667819 () Bool)

(declare-fun res!961867 () Bool)

(declare-fun e!1440506 () Bool)

(assert (=> d!667819 (=> (not res!961867) (not e!1440506))))

(declare-fun semiInverseModEq!1707 (Int Int) Bool)

(assert (=> d!667819 (= res!961867 (semiInverseModEq!1707 (toChars!5824 (transformation!4227 otherR!12)) (toValue!5965 (transformation!4227 otherR!12))))))

(assert (=> d!667819 (= (inv!36198 (transformation!4227 otherR!12)) e!1440506)))

(declare-fun b!2251077 () Bool)

(declare-fun equivClasses!1626 (Int Int) Bool)

(assert (=> b!2251077 (= e!1440506 (equivClasses!1626 (toChars!5824 (transformation!4227 otherR!12)) (toValue!5965 (transformation!4227 otherR!12))))))

(assert (= (and d!667819 res!961867) b!2251077))

(declare-fun m!2681907 () Bool)

(assert (=> d!667819 m!2681907))

(declare-fun m!2681909 () Bool)

(assert (=> b!2251077 m!2681909))

(assert (=> b!2251052 d!667819))

(declare-fun d!667821 () Bool)

(declare-fun e!1440515 () Bool)

(assert (=> d!667821 e!1440515))

(declare-fun res!961877 () Bool)

(assert (=> d!667821 (=> res!961877 e!1440515)))

(declare-fun lt!836743 () Bool)

(assert (=> d!667821 (= res!961877 (not lt!836743))))

(declare-fun e!1440513 () Bool)

(assert (=> d!667821 (= lt!836743 e!1440513)))

(declare-fun res!961878 () Bool)

(assert (=> d!667821 (=> res!961878 e!1440513)))

(assert (=> d!667821 (= res!961878 ((_ is Nil!26663) otherP!12))))

(assert (=> d!667821 (= (isPrefix!2217 otherP!12 input!1722) lt!836743)))

(declare-fun b!2251087 () Bool)

(declare-fun res!961876 () Bool)

(declare-fun e!1440514 () Bool)

(assert (=> b!2251087 (=> (not res!961876) (not e!1440514))))

(declare-fun head!4796 (List!26757) C!13296)

(assert (=> b!2251087 (= res!961876 (= (head!4796 otherP!12) (head!4796 input!1722)))))

(declare-fun b!2251086 () Bool)

(assert (=> b!2251086 (= e!1440513 e!1440514)))

(declare-fun res!961879 () Bool)

(assert (=> b!2251086 (=> (not res!961879) (not e!1440514))))

(assert (=> b!2251086 (= res!961879 (not ((_ is Nil!26663) input!1722)))))

(declare-fun b!2251089 () Bool)

(assert (=> b!2251089 (= e!1440515 (>= (size!20866 input!1722) (size!20866 otherP!12)))))

(declare-fun b!2251088 () Bool)

(declare-fun tail!3249 (List!26757) List!26757)

(assert (=> b!2251088 (= e!1440514 (isPrefix!2217 (tail!3249 otherP!12) (tail!3249 input!1722)))))

(assert (= (and d!667821 (not res!961878)) b!2251086))

(assert (= (and b!2251086 res!961879) b!2251087))

(assert (= (and b!2251087 res!961876) b!2251088))

(assert (= (and d!667821 (not res!961877)) b!2251089))

(declare-fun m!2681911 () Bool)

(assert (=> b!2251087 m!2681911))

(declare-fun m!2681913 () Bool)

(assert (=> b!2251087 m!2681913))

(assert (=> b!2251089 m!2681867))

(assert (=> b!2251089 m!2681897))

(declare-fun m!2681915 () Bool)

(assert (=> b!2251088 m!2681915))

(declare-fun m!2681917 () Bool)

(assert (=> b!2251088 m!2681917))

(assert (=> b!2251088 m!2681915))

(assert (=> b!2251088 m!2681917))

(declare-fun m!2681919 () Bool)

(assert (=> b!2251088 m!2681919))

(assert (=> b!2251063 d!667821))

(declare-fun d!667823 () Bool)

(assert (=> d!667823 (= (inv!36195 (tag!4717 (h!32067 rules!1750))) (= (mod (str.len (value!134288 (tag!4717 (h!32067 rules!1750)))) 2) 0))))

(assert (=> b!2251050 d!667823))

(declare-fun d!667825 () Bool)

(declare-fun res!961880 () Bool)

(declare-fun e!1440516 () Bool)

(assert (=> d!667825 (=> (not res!961880) (not e!1440516))))

(assert (=> d!667825 (= res!961880 (semiInverseModEq!1707 (toChars!5824 (transformation!4227 (h!32067 rules!1750))) (toValue!5965 (transformation!4227 (h!32067 rules!1750)))))))

(assert (=> d!667825 (= (inv!36198 (transformation!4227 (h!32067 rules!1750))) e!1440516)))

(declare-fun b!2251090 () Bool)

(assert (=> b!2251090 (= e!1440516 (equivClasses!1626 (toChars!5824 (transformation!4227 (h!32067 rules!1750))) (toValue!5965 (transformation!4227 (h!32067 rules!1750)))))))

(assert (= (and d!667825 res!961880) b!2251090))

(declare-fun m!2681921 () Bool)

(assert (=> d!667825 m!2681921))

(declare-fun m!2681923 () Bool)

(assert (=> b!2251090 m!2681923))

(assert (=> b!2251050 d!667825))

(declare-fun d!667827 () Bool)

(declare-fun lt!836746 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3556 (List!26760) (InoxSet Rule!8254))

(assert (=> d!667827 (= lt!836746 (select (content!3556 rules!1750) r!2363))))

(declare-fun e!1440522 () Bool)

(assert (=> d!667827 (= lt!836746 e!1440522)))

(declare-fun res!961891 () Bool)

(assert (=> d!667827 (=> (not res!961891) (not e!1440522))))

(assert (=> d!667827 (= res!961891 ((_ is Cons!26666) rules!1750))))

(assert (=> d!667827 (= (contains!4577 rules!1750 r!2363) lt!836746)))

(declare-fun b!2251095 () Bool)

(declare-fun e!1440521 () Bool)

(assert (=> b!2251095 (= e!1440522 e!1440521)))

(declare-fun res!961890 () Bool)

(assert (=> b!2251095 (=> res!961890 e!1440521)))

(assert (=> b!2251095 (= res!961890 (= (h!32067 rules!1750) r!2363))))

(declare-fun b!2251096 () Bool)

(assert (=> b!2251096 (= e!1440521 (contains!4577 (t!200822 rules!1750) r!2363))))

(assert (= (and d!667827 res!961891) b!2251095))

(assert (= (and b!2251095 (not res!961890)) b!2251096))

(declare-fun m!2681925 () Bool)

(assert (=> d!667827 m!2681925))

(declare-fun m!2681927 () Bool)

(assert (=> d!667827 m!2681927))

(declare-fun m!2681929 () Bool)

(assert (=> b!2251096 m!2681929))

(assert (=> b!2251072 d!667827))

(declare-fun d!667829 () Bool)

(declare-fun e!1440525 () Bool)

(assert (=> d!667829 e!1440525))

(declare-fun res!961893 () Bool)

(assert (=> d!667829 (=> res!961893 e!1440525)))

(declare-fun lt!836747 () Bool)

(assert (=> d!667829 (= res!961893 (not lt!836747))))

(declare-fun e!1440523 () Bool)

(assert (=> d!667829 (= lt!836747 e!1440523)))

(declare-fun res!961894 () Bool)

(assert (=> d!667829 (=> res!961894 e!1440523)))

(assert (=> d!667829 (= res!961894 ((_ is Nil!26663) lt!836736))))

(assert (=> d!667829 (= (isPrefix!2217 lt!836736 input!1722) lt!836747)))

(declare-fun b!2251098 () Bool)

(declare-fun res!961892 () Bool)

(declare-fun e!1440524 () Bool)

(assert (=> b!2251098 (=> (not res!961892) (not e!1440524))))

(assert (=> b!2251098 (= res!961892 (= (head!4796 lt!836736) (head!4796 input!1722)))))

(declare-fun b!2251097 () Bool)

(assert (=> b!2251097 (= e!1440523 e!1440524)))

(declare-fun res!961895 () Bool)

(assert (=> b!2251097 (=> (not res!961895) (not e!1440524))))

(assert (=> b!2251097 (= res!961895 (not ((_ is Nil!26663) input!1722)))))

(declare-fun b!2251100 () Bool)

(assert (=> b!2251100 (= e!1440525 (>= (size!20866 input!1722) (size!20866 lt!836736)))))

(declare-fun b!2251099 () Bool)

(assert (=> b!2251099 (= e!1440524 (isPrefix!2217 (tail!3249 lt!836736) (tail!3249 input!1722)))))

(assert (= (and d!667829 (not res!961894)) b!2251097))

(assert (= (and b!2251097 res!961895) b!2251098))

(assert (= (and b!2251098 res!961892) b!2251099))

(assert (= (and d!667829 (not res!961893)) b!2251100))

(declare-fun m!2681931 () Bool)

(assert (=> b!2251098 m!2681931))

(assert (=> b!2251098 m!2681913))

(assert (=> b!2251100 m!2681867))

(assert (=> b!2251100 m!2681865))

(declare-fun m!2681933 () Bool)

(assert (=> b!2251099 m!2681933))

(assert (=> b!2251099 m!2681917))

(assert (=> b!2251099 m!2681933))

(assert (=> b!2251099 m!2681917))

(declare-fun m!2681935 () Bool)

(assert (=> b!2251099 m!2681935))

(assert (=> b!2251049 d!667829))

(declare-fun d!667831 () Bool)

(assert (=> d!667831 (= (inv!36195 (tag!4717 r!2363)) (= (mod (str.len (value!134288 (tag!4717 r!2363))) 2) 0))))

(assert (=> b!2251060 d!667831))

(declare-fun d!667833 () Bool)

(declare-fun res!961896 () Bool)

(declare-fun e!1440526 () Bool)

(assert (=> d!667833 (=> (not res!961896) (not e!1440526))))

(assert (=> d!667833 (= res!961896 (semiInverseModEq!1707 (toChars!5824 (transformation!4227 r!2363)) (toValue!5965 (transformation!4227 r!2363))))))

(assert (=> d!667833 (= (inv!36198 (transformation!4227 r!2363)) e!1440526)))

(declare-fun b!2251101 () Bool)

(assert (=> b!2251101 (= e!1440526 (equivClasses!1626 (toChars!5824 (transformation!4227 r!2363)) (toValue!5965 (transformation!4227 r!2363))))))

(assert (= (and d!667833 res!961896) b!2251101))

(declare-fun m!2681937 () Bool)

(assert (=> d!667833 m!2681937))

(declare-fun m!2681939 () Bool)

(assert (=> b!2251101 m!2681939))

(assert (=> b!2251060 d!667833))

(declare-fun d!667837 () Bool)

(declare-fun c!358014 () Bool)

(assert (=> d!667837 (= c!358014 ((_ is IntegerValue!13167) (value!134289 (h!32066 tokens!456))))))

(declare-fun e!1440540 () Bool)

(assert (=> d!667837 (= (inv!21 (value!134289 (h!32066 tokens!456))) e!1440540)))

(declare-fun b!2251123 () Bool)

(declare-fun e!1440539 () Bool)

(declare-fun inv!17 (TokenValue!4389) Bool)

(assert (=> b!2251123 (= e!1440539 (inv!17 (value!134289 (h!32066 tokens!456))))))

(declare-fun b!2251124 () Bool)

(declare-fun inv!16 (TokenValue!4389) Bool)

(assert (=> b!2251124 (= e!1440540 (inv!16 (value!134289 (h!32066 tokens!456))))))

(declare-fun b!2251125 () Bool)

(declare-fun e!1440541 () Bool)

(declare-fun inv!15 (TokenValue!4389) Bool)

(assert (=> b!2251125 (= e!1440541 (inv!15 (value!134289 (h!32066 tokens!456))))))

(declare-fun b!2251126 () Bool)

(assert (=> b!2251126 (= e!1440540 e!1440539)))

(declare-fun c!358013 () Bool)

(assert (=> b!2251126 (= c!358013 ((_ is IntegerValue!13168) (value!134289 (h!32066 tokens!456))))))

(declare-fun b!2251127 () Bool)

(declare-fun res!961905 () Bool)

(assert (=> b!2251127 (=> res!961905 e!1440541)))

(assert (=> b!2251127 (= res!961905 (not ((_ is IntegerValue!13169) (value!134289 (h!32066 tokens!456)))))))

(assert (=> b!2251127 (= e!1440539 e!1440541)))

(assert (= (and d!667837 c!358014) b!2251124))

(assert (= (and d!667837 (not c!358014)) b!2251126))

(assert (= (and b!2251126 c!358013) b!2251123))

(assert (= (and b!2251126 (not c!358013)) b!2251127))

(assert (= (and b!2251127 (not res!961905)) b!2251125))

(declare-fun m!2681957 () Bool)

(assert (=> b!2251123 m!2681957))

(declare-fun m!2681959 () Bool)

(assert (=> b!2251124 m!2681959))

(declare-fun m!2681961 () Bool)

(assert (=> b!2251125 m!2681961))

(assert (=> b!2251058 d!667837))

(declare-fun d!667845 () Bool)

(declare-fun lt!836750 () Int)

(assert (=> d!667845 (= lt!836750 (size!20866 (list!10233 (charsOf!2615 (head!4794 tokens!456)))))))

(declare-fun size!20871 (Conc!8602) Int)

(assert (=> d!667845 (= lt!836750 (size!20871 (c!358006 (charsOf!2615 (head!4794 tokens!456)))))))

(assert (=> d!667845 (= (size!20868 (charsOf!2615 (head!4794 tokens!456))) lt!836750)))

(declare-fun bs!455068 () Bool)

(assert (= bs!455068 d!667845))

(assert (=> bs!455068 m!2681837))

(assert (=> bs!455068 m!2681839))

(assert (=> bs!455068 m!2681839))

(declare-fun m!2681963 () Bool)

(assert (=> bs!455068 m!2681963))

(declare-fun m!2681965 () Bool)

(assert (=> bs!455068 m!2681965))

(assert (=> b!2251048 d!667845))

(declare-fun d!667847 () Bool)

(declare-fun lt!836753 () BalanceConc!16932)

(assert (=> d!667847 (= (list!10233 lt!836753) (originalCharacters!4997 (head!4794 tokens!456)))))

(declare-fun dynLambda!11593 (Int TokenValue!4389) BalanceConc!16932)

(assert (=> d!667847 (= lt!836753 (dynLambda!11593 (toChars!5824 (transformation!4227 (rule!6529 (head!4794 tokens!456)))) (value!134289 (head!4794 tokens!456))))))

(assert (=> d!667847 (= (charsOf!2615 (head!4794 tokens!456)) lt!836753)))

(declare-fun b_lambda!71943 () Bool)

(assert (=> (not b_lambda!71943) (not d!667847)))

(declare-fun t!200832 () Bool)

(declare-fun tb!133399 () Bool)

(assert (=> (and b!2251051 (= (toChars!5824 (transformation!4227 otherR!12)) (toChars!5824 (transformation!4227 (rule!6529 (head!4794 tokens!456))))) t!200832) tb!133399))

(declare-fun b!2251132 () Bool)

(declare-fun e!1440544 () Bool)

(declare-fun tp!711185 () Bool)

(declare-fun inv!36202 (Conc!8602) Bool)

(assert (=> b!2251132 (= e!1440544 (and (inv!36202 (c!358006 (dynLambda!11593 (toChars!5824 (transformation!4227 (rule!6529 (head!4794 tokens!456)))) (value!134289 (head!4794 tokens!456))))) tp!711185))))

(declare-fun result!162620 () Bool)

(declare-fun inv!36203 (BalanceConc!16932) Bool)

(assert (=> tb!133399 (= result!162620 (and (inv!36203 (dynLambda!11593 (toChars!5824 (transformation!4227 (rule!6529 (head!4794 tokens!456)))) (value!134289 (head!4794 tokens!456)))) e!1440544))))

(assert (= tb!133399 b!2251132))

(declare-fun m!2681967 () Bool)

(assert (=> b!2251132 m!2681967))

(declare-fun m!2681969 () Bool)

(assert (=> tb!133399 m!2681969))

(assert (=> d!667847 t!200832))

(declare-fun b_and!176337 () Bool)

(assert (= b_and!176315 (and (=> t!200832 result!162620) b_and!176337)))

(declare-fun t!200834 () Bool)

(declare-fun tb!133401 () Bool)

(assert (=> (and b!2251043 (= (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456)))) (toChars!5824 (transformation!4227 (rule!6529 (head!4794 tokens!456))))) t!200834) tb!133401))

(declare-fun result!162624 () Bool)

(assert (= result!162624 result!162620))

(assert (=> d!667847 t!200834))

(declare-fun b_and!176339 () Bool)

(assert (= b_and!176319 (and (=> t!200834 result!162624) b_and!176339)))

(declare-fun tb!133403 () Bool)

(declare-fun t!200836 () Bool)

(assert (=> (and b!2251057 (= (toChars!5824 (transformation!4227 r!2363)) (toChars!5824 (transformation!4227 (rule!6529 (head!4794 tokens!456))))) t!200836) tb!133403))

(declare-fun result!162626 () Bool)

(assert (= result!162626 result!162620))

(assert (=> d!667847 t!200836))

(declare-fun b_and!176341 () Bool)

(assert (= b_and!176323 (and (=> t!200836 result!162626) b_and!176341)))

(declare-fun tb!133405 () Bool)

(declare-fun t!200838 () Bool)

(assert (=> (and b!2251071 (= (toChars!5824 (transformation!4227 (h!32067 rules!1750))) (toChars!5824 (transformation!4227 (rule!6529 (head!4794 tokens!456))))) t!200838) tb!133405))

(declare-fun result!162628 () Bool)

(assert (= result!162628 result!162620))

(assert (=> d!667847 t!200838))

(declare-fun b_and!176343 () Bool)

(assert (= b_and!176327 (and (=> t!200838 result!162628) b_and!176343)))

(declare-fun m!2681971 () Bool)

(assert (=> d!667847 m!2681971))

(declare-fun m!2681973 () Bool)

(assert (=> d!667847 m!2681973))

(assert (=> b!2251048 d!667847))

(assert (=> b!2251048 d!667815))

(declare-fun d!667849 () Bool)

(declare-fun lt!836756 () Int)

(assert (=> d!667849 (>= lt!836756 0)))

(declare-fun e!1440547 () Int)

(assert (=> d!667849 (= lt!836756 e!1440547)))

(declare-fun c!358017 () Bool)

(assert (=> d!667849 (= c!358017 ((_ is Nil!26663) otherP!12))))

(assert (=> d!667849 (= (size!20866 otherP!12) lt!836756)))

(declare-fun b!2251137 () Bool)

(assert (=> b!2251137 (= e!1440547 0)))

(declare-fun b!2251138 () Bool)

(assert (=> b!2251138 (= e!1440547 (+ 1 (size!20866 (t!200819 otherP!12))))))

(assert (= (and d!667849 c!358017) b!2251137))

(assert (= (and d!667849 (not c!358017)) b!2251138))

(declare-fun m!2681975 () Bool)

(assert (=> b!2251138 m!2681975))

(assert (=> b!2251048 d!667849))

(declare-fun b!2251148 () Bool)

(declare-fun e!1440554 () Int)

(declare-fun e!1440553 () Int)

(assert (=> b!2251148 (= e!1440554 e!1440553)))

(declare-fun c!358022 () Bool)

(assert (=> b!2251148 (= c!358022 (and ((_ is Cons!26666) rules!1750) (not (= (h!32067 rules!1750) r!2363))))))

(declare-fun b!2251150 () Bool)

(assert (=> b!2251150 (= e!1440553 (- 1))))

(declare-fun b!2251149 () Bool)

(assert (=> b!2251149 (= e!1440553 (+ 1 (getIndex!248 (t!200822 rules!1750) r!2363)))))

(declare-fun d!667851 () Bool)

(declare-fun lt!836759 () Int)

(assert (=> d!667851 (>= lt!836759 0)))

(assert (=> d!667851 (= lt!836759 e!1440554)))

(declare-fun c!358023 () Bool)

(assert (=> d!667851 (= c!358023 (and ((_ is Cons!26666) rules!1750) (= (h!32067 rules!1750) r!2363)))))

(assert (=> d!667851 (contains!4577 rules!1750 r!2363)))

(assert (=> d!667851 (= (getIndex!248 rules!1750 r!2363) lt!836759)))

(declare-fun b!2251147 () Bool)

(assert (=> b!2251147 (= e!1440554 0)))

(assert (= (and d!667851 c!358023) b!2251147))

(assert (= (and d!667851 (not c!358023)) b!2251148))

(assert (= (and b!2251148 c!358022) b!2251149))

(assert (= (and b!2251148 (not c!358022)) b!2251150))

(declare-fun m!2681977 () Bool)

(assert (=> b!2251149 m!2681977))

(assert (=> d!667851 m!2681905))

(assert (=> b!2251059 d!667851))

(declare-fun b!2251152 () Bool)

(declare-fun e!1440556 () Int)

(declare-fun e!1440555 () Int)

(assert (=> b!2251152 (= e!1440556 e!1440555)))

(declare-fun c!358024 () Bool)

(assert (=> b!2251152 (= c!358024 (and ((_ is Cons!26666) rules!1750) (not (= (h!32067 rules!1750) otherR!12))))))

(declare-fun b!2251154 () Bool)

(assert (=> b!2251154 (= e!1440555 (- 1))))

(declare-fun b!2251153 () Bool)

(assert (=> b!2251153 (= e!1440555 (+ 1 (getIndex!248 (t!200822 rules!1750) otherR!12)))))

(declare-fun d!667853 () Bool)

(declare-fun lt!836760 () Int)

(assert (=> d!667853 (>= lt!836760 0)))

(assert (=> d!667853 (= lt!836760 e!1440556)))

(declare-fun c!358025 () Bool)

(assert (=> d!667853 (= c!358025 (and ((_ is Cons!26666) rules!1750) (= (h!32067 rules!1750) otherR!12)))))

(assert (=> d!667853 (contains!4577 rules!1750 otherR!12)))

(assert (=> d!667853 (= (getIndex!248 rules!1750 otherR!12) lt!836760)))

(declare-fun b!2251151 () Bool)

(assert (=> b!2251151 (= e!1440556 0)))

(assert (= (and d!667853 c!358025) b!2251151))

(assert (= (and d!667853 (not c!358025)) b!2251152))

(assert (= (and b!2251152 c!358024) b!2251153))

(assert (= (and b!2251152 (not c!358024)) b!2251154))

(declare-fun m!2681979 () Bool)

(assert (=> b!2251153 m!2681979))

(assert (=> d!667853 m!2681899))

(assert (=> b!2251059 d!667853))

(declare-fun d!667855 () Bool)

(declare-fun res!961910 () Bool)

(declare-fun e!1440559 () Bool)

(assert (=> d!667855 (=> (not res!961910) (not e!1440559))))

(declare-fun validRegex!2460 (Regex!6575) Bool)

(assert (=> d!667855 (= res!961910 (validRegex!2460 (regex!4227 otherR!12)))))

(assert (=> d!667855 (= (ruleValid!1319 thiss!16613 otherR!12) e!1440559)))

(declare-fun b!2251159 () Bool)

(declare-fun res!961911 () Bool)

(assert (=> b!2251159 (=> (not res!961911) (not e!1440559))))

(declare-fun nullable!1806 (Regex!6575) Bool)

(assert (=> b!2251159 (= res!961911 (not (nullable!1806 (regex!4227 otherR!12))))))

(declare-fun b!2251160 () Bool)

(assert (=> b!2251160 (= e!1440559 (not (= (tag!4717 otherR!12) (String!29050 ""))))))

(assert (= (and d!667855 res!961910) b!2251159))

(assert (= (and b!2251159 res!961911) b!2251160))

(declare-fun m!2681981 () Bool)

(assert (=> d!667855 m!2681981))

(declare-fun m!2681983 () Bool)

(assert (=> b!2251159 m!2681983))

(assert (=> b!2251059 d!667855))

(declare-fun d!667857 () Bool)

(assert (=> d!667857 (ruleValid!1319 thiss!16613 otherR!12)))

(declare-fun lt!836763 () Unit!39604)

(declare-fun choose!13172 (LexerInterface!3824 Rule!8254 List!26760) Unit!39604)

(assert (=> d!667857 (= lt!836763 (choose!13172 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!667857 (contains!4577 rules!1750 otherR!12)))

(assert (=> d!667857 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!726 thiss!16613 otherR!12 rules!1750) lt!836763)))

(declare-fun bs!455069 () Bool)

(assert (= bs!455069 d!667857))

(assert (=> bs!455069 m!2681853))

(declare-fun m!2681985 () Bool)

(assert (=> bs!455069 m!2681985))

(assert (=> bs!455069 m!2681899))

(assert (=> b!2251059 d!667857))

(declare-fun b!2251199 () Bool)

(declare-fun e!1440585 () Bool)

(declare-fun e!1440581 () Bool)

(assert (=> b!2251199 (= e!1440585 e!1440581)))

(declare-fun res!961940 () Bool)

(assert (=> b!2251199 (=> (not res!961940) (not e!1440581))))

(declare-fun lt!836768 () Bool)

(assert (=> b!2251199 (= res!961940 (not lt!836768))))

(declare-fun d!667859 () Bool)

(declare-fun e!1440583 () Bool)

(assert (=> d!667859 e!1440583))

(declare-fun c!358036 () Bool)

(assert (=> d!667859 (= c!358036 ((_ is EmptyExpr!6575) (regex!4227 r!2363)))))

(declare-fun e!1440584 () Bool)

(assert (=> d!667859 (= lt!836768 e!1440584)))

(declare-fun c!358034 () Bool)

(declare-fun isEmpty!15040 (List!26757) Bool)

(assert (=> d!667859 (= c!358034 (isEmpty!15040 (list!10233 (charsOf!2615 (head!4794 tokens!456)))))))

(assert (=> d!667859 (validRegex!2460 (regex!4227 r!2363))))

(assert (=> d!667859 (= (matchR!2836 (regex!4227 r!2363) (list!10233 (charsOf!2615 (head!4794 tokens!456)))) lt!836768)))

(declare-fun b!2251200 () Bool)

(declare-fun e!1440582 () Bool)

(assert (=> b!2251200 (= e!1440581 e!1440582)))

(declare-fun res!961936 () Bool)

(assert (=> b!2251200 (=> res!961936 e!1440582)))

(declare-fun call!135583 () Bool)

(assert (=> b!2251200 (= res!961936 call!135583)))

(declare-fun b!2251201 () Bool)

(declare-fun res!961939 () Bool)

(declare-fun e!1440580 () Bool)

(assert (=> b!2251201 (=> (not res!961939) (not e!1440580))))

(assert (=> b!2251201 (= res!961939 (isEmpty!15040 (tail!3249 (list!10233 (charsOf!2615 (head!4794 tokens!456))))))))

(declare-fun b!2251202 () Bool)

(assert (=> b!2251202 (= e!1440584 (nullable!1806 (regex!4227 r!2363)))))

(declare-fun b!2251203 () Bool)

(assert (=> b!2251203 (= e!1440583 (= lt!836768 call!135583))))

(declare-fun b!2251204 () Bool)

(declare-fun derivativeStep!1468 (Regex!6575 C!13296) Regex!6575)

(assert (=> b!2251204 (= e!1440584 (matchR!2836 (derivativeStep!1468 (regex!4227 r!2363) (head!4796 (list!10233 (charsOf!2615 (head!4794 tokens!456))))) (tail!3249 (list!10233 (charsOf!2615 (head!4794 tokens!456))))))))

(declare-fun b!2251205 () Bool)

(assert (=> b!2251205 (= e!1440580 (= (head!4796 (list!10233 (charsOf!2615 (head!4794 tokens!456)))) (c!358007 (regex!4227 r!2363))))))

(declare-fun b!2251206 () Bool)

(declare-fun res!961935 () Bool)

(assert (=> b!2251206 (=> res!961935 e!1440582)))

(assert (=> b!2251206 (= res!961935 (not (isEmpty!15040 (tail!3249 (list!10233 (charsOf!2615 (head!4794 tokens!456)))))))))

(declare-fun b!2251207 () Bool)

(assert (=> b!2251207 (= e!1440582 (not (= (head!4796 (list!10233 (charsOf!2615 (head!4794 tokens!456)))) (c!358007 (regex!4227 r!2363)))))))

(declare-fun b!2251208 () Bool)

(declare-fun res!961937 () Bool)

(assert (=> b!2251208 (=> (not res!961937) (not e!1440580))))

(assert (=> b!2251208 (= res!961937 (not call!135583))))

(declare-fun b!2251209 () Bool)

(declare-fun e!1440586 () Bool)

(assert (=> b!2251209 (= e!1440586 (not lt!836768))))

(declare-fun b!2251210 () Bool)

(assert (=> b!2251210 (= e!1440583 e!1440586)))

(declare-fun c!358035 () Bool)

(assert (=> b!2251210 (= c!358035 ((_ is EmptyLang!6575) (regex!4227 r!2363)))))

(declare-fun b!2251211 () Bool)

(declare-fun res!961934 () Bool)

(assert (=> b!2251211 (=> res!961934 e!1440585)))

(assert (=> b!2251211 (= res!961934 e!1440580)))

(declare-fun res!961941 () Bool)

(assert (=> b!2251211 (=> (not res!961941) (not e!1440580))))

(assert (=> b!2251211 (= res!961941 lt!836768)))

(declare-fun b!2251212 () Bool)

(declare-fun res!961938 () Bool)

(assert (=> b!2251212 (=> res!961938 e!1440585)))

(assert (=> b!2251212 (= res!961938 (not ((_ is ElementMatch!6575) (regex!4227 r!2363))))))

(assert (=> b!2251212 (= e!1440586 e!1440585)))

(declare-fun bm!135578 () Bool)

(assert (=> bm!135578 (= call!135583 (isEmpty!15040 (list!10233 (charsOf!2615 (head!4794 tokens!456)))))))

(assert (= (and d!667859 c!358034) b!2251202))

(assert (= (and d!667859 (not c!358034)) b!2251204))

(assert (= (and d!667859 c!358036) b!2251203))

(assert (= (and d!667859 (not c!358036)) b!2251210))

(assert (= (and b!2251210 c!358035) b!2251209))

(assert (= (and b!2251210 (not c!358035)) b!2251212))

(assert (= (and b!2251212 (not res!961938)) b!2251211))

(assert (= (and b!2251211 res!961941) b!2251208))

(assert (= (and b!2251208 res!961937) b!2251201))

(assert (= (and b!2251201 res!961939) b!2251205))

(assert (= (and b!2251211 (not res!961934)) b!2251199))

(assert (= (and b!2251199 res!961940) b!2251200))

(assert (= (and b!2251200 (not res!961936)) b!2251206))

(assert (= (and b!2251206 (not res!961935)) b!2251207))

(assert (= (or b!2251203 b!2251200 b!2251208) bm!135578))

(assert (=> b!2251201 m!2681839))

(declare-fun m!2681991 () Bool)

(assert (=> b!2251201 m!2681991))

(assert (=> b!2251201 m!2681991))

(declare-fun m!2681999 () Bool)

(assert (=> b!2251201 m!2681999))

(assert (=> d!667859 m!2681839))

(declare-fun m!2682007 () Bool)

(assert (=> d!667859 m!2682007))

(declare-fun m!2682011 () Bool)

(assert (=> d!667859 m!2682011))

(assert (=> b!2251206 m!2681839))

(assert (=> b!2251206 m!2681991))

(assert (=> b!2251206 m!2681991))

(assert (=> b!2251206 m!2681999))

(assert (=> b!2251207 m!2681839))

(declare-fun m!2682013 () Bool)

(assert (=> b!2251207 m!2682013))

(declare-fun m!2682015 () Bool)

(assert (=> b!2251202 m!2682015))

(assert (=> b!2251204 m!2681839))

(assert (=> b!2251204 m!2682013))

(assert (=> b!2251204 m!2682013))

(declare-fun m!2682017 () Bool)

(assert (=> b!2251204 m!2682017))

(assert (=> b!2251204 m!2681839))

(assert (=> b!2251204 m!2681991))

(assert (=> b!2251204 m!2682017))

(assert (=> b!2251204 m!2681991))

(declare-fun m!2682019 () Bool)

(assert (=> b!2251204 m!2682019))

(assert (=> b!2251205 m!2681839))

(assert (=> b!2251205 m!2682013))

(assert (=> bm!135578 m!2681839))

(assert (=> bm!135578 m!2682007))

(assert (=> b!2251046 d!667859))

(declare-fun d!667863 () Bool)

(declare-fun list!10237 (Conc!8602) List!26757)

(assert (=> d!667863 (= (list!10233 (charsOf!2615 (head!4794 tokens!456))) (list!10237 (c!358006 (charsOf!2615 (head!4794 tokens!456)))))))

(declare-fun bs!455071 () Bool)

(assert (= bs!455071 d!667863))

(declare-fun m!2682023 () Bool)

(assert (=> bs!455071 m!2682023))

(assert (=> b!2251046 d!667863))

(assert (=> b!2251046 d!667847))

(assert (=> b!2251046 d!667815))

(declare-fun d!667867 () Bool)

(assert (=> d!667867 (= (inv!36195 (tag!4717 (rule!6529 (h!32066 tokens!456)))) (= (mod (str.len (value!134288 (tag!4717 (rule!6529 (h!32066 tokens!456))))) 2) 0))))

(assert (=> b!2251068 d!667867))

(declare-fun d!667869 () Bool)

(declare-fun res!961948 () Bool)

(declare-fun e!1440593 () Bool)

(assert (=> d!667869 (=> (not res!961948) (not e!1440593))))

(assert (=> d!667869 (= res!961948 (semiInverseModEq!1707 (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456)))) (toValue!5965 (transformation!4227 (rule!6529 (h!32066 tokens!456))))))))

(assert (=> d!667869 (= (inv!36198 (transformation!4227 (rule!6529 (h!32066 tokens!456)))) e!1440593)))

(declare-fun b!2251221 () Bool)

(assert (=> b!2251221 (= e!1440593 (equivClasses!1626 (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456)))) (toValue!5965 (transformation!4227 (rule!6529 (h!32066 tokens!456))))))))

(assert (= (and d!667869 res!961948) b!2251221))

(declare-fun m!2682029 () Bool)

(assert (=> d!667869 m!2682029))

(declare-fun m!2682031 () Bool)

(assert (=> b!2251221 m!2682031))

(assert (=> b!2251068 d!667869))

(declare-fun d!667873 () Bool)

(assert (=> d!667873 (= (get!8048 (maxPrefix!2112 thiss!16613 rules!1750 input!1722)) (v!30220 (maxPrefix!2112 thiss!16613 rules!1750 input!1722)))))

(assert (=> b!2251066 d!667873))

(declare-fun call!135589 () Option!5201)

(declare-fun bm!135584 () Bool)

(declare-fun maxPrefixOneRule!1313 (LexerInterface!3824 Rule!8254 List!26757) Option!5201)

(assert (=> bm!135584 (= call!135589 (maxPrefixOneRule!1313 thiss!16613 (h!32067 rules!1750) input!1722))))

(declare-fun b!2251374 () Bool)

(declare-fun res!962039 () Bool)

(declare-fun e!1440681 () Bool)

(assert (=> b!2251374 (=> (not res!962039) (not e!1440681))))

(declare-fun lt!836819 () Option!5201)

(assert (=> b!2251374 (= res!962039 (= (++!6495 (list!10233 (charsOf!2615 (_1!15591 (get!8048 lt!836819)))) (_2!15591 (get!8048 lt!836819))) input!1722))))

(declare-fun d!667875 () Bool)

(declare-fun e!1440682 () Bool)

(assert (=> d!667875 e!1440682))

(declare-fun res!962038 () Bool)

(assert (=> d!667875 (=> res!962038 e!1440682)))

(declare-fun isEmpty!15041 (Option!5201) Bool)

(assert (=> d!667875 (= res!962038 (isEmpty!15041 lt!836819))))

(declare-fun e!1440683 () Option!5201)

(assert (=> d!667875 (= lt!836819 e!1440683)))

(declare-fun c!358071 () Bool)

(assert (=> d!667875 (= c!358071 (and ((_ is Cons!26666) rules!1750) ((_ is Nil!26666) (t!200822 rules!1750))))))

(declare-fun lt!836820 () Unit!39604)

(declare-fun lt!836817 () Unit!39604)

(assert (=> d!667875 (= lt!836820 lt!836817)))

(assert (=> d!667875 (isPrefix!2217 input!1722 input!1722)))

(declare-fun lemmaIsPrefixRefl!1432 (List!26757 List!26757) Unit!39604)

(assert (=> d!667875 (= lt!836817 (lemmaIsPrefixRefl!1432 input!1722 input!1722))))

(declare-fun rulesValidInductive!1476 (LexerInterface!3824 List!26760) Bool)

(assert (=> d!667875 (rulesValidInductive!1476 thiss!16613 rules!1750)))

(assert (=> d!667875 (= (maxPrefix!2112 thiss!16613 rules!1750 input!1722) lt!836819)))

(declare-fun b!2251375 () Bool)

(declare-fun res!962037 () Bool)

(assert (=> b!2251375 (=> (not res!962037) (not e!1440681))))

(declare-fun apply!6550 (TokenValueInjection!8318 BalanceConc!16932) TokenValue!4389)

(assert (=> b!2251375 (= res!962037 (= (value!134289 (_1!15591 (get!8048 lt!836819))) (apply!6550 (transformation!4227 (rule!6529 (_1!15591 (get!8048 lt!836819)))) (seqFromList!2931 (originalCharacters!4997 (_1!15591 (get!8048 lt!836819)))))))))

(declare-fun b!2251376 () Bool)

(declare-fun res!962035 () Bool)

(assert (=> b!2251376 (=> (not res!962035) (not e!1440681))))

(assert (=> b!2251376 (= res!962035 (< (size!20866 (_2!15591 (get!8048 lt!836819))) (size!20866 input!1722)))))

(declare-fun b!2251377 () Bool)

(assert (=> b!2251377 (= e!1440681 (contains!4577 rules!1750 (rule!6529 (_1!15591 (get!8048 lt!836819)))))))

(declare-fun b!2251378 () Bool)

(assert (=> b!2251378 (= e!1440683 call!135589)))

(declare-fun b!2251379 () Bool)

(declare-fun res!962036 () Bool)

(assert (=> b!2251379 (=> (not res!962036) (not e!1440681))))

(assert (=> b!2251379 (= res!962036 (= (list!10233 (charsOf!2615 (_1!15591 (get!8048 lt!836819)))) (originalCharacters!4997 (_1!15591 (get!8048 lt!836819)))))))

(declare-fun b!2251380 () Bool)

(declare-fun lt!836821 () Option!5201)

(declare-fun lt!836818 () Option!5201)

(assert (=> b!2251380 (= e!1440683 (ite (and ((_ is None!5200) lt!836821) ((_ is None!5200) lt!836818)) None!5200 (ite ((_ is None!5200) lt!836818) lt!836821 (ite ((_ is None!5200) lt!836821) lt!836818 (ite (>= (size!20867 (_1!15591 (v!30220 lt!836821))) (size!20867 (_1!15591 (v!30220 lt!836818)))) lt!836821 lt!836818)))))))

(assert (=> b!2251380 (= lt!836821 call!135589)))

(assert (=> b!2251380 (= lt!836818 (maxPrefix!2112 thiss!16613 (t!200822 rules!1750) input!1722))))

(declare-fun b!2251381 () Bool)

(assert (=> b!2251381 (= e!1440682 e!1440681)))

(declare-fun res!962040 () Bool)

(assert (=> b!2251381 (=> (not res!962040) (not e!1440681))))

(declare-fun isDefined!4185 (Option!5201) Bool)

(assert (=> b!2251381 (= res!962040 (isDefined!4185 lt!836819))))

(declare-fun b!2251382 () Bool)

(declare-fun res!962034 () Bool)

(assert (=> b!2251382 (=> (not res!962034) (not e!1440681))))

(assert (=> b!2251382 (= res!962034 (matchR!2836 (regex!4227 (rule!6529 (_1!15591 (get!8048 lt!836819)))) (list!10233 (charsOf!2615 (_1!15591 (get!8048 lt!836819))))))))

(assert (= (and d!667875 c!358071) b!2251378))

(assert (= (and d!667875 (not c!358071)) b!2251380))

(assert (= (or b!2251378 b!2251380) bm!135584))

(assert (= (and d!667875 (not res!962038)) b!2251381))

(assert (= (and b!2251381 res!962040) b!2251379))

(assert (= (and b!2251379 res!962036) b!2251376))

(assert (= (and b!2251376 res!962035) b!2251374))

(assert (= (and b!2251374 res!962039) b!2251375))

(assert (= (and b!2251375 res!962037) b!2251382))

(assert (= (and b!2251382 res!962034) b!2251377))

(declare-fun m!2682145 () Bool)

(assert (=> b!2251375 m!2682145))

(declare-fun m!2682147 () Bool)

(assert (=> b!2251375 m!2682147))

(assert (=> b!2251375 m!2682147))

(declare-fun m!2682149 () Bool)

(assert (=> b!2251375 m!2682149))

(declare-fun m!2682151 () Bool)

(assert (=> b!2251380 m!2682151))

(assert (=> b!2251382 m!2682145))

(declare-fun m!2682153 () Bool)

(assert (=> b!2251382 m!2682153))

(assert (=> b!2251382 m!2682153))

(declare-fun m!2682155 () Bool)

(assert (=> b!2251382 m!2682155))

(assert (=> b!2251382 m!2682155))

(declare-fun m!2682157 () Bool)

(assert (=> b!2251382 m!2682157))

(assert (=> b!2251376 m!2682145))

(declare-fun m!2682159 () Bool)

(assert (=> b!2251376 m!2682159))

(assert (=> b!2251376 m!2681867))

(assert (=> b!2251374 m!2682145))

(assert (=> b!2251374 m!2682153))

(assert (=> b!2251374 m!2682153))

(assert (=> b!2251374 m!2682155))

(assert (=> b!2251374 m!2682155))

(declare-fun m!2682161 () Bool)

(assert (=> b!2251374 m!2682161))

(declare-fun m!2682163 () Bool)

(assert (=> b!2251381 m!2682163))

(declare-fun m!2682165 () Bool)

(assert (=> d!667875 m!2682165))

(declare-fun m!2682167 () Bool)

(assert (=> d!667875 m!2682167))

(declare-fun m!2682169 () Bool)

(assert (=> d!667875 m!2682169))

(declare-fun m!2682171 () Bool)

(assert (=> d!667875 m!2682171))

(assert (=> b!2251377 m!2682145))

(declare-fun m!2682173 () Bool)

(assert (=> b!2251377 m!2682173))

(assert (=> b!2251379 m!2682145))

(assert (=> b!2251379 m!2682153))

(assert (=> b!2251379 m!2682153))

(assert (=> b!2251379 m!2682155))

(declare-fun m!2682175 () Bool)

(assert (=> bm!135584 m!2682175))

(assert (=> b!2251066 d!667875))

(declare-fun d!667935 () Bool)

(assert (=> d!667935 (= (isEmpty!15036 tokens!456) ((_ is Nil!26665) tokens!456))))

(assert (=> b!2251045 d!667935))

(declare-fun d!667937 () Bool)

(declare-fun res!962041 () Bool)

(declare-fun e!1440684 () Bool)

(assert (=> d!667937 (=> (not res!962041) (not e!1440684))))

(assert (=> d!667937 (= res!962041 (validRegex!2460 (regex!4227 r!2363)))))

(assert (=> d!667937 (= (ruleValid!1319 thiss!16613 r!2363) e!1440684)))

(declare-fun b!2251383 () Bool)

(declare-fun res!962042 () Bool)

(assert (=> b!2251383 (=> (not res!962042) (not e!1440684))))

(assert (=> b!2251383 (= res!962042 (not (nullable!1806 (regex!4227 r!2363))))))

(declare-fun b!2251384 () Bool)

(assert (=> b!2251384 (= e!1440684 (not (= (tag!4717 r!2363) (String!29050 ""))))))

(assert (= (and d!667937 res!962041) b!2251383))

(assert (= (and b!2251383 res!962042) b!2251384))

(assert (=> d!667937 m!2682011))

(assert (=> b!2251383 m!2682015))

(assert (=> b!2251067 d!667937))

(declare-fun d!667939 () Bool)

(assert (=> d!667939 (ruleValid!1319 thiss!16613 r!2363)))

(declare-fun lt!836822 () Unit!39604)

(assert (=> d!667939 (= lt!836822 (choose!13172 thiss!16613 r!2363 rules!1750))))

(assert (=> d!667939 (contains!4577 rules!1750 r!2363)))

(assert (=> d!667939 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!726 thiss!16613 r!2363 rules!1750) lt!836822)))

(declare-fun bs!455077 () Bool)

(assert (= bs!455077 d!667939))

(assert (=> bs!455077 m!2681881))

(declare-fun m!2682177 () Bool)

(assert (=> bs!455077 m!2682177))

(assert (=> bs!455077 m!2681905))

(assert (=> b!2251067 d!667939))

(declare-fun d!667941 () Bool)

(declare-fun list!10238 (Conc!8603) List!26759)

(assert (=> d!667941 (= (list!10234 (_1!15592 lt!836734)) (list!10238 (c!358008 (_1!15592 lt!836734))))))

(declare-fun bs!455078 () Bool)

(assert (= bs!455078 d!667941))

(declare-fun m!2682179 () Bool)

(assert (=> bs!455078 m!2682179))

(assert (=> b!2251065 d!667941))

(declare-fun d!667943 () Bool)

(assert (=> d!667943 (= (list!10233 (_2!15592 lt!836734)) (list!10237 (c!358006 (_2!15592 lt!836734))))))

(declare-fun bs!455079 () Bool)

(assert (= bs!455079 d!667943))

(declare-fun m!2682181 () Bool)

(assert (=> bs!455079 m!2682181))

(assert (=> b!2251065 d!667943))

(declare-fun b!2251485 () Bool)

(declare-fun res!962076 () Bool)

(declare-fun e!1440747 () Bool)

(assert (=> b!2251485 (=> (not res!962076) (not e!1440747))))

(declare-fun lt!836841 () tuple2!26164)

(declare-fun lexList!1052 (LexerInterface!3824 List!26760 List!26757) tuple2!26166)

(assert (=> b!2251485 (= res!962076 (= (list!10234 (_1!15592 lt!836841)) (_1!15593 (lexList!1052 thiss!16613 rules!1750 (list!10233 (seqFromList!2931 input!1722))))))))

(declare-fun b!2251486 () Bool)

(declare-fun e!1440746 () Bool)

(declare-fun isEmpty!15043 (BalanceConc!16934) Bool)

(assert (=> b!2251486 (= e!1440746 (not (isEmpty!15043 (_1!15592 lt!836841))))))

(declare-fun b!2251487 () Bool)

(declare-fun e!1440745 () Bool)

(assert (=> b!2251487 (= e!1440745 e!1440746)))

(declare-fun res!962074 () Bool)

(assert (=> b!2251487 (= res!962074 (< (size!20868 (_2!15592 lt!836841)) (size!20868 (seqFromList!2931 input!1722))))))

(assert (=> b!2251487 (=> (not res!962074) (not e!1440746))))

(declare-fun d!667945 () Bool)

(assert (=> d!667945 e!1440747))

(declare-fun res!962075 () Bool)

(assert (=> d!667945 (=> (not res!962075) (not e!1440747))))

(assert (=> d!667945 (= res!962075 e!1440745)))

(declare-fun c!358077 () Bool)

(declare-fun size!20872 (BalanceConc!16934) Int)

(assert (=> d!667945 (= c!358077 (> (size!20872 (_1!15592 lt!836841)) 0))))

(declare-fun lexTailRecV2!727 (LexerInterface!3824 List!26760 BalanceConc!16932 BalanceConc!16932 BalanceConc!16932 BalanceConc!16934) tuple2!26164)

(assert (=> d!667945 (= lt!836841 (lexTailRecV2!727 thiss!16613 rules!1750 (seqFromList!2931 input!1722) (BalanceConc!16933 Empty!8602) (seqFromList!2931 input!1722) (BalanceConc!16935 Empty!8603)))))

(assert (=> d!667945 (= (lex!1663 thiss!16613 rules!1750 (seqFromList!2931 input!1722)) lt!836841)))

(declare-fun b!2251488 () Bool)

(assert (=> b!2251488 (= e!1440745 (= (_2!15592 lt!836841) (seqFromList!2931 input!1722)))))

(declare-fun b!2251489 () Bool)

(assert (=> b!2251489 (= e!1440747 (= (list!10233 (_2!15592 lt!836841)) (_2!15593 (lexList!1052 thiss!16613 rules!1750 (list!10233 (seqFromList!2931 input!1722))))))))

(assert (= (and d!667945 c!358077) b!2251487))

(assert (= (and d!667945 (not c!358077)) b!2251488))

(assert (= (and b!2251487 res!962074) b!2251486))

(assert (= (and d!667945 res!962075) b!2251485))

(assert (= (and b!2251485 res!962076) b!2251489))

(declare-fun m!2682237 () Bool)

(assert (=> d!667945 m!2682237))

(assert (=> d!667945 m!2681827))

(assert (=> d!667945 m!2681827))

(declare-fun m!2682239 () Bool)

(assert (=> d!667945 m!2682239))

(declare-fun m!2682241 () Bool)

(assert (=> b!2251489 m!2682241))

(assert (=> b!2251489 m!2681827))

(declare-fun m!2682243 () Bool)

(assert (=> b!2251489 m!2682243))

(assert (=> b!2251489 m!2682243))

(declare-fun m!2682245 () Bool)

(assert (=> b!2251489 m!2682245))

(declare-fun m!2682247 () Bool)

(assert (=> b!2251487 m!2682247))

(assert (=> b!2251487 m!2681827))

(declare-fun m!2682249 () Bool)

(assert (=> b!2251487 m!2682249))

(declare-fun m!2682251 () Bool)

(assert (=> b!2251485 m!2682251))

(assert (=> b!2251485 m!2681827))

(assert (=> b!2251485 m!2682243))

(assert (=> b!2251485 m!2682243))

(assert (=> b!2251485 m!2682245))

(declare-fun m!2682253 () Bool)

(assert (=> b!2251486 m!2682253))

(assert (=> b!2251065 d!667945))

(declare-fun d!667959 () Bool)

(declare-fun fromListB!1318 (List!26757) BalanceConc!16932)

(assert (=> d!667959 (= (seqFromList!2931 input!1722) (fromListB!1318 input!1722))))

(declare-fun bs!455081 () Bool)

(assert (= bs!455081 d!667959))

(declare-fun m!2682255 () Bool)

(assert (=> bs!455081 m!2682255))

(assert (=> b!2251065 d!667959))

(declare-fun d!667961 () Bool)

(declare-fun e!1440750 () Bool)

(assert (=> d!667961 e!1440750))

(declare-fun res!962078 () Bool)

(assert (=> d!667961 (=> res!962078 e!1440750)))

(declare-fun lt!836842 () Bool)

(assert (=> d!667961 (= res!962078 (not lt!836842))))

(declare-fun e!1440748 () Bool)

(assert (=> d!667961 (= lt!836842 e!1440748)))

(declare-fun res!962079 () Bool)

(assert (=> d!667961 (=> res!962079 e!1440748)))

(assert (=> d!667961 (= res!962079 ((_ is Nil!26663) lt!836736))))

(assert (=> d!667961 (= (isPrefix!2217 lt!836736 (++!6495 lt!836736 (_2!15591 lt!836738))) lt!836842)))

(declare-fun b!2251491 () Bool)

(declare-fun res!962077 () Bool)

(declare-fun e!1440749 () Bool)

(assert (=> b!2251491 (=> (not res!962077) (not e!1440749))))

(assert (=> b!2251491 (= res!962077 (= (head!4796 lt!836736) (head!4796 (++!6495 lt!836736 (_2!15591 lt!836738)))))))

(declare-fun b!2251490 () Bool)

(assert (=> b!2251490 (= e!1440748 e!1440749)))

(declare-fun res!962080 () Bool)

(assert (=> b!2251490 (=> (not res!962080) (not e!1440749))))

(assert (=> b!2251490 (= res!962080 (not ((_ is Nil!26663) (++!6495 lt!836736 (_2!15591 lt!836738)))))))

(declare-fun b!2251493 () Bool)

(assert (=> b!2251493 (= e!1440750 (>= (size!20866 (++!6495 lt!836736 (_2!15591 lt!836738))) (size!20866 lt!836736)))))

(declare-fun b!2251492 () Bool)

(assert (=> b!2251492 (= e!1440749 (isPrefix!2217 (tail!3249 lt!836736) (tail!3249 (++!6495 lt!836736 (_2!15591 lt!836738)))))))

(assert (= (and d!667961 (not res!962079)) b!2251490))

(assert (= (and b!2251490 res!962080) b!2251491))

(assert (= (and b!2251491 res!962077) b!2251492))

(assert (= (and d!667961 (not res!962078)) b!2251493))

(assert (=> b!2251491 m!2681931))

(assert (=> b!2251491 m!2681859))

(declare-fun m!2682257 () Bool)

(assert (=> b!2251491 m!2682257))

(assert (=> b!2251493 m!2681859))

(declare-fun m!2682259 () Bool)

(assert (=> b!2251493 m!2682259))

(assert (=> b!2251493 m!2681865))

(assert (=> b!2251492 m!2681933))

(assert (=> b!2251492 m!2681859))

(declare-fun m!2682261 () Bool)

(assert (=> b!2251492 m!2682261))

(assert (=> b!2251492 m!2681933))

(assert (=> b!2251492 m!2682261))

(declare-fun m!2682263 () Bool)

(assert (=> b!2251492 m!2682263))

(assert (=> b!2251044 d!667961))

(declare-fun d!667963 () Bool)

(declare-fun e!1440756 () Bool)

(assert (=> d!667963 e!1440756))

(declare-fun res!962085 () Bool)

(assert (=> d!667963 (=> (not res!962085) (not e!1440756))))

(declare-fun lt!836845 () List!26757)

(declare-fun content!3558 (List!26757) (InoxSet C!13296))

(assert (=> d!667963 (= res!962085 (= (content!3558 lt!836845) ((_ map or) (content!3558 lt!836736) (content!3558 (_2!15591 lt!836738)))))))

(declare-fun e!1440755 () List!26757)

(assert (=> d!667963 (= lt!836845 e!1440755)))

(declare-fun c!358080 () Bool)

(assert (=> d!667963 (= c!358080 ((_ is Nil!26663) lt!836736))))

(assert (=> d!667963 (= (++!6495 lt!836736 (_2!15591 lt!836738)) lt!836845)))

(declare-fun b!2251502 () Bool)

(assert (=> b!2251502 (= e!1440755 (_2!15591 lt!836738))))

(declare-fun b!2251503 () Bool)

(assert (=> b!2251503 (= e!1440755 (Cons!26663 (h!32064 lt!836736) (++!6495 (t!200819 lt!836736) (_2!15591 lt!836738))))))

(declare-fun b!2251505 () Bool)

(assert (=> b!2251505 (= e!1440756 (or (not (= (_2!15591 lt!836738) Nil!26663)) (= lt!836845 lt!836736)))))

(declare-fun b!2251504 () Bool)

(declare-fun res!962086 () Bool)

(assert (=> b!2251504 (=> (not res!962086) (not e!1440756))))

(assert (=> b!2251504 (= res!962086 (= (size!20866 lt!836845) (+ (size!20866 lt!836736) (size!20866 (_2!15591 lt!836738)))))))

(assert (= (and d!667963 c!358080) b!2251502))

(assert (= (and d!667963 (not c!358080)) b!2251503))

(assert (= (and d!667963 res!962085) b!2251504))

(assert (= (and b!2251504 res!962086) b!2251505))

(declare-fun m!2682265 () Bool)

(assert (=> d!667963 m!2682265))

(declare-fun m!2682267 () Bool)

(assert (=> d!667963 m!2682267))

(declare-fun m!2682269 () Bool)

(assert (=> d!667963 m!2682269))

(declare-fun m!2682271 () Bool)

(assert (=> b!2251503 m!2682271))

(declare-fun m!2682273 () Bool)

(assert (=> b!2251504 m!2682273))

(assert (=> b!2251504 m!2681865))

(declare-fun m!2682275 () Bool)

(assert (=> b!2251504 m!2682275))

(assert (=> b!2251044 d!667963))

(declare-fun d!667965 () Bool)

(assert (=> d!667965 (isPrefix!2217 lt!836736 (++!6495 lt!836736 (_2!15591 lt!836738)))))

(declare-fun lt!836848 () Unit!39604)

(declare-fun choose!13174 (List!26757 List!26757) Unit!39604)

(assert (=> d!667965 (= lt!836848 (choose!13174 lt!836736 (_2!15591 lt!836738)))))

(assert (=> d!667965 (= (lemmaConcatTwoListThenFirstIsPrefix!1462 lt!836736 (_2!15591 lt!836738)) lt!836848)))

(declare-fun bs!455082 () Bool)

(assert (= bs!455082 d!667965))

(assert (=> bs!455082 m!2681859))

(assert (=> bs!455082 m!2681859))

(assert (=> bs!455082 m!2681861))

(declare-fun m!2682277 () Bool)

(assert (=> bs!455082 m!2682277))

(assert (=> b!2251044 d!667965))

(declare-fun d!667967 () Bool)

(declare-fun lt!836849 () Int)

(assert (=> d!667967 (>= lt!836849 0)))

(declare-fun e!1440757 () Int)

(assert (=> d!667967 (= lt!836849 e!1440757)))

(declare-fun c!358081 () Bool)

(assert (=> d!667967 (= c!358081 ((_ is Nil!26663) input!1722))))

(assert (=> d!667967 (= (size!20866 input!1722) lt!836849)))

(declare-fun b!2251506 () Bool)

(assert (=> b!2251506 (= e!1440757 0)))

(declare-fun b!2251507 () Bool)

(assert (=> b!2251507 (= e!1440757 (+ 1 (size!20866 (t!200819 input!1722))))))

(assert (= (and d!667967 c!358081) b!2251506))

(assert (= (and d!667967 (not c!358081)) b!2251507))

(declare-fun m!2682279 () Bool)

(assert (=> b!2251507 m!2682279))

(assert (=> b!2251044 d!667967))

(declare-fun d!667969 () Bool)

(assert (=> d!667969 (= (list!10233 (charsOf!2615 (h!32066 tokens!456))) (list!10237 (c!358006 (charsOf!2615 (h!32066 tokens!456)))))))

(declare-fun bs!455083 () Bool)

(assert (= bs!455083 d!667969))

(declare-fun m!2682281 () Bool)

(assert (=> bs!455083 m!2682281))

(assert (=> b!2251044 d!667969))

(declare-fun d!667971 () Bool)

(declare-fun lt!836850 () Int)

(assert (=> d!667971 (>= lt!836850 0)))

(declare-fun e!1440758 () Int)

(assert (=> d!667971 (= lt!836850 e!1440758)))

(declare-fun c!358082 () Bool)

(assert (=> d!667971 (= c!358082 ((_ is Nil!26663) lt!836736))))

(assert (=> d!667971 (= (size!20866 lt!836736) lt!836850)))

(declare-fun b!2251508 () Bool)

(assert (=> b!2251508 (= e!1440758 0)))

(declare-fun b!2251509 () Bool)

(assert (=> b!2251509 (= e!1440758 (+ 1 (size!20866 (t!200819 lt!836736))))))

(assert (= (and d!667971 c!358082) b!2251508))

(assert (= (and d!667971 (not c!358082)) b!2251509))

(declare-fun m!2682283 () Bool)

(assert (=> b!2251509 m!2682283))

(assert (=> b!2251044 d!667971))

(declare-fun d!667973 () Bool)

(declare-fun lt!836851 () BalanceConc!16932)

(assert (=> d!667973 (= (list!10233 lt!836851) (originalCharacters!4997 (h!32066 tokens!456)))))

(assert (=> d!667973 (= lt!836851 (dynLambda!11593 (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456)))) (value!134289 (h!32066 tokens!456))))))

(assert (=> d!667973 (= (charsOf!2615 (h!32066 tokens!456)) lt!836851)))

(declare-fun b_lambda!71953 () Bool)

(assert (=> (not b_lambda!71953) (not d!667973)))

(declare-fun tb!133423 () Bool)

(declare-fun t!200857 () Bool)

(assert (=> (and b!2251051 (= (toChars!5824 (transformation!4227 otherR!12)) (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456))))) t!200857) tb!133423))

(declare-fun b!2251510 () Bool)

(declare-fun e!1440759 () Bool)

(declare-fun tp!711250 () Bool)

(assert (=> b!2251510 (= e!1440759 (and (inv!36202 (c!358006 (dynLambda!11593 (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456)))) (value!134289 (h!32066 tokens!456))))) tp!711250))))

(declare-fun result!162654 () Bool)

(assert (=> tb!133423 (= result!162654 (and (inv!36203 (dynLambda!11593 (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456)))) (value!134289 (h!32066 tokens!456)))) e!1440759))))

(assert (= tb!133423 b!2251510))

(declare-fun m!2682285 () Bool)

(assert (=> b!2251510 m!2682285))

(declare-fun m!2682287 () Bool)

(assert (=> tb!133423 m!2682287))

(assert (=> d!667973 t!200857))

(declare-fun b_and!176369 () Bool)

(assert (= b_and!176337 (and (=> t!200857 result!162654) b_and!176369)))

(declare-fun t!200859 () Bool)

(declare-fun tb!133425 () Bool)

(assert (=> (and b!2251043 (= (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456)))) (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456))))) t!200859) tb!133425))

(declare-fun result!162656 () Bool)

(assert (= result!162656 result!162654))

(assert (=> d!667973 t!200859))

(declare-fun b_and!176371 () Bool)

(assert (= b_and!176339 (and (=> t!200859 result!162656) b_and!176371)))

(declare-fun t!200861 () Bool)

(declare-fun tb!133427 () Bool)

(assert (=> (and b!2251057 (= (toChars!5824 (transformation!4227 r!2363)) (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456))))) t!200861) tb!133427))

(declare-fun result!162658 () Bool)

(assert (= result!162658 result!162654))

(assert (=> d!667973 t!200861))

(declare-fun b_and!176373 () Bool)

(assert (= b_and!176341 (and (=> t!200861 result!162658) b_and!176373)))

(declare-fun t!200863 () Bool)

(declare-fun tb!133429 () Bool)

(assert (=> (and b!2251071 (= (toChars!5824 (transformation!4227 (h!32067 rules!1750))) (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456))))) t!200863) tb!133429))

(declare-fun result!162660 () Bool)

(assert (= result!162660 result!162654))

(assert (=> d!667973 t!200863))

(declare-fun b_and!176375 () Bool)

(assert (= b_and!176343 (and (=> t!200863 result!162660) b_and!176375)))

(declare-fun m!2682289 () Bool)

(assert (=> d!667973 m!2682289))

(declare-fun m!2682291 () Bool)

(assert (=> d!667973 m!2682291))

(assert (=> b!2251044 d!667973))

(declare-fun d!667975 () Bool)

(declare-fun lt!836852 () Bool)

(assert (=> d!667975 (= lt!836852 (select (content!3556 rules!1750) otherR!12))))

(declare-fun e!1440761 () Bool)

(assert (=> d!667975 (= lt!836852 e!1440761)))

(declare-fun res!962088 () Bool)

(assert (=> d!667975 (=> (not res!962088) (not e!1440761))))

(assert (=> d!667975 (= res!962088 ((_ is Cons!26666) rules!1750))))

(assert (=> d!667975 (= (contains!4577 rules!1750 otherR!12) lt!836852)))

(declare-fun b!2251511 () Bool)

(declare-fun e!1440760 () Bool)

(assert (=> b!2251511 (= e!1440761 e!1440760)))

(declare-fun res!962087 () Bool)

(assert (=> b!2251511 (=> res!962087 e!1440760)))

(assert (=> b!2251511 (= res!962087 (= (h!32067 rules!1750) otherR!12))))

(declare-fun b!2251512 () Bool)

(assert (=> b!2251512 (= e!1440760 (contains!4577 (t!200822 rules!1750) otherR!12))))

(assert (= (and d!667975 res!962088) b!2251511))

(assert (= (and b!2251511 (not res!962087)) b!2251512))

(assert (=> d!667975 m!2681925))

(declare-fun m!2682293 () Bool)

(assert (=> d!667975 m!2682293))

(declare-fun m!2682295 () Bool)

(assert (=> b!2251512 m!2682295))

(assert (=> b!2251055 d!667975))

(declare-fun d!667977 () Bool)

(assert (=> d!667977 (= (isEmpty!15037 rules!1750) ((_ is Nil!26666) rules!1750))))

(assert (=> b!2251074 d!667977))

(declare-fun d!667979 () Bool)

(declare-fun res!962091 () Bool)

(declare-fun e!1440764 () Bool)

(assert (=> d!667979 (=> (not res!962091) (not e!1440764))))

(declare-fun rulesValid!1552 (LexerInterface!3824 List!26760) Bool)

(assert (=> d!667979 (= res!962091 (rulesValid!1552 thiss!16613 rules!1750))))

(assert (=> d!667979 (= (rulesInvariant!3326 thiss!16613 rules!1750) e!1440764)))

(declare-fun b!2251515 () Bool)

(declare-datatypes ((List!26762 0))(
  ( (Nil!26668) (Cons!26668 (h!32069 String!29049) (t!200872 List!26762)) )
))
(declare-fun noDuplicateTag!1550 (LexerInterface!3824 List!26760 List!26762) Bool)

(assert (=> b!2251515 (= e!1440764 (noDuplicateTag!1550 thiss!16613 rules!1750 Nil!26668))))

(assert (= (and d!667979 res!962091) b!2251515))

(declare-fun m!2682297 () Bool)

(assert (=> d!667979 m!2682297))

(declare-fun m!2682299 () Bool)

(assert (=> b!2251515 m!2682299))

(assert (=> b!2251053 d!667979))

(declare-fun d!667981 () Bool)

(declare-fun res!962096 () Bool)

(declare-fun e!1440767 () Bool)

(assert (=> d!667981 (=> (not res!962096) (not e!1440767))))

(assert (=> d!667981 (= res!962096 (not (isEmpty!15040 (originalCharacters!4997 (h!32066 tokens!456)))))))

(assert (=> d!667981 (= (inv!36199 (h!32066 tokens!456)) e!1440767)))

(declare-fun b!2251520 () Bool)

(declare-fun res!962097 () Bool)

(assert (=> b!2251520 (=> (not res!962097) (not e!1440767))))

(assert (=> b!2251520 (= res!962097 (= (originalCharacters!4997 (h!32066 tokens!456)) (list!10233 (dynLambda!11593 (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456)))) (value!134289 (h!32066 tokens!456))))))))

(declare-fun b!2251521 () Bool)

(assert (=> b!2251521 (= e!1440767 (= (size!20867 (h!32066 tokens!456)) (size!20866 (originalCharacters!4997 (h!32066 tokens!456)))))))

(assert (= (and d!667981 res!962096) b!2251520))

(assert (= (and b!2251520 res!962097) b!2251521))

(declare-fun b_lambda!71955 () Bool)

(assert (=> (not b_lambda!71955) (not b!2251520)))

(assert (=> b!2251520 t!200857))

(declare-fun b_and!176377 () Bool)

(assert (= b_and!176369 (and (=> t!200857 result!162654) b_and!176377)))

(assert (=> b!2251520 t!200859))

(declare-fun b_and!176379 () Bool)

(assert (= b_and!176371 (and (=> t!200859 result!162656) b_and!176379)))

(assert (=> b!2251520 t!200861))

(declare-fun b_and!176381 () Bool)

(assert (= b_and!176373 (and (=> t!200861 result!162658) b_and!176381)))

(assert (=> b!2251520 t!200863))

(declare-fun b_and!176383 () Bool)

(assert (= b_and!176375 (and (=> t!200863 result!162660) b_and!176383)))

(declare-fun m!2682301 () Bool)

(assert (=> d!667981 m!2682301))

(assert (=> b!2251520 m!2682291))

(assert (=> b!2251520 m!2682291))

(declare-fun m!2682303 () Bool)

(assert (=> b!2251520 m!2682303))

(declare-fun m!2682305 () Bool)

(assert (=> b!2251521 m!2682305))

(assert (=> b!2251064 d!667981))

(declare-fun b!2251534 () Bool)

(declare-fun e!1440770 () Bool)

(declare-fun tp!711263 () Bool)

(assert (=> b!2251534 (= e!1440770 tp!711263)))

(assert (=> b!2251052 (= tp!711174 e!1440770)))

(declare-fun b!2251535 () Bool)

(declare-fun tp!711265 () Bool)

(declare-fun tp!711262 () Bool)

(assert (=> b!2251535 (= e!1440770 (and tp!711265 tp!711262))))

(declare-fun b!2251533 () Bool)

(declare-fun tp!711261 () Bool)

(declare-fun tp!711264 () Bool)

(assert (=> b!2251533 (= e!1440770 (and tp!711261 tp!711264))))

(declare-fun b!2251532 () Bool)

(assert (=> b!2251532 (= e!1440770 tp_is_empty!10371)))

(assert (= (and b!2251052 ((_ is ElementMatch!6575) (regex!4227 otherR!12))) b!2251532))

(assert (= (and b!2251052 ((_ is Concat!10965) (regex!4227 otherR!12))) b!2251533))

(assert (= (and b!2251052 ((_ is Star!6575) (regex!4227 otherR!12))) b!2251534))

(assert (= (and b!2251052 ((_ is Union!6575) (regex!4227 otherR!12))) b!2251535))

(declare-fun b!2251538 () Bool)

(declare-fun e!1440771 () Bool)

(declare-fun tp!711268 () Bool)

(assert (=> b!2251538 (= e!1440771 tp!711268)))

(assert (=> b!2251050 (= tp!711165 e!1440771)))

(declare-fun b!2251539 () Bool)

(declare-fun tp!711270 () Bool)

(declare-fun tp!711267 () Bool)

(assert (=> b!2251539 (= e!1440771 (and tp!711270 tp!711267))))

(declare-fun b!2251537 () Bool)

(declare-fun tp!711266 () Bool)

(declare-fun tp!711269 () Bool)

(assert (=> b!2251537 (= e!1440771 (and tp!711266 tp!711269))))

(declare-fun b!2251536 () Bool)

(assert (=> b!2251536 (= e!1440771 tp_is_empty!10371)))

(assert (= (and b!2251050 ((_ is ElementMatch!6575) (regex!4227 (h!32067 rules!1750)))) b!2251536))

(assert (= (and b!2251050 ((_ is Concat!10965) (regex!4227 (h!32067 rules!1750)))) b!2251537))

(assert (= (and b!2251050 ((_ is Star!6575) (regex!4227 (h!32067 rules!1750)))) b!2251538))

(assert (= (and b!2251050 ((_ is Union!6575) (regex!4227 (h!32067 rules!1750)))) b!2251539))

(declare-fun b!2251544 () Bool)

(declare-fun e!1440774 () Bool)

(declare-fun tp!711273 () Bool)

(assert (=> b!2251544 (= e!1440774 (and tp_is_empty!10371 tp!711273))))

(assert (=> b!2251070 (= tp!711172 e!1440774)))

(assert (= (and b!2251070 ((_ is Cons!26663) (t!200819 suffix!886))) b!2251544))

(declare-fun b!2251547 () Bool)

(declare-fun e!1440775 () Bool)

(declare-fun tp!711276 () Bool)

(assert (=> b!2251547 (= e!1440775 tp!711276)))

(assert (=> b!2251060 (= tp!711177 e!1440775)))

(declare-fun b!2251548 () Bool)

(declare-fun tp!711278 () Bool)

(declare-fun tp!711275 () Bool)

(assert (=> b!2251548 (= e!1440775 (and tp!711278 tp!711275))))

(declare-fun b!2251546 () Bool)

(declare-fun tp!711274 () Bool)

(declare-fun tp!711277 () Bool)

(assert (=> b!2251546 (= e!1440775 (and tp!711274 tp!711277))))

(declare-fun b!2251545 () Bool)

(assert (=> b!2251545 (= e!1440775 tp_is_empty!10371)))

(assert (= (and b!2251060 ((_ is ElementMatch!6575) (regex!4227 r!2363))) b!2251545))

(assert (= (and b!2251060 ((_ is Concat!10965) (regex!4227 r!2363))) b!2251546))

(assert (= (and b!2251060 ((_ is Star!6575) (regex!4227 r!2363))) b!2251547))

(assert (= (and b!2251060 ((_ is Union!6575) (regex!4227 r!2363))) b!2251548))

(declare-fun b!2251549 () Bool)

(declare-fun e!1440776 () Bool)

(declare-fun tp!711279 () Bool)

(assert (=> b!2251549 (= e!1440776 (and tp_is_empty!10371 tp!711279))))

(assert (=> b!2251058 (= tp!711162 e!1440776)))

(assert (= (and b!2251058 ((_ is Cons!26663) (originalCharacters!4997 (h!32066 tokens!456)))) b!2251549))

(declare-fun b!2251552 () Bool)

(declare-fun e!1440777 () Bool)

(declare-fun tp!711282 () Bool)

(assert (=> b!2251552 (= e!1440777 tp!711282)))

(assert (=> b!2251068 (= tp!711171 e!1440777)))

(declare-fun b!2251553 () Bool)

(declare-fun tp!711284 () Bool)

(declare-fun tp!711281 () Bool)

(assert (=> b!2251553 (= e!1440777 (and tp!711284 tp!711281))))

(declare-fun b!2251551 () Bool)

(declare-fun tp!711280 () Bool)

(declare-fun tp!711283 () Bool)

(assert (=> b!2251551 (= e!1440777 (and tp!711280 tp!711283))))

(declare-fun b!2251550 () Bool)

(assert (=> b!2251550 (= e!1440777 tp_is_empty!10371)))

(assert (= (and b!2251068 ((_ is ElementMatch!6575) (regex!4227 (rule!6529 (h!32066 tokens!456))))) b!2251550))

(assert (= (and b!2251068 ((_ is Concat!10965) (regex!4227 (rule!6529 (h!32066 tokens!456))))) b!2251551))

(assert (= (and b!2251068 ((_ is Star!6575) (regex!4227 (rule!6529 (h!32066 tokens!456))))) b!2251552))

(assert (= (and b!2251068 ((_ is Union!6575) (regex!4227 (rule!6529 (h!32066 tokens!456))))) b!2251553))

(declare-fun b!2251564 () Bool)

(declare-fun b_free!65957 () Bool)

(declare-fun b_next!66661 () Bool)

(assert (=> b!2251564 (= b_free!65957 (not b_next!66661))))

(declare-fun tp!711294 () Bool)

(declare-fun b_and!176385 () Bool)

(assert (=> b!2251564 (= tp!711294 b_and!176385)))

(declare-fun b_free!65959 () Bool)

(declare-fun b_next!66663 () Bool)

(assert (=> b!2251564 (= b_free!65959 (not b_next!66663))))

(declare-fun tb!133431 () Bool)

(declare-fun t!200865 () Bool)

(assert (=> (and b!2251564 (= (toChars!5824 (transformation!4227 (h!32067 (t!200822 rules!1750)))) (toChars!5824 (transformation!4227 (rule!6529 (head!4794 tokens!456))))) t!200865) tb!133431))

(declare-fun result!162668 () Bool)

(assert (= result!162668 result!162620))

(assert (=> d!667847 t!200865))

(declare-fun t!200867 () Bool)

(declare-fun tb!133433 () Bool)

(assert (=> (and b!2251564 (= (toChars!5824 (transformation!4227 (h!32067 (t!200822 rules!1750)))) (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456))))) t!200867) tb!133433))

(declare-fun result!162670 () Bool)

(assert (= result!162670 result!162654))

(assert (=> d!667973 t!200867))

(assert (=> b!2251520 t!200867))

(declare-fun b_and!176387 () Bool)

(declare-fun tp!711293 () Bool)

(assert (=> b!2251564 (= tp!711293 (and (=> t!200865 result!162668) (=> t!200867 result!162670) b_and!176387))))

(declare-fun e!1440787 () Bool)

(assert (=> b!2251564 (= e!1440787 (and tp!711294 tp!711293))))

(declare-fun e!1440788 () Bool)

(declare-fun b!2251563 () Bool)

(declare-fun tp!711296 () Bool)

(assert (=> b!2251563 (= e!1440788 (and tp!711296 (inv!36195 (tag!4717 (h!32067 (t!200822 rules!1750)))) (inv!36198 (transformation!4227 (h!32067 (t!200822 rules!1750)))) e!1440787))))

(declare-fun b!2251562 () Bool)

(declare-fun e!1440786 () Bool)

(declare-fun tp!711295 () Bool)

(assert (=> b!2251562 (= e!1440786 (and e!1440788 tp!711295))))

(assert (=> b!2251047 (= tp!711176 e!1440786)))

(assert (= b!2251563 b!2251564))

(assert (= b!2251562 b!2251563))

(assert (= (and b!2251047 ((_ is Cons!26666) (t!200822 rules!1750))) b!2251562))

(declare-fun m!2682307 () Bool)

(assert (=> b!2251563 m!2682307))

(declare-fun m!2682309 () Bool)

(assert (=> b!2251563 m!2682309))

(declare-fun b!2251565 () Bool)

(declare-fun e!1440790 () Bool)

(declare-fun tp!711297 () Bool)

(assert (=> b!2251565 (= e!1440790 (and tp_is_empty!10371 tp!711297))))

(assert (=> b!2251056 (= tp!711170 e!1440790)))

(assert (= (and b!2251056 ((_ is Cons!26663) (t!200819 otherP!12))) b!2251565))

(declare-fun b!2251566 () Bool)

(declare-fun e!1440791 () Bool)

(declare-fun tp!711298 () Bool)

(assert (=> b!2251566 (= e!1440791 (and tp_is_empty!10371 tp!711298))))

(assert (=> b!2251054 (= tp!711169 e!1440791)))

(assert (= (and b!2251054 ((_ is Cons!26663) (t!200819 input!1722))) b!2251566))

(declare-fun b!2251580 () Bool)

(declare-fun b_free!65961 () Bool)

(declare-fun b_next!66665 () Bool)

(assert (=> b!2251580 (= b_free!65961 (not b_next!66665))))

(declare-fun tp!711310 () Bool)

(declare-fun b_and!176389 () Bool)

(assert (=> b!2251580 (= tp!711310 b_and!176389)))

(declare-fun b_free!65963 () Bool)

(declare-fun b_next!66667 () Bool)

(assert (=> b!2251580 (= b_free!65963 (not b_next!66667))))

(declare-fun t!200869 () Bool)

(declare-fun tb!133435 () Bool)

(assert (=> (and b!2251580 (= (toChars!5824 (transformation!4227 (rule!6529 (h!32066 (t!200821 tokens!456))))) (toChars!5824 (transformation!4227 (rule!6529 (head!4794 tokens!456))))) t!200869) tb!133435))

(declare-fun result!162674 () Bool)

(assert (= result!162674 result!162620))

(assert (=> d!667847 t!200869))

(declare-fun t!200871 () Bool)

(declare-fun tb!133437 () Bool)

(assert (=> (and b!2251580 (= (toChars!5824 (transformation!4227 (rule!6529 (h!32066 (t!200821 tokens!456))))) (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456))))) t!200871) tb!133437))

(declare-fun result!162676 () Bool)

(assert (= result!162676 result!162654))

(assert (=> d!667973 t!200871))

(assert (=> b!2251520 t!200871))

(declare-fun tp!711312 () Bool)

(declare-fun b_and!176391 () Bool)

(assert (=> b!2251580 (= tp!711312 (and (=> t!200869 result!162674) (=> t!200871 result!162676) b_and!176391))))

(declare-fun e!1440804 () Bool)

(assert (=> b!2251580 (= e!1440804 (and tp!711310 tp!711312))))

(declare-fun e!1440809 () Bool)

(assert (=> b!2251064 (= tp!711164 e!1440809)))

(declare-fun e!1440806 () Bool)

(declare-fun b!2251578 () Bool)

(declare-fun tp!711309 () Bool)

(declare-fun e!1440808 () Bool)

(assert (=> b!2251578 (= e!1440808 (and (inv!21 (value!134289 (h!32066 (t!200821 tokens!456)))) e!1440806 tp!711309))))

(declare-fun tp!711313 () Bool)

(declare-fun b!2251577 () Bool)

(assert (=> b!2251577 (= e!1440809 (and (inv!36199 (h!32066 (t!200821 tokens!456))) e!1440808 tp!711313))))

(declare-fun tp!711311 () Bool)

(declare-fun b!2251579 () Bool)

(assert (=> b!2251579 (= e!1440806 (and tp!711311 (inv!36195 (tag!4717 (rule!6529 (h!32066 (t!200821 tokens!456))))) (inv!36198 (transformation!4227 (rule!6529 (h!32066 (t!200821 tokens!456))))) e!1440804))))

(assert (= b!2251579 b!2251580))

(assert (= b!2251578 b!2251579))

(assert (= b!2251577 b!2251578))

(assert (= (and b!2251064 ((_ is Cons!26665) (t!200821 tokens!456))) b!2251577))

(declare-fun m!2682311 () Bool)

(assert (=> b!2251578 m!2682311))

(declare-fun m!2682313 () Bool)

(assert (=> b!2251577 m!2682313))

(declare-fun m!2682315 () Bool)

(assert (=> b!2251579 m!2682315))

(declare-fun m!2682317 () Bool)

(assert (=> b!2251579 m!2682317))

(declare-fun b_lambda!71957 () Bool)

(assert (= b_lambda!71955 (or (and b!2251580 b_free!65963 (= (toChars!5824 (transformation!4227 (rule!6529 (h!32066 (t!200821 tokens!456))))) (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456)))))) (and b!2251043 b_free!65939) (and b!2251071 b_free!65947 (= (toChars!5824 (transformation!4227 (h!32067 rules!1750))) (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456)))))) (and b!2251564 b_free!65959 (= (toChars!5824 (transformation!4227 (h!32067 (t!200822 rules!1750)))) (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456)))))) (and b!2251051 b_free!65935 (= (toChars!5824 (transformation!4227 otherR!12)) (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456)))))) (and b!2251057 b_free!65943 (= (toChars!5824 (transformation!4227 r!2363)) (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456)))))) b_lambda!71957)))

(declare-fun b_lambda!71959 () Bool)

(assert (= b_lambda!71953 (or (and b!2251580 b_free!65963 (= (toChars!5824 (transformation!4227 (rule!6529 (h!32066 (t!200821 tokens!456))))) (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456)))))) (and b!2251043 b_free!65939) (and b!2251071 b_free!65947 (= (toChars!5824 (transformation!4227 (h!32067 rules!1750))) (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456)))))) (and b!2251564 b_free!65959 (= (toChars!5824 (transformation!4227 (h!32067 (t!200822 rules!1750)))) (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456)))))) (and b!2251051 b_free!65935 (= (toChars!5824 (transformation!4227 otherR!12)) (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456)))))) (and b!2251057 b_free!65943 (= (toChars!5824 (transformation!4227 r!2363)) (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456)))))) b_lambda!71959)))

(check-sat (not b!2251544) (not d!667979) (not b!2251101) (not tb!133423) (not d!667941) (not b!2251089) (not b_lambda!71959) (not d!667937) (not b!2251123) (not b!2251548) (not b!2251202) (not b!2251549) (not d!667945) (not b!2251566) (not b!2251491) (not b_next!66647) (not b!2251537) (not b!2251487) (not d!667863) (not b!2251099) (not d!667825) (not tb!133399) (not b!2251521) (not d!667973) (not b!2251381) (not b!2251492) (not b!2251577) (not b!2251380) (not d!667859) (not b!2251578) b_and!176313 (not bm!135578) (not b!2251534) (not b!2251132) (not b!2251515) (not b!2251383) (not bm!135584) b_and!176387 (not d!667819) (not d!667969) (not b!2251205) (not b!2251507) (not b!2251552) (not b!2251098) (not d!667963) (not b!2251535) (not b!2251551) (not b!2251553) (not d!667853) (not b!2251565) b_and!176381 (not b!2251509) (not d!667827) (not b_next!66651) (not b_next!66637) b_and!176317 (not b_next!66641) (not b!2251382) (not d!667875) (not d!667939) b_and!176321 (not b!2251096) (not d!667965) (not b!2251563) (not d!667959) (not d!667847) (not b_next!66645) (not b!2251512) (not b!2251125) (not b!2251562) (not b!2251503) (not b_next!66665) (not b_next!66667) (not b!2251138) (not b!2251201) tp_is_empty!10371 (not d!667833) (not b!2251376) (not b!2251379) b_and!176391 (not b_next!66661) (not b!2251159) (not b!2251489) (not d!667851) (not b_lambda!71957) (not b!2251579) (not b_next!66663) (not b!2251207) (not b!2251206) (not b!2251539) (not b!2251546) b_and!176383 (not d!667845) (not d!667943) (not d!667869) (not b!2251375) b_and!176377 (not b!2251485) b_and!176325 (not b!2251538) (not b!2251374) (not b!2251533) (not b!2251087) (not b!2251153) (not b!2251221) (not b_next!66649) (not b!2251088) (not b!2251493) (not b!2251204) (not b!2251510) (not d!667975) (not b_next!66639) (not d!667857) (not d!667855) (not d!667981) (not b!2251486) (not b!2251149) (not b_lambda!71943) (not b!2251377) (not b!2251547) b_and!176389 b_and!176385 (not b!2251504) (not b!2251077) (not b!2251124) (not b!2251520) (not b_next!66643) b_and!176379 (not b!2251100) (not b!2251090))
(check-sat (not b_next!66647) b_and!176313 b_and!176387 b_and!176381 b_and!176321 (not b_next!66645) (not b_next!66663) b_and!176383 b_and!176377 b_and!176325 (not b_next!66649) (not b_next!66639) (not b_next!66651) (not b_next!66637) b_and!176317 (not b_next!66641) (not b_next!66665) (not b_next!66667) b_and!176391 (not b_next!66661) b_and!176389 b_and!176385 (not b_next!66643) b_and!176379)
(get-model)

(declare-fun d!667983 () Bool)

(assert (=> d!667983 (= (list!10233 (_2!15592 lt!836841)) (list!10237 (c!358006 (_2!15592 lt!836841))))))

(declare-fun bs!455084 () Bool)

(assert (= bs!455084 d!667983))

(declare-fun m!2682319 () Bool)

(assert (=> bs!455084 m!2682319))

(assert (=> b!2251489 d!667983))

(declare-fun b!2251591 () Bool)

(declare-fun e!1440817 () tuple2!26166)

(declare-fun lt!836861 () Option!5201)

(declare-fun lt!836860 () tuple2!26166)

(assert (=> b!2251591 (= e!1440817 (tuple2!26167 (Cons!26665 (_1!15591 (v!30220 lt!836861)) (_1!15593 lt!836860)) (_2!15593 lt!836860)))))

(assert (=> b!2251591 (= lt!836860 (lexList!1052 thiss!16613 rules!1750 (_2!15591 (v!30220 lt!836861))))))

(declare-fun b!2251592 () Bool)

(assert (=> b!2251592 (= e!1440817 (tuple2!26167 Nil!26665 (list!10233 (seqFromList!2931 input!1722))))))

(declare-fun d!667985 () Bool)

(declare-fun e!1440816 () Bool)

(assert (=> d!667985 e!1440816))

(declare-fun c!358087 () Bool)

(declare-fun lt!836859 () tuple2!26166)

(declare-fun size!20873 (List!26759) Int)

(assert (=> d!667985 (= c!358087 (> (size!20873 (_1!15593 lt!836859)) 0))))

(assert (=> d!667985 (= lt!836859 e!1440817)))

(declare-fun c!358088 () Bool)

(assert (=> d!667985 (= c!358088 ((_ is Some!5200) lt!836861))))

(assert (=> d!667985 (= lt!836861 (maxPrefix!2112 thiss!16613 rules!1750 (list!10233 (seqFromList!2931 input!1722))))))

(assert (=> d!667985 (= (lexList!1052 thiss!16613 rules!1750 (list!10233 (seqFromList!2931 input!1722))) lt!836859)))

(declare-fun b!2251593 () Bool)

(declare-fun e!1440818 () Bool)

(assert (=> b!2251593 (= e!1440818 (not (isEmpty!15036 (_1!15593 lt!836859))))))

(declare-fun b!2251594 () Bool)

(assert (=> b!2251594 (= e!1440816 e!1440818)))

(declare-fun res!962106 () Bool)

(assert (=> b!2251594 (= res!962106 (< (size!20866 (_2!15593 lt!836859)) (size!20866 (list!10233 (seqFromList!2931 input!1722)))))))

(assert (=> b!2251594 (=> (not res!962106) (not e!1440818))))

(declare-fun b!2251595 () Bool)

(assert (=> b!2251595 (= e!1440816 (= (_2!15593 lt!836859) (list!10233 (seqFromList!2931 input!1722))))))

(assert (= (and d!667985 c!358088) b!2251591))

(assert (= (and d!667985 (not c!358088)) b!2251592))

(assert (= (and d!667985 c!358087) b!2251594))

(assert (= (and d!667985 (not c!358087)) b!2251595))

(assert (= (and b!2251594 res!962106) b!2251593))

(declare-fun m!2682321 () Bool)

(assert (=> b!2251591 m!2682321))

(declare-fun m!2682323 () Bool)

(assert (=> d!667985 m!2682323))

(assert (=> d!667985 m!2682243))

(declare-fun m!2682325 () Bool)

(assert (=> d!667985 m!2682325))

(declare-fun m!2682327 () Bool)

(assert (=> b!2251593 m!2682327))

(declare-fun m!2682329 () Bool)

(assert (=> b!2251594 m!2682329))

(assert (=> b!2251594 m!2682243))

(declare-fun m!2682331 () Bool)

(assert (=> b!2251594 m!2682331))

(assert (=> b!2251489 d!667985))

(declare-fun d!667987 () Bool)

(assert (=> d!667987 (= (list!10233 (seqFromList!2931 input!1722)) (list!10237 (c!358006 (seqFromList!2931 input!1722))))))

(declare-fun bs!455085 () Bool)

(assert (= bs!455085 d!667987))

(declare-fun m!2682333 () Bool)

(assert (=> bs!455085 m!2682333))

(assert (=> b!2251489 d!667987))

(declare-fun d!667989 () Bool)

(assert (=> d!667989 (= (head!4796 lt!836736) (h!32064 lt!836736))))

(assert (=> b!2251098 d!667989))

(declare-fun d!667991 () Bool)

(assert (=> d!667991 (= (head!4796 input!1722) (h!32064 input!1722))))

(assert (=> b!2251098 d!667991))

(declare-fun bm!135588 () Bool)

(declare-fun call!135593 () Option!5201)

(assert (=> bm!135588 (= call!135593 (maxPrefixOneRule!1313 thiss!16613 (h!32067 (t!200822 rules!1750)) input!1722))))

(declare-fun b!2251596 () Bool)

(declare-fun res!962112 () Bool)

(declare-fun e!1440819 () Bool)

(assert (=> b!2251596 (=> (not res!962112) (not e!1440819))))

(declare-fun lt!836864 () Option!5201)

(assert (=> b!2251596 (= res!962112 (= (++!6495 (list!10233 (charsOf!2615 (_1!15591 (get!8048 lt!836864)))) (_2!15591 (get!8048 lt!836864))) input!1722))))

(declare-fun d!667993 () Bool)

(declare-fun e!1440820 () Bool)

(assert (=> d!667993 e!1440820))

(declare-fun res!962111 () Bool)

(assert (=> d!667993 (=> res!962111 e!1440820)))

(assert (=> d!667993 (= res!962111 (isEmpty!15041 lt!836864))))

(declare-fun e!1440821 () Option!5201)

(assert (=> d!667993 (= lt!836864 e!1440821)))

(declare-fun c!358089 () Bool)

(assert (=> d!667993 (= c!358089 (and ((_ is Cons!26666) (t!200822 rules!1750)) ((_ is Nil!26666) (t!200822 (t!200822 rules!1750)))))))

(declare-fun lt!836865 () Unit!39604)

(declare-fun lt!836862 () Unit!39604)

(assert (=> d!667993 (= lt!836865 lt!836862)))

(assert (=> d!667993 (isPrefix!2217 input!1722 input!1722)))

(assert (=> d!667993 (= lt!836862 (lemmaIsPrefixRefl!1432 input!1722 input!1722))))

(assert (=> d!667993 (rulesValidInductive!1476 thiss!16613 (t!200822 rules!1750))))

(assert (=> d!667993 (= (maxPrefix!2112 thiss!16613 (t!200822 rules!1750) input!1722) lt!836864)))

(declare-fun b!2251597 () Bool)

(declare-fun res!962110 () Bool)

(assert (=> b!2251597 (=> (not res!962110) (not e!1440819))))

(assert (=> b!2251597 (= res!962110 (= (value!134289 (_1!15591 (get!8048 lt!836864))) (apply!6550 (transformation!4227 (rule!6529 (_1!15591 (get!8048 lt!836864)))) (seqFromList!2931 (originalCharacters!4997 (_1!15591 (get!8048 lt!836864)))))))))

(declare-fun b!2251598 () Bool)

(declare-fun res!962108 () Bool)

(assert (=> b!2251598 (=> (not res!962108) (not e!1440819))))

(assert (=> b!2251598 (= res!962108 (< (size!20866 (_2!15591 (get!8048 lt!836864))) (size!20866 input!1722)))))

(declare-fun b!2251599 () Bool)

(assert (=> b!2251599 (= e!1440819 (contains!4577 (t!200822 rules!1750) (rule!6529 (_1!15591 (get!8048 lt!836864)))))))

(declare-fun b!2251600 () Bool)

(assert (=> b!2251600 (= e!1440821 call!135593)))

(declare-fun b!2251601 () Bool)

(declare-fun res!962109 () Bool)

(assert (=> b!2251601 (=> (not res!962109) (not e!1440819))))

(assert (=> b!2251601 (= res!962109 (= (list!10233 (charsOf!2615 (_1!15591 (get!8048 lt!836864)))) (originalCharacters!4997 (_1!15591 (get!8048 lt!836864)))))))

(declare-fun b!2251602 () Bool)

(declare-fun lt!836866 () Option!5201)

(declare-fun lt!836863 () Option!5201)

(assert (=> b!2251602 (= e!1440821 (ite (and ((_ is None!5200) lt!836866) ((_ is None!5200) lt!836863)) None!5200 (ite ((_ is None!5200) lt!836863) lt!836866 (ite ((_ is None!5200) lt!836866) lt!836863 (ite (>= (size!20867 (_1!15591 (v!30220 lt!836866))) (size!20867 (_1!15591 (v!30220 lt!836863)))) lt!836866 lt!836863)))))))

(assert (=> b!2251602 (= lt!836866 call!135593)))

(assert (=> b!2251602 (= lt!836863 (maxPrefix!2112 thiss!16613 (t!200822 (t!200822 rules!1750)) input!1722))))

(declare-fun b!2251603 () Bool)

(assert (=> b!2251603 (= e!1440820 e!1440819)))

(declare-fun res!962113 () Bool)

(assert (=> b!2251603 (=> (not res!962113) (not e!1440819))))

(assert (=> b!2251603 (= res!962113 (isDefined!4185 lt!836864))))

(declare-fun b!2251604 () Bool)

(declare-fun res!962107 () Bool)

(assert (=> b!2251604 (=> (not res!962107) (not e!1440819))))

(assert (=> b!2251604 (= res!962107 (matchR!2836 (regex!4227 (rule!6529 (_1!15591 (get!8048 lt!836864)))) (list!10233 (charsOf!2615 (_1!15591 (get!8048 lt!836864))))))))

(assert (= (and d!667993 c!358089) b!2251600))

(assert (= (and d!667993 (not c!358089)) b!2251602))

(assert (= (or b!2251600 b!2251602) bm!135588))

(assert (= (and d!667993 (not res!962111)) b!2251603))

(assert (= (and b!2251603 res!962113) b!2251601))

(assert (= (and b!2251601 res!962109) b!2251598))

(assert (= (and b!2251598 res!962108) b!2251596))

(assert (= (and b!2251596 res!962112) b!2251597))

(assert (= (and b!2251597 res!962110) b!2251604))

(assert (= (and b!2251604 res!962107) b!2251599))

(declare-fun m!2682335 () Bool)

(assert (=> b!2251597 m!2682335))

(declare-fun m!2682337 () Bool)

(assert (=> b!2251597 m!2682337))

(assert (=> b!2251597 m!2682337))

(declare-fun m!2682339 () Bool)

(assert (=> b!2251597 m!2682339))

(declare-fun m!2682341 () Bool)

(assert (=> b!2251602 m!2682341))

(assert (=> b!2251604 m!2682335))

(declare-fun m!2682343 () Bool)

(assert (=> b!2251604 m!2682343))

(assert (=> b!2251604 m!2682343))

(declare-fun m!2682345 () Bool)

(assert (=> b!2251604 m!2682345))

(assert (=> b!2251604 m!2682345))

(declare-fun m!2682347 () Bool)

(assert (=> b!2251604 m!2682347))

(assert (=> b!2251598 m!2682335))

(declare-fun m!2682349 () Bool)

(assert (=> b!2251598 m!2682349))

(assert (=> b!2251598 m!2681867))

(assert (=> b!2251596 m!2682335))

(assert (=> b!2251596 m!2682343))

(assert (=> b!2251596 m!2682343))

(assert (=> b!2251596 m!2682345))

(assert (=> b!2251596 m!2682345))

(declare-fun m!2682351 () Bool)

(assert (=> b!2251596 m!2682351))

(declare-fun m!2682353 () Bool)

(assert (=> b!2251603 m!2682353))

(declare-fun m!2682355 () Bool)

(assert (=> d!667993 m!2682355))

(assert (=> d!667993 m!2682167))

(assert (=> d!667993 m!2682169))

(declare-fun m!2682357 () Bool)

(assert (=> d!667993 m!2682357))

(assert (=> b!2251599 m!2682335))

(declare-fun m!2682359 () Bool)

(assert (=> b!2251599 m!2682359))

(assert (=> b!2251601 m!2682335))

(assert (=> b!2251601 m!2682343))

(assert (=> b!2251601 m!2682343))

(assert (=> b!2251601 m!2682345))

(declare-fun m!2682361 () Bool)

(assert (=> bm!135588 m!2682361))

(assert (=> b!2251380 d!667993))

(declare-fun d!667995 () Bool)

(declare-fun res!962118 () Bool)

(declare-fun e!1440826 () Bool)

(assert (=> d!667995 (=> res!962118 e!1440826)))

(assert (=> d!667995 (= res!962118 ((_ is Nil!26666) rules!1750))))

(assert (=> d!667995 (= (noDuplicateTag!1550 thiss!16613 rules!1750 Nil!26668) e!1440826)))

(declare-fun b!2251609 () Bool)

(declare-fun e!1440827 () Bool)

(assert (=> b!2251609 (= e!1440826 e!1440827)))

(declare-fun res!962119 () Bool)

(assert (=> b!2251609 (=> (not res!962119) (not e!1440827))))

(declare-fun contains!4578 (List!26762 String!29049) Bool)

(assert (=> b!2251609 (= res!962119 (not (contains!4578 Nil!26668 (tag!4717 (h!32067 rules!1750)))))))

(declare-fun b!2251610 () Bool)

(assert (=> b!2251610 (= e!1440827 (noDuplicateTag!1550 thiss!16613 (t!200822 rules!1750) (Cons!26668 (tag!4717 (h!32067 rules!1750)) Nil!26668)))))

(assert (= (and d!667995 (not res!962118)) b!2251609))

(assert (= (and b!2251609 res!962119) b!2251610))

(declare-fun m!2682363 () Bool)

(assert (=> b!2251609 m!2682363))

(declare-fun m!2682365 () Bool)

(assert (=> b!2251610 m!2682365))

(assert (=> b!2251515 d!667995))

(declare-fun d!667997 () Bool)

(declare-fun isBalanced!2654 (Conc!8602) Bool)

(assert (=> d!667997 (= (inv!36203 (dynLambda!11593 (toChars!5824 (transformation!4227 (rule!6529 (head!4794 tokens!456)))) (value!134289 (head!4794 tokens!456)))) (isBalanced!2654 (c!358006 (dynLambda!11593 (toChars!5824 (transformation!4227 (rule!6529 (head!4794 tokens!456)))) (value!134289 (head!4794 tokens!456))))))))

(declare-fun bs!455086 () Bool)

(assert (= bs!455086 d!667997))

(declare-fun m!2682367 () Bool)

(assert (=> bs!455086 m!2682367))

(assert (=> tb!133399 d!667997))

(declare-fun d!667999 () Bool)

(declare-fun e!1440830 () Bool)

(assert (=> d!667999 e!1440830))

(declare-fun res!962121 () Bool)

(assert (=> d!667999 (=> res!962121 e!1440830)))

(declare-fun lt!836867 () Bool)

(assert (=> d!667999 (= res!962121 (not lt!836867))))

(declare-fun e!1440828 () Bool)

(assert (=> d!667999 (= lt!836867 e!1440828)))

(declare-fun res!962122 () Bool)

(assert (=> d!667999 (=> res!962122 e!1440828)))

(assert (=> d!667999 (= res!962122 ((_ is Nil!26663) (tail!3249 lt!836736)))))

(assert (=> d!667999 (= (isPrefix!2217 (tail!3249 lt!836736) (tail!3249 (++!6495 lt!836736 (_2!15591 lt!836738)))) lt!836867)))

(declare-fun b!2251612 () Bool)

(declare-fun res!962120 () Bool)

(declare-fun e!1440829 () Bool)

(assert (=> b!2251612 (=> (not res!962120) (not e!1440829))))

(assert (=> b!2251612 (= res!962120 (= (head!4796 (tail!3249 lt!836736)) (head!4796 (tail!3249 (++!6495 lt!836736 (_2!15591 lt!836738))))))))

(declare-fun b!2251611 () Bool)

(assert (=> b!2251611 (= e!1440828 e!1440829)))

(declare-fun res!962123 () Bool)

(assert (=> b!2251611 (=> (not res!962123) (not e!1440829))))

(assert (=> b!2251611 (= res!962123 (not ((_ is Nil!26663) (tail!3249 (++!6495 lt!836736 (_2!15591 lt!836738))))))))

(declare-fun b!2251614 () Bool)

(assert (=> b!2251614 (= e!1440830 (>= (size!20866 (tail!3249 (++!6495 lt!836736 (_2!15591 lt!836738)))) (size!20866 (tail!3249 lt!836736))))))

(declare-fun b!2251613 () Bool)

(assert (=> b!2251613 (= e!1440829 (isPrefix!2217 (tail!3249 (tail!3249 lt!836736)) (tail!3249 (tail!3249 (++!6495 lt!836736 (_2!15591 lt!836738))))))))

(assert (= (and d!667999 (not res!962122)) b!2251611))

(assert (= (and b!2251611 res!962123) b!2251612))

(assert (= (and b!2251612 res!962120) b!2251613))

(assert (= (and d!667999 (not res!962121)) b!2251614))

(assert (=> b!2251612 m!2681933))

(declare-fun m!2682369 () Bool)

(assert (=> b!2251612 m!2682369))

(assert (=> b!2251612 m!2682261))

(declare-fun m!2682371 () Bool)

(assert (=> b!2251612 m!2682371))

(assert (=> b!2251614 m!2682261))

(declare-fun m!2682373 () Bool)

(assert (=> b!2251614 m!2682373))

(assert (=> b!2251614 m!2681933))

(declare-fun m!2682375 () Bool)

(assert (=> b!2251614 m!2682375))

(assert (=> b!2251613 m!2681933))

(declare-fun m!2682377 () Bool)

(assert (=> b!2251613 m!2682377))

(assert (=> b!2251613 m!2682261))

(declare-fun m!2682379 () Bool)

(assert (=> b!2251613 m!2682379))

(assert (=> b!2251613 m!2682377))

(assert (=> b!2251613 m!2682379))

(declare-fun m!2682381 () Bool)

(assert (=> b!2251613 m!2682381))

(assert (=> b!2251492 d!667999))

(declare-fun d!668001 () Bool)

(assert (=> d!668001 (= (tail!3249 lt!836736) (t!200819 lt!836736))))

(assert (=> b!2251492 d!668001))

(declare-fun d!668003 () Bool)

(assert (=> d!668003 (= (tail!3249 (++!6495 lt!836736 (_2!15591 lt!836738))) (t!200819 (++!6495 lt!836736 (_2!15591 lt!836738))))))

(assert (=> b!2251492 d!668003))

(declare-fun d!668005 () Bool)

(assert (=> d!668005 (= (isEmpty!15040 (tail!3249 (list!10233 (charsOf!2615 (head!4794 tokens!456))))) ((_ is Nil!26663) (tail!3249 (list!10233 (charsOf!2615 (head!4794 tokens!456))))))))

(assert (=> b!2251206 d!668005))

(declare-fun d!668007 () Bool)

(assert (=> d!668007 (= (tail!3249 (list!10233 (charsOf!2615 (head!4794 tokens!456)))) (t!200819 (list!10233 (charsOf!2615 (head!4794 tokens!456)))))))

(assert (=> b!2251206 d!668007))

(declare-fun d!668009 () Bool)

(declare-fun c!358092 () Bool)

(assert (=> d!668009 (= c!358092 ((_ is Node!8602) (c!358006 (dynLambda!11593 (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456)))) (value!134289 (h!32066 tokens!456))))))))

(declare-fun e!1440835 () Bool)

(assert (=> d!668009 (= (inv!36202 (c!358006 (dynLambda!11593 (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456)))) (value!134289 (h!32066 tokens!456))))) e!1440835)))

(declare-fun b!2251621 () Bool)

(declare-fun inv!36204 (Conc!8602) Bool)

(assert (=> b!2251621 (= e!1440835 (inv!36204 (c!358006 (dynLambda!11593 (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456)))) (value!134289 (h!32066 tokens!456))))))))

(declare-fun b!2251622 () Bool)

(declare-fun e!1440836 () Bool)

(assert (=> b!2251622 (= e!1440835 e!1440836)))

(declare-fun res!962126 () Bool)

(assert (=> b!2251622 (= res!962126 (not ((_ is Leaf!12701) (c!358006 (dynLambda!11593 (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456)))) (value!134289 (h!32066 tokens!456)))))))))

(assert (=> b!2251622 (=> res!962126 e!1440836)))

(declare-fun b!2251623 () Bool)

(declare-fun inv!36205 (Conc!8602) Bool)

(assert (=> b!2251623 (= e!1440836 (inv!36205 (c!358006 (dynLambda!11593 (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456)))) (value!134289 (h!32066 tokens!456))))))))

(assert (= (and d!668009 c!358092) b!2251621))

(assert (= (and d!668009 (not c!358092)) b!2251622))

(assert (= (and b!2251622 (not res!962126)) b!2251623))

(declare-fun m!2682383 () Bool)

(assert (=> b!2251621 m!2682383))

(declare-fun m!2682385 () Bool)

(assert (=> b!2251623 m!2682385))

(assert (=> b!2251510 d!668009))

(declare-fun d!668011 () Bool)

(declare-fun lt!836868 () Int)

(assert (=> d!668011 (>= lt!836868 0)))

(declare-fun e!1440837 () Int)

(assert (=> d!668011 (= lt!836868 e!1440837)))

(declare-fun c!358093 () Bool)

(assert (=> d!668011 (= c!358093 ((_ is Nil!26663) lt!836845))))

(assert (=> d!668011 (= (size!20866 lt!836845) lt!836868)))

(declare-fun b!2251624 () Bool)

(assert (=> b!2251624 (= e!1440837 0)))

(declare-fun b!2251625 () Bool)

(assert (=> b!2251625 (= e!1440837 (+ 1 (size!20866 (t!200819 lt!836845))))))

(assert (= (and d!668011 c!358093) b!2251624))

(assert (= (and d!668011 (not c!358093)) b!2251625))

(declare-fun m!2682387 () Bool)

(assert (=> b!2251625 m!2682387))

(assert (=> b!2251504 d!668011))

(assert (=> b!2251504 d!667971))

(declare-fun d!668013 () Bool)

(declare-fun lt!836869 () Int)

(assert (=> d!668013 (>= lt!836869 0)))

(declare-fun e!1440838 () Int)

(assert (=> d!668013 (= lt!836869 e!1440838)))

(declare-fun c!358094 () Bool)

(assert (=> d!668013 (= c!358094 ((_ is Nil!26663) (_2!15591 lt!836738)))))

(assert (=> d!668013 (= (size!20866 (_2!15591 lt!836738)) lt!836869)))

(declare-fun b!2251626 () Bool)

(assert (=> b!2251626 (= e!1440838 0)))

(declare-fun b!2251627 () Bool)

(assert (=> b!2251627 (= e!1440838 (+ 1 (size!20866 (t!200819 (_2!15591 lt!836738)))))))

(assert (= (and d!668013 c!358094) b!2251626))

(assert (= (and d!668013 (not c!358094)) b!2251627))

(declare-fun m!2682389 () Bool)

(assert (=> b!2251627 m!2682389))

(assert (=> b!2251504 d!668013))

(declare-fun d!668015 () Bool)

(declare-fun lt!836870 () Int)

(assert (=> d!668015 (= lt!836870 (size!20866 (list!10233 (_2!15592 lt!836841))))))

(assert (=> d!668015 (= lt!836870 (size!20871 (c!358006 (_2!15592 lt!836841))))))

(assert (=> d!668015 (= (size!20868 (_2!15592 lt!836841)) lt!836870)))

(declare-fun bs!455087 () Bool)

(assert (= bs!455087 d!668015))

(assert (=> bs!455087 m!2682241))

(assert (=> bs!455087 m!2682241))

(declare-fun m!2682391 () Bool)

(assert (=> bs!455087 m!2682391))

(declare-fun m!2682393 () Bool)

(assert (=> bs!455087 m!2682393))

(assert (=> b!2251487 d!668015))

(declare-fun d!668017 () Bool)

(declare-fun lt!836871 () Int)

(assert (=> d!668017 (= lt!836871 (size!20866 (list!10233 (seqFromList!2931 input!1722))))))

(assert (=> d!668017 (= lt!836871 (size!20871 (c!358006 (seqFromList!2931 input!1722))))))

(assert (=> d!668017 (= (size!20868 (seqFromList!2931 input!1722)) lt!836871)))

(declare-fun bs!455088 () Bool)

(assert (= bs!455088 d!668017))

(assert (=> bs!455088 m!2681827))

(assert (=> bs!455088 m!2682243))

(assert (=> bs!455088 m!2682243))

(assert (=> bs!455088 m!2682331))

(declare-fun m!2682395 () Bool)

(assert (=> bs!455088 m!2682395))

(assert (=> b!2251487 d!668017))

(assert (=> d!667939 d!667937))

(declare-fun d!668019 () Bool)

(assert (=> d!668019 (ruleValid!1319 thiss!16613 r!2363)))

(assert (=> d!668019 true))

(declare-fun _$65!1044 () Unit!39604)

(assert (=> d!668019 (= (choose!13172 thiss!16613 r!2363 rules!1750) _$65!1044)))

(declare-fun bs!455089 () Bool)

(assert (= bs!455089 d!668019))

(assert (=> bs!455089 m!2681881))

(assert (=> d!667939 d!668019))

(assert (=> d!667939 d!667827))

(declare-fun d!668021 () Bool)

(declare-fun lt!836872 () Int)

(assert (=> d!668021 (>= lt!836872 0)))

(declare-fun e!1440839 () Int)

(assert (=> d!668021 (= lt!836872 e!1440839)))

(declare-fun c!358095 () Bool)

(assert (=> d!668021 (= c!358095 ((_ is Nil!26663) (t!200819 otherP!12)))))

(assert (=> d!668021 (= (size!20866 (t!200819 otherP!12)) lt!836872)))

(declare-fun b!2251628 () Bool)

(assert (=> b!2251628 (= e!1440839 0)))

(declare-fun b!2251629 () Bool)

(assert (=> b!2251629 (= e!1440839 (+ 1 (size!20866 (t!200819 (t!200819 otherP!12)))))))

(assert (= (and d!668021 c!358095) b!2251628))

(assert (= (and d!668021 (not c!358095)) b!2251629))

(declare-fun m!2682397 () Bool)

(assert (=> b!2251629 m!2682397))

(assert (=> b!2251138 d!668021))

(declare-fun d!668023 () Bool)

(declare-fun charsToInt!0 (List!26758) (_ BitVec 32))

(assert (=> d!668023 (= (inv!16 (value!134289 (h!32066 tokens!456))) (= (charsToInt!0 (text!31170 (value!134289 (h!32066 tokens!456)))) (value!134280 (value!134289 (h!32066 tokens!456)))))))

(declare-fun bs!455090 () Bool)

(assert (= bs!455090 d!668023))

(declare-fun m!2682399 () Bool)

(assert (=> bs!455090 m!2682399))

(assert (=> b!2251124 d!668023))

(declare-fun d!668025 () Bool)

(assert (=> d!668025 (= (isEmpty!15040 (originalCharacters!4997 (h!32066 tokens!456))) ((_ is Nil!26663) (originalCharacters!4997 (h!32066 tokens!456))))))

(assert (=> d!667981 d!668025))

(declare-fun d!668027 () Bool)

(assert (=> d!668027 true))

(declare-fun lambda!85228 () Int)

(declare-fun order!14917 () Int)

(declare-fun order!14919 () Int)

(declare-fun dynLambda!11594 (Int Int) Int)

(declare-fun dynLambda!11595 (Int Int) Int)

(assert (=> d!668027 (< (dynLambda!11594 order!14917 (toChars!5824 (transformation!4227 (h!32067 rules!1750)))) (dynLambda!11595 order!14919 lambda!85228))))

(assert (=> d!668027 true))

(declare-fun order!14921 () Int)

(declare-fun dynLambda!11596 (Int Int) Int)

(assert (=> d!668027 (< (dynLambda!11596 order!14921 (toValue!5965 (transformation!4227 (h!32067 rules!1750)))) (dynLambda!11595 order!14919 lambda!85228))))

(declare-fun Forall!1064 (Int) Bool)

(assert (=> d!668027 (= (semiInverseModEq!1707 (toChars!5824 (transformation!4227 (h!32067 rules!1750))) (toValue!5965 (transformation!4227 (h!32067 rules!1750)))) (Forall!1064 lambda!85228))))

(declare-fun bs!455092 () Bool)

(assert (= bs!455092 d!668027))

(declare-fun m!2682411 () Bool)

(assert (=> bs!455092 m!2682411))

(assert (=> d!667825 d!668027))

(declare-fun b!2251635 () Bool)

(declare-fun e!1440846 () Bool)

(declare-fun e!1440842 () Bool)

(assert (=> b!2251635 (= e!1440846 e!1440842)))

(declare-fun res!962134 () Bool)

(assert (=> b!2251635 (=> (not res!962134) (not e!1440842))))

(declare-fun lt!836874 () Bool)

(assert (=> b!2251635 (= res!962134 (not lt!836874))))

(declare-fun d!668039 () Bool)

(declare-fun e!1440844 () Bool)

(assert (=> d!668039 e!1440844))

(declare-fun c!358098 () Bool)

(assert (=> d!668039 (= c!358098 ((_ is EmptyExpr!6575) (regex!4227 (rule!6529 (_1!15591 (get!8048 lt!836819))))))))

(declare-fun e!1440845 () Bool)

(assert (=> d!668039 (= lt!836874 e!1440845)))

(declare-fun c!358096 () Bool)

(assert (=> d!668039 (= c!358096 (isEmpty!15040 (list!10233 (charsOf!2615 (_1!15591 (get!8048 lt!836819))))))))

(assert (=> d!668039 (validRegex!2460 (regex!4227 (rule!6529 (_1!15591 (get!8048 lt!836819)))))))

(assert (=> d!668039 (= (matchR!2836 (regex!4227 (rule!6529 (_1!15591 (get!8048 lt!836819)))) (list!10233 (charsOf!2615 (_1!15591 (get!8048 lt!836819))))) lt!836874)))

(declare-fun b!2251636 () Bool)

(declare-fun e!1440843 () Bool)

(assert (=> b!2251636 (= e!1440842 e!1440843)))

(declare-fun res!962130 () Bool)

(assert (=> b!2251636 (=> res!962130 e!1440843)))

(declare-fun call!135594 () Bool)

(assert (=> b!2251636 (= res!962130 call!135594)))

(declare-fun b!2251637 () Bool)

(declare-fun res!962133 () Bool)

(declare-fun e!1440841 () Bool)

(assert (=> b!2251637 (=> (not res!962133) (not e!1440841))))

(assert (=> b!2251637 (= res!962133 (isEmpty!15040 (tail!3249 (list!10233 (charsOf!2615 (_1!15591 (get!8048 lt!836819)))))))))

(declare-fun b!2251638 () Bool)

(assert (=> b!2251638 (= e!1440845 (nullable!1806 (regex!4227 (rule!6529 (_1!15591 (get!8048 lt!836819))))))))

(declare-fun b!2251639 () Bool)

(assert (=> b!2251639 (= e!1440844 (= lt!836874 call!135594))))

(declare-fun b!2251640 () Bool)

(assert (=> b!2251640 (= e!1440845 (matchR!2836 (derivativeStep!1468 (regex!4227 (rule!6529 (_1!15591 (get!8048 lt!836819)))) (head!4796 (list!10233 (charsOf!2615 (_1!15591 (get!8048 lt!836819)))))) (tail!3249 (list!10233 (charsOf!2615 (_1!15591 (get!8048 lt!836819)))))))))

(declare-fun b!2251641 () Bool)

(assert (=> b!2251641 (= e!1440841 (= (head!4796 (list!10233 (charsOf!2615 (_1!15591 (get!8048 lt!836819))))) (c!358007 (regex!4227 (rule!6529 (_1!15591 (get!8048 lt!836819)))))))))

(declare-fun b!2251642 () Bool)

(declare-fun res!962129 () Bool)

(assert (=> b!2251642 (=> res!962129 e!1440843)))

(assert (=> b!2251642 (= res!962129 (not (isEmpty!15040 (tail!3249 (list!10233 (charsOf!2615 (_1!15591 (get!8048 lt!836819))))))))))

(declare-fun b!2251643 () Bool)

(assert (=> b!2251643 (= e!1440843 (not (= (head!4796 (list!10233 (charsOf!2615 (_1!15591 (get!8048 lt!836819))))) (c!358007 (regex!4227 (rule!6529 (_1!15591 (get!8048 lt!836819))))))))))

(declare-fun b!2251644 () Bool)

(declare-fun res!962131 () Bool)

(assert (=> b!2251644 (=> (not res!962131) (not e!1440841))))

(assert (=> b!2251644 (= res!962131 (not call!135594))))

(declare-fun b!2251645 () Bool)

(declare-fun e!1440847 () Bool)

(assert (=> b!2251645 (= e!1440847 (not lt!836874))))

(declare-fun b!2251646 () Bool)

(assert (=> b!2251646 (= e!1440844 e!1440847)))

(declare-fun c!358097 () Bool)

(assert (=> b!2251646 (= c!358097 ((_ is EmptyLang!6575) (regex!4227 (rule!6529 (_1!15591 (get!8048 lt!836819))))))))

(declare-fun b!2251647 () Bool)

(declare-fun res!962128 () Bool)

(assert (=> b!2251647 (=> res!962128 e!1440846)))

(assert (=> b!2251647 (= res!962128 e!1440841)))

(declare-fun res!962135 () Bool)

(assert (=> b!2251647 (=> (not res!962135) (not e!1440841))))

(assert (=> b!2251647 (= res!962135 lt!836874)))

(declare-fun b!2251648 () Bool)

(declare-fun res!962132 () Bool)

(assert (=> b!2251648 (=> res!962132 e!1440846)))

(assert (=> b!2251648 (= res!962132 (not ((_ is ElementMatch!6575) (regex!4227 (rule!6529 (_1!15591 (get!8048 lt!836819)))))))))

(assert (=> b!2251648 (= e!1440847 e!1440846)))

(declare-fun bm!135589 () Bool)

(assert (=> bm!135589 (= call!135594 (isEmpty!15040 (list!10233 (charsOf!2615 (_1!15591 (get!8048 lt!836819))))))))

(assert (= (and d!668039 c!358096) b!2251638))

(assert (= (and d!668039 (not c!358096)) b!2251640))

(assert (= (and d!668039 c!358098) b!2251639))

(assert (= (and d!668039 (not c!358098)) b!2251646))

(assert (= (and b!2251646 c!358097) b!2251645))

(assert (= (and b!2251646 (not c!358097)) b!2251648))

(assert (= (and b!2251648 (not res!962132)) b!2251647))

(assert (= (and b!2251647 res!962135) b!2251644))

(assert (= (and b!2251644 res!962131) b!2251637))

(assert (= (and b!2251637 res!962133) b!2251641))

(assert (= (and b!2251647 (not res!962128)) b!2251635))

(assert (= (and b!2251635 res!962134) b!2251636))

(assert (= (and b!2251636 (not res!962130)) b!2251642))

(assert (= (and b!2251642 (not res!962129)) b!2251643))

(assert (= (or b!2251639 b!2251636 b!2251644) bm!135589))

(assert (=> b!2251637 m!2682155))

(declare-fun m!2682413 () Bool)

(assert (=> b!2251637 m!2682413))

(assert (=> b!2251637 m!2682413))

(declare-fun m!2682415 () Bool)

(assert (=> b!2251637 m!2682415))

(assert (=> d!668039 m!2682155))

(declare-fun m!2682417 () Bool)

(assert (=> d!668039 m!2682417))

(declare-fun m!2682419 () Bool)

(assert (=> d!668039 m!2682419))

(assert (=> b!2251642 m!2682155))

(assert (=> b!2251642 m!2682413))

(assert (=> b!2251642 m!2682413))

(assert (=> b!2251642 m!2682415))

(assert (=> b!2251643 m!2682155))

(declare-fun m!2682421 () Bool)

(assert (=> b!2251643 m!2682421))

(declare-fun m!2682423 () Bool)

(assert (=> b!2251638 m!2682423))

(assert (=> b!2251640 m!2682155))

(assert (=> b!2251640 m!2682421))

(assert (=> b!2251640 m!2682421))

(declare-fun m!2682425 () Bool)

(assert (=> b!2251640 m!2682425))

(assert (=> b!2251640 m!2682155))

(assert (=> b!2251640 m!2682413))

(assert (=> b!2251640 m!2682425))

(assert (=> b!2251640 m!2682413))

(declare-fun m!2682427 () Bool)

(assert (=> b!2251640 m!2682427))

(assert (=> b!2251641 m!2682155))

(assert (=> b!2251641 m!2682421))

(assert (=> bm!135589 m!2682155))

(assert (=> bm!135589 m!2682417))

(assert (=> b!2251382 d!668039))

(declare-fun d!668041 () Bool)

(assert (=> d!668041 (= (get!8048 lt!836819) (v!30220 lt!836819))))

(assert (=> b!2251382 d!668041))

(declare-fun d!668043 () Bool)

(assert (=> d!668043 (= (list!10233 (charsOf!2615 (_1!15591 (get!8048 lt!836819)))) (list!10237 (c!358006 (charsOf!2615 (_1!15591 (get!8048 lt!836819))))))))

(declare-fun bs!455093 () Bool)

(assert (= bs!455093 d!668043))

(declare-fun m!2682429 () Bool)

(assert (=> bs!455093 m!2682429))

(assert (=> b!2251382 d!668043))

(declare-fun d!668045 () Bool)

(declare-fun lt!836875 () BalanceConc!16932)

(assert (=> d!668045 (= (list!10233 lt!836875) (originalCharacters!4997 (_1!15591 (get!8048 lt!836819))))))

(assert (=> d!668045 (= lt!836875 (dynLambda!11593 (toChars!5824 (transformation!4227 (rule!6529 (_1!15591 (get!8048 lt!836819))))) (value!134289 (_1!15591 (get!8048 lt!836819)))))))

(assert (=> d!668045 (= (charsOf!2615 (_1!15591 (get!8048 lt!836819))) lt!836875)))

(declare-fun b_lambda!71963 () Bool)

(assert (=> (not b_lambda!71963) (not d!668045)))

(declare-fun tb!133451 () Bool)

(declare-fun t!200886 () Bool)

(assert (=> (and b!2251051 (= (toChars!5824 (transformation!4227 otherR!12)) (toChars!5824 (transformation!4227 (rule!6529 (_1!15591 (get!8048 lt!836819)))))) t!200886) tb!133451))

(declare-fun b!2251649 () Bool)

(declare-fun e!1440848 () Bool)

(declare-fun tp!711315 () Bool)

(assert (=> b!2251649 (= e!1440848 (and (inv!36202 (c!358006 (dynLambda!11593 (toChars!5824 (transformation!4227 (rule!6529 (_1!15591 (get!8048 lt!836819))))) (value!134289 (_1!15591 (get!8048 lt!836819)))))) tp!711315))))

(declare-fun result!162690 () Bool)

(assert (=> tb!133451 (= result!162690 (and (inv!36203 (dynLambda!11593 (toChars!5824 (transformation!4227 (rule!6529 (_1!15591 (get!8048 lt!836819))))) (value!134289 (_1!15591 (get!8048 lt!836819))))) e!1440848))))

(assert (= tb!133451 b!2251649))

(declare-fun m!2682431 () Bool)

(assert (=> b!2251649 m!2682431))

(declare-fun m!2682433 () Bool)

(assert (=> tb!133451 m!2682433))

(assert (=> d!668045 t!200886))

(declare-fun b_and!176405 () Bool)

(assert (= b_and!176377 (and (=> t!200886 result!162690) b_and!176405)))

(declare-fun t!200888 () Bool)

(declare-fun tb!133453 () Bool)

(assert (=> (and b!2251071 (= (toChars!5824 (transformation!4227 (h!32067 rules!1750))) (toChars!5824 (transformation!4227 (rule!6529 (_1!15591 (get!8048 lt!836819)))))) t!200888) tb!133453))

(declare-fun result!162692 () Bool)

(assert (= result!162692 result!162690))

(assert (=> d!668045 t!200888))

(declare-fun b_and!176407 () Bool)

(assert (= b_and!176383 (and (=> t!200888 result!162692) b_and!176407)))

(declare-fun t!200890 () Bool)

(declare-fun tb!133455 () Bool)

(assert (=> (and b!2251043 (= (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456)))) (toChars!5824 (transformation!4227 (rule!6529 (_1!15591 (get!8048 lt!836819)))))) t!200890) tb!133455))

(declare-fun result!162694 () Bool)

(assert (= result!162694 result!162690))

(assert (=> d!668045 t!200890))

(declare-fun b_and!176409 () Bool)

(assert (= b_and!176379 (and (=> t!200890 result!162694) b_and!176409)))

(declare-fun t!200892 () Bool)

(declare-fun tb!133457 () Bool)

(assert (=> (and b!2251564 (= (toChars!5824 (transformation!4227 (h!32067 (t!200822 rules!1750)))) (toChars!5824 (transformation!4227 (rule!6529 (_1!15591 (get!8048 lt!836819)))))) t!200892) tb!133457))

(declare-fun result!162696 () Bool)

(assert (= result!162696 result!162690))

(assert (=> d!668045 t!200892))

(declare-fun b_and!176411 () Bool)

(assert (= b_and!176387 (and (=> t!200892 result!162696) b_and!176411)))

(declare-fun t!200894 () Bool)

(declare-fun tb!133459 () Bool)

(assert (=> (and b!2251057 (= (toChars!5824 (transformation!4227 r!2363)) (toChars!5824 (transformation!4227 (rule!6529 (_1!15591 (get!8048 lt!836819)))))) t!200894) tb!133459))

(declare-fun result!162698 () Bool)

(assert (= result!162698 result!162690))

(assert (=> d!668045 t!200894))

(declare-fun b_and!176413 () Bool)

(assert (= b_and!176381 (and (=> t!200894 result!162698) b_and!176413)))

(declare-fun tb!133461 () Bool)

(declare-fun t!200896 () Bool)

(assert (=> (and b!2251580 (= (toChars!5824 (transformation!4227 (rule!6529 (h!32066 (t!200821 tokens!456))))) (toChars!5824 (transformation!4227 (rule!6529 (_1!15591 (get!8048 lt!836819)))))) t!200896) tb!133461))

(declare-fun result!162700 () Bool)

(assert (= result!162700 result!162690))

(assert (=> d!668045 t!200896))

(declare-fun b_and!176415 () Bool)

(assert (= b_and!176391 (and (=> t!200896 result!162700) b_and!176415)))

(declare-fun m!2682435 () Bool)

(assert (=> d!668045 m!2682435))

(declare-fun m!2682437 () Bool)

(assert (=> d!668045 m!2682437))

(assert (=> b!2251382 d!668045))

(declare-fun d!668047 () Bool)

(assert (=> d!668047 (= (list!10233 (dynLambda!11593 (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456)))) (value!134289 (h!32066 tokens!456)))) (list!10237 (c!358006 (dynLambda!11593 (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456)))) (value!134289 (h!32066 tokens!456))))))))

(declare-fun bs!455094 () Bool)

(assert (= bs!455094 d!668047))

(declare-fun m!2682439 () Bool)

(assert (=> bs!455094 m!2682439))

(assert (=> b!2251520 d!668047))

(declare-fun d!668049 () Bool)

(declare-fun lt!836878 () Int)

(assert (=> d!668049 (= lt!836878 (size!20873 (list!10234 (_1!15592 lt!836841))))))

(declare-fun size!20874 (Conc!8603) Int)

(assert (=> d!668049 (= lt!836878 (size!20874 (c!358008 (_1!15592 lt!836841))))))

(assert (=> d!668049 (= (size!20872 (_1!15592 lt!836841)) lt!836878)))

(declare-fun bs!455095 () Bool)

(assert (= bs!455095 d!668049))

(assert (=> bs!455095 m!2682251))

(assert (=> bs!455095 m!2682251))

(declare-fun m!2682441 () Bool)

(assert (=> bs!455095 m!2682441))

(declare-fun m!2682443 () Bool)

(assert (=> bs!455095 m!2682443))

(assert (=> d!667945 d!668049))

(declare-fun b!2251664 () Bool)

(declare-fun e!1440858 () tuple2!26164)

(assert (=> b!2251664 (= e!1440858 (tuple2!26165 (BalanceConc!16935 Empty!8603) (seqFromList!2931 input!1722)))))

(declare-fun b!2251665 () Bool)

(declare-fun e!1440860 () tuple2!26164)

(assert (=> b!2251665 (= e!1440860 (tuple2!26165 (BalanceConc!16935 Empty!8603) (seqFromList!2931 input!1722)))))

(declare-datatypes ((tuple2!26168 0))(
  ( (tuple2!26169 (_1!15594 Token!7932) (_2!15594 BalanceConc!16932)) )
))
(declare-datatypes ((Option!5202 0))(
  ( (None!5201) (Some!5201 (v!30223 tuple2!26168)) )
))
(declare-fun lt!836948 () Option!5202)

(declare-fun b!2251666 () Bool)

(declare-fun lt!836954 () tuple2!26164)

(declare-fun lexRec!514 (LexerInterface!3824 List!26760 BalanceConc!16932) tuple2!26164)

(assert (=> b!2251666 (= lt!836954 (lexRec!514 thiss!16613 rules!1750 (_2!15594 (v!30223 lt!836948))))))

(declare-fun prepend!984 (BalanceConc!16934 Token!7932) BalanceConc!16934)

(assert (=> b!2251666 (= e!1440860 (tuple2!26165 (prepend!984 (_1!15592 lt!836954) (_1!15594 (v!30223 lt!836948))) (_2!15592 lt!836954)))))

(declare-fun d!668051 () Bool)

(declare-fun e!1440857 () Bool)

(assert (=> d!668051 e!1440857))

(declare-fun res!962138 () Bool)

(assert (=> d!668051 (=> (not res!962138) (not e!1440857))))

(declare-fun lt!836979 () tuple2!26164)

(assert (=> d!668051 (= res!962138 (= (list!10234 (_1!15592 lt!836979)) (list!10234 (_1!15592 (lexRec!514 thiss!16613 rules!1750 (seqFromList!2931 input!1722))))))))

(assert (=> d!668051 (= lt!836979 e!1440858)))

(declare-fun c!358105 () Bool)

(declare-fun lt!836963 () Option!5202)

(assert (=> d!668051 (= c!358105 ((_ is Some!5201) lt!836963))))

(declare-fun maxPrefixZipperSequenceV2!384 (LexerInterface!3824 List!26760 BalanceConc!16932 BalanceConc!16932) Option!5202)

(assert (=> d!668051 (= lt!836963 (maxPrefixZipperSequenceV2!384 thiss!16613 rules!1750 (seqFromList!2931 input!1722) (seqFromList!2931 input!1722)))))

(declare-fun lt!836965 () Unit!39604)

(declare-fun lt!836976 () Unit!39604)

(assert (=> d!668051 (= lt!836965 lt!836976)))

(declare-fun lt!836966 () List!26757)

(declare-fun lt!836968 () List!26757)

(declare-fun isSuffix!750 (List!26757 List!26757) Bool)

(assert (=> d!668051 (isSuffix!750 lt!836966 (++!6495 lt!836968 lt!836966))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!444 (List!26757 List!26757) Unit!39604)

(assert (=> d!668051 (= lt!836976 (lemmaConcatTwoListThenFSndIsSuffix!444 lt!836968 lt!836966))))

(assert (=> d!668051 (= lt!836966 (list!10233 (seqFromList!2931 input!1722)))))

(assert (=> d!668051 (= lt!836968 (list!10233 (BalanceConc!16933 Empty!8602)))))

(assert (=> d!668051 (= (lexTailRecV2!727 thiss!16613 rules!1750 (seqFromList!2931 input!1722) (BalanceConc!16933 Empty!8602) (seqFromList!2931 input!1722) (BalanceConc!16935 Empty!8603)) lt!836979)))

(declare-fun b!2251667 () Bool)

(declare-fun e!1440859 () tuple2!26164)

(declare-fun lt!836950 () BalanceConc!16932)

(assert (=> b!2251667 (= e!1440859 (tuple2!26165 (BalanceConc!16935 Empty!8603) lt!836950))))

(declare-fun lt!836955 () Option!5202)

(declare-fun b!2251668 () Bool)

(declare-fun lt!836971 () tuple2!26164)

(assert (=> b!2251668 (= lt!836971 (lexRec!514 thiss!16613 rules!1750 (_2!15594 (v!30223 lt!836955))))))

(assert (=> b!2251668 (= e!1440859 (tuple2!26165 (prepend!984 (_1!15592 lt!836971) (_1!15594 (v!30223 lt!836955))) (_2!15592 lt!836971)))))

(declare-fun b!2251669 () Bool)

(assert (=> b!2251669 (= e!1440857 (= (list!10233 (_2!15592 lt!836979)) (list!10233 (_2!15592 (lexRec!514 thiss!16613 rules!1750 (seqFromList!2931 input!1722))))))))

(declare-fun lt!836964 () BalanceConc!16932)

(declare-fun b!2251670 () Bool)

(declare-fun append!677 (BalanceConc!16934 Token!7932) BalanceConc!16934)

(assert (=> b!2251670 (= e!1440858 (lexTailRecV2!727 thiss!16613 rules!1750 (seqFromList!2931 input!1722) lt!836964 (_2!15594 (v!30223 lt!836963)) (append!677 (BalanceConc!16935 Empty!8603) (_1!15594 (v!30223 lt!836963)))))))

(declare-fun lt!836949 () tuple2!26164)

(assert (=> b!2251670 (= lt!836949 (lexRec!514 thiss!16613 rules!1750 (_2!15594 (v!30223 lt!836963))))))

(declare-fun lt!836977 () List!26757)

(assert (=> b!2251670 (= lt!836977 (list!10233 (BalanceConc!16933 Empty!8602)))))

(declare-fun lt!836969 () List!26757)

(assert (=> b!2251670 (= lt!836969 (list!10233 (charsOf!2615 (_1!15594 (v!30223 lt!836963)))))))

(declare-fun lt!836961 () List!26757)

(assert (=> b!2251670 (= lt!836961 (list!10233 (_2!15594 (v!30223 lt!836963))))))

(declare-fun lt!836978 () Unit!39604)

(declare-fun lemmaConcatAssociativity!1340 (List!26757 List!26757 List!26757) Unit!39604)

(assert (=> b!2251670 (= lt!836978 (lemmaConcatAssociativity!1340 lt!836977 lt!836969 lt!836961))))

(assert (=> b!2251670 (= (++!6495 (++!6495 lt!836977 lt!836969) lt!836961) (++!6495 lt!836977 (++!6495 lt!836969 lt!836961)))))

(declare-fun lt!836956 () Unit!39604)

(assert (=> b!2251670 (= lt!836956 lt!836978)))

(declare-fun maxPrefixZipperSequence!849 (LexerInterface!3824 List!26760 BalanceConc!16932) Option!5202)

(assert (=> b!2251670 (= lt!836948 (maxPrefixZipperSequence!849 thiss!16613 rules!1750 (seqFromList!2931 input!1722)))))

(declare-fun c!358107 () Bool)

(assert (=> b!2251670 (= c!358107 ((_ is Some!5201) lt!836948))))

(assert (=> b!2251670 (= (lexRec!514 thiss!16613 rules!1750 (seqFromList!2931 input!1722)) e!1440860)))

(declare-fun lt!836973 () Unit!39604)

(declare-fun Unit!39606 () Unit!39604)

(assert (=> b!2251670 (= lt!836973 Unit!39606)))

(declare-fun lt!836947 () List!26759)

(assert (=> b!2251670 (= lt!836947 (list!10234 (BalanceConc!16935 Empty!8603)))))

(declare-fun lt!836974 () List!26759)

(assert (=> b!2251670 (= lt!836974 (Cons!26665 (_1!15594 (v!30223 lt!836963)) Nil!26665))))

(declare-fun lt!836952 () List!26759)

(assert (=> b!2251670 (= lt!836952 (list!10234 (_1!15592 lt!836949)))))

(declare-fun lt!836957 () Unit!39604)

(declare-fun lemmaConcatAssociativity!1341 (List!26759 List!26759 List!26759) Unit!39604)

(assert (=> b!2251670 (= lt!836957 (lemmaConcatAssociativity!1341 lt!836947 lt!836974 lt!836952))))

(declare-fun ++!6496 (List!26759 List!26759) List!26759)

(assert (=> b!2251670 (= (++!6496 (++!6496 lt!836947 lt!836974) lt!836952) (++!6496 lt!836947 (++!6496 lt!836974 lt!836952)))))

(declare-fun lt!836953 () Unit!39604)

(assert (=> b!2251670 (= lt!836953 lt!836957)))

(declare-fun lt!836970 () List!26757)

(assert (=> b!2251670 (= lt!836970 (++!6495 (list!10233 (BalanceConc!16933 Empty!8602)) (list!10233 (charsOf!2615 (_1!15594 (v!30223 lt!836963))))))))

(declare-fun lt!836962 () List!26757)

(assert (=> b!2251670 (= lt!836962 (list!10233 (_2!15594 (v!30223 lt!836963))))))

(declare-fun lt!836967 () List!26759)

(assert (=> b!2251670 (= lt!836967 (list!10234 (append!677 (BalanceConc!16935 Empty!8603) (_1!15594 (v!30223 lt!836963)))))))

(declare-fun lt!836951 () Unit!39604)

(declare-fun lemmaLexThenLexPrefix!328 (LexerInterface!3824 List!26760 List!26757 List!26757 List!26759 List!26759 List!26757) Unit!39604)

(assert (=> b!2251670 (= lt!836951 (lemmaLexThenLexPrefix!328 thiss!16613 rules!1750 lt!836970 lt!836962 lt!836967 (list!10234 (_1!15592 lt!836949)) (list!10233 (_2!15592 lt!836949))))))

(assert (=> b!2251670 (= (lexList!1052 thiss!16613 rules!1750 lt!836970) (tuple2!26167 lt!836967 Nil!26663))))

(declare-fun lt!836959 () Unit!39604)

(assert (=> b!2251670 (= lt!836959 lt!836951)))

(declare-fun ++!6497 (BalanceConc!16932 BalanceConc!16932) BalanceConc!16932)

(assert (=> b!2251670 (= lt!836950 (++!6497 (BalanceConc!16933 Empty!8602) (charsOf!2615 (_1!15594 (v!30223 lt!836963)))))))

(assert (=> b!2251670 (= lt!836955 (maxPrefixZipperSequence!849 thiss!16613 rules!1750 lt!836950))))

(declare-fun c!358106 () Bool)

(assert (=> b!2251670 (= c!358106 ((_ is Some!5201) lt!836955))))

(assert (=> b!2251670 (= (lexRec!514 thiss!16613 rules!1750 (++!6497 (BalanceConc!16933 Empty!8602) (charsOf!2615 (_1!15594 (v!30223 lt!836963))))) e!1440859)))

(declare-fun lt!836958 () Unit!39604)

(declare-fun Unit!39607 () Unit!39604)

(assert (=> b!2251670 (= lt!836958 Unit!39607)))

(assert (=> b!2251670 (= lt!836964 (++!6497 (BalanceConc!16933 Empty!8602) (charsOf!2615 (_1!15594 (v!30223 lt!836963)))))))

(declare-fun lt!836980 () List!26757)

(assert (=> b!2251670 (= lt!836980 (list!10233 lt!836964))))

(declare-fun lt!836975 () List!26757)

(assert (=> b!2251670 (= lt!836975 (list!10233 (_2!15594 (v!30223 lt!836963))))))

(declare-fun lt!836960 () Unit!39604)

(assert (=> b!2251670 (= lt!836960 (lemmaConcatTwoListThenFSndIsSuffix!444 lt!836980 lt!836975))))

(assert (=> b!2251670 (isSuffix!750 lt!836975 (++!6495 lt!836980 lt!836975))))

(declare-fun lt!836972 () Unit!39604)

(assert (=> b!2251670 (= lt!836972 lt!836960)))

(assert (= (and d!668051 c!358105) b!2251670))

(assert (= (and d!668051 (not c!358105)) b!2251664))

(assert (= (and b!2251670 c!358107) b!2251666))

(assert (= (and b!2251670 (not c!358107)) b!2251665))

(assert (= (and b!2251670 c!358106) b!2251668))

(assert (= (and b!2251670 (not c!358106)) b!2251667))

(assert (= (and d!668051 res!962138) b!2251669))

(declare-fun m!2682445 () Bool)

(assert (=> d!668051 m!2682445))

(declare-fun m!2682447 () Bool)

(assert (=> d!668051 m!2682447))

(assert (=> d!668051 m!2681827))

(declare-fun m!2682449 () Bool)

(assert (=> d!668051 m!2682449))

(assert (=> d!668051 m!2681827))

(assert (=> d!668051 m!2681827))

(declare-fun m!2682451 () Bool)

(assert (=> d!668051 m!2682451))

(assert (=> d!668051 m!2681827))

(assert (=> d!668051 m!2682243))

(declare-fun m!2682453 () Bool)

(assert (=> d!668051 m!2682453))

(declare-fun m!2682455 () Bool)

(assert (=> d!668051 m!2682455))

(assert (=> d!668051 m!2682445))

(declare-fun m!2682457 () Bool)

(assert (=> d!668051 m!2682457))

(declare-fun m!2682459 () Bool)

(assert (=> d!668051 m!2682459))

(declare-fun m!2682461 () Bool)

(assert (=> b!2251669 m!2682461))

(assert (=> b!2251669 m!2681827))

(assert (=> b!2251669 m!2682449))

(declare-fun m!2682463 () Bool)

(assert (=> b!2251669 m!2682463))

(declare-fun m!2682465 () Bool)

(assert (=> b!2251670 m!2682465))

(declare-fun m!2682467 () Bool)

(assert (=> b!2251670 m!2682467))

(declare-fun m!2682469 () Bool)

(assert (=> b!2251670 m!2682469))

(declare-fun m!2682471 () Bool)

(assert (=> b!2251670 m!2682471))

(declare-fun m!2682473 () Bool)

(assert (=> b!2251670 m!2682473))

(assert (=> b!2251670 m!2681827))

(declare-fun m!2682475 () Bool)

(assert (=> b!2251670 m!2682475))

(assert (=> b!2251670 m!2682471))

(assert (=> b!2251670 m!2682465))

(declare-fun m!2682477 () Bool)

(assert (=> b!2251670 m!2682477))

(declare-fun m!2682479 () Bool)

(assert (=> b!2251670 m!2682479))

(declare-fun m!2682481 () Bool)

(assert (=> b!2251670 m!2682481))

(declare-fun m!2682483 () Bool)

(assert (=> b!2251670 m!2682483))

(declare-fun m!2682485 () Bool)

(assert (=> b!2251670 m!2682485))

(assert (=> b!2251670 m!2682465))

(declare-fun m!2682487 () Bool)

(assert (=> b!2251670 m!2682487))

(declare-fun m!2682489 () Bool)

(assert (=> b!2251670 m!2682489))

(declare-fun m!2682491 () Bool)

(assert (=> b!2251670 m!2682491))

(declare-fun m!2682493 () Bool)

(assert (=> b!2251670 m!2682493))

(assert (=> b!2251670 m!2682481))

(declare-fun m!2682495 () Bool)

(assert (=> b!2251670 m!2682495))

(declare-fun m!2682497 () Bool)

(assert (=> b!2251670 m!2682497))

(assert (=> b!2251670 m!2682489))

(declare-fun m!2682499 () Bool)

(assert (=> b!2251670 m!2682499))

(assert (=> b!2251670 m!2681827))

(assert (=> b!2251670 m!2682449))

(assert (=> b!2251670 m!2681827))

(assert (=> b!2251670 m!2682481))

(declare-fun m!2682501 () Bool)

(assert (=> b!2251670 m!2682501))

(assert (=> b!2251670 m!2682487))

(declare-fun m!2682503 () Bool)

(assert (=> b!2251670 m!2682503))

(declare-fun m!2682505 () Bool)

(assert (=> b!2251670 m!2682505))

(declare-fun m!2682507 () Bool)

(assert (=> b!2251670 m!2682507))

(assert (=> b!2251670 m!2682485))

(declare-fun m!2682509 () Bool)

(assert (=> b!2251670 m!2682509))

(assert (=> b!2251670 m!2682453))

(declare-fun m!2682511 () Bool)

(assert (=> b!2251670 m!2682511))

(declare-fun m!2682513 () Bool)

(assert (=> b!2251670 m!2682513))

(declare-fun m!2682515 () Bool)

(assert (=> b!2251670 m!2682515))

(assert (=> b!2251670 m!2682453))

(assert (=> b!2251670 m!2682467))

(declare-fun m!2682517 () Bool)

(assert (=> b!2251670 m!2682517))

(assert (=> b!2251670 m!2682515))

(declare-fun m!2682519 () Bool)

(assert (=> b!2251670 m!2682519))

(assert (=> b!2251670 m!2682499))

(declare-fun m!2682521 () Bool)

(assert (=> b!2251670 m!2682521))

(assert (=> b!2251670 m!2682491))

(assert (=> b!2251670 m!2682469))

(declare-fun m!2682523 () Bool)

(assert (=> b!2251670 m!2682523))

(declare-fun m!2682525 () Bool)

(assert (=> b!2251670 m!2682525))

(declare-fun m!2682527 () Bool)

(assert (=> b!2251666 m!2682527))

(declare-fun m!2682529 () Bool)

(assert (=> b!2251666 m!2682529))

(declare-fun m!2682531 () Bool)

(assert (=> b!2251668 m!2682531))

(declare-fun m!2682533 () Bool)

(assert (=> b!2251668 m!2682533))

(assert (=> d!667945 d!668051))

(assert (=> b!2251100 d!667967))

(assert (=> b!2251100 d!667971))

(declare-fun d!668053 () Bool)

(declare-fun lt!836981 () Int)

(assert (=> d!668053 (>= lt!836981 0)))

(declare-fun e!1440861 () Int)

(assert (=> d!668053 (= lt!836981 e!1440861)))

(declare-fun c!358108 () Bool)

(assert (=> d!668053 (= c!358108 ((_ is Nil!26663) (t!200819 input!1722)))))

(assert (=> d!668053 (= (size!20866 (t!200819 input!1722)) lt!836981)))

(declare-fun b!2251671 () Bool)

(assert (=> b!2251671 (= e!1440861 0)))

(declare-fun b!2251672 () Bool)

(assert (=> b!2251672 (= e!1440861 (+ 1 (size!20866 (t!200819 (t!200819 input!1722)))))))

(assert (= (and d!668053 c!358108) b!2251671))

(assert (= (and d!668053 (not c!358108)) b!2251672))

(declare-fun m!2682535 () Bool)

(assert (=> b!2251672 m!2682535))

(assert (=> b!2251507 d!668053))

(declare-fun d!668055 () Bool)

(declare-fun e!1440864 () Bool)

(assert (=> d!668055 e!1440864))

(declare-fun res!962140 () Bool)

(assert (=> d!668055 (=> res!962140 e!1440864)))

(declare-fun lt!836982 () Bool)

(assert (=> d!668055 (= res!962140 (not lt!836982))))

(declare-fun e!1440862 () Bool)

(assert (=> d!668055 (= lt!836982 e!1440862)))

(declare-fun res!962141 () Bool)

(assert (=> d!668055 (=> res!962141 e!1440862)))

(assert (=> d!668055 (= res!962141 ((_ is Nil!26663) (tail!3249 otherP!12)))))

(assert (=> d!668055 (= (isPrefix!2217 (tail!3249 otherP!12) (tail!3249 input!1722)) lt!836982)))

(declare-fun b!2251674 () Bool)

(declare-fun res!962139 () Bool)

(declare-fun e!1440863 () Bool)

(assert (=> b!2251674 (=> (not res!962139) (not e!1440863))))

(assert (=> b!2251674 (= res!962139 (= (head!4796 (tail!3249 otherP!12)) (head!4796 (tail!3249 input!1722))))))

(declare-fun b!2251673 () Bool)

(assert (=> b!2251673 (= e!1440862 e!1440863)))

(declare-fun res!962142 () Bool)

(assert (=> b!2251673 (=> (not res!962142) (not e!1440863))))

(assert (=> b!2251673 (= res!962142 (not ((_ is Nil!26663) (tail!3249 input!1722))))))

(declare-fun b!2251676 () Bool)

(assert (=> b!2251676 (= e!1440864 (>= (size!20866 (tail!3249 input!1722)) (size!20866 (tail!3249 otherP!12))))))

(declare-fun b!2251675 () Bool)

(assert (=> b!2251675 (= e!1440863 (isPrefix!2217 (tail!3249 (tail!3249 otherP!12)) (tail!3249 (tail!3249 input!1722))))))

(assert (= (and d!668055 (not res!962141)) b!2251673))

(assert (= (and b!2251673 res!962142) b!2251674))

(assert (= (and b!2251674 res!962139) b!2251675))

(assert (= (and d!668055 (not res!962140)) b!2251676))

(assert (=> b!2251674 m!2681915))

(declare-fun m!2682537 () Bool)

(assert (=> b!2251674 m!2682537))

(assert (=> b!2251674 m!2681917))

(declare-fun m!2682539 () Bool)

(assert (=> b!2251674 m!2682539))

(assert (=> b!2251676 m!2681917))

(declare-fun m!2682541 () Bool)

(assert (=> b!2251676 m!2682541))

(assert (=> b!2251676 m!2681915))

(declare-fun m!2682543 () Bool)

(assert (=> b!2251676 m!2682543))

(assert (=> b!2251675 m!2681915))

(declare-fun m!2682545 () Bool)

(assert (=> b!2251675 m!2682545))

(assert (=> b!2251675 m!2681917))

(declare-fun m!2682547 () Bool)

(assert (=> b!2251675 m!2682547))

(assert (=> b!2251675 m!2682545))

(assert (=> b!2251675 m!2682547))

(declare-fun m!2682549 () Bool)

(assert (=> b!2251675 m!2682549))

(assert (=> b!2251088 d!668055))

(declare-fun d!668057 () Bool)

(assert (=> d!668057 (= (tail!3249 otherP!12) (t!200819 otherP!12))))

(assert (=> b!2251088 d!668057))

(declare-fun d!668059 () Bool)

(assert (=> d!668059 (= (tail!3249 input!1722) (t!200819 input!1722))))

(assert (=> b!2251088 d!668059))

(declare-fun b!2251685 () Bool)

(declare-fun e!1440869 () List!26759)

(assert (=> b!2251685 (= e!1440869 Nil!26665)))

(declare-fun b!2251687 () Bool)

(declare-fun e!1440870 () List!26759)

(declare-fun list!10239 (IArray!17211) List!26759)

(assert (=> b!2251687 (= e!1440870 (list!10239 (xs!11545 (c!358008 (_1!15592 lt!836734)))))))

(declare-fun b!2251688 () Bool)

(assert (=> b!2251688 (= e!1440870 (++!6496 (list!10238 (left!20257 (c!358008 (_1!15592 lt!836734)))) (list!10238 (right!20587 (c!358008 (_1!15592 lt!836734))))))))

(declare-fun d!668061 () Bool)

(declare-fun c!358113 () Bool)

(assert (=> d!668061 (= c!358113 ((_ is Empty!8603) (c!358008 (_1!15592 lt!836734))))))

(assert (=> d!668061 (= (list!10238 (c!358008 (_1!15592 lt!836734))) e!1440869)))

(declare-fun b!2251686 () Bool)

(assert (=> b!2251686 (= e!1440869 e!1440870)))

(declare-fun c!358114 () Bool)

(assert (=> b!2251686 (= c!358114 ((_ is Leaf!12702) (c!358008 (_1!15592 lt!836734))))))

(assert (= (and d!668061 c!358113) b!2251685))

(assert (= (and d!668061 (not c!358113)) b!2251686))

(assert (= (and b!2251686 c!358114) b!2251687))

(assert (= (and b!2251686 (not c!358114)) b!2251688))

(declare-fun m!2682551 () Bool)

(assert (=> b!2251687 m!2682551))

(declare-fun m!2682553 () Bool)

(assert (=> b!2251688 m!2682553))

(declare-fun m!2682555 () Bool)

(assert (=> b!2251688 m!2682555))

(assert (=> b!2251688 m!2682553))

(assert (=> b!2251688 m!2682555))

(declare-fun m!2682557 () Bool)

(assert (=> b!2251688 m!2682557))

(assert (=> d!667941 d!668061))

(declare-fun d!668063 () Bool)

(assert (=> d!668063 true))

(declare-fun lambda!85231 () Int)

(declare-fun order!14923 () Int)

(declare-fun dynLambda!11597 (Int Int) Int)

(assert (=> d!668063 (< (dynLambda!11596 order!14921 (toValue!5965 (transformation!4227 (rule!6529 (h!32066 tokens!456))))) (dynLambda!11597 order!14923 lambda!85231))))

(declare-fun Forall2!681 (Int) Bool)

(assert (=> d!668063 (= (equivClasses!1626 (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456)))) (toValue!5965 (transformation!4227 (rule!6529 (h!32066 tokens!456))))) (Forall2!681 lambda!85231))))

(declare-fun bs!455096 () Bool)

(assert (= bs!455096 d!668063))

(declare-fun m!2682559 () Bool)

(assert (=> bs!455096 m!2682559))

(assert (=> b!2251221 d!668063))

(declare-fun d!668065 () Bool)

(assert (=> d!668065 (= (isEmpty!15040 (list!10233 (charsOf!2615 (head!4794 tokens!456)))) ((_ is Nil!26663) (list!10233 (charsOf!2615 (head!4794 tokens!456)))))))

(assert (=> d!667859 d!668065))

(declare-fun bm!135596 () Bool)

(declare-fun call!135601 () Bool)

(declare-fun c!358120 () Bool)

(assert (=> bm!135596 (= call!135601 (validRegex!2460 (ite c!358120 (regTwo!13663 (regex!4227 r!2363)) (regOne!13662 (regex!4227 r!2363)))))))

(declare-fun c!358119 () Bool)

(declare-fun bm!135597 () Bool)

(declare-fun call!135602 () Bool)

(assert (=> bm!135597 (= call!135602 (validRegex!2460 (ite c!358119 (reg!6904 (regex!4227 r!2363)) (ite c!358120 (regOne!13663 (regex!4227 r!2363)) (regTwo!13662 (regex!4227 r!2363))))))))

(declare-fun b!2251712 () Bool)

(declare-fun res!962157 () Bool)

(declare-fun e!1440890 () Bool)

(assert (=> b!2251712 (=> (not res!962157) (not e!1440890))))

(declare-fun call!135603 () Bool)

(assert (=> b!2251712 (= res!962157 call!135603)))

(declare-fun e!1440891 () Bool)

(assert (=> b!2251712 (= e!1440891 e!1440890)))

(declare-fun b!2251713 () Bool)

(declare-fun e!1440887 () Bool)

(declare-fun e!1440889 () Bool)

(assert (=> b!2251713 (= e!1440887 e!1440889)))

(declare-fun res!962158 () Bool)

(assert (=> b!2251713 (=> (not res!962158) (not e!1440889))))

(assert (=> b!2251713 (= res!962158 call!135601)))

(declare-fun b!2251714 () Bool)

(declare-fun e!1440888 () Bool)

(declare-fun e!1440892 () Bool)

(assert (=> b!2251714 (= e!1440888 e!1440892)))

(assert (=> b!2251714 (= c!358119 ((_ is Star!6575) (regex!4227 r!2363)))))

(declare-fun b!2251715 () Bool)

(assert (=> b!2251715 (= e!1440892 e!1440891)))

(assert (=> b!2251715 (= c!358120 ((_ is Union!6575) (regex!4227 r!2363)))))

(declare-fun bm!135598 () Bool)

(assert (=> bm!135598 (= call!135603 call!135602)))

(declare-fun b!2251716 () Bool)

(declare-fun e!1440893 () Bool)

(assert (=> b!2251716 (= e!1440892 e!1440893)))

(declare-fun res!962155 () Bool)

(assert (=> b!2251716 (= res!962155 (not (nullable!1806 (reg!6904 (regex!4227 r!2363)))))))

(assert (=> b!2251716 (=> (not res!962155) (not e!1440893))))

(declare-fun b!2251717 () Bool)

(assert (=> b!2251717 (= e!1440889 call!135603)))

(declare-fun b!2251718 () Bool)

(assert (=> b!2251718 (= e!1440890 call!135601)))

(declare-fun b!2251719 () Bool)

(assert (=> b!2251719 (= e!1440893 call!135602)))

(declare-fun d!668067 () Bool)

(declare-fun res!962156 () Bool)

(assert (=> d!668067 (=> res!962156 e!1440888)))

(assert (=> d!668067 (= res!962156 ((_ is ElementMatch!6575) (regex!4227 r!2363)))))

(assert (=> d!668067 (= (validRegex!2460 (regex!4227 r!2363)) e!1440888)))

(declare-fun b!2251711 () Bool)

(declare-fun res!962159 () Bool)

(assert (=> b!2251711 (=> res!962159 e!1440887)))

(assert (=> b!2251711 (= res!962159 (not ((_ is Concat!10965) (regex!4227 r!2363))))))

(assert (=> b!2251711 (= e!1440891 e!1440887)))

(assert (= (and d!668067 (not res!962156)) b!2251714))

(assert (= (and b!2251714 c!358119) b!2251716))

(assert (= (and b!2251714 (not c!358119)) b!2251715))

(assert (= (and b!2251716 res!962155) b!2251719))

(assert (= (and b!2251715 c!358120) b!2251712))

(assert (= (and b!2251715 (not c!358120)) b!2251711))

(assert (= (and b!2251712 res!962157) b!2251718))

(assert (= (and b!2251711 (not res!962159)) b!2251713))

(assert (= (and b!2251713 res!962158) b!2251717))

(assert (= (or b!2251712 b!2251717) bm!135598))

(assert (= (or b!2251718 b!2251713) bm!135596))

(assert (= (or b!2251719 bm!135598) bm!135597))

(declare-fun m!2682561 () Bool)

(assert (=> bm!135596 m!2682561))

(declare-fun m!2682563 () Bool)

(assert (=> bm!135597 m!2682563))

(declare-fun m!2682565 () Bool)

(assert (=> b!2251716 m!2682565))

(assert (=> d!667859 d!668067))

(assert (=> d!667851 d!667827))

(declare-fun d!668069 () Bool)

(assert (=> d!668069 true))

(declare-fun lt!836986 () Bool)

(assert (=> d!668069 (= lt!836986 (rulesValidInductive!1476 thiss!16613 rules!1750))))

(declare-fun lambda!85238 () Int)

(declare-fun forall!5467 (List!26760 Int) Bool)

(assert (=> d!668069 (= lt!836986 (forall!5467 rules!1750 lambda!85238))))

(assert (=> d!668069 (= (rulesValid!1552 thiss!16613 rules!1750) lt!836986)))

(declare-fun bs!455101 () Bool)

(assert (= bs!455101 d!668069))

(assert (=> bs!455101 m!2682171))

(declare-fun m!2682581 () Bool)

(assert (=> bs!455101 m!2682581))

(assert (=> d!667979 d!668069))

(declare-fun bs!455102 () Bool)

(declare-fun d!668079 () Bool)

(assert (= bs!455102 (and d!668079 d!668027)))

(declare-fun lambda!85239 () Int)

(assert (=> bs!455102 (= (and (= (toChars!5824 (transformation!4227 otherR!12)) (toChars!5824 (transformation!4227 (h!32067 rules!1750)))) (= (toValue!5965 (transformation!4227 otherR!12)) (toValue!5965 (transformation!4227 (h!32067 rules!1750))))) (= lambda!85239 lambda!85228))))

(assert (=> d!668079 true))

(assert (=> d!668079 (< (dynLambda!11594 order!14917 (toChars!5824 (transformation!4227 otherR!12))) (dynLambda!11595 order!14919 lambda!85239))))

(assert (=> d!668079 true))

(assert (=> d!668079 (< (dynLambda!11596 order!14921 (toValue!5965 (transformation!4227 otherR!12))) (dynLambda!11595 order!14919 lambda!85239))))

(assert (=> d!668079 (= (semiInverseModEq!1707 (toChars!5824 (transformation!4227 otherR!12)) (toValue!5965 (transformation!4227 otherR!12))) (Forall!1064 lambda!85239))))

(declare-fun bs!455103 () Bool)

(assert (= bs!455103 d!668079))

(declare-fun m!2682583 () Bool)

(assert (=> bs!455103 m!2682583))

(assert (=> d!667819 d!668079))

(declare-fun d!668083 () Bool)

(assert (=> d!668083 (= (head!4796 (list!10233 (charsOf!2615 (head!4794 tokens!456)))) (h!32064 (list!10233 (charsOf!2615 (head!4794 tokens!456)))))))

(assert (=> b!2251205 d!668083))

(assert (=> b!2251491 d!667989))

(declare-fun d!668085 () Bool)

(assert (=> d!668085 (= (head!4796 (++!6495 lt!836736 (_2!15591 lt!836738))) (h!32064 (++!6495 lt!836736 (_2!15591 lt!836738))))))

(assert (=> b!2251491 d!668085))

(assert (=> b!2251375 d!668041))

(declare-fun d!668089 () Bool)

(declare-fun dynLambda!11598 (Int BalanceConc!16932) TokenValue!4389)

(assert (=> d!668089 (= (apply!6550 (transformation!4227 (rule!6529 (_1!15591 (get!8048 lt!836819)))) (seqFromList!2931 (originalCharacters!4997 (_1!15591 (get!8048 lt!836819))))) (dynLambda!11598 (toValue!5965 (transformation!4227 (rule!6529 (_1!15591 (get!8048 lt!836819))))) (seqFromList!2931 (originalCharacters!4997 (_1!15591 (get!8048 lt!836819))))))))

(declare-fun b_lambda!71965 () Bool)

(assert (=> (not b_lambda!71965) (not d!668089)))

(declare-fun t!200899 () Bool)

(declare-fun tb!133463 () Bool)

(assert (=> (and b!2251071 (= (toValue!5965 (transformation!4227 (h!32067 rules!1750))) (toValue!5965 (transformation!4227 (rule!6529 (_1!15591 (get!8048 lt!836819)))))) t!200899) tb!133463))

(declare-fun result!162702 () Bool)

(assert (=> tb!133463 (= result!162702 (inv!21 (dynLambda!11598 (toValue!5965 (transformation!4227 (rule!6529 (_1!15591 (get!8048 lt!836819))))) (seqFromList!2931 (originalCharacters!4997 (_1!15591 (get!8048 lt!836819)))))))))

(declare-fun m!2682589 () Bool)

(assert (=> tb!133463 m!2682589))

(assert (=> d!668089 t!200899))

(declare-fun b_and!176417 () Bool)

(assert (= b_and!176325 (and (=> t!200899 result!162702) b_and!176417)))

(declare-fun t!200901 () Bool)

(declare-fun tb!133465 () Bool)

(assert (=> (and b!2251580 (= (toValue!5965 (transformation!4227 (rule!6529 (h!32066 (t!200821 tokens!456))))) (toValue!5965 (transformation!4227 (rule!6529 (_1!15591 (get!8048 lt!836819)))))) t!200901) tb!133465))

(declare-fun result!162706 () Bool)

(assert (= result!162706 result!162702))

(assert (=> d!668089 t!200901))

(declare-fun b_and!176419 () Bool)

(assert (= b_and!176389 (and (=> t!200901 result!162706) b_and!176419)))

(declare-fun t!200903 () Bool)

(declare-fun tb!133467 () Bool)

(assert (=> (and b!2251057 (= (toValue!5965 (transformation!4227 r!2363)) (toValue!5965 (transformation!4227 (rule!6529 (_1!15591 (get!8048 lt!836819)))))) t!200903) tb!133467))

(declare-fun result!162708 () Bool)

(assert (= result!162708 result!162702))

(assert (=> d!668089 t!200903))

(declare-fun b_and!176421 () Bool)

(assert (= b_and!176321 (and (=> t!200903 result!162708) b_and!176421)))

(declare-fun t!200905 () Bool)

(declare-fun tb!133469 () Bool)

(assert (=> (and b!2251564 (= (toValue!5965 (transformation!4227 (h!32067 (t!200822 rules!1750)))) (toValue!5965 (transformation!4227 (rule!6529 (_1!15591 (get!8048 lt!836819)))))) t!200905) tb!133469))

(declare-fun result!162710 () Bool)

(assert (= result!162710 result!162702))

(assert (=> d!668089 t!200905))

(declare-fun b_and!176423 () Bool)

(assert (= b_and!176385 (and (=> t!200905 result!162710) b_and!176423)))

(declare-fun tb!133471 () Bool)

(declare-fun t!200907 () Bool)

(assert (=> (and b!2251043 (= (toValue!5965 (transformation!4227 (rule!6529 (h!32066 tokens!456)))) (toValue!5965 (transformation!4227 (rule!6529 (_1!15591 (get!8048 lt!836819)))))) t!200907) tb!133471))

(declare-fun result!162712 () Bool)

(assert (= result!162712 result!162702))

(assert (=> d!668089 t!200907))

(declare-fun b_and!176425 () Bool)

(assert (= b_and!176317 (and (=> t!200907 result!162712) b_and!176425)))

(declare-fun t!200909 () Bool)

(declare-fun tb!133473 () Bool)

(assert (=> (and b!2251051 (= (toValue!5965 (transformation!4227 otherR!12)) (toValue!5965 (transformation!4227 (rule!6529 (_1!15591 (get!8048 lt!836819)))))) t!200909) tb!133473))

(declare-fun result!162714 () Bool)

(assert (= result!162714 result!162702))

(assert (=> d!668089 t!200909))

(declare-fun b_and!176427 () Bool)

(assert (= b_and!176313 (and (=> t!200909 result!162714) b_and!176427)))

(assert (=> d!668089 m!2682147))

(declare-fun m!2682591 () Bool)

(assert (=> d!668089 m!2682591))

(assert (=> b!2251375 d!668089))

(declare-fun d!668093 () Bool)

(assert (=> d!668093 (= (seqFromList!2931 (originalCharacters!4997 (_1!15591 (get!8048 lt!836819)))) (fromListB!1318 (originalCharacters!4997 (_1!15591 (get!8048 lt!836819)))))))

(declare-fun bs!455105 () Bool)

(assert (= bs!455105 d!668093))

(declare-fun m!2682593 () Bool)

(assert (=> bs!455105 m!2682593))

(assert (=> b!2251375 d!668093))

(assert (=> b!2251201 d!668005))

(assert (=> b!2251201 d!668007))

(declare-fun b!2251753 () Bool)

(declare-fun e!1440912 () List!26757)

(declare-fun e!1440913 () List!26757)

(assert (=> b!2251753 (= e!1440912 e!1440913)))

(declare-fun c!358127 () Bool)

(assert (=> b!2251753 (= c!358127 ((_ is Leaf!12701) (c!358006 (charsOf!2615 (head!4794 tokens!456)))))))

(declare-fun d!668095 () Bool)

(declare-fun c!358126 () Bool)

(assert (=> d!668095 (= c!358126 ((_ is Empty!8602) (c!358006 (charsOf!2615 (head!4794 tokens!456)))))))

(assert (=> d!668095 (= (list!10237 (c!358006 (charsOf!2615 (head!4794 tokens!456)))) e!1440912)))

(declare-fun b!2251755 () Bool)

(assert (=> b!2251755 (= e!1440913 (++!6495 (list!10237 (left!20256 (c!358006 (charsOf!2615 (head!4794 tokens!456))))) (list!10237 (right!20586 (c!358006 (charsOf!2615 (head!4794 tokens!456)))))))))

(declare-fun b!2251754 () Bool)

(declare-fun list!10240 (IArray!17209) List!26757)

(assert (=> b!2251754 (= e!1440913 (list!10240 (xs!11544 (c!358006 (charsOf!2615 (head!4794 tokens!456))))))))

(declare-fun b!2251752 () Bool)

(assert (=> b!2251752 (= e!1440912 Nil!26663)))

(assert (= (and d!668095 c!358126) b!2251752))

(assert (= (and d!668095 (not c!358126)) b!2251753))

(assert (= (and b!2251753 c!358127) b!2251754))

(assert (= (and b!2251753 (not c!358127)) b!2251755))

(declare-fun m!2682597 () Bool)

(assert (=> b!2251755 m!2682597))

(declare-fun m!2682603 () Bool)

(assert (=> b!2251755 m!2682603))

(assert (=> b!2251755 m!2682597))

(assert (=> b!2251755 m!2682603))

(declare-fun m!2682605 () Bool)

(assert (=> b!2251755 m!2682605))

(declare-fun m!2682607 () Bool)

(assert (=> b!2251754 m!2682607))

(assert (=> d!667863 d!668095))

(declare-fun d!668099 () Bool)

(declare-fun c!358129 () Bool)

(assert (=> d!668099 (= c!358129 ((_ is IntegerValue!13167) (value!134289 (h!32066 (t!200821 tokens!456)))))))

(declare-fun e!1440915 () Bool)

(assert (=> d!668099 (= (inv!21 (value!134289 (h!32066 (t!200821 tokens!456)))) e!1440915)))

(declare-fun b!2251756 () Bool)

(declare-fun e!1440914 () Bool)

(assert (=> b!2251756 (= e!1440914 (inv!17 (value!134289 (h!32066 (t!200821 tokens!456)))))))

(declare-fun b!2251757 () Bool)

(assert (=> b!2251757 (= e!1440915 (inv!16 (value!134289 (h!32066 (t!200821 tokens!456)))))))

(declare-fun b!2251758 () Bool)

(declare-fun e!1440916 () Bool)

(assert (=> b!2251758 (= e!1440916 (inv!15 (value!134289 (h!32066 (t!200821 tokens!456)))))))

(declare-fun b!2251759 () Bool)

(assert (=> b!2251759 (= e!1440915 e!1440914)))

(declare-fun c!358128 () Bool)

(assert (=> b!2251759 (= c!358128 ((_ is IntegerValue!13168) (value!134289 (h!32066 (t!200821 tokens!456)))))))

(declare-fun b!2251760 () Bool)

(declare-fun res!962172 () Bool)

(assert (=> b!2251760 (=> res!962172 e!1440916)))

(assert (=> b!2251760 (= res!962172 (not ((_ is IntegerValue!13169) (value!134289 (h!32066 (t!200821 tokens!456))))))))

(assert (=> b!2251760 (= e!1440914 e!1440916)))

(assert (= (and d!668099 c!358129) b!2251757))

(assert (= (and d!668099 (not c!358129)) b!2251759))

(assert (= (and b!2251759 c!358128) b!2251756))

(assert (= (and b!2251759 (not c!358128)) b!2251760))

(assert (= (and b!2251760 (not res!962172)) b!2251758))

(declare-fun m!2682609 () Bool)

(assert (=> b!2251756 m!2682609))

(declare-fun m!2682611 () Bool)

(assert (=> b!2251757 m!2682611))

(declare-fun m!2682613 () Bool)

(assert (=> b!2251758 m!2682613))

(assert (=> b!2251578 d!668099))

(declare-fun b!2251779 () Bool)

(declare-fun res!962188 () Bool)

(declare-fun e!1440927 () Bool)

(assert (=> b!2251779 (=> (not res!962188) (not e!1440927))))

(declare-fun lt!837010 () Option!5201)

(assert (=> b!2251779 (= res!962188 (= (rule!6529 (_1!15591 (get!8048 lt!837010))) (h!32067 rules!1750)))))

(declare-fun b!2251780 () Bool)

(assert (=> b!2251780 (= e!1440927 (= (size!20867 (_1!15591 (get!8048 lt!837010))) (size!20866 (originalCharacters!4997 (_1!15591 (get!8048 lt!837010))))))))

(declare-fun b!2251781 () Bool)

(declare-fun e!1440926 () Option!5201)

(declare-datatypes ((tuple2!26170 0))(
  ( (tuple2!26171 (_1!15595 List!26757) (_2!15595 List!26757)) )
))
(declare-fun lt!837007 () tuple2!26170)

(assert (=> b!2251781 (= e!1440926 (Some!5200 (tuple2!26163 (Token!7933 (apply!6550 (transformation!4227 (h!32067 rules!1750)) (seqFromList!2931 (_1!15595 lt!837007))) (h!32067 rules!1750) (size!20868 (seqFromList!2931 (_1!15595 lt!837007))) (_1!15595 lt!837007)) (_2!15595 lt!837007))))))

(declare-fun lt!837008 () Unit!39604)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!661 (Regex!6575 List!26757) Unit!39604)

(assert (=> b!2251781 (= lt!837008 (longestMatchIsAcceptedByMatchOrIsEmpty!661 (regex!4227 (h!32067 rules!1750)) input!1722))))

(declare-fun res!962190 () Bool)

(declare-fun findLongestMatchInner!688 (Regex!6575 List!26757 Int List!26757 List!26757 Int) tuple2!26170)

(assert (=> b!2251781 (= res!962190 (isEmpty!15040 (_1!15595 (findLongestMatchInner!688 (regex!4227 (h!32067 rules!1750)) Nil!26663 (size!20866 Nil!26663) input!1722 input!1722 (size!20866 input!1722)))))))

(declare-fun e!1440928 () Bool)

(assert (=> b!2251781 (=> res!962190 e!1440928)))

(assert (=> b!2251781 e!1440928))

(declare-fun lt!837009 () Unit!39604)

(assert (=> b!2251781 (= lt!837009 lt!837008)))

(declare-fun lt!837011 () Unit!39604)

(declare-fun lemmaSemiInverse!995 (TokenValueInjection!8318 BalanceConc!16932) Unit!39604)

(assert (=> b!2251781 (= lt!837011 (lemmaSemiInverse!995 (transformation!4227 (h!32067 rules!1750)) (seqFromList!2931 (_1!15595 lt!837007))))))

(declare-fun b!2251782 () Bool)

(assert (=> b!2251782 (= e!1440928 (matchR!2836 (regex!4227 (h!32067 rules!1750)) (_1!15595 (findLongestMatchInner!688 (regex!4227 (h!32067 rules!1750)) Nil!26663 (size!20866 Nil!26663) input!1722 input!1722 (size!20866 input!1722)))))))

(declare-fun b!2251783 () Bool)

(declare-fun res!962189 () Bool)

(assert (=> b!2251783 (=> (not res!962189) (not e!1440927))))

(assert (=> b!2251783 (= res!962189 (= (++!6495 (list!10233 (charsOf!2615 (_1!15591 (get!8048 lt!837010)))) (_2!15591 (get!8048 lt!837010))) input!1722))))

(declare-fun b!2251784 () Bool)

(assert (=> b!2251784 (= e!1440926 None!5200)))

(declare-fun b!2251786 () Bool)

(declare-fun res!962193 () Bool)

(assert (=> b!2251786 (=> (not res!962193) (not e!1440927))))

(assert (=> b!2251786 (= res!962193 (< (size!20866 (_2!15591 (get!8048 lt!837010))) (size!20866 input!1722)))))

(declare-fun b!2251787 () Bool)

(declare-fun res!962191 () Bool)

(assert (=> b!2251787 (=> (not res!962191) (not e!1440927))))

(assert (=> b!2251787 (= res!962191 (= (value!134289 (_1!15591 (get!8048 lt!837010))) (apply!6550 (transformation!4227 (rule!6529 (_1!15591 (get!8048 lt!837010)))) (seqFromList!2931 (originalCharacters!4997 (_1!15591 (get!8048 lt!837010)))))))))

(declare-fun d!668101 () Bool)

(declare-fun e!1440925 () Bool)

(assert (=> d!668101 e!1440925))

(declare-fun res!962192 () Bool)

(assert (=> d!668101 (=> res!962192 e!1440925)))

(assert (=> d!668101 (= res!962192 (isEmpty!15041 lt!837010))))

(assert (=> d!668101 (= lt!837010 e!1440926)))

(declare-fun c!358132 () Bool)

(assert (=> d!668101 (= c!358132 (isEmpty!15040 (_1!15595 lt!837007)))))

(declare-fun findLongestMatch!617 (Regex!6575 List!26757) tuple2!26170)

(assert (=> d!668101 (= lt!837007 (findLongestMatch!617 (regex!4227 (h!32067 rules!1750)) input!1722))))

(assert (=> d!668101 (ruleValid!1319 thiss!16613 (h!32067 rules!1750))))

(assert (=> d!668101 (= (maxPrefixOneRule!1313 thiss!16613 (h!32067 rules!1750) input!1722) lt!837010)))

(declare-fun b!2251785 () Bool)

(assert (=> b!2251785 (= e!1440925 e!1440927)))

(declare-fun res!962187 () Bool)

(assert (=> b!2251785 (=> (not res!962187) (not e!1440927))))

(assert (=> b!2251785 (= res!962187 (matchR!2836 (regex!4227 (h!32067 rules!1750)) (list!10233 (charsOf!2615 (_1!15591 (get!8048 lt!837010))))))))

(assert (= (and d!668101 c!358132) b!2251784))

(assert (= (and d!668101 (not c!358132)) b!2251781))

(assert (= (and b!2251781 (not res!962190)) b!2251782))

(assert (= (and d!668101 (not res!962192)) b!2251785))

(assert (= (and b!2251785 res!962187) b!2251783))

(assert (= (and b!2251783 res!962189) b!2251786))

(assert (= (and b!2251786 res!962193) b!2251779))

(assert (= (and b!2251779 res!962188) b!2251787))

(assert (= (and b!2251787 res!962191) b!2251780))

(declare-fun m!2682619 () Bool)

(assert (=> d!668101 m!2682619))

(declare-fun m!2682621 () Bool)

(assert (=> d!668101 m!2682621))

(declare-fun m!2682623 () Bool)

(assert (=> d!668101 m!2682623))

(declare-fun m!2682625 () Bool)

(assert (=> d!668101 m!2682625))

(declare-fun m!2682627 () Bool)

(assert (=> b!2251779 m!2682627))

(declare-fun m!2682629 () Bool)

(assert (=> b!2251782 m!2682629))

(assert (=> b!2251782 m!2681867))

(assert (=> b!2251782 m!2682629))

(assert (=> b!2251782 m!2681867))

(declare-fun m!2682631 () Bool)

(assert (=> b!2251782 m!2682631))

(declare-fun m!2682633 () Bool)

(assert (=> b!2251782 m!2682633))

(assert (=> b!2251781 m!2682629))

(declare-fun m!2682635 () Bool)

(assert (=> b!2251781 m!2682635))

(declare-fun m!2682637 () Bool)

(assert (=> b!2251781 m!2682637))

(declare-fun m!2682639 () Bool)

(assert (=> b!2251781 m!2682639))

(assert (=> b!2251781 m!2682637))

(declare-fun m!2682641 () Bool)

(assert (=> b!2251781 m!2682641))

(assert (=> b!2251781 m!2682629))

(assert (=> b!2251781 m!2681867))

(assert (=> b!2251781 m!2682631))

(assert (=> b!2251781 m!2682637))

(declare-fun m!2682643 () Bool)

(assert (=> b!2251781 m!2682643))

(assert (=> b!2251781 m!2682637))

(assert (=> b!2251781 m!2681867))

(declare-fun m!2682645 () Bool)

(assert (=> b!2251781 m!2682645))

(assert (=> b!2251783 m!2682627))

(declare-fun m!2682647 () Bool)

(assert (=> b!2251783 m!2682647))

(assert (=> b!2251783 m!2682647))

(declare-fun m!2682649 () Bool)

(assert (=> b!2251783 m!2682649))

(assert (=> b!2251783 m!2682649))

(declare-fun m!2682651 () Bool)

(assert (=> b!2251783 m!2682651))

(assert (=> b!2251786 m!2682627))

(declare-fun m!2682653 () Bool)

(assert (=> b!2251786 m!2682653))

(assert (=> b!2251786 m!2681867))

(assert (=> b!2251787 m!2682627))

(declare-fun m!2682655 () Bool)

(assert (=> b!2251787 m!2682655))

(assert (=> b!2251787 m!2682655))

(declare-fun m!2682657 () Bool)

(assert (=> b!2251787 m!2682657))

(assert (=> b!2251780 m!2682627))

(declare-fun m!2682659 () Bool)

(assert (=> b!2251780 m!2682659))

(assert (=> b!2251785 m!2682627))

(assert (=> b!2251785 m!2682647))

(assert (=> b!2251785 m!2682647))

(assert (=> b!2251785 m!2682649))

(assert (=> b!2251785 m!2682649))

(declare-fun m!2682661 () Bool)

(assert (=> b!2251785 m!2682661))

(assert (=> bm!135584 d!668101))

(declare-fun bs!455107 () Bool)

(declare-fun d!668105 () Bool)

(assert (= bs!455107 (and d!668105 d!668027)))

(declare-fun lambda!85243 () Int)

(assert (=> bs!455107 (= (and (= (toChars!5824 (transformation!4227 r!2363)) (toChars!5824 (transformation!4227 (h!32067 rules!1750)))) (= (toValue!5965 (transformation!4227 r!2363)) (toValue!5965 (transformation!4227 (h!32067 rules!1750))))) (= lambda!85243 lambda!85228))))

(declare-fun bs!455108 () Bool)

(assert (= bs!455108 (and d!668105 d!668079)))

(assert (=> bs!455108 (= (and (= (toChars!5824 (transformation!4227 r!2363)) (toChars!5824 (transformation!4227 otherR!12))) (= (toValue!5965 (transformation!4227 r!2363)) (toValue!5965 (transformation!4227 otherR!12)))) (= lambda!85243 lambda!85239))))

(assert (=> d!668105 true))

(assert (=> d!668105 (< (dynLambda!11594 order!14917 (toChars!5824 (transformation!4227 r!2363))) (dynLambda!11595 order!14919 lambda!85243))))

(assert (=> d!668105 true))

(assert (=> d!668105 (< (dynLambda!11596 order!14921 (toValue!5965 (transformation!4227 r!2363))) (dynLambda!11595 order!14919 lambda!85243))))

(assert (=> d!668105 (= (semiInverseModEq!1707 (toChars!5824 (transformation!4227 r!2363)) (toValue!5965 (transformation!4227 r!2363))) (Forall!1064 lambda!85243))))

(declare-fun bs!455109 () Bool)

(assert (= bs!455109 d!668105))

(declare-fun m!2682663 () Bool)

(assert (=> bs!455109 m!2682663))

(assert (=> d!667833 d!668105))

(declare-fun bm!135599 () Bool)

(declare-fun call!135604 () Bool)

(declare-fun c!358134 () Bool)

(assert (=> bm!135599 (= call!135604 (validRegex!2460 (ite c!358134 (regTwo!13663 (regex!4227 otherR!12)) (regOne!13662 (regex!4227 otherR!12)))))))

(declare-fun bm!135600 () Bool)

(declare-fun c!358133 () Bool)

(declare-fun call!135605 () Bool)

(assert (=> bm!135600 (= call!135605 (validRegex!2460 (ite c!358133 (reg!6904 (regex!4227 otherR!12)) (ite c!358134 (regOne!13663 (regex!4227 otherR!12)) (regTwo!13662 (regex!4227 otherR!12))))))))

(declare-fun b!2251789 () Bool)

(declare-fun res!962196 () Bool)

(declare-fun e!1440932 () Bool)

(assert (=> b!2251789 (=> (not res!962196) (not e!1440932))))

(declare-fun call!135606 () Bool)

(assert (=> b!2251789 (= res!962196 call!135606)))

(declare-fun e!1440933 () Bool)

(assert (=> b!2251789 (= e!1440933 e!1440932)))

(declare-fun b!2251790 () Bool)

(declare-fun e!1440929 () Bool)

(declare-fun e!1440931 () Bool)

(assert (=> b!2251790 (= e!1440929 e!1440931)))

(declare-fun res!962197 () Bool)

(assert (=> b!2251790 (=> (not res!962197) (not e!1440931))))

(assert (=> b!2251790 (= res!962197 call!135604)))

(declare-fun b!2251791 () Bool)

(declare-fun e!1440930 () Bool)

(declare-fun e!1440934 () Bool)

(assert (=> b!2251791 (= e!1440930 e!1440934)))

(assert (=> b!2251791 (= c!358133 ((_ is Star!6575) (regex!4227 otherR!12)))))

(declare-fun b!2251792 () Bool)

(assert (=> b!2251792 (= e!1440934 e!1440933)))

(assert (=> b!2251792 (= c!358134 ((_ is Union!6575) (regex!4227 otherR!12)))))

(declare-fun bm!135601 () Bool)

(assert (=> bm!135601 (= call!135606 call!135605)))

(declare-fun b!2251793 () Bool)

(declare-fun e!1440935 () Bool)

(assert (=> b!2251793 (= e!1440934 e!1440935)))

(declare-fun res!962194 () Bool)

(assert (=> b!2251793 (= res!962194 (not (nullable!1806 (reg!6904 (regex!4227 otherR!12)))))))

(assert (=> b!2251793 (=> (not res!962194) (not e!1440935))))

(declare-fun b!2251794 () Bool)

(assert (=> b!2251794 (= e!1440931 call!135606)))

(declare-fun b!2251795 () Bool)

(assert (=> b!2251795 (= e!1440932 call!135604)))

(declare-fun b!2251796 () Bool)

(assert (=> b!2251796 (= e!1440935 call!135605)))

(declare-fun d!668107 () Bool)

(declare-fun res!962195 () Bool)

(assert (=> d!668107 (=> res!962195 e!1440930)))

(assert (=> d!668107 (= res!962195 ((_ is ElementMatch!6575) (regex!4227 otherR!12)))))

(assert (=> d!668107 (= (validRegex!2460 (regex!4227 otherR!12)) e!1440930)))

(declare-fun b!2251788 () Bool)

(declare-fun res!962198 () Bool)

(assert (=> b!2251788 (=> res!962198 e!1440929)))

(assert (=> b!2251788 (= res!962198 (not ((_ is Concat!10965) (regex!4227 otherR!12))))))

(assert (=> b!2251788 (= e!1440933 e!1440929)))

(assert (= (and d!668107 (not res!962195)) b!2251791))

(assert (= (and b!2251791 c!358133) b!2251793))

(assert (= (and b!2251791 (not c!358133)) b!2251792))

(assert (= (and b!2251793 res!962194) b!2251796))

(assert (= (and b!2251792 c!358134) b!2251789))

(assert (= (and b!2251792 (not c!358134)) b!2251788))

(assert (= (and b!2251789 res!962196) b!2251795))

(assert (= (and b!2251788 (not res!962198)) b!2251790))

(assert (= (and b!2251790 res!962197) b!2251794))

(assert (= (or b!2251789 b!2251794) bm!135601))

(assert (= (or b!2251795 b!2251790) bm!135599))

(assert (= (or b!2251796 bm!135601) bm!135600))

(declare-fun m!2682665 () Bool)

(assert (=> bm!135599 m!2682665))

(declare-fun m!2682667 () Bool)

(assert (=> bm!135600 m!2682667))

(declare-fun m!2682669 () Bool)

(assert (=> b!2251793 m!2682669))

(assert (=> d!667855 d!668107))

(declare-fun d!668109 () Bool)

(assert (=> d!668109 (= (inv!36203 (dynLambda!11593 (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456)))) (value!134289 (h!32066 tokens!456)))) (isBalanced!2654 (c!358006 (dynLambda!11593 (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456)))) (value!134289 (h!32066 tokens!456))))))))

(declare-fun bs!455110 () Bool)

(assert (= bs!455110 d!668109))

(declare-fun m!2682671 () Bool)

(assert (=> bs!455110 m!2682671))

(assert (=> tb!133423 d!668109))

(declare-fun b!2251798 () Bool)

(declare-fun e!1440936 () List!26757)

(declare-fun e!1440937 () List!26757)

(assert (=> b!2251798 (= e!1440936 e!1440937)))

(declare-fun c!358136 () Bool)

(assert (=> b!2251798 (= c!358136 ((_ is Leaf!12701) (c!358006 (charsOf!2615 (h!32066 tokens!456)))))))

(declare-fun d!668111 () Bool)

(declare-fun c!358135 () Bool)

(assert (=> d!668111 (= c!358135 ((_ is Empty!8602) (c!358006 (charsOf!2615 (h!32066 tokens!456)))))))

(assert (=> d!668111 (= (list!10237 (c!358006 (charsOf!2615 (h!32066 tokens!456)))) e!1440936)))

(declare-fun b!2251800 () Bool)

(assert (=> b!2251800 (= e!1440937 (++!6495 (list!10237 (left!20256 (c!358006 (charsOf!2615 (h!32066 tokens!456))))) (list!10237 (right!20586 (c!358006 (charsOf!2615 (h!32066 tokens!456)))))))))

(declare-fun b!2251799 () Bool)

(assert (=> b!2251799 (= e!1440937 (list!10240 (xs!11544 (c!358006 (charsOf!2615 (h!32066 tokens!456))))))))

(declare-fun b!2251797 () Bool)

(assert (=> b!2251797 (= e!1440936 Nil!26663)))

(assert (= (and d!668111 c!358135) b!2251797))

(assert (= (and d!668111 (not c!358135)) b!2251798))

(assert (= (and b!2251798 c!358136) b!2251799))

(assert (= (and b!2251798 (not c!358136)) b!2251800))

(declare-fun m!2682673 () Bool)

(assert (=> b!2251800 m!2682673))

(declare-fun m!2682675 () Bool)

(assert (=> b!2251800 m!2682675))

(assert (=> b!2251800 m!2682673))

(assert (=> b!2251800 m!2682675))

(declare-fun m!2682677 () Bool)

(assert (=> b!2251800 m!2682677))

(declare-fun m!2682679 () Bool)

(assert (=> b!2251799 m!2682679))

(assert (=> d!667969 d!668111))

(assert (=> b!2251379 d!668043))

(assert (=> b!2251379 d!668045))

(assert (=> b!2251379 d!668041))

(declare-fun d!668113 () Bool)

(assert (=> d!668113 (= (isDefined!4185 lt!836819) (not (isEmpty!15041 lt!836819)))))

(declare-fun bs!455111 () Bool)

(assert (= bs!455111 d!668113))

(assert (=> bs!455111 m!2682165))

(assert (=> b!2251381 d!668113))

(assert (=> d!667853 d!667975))

(declare-fun bs!455112 () Bool)

(declare-fun d!668115 () Bool)

(assert (= bs!455112 (and d!668115 d!668027)))

(declare-fun lambda!85244 () Int)

(assert (=> bs!455112 (= (and (= (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456)))) (toChars!5824 (transformation!4227 (h!32067 rules!1750)))) (= (toValue!5965 (transformation!4227 (rule!6529 (h!32066 tokens!456)))) (toValue!5965 (transformation!4227 (h!32067 rules!1750))))) (= lambda!85244 lambda!85228))))

(declare-fun bs!455113 () Bool)

(assert (= bs!455113 (and d!668115 d!668079)))

(assert (=> bs!455113 (= (and (= (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456)))) (toChars!5824 (transformation!4227 otherR!12))) (= (toValue!5965 (transformation!4227 (rule!6529 (h!32066 tokens!456)))) (toValue!5965 (transformation!4227 otherR!12)))) (= lambda!85244 lambda!85239))))

(declare-fun bs!455114 () Bool)

(assert (= bs!455114 (and d!668115 d!668105)))

(assert (=> bs!455114 (= (and (= (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456)))) (toChars!5824 (transformation!4227 r!2363))) (= (toValue!5965 (transformation!4227 (rule!6529 (h!32066 tokens!456)))) (toValue!5965 (transformation!4227 r!2363)))) (= lambda!85244 lambda!85243))))

(assert (=> d!668115 true))

(assert (=> d!668115 (< (dynLambda!11594 order!14917 (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456))))) (dynLambda!11595 order!14919 lambda!85244))))

(assert (=> d!668115 true))

(assert (=> d!668115 (< (dynLambda!11596 order!14921 (toValue!5965 (transformation!4227 (rule!6529 (h!32066 tokens!456))))) (dynLambda!11595 order!14919 lambda!85244))))

(assert (=> d!668115 (= (semiInverseModEq!1707 (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456)))) (toValue!5965 (transformation!4227 (rule!6529 (h!32066 tokens!456))))) (Forall!1064 lambda!85244))))

(declare-fun bs!455115 () Bool)

(assert (= bs!455115 d!668115))

(declare-fun m!2682681 () Bool)

(assert (=> bs!455115 m!2682681))

(assert (=> d!667869 d!668115))

(declare-fun d!668117 () Bool)

(declare-fun lt!837012 () Bool)

(assert (=> d!668117 (= lt!837012 (select (content!3556 rules!1750) (rule!6529 (_1!15591 (get!8048 lt!836819)))))))

(declare-fun e!1440939 () Bool)

(assert (=> d!668117 (= lt!837012 e!1440939)))

(declare-fun res!962200 () Bool)

(assert (=> d!668117 (=> (not res!962200) (not e!1440939))))

(assert (=> d!668117 (= res!962200 ((_ is Cons!26666) rules!1750))))

(assert (=> d!668117 (= (contains!4577 rules!1750 (rule!6529 (_1!15591 (get!8048 lt!836819)))) lt!837012)))

(declare-fun b!2251801 () Bool)

(declare-fun e!1440938 () Bool)

(assert (=> b!2251801 (= e!1440939 e!1440938)))

(declare-fun res!962199 () Bool)

(assert (=> b!2251801 (=> res!962199 e!1440938)))

(assert (=> b!2251801 (= res!962199 (= (h!32067 rules!1750) (rule!6529 (_1!15591 (get!8048 lt!836819)))))))

(declare-fun b!2251802 () Bool)

(assert (=> b!2251802 (= e!1440938 (contains!4577 (t!200822 rules!1750) (rule!6529 (_1!15591 (get!8048 lt!836819)))))))

(assert (= (and d!668117 res!962200) b!2251801))

(assert (= (and b!2251801 (not res!962199)) b!2251802))

(assert (=> d!668117 m!2681925))

(declare-fun m!2682683 () Bool)

(assert (=> d!668117 m!2682683))

(declare-fun m!2682685 () Bool)

(assert (=> b!2251802 m!2682685))

(assert (=> b!2251377 d!668117))

(assert (=> b!2251377 d!668041))

(declare-fun d!668119 () Bool)

(declare-fun e!1440941 () Bool)

(assert (=> d!668119 e!1440941))

(declare-fun res!962201 () Bool)

(assert (=> d!668119 (=> (not res!962201) (not e!1440941))))

(declare-fun lt!837013 () List!26757)

(assert (=> d!668119 (= res!962201 (= (content!3558 lt!837013) ((_ map or) (content!3558 (t!200819 lt!836736)) (content!3558 (_2!15591 lt!836738)))))))

(declare-fun e!1440940 () List!26757)

(assert (=> d!668119 (= lt!837013 e!1440940)))

(declare-fun c!358137 () Bool)

(assert (=> d!668119 (= c!358137 ((_ is Nil!26663) (t!200819 lt!836736)))))

(assert (=> d!668119 (= (++!6495 (t!200819 lt!836736) (_2!15591 lt!836738)) lt!837013)))

(declare-fun b!2251803 () Bool)

(assert (=> b!2251803 (= e!1440940 (_2!15591 lt!836738))))

(declare-fun b!2251804 () Bool)

(assert (=> b!2251804 (= e!1440940 (Cons!26663 (h!32064 (t!200819 lt!836736)) (++!6495 (t!200819 (t!200819 lt!836736)) (_2!15591 lt!836738))))))

(declare-fun b!2251806 () Bool)

(assert (=> b!2251806 (= e!1440941 (or (not (= (_2!15591 lt!836738) Nil!26663)) (= lt!837013 (t!200819 lt!836736))))))

(declare-fun b!2251805 () Bool)

(declare-fun res!962202 () Bool)

(assert (=> b!2251805 (=> (not res!962202) (not e!1440941))))

(assert (=> b!2251805 (= res!962202 (= (size!20866 lt!837013) (+ (size!20866 (t!200819 lt!836736)) (size!20866 (_2!15591 lt!836738)))))))

(assert (= (and d!668119 c!358137) b!2251803))

(assert (= (and d!668119 (not c!358137)) b!2251804))

(assert (= (and d!668119 res!962201) b!2251805))

(assert (= (and b!2251805 res!962202) b!2251806))

(declare-fun m!2682687 () Bool)

(assert (=> d!668119 m!2682687))

(declare-fun m!2682689 () Bool)

(assert (=> d!668119 m!2682689))

(assert (=> d!668119 m!2682269))

(declare-fun m!2682691 () Bool)

(assert (=> b!2251804 m!2682691))

(declare-fun m!2682693 () Bool)

(assert (=> b!2251805 m!2682693))

(assert (=> b!2251805 m!2682283))

(assert (=> b!2251805 m!2682275))

(assert (=> b!2251503 d!668119))

(assert (=> d!667857 d!667855))

(declare-fun d!668121 () Bool)

(assert (=> d!668121 (ruleValid!1319 thiss!16613 otherR!12)))

(assert (=> d!668121 true))

(declare-fun _$65!1045 () Unit!39604)

(assert (=> d!668121 (= (choose!13172 thiss!16613 otherR!12 rules!1750) _$65!1045)))

(declare-fun bs!455116 () Bool)

(assert (= bs!455116 d!668121))

(assert (=> bs!455116 m!2681853))

(assert (=> d!667857 d!668121))

(assert (=> d!667857 d!667975))

(declare-fun d!668123 () Bool)

(declare-fun lt!837016 () Bool)

(assert (=> d!668123 (= lt!837016 (isEmpty!15036 (list!10234 (_1!15592 lt!836841))))))

(declare-fun isEmpty!15044 (Conc!8603) Bool)

(assert (=> d!668123 (= lt!837016 (isEmpty!15044 (c!358008 (_1!15592 lt!836841))))))

(assert (=> d!668123 (= (isEmpty!15043 (_1!15592 lt!836841)) lt!837016)))

(declare-fun bs!455117 () Bool)

(assert (= bs!455117 d!668123))

(assert (=> bs!455117 m!2682251))

(assert (=> bs!455117 m!2682251))

(declare-fun m!2682695 () Bool)

(assert (=> bs!455117 m!2682695))

(declare-fun m!2682697 () Bool)

(assert (=> bs!455117 m!2682697))

(assert (=> b!2251486 d!668123))

(assert (=> d!667937 d!668067))

(declare-fun d!668125 () Bool)

(declare-fun e!1440944 () Bool)

(assert (=> d!668125 e!1440944))

(declare-fun res!962205 () Bool)

(assert (=> d!668125 (=> (not res!962205) (not e!1440944))))

(declare-fun lt!837019 () BalanceConc!16932)

(assert (=> d!668125 (= res!962205 (= (list!10233 lt!837019) input!1722))))

(declare-fun fromList!511 (List!26757) Conc!8602)

(assert (=> d!668125 (= lt!837019 (BalanceConc!16933 (fromList!511 input!1722)))))

(assert (=> d!668125 (= (fromListB!1318 input!1722) lt!837019)))

(declare-fun b!2251809 () Bool)

(assert (=> b!2251809 (= e!1440944 (isBalanced!2654 (fromList!511 input!1722)))))

(assert (= (and d!668125 res!962205) b!2251809))

(declare-fun m!2682699 () Bool)

(assert (=> d!668125 m!2682699))

(declare-fun m!2682701 () Bool)

(assert (=> d!668125 m!2682701))

(assert (=> b!2251809 m!2682701))

(assert (=> b!2251809 m!2682701))

(declare-fun m!2682703 () Bool)

(assert (=> b!2251809 m!2682703))

(assert (=> d!667959 d!668125))

(assert (=> b!2251207 d!668083))

(declare-fun d!668127 () Bool)

(declare-fun lt!837020 () Bool)

(assert (=> d!668127 (= lt!837020 (select (content!3556 (t!200822 rules!1750)) otherR!12))))

(declare-fun e!1440946 () Bool)

(assert (=> d!668127 (= lt!837020 e!1440946)))

(declare-fun res!962207 () Bool)

(assert (=> d!668127 (=> (not res!962207) (not e!1440946))))

(assert (=> d!668127 (= res!962207 ((_ is Cons!26666) (t!200822 rules!1750)))))

(assert (=> d!668127 (= (contains!4577 (t!200822 rules!1750) otherR!12) lt!837020)))

(declare-fun b!2251810 () Bool)

(declare-fun e!1440945 () Bool)

(assert (=> b!2251810 (= e!1440946 e!1440945)))

(declare-fun res!962206 () Bool)

(assert (=> b!2251810 (=> res!962206 e!1440945)))

(assert (=> b!2251810 (= res!962206 (= (h!32067 (t!200822 rules!1750)) otherR!12))))

(declare-fun b!2251811 () Bool)

(assert (=> b!2251811 (= e!1440945 (contains!4577 (t!200822 (t!200822 rules!1750)) otherR!12))))

(assert (= (and d!668127 res!962207) b!2251810))

(assert (= (and b!2251810 (not res!962206)) b!2251811))

(declare-fun m!2682705 () Bool)

(assert (=> d!668127 m!2682705))

(declare-fun m!2682707 () Bool)

(assert (=> d!668127 m!2682707))

(declare-fun m!2682709 () Bool)

(assert (=> b!2251811 m!2682709))

(assert (=> b!2251512 d!668127))

(declare-fun b!2251813 () Bool)

(declare-fun e!1440947 () List!26757)

(declare-fun e!1440948 () List!26757)

(assert (=> b!2251813 (= e!1440947 e!1440948)))

(declare-fun c!358140 () Bool)

(assert (=> b!2251813 (= c!358140 ((_ is Leaf!12701) (c!358006 (_2!15592 lt!836734))))))

(declare-fun d!668129 () Bool)

(declare-fun c!358139 () Bool)

(assert (=> d!668129 (= c!358139 ((_ is Empty!8602) (c!358006 (_2!15592 lt!836734))))))

(assert (=> d!668129 (= (list!10237 (c!358006 (_2!15592 lt!836734))) e!1440947)))

(declare-fun b!2251815 () Bool)

(assert (=> b!2251815 (= e!1440948 (++!6495 (list!10237 (left!20256 (c!358006 (_2!15592 lt!836734)))) (list!10237 (right!20586 (c!358006 (_2!15592 lt!836734))))))))

(declare-fun b!2251814 () Bool)

(assert (=> b!2251814 (= e!1440948 (list!10240 (xs!11544 (c!358006 (_2!15592 lt!836734)))))))

(declare-fun b!2251812 () Bool)

(assert (=> b!2251812 (= e!1440947 Nil!26663)))

(assert (= (and d!668129 c!358139) b!2251812))

(assert (= (and d!668129 (not c!358139)) b!2251813))

(assert (= (and b!2251813 c!358140) b!2251814))

(assert (= (and b!2251813 (not c!358140)) b!2251815))

(declare-fun m!2682711 () Bool)

(assert (=> b!2251815 m!2682711))

(declare-fun m!2682713 () Bool)

(assert (=> b!2251815 m!2682713))

(assert (=> b!2251815 m!2682711))

(assert (=> b!2251815 m!2682713))

(declare-fun m!2682715 () Bool)

(assert (=> b!2251815 m!2682715))

(declare-fun m!2682717 () Bool)

(assert (=> b!2251814 m!2682717))

(assert (=> d!667943 d!668129))

(declare-fun d!668131 () Bool)

(declare-fun lt!837021 () Int)

(assert (=> d!668131 (>= lt!837021 0)))

(declare-fun e!1440949 () Int)

(assert (=> d!668131 (= lt!837021 e!1440949)))

(declare-fun c!358141 () Bool)

(assert (=> d!668131 (= c!358141 ((_ is Nil!26663) (++!6495 lt!836736 (_2!15591 lt!836738))))))

(assert (=> d!668131 (= (size!20866 (++!6495 lt!836736 (_2!15591 lt!836738))) lt!837021)))

(declare-fun b!2251816 () Bool)

(assert (=> b!2251816 (= e!1440949 0)))

(declare-fun b!2251817 () Bool)

(assert (=> b!2251817 (= e!1440949 (+ 1 (size!20866 (t!200819 (++!6495 lt!836736 (_2!15591 lt!836738))))))))

(assert (= (and d!668131 c!358141) b!2251816))

(assert (= (and d!668131 (not c!358141)) b!2251817))

(declare-fun m!2682719 () Bool)

(assert (=> b!2251817 m!2682719))

(assert (=> b!2251493 d!668131))

(assert (=> b!2251493 d!667971))

(declare-fun d!668133 () Bool)

(assert (=> d!668133 (= (isEmpty!15041 lt!836819) (not ((_ is Some!5200) lt!836819)))))

(assert (=> d!667875 d!668133))

(declare-fun d!668135 () Bool)

(declare-fun e!1440952 () Bool)

(assert (=> d!668135 e!1440952))

(declare-fun res!962209 () Bool)

(assert (=> d!668135 (=> res!962209 e!1440952)))

(declare-fun lt!837022 () Bool)

(assert (=> d!668135 (= res!962209 (not lt!837022))))

(declare-fun e!1440950 () Bool)

(assert (=> d!668135 (= lt!837022 e!1440950)))

(declare-fun res!962210 () Bool)

(assert (=> d!668135 (=> res!962210 e!1440950)))

(assert (=> d!668135 (= res!962210 ((_ is Nil!26663) input!1722))))

(assert (=> d!668135 (= (isPrefix!2217 input!1722 input!1722) lt!837022)))

(declare-fun b!2251819 () Bool)

(declare-fun res!962208 () Bool)

(declare-fun e!1440951 () Bool)

(assert (=> b!2251819 (=> (not res!962208) (not e!1440951))))

(assert (=> b!2251819 (= res!962208 (= (head!4796 input!1722) (head!4796 input!1722)))))

(declare-fun b!2251818 () Bool)

(assert (=> b!2251818 (= e!1440950 e!1440951)))

(declare-fun res!962211 () Bool)

(assert (=> b!2251818 (=> (not res!962211) (not e!1440951))))

(assert (=> b!2251818 (= res!962211 (not ((_ is Nil!26663) input!1722)))))

(declare-fun b!2251821 () Bool)

(assert (=> b!2251821 (= e!1440952 (>= (size!20866 input!1722) (size!20866 input!1722)))))

(declare-fun b!2251820 () Bool)

(assert (=> b!2251820 (= e!1440951 (isPrefix!2217 (tail!3249 input!1722) (tail!3249 input!1722)))))

(assert (= (and d!668135 (not res!962210)) b!2251818))

(assert (= (and b!2251818 res!962211) b!2251819))

(assert (= (and b!2251819 res!962208) b!2251820))

(assert (= (and d!668135 (not res!962209)) b!2251821))

(assert (=> b!2251819 m!2681913))

(assert (=> b!2251819 m!2681913))

(assert (=> b!2251821 m!2681867))

(assert (=> b!2251821 m!2681867))

(assert (=> b!2251820 m!2681917))

(assert (=> b!2251820 m!2681917))

(assert (=> b!2251820 m!2681917))

(assert (=> b!2251820 m!2681917))

(declare-fun m!2682721 () Bool)

(assert (=> b!2251820 m!2682721))

(assert (=> d!667875 d!668135))

(declare-fun d!668137 () Bool)

(assert (=> d!668137 (isPrefix!2217 input!1722 input!1722)))

(declare-fun lt!837025 () Unit!39604)

(declare-fun choose!13176 (List!26757 List!26757) Unit!39604)

(assert (=> d!668137 (= lt!837025 (choose!13176 input!1722 input!1722))))

(assert (=> d!668137 (= (lemmaIsPrefixRefl!1432 input!1722 input!1722) lt!837025)))

(declare-fun bs!455118 () Bool)

(assert (= bs!455118 d!668137))

(assert (=> bs!455118 m!2682167))

(declare-fun m!2682723 () Bool)

(assert (=> bs!455118 m!2682723))

(assert (=> d!667875 d!668137))

(declare-fun bs!455119 () Bool)

(declare-fun d!668139 () Bool)

(assert (= bs!455119 (and d!668139 d!668069)))

(declare-fun lambda!85247 () Int)

(assert (=> bs!455119 (= lambda!85247 lambda!85238)))

(assert (=> d!668139 true))

(declare-fun lt!837028 () Bool)

(assert (=> d!668139 (= lt!837028 (forall!5467 rules!1750 lambda!85247))))

(declare-fun e!1440958 () Bool)

(assert (=> d!668139 (= lt!837028 e!1440958)))

(declare-fun res!962216 () Bool)

(assert (=> d!668139 (=> res!962216 e!1440958)))

(assert (=> d!668139 (= res!962216 (not ((_ is Cons!26666) rules!1750)))))

(assert (=> d!668139 (= (rulesValidInductive!1476 thiss!16613 rules!1750) lt!837028)))

(declare-fun b!2251826 () Bool)

(declare-fun e!1440957 () Bool)

(assert (=> b!2251826 (= e!1440958 e!1440957)))

(declare-fun res!962217 () Bool)

(assert (=> b!2251826 (=> (not res!962217) (not e!1440957))))

(assert (=> b!2251826 (= res!962217 (ruleValid!1319 thiss!16613 (h!32067 rules!1750)))))

(declare-fun b!2251827 () Bool)

(assert (=> b!2251827 (= e!1440957 (rulesValidInductive!1476 thiss!16613 (t!200822 rules!1750)))))

(assert (= (and d!668139 (not res!962216)) b!2251826))

(assert (= (and b!2251826 res!962217) b!2251827))

(declare-fun m!2682725 () Bool)

(assert (=> d!668139 m!2682725))

(assert (=> b!2251826 m!2682625))

(assert (=> b!2251827 m!2682357))

(assert (=> d!667875 d!668139))

(declare-fun d!668141 () Bool)

(assert (=> d!668141 (= (list!10233 lt!836851) (list!10237 (c!358006 lt!836851)))))

(declare-fun bs!455120 () Bool)

(assert (= bs!455120 d!668141))

(declare-fun m!2682727 () Bool)

(assert (=> bs!455120 m!2682727))

(assert (=> d!667973 d!668141))

(declare-fun d!668143 () Bool)

(declare-fun charsToBigInt!0 (List!26758 Int) Int)

(assert (=> d!668143 (= (inv!15 (value!134289 (h!32066 tokens!456))) (= (charsToBigInt!0 (text!31172 (value!134289 (h!32066 tokens!456))) 0) (value!134284 (value!134289 (h!32066 tokens!456)))))))

(declare-fun bs!455121 () Bool)

(assert (= bs!455121 d!668143))

(declare-fun m!2682729 () Bool)

(assert (=> bs!455121 m!2682729))

(assert (=> b!2251125 d!668143))

(declare-fun d!668145 () Bool)

(declare-fun nullableFct!426 (Regex!6575) Bool)

(assert (=> d!668145 (= (nullable!1806 (regex!4227 r!2363)) (nullableFct!426 (regex!4227 r!2363)))))

(declare-fun bs!455122 () Bool)

(assert (= bs!455122 d!668145))

(declare-fun m!2682731 () Bool)

(assert (=> bs!455122 m!2682731))

(assert (=> b!2251383 d!668145))

(declare-fun d!668147 () Bool)

(declare-fun charsToBigInt!1 (List!26758) Int)

(assert (=> d!668147 (= (inv!17 (value!134289 (h!32066 tokens!456))) (= (charsToBigInt!1 (text!31171 (value!134289 (h!32066 tokens!456)))) (value!134281 (value!134289 (h!32066 tokens!456)))))))

(declare-fun bs!455123 () Bool)

(assert (= bs!455123 d!668147))

(declare-fun m!2682733 () Bool)

(assert (=> bs!455123 m!2682733))

(assert (=> b!2251123 d!668147))

(declare-fun d!668149 () Bool)

(declare-fun lt!837029 () Int)

(assert (=> d!668149 (>= lt!837029 0)))

(declare-fun e!1440959 () Int)

(assert (=> d!668149 (= lt!837029 e!1440959)))

(declare-fun c!358142 () Bool)

(assert (=> d!668149 (= c!358142 ((_ is Nil!26663) (t!200819 lt!836736)))))

(assert (=> d!668149 (= (size!20866 (t!200819 lt!836736)) lt!837029)))

(declare-fun b!2251828 () Bool)

(assert (=> b!2251828 (= e!1440959 0)))

(declare-fun b!2251829 () Bool)

(assert (=> b!2251829 (= e!1440959 (+ 1 (size!20866 (t!200819 (t!200819 lt!836736)))))))

(assert (= (and d!668149 c!358142) b!2251828))

(assert (= (and d!668149 (not c!358142)) b!2251829))

(declare-fun m!2682735 () Bool)

(assert (=> b!2251829 m!2682735))

(assert (=> b!2251509 d!668149))

(declare-fun d!668151 () Bool)

(declare-fun lt!837030 () Bool)

(assert (=> d!668151 (= lt!837030 (select (content!3556 (t!200822 rules!1750)) r!2363))))

(declare-fun e!1440961 () Bool)

(assert (=> d!668151 (= lt!837030 e!1440961)))

(declare-fun res!962219 () Bool)

(assert (=> d!668151 (=> (not res!962219) (not e!1440961))))

(assert (=> d!668151 (= res!962219 ((_ is Cons!26666) (t!200822 rules!1750)))))

(assert (=> d!668151 (= (contains!4577 (t!200822 rules!1750) r!2363) lt!837030)))

(declare-fun b!2251830 () Bool)

(declare-fun e!1440960 () Bool)

(assert (=> b!2251830 (= e!1440961 e!1440960)))

(declare-fun res!962218 () Bool)

(assert (=> b!2251830 (=> res!962218 e!1440960)))

(assert (=> b!2251830 (= res!962218 (= (h!32067 (t!200822 rules!1750)) r!2363))))

(declare-fun b!2251831 () Bool)

(assert (=> b!2251831 (= e!1440960 (contains!4577 (t!200822 (t!200822 rules!1750)) r!2363))))

(assert (= (and d!668151 res!962219) b!2251830))

(assert (= (and b!2251830 (not res!962218)) b!2251831))

(assert (=> d!668151 m!2682705))

(declare-fun m!2682737 () Bool)

(assert (=> d!668151 m!2682737))

(declare-fun m!2682739 () Bool)

(assert (=> b!2251831 m!2682739))

(assert (=> b!2251096 d!668151))

(declare-fun d!668153 () Bool)

(declare-fun e!1440964 () Bool)

(assert (=> d!668153 e!1440964))

(declare-fun res!962221 () Bool)

(assert (=> d!668153 (=> res!962221 e!1440964)))

(declare-fun lt!837031 () Bool)

(assert (=> d!668153 (= res!962221 (not lt!837031))))

(declare-fun e!1440962 () Bool)

(assert (=> d!668153 (= lt!837031 e!1440962)))

(declare-fun res!962222 () Bool)

(assert (=> d!668153 (=> res!962222 e!1440962)))

(assert (=> d!668153 (= res!962222 ((_ is Nil!26663) (tail!3249 lt!836736)))))

(assert (=> d!668153 (= (isPrefix!2217 (tail!3249 lt!836736) (tail!3249 input!1722)) lt!837031)))

(declare-fun b!2251833 () Bool)

(declare-fun res!962220 () Bool)

(declare-fun e!1440963 () Bool)

(assert (=> b!2251833 (=> (not res!962220) (not e!1440963))))

(assert (=> b!2251833 (= res!962220 (= (head!4796 (tail!3249 lt!836736)) (head!4796 (tail!3249 input!1722))))))

(declare-fun b!2251832 () Bool)

(assert (=> b!2251832 (= e!1440962 e!1440963)))

(declare-fun res!962223 () Bool)

(assert (=> b!2251832 (=> (not res!962223) (not e!1440963))))

(assert (=> b!2251832 (= res!962223 (not ((_ is Nil!26663) (tail!3249 input!1722))))))

(declare-fun b!2251835 () Bool)

(assert (=> b!2251835 (= e!1440964 (>= (size!20866 (tail!3249 input!1722)) (size!20866 (tail!3249 lt!836736))))))

(declare-fun b!2251834 () Bool)

(assert (=> b!2251834 (= e!1440963 (isPrefix!2217 (tail!3249 (tail!3249 lt!836736)) (tail!3249 (tail!3249 input!1722))))))

(assert (= (and d!668153 (not res!962222)) b!2251832))

(assert (= (and b!2251832 res!962223) b!2251833))

(assert (= (and b!2251833 res!962220) b!2251834))

(assert (= (and d!668153 (not res!962221)) b!2251835))

(assert (=> b!2251833 m!2681933))

(assert (=> b!2251833 m!2682369))

(assert (=> b!2251833 m!2681917))

(assert (=> b!2251833 m!2682539))

(assert (=> b!2251835 m!2681917))

(assert (=> b!2251835 m!2682541))

(assert (=> b!2251835 m!2681933))

(assert (=> b!2251835 m!2682375))

(assert (=> b!2251834 m!2681933))

(assert (=> b!2251834 m!2682377))

(assert (=> b!2251834 m!2681917))

(assert (=> b!2251834 m!2682547))

(assert (=> b!2251834 m!2682377))

(assert (=> b!2251834 m!2682547))

(declare-fun m!2682741 () Bool)

(assert (=> b!2251834 m!2682741))

(assert (=> b!2251099 d!668153))

(assert (=> b!2251099 d!668001))

(assert (=> b!2251099 d!668059))

(assert (=> bm!135578 d!668065))

(declare-fun d!668155 () Bool)

(declare-fun lt!837032 () Int)

(assert (=> d!668155 (>= lt!837032 0)))

(declare-fun e!1440965 () Int)

(assert (=> d!668155 (= lt!837032 e!1440965)))

(declare-fun c!358143 () Bool)

(assert (=> d!668155 (= c!358143 ((_ is Nil!26663) (originalCharacters!4997 (h!32066 tokens!456))))))

(assert (=> d!668155 (= (size!20866 (originalCharacters!4997 (h!32066 tokens!456))) lt!837032)))

(declare-fun b!2251836 () Bool)

(assert (=> b!2251836 (= e!1440965 0)))

(declare-fun b!2251837 () Bool)

(assert (=> b!2251837 (= e!1440965 (+ 1 (size!20866 (t!200819 (originalCharacters!4997 (h!32066 tokens!456))))))))

(assert (= (and d!668155 c!358143) b!2251836))

(assert (= (and d!668155 (not c!358143)) b!2251837))

(declare-fun m!2682743 () Bool)

(assert (=> b!2251837 m!2682743))

(assert (=> b!2251521 d!668155))

(declare-fun d!668157 () Bool)

(assert (=> d!668157 (= (nullable!1806 (regex!4227 otherR!12)) (nullableFct!426 (regex!4227 otherR!12)))))

(declare-fun bs!455124 () Bool)

(assert (= bs!455124 d!668157))

(declare-fun m!2682745 () Bool)

(assert (=> bs!455124 m!2682745))

(assert (=> b!2251159 d!668157))

(assert (=> b!2251089 d!667967))

(assert (=> b!2251089 d!667849))

(declare-fun d!668159 () Bool)

(declare-fun res!962224 () Bool)

(declare-fun e!1440966 () Bool)

(assert (=> d!668159 (=> (not res!962224) (not e!1440966))))

(assert (=> d!668159 (= res!962224 (not (isEmpty!15040 (originalCharacters!4997 (h!32066 (t!200821 tokens!456))))))))

(assert (=> d!668159 (= (inv!36199 (h!32066 (t!200821 tokens!456))) e!1440966)))

(declare-fun b!2251838 () Bool)

(declare-fun res!962225 () Bool)

(assert (=> b!2251838 (=> (not res!962225) (not e!1440966))))

(assert (=> b!2251838 (= res!962225 (= (originalCharacters!4997 (h!32066 (t!200821 tokens!456))) (list!10233 (dynLambda!11593 (toChars!5824 (transformation!4227 (rule!6529 (h!32066 (t!200821 tokens!456))))) (value!134289 (h!32066 (t!200821 tokens!456)))))))))

(declare-fun b!2251839 () Bool)

(assert (=> b!2251839 (= e!1440966 (= (size!20867 (h!32066 (t!200821 tokens!456))) (size!20866 (originalCharacters!4997 (h!32066 (t!200821 tokens!456))))))))

(assert (= (and d!668159 res!962224) b!2251838))

(assert (= (and b!2251838 res!962225) b!2251839))

(declare-fun b_lambda!71967 () Bool)

(assert (=> (not b_lambda!71967) (not b!2251838)))

(declare-fun t!200912 () Bool)

(declare-fun tb!133475 () Bool)

(assert (=> (and b!2251564 (= (toChars!5824 (transformation!4227 (h!32067 (t!200822 rules!1750)))) (toChars!5824 (transformation!4227 (rule!6529 (h!32066 (t!200821 tokens!456)))))) t!200912) tb!133475))

(declare-fun b!2251840 () Bool)

(declare-fun e!1440967 () Bool)

(declare-fun tp!711316 () Bool)

(assert (=> b!2251840 (= e!1440967 (and (inv!36202 (c!358006 (dynLambda!11593 (toChars!5824 (transformation!4227 (rule!6529 (h!32066 (t!200821 tokens!456))))) (value!134289 (h!32066 (t!200821 tokens!456)))))) tp!711316))))

(declare-fun result!162716 () Bool)

(assert (=> tb!133475 (= result!162716 (and (inv!36203 (dynLambda!11593 (toChars!5824 (transformation!4227 (rule!6529 (h!32066 (t!200821 tokens!456))))) (value!134289 (h!32066 (t!200821 tokens!456))))) e!1440967))))

(assert (= tb!133475 b!2251840))

(declare-fun m!2682747 () Bool)

(assert (=> b!2251840 m!2682747))

(declare-fun m!2682749 () Bool)

(assert (=> tb!133475 m!2682749))

(assert (=> b!2251838 t!200912))

(declare-fun b_and!176429 () Bool)

(assert (= b_and!176411 (and (=> t!200912 result!162716) b_and!176429)))

(declare-fun t!200914 () Bool)

(declare-fun tb!133477 () Bool)

(assert (=> (and b!2251580 (= (toChars!5824 (transformation!4227 (rule!6529 (h!32066 (t!200821 tokens!456))))) (toChars!5824 (transformation!4227 (rule!6529 (h!32066 (t!200821 tokens!456)))))) t!200914) tb!133477))

(declare-fun result!162718 () Bool)

(assert (= result!162718 result!162716))

(assert (=> b!2251838 t!200914))

(declare-fun b_and!176431 () Bool)

(assert (= b_and!176415 (and (=> t!200914 result!162718) b_and!176431)))

(declare-fun t!200916 () Bool)

(declare-fun tb!133479 () Bool)

(assert (=> (and b!2251043 (= (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456)))) (toChars!5824 (transformation!4227 (rule!6529 (h!32066 (t!200821 tokens!456)))))) t!200916) tb!133479))

(declare-fun result!162720 () Bool)

(assert (= result!162720 result!162716))

(assert (=> b!2251838 t!200916))

(declare-fun b_and!176433 () Bool)

(assert (= b_and!176409 (and (=> t!200916 result!162720) b_and!176433)))

(declare-fun t!200918 () Bool)

(declare-fun tb!133481 () Bool)

(assert (=> (and b!2251071 (= (toChars!5824 (transformation!4227 (h!32067 rules!1750))) (toChars!5824 (transformation!4227 (rule!6529 (h!32066 (t!200821 tokens!456)))))) t!200918) tb!133481))

(declare-fun result!162722 () Bool)

(assert (= result!162722 result!162716))

(assert (=> b!2251838 t!200918))

(declare-fun b_and!176435 () Bool)

(assert (= b_and!176407 (and (=> t!200918 result!162722) b_and!176435)))

(declare-fun tb!133483 () Bool)

(declare-fun t!200920 () Bool)

(assert (=> (and b!2251057 (= (toChars!5824 (transformation!4227 r!2363)) (toChars!5824 (transformation!4227 (rule!6529 (h!32066 (t!200821 tokens!456)))))) t!200920) tb!133483))

(declare-fun result!162724 () Bool)

(assert (= result!162724 result!162716))

(assert (=> b!2251838 t!200920))

(declare-fun b_and!176437 () Bool)

(assert (= b_and!176413 (and (=> t!200920 result!162724) b_and!176437)))

(declare-fun t!200922 () Bool)

(declare-fun tb!133485 () Bool)

(assert (=> (and b!2251051 (= (toChars!5824 (transformation!4227 otherR!12)) (toChars!5824 (transformation!4227 (rule!6529 (h!32066 (t!200821 tokens!456)))))) t!200922) tb!133485))

(declare-fun result!162726 () Bool)

(assert (= result!162726 result!162716))

(assert (=> b!2251838 t!200922))

(declare-fun b_and!176439 () Bool)

(assert (= b_and!176405 (and (=> t!200922 result!162726) b_and!176439)))

(declare-fun m!2682751 () Bool)

(assert (=> d!668159 m!2682751))

(declare-fun m!2682753 () Bool)

(assert (=> b!2251838 m!2682753))

(assert (=> b!2251838 m!2682753))

(declare-fun m!2682755 () Bool)

(assert (=> b!2251838 m!2682755))

(declare-fun m!2682757 () Bool)

(assert (=> b!2251839 m!2682757))

(assert (=> b!2251577 d!668159))

(declare-fun d!668161 () Bool)

(declare-fun c!358146 () Bool)

(assert (=> d!668161 (= c!358146 ((_ is Nil!26666) rules!1750))))

(declare-fun e!1440970 () (InoxSet Rule!8254))

(assert (=> d!668161 (= (content!3556 rules!1750) e!1440970)))

(declare-fun b!2251845 () Bool)

(assert (=> b!2251845 (= e!1440970 ((as const (Array Rule!8254 Bool)) false))))

(declare-fun b!2251846 () Bool)

(assert (=> b!2251846 (= e!1440970 ((_ map or) (store ((as const (Array Rule!8254 Bool)) false) (h!32067 rules!1750) true) (content!3556 (t!200822 rules!1750))))))

(assert (= (and d!668161 c!358146) b!2251845))

(assert (= (and d!668161 (not c!358146)) b!2251846))

(declare-fun m!2682759 () Bool)

(assert (=> b!2251846 m!2682759))

(assert (=> b!2251846 m!2682705))

(assert (=> d!667975 d!668161))

(declare-fun d!668163 () Bool)

(declare-fun c!358149 () Bool)

(assert (=> d!668163 (= c!358149 ((_ is Nil!26663) lt!836845))))

(declare-fun e!1440973 () (InoxSet C!13296))

(assert (=> d!668163 (= (content!3558 lt!836845) e!1440973)))

(declare-fun b!2251851 () Bool)

(assert (=> b!2251851 (= e!1440973 ((as const (Array C!13296 Bool)) false))))

(declare-fun b!2251852 () Bool)

(assert (=> b!2251852 (= e!1440973 ((_ map or) (store ((as const (Array C!13296 Bool)) false) (h!32064 lt!836845) true) (content!3558 (t!200819 lt!836845))))))

(assert (= (and d!668163 c!358149) b!2251851))

(assert (= (and d!668163 (not c!358149)) b!2251852))

(declare-fun m!2682761 () Bool)

(assert (=> b!2251852 m!2682761))

(declare-fun m!2682763 () Bool)

(assert (=> b!2251852 m!2682763))

(assert (=> d!667963 d!668163))

(declare-fun d!668165 () Bool)

(declare-fun c!358150 () Bool)

(assert (=> d!668165 (= c!358150 ((_ is Nil!26663) lt!836736))))

(declare-fun e!1440974 () (InoxSet C!13296))

(assert (=> d!668165 (= (content!3558 lt!836736) e!1440974)))

(declare-fun b!2251853 () Bool)

(assert (=> b!2251853 (= e!1440974 ((as const (Array C!13296 Bool)) false))))

(declare-fun b!2251854 () Bool)

(assert (=> b!2251854 (= e!1440974 ((_ map or) (store ((as const (Array C!13296 Bool)) false) (h!32064 lt!836736) true) (content!3558 (t!200819 lt!836736))))))

(assert (= (and d!668165 c!358150) b!2251853))

(assert (= (and d!668165 (not c!358150)) b!2251854))

(declare-fun m!2682765 () Bool)

(assert (=> b!2251854 m!2682765))

(assert (=> b!2251854 m!2682689))

(assert (=> d!667963 d!668165))

(declare-fun d!668167 () Bool)

(declare-fun c!358151 () Bool)

(assert (=> d!668167 (= c!358151 ((_ is Nil!26663) (_2!15591 lt!836738)))))

(declare-fun e!1440975 () (InoxSet C!13296))

(assert (=> d!668167 (= (content!3558 (_2!15591 lt!836738)) e!1440975)))

(declare-fun b!2251855 () Bool)

(assert (=> b!2251855 (= e!1440975 ((as const (Array C!13296 Bool)) false))))

(declare-fun b!2251856 () Bool)

(assert (=> b!2251856 (= e!1440975 ((_ map or) (store ((as const (Array C!13296 Bool)) false) (h!32064 (_2!15591 lt!836738)) true) (content!3558 (t!200819 (_2!15591 lt!836738)))))))

(assert (= (and d!668167 c!358151) b!2251855))

(assert (= (and d!668167 (not c!358151)) b!2251856))

(declare-fun m!2682767 () Bool)

(assert (=> b!2251856 m!2682767))

(declare-fun m!2682769 () Bool)

(assert (=> b!2251856 m!2682769))

(assert (=> d!667963 d!668167))

(declare-fun d!668169 () Bool)

(assert (=> d!668169 (= (head!4796 otherP!12) (h!32064 otherP!12))))

(assert (=> b!2251087 d!668169))

(assert (=> b!2251087 d!667991))

(declare-fun bs!455125 () Bool)

(declare-fun d!668171 () Bool)

(assert (= bs!455125 (and d!668171 d!668063)))

(declare-fun lambda!85248 () Int)

(assert (=> bs!455125 (= (= (toValue!5965 (transformation!4227 (h!32067 rules!1750))) (toValue!5965 (transformation!4227 (rule!6529 (h!32066 tokens!456))))) (= lambda!85248 lambda!85231))))

(assert (=> d!668171 true))

(assert (=> d!668171 (< (dynLambda!11596 order!14921 (toValue!5965 (transformation!4227 (h!32067 rules!1750)))) (dynLambda!11597 order!14923 lambda!85248))))

(assert (=> d!668171 (= (equivClasses!1626 (toChars!5824 (transformation!4227 (h!32067 rules!1750))) (toValue!5965 (transformation!4227 (h!32067 rules!1750)))) (Forall2!681 lambda!85248))))

(declare-fun bs!455126 () Bool)

(assert (= bs!455126 d!668171))

(declare-fun m!2682771 () Bool)

(assert (=> bs!455126 m!2682771))

(assert (=> b!2251090 d!668171))

(declare-fun d!668173 () Bool)

(assert (=> d!668173 (= (list!10233 lt!836753) (list!10237 (c!358006 lt!836753)))))

(declare-fun bs!455127 () Bool)

(assert (= bs!455127 d!668173))

(declare-fun m!2682773 () Bool)

(assert (=> bs!455127 m!2682773))

(assert (=> d!667847 d!668173))

(declare-fun b!2251858 () Bool)

(declare-fun e!1440977 () Int)

(declare-fun e!1440976 () Int)

(assert (=> b!2251858 (= e!1440977 e!1440976)))

(declare-fun c!358152 () Bool)

(assert (=> b!2251858 (= c!358152 (and ((_ is Cons!26666) (t!200822 rules!1750)) (not (= (h!32067 (t!200822 rules!1750)) otherR!12))))))

(declare-fun b!2251860 () Bool)

(assert (=> b!2251860 (= e!1440976 (- 1))))

(declare-fun b!2251859 () Bool)

(assert (=> b!2251859 (= e!1440976 (+ 1 (getIndex!248 (t!200822 (t!200822 rules!1750)) otherR!12)))))

(declare-fun d!668175 () Bool)

(declare-fun lt!837033 () Int)

(assert (=> d!668175 (>= lt!837033 0)))

(assert (=> d!668175 (= lt!837033 e!1440977)))

(declare-fun c!358153 () Bool)

(assert (=> d!668175 (= c!358153 (and ((_ is Cons!26666) (t!200822 rules!1750)) (= (h!32067 (t!200822 rules!1750)) otherR!12)))))

(assert (=> d!668175 (contains!4577 (t!200822 rules!1750) otherR!12)))

(assert (=> d!668175 (= (getIndex!248 (t!200822 rules!1750) otherR!12) lt!837033)))

(declare-fun b!2251857 () Bool)

(assert (=> b!2251857 (= e!1440977 0)))

(assert (= (and d!668175 c!358153) b!2251857))

(assert (= (and d!668175 (not c!358153)) b!2251858))

(assert (= (and b!2251858 c!358152) b!2251859))

(assert (= (and b!2251858 (not c!358152)) b!2251860))

(declare-fun m!2682775 () Bool)

(assert (=> b!2251859 m!2682775))

(assert (=> d!668175 m!2682295))

(assert (=> b!2251153 d!668175))

(declare-fun bs!455128 () Bool)

(declare-fun d!668177 () Bool)

(assert (= bs!455128 (and d!668177 d!668063)))

(declare-fun lambda!85249 () Int)

(assert (=> bs!455128 (= (= (toValue!5965 (transformation!4227 otherR!12)) (toValue!5965 (transformation!4227 (rule!6529 (h!32066 tokens!456))))) (= lambda!85249 lambda!85231))))

(declare-fun bs!455129 () Bool)

(assert (= bs!455129 (and d!668177 d!668171)))

(assert (=> bs!455129 (= (= (toValue!5965 (transformation!4227 otherR!12)) (toValue!5965 (transformation!4227 (h!32067 rules!1750)))) (= lambda!85249 lambda!85248))))

(assert (=> d!668177 true))

(assert (=> d!668177 (< (dynLambda!11596 order!14921 (toValue!5965 (transformation!4227 otherR!12))) (dynLambda!11597 order!14923 lambda!85249))))

(assert (=> d!668177 (= (equivClasses!1626 (toChars!5824 (transformation!4227 otherR!12)) (toValue!5965 (transformation!4227 otherR!12))) (Forall2!681 lambda!85249))))

(declare-fun bs!455130 () Bool)

(assert (= bs!455130 d!668177))

(declare-fun m!2682777 () Bool)

(assert (=> bs!455130 m!2682777))

(assert (=> b!2251077 d!668177))

(declare-fun d!668179 () Bool)

(declare-fun e!1440979 () Bool)

(assert (=> d!668179 e!1440979))

(declare-fun res!962226 () Bool)

(assert (=> d!668179 (=> (not res!962226) (not e!1440979))))

(declare-fun lt!837034 () List!26757)

(assert (=> d!668179 (= res!962226 (= (content!3558 lt!837034) ((_ map or) (content!3558 (list!10233 (charsOf!2615 (_1!15591 (get!8048 lt!836819))))) (content!3558 (_2!15591 (get!8048 lt!836819))))))))

(declare-fun e!1440978 () List!26757)

(assert (=> d!668179 (= lt!837034 e!1440978)))

(declare-fun c!358154 () Bool)

(assert (=> d!668179 (= c!358154 ((_ is Nil!26663) (list!10233 (charsOf!2615 (_1!15591 (get!8048 lt!836819))))))))

(assert (=> d!668179 (= (++!6495 (list!10233 (charsOf!2615 (_1!15591 (get!8048 lt!836819)))) (_2!15591 (get!8048 lt!836819))) lt!837034)))

(declare-fun b!2251861 () Bool)

(assert (=> b!2251861 (= e!1440978 (_2!15591 (get!8048 lt!836819)))))

(declare-fun b!2251862 () Bool)

(assert (=> b!2251862 (= e!1440978 (Cons!26663 (h!32064 (list!10233 (charsOf!2615 (_1!15591 (get!8048 lt!836819))))) (++!6495 (t!200819 (list!10233 (charsOf!2615 (_1!15591 (get!8048 lt!836819))))) (_2!15591 (get!8048 lt!836819)))))))

(declare-fun b!2251864 () Bool)

(assert (=> b!2251864 (= e!1440979 (or (not (= (_2!15591 (get!8048 lt!836819)) Nil!26663)) (= lt!837034 (list!10233 (charsOf!2615 (_1!15591 (get!8048 lt!836819)))))))))

(declare-fun b!2251863 () Bool)

(declare-fun res!962227 () Bool)

(assert (=> b!2251863 (=> (not res!962227) (not e!1440979))))

(assert (=> b!2251863 (= res!962227 (= (size!20866 lt!837034) (+ (size!20866 (list!10233 (charsOf!2615 (_1!15591 (get!8048 lt!836819))))) (size!20866 (_2!15591 (get!8048 lt!836819))))))))

(assert (= (and d!668179 c!358154) b!2251861))

(assert (= (and d!668179 (not c!358154)) b!2251862))

(assert (= (and d!668179 res!962226) b!2251863))

(assert (= (and b!2251863 res!962227) b!2251864))

(declare-fun m!2682779 () Bool)

(assert (=> d!668179 m!2682779))

(assert (=> d!668179 m!2682155))

(declare-fun m!2682781 () Bool)

(assert (=> d!668179 m!2682781))

(declare-fun m!2682783 () Bool)

(assert (=> d!668179 m!2682783))

(declare-fun m!2682785 () Bool)

(assert (=> b!2251862 m!2682785))

(declare-fun m!2682787 () Bool)

(assert (=> b!2251863 m!2682787))

(assert (=> b!2251863 m!2682155))

(declare-fun m!2682789 () Bool)

(assert (=> b!2251863 m!2682789))

(assert (=> b!2251863 m!2682159))

(assert (=> b!2251374 d!668179))

(assert (=> b!2251374 d!668043))

(assert (=> b!2251374 d!668045))

(assert (=> b!2251374 d!668041))

(declare-fun b!2251866 () Bool)

(declare-fun e!1440981 () Int)

(declare-fun e!1440980 () Int)

(assert (=> b!2251866 (= e!1440981 e!1440980)))

(declare-fun c!358155 () Bool)

(assert (=> b!2251866 (= c!358155 (and ((_ is Cons!26666) (t!200822 rules!1750)) (not (= (h!32067 (t!200822 rules!1750)) r!2363))))))

(declare-fun b!2251868 () Bool)

(assert (=> b!2251868 (= e!1440980 (- 1))))

(declare-fun b!2251867 () Bool)

(assert (=> b!2251867 (= e!1440980 (+ 1 (getIndex!248 (t!200822 (t!200822 rules!1750)) r!2363)))))

(declare-fun d!668181 () Bool)

(declare-fun lt!837035 () Int)

(assert (=> d!668181 (>= lt!837035 0)))

(assert (=> d!668181 (= lt!837035 e!1440981)))

(declare-fun c!358156 () Bool)

(assert (=> d!668181 (= c!358156 (and ((_ is Cons!26666) (t!200822 rules!1750)) (= (h!32067 (t!200822 rules!1750)) r!2363)))))

(assert (=> d!668181 (contains!4577 (t!200822 rules!1750) r!2363)))

(assert (=> d!668181 (= (getIndex!248 (t!200822 rules!1750) r!2363) lt!837035)))

(declare-fun b!2251865 () Bool)

(assert (=> b!2251865 (= e!1440981 0)))

(assert (= (and d!668181 c!358156) b!2251865))

(assert (= (and d!668181 (not c!358156)) b!2251866))

(assert (= (and b!2251866 c!358155) b!2251867))

(assert (= (and b!2251866 (not c!358155)) b!2251868))

(declare-fun m!2682791 () Bool)

(assert (=> b!2251867 m!2682791))

(assert (=> d!668181 m!2681929))

(assert (=> b!2251149 d!668181))

(declare-fun d!668183 () Bool)

(assert (=> d!668183 (= (list!10234 (_1!15592 lt!836841)) (list!10238 (c!358008 (_1!15592 lt!836841))))))

(declare-fun bs!455131 () Bool)

(assert (= bs!455131 d!668183))

(declare-fun m!2682793 () Bool)

(assert (=> bs!455131 m!2682793))

(assert (=> b!2251485 d!668183))

(assert (=> b!2251485 d!667985))

(assert (=> b!2251485 d!667987))

(declare-fun d!668185 () Bool)

(declare-fun lt!837036 () Int)

(assert (=> d!668185 (>= lt!837036 0)))

(declare-fun e!1440982 () Int)

(assert (=> d!668185 (= lt!837036 e!1440982)))

(declare-fun c!358157 () Bool)

(assert (=> d!668185 (= c!358157 ((_ is Nil!26663) (list!10233 (charsOf!2615 (head!4794 tokens!456)))))))

(assert (=> d!668185 (= (size!20866 (list!10233 (charsOf!2615 (head!4794 tokens!456)))) lt!837036)))

(declare-fun b!2251869 () Bool)

(assert (=> b!2251869 (= e!1440982 0)))

(declare-fun b!2251870 () Bool)

(assert (=> b!2251870 (= e!1440982 (+ 1 (size!20866 (t!200819 (list!10233 (charsOf!2615 (head!4794 tokens!456)))))))))

(assert (= (and d!668185 c!358157) b!2251869))

(assert (= (and d!668185 (not c!358157)) b!2251870))

(declare-fun m!2682795 () Bool)

(assert (=> b!2251870 m!2682795))

(assert (=> d!667845 d!668185))

(assert (=> d!667845 d!667863))

(declare-fun d!668187 () Bool)

(declare-fun lt!837039 () Int)

(assert (=> d!668187 (= lt!837039 (size!20866 (list!10237 (c!358006 (charsOf!2615 (head!4794 tokens!456))))))))

(assert (=> d!668187 (= lt!837039 (ite ((_ is Empty!8602) (c!358006 (charsOf!2615 (head!4794 tokens!456)))) 0 (ite ((_ is Leaf!12701) (c!358006 (charsOf!2615 (head!4794 tokens!456)))) (csize!17435 (c!358006 (charsOf!2615 (head!4794 tokens!456)))) (csize!17434 (c!358006 (charsOf!2615 (head!4794 tokens!456)))))))))

(assert (=> d!668187 (= (size!20871 (c!358006 (charsOf!2615 (head!4794 tokens!456)))) lt!837039)))

(declare-fun bs!455132 () Bool)

(assert (= bs!455132 d!668187))

(assert (=> bs!455132 m!2682023))

(assert (=> bs!455132 m!2682023))

(declare-fun m!2682797 () Bool)

(assert (=> bs!455132 m!2682797))

(assert (=> d!667845 d!668187))

(declare-fun d!668189 () Bool)

(declare-fun lt!837040 () Int)

(assert (=> d!668189 (>= lt!837040 0)))

(declare-fun e!1440983 () Int)

(assert (=> d!668189 (= lt!837040 e!1440983)))

(declare-fun c!358158 () Bool)

(assert (=> d!668189 (= c!358158 ((_ is Nil!26663) (_2!15591 (get!8048 lt!836819))))))

(assert (=> d!668189 (= (size!20866 (_2!15591 (get!8048 lt!836819))) lt!837040)))

(declare-fun b!2251871 () Bool)

(assert (=> b!2251871 (= e!1440983 0)))

(declare-fun b!2251872 () Bool)

(assert (=> b!2251872 (= e!1440983 (+ 1 (size!20866 (t!200819 (_2!15591 (get!8048 lt!836819))))))))

(assert (= (and d!668189 c!358158) b!2251871))

(assert (= (and d!668189 (not c!358158)) b!2251872))

(declare-fun m!2682799 () Bool)

(assert (=> b!2251872 m!2682799))

(assert (=> b!2251376 d!668189))

(assert (=> b!2251376 d!668041))

(assert (=> b!2251376 d!667967))

(declare-fun bs!455133 () Bool)

(declare-fun d!668191 () Bool)

(assert (= bs!455133 (and d!668191 d!668063)))

(declare-fun lambda!85250 () Int)

(assert (=> bs!455133 (= (= (toValue!5965 (transformation!4227 r!2363)) (toValue!5965 (transformation!4227 (rule!6529 (h!32066 tokens!456))))) (= lambda!85250 lambda!85231))))

(declare-fun bs!455134 () Bool)

(assert (= bs!455134 (and d!668191 d!668171)))

(assert (=> bs!455134 (= (= (toValue!5965 (transformation!4227 r!2363)) (toValue!5965 (transformation!4227 (h!32067 rules!1750)))) (= lambda!85250 lambda!85248))))

(declare-fun bs!455135 () Bool)

(assert (= bs!455135 (and d!668191 d!668177)))

(assert (=> bs!455135 (= (= (toValue!5965 (transformation!4227 r!2363)) (toValue!5965 (transformation!4227 otherR!12))) (= lambda!85250 lambda!85249))))

(assert (=> d!668191 true))

(assert (=> d!668191 (< (dynLambda!11596 order!14921 (toValue!5965 (transformation!4227 r!2363))) (dynLambda!11597 order!14923 lambda!85250))))

(assert (=> d!668191 (= (equivClasses!1626 (toChars!5824 (transformation!4227 r!2363)) (toValue!5965 (transformation!4227 r!2363))) (Forall2!681 lambda!85250))))

(declare-fun bs!455136 () Bool)

(assert (= bs!455136 d!668191))

(declare-fun m!2682801 () Bool)

(assert (=> bs!455136 m!2682801))

(assert (=> b!2251101 d!668191))

(declare-fun b!2251873 () Bool)

(declare-fun e!1440989 () Bool)

(declare-fun e!1440985 () Bool)

(assert (=> b!2251873 (= e!1440989 e!1440985)))

(declare-fun res!962234 () Bool)

(assert (=> b!2251873 (=> (not res!962234) (not e!1440985))))

(declare-fun lt!837041 () Bool)

(assert (=> b!2251873 (= res!962234 (not lt!837041))))

(declare-fun d!668193 () Bool)

(declare-fun e!1440987 () Bool)

(assert (=> d!668193 e!1440987))

(declare-fun c!358161 () Bool)

(assert (=> d!668193 (= c!358161 ((_ is EmptyExpr!6575) (derivativeStep!1468 (regex!4227 r!2363) (head!4796 (list!10233 (charsOf!2615 (head!4794 tokens!456)))))))))

(declare-fun e!1440988 () Bool)

(assert (=> d!668193 (= lt!837041 e!1440988)))

(declare-fun c!358159 () Bool)

(assert (=> d!668193 (= c!358159 (isEmpty!15040 (tail!3249 (list!10233 (charsOf!2615 (head!4794 tokens!456))))))))

(assert (=> d!668193 (validRegex!2460 (derivativeStep!1468 (regex!4227 r!2363) (head!4796 (list!10233 (charsOf!2615 (head!4794 tokens!456))))))))

(assert (=> d!668193 (= (matchR!2836 (derivativeStep!1468 (regex!4227 r!2363) (head!4796 (list!10233 (charsOf!2615 (head!4794 tokens!456))))) (tail!3249 (list!10233 (charsOf!2615 (head!4794 tokens!456))))) lt!837041)))

(declare-fun b!2251874 () Bool)

(declare-fun e!1440986 () Bool)

(assert (=> b!2251874 (= e!1440985 e!1440986)))

(declare-fun res!962230 () Bool)

(assert (=> b!2251874 (=> res!962230 e!1440986)))

(declare-fun call!135607 () Bool)

(assert (=> b!2251874 (= res!962230 call!135607)))

(declare-fun b!2251875 () Bool)

(declare-fun res!962233 () Bool)

(declare-fun e!1440984 () Bool)

(assert (=> b!2251875 (=> (not res!962233) (not e!1440984))))

(assert (=> b!2251875 (= res!962233 (isEmpty!15040 (tail!3249 (tail!3249 (list!10233 (charsOf!2615 (head!4794 tokens!456)))))))))

(declare-fun b!2251876 () Bool)

(assert (=> b!2251876 (= e!1440988 (nullable!1806 (derivativeStep!1468 (regex!4227 r!2363) (head!4796 (list!10233 (charsOf!2615 (head!4794 tokens!456)))))))))

(declare-fun b!2251877 () Bool)

(assert (=> b!2251877 (= e!1440987 (= lt!837041 call!135607))))

(declare-fun b!2251878 () Bool)

(assert (=> b!2251878 (= e!1440988 (matchR!2836 (derivativeStep!1468 (derivativeStep!1468 (regex!4227 r!2363) (head!4796 (list!10233 (charsOf!2615 (head!4794 tokens!456))))) (head!4796 (tail!3249 (list!10233 (charsOf!2615 (head!4794 tokens!456)))))) (tail!3249 (tail!3249 (list!10233 (charsOf!2615 (head!4794 tokens!456)))))))))

(declare-fun b!2251879 () Bool)

(assert (=> b!2251879 (= e!1440984 (= (head!4796 (tail!3249 (list!10233 (charsOf!2615 (head!4794 tokens!456))))) (c!358007 (derivativeStep!1468 (regex!4227 r!2363) (head!4796 (list!10233 (charsOf!2615 (head!4794 tokens!456))))))))))

(declare-fun b!2251880 () Bool)

(declare-fun res!962229 () Bool)

(assert (=> b!2251880 (=> res!962229 e!1440986)))

(assert (=> b!2251880 (= res!962229 (not (isEmpty!15040 (tail!3249 (tail!3249 (list!10233 (charsOf!2615 (head!4794 tokens!456))))))))))

(declare-fun b!2251881 () Bool)

(assert (=> b!2251881 (= e!1440986 (not (= (head!4796 (tail!3249 (list!10233 (charsOf!2615 (head!4794 tokens!456))))) (c!358007 (derivativeStep!1468 (regex!4227 r!2363) (head!4796 (list!10233 (charsOf!2615 (head!4794 tokens!456)))))))))))

(declare-fun b!2251882 () Bool)

(declare-fun res!962231 () Bool)

(assert (=> b!2251882 (=> (not res!962231) (not e!1440984))))

(assert (=> b!2251882 (= res!962231 (not call!135607))))

(declare-fun b!2251883 () Bool)

(declare-fun e!1440990 () Bool)

(assert (=> b!2251883 (= e!1440990 (not lt!837041))))

(declare-fun b!2251884 () Bool)

(assert (=> b!2251884 (= e!1440987 e!1440990)))

(declare-fun c!358160 () Bool)

(assert (=> b!2251884 (= c!358160 ((_ is EmptyLang!6575) (derivativeStep!1468 (regex!4227 r!2363) (head!4796 (list!10233 (charsOf!2615 (head!4794 tokens!456)))))))))

(declare-fun b!2251885 () Bool)

(declare-fun res!962228 () Bool)

(assert (=> b!2251885 (=> res!962228 e!1440989)))

(assert (=> b!2251885 (= res!962228 e!1440984)))

(declare-fun res!962235 () Bool)

(assert (=> b!2251885 (=> (not res!962235) (not e!1440984))))

(assert (=> b!2251885 (= res!962235 lt!837041)))

(declare-fun b!2251886 () Bool)

(declare-fun res!962232 () Bool)

(assert (=> b!2251886 (=> res!962232 e!1440989)))

(assert (=> b!2251886 (= res!962232 (not ((_ is ElementMatch!6575) (derivativeStep!1468 (regex!4227 r!2363) (head!4796 (list!10233 (charsOf!2615 (head!4794 tokens!456))))))))))

(assert (=> b!2251886 (= e!1440990 e!1440989)))

(declare-fun bm!135602 () Bool)

(assert (=> bm!135602 (= call!135607 (isEmpty!15040 (tail!3249 (list!10233 (charsOf!2615 (head!4794 tokens!456))))))))

(assert (= (and d!668193 c!358159) b!2251876))

(assert (= (and d!668193 (not c!358159)) b!2251878))

(assert (= (and d!668193 c!358161) b!2251877))

(assert (= (and d!668193 (not c!358161)) b!2251884))

(assert (= (and b!2251884 c!358160) b!2251883))

(assert (= (and b!2251884 (not c!358160)) b!2251886))

(assert (= (and b!2251886 (not res!962232)) b!2251885))

(assert (= (and b!2251885 res!962235) b!2251882))

(assert (= (and b!2251882 res!962231) b!2251875))

(assert (= (and b!2251875 res!962233) b!2251879))

(assert (= (and b!2251885 (not res!962228)) b!2251873))

(assert (= (and b!2251873 res!962234) b!2251874))

(assert (= (and b!2251874 (not res!962230)) b!2251880))

(assert (= (and b!2251880 (not res!962229)) b!2251881))

(assert (= (or b!2251877 b!2251874 b!2251882) bm!135602))

(assert (=> b!2251875 m!2681991))

(declare-fun m!2682803 () Bool)

(assert (=> b!2251875 m!2682803))

(assert (=> b!2251875 m!2682803))

(declare-fun m!2682805 () Bool)

(assert (=> b!2251875 m!2682805))

(assert (=> d!668193 m!2681991))

(assert (=> d!668193 m!2681999))

(assert (=> d!668193 m!2682017))

(declare-fun m!2682807 () Bool)

(assert (=> d!668193 m!2682807))

(assert (=> b!2251880 m!2681991))

(assert (=> b!2251880 m!2682803))

(assert (=> b!2251880 m!2682803))

(assert (=> b!2251880 m!2682805))

(assert (=> b!2251881 m!2681991))

(declare-fun m!2682809 () Bool)

(assert (=> b!2251881 m!2682809))

(assert (=> b!2251876 m!2682017))

(declare-fun m!2682811 () Bool)

(assert (=> b!2251876 m!2682811))

(assert (=> b!2251878 m!2681991))

(assert (=> b!2251878 m!2682809))

(assert (=> b!2251878 m!2682017))

(assert (=> b!2251878 m!2682809))

(declare-fun m!2682813 () Bool)

(assert (=> b!2251878 m!2682813))

(assert (=> b!2251878 m!2681991))

(assert (=> b!2251878 m!2682803))

(assert (=> b!2251878 m!2682813))

(assert (=> b!2251878 m!2682803))

(declare-fun m!2682815 () Bool)

(assert (=> b!2251878 m!2682815))

(assert (=> b!2251879 m!2681991))

(assert (=> b!2251879 m!2682809))

(assert (=> bm!135602 m!2681991))

(assert (=> bm!135602 m!2681999))

(assert (=> b!2251204 d!668193))

(declare-fun bm!135611 () Bool)

(declare-fun call!135618 () Regex!6575)

(declare-fun c!358173 () Bool)

(declare-fun c!358175 () Bool)

(assert (=> bm!135611 (= call!135618 (derivativeStep!1468 (ite c!358175 (regTwo!13663 (regex!4227 r!2363)) (ite c!358173 (reg!6904 (regex!4227 r!2363)) (regOne!13662 (regex!4227 r!2363)))) (head!4796 (list!10233 (charsOf!2615 (head!4794 tokens!456))))))))

(declare-fun b!2251907 () Bool)

(declare-fun e!1441003 () Regex!6575)

(declare-fun e!1441005 () Regex!6575)

(assert (=> b!2251907 (= e!1441003 e!1441005)))

(assert (=> b!2251907 (= c!358173 ((_ is Star!6575) (regex!4227 r!2363)))))

(declare-fun bm!135612 () Bool)

(declare-fun call!135616 () Regex!6575)

(assert (=> bm!135612 (= call!135616 call!135618)))

(declare-fun b!2251908 () Bool)

(declare-fun e!1441001 () Regex!6575)

(declare-fun e!1441002 () Regex!6575)

(assert (=> b!2251908 (= e!1441001 e!1441002)))

(declare-fun c!358176 () Bool)

(assert (=> b!2251908 (= c!358176 ((_ is ElementMatch!6575) (regex!4227 r!2363)))))

(declare-fun b!2251909 () Bool)

(assert (=> b!2251909 (= e!1441002 (ite (= (head!4796 (list!10233 (charsOf!2615 (head!4794 tokens!456)))) (c!358007 (regex!4227 r!2363))) EmptyExpr!6575 EmptyLang!6575))))

(declare-fun bm!135613 () Bool)

(declare-fun call!135619 () Regex!6575)

(assert (=> bm!135613 (= call!135619 (derivativeStep!1468 (ite c!358175 (regOne!13663 (regex!4227 r!2363)) (regTwo!13662 (regex!4227 r!2363))) (head!4796 (list!10233 (charsOf!2615 (head!4794 tokens!456))))))))

(declare-fun b!2251911 () Bool)

(assert (=> b!2251911 (= e!1441001 EmptyLang!6575)))

(declare-fun bm!135614 () Bool)

(declare-fun call!135617 () Regex!6575)

(assert (=> bm!135614 (= call!135617 call!135616)))

(declare-fun b!2251912 () Bool)

(assert (=> b!2251912 (= e!1441003 (Union!6575 call!135619 call!135618))))

(declare-fun d!668195 () Bool)

(declare-fun lt!837044 () Regex!6575)

(assert (=> d!668195 (validRegex!2460 lt!837044)))

(assert (=> d!668195 (= lt!837044 e!1441001)))

(declare-fun c!358174 () Bool)

(assert (=> d!668195 (= c!358174 (or ((_ is EmptyExpr!6575) (regex!4227 r!2363)) ((_ is EmptyLang!6575) (regex!4227 r!2363))))))

(assert (=> d!668195 (validRegex!2460 (regex!4227 r!2363))))

(assert (=> d!668195 (= (derivativeStep!1468 (regex!4227 r!2363) (head!4796 (list!10233 (charsOf!2615 (head!4794 tokens!456))))) lt!837044)))

(declare-fun b!2251910 () Bool)

(declare-fun e!1441004 () Regex!6575)

(assert (=> b!2251910 (= e!1441004 (Union!6575 (Concat!10965 call!135617 (regTwo!13662 (regex!4227 r!2363))) EmptyLang!6575))))

(declare-fun b!2251913 () Bool)

(declare-fun c!358172 () Bool)

(assert (=> b!2251913 (= c!358172 (nullable!1806 (regOne!13662 (regex!4227 r!2363))))))

(assert (=> b!2251913 (= e!1441005 e!1441004)))

(declare-fun b!2251914 () Bool)

(assert (=> b!2251914 (= e!1441005 (Concat!10965 call!135616 (regex!4227 r!2363)))))

(declare-fun b!2251915 () Bool)

(assert (=> b!2251915 (= c!358175 ((_ is Union!6575) (regex!4227 r!2363)))))

(assert (=> b!2251915 (= e!1441002 e!1441003)))

(declare-fun b!2251916 () Bool)

(assert (=> b!2251916 (= e!1441004 (Union!6575 (Concat!10965 call!135617 (regTwo!13662 (regex!4227 r!2363))) call!135619))))

(assert (= (and d!668195 c!358174) b!2251911))

(assert (= (and d!668195 (not c!358174)) b!2251908))

(assert (= (and b!2251908 c!358176) b!2251909))

(assert (= (and b!2251908 (not c!358176)) b!2251915))

(assert (= (and b!2251915 c!358175) b!2251912))

(assert (= (and b!2251915 (not c!358175)) b!2251907))

(assert (= (and b!2251907 c!358173) b!2251914))

(assert (= (and b!2251907 (not c!358173)) b!2251913))

(assert (= (and b!2251913 c!358172) b!2251916))

(assert (= (and b!2251913 (not c!358172)) b!2251910))

(assert (= (or b!2251916 b!2251910) bm!135614))

(assert (= (or b!2251914 bm!135614) bm!135612))

(assert (= (or b!2251912 b!2251916) bm!135613))

(assert (= (or b!2251912 bm!135612) bm!135611))

(assert (=> bm!135611 m!2682013))

(declare-fun m!2682817 () Bool)

(assert (=> bm!135611 m!2682817))

(assert (=> bm!135613 m!2682013))

(declare-fun m!2682819 () Bool)

(assert (=> bm!135613 m!2682819))

(declare-fun m!2682821 () Bool)

(assert (=> d!668195 m!2682821))

(assert (=> d!668195 m!2682011))

(declare-fun m!2682823 () Bool)

(assert (=> b!2251913 m!2682823))

(assert (=> b!2251204 d!668195))

(assert (=> b!2251204 d!668083))

(assert (=> b!2251204 d!668007))

(declare-fun d!668197 () Bool)

(assert (=> d!668197 (= (inv!36195 (tag!4717 (h!32067 (t!200822 rules!1750)))) (= (mod (str.len (value!134288 (tag!4717 (h!32067 (t!200822 rules!1750))))) 2) 0))))

(assert (=> b!2251563 d!668197))

(declare-fun d!668199 () Bool)

(declare-fun res!962236 () Bool)

(declare-fun e!1441006 () Bool)

(assert (=> d!668199 (=> (not res!962236) (not e!1441006))))

(assert (=> d!668199 (= res!962236 (semiInverseModEq!1707 (toChars!5824 (transformation!4227 (h!32067 (t!200822 rules!1750)))) (toValue!5965 (transformation!4227 (h!32067 (t!200822 rules!1750))))))))

(assert (=> d!668199 (= (inv!36198 (transformation!4227 (h!32067 (t!200822 rules!1750)))) e!1441006)))

(declare-fun b!2251917 () Bool)

(assert (=> b!2251917 (= e!1441006 (equivClasses!1626 (toChars!5824 (transformation!4227 (h!32067 (t!200822 rules!1750)))) (toValue!5965 (transformation!4227 (h!32067 (t!200822 rules!1750))))))))

(assert (= (and d!668199 res!962236) b!2251917))

(declare-fun m!2682825 () Bool)

(assert (=> d!668199 m!2682825))

(declare-fun m!2682827 () Bool)

(assert (=> b!2251917 m!2682827))

(assert (=> b!2251563 d!668199))

(assert (=> d!667965 d!667961))

(assert (=> d!667965 d!667963))

(declare-fun d!668201 () Bool)

(assert (=> d!668201 (isPrefix!2217 lt!836736 (++!6495 lt!836736 (_2!15591 lt!836738)))))

(assert (=> d!668201 true))

(declare-fun _$46!1290 () Unit!39604)

(assert (=> d!668201 (= (choose!13174 lt!836736 (_2!15591 lt!836738)) _$46!1290)))

(declare-fun bs!455137 () Bool)

(assert (= bs!455137 d!668201))

(assert (=> bs!455137 m!2681859))

(assert (=> bs!455137 m!2681859))

(assert (=> bs!455137 m!2681861))

(assert (=> d!667965 d!668201))

(declare-fun d!668203 () Bool)

(declare-fun c!358177 () Bool)

(assert (=> d!668203 (= c!358177 ((_ is Node!8602) (c!358006 (dynLambda!11593 (toChars!5824 (transformation!4227 (rule!6529 (head!4794 tokens!456)))) (value!134289 (head!4794 tokens!456))))))))

(declare-fun e!1441007 () Bool)

(assert (=> d!668203 (= (inv!36202 (c!358006 (dynLambda!11593 (toChars!5824 (transformation!4227 (rule!6529 (head!4794 tokens!456)))) (value!134289 (head!4794 tokens!456))))) e!1441007)))

(declare-fun b!2251918 () Bool)

(assert (=> b!2251918 (= e!1441007 (inv!36204 (c!358006 (dynLambda!11593 (toChars!5824 (transformation!4227 (rule!6529 (head!4794 tokens!456)))) (value!134289 (head!4794 tokens!456))))))))

(declare-fun b!2251919 () Bool)

(declare-fun e!1441008 () Bool)

(assert (=> b!2251919 (= e!1441007 e!1441008)))

(declare-fun res!962237 () Bool)

(assert (=> b!2251919 (= res!962237 (not ((_ is Leaf!12701) (c!358006 (dynLambda!11593 (toChars!5824 (transformation!4227 (rule!6529 (head!4794 tokens!456)))) (value!134289 (head!4794 tokens!456)))))))))

(assert (=> b!2251919 (=> res!962237 e!1441008)))

(declare-fun b!2251920 () Bool)

(assert (=> b!2251920 (= e!1441008 (inv!36205 (c!358006 (dynLambda!11593 (toChars!5824 (transformation!4227 (rule!6529 (head!4794 tokens!456)))) (value!134289 (head!4794 tokens!456))))))))

(assert (= (and d!668203 c!358177) b!2251918))

(assert (= (and d!668203 (not c!358177)) b!2251919))

(assert (= (and b!2251919 (not res!962237)) b!2251920))

(declare-fun m!2682829 () Bool)

(assert (=> b!2251918 m!2682829))

(declare-fun m!2682831 () Bool)

(assert (=> b!2251920 m!2682831))

(assert (=> b!2251132 d!668203))

(assert (=> b!2251202 d!668145))

(assert (=> d!667827 d!668161))

(declare-fun d!668205 () Bool)

(assert (=> d!668205 (= (inv!36195 (tag!4717 (rule!6529 (h!32066 (t!200821 tokens!456))))) (= (mod (str.len (value!134288 (tag!4717 (rule!6529 (h!32066 (t!200821 tokens!456)))))) 2) 0))))

(assert (=> b!2251579 d!668205))

(declare-fun d!668207 () Bool)

(declare-fun res!962238 () Bool)

(declare-fun e!1441009 () Bool)

(assert (=> d!668207 (=> (not res!962238) (not e!1441009))))

(assert (=> d!668207 (= res!962238 (semiInverseModEq!1707 (toChars!5824 (transformation!4227 (rule!6529 (h!32066 (t!200821 tokens!456))))) (toValue!5965 (transformation!4227 (rule!6529 (h!32066 (t!200821 tokens!456)))))))))

(assert (=> d!668207 (= (inv!36198 (transformation!4227 (rule!6529 (h!32066 (t!200821 tokens!456))))) e!1441009)))

(declare-fun b!2251921 () Bool)

(assert (=> b!2251921 (= e!1441009 (equivClasses!1626 (toChars!5824 (transformation!4227 (rule!6529 (h!32066 (t!200821 tokens!456))))) (toValue!5965 (transformation!4227 (rule!6529 (h!32066 (t!200821 tokens!456)))))))))

(assert (= (and d!668207 res!962238) b!2251921))

(declare-fun m!2682833 () Bool)

(assert (=> d!668207 m!2682833))

(declare-fun m!2682835 () Bool)

(assert (=> b!2251921 m!2682835))

(assert (=> b!2251579 d!668207))

(declare-fun b!2251924 () Bool)

(declare-fun e!1441010 () Bool)

(declare-fun tp!711319 () Bool)

(assert (=> b!2251924 (= e!1441010 tp!711319)))

(assert (=> b!2251538 (= tp!711268 e!1441010)))

(declare-fun b!2251925 () Bool)

(declare-fun tp!711321 () Bool)

(declare-fun tp!711318 () Bool)

(assert (=> b!2251925 (= e!1441010 (and tp!711321 tp!711318))))

(declare-fun b!2251923 () Bool)

(declare-fun tp!711317 () Bool)

(declare-fun tp!711320 () Bool)

(assert (=> b!2251923 (= e!1441010 (and tp!711317 tp!711320))))

(declare-fun b!2251922 () Bool)

(assert (=> b!2251922 (= e!1441010 tp_is_empty!10371)))

(assert (= (and b!2251538 ((_ is ElementMatch!6575) (reg!6904 (regex!4227 (h!32067 rules!1750))))) b!2251922))

(assert (= (and b!2251538 ((_ is Concat!10965) (reg!6904 (regex!4227 (h!32067 rules!1750))))) b!2251923))

(assert (= (and b!2251538 ((_ is Star!6575) (reg!6904 (regex!4227 (h!32067 rules!1750))))) b!2251924))

(assert (= (and b!2251538 ((_ is Union!6575) (reg!6904 (regex!4227 (h!32067 rules!1750))))) b!2251925))

(declare-fun b!2251928 () Bool)

(declare-fun e!1441011 () Bool)

(declare-fun tp!711324 () Bool)

(assert (=> b!2251928 (= e!1441011 tp!711324)))

(assert (=> b!2251537 (= tp!711266 e!1441011)))

(declare-fun b!2251929 () Bool)

(declare-fun tp!711326 () Bool)

(declare-fun tp!711323 () Bool)

(assert (=> b!2251929 (= e!1441011 (and tp!711326 tp!711323))))

(declare-fun b!2251927 () Bool)

(declare-fun tp!711322 () Bool)

(declare-fun tp!711325 () Bool)

(assert (=> b!2251927 (= e!1441011 (and tp!711322 tp!711325))))

(declare-fun b!2251926 () Bool)

(assert (=> b!2251926 (= e!1441011 tp_is_empty!10371)))

(assert (= (and b!2251537 ((_ is ElementMatch!6575) (regOne!13662 (regex!4227 (h!32067 rules!1750))))) b!2251926))

(assert (= (and b!2251537 ((_ is Concat!10965) (regOne!13662 (regex!4227 (h!32067 rules!1750))))) b!2251927))

(assert (= (and b!2251537 ((_ is Star!6575) (regOne!13662 (regex!4227 (h!32067 rules!1750))))) b!2251928))

(assert (= (and b!2251537 ((_ is Union!6575) (regOne!13662 (regex!4227 (h!32067 rules!1750))))) b!2251929))

(declare-fun b!2251932 () Bool)

(declare-fun e!1441012 () Bool)

(declare-fun tp!711329 () Bool)

(assert (=> b!2251932 (= e!1441012 tp!711329)))

(assert (=> b!2251537 (= tp!711269 e!1441012)))

(declare-fun b!2251933 () Bool)

(declare-fun tp!711331 () Bool)

(declare-fun tp!711328 () Bool)

(assert (=> b!2251933 (= e!1441012 (and tp!711331 tp!711328))))

(declare-fun b!2251931 () Bool)

(declare-fun tp!711327 () Bool)

(declare-fun tp!711330 () Bool)

(assert (=> b!2251931 (= e!1441012 (and tp!711327 tp!711330))))

(declare-fun b!2251930 () Bool)

(assert (=> b!2251930 (= e!1441012 tp_is_empty!10371)))

(assert (= (and b!2251537 ((_ is ElementMatch!6575) (regTwo!13662 (regex!4227 (h!32067 rules!1750))))) b!2251930))

(assert (= (and b!2251537 ((_ is Concat!10965) (regTwo!13662 (regex!4227 (h!32067 rules!1750))))) b!2251931))

(assert (= (and b!2251537 ((_ is Star!6575) (regTwo!13662 (regex!4227 (h!32067 rules!1750))))) b!2251932))

(assert (= (and b!2251537 ((_ is Union!6575) (regTwo!13662 (regex!4227 (h!32067 rules!1750))))) b!2251933))

(declare-fun b!2251936 () Bool)

(declare-fun e!1441013 () Bool)

(declare-fun tp!711334 () Bool)

(assert (=> b!2251936 (= e!1441013 tp!711334)))

(assert (=> b!2251539 (= tp!711270 e!1441013)))

(declare-fun b!2251937 () Bool)

(declare-fun tp!711336 () Bool)

(declare-fun tp!711333 () Bool)

(assert (=> b!2251937 (= e!1441013 (and tp!711336 tp!711333))))

(declare-fun b!2251935 () Bool)

(declare-fun tp!711332 () Bool)

(declare-fun tp!711335 () Bool)

(assert (=> b!2251935 (= e!1441013 (and tp!711332 tp!711335))))

(declare-fun b!2251934 () Bool)

(assert (=> b!2251934 (= e!1441013 tp_is_empty!10371)))

(assert (= (and b!2251539 ((_ is ElementMatch!6575) (regOne!13663 (regex!4227 (h!32067 rules!1750))))) b!2251934))

(assert (= (and b!2251539 ((_ is Concat!10965) (regOne!13663 (regex!4227 (h!32067 rules!1750))))) b!2251935))

(assert (= (and b!2251539 ((_ is Star!6575) (regOne!13663 (regex!4227 (h!32067 rules!1750))))) b!2251936))

(assert (= (and b!2251539 ((_ is Union!6575) (regOne!13663 (regex!4227 (h!32067 rules!1750))))) b!2251937))

(declare-fun b!2251940 () Bool)

(declare-fun e!1441014 () Bool)

(declare-fun tp!711339 () Bool)

(assert (=> b!2251940 (= e!1441014 tp!711339)))

(assert (=> b!2251539 (= tp!711267 e!1441014)))

(declare-fun b!2251941 () Bool)

(declare-fun tp!711341 () Bool)

(declare-fun tp!711338 () Bool)

(assert (=> b!2251941 (= e!1441014 (and tp!711341 tp!711338))))

(declare-fun b!2251939 () Bool)

(declare-fun tp!711337 () Bool)

(declare-fun tp!711340 () Bool)

(assert (=> b!2251939 (= e!1441014 (and tp!711337 tp!711340))))

(declare-fun b!2251938 () Bool)

(assert (=> b!2251938 (= e!1441014 tp_is_empty!10371)))

(assert (= (and b!2251539 ((_ is ElementMatch!6575) (regTwo!13663 (regex!4227 (h!32067 rules!1750))))) b!2251938))

(assert (= (and b!2251539 ((_ is Concat!10965) (regTwo!13663 (regex!4227 (h!32067 rules!1750))))) b!2251939))

(assert (= (and b!2251539 ((_ is Star!6575) (regTwo!13663 (regex!4227 (h!32067 rules!1750))))) b!2251940))

(assert (= (and b!2251539 ((_ is Union!6575) (regTwo!13663 (regex!4227 (h!32067 rules!1750))))) b!2251941))

(declare-fun e!1441019 () Bool)

(declare-fun tp!711349 () Bool)

(declare-fun b!2251950 () Bool)

(declare-fun tp!711350 () Bool)

(assert (=> b!2251950 (= e!1441019 (and (inv!36202 (left!20256 (c!358006 (dynLambda!11593 (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456)))) (value!134289 (h!32066 tokens!456)))))) tp!711349 (inv!36202 (right!20586 (c!358006 (dynLambda!11593 (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456)))) (value!134289 (h!32066 tokens!456)))))) tp!711350))))

(declare-fun b!2251952 () Bool)

(declare-fun e!1441020 () Bool)

(declare-fun tp!711348 () Bool)

(assert (=> b!2251952 (= e!1441020 tp!711348)))

(declare-fun b!2251951 () Bool)

(declare-fun inv!36208 (IArray!17209) Bool)

(assert (=> b!2251951 (= e!1441019 (and (inv!36208 (xs!11544 (c!358006 (dynLambda!11593 (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456)))) (value!134289 (h!32066 tokens!456)))))) e!1441020))))

(assert (=> b!2251510 (= tp!711250 (and (inv!36202 (c!358006 (dynLambda!11593 (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456)))) (value!134289 (h!32066 tokens!456))))) e!1441019))))

(assert (= (and b!2251510 ((_ is Node!8602) (c!358006 (dynLambda!11593 (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456)))) (value!134289 (h!32066 tokens!456)))))) b!2251950))

(assert (= b!2251951 b!2251952))

(assert (= (and b!2251510 ((_ is Leaf!12701) (c!358006 (dynLambda!11593 (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456)))) (value!134289 (h!32066 tokens!456)))))) b!2251951))

(declare-fun m!2682837 () Bool)

(assert (=> b!2251950 m!2682837))

(declare-fun m!2682839 () Bool)

(assert (=> b!2251950 m!2682839))

(declare-fun m!2682841 () Bool)

(assert (=> b!2251951 m!2682841))

(assert (=> b!2251510 m!2682285))

(declare-fun b!2251955 () Bool)

(declare-fun e!1441021 () Bool)

(declare-fun tp!711353 () Bool)

(assert (=> b!2251955 (= e!1441021 tp!711353)))

(assert (=> b!2251553 (= tp!711284 e!1441021)))

(declare-fun b!2251956 () Bool)

(declare-fun tp!711355 () Bool)

(declare-fun tp!711352 () Bool)

(assert (=> b!2251956 (= e!1441021 (and tp!711355 tp!711352))))

(declare-fun b!2251954 () Bool)

(declare-fun tp!711351 () Bool)

(declare-fun tp!711354 () Bool)

(assert (=> b!2251954 (= e!1441021 (and tp!711351 tp!711354))))

(declare-fun b!2251953 () Bool)

(assert (=> b!2251953 (= e!1441021 tp_is_empty!10371)))

(assert (= (and b!2251553 ((_ is ElementMatch!6575) (regOne!13663 (regex!4227 (rule!6529 (h!32066 tokens!456)))))) b!2251953))

(assert (= (and b!2251553 ((_ is Concat!10965) (regOne!13663 (regex!4227 (rule!6529 (h!32066 tokens!456)))))) b!2251954))

(assert (= (and b!2251553 ((_ is Star!6575) (regOne!13663 (regex!4227 (rule!6529 (h!32066 tokens!456)))))) b!2251955))

(assert (= (and b!2251553 ((_ is Union!6575) (regOne!13663 (regex!4227 (rule!6529 (h!32066 tokens!456)))))) b!2251956))

(declare-fun b!2251959 () Bool)

(declare-fun e!1441022 () Bool)

(declare-fun tp!711358 () Bool)

(assert (=> b!2251959 (= e!1441022 tp!711358)))

(assert (=> b!2251553 (= tp!711281 e!1441022)))

(declare-fun b!2251960 () Bool)

(declare-fun tp!711360 () Bool)

(declare-fun tp!711357 () Bool)

(assert (=> b!2251960 (= e!1441022 (and tp!711360 tp!711357))))

(declare-fun b!2251958 () Bool)

(declare-fun tp!711356 () Bool)

(declare-fun tp!711359 () Bool)

(assert (=> b!2251958 (= e!1441022 (and tp!711356 tp!711359))))

(declare-fun b!2251957 () Bool)

(assert (=> b!2251957 (= e!1441022 tp_is_empty!10371)))

(assert (= (and b!2251553 ((_ is ElementMatch!6575) (regTwo!13663 (regex!4227 (rule!6529 (h!32066 tokens!456)))))) b!2251957))

(assert (= (and b!2251553 ((_ is Concat!10965) (regTwo!13663 (regex!4227 (rule!6529 (h!32066 tokens!456)))))) b!2251958))

(assert (= (and b!2251553 ((_ is Star!6575) (regTwo!13663 (regex!4227 (rule!6529 (h!32066 tokens!456)))))) b!2251959))

(assert (= (and b!2251553 ((_ is Union!6575) (regTwo!13663 (regex!4227 (rule!6529 (h!32066 tokens!456)))))) b!2251960))

(declare-fun b!2251961 () Bool)

(declare-fun e!1441023 () Bool)

(declare-fun tp!711361 () Bool)

(assert (=> b!2251961 (= e!1441023 (and tp_is_empty!10371 tp!711361))))

(assert (=> b!2251566 (= tp!711298 e!1441023)))

(assert (= (and b!2251566 ((_ is Cons!26663) (t!200819 (t!200819 input!1722)))) b!2251961))

(declare-fun b!2251964 () Bool)

(declare-fun e!1441024 () Bool)

(declare-fun tp!711364 () Bool)

(assert (=> b!2251964 (= e!1441024 tp!711364)))

(assert (=> b!2251548 (= tp!711278 e!1441024)))

(declare-fun b!2251965 () Bool)

(declare-fun tp!711366 () Bool)

(declare-fun tp!711363 () Bool)

(assert (=> b!2251965 (= e!1441024 (and tp!711366 tp!711363))))

(declare-fun b!2251963 () Bool)

(declare-fun tp!711362 () Bool)

(declare-fun tp!711365 () Bool)

(assert (=> b!2251963 (= e!1441024 (and tp!711362 tp!711365))))

(declare-fun b!2251962 () Bool)

(assert (=> b!2251962 (= e!1441024 tp_is_empty!10371)))

(assert (= (and b!2251548 ((_ is ElementMatch!6575) (regOne!13663 (regex!4227 r!2363)))) b!2251962))

(assert (= (and b!2251548 ((_ is Concat!10965) (regOne!13663 (regex!4227 r!2363)))) b!2251963))

(assert (= (and b!2251548 ((_ is Star!6575) (regOne!13663 (regex!4227 r!2363)))) b!2251964))

(assert (= (and b!2251548 ((_ is Union!6575) (regOne!13663 (regex!4227 r!2363)))) b!2251965))

(declare-fun b!2251968 () Bool)

(declare-fun e!1441025 () Bool)

(declare-fun tp!711369 () Bool)

(assert (=> b!2251968 (= e!1441025 tp!711369)))

(assert (=> b!2251548 (= tp!711275 e!1441025)))

(declare-fun b!2251969 () Bool)

(declare-fun tp!711371 () Bool)

(declare-fun tp!711368 () Bool)

(assert (=> b!2251969 (= e!1441025 (and tp!711371 tp!711368))))

(declare-fun b!2251967 () Bool)

(declare-fun tp!711367 () Bool)

(declare-fun tp!711370 () Bool)

(assert (=> b!2251967 (= e!1441025 (and tp!711367 tp!711370))))

(declare-fun b!2251966 () Bool)

(assert (=> b!2251966 (= e!1441025 tp_is_empty!10371)))

(assert (= (and b!2251548 ((_ is ElementMatch!6575) (regTwo!13663 (regex!4227 r!2363)))) b!2251966))

(assert (= (and b!2251548 ((_ is Concat!10965) (regTwo!13663 (regex!4227 r!2363)))) b!2251967))

(assert (= (and b!2251548 ((_ is Star!6575) (regTwo!13663 (regex!4227 r!2363)))) b!2251968))

(assert (= (and b!2251548 ((_ is Union!6575) (regTwo!13663 (regex!4227 r!2363)))) b!2251969))

(declare-fun b!2251970 () Bool)

(declare-fun e!1441026 () Bool)

(declare-fun tp!711372 () Bool)

(assert (=> b!2251970 (= e!1441026 (and tp_is_empty!10371 tp!711372))))

(assert (=> b!2251565 (= tp!711297 e!1441026)))

(assert (= (and b!2251565 ((_ is Cons!26663) (t!200819 (t!200819 otherP!12)))) b!2251970))

(declare-fun b!2251973 () Bool)

(declare-fun e!1441027 () Bool)

(declare-fun tp!711375 () Bool)

(assert (=> b!2251973 (= e!1441027 tp!711375)))

(assert (=> b!2251546 (= tp!711274 e!1441027)))

(declare-fun b!2251974 () Bool)

(declare-fun tp!711377 () Bool)

(declare-fun tp!711374 () Bool)

(assert (=> b!2251974 (= e!1441027 (and tp!711377 tp!711374))))

(declare-fun b!2251972 () Bool)

(declare-fun tp!711373 () Bool)

(declare-fun tp!711376 () Bool)

(assert (=> b!2251972 (= e!1441027 (and tp!711373 tp!711376))))

(declare-fun b!2251971 () Bool)

(assert (=> b!2251971 (= e!1441027 tp_is_empty!10371)))

(assert (= (and b!2251546 ((_ is ElementMatch!6575) (regOne!13662 (regex!4227 r!2363)))) b!2251971))

(assert (= (and b!2251546 ((_ is Concat!10965) (regOne!13662 (regex!4227 r!2363)))) b!2251972))

(assert (= (and b!2251546 ((_ is Star!6575) (regOne!13662 (regex!4227 r!2363)))) b!2251973))

(assert (= (and b!2251546 ((_ is Union!6575) (regOne!13662 (regex!4227 r!2363)))) b!2251974))

(declare-fun b!2251977 () Bool)

(declare-fun e!1441028 () Bool)

(declare-fun tp!711380 () Bool)

(assert (=> b!2251977 (= e!1441028 tp!711380)))

(assert (=> b!2251546 (= tp!711277 e!1441028)))

(declare-fun b!2251978 () Bool)

(declare-fun tp!711382 () Bool)

(declare-fun tp!711379 () Bool)

(assert (=> b!2251978 (= e!1441028 (and tp!711382 tp!711379))))

(declare-fun b!2251976 () Bool)

(declare-fun tp!711378 () Bool)

(declare-fun tp!711381 () Bool)

(assert (=> b!2251976 (= e!1441028 (and tp!711378 tp!711381))))

(declare-fun b!2251975 () Bool)

(assert (=> b!2251975 (= e!1441028 tp_is_empty!10371)))

(assert (= (and b!2251546 ((_ is ElementMatch!6575) (regTwo!13662 (regex!4227 r!2363)))) b!2251975))

(assert (= (and b!2251546 ((_ is Concat!10965) (regTwo!13662 (regex!4227 r!2363)))) b!2251976))

(assert (= (and b!2251546 ((_ is Star!6575) (regTwo!13662 (regex!4227 r!2363)))) b!2251977))

(assert (= (and b!2251546 ((_ is Union!6575) (regTwo!13662 (regex!4227 r!2363)))) b!2251978))

(declare-fun b!2251981 () Bool)

(declare-fun e!1441029 () Bool)

(declare-fun tp!711385 () Bool)

(assert (=> b!2251981 (= e!1441029 tp!711385)))

(assert (=> b!2251547 (= tp!711276 e!1441029)))

(declare-fun b!2251982 () Bool)

(declare-fun tp!711387 () Bool)

(declare-fun tp!711384 () Bool)

(assert (=> b!2251982 (= e!1441029 (and tp!711387 tp!711384))))

(declare-fun b!2251980 () Bool)

(declare-fun tp!711383 () Bool)

(declare-fun tp!711386 () Bool)

(assert (=> b!2251980 (= e!1441029 (and tp!711383 tp!711386))))

(declare-fun b!2251979 () Bool)

(assert (=> b!2251979 (= e!1441029 tp_is_empty!10371)))

(assert (= (and b!2251547 ((_ is ElementMatch!6575) (reg!6904 (regex!4227 r!2363)))) b!2251979))

(assert (= (and b!2251547 ((_ is Concat!10965) (reg!6904 (regex!4227 r!2363)))) b!2251980))

(assert (= (and b!2251547 ((_ is Star!6575) (reg!6904 (regex!4227 r!2363)))) b!2251981))

(assert (= (and b!2251547 ((_ is Union!6575) (reg!6904 (regex!4227 r!2363)))) b!2251982))

(declare-fun b!2251985 () Bool)

(declare-fun e!1441030 () Bool)

(declare-fun tp!711390 () Bool)

(assert (=> b!2251985 (= e!1441030 tp!711390)))

(assert (=> b!2251533 (= tp!711261 e!1441030)))

(declare-fun b!2251986 () Bool)

(declare-fun tp!711392 () Bool)

(declare-fun tp!711389 () Bool)

(assert (=> b!2251986 (= e!1441030 (and tp!711392 tp!711389))))

(declare-fun b!2251984 () Bool)

(declare-fun tp!711388 () Bool)

(declare-fun tp!711391 () Bool)

(assert (=> b!2251984 (= e!1441030 (and tp!711388 tp!711391))))

(declare-fun b!2251983 () Bool)

(assert (=> b!2251983 (= e!1441030 tp_is_empty!10371)))

(assert (= (and b!2251533 ((_ is ElementMatch!6575) (regOne!13662 (regex!4227 otherR!12)))) b!2251983))

(assert (= (and b!2251533 ((_ is Concat!10965) (regOne!13662 (regex!4227 otherR!12)))) b!2251984))

(assert (= (and b!2251533 ((_ is Star!6575) (regOne!13662 (regex!4227 otherR!12)))) b!2251985))

(assert (= (and b!2251533 ((_ is Union!6575) (regOne!13662 (regex!4227 otherR!12)))) b!2251986))

(declare-fun b!2251989 () Bool)

(declare-fun e!1441031 () Bool)

(declare-fun tp!711395 () Bool)

(assert (=> b!2251989 (= e!1441031 tp!711395)))

(assert (=> b!2251533 (= tp!711264 e!1441031)))

(declare-fun b!2251990 () Bool)

(declare-fun tp!711397 () Bool)

(declare-fun tp!711394 () Bool)

(assert (=> b!2251990 (= e!1441031 (and tp!711397 tp!711394))))

(declare-fun b!2251988 () Bool)

(declare-fun tp!711393 () Bool)

(declare-fun tp!711396 () Bool)

(assert (=> b!2251988 (= e!1441031 (and tp!711393 tp!711396))))

(declare-fun b!2251987 () Bool)

(assert (=> b!2251987 (= e!1441031 tp_is_empty!10371)))

(assert (= (and b!2251533 ((_ is ElementMatch!6575) (regTwo!13662 (regex!4227 otherR!12)))) b!2251987))

(assert (= (and b!2251533 ((_ is Concat!10965) (regTwo!13662 (regex!4227 otherR!12)))) b!2251988))

(assert (= (and b!2251533 ((_ is Star!6575) (regTwo!13662 (regex!4227 otherR!12)))) b!2251989))

(assert (= (and b!2251533 ((_ is Union!6575) (regTwo!13662 (regex!4227 otherR!12)))) b!2251990))

(declare-fun b!2251994 () Bool)

(declare-fun b_free!65965 () Bool)

(declare-fun b_next!66669 () Bool)

(assert (=> b!2251994 (= b_free!65965 (not b_next!66669))))

(declare-fun t!200925 () Bool)

(declare-fun tb!133487 () Bool)

(assert (=> (and b!2251994 (= (toValue!5965 (transformation!4227 (rule!6529 (h!32066 (t!200821 (t!200821 tokens!456)))))) (toValue!5965 (transformation!4227 (rule!6529 (_1!15591 (get!8048 lt!836819)))))) t!200925) tb!133487))

(declare-fun result!162730 () Bool)

(assert (= result!162730 result!162702))

(assert (=> d!668089 t!200925))

(declare-fun tp!711399 () Bool)

(declare-fun b_and!176441 () Bool)

(assert (=> b!2251994 (= tp!711399 (and (=> t!200925 result!162730) b_and!176441))))

(declare-fun b_free!65967 () Bool)

(declare-fun b_next!66671 () Bool)

(assert (=> b!2251994 (= b_free!65967 (not b_next!66671))))

(declare-fun t!200927 () Bool)

(declare-fun tb!133489 () Bool)

(assert (=> (and b!2251994 (= (toChars!5824 (transformation!4227 (rule!6529 (h!32066 (t!200821 (t!200821 tokens!456)))))) (toChars!5824 (transformation!4227 (rule!6529 (head!4794 tokens!456))))) t!200927) tb!133489))

(declare-fun result!162732 () Bool)

(assert (= result!162732 result!162620))

(assert (=> d!667847 t!200927))

(declare-fun tb!133491 () Bool)

(declare-fun t!200929 () Bool)

(assert (=> (and b!2251994 (= (toChars!5824 (transformation!4227 (rule!6529 (h!32066 (t!200821 (t!200821 tokens!456)))))) (toChars!5824 (transformation!4227 (rule!6529 (_1!15591 (get!8048 lt!836819)))))) t!200929) tb!133491))

(declare-fun result!162734 () Bool)

(assert (= result!162734 result!162690))

(assert (=> d!668045 t!200929))

(declare-fun t!200931 () Bool)

(declare-fun tb!133493 () Bool)

(assert (=> (and b!2251994 (= (toChars!5824 (transformation!4227 (rule!6529 (h!32066 (t!200821 (t!200821 tokens!456)))))) (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456))))) t!200931) tb!133493))

(declare-fun result!162736 () Bool)

(assert (= result!162736 result!162654))

(assert (=> b!2251520 t!200931))

(assert (=> d!667973 t!200931))

(declare-fun t!200933 () Bool)

(declare-fun tb!133495 () Bool)

(assert (=> (and b!2251994 (= (toChars!5824 (transformation!4227 (rule!6529 (h!32066 (t!200821 (t!200821 tokens!456)))))) (toChars!5824 (transformation!4227 (rule!6529 (h!32066 (t!200821 tokens!456)))))) t!200933) tb!133495))

(declare-fun result!162738 () Bool)

(assert (= result!162738 result!162716))

(assert (=> b!2251838 t!200933))

(declare-fun b_and!176443 () Bool)

(declare-fun tp!711401 () Bool)

(assert (=> b!2251994 (= tp!711401 (and (=> t!200933 result!162738) (=> t!200929 result!162734) (=> t!200931 result!162736) (=> t!200927 result!162732) b_and!176443))))

(declare-fun e!1441032 () Bool)

(assert (=> b!2251994 (= e!1441032 (and tp!711399 tp!711401))))

(declare-fun e!1441037 () Bool)

(assert (=> b!2251577 (= tp!711313 e!1441037)))

(declare-fun e!1441034 () Bool)

(declare-fun tp!711398 () Bool)

(declare-fun b!2251992 () Bool)

(declare-fun e!1441036 () Bool)

(assert (=> b!2251992 (= e!1441036 (and (inv!21 (value!134289 (h!32066 (t!200821 (t!200821 tokens!456))))) e!1441034 tp!711398))))

(declare-fun b!2251991 () Bool)

(declare-fun tp!711402 () Bool)

(assert (=> b!2251991 (= e!1441037 (and (inv!36199 (h!32066 (t!200821 (t!200821 tokens!456)))) e!1441036 tp!711402))))

(declare-fun b!2251993 () Bool)

(declare-fun tp!711400 () Bool)

(assert (=> b!2251993 (= e!1441034 (and tp!711400 (inv!36195 (tag!4717 (rule!6529 (h!32066 (t!200821 (t!200821 tokens!456)))))) (inv!36198 (transformation!4227 (rule!6529 (h!32066 (t!200821 (t!200821 tokens!456)))))) e!1441032))))

(assert (= b!2251993 b!2251994))

(assert (= b!2251992 b!2251993))

(assert (= b!2251991 b!2251992))

(assert (= (and b!2251577 ((_ is Cons!26665) (t!200821 (t!200821 tokens!456)))) b!2251991))

(declare-fun m!2682843 () Bool)

(assert (=> b!2251992 m!2682843))

(declare-fun m!2682845 () Bool)

(assert (=> b!2251991 m!2682845))

(declare-fun m!2682847 () Bool)

(assert (=> b!2251993 m!2682847))

(declare-fun m!2682849 () Bool)

(assert (=> b!2251993 m!2682849))

(declare-fun b!2251997 () Bool)

(declare-fun b_free!65969 () Bool)

(declare-fun b_next!66673 () Bool)

(assert (=> b!2251997 (= b_free!65969 (not b_next!66673))))

(declare-fun t!200935 () Bool)

(declare-fun tb!133497 () Bool)

(assert (=> (and b!2251997 (= (toValue!5965 (transformation!4227 (h!32067 (t!200822 (t!200822 rules!1750))))) (toValue!5965 (transformation!4227 (rule!6529 (_1!15591 (get!8048 lt!836819)))))) t!200935) tb!133497))

(declare-fun result!162740 () Bool)

(assert (= result!162740 result!162702))

(assert (=> d!668089 t!200935))

(declare-fun b_and!176445 () Bool)

(declare-fun tp!711404 () Bool)

(assert (=> b!2251997 (= tp!711404 (and (=> t!200935 result!162740) b_and!176445))))

(declare-fun b_free!65971 () Bool)

(declare-fun b_next!66675 () Bool)

(assert (=> b!2251997 (= b_free!65971 (not b_next!66675))))

(declare-fun t!200937 () Bool)

(declare-fun tb!133499 () Bool)

(assert (=> (and b!2251997 (= (toChars!5824 (transformation!4227 (h!32067 (t!200822 (t!200822 rules!1750))))) (toChars!5824 (transformation!4227 (rule!6529 (head!4794 tokens!456))))) t!200937) tb!133499))

(declare-fun result!162742 () Bool)

(assert (= result!162742 result!162620))

(assert (=> d!667847 t!200937))

(declare-fun t!200939 () Bool)

(declare-fun tb!133501 () Bool)

(assert (=> (and b!2251997 (= (toChars!5824 (transformation!4227 (h!32067 (t!200822 (t!200822 rules!1750))))) (toChars!5824 (transformation!4227 (rule!6529 (_1!15591 (get!8048 lt!836819)))))) t!200939) tb!133501))

(declare-fun result!162744 () Bool)

(assert (= result!162744 result!162690))

(assert (=> d!668045 t!200939))

(declare-fun tb!133503 () Bool)

(declare-fun t!200941 () Bool)

(assert (=> (and b!2251997 (= (toChars!5824 (transformation!4227 (h!32067 (t!200822 (t!200822 rules!1750))))) (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456))))) t!200941) tb!133503))

(declare-fun result!162746 () Bool)

(assert (= result!162746 result!162654))

(assert (=> b!2251520 t!200941))

(assert (=> d!667973 t!200941))

(declare-fun tb!133505 () Bool)

(declare-fun t!200943 () Bool)

(assert (=> (and b!2251997 (= (toChars!5824 (transformation!4227 (h!32067 (t!200822 (t!200822 rules!1750))))) (toChars!5824 (transformation!4227 (rule!6529 (h!32066 (t!200821 tokens!456)))))) t!200943) tb!133505))

(declare-fun result!162748 () Bool)

(assert (= result!162748 result!162716))

(assert (=> b!2251838 t!200943))

(declare-fun tp!711403 () Bool)

(declare-fun b_and!176447 () Bool)

(assert (=> b!2251997 (= tp!711403 (and (=> t!200937 result!162742) (=> t!200943 result!162748) (=> t!200941 result!162746) (=> t!200939 result!162744) b_and!176447))))

(declare-fun e!1441039 () Bool)

(assert (=> b!2251997 (= e!1441039 (and tp!711404 tp!711403))))

(declare-fun e!1441040 () Bool)

(declare-fun tp!711406 () Bool)

(declare-fun b!2251996 () Bool)

(assert (=> b!2251996 (= e!1441040 (and tp!711406 (inv!36195 (tag!4717 (h!32067 (t!200822 (t!200822 rules!1750))))) (inv!36198 (transformation!4227 (h!32067 (t!200822 (t!200822 rules!1750))))) e!1441039))))

(declare-fun b!2251995 () Bool)

(declare-fun e!1441038 () Bool)

(declare-fun tp!711405 () Bool)

(assert (=> b!2251995 (= e!1441038 (and e!1441040 tp!711405))))

(assert (=> b!2251562 (= tp!711295 e!1441038)))

(assert (= b!2251996 b!2251997))

(assert (= b!2251995 b!2251996))

(assert (= (and b!2251562 ((_ is Cons!26666) (t!200822 (t!200822 rules!1750)))) b!2251995))

(declare-fun m!2682851 () Bool)

(assert (=> b!2251996 m!2682851))

(declare-fun m!2682853 () Bool)

(assert (=> b!2251996 m!2682853))

(declare-fun b!2252000 () Bool)

(declare-fun e!1441042 () Bool)

(declare-fun tp!711409 () Bool)

(assert (=> b!2252000 (= e!1441042 tp!711409)))

(assert (=> b!2251534 (= tp!711263 e!1441042)))

(declare-fun b!2252001 () Bool)

(declare-fun tp!711411 () Bool)

(declare-fun tp!711408 () Bool)

(assert (=> b!2252001 (= e!1441042 (and tp!711411 tp!711408))))

(declare-fun b!2251999 () Bool)

(declare-fun tp!711407 () Bool)

(declare-fun tp!711410 () Bool)

(assert (=> b!2251999 (= e!1441042 (and tp!711407 tp!711410))))

(declare-fun b!2251998 () Bool)

(assert (=> b!2251998 (= e!1441042 tp_is_empty!10371)))

(assert (= (and b!2251534 ((_ is ElementMatch!6575) (reg!6904 (regex!4227 otherR!12)))) b!2251998))

(assert (= (and b!2251534 ((_ is Concat!10965) (reg!6904 (regex!4227 otherR!12)))) b!2251999))

(assert (= (and b!2251534 ((_ is Star!6575) (reg!6904 (regex!4227 otherR!12)))) b!2252000))

(assert (= (and b!2251534 ((_ is Union!6575) (reg!6904 (regex!4227 otherR!12)))) b!2252001))

(declare-fun b!2252002 () Bool)

(declare-fun e!1441043 () Bool)

(declare-fun tp!711412 () Bool)

(assert (=> b!2252002 (= e!1441043 (and tp_is_empty!10371 tp!711412))))

(assert (=> b!2251549 (= tp!711279 e!1441043)))

(assert (= (and b!2251549 ((_ is Cons!26663) (t!200819 (originalCharacters!4997 (h!32066 tokens!456))))) b!2252002))

(declare-fun b!2252005 () Bool)

(declare-fun e!1441044 () Bool)

(declare-fun tp!711415 () Bool)

(assert (=> b!2252005 (= e!1441044 tp!711415)))

(assert (=> b!2251551 (= tp!711280 e!1441044)))

(declare-fun b!2252006 () Bool)

(declare-fun tp!711417 () Bool)

(declare-fun tp!711414 () Bool)

(assert (=> b!2252006 (= e!1441044 (and tp!711417 tp!711414))))

(declare-fun b!2252004 () Bool)

(declare-fun tp!711413 () Bool)

(declare-fun tp!711416 () Bool)

(assert (=> b!2252004 (= e!1441044 (and tp!711413 tp!711416))))

(declare-fun b!2252003 () Bool)

(assert (=> b!2252003 (= e!1441044 tp_is_empty!10371)))

(assert (= (and b!2251551 ((_ is ElementMatch!6575) (regOne!13662 (regex!4227 (rule!6529 (h!32066 tokens!456)))))) b!2252003))

(assert (= (and b!2251551 ((_ is Concat!10965) (regOne!13662 (regex!4227 (rule!6529 (h!32066 tokens!456)))))) b!2252004))

(assert (= (and b!2251551 ((_ is Star!6575) (regOne!13662 (regex!4227 (rule!6529 (h!32066 tokens!456)))))) b!2252005))

(assert (= (and b!2251551 ((_ is Union!6575) (regOne!13662 (regex!4227 (rule!6529 (h!32066 tokens!456)))))) b!2252006))

(declare-fun b!2252009 () Bool)

(declare-fun e!1441045 () Bool)

(declare-fun tp!711420 () Bool)

(assert (=> b!2252009 (= e!1441045 tp!711420)))

(assert (=> b!2251551 (= tp!711283 e!1441045)))

(declare-fun b!2252010 () Bool)

(declare-fun tp!711422 () Bool)

(declare-fun tp!711419 () Bool)

(assert (=> b!2252010 (= e!1441045 (and tp!711422 tp!711419))))

(declare-fun b!2252008 () Bool)

(declare-fun tp!711418 () Bool)

(declare-fun tp!711421 () Bool)

(assert (=> b!2252008 (= e!1441045 (and tp!711418 tp!711421))))

(declare-fun b!2252007 () Bool)

(assert (=> b!2252007 (= e!1441045 tp_is_empty!10371)))

(assert (= (and b!2251551 ((_ is ElementMatch!6575) (regTwo!13662 (regex!4227 (rule!6529 (h!32066 tokens!456)))))) b!2252007))

(assert (= (and b!2251551 ((_ is Concat!10965) (regTwo!13662 (regex!4227 (rule!6529 (h!32066 tokens!456)))))) b!2252008))

(assert (= (and b!2251551 ((_ is Star!6575) (regTwo!13662 (regex!4227 (rule!6529 (h!32066 tokens!456)))))) b!2252009))

(assert (= (and b!2251551 ((_ is Union!6575) (regTwo!13662 (regex!4227 (rule!6529 (h!32066 tokens!456)))))) b!2252010))

(declare-fun b!2252011 () Bool)

(declare-fun e!1441046 () Bool)

(declare-fun tp!711423 () Bool)

(assert (=> b!2252011 (= e!1441046 (and tp_is_empty!10371 tp!711423))))

(assert (=> b!2251544 (= tp!711273 e!1441046)))

(assert (= (and b!2251544 ((_ is Cons!26663) (t!200819 (t!200819 suffix!886)))) b!2252011))

(declare-fun b!2252014 () Bool)

(declare-fun e!1441047 () Bool)

(declare-fun tp!711426 () Bool)

(assert (=> b!2252014 (= e!1441047 tp!711426)))

(assert (=> b!2251552 (= tp!711282 e!1441047)))

(declare-fun b!2252015 () Bool)

(declare-fun tp!711428 () Bool)

(declare-fun tp!711425 () Bool)

(assert (=> b!2252015 (= e!1441047 (and tp!711428 tp!711425))))

(declare-fun b!2252013 () Bool)

(declare-fun tp!711424 () Bool)

(declare-fun tp!711427 () Bool)

(assert (=> b!2252013 (= e!1441047 (and tp!711424 tp!711427))))

(declare-fun b!2252012 () Bool)

(assert (=> b!2252012 (= e!1441047 tp_is_empty!10371)))

(assert (= (and b!2251552 ((_ is ElementMatch!6575) (reg!6904 (regex!4227 (rule!6529 (h!32066 tokens!456)))))) b!2252012))

(assert (= (and b!2251552 ((_ is Concat!10965) (reg!6904 (regex!4227 (rule!6529 (h!32066 tokens!456)))))) b!2252013))

(assert (= (and b!2251552 ((_ is Star!6575) (reg!6904 (regex!4227 (rule!6529 (h!32066 tokens!456)))))) b!2252014))

(assert (= (and b!2251552 ((_ is Union!6575) (reg!6904 (regex!4227 (rule!6529 (h!32066 tokens!456)))))) b!2252015))

(declare-fun b!2252018 () Bool)

(declare-fun e!1441048 () Bool)

(declare-fun tp!711431 () Bool)

(assert (=> b!2252018 (= e!1441048 tp!711431)))

(assert (=> b!2251563 (= tp!711296 e!1441048)))

(declare-fun b!2252019 () Bool)

(declare-fun tp!711433 () Bool)

(declare-fun tp!711430 () Bool)

(assert (=> b!2252019 (= e!1441048 (and tp!711433 tp!711430))))

(declare-fun b!2252017 () Bool)

(declare-fun tp!711429 () Bool)

(declare-fun tp!711432 () Bool)

(assert (=> b!2252017 (= e!1441048 (and tp!711429 tp!711432))))

(declare-fun b!2252016 () Bool)

(assert (=> b!2252016 (= e!1441048 tp_is_empty!10371)))

(assert (= (and b!2251563 ((_ is ElementMatch!6575) (regex!4227 (h!32067 (t!200822 rules!1750))))) b!2252016))

(assert (= (and b!2251563 ((_ is Concat!10965) (regex!4227 (h!32067 (t!200822 rules!1750))))) b!2252017))

(assert (= (and b!2251563 ((_ is Star!6575) (regex!4227 (h!32067 (t!200822 rules!1750))))) b!2252018))

(assert (= (and b!2251563 ((_ is Union!6575) (regex!4227 (h!32067 (t!200822 rules!1750))))) b!2252019))

(declare-fun b!2252022 () Bool)

(declare-fun e!1441049 () Bool)

(declare-fun tp!711436 () Bool)

(assert (=> b!2252022 (= e!1441049 tp!711436)))

(assert (=> b!2251535 (= tp!711265 e!1441049)))

(declare-fun b!2252023 () Bool)

(declare-fun tp!711438 () Bool)

(declare-fun tp!711435 () Bool)

(assert (=> b!2252023 (= e!1441049 (and tp!711438 tp!711435))))

(declare-fun b!2252021 () Bool)

(declare-fun tp!711434 () Bool)

(declare-fun tp!711437 () Bool)

(assert (=> b!2252021 (= e!1441049 (and tp!711434 tp!711437))))

(declare-fun b!2252020 () Bool)

(assert (=> b!2252020 (= e!1441049 tp_is_empty!10371)))

(assert (= (and b!2251535 ((_ is ElementMatch!6575) (regOne!13663 (regex!4227 otherR!12)))) b!2252020))

(assert (= (and b!2251535 ((_ is Concat!10965) (regOne!13663 (regex!4227 otherR!12)))) b!2252021))

(assert (= (and b!2251535 ((_ is Star!6575) (regOne!13663 (regex!4227 otherR!12)))) b!2252022))

(assert (= (and b!2251535 ((_ is Union!6575) (regOne!13663 (regex!4227 otherR!12)))) b!2252023))

(declare-fun b!2252026 () Bool)

(declare-fun e!1441050 () Bool)

(declare-fun tp!711441 () Bool)

(assert (=> b!2252026 (= e!1441050 tp!711441)))

(assert (=> b!2251535 (= tp!711262 e!1441050)))

(declare-fun b!2252027 () Bool)

(declare-fun tp!711443 () Bool)

(declare-fun tp!711440 () Bool)

(assert (=> b!2252027 (= e!1441050 (and tp!711443 tp!711440))))

(declare-fun b!2252025 () Bool)

(declare-fun tp!711439 () Bool)

(declare-fun tp!711442 () Bool)

(assert (=> b!2252025 (= e!1441050 (and tp!711439 tp!711442))))

(declare-fun b!2252024 () Bool)

(assert (=> b!2252024 (= e!1441050 tp_is_empty!10371)))

(assert (= (and b!2251535 ((_ is ElementMatch!6575) (regTwo!13663 (regex!4227 otherR!12)))) b!2252024))

(assert (= (and b!2251535 ((_ is Concat!10965) (regTwo!13663 (regex!4227 otherR!12)))) b!2252025))

(assert (= (and b!2251535 ((_ is Star!6575) (regTwo!13663 (regex!4227 otherR!12)))) b!2252026))

(assert (= (and b!2251535 ((_ is Union!6575) (regTwo!13663 (regex!4227 otherR!12)))) b!2252027))

(declare-fun tp!711446 () Bool)

(declare-fun e!1441051 () Bool)

(declare-fun b!2252028 () Bool)

(declare-fun tp!711445 () Bool)

(assert (=> b!2252028 (= e!1441051 (and (inv!36202 (left!20256 (c!358006 (dynLambda!11593 (toChars!5824 (transformation!4227 (rule!6529 (head!4794 tokens!456)))) (value!134289 (head!4794 tokens!456)))))) tp!711445 (inv!36202 (right!20586 (c!358006 (dynLambda!11593 (toChars!5824 (transformation!4227 (rule!6529 (head!4794 tokens!456)))) (value!134289 (head!4794 tokens!456)))))) tp!711446))))

(declare-fun b!2252030 () Bool)

(declare-fun e!1441052 () Bool)

(declare-fun tp!711444 () Bool)

(assert (=> b!2252030 (= e!1441052 tp!711444)))

(declare-fun b!2252029 () Bool)

(assert (=> b!2252029 (= e!1441051 (and (inv!36208 (xs!11544 (c!358006 (dynLambda!11593 (toChars!5824 (transformation!4227 (rule!6529 (head!4794 tokens!456)))) (value!134289 (head!4794 tokens!456)))))) e!1441052))))

(assert (=> b!2251132 (= tp!711185 (and (inv!36202 (c!358006 (dynLambda!11593 (toChars!5824 (transformation!4227 (rule!6529 (head!4794 tokens!456)))) (value!134289 (head!4794 tokens!456))))) e!1441051))))

(assert (= (and b!2251132 ((_ is Node!8602) (c!358006 (dynLambda!11593 (toChars!5824 (transformation!4227 (rule!6529 (head!4794 tokens!456)))) (value!134289 (head!4794 tokens!456)))))) b!2252028))

(assert (= b!2252029 b!2252030))

(assert (= (and b!2251132 ((_ is Leaf!12701) (c!358006 (dynLambda!11593 (toChars!5824 (transformation!4227 (rule!6529 (head!4794 tokens!456)))) (value!134289 (head!4794 tokens!456)))))) b!2252029))

(declare-fun m!2682855 () Bool)

(assert (=> b!2252028 m!2682855))

(declare-fun m!2682857 () Bool)

(assert (=> b!2252028 m!2682857))

(declare-fun m!2682859 () Bool)

(assert (=> b!2252029 m!2682859))

(assert (=> b!2251132 m!2681967))

(declare-fun b!2252031 () Bool)

(declare-fun e!1441053 () Bool)

(declare-fun tp!711447 () Bool)

(assert (=> b!2252031 (= e!1441053 (and tp_is_empty!10371 tp!711447))))

(assert (=> b!2251578 (= tp!711309 e!1441053)))

(assert (= (and b!2251578 ((_ is Cons!26663) (originalCharacters!4997 (h!32066 (t!200821 tokens!456))))) b!2252031))

(declare-fun b!2252034 () Bool)

(declare-fun e!1441054 () Bool)

(declare-fun tp!711450 () Bool)

(assert (=> b!2252034 (= e!1441054 tp!711450)))

(assert (=> b!2251579 (= tp!711311 e!1441054)))

(declare-fun b!2252035 () Bool)

(declare-fun tp!711452 () Bool)

(declare-fun tp!711449 () Bool)

(assert (=> b!2252035 (= e!1441054 (and tp!711452 tp!711449))))

(declare-fun b!2252033 () Bool)

(declare-fun tp!711448 () Bool)

(declare-fun tp!711451 () Bool)

(assert (=> b!2252033 (= e!1441054 (and tp!711448 tp!711451))))

(declare-fun b!2252032 () Bool)

(assert (=> b!2252032 (= e!1441054 tp_is_empty!10371)))

(assert (= (and b!2251579 ((_ is ElementMatch!6575) (regex!4227 (rule!6529 (h!32066 (t!200821 tokens!456)))))) b!2252032))

(assert (= (and b!2251579 ((_ is Concat!10965) (regex!4227 (rule!6529 (h!32066 (t!200821 tokens!456)))))) b!2252033))

(assert (= (and b!2251579 ((_ is Star!6575) (regex!4227 (rule!6529 (h!32066 (t!200821 tokens!456)))))) b!2252034))

(assert (= (and b!2251579 ((_ is Union!6575) (regex!4227 (rule!6529 (h!32066 (t!200821 tokens!456)))))) b!2252035))

(declare-fun b_lambda!71969 () Bool)

(assert (= b_lambda!71967 (or (and b!2251997 b_free!65971 (= (toChars!5824 (transformation!4227 (h!32067 (t!200822 (t!200822 rules!1750))))) (toChars!5824 (transformation!4227 (rule!6529 (h!32066 (t!200821 tokens!456))))))) (and b!2251564 b_free!65959 (= (toChars!5824 (transformation!4227 (h!32067 (t!200822 rules!1750)))) (toChars!5824 (transformation!4227 (rule!6529 (h!32066 (t!200821 tokens!456))))))) (and b!2251043 b_free!65939 (= (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456)))) (toChars!5824 (transformation!4227 (rule!6529 (h!32066 (t!200821 tokens!456))))))) (and b!2251057 b_free!65943 (= (toChars!5824 (transformation!4227 r!2363)) (toChars!5824 (transformation!4227 (rule!6529 (h!32066 (t!200821 tokens!456))))))) (and b!2251051 b_free!65935 (= (toChars!5824 (transformation!4227 otherR!12)) (toChars!5824 (transformation!4227 (rule!6529 (h!32066 (t!200821 tokens!456))))))) (and b!2251580 b_free!65963) (and b!2251994 b_free!65967 (= (toChars!5824 (transformation!4227 (rule!6529 (h!32066 (t!200821 (t!200821 tokens!456)))))) (toChars!5824 (transformation!4227 (rule!6529 (h!32066 (t!200821 tokens!456))))))) (and b!2251071 b_free!65947 (= (toChars!5824 (transformation!4227 (h!32067 rules!1750))) (toChars!5824 (transformation!4227 (rule!6529 (h!32066 (t!200821 tokens!456))))))) b_lambda!71969)))

(declare-fun b_lambda!71971 () Bool)

(assert (= b_lambda!71943 (or (and b!2251043 b_free!65939 (= (toChars!5824 (transformation!4227 (rule!6529 (h!32066 tokens!456)))) (toChars!5824 (transformation!4227 (rule!6529 (head!4794 tokens!456)))))) (and b!2251564 b_free!65959 (= (toChars!5824 (transformation!4227 (h!32067 (t!200822 rules!1750)))) (toChars!5824 (transformation!4227 (rule!6529 (head!4794 tokens!456)))))) (and b!2251997 b_free!65971 (= (toChars!5824 (transformation!4227 (h!32067 (t!200822 (t!200822 rules!1750))))) (toChars!5824 (transformation!4227 (rule!6529 (head!4794 tokens!456)))))) (and b!2251071 b_free!65947 (= (toChars!5824 (transformation!4227 (h!32067 rules!1750))) (toChars!5824 (transformation!4227 (rule!6529 (head!4794 tokens!456)))))) (and b!2251994 b_free!65967 (= (toChars!5824 (transformation!4227 (rule!6529 (h!32066 (t!200821 (t!200821 tokens!456)))))) (toChars!5824 (transformation!4227 (rule!6529 (head!4794 tokens!456)))))) (and b!2251580 b_free!65963 (= (toChars!5824 (transformation!4227 (rule!6529 (h!32066 (t!200821 tokens!456))))) (toChars!5824 (transformation!4227 (rule!6529 (head!4794 tokens!456)))))) (and b!2251051 b_free!65935 (= (toChars!5824 (transformation!4227 otherR!12)) (toChars!5824 (transformation!4227 (rule!6529 (head!4794 tokens!456)))))) (and b!2251057 b_free!65943 (= (toChars!5824 (transformation!4227 r!2363)) (toChars!5824 (transformation!4227 (rule!6529 (head!4794 tokens!456)))))) b_lambda!71971)))

(check-sat (not d!668159) (not b_next!66669) (not b!2251913) (not b!2252013) (not b!2252015) (not b!2251755) (not b!2251793) b_and!176435 (not b!2251649) (not b!2251924) (not b!2251802) (not b!2251980) (not b!2251863) (not b_lambda!71959) (not d!667987) (not b!2251984) (not d!668093) (not d!668151) b_and!176431 (not b_next!66671) (not b!2251838) (not d!667997) (not b!2251604) (not b!2251827) (not b!2251669) (not d!668139) (not tb!133463) (not b!2251996) (not d!668105) b_and!176433 (not b!2251640) (not d!668123) (not d!668175) (not tb!133451) (not b!2251981) (not b!2251940) (not b!2251880) (not b_next!66673) (not b!2251923) (not d!668191) (not d!668187) (not b!2251754) b_and!176439 (not d!668039) (not b!2251804) (not b!2251591) (not b!2252005) (not b_next!66647) (not b!2251783) (not b!2252034) (not b_lambda!71965) (not b!2251598) (not b!2252004) (not b!2251956) (not d!667993) (not b!2251917) (not b!2251933) (not b!2251596) (not d!668069) (not b!2251614) (not b!2251687) (not b!2251952) (not bm!135600) b_and!176425 (not d!668117) (not b!2251820) (not d!668101) b_and!176437 (not d!668145) (not b!2251859) (not b!2251875) (not b!2251132) (not b!2251941) (not d!668015) (not d!667983) (not b!2252000) (not b!2251786) (not d!668157) (not b!2251800) b_and!176421 (not d!668119) (not b!2252031) (not bm!135602) (not b!2251990) (not b!2251876) (not b!2251961) (not b!2251597) (not d!668043) (not bm!135597) (not b!2251950) b_and!176429 (not b!2251625) (not b!2251955) (not b!2252027) (not b!2251637) (not bm!135599) (not b!2252018) (not b!2251831) (not b!2251999) (not b!2251672) (not b!2251959) (not b!2252029) (not d!668049) (not b!2251985) (not b!2251992) (not d!668023) (not b_lambda!71971) (not b!2251670) (not tb!133475) (not b!2251819) (not b!2251881) (not d!668125) (not b_next!66651) (not b_next!66637) (not b!2252030) (not b!2251833) (not d!668193) (not b!2251779) (not b!2251780) (not b_lambda!71969) (not b!2251835) (not b_next!66641) (not b!2252035) (not bm!135611) (not b!2251840) b_and!176417 (not b!2251982) (not b!2251937) (not b!2251978) (not b!2251932) (not b!2251676) (not b!2251613) (not b!2251821) (not b!2251986) (not d!667985) (not b!2251834) (not b!2251929) (not b!2251826) (not b_next!66645) (not d!668121) (not b!2251756) (not b!2252002) (not b!2251781) (not b!2251951) b_and!176443 (not b!2251594) (not b!2251921) (not b_next!66665) (not b!2251787) (not b!2251805) (not b_next!66667) (not b!2251936) (not d!668063) (not d!668183) (not b!2251817) (not b!2251939) (not b!2251641) tp_is_empty!10371 (not b!2251854) (not d!668113) (not b!2251666) (not d!668181) (not bm!135589) (not b!2251602) (not b!2251856) (not b!2251954) (not b!2251988) (not b!2251918) (not b_next!66661) (not b!2252023) (not d!668019) (not b!2251958) (not b!2251839) b_and!176423 (not b!2251599) (not b!2251629) (not b!2251993) (not d!668045) (not b!2251621) (not d!668171) (not b_lambda!71957) (not b_next!66663) (not b!2251674) (not b!2251809) (not b!2251879) (not bm!135596) (not b!2251758) (not b!2251638) (not b!2251846) (not b!2251642) (not b!2251967) (not b!2251609) (not b!2252017) (not b!2251757) (not b!2252014) (not d!668207) (not b!2252001) (not b!2251935) (not b!2251977) (not b!2251976) (not b!2251593) (not d!668017) (not bm!135613) (not d!668079) (not b!2251814) (not b!2251960) (not b!2251627) b_and!176445 (not b!2251974) (not b!2251965) (not b!2252026) (not b_next!66675) (not d!668051) (not d!668137) (not b!2251964) (not b!2252009) (not d!668199) (not b_next!66649) (not b!2251963) (not b!2251969) (not b!2251870) (not b!2252011) (not d!668027) (not b!2251878) (not b!2251623) (not b!2251991) (not b!2251815) (not b!2251920) (not b!2251716) (not b!2251867) (not b!2251675) (not d!668195) (not b!2251612) b_and!176441 (not b!2251928) (not b!2251872) (not d!668141) (not b!2251989) (not b!2251668) (not d!668173) (not b!2251510) (not b!2251973) (not b!2251610) (not b!2252019) (not b_next!66639) (not b!2252021) (not d!668177) (not b!2251603) (not d!668115) (not b!2251829) (not b!2251643) (not b!2251972) (not d!668201) (not b!2252010) (not b!2252028) (not b!2251968) b_and!176419 (not b_lambda!71963) (not b!2251931) b_and!176427 (not b!2251995) (not b!2251601) (not bm!135588) (not b!2251811) (not b!2251785) (not b!2251837) (not b!2251925) (not d!668179) (not b!2252025) (not b!2251688) (not b!2251782) (not d!668143) (not d!668147) (not b!2251799) (not b!2252022) (not b!2251970) (not b!2252006) (not b!2251927) (not b!2251862) (not d!668047) (not b!2252033) (not d!668109) (not b!2251852) (not b!2252008) (not d!668127) b_and!176447 (not b_next!66643))
(check-sat b_and!176433 (not b_next!66647) b_and!176425 b_and!176437 b_and!176421 b_and!176429 (not b_next!66661) b_and!176423 (not b_next!66663) (not b_next!66649) (not b_next!66669) b_and!176435 b_and!176431 (not b_next!66671) b_and!176439 (not b_next!66673) (not b_next!66651) (not b_next!66637) (not b_next!66641) b_and!176417 (not b_next!66645) b_and!176443 (not b_next!66665) (not b_next!66667) b_and!176445 (not b_next!66675) b_and!176441 (not b_next!66639) b_and!176419 b_and!176427 b_and!176447 (not b_next!66643))
