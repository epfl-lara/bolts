; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!331868 () Bool)

(assert start!331868)

(declare-fun b!3579929 () Bool)

(declare-fun b_free!91789 () Bool)

(declare-fun b_next!92493 () Bool)

(assert (=> b!3579929 (= b_free!91789 (not b_next!92493))))

(declare-fun tp!1095560 () Bool)

(declare-fun b_and!258091 () Bool)

(assert (=> b!3579929 (= tp!1095560 b_and!258091)))

(declare-fun b_free!91791 () Bool)

(declare-fun b_next!92495 () Bool)

(assert (=> b!3579929 (= b_free!91791 (not b_next!92495))))

(declare-fun tp!1095557 () Bool)

(declare-fun b_and!258093 () Bool)

(assert (=> b!3579929 (= tp!1095557 b_and!258093)))

(declare-fun b!3579925 () Bool)

(declare-fun b_free!91793 () Bool)

(declare-fun b_next!92497 () Bool)

(assert (=> b!3579925 (= b_free!91793 (not b_next!92497))))

(declare-fun tp!1095567 () Bool)

(declare-fun b_and!258095 () Bool)

(assert (=> b!3579925 (= tp!1095567 b_and!258095)))

(declare-fun b_free!91795 () Bool)

(declare-fun b_next!92499 () Bool)

(assert (=> b!3579925 (= b_free!91795 (not b_next!92499))))

(declare-fun tp!1095568 () Bool)

(declare-fun b_and!258097 () Bool)

(assert (=> b!3579925 (= tp!1095568 b_and!258097)))

(declare-fun b!3579928 () Bool)

(declare-fun b_free!91797 () Bool)

(declare-fun b_next!92501 () Bool)

(assert (=> b!3579928 (= b_free!91797 (not b_next!92501))))

(declare-fun tp!1095564 () Bool)

(declare-fun b_and!258099 () Bool)

(assert (=> b!3579928 (= tp!1095564 b_and!258099)))

(declare-fun b_free!91799 () Bool)

(declare-fun b_next!92503 () Bool)

(assert (=> b!3579928 (= b_free!91799 (not b_next!92503))))

(declare-fun tp!1095559 () Bool)

(declare-fun b_and!258101 () Bool)

(assert (=> b!3579928 (= tp!1095559 b_and!258101)))

(declare-fun b!3579924 () Bool)

(declare-fun b_free!91801 () Bool)

(declare-fun b_next!92505 () Bool)

(assert (=> b!3579924 (= b_free!91801 (not b_next!92505))))

(declare-fun tp!1095558 () Bool)

(declare-fun b_and!258103 () Bool)

(assert (=> b!3579924 (= tp!1095558 b_and!258103)))

(declare-fun b_free!91803 () Bool)

(declare-fun b_next!92507 () Bool)

(assert (=> b!3579924 (= b_free!91803 (not b_next!92507))))

(declare-fun tp!1095565 () Bool)

(declare-fun b_and!258105 () Bool)

(assert (=> b!3579924 (= tp!1095565 b_and!258105)))

(declare-datatypes ((List!37708 0))(
  ( (Nil!37584) (Cons!37584 (h!43004 (_ BitVec 16)) (t!290219 List!37708)) )
))
(declare-datatypes ((TokenValue!5761 0))(
  ( (FloatLiteralValue!11522 (text!40772 List!37708)) (TokenValueExt!5760 (__x!23739 Int)) (Broken!28805 (value!178069 List!37708)) (Object!5884) (End!5761) (Def!5761) (Underscore!5761) (Match!5761) (Else!5761) (Error!5761) (Case!5761) (If!5761) (Extends!5761) (Abstract!5761) (Class!5761) (Val!5761) (DelimiterValue!11522 (del!5821 List!37708)) (KeywordValue!5767 (value!178070 List!37708)) (CommentValue!11522 (value!178071 List!37708)) (WhitespaceValue!11522 (value!178072 List!37708)) (IndentationValue!5761 (value!178073 List!37708)) (String!42140) (Int32!5761) (Broken!28806 (value!178074 List!37708)) (Boolean!5762) (Unit!53605) (OperatorValue!5764 (op!5821 List!37708)) (IdentifierValue!11522 (value!178075 List!37708)) (IdentifierValue!11523 (value!178076 List!37708)) (WhitespaceValue!11523 (value!178077 List!37708)) (True!11522) (False!11522) (Broken!28807 (value!178078 List!37708)) (Broken!28808 (value!178079 List!37708)) (True!11523) (RightBrace!5761) (RightBracket!5761) (Colon!5761) (Null!5761) (Comma!5761) (LeftBracket!5761) (False!11523) (LeftBrace!5761) (ImaginaryLiteralValue!5761 (text!40773 List!37708)) (StringLiteralValue!17283 (value!178080 List!37708)) (EOFValue!5761 (value!178081 List!37708)) (IdentValue!5761 (value!178082 List!37708)) (DelimiterValue!11523 (value!178083 List!37708)) (DedentValue!5761 (value!178084 List!37708)) (NewLineValue!5761 (value!178085 List!37708)) (IntegerValue!17283 (value!178086 (_ BitVec 32)) (text!40774 List!37708)) (IntegerValue!17284 (value!178087 Int) (text!40775 List!37708)) (Times!5761) (Or!5761) (Equal!5761) (Minus!5761) (Broken!28809 (value!178088 List!37708)) (And!5761) (Div!5761) (LessEqual!5761) (Mod!5761) (Concat!16051) (Not!5761) (Plus!5761) (SpaceValue!5761 (value!178089 List!37708)) (IntegerValue!17285 (value!178090 Int) (text!40776 List!37708)) (StringLiteralValue!17284 (text!40777 List!37708)) (FloatLiteralValue!11523 (text!40778 List!37708)) (BytesLiteralValue!5761 (value!178091 List!37708)) (CommentValue!11523 (value!178092 List!37708)) (StringLiteralValue!17285 (value!178093 List!37708)) (ErrorTokenValue!5761 (msg!5822 List!37708)) )
))
(declare-datatypes ((C!20766 0))(
  ( (C!20767 (val!12431 Int)) )
))
(declare-datatypes ((List!37709 0))(
  ( (Nil!37585) (Cons!37585 (h!43005 C!20766) (t!290220 List!37709)) )
))
(declare-datatypes ((Regex!10290 0))(
  ( (ElementMatch!10290 (c!620414 C!20766)) (Concat!16052 (regOne!21092 Regex!10290) (regTwo!21092 Regex!10290)) (EmptyExpr!10290) (Star!10290 (reg!10619 Regex!10290)) (EmptyLang!10290) (Union!10290 (regOne!21093 Regex!10290) (regTwo!21093 Regex!10290)) )
))
(declare-datatypes ((String!42141 0))(
  ( (String!42142 (value!178094 String)) )
))
(declare-datatypes ((IArray!22863 0))(
  ( (IArray!22864 (innerList!11489 List!37709)) )
))
(declare-datatypes ((Conc!11429 0))(
  ( (Node!11429 (left!29393 Conc!11429) (right!29723 Conc!11429) (csize!23088 Int) (cheight!11640 Int)) (Leaf!17806 (xs!14631 IArray!22863) (csize!23089 Int)) (Empty!11429) )
))
(declare-datatypes ((BalanceConc!22472 0))(
  ( (BalanceConc!22473 (c!620415 Conc!11429)) )
))
(declare-datatypes ((TokenValueInjection!10950 0))(
  ( (TokenValueInjection!10951 (toValue!7807 Int) (toChars!7666 Int)) )
))
(declare-datatypes ((Rule!10862 0))(
  ( (Rule!10863 (regex!5531 Regex!10290) (tag!6197 String!42141) (isSeparator!5531 Bool) (transformation!5531 TokenValueInjection!10950)) )
))
(declare-datatypes ((List!37710 0))(
  ( (Nil!37586) (Cons!37586 (h!43006 Rule!10862) (t!290221 List!37710)) )
))
(declare-fun rules!3307 () List!37710)

(declare-fun e!2214840 () Bool)

(declare-fun e!2214839 () Bool)

(declare-fun tp!1095555 () Bool)

(declare-fun b!3579917 () Bool)

(declare-fun inv!50876 (String!42141) Bool)

(declare-fun inv!50879 (TokenValueInjection!10950) Bool)

(assert (=> b!3579917 (= e!2214840 (and tp!1095555 (inv!50876 (tag!6197 (h!43006 rules!3307))) (inv!50879 (transformation!5531 (h!43006 rules!3307))) e!2214839))))

(declare-fun b!3579918 () Bool)

(declare-fun res!1444280 () Bool)

(declare-fun e!2214833 () Bool)

(assert (=> b!3579918 (=> (not res!1444280) (not e!2214833))))

(declare-fun anOtherTypeRule!33 () Rule!10862)

(declare-fun contains!7135 (List!37710 Rule!10862) Bool)

(assert (=> b!3579918 (= res!1444280 (contains!7135 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3579919 () Bool)

(declare-datatypes ((LexerInterface!5120 0))(
  ( (LexerInterfaceExt!5117 (__x!23740 Int)) (Lexer!5118) )
))
(declare-fun thiss!23823 () LexerInterface!5120)

(declare-fun rulesValidInductive!1914 (LexerInterface!5120 List!37710) Bool)

(assert (=> b!3579919 (= e!2214833 (not (rulesValidInductive!1914 thiss!23823 rules!3307)))))

(declare-fun b!3579920 () Bool)

(declare-fun rule!403 () Rule!10862)

(declare-fun tp!1095566 () Bool)

(declare-fun e!2214838 () Bool)

(declare-fun e!2214834 () Bool)

(assert (=> b!3579920 (= e!2214834 (and tp!1095566 (inv!50876 (tag!6197 rule!403)) (inv!50879 (transformation!5531 rule!403)) e!2214838))))

(declare-fun b!3579921 () Bool)

(declare-fun res!1444279 () Bool)

(assert (=> b!3579921 (=> (not res!1444279) (not e!2214833))))

(declare-datatypes ((Token!10428 0))(
  ( (Token!10429 (value!178095 TokenValue!5761) (rule!8243 Rule!10862) (size!28662 Int) (originalCharacters!6245 List!37709)) )
))
(declare-fun token!511 () Token!10428)

(declare-datatypes ((tuple2!37504 0))(
  ( (tuple2!37505 (_1!21886 Token!10428) (_2!21886 List!37709)) )
))
(declare-datatypes ((Option!7719 0))(
  ( (None!7718) (Some!7718 (v!37356 tuple2!37504)) )
))
(declare-fun isDefined!5953 (Option!7719) Bool)

(declare-fun maxPrefix!2654 (LexerInterface!5120 List!37710 List!37709) Option!7719)

(declare-fun list!13802 (BalanceConc!22472) List!37709)

(declare-fun charsOf!3545 (Token!10428) BalanceConc!22472)

(assert (=> b!3579921 (= res!1444279 (isDefined!5953 (maxPrefix!2654 thiss!23823 rules!3307 (list!13802 (charsOf!3545 token!511)))))))

(declare-fun b!3579922 () Bool)

(declare-fun res!1444278 () Bool)

(assert (=> b!3579922 (=> (not res!1444278) (not e!2214833))))

(assert (=> b!3579922 (= res!1444278 (not (= (isSeparator!5531 anOtherTypeRule!33) (isSeparator!5531 rule!403))))))

(declare-fun b!3579923 () Bool)

(declare-fun res!1444277 () Bool)

(assert (=> b!3579923 (=> (not res!1444277) (not e!2214833))))

(declare-fun isEmpty!22126 (List!37710) Bool)

(assert (=> b!3579923 (= res!1444277 (not (isEmpty!22126 rules!3307)))))

(declare-fun e!2214837 () Bool)

(assert (=> b!3579924 (= e!2214837 (and tp!1095558 tp!1095565))))

(assert (=> b!3579925 (= e!2214838 (and tp!1095567 tp!1095568))))

(declare-fun b!3579926 () Bool)

(declare-fun tp!1095561 () Bool)

(declare-fun e!2214830 () Bool)

(declare-fun e!2214829 () Bool)

(assert (=> b!3579926 (= e!2214830 (and tp!1095561 (inv!50876 (tag!6197 anOtherTypeRule!33)) (inv!50879 (transformation!5531 anOtherTypeRule!33)) e!2214829))))

(declare-fun b!3579927 () Bool)

(declare-fun res!1444281 () Bool)

(assert (=> b!3579927 (=> (not res!1444281) (not e!2214833))))

(assert (=> b!3579927 (= res!1444281 (contains!7135 rules!3307 rule!403))))

(assert (=> b!3579929 (= e!2214839 (and tp!1095560 tp!1095557))))

(declare-fun e!2214825 () Bool)

(declare-fun tp!1095562 () Bool)

(declare-fun b!3579930 () Bool)

(assert (=> b!3579930 (= e!2214825 (and tp!1095562 (inv!50876 (tag!6197 (rule!8243 token!511))) (inv!50879 (transformation!5531 (rule!8243 token!511))) e!2214837))))

(declare-fun b!3579931 () Bool)

(declare-fun e!2214826 () Bool)

(declare-fun tp!1095556 () Bool)

(assert (=> b!3579931 (= e!2214826 (and e!2214840 tp!1095556))))

(declare-fun b!3579932 () Bool)

(declare-fun e!2214831 () Bool)

(declare-fun tp!1095563 () Bool)

(declare-fun inv!21 (TokenValue!5761) Bool)

(assert (=> b!3579932 (= e!2214831 (and (inv!21 (value!178095 token!511)) e!2214825 tp!1095563))))

(declare-fun b!3579933 () Bool)

(declare-fun res!1444282 () Bool)

(assert (=> b!3579933 (=> (not res!1444282) (not e!2214833))))

(declare-fun rulesInvariant!4517 (LexerInterface!5120 List!37710) Bool)

(assert (=> b!3579933 (= res!1444282 (rulesInvariant!4517 thiss!23823 rules!3307))))

(assert (=> b!3579928 (= e!2214829 (and tp!1095564 tp!1095559))))

(declare-fun res!1444283 () Bool)

(assert (=> start!331868 (=> (not res!1444283) (not e!2214833))))

(assert (=> start!331868 (= res!1444283 (is-Lexer!5118 thiss!23823))))

(assert (=> start!331868 e!2214833))

(assert (=> start!331868 e!2214826))

(assert (=> start!331868 true))

(declare-fun inv!50880 (Token!10428) Bool)

(assert (=> start!331868 (and (inv!50880 token!511) e!2214831)))

(assert (=> start!331868 e!2214834))

(assert (=> start!331868 e!2214830))

(assert (= (and start!331868 res!1444283) b!3579923))

(assert (= (and b!3579923 res!1444277) b!3579933))

(assert (= (and b!3579933 res!1444282) b!3579927))

(assert (= (and b!3579927 res!1444281) b!3579918))

(assert (= (and b!3579918 res!1444280) b!3579922))

(assert (= (and b!3579922 res!1444278) b!3579921))

(assert (= (and b!3579921 res!1444279) b!3579919))

(assert (= b!3579917 b!3579929))

(assert (= b!3579931 b!3579917))

(assert (= (and start!331868 (is-Cons!37586 rules!3307)) b!3579931))

(assert (= b!3579930 b!3579924))

(assert (= b!3579932 b!3579930))

(assert (= start!331868 b!3579932))

(assert (= b!3579920 b!3579925))

(assert (= start!331868 b!3579920))

(assert (= b!3579926 b!3579928))

(assert (= start!331868 b!3579926))

(declare-fun m!4073973 () Bool)

(assert (=> start!331868 m!4073973))

(declare-fun m!4073975 () Bool)

(assert (=> b!3579926 m!4073975))

(declare-fun m!4073977 () Bool)

(assert (=> b!3579926 m!4073977))

(declare-fun m!4073979 () Bool)

(assert (=> b!3579920 m!4073979))

(declare-fun m!4073981 () Bool)

(assert (=> b!3579920 m!4073981))

(declare-fun m!4073983 () Bool)

(assert (=> b!3579921 m!4073983))

(assert (=> b!3579921 m!4073983))

(declare-fun m!4073985 () Bool)

(assert (=> b!3579921 m!4073985))

(assert (=> b!3579921 m!4073985))

(declare-fun m!4073987 () Bool)

(assert (=> b!3579921 m!4073987))

(assert (=> b!3579921 m!4073987))

(declare-fun m!4073989 () Bool)

(assert (=> b!3579921 m!4073989))

(declare-fun m!4073991 () Bool)

(assert (=> b!3579917 m!4073991))

(declare-fun m!4073993 () Bool)

(assert (=> b!3579917 m!4073993))

(declare-fun m!4073995 () Bool)

(assert (=> b!3579919 m!4073995))

(declare-fun m!4073997 () Bool)

(assert (=> b!3579923 m!4073997))

(declare-fun m!4073999 () Bool)

(assert (=> b!3579927 m!4073999))

(declare-fun m!4074001 () Bool)

(assert (=> b!3579933 m!4074001))

(declare-fun m!4074003 () Bool)

(assert (=> b!3579918 m!4074003))

(declare-fun m!4074005 () Bool)

(assert (=> b!3579930 m!4074005))

(declare-fun m!4074007 () Bool)

(assert (=> b!3579930 m!4074007))

(declare-fun m!4074009 () Bool)

(assert (=> b!3579932 m!4074009))

(push 1)

(assert (not b!3579933))

(assert (not b_next!92497))

(assert b_and!258097)

(assert b_and!258105)

(assert (not b_next!92507))

(assert b_and!258095)

(assert (not b!3579921))

(assert (not b_next!92499))

(assert (not b!3579919))

(assert (not b!3579926))

(assert (not b!3579918))

(assert (not b!3579920))

(assert (not b_next!92493))

(assert b_and!258101)

(assert (not b!3579923))

(assert (not b!3579917))

(assert (not b_next!92495))

(assert b_and!258099)

(assert (not b_next!92503))

(assert (not b_next!92505))

(assert (not b!3579930))

(assert (not b!3579932))

(assert (not b_next!92501))

(assert b_and!258091)

(assert b_and!258103)

(assert (not start!331868))

(assert (not b!3579931))

(assert b_and!258093)

(assert (not b!3579927))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!92497))

(assert b_and!258097)

(assert b_and!258105)

(assert (not b_next!92505))

(assert (not b_next!92501))

(assert (not b_next!92507))

(assert b_and!258095)

(assert b_and!258093)

(assert (not b_next!92499))

(assert (not b_next!92493))

(assert b_and!258101)

(assert (not b_next!92495))

(assert b_and!258099)

(assert (not b_next!92503))

(assert b_and!258091)

(assert b_and!258103)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1055899 () Bool)

(declare-fun c!620423 () Bool)

(assert (=> d!1055899 (= c!620423 (is-IntegerValue!17283 (value!178095 token!511)))))

(declare-fun e!2214895 () Bool)

(assert (=> d!1055899 (= (inv!21 (value!178095 token!511)) e!2214895)))

(declare-fun b!3579995 () Bool)

(declare-fun e!2214897 () Bool)

(assert (=> b!3579995 (= e!2214895 e!2214897)))

(declare-fun c!620424 () Bool)

(assert (=> b!3579995 (= c!620424 (is-IntegerValue!17284 (value!178095 token!511)))))

(declare-fun b!3579996 () Bool)

(declare-fun inv!17 (TokenValue!5761) Bool)

(assert (=> b!3579996 (= e!2214897 (inv!17 (value!178095 token!511)))))

(declare-fun b!3579997 () Bool)

(declare-fun res!1444318 () Bool)

(declare-fun e!2214896 () Bool)

(assert (=> b!3579997 (=> res!1444318 e!2214896)))

(assert (=> b!3579997 (= res!1444318 (not (is-IntegerValue!17285 (value!178095 token!511))))))

(assert (=> b!3579997 (= e!2214897 e!2214896)))

(declare-fun b!3579998 () Bool)

(declare-fun inv!15 (TokenValue!5761) Bool)

(assert (=> b!3579998 (= e!2214896 (inv!15 (value!178095 token!511)))))

(declare-fun b!3579999 () Bool)

(declare-fun inv!16 (TokenValue!5761) Bool)

(assert (=> b!3579999 (= e!2214895 (inv!16 (value!178095 token!511)))))

(assert (= (and d!1055899 c!620423) b!3579999))

(assert (= (and d!1055899 (not c!620423)) b!3579995))

(assert (= (and b!3579995 c!620424) b!3579996))

(assert (= (and b!3579995 (not c!620424)) b!3579997))

(assert (= (and b!3579997 (not res!1444318)) b!3579998))

(declare-fun m!4074049 () Bool)

(assert (=> b!3579996 m!4074049))

(declare-fun m!4074051 () Bool)

(assert (=> b!3579998 m!4074051))

(declare-fun m!4074053 () Bool)

(assert (=> b!3579999 m!4074053))

(assert (=> b!3579932 d!1055899))

(declare-fun d!1055901 () Bool)

(declare-fun isEmpty!22128 (Option!7719) Bool)

(assert (=> d!1055901 (= (isDefined!5953 (maxPrefix!2654 thiss!23823 rules!3307 (list!13802 (charsOf!3545 token!511)))) (not (isEmpty!22128 (maxPrefix!2654 thiss!23823 rules!3307 (list!13802 (charsOf!3545 token!511))))))))

(declare-fun bs!569862 () Bool)

(assert (= bs!569862 d!1055901))

(assert (=> bs!569862 m!4073987))

(declare-fun m!4074055 () Bool)

(assert (=> bs!569862 m!4074055))

(assert (=> b!3579921 d!1055901))

(declare-fun d!1055903 () Bool)

(declare-fun e!2214912 () Bool)

(assert (=> d!1055903 e!2214912))

(declare-fun res!1444345 () Bool)

(assert (=> d!1055903 (=> res!1444345 e!2214912)))

(declare-fun lt!1228425 () Option!7719)

(assert (=> d!1055903 (= res!1444345 (isEmpty!22128 lt!1228425))))

(declare-fun e!2214914 () Option!7719)

(assert (=> d!1055903 (= lt!1228425 e!2214914)))

(declare-fun c!620427 () Bool)

(assert (=> d!1055903 (= c!620427 (and (is-Cons!37586 rules!3307) (is-Nil!37586 (t!290221 rules!3307))))))

(declare-datatypes ((Unit!53607 0))(
  ( (Unit!53608) )
))
(declare-fun lt!1228421 () Unit!53607)

(declare-fun lt!1228422 () Unit!53607)

(assert (=> d!1055903 (= lt!1228421 lt!1228422)))

(declare-fun isPrefix!2901 (List!37709 List!37709) Bool)

(assert (=> d!1055903 (isPrefix!2901 (list!13802 (charsOf!3545 token!511)) (list!13802 (charsOf!3545 token!511)))))

(declare-fun lemmaIsPrefixRefl!1860 (List!37709 List!37709) Unit!53607)

(assert (=> d!1055903 (= lt!1228422 (lemmaIsPrefixRefl!1860 (list!13802 (charsOf!3545 token!511)) (list!13802 (charsOf!3545 token!511))))))

(assert (=> d!1055903 (rulesValidInductive!1914 thiss!23823 rules!3307)))

(assert (=> d!1055903 (= (maxPrefix!2654 thiss!23823 rules!3307 (list!13802 (charsOf!3545 token!511))) lt!1228425)))

(declare-fun b!3580026 () Bool)

(declare-fun res!1444344 () Bool)

(declare-fun e!2214913 () Bool)

(assert (=> b!3580026 (=> (not res!1444344) (not e!2214913))))

(declare-fun size!28664 (List!37709) Int)

(declare-fun get!12100 (Option!7719) tuple2!37504)

(assert (=> b!3580026 (= res!1444344 (< (size!28664 (_2!21886 (get!12100 lt!1228425))) (size!28664 (list!13802 (charsOf!3545 token!511)))))))

(declare-fun b!3580027 () Bool)

(declare-fun res!1444341 () Bool)

(assert (=> b!3580027 (=> (not res!1444341) (not e!2214913))))

(declare-fun matchR!4866 (Regex!10290 List!37709) Bool)

(assert (=> b!3580027 (= res!1444341 (matchR!4866 (regex!5531 (rule!8243 (_1!21886 (get!12100 lt!1228425)))) (list!13802 (charsOf!3545 (_1!21886 (get!12100 lt!1228425))))))))

(declare-fun b!3580028 () Bool)

(declare-fun res!1444347 () Bool)

(assert (=> b!3580028 (=> (not res!1444347) (not e!2214913))))

(declare-fun ++!9350 (List!37709 List!37709) List!37709)

(assert (=> b!3580028 (= res!1444347 (= (++!9350 (list!13802 (charsOf!3545 (_1!21886 (get!12100 lt!1228425)))) (_2!21886 (get!12100 lt!1228425))) (list!13802 (charsOf!3545 token!511))))))

(declare-fun b!3580029 () Bool)

(declare-fun res!1444346 () Bool)

(assert (=> b!3580029 (=> (not res!1444346) (not e!2214913))))

(declare-fun apply!9056 (TokenValueInjection!10950 BalanceConc!22472) TokenValue!5761)

(declare-fun seqFromList!4099 (List!37709) BalanceConc!22472)

(assert (=> b!3580029 (= res!1444346 (= (value!178095 (_1!21886 (get!12100 lt!1228425))) (apply!9056 (transformation!5531 (rule!8243 (_1!21886 (get!12100 lt!1228425)))) (seqFromList!4099 (originalCharacters!6245 (_1!21886 (get!12100 lt!1228425)))))))))

(declare-fun b!3580030 () Bool)

(declare-fun call!259281 () Option!7719)

(assert (=> b!3580030 (= e!2214914 call!259281)))

(declare-fun b!3580031 () Bool)

(declare-fun lt!1228424 () Option!7719)

(declare-fun lt!1228423 () Option!7719)

(assert (=> b!3580031 (= e!2214914 (ite (and (is-None!7718 lt!1228424) (is-None!7718 lt!1228423)) None!7718 (ite (is-None!7718 lt!1228423) lt!1228424 (ite (is-None!7718 lt!1228424) lt!1228423 (ite (>= (size!28662 (_1!21886 (v!37356 lt!1228424))) (size!28662 (_1!21886 (v!37356 lt!1228423)))) lt!1228424 lt!1228423)))))))

(assert (=> b!3580031 (= lt!1228424 call!259281)))

(assert (=> b!3580031 (= lt!1228423 (maxPrefix!2654 thiss!23823 (t!290221 rules!3307) (list!13802 (charsOf!3545 token!511))))))

(declare-fun b!3580032 () Bool)

(assert (=> b!3580032 (= e!2214913 (contains!7135 rules!3307 (rule!8243 (_1!21886 (get!12100 lt!1228425)))))))

(declare-fun bm!259276 () Bool)

(declare-fun maxPrefixOneRule!1819 (LexerInterface!5120 Rule!10862 List!37709) Option!7719)

(assert (=> bm!259276 (= call!259281 (maxPrefixOneRule!1819 thiss!23823 (h!43006 rules!3307) (list!13802 (charsOf!3545 token!511))))))

(declare-fun b!3580033 () Bool)

(assert (=> b!3580033 (= e!2214912 e!2214913)))

(declare-fun res!1444342 () Bool)

(assert (=> b!3580033 (=> (not res!1444342) (not e!2214913))))

(assert (=> b!3580033 (= res!1444342 (isDefined!5953 lt!1228425))))

(declare-fun b!3580034 () Bool)

(declare-fun res!1444343 () Bool)

(assert (=> b!3580034 (=> (not res!1444343) (not e!2214913))))

(assert (=> b!3580034 (= res!1444343 (= (list!13802 (charsOf!3545 (_1!21886 (get!12100 lt!1228425)))) (originalCharacters!6245 (_1!21886 (get!12100 lt!1228425)))))))

(assert (= (and d!1055903 c!620427) b!3580030))

(assert (= (and d!1055903 (not c!620427)) b!3580031))

(assert (= (or b!3580030 b!3580031) bm!259276))

(assert (= (and d!1055903 (not res!1444345)) b!3580033))

(assert (= (and b!3580033 res!1444342) b!3580034))

(assert (= (and b!3580034 res!1444343) b!3580026))

(assert (= (and b!3580026 res!1444344) b!3580028))

(assert (= (and b!3580028 res!1444347) b!3580029))

(assert (= (and b!3580029 res!1444346) b!3580027))

(assert (= (and b!3580027 res!1444341) b!3580032))

(assert (=> bm!259276 m!4073985))

(declare-fun m!4074065 () Bool)

(assert (=> bm!259276 m!4074065))

(declare-fun m!4074067 () Bool)

(assert (=> d!1055903 m!4074067))

(assert (=> d!1055903 m!4073985))

(assert (=> d!1055903 m!4073985))

(declare-fun m!4074069 () Bool)

(assert (=> d!1055903 m!4074069))

(assert (=> d!1055903 m!4073985))

(assert (=> d!1055903 m!4073985))

(declare-fun m!4074071 () Bool)

(assert (=> d!1055903 m!4074071))

(assert (=> d!1055903 m!4073995))

(declare-fun m!4074073 () Bool)

(assert (=> b!3580026 m!4074073))

(declare-fun m!4074075 () Bool)

(assert (=> b!3580026 m!4074075))

(assert (=> b!3580026 m!4073985))

(declare-fun m!4074077 () Bool)

(assert (=> b!3580026 m!4074077))

(declare-fun m!4074079 () Bool)

(assert (=> b!3580033 m!4074079))

(assert (=> b!3580034 m!4074073))

(declare-fun m!4074081 () Bool)

(assert (=> b!3580034 m!4074081))

(assert (=> b!3580034 m!4074081))

(declare-fun m!4074083 () Bool)

(assert (=> b!3580034 m!4074083))

(assert (=> b!3580027 m!4074073))

(assert (=> b!3580027 m!4074081))

(assert (=> b!3580027 m!4074081))

(assert (=> b!3580027 m!4074083))

(assert (=> b!3580027 m!4074083))

(declare-fun m!4074085 () Bool)

(assert (=> b!3580027 m!4074085))

(assert (=> b!3580032 m!4074073))

(declare-fun m!4074087 () Bool)

(assert (=> b!3580032 m!4074087))

(assert (=> b!3580031 m!4073985))

(declare-fun m!4074089 () Bool)

(assert (=> b!3580031 m!4074089))

(assert (=> b!3580028 m!4074073))

(assert (=> b!3580028 m!4074081))

(assert (=> b!3580028 m!4074081))

(assert (=> b!3580028 m!4074083))

(assert (=> b!3580028 m!4074083))

(declare-fun m!4074091 () Bool)

(assert (=> b!3580028 m!4074091))

(assert (=> b!3580029 m!4074073))

(declare-fun m!4074093 () Bool)

(assert (=> b!3580029 m!4074093))

(assert (=> b!3580029 m!4074093))

(declare-fun m!4074095 () Bool)

(assert (=> b!3580029 m!4074095))

(assert (=> b!3579921 d!1055903))

(declare-fun d!1055915 () Bool)

(declare-fun list!13804 (Conc!11429) List!37709)

(assert (=> d!1055915 (= (list!13802 (charsOf!3545 token!511)) (list!13804 (c!620415 (charsOf!3545 token!511))))))

(declare-fun bs!569863 () Bool)

(assert (= bs!569863 d!1055915))

(declare-fun m!4074097 () Bool)

(assert (=> bs!569863 m!4074097))

(assert (=> b!3579921 d!1055915))

(declare-fun d!1055917 () Bool)

(declare-fun lt!1228428 () BalanceConc!22472)

(assert (=> d!1055917 (= (list!13802 lt!1228428) (originalCharacters!6245 token!511))))

(declare-fun dynLambda!16178 (Int TokenValue!5761) BalanceConc!22472)

(assert (=> d!1055917 (= lt!1228428 (dynLambda!16178 (toChars!7666 (transformation!5531 (rule!8243 token!511))) (value!178095 token!511)))))

(assert (=> d!1055917 (= (charsOf!3545 token!511) lt!1228428)))

(declare-fun b_lambda!105795 () Bool)

(assert (=> (not b_lambda!105795) (not d!1055917)))

(declare-fun tb!204283 () Bool)

(declare-fun t!290226 () Bool)

(assert (=> (and b!3579929 (= (toChars!7666 (transformation!5531 (h!43006 rules!3307))) (toChars!7666 (transformation!5531 (rule!8243 token!511)))) t!290226) tb!204283))

(declare-fun b!3580039 () Bool)

(declare-fun e!2214917 () Bool)

(declare-fun tp!1095613 () Bool)

(declare-fun inv!50883 (Conc!11429) Bool)

(assert (=> b!3580039 (= e!2214917 (and (inv!50883 (c!620415 (dynLambda!16178 (toChars!7666 (transformation!5531 (rule!8243 token!511))) (value!178095 token!511)))) tp!1095613))))

(declare-fun result!249008 () Bool)

(declare-fun inv!50884 (BalanceConc!22472) Bool)

(assert (=> tb!204283 (= result!249008 (and (inv!50884 (dynLambda!16178 (toChars!7666 (transformation!5531 (rule!8243 token!511))) (value!178095 token!511))) e!2214917))))

(assert (= tb!204283 b!3580039))

(declare-fun m!4074099 () Bool)

(assert (=> b!3580039 m!4074099))

(declare-fun m!4074101 () Bool)

(assert (=> tb!204283 m!4074101))

(assert (=> d!1055917 t!290226))

(declare-fun b_and!258123 () Bool)

(assert (= b_and!258093 (and (=> t!290226 result!249008) b_and!258123)))

(declare-fun t!290228 () Bool)

(declare-fun tb!204285 () Bool)

(assert (=> (and b!3579925 (= (toChars!7666 (transformation!5531 rule!403)) (toChars!7666 (transformation!5531 (rule!8243 token!511)))) t!290228) tb!204285))

(declare-fun result!249012 () Bool)

(assert (= result!249012 result!249008))

(assert (=> d!1055917 t!290228))

(declare-fun b_and!258125 () Bool)

(assert (= b_and!258097 (and (=> t!290228 result!249012) b_and!258125)))

(declare-fun t!290230 () Bool)

(declare-fun tb!204287 () Bool)

(assert (=> (and b!3579928 (= (toChars!7666 (transformation!5531 anOtherTypeRule!33)) (toChars!7666 (transformation!5531 (rule!8243 token!511)))) t!290230) tb!204287))

(declare-fun result!249014 () Bool)

(assert (= result!249014 result!249008))

(assert (=> d!1055917 t!290230))

(declare-fun b_and!258127 () Bool)

(assert (= b_and!258101 (and (=> t!290230 result!249014) b_and!258127)))

(declare-fun t!290232 () Bool)

(declare-fun tb!204289 () Bool)

(assert (=> (and b!3579924 (= (toChars!7666 (transformation!5531 (rule!8243 token!511))) (toChars!7666 (transformation!5531 (rule!8243 token!511)))) t!290232) tb!204289))

(declare-fun result!249016 () Bool)

(assert (= result!249016 result!249008))

(assert (=> d!1055917 t!290232))

(declare-fun b_and!258129 () Bool)

(assert (= b_and!258105 (and (=> t!290232 result!249016) b_and!258129)))

(declare-fun m!4074103 () Bool)

(assert (=> d!1055917 m!4074103))

(declare-fun m!4074105 () Bool)

(assert (=> d!1055917 m!4074105))

(assert (=> b!3579921 d!1055917))

(declare-fun d!1055919 () Bool)

(declare-fun res!1444350 () Bool)

(declare-fun e!2214920 () Bool)

(assert (=> d!1055919 (=> (not res!1444350) (not e!2214920))))

(declare-fun rulesValid!2102 (LexerInterface!5120 List!37710) Bool)

(assert (=> d!1055919 (= res!1444350 (rulesValid!2102 thiss!23823 rules!3307))))

(assert (=> d!1055919 (= (rulesInvariant!4517 thiss!23823 rules!3307) e!2214920)))

(declare-fun b!3580042 () Bool)

(declare-datatypes ((List!37714 0))(
  ( (Nil!37590) (Cons!37590 (h!43010 String!42141) (t!290235 List!37714)) )
))
(declare-fun noDuplicateTag!2098 (LexerInterface!5120 List!37710 List!37714) Bool)

(assert (=> b!3580042 (= e!2214920 (noDuplicateTag!2098 thiss!23823 rules!3307 Nil!37590))))

(assert (= (and d!1055919 res!1444350) b!3580042))

(declare-fun m!4074107 () Bool)

(assert (=> d!1055919 m!4074107))

(declare-fun m!4074109 () Bool)

(assert (=> b!3580042 m!4074109))

(assert (=> b!3579933 d!1055919))

(declare-fun d!1055921 () Bool)

(assert (=> d!1055921 (= (isEmpty!22126 rules!3307) (is-Nil!37586 rules!3307))))

(assert (=> b!3579923 d!1055921))

(declare-fun d!1055923 () Bool)

(assert (=> d!1055923 (= (inv!50876 (tag!6197 (rule!8243 token!511))) (= (mod (str.len (value!178094 (tag!6197 (rule!8243 token!511)))) 2) 0))))

(assert (=> b!3579930 d!1055923))

(declare-fun d!1055925 () Bool)

(declare-fun res!1444353 () Bool)

(declare-fun e!2214923 () Bool)

(assert (=> d!1055925 (=> (not res!1444353) (not e!2214923))))

(declare-fun semiInverseModEq!2342 (Int Int) Bool)

(assert (=> d!1055925 (= res!1444353 (semiInverseModEq!2342 (toChars!7666 (transformation!5531 (rule!8243 token!511))) (toValue!7807 (transformation!5531 (rule!8243 token!511)))))))

(assert (=> d!1055925 (= (inv!50879 (transformation!5531 (rule!8243 token!511))) e!2214923)))

(declare-fun b!3580045 () Bool)

(declare-fun equivClasses!2241 (Int Int) Bool)

(assert (=> b!3580045 (= e!2214923 (equivClasses!2241 (toChars!7666 (transformation!5531 (rule!8243 token!511))) (toValue!7807 (transformation!5531 (rule!8243 token!511)))))))

(assert (= (and d!1055925 res!1444353) b!3580045))

(declare-fun m!4074111 () Bool)

(assert (=> d!1055925 m!4074111))

(declare-fun m!4074113 () Bool)

(assert (=> b!3580045 m!4074113))

(assert (=> b!3579930 d!1055925))

(declare-fun d!1055927 () Bool)

(declare-fun res!1444358 () Bool)

(declare-fun e!2214926 () Bool)

(assert (=> d!1055927 (=> (not res!1444358) (not e!2214926))))

(declare-fun isEmpty!22129 (List!37709) Bool)

(assert (=> d!1055927 (= res!1444358 (not (isEmpty!22129 (originalCharacters!6245 token!511))))))

(assert (=> d!1055927 (= (inv!50880 token!511) e!2214926)))

(declare-fun b!3580050 () Bool)

(declare-fun res!1444359 () Bool)

(assert (=> b!3580050 (=> (not res!1444359) (not e!2214926))))

(assert (=> b!3580050 (= res!1444359 (= (originalCharacters!6245 token!511) (list!13802 (dynLambda!16178 (toChars!7666 (transformation!5531 (rule!8243 token!511))) (value!178095 token!511)))))))

(declare-fun b!3580051 () Bool)

(assert (=> b!3580051 (= e!2214926 (= (size!28662 token!511) (size!28664 (originalCharacters!6245 token!511))))))

(assert (= (and d!1055927 res!1444358) b!3580050))

(assert (= (and b!3580050 res!1444359) b!3580051))

(declare-fun b_lambda!105797 () Bool)

(assert (=> (not b_lambda!105797) (not b!3580050)))

(assert (=> b!3580050 t!290226))

(declare-fun b_and!258131 () Bool)

(assert (= b_and!258123 (and (=> t!290226 result!249008) b_and!258131)))

(assert (=> b!3580050 t!290228))

(declare-fun b_and!258133 () Bool)

(assert (= b_and!258125 (and (=> t!290228 result!249012) b_and!258133)))

(assert (=> b!3580050 t!290230))

(declare-fun b_and!258135 () Bool)

(assert (= b_and!258127 (and (=> t!290230 result!249014) b_and!258135)))

(assert (=> b!3580050 t!290232))

(declare-fun b_and!258137 () Bool)

(assert (= b_and!258129 (and (=> t!290232 result!249016) b_and!258137)))

(declare-fun m!4074115 () Bool)

(assert (=> d!1055927 m!4074115))

(assert (=> b!3580050 m!4074105))

(assert (=> b!3580050 m!4074105))

(declare-fun m!4074117 () Bool)

(assert (=> b!3580050 m!4074117))

(declare-fun m!4074119 () Bool)

(assert (=> b!3580051 m!4074119))

(assert (=> start!331868 d!1055927))

(declare-fun d!1055929 () Bool)

(assert (=> d!1055929 true))

(declare-fun lt!1228431 () Bool)

(declare-fun lambda!123738 () Int)

(declare-fun forall!8137 (List!37710 Int) Bool)

(assert (=> d!1055929 (= lt!1228431 (forall!8137 rules!3307 lambda!123738))))

(declare-fun e!2214932 () Bool)

(assert (=> d!1055929 (= lt!1228431 e!2214932)))

(declare-fun res!1444364 () Bool)

(assert (=> d!1055929 (=> res!1444364 e!2214932)))

(assert (=> d!1055929 (= res!1444364 (not (is-Cons!37586 rules!3307)))))

(assert (=> d!1055929 (= (rulesValidInductive!1914 thiss!23823 rules!3307) lt!1228431)))

(declare-fun b!3580056 () Bool)

(declare-fun e!2214931 () Bool)

(assert (=> b!3580056 (= e!2214932 e!2214931)))

(declare-fun res!1444365 () Bool)

(assert (=> b!3580056 (=> (not res!1444365) (not e!2214931))))

(declare-fun ruleValid!1803 (LexerInterface!5120 Rule!10862) Bool)

(assert (=> b!3580056 (= res!1444365 (ruleValid!1803 thiss!23823 (h!43006 rules!3307)))))

(declare-fun b!3580057 () Bool)

(assert (=> b!3580057 (= e!2214931 (rulesValidInductive!1914 thiss!23823 (t!290221 rules!3307)))))

(assert (= (and d!1055929 (not res!1444364)) b!3580056))

(assert (= (and b!3580056 res!1444365) b!3580057))

(declare-fun m!4074121 () Bool)

(assert (=> d!1055929 m!4074121))

(declare-fun m!4074123 () Bool)

(assert (=> b!3580056 m!4074123))

(declare-fun m!4074125 () Bool)

(assert (=> b!3580057 m!4074125))

(assert (=> b!3579919 d!1055929))

(declare-fun d!1055931 () Bool)

(assert (=> d!1055931 (= (inv!50876 (tag!6197 rule!403)) (= (mod (str.len (value!178094 (tag!6197 rule!403))) 2) 0))))

(assert (=> b!3579920 d!1055931))

(declare-fun d!1055933 () Bool)

(declare-fun res!1444366 () Bool)

(declare-fun e!2214933 () Bool)

(assert (=> d!1055933 (=> (not res!1444366) (not e!2214933))))

(assert (=> d!1055933 (= res!1444366 (semiInverseModEq!2342 (toChars!7666 (transformation!5531 rule!403)) (toValue!7807 (transformation!5531 rule!403))))))

(assert (=> d!1055933 (= (inv!50879 (transformation!5531 rule!403)) e!2214933)))

(declare-fun b!3580060 () Bool)

(assert (=> b!3580060 (= e!2214933 (equivClasses!2241 (toChars!7666 (transformation!5531 rule!403)) (toValue!7807 (transformation!5531 rule!403))))))

(assert (= (and d!1055933 res!1444366) b!3580060))

(declare-fun m!4074127 () Bool)

(assert (=> d!1055933 m!4074127))

(declare-fun m!4074129 () Bool)

(assert (=> b!3580060 m!4074129))

(assert (=> b!3579920 d!1055933))

(declare-fun d!1055935 () Bool)

(declare-fun lt!1228434 () Bool)

(declare-fun content!5331 (List!37710) (Set Rule!10862))

(assert (=> d!1055935 (= lt!1228434 (set.member rule!403 (content!5331 rules!3307)))))

(declare-fun e!2214939 () Bool)

(assert (=> d!1055935 (= lt!1228434 e!2214939)))

(declare-fun res!1444372 () Bool)

(assert (=> d!1055935 (=> (not res!1444372) (not e!2214939))))

(assert (=> d!1055935 (= res!1444372 (is-Cons!37586 rules!3307))))

(assert (=> d!1055935 (= (contains!7135 rules!3307 rule!403) lt!1228434)))

(declare-fun b!3580065 () Bool)

(declare-fun e!2214938 () Bool)

(assert (=> b!3580065 (= e!2214939 e!2214938)))

(declare-fun res!1444371 () Bool)

(assert (=> b!3580065 (=> res!1444371 e!2214938)))

(assert (=> b!3580065 (= res!1444371 (= (h!43006 rules!3307) rule!403))))

(declare-fun b!3580066 () Bool)

(assert (=> b!3580066 (= e!2214938 (contains!7135 (t!290221 rules!3307) rule!403))))

(assert (= (and d!1055935 res!1444372) b!3580065))

(assert (= (and b!3580065 (not res!1444371)) b!3580066))

(declare-fun m!4074131 () Bool)

(assert (=> d!1055935 m!4074131))

(declare-fun m!4074133 () Bool)

(assert (=> d!1055935 m!4074133))

(declare-fun m!4074135 () Bool)

(assert (=> b!3580066 m!4074135))

(assert (=> b!3579927 d!1055935))

(declare-fun d!1055937 () Bool)

(assert (=> d!1055937 (= (inv!50876 (tag!6197 (h!43006 rules!3307))) (= (mod (str.len (value!178094 (tag!6197 (h!43006 rules!3307)))) 2) 0))))

(assert (=> b!3579917 d!1055937))

(declare-fun d!1055939 () Bool)

(declare-fun res!1444373 () Bool)

(declare-fun e!2214940 () Bool)

(assert (=> d!1055939 (=> (not res!1444373) (not e!2214940))))

(assert (=> d!1055939 (= res!1444373 (semiInverseModEq!2342 (toChars!7666 (transformation!5531 (h!43006 rules!3307))) (toValue!7807 (transformation!5531 (h!43006 rules!3307)))))))

(assert (=> d!1055939 (= (inv!50879 (transformation!5531 (h!43006 rules!3307))) e!2214940)))

(declare-fun b!3580067 () Bool)

(assert (=> b!3580067 (= e!2214940 (equivClasses!2241 (toChars!7666 (transformation!5531 (h!43006 rules!3307))) (toValue!7807 (transformation!5531 (h!43006 rules!3307)))))))

(assert (= (and d!1055939 res!1444373) b!3580067))

(declare-fun m!4074137 () Bool)

(assert (=> d!1055939 m!4074137))

(declare-fun m!4074139 () Bool)

(assert (=> b!3580067 m!4074139))

(assert (=> b!3579917 d!1055939))

(declare-fun d!1055941 () Bool)

(declare-fun lt!1228435 () Bool)

(assert (=> d!1055941 (= lt!1228435 (set.member anOtherTypeRule!33 (content!5331 rules!3307)))))

(declare-fun e!2214942 () Bool)

(assert (=> d!1055941 (= lt!1228435 e!2214942)))

(declare-fun res!1444375 () Bool)

(assert (=> d!1055941 (=> (not res!1444375) (not e!2214942))))

(assert (=> d!1055941 (= res!1444375 (is-Cons!37586 rules!3307))))

(assert (=> d!1055941 (= (contains!7135 rules!3307 anOtherTypeRule!33) lt!1228435)))

(declare-fun b!3580068 () Bool)

(declare-fun e!2214941 () Bool)

(assert (=> b!3580068 (= e!2214942 e!2214941)))

(declare-fun res!1444374 () Bool)

(assert (=> b!3580068 (=> res!1444374 e!2214941)))

(assert (=> b!3580068 (= res!1444374 (= (h!43006 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3580069 () Bool)

(assert (=> b!3580069 (= e!2214941 (contains!7135 (t!290221 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1055941 res!1444375) b!3580068))

(assert (= (and b!3580068 (not res!1444374)) b!3580069))

(assert (=> d!1055941 m!4074131))

(declare-fun m!4074141 () Bool)

(assert (=> d!1055941 m!4074141))

(declare-fun m!4074143 () Bool)

(assert (=> b!3580069 m!4074143))

(assert (=> b!3579918 d!1055941))

(declare-fun d!1055943 () Bool)

(assert (=> d!1055943 (= (inv!50876 (tag!6197 anOtherTypeRule!33)) (= (mod (str.len (value!178094 (tag!6197 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3579926 d!1055943))

(declare-fun d!1055945 () Bool)

(declare-fun res!1444376 () Bool)

(declare-fun e!2214943 () Bool)

(assert (=> d!1055945 (=> (not res!1444376) (not e!2214943))))

(assert (=> d!1055945 (= res!1444376 (semiInverseModEq!2342 (toChars!7666 (transformation!5531 anOtherTypeRule!33)) (toValue!7807 (transformation!5531 anOtherTypeRule!33))))))

(assert (=> d!1055945 (= (inv!50879 (transformation!5531 anOtherTypeRule!33)) e!2214943)))

(declare-fun b!3580070 () Bool)

(assert (=> b!3580070 (= e!2214943 (equivClasses!2241 (toChars!7666 (transformation!5531 anOtherTypeRule!33)) (toValue!7807 (transformation!5531 anOtherTypeRule!33))))))

(assert (= (and d!1055945 res!1444376) b!3580070))

(declare-fun m!4074145 () Bool)

(assert (=> d!1055945 m!4074145))

(declare-fun m!4074147 () Bool)

(assert (=> b!3580070 m!4074147))

(assert (=> b!3579926 d!1055945))

(declare-fun b!3580075 () Bool)

(declare-fun e!2214946 () Bool)

(declare-fun tp_is_empty!17675 () Bool)

(declare-fun tp!1095616 () Bool)

(assert (=> b!3580075 (= e!2214946 (and tp_is_empty!17675 tp!1095616))))

(assert (=> b!3579932 (= tp!1095563 e!2214946)))

(assert (= (and b!3579932 (is-Cons!37585 (originalCharacters!6245 token!511))) b!3580075))

(declare-fun b!3580089 () Bool)

(declare-fun e!2214949 () Bool)

(declare-fun tp!1095627 () Bool)

(declare-fun tp!1095629 () Bool)

(assert (=> b!3580089 (= e!2214949 (and tp!1095627 tp!1095629))))

(declare-fun b!3580087 () Bool)

(declare-fun tp!1095631 () Bool)

(declare-fun tp!1095630 () Bool)

(assert (=> b!3580087 (= e!2214949 (and tp!1095631 tp!1095630))))

(declare-fun b!3580088 () Bool)

(declare-fun tp!1095628 () Bool)

(assert (=> b!3580088 (= e!2214949 tp!1095628)))

(declare-fun b!3580086 () Bool)

(assert (=> b!3580086 (= e!2214949 tp_is_empty!17675)))

(assert (=> b!3579917 (= tp!1095555 e!2214949)))

(assert (= (and b!3579917 (is-ElementMatch!10290 (regex!5531 (h!43006 rules!3307)))) b!3580086))

(assert (= (and b!3579917 (is-Concat!16052 (regex!5531 (h!43006 rules!3307)))) b!3580087))

(assert (= (and b!3579917 (is-Star!10290 (regex!5531 (h!43006 rules!3307)))) b!3580088))

(assert (= (and b!3579917 (is-Union!10290 (regex!5531 (h!43006 rules!3307)))) b!3580089))

(declare-fun b!3580093 () Bool)

(declare-fun e!2214950 () Bool)

(declare-fun tp!1095632 () Bool)

(declare-fun tp!1095634 () Bool)

(assert (=> b!3580093 (= e!2214950 (and tp!1095632 tp!1095634))))

(declare-fun b!3580091 () Bool)

(declare-fun tp!1095636 () Bool)

(declare-fun tp!1095635 () Bool)

(assert (=> b!3580091 (= e!2214950 (and tp!1095636 tp!1095635))))

(declare-fun b!3580092 () Bool)

(declare-fun tp!1095633 () Bool)

(assert (=> b!3580092 (= e!2214950 tp!1095633)))

(declare-fun b!3580090 () Bool)

(assert (=> b!3580090 (= e!2214950 tp_is_empty!17675)))

(assert (=> b!3579930 (= tp!1095562 e!2214950)))

(assert (= (and b!3579930 (is-ElementMatch!10290 (regex!5531 (rule!8243 token!511)))) b!3580090))

(assert (= (and b!3579930 (is-Concat!16052 (regex!5531 (rule!8243 token!511)))) b!3580091))

(assert (= (and b!3579930 (is-Star!10290 (regex!5531 (rule!8243 token!511)))) b!3580092))

(assert (= (and b!3579930 (is-Union!10290 (regex!5531 (rule!8243 token!511)))) b!3580093))

(declare-fun b!3580097 () Bool)

(declare-fun e!2214951 () Bool)

(declare-fun tp!1095637 () Bool)

(declare-fun tp!1095639 () Bool)

(assert (=> b!3580097 (= e!2214951 (and tp!1095637 tp!1095639))))

(declare-fun b!3580095 () Bool)

(declare-fun tp!1095641 () Bool)

(declare-fun tp!1095640 () Bool)

(assert (=> b!3580095 (= e!2214951 (and tp!1095641 tp!1095640))))

(declare-fun b!3580096 () Bool)

(declare-fun tp!1095638 () Bool)

(assert (=> b!3580096 (= e!2214951 tp!1095638)))

(declare-fun b!3580094 () Bool)

(assert (=> b!3580094 (= e!2214951 tp_is_empty!17675)))

(assert (=> b!3579920 (= tp!1095566 e!2214951)))

(assert (= (and b!3579920 (is-ElementMatch!10290 (regex!5531 rule!403))) b!3580094))

(assert (= (and b!3579920 (is-Concat!16052 (regex!5531 rule!403))) b!3580095))

(assert (= (and b!3579920 (is-Star!10290 (regex!5531 rule!403))) b!3580096))

(assert (= (and b!3579920 (is-Union!10290 (regex!5531 rule!403))) b!3580097))

(declare-fun b!3580101 () Bool)

(declare-fun e!2214952 () Bool)

(declare-fun tp!1095642 () Bool)

(declare-fun tp!1095644 () Bool)

(assert (=> b!3580101 (= e!2214952 (and tp!1095642 tp!1095644))))

(declare-fun b!3580099 () Bool)

(declare-fun tp!1095646 () Bool)

(declare-fun tp!1095645 () Bool)

(assert (=> b!3580099 (= e!2214952 (and tp!1095646 tp!1095645))))

(declare-fun b!3580100 () Bool)

(declare-fun tp!1095643 () Bool)

(assert (=> b!3580100 (= e!2214952 tp!1095643)))

(declare-fun b!3580098 () Bool)

(assert (=> b!3580098 (= e!2214952 tp_is_empty!17675)))

(assert (=> b!3579926 (= tp!1095561 e!2214952)))

(assert (= (and b!3579926 (is-ElementMatch!10290 (regex!5531 anOtherTypeRule!33))) b!3580098))

(assert (= (and b!3579926 (is-Concat!16052 (regex!5531 anOtherTypeRule!33))) b!3580099))

(assert (= (and b!3579926 (is-Star!10290 (regex!5531 anOtherTypeRule!33))) b!3580100))

(assert (= (and b!3579926 (is-Union!10290 (regex!5531 anOtherTypeRule!33))) b!3580101))

(declare-fun b!3580112 () Bool)

(declare-fun b_free!91821 () Bool)

(declare-fun b_next!92525 () Bool)

(assert (=> b!3580112 (= b_free!91821 (not b_next!92525))))

(declare-fun tp!1095658 () Bool)

(declare-fun b_and!258139 () Bool)

(assert (=> b!3580112 (= tp!1095658 b_and!258139)))

(declare-fun b_free!91823 () Bool)

(declare-fun b_next!92527 () Bool)

(assert (=> b!3580112 (= b_free!91823 (not b_next!92527))))

(declare-fun t!290234 () Bool)

(declare-fun tb!204291 () Bool)

(assert (=> (and b!3580112 (= (toChars!7666 (transformation!5531 (h!43006 (t!290221 rules!3307)))) (toChars!7666 (transformation!5531 (rule!8243 token!511)))) t!290234) tb!204291))

(declare-fun result!249024 () Bool)

(assert (= result!249024 result!249008))

(assert (=> d!1055917 t!290234))

(assert (=> b!3580050 t!290234))

(declare-fun tp!1095657 () Bool)

(declare-fun b_and!258141 () Bool)

(assert (=> b!3580112 (= tp!1095657 (and (=> t!290234 result!249024) b_and!258141))))

(declare-fun e!2214963 () Bool)

(assert (=> b!3580112 (= e!2214963 (and tp!1095658 tp!1095657))))

(declare-fun e!2214961 () Bool)

(declare-fun tp!1095655 () Bool)

(declare-fun b!3580111 () Bool)

(assert (=> b!3580111 (= e!2214961 (and tp!1095655 (inv!50876 (tag!6197 (h!43006 (t!290221 rules!3307)))) (inv!50879 (transformation!5531 (h!43006 (t!290221 rules!3307)))) e!2214963))))

(declare-fun b!3580110 () Bool)

(declare-fun e!2214964 () Bool)

(declare-fun tp!1095656 () Bool)

(assert (=> b!3580110 (= e!2214964 (and e!2214961 tp!1095656))))

(assert (=> b!3579931 (= tp!1095556 e!2214964)))

(assert (= b!3580111 b!3580112))

(assert (= b!3580110 b!3580111))

(assert (= (and b!3579931 (is-Cons!37586 (t!290221 rules!3307))) b!3580110))

(declare-fun m!4074149 () Bool)

(assert (=> b!3580111 m!4074149))

(declare-fun m!4074151 () Bool)

(assert (=> b!3580111 m!4074151))

(declare-fun b_lambda!105799 () Bool)

(assert (= b_lambda!105795 (or (and b!3579928 b_free!91799 (= (toChars!7666 (transformation!5531 anOtherTypeRule!33)) (toChars!7666 (transformation!5531 (rule!8243 token!511))))) (and b!3579929 b_free!91791 (= (toChars!7666 (transformation!5531 (h!43006 rules!3307))) (toChars!7666 (transformation!5531 (rule!8243 token!511))))) (and b!3580112 b_free!91823 (= (toChars!7666 (transformation!5531 (h!43006 (t!290221 rules!3307)))) (toChars!7666 (transformation!5531 (rule!8243 token!511))))) (and b!3579925 b_free!91795 (= (toChars!7666 (transformation!5531 rule!403)) (toChars!7666 (transformation!5531 (rule!8243 token!511))))) (and b!3579924 b_free!91803) b_lambda!105799)))

(declare-fun b_lambda!105801 () Bool)

(assert (= b_lambda!105797 (or (and b!3579928 b_free!91799 (= (toChars!7666 (transformation!5531 anOtherTypeRule!33)) (toChars!7666 (transformation!5531 (rule!8243 token!511))))) (and b!3579929 b_free!91791 (= (toChars!7666 (transformation!5531 (h!43006 rules!3307))) (toChars!7666 (transformation!5531 (rule!8243 token!511))))) (and b!3580112 b_free!91823 (= (toChars!7666 (transformation!5531 (h!43006 (t!290221 rules!3307)))) (toChars!7666 (transformation!5531 (rule!8243 token!511))))) (and b!3579925 b_free!91795 (= (toChars!7666 (transformation!5531 rule!403)) (toChars!7666 (transformation!5531 (rule!8243 token!511))))) (and b!3579924 b_free!91803) b_lambda!105801)))

(push 1)

(assert (not d!1055939))

(assert (not b!3580051))

(assert (not b!3580028))

(assert (not b!3580089))

(assert (not b!3580092))

(assert (not b_next!92527))

(assert b_and!258095)

(assert (not b!3580026))

(assert (not b!3580050))

(assert (not b!3580033))

(assert (not d!1055935))

(assert (not b_next!92525))

(assert tp_is_empty!17675)

(assert (not b_next!92493))

(assert (not b!3580057))

(assert (not b!3580069))

(assert (not b_next!92495))

(assert (not b_lambda!105799))

(assert b_and!258099)

(assert (not b_next!92503))

(assert (not b!3580101))

(assert (not d!1055901))

(assert (not b!3580031))

(assert (not b!3580100))

(assert (not b_next!92497))

(assert (not d!1055945))

(assert (not b!3580088))

(assert (not d!1055925))

(assert (not d!1055941))

(assert b_and!258131)

(assert (not tb!204283))

(assert (not b!3580066))

(assert (not b!3580097))

(assert (not b!3580042))

(assert (not d!1055919))

(assert (not b!3580110))

(assert (not b!3580075))

(assert (not b!3580111))

(assert (not d!1055903))

(assert (not b_next!92505))

(assert (not b!3580060))

(assert b_and!258135)

(assert (not d!1055927))

(assert (not b_next!92501))

(assert (not b!3580032))

(assert (not b!3580093))

(assert b_and!258091)

(assert b_and!258133)

(assert b_and!258103)

(assert (not b!3580027))

(assert (not b!3579999))

(assert (not b_next!92507))

(assert (not d!1055933))

(assert (not b!3580039))

(assert (not b!3580070))

(assert (not d!1055915))

(assert (not bm!259276))

(assert (not b!3580045))

(assert (not b!3579998))

(assert (not b!3580056))

(assert (not b!3580029))

(assert (not b!3580099))

(assert (not b_next!92499))

(assert b_and!258139)

(assert (not b_lambda!105801))

(assert b_and!258141)

(assert (not b!3580034))

(assert (not b!3580087))

(assert b_and!258137)

(assert (not d!1055917))

(assert (not b!3580095))

(assert (not d!1055929))

(assert (not b!3580091))

(assert (not b!3580096))

(assert (not b!3579996))

(assert (not b!3580067))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!92525))

(assert (not b_next!92493))

(assert (not b_next!92497))

(assert b_and!258131)

(assert (not b_next!92505))

(assert (not b_next!92527))

(assert (not b_next!92507))

(assert b_and!258095)

(assert (not b_next!92495))

(assert b_and!258099)

(assert (not b_next!92503))

(assert b_and!258135)

(assert (not b_next!92501))

(assert b_and!258091)

(assert b_and!258133)

(assert b_and!258103)

(assert (not b_next!92499))

(assert b_and!258139)

(assert b_and!258141)

(assert b_and!258137)

(check-sat)

(pop 1)

