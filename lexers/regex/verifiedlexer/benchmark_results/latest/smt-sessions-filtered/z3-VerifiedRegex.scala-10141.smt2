; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!530730 () Bool)

(assert start!530730)

(declare-fun e!3137142 () Bool)

(declare-fun from!1212 () Int)

(declare-datatypes ((C!27984 0))(
  ( (C!27985 (val!23358 Int)) )
))
(declare-datatypes ((List!58168 0))(
  ( (Nil!58044) (Cons!58044 (h!64492 C!27984) (t!370552 List!58168)) )
))
(declare-datatypes ((IArray!30833 0))(
  ( (IArray!30834 (innerList!15474 List!58168)) )
))
(declare-datatypes ((Conc!15386 0))(
  ( (Node!15386 (left!42445 Conc!15386) (right!42775 Conc!15386) (csize!31002 Int) (cheight!15597 Int)) (Leaf!25528 (xs!18712 IArray!30833) (csize!31003 Int)) (Empty!15386) )
))
(declare-datatypes ((BalanceConc!30202 0))(
  ( (BalanceConc!30203 (c!858479 Conc!15386)) )
))
(declare-fun totalInput!1125 () BalanceConc!30202)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13867 0))(
  ( (ElementMatch!13867 (c!858480 C!27984)) (Concat!22660 (regOne!28246 Regex!13867) (regTwo!28246 Regex!13867)) (EmptyExpr!13867) (Star!13867 (reg!14196 Regex!13867)) (EmptyLang!13867) (Union!13867 (regOne!28247 Regex!13867) (regTwo!28247 Regex!13867)) )
))
(declare-datatypes ((List!58169 0))(
  ( (Nil!58045) (Cons!58045 (h!64493 Regex!13867) (t!370553 List!58169)) )
))
(declare-datatypes ((Context!6584 0))(
  ( (Context!6585 (exprs!3792 List!58169)) )
))
(declare-fun z!4710 () (InoxSet Context!6584))

(declare-fun b!5021869 () Bool)

(declare-fun knownSize!24 () Int)

(declare-fun lt!2078423 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!189 ((InoxSet Context!6584) Int BalanceConc!30202 Int) Int)

(assert (=> b!5021869 (= e!3137142 (>= (findLongestMatchInnerZipperFastV2!189 z!4710 from!1212 totalInput!1125 lt!2078423) knownSize!24))))

(declare-fun lt!2078424 () Int)

(assert (=> b!5021869 (>= lt!2078424 (- knownSize!24 1))))

(declare-datatypes ((Unit!149255 0))(
  ( (Unit!149256) )
))
(declare-fun lt!2078419 () Unit!149255)

(declare-fun lt!2078430 () (InoxSet Context!6584))

(declare-fun lemmaKnownAcceptedStringThenFromSmallPAtLeastThatV2!8 ((InoxSet Context!6584) Int BalanceConc!30202 Int) Unit!149255)

(assert (=> b!5021869 (= lt!2078419 (lemmaKnownAcceptedStringThenFromSmallPAtLeastThatV2!8 lt!2078430 (+ 1 from!1212) totalInput!1125 (- knownSize!24 1)))))

(declare-fun b!5021870 () Bool)

(declare-fun res!2141159 () Bool)

(declare-fun e!3137146 () Bool)

(assert (=> b!5021870 (=> (not res!2141159) (not e!3137146))))

(assert (=> b!5021870 (= res!2141159 (and (not (= knownSize!24 0)) (> knownSize!24 0)))))

(declare-fun b!5021871 () Bool)

(declare-fun e!3137147 () Bool)

(declare-fun tp!1407998 () Bool)

(declare-fun inv!76428 (Conc!15386) Bool)

(assert (=> b!5021871 (= e!3137147 (and (inv!76428 (c!858479 totalInput!1125)) tp!1407998))))

(declare-fun setIsEmpty!28716 () Bool)

(declare-fun setRes!28716 () Bool)

(assert (=> setIsEmpty!28716 setRes!28716))

(declare-fun b!5021872 () Bool)

(declare-fun e!3137143 () Bool)

(declare-fun e!3137144 () Bool)

(assert (=> b!5021872 (= e!3137143 e!3137144)))

(declare-fun res!2141152 () Bool)

(assert (=> b!5021872 (=> (not res!2141152) (not e!3137144))))

(assert (=> b!5021872 (= res!2141152 (and (<= from!1212 lt!2078423) (>= knownSize!24 0) (<= knownSize!24 (- lt!2078423 from!1212))))))

(declare-fun size!38629 (BalanceConc!30202) Int)

(assert (=> b!5021872 (= lt!2078423 (size!38629 totalInput!1125))))

(declare-fun b!5021873 () Bool)

(declare-fun res!2141151 () Bool)

(assert (=> b!5021873 (=> (not res!2141151) (not e!3137146))))

(declare-fun lt!2078420 () List!58168)

(declare-fun size!38630 (List!58168) Int)

(assert (=> b!5021873 (= res!2141151 (= (size!38630 lt!2078420) knownSize!24))))

(declare-fun b!5021874 () Bool)

(assert (=> b!5021874 (= e!3137144 e!3137146)))

(declare-fun res!2141154 () Bool)

(assert (=> b!5021874 (=> (not res!2141154) (not e!3137146))))

(declare-fun matchZipper!635 ((InoxSet Context!6584) List!58168) Bool)

(assert (=> b!5021874 (= res!2141154 (matchZipper!635 z!4710 lt!2078420))))

(declare-fun lt!2078426 () List!58168)

(declare-fun take!726 (List!58168 Int) List!58168)

(assert (=> b!5021874 (= lt!2078420 (take!726 lt!2078426 knownSize!24))))

(declare-fun lt!2078425 () List!58168)

(declare-fun drop!2530 (List!58168 Int) List!58168)

(assert (=> b!5021874 (= lt!2078426 (drop!2530 lt!2078425 from!1212))))

(declare-fun list!18728 (BalanceConc!30202) List!58168)

(assert (=> b!5021874 (= lt!2078425 (list!18728 totalInput!1125))))

(declare-fun b!5021875 () Bool)

(assert (=> b!5021875 (= e!3137146 (not e!3137142))))

(declare-fun res!2141158 () Bool)

(assert (=> b!5021875 (=> res!2141158 e!3137142)))

(assert (=> b!5021875 (= res!2141158 (or (< (+ 1 from!1212) 0) (> (+ 1 from!1212) lt!2078423) (< (- knownSize!24 1) 0) (> (- knownSize!24 1) (- lt!2078423 (+ 1 from!1212)))))))

(declare-fun lt!2078421 () List!58168)

(declare-fun lt!2078422 () C!27984)

(assert (=> b!5021875 (= (Cons!58044 lt!2078422 lt!2078421) (take!726 lt!2078426 (+ 1 (- knownSize!24 1))))))

(declare-fun lt!2078429 () List!58168)

(assert (=> b!5021875 (= lt!2078421 (take!726 lt!2078429 (- knownSize!24 1)))))

(declare-fun lt!2078428 () Unit!149255)

(declare-fun lemmaDropTakeAddOneLeft!72 (List!58168 Int Int) Unit!149255)

(assert (=> b!5021875 (= lt!2078428 (lemmaDropTakeAddOneLeft!72 lt!2078425 from!1212 (- knownSize!24 1)))))

(assert (=> b!5021875 (= (Cons!58044 lt!2078422 (take!726 lt!2078429 lt!2078424)) (take!726 lt!2078426 (+ 1 lt!2078424)))))

(assert (=> b!5021875 (= lt!2078429 (drop!2530 lt!2078425 (+ 1 from!1212)))))

(declare-fun apply!14078 (List!58168 Int) C!27984)

(assert (=> b!5021875 (= lt!2078422 (apply!14078 lt!2078425 from!1212))))

(declare-fun lt!2078427 () Unit!149255)

(assert (=> b!5021875 (= lt!2078427 (lemmaDropTakeAddOneLeft!72 lt!2078425 from!1212 lt!2078424))))

(assert (=> b!5021875 (= lt!2078424 (findLongestMatchInnerZipperFastV2!189 lt!2078430 (+ 1 from!1212) totalInput!1125 lt!2078423))))

(declare-fun derivationStepZipper!673 ((InoxSet Context!6584) C!27984) (InoxSet Context!6584))

(declare-fun apply!14079 (BalanceConc!30202 Int) C!27984)

(assert (=> b!5021875 (= lt!2078430 (derivationStepZipper!673 z!4710 (apply!14079 totalInput!1125 from!1212)))))

(declare-fun setElem!28716 () Context!6584)

(declare-fun setNonEmpty!28716 () Bool)

(declare-fun e!3137145 () Bool)

(declare-fun tp!1407996 () Bool)

(declare-fun inv!76429 (Context!6584) Bool)

(assert (=> setNonEmpty!28716 (= setRes!28716 (and tp!1407996 (inv!76429 setElem!28716) e!3137145))))

(declare-fun setRest!28716 () (InoxSet Context!6584))

(assert (=> setNonEmpty!28716 (= z!4710 ((_ map or) (store ((as const (Array Context!6584 Bool)) false) setElem!28716 true) setRest!28716))))

(declare-fun b!5021868 () Bool)

(declare-fun res!2141156 () Bool)

(assert (=> b!5021868 (=> res!2141156 e!3137142)))

(assert (=> b!5021868 (= res!2141156 (not (matchZipper!635 lt!2078430 lt!2078421)))))

(declare-fun res!2141157 () Bool)

(assert (=> start!530730 (=> (not res!2141157) (not e!3137143))))

(assert (=> start!530730 (= res!2141157 (>= from!1212 0))))

(assert (=> start!530730 e!3137143))

(assert (=> start!530730 true))

(declare-fun inv!76430 (BalanceConc!30202) Bool)

(assert (=> start!530730 (and (inv!76430 totalInput!1125) e!3137147)))

(declare-fun condSetEmpty!28716 () Bool)

(assert (=> start!530730 (= condSetEmpty!28716 (= z!4710 ((as const (Array Context!6584 Bool)) false)))))

(assert (=> start!530730 setRes!28716))

(declare-fun b!5021876 () Bool)

(declare-fun res!2141155 () Bool)

(assert (=> b!5021876 (=> (not res!2141155) (not e!3137146))))

(assert (=> b!5021876 (= res!2141155 (not (= from!1212 lt!2078423)))))

(declare-fun b!5021877 () Bool)

(declare-fun tp!1407997 () Bool)

(assert (=> b!5021877 (= e!3137145 tp!1407997)))

(declare-fun b!5021878 () Bool)

(declare-fun res!2141153 () Bool)

(assert (=> b!5021878 (=> (not res!2141153) (not e!3137146))))

(declare-fun lostCauseZipper!881 ((InoxSet Context!6584)) Bool)

(assert (=> b!5021878 (= res!2141153 (not (lostCauseZipper!881 z!4710)))))

(assert (= (and start!530730 res!2141157) b!5021872))

(assert (= (and b!5021872 res!2141152) b!5021874))

(assert (= (and b!5021874 res!2141154) b!5021870))

(assert (= (and b!5021870 res!2141159) b!5021873))

(assert (= (and b!5021873 res!2141151) b!5021878))

(assert (= (and b!5021878 res!2141153) b!5021876))

(assert (= (and b!5021876 res!2141155) b!5021875))

(assert (= (and b!5021875 (not res!2141158)) b!5021868))

(assert (= (and b!5021868 (not res!2141156)) b!5021869))

(assert (= start!530730 b!5021871))

(assert (= (and start!530730 condSetEmpty!28716) setIsEmpty!28716))

(assert (= (and start!530730 (not condSetEmpty!28716)) setNonEmpty!28716))

(assert (= setNonEmpty!28716 b!5021877))

(declare-fun m!6056930 () Bool)

(assert (=> b!5021875 m!6056930))

(declare-fun m!6056932 () Bool)

(assert (=> b!5021875 m!6056932))

(declare-fun m!6056934 () Bool)

(assert (=> b!5021875 m!6056934))

(declare-fun m!6056936 () Bool)

(assert (=> b!5021875 m!6056936))

(assert (=> b!5021875 m!6056930))

(declare-fun m!6056938 () Bool)

(assert (=> b!5021875 m!6056938))

(declare-fun m!6056940 () Bool)

(assert (=> b!5021875 m!6056940))

(declare-fun m!6056942 () Bool)

(assert (=> b!5021875 m!6056942))

(declare-fun m!6056944 () Bool)

(assert (=> b!5021875 m!6056944))

(declare-fun m!6056946 () Bool)

(assert (=> b!5021875 m!6056946))

(declare-fun m!6056948 () Bool)

(assert (=> b!5021875 m!6056948))

(declare-fun m!6056950 () Bool)

(assert (=> b!5021875 m!6056950))

(declare-fun m!6056952 () Bool)

(assert (=> b!5021868 m!6056952))

(declare-fun m!6056954 () Bool)

(assert (=> start!530730 m!6056954))

(declare-fun m!6056956 () Bool)

(assert (=> b!5021873 m!6056956))

(declare-fun m!6056958 () Bool)

(assert (=> b!5021869 m!6056958))

(declare-fun m!6056960 () Bool)

(assert (=> b!5021869 m!6056960))

(declare-fun m!6056962 () Bool)

(assert (=> b!5021874 m!6056962))

(declare-fun m!6056964 () Bool)

(assert (=> b!5021874 m!6056964))

(declare-fun m!6056966 () Bool)

(assert (=> b!5021874 m!6056966))

(declare-fun m!6056968 () Bool)

(assert (=> b!5021874 m!6056968))

(declare-fun m!6056970 () Bool)

(assert (=> b!5021871 m!6056970))

(declare-fun m!6056972 () Bool)

(assert (=> b!5021872 m!6056972))

(declare-fun m!6056974 () Bool)

(assert (=> setNonEmpty!28716 m!6056974))

(declare-fun m!6056976 () Bool)

(assert (=> b!5021878 m!6056976))

(check-sat (not b!5021877) (not b!5021868) (not b!5021872) (not b!5021869) (not b!5021873) (not b!5021874) (not b!5021871) (not start!530730) (not b!5021875) (not setNonEmpty!28716) (not b!5021878))
(check-sat)
(get-model)

(declare-fun d!1616432 () Bool)

(declare-fun isBalanced!4297 (Conc!15386) Bool)

(assert (=> d!1616432 (= (inv!76430 totalInput!1125) (isBalanced!4297 (c!858479 totalInput!1125)))))

(declare-fun bs!1187415 () Bool)

(assert (= bs!1187415 d!1616432))

(declare-fun m!6056978 () Bool)

(assert (=> bs!1187415 m!6056978))

(assert (=> start!530730 d!1616432))

(declare-fun d!1616434 () Bool)

(declare-fun lt!2078433 () Int)

(assert (=> d!1616434 (= lt!2078433 (size!38630 (list!18728 totalInput!1125)))))

(declare-fun size!38631 (Conc!15386) Int)

(assert (=> d!1616434 (= lt!2078433 (size!38631 (c!858479 totalInput!1125)))))

(assert (=> d!1616434 (= (size!38629 totalInput!1125) lt!2078433)))

(declare-fun bs!1187416 () Bool)

(assert (= bs!1187416 d!1616434))

(assert (=> bs!1187416 m!6056968))

(assert (=> bs!1187416 m!6056968))

(declare-fun m!6056992 () Bool)

(assert (=> bs!1187416 m!6056992))

(declare-fun m!6056994 () Bool)

(assert (=> bs!1187416 m!6056994))

(assert (=> b!5021872 d!1616434))

(declare-fun d!1616438 () Bool)

(declare-fun c!858489 () Bool)

(declare-fun isEmpty!31432 (List!58168) Bool)

(assert (=> d!1616438 (= c!858489 (isEmpty!31432 lt!2078421))))

(declare-fun e!3137159 () Bool)

(assert (=> d!1616438 (= (matchZipper!635 lt!2078430 lt!2078421) e!3137159)))

(declare-fun b!5021898 () Bool)

(declare-fun nullableZipper!910 ((InoxSet Context!6584)) Bool)

(assert (=> b!5021898 (= e!3137159 (nullableZipper!910 lt!2078430))))

(declare-fun b!5021899 () Bool)

(declare-fun head!10764 (List!58168) C!27984)

(declare-fun tail!9897 (List!58168) List!58168)

(assert (=> b!5021899 (= e!3137159 (matchZipper!635 (derivationStepZipper!673 lt!2078430 (head!10764 lt!2078421)) (tail!9897 lt!2078421)))))

(assert (= (and d!1616438 c!858489) b!5021898))

(assert (= (and d!1616438 (not c!858489)) b!5021899))

(declare-fun m!6057000 () Bool)

(assert (=> d!1616438 m!6057000))

(declare-fun m!6057002 () Bool)

(assert (=> b!5021898 m!6057002))

(declare-fun m!6057004 () Bool)

(assert (=> b!5021899 m!6057004))

(assert (=> b!5021899 m!6057004))

(declare-fun m!6057006 () Bool)

(assert (=> b!5021899 m!6057006))

(declare-fun m!6057008 () Bool)

(assert (=> b!5021899 m!6057008))

(assert (=> b!5021899 m!6057006))

(assert (=> b!5021899 m!6057008))

(declare-fun m!6057010 () Bool)

(assert (=> b!5021899 m!6057010))

(assert (=> b!5021868 d!1616438))

(declare-fun d!1616442 () Bool)

(declare-fun lt!2078439 () Int)

(assert (=> d!1616442 (>= lt!2078439 0)))

(declare-fun e!3137162 () Int)

(assert (=> d!1616442 (= lt!2078439 e!3137162)))

(declare-fun c!858492 () Bool)

(get-info :version)

(assert (=> d!1616442 (= c!858492 ((_ is Nil!58044) lt!2078420))))

(assert (=> d!1616442 (= (size!38630 lt!2078420) lt!2078439)))

(declare-fun b!5021904 () Bool)

(assert (=> b!5021904 (= e!3137162 0)))

(declare-fun b!5021905 () Bool)

(assert (=> b!5021905 (= e!3137162 (+ 1 (size!38630 (t!370552 lt!2078420))))))

(assert (= (and d!1616442 c!858492) b!5021904))

(assert (= (and d!1616442 (not c!858492)) b!5021905))

(declare-fun m!6057016 () Bool)

(assert (=> b!5021905 m!6057016))

(assert (=> b!5021873 d!1616442))

(declare-fun b!5021922 () Bool)

(declare-fun e!3137177 () Int)

(assert (=> b!5021922 (= e!3137177 0)))

(declare-fun b!5021923 () Bool)

(declare-fun e!3137173 () Int)

(assert (=> b!5021923 (= e!3137173 1)))

(declare-fun b!5021924 () Bool)

(assert (=> b!5021924 (= e!3137173 0)))

(declare-fun b!5021925 () Bool)

(declare-fun e!3137174 () Bool)

(assert (=> b!5021925 (= e!3137174 (lostCauseZipper!881 z!4710))))

(declare-fun b!5021926 () Bool)

(declare-fun e!3137175 () Int)

(declare-fun lt!2078446 () Int)

(assert (=> b!5021926 (= e!3137175 (+ 1 lt!2078446))))

(declare-fun d!1616446 () Bool)

(declare-fun lt!2078448 () Int)

(assert (=> d!1616446 (and (>= lt!2078448 0) (<= lt!2078448 (- lt!2078423 from!1212)))))

(assert (=> d!1616446 (= lt!2078448 e!3137177)))

(declare-fun c!858499 () Bool)

(assert (=> d!1616446 (= c!858499 e!3137174)))

(declare-fun res!2141167 () Bool)

(assert (=> d!1616446 (=> res!2141167 e!3137174)))

(assert (=> d!1616446 (= res!2141167 (= from!1212 lt!2078423))))

(declare-fun e!3137176 () Bool)

(assert (=> d!1616446 e!3137176))

(declare-fun res!2141168 () Bool)

(assert (=> d!1616446 (=> (not res!2141168) (not e!3137176))))

(assert (=> d!1616446 (= res!2141168 (>= from!1212 0))))

(assert (=> d!1616446 (= (findLongestMatchInnerZipperFastV2!189 z!4710 from!1212 totalInput!1125 lt!2078423) lt!2078448)))

(declare-fun b!5021927 () Bool)

(declare-fun c!858501 () Bool)

(declare-fun lt!2078447 () (InoxSet Context!6584))

(assert (=> b!5021927 (= c!858501 (nullableZipper!910 lt!2078447))))

(assert (=> b!5021927 (= e!3137175 e!3137173)))

(declare-fun b!5021928 () Bool)

(assert (=> b!5021928 (= e!3137177 e!3137175)))

(assert (=> b!5021928 (= lt!2078447 (derivationStepZipper!673 z!4710 (apply!14079 totalInput!1125 from!1212)))))

(assert (=> b!5021928 (= lt!2078446 (findLongestMatchInnerZipperFastV2!189 lt!2078447 (+ from!1212 1) totalInput!1125 lt!2078423))))

(declare-fun c!858500 () Bool)

(assert (=> b!5021928 (= c!858500 (> lt!2078446 0))))

(declare-fun b!5021929 () Bool)

(assert (=> b!5021929 (= e!3137176 (<= from!1212 (size!38629 totalInput!1125)))))

(assert (= (and d!1616446 res!2141168) b!5021929))

(assert (= (and d!1616446 (not res!2141167)) b!5021925))

(assert (= (and d!1616446 c!858499) b!5021922))

(assert (= (and d!1616446 (not c!858499)) b!5021928))

(assert (= (and b!5021928 c!858500) b!5021926))

(assert (= (and b!5021928 (not c!858500)) b!5021927))

(assert (= (and b!5021927 c!858501) b!5021923))

(assert (= (and b!5021927 (not c!858501)) b!5021924))

(assert (=> b!5021925 m!6056976))

(declare-fun m!6057020 () Bool)

(assert (=> b!5021927 m!6057020))

(assert (=> b!5021928 m!6056930))

(assert (=> b!5021928 m!6056930))

(assert (=> b!5021928 m!6056932))

(declare-fun m!6057022 () Bool)

(assert (=> b!5021928 m!6057022))

(assert (=> b!5021929 m!6056972))

(assert (=> b!5021869 d!1616446))

(declare-fun d!1616450 () Bool)

(assert (=> d!1616450 (>= (findLongestMatchInnerZipperFastV2!189 lt!2078430 (+ 1 from!1212) totalInput!1125 (size!38629 totalInput!1125)) (- knownSize!24 1))))

(declare-fun lt!2078451 () Unit!149255)

(declare-fun choose!37148 ((InoxSet Context!6584) Int BalanceConc!30202 Int) Unit!149255)

(assert (=> d!1616450 (= lt!2078451 (choose!37148 lt!2078430 (+ 1 from!1212) totalInput!1125 (- knownSize!24 1)))))

(declare-fun e!3137180 () Bool)

(assert (=> d!1616450 e!3137180))

(declare-fun res!2141171 () Bool)

(assert (=> d!1616450 (=> (not res!2141171) (not e!3137180))))

(assert (=> d!1616450 (= res!2141171 (>= (+ 1 from!1212) 0))))

(assert (=> d!1616450 (= (lemmaKnownAcceptedStringThenFromSmallPAtLeastThatV2!8 lt!2078430 (+ 1 from!1212) totalInput!1125 (- knownSize!24 1)) lt!2078451)))

(declare-fun b!5021932 () Bool)

(assert (=> b!5021932 (= e!3137180 (<= (+ 1 from!1212) (size!38629 totalInput!1125)))))

(assert (= (and d!1616450 res!2141171) b!5021932))

(assert (=> d!1616450 m!6056972))

(assert (=> d!1616450 m!6056972))

(declare-fun m!6057024 () Bool)

(assert (=> d!1616450 m!6057024))

(declare-fun m!6057026 () Bool)

(assert (=> d!1616450 m!6057026))

(assert (=> b!5021932 m!6056972))

(assert (=> b!5021869 d!1616450))

(declare-fun bs!1187422 () Bool)

(declare-fun b!5022039 () Bool)

(declare-fun d!1616452 () Bool)

(assert (= bs!1187422 (and b!5022039 d!1616452)))

(declare-fun lambda!248970 () Int)

(declare-fun lambda!248969 () Int)

(assert (=> bs!1187422 (not (= lambda!248970 lambda!248969))))

(declare-fun bs!1187423 () Bool)

(declare-fun b!5022040 () Bool)

(assert (= bs!1187423 (and b!5022040 d!1616452)))

(declare-fun lambda!248971 () Int)

(assert (=> bs!1187423 (not (= lambda!248971 lambda!248969))))

(declare-fun bs!1187424 () Bool)

(assert (= bs!1187424 (and b!5022040 b!5022039)))

(assert (=> bs!1187424 (= lambda!248971 lambda!248970)))

(declare-fun bm!350635 () Bool)

(declare-datatypes ((List!58170 0))(
  ( (Nil!58046) (Cons!58046 (h!64494 Context!6584) (t!370554 List!58170)) )
))
(declare-fun call!350641 () List!58170)

(declare-fun toList!8115 ((InoxSet Context!6584)) List!58170)

(assert (=> bm!350635 (= call!350641 (toList!8115 z!4710))))

(declare-fun e!3137246 () Unit!149255)

(declare-fun Unit!149257 () Unit!149255)

(assert (=> b!5022039 (= e!3137246 Unit!149257)))

(declare-fun lt!2078489 () List!58170)

(assert (=> b!5022039 (= lt!2078489 call!350641)))

(declare-fun lt!2078486 () Unit!149255)

(declare-fun lemmaNotForallThenExists!264 (List!58170 Int) Unit!149255)

(assert (=> b!5022039 (= lt!2078486 (lemmaNotForallThenExists!264 lt!2078489 lambda!248969))))

(declare-fun call!350640 () Bool)

(assert (=> b!5022039 call!350640))

(declare-fun lt!2078492 () Unit!149255)

(assert (=> b!5022039 (= lt!2078492 lt!2078486)))

(declare-fun c!858555 () Bool)

(declare-fun lt!2078488 () List!58170)

(declare-fun bm!350636 () Bool)

(declare-fun exists!1382 (List!58170 Int) Bool)

(assert (=> bm!350636 (= call!350640 (exists!1382 (ite c!858555 lt!2078489 lt!2078488) (ite c!858555 lambda!248970 lambda!248971)))))

(declare-fun lt!2078487 () Bool)

(declare-datatypes ((Option!14594 0))(
  ( (None!14593) (Some!14593 (v!50596 List!58168)) )
))
(declare-fun isEmpty!31433 (Option!14594) Bool)

(declare-fun getLanguageWitness!729 ((InoxSet Context!6584)) Option!14594)

(assert (=> d!1616452 (= lt!2078487 (isEmpty!31433 (getLanguageWitness!729 z!4710)))))

(declare-fun forall!13409 ((InoxSet Context!6584) Int) Bool)

(assert (=> d!1616452 (= lt!2078487 (forall!13409 z!4710 lambda!248969))))

(declare-fun lt!2078491 () Unit!149255)

(assert (=> d!1616452 (= lt!2078491 e!3137246)))

(assert (=> d!1616452 (= c!858555 (not (forall!13409 z!4710 lambda!248969)))))

(assert (=> d!1616452 (= (lostCauseZipper!881 z!4710) lt!2078487)))

(declare-fun Unit!149258 () Unit!149255)

(assert (=> b!5022040 (= e!3137246 Unit!149258)))

(assert (=> b!5022040 (= lt!2078488 call!350641)))

(declare-fun lt!2078493 () Unit!149255)

(declare-fun lemmaForallThenNotExists!247 (List!58170 Int) Unit!149255)

(assert (=> b!5022040 (= lt!2078493 (lemmaForallThenNotExists!247 lt!2078488 lambda!248969))))

(assert (=> b!5022040 (not call!350640)))

(declare-fun lt!2078490 () Unit!149255)

(assert (=> b!5022040 (= lt!2078490 lt!2078493)))

(assert (= (and d!1616452 c!858555) b!5022039))

(assert (= (and d!1616452 (not c!858555)) b!5022040))

(assert (= (or b!5022039 b!5022040) bm!350635))

(assert (= (or b!5022039 b!5022040) bm!350636))

(declare-fun m!6057122 () Bool)

(assert (=> bm!350635 m!6057122))

(declare-fun m!6057124 () Bool)

(assert (=> bm!350636 m!6057124))

(declare-fun m!6057126 () Bool)

(assert (=> d!1616452 m!6057126))

(assert (=> d!1616452 m!6057126))

(declare-fun m!6057128 () Bool)

(assert (=> d!1616452 m!6057128))

(declare-fun m!6057130 () Bool)

(assert (=> d!1616452 m!6057130))

(assert (=> d!1616452 m!6057130))

(declare-fun m!6057132 () Bool)

(assert (=> b!5022039 m!6057132))

(declare-fun m!6057134 () Bool)

(assert (=> b!5022040 m!6057134))

(assert (=> b!5021878 d!1616452))

(declare-fun d!1616482 () Bool)

(declare-fun c!858556 () Bool)

(assert (=> d!1616482 (= c!858556 (isEmpty!31432 lt!2078420))))

(declare-fun e!3137247 () Bool)

(assert (=> d!1616482 (= (matchZipper!635 z!4710 lt!2078420) e!3137247)))

(declare-fun b!5022041 () Bool)

(assert (=> b!5022041 (= e!3137247 (nullableZipper!910 z!4710))))

(declare-fun b!5022042 () Bool)

(assert (=> b!5022042 (= e!3137247 (matchZipper!635 (derivationStepZipper!673 z!4710 (head!10764 lt!2078420)) (tail!9897 lt!2078420)))))

(assert (= (and d!1616482 c!858556) b!5022041))

(assert (= (and d!1616482 (not c!858556)) b!5022042))

(declare-fun m!6057136 () Bool)

(assert (=> d!1616482 m!6057136))

(declare-fun m!6057138 () Bool)

(assert (=> b!5022041 m!6057138))

(declare-fun m!6057140 () Bool)

(assert (=> b!5022042 m!6057140))

(assert (=> b!5022042 m!6057140))

(declare-fun m!6057142 () Bool)

(assert (=> b!5022042 m!6057142))

(declare-fun m!6057144 () Bool)

(assert (=> b!5022042 m!6057144))

(assert (=> b!5022042 m!6057142))

(assert (=> b!5022042 m!6057144))

(declare-fun m!6057146 () Bool)

(assert (=> b!5022042 m!6057146))

(assert (=> b!5021874 d!1616482))

(declare-fun b!5022069 () Bool)

(declare-fun e!3137262 () Bool)

(declare-fun lt!2078502 () List!58168)

(declare-fun e!3137265 () Int)

(assert (=> b!5022069 (= e!3137262 (= (size!38630 lt!2078502) e!3137265))))

(declare-fun c!858565 () Bool)

(assert (=> b!5022069 (= c!858565 (<= knownSize!24 0))))

(declare-fun b!5022070 () Bool)

(declare-fun e!3137264 () Int)

(assert (=> b!5022070 (= e!3137264 (size!38630 lt!2078426))))

(declare-fun b!5022071 () Bool)

(assert (=> b!5022071 (= e!3137265 e!3137264)))

(declare-fun c!858566 () Bool)

(assert (=> b!5022071 (= c!858566 (>= knownSize!24 (size!38630 lt!2078426)))))

(declare-fun b!5022072 () Bool)

(assert (=> b!5022072 (= e!3137264 knownSize!24)))

(declare-fun b!5022073 () Bool)

(declare-fun e!3137263 () List!58168)

(assert (=> b!5022073 (= e!3137263 (Cons!58044 (h!64492 lt!2078426) (take!726 (t!370552 lt!2078426) (- knownSize!24 1))))))

(declare-fun d!1616484 () Bool)

(assert (=> d!1616484 e!3137262))

(declare-fun res!2141196 () Bool)

(assert (=> d!1616484 (=> (not res!2141196) (not e!3137262))))

(declare-fun content!10289 (List!58168) (InoxSet C!27984))

(assert (=> d!1616484 (= res!2141196 (= ((_ map implies) (content!10289 lt!2078502) (content!10289 lt!2078426)) ((as const (InoxSet C!27984)) true)))))

(assert (=> d!1616484 (= lt!2078502 e!3137263)))

(declare-fun c!858567 () Bool)

(assert (=> d!1616484 (= c!858567 (or ((_ is Nil!58044) lt!2078426) (<= knownSize!24 0)))))

(assert (=> d!1616484 (= (take!726 lt!2078426 knownSize!24) lt!2078502)))

(declare-fun b!5022074 () Bool)

(assert (=> b!5022074 (= e!3137263 Nil!58044)))

(declare-fun b!5022075 () Bool)

(assert (=> b!5022075 (= e!3137265 0)))

(assert (= (and d!1616484 c!858567) b!5022074))

(assert (= (and d!1616484 (not c!858567)) b!5022073))

(assert (= (and d!1616484 res!2141196) b!5022069))

(assert (= (and b!5022069 c!858565) b!5022075))

(assert (= (and b!5022069 (not c!858565)) b!5022071))

(assert (= (and b!5022071 c!858566) b!5022070))

(assert (= (and b!5022071 (not c!858566)) b!5022072))

(declare-fun m!6057148 () Bool)

(assert (=> b!5022071 m!6057148))

(assert (=> b!5022070 m!6057148))

(declare-fun m!6057150 () Bool)

(assert (=> b!5022073 m!6057150))

(declare-fun m!6057152 () Bool)

(assert (=> b!5022069 m!6057152))

(declare-fun m!6057154 () Bool)

(assert (=> d!1616484 m!6057154))

(declare-fun m!6057156 () Bool)

(assert (=> d!1616484 m!6057156))

(assert (=> b!5021874 d!1616484))

(declare-fun b!5022108 () Bool)

(declare-fun e!3137287 () List!58168)

(assert (=> b!5022108 (= e!3137287 (drop!2530 (t!370552 lt!2078425) (- from!1212 1)))))

(declare-fun b!5022109 () Bool)

(declare-fun e!3137289 () List!58168)

(assert (=> b!5022109 (= e!3137289 e!3137287)))

(declare-fun c!858584 () Bool)

(assert (=> b!5022109 (= c!858584 (<= from!1212 0))))

(declare-fun d!1616486 () Bool)

(declare-fun e!3137290 () Bool)

(assert (=> d!1616486 e!3137290))

(declare-fun res!2141203 () Bool)

(assert (=> d!1616486 (=> (not res!2141203) (not e!3137290))))

(declare-fun lt!2078510 () List!58168)

(assert (=> d!1616486 (= res!2141203 (= ((_ map implies) (content!10289 lt!2078510) (content!10289 lt!2078425)) ((as const (InoxSet C!27984)) true)))))

(assert (=> d!1616486 (= lt!2078510 e!3137289)))

(declare-fun c!858585 () Bool)

(assert (=> d!1616486 (= c!858585 ((_ is Nil!58044) lt!2078425))))

(assert (=> d!1616486 (= (drop!2530 lt!2078425 from!1212) lt!2078510)))

(declare-fun b!5022110 () Bool)

(declare-fun e!3137291 () Int)

(declare-fun call!350644 () Int)

(assert (=> b!5022110 (= e!3137291 call!350644)))

(declare-fun b!5022111 () Bool)

(declare-fun e!3137288 () Int)

(assert (=> b!5022111 (= e!3137288 0)))

(declare-fun b!5022112 () Bool)

(assert (=> b!5022112 (= e!3137290 (= (size!38630 lt!2078510) e!3137291))))

(declare-fun c!858583 () Bool)

(assert (=> b!5022112 (= c!858583 (<= from!1212 0))))

(declare-fun b!5022113 () Bool)

(assert (=> b!5022113 (= e!3137291 e!3137288)))

(declare-fun c!858586 () Bool)

(assert (=> b!5022113 (= c!858586 (>= from!1212 call!350644))))

(declare-fun bm!350639 () Bool)

(assert (=> bm!350639 (= call!350644 (size!38630 lt!2078425))))

(declare-fun b!5022114 () Bool)

(assert (=> b!5022114 (= e!3137288 (- call!350644 from!1212))))

(declare-fun b!5022115 () Bool)

(assert (=> b!5022115 (= e!3137289 Nil!58044)))

(declare-fun b!5022116 () Bool)

(assert (=> b!5022116 (= e!3137287 lt!2078425)))

(assert (= (and d!1616486 c!858585) b!5022115))

(assert (= (and d!1616486 (not c!858585)) b!5022109))

(assert (= (and b!5022109 c!858584) b!5022116))

(assert (= (and b!5022109 (not c!858584)) b!5022108))

(assert (= (and d!1616486 res!2141203) b!5022112))

(assert (= (and b!5022112 c!858583) b!5022110))

(assert (= (and b!5022112 (not c!858583)) b!5022113))

(assert (= (and b!5022113 c!858586) b!5022111))

(assert (= (and b!5022113 (not c!858586)) b!5022114))

(assert (= (or b!5022110 b!5022113 b!5022114) bm!350639))

(declare-fun m!6057168 () Bool)

(assert (=> b!5022108 m!6057168))

(declare-fun m!6057170 () Bool)

(assert (=> d!1616486 m!6057170))

(declare-fun m!6057172 () Bool)

(assert (=> d!1616486 m!6057172))

(declare-fun m!6057174 () Bool)

(assert (=> b!5022112 m!6057174))

(declare-fun m!6057176 () Bool)

(assert (=> bm!350639 m!6057176))

(assert (=> b!5021874 d!1616486))

(declare-fun d!1616490 () Bool)

(declare-fun list!18730 (Conc!15386) List!58168)

(assert (=> d!1616490 (= (list!18728 totalInput!1125) (list!18730 (c!858479 totalInput!1125)))))

(declare-fun bs!1187425 () Bool)

(assert (= bs!1187425 d!1616490))

(declare-fun m!6057182 () Bool)

(assert (=> bs!1187425 m!6057182))

(assert (=> b!5021874 d!1616490))

(declare-fun b!5022122 () Bool)

(declare-fun e!3137295 () List!58168)

(assert (=> b!5022122 (= e!3137295 (drop!2530 (t!370552 lt!2078425) (- (+ 1 from!1212) 1)))))

(declare-fun b!5022123 () Bool)

(declare-fun e!3137297 () List!58168)

(assert (=> b!5022123 (= e!3137297 e!3137295)))

(declare-fun c!858590 () Bool)

(assert (=> b!5022123 (= c!858590 (<= (+ 1 from!1212) 0))))

(declare-fun d!1616494 () Bool)

(declare-fun e!3137298 () Bool)

(assert (=> d!1616494 e!3137298))

(declare-fun res!2141205 () Bool)

(assert (=> d!1616494 (=> (not res!2141205) (not e!3137298))))

(declare-fun lt!2078514 () List!58168)

(assert (=> d!1616494 (= res!2141205 (= ((_ map implies) (content!10289 lt!2078514) (content!10289 lt!2078425)) ((as const (InoxSet C!27984)) true)))))

(assert (=> d!1616494 (= lt!2078514 e!3137297)))

(declare-fun c!858591 () Bool)

(assert (=> d!1616494 (= c!858591 ((_ is Nil!58044) lt!2078425))))

(assert (=> d!1616494 (= (drop!2530 lt!2078425 (+ 1 from!1212)) lt!2078514)))

(declare-fun b!5022124 () Bool)

(declare-fun e!3137299 () Int)

(declare-fun call!350645 () Int)

(assert (=> b!5022124 (= e!3137299 call!350645)))

(declare-fun b!5022125 () Bool)

(declare-fun e!3137296 () Int)

(assert (=> b!5022125 (= e!3137296 0)))

(declare-fun b!5022126 () Bool)

(assert (=> b!5022126 (= e!3137298 (= (size!38630 lt!2078514) e!3137299))))

(declare-fun c!858589 () Bool)

(assert (=> b!5022126 (= c!858589 (<= (+ 1 from!1212) 0))))

(declare-fun b!5022127 () Bool)

(assert (=> b!5022127 (= e!3137299 e!3137296)))

(declare-fun c!858592 () Bool)

(assert (=> b!5022127 (= c!858592 (>= (+ 1 from!1212) call!350645))))

(declare-fun bm!350640 () Bool)

(assert (=> bm!350640 (= call!350645 (size!38630 lt!2078425))))

(declare-fun b!5022128 () Bool)

(assert (=> b!5022128 (= e!3137296 (- call!350645 (+ 1 from!1212)))))

(declare-fun b!5022129 () Bool)

(assert (=> b!5022129 (= e!3137297 Nil!58044)))

(declare-fun b!5022130 () Bool)

(assert (=> b!5022130 (= e!3137295 lt!2078425)))

(assert (= (and d!1616494 c!858591) b!5022129))

(assert (= (and d!1616494 (not c!858591)) b!5022123))

(assert (= (and b!5022123 c!858590) b!5022130))

(assert (= (and b!5022123 (not c!858590)) b!5022122))

(assert (= (and d!1616494 res!2141205) b!5022126))

(assert (= (and b!5022126 c!858589) b!5022124))

(assert (= (and b!5022126 (not c!858589)) b!5022127))

(assert (= (and b!5022127 c!858592) b!5022125))

(assert (= (and b!5022127 (not c!858592)) b!5022128))

(assert (= (or b!5022124 b!5022127 b!5022128) bm!350640))

(declare-fun m!6057184 () Bool)

(assert (=> b!5022122 m!6057184))

(declare-fun m!6057186 () Bool)

(assert (=> d!1616494 m!6057186))

(assert (=> d!1616494 m!6057172))

(declare-fun m!6057188 () Bool)

(assert (=> b!5022126 m!6057188))

(assert (=> bm!350640 m!6057176))

(assert (=> b!5021875 d!1616494))

(declare-fun d!1616496 () Bool)

(declare-fun lt!2078521 () C!27984)

(assert (=> d!1616496 (= lt!2078521 (apply!14078 (list!18728 totalInput!1125) from!1212))))

(declare-fun apply!14080 (Conc!15386 Int) C!27984)

(assert (=> d!1616496 (= lt!2078521 (apply!14080 (c!858479 totalInput!1125) from!1212))))

(declare-fun e!3137308 () Bool)

(assert (=> d!1616496 e!3137308))

(declare-fun res!2141210 () Bool)

(assert (=> d!1616496 (=> (not res!2141210) (not e!3137308))))

(assert (=> d!1616496 (= res!2141210 (<= 0 from!1212))))

(assert (=> d!1616496 (= (apply!14079 totalInput!1125 from!1212) lt!2078521)))

(declare-fun b!5022143 () Bool)

(assert (=> b!5022143 (= e!3137308 (< from!1212 (size!38629 totalInput!1125)))))

(assert (= (and d!1616496 res!2141210) b!5022143))

(assert (=> d!1616496 m!6056968))

(assert (=> d!1616496 m!6056968))

(declare-fun m!6057196 () Bool)

(assert (=> d!1616496 m!6057196))

(declare-fun m!6057198 () Bool)

(assert (=> d!1616496 m!6057198))

(assert (=> b!5022143 m!6056972))

(assert (=> b!5021875 d!1616496))

(declare-fun d!1616502 () Bool)

(declare-fun lt!2078524 () C!27984)

(declare-fun contains!19568 (List!58168 C!27984) Bool)

(assert (=> d!1616502 (contains!19568 lt!2078425 lt!2078524)))

(declare-fun e!3137313 () C!27984)

(assert (=> d!1616502 (= lt!2078524 e!3137313)))

(declare-fun c!858599 () Bool)

(assert (=> d!1616502 (= c!858599 (= from!1212 0))))

(declare-fun e!3137314 () Bool)

(assert (=> d!1616502 e!3137314))

(declare-fun res!2141213 () Bool)

(assert (=> d!1616502 (=> (not res!2141213) (not e!3137314))))

(assert (=> d!1616502 (= res!2141213 (<= 0 from!1212))))

(assert (=> d!1616502 (= (apply!14078 lt!2078425 from!1212) lt!2078524)))

(declare-fun b!5022150 () Bool)

(assert (=> b!5022150 (= e!3137314 (< from!1212 (size!38630 lt!2078425)))))

(declare-fun b!5022151 () Bool)

(assert (=> b!5022151 (= e!3137313 (head!10764 lt!2078425))))

(declare-fun b!5022152 () Bool)

(assert (=> b!5022152 (= e!3137313 (apply!14078 (tail!9897 lt!2078425) (- from!1212 1)))))

(assert (= (and d!1616502 res!2141213) b!5022150))

(assert (= (and d!1616502 c!858599) b!5022151))

(assert (= (and d!1616502 (not c!858599)) b!5022152))

(declare-fun m!6057200 () Bool)

(assert (=> d!1616502 m!6057200))

(assert (=> b!5022150 m!6057176))

(declare-fun m!6057202 () Bool)

(assert (=> b!5022151 m!6057202))

(declare-fun m!6057204 () Bool)

(assert (=> b!5022152 m!6057204))

(assert (=> b!5022152 m!6057204))

(declare-fun m!6057206 () Bool)

(assert (=> b!5022152 m!6057206))

(assert (=> b!5021875 d!1616502))

(declare-fun b!5022153 () Bool)

(declare-fun e!3137315 () Bool)

(declare-fun lt!2078525 () List!58168)

(declare-fun e!3137318 () Int)

(assert (=> b!5022153 (= e!3137315 (= (size!38630 lt!2078525) e!3137318))))

(declare-fun c!858600 () Bool)

(assert (=> b!5022153 (= c!858600 (<= lt!2078424 0))))

(declare-fun b!5022154 () Bool)

(declare-fun e!3137317 () Int)

(assert (=> b!5022154 (= e!3137317 (size!38630 lt!2078429))))

(declare-fun b!5022155 () Bool)

(assert (=> b!5022155 (= e!3137318 e!3137317)))

(declare-fun c!858601 () Bool)

(assert (=> b!5022155 (= c!858601 (>= lt!2078424 (size!38630 lt!2078429)))))

(declare-fun b!5022156 () Bool)

(assert (=> b!5022156 (= e!3137317 lt!2078424)))

(declare-fun b!5022157 () Bool)

(declare-fun e!3137316 () List!58168)

(assert (=> b!5022157 (= e!3137316 (Cons!58044 (h!64492 lt!2078429) (take!726 (t!370552 lt!2078429) (- lt!2078424 1))))))

(declare-fun d!1616504 () Bool)

(assert (=> d!1616504 e!3137315))

(declare-fun res!2141214 () Bool)

(assert (=> d!1616504 (=> (not res!2141214) (not e!3137315))))

(assert (=> d!1616504 (= res!2141214 (= ((_ map implies) (content!10289 lt!2078525) (content!10289 lt!2078429)) ((as const (InoxSet C!27984)) true)))))

(assert (=> d!1616504 (= lt!2078525 e!3137316)))

(declare-fun c!858602 () Bool)

(assert (=> d!1616504 (= c!858602 (or ((_ is Nil!58044) lt!2078429) (<= lt!2078424 0)))))

(assert (=> d!1616504 (= (take!726 lt!2078429 lt!2078424) lt!2078525)))

(declare-fun b!5022158 () Bool)

(assert (=> b!5022158 (= e!3137316 Nil!58044)))

(declare-fun b!5022159 () Bool)

(assert (=> b!5022159 (= e!3137318 0)))

(assert (= (and d!1616504 c!858602) b!5022158))

(assert (= (and d!1616504 (not c!858602)) b!5022157))

(assert (= (and d!1616504 res!2141214) b!5022153))

(assert (= (and b!5022153 c!858600) b!5022159))

(assert (= (and b!5022153 (not c!858600)) b!5022155))

(assert (= (and b!5022155 c!858601) b!5022154))

(assert (= (and b!5022155 (not c!858601)) b!5022156))

(declare-fun m!6057208 () Bool)

(assert (=> b!5022155 m!6057208))

(assert (=> b!5022154 m!6057208))

(declare-fun m!6057210 () Bool)

(assert (=> b!5022157 m!6057210))

(declare-fun m!6057212 () Bool)

(assert (=> b!5022153 m!6057212))

(declare-fun m!6057214 () Bool)

(assert (=> d!1616504 m!6057214))

(declare-fun m!6057216 () Bool)

(assert (=> d!1616504 m!6057216))

(assert (=> b!5021875 d!1616504))

(declare-fun b!5022160 () Bool)

(declare-fun e!3137319 () Bool)

(declare-fun lt!2078526 () List!58168)

(declare-fun e!3137322 () Int)

(assert (=> b!5022160 (= e!3137319 (= (size!38630 lt!2078526) e!3137322))))

(declare-fun c!858603 () Bool)

(assert (=> b!5022160 (= c!858603 (<= (+ 1 (- knownSize!24 1)) 0))))

(declare-fun b!5022161 () Bool)

(declare-fun e!3137321 () Int)

(assert (=> b!5022161 (= e!3137321 (size!38630 lt!2078426))))

(declare-fun b!5022162 () Bool)

(assert (=> b!5022162 (= e!3137322 e!3137321)))

(declare-fun c!858604 () Bool)

(assert (=> b!5022162 (= c!858604 (>= (+ 1 (- knownSize!24 1)) (size!38630 lt!2078426)))))

(declare-fun b!5022163 () Bool)

(assert (=> b!5022163 (= e!3137321 (+ 1 (- knownSize!24 1)))))

(declare-fun b!5022164 () Bool)

(declare-fun e!3137320 () List!58168)

(assert (=> b!5022164 (= e!3137320 (Cons!58044 (h!64492 lt!2078426) (take!726 (t!370552 lt!2078426) (- (+ 1 (- knownSize!24 1)) 1))))))

(declare-fun d!1616506 () Bool)

(assert (=> d!1616506 e!3137319))

(declare-fun res!2141215 () Bool)

(assert (=> d!1616506 (=> (not res!2141215) (not e!3137319))))

(assert (=> d!1616506 (= res!2141215 (= ((_ map implies) (content!10289 lt!2078526) (content!10289 lt!2078426)) ((as const (InoxSet C!27984)) true)))))

(assert (=> d!1616506 (= lt!2078526 e!3137320)))

(declare-fun c!858605 () Bool)

(assert (=> d!1616506 (= c!858605 (or ((_ is Nil!58044) lt!2078426) (<= (+ 1 (- knownSize!24 1)) 0)))))

(assert (=> d!1616506 (= (take!726 lt!2078426 (+ 1 (- knownSize!24 1))) lt!2078526)))

(declare-fun b!5022165 () Bool)

(assert (=> b!5022165 (= e!3137320 Nil!58044)))

(declare-fun b!5022166 () Bool)

(assert (=> b!5022166 (= e!3137322 0)))

(assert (= (and d!1616506 c!858605) b!5022165))

(assert (= (and d!1616506 (not c!858605)) b!5022164))

(assert (= (and d!1616506 res!2141215) b!5022160))

(assert (= (and b!5022160 c!858603) b!5022166))

(assert (= (and b!5022160 (not c!858603)) b!5022162))

(assert (= (and b!5022162 c!858604) b!5022161))

(assert (= (and b!5022162 (not c!858604)) b!5022163))

(assert (=> b!5022162 m!6057148))

(assert (=> b!5022161 m!6057148))

(declare-fun m!6057218 () Bool)

(assert (=> b!5022164 m!6057218))

(declare-fun m!6057220 () Bool)

(assert (=> b!5022160 m!6057220))

(declare-fun m!6057222 () Bool)

(assert (=> d!1616506 m!6057222))

(assert (=> d!1616506 m!6057156))

(assert (=> b!5021875 d!1616506))

(declare-fun d!1616508 () Bool)

(assert (=> d!1616508 (= (Cons!58044 (apply!14078 lt!2078425 from!1212) (take!726 (drop!2530 lt!2078425 (+ from!1212 1)) (- knownSize!24 1))) (take!726 (drop!2530 lt!2078425 from!1212) (+ (- knownSize!24 1) 1)))))

(declare-fun lt!2078532 () Unit!149255)

(declare-fun choose!37150 (List!58168 Int Int) Unit!149255)

(assert (=> d!1616508 (= lt!2078532 (choose!37150 lt!2078425 from!1212 (- knownSize!24 1)))))

(declare-fun e!3137328 () Bool)

(assert (=> d!1616508 e!3137328))

(declare-fun res!2141221 () Bool)

(assert (=> d!1616508 (=> (not res!2141221) (not e!3137328))))

(assert (=> d!1616508 (= res!2141221 (>= from!1212 0))))

(assert (=> d!1616508 (= (lemmaDropTakeAddOneLeft!72 lt!2078425 from!1212 (- knownSize!24 1)) lt!2078532)))

(declare-fun b!5022172 () Bool)

(assert (=> b!5022172 (= e!3137328 (< from!1212 (size!38630 lt!2078425)))))

(assert (= (and d!1616508 res!2141221) b!5022172))

(declare-fun m!6057228 () Bool)

(assert (=> d!1616508 m!6057228))

(assert (=> d!1616508 m!6056966))

(declare-fun m!6057230 () Bool)

(assert (=> d!1616508 m!6057230))

(declare-fun m!6057232 () Bool)

(assert (=> d!1616508 m!6057232))

(declare-fun m!6057234 () Bool)

(assert (=> d!1616508 m!6057234))

(assert (=> d!1616508 m!6056966))

(assert (=> d!1616508 m!6057232))

(assert (=> d!1616508 m!6056942))

(assert (=> b!5022172 m!6057176))

(assert (=> b!5021875 d!1616508))

(declare-fun b!5022173 () Bool)

(declare-fun e!3137329 () Bool)

(declare-fun lt!2078533 () List!58168)

(declare-fun e!3137332 () Int)

(assert (=> b!5022173 (= e!3137329 (= (size!38630 lt!2078533) e!3137332))))

(declare-fun c!858606 () Bool)

(assert (=> b!5022173 (= c!858606 (<= (- knownSize!24 1) 0))))

(declare-fun b!5022174 () Bool)

(declare-fun e!3137331 () Int)

(assert (=> b!5022174 (= e!3137331 (size!38630 lt!2078429))))

(declare-fun b!5022175 () Bool)

(assert (=> b!5022175 (= e!3137332 e!3137331)))

(declare-fun c!858607 () Bool)

(assert (=> b!5022175 (= c!858607 (>= (- knownSize!24 1) (size!38630 lt!2078429)))))

(declare-fun b!5022176 () Bool)

(assert (=> b!5022176 (= e!3137331 (- knownSize!24 1))))

(declare-fun b!5022177 () Bool)

(declare-fun e!3137330 () List!58168)

(assert (=> b!5022177 (= e!3137330 (Cons!58044 (h!64492 lt!2078429) (take!726 (t!370552 lt!2078429) (- (- knownSize!24 1) 1))))))

(declare-fun d!1616512 () Bool)

(assert (=> d!1616512 e!3137329))

(declare-fun res!2141222 () Bool)

(assert (=> d!1616512 (=> (not res!2141222) (not e!3137329))))

(assert (=> d!1616512 (= res!2141222 (= ((_ map implies) (content!10289 lt!2078533) (content!10289 lt!2078429)) ((as const (InoxSet C!27984)) true)))))

(assert (=> d!1616512 (= lt!2078533 e!3137330)))

(declare-fun c!858608 () Bool)

(assert (=> d!1616512 (= c!858608 (or ((_ is Nil!58044) lt!2078429) (<= (- knownSize!24 1) 0)))))

(assert (=> d!1616512 (= (take!726 lt!2078429 (- knownSize!24 1)) lt!2078533)))

(declare-fun b!5022178 () Bool)

(assert (=> b!5022178 (= e!3137330 Nil!58044)))

(declare-fun b!5022179 () Bool)

(assert (=> b!5022179 (= e!3137332 0)))

(assert (= (and d!1616512 c!858608) b!5022178))

(assert (= (and d!1616512 (not c!858608)) b!5022177))

(assert (= (and d!1616512 res!2141222) b!5022173))

(assert (= (and b!5022173 c!858606) b!5022179))

(assert (= (and b!5022173 (not c!858606)) b!5022175))

(assert (= (and b!5022175 c!858607) b!5022174))

(assert (= (and b!5022175 (not c!858607)) b!5022176))

(assert (=> b!5022175 m!6057208))

(assert (=> b!5022174 m!6057208))

(declare-fun m!6057236 () Bool)

(assert (=> b!5022177 m!6057236))

(declare-fun m!6057238 () Bool)

(assert (=> b!5022173 m!6057238))

(declare-fun m!6057240 () Bool)

(assert (=> d!1616512 m!6057240))

(assert (=> d!1616512 m!6057216))

(assert (=> b!5021875 d!1616512))

(declare-fun d!1616514 () Bool)

(assert (=> d!1616514 (= (Cons!58044 (apply!14078 lt!2078425 from!1212) (take!726 (drop!2530 lt!2078425 (+ from!1212 1)) lt!2078424)) (take!726 (drop!2530 lt!2078425 from!1212) (+ lt!2078424 1)))))

(declare-fun lt!2078534 () Unit!149255)

(assert (=> d!1616514 (= lt!2078534 (choose!37150 lt!2078425 from!1212 lt!2078424))))

(declare-fun e!3137333 () Bool)

(assert (=> d!1616514 e!3137333))

(declare-fun res!2141223 () Bool)

(assert (=> d!1616514 (=> (not res!2141223) (not e!3137333))))

(assert (=> d!1616514 (= res!2141223 (>= from!1212 0))))

(assert (=> d!1616514 (= (lemmaDropTakeAddOneLeft!72 lt!2078425 from!1212 lt!2078424) lt!2078534)))

(declare-fun b!5022180 () Bool)

(assert (=> b!5022180 (= e!3137333 (< from!1212 (size!38630 lt!2078425)))))

(assert (= (and d!1616514 res!2141223) b!5022180))

(declare-fun m!6057242 () Bool)

(assert (=> d!1616514 m!6057242))

(assert (=> d!1616514 m!6056966))

(declare-fun m!6057244 () Bool)

(assert (=> d!1616514 m!6057244))

(assert (=> d!1616514 m!6057232))

(declare-fun m!6057246 () Bool)

(assert (=> d!1616514 m!6057246))

(assert (=> d!1616514 m!6056966))

(assert (=> d!1616514 m!6057232))

(assert (=> d!1616514 m!6056942))

(assert (=> b!5022180 m!6057176))

(assert (=> b!5021875 d!1616514))

(declare-fun b!5022181 () Bool)

(declare-fun e!3137338 () Int)

(assert (=> b!5022181 (= e!3137338 0)))

(declare-fun b!5022182 () Bool)

(declare-fun e!3137334 () Int)

(assert (=> b!5022182 (= e!3137334 1)))

(declare-fun b!5022183 () Bool)

(assert (=> b!5022183 (= e!3137334 0)))

(declare-fun b!5022184 () Bool)

(declare-fun e!3137335 () Bool)

(assert (=> b!5022184 (= e!3137335 (lostCauseZipper!881 lt!2078430))))

(declare-fun b!5022185 () Bool)

(declare-fun e!3137336 () Int)

(declare-fun lt!2078535 () Int)

(assert (=> b!5022185 (= e!3137336 (+ 1 lt!2078535))))

(declare-fun d!1616516 () Bool)

(declare-fun lt!2078537 () Int)

(assert (=> d!1616516 (and (>= lt!2078537 0) (<= lt!2078537 (- lt!2078423 (+ 1 from!1212))))))

(assert (=> d!1616516 (= lt!2078537 e!3137338)))

(declare-fun c!858609 () Bool)

(assert (=> d!1616516 (= c!858609 e!3137335)))

(declare-fun res!2141224 () Bool)

(assert (=> d!1616516 (=> res!2141224 e!3137335)))

(assert (=> d!1616516 (= res!2141224 (= (+ 1 from!1212) lt!2078423))))

(declare-fun e!3137337 () Bool)

(assert (=> d!1616516 e!3137337))

(declare-fun res!2141225 () Bool)

(assert (=> d!1616516 (=> (not res!2141225) (not e!3137337))))

(assert (=> d!1616516 (= res!2141225 (>= (+ 1 from!1212) 0))))

(assert (=> d!1616516 (= (findLongestMatchInnerZipperFastV2!189 lt!2078430 (+ 1 from!1212) totalInput!1125 lt!2078423) lt!2078537)))

(declare-fun b!5022186 () Bool)

(declare-fun c!858611 () Bool)

(declare-fun lt!2078536 () (InoxSet Context!6584))

(assert (=> b!5022186 (= c!858611 (nullableZipper!910 lt!2078536))))

(assert (=> b!5022186 (= e!3137336 e!3137334)))

(declare-fun b!5022187 () Bool)

(assert (=> b!5022187 (= e!3137338 e!3137336)))

(assert (=> b!5022187 (= lt!2078536 (derivationStepZipper!673 lt!2078430 (apply!14079 totalInput!1125 (+ 1 from!1212))))))

(assert (=> b!5022187 (= lt!2078535 (findLongestMatchInnerZipperFastV2!189 lt!2078536 (+ 1 from!1212 1) totalInput!1125 lt!2078423))))

(declare-fun c!858610 () Bool)

(assert (=> b!5022187 (= c!858610 (> lt!2078535 0))))

(declare-fun b!5022188 () Bool)

(assert (=> b!5022188 (= e!3137337 (<= (+ 1 from!1212) (size!38629 totalInput!1125)))))

(assert (= (and d!1616516 res!2141225) b!5022188))

(assert (= (and d!1616516 (not res!2141224)) b!5022184))

(assert (= (and d!1616516 c!858609) b!5022181))

(assert (= (and d!1616516 (not c!858609)) b!5022187))

(assert (= (and b!5022187 c!858610) b!5022185))

(assert (= (and b!5022187 (not c!858610)) b!5022186))

(assert (= (and b!5022186 c!858611) b!5022182))

(assert (= (and b!5022186 (not c!858611)) b!5022183))

(declare-fun m!6057248 () Bool)

(assert (=> b!5022184 m!6057248))

(declare-fun m!6057250 () Bool)

(assert (=> b!5022186 m!6057250))

(declare-fun m!6057252 () Bool)

(assert (=> b!5022187 m!6057252))

(assert (=> b!5022187 m!6057252))

(declare-fun m!6057254 () Bool)

(assert (=> b!5022187 m!6057254))

(declare-fun m!6057256 () Bool)

(assert (=> b!5022187 m!6057256))

(assert (=> b!5022188 m!6056972))

(assert (=> b!5021875 d!1616516))

(declare-fun b!5022189 () Bool)

(declare-fun e!3137339 () Bool)

(declare-fun lt!2078538 () List!58168)

(declare-fun e!3137342 () Int)

(assert (=> b!5022189 (= e!3137339 (= (size!38630 lt!2078538) e!3137342))))

(declare-fun c!858612 () Bool)

(assert (=> b!5022189 (= c!858612 (<= (+ 1 lt!2078424) 0))))

(declare-fun b!5022190 () Bool)

(declare-fun e!3137341 () Int)

(assert (=> b!5022190 (= e!3137341 (size!38630 lt!2078426))))

(declare-fun b!5022191 () Bool)

(assert (=> b!5022191 (= e!3137342 e!3137341)))

(declare-fun c!858613 () Bool)

(assert (=> b!5022191 (= c!858613 (>= (+ 1 lt!2078424) (size!38630 lt!2078426)))))

(declare-fun b!5022192 () Bool)

(assert (=> b!5022192 (= e!3137341 (+ 1 lt!2078424))))

(declare-fun b!5022193 () Bool)

(declare-fun e!3137340 () List!58168)

(assert (=> b!5022193 (= e!3137340 (Cons!58044 (h!64492 lt!2078426) (take!726 (t!370552 lt!2078426) (- (+ 1 lt!2078424) 1))))))

(declare-fun d!1616518 () Bool)

(assert (=> d!1616518 e!3137339))

(declare-fun res!2141226 () Bool)

(assert (=> d!1616518 (=> (not res!2141226) (not e!3137339))))

(assert (=> d!1616518 (= res!2141226 (= ((_ map implies) (content!10289 lt!2078538) (content!10289 lt!2078426)) ((as const (InoxSet C!27984)) true)))))

(assert (=> d!1616518 (= lt!2078538 e!3137340)))

(declare-fun c!858614 () Bool)

(assert (=> d!1616518 (= c!858614 (or ((_ is Nil!58044) lt!2078426) (<= (+ 1 lt!2078424) 0)))))

(assert (=> d!1616518 (= (take!726 lt!2078426 (+ 1 lt!2078424)) lt!2078538)))

(declare-fun b!5022194 () Bool)

(assert (=> b!5022194 (= e!3137340 Nil!58044)))

(declare-fun b!5022195 () Bool)

(assert (=> b!5022195 (= e!3137342 0)))

(assert (= (and d!1616518 c!858614) b!5022194))

(assert (= (and d!1616518 (not c!858614)) b!5022193))

(assert (= (and d!1616518 res!2141226) b!5022189))

(assert (= (and b!5022189 c!858612) b!5022195))

(assert (= (and b!5022189 (not c!858612)) b!5022191))

(assert (= (and b!5022191 c!858613) b!5022190))

(assert (= (and b!5022191 (not c!858613)) b!5022192))

(assert (=> b!5022191 m!6057148))

(assert (=> b!5022190 m!6057148))

(declare-fun m!6057258 () Bool)

(assert (=> b!5022193 m!6057258))

(declare-fun m!6057260 () Bool)

(assert (=> b!5022189 m!6057260))

(declare-fun m!6057262 () Bool)

(assert (=> d!1616518 m!6057262))

(assert (=> d!1616518 m!6057156))

(assert (=> b!5021875 d!1616518))

(declare-fun d!1616520 () Bool)

(assert (=> d!1616520 true))

(declare-fun lambda!248978 () Int)

(declare-fun flatMap!296 ((InoxSet Context!6584) Int) (InoxSet Context!6584))

(assert (=> d!1616520 (= (derivationStepZipper!673 z!4710 (apply!14079 totalInput!1125 from!1212)) (flatMap!296 z!4710 lambda!248978))))

(declare-fun bs!1187426 () Bool)

(assert (= bs!1187426 d!1616520))

(declare-fun m!6057264 () Bool)

(assert (=> bs!1187426 m!6057264))

(assert (=> b!5021875 d!1616520))

(declare-fun d!1616522 () Bool)

(declare-fun c!858629 () Bool)

(assert (=> d!1616522 (= c!858629 ((_ is Node!15386) (c!858479 totalInput!1125)))))

(declare-fun e!3137353 () Bool)

(assert (=> d!1616522 (= (inv!76428 (c!858479 totalInput!1125)) e!3137353)))

(declare-fun b!5022208 () Bool)

(declare-fun inv!76433 (Conc!15386) Bool)

(assert (=> b!5022208 (= e!3137353 (inv!76433 (c!858479 totalInput!1125)))))

(declare-fun b!5022209 () Bool)

(declare-fun e!3137354 () Bool)

(assert (=> b!5022209 (= e!3137353 e!3137354)))

(declare-fun res!2141229 () Bool)

(assert (=> b!5022209 (= res!2141229 (not ((_ is Leaf!25528) (c!858479 totalInput!1125))))))

(assert (=> b!5022209 (=> res!2141229 e!3137354)))

(declare-fun b!5022210 () Bool)

(declare-fun inv!76434 (Conc!15386) Bool)

(assert (=> b!5022210 (= e!3137354 (inv!76434 (c!858479 totalInput!1125)))))

(assert (= (and d!1616522 c!858629) b!5022208))

(assert (= (and d!1616522 (not c!858629)) b!5022209))

(assert (= (and b!5022209 (not res!2141229)) b!5022210))

(declare-fun m!6057266 () Bool)

(assert (=> b!5022208 m!6057266))

(declare-fun m!6057268 () Bool)

(assert (=> b!5022210 m!6057268))

(assert (=> b!5021871 d!1616522))

(declare-fun d!1616524 () Bool)

(declare-fun lambda!248992 () Int)

(declare-fun forall!13410 (List!58169 Int) Bool)

(assert (=> d!1616524 (= (inv!76429 setElem!28716) (forall!13410 (exprs!3792 setElem!28716) lambda!248992))))

(declare-fun bs!1187430 () Bool)

(assert (= bs!1187430 d!1616524))

(declare-fun m!6057284 () Bool)

(assert (=> bs!1187430 m!6057284))

(assert (=> setNonEmpty!28716 d!1616524))

(declare-fun b!5022230 () Bool)

(declare-fun e!3137365 () Bool)

(declare-fun tp!1408015 () Bool)

(declare-fun tp!1408016 () Bool)

(assert (=> b!5022230 (= e!3137365 (and tp!1408015 tp!1408016))))

(assert (=> b!5021877 (= tp!1407997 e!3137365)))

(assert (= (and b!5021877 ((_ is Cons!58045) (exprs!3792 setElem!28716))) b!5022230))

(declare-fun b!5022246 () Bool)

(declare-fun tp!1408031 () Bool)

(declare-fun e!3137374 () Bool)

(declare-fun tp!1408030 () Bool)

(assert (=> b!5022246 (= e!3137374 (and (inv!76428 (left!42445 (c!858479 totalInput!1125))) tp!1408031 (inv!76428 (right!42775 (c!858479 totalInput!1125))) tp!1408030))))

(declare-fun b!5022248 () Bool)

(declare-fun e!3137375 () Bool)

(declare-fun tp!1408032 () Bool)

(assert (=> b!5022248 (= e!3137375 tp!1408032)))

(declare-fun b!5022247 () Bool)

(declare-fun inv!76435 (IArray!30833) Bool)

(assert (=> b!5022247 (= e!3137374 (and (inv!76435 (xs!18712 (c!858479 totalInput!1125))) e!3137375))))

(assert (=> b!5021871 (= tp!1407998 (and (inv!76428 (c!858479 totalInput!1125)) e!3137374))))

(assert (= (and b!5021871 ((_ is Node!15386) (c!858479 totalInput!1125))) b!5022246))

(assert (= b!5022247 b!5022248))

(assert (= (and b!5021871 ((_ is Leaf!25528) (c!858479 totalInput!1125))) b!5022247))

(declare-fun m!6057292 () Bool)

(assert (=> b!5022246 m!6057292))

(declare-fun m!6057294 () Bool)

(assert (=> b!5022246 m!6057294))

(declare-fun m!6057296 () Bool)

(assert (=> b!5022247 m!6057296))

(assert (=> b!5021871 m!6056970))

(declare-fun condSetEmpty!28722 () Bool)

(assert (=> setNonEmpty!28716 (= condSetEmpty!28722 (= setRest!28716 ((as const (Array Context!6584 Bool)) false)))))

(declare-fun setRes!28722 () Bool)

(assert (=> setNonEmpty!28716 (= tp!1407996 setRes!28722)))

(declare-fun setIsEmpty!28722 () Bool)

(assert (=> setIsEmpty!28722 setRes!28722))

(declare-fun setNonEmpty!28722 () Bool)

(declare-fun e!3137379 () Bool)

(declare-fun tp!1408039 () Bool)

(declare-fun setElem!28722 () Context!6584)

(assert (=> setNonEmpty!28722 (= setRes!28722 (and tp!1408039 (inv!76429 setElem!28722) e!3137379))))

(declare-fun setRest!28722 () (InoxSet Context!6584))

(assert (=> setNonEmpty!28722 (= setRest!28716 ((_ map or) (store ((as const (Array Context!6584 Bool)) false) setElem!28722 true) setRest!28722))))

(declare-fun b!5022254 () Bool)

(declare-fun tp!1408040 () Bool)

(assert (=> b!5022254 (= e!3137379 tp!1408040)))

(assert (= (and setNonEmpty!28716 condSetEmpty!28722) setIsEmpty!28722))

(assert (= (and setNonEmpty!28716 (not condSetEmpty!28722)) setNonEmpty!28722))

(assert (= setNonEmpty!28722 b!5022254))

(declare-fun m!6057300 () Bool)

(assert (=> setNonEmpty!28722 m!6057300))

(check-sat (not b!5022193) (not b!5021905) (not b!5022155) (not bm!350635) (not d!1616518) (not d!1616452) (not bm!350636) (not b!5022071) (not b!5022247) (not b!5022042) (not d!1616508) (not d!1616434) (not bm!350639) (not b!5022180) (not b!5022186) (not d!1616506) (not b!5022248) (not b!5022112) (not b!5022191) (not d!1616524) (not b!5022039) (not d!1616490) (not b!5022230) (not d!1616512) (not b!5022184) (not b!5022040) (not b!5021925) (not b!5022190) (not d!1616514) (not b!5022174) (not b!5022164) (not d!1616502) (not d!1616504) (not b!5021899) (not b!5021929) (not b!5022157) (not d!1616450) (not b!5022254) (not d!1616484) (not b!5022188) (not d!1616520) (not b!5022189) (not d!1616432) (not d!1616496) (not b!5022069) (not b!5022153) (not b!5022041) (not b!5022154) (not bm!350640) (not b!5022173) (not b!5022208) (not b!5022126) (not b!5022108) (not b!5022160) (not b!5021898) (not b!5022161) (not b!5022177) (not d!1616482) (not b!5022122) (not d!1616494) (not b!5022187) (not b!5022152) (not b!5022210) (not b!5022162) (not b!5022143) (not b!5021928) (not b!5021871) (not b!5022150) (not setNonEmpty!28722) (not d!1616486) (not b!5022172) (not b!5021932) (not d!1616438) (not b!5022070) (not b!5022246) (not b!5022151) (not b!5022175) (not b!5021927) (not b!5022073))
(check-sat)
(get-model)

(declare-fun d!1616526 () Bool)

(declare-fun res!2141236 () Bool)

(declare-fun e!3137382 () Bool)

(assert (=> d!1616526 (=> (not res!2141236) (not e!3137382))))

(assert (=> d!1616526 (= res!2141236 (= (csize!31002 (c!858479 totalInput!1125)) (+ (size!38631 (left!42445 (c!858479 totalInput!1125))) (size!38631 (right!42775 (c!858479 totalInput!1125))))))))

(assert (=> d!1616526 (= (inv!76433 (c!858479 totalInput!1125)) e!3137382)))

(declare-fun b!5022261 () Bool)

(declare-fun res!2141237 () Bool)

(assert (=> b!5022261 (=> (not res!2141237) (not e!3137382))))

(assert (=> b!5022261 (= res!2141237 (and (not (= (left!42445 (c!858479 totalInput!1125)) Empty!15386)) (not (= (right!42775 (c!858479 totalInput!1125)) Empty!15386))))))

(declare-fun b!5022262 () Bool)

(declare-fun res!2141238 () Bool)

(assert (=> b!5022262 (=> (not res!2141238) (not e!3137382))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!2041 (Conc!15386) Int)

(assert (=> b!5022262 (= res!2141238 (= (cheight!15597 (c!858479 totalInput!1125)) (+ (max!0 (height!2041 (left!42445 (c!858479 totalInput!1125))) (height!2041 (right!42775 (c!858479 totalInput!1125)))) 1)))))

(declare-fun b!5022263 () Bool)

(assert (=> b!5022263 (= e!3137382 (<= 0 (cheight!15597 (c!858479 totalInput!1125))))))

(assert (= (and d!1616526 res!2141236) b!5022261))

(assert (= (and b!5022261 res!2141237) b!5022262))

(assert (= (and b!5022262 res!2141238) b!5022263))

(declare-fun m!6057302 () Bool)

(assert (=> d!1616526 m!6057302))

(declare-fun m!6057304 () Bool)

(assert (=> d!1616526 m!6057304))

(declare-fun m!6057306 () Bool)

(assert (=> b!5022262 m!6057306))

(declare-fun m!6057308 () Bool)

(assert (=> b!5022262 m!6057308))

(assert (=> b!5022262 m!6057306))

(assert (=> b!5022262 m!6057308))

(declare-fun m!6057310 () Bool)

(assert (=> b!5022262 m!6057310))

(assert (=> b!5022208 d!1616526))

(declare-fun d!1616528 () Bool)

(declare-fun lt!2078563 () Int)

(assert (=> d!1616528 (>= lt!2078563 0)))

(declare-fun e!3137383 () Int)

(assert (=> d!1616528 (= lt!2078563 e!3137383)))

(declare-fun c!858631 () Bool)

(assert (=> d!1616528 (= c!858631 ((_ is Nil!58044) lt!2078538))))

(assert (=> d!1616528 (= (size!38630 lt!2078538) lt!2078563)))

(declare-fun b!5022264 () Bool)

(assert (=> b!5022264 (= e!3137383 0)))

(declare-fun b!5022265 () Bool)

(assert (=> b!5022265 (= e!3137383 (+ 1 (size!38630 (t!370552 lt!2078538))))))

(assert (= (and d!1616528 c!858631) b!5022264))

(assert (= (and d!1616528 (not c!858631)) b!5022265))

(declare-fun m!6057312 () Bool)

(assert (=> b!5022265 m!6057312))

(assert (=> b!5022189 d!1616528))

(declare-fun d!1616530 () Bool)

(declare-fun lt!2078564 () Int)

(assert (=> d!1616530 (>= lt!2078564 0)))

(declare-fun e!3137384 () Int)

(assert (=> d!1616530 (= lt!2078564 e!3137384)))

(declare-fun c!858632 () Bool)

(assert (=> d!1616530 (= c!858632 ((_ is Nil!58044) lt!2078426))))

(assert (=> d!1616530 (= (size!38630 lt!2078426) lt!2078564)))

(declare-fun b!5022266 () Bool)

(assert (=> b!5022266 (= e!3137384 0)))

(declare-fun b!5022267 () Bool)

(assert (=> b!5022267 (= e!3137384 (+ 1 (size!38630 (t!370552 lt!2078426))))))

(assert (= (and d!1616530 c!858632) b!5022266))

(assert (= (and d!1616530 (not c!858632)) b!5022267))

(declare-fun m!6057314 () Bool)

(assert (=> b!5022267 m!6057314))

(assert (=> b!5022070 d!1616530))

(declare-fun d!1616532 () Bool)

(declare-fun e!3137387 () Bool)

(assert (=> d!1616532 e!3137387))

(declare-fun res!2141241 () Bool)

(assert (=> d!1616532 (=> (not res!2141241) (not e!3137387))))

(declare-fun lt!2078567 () List!58170)

(declare-fun noDuplicate!1044 (List!58170) Bool)

(assert (=> d!1616532 (= res!2141241 (noDuplicate!1044 lt!2078567))))

(declare-fun choose!37152 ((InoxSet Context!6584)) List!58170)

(assert (=> d!1616532 (= lt!2078567 (choose!37152 z!4710))))

(assert (=> d!1616532 (= (toList!8115 z!4710) lt!2078567)))

(declare-fun b!5022270 () Bool)

(declare-fun content!10290 (List!58170) (InoxSet Context!6584))

(assert (=> b!5022270 (= e!3137387 (= (content!10290 lt!2078567) z!4710))))

(assert (= (and d!1616532 res!2141241) b!5022270))

(declare-fun m!6057316 () Bool)

(assert (=> d!1616532 m!6057316))

(declare-fun m!6057318 () Bool)

(assert (=> d!1616532 m!6057318))

(declare-fun m!6057320 () Bool)

(assert (=> b!5022270 m!6057320))

(assert (=> bm!350635 d!1616532))

(declare-fun d!1616534 () Bool)

(declare-fun lt!2078568 () Int)

(assert (=> d!1616534 (>= lt!2078568 0)))

(declare-fun e!3137388 () Int)

(assert (=> d!1616534 (= lt!2078568 e!3137388)))

(declare-fun c!858633 () Bool)

(assert (=> d!1616534 (= c!858633 ((_ is Nil!58044) lt!2078525))))

(assert (=> d!1616534 (= (size!38630 lt!2078525) lt!2078568)))

(declare-fun b!5022271 () Bool)

(assert (=> b!5022271 (= e!3137388 0)))

(declare-fun b!5022272 () Bool)

(assert (=> b!5022272 (= e!3137388 (+ 1 (size!38630 (t!370552 lt!2078525))))))

(assert (= (and d!1616534 c!858633) b!5022271))

(assert (= (and d!1616534 (not c!858633)) b!5022272))

(declare-fun m!6057322 () Bool)

(assert (=> b!5022272 m!6057322))

(assert (=> b!5022153 d!1616534))

(declare-fun d!1616536 () Bool)

(assert (=> d!1616536 (= (isEmpty!31432 lt!2078421) ((_ is Nil!58044) lt!2078421))))

(assert (=> d!1616438 d!1616536))

(declare-fun b!5022273 () Bool)

(declare-fun e!3137389 () Bool)

(declare-fun lt!2078569 () List!58168)

(declare-fun e!3137392 () Int)

(assert (=> b!5022273 (= e!3137389 (= (size!38630 lt!2078569) e!3137392))))

(declare-fun c!858634 () Bool)

(assert (=> b!5022273 (= c!858634 (<= (- (- knownSize!24 1) 1) 0))))

(declare-fun b!5022274 () Bool)

(declare-fun e!3137391 () Int)

(assert (=> b!5022274 (= e!3137391 (size!38630 (t!370552 lt!2078429)))))

(declare-fun b!5022275 () Bool)

(assert (=> b!5022275 (= e!3137392 e!3137391)))

(declare-fun c!858635 () Bool)

(assert (=> b!5022275 (= c!858635 (>= (- (- knownSize!24 1) 1) (size!38630 (t!370552 lt!2078429))))))

(declare-fun b!5022276 () Bool)

(assert (=> b!5022276 (= e!3137391 (- (- knownSize!24 1) 1))))

(declare-fun b!5022277 () Bool)

(declare-fun e!3137390 () List!58168)

(assert (=> b!5022277 (= e!3137390 (Cons!58044 (h!64492 (t!370552 lt!2078429)) (take!726 (t!370552 (t!370552 lt!2078429)) (- (- (- knownSize!24 1) 1) 1))))))

(declare-fun d!1616538 () Bool)

(assert (=> d!1616538 e!3137389))

(declare-fun res!2141242 () Bool)

(assert (=> d!1616538 (=> (not res!2141242) (not e!3137389))))

(assert (=> d!1616538 (= res!2141242 (= ((_ map implies) (content!10289 lt!2078569) (content!10289 (t!370552 lt!2078429))) ((as const (InoxSet C!27984)) true)))))

(assert (=> d!1616538 (= lt!2078569 e!3137390)))

(declare-fun c!858636 () Bool)

(assert (=> d!1616538 (= c!858636 (or ((_ is Nil!58044) (t!370552 lt!2078429)) (<= (- (- knownSize!24 1) 1) 0)))))

(assert (=> d!1616538 (= (take!726 (t!370552 lt!2078429) (- (- knownSize!24 1) 1)) lt!2078569)))

(declare-fun b!5022278 () Bool)

(assert (=> b!5022278 (= e!3137390 Nil!58044)))

(declare-fun b!5022279 () Bool)

(assert (=> b!5022279 (= e!3137392 0)))

(assert (= (and d!1616538 c!858636) b!5022278))

(assert (= (and d!1616538 (not c!858636)) b!5022277))

(assert (= (and d!1616538 res!2141242) b!5022273))

(assert (= (and b!5022273 c!858634) b!5022279))

(assert (= (and b!5022273 (not c!858634)) b!5022275))

(assert (= (and b!5022275 c!858635) b!5022274))

(assert (= (and b!5022275 (not c!858635)) b!5022276))

(declare-fun m!6057324 () Bool)

(assert (=> b!5022275 m!6057324))

(assert (=> b!5022274 m!6057324))

(declare-fun m!6057326 () Bool)

(assert (=> b!5022277 m!6057326))

(declare-fun m!6057328 () Bool)

(assert (=> b!5022273 m!6057328))

(declare-fun m!6057330 () Bool)

(assert (=> d!1616538 m!6057330))

(declare-fun m!6057332 () Bool)

(assert (=> d!1616538 m!6057332))

(assert (=> b!5022177 d!1616538))

(declare-fun d!1616540 () Bool)

(assert (=> d!1616540 (= (head!10764 lt!2078425) (h!64492 lt!2078425))))

(assert (=> b!5022151 d!1616540))

(declare-fun d!1616542 () Bool)

(declare-fun c!858637 () Bool)

(assert (=> d!1616542 (= c!858637 (isEmpty!31432 (tail!9897 lt!2078421)))))

(declare-fun e!3137393 () Bool)

(assert (=> d!1616542 (= (matchZipper!635 (derivationStepZipper!673 lt!2078430 (head!10764 lt!2078421)) (tail!9897 lt!2078421)) e!3137393)))

(declare-fun b!5022280 () Bool)

(assert (=> b!5022280 (= e!3137393 (nullableZipper!910 (derivationStepZipper!673 lt!2078430 (head!10764 lt!2078421))))))

(declare-fun b!5022281 () Bool)

(assert (=> b!5022281 (= e!3137393 (matchZipper!635 (derivationStepZipper!673 (derivationStepZipper!673 lt!2078430 (head!10764 lt!2078421)) (head!10764 (tail!9897 lt!2078421))) (tail!9897 (tail!9897 lt!2078421))))))

(assert (= (and d!1616542 c!858637) b!5022280))

(assert (= (and d!1616542 (not c!858637)) b!5022281))

(assert (=> d!1616542 m!6057008))

(declare-fun m!6057334 () Bool)

(assert (=> d!1616542 m!6057334))

(assert (=> b!5022280 m!6057006))

(declare-fun m!6057336 () Bool)

(assert (=> b!5022280 m!6057336))

(assert (=> b!5022281 m!6057008))

(declare-fun m!6057338 () Bool)

(assert (=> b!5022281 m!6057338))

(assert (=> b!5022281 m!6057006))

(assert (=> b!5022281 m!6057338))

(declare-fun m!6057340 () Bool)

(assert (=> b!5022281 m!6057340))

(assert (=> b!5022281 m!6057008))

(declare-fun m!6057342 () Bool)

(assert (=> b!5022281 m!6057342))

(assert (=> b!5022281 m!6057340))

(assert (=> b!5022281 m!6057342))

(declare-fun m!6057344 () Bool)

(assert (=> b!5022281 m!6057344))

(assert (=> b!5021899 d!1616542))

(declare-fun bs!1187431 () Bool)

(declare-fun d!1616544 () Bool)

(assert (= bs!1187431 (and d!1616544 d!1616520)))

(declare-fun lambda!248993 () Int)

(assert (=> bs!1187431 (= (= (head!10764 lt!2078421) (apply!14079 totalInput!1125 from!1212)) (= lambda!248993 lambda!248978))))

(assert (=> d!1616544 true))

(assert (=> d!1616544 (= (derivationStepZipper!673 lt!2078430 (head!10764 lt!2078421)) (flatMap!296 lt!2078430 lambda!248993))))

(declare-fun bs!1187432 () Bool)

(assert (= bs!1187432 d!1616544))

(declare-fun m!6057346 () Bool)

(assert (=> bs!1187432 m!6057346))

(assert (=> b!5021899 d!1616544))

(declare-fun d!1616546 () Bool)

(assert (=> d!1616546 (= (head!10764 lt!2078421) (h!64492 lt!2078421))))

(assert (=> b!5021899 d!1616546))

(declare-fun d!1616548 () Bool)

(assert (=> d!1616548 (= (tail!9897 lt!2078421) (t!370552 lt!2078421))))

(assert (=> b!5021899 d!1616548))

(declare-fun bs!1187433 () Bool)

(declare-fun d!1616550 () Bool)

(assert (= bs!1187433 (and d!1616550 d!1616520)))

(declare-fun lambda!248994 () Int)

(assert (=> bs!1187433 (= (= (apply!14079 totalInput!1125 (+ 1 from!1212)) (apply!14079 totalInput!1125 from!1212)) (= lambda!248994 lambda!248978))))

(declare-fun bs!1187434 () Bool)

(assert (= bs!1187434 (and d!1616550 d!1616544)))

(assert (=> bs!1187434 (= (= (apply!14079 totalInput!1125 (+ 1 from!1212)) (head!10764 lt!2078421)) (= lambda!248994 lambda!248993))))

(assert (=> d!1616550 true))

(assert (=> d!1616550 (= (derivationStepZipper!673 lt!2078430 (apply!14079 totalInput!1125 (+ 1 from!1212))) (flatMap!296 lt!2078430 lambda!248994))))

(declare-fun bs!1187435 () Bool)

(assert (= bs!1187435 d!1616550))

(declare-fun m!6057348 () Bool)

(assert (=> bs!1187435 m!6057348))

(assert (=> b!5022187 d!1616550))

(declare-fun d!1616552 () Bool)

(declare-fun lt!2078570 () C!27984)

(assert (=> d!1616552 (= lt!2078570 (apply!14078 (list!18728 totalInput!1125) (+ 1 from!1212)))))

(assert (=> d!1616552 (= lt!2078570 (apply!14080 (c!858479 totalInput!1125) (+ 1 from!1212)))))

(declare-fun e!3137394 () Bool)

(assert (=> d!1616552 e!3137394))

(declare-fun res!2141243 () Bool)

(assert (=> d!1616552 (=> (not res!2141243) (not e!3137394))))

(assert (=> d!1616552 (= res!2141243 (<= 0 (+ 1 from!1212)))))

(assert (=> d!1616552 (= (apply!14079 totalInput!1125 (+ 1 from!1212)) lt!2078570)))

(declare-fun b!5022282 () Bool)

(assert (=> b!5022282 (= e!3137394 (< (+ 1 from!1212) (size!38629 totalInput!1125)))))

(assert (= (and d!1616552 res!2141243) b!5022282))

(assert (=> d!1616552 m!6056968))

(assert (=> d!1616552 m!6056968))

(declare-fun m!6057350 () Bool)

(assert (=> d!1616552 m!6057350))

(declare-fun m!6057352 () Bool)

(assert (=> d!1616552 m!6057352))

(assert (=> b!5022282 m!6056972))

(assert (=> b!5022187 d!1616552))

(declare-fun b!5022283 () Bool)

(declare-fun e!3137399 () Int)

(assert (=> b!5022283 (= e!3137399 0)))

(declare-fun b!5022284 () Bool)

(declare-fun e!3137395 () Int)

(assert (=> b!5022284 (= e!3137395 1)))

(declare-fun b!5022285 () Bool)

(assert (=> b!5022285 (= e!3137395 0)))

(declare-fun b!5022286 () Bool)

(declare-fun e!3137396 () Bool)

(assert (=> b!5022286 (= e!3137396 (lostCauseZipper!881 lt!2078536))))

(declare-fun b!5022287 () Bool)

(declare-fun e!3137397 () Int)

(declare-fun lt!2078571 () Int)

(assert (=> b!5022287 (= e!3137397 (+ 1 lt!2078571))))

(declare-fun d!1616554 () Bool)

(declare-fun lt!2078573 () Int)

(assert (=> d!1616554 (and (>= lt!2078573 0) (<= lt!2078573 (- lt!2078423 (+ 1 from!1212 1))))))

(assert (=> d!1616554 (= lt!2078573 e!3137399)))

(declare-fun c!858638 () Bool)

(assert (=> d!1616554 (= c!858638 e!3137396)))

(declare-fun res!2141244 () Bool)

(assert (=> d!1616554 (=> res!2141244 e!3137396)))

(assert (=> d!1616554 (= res!2141244 (= (+ 1 from!1212 1) lt!2078423))))

(declare-fun e!3137398 () Bool)

(assert (=> d!1616554 e!3137398))

(declare-fun res!2141245 () Bool)

(assert (=> d!1616554 (=> (not res!2141245) (not e!3137398))))

(assert (=> d!1616554 (= res!2141245 (>= (+ 1 from!1212 1) 0))))

(assert (=> d!1616554 (= (findLongestMatchInnerZipperFastV2!189 lt!2078536 (+ 1 from!1212 1) totalInput!1125 lt!2078423) lt!2078573)))

(declare-fun b!5022288 () Bool)

(declare-fun c!858640 () Bool)

(declare-fun lt!2078572 () (InoxSet Context!6584))

(assert (=> b!5022288 (= c!858640 (nullableZipper!910 lt!2078572))))

(assert (=> b!5022288 (= e!3137397 e!3137395)))

(declare-fun b!5022289 () Bool)

(assert (=> b!5022289 (= e!3137399 e!3137397)))

(assert (=> b!5022289 (= lt!2078572 (derivationStepZipper!673 lt!2078536 (apply!14079 totalInput!1125 (+ 1 from!1212 1))))))

(assert (=> b!5022289 (= lt!2078571 (findLongestMatchInnerZipperFastV2!189 lt!2078572 (+ 1 from!1212 1 1) totalInput!1125 lt!2078423))))

(declare-fun c!858639 () Bool)

(assert (=> b!5022289 (= c!858639 (> lt!2078571 0))))

(declare-fun b!5022290 () Bool)

(assert (=> b!5022290 (= e!3137398 (<= (+ 1 from!1212 1) (size!38629 totalInput!1125)))))

(assert (= (and d!1616554 res!2141245) b!5022290))

(assert (= (and d!1616554 (not res!2141244)) b!5022286))

(assert (= (and d!1616554 c!858638) b!5022283))

(assert (= (and d!1616554 (not c!858638)) b!5022289))

(assert (= (and b!5022289 c!858639) b!5022287))

(assert (= (and b!5022289 (not c!858639)) b!5022288))

(assert (= (and b!5022288 c!858640) b!5022284))

(assert (= (and b!5022288 (not c!858640)) b!5022285))

(declare-fun m!6057354 () Bool)

(assert (=> b!5022286 m!6057354))

(declare-fun m!6057356 () Bool)

(assert (=> b!5022288 m!6057356))

(declare-fun m!6057358 () Bool)

(assert (=> b!5022289 m!6057358))

(assert (=> b!5022289 m!6057358))

(declare-fun m!6057360 () Bool)

(assert (=> b!5022289 m!6057360))

(declare-fun m!6057362 () Bool)

(assert (=> b!5022289 m!6057362))

(assert (=> b!5022290 m!6056972))

(assert (=> b!5022187 d!1616554))

(declare-fun bs!1187436 () Bool)

(declare-fun d!1616556 () Bool)

(assert (= bs!1187436 (and d!1616556 d!1616452)))

(declare-fun lambda!248997 () Int)

(assert (=> bs!1187436 (not (= lambda!248997 lambda!248969))))

(declare-fun bs!1187437 () Bool)

(assert (= bs!1187437 (and d!1616556 b!5022039)))

(assert (=> bs!1187437 (not (= lambda!248997 lambda!248970))))

(declare-fun bs!1187438 () Bool)

(assert (= bs!1187438 (and d!1616556 b!5022040)))

(assert (=> bs!1187438 (not (= lambda!248997 lambda!248971))))

(assert (=> d!1616556 true))

(declare-fun order!26703 () Int)

(declare-fun dynLambda!23527 (Int Int) Int)

(assert (=> d!1616556 (< (dynLambda!23527 order!26703 lambda!248969) (dynLambda!23527 order!26703 lambda!248997))))

(assert (=> d!1616556 (exists!1382 lt!2078489 lambda!248997)))

(declare-fun lt!2078576 () Unit!149255)

(declare-fun choose!37153 (List!58170 Int) Unit!149255)

(assert (=> d!1616556 (= lt!2078576 (choose!37153 lt!2078489 lambda!248969))))

(declare-fun forall!13412 (List!58170 Int) Bool)

(assert (=> d!1616556 (not (forall!13412 lt!2078489 lambda!248969))))

(assert (=> d!1616556 (= (lemmaNotForallThenExists!264 lt!2078489 lambda!248969) lt!2078576)))

(declare-fun bs!1187439 () Bool)

(assert (= bs!1187439 d!1616556))

(declare-fun m!6057364 () Bool)

(assert (=> bs!1187439 m!6057364))

(declare-fun m!6057366 () Bool)

(assert (=> bs!1187439 m!6057366))

(declare-fun m!6057368 () Bool)

(assert (=> bs!1187439 m!6057368))

(assert (=> b!5022039 d!1616556))

(declare-fun d!1616558 () Bool)

(declare-fun lt!2078577 () Int)

(assert (=> d!1616558 (>= lt!2078577 0)))

(declare-fun e!3137402 () Int)

(assert (=> d!1616558 (= lt!2078577 e!3137402)))

(declare-fun c!858641 () Bool)

(assert (=> d!1616558 (= c!858641 ((_ is Nil!58044) lt!2078429))))

(assert (=> d!1616558 (= (size!38630 lt!2078429) lt!2078577)))

(declare-fun b!5022293 () Bool)

(assert (=> b!5022293 (= e!3137402 0)))

(declare-fun b!5022294 () Bool)

(assert (=> b!5022294 (= e!3137402 (+ 1 (size!38630 (t!370552 lt!2078429))))))

(assert (= (and d!1616558 c!858641) b!5022293))

(assert (= (and d!1616558 (not c!858641)) b!5022294))

(assert (=> b!5022294 m!6057324))

(assert (=> b!5022175 d!1616558))

(declare-fun d!1616560 () Bool)

(declare-fun c!858642 () Bool)

(assert (=> d!1616560 (= c!858642 (isEmpty!31432 (tail!9897 lt!2078420)))))

(declare-fun e!3137403 () Bool)

(assert (=> d!1616560 (= (matchZipper!635 (derivationStepZipper!673 z!4710 (head!10764 lt!2078420)) (tail!9897 lt!2078420)) e!3137403)))

(declare-fun b!5022295 () Bool)

(assert (=> b!5022295 (= e!3137403 (nullableZipper!910 (derivationStepZipper!673 z!4710 (head!10764 lt!2078420))))))

(declare-fun b!5022296 () Bool)

(assert (=> b!5022296 (= e!3137403 (matchZipper!635 (derivationStepZipper!673 (derivationStepZipper!673 z!4710 (head!10764 lt!2078420)) (head!10764 (tail!9897 lt!2078420))) (tail!9897 (tail!9897 lt!2078420))))))

(assert (= (and d!1616560 c!858642) b!5022295))

(assert (= (and d!1616560 (not c!858642)) b!5022296))

(assert (=> d!1616560 m!6057144))

(declare-fun m!6057370 () Bool)

(assert (=> d!1616560 m!6057370))

(assert (=> b!5022295 m!6057142))

(declare-fun m!6057372 () Bool)

(assert (=> b!5022295 m!6057372))

(assert (=> b!5022296 m!6057144))

(declare-fun m!6057374 () Bool)

(assert (=> b!5022296 m!6057374))

(assert (=> b!5022296 m!6057142))

(assert (=> b!5022296 m!6057374))

(declare-fun m!6057376 () Bool)

(assert (=> b!5022296 m!6057376))

(assert (=> b!5022296 m!6057144))

(declare-fun m!6057378 () Bool)

(assert (=> b!5022296 m!6057378))

(assert (=> b!5022296 m!6057376))

(assert (=> b!5022296 m!6057378))

(declare-fun m!6057380 () Bool)

(assert (=> b!5022296 m!6057380))

(assert (=> b!5022042 d!1616560))

(declare-fun bs!1187440 () Bool)

(declare-fun d!1616562 () Bool)

(assert (= bs!1187440 (and d!1616562 d!1616520)))

(declare-fun lambda!248998 () Int)

(assert (=> bs!1187440 (= (= (head!10764 lt!2078420) (apply!14079 totalInput!1125 from!1212)) (= lambda!248998 lambda!248978))))

(declare-fun bs!1187441 () Bool)

(assert (= bs!1187441 (and d!1616562 d!1616544)))

(assert (=> bs!1187441 (= (= (head!10764 lt!2078420) (head!10764 lt!2078421)) (= lambda!248998 lambda!248993))))

(declare-fun bs!1187442 () Bool)

(assert (= bs!1187442 (and d!1616562 d!1616550)))

(assert (=> bs!1187442 (= (= (head!10764 lt!2078420) (apply!14079 totalInput!1125 (+ 1 from!1212))) (= lambda!248998 lambda!248994))))

(assert (=> d!1616562 true))

(assert (=> d!1616562 (= (derivationStepZipper!673 z!4710 (head!10764 lt!2078420)) (flatMap!296 z!4710 lambda!248998))))

(declare-fun bs!1187443 () Bool)

(assert (= bs!1187443 d!1616562))

(declare-fun m!6057382 () Bool)

(assert (=> bs!1187443 m!6057382))

(assert (=> b!5022042 d!1616562))

(declare-fun d!1616564 () Bool)

(assert (=> d!1616564 (= (head!10764 lt!2078420) (h!64492 lt!2078420))))

(assert (=> b!5022042 d!1616564))

(declare-fun d!1616566 () Bool)

(assert (=> d!1616566 (= (tail!9897 lt!2078420) (t!370552 lt!2078420))))

(assert (=> b!5022042 d!1616566))

(declare-fun b!5022297 () Bool)

(declare-fun e!3137404 () Bool)

(declare-fun lt!2078578 () List!58168)

(declare-fun e!3137407 () Int)

(assert (=> b!5022297 (= e!3137404 (= (size!38630 lt!2078578) e!3137407))))

(declare-fun c!858643 () Bool)

(assert (=> b!5022297 (= c!858643 (<= (- (+ 1 lt!2078424) 1) 0))))

(declare-fun b!5022298 () Bool)

(declare-fun e!3137406 () Int)

(assert (=> b!5022298 (= e!3137406 (size!38630 (t!370552 lt!2078426)))))

(declare-fun b!5022299 () Bool)

(assert (=> b!5022299 (= e!3137407 e!3137406)))

(declare-fun c!858644 () Bool)

(assert (=> b!5022299 (= c!858644 (>= (- (+ 1 lt!2078424) 1) (size!38630 (t!370552 lt!2078426))))))

(declare-fun b!5022300 () Bool)

(assert (=> b!5022300 (= e!3137406 (- (+ 1 lt!2078424) 1))))

(declare-fun b!5022301 () Bool)

(declare-fun e!3137405 () List!58168)

(assert (=> b!5022301 (= e!3137405 (Cons!58044 (h!64492 (t!370552 lt!2078426)) (take!726 (t!370552 (t!370552 lt!2078426)) (- (- (+ 1 lt!2078424) 1) 1))))))

(declare-fun d!1616568 () Bool)

(assert (=> d!1616568 e!3137404))

(declare-fun res!2141246 () Bool)

(assert (=> d!1616568 (=> (not res!2141246) (not e!3137404))))

(assert (=> d!1616568 (= res!2141246 (= ((_ map implies) (content!10289 lt!2078578) (content!10289 (t!370552 lt!2078426))) ((as const (InoxSet C!27984)) true)))))

(assert (=> d!1616568 (= lt!2078578 e!3137405)))

(declare-fun c!858645 () Bool)

(assert (=> d!1616568 (= c!858645 (or ((_ is Nil!58044) (t!370552 lt!2078426)) (<= (- (+ 1 lt!2078424) 1) 0)))))

(assert (=> d!1616568 (= (take!726 (t!370552 lt!2078426) (- (+ 1 lt!2078424) 1)) lt!2078578)))

(declare-fun b!5022302 () Bool)

(assert (=> b!5022302 (= e!3137405 Nil!58044)))

(declare-fun b!5022303 () Bool)

(assert (=> b!5022303 (= e!3137407 0)))

(assert (= (and d!1616568 c!858645) b!5022302))

(assert (= (and d!1616568 (not c!858645)) b!5022301))

(assert (= (and d!1616568 res!2141246) b!5022297))

(assert (= (and b!5022297 c!858643) b!5022303))

(assert (= (and b!5022297 (not c!858643)) b!5022299))

(assert (= (and b!5022299 c!858644) b!5022298))

(assert (= (and b!5022299 (not c!858644)) b!5022300))

(assert (=> b!5022299 m!6057314))

(assert (=> b!5022298 m!6057314))

(declare-fun m!6057384 () Bool)

(assert (=> b!5022301 m!6057384))

(declare-fun m!6057386 () Bool)

(assert (=> b!5022297 m!6057386))

(declare-fun m!6057388 () Bool)

(assert (=> d!1616568 m!6057388))

(declare-fun m!6057390 () Bool)

(assert (=> d!1616568 m!6057390))

(assert (=> b!5022193 d!1616568))

(assert (=> b!5021928 d!1616520))

(assert (=> b!5021928 d!1616496))

(declare-fun b!5022304 () Bool)

(declare-fun e!3137412 () Int)

(assert (=> b!5022304 (= e!3137412 0)))

(declare-fun b!5022305 () Bool)

(declare-fun e!3137408 () Int)

(assert (=> b!5022305 (= e!3137408 1)))

(declare-fun b!5022306 () Bool)

(assert (=> b!5022306 (= e!3137408 0)))

(declare-fun b!5022307 () Bool)

(declare-fun e!3137409 () Bool)

(assert (=> b!5022307 (= e!3137409 (lostCauseZipper!881 lt!2078447))))

(declare-fun b!5022308 () Bool)

(declare-fun e!3137410 () Int)

(declare-fun lt!2078579 () Int)

(assert (=> b!5022308 (= e!3137410 (+ 1 lt!2078579))))

(declare-fun d!1616570 () Bool)

(declare-fun lt!2078581 () Int)

(assert (=> d!1616570 (and (>= lt!2078581 0) (<= lt!2078581 (- lt!2078423 (+ from!1212 1))))))

(assert (=> d!1616570 (= lt!2078581 e!3137412)))

(declare-fun c!858646 () Bool)

(assert (=> d!1616570 (= c!858646 e!3137409)))

(declare-fun res!2141247 () Bool)

(assert (=> d!1616570 (=> res!2141247 e!3137409)))

(assert (=> d!1616570 (= res!2141247 (= (+ from!1212 1) lt!2078423))))

(declare-fun e!3137411 () Bool)

(assert (=> d!1616570 e!3137411))

(declare-fun res!2141248 () Bool)

(assert (=> d!1616570 (=> (not res!2141248) (not e!3137411))))

(assert (=> d!1616570 (= res!2141248 (>= (+ from!1212 1) 0))))

(assert (=> d!1616570 (= (findLongestMatchInnerZipperFastV2!189 lt!2078447 (+ from!1212 1) totalInput!1125 lt!2078423) lt!2078581)))

(declare-fun b!5022309 () Bool)

(declare-fun c!858648 () Bool)

(declare-fun lt!2078580 () (InoxSet Context!6584))

(assert (=> b!5022309 (= c!858648 (nullableZipper!910 lt!2078580))))

(assert (=> b!5022309 (= e!3137410 e!3137408)))

(declare-fun b!5022310 () Bool)

(assert (=> b!5022310 (= e!3137412 e!3137410)))

(assert (=> b!5022310 (= lt!2078580 (derivationStepZipper!673 lt!2078447 (apply!14079 totalInput!1125 (+ from!1212 1))))))

(assert (=> b!5022310 (= lt!2078579 (findLongestMatchInnerZipperFastV2!189 lt!2078580 (+ from!1212 1 1) totalInput!1125 lt!2078423))))

(declare-fun c!858647 () Bool)

(assert (=> b!5022310 (= c!858647 (> lt!2078579 0))))

(declare-fun b!5022311 () Bool)

(assert (=> b!5022311 (= e!3137411 (<= (+ from!1212 1) (size!38629 totalInput!1125)))))

(assert (= (and d!1616570 res!2141248) b!5022311))

(assert (= (and d!1616570 (not res!2141247)) b!5022307))

(assert (= (and d!1616570 c!858646) b!5022304))

(assert (= (and d!1616570 (not c!858646)) b!5022310))

(assert (= (and b!5022310 c!858647) b!5022308))

(assert (= (and b!5022310 (not c!858647)) b!5022309))

(assert (= (and b!5022309 c!858648) b!5022305))

(assert (= (and b!5022309 (not c!858648)) b!5022306))

(declare-fun m!6057392 () Bool)

(assert (=> b!5022307 m!6057392))

(declare-fun m!6057394 () Bool)

(assert (=> b!5022309 m!6057394))

(declare-fun m!6057396 () Bool)

(assert (=> b!5022310 m!6057396))

(assert (=> b!5022310 m!6057396))

(declare-fun m!6057398 () Bool)

(assert (=> b!5022310 m!6057398))

(declare-fun m!6057400 () Bool)

(assert (=> b!5022310 m!6057400))

(assert (=> b!5022311 m!6056972))

(assert (=> b!5021928 d!1616570))

(declare-fun d!1616572 () Bool)

(declare-fun c!858651 () Bool)

(assert (=> d!1616572 (= c!858651 ((_ is Nil!58044) lt!2078510))))

(declare-fun e!3137415 () (InoxSet C!27984))

(assert (=> d!1616572 (= (content!10289 lt!2078510) e!3137415)))

(declare-fun b!5022316 () Bool)

(assert (=> b!5022316 (= e!3137415 ((as const (Array C!27984 Bool)) false))))

(declare-fun b!5022317 () Bool)

(assert (=> b!5022317 (= e!3137415 ((_ map or) (store ((as const (Array C!27984 Bool)) false) (h!64492 lt!2078510) true) (content!10289 (t!370552 lt!2078510))))))

(assert (= (and d!1616572 c!858651) b!5022316))

(assert (= (and d!1616572 (not c!858651)) b!5022317))

(declare-fun m!6057402 () Bool)

(assert (=> b!5022317 m!6057402))

(declare-fun m!6057404 () Bool)

(assert (=> b!5022317 m!6057404))

(assert (=> d!1616486 d!1616572))

(declare-fun d!1616574 () Bool)

(declare-fun c!858652 () Bool)

(assert (=> d!1616574 (= c!858652 ((_ is Nil!58044) lt!2078425))))

(declare-fun e!3137416 () (InoxSet C!27984))

(assert (=> d!1616574 (= (content!10289 lt!2078425) e!3137416)))

(declare-fun b!5022318 () Bool)

(assert (=> b!5022318 (= e!3137416 ((as const (Array C!27984 Bool)) false))))

(declare-fun b!5022319 () Bool)

(assert (=> b!5022319 (= e!3137416 ((_ map or) (store ((as const (Array C!27984 Bool)) false) (h!64492 lt!2078425) true) (content!10289 (t!370552 lt!2078425))))))

(assert (= (and d!1616574 c!858652) b!5022318))

(assert (= (and d!1616574 (not c!858652)) b!5022319))

(declare-fun m!6057406 () Bool)

(assert (=> b!5022319 m!6057406))

(declare-fun m!6057408 () Bool)

(assert (=> b!5022319 m!6057408))

(assert (=> d!1616486 d!1616574))

(declare-fun b!5022320 () Bool)

(declare-fun e!3137417 () Bool)

(declare-fun lt!2078582 () List!58168)

(declare-fun e!3137420 () Int)

(assert (=> b!5022320 (= e!3137417 (= (size!38630 lt!2078582) e!3137420))))

(declare-fun c!858653 () Bool)

(assert (=> b!5022320 (= c!858653 (<= (- lt!2078424 1) 0))))

(declare-fun b!5022321 () Bool)

(declare-fun e!3137419 () Int)

(assert (=> b!5022321 (= e!3137419 (size!38630 (t!370552 lt!2078429)))))

(declare-fun b!5022322 () Bool)

(assert (=> b!5022322 (= e!3137420 e!3137419)))

(declare-fun c!858654 () Bool)

(assert (=> b!5022322 (= c!858654 (>= (- lt!2078424 1) (size!38630 (t!370552 lt!2078429))))))

(declare-fun b!5022323 () Bool)

(assert (=> b!5022323 (= e!3137419 (- lt!2078424 1))))

(declare-fun b!5022324 () Bool)

(declare-fun e!3137418 () List!58168)

(assert (=> b!5022324 (= e!3137418 (Cons!58044 (h!64492 (t!370552 lt!2078429)) (take!726 (t!370552 (t!370552 lt!2078429)) (- (- lt!2078424 1) 1))))))

(declare-fun d!1616576 () Bool)

(assert (=> d!1616576 e!3137417))

(declare-fun res!2141249 () Bool)

(assert (=> d!1616576 (=> (not res!2141249) (not e!3137417))))

(assert (=> d!1616576 (= res!2141249 (= ((_ map implies) (content!10289 lt!2078582) (content!10289 (t!370552 lt!2078429))) ((as const (InoxSet C!27984)) true)))))

(assert (=> d!1616576 (= lt!2078582 e!3137418)))

(declare-fun c!858655 () Bool)

(assert (=> d!1616576 (= c!858655 (or ((_ is Nil!58044) (t!370552 lt!2078429)) (<= (- lt!2078424 1) 0)))))

(assert (=> d!1616576 (= (take!726 (t!370552 lt!2078429) (- lt!2078424 1)) lt!2078582)))

(declare-fun b!5022325 () Bool)

(assert (=> b!5022325 (= e!3137418 Nil!58044)))

(declare-fun b!5022326 () Bool)

(assert (=> b!5022326 (= e!3137420 0)))

(assert (= (and d!1616576 c!858655) b!5022325))

(assert (= (and d!1616576 (not c!858655)) b!5022324))

(assert (= (and d!1616576 res!2141249) b!5022320))

(assert (= (and b!5022320 c!858653) b!5022326))

(assert (= (and b!5022320 (not c!858653)) b!5022322))

(assert (= (and b!5022322 c!858654) b!5022321))

(assert (= (and b!5022322 (not c!858654)) b!5022323))

(assert (=> b!5022322 m!6057324))

(assert (=> b!5022321 m!6057324))

(declare-fun m!6057410 () Bool)

(assert (=> b!5022324 m!6057410))

(declare-fun m!6057412 () Bool)

(assert (=> b!5022320 m!6057412))

(declare-fun m!6057414 () Bool)

(assert (=> d!1616576 m!6057414))

(assert (=> d!1616576 m!6057332))

(assert (=> b!5022157 d!1616576))

(declare-fun d!1616578 () Bool)

(declare-fun res!2141254 () Bool)

(declare-fun e!3137423 () Bool)

(assert (=> d!1616578 (=> (not res!2141254) (not e!3137423))))

(declare-fun list!18731 (IArray!30833) List!58168)

(assert (=> d!1616578 (= res!2141254 (<= (size!38630 (list!18731 (xs!18712 (c!858479 totalInput!1125)))) 512))))

(assert (=> d!1616578 (= (inv!76434 (c!858479 totalInput!1125)) e!3137423)))

(declare-fun b!5022331 () Bool)

(declare-fun res!2141255 () Bool)

(assert (=> b!5022331 (=> (not res!2141255) (not e!3137423))))

(assert (=> b!5022331 (= res!2141255 (= (csize!31003 (c!858479 totalInput!1125)) (size!38630 (list!18731 (xs!18712 (c!858479 totalInput!1125))))))))

(declare-fun b!5022332 () Bool)

(assert (=> b!5022332 (= e!3137423 (and (> (csize!31003 (c!858479 totalInput!1125)) 0) (<= (csize!31003 (c!858479 totalInput!1125)) 512)))))

(assert (= (and d!1616578 res!2141254) b!5022331))

(assert (= (and b!5022331 res!2141255) b!5022332))

(declare-fun m!6057416 () Bool)

(assert (=> d!1616578 m!6057416))

(assert (=> d!1616578 m!6057416))

(declare-fun m!6057418 () Bool)

(assert (=> d!1616578 m!6057418))

(assert (=> b!5022331 m!6057416))

(assert (=> b!5022331 m!6057416))

(assert (=> b!5022331 m!6057418))

(assert (=> b!5022210 d!1616578))

(assert (=> b!5022191 d!1616530))

(declare-fun d!1616580 () Bool)

(assert (=> d!1616580 (= (isEmpty!31432 lt!2078420) ((_ is Nil!58044) lt!2078420))))

(assert (=> d!1616482 d!1616580))

(assert (=> b!5022155 d!1616558))

(declare-fun b!5022345 () Bool)

(declare-fun res!2141268 () Bool)

(declare-fun e!3137428 () Bool)

(assert (=> b!5022345 (=> (not res!2141268) (not e!3137428))))

(declare-fun isEmpty!31435 (Conc!15386) Bool)

(assert (=> b!5022345 (= res!2141268 (not (isEmpty!31435 (left!42445 (c!858479 totalInput!1125)))))))

(declare-fun b!5022346 () Bool)

(declare-fun res!2141269 () Bool)

(assert (=> b!5022346 (=> (not res!2141269) (not e!3137428))))

(assert (=> b!5022346 (= res!2141269 (isBalanced!4297 (right!42775 (c!858479 totalInput!1125))))))

(declare-fun b!5022347 () Bool)

(declare-fun e!3137429 () Bool)

(assert (=> b!5022347 (= e!3137429 e!3137428)))

(declare-fun res!2141273 () Bool)

(assert (=> b!5022347 (=> (not res!2141273) (not e!3137428))))

(assert (=> b!5022347 (= res!2141273 (<= (- 1) (- (height!2041 (left!42445 (c!858479 totalInput!1125))) (height!2041 (right!42775 (c!858479 totalInput!1125))))))))

(declare-fun d!1616582 () Bool)

(declare-fun res!2141272 () Bool)

(assert (=> d!1616582 (=> res!2141272 e!3137429)))

(assert (=> d!1616582 (= res!2141272 (not ((_ is Node!15386) (c!858479 totalInput!1125))))))

(assert (=> d!1616582 (= (isBalanced!4297 (c!858479 totalInput!1125)) e!3137429)))

(declare-fun b!5022348 () Bool)

(declare-fun res!2141271 () Bool)

(assert (=> b!5022348 (=> (not res!2141271) (not e!3137428))))

(assert (=> b!5022348 (= res!2141271 (<= (- (height!2041 (left!42445 (c!858479 totalInput!1125))) (height!2041 (right!42775 (c!858479 totalInput!1125)))) 1))))

(declare-fun b!5022349 () Bool)

(declare-fun res!2141270 () Bool)

(assert (=> b!5022349 (=> (not res!2141270) (not e!3137428))))

(assert (=> b!5022349 (= res!2141270 (isBalanced!4297 (left!42445 (c!858479 totalInput!1125))))))

(declare-fun b!5022350 () Bool)

(assert (=> b!5022350 (= e!3137428 (not (isEmpty!31435 (right!42775 (c!858479 totalInput!1125)))))))

(assert (= (and d!1616582 (not res!2141272)) b!5022347))

(assert (= (and b!5022347 res!2141273) b!5022348))

(assert (= (and b!5022348 res!2141271) b!5022349))

(assert (= (and b!5022349 res!2141270) b!5022346))

(assert (= (and b!5022346 res!2141269) b!5022345))

(assert (= (and b!5022345 res!2141268) b!5022350))

(declare-fun m!6057420 () Bool)

(assert (=> b!5022345 m!6057420))

(assert (=> b!5022347 m!6057306))

(assert (=> b!5022347 m!6057308))

(assert (=> b!5022348 m!6057306))

(assert (=> b!5022348 m!6057308))

(declare-fun m!6057422 () Bool)

(assert (=> b!5022346 m!6057422))

(declare-fun m!6057424 () Bool)

(assert (=> b!5022349 m!6057424))

(declare-fun m!6057426 () Bool)

(assert (=> b!5022350 m!6057426))

(assert (=> d!1616432 d!1616582))

(declare-fun b!5022351 () Bool)

(declare-fun e!3137430 () Bool)

(declare-fun lt!2078583 () List!58168)

(declare-fun e!3137433 () Int)

(assert (=> b!5022351 (= e!3137430 (= (size!38630 lt!2078583) e!3137433))))

(declare-fun c!858656 () Bool)

(assert (=> b!5022351 (= c!858656 (<= lt!2078424 0))))

(declare-fun b!5022352 () Bool)

(declare-fun e!3137432 () Int)

(assert (=> b!5022352 (= e!3137432 (size!38630 (drop!2530 lt!2078425 (+ from!1212 1))))))

(declare-fun b!5022353 () Bool)

(assert (=> b!5022353 (= e!3137433 e!3137432)))

(declare-fun c!858657 () Bool)

(assert (=> b!5022353 (= c!858657 (>= lt!2078424 (size!38630 (drop!2530 lt!2078425 (+ from!1212 1)))))))

(declare-fun b!5022354 () Bool)

(assert (=> b!5022354 (= e!3137432 lt!2078424)))

(declare-fun b!5022355 () Bool)

(declare-fun e!3137431 () List!58168)

(assert (=> b!5022355 (= e!3137431 (Cons!58044 (h!64492 (drop!2530 lt!2078425 (+ from!1212 1))) (take!726 (t!370552 (drop!2530 lt!2078425 (+ from!1212 1))) (- lt!2078424 1))))))

(declare-fun d!1616584 () Bool)

(assert (=> d!1616584 e!3137430))

(declare-fun res!2141274 () Bool)

(assert (=> d!1616584 (=> (not res!2141274) (not e!3137430))))

(assert (=> d!1616584 (= res!2141274 (= ((_ map implies) (content!10289 lt!2078583) (content!10289 (drop!2530 lt!2078425 (+ from!1212 1)))) ((as const (InoxSet C!27984)) true)))))

(assert (=> d!1616584 (= lt!2078583 e!3137431)))

(declare-fun c!858658 () Bool)

(assert (=> d!1616584 (= c!858658 (or ((_ is Nil!58044) (drop!2530 lt!2078425 (+ from!1212 1))) (<= lt!2078424 0)))))

(assert (=> d!1616584 (= (take!726 (drop!2530 lt!2078425 (+ from!1212 1)) lt!2078424) lt!2078583)))

(declare-fun b!5022356 () Bool)

(assert (=> b!5022356 (= e!3137431 Nil!58044)))

(declare-fun b!5022357 () Bool)

(assert (=> b!5022357 (= e!3137433 0)))

(assert (= (and d!1616584 c!858658) b!5022356))

(assert (= (and d!1616584 (not c!858658)) b!5022355))

(assert (= (and d!1616584 res!2141274) b!5022351))

(assert (= (and b!5022351 c!858656) b!5022357))

(assert (= (and b!5022351 (not c!858656)) b!5022353))

(assert (= (and b!5022353 c!858657) b!5022352))

(assert (= (and b!5022353 (not c!858657)) b!5022354))

(assert (=> b!5022353 m!6057232))

(declare-fun m!6057428 () Bool)

(assert (=> b!5022353 m!6057428))

(assert (=> b!5022352 m!6057232))

(assert (=> b!5022352 m!6057428))

(declare-fun m!6057430 () Bool)

(assert (=> b!5022355 m!6057430))

(declare-fun m!6057432 () Bool)

(assert (=> b!5022351 m!6057432))

(declare-fun m!6057434 () Bool)

(assert (=> d!1616584 m!6057434))

(assert (=> d!1616584 m!6057232))

(declare-fun m!6057436 () Bool)

(assert (=> d!1616584 m!6057436))

(assert (=> d!1616514 d!1616584))

(declare-fun d!1616586 () Bool)

(assert (=> d!1616586 (= (Cons!58044 (apply!14078 lt!2078425 from!1212) (take!726 (drop!2530 lt!2078425 (+ from!1212 1)) lt!2078424)) (take!726 (drop!2530 lt!2078425 from!1212) (+ lt!2078424 1)))))

(assert (=> d!1616586 true))

(declare-fun _$30!238 () Unit!149255)

(assert (=> d!1616586 (= (choose!37150 lt!2078425 from!1212 lt!2078424) _$30!238)))

(declare-fun bs!1187444 () Bool)

(assert (= bs!1187444 d!1616586))

(assert (=> bs!1187444 m!6056966))

(assert (=> bs!1187444 m!6056942))

(assert (=> bs!1187444 m!6057232))

(assert (=> bs!1187444 m!6057246))

(assert (=> bs!1187444 m!6056966))

(assert (=> bs!1187444 m!6057244))

(assert (=> bs!1187444 m!6057232))

(assert (=> d!1616514 d!1616586))

(assert (=> d!1616514 d!1616502))

(assert (=> d!1616514 d!1616486))

(declare-fun b!5022358 () Bool)

(declare-fun e!3137434 () List!58168)

(assert (=> b!5022358 (= e!3137434 (drop!2530 (t!370552 lt!2078425) (- (+ from!1212 1) 1)))))

(declare-fun b!5022359 () Bool)

(declare-fun e!3137436 () List!58168)

(assert (=> b!5022359 (= e!3137436 e!3137434)))

(declare-fun c!858660 () Bool)

(assert (=> b!5022359 (= c!858660 (<= (+ from!1212 1) 0))))

(declare-fun d!1616588 () Bool)

(declare-fun e!3137437 () Bool)

(assert (=> d!1616588 e!3137437))

(declare-fun res!2141275 () Bool)

(assert (=> d!1616588 (=> (not res!2141275) (not e!3137437))))

(declare-fun lt!2078584 () List!58168)

(assert (=> d!1616588 (= res!2141275 (= ((_ map implies) (content!10289 lt!2078584) (content!10289 lt!2078425)) ((as const (InoxSet C!27984)) true)))))

(assert (=> d!1616588 (= lt!2078584 e!3137436)))

(declare-fun c!858661 () Bool)

(assert (=> d!1616588 (= c!858661 ((_ is Nil!58044) lt!2078425))))

(assert (=> d!1616588 (= (drop!2530 lt!2078425 (+ from!1212 1)) lt!2078584)))

(declare-fun b!5022360 () Bool)

(declare-fun e!3137438 () Int)

(declare-fun call!350652 () Int)

(assert (=> b!5022360 (= e!3137438 call!350652)))

(declare-fun b!5022361 () Bool)

(declare-fun e!3137435 () Int)

(assert (=> b!5022361 (= e!3137435 0)))

(declare-fun b!5022362 () Bool)

(assert (=> b!5022362 (= e!3137437 (= (size!38630 lt!2078584) e!3137438))))

(declare-fun c!858659 () Bool)

(assert (=> b!5022362 (= c!858659 (<= (+ from!1212 1) 0))))

(declare-fun b!5022363 () Bool)

(assert (=> b!5022363 (= e!3137438 e!3137435)))

(declare-fun c!858662 () Bool)

(assert (=> b!5022363 (= c!858662 (>= (+ from!1212 1) call!350652))))

(declare-fun bm!350647 () Bool)

(assert (=> bm!350647 (= call!350652 (size!38630 lt!2078425))))

(declare-fun b!5022364 () Bool)

(assert (=> b!5022364 (= e!3137435 (- call!350652 (+ from!1212 1)))))

(declare-fun b!5022365 () Bool)

(assert (=> b!5022365 (= e!3137436 Nil!58044)))

(declare-fun b!5022366 () Bool)

(assert (=> b!5022366 (= e!3137434 lt!2078425)))

(assert (= (and d!1616588 c!858661) b!5022365))

(assert (= (and d!1616588 (not c!858661)) b!5022359))

(assert (= (and b!5022359 c!858660) b!5022366))

(assert (= (and b!5022359 (not c!858660)) b!5022358))

(assert (= (and d!1616588 res!2141275) b!5022362))

(assert (= (and b!5022362 c!858659) b!5022360))

(assert (= (and b!5022362 (not c!858659)) b!5022363))

(assert (= (and b!5022363 c!858662) b!5022361))

(assert (= (and b!5022363 (not c!858662)) b!5022364))

(assert (= (or b!5022360 b!5022363 b!5022364) bm!350647))

(declare-fun m!6057438 () Bool)

(assert (=> b!5022358 m!6057438))

(declare-fun m!6057440 () Bool)

(assert (=> d!1616588 m!6057440))

(assert (=> d!1616588 m!6057172))

(declare-fun m!6057442 () Bool)

(assert (=> b!5022362 m!6057442))

(assert (=> bm!350647 m!6057176))

(assert (=> d!1616514 d!1616588))

(declare-fun b!5022367 () Bool)

(declare-fun e!3137439 () Bool)

(declare-fun lt!2078585 () List!58168)

(declare-fun e!3137442 () Int)

(assert (=> b!5022367 (= e!3137439 (= (size!38630 lt!2078585) e!3137442))))

(declare-fun c!858663 () Bool)

(assert (=> b!5022367 (= c!858663 (<= (+ lt!2078424 1) 0))))

(declare-fun b!5022368 () Bool)

(declare-fun e!3137441 () Int)

(assert (=> b!5022368 (= e!3137441 (size!38630 (drop!2530 lt!2078425 from!1212)))))

(declare-fun b!5022369 () Bool)

(assert (=> b!5022369 (= e!3137442 e!3137441)))

(declare-fun c!858664 () Bool)

(assert (=> b!5022369 (= c!858664 (>= (+ lt!2078424 1) (size!38630 (drop!2530 lt!2078425 from!1212))))))

(declare-fun b!5022370 () Bool)

(assert (=> b!5022370 (= e!3137441 (+ lt!2078424 1))))

(declare-fun e!3137440 () List!58168)

(declare-fun b!5022371 () Bool)

(assert (=> b!5022371 (= e!3137440 (Cons!58044 (h!64492 (drop!2530 lt!2078425 from!1212)) (take!726 (t!370552 (drop!2530 lt!2078425 from!1212)) (- (+ lt!2078424 1) 1))))))

(declare-fun d!1616590 () Bool)

(assert (=> d!1616590 e!3137439))

(declare-fun res!2141276 () Bool)

(assert (=> d!1616590 (=> (not res!2141276) (not e!3137439))))

(assert (=> d!1616590 (= res!2141276 (= ((_ map implies) (content!10289 lt!2078585) (content!10289 (drop!2530 lt!2078425 from!1212))) ((as const (InoxSet C!27984)) true)))))

(assert (=> d!1616590 (= lt!2078585 e!3137440)))

(declare-fun c!858665 () Bool)

(assert (=> d!1616590 (= c!858665 (or ((_ is Nil!58044) (drop!2530 lt!2078425 from!1212)) (<= (+ lt!2078424 1) 0)))))

(assert (=> d!1616590 (= (take!726 (drop!2530 lt!2078425 from!1212) (+ lt!2078424 1)) lt!2078585)))

(declare-fun b!5022372 () Bool)

(assert (=> b!5022372 (= e!3137440 Nil!58044)))

(declare-fun b!5022373 () Bool)

(assert (=> b!5022373 (= e!3137442 0)))

(assert (= (and d!1616590 c!858665) b!5022372))

(assert (= (and d!1616590 (not c!858665)) b!5022371))

(assert (= (and d!1616590 res!2141276) b!5022367))

(assert (= (and b!5022367 c!858663) b!5022373))

(assert (= (and b!5022367 (not c!858663)) b!5022369))

(assert (= (and b!5022369 c!858664) b!5022368))

(assert (= (and b!5022369 (not c!858664)) b!5022370))

(assert (=> b!5022369 m!6056966))

(declare-fun m!6057444 () Bool)

(assert (=> b!5022369 m!6057444))

(assert (=> b!5022368 m!6056966))

(assert (=> b!5022368 m!6057444))

(declare-fun m!6057446 () Bool)

(assert (=> b!5022371 m!6057446))

(declare-fun m!6057448 () Bool)

(assert (=> b!5022367 m!6057448))

(declare-fun m!6057450 () Bool)

(assert (=> d!1616590 m!6057450))

(assert (=> d!1616590 m!6056966))

(declare-fun m!6057452 () Bool)

(assert (=> d!1616590 m!6057452))

(assert (=> d!1616514 d!1616590))

(declare-fun d!1616592 () Bool)

(declare-fun res!2141281 () Bool)

(declare-fun e!3137447 () Bool)

(assert (=> d!1616592 (=> res!2141281 e!3137447)))

(assert (=> d!1616592 (= res!2141281 ((_ is Nil!58045) (exprs!3792 setElem!28716)))))

(assert (=> d!1616592 (= (forall!13410 (exprs!3792 setElem!28716) lambda!248992) e!3137447)))

(declare-fun b!5022378 () Bool)

(declare-fun e!3137448 () Bool)

(assert (=> b!5022378 (= e!3137447 e!3137448)))

(declare-fun res!2141282 () Bool)

(assert (=> b!5022378 (=> (not res!2141282) (not e!3137448))))

(declare-fun dynLambda!23529 (Int Regex!13867) Bool)

(assert (=> b!5022378 (= res!2141282 (dynLambda!23529 lambda!248992 (h!64493 (exprs!3792 setElem!28716))))))

(declare-fun b!5022379 () Bool)

(assert (=> b!5022379 (= e!3137448 (forall!13410 (t!370553 (exprs!3792 setElem!28716)) lambda!248992))))

(assert (= (and d!1616592 (not res!2141281)) b!5022378))

(assert (= (and b!5022378 res!2141282) b!5022379))

(declare-fun b_lambda!198681 () Bool)

(assert (=> (not b_lambda!198681) (not b!5022378)))

(declare-fun m!6057454 () Bool)

(assert (=> b!5022378 m!6057454))

(declare-fun m!6057456 () Bool)

(assert (=> b!5022379 m!6057456))

(assert (=> d!1616524 d!1616592))

(assert (=> b!5021932 d!1616434))

(assert (=> b!5021871 d!1616522))

(assert (=> b!5022161 d!1616530))

(declare-fun d!1616594 () Bool)

(assert (=> d!1616594 (= (inv!76435 (xs!18712 (c!858479 totalInput!1125))) (<= (size!38630 (innerList!15474 (xs!18712 (c!858479 totalInput!1125)))) 2147483647))))

(declare-fun bs!1187445 () Bool)

(assert (= bs!1187445 d!1616594))

(declare-fun m!6057458 () Bool)

(assert (=> bs!1187445 m!6057458))

(assert (=> b!5022247 d!1616594))

(declare-fun d!1616596 () Bool)

(declare-fun choose!37155 ((InoxSet Context!6584) Int) (InoxSet Context!6584))

(assert (=> d!1616596 (= (flatMap!296 z!4710 lambda!248978) (choose!37155 z!4710 lambda!248978))))

(declare-fun bs!1187446 () Bool)

(assert (= bs!1187446 d!1616596))

(declare-fun m!6057460 () Bool)

(assert (=> bs!1187446 m!6057460))

(assert (=> d!1616520 d!1616596))

(declare-fun d!1616598 () Bool)

(assert (=> d!1616598 (= (isEmpty!31433 (getLanguageWitness!729 z!4710)) (not ((_ is Some!14593) (getLanguageWitness!729 z!4710))))))

(assert (=> d!1616452 d!1616598))

(declare-fun bs!1187447 () Bool)

(declare-fun d!1616600 () Bool)

(assert (= bs!1187447 (and d!1616600 d!1616452)))

(declare-fun lambda!249005 () Int)

(assert (=> bs!1187447 (not (= lambda!249005 lambda!248969))))

(declare-fun bs!1187448 () Bool)

(assert (= bs!1187448 (and d!1616600 b!5022039)))

(assert (=> bs!1187448 (= lambda!249005 lambda!248970)))

(declare-fun bs!1187449 () Bool)

(assert (= bs!1187449 (and d!1616600 b!5022040)))

(assert (=> bs!1187449 (= lambda!249005 lambda!248971)))

(declare-fun bs!1187450 () Bool)

(assert (= bs!1187450 (and d!1616600 d!1616556)))

(assert (=> bs!1187450 (not (= lambda!249005 lambda!248997))))

(declare-fun lt!2078588 () Option!14594)

(declare-fun isDefined!11490 (Option!14594) Bool)

(declare-fun exists!1384 ((InoxSet Context!6584) Int) Bool)

(assert (=> d!1616600 (= (isDefined!11490 lt!2078588) (exists!1384 z!4710 lambda!249005))))

(declare-fun e!3137451 () Option!14594)

(assert (=> d!1616600 (= lt!2078588 e!3137451)))

(declare-fun c!858674 () Bool)

(assert (=> d!1616600 (= c!858674 (exists!1384 z!4710 lambda!249005))))

(assert (=> d!1616600 (= (getLanguageWitness!729 z!4710) lt!2078588)))

(declare-fun b!5022384 () Bool)

(declare-fun getLanguageWitness!731 (Context!6584) Option!14594)

(declare-fun getWitness!658 ((InoxSet Context!6584) Int) Context!6584)

(assert (=> b!5022384 (= e!3137451 (getLanguageWitness!731 (getWitness!658 z!4710 lambda!249005)))))

(declare-fun b!5022385 () Bool)

(assert (=> b!5022385 (= e!3137451 None!14593)))

(assert (= (and d!1616600 c!858674) b!5022384))

(assert (= (and d!1616600 (not c!858674)) b!5022385))

(declare-fun m!6057462 () Bool)

(assert (=> d!1616600 m!6057462))

(declare-fun m!6057464 () Bool)

(assert (=> d!1616600 m!6057464))

(assert (=> d!1616600 m!6057464))

(declare-fun m!6057466 () Bool)

(assert (=> b!5022384 m!6057466))

(assert (=> b!5022384 m!6057466))

(declare-fun m!6057468 () Bool)

(assert (=> b!5022384 m!6057468))

(assert (=> d!1616452 d!1616600))

(declare-fun d!1616602 () Bool)

(declare-fun lt!2078591 () Bool)

(assert (=> d!1616602 (= lt!2078591 (forall!13412 (toList!8115 z!4710) lambda!248969))))

(declare-fun choose!37156 ((InoxSet Context!6584) Int) Bool)

(assert (=> d!1616602 (= lt!2078591 (choose!37156 z!4710 lambda!248969))))

(assert (=> d!1616602 (= (forall!13409 z!4710 lambda!248969) lt!2078591)))

(declare-fun bs!1187451 () Bool)

(assert (= bs!1187451 d!1616602))

(assert (=> bs!1187451 m!6057122))

(assert (=> bs!1187451 m!6057122))

(declare-fun m!6057470 () Bool)

(assert (=> bs!1187451 m!6057470))

(declare-fun m!6057472 () Bool)

(assert (=> bs!1187451 m!6057472))

(assert (=> d!1616452 d!1616602))

(declare-fun d!1616604 () Bool)

(declare-fun lt!2078592 () Int)

(assert (=> d!1616604 (>= lt!2078592 0)))

(declare-fun e!3137452 () Int)

(assert (=> d!1616604 (= lt!2078592 e!3137452)))

(declare-fun c!858675 () Bool)

(assert (=> d!1616604 (= c!858675 ((_ is Nil!58044) lt!2078425))))

(assert (=> d!1616604 (= (size!38630 lt!2078425) lt!2078592)))

(declare-fun b!5022386 () Bool)

(assert (=> b!5022386 (= e!3137452 0)))

(declare-fun b!5022387 () Bool)

(assert (=> b!5022387 (= e!3137452 (+ 1 (size!38630 (t!370552 lt!2078425))))))

(assert (= (and d!1616604 c!858675) b!5022386))

(assert (= (and d!1616604 (not c!858675)) b!5022387))

(declare-fun m!6057474 () Bool)

(assert (=> b!5022387 m!6057474))

(assert (=> b!5022180 d!1616604))

(declare-fun b!5022388 () Bool)

(declare-fun e!3137453 () Bool)

(declare-fun lt!2078593 () List!58168)

(declare-fun e!3137456 () Int)

(assert (=> b!5022388 (= e!3137453 (= (size!38630 lt!2078593) e!3137456))))

(declare-fun c!858676 () Bool)

(assert (=> b!5022388 (= c!858676 (<= (- knownSize!24 1) 0))))

(declare-fun b!5022389 () Bool)

(declare-fun e!3137455 () Int)

(assert (=> b!5022389 (= e!3137455 (size!38630 (drop!2530 lt!2078425 (+ from!1212 1))))))

(declare-fun b!5022390 () Bool)

(assert (=> b!5022390 (= e!3137456 e!3137455)))

(declare-fun c!858677 () Bool)

(assert (=> b!5022390 (= c!858677 (>= (- knownSize!24 1) (size!38630 (drop!2530 lt!2078425 (+ from!1212 1)))))))

(declare-fun b!5022391 () Bool)

(assert (=> b!5022391 (= e!3137455 (- knownSize!24 1))))

(declare-fun b!5022392 () Bool)

(declare-fun e!3137454 () List!58168)

(assert (=> b!5022392 (= e!3137454 (Cons!58044 (h!64492 (drop!2530 lt!2078425 (+ from!1212 1))) (take!726 (t!370552 (drop!2530 lt!2078425 (+ from!1212 1))) (- (- knownSize!24 1) 1))))))

(declare-fun d!1616606 () Bool)

(assert (=> d!1616606 e!3137453))

(declare-fun res!2141283 () Bool)

(assert (=> d!1616606 (=> (not res!2141283) (not e!3137453))))

(assert (=> d!1616606 (= res!2141283 (= ((_ map implies) (content!10289 lt!2078593) (content!10289 (drop!2530 lt!2078425 (+ from!1212 1)))) ((as const (InoxSet C!27984)) true)))))

(assert (=> d!1616606 (= lt!2078593 e!3137454)))

(declare-fun c!858678 () Bool)

(assert (=> d!1616606 (= c!858678 (or ((_ is Nil!58044) (drop!2530 lt!2078425 (+ from!1212 1))) (<= (- knownSize!24 1) 0)))))

(assert (=> d!1616606 (= (take!726 (drop!2530 lt!2078425 (+ from!1212 1)) (- knownSize!24 1)) lt!2078593)))

(declare-fun b!5022393 () Bool)

(assert (=> b!5022393 (= e!3137454 Nil!58044)))

(declare-fun b!5022394 () Bool)

(assert (=> b!5022394 (= e!3137456 0)))

(assert (= (and d!1616606 c!858678) b!5022393))

(assert (= (and d!1616606 (not c!858678)) b!5022392))

(assert (= (and d!1616606 res!2141283) b!5022388))

(assert (= (and b!5022388 c!858676) b!5022394))

(assert (= (and b!5022388 (not c!858676)) b!5022390))

(assert (= (and b!5022390 c!858677) b!5022389))

(assert (= (and b!5022390 (not c!858677)) b!5022391))

(assert (=> b!5022390 m!6057232))

(assert (=> b!5022390 m!6057428))

(assert (=> b!5022389 m!6057232))

(assert (=> b!5022389 m!6057428))

(declare-fun m!6057476 () Bool)

(assert (=> b!5022392 m!6057476))

(declare-fun m!6057478 () Bool)

(assert (=> b!5022388 m!6057478))

(declare-fun m!6057480 () Bool)

(assert (=> d!1616606 m!6057480))

(assert (=> d!1616606 m!6057232))

(assert (=> d!1616606 m!6057436))

(assert (=> d!1616508 d!1616606))

(declare-fun b!5022395 () Bool)

(declare-fun e!3137457 () Bool)

(declare-fun lt!2078594 () List!58168)

(declare-fun e!3137460 () Int)

(assert (=> b!5022395 (= e!3137457 (= (size!38630 lt!2078594) e!3137460))))

(declare-fun c!858679 () Bool)

(assert (=> b!5022395 (= c!858679 (<= (+ (- knownSize!24 1) 1) 0))))

(declare-fun b!5022396 () Bool)

(declare-fun e!3137459 () Int)

(assert (=> b!5022396 (= e!3137459 (size!38630 (drop!2530 lt!2078425 from!1212)))))

(declare-fun b!5022397 () Bool)

(assert (=> b!5022397 (= e!3137460 e!3137459)))

(declare-fun c!858680 () Bool)

(assert (=> b!5022397 (= c!858680 (>= (+ (- knownSize!24 1) 1) (size!38630 (drop!2530 lt!2078425 from!1212))))))

(declare-fun b!5022398 () Bool)

(assert (=> b!5022398 (= e!3137459 (+ (- knownSize!24 1) 1))))

(declare-fun b!5022399 () Bool)

(declare-fun e!3137458 () List!58168)

(assert (=> b!5022399 (= e!3137458 (Cons!58044 (h!64492 (drop!2530 lt!2078425 from!1212)) (take!726 (t!370552 (drop!2530 lt!2078425 from!1212)) (- (+ (- knownSize!24 1) 1) 1))))))

(declare-fun d!1616608 () Bool)

(assert (=> d!1616608 e!3137457))

(declare-fun res!2141284 () Bool)

(assert (=> d!1616608 (=> (not res!2141284) (not e!3137457))))

(assert (=> d!1616608 (= res!2141284 (= ((_ map implies) (content!10289 lt!2078594) (content!10289 (drop!2530 lt!2078425 from!1212))) ((as const (InoxSet C!27984)) true)))))

(assert (=> d!1616608 (= lt!2078594 e!3137458)))

(declare-fun c!858681 () Bool)

(assert (=> d!1616608 (= c!858681 (or ((_ is Nil!58044) (drop!2530 lt!2078425 from!1212)) (<= (+ (- knownSize!24 1) 1) 0)))))

(assert (=> d!1616608 (= (take!726 (drop!2530 lt!2078425 from!1212) (+ (- knownSize!24 1) 1)) lt!2078594)))

(declare-fun b!5022400 () Bool)

(assert (=> b!5022400 (= e!3137458 Nil!58044)))

(declare-fun b!5022401 () Bool)

(assert (=> b!5022401 (= e!3137460 0)))

(assert (= (and d!1616608 c!858681) b!5022400))

(assert (= (and d!1616608 (not c!858681)) b!5022399))

(assert (= (and d!1616608 res!2141284) b!5022395))

(assert (= (and b!5022395 c!858679) b!5022401))

(assert (= (and b!5022395 (not c!858679)) b!5022397))

(assert (= (and b!5022397 c!858680) b!5022396))

(assert (= (and b!5022397 (not c!858680)) b!5022398))

(assert (=> b!5022397 m!6056966))

(assert (=> b!5022397 m!6057444))

(assert (=> b!5022396 m!6056966))

(assert (=> b!5022396 m!6057444))

(declare-fun m!6057482 () Bool)

(assert (=> b!5022399 m!6057482))

(declare-fun m!6057484 () Bool)

(assert (=> b!5022395 m!6057484))

(declare-fun m!6057486 () Bool)

(assert (=> d!1616608 m!6057486))

(assert (=> d!1616608 m!6056966))

(assert (=> d!1616608 m!6057452))

(assert (=> d!1616508 d!1616608))

(assert (=> d!1616508 d!1616502))

(assert (=> d!1616508 d!1616486))

(declare-fun d!1616610 () Bool)

(assert (=> d!1616610 (= (Cons!58044 (apply!14078 lt!2078425 from!1212) (take!726 (drop!2530 lt!2078425 (+ from!1212 1)) (- knownSize!24 1))) (take!726 (drop!2530 lt!2078425 from!1212) (+ (- knownSize!24 1) 1)))))

(assert (=> d!1616610 true))

(declare-fun _$30!239 () Unit!149255)

(assert (=> d!1616610 (= (choose!37150 lt!2078425 from!1212 (- knownSize!24 1)) _$30!239)))

(declare-fun bs!1187452 () Bool)

(assert (= bs!1187452 d!1616610))

(assert (=> bs!1187452 m!6056966))

(assert (=> bs!1187452 m!6056942))

(assert (=> bs!1187452 m!6057232))

(assert (=> bs!1187452 m!6057234))

(assert (=> bs!1187452 m!6056966))

(assert (=> bs!1187452 m!6057230))

(assert (=> bs!1187452 m!6057232))

(assert (=> d!1616508 d!1616610))

(assert (=> d!1616508 d!1616588))

(declare-fun d!1616612 () Bool)

(declare-fun lt!2078595 () C!27984)

(assert (=> d!1616612 (contains!19568 (tail!9897 lt!2078425) lt!2078595)))

(declare-fun e!3137461 () C!27984)

(assert (=> d!1616612 (= lt!2078595 e!3137461)))

(declare-fun c!858682 () Bool)

(assert (=> d!1616612 (= c!858682 (= (- from!1212 1) 0))))

(declare-fun e!3137462 () Bool)

(assert (=> d!1616612 e!3137462))

(declare-fun res!2141285 () Bool)

(assert (=> d!1616612 (=> (not res!2141285) (not e!3137462))))

(assert (=> d!1616612 (= res!2141285 (<= 0 (- from!1212 1)))))

(assert (=> d!1616612 (= (apply!14078 (tail!9897 lt!2078425) (- from!1212 1)) lt!2078595)))

(declare-fun b!5022402 () Bool)

(assert (=> b!5022402 (= e!3137462 (< (- from!1212 1) (size!38630 (tail!9897 lt!2078425))))))

(declare-fun b!5022403 () Bool)

(assert (=> b!5022403 (= e!3137461 (head!10764 (tail!9897 lt!2078425)))))

(declare-fun b!5022404 () Bool)

(assert (=> b!5022404 (= e!3137461 (apply!14078 (tail!9897 (tail!9897 lt!2078425)) (- (- from!1212 1) 1)))))

(assert (= (and d!1616612 res!2141285) b!5022402))

(assert (= (and d!1616612 c!858682) b!5022403))

(assert (= (and d!1616612 (not c!858682)) b!5022404))

(assert (=> d!1616612 m!6057204))

(declare-fun m!6057488 () Bool)

(assert (=> d!1616612 m!6057488))

(assert (=> b!5022402 m!6057204))

(declare-fun m!6057490 () Bool)

(assert (=> b!5022402 m!6057490))

(assert (=> b!5022403 m!6057204))

(declare-fun m!6057492 () Bool)

(assert (=> b!5022403 m!6057492))

(assert (=> b!5022404 m!6057204))

(declare-fun m!6057494 () Bool)

(assert (=> b!5022404 m!6057494))

(assert (=> b!5022404 m!6057494))

(declare-fun m!6057496 () Bool)

(assert (=> b!5022404 m!6057496))

(assert (=> b!5022152 d!1616612))

(declare-fun d!1616614 () Bool)

(assert (=> d!1616614 (= (tail!9897 lt!2078425) (t!370552 lt!2078425))))

(assert (=> b!5022152 d!1616614))

(assert (=> b!5022188 d!1616434))

(declare-fun d!1616616 () Bool)

(declare-fun lt!2078596 () C!27984)

(assert (=> d!1616616 (contains!19568 (list!18728 totalInput!1125) lt!2078596)))

(declare-fun e!3137463 () C!27984)

(assert (=> d!1616616 (= lt!2078596 e!3137463)))

(declare-fun c!858683 () Bool)

(assert (=> d!1616616 (= c!858683 (= from!1212 0))))

(declare-fun e!3137464 () Bool)

(assert (=> d!1616616 e!3137464))

(declare-fun res!2141286 () Bool)

(assert (=> d!1616616 (=> (not res!2141286) (not e!3137464))))

(assert (=> d!1616616 (= res!2141286 (<= 0 from!1212))))

(assert (=> d!1616616 (= (apply!14078 (list!18728 totalInput!1125) from!1212) lt!2078596)))

(declare-fun b!5022405 () Bool)

(assert (=> b!5022405 (= e!3137464 (< from!1212 (size!38630 (list!18728 totalInput!1125))))))

(declare-fun b!5022406 () Bool)

(assert (=> b!5022406 (= e!3137463 (head!10764 (list!18728 totalInput!1125)))))

(declare-fun b!5022407 () Bool)

(assert (=> b!5022407 (= e!3137463 (apply!14078 (tail!9897 (list!18728 totalInput!1125)) (- from!1212 1)))))

(assert (= (and d!1616616 res!2141286) b!5022405))

(assert (= (and d!1616616 c!858683) b!5022406))

(assert (= (and d!1616616 (not c!858683)) b!5022407))

(assert (=> d!1616616 m!6056968))

(declare-fun m!6057498 () Bool)

(assert (=> d!1616616 m!6057498))

(assert (=> b!5022405 m!6056968))

(assert (=> b!5022405 m!6056992))

(assert (=> b!5022406 m!6056968))

(declare-fun m!6057500 () Bool)

(assert (=> b!5022406 m!6057500))

(assert (=> b!5022407 m!6056968))

(declare-fun m!6057502 () Bool)

(assert (=> b!5022407 m!6057502))

(assert (=> b!5022407 m!6057502))

(declare-fun m!6057504 () Bool)

(assert (=> b!5022407 m!6057504))

(assert (=> d!1616496 d!1616616))

(assert (=> d!1616496 d!1616490))

(declare-fun d!1616618 () Bool)

(declare-fun lt!2078602 () C!27984)

(assert (=> d!1616618 (= lt!2078602 (apply!14078 (list!18730 (c!858479 totalInput!1125)) from!1212))))

(declare-fun e!3137473 () C!27984)

(assert (=> d!1616618 (= lt!2078602 e!3137473)))

(declare-fun c!858692 () Bool)

(assert (=> d!1616618 (= c!858692 ((_ is Leaf!25528) (c!858479 totalInput!1125)))))

(declare-fun e!3137475 () Bool)

(assert (=> d!1616618 e!3137475))

(declare-fun res!2141289 () Bool)

(assert (=> d!1616618 (=> (not res!2141289) (not e!3137475))))

(assert (=> d!1616618 (= res!2141289 (<= 0 from!1212))))

(assert (=> d!1616618 (= (apply!14080 (c!858479 totalInput!1125) from!1212) lt!2078602)))

(declare-fun bm!350650 () Bool)

(declare-fun c!858690 () Bool)

(declare-fun c!858691 () Bool)

(assert (=> bm!350650 (= c!858690 c!858691)))

(declare-fun call!350655 () C!27984)

(declare-fun e!3137474 () Int)

(assert (=> bm!350650 (= call!350655 (apply!14080 (ite c!858691 (left!42445 (c!858479 totalInput!1125)) (right!42775 (c!858479 totalInput!1125))) e!3137474))))

(declare-fun b!5022422 () Bool)

(declare-fun apply!14082 (IArray!30833 Int) C!27984)

(assert (=> b!5022422 (= e!3137473 (apply!14082 (xs!18712 (c!858479 totalInput!1125)) from!1212))))

(declare-fun b!5022423 () Bool)

(declare-fun e!3137476 () C!27984)

(assert (=> b!5022423 (= e!3137476 call!350655)))

(declare-fun b!5022424 () Bool)

(assert (=> b!5022424 (= e!3137474 (- from!1212 (size!38631 (left!42445 (c!858479 totalInput!1125)))))))

(declare-fun b!5022425 () Bool)

(assert (=> b!5022425 (= e!3137474 from!1212)))

(declare-fun b!5022426 () Bool)

(assert (=> b!5022426 (= e!3137476 call!350655)))

(declare-fun b!5022427 () Bool)

(assert (=> b!5022427 (= e!3137473 e!3137476)))

(declare-fun lt!2078601 () Bool)

(declare-fun appendIndex!398 (List!58168 List!58168 Int) Bool)

(assert (=> b!5022427 (= lt!2078601 (appendIndex!398 (list!18730 (left!42445 (c!858479 totalInput!1125))) (list!18730 (right!42775 (c!858479 totalInput!1125))) from!1212))))

(assert (=> b!5022427 (= c!858691 (< from!1212 (size!38631 (left!42445 (c!858479 totalInput!1125)))))))

(declare-fun b!5022428 () Bool)

(assert (=> b!5022428 (= e!3137475 (< from!1212 (size!38631 (c!858479 totalInput!1125))))))

(assert (= (and d!1616618 res!2141289) b!5022428))

(assert (= (and d!1616618 c!858692) b!5022422))

(assert (= (and d!1616618 (not c!858692)) b!5022427))

(assert (= (and b!5022427 c!858691) b!5022426))

(assert (= (and b!5022427 (not c!858691)) b!5022423))

(assert (= (or b!5022426 b!5022423) bm!350650))

(assert (= (and bm!350650 c!858690) b!5022425))

(assert (= (and bm!350650 (not c!858690)) b!5022424))

(assert (=> b!5022428 m!6056994))

(declare-fun m!6057506 () Bool)

(assert (=> b!5022422 m!6057506))

(assert (=> b!5022424 m!6057302))

(declare-fun m!6057508 () Bool)

(assert (=> b!5022427 m!6057508))

(declare-fun m!6057510 () Bool)

(assert (=> b!5022427 m!6057510))

(assert (=> b!5022427 m!6057508))

(assert (=> b!5022427 m!6057510))

(declare-fun m!6057512 () Bool)

(assert (=> b!5022427 m!6057512))

(assert (=> b!5022427 m!6057302))

(declare-fun m!6057514 () Bool)

(assert (=> bm!350650 m!6057514))

(assert (=> d!1616618 m!6057182))

(assert (=> d!1616618 m!6057182))

(declare-fun m!6057516 () Bool)

(assert (=> d!1616618 m!6057516))

(assert (=> d!1616496 d!1616618))

(assert (=> b!5022154 d!1616558))

(declare-fun d!1616620 () Bool)

(declare-fun lt!2078603 () Int)

(assert (=> d!1616620 (>= lt!2078603 0)))

(declare-fun e!3137477 () Int)

(assert (=> d!1616620 (= lt!2078603 e!3137477)))

(declare-fun c!858693 () Bool)

(assert (=> d!1616620 (= c!858693 ((_ is Nil!58044) lt!2078502))))

(assert (=> d!1616620 (= (size!38630 lt!2078502) lt!2078603)))

(declare-fun b!5022429 () Bool)

(assert (=> b!5022429 (= e!3137477 0)))

(declare-fun b!5022430 () Bool)

(assert (=> b!5022430 (= e!3137477 (+ 1 (size!38630 (t!370552 lt!2078502))))))

(assert (= (and d!1616620 c!858693) b!5022429))

(assert (= (and d!1616620 (not c!858693)) b!5022430))

(declare-fun m!6057518 () Bool)

(assert (=> b!5022430 m!6057518))

(assert (=> b!5022069 d!1616620))

(declare-fun bs!1187453 () Bool)

(declare-fun d!1616622 () Bool)

(assert (= bs!1187453 (and d!1616622 b!5022040)))

(declare-fun lambda!249008 () Int)

(assert (=> bs!1187453 (not (= lambda!249008 lambda!248971))))

(declare-fun bs!1187454 () Bool)

(assert (= bs!1187454 (and d!1616622 d!1616600)))

(assert (=> bs!1187454 (not (= lambda!249008 lambda!249005))))

(declare-fun bs!1187455 () Bool)

(assert (= bs!1187455 (and d!1616622 d!1616452)))

(assert (=> bs!1187455 (not (= lambda!249008 lambda!248969))))

(declare-fun bs!1187456 () Bool)

(assert (= bs!1187456 (and d!1616622 b!5022039)))

(assert (=> bs!1187456 (not (= lambda!249008 lambda!248970))))

(declare-fun bs!1187457 () Bool)

(assert (= bs!1187457 (and d!1616622 d!1616556)))

(assert (=> bs!1187457 (= lambda!249008 lambda!248997)))

(assert (=> d!1616622 true))

(assert (=> d!1616622 (< (dynLambda!23527 order!26703 lambda!248969) (dynLambda!23527 order!26703 lambda!249008))))

(assert (=> d!1616622 (not (exists!1382 lt!2078488 lambda!249008))))

(declare-fun lt!2078606 () Unit!149255)

(declare-fun choose!37158 (List!58170 Int) Unit!149255)

(assert (=> d!1616622 (= lt!2078606 (choose!37158 lt!2078488 lambda!248969))))

(assert (=> d!1616622 (forall!13412 lt!2078488 lambda!248969)))

(assert (=> d!1616622 (= (lemmaForallThenNotExists!247 lt!2078488 lambda!248969) lt!2078606)))

(declare-fun bs!1187458 () Bool)

(assert (= bs!1187458 d!1616622))

(declare-fun m!6057520 () Bool)

(assert (=> bs!1187458 m!6057520))

(declare-fun m!6057522 () Bool)

(assert (=> bs!1187458 m!6057522))

(declare-fun m!6057524 () Bool)

(assert (=> bs!1187458 m!6057524))

(assert (=> b!5022040 d!1616622))

(assert (=> b!5022150 d!1616604))

(declare-fun d!1616624 () Bool)

(declare-fun c!858694 () Bool)

(assert (=> d!1616624 (= c!858694 ((_ is Nil!58044) lt!2078502))))

(declare-fun e!3137480 () (InoxSet C!27984))

(assert (=> d!1616624 (= (content!10289 lt!2078502) e!3137480)))

(declare-fun b!5022431 () Bool)

(assert (=> b!5022431 (= e!3137480 ((as const (Array C!27984 Bool)) false))))

(declare-fun b!5022432 () Bool)

(assert (=> b!5022432 (= e!3137480 ((_ map or) (store ((as const (Array C!27984 Bool)) false) (h!64492 lt!2078502) true) (content!10289 (t!370552 lt!2078502))))))

(assert (= (and d!1616624 c!858694) b!5022431))

(assert (= (and d!1616624 (not c!858694)) b!5022432))

(declare-fun m!6057526 () Bool)

(assert (=> b!5022432 m!6057526))

(declare-fun m!6057528 () Bool)

(assert (=> b!5022432 m!6057528))

(assert (=> d!1616484 d!1616624))

(declare-fun d!1616626 () Bool)

(declare-fun c!858695 () Bool)

(assert (=> d!1616626 (= c!858695 ((_ is Nil!58044) lt!2078426))))

(declare-fun e!3137481 () (InoxSet C!27984))

(assert (=> d!1616626 (= (content!10289 lt!2078426) e!3137481)))

(declare-fun b!5022433 () Bool)

(assert (=> b!5022433 (= e!3137481 ((as const (Array C!27984 Bool)) false))))

(declare-fun b!5022434 () Bool)

(assert (=> b!5022434 (= e!3137481 ((_ map or) (store ((as const (Array C!27984 Bool)) false) (h!64492 lt!2078426) true) (content!10289 (t!370552 lt!2078426))))))

(assert (= (and d!1616626 c!858695) b!5022433))

(assert (= (and d!1616626 (not c!858695)) b!5022434))

(declare-fun m!6057530 () Bool)

(assert (=> b!5022434 m!6057530))

(assert (=> b!5022434 m!6057390))

(assert (=> d!1616484 d!1616626))

(declare-fun bs!1187459 () Bool)

(declare-fun d!1616628 () Bool)

(assert (= bs!1187459 (and d!1616628 d!1616622)))

(declare-fun lambda!249011 () Int)

(assert (=> bs!1187459 (not (= lambda!249011 lambda!249008))))

(declare-fun bs!1187460 () Bool)

(assert (= bs!1187460 (and d!1616628 b!5022040)))

(assert (=> bs!1187460 (not (= lambda!249011 lambda!248971))))

(declare-fun bs!1187461 () Bool)

(assert (= bs!1187461 (and d!1616628 d!1616600)))

(assert (=> bs!1187461 (not (= lambda!249011 lambda!249005))))

(declare-fun bs!1187462 () Bool)

(assert (= bs!1187462 (and d!1616628 d!1616452)))

(assert (=> bs!1187462 (not (= lambda!249011 lambda!248969))))

(declare-fun bs!1187463 () Bool)

(assert (= bs!1187463 (and d!1616628 b!5022039)))

(assert (=> bs!1187463 (not (= lambda!249011 lambda!248970))))

(declare-fun bs!1187464 () Bool)

(assert (= bs!1187464 (and d!1616628 d!1616556)))

(assert (=> bs!1187464 (not (= lambda!249011 lambda!248997))))

(assert (=> d!1616628 (= (nullableZipper!910 lt!2078536) (exists!1384 lt!2078536 lambda!249011))))

(declare-fun bs!1187465 () Bool)

(assert (= bs!1187465 d!1616628))

(declare-fun m!6057532 () Bool)

(assert (=> bs!1187465 m!6057532))

(assert (=> b!5022186 d!1616628))

(declare-fun bs!1187466 () Bool)

(declare-fun d!1616630 () Bool)

(assert (= bs!1187466 (and d!1616630 d!1616622)))

(declare-fun lambda!249012 () Int)

(assert (=> bs!1187466 (not (= lambda!249012 lambda!249008))))

(declare-fun bs!1187467 () Bool)

(assert (= bs!1187467 (and d!1616630 b!5022040)))

(assert (=> bs!1187467 (not (= lambda!249012 lambda!248971))))

(declare-fun bs!1187468 () Bool)

(assert (= bs!1187468 (and d!1616630 d!1616600)))

(assert (=> bs!1187468 (not (= lambda!249012 lambda!249005))))

(declare-fun bs!1187469 () Bool)

(assert (= bs!1187469 (and d!1616630 d!1616452)))

(assert (=> bs!1187469 (not (= lambda!249012 lambda!248969))))

(declare-fun bs!1187470 () Bool)

(assert (= bs!1187470 (and d!1616630 b!5022039)))

(assert (=> bs!1187470 (not (= lambda!249012 lambda!248970))))

(declare-fun bs!1187471 () Bool)

(assert (= bs!1187471 (and d!1616630 d!1616628)))

(assert (=> bs!1187471 (= lambda!249012 lambda!249011)))

(declare-fun bs!1187472 () Bool)

(assert (= bs!1187472 (and d!1616630 d!1616556)))

(assert (=> bs!1187472 (not (= lambda!249012 lambda!248997))))

(assert (=> d!1616630 (= (nullableZipper!910 lt!2078430) (exists!1384 lt!2078430 lambda!249012))))

(declare-fun bs!1187473 () Bool)

(assert (= bs!1187473 d!1616630))

(declare-fun m!6057534 () Bool)

(assert (=> bs!1187473 m!6057534))

(assert (=> b!5021898 d!1616630))

(assert (=> b!5022174 d!1616558))

(assert (=> b!5022172 d!1616604))

(declare-fun bs!1187474 () Bool)

(declare-fun d!1616632 () Bool)

(assert (= bs!1187474 (and d!1616632 d!1616630)))

(declare-fun lambda!249013 () Int)

(assert (=> bs!1187474 (not (= lambda!249013 lambda!249012))))

(declare-fun bs!1187475 () Bool)

(assert (= bs!1187475 (and d!1616632 d!1616622)))

(assert (=> bs!1187475 (not (= lambda!249013 lambda!249008))))

(declare-fun bs!1187476 () Bool)

(assert (= bs!1187476 (and d!1616632 b!5022040)))

(assert (=> bs!1187476 (not (= lambda!249013 lambda!248971))))

(declare-fun bs!1187477 () Bool)

(assert (= bs!1187477 (and d!1616632 d!1616600)))

(assert (=> bs!1187477 (not (= lambda!249013 lambda!249005))))

(declare-fun bs!1187478 () Bool)

(assert (= bs!1187478 (and d!1616632 d!1616452)))

(assert (=> bs!1187478 (= lambda!249013 lambda!248969)))

(declare-fun bs!1187479 () Bool)

(assert (= bs!1187479 (and d!1616632 b!5022039)))

(assert (=> bs!1187479 (not (= lambda!249013 lambda!248970))))

(declare-fun bs!1187480 () Bool)

(assert (= bs!1187480 (and d!1616632 d!1616628)))

(assert (=> bs!1187480 (not (= lambda!249013 lambda!249011))))

(declare-fun bs!1187481 () Bool)

(assert (= bs!1187481 (and d!1616632 d!1616556)))

(assert (=> bs!1187481 (not (= lambda!249013 lambda!248997))))

(declare-fun bs!1187482 () Bool)

(declare-fun b!5022435 () Bool)

(assert (= bs!1187482 (and b!5022435 d!1616630)))

(declare-fun lambda!249014 () Int)

(assert (=> bs!1187482 (not (= lambda!249014 lambda!249012))))

(declare-fun bs!1187483 () Bool)

(assert (= bs!1187483 (and b!5022435 d!1616622)))

(assert (=> bs!1187483 (not (= lambda!249014 lambda!249008))))

(declare-fun bs!1187484 () Bool)

(assert (= bs!1187484 (and b!5022435 b!5022040)))

(assert (=> bs!1187484 (= lambda!249014 lambda!248971)))

(declare-fun bs!1187485 () Bool)

(assert (= bs!1187485 (and b!5022435 d!1616600)))

(assert (=> bs!1187485 (= lambda!249014 lambda!249005)))

(declare-fun bs!1187486 () Bool)

(assert (= bs!1187486 (and b!5022435 d!1616452)))

(assert (=> bs!1187486 (not (= lambda!249014 lambda!248969))))

(declare-fun bs!1187487 () Bool)

(assert (= bs!1187487 (and b!5022435 d!1616632)))

(assert (=> bs!1187487 (not (= lambda!249014 lambda!249013))))

(declare-fun bs!1187488 () Bool)

(assert (= bs!1187488 (and b!5022435 b!5022039)))

(assert (=> bs!1187488 (= lambda!249014 lambda!248970)))

(declare-fun bs!1187489 () Bool)

(assert (= bs!1187489 (and b!5022435 d!1616628)))

(assert (=> bs!1187489 (not (= lambda!249014 lambda!249011))))

(declare-fun bs!1187490 () Bool)

(assert (= bs!1187490 (and b!5022435 d!1616556)))

(assert (=> bs!1187490 (not (= lambda!249014 lambda!248997))))

(declare-fun bs!1187491 () Bool)

(declare-fun b!5022436 () Bool)

(assert (= bs!1187491 (and b!5022436 d!1616630)))

(declare-fun lambda!249015 () Int)

(assert (=> bs!1187491 (not (= lambda!249015 lambda!249012))))

(declare-fun bs!1187492 () Bool)

(assert (= bs!1187492 (and b!5022436 d!1616622)))

(assert (=> bs!1187492 (not (= lambda!249015 lambda!249008))))

(declare-fun bs!1187493 () Bool)

(assert (= bs!1187493 (and b!5022436 b!5022040)))

(assert (=> bs!1187493 (= lambda!249015 lambda!248971)))

(declare-fun bs!1187494 () Bool)

(assert (= bs!1187494 (and b!5022436 d!1616600)))

(assert (=> bs!1187494 (= lambda!249015 lambda!249005)))

(declare-fun bs!1187495 () Bool)

(assert (= bs!1187495 (and b!5022436 d!1616452)))

(assert (=> bs!1187495 (not (= lambda!249015 lambda!248969))))

(declare-fun bs!1187496 () Bool)

(assert (= bs!1187496 (and b!5022436 b!5022435)))

(assert (=> bs!1187496 (= lambda!249015 lambda!249014)))

(declare-fun bs!1187497 () Bool)

(assert (= bs!1187497 (and b!5022436 d!1616632)))

(assert (=> bs!1187497 (not (= lambda!249015 lambda!249013))))

(declare-fun bs!1187498 () Bool)

(assert (= bs!1187498 (and b!5022436 b!5022039)))

(assert (=> bs!1187498 (= lambda!249015 lambda!248970)))

(declare-fun bs!1187499 () Bool)

(assert (= bs!1187499 (and b!5022436 d!1616628)))

(assert (=> bs!1187499 (not (= lambda!249015 lambda!249011))))

(declare-fun bs!1187500 () Bool)

(assert (= bs!1187500 (and b!5022436 d!1616556)))

(assert (=> bs!1187500 (not (= lambda!249015 lambda!248997))))

(declare-fun bm!350651 () Bool)

(declare-fun call!350657 () List!58170)

(assert (=> bm!350651 (= call!350657 (toList!8115 lt!2078430))))

(declare-fun e!3137482 () Unit!149255)

(declare-fun Unit!149263 () Unit!149255)

(assert (=> b!5022435 (= e!3137482 Unit!149263)))

(declare-fun lt!2078610 () List!58170)

(assert (=> b!5022435 (= lt!2078610 call!350657)))

(declare-fun lt!2078607 () Unit!149255)

(assert (=> b!5022435 (= lt!2078607 (lemmaNotForallThenExists!264 lt!2078610 lambda!249013))))

(declare-fun call!350656 () Bool)

(assert (=> b!5022435 call!350656))

(declare-fun lt!2078613 () Unit!149255)

(assert (=> b!5022435 (= lt!2078613 lt!2078607)))

(declare-fun c!858698 () Bool)

(declare-fun bm!350652 () Bool)

(declare-fun lt!2078609 () List!58170)

(assert (=> bm!350652 (= call!350656 (exists!1382 (ite c!858698 lt!2078610 lt!2078609) (ite c!858698 lambda!249014 lambda!249015)))))

(declare-fun lt!2078608 () Bool)

(assert (=> d!1616632 (= lt!2078608 (isEmpty!31433 (getLanguageWitness!729 lt!2078430)))))

(assert (=> d!1616632 (= lt!2078608 (forall!13409 lt!2078430 lambda!249013))))

(declare-fun lt!2078612 () Unit!149255)

(assert (=> d!1616632 (= lt!2078612 e!3137482)))

(assert (=> d!1616632 (= c!858698 (not (forall!13409 lt!2078430 lambda!249013)))))

(assert (=> d!1616632 (= (lostCauseZipper!881 lt!2078430) lt!2078608)))

(declare-fun Unit!149264 () Unit!149255)

(assert (=> b!5022436 (= e!3137482 Unit!149264)))

(assert (=> b!5022436 (= lt!2078609 call!350657)))

(declare-fun lt!2078614 () Unit!149255)

(assert (=> b!5022436 (= lt!2078614 (lemmaForallThenNotExists!247 lt!2078609 lambda!249013))))

(assert (=> b!5022436 (not call!350656)))

(declare-fun lt!2078611 () Unit!149255)

(assert (=> b!5022436 (= lt!2078611 lt!2078614)))

(assert (= (and d!1616632 c!858698) b!5022435))

(assert (= (and d!1616632 (not c!858698)) b!5022436))

(assert (= (or b!5022435 b!5022436) bm!350651))

(assert (= (or b!5022435 b!5022436) bm!350652))

(declare-fun m!6057536 () Bool)

(assert (=> bm!350651 m!6057536))

(declare-fun m!6057538 () Bool)

(assert (=> bm!350652 m!6057538))

(declare-fun m!6057540 () Bool)

(assert (=> d!1616632 m!6057540))

(assert (=> d!1616632 m!6057540))

(declare-fun m!6057542 () Bool)

(assert (=> d!1616632 m!6057542))

(declare-fun m!6057544 () Bool)

(assert (=> d!1616632 m!6057544))

(assert (=> d!1616632 m!6057544))

(declare-fun m!6057546 () Bool)

(assert (=> b!5022435 m!6057546))

(declare-fun m!6057548 () Bool)

(assert (=> b!5022436 m!6057548))

(assert (=> b!5022184 d!1616632))

(declare-fun d!1616634 () Bool)

(declare-fun c!858699 () Bool)

(assert (=> d!1616634 (= c!858699 ((_ is Nil!58044) lt!2078526))))

(declare-fun e!3137483 () (InoxSet C!27984))

(assert (=> d!1616634 (= (content!10289 lt!2078526) e!3137483)))

(declare-fun b!5022437 () Bool)

(assert (=> b!5022437 (= e!3137483 ((as const (Array C!27984 Bool)) false))))

(declare-fun b!5022438 () Bool)

(assert (=> b!5022438 (= e!3137483 ((_ map or) (store ((as const (Array C!27984 Bool)) false) (h!64492 lt!2078526) true) (content!10289 (t!370552 lt!2078526))))))

(assert (= (and d!1616634 c!858699) b!5022437))

(assert (= (and d!1616634 (not c!858699)) b!5022438))

(declare-fun m!6057550 () Bool)

(assert (=> b!5022438 m!6057550))

(declare-fun m!6057552 () Bool)

(assert (=> b!5022438 m!6057552))

(assert (=> d!1616506 d!1616634))

(assert (=> d!1616506 d!1616626))

(declare-fun d!1616636 () Bool)

(declare-fun lt!2078615 () Int)

(assert (=> d!1616636 (>= lt!2078615 0)))

(declare-fun e!3137484 () Int)

(assert (=> d!1616636 (= lt!2078615 e!3137484)))

(declare-fun c!858700 () Bool)

(assert (=> d!1616636 (= c!858700 ((_ is Nil!58044) lt!2078526))))

(assert (=> d!1616636 (= (size!38630 lt!2078526) lt!2078615)))

(declare-fun b!5022439 () Bool)

(assert (=> b!5022439 (= e!3137484 0)))

(declare-fun b!5022440 () Bool)

(assert (=> b!5022440 (= e!3137484 (+ 1 (size!38630 (t!370552 lt!2078526))))))

(assert (= (and d!1616636 c!858700) b!5022439))

(assert (= (and d!1616636 (not c!858700)) b!5022440))

(declare-fun m!6057554 () Bool)

(assert (=> b!5022440 m!6057554))

(assert (=> b!5022160 d!1616636))

(declare-fun bs!1187501 () Bool)

(declare-fun d!1616638 () Bool)

(assert (= bs!1187501 (and d!1616638 d!1616524)))

(declare-fun lambda!249016 () Int)

(assert (=> bs!1187501 (= lambda!249016 lambda!248992)))

(assert (=> d!1616638 (= (inv!76429 setElem!28722) (forall!13410 (exprs!3792 setElem!28722) lambda!249016))))

(declare-fun bs!1187502 () Bool)

(assert (= bs!1187502 d!1616638))

(declare-fun m!6057556 () Bool)

(assert (=> bs!1187502 m!6057556))

(assert (=> setNonEmpty!28722 d!1616638))

(assert (=> b!5021929 d!1616434))

(declare-fun d!1616640 () Bool)

(declare-fun lt!2078616 () Int)

(assert (=> d!1616640 (>= lt!2078616 0)))

(declare-fun e!3137485 () Int)

(assert (=> d!1616640 (= lt!2078616 e!3137485)))

(declare-fun c!858701 () Bool)

(assert (=> d!1616640 (= c!858701 ((_ is Nil!58044) (t!370552 lt!2078420)))))

(assert (=> d!1616640 (= (size!38630 (t!370552 lt!2078420)) lt!2078616)))

(declare-fun b!5022441 () Bool)

(assert (=> b!5022441 (= e!3137485 0)))

(declare-fun b!5022442 () Bool)

(assert (=> b!5022442 (= e!3137485 (+ 1 (size!38630 (t!370552 (t!370552 lt!2078420)))))))

(assert (= (and d!1616640 c!858701) b!5022441))

(assert (= (and d!1616640 (not c!858701)) b!5022442))

(declare-fun m!6057558 () Bool)

(assert (=> b!5022442 m!6057558))

(assert (=> b!5021905 d!1616640))

(declare-fun bs!1187503 () Bool)

(declare-fun d!1616642 () Bool)

(assert (= bs!1187503 (and d!1616642 d!1616630)))

(declare-fun lambda!249017 () Int)

(assert (=> bs!1187503 (= lambda!249017 lambda!249012)))

(declare-fun bs!1187504 () Bool)

(assert (= bs!1187504 (and d!1616642 d!1616622)))

(assert (=> bs!1187504 (not (= lambda!249017 lambda!249008))))

(declare-fun bs!1187505 () Bool)

(assert (= bs!1187505 (and d!1616642 b!5022040)))

(assert (=> bs!1187505 (not (= lambda!249017 lambda!248971))))

(declare-fun bs!1187506 () Bool)

(assert (= bs!1187506 (and d!1616642 d!1616600)))

(assert (=> bs!1187506 (not (= lambda!249017 lambda!249005))))

(declare-fun bs!1187507 () Bool)

(assert (= bs!1187507 (and d!1616642 d!1616452)))

(assert (=> bs!1187507 (not (= lambda!249017 lambda!248969))))

(declare-fun bs!1187508 () Bool)

(assert (= bs!1187508 (and d!1616642 b!5022435)))

(assert (=> bs!1187508 (not (= lambda!249017 lambda!249014))))

(declare-fun bs!1187509 () Bool)

(assert (= bs!1187509 (and d!1616642 d!1616632)))

(assert (=> bs!1187509 (not (= lambda!249017 lambda!249013))))

(declare-fun bs!1187510 () Bool)

(assert (= bs!1187510 (and d!1616642 b!5022039)))

(assert (=> bs!1187510 (not (= lambda!249017 lambda!248970))))

(declare-fun bs!1187511 () Bool)

(assert (= bs!1187511 (and d!1616642 b!5022436)))

(assert (=> bs!1187511 (not (= lambda!249017 lambda!249015))))

(declare-fun bs!1187512 () Bool)

(assert (= bs!1187512 (and d!1616642 d!1616628)))

(assert (=> bs!1187512 (= lambda!249017 lambda!249011)))

(declare-fun bs!1187513 () Bool)

(assert (= bs!1187513 (and d!1616642 d!1616556)))

(assert (=> bs!1187513 (not (= lambda!249017 lambda!248997))))

(assert (=> d!1616642 (= (nullableZipper!910 z!4710) (exists!1384 z!4710 lambda!249017))))

(declare-fun bs!1187514 () Bool)

(assert (= bs!1187514 d!1616642))

(declare-fun m!6057560 () Bool)

(assert (=> bs!1187514 m!6057560))

(assert (=> b!5022041 d!1616642))

(declare-fun d!1616644 () Bool)

(declare-fun c!858702 () Bool)

(assert (=> d!1616644 (= c!858702 ((_ is Nil!58044) lt!2078514))))

(declare-fun e!3137486 () (InoxSet C!27984))

(assert (=> d!1616644 (= (content!10289 lt!2078514) e!3137486)))

(declare-fun b!5022443 () Bool)

(assert (=> b!5022443 (= e!3137486 ((as const (Array C!27984 Bool)) false))))

(declare-fun b!5022444 () Bool)

(assert (=> b!5022444 (= e!3137486 ((_ map or) (store ((as const (Array C!27984 Bool)) false) (h!64492 lt!2078514) true) (content!10289 (t!370552 lt!2078514))))))

(assert (= (and d!1616644 c!858702) b!5022443))

(assert (= (and d!1616644 (not c!858702)) b!5022444))

(declare-fun m!6057562 () Bool)

(assert (=> b!5022444 m!6057562))

(declare-fun m!6057564 () Bool)

(assert (=> b!5022444 m!6057564))

(assert (=> d!1616494 d!1616644))

(assert (=> d!1616494 d!1616574))

(declare-fun b!5022445 () Bool)

(declare-fun e!3137487 () List!58168)

(assert (=> b!5022445 (= e!3137487 (drop!2530 (t!370552 (t!370552 lt!2078425)) (- (- (+ 1 from!1212) 1) 1)))))

(declare-fun b!5022446 () Bool)

(declare-fun e!3137489 () List!58168)

(assert (=> b!5022446 (= e!3137489 e!3137487)))

(declare-fun c!858704 () Bool)

(assert (=> b!5022446 (= c!858704 (<= (- (+ 1 from!1212) 1) 0))))

(declare-fun d!1616646 () Bool)

(declare-fun e!3137490 () Bool)

(assert (=> d!1616646 e!3137490))

(declare-fun res!2141290 () Bool)

(assert (=> d!1616646 (=> (not res!2141290) (not e!3137490))))

(declare-fun lt!2078617 () List!58168)

(assert (=> d!1616646 (= res!2141290 (= ((_ map implies) (content!10289 lt!2078617) (content!10289 (t!370552 lt!2078425))) ((as const (InoxSet C!27984)) true)))))

(assert (=> d!1616646 (= lt!2078617 e!3137489)))

(declare-fun c!858705 () Bool)

(assert (=> d!1616646 (= c!858705 ((_ is Nil!58044) (t!370552 lt!2078425)))))

(assert (=> d!1616646 (= (drop!2530 (t!370552 lt!2078425) (- (+ 1 from!1212) 1)) lt!2078617)))

(declare-fun b!5022447 () Bool)

(declare-fun e!3137491 () Int)

(declare-fun call!350658 () Int)

(assert (=> b!5022447 (= e!3137491 call!350658)))

(declare-fun b!5022448 () Bool)

(declare-fun e!3137488 () Int)

(assert (=> b!5022448 (= e!3137488 0)))

(declare-fun b!5022449 () Bool)

(assert (=> b!5022449 (= e!3137490 (= (size!38630 lt!2078617) e!3137491))))

(declare-fun c!858703 () Bool)

(assert (=> b!5022449 (= c!858703 (<= (- (+ 1 from!1212) 1) 0))))

(declare-fun b!5022450 () Bool)

(assert (=> b!5022450 (= e!3137491 e!3137488)))

(declare-fun c!858706 () Bool)

(assert (=> b!5022450 (= c!858706 (>= (- (+ 1 from!1212) 1) call!350658))))

(declare-fun bm!350653 () Bool)

(assert (=> bm!350653 (= call!350658 (size!38630 (t!370552 lt!2078425)))))

(declare-fun b!5022451 () Bool)

(assert (=> b!5022451 (= e!3137488 (- call!350658 (- (+ 1 from!1212) 1)))))

(declare-fun b!5022452 () Bool)

(assert (=> b!5022452 (= e!3137489 Nil!58044)))

(declare-fun b!5022453 () Bool)

(assert (=> b!5022453 (= e!3137487 (t!370552 lt!2078425))))

(assert (= (and d!1616646 c!858705) b!5022452))

(assert (= (and d!1616646 (not c!858705)) b!5022446))

(assert (= (and b!5022446 c!858704) b!5022453))

(assert (= (and b!5022446 (not c!858704)) b!5022445))

(assert (= (and d!1616646 res!2141290) b!5022449))

(assert (= (and b!5022449 c!858703) b!5022447))

(assert (= (and b!5022449 (not c!858703)) b!5022450))

(assert (= (and b!5022450 c!858706) b!5022448))

(assert (= (and b!5022450 (not c!858706)) b!5022451))

(assert (= (or b!5022447 b!5022450 b!5022451) bm!350653))

(declare-fun m!6057566 () Bool)

(assert (=> b!5022445 m!6057566))

(declare-fun m!6057568 () Bool)

(assert (=> d!1616646 m!6057568))

(assert (=> d!1616646 m!6057408))

(declare-fun m!6057570 () Bool)

(assert (=> b!5022449 m!6057570))

(assert (=> bm!350653 m!6057474))

(assert (=> b!5022122 d!1616646))

(declare-fun bs!1187515 () Bool)

(declare-fun d!1616648 () Bool)

(assert (= bs!1187515 (and d!1616648 d!1616630)))

(declare-fun lambda!249018 () Int)

(assert (=> bs!1187515 (= lambda!249018 lambda!249012)))

(declare-fun bs!1187516 () Bool)

(assert (= bs!1187516 (and d!1616648 d!1616622)))

(assert (=> bs!1187516 (not (= lambda!249018 lambda!249008))))

(declare-fun bs!1187517 () Bool)

(assert (= bs!1187517 (and d!1616648 b!5022040)))

(assert (=> bs!1187517 (not (= lambda!249018 lambda!248971))))

(declare-fun bs!1187518 () Bool)

(assert (= bs!1187518 (and d!1616648 d!1616452)))

(assert (=> bs!1187518 (not (= lambda!249018 lambda!248969))))

(declare-fun bs!1187519 () Bool)

(assert (= bs!1187519 (and d!1616648 b!5022435)))

(assert (=> bs!1187519 (not (= lambda!249018 lambda!249014))))

(declare-fun bs!1187520 () Bool)

(assert (= bs!1187520 (and d!1616648 d!1616632)))

(assert (=> bs!1187520 (not (= lambda!249018 lambda!249013))))

(declare-fun bs!1187521 () Bool)

(assert (= bs!1187521 (and d!1616648 b!5022039)))

(assert (=> bs!1187521 (not (= lambda!249018 lambda!248970))))

(declare-fun bs!1187522 () Bool)

(assert (= bs!1187522 (and d!1616648 b!5022436)))

(assert (=> bs!1187522 (not (= lambda!249018 lambda!249015))))

(declare-fun bs!1187523 () Bool)

(assert (= bs!1187523 (and d!1616648 d!1616600)))

(assert (=> bs!1187523 (not (= lambda!249018 lambda!249005))))

(declare-fun bs!1187524 () Bool)

(assert (= bs!1187524 (and d!1616648 d!1616642)))

(assert (=> bs!1187524 (= lambda!249018 lambda!249017)))

(declare-fun bs!1187525 () Bool)

(assert (= bs!1187525 (and d!1616648 d!1616628)))

(assert (=> bs!1187525 (= lambda!249018 lambda!249011)))

(declare-fun bs!1187526 () Bool)

(assert (= bs!1187526 (and d!1616648 d!1616556)))

(assert (=> bs!1187526 (not (= lambda!249018 lambda!248997))))

(assert (=> d!1616648 (= (nullableZipper!910 lt!2078447) (exists!1384 lt!2078447 lambda!249018))))

(declare-fun bs!1187527 () Bool)

(assert (= bs!1187527 d!1616648))

(declare-fun m!6057572 () Bool)

(assert (=> bs!1187527 m!6057572))

(assert (=> b!5021927 d!1616648))

(declare-fun d!1616650 () Bool)

(declare-fun lt!2078618 () Int)

(assert (=> d!1616650 (>= lt!2078618 0)))

(declare-fun e!3137492 () Int)

(assert (=> d!1616650 (= lt!2078618 e!3137492)))

(declare-fun c!858707 () Bool)

(assert (=> d!1616650 (= c!858707 ((_ is Nil!58044) (list!18728 totalInput!1125)))))

(assert (=> d!1616650 (= (size!38630 (list!18728 totalInput!1125)) lt!2078618)))

(declare-fun b!5022454 () Bool)

(assert (=> b!5022454 (= e!3137492 0)))

(declare-fun b!5022455 () Bool)

(assert (=> b!5022455 (= e!3137492 (+ 1 (size!38630 (t!370552 (list!18728 totalInput!1125)))))))

(assert (= (and d!1616650 c!858707) b!5022454))

(assert (= (and d!1616650 (not c!858707)) b!5022455))

(declare-fun m!6057574 () Bool)

(assert (=> b!5022455 m!6057574))

(assert (=> d!1616434 d!1616650))

(assert (=> d!1616434 d!1616490))

(declare-fun d!1616652 () Bool)

(declare-fun lt!2078621 () Int)

(assert (=> d!1616652 (= lt!2078621 (size!38630 (list!18730 (c!858479 totalInput!1125))))))

(assert (=> d!1616652 (= lt!2078621 (ite ((_ is Empty!15386) (c!858479 totalInput!1125)) 0 (ite ((_ is Leaf!25528) (c!858479 totalInput!1125)) (csize!31003 (c!858479 totalInput!1125)) (csize!31002 (c!858479 totalInput!1125)))))))

(assert (=> d!1616652 (= (size!38631 (c!858479 totalInput!1125)) lt!2078621)))

(declare-fun bs!1187528 () Bool)

(assert (= bs!1187528 d!1616652))

(assert (=> bs!1187528 m!6057182))

(assert (=> bs!1187528 m!6057182))

(declare-fun m!6057576 () Bool)

(assert (=> bs!1187528 m!6057576))

(assert (=> d!1616434 d!1616652))

(declare-fun b!5022456 () Bool)

(declare-fun e!3137493 () List!58168)

(assert (=> b!5022456 (= e!3137493 (drop!2530 (t!370552 (t!370552 lt!2078425)) (- (- from!1212 1) 1)))))

(declare-fun b!5022457 () Bool)

(declare-fun e!3137495 () List!58168)

(assert (=> b!5022457 (= e!3137495 e!3137493)))

(declare-fun c!858709 () Bool)

(assert (=> b!5022457 (= c!858709 (<= (- from!1212 1) 0))))

(declare-fun d!1616654 () Bool)

(declare-fun e!3137496 () Bool)

(assert (=> d!1616654 e!3137496))

(declare-fun res!2141291 () Bool)

(assert (=> d!1616654 (=> (not res!2141291) (not e!3137496))))

(declare-fun lt!2078622 () List!58168)

(assert (=> d!1616654 (= res!2141291 (= ((_ map implies) (content!10289 lt!2078622) (content!10289 (t!370552 lt!2078425))) ((as const (InoxSet C!27984)) true)))))

(assert (=> d!1616654 (= lt!2078622 e!3137495)))

(declare-fun c!858710 () Bool)

(assert (=> d!1616654 (= c!858710 ((_ is Nil!58044) (t!370552 lt!2078425)))))

(assert (=> d!1616654 (= (drop!2530 (t!370552 lt!2078425) (- from!1212 1)) lt!2078622)))

(declare-fun b!5022458 () Bool)

(declare-fun e!3137497 () Int)

(declare-fun call!350659 () Int)

(assert (=> b!5022458 (= e!3137497 call!350659)))

(declare-fun b!5022459 () Bool)

(declare-fun e!3137494 () Int)

(assert (=> b!5022459 (= e!3137494 0)))

(declare-fun b!5022460 () Bool)

(assert (=> b!5022460 (= e!3137496 (= (size!38630 lt!2078622) e!3137497))))

(declare-fun c!858708 () Bool)

(assert (=> b!5022460 (= c!858708 (<= (- from!1212 1) 0))))

(declare-fun b!5022461 () Bool)

(assert (=> b!5022461 (= e!3137497 e!3137494)))

(declare-fun c!858711 () Bool)

(assert (=> b!5022461 (= c!858711 (>= (- from!1212 1) call!350659))))

(declare-fun bm!350654 () Bool)

(assert (=> bm!350654 (= call!350659 (size!38630 (t!370552 lt!2078425)))))

(declare-fun b!5022462 () Bool)

(assert (=> b!5022462 (= e!3137494 (- call!350659 (- from!1212 1)))))

(declare-fun b!5022463 () Bool)

(assert (=> b!5022463 (= e!3137495 Nil!58044)))

(declare-fun b!5022464 () Bool)

(assert (=> b!5022464 (= e!3137493 (t!370552 lt!2078425))))

(assert (= (and d!1616654 c!858710) b!5022463))

(assert (= (and d!1616654 (not c!858710)) b!5022457))

(assert (= (and b!5022457 c!858709) b!5022464))

(assert (= (and b!5022457 (not c!858709)) b!5022456))

(assert (= (and d!1616654 res!2141291) b!5022460))

(assert (= (and b!5022460 c!858708) b!5022458))

(assert (= (and b!5022460 (not c!858708)) b!5022461))

(assert (= (and b!5022461 c!858711) b!5022459))

(assert (= (and b!5022461 (not c!858711)) b!5022462))

(assert (= (or b!5022458 b!5022461 b!5022462) bm!350654))

(declare-fun m!6057578 () Bool)

(assert (=> b!5022456 m!6057578))

(declare-fun m!6057580 () Bool)

(assert (=> d!1616654 m!6057580))

(assert (=> d!1616654 m!6057408))

(declare-fun m!6057582 () Bool)

(assert (=> b!5022460 m!6057582))

(assert (=> bm!350654 m!6057474))

(assert (=> b!5022108 d!1616654))

(declare-fun b!5022465 () Bool)

(declare-fun e!3137498 () Bool)

(declare-fun lt!2078623 () List!58168)

(declare-fun e!3137501 () Int)

(assert (=> b!5022465 (= e!3137498 (= (size!38630 lt!2078623) e!3137501))))

(declare-fun c!858712 () Bool)

(assert (=> b!5022465 (= c!858712 (<= (- knownSize!24 1) 0))))

(declare-fun b!5022466 () Bool)

(declare-fun e!3137500 () Int)

(assert (=> b!5022466 (= e!3137500 (size!38630 (t!370552 lt!2078426)))))

(declare-fun b!5022467 () Bool)

(assert (=> b!5022467 (= e!3137501 e!3137500)))

(declare-fun c!858713 () Bool)

(assert (=> b!5022467 (= c!858713 (>= (- knownSize!24 1) (size!38630 (t!370552 lt!2078426))))))

(declare-fun b!5022468 () Bool)

(assert (=> b!5022468 (= e!3137500 (- knownSize!24 1))))

(declare-fun b!5022469 () Bool)

(declare-fun e!3137499 () List!58168)

(assert (=> b!5022469 (= e!3137499 (Cons!58044 (h!64492 (t!370552 lt!2078426)) (take!726 (t!370552 (t!370552 lt!2078426)) (- (- knownSize!24 1) 1))))))

(declare-fun d!1616656 () Bool)

(assert (=> d!1616656 e!3137498))

(declare-fun res!2141292 () Bool)

(assert (=> d!1616656 (=> (not res!2141292) (not e!3137498))))

(assert (=> d!1616656 (= res!2141292 (= ((_ map implies) (content!10289 lt!2078623) (content!10289 (t!370552 lt!2078426))) ((as const (InoxSet C!27984)) true)))))

(assert (=> d!1616656 (= lt!2078623 e!3137499)))

(declare-fun c!858714 () Bool)

(assert (=> d!1616656 (= c!858714 (or ((_ is Nil!58044) (t!370552 lt!2078426)) (<= (- knownSize!24 1) 0)))))

(assert (=> d!1616656 (= (take!726 (t!370552 lt!2078426) (- knownSize!24 1)) lt!2078623)))

(declare-fun b!5022470 () Bool)

(assert (=> b!5022470 (= e!3137499 Nil!58044)))

(declare-fun b!5022471 () Bool)

(assert (=> b!5022471 (= e!3137501 0)))

(assert (= (and d!1616656 c!858714) b!5022470))

(assert (= (and d!1616656 (not c!858714)) b!5022469))

(assert (= (and d!1616656 res!2141292) b!5022465))

(assert (= (and b!5022465 c!858712) b!5022471))

(assert (= (and b!5022465 (not c!858712)) b!5022467))

(assert (= (and b!5022467 c!858713) b!5022466))

(assert (= (and b!5022467 (not c!858713)) b!5022468))

(assert (=> b!5022467 m!6057314))

(assert (=> b!5022466 m!6057314))

(declare-fun m!6057584 () Bool)

(assert (=> b!5022469 m!6057584))

(declare-fun m!6057586 () Bool)

(assert (=> b!5022465 m!6057586))

(declare-fun m!6057588 () Bool)

(assert (=> d!1616656 m!6057588))

(assert (=> d!1616656 m!6057390))

(assert (=> b!5022073 d!1616656))

(assert (=> b!5021925 d!1616452))

(assert (=> b!5022071 d!1616530))

(declare-fun bs!1187529 () Bool)

(declare-fun d!1616658 () Bool)

(assert (= bs!1187529 (and d!1616658 d!1616630)))

(declare-fun lambda!249021 () Int)

(assert (=> bs!1187529 (not (= lambda!249021 lambda!249012))))

(declare-fun bs!1187530 () Bool)

(assert (= bs!1187530 (and d!1616658 d!1616622)))

(assert (=> bs!1187530 (= (= (ite c!858555 lambda!248970 lambda!248971) lambda!248969) (= lambda!249021 lambda!249008))))

(declare-fun bs!1187531 () Bool)

(assert (= bs!1187531 (and d!1616658 b!5022040)))

(assert (=> bs!1187531 (not (= lambda!249021 lambda!248971))))

(declare-fun bs!1187532 () Bool)

(assert (= bs!1187532 (and d!1616658 d!1616452)))

(assert (=> bs!1187532 (not (= lambda!249021 lambda!248969))))

(declare-fun bs!1187533 () Bool)

(assert (= bs!1187533 (and d!1616658 b!5022435)))

(assert (=> bs!1187533 (not (= lambda!249021 lambda!249014))))

(declare-fun bs!1187534 () Bool)

(assert (= bs!1187534 (and d!1616658 d!1616632)))

(assert (=> bs!1187534 (not (= lambda!249021 lambda!249013))))

(declare-fun bs!1187535 () Bool)

(assert (= bs!1187535 (and d!1616658 b!5022436)))

(assert (=> bs!1187535 (not (= lambda!249021 lambda!249015))))

(declare-fun bs!1187536 () Bool)

(assert (= bs!1187536 (and d!1616658 d!1616600)))

(assert (=> bs!1187536 (not (= lambda!249021 lambda!249005))))

(declare-fun bs!1187537 () Bool)

(assert (= bs!1187537 (and d!1616658 d!1616642)))

(assert (=> bs!1187537 (not (= lambda!249021 lambda!249017))))

(declare-fun bs!1187538 () Bool)

(assert (= bs!1187538 (and d!1616658 d!1616648)))

(assert (=> bs!1187538 (not (= lambda!249021 lambda!249018))))

(declare-fun bs!1187539 () Bool)

(assert (= bs!1187539 (and d!1616658 b!5022039)))

(assert (=> bs!1187539 (not (= lambda!249021 lambda!248970))))

(declare-fun bs!1187540 () Bool)

(assert (= bs!1187540 (and d!1616658 d!1616628)))

(assert (=> bs!1187540 (not (= lambda!249021 lambda!249011))))

(declare-fun bs!1187541 () Bool)

(assert (= bs!1187541 (and d!1616658 d!1616556)))

(assert (=> bs!1187541 (= (= (ite c!858555 lambda!248970 lambda!248971) lambda!248969) (= lambda!249021 lambda!248997))))

(assert (=> d!1616658 true))

(assert (=> d!1616658 (< (dynLambda!23527 order!26703 (ite c!858555 lambda!248970 lambda!248971)) (dynLambda!23527 order!26703 lambda!249021))))

(assert (=> d!1616658 (= (exists!1382 (ite c!858555 lt!2078489 lt!2078488) (ite c!858555 lambda!248970 lambda!248971)) (not (forall!13412 (ite c!858555 lt!2078489 lt!2078488) lambda!249021)))))

(declare-fun bs!1187542 () Bool)

(assert (= bs!1187542 d!1616658))

(declare-fun m!6057590 () Bool)

(assert (=> bs!1187542 m!6057590))

(assert (=> bm!350636 d!1616658))

(assert (=> b!5022190 d!1616530))

(declare-fun b!5022472 () Bool)

(declare-fun e!3137506 () Int)

(assert (=> b!5022472 (= e!3137506 0)))

(declare-fun b!5022473 () Bool)

(declare-fun e!3137502 () Int)

(assert (=> b!5022473 (= e!3137502 1)))

(declare-fun b!5022474 () Bool)

(assert (=> b!5022474 (= e!3137502 0)))

(declare-fun b!5022475 () Bool)

(declare-fun e!3137503 () Bool)

(assert (=> b!5022475 (= e!3137503 (lostCauseZipper!881 lt!2078430))))

(declare-fun b!5022476 () Bool)

(declare-fun e!3137504 () Int)

(declare-fun lt!2078624 () Int)

(assert (=> b!5022476 (= e!3137504 (+ 1 lt!2078624))))

(declare-fun d!1616660 () Bool)

(declare-fun lt!2078626 () Int)

(assert (=> d!1616660 (and (>= lt!2078626 0) (<= lt!2078626 (- (size!38629 totalInput!1125) (+ 1 from!1212))))))

(assert (=> d!1616660 (= lt!2078626 e!3137506)))

(declare-fun c!858715 () Bool)

(assert (=> d!1616660 (= c!858715 e!3137503)))

(declare-fun res!2141293 () Bool)

(assert (=> d!1616660 (=> res!2141293 e!3137503)))

(assert (=> d!1616660 (= res!2141293 (= (+ 1 from!1212) (size!38629 totalInput!1125)))))

(declare-fun e!3137505 () Bool)

(assert (=> d!1616660 e!3137505))

(declare-fun res!2141294 () Bool)

(assert (=> d!1616660 (=> (not res!2141294) (not e!3137505))))

(assert (=> d!1616660 (= res!2141294 (>= (+ 1 from!1212) 0))))

(assert (=> d!1616660 (= (findLongestMatchInnerZipperFastV2!189 lt!2078430 (+ 1 from!1212) totalInput!1125 (size!38629 totalInput!1125)) lt!2078626)))

(declare-fun b!5022477 () Bool)

(declare-fun c!858717 () Bool)

(declare-fun lt!2078625 () (InoxSet Context!6584))

(assert (=> b!5022477 (= c!858717 (nullableZipper!910 lt!2078625))))

(assert (=> b!5022477 (= e!3137504 e!3137502)))

(declare-fun b!5022478 () Bool)

(assert (=> b!5022478 (= e!3137506 e!3137504)))

(assert (=> b!5022478 (= lt!2078625 (derivationStepZipper!673 lt!2078430 (apply!14079 totalInput!1125 (+ 1 from!1212))))))

(assert (=> b!5022478 (= lt!2078624 (findLongestMatchInnerZipperFastV2!189 lt!2078625 (+ 1 from!1212 1) totalInput!1125 (size!38629 totalInput!1125)))))

(declare-fun c!858716 () Bool)

(assert (=> b!5022478 (= c!858716 (> lt!2078624 0))))

(declare-fun b!5022479 () Bool)

(assert (=> b!5022479 (= e!3137505 (<= (+ 1 from!1212) (size!38629 totalInput!1125)))))

(assert (= (and d!1616660 res!2141294) b!5022479))

(assert (= (and d!1616660 (not res!2141293)) b!5022475))

(assert (= (and d!1616660 c!858715) b!5022472))

(assert (= (and d!1616660 (not c!858715)) b!5022478))

(assert (= (and b!5022478 c!858716) b!5022476))

(assert (= (and b!5022478 (not c!858716)) b!5022477))

(assert (= (and b!5022477 c!858717) b!5022473))

(assert (= (and b!5022477 (not c!858717)) b!5022474))

(assert (=> b!5022475 m!6057248))

(declare-fun m!6057592 () Bool)

(assert (=> b!5022477 m!6057592))

(assert (=> b!5022478 m!6057252))

(assert (=> b!5022478 m!6057252))

(assert (=> b!5022478 m!6057254))

(assert (=> b!5022478 m!6056972))

(declare-fun m!6057594 () Bool)

(assert (=> b!5022478 m!6057594))

(assert (=> b!5022479 m!6056972))

(assert (=> d!1616450 d!1616660))

(assert (=> d!1616450 d!1616434))

(declare-fun d!1616662 () Bool)

(assert (=> d!1616662 (>= (findLongestMatchInnerZipperFastV2!189 lt!2078430 (+ 1 from!1212) totalInput!1125 (size!38629 totalInput!1125)) (- knownSize!24 1))))

(assert (=> d!1616662 true))

(declare-fun _$80!64 () Unit!149255)

(assert (=> d!1616662 (= (choose!37148 lt!2078430 (+ 1 from!1212) totalInput!1125 (- knownSize!24 1)) _$80!64)))

(declare-fun bs!1187543 () Bool)

(assert (= bs!1187543 d!1616662))

(assert (=> bs!1187543 m!6056972))

(assert (=> bs!1187543 m!6056972))

(assert (=> bs!1187543 m!6057024))

(assert (=> d!1616450 d!1616662))

(declare-fun d!1616668 () Bool)

(declare-fun c!858722 () Bool)

(assert (=> d!1616668 (= c!858722 ((_ is Nil!58044) lt!2078525))))

(declare-fun e!3137516 () (InoxSet C!27984))

(assert (=> d!1616668 (= (content!10289 lt!2078525) e!3137516)))

(declare-fun b!5022495 () Bool)

(assert (=> b!5022495 (= e!3137516 ((as const (Array C!27984 Bool)) false))))

(declare-fun b!5022496 () Bool)

(assert (=> b!5022496 (= e!3137516 ((_ map or) (store ((as const (Array C!27984 Bool)) false) (h!64492 lt!2078525) true) (content!10289 (t!370552 lt!2078525))))))

(assert (= (and d!1616668 c!858722) b!5022495))

(assert (= (and d!1616668 (not c!858722)) b!5022496))

(declare-fun m!6057606 () Bool)

(assert (=> b!5022496 m!6057606))

(declare-fun m!6057608 () Bool)

(assert (=> b!5022496 m!6057608))

(assert (=> d!1616504 d!1616668))

(declare-fun d!1616670 () Bool)

(declare-fun c!858723 () Bool)

(assert (=> d!1616670 (= c!858723 ((_ is Nil!58044) lt!2078429))))

(declare-fun e!3137517 () (InoxSet C!27984))

(assert (=> d!1616670 (= (content!10289 lt!2078429) e!3137517)))

(declare-fun b!5022503 () Bool)

(assert (=> b!5022503 (= e!3137517 ((as const (Array C!27984 Bool)) false))))

(declare-fun b!5022504 () Bool)

(assert (=> b!5022504 (= e!3137517 ((_ map or) (store ((as const (Array C!27984 Bool)) false) (h!64492 lt!2078429) true) (content!10289 (t!370552 lt!2078429))))))

(assert (= (and d!1616670 c!858723) b!5022503))

(assert (= (and d!1616670 (not c!858723)) b!5022504))

(declare-fun m!6057610 () Bool)

(assert (=> b!5022504 m!6057610))

(assert (=> b!5022504 m!6057332))

(assert (=> d!1616504 d!1616670))

(assert (=> bm!350640 d!1616604))

(declare-fun b!5022505 () Bool)

(declare-fun e!3137518 () Bool)

(declare-fun lt!2078628 () List!58168)

(declare-fun e!3137521 () Int)

(assert (=> b!5022505 (= e!3137518 (= (size!38630 lt!2078628) e!3137521))))

(declare-fun c!858724 () Bool)

(assert (=> b!5022505 (= c!858724 (<= (- (+ 1 (- knownSize!24 1)) 1) 0))))

(declare-fun b!5022506 () Bool)

(declare-fun e!3137520 () Int)

(assert (=> b!5022506 (= e!3137520 (size!38630 (t!370552 lt!2078426)))))

(declare-fun b!5022507 () Bool)

(assert (=> b!5022507 (= e!3137521 e!3137520)))

(declare-fun c!858725 () Bool)

(assert (=> b!5022507 (= c!858725 (>= (- (+ 1 (- knownSize!24 1)) 1) (size!38630 (t!370552 lt!2078426))))))

(declare-fun b!5022508 () Bool)

(assert (=> b!5022508 (= e!3137520 (- (+ 1 (- knownSize!24 1)) 1))))

(declare-fun b!5022509 () Bool)

(declare-fun e!3137519 () List!58168)

(assert (=> b!5022509 (= e!3137519 (Cons!58044 (h!64492 (t!370552 lt!2078426)) (take!726 (t!370552 (t!370552 lt!2078426)) (- (- (+ 1 (- knownSize!24 1)) 1) 1))))))

(declare-fun d!1616672 () Bool)

(assert (=> d!1616672 e!3137518))

(declare-fun res!2141308 () Bool)

(assert (=> d!1616672 (=> (not res!2141308) (not e!3137518))))

(assert (=> d!1616672 (= res!2141308 (= ((_ map implies) (content!10289 lt!2078628) (content!10289 (t!370552 lt!2078426))) ((as const (InoxSet C!27984)) true)))))

(assert (=> d!1616672 (= lt!2078628 e!3137519)))

(declare-fun c!858726 () Bool)

(assert (=> d!1616672 (= c!858726 (or ((_ is Nil!58044) (t!370552 lt!2078426)) (<= (- (+ 1 (- knownSize!24 1)) 1) 0)))))

(assert (=> d!1616672 (= (take!726 (t!370552 lt!2078426) (- (+ 1 (- knownSize!24 1)) 1)) lt!2078628)))

(declare-fun b!5022510 () Bool)

(assert (=> b!5022510 (= e!3137519 Nil!58044)))

(declare-fun b!5022511 () Bool)

(assert (=> b!5022511 (= e!3137521 0)))

(assert (= (and d!1616672 c!858726) b!5022510))

(assert (= (and d!1616672 (not c!858726)) b!5022509))

(assert (= (and d!1616672 res!2141308) b!5022505))

(assert (= (and b!5022505 c!858724) b!5022511))

(assert (= (and b!5022505 (not c!858724)) b!5022507))

(assert (= (and b!5022507 c!858725) b!5022506))

(assert (= (and b!5022507 (not c!858725)) b!5022508))

(assert (=> b!5022507 m!6057314))

(assert (=> b!5022506 m!6057314))

(declare-fun m!6057612 () Bool)

(assert (=> b!5022509 m!6057612))

(declare-fun m!6057614 () Bool)

(assert (=> b!5022505 m!6057614))

(declare-fun m!6057616 () Bool)

(assert (=> d!1616672 m!6057616))

(assert (=> d!1616672 m!6057390))

(assert (=> b!5022164 d!1616672))

(assert (=> b!5022143 d!1616434))

(assert (=> bm!350639 d!1616604))

(declare-fun d!1616674 () Bool)

(declare-fun lt!2078629 () Int)

(assert (=> d!1616674 (>= lt!2078629 0)))

(declare-fun e!3137522 () Int)

(assert (=> d!1616674 (= lt!2078629 e!3137522)))

(declare-fun c!858727 () Bool)

(assert (=> d!1616674 (= c!858727 ((_ is Nil!58044) lt!2078514))))

(assert (=> d!1616674 (= (size!38630 lt!2078514) lt!2078629)))

(declare-fun b!5022512 () Bool)

(assert (=> b!5022512 (= e!3137522 0)))

(declare-fun b!5022513 () Bool)

(assert (=> b!5022513 (= e!3137522 (+ 1 (size!38630 (t!370552 lt!2078514))))))

(assert (= (and d!1616674 c!858727) b!5022512))

(assert (= (and d!1616674 (not c!858727)) b!5022513))

(declare-fun m!6057618 () Bool)

(assert (=> b!5022513 m!6057618))

(assert (=> b!5022126 d!1616674))

(assert (=> b!5022162 d!1616530))

(declare-fun d!1616676 () Bool)

(declare-fun lt!2078630 () Int)

(assert (=> d!1616676 (>= lt!2078630 0)))

(declare-fun e!3137523 () Int)

(assert (=> d!1616676 (= lt!2078630 e!3137523)))

(declare-fun c!858728 () Bool)

(assert (=> d!1616676 (= c!858728 ((_ is Nil!58044) lt!2078510))))

(assert (=> d!1616676 (= (size!38630 lt!2078510) lt!2078630)))

(declare-fun b!5022514 () Bool)

(assert (=> b!5022514 (= e!3137523 0)))

(declare-fun b!5022515 () Bool)

(assert (=> b!5022515 (= e!3137523 (+ 1 (size!38630 (t!370552 lt!2078510))))))

(assert (= (and d!1616676 c!858728) b!5022514))

(assert (= (and d!1616676 (not c!858728)) b!5022515))

(declare-fun m!6057620 () Bool)

(assert (=> b!5022515 m!6057620))

(assert (=> b!5022112 d!1616676))

(declare-fun b!5022531 () Bool)

(declare-fun e!3137530 () List!58168)

(declare-fun e!3137531 () List!58168)

(assert (=> b!5022531 (= e!3137530 e!3137531)))

(declare-fun c!858734 () Bool)

(assert (=> b!5022531 (= c!858734 ((_ is Leaf!25528) (c!858479 totalInput!1125)))))

(declare-fun b!5022533 () Bool)

(declare-fun ++!12670 (List!58168 List!58168) List!58168)

(assert (=> b!5022533 (= e!3137531 (++!12670 (list!18730 (left!42445 (c!858479 totalInput!1125))) (list!18730 (right!42775 (c!858479 totalInput!1125)))))))

(declare-fun d!1616678 () Bool)

(declare-fun c!858733 () Bool)

(assert (=> d!1616678 (= c!858733 ((_ is Empty!15386) (c!858479 totalInput!1125)))))

(assert (=> d!1616678 (= (list!18730 (c!858479 totalInput!1125)) e!3137530)))

(declare-fun b!5022530 () Bool)

(assert (=> b!5022530 (= e!3137530 Nil!58044)))

(declare-fun b!5022532 () Bool)

(assert (=> b!5022532 (= e!3137531 (list!18731 (xs!18712 (c!858479 totalInput!1125))))))

(assert (= (and d!1616678 c!858733) b!5022530))

(assert (= (and d!1616678 (not c!858733)) b!5022531))

(assert (= (and b!5022531 c!858734) b!5022532))

(assert (= (and b!5022531 (not c!858734)) b!5022533))

(assert (=> b!5022533 m!6057508))

(assert (=> b!5022533 m!6057510))

(assert (=> b!5022533 m!6057508))

(assert (=> b!5022533 m!6057510))

(declare-fun m!6057634 () Bool)

(assert (=> b!5022533 m!6057634))

(assert (=> b!5022532 m!6057416))

(assert (=> d!1616490 d!1616678))

(declare-fun d!1616682 () Bool)

(declare-fun c!858735 () Bool)

(assert (=> d!1616682 (= c!858735 ((_ is Nil!58044) lt!2078533))))

(declare-fun e!3137534 () (InoxSet C!27984))

(assert (=> d!1616682 (= (content!10289 lt!2078533) e!3137534)))

(declare-fun b!5022534 () Bool)

(assert (=> b!5022534 (= e!3137534 ((as const (Array C!27984 Bool)) false))))

(declare-fun b!5022535 () Bool)

(assert (=> b!5022535 (= e!3137534 ((_ map or) (store ((as const (Array C!27984 Bool)) false) (h!64492 lt!2078533) true) (content!10289 (t!370552 lt!2078533))))))

(assert (= (and d!1616682 c!858735) b!5022534))

(assert (= (and d!1616682 (not c!858735)) b!5022535))

(declare-fun m!6057636 () Bool)

(assert (=> b!5022535 m!6057636))

(declare-fun m!6057638 () Bool)

(assert (=> b!5022535 m!6057638))

(assert (=> d!1616512 d!1616682))

(assert (=> d!1616512 d!1616670))

(declare-fun d!1616684 () Bool)

(declare-fun lt!2078633 () Int)

(assert (=> d!1616684 (>= lt!2078633 0)))

(declare-fun e!3137535 () Int)

(assert (=> d!1616684 (= lt!2078633 e!3137535)))

(declare-fun c!858736 () Bool)

(assert (=> d!1616684 (= c!858736 ((_ is Nil!58044) lt!2078533))))

(assert (=> d!1616684 (= (size!38630 lt!2078533) lt!2078633)))

(declare-fun b!5022536 () Bool)

(assert (=> b!5022536 (= e!3137535 0)))

(declare-fun b!5022537 () Bool)

(assert (=> b!5022537 (= e!3137535 (+ 1 (size!38630 (t!370552 lt!2078533))))))

(assert (= (and d!1616684 c!858736) b!5022536))

(assert (= (and d!1616684 (not c!858736)) b!5022537))

(declare-fun m!6057640 () Bool)

(assert (=> b!5022537 m!6057640))

(assert (=> b!5022173 d!1616684))

(declare-fun d!1616686 () Bool)

(declare-fun lt!2078638 () Bool)

(assert (=> d!1616686 (= lt!2078638 (select (content!10289 lt!2078425) lt!2078524))))

(declare-fun e!3137542 () Bool)

(assert (=> d!1616686 (= lt!2078638 e!3137542)))

(declare-fun res!2141321 () Bool)

(assert (=> d!1616686 (=> (not res!2141321) (not e!3137542))))

(assert (=> d!1616686 (= res!2141321 ((_ is Cons!58044) lt!2078425))))

(assert (=> d!1616686 (= (contains!19568 lt!2078425 lt!2078524) lt!2078638)))

(declare-fun b!5022545 () Bool)

(declare-fun e!3137541 () Bool)

(assert (=> b!5022545 (= e!3137542 e!3137541)))

(declare-fun res!2141320 () Bool)

(assert (=> b!5022545 (=> res!2141320 e!3137541)))

(assert (=> b!5022545 (= res!2141320 (= (h!64492 lt!2078425) lt!2078524))))

(declare-fun b!5022546 () Bool)

(assert (=> b!5022546 (= e!3137541 (contains!19568 (t!370552 lt!2078425) lt!2078524))))

(assert (= (and d!1616686 res!2141321) b!5022545))

(assert (= (and b!5022545 (not res!2141320)) b!5022546))

(assert (=> d!1616686 m!6057172))

(declare-fun m!6057654 () Bool)

(assert (=> d!1616686 m!6057654))

(declare-fun m!6057656 () Bool)

(assert (=> b!5022546 m!6057656))

(assert (=> d!1616502 d!1616686))

(declare-fun d!1616694 () Bool)

(declare-fun c!858740 () Bool)

(assert (=> d!1616694 (= c!858740 ((_ is Node!15386) (left!42445 (c!858479 totalInput!1125))))))

(declare-fun e!3137548 () Bool)

(assert (=> d!1616694 (= (inv!76428 (left!42445 (c!858479 totalInput!1125))) e!3137548)))

(declare-fun b!5022551 () Bool)

(assert (=> b!5022551 (= e!3137548 (inv!76433 (left!42445 (c!858479 totalInput!1125))))))

(declare-fun b!5022553 () Bool)

(declare-fun e!3137549 () Bool)

(assert (=> b!5022553 (= e!3137548 e!3137549)))

(declare-fun res!2141324 () Bool)

(assert (=> b!5022553 (= res!2141324 (not ((_ is Leaf!25528) (left!42445 (c!858479 totalInput!1125)))))))

(assert (=> b!5022553 (=> res!2141324 e!3137549)))

(declare-fun b!5022555 () Bool)

(assert (=> b!5022555 (= e!3137549 (inv!76434 (left!42445 (c!858479 totalInput!1125))))))

(assert (= (and d!1616694 c!858740) b!5022551))

(assert (= (and d!1616694 (not c!858740)) b!5022553))

(assert (= (and b!5022553 (not res!2141324)) b!5022555))

(declare-fun m!6057658 () Bool)

(assert (=> b!5022551 m!6057658))

(declare-fun m!6057660 () Bool)

(assert (=> b!5022555 m!6057660))

(assert (=> b!5022246 d!1616694))

(declare-fun d!1616696 () Bool)

(declare-fun c!858741 () Bool)

(assert (=> d!1616696 (= c!858741 ((_ is Node!15386) (right!42775 (c!858479 totalInput!1125))))))

(declare-fun e!3137550 () Bool)

(assert (=> d!1616696 (= (inv!76428 (right!42775 (c!858479 totalInput!1125))) e!3137550)))

(declare-fun b!5022558 () Bool)

(assert (=> b!5022558 (= e!3137550 (inv!76433 (right!42775 (c!858479 totalInput!1125))))))

(declare-fun b!5022559 () Bool)

(declare-fun e!3137551 () Bool)

(assert (=> b!5022559 (= e!3137550 e!3137551)))

(declare-fun res!2141325 () Bool)

(assert (=> b!5022559 (= res!2141325 (not ((_ is Leaf!25528) (right!42775 (c!858479 totalInput!1125)))))))

(assert (=> b!5022559 (=> res!2141325 e!3137551)))

(declare-fun b!5022560 () Bool)

(assert (=> b!5022560 (= e!3137551 (inv!76434 (right!42775 (c!858479 totalInput!1125))))))

(assert (= (and d!1616696 c!858741) b!5022558))

(assert (= (and d!1616696 (not c!858741)) b!5022559))

(assert (= (and b!5022559 (not res!2141325)) b!5022560))

(declare-fun m!6057662 () Bool)

(assert (=> b!5022558 m!6057662))

(declare-fun m!6057664 () Bool)

(assert (=> b!5022560 m!6057664))

(assert (=> b!5022246 d!1616696))

(declare-fun d!1616698 () Bool)

(declare-fun c!858742 () Bool)

(assert (=> d!1616698 (= c!858742 ((_ is Nil!58044) lt!2078538))))

(declare-fun e!3137552 () (InoxSet C!27984))

(assert (=> d!1616698 (= (content!10289 lt!2078538) e!3137552)))

(declare-fun b!5022561 () Bool)

(assert (=> b!5022561 (= e!3137552 ((as const (Array C!27984 Bool)) false))))

(declare-fun b!5022562 () Bool)

(assert (=> b!5022562 (= e!3137552 ((_ map or) (store ((as const (Array C!27984 Bool)) false) (h!64492 lt!2078538) true) (content!10289 (t!370552 lt!2078538))))))

(assert (= (and d!1616698 c!858742) b!5022561))

(assert (= (and d!1616698 (not c!858742)) b!5022562))

(declare-fun m!6057672 () Bool)

(assert (=> b!5022562 m!6057672))

(declare-fun m!6057674 () Bool)

(assert (=> b!5022562 m!6057674))

(assert (=> d!1616518 d!1616698))

(assert (=> d!1616518 d!1616626))

(declare-fun condSetEmpty!28723 () Bool)

(assert (=> setNonEmpty!28722 (= condSetEmpty!28723 (= setRest!28722 ((as const (Array Context!6584 Bool)) false)))))

(declare-fun setRes!28723 () Bool)

(assert (=> setNonEmpty!28722 (= tp!1408039 setRes!28723)))

(declare-fun setIsEmpty!28723 () Bool)

(assert (=> setIsEmpty!28723 setRes!28723))

(declare-fun setNonEmpty!28723 () Bool)

(declare-fun setElem!28723 () Context!6584)

(declare-fun tp!1408041 () Bool)

(declare-fun e!3137554 () Bool)

(assert (=> setNonEmpty!28723 (= setRes!28723 (and tp!1408041 (inv!76429 setElem!28723) e!3137554))))

(declare-fun setRest!28723 () (InoxSet Context!6584))

(assert (=> setNonEmpty!28723 (= setRest!28722 ((_ map or) (store ((as const (Array Context!6584 Bool)) false) setElem!28723 true) setRest!28723))))

(declare-fun b!5022565 () Bool)

(declare-fun tp!1408042 () Bool)

(assert (=> b!5022565 (= e!3137554 tp!1408042)))

(assert (= (and setNonEmpty!28722 condSetEmpty!28723) setIsEmpty!28723))

(assert (= (and setNonEmpty!28722 (not condSetEmpty!28723)) setNonEmpty!28723))

(assert (= setNonEmpty!28723 b!5022565))

(declare-fun m!6057682 () Bool)

(assert (=> setNonEmpty!28723 m!6057682))

(declare-fun b!5022570 () Bool)

(declare-fun e!3137557 () Bool)

(declare-fun tp_is_empty!36641 () Bool)

(declare-fun tp!1408045 () Bool)

(assert (=> b!5022570 (= e!3137557 (and tp_is_empty!36641 tp!1408045))))

(assert (=> b!5022248 (= tp!1408032 e!3137557)))

(assert (= (and b!5022248 ((_ is Cons!58044) (innerList!15474 (xs!18712 (c!858479 totalInput!1125))))) b!5022570))

(declare-fun b!5022588 () Bool)

(declare-fun e!3137562 () Bool)

(declare-fun tp!1408060 () Bool)

(declare-fun tp!1408058 () Bool)

(assert (=> b!5022588 (= e!3137562 (and tp!1408060 tp!1408058))))

(declare-fun b!5022587 () Bool)

(declare-fun tp!1408059 () Bool)

(assert (=> b!5022587 (= e!3137562 tp!1408059)))

(declare-fun b!5022585 () Bool)

(assert (=> b!5022585 (= e!3137562 tp_is_empty!36641)))

(assert (=> b!5022230 (= tp!1408015 e!3137562)))

(declare-fun b!5022586 () Bool)

(declare-fun tp!1408057 () Bool)

(declare-fun tp!1408056 () Bool)

(assert (=> b!5022586 (= e!3137562 (and tp!1408057 tp!1408056))))

(assert (= (and b!5022230 ((_ is ElementMatch!13867) (h!64493 (exprs!3792 setElem!28716)))) b!5022585))

(assert (= (and b!5022230 ((_ is Concat!22660) (h!64493 (exprs!3792 setElem!28716)))) b!5022586))

(assert (= (and b!5022230 ((_ is Star!13867) (h!64493 (exprs!3792 setElem!28716)))) b!5022587))

(assert (= (and b!5022230 ((_ is Union!13867) (h!64493 (exprs!3792 setElem!28716)))) b!5022588))

(declare-fun b!5022589 () Bool)

(declare-fun e!3137563 () Bool)

(declare-fun tp!1408061 () Bool)

(declare-fun tp!1408062 () Bool)

(assert (=> b!5022589 (= e!3137563 (and tp!1408061 tp!1408062))))

(assert (=> b!5022230 (= tp!1408016 e!3137563)))

(assert (= (and b!5022230 ((_ is Cons!58045) (t!370553 (exprs!3792 setElem!28716)))) b!5022589))

(declare-fun tp!1408064 () Bool)

(declare-fun b!5022592 () Bool)

(declare-fun e!3137565 () Bool)

(declare-fun tp!1408063 () Bool)

(assert (=> b!5022592 (= e!3137565 (and (inv!76428 (left!42445 (left!42445 (c!858479 totalInput!1125)))) tp!1408064 (inv!76428 (right!42775 (left!42445 (c!858479 totalInput!1125)))) tp!1408063))))

(declare-fun b!5022594 () Bool)

(declare-fun e!3137566 () Bool)

(declare-fun tp!1408065 () Bool)

(assert (=> b!5022594 (= e!3137566 tp!1408065)))

(declare-fun b!5022593 () Bool)

(assert (=> b!5022593 (= e!3137565 (and (inv!76435 (xs!18712 (left!42445 (c!858479 totalInput!1125)))) e!3137566))))

(assert (=> b!5022246 (= tp!1408031 (and (inv!76428 (left!42445 (c!858479 totalInput!1125))) e!3137565))))

(assert (= (and b!5022246 ((_ is Node!15386) (left!42445 (c!858479 totalInput!1125)))) b!5022592))

(assert (= b!5022593 b!5022594))

(assert (= (and b!5022246 ((_ is Leaf!25528) (left!42445 (c!858479 totalInput!1125)))) b!5022593))

(declare-fun m!6057688 () Bool)

(assert (=> b!5022592 m!6057688))

(declare-fun m!6057694 () Bool)

(assert (=> b!5022592 m!6057694))

(declare-fun m!6057696 () Bool)

(assert (=> b!5022593 m!6057696))

(assert (=> b!5022246 m!6057292))

(declare-fun e!3137569 () Bool)

(declare-fun tp!1408066 () Bool)

(declare-fun tp!1408067 () Bool)

(declare-fun b!5022599 () Bool)

(assert (=> b!5022599 (= e!3137569 (and (inv!76428 (left!42445 (right!42775 (c!858479 totalInput!1125)))) tp!1408067 (inv!76428 (right!42775 (right!42775 (c!858479 totalInput!1125)))) tp!1408066))))

(declare-fun b!5022601 () Bool)

(declare-fun e!3137570 () Bool)

(declare-fun tp!1408068 () Bool)

(assert (=> b!5022601 (= e!3137570 tp!1408068)))

(declare-fun b!5022600 () Bool)

(assert (=> b!5022600 (= e!3137569 (and (inv!76435 (xs!18712 (right!42775 (c!858479 totalInput!1125)))) e!3137570))))

(assert (=> b!5022246 (= tp!1408030 (and (inv!76428 (right!42775 (c!858479 totalInput!1125))) e!3137569))))

(assert (= (and b!5022246 ((_ is Node!15386) (right!42775 (c!858479 totalInput!1125)))) b!5022599))

(assert (= b!5022600 b!5022601))

(assert (= (and b!5022246 ((_ is Leaf!25528) (right!42775 (c!858479 totalInput!1125)))) b!5022600))

(declare-fun m!6057700 () Bool)

(assert (=> b!5022599 m!6057700))

(declare-fun m!6057702 () Bool)

(assert (=> b!5022599 m!6057702))

(declare-fun m!6057704 () Bool)

(assert (=> b!5022600 m!6057704))

(assert (=> b!5022246 m!6057294))

(declare-fun b!5022604 () Bool)

(declare-fun e!3137572 () Bool)

(declare-fun tp!1408069 () Bool)

(declare-fun tp!1408070 () Bool)

(assert (=> b!5022604 (= e!3137572 (and tp!1408069 tp!1408070))))

(assert (=> b!5022254 (= tp!1408040 e!3137572)))

(assert (= (and b!5022254 ((_ is Cons!58045) (exprs!3792 setElem!28722))) b!5022604))

(declare-fun b_lambda!198683 () Bool)

(assert (= b_lambda!198681 (or d!1616524 b_lambda!198683)))

(declare-fun bs!1187550 () Bool)

(declare-fun d!1616714 () Bool)

(assert (= bs!1187550 (and d!1616714 d!1616524)))

(declare-fun validRegex!6118 (Regex!13867) Bool)

(assert (=> bs!1187550 (= (dynLambda!23529 lambda!248992 (h!64493 (exprs!3792 setElem!28716))) (validRegex!6118 (h!64493 (exprs!3792 setElem!28716))))))

(declare-fun m!6057708 () Bool)

(assert (=> bs!1187550 m!6057708))

(assert (=> b!5022378 d!1616714))

(check-sat (not b!5022358) (not b!5022533) (not d!1616630) (not b!5022295) (not d!1616550) (not b!5022405) (not bm!350654) (not b!5022600) (not b!5022286) (not d!1616544) (not b!5022535) (not d!1616542) (not b!5022368) (not b!5022455) (not d!1616672) (not b!5022392) (not b!5022301) (not b!5022438) (not b!5022282) (not b!5022272) (not d!1616662) (not b!5022562) (not d!1616600) (not d!1616646) (not b!5022436) (not b!5022387) (not b!5022506) (not b!5022588) (not b!5022432) (not b!5022310) (not b!5022444) (not b!5022311) (not b!5022555) (not b!5022466) (not d!1616638) (not b!5022479) (not b!5022456) (not b!5022307) (not b!5022475) (not b!5022321) (not b!5022505) (not b!5022277) (not b!5022449) (not b!5022402) (not b!5022369) (not b!5022546) (not d!1616576) (not b!5022353) (not b!5022477) (not b!5022467) (not b!5022281) (not bs!1187550) (not b!5022428) (not b!5022570) (not b!5022289) (not b!5022507) (not b!5022322) (not b!5022270) (not b!5022267) (not d!1616552) (not b!5022265) (not b!5022592) (not b!5022434) (not b!5022346) (not b!5022320) (not b!5022445) (not b!5022355) (not b!5022469) (not bm!350647) (not d!1616612) (not d!1616632) (not b!5022465) (not b!5022288) (not b!5022395) (not b!5022601) (not b!5022345) (not b!5022349) (not d!1616584) (not d!1616652) (not b!5022388) (not b!5022513) (not b!5022427) (not d!1616568) (not b!5022298) (not b!5022478) (not d!1616586) (not b!5022509) (not b!5022384) (not d!1616618) (not b!5022532) (not b!5022299) (not b!5022399) (not b!5022397) (not b!5022442) (not d!1616588) (not b!5022599) (not b!5022515) (not b!5022351) (not b!5022331) (not d!1616642) (not b!5022396) (not b!5022262) (not b!5022319) (not d!1616628) (not b!5022317) (not b!5022551) (not b!5022348) (not d!1616526) (not d!1616686) (not b!5022352) (not b!5022280) (not d!1616538) (not b!5022406) (not bm!350650) (not d!1616594) (not b!5022362) (not b!5022504) (not b!5022390) (not b!5022297) (not b!5022403) (not b!5022560) (not d!1616532) (not d!1616648) (not b!5022350) (not b!5022371) (not b!5022593) (not d!1616606) (not d!1616556) (not b!5022558) (not b!5022404) (not b!5022389) (not b!5022594) (not d!1616610) (not b!5022424) (not b!5022440) (not d!1616622) (not b!5022586) (not b!5022324) (not b!5022379) (not d!1616590) (not b!5022496) (not b!5022537) (not d!1616656) (not b!5022294) (not b!5022275) (not b_lambda!198683) (not d!1616562) (not d!1616596) (not d!1616560) (not b!5022460) (not bm!350652) (not b!5022347) (not bm!350653) (not b!5022407) (not d!1616608) (not b!5022273) (not d!1616602) (not b!5022367) (not d!1616658) (not setNonEmpty!28723) (not b!5022274) (not b!5022565) (not b!5022422) (not b!5022430) tp_is_empty!36641 (not b!5022296) (not b!5022604) (not b!5022246) (not bm!350651) (not b!5022309) (not b!5022589) (not b!5022435) (not b!5022290) (not b!5022587) (not d!1616616) (not d!1616654) (not d!1616578))
(check-sat)
