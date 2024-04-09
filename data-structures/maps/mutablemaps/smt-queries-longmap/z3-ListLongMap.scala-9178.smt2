; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110424 () Bool)

(assert start!110424)

(declare-fun b!1306155 () Bool)

(declare-fun res!867225 () Bool)

(declare-fun e!745159 () Bool)

(assert (=> b!1306155 (=> (not res!867225) (not e!745159))))

(declare-datatypes ((array!86951 0))(
  ( (array!86952 (arr!41954 (Array (_ BitVec 32) (_ BitVec 64))) (size!42505 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!86951)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!51747 0))(
  ( (V!51748 (val!17566 Int)) )
))
(declare-datatypes ((ValueCell!16593 0))(
  ( (ValueCellFull!16593 (v!20190 V!51747)) (EmptyCell!16593) )
))
(declare-datatypes ((array!86953 0))(
  ( (array!86954 (arr!41955 (Array (_ BitVec 32) ValueCell!16593)) (size!42506 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!86953)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1306155 (= res!867225 (and (= (size!42506 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42505 _keys!1628) (size!42506 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!54094 () Bool)

(declare-fun mapRes!54094 () Bool)

(assert (=> mapIsEmpty!54094 mapRes!54094))

(declare-fun b!1306156 () Bool)

(declare-fun e!745157 () Bool)

(declare-fun tp_is_empty!34983 () Bool)

(assert (=> b!1306156 (= e!745157 tp_is_empty!34983)))

(declare-fun res!867223 () Bool)

(assert (=> start!110424 (=> (not res!867223) (not e!745159))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110424 (= res!867223 (validMask!0 mask!2040))))

(assert (=> start!110424 e!745159))

(assert (=> start!110424 true))

(declare-fun e!745160 () Bool)

(declare-fun array_inv!31725 (array!86953) Bool)

(assert (=> start!110424 (and (array_inv!31725 _values!1354) e!745160)))

(declare-fun array_inv!31726 (array!86951) Bool)

(assert (=> start!110424 (array_inv!31726 _keys!1628)))

(declare-fun b!1306157 () Bool)

(assert (=> b!1306157 (= e!745159 (and (bvsle #b00000000000000000000000000000000 (size!42505 _keys!1628)) (bvsge (size!42505 _keys!1628) #b01111111111111111111111111111111)))))

(declare-fun mapNonEmpty!54094 () Bool)

(declare-fun tp!103175 () Bool)

(assert (=> mapNonEmpty!54094 (= mapRes!54094 (and tp!103175 e!745157))))

(declare-fun mapValue!54094 () ValueCell!16593)

(declare-fun mapRest!54094 () (Array (_ BitVec 32) ValueCell!16593))

(declare-fun mapKey!54094 () (_ BitVec 32))

(assert (=> mapNonEmpty!54094 (= (arr!41955 _values!1354) (store mapRest!54094 mapKey!54094 mapValue!54094))))

(declare-fun b!1306158 () Bool)

(declare-fun res!867224 () Bool)

(assert (=> b!1306158 (=> (not res!867224) (not e!745159))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86951 (_ BitVec 32)) Bool)

(assert (=> b!1306158 (= res!867224 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1306159 () Bool)

(declare-fun e!745158 () Bool)

(assert (=> b!1306159 (= e!745158 tp_is_empty!34983)))

(declare-fun b!1306160 () Bool)

(assert (=> b!1306160 (= e!745160 (and e!745158 mapRes!54094))))

(declare-fun condMapEmpty!54094 () Bool)

(declare-fun mapDefault!54094 () ValueCell!16593)

(assert (=> b!1306160 (= condMapEmpty!54094 (= (arr!41955 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16593)) mapDefault!54094)))))

(assert (= (and start!110424 res!867223) b!1306155))

(assert (= (and b!1306155 res!867225) b!1306158))

(assert (= (and b!1306158 res!867224) b!1306157))

(assert (= (and b!1306160 condMapEmpty!54094) mapIsEmpty!54094))

(assert (= (and b!1306160 (not condMapEmpty!54094)) mapNonEmpty!54094))

(get-info :version)

(assert (= (and mapNonEmpty!54094 ((_ is ValueCellFull!16593) mapValue!54094)) b!1306156))

(assert (= (and b!1306160 ((_ is ValueCellFull!16593) mapDefault!54094)) b!1306159))

(assert (= start!110424 b!1306160))

(declare-fun m!1197301 () Bool)

(assert (=> start!110424 m!1197301))

(declare-fun m!1197303 () Bool)

(assert (=> start!110424 m!1197303))

(declare-fun m!1197305 () Bool)

(assert (=> start!110424 m!1197305))

(declare-fun m!1197307 () Bool)

(assert (=> mapNonEmpty!54094 m!1197307))

(declare-fun m!1197309 () Bool)

(assert (=> b!1306158 m!1197309))

(check-sat (not b!1306158) (not start!110424) (not mapNonEmpty!54094) tp_is_empty!34983)
(check-sat)
(get-model)

(declare-fun b!1306187 () Bool)

(declare-fun e!745183 () Bool)

(declare-fun call!64622 () Bool)

(assert (=> b!1306187 (= e!745183 call!64622)))

(declare-fun b!1306188 () Bool)

(declare-fun e!745185 () Bool)

(declare-fun e!745184 () Bool)

(assert (=> b!1306188 (= e!745185 e!745184)))

(declare-fun c!125483 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1306188 (= c!125483 (validKeyInArray!0 (select (arr!41954 _keys!1628) #b00000000000000000000000000000000)))))

(declare-fun b!1306189 () Bool)

(assert (=> b!1306189 (= e!745184 e!745183)))

(declare-fun lt!584837 () (_ BitVec 64))

(assert (=> b!1306189 (= lt!584837 (select (arr!41954 _keys!1628) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!43216 0))(
  ( (Unit!43217) )
))
(declare-fun lt!584836 () Unit!43216)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!86951 (_ BitVec 64) (_ BitVec 32)) Unit!43216)

(assert (=> b!1306189 (= lt!584836 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1628 lt!584837 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!86951 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1306189 (arrayContainsKey!0 _keys!1628 lt!584837 #b00000000000000000000000000000000)))

(declare-fun lt!584838 () Unit!43216)

(assert (=> b!1306189 (= lt!584838 lt!584836)))

(declare-fun res!867240 () Bool)

(declare-datatypes ((SeekEntryResult!10029 0))(
  ( (MissingZero!10029 (index!42486 (_ BitVec 32))) (Found!10029 (index!42487 (_ BitVec 32))) (Intermediate!10029 (undefined!10841 Bool) (index!42488 (_ BitVec 32)) (x!116000 (_ BitVec 32))) (Undefined!10029) (MissingVacant!10029 (index!42489 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!86951 (_ BitVec 32)) SeekEntryResult!10029)

(assert (=> b!1306189 (= res!867240 (= (seekEntryOrOpen!0 (select (arr!41954 _keys!1628) #b00000000000000000000000000000000) _keys!1628 mask!2040) (Found!10029 #b00000000000000000000000000000000)))))

(assert (=> b!1306189 (=> (not res!867240) (not e!745183))))

(declare-fun d!142149 () Bool)

(declare-fun res!867239 () Bool)

(assert (=> d!142149 (=> res!867239 e!745185)))

(assert (=> d!142149 (= res!867239 (bvsge #b00000000000000000000000000000000 (size!42505 _keys!1628)))))

(assert (=> d!142149 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040) e!745185)))

(declare-fun b!1306190 () Bool)

(assert (=> b!1306190 (= e!745184 call!64622)))

(declare-fun bm!64619 () Bool)

(assert (=> bm!64619 (= call!64622 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1628 mask!2040))))

(assert (= (and d!142149 (not res!867239)) b!1306188))

(assert (= (and b!1306188 c!125483) b!1306189))

(assert (= (and b!1306188 (not c!125483)) b!1306190))

(assert (= (and b!1306189 res!867240) b!1306187))

(assert (= (or b!1306187 b!1306190) bm!64619))

(declare-fun m!1197321 () Bool)

(assert (=> b!1306188 m!1197321))

(assert (=> b!1306188 m!1197321))

(declare-fun m!1197323 () Bool)

(assert (=> b!1306188 m!1197323))

(assert (=> b!1306189 m!1197321))

(declare-fun m!1197325 () Bool)

(assert (=> b!1306189 m!1197325))

(declare-fun m!1197327 () Bool)

(assert (=> b!1306189 m!1197327))

(assert (=> b!1306189 m!1197321))

(declare-fun m!1197329 () Bool)

(assert (=> b!1306189 m!1197329))

(declare-fun m!1197331 () Bool)

(assert (=> bm!64619 m!1197331))

(assert (=> b!1306158 d!142149))

(declare-fun d!142151 () Bool)

(assert (=> d!142151 (= (validMask!0 mask!2040) (and (or (= mask!2040 #b00000000000000000000000000000111) (= mask!2040 #b00000000000000000000000000001111) (= mask!2040 #b00000000000000000000000000011111) (= mask!2040 #b00000000000000000000000000111111) (= mask!2040 #b00000000000000000000000001111111) (= mask!2040 #b00000000000000000000000011111111) (= mask!2040 #b00000000000000000000000111111111) (= mask!2040 #b00000000000000000000001111111111) (= mask!2040 #b00000000000000000000011111111111) (= mask!2040 #b00000000000000000000111111111111) (= mask!2040 #b00000000000000000001111111111111) (= mask!2040 #b00000000000000000011111111111111) (= mask!2040 #b00000000000000000111111111111111) (= mask!2040 #b00000000000000001111111111111111) (= mask!2040 #b00000000000000011111111111111111) (= mask!2040 #b00000000000000111111111111111111) (= mask!2040 #b00000000000001111111111111111111) (= mask!2040 #b00000000000011111111111111111111) (= mask!2040 #b00000000000111111111111111111111) (= mask!2040 #b00000000001111111111111111111111) (= mask!2040 #b00000000011111111111111111111111) (= mask!2040 #b00000000111111111111111111111111) (= mask!2040 #b00000001111111111111111111111111) (= mask!2040 #b00000011111111111111111111111111) (= mask!2040 #b00000111111111111111111111111111) (= mask!2040 #b00001111111111111111111111111111) (= mask!2040 #b00011111111111111111111111111111) (= mask!2040 #b00111111111111111111111111111111)) (bvsle mask!2040 #b00111111111111111111111111111111)))))

(assert (=> start!110424 d!142151))

(declare-fun d!142153 () Bool)

(assert (=> d!142153 (= (array_inv!31725 _values!1354) (bvsge (size!42506 _values!1354) #b00000000000000000000000000000000))))

(assert (=> start!110424 d!142153))

(declare-fun d!142155 () Bool)

(assert (=> d!142155 (= (array_inv!31726 _keys!1628) (bvsge (size!42505 _keys!1628) #b00000000000000000000000000000000))))

(assert (=> start!110424 d!142155))

(declare-fun b!1306197 () Bool)

(declare-fun e!745190 () Bool)

(assert (=> b!1306197 (= e!745190 tp_is_empty!34983)))

(declare-fun mapIsEmpty!54100 () Bool)

(declare-fun mapRes!54100 () Bool)

(assert (=> mapIsEmpty!54100 mapRes!54100))

(declare-fun b!1306198 () Bool)

(declare-fun e!745191 () Bool)

(assert (=> b!1306198 (= e!745191 tp_is_empty!34983)))

(declare-fun mapNonEmpty!54100 () Bool)

(declare-fun tp!103181 () Bool)

(assert (=> mapNonEmpty!54100 (= mapRes!54100 (and tp!103181 e!745190))))

(declare-fun mapRest!54100 () (Array (_ BitVec 32) ValueCell!16593))

(declare-fun mapValue!54100 () ValueCell!16593)

(declare-fun mapKey!54100 () (_ BitVec 32))

(assert (=> mapNonEmpty!54100 (= mapRest!54094 (store mapRest!54100 mapKey!54100 mapValue!54100))))

(declare-fun condMapEmpty!54100 () Bool)

(declare-fun mapDefault!54100 () ValueCell!16593)

(assert (=> mapNonEmpty!54094 (= condMapEmpty!54100 (= mapRest!54094 ((as const (Array (_ BitVec 32) ValueCell!16593)) mapDefault!54100)))))

(assert (=> mapNonEmpty!54094 (= tp!103175 (and e!745191 mapRes!54100))))

(assert (= (and mapNonEmpty!54094 condMapEmpty!54100) mapIsEmpty!54100))

(assert (= (and mapNonEmpty!54094 (not condMapEmpty!54100)) mapNonEmpty!54100))

(assert (= (and mapNonEmpty!54100 ((_ is ValueCellFull!16593) mapValue!54100)) b!1306197))

(assert (= (and mapNonEmpty!54094 ((_ is ValueCellFull!16593) mapDefault!54100)) b!1306198))

(declare-fun m!1197333 () Bool)

(assert (=> mapNonEmpty!54100 m!1197333))

(check-sat (not b!1306188) (not b!1306189) tp_is_empty!34983 (not bm!64619) (not mapNonEmpty!54100))
(check-sat)
