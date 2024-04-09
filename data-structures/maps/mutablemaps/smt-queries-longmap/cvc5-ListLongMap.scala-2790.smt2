; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40636 () Bool)

(assert start!40636)

(declare-fun b_free!10639 () Bool)

(declare-fun b_next!10639 () Bool)

(assert (=> start!40636 (= b_free!10639 (not b_next!10639))))

(declare-fun tp!37737 () Bool)

(declare-fun b_and!18665 () Bool)

(assert (=> start!40636 (= tp!37737 b_and!18665)))

(declare-fun b!448352 () Bool)

(declare-fun res!266576 () Bool)

(declare-fun e!263064 () Bool)

(assert (=> b!448352 (=> (not res!266576) (not e!263064))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!448352 (= res!266576 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!19599 () Bool)

(declare-fun mapRes!19599 () Bool)

(declare-fun tp!37736 () Bool)

(declare-fun e!263065 () Bool)

(assert (=> mapNonEmpty!19599 (= mapRes!19599 (and tp!37736 e!263065))))

(declare-datatypes ((V!17075 0))(
  ( (V!17076 (val!6033 Int)) )
))
(declare-datatypes ((ValueCell!5645 0))(
  ( (ValueCellFull!5645 (v!8284 V!17075)) (EmptyCell!5645) )
))
(declare-fun mapValue!19599 () ValueCell!5645)

(declare-fun mapKey!19599 () (_ BitVec 32))

(declare-datatypes ((array!27721 0))(
  ( (array!27722 (arr!13303 (Array (_ BitVec 32) ValueCell!5645)) (size!13655 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27721)

(declare-fun mapRest!19599 () (Array (_ BitVec 32) ValueCell!5645))

(assert (=> mapNonEmpty!19599 (= (arr!13303 _values!549) (store mapRest!19599 mapKey!19599 mapValue!19599))))

(declare-fun b!448353 () Bool)

(declare-fun res!266580 () Bool)

(assert (=> b!448353 (=> (not res!266580) (not e!263064))))

(declare-datatypes ((array!27723 0))(
  ( (array!27724 (arr!13304 (Array (_ BitVec 32) (_ BitVec 64))) (size!13656 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27723)

(declare-datatypes ((List!7958 0))(
  ( (Nil!7955) (Cons!7954 (h!8810 (_ BitVec 64)) (t!13728 List!7958)) )
))
(declare-fun arrayNoDuplicates!0 (array!27723 (_ BitVec 32) List!7958) Bool)

(assert (=> b!448353 (= res!266580 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7955))))

(declare-fun b!448354 () Bool)

(declare-fun tp_is_empty!11977 () Bool)

(assert (=> b!448354 (= e!263065 tp_is_empty!11977)))

(declare-fun b!448355 () Bool)

(declare-fun res!266586 () Bool)

(assert (=> b!448355 (=> (not res!266586) (not e!263064))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27723 (_ BitVec 32)) Bool)

(assert (=> b!448355 (= res!266586 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!448356 () Bool)

(declare-fun e!263063 () Bool)

(declare-fun e!263066 () Bool)

(assert (=> b!448356 (= e!263063 (and e!263066 mapRes!19599))))

(declare-fun condMapEmpty!19599 () Bool)

(declare-fun mapDefault!19599 () ValueCell!5645)

