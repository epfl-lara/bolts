; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72256 () Bool)

(assert start!72256)

(declare-fun res!569368 () Bool)

(declare-fun e!467103 () Bool)

(assert (=> start!72256 (=> (not res!569368) (not e!467103))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!46884 0))(
  ( (array!46885 (arr!22472 (Array (_ BitVec 32) (_ BitVec 64))) (size!22913 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!46884)

(assert (=> start!72256 (= res!569368 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!22913 _keys!868))))))

(assert (=> start!72256 e!467103))

(assert (=> start!72256 true))

(declare-fun array_inv!17892 (array!46884) Bool)

(assert (=> start!72256 (array_inv!17892 _keys!868)))

(declare-datatypes ((V!25459 0))(
  ( (V!25460 (val!7702 Int)) )
))
(declare-datatypes ((ValueCell!7215 0))(
  ( (ValueCellFull!7215 (v!10122 V!25459)) (EmptyCell!7215) )
))
(declare-datatypes ((array!46886 0))(
  ( (array!46887 (arr!22473 (Array (_ BitVec 32) ValueCell!7215)) (size!22914 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!46886)

(declare-fun e!467106 () Bool)

(declare-fun array_inv!17893 (array!46886) Bool)

(assert (=> start!72256 (and (array_inv!17893 _values!688) e!467106)))

(declare-fun mapNonEmpty!24554 () Bool)

(declare-fun mapRes!24554 () Bool)

(declare-fun tp!47549 () Bool)

(declare-fun e!467104 () Bool)

(assert (=> mapNonEmpty!24554 (= mapRes!24554 (and tp!47549 e!467104))))

(declare-fun mapRest!24554 () (Array (_ BitVec 32) ValueCell!7215))

(declare-fun mapKey!24554 () (_ BitVec 32))

(declare-fun mapValue!24554 () ValueCell!7215)

(assert (=> mapNonEmpty!24554 (= (arr!22473 _values!688) (store mapRest!24554 mapKey!24554 mapValue!24554))))

(declare-fun b!836964 () Bool)

(assert (=> b!836964 (= e!467103 (and (bvsle #b00000000000000000000000000000000 (size!22913 _keys!868)) (bvsge (size!22913 _keys!868) #b01111111111111111111111111111111)))))

(declare-fun b!836965 () Bool)

(declare-fun e!467105 () Bool)

(assert (=> b!836965 (= e!467106 (and e!467105 mapRes!24554))))

(declare-fun condMapEmpty!24554 () Bool)

(declare-fun mapDefault!24554 () ValueCell!7215)

(assert (=> b!836965 (= condMapEmpty!24554 (= (arr!22473 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7215)) mapDefault!24554)))))

(declare-fun b!836966 () Bool)

(declare-fun tp_is_empty!15309 () Bool)

(assert (=> b!836966 (= e!467105 tp_is_empty!15309)))

(declare-fun b!836967 () Bool)

(declare-fun res!569365 () Bool)

(assert (=> b!836967 (=> (not res!569365) (not e!467103))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!836967 (= res!569365 (validMask!0 mask!1196))))

(declare-fun b!836968 () Bool)

(declare-fun res!569366 () Bool)

(assert (=> b!836968 (=> (not res!569366) (not e!467103))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!836968 (= res!569366 (and (= (size!22914 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!22913 _keys!868) (size!22914 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!836969 () Bool)

(declare-fun res!569367 () Bool)

(assert (=> b!836969 (=> (not res!569367) (not e!467103))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46884 (_ BitVec 32)) Bool)

(assert (=> b!836969 (= res!569367 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!24554 () Bool)

(assert (=> mapIsEmpty!24554 mapRes!24554))

(declare-fun b!836970 () Bool)

(assert (=> b!836970 (= e!467104 tp_is_empty!15309)))

(assert (= (and start!72256 res!569368) b!836967))

(assert (= (and b!836967 res!569365) b!836968))

(assert (= (and b!836968 res!569366) b!836969))

(assert (= (and b!836969 res!569367) b!836964))

(assert (= (and b!836965 condMapEmpty!24554) mapIsEmpty!24554))

(assert (= (and b!836965 (not condMapEmpty!24554)) mapNonEmpty!24554))

(get-info :version)

(assert (= (and mapNonEmpty!24554 ((_ is ValueCellFull!7215) mapValue!24554)) b!836970))

(assert (= (and b!836965 ((_ is ValueCellFull!7215) mapDefault!24554)) b!836966))

(assert (= start!72256 b!836965))

(declare-fun m!782061 () Bool)

(assert (=> start!72256 m!782061))

(declare-fun m!782063 () Bool)

(assert (=> start!72256 m!782063))

(declare-fun m!782065 () Bool)

(assert (=> mapNonEmpty!24554 m!782065))

(declare-fun m!782067 () Bool)

(assert (=> b!836967 m!782067))

(declare-fun m!782069 () Bool)

(assert (=> b!836969 m!782069))

(check-sat (not mapNonEmpty!24554) (not start!72256) (not b!836967) (not b!836969) tp_is_empty!15309)
(check-sat)
(get-model)

(declare-fun d!107723 () Bool)

(assert (=> d!107723 (= (validMask!0 mask!1196) (and (or (= mask!1196 #b00000000000000000000000000000111) (= mask!1196 #b00000000000000000000000000001111) (= mask!1196 #b00000000000000000000000000011111) (= mask!1196 #b00000000000000000000000000111111) (= mask!1196 #b00000000000000000000000001111111) (= mask!1196 #b00000000000000000000000011111111) (= mask!1196 #b00000000000000000000000111111111) (= mask!1196 #b00000000000000000000001111111111) (= mask!1196 #b00000000000000000000011111111111) (= mask!1196 #b00000000000000000000111111111111) (= mask!1196 #b00000000000000000001111111111111) (= mask!1196 #b00000000000000000011111111111111) (= mask!1196 #b00000000000000000111111111111111) (= mask!1196 #b00000000000000001111111111111111) (= mask!1196 #b00000000000000011111111111111111) (= mask!1196 #b00000000000000111111111111111111) (= mask!1196 #b00000000000001111111111111111111) (= mask!1196 #b00000000000011111111111111111111) (= mask!1196 #b00000000000111111111111111111111) (= mask!1196 #b00000000001111111111111111111111) (= mask!1196 #b00000000011111111111111111111111) (= mask!1196 #b00000000111111111111111111111111) (= mask!1196 #b00000001111111111111111111111111) (= mask!1196 #b00000011111111111111111111111111) (= mask!1196 #b00000111111111111111111111111111) (= mask!1196 #b00001111111111111111111111111111) (= mask!1196 #b00011111111111111111111111111111) (= mask!1196 #b00111111111111111111111111111111)) (bvsle mask!1196 #b00111111111111111111111111111111)))))

(assert (=> b!836967 d!107723))

(declare-fun d!107725 () Bool)

(assert (=> d!107725 (= (array_inv!17892 _keys!868) (bvsge (size!22913 _keys!868) #b00000000000000000000000000000000))))

(assert (=> start!72256 d!107725))

(declare-fun d!107727 () Bool)

(assert (=> d!107727 (= (array_inv!17893 _values!688) (bvsge (size!22914 _values!688) #b00000000000000000000000000000000))))

(assert (=> start!72256 d!107727))

(declare-fun d!107729 () Bool)

(declare-fun res!569385 () Bool)

(declare-fun e!467129 () Bool)

(assert (=> d!107729 (=> res!569385 e!467129)))

(assert (=> d!107729 (= res!569385 (bvsge #b00000000000000000000000000000000 (size!22913 _keys!868)))))

(assert (=> d!107729 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196) e!467129)))

(declare-fun b!837000 () Bool)

(declare-fun e!467131 () Bool)

(declare-fun e!467130 () Bool)

(assert (=> b!837000 (= e!467131 e!467130)))

(declare-fun lt!380474 () (_ BitVec 64))

(assert (=> b!837000 (= lt!380474 (select (arr!22472 _keys!868) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!28772 0))(
  ( (Unit!28773) )
))
(declare-fun lt!380473 () Unit!28772)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!46884 (_ BitVec 64) (_ BitVec 32)) Unit!28772)

(assert (=> b!837000 (= lt!380473 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!868 lt!380474 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!46884 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!837000 (arrayContainsKey!0 _keys!868 lt!380474 #b00000000000000000000000000000000)))

(declare-fun lt!380472 () Unit!28772)

(assert (=> b!837000 (= lt!380472 lt!380473)))

(declare-fun res!569386 () Bool)

(declare-datatypes ((SeekEntryResult!8735 0))(
  ( (MissingZero!8735 (index!37310 (_ BitVec 32))) (Found!8735 (index!37311 (_ BitVec 32))) (Intermediate!8735 (undefined!9547 Bool) (index!37312 (_ BitVec 32)) (x!70693 (_ BitVec 32))) (Undefined!8735) (MissingVacant!8735 (index!37313 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!46884 (_ BitVec 32)) SeekEntryResult!8735)

(assert (=> b!837000 (= res!569386 (= (seekEntryOrOpen!0 (select (arr!22472 _keys!868) #b00000000000000000000000000000000) _keys!868 mask!1196) (Found!8735 #b00000000000000000000000000000000)))))

(assert (=> b!837000 (=> (not res!569386) (not e!467130))))

(declare-fun b!837001 () Bool)

(declare-fun call!36815 () Bool)

(assert (=> b!837001 (= e!467131 call!36815)))

(declare-fun b!837002 () Bool)

(assert (=> b!837002 (= e!467130 call!36815)))

(declare-fun bm!36812 () Bool)

(assert (=> bm!36812 (= call!36815 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!868 mask!1196))))

(declare-fun b!837003 () Bool)

(assert (=> b!837003 (= e!467129 e!467131)))

(declare-fun c!91065 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!837003 (= c!91065 (validKeyInArray!0 (select (arr!22472 _keys!868) #b00000000000000000000000000000000)))))

(assert (= (and d!107729 (not res!569385)) b!837003))

(assert (= (and b!837003 c!91065) b!837000))

(assert (= (and b!837003 (not c!91065)) b!837001))

(assert (= (and b!837000 res!569386) b!837002))

(assert (= (or b!837002 b!837001) bm!36812))

(declare-fun m!782081 () Bool)

(assert (=> b!837000 m!782081))

(declare-fun m!782083 () Bool)

(assert (=> b!837000 m!782083))

(declare-fun m!782085 () Bool)

(assert (=> b!837000 m!782085))

(assert (=> b!837000 m!782081))

(declare-fun m!782087 () Bool)

(assert (=> b!837000 m!782087))

(declare-fun m!782089 () Bool)

(assert (=> bm!36812 m!782089))

(assert (=> b!837003 m!782081))

(assert (=> b!837003 m!782081))

(declare-fun m!782091 () Bool)

(assert (=> b!837003 m!782091))

(assert (=> b!836969 d!107729))

(declare-fun mapNonEmpty!24560 () Bool)

(declare-fun mapRes!24560 () Bool)

(declare-fun tp!47555 () Bool)

(declare-fun e!467137 () Bool)

(assert (=> mapNonEmpty!24560 (= mapRes!24560 (and tp!47555 e!467137))))

(declare-fun mapRest!24560 () (Array (_ BitVec 32) ValueCell!7215))

(declare-fun mapValue!24560 () ValueCell!7215)

(declare-fun mapKey!24560 () (_ BitVec 32))

(assert (=> mapNonEmpty!24560 (= mapRest!24554 (store mapRest!24560 mapKey!24560 mapValue!24560))))

(declare-fun condMapEmpty!24560 () Bool)

(declare-fun mapDefault!24560 () ValueCell!7215)

(assert (=> mapNonEmpty!24554 (= condMapEmpty!24560 (= mapRest!24554 ((as const (Array (_ BitVec 32) ValueCell!7215)) mapDefault!24560)))))

(declare-fun e!467136 () Bool)

(assert (=> mapNonEmpty!24554 (= tp!47549 (and e!467136 mapRes!24560))))

(declare-fun mapIsEmpty!24560 () Bool)

(assert (=> mapIsEmpty!24560 mapRes!24560))

(declare-fun b!837011 () Bool)

(assert (=> b!837011 (= e!467136 tp_is_empty!15309)))

(declare-fun b!837010 () Bool)

(assert (=> b!837010 (= e!467137 tp_is_empty!15309)))

(assert (= (and mapNonEmpty!24554 condMapEmpty!24560) mapIsEmpty!24560))

(assert (= (and mapNonEmpty!24554 (not condMapEmpty!24560)) mapNonEmpty!24560))

(assert (= (and mapNonEmpty!24560 ((_ is ValueCellFull!7215) mapValue!24560)) b!837010))

(assert (= (and mapNonEmpty!24554 ((_ is ValueCellFull!7215) mapDefault!24560)) b!837011))

(declare-fun m!782093 () Bool)

(assert (=> mapNonEmpty!24560 m!782093))

(check-sat (not mapNonEmpty!24560) (not b!837000) (not bm!36812) (not b!837003) tp_is_empty!15309)
(check-sat)
