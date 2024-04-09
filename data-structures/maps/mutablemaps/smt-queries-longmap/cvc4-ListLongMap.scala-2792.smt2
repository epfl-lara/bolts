; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40652 () Bool)

(assert start!40652)

(declare-fun b_free!10655 () Bool)

(declare-fun b_next!10655 () Bool)

(assert (=> start!40652 (= b_free!10655 (not b_next!10655))))

(declare-fun tp!37784 () Bool)

(declare-fun b_and!18681 () Bool)

(assert (=> start!40652 (= tp!37784 b_and!18681)))

(declare-fun b!448712 () Bool)

(declare-fun e!263207 () Bool)

(assert (=> b!448712 (= e!263207 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((V!17095 0))(
  ( (V!17096 (val!6041 Int)) )
))
(declare-fun minValue!515 () V!17095)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5653 0))(
  ( (ValueCellFull!5653 (v!8292 V!17095)) (EmptyCell!5653) )
))
(declare-datatypes ((array!27753 0))(
  ( (array!27754 (arr!13319 (Array (_ BitVec 32) ValueCell!5653)) (size!13671 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27753)

(declare-fun zeroValue!515 () V!17095)

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!27755 0))(
  ( (array!27756 (arr!13320 (Array (_ BitVec 32) (_ BitVec 64))) (size!13672 (_ BitVec 32))) )
))
(declare-fun lt!204222 () array!27755)

(declare-datatypes ((tuple2!7862 0))(
  ( (tuple2!7863 (_1!3941 (_ BitVec 64)) (_2!3941 V!17095)) )
))
(declare-datatypes ((List!7972 0))(
  ( (Nil!7969) (Cons!7968 (h!8824 tuple2!7862) (t!13742 List!7972)) )
))
(declare-datatypes ((ListLongMap!6789 0))(
  ( (ListLongMap!6790 (toList!3410 List!7972)) )
))
(declare-fun lt!204221 () ListLongMap!6789)

(declare-fun v!412 () V!17095)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1590 (array!27755 array!27753 (_ BitVec 32) (_ BitVec 32) V!17095 V!17095 (_ BitVec 32) Int) ListLongMap!6789)

(assert (=> b!448712 (= lt!204221 (getCurrentListMapNoExtraKeys!1590 lt!204222 (array!27754 (store (arr!13319 _values!549) i!563 (ValueCellFull!5653 v!412)) (size!13671 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!204223 () ListLongMap!6789)

(declare-fun _keys!709 () array!27755)

(assert (=> b!448712 (= lt!204223 (getCurrentListMapNoExtraKeys!1590 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!448713 () Bool)

(declare-fun res!266869 () Bool)

(declare-fun e!263208 () Bool)

(assert (=> b!448713 (=> (not res!266869) (not e!263208))))

(declare-datatypes ((List!7973 0))(
  ( (Nil!7970) (Cons!7969 (h!8825 (_ BitVec 64)) (t!13743 List!7973)) )
))
(declare-fun arrayNoDuplicates!0 (array!27755 (_ BitVec 32) List!7973) Bool)

(assert (=> b!448713 (= res!266869 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7970))))

(declare-fun mapNonEmpty!19623 () Bool)

(declare-fun mapRes!19623 () Bool)

(declare-fun tp!37785 () Bool)

(declare-fun e!263206 () Bool)

(assert (=> mapNonEmpty!19623 (= mapRes!19623 (and tp!37785 e!263206))))

(declare-fun mapRest!19623 () (Array (_ BitVec 32) ValueCell!5653))

(declare-fun mapKey!19623 () (_ BitVec 32))

(declare-fun mapValue!19623 () ValueCell!5653)

(assert (=> mapNonEmpty!19623 (= (arr!13319 _values!549) (store mapRest!19623 mapKey!19623 mapValue!19623))))

(declare-fun b!448714 () Bool)

(declare-fun res!266873 () Bool)

(assert (=> b!448714 (=> (not res!266873) (not e!263208))))

(assert (=> b!448714 (= res!266873 (or (= (select (arr!13320 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13320 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!448715 () Bool)

(declare-fun res!266874 () Bool)

(assert (=> b!448715 (=> (not res!266874) (not e!263208))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!448715 (= res!266874 (validMask!0 mask!1025))))

(declare-fun b!448716 () Bool)

(declare-fun e!263211 () Bool)

(declare-fun e!263210 () Bool)

(assert (=> b!448716 (= e!263211 (and e!263210 mapRes!19623))))

(declare-fun condMapEmpty!19623 () Bool)

(declare-fun mapDefault!19623 () ValueCell!5653)

