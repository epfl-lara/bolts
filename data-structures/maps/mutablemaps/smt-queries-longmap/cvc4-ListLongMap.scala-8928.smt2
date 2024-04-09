; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108296 () Bool)

(assert start!108296)

(declare-fun mapIsEmpty!51767 () Bool)

(declare-fun mapRes!51767 () Bool)

(assert (=> mapIsEmpty!51767 mapRes!51767))

(declare-fun b!1278119 () Bool)

(declare-fun res!849248 () Bool)

(declare-fun e!730089 () Bool)

(assert (=> b!1278119 (=> (not res!849248) (not e!730089))))

(declare-datatypes ((array!84003 0))(
  ( (array!84004 (arr!40505 (Array (_ BitVec 32) (_ BitVec 64))) (size!41056 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84003)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84003 (_ BitVec 32)) Bool)

(assert (=> b!1278119 (= res!849248 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1278120 () Bool)

(declare-fun e!730090 () Bool)

(declare-fun tp_is_empty!33485 () Bool)

(assert (=> b!1278120 (= e!730090 tp_is_empty!33485)))

(declare-fun mapNonEmpty!51767 () Bool)

(declare-fun tp!98742 () Bool)

(declare-fun e!730087 () Bool)

(assert (=> mapNonEmpty!51767 (= mapRes!51767 (and tp!98742 e!730087))))

(declare-datatypes ((V!49749 0))(
  ( (V!49750 (val!16817 Int)) )
))
(declare-datatypes ((ValueCell!15844 0))(
  ( (ValueCellFull!15844 (v!19414 V!49749)) (EmptyCell!15844) )
))
(declare-fun mapValue!51767 () ValueCell!15844)

(declare-fun mapRest!51767 () (Array (_ BitVec 32) ValueCell!15844))

(declare-datatypes ((array!84005 0))(
  ( (array!84006 (arr!40506 (Array (_ BitVec 32) ValueCell!15844)) (size!41057 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84005)

(declare-fun mapKey!51767 () (_ BitVec 32))

(assert (=> mapNonEmpty!51767 (= (arr!40506 _values!1445) (store mapRest!51767 mapKey!51767 mapValue!51767))))

(declare-fun res!849249 () Bool)

(assert (=> start!108296 (=> (not res!849249) (not e!730089))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108296 (= res!849249 (validMask!0 mask!2175))))

(assert (=> start!108296 e!730089))

(assert (=> start!108296 true))

(declare-fun e!730091 () Bool)

(declare-fun array_inv!30745 (array!84005) Bool)

(assert (=> start!108296 (and (array_inv!30745 _values!1445) e!730091)))

(declare-fun array_inv!30746 (array!84003) Bool)

(assert (=> start!108296 (array_inv!30746 _keys!1741)))

(declare-fun b!1278121 () Bool)

(declare-fun res!849247 () Bool)

(assert (=> b!1278121 (=> (not res!849247) (not e!730089))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1278121 (= res!849247 (and (= (size!41057 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41056 _keys!1741) (size!41057 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1278122 () Bool)

(assert (=> b!1278122 (= e!730091 (and e!730090 mapRes!51767))))

(declare-fun condMapEmpty!51767 () Bool)

(declare-fun mapDefault!51767 () ValueCell!15844)

