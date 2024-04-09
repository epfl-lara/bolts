; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111116 () Bool)

(assert start!111116)

(declare-fun b_free!29915 () Bool)

(declare-fun b_next!29915 () Bool)

(assert (=> start!111116 (= b_free!29915 (not b_next!29915))))

(declare-fun tp!105068 () Bool)

(declare-fun b_and!48133 () Bool)

(assert (=> start!111116 (= tp!105068 b_and!48133)))

(declare-fun b!1315053 () Bool)

(declare-fun e!750200 () Bool)

(declare-fun tp_is_empty!35645 () Bool)

(assert (=> b!1315053 (= e!750200 tp_is_empty!35645)))

(declare-fun res!873104 () Bool)

(declare-fun e!750199 () Bool)

(assert (=> start!111116 (=> (not res!873104) (not e!750199))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111116 (= res!873104 (validMask!0 mask!2040))))

(assert (=> start!111116 e!750199))

(assert (=> start!111116 tp!105068))

(declare-datatypes ((array!88219 0))(
  ( (array!88220 (arr!42585 (Array (_ BitVec 32) (_ BitVec 64))) (size!43136 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88219)

(declare-fun array_inv!32139 (array!88219) Bool)

(assert (=> start!111116 (array_inv!32139 _keys!1628)))

(assert (=> start!111116 true))

(assert (=> start!111116 tp_is_empty!35645))

(declare-datatypes ((V!52629 0))(
  ( (V!52630 (val!17897 Int)) )
))
(declare-datatypes ((ValueCell!16924 0))(
  ( (ValueCellFull!16924 (v!20522 V!52629)) (EmptyCell!16924) )
))
(declare-datatypes ((array!88221 0))(
  ( (array!88222 (arr!42586 (Array (_ BitVec 32) ValueCell!16924)) (size!43137 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88221)

(declare-fun e!750196 () Bool)

(declare-fun array_inv!32140 (array!88221) Bool)

(assert (=> start!111116 (and (array_inv!32140 _values!1354) e!750196)))

(declare-fun b!1315054 () Bool)

(declare-fun res!873101 () Bool)

(assert (=> b!1315054 (=> (not res!873101) (not e!750199))))

(declare-datatypes ((List!30409 0))(
  ( (Nil!30406) (Cons!30405 (h!31614 (_ BitVec 64)) (t!44022 List!30409)) )
))
(declare-fun arrayNoDuplicates!0 (array!88219 (_ BitVec 32) List!30409) Bool)

(assert (=> b!1315054 (= res!873101 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30406))))

(declare-fun b!1315055 () Bool)

(assert (=> b!1315055 (= e!750199 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun lt!585814 () Bool)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!52629)

(declare-fun zeroValue!1296 () V!52629)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23242 0))(
  ( (tuple2!23243 (_1!11631 (_ BitVec 64)) (_2!11631 V!52629)) )
))
(declare-datatypes ((List!30410 0))(
  ( (Nil!30407) (Cons!30406 (h!31615 tuple2!23242) (t!44023 List!30410)) )
))
(declare-datatypes ((ListLongMap!20911 0))(
  ( (ListLongMap!20912 (toList!10471 List!30410)) )
))
(declare-fun contains!8557 (ListLongMap!20911 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5427 (array!88219 array!88221 (_ BitVec 32) (_ BitVec 32) V!52629 V!52629 (_ BitVec 32) Int) ListLongMap!20911)

(assert (=> b!1315055 (= lt!585814 (contains!8557 (getCurrentListMap!5427 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun mapNonEmpty!55096 () Bool)

(declare-fun mapRes!55096 () Bool)

(declare-fun tp!105067 () Bool)

(declare-fun e!750198 () Bool)

(assert (=> mapNonEmpty!55096 (= mapRes!55096 (and tp!105067 e!750198))))

(declare-fun mapRest!55096 () (Array (_ BitVec 32) ValueCell!16924))

(declare-fun mapValue!55096 () ValueCell!16924)

(declare-fun mapKey!55096 () (_ BitVec 32))

(assert (=> mapNonEmpty!55096 (= (arr!42586 _values!1354) (store mapRest!55096 mapKey!55096 mapValue!55096))))

(declare-fun b!1315056 () Bool)

(declare-fun res!873102 () Bool)

(assert (=> b!1315056 (=> (not res!873102) (not e!750199))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88219 (_ BitVec 32)) Bool)

(assert (=> b!1315056 (= res!873102 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1315057 () Bool)

(assert (=> b!1315057 (= e!750196 (and e!750200 mapRes!55096))))

(declare-fun condMapEmpty!55096 () Bool)

(declare-fun mapDefault!55096 () ValueCell!16924)

