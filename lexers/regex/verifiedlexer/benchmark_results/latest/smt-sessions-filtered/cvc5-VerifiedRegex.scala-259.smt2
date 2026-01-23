; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!4272 () Bool)

(assert start!4272)

(declare-fun b!54269 () Bool)

(declare-fun b_free!1777 () Bool)

(declare-fun b_next!1777 () Bool)

(assert (=> b!54269 (= b_free!1777 (not b_next!1777))))

(declare-fun tp!34685 () Bool)

(declare-fun b_and!1827 () Bool)

(assert (=> b!54269 (= tp!34685 b_and!1827)))

(declare-fun b_free!1779 () Bool)

(declare-fun b_next!1779 () Bool)

(assert (=> b!54269 (= b_free!1779 (not b_next!1779))))

(declare-fun tp!34681 () Bool)

(declare-fun b_and!1829 () Bool)

(assert (=> b!54269 (= tp!34681 b_and!1829)))

(declare-fun b!54265 () Bool)

(declare-fun res!34790 () Bool)

(declare-fun e!32129 () Bool)

(assert (=> b!54265 (=> res!34790 e!32129)))

(declare-datatypes ((List!1152 0))(
  ( (Nil!1146) (Cons!1146 (h!6543 (_ BitVec 16)) (t!17439 List!1152)) )
))
(declare-datatypes ((TokenValue!238 0))(
  ( (FloatLiteralValue!476 (text!2111 List!1152)) (TokenValueExt!237 (__x!1571 Int)) (Broken!1190 (value!9941 List!1152)) (Object!243) (End!238) (Def!238) (Underscore!238) (Match!238) (Else!238) (Error!238) (Case!238) (If!238) (Extends!238) (Abstract!238) (Class!238) (Val!238) (DelimiterValue!476 (del!298 List!1152)) (KeywordValue!244 (value!9942 List!1152)) (CommentValue!476 (value!9943 List!1152)) (WhitespaceValue!476 (value!9944 List!1152)) (IndentationValue!238 (value!9945 List!1152)) (String!1583) (Int32!238) (Broken!1191 (value!9946 List!1152)) (Boolean!239) (Unit!652) (OperatorValue!241 (op!298 List!1152)) (IdentifierValue!476 (value!9947 List!1152)) (IdentifierValue!477 (value!9948 List!1152)) (WhitespaceValue!477 (value!9949 List!1152)) (True!476) (False!476) (Broken!1192 (value!9950 List!1152)) (Broken!1193 (value!9951 List!1152)) (True!477) (RightBrace!238) (RightBracket!238) (Colon!238) (Null!238) (Comma!238) (LeftBracket!238) (False!477) (LeftBrace!238) (ImaginaryLiteralValue!238 (text!2112 List!1152)) (StringLiteralValue!714 (value!9952 List!1152)) (EOFValue!238 (value!9953 List!1152)) (IdentValue!238 (value!9954 List!1152)) (DelimiterValue!477 (value!9955 List!1152)) (DedentValue!238 (value!9956 List!1152)) (NewLineValue!238 (value!9957 List!1152)) (IntegerValue!714 (value!9958 (_ BitVec 32)) (text!2113 List!1152)) (IntegerValue!715 (value!9959 Int) (text!2114 List!1152)) (Times!238) (Or!238) (Equal!238) (Minus!238) (Broken!1194 (value!9960 List!1152)) (And!238) (Div!238) (LessEqual!238) (Mod!238) (Concat!554) (Not!238) (Plus!238) (SpaceValue!238 (value!9961 List!1152)) (IntegerValue!716 (value!9962 Int) (text!2115 List!1152)) (StringLiteralValue!715 (text!2116 List!1152)) (FloatLiteralValue!477 (text!2117 List!1152)) (BytesLiteralValue!238 (value!9963 List!1152)) (CommentValue!477 (value!9964 List!1152)) (StringLiteralValue!716 (value!9965 List!1152)) (ErrorTokenValue!238 (msg!299 List!1152)) )
))
(declare-datatypes ((C!1554 0))(
  ( (C!1555 (val!384 Int)) )
))
(declare-datatypes ((List!1153 0))(
  ( (Nil!1147) (Cons!1147 (h!6544 C!1554) (t!17440 List!1153)) )
))
(declare-datatypes ((IArray!601 0))(
  ( (IArray!602 (innerList!358 List!1153)) )
))
(declare-datatypes ((Conc!300 0))(
  ( (Node!300 (left!873 Conc!300) (right!1203 Conc!300) (csize!830 Int) (cheight!511 Int)) (Leaf!560 (xs!2879 IArray!601) (csize!831 Int)) (Empty!300) )
))
(declare-datatypes ((Regex!316 0))(
  ( (ElementMatch!316 (c!17151 C!1554)) (Concat!555 (regOne!1144 Regex!316) (regTwo!1144 Regex!316)) (EmptyExpr!316) (Star!316 (reg!645 Regex!316)) (EmptyLang!316) (Union!316 (regOne!1145 Regex!316) (regTwo!1145 Regex!316)) )
))
(declare-datatypes ((String!1584 0))(
  ( (String!1585 (value!9966 String)) )
))
(declare-datatypes ((BalanceConc!604 0))(
  ( (BalanceConc!605 (c!17152 Conc!300)) )
))
(declare-datatypes ((TokenValueInjection!300 0))(
  ( (TokenValueInjection!301 (toValue!727 Int) (toChars!586 Int)) )
))
(declare-datatypes ((Rule!296 0))(
  ( (Rule!297 (regex!248 Regex!316) (tag!426 String!1584) (isSeparator!248 Bool) (transformation!248 TokenValueInjection!300)) )
))
(declare-datatypes ((Token!260 0))(
  ( (Token!261 (value!9967 TokenValue!238) (rule!723 Rule!296) (size!1035 Int) (originalCharacters!301 List!1153)) )
))
(declare-datatypes ((List!1154 0))(
  ( (Nil!1148) (Cons!1148 (h!6545 Token!260) (t!17441 List!1154)) )
))
(declare-fun lt!9968 () List!1154)

(declare-fun lt!9967 () Token!260)

(declare-fun contains!150 (List!1154 Token!260) Bool)

(assert (=> b!54265 (= res!34790 (not (contains!150 lt!9968 lt!9967)))))

(declare-fun b!54266 () Bool)

(declare-fun e!32123 () Bool)

(assert (=> b!54266 (= e!32129 e!32123)))

(declare-fun res!34782 () Bool)

(assert (=> b!54266 (=> res!34782 e!32123)))

(declare-datatypes ((IArray!603 0))(
  ( (IArray!604 (innerList!359 List!1154)) )
))
(declare-datatypes ((Conc!301 0))(
  ( (Node!301 (left!874 Conc!301) (right!1204 Conc!301) (csize!832 Int) (cheight!512 Int)) (Leaf!561 (xs!2880 IArray!603) (csize!833 Int)) (Empty!301) )
))
(declare-datatypes ((BalanceConc!606 0))(
  ( (BalanceConc!607 (c!17153 Conc!301)) )
))
(declare-fun v!6227 () BalanceConc!606)

(declare-fun lt!9965 () Token!260)

(declare-fun contains!151 (BalanceConc!606 Token!260) Bool)

(assert (=> b!54266 (= res!34782 (not (contains!151 v!6227 lt!9965)))))

(declare-fun from!821 () Int)

(declare-fun apply!136 (BalanceConc!606 Int) Token!260)

(assert (=> b!54266 (= lt!9965 (apply!136 v!6227 (+ 1 from!821)))))

(declare-fun e!32130 () Bool)

(declare-fun e!32126 () Bool)

(declare-datatypes ((List!1155 0))(
  ( (Nil!1149) (Cons!1149 (h!6546 Rule!296) (t!17442 List!1155)) )
))
(declare-fun rules!1069 () List!1155)

(declare-fun b!54267 () Bool)

(declare-fun tp!34684 () Bool)

(declare-fun inv!1512 (String!1584) Bool)

(declare-fun inv!1515 (TokenValueInjection!300) Bool)

(assert (=> b!54267 (= e!32130 (and tp!34684 (inv!1512 (tag!426 (h!6546 rules!1069))) (inv!1515 (transformation!248 (h!6546 rules!1069))) e!32126))))

(declare-fun b!54268 () Bool)

(declare-fun res!34784 () Bool)

(declare-fun e!32124 () Bool)

(assert (=> b!54268 (=> (not res!34784) (not e!32124))))

(declare-datatypes ((LexerInterface!140 0))(
  ( (LexerInterfaceExt!137 (__x!1572 Int)) (Lexer!138) )
))
(declare-fun thiss!11059 () LexerInterface!140)

(declare-fun rulesProduceEachTokenIndividually!78 (LexerInterface!140 List!1155 BalanceConc!606) Bool)

(assert (=> b!54268 (= res!34784 (rulesProduceEachTokenIndividually!78 thiss!11059 rules!1069 v!6227))))

(assert (=> b!54269 (= e!32126 (and tp!34685 tp!34681))))

(declare-fun b!54270 () Bool)

(declare-fun e!32125 () Bool)

(declare-fun tp!34683 () Bool)

(assert (=> b!54270 (= e!32125 (and e!32130 tp!34683))))

(declare-fun b!54271 () Bool)

(declare-fun res!34785 () Bool)

(assert (=> b!54271 (=> (not res!34785) (not e!32124))))

(declare-fun isEmpty!234 (List!1155) Bool)

(assert (=> b!54271 (= res!34785 (not (isEmpty!234 rules!1069)))))

(declare-fun b!54273 () Bool)

(declare-fun res!34786 () Bool)

(assert (=> b!54273 (=> (not res!34786) (not e!32124))))

(declare-fun rulesInvariant!134 (LexerInterface!140 List!1155) Bool)

(assert (=> b!54273 (= res!34786 (rulesInvariant!134 thiss!11059 rules!1069))))

(declare-fun b!54274 () Bool)

(declare-fun e!32131 () Bool)

(assert (=> b!54274 (= e!32131 e!32124)))

(declare-fun res!34789 () Bool)

(assert (=> b!54274 (=> (not res!34789) (not e!32124))))

(declare-fun lt!9962 () Int)

(assert (=> b!54274 (= res!34789 (<= from!821 lt!9962))))

(declare-fun size!1036 (BalanceConc!606) Int)

(assert (=> b!54274 (= lt!9962 (size!1036 v!6227))))

(declare-fun b!54275 () Bool)

(declare-fun e!32128 () Bool)

(declare-fun tp!34682 () Bool)

(declare-fun inv!1516 (Conc!301) Bool)

(assert (=> b!54275 (= e!32128 (and (inv!1516 (c!17153 v!6227)) tp!34682))))

(declare-fun b!54276 () Bool)

(declare-fun res!34787 () Bool)

(assert (=> b!54276 (=> (not res!34787) (not e!32124))))

(assert (=> b!54276 (= res!34787 (< from!821 (- lt!9962 1)))))

(declare-fun b!54277 () Bool)

(declare-fun res!34791 () Bool)

(assert (=> b!54277 (=> res!34791 e!32123)))

(assert (=> b!54277 (= res!34791 (not (contains!150 lt!9968 lt!9965)))))

(declare-fun b!54278 () Bool)

(assert (=> b!54278 (= e!32124 (not e!32129))))

(declare-fun res!34783 () Bool)

(assert (=> b!54278 (=> res!34783 e!32129)))

(assert (=> b!54278 (= res!34783 (not (contains!151 v!6227 lt!9967)))))

(assert (=> b!54278 (= lt!9967 (apply!136 v!6227 from!821))))

(declare-fun lt!9961 () List!1154)

(declare-fun tail!83 (List!1154) List!1154)

(declare-fun drop!59 (List!1154 Int) List!1154)

(assert (=> b!54278 (= (tail!83 lt!9961) (drop!59 lt!9968 (+ 2 from!821)))))

(declare-datatypes ((Unit!653 0))(
  ( (Unit!654) )
))
(declare-fun lt!9963 () Unit!653)

(declare-fun lemmaDropTail!51 (List!1154 Int) Unit!653)

(assert (=> b!54278 (= lt!9963 (lemmaDropTail!51 lt!9968 (+ 1 from!821)))))

(declare-fun lt!9970 () List!1154)

(assert (=> b!54278 (= (tail!83 lt!9970) lt!9961)))

(declare-fun lt!9971 () Unit!653)

(assert (=> b!54278 (= lt!9971 (lemmaDropTail!51 lt!9968 from!821))))

(declare-fun head!399 (List!1154) Token!260)

(declare-fun apply!137 (List!1154 Int) Token!260)

(assert (=> b!54278 (= (head!399 lt!9961) (apply!137 lt!9968 (+ 1 from!821)))))

(assert (=> b!54278 (= lt!9961 (drop!59 lt!9968 (+ 1 from!821)))))

(declare-fun lt!9969 () Unit!653)

(declare-fun lemmaDropApply!59 (List!1154 Int) Unit!653)

(assert (=> b!54278 (= lt!9969 (lemmaDropApply!59 lt!9968 (+ 1 from!821)))))

(assert (=> b!54278 (= (head!399 lt!9970) (apply!137 lt!9968 from!821))))

(assert (=> b!54278 (= lt!9970 (drop!59 lt!9968 from!821))))

(declare-fun lt!9964 () Unit!653)

(assert (=> b!54278 (= lt!9964 (lemmaDropApply!59 lt!9968 from!821))))

(declare-fun list!300 (BalanceConc!606) List!1154)

(assert (=> b!54278 (= lt!9968 (list!300 v!6227))))

(declare-fun res!34788 () Bool)

(assert (=> start!4272 (=> (not res!34788) (not e!32131))))

(assert (=> start!4272 (= res!34788 (and (is-Lexer!138 thiss!11059) (>= from!821 0)))))

(assert (=> start!4272 e!32131))

(assert (=> start!4272 true))

(declare-fun inv!1517 (BalanceConc!606) Bool)

(assert (=> start!4272 (and (inv!1517 v!6227) e!32128)))

(assert (=> start!4272 e!32125))

(declare-fun b!54272 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!48 (LexerInterface!140 List!1155 List!1154) Bool)

(assert (=> b!54272 (= e!32123 (rulesProduceEachTokenIndividuallyList!48 thiss!11059 rules!1069 lt!9968))))

(declare-fun rulesProduceIndividualToken!37 (LexerInterface!140 List!1155 Token!260) Bool)

(assert (=> b!54272 (rulesProduceIndividualToken!37 thiss!11059 rules!1069 lt!9967)))

(declare-fun lt!9966 () Unit!653)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!23 (LexerInterface!140 List!1155 List!1154 Token!260) Unit!653)

(assert (=> b!54272 (= lt!9966 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!23 thiss!11059 rules!1069 lt!9968 lt!9967))))

(assert (= (and start!4272 res!34788) b!54274))

(assert (= (and b!54274 res!34789) b!54271))

(assert (= (and b!54271 res!34785) b!54273))

(assert (= (and b!54273 res!34786) b!54268))

(assert (= (and b!54268 res!34784) b!54276))

(assert (= (and b!54276 res!34787) b!54278))

(assert (= (and b!54278 (not res!34783)) b!54265))

(assert (= (and b!54265 (not res!34790)) b!54266))

(assert (= (and b!54266 (not res!34782)) b!54277))

(assert (= (and b!54277 (not res!34791)) b!54272))

(assert (= start!4272 b!54275))

(assert (= b!54267 b!54269))

(assert (= b!54270 b!54267))

(assert (= (and start!4272 (is-Cons!1149 rules!1069)) b!54270))

(declare-fun m!28118 () Bool)

(assert (=> b!54273 m!28118))

(declare-fun m!28120 () Bool)

(assert (=> b!54278 m!28120))

(declare-fun m!28122 () Bool)

(assert (=> b!54278 m!28122))

(declare-fun m!28124 () Bool)

(assert (=> b!54278 m!28124))

(declare-fun m!28126 () Bool)

(assert (=> b!54278 m!28126))

(declare-fun m!28128 () Bool)

(assert (=> b!54278 m!28128))

(declare-fun m!28130 () Bool)

(assert (=> b!54278 m!28130))

(declare-fun m!28132 () Bool)

(assert (=> b!54278 m!28132))

(declare-fun m!28134 () Bool)

(assert (=> b!54278 m!28134))

(declare-fun m!28136 () Bool)

(assert (=> b!54278 m!28136))

(declare-fun m!28138 () Bool)

(assert (=> b!54278 m!28138))

(declare-fun m!28140 () Bool)

(assert (=> b!54278 m!28140))

(declare-fun m!28142 () Bool)

(assert (=> b!54278 m!28142))

(declare-fun m!28144 () Bool)

(assert (=> b!54278 m!28144))

(declare-fun m!28146 () Bool)

(assert (=> b!54278 m!28146))

(declare-fun m!28148 () Bool)

(assert (=> b!54278 m!28148))

(declare-fun m!28150 () Bool)

(assert (=> b!54278 m!28150))

(declare-fun m!28152 () Bool)

(assert (=> b!54277 m!28152))

(declare-fun m!28154 () Bool)

(assert (=> b!54267 m!28154))

(declare-fun m!28156 () Bool)

(assert (=> b!54267 m!28156))

(declare-fun m!28158 () Bool)

(assert (=> b!54265 m!28158))

(declare-fun m!28160 () Bool)

(assert (=> start!4272 m!28160))

(declare-fun m!28162 () Bool)

(assert (=> b!54272 m!28162))

(declare-fun m!28164 () Bool)

(assert (=> b!54272 m!28164))

(declare-fun m!28166 () Bool)

(assert (=> b!54272 m!28166))

(declare-fun m!28168 () Bool)

(assert (=> b!54274 m!28168))

(declare-fun m!28170 () Bool)

(assert (=> b!54271 m!28170))

(declare-fun m!28172 () Bool)

(assert (=> b!54266 m!28172))

(declare-fun m!28174 () Bool)

(assert (=> b!54266 m!28174))

(declare-fun m!28176 () Bool)

(assert (=> b!54268 m!28176))

(declare-fun m!28178 () Bool)

(assert (=> b!54275 m!28178))

(push 1)

(assert (not b!54265))

(assert (not start!4272))

(assert (not b!54266))

(assert (not b!54270))

(assert b_and!1829)

(assert b_and!1827)

(assert (not b!54277))

(assert (not b!54274))

(assert (not b!54273))

(assert (not b!54271))

(assert (not b!54267))

(assert (not b!54272))

(assert (not b!54268))

(assert (not b!54275))

(assert (not b!54278))

(assert (not b_next!1779))

(assert (not b_next!1777))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1829)

(assert b_and!1827)

(assert (not b_next!1777))

(assert (not b_next!1779))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6832 () Bool)

(declare-fun lt!10007 () Bool)

(declare-fun content!38 (List!1154) (Set Token!260))

(assert (=> d!6832 (= lt!10007 (set.member lt!9967 (content!38 lt!9968)))))

(declare-fun e!32164 () Bool)

(assert (=> d!6832 (= lt!10007 e!32164)))

(declare-fun res!34830 () Bool)

(assert (=> d!6832 (=> (not res!34830) (not e!32164))))

(assert (=> d!6832 (= res!34830 (is-Cons!1148 lt!9968))))

(assert (=> d!6832 (= (contains!150 lt!9968 lt!9967) lt!10007)))

(declare-fun b!54325 () Bool)

(declare-fun e!32163 () Bool)

(assert (=> b!54325 (= e!32164 e!32163)))

(declare-fun res!34831 () Bool)

(assert (=> b!54325 (=> res!34831 e!32163)))

(assert (=> b!54325 (= res!34831 (= (h!6545 lt!9968) lt!9967))))

(declare-fun b!54326 () Bool)

(assert (=> b!54326 (= e!32163 (contains!150 (t!17441 lt!9968) lt!9967))))

(assert (= (and d!6832 res!34830) b!54325))

(assert (= (and b!54325 (not res!34831)) b!54326))

(declare-fun m!28242 () Bool)

(assert (=> d!6832 m!28242))

(declare-fun m!28244 () Bool)

(assert (=> d!6832 m!28244))

(declare-fun m!28246 () Bool)

(assert (=> b!54326 m!28246))

(assert (=> b!54265 d!6832))

(declare-fun d!6834 () Bool)

(declare-fun c!17159 () Bool)

(assert (=> d!6834 (= c!17159 (is-Node!301 (c!17153 v!6227)))))

(declare-fun e!32169 () Bool)

(assert (=> d!6834 (= (inv!1516 (c!17153 v!6227)) e!32169)))

(declare-fun b!54333 () Bool)

(declare-fun inv!1521 (Conc!301) Bool)

(assert (=> b!54333 (= e!32169 (inv!1521 (c!17153 v!6227)))))

(declare-fun b!54334 () Bool)

(declare-fun e!32170 () Bool)

(assert (=> b!54334 (= e!32169 e!32170)))

(declare-fun res!34834 () Bool)

(assert (=> b!54334 (= res!34834 (not (is-Leaf!561 (c!17153 v!6227))))))

(assert (=> b!54334 (=> res!34834 e!32170)))

(declare-fun b!54335 () Bool)

(declare-fun inv!1522 (Conc!301) Bool)

(assert (=> b!54335 (= e!32170 (inv!1522 (c!17153 v!6227)))))

(assert (= (and d!6834 c!17159) b!54333))

(assert (= (and d!6834 (not c!17159)) b!54334))

(assert (= (and b!54334 (not res!34834)) b!54335))

(declare-fun m!28248 () Bool)

(assert (=> b!54333 m!28248))

(declare-fun m!28250 () Bool)

(assert (=> b!54335 m!28250))

(assert (=> b!54275 d!6834))

(declare-fun d!6836 () Bool)

(declare-fun lt!10010 () Int)

(declare-fun size!1039 (List!1154) Int)

(assert (=> d!6836 (= lt!10010 (size!1039 (list!300 v!6227)))))

(declare-fun size!1040 (Conc!301) Int)

(assert (=> d!6836 (= lt!10010 (size!1040 (c!17153 v!6227)))))

(assert (=> d!6836 (= (size!1036 v!6227) lt!10010)))

(declare-fun bs!6749 () Bool)

(assert (= bs!6749 d!6836))

(assert (=> bs!6749 m!28142))

(assert (=> bs!6749 m!28142))

(declare-fun m!28252 () Bool)

(assert (=> bs!6749 m!28252))

(declare-fun m!28254 () Bool)

(assert (=> bs!6749 m!28254))

(assert (=> b!54274 d!6836))

(declare-fun b!54368 () Bool)

(declare-fun e!32198 () Bool)

(assert (=> b!54368 (= e!32198 true)))

(declare-fun b!54367 () Bool)

(declare-fun e!32197 () Bool)

(assert (=> b!54367 (= e!32197 e!32198)))

(declare-fun b!54366 () Bool)

(declare-fun e!32196 () Bool)

(assert (=> b!54366 (= e!32196 e!32197)))

(declare-fun d!6838 () Bool)

(assert (=> d!6838 e!32196))

(assert (= b!54367 b!54368))

(assert (= b!54366 b!54367))

(assert (= (and d!6838 (is-Cons!1149 rules!1069)) b!54366))

(declare-fun order!375 () Int)

(declare-fun order!373 () Int)

(declare-fun lambda!1120 () Int)

(declare-fun dynLambda!213 (Int Int) Int)

(declare-fun dynLambda!214 (Int Int) Int)

(assert (=> b!54368 (< (dynLambda!213 order!373 (toValue!727 (transformation!248 (h!6546 rules!1069)))) (dynLambda!214 order!375 lambda!1120))))

(declare-fun order!377 () Int)

(declare-fun dynLambda!215 (Int Int) Int)

(assert (=> b!54368 (< (dynLambda!215 order!377 (toChars!586 (transformation!248 (h!6546 rules!1069)))) (dynLambda!214 order!375 lambda!1120))))

(assert (=> d!6838 true))

(declare-fun e!32189 () Bool)

(assert (=> d!6838 e!32189))

(declare-fun res!34850 () Bool)

(assert (=> d!6838 (=> (not res!34850) (not e!32189))))

(declare-fun lt!10021 () Bool)

(declare-fun forall!143 (List!1154 Int) Bool)

(assert (=> d!6838 (= res!34850 (= lt!10021 (forall!143 (list!300 v!6227) lambda!1120)))))

(declare-fun forall!144 (BalanceConc!606 Int) Bool)

(assert (=> d!6838 (= lt!10021 (forall!144 v!6227 lambda!1120))))

(assert (=> d!6838 (not (isEmpty!234 rules!1069))))

(assert (=> d!6838 (= (rulesProduceEachTokenIndividually!78 thiss!11059 rules!1069 v!6227) lt!10021)))

(declare-fun b!54357 () Bool)

(assert (=> b!54357 (= e!32189 (= lt!10021 (rulesProduceEachTokenIndividuallyList!48 thiss!11059 rules!1069 (list!300 v!6227))))))

(assert (= (and d!6838 res!34850) b!54357))

(assert (=> d!6838 m!28142))

(assert (=> d!6838 m!28142))

(declare-fun m!28272 () Bool)

(assert (=> d!6838 m!28272))

(declare-fun m!28274 () Bool)

(assert (=> d!6838 m!28274))

(assert (=> d!6838 m!28170))

(assert (=> b!54357 m!28142))

(assert (=> b!54357 m!28142))

(declare-fun m!28276 () Bool)

(assert (=> b!54357 m!28276))

(assert (=> b!54268 d!6838))

(declare-fun b!54389 () Bool)

(declare-fun e!32213 () List!1154)

(assert (=> b!54389 (= e!32213 (drop!59 (t!17441 lt!9968) (- from!821 1)))))

(declare-fun b!54390 () Bool)

(declare-fun e!32211 () List!1154)

(assert (=> b!54390 (= e!32211 Nil!1148)))

(declare-fun b!54391 () Bool)

(declare-fun e!32209 () Bool)

(declare-fun lt!10024 () List!1154)

(declare-fun e!32212 () Int)

(assert (=> b!54391 (= e!32209 (= (size!1039 lt!10024) e!32212))))

(declare-fun c!17173 () Bool)

(assert (=> b!54391 (= c!17173 (<= from!821 0))))

(declare-fun d!6850 () Bool)

(assert (=> d!6850 e!32209))

(declare-fun res!34853 () Bool)

(assert (=> d!6850 (=> (not res!34853) (not e!32209))))

(assert (=> d!6850 (= res!34853 (set.subset (content!38 lt!10024) (content!38 lt!9968)))))

(assert (=> d!6850 (= lt!10024 e!32211)))

(declare-fun c!17172 () Bool)

(assert (=> d!6850 (= c!17172 (is-Nil!1148 lt!9968))))

(assert (=> d!6850 (= (drop!59 lt!9968 from!821) lt!10024)))

(declare-fun b!54392 () Bool)

(declare-fun e!32210 () Int)

(assert (=> b!54392 (= e!32212 e!32210)))

(declare-fun c!17171 () Bool)

(declare-fun call!3411 () Int)

(assert (=> b!54392 (= c!17171 (>= from!821 call!3411))))

(declare-fun b!54393 () Bool)

(assert (=> b!54393 (= e!32210 (- call!3411 from!821))))

(declare-fun b!54394 () Bool)

(assert (=> b!54394 (= e!32213 lt!9968)))

(declare-fun b!54395 () Bool)

(assert (=> b!54395 (= e!32210 0)))

(declare-fun b!54396 () Bool)

(assert (=> b!54396 (= e!32212 call!3411)))

(declare-fun b!54397 () Bool)

(assert (=> b!54397 (= e!32211 e!32213)))

(declare-fun c!17174 () Bool)

(assert (=> b!54397 (= c!17174 (<= from!821 0))))

(declare-fun bm!3406 () Bool)

(assert (=> bm!3406 (= call!3411 (size!1039 lt!9968))))

(assert (= (and d!6850 c!17172) b!54390))

(assert (= (and d!6850 (not c!17172)) b!54397))

(assert (= (and b!54397 c!17174) b!54394))

(assert (= (and b!54397 (not c!17174)) b!54389))

(assert (= (and d!6850 res!34853) b!54391))

(assert (= (and b!54391 c!17173) b!54396))

(assert (= (and b!54391 (not c!17173)) b!54392))

(assert (= (and b!54392 c!17171) b!54395))

(assert (= (and b!54392 (not c!17171)) b!54393))

(assert (= (or b!54396 b!54392 b!54393) bm!3406))

(declare-fun m!28278 () Bool)

(assert (=> b!54389 m!28278))

(declare-fun m!28280 () Bool)

(assert (=> b!54391 m!28280))

(declare-fun m!28282 () Bool)

(assert (=> d!6850 m!28282))

(assert (=> d!6850 m!28242))

(declare-fun m!28284 () Bool)

(assert (=> bm!3406 m!28284))

(assert (=> b!54278 d!6850))

(declare-fun d!6852 () Bool)

(declare-fun lt!10027 () Token!260)

(assert (=> d!6852 (= lt!10027 (apply!137 (list!300 v!6227) from!821))))

(declare-fun apply!140 (Conc!301 Int) Token!260)

(assert (=> d!6852 (= lt!10027 (apply!140 (c!17153 v!6227) from!821))))

(declare-fun e!32216 () Bool)

(assert (=> d!6852 e!32216))

(declare-fun res!34856 () Bool)

(assert (=> d!6852 (=> (not res!34856) (not e!32216))))

(assert (=> d!6852 (= res!34856 (<= 0 from!821))))

(assert (=> d!6852 (= (apply!136 v!6227 from!821) lt!10027)))

(declare-fun b!54400 () Bool)

(assert (=> b!54400 (= e!32216 (< from!821 (size!1036 v!6227)))))

(assert (= (and d!6852 res!34856) b!54400))

(assert (=> d!6852 m!28142))

(assert (=> d!6852 m!28142))

(declare-fun m!28286 () Bool)

(assert (=> d!6852 m!28286))

(declare-fun m!28288 () Bool)

(assert (=> d!6852 m!28288))

(assert (=> b!54400 m!28168))

(assert (=> b!54278 d!6852))

(declare-fun b!54401 () Bool)

(declare-fun e!32221 () List!1154)

(assert (=> b!54401 (= e!32221 (drop!59 (t!17441 lt!9968) (- (+ 1 from!821) 1)))))

(declare-fun b!54402 () Bool)

(declare-fun e!32219 () List!1154)

(assert (=> b!54402 (= e!32219 Nil!1148)))

(declare-fun b!54403 () Bool)

(declare-fun e!32217 () Bool)

(declare-fun lt!10028 () List!1154)

(declare-fun e!32220 () Int)

(assert (=> b!54403 (= e!32217 (= (size!1039 lt!10028) e!32220))))

(declare-fun c!17177 () Bool)

(assert (=> b!54403 (= c!17177 (<= (+ 1 from!821) 0))))

(declare-fun d!6854 () Bool)

(assert (=> d!6854 e!32217))

(declare-fun res!34857 () Bool)

(assert (=> d!6854 (=> (not res!34857) (not e!32217))))

(assert (=> d!6854 (= res!34857 (set.subset (content!38 lt!10028) (content!38 lt!9968)))))

(assert (=> d!6854 (= lt!10028 e!32219)))

(declare-fun c!17176 () Bool)

(assert (=> d!6854 (= c!17176 (is-Nil!1148 lt!9968))))

(assert (=> d!6854 (= (drop!59 lt!9968 (+ 1 from!821)) lt!10028)))

(declare-fun b!54404 () Bool)

(declare-fun e!32218 () Int)

(assert (=> b!54404 (= e!32220 e!32218)))

(declare-fun c!17175 () Bool)

(declare-fun call!3412 () Int)

(assert (=> b!54404 (= c!17175 (>= (+ 1 from!821) call!3412))))

(declare-fun b!54405 () Bool)

(assert (=> b!54405 (= e!32218 (- call!3412 (+ 1 from!821)))))

(declare-fun b!54406 () Bool)

(assert (=> b!54406 (= e!32221 lt!9968)))

(declare-fun b!54407 () Bool)

(assert (=> b!54407 (= e!32218 0)))

(declare-fun b!54408 () Bool)

(assert (=> b!54408 (= e!32220 call!3412)))

(declare-fun b!54409 () Bool)

(assert (=> b!54409 (= e!32219 e!32221)))

(declare-fun c!17178 () Bool)

(assert (=> b!54409 (= c!17178 (<= (+ 1 from!821) 0))))

(declare-fun bm!3407 () Bool)

(assert (=> bm!3407 (= call!3412 (size!1039 lt!9968))))

(assert (= (and d!6854 c!17176) b!54402))

(assert (= (and d!6854 (not c!17176)) b!54409))

(assert (= (and b!54409 c!17178) b!54406))

(assert (= (and b!54409 (not c!17178)) b!54401))

(assert (= (and d!6854 res!34857) b!54403))

(assert (= (and b!54403 c!17177) b!54408))

(assert (= (and b!54403 (not c!17177)) b!54404))

(assert (= (and b!54404 c!17175) b!54407))

(assert (= (and b!54404 (not c!17175)) b!54405))

(assert (= (or b!54408 b!54404 b!54405) bm!3407))

(declare-fun m!28290 () Bool)

(assert (=> b!54401 m!28290))

(declare-fun m!28292 () Bool)

(assert (=> b!54403 m!28292))

(declare-fun m!28294 () Bool)

(assert (=> d!6854 m!28294))

(assert (=> d!6854 m!28242))

(assert (=> bm!3407 m!28284))

(assert (=> b!54278 d!6854))

(declare-fun d!6856 () Bool)

(declare-fun list!302 (Conc!301) List!1154)

(assert (=> d!6856 (= (list!300 v!6227) (list!302 (c!17153 v!6227)))))

(declare-fun bs!6751 () Bool)

(assert (= bs!6751 d!6856))

(declare-fun m!28296 () Bool)

(assert (=> bs!6751 m!28296))

(assert (=> b!54278 d!6856))

(declare-fun d!6858 () Bool)

(assert (=> d!6858 (= (head!399 (drop!59 lt!9968 from!821)) (apply!137 lt!9968 from!821))))

(declare-fun lt!10031 () Unit!653)

(declare-fun choose!1201 (List!1154 Int) Unit!653)

(assert (=> d!6858 (= lt!10031 (choose!1201 lt!9968 from!821))))

(declare-fun e!32224 () Bool)

(assert (=> d!6858 e!32224))

(declare-fun res!34860 () Bool)

(assert (=> d!6858 (=> (not res!34860) (not e!32224))))

(assert (=> d!6858 (= res!34860 (>= from!821 0))))

(assert (=> d!6858 (= (lemmaDropApply!59 lt!9968 from!821) lt!10031)))

(declare-fun b!54412 () Bool)

(assert (=> b!54412 (= e!32224 (< from!821 (size!1039 lt!9968)))))

(assert (= (and d!6858 res!34860) b!54412))

(assert (=> d!6858 m!28122))

(assert (=> d!6858 m!28122))

(declare-fun m!28298 () Bool)

(assert (=> d!6858 m!28298))

(assert (=> d!6858 m!28120))

(declare-fun m!28300 () Bool)

(assert (=> d!6858 m!28300))

(assert (=> b!54412 m!28284))

(assert (=> b!54278 d!6858))

(declare-fun d!6860 () Bool)

(assert (=> d!6860 (= (head!399 (drop!59 lt!9968 (+ 1 from!821))) (apply!137 lt!9968 (+ 1 from!821)))))

(declare-fun lt!10032 () Unit!653)

(assert (=> d!6860 (= lt!10032 (choose!1201 lt!9968 (+ 1 from!821)))))

(declare-fun e!32225 () Bool)

(assert (=> d!6860 e!32225))

(declare-fun res!34861 () Bool)

(assert (=> d!6860 (=> (not res!34861) (not e!32225))))

(assert (=> d!6860 (= res!34861 (>= (+ 1 from!821) 0))))

(assert (=> d!6860 (= (lemmaDropApply!59 lt!9968 (+ 1 from!821)) lt!10032)))

(declare-fun b!54413 () Bool)

(assert (=> b!54413 (= e!32225 (< (+ 1 from!821) (size!1039 lt!9968)))))

(assert (= (and d!6860 res!34861) b!54413))

(assert (=> d!6860 m!28148))

(assert (=> d!6860 m!28148))

(declare-fun m!28302 () Bool)

(assert (=> d!6860 m!28302))

(assert (=> d!6860 m!28124))

(declare-fun m!28304 () Bool)

(assert (=> d!6860 m!28304))

(assert (=> b!54413 m!28284))

(assert (=> b!54278 d!6860))

(declare-fun d!6862 () Bool)

(assert (=> d!6862 (= (head!399 lt!9961) (h!6545 lt!9961))))

(assert (=> b!54278 d!6862))

(declare-fun d!6864 () Bool)

(declare-fun lt!10035 () Token!260)

(assert (=> d!6864 (contains!150 lt!9968 lt!10035)))

(declare-fun e!32230 () Token!260)

(assert (=> d!6864 (= lt!10035 e!32230)))

(declare-fun c!17181 () Bool)

(assert (=> d!6864 (= c!17181 (= (+ 1 from!821) 0))))

(declare-fun e!32231 () Bool)

(assert (=> d!6864 e!32231))

(declare-fun res!34864 () Bool)

(assert (=> d!6864 (=> (not res!34864) (not e!32231))))

(assert (=> d!6864 (= res!34864 (<= 0 (+ 1 from!821)))))

(assert (=> d!6864 (= (apply!137 lt!9968 (+ 1 from!821)) lt!10035)))

(declare-fun b!54420 () Bool)

(assert (=> b!54420 (= e!32231 (< (+ 1 from!821) (size!1039 lt!9968)))))

(declare-fun b!54421 () Bool)

(assert (=> b!54421 (= e!32230 (head!399 lt!9968))))

(declare-fun b!54422 () Bool)

(assert (=> b!54422 (= e!32230 (apply!137 (tail!83 lt!9968) (- (+ 1 from!821) 1)))))

(assert (= (and d!6864 res!34864) b!54420))

(assert (= (and d!6864 c!17181) b!54421))

(assert (= (and d!6864 (not c!17181)) b!54422))

(declare-fun m!28306 () Bool)

(assert (=> d!6864 m!28306))

(assert (=> b!54420 m!28284))

(declare-fun m!28308 () Bool)

(assert (=> b!54421 m!28308))

(declare-fun m!28310 () Bool)

(assert (=> b!54422 m!28310))

(assert (=> b!54422 m!28310))

(declare-fun m!28312 () Bool)

(assert (=> b!54422 m!28312))

(assert (=> b!54278 d!6864))

(declare-fun b!54423 () Bool)

(declare-fun e!32236 () List!1154)

(assert (=> b!54423 (= e!32236 (drop!59 (t!17441 lt!9968) (- (+ 2 from!821) 1)))))

(declare-fun b!54424 () Bool)

(declare-fun e!32234 () List!1154)

(assert (=> b!54424 (= e!32234 Nil!1148)))

(declare-fun b!54425 () Bool)

(declare-fun e!32232 () Bool)

(declare-fun lt!10036 () List!1154)

(declare-fun e!32235 () Int)

(assert (=> b!54425 (= e!32232 (= (size!1039 lt!10036) e!32235))))

(declare-fun c!17184 () Bool)

(assert (=> b!54425 (= c!17184 (<= (+ 2 from!821) 0))))

(declare-fun d!6866 () Bool)

(assert (=> d!6866 e!32232))

(declare-fun res!34865 () Bool)

(assert (=> d!6866 (=> (not res!34865) (not e!32232))))

(assert (=> d!6866 (= res!34865 (set.subset (content!38 lt!10036) (content!38 lt!9968)))))

(assert (=> d!6866 (= lt!10036 e!32234)))

(declare-fun c!17183 () Bool)

(assert (=> d!6866 (= c!17183 (is-Nil!1148 lt!9968))))

(assert (=> d!6866 (= (drop!59 lt!9968 (+ 2 from!821)) lt!10036)))

(declare-fun b!54426 () Bool)

(declare-fun e!32233 () Int)

(assert (=> b!54426 (= e!32235 e!32233)))

(declare-fun c!17182 () Bool)

(declare-fun call!3413 () Int)

(assert (=> b!54426 (= c!17182 (>= (+ 2 from!821) call!3413))))

(declare-fun b!54427 () Bool)

(assert (=> b!54427 (= e!32233 (- call!3413 (+ 2 from!821)))))

(declare-fun b!54428 () Bool)

(assert (=> b!54428 (= e!32236 lt!9968)))

(declare-fun b!54429 () Bool)

(assert (=> b!54429 (= e!32233 0)))

(declare-fun b!54430 () Bool)

(assert (=> b!54430 (= e!32235 call!3413)))

(declare-fun b!54431 () Bool)

(assert (=> b!54431 (= e!32234 e!32236)))

(declare-fun c!17185 () Bool)

(assert (=> b!54431 (= c!17185 (<= (+ 2 from!821) 0))))

(declare-fun bm!3408 () Bool)

(assert (=> bm!3408 (= call!3413 (size!1039 lt!9968))))

(assert (= (and d!6866 c!17183) b!54424))

(assert (= (and d!6866 (not c!17183)) b!54431))

(assert (= (and b!54431 c!17185) b!54428))

(assert (= (and b!54431 (not c!17185)) b!54423))

(assert (= (and d!6866 res!34865) b!54425))

(assert (= (and b!54425 c!17184) b!54430))

(assert (= (and b!54425 (not c!17184)) b!54426))

(assert (= (and b!54426 c!17182) b!54429))

(assert (= (and b!54426 (not c!17182)) b!54427))

(assert (= (or b!54430 b!54426 b!54427) bm!3408))

(declare-fun m!28314 () Bool)

(assert (=> b!54423 m!28314))

(declare-fun m!28316 () Bool)

(assert (=> b!54425 m!28316))

(declare-fun m!28318 () Bool)

(assert (=> d!6866 m!28318))

(assert (=> d!6866 m!28242))

(assert (=> bm!3408 m!28284))

(assert (=> b!54278 d!6866))

(declare-fun d!6868 () Bool)

(assert (=> d!6868 (= (tail!83 (drop!59 lt!9968 (+ 1 from!821))) (drop!59 lt!9968 (+ 1 from!821 1)))))

(declare-fun lt!10039 () Unit!653)

(declare-fun choose!1202 (List!1154 Int) Unit!653)

(assert (=> d!6868 (= lt!10039 (choose!1202 lt!9968 (+ 1 from!821)))))

(declare-fun e!32239 () Bool)

(assert (=> d!6868 e!32239))

(declare-fun res!34868 () Bool)

(assert (=> d!6868 (=> (not res!34868) (not e!32239))))

(assert (=> d!6868 (= res!34868 (>= (+ 1 from!821) 0))))

(assert (=> d!6868 (= (lemmaDropTail!51 lt!9968 (+ 1 from!821)) lt!10039)))

(declare-fun b!54434 () Bool)

(assert (=> b!54434 (= e!32239 (< (+ 1 from!821) (size!1039 lt!9968)))))

(assert (= (and d!6868 res!34868) b!54434))

(assert (=> d!6868 m!28148))

(assert (=> d!6868 m!28148))

(declare-fun m!28320 () Bool)

(assert (=> d!6868 m!28320))

(declare-fun m!28322 () Bool)

(assert (=> d!6868 m!28322))

(declare-fun m!28324 () Bool)

(assert (=> d!6868 m!28324))

(assert (=> b!54434 m!28284))

(assert (=> b!54278 d!6868))

(declare-fun d!6870 () Bool)

(assert (=> d!6870 (= (tail!83 (drop!59 lt!9968 from!821)) (drop!59 lt!9968 (+ from!821 1)))))

(declare-fun lt!10040 () Unit!653)

(assert (=> d!6870 (= lt!10040 (choose!1202 lt!9968 from!821))))

(declare-fun e!32240 () Bool)

(assert (=> d!6870 e!32240))

(declare-fun res!34869 () Bool)

(assert (=> d!6870 (=> (not res!34869) (not e!32240))))

(assert (=> d!6870 (= res!34869 (>= from!821 0))))

(assert (=> d!6870 (= (lemmaDropTail!51 lt!9968 from!821) lt!10040)))

(declare-fun b!54435 () Bool)

(assert (=> b!54435 (= e!32240 (< from!821 (size!1039 lt!9968)))))

(assert (= (and d!6870 res!34869) b!54435))

(assert (=> d!6870 m!28122))

(assert (=> d!6870 m!28122))

(declare-fun m!28326 () Bool)

(assert (=> d!6870 m!28326))

(declare-fun m!28328 () Bool)

(assert (=> d!6870 m!28328))

(declare-fun m!28330 () Bool)

(assert (=> d!6870 m!28330))

(assert (=> b!54435 m!28284))

(assert (=> b!54278 d!6870))

(declare-fun d!6872 () Bool)

(assert (=> d!6872 (= (tail!83 lt!9970) (t!17441 lt!9970))))

(assert (=> b!54278 d!6872))

(declare-fun d!6874 () Bool)

(assert (=> d!6874 (= (head!399 lt!9970) (h!6545 lt!9970))))

(assert (=> b!54278 d!6874))

(declare-fun d!6876 () Bool)

(assert (=> d!6876 (= (tail!83 lt!9961) (t!17441 lt!9961))))

(assert (=> b!54278 d!6876))

(declare-fun d!6878 () Bool)

(declare-fun lt!10043 () Bool)

(assert (=> d!6878 (= lt!10043 (contains!150 (list!300 v!6227) lt!9967))))

(declare-fun contains!154 (Conc!301 Token!260) Bool)

(assert (=> d!6878 (= lt!10043 (contains!154 (c!17153 v!6227) lt!9967))))

(assert (=> d!6878 (= (contains!151 v!6227 lt!9967) lt!10043)))

(declare-fun bs!6752 () Bool)

(assert (= bs!6752 d!6878))

(assert (=> bs!6752 m!28142))

(assert (=> bs!6752 m!28142))

(declare-fun m!28332 () Bool)

(assert (=> bs!6752 m!28332))

(declare-fun m!28334 () Bool)

(assert (=> bs!6752 m!28334))

(assert (=> b!54278 d!6878))

(declare-fun d!6880 () Bool)

(declare-fun lt!10044 () Token!260)

(assert (=> d!6880 (contains!150 lt!9968 lt!10044)))

(declare-fun e!32241 () Token!260)

(assert (=> d!6880 (= lt!10044 e!32241)))

(declare-fun c!17186 () Bool)

(assert (=> d!6880 (= c!17186 (= from!821 0))))

(declare-fun e!32242 () Bool)

(assert (=> d!6880 e!32242))

(declare-fun res!34870 () Bool)

(assert (=> d!6880 (=> (not res!34870) (not e!32242))))

(assert (=> d!6880 (= res!34870 (<= 0 from!821))))

(assert (=> d!6880 (= (apply!137 lt!9968 from!821) lt!10044)))

(declare-fun b!54436 () Bool)

(assert (=> b!54436 (= e!32242 (< from!821 (size!1039 lt!9968)))))

(declare-fun b!54437 () Bool)

(assert (=> b!54437 (= e!32241 (head!399 lt!9968))))

(declare-fun b!54438 () Bool)

(assert (=> b!54438 (= e!32241 (apply!137 (tail!83 lt!9968) (- from!821 1)))))

(assert (= (and d!6880 res!34870) b!54436))

(assert (= (and d!6880 c!17186) b!54437))

(assert (= (and d!6880 (not c!17186)) b!54438))

(declare-fun m!28336 () Bool)

(assert (=> d!6880 m!28336))

(assert (=> b!54436 m!28284))

(assert (=> b!54437 m!28308))

(assert (=> b!54438 m!28310))

(assert (=> b!54438 m!28310))

(declare-fun m!28338 () Bool)

(assert (=> b!54438 m!28338))

(assert (=> b!54278 d!6880))

(declare-fun d!6882 () Bool)

(assert (=> d!6882 (= (inv!1512 (tag!426 (h!6546 rules!1069))) (= (mod (str.len (value!9966 (tag!426 (h!6546 rules!1069)))) 2) 0))))

(assert (=> b!54267 d!6882))

(declare-fun d!6884 () Bool)

(declare-fun res!34873 () Bool)

(declare-fun e!32245 () Bool)

(assert (=> d!6884 (=> (not res!34873) (not e!32245))))

(declare-fun semiInverseModEq!30 (Int Int) Bool)

(assert (=> d!6884 (= res!34873 (semiInverseModEq!30 (toChars!586 (transformation!248 (h!6546 rules!1069))) (toValue!727 (transformation!248 (h!6546 rules!1069)))))))

(assert (=> d!6884 (= (inv!1515 (transformation!248 (h!6546 rules!1069))) e!32245)))

(declare-fun b!54441 () Bool)

(declare-fun equivClasses!26 (Int Int) Bool)

(assert (=> b!54441 (= e!32245 (equivClasses!26 (toChars!586 (transformation!248 (h!6546 rules!1069))) (toValue!727 (transformation!248 (h!6546 rules!1069)))))))

(assert (= (and d!6884 res!34873) b!54441))

(declare-fun m!28340 () Bool)

(assert (=> d!6884 m!28340))

(declare-fun m!28342 () Bool)

(assert (=> b!54441 m!28342))

(assert (=> b!54267 d!6884))

(declare-fun d!6886 () Bool)

(declare-fun lt!10045 () Bool)

(assert (=> d!6886 (= lt!10045 (set.member lt!9965 (content!38 lt!9968)))))

(declare-fun e!32247 () Bool)

(assert (=> d!6886 (= lt!10045 e!32247)))

(declare-fun res!34874 () Bool)

(assert (=> d!6886 (=> (not res!34874) (not e!32247))))

(assert (=> d!6886 (= res!34874 (is-Cons!1148 lt!9968))))

(assert (=> d!6886 (= (contains!150 lt!9968 lt!9965) lt!10045)))

(declare-fun b!54442 () Bool)

(declare-fun e!32246 () Bool)

(assert (=> b!54442 (= e!32247 e!32246)))

(declare-fun res!34875 () Bool)

(assert (=> b!54442 (=> res!34875 e!32246)))

(assert (=> b!54442 (= res!34875 (= (h!6545 lt!9968) lt!9965))))

(declare-fun b!54443 () Bool)

(assert (=> b!54443 (= e!32246 (contains!150 (t!17441 lt!9968) lt!9965))))

(assert (= (and d!6886 res!34874) b!54442))

(assert (= (and b!54442 (not res!34875)) b!54443))

(assert (=> d!6886 m!28242))

(declare-fun m!28344 () Bool)

(assert (=> d!6886 m!28344))

(declare-fun m!28346 () Bool)

(assert (=> b!54443 m!28346))

(assert (=> b!54277 d!6886))

(declare-fun d!6888 () Bool)

(declare-fun lt!10046 () Bool)

(assert (=> d!6888 (= lt!10046 (contains!150 (list!300 v!6227) lt!9965))))

(assert (=> d!6888 (= lt!10046 (contains!154 (c!17153 v!6227) lt!9965))))

(assert (=> d!6888 (= (contains!151 v!6227 lt!9965) lt!10046)))

(declare-fun bs!6753 () Bool)

(assert (= bs!6753 d!6888))

(assert (=> bs!6753 m!28142))

(assert (=> bs!6753 m!28142))

(declare-fun m!28348 () Bool)

(assert (=> bs!6753 m!28348))

(declare-fun m!28350 () Bool)

(assert (=> bs!6753 m!28350))

(assert (=> b!54266 d!6888))

(declare-fun d!6890 () Bool)

(declare-fun lt!10047 () Token!260)

(assert (=> d!6890 (= lt!10047 (apply!137 (list!300 v!6227) (+ 1 from!821)))))

(assert (=> d!6890 (= lt!10047 (apply!140 (c!17153 v!6227) (+ 1 from!821)))))

(declare-fun e!32248 () Bool)

(assert (=> d!6890 e!32248))

(declare-fun res!34876 () Bool)

(assert (=> d!6890 (=> (not res!34876) (not e!32248))))

(assert (=> d!6890 (= res!34876 (<= 0 (+ 1 from!821)))))

(assert (=> d!6890 (= (apply!136 v!6227 (+ 1 from!821)) lt!10047)))

(declare-fun b!54444 () Bool)

(assert (=> b!54444 (= e!32248 (< (+ 1 from!821) (size!1036 v!6227)))))

(assert (= (and d!6890 res!34876) b!54444))

(assert (=> d!6890 m!28142))

(assert (=> d!6890 m!28142))

(declare-fun m!28352 () Bool)

(assert (=> d!6890 m!28352))

(declare-fun m!28354 () Bool)

(assert (=> d!6890 m!28354))

(assert (=> b!54444 m!28168))

(assert (=> b!54266 d!6890))

(declare-fun d!6892 () Bool)

(declare-fun isBalanced!46 (Conc!301) Bool)

(assert (=> d!6892 (= (inv!1517 v!6227) (isBalanced!46 (c!17153 v!6227)))))

(declare-fun bs!6754 () Bool)

(assert (= bs!6754 d!6892))

(declare-fun m!28356 () Bool)

(assert (=> bs!6754 m!28356))

(assert (=> start!4272 d!6892))

(declare-fun d!6894 () Bool)

(declare-fun res!34879 () Bool)

(declare-fun e!32251 () Bool)

(assert (=> d!6894 (=> (not res!34879) (not e!32251))))

(declare-fun rulesValid!38 (LexerInterface!140 List!1155) Bool)

(assert (=> d!6894 (= res!34879 (rulesValid!38 thiss!11059 rules!1069))))

(assert (=> d!6894 (= (rulesInvariant!134 thiss!11059 rules!1069) e!32251)))

(declare-fun b!54447 () Bool)

(declare-datatypes ((List!1160 0))(
  ( (Nil!1154) (Cons!1154 (h!6551 String!1584) (t!17459 List!1160)) )
))
(declare-fun noDuplicateTag!38 (LexerInterface!140 List!1155 List!1160) Bool)

(assert (=> b!54447 (= e!32251 (noDuplicateTag!38 thiss!11059 rules!1069 Nil!1154))))

(assert (= (and d!6894 res!34879) b!54447))

(declare-fun m!28358 () Bool)

(assert (=> d!6894 m!28358))

(declare-fun m!28360 () Bool)

(assert (=> b!54447 m!28360))

(assert (=> b!54273 d!6894))

(declare-fun bs!6755 () Bool)

(declare-fun d!6896 () Bool)

(assert (= bs!6755 (and d!6896 d!6838)))

(declare-fun lambda!1123 () Int)

(assert (=> bs!6755 (= lambda!1123 lambda!1120)))

(declare-fun b!54456 () Bool)

(declare-fun e!32260 () Bool)

(assert (=> b!54456 (= e!32260 true)))

(declare-fun b!54455 () Bool)

(declare-fun e!32259 () Bool)

(assert (=> b!54455 (= e!32259 e!32260)))

(declare-fun b!54454 () Bool)

(declare-fun e!32258 () Bool)

(assert (=> b!54454 (= e!32258 e!32259)))

(assert (=> d!6896 e!32258))

(assert (= b!54455 b!54456))

(assert (= b!54454 b!54455))

(assert (= (and d!6896 (is-Cons!1149 rules!1069)) b!54454))

(assert (=> b!54456 (< (dynLambda!213 order!373 (toValue!727 (transformation!248 (h!6546 rules!1069)))) (dynLambda!214 order!375 lambda!1123))))

(assert (=> b!54456 (< (dynLambda!215 order!377 (toChars!586 (transformation!248 (h!6546 rules!1069)))) (dynLambda!214 order!375 lambda!1123))))

(assert (=> d!6896 true))

(declare-fun lt!10050 () Bool)

(assert (=> d!6896 (= lt!10050 (forall!143 lt!9968 lambda!1123))))

(declare-fun e!32256 () Bool)

(assert (=> d!6896 (= lt!10050 e!32256)))

(declare-fun res!34884 () Bool)

(assert (=> d!6896 (=> res!34884 e!32256)))

(assert (=> d!6896 (= res!34884 (not (is-Cons!1148 lt!9968)))))

(assert (=> d!6896 (not (isEmpty!234 rules!1069))))

(assert (=> d!6896 (= (rulesProduceEachTokenIndividuallyList!48 thiss!11059 rules!1069 lt!9968) lt!10050)))

(declare-fun b!54452 () Bool)

(declare-fun e!32257 () Bool)

(assert (=> b!54452 (= e!32256 e!32257)))

(declare-fun res!34885 () Bool)

(assert (=> b!54452 (=> (not res!34885) (not e!32257))))

(assert (=> b!54452 (= res!34885 (rulesProduceIndividualToken!37 thiss!11059 rules!1069 (h!6545 lt!9968)))))

(declare-fun b!54453 () Bool)

(assert (=> b!54453 (= e!32257 (rulesProduceEachTokenIndividuallyList!48 thiss!11059 rules!1069 (t!17441 lt!9968)))))

(assert (= (and d!6896 (not res!34884)) b!54452))

(assert (= (and b!54452 res!34885) b!54453))

(declare-fun m!28362 () Bool)

(assert (=> d!6896 m!28362))

(assert (=> d!6896 m!28170))

(declare-fun m!28364 () Bool)

(assert (=> b!54452 m!28364))

(declare-fun m!28366 () Bool)

(assert (=> b!54453 m!28366))

(assert (=> b!54272 d!6896))

(declare-fun d!6898 () Bool)

(declare-fun lt!10057 () Bool)

(declare-fun e!32277 () Bool)

(assert (=> d!6898 (= lt!10057 e!32277)))

(declare-fun res!34894 () Bool)

(assert (=> d!6898 (=> (not res!34894) (not e!32277))))

(declare-datatypes ((tuple2!1128 0))(
  ( (tuple2!1129 (_1!771 BalanceConc!606) (_2!771 BalanceConc!604)) )
))
(declare-fun lex!52 (LexerInterface!140 List!1155 BalanceConc!604) tuple2!1128)

(declare-fun print!7 (LexerInterface!140 BalanceConc!606) BalanceConc!604)

(declare-fun singletonSeq!2 (Token!260) BalanceConc!606)

(assert (=> d!6898 (= res!34894 (= (list!300 (_1!771 (lex!52 thiss!11059 rules!1069 (print!7 thiss!11059 (singletonSeq!2 lt!9967))))) (list!300 (singletonSeq!2 lt!9967))))))

(declare-fun e!32276 () Bool)

(assert (=> d!6898 (= lt!10057 e!32276)))

(declare-fun res!34896 () Bool)

(assert (=> d!6898 (=> (not res!34896) (not e!32276))))

(declare-fun lt!10056 () tuple2!1128)

(assert (=> d!6898 (= res!34896 (= (size!1036 (_1!771 lt!10056)) 1))))

(assert (=> d!6898 (= lt!10056 (lex!52 thiss!11059 rules!1069 (print!7 thiss!11059 (singletonSeq!2 lt!9967))))))

(assert (=> d!6898 (not (isEmpty!234 rules!1069))))

(assert (=> d!6898 (= (rulesProduceIndividualToken!37 thiss!11059 rules!1069 lt!9967) lt!10057)))

(declare-fun b!54478 () Bool)

(declare-fun res!34895 () Bool)

(assert (=> b!54478 (=> (not res!34895) (not e!32276))))

(assert (=> b!54478 (= res!34895 (= (apply!136 (_1!771 lt!10056) 0) lt!9967))))

(declare-fun b!54479 () Bool)

(declare-fun isEmpty!236 (BalanceConc!604) Bool)

(assert (=> b!54479 (= e!32276 (isEmpty!236 (_2!771 lt!10056)))))

(declare-fun b!54480 () Bool)

(assert (=> b!54480 (= e!32277 (isEmpty!236 (_2!771 (lex!52 thiss!11059 rules!1069 (print!7 thiss!11059 (singletonSeq!2 lt!9967))))))))

(assert (= (and d!6898 res!34896) b!54478))

(assert (= (and b!54478 res!34895) b!54479))

(assert (= (and d!6898 res!34894) b!54480))

(declare-fun m!28374 () Bool)

(assert (=> d!6898 m!28374))

(declare-fun m!28376 () Bool)

(assert (=> d!6898 m!28376))

(assert (=> d!6898 m!28374))

(declare-fun m!28378 () Bool)

(assert (=> d!6898 m!28378))

(assert (=> d!6898 m!28374))

(assert (=> d!6898 m!28170))

(assert (=> d!6898 m!28378))

(declare-fun m!28380 () Bool)

(assert (=> d!6898 m!28380))

(declare-fun m!28382 () Bool)

(assert (=> d!6898 m!28382))

(declare-fun m!28384 () Bool)

(assert (=> d!6898 m!28384))

(declare-fun m!28386 () Bool)

(assert (=> b!54478 m!28386))

(declare-fun m!28388 () Bool)

(assert (=> b!54479 m!28388))

(assert (=> b!54480 m!28374))

(assert (=> b!54480 m!28374))

(assert (=> b!54480 m!28378))

(assert (=> b!54480 m!28378))

(assert (=> b!54480 m!28380))

(declare-fun m!28390 () Bool)

(assert (=> b!54480 m!28390))

(assert (=> b!54272 d!6898))

(declare-fun d!6902 () Bool)

(assert (=> d!6902 (rulesProduceIndividualToken!37 thiss!11059 rules!1069 lt!9967)))

(declare-fun lt!10066 () Unit!653)

(declare-fun choose!1203 (LexerInterface!140 List!1155 List!1154 Token!260) Unit!653)

(assert (=> d!6902 (= lt!10066 (choose!1203 thiss!11059 rules!1069 lt!9968 lt!9967))))

(assert (=> d!6902 (not (isEmpty!234 rules!1069))))

(assert (=> d!6902 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!23 thiss!11059 rules!1069 lt!9968 lt!9967) lt!10066)))

(declare-fun bs!6756 () Bool)

(assert (= bs!6756 d!6902))

(assert (=> bs!6756 m!28164))

(declare-fun m!28410 () Bool)

(assert (=> bs!6756 m!28410))

(assert (=> bs!6756 m!28170))

(assert (=> b!54272 d!6902))

(declare-fun d!6906 () Bool)

(assert (=> d!6906 (= (isEmpty!234 rules!1069) (is-Nil!1149 rules!1069))))

(assert (=> b!54271 d!6906))

(declare-fun b!54500 () Bool)

(declare-fun b_free!1785 () Bool)

(declare-fun b_next!1785 () Bool)

(assert (=> b!54500 (= b_free!1785 (not b_next!1785))))

(declare-fun tp!34712 () Bool)

(declare-fun b_and!1835 () Bool)

(assert (=> b!54500 (= tp!34712 b_and!1835)))

(declare-fun b_free!1787 () Bool)

(declare-fun b_next!1787 () Bool)

(assert (=> b!54500 (= b_free!1787 (not b_next!1787))))

(declare-fun tp!34709 () Bool)

(declare-fun b_and!1837 () Bool)

(assert (=> b!54500 (= tp!34709 b_and!1837)))

(declare-fun e!32292 () Bool)

(assert (=> b!54500 (= e!32292 (and tp!34712 tp!34709))))

(declare-fun tp!34711 () Bool)

(declare-fun e!32293 () Bool)

(declare-fun b!54499 () Bool)

(assert (=> b!54499 (= e!32293 (and tp!34711 (inv!1512 (tag!426 (h!6546 (t!17442 rules!1069)))) (inv!1515 (transformation!248 (h!6546 (t!17442 rules!1069)))) e!32292))))

(declare-fun b!54498 () Bool)

(declare-fun e!32294 () Bool)

(declare-fun tp!34710 () Bool)

(assert (=> b!54498 (= e!32294 (and e!32293 tp!34710))))

(assert (=> b!54270 (= tp!34683 e!32294)))

(assert (= b!54499 b!54500))

(assert (= b!54498 b!54499))

(assert (= (and b!54270 (is-Cons!1149 (t!17442 rules!1069))) b!54498))

(declare-fun m!28412 () Bool)

(assert (=> b!54499 m!28412))

(declare-fun m!28414 () Bool)

(assert (=> b!54499 m!28414))

(declare-fun tp!34721 () Bool)

(declare-fun e!32301 () Bool)

(declare-fun b!54509 () Bool)

(declare-fun tp!34720 () Bool)

(assert (=> b!54509 (= e!32301 (and (inv!1516 (left!874 (c!17153 v!6227))) tp!34721 (inv!1516 (right!1204 (c!17153 v!6227))) tp!34720))))

(declare-fun b!54511 () Bool)

(declare-fun e!32300 () Bool)

(declare-fun tp!34719 () Bool)

(assert (=> b!54511 (= e!32300 tp!34719)))

(declare-fun b!54510 () Bool)

(declare-fun inv!1523 (IArray!603) Bool)

(assert (=> b!54510 (= e!32301 (and (inv!1523 (xs!2880 (c!17153 v!6227))) e!32300))))

(assert (=> b!54275 (= tp!34682 (and (inv!1516 (c!17153 v!6227)) e!32301))))

(assert (= (and b!54275 (is-Node!301 (c!17153 v!6227))) b!54509))

(assert (= b!54510 b!54511))

(assert (= (and b!54275 (is-Leaf!561 (c!17153 v!6227))) b!54510))

(declare-fun m!28416 () Bool)

(assert (=> b!54509 m!28416))

(declare-fun m!28418 () Bool)

(assert (=> b!54509 m!28418))

(declare-fun m!28420 () Bool)

(assert (=> b!54510 m!28420))

(assert (=> b!54275 m!28178))

(declare-fun e!32304 () Bool)

(assert (=> b!54267 (= tp!34684 e!32304)))

(declare-fun b!54523 () Bool)

(declare-fun tp!34733 () Bool)

(declare-fun tp!34732 () Bool)

(assert (=> b!54523 (= e!32304 (and tp!34733 tp!34732))))

(declare-fun b!54522 () Bool)

(declare-fun tp_is_empty!559 () Bool)

(assert (=> b!54522 (= e!32304 tp_is_empty!559)))

(declare-fun b!54525 () Bool)

(declare-fun tp!34735 () Bool)

(declare-fun tp!34734 () Bool)

(assert (=> b!54525 (= e!32304 (and tp!34735 tp!34734))))

(declare-fun b!54524 () Bool)

(declare-fun tp!34736 () Bool)

(assert (=> b!54524 (= e!32304 tp!34736)))

(assert (= (and b!54267 (is-ElementMatch!316 (regex!248 (h!6546 rules!1069)))) b!54522))

(assert (= (and b!54267 (is-Concat!555 (regex!248 (h!6546 rules!1069)))) b!54523))

(assert (= (and b!54267 (is-Star!316 (regex!248 (h!6546 rules!1069)))) b!54524))

(assert (= (and b!54267 (is-Union!316 (regex!248 (h!6546 rules!1069)))) b!54525))

(push 1)

(assert (not d!6868))

(assert (not d!6902))

(assert (not b!54435))

(assert b_and!1835)

(assert (not b!54389))

(assert (not b!54453))

(assert (not d!6860))

(assert (not b!54525))

(assert (not b!54400))

(assert b_and!1837)

(assert (not b!54366))

(assert (not d!6888))

(assert (not b_next!1785))

(assert (not b!54422))

(assert (not b!54511))

(assert (not d!6886))

(assert (not d!6864))

(assert tp_is_empty!559)

(assert (not b!54425))

(assert (not d!6884))

(assert (not bm!3407))

(assert (not b!54437))

(assert (not b!54403))

(assert (not d!6896))

(assert (not b!54412))

(assert (not b_next!1787))

(assert (not b!54499))

(assert (not b!54413))

(assert (not b!54401))

(assert (not b!54421))

(assert (not d!6858))

(assert (not d!6880))

(assert (not b!54443))

(assert (not d!6892))

(assert (not b!54452))

(assert (not b!54447))

(assert (not b!54523))

(assert (not d!6866))

(assert (not b!54478))

(assert (not d!6854))

(assert (not bm!3408))

(assert (not d!6894))

(assert (not b!54524))

(assert (not b!54438))

(assert (not d!6850))

(assert (not b!54335))

(assert (not b!54479))

(assert (not d!6836))

(assert (not b!54510))

(assert (not d!6890))

(assert b_and!1829)

(assert (not d!6870))

(assert (not b!54434))

(assert (not b!54326))

(assert (not d!6856))

(assert (not b!54423))

(assert b_and!1827)

(assert (not d!6852))

(assert (not bm!3406))

(assert (not b!54441))

(assert (not d!6878))

(assert (not b!54333))

(assert (not b!54480))

(assert (not b!54420))

(assert (not d!6838))

(assert (not b!54454))

(assert (not d!6832))

(assert (not b!54357))

(assert (not d!6898))

(assert (not b!54391))

(assert (not b!54275))

(assert (not b!54436))

(assert (not b!54498))

(assert (not b!54509))

(assert (not b!54444))

(assert (not b_next!1779))

(assert (not b_next!1777))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1837)

(assert (not b_next!1785))

(assert (not b_next!1787))

(assert b_and!1829)

(assert b_and!1827)

(assert b_and!1835)

(assert (not b_next!1779))

(assert (not b_next!1777))

(check-sat)

(pop 1)

