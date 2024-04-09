; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107766 () Bool)

(assert start!107766)

(declare-datatypes ((B!2112 0))(
  ( (B!2113 (val!16652 Int)) )
))
(declare-datatypes ((tuple2!21532 0))(
  ( (tuple2!21533 (_1!10776 (_ BitVec 64)) (_2!10776 B!2112)) )
))
(declare-datatypes ((List!28736 0))(
  ( (Nil!28733) (Cons!28732 (h!29941 tuple2!21532) (t!42276 List!28736)) )
))
(declare-datatypes ((ListLongMap!19273 0))(
  ( (ListLongMap!19274 (toList!9652 List!28736)) )
))
(declare-fun thiss!217 () ListLongMap!19273)

(declare-fun key!129 () (_ BitVec 64))

(declare-fun inv!44701 (ListLongMap!19273) Bool)

(declare-fun removeStrictlySorted!176 (List!28736 (_ BitVec 64)) List!28736)

(assert (=> start!107766 (not (inv!44701 (ListLongMap!19274 (removeStrictlySorted!176 (toList!9652 thiss!217) key!129))))))

(declare-fun e!727227 () Bool)

(assert (=> start!107766 (and (inv!44701 thiss!217) e!727227)))

(assert (=> start!107766 true))

(declare-fun b!1274275 () Bool)

(declare-fun tp!97920 () Bool)

(assert (=> b!1274275 (= e!727227 tp!97920)))

(assert (= start!107766 b!1274275))

(declare-fun m!1171099 () Bool)

(assert (=> start!107766 m!1171099))

(declare-fun m!1171101 () Bool)

(assert (=> start!107766 m!1171101))

(declare-fun m!1171103 () Bool)

(assert (=> start!107766 m!1171103))

(push 1)

(assert (not start!107766))

(assert (not b!1274275))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!140049 () Bool)

(declare-fun isStrictlySorted!835 (List!28736) Bool)

(assert (=> d!140049 (= (inv!44701 (ListLongMap!19274 (removeStrictlySorted!176 (toList!9652 thiss!217) key!129))) (isStrictlySorted!835 (toList!9652 (ListLongMap!19274 (removeStrictlySorted!176 (toList!9652 thiss!217) key!129)))))))

(declare-fun bs!36177 () Bool)

(assert (= bs!36177 d!140049))

(declare-fun m!1171107 () Bool)

(assert (=> bs!36177 m!1171107))

(assert (=> start!107766 d!140049))

(declare-fun b!1274311 () Bool)

(declare-fun e!727251 () List!28736)

(assert (=> b!1274311 (= e!727251 Nil!28733)))

(declare-fun b!1274312 () Bool)

(declare-fun e!727249 () Bool)

(declare-fun lt!575161 () List!28736)

(declare-fun containsKey!693 (List!28736 (_ BitVec 64)) Bool)

(assert (=> b!1274312 (= e!727249 (not (containsKey!693 lt!575161 key!129)))))

(declare-fun d!140055 () Bool)

(assert (=> d!140055 e!727249))

(declare-fun res!847269 () Bool)

(assert (=> d!140055 (=> (not res!847269) (not e!727249))))

(assert (=> d!140055 (= res!847269 (isStrictlySorted!835 lt!575161))))

(declare-fun e!727250 () List!28736)

(assert (=> d!140055 (= lt!575161 e!727250)))

(declare-fun c!123784 () Bool)

(assert (=> d!140055 (= c!123784 (and (is-Cons!28732 (toList!9652 thiss!217)) (= (_1!10776 (h!29941 (toList!9652 thiss!217))) key!129)))))

(assert (=> d!140055 (isStrictlySorted!835 (toList!9652 thiss!217))))

(assert (=> d!140055 (= (removeStrictlySorted!176 (toList!9652 thiss!217) key!129) lt!575161)))

(declare-fun b!1274313 () Bool)

(assert (=> b!1274313 (= e!727250 e!727251)))

(declare-fun c!123783 () Bool)

(assert (=> b!1274313 (= c!123783 (and (is-Cons!28732 (toList!9652 thiss!217)) (not (= (_1!10776 (h!29941 (toList!9652 thiss!217))) key!129))))))

(declare-fun b!1274314 () Bool)

(assert (=> b!1274314 (= e!727250 (t!42276 (toList!9652 thiss!217)))))

(declare-fun b!1274315 () Bool)

(declare-fun $colon$colon!659 (List!28736 tuple2!21532) List!28736)

(assert (=> b!1274315 (= e!727251 ($colon$colon!659 (removeStrictlySorted!176 (t!42276 (toList!9652 thiss!217)) key!129) (h!29941 (toList!9652 thiss!217))))))

(assert (= (and d!140055 c!123784) b!1274314))

(assert (= (and d!140055 (not c!123784)) b!1274313))

(assert (= (and b!1274313 c!123783) b!1274315))

(assert (= (and b!1274313 (not c!123783)) b!1274311))

(assert (= (and d!140055 res!847269) b!1274312))

(declare-fun m!1171121 () Bool)

(assert (=> b!1274312 m!1171121))

(declare-fun m!1171123 () Bool)

(assert (=> d!140055 m!1171123))

(declare-fun m!1171125 () Bool)

(assert (=> d!140055 m!1171125))

(declare-fun m!1171127 () Bool)

(assert (=> b!1274315 m!1171127))

(assert (=> b!1274315 m!1171127))

(declare-fun m!1171129 () Bool)

(assert (=> b!1274315 m!1171129))

(assert (=> start!107766 d!140055))

(declare-fun d!140061 () Bool)

(assert (=> d!140061 (= (inv!44701 thiss!217) (isStrictlySorted!835 (toList!9652 thiss!217)))))

(declare-fun bs!36180 () Bool)

(assert (= bs!36180 d!140061))

(assert (=> bs!36180 m!1171125))

(assert (=> start!107766 d!140061))

(declare-fun b!1274330 () Bool)

(declare-fun e!727260 () Bool)

