; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74372 () Bool)

(assert start!74372)

(declare-fun b_free!15107 () Bool)

(declare-fun b_next!15107 () Bool)

(assert (=> start!74372 (= b_free!15107 (not b_next!15107))))

(declare-fun tp!52997 () Bool)

(declare-fun b_and!24901 () Bool)

(assert (=> start!74372 (= tp!52997 b_and!24901)))

(declare-fun b!874790 () Bool)

(declare-fun res!594628 () Bool)

(declare-fun e!487046 () Bool)

(assert (=> b!874790 (=> (not res!594628) (not e!487046))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50814 0))(
  ( (array!50815 (arr!24431 (Array (_ BitVec 32) (_ BitVec 64))) (size!24872 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50814)

(declare-datatypes ((V!28181 0))(
  ( (V!28182 (val!8723 Int)) )
))
(declare-datatypes ((ValueCell!8236 0))(
  ( (ValueCellFull!8236 (v!11148 V!28181)) (EmptyCell!8236) )
))
(declare-datatypes ((array!50816 0))(
  ( (array!50817 (arr!24432 (Array (_ BitVec 32) ValueCell!8236)) (size!24873 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50816)

(assert (=> b!874790 (= res!594628 (and (= (size!24873 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24872 _keys!868) (size!24873 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!874791 () Bool)

(declare-fun res!594631 () Bool)

(assert (=> b!874791 (=> (not res!594631) (not e!487046))))

(declare-datatypes ((List!17417 0))(
  ( (Nil!17414) (Cons!17413 (h!18544 (_ BitVec 64)) (t!24466 List!17417)) )
))
(declare-fun arrayNoDuplicates!0 (array!50814 (_ BitVec 32) List!17417) Bool)

(assert (=> b!874791 (= res!594631 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17414))))

(declare-fun b!874792 () Bool)

(declare-fun e!487045 () Bool)

(declare-fun tp_is_empty!17351 () Bool)

(assert (=> b!874792 (= e!487045 tp_is_empty!17351)))

(declare-fun b!874793 () Bool)

(declare-fun res!594626 () Bool)

(assert (=> b!874793 (=> (not res!594626) (not e!487046))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!874793 (= res!594626 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24872 _keys!868))))))

(declare-fun b!874794 () Bool)

(declare-fun res!594627 () Bool)

(assert (=> b!874794 (=> (not res!594627) (not e!487046))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!874794 (= res!594627 (validKeyInArray!0 k!854))))

(declare-fun b!874795 () Bool)

(declare-fun e!487047 () Bool)

(declare-fun e!487048 () Bool)

(declare-fun mapRes!27635 () Bool)

(assert (=> b!874795 (= e!487047 (and e!487048 mapRes!27635))))

(declare-fun condMapEmpty!27635 () Bool)

(declare-fun mapDefault!27635 () ValueCell!8236)

