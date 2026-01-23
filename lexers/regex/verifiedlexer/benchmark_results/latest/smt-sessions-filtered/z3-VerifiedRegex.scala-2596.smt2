; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!138910 () Bool)

(assert start!138910)

(declare-fun b!1479883 () Bool)

(declare-fun b_free!38127 () Bool)

(declare-fun b_next!38831 () Bool)

(assert (=> b!1479883 (= b_free!38127 (not b_next!38831))))

(declare-fun tp!419522 () Bool)

(declare-fun b_and!102557 () Bool)

(assert (=> b!1479883 (= tp!419522 b_and!102557)))

(declare-fun b_free!38129 () Bool)

(declare-fun b_next!38833 () Bool)

(assert (=> b!1479883 (= b_free!38129 (not b_next!38833))))

(declare-fun tp!419525 () Bool)

(declare-fun b_and!102559 () Bool)

(assert (=> b!1479883 (= tp!419525 b_and!102559)))

(declare-fun b!1479897 () Bool)

(declare-fun b_free!38131 () Bool)

(declare-fun b_next!38835 () Bool)

(assert (=> b!1479897 (= b_free!38131 (not b_next!38835))))

(declare-fun tp!419530 () Bool)

(declare-fun b_and!102561 () Bool)

(assert (=> b!1479897 (= tp!419530 b_and!102561)))

(declare-fun b_free!38133 () Bool)

(declare-fun b_next!38837 () Bool)

(assert (=> b!1479897 (= b_free!38133 (not b_next!38837))))

(declare-fun tp!419520 () Bool)

(declare-fun b_and!102563 () Bool)

(assert (=> b!1479897 (= tp!419520 b_and!102563)))

(declare-fun b!1479888 () Bool)

(declare-fun b_free!38135 () Bool)

(declare-fun b_next!38839 () Bool)

(assert (=> b!1479888 (= b_free!38135 (not b_next!38839))))

(declare-fun tp!419527 () Bool)

(declare-fun b_and!102565 () Bool)

(assert (=> b!1479888 (= tp!419527 b_and!102565)))

(declare-fun b_free!38137 () Bool)

(declare-fun b_next!38841 () Bool)

(assert (=> b!1479888 (= b_free!38137 (not b_next!38841))))

(declare-fun tp!419524 () Bool)

(declare-fun b_and!102567 () Bool)

(assert (=> b!1479888 (= tp!419524 b_and!102567)))

(declare-fun b!1479878 () Bool)

(declare-fun res!668705 () Bool)

(declare-fun e!946007 () Bool)

(assert (=> b!1479878 (=> (not res!668705) (not e!946007))))

(declare-datatypes ((List!15716 0))(
  ( (Nil!15650) (Cons!15650 (h!21051 (_ BitVec 16)) (t!137141 List!15716)) )
))
(declare-datatypes ((TokenValue!2881 0))(
  ( (FloatLiteralValue!5762 (text!20612 List!15716)) (TokenValueExt!2880 (__x!9552 Int)) (Broken!14405 (value!89165 List!15716)) (Object!2946) (End!2881) (Def!2881) (Underscore!2881) (Match!2881) (Else!2881) (Error!2881) (Case!2881) (If!2881) (Extends!2881) (Abstract!2881) (Class!2881) (Val!2881) (DelimiterValue!5762 (del!2941 List!15716)) (KeywordValue!2887 (value!89166 List!15716)) (CommentValue!5762 (value!89167 List!15716)) (WhitespaceValue!5762 (value!89168 List!15716)) (IndentationValue!2881 (value!89169 List!15716)) (String!18660) (Int32!2881) (Broken!14406 (value!89170 List!15716)) (Boolean!2882) (Unit!25459) (OperatorValue!2884 (op!2941 List!15716)) (IdentifierValue!5762 (value!89171 List!15716)) (IdentifierValue!5763 (value!89172 List!15716)) (WhitespaceValue!5763 (value!89173 List!15716)) (True!5762) (False!5762) (Broken!14407 (value!89174 List!15716)) (Broken!14408 (value!89175 List!15716)) (True!5763) (RightBrace!2881) (RightBracket!2881) (Colon!2881) (Null!2881) (Comma!2881) (LeftBracket!2881) (False!5763) (LeftBrace!2881) (ImaginaryLiteralValue!2881 (text!20613 List!15716)) (StringLiteralValue!8643 (value!89176 List!15716)) (EOFValue!2881 (value!89177 List!15716)) (IdentValue!2881 (value!89178 List!15716)) (DelimiterValue!5763 (value!89179 List!15716)) (DedentValue!2881 (value!89180 List!15716)) (NewLineValue!2881 (value!89181 List!15716)) (IntegerValue!8643 (value!89182 (_ BitVec 32)) (text!20614 List!15716)) (IntegerValue!8644 (value!89183 Int) (text!20615 List!15716)) (Times!2881) (Or!2881) (Equal!2881) (Minus!2881) (Broken!14409 (value!89184 List!15716)) (And!2881) (Div!2881) (LessEqual!2881) (Mod!2881) (Concat!6986) (Not!2881) (Plus!2881) (SpaceValue!2881 (value!89185 List!15716)) (IntegerValue!8645 (value!89186 Int) (text!20616 List!15716)) (StringLiteralValue!8644 (text!20617 List!15716)) (FloatLiteralValue!5763 (text!20618 List!15716)) (BytesLiteralValue!2881 (value!89187 List!15716)) (CommentValue!5763 (value!89188 List!15716)) (StringLiteralValue!8645 (value!89189 List!15716)) (ErrorTokenValue!2881 (msg!2942 List!15716)) )
))
(declare-datatypes ((C!8388 0))(
  ( (C!8389 (val!4764 Int)) )
))
(declare-datatypes ((Regex!4105 0))(
  ( (ElementMatch!4105 (c!242838 C!8388)) (Concat!6987 (regOne!8722 Regex!4105) (regTwo!8722 Regex!4105)) (EmptyExpr!4105) (Star!4105 (reg!4434 Regex!4105)) (EmptyLang!4105) (Union!4105 (regOne!8723 Regex!4105) (regTwo!8723 Regex!4105)) )
))
(declare-datatypes ((String!18661 0))(
  ( (String!18662 (value!89190 String)) )
))
(declare-datatypes ((List!15717 0))(
  ( (Nil!15651) (Cons!15651 (h!21052 C!8388) (t!137142 List!15717)) )
))
(declare-datatypes ((IArray!10667 0))(
  ( (IArray!10668 (innerList!5391 List!15717)) )
))
(declare-datatypes ((Conc!5331 0))(
  ( (Node!5331 (left!13197 Conc!5331) (right!13527 Conc!5331) (csize!10892 Int) (cheight!5542 Int)) (Leaf!7928 (xs!8086 IArray!10667) (csize!10893 Int)) (Empty!5331) )
))
(declare-datatypes ((BalanceConc!10602 0))(
  ( (BalanceConc!10603 (c!242839 Conc!5331)) )
))
(declare-datatypes ((TokenValueInjection!5422 0))(
  ( (TokenValueInjection!5423 (toValue!4126 Int) (toChars!3985 Int)) )
))
(declare-datatypes ((Rule!5382 0))(
  ( (Rule!5383 (regex!2791 Regex!4105) (tag!3055 String!18661) (isSeparator!2791 Bool) (transformation!2791 TokenValueInjection!5422)) )
))
(declare-datatypes ((Token!5244 0))(
  ( (Token!5245 (value!89191 TokenValue!2881) (rule!4568 Rule!5382) (size!12670 Int) (originalCharacters!3653 List!15717)) )
))
(declare-datatypes ((List!15718 0))(
  ( (Nil!15652) (Cons!15652 (h!21053 Token!5244) (t!137143 List!15718)) )
))
(declare-fun l1!3136 () List!15718)

(declare-fun isEmpty!9786 (List!15718) Bool)

(assert (=> b!1479878 (= res!668705 (not (isEmpty!9786 l1!3136)))))

(declare-datatypes ((List!15719 0))(
  ( (Nil!15653) (Cons!15653 (h!21054 Rule!5382) (t!137144 List!15719)) )
))
(declare-fun rules!4290 () List!15719)

(declare-fun tp!419519 () Bool)

(declare-fun e!946012 () Bool)

(declare-fun b!1479879 () Bool)

(declare-fun e!946005 () Bool)

(declare-fun inv!20864 (String!18661) Bool)

(declare-fun inv!20867 (TokenValueInjection!5422) Bool)

(assert (=> b!1479879 (= e!946012 (and tp!419519 (inv!20864 (tag!3055 (h!21054 rules!4290))) (inv!20867 (transformation!2791 (h!21054 rules!4290))) e!946005))))

(declare-fun b!1479881 () Bool)

(declare-fun res!668704 () Bool)

(assert (=> b!1479881 (=> (not res!668704) (not e!946007))))

(declare-datatypes ((LexerInterface!2447 0))(
  ( (LexerInterfaceExt!2444 (__x!9553 Int)) (Lexer!2445) )
))
(declare-fun thiss!27374 () LexerInterface!2447)

(declare-fun tokensListTwoByTwoPredicateSeparableList!307 (LexerInterface!2447 List!15718 List!15719) Bool)

(assert (=> b!1479881 (= res!668704 (tokensListTwoByTwoPredicateSeparableList!307 thiss!27374 l1!3136 rules!4290))))

(declare-fun b!1479882 () Bool)

(declare-fun res!668706 () Bool)

(assert (=> b!1479882 (=> (not res!668706) (not e!946007))))

(declare-fun rulesInvariant!2236 (LexerInterface!2447 List!15719) Bool)

(assert (=> b!1479882 (= res!668706 (rulesInvariant!2236 thiss!27374 rules!4290))))

(assert (=> b!1479883 (= e!946005 (and tp!419522 tp!419525))))

(declare-fun b!1479884 () Bool)

(declare-fun res!668715 () Bool)

(declare-fun e!946009 () Bool)

(assert (=> b!1479884 (=> res!668715 e!946009)))

(assert (=> b!1479884 (= res!668715 (not (tokensListTwoByTwoPredicateSeparableList!307 thiss!27374 (t!137143 l1!3136) rules!4290)))))

(declare-fun b!1479885 () Bool)

(declare-fun res!668714 () Bool)

(assert (=> b!1479885 (=> (not res!668714) (not e!946007))))

(declare-fun isEmpty!9787 (List!15719) Bool)

(assert (=> b!1479885 (= res!668714 (not (isEmpty!9787 rules!4290)))))

(declare-fun tp!419529 () Bool)

(declare-fun e!946010 () Bool)

(declare-fun b!1479886 () Bool)

(declare-fun e!946003 () Bool)

(assert (=> b!1479886 (= e!946010 (and tp!419529 (inv!20864 (tag!3055 (rule!4568 (h!21053 l1!3136)))) (inv!20867 (transformation!2791 (rule!4568 (h!21053 l1!3136)))) e!946003))))

(declare-fun b!1479887 () Bool)

(declare-fun e!945998 () Bool)

(assert (=> b!1479887 (= e!946009 e!945998)))

(declare-fun res!668713 () Bool)

(assert (=> b!1479887 (=> res!668713 e!945998)))

(declare-fun lt!514104 () Token!5244)

(declare-fun lt!514106 () Token!5244)

(declare-fun separableTokensPredicate!586 (LexerInterface!2447 Token!5244 Token!5244 List!15719) Bool)

(assert (=> b!1479887 (= res!668713 (not (separableTokensPredicate!586 thiss!27374 lt!514106 lt!514104 rules!4290)))))

(declare-fun rulesProduceIndividualToken!1304 (LexerInterface!2447 List!15719 Token!5244) Bool)

(assert (=> b!1479887 (rulesProduceIndividualToken!1304 thiss!27374 rules!4290 lt!514106)))

(declare-datatypes ((Unit!25460 0))(
  ( (Unit!25461) )
))
(declare-fun lt!514107 () Unit!25460)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!485 (LexerInterface!2447 List!15719 List!15718 Token!5244) Unit!25460)

(assert (=> b!1479887 (= lt!514107 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!485 thiss!27374 rules!4290 (t!137143 l1!3136) lt!514106))))

(declare-fun last!349 (List!15718) Token!5244)

(assert (=> b!1479887 (= lt!514106 (last!349 (t!137143 l1!3136)))))

(assert (=> b!1479888 (= e!946003 (and tp!419527 tp!419524))))

(declare-fun b!1479889 () Bool)

(declare-fun res!668709 () Bool)

(assert (=> b!1479889 (=> res!668709 e!946009)))

(declare-fun rulesProduceEachTokenIndividuallyList!814 (LexerInterface!2447 List!15719 List!15718) Bool)

(assert (=> b!1479889 (= res!668709 (not (rulesProduceEachTokenIndividuallyList!814 thiss!27374 rules!4290 (t!137143 l1!3136))))))

(declare-fun b!1479890 () Bool)

(declare-fun res!668707 () Bool)

(assert (=> b!1479890 (=> (not res!668707) (not e!946007))))

(assert (=> b!1479890 (= res!668707 (rulesProduceEachTokenIndividuallyList!814 thiss!27374 rules!4290 l1!3136))))

(declare-fun tp!419523 () Bool)

(declare-fun b!1479891 () Bool)

(declare-fun e!946008 () Bool)

(declare-fun l2!3105 () List!15718)

(declare-fun e!946013 () Bool)

(assert (=> b!1479891 (= e!946013 (and tp!419523 (inv!20864 (tag!3055 (rule!4568 (h!21053 l2!3105)))) (inv!20867 (transformation!2791 (rule!4568 (h!21053 l2!3105)))) e!946008))))

(declare-fun b!1479892 () Bool)

(assert (=> b!1479892 (= e!946007 (not e!946009))))

(declare-fun res!668701 () Bool)

(assert (=> b!1479892 (=> res!668701 e!946009)))

(declare-fun lt!514109 () Token!5244)

(assert (=> b!1479892 (= res!668701 (not (separableTokensPredicate!586 thiss!27374 lt!514109 lt!514104 rules!4290)))))

(assert (=> b!1479892 (rulesProduceIndividualToken!1304 thiss!27374 rules!4290 lt!514104)))

(declare-fun lt!514105 () Unit!25460)

(assert (=> b!1479892 (= lt!514105 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!485 thiss!27374 rules!4290 l2!3105 lt!514104))))

(declare-fun head!3079 (List!15718) Token!5244)

(assert (=> b!1479892 (= lt!514104 (head!3079 l2!3105))))

(assert (=> b!1479892 (rulesProduceIndividualToken!1304 thiss!27374 rules!4290 lt!514109)))

(declare-fun lt!514108 () Unit!25460)

(assert (=> b!1479892 (= lt!514108 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!485 thiss!27374 rules!4290 l1!3136 lt!514109))))

(assert (=> b!1479892 (= lt!514109 (last!349 l1!3136))))

(declare-fun b!1479893 () Bool)

(declare-fun e!946002 () Bool)

(declare-fun tp!419526 () Bool)

(assert (=> b!1479893 (= e!946002 (and e!946012 tp!419526))))

(declare-fun e!945999 () Bool)

(declare-fun tp!419517 () Bool)

(declare-fun e!946001 () Bool)

(declare-fun b!1479894 () Bool)

(declare-fun inv!20868 (Token!5244) Bool)

(assert (=> b!1479894 (= e!946001 (and (inv!20868 (h!21053 l2!3105)) e!945999 tp!419517))))

(declare-fun b!1479895 () Bool)

(declare-fun e!946000 () Bool)

(declare-fun e!945996 () Bool)

(declare-fun tp!419518 () Bool)

(assert (=> b!1479895 (= e!946000 (and (inv!20868 (h!21053 l1!3136)) e!945996 tp!419518))))

(declare-fun b!1479896 () Bool)

(declare-fun res!668703 () Bool)

(assert (=> b!1479896 (=> (not res!668703) (not e!946007))))

(assert (=> b!1479896 (= res!668703 (not (isEmpty!9786 l2!3105)))))

(assert (=> b!1479897 (= e!946008 (and tp!419530 tp!419520))))

(declare-fun res!668712 () Bool)

(assert (=> start!138910 (=> (not res!668712) (not e!946007))))

(get-info :version)

(assert (=> start!138910 (= res!668712 ((_ is Lexer!2445) thiss!27374))))

(assert (=> start!138910 e!946007))

(assert (=> start!138910 true))

(assert (=> start!138910 e!946002))

(assert (=> start!138910 e!946000))

(assert (=> start!138910 e!946001))

(declare-fun b!1479880 () Bool)

(declare-fun res!668711 () Bool)

(assert (=> b!1479880 (=> (not res!668711) (not e!946007))))

(assert (=> b!1479880 (= res!668711 (tokensListTwoByTwoPredicateSeparableList!307 thiss!27374 l2!3105 rules!4290))))

(declare-fun b!1479898 () Bool)

(declare-fun res!668702 () Bool)

(assert (=> b!1479898 (=> (not res!668702) (not e!946007))))

(assert (=> b!1479898 (= res!668702 (rulesProduceEachTokenIndividuallyList!814 thiss!27374 rules!4290 l2!3105))))

(declare-fun tp!419528 () Bool)

(declare-fun b!1479899 () Bool)

(declare-fun inv!21 (TokenValue!2881) Bool)

(assert (=> b!1479899 (= e!945999 (and (inv!21 (value!89191 (h!21053 l2!3105))) e!946013 tp!419528))))

(declare-fun b!1479900 () Bool)

(declare-fun res!668710 () Bool)

(assert (=> b!1479900 (=> res!668710 e!946009)))

(assert (=> b!1479900 (= res!668710 (not ((_ is Cons!15652) l1!3136)))))

(declare-fun b!1479901 () Bool)

(declare-fun size!12671 (List!15718) Int)

(assert (=> b!1479901 (= e!945998 (< (size!12671 (t!137143 l1!3136)) (size!12671 l1!3136)))))

(declare-fun b!1479902 () Bool)

(declare-fun res!668708 () Bool)

(assert (=> b!1479902 (=> res!668708 e!946009)))

(assert (=> b!1479902 (= res!668708 (isEmpty!9786 (t!137143 l1!3136)))))

(declare-fun tp!419521 () Bool)

(declare-fun b!1479903 () Bool)

(assert (=> b!1479903 (= e!945996 (and (inv!21 (value!89191 (h!21053 l1!3136))) e!946010 tp!419521))))

(assert (= (and start!138910 res!668712) b!1479885))

(assert (= (and b!1479885 res!668714) b!1479882))

(assert (= (and b!1479882 res!668706) b!1479890))

(assert (= (and b!1479890 res!668707) b!1479898))

(assert (= (and b!1479898 res!668702) b!1479881))

(assert (= (and b!1479881 res!668704) b!1479880))

(assert (= (and b!1479880 res!668711) b!1479878))

(assert (= (and b!1479878 res!668705) b!1479896))

(assert (= (and b!1479896 res!668703) b!1479892))

(assert (= (and b!1479892 (not res!668701)) b!1479900))

(assert (= (and b!1479900 (not res!668710)) b!1479902))

(assert (= (and b!1479902 (not res!668708)) b!1479889))

(assert (= (and b!1479889 (not res!668709)) b!1479884))

(assert (= (and b!1479884 (not res!668715)) b!1479887))

(assert (= (and b!1479887 (not res!668713)) b!1479901))

(assert (= b!1479879 b!1479883))

(assert (= b!1479893 b!1479879))

(assert (= (and start!138910 ((_ is Cons!15653) rules!4290)) b!1479893))

(assert (= b!1479886 b!1479888))

(assert (= b!1479903 b!1479886))

(assert (= b!1479895 b!1479903))

(assert (= (and start!138910 ((_ is Cons!15652) l1!3136)) b!1479895))

(assert (= b!1479891 b!1479897))

(assert (= b!1479899 b!1479891))

(assert (= b!1479894 b!1479899))

(assert (= (and start!138910 ((_ is Cons!15652) l2!3105)) b!1479894))

(declare-fun m!1725433 () Bool)

(assert (=> b!1479892 m!1725433))

(declare-fun m!1725435 () Bool)

(assert (=> b!1479892 m!1725435))

(declare-fun m!1725437 () Bool)

(assert (=> b!1479892 m!1725437))

(declare-fun m!1725439 () Bool)

(assert (=> b!1479892 m!1725439))

(declare-fun m!1725441 () Bool)

(assert (=> b!1479892 m!1725441))

(declare-fun m!1725443 () Bool)

(assert (=> b!1479892 m!1725443))

(declare-fun m!1725445 () Bool)

(assert (=> b!1479892 m!1725445))

(declare-fun m!1725447 () Bool)

(assert (=> b!1479891 m!1725447))

(declare-fun m!1725449 () Bool)

(assert (=> b!1479891 m!1725449))

(declare-fun m!1725451 () Bool)

(assert (=> b!1479890 m!1725451))

(declare-fun m!1725453 () Bool)

(assert (=> b!1479887 m!1725453))

(declare-fun m!1725455 () Bool)

(assert (=> b!1479887 m!1725455))

(declare-fun m!1725457 () Bool)

(assert (=> b!1479887 m!1725457))

(declare-fun m!1725459 () Bool)

(assert (=> b!1479887 m!1725459))

(declare-fun m!1725461 () Bool)

(assert (=> b!1479899 m!1725461))

(declare-fun m!1725463 () Bool)

(assert (=> b!1479885 m!1725463))

(declare-fun m!1725465 () Bool)

(assert (=> b!1479880 m!1725465))

(declare-fun m!1725467 () Bool)

(assert (=> b!1479898 m!1725467))

(declare-fun m!1725469 () Bool)

(assert (=> b!1479901 m!1725469))

(declare-fun m!1725471 () Bool)

(assert (=> b!1479901 m!1725471))

(declare-fun m!1725473 () Bool)

(assert (=> b!1479881 m!1725473))

(declare-fun m!1725475 () Bool)

(assert (=> b!1479896 m!1725475))

(declare-fun m!1725477 () Bool)

(assert (=> b!1479895 m!1725477))

(declare-fun m!1725479 () Bool)

(assert (=> b!1479894 m!1725479))

(declare-fun m!1725481 () Bool)

(assert (=> b!1479902 m!1725481))

(declare-fun m!1725483 () Bool)

(assert (=> b!1479879 m!1725483))

(declare-fun m!1725485 () Bool)

(assert (=> b!1479879 m!1725485))

(declare-fun m!1725487 () Bool)

(assert (=> b!1479882 m!1725487))

(declare-fun m!1725489 () Bool)

(assert (=> b!1479878 m!1725489))

(declare-fun m!1725491 () Bool)

(assert (=> b!1479886 m!1725491))

(declare-fun m!1725493 () Bool)

(assert (=> b!1479886 m!1725493))

(declare-fun m!1725495 () Bool)

(assert (=> b!1479889 m!1725495))

(declare-fun m!1725497 () Bool)

(assert (=> b!1479884 m!1725497))

(declare-fun m!1725499 () Bool)

(assert (=> b!1479903 m!1725499))

(check-sat (not b_next!38837) b_and!102567 (not b!1479887) (not b_next!38841) (not b!1479892) b_and!102565 (not b_next!38833) (not b_next!38835) b_and!102563 (not b!1479899) (not b!1479903) (not b!1479896) (not b!1479882) (not b!1479881) (not b!1479878) b_and!102561 (not b!1479886) b_and!102559 (not b!1479879) (not b!1479902) (not b!1479884) (not b!1479891) b_and!102557 (not b_next!38831) (not b_next!38839) (not b!1479894) (not b!1479895) (not b!1479880) (not b!1479893) (not b!1479889) (not b!1479885) (not b!1479901) (not b!1479890) (not b!1479898))
(check-sat b_and!102561 (not b_next!38837) b_and!102567 b_and!102559 (not b_next!38841) b_and!102565 (not b_next!38839) (not b_next!38833) (not b_next!38835) b_and!102563 b_and!102557 (not b_next!38831))
(get-model)

(declare-fun d!433887 () Bool)

(declare-fun lt!514112 () Int)

(assert (=> d!433887 (>= lt!514112 0)))

(declare-fun e!946020 () Int)

(assert (=> d!433887 (= lt!514112 e!946020)))

(declare-fun c!242842 () Bool)

(assert (=> d!433887 (= c!242842 ((_ is Nil!15652) (t!137143 l1!3136)))))

(assert (=> d!433887 (= (size!12671 (t!137143 l1!3136)) lt!514112)))

(declare-fun b!1479911 () Bool)

(assert (=> b!1479911 (= e!946020 0)))

(declare-fun b!1479912 () Bool)

(assert (=> b!1479912 (= e!946020 (+ 1 (size!12671 (t!137143 (t!137143 l1!3136)))))))

(assert (= (and d!433887 c!242842) b!1479911))

(assert (= (and d!433887 (not c!242842)) b!1479912))

(declare-fun m!1725505 () Bool)

(assert (=> b!1479912 m!1725505))

(assert (=> b!1479901 d!433887))

(declare-fun d!433889 () Bool)

(declare-fun lt!514113 () Int)

(assert (=> d!433889 (>= lt!514113 0)))

(declare-fun e!946021 () Int)

(assert (=> d!433889 (= lt!514113 e!946021)))

(declare-fun c!242843 () Bool)

(assert (=> d!433889 (= c!242843 ((_ is Nil!15652) l1!3136))))

(assert (=> d!433889 (= (size!12671 l1!3136) lt!514113)))

(declare-fun b!1479913 () Bool)

(assert (=> b!1479913 (= e!946021 0)))

(declare-fun b!1479914 () Bool)

(assert (=> b!1479914 (= e!946021 (+ 1 (size!12671 (t!137143 l1!3136))))))

(assert (= (and d!433889 c!242843) b!1479913))

(assert (= (and d!433889 (not c!242843)) b!1479914))

(assert (=> b!1479914 m!1725469))

(assert (=> b!1479901 d!433889))

(declare-fun d!433891 () Bool)

(declare-fun res!668740 () Bool)

(declare-fun e!946043 () Bool)

(assert (=> d!433891 (=> res!668740 e!946043)))

(assert (=> d!433891 (= res!668740 (or (not ((_ is Cons!15652) l2!3105)) (not ((_ is Cons!15652) (t!137143 l2!3105)))))))

(assert (=> d!433891 (= (tokensListTwoByTwoPredicateSeparableList!307 thiss!27374 l2!3105 rules!4290) e!946043)))

(declare-fun b!1479939 () Bool)

(declare-fun e!946042 () Bool)

(assert (=> b!1479939 (= e!946043 e!946042)))

(declare-fun res!668741 () Bool)

(assert (=> b!1479939 (=> (not res!668741) (not e!946042))))

(assert (=> b!1479939 (= res!668741 (separableTokensPredicate!586 thiss!27374 (h!21053 l2!3105) (h!21053 (t!137143 l2!3105)) rules!4290))))

(declare-fun lt!514166 () Unit!25460)

(declare-fun Unit!25471 () Unit!25460)

(assert (=> b!1479939 (= lt!514166 Unit!25471)))

(declare-fun size!12674 (BalanceConc!10602) Int)

(declare-fun charsOf!1599 (Token!5244) BalanceConc!10602)

(assert (=> b!1479939 (> (size!12674 (charsOf!1599 (h!21053 (t!137143 l2!3105)))) 0)))

(declare-fun lt!514168 () Unit!25460)

(declare-fun Unit!25472 () Unit!25460)

(assert (=> b!1479939 (= lt!514168 Unit!25472)))

(assert (=> b!1479939 (rulesProduceIndividualToken!1304 thiss!27374 rules!4290 (h!21053 (t!137143 l2!3105)))))

(declare-fun lt!514163 () Unit!25460)

(declare-fun Unit!25473 () Unit!25460)

(assert (=> b!1479939 (= lt!514163 Unit!25473)))

(assert (=> b!1479939 (rulesProduceIndividualToken!1304 thiss!27374 rules!4290 (h!21053 l2!3105))))

(declare-fun lt!514164 () Unit!25460)

(declare-fun lt!514165 () Unit!25460)

(assert (=> b!1479939 (= lt!514164 lt!514165)))

(assert (=> b!1479939 (rulesProduceIndividualToken!1304 thiss!27374 rules!4290 (h!21053 (t!137143 l2!3105)))))

(assert (=> b!1479939 (= lt!514165 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!485 thiss!27374 rules!4290 l2!3105 (h!21053 (t!137143 l2!3105))))))

(declare-fun lt!514167 () Unit!25460)

(declare-fun lt!514162 () Unit!25460)

(assert (=> b!1479939 (= lt!514167 lt!514162)))

(assert (=> b!1479939 (rulesProduceIndividualToken!1304 thiss!27374 rules!4290 (h!21053 l2!3105))))

(assert (=> b!1479939 (= lt!514162 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!485 thiss!27374 rules!4290 l2!3105 (h!21053 l2!3105)))))

(declare-fun b!1479940 () Bool)

(assert (=> b!1479940 (= e!946042 (tokensListTwoByTwoPredicateSeparableList!307 thiss!27374 (Cons!15652 (h!21053 (t!137143 l2!3105)) (t!137143 (t!137143 l2!3105))) rules!4290))))

(assert (= (and d!433891 (not res!668740)) b!1479939))

(assert (= (and b!1479939 res!668741) b!1479940))

(declare-fun m!1725541 () Bool)

(assert (=> b!1479939 m!1725541))

(declare-fun m!1725543 () Bool)

(assert (=> b!1479939 m!1725543))

(declare-fun m!1725545 () Bool)

(assert (=> b!1479939 m!1725545))

(declare-fun m!1725547 () Bool)

(assert (=> b!1479939 m!1725547))

(declare-fun m!1725549 () Bool)

(assert (=> b!1479939 m!1725549))

(assert (=> b!1479939 m!1725541))

(declare-fun m!1725551 () Bool)

(assert (=> b!1479939 m!1725551))

(declare-fun m!1725553 () Bool)

(assert (=> b!1479939 m!1725553))

(declare-fun m!1725555 () Bool)

(assert (=> b!1479940 m!1725555))

(assert (=> b!1479880 d!433891))

(declare-fun d!433905 () Bool)

(assert (=> d!433905 (= (inv!20864 (tag!3055 (h!21054 rules!4290))) (= (mod (str.len (value!89190 (tag!3055 (h!21054 rules!4290)))) 2) 0))))

(assert (=> b!1479879 d!433905))

(declare-fun d!433907 () Bool)

(declare-fun res!668744 () Bool)

(declare-fun e!946046 () Bool)

(assert (=> d!433907 (=> (not res!668744) (not e!946046))))

(declare-fun semiInverseModEq!1051 (Int Int) Bool)

(assert (=> d!433907 (= res!668744 (semiInverseModEq!1051 (toChars!3985 (transformation!2791 (h!21054 rules!4290))) (toValue!4126 (transformation!2791 (h!21054 rules!4290)))))))

(assert (=> d!433907 (= (inv!20867 (transformation!2791 (h!21054 rules!4290))) e!946046)))

(declare-fun b!1479943 () Bool)

(declare-fun equivClasses!1010 (Int Int) Bool)

(assert (=> b!1479943 (= e!946046 (equivClasses!1010 (toChars!3985 (transformation!2791 (h!21054 rules!4290))) (toValue!4126 (transformation!2791 (h!21054 rules!4290)))))))

(assert (= (and d!433907 res!668744) b!1479943))

(declare-fun m!1725557 () Bool)

(assert (=> d!433907 m!1725557))

(declare-fun m!1725559 () Bool)

(assert (=> b!1479943 m!1725559))

(assert (=> b!1479879 d!433907))

(declare-fun b!1479984 () Bool)

(declare-fun e!946078 () Bool)

(assert (=> b!1479984 (= e!946078 true)))

(declare-fun b!1479983 () Bool)

(declare-fun e!946077 () Bool)

(assert (=> b!1479983 (= e!946077 e!946078)))

(declare-fun b!1479982 () Bool)

(declare-fun e!946076 () Bool)

(assert (=> b!1479982 (= e!946076 e!946077)))

(declare-fun d!433909 () Bool)

(assert (=> d!433909 e!946076))

(assert (= b!1479983 b!1479984))

(assert (= b!1479982 b!1479983))

(assert (= (and d!433909 ((_ is Cons!15653) rules!4290)) b!1479982))

(declare-fun order!9437 () Int)

(declare-fun lambda!63751 () Int)

(declare-fun order!9439 () Int)

(declare-fun dynLambda!7119 (Int Int) Int)

(declare-fun dynLambda!7120 (Int Int) Int)

(assert (=> b!1479984 (< (dynLambda!7119 order!9437 (toValue!4126 (transformation!2791 (h!21054 rules!4290)))) (dynLambda!7120 order!9439 lambda!63751))))

(declare-fun order!9441 () Int)

(declare-fun dynLambda!7121 (Int Int) Int)

(assert (=> b!1479984 (< (dynLambda!7121 order!9441 (toChars!3985 (transformation!2791 (h!21054 rules!4290)))) (dynLambda!7120 order!9439 lambda!63751))))

(assert (=> d!433909 true))

(declare-fun lt!514178 () Bool)

(declare-fun forall!3808 (List!15718 Int) Bool)

(assert (=> d!433909 (= lt!514178 (forall!3808 l1!3136 lambda!63751))))

(declare-fun e!946068 () Bool)

(assert (=> d!433909 (= lt!514178 e!946068)))

(declare-fun res!668760 () Bool)

(assert (=> d!433909 (=> res!668760 e!946068)))

(assert (=> d!433909 (= res!668760 (not ((_ is Cons!15652) l1!3136)))))

(assert (=> d!433909 (not (isEmpty!9787 rules!4290))))

(assert (=> d!433909 (= (rulesProduceEachTokenIndividuallyList!814 thiss!27374 rules!4290 l1!3136) lt!514178)))

(declare-fun b!1479972 () Bool)

(declare-fun e!946069 () Bool)

(assert (=> b!1479972 (= e!946068 e!946069)))

(declare-fun res!668761 () Bool)

(assert (=> b!1479972 (=> (not res!668761) (not e!946069))))

(assert (=> b!1479972 (= res!668761 (rulesProduceIndividualToken!1304 thiss!27374 rules!4290 (h!21053 l1!3136)))))

(declare-fun b!1479973 () Bool)

(assert (=> b!1479973 (= e!946069 (rulesProduceEachTokenIndividuallyList!814 thiss!27374 rules!4290 (t!137143 l1!3136)))))

(assert (= (and d!433909 (not res!668760)) b!1479972))

(assert (= (and b!1479972 res!668761) b!1479973))

(declare-fun m!1725595 () Bool)

(assert (=> d!433909 m!1725595))

(assert (=> d!433909 m!1725463))

(declare-fun m!1725597 () Bool)

(assert (=> b!1479972 m!1725597))

(assert (=> b!1479973 m!1725495))

(assert (=> b!1479890 d!433909))

(declare-fun bs!345800 () Bool)

(declare-fun d!433917 () Bool)

(assert (= bs!345800 (and d!433917 d!433909)))

(declare-fun lambda!63752 () Int)

(assert (=> bs!345800 (= lambda!63752 lambda!63751)))

(declare-fun b!1479991 () Bool)

(declare-fun e!946083 () Bool)

(assert (=> b!1479991 (= e!946083 true)))

(declare-fun b!1479990 () Bool)

(declare-fun e!946082 () Bool)

(assert (=> b!1479990 (= e!946082 e!946083)))

(declare-fun b!1479989 () Bool)

(declare-fun e!946081 () Bool)

(assert (=> b!1479989 (= e!946081 e!946082)))

(assert (=> d!433917 e!946081))

(assert (= b!1479990 b!1479991))

(assert (= b!1479989 b!1479990))

(assert (= (and d!433917 ((_ is Cons!15653) rules!4290)) b!1479989))

(assert (=> b!1479991 (< (dynLambda!7119 order!9437 (toValue!4126 (transformation!2791 (h!21054 rules!4290)))) (dynLambda!7120 order!9439 lambda!63752))))

(assert (=> b!1479991 (< (dynLambda!7121 order!9441 (toChars!3985 (transformation!2791 (h!21054 rules!4290)))) (dynLambda!7120 order!9439 lambda!63752))))

(assert (=> d!433917 true))

(declare-fun lt!514179 () Bool)

(assert (=> d!433917 (= lt!514179 (forall!3808 (t!137143 l1!3136) lambda!63752))))

(declare-fun e!946079 () Bool)

(assert (=> d!433917 (= lt!514179 e!946079)))

(declare-fun res!668762 () Bool)

(assert (=> d!433917 (=> res!668762 e!946079)))

(assert (=> d!433917 (= res!668762 (not ((_ is Cons!15652) (t!137143 l1!3136))))))

(assert (=> d!433917 (not (isEmpty!9787 rules!4290))))

(assert (=> d!433917 (= (rulesProduceEachTokenIndividuallyList!814 thiss!27374 rules!4290 (t!137143 l1!3136)) lt!514179)))

(declare-fun b!1479987 () Bool)

(declare-fun e!946080 () Bool)

(assert (=> b!1479987 (= e!946079 e!946080)))

(declare-fun res!668763 () Bool)

(assert (=> b!1479987 (=> (not res!668763) (not e!946080))))

(assert (=> b!1479987 (= res!668763 (rulesProduceIndividualToken!1304 thiss!27374 rules!4290 (h!21053 (t!137143 l1!3136))))))

(declare-fun b!1479988 () Bool)

(assert (=> b!1479988 (= e!946080 (rulesProduceEachTokenIndividuallyList!814 thiss!27374 rules!4290 (t!137143 (t!137143 l1!3136))))))

(assert (= (and d!433917 (not res!668762)) b!1479987))

(assert (= (and b!1479987 res!668763) b!1479988))

(declare-fun m!1725599 () Bool)

(assert (=> d!433917 m!1725599))

(assert (=> d!433917 m!1725463))

(declare-fun m!1725601 () Bool)

(assert (=> b!1479987 m!1725601))

(declare-fun m!1725603 () Bool)

(assert (=> b!1479988 m!1725603))

(assert (=> b!1479889 d!433917))

(declare-fun b!1480002 () Bool)

(declare-fun res!668766 () Bool)

(declare-fun e!946092 () Bool)

(assert (=> b!1480002 (=> res!668766 e!946092)))

(assert (=> b!1480002 (= res!668766 (not ((_ is IntegerValue!8645) (value!89191 (h!21053 l2!3105)))))))

(declare-fun e!946091 () Bool)

(assert (=> b!1480002 (= e!946091 e!946092)))

(declare-fun b!1480003 () Bool)

(declare-fun inv!17 (TokenValue!2881) Bool)

(assert (=> b!1480003 (= e!946091 (inv!17 (value!89191 (h!21053 l2!3105))))))

(declare-fun b!1480004 () Bool)

(declare-fun e!946090 () Bool)

(declare-fun inv!16 (TokenValue!2881) Bool)

(assert (=> b!1480004 (= e!946090 (inv!16 (value!89191 (h!21053 l2!3105))))))

(declare-fun d!433919 () Bool)

(declare-fun c!242852 () Bool)

(assert (=> d!433919 (= c!242852 ((_ is IntegerValue!8643) (value!89191 (h!21053 l2!3105))))))

(assert (=> d!433919 (= (inv!21 (value!89191 (h!21053 l2!3105))) e!946090)))

(declare-fun b!1480005 () Bool)

(assert (=> b!1480005 (= e!946090 e!946091)))

(declare-fun c!242853 () Bool)

(assert (=> b!1480005 (= c!242853 ((_ is IntegerValue!8644) (value!89191 (h!21053 l2!3105))))))

(declare-fun b!1480006 () Bool)

(declare-fun inv!15 (TokenValue!2881) Bool)

(assert (=> b!1480006 (= e!946092 (inv!15 (value!89191 (h!21053 l2!3105))))))

(assert (= (and d!433919 c!242852) b!1480004))

(assert (= (and d!433919 (not c!242852)) b!1480005))

(assert (= (and b!1480005 c!242853) b!1480003))

(assert (= (and b!1480005 (not c!242853)) b!1480002))

(assert (= (and b!1480002 (not res!668766)) b!1480006))

(declare-fun m!1725605 () Bool)

(assert (=> b!1480003 m!1725605))

(declare-fun m!1725607 () Bool)

(assert (=> b!1480004 m!1725607))

(declare-fun m!1725609 () Bool)

(assert (=> b!1480006 m!1725609))

(assert (=> b!1479899 d!433919))

(declare-fun d!433921 () Bool)

(assert (=> d!433921 (= (isEmpty!9786 l1!3136) ((_ is Nil!15652) l1!3136))))

(assert (=> b!1479878 d!433921))

(declare-fun b!1480007 () Bool)

(declare-fun res!668767 () Bool)

(declare-fun e!946095 () Bool)

(assert (=> b!1480007 (=> res!668767 e!946095)))

(assert (=> b!1480007 (= res!668767 (not ((_ is IntegerValue!8645) (value!89191 (h!21053 l1!3136)))))))

(declare-fun e!946094 () Bool)

(assert (=> b!1480007 (= e!946094 e!946095)))

(declare-fun b!1480008 () Bool)

(assert (=> b!1480008 (= e!946094 (inv!17 (value!89191 (h!21053 l1!3136))))))

(declare-fun b!1480009 () Bool)

(declare-fun e!946093 () Bool)

(assert (=> b!1480009 (= e!946093 (inv!16 (value!89191 (h!21053 l1!3136))))))

(declare-fun d!433923 () Bool)

(declare-fun c!242854 () Bool)

(assert (=> d!433923 (= c!242854 ((_ is IntegerValue!8643) (value!89191 (h!21053 l1!3136))))))

(assert (=> d!433923 (= (inv!21 (value!89191 (h!21053 l1!3136))) e!946093)))

(declare-fun b!1480010 () Bool)

(assert (=> b!1480010 (= e!946093 e!946094)))

(declare-fun c!242855 () Bool)

(assert (=> b!1480010 (= c!242855 ((_ is IntegerValue!8644) (value!89191 (h!21053 l1!3136))))))

(declare-fun b!1480011 () Bool)

(assert (=> b!1480011 (= e!946095 (inv!15 (value!89191 (h!21053 l1!3136))))))

(assert (= (and d!433923 c!242854) b!1480009))

(assert (= (and d!433923 (not c!242854)) b!1480010))

(assert (= (and b!1480010 c!242855) b!1480008))

(assert (= (and b!1480010 (not c!242855)) b!1480007))

(assert (= (and b!1480007 (not res!668767)) b!1480011))

(declare-fun m!1725611 () Bool)

(assert (=> b!1480008 m!1725611))

(declare-fun m!1725613 () Bool)

(assert (=> b!1480009 m!1725613))

(declare-fun m!1725615 () Bool)

(assert (=> b!1480011 m!1725615))

(assert (=> b!1479903 d!433923))

(declare-fun d!433925 () Bool)

(declare-fun res!668770 () Bool)

(declare-fun e!946098 () Bool)

(assert (=> d!433925 (=> (not res!668770) (not e!946098))))

(declare-fun rulesValid!1022 (LexerInterface!2447 List!15719) Bool)

(assert (=> d!433925 (= res!668770 (rulesValid!1022 thiss!27374 rules!4290))))

(assert (=> d!433925 (= (rulesInvariant!2236 thiss!27374 rules!4290) e!946098)))

(declare-fun b!1480014 () Bool)

(declare-datatypes ((List!15721 0))(
  ( (Nil!15655) (Cons!15655 (h!21056 String!18661) (t!137202 List!15721)) )
))
(declare-fun noDuplicateTag!1022 (LexerInterface!2447 List!15719 List!15721) Bool)

(assert (=> b!1480014 (= e!946098 (noDuplicateTag!1022 thiss!27374 rules!4290 Nil!15655))))

(assert (= (and d!433925 res!668770) b!1480014))

(declare-fun m!1725617 () Bool)

(assert (=> d!433925 m!1725617))

(declare-fun m!1725619 () Bool)

(assert (=> b!1480014 m!1725619))

(assert (=> b!1479882 d!433925))

(declare-fun d!433927 () Bool)

(declare-fun res!668771 () Bool)

(declare-fun e!946100 () Bool)

(assert (=> d!433927 (=> res!668771 e!946100)))

(assert (=> d!433927 (= res!668771 (or (not ((_ is Cons!15652) l1!3136)) (not ((_ is Cons!15652) (t!137143 l1!3136)))))))

(assert (=> d!433927 (= (tokensListTwoByTwoPredicateSeparableList!307 thiss!27374 l1!3136 rules!4290) e!946100)))

(declare-fun b!1480015 () Bool)

(declare-fun e!946099 () Bool)

(assert (=> b!1480015 (= e!946100 e!946099)))

(declare-fun res!668772 () Bool)

(assert (=> b!1480015 (=> (not res!668772) (not e!946099))))

(assert (=> b!1480015 (= res!668772 (separableTokensPredicate!586 thiss!27374 (h!21053 l1!3136) (h!21053 (t!137143 l1!3136)) rules!4290))))

(declare-fun lt!514184 () Unit!25460)

(declare-fun Unit!25474 () Unit!25460)

(assert (=> b!1480015 (= lt!514184 Unit!25474)))

(assert (=> b!1480015 (> (size!12674 (charsOf!1599 (h!21053 (t!137143 l1!3136)))) 0)))

(declare-fun lt!514186 () Unit!25460)

(declare-fun Unit!25475 () Unit!25460)

(assert (=> b!1480015 (= lt!514186 Unit!25475)))

(assert (=> b!1480015 (rulesProduceIndividualToken!1304 thiss!27374 rules!4290 (h!21053 (t!137143 l1!3136)))))

(declare-fun lt!514181 () Unit!25460)

(declare-fun Unit!25476 () Unit!25460)

(assert (=> b!1480015 (= lt!514181 Unit!25476)))

(assert (=> b!1480015 (rulesProduceIndividualToken!1304 thiss!27374 rules!4290 (h!21053 l1!3136))))

(declare-fun lt!514182 () Unit!25460)

(declare-fun lt!514183 () Unit!25460)

(assert (=> b!1480015 (= lt!514182 lt!514183)))

(assert (=> b!1480015 (rulesProduceIndividualToken!1304 thiss!27374 rules!4290 (h!21053 (t!137143 l1!3136)))))

(assert (=> b!1480015 (= lt!514183 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!485 thiss!27374 rules!4290 l1!3136 (h!21053 (t!137143 l1!3136))))))

(declare-fun lt!514185 () Unit!25460)

(declare-fun lt!514180 () Unit!25460)

(assert (=> b!1480015 (= lt!514185 lt!514180)))

(assert (=> b!1480015 (rulesProduceIndividualToken!1304 thiss!27374 rules!4290 (h!21053 l1!3136))))

(assert (=> b!1480015 (= lt!514180 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!485 thiss!27374 rules!4290 l1!3136 (h!21053 l1!3136)))))

(declare-fun b!1480016 () Bool)

(assert (=> b!1480016 (= e!946099 (tokensListTwoByTwoPredicateSeparableList!307 thiss!27374 (Cons!15652 (h!21053 (t!137143 l1!3136)) (t!137143 (t!137143 l1!3136))) rules!4290))))

(assert (= (and d!433927 (not res!668771)) b!1480015))

(assert (= (and b!1480015 res!668772) b!1480016))

(declare-fun m!1725621 () Bool)

(assert (=> b!1480015 m!1725621))

(declare-fun m!1725623 () Bool)

(assert (=> b!1480015 m!1725623))

(declare-fun m!1725625 () Bool)

(assert (=> b!1480015 m!1725625))

(assert (=> b!1480015 m!1725601))

(assert (=> b!1480015 m!1725597))

(assert (=> b!1480015 m!1725621))

(declare-fun m!1725627 () Bool)

(assert (=> b!1480015 m!1725627))

(declare-fun m!1725629 () Bool)

(assert (=> b!1480015 m!1725629))

(declare-fun m!1725631 () Bool)

(assert (=> b!1480016 m!1725631))

(assert (=> b!1479881 d!433927))

(declare-fun d!433929 () Bool)

(declare-fun lt!514214 () Bool)

(declare-fun e!946186 () Bool)

(assert (=> d!433929 (= lt!514214 e!946186)))

(declare-fun res!668808 () Bool)

(assert (=> d!433929 (=> (not res!668808) (not e!946186))))

(declare-datatypes ((IArray!10671 0))(
  ( (IArray!10672 (innerList!5393 List!15718)) )
))
(declare-datatypes ((Conc!5333 0))(
  ( (Node!5333 (left!13203 Conc!5333) (right!13533 Conc!5333) (csize!10896 Int) (cheight!5544 Int)) (Leaf!7930 (xs!8088 IArray!10671) (csize!10897 Int)) (Empty!5333) )
))
(declare-datatypes ((BalanceConc!10606 0))(
  ( (BalanceConc!10607 (c!242873 Conc!5333)) )
))
(declare-fun list!6221 (BalanceConc!10606) List!15718)

(declare-datatypes ((tuple2!14330 0))(
  ( (tuple2!14331 (_1!8051 BalanceConc!10606) (_2!8051 BalanceConc!10602)) )
))
(declare-fun lex!1104 (LexerInterface!2447 List!15719 BalanceConc!10602) tuple2!14330)

(declare-fun print!1139 (LexerInterface!2447 BalanceConc!10606) BalanceConc!10602)

(declare-fun singletonSeq!1328 (Token!5244) BalanceConc!10606)

(assert (=> d!433929 (= res!668808 (= (list!6221 (_1!8051 (lex!1104 thiss!27374 rules!4290 (print!1139 thiss!27374 (singletonSeq!1328 lt!514109))))) (list!6221 (singletonSeq!1328 lt!514109))))))

(declare-fun e!946185 () Bool)

(assert (=> d!433929 (= lt!514214 e!946185)))

(declare-fun res!668810 () Bool)

(assert (=> d!433929 (=> (not res!668810) (not e!946185))))

(declare-fun lt!514213 () tuple2!14330)

(declare-fun size!12676 (BalanceConc!10606) Int)

(assert (=> d!433929 (= res!668810 (= (size!12676 (_1!8051 lt!514213)) 1))))

(assert (=> d!433929 (= lt!514213 (lex!1104 thiss!27374 rules!4290 (print!1139 thiss!27374 (singletonSeq!1328 lt!514109))))))

(assert (=> d!433929 (not (isEmpty!9787 rules!4290))))

(assert (=> d!433929 (= (rulesProduceIndividualToken!1304 thiss!27374 rules!4290 lt!514109) lt!514214)))

(declare-fun b!1480138 () Bool)

(declare-fun res!668809 () Bool)

(assert (=> b!1480138 (=> (not res!668809) (not e!946185))))

(declare-fun apply!4043 (BalanceConc!10606 Int) Token!5244)

(assert (=> b!1480138 (= res!668809 (= (apply!4043 (_1!8051 lt!514213) 0) lt!514109))))

(declare-fun b!1480139 () Bool)

(declare-fun isEmpty!9790 (BalanceConc!10602) Bool)

(assert (=> b!1480139 (= e!946185 (isEmpty!9790 (_2!8051 lt!514213)))))

(declare-fun b!1480140 () Bool)

(assert (=> b!1480140 (= e!946186 (isEmpty!9790 (_2!8051 (lex!1104 thiss!27374 rules!4290 (print!1139 thiss!27374 (singletonSeq!1328 lt!514109))))))))

(assert (= (and d!433929 res!668810) b!1480138))

(assert (= (and b!1480138 res!668809) b!1480139))

(assert (= (and d!433929 res!668808) b!1480140))

(assert (=> d!433929 m!1725463))

(declare-fun m!1725773 () Bool)

(assert (=> d!433929 m!1725773))

(declare-fun m!1725775 () Bool)

(assert (=> d!433929 m!1725775))

(assert (=> d!433929 m!1725773))

(declare-fun m!1725777 () Bool)

(assert (=> d!433929 m!1725777))

(declare-fun m!1725779 () Bool)

(assert (=> d!433929 m!1725779))

(declare-fun m!1725781 () Bool)

(assert (=> d!433929 m!1725781))

(declare-fun m!1725783 () Bool)

(assert (=> d!433929 m!1725783))

(assert (=> d!433929 m!1725773))

(assert (=> d!433929 m!1725781))

(declare-fun m!1725785 () Bool)

(assert (=> b!1480138 m!1725785))

(declare-fun m!1725787 () Bool)

(assert (=> b!1480139 m!1725787))

(assert (=> b!1480140 m!1725773))

(assert (=> b!1480140 m!1725773))

(assert (=> b!1480140 m!1725781))

(assert (=> b!1480140 m!1725781))

(assert (=> b!1480140 m!1725783))

(declare-fun m!1725789 () Bool)

(assert (=> b!1480140 m!1725789))

(assert (=> b!1479892 d!433929))

(declare-fun d!433975 () Bool)

(declare-fun prefixMatchZipperSequence!381 (Regex!4105 BalanceConc!10602) Bool)

(declare-fun rulesRegex!431 (LexerInterface!2447 List!15719) Regex!4105)

(declare-fun ++!4218 (BalanceConc!10602 BalanceConc!10602) BalanceConc!10602)

(declare-fun singletonSeq!1329 (C!8388) BalanceConc!10602)

(declare-fun apply!4044 (BalanceConc!10602 Int) C!8388)

(assert (=> d!433975 (= (separableTokensPredicate!586 thiss!27374 lt!514109 lt!514104 rules!4290) (not (prefixMatchZipperSequence!381 (rulesRegex!431 thiss!27374 rules!4290) (++!4218 (charsOf!1599 lt!514109) (singletonSeq!1329 (apply!4044 (charsOf!1599 lt!514104) 0))))))))

(declare-fun bs!345808 () Bool)

(assert (= bs!345808 d!433975))

(declare-fun m!1725795 () Bool)

(assert (=> bs!345808 m!1725795))

(declare-fun m!1725797 () Bool)

(assert (=> bs!345808 m!1725797))

(declare-fun m!1725799 () Bool)

(assert (=> bs!345808 m!1725799))

(declare-fun m!1725801 () Bool)

(assert (=> bs!345808 m!1725801))

(assert (=> bs!345808 m!1725795))

(declare-fun m!1725803 () Bool)

(assert (=> bs!345808 m!1725803))

(declare-fun m!1725805 () Bool)

(assert (=> bs!345808 m!1725805))

(assert (=> bs!345808 m!1725801))

(assert (=> bs!345808 m!1725803))

(declare-fun m!1725807 () Bool)

(assert (=> bs!345808 m!1725807))

(assert (=> bs!345808 m!1725805))

(assert (=> bs!345808 m!1725797))

(assert (=> bs!345808 m!1725807))

(assert (=> b!1479892 d!433975))

(declare-fun d!433977 () Bool)

(declare-fun lt!514216 () Bool)

(declare-fun e!946198 () Bool)

(assert (=> d!433977 (= lt!514216 e!946198)))

(declare-fun res!668811 () Bool)

(assert (=> d!433977 (=> (not res!668811) (not e!946198))))

(assert (=> d!433977 (= res!668811 (= (list!6221 (_1!8051 (lex!1104 thiss!27374 rules!4290 (print!1139 thiss!27374 (singletonSeq!1328 lt!514104))))) (list!6221 (singletonSeq!1328 lt!514104))))))

(declare-fun e!946197 () Bool)

(assert (=> d!433977 (= lt!514216 e!946197)))

(declare-fun res!668813 () Bool)

(assert (=> d!433977 (=> (not res!668813) (not e!946197))))

(declare-fun lt!514215 () tuple2!14330)

(assert (=> d!433977 (= res!668813 (= (size!12676 (_1!8051 lt!514215)) 1))))

(assert (=> d!433977 (= lt!514215 (lex!1104 thiss!27374 rules!4290 (print!1139 thiss!27374 (singletonSeq!1328 lt!514104))))))

(assert (=> d!433977 (not (isEmpty!9787 rules!4290))))

(assert (=> d!433977 (= (rulesProduceIndividualToken!1304 thiss!27374 rules!4290 lt!514104) lt!514216)))

(declare-fun b!1480148 () Bool)

(declare-fun res!668812 () Bool)

(assert (=> b!1480148 (=> (not res!668812) (not e!946197))))

(assert (=> b!1480148 (= res!668812 (= (apply!4043 (_1!8051 lt!514215) 0) lt!514104))))

(declare-fun b!1480149 () Bool)

(assert (=> b!1480149 (= e!946197 (isEmpty!9790 (_2!8051 lt!514215)))))

(declare-fun b!1480150 () Bool)

(assert (=> b!1480150 (= e!946198 (isEmpty!9790 (_2!8051 (lex!1104 thiss!27374 rules!4290 (print!1139 thiss!27374 (singletonSeq!1328 lt!514104))))))))

(assert (= (and d!433977 res!668813) b!1480148))

(assert (= (and b!1480148 res!668812) b!1480149))

(assert (= (and d!433977 res!668811) b!1480150))

(assert (=> d!433977 m!1725463))

(declare-fun m!1725809 () Bool)

(assert (=> d!433977 m!1725809))

(declare-fun m!1725811 () Bool)

(assert (=> d!433977 m!1725811))

(assert (=> d!433977 m!1725809))

(declare-fun m!1725813 () Bool)

(assert (=> d!433977 m!1725813))

(declare-fun m!1725815 () Bool)

(assert (=> d!433977 m!1725815))

(declare-fun m!1725817 () Bool)

(assert (=> d!433977 m!1725817))

(declare-fun m!1725819 () Bool)

(assert (=> d!433977 m!1725819))

(assert (=> d!433977 m!1725809))

(assert (=> d!433977 m!1725817))

(declare-fun m!1725821 () Bool)

(assert (=> b!1480148 m!1725821))

(declare-fun m!1725823 () Bool)

(assert (=> b!1480149 m!1725823))

(assert (=> b!1480150 m!1725809))

(assert (=> b!1480150 m!1725809))

(assert (=> b!1480150 m!1725817))

(assert (=> b!1480150 m!1725817))

(assert (=> b!1480150 m!1725819))

(declare-fun m!1725825 () Bool)

(assert (=> b!1480150 m!1725825))

(assert (=> b!1479892 d!433977))

(declare-fun d!433979 () Bool)

(assert (=> d!433979 (= (head!3079 l2!3105) (h!21053 l2!3105))))

(assert (=> b!1479892 d!433979))

(declare-fun d!433981 () Bool)

(declare-fun lt!514219 () Token!5244)

(declare-fun contains!2949 (List!15718 Token!5244) Bool)

(assert (=> d!433981 (contains!2949 l1!3136 lt!514219)))

(declare-fun e!946201 () Token!5244)

(assert (=> d!433981 (= lt!514219 e!946201)))

(declare-fun c!242870 () Bool)

(assert (=> d!433981 (= c!242870 (and ((_ is Cons!15652) l1!3136) ((_ is Nil!15652) (t!137143 l1!3136))))))

(assert (=> d!433981 (not (isEmpty!9786 l1!3136))))

(assert (=> d!433981 (= (last!349 l1!3136) lt!514219)))

(declare-fun b!1480155 () Bool)

(assert (=> b!1480155 (= e!946201 (h!21053 l1!3136))))

(declare-fun b!1480156 () Bool)

(assert (=> b!1480156 (= e!946201 (last!349 (t!137143 l1!3136)))))

(assert (= (and d!433981 c!242870) b!1480155))

(assert (= (and d!433981 (not c!242870)) b!1480156))

(declare-fun m!1725827 () Bool)

(assert (=> d!433981 m!1725827))

(assert (=> d!433981 m!1725489))

(assert (=> b!1480156 m!1725459))

(assert (=> b!1479892 d!433981))

(declare-fun d!433983 () Bool)

(assert (=> d!433983 (rulesProduceIndividualToken!1304 thiss!27374 rules!4290 lt!514109)))

(declare-fun lt!514222 () Unit!25460)

(declare-fun choose!9058 (LexerInterface!2447 List!15719 List!15718 Token!5244) Unit!25460)

(assert (=> d!433983 (= lt!514222 (choose!9058 thiss!27374 rules!4290 l1!3136 lt!514109))))

(assert (=> d!433983 (not (isEmpty!9787 rules!4290))))

(assert (=> d!433983 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!485 thiss!27374 rules!4290 l1!3136 lt!514109) lt!514222)))

(declare-fun bs!345809 () Bool)

(assert (= bs!345809 d!433983))

(assert (=> bs!345809 m!1725437))

(declare-fun m!1725829 () Bool)

(assert (=> bs!345809 m!1725829))

(assert (=> bs!345809 m!1725463))

(assert (=> b!1479892 d!433983))

(declare-fun d!433985 () Bool)

(assert (=> d!433985 (rulesProduceIndividualToken!1304 thiss!27374 rules!4290 lt!514104)))

(declare-fun lt!514223 () Unit!25460)

(assert (=> d!433985 (= lt!514223 (choose!9058 thiss!27374 rules!4290 l2!3105 lt!514104))))

(assert (=> d!433985 (not (isEmpty!9787 rules!4290))))

(assert (=> d!433985 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!485 thiss!27374 rules!4290 l2!3105 lt!514104) lt!514223)))

(declare-fun bs!345810 () Bool)

(assert (= bs!345810 d!433985))

(assert (=> bs!345810 m!1725439))

(declare-fun m!1725831 () Bool)

(assert (=> bs!345810 m!1725831))

(assert (=> bs!345810 m!1725463))

(assert (=> b!1479892 d!433985))

(declare-fun d!433987 () Bool)

(assert (=> d!433987 (= (inv!20864 (tag!3055 (rule!4568 (h!21053 l2!3105)))) (= (mod (str.len (value!89190 (tag!3055 (rule!4568 (h!21053 l2!3105))))) 2) 0))))

(assert (=> b!1479891 d!433987))

(declare-fun d!433989 () Bool)

(declare-fun res!668814 () Bool)

(declare-fun e!946202 () Bool)

(assert (=> d!433989 (=> (not res!668814) (not e!946202))))

(assert (=> d!433989 (= res!668814 (semiInverseModEq!1051 (toChars!3985 (transformation!2791 (rule!4568 (h!21053 l2!3105)))) (toValue!4126 (transformation!2791 (rule!4568 (h!21053 l2!3105))))))))

(assert (=> d!433989 (= (inv!20867 (transformation!2791 (rule!4568 (h!21053 l2!3105)))) e!946202)))

(declare-fun b!1480157 () Bool)

(assert (=> b!1480157 (= e!946202 (equivClasses!1010 (toChars!3985 (transformation!2791 (rule!4568 (h!21053 l2!3105)))) (toValue!4126 (transformation!2791 (rule!4568 (h!21053 l2!3105))))))))

(assert (= (and d!433989 res!668814) b!1480157))

(declare-fun m!1725833 () Bool)

(assert (=> d!433989 m!1725833))

(declare-fun m!1725835 () Bool)

(assert (=> b!1480157 m!1725835))

(assert (=> b!1479891 d!433989))

(declare-fun d!433991 () Bool)

(assert (=> d!433991 (= (isEmpty!9786 (t!137143 l1!3136)) ((_ is Nil!15652) (t!137143 l1!3136)))))

(assert (=> b!1479902 d!433991))

(declare-fun d!433993 () Bool)

(assert (=> d!433993 (= (isEmpty!9787 rules!4290) ((_ is Nil!15653) rules!4290))))

(assert (=> b!1479885 d!433993))

(declare-fun d!433995 () Bool)

(assert (=> d!433995 (= (isEmpty!9786 l2!3105) ((_ is Nil!15652) l2!3105))))

(assert (=> b!1479896 d!433995))

(declare-fun d!433997 () Bool)

(declare-fun res!668819 () Bool)

(declare-fun e!946205 () Bool)

(assert (=> d!433997 (=> (not res!668819) (not e!946205))))

(declare-fun isEmpty!9791 (List!15717) Bool)

(assert (=> d!433997 (= res!668819 (not (isEmpty!9791 (originalCharacters!3653 (h!21053 l1!3136)))))))

(assert (=> d!433997 (= (inv!20868 (h!21053 l1!3136)) e!946205)))

(declare-fun b!1480162 () Bool)

(declare-fun res!668820 () Bool)

(assert (=> b!1480162 (=> (not res!668820) (not e!946205))))

(declare-fun list!6222 (BalanceConc!10602) List!15717)

(declare-fun dynLambda!7122 (Int TokenValue!2881) BalanceConc!10602)

(assert (=> b!1480162 (= res!668820 (= (originalCharacters!3653 (h!21053 l1!3136)) (list!6222 (dynLambda!7122 (toChars!3985 (transformation!2791 (rule!4568 (h!21053 l1!3136)))) (value!89191 (h!21053 l1!3136))))))))

(declare-fun b!1480163 () Bool)

(declare-fun size!12677 (List!15717) Int)

(assert (=> b!1480163 (= e!946205 (= (size!12670 (h!21053 l1!3136)) (size!12677 (originalCharacters!3653 (h!21053 l1!3136)))))))

(assert (= (and d!433997 res!668819) b!1480162))

(assert (= (and b!1480162 res!668820) b!1480163))

(declare-fun b_lambda!46331 () Bool)

(assert (=> (not b_lambda!46331) (not b!1480162)))

(declare-fun tb!84485 () Bool)

(declare-fun t!137178 () Bool)

(assert (=> (and b!1479883 (= (toChars!3985 (transformation!2791 (h!21054 rules!4290))) (toChars!3985 (transformation!2791 (rule!4568 (h!21053 l1!3136))))) t!137178) tb!84485))

(declare-fun b!1480168 () Bool)

(declare-fun e!946208 () Bool)

(declare-fun tp!419598 () Bool)

(declare-fun inv!20871 (Conc!5331) Bool)

(assert (=> b!1480168 (= e!946208 (and (inv!20871 (c!242839 (dynLambda!7122 (toChars!3985 (transformation!2791 (rule!4568 (h!21053 l1!3136)))) (value!89191 (h!21053 l1!3136))))) tp!419598))))

(declare-fun result!101588 () Bool)

(declare-fun inv!20872 (BalanceConc!10602) Bool)

(assert (=> tb!84485 (= result!101588 (and (inv!20872 (dynLambda!7122 (toChars!3985 (transformation!2791 (rule!4568 (h!21053 l1!3136)))) (value!89191 (h!21053 l1!3136)))) e!946208))))

(assert (= tb!84485 b!1480168))

(declare-fun m!1725837 () Bool)

(assert (=> b!1480168 m!1725837))

(declare-fun m!1725839 () Bool)

(assert (=> tb!84485 m!1725839))

(assert (=> b!1480162 t!137178))

(declare-fun b_and!102593 () Bool)

(assert (= b_and!102559 (and (=> t!137178 result!101588) b_and!102593)))

(declare-fun tb!84487 () Bool)

(declare-fun t!137180 () Bool)

(assert (=> (and b!1479897 (= (toChars!3985 (transformation!2791 (rule!4568 (h!21053 l2!3105)))) (toChars!3985 (transformation!2791 (rule!4568 (h!21053 l1!3136))))) t!137180) tb!84487))

(declare-fun result!101592 () Bool)

(assert (= result!101592 result!101588))

(assert (=> b!1480162 t!137180))

(declare-fun b_and!102595 () Bool)

(assert (= b_and!102563 (and (=> t!137180 result!101592) b_and!102595)))

(declare-fun t!137182 () Bool)

(declare-fun tb!84489 () Bool)

(assert (=> (and b!1479888 (= (toChars!3985 (transformation!2791 (rule!4568 (h!21053 l1!3136)))) (toChars!3985 (transformation!2791 (rule!4568 (h!21053 l1!3136))))) t!137182) tb!84489))

(declare-fun result!101594 () Bool)

(assert (= result!101594 result!101588))

(assert (=> b!1480162 t!137182))

(declare-fun b_and!102597 () Bool)

(assert (= b_and!102567 (and (=> t!137182 result!101594) b_and!102597)))

(declare-fun m!1725841 () Bool)

(assert (=> d!433997 m!1725841))

(declare-fun m!1725843 () Bool)

(assert (=> b!1480162 m!1725843))

(assert (=> b!1480162 m!1725843))

(declare-fun m!1725845 () Bool)

(assert (=> b!1480162 m!1725845))

(declare-fun m!1725847 () Bool)

(assert (=> b!1480163 m!1725847))

(assert (=> b!1479895 d!433997))

(declare-fun d!433999 () Bool)

(declare-fun res!668821 () Bool)

(declare-fun e!946210 () Bool)

(assert (=> d!433999 (=> res!668821 e!946210)))

(assert (=> d!433999 (= res!668821 (or (not ((_ is Cons!15652) (t!137143 l1!3136))) (not ((_ is Cons!15652) (t!137143 (t!137143 l1!3136))))))))

(assert (=> d!433999 (= (tokensListTwoByTwoPredicateSeparableList!307 thiss!27374 (t!137143 l1!3136) rules!4290) e!946210)))

(declare-fun b!1480169 () Bool)

(declare-fun e!946209 () Bool)

(assert (=> b!1480169 (= e!946210 e!946209)))

(declare-fun res!668822 () Bool)

(assert (=> b!1480169 (=> (not res!668822) (not e!946209))))

(assert (=> b!1480169 (= res!668822 (separableTokensPredicate!586 thiss!27374 (h!21053 (t!137143 l1!3136)) (h!21053 (t!137143 (t!137143 l1!3136))) rules!4290))))

(declare-fun lt!514228 () Unit!25460)

(declare-fun Unit!25477 () Unit!25460)

(assert (=> b!1480169 (= lt!514228 Unit!25477)))

(assert (=> b!1480169 (> (size!12674 (charsOf!1599 (h!21053 (t!137143 (t!137143 l1!3136))))) 0)))

(declare-fun lt!514230 () Unit!25460)

(declare-fun Unit!25478 () Unit!25460)

(assert (=> b!1480169 (= lt!514230 Unit!25478)))

(assert (=> b!1480169 (rulesProduceIndividualToken!1304 thiss!27374 rules!4290 (h!21053 (t!137143 (t!137143 l1!3136))))))

(declare-fun lt!514225 () Unit!25460)

(declare-fun Unit!25479 () Unit!25460)

(assert (=> b!1480169 (= lt!514225 Unit!25479)))

(assert (=> b!1480169 (rulesProduceIndividualToken!1304 thiss!27374 rules!4290 (h!21053 (t!137143 l1!3136)))))

(declare-fun lt!514226 () Unit!25460)

(declare-fun lt!514227 () Unit!25460)

(assert (=> b!1480169 (= lt!514226 lt!514227)))

(assert (=> b!1480169 (rulesProduceIndividualToken!1304 thiss!27374 rules!4290 (h!21053 (t!137143 (t!137143 l1!3136))))))

(assert (=> b!1480169 (= lt!514227 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!485 thiss!27374 rules!4290 (t!137143 l1!3136) (h!21053 (t!137143 (t!137143 l1!3136)))))))

(declare-fun lt!514229 () Unit!25460)

(declare-fun lt!514224 () Unit!25460)

(assert (=> b!1480169 (= lt!514229 lt!514224)))

(assert (=> b!1480169 (rulesProduceIndividualToken!1304 thiss!27374 rules!4290 (h!21053 (t!137143 l1!3136)))))

(assert (=> b!1480169 (= lt!514224 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!485 thiss!27374 rules!4290 (t!137143 l1!3136) (h!21053 (t!137143 l1!3136))))))

(declare-fun b!1480170 () Bool)

(assert (=> b!1480170 (= e!946209 (tokensListTwoByTwoPredicateSeparableList!307 thiss!27374 (Cons!15652 (h!21053 (t!137143 (t!137143 l1!3136))) (t!137143 (t!137143 (t!137143 l1!3136)))) rules!4290))))

(assert (= (and d!433999 (not res!668821)) b!1480169))

(assert (= (and b!1480169 res!668822) b!1480170))

(declare-fun m!1725849 () Bool)

(assert (=> b!1480169 m!1725849))

(declare-fun m!1725851 () Bool)

(assert (=> b!1480169 m!1725851))

(declare-fun m!1725853 () Bool)

(assert (=> b!1480169 m!1725853))

(declare-fun m!1725855 () Bool)

(assert (=> b!1480169 m!1725855))

(assert (=> b!1480169 m!1725601))

(assert (=> b!1480169 m!1725849))

(declare-fun m!1725857 () Bool)

(assert (=> b!1480169 m!1725857))

(declare-fun m!1725859 () Bool)

(assert (=> b!1480169 m!1725859))

(declare-fun m!1725861 () Bool)

(assert (=> b!1480170 m!1725861))

(assert (=> b!1479884 d!433999))

(declare-fun d!434001 () Bool)

(declare-fun res!668823 () Bool)

(declare-fun e!946211 () Bool)

(assert (=> d!434001 (=> (not res!668823) (not e!946211))))

(assert (=> d!434001 (= res!668823 (not (isEmpty!9791 (originalCharacters!3653 (h!21053 l2!3105)))))))

(assert (=> d!434001 (= (inv!20868 (h!21053 l2!3105)) e!946211)))

(declare-fun b!1480171 () Bool)

(declare-fun res!668824 () Bool)

(assert (=> b!1480171 (=> (not res!668824) (not e!946211))))

(assert (=> b!1480171 (= res!668824 (= (originalCharacters!3653 (h!21053 l2!3105)) (list!6222 (dynLambda!7122 (toChars!3985 (transformation!2791 (rule!4568 (h!21053 l2!3105)))) (value!89191 (h!21053 l2!3105))))))))

(declare-fun b!1480172 () Bool)

(assert (=> b!1480172 (= e!946211 (= (size!12670 (h!21053 l2!3105)) (size!12677 (originalCharacters!3653 (h!21053 l2!3105)))))))

(assert (= (and d!434001 res!668823) b!1480171))

(assert (= (and b!1480171 res!668824) b!1480172))

(declare-fun b_lambda!46333 () Bool)

(assert (=> (not b_lambda!46333) (not b!1480171)))

(declare-fun tb!84491 () Bool)

(declare-fun t!137184 () Bool)

(assert (=> (and b!1479883 (= (toChars!3985 (transformation!2791 (h!21054 rules!4290))) (toChars!3985 (transformation!2791 (rule!4568 (h!21053 l2!3105))))) t!137184) tb!84491))

(declare-fun b!1480173 () Bool)

(declare-fun e!946212 () Bool)

(declare-fun tp!419599 () Bool)

(assert (=> b!1480173 (= e!946212 (and (inv!20871 (c!242839 (dynLambda!7122 (toChars!3985 (transformation!2791 (rule!4568 (h!21053 l2!3105)))) (value!89191 (h!21053 l2!3105))))) tp!419599))))

(declare-fun result!101596 () Bool)

(assert (=> tb!84491 (= result!101596 (and (inv!20872 (dynLambda!7122 (toChars!3985 (transformation!2791 (rule!4568 (h!21053 l2!3105)))) (value!89191 (h!21053 l2!3105)))) e!946212))))

(assert (= tb!84491 b!1480173))

(declare-fun m!1725863 () Bool)

(assert (=> b!1480173 m!1725863))

(declare-fun m!1725865 () Bool)

(assert (=> tb!84491 m!1725865))

(assert (=> b!1480171 t!137184))

(declare-fun b_and!102599 () Bool)

(assert (= b_and!102593 (and (=> t!137184 result!101596) b_and!102599)))

(declare-fun t!137186 () Bool)

(declare-fun tb!84493 () Bool)

(assert (=> (and b!1479897 (= (toChars!3985 (transformation!2791 (rule!4568 (h!21053 l2!3105)))) (toChars!3985 (transformation!2791 (rule!4568 (h!21053 l2!3105))))) t!137186) tb!84493))

(declare-fun result!101598 () Bool)

(assert (= result!101598 result!101596))

(assert (=> b!1480171 t!137186))

(declare-fun b_and!102601 () Bool)

(assert (= b_and!102595 (and (=> t!137186 result!101598) b_and!102601)))

(declare-fun tb!84495 () Bool)

(declare-fun t!137188 () Bool)

(assert (=> (and b!1479888 (= (toChars!3985 (transformation!2791 (rule!4568 (h!21053 l1!3136)))) (toChars!3985 (transformation!2791 (rule!4568 (h!21053 l2!3105))))) t!137188) tb!84495))

(declare-fun result!101600 () Bool)

(assert (= result!101600 result!101596))

(assert (=> b!1480171 t!137188))

(declare-fun b_and!102603 () Bool)

(assert (= b_and!102597 (and (=> t!137188 result!101600) b_and!102603)))

(declare-fun m!1725867 () Bool)

(assert (=> d!434001 m!1725867))

(declare-fun m!1725869 () Bool)

(assert (=> b!1480171 m!1725869))

(assert (=> b!1480171 m!1725869))

(declare-fun m!1725871 () Bool)

(assert (=> b!1480171 m!1725871))

(declare-fun m!1725873 () Bool)

(assert (=> b!1480172 m!1725873))

(assert (=> b!1479894 d!434001))

(declare-fun d!434003 () Bool)

(assert (=> d!434003 (= (separableTokensPredicate!586 thiss!27374 lt!514106 lt!514104 rules!4290) (not (prefixMatchZipperSequence!381 (rulesRegex!431 thiss!27374 rules!4290) (++!4218 (charsOf!1599 lt!514106) (singletonSeq!1329 (apply!4044 (charsOf!1599 lt!514104) 0))))))))

(declare-fun bs!345811 () Bool)

(assert (= bs!345811 d!434003))

(assert (=> bs!345811 m!1725795))

(declare-fun m!1725875 () Bool)

(assert (=> bs!345811 m!1725875))

(declare-fun m!1725877 () Bool)

(assert (=> bs!345811 m!1725877))

(assert (=> bs!345811 m!1725801))

(assert (=> bs!345811 m!1725795))

(assert (=> bs!345811 m!1725803))

(assert (=> bs!345811 m!1725805))

(assert (=> bs!345811 m!1725801))

(assert (=> bs!345811 m!1725803))

(declare-fun m!1725879 () Bool)

(assert (=> bs!345811 m!1725879))

(assert (=> bs!345811 m!1725805))

(assert (=> bs!345811 m!1725875))

(assert (=> bs!345811 m!1725879))

(assert (=> b!1479887 d!434003))

(declare-fun d!434005 () Bool)

(declare-fun lt!514232 () Bool)

(declare-fun e!946214 () Bool)

(assert (=> d!434005 (= lt!514232 e!946214)))

(declare-fun res!668825 () Bool)

(assert (=> d!434005 (=> (not res!668825) (not e!946214))))

(assert (=> d!434005 (= res!668825 (= (list!6221 (_1!8051 (lex!1104 thiss!27374 rules!4290 (print!1139 thiss!27374 (singletonSeq!1328 lt!514106))))) (list!6221 (singletonSeq!1328 lt!514106))))))

(declare-fun e!946213 () Bool)

(assert (=> d!434005 (= lt!514232 e!946213)))

(declare-fun res!668827 () Bool)

(assert (=> d!434005 (=> (not res!668827) (not e!946213))))

(declare-fun lt!514231 () tuple2!14330)

(assert (=> d!434005 (= res!668827 (= (size!12676 (_1!8051 lt!514231)) 1))))

(assert (=> d!434005 (= lt!514231 (lex!1104 thiss!27374 rules!4290 (print!1139 thiss!27374 (singletonSeq!1328 lt!514106))))))

(assert (=> d!434005 (not (isEmpty!9787 rules!4290))))

(assert (=> d!434005 (= (rulesProduceIndividualToken!1304 thiss!27374 rules!4290 lt!514106) lt!514232)))

(declare-fun b!1480174 () Bool)

(declare-fun res!668826 () Bool)

(assert (=> b!1480174 (=> (not res!668826) (not e!946213))))

(assert (=> b!1480174 (= res!668826 (= (apply!4043 (_1!8051 lt!514231) 0) lt!514106))))

(declare-fun b!1480175 () Bool)

(assert (=> b!1480175 (= e!946213 (isEmpty!9790 (_2!8051 lt!514231)))))

(declare-fun b!1480176 () Bool)

(assert (=> b!1480176 (= e!946214 (isEmpty!9790 (_2!8051 (lex!1104 thiss!27374 rules!4290 (print!1139 thiss!27374 (singletonSeq!1328 lt!514106))))))))

(assert (= (and d!434005 res!668827) b!1480174))

(assert (= (and b!1480174 res!668826) b!1480175))

(assert (= (and d!434005 res!668825) b!1480176))

(assert (=> d!434005 m!1725463))

(declare-fun m!1725881 () Bool)

(assert (=> d!434005 m!1725881))

(declare-fun m!1725883 () Bool)

(assert (=> d!434005 m!1725883))

(assert (=> d!434005 m!1725881))

(declare-fun m!1725885 () Bool)

(assert (=> d!434005 m!1725885))

(declare-fun m!1725887 () Bool)

(assert (=> d!434005 m!1725887))

(declare-fun m!1725889 () Bool)

(assert (=> d!434005 m!1725889))

(declare-fun m!1725891 () Bool)

(assert (=> d!434005 m!1725891))

(assert (=> d!434005 m!1725881))

(assert (=> d!434005 m!1725889))

(declare-fun m!1725893 () Bool)

(assert (=> b!1480174 m!1725893))

(declare-fun m!1725895 () Bool)

(assert (=> b!1480175 m!1725895))

(assert (=> b!1480176 m!1725881))

(assert (=> b!1480176 m!1725881))

(assert (=> b!1480176 m!1725889))

(assert (=> b!1480176 m!1725889))

(assert (=> b!1480176 m!1725891))

(declare-fun m!1725897 () Bool)

(assert (=> b!1480176 m!1725897))

(assert (=> b!1479887 d!434005))

(declare-fun d!434007 () Bool)

(assert (=> d!434007 (rulesProduceIndividualToken!1304 thiss!27374 rules!4290 lt!514106)))

(declare-fun lt!514233 () Unit!25460)

(assert (=> d!434007 (= lt!514233 (choose!9058 thiss!27374 rules!4290 (t!137143 l1!3136) lt!514106))))

(assert (=> d!434007 (not (isEmpty!9787 rules!4290))))

(assert (=> d!434007 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!485 thiss!27374 rules!4290 (t!137143 l1!3136) lt!514106) lt!514233)))

(declare-fun bs!345812 () Bool)

(assert (= bs!345812 d!434007))

(assert (=> bs!345812 m!1725455))

(declare-fun m!1725899 () Bool)

(assert (=> bs!345812 m!1725899))

(assert (=> bs!345812 m!1725463))

(assert (=> b!1479887 d!434007))

(declare-fun d!434009 () Bool)

(declare-fun lt!514234 () Token!5244)

(assert (=> d!434009 (contains!2949 (t!137143 l1!3136) lt!514234)))

(declare-fun e!946215 () Token!5244)

(assert (=> d!434009 (= lt!514234 e!946215)))

(declare-fun c!242872 () Bool)

(assert (=> d!434009 (= c!242872 (and ((_ is Cons!15652) (t!137143 l1!3136)) ((_ is Nil!15652) (t!137143 (t!137143 l1!3136)))))))

(assert (=> d!434009 (not (isEmpty!9786 (t!137143 l1!3136)))))

(assert (=> d!434009 (= (last!349 (t!137143 l1!3136)) lt!514234)))

(declare-fun b!1480177 () Bool)

(assert (=> b!1480177 (= e!946215 (h!21053 (t!137143 l1!3136)))))

(declare-fun b!1480178 () Bool)

(assert (=> b!1480178 (= e!946215 (last!349 (t!137143 (t!137143 l1!3136))))))

(assert (= (and d!434009 c!242872) b!1480177))

(assert (= (and d!434009 (not c!242872)) b!1480178))

(declare-fun m!1725901 () Bool)

(assert (=> d!434009 m!1725901))

(assert (=> d!434009 m!1725481))

(declare-fun m!1725903 () Bool)

(assert (=> b!1480178 m!1725903))

(assert (=> b!1479887 d!434009))

(declare-fun bs!345813 () Bool)

(declare-fun d!434011 () Bool)

(assert (= bs!345813 (and d!434011 d!433909)))

(declare-fun lambda!63755 () Int)

(assert (=> bs!345813 (= lambda!63755 lambda!63751)))

(declare-fun bs!345814 () Bool)

(assert (= bs!345814 (and d!434011 d!433917)))

(assert (=> bs!345814 (= lambda!63755 lambda!63752)))

(declare-fun b!1480183 () Bool)

(declare-fun e!946220 () Bool)

(assert (=> b!1480183 (= e!946220 true)))

(declare-fun b!1480182 () Bool)

(declare-fun e!946219 () Bool)

(assert (=> b!1480182 (= e!946219 e!946220)))

(declare-fun b!1480181 () Bool)

(declare-fun e!946218 () Bool)

(assert (=> b!1480181 (= e!946218 e!946219)))

(assert (=> d!434011 e!946218))

(assert (= b!1480182 b!1480183))

(assert (= b!1480181 b!1480182))

(assert (= (and d!434011 ((_ is Cons!15653) rules!4290)) b!1480181))

(assert (=> b!1480183 (< (dynLambda!7119 order!9437 (toValue!4126 (transformation!2791 (h!21054 rules!4290)))) (dynLambda!7120 order!9439 lambda!63755))))

(assert (=> b!1480183 (< (dynLambda!7121 order!9441 (toChars!3985 (transformation!2791 (h!21054 rules!4290)))) (dynLambda!7120 order!9439 lambda!63755))))

(assert (=> d!434011 true))

(declare-fun lt!514235 () Bool)

(assert (=> d!434011 (= lt!514235 (forall!3808 l2!3105 lambda!63755))))

(declare-fun e!946216 () Bool)

(assert (=> d!434011 (= lt!514235 e!946216)))

(declare-fun res!668828 () Bool)

(assert (=> d!434011 (=> res!668828 e!946216)))

(assert (=> d!434011 (= res!668828 (not ((_ is Cons!15652) l2!3105)))))

(assert (=> d!434011 (not (isEmpty!9787 rules!4290))))

(assert (=> d!434011 (= (rulesProduceEachTokenIndividuallyList!814 thiss!27374 rules!4290 l2!3105) lt!514235)))

(declare-fun b!1480179 () Bool)

(declare-fun e!946217 () Bool)

(assert (=> b!1480179 (= e!946216 e!946217)))

(declare-fun res!668829 () Bool)

(assert (=> b!1480179 (=> (not res!668829) (not e!946217))))

(assert (=> b!1480179 (= res!668829 (rulesProduceIndividualToken!1304 thiss!27374 rules!4290 (h!21053 l2!3105)))))

(declare-fun b!1480180 () Bool)

(assert (=> b!1480180 (= e!946217 (rulesProduceEachTokenIndividuallyList!814 thiss!27374 rules!4290 (t!137143 l2!3105)))))

(assert (= (and d!434011 (not res!668828)) b!1480179))

(assert (= (and b!1480179 res!668829) b!1480180))

(declare-fun m!1725905 () Bool)

(assert (=> d!434011 m!1725905))

(assert (=> d!434011 m!1725463))

(assert (=> b!1480179 m!1725549))

(declare-fun m!1725907 () Bool)

(assert (=> b!1480180 m!1725907))

(assert (=> b!1479898 d!434011))

(declare-fun d!434013 () Bool)

(assert (=> d!434013 (= (inv!20864 (tag!3055 (rule!4568 (h!21053 l1!3136)))) (= (mod (str.len (value!89190 (tag!3055 (rule!4568 (h!21053 l1!3136))))) 2) 0))))

(assert (=> b!1479886 d!434013))

(declare-fun d!434015 () Bool)

(declare-fun res!668830 () Bool)

(declare-fun e!946221 () Bool)

(assert (=> d!434015 (=> (not res!668830) (not e!946221))))

(assert (=> d!434015 (= res!668830 (semiInverseModEq!1051 (toChars!3985 (transformation!2791 (rule!4568 (h!21053 l1!3136)))) (toValue!4126 (transformation!2791 (rule!4568 (h!21053 l1!3136))))))))

(assert (=> d!434015 (= (inv!20867 (transformation!2791 (rule!4568 (h!21053 l1!3136)))) e!946221)))

(declare-fun b!1480184 () Bool)

(assert (=> b!1480184 (= e!946221 (equivClasses!1010 (toChars!3985 (transformation!2791 (rule!4568 (h!21053 l1!3136)))) (toValue!4126 (transformation!2791 (rule!4568 (h!21053 l1!3136))))))))

(assert (= (and d!434015 res!668830) b!1480184))

(declare-fun m!1725909 () Bool)

(assert (=> d!434015 m!1725909))

(declare-fun m!1725911 () Bool)

(assert (=> b!1480184 m!1725911))

(assert (=> b!1479886 d!434015))

(declare-fun e!946224 () Bool)

(assert (=> b!1479879 (= tp!419519 e!946224)))

(declare-fun b!1480198 () Bool)

(declare-fun tp!419611 () Bool)

(declare-fun tp!419610 () Bool)

(assert (=> b!1480198 (= e!946224 (and tp!419611 tp!419610))))

(declare-fun b!1480197 () Bool)

(declare-fun tp!419612 () Bool)

(assert (=> b!1480197 (= e!946224 tp!419612)))

(declare-fun b!1480196 () Bool)

(declare-fun tp!419613 () Bool)

(declare-fun tp!419614 () Bool)

(assert (=> b!1480196 (= e!946224 (and tp!419613 tp!419614))))

(declare-fun b!1480195 () Bool)

(declare-fun tp_is_empty!6971 () Bool)

(assert (=> b!1480195 (= e!946224 tp_is_empty!6971)))

(assert (= (and b!1479879 ((_ is ElementMatch!4105) (regex!2791 (h!21054 rules!4290)))) b!1480195))

(assert (= (and b!1479879 ((_ is Concat!6987) (regex!2791 (h!21054 rules!4290)))) b!1480196))

(assert (= (and b!1479879 ((_ is Star!4105) (regex!2791 (h!21054 rules!4290)))) b!1480197))

(assert (= (and b!1479879 ((_ is Union!4105) (regex!2791 (h!21054 rules!4290)))) b!1480198))

(declare-fun b!1480203 () Bool)

(declare-fun e!946227 () Bool)

(declare-fun tp!419617 () Bool)

(assert (=> b!1480203 (= e!946227 (and tp_is_empty!6971 tp!419617))))

(assert (=> b!1479899 (= tp!419528 e!946227)))

(assert (= (and b!1479899 ((_ is Cons!15651) (originalCharacters!3653 (h!21053 l2!3105)))) b!1480203))

(declare-fun b!1480214 () Bool)

(declare-fun b_free!38151 () Bool)

(declare-fun b_next!38855 () Bool)

(assert (=> b!1480214 (= b_free!38151 (not b_next!38855))))

(declare-fun tp!419628 () Bool)

(declare-fun b_and!102605 () Bool)

(assert (=> b!1480214 (= tp!419628 b_and!102605)))

(declare-fun b_free!38153 () Bool)

(declare-fun b_next!38857 () Bool)

(assert (=> b!1480214 (= b_free!38153 (not b_next!38857))))

(declare-fun tb!84497 () Bool)

(declare-fun t!137190 () Bool)

(assert (=> (and b!1480214 (= (toChars!3985 (transformation!2791 (h!21054 (t!137144 rules!4290)))) (toChars!3985 (transformation!2791 (rule!4568 (h!21053 l1!3136))))) t!137190) tb!84497))

(declare-fun result!101608 () Bool)

(assert (= result!101608 result!101588))

(assert (=> b!1480162 t!137190))

(declare-fun t!137192 () Bool)

(declare-fun tb!84499 () Bool)

(assert (=> (and b!1480214 (= (toChars!3985 (transformation!2791 (h!21054 (t!137144 rules!4290)))) (toChars!3985 (transformation!2791 (rule!4568 (h!21053 l2!3105))))) t!137192) tb!84499))

(declare-fun result!101610 () Bool)

(assert (= result!101610 result!101596))

(assert (=> b!1480171 t!137192))

(declare-fun tp!419626 () Bool)

(declare-fun b_and!102607 () Bool)

(assert (=> b!1480214 (= tp!419626 (and (=> t!137190 result!101608) (=> t!137192 result!101610) b_and!102607))))

(declare-fun e!946239 () Bool)

(assert (=> b!1480214 (= e!946239 (and tp!419628 tp!419626))))

(declare-fun tp!419629 () Bool)

(declare-fun b!1480213 () Bool)

(declare-fun e!946236 () Bool)

(assert (=> b!1480213 (= e!946236 (and tp!419629 (inv!20864 (tag!3055 (h!21054 (t!137144 rules!4290)))) (inv!20867 (transformation!2791 (h!21054 (t!137144 rules!4290)))) e!946239))))

(declare-fun b!1480212 () Bool)

(declare-fun e!946237 () Bool)

(declare-fun tp!419627 () Bool)

(assert (=> b!1480212 (= e!946237 (and e!946236 tp!419627))))

(assert (=> b!1479893 (= tp!419526 e!946237)))

(assert (= b!1480213 b!1480214))

(assert (= b!1480212 b!1480213))

(assert (= (and b!1479893 ((_ is Cons!15653) (t!137144 rules!4290))) b!1480212))

(declare-fun m!1725913 () Bool)

(assert (=> b!1480213 m!1725913))

(declare-fun m!1725915 () Bool)

(assert (=> b!1480213 m!1725915))

(declare-fun b!1480215 () Bool)

(declare-fun e!946240 () Bool)

(declare-fun tp!419630 () Bool)

(assert (=> b!1480215 (= e!946240 (and tp_is_empty!6971 tp!419630))))

(assert (=> b!1479903 (= tp!419521 e!946240)))

(assert (= (and b!1479903 ((_ is Cons!15651) (originalCharacters!3653 (h!21053 l1!3136)))) b!1480215))

(declare-fun e!946241 () Bool)

(assert (=> b!1479891 (= tp!419523 e!946241)))

(declare-fun b!1480219 () Bool)

(declare-fun tp!419632 () Bool)

(declare-fun tp!419631 () Bool)

(assert (=> b!1480219 (= e!946241 (and tp!419632 tp!419631))))

(declare-fun b!1480218 () Bool)

(declare-fun tp!419633 () Bool)

(assert (=> b!1480218 (= e!946241 tp!419633)))

(declare-fun b!1480217 () Bool)

(declare-fun tp!419634 () Bool)

(declare-fun tp!419635 () Bool)

(assert (=> b!1480217 (= e!946241 (and tp!419634 tp!419635))))

(declare-fun b!1480216 () Bool)

(assert (=> b!1480216 (= e!946241 tp_is_empty!6971)))

(assert (= (and b!1479891 ((_ is ElementMatch!4105) (regex!2791 (rule!4568 (h!21053 l2!3105))))) b!1480216))

(assert (= (and b!1479891 ((_ is Concat!6987) (regex!2791 (rule!4568 (h!21053 l2!3105))))) b!1480217))

(assert (= (and b!1479891 ((_ is Star!4105) (regex!2791 (rule!4568 (h!21053 l2!3105))))) b!1480218))

(assert (= (and b!1479891 ((_ is Union!4105) (regex!2791 (rule!4568 (h!21053 l2!3105))))) b!1480219))

(declare-fun b!1480233 () Bool)

(declare-fun b_free!38155 () Bool)

(declare-fun b_next!38859 () Bool)

(assert (=> b!1480233 (= b_free!38155 (not b_next!38859))))

(declare-fun tp!419648 () Bool)

(declare-fun b_and!102609 () Bool)

(assert (=> b!1480233 (= tp!419648 b_and!102609)))

(declare-fun b_free!38157 () Bool)

(declare-fun b_next!38861 () Bool)

(assert (=> b!1480233 (= b_free!38157 (not b_next!38861))))

(declare-fun t!137194 () Bool)

(declare-fun tb!84501 () Bool)

(assert (=> (and b!1480233 (= (toChars!3985 (transformation!2791 (rule!4568 (h!21053 (t!137143 l1!3136))))) (toChars!3985 (transformation!2791 (rule!4568 (h!21053 l1!3136))))) t!137194) tb!84501))

(declare-fun result!101614 () Bool)

(assert (= result!101614 result!101588))

(assert (=> b!1480162 t!137194))

(declare-fun t!137196 () Bool)

(declare-fun tb!84503 () Bool)

(assert (=> (and b!1480233 (= (toChars!3985 (transformation!2791 (rule!4568 (h!21053 (t!137143 l1!3136))))) (toChars!3985 (transformation!2791 (rule!4568 (h!21053 l2!3105))))) t!137196) tb!84503))

(declare-fun result!101616 () Bool)

(assert (= result!101616 result!101596))

(assert (=> b!1480171 t!137196))

(declare-fun tp!419650 () Bool)

(declare-fun b_and!102611 () Bool)

(assert (=> b!1480233 (= tp!419650 (and (=> t!137194 result!101614) (=> t!137196 result!101616) b_and!102611))))

(declare-fun e!946258 () Bool)

(assert (=> b!1480233 (= e!946258 (and tp!419648 tp!419650))))

(declare-fun e!946255 () Bool)

(assert (=> b!1479895 (= tp!419518 e!946255)))

(declare-fun e!946254 () Bool)

(declare-fun b!1480231 () Bool)

(declare-fun tp!419647 () Bool)

(declare-fun e!946256 () Bool)

(assert (=> b!1480231 (= e!946254 (and (inv!21 (value!89191 (h!21053 (t!137143 l1!3136)))) e!946256 tp!419647))))

(declare-fun b!1480232 () Bool)

(declare-fun tp!419646 () Bool)

(assert (=> b!1480232 (= e!946256 (and tp!419646 (inv!20864 (tag!3055 (rule!4568 (h!21053 (t!137143 l1!3136))))) (inv!20867 (transformation!2791 (rule!4568 (h!21053 (t!137143 l1!3136))))) e!946258))))

(declare-fun b!1480230 () Bool)

(declare-fun tp!419649 () Bool)

(assert (=> b!1480230 (= e!946255 (and (inv!20868 (h!21053 (t!137143 l1!3136))) e!946254 tp!419649))))

(assert (= b!1480232 b!1480233))

(assert (= b!1480231 b!1480232))

(assert (= b!1480230 b!1480231))

(assert (= (and b!1479895 ((_ is Cons!15652) (t!137143 l1!3136))) b!1480230))

(declare-fun m!1725917 () Bool)

(assert (=> b!1480231 m!1725917))

(declare-fun m!1725919 () Bool)

(assert (=> b!1480232 m!1725919))

(declare-fun m!1725921 () Bool)

(assert (=> b!1480232 m!1725921))

(declare-fun m!1725923 () Bool)

(assert (=> b!1480230 m!1725923))

(declare-fun b!1480237 () Bool)

(declare-fun b_free!38159 () Bool)

(declare-fun b_next!38863 () Bool)

(assert (=> b!1480237 (= b_free!38159 (not b_next!38863))))

(declare-fun tp!419653 () Bool)

(declare-fun b_and!102613 () Bool)

(assert (=> b!1480237 (= tp!419653 b_and!102613)))

(declare-fun b_free!38161 () Bool)

(declare-fun b_next!38865 () Bool)

(assert (=> b!1480237 (= b_free!38161 (not b_next!38865))))

(declare-fun tb!84505 () Bool)

(declare-fun t!137198 () Bool)

(assert (=> (and b!1480237 (= (toChars!3985 (transformation!2791 (rule!4568 (h!21053 (t!137143 l2!3105))))) (toChars!3985 (transformation!2791 (rule!4568 (h!21053 l1!3136))))) t!137198) tb!84505))

(declare-fun result!101618 () Bool)

(assert (= result!101618 result!101588))

(assert (=> b!1480162 t!137198))

(declare-fun t!137200 () Bool)

(declare-fun tb!84507 () Bool)

(assert (=> (and b!1480237 (= (toChars!3985 (transformation!2791 (rule!4568 (h!21053 (t!137143 l2!3105))))) (toChars!3985 (transformation!2791 (rule!4568 (h!21053 l2!3105))))) t!137200) tb!84507))

(declare-fun result!101620 () Bool)

(assert (= result!101620 result!101596))

(assert (=> b!1480171 t!137200))

(declare-fun tp!419655 () Bool)

(declare-fun b_and!102615 () Bool)

(assert (=> b!1480237 (= tp!419655 (and (=> t!137198 result!101618) (=> t!137200 result!101620) b_and!102615))))

(declare-fun e!946264 () Bool)

(assert (=> b!1480237 (= e!946264 (and tp!419653 tp!419655))))

(declare-fun e!946261 () Bool)

(assert (=> b!1479894 (= tp!419517 e!946261)))

(declare-fun e!946260 () Bool)

(declare-fun e!946262 () Bool)

(declare-fun tp!419652 () Bool)

(declare-fun b!1480235 () Bool)

(assert (=> b!1480235 (= e!946260 (and (inv!21 (value!89191 (h!21053 (t!137143 l2!3105)))) e!946262 tp!419652))))

(declare-fun tp!419651 () Bool)

(declare-fun b!1480236 () Bool)

(assert (=> b!1480236 (= e!946262 (and tp!419651 (inv!20864 (tag!3055 (rule!4568 (h!21053 (t!137143 l2!3105))))) (inv!20867 (transformation!2791 (rule!4568 (h!21053 (t!137143 l2!3105))))) e!946264))))

(declare-fun tp!419654 () Bool)

(declare-fun b!1480234 () Bool)

(assert (=> b!1480234 (= e!946261 (and (inv!20868 (h!21053 (t!137143 l2!3105))) e!946260 tp!419654))))

(assert (= b!1480236 b!1480237))

(assert (= b!1480235 b!1480236))

(assert (= b!1480234 b!1480235))

(assert (= (and b!1479894 ((_ is Cons!15652) (t!137143 l2!3105))) b!1480234))

(declare-fun m!1725925 () Bool)

(assert (=> b!1480235 m!1725925))

(declare-fun m!1725927 () Bool)

(assert (=> b!1480236 m!1725927))

(declare-fun m!1725929 () Bool)

(assert (=> b!1480236 m!1725929))

(declare-fun m!1725931 () Bool)

(assert (=> b!1480234 m!1725931))

(declare-fun e!946266 () Bool)

(assert (=> b!1479886 (= tp!419529 e!946266)))

(declare-fun b!1480241 () Bool)

(declare-fun tp!419657 () Bool)

(declare-fun tp!419656 () Bool)

(assert (=> b!1480241 (= e!946266 (and tp!419657 tp!419656))))

(declare-fun b!1480240 () Bool)

(declare-fun tp!419658 () Bool)

(assert (=> b!1480240 (= e!946266 tp!419658)))

(declare-fun b!1480239 () Bool)

(declare-fun tp!419659 () Bool)

(declare-fun tp!419660 () Bool)

(assert (=> b!1480239 (= e!946266 (and tp!419659 tp!419660))))

(declare-fun b!1480238 () Bool)

(assert (=> b!1480238 (= e!946266 tp_is_empty!6971)))

(assert (= (and b!1479886 ((_ is ElementMatch!4105) (regex!2791 (rule!4568 (h!21053 l1!3136))))) b!1480238))

(assert (= (and b!1479886 ((_ is Concat!6987) (regex!2791 (rule!4568 (h!21053 l1!3136))))) b!1480239))

(assert (= (and b!1479886 ((_ is Star!4105) (regex!2791 (rule!4568 (h!21053 l1!3136))))) b!1480240))

(assert (= (and b!1479886 ((_ is Union!4105) (regex!2791 (rule!4568 (h!21053 l1!3136))))) b!1480241))

(declare-fun b_lambda!46335 () Bool)

(assert (= b_lambda!46333 (or (and b!1480237 b_free!38161 (= (toChars!3985 (transformation!2791 (rule!4568 (h!21053 (t!137143 l2!3105))))) (toChars!3985 (transformation!2791 (rule!4568 (h!21053 l2!3105)))))) (and b!1479897 b_free!38133) (and b!1479883 b_free!38129 (= (toChars!3985 (transformation!2791 (h!21054 rules!4290))) (toChars!3985 (transformation!2791 (rule!4568 (h!21053 l2!3105)))))) (and b!1480214 b_free!38153 (= (toChars!3985 (transformation!2791 (h!21054 (t!137144 rules!4290)))) (toChars!3985 (transformation!2791 (rule!4568 (h!21053 l2!3105)))))) (and b!1479888 b_free!38137 (= (toChars!3985 (transformation!2791 (rule!4568 (h!21053 l1!3136)))) (toChars!3985 (transformation!2791 (rule!4568 (h!21053 l2!3105)))))) (and b!1480233 b_free!38157 (= (toChars!3985 (transformation!2791 (rule!4568 (h!21053 (t!137143 l1!3136))))) (toChars!3985 (transformation!2791 (rule!4568 (h!21053 l2!3105)))))) b_lambda!46335)))

(declare-fun b_lambda!46337 () Bool)

(assert (= b_lambda!46331 (or (and b!1479888 b_free!38137) (and b!1480237 b_free!38161 (= (toChars!3985 (transformation!2791 (rule!4568 (h!21053 (t!137143 l2!3105))))) (toChars!3985 (transformation!2791 (rule!4568 (h!21053 l1!3136)))))) (and b!1480233 b_free!38157 (= (toChars!3985 (transformation!2791 (rule!4568 (h!21053 (t!137143 l1!3136))))) (toChars!3985 (transformation!2791 (rule!4568 (h!21053 l1!3136)))))) (and b!1479897 b_free!38133 (= (toChars!3985 (transformation!2791 (rule!4568 (h!21053 l2!3105)))) (toChars!3985 (transformation!2791 (rule!4568 (h!21053 l1!3136)))))) (and b!1480214 b_free!38153 (= (toChars!3985 (transformation!2791 (h!21054 (t!137144 rules!4290)))) (toChars!3985 (transformation!2791 (rule!4568 (h!21053 l1!3136)))))) (and b!1479883 b_free!38129 (= (toChars!3985 (transformation!2791 (h!21054 rules!4290))) (toChars!3985 (transformation!2791 (rule!4568 (h!21053 l1!3136)))))) b_lambda!46337)))

(check-sat (not b!1480196) b_and!102565 (not b_next!38839) (not b_lambda!46337) (not b!1480215) (not b!1480008) (not b!1480016) (not b!1480175) (not b!1480219) (not b!1480014) b_and!102613 (not b_lambda!46335) (not d!433909) (not b!1480163) (not b!1479912) (not b!1480218) (not d!433975) (not b!1480171) (not d!434005) (not b!1479988) (not d!434015) (not b!1480156) (not b!1480179) (not d!433977) (not b!1480239) (not d!433985) (not d!433981) b_and!102607 b_and!102561 (not b_next!38855) (not b!1480168) (not b!1480150) (not b_next!38837) (not b!1480157) (not d!434009) (not d!433925) (not b_next!38857) (not b!1480006) (not b!1480232) (not b!1479982) (not b!1479943) (not b!1480169) (not b!1480162) (not b_next!38861) (not b!1480015) (not b!1479987) (not b!1480011) (not b!1479989) (not b_next!38865) (not b!1480231) (not b!1479973) (not b!1480230) (not b!1480172) (not b!1480213) b_and!102601 (not d!433997) (not d!433917) (not b!1479972) (not b!1480240) (not b_next!38841) b_and!102603 (not b!1480170) tp_is_empty!6971 (not b!1480148) (not b_next!38863) (not b!1480139) b_and!102557 (not b_next!38831) (not d!434007) b_and!102605 (not b_next!38833) (not b!1480004) (not b!1480217) (not b!1480178) (not b!1480181) (not d!433929) (not b!1480203) (not b!1480003) (not b!1480173) (not b!1480180) (not b_next!38859) (not b!1480184) (not b_next!38835) (not b!1480197) (not b!1480241) (not d!433983) (not b!1480235) b_and!102611 (not d!434011) (not b!1479914) b_and!102599 (not b!1480009) b_and!102615 b_and!102609 (not tb!84485) (not b!1480212) (not d!434001) (not b!1480174) (not d!434003) (not b!1479939) (not b!1480236) (not b!1480176) (not b!1480140) (not b!1480234) (not b!1480138) (not d!433907) (not d!433989) (not tb!84491) (not b!1479940) (not b!1480149) (not b!1480198))
(check-sat b_and!102613 (not b_next!38857) (not b_next!38861) (not b_next!38865) b_and!102601 (not b_next!38863) b_and!102565 (not b_next!38839) b_and!102611 b_and!102599 b_and!102607 b_and!102561 (not b_next!38855) (not b_next!38837) (not b_next!38841) b_and!102603 b_and!102557 (not b_next!38831) b_and!102605 (not b_next!38833) (not b_next!38859) (not b_next!38835) b_and!102615 b_and!102609)
