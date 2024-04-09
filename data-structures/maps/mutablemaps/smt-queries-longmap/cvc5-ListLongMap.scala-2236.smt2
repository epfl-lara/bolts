; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36886 () Bool)

(assert start!36886)

(declare-fun b_free!8005 () Bool)

(declare-fun b_next!8005 () Bool)

(assert (=> start!36886 (= b_free!8005 (not b_next!8005))))

(declare-fun tp!28730 () Bool)

(declare-fun b_and!15265 () Bool)

(assert (=> start!36886 (= tp!28730 b_and!15265)))

(declare-fun b!368942 () Bool)

(declare-fun e!225550 () Bool)

(declare-fun e!225552 () Bool)

(assert (=> b!368942 (= e!225550 e!225552)))

(declare-fun res!206984 () Bool)

(assert (=> b!368942 (=> (not res!206984) (not e!225552))))

(declare-datatypes ((array!21229 0))(
  ( (array!21230 (arr!10080 (Array (_ BitVec 32) (_ BitVec 64))) (size!10432 (_ BitVec 32))) )
))
(declare-fun lt!169630 () array!21229)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21229 (_ BitVec 32)) Bool)

(assert (=> b!368942 (= res!206984 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169630 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun _keys!658 () array!21229)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!368942 (= lt!169630 (array!21230 (store (arr!10080 _keys!658) i!548 k!778) (size!10432 _keys!658)))))

(declare-fun mapIsEmpty!14544 () Bool)

(declare-fun mapRes!14544 () Bool)

(assert (=> mapIsEmpty!14544 mapRes!14544))

(declare-fun b!368943 () Bool)

(declare-fun res!206982 () Bool)

(assert (=> b!368943 (=> (not res!206982) (not e!225550))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!368943 (= res!206982 (validKeyInArray!0 k!778))))

(declare-fun b!368944 () Bool)

(declare-fun res!206981 () Bool)

(assert (=> b!368944 (=> (not res!206981) (not e!225550))))

(declare-fun arrayContainsKey!0 (array!21229 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!368944 (= res!206981 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!14544 () Bool)

(declare-fun tp!28731 () Bool)

(declare-fun e!225548 () Bool)

(assert (=> mapNonEmpty!14544 (= mapRes!14544 (and tp!28731 e!225548))))

(declare-datatypes ((V!12643 0))(
  ( (V!12644 (val!4371 Int)) )
))
(declare-datatypes ((ValueCell!3983 0))(
  ( (ValueCellFull!3983 (v!6564 V!12643)) (EmptyCell!3983) )
))
(declare-datatypes ((array!21231 0))(
  ( (array!21232 (arr!10081 (Array (_ BitVec 32) ValueCell!3983)) (size!10433 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21231)

(declare-fun mapValue!14544 () ValueCell!3983)

(declare-fun mapRest!14544 () (Array (_ BitVec 32) ValueCell!3983))

(declare-fun mapKey!14544 () (_ BitVec 32))

(assert (=> mapNonEmpty!14544 (= (arr!10081 _values!506) (store mapRest!14544 mapKey!14544 mapValue!14544))))

(declare-fun b!368945 () Bool)

(declare-fun res!206980 () Bool)

(assert (=> b!368945 (=> (not res!206980) (not e!225550))))

(assert (=> b!368945 (= res!206980 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10432 _keys!658))))))

(declare-fun b!368946 () Bool)

(declare-fun res!206977 () Bool)

(assert (=> b!368946 (=> (not res!206977) (not e!225552))))

(declare-datatypes ((List!5647 0))(
  ( (Nil!5644) (Cons!5643 (h!6499 (_ BitVec 64)) (t!10805 List!5647)) )
))
(declare-fun arrayNoDuplicates!0 (array!21229 (_ BitVec 32) List!5647) Bool)

(assert (=> b!368946 (= res!206977 (arrayNoDuplicates!0 lt!169630 #b00000000000000000000000000000000 Nil!5644))))

(declare-fun res!206979 () Bool)

(assert (=> start!36886 (=> (not res!206979) (not e!225550))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36886 (= res!206979 (validMask!0 mask!970))))

(assert (=> start!36886 e!225550))

(declare-fun e!225547 () Bool)

(declare-fun array_inv!7446 (array!21231) Bool)

(assert (=> start!36886 (and (array_inv!7446 _values!506) e!225547)))

(assert (=> start!36886 tp!28730))

(assert (=> start!36886 true))

(declare-fun tp_is_empty!8653 () Bool)

(assert (=> start!36886 tp_is_empty!8653))

(declare-fun array_inv!7447 (array!21229) Bool)

(assert (=> start!36886 (array_inv!7447 _keys!658)))

(declare-fun b!368947 () Bool)

(declare-fun res!206983 () Bool)

(assert (=> b!368947 (=> (not res!206983) (not e!225550))))

(assert (=> b!368947 (= res!206983 (or (= (select (arr!10080 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10080 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!368948 () Bool)

(assert (=> b!368948 (= e!225552 false)))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!5788 0))(
  ( (tuple2!5789 (_1!2904 (_ BitVec 64)) (_2!2904 V!12643)) )
))
(declare-datatypes ((List!5648 0))(
  ( (Nil!5645) (Cons!5644 (h!6500 tuple2!5788) (t!10806 List!5648)) )
))
(declare-datatypes ((ListLongMap!4715 0))(
  ( (ListLongMap!4716 (toList!2373 List!5648)) )
))
(declare-fun lt!169628 () ListLongMap!4715)

(declare-fun zeroValue!472 () V!12643)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun v!373 () V!12643)

(declare-fun minValue!472 () V!12643)

(declare-fun getCurrentListMapNoExtraKeys!641 (array!21229 array!21231 (_ BitVec 32) (_ BitVec 32) V!12643 V!12643 (_ BitVec 32) Int) ListLongMap!4715)

(assert (=> b!368948 (= lt!169628 (getCurrentListMapNoExtraKeys!641 lt!169630 (array!21232 (store (arr!10081 _values!506) i!548 (ValueCellFull!3983 v!373)) (size!10433 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!169629 () ListLongMap!4715)

(assert (=> b!368948 (= lt!169629 (getCurrentListMapNoExtraKeys!641 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!368949 () Bool)

(declare-fun res!206976 () Bool)

(assert (=> b!368949 (=> (not res!206976) (not e!225550))))

(assert (=> b!368949 (= res!206976 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5644))))

(declare-fun b!368950 () Bool)

(declare-fun res!206975 () Bool)

(assert (=> b!368950 (=> (not res!206975) (not e!225550))))

(assert (=> b!368950 (= res!206975 (and (= (size!10433 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10432 _keys!658) (size!10433 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!368951 () Bool)

(declare-fun e!225549 () Bool)

(assert (=> b!368951 (= e!225549 tp_is_empty!8653)))

(declare-fun b!368952 () Bool)

(assert (=> b!368952 (= e!225548 tp_is_empty!8653)))

(declare-fun b!368953 () Bool)

(declare-fun res!206978 () Bool)

(assert (=> b!368953 (=> (not res!206978) (not e!225550))))

(assert (=> b!368953 (= res!206978 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!368954 () Bool)

(assert (=> b!368954 (= e!225547 (and e!225549 mapRes!14544))))

(declare-fun condMapEmpty!14544 () Bool)

(declare-fun mapDefault!14544 () ValueCell!3983)

