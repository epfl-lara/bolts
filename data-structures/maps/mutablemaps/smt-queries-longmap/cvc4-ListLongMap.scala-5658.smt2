; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73764 () Bool)

(assert start!73764)

(declare-fun b_free!14651 () Bool)

(declare-fun b_next!14651 () Bool)

(assert (=> start!73764 (= b_free!14651 (not b_next!14651))))

(declare-fun tp!51458 () Bool)

(declare-fun b_and!24299 () Bool)

(assert (=> start!73764 (= tp!51458 b_and!24299)))

(declare-fun b!864375 () Bool)

(declare-fun e!481562 () Bool)

(declare-fun tp_is_empty!16787 () Bool)

(assert (=> b!864375 (= e!481562 tp_is_empty!16787)))

(declare-fun mapNonEmpty!26780 () Bool)

(declare-fun mapRes!26780 () Bool)

(declare-fun tp!51457 () Bool)

(assert (=> mapNonEmpty!26780 (= mapRes!26780 (and tp!51457 e!481562))))

(declare-datatypes ((V!27429 0))(
  ( (V!27430 (val!8441 Int)) )
))
(declare-datatypes ((ValueCell!7954 0))(
  ( (ValueCellFull!7954 (v!10862 V!27429)) (EmptyCell!7954) )
))
(declare-fun mapRest!26780 () (Array (_ BitVec 32) ValueCell!7954))

(declare-fun mapKey!26780 () (_ BitVec 32))

(declare-fun mapValue!26780 () ValueCell!7954)

(declare-datatypes ((array!49718 0))(
  ( (array!49719 (arr!23886 (Array (_ BitVec 32) ValueCell!7954)) (size!24327 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49718)

(assert (=> mapNonEmpty!26780 (= (arr!23886 _values!688) (store mapRest!26780 mapKey!26780 mapValue!26780))))

(declare-fun res!587463 () Bool)

(declare-fun e!481567 () Bool)

(assert (=> start!73764 (=> (not res!587463) (not e!481567))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!49720 0))(
  ( (array!49721 (arr!23887 (Array (_ BitVec 32) (_ BitVec 64))) (size!24328 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49720)

(assert (=> start!73764 (= res!587463 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24328 _keys!868))))))

(assert (=> start!73764 e!481567))

(assert (=> start!73764 tp_is_empty!16787))

(assert (=> start!73764 true))

(assert (=> start!73764 tp!51458))

(declare-fun array_inv!18868 (array!49720) Bool)

(assert (=> start!73764 (array_inv!18868 _keys!868)))

(declare-fun e!481564 () Bool)

(declare-fun array_inv!18869 (array!49718) Bool)

(assert (=> start!73764 (and (array_inv!18869 _values!688) e!481564)))

(declare-fun b!864376 () Bool)

(declare-fun e!481568 () Bool)

(assert (=> b!864376 (= e!481564 (and e!481568 mapRes!26780))))

(declare-fun condMapEmpty!26780 () Bool)

(declare-fun mapDefault!26780 () ValueCell!7954)

