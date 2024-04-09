; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37630 () Bool)

(assert start!37630)

(declare-fun b_free!8749 () Bool)

(declare-fun b_next!8749 () Bool)

(assert (=> start!37630 (= b_free!8749 (not b_next!8749))))

(declare-fun tp!30963 () Bool)

(declare-fun b_and!16009 () Bool)

(assert (=> start!37630 (= tp!30963 b_and!16009)))

(declare-fun b!384820 () Bool)

(declare-fun res!219511 () Bool)

(declare-fun e!233586 () Bool)

(assert (=> b!384820 (=> (not res!219511) (not e!233586))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!22679 0))(
  ( (array!22680 (arr!10805 (Array (_ BitVec 32) (_ BitVec 64))) (size!11157 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22679)

(assert (=> b!384820 (= res!219511 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11157 _keys!658))))))

(declare-fun b!384821 () Bool)

(declare-fun e!233591 () Bool)

(assert (=> b!384821 (= e!233586 e!233591)))

(declare-fun res!219507 () Bool)

(assert (=> b!384821 (=> (not res!219507) (not e!233591))))

(declare-fun lt!181301 () array!22679)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22679 (_ BitVec 32)) Bool)

(assert (=> b!384821 (= res!219507 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!181301 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!384821 (= lt!181301 (array!22680 (store (arr!10805 _keys!658) i!548 k!778) (size!11157 _keys!658)))))

(declare-fun b!384822 () Bool)

(declare-fun e!233588 () Bool)

(assert (=> b!384822 (= e!233588 true)))

(declare-datatypes ((V!13635 0))(
  ( (V!13636 (val!4743 Int)) )
))
(declare-datatypes ((tuple2!6340 0))(
  ( (tuple2!6341 (_1!3180 (_ BitVec 64)) (_2!3180 V!13635)) )
))
(declare-datatypes ((List!6206 0))(
  ( (Nil!6203) (Cons!6202 (h!7058 tuple2!6340) (t!11364 List!6206)) )
))
(declare-datatypes ((ListLongMap!5267 0))(
  ( (ListLongMap!5268 (toList!2649 List!6206)) )
))
(declare-fun lt!181303 () ListLongMap!5267)

(declare-fun lt!181305 () ListLongMap!5267)

(declare-fun lt!181306 () tuple2!6340)

(declare-fun +!985 (ListLongMap!5267 tuple2!6340) ListLongMap!5267)

(assert (=> b!384822 (= lt!181303 (+!985 lt!181305 lt!181306))))

(declare-fun lt!181302 () ListLongMap!5267)

(declare-fun lt!181300 () ListLongMap!5267)

(assert (=> b!384822 (= lt!181302 lt!181300)))

(declare-fun res!219512 () Bool)

(assert (=> start!37630 (=> (not res!219512) (not e!233586))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37630 (= res!219512 (validMask!0 mask!970))))

(assert (=> start!37630 e!233586))

(declare-datatypes ((ValueCell!4355 0))(
  ( (ValueCellFull!4355 (v!6936 V!13635)) (EmptyCell!4355) )
))
(declare-datatypes ((array!22681 0))(
  ( (array!22682 (arr!10806 (Array (_ BitVec 32) ValueCell!4355)) (size!11158 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22681)

(declare-fun e!233592 () Bool)

(declare-fun array_inv!7936 (array!22681) Bool)

(assert (=> start!37630 (and (array_inv!7936 _values!506) e!233592)))

(assert (=> start!37630 tp!30963))

(assert (=> start!37630 true))

(declare-fun tp_is_empty!9397 () Bool)

(assert (=> start!37630 tp_is_empty!9397))

(declare-fun array_inv!7937 (array!22679) Bool)

(assert (=> start!37630 (array_inv!7937 _keys!658)))

(declare-fun b!384823 () Bool)

(declare-fun res!219505 () Bool)

(assert (=> b!384823 (=> (not res!219505) (not e!233586))))

(assert (=> b!384823 (= res!219505 (or (= (select (arr!10805 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10805 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!384824 () Bool)

(declare-fun res!219506 () Bool)

(assert (=> b!384824 (=> (not res!219506) (not e!233586))))

(declare-datatypes ((List!6207 0))(
  ( (Nil!6204) (Cons!6203 (h!7059 (_ BitVec 64)) (t!11365 List!6207)) )
))
(declare-fun arrayNoDuplicates!0 (array!22679 (_ BitVec 32) List!6207) Bool)

(assert (=> b!384824 (= res!219506 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6204))))

(declare-fun b!384825 () Bool)

(declare-fun res!219509 () Bool)

(assert (=> b!384825 (=> (not res!219509) (not e!233586))))

(assert (=> b!384825 (= res!219509 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!384826 () Bool)

(assert (=> b!384826 (= e!233591 (not e!233588))))

(declare-fun res!219513 () Bool)

(assert (=> b!384826 (=> res!219513 e!233588)))

(declare-fun lt!181309 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!384826 (= res!219513 (or (and (not lt!181309) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!181309) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!181309)))))

(assert (=> b!384826 (= lt!181309 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13635)

(declare-fun minValue!472 () V!13635)

(declare-fun getCurrentListMap!2065 (array!22679 array!22681 (_ BitVec 32) (_ BitVec 32) V!13635 V!13635 (_ BitVec 32) Int) ListLongMap!5267)

(assert (=> b!384826 (= lt!181305 (getCurrentListMap!2065 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181299 () array!22681)

(assert (=> b!384826 (= lt!181302 (getCurrentListMap!2065 lt!181301 lt!181299 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181307 () ListLongMap!5267)

(assert (=> b!384826 (and (= lt!181300 lt!181307) (= lt!181307 lt!181300))))

(declare-fun lt!181308 () ListLongMap!5267)

(assert (=> b!384826 (= lt!181307 (+!985 lt!181308 lt!181306))))

(declare-fun v!373 () V!13635)

(assert (=> b!384826 (= lt!181306 (tuple2!6341 k!778 v!373))))

(declare-datatypes ((Unit!11859 0))(
  ( (Unit!11860) )
))
(declare-fun lt!181304 () Unit!11859)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!216 (array!22679 array!22681 (_ BitVec 32) (_ BitVec 32) V!13635 V!13635 (_ BitVec 32) (_ BitVec 64) V!13635 (_ BitVec 32) Int) Unit!11859)

(assert (=> b!384826 (= lt!181304 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!216 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!883 (array!22679 array!22681 (_ BitVec 32) (_ BitVec 32) V!13635 V!13635 (_ BitVec 32) Int) ListLongMap!5267)

(assert (=> b!384826 (= lt!181300 (getCurrentListMapNoExtraKeys!883 lt!181301 lt!181299 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!384826 (= lt!181299 (array!22682 (store (arr!10806 _values!506) i!548 (ValueCellFull!4355 v!373)) (size!11158 _values!506)))))

(assert (=> b!384826 (= lt!181308 (getCurrentListMapNoExtraKeys!883 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!384827 () Bool)

(declare-fun res!219514 () Bool)

(assert (=> b!384827 (=> (not res!219514) (not e!233591))))

(assert (=> b!384827 (= res!219514 (arrayNoDuplicates!0 lt!181301 #b00000000000000000000000000000000 Nil!6204))))

(declare-fun b!384828 () Bool)

(declare-fun e!233590 () Bool)

(declare-fun mapRes!15660 () Bool)

(assert (=> b!384828 (= e!233592 (and e!233590 mapRes!15660))))

(declare-fun condMapEmpty!15660 () Bool)

(declare-fun mapDefault!15660 () ValueCell!4355)

