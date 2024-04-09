; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7122 () Bool)

(assert start!7122)

(declare-fun b!45617 () Bool)

(declare-fun res!26749 () Bool)

(declare-fun e!29041 () Bool)

(assert (=> b!45617 (=> (not res!26749) (not e!29041))))

(declare-datatypes ((B!832 0))(
  ( (B!833 (val!1003 Int)) )
))
(declare-datatypes ((tuple2!1658 0))(
  ( (tuple2!1659 (_1!839 (_ BitVec 64)) (_2!839 B!832)) )
))
(declare-datatypes ((List!1237 0))(
  ( (Nil!1234) (Cons!1233 (h!1813 tuple2!1658) (t!4270 List!1237)) )
))
(declare-fun l!812 () List!1237)

(declare-fun isStrictlySorted!214 (List!1237) Bool)

(assert (=> b!45617 (= res!26749 (isStrictlySorted!214 (t!4270 l!812)))))

(declare-fun b!45618 () Bool)

(declare-fun key1!43 () (_ BitVec 64))

(declare-fun removeStrictlySorted!29 (List!1237 (_ BitVec 64)) List!1237)

(assert (=> b!45618 (= e!29041 (not (isStrictlySorted!214 (removeStrictlySorted!29 l!812 key1!43))))))

(declare-fun key2!27 () (_ BitVec 64))

(assert (=> b!45618 (= (removeStrictlySorted!29 (removeStrictlySorted!29 (t!4270 l!812) key1!43) key2!27) (removeStrictlySorted!29 (removeStrictlySorted!29 (t!4270 l!812) key2!27) key1!43))))

(declare-datatypes ((Unit!1305 0))(
  ( (Unit!1306) )
))
(declare-fun lt!20189 () Unit!1305)

(declare-fun lemmaRemoveStrictlySortedCommutative!8 (List!1237 (_ BitVec 64) (_ BitVec 64)) Unit!1305)

(assert (=> b!45618 (= lt!20189 (lemmaRemoveStrictlySortedCommutative!8 (t!4270 l!812) key1!43 key2!27))))

(declare-fun b!45619 () Bool)

(declare-fun e!29042 () Bool)

(declare-fun tp_is_empty!1929 () Bool)

(declare-fun tp!5987 () Bool)

(assert (=> b!45619 (= e!29042 (and tp_is_empty!1929 tp!5987))))

(declare-fun b!45616 () Bool)

(declare-fun res!26748 () Bool)

(assert (=> b!45616 (=> (not res!26748) (not e!29041))))

(get-info :version)

(assert (=> b!45616 (= res!26748 ((_ is Cons!1233) l!812))))

(declare-fun res!26747 () Bool)

(assert (=> start!7122 (=> (not res!26747) (not e!29041))))

(assert (=> start!7122 (= res!26747 (isStrictlySorted!214 l!812))))

(assert (=> start!7122 e!29041))

(assert (=> start!7122 e!29042))

(assert (=> start!7122 true))

(assert (= (and start!7122 res!26747) b!45616))

(assert (= (and b!45616 res!26748) b!45617))

(assert (= (and b!45617 res!26749) b!45618))

(assert (= (and start!7122 ((_ is Cons!1233) l!812)) b!45619))

(declare-fun m!40173 () Bool)

(assert (=> b!45617 m!40173))

(declare-fun m!40175 () Bool)

(assert (=> b!45618 m!40175))

(declare-fun m!40177 () Bool)

(assert (=> b!45618 m!40177))

(declare-fun m!40179 () Bool)

(assert (=> b!45618 m!40179))

(assert (=> b!45618 m!40175))

(declare-fun m!40181 () Bool)

(assert (=> b!45618 m!40181))

(declare-fun m!40183 () Bool)

(assert (=> b!45618 m!40183))

(declare-fun m!40185 () Bool)

(assert (=> b!45618 m!40185))

(assert (=> b!45618 m!40181))

(assert (=> b!45618 m!40179))

(declare-fun m!40187 () Bool)

(assert (=> b!45618 m!40187))

(declare-fun m!40189 () Bool)

(assert (=> start!7122 m!40189))

(check-sat tp_is_empty!1929 (not b!45618) (not b!45619) (not start!7122) (not b!45617))
(check-sat)
(get-model)

(declare-fun b!45666 () Bool)

(declare-fun e!29075 () List!1237)

(declare-fun $colon$colon!31 (List!1237 tuple2!1658) List!1237)

(assert (=> b!45666 (= e!29075 ($colon$colon!31 (removeStrictlySorted!29 (t!4270 l!812) key1!43) (h!1813 l!812)))))

(declare-fun b!45667 () Bool)

(declare-fun e!29077 () List!1237)

(assert (=> b!45667 (= e!29077 e!29075)))

(declare-fun c!6150 () Bool)

(assert (=> b!45667 (= c!6150 (and ((_ is Cons!1233) l!812) (not (= (_1!839 (h!1813 l!812)) key1!43))))))

(declare-fun d!8918 () Bool)

(declare-fun e!29076 () Bool)

(assert (=> d!8918 e!29076))

(declare-fun res!26777 () Bool)

(assert (=> d!8918 (=> (not res!26777) (not e!29076))))

(declare-fun lt!20197 () List!1237)

(assert (=> d!8918 (= res!26777 (isStrictlySorted!214 lt!20197))))

(assert (=> d!8918 (= lt!20197 e!29077)))

(declare-fun c!6151 () Bool)

(assert (=> d!8918 (= c!6151 (and ((_ is Cons!1233) l!812) (= (_1!839 (h!1813 l!812)) key1!43)))))

(assert (=> d!8918 (isStrictlySorted!214 l!812)))

(assert (=> d!8918 (= (removeStrictlySorted!29 l!812 key1!43) lt!20197)))

(declare-fun b!45668 () Bool)

(assert (=> b!45668 (= e!29075 Nil!1234)))

(declare-fun b!45669 () Bool)

(declare-fun containsKey!77 (List!1237 (_ BitVec 64)) Bool)

(assert (=> b!45669 (= e!29076 (not (containsKey!77 lt!20197 key1!43)))))

(declare-fun b!45670 () Bool)

(assert (=> b!45670 (= e!29077 (t!4270 l!812))))

(assert (= (and d!8918 c!6151) b!45670))

(assert (= (and d!8918 (not c!6151)) b!45667))

(assert (= (and b!45667 c!6150) b!45666))

(assert (= (and b!45667 (not c!6150)) b!45668))

(assert (= (and d!8918 res!26777) b!45669))

(assert (=> b!45666 m!40175))

(assert (=> b!45666 m!40175))

(declare-fun m!40213 () Bool)

(assert (=> b!45666 m!40213))

(declare-fun m!40215 () Bool)

(assert (=> d!8918 m!40215))

(assert (=> d!8918 m!40189))

(declare-fun m!40217 () Bool)

(assert (=> b!45669 m!40217))

(assert (=> b!45618 d!8918))

(declare-fun b!45681 () Bool)

(declare-fun e!29084 () List!1237)

(assert (=> b!45681 (= e!29084 ($colon$colon!31 (removeStrictlySorted!29 (t!4270 (t!4270 l!812)) key2!27) (h!1813 (t!4270 l!812))))))

(declare-fun b!45682 () Bool)

(declare-fun e!29086 () List!1237)

(assert (=> b!45682 (= e!29086 e!29084)))

(declare-fun c!6156 () Bool)

(assert (=> b!45682 (= c!6156 (and ((_ is Cons!1233) (t!4270 l!812)) (not (= (_1!839 (h!1813 (t!4270 l!812))) key2!27))))))

(declare-fun d!8929 () Bool)

(declare-fun e!29085 () Bool)

(assert (=> d!8929 e!29085))

(declare-fun res!26780 () Bool)

(assert (=> d!8929 (=> (not res!26780) (not e!29085))))

(declare-fun lt!20200 () List!1237)

(assert (=> d!8929 (= res!26780 (isStrictlySorted!214 lt!20200))))

(assert (=> d!8929 (= lt!20200 e!29086)))

(declare-fun c!6157 () Bool)

(assert (=> d!8929 (= c!6157 (and ((_ is Cons!1233) (t!4270 l!812)) (= (_1!839 (h!1813 (t!4270 l!812))) key2!27)))))

(assert (=> d!8929 (isStrictlySorted!214 (t!4270 l!812))))

(assert (=> d!8929 (= (removeStrictlySorted!29 (t!4270 l!812) key2!27) lt!20200)))

(declare-fun b!45683 () Bool)

(assert (=> b!45683 (= e!29084 Nil!1234)))

(declare-fun b!45684 () Bool)

(assert (=> b!45684 (= e!29085 (not (containsKey!77 lt!20200 key2!27)))))

(declare-fun b!45685 () Bool)

(assert (=> b!45685 (= e!29086 (t!4270 (t!4270 l!812)))))

(assert (= (and d!8929 c!6157) b!45685))

(assert (= (and d!8929 (not c!6157)) b!45682))

(assert (= (and b!45682 c!6156) b!45681))

(assert (= (and b!45682 (not c!6156)) b!45683))

(assert (= (and d!8929 res!26780) b!45684))

(declare-fun m!40219 () Bool)

(assert (=> b!45681 m!40219))

(assert (=> b!45681 m!40219))

(declare-fun m!40221 () Bool)

(assert (=> b!45681 m!40221))

(declare-fun m!40223 () Bool)

(assert (=> d!8929 m!40223))

(assert (=> d!8929 m!40173))

(declare-fun m!40225 () Bool)

(assert (=> b!45684 m!40225))

(assert (=> b!45618 d!8929))

(declare-fun d!8931 () Bool)

(assert (=> d!8931 (= (removeStrictlySorted!29 (removeStrictlySorted!29 (t!4270 l!812) key1!43) key2!27) (removeStrictlySorted!29 (removeStrictlySorted!29 (t!4270 l!812) key2!27) key1!43))))

(declare-fun lt!20207 () Unit!1305)

(declare-fun choose!279 (List!1237 (_ BitVec 64) (_ BitVec 64)) Unit!1305)

(assert (=> d!8931 (= lt!20207 (choose!279 (t!4270 l!812) key1!43 key2!27))))

(assert (=> d!8931 (isStrictlySorted!214 (t!4270 l!812))))

(assert (=> d!8931 (= (lemmaRemoveStrictlySortedCommutative!8 (t!4270 l!812) key1!43 key2!27) lt!20207)))

(declare-fun bs!2147 () Bool)

(assert (= bs!2147 d!8931))

(assert (=> bs!2147 m!40173))

(assert (=> bs!2147 m!40175))

(assert (=> bs!2147 m!40177))

(declare-fun m!40255 () Bool)

(assert (=> bs!2147 m!40255))

(assert (=> bs!2147 m!40181))

(assert (=> bs!2147 m!40183))

(assert (=> bs!2147 m!40181))

(assert (=> bs!2147 m!40175))

(assert (=> b!45618 d!8931))

(declare-fun e!29101 () List!1237)

(declare-fun b!45708 () Bool)

(assert (=> b!45708 (= e!29101 ($colon$colon!31 (removeStrictlySorted!29 (t!4270 (removeStrictlySorted!29 (t!4270 l!812) key1!43)) key2!27) (h!1813 (removeStrictlySorted!29 (t!4270 l!812) key1!43))))))

(declare-fun b!45709 () Bool)

(declare-fun e!29103 () List!1237)

(assert (=> b!45709 (= e!29103 e!29101)))

(declare-fun c!6166 () Bool)

(assert (=> b!45709 (= c!6166 (and ((_ is Cons!1233) (removeStrictlySorted!29 (t!4270 l!812) key1!43)) (not (= (_1!839 (h!1813 (removeStrictlySorted!29 (t!4270 l!812) key1!43))) key2!27))))))

(declare-fun d!8941 () Bool)

(declare-fun e!29102 () Bool)

(assert (=> d!8941 e!29102))

(declare-fun res!26787 () Bool)

(assert (=> d!8941 (=> (not res!26787) (not e!29102))))

(declare-fun lt!20208 () List!1237)

(assert (=> d!8941 (= res!26787 (isStrictlySorted!214 lt!20208))))

(assert (=> d!8941 (= lt!20208 e!29103)))

(declare-fun c!6167 () Bool)

(assert (=> d!8941 (= c!6167 (and ((_ is Cons!1233) (removeStrictlySorted!29 (t!4270 l!812) key1!43)) (= (_1!839 (h!1813 (removeStrictlySorted!29 (t!4270 l!812) key1!43))) key2!27)))))

(assert (=> d!8941 (isStrictlySorted!214 (removeStrictlySorted!29 (t!4270 l!812) key1!43))))

(assert (=> d!8941 (= (removeStrictlySorted!29 (removeStrictlySorted!29 (t!4270 l!812) key1!43) key2!27) lt!20208)))

(declare-fun b!45710 () Bool)

(assert (=> b!45710 (= e!29101 Nil!1234)))

(declare-fun b!45711 () Bool)

(assert (=> b!45711 (= e!29102 (not (containsKey!77 lt!20208 key2!27)))))

(declare-fun b!45712 () Bool)

(assert (=> b!45712 (= e!29103 (t!4270 (removeStrictlySorted!29 (t!4270 l!812) key1!43)))))

(assert (= (and d!8941 c!6167) b!45712))

(assert (= (and d!8941 (not c!6167)) b!45709))

(assert (= (and b!45709 c!6166) b!45708))

(assert (= (and b!45709 (not c!6166)) b!45710))

(assert (= (and d!8941 res!26787) b!45711))

(declare-fun m!40257 () Bool)

(assert (=> b!45708 m!40257))

(assert (=> b!45708 m!40257))

(declare-fun m!40259 () Bool)

(assert (=> b!45708 m!40259))

(declare-fun m!40261 () Bool)

(assert (=> d!8941 m!40261))

(assert (=> d!8941 m!40175))

(declare-fun m!40263 () Bool)

(assert (=> d!8941 m!40263))

(declare-fun m!40265 () Bool)

(assert (=> b!45711 m!40265))

(assert (=> b!45618 d!8941))

(declare-fun e!29104 () List!1237)

(declare-fun b!45713 () Bool)

(assert (=> b!45713 (= e!29104 ($colon$colon!31 (removeStrictlySorted!29 (t!4270 (removeStrictlySorted!29 (t!4270 l!812) key2!27)) key1!43) (h!1813 (removeStrictlySorted!29 (t!4270 l!812) key2!27))))))

(declare-fun b!45714 () Bool)

(declare-fun e!29106 () List!1237)

(assert (=> b!45714 (= e!29106 e!29104)))

(declare-fun c!6168 () Bool)

(assert (=> b!45714 (= c!6168 (and ((_ is Cons!1233) (removeStrictlySorted!29 (t!4270 l!812) key2!27)) (not (= (_1!839 (h!1813 (removeStrictlySorted!29 (t!4270 l!812) key2!27))) key1!43))))))

(declare-fun d!8943 () Bool)

(declare-fun e!29105 () Bool)

(assert (=> d!8943 e!29105))

(declare-fun res!26788 () Bool)

(assert (=> d!8943 (=> (not res!26788) (not e!29105))))

(declare-fun lt!20209 () List!1237)

(assert (=> d!8943 (= res!26788 (isStrictlySorted!214 lt!20209))))

(assert (=> d!8943 (= lt!20209 e!29106)))

(declare-fun c!6169 () Bool)

(assert (=> d!8943 (= c!6169 (and ((_ is Cons!1233) (removeStrictlySorted!29 (t!4270 l!812) key2!27)) (= (_1!839 (h!1813 (removeStrictlySorted!29 (t!4270 l!812) key2!27))) key1!43)))))

(assert (=> d!8943 (isStrictlySorted!214 (removeStrictlySorted!29 (t!4270 l!812) key2!27))))

(assert (=> d!8943 (= (removeStrictlySorted!29 (removeStrictlySorted!29 (t!4270 l!812) key2!27) key1!43) lt!20209)))

(declare-fun b!45715 () Bool)

(assert (=> b!45715 (= e!29104 Nil!1234)))

(declare-fun b!45716 () Bool)

(assert (=> b!45716 (= e!29105 (not (containsKey!77 lt!20209 key1!43)))))

(declare-fun b!45717 () Bool)

(assert (=> b!45717 (= e!29106 (t!4270 (removeStrictlySorted!29 (t!4270 l!812) key2!27)))))

(assert (= (and d!8943 c!6169) b!45717))

(assert (= (and d!8943 (not c!6169)) b!45714))

(assert (= (and b!45714 c!6168) b!45713))

(assert (= (and b!45714 (not c!6168)) b!45715))

(assert (= (and d!8943 res!26788) b!45716))

(declare-fun m!40267 () Bool)

(assert (=> b!45713 m!40267))

(assert (=> b!45713 m!40267))

(declare-fun m!40269 () Bool)

(assert (=> b!45713 m!40269))

(declare-fun m!40271 () Bool)

(assert (=> d!8943 m!40271))

(assert (=> d!8943 m!40181))

(declare-fun m!40273 () Bool)

(assert (=> d!8943 m!40273))

(declare-fun m!40275 () Bool)

(assert (=> b!45716 m!40275))

(assert (=> b!45618 d!8943))

(declare-fun b!45718 () Bool)

(declare-fun e!29107 () List!1237)

(assert (=> b!45718 (= e!29107 ($colon$colon!31 (removeStrictlySorted!29 (t!4270 (t!4270 l!812)) key1!43) (h!1813 (t!4270 l!812))))))

(declare-fun b!45719 () Bool)

(declare-fun e!29109 () List!1237)

(assert (=> b!45719 (= e!29109 e!29107)))

(declare-fun c!6170 () Bool)

(assert (=> b!45719 (= c!6170 (and ((_ is Cons!1233) (t!4270 l!812)) (not (= (_1!839 (h!1813 (t!4270 l!812))) key1!43))))))

(declare-fun d!8945 () Bool)

(declare-fun e!29108 () Bool)

(assert (=> d!8945 e!29108))

(declare-fun res!26789 () Bool)

(assert (=> d!8945 (=> (not res!26789) (not e!29108))))

(declare-fun lt!20212 () List!1237)

(assert (=> d!8945 (= res!26789 (isStrictlySorted!214 lt!20212))))

(assert (=> d!8945 (= lt!20212 e!29109)))

(declare-fun c!6171 () Bool)

(assert (=> d!8945 (= c!6171 (and ((_ is Cons!1233) (t!4270 l!812)) (= (_1!839 (h!1813 (t!4270 l!812))) key1!43)))))

(assert (=> d!8945 (isStrictlySorted!214 (t!4270 l!812))))

(assert (=> d!8945 (= (removeStrictlySorted!29 (t!4270 l!812) key1!43) lt!20212)))

(declare-fun b!45720 () Bool)

(assert (=> b!45720 (= e!29107 Nil!1234)))

(declare-fun b!45721 () Bool)

(assert (=> b!45721 (= e!29108 (not (containsKey!77 lt!20212 key1!43)))))

(declare-fun b!45722 () Bool)

(assert (=> b!45722 (= e!29109 (t!4270 (t!4270 l!812)))))

(assert (= (and d!8945 c!6171) b!45722))

(assert (= (and d!8945 (not c!6171)) b!45719))

(assert (= (and b!45719 c!6170) b!45718))

(assert (= (and b!45719 (not c!6170)) b!45720))

(assert (= (and d!8945 res!26789) b!45721))

(declare-fun m!40277 () Bool)

(assert (=> b!45718 m!40277))

(assert (=> b!45718 m!40277))

(declare-fun m!40279 () Bool)

(assert (=> b!45718 m!40279))

(declare-fun m!40281 () Bool)

(assert (=> d!8945 m!40281))

(assert (=> d!8945 m!40173))

(declare-fun m!40283 () Bool)

(assert (=> b!45721 m!40283))

(assert (=> b!45618 d!8945))

(declare-fun d!8947 () Bool)

(declare-fun res!26797 () Bool)

(declare-fun e!29123 () Bool)

(assert (=> d!8947 (=> res!26797 e!29123)))

(assert (=> d!8947 (= res!26797 (or ((_ is Nil!1234) (removeStrictlySorted!29 l!812 key1!43)) ((_ is Nil!1234) (t!4270 (removeStrictlySorted!29 l!812 key1!43)))))))

(assert (=> d!8947 (= (isStrictlySorted!214 (removeStrictlySorted!29 l!812 key1!43)) e!29123)))

(declare-fun b!45742 () Bool)

(declare-fun e!29124 () Bool)

(assert (=> b!45742 (= e!29123 e!29124)))

(declare-fun res!26798 () Bool)

(assert (=> b!45742 (=> (not res!26798) (not e!29124))))

(assert (=> b!45742 (= res!26798 (bvslt (_1!839 (h!1813 (removeStrictlySorted!29 l!812 key1!43))) (_1!839 (h!1813 (t!4270 (removeStrictlySorted!29 l!812 key1!43))))))))

(declare-fun b!45743 () Bool)

(assert (=> b!45743 (= e!29124 (isStrictlySorted!214 (t!4270 (removeStrictlySorted!29 l!812 key1!43))))))

(assert (= (and d!8947 (not res!26797)) b!45742))

(assert (= (and b!45742 res!26798) b!45743))

(declare-fun m!40319 () Bool)

(assert (=> b!45743 m!40319))

(assert (=> b!45618 d!8947))

(declare-fun d!8959 () Bool)

(declare-fun res!26801 () Bool)

(declare-fun e!29131 () Bool)

(assert (=> d!8959 (=> res!26801 e!29131)))

(assert (=> d!8959 (= res!26801 (or ((_ is Nil!1234) (t!4270 l!812)) ((_ is Nil!1234) (t!4270 (t!4270 l!812)))))))

(assert (=> d!8959 (= (isStrictlySorted!214 (t!4270 l!812)) e!29131)))

(declare-fun b!45754 () Bool)

(declare-fun e!29132 () Bool)

(assert (=> b!45754 (= e!29131 e!29132)))

(declare-fun res!26802 () Bool)

(assert (=> b!45754 (=> (not res!26802) (not e!29132))))

(assert (=> b!45754 (= res!26802 (bvslt (_1!839 (h!1813 (t!4270 l!812))) (_1!839 (h!1813 (t!4270 (t!4270 l!812))))))))

(declare-fun b!45755 () Bool)

(assert (=> b!45755 (= e!29132 (isStrictlySorted!214 (t!4270 (t!4270 l!812))))))

(assert (= (and d!8959 (not res!26801)) b!45754))

(assert (= (and b!45754 res!26802) b!45755))

(declare-fun m!40327 () Bool)

(assert (=> b!45755 m!40327))

(assert (=> b!45617 d!8959))

(declare-fun d!8961 () Bool)

(declare-fun res!26803 () Bool)

(declare-fun e!29133 () Bool)

(assert (=> d!8961 (=> res!26803 e!29133)))

(assert (=> d!8961 (= res!26803 (or ((_ is Nil!1234) l!812) ((_ is Nil!1234) (t!4270 l!812))))))

(assert (=> d!8961 (= (isStrictlySorted!214 l!812) e!29133)))

(declare-fun b!45756 () Bool)

(declare-fun e!29134 () Bool)

(assert (=> b!45756 (= e!29133 e!29134)))

(declare-fun res!26804 () Bool)

(assert (=> b!45756 (=> (not res!26804) (not e!29134))))

(assert (=> b!45756 (= res!26804 (bvslt (_1!839 (h!1813 l!812)) (_1!839 (h!1813 (t!4270 l!812)))))))

(declare-fun b!45757 () Bool)

(assert (=> b!45757 (= e!29134 (isStrictlySorted!214 (t!4270 l!812)))))

(assert (= (and d!8961 (not res!26803)) b!45756))

(assert (= (and b!45756 res!26804) b!45757))

(assert (=> b!45757 m!40173))

(assert (=> start!7122 d!8961))

(declare-fun b!45773 () Bool)

(declare-fun e!29144 () Bool)

(declare-fun tp!5995 () Bool)

(assert (=> b!45773 (= e!29144 (and tp_is_empty!1929 tp!5995))))

(assert (=> b!45619 (= tp!5987 e!29144)))

(assert (= (and b!45619 ((_ is Cons!1233) (t!4270 l!812))) b!45773))

(check-sat (not b!45716) (not b!45755) (not d!8918) (not b!45708) (not b!45718) (not b!45684) (not d!8945) (not d!8929) (not b!45757) (not b!45773) (not b!45721) (not d!8941) (not b!45669) (not b!45711) (not b!45681) (not b!45713) tp_is_empty!1929 (not b!45666) (not b!45743) (not d!8943) (not d!8931))
(check-sat)
