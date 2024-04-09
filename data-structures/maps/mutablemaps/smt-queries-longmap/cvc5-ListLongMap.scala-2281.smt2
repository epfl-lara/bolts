; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37156 () Bool)

(assert start!37156)

(declare-fun b_free!8275 () Bool)

(declare-fun b_next!8275 () Bool)

(assert (=> start!37156 (= b_free!8275 (not b_next!8275))))

(declare-fun tp!29540 () Bool)

(declare-fun b_and!15535 () Bool)

(assert (=> start!37156 (= tp!29540 b_and!15535)))

(declare-fun b!374427 () Bool)

(declare-fun e!228191 () Bool)

(assert (=> b!374427 (= e!228191 true)))

(declare-datatypes ((V!13003 0))(
  ( (V!13004 (val!4506 Int)) )
))
(declare-datatypes ((tuple2!5968 0))(
  ( (tuple2!5969 (_1!2994 (_ BitVec 64)) (_2!2994 V!13003)) )
))
(declare-fun lt!172794 () tuple2!5968)

(declare-datatypes ((List!5839 0))(
  ( (Nil!5836) (Cons!5835 (h!6691 tuple2!5968) (t!10997 List!5839)) )
))
(declare-datatypes ((ListLongMap!4895 0))(
  ( (ListLongMap!4896 (toList!2463 List!5839)) )
))
(declare-fun lt!172788 () ListLongMap!4895)

(declare-fun lt!172795 () ListLongMap!4895)

(declare-fun lt!172781 () tuple2!5968)

(declare-fun +!804 (ListLongMap!4895 tuple2!5968) ListLongMap!4895)

(assert (=> b!374427 (= (+!804 lt!172788 lt!172794) (+!804 lt!172795 lt!172781))))

(declare-fun v!373 () V!13003)

(declare-fun k!778 () (_ BitVec 64))

(declare-datatypes ((Unit!11511 0))(
  ( (Unit!11512) )
))
(declare-fun lt!172792 () Unit!11511)

(declare-fun lt!172790 () ListLongMap!4895)

(declare-fun minValue!472 () V!13003)

(declare-fun addCommutativeForDiffKeys!233 (ListLongMap!4895 (_ BitVec 64) V!13003 (_ BitVec 64) V!13003) Unit!11511)

(assert (=> b!374427 (= lt!172792 (addCommutativeForDiffKeys!233 lt!172790 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!374428 () Bool)

(declare-fun res!211255 () Bool)

(declare-fun e!228194 () Bool)

(assert (=> b!374428 (=> (not res!211255) (not e!228194))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!21747 0))(
  ( (array!21748 (arr!10339 (Array (_ BitVec 32) (_ BitVec 64))) (size!10691 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21747)

(assert (=> b!374428 (= res!211255 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10691 _keys!658))))))

(declare-fun mapNonEmpty!14949 () Bool)

(declare-fun mapRes!14949 () Bool)

(declare-fun tp!29541 () Bool)

(declare-fun e!228188 () Bool)

(assert (=> mapNonEmpty!14949 (= mapRes!14949 (and tp!29541 e!228188))))

(declare-datatypes ((ValueCell!4118 0))(
  ( (ValueCellFull!4118 (v!6699 V!13003)) (EmptyCell!4118) )
))
(declare-datatypes ((array!21749 0))(
  ( (array!21750 (arr!10340 (Array (_ BitVec 32) ValueCell!4118)) (size!10692 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21749)

(declare-fun mapKey!14949 () (_ BitVec 32))

(declare-fun mapRest!14949 () (Array (_ BitVec 32) ValueCell!4118))

(declare-fun mapValue!14949 () ValueCell!4118)

(assert (=> mapNonEmpty!14949 (= (arr!10340 _values!506) (store mapRest!14949 mapKey!14949 mapValue!14949))))

(declare-fun mapIsEmpty!14949 () Bool)

(assert (=> mapIsEmpty!14949 mapRes!14949))

(declare-fun b!374429 () Bool)

(declare-fun e!228189 () Bool)

(declare-fun e!228193 () Bool)

(assert (=> b!374429 (= e!228189 (and e!228193 mapRes!14949))))

(declare-fun condMapEmpty!14949 () Bool)

(declare-fun mapDefault!14949 () ValueCell!4118)

