; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84114 () Bool)

(assert start!84114)

(declare-fun b_free!19841 () Bool)

(declare-fun b_next!19841 () Bool)

(assert (=> start!84114 (= b_free!19841 (not b_next!19841))))

(declare-fun tp!69047 () Bool)

(declare-fun b_and!31783 () Bool)

(assert (=> start!84114 (= tp!69047 b_and!31783)))

(declare-fun b!983109 () Bool)

(declare-fun e!554168 () Bool)

(declare-fun tp_is_empty!22889 () Bool)

(assert (=> b!983109 (= e!554168 tp_is_empty!22889)))

(declare-fun b!983110 () Bool)

(declare-fun res!658020 () Bool)

(declare-fun e!554165 () Bool)

(assert (=> b!983110 (=> (not res!658020) (not e!554165))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35501 0))(
  ( (V!35502 (val!11495 Int)) )
))
(declare-datatypes ((ValueCell!10963 0))(
  ( (ValueCellFull!10963 (v!14057 V!35501)) (EmptyCell!10963) )
))
(declare-datatypes ((array!61761 0))(
  ( (array!61762 (arr!29734 (Array (_ BitVec 32) ValueCell!10963)) (size!30214 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61761)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!61763 0))(
  ( (array!61764 (arr!29735 (Array (_ BitVec 32) (_ BitVec 64))) (size!30215 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61763)

(assert (=> b!983110 (= res!658020 (and (= (size!30214 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30215 _keys!1544) (size!30214 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!983111 () Bool)

(declare-fun res!658019 () Bool)

(assert (=> b!983111 (=> (not res!658019) (not e!554165))))

(declare-datatypes ((List!20738 0))(
  ( (Nil!20735) (Cons!20734 (h!21896 (_ BitVec 64)) (t!29537 List!20738)) )
))
(declare-fun arrayNoDuplicates!0 (array!61763 (_ BitVec 32) List!20738) Bool)

(assert (=> b!983111 (= res!658019 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20735))))

(declare-fun mapNonEmpty!36362 () Bool)

(declare-fun mapRes!36362 () Bool)

(declare-fun tp!69046 () Bool)

(declare-fun e!554163 () Bool)

(assert (=> mapNonEmpty!36362 (= mapRes!36362 (and tp!69046 e!554163))))

(declare-fun mapValue!36362 () ValueCell!10963)

(declare-fun mapKey!36362 () (_ BitVec 32))

(declare-fun mapRest!36362 () (Array (_ BitVec 32) ValueCell!10963))

(assert (=> mapNonEmpty!36362 (= (arr!29734 _values!1278) (store mapRest!36362 mapKey!36362 mapValue!36362))))

(declare-fun res!658016 () Bool)

(assert (=> start!84114 (=> (not res!658016) (not e!554165))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84114 (= res!658016 (validMask!0 mask!1948))))

(assert (=> start!84114 e!554165))

(assert (=> start!84114 true))

(assert (=> start!84114 tp_is_empty!22889))

(declare-fun e!554167 () Bool)

(declare-fun array_inv!22863 (array!61761) Bool)

(assert (=> start!84114 (and (array_inv!22863 _values!1278) e!554167)))

(assert (=> start!84114 tp!69047))

(declare-fun array_inv!22864 (array!61763) Bool)

(assert (=> start!84114 (array_inv!22864 _keys!1544)))

(declare-fun mapIsEmpty!36362 () Bool)

(assert (=> mapIsEmpty!36362 mapRes!36362))

(declare-fun b!983112 () Bool)

(assert (=> b!983112 (= e!554167 (and e!554168 mapRes!36362))))

(declare-fun condMapEmpty!36362 () Bool)

(declare-fun mapDefault!36362 () ValueCell!10963)

