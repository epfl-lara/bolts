; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105808 () Bool)

(assert start!105808)

(declare-fun b_free!27335 () Bool)

(declare-fun b_next!27335 () Bool)

(assert (=> start!105808 (= b_free!27335 (not b_next!27335))))

(declare-fun tp!95535 () Bool)

(declare-fun b_and!45241 () Bool)

(assert (=> start!105808 (= tp!95535 b_and!45241)))

(declare-fun mapIsEmpty!50155 () Bool)

(declare-fun mapRes!50155 () Bool)

(assert (=> mapIsEmpty!50155 mapRes!50155))

(declare-fun mapNonEmpty!50155 () Bool)

(declare-fun tp!95534 () Bool)

(declare-fun e!716815 () Bool)

(assert (=> mapNonEmpty!50155 (= mapRes!50155 (and tp!95534 e!716815))))

(declare-datatypes ((V!48347 0))(
  ( (V!48348 (val!16181 Int)) )
))
(declare-datatypes ((ValueCell!15355 0))(
  ( (ValueCellFull!15355 (v!18884 V!48347)) (EmptyCell!15355) )
))
(declare-fun mapRest!50155 () (Array (_ BitVec 32) ValueCell!15355))

(declare-fun mapValue!50155 () ValueCell!15355)

(declare-datatypes ((array!82089 0))(
  ( (array!82090 (arr!39594 (Array (_ BitVec 32) ValueCell!15355)) (size!40131 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82089)

(declare-fun mapKey!50155 () (_ BitVec 32))

(assert (=> mapNonEmpty!50155 (= (arr!39594 _values!914) (store mapRest!50155 mapKey!50155 mapValue!50155))))

(declare-fun b!1259833 () Bool)

(declare-fun tp_is_empty!32237 () Bool)

(assert (=> b!1259833 (= e!716815 tp_is_empty!32237)))

(declare-fun b!1259834 () Bool)

(declare-fun e!716818 () Bool)

(declare-fun e!716817 () Bool)

(assert (=> b!1259834 (= e!716818 (and e!716817 mapRes!50155))))

(declare-fun condMapEmpty!50155 () Bool)

(declare-fun mapDefault!50155 () ValueCell!15355)

