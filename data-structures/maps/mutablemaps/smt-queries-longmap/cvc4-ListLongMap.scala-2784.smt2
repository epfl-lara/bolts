; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40604 () Bool)

(assert start!40604)

(declare-fun b_free!10607 () Bool)

(declare-fun b_next!10607 () Bool)

(assert (=> start!40604 (= b_free!10607 (not b_next!10607))))

(declare-fun tp!37640 () Bool)

(declare-fun b_and!18633 () Bool)

(assert (=> start!40604 (= tp!37640 b_and!18633)))

(declare-fun b!447632 () Bool)

(declare-fun res!266003 () Bool)

(declare-fun e!262779 () Bool)

(assert (=> b!447632 (=> (not res!266003) (not e!262779))))

(declare-datatypes ((array!27657 0))(
  ( (array!27658 (arr!13271 (Array (_ BitVec 32) (_ BitVec 64))) (size!13623 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27657)

(declare-datatypes ((List!7930 0))(
  ( (Nil!7927) (Cons!7926 (h!8782 (_ BitVec 64)) (t!13700 List!7930)) )
))
(declare-fun arrayNoDuplicates!0 (array!27657 (_ BitVec 32) List!7930) Bool)

(assert (=> b!447632 (= res!266003 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7927))))

(declare-fun b!447633 () Bool)

(declare-fun e!262775 () Bool)

(assert (=> b!447633 (= e!262775 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((V!17031 0))(
  ( (V!17032 (val!6017 Int)) )
))
(declare-fun minValue!515 () V!17031)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!17031)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun lt!204005 () array!27657)

(declare-fun v!412 () V!17031)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!7820 0))(
  ( (tuple2!7821 (_1!3920 (_ BitVec 64)) (_2!3920 V!17031)) )
))
(declare-datatypes ((List!7931 0))(
  ( (Nil!7928) (Cons!7927 (h!8783 tuple2!7820) (t!13701 List!7931)) )
))
(declare-datatypes ((ListLongMap!6747 0))(
  ( (ListLongMap!6748 (toList!3389 List!7931)) )
))
(declare-fun lt!204006 () ListLongMap!6747)

(declare-datatypes ((ValueCell!5629 0))(
  ( (ValueCellFull!5629 (v!8268 V!17031)) (EmptyCell!5629) )
))
(declare-datatypes ((array!27659 0))(
  ( (array!27660 (arr!13272 (Array (_ BitVec 32) ValueCell!5629)) (size!13624 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27659)

(declare-fun getCurrentListMapNoExtraKeys!1569 (array!27657 array!27659 (_ BitVec 32) (_ BitVec 32) V!17031 V!17031 (_ BitVec 32) Int) ListLongMap!6747)

(assert (=> b!447633 (= lt!204006 (getCurrentListMapNoExtraKeys!1569 lt!204005 (array!27660 (store (arr!13272 _values!549) i!563 (ValueCellFull!5629 v!412)) (size!13624 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!204007 () ListLongMap!6747)

(assert (=> b!447633 (= lt!204007 (getCurrentListMapNoExtraKeys!1569 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!447634 () Bool)

(declare-fun res!266000 () Bool)

(assert (=> b!447634 (=> (not res!266000) (not e!262775))))

(assert (=> b!447634 (= res!266000 (arrayNoDuplicates!0 lt!204005 #b00000000000000000000000000000000 Nil!7927))))

(declare-fun mapIsEmpty!19551 () Bool)

(declare-fun mapRes!19551 () Bool)

(assert (=> mapIsEmpty!19551 mapRes!19551))

(declare-fun b!447635 () Bool)

(declare-fun res!266001 () Bool)

(assert (=> b!447635 (=> (not res!266001) (not e!262775))))

(assert (=> b!447635 (= res!266001 (bvsle from!863 i!563))))

(declare-fun b!447636 () Bool)

(declare-fun res!266010 () Bool)

(assert (=> b!447636 (=> (not res!266010) (not e!262779))))

(assert (=> b!447636 (= res!266010 (or (= (select (arr!13271 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13271 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!447637 () Bool)

(declare-fun e!262777 () Bool)

(declare-fun tp_is_empty!11945 () Bool)

(assert (=> b!447637 (= e!262777 tp_is_empty!11945)))

(declare-fun b!447638 () Bool)

(declare-fun e!262776 () Bool)

(assert (=> b!447638 (= e!262776 tp_is_empty!11945)))

(declare-fun b!447639 () Bool)

(declare-fun res!266009 () Bool)

(assert (=> b!447639 (=> (not res!266009) (not e!262779))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27657 (_ BitVec 32)) Bool)

(assert (=> b!447639 (= res!266009 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!266007 () Bool)

(assert (=> start!40604 (=> (not res!266007) (not e!262779))))

(assert (=> start!40604 (= res!266007 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13623 _keys!709))))))

(assert (=> start!40604 e!262779))

(assert (=> start!40604 tp_is_empty!11945))

(assert (=> start!40604 tp!37640))

(assert (=> start!40604 true))

(declare-fun e!262778 () Bool)

(declare-fun array_inv!9612 (array!27659) Bool)

(assert (=> start!40604 (and (array_inv!9612 _values!549) e!262778)))

(declare-fun array_inv!9613 (array!27657) Bool)

(assert (=> start!40604 (array_inv!9613 _keys!709)))

(declare-fun b!447640 () Bool)

(declare-fun res!266006 () Bool)

(assert (=> b!447640 (=> (not res!266006) (not e!262779))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27657 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!447640 (= res!266006 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!19551 () Bool)

(declare-fun tp!37641 () Bool)

(assert (=> mapNonEmpty!19551 (= mapRes!19551 (and tp!37641 e!262777))))

(declare-fun mapValue!19551 () ValueCell!5629)

(declare-fun mapRest!19551 () (Array (_ BitVec 32) ValueCell!5629))

(declare-fun mapKey!19551 () (_ BitVec 32))

(assert (=> mapNonEmpty!19551 (= (arr!13272 _values!549) (store mapRest!19551 mapKey!19551 mapValue!19551))))

(declare-fun b!447641 () Bool)

(declare-fun res!266005 () Bool)

(assert (=> b!447641 (=> (not res!266005) (not e!262779))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!447641 (= res!266005 (validMask!0 mask!1025))))

(declare-fun b!447642 () Bool)

(assert (=> b!447642 (= e!262778 (and e!262776 mapRes!19551))))

(declare-fun condMapEmpty!19551 () Bool)

(declare-fun mapDefault!19551 () ValueCell!5629)

