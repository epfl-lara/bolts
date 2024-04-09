; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105944 () Bool)

(assert start!105944)

(declare-fun b_free!27449 () Bool)

(declare-fun b_next!27449 () Bool)

(assert (=> start!105944 (= b_free!27449 (not b_next!27449))))

(declare-fun tp!95880 () Bool)

(declare-fun b_and!45367 () Bool)

(assert (=> start!105944 (= tp!95880 b_and!45367)))

(declare-fun res!840608 () Bool)

(declare-fun e!717938 () Bool)

(assert (=> start!105944 (=> (not res!840608) (not e!717938))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105944 (= res!840608 (validMask!0 mask!1466))))

(assert (=> start!105944 e!717938))

(assert (=> start!105944 true))

(assert (=> start!105944 tp!95880))

(declare-fun tp_is_empty!32351 () Bool)

(assert (=> start!105944 tp_is_empty!32351))

(declare-datatypes ((array!82301 0))(
  ( (array!82302 (arr!39699 (Array (_ BitVec 32) (_ BitVec 64))) (size!40236 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82301)

(declare-fun array_inv!30173 (array!82301) Bool)

(assert (=> start!105944 (array_inv!30173 _keys!1118)))

(declare-datatypes ((V!48499 0))(
  ( (V!48500 (val!16238 Int)) )
))
(declare-datatypes ((ValueCell!15412 0))(
  ( (ValueCellFull!15412 (v!18942 V!48499)) (EmptyCell!15412) )
))
(declare-datatypes ((array!82303 0))(
  ( (array!82304 (arr!39700 (Array (_ BitVec 32) ValueCell!15412)) (size!40237 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82303)

(declare-fun e!717937 () Bool)

(declare-fun array_inv!30174 (array!82303) Bool)

(assert (=> start!105944 (and (array_inv!30174 _values!914) e!717937)))

(declare-fun b!1261364 () Bool)

(declare-fun e!717940 () Bool)

(assert (=> b!1261364 (= e!717940 tp_is_empty!32351)))

(declare-fun mapNonEmpty!50329 () Bool)

(declare-fun mapRes!50329 () Bool)

(declare-fun tp!95879 () Bool)

(declare-fun e!717939 () Bool)

(assert (=> mapNonEmpty!50329 (= mapRes!50329 (and tp!95879 e!717939))))

(declare-fun mapRest!50329 () (Array (_ BitVec 32) ValueCell!15412))

(declare-fun mapKey!50329 () (_ BitVec 32))

(declare-fun mapValue!50329 () ValueCell!15412)

(assert (=> mapNonEmpty!50329 (= (arr!39700 _values!914) (store mapRest!50329 mapKey!50329 mapValue!50329))))

(declare-fun b!1261365 () Bool)

(assert (=> b!1261365 (= e!717939 tp_is_empty!32351)))

(declare-fun mapIsEmpty!50329 () Bool)

(assert (=> mapIsEmpty!50329 mapRes!50329))

(declare-fun b!1261366 () Bool)

(assert (=> b!1261366 (= e!717937 (and e!717940 mapRes!50329))))

(declare-fun condMapEmpty!50329 () Bool)

(declare-fun mapDefault!50329 () ValueCell!15412)

