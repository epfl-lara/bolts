; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83984 () Bool)

(assert start!83984)

(declare-fun b!980965 () Bool)

(declare-fun res!656564 () Bool)

(declare-fun e!553029 () Bool)

(assert (=> b!980965 (=> (not res!656564) (not e!553029))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35329 0))(
  ( (V!35330 (val!11430 Int)) )
))
(declare-datatypes ((ValueCell!10898 0))(
  ( (ValueCellFull!10898 (v!13992 V!35329)) (EmptyCell!10898) )
))
(declare-datatypes ((array!61515 0))(
  ( (array!61516 (arr!29611 (Array (_ BitVec 32) ValueCell!10898)) (size!30091 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61515)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!61517 0))(
  ( (array!61518 (arr!29612 (Array (_ BitVec 32) (_ BitVec 64))) (size!30092 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61517)

(assert (=> b!980965 (= res!656564 (and (= (size!30091 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30092 _keys!1544) (size!30091 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!36167 () Bool)

(declare-fun mapRes!36167 () Bool)

(declare-fun tp!68681 () Bool)

(declare-fun e!553030 () Bool)

(assert (=> mapNonEmpty!36167 (= mapRes!36167 (and tp!68681 e!553030))))

(declare-fun mapRest!36167 () (Array (_ BitVec 32) ValueCell!10898))

(declare-fun mapKey!36167 () (_ BitVec 32))

(declare-fun mapValue!36167 () ValueCell!10898)

(assert (=> mapNonEmpty!36167 (= (arr!29611 _values!1278) (store mapRest!36167 mapKey!36167 mapValue!36167))))

(declare-fun b!980966 () Bool)

(declare-fun e!553031 () Bool)

(declare-fun tp_is_empty!22759 () Bool)

(assert (=> b!980966 (= e!553031 tp_is_empty!22759)))

(declare-fun mapIsEmpty!36167 () Bool)

(assert (=> mapIsEmpty!36167 mapRes!36167))

(declare-fun b!980968 () Bool)

(declare-fun res!656565 () Bool)

(assert (=> b!980968 (=> (not res!656565) (not e!553029))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61517 (_ BitVec 32)) Bool)

(assert (=> b!980968 (= res!656565 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!980969 () Bool)

(assert (=> b!980969 (= e!553030 tp_is_empty!22759)))

(declare-fun b!980970 () Bool)

(declare-fun e!553027 () Bool)

(assert (=> b!980970 (= e!553027 (and e!553031 mapRes!36167))))

(declare-fun condMapEmpty!36167 () Bool)

(declare-fun mapDefault!36167 () ValueCell!10898)

