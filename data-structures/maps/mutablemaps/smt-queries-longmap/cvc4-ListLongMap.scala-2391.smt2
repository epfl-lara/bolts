; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37842 () Bool)

(assert start!37842)

(declare-fun b_free!8915 () Bool)

(declare-fun b_next!8915 () Bool)

(assert (=> start!37842 (= b_free!8915 (not b_next!8915))))

(declare-fun tp!31500 () Bool)

(declare-fun b_and!16187 () Bool)

(assert (=> start!37842 (= tp!31500 b_and!16187)))

(declare-fun b!388572 () Bool)

(declare-fun res!222291 () Bool)

(declare-fun e!235445 () Bool)

(assert (=> b!388572 (=> (not res!222291) (not e!235445))))

(declare-datatypes ((array!23043 0))(
  ( (array!23044 (arr!10986 (Array (_ BitVec 32) (_ BitVec 64))) (size!11338 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23043)

(declare-datatypes ((List!6332 0))(
  ( (Nil!6329) (Cons!6328 (h!7184 (_ BitVec 64)) (t!11492 List!6332)) )
))
(declare-fun arrayNoDuplicates!0 (array!23043 (_ BitVec 32) List!6332) Bool)

(assert (=> b!388572 (= res!222291 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6329))))

(declare-fun b!388573 () Bool)

(declare-fun res!222294 () Bool)

(assert (=> b!388573 (=> (not res!222294) (not e!235445))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!388573 (= res!222294 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11338 _keys!658))))))

(declare-fun b!388574 () Bool)

(declare-fun res!222292 () Bool)

(assert (=> b!388574 (=> (not res!222292) (not e!235445))))

(assert (=> b!388574 (= res!222292 (or (= (select (arr!10986 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10986 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!388575 () Bool)

(declare-fun e!235443 () Bool)

(declare-fun tp_is_empty!9587 () Bool)

(assert (=> b!388575 (= e!235443 tp_is_empty!9587)))

(declare-fun mapNonEmpty!15948 () Bool)

(declare-fun mapRes!15948 () Bool)

(declare-fun tp!31499 () Bool)

(assert (=> mapNonEmpty!15948 (= mapRes!15948 (and tp!31499 e!235443))))

(declare-datatypes ((V!13887 0))(
  ( (V!13888 (val!4838 Int)) )
))
(declare-datatypes ((ValueCell!4450 0))(
  ( (ValueCellFull!4450 (v!7035 V!13887)) (EmptyCell!4450) )
))
(declare-datatypes ((array!23045 0))(
  ( (array!23046 (arr!10987 (Array (_ BitVec 32) ValueCell!4450)) (size!11339 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23045)

(declare-fun mapKey!15948 () (_ BitVec 32))

(declare-fun mapRest!15948 () (Array (_ BitVec 32) ValueCell!4450))

(declare-fun mapValue!15948 () ValueCell!4450)

(assert (=> mapNonEmpty!15948 (= (arr!10987 _values!506) (store mapRest!15948 mapKey!15948 mapValue!15948))))

(declare-fun b!388576 () Bool)

(declare-fun res!222300 () Bool)

(assert (=> b!388576 (=> (not res!222300) (not e!235445))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23043 (_ BitVec 32)) Bool)

(assert (=> b!388576 (= res!222300 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!388578 () Bool)

(declare-fun e!235446 () Bool)

(declare-fun e!235444 () Bool)

(assert (=> b!388578 (= e!235446 (not e!235444))))

(declare-fun res!222295 () Bool)

(assert (=> b!388578 (=> res!222295 e!235444)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!388578 (= res!222295 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!6448 0))(
  ( (tuple2!6449 (_1!3234 (_ BitVec 64)) (_2!3234 V!13887)) )
))
(declare-datatypes ((List!6333 0))(
  ( (Nil!6330) (Cons!6329 (h!7185 tuple2!6448) (t!11493 List!6333)) )
))
(declare-datatypes ((ListLongMap!5375 0))(
  ( (ListLongMap!5376 (toList!2703 List!6333)) )
))
(declare-fun lt!182569 () ListLongMap!5375)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13887)

(declare-fun minValue!472 () V!13887)

(declare-fun getCurrentListMap!2075 (array!23043 array!23045 (_ BitVec 32) (_ BitVec 32) V!13887 V!13887 (_ BitVec 32) Int) ListLongMap!5375)

(assert (=> b!388578 (= lt!182569 (getCurrentListMap!2075 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!182565 () array!23043)

(declare-fun lt!182563 () array!23045)

(declare-fun lt!182561 () ListLongMap!5375)

(assert (=> b!388578 (= lt!182561 (getCurrentListMap!2075 lt!182565 lt!182563 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!182567 () ListLongMap!5375)

(declare-fun lt!182568 () ListLongMap!5375)

(assert (=> b!388578 (and (= lt!182567 lt!182568) (= lt!182568 lt!182567))))

(declare-fun v!373 () V!13887)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun lt!182562 () ListLongMap!5375)

(declare-fun +!1001 (ListLongMap!5375 tuple2!6448) ListLongMap!5375)

(assert (=> b!388578 (= lt!182568 (+!1001 lt!182562 (tuple2!6449 k!778 v!373)))))

(declare-datatypes ((Unit!11893 0))(
  ( (Unit!11894) )
))
(declare-fun lt!182570 () Unit!11893)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!232 (array!23043 array!23045 (_ BitVec 32) (_ BitVec 32) V!13887 V!13887 (_ BitVec 32) (_ BitVec 64) V!13887 (_ BitVec 32) Int) Unit!11893)

(assert (=> b!388578 (= lt!182570 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!232 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!937 (array!23043 array!23045 (_ BitVec 32) (_ BitVec 32) V!13887 V!13887 (_ BitVec 32) Int) ListLongMap!5375)

(assert (=> b!388578 (= lt!182567 (getCurrentListMapNoExtraKeys!937 lt!182565 lt!182563 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!388578 (= lt!182563 (array!23046 (store (arr!10987 _values!506) i!548 (ValueCellFull!4450 v!373)) (size!11339 _values!506)))))

(assert (=> b!388578 (= lt!182562 (getCurrentListMapNoExtraKeys!937 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!388579 () Bool)

(declare-fun res!222290 () Bool)

(assert (=> b!388579 (=> (not res!222290) (not e!235446))))

(assert (=> b!388579 (= res!222290 (arrayNoDuplicates!0 lt!182565 #b00000000000000000000000000000000 Nil!6329))))

(declare-fun b!388580 () Bool)

(declare-fun res!222293 () Bool)

(assert (=> b!388580 (=> (not res!222293) (not e!235445))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!388580 (= res!222293 (validKeyInArray!0 k!778))))

(declare-fun mapIsEmpty!15948 () Bool)

(assert (=> mapIsEmpty!15948 mapRes!15948))

(declare-fun b!388581 () Bool)

(declare-fun res!222299 () Bool)

(assert (=> b!388581 (=> (not res!222299) (not e!235445))))

(declare-fun arrayContainsKey!0 (array!23043 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!388581 (= res!222299 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!388582 () Bool)

(declare-fun res!222297 () Bool)

(assert (=> b!388582 (=> (not res!222297) (not e!235445))))

(assert (=> b!388582 (= res!222297 (and (= (size!11339 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11338 _keys!658) (size!11339 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!388583 () Bool)

(assert (=> b!388583 (= e!235445 e!235446)))

(declare-fun res!222298 () Bool)

(assert (=> b!388583 (=> (not res!222298) (not e!235446))))

(assert (=> b!388583 (= res!222298 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!182565 mask!970))))

(assert (=> b!388583 (= lt!182565 (array!23044 (store (arr!10986 _keys!658) i!548 k!778) (size!11338 _keys!658)))))

(declare-fun lt!182566 () tuple2!6448)

(declare-fun lt!182564 () tuple2!6448)

(declare-fun b!388577 () Bool)

(assert (=> b!388577 (= e!235444 (= lt!182569 (+!1001 (+!1001 lt!182562 lt!182566) lt!182564)))))

(assert (=> b!388577 (= lt!182561 (+!1001 (+!1001 lt!182567 lt!182566) lt!182564))))

(assert (=> b!388577 (= lt!182564 (tuple2!6449 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!388577 (= lt!182566 (tuple2!6449 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun res!222296 () Bool)

(assert (=> start!37842 (=> (not res!222296) (not e!235445))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37842 (= res!222296 (validMask!0 mask!970))))

(assert (=> start!37842 e!235445))

(declare-fun e!235442 () Bool)

(declare-fun array_inv!8054 (array!23045) Bool)

(assert (=> start!37842 (and (array_inv!8054 _values!506) e!235442)))

(assert (=> start!37842 tp!31500))

(assert (=> start!37842 true))

(assert (=> start!37842 tp_is_empty!9587))

(declare-fun array_inv!8055 (array!23043) Bool)

(assert (=> start!37842 (array_inv!8055 _keys!658)))

(declare-fun b!388584 () Bool)

(declare-fun e!235448 () Bool)

(assert (=> b!388584 (= e!235448 tp_is_empty!9587)))

(declare-fun b!388585 () Bool)

(assert (=> b!388585 (= e!235442 (and e!235448 mapRes!15948))))

(declare-fun condMapEmpty!15948 () Bool)

(declare-fun mapDefault!15948 () ValueCell!4450)

