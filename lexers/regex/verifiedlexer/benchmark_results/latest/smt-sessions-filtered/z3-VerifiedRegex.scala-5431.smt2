; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!276092 () Bool)

(assert start!276092)

(declare-fun b!2838798 () Bool)

(declare-fun b_free!82129 () Bool)

(declare-fun b_next!82833 () Bool)

(assert (=> b!2838798 (= b_free!82129 (not b_next!82833))))

(declare-fun tp!908960 () Bool)

(declare-fun b_and!208071 () Bool)

(assert (=> b!2838798 (= tp!908960 b_and!208071)))

(declare-fun b_free!82131 () Bool)

(declare-fun b_next!82835 () Bool)

(assert (=> b!2838798 (= b_free!82131 (not b_next!82835))))

(declare-fun tp!908955 () Bool)

(declare-fun b_and!208073 () Bool)

(assert (=> b!2838798 (= tp!908955 b_and!208073)))

(declare-fun b!2838803 () Bool)

(declare-fun b_free!82133 () Bool)

(declare-fun b_next!82837 () Bool)

(assert (=> b!2838803 (= b_free!82133 (not b_next!82837))))

(declare-fun tp!908956 () Bool)

(declare-fun b_and!208075 () Bool)

(assert (=> b!2838803 (= tp!908956 b_and!208075)))

(declare-fun b_free!82135 () Bool)

(declare-fun b_next!82839 () Bool)

(assert (=> b!2838803 (= b_free!82135 (not b_next!82839))))

(declare-fun tp!908952 () Bool)

(declare-fun b_and!208077 () Bool)

(assert (=> b!2838803 (= tp!908952 b_and!208077)))

(declare-fun b!2838813 () Bool)

(declare-fun b_free!82137 () Bool)

(declare-fun b_next!82841 () Bool)

(assert (=> b!2838813 (= b_free!82137 (not b_next!82841))))

(declare-fun tp!908963 () Bool)

(declare-fun b_and!208079 () Bool)

(assert (=> b!2838813 (= tp!908963 b_and!208079)))

(declare-fun b_free!82139 () Bool)

(declare-fun b_next!82843 () Bool)

(assert (=> b!2838813 (= b_free!82139 (not b_next!82843))))

(declare-fun tp!908957 () Bool)

(declare-fun b_and!208081 () Bool)

(assert (=> b!2838813 (= tp!908957 b_and!208081)))

(declare-fun tp!908951 () Bool)

(declare-datatypes ((C!17060 0))(
  ( (C!17061 (val!10542 Int)) )
))
(declare-datatypes ((Regex!8439 0))(
  ( (ElementMatch!8439 (c!458490 C!17060)) (Concat!13717 (regOne!17390 Regex!8439) (regTwo!17390 Regex!8439)) (EmptyExpr!8439) (Star!8439 (reg!8768 Regex!8439)) (EmptyLang!8439) (Union!8439 (regOne!17391 Regex!8439) (regTwo!17391 Regex!8439)) )
))
(declare-datatypes ((String!36911 0))(
  ( (String!36912 (value!162211 String)) )
))
(declare-datatypes ((List!33704 0))(
  ( (Nil!33580) (Cons!33580 (h!39000 (_ BitVec 16)) (t!232237 List!33704)) )
))
(declare-datatypes ((TokenValue!5278 0))(
  ( (FloatLiteralValue!10556 (text!37391 List!33704)) (TokenValueExt!5277 (__x!22294 Int)) (Broken!26390 (value!162212 List!33704)) (Object!5401) (End!5278) (Def!5278) (Underscore!5278) (Match!5278) (Else!5278) (Error!5278) (Case!5278) (If!5278) (Extends!5278) (Abstract!5278) (Class!5278) (Val!5278) (DelimiterValue!10556 (del!5338 List!33704)) (KeywordValue!5284 (value!162213 List!33704)) (CommentValue!10556 (value!162214 List!33704)) (WhitespaceValue!10556 (value!162215 List!33704)) (IndentationValue!5278 (value!162216 List!33704)) (String!36913) (Int32!5278) (Broken!26391 (value!162217 List!33704)) (Boolean!5279) (Unit!47458) (OperatorValue!5281 (op!5338 List!33704)) (IdentifierValue!10556 (value!162218 List!33704)) (IdentifierValue!10557 (value!162219 List!33704)) (WhitespaceValue!10557 (value!162220 List!33704)) (True!10556) (False!10556) (Broken!26392 (value!162221 List!33704)) (Broken!26393 (value!162222 List!33704)) (True!10557) (RightBrace!5278) (RightBracket!5278) (Colon!5278) (Null!5278) (Comma!5278) (LeftBracket!5278) (False!10557) (LeftBrace!5278) (ImaginaryLiteralValue!5278 (text!37392 List!33704)) (StringLiteralValue!15834 (value!162223 List!33704)) (EOFValue!5278 (value!162224 List!33704)) (IdentValue!5278 (value!162225 List!33704)) (DelimiterValue!10557 (value!162226 List!33704)) (DedentValue!5278 (value!162227 List!33704)) (NewLineValue!5278 (value!162228 List!33704)) (IntegerValue!15834 (value!162229 (_ BitVec 32)) (text!37393 List!33704)) (IntegerValue!15835 (value!162230 Int) (text!37394 List!33704)) (Times!5278) (Or!5278) (Equal!5278) (Minus!5278) (Broken!26394 (value!162231 List!33704)) (And!5278) (Div!5278) (LessEqual!5278) (Mod!5278) (Concat!13718) (Not!5278) (Plus!5278) (SpaceValue!5278 (value!162232 List!33704)) (IntegerValue!15836 (value!162233 Int) (text!37395 List!33704)) (StringLiteralValue!15835 (text!37396 List!33704)) (FloatLiteralValue!10557 (text!37397 List!33704)) (BytesLiteralValue!5278 (value!162234 List!33704)) (CommentValue!10557 (value!162235 List!33704)) (StringLiteralValue!15836 (value!162236 List!33704)) (ErrorTokenValue!5278 (msg!5339 List!33704)) )
))
(declare-datatypes ((List!33705 0))(
  ( (Nil!33581) (Cons!33581 (h!39001 C!17060) (t!232238 List!33705)) )
))
(declare-datatypes ((IArray!20861 0))(
  ( (IArray!20862 (innerList!10488 List!33705)) )
))
(declare-datatypes ((Conc!10428 0))(
  ( (Node!10428 (left!25315 Conc!10428) (right!25645 Conc!10428) (csize!21086 Int) (cheight!10639 Int)) (Leaf!15860 (xs!13540 IArray!20861) (csize!21087 Int)) (Empty!10428) )
))
(declare-datatypes ((BalanceConc!20494 0))(
  ( (BalanceConc!20495 (c!458491 Conc!10428)) )
))
(declare-datatypes ((TokenValueInjection!9984 0))(
  ( (TokenValueInjection!9985 (toValue!7090 Int) (toChars!6949 Int)) )
))
(declare-datatypes ((Rule!9896 0))(
  ( (Rule!9897 (regex!5048 Regex!8439) (tag!5552 String!36911) (isSeparator!5048 Bool) (transformation!5048 TokenValueInjection!9984)) )
))
(declare-datatypes ((List!33706 0))(
  ( (Nil!33582) (Cons!33582 (h!39002 Rule!9896) (t!232239 List!33706)) )
))
(declare-fun rules!4246 () List!33706)

(declare-fun e!1798044 () Bool)

(declare-fun e!1798058 () Bool)

(declare-fun b!2838796 () Bool)

(declare-fun inv!45547 (String!36911) Bool)

(declare-fun inv!45550 (TokenValueInjection!9984) Bool)

(assert (=> b!2838796 (= e!1798058 (and tp!908951 (inv!45547 (tag!5552 (h!39002 rules!4246))) (inv!45550 (transformation!5048 (h!39002 rules!4246))) e!1798044))))

(declare-fun tp!908961 () Bool)

(declare-fun e!1798047 () Bool)

(declare-datatypes ((Token!9498 0))(
  ( (Token!9499 (value!162237 TokenValue!5278) (rule!7476 Rule!9896) (size!26087 Int) (originalCharacters!5780 List!33705)) )
))
(declare-datatypes ((List!33707 0))(
  ( (Nil!33583) (Cons!33583 (h!39003 Token!9498) (t!232240 List!33707)) )
))
(declare-fun tokens!612 () List!33707)

(declare-fun b!2838797 () Bool)

(declare-fun e!1798048 () Bool)

(declare-fun inv!45551 (Token!9498) Bool)

(assert (=> b!2838797 (= e!1798047 (and (inv!45551 (h!39003 tokens!612)) e!1798048 tp!908961))))

(declare-fun res!1181155 () Bool)

(declare-fun e!1798045 () Bool)

(assert (=> start!276092 (=> (not res!1181155) (not e!1798045))))

(declare-datatypes ((LexerInterface!4638 0))(
  ( (LexerInterfaceExt!4635 (__x!22295 Int)) (Lexer!4636) )
))
(declare-fun thiss!27264 () LexerInterface!4638)

(get-info :version)

(assert (=> start!276092 (= res!1181155 ((_ is Lexer!4636) thiss!27264))))

(assert (=> start!276092 e!1798045))

(assert (=> start!276092 true))

(declare-fun e!1798054 () Bool)

(assert (=> start!276092 e!1798054))

(declare-fun e!1798059 () Bool)

(assert (=> start!276092 e!1798059))

(assert (=> start!276092 e!1798047))

(declare-fun e!1798055 () Bool)

(assert (=> b!2838798 (= e!1798055 (and tp!908960 tp!908955))))

(declare-fun b!2838799 () Bool)

(declare-fun res!1181159 () Bool)

(assert (=> b!2838799 (=> (not res!1181159) (not e!1798045))))

(declare-fun rulesProduceEachTokenIndividuallyList!1679 (LexerInterface!4638 List!33706 List!33707) Bool)

(assert (=> b!2838799 (= res!1181159 (rulesProduceEachTokenIndividuallyList!1679 thiss!27264 rules!4246 tokens!612))))

(declare-fun b!2838800 () Bool)

(declare-fun res!1181152 () Bool)

(assert (=> b!2838800 (=> (not res!1181152) (not e!1798045))))

(declare-fun tokensBis!14 () List!33707)

(declare-fun subseq!514 (List!33707 List!33707) Bool)

(assert (=> b!2838800 (= res!1181152 (subseq!514 tokensBis!14 tokens!612))))

(declare-fun b!2838801 () Bool)

(declare-fun tp!908958 () Bool)

(declare-fun e!1798052 () Bool)

(declare-fun e!1798050 () Bool)

(assert (=> b!2838801 (= e!1798050 (and tp!908958 (inv!45547 (tag!5552 (rule!7476 (h!39003 tokensBis!14)))) (inv!45550 (transformation!5048 (rule!7476 (h!39003 tokensBis!14)))) e!1798052))))

(declare-fun b!2838802 () Bool)

(declare-fun ListPrimitiveSize!227 (List!33707) Int)

(assert (=> b!2838802 (= e!1798045 (>= (ListPrimitiveSize!227 (t!232240 tokens!612)) (ListPrimitiveSize!227 tokens!612)))))

(assert (=> b!2838803 (= e!1798052 (and tp!908956 tp!908952))))

(declare-fun b!2838804 () Bool)

(declare-fun tp!908954 () Bool)

(declare-fun e!1798057 () Bool)

(declare-fun inv!21 (TokenValue!5278) Bool)

(assert (=> b!2838804 (= e!1798048 (and (inv!21 (value!162237 (h!39003 tokens!612))) e!1798057 tp!908954))))

(declare-fun tp!908959 () Bool)

(declare-fun b!2838805 () Bool)

(assert (=> b!2838805 (= e!1798057 (and tp!908959 (inv!45547 (tag!5552 (rule!7476 (h!39003 tokens!612)))) (inv!45550 (transformation!5048 (rule!7476 (h!39003 tokens!612)))) e!1798055))))

(declare-fun b!2838806 () Bool)

(declare-fun tp!908964 () Bool)

(assert (=> b!2838806 (= e!1798054 (and e!1798058 tp!908964))))

(declare-fun e!1798051 () Bool)

(declare-fun b!2838807 () Bool)

(declare-fun tp!908953 () Bool)

(assert (=> b!2838807 (= e!1798059 (and (inv!45551 (h!39003 tokensBis!14)) e!1798051 tp!908953))))

(declare-fun b!2838808 () Bool)

(declare-fun res!1181153 () Bool)

(assert (=> b!2838808 (=> (not res!1181153) (not e!1798045))))

(assert (=> b!2838808 (= res!1181153 (subseq!514 (t!232240 tokensBis!14) (t!232240 tokens!612)))))

(declare-fun b!2838809 () Bool)

(declare-fun res!1181156 () Bool)

(assert (=> b!2838809 (=> (not res!1181156) (not e!1798045))))

(assert (=> b!2838809 (= res!1181156 (rulesProduceEachTokenIndividuallyList!1679 thiss!27264 rules!4246 (t!232240 tokens!612)))))

(declare-fun b!2838810 () Bool)

(declare-fun res!1181154 () Bool)

(assert (=> b!2838810 (=> (not res!1181154) (not e!1798045))))

(declare-fun rulesInvariant!4054 (LexerInterface!4638 List!33706) Bool)

(assert (=> b!2838810 (= res!1181154 (rulesInvariant!4054 thiss!27264 rules!4246))))

(declare-fun b!2838811 () Bool)

(declare-fun res!1181158 () Bool)

(assert (=> b!2838811 (=> (not res!1181158) (not e!1798045))))

(declare-fun isEmpty!18499 (List!33706) Bool)

(assert (=> b!2838811 (= res!1181158 (not (isEmpty!18499 rules!4246)))))

(declare-fun tp!908962 () Bool)

(declare-fun b!2838812 () Bool)

(assert (=> b!2838812 (= e!1798051 (and (inv!21 (value!162237 (h!39003 tokensBis!14))) e!1798050 tp!908962))))

(assert (=> b!2838813 (= e!1798044 (and tp!908963 tp!908957))))

(declare-fun b!2838814 () Bool)

(declare-fun res!1181157 () Bool)

(assert (=> b!2838814 (=> (not res!1181157) (not e!1798045))))

(assert (=> b!2838814 (= res!1181157 (and (not ((_ is Nil!33583) tokensBis!14)) ((_ is Cons!33583) tokens!612) (= (h!39003 tokensBis!14) (h!39003 tokens!612))))))

(assert (= (and start!276092 res!1181155) b!2838811))

(assert (= (and b!2838811 res!1181158) b!2838810))

(assert (= (and b!2838810 res!1181154) b!2838800))

(assert (= (and b!2838800 res!1181152) b!2838799))

(assert (= (and b!2838799 res!1181159) b!2838814))

(assert (= (and b!2838814 res!1181157) b!2838808))

(assert (= (and b!2838808 res!1181153) b!2838809))

(assert (= (and b!2838809 res!1181156) b!2838802))

(assert (= b!2838796 b!2838813))

(assert (= b!2838806 b!2838796))

(assert (= (and start!276092 ((_ is Cons!33582) rules!4246)) b!2838806))

(assert (= b!2838801 b!2838803))

(assert (= b!2838812 b!2838801))

(assert (= b!2838807 b!2838812))

(assert (= (and start!276092 ((_ is Cons!33583) tokensBis!14)) b!2838807))

(assert (= b!2838805 b!2838798))

(assert (= b!2838804 b!2838805))

(assert (= b!2838797 b!2838804))

(assert (= (and start!276092 ((_ is Cons!33583) tokens!612)) b!2838797))

(declare-fun m!3267839 () Bool)

(assert (=> b!2838800 m!3267839))

(declare-fun m!3267841 () Bool)

(assert (=> b!2838801 m!3267841))

(declare-fun m!3267843 () Bool)

(assert (=> b!2838801 m!3267843))

(declare-fun m!3267845 () Bool)

(assert (=> b!2838796 m!3267845))

(declare-fun m!3267847 () Bool)

(assert (=> b!2838796 m!3267847))

(declare-fun m!3267849 () Bool)

(assert (=> b!2838809 m!3267849))

(declare-fun m!3267851 () Bool)

(assert (=> b!2838810 m!3267851))

(declare-fun m!3267853 () Bool)

(assert (=> b!2838808 m!3267853))

(declare-fun m!3267855 () Bool)

(assert (=> b!2838812 m!3267855))

(declare-fun m!3267857 () Bool)

(assert (=> b!2838802 m!3267857))

(declare-fun m!3267859 () Bool)

(assert (=> b!2838802 m!3267859))

(declare-fun m!3267861 () Bool)

(assert (=> b!2838805 m!3267861))

(declare-fun m!3267863 () Bool)

(assert (=> b!2838805 m!3267863))

(declare-fun m!3267865 () Bool)

(assert (=> b!2838797 m!3267865))

(declare-fun m!3267867 () Bool)

(assert (=> b!2838807 m!3267867))

(declare-fun m!3267869 () Bool)

(assert (=> b!2838811 m!3267869))

(declare-fun m!3267871 () Bool)

(assert (=> b!2838804 m!3267871))

(declare-fun m!3267873 () Bool)

(assert (=> b!2838799 m!3267873))

(check-sat (not b!2838801) (not b!2838804) (not b_next!82837) (not b_next!82833) (not b!2838796) (not b!2838808) (not b_next!82841) (not b!2838810) (not b!2838797) (not b!2838809) b_and!208079 (not b!2838799) (not b!2838800) b_and!208073 (not b!2838812) (not b!2838807) b_and!208081 b_and!208071 (not b_next!82839) (not b!2838805) (not b!2838811) (not b!2838806) (not b!2838802) b_and!208077 (not b_next!82843) (not b_next!82835) b_and!208075)
(check-sat b_and!208073 b_and!208081 (not b_next!82837) (not b_next!82833) (not b_next!82841) b_and!208079 b_and!208071 (not b_next!82839) b_and!208077 (not b_next!82843) (not b_next!82835) b_and!208075)
(get-model)

(declare-fun b!2838866 () Bool)

(declare-fun e!1798105 () Bool)

(assert (=> b!2838866 (= e!1798105 true)))

(declare-fun b!2838865 () Bool)

(declare-fun e!1798104 () Bool)

(assert (=> b!2838865 (= e!1798104 e!1798105)))

(declare-fun b!2838864 () Bool)

(declare-fun e!1798103 () Bool)

(assert (=> b!2838864 (= e!1798103 e!1798104)))

(declare-fun d!823440 () Bool)

(assert (=> d!823440 e!1798103))

(assert (= b!2838865 b!2838866))

(assert (= b!2838864 b!2838865))

(assert (= (and d!823440 ((_ is Cons!33582) rules!4246)) b!2838864))

(declare-fun lambda!104203 () Int)

(declare-fun order!17937 () Int)

(declare-fun order!17935 () Int)

(declare-fun dynLambda!14119 (Int Int) Int)

(declare-fun dynLambda!14120 (Int Int) Int)

(assert (=> b!2838866 (< (dynLambda!14119 order!17935 (toValue!7090 (transformation!5048 (h!39002 rules!4246)))) (dynLambda!14120 order!17937 lambda!104203))))

(declare-fun order!17939 () Int)

(declare-fun dynLambda!14121 (Int Int) Int)

(assert (=> b!2838866 (< (dynLambda!14121 order!17939 (toChars!6949 (transformation!5048 (h!39002 rules!4246)))) (dynLambda!14120 order!17937 lambda!104203))))

(assert (=> d!823440 true))

(declare-fun lt!1011519 () Bool)

(declare-fun forall!6905 (List!33707 Int) Bool)

(assert (=> d!823440 (= lt!1011519 (forall!6905 (t!232240 tokens!612) lambda!104203))))

(declare-fun e!1798089 () Bool)

(assert (=> d!823440 (= lt!1011519 e!1798089)))

(declare-fun res!1181188 () Bool)

(assert (=> d!823440 (=> res!1181188 e!1798089)))

(assert (=> d!823440 (= res!1181188 (not ((_ is Cons!33583) (t!232240 tokens!612))))))

(assert (=> d!823440 (not (isEmpty!18499 rules!4246))))

(assert (=> d!823440 (= (rulesProduceEachTokenIndividuallyList!1679 thiss!27264 rules!4246 (t!232240 tokens!612)) lt!1011519)))

(declare-fun b!2838845 () Bool)

(declare-fun e!1798088 () Bool)

(assert (=> b!2838845 (= e!1798089 e!1798088)))

(declare-fun res!1181187 () Bool)

(assert (=> b!2838845 (=> (not res!1181187) (not e!1798088))))

(declare-fun rulesProduceIndividualToken!2152 (LexerInterface!4638 List!33706 Token!9498) Bool)

(assert (=> b!2838845 (= res!1181187 (rulesProduceIndividualToken!2152 thiss!27264 rules!4246 (h!39003 (t!232240 tokens!612))))))

(declare-fun b!2838846 () Bool)

(assert (=> b!2838846 (= e!1798088 (rulesProduceEachTokenIndividuallyList!1679 thiss!27264 rules!4246 (t!232240 (t!232240 tokens!612))))))

(assert (= (and d!823440 (not res!1181188)) b!2838845))

(assert (= (and b!2838845 res!1181187) b!2838846))

(declare-fun m!3267885 () Bool)

(assert (=> d!823440 m!3267885))

(assert (=> d!823440 m!3267869))

(declare-fun m!3267887 () Bool)

(assert (=> b!2838845 m!3267887))

(declare-fun m!3267889 () Bool)

(assert (=> b!2838846 m!3267889))

(assert (=> b!2838809 d!823440))

(declare-fun d!823448 () Bool)

(declare-fun res!1181207 () Bool)

(declare-fun e!1798125 () Bool)

(assert (=> d!823448 (=> res!1181207 e!1798125)))

(assert (=> d!823448 (= res!1181207 ((_ is Nil!33583) (t!232240 tokensBis!14)))))

(assert (=> d!823448 (= (subseq!514 (t!232240 tokensBis!14) (t!232240 tokens!612)) e!1798125)))

(declare-fun b!2838893 () Bool)

(declare-fun e!1798126 () Bool)

(declare-fun e!1798124 () Bool)

(assert (=> b!2838893 (= e!1798126 e!1798124)))

(declare-fun res!1181206 () Bool)

(assert (=> b!2838893 (=> res!1181206 e!1798124)))

(declare-fun e!1798123 () Bool)

(assert (=> b!2838893 (= res!1181206 e!1798123)))

(declare-fun res!1181204 () Bool)

(assert (=> b!2838893 (=> (not res!1181204) (not e!1798123))))

(assert (=> b!2838893 (= res!1181204 (= (h!39003 (t!232240 tokensBis!14)) (h!39003 (t!232240 tokens!612))))))

(declare-fun b!2838895 () Bool)

(assert (=> b!2838895 (= e!1798124 (subseq!514 (t!232240 tokensBis!14) (t!232240 (t!232240 tokens!612))))))

(declare-fun b!2838894 () Bool)

(assert (=> b!2838894 (= e!1798123 (subseq!514 (t!232240 (t!232240 tokensBis!14)) (t!232240 (t!232240 tokens!612))))))

(declare-fun b!2838892 () Bool)

(assert (=> b!2838892 (= e!1798125 e!1798126)))

(declare-fun res!1181205 () Bool)

(assert (=> b!2838892 (=> (not res!1181205) (not e!1798126))))

(assert (=> b!2838892 (= res!1181205 ((_ is Cons!33583) (t!232240 tokens!612)))))

(assert (= (and d!823448 (not res!1181207)) b!2838892))

(assert (= (and b!2838892 res!1181205) b!2838893))

(assert (= (and b!2838893 res!1181204) b!2838894))

(assert (= (and b!2838893 (not res!1181206)) b!2838895))

(declare-fun m!3267897 () Bool)

(assert (=> b!2838895 m!3267897))

(declare-fun m!3267899 () Bool)

(assert (=> b!2838894 m!3267899))

(assert (=> b!2838808 d!823448))

(declare-fun d!823452 () Bool)

(declare-fun res!1181213 () Bool)

(declare-fun e!1798132 () Bool)

(assert (=> d!823452 (=> (not res!1181213) (not e!1798132))))

(declare-fun rulesValid!1869 (LexerInterface!4638 List!33706) Bool)

(assert (=> d!823452 (= res!1181213 (rulesValid!1869 thiss!27264 rules!4246))))

(assert (=> d!823452 (= (rulesInvariant!4054 thiss!27264 rules!4246) e!1798132)))

(declare-fun b!2838901 () Bool)

(declare-datatypes ((List!33709 0))(
  ( (Nil!33585) (Cons!33585 (h!39005 String!36911) (t!232294 List!33709)) )
))
(declare-fun noDuplicateTag!1865 (LexerInterface!4638 List!33706 List!33709) Bool)

(assert (=> b!2838901 (= e!1798132 (noDuplicateTag!1865 thiss!27264 rules!4246 Nil!33585))))

(assert (= (and d!823452 res!1181213) b!2838901))

(declare-fun m!3267905 () Bool)

(assert (=> d!823452 m!3267905))

(declare-fun m!3267907 () Bool)

(assert (=> b!2838901 m!3267907))

(assert (=> b!2838810 d!823452))

(declare-fun bs!518850 () Bool)

(declare-fun d!823456 () Bool)

(assert (= bs!518850 (and d!823456 d!823440)))

(declare-fun lambda!104204 () Int)

(assert (=> bs!518850 (= lambda!104204 lambda!104203)))

(declare-fun b!2838906 () Bool)

(declare-fun e!1798137 () Bool)

(assert (=> b!2838906 (= e!1798137 true)))

(declare-fun b!2838905 () Bool)

(declare-fun e!1798136 () Bool)

(assert (=> b!2838905 (= e!1798136 e!1798137)))

(declare-fun b!2838904 () Bool)

(declare-fun e!1798135 () Bool)

(assert (=> b!2838904 (= e!1798135 e!1798136)))

(assert (=> d!823456 e!1798135))

(assert (= b!2838905 b!2838906))

(assert (= b!2838904 b!2838905))

(assert (= (and d!823456 ((_ is Cons!33582) rules!4246)) b!2838904))

(assert (=> b!2838906 (< (dynLambda!14119 order!17935 (toValue!7090 (transformation!5048 (h!39002 rules!4246)))) (dynLambda!14120 order!17937 lambda!104204))))

(assert (=> b!2838906 (< (dynLambda!14121 order!17939 (toChars!6949 (transformation!5048 (h!39002 rules!4246)))) (dynLambda!14120 order!17937 lambda!104204))))

(assert (=> d!823456 true))

(declare-fun lt!1011520 () Bool)

(assert (=> d!823456 (= lt!1011520 (forall!6905 tokens!612 lambda!104204))))

(declare-fun e!1798134 () Bool)

(assert (=> d!823456 (= lt!1011520 e!1798134)))

(declare-fun res!1181215 () Bool)

(assert (=> d!823456 (=> res!1181215 e!1798134)))

(assert (=> d!823456 (= res!1181215 (not ((_ is Cons!33583) tokens!612)))))

(assert (=> d!823456 (not (isEmpty!18499 rules!4246))))

(assert (=> d!823456 (= (rulesProduceEachTokenIndividuallyList!1679 thiss!27264 rules!4246 tokens!612) lt!1011520)))

(declare-fun b!2838902 () Bool)

(declare-fun e!1798133 () Bool)

(assert (=> b!2838902 (= e!1798134 e!1798133)))

(declare-fun res!1181214 () Bool)

(assert (=> b!2838902 (=> (not res!1181214) (not e!1798133))))

(assert (=> b!2838902 (= res!1181214 (rulesProduceIndividualToken!2152 thiss!27264 rules!4246 (h!39003 tokens!612)))))

(declare-fun b!2838903 () Bool)

(assert (=> b!2838903 (= e!1798133 (rulesProduceEachTokenIndividuallyList!1679 thiss!27264 rules!4246 (t!232240 tokens!612)))))

(assert (= (and d!823456 (not res!1181215)) b!2838902))

(assert (= (and b!2838902 res!1181214) b!2838903))

(declare-fun m!3267909 () Bool)

(assert (=> d!823456 m!3267909))

(assert (=> d!823456 m!3267869))

(declare-fun m!3267911 () Bool)

(assert (=> b!2838902 m!3267911))

(assert (=> b!2838903 m!3267849))

(assert (=> b!2838799 d!823456))

(declare-fun d!823458 () Bool)

(declare-fun res!1181226 () Bool)

(declare-fun e!1798146 () Bool)

(assert (=> d!823458 (=> (not res!1181226) (not e!1798146))))

(declare-fun isEmpty!18501 (List!33705) Bool)

(assert (=> d!823458 (= res!1181226 (not (isEmpty!18501 (originalCharacters!5780 (h!39003 tokens!612)))))))

(assert (=> d!823458 (= (inv!45551 (h!39003 tokens!612)) e!1798146)))

(declare-fun b!2838922 () Bool)

(declare-fun res!1181227 () Bool)

(assert (=> b!2838922 (=> (not res!1181227) (not e!1798146))))

(declare-fun list!12528 (BalanceConc!20494) List!33705)

(declare-fun dynLambda!14123 (Int TokenValue!5278) BalanceConc!20494)

(assert (=> b!2838922 (= res!1181227 (= (originalCharacters!5780 (h!39003 tokens!612)) (list!12528 (dynLambda!14123 (toChars!6949 (transformation!5048 (rule!7476 (h!39003 tokens!612)))) (value!162237 (h!39003 tokens!612))))))))

(declare-fun b!2838923 () Bool)

(declare-fun size!26089 (List!33705) Int)

(assert (=> b!2838923 (= e!1798146 (= (size!26087 (h!39003 tokens!612)) (size!26089 (originalCharacters!5780 (h!39003 tokens!612)))))))

(assert (= (and d!823458 res!1181226) b!2838922))

(assert (= (and b!2838922 res!1181227) b!2838923))

(declare-fun b_lambda!85329 () Bool)

(assert (=> (not b_lambda!85329) (not b!2838922)))

(declare-fun t!232252 () Bool)

(declare-fun tb!154667 () Bool)

(assert (=> (and b!2838798 (= (toChars!6949 (transformation!5048 (rule!7476 (h!39003 tokens!612)))) (toChars!6949 (transformation!5048 (rule!7476 (h!39003 tokens!612))))) t!232252) tb!154667))

(declare-fun b!2838928 () Bool)

(declare-fun e!1798149 () Bool)

(declare-fun tp!908970 () Bool)

(declare-fun inv!45554 (Conc!10428) Bool)

(assert (=> b!2838928 (= e!1798149 (and (inv!45554 (c!458491 (dynLambda!14123 (toChars!6949 (transformation!5048 (rule!7476 (h!39003 tokens!612)))) (value!162237 (h!39003 tokens!612))))) tp!908970))))

(declare-fun result!192914 () Bool)

(declare-fun inv!45555 (BalanceConc!20494) Bool)

(assert (=> tb!154667 (= result!192914 (and (inv!45555 (dynLambda!14123 (toChars!6949 (transformation!5048 (rule!7476 (h!39003 tokens!612)))) (value!162237 (h!39003 tokens!612)))) e!1798149))))

(assert (= tb!154667 b!2838928))

(declare-fun m!3267925 () Bool)

(assert (=> b!2838928 m!3267925))

(declare-fun m!3267927 () Bool)

(assert (=> tb!154667 m!3267927))

(assert (=> b!2838922 t!232252))

(declare-fun b_and!208089 () Bool)

(assert (= b_and!208073 (and (=> t!232252 result!192914) b_and!208089)))

(declare-fun t!232254 () Bool)

(declare-fun tb!154669 () Bool)

(assert (=> (and b!2838803 (= (toChars!6949 (transformation!5048 (rule!7476 (h!39003 tokensBis!14)))) (toChars!6949 (transformation!5048 (rule!7476 (h!39003 tokens!612))))) t!232254) tb!154669))

(declare-fun result!192918 () Bool)

(assert (= result!192918 result!192914))

(assert (=> b!2838922 t!232254))

(declare-fun b_and!208091 () Bool)

(assert (= b_and!208077 (and (=> t!232254 result!192918) b_and!208091)))

(declare-fun t!232256 () Bool)

(declare-fun tb!154671 () Bool)

(assert (=> (and b!2838813 (= (toChars!6949 (transformation!5048 (h!39002 rules!4246))) (toChars!6949 (transformation!5048 (rule!7476 (h!39003 tokens!612))))) t!232256) tb!154671))

(declare-fun result!192920 () Bool)

(assert (= result!192920 result!192914))

(assert (=> b!2838922 t!232256))

(declare-fun b_and!208093 () Bool)

(assert (= b_and!208081 (and (=> t!232256 result!192920) b_and!208093)))

(declare-fun m!3267929 () Bool)

(assert (=> d!823458 m!3267929))

(declare-fun m!3267931 () Bool)

(assert (=> b!2838922 m!3267931))

(assert (=> b!2838922 m!3267931))

(declare-fun m!3267933 () Bool)

(assert (=> b!2838922 m!3267933))

(declare-fun m!3267935 () Bool)

(assert (=> b!2838923 m!3267935))

(assert (=> b!2838797 d!823458))

(declare-fun d!823464 () Bool)

(declare-fun res!1181230 () Bool)

(declare-fun e!1798152 () Bool)

(assert (=> d!823464 (=> (not res!1181230) (not e!1798152))))

(assert (=> d!823464 (= res!1181230 (not (isEmpty!18501 (originalCharacters!5780 (h!39003 tokensBis!14)))))))

(assert (=> d!823464 (= (inv!45551 (h!39003 tokensBis!14)) e!1798152)))

(declare-fun b!2838931 () Bool)

(declare-fun res!1181231 () Bool)

(assert (=> b!2838931 (=> (not res!1181231) (not e!1798152))))

(assert (=> b!2838931 (= res!1181231 (= (originalCharacters!5780 (h!39003 tokensBis!14)) (list!12528 (dynLambda!14123 (toChars!6949 (transformation!5048 (rule!7476 (h!39003 tokensBis!14)))) (value!162237 (h!39003 tokensBis!14))))))))

(declare-fun b!2838932 () Bool)

(assert (=> b!2838932 (= e!1798152 (= (size!26087 (h!39003 tokensBis!14)) (size!26089 (originalCharacters!5780 (h!39003 tokensBis!14)))))))

(assert (= (and d!823464 res!1181230) b!2838931))

(assert (= (and b!2838931 res!1181231) b!2838932))

(declare-fun b_lambda!85331 () Bool)

(assert (=> (not b_lambda!85331) (not b!2838931)))

(declare-fun t!232258 () Bool)

(declare-fun tb!154673 () Bool)

(assert (=> (and b!2838798 (= (toChars!6949 (transformation!5048 (rule!7476 (h!39003 tokens!612)))) (toChars!6949 (transformation!5048 (rule!7476 (h!39003 tokensBis!14))))) t!232258) tb!154673))

(declare-fun b!2838934 () Bool)

(declare-fun e!1798154 () Bool)

(declare-fun tp!908971 () Bool)

(assert (=> b!2838934 (= e!1798154 (and (inv!45554 (c!458491 (dynLambda!14123 (toChars!6949 (transformation!5048 (rule!7476 (h!39003 tokensBis!14)))) (value!162237 (h!39003 tokensBis!14))))) tp!908971))))

(declare-fun result!192922 () Bool)

(assert (=> tb!154673 (= result!192922 (and (inv!45555 (dynLambda!14123 (toChars!6949 (transformation!5048 (rule!7476 (h!39003 tokensBis!14)))) (value!162237 (h!39003 tokensBis!14)))) e!1798154))))

(assert (= tb!154673 b!2838934))

(declare-fun m!3267937 () Bool)

(assert (=> b!2838934 m!3267937))

(declare-fun m!3267939 () Bool)

(assert (=> tb!154673 m!3267939))

(assert (=> b!2838931 t!232258))

(declare-fun b_and!208095 () Bool)

(assert (= b_and!208089 (and (=> t!232258 result!192922) b_and!208095)))

(declare-fun t!232260 () Bool)

(declare-fun tb!154675 () Bool)

(assert (=> (and b!2838803 (= (toChars!6949 (transformation!5048 (rule!7476 (h!39003 tokensBis!14)))) (toChars!6949 (transformation!5048 (rule!7476 (h!39003 tokensBis!14))))) t!232260) tb!154675))

(declare-fun result!192924 () Bool)

(assert (= result!192924 result!192922))

(assert (=> b!2838931 t!232260))

(declare-fun b_and!208097 () Bool)

(assert (= b_and!208091 (and (=> t!232260 result!192924) b_and!208097)))

(declare-fun tb!154677 () Bool)

(declare-fun t!232262 () Bool)

(assert (=> (and b!2838813 (= (toChars!6949 (transformation!5048 (h!39002 rules!4246))) (toChars!6949 (transformation!5048 (rule!7476 (h!39003 tokensBis!14))))) t!232262) tb!154677))

(declare-fun result!192926 () Bool)

(assert (= result!192926 result!192922))

(assert (=> b!2838931 t!232262))

(declare-fun b_and!208099 () Bool)

(assert (= b_and!208093 (and (=> t!232262 result!192926) b_and!208099)))

(declare-fun m!3267945 () Bool)

(assert (=> d!823464 m!3267945))

(declare-fun m!3267947 () Bool)

(assert (=> b!2838931 m!3267947))

(assert (=> b!2838931 m!3267947))

(declare-fun m!3267949 () Bool)

(assert (=> b!2838931 m!3267949))

(declare-fun m!3267951 () Bool)

(assert (=> b!2838932 m!3267951))

(assert (=> b!2838807 d!823464))

(declare-fun d!823470 () Bool)

(assert (=> d!823470 (= (inv!45547 (tag!5552 (h!39002 rules!4246))) (= (mod (str.len (value!162211 (tag!5552 (h!39002 rules!4246)))) 2) 0))))

(assert (=> b!2838796 d!823470))

(declare-fun d!823488 () Bool)

(declare-fun res!1181242 () Bool)

(declare-fun e!1798194 () Bool)

(assert (=> d!823488 (=> (not res!1181242) (not e!1798194))))

(declare-fun semiInverseModEq!2099 (Int Int) Bool)

(assert (=> d!823488 (= res!1181242 (semiInverseModEq!2099 (toChars!6949 (transformation!5048 (h!39002 rules!4246))) (toValue!7090 (transformation!5048 (h!39002 rules!4246)))))))

(assert (=> d!823488 (= (inv!45550 (transformation!5048 (h!39002 rules!4246))) e!1798194)))

(declare-fun b!2838979 () Bool)

(declare-fun equivClasses!1998 (Int Int) Bool)

(assert (=> b!2838979 (= e!1798194 (equivClasses!1998 (toChars!6949 (transformation!5048 (h!39002 rules!4246))) (toValue!7090 (transformation!5048 (h!39002 rules!4246)))))))

(assert (= (and d!823488 res!1181242) b!2838979))

(declare-fun m!3267995 () Bool)

(assert (=> d!823488 m!3267995))

(declare-fun m!3267997 () Bool)

(assert (=> b!2838979 m!3267997))

(assert (=> b!2838796 d!823488))

(declare-fun d!823490 () Bool)

(assert (=> d!823490 (= (inv!45547 (tag!5552 (rule!7476 (h!39003 tokens!612)))) (= (mod (str.len (value!162211 (tag!5552 (rule!7476 (h!39003 tokens!612))))) 2) 0))))

(assert (=> b!2838805 d!823490))

(declare-fun d!823492 () Bool)

(declare-fun res!1181243 () Bool)

(declare-fun e!1798197 () Bool)

(assert (=> d!823492 (=> (not res!1181243) (not e!1798197))))

(assert (=> d!823492 (= res!1181243 (semiInverseModEq!2099 (toChars!6949 (transformation!5048 (rule!7476 (h!39003 tokens!612)))) (toValue!7090 (transformation!5048 (rule!7476 (h!39003 tokens!612))))))))

(assert (=> d!823492 (= (inv!45550 (transformation!5048 (rule!7476 (h!39003 tokens!612)))) e!1798197)))

(declare-fun b!2838988 () Bool)

(assert (=> b!2838988 (= e!1798197 (equivClasses!1998 (toChars!6949 (transformation!5048 (rule!7476 (h!39003 tokens!612)))) (toValue!7090 (transformation!5048 (rule!7476 (h!39003 tokens!612))))))))

(assert (= (and d!823492 res!1181243) b!2838988))

(declare-fun m!3267999 () Bool)

(assert (=> d!823492 m!3267999))

(declare-fun m!3268001 () Bool)

(assert (=> b!2838988 m!3268001))

(assert (=> b!2838805 d!823492))

(declare-fun b!2839025 () Bool)

(declare-fun e!1798221 () Bool)

(declare-fun inv!15 (TokenValue!5278) Bool)

(assert (=> b!2839025 (= e!1798221 (inv!15 (value!162237 (h!39003 tokens!612))))))

(declare-fun d!823494 () Bool)

(declare-fun c!458508 () Bool)

(assert (=> d!823494 (= c!458508 ((_ is IntegerValue!15834) (value!162237 (h!39003 tokens!612))))))

(declare-fun e!1798222 () Bool)

(assert (=> d!823494 (= (inv!21 (value!162237 (h!39003 tokens!612))) e!1798222)))

(declare-fun b!2839026 () Bool)

(declare-fun e!1798220 () Bool)

(declare-fun inv!17 (TokenValue!5278) Bool)

(assert (=> b!2839026 (= e!1798220 (inv!17 (value!162237 (h!39003 tokens!612))))))

(declare-fun b!2839027 () Bool)

(declare-fun inv!16 (TokenValue!5278) Bool)

(assert (=> b!2839027 (= e!1798222 (inv!16 (value!162237 (h!39003 tokens!612))))))

(declare-fun b!2839028 () Bool)

(assert (=> b!2839028 (= e!1798222 e!1798220)))

(declare-fun c!458509 () Bool)

(assert (=> b!2839028 (= c!458509 ((_ is IntegerValue!15835) (value!162237 (h!39003 tokens!612))))))

(declare-fun b!2839029 () Bool)

(declare-fun res!1181246 () Bool)

(assert (=> b!2839029 (=> res!1181246 e!1798221)))

(assert (=> b!2839029 (= res!1181246 (not ((_ is IntegerValue!15836) (value!162237 (h!39003 tokens!612)))))))

(assert (=> b!2839029 (= e!1798220 e!1798221)))

(assert (= (and d!823494 c!458508) b!2839027))

(assert (= (and d!823494 (not c!458508)) b!2839028))

(assert (= (and b!2839028 c!458509) b!2839026))

(assert (= (and b!2839028 (not c!458509)) b!2839029))

(assert (= (and b!2839029 (not res!1181246)) b!2839025))

(declare-fun m!3268007 () Bool)

(assert (=> b!2839025 m!3268007))

(declare-fun m!3268009 () Bool)

(assert (=> b!2839026 m!3268009))

(declare-fun m!3268011 () Bool)

(assert (=> b!2839027 m!3268011))

(assert (=> b!2838804 d!823494))

(declare-fun d!823496 () Bool)

(assert (=> d!823496 (= (inv!45547 (tag!5552 (rule!7476 (h!39003 tokensBis!14)))) (= (mod (str.len (value!162211 (tag!5552 (rule!7476 (h!39003 tokensBis!14))))) 2) 0))))

(assert (=> b!2838801 d!823496))

(declare-fun d!823498 () Bool)

(declare-fun res!1181247 () Bool)

(declare-fun e!1798229 () Bool)

(assert (=> d!823498 (=> (not res!1181247) (not e!1798229))))

(assert (=> d!823498 (= res!1181247 (semiInverseModEq!2099 (toChars!6949 (transformation!5048 (rule!7476 (h!39003 tokensBis!14)))) (toValue!7090 (transformation!5048 (rule!7476 (h!39003 tokensBis!14))))))))

(assert (=> d!823498 (= (inv!45550 (transformation!5048 (rule!7476 (h!39003 tokensBis!14)))) e!1798229)))

(declare-fun b!2839034 () Bool)

(assert (=> b!2839034 (= e!1798229 (equivClasses!1998 (toChars!6949 (transformation!5048 (rule!7476 (h!39003 tokensBis!14)))) (toValue!7090 (transformation!5048 (rule!7476 (h!39003 tokensBis!14))))))))

(assert (= (and d!823498 res!1181247) b!2839034))

(declare-fun m!3268013 () Bool)

(assert (=> d!823498 m!3268013))

(declare-fun m!3268015 () Bool)

(assert (=> b!2839034 m!3268015))

(assert (=> b!2838801 d!823498))

(declare-fun d!823500 () Bool)

(assert (=> d!823500 (= (isEmpty!18499 rules!4246) ((_ is Nil!33582) rules!4246))))

(assert (=> b!2838811 d!823500))

(declare-fun d!823502 () Bool)

(declare-fun res!1181251 () Bool)

(declare-fun e!1798232 () Bool)

(assert (=> d!823502 (=> res!1181251 e!1798232)))

(assert (=> d!823502 (= res!1181251 ((_ is Nil!33583) tokensBis!14))))

(assert (=> d!823502 (= (subseq!514 tokensBis!14 tokens!612) e!1798232)))

(declare-fun b!2839036 () Bool)

(declare-fun e!1798233 () Bool)

(declare-fun e!1798231 () Bool)

(assert (=> b!2839036 (= e!1798233 e!1798231)))

(declare-fun res!1181250 () Bool)

(assert (=> b!2839036 (=> res!1181250 e!1798231)))

(declare-fun e!1798230 () Bool)

(assert (=> b!2839036 (= res!1181250 e!1798230)))

(declare-fun res!1181248 () Bool)

(assert (=> b!2839036 (=> (not res!1181248) (not e!1798230))))

(assert (=> b!2839036 (= res!1181248 (= (h!39003 tokensBis!14) (h!39003 tokens!612)))))

(declare-fun b!2839038 () Bool)

(assert (=> b!2839038 (= e!1798231 (subseq!514 tokensBis!14 (t!232240 tokens!612)))))

(declare-fun b!2839037 () Bool)

(assert (=> b!2839037 (= e!1798230 (subseq!514 (t!232240 tokensBis!14) (t!232240 tokens!612)))))

(declare-fun b!2839035 () Bool)

(assert (=> b!2839035 (= e!1798232 e!1798233)))

(declare-fun res!1181249 () Bool)

(assert (=> b!2839035 (=> (not res!1181249) (not e!1798233))))

(assert (=> b!2839035 (= res!1181249 ((_ is Cons!33583) tokens!612))))

(assert (= (and d!823502 (not res!1181251)) b!2839035))

(assert (= (and b!2839035 res!1181249) b!2839036))

(assert (= (and b!2839036 res!1181248) b!2839037))

(assert (= (and b!2839036 (not res!1181250)) b!2839038))

(declare-fun m!3268025 () Bool)

(assert (=> b!2839038 m!3268025))

(assert (=> b!2839037 m!3267853))

(assert (=> b!2838800 d!823502))

(declare-fun d!823504 () Bool)

(declare-fun lt!1011528 () Int)

(assert (=> d!823504 (>= lt!1011528 0)))

(declare-fun e!1798236 () Int)

(assert (=> d!823504 (= lt!1011528 e!1798236)))

(declare-fun c!458512 () Bool)

(assert (=> d!823504 (= c!458512 ((_ is Nil!33583) (t!232240 tokens!612)))))

(assert (=> d!823504 (= (ListPrimitiveSize!227 (t!232240 tokens!612)) lt!1011528)))

(declare-fun b!2839043 () Bool)

(assert (=> b!2839043 (= e!1798236 0)))

(declare-fun b!2839044 () Bool)

(assert (=> b!2839044 (= e!1798236 (+ 1 (ListPrimitiveSize!227 (t!232240 (t!232240 tokens!612)))))))

(assert (= (and d!823504 c!458512) b!2839043))

(assert (= (and d!823504 (not c!458512)) b!2839044))

(declare-fun m!3268027 () Bool)

(assert (=> b!2839044 m!3268027))

(assert (=> b!2838802 d!823504))

(declare-fun d!823506 () Bool)

(declare-fun lt!1011529 () Int)

(assert (=> d!823506 (>= lt!1011529 0)))

(declare-fun e!1798237 () Int)

(assert (=> d!823506 (= lt!1011529 e!1798237)))

(declare-fun c!458513 () Bool)

(assert (=> d!823506 (= c!458513 ((_ is Nil!33583) tokens!612))))

(assert (=> d!823506 (= (ListPrimitiveSize!227 tokens!612) lt!1011529)))

(declare-fun b!2839045 () Bool)

(assert (=> b!2839045 (= e!1798237 0)))

(declare-fun b!2839046 () Bool)

(assert (=> b!2839046 (= e!1798237 (+ 1 (ListPrimitiveSize!227 (t!232240 tokens!612))))))

(assert (= (and d!823506 c!458513) b!2839045))

(assert (= (and d!823506 (not c!458513)) b!2839046))

(assert (=> b!2839046 m!3267857))

(assert (=> b!2838802 d!823506))

(declare-fun b!2839047 () Bool)

(declare-fun e!1798239 () Bool)

(assert (=> b!2839047 (= e!1798239 (inv!15 (value!162237 (h!39003 tokensBis!14))))))

(declare-fun d!823508 () Bool)

(declare-fun c!458514 () Bool)

(assert (=> d!823508 (= c!458514 ((_ is IntegerValue!15834) (value!162237 (h!39003 tokensBis!14))))))

(declare-fun e!1798240 () Bool)

(assert (=> d!823508 (= (inv!21 (value!162237 (h!39003 tokensBis!14))) e!1798240)))

(declare-fun b!2839048 () Bool)

(declare-fun e!1798238 () Bool)

(assert (=> b!2839048 (= e!1798238 (inv!17 (value!162237 (h!39003 tokensBis!14))))))

(declare-fun b!2839049 () Bool)

(assert (=> b!2839049 (= e!1798240 (inv!16 (value!162237 (h!39003 tokensBis!14))))))

(declare-fun b!2839050 () Bool)

(assert (=> b!2839050 (= e!1798240 e!1798238)))

(declare-fun c!458515 () Bool)

(assert (=> b!2839050 (= c!458515 ((_ is IntegerValue!15835) (value!162237 (h!39003 tokensBis!14))))))

(declare-fun b!2839051 () Bool)

(declare-fun res!1181252 () Bool)

(assert (=> b!2839051 (=> res!1181252 e!1798239)))

(assert (=> b!2839051 (= res!1181252 (not ((_ is IntegerValue!15836) (value!162237 (h!39003 tokensBis!14)))))))

(assert (=> b!2839051 (= e!1798238 e!1798239)))

(assert (= (and d!823508 c!458514) b!2839049))

(assert (= (and d!823508 (not c!458514)) b!2839050))

(assert (= (and b!2839050 c!458515) b!2839048))

(assert (= (and b!2839050 (not c!458515)) b!2839051))

(assert (= (and b!2839051 (not res!1181252)) b!2839047))

(declare-fun m!3268029 () Bool)

(assert (=> b!2839047 m!3268029))

(declare-fun m!3268031 () Bool)

(assert (=> b!2839048 m!3268031))

(declare-fun m!3268033 () Bool)

(assert (=> b!2839049 m!3268033))

(assert (=> b!2838812 d!823508))

(declare-fun b!2839062 () Bool)

(declare-fun b_free!82153 () Bool)

(declare-fun b_next!82857 () Bool)

(assert (=> b!2839062 (= b_free!82153 (not b_next!82857))))

(declare-fun tp!909045 () Bool)

(declare-fun b_and!208119 () Bool)

(assert (=> b!2839062 (= tp!909045 b_and!208119)))

(declare-fun b_free!82155 () Bool)

(declare-fun b_next!82859 () Bool)

(assert (=> b!2839062 (= b_free!82155 (not b_next!82859))))

(declare-fun tb!154697 () Bool)

(declare-fun t!232282 () Bool)

(assert (=> (and b!2839062 (= (toChars!6949 (transformation!5048 (h!39002 (t!232239 rules!4246)))) (toChars!6949 (transformation!5048 (rule!7476 (h!39003 tokens!612))))) t!232282) tb!154697))

(declare-fun result!192956 () Bool)

(assert (= result!192956 result!192914))

(assert (=> b!2838922 t!232282))

(declare-fun t!232284 () Bool)

(declare-fun tb!154699 () Bool)

(assert (=> (and b!2839062 (= (toChars!6949 (transformation!5048 (h!39002 (t!232239 rules!4246)))) (toChars!6949 (transformation!5048 (rule!7476 (h!39003 tokensBis!14))))) t!232284) tb!154699))

(declare-fun result!192958 () Bool)

(assert (= result!192958 result!192922))

(assert (=> b!2838931 t!232284))

(declare-fun b_and!208121 () Bool)

(declare-fun tp!909043 () Bool)

(assert (=> b!2839062 (= tp!909043 (and (=> t!232282 result!192956) (=> t!232284 result!192958) b_and!208121))))

(declare-fun e!1798252 () Bool)

(assert (=> b!2839062 (= e!1798252 (and tp!909045 tp!909043))))

(declare-fun tp!909044 () Bool)

(declare-fun b!2839061 () Bool)

(declare-fun e!1798251 () Bool)

(assert (=> b!2839061 (= e!1798251 (and tp!909044 (inv!45547 (tag!5552 (h!39002 (t!232239 rules!4246)))) (inv!45550 (transformation!5048 (h!39002 (t!232239 rules!4246)))) e!1798252))))

(declare-fun b!2839060 () Bool)

(declare-fun e!1798249 () Bool)

(declare-fun tp!909042 () Bool)

(assert (=> b!2839060 (= e!1798249 (and e!1798251 tp!909042))))

(assert (=> b!2838806 (= tp!908964 e!1798249)))

(assert (= b!2839061 b!2839062))

(assert (= b!2839060 b!2839061))

(assert (= (and b!2838806 ((_ is Cons!33582) (t!232239 rules!4246))) b!2839060))

(declare-fun m!3268035 () Bool)

(assert (=> b!2839061 m!3268035))

(declare-fun m!3268037 () Bool)

(assert (=> b!2839061 m!3268037))

(declare-fun b!2839076 () Bool)

(declare-fun b_free!82157 () Bool)

(declare-fun b_next!82861 () Bool)

(assert (=> b!2839076 (= b_free!82157 (not b_next!82861))))

(declare-fun tp!909060 () Bool)

(declare-fun b_and!208123 () Bool)

(assert (=> b!2839076 (= tp!909060 b_and!208123)))

(declare-fun b_free!82159 () Bool)

(declare-fun b_next!82863 () Bool)

(assert (=> b!2839076 (= b_free!82159 (not b_next!82863))))

(declare-fun t!232286 () Bool)

(declare-fun tb!154701 () Bool)

(assert (=> (and b!2839076 (= (toChars!6949 (transformation!5048 (rule!7476 (h!39003 (t!232240 tokens!612))))) (toChars!6949 (transformation!5048 (rule!7476 (h!39003 tokens!612))))) t!232286) tb!154701))

(declare-fun result!192962 () Bool)

(assert (= result!192962 result!192914))

(assert (=> b!2838922 t!232286))

(declare-fun tb!154703 () Bool)

(declare-fun t!232288 () Bool)

(assert (=> (and b!2839076 (= (toChars!6949 (transformation!5048 (rule!7476 (h!39003 (t!232240 tokens!612))))) (toChars!6949 (transformation!5048 (rule!7476 (h!39003 tokensBis!14))))) t!232288) tb!154703))

(declare-fun result!192964 () Bool)

(assert (= result!192964 result!192922))

(assert (=> b!2838931 t!232288))

(declare-fun tp!909057 () Bool)

(declare-fun b_and!208125 () Bool)

(assert (=> b!2839076 (= tp!909057 (and (=> t!232286 result!192962) (=> t!232288 result!192964) b_and!208125))))

(declare-fun tp!909056 () Bool)

(declare-fun b!2839074 () Bool)

(declare-fun e!1798267 () Bool)

(declare-fun e!1798268 () Bool)

(assert (=> b!2839074 (= e!1798268 (and (inv!21 (value!162237 (h!39003 (t!232240 tokens!612)))) e!1798267 tp!909056))))

(declare-fun e!1798266 () Bool)

(assert (=> b!2839076 (= e!1798266 (and tp!909060 tp!909057))))

(declare-fun b!2839073 () Bool)

(declare-fun e!1798270 () Bool)

(declare-fun tp!909059 () Bool)

(assert (=> b!2839073 (= e!1798270 (and (inv!45551 (h!39003 (t!232240 tokens!612))) e!1798268 tp!909059))))

(declare-fun tp!909058 () Bool)

(declare-fun b!2839075 () Bool)

(assert (=> b!2839075 (= e!1798267 (and tp!909058 (inv!45547 (tag!5552 (rule!7476 (h!39003 (t!232240 tokens!612))))) (inv!45550 (transformation!5048 (rule!7476 (h!39003 (t!232240 tokens!612))))) e!1798266))))

(assert (=> b!2838797 (= tp!908961 e!1798270)))

(assert (= b!2839075 b!2839076))

(assert (= b!2839074 b!2839075))

(assert (= b!2839073 b!2839074))

(assert (= (and b!2838797 ((_ is Cons!33583) (t!232240 tokens!612))) b!2839073))

(declare-fun m!3268039 () Bool)

(assert (=> b!2839074 m!3268039))

(declare-fun m!3268041 () Bool)

(assert (=> b!2839073 m!3268041))

(declare-fun m!3268043 () Bool)

(assert (=> b!2839075 m!3268043))

(declare-fun m!3268045 () Bool)

(assert (=> b!2839075 m!3268045))

(declare-fun b!2839080 () Bool)

(declare-fun b_free!82161 () Bool)

(declare-fun b_next!82865 () Bool)

(assert (=> b!2839080 (= b_free!82161 (not b_next!82865))))

(declare-fun tp!909065 () Bool)

(declare-fun b_and!208127 () Bool)

(assert (=> b!2839080 (= tp!909065 b_and!208127)))

(declare-fun b_free!82163 () Bool)

(declare-fun b_next!82867 () Bool)

(assert (=> b!2839080 (= b_free!82163 (not b_next!82867))))

(declare-fun t!232290 () Bool)

(declare-fun tb!154705 () Bool)

(assert (=> (and b!2839080 (= (toChars!6949 (transformation!5048 (rule!7476 (h!39003 (t!232240 tokensBis!14))))) (toChars!6949 (transformation!5048 (rule!7476 (h!39003 tokens!612))))) t!232290) tb!154705))

(declare-fun result!192966 () Bool)

(assert (= result!192966 result!192914))

(assert (=> b!2838922 t!232290))

(declare-fun t!232292 () Bool)

(declare-fun tb!154707 () Bool)

(assert (=> (and b!2839080 (= (toChars!6949 (transformation!5048 (rule!7476 (h!39003 (t!232240 tokensBis!14))))) (toChars!6949 (transformation!5048 (rule!7476 (h!39003 tokensBis!14))))) t!232292) tb!154707))

(declare-fun result!192968 () Bool)

(assert (= result!192968 result!192922))

(assert (=> b!2838931 t!232292))

(declare-fun tp!909062 () Bool)

(declare-fun b_and!208129 () Bool)

(assert (=> b!2839080 (= tp!909062 (and (=> t!232290 result!192966) (=> t!232292 result!192968) b_and!208129))))

(declare-fun e!1798273 () Bool)

(declare-fun b!2839078 () Bool)

(declare-fun tp!909061 () Bool)

(declare-fun e!1798274 () Bool)

(assert (=> b!2839078 (= e!1798274 (and (inv!21 (value!162237 (h!39003 (t!232240 tokensBis!14)))) e!1798273 tp!909061))))

(declare-fun e!1798272 () Bool)

(assert (=> b!2839080 (= e!1798272 (and tp!909065 tp!909062))))

(declare-fun tp!909064 () Bool)

(declare-fun b!2839077 () Bool)

(declare-fun e!1798276 () Bool)

(assert (=> b!2839077 (= e!1798276 (and (inv!45551 (h!39003 (t!232240 tokensBis!14))) e!1798274 tp!909064))))

(declare-fun b!2839079 () Bool)

(declare-fun tp!909063 () Bool)

(assert (=> b!2839079 (= e!1798273 (and tp!909063 (inv!45547 (tag!5552 (rule!7476 (h!39003 (t!232240 tokensBis!14))))) (inv!45550 (transformation!5048 (rule!7476 (h!39003 (t!232240 tokensBis!14))))) e!1798272))))

(assert (=> b!2838807 (= tp!908953 e!1798276)))

(assert (= b!2839079 b!2839080))

(assert (= b!2839078 b!2839079))

(assert (= b!2839077 b!2839078))

(assert (= (and b!2838807 ((_ is Cons!33583) (t!232240 tokensBis!14))) b!2839077))

(declare-fun m!3268047 () Bool)

(assert (=> b!2839078 m!3268047))

(declare-fun m!3268049 () Bool)

(assert (=> b!2839077 m!3268049))

(declare-fun m!3268051 () Bool)

(assert (=> b!2839079 m!3268051))

(declare-fun m!3268053 () Bool)

(assert (=> b!2839079 m!3268053))

(declare-fun b!2839093 () Bool)

(declare-fun e!1798279 () Bool)

(declare-fun tp!909079 () Bool)

(assert (=> b!2839093 (= e!1798279 tp!909079)))

(assert (=> b!2838796 (= tp!908951 e!1798279)))

(declare-fun b!2839094 () Bool)

(declare-fun tp!909077 () Bool)

(declare-fun tp!909080 () Bool)

(assert (=> b!2839094 (= e!1798279 (and tp!909077 tp!909080))))

(declare-fun b!2839092 () Bool)

(declare-fun tp!909078 () Bool)

(declare-fun tp!909076 () Bool)

(assert (=> b!2839092 (= e!1798279 (and tp!909078 tp!909076))))

(declare-fun b!2839091 () Bool)

(declare-fun tp_is_empty!14611 () Bool)

(assert (=> b!2839091 (= e!1798279 tp_is_empty!14611)))

(assert (= (and b!2838796 ((_ is ElementMatch!8439) (regex!5048 (h!39002 rules!4246)))) b!2839091))

(assert (= (and b!2838796 ((_ is Concat!13717) (regex!5048 (h!39002 rules!4246)))) b!2839092))

(assert (= (and b!2838796 ((_ is Star!8439) (regex!5048 (h!39002 rules!4246)))) b!2839093))

(assert (= (and b!2838796 ((_ is Union!8439) (regex!5048 (h!39002 rules!4246)))) b!2839094))

(declare-fun b!2839097 () Bool)

(declare-fun e!1798280 () Bool)

(declare-fun tp!909084 () Bool)

(assert (=> b!2839097 (= e!1798280 tp!909084)))

(assert (=> b!2838805 (= tp!908959 e!1798280)))

(declare-fun b!2839098 () Bool)

(declare-fun tp!909082 () Bool)

(declare-fun tp!909085 () Bool)

(assert (=> b!2839098 (= e!1798280 (and tp!909082 tp!909085))))

(declare-fun b!2839096 () Bool)

(declare-fun tp!909083 () Bool)

(declare-fun tp!909081 () Bool)

(assert (=> b!2839096 (= e!1798280 (and tp!909083 tp!909081))))

(declare-fun b!2839095 () Bool)

(assert (=> b!2839095 (= e!1798280 tp_is_empty!14611)))

(assert (= (and b!2838805 ((_ is ElementMatch!8439) (regex!5048 (rule!7476 (h!39003 tokens!612))))) b!2839095))

(assert (= (and b!2838805 ((_ is Concat!13717) (regex!5048 (rule!7476 (h!39003 tokens!612))))) b!2839096))

(assert (= (and b!2838805 ((_ is Star!8439) (regex!5048 (rule!7476 (h!39003 tokens!612))))) b!2839097))

(assert (= (and b!2838805 ((_ is Union!8439) (regex!5048 (rule!7476 (h!39003 tokens!612))))) b!2839098))

(declare-fun b!2839103 () Bool)

(declare-fun e!1798283 () Bool)

(declare-fun tp!909088 () Bool)

(assert (=> b!2839103 (= e!1798283 (and tp_is_empty!14611 tp!909088))))

(assert (=> b!2838804 (= tp!908954 e!1798283)))

(assert (= (and b!2838804 ((_ is Cons!33581) (originalCharacters!5780 (h!39003 tokens!612)))) b!2839103))

(declare-fun b!2839106 () Bool)

(declare-fun e!1798284 () Bool)

(declare-fun tp!909092 () Bool)

(assert (=> b!2839106 (= e!1798284 tp!909092)))

(assert (=> b!2838801 (= tp!908958 e!1798284)))

(declare-fun b!2839107 () Bool)

(declare-fun tp!909090 () Bool)

(declare-fun tp!909093 () Bool)

(assert (=> b!2839107 (= e!1798284 (and tp!909090 tp!909093))))

(declare-fun b!2839105 () Bool)

(declare-fun tp!909091 () Bool)

(declare-fun tp!909089 () Bool)

(assert (=> b!2839105 (= e!1798284 (and tp!909091 tp!909089))))

(declare-fun b!2839104 () Bool)

(assert (=> b!2839104 (= e!1798284 tp_is_empty!14611)))

(assert (= (and b!2838801 ((_ is ElementMatch!8439) (regex!5048 (rule!7476 (h!39003 tokensBis!14))))) b!2839104))

(assert (= (and b!2838801 ((_ is Concat!13717) (regex!5048 (rule!7476 (h!39003 tokensBis!14))))) b!2839105))

(assert (= (and b!2838801 ((_ is Star!8439) (regex!5048 (rule!7476 (h!39003 tokensBis!14))))) b!2839106))

(assert (= (and b!2838801 ((_ is Union!8439) (regex!5048 (rule!7476 (h!39003 tokensBis!14))))) b!2839107))

(declare-fun b!2839108 () Bool)

(declare-fun e!1798285 () Bool)

(declare-fun tp!909094 () Bool)

(assert (=> b!2839108 (= e!1798285 (and tp_is_empty!14611 tp!909094))))

(assert (=> b!2838812 (= tp!908962 e!1798285)))

(assert (= (and b!2838812 ((_ is Cons!33581) (originalCharacters!5780 (h!39003 tokensBis!14)))) b!2839108))

(declare-fun b_lambda!85339 () Bool)

(assert (= b_lambda!85329 (or (and b!2839080 b_free!82163 (= (toChars!6949 (transformation!5048 (rule!7476 (h!39003 (t!232240 tokensBis!14))))) (toChars!6949 (transformation!5048 (rule!7476 (h!39003 tokens!612)))))) (and b!2838813 b_free!82139 (= (toChars!6949 (transformation!5048 (h!39002 rules!4246))) (toChars!6949 (transformation!5048 (rule!7476 (h!39003 tokens!612)))))) (and b!2839062 b_free!82155 (= (toChars!6949 (transformation!5048 (h!39002 (t!232239 rules!4246)))) (toChars!6949 (transformation!5048 (rule!7476 (h!39003 tokens!612)))))) (and b!2838803 b_free!82135 (= (toChars!6949 (transformation!5048 (rule!7476 (h!39003 tokensBis!14)))) (toChars!6949 (transformation!5048 (rule!7476 (h!39003 tokens!612)))))) (and b!2838798 b_free!82131) (and b!2839076 b_free!82159 (= (toChars!6949 (transformation!5048 (rule!7476 (h!39003 (t!232240 tokens!612))))) (toChars!6949 (transformation!5048 (rule!7476 (h!39003 tokens!612)))))) b_lambda!85339)))

(declare-fun b_lambda!85341 () Bool)

(assert (= b_lambda!85331 (or (and b!2839076 b_free!82159 (= (toChars!6949 (transformation!5048 (rule!7476 (h!39003 (t!232240 tokens!612))))) (toChars!6949 (transformation!5048 (rule!7476 (h!39003 tokensBis!14)))))) (and b!2838813 b_free!82139 (= (toChars!6949 (transformation!5048 (h!39002 rules!4246))) (toChars!6949 (transformation!5048 (rule!7476 (h!39003 tokensBis!14)))))) (and b!2839080 b_free!82163 (= (toChars!6949 (transformation!5048 (rule!7476 (h!39003 (t!232240 tokensBis!14))))) (toChars!6949 (transformation!5048 (rule!7476 (h!39003 tokensBis!14)))))) (and b!2839062 b_free!82155 (= (toChars!6949 (transformation!5048 (h!39002 (t!232239 rules!4246)))) (toChars!6949 (transformation!5048 (rule!7476 (h!39003 tokensBis!14)))))) (and b!2838798 b_free!82131 (= (toChars!6949 (transformation!5048 (rule!7476 (h!39003 tokens!612)))) (toChars!6949 (transformation!5048 (rule!7476 (h!39003 tokensBis!14)))))) (and b!2838803 b_free!82135) b_lambda!85341)))

(check-sat (not b!2839077) (not b!2839075) (not b!2838988) (not b_next!82837) (not b!2838895) (not b_next!82861) (not b!2839046) (not b!2839061) (not b_lambda!85339) (not b!2838922) (not d!823492) (not d!823464) (not b_next!82859) (not b!2838846) (not b!2838931) (not b!2839107) (not b!2838894) (not b!2839098) (not b!2839094) (not b_next!82865) (not b!2839038) (not b!2839047) (not b_next!82867) b_and!208071 (not b!2838932) (not b_next!82839) (not d!823456) (not b!2838845) (not b_lambda!85341) (not b!2839096) (not b!2838904) (not b!2839048) (not b_next!82863) (not b!2839034) (not b!2839106) (not b!2839078) (not b!2839026) (not b!2839060) (not b!2838934) (not d!823440) b_and!208121 (not b!2839044) (not d!823452) b_and!208119 (not b!2839092) (not b_next!82833) (not b!2838923) (not tb!154673) b_and!208129 (not b!2839093) (not b!2839103) (not d!823488) (not b!2838979) (not d!823458) (not b!2839049) (not b!2839025) (not b_next!82857) tp_is_empty!14611 (not b!2838903) (not b!2839079) (not b!2839037) b_and!208127 (not b!2839027) (not b!2839108) (not b!2838864) (not b_next!82841) (not b!2838902) (not b!2838928) (not d!823498) b_and!208099 b_and!208079 b_and!208123 b_and!208125 (not b!2839105) (not b!2839074) (not b!2838901) (not tb!154667) b_and!208097 (not b_next!82843) (not b_next!82835) b_and!208075 b_and!208095 (not b!2839097) (not b!2839073))
(check-sat (not b_next!82859) (not b_next!82865) (not b_next!82863) b_and!208121 b_and!208119 (not b_next!82837) (not b_next!82833) b_and!208129 (not b_next!82857) b_and!208127 (not b_next!82841) b_and!208099 (not b_next!82861) b_and!208125 b_and!208095 (not b_next!82867) b_and!208071 (not b_next!82839) b_and!208079 b_and!208123 b_and!208097 (not b_next!82843) (not b_next!82835) b_and!208075)
