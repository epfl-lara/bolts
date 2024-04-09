; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111064 () Bool)

(assert start!111064)

(declare-fun b_free!29863 () Bool)

(declare-fun b_next!29863 () Bool)

(assert (=> start!111064 (= b_free!29863 (not b_next!29863))))

(declare-fun tp!104911 () Bool)

(declare-fun b_and!48081 () Bool)

(assert (=> start!111064 (= tp!104911 b_and!48081)))

(declare-fun b!1314429 () Bool)

(declare-fun res!872712 () Bool)

(declare-fun e!749809 () Bool)

(assert (=> b!1314429 (=> (not res!872712) (not e!749809))))

(declare-datatypes ((array!88119 0))(
  ( (array!88120 (arr!42535 (Array (_ BitVec 32) (_ BitVec 64))) (size!43086 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88119)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88119 (_ BitVec 32)) Bool)

(assert (=> b!1314429 (= res!872712 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1314430 () Bool)

(assert (=> b!1314430 (= e!749809 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((V!52561 0))(
  ( (V!52562 (val!17871 Int)) )
))
(declare-fun minValue!1296 () V!52561)

(declare-datatypes ((ValueCell!16898 0))(
  ( (ValueCellFull!16898 (v!20496 V!52561)) (EmptyCell!16898) )
))
(declare-datatypes ((array!88121 0))(
  ( (array!88122 (arr!42536 (Array (_ BitVec 32) ValueCell!16898)) (size!43087 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88121)

(declare-fun zeroValue!1296 () V!52561)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun lt!585736 () Bool)

(declare-datatypes ((tuple2!23212 0))(
  ( (tuple2!23213 (_1!11616 (_ BitVec 64)) (_2!11616 V!52561)) )
))
(declare-datatypes ((List!30376 0))(
  ( (Nil!30373) (Cons!30372 (h!31581 tuple2!23212) (t!43989 List!30376)) )
))
(declare-datatypes ((ListLongMap!20881 0))(
  ( (ListLongMap!20882 (toList!10456 List!30376)) )
))
(declare-fun contains!8542 (ListLongMap!20881 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5412 (array!88119 array!88121 (_ BitVec 32) (_ BitVec 32) V!52561 V!52561 (_ BitVec 32) Int) ListLongMap!20881)

(assert (=> b!1314430 (= lt!585736 (contains!8542 (getCurrentListMap!5412 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1314431 () Bool)

(declare-fun res!872710 () Bool)

(assert (=> b!1314431 (=> (not res!872710) (not e!749809))))

(assert (=> b!1314431 (= res!872710 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43086 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!55018 () Bool)

(declare-fun mapRes!55018 () Bool)

(declare-fun tp!104912 () Bool)

(declare-fun e!749807 () Bool)

(assert (=> mapNonEmpty!55018 (= mapRes!55018 (and tp!104912 e!749807))))

(declare-fun mapValue!55018 () ValueCell!16898)

(declare-fun mapKey!55018 () (_ BitVec 32))

(declare-fun mapRest!55018 () (Array (_ BitVec 32) ValueCell!16898))

(assert (=> mapNonEmpty!55018 (= (arr!42536 _values!1354) (store mapRest!55018 mapKey!55018 mapValue!55018))))

(declare-fun b!1314432 () Bool)

(declare-fun res!872713 () Bool)

(assert (=> b!1314432 (=> (not res!872713) (not e!749809))))

(declare-datatypes ((List!30377 0))(
  ( (Nil!30374) (Cons!30373 (h!31582 (_ BitVec 64)) (t!43990 List!30377)) )
))
(declare-fun arrayNoDuplicates!0 (array!88119 (_ BitVec 32) List!30377) Bool)

(assert (=> b!1314432 (= res!872713 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30374))))

(declare-fun b!1314433 () Bool)

(declare-fun tp_is_empty!35593 () Bool)

(assert (=> b!1314433 (= e!749807 tp_is_empty!35593)))

(declare-fun b!1314434 () Bool)

(declare-fun e!749810 () Bool)

(assert (=> b!1314434 (= e!749810 tp_is_empty!35593)))

(declare-fun mapIsEmpty!55018 () Bool)

(assert (=> mapIsEmpty!55018 mapRes!55018))

(declare-fun b!1314436 () Bool)

(declare-fun res!872714 () Bool)

(assert (=> b!1314436 (=> (not res!872714) (not e!749809))))

(assert (=> b!1314436 (= res!872714 (and (= (size!43087 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43086 _keys!1628) (size!43087 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1314435 () Bool)

(declare-fun e!749808 () Bool)

(assert (=> b!1314435 (= e!749808 (and e!749810 mapRes!55018))))

(declare-fun condMapEmpty!55018 () Bool)

(declare-fun mapDefault!55018 () ValueCell!16898)

