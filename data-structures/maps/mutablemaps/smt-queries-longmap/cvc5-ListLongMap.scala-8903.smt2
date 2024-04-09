; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108104 () Bool)

(assert start!108104)

(declare-fun b_free!27781 () Bool)

(declare-fun b_next!27781 () Bool)

(assert (=> start!108104 (= b_free!27781 (not b_next!27781))))

(declare-fun tp!98297 () Bool)

(declare-fun b_and!45847 () Bool)

(assert (=> start!108104 (= tp!98297 b_and!45847)))

(declare-fun b!1276173 () Bool)

(declare-fun res!848211 () Bool)

(declare-fun e!728737 () Bool)

(assert (=> b!1276173 (=> (not res!848211) (not e!728737))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-datatypes ((V!49545 0))(
  ( (V!49546 (val!16740 Int)) )
))
(declare-datatypes ((ValueCell!15767 0))(
  ( (ValueCellFull!15767 (v!19335 V!49545)) (EmptyCell!15767) )
))
(declare-datatypes ((array!83713 0))(
  ( (array!83714 (arr!40363 (Array (_ BitVec 32) ValueCell!15767)) (size!40914 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83713)

(declare-datatypes ((array!83715 0))(
  ( (array!83716 (arr!40364 (Array (_ BitVec 32) (_ BitVec 64))) (size!40915 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83715)

(assert (=> b!1276173 (= res!848211 (and (= (size!40914 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40915 _keys!1427) (size!40914 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun res!848208 () Bool)

(assert (=> start!108104 (=> (not res!848208) (not e!728737))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108104 (= res!848208 (validMask!0 mask!1805))))

(assert (=> start!108104 e!728737))

(assert (=> start!108104 true))

(assert (=> start!108104 tp!98297))

(declare-fun tp_is_empty!33331 () Bool)

(assert (=> start!108104 tp_is_empty!33331))

(declare-fun e!728740 () Bool)

(declare-fun array_inv!30637 (array!83713) Bool)

(assert (=> start!108104 (and (array_inv!30637 _values!1187) e!728740)))

(declare-fun array_inv!30638 (array!83715) Bool)

(assert (=> start!108104 (array_inv!30638 _keys!1427)))

(declare-fun mapNonEmpty!51527 () Bool)

(declare-fun mapRes!51527 () Bool)

(declare-fun tp!98298 () Bool)

(declare-fun e!728739 () Bool)

(assert (=> mapNonEmpty!51527 (= mapRes!51527 (and tp!98298 e!728739))))

(declare-fun mapRest!51527 () (Array (_ BitVec 32) ValueCell!15767))

(declare-fun mapValue!51527 () ValueCell!15767)

(declare-fun mapKey!51527 () (_ BitVec 32))

(assert (=> mapNonEmpty!51527 (= (arr!40363 _values!1187) (store mapRest!51527 mapKey!51527 mapValue!51527))))

(declare-fun b!1276174 () Bool)

(declare-fun e!728738 () Bool)

(assert (=> b!1276174 (= e!728740 (and e!728738 mapRes!51527))))

(declare-fun condMapEmpty!51527 () Bool)

(declare-fun mapDefault!51527 () ValueCell!15767)

