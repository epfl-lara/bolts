; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49396 () Bool)

(assert start!49396)

(declare-fun b!535571 () Bool)

(declare-fun b_free!14625 () Bool)

(declare-fun b_next!14641 () Bool)

(assert (=> b!535571 (= b_free!14625 (not b_next!14641))))

(declare-fun tp!170909 () Bool)

(declare-fun b_and!52379 () Bool)

(assert (=> b!535571 (= tp!170909 b_and!52379)))

(declare-fun b_free!14627 () Bool)

(declare-fun b_next!14643 () Bool)

(assert (=> b!535571 (= b_free!14627 (not b_next!14643))))

(declare-fun tp!170914 () Bool)

(declare-fun b_and!52381 () Bool)

(assert (=> b!535571 (= tp!170914 b_and!52381)))

(declare-fun b!535589 () Bool)

(declare-fun b_free!14629 () Bool)

(declare-fun b_next!14645 () Bool)

(assert (=> b!535589 (= b_free!14629 (not b_next!14645))))

(declare-fun tp!170910 () Bool)

(declare-fun b_and!52383 () Bool)

(assert (=> b!535589 (= tp!170910 b_and!52383)))

(declare-fun b_free!14631 () Bool)

(declare-fun b_next!14647 () Bool)

(assert (=> b!535589 (= b_free!14631 (not b_next!14647))))

(declare-fun tp!170918 () Bool)

(declare-fun b_and!52385 () Bool)

(assert (=> b!535589 (= tp!170918 b_and!52385)))

(declare-fun e!322911 () Bool)

(declare-fun tp!170916 () Bool)

(declare-fun b!535570 () Bool)

(declare-datatypes ((C!3492 0))(
  ( (C!3493 (val!1972 Int)) )
))
(declare-datatypes ((Regex!1285 0))(
  ( (ElementMatch!1285 (c!101930 C!3492)) (Concat!2260 (regOne!3082 Regex!1285) (regTwo!3082 Regex!1285)) (EmptyExpr!1285) (Star!1285 (reg!1614 Regex!1285)) (EmptyLang!1285) (Union!1285 (regOne!3083 Regex!1285) (regTwo!3083 Regex!1285)) )
))
(declare-datatypes ((List!5187 0))(
  ( (Nil!5177) (Cons!5177 (h!10578 (_ BitVec 16)) (t!74092 List!5187)) )
))
(declare-datatypes ((String!6618 0))(
  ( (String!6619 (value!31944 String)) )
))
(declare-datatypes ((TokenValue!975 0))(
  ( (FloatLiteralValue!1950 (text!7270 List!5187)) (TokenValueExt!974 (__x!3848 Int)) (Broken!4875 (value!31945 List!5187)) (Object!984) (End!975) (Def!975) (Underscore!975) (Match!975) (Else!975) (Error!975) (Case!975) (If!975) (Extends!975) (Abstract!975) (Class!975) (Val!975) (DelimiterValue!1950 (del!1035 List!5187)) (KeywordValue!981 (value!31946 List!5187)) (CommentValue!1950 (value!31947 List!5187)) (WhitespaceValue!1950 (value!31948 List!5187)) (IndentationValue!975 (value!31949 List!5187)) (String!6620) (Int32!975) (Broken!4876 (value!31950 List!5187)) (Boolean!976) (Unit!9038) (OperatorValue!978 (op!1035 List!5187)) (IdentifierValue!1950 (value!31951 List!5187)) (IdentifierValue!1951 (value!31952 List!5187)) (WhitespaceValue!1951 (value!31953 List!5187)) (True!1950) (False!1950) (Broken!4877 (value!31954 List!5187)) (Broken!4878 (value!31955 List!5187)) (True!1951) (RightBrace!975) (RightBracket!975) (Colon!975) (Null!975) (Comma!975) (LeftBracket!975) (False!1951) (LeftBrace!975) (ImaginaryLiteralValue!975 (text!7271 List!5187)) (StringLiteralValue!2925 (value!31956 List!5187)) (EOFValue!975 (value!31957 List!5187)) (IdentValue!975 (value!31958 List!5187)) (DelimiterValue!1951 (value!31959 List!5187)) (DedentValue!975 (value!31960 List!5187)) (NewLineValue!975 (value!31961 List!5187)) (IntegerValue!2925 (value!31962 (_ BitVec 32)) (text!7272 List!5187)) (IntegerValue!2926 (value!31963 Int) (text!7273 List!5187)) (Times!975) (Or!975) (Equal!975) (Minus!975) (Broken!4879 (value!31964 List!5187)) (And!975) (Div!975) (LessEqual!975) (Mod!975) (Concat!2261) (Not!975) (Plus!975) (SpaceValue!975 (value!31965 List!5187)) (IntegerValue!2927 (value!31966 Int) (text!7274 List!5187)) (StringLiteralValue!2926 (text!7275 List!5187)) (FloatLiteralValue!1951 (text!7276 List!5187)) (BytesLiteralValue!975 (value!31967 List!5187)) (CommentValue!1951 (value!31968 List!5187)) (StringLiteralValue!2927 (value!31969 List!5187)) (ErrorTokenValue!975 (msg!1036 List!5187)) )
))
(declare-datatypes ((List!5188 0))(
  ( (Nil!5178) (Cons!5178 (h!10579 C!3492) (t!74093 List!5188)) )
))
(declare-datatypes ((IArray!3337 0))(
  ( (IArray!3338 (innerList!1726 List!5188)) )
))
(declare-datatypes ((Conc!1668 0))(
  ( (Node!1668 (left!4340 Conc!1668) (right!4670 Conc!1668) (csize!3566 Int) (cheight!1879 Int)) (Leaf!2651 (xs!4305 IArray!3337) (csize!3567 Int)) (Empty!1668) )
))
(declare-datatypes ((BalanceConc!3344 0))(
  ( (BalanceConc!3345 (c!101931 Conc!1668)) )
))
(declare-datatypes ((TokenValueInjection!1718 0))(
  ( (TokenValueInjection!1719 (toValue!1798 Int) (toChars!1657 Int)) )
))
(declare-datatypes ((Rule!1702 0))(
  ( (Rule!1703 (regex!951 Regex!1285) (tag!1213 String!6618) (isSeparator!951 Bool) (transformation!951 TokenValueInjection!1718)) )
))
(declare-datatypes ((Token!1638 0))(
  ( (Token!1639 (value!31970 TokenValue!975) (rule!1653 Rule!1702) (size!4172 Int) (originalCharacters!990 List!5188)) )
))
(declare-fun token!491 () Token!1638)

(declare-fun e!322896 () Bool)

(declare-fun inv!21 (TokenValue!975) Bool)

(assert (=> b!535570 (= e!322911 (and (inv!21 (value!31970 token!491)) e!322896 tp!170916))))

(declare-fun e!322904 () Bool)

(assert (=> b!535571 (= e!322904 (and tp!170909 tp!170914))))

(declare-fun b!535572 () Bool)

(declare-fun res!226584 () Bool)

(declare-fun e!322914 () Bool)

(assert (=> b!535572 (=> res!226584 e!322914)))

(declare-fun lt!221197 () List!5188)

(declare-fun isEmpty!3744 (List!5188) Bool)

(assert (=> b!535572 (= res!226584 (isEmpty!3744 lt!221197))))

(declare-fun b!535574 () Bool)

(declare-fun e!322907 () Bool)

(declare-fun e!322916 () Bool)

(assert (=> b!535574 (= e!322907 (not e!322916))))

(declare-fun res!226575 () Bool)

(assert (=> b!535574 (=> res!226575 e!322916)))

(declare-fun input!2705 () List!5188)

(declare-fun lt!221208 () List!5188)

(declare-fun isPrefix!593 (List!5188 List!5188) Bool)

(assert (=> b!535574 (= res!226575 (not (isPrefix!593 input!2705 lt!221208)))))

(assert (=> b!535574 (isPrefix!593 lt!221197 lt!221208)))

(declare-datatypes ((Unit!9039 0))(
  ( (Unit!9040) )
))
(declare-fun lt!221203 () Unit!9039)

(declare-fun suffix!1342 () List!5188)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!444 (List!5188 List!5188) Unit!9039)

(assert (=> b!535574 (= lt!221203 (lemmaConcatTwoListThenFirstIsPrefix!444 lt!221197 suffix!1342))))

(declare-fun lt!221204 () List!5188)

(assert (=> b!535574 (isPrefix!593 input!2705 lt!221204)))

(declare-fun lt!221220 () Unit!9039)

(assert (=> b!535574 (= lt!221220 (lemmaConcatTwoListThenFirstIsPrefix!444 input!2705 suffix!1342))))

(declare-fun e!322905 () Bool)

(assert (=> b!535574 e!322905))

(declare-fun res!226592 () Bool)

(assert (=> b!535574 (=> (not res!226592) (not e!322905))))

(declare-datatypes ((tuple2!6260 0))(
  ( (tuple2!6261 (_1!3394 Token!1638) (_2!3394 List!5188)) )
))
(declare-datatypes ((Option!1301 0))(
  ( (None!1300) (Some!1300 (v!16107 tuple2!6260)) )
))
(declare-fun lt!221199 () Option!1301)

(declare-fun lt!221202 () TokenValue!975)

(assert (=> b!535574 (= res!226592 (= (value!31970 (_1!3394 (v!16107 lt!221199))) lt!221202))))

(declare-fun lt!221192 () List!5188)

(declare-fun apply!1226 (TokenValueInjection!1718 BalanceConc!3344) TokenValue!975)

(declare-fun seqFromList!1149 (List!5188) BalanceConc!3344)

(assert (=> b!535574 (= lt!221202 (apply!1226 (transformation!951 (rule!1653 (_1!3394 (v!16107 lt!221199)))) (seqFromList!1149 lt!221192)))))

(declare-fun lt!221205 () Unit!9039)

(declare-fun lemmaInv!99 (TokenValueInjection!1718) Unit!9039)

(assert (=> b!535574 (= lt!221205 (lemmaInv!99 (transformation!951 (rule!1653 token!491))))))

(declare-fun lt!221216 () Unit!9039)

(assert (=> b!535574 (= lt!221216 (lemmaInv!99 (transformation!951 (rule!1653 (_1!3394 (v!16107 lt!221199))))))))

(declare-datatypes ((LexerInterface!837 0))(
  ( (LexerInterfaceExt!834 (__x!3849 Int)) (Lexer!835) )
))
(declare-fun thiss!22590 () LexerInterface!837)

(declare-fun ruleValid!171 (LexerInterface!837 Rule!1702) Bool)

(assert (=> b!535574 (ruleValid!171 thiss!22590 (rule!1653 token!491))))

(declare-fun lt!221194 () Unit!9039)

(declare-datatypes ((List!5189 0))(
  ( (Nil!5179) (Cons!5179 (h!10580 Rule!1702) (t!74094 List!5189)) )
))
(declare-fun rules!3103 () List!5189)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!30 (LexerInterface!837 Rule!1702 List!5189) Unit!9039)

(assert (=> b!535574 (= lt!221194 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!30 thiss!22590 (rule!1653 token!491) rules!3103))))

(assert (=> b!535574 (ruleValid!171 thiss!22590 (rule!1653 (_1!3394 (v!16107 lt!221199))))))

(declare-fun lt!221196 () Unit!9039)

(assert (=> b!535574 (= lt!221196 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!30 thiss!22590 (rule!1653 (_1!3394 (v!16107 lt!221199))) rules!3103))))

(assert (=> b!535574 (isPrefix!593 input!2705 input!2705)))

(declare-fun lt!221215 () Unit!9039)

(declare-fun lemmaIsPrefixRefl!333 (List!5188 List!5188) Unit!9039)

(assert (=> b!535574 (= lt!221215 (lemmaIsPrefixRefl!333 input!2705 input!2705))))

(declare-fun lt!221214 () List!5188)

(assert (=> b!535574 (= (_2!3394 (v!16107 lt!221199)) lt!221214)))

(declare-fun lt!221218 () Unit!9039)

(declare-fun lemmaSamePrefixThenSameSuffix!320 (List!5188 List!5188 List!5188 List!5188 List!5188) Unit!9039)

(assert (=> b!535574 (= lt!221218 (lemmaSamePrefixThenSameSuffix!320 lt!221192 (_2!3394 (v!16107 lt!221199)) lt!221192 lt!221214 input!2705))))

(declare-fun getSuffix!116 (List!5188 List!5188) List!5188)

(assert (=> b!535574 (= lt!221214 (getSuffix!116 input!2705 lt!221192))))

(declare-fun ++!1439 (List!5188 List!5188) List!5188)

(assert (=> b!535574 (isPrefix!593 lt!221192 (++!1439 lt!221192 (_2!3394 (v!16107 lt!221199))))))

(declare-fun lt!221221 () Unit!9039)

(assert (=> b!535574 (= lt!221221 (lemmaConcatTwoListThenFirstIsPrefix!444 lt!221192 (_2!3394 (v!16107 lt!221199))))))

(declare-fun lt!221211 () Unit!9039)

(declare-fun lemmaCharactersSize!30 (Token!1638) Unit!9039)

(assert (=> b!535574 (= lt!221211 (lemmaCharactersSize!30 token!491))))

(declare-fun lt!221193 () Unit!9039)

(assert (=> b!535574 (= lt!221193 (lemmaCharactersSize!30 (_1!3394 (v!16107 lt!221199))))))

(declare-fun lt!221201 () Unit!9039)

(declare-fun e!322898 () Unit!9039)

(assert (=> b!535574 (= lt!221201 e!322898)))

(declare-fun c!101929 () Bool)

(declare-fun lt!221206 () Int)

(declare-fun lt!221198 () Int)

(assert (=> b!535574 (= c!101929 (> lt!221206 lt!221198))))

(declare-fun size!4173 (List!5188) Int)

(assert (=> b!535574 (= lt!221198 (size!4173 lt!221197))))

(assert (=> b!535574 (= lt!221206 (size!4173 lt!221192))))

(declare-fun list!2153 (BalanceConc!3344) List!5188)

(declare-fun charsOf!580 (Token!1638) BalanceConc!3344)

(assert (=> b!535574 (= lt!221192 (list!2153 (charsOf!580 (_1!3394 (v!16107 lt!221199)))))))

(assert (=> b!535574 (= lt!221199 (Some!1300 (v!16107 lt!221199)))))

(declare-fun lt!221195 () Unit!9039)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!36 (List!5188 List!5188 List!5188 List!5188) Unit!9039)

(assert (=> b!535574 (= lt!221195 (lemmaConcatSameAndSameSizesThenSameLists!36 lt!221197 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!535575 () Bool)

(declare-fun res!226577 () Bool)

(declare-fun e!322915 () Bool)

(assert (=> b!535575 (=> (not res!226577) (not e!322915))))

(assert (=> b!535575 (= res!226577 (= (size!4172 token!491) (size!4173 (originalCharacters!990 token!491))))))

(declare-fun b!535576 () Bool)

(declare-fun e!322913 () Bool)

(assert (=> b!535576 (= e!322913 true)))

(declare-fun lt!221210 () Bool)

(declare-fun matchR!452 (Regex!1285 List!5188) Bool)

(assert (=> b!535576 (= lt!221210 (matchR!452 (regex!951 (rule!1653 token!491)) lt!221197))))

(declare-fun b!535577 () Bool)

(declare-fun res!226589 () Bool)

(assert (=> b!535577 (=> (not res!226589) (not e!322905))))

(assert (=> b!535577 (= res!226589 (= (size!4172 (_1!3394 (v!16107 lt!221199))) (size!4173 (originalCharacters!990 (_1!3394 (v!16107 lt!221199))))))))

(declare-fun b!535578 () Bool)

(assert (=> b!535578 (= e!322916 e!322914)))

(declare-fun res!226590 () Bool)

(assert (=> b!535578 (=> res!226590 e!322914)))

(declare-fun contains!1203 (List!5189 Rule!1702) Bool)

(assert (=> b!535578 (= res!226590 (not (contains!1203 rules!3103 (rule!1653 token!491))))))

(declare-fun maxPrefixOneRule!250 (LexerInterface!837 Rule!1702 List!5188) Option!1301)

(assert (=> b!535578 (= (maxPrefixOneRule!250 thiss!22590 (rule!1653 (_1!3394 (v!16107 lt!221199))) input!2705) (Some!1300 (tuple2!6261 (Token!1639 lt!221202 (rule!1653 (_1!3394 (v!16107 lt!221199))) lt!221206 lt!221192) (_2!3394 (v!16107 lt!221199)))))))

(declare-fun lt!221219 () Unit!9039)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!2 (LexerInterface!837 List!5189 List!5188 List!5188 List!5188 Rule!1702) Unit!9039)

(assert (=> b!535578 (= lt!221219 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!2 thiss!22590 rules!3103 lt!221192 input!2705 (_2!3394 (v!16107 lt!221199)) (rule!1653 (_1!3394 (v!16107 lt!221199)))))))

(assert (=> b!535578 e!322915))

(declare-fun res!226578 () Bool)

(assert (=> b!535578 (=> (not res!226578) (not e!322915))))

(declare-fun lt!221207 () TokenValue!975)

(assert (=> b!535578 (= res!226578 (= (value!31970 token!491) lt!221207))))

(declare-fun lt!221212 () BalanceConc!3344)

(assert (=> b!535578 (= lt!221207 (apply!1226 (transformation!951 (rule!1653 token!491)) lt!221212))))

(assert (=> b!535578 (= lt!221212 (seqFromList!1149 lt!221197))))

(declare-fun lt!221191 () List!5188)

(assert (=> b!535578 (= suffix!1342 lt!221191)))

(declare-fun lt!221200 () Unit!9039)

(assert (=> b!535578 (= lt!221200 (lemmaSamePrefixThenSameSuffix!320 lt!221197 suffix!1342 lt!221197 lt!221191 lt!221204))))

(assert (=> b!535578 (= lt!221191 (getSuffix!116 lt!221204 lt!221197))))

(declare-fun b!535579 () Bool)

(declare-fun e!322909 () Bool)

(declare-fun e!322901 () Bool)

(assert (=> b!535579 (= e!322909 e!322901)))

(declare-fun res!226580 () Bool)

(assert (=> b!535579 (=> (not res!226580) (not e!322901))))

(get-info :version)

(assert (=> b!535579 (= res!226580 ((_ is Some!1300) lt!221199))))

(declare-fun maxPrefix!535 (LexerInterface!837 List!5189 List!5188) Option!1301)

(assert (=> b!535579 (= lt!221199 (maxPrefix!535 thiss!22590 rules!3103 input!2705))))

(declare-fun b!535580 () Bool)

(assert (=> b!535580 (= e!322901 e!322907)))

(declare-fun res!226583 () Bool)

(assert (=> b!535580 (=> (not res!226583) (not e!322907))))

(assert (=> b!535580 (= res!226583 (= lt!221208 lt!221204))))

(assert (=> b!535580 (= lt!221208 (++!1439 lt!221197 suffix!1342))))

(declare-fun b!535581 () Bool)

(assert (=> b!535581 (= e!322915 (and (= (size!4172 token!491) lt!221198) (= (originalCharacters!990 token!491) lt!221197) (= (tuple2!6261 token!491 suffix!1342) (tuple2!6261 (Token!1639 lt!221207 (rule!1653 token!491) lt!221198 lt!221197) lt!221191))))))

(declare-fun tp!170915 () Bool)

(declare-fun b!535582 () Bool)

(declare-fun e!322897 () Bool)

(declare-fun inv!6497 (String!6618) Bool)

(declare-fun inv!6500 (TokenValueInjection!1718) Bool)

(assert (=> b!535582 (= e!322896 (and tp!170915 (inv!6497 (tag!1213 (rule!1653 token!491))) (inv!6500 (transformation!951 (rule!1653 token!491))) e!322897))))

(declare-fun b!535583 () Bool)

(declare-fun Unit!9041 () Unit!9039)

(assert (=> b!535583 (= e!322898 Unit!9041)))

(declare-fun b!535584 () Bool)

(declare-fun e!322902 () Bool)

(declare-fun e!322899 () Bool)

(assert (=> b!535584 (= e!322902 e!322899)))

(declare-fun res!226581 () Bool)

(assert (=> b!535584 (=> (not res!226581) (not e!322899))))

(assert (=> b!535584 (= res!226581 (= lt!221197 input!2705))))

(assert (=> b!535584 (= lt!221197 (list!2153 (charsOf!580 token!491)))))

(declare-fun b!535585 () Bool)

(declare-fun e!322900 () Bool)

(assert (=> b!535585 (= e!322900 e!322909)))

(declare-fun res!226591 () Bool)

(assert (=> b!535585 (=> (not res!226591) (not e!322909))))

(declare-fun lt!221217 () tuple2!6260)

(assert (=> b!535585 (= res!226591 (and (= (_1!3394 lt!221217) token!491) (= (_2!3394 lt!221217) suffix!1342)))))

(declare-fun lt!221213 () Option!1301)

(declare-fun get!1941 (Option!1301) tuple2!6260)

(assert (=> b!535585 (= lt!221217 (get!1941 lt!221213))))

(declare-fun b!535586 () Bool)

(declare-fun res!226585 () Bool)

(assert (=> b!535586 (=> (not res!226585) (not e!322902))))

(declare-fun isEmpty!3745 (List!5189) Bool)

(assert (=> b!535586 (= res!226585 (not (isEmpty!3745 rules!3103)))))

(declare-fun b!535573 () Bool)

(declare-fun tp!170912 () Bool)

(declare-fun e!322903 () Bool)

(assert (=> b!535573 (= e!322903 (and tp!170912 (inv!6497 (tag!1213 (h!10580 rules!3103))) (inv!6500 (transformation!951 (h!10580 rules!3103))) e!322904))))

(declare-fun res!226576 () Bool)

(assert (=> start!49396 (=> (not res!226576) (not e!322902))))

(assert (=> start!49396 (= res!226576 ((_ is Lexer!835) thiss!22590))))

(assert (=> start!49396 e!322902))

(declare-fun e!322912 () Bool)

(assert (=> start!49396 e!322912))

(declare-fun e!322917 () Bool)

(assert (=> start!49396 e!322917))

(declare-fun inv!6501 (Token!1638) Bool)

(assert (=> start!49396 (and (inv!6501 token!491) e!322911)))

(assert (=> start!49396 true))

(declare-fun e!322910 () Bool)

(assert (=> start!49396 e!322910))

(declare-fun b!535587 () Bool)

(declare-fun tp_is_empty!2925 () Bool)

(declare-fun tp!170913 () Bool)

(assert (=> b!535587 (= e!322912 (and tp_is_empty!2925 tp!170913))))

(declare-fun b!535588 () Bool)

(assert (=> b!535588 (= e!322899 e!322900)))

(declare-fun res!226588 () Bool)

(assert (=> b!535588 (=> (not res!226588) (not e!322900))))

(declare-fun isDefined!1113 (Option!1301) Bool)

(assert (=> b!535588 (= res!226588 (isDefined!1113 lt!221213))))

(assert (=> b!535588 (= lt!221213 (maxPrefix!535 thiss!22590 rules!3103 lt!221204))))

(assert (=> b!535588 (= lt!221204 (++!1439 input!2705 suffix!1342))))

(assert (=> b!535589 (= e!322897 (and tp!170910 tp!170918))))

(declare-fun b!535590 () Bool)

(declare-fun Unit!9042 () Unit!9039)

(assert (=> b!535590 (= e!322898 Unit!9042)))

(assert (=> b!535590 false))

(declare-fun b!535591 () Bool)

(declare-fun tp!170911 () Bool)

(assert (=> b!535591 (= e!322910 (and tp_is_empty!2925 tp!170911))))

(declare-fun b!535592 () Bool)

(declare-fun res!226587 () Bool)

(assert (=> b!535592 (=> (not res!226587) (not e!322902))))

(assert (=> b!535592 (= res!226587 (not (isEmpty!3744 input!2705)))))

(declare-fun b!535593 () Bool)

(declare-fun res!226579 () Bool)

(assert (=> b!535593 (=> res!226579 e!322914)))

(assert (=> b!535593 (= res!226579 (not (= lt!221204 lt!221208)))))

(declare-fun b!535594 () Bool)

(declare-fun res!226582 () Bool)

(assert (=> b!535594 (=> (not res!226582) (not e!322902))))

(declare-fun rulesInvariant!800 (LexerInterface!837 List!5189) Bool)

(assert (=> b!535594 (= res!226582 (rulesInvariant!800 thiss!22590 rules!3103))))

(declare-fun b!535595 () Bool)

(assert (=> b!535595 (= e!322905 (and (= (size!4172 (_1!3394 (v!16107 lt!221199))) lt!221206) (= (originalCharacters!990 (_1!3394 (v!16107 lt!221199))) lt!221192) (= (v!16107 lt!221199) (tuple2!6261 (Token!1639 lt!221202 (rule!1653 (_1!3394 (v!16107 lt!221199))) lt!221206 lt!221192) lt!221214))))))

(declare-fun b!535596 () Bool)

(declare-fun tp!170917 () Bool)

(assert (=> b!535596 (= e!322917 (and e!322903 tp!170917))))

(declare-fun b!535597 () Bool)

(assert (=> b!535597 (= e!322914 e!322913)))

(declare-fun res!226586 () Bool)

(assert (=> b!535597 (=> res!226586 e!322913)))

(assert (=> b!535597 (= res!226586 (not (= lt!221213 (Some!1300 (tuple2!6261 (Token!1639 lt!221207 (rule!1653 token!491) lt!221198 lt!221197) suffix!1342)))))))

(declare-fun lt!221209 () Unit!9039)

(declare-fun lemmaSemiInverse!102 (TokenValueInjection!1718 BalanceConc!3344) Unit!9039)

(assert (=> b!535597 (= lt!221209 (lemmaSemiInverse!102 (transformation!951 (rule!1653 token!491)) lt!221212))))

(assert (= (and start!49396 res!226576) b!535586))

(assert (= (and b!535586 res!226585) b!535594))

(assert (= (and b!535594 res!226582) b!535592))

(assert (= (and b!535592 res!226587) b!535584))

(assert (= (and b!535584 res!226581) b!535588))

(assert (= (and b!535588 res!226588) b!535585))

(assert (= (and b!535585 res!226591) b!535579))

(assert (= (and b!535579 res!226580) b!535580))

(assert (= (and b!535580 res!226583) b!535574))

(assert (= (and b!535574 c!101929) b!535590))

(assert (= (and b!535574 (not c!101929)) b!535583))

(assert (= (and b!535574 res!226592) b!535577))

(assert (= (and b!535577 res!226589) b!535595))

(assert (= (and b!535574 (not res!226575)) b!535578))

(assert (= (and b!535578 res!226578) b!535575))

(assert (= (and b!535575 res!226577) b!535581))

(assert (= (and b!535578 (not res!226590)) b!535593))

(assert (= (and b!535593 (not res!226579)) b!535572))

(assert (= (and b!535572 (not res!226584)) b!535597))

(assert (= (and b!535597 (not res!226586)) b!535576))

(assert (= (and start!49396 ((_ is Cons!5178) suffix!1342)) b!535587))

(assert (= b!535573 b!535571))

(assert (= b!535596 b!535573))

(assert (= (and start!49396 ((_ is Cons!5179) rules!3103)) b!535596))

(assert (= b!535582 b!535589))

(assert (= b!535570 b!535582))

(assert (= start!49396 b!535570))

(assert (= (and start!49396 ((_ is Cons!5178) input!2705)) b!535591))

(declare-fun m!781563 () Bool)

(assert (=> b!535578 m!781563))

(declare-fun m!781565 () Bool)

(assert (=> b!535578 m!781565))

(declare-fun m!781567 () Bool)

(assert (=> b!535578 m!781567))

(declare-fun m!781569 () Bool)

(assert (=> b!535578 m!781569))

(declare-fun m!781571 () Bool)

(assert (=> b!535578 m!781571))

(declare-fun m!781573 () Bool)

(assert (=> b!535578 m!781573))

(declare-fun m!781575 () Bool)

(assert (=> b!535578 m!781575))

(declare-fun m!781577 () Bool)

(assert (=> b!535580 m!781577))

(declare-fun m!781579 () Bool)

(assert (=> b!535584 m!781579))

(assert (=> b!535584 m!781579))

(declare-fun m!781581 () Bool)

(assert (=> b!535584 m!781581))

(declare-fun m!781583 () Bool)

(assert (=> b!535594 m!781583))

(declare-fun m!781585 () Bool)

(assert (=> b!535592 m!781585))

(declare-fun m!781587 () Bool)

(assert (=> b!535588 m!781587))

(declare-fun m!781589 () Bool)

(assert (=> b!535588 m!781589))

(declare-fun m!781591 () Bool)

(assert (=> b!535588 m!781591))

(declare-fun m!781593 () Bool)

(assert (=> b!535577 m!781593))

(declare-fun m!781595 () Bool)

(assert (=> b!535570 m!781595))

(declare-fun m!781597 () Bool)

(assert (=> b!535597 m!781597))

(declare-fun m!781599 () Bool)

(assert (=> b!535576 m!781599))

(declare-fun m!781601 () Bool)

(assert (=> b!535586 m!781601))

(declare-fun m!781603 () Bool)

(assert (=> b!535582 m!781603))

(declare-fun m!781605 () Bool)

(assert (=> b!535582 m!781605))

(declare-fun m!781607 () Bool)

(assert (=> b!535573 m!781607))

(declare-fun m!781609 () Bool)

(assert (=> b!535573 m!781609))

(declare-fun m!781611 () Bool)

(assert (=> start!49396 m!781611))

(declare-fun m!781613 () Bool)

(assert (=> b!535574 m!781613))

(declare-fun m!781615 () Bool)

(assert (=> b!535574 m!781615))

(declare-fun m!781617 () Bool)

(assert (=> b!535574 m!781617))

(declare-fun m!781619 () Bool)

(assert (=> b!535574 m!781619))

(declare-fun m!781621 () Bool)

(assert (=> b!535574 m!781621))

(declare-fun m!781623 () Bool)

(assert (=> b!535574 m!781623))

(declare-fun m!781625 () Bool)

(assert (=> b!535574 m!781625))

(declare-fun m!781627 () Bool)

(assert (=> b!535574 m!781627))

(declare-fun m!781629 () Bool)

(assert (=> b!535574 m!781629))

(declare-fun m!781631 () Bool)

(assert (=> b!535574 m!781631))

(declare-fun m!781633 () Bool)

(assert (=> b!535574 m!781633))

(declare-fun m!781635 () Bool)

(assert (=> b!535574 m!781635))

(declare-fun m!781637 () Bool)

(assert (=> b!535574 m!781637))

(declare-fun m!781639 () Bool)

(assert (=> b!535574 m!781639))

(declare-fun m!781641 () Bool)

(assert (=> b!535574 m!781641))

(declare-fun m!781643 () Bool)

(assert (=> b!535574 m!781643))

(declare-fun m!781645 () Bool)

(assert (=> b!535574 m!781645))

(assert (=> b!535574 m!781621))

(assert (=> b!535574 m!781615))

(declare-fun m!781647 () Bool)

(assert (=> b!535574 m!781647))

(declare-fun m!781649 () Bool)

(assert (=> b!535574 m!781649))

(declare-fun m!781651 () Bool)

(assert (=> b!535574 m!781651))

(declare-fun m!781653 () Bool)

(assert (=> b!535574 m!781653))

(declare-fun m!781655 () Bool)

(assert (=> b!535574 m!781655))

(declare-fun m!781657 () Bool)

(assert (=> b!535574 m!781657))

(declare-fun m!781659 () Bool)

(assert (=> b!535574 m!781659))

(declare-fun m!781661 () Bool)

(assert (=> b!535574 m!781661))

(assert (=> b!535574 m!781635))

(declare-fun m!781663 () Bool)

(assert (=> b!535574 m!781663))

(declare-fun m!781665 () Bool)

(assert (=> b!535574 m!781665))

(declare-fun m!781667 () Bool)

(assert (=> b!535585 m!781667))

(declare-fun m!781669 () Bool)

(assert (=> b!535575 m!781669))

(declare-fun m!781671 () Bool)

(assert (=> b!535579 m!781671))

(declare-fun m!781673 () Bool)

(assert (=> b!535572 m!781673))

(check-sat (not b!535570) (not b!535574) (not start!49396) (not b!535578) (not b!535588) (not b_next!14641) (not b!535587) b_and!52385 (not b!535585) (not b!535575) tp_is_empty!2925 (not b!535573) (not b!535596) (not b!535594) (not b!535586) (not b!535591) (not b!535572) b_and!52383 (not b!535582) (not b!535580) (not b_next!14647) (not b_next!14643) (not b!535579) (not b!535584) b_and!52379 (not b!535592) (not b!535577) b_and!52381 (not b!535576) (not b_next!14645) (not b!535597))
(check-sat b_and!52383 (not b_next!14647) (not b_next!14641) b_and!52385 (not b_next!14643) b_and!52379 b_and!52381 (not b_next!14645))
