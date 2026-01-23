; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!223368 () Bool)

(assert start!223368)

(declare-fun b!2280585 () Bool)

(declare-fun b_free!68141 () Bool)

(declare-fun b_next!68845 () Bool)

(assert (=> b!2280585 (= b_free!68141 (not b_next!68845))))

(declare-fun tp!722748 () Bool)

(declare-fun b_and!180113 () Bool)

(assert (=> b!2280585 (= tp!722748 b_and!180113)))

(declare-fun b_free!68143 () Bool)

(declare-fun b_next!68847 () Bool)

(assert (=> b!2280585 (= b_free!68143 (not b_next!68847))))

(declare-fun tp!722750 () Bool)

(declare-fun b_and!180115 () Bool)

(assert (=> b!2280585 (= tp!722750 b_and!180115)))

(declare-fun b!2280570 () Bool)

(declare-fun b_free!68145 () Bool)

(declare-fun b_next!68849 () Bool)

(assert (=> b!2280570 (= b_free!68145 (not b_next!68849))))

(declare-fun tp!722749 () Bool)

(declare-fun b_and!180117 () Bool)

(assert (=> b!2280570 (= tp!722749 b_and!180117)))

(declare-fun b_free!68147 () Bool)

(declare-fun b_next!68851 () Bool)

(assert (=> b!2280570 (= b_free!68147 (not b_next!68851))))

(declare-fun tp!722735 () Bool)

(declare-fun b_and!180119 () Bool)

(assert (=> b!2280570 (= tp!722735 b_and!180119)))

(declare-fun b!2280577 () Bool)

(declare-fun b_free!68149 () Bool)

(declare-fun b_next!68853 () Bool)

(assert (=> b!2280577 (= b_free!68149 (not b_next!68853))))

(declare-fun tp!722743 () Bool)

(declare-fun b_and!180121 () Bool)

(assert (=> b!2280577 (= tp!722743 b_and!180121)))

(declare-fun b_free!68151 () Bool)

(declare-fun b_next!68855 () Bool)

(assert (=> b!2280577 (= b_free!68151 (not b_next!68855))))

(declare-fun tp!722746 () Bool)

(declare-fun b_and!180123 () Bool)

(assert (=> b!2280577 (= tp!722746 b_and!180123)))

(declare-fun b!2280581 () Bool)

(declare-fun b_free!68153 () Bool)

(declare-fun b_next!68857 () Bool)

(assert (=> b!2280581 (= b_free!68153 (not b_next!68857))))

(declare-fun tp!722737 () Bool)

(declare-fun b_and!180125 () Bool)

(assert (=> b!2280581 (= tp!722737 b_and!180125)))

(declare-fun b_free!68155 () Bool)

(declare-fun b_next!68859 () Bool)

(assert (=> b!2280581 (= b_free!68155 (not b_next!68859))))

(declare-fun tp!722739 () Bool)

(declare-fun b_and!180127 () Bool)

(assert (=> b!2280581 (= tp!722739 b_and!180127)))

(declare-fun b!2280555 () Bool)

(declare-fun e!1460923 () Bool)

(declare-fun e!1460930 () Bool)

(assert (=> b!2280555 (= e!1460923 e!1460930)))

(declare-fun res!974800 () Bool)

(assert (=> b!2280555 (=> res!974800 e!1460930)))

(declare-datatypes ((C!13508 0))(
  ( (C!13509 (val!7802 Int)) )
))
(declare-datatypes ((List!27223 0))(
  ( (Nil!27129) (Cons!27129 (h!32530 C!13508) (t!203479 List!27223)) )
))
(declare-fun otherP!12 () List!27223)

(declare-fun lt!846514 () List!27223)

(declare-fun size!21330 (List!27223) Int)

(assert (=> b!2280555 (= res!974800 (not (= (size!21330 otherP!12) (size!21330 lt!846514))))))

(declare-datatypes ((List!27224 0))(
  ( (Nil!27130) (Cons!27130 (h!32531 (_ BitVec 16)) (t!203480 List!27224)) )
))
(declare-datatypes ((TokenValue!4495 0))(
  ( (FloatLiteralValue!8990 (text!31910 List!27224)) (TokenValueExt!4494 (__x!18050 Int)) (Broken!22475 (value!137284 List!27224)) (Object!4588) (End!4495) (Def!4495) (Underscore!4495) (Match!4495) (Else!4495) (Error!4495) (Case!4495) (If!4495) (Extends!4495) (Abstract!4495) (Class!4495) (Val!4495) (DelimiterValue!8990 (del!4555 List!27224)) (KeywordValue!4501 (value!137285 List!27224)) (CommentValue!8990 (value!137286 List!27224)) (WhitespaceValue!8990 (value!137287 List!27224)) (IndentationValue!4495 (value!137288 List!27224)) (String!29578) (Int32!4495) (Broken!22476 (value!137289 List!27224)) (Boolean!4496) (Unit!40053) (OperatorValue!4498 (op!4555 List!27224)) (IdentifierValue!8990 (value!137290 List!27224)) (IdentifierValue!8991 (value!137291 List!27224)) (WhitespaceValue!8991 (value!137292 List!27224)) (True!8990) (False!8990) (Broken!22477 (value!137293 List!27224)) (Broken!22478 (value!137294 List!27224)) (True!8991) (RightBrace!4495) (RightBracket!4495) (Colon!4495) (Null!4495) (Comma!4495) (LeftBracket!4495) (False!8991) (LeftBrace!4495) (ImaginaryLiteralValue!4495 (text!31911 List!27224)) (StringLiteralValue!13485 (value!137295 List!27224)) (EOFValue!4495 (value!137296 List!27224)) (IdentValue!4495 (value!137297 List!27224)) (DelimiterValue!8991 (value!137298 List!27224)) (DedentValue!4495 (value!137299 List!27224)) (NewLineValue!4495 (value!137300 List!27224)) (IntegerValue!13485 (value!137301 (_ BitVec 32)) (text!31912 List!27224)) (IntegerValue!13486 (value!137302 Int) (text!31913 List!27224)) (Times!4495) (Or!4495) (Equal!4495) (Minus!4495) (Broken!22479 (value!137303 List!27224)) (And!4495) (Div!4495) (LessEqual!4495) (Mod!4495) (Concat!11176) (Not!4495) (Plus!4495) (SpaceValue!4495 (value!137304 List!27224)) (IntegerValue!13487 (value!137305 Int) (text!31914 List!27224)) (StringLiteralValue!13486 (text!31915 List!27224)) (FloatLiteralValue!8991 (text!31916 List!27224)) (BytesLiteralValue!4495 (value!137306 List!27224)) (CommentValue!8991 (value!137307 List!27224)) (StringLiteralValue!13487 (value!137308 List!27224)) (ErrorTokenValue!4495 (msg!4556 List!27224)) )
))
(declare-datatypes ((IArray!17633 0))(
  ( (IArray!17634 (innerList!8874 List!27223)) )
))
(declare-datatypes ((Conc!8814 0))(
  ( (Node!8814 (left!20577 Conc!8814) (right!20907 Conc!8814) (csize!17858 Int) (cheight!9025 Int)) (Leaf!12966 (xs!11756 IArray!17633) (csize!17859 Int)) (Empty!8814) )
))
(declare-datatypes ((BalanceConc!17356 0))(
  ( (BalanceConc!17357 (c!361898 Conc!8814)) )
))
(declare-datatypes ((Regex!6681 0))(
  ( (ElementMatch!6681 (c!361899 C!13508)) (Concat!11177 (regOne!13874 Regex!6681) (regTwo!13874 Regex!6681)) (EmptyExpr!6681) (Star!6681 (reg!7010 Regex!6681)) (EmptyLang!6681) (Union!6681 (regOne!13875 Regex!6681) (regTwo!13875 Regex!6681)) )
))
(declare-datatypes ((String!29579 0))(
  ( (String!29580 (value!137309 String)) )
))
(declare-datatypes ((TokenValueInjection!8530 0))(
  ( (TokenValueInjection!8531 (toValue!6115 Int) (toChars!5974 Int)) )
))
(declare-datatypes ((Rule!8466 0))(
  ( (Rule!8467 (regex!4333 Regex!6681) (tag!4823 String!29579) (isSeparator!4333 Bool) (transformation!4333 TokenValueInjection!8530)) )
))
(declare-datatypes ((Token!8144 0))(
  ( (Token!8145 (value!137310 TokenValue!4495) (rule!6659 Rule!8466) (size!21331 Int) (originalCharacters!5103 List!27223)) )
))
(declare-datatypes ((tuple2!26870 0))(
  ( (tuple2!26871 (_1!15945 Token!8144) (_2!15945 List!27223)) )
))
(declare-fun lt!846513 () tuple2!26870)

(declare-fun lt!846512 () List!27223)

(assert (=> b!2280555 (= (_2!15945 lt!846513) lt!846512)))

(declare-datatypes ((Unit!40054 0))(
  ( (Unit!40055) )
))
(declare-fun lt!846506 () Unit!40054)

(declare-fun input!1722 () List!27223)

(declare-fun lemmaSamePrefixThenSameSuffix!1024 (List!27223 List!27223 List!27223 List!27223 List!27223) Unit!40054)

(assert (=> b!2280555 (= lt!846506 (lemmaSamePrefixThenSameSuffix!1024 lt!846514 (_2!15945 lt!846513) lt!846514 lt!846512 input!1722))))

(declare-fun getSuffix!1114 (List!27223 List!27223) List!27223)

(assert (=> b!2280555 (= lt!846512 (getSuffix!1114 input!1722 lt!846514))))

(declare-fun isPrefix!2323 (List!27223 List!27223) Bool)

(declare-fun ++!6625 (List!27223 List!27223) List!27223)

(assert (=> b!2280555 (isPrefix!2323 lt!846514 (++!6625 lt!846514 (_2!15945 lt!846513)))))

(declare-fun lt!846509 () Unit!40054)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1528 (List!27223 List!27223) Unit!40054)

(assert (=> b!2280555 (= lt!846509 (lemmaConcatTwoListThenFirstIsPrefix!1528 lt!846514 (_2!15945 lt!846513)))))

(declare-datatypes ((List!27225 0))(
  ( (Nil!27131) (Cons!27131 (h!32532 Token!8144) (t!203481 List!27225)) )
))
(declare-fun tokens!456 () List!27225)

(declare-fun list!10572 (BalanceConc!17356) List!27223)

(declare-fun charsOf!2721 (Token!8144) BalanceConc!17356)

(assert (=> b!2280555 (= lt!846514 (list!10572 (charsOf!2721 (h!32532 tokens!456))))))

(declare-fun e!1460929 () Bool)

(declare-fun b!2280556 () Bool)

(declare-fun otherR!12 () Rule!8466)

(declare-fun tp!722736 () Bool)

(declare-fun e!1460910 () Bool)

(declare-fun inv!36711 (String!29579) Bool)

(declare-fun inv!36714 (TokenValueInjection!8530) Bool)

(assert (=> b!2280556 (= e!1460910 (and tp!722736 (inv!36711 (tag!4823 otherR!12)) (inv!36714 (transformation!4333 otherR!12)) e!1460929))))

(declare-fun b!2280557 () Bool)

(declare-fun e!1460917 () Bool)

(assert (=> b!2280557 (= e!1460917 e!1460923)))

(declare-fun res!974805 () Bool)

(assert (=> b!2280557 (=> res!974805 e!1460923)))

(assert (=> b!2280557 (= res!974805 (not (= (h!32532 tokens!456) (_1!15945 lt!846513))))))

(declare-datatypes ((LexerInterface!3930 0))(
  ( (LexerInterfaceExt!3927 (__x!18051 Int)) (Lexer!3928) )
))
(declare-fun thiss!16613 () LexerInterface!3930)

(declare-datatypes ((List!27226 0))(
  ( (Nil!27132) (Cons!27132 (h!32533 Rule!8466) (t!203482 List!27226)) )
))
(declare-fun rules!1750 () List!27226)

(declare-datatypes ((Option!5319 0))(
  ( (None!5318) (Some!5318 (v!30380 tuple2!26870)) )
))
(declare-fun get!8179 (Option!5319) tuple2!26870)

(declare-fun maxPrefix!2194 (LexerInterface!3930 List!27226 List!27223) Option!5319)

(assert (=> b!2280557 (= lt!846513 (get!8179 (maxPrefix!2194 thiss!16613 rules!1750 input!1722)))))

(declare-fun b!2280558 () Bool)

(declare-fun res!974796 () Bool)

(declare-fun e!1460912 () Bool)

(assert (=> b!2280558 (=> (not res!974796) (not e!1460912))))

(declare-fun r!2363 () Rule!8466)

(assert (=> b!2280558 (= res!974796 (not (= r!2363 otherR!12)))))

(declare-fun b!2280559 () Bool)

(declare-fun e!1460913 () Bool)

(declare-fun e!1460908 () Bool)

(assert (=> b!2280559 (= e!1460913 e!1460908)))

(declare-fun res!974794 () Bool)

(assert (=> b!2280559 (=> (not res!974794) (not e!1460908))))

(declare-datatypes ((IArray!17635 0))(
  ( (IArray!17636 (innerList!8875 List!27225)) )
))
(declare-datatypes ((Conc!8815 0))(
  ( (Node!8815 (left!20578 Conc!8815) (right!20908 Conc!8815) (csize!17860 Int) (cheight!9026 Int)) (Leaf!12967 (xs!11757 IArray!17635) (csize!17861 Int)) (Empty!8815) )
))
(declare-datatypes ((BalanceConc!17358 0))(
  ( (BalanceConc!17359 (c!361900 Conc!8815)) )
))
(declare-datatypes ((tuple2!26872 0))(
  ( (tuple2!26873 (_1!15946 BalanceConc!17358) (_2!15946 BalanceConc!17356)) )
))
(declare-fun lt!846508 () tuple2!26872)

(declare-fun suffix!886 () List!27223)

(declare-datatypes ((tuple2!26874 0))(
  ( (tuple2!26875 (_1!15947 List!27225) (_2!15947 List!27223)) )
))
(declare-fun list!10573 (BalanceConc!17358) List!27225)

(assert (=> b!2280559 (= res!974794 (= (tuple2!26875 (list!10573 (_1!15946 lt!846508)) (list!10572 (_2!15946 lt!846508))) (tuple2!26875 tokens!456 suffix!886)))))

(declare-fun lex!1769 (LexerInterface!3930 List!27226 BalanceConc!17356) tuple2!26872)

(declare-fun seqFromList!3037 (List!27223) BalanceConc!17356)

(assert (=> b!2280559 (= lt!846508 (lex!1769 thiss!16613 rules!1750 (seqFromList!3037 input!1722)))))

(declare-fun b!2280560 () Bool)

(declare-fun e!1460926 () Bool)

(declare-fun tp_is_empty!10583 () Bool)

(declare-fun tp!722738 () Bool)

(assert (=> b!2280560 (= e!1460926 (and tp_is_empty!10583 tp!722738))))

(declare-fun b!2280561 () Bool)

(declare-fun e!1460922 () Bool)

(declare-fun tp!722740 () Bool)

(assert (=> b!2280561 (= e!1460922 (and tp_is_empty!10583 tp!722740))))

(declare-fun b!2280562 () Bool)

(declare-fun res!974797 () Bool)

(assert (=> b!2280562 (=> (not res!974797) (not e!1460913))))

(declare-fun rulesInvariant!3432 (LexerInterface!3930 List!27226) Bool)

(assert (=> b!2280562 (= res!974797 (rulesInvariant!3432 thiss!16613 rules!1750))))

(declare-fun b!2280563 () Bool)

(declare-fun e!1460921 () Bool)

(declare-fun matchR!2938 (Regex!6681 List!27223) Bool)

(declare-fun head!4942 (List!27225) Token!8144)

(assert (=> b!2280563 (= e!1460921 (not (matchR!2938 (regex!4333 r!2363) (list!10572 (charsOf!2721 (head!4942 tokens!456))))))))

(declare-fun res!974801 () Bool)

(assert (=> start!223368 (=> (not res!974801) (not e!1460913))))

(get-info :version)

(assert (=> start!223368 (= res!974801 ((_ is Lexer!3928) thiss!16613))))

(assert (=> start!223368 e!1460913))

(assert (=> start!223368 true))

(assert (=> start!223368 e!1460922))

(assert (=> start!223368 e!1460910))

(assert (=> start!223368 e!1460926))

(declare-fun e!1460928 () Bool)

(assert (=> start!223368 e!1460928))

(declare-fun e!1460931 () Bool)

(assert (=> start!223368 e!1460931))

(declare-fun e!1460933 () Bool)

(assert (=> start!223368 e!1460933))

(declare-fun e!1460915 () Bool)

(assert (=> start!223368 e!1460915))

(declare-fun b!2280564 () Bool)

(declare-fun e!1460927 () Bool)

(declare-fun tp!722744 () Bool)

(assert (=> b!2280564 (= e!1460931 (and e!1460927 tp!722744))))

(declare-fun e!1460918 () Bool)

(declare-fun e!1460920 () Bool)

(declare-fun b!2280565 () Bool)

(declare-fun tp!722745 () Bool)

(assert (=> b!2280565 (= e!1460918 (and tp!722745 (inv!36711 (tag!4823 (rule!6659 (h!32532 tokens!456)))) (inv!36714 (transformation!4333 (rule!6659 (h!32532 tokens!456)))) e!1460920))))

(declare-fun b!2280566 () Bool)

(declare-fun e!1460911 () Bool)

(assert (=> b!2280566 (= e!1460912 (not e!1460911))))

(declare-fun res!974790 () Bool)

(assert (=> b!2280566 (=> res!974790 e!1460911)))

(assert (=> b!2280566 (= res!974790 e!1460921)))

(declare-fun res!974804 () Bool)

(assert (=> b!2280566 (=> (not res!974804) (not e!1460921))))

(declare-fun lt!846510 () Bool)

(assert (=> b!2280566 (= res!974804 (not lt!846510))))

(declare-fun ruleValid!1423 (LexerInterface!3930 Rule!8466) Bool)

(assert (=> b!2280566 (ruleValid!1423 thiss!16613 r!2363)))

(declare-fun lt!846505 () Unit!40054)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!828 (LexerInterface!3930 Rule!8466 List!27226) Unit!40054)

(assert (=> b!2280566 (= lt!846505 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!828 thiss!16613 r!2363 rules!1750))))

(declare-fun e!1460907 () Bool)

(declare-fun b!2280567 () Bool)

(declare-fun tp!722742 () Bool)

(assert (=> b!2280567 (= e!1460933 (and tp!722742 (inv!36711 (tag!4823 r!2363)) (inv!36714 (transformation!4333 r!2363)) e!1460907))))

(declare-fun b!2280568 () Bool)

(assert (=> b!2280568 (= e!1460930 true)))

(declare-fun lt!846507 () Bool)

(assert (=> b!2280568 (= lt!846507 (isPrefix!2323 lt!846514 input!1722))))

(assert (=> b!2280568 (= lt!846514 otherP!12)))

(declare-fun lt!846504 () Unit!40054)

(declare-fun lemmaIsPrefixSameLengthThenSameList!389 (List!27223 List!27223 List!27223) Unit!40054)

(assert (=> b!2280568 (= lt!846504 (lemmaIsPrefixSameLengthThenSameList!389 lt!846514 otherP!12 input!1722))))

(declare-fun tp!722751 () Bool)

(declare-fun b!2280569 () Bool)

(declare-fun e!1460932 () Bool)

(assert (=> b!2280569 (= e!1460927 (and tp!722751 (inv!36711 (tag!4823 (h!32533 rules!1750))) (inv!36714 (transformation!4333 (h!32533 rules!1750))) e!1460932))))

(assert (=> b!2280570 (= e!1460932 (and tp!722749 tp!722735))))

(declare-fun b!2280571 () Bool)

(declare-fun res!974791 () Bool)

(assert (=> b!2280571 (=> (not res!974791) (not e!1460912))))

(assert (=> b!2280571 (= res!974791 (isPrefix!2323 otherP!12 input!1722))))

(declare-fun b!2280572 () Bool)

(declare-fun e!1460924 () Bool)

(declare-fun size!21332 (BalanceConc!17356) Int)

(assert (=> b!2280572 (= e!1460924 (<= (size!21332 (charsOf!2721 (head!4942 tokens!456))) (size!21330 otherP!12)))))

(declare-fun e!1460934 () Bool)

(declare-fun tp!722747 () Bool)

(declare-fun b!2280573 () Bool)

(declare-fun inv!21 (TokenValue!4495) Bool)

(assert (=> b!2280573 (= e!1460934 (and (inv!21 (value!137310 (h!32532 tokens!456))) e!1460918 tp!722747))))

(declare-fun b!2280574 () Bool)

(declare-fun res!974798 () Bool)

(assert (=> b!2280574 (=> res!974798 e!1460917)))

(assert (=> b!2280574 (= res!974798 ((_ is Nil!27131) tokens!456))))

(declare-fun b!2280575 () Bool)

(declare-fun res!974793 () Bool)

(assert (=> b!2280575 (=> (not res!974793) (not e!1460913))))

(declare-fun contains!4705 (List!27226 Rule!8466) Bool)

(assert (=> b!2280575 (= res!974793 (contains!4705 rules!1750 otherR!12))))

(declare-fun b!2280576 () Bool)

(declare-fun e!1460919 () Bool)

(assert (=> b!2280576 (= e!1460919 (= (rule!6659 (head!4942 tokens!456)) r!2363))))

(assert (=> b!2280577 (= e!1460907 (and tp!722743 tp!722746))))

(declare-fun b!2280578 () Bool)

(declare-fun res!974795 () Bool)

(assert (=> b!2280578 (=> (not res!974795) (not e!1460913))))

(assert (=> b!2280578 (= res!974795 (contains!4705 rules!1750 r!2363))))

(declare-fun b!2280579 () Bool)

(declare-fun res!974799 () Bool)

(assert (=> b!2280579 (=> (not res!974799) (not e!1460912))))

(assert (=> b!2280579 (= res!974799 e!1460919)))

(declare-fun res!974803 () Bool)

(assert (=> b!2280579 (=> res!974803 e!1460919)))

(assert (=> b!2280579 (= res!974803 lt!846510)))

(declare-fun b!2280580 () Bool)

(assert (=> b!2280580 (= e!1460911 e!1460917)))

(declare-fun res!974789 () Bool)

(assert (=> b!2280580 (=> res!974789 e!1460917)))

(declare-fun getIndex!346 (List!27226 Rule!8466) Int)

(assert (=> b!2280580 (= res!974789 (<= (getIndex!346 rules!1750 r!2363) (getIndex!346 rules!1750 otherR!12)))))

(assert (=> b!2280580 (ruleValid!1423 thiss!16613 otherR!12)))

(declare-fun lt!846511 () Unit!40054)

(assert (=> b!2280580 (= lt!846511 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!828 thiss!16613 otherR!12 rules!1750))))

(assert (=> b!2280581 (= e!1460920 (and tp!722737 tp!722739))))

(declare-fun b!2280582 () Bool)

(declare-fun tp!722741 () Bool)

(declare-fun inv!36715 (Token!8144) Bool)

(assert (=> b!2280582 (= e!1460915 (and (inv!36715 (h!32532 tokens!456)) e!1460934 tp!722741))))

(declare-fun b!2280583 () Bool)

(declare-fun res!974792 () Bool)

(assert (=> b!2280583 (=> (not res!974792) (not e!1460913))))

(declare-fun isEmpty!15403 (List!27226) Bool)

(assert (=> b!2280583 (= res!974792 (not (isEmpty!15403 rules!1750)))))

(declare-fun b!2280584 () Bool)

(declare-fun tp!722734 () Bool)

(assert (=> b!2280584 (= e!1460928 (and tp_is_empty!10583 tp!722734))))

(assert (=> b!2280585 (= e!1460929 (and tp!722748 tp!722750))))

(declare-fun b!2280586 () Bool)

(assert (=> b!2280586 (= e!1460908 e!1460912)))

(declare-fun res!974806 () Bool)

(assert (=> b!2280586 (=> (not res!974806) (not e!1460912))))

(assert (=> b!2280586 (= res!974806 e!1460924)))

(declare-fun res!974802 () Bool)

(assert (=> b!2280586 (=> res!974802 e!1460924)))

(assert (=> b!2280586 (= res!974802 lt!846510)))

(declare-fun isEmpty!15404 (List!27225) Bool)

(assert (=> b!2280586 (= lt!846510 (isEmpty!15404 tokens!456))))

(assert (= (and start!223368 res!974801) b!2280583))

(assert (= (and b!2280583 res!974792) b!2280562))

(assert (= (and b!2280562 res!974797) b!2280578))

(assert (= (and b!2280578 res!974795) b!2280575))

(assert (= (and b!2280575 res!974793) b!2280559))

(assert (= (and b!2280559 res!974794) b!2280586))

(assert (= (and b!2280586 (not res!974802)) b!2280572))

(assert (= (and b!2280586 res!974806) b!2280579))

(assert (= (and b!2280579 (not res!974803)) b!2280576))

(assert (= (and b!2280579 res!974799) b!2280571))

(assert (= (and b!2280571 res!974791) b!2280558))

(assert (= (and b!2280558 res!974796) b!2280566))

(assert (= (and b!2280566 res!974804) b!2280563))

(assert (= (and b!2280566 (not res!974790)) b!2280580))

(assert (= (and b!2280580 (not res!974789)) b!2280574))

(assert (= (and b!2280574 (not res!974798)) b!2280557))

(assert (= (and b!2280557 (not res!974805)) b!2280555))

(assert (= (and b!2280555 (not res!974800)) b!2280568))

(assert (= (and start!223368 ((_ is Cons!27129) input!1722)) b!2280561))

(assert (= b!2280556 b!2280585))

(assert (= start!223368 b!2280556))

(assert (= (and start!223368 ((_ is Cons!27129) suffix!886)) b!2280560))

(assert (= (and start!223368 ((_ is Cons!27129) otherP!12)) b!2280584))

(assert (= b!2280569 b!2280570))

(assert (= b!2280564 b!2280569))

(assert (= (and start!223368 ((_ is Cons!27132) rules!1750)) b!2280564))

(assert (= b!2280567 b!2280577))

(assert (= start!223368 b!2280567))

(assert (= b!2280565 b!2280581))

(assert (= b!2280573 b!2280565))

(assert (= b!2280582 b!2280573))

(assert (= (and start!223368 ((_ is Cons!27131) tokens!456)) b!2280582))

(declare-fun m!2708583 () Bool)

(assert (=> b!2280568 m!2708583))

(declare-fun m!2708585 () Bool)

(assert (=> b!2280568 m!2708585))

(declare-fun m!2708587 () Bool)

(assert (=> b!2280582 m!2708587))

(declare-fun m!2708589 () Bool)

(assert (=> b!2280571 m!2708589))

(declare-fun m!2708591 () Bool)

(assert (=> b!2280580 m!2708591))

(declare-fun m!2708593 () Bool)

(assert (=> b!2280580 m!2708593))

(declare-fun m!2708595 () Bool)

(assert (=> b!2280580 m!2708595))

(declare-fun m!2708597 () Bool)

(assert (=> b!2280580 m!2708597))

(declare-fun m!2708599 () Bool)

(assert (=> b!2280555 m!2708599))

(declare-fun m!2708601 () Bool)

(assert (=> b!2280555 m!2708601))

(declare-fun m!2708603 () Bool)

(assert (=> b!2280555 m!2708603))

(declare-fun m!2708605 () Bool)

(assert (=> b!2280555 m!2708605))

(declare-fun m!2708607 () Bool)

(assert (=> b!2280555 m!2708607))

(declare-fun m!2708609 () Bool)

(assert (=> b!2280555 m!2708609))

(assert (=> b!2280555 m!2708599))

(declare-fun m!2708611 () Bool)

(assert (=> b!2280555 m!2708611))

(declare-fun m!2708613 () Bool)

(assert (=> b!2280555 m!2708613))

(assert (=> b!2280555 m!2708611))

(declare-fun m!2708615 () Bool)

(assert (=> b!2280555 m!2708615))

(declare-fun m!2708617 () Bool)

(assert (=> b!2280556 m!2708617))

(declare-fun m!2708619 () Bool)

(assert (=> b!2280556 m!2708619))

(declare-fun m!2708621 () Bool)

(assert (=> b!2280572 m!2708621))

(assert (=> b!2280572 m!2708621))

(declare-fun m!2708623 () Bool)

(assert (=> b!2280572 m!2708623))

(assert (=> b!2280572 m!2708623))

(declare-fun m!2708625 () Bool)

(assert (=> b!2280572 m!2708625))

(assert (=> b!2280572 m!2708607))

(declare-fun m!2708627 () Bool)

(assert (=> b!2280566 m!2708627))

(declare-fun m!2708629 () Bool)

(assert (=> b!2280566 m!2708629))

(assert (=> b!2280576 m!2708621))

(declare-fun m!2708631 () Bool)

(assert (=> b!2280559 m!2708631))

(declare-fun m!2708633 () Bool)

(assert (=> b!2280559 m!2708633))

(declare-fun m!2708635 () Bool)

(assert (=> b!2280559 m!2708635))

(assert (=> b!2280559 m!2708635))

(declare-fun m!2708637 () Bool)

(assert (=> b!2280559 m!2708637))

(declare-fun m!2708639 () Bool)

(assert (=> b!2280575 m!2708639))

(declare-fun m!2708641 () Bool)

(assert (=> b!2280573 m!2708641))

(declare-fun m!2708643 () Bool)

(assert (=> b!2280583 m!2708643))

(declare-fun m!2708645 () Bool)

(assert (=> b!2280569 m!2708645))

(declare-fun m!2708647 () Bool)

(assert (=> b!2280569 m!2708647))

(assert (=> b!2280563 m!2708621))

(assert (=> b!2280563 m!2708621))

(assert (=> b!2280563 m!2708623))

(assert (=> b!2280563 m!2708623))

(declare-fun m!2708649 () Bool)

(assert (=> b!2280563 m!2708649))

(assert (=> b!2280563 m!2708649))

(declare-fun m!2708651 () Bool)

(assert (=> b!2280563 m!2708651))

(declare-fun m!2708653 () Bool)

(assert (=> b!2280562 m!2708653))

(declare-fun m!2708655 () Bool)

(assert (=> b!2280557 m!2708655))

(assert (=> b!2280557 m!2708655))

(declare-fun m!2708657 () Bool)

(assert (=> b!2280557 m!2708657))

(declare-fun m!2708659 () Bool)

(assert (=> b!2280565 m!2708659))

(declare-fun m!2708661 () Bool)

(assert (=> b!2280565 m!2708661))

(declare-fun m!2708663 () Bool)

(assert (=> b!2280567 m!2708663))

(declare-fun m!2708665 () Bool)

(assert (=> b!2280567 m!2708665))

(declare-fun m!2708667 () Bool)

(assert (=> b!2280586 m!2708667))

(declare-fun m!2708669 () Bool)

(assert (=> b!2280578 m!2708669))

(check-sat b_and!180127 (not b_next!68851) (not b!2280564) b_and!180113 (not b!2280565) (not b_next!68857) (not b!2280572) (not b!2280583) (not b!2280568) (not b!2280573) (not b!2280569) (not b!2280556) (not b!2280562) b_and!180115 (not b!2280567) (not b!2280566) (not b!2280584) (not b!2280561) (not b!2280575) b_and!180117 b_and!180125 b_and!180119 tp_is_empty!10583 (not b!2280571) (not b!2280576) (not b_next!68855) (not b!2280578) (not b!2280586) (not b_next!68849) (not b_next!68845) (not b_next!68853) b_and!180121 (not b!2280560) (not b!2280580) (not b!2280557) (not b!2280563) b_and!180123 (not b!2280559) (not b_next!68847) (not b!2280555) (not b!2280582) (not b_next!68859))
(check-sat b_and!180115 b_and!180127 (not b_next!68851) b_and!180113 (not b_next!68857) b_and!180119 (not b_next!68855) (not b_next!68849) b_and!180123 b_and!180117 b_and!180125 (not b_next!68845) (not b_next!68853) b_and!180121 (not b_next!68847) (not b_next!68859))
