; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111082 () Bool)

(assert start!111082)

(declare-fun b_free!29881 () Bool)

(declare-fun b_next!29881 () Bool)

(assert (=> start!111082 (= b_free!29881 (not b_next!29881))))

(declare-fun tp!104965 () Bool)

(declare-fun b_and!48099 () Bool)

(assert (=> start!111082 (= tp!104965 b_and!48099)))

(declare-fun res!872846 () Bool)

(declare-fun e!749943 () Bool)

(assert (=> start!111082 (=> (not res!872846) (not e!749943))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111082 (= res!872846 (validMask!0 mask!2040))))

(assert (=> start!111082 e!749943))

(assert (=> start!111082 tp!104965))

(declare-datatypes ((array!88155 0))(
  ( (array!88156 (arr!42553 (Array (_ BitVec 32) (_ BitVec 64))) (size!43104 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88155)

(declare-fun array_inv!32115 (array!88155) Bool)

(assert (=> start!111082 (array_inv!32115 _keys!1628)))

(assert (=> start!111082 true))

(declare-fun tp_is_empty!35611 () Bool)

(assert (=> start!111082 tp_is_empty!35611))

(declare-datatypes ((V!52585 0))(
  ( (V!52586 (val!17880 Int)) )
))
(declare-datatypes ((ValueCell!16907 0))(
  ( (ValueCellFull!16907 (v!20505 V!52585)) (EmptyCell!16907) )
))
(declare-datatypes ((array!88157 0))(
  ( (array!88158 (arr!42554 (Array (_ BitVec 32) ValueCell!16907)) (size!43105 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88157)

(declare-fun e!749941 () Bool)

(declare-fun array_inv!32116 (array!88157) Bool)

(assert (=> start!111082 (and (array_inv!32116 _values!1354) e!749941)))

(declare-fun b!1314645 () Bool)

(declare-fun res!872845 () Bool)

(assert (=> b!1314645 (=> (not res!872845) (not e!749943))))

(declare-datatypes ((List!30388 0))(
  ( (Nil!30385) (Cons!30384 (h!31593 (_ BitVec 64)) (t!44001 List!30388)) )
))
(declare-fun arrayNoDuplicates!0 (array!88155 (_ BitVec 32) List!30388) Bool)

(assert (=> b!1314645 (= res!872845 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30385))))

(declare-fun b!1314646 () Bool)

(declare-fun res!872847 () Bool)

(assert (=> b!1314646 (=> (not res!872847) (not e!749943))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88155 (_ BitVec 32)) Bool)

(assert (=> b!1314646 (= res!872847 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1314647 () Bool)

(assert (=> b!1314647 (= e!749943 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!52585)

(declare-fun zeroValue!1296 () V!52585)

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun lt!585763 () Bool)

(declare-datatypes ((tuple2!23224 0))(
  ( (tuple2!23225 (_1!11622 (_ BitVec 64)) (_2!11622 V!52585)) )
))
(declare-datatypes ((List!30389 0))(
  ( (Nil!30386) (Cons!30385 (h!31594 tuple2!23224) (t!44002 List!30389)) )
))
(declare-datatypes ((ListLongMap!20893 0))(
  ( (ListLongMap!20894 (toList!10462 List!30389)) )
))
(declare-fun contains!8548 (ListLongMap!20893 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5418 (array!88155 array!88157 (_ BitVec 32) (_ BitVec 32) V!52585 V!52585 (_ BitVec 32) Int) ListLongMap!20893)

(assert (=> b!1314647 (= lt!585763 (contains!8548 (getCurrentListMap!5418 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1314648 () Bool)

(declare-fun e!749945 () Bool)

(assert (=> b!1314648 (= e!749945 tp_is_empty!35611)))

(declare-fun b!1314649 () Bool)

(declare-fun res!872849 () Bool)

(assert (=> b!1314649 (=> (not res!872849) (not e!749943))))

(assert (=> b!1314649 (= res!872849 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43104 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!55045 () Bool)

(declare-fun mapRes!55045 () Bool)

(declare-fun tp!104966 () Bool)

(assert (=> mapNonEmpty!55045 (= mapRes!55045 (and tp!104966 e!749945))))

(declare-fun mapKey!55045 () (_ BitVec 32))

(declare-fun mapValue!55045 () ValueCell!16907)

(declare-fun mapRest!55045 () (Array (_ BitVec 32) ValueCell!16907))

(assert (=> mapNonEmpty!55045 (= (arr!42554 _values!1354) (store mapRest!55045 mapKey!55045 mapValue!55045))))

(declare-fun b!1314650 () Bool)

(declare-fun e!749942 () Bool)

(assert (=> b!1314650 (= e!749942 tp_is_empty!35611)))

(declare-fun b!1314651 () Bool)

(declare-fun res!872848 () Bool)

(assert (=> b!1314651 (=> (not res!872848) (not e!749943))))

(assert (=> b!1314651 (= res!872848 (and (= (size!43105 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43104 _keys!1628) (size!43105 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1314652 () Bool)

(assert (=> b!1314652 (= e!749941 (and e!749942 mapRes!55045))))

(declare-fun condMapEmpty!55045 () Bool)

(declare-fun mapDefault!55045 () ValueCell!16907)

