; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105154 () Bool)

(assert start!105154)

(declare-fun b_free!26851 () Bool)

(declare-fun b_next!26851 () Bool)

(assert (=> start!105154 (= b_free!26851 (not b_next!26851))))

(declare-fun tp!94056 () Bool)

(declare-fun b_and!44665 () Bool)

(assert (=> start!105154 (= tp!94056 b_and!44665)))

(declare-fun b!1252582 () Bool)

(declare-fun e!711499 () Bool)

(assert (=> b!1252582 (= e!711499 true)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((V!47703 0))(
  ( (V!47704 (val!15939 Int)) )
))
(declare-datatypes ((tuple2!20704 0))(
  ( (tuple2!20705 (_1!10362 (_ BitVec 64)) (_2!10362 V!47703)) )
))
(declare-datatypes ((List!27953 0))(
  ( (Nil!27950) (Cons!27949 (h!29158 tuple2!20704) (t!41439 List!27953)) )
))
(declare-datatypes ((ListLongMap!18589 0))(
  ( (ListLongMap!18590 (toList!9310 List!27953)) )
))
(declare-fun lt!565388 () ListLongMap!18589)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47703)

(declare-datatypes ((array!81147 0))(
  ( (array!81148 (arr!39132 (Array (_ BitVec 32) (_ BitVec 64))) (size!39669 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81147)

(declare-datatypes ((ValueCell!15113 0))(
  ( (ValueCellFull!15113 (v!18637 V!47703)) (EmptyCell!15113) )
))
(declare-datatypes ((array!81149 0))(
  ( (array!81150 (arr!39133 (Array (_ BitVec 32) ValueCell!15113)) (size!39670 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81149)

(declare-fun minValueBefore!43 () V!47703)

(declare-fun getCurrentListMap!4505 (array!81147 array!81149 (_ BitVec 32) (_ BitVec 32) V!47703 V!47703 (_ BitVec 32) Int) ListLongMap!18589)

(assert (=> b!1252582 (= lt!565388 (getCurrentListMap!4505 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1252583 () Bool)

(declare-fun e!711496 () Bool)

(declare-fun tp_is_empty!31753 () Bool)

(assert (=> b!1252583 (= e!711496 tp_is_empty!31753)))

(declare-fun b!1252584 () Bool)

(declare-fun e!711494 () Bool)

(declare-fun e!711497 () Bool)

(declare-fun mapRes!49402 () Bool)

(assert (=> b!1252584 (= e!711494 (and e!711497 mapRes!49402))))

(declare-fun condMapEmpty!49402 () Bool)

(declare-fun mapDefault!49402 () ValueCell!15113)

