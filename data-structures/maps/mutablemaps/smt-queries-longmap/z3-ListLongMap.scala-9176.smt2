; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110398 () Bool)

(assert start!110398)

(declare-fun mapIsEmpty!54070 () Bool)

(declare-fun mapRes!54070 () Bool)

(assert (=> mapIsEmpty!54070 mapRes!54070))

(declare-fun e!745047 () Bool)

(declare-fun b!1306027 () Bool)

(declare-datatypes ((array!86927 0))(
  ( (array!86928 (arr!41944 (Array (_ BitVec 32) (_ BitVec 64))) (size!42495 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!86927)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!51731 0))(
  ( (V!51732 (val!17560 Int)) )
))
(declare-datatypes ((ValueCell!16587 0))(
  ( (ValueCellFull!16587 (v!20184 V!51731)) (EmptyCell!16587) )
))
(declare-datatypes ((array!86929 0))(
  ( (array!86930 (arr!41945 (Array (_ BitVec 32) ValueCell!16587)) (size!42496 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!86929)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1306027 (= e!745047 (and (= (size!42496 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42495 _keys!1628) (size!42496 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011) (= (size!42495 _keys!1628) (bvadd #b00000000000000000000000000000001 mask!2040)) (bvsgt #b00000000000000000000000000000000 (size!42495 _keys!1628))))))

(declare-fun res!867171 () Bool)

(assert (=> start!110398 (=> (not res!867171) (not e!745047))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110398 (= res!867171 (validMask!0 mask!2040))))

(assert (=> start!110398 e!745047))

(assert (=> start!110398 true))

(declare-fun e!745050 () Bool)

(declare-fun array_inv!31719 (array!86929) Bool)

(assert (=> start!110398 (and (array_inv!31719 _values!1354) e!745050)))

(declare-fun array_inv!31720 (array!86927) Bool)

(assert (=> start!110398 (array_inv!31720 _keys!1628)))

(declare-fun b!1306028 () Bool)

(declare-fun e!745046 () Bool)

(declare-fun tp_is_empty!34971 () Bool)

(assert (=> b!1306028 (= e!745046 tp_is_empty!34971)))

(declare-fun b!1306029 () Bool)

(assert (=> b!1306029 (= e!745050 (and e!745046 mapRes!54070))))

(declare-fun condMapEmpty!54070 () Bool)

(declare-fun mapDefault!54070 () ValueCell!16587)

(assert (=> b!1306029 (= condMapEmpty!54070 (= (arr!41945 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16587)) mapDefault!54070)))))

(declare-fun mapNonEmpty!54070 () Bool)

(declare-fun tp!103151 () Bool)

(declare-fun e!745048 () Bool)

(assert (=> mapNonEmpty!54070 (= mapRes!54070 (and tp!103151 e!745048))))

(declare-fun mapRest!54070 () (Array (_ BitVec 32) ValueCell!16587))

(declare-fun mapKey!54070 () (_ BitVec 32))

(declare-fun mapValue!54070 () ValueCell!16587)

(assert (=> mapNonEmpty!54070 (= (arr!41945 _values!1354) (store mapRest!54070 mapKey!54070 mapValue!54070))))

(declare-fun b!1306030 () Bool)

(assert (=> b!1306030 (= e!745048 tp_is_empty!34971)))

(assert (= (and start!110398 res!867171) b!1306027))

(assert (= (and b!1306029 condMapEmpty!54070) mapIsEmpty!54070))

(assert (= (and b!1306029 (not condMapEmpty!54070)) mapNonEmpty!54070))

(get-info :version)

(assert (= (and mapNonEmpty!54070 ((_ is ValueCellFull!16587) mapValue!54070)) b!1306030))

(assert (= (and b!1306029 ((_ is ValueCellFull!16587) mapDefault!54070)) b!1306028))

(assert (= start!110398 b!1306029))

(declare-fun m!1197229 () Bool)

(assert (=> start!110398 m!1197229))

(declare-fun m!1197231 () Bool)

(assert (=> start!110398 m!1197231))

(declare-fun m!1197233 () Bool)

(assert (=> start!110398 m!1197233))

(declare-fun m!1197235 () Bool)

(assert (=> mapNonEmpty!54070 m!1197235))

(check-sat (not start!110398) (not mapNonEmpty!54070) tp_is_empty!34971)
(check-sat)
(get-model)

(declare-fun d!142131 () Bool)

(assert (=> d!142131 (= (validMask!0 mask!2040) (and (or (= mask!2040 #b00000000000000000000000000000111) (= mask!2040 #b00000000000000000000000000001111) (= mask!2040 #b00000000000000000000000000011111) (= mask!2040 #b00000000000000000000000000111111) (= mask!2040 #b00000000000000000000000001111111) (= mask!2040 #b00000000000000000000000011111111) (= mask!2040 #b00000000000000000000000111111111) (= mask!2040 #b00000000000000000000001111111111) (= mask!2040 #b00000000000000000000011111111111) (= mask!2040 #b00000000000000000000111111111111) (= mask!2040 #b00000000000000000001111111111111) (= mask!2040 #b00000000000000000011111111111111) (= mask!2040 #b00000000000000000111111111111111) (= mask!2040 #b00000000000000001111111111111111) (= mask!2040 #b00000000000000011111111111111111) (= mask!2040 #b00000000000000111111111111111111) (= mask!2040 #b00000000000001111111111111111111) (= mask!2040 #b00000000000011111111111111111111) (= mask!2040 #b00000000000111111111111111111111) (= mask!2040 #b00000000001111111111111111111111) (= mask!2040 #b00000000011111111111111111111111) (= mask!2040 #b00000000111111111111111111111111) (= mask!2040 #b00000001111111111111111111111111) (= mask!2040 #b00000011111111111111111111111111) (= mask!2040 #b00000111111111111111111111111111) (= mask!2040 #b00001111111111111111111111111111) (= mask!2040 #b00011111111111111111111111111111) (= mask!2040 #b00111111111111111111111111111111)) (bvsle mask!2040 #b00111111111111111111111111111111)))))

(assert (=> start!110398 d!142131))

(declare-fun d!142133 () Bool)

(assert (=> d!142133 (= (array_inv!31719 _values!1354) (bvsge (size!42496 _values!1354) #b00000000000000000000000000000000))))

(assert (=> start!110398 d!142133))

(declare-fun d!142135 () Bool)

(assert (=> d!142135 (= (array_inv!31720 _keys!1628) (bvsge (size!42495 _keys!1628) #b00000000000000000000000000000000))))

(assert (=> start!110398 d!142135))

(declare-fun mapNonEmpty!54076 () Bool)

(declare-fun mapRes!54076 () Bool)

(declare-fun tp!103157 () Bool)

(declare-fun e!745071 () Bool)

(assert (=> mapNonEmpty!54076 (= mapRes!54076 (and tp!103157 e!745071))))

(declare-fun mapKey!54076 () (_ BitVec 32))

(declare-fun mapValue!54076 () ValueCell!16587)

(declare-fun mapRest!54076 () (Array (_ BitVec 32) ValueCell!16587))

(assert (=> mapNonEmpty!54076 (= mapRest!54070 (store mapRest!54076 mapKey!54076 mapValue!54076))))

(declare-fun b!1306049 () Bool)

(assert (=> b!1306049 (= e!745071 tp_is_empty!34971)))

(declare-fun condMapEmpty!54076 () Bool)

(declare-fun mapDefault!54076 () ValueCell!16587)

(assert (=> mapNonEmpty!54070 (= condMapEmpty!54076 (= mapRest!54070 ((as const (Array (_ BitVec 32) ValueCell!16587)) mapDefault!54076)))))

(declare-fun e!745070 () Bool)

(assert (=> mapNonEmpty!54070 (= tp!103151 (and e!745070 mapRes!54076))))

(declare-fun mapIsEmpty!54076 () Bool)

(assert (=> mapIsEmpty!54076 mapRes!54076))

(declare-fun b!1306050 () Bool)

(assert (=> b!1306050 (= e!745070 tp_is_empty!34971)))

(assert (= (and mapNonEmpty!54070 condMapEmpty!54076) mapIsEmpty!54076))

(assert (= (and mapNonEmpty!54070 (not condMapEmpty!54076)) mapNonEmpty!54076))

(assert (= (and mapNonEmpty!54076 ((_ is ValueCellFull!16587) mapValue!54076)) b!1306049))

(assert (= (and mapNonEmpty!54070 ((_ is ValueCellFull!16587) mapDefault!54076)) b!1306050))

(declare-fun m!1197245 () Bool)

(assert (=> mapNonEmpty!54076 m!1197245))

(check-sat (not mapNonEmpty!54076) tp_is_empty!34971)
(check-sat)
