; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108478 () Bool)

(assert start!108478)

(declare-fun b_free!27989 () Bool)

(declare-fun b_next!27989 () Bool)

(assert (=> start!108478 (= b_free!27989 (not b_next!27989))))

(declare-fun tp!99078 () Bool)

(declare-fun b_and!46059 () Bool)

(assert (=> start!108478 (= tp!99078 b_and!46059)))

(declare-fun b!1279783 () Bool)

(declare-fun e!731256 () Bool)

(declare-fun tp_is_empty!33629 () Bool)

(assert (=> b!1279783 (= e!731256 tp_is_empty!33629)))

(declare-fun res!850207 () Bool)

(declare-fun e!731259 () Bool)

(assert (=> start!108478 (=> (not res!850207) (not e!731259))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108478 (= res!850207 (validMask!0 mask!2175))))

(assert (=> start!108478 e!731259))

(assert (=> start!108478 tp_is_empty!33629))

(assert (=> start!108478 true))

(declare-datatypes ((V!49941 0))(
  ( (V!49942 (val!16889 Int)) )
))
(declare-datatypes ((ValueCell!15916 0))(
  ( (ValueCellFull!15916 (v!19487 V!49941)) (EmptyCell!15916) )
))
(declare-datatypes ((array!84291 0))(
  ( (array!84292 (arr!40645 (Array (_ BitVec 32) ValueCell!15916)) (size!41196 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84291)

(declare-fun e!731260 () Bool)

(declare-fun array_inv!30835 (array!84291) Bool)

(assert (=> start!108478 (and (array_inv!30835 _values!1445) e!731260)))

(declare-datatypes ((array!84293 0))(
  ( (array!84294 (arr!40646 (Array (_ BitVec 32) (_ BitVec 64))) (size!41197 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84293)

(declare-fun array_inv!30836 (array!84293) Bool)

(assert (=> start!108478 (array_inv!30836 _keys!1741)))

(assert (=> start!108478 tp!99078))

(declare-fun mapIsEmpty!51995 () Bool)

(declare-fun mapRes!51995 () Bool)

(assert (=> mapIsEmpty!51995 mapRes!51995))

(declare-fun b!1279784 () Bool)

(declare-fun e!731257 () Bool)

(assert (=> b!1279784 (= e!731257 tp_is_empty!33629)))

(declare-fun mapNonEmpty!51995 () Bool)

(declare-fun tp!99077 () Bool)

(assert (=> mapNonEmpty!51995 (= mapRes!51995 (and tp!99077 e!731257))))

(declare-fun mapRest!51995 () (Array (_ BitVec 32) ValueCell!15916))

(declare-fun mapValue!51995 () ValueCell!15916)

(declare-fun mapKey!51995 () (_ BitVec 32))

(assert (=> mapNonEmpty!51995 (= (arr!40645 _values!1445) (store mapRest!51995 mapKey!51995 mapValue!51995))))

(declare-fun b!1279785 () Bool)

(assert (=> b!1279785 (= e!731260 (and e!731256 mapRes!51995))))

(declare-fun condMapEmpty!51995 () Bool)

(declare-fun mapDefault!51995 () ValueCell!15916)

