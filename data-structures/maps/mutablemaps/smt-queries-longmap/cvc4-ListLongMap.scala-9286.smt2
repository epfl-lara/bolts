; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111104 () Bool)

(assert start!111104)

(declare-fun b_free!29903 () Bool)

(declare-fun b_next!29903 () Bool)

(assert (=> start!111104 (= b_free!29903 (not b_next!29903))))

(declare-fun tp!105031 () Bool)

(declare-fun b_and!48121 () Bool)

(assert (=> start!111104 (= tp!105031 b_and!48121)))

(declare-fun b!1314909 () Bool)

(declare-fun e!750107 () Bool)

(declare-fun tp_is_empty!35633 () Bool)

(assert (=> b!1314909 (= e!750107 tp_is_empty!35633)))

(declare-fun b!1314910 () Bool)

(declare-fun res!873012 () Bool)

(declare-fun e!750106 () Bool)

(assert (=> b!1314910 (=> (not res!873012) (not e!750106))))

(declare-datatypes ((array!88195 0))(
  ( (array!88196 (arr!42573 (Array (_ BitVec 32) (_ BitVec 64))) (size!43124 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88195)

(declare-datatypes ((List!30401 0))(
  ( (Nil!30398) (Cons!30397 (h!31606 (_ BitVec 64)) (t!44014 List!30401)) )
))
(declare-fun arrayNoDuplicates!0 (array!88195 (_ BitVec 32) List!30401) Bool)

(assert (=> b!1314910 (= res!873012 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30398))))

(declare-fun b!1314911 () Bool)

(declare-fun res!873013 () Bool)

(assert (=> b!1314911 (=> (not res!873013) (not e!750106))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88195 (_ BitVec 32)) Bool)

(assert (=> b!1314911 (= res!873013 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1314912 () Bool)

(declare-fun res!873010 () Bool)

(assert (=> b!1314912 (=> (not res!873010) (not e!750106))))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1314912 (= res!873010 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43124 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1314913 () Bool)

(declare-fun e!750109 () Bool)

(assert (=> b!1314913 (= e!750109 tp_is_empty!35633)))

(declare-fun b!1314914 () Bool)

(declare-fun res!873011 () Bool)

(assert (=> b!1314914 (=> (not res!873011) (not e!750106))))

(declare-datatypes ((V!52613 0))(
  ( (V!52614 (val!17891 Int)) )
))
(declare-datatypes ((ValueCell!16918 0))(
  ( (ValueCellFull!16918 (v!20516 V!52613)) (EmptyCell!16918) )
))
(declare-datatypes ((array!88197 0))(
  ( (array!88198 (arr!42574 (Array (_ BitVec 32) ValueCell!16918)) (size!43125 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88197)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1314914 (= res!873011 (and (= (size!43125 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43124 _keys!1628) (size!43125 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!55078 () Bool)

(declare-fun mapRes!55078 () Bool)

(assert (=> mapIsEmpty!55078 mapRes!55078))

(declare-fun res!873014 () Bool)

(assert (=> start!111104 (=> (not res!873014) (not e!750106))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111104 (= res!873014 (validMask!0 mask!2040))))

(assert (=> start!111104 e!750106))

(assert (=> start!111104 tp!105031))

(declare-fun array_inv!32129 (array!88195) Bool)

(assert (=> start!111104 (array_inv!32129 _keys!1628)))

(assert (=> start!111104 true))

(assert (=> start!111104 tp_is_empty!35633))

(declare-fun e!750108 () Bool)

(declare-fun array_inv!32130 (array!88197) Bool)

(assert (=> start!111104 (and (array_inv!32130 _values!1354) e!750108)))

(declare-fun mapNonEmpty!55078 () Bool)

(declare-fun tp!105032 () Bool)

(assert (=> mapNonEmpty!55078 (= mapRes!55078 (and tp!105032 e!750109))))

(declare-fun mapKey!55078 () (_ BitVec 32))

(declare-fun mapRest!55078 () (Array (_ BitVec 32) ValueCell!16918))

(declare-fun mapValue!55078 () ValueCell!16918)

(assert (=> mapNonEmpty!55078 (= (arr!42574 _values!1354) (store mapRest!55078 mapKey!55078 mapValue!55078))))

(declare-fun b!1314915 () Bool)

(assert (=> b!1314915 (= e!750106 false)))

(declare-fun lt!585796 () Bool)

(declare-fun minValue!1296 () V!52613)

(declare-fun zeroValue!1296 () V!52613)

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((tuple2!23236 0))(
  ( (tuple2!23237 (_1!11628 (_ BitVec 64)) (_2!11628 V!52613)) )
))
(declare-datatypes ((List!30402 0))(
  ( (Nil!30399) (Cons!30398 (h!31607 tuple2!23236) (t!44015 List!30402)) )
))
(declare-datatypes ((ListLongMap!20905 0))(
  ( (ListLongMap!20906 (toList!10468 List!30402)) )
))
(declare-fun contains!8554 (ListLongMap!20905 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5424 (array!88195 array!88197 (_ BitVec 32) (_ BitVec 32) V!52613 V!52613 (_ BitVec 32) Int) ListLongMap!20905)

(assert (=> b!1314915 (= lt!585796 (contains!8554 (getCurrentListMap!5424 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1314916 () Bool)

(assert (=> b!1314916 (= e!750108 (and e!750107 mapRes!55078))))

(declare-fun condMapEmpty!55078 () Bool)

(declare-fun mapDefault!55078 () ValueCell!16918)

