; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108456 () Bool)

(assert start!108456)

(declare-fun b_free!27967 () Bool)

(declare-fun b_next!27967 () Bool)

(assert (=> start!108456 (= b_free!27967 (not b_next!27967))))

(declare-fun tp!99012 () Bool)

(declare-fun b_and!46037 () Bool)

(assert (=> start!108456 (= tp!99012 b_and!46037)))

(declare-fun b!1279512 () Bool)

(declare-fun e!731091 () Bool)

(declare-fun tp_is_empty!33607 () Bool)

(assert (=> b!1279512 (= e!731091 tp_is_empty!33607)))

(declare-fun b!1279514 () Bool)

(declare-fun e!731093 () Bool)

(assert (=> b!1279514 (= e!731093 tp_is_empty!33607)))

(declare-fun b!1279515 () Bool)

(declare-fun res!850038 () Bool)

(declare-fun e!731095 () Bool)

(assert (=> b!1279515 (=> (not res!850038) (not e!731095))))

(declare-datatypes ((array!84249 0))(
  ( (array!84250 (arr!40624 (Array (_ BitVec 32) (_ BitVec 64))) (size!41175 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84249)

(declare-datatypes ((List!28955 0))(
  ( (Nil!28952) (Cons!28951 (h!30160 (_ BitVec 64)) (t!42502 List!28955)) )
))
(declare-fun arrayNoDuplicates!0 (array!84249 (_ BitVec 32) List!28955) Bool)

(assert (=> b!1279515 (= res!850038 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28952))))

(declare-fun b!1279516 () Bool)

(declare-fun res!850035 () Bool)

(assert (=> b!1279516 (=> (not res!850035) (not e!731095))))

(declare-datatypes ((V!49913 0))(
  ( (V!49914 (val!16878 Int)) )
))
(declare-fun minValue!1387 () V!49913)

(declare-fun zeroValue!1387 () V!49913)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!15905 0))(
  ( (ValueCellFull!15905 (v!19476 V!49913)) (EmptyCell!15905) )
))
(declare-datatypes ((array!84251 0))(
  ( (array!84252 (arr!40625 (Array (_ BitVec 32) ValueCell!15905)) (size!41176 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84251)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!21744 0))(
  ( (tuple2!21745 (_1!10882 (_ BitVec 64)) (_2!10882 V!49913)) )
))
(declare-datatypes ((List!28956 0))(
  ( (Nil!28953) (Cons!28952 (h!30161 tuple2!21744) (t!42503 List!28956)) )
))
(declare-datatypes ((ListLongMap!19413 0))(
  ( (ListLongMap!19414 (toList!9722 List!28956)) )
))
(declare-fun contains!7775 (ListLongMap!19413 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4742 (array!84249 array!84251 (_ BitVec 32) (_ BitVec 32) V!49913 V!49913 (_ BitVec 32) Int) ListLongMap!19413)

(assert (=> b!1279516 (= res!850035 (contains!7775 (getCurrentListMap!4742 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1279517 () Bool)

(declare-fun res!850040 () Bool)

(assert (=> b!1279517 (=> (not res!850040) (not e!731095))))

(assert (=> b!1279517 (= res!850040 (and (= (size!41176 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41175 _keys!1741) (size!41176 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!51962 () Bool)

(declare-fun mapRes!51962 () Bool)

(assert (=> mapIsEmpty!51962 mapRes!51962))

(declare-fun b!1279518 () Bool)

(assert (=> b!1279518 (= e!731095 (bvsgt from!2144 (size!41175 _keys!1741)))))

(declare-fun b!1279519 () Bool)

(declare-fun res!850037 () Bool)

(assert (=> b!1279519 (=> (not res!850037) (not e!731095))))

(assert (=> b!1279519 (= res!850037 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41175 _keys!1741))))))

(declare-fun b!1279513 () Bool)

(declare-fun e!731092 () Bool)

(assert (=> b!1279513 (= e!731092 (and e!731091 mapRes!51962))))

(declare-fun condMapEmpty!51962 () Bool)

(declare-fun mapDefault!51962 () ValueCell!15905)

