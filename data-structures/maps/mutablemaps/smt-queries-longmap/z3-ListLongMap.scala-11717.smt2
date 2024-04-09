; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137172 () Bool)

(assert start!137172)

(declare-fun b!1580157 () Bool)

(declare-fun e!881546 () Bool)

(declare-fun e!881545 () Bool)

(assert (=> b!1580157 (= e!881546 e!881545)))

(declare-fun res!1079581 () Bool)

(assert (=> b!1580157 (=> (not res!1079581) (not e!881545))))

(declare-fun e!881544 () Bool)

(assert (=> b!1580157 (= res!1079581 e!881544)))

(declare-fun res!1079580 () Bool)

(assert (=> b!1580157 (=> res!1079580 e!881544)))

(declare-datatypes ((B!2644 0))(
  ( (B!2645 (val!19684 Int)) )
))
(declare-datatypes ((tuple2!25654 0))(
  ( (tuple2!25655 (_1!12837 (_ BitVec 64)) (_2!12837 B!2644)) )
))
(declare-datatypes ((List!36965 0))(
  ( (Nil!36962) (Cons!36961 (h!38505 tuple2!25654) (t!51886 List!36965)) )
))
(declare-datatypes ((tuple2!25656 0))(
  ( (tuple2!25657 (_1!12838 tuple2!25654) (_2!12838 List!36965)) )
))
(declare-datatypes ((Option!899 0))(
  ( (Some!898 (v!22392 tuple2!25656)) (None!897) )
))
(declare-fun lt!676658 () Option!899)

(declare-fun isEmpty!1166 (Option!899) Bool)

(assert (=> b!1580157 (= res!1079580 (isEmpty!1166 lt!676658))))

(declare-fun l!1390 () List!36965)

(declare-fun unapply!80 (List!36965) Option!899)

(assert (=> b!1580157 (= lt!676658 (unapply!80 l!1390))))

(declare-fun b!1580158 () Bool)

(assert (=> b!1580158 (= e!881545 (not true))))

(declare-fun key!405 () (_ BitVec 64))

(declare-fun value!194 () B!2644)

(declare-datatypes ((Option!900 0))(
  ( (Some!899 (v!22393 B!2644)) (None!898) )
))
(declare-fun getValueByKey!814 (List!36965 (_ BitVec 64)) Option!900)

(assert (=> b!1580158 (= (getValueByKey!814 (t!51886 l!1390) key!405) (Some!899 value!194))))

(declare-datatypes ((Unit!52180 0))(
  ( (Unit!52181) )
))
(declare-fun lt!676659 () Unit!52180)

(declare-fun lemmaContainsTupThenGetReturnValue!397 (List!36965 (_ BitVec 64) B!2644) Unit!52180)

(assert (=> b!1580158 (= lt!676659 (lemmaContainsTupThenGetReturnValue!397 (t!51886 l!1390) key!405 value!194))))

(declare-fun b!1580159 () Bool)

(declare-fun e!881547 () Bool)

(declare-fun tp_is_empty!39189 () Bool)

(declare-fun tp!114445 () Bool)

(assert (=> b!1580159 (= e!881547 (and tp_is_empty!39189 tp!114445))))

(declare-fun b!1580160 () Bool)

(declare-fun res!1079578 () Bool)

(assert (=> b!1580160 (=> (not res!1079578) (not e!881545))))

(get-info :version)

(assert (=> b!1580160 (= res!1079578 (and (or (not ((_ is Cons!36961) l!1390)) (not (= (_1!12837 (h!38505 l!1390)) key!405))) ((_ is Cons!36961) l!1390)))))

(declare-fun b!1580161 () Bool)

(declare-fun e!881543 () Bool)

(assert (=> b!1580161 (= e!881543 e!881546)))

(declare-fun res!1079582 () Bool)

(assert (=> b!1580161 (=> (not res!1079582) (not e!881546))))

(declare-fun lt!676660 () tuple2!25654)

(declare-fun contains!10493 (List!36965 tuple2!25654) Bool)

(assert (=> b!1580161 (= res!1079582 (contains!10493 l!1390 lt!676660))))

(assert (=> b!1580161 (= lt!676660 (tuple2!25655 key!405 value!194))))

(declare-fun b!1580162 () Bool)

(declare-fun get!26811 (Option!899) tuple2!25656)

(assert (=> b!1580162 (= e!881544 (not ((_ is Nil!36962) (_2!12838 (get!26811 lt!676658)))))))

(declare-fun b!1580163 () Bool)

(declare-fun res!1079583 () Bool)

(assert (=> b!1580163 (=> (not res!1079583) (not e!881543))))

(declare-fun containsKey!906 (List!36965 (_ BitVec 64)) Bool)

(assert (=> b!1580163 (= res!1079583 (containsKey!906 l!1390 key!405))))

(declare-fun b!1580164 () Bool)

(declare-fun res!1079584 () Bool)

(assert (=> b!1580164 (=> (not res!1079584) (not e!881545))))

(declare-fun isStrictlySorted!1060 (List!36965) Bool)

(assert (=> b!1580164 (= res!1079584 (isStrictlySorted!1060 (t!51886 l!1390)))))

(declare-fun b!1580165 () Bool)

(declare-fun res!1079579 () Bool)

(assert (=> b!1580165 (=> (not res!1079579) (not e!881545))))

(assert (=> b!1580165 (= res!1079579 (containsKey!906 (t!51886 l!1390) key!405))))

(declare-fun res!1079585 () Bool)

(assert (=> start!137172 (=> (not res!1079585) (not e!881543))))

(assert (=> start!137172 (= res!1079585 (isStrictlySorted!1060 l!1390))))

(assert (=> start!137172 e!881543))

(assert (=> start!137172 e!881547))

(assert (=> start!137172 true))

(assert (=> start!137172 tp_is_empty!39189))

(declare-fun b!1580156 () Bool)

(declare-fun res!1079577 () Bool)

(assert (=> b!1580156 (=> (not res!1079577) (not e!881545))))

(assert (=> b!1580156 (= res!1079577 (contains!10493 (t!51886 l!1390) lt!676660))))

(assert (= (and start!137172 res!1079585) b!1580163))

(assert (= (and b!1580163 res!1079583) b!1580161))

(assert (= (and b!1580161 res!1079582) b!1580157))

(assert (= (and b!1580157 (not res!1079580)) b!1580162))

(assert (= (and b!1580157 res!1079581) b!1580160))

(assert (= (and b!1580160 res!1079578) b!1580164))

(assert (= (and b!1580164 res!1079584) b!1580165))

(assert (= (and b!1580165 res!1079579) b!1580156))

(assert (= (and b!1580156 res!1079577) b!1580158))

(assert (= (and start!137172 ((_ is Cons!36961) l!1390)) b!1580159))

(declare-fun m!1451667 () Bool)

(assert (=> b!1580161 m!1451667))

(declare-fun m!1451669 () Bool)

(assert (=> b!1580162 m!1451669))

(declare-fun m!1451671 () Bool)

(assert (=> b!1580157 m!1451671))

(declare-fun m!1451673 () Bool)

(assert (=> b!1580157 m!1451673))

(declare-fun m!1451675 () Bool)

(assert (=> b!1580156 m!1451675))

(declare-fun m!1451677 () Bool)

(assert (=> start!137172 m!1451677))

(declare-fun m!1451679 () Bool)

(assert (=> b!1580163 m!1451679))

(declare-fun m!1451681 () Bool)

(assert (=> b!1580165 m!1451681))

(declare-fun m!1451683 () Bool)

(assert (=> b!1580158 m!1451683))

(declare-fun m!1451685 () Bool)

(assert (=> b!1580158 m!1451685))

(declare-fun m!1451687 () Bool)

(assert (=> b!1580164 m!1451687))

(check-sat (not b!1580156) (not b!1580164) (not b!1580163) (not b!1580161) (not b!1580158) (not b!1580159) (not b!1580157) (not b!1580165) (not start!137172) tp_is_empty!39189 (not b!1580162))
(check-sat)
