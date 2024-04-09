; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108468 () Bool)

(assert start!108468)

(declare-fun b_free!27979 () Bool)

(declare-fun b_next!27979 () Bool)

(assert (=> start!108468 (= b_free!27979 (not b_next!27979))))

(declare-fun tp!99047 () Bool)

(declare-fun b_and!46049 () Bool)

(assert (=> start!108468 (= tp!99047 b_and!46049)))

(declare-fun b!1279663 () Bool)

(declare-fun res!850132 () Bool)

(declare-fun e!731183 () Bool)

(assert (=> b!1279663 (=> (not res!850132) (not e!731183))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84273 0))(
  ( (array!84274 (arr!40636 (Array (_ BitVec 32) (_ BitVec 64))) (size!41187 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84273)

(declare-datatypes ((V!49929 0))(
  ( (V!49930 (val!16884 Int)) )
))
(declare-datatypes ((ValueCell!15911 0))(
  ( (ValueCellFull!15911 (v!19482 V!49929)) (EmptyCell!15911) )
))
(declare-datatypes ((array!84275 0))(
  ( (array!84276 (arr!40637 (Array (_ BitVec 32) ValueCell!15911)) (size!41188 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84275)

(assert (=> b!1279663 (= res!850132 (and (= (size!41188 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41187 _keys!1741) (size!41188 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun res!850133 () Bool)

(assert (=> start!108468 (=> (not res!850133) (not e!731183))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108468 (= res!850133 (validMask!0 mask!2175))))

(assert (=> start!108468 e!731183))

(declare-fun tp_is_empty!33619 () Bool)

(assert (=> start!108468 tp_is_empty!33619))

(assert (=> start!108468 true))

(declare-fun e!731185 () Bool)

(declare-fun array_inv!30829 (array!84275) Bool)

(assert (=> start!108468 (and (array_inv!30829 _values!1445) e!731185)))

(declare-fun array_inv!30830 (array!84273) Bool)

(assert (=> start!108468 (array_inv!30830 _keys!1741)))

(assert (=> start!108468 tp!99047))

(declare-fun b!1279664 () Bool)

(declare-fun e!731184 () Bool)

(assert (=> b!1279664 (= e!731184 tp_is_empty!33619)))

(declare-fun mapIsEmpty!51980 () Bool)

(declare-fun mapRes!51980 () Bool)

(assert (=> mapIsEmpty!51980 mapRes!51980))

(declare-fun b!1279665 () Bool)

(declare-fun res!850136 () Bool)

(assert (=> b!1279665 (=> (not res!850136) (not e!731183))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84273 (_ BitVec 32)) Bool)

(assert (=> b!1279665 (= res!850136 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapNonEmpty!51980 () Bool)

(declare-fun tp!99048 () Bool)

(declare-fun e!731182 () Bool)

(assert (=> mapNonEmpty!51980 (= mapRes!51980 (and tp!99048 e!731182))))

(declare-fun mapRest!51980 () (Array (_ BitVec 32) ValueCell!15911))

(declare-fun mapKey!51980 () (_ BitVec 32))

(declare-fun mapValue!51980 () ValueCell!15911)

(assert (=> mapNonEmpty!51980 (= (arr!40637 _values!1445) (store mapRest!51980 mapKey!51980 mapValue!51980))))

(declare-fun b!1279666 () Bool)

(assert (=> b!1279666 (= e!731182 tp_is_empty!33619)))

(declare-fun b!1279667 () Bool)

(assert (=> b!1279667 (= e!731185 (and e!731184 mapRes!51980))))

(declare-fun condMapEmpty!51980 () Bool)

(declare-fun mapDefault!51980 () ValueCell!15911)

