; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106990 () Bool)

(assert start!106990)

(declare-fun mapIsEmpty!50560 () Bool)

(declare-fun mapRes!50560 () Bool)

(assert (=> mapIsEmpty!50560 mapRes!50560))

(declare-fun res!844220 () Bool)

(declare-fun e!722688 () Bool)

(assert (=> start!106990 (=> (not res!844220) (not e!722688))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!106990 (= res!844220 (validMask!0 mask!1730))))

(assert (=> start!106990 e!722688))

(declare-datatypes ((V!48733 0))(
  ( (V!48734 (val!16402 Int)) )
))
(declare-datatypes ((ValueCell!15474 0))(
  ( (ValueCellFull!15474 (v!19036 V!48733)) (EmptyCell!15474) )
))
(declare-datatypes ((array!82559 0))(
  ( (array!82560 (arr!39813 (Array (_ BitVec 32) ValueCell!15474)) (size!40350 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82559)

(declare-fun e!722687 () Bool)

(declare-fun array_inv!30253 (array!82559) Bool)

(assert (=> start!106990 (and (array_inv!30253 _values!1134) e!722687)))

(assert (=> start!106990 true))

(declare-datatypes ((array!82561 0))(
  ( (array!82562 (arr!39814 (Array (_ BitVec 32) (_ BitVec 64))) (size!40351 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82561)

(declare-fun array_inv!30254 (array!82561) Bool)

(assert (=> start!106990 (array_inv!30254 _keys!1364)))

(declare-fun b!1268249 () Bool)

(declare-fun e!722689 () Bool)

(assert (=> b!1268249 (= e!722688 e!722689)))

(declare-fun res!844218 () Bool)

(assert (=> b!1268249 (=> res!844218 e!722689)))

(declare-datatypes ((List!28556 0))(
  ( (Nil!28553) (Cons!28552 (h!29761 (_ BitVec 64)) (t!42092 List!28556)) )
))
(declare-fun contains!7680 (List!28556 (_ BitVec 64)) Bool)

(assert (=> b!1268249 (= res!844218 (contains!7680 Nil!28553 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1268250 () Bool)

(declare-fun res!844221 () Bool)

(assert (=> b!1268250 (=> (not res!844221) (not e!722688))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82561 (_ BitVec 32)) Bool)

(assert (=> b!1268250 (= res!844221 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1268251 () Bool)

(declare-fun e!722691 () Bool)

(assert (=> b!1268251 (= e!722687 (and e!722691 mapRes!50560))))

(declare-fun condMapEmpty!50560 () Bool)

(declare-fun mapDefault!50560 () ValueCell!15474)

(assert (=> b!1268251 (= condMapEmpty!50560 (= (arr!39813 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15474)) mapDefault!50560)))))

(declare-fun b!1268252 () Bool)

(assert (=> b!1268252 (= e!722689 (contains!7680 Nil!28553 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1268253 () Bool)

(declare-fun res!844219 () Bool)

(assert (=> b!1268253 (=> (not res!844219) (not e!722688))))

(assert (=> b!1268253 (= res!844219 (and (bvsle #b00000000000000000000000000000000 (size!40351 _keys!1364)) (bvslt (size!40351 _keys!1364) #b01111111111111111111111111111111)))))

(declare-fun b!1268254 () Bool)

(declare-fun res!844216 () Bool)

(assert (=> b!1268254 (=> (not res!844216) (not e!722688))))

(declare-fun noDuplicate!2072 (List!28556) Bool)

(assert (=> b!1268254 (= res!844216 (noDuplicate!2072 Nil!28553))))

(declare-fun b!1268255 () Bool)

(declare-fun tp_is_empty!32655 () Bool)

(assert (=> b!1268255 (= e!722691 tp_is_empty!32655)))

(declare-fun mapNonEmpty!50560 () Bool)

(declare-fun tp!96740 () Bool)

(declare-fun e!722686 () Bool)

(assert (=> mapNonEmpty!50560 (= mapRes!50560 (and tp!96740 e!722686))))

(declare-fun mapKey!50560 () (_ BitVec 32))

(declare-fun mapValue!50560 () ValueCell!15474)

(declare-fun mapRest!50560 () (Array (_ BitVec 32) ValueCell!15474))

(assert (=> mapNonEmpty!50560 (= (arr!39813 _values!1134) (store mapRest!50560 mapKey!50560 mapValue!50560))))

(declare-fun b!1268256 () Bool)

(assert (=> b!1268256 (= e!722686 tp_is_empty!32655)))

(declare-fun b!1268257 () Bool)

(declare-fun res!844217 () Bool)

(assert (=> b!1268257 (=> (not res!844217) (not e!722688))))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(assert (=> b!1268257 (= res!844217 (and (= (size!40350 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40351 _keys!1364) (size!40350 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(assert (= (and start!106990 res!844220) b!1268257))

(assert (= (and b!1268257 res!844217) b!1268250))

(assert (= (and b!1268250 res!844221) b!1268253))

(assert (= (and b!1268253 res!844219) b!1268254))

(assert (= (and b!1268254 res!844216) b!1268249))

(assert (= (and b!1268249 (not res!844218)) b!1268252))

(assert (= (and b!1268251 condMapEmpty!50560) mapIsEmpty!50560))

(assert (= (and b!1268251 (not condMapEmpty!50560)) mapNonEmpty!50560))

(get-info :version)

(assert (= (and mapNonEmpty!50560 ((_ is ValueCellFull!15474) mapValue!50560)) b!1268256))

(assert (= (and b!1268251 ((_ is ValueCellFull!15474) mapDefault!50560)) b!1268255))

(assert (= start!106990 b!1268251))

(declare-fun m!1167161 () Bool)

(assert (=> b!1268250 m!1167161))

(declare-fun m!1167163 () Bool)

(assert (=> b!1268249 m!1167163))

(declare-fun m!1167165 () Bool)

(assert (=> b!1268254 m!1167165))

(declare-fun m!1167167 () Bool)

(assert (=> start!106990 m!1167167))

(declare-fun m!1167169 () Bool)

(assert (=> start!106990 m!1167169))

(declare-fun m!1167171 () Bool)

(assert (=> start!106990 m!1167171))

(declare-fun m!1167173 () Bool)

(assert (=> b!1268252 m!1167173))

(declare-fun m!1167175 () Bool)

(assert (=> mapNonEmpty!50560 m!1167175))

(check-sat (not start!106990) (not b!1268250) (not b!1268252) (not b!1268254) tp_is_empty!32655 (not b!1268249) (not mapNonEmpty!50560))
(check-sat)
(get-model)

(declare-fun b!1268293 () Bool)

(declare-fun e!722717 () Bool)

(declare-fun call!62511 () Bool)

(assert (=> b!1268293 (= e!722717 call!62511)))

(declare-fun d!139589 () Bool)

(declare-fun res!844244 () Bool)

(declare-fun e!722718 () Bool)

(assert (=> d!139589 (=> res!844244 e!722718)))

(assert (=> d!139589 (= res!844244 (bvsge #b00000000000000000000000000000000 (size!40351 _keys!1364)))))

(assert (=> d!139589 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730) e!722718)))

(declare-fun b!1268294 () Bool)

(declare-fun e!722716 () Bool)

(assert (=> b!1268294 (= e!722718 e!722716)))

(declare-fun c!123575 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1268294 (= c!123575 (validKeyInArray!0 (select (arr!39814 _keys!1364) #b00000000000000000000000000000000)))))

(declare-fun b!1268295 () Bool)

(assert (=> b!1268295 (= e!722716 e!722717)))

(declare-fun lt!574354 () (_ BitVec 64))

(assert (=> b!1268295 (= lt!574354 (select (arr!39814 _keys!1364) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!42182 0))(
  ( (Unit!42183) )
))
(declare-fun lt!574353 () Unit!42182)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!82561 (_ BitVec 64) (_ BitVec 32)) Unit!42182)

(assert (=> b!1268295 (= lt!574353 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1364 lt!574354 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!82561 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1268295 (arrayContainsKey!0 _keys!1364 lt!574354 #b00000000000000000000000000000000)))

(declare-fun lt!574352 () Unit!42182)

(assert (=> b!1268295 (= lt!574352 lt!574353)))

(declare-fun res!844245 () Bool)

(declare-datatypes ((SeekEntryResult!9983 0))(
  ( (MissingZero!9983 (index!42302 (_ BitVec 32))) (Found!9983 (index!42303 (_ BitVec 32))) (Intermediate!9983 (undefined!10795 Bool) (index!42304 (_ BitVec 32)) (x!111859 (_ BitVec 32))) (Undefined!9983) (MissingVacant!9983 (index!42305 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!82561 (_ BitVec 32)) SeekEntryResult!9983)

(assert (=> b!1268295 (= res!844245 (= (seekEntryOrOpen!0 (select (arr!39814 _keys!1364) #b00000000000000000000000000000000) _keys!1364 mask!1730) (Found!9983 #b00000000000000000000000000000000)))))

(assert (=> b!1268295 (=> (not res!844245) (not e!722717))))

(declare-fun b!1268296 () Bool)

(assert (=> b!1268296 (= e!722716 call!62511)))

(declare-fun bm!62508 () Bool)

(assert (=> bm!62508 (= call!62511 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1364 mask!1730))))

(assert (= (and d!139589 (not res!844244)) b!1268294))

(assert (= (and b!1268294 c!123575) b!1268295))

(assert (= (and b!1268294 (not c!123575)) b!1268296))

(assert (= (and b!1268295 res!844245) b!1268293))

(assert (= (or b!1268293 b!1268296) bm!62508))

(declare-fun m!1167193 () Bool)

(assert (=> b!1268294 m!1167193))

(assert (=> b!1268294 m!1167193))

(declare-fun m!1167195 () Bool)

(assert (=> b!1268294 m!1167195))

(assert (=> b!1268295 m!1167193))

(declare-fun m!1167197 () Bool)

(assert (=> b!1268295 m!1167197))

(declare-fun m!1167199 () Bool)

(assert (=> b!1268295 m!1167199))

(assert (=> b!1268295 m!1167193))

(declare-fun m!1167201 () Bool)

(assert (=> b!1268295 m!1167201))

(declare-fun m!1167203 () Bool)

(assert (=> bm!62508 m!1167203))

(assert (=> b!1268250 d!139589))

(declare-fun d!139591 () Bool)

(declare-fun lt!574357 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!646 (List!28556) (InoxSet (_ BitVec 64)))

(assert (=> d!139591 (= lt!574357 (select (content!646 Nil!28553) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!722724 () Bool)

(assert (=> d!139591 (= lt!574357 e!722724)))

(declare-fun res!844250 () Bool)

(assert (=> d!139591 (=> (not res!844250) (not e!722724))))

(assert (=> d!139591 (= res!844250 ((_ is Cons!28552) Nil!28553))))

(assert (=> d!139591 (= (contains!7680 Nil!28553 #b1000000000000000000000000000000000000000000000000000000000000000) lt!574357)))

(declare-fun b!1268301 () Bool)

(declare-fun e!722723 () Bool)

(assert (=> b!1268301 (= e!722724 e!722723)))

(declare-fun res!844251 () Bool)

(assert (=> b!1268301 (=> res!844251 e!722723)))

(assert (=> b!1268301 (= res!844251 (= (h!29761 Nil!28553) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1268302 () Bool)

(assert (=> b!1268302 (= e!722723 (contains!7680 (t!42092 Nil!28553) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!139591 res!844250) b!1268301))

(assert (= (and b!1268301 (not res!844251)) b!1268302))

(declare-fun m!1167205 () Bool)

(assert (=> d!139591 m!1167205))

(declare-fun m!1167207 () Bool)

(assert (=> d!139591 m!1167207))

(declare-fun m!1167209 () Bool)

(assert (=> b!1268302 m!1167209))

(assert (=> b!1268252 d!139591))

(declare-fun d!139593 () Bool)

(assert (=> d!139593 (= (validMask!0 mask!1730) (and (or (= mask!1730 #b00000000000000000000000000000111) (= mask!1730 #b00000000000000000000000000001111) (= mask!1730 #b00000000000000000000000000011111) (= mask!1730 #b00000000000000000000000000111111) (= mask!1730 #b00000000000000000000000001111111) (= mask!1730 #b00000000000000000000000011111111) (= mask!1730 #b00000000000000000000000111111111) (= mask!1730 #b00000000000000000000001111111111) (= mask!1730 #b00000000000000000000011111111111) (= mask!1730 #b00000000000000000000111111111111) (= mask!1730 #b00000000000000000001111111111111) (= mask!1730 #b00000000000000000011111111111111) (= mask!1730 #b00000000000000000111111111111111) (= mask!1730 #b00000000000000001111111111111111) (= mask!1730 #b00000000000000011111111111111111) (= mask!1730 #b00000000000000111111111111111111) (= mask!1730 #b00000000000001111111111111111111) (= mask!1730 #b00000000000011111111111111111111) (= mask!1730 #b00000000000111111111111111111111) (= mask!1730 #b00000000001111111111111111111111) (= mask!1730 #b00000000011111111111111111111111) (= mask!1730 #b00000000111111111111111111111111) (= mask!1730 #b00000001111111111111111111111111) (= mask!1730 #b00000011111111111111111111111111) (= mask!1730 #b00000111111111111111111111111111) (= mask!1730 #b00001111111111111111111111111111) (= mask!1730 #b00011111111111111111111111111111) (= mask!1730 #b00111111111111111111111111111111)) (bvsle mask!1730 #b00111111111111111111111111111111)))))

(assert (=> start!106990 d!139593))

(declare-fun d!139595 () Bool)

(assert (=> d!139595 (= (array_inv!30253 _values!1134) (bvsge (size!40350 _values!1134) #b00000000000000000000000000000000))))

(assert (=> start!106990 d!139595))

(declare-fun d!139597 () Bool)

(assert (=> d!139597 (= (array_inv!30254 _keys!1364) (bvsge (size!40351 _keys!1364) #b00000000000000000000000000000000))))

(assert (=> start!106990 d!139597))

(declare-fun d!139599 () Bool)

(declare-fun lt!574358 () Bool)

(assert (=> d!139599 (= lt!574358 (select (content!646 Nil!28553) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!722726 () Bool)

(assert (=> d!139599 (= lt!574358 e!722726)))

(declare-fun res!844252 () Bool)

(assert (=> d!139599 (=> (not res!844252) (not e!722726))))

(assert (=> d!139599 (= res!844252 ((_ is Cons!28552) Nil!28553))))

(assert (=> d!139599 (= (contains!7680 Nil!28553 #b0000000000000000000000000000000000000000000000000000000000000000) lt!574358)))

(declare-fun b!1268303 () Bool)

(declare-fun e!722725 () Bool)

(assert (=> b!1268303 (= e!722726 e!722725)))

(declare-fun res!844253 () Bool)

(assert (=> b!1268303 (=> res!844253 e!722725)))

(assert (=> b!1268303 (= res!844253 (= (h!29761 Nil!28553) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1268304 () Bool)

(assert (=> b!1268304 (= e!722725 (contains!7680 (t!42092 Nil!28553) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!139599 res!844252) b!1268303))

(assert (= (and b!1268303 (not res!844253)) b!1268304))

(assert (=> d!139599 m!1167205))

(declare-fun m!1167211 () Bool)

(assert (=> d!139599 m!1167211))

(declare-fun m!1167213 () Bool)

(assert (=> b!1268304 m!1167213))

(assert (=> b!1268249 d!139599))

(declare-fun d!139601 () Bool)

(declare-fun res!844258 () Bool)

(declare-fun e!722731 () Bool)

(assert (=> d!139601 (=> res!844258 e!722731)))

(assert (=> d!139601 (= res!844258 ((_ is Nil!28553) Nil!28553))))

(assert (=> d!139601 (= (noDuplicate!2072 Nil!28553) e!722731)))

(declare-fun b!1268309 () Bool)

(declare-fun e!722732 () Bool)

(assert (=> b!1268309 (= e!722731 e!722732)))

(declare-fun res!844259 () Bool)

(assert (=> b!1268309 (=> (not res!844259) (not e!722732))))

(assert (=> b!1268309 (= res!844259 (not (contains!7680 (t!42092 Nil!28553) (h!29761 Nil!28553))))))

(declare-fun b!1268310 () Bool)

(assert (=> b!1268310 (= e!722732 (noDuplicate!2072 (t!42092 Nil!28553)))))

(assert (= (and d!139601 (not res!844258)) b!1268309))

(assert (= (and b!1268309 res!844259) b!1268310))

(declare-fun m!1167215 () Bool)

(assert (=> b!1268309 m!1167215))

(declare-fun m!1167217 () Bool)

(assert (=> b!1268310 m!1167217))

(assert (=> b!1268254 d!139601))

(declare-fun mapNonEmpty!50566 () Bool)

(declare-fun mapRes!50566 () Bool)

(declare-fun tp!96746 () Bool)

(declare-fun e!722737 () Bool)

(assert (=> mapNonEmpty!50566 (= mapRes!50566 (and tp!96746 e!722737))))

(declare-fun mapRest!50566 () (Array (_ BitVec 32) ValueCell!15474))

(declare-fun mapKey!50566 () (_ BitVec 32))

(declare-fun mapValue!50566 () ValueCell!15474)

(assert (=> mapNonEmpty!50566 (= mapRest!50560 (store mapRest!50566 mapKey!50566 mapValue!50566))))

(declare-fun mapIsEmpty!50566 () Bool)

(assert (=> mapIsEmpty!50566 mapRes!50566))

(declare-fun b!1268317 () Bool)

(assert (=> b!1268317 (= e!722737 tp_is_empty!32655)))

(declare-fun condMapEmpty!50566 () Bool)

(declare-fun mapDefault!50566 () ValueCell!15474)

(assert (=> mapNonEmpty!50560 (= condMapEmpty!50566 (= mapRest!50560 ((as const (Array (_ BitVec 32) ValueCell!15474)) mapDefault!50566)))))

(declare-fun e!722738 () Bool)

(assert (=> mapNonEmpty!50560 (= tp!96740 (and e!722738 mapRes!50566))))

(declare-fun b!1268318 () Bool)

(assert (=> b!1268318 (= e!722738 tp_is_empty!32655)))

(assert (= (and mapNonEmpty!50560 condMapEmpty!50566) mapIsEmpty!50566))

(assert (= (and mapNonEmpty!50560 (not condMapEmpty!50566)) mapNonEmpty!50566))

(assert (= (and mapNonEmpty!50566 ((_ is ValueCellFull!15474) mapValue!50566)) b!1268317))

(assert (= (and mapNonEmpty!50560 ((_ is ValueCellFull!15474) mapDefault!50566)) b!1268318))

(declare-fun m!1167219 () Bool)

(assert (=> mapNonEmpty!50566 m!1167219))

(check-sat (not bm!62508) (not b!1268304) (not b!1268310) (not d!139591) tp_is_empty!32655 (not b!1268309) (not b!1268294) (not b!1268295) (not d!139599) (not mapNonEmpty!50566) (not b!1268302))
(check-sat)
