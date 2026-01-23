; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!218796 () Bool)

(assert start!218796)

(declare-fun b!2244174 () Bool)

(declare-fun b_free!65293 () Bool)

(declare-fun b_next!65997 () Bool)

(assert (=> b!2244174 (= b_free!65293 (not b_next!65997))))

(declare-fun tp!708090 () Bool)

(declare-fun b_and!175369 () Bool)

(assert (=> b!2244174 (= tp!708090 b_and!175369)))

(declare-fun b_free!65295 () Bool)

(declare-fun b_next!65999 () Bool)

(assert (=> b!2244174 (= b_free!65295 (not b_next!65999))))

(declare-fun tp!708084 () Bool)

(declare-fun b_and!175371 () Bool)

(assert (=> b!2244174 (= tp!708084 b_and!175371)))

(declare-fun b!2244162 () Bool)

(declare-fun b_free!65297 () Bool)

(declare-fun b_next!66001 () Bool)

(assert (=> b!2244162 (= b_free!65297 (not b_next!66001))))

(declare-fun tp!708083 () Bool)

(declare-fun b_and!175373 () Bool)

(assert (=> b!2244162 (= tp!708083 b_and!175373)))

(declare-fun b_free!65299 () Bool)

(declare-fun b_next!66003 () Bool)

(assert (=> b!2244162 (= b_free!65299 (not b_next!66003))))

(declare-fun tp!708081 () Bool)

(declare-fun b_and!175375 () Bool)

(assert (=> b!2244162 (= tp!708081 b_and!175375)))

(declare-fun b!2244165 () Bool)

(declare-fun b_free!65301 () Bool)

(declare-fun b_next!66005 () Bool)

(assert (=> b!2244165 (= b_free!65301 (not b_next!66005))))

(declare-fun tp!708092 () Bool)

(declare-fun b_and!175377 () Bool)

(assert (=> b!2244165 (= tp!708092 b_and!175377)))

(declare-fun b_free!65303 () Bool)

(declare-fun b_next!66007 () Bool)

(assert (=> b!2244165 (= b_free!65303 (not b_next!66007))))

(declare-fun tp!708088 () Bool)

(declare-fun b_and!175379 () Bool)

(assert (=> b!2244165 (= tp!708088 b_and!175379)))

(declare-fun b!2244177 () Bool)

(declare-fun b_free!65305 () Bool)

(declare-fun b_next!66009 () Bool)

(assert (=> b!2244177 (= b_free!65305 (not b_next!66009))))

(declare-fun tp!708091 () Bool)

(declare-fun b_and!175381 () Bool)

(assert (=> b!2244177 (= tp!708091 b_and!175381)))

(declare-fun b_free!65307 () Bool)

(declare-fun b_next!66011 () Bool)

(assert (=> b!2244177 (= b_free!65307 (not b_next!66011))))

(declare-fun tp!708080 () Bool)

(declare-fun b_and!175383 () Bool)

(assert (=> b!2244177 (= tp!708080 b_and!175383)))

(declare-fun e!1435445 () Bool)

(declare-datatypes ((List!26617 0))(
  ( (Nil!26523) (Cons!26523 (h!31924 (_ BitVec 16)) (t!200219 List!26617)) )
))
(declare-datatypes ((TokenValue!4357 0))(
  ( (FloatLiteralValue!8714 (text!30944 List!26617)) (TokenValueExt!4356 (__x!17774 Int)) (Broken!21785 (value!133351 List!26617)) (Object!4450) (End!4357) (Def!4357) (Underscore!4357) (Match!4357) (Else!4357) (Error!4357) (Case!4357) (If!4357) (Extends!4357) (Abstract!4357) (Class!4357) (Val!4357) (DelimiterValue!8714 (del!4417 List!26617)) (KeywordValue!4363 (value!133352 List!26617)) (CommentValue!8714 (value!133353 List!26617)) (WhitespaceValue!8714 (value!133354 List!26617)) (IndentationValue!4357 (value!133355 List!26617)) (String!28888) (Int32!4357) (Broken!21786 (value!133356 List!26617)) (Boolean!4358) (Unit!39503) (OperatorValue!4360 (op!4417 List!26617)) (IdentifierValue!8714 (value!133357 List!26617)) (IdentifierValue!8715 (value!133358 List!26617)) (WhitespaceValue!8715 (value!133359 List!26617)) (True!8714) (False!8714) (Broken!21787 (value!133360 List!26617)) (Broken!21788 (value!133361 List!26617)) (True!8715) (RightBrace!4357) (RightBracket!4357) (Colon!4357) (Null!4357) (Comma!4357) (LeftBracket!4357) (False!8715) (LeftBrace!4357) (ImaginaryLiteralValue!4357 (text!30945 List!26617)) (StringLiteralValue!13071 (value!133362 List!26617)) (EOFValue!4357 (value!133363 List!26617)) (IdentValue!4357 (value!133364 List!26617)) (DelimiterValue!8715 (value!133365 List!26617)) (DedentValue!4357 (value!133366 List!26617)) (NewLineValue!4357 (value!133367 List!26617)) (IntegerValue!13071 (value!133368 (_ BitVec 32)) (text!30946 List!26617)) (IntegerValue!13072 (value!133369 Int) (text!30947 List!26617)) (Times!4357) (Or!4357) (Equal!4357) (Minus!4357) (Broken!21789 (value!133370 List!26617)) (And!4357) (Div!4357) (LessEqual!4357) (Mod!4357) (Concat!10900) (Not!4357) (Plus!4357) (SpaceValue!4357 (value!133371 List!26617)) (IntegerValue!13073 (value!133372 Int) (text!30948 List!26617)) (StringLiteralValue!13072 (text!30949 List!26617)) (FloatLiteralValue!8715 (text!30950 List!26617)) (BytesLiteralValue!4357 (value!133373 List!26617)) (CommentValue!8715 (value!133374 List!26617)) (StringLiteralValue!13073 (value!133375 List!26617)) (ErrorTokenValue!4357 (msg!4418 List!26617)) )
))
(declare-datatypes ((C!13232 0))(
  ( (C!13233 (val!7664 Int)) )
))
(declare-datatypes ((List!26618 0))(
  ( (Nil!26524) (Cons!26524 (h!31925 C!13232) (t!200220 List!26618)) )
))
(declare-datatypes ((IArray!17081 0))(
  ( (IArray!17082 (innerList!8598 List!26618)) )
))
(declare-datatypes ((Conc!8538 0))(
  ( (Node!8538 (left!20168 Conc!8538) (right!20498 Conc!8538) (csize!17306 Int) (cheight!8749 Int)) (Leaf!12621 (xs!11480 IArray!17081) (csize!17307 Int)) (Empty!8538) )
))
(declare-datatypes ((BalanceConc!16804 0))(
  ( (BalanceConc!16805 (c!357226 Conc!8538)) )
))
(declare-datatypes ((String!28889 0))(
  ( (String!28890 (value!133376 String)) )
))
(declare-datatypes ((Regex!6543 0))(
  ( (ElementMatch!6543 (c!357227 C!13232)) (Concat!10901 (regOne!13598 Regex!6543) (regTwo!13598 Regex!6543)) (EmptyExpr!6543) (Star!6543 (reg!6872 Regex!6543)) (EmptyLang!6543) (Union!6543 (regOne!13599 Regex!6543) (regTwo!13599 Regex!6543)) )
))
(declare-datatypes ((TokenValueInjection!8254 0))(
  ( (TokenValueInjection!8255 (toValue!5925 Int) (toChars!5784 Int)) )
))
(declare-datatypes ((Rule!8190 0))(
  ( (Rule!8191 (regex!4195 Regex!6543) (tag!4685 String!28889) (isSeparator!4195 Bool) (transformation!4195 TokenValueInjection!8254)) )
))
(declare-datatypes ((Token!7868 0))(
  ( (Token!7869 (value!133377 TokenValue!4357) (rule!6493 Rule!8190) (size!20735 Int) (originalCharacters!4965 List!26618)) )
))
(declare-datatypes ((List!26619 0))(
  ( (Nil!26525) (Cons!26525 (h!31926 Token!7868) (t!200221 List!26619)) )
))
(declare-fun tokens!456 () List!26619)

(declare-fun b!2244153 () Bool)

(declare-fun e!1435461 () Bool)

(declare-fun tp!708094 () Bool)

(declare-fun inv!36050 (String!28889) Bool)

(declare-fun inv!36053 (TokenValueInjection!8254) Bool)

(assert (=> b!2244153 (= e!1435445 (and tp!708094 (inv!36050 (tag!4685 (rule!6493 (h!31926 tokens!456)))) (inv!36053 (transformation!4195 (rule!6493 (h!31926 tokens!456)))) e!1435461))))

(declare-fun b!2244154 () Bool)

(declare-fun e!1435444 () Bool)

(declare-fun tp_is_empty!10307 () Bool)

(declare-fun tp!708085 () Bool)

(assert (=> b!2244154 (= e!1435444 (and tp_is_empty!10307 tp!708085))))

(declare-fun b!2244155 () Bool)

(declare-fun e!1435458 () Bool)

(assert (=> b!2244155 (= e!1435458 false)))

(declare-fun lt!835096 () Bool)

(declare-datatypes ((LexerInterface!3792 0))(
  ( (LexerInterfaceExt!3789 (__x!17775 Int)) (Lexer!3790) )
))
(declare-fun thiss!16613 () LexerInterface!3792)

(declare-datatypes ((List!26620 0))(
  ( (Nil!26526) (Cons!26526 (h!31927 Rule!8190) (t!200222 List!26620)) )
))
(declare-fun rules!1750 () List!26620)

(declare-fun rulesValidInductive!1463 (LexerInterface!3792 List!26620) Bool)

(assert (=> b!2244155 (= lt!835096 (rulesValidInductive!1463 thiss!16613 rules!1750))))

(declare-fun e!1435443 () Bool)

(declare-fun e!1435448 () Bool)

(declare-fun b!2244156 () Bool)

(declare-fun tp!708097 () Bool)

(declare-fun otherR!12 () Rule!8190)

(assert (=> b!2244156 (= e!1435448 (and tp!708097 (inv!36050 (tag!4685 otherR!12)) (inv!36053 (transformation!4195 otherR!12)) e!1435443))))

(declare-fun b!2244157 () Bool)

(declare-fun tp!708082 () Bool)

(declare-fun e!1435450 () Bool)

(declare-fun e!1435447 () Bool)

(assert (=> b!2244157 (= e!1435447 (and tp!708082 (inv!36050 (tag!4685 (h!31927 rules!1750))) (inv!36053 (transformation!4195 (h!31927 rules!1750))) e!1435450))))

(declare-fun b!2244158 () Bool)

(declare-fun e!1435446 () Bool)

(assert (=> b!2244158 (= e!1435446 e!1435458)))

(declare-fun res!958803 () Bool)

(assert (=> b!2244158 (=> (not res!958803) (not e!1435458))))

(declare-fun e!1435460 () Bool)

(assert (=> b!2244158 (= res!958803 e!1435460)))

(declare-fun res!958805 () Bool)

(assert (=> b!2244158 (=> res!958805 e!1435460)))

(declare-fun lt!835094 () Bool)

(assert (=> b!2244158 (= res!958805 lt!835094)))

(declare-fun isEmpty!14931 (List!26619) Bool)

(assert (=> b!2244158 (= lt!835094 (isEmpty!14931 tokens!456))))

(declare-fun b!2244159 () Bool)

(declare-fun e!1435440 () Bool)

(declare-fun tp!708095 () Bool)

(assert (=> b!2244159 (= e!1435440 (and tp_is_empty!10307 tp!708095))))

(declare-fun b!2244160 () Bool)

(declare-fun e!1435449 () Bool)

(declare-fun tp!708089 () Bool)

(assert (=> b!2244160 (= e!1435449 (and tp_is_empty!10307 tp!708089))))

(declare-fun b!2244161 () Bool)

(declare-fun e!1435441 () Bool)

(declare-fun r!2363 () Rule!8190)

(declare-fun head!4750 (List!26619) Token!7868)

(assert (=> b!2244161 (= e!1435441 (= (rule!6493 (head!4750 tokens!456)) r!2363))))

(declare-fun e!1435452 () Bool)

(assert (=> b!2244162 (= e!1435452 (and tp!708083 tp!708081))))

(declare-fun b!2244163 () Bool)

(declare-fun res!958802 () Bool)

(assert (=> b!2244163 (=> (not res!958802) (not e!1435458))))

(assert (=> b!2244163 (= res!958802 (not (= r!2363 otherR!12)))))

(declare-fun b!2244164 () Bool)

(declare-fun e!1435459 () Bool)

(declare-fun tp!708093 () Bool)

(assert (=> b!2244164 (= e!1435459 (and tp!708093 (inv!36050 (tag!4685 r!2363)) (inv!36053 (transformation!4195 r!2363)) e!1435452))))

(assert (=> b!2244165 (= e!1435461 (and tp!708092 tp!708088))))

(declare-fun b!2244166 () Bool)

(declare-fun res!958801 () Bool)

(declare-fun e!1435463 () Bool)

(assert (=> b!2244166 (=> (not res!958801) (not e!1435463))))

(declare-fun isEmpty!14932 (List!26620) Bool)

(assert (=> b!2244166 (= res!958801 (not (isEmpty!14932 rules!1750)))))

(declare-fun b!2244167 () Bool)

(declare-fun e!1435455 () Bool)

(declare-fun tp!708096 () Bool)

(declare-fun e!1435442 () Bool)

(declare-fun inv!36054 (Token!7868) Bool)

(assert (=> b!2244167 (= e!1435455 (and (inv!36054 (h!31926 tokens!456)) e!1435442 tp!708096))))

(declare-fun b!2244168 () Bool)

(declare-fun res!958804 () Bool)

(assert (=> b!2244168 (=> (not res!958804) (not e!1435463))))

(declare-fun contains!4542 (List!26620 Rule!8190) Bool)

(assert (=> b!2244168 (= res!958804 (contains!4542 rules!1750 otherR!12))))

(declare-fun b!2244169 () Bool)

(assert (=> b!2244169 (= e!1435463 e!1435446)))

(declare-fun res!958806 () Bool)

(assert (=> b!2244169 (=> (not res!958806) (not e!1435446))))

(declare-datatypes ((IArray!17083 0))(
  ( (IArray!17084 (innerList!8599 List!26619)) )
))
(declare-datatypes ((Conc!8539 0))(
  ( (Node!8539 (left!20169 Conc!8539) (right!20499 Conc!8539) (csize!17308 Int) (cheight!8750 Int)) (Leaf!12622 (xs!11481 IArray!17083) (csize!17309 Int)) (Empty!8539) )
))
(declare-datatypes ((BalanceConc!16806 0))(
  ( (BalanceConc!16807 (c!357228 Conc!8539)) )
))
(declare-datatypes ((tuple2!25984 0))(
  ( (tuple2!25985 (_1!15502 BalanceConc!16806) (_2!15502 BalanceConc!16804)) )
))
(declare-fun lt!835095 () tuple2!25984)

(declare-fun suffix!886 () List!26618)

(declare-datatypes ((tuple2!25986 0))(
  ( (tuple2!25987 (_1!15503 List!26619) (_2!15503 List!26618)) )
))
(declare-fun list!10138 (BalanceConc!16806) List!26619)

(declare-fun list!10139 (BalanceConc!16804) List!26618)

(assert (=> b!2244169 (= res!958806 (= (tuple2!25987 (list!10138 (_1!15502 lt!835095)) (list!10139 (_2!15502 lt!835095))) (tuple2!25987 tokens!456 suffix!886)))))

(declare-fun input!1722 () List!26618)

(declare-fun lex!1631 (LexerInterface!3792 List!26620 BalanceConc!16804) tuple2!25984)

(declare-fun seqFromList!2899 (List!26618) BalanceConc!16804)

(assert (=> b!2244169 (= lt!835095 (lex!1631 thiss!16613 rules!1750 (seqFromList!2899 input!1722)))))

(declare-fun b!2244170 () Bool)

(declare-fun res!958799 () Bool)

(assert (=> b!2244170 (=> (not res!958799) (not e!1435458))))

(assert (=> b!2244170 (= res!958799 e!1435441)))

(declare-fun res!958800 () Bool)

(assert (=> b!2244170 (=> res!958800 e!1435441)))

(assert (=> b!2244170 (= res!958800 lt!835094)))

(declare-fun b!2244171 () Bool)

(declare-fun res!958808 () Bool)

(assert (=> b!2244171 (=> (not res!958808) (not e!1435463))))

(assert (=> b!2244171 (= res!958808 (contains!4542 rules!1750 r!2363))))

(declare-fun b!2244172 () Bool)

(declare-fun res!958809 () Bool)

(assert (=> b!2244172 (=> (not res!958809) (not e!1435458))))

(declare-fun otherP!12 () List!26618)

(declare-fun isPrefix!2185 (List!26618 List!26618) Bool)

(assert (=> b!2244172 (= res!958809 (isPrefix!2185 otherP!12 input!1722))))

(declare-fun b!2244173 () Bool)

(declare-fun res!958807 () Bool)

(assert (=> b!2244173 (=> (not res!958807) (not e!1435463))))

(declare-fun rulesInvariant!3294 (LexerInterface!3792 List!26620) Bool)

(assert (=> b!2244173 (= res!958807 (rulesInvariant!3294 thiss!16613 rules!1750))))

(assert (=> b!2244174 (= e!1435443 (and tp!708090 tp!708084))))

(declare-fun b!2244175 () Bool)

(declare-fun e!1435453 () Bool)

(declare-fun tp!708086 () Bool)

(assert (=> b!2244175 (= e!1435453 (and e!1435447 tp!708086))))

(declare-fun res!958798 () Bool)

(assert (=> start!218796 (=> (not res!958798) (not e!1435463))))

(get-info :version)

(assert (=> start!218796 (= res!958798 ((_ is Lexer!3790) thiss!16613))))

(assert (=> start!218796 e!1435463))

(assert (=> start!218796 true))

(assert (=> start!218796 e!1435440))

(assert (=> start!218796 e!1435448))

(assert (=> start!218796 e!1435444))

(assert (=> start!218796 e!1435449))

(assert (=> start!218796 e!1435453))

(assert (=> start!218796 e!1435459))

(assert (=> start!218796 e!1435455))

(declare-fun b!2244176 () Bool)

(declare-fun size!20736 (BalanceConc!16804) Int)

(declare-fun charsOf!2583 (Token!7868) BalanceConc!16804)

(declare-fun size!20737 (List!26618) Int)

(assert (=> b!2244176 (= e!1435460 (<= (size!20736 (charsOf!2583 (head!4750 tokens!456))) (size!20737 otherP!12)))))

(assert (=> b!2244177 (= e!1435450 (and tp!708091 tp!708080))))

(declare-fun tp!708087 () Bool)

(declare-fun b!2244178 () Bool)

(declare-fun inv!21 (TokenValue!4357) Bool)

(assert (=> b!2244178 (= e!1435442 (and (inv!21 (value!133377 (h!31926 tokens!456))) e!1435445 tp!708087))))

(assert (= (and start!218796 res!958798) b!2244166))

(assert (= (and b!2244166 res!958801) b!2244173))

(assert (= (and b!2244173 res!958807) b!2244171))

(assert (= (and b!2244171 res!958808) b!2244168))

(assert (= (and b!2244168 res!958804) b!2244169))

(assert (= (and b!2244169 res!958806) b!2244158))

(assert (= (and b!2244158 (not res!958805)) b!2244176))

(assert (= (and b!2244158 res!958803) b!2244170))

(assert (= (and b!2244170 (not res!958800)) b!2244161))

(assert (= (and b!2244170 res!958799) b!2244172))

(assert (= (and b!2244172 res!958809) b!2244163))

(assert (= (and b!2244163 res!958802) b!2244155))

(assert (= (and start!218796 ((_ is Cons!26524) input!1722)) b!2244159))

(assert (= b!2244156 b!2244174))

(assert (= start!218796 b!2244156))

(assert (= (and start!218796 ((_ is Cons!26524) suffix!886)) b!2244154))

(assert (= (and start!218796 ((_ is Cons!26524) otherP!12)) b!2244160))

(assert (= b!2244157 b!2244177))

(assert (= b!2244175 b!2244157))

(assert (= (and start!218796 ((_ is Cons!26526) rules!1750)) b!2244175))

(assert (= b!2244164 b!2244162))

(assert (= start!218796 b!2244164))

(assert (= b!2244153 b!2244165))

(assert (= b!2244178 b!2244153))

(assert (= b!2244167 b!2244178))

(assert (= (and start!218796 ((_ is Cons!26525) tokens!456)) b!2244167))

(declare-fun m!2676153 () Bool)

(assert (=> b!2244171 m!2676153))

(declare-fun m!2676155 () Bool)

(assert (=> b!2244161 m!2676155))

(declare-fun m!2676157 () Bool)

(assert (=> b!2244169 m!2676157))

(declare-fun m!2676159 () Bool)

(assert (=> b!2244169 m!2676159))

(declare-fun m!2676161 () Bool)

(assert (=> b!2244169 m!2676161))

(assert (=> b!2244169 m!2676161))

(declare-fun m!2676163 () Bool)

(assert (=> b!2244169 m!2676163))

(declare-fun m!2676165 () Bool)

(assert (=> b!2244166 m!2676165))

(declare-fun m!2676167 () Bool)

(assert (=> b!2244153 m!2676167))

(declare-fun m!2676169 () Bool)

(assert (=> b!2244153 m!2676169))

(declare-fun m!2676171 () Bool)

(assert (=> b!2244155 m!2676171))

(declare-fun m!2676173 () Bool)

(assert (=> b!2244172 m!2676173))

(declare-fun m!2676175 () Bool)

(assert (=> b!2244173 m!2676175))

(declare-fun m!2676177 () Bool)

(assert (=> b!2244156 m!2676177))

(declare-fun m!2676179 () Bool)

(assert (=> b!2244156 m!2676179))

(declare-fun m!2676181 () Bool)

(assert (=> b!2244164 m!2676181))

(declare-fun m!2676183 () Bool)

(assert (=> b!2244164 m!2676183))

(declare-fun m!2676185 () Bool)

(assert (=> b!2244168 m!2676185))

(declare-fun m!2676187 () Bool)

(assert (=> b!2244178 m!2676187))

(assert (=> b!2244176 m!2676155))

(assert (=> b!2244176 m!2676155))

(declare-fun m!2676189 () Bool)

(assert (=> b!2244176 m!2676189))

(assert (=> b!2244176 m!2676189))

(declare-fun m!2676191 () Bool)

(assert (=> b!2244176 m!2676191))

(declare-fun m!2676193 () Bool)

(assert (=> b!2244176 m!2676193))

(declare-fun m!2676195 () Bool)

(assert (=> b!2244157 m!2676195))

(declare-fun m!2676197 () Bool)

(assert (=> b!2244157 m!2676197))

(declare-fun m!2676199 () Bool)

(assert (=> b!2244158 m!2676199))

(declare-fun m!2676201 () Bool)

(assert (=> b!2244167 m!2676201))

(check-sat (not b!2244178) (not b!2244156) b_and!175373 (not b!2244172) b_and!175381 (not b!2244167) (not b!2244168) (not b!2244169) b_and!175375 (not b!2244161) (not b!2244157) (not b_next!66011) (not b!2244158) (not b!2244155) b_and!175377 tp_is_empty!10307 (not b!2244176) (not b_next!65999) b_and!175369 (not b!2244175) (not b!2244160) (not b_next!66009) (not b_next!65997) (not b_next!66005) (not b!2244164) (not b_next!66001) (not b!2244154) (not b!2244159) (not b!2244166) (not b!2244171) (not b!2244173) b_and!175383 b_and!175379 b_and!175371 (not b_next!66007) (not b!2244153) (not b_next!66003))
(check-sat (not b_next!66011) b_and!175373 b_and!175377 (not b_next!65999) b_and!175369 (not b_next!66009) b_and!175381 b_and!175383 b_and!175375 (not b_next!66003) (not b_next!65997) (not b_next!66005) (not b_next!66001) b_and!175379 b_and!175371 (not b_next!66007))
