; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!219528 () Bool)

(assert start!219528)

(declare-fun b!2250360 () Bool)

(declare-fun b_free!65885 () Bool)

(declare-fun b_next!66589 () Bool)

(assert (=> b!2250360 (= b_free!65885 (not b_next!66589))))

(declare-fun tp!710926 () Bool)

(declare-fun b_and!176217 () Bool)

(assert (=> b!2250360 (= tp!710926 b_and!176217)))

(declare-fun b_free!65887 () Bool)

(declare-fun b_next!66591 () Bool)

(assert (=> b!2250360 (= b_free!65887 (not b_next!66591))))

(declare-fun tp!710934 () Bool)

(declare-fun b_and!176219 () Bool)

(assert (=> b!2250360 (= tp!710934 b_and!176219)))

(declare-fun b!2250379 () Bool)

(declare-fun b_free!65889 () Bool)

(declare-fun b_next!66593 () Bool)

(assert (=> b!2250379 (= b_free!65889 (not b_next!66593))))

(declare-fun tp!710923 () Bool)

(declare-fun b_and!176221 () Bool)

(assert (=> b!2250379 (= tp!710923 b_and!176221)))

(declare-fun b_free!65891 () Bool)

(declare-fun b_next!66595 () Bool)

(assert (=> b!2250379 (= b_free!65891 (not b_next!66595))))

(declare-fun tp!710936 () Bool)

(declare-fun b_and!176223 () Bool)

(assert (=> b!2250379 (= tp!710936 b_and!176223)))

(declare-fun b!2250358 () Bool)

(declare-fun b_free!65893 () Bool)

(declare-fun b_next!66597 () Bool)

(assert (=> b!2250358 (= b_free!65893 (not b_next!66597))))

(declare-fun tp!710933 () Bool)

(declare-fun b_and!176225 () Bool)

(assert (=> b!2250358 (= tp!710933 b_and!176225)))

(declare-fun b_free!65895 () Bool)

(declare-fun b_next!66599 () Bool)

(assert (=> b!2250358 (= b_free!65895 (not b_next!66599))))

(declare-fun tp!710922 () Bool)

(declare-fun b_and!176227 () Bool)

(assert (=> b!2250358 (= tp!710922 b_and!176227)))

(declare-fun b!2250373 () Bool)

(declare-fun b_free!65897 () Bool)

(declare-fun b_next!66601 () Bool)

(assert (=> b!2250373 (= b_free!65897 (not b_next!66601))))

(declare-fun tp!710930 () Bool)

(declare-fun b_and!176229 () Bool)

(assert (=> b!2250373 (= tp!710930 b_and!176229)))

(declare-fun b_free!65899 () Bool)

(declare-fun b_next!66603 () Bool)

(assert (=> b!2250373 (= b_free!65899 (not b_next!66603))))

(declare-fun tp!710920 () Bool)

(declare-fun b_and!176231 () Bool)

(assert (=> b!2250373 (= tp!710920 b_and!176231)))

(declare-fun b!2250354 () Bool)

(declare-fun res!961503 () Bool)

(declare-fun e!1440017 () Bool)

(assert (=> b!2250354 (=> (not res!961503) (not e!1440017))))

(declare-fun e!1440020 () Bool)

(assert (=> b!2250354 (= res!961503 e!1440020)))

(declare-fun res!961507 () Bool)

(assert (=> b!2250354 (=> res!961507 e!1440020)))

(declare-fun lt!836583 () Bool)

(assert (=> b!2250354 (= res!961507 lt!836583)))

(declare-fun b!2250355 () Bool)

(declare-fun e!1440027 () Bool)

(declare-datatypes ((List!26747 0))(
  ( (Nil!26653) (Cons!26653 (h!32054 (_ BitVec 16)) (t!200761 List!26747)) )
))
(declare-datatypes ((TokenValue!4387 0))(
  ( (FloatLiteralValue!8774 (text!31154 List!26747)) (TokenValueExt!4386 (__x!17834 Int)) (Broken!21935 (value!134206 List!26747)) (Object!4480) (End!4387) (Def!4387) (Underscore!4387) (Match!4387) (Else!4387) (Error!4387) (Case!4387) (If!4387) (Extends!4387) (Abstract!4387) (Class!4387) (Val!4387) (DelimiterValue!8774 (del!4447 List!26747)) (KeywordValue!4393 (value!134207 List!26747)) (CommentValue!8774 (value!134208 List!26747)) (WhitespaceValue!8774 (value!134209 List!26747)) (IndentationValue!4387 (value!134210 List!26747)) (String!29038) (Int32!4387) (Broken!21936 (value!134211 List!26747)) (Boolean!4388) (Unit!39597) (OperatorValue!4390 (op!4447 List!26747)) (IdentifierValue!8774 (value!134212 List!26747)) (IdentifierValue!8775 (value!134213 List!26747)) (WhitespaceValue!8775 (value!134214 List!26747)) (True!8774) (False!8774) (Broken!21937 (value!134215 List!26747)) (Broken!21938 (value!134216 List!26747)) (True!8775) (RightBrace!4387) (RightBracket!4387) (Colon!4387) (Null!4387) (Comma!4387) (LeftBracket!4387) (False!8775) (LeftBrace!4387) (ImaginaryLiteralValue!4387 (text!31155 List!26747)) (StringLiteralValue!13161 (value!134217 List!26747)) (EOFValue!4387 (value!134218 List!26747)) (IdentValue!4387 (value!134219 List!26747)) (DelimiterValue!8775 (value!134220 List!26747)) (DedentValue!4387 (value!134221 List!26747)) (NewLineValue!4387 (value!134222 List!26747)) (IntegerValue!13161 (value!134223 (_ BitVec 32)) (text!31156 List!26747)) (IntegerValue!13162 (value!134224 Int) (text!31157 List!26747)) (Times!4387) (Or!4387) (Equal!4387) (Minus!4387) (Broken!21939 (value!134225 List!26747)) (And!4387) (Div!4387) (LessEqual!4387) (Mod!4387) (Concat!10960) (Not!4387) (Plus!4387) (SpaceValue!4387 (value!134226 List!26747)) (IntegerValue!13163 (value!134227 Int) (text!31158 List!26747)) (StringLiteralValue!13162 (text!31159 List!26747)) (FloatLiteralValue!8775 (text!31160 List!26747)) (BytesLiteralValue!4387 (value!134228 List!26747)) (CommentValue!8775 (value!134229 List!26747)) (StringLiteralValue!13163 (value!134230 List!26747)) (ErrorTokenValue!4387 (msg!4448 List!26747)) )
))
(declare-datatypes ((C!13292 0))(
  ( (C!13293 (val!7694 Int)) )
))
(declare-datatypes ((List!26748 0))(
  ( (Nil!26654) (Cons!26654 (h!32055 C!13292) (t!200762 List!26748)) )
))
(declare-datatypes ((IArray!17201 0))(
  ( (IArray!17202 (innerList!8658 List!26748)) )
))
(declare-datatypes ((Conc!8598 0))(
  ( (Node!8598 (left!20251 Conc!8598) (right!20581 Conc!8598) (csize!17426 Int) (cheight!8809 Int)) (Leaf!12696 (xs!11540 IArray!17201) (csize!17427 Int)) (Empty!8598) )
))
(declare-datatypes ((BalanceConc!16924 0))(
  ( (BalanceConc!16925 (c!357924 Conc!8598)) )
))
(declare-datatypes ((Regex!6573 0))(
  ( (ElementMatch!6573 (c!357925 C!13292)) (Concat!10961 (regOne!13658 Regex!6573) (regTwo!13658 Regex!6573)) (EmptyExpr!6573) (Star!6573 (reg!6902 Regex!6573)) (EmptyLang!6573) (Union!6573 (regOne!13659 Regex!6573) (regTwo!13659 Regex!6573)) )
))
(declare-datatypes ((String!29039 0))(
  ( (String!29040 (value!134231 String)) )
))
(declare-datatypes ((TokenValueInjection!8314 0))(
  ( (TokenValueInjection!8315 (toValue!5963 Int) (toChars!5822 Int)) )
))
(declare-datatypes ((Rule!8250 0))(
  ( (Rule!8251 (regex!4225 Regex!6573) (tag!4715 String!29039) (isSeparator!4225 Bool) (transformation!4225 TokenValueInjection!8314)) )
))
(declare-fun r!2363 () Rule!8250)

(declare-datatypes ((Token!7928 0))(
  ( (Token!7929 (value!134232 TokenValue!4387) (rule!6527 Rule!8250) (size!20856 Int) (originalCharacters!4995 List!26748)) )
))
(declare-datatypes ((List!26749 0))(
  ( (Nil!26655) (Cons!26655 (h!32056 Token!7928) (t!200763 List!26749)) )
))
(declare-fun tokens!456 () List!26749)

(declare-fun matchR!2834 (Regex!6573 List!26748) Bool)

(declare-fun list!10225 (BalanceConc!16924) List!26748)

(declare-fun charsOf!2613 (Token!7928) BalanceConc!16924)

(declare-fun head!4790 (List!26749) Token!7928)

(assert (=> b!2250355 (= e!1440027 (not (matchR!2834 (regex!4225 r!2363) (list!10225 (charsOf!2613 (head!4790 tokens!456))))))))

(declare-fun b!2250356 () Bool)

(declare-fun res!961510 () Bool)

(assert (=> b!2250356 (=> (not res!961510) (not e!1440017))))

(declare-fun otherP!12 () List!26748)

(declare-fun input!1722 () List!26748)

(declare-fun isPrefix!2215 (List!26748 List!26748) Bool)

(assert (=> b!2250356 (= res!961510 (isPrefix!2215 otherP!12 input!1722))))

(declare-fun b!2250357 () Bool)

(declare-fun res!961518 () Bool)

(declare-fun e!1440005 () Bool)

(assert (=> b!2250357 (=> (not res!961518) (not e!1440005))))

(declare-datatypes ((List!26750 0))(
  ( (Nil!26656) (Cons!26656 (h!32057 Rule!8250) (t!200764 List!26750)) )
))
(declare-fun rules!1750 () List!26750)

(declare-fun isEmpty!15026 (List!26750) Bool)

(assert (=> b!2250357 (= res!961518 (not (isEmpty!15026 rules!1750)))))

(declare-fun e!1440022 () Bool)

(assert (=> b!2250358 (= e!1440022 (and tp!710933 tp!710922))))

(declare-fun b!2250359 () Bool)

(declare-fun e!1440003 () Bool)

(declare-fun e!1440013 () Bool)

(declare-fun tp!710931 () Bool)

(assert (=> b!2250359 (= e!1440003 (and e!1440013 tp!710931))))

(declare-fun e!1440028 () Bool)

(assert (=> b!2250360 (= e!1440028 (and tp!710926 tp!710934))))

(declare-fun b!2250361 () Bool)

(declare-fun e!1440014 () Bool)

(declare-fun e!1440024 () Bool)

(assert (=> b!2250361 (= e!1440014 e!1440024)))

(declare-fun res!961512 () Bool)

(assert (=> b!2250361 (=> res!961512 e!1440024)))

(declare-fun otherR!12 () Rule!8250)

(declare-fun getIndex!246 (List!26750 Rule!8250) Int)

(assert (=> b!2250361 (= res!961512 (<= (getIndex!246 rules!1750 r!2363) (getIndex!246 rules!1750 otherR!12)))))

(declare-datatypes ((LexerInterface!3822 0))(
  ( (LexerInterfaceExt!3819 (__x!17835 Int)) (Lexer!3820) )
))
(declare-fun thiss!16613 () LexerInterface!3822)

(declare-fun ruleValid!1317 (LexerInterface!3822 Rule!8250) Bool)

(assert (=> b!2250361 (ruleValid!1317 thiss!16613 otherR!12)))

(declare-datatypes ((Unit!39598 0))(
  ( (Unit!39599) )
))
(declare-fun lt!836585 () Unit!39598)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!724 (LexerInterface!3822 Rule!8250 List!26750) Unit!39598)

(assert (=> b!2250361 (= lt!836585 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!724 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2250362 () Bool)

(declare-fun res!961519 () Bool)

(assert (=> b!2250362 (=> (not res!961519) (not e!1440005))))

(declare-fun contains!4575 (List!26750 Rule!8250) Bool)

(assert (=> b!2250362 (= res!961519 (contains!4575 rules!1750 otherR!12))))

(declare-fun b!2250363 () Bool)

(declare-fun e!1440012 () Bool)

(declare-fun tp_is_empty!10367 () Bool)

(declare-fun tp!710925 () Bool)

(assert (=> b!2250363 (= e!1440012 (and tp_is_empty!10367 tp!710925))))

(declare-fun b!2250364 () Bool)

(declare-fun e!1440015 () Bool)

(declare-fun size!20857 (BalanceConc!16924) Int)

(declare-fun size!20858 (List!26748) Int)

(assert (=> b!2250364 (= e!1440015 (<= (size!20857 (charsOf!2613 (head!4790 tokens!456))) (size!20858 otherP!12)))))

(declare-fun b!2250365 () Bool)

(declare-fun res!961505 () Bool)

(assert (=> b!2250365 (=> (not res!961505) (not e!1440005))))

(assert (=> b!2250365 (= res!961505 (contains!4575 rules!1750 r!2363))))

(declare-fun b!2250366 () Bool)

(declare-fun tp!710932 () Bool)

(declare-fun e!1440019 () Bool)

(declare-fun inv!36184 (String!29039) Bool)

(declare-fun inv!36187 (TokenValueInjection!8314) Bool)

(assert (=> b!2250366 (= e!1440019 (and tp!710932 (inv!36184 (tag!4715 (rule!6527 (h!32056 tokens!456)))) (inv!36187 (transformation!4225 (rule!6527 (h!32056 tokens!456)))) e!1440022))))

(declare-fun e!1440026 () Bool)

(declare-fun b!2250367 () Bool)

(declare-fun e!1440029 () Bool)

(declare-fun tp!710937 () Bool)

(assert (=> b!2250367 (= e!1440026 (and tp!710937 (inv!36184 (tag!4715 r!2363)) (inv!36187 (transformation!4225 r!2363)) e!1440029))))

(declare-fun b!2250368 () Bool)

(declare-fun res!961508 () Bool)

(assert (=> b!2250368 (=> res!961508 e!1440024)))

(get-info :version)

(assert (=> b!2250368 (= res!961508 ((_ is Nil!26655) tokens!456))))

(declare-fun b!2250369 () Bool)

(declare-fun e!1440023 () Bool)

(assert (=> b!2250369 (= e!1440023 e!1440017)))

(declare-fun res!961509 () Bool)

(assert (=> b!2250369 (=> (not res!961509) (not e!1440017))))

(assert (=> b!2250369 (= res!961509 e!1440015)))

(declare-fun res!961517 () Bool)

(assert (=> b!2250369 (=> res!961517 e!1440015)))

(assert (=> b!2250369 (= res!961517 lt!836583)))

(declare-fun isEmpty!15027 (List!26749) Bool)

(assert (=> b!2250369 (= lt!836583 (isEmpty!15027 tokens!456))))

(declare-fun b!2250370 () Bool)

(declare-fun e!1440018 () Bool)

(assert (=> b!2250370 (= e!1440024 e!1440018)))

(declare-fun res!961504 () Bool)

(assert (=> b!2250370 (=> res!961504 e!1440018)))

(declare-datatypes ((tuple2!26150 0))(
  ( (tuple2!26151 (_1!15585 Token!7928) (_2!15585 List!26748)) )
))
(declare-fun lt!836582 () tuple2!26150)

(assert (=> b!2250370 (= res!961504 (not (= (h!32056 tokens!456) (_1!15585 lt!836582))))))

(declare-datatypes ((Option!5199 0))(
  ( (None!5198) (Some!5198 (v!30216 tuple2!26150)) )
))
(declare-fun get!8045 (Option!5199) tuple2!26150)

(declare-fun maxPrefix!2110 (LexerInterface!3822 List!26750 List!26748) Option!5199)

(assert (=> b!2250370 (= lt!836582 (get!8045 (maxPrefix!2110 thiss!16613 rules!1750 input!1722)))))

(declare-fun b!2250371 () Bool)

(declare-fun res!961513 () Bool)

(assert (=> b!2250371 (=> (not res!961513) (not e!1440005))))

(declare-fun rulesInvariant!3324 (LexerInterface!3822 List!26750) Bool)

(assert (=> b!2250371 (= res!961513 (rulesInvariant!3324 thiss!16613 rules!1750))))

(declare-fun b!2250372 () Bool)

(assert (=> b!2250372 (= e!1440005 e!1440023)))

(declare-fun res!961514 () Bool)

(assert (=> b!2250372 (=> (not res!961514) (not e!1440023))))

(declare-datatypes ((IArray!17203 0))(
  ( (IArray!17204 (innerList!8659 List!26749)) )
))
(declare-datatypes ((Conc!8599 0))(
  ( (Node!8599 (left!20252 Conc!8599) (right!20582 Conc!8599) (csize!17428 Int) (cheight!8810 Int)) (Leaf!12697 (xs!11541 IArray!17203) (csize!17429 Int)) (Empty!8599) )
))
(declare-datatypes ((BalanceConc!16926 0))(
  ( (BalanceConc!16927 (c!357926 Conc!8599)) )
))
(declare-datatypes ((tuple2!26152 0))(
  ( (tuple2!26153 (_1!15586 BalanceConc!16926) (_2!15586 BalanceConc!16924)) )
))
(declare-fun lt!836588 () tuple2!26152)

(declare-fun suffix!886 () List!26748)

(declare-datatypes ((tuple2!26154 0))(
  ( (tuple2!26155 (_1!15587 List!26749) (_2!15587 List!26748)) )
))
(declare-fun list!10226 (BalanceConc!16926) List!26749)

(assert (=> b!2250372 (= res!961514 (= (tuple2!26155 (list!10226 (_1!15586 lt!836588)) (list!10225 (_2!15586 lt!836588))) (tuple2!26155 tokens!456 suffix!886)))))

(declare-fun lex!1661 (LexerInterface!3822 List!26750 BalanceConc!16924) tuple2!26152)

(declare-fun seqFromList!2929 (List!26748) BalanceConc!16924)

(assert (=> b!2250372 (= lt!836588 (lex!1661 thiss!16613 rules!1750 (seqFromList!2929 input!1722)))))

(assert (=> b!2250373 (= e!1440029 (and tp!710930 tp!710920))))

(declare-fun res!961515 () Bool)

(assert (=> start!219528 (=> (not res!961515) (not e!1440005))))

(assert (=> start!219528 (= res!961515 ((_ is Lexer!3820) thiss!16613))))

(assert (=> start!219528 e!1440005))

(assert (=> start!219528 true))

(declare-fun e!1440008 () Bool)

(assert (=> start!219528 e!1440008))

(declare-fun e!1440011 () Bool)

(assert (=> start!219528 e!1440011))

(declare-fun e!1440010 () Bool)

(assert (=> start!219528 e!1440010))

(assert (=> start!219528 e!1440012))

(assert (=> start!219528 e!1440003))

(assert (=> start!219528 e!1440026))

(declare-fun e!1440006 () Bool)

(assert (=> start!219528 e!1440006))

(declare-fun b!2250374 () Bool)

(declare-fun tp!710928 () Bool)

(assert (=> b!2250374 (= e!1440008 (and tp_is_empty!10367 tp!710928))))

(declare-fun tp!710921 () Bool)

(declare-fun b!2250375 () Bool)

(assert (=> b!2250375 (= e!1440013 (and tp!710921 (inv!36184 (tag!4715 (h!32057 rules!1750))) (inv!36187 (transformation!4225 (h!32057 rules!1750))) e!1440028))))

(declare-fun tp!710927 () Bool)

(declare-fun e!1440009 () Bool)

(declare-fun b!2250376 () Bool)

(assert (=> b!2250376 (= e!1440011 (and tp!710927 (inv!36184 (tag!4715 otherR!12)) (inv!36187 (transformation!4225 otherR!12)) e!1440009))))

(declare-fun tp!710935 () Bool)

(declare-fun b!2250377 () Bool)

(declare-fun e!1440021 () Bool)

(declare-fun inv!36188 (Token!7928) Bool)

(assert (=> b!2250377 (= e!1440006 (and (inv!36188 (h!32056 tokens!456)) e!1440021 tp!710935))))

(declare-fun b!2250378 () Bool)

(assert (=> b!2250378 (= e!1440017 (not e!1440014))))

(declare-fun res!961511 () Bool)

(assert (=> b!2250378 (=> res!961511 e!1440014)))

(assert (=> b!2250378 (= res!961511 e!1440027)))

(declare-fun res!961506 () Bool)

(assert (=> b!2250378 (=> (not res!961506) (not e!1440027))))

(assert (=> b!2250378 (= res!961506 (not lt!836583))))

(assert (=> b!2250378 (ruleValid!1317 thiss!16613 r!2363)))

(declare-fun lt!836587 () Unit!39598)

(assert (=> b!2250378 (= lt!836587 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!724 thiss!16613 r!2363 rules!1750))))

(assert (=> b!2250379 (= e!1440009 (and tp!710923 tp!710936))))

(declare-fun b!2250380 () Bool)

(declare-fun lt!836586 () List!26748)

(assert (=> b!2250380 (= e!1440018 (>= (size!20858 input!1722) (size!20858 lt!836586)))))

(declare-fun ++!6493 (List!26748 List!26748) List!26748)

(assert (=> b!2250380 (isPrefix!2215 lt!836586 (++!6493 lt!836586 (_2!15585 lt!836582)))))

(declare-fun lt!836584 () Unit!39598)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1460 (List!26748 List!26748) Unit!39598)

(assert (=> b!2250380 (= lt!836584 (lemmaConcatTwoListThenFirstIsPrefix!1460 lt!836586 (_2!15585 lt!836582)))))

(assert (=> b!2250380 (= lt!836586 (list!10225 (charsOf!2613 (h!32056 tokens!456))))))

(declare-fun b!2250381 () Bool)

(declare-fun tp!710929 () Bool)

(declare-fun inv!21 (TokenValue!4387) Bool)

(assert (=> b!2250381 (= e!1440021 (and (inv!21 (value!134232 (h!32056 tokens!456))) e!1440019 tp!710929))))

(declare-fun b!2250382 () Bool)

(declare-fun res!961516 () Bool)

(assert (=> b!2250382 (=> (not res!961516) (not e!1440017))))

(assert (=> b!2250382 (= res!961516 (not (= r!2363 otherR!12)))))

(declare-fun b!2250383 () Bool)

(assert (=> b!2250383 (= e!1440020 (= (rule!6527 (head!4790 tokens!456)) r!2363))))

(declare-fun b!2250384 () Bool)

(declare-fun tp!710924 () Bool)

(assert (=> b!2250384 (= e!1440010 (and tp_is_empty!10367 tp!710924))))

(assert (= (and start!219528 res!961515) b!2250357))

(assert (= (and b!2250357 res!961518) b!2250371))

(assert (= (and b!2250371 res!961513) b!2250365))

(assert (= (and b!2250365 res!961505) b!2250362))

(assert (= (and b!2250362 res!961519) b!2250372))

(assert (= (and b!2250372 res!961514) b!2250369))

(assert (= (and b!2250369 (not res!961517)) b!2250364))

(assert (= (and b!2250369 res!961509) b!2250354))

(assert (= (and b!2250354 (not res!961507)) b!2250383))

(assert (= (and b!2250354 res!961503) b!2250356))

(assert (= (and b!2250356 res!961510) b!2250382))

(assert (= (and b!2250382 res!961516) b!2250378))

(assert (= (and b!2250378 res!961506) b!2250355))

(assert (= (and b!2250378 (not res!961511)) b!2250361))

(assert (= (and b!2250361 (not res!961512)) b!2250368))

(assert (= (and b!2250368 (not res!961508)) b!2250370))

(assert (= (and b!2250370 (not res!961504)) b!2250380))

(assert (= (and start!219528 ((_ is Cons!26654) input!1722)) b!2250374))

(assert (= b!2250376 b!2250379))

(assert (= start!219528 b!2250376))

(assert (= (and start!219528 ((_ is Cons!26654) suffix!886)) b!2250384))

(assert (= (and start!219528 ((_ is Cons!26654) otherP!12)) b!2250363))

(assert (= b!2250375 b!2250360))

(assert (= b!2250359 b!2250375))

(assert (= (and start!219528 ((_ is Cons!26656) rules!1750)) b!2250359))

(assert (= b!2250367 b!2250373))

(assert (= start!219528 b!2250367))

(assert (= b!2250366 b!2250358))

(assert (= b!2250381 b!2250366))

(assert (= b!2250377 b!2250381))

(assert (= (and start!219528 ((_ is Cons!26655) tokens!456)) b!2250377))

(declare-fun m!2681249 () Bool)

(assert (=> b!2250364 m!2681249))

(assert (=> b!2250364 m!2681249))

(declare-fun m!2681251 () Bool)

(assert (=> b!2250364 m!2681251))

(assert (=> b!2250364 m!2681251))

(declare-fun m!2681253 () Bool)

(assert (=> b!2250364 m!2681253))

(declare-fun m!2681255 () Bool)

(assert (=> b!2250364 m!2681255))

(declare-fun m!2681257 () Bool)

(assert (=> b!2250356 m!2681257))

(declare-fun m!2681259 () Bool)

(assert (=> b!2250369 m!2681259))

(assert (=> b!2250355 m!2681249))

(assert (=> b!2250355 m!2681249))

(assert (=> b!2250355 m!2681251))

(assert (=> b!2250355 m!2681251))

(declare-fun m!2681261 () Bool)

(assert (=> b!2250355 m!2681261))

(assert (=> b!2250355 m!2681261))

(declare-fun m!2681263 () Bool)

(assert (=> b!2250355 m!2681263))

(declare-fun m!2681265 () Bool)

(assert (=> b!2250366 m!2681265))

(declare-fun m!2681267 () Bool)

(assert (=> b!2250366 m!2681267))

(declare-fun m!2681269 () Bool)

(assert (=> b!2250362 m!2681269))

(declare-fun m!2681271 () Bool)

(assert (=> b!2250381 m!2681271))

(declare-fun m!2681273 () Bool)

(assert (=> b!2250365 m!2681273))

(declare-fun m!2681275 () Bool)

(assert (=> b!2250377 m!2681275))

(declare-fun m!2681277 () Bool)

(assert (=> b!2250380 m!2681277))

(declare-fun m!2681279 () Bool)

(assert (=> b!2250380 m!2681279))

(declare-fun m!2681281 () Bool)

(assert (=> b!2250380 m!2681281))

(declare-fun m!2681283 () Bool)

(assert (=> b!2250380 m!2681283))

(declare-fun m!2681285 () Bool)

(assert (=> b!2250380 m!2681285))

(declare-fun m!2681287 () Bool)

(assert (=> b!2250380 m!2681287))

(declare-fun m!2681289 () Bool)

(assert (=> b!2250380 m!2681289))

(assert (=> b!2250380 m!2681287))

(assert (=> b!2250380 m!2681283))

(declare-fun m!2681291 () Bool)

(assert (=> b!2250378 m!2681291))

(declare-fun m!2681293 () Bool)

(assert (=> b!2250378 m!2681293))

(assert (=> b!2250383 m!2681249))

(declare-fun m!2681295 () Bool)

(assert (=> b!2250357 m!2681295))

(declare-fun m!2681297 () Bool)

(assert (=> b!2250361 m!2681297))

(declare-fun m!2681299 () Bool)

(assert (=> b!2250361 m!2681299))

(declare-fun m!2681301 () Bool)

(assert (=> b!2250361 m!2681301))

(declare-fun m!2681303 () Bool)

(assert (=> b!2250361 m!2681303))

(declare-fun m!2681305 () Bool)

(assert (=> b!2250376 m!2681305))

(declare-fun m!2681307 () Bool)

(assert (=> b!2250376 m!2681307))

(declare-fun m!2681309 () Bool)

(assert (=> b!2250370 m!2681309))

(assert (=> b!2250370 m!2681309))

(declare-fun m!2681311 () Bool)

(assert (=> b!2250370 m!2681311))

(declare-fun m!2681313 () Bool)

(assert (=> b!2250367 m!2681313))

(declare-fun m!2681315 () Bool)

(assert (=> b!2250367 m!2681315))

(declare-fun m!2681317 () Bool)

(assert (=> b!2250371 m!2681317))

(declare-fun m!2681319 () Bool)

(assert (=> b!2250372 m!2681319))

(declare-fun m!2681321 () Bool)

(assert (=> b!2250372 m!2681321))

(declare-fun m!2681323 () Bool)

(assert (=> b!2250372 m!2681323))

(assert (=> b!2250372 m!2681323))

(declare-fun m!2681325 () Bool)

(assert (=> b!2250372 m!2681325))

(declare-fun m!2681327 () Bool)

(assert (=> b!2250375 m!2681327))

(declare-fun m!2681329 () Bool)

(assert (=> b!2250375 m!2681329))

(check-sat (not b_next!66589) (not b!2250363) (not b!2250377) (not b!2250370) (not b!2250362) (not b!2250361) (not b!2250384) (not b!2250378) (not b_next!66591) (not b!2250383) (not b!2250375) b_and!176227 b_and!176217 (not b!2250364) (not b!2250357) (not b_next!66597) (not b_next!66603) (not b!2250367) (not b!2250380) (not b!2250355) (not b!2250366) (not b!2250372) (not b_next!66601) (not b_next!66593) (not b!2250356) (not b!2250365) b_and!176223 tp_is_empty!10367 b_and!176219 b_and!176231 (not b!2250381) (not b!2250374) b_and!176225 (not b!2250359) b_and!176229 (not b_next!66595) (not b_next!66599) b_and!176221 (not b!2250376) (not b!2250371) (not b!2250369))
(check-sat (not b_next!66589) (not b_next!66591) b_and!176223 b_and!176227 b_and!176217 (not b_next!66597) (not b_next!66603) b_and!176225 (not b_next!66601) (not b_next!66593) b_and!176219 b_and!176231 b_and!176229 (not b_next!66595) (not b_next!66599) b_and!176221)
(get-model)

(declare-fun b!2250438 () Bool)

(declare-fun e!1440062 () Bool)

(declare-fun e!1440063 () Bool)

(assert (=> b!2250438 (= e!1440062 e!1440063)))

(declare-fun c!357942 () Bool)

(assert (=> b!2250438 (= c!357942 ((_ is IntegerValue!13162) (value!134232 (h!32056 tokens!456))))))

(declare-fun b!2250439 () Bool)

(declare-fun inv!16 (TokenValue!4387) Bool)

(assert (=> b!2250439 (= e!1440062 (inv!16 (value!134232 (h!32056 tokens!456))))))

(declare-fun b!2250440 () Bool)

(declare-fun res!961549 () Bool)

(declare-fun e!1440061 () Bool)

(assert (=> b!2250440 (=> res!961549 e!1440061)))

(assert (=> b!2250440 (= res!961549 (not ((_ is IntegerValue!13163) (value!134232 (h!32056 tokens!456)))))))

(assert (=> b!2250440 (= e!1440063 e!1440061)))

(declare-fun b!2250441 () Bool)

(declare-fun inv!17 (TokenValue!4387) Bool)

(assert (=> b!2250441 (= e!1440063 (inv!17 (value!134232 (h!32056 tokens!456))))))

(declare-fun b!2250442 () Bool)

(declare-fun inv!15 (TokenValue!4387) Bool)

(assert (=> b!2250442 (= e!1440061 (inv!15 (value!134232 (h!32056 tokens!456))))))

(declare-fun d!667662 () Bool)

(declare-fun c!357943 () Bool)

(assert (=> d!667662 (= c!357943 ((_ is IntegerValue!13161) (value!134232 (h!32056 tokens!456))))))

(assert (=> d!667662 (= (inv!21 (value!134232 (h!32056 tokens!456))) e!1440062)))

(assert (= (and d!667662 c!357943) b!2250439))

(assert (= (and d!667662 (not c!357943)) b!2250438))

(assert (= (and b!2250438 c!357942) b!2250441))

(assert (= (and b!2250438 (not c!357942)) b!2250440))

(assert (= (and b!2250440 (not res!961549)) b!2250442))

(declare-fun m!2681363 () Bool)

(assert (=> b!2250439 m!2681363))

(declare-fun m!2681365 () Bool)

(assert (=> b!2250441 m!2681365))

(declare-fun m!2681367 () Bool)

(assert (=> b!2250442 m!2681367))

(assert (=> b!2250381 d!667662))

(declare-fun d!667674 () Bool)

(declare-fun res!961558 () Bool)

(declare-fun e!1440073 () Bool)

(assert (=> d!667674 (=> (not res!961558) (not e!1440073))))

(declare-fun rulesValid!1549 (LexerInterface!3822 List!26750) Bool)

(assert (=> d!667674 (= res!961558 (rulesValid!1549 thiss!16613 rules!1750))))

(assert (=> d!667674 (= (rulesInvariant!3324 thiss!16613 rules!1750) e!1440073)))

(declare-fun b!2250459 () Bool)

(declare-datatypes ((List!26751 0))(
  ( (Nil!26657) (Cons!26657 (h!32058 String!29039) (t!200813 List!26751)) )
))
(declare-fun noDuplicateTag!1547 (LexerInterface!3822 List!26750 List!26751) Bool)

(assert (=> b!2250459 (= e!1440073 (noDuplicateTag!1547 thiss!16613 rules!1750 Nil!26657))))

(assert (= (and d!667674 res!961558) b!2250459))

(declare-fun m!2681385 () Bool)

(assert (=> d!667674 m!2681385))

(declare-fun m!2681389 () Bool)

(assert (=> b!2250459 m!2681389))

(assert (=> b!2250371 d!667674))

(declare-fun b!2250486 () Bool)

(declare-fun e!1440094 () Int)

(assert (=> b!2250486 (= e!1440094 0)))

(declare-fun b!2250489 () Bool)

(declare-fun e!1440095 () Int)

(assert (=> b!2250489 (= e!1440095 (- 1))))

(declare-fun b!2250488 () Bool)

(assert (=> b!2250488 (= e!1440095 (+ 1 (getIndex!246 (t!200764 rules!1750) r!2363)))))

(declare-fun b!2250487 () Bool)

(assert (=> b!2250487 (= e!1440094 e!1440095)))

(declare-fun c!357952 () Bool)

(assert (=> b!2250487 (= c!357952 (and ((_ is Cons!26656) rules!1750) (not (= (h!32057 rules!1750) r!2363))))))

(declare-fun d!667684 () Bool)

(declare-fun lt!836617 () Int)

(assert (=> d!667684 (>= lt!836617 0)))

(assert (=> d!667684 (= lt!836617 e!1440094)))

(declare-fun c!357953 () Bool)

(assert (=> d!667684 (= c!357953 (and ((_ is Cons!26656) rules!1750) (= (h!32057 rules!1750) r!2363)))))

(assert (=> d!667684 (contains!4575 rules!1750 r!2363)))

(assert (=> d!667684 (= (getIndex!246 rules!1750 r!2363) lt!836617)))

(assert (= (and d!667684 c!357953) b!2250486))

(assert (= (and d!667684 (not c!357953)) b!2250487))

(assert (= (and b!2250487 c!357952) b!2250488))

(assert (= (and b!2250487 (not c!357952)) b!2250489))

(declare-fun m!2681415 () Bool)

(assert (=> b!2250488 m!2681415))

(assert (=> d!667684 m!2681273))

(assert (=> b!2250361 d!667684))

(declare-fun b!2250490 () Bool)

(declare-fun e!1440096 () Int)

(assert (=> b!2250490 (= e!1440096 0)))

(declare-fun b!2250493 () Bool)

(declare-fun e!1440097 () Int)

(assert (=> b!2250493 (= e!1440097 (- 1))))

(declare-fun b!2250492 () Bool)

(assert (=> b!2250492 (= e!1440097 (+ 1 (getIndex!246 (t!200764 rules!1750) otherR!12)))))

(declare-fun b!2250491 () Bool)

(assert (=> b!2250491 (= e!1440096 e!1440097)))

(declare-fun c!357954 () Bool)

(assert (=> b!2250491 (= c!357954 (and ((_ is Cons!26656) rules!1750) (not (= (h!32057 rules!1750) otherR!12))))))

(declare-fun d!667698 () Bool)

(declare-fun lt!836618 () Int)

(assert (=> d!667698 (>= lt!836618 0)))

(assert (=> d!667698 (= lt!836618 e!1440096)))

(declare-fun c!357955 () Bool)

(assert (=> d!667698 (= c!357955 (and ((_ is Cons!26656) rules!1750) (= (h!32057 rules!1750) otherR!12)))))

(assert (=> d!667698 (contains!4575 rules!1750 otherR!12)))

(assert (=> d!667698 (= (getIndex!246 rules!1750 otherR!12) lt!836618)))

(assert (= (and d!667698 c!357955) b!2250490))

(assert (= (and d!667698 (not c!357955)) b!2250491))

(assert (= (and b!2250491 c!357954) b!2250492))

(assert (= (and b!2250491 (not c!357954)) b!2250493))

(declare-fun m!2681417 () Bool)

(assert (=> b!2250492 m!2681417))

(assert (=> d!667698 m!2681269))

(assert (=> b!2250361 d!667698))

(declare-fun d!667700 () Bool)

(declare-fun res!961581 () Bool)

(declare-fun e!1440100 () Bool)

(assert (=> d!667700 (=> (not res!961581) (not e!1440100))))

(declare-fun validRegex!2458 (Regex!6573) Bool)

(assert (=> d!667700 (= res!961581 (validRegex!2458 (regex!4225 otherR!12)))))

(assert (=> d!667700 (= (ruleValid!1317 thiss!16613 otherR!12) e!1440100)))

(declare-fun b!2250498 () Bool)

(declare-fun res!961582 () Bool)

(assert (=> b!2250498 (=> (not res!961582) (not e!1440100))))

(declare-fun nullable!1804 (Regex!6573) Bool)

(assert (=> b!2250498 (= res!961582 (not (nullable!1804 (regex!4225 otherR!12))))))

(declare-fun b!2250499 () Bool)

(assert (=> b!2250499 (= e!1440100 (not (= (tag!4715 otherR!12) (String!29040 ""))))))

(assert (= (and d!667700 res!961581) b!2250498))

(assert (= (and b!2250498 res!961582) b!2250499))

(declare-fun m!2681419 () Bool)

(assert (=> d!667700 m!2681419))

(declare-fun m!2681421 () Bool)

(assert (=> b!2250498 m!2681421))

(assert (=> b!2250361 d!667700))

(declare-fun d!667702 () Bool)

(assert (=> d!667702 (ruleValid!1317 thiss!16613 otherR!12)))

(declare-fun lt!836621 () Unit!39598)

(declare-fun choose!13169 (LexerInterface!3822 Rule!8250 List!26750) Unit!39598)

(assert (=> d!667702 (= lt!836621 (choose!13169 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!667702 (contains!4575 rules!1750 otherR!12)))

(assert (=> d!667702 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!724 thiss!16613 otherR!12 rules!1750) lt!836621)))

(declare-fun bs!455051 () Bool)

(assert (= bs!455051 d!667702))

(assert (=> bs!455051 m!2681301))

(declare-fun m!2681423 () Bool)

(assert (=> bs!455051 m!2681423))

(assert (=> bs!455051 m!2681269))

(assert (=> b!2250361 d!667702))

(declare-fun d!667704 () Bool)

(declare-fun list!10229 (Conc!8599) List!26749)

(assert (=> d!667704 (= (list!10226 (_1!15586 lt!836588)) (list!10229 (c!357926 (_1!15586 lt!836588))))))

(declare-fun bs!455052 () Bool)

(assert (= bs!455052 d!667704))

(declare-fun m!2681425 () Bool)

(assert (=> bs!455052 m!2681425))

(assert (=> b!2250372 d!667704))

(declare-fun d!667706 () Bool)

(declare-fun list!10230 (Conc!8598) List!26748)

(assert (=> d!667706 (= (list!10225 (_2!15586 lt!836588)) (list!10230 (c!357924 (_2!15586 lt!836588))))))

(declare-fun bs!455053 () Bool)

(assert (= bs!455053 d!667706))

(declare-fun m!2681427 () Bool)

(assert (=> bs!455053 m!2681427))

(assert (=> b!2250372 d!667706))

(declare-fun b!2250684 () Bool)

(declare-fun e!1440212 () Bool)

(declare-fun e!1440210 () Bool)

(assert (=> b!2250684 (= e!1440212 e!1440210)))

(declare-fun res!961660 () Bool)

(declare-fun lt!836653 () tuple2!26152)

(assert (=> b!2250684 (= res!961660 (< (size!20857 (_2!15586 lt!836653)) (size!20857 (seqFromList!2929 input!1722))))))

(assert (=> b!2250684 (=> (not res!961660) (not e!1440210))))

(declare-fun b!2250685 () Bool)

(assert (=> b!2250685 (= e!1440212 (= (_2!15586 lt!836653) (seqFromList!2929 input!1722)))))

(declare-fun b!2250686 () Bool)

(declare-fun res!961659 () Bool)

(declare-fun e!1440211 () Bool)

(assert (=> b!2250686 (=> (not res!961659) (not e!1440211))))

(declare-fun lexList!1050 (LexerInterface!3822 List!26750 List!26748) tuple2!26154)

(assert (=> b!2250686 (= res!961659 (= (list!10226 (_1!15586 lt!836653)) (_1!15587 (lexList!1050 thiss!16613 rules!1750 (list!10225 (seqFromList!2929 input!1722))))))))

(declare-fun b!2250687 () Bool)

(declare-fun isEmpty!15031 (BalanceConc!16926) Bool)

(assert (=> b!2250687 (= e!1440210 (not (isEmpty!15031 (_1!15586 lt!836653))))))

(declare-fun b!2250688 () Bool)

(assert (=> b!2250688 (= e!1440211 (= (list!10225 (_2!15586 lt!836653)) (_2!15587 (lexList!1050 thiss!16613 rules!1750 (list!10225 (seqFromList!2929 input!1722))))))))

(declare-fun d!667708 () Bool)

(assert (=> d!667708 e!1440211))

(declare-fun res!961661 () Bool)

(assert (=> d!667708 (=> (not res!961661) (not e!1440211))))

(assert (=> d!667708 (= res!961661 e!1440212)))

(declare-fun c!357980 () Bool)

(declare-fun size!20860 (BalanceConc!16926) Int)

(assert (=> d!667708 (= c!357980 (> (size!20860 (_1!15586 lt!836653)) 0))))

(declare-fun lexTailRecV2!725 (LexerInterface!3822 List!26750 BalanceConc!16924 BalanceConc!16924 BalanceConc!16924 BalanceConc!16926) tuple2!26152)

(assert (=> d!667708 (= lt!836653 (lexTailRecV2!725 thiss!16613 rules!1750 (seqFromList!2929 input!1722) (BalanceConc!16925 Empty!8598) (seqFromList!2929 input!1722) (BalanceConc!16927 Empty!8599)))))

(assert (=> d!667708 (= (lex!1661 thiss!16613 rules!1750 (seqFromList!2929 input!1722)) lt!836653)))

(assert (= (and d!667708 c!357980) b!2250684))

(assert (= (and d!667708 (not c!357980)) b!2250685))

(assert (= (and b!2250684 res!961660) b!2250687))

(assert (= (and d!667708 res!961661) b!2250686))

(assert (= (and b!2250686 res!961659) b!2250688))

(declare-fun m!2681559 () Bool)

(assert (=> b!2250687 m!2681559))

(declare-fun m!2681561 () Bool)

(assert (=> b!2250688 m!2681561))

(assert (=> b!2250688 m!2681323))

(declare-fun m!2681563 () Bool)

(assert (=> b!2250688 m!2681563))

(assert (=> b!2250688 m!2681563))

(declare-fun m!2681565 () Bool)

(assert (=> b!2250688 m!2681565))

(declare-fun m!2681567 () Bool)

(assert (=> b!2250684 m!2681567))

(assert (=> b!2250684 m!2681323))

(declare-fun m!2681569 () Bool)

(assert (=> b!2250684 m!2681569))

(declare-fun m!2681571 () Bool)

(assert (=> b!2250686 m!2681571))

(assert (=> b!2250686 m!2681323))

(assert (=> b!2250686 m!2681563))

(assert (=> b!2250686 m!2681563))

(assert (=> b!2250686 m!2681565))

(declare-fun m!2681573 () Bool)

(assert (=> d!667708 m!2681573))

(assert (=> d!667708 m!2681323))

(assert (=> d!667708 m!2681323))

(declare-fun m!2681575 () Bool)

(assert (=> d!667708 m!2681575))

(assert (=> b!2250372 d!667708))

(declare-fun d!667750 () Bool)

(declare-fun fromListB!1316 (List!26748) BalanceConc!16924)

(assert (=> d!667750 (= (seqFromList!2929 input!1722) (fromListB!1316 input!1722))))

(declare-fun bs!455058 () Bool)

(assert (= bs!455058 d!667750))

(declare-fun m!2681577 () Bool)

(assert (=> bs!455058 m!2681577))

(assert (=> b!2250372 d!667750))

(declare-fun d!667752 () Bool)

(assert (=> d!667752 (= (head!4790 tokens!456) (h!32056 tokens!456))))

(assert (=> b!2250383 d!667752))

(declare-fun d!667754 () Bool)

(declare-fun lt!836656 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3553 (List!26750) (InoxSet Rule!8250))

(assert (=> d!667754 (= lt!836656 (select (content!3553 rules!1750) otherR!12))))

(declare-fun e!1440218 () Bool)

(assert (=> d!667754 (= lt!836656 e!1440218)))

(declare-fun res!961666 () Bool)

(assert (=> d!667754 (=> (not res!961666) (not e!1440218))))

(assert (=> d!667754 (= res!961666 ((_ is Cons!26656) rules!1750))))

(assert (=> d!667754 (= (contains!4575 rules!1750 otherR!12) lt!836656)))

(declare-fun b!2250693 () Bool)

(declare-fun e!1440217 () Bool)

(assert (=> b!2250693 (= e!1440218 e!1440217)))

(declare-fun res!961667 () Bool)

(assert (=> b!2250693 (=> res!961667 e!1440217)))

(assert (=> b!2250693 (= res!961667 (= (h!32057 rules!1750) otherR!12))))

(declare-fun b!2250694 () Bool)

(assert (=> b!2250694 (= e!1440217 (contains!4575 (t!200764 rules!1750) otherR!12))))

(assert (= (and d!667754 res!961666) b!2250693))

(assert (= (and b!2250693 (not res!961667)) b!2250694))

(declare-fun m!2681579 () Bool)

(assert (=> d!667754 m!2681579))

(declare-fun m!2681581 () Bool)

(assert (=> d!667754 m!2681581))

(declare-fun m!2681583 () Bool)

(assert (=> b!2250694 m!2681583))

(assert (=> b!2250362 d!667754))

(declare-fun d!667756 () Bool)

(declare-fun lt!836659 () Int)

(assert (=> d!667756 (= lt!836659 (size!20858 (list!10225 (charsOf!2613 (head!4790 tokens!456)))))))

(declare-fun size!20861 (Conc!8598) Int)

(assert (=> d!667756 (= lt!836659 (size!20861 (c!357924 (charsOf!2613 (head!4790 tokens!456)))))))

(assert (=> d!667756 (= (size!20857 (charsOf!2613 (head!4790 tokens!456))) lt!836659)))

(declare-fun bs!455059 () Bool)

(assert (= bs!455059 d!667756))

(assert (=> bs!455059 m!2681251))

(assert (=> bs!455059 m!2681261))

(assert (=> bs!455059 m!2681261))

(declare-fun m!2681585 () Bool)

(assert (=> bs!455059 m!2681585))

(declare-fun m!2681587 () Bool)

(assert (=> bs!455059 m!2681587))

(assert (=> b!2250364 d!667756))

(declare-fun d!667758 () Bool)

(declare-fun lt!836662 () BalanceConc!16924)

(assert (=> d!667758 (= (list!10225 lt!836662) (originalCharacters!4995 (head!4790 tokens!456)))))

(declare-fun dynLambda!11591 (Int TokenValue!4387) BalanceConc!16924)

(assert (=> d!667758 (= lt!836662 (dynLambda!11591 (toChars!5822 (transformation!4225 (rule!6527 (head!4790 tokens!456)))) (value!134232 (head!4790 tokens!456))))))

(assert (=> d!667758 (= (charsOf!2613 (head!4790 tokens!456)) lt!836662)))

(declare-fun b_lambda!71931 () Bool)

(assert (=> (not b_lambda!71931) (not d!667758)))

(declare-fun t!200790 () Bool)

(declare-fun tb!133367 () Bool)

(assert (=> (and b!2250360 (= (toChars!5822 (transformation!4225 (h!32057 rules!1750))) (toChars!5822 (transformation!4225 (rule!6527 (head!4790 tokens!456))))) t!200790) tb!133367))

(declare-fun b!2250699 () Bool)

(declare-fun e!1440221 () Bool)

(declare-fun tp!711007 () Bool)

(declare-fun inv!36191 (Conc!8598) Bool)

(assert (=> b!2250699 (= e!1440221 (and (inv!36191 (c!357924 (dynLambda!11591 (toChars!5822 (transformation!4225 (rule!6527 (head!4790 tokens!456)))) (value!134232 (head!4790 tokens!456))))) tp!711007))))

(declare-fun result!162576 () Bool)

(declare-fun inv!36192 (BalanceConc!16924) Bool)

(assert (=> tb!133367 (= result!162576 (and (inv!36192 (dynLambda!11591 (toChars!5822 (transformation!4225 (rule!6527 (head!4790 tokens!456)))) (value!134232 (head!4790 tokens!456)))) e!1440221))))

(assert (= tb!133367 b!2250699))

(declare-fun m!2681589 () Bool)

(assert (=> b!2250699 m!2681589))

(declare-fun m!2681591 () Bool)

(assert (=> tb!133367 m!2681591))

(assert (=> d!667758 t!200790))

(declare-fun b_and!176265 () Bool)

(assert (= b_and!176219 (and (=> t!200790 result!162576) b_and!176265)))

(declare-fun t!200792 () Bool)

(declare-fun tb!133369 () Bool)

(assert (=> (and b!2250379 (= (toChars!5822 (transformation!4225 otherR!12)) (toChars!5822 (transformation!4225 (rule!6527 (head!4790 tokens!456))))) t!200792) tb!133369))

(declare-fun result!162580 () Bool)

(assert (= result!162580 result!162576))

(assert (=> d!667758 t!200792))

(declare-fun b_and!176267 () Bool)

(assert (= b_and!176223 (and (=> t!200792 result!162580) b_and!176267)))

(declare-fun t!200794 () Bool)

(declare-fun tb!133371 () Bool)

(assert (=> (and b!2250358 (= (toChars!5822 (transformation!4225 (rule!6527 (h!32056 tokens!456)))) (toChars!5822 (transformation!4225 (rule!6527 (head!4790 tokens!456))))) t!200794) tb!133371))

(declare-fun result!162582 () Bool)

(assert (= result!162582 result!162576))

(assert (=> d!667758 t!200794))

(declare-fun b_and!176269 () Bool)

(assert (= b_and!176227 (and (=> t!200794 result!162582) b_and!176269)))

(declare-fun tb!133373 () Bool)

(declare-fun t!200796 () Bool)

(assert (=> (and b!2250373 (= (toChars!5822 (transformation!4225 r!2363)) (toChars!5822 (transformation!4225 (rule!6527 (head!4790 tokens!456))))) t!200796) tb!133373))

(declare-fun result!162584 () Bool)

(assert (= result!162584 result!162576))

(assert (=> d!667758 t!200796))

(declare-fun b_and!176271 () Bool)

(assert (= b_and!176231 (and (=> t!200796 result!162584) b_and!176271)))

(declare-fun m!2681593 () Bool)

(assert (=> d!667758 m!2681593))

(declare-fun m!2681595 () Bool)

(assert (=> d!667758 m!2681595))

(assert (=> b!2250364 d!667758))

(assert (=> b!2250364 d!667752))

(declare-fun d!667760 () Bool)

(declare-fun lt!836665 () Int)

(assert (=> d!667760 (>= lt!836665 0)))

(declare-fun e!1440224 () Int)

(assert (=> d!667760 (= lt!836665 e!1440224)))

(declare-fun c!357983 () Bool)

(assert (=> d!667760 (= c!357983 ((_ is Nil!26654) otherP!12))))

(assert (=> d!667760 (= (size!20858 otherP!12) lt!836665)))

(declare-fun b!2250704 () Bool)

(assert (=> b!2250704 (= e!1440224 0)))

(declare-fun b!2250705 () Bool)

(assert (=> b!2250705 (= e!1440224 (+ 1 (size!20858 (t!200762 otherP!12))))))

(assert (= (and d!667760 c!357983) b!2250704))

(assert (= (and d!667760 (not c!357983)) b!2250705))

(declare-fun m!2681597 () Bool)

(assert (=> b!2250705 m!2681597))

(assert (=> b!2250364 d!667760))

(declare-fun d!667762 () Bool)

(assert (=> d!667762 (= (inv!36184 (tag!4715 (h!32057 rules!1750))) (= (mod (str.len (value!134231 (tag!4715 (h!32057 rules!1750)))) 2) 0))))

(assert (=> b!2250375 d!667762))

(declare-fun d!667764 () Bool)

(declare-fun res!961670 () Bool)

(declare-fun e!1440227 () Bool)

(assert (=> d!667764 (=> (not res!961670) (not e!1440227))))

(declare-fun semiInverseModEq!1706 (Int Int) Bool)

(assert (=> d!667764 (= res!961670 (semiInverseModEq!1706 (toChars!5822 (transformation!4225 (h!32057 rules!1750))) (toValue!5963 (transformation!4225 (h!32057 rules!1750)))))))

(assert (=> d!667764 (= (inv!36187 (transformation!4225 (h!32057 rules!1750))) e!1440227)))

(declare-fun b!2250708 () Bool)

(declare-fun equivClasses!1625 (Int Int) Bool)

(assert (=> b!2250708 (= e!1440227 (equivClasses!1625 (toChars!5822 (transformation!4225 (h!32057 rules!1750))) (toValue!5963 (transformation!4225 (h!32057 rules!1750)))))))

(assert (= (and d!667764 res!961670) b!2250708))

(declare-fun m!2681599 () Bool)

(assert (=> d!667764 m!2681599))

(declare-fun m!2681601 () Bool)

(assert (=> b!2250708 m!2681601))

(assert (=> b!2250375 d!667764))

(declare-fun d!667766 () Bool)

(declare-fun lt!836666 () Bool)

(assert (=> d!667766 (= lt!836666 (select (content!3553 rules!1750) r!2363))))

(declare-fun e!1440229 () Bool)

(assert (=> d!667766 (= lt!836666 e!1440229)))

(declare-fun res!961671 () Bool)

(assert (=> d!667766 (=> (not res!961671) (not e!1440229))))

(assert (=> d!667766 (= res!961671 ((_ is Cons!26656) rules!1750))))

(assert (=> d!667766 (= (contains!4575 rules!1750 r!2363) lt!836666)))

(declare-fun b!2250709 () Bool)

(declare-fun e!1440228 () Bool)

(assert (=> b!2250709 (= e!1440229 e!1440228)))

(declare-fun res!961672 () Bool)

(assert (=> b!2250709 (=> res!961672 e!1440228)))

(assert (=> b!2250709 (= res!961672 (= (h!32057 rules!1750) r!2363))))

(declare-fun b!2250710 () Bool)

(assert (=> b!2250710 (= e!1440228 (contains!4575 (t!200764 rules!1750) r!2363))))

(assert (= (and d!667766 res!961671) b!2250709))

(assert (= (and b!2250709 (not res!961672)) b!2250710))

(assert (=> d!667766 m!2681579))

(declare-fun m!2681603 () Bool)

(assert (=> d!667766 m!2681603))

(declare-fun m!2681605 () Bool)

(assert (=> b!2250710 m!2681605))

(assert (=> b!2250365 d!667766))

(declare-fun d!667768 () Bool)

(assert (=> d!667768 (= (inv!36184 (tag!4715 otherR!12)) (= (mod (str.len (value!134231 (tag!4715 otherR!12))) 2) 0))))

(assert (=> b!2250376 d!667768))

(declare-fun d!667770 () Bool)

(declare-fun res!961673 () Bool)

(declare-fun e!1440230 () Bool)

(assert (=> d!667770 (=> (not res!961673) (not e!1440230))))

(assert (=> d!667770 (= res!961673 (semiInverseModEq!1706 (toChars!5822 (transformation!4225 otherR!12)) (toValue!5963 (transformation!4225 otherR!12))))))

(assert (=> d!667770 (= (inv!36187 (transformation!4225 otherR!12)) e!1440230)))

(declare-fun b!2250711 () Bool)

(assert (=> b!2250711 (= e!1440230 (equivClasses!1625 (toChars!5822 (transformation!4225 otherR!12)) (toValue!5963 (transformation!4225 otherR!12))))))

(assert (= (and d!667770 res!961673) b!2250711))

(declare-fun m!2681607 () Bool)

(assert (=> d!667770 m!2681607))

(declare-fun m!2681609 () Bool)

(assert (=> b!2250711 m!2681609))

(assert (=> b!2250376 d!667770))

(declare-fun b!2250740 () Bool)

(declare-fun e!1440250 () Bool)

(declare-fun lt!836669 () Bool)

(declare-fun call!135577 () Bool)

(assert (=> b!2250740 (= e!1440250 (= lt!836669 call!135577))))

(declare-fun bm!135572 () Bool)

(declare-fun isEmpty!15032 (List!26748) Bool)

(assert (=> bm!135572 (= call!135577 (isEmpty!15032 (list!10225 (charsOf!2613 (head!4790 tokens!456)))))))

(declare-fun b!2250741 () Bool)

(declare-fun res!961693 () Bool)

(declare-fun e!1440247 () Bool)

(assert (=> b!2250741 (=> res!961693 e!1440247)))

(declare-fun tail!3247 (List!26748) List!26748)

(assert (=> b!2250741 (= res!961693 (not (isEmpty!15032 (tail!3247 (list!10225 (charsOf!2613 (head!4790 tokens!456)))))))))

(declare-fun b!2250742 () Bool)

(declare-fun res!961695 () Bool)

(declare-fun e!1440249 () Bool)

(assert (=> b!2250742 (=> (not res!961695) (not e!1440249))))

(assert (=> b!2250742 (= res!961695 (not call!135577))))

(declare-fun b!2250743 () Bool)

(declare-fun e!1440248 () Bool)

(declare-fun derivativeStep!1466 (Regex!6573 C!13292) Regex!6573)

(declare-fun head!4792 (List!26748) C!13292)

(assert (=> b!2250743 (= e!1440248 (matchR!2834 (derivativeStep!1466 (regex!4225 r!2363) (head!4792 (list!10225 (charsOf!2613 (head!4790 tokens!456))))) (tail!3247 (list!10225 (charsOf!2613 (head!4790 tokens!456))))))))

(declare-fun b!2250744 () Bool)

(assert (=> b!2250744 (= e!1440249 (= (head!4792 (list!10225 (charsOf!2613 (head!4790 tokens!456)))) (c!357925 (regex!4225 r!2363))))))

(declare-fun b!2250745 () Bool)

(declare-fun res!961697 () Bool)

(declare-fun e!1440246 () Bool)

(assert (=> b!2250745 (=> res!961697 e!1440246)))

(assert (=> b!2250745 (= res!961697 e!1440249)))

(declare-fun res!961690 () Bool)

(assert (=> b!2250745 (=> (not res!961690) (not e!1440249))))

(assert (=> b!2250745 (= res!961690 lt!836669)))

(declare-fun b!2250746 () Bool)

(declare-fun e!1440251 () Bool)

(assert (=> b!2250746 (= e!1440250 e!1440251)))

(declare-fun c!357990 () Bool)

(assert (=> b!2250746 (= c!357990 ((_ is EmptyLang!6573) (regex!4225 r!2363)))))

(declare-fun d!667772 () Bool)

(assert (=> d!667772 e!1440250))

(declare-fun c!357992 () Bool)

(assert (=> d!667772 (= c!357992 ((_ is EmptyExpr!6573) (regex!4225 r!2363)))))

(assert (=> d!667772 (= lt!836669 e!1440248)))

(declare-fun c!357991 () Bool)

(assert (=> d!667772 (= c!357991 (isEmpty!15032 (list!10225 (charsOf!2613 (head!4790 tokens!456)))))))

(assert (=> d!667772 (validRegex!2458 (regex!4225 r!2363))))

(assert (=> d!667772 (= (matchR!2834 (regex!4225 r!2363) (list!10225 (charsOf!2613 (head!4790 tokens!456)))) lt!836669)))

(declare-fun b!2250747 () Bool)

(assert (=> b!2250747 (= e!1440247 (not (= (head!4792 (list!10225 (charsOf!2613 (head!4790 tokens!456)))) (c!357925 (regex!4225 r!2363)))))))

(declare-fun b!2250748 () Bool)

(declare-fun e!1440245 () Bool)

(assert (=> b!2250748 (= e!1440246 e!1440245)))

(declare-fun res!961691 () Bool)

(assert (=> b!2250748 (=> (not res!961691) (not e!1440245))))

(assert (=> b!2250748 (= res!961691 (not lt!836669))))

(declare-fun b!2250749 () Bool)

(assert (=> b!2250749 (= e!1440251 (not lt!836669))))

(declare-fun b!2250750 () Bool)

(assert (=> b!2250750 (= e!1440245 e!1440247)))

(declare-fun res!961692 () Bool)

(assert (=> b!2250750 (=> res!961692 e!1440247)))

(assert (=> b!2250750 (= res!961692 call!135577)))

(declare-fun b!2250751 () Bool)

(declare-fun res!961694 () Bool)

(assert (=> b!2250751 (=> (not res!961694) (not e!1440249))))

(assert (=> b!2250751 (= res!961694 (isEmpty!15032 (tail!3247 (list!10225 (charsOf!2613 (head!4790 tokens!456))))))))

(declare-fun b!2250752 () Bool)

(assert (=> b!2250752 (= e!1440248 (nullable!1804 (regex!4225 r!2363)))))

(declare-fun b!2250753 () Bool)

(declare-fun res!961696 () Bool)

(assert (=> b!2250753 (=> res!961696 e!1440246)))

(assert (=> b!2250753 (= res!961696 (not ((_ is ElementMatch!6573) (regex!4225 r!2363))))))

(assert (=> b!2250753 (= e!1440251 e!1440246)))

(assert (= (and d!667772 c!357991) b!2250752))

(assert (= (and d!667772 (not c!357991)) b!2250743))

(assert (= (and d!667772 c!357992) b!2250740))

(assert (= (and d!667772 (not c!357992)) b!2250746))

(assert (= (and b!2250746 c!357990) b!2250749))

(assert (= (and b!2250746 (not c!357990)) b!2250753))

(assert (= (and b!2250753 (not res!961696)) b!2250745))

(assert (= (and b!2250745 res!961690) b!2250742))

(assert (= (and b!2250742 res!961695) b!2250751))

(assert (= (and b!2250751 res!961694) b!2250744))

(assert (= (and b!2250745 (not res!961697)) b!2250748))

(assert (= (and b!2250748 res!961691) b!2250750))

(assert (= (and b!2250750 (not res!961692)) b!2250741))

(assert (= (and b!2250741 (not res!961693)) b!2250747))

(assert (= (or b!2250740 b!2250742 b!2250750) bm!135572))

(assert (=> bm!135572 m!2681261))

(declare-fun m!2681611 () Bool)

(assert (=> bm!135572 m!2681611))

(assert (=> b!2250743 m!2681261))

(declare-fun m!2681613 () Bool)

(assert (=> b!2250743 m!2681613))

(assert (=> b!2250743 m!2681613))

(declare-fun m!2681615 () Bool)

(assert (=> b!2250743 m!2681615))

(assert (=> b!2250743 m!2681261))

(declare-fun m!2681617 () Bool)

(assert (=> b!2250743 m!2681617))

(assert (=> b!2250743 m!2681615))

(assert (=> b!2250743 m!2681617))

(declare-fun m!2681619 () Bool)

(assert (=> b!2250743 m!2681619))

(assert (=> b!2250741 m!2681261))

(assert (=> b!2250741 m!2681617))

(assert (=> b!2250741 m!2681617))

(declare-fun m!2681621 () Bool)

(assert (=> b!2250741 m!2681621))

(assert (=> b!2250747 m!2681261))

(assert (=> b!2250747 m!2681613))

(assert (=> d!667772 m!2681261))

(assert (=> d!667772 m!2681611))

(declare-fun m!2681623 () Bool)

(assert (=> d!667772 m!2681623))

(declare-fun m!2681625 () Bool)

(assert (=> b!2250752 m!2681625))

(assert (=> b!2250744 m!2681261))

(assert (=> b!2250744 m!2681613))

(assert (=> b!2250751 m!2681261))

(assert (=> b!2250751 m!2681617))

(assert (=> b!2250751 m!2681617))

(assert (=> b!2250751 m!2681621))

(assert (=> b!2250355 d!667772))

(declare-fun d!667774 () Bool)

(assert (=> d!667774 (= (list!10225 (charsOf!2613 (head!4790 tokens!456))) (list!10230 (c!357924 (charsOf!2613 (head!4790 tokens!456)))))))

(declare-fun bs!455060 () Bool)

(assert (= bs!455060 d!667774))

(declare-fun m!2681627 () Bool)

(assert (=> bs!455060 m!2681627))

(assert (=> b!2250355 d!667774))

(assert (=> b!2250355 d!667758))

(assert (=> b!2250355 d!667752))

(declare-fun d!667776 () Bool)

(assert (=> d!667776 (= (inv!36184 (tag!4715 (rule!6527 (h!32056 tokens!456)))) (= (mod (str.len (value!134231 (tag!4715 (rule!6527 (h!32056 tokens!456))))) 2) 0))))

(assert (=> b!2250366 d!667776))

(declare-fun d!667778 () Bool)

(declare-fun res!961698 () Bool)

(declare-fun e!1440252 () Bool)

(assert (=> d!667778 (=> (not res!961698) (not e!1440252))))

(assert (=> d!667778 (= res!961698 (semiInverseModEq!1706 (toChars!5822 (transformation!4225 (rule!6527 (h!32056 tokens!456)))) (toValue!5963 (transformation!4225 (rule!6527 (h!32056 tokens!456))))))))

(assert (=> d!667778 (= (inv!36187 (transformation!4225 (rule!6527 (h!32056 tokens!456)))) e!1440252)))

(declare-fun b!2250754 () Bool)

(assert (=> b!2250754 (= e!1440252 (equivClasses!1625 (toChars!5822 (transformation!4225 (rule!6527 (h!32056 tokens!456)))) (toValue!5963 (transformation!4225 (rule!6527 (h!32056 tokens!456))))))))

(assert (= (and d!667778 res!961698) b!2250754))

(declare-fun m!2681629 () Bool)

(assert (=> d!667778 m!2681629))

(declare-fun m!2681631 () Bool)

(assert (=> b!2250754 m!2681631))

(assert (=> b!2250366 d!667778))

(declare-fun d!667780 () Bool)

(declare-fun res!961703 () Bool)

(declare-fun e!1440255 () Bool)

(assert (=> d!667780 (=> (not res!961703) (not e!1440255))))

(assert (=> d!667780 (= res!961703 (not (isEmpty!15032 (originalCharacters!4995 (h!32056 tokens!456)))))))

(assert (=> d!667780 (= (inv!36188 (h!32056 tokens!456)) e!1440255)))

(declare-fun b!2250759 () Bool)

(declare-fun res!961704 () Bool)

(assert (=> b!2250759 (=> (not res!961704) (not e!1440255))))

(assert (=> b!2250759 (= res!961704 (= (originalCharacters!4995 (h!32056 tokens!456)) (list!10225 (dynLambda!11591 (toChars!5822 (transformation!4225 (rule!6527 (h!32056 tokens!456)))) (value!134232 (h!32056 tokens!456))))))))

(declare-fun b!2250760 () Bool)

(assert (=> b!2250760 (= e!1440255 (= (size!20856 (h!32056 tokens!456)) (size!20858 (originalCharacters!4995 (h!32056 tokens!456)))))))

(assert (= (and d!667780 res!961703) b!2250759))

(assert (= (and b!2250759 res!961704) b!2250760))

(declare-fun b_lambda!71933 () Bool)

(assert (=> (not b_lambda!71933) (not b!2250759)))

(declare-fun tb!133375 () Bool)

(declare-fun t!200798 () Bool)

(assert (=> (and b!2250360 (= (toChars!5822 (transformation!4225 (h!32057 rules!1750))) (toChars!5822 (transformation!4225 (rule!6527 (h!32056 tokens!456))))) t!200798) tb!133375))

(declare-fun b!2250761 () Bool)

(declare-fun e!1440256 () Bool)

(declare-fun tp!711008 () Bool)

(assert (=> b!2250761 (= e!1440256 (and (inv!36191 (c!357924 (dynLambda!11591 (toChars!5822 (transformation!4225 (rule!6527 (h!32056 tokens!456)))) (value!134232 (h!32056 tokens!456))))) tp!711008))))

(declare-fun result!162586 () Bool)

(assert (=> tb!133375 (= result!162586 (and (inv!36192 (dynLambda!11591 (toChars!5822 (transformation!4225 (rule!6527 (h!32056 tokens!456)))) (value!134232 (h!32056 tokens!456)))) e!1440256))))

(assert (= tb!133375 b!2250761))

(declare-fun m!2681633 () Bool)

(assert (=> b!2250761 m!2681633))

(declare-fun m!2681635 () Bool)

(assert (=> tb!133375 m!2681635))

(assert (=> b!2250759 t!200798))

(declare-fun b_and!176273 () Bool)

(assert (= b_and!176265 (and (=> t!200798 result!162586) b_and!176273)))

(declare-fun tb!133377 () Bool)

(declare-fun t!200800 () Bool)

(assert (=> (and b!2250379 (= (toChars!5822 (transformation!4225 otherR!12)) (toChars!5822 (transformation!4225 (rule!6527 (h!32056 tokens!456))))) t!200800) tb!133377))

(declare-fun result!162588 () Bool)

(assert (= result!162588 result!162586))

(assert (=> b!2250759 t!200800))

(declare-fun b_and!176275 () Bool)

(assert (= b_and!176267 (and (=> t!200800 result!162588) b_and!176275)))

(declare-fun t!200802 () Bool)

(declare-fun tb!133379 () Bool)

(assert (=> (and b!2250358 (= (toChars!5822 (transformation!4225 (rule!6527 (h!32056 tokens!456)))) (toChars!5822 (transformation!4225 (rule!6527 (h!32056 tokens!456))))) t!200802) tb!133379))

(declare-fun result!162590 () Bool)

(assert (= result!162590 result!162586))

(assert (=> b!2250759 t!200802))

(declare-fun b_and!176277 () Bool)

(assert (= b_and!176269 (and (=> t!200802 result!162590) b_and!176277)))

(declare-fun tb!133381 () Bool)

(declare-fun t!200804 () Bool)

(assert (=> (and b!2250373 (= (toChars!5822 (transformation!4225 r!2363)) (toChars!5822 (transformation!4225 (rule!6527 (h!32056 tokens!456))))) t!200804) tb!133381))

(declare-fun result!162592 () Bool)

(assert (= result!162592 result!162586))

(assert (=> b!2250759 t!200804))

(declare-fun b_and!176279 () Bool)

(assert (= b_and!176271 (and (=> t!200804 result!162592) b_and!176279)))

(declare-fun m!2681637 () Bool)

(assert (=> d!667780 m!2681637))

(declare-fun m!2681639 () Bool)

(assert (=> b!2250759 m!2681639))

(assert (=> b!2250759 m!2681639))

(declare-fun m!2681641 () Bool)

(assert (=> b!2250759 m!2681641))

(declare-fun m!2681643 () Bool)

(assert (=> b!2250760 m!2681643))

(assert (=> b!2250377 d!667780))

(declare-fun b!2250772 () Bool)

(declare-fun e!1440264 () Bool)

(assert (=> b!2250772 (= e!1440264 (isPrefix!2215 (tail!3247 otherP!12) (tail!3247 input!1722)))))

(declare-fun b!2250773 () Bool)

(declare-fun e!1440263 () Bool)

(assert (=> b!2250773 (= e!1440263 (>= (size!20858 input!1722) (size!20858 otherP!12)))))

(declare-fun b!2250771 () Bool)

(declare-fun res!961715 () Bool)

(assert (=> b!2250771 (=> (not res!961715) (not e!1440264))))

(assert (=> b!2250771 (= res!961715 (= (head!4792 otherP!12) (head!4792 input!1722)))))

(declare-fun d!667782 () Bool)

(assert (=> d!667782 e!1440263))

(declare-fun res!961714 () Bool)

(assert (=> d!667782 (=> res!961714 e!1440263)))

(declare-fun lt!836672 () Bool)

(assert (=> d!667782 (= res!961714 (not lt!836672))))

(declare-fun e!1440265 () Bool)

(assert (=> d!667782 (= lt!836672 e!1440265)))

(declare-fun res!961716 () Bool)

(assert (=> d!667782 (=> res!961716 e!1440265)))

(assert (=> d!667782 (= res!961716 ((_ is Nil!26654) otherP!12))))

(assert (=> d!667782 (= (isPrefix!2215 otherP!12 input!1722) lt!836672)))

(declare-fun b!2250770 () Bool)

(assert (=> b!2250770 (= e!1440265 e!1440264)))

(declare-fun res!961713 () Bool)

(assert (=> b!2250770 (=> (not res!961713) (not e!1440264))))

(assert (=> b!2250770 (= res!961713 (not ((_ is Nil!26654) input!1722)))))

(assert (= (and d!667782 (not res!961716)) b!2250770))

(assert (= (and b!2250770 res!961713) b!2250771))

(assert (= (and b!2250771 res!961715) b!2250772))

(assert (= (and d!667782 (not res!961714)) b!2250773))

(declare-fun m!2681645 () Bool)

(assert (=> b!2250772 m!2681645))

(declare-fun m!2681647 () Bool)

(assert (=> b!2250772 m!2681647))

(assert (=> b!2250772 m!2681645))

(assert (=> b!2250772 m!2681647))

(declare-fun m!2681649 () Bool)

(assert (=> b!2250772 m!2681649))

(assert (=> b!2250773 m!2681279))

(assert (=> b!2250773 m!2681255))

(declare-fun m!2681651 () Bool)

(assert (=> b!2250771 m!2681651))

(declare-fun m!2681653 () Bool)

(assert (=> b!2250771 m!2681653))

(assert (=> b!2250356 d!667782))

(declare-fun d!667784 () Bool)

(assert (=> d!667784 (= (inv!36184 (tag!4715 r!2363)) (= (mod (str.len (value!134231 (tag!4715 r!2363))) 2) 0))))

(assert (=> b!2250367 d!667784))

(declare-fun d!667786 () Bool)

(declare-fun res!961717 () Bool)

(declare-fun e!1440266 () Bool)

(assert (=> d!667786 (=> (not res!961717) (not e!1440266))))

(assert (=> d!667786 (= res!961717 (semiInverseModEq!1706 (toChars!5822 (transformation!4225 r!2363)) (toValue!5963 (transformation!4225 r!2363))))))

(assert (=> d!667786 (= (inv!36187 (transformation!4225 r!2363)) e!1440266)))

(declare-fun b!2250774 () Bool)

(assert (=> b!2250774 (= e!1440266 (equivClasses!1625 (toChars!5822 (transformation!4225 r!2363)) (toValue!5963 (transformation!4225 r!2363))))))

(assert (= (and d!667786 res!961717) b!2250774))

(declare-fun m!2681655 () Bool)

(assert (=> d!667786 m!2681655))

(declare-fun m!2681657 () Bool)

(assert (=> b!2250774 m!2681657))

(assert (=> b!2250367 d!667786))

(declare-fun d!667788 () Bool)

(declare-fun res!961718 () Bool)

(declare-fun e!1440267 () Bool)

(assert (=> d!667788 (=> (not res!961718) (not e!1440267))))

(assert (=> d!667788 (= res!961718 (validRegex!2458 (regex!4225 r!2363)))))

(assert (=> d!667788 (= (ruleValid!1317 thiss!16613 r!2363) e!1440267)))

(declare-fun b!2250775 () Bool)

(declare-fun res!961719 () Bool)

(assert (=> b!2250775 (=> (not res!961719) (not e!1440267))))

(assert (=> b!2250775 (= res!961719 (not (nullable!1804 (regex!4225 r!2363))))))

(declare-fun b!2250776 () Bool)

(assert (=> b!2250776 (= e!1440267 (not (= (tag!4715 r!2363) (String!29040 ""))))))

(assert (= (and d!667788 res!961718) b!2250775))

(assert (= (and b!2250775 res!961719) b!2250776))

(assert (=> d!667788 m!2681623))

(assert (=> b!2250775 m!2681625))

(assert (=> b!2250378 d!667788))

(declare-fun d!667790 () Bool)

(assert (=> d!667790 (ruleValid!1317 thiss!16613 r!2363)))

(declare-fun lt!836673 () Unit!39598)

(assert (=> d!667790 (= lt!836673 (choose!13169 thiss!16613 r!2363 rules!1750))))

(assert (=> d!667790 (contains!4575 rules!1750 r!2363)))

(assert (=> d!667790 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!724 thiss!16613 r!2363 rules!1750) lt!836673)))

(declare-fun bs!455061 () Bool)

(assert (= bs!455061 d!667790))

(assert (=> bs!455061 m!2681291))

(declare-fun m!2681659 () Bool)

(assert (=> bs!455061 m!2681659))

(assert (=> bs!455061 m!2681273))

(assert (=> b!2250378 d!667790))

(declare-fun d!667792 () Bool)

(assert (=> d!667792 (= (isEmpty!15026 rules!1750) ((_ is Nil!26656) rules!1750))))

(assert (=> b!2250357 d!667792))

(declare-fun d!667794 () Bool)

(assert (=> d!667794 (= (isEmpty!15027 tokens!456) ((_ is Nil!26655) tokens!456))))

(assert (=> b!2250369 d!667794))

(declare-fun d!667796 () Bool)

(declare-fun lt!836674 () Int)

(assert (=> d!667796 (>= lt!836674 0)))

(declare-fun e!1440268 () Int)

(assert (=> d!667796 (= lt!836674 e!1440268)))

(declare-fun c!357993 () Bool)

(assert (=> d!667796 (= c!357993 ((_ is Nil!26654) input!1722))))

(assert (=> d!667796 (= (size!20858 input!1722) lt!836674)))

(declare-fun b!2250777 () Bool)

(assert (=> b!2250777 (= e!1440268 0)))

(declare-fun b!2250778 () Bool)

(assert (=> b!2250778 (= e!1440268 (+ 1 (size!20858 (t!200762 input!1722))))))

(assert (= (and d!667796 c!357993) b!2250777))

(assert (= (and d!667796 (not c!357993)) b!2250778))

(declare-fun m!2681661 () Bool)

(assert (=> b!2250778 m!2681661))

(assert (=> b!2250380 d!667796))

(declare-fun d!667798 () Bool)

(assert (=> d!667798 (= (list!10225 (charsOf!2613 (h!32056 tokens!456))) (list!10230 (c!357924 (charsOf!2613 (h!32056 tokens!456)))))))

(declare-fun bs!455062 () Bool)

(assert (= bs!455062 d!667798))

(declare-fun m!2681663 () Bool)

(assert (=> bs!455062 m!2681663))

(assert (=> b!2250380 d!667798))

(declare-fun d!667800 () Bool)

(declare-fun e!1440274 () Bool)

(assert (=> d!667800 e!1440274))

(declare-fun res!961724 () Bool)

(assert (=> d!667800 (=> (not res!961724) (not e!1440274))))

(declare-fun lt!836677 () List!26748)

(declare-fun content!3554 (List!26748) (InoxSet C!13292))

(assert (=> d!667800 (= res!961724 (= (content!3554 lt!836677) ((_ map or) (content!3554 lt!836586) (content!3554 (_2!15585 lt!836582)))))))

(declare-fun e!1440273 () List!26748)

(assert (=> d!667800 (= lt!836677 e!1440273)))

(declare-fun c!357996 () Bool)

(assert (=> d!667800 (= c!357996 ((_ is Nil!26654) lt!836586))))

(assert (=> d!667800 (= (++!6493 lt!836586 (_2!15585 lt!836582)) lt!836677)))

(declare-fun b!2250789 () Bool)

(declare-fun res!961725 () Bool)

(assert (=> b!2250789 (=> (not res!961725) (not e!1440274))))

(assert (=> b!2250789 (= res!961725 (= (size!20858 lt!836677) (+ (size!20858 lt!836586) (size!20858 (_2!15585 lt!836582)))))))

(declare-fun b!2250788 () Bool)

(assert (=> b!2250788 (= e!1440273 (Cons!26654 (h!32055 lt!836586) (++!6493 (t!200762 lt!836586) (_2!15585 lt!836582))))))

(declare-fun b!2250787 () Bool)

(assert (=> b!2250787 (= e!1440273 (_2!15585 lt!836582))))

(declare-fun b!2250790 () Bool)

(assert (=> b!2250790 (= e!1440274 (or (not (= (_2!15585 lt!836582) Nil!26654)) (= lt!836677 lt!836586)))))

(assert (= (and d!667800 c!357996) b!2250787))

(assert (= (and d!667800 (not c!357996)) b!2250788))

(assert (= (and d!667800 res!961724) b!2250789))

(assert (= (and b!2250789 res!961725) b!2250790))

(declare-fun m!2681665 () Bool)

(assert (=> d!667800 m!2681665))

(declare-fun m!2681667 () Bool)

(assert (=> d!667800 m!2681667))

(declare-fun m!2681669 () Bool)

(assert (=> d!667800 m!2681669))

(declare-fun m!2681671 () Bool)

(assert (=> b!2250789 m!2681671))

(assert (=> b!2250789 m!2681277))

(declare-fun m!2681673 () Bool)

(assert (=> b!2250789 m!2681673))

(declare-fun m!2681675 () Bool)

(assert (=> b!2250788 m!2681675))

(assert (=> b!2250380 d!667800))

(declare-fun d!667802 () Bool)

(declare-fun lt!836678 () Int)

(assert (=> d!667802 (>= lt!836678 0)))

(declare-fun e!1440275 () Int)

(assert (=> d!667802 (= lt!836678 e!1440275)))

(declare-fun c!357997 () Bool)

(assert (=> d!667802 (= c!357997 ((_ is Nil!26654) lt!836586))))

(assert (=> d!667802 (= (size!20858 lt!836586) lt!836678)))

(declare-fun b!2250791 () Bool)

(assert (=> b!2250791 (= e!1440275 0)))

(declare-fun b!2250792 () Bool)

(assert (=> b!2250792 (= e!1440275 (+ 1 (size!20858 (t!200762 lt!836586))))))

(assert (= (and d!667802 c!357997) b!2250791))

(assert (= (and d!667802 (not c!357997)) b!2250792))

(declare-fun m!2681677 () Bool)

(assert (=> b!2250792 m!2681677))

(assert (=> b!2250380 d!667802))

(declare-fun d!667804 () Bool)

(declare-fun lt!836679 () BalanceConc!16924)

(assert (=> d!667804 (= (list!10225 lt!836679) (originalCharacters!4995 (h!32056 tokens!456)))))

(assert (=> d!667804 (= lt!836679 (dynLambda!11591 (toChars!5822 (transformation!4225 (rule!6527 (h!32056 tokens!456)))) (value!134232 (h!32056 tokens!456))))))

(assert (=> d!667804 (= (charsOf!2613 (h!32056 tokens!456)) lt!836679)))

(declare-fun b_lambda!71935 () Bool)

(assert (=> (not b_lambda!71935) (not d!667804)))

(assert (=> d!667804 t!200798))

(declare-fun b_and!176281 () Bool)

(assert (= b_and!176273 (and (=> t!200798 result!162586) b_and!176281)))

(assert (=> d!667804 t!200800))

(declare-fun b_and!176283 () Bool)

(assert (= b_and!176275 (and (=> t!200800 result!162588) b_and!176283)))

(assert (=> d!667804 t!200802))

(declare-fun b_and!176285 () Bool)

(assert (= b_and!176277 (and (=> t!200802 result!162590) b_and!176285)))

(assert (=> d!667804 t!200804))

(declare-fun b_and!176287 () Bool)

(assert (= b_and!176279 (and (=> t!200804 result!162592) b_and!176287)))

(declare-fun m!2681679 () Bool)

(assert (=> d!667804 m!2681679))

(assert (=> d!667804 m!2681639))

(assert (=> b!2250380 d!667804))

(declare-fun d!667806 () Bool)

(assert (=> d!667806 (isPrefix!2215 lt!836586 (++!6493 lt!836586 (_2!15585 lt!836582)))))

(declare-fun lt!836682 () Unit!39598)

(declare-fun choose!13170 (List!26748 List!26748) Unit!39598)

(assert (=> d!667806 (= lt!836682 (choose!13170 lt!836586 (_2!15585 lt!836582)))))

(assert (=> d!667806 (= (lemmaConcatTwoListThenFirstIsPrefix!1460 lt!836586 (_2!15585 lt!836582)) lt!836682)))

(declare-fun bs!455063 () Bool)

(assert (= bs!455063 d!667806))

(assert (=> bs!455063 m!2681283))

(assert (=> bs!455063 m!2681283))

(assert (=> bs!455063 m!2681285))

(declare-fun m!2681681 () Bool)

(assert (=> bs!455063 m!2681681))

(assert (=> b!2250380 d!667806))

(declare-fun b!2250795 () Bool)

(declare-fun e!1440277 () Bool)

(assert (=> b!2250795 (= e!1440277 (isPrefix!2215 (tail!3247 lt!836586) (tail!3247 (++!6493 lt!836586 (_2!15585 lt!836582)))))))

(declare-fun b!2250796 () Bool)

(declare-fun e!1440276 () Bool)

(assert (=> b!2250796 (= e!1440276 (>= (size!20858 (++!6493 lt!836586 (_2!15585 lt!836582))) (size!20858 lt!836586)))))

(declare-fun b!2250794 () Bool)

(declare-fun res!961728 () Bool)

(assert (=> b!2250794 (=> (not res!961728) (not e!1440277))))

(assert (=> b!2250794 (= res!961728 (= (head!4792 lt!836586) (head!4792 (++!6493 lt!836586 (_2!15585 lt!836582)))))))

(declare-fun d!667808 () Bool)

(assert (=> d!667808 e!1440276))

(declare-fun res!961727 () Bool)

(assert (=> d!667808 (=> res!961727 e!1440276)))

(declare-fun lt!836683 () Bool)

(assert (=> d!667808 (= res!961727 (not lt!836683))))

(declare-fun e!1440278 () Bool)

(assert (=> d!667808 (= lt!836683 e!1440278)))

(declare-fun res!961729 () Bool)

(assert (=> d!667808 (=> res!961729 e!1440278)))

(assert (=> d!667808 (= res!961729 ((_ is Nil!26654) lt!836586))))

(assert (=> d!667808 (= (isPrefix!2215 lt!836586 (++!6493 lt!836586 (_2!15585 lt!836582))) lt!836683)))

(declare-fun b!2250793 () Bool)

(assert (=> b!2250793 (= e!1440278 e!1440277)))

(declare-fun res!961726 () Bool)

(assert (=> b!2250793 (=> (not res!961726) (not e!1440277))))

(assert (=> b!2250793 (= res!961726 (not ((_ is Nil!26654) (++!6493 lt!836586 (_2!15585 lt!836582)))))))

(assert (= (and d!667808 (not res!961729)) b!2250793))

(assert (= (and b!2250793 res!961726) b!2250794))

(assert (= (and b!2250794 res!961728) b!2250795))

(assert (= (and d!667808 (not res!961727)) b!2250796))

(declare-fun m!2681683 () Bool)

(assert (=> b!2250795 m!2681683))

(assert (=> b!2250795 m!2681283))

(declare-fun m!2681685 () Bool)

(assert (=> b!2250795 m!2681685))

(assert (=> b!2250795 m!2681683))

(assert (=> b!2250795 m!2681685))

(declare-fun m!2681687 () Bool)

(assert (=> b!2250795 m!2681687))

(assert (=> b!2250796 m!2681283))

(declare-fun m!2681689 () Bool)

(assert (=> b!2250796 m!2681689))

(assert (=> b!2250796 m!2681277))

(declare-fun m!2681691 () Bool)

(assert (=> b!2250794 m!2681691))

(assert (=> b!2250794 m!2681283))

(declare-fun m!2681693 () Bool)

(assert (=> b!2250794 m!2681693))

(assert (=> b!2250380 d!667808))

(declare-fun d!667810 () Bool)

(assert (=> d!667810 (= (get!8045 (maxPrefix!2110 thiss!16613 rules!1750 input!1722)) (v!30216 (maxPrefix!2110 thiss!16613 rules!1750 input!1722)))))

(assert (=> b!2250370 d!667810))

(declare-fun b!2250815 () Bool)

(declare-fun e!1440287 () Option!5199)

(declare-fun call!135580 () Option!5199)

(assert (=> b!2250815 (= e!1440287 call!135580)))

(declare-fun b!2250816 () Bool)

(declare-fun res!961747 () Bool)

(declare-fun e!1440285 () Bool)

(assert (=> b!2250816 (=> (not res!961747) (not e!1440285))))

(declare-fun lt!836697 () Option!5199)

(assert (=> b!2250816 (= res!961747 (= (list!10225 (charsOf!2613 (_1!15585 (get!8045 lt!836697)))) (originalCharacters!4995 (_1!15585 (get!8045 lt!836697)))))))

(declare-fun b!2250817 () Bool)

(declare-fun e!1440286 () Bool)

(assert (=> b!2250817 (= e!1440286 e!1440285)))

(declare-fun res!961748 () Bool)

(assert (=> b!2250817 (=> (not res!961748) (not e!1440285))))

(declare-fun isDefined!4184 (Option!5199) Bool)

(assert (=> b!2250817 (= res!961748 (isDefined!4184 lt!836697))))

(declare-fun bm!135575 () Bool)

(declare-fun maxPrefixOneRule!1312 (LexerInterface!3822 Rule!8250 List!26748) Option!5199)

(assert (=> bm!135575 (= call!135580 (maxPrefixOneRule!1312 thiss!16613 (h!32057 rules!1750) input!1722))))

(declare-fun d!667812 () Bool)

(assert (=> d!667812 e!1440286))

(declare-fun res!961749 () Bool)

(assert (=> d!667812 (=> res!961749 e!1440286)))

(declare-fun isEmpty!15033 (Option!5199) Bool)

(assert (=> d!667812 (= res!961749 (isEmpty!15033 lt!836697))))

(assert (=> d!667812 (= lt!836697 e!1440287)))

(declare-fun c!358000 () Bool)

(assert (=> d!667812 (= c!358000 (and ((_ is Cons!26656) rules!1750) ((_ is Nil!26656) (t!200764 rules!1750))))))

(declare-fun lt!836696 () Unit!39598)

(declare-fun lt!836695 () Unit!39598)

(assert (=> d!667812 (= lt!836696 lt!836695)))

(assert (=> d!667812 (isPrefix!2215 input!1722 input!1722)))

(declare-fun lemmaIsPrefixRefl!1431 (List!26748 List!26748) Unit!39598)

(assert (=> d!667812 (= lt!836695 (lemmaIsPrefixRefl!1431 input!1722 input!1722))))

(declare-fun rulesValidInductive!1475 (LexerInterface!3822 List!26750) Bool)

(assert (=> d!667812 (rulesValidInductive!1475 thiss!16613 rules!1750)))

(assert (=> d!667812 (= (maxPrefix!2110 thiss!16613 rules!1750 input!1722) lt!836697)))

(declare-fun b!2250818 () Bool)

(declare-fun res!961744 () Bool)

(assert (=> b!2250818 (=> (not res!961744) (not e!1440285))))

(assert (=> b!2250818 (= res!961744 (matchR!2834 (regex!4225 (rule!6527 (_1!15585 (get!8045 lt!836697)))) (list!10225 (charsOf!2613 (_1!15585 (get!8045 lt!836697))))))))

(declare-fun b!2250819 () Bool)

(declare-fun res!961746 () Bool)

(assert (=> b!2250819 (=> (not res!961746) (not e!1440285))))

(assert (=> b!2250819 (= res!961746 (< (size!20858 (_2!15585 (get!8045 lt!836697))) (size!20858 input!1722)))))

(declare-fun b!2250820 () Bool)

(declare-fun res!961745 () Bool)

(assert (=> b!2250820 (=> (not res!961745) (not e!1440285))))

(assert (=> b!2250820 (= res!961745 (= (++!6493 (list!10225 (charsOf!2613 (_1!15585 (get!8045 lt!836697)))) (_2!15585 (get!8045 lt!836697))) input!1722))))

(declare-fun b!2250821 () Bool)

(declare-fun lt!836694 () Option!5199)

(declare-fun lt!836698 () Option!5199)

(assert (=> b!2250821 (= e!1440287 (ite (and ((_ is None!5198) lt!836694) ((_ is None!5198) lt!836698)) None!5198 (ite ((_ is None!5198) lt!836698) lt!836694 (ite ((_ is None!5198) lt!836694) lt!836698 (ite (>= (size!20856 (_1!15585 (v!30216 lt!836694))) (size!20856 (_1!15585 (v!30216 lt!836698)))) lt!836694 lt!836698)))))))

(assert (=> b!2250821 (= lt!836694 call!135580)))

(assert (=> b!2250821 (= lt!836698 (maxPrefix!2110 thiss!16613 (t!200764 rules!1750) input!1722))))

(declare-fun b!2250822 () Bool)

(declare-fun res!961750 () Bool)

(assert (=> b!2250822 (=> (not res!961750) (not e!1440285))))

(declare-fun apply!6549 (TokenValueInjection!8314 BalanceConc!16924) TokenValue!4387)

(assert (=> b!2250822 (= res!961750 (= (value!134232 (_1!15585 (get!8045 lt!836697))) (apply!6549 (transformation!4225 (rule!6527 (_1!15585 (get!8045 lt!836697)))) (seqFromList!2929 (originalCharacters!4995 (_1!15585 (get!8045 lt!836697)))))))))

(declare-fun b!2250823 () Bool)

(assert (=> b!2250823 (= e!1440285 (contains!4575 rules!1750 (rule!6527 (_1!15585 (get!8045 lt!836697)))))))

(assert (= (and d!667812 c!358000) b!2250815))

(assert (= (and d!667812 (not c!358000)) b!2250821))

(assert (= (or b!2250815 b!2250821) bm!135575))

(assert (= (and d!667812 (not res!961749)) b!2250817))

(assert (= (and b!2250817 res!961748) b!2250816))

(assert (= (and b!2250816 res!961747) b!2250819))

(assert (= (and b!2250819 res!961746) b!2250820))

(assert (= (and b!2250820 res!961745) b!2250822))

(assert (= (and b!2250822 res!961750) b!2250818))

(assert (= (and b!2250818 res!961744) b!2250823))

(declare-fun m!2681695 () Bool)

(assert (=> b!2250819 m!2681695))

(declare-fun m!2681697 () Bool)

(assert (=> b!2250819 m!2681697))

(assert (=> b!2250819 m!2681279))

(assert (=> b!2250820 m!2681695))

(declare-fun m!2681699 () Bool)

(assert (=> b!2250820 m!2681699))

(assert (=> b!2250820 m!2681699))

(declare-fun m!2681701 () Bool)

(assert (=> b!2250820 m!2681701))

(assert (=> b!2250820 m!2681701))

(declare-fun m!2681703 () Bool)

(assert (=> b!2250820 m!2681703))

(declare-fun m!2681705 () Bool)

(assert (=> d!667812 m!2681705))

(declare-fun m!2681707 () Bool)

(assert (=> d!667812 m!2681707))

(declare-fun m!2681709 () Bool)

(assert (=> d!667812 m!2681709))

(declare-fun m!2681711 () Bool)

(assert (=> d!667812 m!2681711))

(declare-fun m!2681713 () Bool)

(assert (=> b!2250817 m!2681713))

(assert (=> b!2250822 m!2681695))

(declare-fun m!2681715 () Bool)

(assert (=> b!2250822 m!2681715))

(assert (=> b!2250822 m!2681715))

(declare-fun m!2681717 () Bool)

(assert (=> b!2250822 m!2681717))

(assert (=> b!2250818 m!2681695))

(assert (=> b!2250818 m!2681699))

(assert (=> b!2250818 m!2681699))

(assert (=> b!2250818 m!2681701))

(assert (=> b!2250818 m!2681701))

(declare-fun m!2681719 () Bool)

(assert (=> b!2250818 m!2681719))

(assert (=> b!2250816 m!2681695))

(assert (=> b!2250816 m!2681699))

(assert (=> b!2250816 m!2681699))

(assert (=> b!2250816 m!2681701))

(declare-fun m!2681721 () Bool)

(assert (=> bm!135575 m!2681721))

(assert (=> b!2250823 m!2681695))

(declare-fun m!2681723 () Bool)

(assert (=> b!2250823 m!2681723))

(declare-fun m!2681725 () Bool)

(assert (=> b!2250821 m!2681725))

(assert (=> b!2250370 d!667812))

(declare-fun b!2250828 () Bool)

(declare-fun e!1440290 () Bool)

(declare-fun tp!711011 () Bool)

(assert (=> b!2250828 (= e!1440290 (and tp_is_empty!10367 tp!711011))))

(assert (=> b!2250381 (= tp!710929 e!1440290)))

(assert (= (and b!2250381 ((_ is Cons!26654) (originalCharacters!4995 (h!32056 tokens!456)))) b!2250828))

(declare-fun b!2250829 () Bool)

(declare-fun e!1440291 () Bool)

(declare-fun tp!711012 () Bool)

(assert (=> b!2250829 (= e!1440291 (and tp_is_empty!10367 tp!711012))))

(assert (=> b!2250384 (= tp!710924 e!1440291)))

(assert (= (and b!2250384 ((_ is Cons!26654) (t!200762 suffix!886))) b!2250829))

(declare-fun b!2250830 () Bool)

(declare-fun e!1440292 () Bool)

(declare-fun tp!711013 () Bool)

(assert (=> b!2250830 (= e!1440292 (and tp_is_empty!10367 tp!711013))))

(assert (=> b!2250363 (= tp!710925 e!1440292)))

(assert (= (and b!2250363 ((_ is Cons!26654) (t!200762 otherP!12))) b!2250830))

(declare-fun b!2250831 () Bool)

(declare-fun e!1440293 () Bool)

(declare-fun tp!711014 () Bool)

(assert (=> b!2250831 (= e!1440293 (and tp_is_empty!10367 tp!711014))))

(assert (=> b!2250374 (= tp!710928 e!1440293)))

(assert (= (and b!2250374 ((_ is Cons!26654) (t!200762 input!1722))) b!2250831))

(declare-fun e!1440296 () Bool)

(assert (=> b!2250375 (= tp!710921 e!1440296)))

(declare-fun b!2250843 () Bool)

(declare-fun tp!711027 () Bool)

(declare-fun tp!711025 () Bool)

(assert (=> b!2250843 (= e!1440296 (and tp!711027 tp!711025))))

(declare-fun b!2250842 () Bool)

(assert (=> b!2250842 (= e!1440296 tp_is_empty!10367)))

(declare-fun b!2250844 () Bool)

(declare-fun tp!711026 () Bool)

(assert (=> b!2250844 (= e!1440296 tp!711026)))

(declare-fun b!2250845 () Bool)

(declare-fun tp!711029 () Bool)

(declare-fun tp!711028 () Bool)

(assert (=> b!2250845 (= e!1440296 (and tp!711029 tp!711028))))

(assert (= (and b!2250375 ((_ is ElementMatch!6573) (regex!4225 (h!32057 rules!1750)))) b!2250842))

(assert (= (and b!2250375 ((_ is Concat!10961) (regex!4225 (h!32057 rules!1750)))) b!2250843))

(assert (= (and b!2250375 ((_ is Star!6573) (regex!4225 (h!32057 rules!1750)))) b!2250844))

(assert (= (and b!2250375 ((_ is Union!6573) (regex!4225 (h!32057 rules!1750)))) b!2250845))

(declare-fun e!1440297 () Bool)

(assert (=> b!2250376 (= tp!710927 e!1440297)))

(declare-fun b!2250847 () Bool)

(declare-fun tp!711032 () Bool)

(declare-fun tp!711030 () Bool)

(assert (=> b!2250847 (= e!1440297 (and tp!711032 tp!711030))))

(declare-fun b!2250846 () Bool)

(assert (=> b!2250846 (= e!1440297 tp_is_empty!10367)))

(declare-fun b!2250848 () Bool)

(declare-fun tp!711031 () Bool)

(assert (=> b!2250848 (= e!1440297 tp!711031)))

(declare-fun b!2250849 () Bool)

(declare-fun tp!711034 () Bool)

(declare-fun tp!711033 () Bool)

(assert (=> b!2250849 (= e!1440297 (and tp!711034 tp!711033))))

(assert (= (and b!2250376 ((_ is ElementMatch!6573) (regex!4225 otherR!12))) b!2250846))

(assert (= (and b!2250376 ((_ is Concat!10961) (regex!4225 otherR!12))) b!2250847))

(assert (= (and b!2250376 ((_ is Star!6573) (regex!4225 otherR!12))) b!2250848))

(assert (= (and b!2250376 ((_ is Union!6573) (regex!4225 otherR!12))) b!2250849))

(declare-fun e!1440298 () Bool)

(assert (=> b!2250366 (= tp!710932 e!1440298)))

(declare-fun b!2250851 () Bool)

(declare-fun tp!711037 () Bool)

(declare-fun tp!711035 () Bool)

(assert (=> b!2250851 (= e!1440298 (and tp!711037 tp!711035))))

(declare-fun b!2250850 () Bool)

(assert (=> b!2250850 (= e!1440298 tp_is_empty!10367)))

(declare-fun b!2250852 () Bool)

(declare-fun tp!711036 () Bool)

(assert (=> b!2250852 (= e!1440298 tp!711036)))

(declare-fun b!2250853 () Bool)

(declare-fun tp!711039 () Bool)

(declare-fun tp!711038 () Bool)

(assert (=> b!2250853 (= e!1440298 (and tp!711039 tp!711038))))

(assert (= (and b!2250366 ((_ is ElementMatch!6573) (regex!4225 (rule!6527 (h!32056 tokens!456))))) b!2250850))

(assert (= (and b!2250366 ((_ is Concat!10961) (regex!4225 (rule!6527 (h!32056 tokens!456))))) b!2250851))

(assert (= (and b!2250366 ((_ is Star!6573) (regex!4225 (rule!6527 (h!32056 tokens!456))))) b!2250852))

(assert (= (and b!2250366 ((_ is Union!6573) (regex!4225 (rule!6527 (h!32056 tokens!456))))) b!2250853))

(declare-fun b!2250867 () Bool)

(declare-fun b_free!65909 () Bool)

(declare-fun b_next!66613 () Bool)

(assert (=> b!2250867 (= b_free!65909 (not b_next!66613))))

(declare-fun tp!711050 () Bool)

(declare-fun b_and!176289 () Bool)

(assert (=> b!2250867 (= tp!711050 b_and!176289)))

(declare-fun b_free!65911 () Bool)

(declare-fun b_next!66615 () Bool)

(assert (=> b!2250867 (= b_free!65911 (not b_next!66615))))

(declare-fun t!200806 () Bool)

(declare-fun tb!133383 () Bool)

(assert (=> (and b!2250867 (= (toChars!5822 (transformation!4225 (rule!6527 (h!32056 (t!200763 tokens!456))))) (toChars!5822 (transformation!4225 (rule!6527 (head!4790 tokens!456))))) t!200806) tb!133383))

(declare-fun result!162600 () Bool)

(assert (= result!162600 result!162576))

(assert (=> d!667758 t!200806))

(declare-fun t!200808 () Bool)

(declare-fun tb!133385 () Bool)

(assert (=> (and b!2250867 (= (toChars!5822 (transformation!4225 (rule!6527 (h!32056 (t!200763 tokens!456))))) (toChars!5822 (transformation!4225 (rule!6527 (h!32056 tokens!456))))) t!200808) tb!133385))

(declare-fun result!162602 () Bool)

(assert (= result!162602 result!162586))

(assert (=> b!2250759 t!200808))

(assert (=> d!667804 t!200808))

(declare-fun b_and!176291 () Bool)

(declare-fun tp!711052 () Bool)

(assert (=> b!2250867 (= tp!711052 (and (=> t!200806 result!162600) (=> t!200808 result!162602) b_and!176291))))

(declare-fun e!1440314 () Bool)

(declare-fun b!2250864 () Bool)

(declare-fun tp!711054 () Bool)

(declare-fun e!1440312 () Bool)

(assert (=> b!2250864 (= e!1440314 (and (inv!36188 (h!32056 (t!200763 tokens!456))) e!1440312 tp!711054))))

(assert (=> b!2250377 (= tp!710935 e!1440314)))

(declare-fun e!1440311 () Bool)

(declare-fun e!1440316 () Bool)

(declare-fun tp!711051 () Bool)

(declare-fun b!2250866 () Bool)

(assert (=> b!2250866 (= e!1440311 (and tp!711051 (inv!36184 (tag!4715 (rule!6527 (h!32056 (t!200763 tokens!456))))) (inv!36187 (transformation!4225 (rule!6527 (h!32056 (t!200763 tokens!456))))) e!1440316))))

(assert (=> b!2250867 (= e!1440316 (and tp!711050 tp!711052))))

(declare-fun b!2250865 () Bool)

(declare-fun tp!711053 () Bool)

(assert (=> b!2250865 (= e!1440312 (and (inv!21 (value!134232 (h!32056 (t!200763 tokens!456)))) e!1440311 tp!711053))))

(assert (= b!2250866 b!2250867))

(assert (= b!2250865 b!2250866))

(assert (= b!2250864 b!2250865))

(assert (= (and b!2250377 ((_ is Cons!26655) (t!200763 tokens!456))) b!2250864))

(declare-fun m!2681727 () Bool)

(assert (=> b!2250864 m!2681727))

(declare-fun m!2681729 () Bool)

(assert (=> b!2250866 m!2681729))

(declare-fun m!2681731 () Bool)

(assert (=> b!2250866 m!2681731))

(declare-fun m!2681733 () Bool)

(assert (=> b!2250865 m!2681733))

(declare-fun e!1440317 () Bool)

(assert (=> b!2250367 (= tp!710937 e!1440317)))

(declare-fun b!2250869 () Bool)

(declare-fun tp!711057 () Bool)

(declare-fun tp!711055 () Bool)

(assert (=> b!2250869 (= e!1440317 (and tp!711057 tp!711055))))

(declare-fun b!2250868 () Bool)

(assert (=> b!2250868 (= e!1440317 tp_is_empty!10367)))

(declare-fun b!2250870 () Bool)

(declare-fun tp!711056 () Bool)

(assert (=> b!2250870 (= e!1440317 tp!711056)))

(declare-fun b!2250871 () Bool)

(declare-fun tp!711059 () Bool)

(declare-fun tp!711058 () Bool)

(assert (=> b!2250871 (= e!1440317 (and tp!711059 tp!711058))))

(assert (= (and b!2250367 ((_ is ElementMatch!6573) (regex!4225 r!2363))) b!2250868))

(assert (= (and b!2250367 ((_ is Concat!10961) (regex!4225 r!2363))) b!2250869))

(assert (= (and b!2250367 ((_ is Star!6573) (regex!4225 r!2363))) b!2250870))

(assert (= (and b!2250367 ((_ is Union!6573) (regex!4225 r!2363))) b!2250871))

(declare-fun b!2250882 () Bool)

(declare-fun b_free!65913 () Bool)

(declare-fun b_next!66617 () Bool)

(assert (=> b!2250882 (= b_free!65913 (not b_next!66617))))

(declare-fun tp!711068 () Bool)

(declare-fun b_and!176293 () Bool)

(assert (=> b!2250882 (= tp!711068 b_and!176293)))

(declare-fun b_free!65915 () Bool)

(declare-fun b_next!66619 () Bool)

(assert (=> b!2250882 (= b_free!65915 (not b_next!66619))))

(declare-fun t!200810 () Bool)

(declare-fun tb!133387 () Bool)

(assert (=> (and b!2250882 (= (toChars!5822 (transformation!4225 (h!32057 (t!200764 rules!1750)))) (toChars!5822 (transformation!4225 (rule!6527 (head!4790 tokens!456))))) t!200810) tb!133387))

(declare-fun result!162606 () Bool)

(assert (= result!162606 result!162576))

(assert (=> d!667758 t!200810))

(declare-fun tb!133389 () Bool)

(declare-fun t!200812 () Bool)

(assert (=> (and b!2250882 (= (toChars!5822 (transformation!4225 (h!32057 (t!200764 rules!1750)))) (toChars!5822 (transformation!4225 (rule!6527 (h!32056 tokens!456))))) t!200812) tb!133389))

(declare-fun result!162608 () Bool)

(assert (= result!162608 result!162586))

(assert (=> b!2250759 t!200812))

(assert (=> d!667804 t!200812))

(declare-fun tp!711069 () Bool)

(declare-fun b_and!176295 () Bool)

(assert (=> b!2250882 (= tp!711069 (and (=> t!200810 result!162606) (=> t!200812 result!162608) b_and!176295))))

(declare-fun e!1440329 () Bool)

(assert (=> b!2250882 (= e!1440329 (and tp!711068 tp!711069))))

(declare-fun tp!711071 () Bool)

(declare-fun e!1440327 () Bool)

(declare-fun b!2250881 () Bool)

(assert (=> b!2250881 (= e!1440327 (and tp!711071 (inv!36184 (tag!4715 (h!32057 (t!200764 rules!1750)))) (inv!36187 (transformation!4225 (h!32057 (t!200764 rules!1750)))) e!1440329))))

(declare-fun b!2250880 () Bool)

(declare-fun e!1440328 () Bool)

(declare-fun tp!711070 () Bool)

(assert (=> b!2250880 (= e!1440328 (and e!1440327 tp!711070))))

(assert (=> b!2250359 (= tp!710931 e!1440328)))

(assert (= b!2250881 b!2250882))

(assert (= b!2250880 b!2250881))

(assert (= (and b!2250359 ((_ is Cons!26656) (t!200764 rules!1750))) b!2250880))

(declare-fun m!2681735 () Bool)

(assert (=> b!2250881 m!2681735))

(declare-fun m!2681737 () Bool)

(assert (=> b!2250881 m!2681737))

(declare-fun b_lambda!71937 () Bool)

(assert (= b_lambda!71935 (or (and b!2250360 b_free!65887 (= (toChars!5822 (transformation!4225 (h!32057 rules!1750))) (toChars!5822 (transformation!4225 (rule!6527 (h!32056 tokens!456)))))) (and b!2250867 b_free!65911 (= (toChars!5822 (transformation!4225 (rule!6527 (h!32056 (t!200763 tokens!456))))) (toChars!5822 (transformation!4225 (rule!6527 (h!32056 tokens!456)))))) (and b!2250882 b_free!65915 (= (toChars!5822 (transformation!4225 (h!32057 (t!200764 rules!1750)))) (toChars!5822 (transformation!4225 (rule!6527 (h!32056 tokens!456)))))) (and b!2250379 b_free!65891 (= (toChars!5822 (transformation!4225 otherR!12)) (toChars!5822 (transformation!4225 (rule!6527 (h!32056 tokens!456)))))) (and b!2250373 b_free!65899 (= (toChars!5822 (transformation!4225 r!2363)) (toChars!5822 (transformation!4225 (rule!6527 (h!32056 tokens!456)))))) (and b!2250358 b_free!65895) b_lambda!71937)))

(declare-fun b_lambda!71939 () Bool)

(assert (= b_lambda!71933 (or (and b!2250360 b_free!65887 (= (toChars!5822 (transformation!4225 (h!32057 rules!1750))) (toChars!5822 (transformation!4225 (rule!6527 (h!32056 tokens!456)))))) (and b!2250867 b_free!65911 (= (toChars!5822 (transformation!4225 (rule!6527 (h!32056 (t!200763 tokens!456))))) (toChars!5822 (transformation!4225 (rule!6527 (h!32056 tokens!456)))))) (and b!2250882 b_free!65915 (= (toChars!5822 (transformation!4225 (h!32057 (t!200764 rules!1750)))) (toChars!5822 (transformation!4225 (rule!6527 (h!32056 tokens!456)))))) (and b!2250379 b_free!65891 (= (toChars!5822 (transformation!4225 otherR!12)) (toChars!5822 (transformation!4225 (rule!6527 (h!32056 tokens!456)))))) (and b!2250373 b_free!65899 (= (toChars!5822 (transformation!4225 r!2363)) (toChars!5822 (transformation!4225 (rule!6527 (h!32056 tokens!456)))))) (and b!2250358 b_free!65895) b_lambda!71939)))

(check-sat (not b!2250788) (not b!2250845) (not b!2250848) (not b!2250831) (not b_next!66589) (not b_lambda!71931) (not b!2250459) (not b!2250869) (not b!2250488) (not b!2250819) (not b!2250498) (not d!667790) b_and!176281 (not b!2250817) (not b!2250795) (not b!2250743) b_and!176289 (not b!2250442) b_and!176287 (not tb!133375) (not b_next!66593) (not b!2250847) (not b_next!66601) (not d!667702) (not b!2250771) b_and!176283 (not b!2250852) (not b!2250830) (not b!2250794) (not d!667700) (not bm!135575) (not b_lambda!71939) (not b!2250880) (not d!667766) (not b!2250688) (not b!2250754) (not d!667704) (not b!2250752) (not b_next!66591) (not d!667750) (not b!2250699) (not b!2250774) (not b!2250851) (not b!2250849) (not d!667758) (not d!667798) (not b!2250870) tp_is_empty!10367 (not b!2250708) (not b!2250821) (not b!2250828) (not b_next!66613) (not b!2250744) (not b!2250829) (not d!667708) (not b!2250853) (not b!2250761) (not d!667800) (not d!667764) (not b!2250816) (not d!667812) (not d!667756) (not d!667778) b_and!176217 (not b!2250871) (not d!667774) (not b!2250741) (not b!2250843) (not b_next!66619) (not d!667706) (not d!667804) (not b!2250705) b_and!176295 (not b!2250818) (not b!2250822) (not b_next!66597) (not d!667770) (not b_next!66615) (not d!667684) (not b_next!66603) (not b!2250820) (not d!667780) (not b!2250694) (not b!2250711) (not b!2250796) (not d!667786) b_and!176291 (not b!2250866) (not b!2250775) (not bm!135572) (not b!2250439) b_and!176225 (not b!2250823) (not b!2250441) b_and!176229 b_and!176285 b_and!176293 (not b!2250760) (not b!2250789) (not b_next!66595) (not b!2250684) (not d!667806) (not b_lambda!71937) (not b!2250687) (not b!2250772) (not b!2250792) (not b!2250864) (not b_next!66617) (not d!667772) (not b!2250844) (not b!2250710) (not b_next!66599) (not b!2250747) b_and!176221 (not b!2250686) (not tb!133367) (not b!2250759) (not b!2250751) (not d!667698) (not d!667674) (not d!667754) (not d!667788) (not b!2250778) (not b!2250881) (not b!2250865) (not b!2250492) (not b!2250773))
(check-sat (not b_next!66589) b_and!176281 b_and!176283 (not b_next!66591) (not b_next!66613) b_and!176217 (not b_next!66619) b_and!176291 b_and!176225 (not b_next!66617) b_and!176289 b_and!176287 (not b_next!66601) (not b_next!66593) b_and!176295 (not b_next!66597) (not b_next!66615) (not b_next!66603) b_and!176229 b_and!176285 b_and!176293 (not b_next!66595) (not b_next!66599) b_and!176221)
