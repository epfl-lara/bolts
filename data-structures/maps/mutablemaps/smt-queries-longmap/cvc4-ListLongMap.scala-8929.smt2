; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108310 () Bool)

(assert start!108310)

(declare-fun res!849280 () Bool)

(declare-fun e!730149 () Bool)

(assert (=> start!108310 (=> (not res!849280) (not e!730149))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108310 (= res!849280 (validMask!0 mask!2175))))

(assert (=> start!108310 e!730149))

(assert (=> start!108310 true))

(declare-datatypes ((V!49757 0))(
  ( (V!49758 (val!16820 Int)) )
))
(declare-datatypes ((ValueCell!15847 0))(
  ( (ValueCellFull!15847 (v!19417 V!49757)) (EmptyCell!15847) )
))
(declare-datatypes ((array!84017 0))(
  ( (array!84018 (arr!40511 (Array (_ BitVec 32) ValueCell!15847)) (size!41062 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84017)

(declare-fun e!730148 () Bool)

(declare-fun array_inv!30749 (array!84017) Bool)

(assert (=> start!108310 (and (array_inv!30749 _values!1445) e!730148)))

(declare-datatypes ((array!84019 0))(
  ( (array!84020 (arr!40512 (Array (_ BitVec 32) (_ BitVec 64))) (size!41063 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84019)

(declare-fun array_inv!30750 (array!84019) Bool)

(assert (=> start!108310 (array_inv!30750 _keys!1741)))

(declare-fun b!1278193 () Bool)

(assert (=> b!1278193 (= e!730149 (and (bvsle #b00000000000000000000000000000000 (size!41063 _keys!1741)) (bvsge (size!41063 _keys!1741) #b01111111111111111111111111111111)))))

(declare-fun b!1278194 () Bool)

(declare-fun res!849282 () Bool)

(assert (=> b!1278194 (=> (not res!849282) (not e!730149))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84019 (_ BitVec 32)) Bool)

(assert (=> b!1278194 (= res!849282 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1278195 () Bool)

(declare-fun e!730151 () Bool)

(declare-fun tp_is_empty!33491 () Bool)

(assert (=> b!1278195 (= e!730151 tp_is_empty!33491)))

(declare-fun b!1278196 () Bool)

(declare-fun e!730150 () Bool)

(assert (=> b!1278196 (= e!730150 tp_is_empty!33491)))

(declare-fun mapNonEmpty!51779 () Bool)

(declare-fun mapRes!51779 () Bool)

(declare-fun tp!98754 () Bool)

(assert (=> mapNonEmpty!51779 (= mapRes!51779 (and tp!98754 e!730150))))

(declare-fun mapRest!51779 () (Array (_ BitVec 32) ValueCell!15847))

(declare-fun mapKey!51779 () (_ BitVec 32))

(declare-fun mapValue!51779 () ValueCell!15847)

(assert (=> mapNonEmpty!51779 (= (arr!40511 _values!1445) (store mapRest!51779 mapKey!51779 mapValue!51779))))

(declare-fun b!1278197 () Bool)

(assert (=> b!1278197 (= e!730148 (and e!730151 mapRes!51779))))

(declare-fun condMapEmpty!51779 () Bool)

(declare-fun mapDefault!51779 () ValueCell!15847)

