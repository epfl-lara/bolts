; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105928 () Bool)

(assert start!105928)

(declare-fun b_free!27433 () Bool)

(declare-fun b_next!27433 () Bool)

(assert (=> start!105928 (= b_free!27433 (not b_next!27433))))

(declare-fun tp!95832 () Bool)

(declare-fun b_and!45351 () Bool)

(assert (=> start!105928 (= tp!95832 b_and!45351)))

(declare-fun res!840513 () Bool)

(declare-fun e!717818 () Bool)

(assert (=> start!105928 (=> (not res!840513) (not e!717818))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105928 (= res!840513 (validMask!0 mask!1466))))

(assert (=> start!105928 e!717818))

(assert (=> start!105928 true))

(assert (=> start!105928 tp!95832))

(declare-fun tp_is_empty!32335 () Bool)

(assert (=> start!105928 tp_is_empty!32335))

(declare-datatypes ((array!82269 0))(
  ( (array!82270 (arr!39683 (Array (_ BitVec 32) (_ BitVec 64))) (size!40220 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82269)

(declare-fun array_inv!30161 (array!82269) Bool)

(assert (=> start!105928 (array_inv!30161 _keys!1118)))

(declare-datatypes ((V!48479 0))(
  ( (V!48480 (val!16230 Int)) )
))
(declare-datatypes ((ValueCell!15404 0))(
  ( (ValueCellFull!15404 (v!18934 V!48479)) (EmptyCell!15404) )
))
(declare-datatypes ((array!82271 0))(
  ( (array!82272 (arr!39684 (Array (_ BitVec 32) ValueCell!15404)) (size!40221 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82271)

(declare-fun e!717816 () Bool)

(declare-fun array_inv!30162 (array!82271) Bool)

(assert (=> start!105928 (and (array_inv!30162 _values!914) e!717816)))

(declare-fun mapNonEmpty!50305 () Bool)

(declare-fun mapRes!50305 () Bool)

(declare-fun tp!95831 () Bool)

(declare-fun e!717820 () Bool)

(assert (=> mapNonEmpty!50305 (= mapRes!50305 (and tp!95831 e!717820))))

(declare-fun mapKey!50305 () (_ BitVec 32))

(declare-fun mapValue!50305 () ValueCell!15404)

(declare-fun mapRest!50305 () (Array (_ BitVec 32) ValueCell!15404))

(assert (=> mapNonEmpty!50305 (= (arr!39684 _values!914) (store mapRest!50305 mapKey!50305 mapValue!50305))))

(declare-fun b!1261196 () Bool)

(declare-fun e!717817 () Bool)

(assert (=> b!1261196 (= e!717816 (and e!717817 mapRes!50305))))

(declare-fun condMapEmpty!50305 () Bool)

(declare-fun mapDefault!50305 () ValueCell!15404)

