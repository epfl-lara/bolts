; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107764 () Bool)

(assert start!107764)

(declare-datatypes ((B!2110 0))(
  ( (B!2111 (val!16651 Int)) )
))
(declare-datatypes ((tuple2!21530 0))(
  ( (tuple2!21531 (_1!10775 (_ BitVec 64)) (_2!10775 B!2110)) )
))
(declare-datatypes ((List!28735 0))(
  ( (Nil!28732) (Cons!28731 (h!29940 tuple2!21530) (t!42275 List!28735)) )
))
(declare-datatypes ((ListLongMap!19271 0))(
  ( (ListLongMap!19272 (toList!9651 List!28735)) )
))
(declare-fun thiss!217 () ListLongMap!19271)

(declare-fun key!129 () (_ BitVec 64))

(declare-fun inv!44700 (ListLongMap!19271) Bool)

(declare-fun removeStrictlySorted!175 (List!28735 (_ BitVec 64)) List!28735)

(assert (=> start!107764 (not (inv!44700 (ListLongMap!19272 (removeStrictlySorted!175 (toList!9651 thiss!217) key!129))))))

(declare-fun e!727224 () Bool)

(assert (=> start!107764 (and (inv!44700 thiss!217) e!727224)))

(assert (=> start!107764 true))

(declare-fun b!1274272 () Bool)

(declare-fun tp!97917 () Bool)

(assert (=> b!1274272 (= e!727224 tp!97917)))

(assert (= start!107764 b!1274272))

(declare-fun m!1171093 () Bool)

(assert (=> start!107764 m!1171093))

(declare-fun m!1171095 () Bool)

(assert (=> start!107764 m!1171095))

(declare-fun m!1171097 () Bool)

(assert (=> start!107764 m!1171097))

(check-sat (not start!107764) (not b!1274272))
(check-sat)
(get-model)

(declare-fun d!140053 () Bool)

(declare-fun isStrictlySorted!836 (List!28735) Bool)

(assert (=> d!140053 (= (inv!44700 (ListLongMap!19272 (removeStrictlySorted!175 (toList!9651 thiss!217) key!129))) (isStrictlySorted!836 (toList!9651 (ListLongMap!19272 (removeStrictlySorted!175 (toList!9651 thiss!217) key!129)))))))

(declare-fun bs!36178 () Bool)

(assert (= bs!36178 d!140053))

(declare-fun m!1171109 () Bool)

(assert (=> bs!36178 m!1171109))

(assert (=> start!107764 d!140053))

(declare-fun b!1274322 () Bool)

(declare-fun e!727255 () List!28735)

(assert (=> b!1274322 (= e!727255 Nil!28732)))

(declare-fun b!1274323 () Bool)

(declare-fun e!727256 () Bool)

(declare-fun lt!575162 () List!28735)

(declare-fun containsKey!694 (List!28735 (_ BitVec 64)) Bool)

(assert (=> b!1274323 (= e!727256 (not (containsKey!694 lt!575162 key!129)))))

(declare-fun b!1274324 () Bool)

(declare-fun e!727254 () List!28735)

(assert (=> b!1274324 (= e!727254 e!727255)))

(declare-fun c!123786 () Bool)

(get-info :version)

(assert (=> b!1274324 (= c!123786 (and ((_ is Cons!28731) (toList!9651 thiss!217)) (not (= (_1!10775 (h!29940 (toList!9651 thiss!217))) key!129))))))

(declare-fun b!1274325 () Bool)

(declare-fun $colon$colon!658 (List!28735 tuple2!21530) List!28735)

(assert (=> b!1274325 (= e!727255 ($colon$colon!658 (removeStrictlySorted!175 (t!42275 (toList!9651 thiss!217)) key!129) (h!29940 (toList!9651 thiss!217))))))

(declare-fun d!140057 () Bool)

(assert (=> d!140057 e!727256))

(declare-fun res!847270 () Bool)

(assert (=> d!140057 (=> (not res!847270) (not e!727256))))

(assert (=> d!140057 (= res!847270 (isStrictlySorted!836 lt!575162))))

(assert (=> d!140057 (= lt!575162 e!727254)))

(declare-fun c!123785 () Bool)

(assert (=> d!140057 (= c!123785 (and ((_ is Cons!28731) (toList!9651 thiss!217)) (= (_1!10775 (h!29940 (toList!9651 thiss!217))) key!129)))))

(assert (=> d!140057 (isStrictlySorted!836 (toList!9651 thiss!217))))

(assert (=> d!140057 (= (removeStrictlySorted!175 (toList!9651 thiss!217) key!129) lt!575162)))

(declare-fun b!1274326 () Bool)

(assert (=> b!1274326 (= e!727254 (t!42275 (toList!9651 thiss!217)))))

(assert (= (and d!140057 c!123785) b!1274326))

(assert (= (and d!140057 (not c!123785)) b!1274324))

(assert (= (and b!1274324 c!123786) b!1274325))

(assert (= (and b!1274324 (not c!123786)) b!1274322))

(assert (= (and d!140057 res!847270) b!1274323))

(declare-fun m!1171131 () Bool)

(assert (=> b!1274323 m!1171131))

(declare-fun m!1171133 () Bool)

(assert (=> b!1274325 m!1171133))

(assert (=> b!1274325 m!1171133))

(declare-fun m!1171135 () Bool)

(assert (=> b!1274325 m!1171135))

(declare-fun m!1171137 () Bool)

(assert (=> d!140057 m!1171137))

(declare-fun m!1171139 () Bool)

(assert (=> d!140057 m!1171139))

(assert (=> start!107764 d!140057))

(declare-fun d!140063 () Bool)

(assert (=> d!140063 (= (inv!44700 thiss!217) (isStrictlySorted!836 (toList!9651 thiss!217)))))

(declare-fun bs!36181 () Bool)

(assert (= bs!36181 d!140063))

(assert (=> bs!36181 m!1171139))

(assert (=> start!107764 d!140063))

(declare-fun b!1274335 () Bool)

(declare-fun e!727263 () Bool)

(declare-fun tp_is_empty!33155 () Bool)

(declare-fun tp!97929 () Bool)

(assert (=> b!1274335 (= e!727263 (and tp_is_empty!33155 tp!97929))))

(assert (=> b!1274272 (= tp!97917 e!727263)))

(assert (= (and b!1274272 ((_ is Cons!28731) (toList!9651 thiss!217))) b!1274335))

(check-sat (not d!140053) (not d!140063) tp_is_empty!33155 (not b!1274325) (not d!140057) (not b!1274323) (not b!1274335))
(check-sat)
