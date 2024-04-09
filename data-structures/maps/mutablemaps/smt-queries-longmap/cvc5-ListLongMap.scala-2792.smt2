; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40648 () Bool)

(assert start!40648)

(declare-fun b_free!10651 () Bool)

(declare-fun b_next!10651 () Bool)

(assert (=> start!40648 (= b_free!10651 (not b_next!10651))))

(declare-fun tp!37772 () Bool)

(declare-fun b_and!18677 () Bool)

(assert (=> start!40648 (= tp!37772 b_and!18677)))

(declare-fun b!448622 () Bool)

(declare-fun e!263171 () Bool)

(assert (=> b!448622 (= e!263171 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!27745 0))(
  ( (array!27746 (arr!13315 (Array (_ BitVec 32) (_ BitVec 64))) (size!13667 (_ BitVec 32))) )
))
(declare-fun lt!204204 () array!27745)

(declare-datatypes ((V!17091 0))(
  ( (V!17092 (val!6039 Int)) )
))
(declare-fun minValue!515 () V!17091)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!17091)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun v!412 () V!17091)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((tuple2!7858 0))(
  ( (tuple2!7859 (_1!3939 (_ BitVec 64)) (_2!3939 V!17091)) )
))
(declare-datatypes ((List!7969 0))(
  ( (Nil!7966) (Cons!7965 (h!8821 tuple2!7858) (t!13739 List!7969)) )
))
(declare-datatypes ((ListLongMap!6785 0))(
  ( (ListLongMap!6786 (toList!3408 List!7969)) )
))
(declare-fun lt!204203 () ListLongMap!6785)

(declare-datatypes ((ValueCell!5651 0))(
  ( (ValueCellFull!5651 (v!8290 V!17091)) (EmptyCell!5651) )
))
(declare-datatypes ((array!27747 0))(
  ( (array!27748 (arr!13316 (Array (_ BitVec 32) ValueCell!5651)) (size!13668 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27747)

(declare-fun getCurrentListMapNoExtraKeys!1588 (array!27745 array!27747 (_ BitVec 32) (_ BitVec 32) V!17091 V!17091 (_ BitVec 32) Int) ListLongMap!6785)

(assert (=> b!448622 (= lt!204203 (getCurrentListMapNoExtraKeys!1588 lt!204204 (array!27748 (store (arr!13316 _values!549) i!563 (ValueCellFull!5651 v!412)) (size!13668 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!204205 () ListLongMap!6785)

(declare-fun _keys!709 () array!27745)

(assert (=> b!448622 (= lt!204205 (getCurrentListMapNoExtraKeys!1588 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!448623 () Bool)

(declare-fun res!266791 () Bool)

(declare-fun e!263173 () Bool)

(assert (=> b!448623 (=> (not res!266791) (not e!263173))))

(assert (=> b!448623 (= res!266791 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13667 _keys!709))))))

(declare-fun b!448624 () Bool)

(declare-fun e!263175 () Bool)

(declare-fun tp_is_empty!11989 () Bool)

(assert (=> b!448624 (= e!263175 tp_is_empty!11989)))

(declare-fun b!448625 () Bool)

(declare-fun res!266796 () Bool)

(assert (=> b!448625 (=> (not res!266796) (not e!263173))))

(assert (=> b!448625 (= res!266796 (and (= (size!13668 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13667 _keys!709) (size!13668 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!19617 () Bool)

(declare-fun mapRes!19617 () Bool)

(declare-fun tp!37773 () Bool)

(assert (=> mapNonEmpty!19617 (= mapRes!19617 (and tp!37773 e!263175))))

(declare-fun mapRest!19617 () (Array (_ BitVec 32) ValueCell!5651))

(declare-fun mapValue!19617 () ValueCell!5651)

(declare-fun mapKey!19617 () (_ BitVec 32))

(assert (=> mapNonEmpty!19617 (= (arr!13316 _values!549) (store mapRest!19617 mapKey!19617 mapValue!19617))))

(declare-fun b!448626 () Bool)

(declare-fun e!263170 () Bool)

(declare-fun e!263174 () Bool)

(assert (=> b!448626 (= e!263170 (and e!263174 mapRes!19617))))

(declare-fun condMapEmpty!19617 () Bool)

(declare-fun mapDefault!19617 () ValueCell!5651)

