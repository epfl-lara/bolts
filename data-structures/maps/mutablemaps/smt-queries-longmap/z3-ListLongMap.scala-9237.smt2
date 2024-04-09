; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110808 () Bool)

(assert start!110808)

(declare-fun b_free!29607 () Bool)

(declare-fun b_next!29607 () Bool)

(assert (=> start!110808 (= b_free!29607 (not b_next!29607))))

(declare-fun tp!104143 () Bool)

(declare-fun b_and!47825 () Bool)

(assert (=> start!110808 (= tp!104143 b_and!47825)))

(declare-fun b!1310970 () Bool)

(declare-fun e!747888 () Bool)

(declare-fun tp_is_empty!35337 () Bool)

(assert (=> b!1310970 (= e!747888 tp_is_empty!35337)))

(declare-fun b!1310971 () Bool)

(declare-fun e!747890 () Bool)

(assert (=> b!1310971 (= e!747890 tp_is_empty!35337)))

(declare-fun b!1310972 () Bool)

(declare-fun res!870403 () Bool)

(declare-fun e!747889 () Bool)

(assert (=> b!1310972 (=> (not res!870403) (not e!747889))))

(declare-datatypes ((array!87625 0))(
  ( (array!87626 (arr!42288 (Array (_ BitVec 32) (_ BitVec 64))) (size!42839 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87625)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87625 (_ BitVec 32)) Bool)

(assert (=> b!1310972 (= res!870403 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1310973 () Bool)

(declare-fun res!870405 () Bool)

(assert (=> b!1310973 (=> (not res!870405) (not e!747889))))

(declare-datatypes ((V!52219 0))(
  ( (V!52220 (val!17743 Int)) )
))
(declare-datatypes ((ValueCell!16770 0))(
  ( (ValueCellFull!16770 (v!20368 V!52219)) (EmptyCell!16770) )
))
(declare-datatypes ((array!87627 0))(
  ( (array!87628 (arr!42289 (Array (_ BitVec 32) ValueCell!16770)) (size!42840 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87627)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1310973 (= res!870405 (and (= (size!42840 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42839 _keys!1628) (size!42840 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!54634 () Bool)

(declare-fun mapRes!54634 () Bool)

(assert (=> mapIsEmpty!54634 mapRes!54634))

(declare-fun b!1310974 () Bool)

(declare-fun res!870406 () Bool)

(assert (=> b!1310974 (=> (not res!870406) (not e!747889))))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1310974 (= res!870406 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42839 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!870407 () Bool)

(assert (=> start!110808 (=> (not res!870407) (not e!747889))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110808 (= res!870407 (validMask!0 mask!2040))))

(assert (=> start!110808 e!747889))

(assert (=> start!110808 tp!104143))

(declare-fun array_inv!31941 (array!87625) Bool)

(assert (=> start!110808 (array_inv!31941 _keys!1628)))

(assert (=> start!110808 true))

(assert (=> start!110808 tp_is_empty!35337))

(declare-fun e!747886 () Bool)

(declare-fun array_inv!31942 (array!87627) Bool)

(assert (=> start!110808 (and (array_inv!31942 _values!1354) e!747886)))

(declare-fun b!1310975 () Bool)

(assert (=> b!1310975 (= e!747889 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun lt!585361 () Bool)

(declare-fun minValue!1296 () V!52219)

(declare-fun zeroValue!1296 () V!52219)

(declare-datatypes ((tuple2!23030 0))(
  ( (tuple2!23031 (_1!11525 (_ BitVec 64)) (_2!11525 V!52219)) )
))
(declare-datatypes ((List!30195 0))(
  ( (Nil!30192) (Cons!30191 (h!31400 tuple2!23030) (t!43808 List!30195)) )
))
(declare-datatypes ((ListLongMap!20699 0))(
  ( (ListLongMap!20700 (toList!10365 List!30195)) )
))
(declare-fun contains!8451 (ListLongMap!20699 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5321 (array!87625 array!87627 (_ BitVec 32) (_ BitVec 32) V!52219 V!52219 (_ BitVec 32) Int) ListLongMap!20699)

(assert (=> b!1310975 (= lt!585361 (contains!8451 (getCurrentListMap!5321 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1310976 () Bool)

(declare-fun res!870404 () Bool)

(assert (=> b!1310976 (=> (not res!870404) (not e!747889))))

(declare-datatypes ((List!30196 0))(
  ( (Nil!30193) (Cons!30192 (h!31401 (_ BitVec 64)) (t!43809 List!30196)) )
))
(declare-fun arrayNoDuplicates!0 (array!87625 (_ BitVec 32) List!30196) Bool)

(assert (=> b!1310976 (= res!870404 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30193))))

(declare-fun b!1310977 () Bool)

(assert (=> b!1310977 (= e!747886 (and e!747890 mapRes!54634))))

(declare-fun condMapEmpty!54634 () Bool)

(declare-fun mapDefault!54634 () ValueCell!16770)

(assert (=> b!1310977 (= condMapEmpty!54634 (= (arr!42289 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16770)) mapDefault!54634)))))

(declare-fun mapNonEmpty!54634 () Bool)

(declare-fun tp!104144 () Bool)

(assert (=> mapNonEmpty!54634 (= mapRes!54634 (and tp!104144 e!747888))))

(declare-fun mapKey!54634 () (_ BitVec 32))

(declare-fun mapRest!54634 () (Array (_ BitVec 32) ValueCell!16770))

(declare-fun mapValue!54634 () ValueCell!16770)

(assert (=> mapNonEmpty!54634 (= (arr!42289 _values!1354) (store mapRest!54634 mapKey!54634 mapValue!54634))))

(assert (= (and start!110808 res!870407) b!1310973))

(assert (= (and b!1310973 res!870405) b!1310972))

(assert (= (and b!1310972 res!870403) b!1310976))

(assert (= (and b!1310976 res!870404) b!1310974))

(assert (= (and b!1310974 res!870406) b!1310975))

(assert (= (and b!1310977 condMapEmpty!54634) mapIsEmpty!54634))

(assert (= (and b!1310977 (not condMapEmpty!54634)) mapNonEmpty!54634))

(get-info :version)

(assert (= (and mapNonEmpty!54634 ((_ is ValueCellFull!16770) mapValue!54634)) b!1310970))

(assert (= (and b!1310977 ((_ is ValueCellFull!16770) mapDefault!54634)) b!1310971))

(assert (= start!110808 b!1310977))

(declare-fun m!1200601 () Bool)

(assert (=> start!110808 m!1200601))

(declare-fun m!1200603 () Bool)

(assert (=> start!110808 m!1200603))

(declare-fun m!1200605 () Bool)

(assert (=> start!110808 m!1200605))

(declare-fun m!1200607 () Bool)

(assert (=> b!1310975 m!1200607))

(assert (=> b!1310975 m!1200607))

(declare-fun m!1200609 () Bool)

(assert (=> b!1310975 m!1200609))

(declare-fun m!1200611 () Bool)

(assert (=> b!1310972 m!1200611))

(declare-fun m!1200613 () Bool)

(assert (=> mapNonEmpty!54634 m!1200613))

(declare-fun m!1200615 () Bool)

(assert (=> b!1310976 m!1200615))

(check-sat b_and!47825 (not start!110808) (not b!1310975) (not b!1310972) tp_is_empty!35337 (not b!1310976) (not b_next!29607) (not mapNonEmpty!54634))
(check-sat b_and!47825 (not b_next!29607))
