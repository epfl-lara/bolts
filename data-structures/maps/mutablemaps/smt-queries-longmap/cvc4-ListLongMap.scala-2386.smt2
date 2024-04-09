; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37790 () Bool)

(assert start!37790)

(declare-fun b_free!8885 () Bool)

(declare-fun b_next!8885 () Bool)

(assert (=> start!37790 (= b_free!8885 (not b_next!8885))))

(declare-fun tp!31406 () Bool)

(declare-fun b_and!16145 () Bool)

(assert (=> start!37790 (= tp!31406 b_and!16145)))

(declare-fun b!387767 () Bool)

(declare-fun res!221736 () Bool)

(declare-fun e!235024 () Bool)

(assert (=> b!387767 (=> (not res!221736) (not e!235024))))

(declare-datatypes ((array!22983 0))(
  ( (array!22984 (arr!10957 (Array (_ BitVec 32) (_ BitVec 64))) (size!11309 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22983)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!387767 (= res!221736 (or (= (select (arr!10957 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10957 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!387768 () Bool)

(declare-fun res!221733 () Bool)

(assert (=> b!387768 (=> (not res!221733) (not e!235024))))

(declare-datatypes ((List!6310 0))(
  ( (Nil!6307) (Cons!6306 (h!7162 (_ BitVec 64)) (t!11468 List!6310)) )
))
(declare-fun arrayNoDuplicates!0 (array!22983 (_ BitVec 32) List!6310) Bool)

(assert (=> b!387768 (= res!221733 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6307))))

(declare-fun b!387769 () Bool)

(declare-fun e!235026 () Bool)

(assert (=> b!387769 (= e!235026 false)))

(declare-datatypes ((V!13847 0))(
  ( (V!13848 (val!4823 Int)) )
))
(declare-datatypes ((ValueCell!4435 0))(
  ( (ValueCellFull!4435 (v!7016 V!13847)) (EmptyCell!4435) )
))
(declare-datatypes ((array!22985 0))(
  ( (array!22986 (arr!10958 (Array (_ BitVec 32) ValueCell!4435)) (size!11310 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22985)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13847)

(declare-datatypes ((tuple2!6426 0))(
  ( (tuple2!6427 (_1!3223 (_ BitVec 64)) (_2!3223 V!13847)) )
))
(declare-datatypes ((List!6311 0))(
  ( (Nil!6308) (Cons!6307 (h!7163 tuple2!6426) (t!11469 List!6311)) )
))
(declare-datatypes ((ListLongMap!5353 0))(
  ( (ListLongMap!5354 (toList!2692 List!6311)) )
))
(declare-fun lt!182121 () ListLongMap!5353)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun v!373 () V!13847)

(declare-fun lt!182122 () array!22983)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13847)

(declare-fun getCurrentListMapNoExtraKeys!926 (array!22983 array!22985 (_ BitVec 32) (_ BitVec 32) V!13847 V!13847 (_ BitVec 32) Int) ListLongMap!5353)

(assert (=> b!387769 (= lt!182121 (getCurrentListMapNoExtraKeys!926 lt!182122 (array!22986 (store (arr!10958 _values!506) i!548 (ValueCellFull!4435 v!373)) (size!11310 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!182120 () ListLongMap!5353)

(assert (=> b!387769 (= lt!182120 (getCurrentListMapNoExtraKeys!926 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!387770 () Bool)

(declare-fun res!221737 () Bool)

(assert (=> b!387770 (=> (not res!221737) (not e!235024))))

(assert (=> b!387770 (= res!221737 (and (= (size!11310 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11309 _keys!658) (size!11310 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!15900 () Bool)

(declare-fun mapRes!15900 () Bool)

(declare-fun tp!31407 () Bool)

(declare-fun e!235028 () Bool)

(assert (=> mapNonEmpty!15900 (= mapRes!15900 (and tp!31407 e!235028))))

(declare-fun mapValue!15900 () ValueCell!4435)

(declare-fun mapRest!15900 () (Array (_ BitVec 32) ValueCell!4435))

(declare-fun mapKey!15900 () (_ BitVec 32))

(assert (=> mapNonEmpty!15900 (= (arr!10958 _values!506) (store mapRest!15900 mapKey!15900 mapValue!15900))))

(declare-fun res!221734 () Bool)

(assert (=> start!37790 (=> (not res!221734) (not e!235024))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37790 (= res!221734 (validMask!0 mask!970))))

(assert (=> start!37790 e!235024))

(declare-fun e!235027 () Bool)

(declare-fun array_inv!8032 (array!22985) Bool)

(assert (=> start!37790 (and (array_inv!8032 _values!506) e!235027)))

(assert (=> start!37790 tp!31406))

(assert (=> start!37790 true))

(declare-fun tp_is_empty!9557 () Bool)

(assert (=> start!37790 tp_is_empty!9557))

(declare-fun array_inv!8033 (array!22983) Bool)

(assert (=> start!37790 (array_inv!8033 _keys!658)))

(declare-fun b!387771 () Bool)

(assert (=> b!387771 (= e!235028 tp_is_empty!9557)))

(declare-fun b!387772 () Bool)

(declare-fun e!235025 () Bool)

(assert (=> b!387772 (= e!235025 tp_is_empty!9557)))

(declare-fun b!387773 () Bool)

(declare-fun res!221738 () Bool)

(assert (=> b!387773 (=> (not res!221738) (not e!235024))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!387773 (= res!221738 (validKeyInArray!0 k!778))))

(declare-fun b!387774 () Bool)

(declare-fun res!221741 () Bool)

(assert (=> b!387774 (=> (not res!221741) (not e!235024))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22983 (_ BitVec 32)) Bool)

(assert (=> b!387774 (= res!221741 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!387775 () Bool)

(declare-fun res!221740 () Bool)

(assert (=> b!387775 (=> (not res!221740) (not e!235024))))

(assert (=> b!387775 (= res!221740 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11309 _keys!658))))))

(declare-fun mapIsEmpty!15900 () Bool)

(assert (=> mapIsEmpty!15900 mapRes!15900))

(declare-fun b!387776 () Bool)

(declare-fun res!221739 () Bool)

(assert (=> b!387776 (=> (not res!221739) (not e!235026))))

(assert (=> b!387776 (= res!221739 (arrayNoDuplicates!0 lt!182122 #b00000000000000000000000000000000 Nil!6307))))

(declare-fun b!387777 () Bool)

(assert (=> b!387777 (= e!235027 (and e!235025 mapRes!15900))))

(declare-fun condMapEmpty!15900 () Bool)

(declare-fun mapDefault!15900 () ValueCell!4435)

