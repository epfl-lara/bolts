; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108872 () Bool)

(assert start!108872)

(declare-fun b_free!28349 () Bool)

(declare-fun b_next!28349 () Bool)

(assert (=> start!108872 (= b_free!28349 (not b_next!28349))))

(declare-fun tp!100164 () Bool)

(declare-fun b_and!46425 () Bool)

(assert (=> start!108872 (= tp!100164 b_and!46425)))

(declare-fun b!1285221 () Bool)

(declare-fun res!853877 () Bool)

(declare-fun e!734155 () Bool)

(assert (=> b!1285221 (=> (not res!853877) (not e!734155))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50421 0))(
  ( (V!50422 (val!17069 Int)) )
))
(declare-datatypes ((ValueCell!16096 0))(
  ( (ValueCellFull!16096 (v!19669 V!50421)) (EmptyCell!16096) )
))
(declare-datatypes ((array!84989 0))(
  ( (array!84990 (arr!40992 (Array (_ BitVec 32) ValueCell!16096)) (size!41543 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84989)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84991 0))(
  ( (array!84992 (arr!40993 (Array (_ BitVec 32) (_ BitVec 64))) (size!41544 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84991)

(assert (=> b!1285221 (= res!853877 (and (= (size!41543 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41544 _keys!1741) (size!41543 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!52541 () Bool)

(declare-fun mapRes!52541 () Bool)

(declare-fun tp!100163 () Bool)

(declare-fun e!734153 () Bool)

(assert (=> mapNonEmpty!52541 (= mapRes!52541 (and tp!100163 e!734153))))

(declare-fun mapValue!52541 () ValueCell!16096)

(declare-fun mapKey!52541 () (_ BitVec 32))

(declare-fun mapRest!52541 () (Array (_ BitVec 32) ValueCell!16096))

(assert (=> mapNonEmpty!52541 (= (arr!40992 _values!1445) (store mapRest!52541 mapKey!52541 mapValue!52541))))

(declare-fun b!1285222 () Bool)

(declare-fun e!734152 () Bool)

(declare-fun e!734154 () Bool)

(assert (=> b!1285222 (= e!734152 (and e!734154 mapRes!52541))))

(declare-fun condMapEmpty!52541 () Bool)

(declare-fun mapDefault!52541 () ValueCell!16096)

