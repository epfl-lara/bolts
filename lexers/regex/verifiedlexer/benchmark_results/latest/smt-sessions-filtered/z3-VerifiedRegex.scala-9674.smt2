; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!507294 () Bool)

(assert start!507294)

(declare-fun b!4856146 () Bool)

(declare-fun e!3036096 () Bool)

(declare-datatypes ((T!98574 0))(
  ( (T!98575 (val!22396 Int)) )
))
(declare-datatypes ((List!55864 0))(
  ( (Nil!55740) (Cons!55740 (h!62188 T!98574) (t!363410 List!55864)) )
))
(declare-datatypes ((IArray!29101 0))(
  ( (IArray!29102 (innerList!14608 List!55864)) )
))
(declare-datatypes ((Conc!14520 0))(
  ( (Node!14520 (left!40500 Conc!14520) (right!40830 Conc!14520) (csize!29270 Int) (cheight!14731 Int)) (Leaf!24195 (xs!17826 IArray!29101) (csize!29271 Int)) (Empty!14520) )
))
(declare-fun t!4677 () Conc!14520)

(declare-fun e!3036095 () Bool)

(declare-fun inv!71530 (IArray!29101) Bool)

(assert (=> b!4856146 (= e!3036096 (and (inv!71530 (xs!17826 t!4677)) e!3036095))))

(declare-fun b!4856147 () Bool)

(declare-fun res!2073064 () Bool)

(declare-fun e!3036093 () Bool)

(assert (=> b!4856147 (=> (not res!2073064) (not e!3036093))))

(get-info :version)

(assert (=> b!4856147 (= res!2073064 (and (not ((_ is Leaf!24195) t!4677)) ((_ is Node!14520) t!4677)))))

(declare-fun b!4856148 () Bool)

(declare-fun isBalanced!3926 (Conc!14520) Bool)

(assert (=> b!4856148 (= e!3036093 (not (isBalanced!3926 (right!40830 t!4677))))))

(declare-fun e!3036091 () Bool)

(assert (=> b!4856148 e!3036091))

(declare-fun res!2073062 () Bool)

(assert (=> b!4856148 (=> res!2073062 e!3036091)))

(declare-fun e!3036092 () Bool)

(assert (=> b!4856148 (= res!2073062 e!3036092)))

(declare-fun res!2073066 () Bool)

(assert (=> b!4856148 (=> (not res!2073066) (not e!3036092))))

(declare-fun lt!1991404 () Bool)

(assert (=> b!4856148 (= res!2073066 lt!1991404)))

(declare-fun lt!1991402 () List!55864)

(declare-fun isEmpty!29812 (List!55864) Bool)

(assert (=> b!4856148 (= lt!1991404 (isEmpty!29812 lt!1991402))))

(declare-datatypes ((Unit!145843 0))(
  ( (Unit!145844) )
))
(declare-fun lt!1991403 () Unit!145843)

(declare-fun lt!1991405 () List!55864)

(declare-fun lemmaLastOfConcatIsLastOfRhs!28 (List!55864 List!55864) Unit!145843)

(assert (=> b!4856148 (= lt!1991403 (lemmaLastOfConcatIsLastOfRhs!28 lt!1991405 lt!1991402))))

(declare-fun list!17400 (Conc!14520) List!55864)

(assert (=> b!4856148 (= lt!1991402 (list!17400 (right!40830 t!4677)))))

(assert (=> b!4856148 (= lt!1991405 (list!17400 (left!40500 t!4677)))))

(declare-fun b!4856149 () Bool)

(declare-fun last!388 (List!55864) T!98574)

(declare-fun ++!12125 (List!55864 List!55864) List!55864)

(assert (=> b!4856149 (= e!3036092 (= (last!388 (++!12125 lt!1991405 lt!1991402)) (last!388 lt!1991405)))))

(declare-fun b!4856150 () Bool)

(declare-fun e!3036094 () Bool)

(assert (=> b!4856150 (= e!3036091 e!3036094)))

(declare-fun res!2073063 () Bool)

(assert (=> b!4856150 (=> (not res!2073063) (not e!3036094))))

(assert (=> b!4856150 (= res!2073063 (not lt!1991404))))

(declare-fun b!4856151 () Bool)

(assert (=> b!4856151 (= e!3036094 (= (last!388 (++!12125 lt!1991405 lt!1991402)) (last!388 lt!1991402)))))

(declare-fun b!4856152 () Bool)

(declare-fun res!2073067 () Bool)

(assert (=> b!4856152 (=> (not res!2073067) (not e!3036093))))

(declare-fun isEmpty!29813 (Conc!14520) Bool)

(assert (=> b!4856152 (= res!2073067 (not (isEmpty!29813 t!4677)))))

(declare-fun b!4856153 () Bool)

(declare-fun tp!1366294 () Bool)

(assert (=> b!4856153 (= e!3036095 tp!1366294)))

(declare-fun res!2073065 () Bool)

(assert (=> start!507294 (=> (not res!2073065) (not e!3036093))))

(assert (=> start!507294 (= res!2073065 (isBalanced!3926 t!4677))))

(assert (=> start!507294 e!3036093))

(declare-fun inv!71531 (Conc!14520) Bool)

(assert (=> start!507294 (and (inv!71531 t!4677) e!3036096)))

(declare-fun b!4856145 () Bool)

(declare-fun tp!1366293 () Bool)

(declare-fun tp!1366295 () Bool)

(assert (=> b!4856145 (= e!3036096 (and (inv!71531 (left!40500 t!4677)) tp!1366293 (inv!71531 (right!40830 t!4677)) tp!1366295))))

(assert (= (and start!507294 res!2073065) b!4856152))

(assert (= (and b!4856152 res!2073067) b!4856147))

(assert (= (and b!4856147 res!2073064) b!4856148))

(assert (= (and b!4856148 res!2073066) b!4856149))

(assert (= (and b!4856148 (not res!2073062)) b!4856150))

(assert (= (and b!4856150 res!2073063) b!4856151))

(assert (= (and start!507294 ((_ is Node!14520) t!4677)) b!4856145))

(assert (= b!4856146 b!4856153))

(assert (= (and start!507294 ((_ is Leaf!24195) t!4677)) b!4856146))

(declare-fun m!5853924 () Bool)

(assert (=> b!4856148 m!5853924))

(declare-fun m!5853926 () Bool)

(assert (=> b!4856148 m!5853926))

(declare-fun m!5853928 () Bool)

(assert (=> b!4856148 m!5853928))

(declare-fun m!5853930 () Bool)

(assert (=> b!4856148 m!5853930))

(declare-fun m!5853932 () Bool)

(assert (=> b!4856148 m!5853932))

(declare-fun m!5853934 () Bool)

(assert (=> b!4856146 m!5853934))

(declare-fun m!5853936 () Bool)

(assert (=> b!4856151 m!5853936))

(assert (=> b!4856151 m!5853936))

(declare-fun m!5853938 () Bool)

(assert (=> b!4856151 m!5853938))

(declare-fun m!5853940 () Bool)

(assert (=> b!4856151 m!5853940))

(declare-fun m!5853942 () Bool)

(assert (=> start!507294 m!5853942))

(declare-fun m!5853944 () Bool)

(assert (=> start!507294 m!5853944))

(assert (=> b!4856149 m!5853936))

(assert (=> b!4856149 m!5853936))

(assert (=> b!4856149 m!5853938))

(declare-fun m!5853946 () Bool)

(assert (=> b!4856149 m!5853946))

(declare-fun m!5853948 () Bool)

(assert (=> b!4856152 m!5853948))

(declare-fun m!5853950 () Bool)

(assert (=> b!4856145 m!5853950))

(declare-fun m!5853952 () Bool)

(assert (=> b!4856145 m!5853952))

(check-sat (not start!507294) (not b!4856145) (not b!4856152) (not b!4856148) (not b!4856151) (not b!4856149) (not b!4856146) (not b!4856153))
(check-sat)
(get-model)

(declare-fun d!1558723 () Bool)

(declare-fun c!826090 () Bool)

(assert (=> d!1558723 (= c!826090 ((_ is Node!14520) (left!40500 t!4677)))))

(declare-fun e!3036101 () Bool)

(assert (=> d!1558723 (= (inv!71531 (left!40500 t!4677)) e!3036101)))

(declare-fun b!4856160 () Bool)

(declare-fun inv!71532 (Conc!14520) Bool)

(assert (=> b!4856160 (= e!3036101 (inv!71532 (left!40500 t!4677)))))

(declare-fun b!4856161 () Bool)

(declare-fun e!3036102 () Bool)

(assert (=> b!4856161 (= e!3036101 e!3036102)))

(declare-fun res!2073070 () Bool)

(assert (=> b!4856161 (= res!2073070 (not ((_ is Leaf!24195) (left!40500 t!4677))))))

(assert (=> b!4856161 (=> res!2073070 e!3036102)))

(declare-fun b!4856162 () Bool)

(declare-fun inv!71533 (Conc!14520) Bool)

(assert (=> b!4856162 (= e!3036102 (inv!71533 (left!40500 t!4677)))))

(assert (= (and d!1558723 c!826090) b!4856160))

(assert (= (and d!1558723 (not c!826090)) b!4856161))

(assert (= (and b!4856161 (not res!2073070)) b!4856162))

(declare-fun m!5853954 () Bool)

(assert (=> b!4856160 m!5853954))

(declare-fun m!5853956 () Bool)

(assert (=> b!4856162 m!5853956))

(assert (=> b!4856145 d!1558723))

(declare-fun d!1558727 () Bool)

(declare-fun c!826091 () Bool)

(assert (=> d!1558727 (= c!826091 ((_ is Node!14520) (right!40830 t!4677)))))

(declare-fun e!3036103 () Bool)

(assert (=> d!1558727 (= (inv!71531 (right!40830 t!4677)) e!3036103)))

(declare-fun b!4856163 () Bool)

(assert (=> b!4856163 (= e!3036103 (inv!71532 (right!40830 t!4677)))))

(declare-fun b!4856164 () Bool)

(declare-fun e!3036104 () Bool)

(assert (=> b!4856164 (= e!3036103 e!3036104)))

(declare-fun res!2073071 () Bool)

(assert (=> b!4856164 (= res!2073071 (not ((_ is Leaf!24195) (right!40830 t!4677))))))

(assert (=> b!4856164 (=> res!2073071 e!3036104)))

(declare-fun b!4856165 () Bool)

(assert (=> b!4856165 (= e!3036104 (inv!71533 (right!40830 t!4677)))))

(assert (= (and d!1558727 c!826091) b!4856163))

(assert (= (and d!1558727 (not c!826091)) b!4856164))

(assert (= (and b!4856164 (not res!2073071)) b!4856165))

(declare-fun m!5853958 () Bool)

(assert (=> b!4856163 m!5853958))

(declare-fun m!5853960 () Bool)

(assert (=> b!4856165 m!5853960))

(assert (=> b!4856145 d!1558727))

(declare-fun d!1558729 () Bool)

(declare-fun lt!1991408 () T!98574)

(declare-fun contains!19356 (List!55864 T!98574) Bool)

(assert (=> d!1558729 (contains!19356 (++!12125 lt!1991405 lt!1991402) lt!1991408)))

(declare-fun e!3036113 () T!98574)

(assert (=> d!1558729 (= lt!1991408 e!3036113)))

(declare-fun c!826094 () Bool)

(assert (=> d!1558729 (= c!826094 (and ((_ is Cons!55740) (++!12125 lt!1991405 lt!1991402)) ((_ is Nil!55740) (t!363410 (++!12125 lt!1991405 lt!1991402)))))))

(assert (=> d!1558729 (not (isEmpty!29812 (++!12125 lt!1991405 lt!1991402)))))

(assert (=> d!1558729 (= (last!388 (++!12125 lt!1991405 lt!1991402)) lt!1991408)))

(declare-fun b!4856188 () Bool)

(assert (=> b!4856188 (= e!3036113 (h!62188 (++!12125 lt!1991405 lt!1991402)))))

(declare-fun b!4856189 () Bool)

(assert (=> b!4856189 (= e!3036113 (last!388 (t!363410 (++!12125 lt!1991405 lt!1991402))))))

(assert (= (and d!1558729 c!826094) b!4856188))

(assert (= (and d!1558729 (not c!826094)) b!4856189))

(assert (=> d!1558729 m!5853936))

(declare-fun m!5853966 () Bool)

(assert (=> d!1558729 m!5853966))

(assert (=> d!1558729 m!5853936))

(declare-fun m!5853972 () Bool)

(assert (=> d!1558729 m!5853972))

(declare-fun m!5853976 () Bool)

(assert (=> b!4856189 m!5853976))

(assert (=> b!4856151 d!1558729))

(declare-fun d!1558731 () Bool)

(declare-fun e!3036125 () Bool)

(assert (=> d!1558731 e!3036125))

(declare-fun res!2073098 () Bool)

(assert (=> d!1558731 (=> (not res!2073098) (not e!3036125))))

(declare-fun lt!1991411 () List!55864)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9928 (List!55864) (InoxSet T!98574))

(assert (=> d!1558731 (= res!2073098 (= (content!9928 lt!1991411) ((_ map or) (content!9928 lt!1991405) (content!9928 lt!1991402))))))

(declare-fun e!3036124 () List!55864)

(assert (=> d!1558731 (= lt!1991411 e!3036124)))

(declare-fun c!826100 () Bool)

(assert (=> d!1558731 (= c!826100 ((_ is Nil!55740) lt!1991405))))

(assert (=> d!1558731 (= (++!12125 lt!1991405 lt!1991402) lt!1991411)))

(declare-fun b!4856209 () Bool)

(declare-fun res!2073097 () Bool)

(assert (=> b!4856209 (=> (not res!2073097) (not e!3036125))))

(declare-fun size!36706 (List!55864) Int)

(assert (=> b!4856209 (= res!2073097 (= (size!36706 lt!1991411) (+ (size!36706 lt!1991405) (size!36706 lt!1991402))))))

(declare-fun b!4856207 () Bool)

(assert (=> b!4856207 (= e!3036124 lt!1991402)))

(declare-fun b!4856210 () Bool)

(assert (=> b!4856210 (= e!3036125 (or (not (= lt!1991402 Nil!55740)) (= lt!1991411 lt!1991405)))))

(declare-fun b!4856208 () Bool)

(assert (=> b!4856208 (= e!3036124 (Cons!55740 (h!62188 lt!1991405) (++!12125 (t!363410 lt!1991405) lt!1991402)))))

(assert (= (and d!1558731 c!826100) b!4856207))

(assert (= (and d!1558731 (not c!826100)) b!4856208))

(assert (= (and d!1558731 res!2073098) b!4856209))

(assert (= (and b!4856209 res!2073097) b!4856210))

(declare-fun m!5853982 () Bool)

(assert (=> d!1558731 m!5853982))

(declare-fun m!5853984 () Bool)

(assert (=> d!1558731 m!5853984))

(declare-fun m!5853986 () Bool)

(assert (=> d!1558731 m!5853986))

(declare-fun m!5853988 () Bool)

(assert (=> b!4856209 m!5853988))

(declare-fun m!5853990 () Bool)

(assert (=> b!4856209 m!5853990))

(declare-fun m!5853992 () Bool)

(assert (=> b!4856209 m!5853992))

(declare-fun m!5853994 () Bool)

(assert (=> b!4856208 m!5853994))

(assert (=> b!4856151 d!1558731))

(declare-fun d!1558737 () Bool)

(declare-fun lt!1991412 () T!98574)

(assert (=> d!1558737 (contains!19356 lt!1991402 lt!1991412)))

(declare-fun e!3036126 () T!98574)

(assert (=> d!1558737 (= lt!1991412 e!3036126)))

(declare-fun c!826101 () Bool)

(assert (=> d!1558737 (= c!826101 (and ((_ is Cons!55740) lt!1991402) ((_ is Nil!55740) (t!363410 lt!1991402))))))

(assert (=> d!1558737 (not (isEmpty!29812 lt!1991402))))

(assert (=> d!1558737 (= (last!388 lt!1991402) lt!1991412)))

(declare-fun b!4856211 () Bool)

(assert (=> b!4856211 (= e!3036126 (h!62188 lt!1991402))))

(declare-fun b!4856212 () Bool)

(assert (=> b!4856212 (= e!3036126 (last!388 (t!363410 lt!1991402)))))

(assert (= (and d!1558737 c!826101) b!4856211))

(assert (= (and d!1558737 (not c!826101)) b!4856212))

(declare-fun m!5853996 () Bool)

(assert (=> d!1558737 m!5853996))

(assert (=> d!1558737 m!5853926))

(declare-fun m!5853998 () Bool)

(assert (=> b!4856212 m!5853998))

(assert (=> b!4856151 d!1558737))

(declare-fun d!1558739 () Bool)

(assert (=> d!1558739 (= (inv!71530 (xs!17826 t!4677)) (<= (size!36706 (innerList!14608 (xs!17826 t!4677))) 2147483647))))

(declare-fun bs!1173742 () Bool)

(assert (= bs!1173742 d!1558739))

(declare-fun m!5854000 () Bool)

(assert (=> bs!1173742 m!5854000))

(assert (=> b!4856146 d!1558739))

(declare-fun d!1558741 () Bool)

(declare-fun lt!1991418 () Bool)

(assert (=> d!1558741 (= lt!1991418 (isEmpty!29812 (list!17400 t!4677)))))

(declare-fun size!36708 (Conc!14520) Int)

(assert (=> d!1558741 (= lt!1991418 (= (size!36708 t!4677) 0))))

(assert (=> d!1558741 (= (isEmpty!29813 t!4677) lt!1991418)))

(declare-fun bs!1173743 () Bool)

(assert (= bs!1173743 d!1558741))

(declare-fun m!5854008 () Bool)

(assert (=> bs!1173743 m!5854008))

(assert (=> bs!1173743 m!5854008))

(declare-fun m!5854010 () Bool)

(assert (=> bs!1173743 m!5854010))

(declare-fun m!5854012 () Bool)

(assert (=> bs!1173743 m!5854012))

(assert (=> b!4856152 d!1558741))

(declare-fun d!1558745 () Bool)

(declare-fun res!2073124 () Bool)

(declare-fun e!3036146 () Bool)

(assert (=> d!1558745 (=> res!2073124 e!3036146)))

(assert (=> d!1558745 (= res!2073124 (not ((_ is Node!14520) (right!40830 t!4677))))))

(assert (=> d!1558745 (= (isBalanced!3926 (right!40830 t!4677)) e!3036146)))

(declare-fun b!4856251 () Bool)

(declare-fun e!3036145 () Bool)

(assert (=> b!4856251 (= e!3036145 (not (isEmpty!29813 (right!40830 (right!40830 t!4677)))))))

(declare-fun b!4856252 () Bool)

(declare-fun res!2073120 () Bool)

(assert (=> b!4856252 (=> (not res!2073120) (not e!3036145))))

(declare-fun height!1899 (Conc!14520) Int)

(assert (=> b!4856252 (= res!2073120 (<= (- (height!1899 (left!40500 (right!40830 t!4677))) (height!1899 (right!40830 (right!40830 t!4677)))) 1))))

(declare-fun b!4856253 () Bool)

(declare-fun res!2073122 () Bool)

(assert (=> b!4856253 (=> (not res!2073122) (not e!3036145))))

(assert (=> b!4856253 (= res!2073122 (not (isEmpty!29813 (left!40500 (right!40830 t!4677)))))))

(declare-fun b!4856254 () Bool)

(declare-fun res!2073123 () Bool)

(assert (=> b!4856254 (=> (not res!2073123) (not e!3036145))))

(assert (=> b!4856254 (= res!2073123 (isBalanced!3926 (left!40500 (right!40830 t!4677))))))

(declare-fun b!4856255 () Bool)

(declare-fun res!2073119 () Bool)

(assert (=> b!4856255 (=> (not res!2073119) (not e!3036145))))

(assert (=> b!4856255 (= res!2073119 (isBalanced!3926 (right!40830 (right!40830 t!4677))))))

(declare-fun b!4856256 () Bool)

(assert (=> b!4856256 (= e!3036146 e!3036145)))

(declare-fun res!2073121 () Bool)

(assert (=> b!4856256 (=> (not res!2073121) (not e!3036145))))

(assert (=> b!4856256 (= res!2073121 (<= (- 1) (- (height!1899 (left!40500 (right!40830 t!4677))) (height!1899 (right!40830 (right!40830 t!4677))))))))

(assert (= (and d!1558745 (not res!2073124)) b!4856256))

(assert (= (and b!4856256 res!2073121) b!4856252))

(assert (= (and b!4856252 res!2073120) b!4856254))

(assert (= (and b!4856254 res!2073123) b!4856255))

(assert (= (and b!4856255 res!2073119) b!4856253))

(assert (= (and b!4856253 res!2073122) b!4856251))

(declare-fun m!5854040 () Bool)

(assert (=> b!4856253 m!5854040))

(declare-fun m!5854042 () Bool)

(assert (=> b!4856252 m!5854042))

(declare-fun m!5854044 () Bool)

(assert (=> b!4856252 m!5854044))

(declare-fun m!5854046 () Bool)

(assert (=> b!4856255 m!5854046))

(declare-fun m!5854048 () Bool)

(assert (=> b!4856254 m!5854048))

(assert (=> b!4856256 m!5854042))

(assert (=> b!4856256 m!5854044))

(declare-fun m!5854050 () Bool)

(assert (=> b!4856251 m!5854050))

(assert (=> b!4856148 d!1558745))

(declare-fun d!1558757 () Bool)

(assert (=> d!1558757 (= (isEmpty!29812 lt!1991402) ((_ is Nil!55740) lt!1991402))))

(assert (=> b!4856148 d!1558757))

(declare-fun b!4856289 () Bool)

(declare-fun e!3036162 () List!55864)

(declare-fun list!17401 (IArray!29101) List!55864)

(assert (=> b!4856289 (= e!3036162 (list!17401 (xs!17826 (right!40830 t!4677))))))

(declare-fun b!4856290 () Bool)

(assert (=> b!4856290 (= e!3036162 (++!12125 (list!17400 (left!40500 (right!40830 t!4677))) (list!17400 (right!40830 (right!40830 t!4677)))))))

(declare-fun b!4856288 () Bool)

(declare-fun e!3036161 () List!55864)

(assert (=> b!4856288 (= e!3036161 e!3036162)))

(declare-fun c!826124 () Bool)

(assert (=> b!4856288 (= c!826124 ((_ is Leaf!24195) (right!40830 t!4677)))))

(declare-fun d!1558759 () Bool)

(declare-fun c!826123 () Bool)

(assert (=> d!1558759 (= c!826123 ((_ is Empty!14520) (right!40830 t!4677)))))

(assert (=> d!1558759 (= (list!17400 (right!40830 t!4677)) e!3036161)))

(declare-fun b!4856287 () Bool)

(assert (=> b!4856287 (= e!3036161 Nil!55740)))

(assert (= (and d!1558759 c!826123) b!4856287))

(assert (= (and d!1558759 (not c!826123)) b!4856288))

(assert (= (and b!4856288 c!826124) b!4856289))

(assert (= (and b!4856288 (not c!826124)) b!4856290))

(declare-fun m!5854080 () Bool)

(assert (=> b!4856289 m!5854080))

(declare-fun m!5854082 () Bool)

(assert (=> b!4856290 m!5854082))

(declare-fun m!5854084 () Bool)

(assert (=> b!4856290 m!5854084))

(assert (=> b!4856290 m!5854082))

(assert (=> b!4856290 m!5854084))

(declare-fun m!5854086 () Bool)

(assert (=> b!4856290 m!5854086))

(assert (=> b!4856148 d!1558759))

(declare-fun b!4856293 () Bool)

(declare-fun e!3036164 () List!55864)

(assert (=> b!4856293 (= e!3036164 (list!17401 (xs!17826 (left!40500 t!4677))))))

(declare-fun b!4856294 () Bool)

(assert (=> b!4856294 (= e!3036164 (++!12125 (list!17400 (left!40500 (left!40500 t!4677))) (list!17400 (right!40830 (left!40500 t!4677)))))))

(declare-fun b!4856292 () Bool)

(declare-fun e!3036163 () List!55864)

(assert (=> b!4856292 (= e!3036163 e!3036164)))

(declare-fun c!826126 () Bool)

(assert (=> b!4856292 (= c!826126 ((_ is Leaf!24195) (left!40500 t!4677)))))

(declare-fun d!1558767 () Bool)

(declare-fun c!826125 () Bool)

(assert (=> d!1558767 (= c!826125 ((_ is Empty!14520) (left!40500 t!4677)))))

(assert (=> d!1558767 (= (list!17400 (left!40500 t!4677)) e!3036163)))

(declare-fun b!4856291 () Bool)

(assert (=> b!4856291 (= e!3036163 Nil!55740)))

(assert (= (and d!1558767 c!826125) b!4856291))

(assert (= (and d!1558767 (not c!826125)) b!4856292))

(assert (= (and b!4856292 c!826126) b!4856293))

(assert (= (and b!4856292 (not c!826126)) b!4856294))

(declare-fun m!5854088 () Bool)

(assert (=> b!4856293 m!5854088))

(declare-fun m!5854090 () Bool)

(assert (=> b!4856294 m!5854090))

(declare-fun m!5854092 () Bool)

(assert (=> b!4856294 m!5854092))

(assert (=> b!4856294 m!5854090))

(assert (=> b!4856294 m!5854092))

(declare-fun m!5854094 () Bool)

(assert (=> b!4856294 m!5854094))

(assert (=> b!4856148 d!1558767))

(declare-fun d!1558769 () Bool)

(declare-fun e!3036181 () Bool)

(assert (=> d!1558769 e!3036181))

(declare-fun res!2073146 () Bool)

(assert (=> d!1558769 (=> res!2073146 e!3036181)))

(declare-fun e!3036180 () Bool)

(assert (=> d!1558769 (= res!2073146 e!3036180)))

(declare-fun res!2073147 () Bool)

(assert (=> d!1558769 (=> (not res!2073147) (not e!3036180))))

(assert (=> d!1558769 (= res!2073147 (isEmpty!29812 lt!1991402))))

(declare-fun lt!1991428 () Unit!145843)

(declare-fun choose!35553 (List!55864 List!55864) Unit!145843)

(assert (=> d!1558769 (= lt!1991428 (choose!35553 lt!1991405 lt!1991402))))

(assert (=> d!1558769 (not (isEmpty!29812 (++!12125 lt!1991405 lt!1991402)))))

(assert (=> d!1558769 (= (lemmaLastOfConcatIsLastOfRhs!28 lt!1991405 lt!1991402) lt!1991428)))

(declare-fun b!4856310 () Bool)

(assert (=> b!4856310 (= e!3036180 (= (last!388 (++!12125 lt!1991405 lt!1991402)) (last!388 lt!1991405)))))

(declare-fun b!4856311 () Bool)

(declare-fun e!3036182 () Bool)

(assert (=> b!4856311 (= e!3036181 e!3036182)))

(declare-fun res!2073148 () Bool)

(assert (=> b!4856311 (=> (not res!2073148) (not e!3036182))))

(assert (=> b!4856311 (= res!2073148 (not (isEmpty!29812 lt!1991402)))))

(declare-fun b!4856312 () Bool)

(assert (=> b!4856312 (= e!3036182 (= (last!388 (++!12125 lt!1991405 lt!1991402)) (last!388 lt!1991402)))))

(assert (= (and d!1558769 res!2073147) b!4856310))

(assert (= (and d!1558769 (not res!2073146)) b!4856311))

(assert (= (and b!4856311 res!2073148) b!4856312))

(assert (=> d!1558769 m!5853926))

(declare-fun m!5854098 () Bool)

(assert (=> d!1558769 m!5854098))

(assert (=> d!1558769 m!5853936))

(assert (=> d!1558769 m!5853936))

(assert (=> d!1558769 m!5853972))

(assert (=> b!4856310 m!5853936))

(assert (=> b!4856310 m!5853936))

(assert (=> b!4856310 m!5853938))

(assert (=> b!4856310 m!5853946))

(assert (=> b!4856311 m!5853926))

(assert (=> b!4856312 m!5853936))

(assert (=> b!4856312 m!5853936))

(assert (=> b!4856312 m!5853938))

(assert (=> b!4856312 m!5853940))

(assert (=> b!4856148 d!1558769))

(assert (=> b!4856149 d!1558729))

(assert (=> b!4856149 d!1558731))

(declare-fun d!1558773 () Bool)

(declare-fun lt!1991429 () T!98574)

(assert (=> d!1558773 (contains!19356 lt!1991405 lt!1991429)))

(declare-fun e!3036183 () T!98574)

(assert (=> d!1558773 (= lt!1991429 e!3036183)))

(declare-fun c!826127 () Bool)

(assert (=> d!1558773 (= c!826127 (and ((_ is Cons!55740) lt!1991405) ((_ is Nil!55740) (t!363410 lt!1991405))))))

(assert (=> d!1558773 (not (isEmpty!29812 lt!1991405))))

(assert (=> d!1558773 (= (last!388 lt!1991405) lt!1991429)))

(declare-fun b!4856313 () Bool)

(assert (=> b!4856313 (= e!3036183 (h!62188 lt!1991405))))

(declare-fun b!4856314 () Bool)

(assert (=> b!4856314 (= e!3036183 (last!388 (t!363410 lt!1991405)))))

(assert (= (and d!1558773 c!826127) b!4856313))

(assert (= (and d!1558773 (not c!826127)) b!4856314))

(declare-fun m!5854100 () Bool)

(assert (=> d!1558773 m!5854100))

(declare-fun m!5854102 () Bool)

(assert (=> d!1558773 m!5854102))

(declare-fun m!5854104 () Bool)

(assert (=> b!4856314 m!5854104))

(assert (=> b!4856149 d!1558773))

(declare-fun d!1558775 () Bool)

(declare-fun res!2073154 () Bool)

(declare-fun e!3036185 () Bool)

(assert (=> d!1558775 (=> res!2073154 e!3036185)))

(assert (=> d!1558775 (= res!2073154 (not ((_ is Node!14520) t!4677)))))

(assert (=> d!1558775 (= (isBalanced!3926 t!4677) e!3036185)))

(declare-fun b!4856315 () Bool)

(declare-fun e!3036184 () Bool)

(assert (=> b!4856315 (= e!3036184 (not (isEmpty!29813 (right!40830 t!4677))))))

(declare-fun b!4856316 () Bool)

(declare-fun res!2073150 () Bool)

(assert (=> b!4856316 (=> (not res!2073150) (not e!3036184))))

(assert (=> b!4856316 (= res!2073150 (<= (- (height!1899 (left!40500 t!4677)) (height!1899 (right!40830 t!4677))) 1))))

(declare-fun b!4856317 () Bool)

(declare-fun res!2073152 () Bool)

(assert (=> b!4856317 (=> (not res!2073152) (not e!3036184))))

(assert (=> b!4856317 (= res!2073152 (not (isEmpty!29813 (left!40500 t!4677))))))

(declare-fun b!4856318 () Bool)

(declare-fun res!2073153 () Bool)

(assert (=> b!4856318 (=> (not res!2073153) (not e!3036184))))

(assert (=> b!4856318 (= res!2073153 (isBalanced!3926 (left!40500 t!4677)))))

(declare-fun b!4856319 () Bool)

(declare-fun res!2073149 () Bool)

(assert (=> b!4856319 (=> (not res!2073149) (not e!3036184))))

(assert (=> b!4856319 (= res!2073149 (isBalanced!3926 (right!40830 t!4677)))))

(declare-fun b!4856320 () Bool)

(assert (=> b!4856320 (= e!3036185 e!3036184)))

(declare-fun res!2073151 () Bool)

(assert (=> b!4856320 (=> (not res!2073151) (not e!3036184))))

(assert (=> b!4856320 (= res!2073151 (<= (- 1) (- (height!1899 (left!40500 t!4677)) (height!1899 (right!40830 t!4677)))))))

(assert (= (and d!1558775 (not res!2073154)) b!4856320))

(assert (= (and b!4856320 res!2073151) b!4856316))

(assert (= (and b!4856316 res!2073150) b!4856318))

(assert (= (and b!4856318 res!2073153) b!4856319))

(assert (= (and b!4856319 res!2073149) b!4856317))

(assert (= (and b!4856317 res!2073152) b!4856315))

(declare-fun m!5854106 () Bool)

(assert (=> b!4856317 m!5854106))

(declare-fun m!5854108 () Bool)

(assert (=> b!4856316 m!5854108))

(declare-fun m!5854110 () Bool)

(assert (=> b!4856316 m!5854110))

(assert (=> b!4856319 m!5853928))

(declare-fun m!5854112 () Bool)

(assert (=> b!4856318 m!5854112))

(assert (=> b!4856320 m!5854108))

(assert (=> b!4856320 m!5854110))

(declare-fun m!5854114 () Bool)

(assert (=> b!4856315 m!5854114))

(assert (=> start!507294 d!1558775))

(declare-fun d!1558777 () Bool)

(declare-fun c!826128 () Bool)

(assert (=> d!1558777 (= c!826128 ((_ is Node!14520) t!4677))))

(declare-fun e!3036186 () Bool)

(assert (=> d!1558777 (= (inv!71531 t!4677) e!3036186)))

(declare-fun b!4856321 () Bool)

(assert (=> b!4856321 (= e!3036186 (inv!71532 t!4677))))

(declare-fun b!4856322 () Bool)

(declare-fun e!3036187 () Bool)

(assert (=> b!4856322 (= e!3036186 e!3036187)))

(declare-fun res!2073155 () Bool)

(assert (=> b!4856322 (= res!2073155 (not ((_ is Leaf!24195) t!4677)))))

(assert (=> b!4856322 (=> res!2073155 e!3036187)))

(declare-fun b!4856323 () Bool)

(assert (=> b!4856323 (= e!3036187 (inv!71533 t!4677))))

(assert (= (and d!1558777 c!826128) b!4856321))

(assert (= (and d!1558777 (not c!826128)) b!4856322))

(assert (= (and b!4856322 (not res!2073155)) b!4856323))

(declare-fun m!5854116 () Bool)

(assert (=> b!4856321 m!5854116))

(declare-fun m!5854118 () Bool)

(assert (=> b!4856323 m!5854118))

(assert (=> start!507294 d!1558777))

(declare-fun tp!1366304 () Bool)

(declare-fun tp!1366302 () Bool)

(declare-fun b!4856334 () Bool)

(declare-fun e!3036194 () Bool)

(assert (=> b!4856334 (= e!3036194 (and (inv!71531 (left!40500 (left!40500 t!4677))) tp!1366302 (inv!71531 (right!40830 (left!40500 t!4677))) tp!1366304))))

(declare-fun b!4856336 () Bool)

(declare-fun e!3036193 () Bool)

(declare-fun tp!1366303 () Bool)

(assert (=> b!4856336 (= e!3036193 tp!1366303)))

(declare-fun b!4856335 () Bool)

(assert (=> b!4856335 (= e!3036194 (and (inv!71530 (xs!17826 (left!40500 t!4677))) e!3036193))))

(assert (=> b!4856145 (= tp!1366293 (and (inv!71531 (left!40500 t!4677)) e!3036194))))

(assert (= (and b!4856145 ((_ is Node!14520) (left!40500 t!4677))) b!4856334))

(assert (= b!4856335 b!4856336))

(assert (= (and b!4856145 ((_ is Leaf!24195) (left!40500 t!4677))) b!4856335))

(declare-fun m!5854134 () Bool)

(assert (=> b!4856334 m!5854134))

(declare-fun m!5854136 () Bool)

(assert (=> b!4856334 m!5854136))

(declare-fun m!5854138 () Bool)

(assert (=> b!4856335 m!5854138))

(assert (=> b!4856145 m!5853950))

(declare-fun b!4856341 () Bool)

(declare-fun tp!1366307 () Bool)

(declare-fun e!3036198 () Bool)

(declare-fun tp!1366309 () Bool)

(assert (=> b!4856341 (= e!3036198 (and (inv!71531 (left!40500 (right!40830 t!4677))) tp!1366307 (inv!71531 (right!40830 (right!40830 t!4677))) tp!1366309))))

(declare-fun b!4856343 () Bool)

(declare-fun e!3036197 () Bool)

(declare-fun tp!1366308 () Bool)

(assert (=> b!4856343 (= e!3036197 tp!1366308)))

(declare-fun b!4856342 () Bool)

(assert (=> b!4856342 (= e!3036198 (and (inv!71530 (xs!17826 (right!40830 t!4677))) e!3036197))))

(assert (=> b!4856145 (= tp!1366295 (and (inv!71531 (right!40830 t!4677)) e!3036198))))

(assert (= (and b!4856145 ((_ is Node!14520) (right!40830 t!4677))) b!4856341))

(assert (= b!4856342 b!4856343))

(assert (= (and b!4856145 ((_ is Leaf!24195) (right!40830 t!4677))) b!4856342))

(declare-fun m!5854140 () Bool)

(assert (=> b!4856341 m!5854140))

(declare-fun m!5854142 () Bool)

(assert (=> b!4856341 m!5854142))

(declare-fun m!5854144 () Bool)

(assert (=> b!4856342 m!5854144))

(assert (=> b!4856145 m!5853952))

(declare-fun b!4856357 () Bool)

(declare-fun e!3036206 () Bool)

(declare-fun tp_is_empty!35499 () Bool)

(declare-fun tp!1366319 () Bool)

(assert (=> b!4856357 (= e!3036206 (and tp_is_empty!35499 tp!1366319))))

(assert (=> b!4856153 (= tp!1366294 e!3036206)))

(assert (= (and b!4856153 ((_ is Cons!55740) (innerList!14608 (xs!17826 t!4677)))) b!4856357))

(check-sat (not d!1558773) (not b!4856145) (not d!1558731) (not b!4856289) (not b!4856165) (not b!4856251) (not b!4856316) (not b!4856334) (not b!4856160) (not b!4856335) (not d!1558769) (not b!4856314) (not b!4856321) (not b!4856189) (not d!1558729) (not b!4856212) (not b!4856312) (not d!1558741) (not d!1558737) (not b!4856319) (not b!4856343) (not d!1558739) (not b!4856290) (not b!4856252) (not b!4856255) (not b!4856310) (not b!4856341) (not b!4856163) (not b!4856311) (not b!4856320) (not b!4856315) (not b!4856256) tp_is_empty!35499 (not b!4856317) (not b!4856318) (not b!4856208) (not b!4856323) (not b!4856342) (not b!4856357) (not b!4856294) (not b!4856162) (not b!4856254) (not b!4856253) (not b!4856336) (not b!4856293) (not b!4856209))
(check-sat)
