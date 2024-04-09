; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105922 () Bool)

(assert start!105922)

(declare-fun b_free!27427 () Bool)

(declare-fun b_next!27427 () Bool)

(assert (=> start!105922 (= b_free!27427 (not b_next!27427))))

(declare-fun tp!95813 () Bool)

(declare-fun b_and!45345 () Bool)

(assert (=> start!105922 (= tp!95813 b_and!45345)))

(declare-fun mapIsEmpty!50296 () Bool)

(declare-fun mapRes!50296 () Bool)

(assert (=> mapIsEmpty!50296 mapRes!50296))

(declare-fun b!1261133 () Bool)

(declare-fun e!717773 () Bool)

(declare-fun e!717774 () Bool)

(assert (=> b!1261133 (= e!717773 (and e!717774 mapRes!50296))))

(declare-fun condMapEmpty!50296 () Bool)

(declare-datatypes ((V!48471 0))(
  ( (V!48472 (val!16227 Int)) )
))
(declare-datatypes ((ValueCell!15401 0))(
  ( (ValueCellFull!15401 (v!18931 V!48471)) (EmptyCell!15401) )
))
(declare-datatypes ((array!82261 0))(
  ( (array!82262 (arr!39679 (Array (_ BitVec 32) ValueCell!15401)) (size!40216 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82261)

(declare-fun mapDefault!50296 () ValueCell!15401)

