; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!73544 () Bool)

(assert start!73544)

(assert (=> start!73544 true))

(declare-fun b!822054 () Bool)

(assert (=> b!822054 true))

(assert (=> b!822054 true))

(declare-fun b!822055 () Bool)

(assert (=> b!822055 true))

(declare-fun b!822066 () Bool)

(declare-fun e!543156 () Bool)

(declare-datatypes ((List!8854 0))(
  ( (Nil!8838) (Cons!8838 (h!14239 (_ BitVec 16)) (t!93131 List!8854)) )
))
(declare-datatypes ((IArray!5917 0))(
  ( (IArray!5918 (innerList!3016 List!8854)) )
))
(declare-datatypes ((Conc!2956 0))(
  ( (Node!2956 (left!6589 Conc!2956) (right!6919 Conc!2956) (csize!6142 Int) (cheight!3167 Int)) (Leaf!4342 (xs!5645 IArray!5917) (csize!6143 Int)) (Empty!2956) )
))
(declare-datatypes ((BalanceConc!5926 0))(
  ( (BalanceConc!5927 (c!133275 Conc!2956)) )
))
(declare-fun x!177533 () BalanceConc!5926)

(declare-fun tp!256823 () Bool)

(declare-fun inv!11274 (Conc!2956) Bool)

(assert (=> b!822066 (= e!543156 (and (inv!11274 (c!133275 x!177533)) tp!256823))))

(declare-fun inst!724 () Bool)

(declare-datatypes ((CommentValueInjection!24 0))(
  ( (CommentValueInjection!25) )
))
(declare-fun thiss!4444 () CommentValueInjection!24)

(declare-fun inv!11275 (BalanceConc!5926) Bool)

(declare-fun list!3526 (BalanceConc!5926) List!8854)

(declare-datatypes ((TokenValue!1729 0))(
  ( (FloatLiteralValue!3458 (text!12548 List!8854)) (TokenValueExt!1728 (__x!7191 Int)) (Broken!8645 (value!53972 List!8854)) (Object!1744) (End!1729) (Def!1729) (Underscore!1729) (Match!1729) (Else!1729) (Error!1729) (Case!1729) (If!1729) (Extends!1729) (Abstract!1729) (Class!1729) (Val!1729) (DelimiterValue!3458 (del!1789 List!8854)) (KeywordValue!1735 (value!53973 List!8854)) (CommentValue!3458 (value!53974 List!8854)) (WhitespaceValue!3458 (value!53975 List!8854)) (IndentationValue!1729 (value!53976 List!8854)) (String!10412) (Int32!1729) (Broken!8646 (value!53977 List!8854)) (Boolean!1730) (Unit!13367) (OperatorValue!1732 (op!1789 List!8854)) (IdentifierValue!3458 (value!53978 List!8854)) (IdentifierValue!3459 (value!53979 List!8854)) (WhitespaceValue!3459 (value!53980 List!8854)) (True!3458) (False!3458) (Broken!8647 (value!53981 List!8854)) (Broken!8648 (value!53982 List!8854)) (True!3459) (RightBrace!1729) (RightBracket!1729) (Colon!1729) (Null!1729) (Comma!1729) (LeftBracket!1729) (False!3459) (LeftBrace!1729) (ImaginaryLiteralValue!1729 (text!12549 List!8854)) (StringLiteralValue!5187 (value!53983 List!8854)) (EOFValue!1729 (value!53984 List!8854)) (IdentValue!1729 (value!53985 List!8854)) (DelimiterValue!3459 (value!53986 List!8854)) (DedentValue!1729 (value!53987 List!8854)) (NewLineValue!1729 (value!53988 List!8854)) (IntegerValue!5187 (value!53989 (_ BitVec 32)) (text!12550 List!8854)) (IntegerValue!5188 (value!53990 Int) (text!12551 List!8854)) (Times!1729) (Or!1729) (Equal!1729) (Minus!1729) (Broken!8649 (value!53991 List!8854)) (And!1729) (Div!1729) (LessEqual!1729) (Mod!1729) (Concat!3759) (Not!1729) (Plus!1729) (SpaceValue!1729 (value!53992 List!8854)) (IntegerValue!5189 (value!53993 Int) (text!12552 List!8854)) (StringLiteralValue!5188 (text!12553 List!8854)) (FloatLiteralValue!3459 (text!12554 List!8854)) (BytesLiteralValue!1729 (value!53994 List!8854)) (CommentValue!3459 (value!53995 List!8854)) (StringLiteralValue!5189 (value!53996 List!8854)) (ErrorTokenValue!1729 (msg!1790 List!8854)) )
))
(declare-fun toCharacters!18 (CommentValueInjection!24 TokenValue!1729) BalanceConc!5926)

(declare-fun toValue!25 (CommentValueInjection!24 BalanceConc!5926) TokenValue!1729)

(assert (=> start!73544 (= inst!724 (=> (and (inv!11275 x!177533) e!543156) (= (list!3526 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177533))) (list!3526 x!177533))))))

(assert (= start!73544 b!822066))

(declare-fun m!1063269 () Bool)

(assert (=> b!822066 m!1063269))

(declare-fun m!1063271 () Bool)

(assert (=> start!73544 m!1063271))

(declare-fun m!1063273 () Bool)

(assert (=> start!73544 m!1063273))

(declare-fun m!1063275 () Bool)

(assert (=> start!73544 m!1063275))

(declare-fun m!1063277 () Bool)

(assert (=> start!73544 m!1063277))

(assert (=> start!73544 m!1063273))

(assert (=> start!73544 m!1063275))

(declare-fun m!1063279 () Bool)

(assert (=> start!73544 m!1063279))

(declare-fun res!379306 () Bool)

(declare-fun e!543158 () Bool)

(assert (=> b!822055 (=> res!379306 e!543158)))

(declare-fun x!177534 () BalanceConc!5926)

(declare-fun x!177535 () BalanceConc!5926)

(assert (=> b!822055 (= res!379306 (not (= (list!3526 x!177534) (list!3526 x!177535))))))

(declare-fun inst!725 () Bool)

(declare-fun e!543157 () Bool)

(declare-fun e!543159 () Bool)

(assert (=> b!822055 (= inst!725 (=> (and (inv!11275 x!177534) e!543159 (inv!11275 x!177535) e!543157) e!543158))))

(declare-fun b!822067 () Bool)

(assert (=> b!822067 (= e!543158 (= (toValue!25 thiss!4444 x!177534) (toValue!25 thiss!4444 x!177535)))))

(declare-fun b!822068 () Bool)

(declare-fun tp!256825 () Bool)

(assert (=> b!822068 (= e!543159 (and (inv!11274 (c!133275 x!177534)) tp!256825))))

(declare-fun b!822069 () Bool)

(declare-fun tp!256824 () Bool)

(assert (=> b!822069 (= e!543157 (and (inv!11274 (c!133275 x!177535)) tp!256824))))

(assert (= (and b!822055 (not res!379306)) b!822067))

(assert (= b!822055 b!822068))

(assert (= b!822055 b!822069))

(declare-fun m!1063281 () Bool)

(assert (=> b!822055 m!1063281))

(declare-fun m!1063283 () Bool)

(assert (=> b!822055 m!1063283))

(declare-fun m!1063285 () Bool)

(assert (=> b!822055 m!1063285))

(declare-fun m!1063287 () Bool)

(assert (=> b!822055 m!1063287))

(declare-fun m!1063289 () Bool)

(assert (=> b!822067 m!1063289))

(declare-fun m!1063291 () Bool)

(assert (=> b!822067 m!1063291))

(declare-fun m!1063293 () Bool)

(assert (=> b!822068 m!1063293))

(declare-fun m!1063295 () Bool)

(assert (=> b!822069 m!1063295))

(declare-fun bs!229403 () Bool)

(declare-fun neg-inst!724 () Bool)

(declare-fun s!151577 () Bool)

(assert (= bs!229403 (and neg-inst!724 s!151577)))

(assert (=> bs!229403 (=> true (= (list!3526 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177533))) (list!3526 x!177533)))))

(assert (=> m!1063273 m!1063275))

(assert (=> m!1063273 m!1063279))

(assert (=> m!1063273 m!1063271))

(assert (=> m!1063273 s!151577))

(assert (=> m!1063271 s!151577))

(declare-fun bs!229404 () Bool)

(assert (= bs!229404 (and neg-inst!724 start!73544)))

(assert (=> bs!229404 (= true inst!724)))

(declare-fun bs!229405 () Bool)

(declare-fun neg-inst!725 () Bool)

(declare-fun s!151579 () Bool)

(assert (= bs!229405 (and neg-inst!725 s!151579)))

(declare-fun res!379307 () Bool)

(declare-fun e!543160 () Bool)

(assert (=> bs!229405 (=> res!379307 e!543160)))

(assert (=> bs!229405 (= res!379307 (not (= (list!3526 x!177535) (list!3526 x!177535))))))

(assert (=> bs!229405 (=> true e!543160)))

(declare-fun b!822070 () Bool)

(assert (=> b!822070 (= e!543160 (= (toValue!25 thiss!4444 x!177535) (toValue!25 thiss!4444 x!177535)))))

(assert (= (and bs!229405 (not res!379307)) b!822070))

(assert (=> m!1063291 m!1063283))

(assert (=> m!1063291 m!1063283))

(assert (=> m!1063291 s!151579))

(assert (=> m!1063291 s!151579))

(declare-fun bs!229406 () Bool)

(declare-fun s!151581 () Bool)

(assert (= bs!229406 (and neg-inst!725 s!151581)))

(declare-fun res!379308 () Bool)

(declare-fun e!543161 () Bool)

(assert (=> bs!229406 (=> res!379308 e!543161)))

(assert (=> bs!229406 (= res!379308 (not (= (list!3526 x!177534) (list!3526 x!177535))))))

(assert (=> bs!229406 (=> true e!543161)))

(declare-fun b!822071 () Bool)

(assert (=> b!822071 (= e!543161 (= (toValue!25 thiss!4444 x!177534) (toValue!25 thiss!4444 x!177535)))))

(assert (= (and bs!229406 (not res!379308)) b!822071))

(declare-fun bs!229407 () Bool)

(assert (= bs!229407 (and m!1063289 m!1063291)))

(assert (=> bs!229407 m!1063281))

(assert (=> bs!229407 m!1063283))

(assert (=> bs!229407 s!151581))

(declare-fun bs!229408 () Bool)

(declare-fun s!151583 () Bool)

(assert (= bs!229408 (and neg-inst!725 s!151583)))

(declare-fun res!379309 () Bool)

(declare-fun e!543162 () Bool)

(assert (=> bs!229408 (=> res!379309 e!543162)))

(assert (=> bs!229408 (= res!379309 (not (= (list!3526 x!177534) (list!3526 x!177534))))))

(assert (=> bs!229408 (=> true e!543162)))

(declare-fun b!822072 () Bool)

(assert (=> b!822072 (= e!543162 (= (toValue!25 thiss!4444 x!177534) (toValue!25 thiss!4444 x!177534)))))

(assert (= (and bs!229408 (not res!379309)) b!822072))

(assert (=> m!1063289 m!1063281))

(assert (=> m!1063289 m!1063281))

(assert (=> m!1063289 s!151583))

(declare-fun bs!229409 () Bool)

(declare-fun s!151585 () Bool)

(assert (= bs!229409 (and neg-inst!725 s!151585)))

(declare-fun res!379310 () Bool)

(declare-fun e!543163 () Bool)

(assert (=> bs!229409 (=> res!379310 e!543163)))

(assert (=> bs!229409 (= res!379310 (not (= (list!3526 x!177535) (list!3526 x!177534))))))

(assert (=> bs!229409 (=> true e!543163)))

(declare-fun b!822073 () Bool)

(assert (=> b!822073 (= e!543163 (= (toValue!25 thiss!4444 x!177535) (toValue!25 thiss!4444 x!177534)))))

(assert (= (and bs!229409 (not res!379310)) b!822073))

(assert (=> bs!229407 m!1063283))

(assert (=> bs!229407 m!1063281))

(assert (=> bs!229407 s!151585))

(assert (=> m!1063289 s!151583))

(declare-fun bs!229410 () Bool)

(declare-fun s!151587 () Bool)

(assert (= bs!229410 (and neg-inst!725 s!151587)))

(declare-fun res!379311 () Bool)

(declare-fun e!543164 () Bool)

(assert (=> bs!229410 (=> res!379311 e!543164)))

(assert (=> bs!229410 (= res!379311 (not (= (list!3526 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177533))) (list!3526 x!177534))))))

(assert (=> bs!229410 (=> true e!543164)))

(declare-fun b!822074 () Bool)

(assert (=> b!822074 (= e!543164 (= (toValue!25 thiss!4444 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177533))) (toValue!25 thiss!4444 x!177534)))))

(assert (= (and bs!229410 (not res!379311)) b!822074))

(declare-fun bs!229411 () Bool)

(assert (= bs!229411 (and m!1063279 m!1063289)))

(assert (=> bs!229411 m!1063279))

(assert (=> bs!229411 m!1063281))

(assert (=> bs!229411 s!151587))

(declare-fun bs!229412 () Bool)

(declare-fun s!151589 () Bool)

(assert (= bs!229412 (and neg-inst!725 s!151589)))

(declare-fun res!379312 () Bool)

(declare-fun e!543165 () Bool)

(assert (=> bs!229412 (=> res!379312 e!543165)))

(assert (=> bs!229412 (= res!379312 (not (= (list!3526 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177533))) (list!3526 x!177535))))))

(assert (=> bs!229412 (=> true e!543165)))

(declare-fun b!822075 () Bool)

(assert (=> b!822075 (= e!543165 (= (toValue!25 thiss!4444 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177533))) (toValue!25 thiss!4444 x!177535)))))

(assert (= (and bs!229412 (not res!379312)) b!822075))

(declare-fun bs!229413 () Bool)

(assert (= bs!229413 (and m!1063279 m!1063291)))

(assert (=> bs!229413 m!1063279))

(assert (=> bs!229413 m!1063283))

(assert (=> bs!229413 s!151589))

(declare-fun bs!229414 () Bool)

(declare-fun s!151591 () Bool)

(assert (= bs!229414 (and neg-inst!725 s!151591)))

(declare-fun res!379313 () Bool)

(declare-fun e!543166 () Bool)

(assert (=> bs!229414 (=> res!379313 e!543166)))

(assert (=> bs!229414 (= res!379313 (not (= (list!3526 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177533))) (list!3526 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177533))))))))

(assert (=> bs!229414 (=> true e!543166)))

(declare-fun b!822076 () Bool)

(assert (=> b!822076 (= e!543166 (= (toValue!25 thiss!4444 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177533))) (toValue!25 thiss!4444 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177533)))))))

(assert (= (and bs!229414 (not res!379313)) b!822076))

(assert (=> m!1063279 s!151591))

(declare-fun bs!229415 () Bool)

(declare-fun s!151593 () Bool)

(assert (= bs!229415 (and neg-inst!725 s!151593)))

(declare-fun res!379314 () Bool)

(declare-fun e!543167 () Bool)

(assert (=> bs!229415 (=> res!379314 e!543167)))

(assert (=> bs!229415 (= res!379314 (not (= (list!3526 x!177534) (list!3526 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177533))))))))

(assert (=> bs!229415 (=> true e!543167)))

(declare-fun b!822077 () Bool)

(assert (=> b!822077 (= e!543167 (= (toValue!25 thiss!4444 x!177534) (toValue!25 thiss!4444 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177533)))))))

(assert (= (and bs!229415 (not res!379314)) b!822077))

(assert (=> bs!229411 m!1063281))

(assert (=> bs!229411 m!1063279))

(assert (=> bs!229411 s!151593))

(declare-fun bs!229416 () Bool)

(declare-fun s!151595 () Bool)

(assert (= bs!229416 (and neg-inst!725 s!151595)))

(declare-fun res!379315 () Bool)

(declare-fun e!543168 () Bool)

(assert (=> bs!229416 (=> res!379315 e!543168)))

(assert (=> bs!229416 (= res!379315 (not (= (list!3526 x!177535) (list!3526 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177533))))))))

(assert (=> bs!229416 (=> true e!543168)))

(declare-fun b!822078 () Bool)

(assert (=> b!822078 (= e!543168 (= (toValue!25 thiss!4444 x!177535) (toValue!25 thiss!4444 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177533)))))))

(assert (= (and bs!229416 (not res!379315)) b!822078))

(assert (=> bs!229413 m!1063283))

(assert (=> bs!229413 m!1063279))

(assert (=> bs!229413 s!151595))

(assert (=> m!1063279 s!151591))

(declare-fun bs!229417 () Bool)

(assert (= bs!229417 (and m!1063281 m!1063289)))

(assert (=> bs!229417 s!151583))

(declare-fun bs!229418 () Bool)

(assert (= bs!229418 (and m!1063281 m!1063291)))

(assert (=> bs!229418 s!151581))

(declare-fun bs!229419 () Bool)

(assert (= bs!229419 (and m!1063281 m!1063279)))

(assert (=> bs!229419 s!151593))

(assert (=> m!1063281 s!151583))

(assert (=> bs!229417 s!151583))

(assert (=> bs!229418 s!151585))

(assert (=> bs!229419 s!151587))

(assert (=> m!1063281 s!151583))

(declare-fun bs!229420 () Bool)

(assert (= bs!229420 (and m!1063283 m!1063289 m!1063281)))

(assert (=> bs!229420 s!151585))

(declare-fun bs!229421 () Bool)

(assert (= bs!229421 (and m!1063283 m!1063291)))

(assert (=> bs!229421 s!151579))

(declare-fun bs!229422 () Bool)

(assert (= bs!229422 (and m!1063283 m!1063279)))

(assert (=> bs!229422 s!151595))

(assert (=> m!1063283 s!151579))

(assert (=> bs!229420 s!151581))

(assert (=> bs!229421 s!151579))

(assert (=> bs!229422 s!151589))

(assert (=> m!1063283 s!151579))

(declare-fun bs!229423 () Bool)

(declare-fun s!151597 () Bool)

(assert (= bs!229423 (and neg-inst!725 s!151597)))

(declare-fun res!379316 () Bool)

(declare-fun e!543169 () Bool)

(assert (=> bs!229423 (=> res!379316 e!543169)))

(assert (=> bs!229423 (= res!379316 (not (= (list!3526 x!177533) (list!3526 x!177534))))))

(assert (=> bs!229423 (=> true e!543169)))

(declare-fun b!822079 () Bool)

(assert (=> b!822079 (= e!543169 (= (toValue!25 thiss!4444 x!177533) (toValue!25 thiss!4444 x!177534)))))

(assert (= (and bs!229423 (not res!379316)) b!822079))

(declare-fun bs!229424 () Bool)

(assert (= bs!229424 (and m!1063273 m!1063289 m!1063281)))

(assert (=> bs!229424 m!1063271))

(assert (=> bs!229424 m!1063281))

(assert (=> bs!229424 s!151597))

(declare-fun bs!229425 () Bool)

(declare-fun s!151599 () Bool)

(assert (= bs!229425 (and neg-inst!725 s!151599)))

(declare-fun res!379317 () Bool)

(declare-fun e!543170 () Bool)

(assert (=> bs!229425 (=> res!379317 e!543170)))

(assert (=> bs!229425 (= res!379317 (not (= (list!3526 x!177533) (list!3526 x!177535))))))

(assert (=> bs!229425 (=> true e!543170)))

(declare-fun b!822080 () Bool)

(assert (=> b!822080 (= e!543170 (= (toValue!25 thiss!4444 x!177533) (toValue!25 thiss!4444 x!177535)))))

(assert (= (and bs!229425 (not res!379317)) b!822080))

(declare-fun bs!229426 () Bool)

(assert (= bs!229426 (and m!1063273 m!1063291 m!1063283)))

(assert (=> bs!229426 m!1063271))

(assert (=> bs!229426 m!1063283))

(assert (=> bs!229426 s!151599))

(declare-fun bs!229427 () Bool)

(declare-fun s!151601 () Bool)

(assert (= bs!229427 (and neg-inst!725 s!151601)))

(declare-fun res!379318 () Bool)

(declare-fun e!543171 () Bool)

(assert (=> bs!229427 (=> res!379318 e!543171)))

(assert (=> bs!229427 (= res!379318 (not (= (list!3526 x!177533) (list!3526 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177533))))))))

(assert (=> bs!229427 (=> true e!543171)))

(declare-fun b!822081 () Bool)

(assert (=> b!822081 (= e!543171 (= (toValue!25 thiss!4444 x!177533) (toValue!25 thiss!4444 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177533)))))))

(assert (= (and bs!229427 (not res!379318)) b!822081))

(declare-fun bs!229428 () Bool)

(assert (= bs!229428 (and m!1063273 m!1063279)))

(assert (=> bs!229428 m!1063271))

(assert (=> bs!229428 m!1063279))

(assert (=> bs!229428 s!151601))

(declare-fun bs!229429 () Bool)

(declare-fun s!151603 () Bool)

(assert (= bs!229429 (and neg-inst!725 s!151603)))

(declare-fun res!379319 () Bool)

(declare-fun e!543172 () Bool)

(assert (=> bs!229429 (=> res!379319 e!543172)))

(assert (=> bs!229429 (= res!379319 (not (= (list!3526 x!177533) (list!3526 x!177533))))))

(assert (=> bs!229429 (=> true e!543172)))

(declare-fun b!822082 () Bool)

(assert (=> b!822082 (= e!543172 (= (toValue!25 thiss!4444 x!177533) (toValue!25 thiss!4444 x!177533)))))

(assert (= (and bs!229429 (not res!379319)) b!822082))

(assert (=> m!1063273 m!1063271))

(assert (=> m!1063273 m!1063271))

(assert (=> m!1063273 s!151603))

(declare-fun bs!229430 () Bool)

(declare-fun s!151605 () Bool)

(assert (= bs!229430 (and neg-inst!725 s!151605)))

(declare-fun res!379320 () Bool)

(declare-fun e!543173 () Bool)

(assert (=> bs!229430 (=> res!379320 e!543173)))

(assert (=> bs!229430 (= res!379320 (not (= (list!3526 x!177534) (list!3526 x!177533))))))

(assert (=> bs!229430 (=> true e!543173)))

(declare-fun b!822083 () Bool)

(assert (=> b!822083 (= e!543173 (= (toValue!25 thiss!4444 x!177534) (toValue!25 thiss!4444 x!177533)))))

(assert (= (and bs!229430 (not res!379320)) b!822083))

(assert (=> bs!229424 m!1063281))

(assert (=> bs!229424 m!1063271))

(assert (=> bs!229424 s!151605))

(declare-fun bs!229431 () Bool)

(declare-fun s!151607 () Bool)

(assert (= bs!229431 (and neg-inst!725 s!151607)))

(declare-fun res!379321 () Bool)

(declare-fun e!543174 () Bool)

(assert (=> bs!229431 (=> res!379321 e!543174)))

(assert (=> bs!229431 (= res!379321 (not (= (list!3526 x!177535) (list!3526 x!177533))))))

(assert (=> bs!229431 (=> true e!543174)))

(declare-fun b!822084 () Bool)

(assert (=> b!822084 (= e!543174 (= (toValue!25 thiss!4444 x!177535) (toValue!25 thiss!4444 x!177533)))))

(assert (= (and bs!229431 (not res!379321)) b!822084))

(assert (=> bs!229426 m!1063283))

(assert (=> bs!229426 m!1063271))

(assert (=> bs!229426 s!151607))

(declare-fun bs!229432 () Bool)

(declare-fun s!151609 () Bool)

(assert (= bs!229432 (and neg-inst!725 s!151609)))

(declare-fun res!379322 () Bool)

(declare-fun e!543175 () Bool)

(assert (=> bs!229432 (=> res!379322 e!543175)))

(assert (=> bs!229432 (= res!379322 (not (= (list!3526 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177533))) (list!3526 x!177533))))))

(assert (=> bs!229432 (=> true e!543175)))

(declare-fun b!822085 () Bool)

(assert (=> b!822085 (= e!543175 (= (toValue!25 thiss!4444 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177533))) (toValue!25 thiss!4444 x!177533)))))

(assert (= (and bs!229432 (not res!379322)) b!822085))

(assert (=> bs!229428 m!1063279))

(assert (=> bs!229428 m!1063271))

(assert (=> bs!229428 s!151609))

(assert (=> m!1063273 s!151603))

(declare-fun bs!229433 () Bool)

(assert (= bs!229433 (and m!1063271 m!1063279)))

(assert (=> bs!229433 s!151601))

(declare-fun bs!229434 () Bool)

(assert (= bs!229434 (and m!1063271 m!1063273)))

(assert (=> bs!229434 s!151603))

(declare-fun bs!229435 () Bool)

(assert (= bs!229435 (and m!1063271 m!1063289 m!1063281)))

(assert (=> bs!229435 s!151597))

(assert (=> m!1063271 s!151603))

(declare-fun bs!229436 () Bool)

(assert (= bs!229436 (and m!1063271 m!1063291 m!1063283)))

(assert (=> bs!229436 s!151599))

(assert (=> bs!229435 s!151605))

(assert (=> bs!229434 s!151603))

(assert (=> bs!229436 s!151607))

(assert (=> m!1063271 s!151603))

(assert (=> bs!229433 s!151609))

(declare-fun bs!229437 () Bool)

(assert (= bs!229437 (and neg-inst!725 b!822055)))

(assert (=> bs!229437 (= true inst!725)))

(declare-fun e!543153 () Bool)

(declare-fun e!543152 () Bool)

(assert (=> b!822055 (= e!543153 e!543152)))

(declare-fun res!379302 () Bool)

(assert (=> b!822055 (=> res!379302 e!543152)))

(declare-fun lambda!24818 () Int)

(declare-fun Forall2!308 (Int) Bool)

(assert (=> b!822055 (= res!379302 (not (Forall2!308 lambda!24818)))))

(assert (=> b!822055 (= (Forall2!308 lambda!24818) inst!725)))

(declare-fun b!822057 () Bool)

(declare-fun e!543154 () Bool)

(declare-fun lambda!24817 () Int)

(declare-fun lambda!24816 () Int)

(declare-datatypes ((TokenValueInjection!3158 0))(
  ( (TokenValueInjection!3159 (toValue!2676 Int) (toChars!2535 Int)) )
))
(declare-fun inv!11276 (TokenValueInjection!3158) Bool)

(assert (=> b!822057 (= e!543154 (inv!11276 (TokenValueInjection!3159 lambda!24817 lambda!24816)))))

(declare-fun b!822056 () Bool)

(assert (=> b!822056 (= e!543152 e!543154)))

(declare-fun res!379305 () Bool)

(assert (=> b!822056 (=> res!379305 e!543154)))

(declare-fun equivClasses!608 (Int Int) Bool)

(assert (=> b!822056 (= res!379305 (not (equivClasses!608 lambda!24816 lambda!24817)))))

(assert (=> b!822056 (= (equivClasses!608 lambda!24816 lambda!24817) (Forall2!308 lambda!24818))))

(declare-fun e!543155 () Bool)

(assert (=> b!822054 (= e!543155 e!543153)))

(declare-fun res!379303 () Bool)

(assert (=> b!822054 (=> res!379303 e!543153)))

(declare-fun semiInverseModEq!641 (Int Int) Bool)

(assert (=> b!822054 (= res!379303 (not (semiInverseModEq!641 lambda!24816 lambda!24817)))))

(declare-fun lambda!24815 () Int)

(declare-fun Forall!398 (Int) Bool)

(assert (=> b!822054 (= (semiInverseModEq!641 lambda!24816 lambda!24817) (Forall!398 lambda!24815))))

(declare-fun res!379304 () Bool)

(assert (=> start!73544 (=> res!379304 e!543155)))

(assert (=> start!73544 (= res!379304 (not (Forall!398 lambda!24815)))))

(assert (=> start!73544 (= (Forall!398 lambda!24815) inst!724)))

(assert (=> start!73544 (not e!543155)))

(assert (=> start!73544 true))

(assert (= neg-inst!724 inst!724))

(assert (= (and start!73544 (not res!379304)) b!822054))

(assert (= (and b!822054 (not res!379303)) b!822055))

(assert (= neg-inst!725 inst!725))

(assert (= (and b!822055 (not res!379302)) b!822056))

(assert (= (and b!822056 (not res!379305)) b!822057))

(declare-fun m!1063297 () Bool)

(assert (=> b!822055 m!1063297))

(assert (=> b!822055 m!1063297))

(declare-fun m!1063299 () Bool)

(assert (=> b!822057 m!1063299))

(declare-fun m!1063301 () Bool)

(assert (=> b!822056 m!1063301))

(assert (=> b!822056 m!1063301))

(assert (=> b!822056 m!1063297))

(declare-fun m!1063303 () Bool)

(assert (=> b!822054 m!1063303))

(assert (=> b!822054 m!1063303))

(declare-fun m!1063305 () Bool)

(assert (=> b!822054 m!1063305))

(assert (=> start!73544 m!1063305))

(assert (=> start!73544 m!1063305))

(push 1)

(assert (not b!822075))

(assert (not b!822083))

(assert (not bs!229410))

(assert (not bs!229403))

(assert (not b!822082))

(assert (not bs!229412))

(assert (not b!822056))

(assert (not bs!229431))

(assert (not b!822057))

(assert (not b!822070))

(assert (not bs!229406))

(assert (not b!822069))

(assert (not bs!229408))

(assert (not b!822068))

(assert (not bs!229415))

(assert (not b!822072))

(assert (not bs!229405))

(assert (not b!822078))

(assert (not b!822076))

(assert (not bs!229416))

(assert (not bs!229414))

(assert (not b!822071))

(assert (not bs!229423))

(assert (not bs!229430))

(assert (not bs!229427))

(assert (not b!822080))

(assert (not b!822054))

(assert (not b!822079))

(assert (not bs!229425))

(assert (not bs!229429))

(assert (not b!822055))

(assert (not b!822073))

(assert (not b!822085))

(assert (not b!822081))

(assert (not b!822066))

(assert (not b!822067))

(assert (not bs!229409))

(assert (not b!822077))

(assert (not b!822074))

(assert (not bs!229432))

(assert (not start!73544))

(assert (not b!822084))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!229470 () Bool)

(assert (= bs!229470 (and m!1063291 b!822070)))

(assert (=> bs!229470 m!1063291))

(assert (=> bs!229470 m!1063291))

(declare-fun bs!229471 () Bool)

(assert (= bs!229471 (and m!1063289 m!1063291 b!822071)))

(assert (=> bs!229471 m!1063289))

(assert (=> bs!229471 m!1063291))

(declare-fun bs!229472 () Bool)

(assert (= bs!229472 (and m!1063289 b!822072)))

(assert (=> bs!229472 m!1063289))

(assert (=> bs!229472 m!1063289))

(declare-fun bs!229473 () Bool)

(assert (= bs!229473 (and m!1063289 m!1063291 b!822073)))

(assert (=> bs!229473 m!1063291))

(assert (=> bs!229473 m!1063289))

(declare-fun bs!229474 () Bool)

(assert (= bs!229474 (and m!1063279 m!1063289 b!822074)))

(declare-fun m!1063345 () Bool)

(assert (=> bs!229474 m!1063345))

(assert (=> bs!229474 m!1063289))

(declare-fun bs!229475 () Bool)

(assert (= bs!229475 (and m!1063279 m!1063291 b!822075)))

(assert (=> bs!229475 m!1063345))

(assert (=> bs!229475 m!1063291))

(declare-fun bs!229476 () Bool)

(assert (= bs!229476 (and m!1063279 b!822076)))

(assert (=> bs!229476 m!1063345))

(assert (=> bs!229476 m!1063345))

(declare-fun bs!229477 () Bool)

(assert (= bs!229477 (and m!1063279 m!1063289 b!822077)))

(assert (=> bs!229477 m!1063289))

(assert (=> bs!229477 m!1063345))

(declare-fun bs!229478 () Bool)

(assert (= bs!229478 (and m!1063279 m!1063291 b!822078)))

(assert (=> bs!229478 m!1063291))

(assert (=> bs!229478 m!1063345))

(declare-fun bs!229479 () Bool)

(assert (= bs!229479 (and m!1063273 m!1063289 m!1063281 b!822079)))

(assert (=> bs!229479 m!1063273))

(assert (=> bs!229479 m!1063289))

(declare-fun bs!229480 () Bool)

(assert (= bs!229480 (and m!1063273 m!1063291 m!1063283 b!822080)))

(assert (=> bs!229480 m!1063273))

(assert (=> bs!229480 m!1063291))

(declare-fun bs!229481 () Bool)

(assert (= bs!229481 (and m!1063273 m!1063279 b!822081)))

(assert (=> bs!229481 m!1063273))

(assert (=> bs!229481 m!1063345))

(declare-fun bs!229482 () Bool)

(assert (= bs!229482 (and m!1063273 b!822082)))

(assert (=> bs!229482 m!1063273))

(assert (=> bs!229482 m!1063273))

(declare-fun bs!229483 () Bool)

(assert (= bs!229483 (and m!1063273 m!1063289 m!1063281 b!822083)))

(assert (=> bs!229483 m!1063289))

(assert (=> bs!229483 m!1063273))

(declare-fun bs!229484 () Bool)

(assert (= bs!229484 (and m!1063273 m!1063291 m!1063283 b!822084)))

(assert (=> bs!229484 m!1063291))

(assert (=> bs!229484 m!1063273))

(declare-fun bs!229485 () Bool)

(assert (= bs!229485 (and m!1063273 m!1063279 b!822085)))

(assert (=> bs!229485 m!1063345))

(assert (=> bs!229485 m!1063273))

(push 1)

(assert (not b!822075))

(assert (not b!822083))

(assert (not bs!229410))

(assert (not bs!229403))

(assert (not b!822082))

(assert (not bs!229412))

(assert (not b!822056))

(assert (not bs!229431))

(assert (not b!822057))

(assert (not b!822070))

(assert (not bs!229406))

(assert (not b!822069))

(assert (not bs!229408))

(assert (not b!822068))

(assert (not bs!229415))

(assert (not b!822072))

(assert (not bs!229405))

(assert (not b!822078))

(assert (not b!822076))

(assert (not bs!229416))

(assert (not bs!229414))

(assert (not b!822071))

(assert (not bs!229423))

(assert (not bs!229430))

(assert (not bs!229427))

(assert (not b!822080))

(assert (not b!822054))

(assert (not b!822079))

(assert (not bs!229425))

(assert (not bs!229429))

(assert (not b!822055))

(assert (not b!822073))

(assert (not b!822085))

(assert (not b!822081))

(assert (not b!822066))

(assert (not b!822067))

(assert (not bs!229409))

(assert (not b!822077))

(assert (not b!822074))

(assert (not bs!229432))

(assert (not start!73544))

(assert (not b!822084))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!258922 () Bool)

(declare-fun list!3529 (Conc!2956) List!8854)

(assert (=> d!258922 (= (list!3526 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177533))) (list!3529 (c!133275 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177533)))))))

(declare-fun bs!229510 () Bool)

(assert (= bs!229510 d!258922))

(declare-fun m!1063365 () Bool)

(assert (=> bs!229510 m!1063365))

(assert (=> bs!229432 d!258922))

(declare-fun d!258924 () Bool)

(assert (=> d!258924 (= (list!3526 x!177533) (list!3529 (c!133275 x!177533)))))

(declare-fun bs!229511 () Bool)

(assert (= bs!229511 d!258924))

(declare-fun m!1063367 () Bool)

(assert (=> bs!229511 m!1063367))

(assert (=> bs!229432 d!258924))

(declare-fun d!258926 () Bool)

(declare-fun efficientList!150 (BalanceConc!5926) List!8854)

(assert (=> d!258926 (= (toValue!25 thiss!4444 x!177533) (CommentValue!3459 (efficientList!150 x!177533)))))

(declare-fun bs!229512 () Bool)

(assert (= bs!229512 d!258926))

(declare-fun m!1063369 () Bool)

(assert (=> bs!229512 m!1063369))

(assert (=> b!822081 d!258926))

(declare-fun d!258928 () Bool)

(assert (=> d!258928 (= (toValue!25 thiss!4444 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177533))) (CommentValue!3459 (efficientList!150 (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177533)))))))

(declare-fun bs!229513 () Bool)

(assert (= bs!229513 d!258928))

(assert (=> bs!229513 m!1063275))

(declare-fun m!1063371 () Bool)

(assert (=> bs!229513 m!1063371))

(assert (=> b!822081 d!258928))

(declare-fun d!258930 () Bool)

(assert (=> d!258930 (= (toValue!25 thiss!4444 x!177534) (CommentValue!3459 (efficientList!150 x!177534)))))

(declare-fun bs!229514 () Bool)

(assert (= bs!229514 d!258930))

(declare-fun m!1063373 () Bool)

(assert (=> bs!229514 m!1063373))

(assert (=> b!822072 d!258930))

(declare-fun d!258932 () Bool)

(assert (=> d!258932 (= (toValue!25 thiss!4444 x!177535) (CommentValue!3459 (efficientList!150 x!177535)))))

(declare-fun bs!229515 () Bool)

(assert (= bs!229515 d!258932))

(declare-fun m!1063375 () Bool)

(assert (=> bs!229515 m!1063375))

(assert (=> b!822084 d!258932))

(assert (=> b!822084 d!258926))

(assert (=> b!822075 d!258928))

(assert (=> b!822075 d!258932))

(assert (=> bs!229427 d!258924))

(assert (=> bs!229427 d!258922))

(declare-fun d!258934 () Bool)

(assert (=> d!258934 (= (list!3526 x!177534) (list!3529 (c!133275 x!177534)))))

(declare-fun bs!229516 () Bool)

(assert (= bs!229516 d!258934))

(declare-fun m!1063377 () Bool)

(assert (=> bs!229516 m!1063377))

(assert (=> bs!229408 d!258934))

(assert (=> bs!229423 d!258924))

(assert (=> bs!229423 d!258934))

(assert (=> b!822076 d!258928))

(declare-fun d!258936 () Bool)

(declare-fun choose!4927 (Int) Bool)

(assert (=> d!258936 (= (Forall2!308 lambda!24818) (choose!4927 lambda!24818))))

(declare-fun bs!229517 () Bool)

(assert (= bs!229517 d!258936))

(declare-fun m!1063379 () Bool)

(assert (=> bs!229517 m!1063379))

(assert (=> b!822055 d!258936))

(declare-fun d!258938 () Bool)

(declare-fun isBalanced!809 (Conc!2956) Bool)

(assert (=> d!258938 (= (inv!11275 x!177535) (isBalanced!809 (c!133275 x!177535)))))

(declare-fun bs!229518 () Bool)

(assert (= bs!229518 d!258938))

(declare-fun m!1063381 () Bool)

(assert (=> bs!229518 m!1063381))

(assert (=> b!822055 d!258938))

(declare-fun d!258940 () Bool)

(assert (=> d!258940 (= (inv!11275 x!177534) (isBalanced!809 (c!133275 x!177534)))))

(declare-fun bs!229519 () Bool)

(assert (= bs!229519 d!258940))

(declare-fun m!1063383 () Bool)

(assert (=> bs!229519 m!1063383))

(assert (=> b!822055 d!258940))

(declare-fun d!258942 () Bool)

(assert (=> d!258942 (= (list!3526 x!177535) (list!3529 (c!133275 x!177535)))))

(declare-fun bs!229520 () Bool)

(assert (= bs!229520 d!258942))

(declare-fun m!1063385 () Bool)

(assert (=> bs!229520 m!1063385))

(assert (=> b!822055 d!258942))

(assert (=> b!822055 d!258934))

(assert (=> b!822085 d!258928))

(assert (=> b!822085 d!258926))

(declare-fun d!258944 () Bool)

(declare-fun c!133279 () Bool)

(assert (=> d!258944 (= c!133279 (is-Node!2956 (c!133275 x!177535)))))

(declare-fun e!543228 () Bool)

(assert (=> d!258944 (= (inv!11274 (c!133275 x!177535)) e!543228)))

(declare-fun b!822148 () Bool)

(declare-fun inv!11280 (Conc!2956) Bool)

(assert (=> b!822148 (= e!543228 (inv!11280 (c!133275 x!177535)))))

(declare-fun b!822149 () Bool)

(declare-fun e!543229 () Bool)

(assert (=> b!822149 (= e!543228 e!543229)))

(declare-fun res!379370 () Bool)

(assert (=> b!822149 (= res!379370 (not (is-Leaf!4342 (c!133275 x!177535))))))

(assert (=> b!822149 (=> res!379370 e!543229)))

(declare-fun b!822150 () Bool)

(declare-fun inv!11281 (Conc!2956) Bool)

(assert (=> b!822150 (= e!543229 (inv!11281 (c!133275 x!177535)))))

(assert (= (and d!258944 c!133279) b!822148))

(assert (= (and d!258944 (not c!133279)) b!822149))

(assert (= (and b!822149 (not res!379370)) b!822150))

(declare-fun m!1063387 () Bool)

(assert (=> b!822148 m!1063387))

(declare-fun m!1063389 () Bool)

(assert (=> b!822150 m!1063389))

(assert (=> b!822069 d!258944))

(declare-fun bs!229521 () Bool)

(declare-fun d!258946 () Bool)

(assert (= bs!229521 (and d!258946 start!73544)))

(declare-fun lambda!24857 () Int)

(assert (=> bs!229521 (not (= lambda!24857 lambda!24815))))

(assert (=> d!258946 true))

(declare-fun order!5667 () Int)

(declare-fun order!5665 () Int)

(declare-fun dynLambda!4118 (Int Int) Int)

(declare-fun dynLambda!4119 (Int Int) Int)

(assert (=> d!258946 (< (dynLambda!4118 order!5665 lambda!24816) (dynLambda!4119 order!5667 lambda!24857))))

(assert (=> d!258946 true))

(declare-fun order!5669 () Int)

(declare-fun dynLambda!4120 (Int Int) Int)

(assert (=> d!258946 (< (dynLambda!4120 order!5669 lambda!24817) (dynLambda!4119 order!5667 lambda!24857))))

(assert (=> d!258946 (= (semiInverseModEq!641 lambda!24816 lambda!24817) (Forall!398 lambda!24857))))

(declare-fun bs!229522 () Bool)

(assert (= bs!229522 d!258946))

(declare-fun m!1063391 () Bool)

(assert (=> bs!229522 m!1063391))

(assert (=> b!822054 d!258946))

(declare-fun d!258948 () Bool)

(declare-fun choose!4928 (Int) Bool)

(assert (=> d!258948 (= (Forall!398 lambda!24815) (choose!4928 lambda!24815))))

(declare-fun bs!229523 () Bool)

(assert (= bs!229523 d!258948))

(declare-fun m!1063393 () Bool)

(assert (=> bs!229523 m!1063393))

(assert (=> b!822054 d!258948))

(assert (=> bs!229429 d!258924))

(declare-fun bs!229524 () Bool)

(declare-fun d!258950 () Bool)

(assert (= bs!229524 (and d!258950 b!822055)))

(declare-fun lambda!24860 () Int)

(assert (=> bs!229524 (not (= lambda!24860 lambda!24818))))

(assert (=> d!258950 true))

(declare-fun order!5671 () Int)

(declare-fun dynLambda!4121 (Int Int) Int)

(assert (=> d!258950 (< (dynLambda!4120 order!5669 lambda!24817) (dynLambda!4121 order!5671 lambda!24860))))

(assert (=> d!258950 (= (equivClasses!608 lambda!24816 lambda!24817) (Forall2!308 lambda!24860))))

(declare-fun bs!229525 () Bool)

(assert (= bs!229525 d!258950))

(declare-fun m!1063395 () Bool)

(assert (=> bs!229525 m!1063395))

(assert (=> b!822056 d!258950))

(assert (=> b!822056 d!258936))

(assert (=> b!822073 d!258932))

(assert (=> b!822073 d!258930))

(assert (=> bs!229405 d!258942))

(assert (=> bs!229414 d!258922))

(assert (=> b!822067 d!258930))

(assert (=> b!822067 d!258932))

(declare-fun d!258952 () Bool)

(declare-fun c!133280 () Bool)

(assert (=> d!258952 (= c!133280 (is-Node!2956 (c!133275 x!177533)))))

(declare-fun e!543232 () Bool)

(assert (=> d!258952 (= (inv!11274 (c!133275 x!177533)) e!543232)))

(declare-fun b!822159 () Bool)

(assert (=> b!822159 (= e!543232 (inv!11280 (c!133275 x!177533)))))

(declare-fun b!822160 () Bool)

(declare-fun e!543233 () Bool)

(assert (=> b!822160 (= e!543232 e!543233)))

(declare-fun res!379373 () Bool)

(assert (=> b!822160 (= res!379373 (not (is-Leaf!4342 (c!133275 x!177533))))))

(assert (=> b!822160 (=> res!379373 e!543233)))

(declare-fun b!822161 () Bool)

(assert (=> b!822161 (= e!543233 (inv!11281 (c!133275 x!177533)))))

(assert (= (and d!258952 c!133280) b!822159))

(assert (= (and d!258952 (not c!133280)) b!822160))

(assert (= (and b!822160 (not res!379373)) b!822161))

(declare-fun m!1063397 () Bool)

(assert (=> b!822159 m!1063397))

(declare-fun m!1063399 () Bool)

(assert (=> b!822161 m!1063399))

(assert (=> b!822066 d!258952))

(assert (=> bs!229403 d!258922))

(declare-fun d!258954 () Bool)

(declare-fun c!133284 () Bool)

(assert (=> d!258954 (= c!133284 (is-CommentValue!3459 (toValue!25 thiss!4444 x!177533)))))

(declare-fun e!543236 () BalanceConc!5926)

(assert (=> d!258954 (= (toCharacters!18 thiss!4444 (toValue!25 thiss!4444 x!177533)) e!543236)))

(declare-fun b!822166 () Bool)

(declare-fun seqFromList!1516 (List!8854) BalanceConc!5926)

(assert (=> b!822166 (= e!543236 (seqFromList!1516 (value!53995 (toValue!25 thiss!4444 x!177533))))))

(declare-fun b!822167 () Bool)

(assert (=> b!822167 (= e!543236 (BalanceConc!5927 Empty!2956))))

(assert (= (and d!258954 c!133284) b!822166))

(assert (= (and d!258954 (not c!133284)) b!822167))

(declare-fun m!1063401 () Bool)

(assert (=> b!822166 m!1063401))

(assert (=> bs!229403 d!258954))

(assert (=> bs!229403 d!258926))

(assert (=> bs!229403 d!258924))

(assert (=> bs!229409 d!258942))

(assert (=> bs!229409 d!258934))

(declare-fun d!258956 () Bool)

(declare-fun c!133285 () Bool)

(assert (=> d!258956 (= c!133285 (is-Node!2956 (c!133275 x!177534)))))

(declare-fun e!543237 () Bool)

(assert (=> d!258956 (= (inv!11274 (c!133275 x!177534)) e!543237)))

(declare-fun b!822168 () Bool)

(assert (=> b!822168 (= e!543237 (inv!11280 (c!133275 x!177534)))))

(declare-fun b!822169 () Bool)

(declare-fun e!543238 () Bool)

(assert (=> b!822169 (= e!543237 e!543238)))

(declare-fun res!379374 () Bool)

(assert (=> b!822169 (= res!379374 (not (is-Leaf!4342 (c!133275 x!177534))))))

(assert (=> b!822169 (=> res!379374 e!543238)))

(declare-fun b!822170 () Bool)

(assert (=> b!822170 (= e!543238 (inv!11281 (c!133275 x!177534)))))

(assert (= (and d!258956 c!133285) b!822168))

(assert (= (and d!258956 (not c!133285)) b!822169))

(assert (= (and b!822169 (not res!379374)) b!822170))

(declare-fun m!1063403 () Bool)

(assert (=> b!822168 m!1063403))

(declare-fun m!1063405 () Bool)

(assert (=> b!822170 m!1063405))

(assert (=> b!822068 d!258956))

(assert (=> bs!229430 d!258934))

(assert (=> bs!229430 d!258924))

(assert (=> bs!229410 d!258922))

(assert (=> bs!229410 d!258934))

(assert (=> bs!229425 d!258924))

(assert (=> bs!229425 d!258942))

(assert (=> bs!229406 d!258934))

(assert (=> bs!229406 d!258942))

(assert (=> b!822077 d!258930))

(assert (=> b!822077 d!258928))

(assert (=> b!822082 d!258926))

(assert (=> b!822079 d!258926))

(assert (=> b!822079 d!258930))

(declare-fun d!258958 () Bool)

(declare-fun res!379377 () Bool)

(declare-fun e!543241 () Bool)

(assert (=> d!258958 (=> (not res!379377) (not e!543241))))

(assert (=> d!258958 (= res!379377 (semiInverseModEq!641 (toChars!2535 (TokenValueInjection!3159 lambda!24817 lambda!24816)) (toValue!2676 (TokenValueInjection!3159 lambda!24817 lambda!24816))))))

(assert (=> d!258958 (= (inv!11276 (TokenValueInjection!3159 lambda!24817 lambda!24816)) e!543241)))

(declare-fun b!822173 () Bool)

(assert (=> b!822173 (= e!543241 (equivClasses!608 (toChars!2535 (TokenValueInjection!3159 lambda!24817 lambda!24816)) (toValue!2676 (TokenValueInjection!3159 lambda!24817 lambda!24816))))))

(assert (= (and d!258958 res!379377) b!822173))

(declare-fun m!1063407 () Bool)

(assert (=> d!258958 m!1063407))

(declare-fun m!1063409 () Bool)

(assert (=> b!822173 m!1063409))

(assert (=> b!822057 d!258958))

(assert (=> b!822070 d!258932))

(assert (=> bs!229415 d!258934))

(assert (=> bs!229415 d!258922))

(assert (=> b!822080 d!258926))

(assert (=> b!822080 d!258932))

(assert (=> b!822071 d!258930))

(assert (=> b!822071 d!258932))

(assert (=> b!822078 d!258932))

(assert (=> b!822078 d!258928))

(assert (=> bs!229431 d!258942))

(assert (=> bs!229431 d!258924))

(assert (=> bs!229412 d!258922))

(assert (=> bs!229412 d!258942))

(assert (=> b!822074 d!258928))

(assert (=> b!822074 d!258930))

(assert (=> bs!229416 d!258942))

(assert (=> bs!229416 d!258922))

(assert (=> b!822083 d!258930))

(assert (=> b!822083 d!258926))

(assert (=> start!73544 d!258926))

(assert (=> start!73544 d!258954))

(assert (=> start!73544 d!258924))

(assert (=> start!73544 d!258948))

(declare-fun d!258960 () Bool)

(assert (=> d!258960 (= (inv!11275 x!177533) (isBalanced!809 (c!133275 x!177533)))))

(declare-fun bs!229526 () Bool)

(assert (= bs!229526 d!258960))

(declare-fun m!1063411 () Bool)

(assert (=> bs!229526 m!1063411))

(assert (=> start!73544 d!258960))

(assert (=> start!73544 d!258922))

(declare-fun tp!256840 () Bool)

(declare-fun b!822180 () Bool)

(declare-fun tp!256839 () Bool)

(declare-fun e!543246 () Bool)

(assert (=> b!822180 (= e!543246 (and (inv!11274 (left!6589 (c!133275 x!177535))) tp!256839 (inv!11274 (right!6919 (c!133275 x!177535))) tp!256840))))

(declare-fun b!822181 () Bool)

(declare-fun inv!11282 (IArray!5917) Bool)

(assert (=> b!822181 (= e!543246 (inv!11282 (xs!5645 (c!133275 x!177535))))))

(assert (=> b!822069 (= tp!256824 (and (inv!11274 (c!133275 x!177535)) e!543246))))

(assert (= (and b!822069 (is-Node!2956 (c!133275 x!177535))) b!822180))

(assert (= (and b!822069 (is-Leaf!4342 (c!133275 x!177535))) b!822181))

(declare-fun m!1063413 () Bool)

(assert (=> b!822180 m!1063413))

(declare-fun m!1063415 () Bool)

(assert (=> b!822180 m!1063415))

(declare-fun m!1063417 () Bool)

(assert (=> b!822181 m!1063417))

(assert (=> b!822069 m!1063295))

(declare-fun e!543248 () Bool)

(declare-fun tp!256842 () Bool)

(declare-fun tp!256841 () Bool)

(declare-fun b!822182 () Bool)

(assert (=> b!822182 (= e!543248 (and (inv!11274 (left!6589 (c!133275 x!177533))) tp!256841 (inv!11274 (right!6919 (c!133275 x!177533))) tp!256842))))

(declare-fun b!822183 () Bool)

(assert (=> b!822183 (= e!543248 (inv!11282 (xs!5645 (c!133275 x!177533))))))

(assert (=> b!822066 (= tp!256823 (and (inv!11274 (c!133275 x!177533)) e!543248))))

(assert (= (and b!822066 (is-Node!2956 (c!133275 x!177533))) b!822182))

(assert (= (and b!822066 (is-Leaf!4342 (c!133275 x!177533))) b!822183))

(declare-fun m!1063419 () Bool)

(assert (=> b!822182 m!1063419))

(declare-fun m!1063421 () Bool)

(assert (=> b!822182 m!1063421))

(declare-fun m!1063423 () Bool)

(assert (=> b!822183 m!1063423))

(assert (=> b!822066 m!1063269))

(declare-fun tp!256844 () Bool)

(declare-fun b!822184 () Bool)

(declare-fun e!543250 () Bool)

(declare-fun tp!256843 () Bool)

(assert (=> b!822184 (= e!543250 (and (inv!11274 (left!6589 (c!133275 x!177534))) tp!256843 (inv!11274 (right!6919 (c!133275 x!177534))) tp!256844))))

(declare-fun b!822185 () Bool)

(assert (=> b!822185 (= e!543250 (inv!11282 (xs!5645 (c!133275 x!177534))))))

(assert (=> b!822068 (= tp!256825 (and (inv!11274 (c!133275 x!177534)) e!543250))))

(assert (= (and b!822068 (is-Node!2956 (c!133275 x!177534))) b!822184))

(assert (= (and b!822068 (is-Leaf!4342 (c!133275 x!177534))) b!822185))

(declare-fun m!1063425 () Bool)

(assert (=> b!822184 m!1063425))

(declare-fun m!1063427 () Bool)

(assert (=> b!822184 m!1063427))

(declare-fun m!1063429 () Bool)

(assert (=> b!822185 m!1063429))

(assert (=> b!822068 m!1063293))

(push 1)

(assert (not b!822166))

(assert (not b!822180))

(assert (not d!258926))

(assert (not d!258958))

(assert (not d!258934))

(assert (not b!822159))

(assert (not d!258928))

(assert (not b!822182))

(assert (not b!822066))

(assert (not d!258946))

(assert (not b!822161))

(assert (not b!822173))

(assert (not d!258950))

(assert (not d!258924))

(assert (not d!258922))

(assert (not d!258936))

(assert (not b!822069))

(assert (not d!258948))

(assert (not b!822184))

(assert (not b!822068))

(assert (not d!258942))

(assert (not b!822181))

(assert (not d!258932))

(assert (not b!822183))

(assert (not d!258930))

(assert (not b!822148))

(assert (not b!822168))

(assert (not b!822170))

(assert (not b!822185))

(assert (not d!258940))

(assert (not d!258960))

(assert (not d!258938))

(assert (not b!822150))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

