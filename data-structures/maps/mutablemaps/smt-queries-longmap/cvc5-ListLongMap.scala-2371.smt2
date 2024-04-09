; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37696 () Bool)

(assert start!37696)

(declare-fun b_free!8791 () Bool)

(declare-fun b_next!8791 () Bool)

(assert (=> start!37696 (= b_free!8791 (not b_next!8791))))

(declare-fun tp!31125 () Bool)

(declare-fun b_and!16051 () Bool)

(assert (=> start!37696 (= tp!31125 b_and!16051)))

(declare-fun b!385934 () Bool)

(declare-fun res!220329 () Bool)

(declare-fun e!234179 () Bool)

(assert (=> b!385934 (=> (not res!220329) (not e!234179))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!385934 (= res!220329 (validKeyInArray!0 k!778))))

(declare-fun b!385935 () Bool)

(declare-fun res!220325 () Bool)

(assert (=> b!385935 (=> (not res!220325) (not e!234179))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13723 0))(
  ( (V!13724 (val!4776 Int)) )
))
(declare-datatypes ((ValueCell!4388 0))(
  ( (ValueCellFull!4388 (v!6969 V!13723)) (EmptyCell!4388) )
))
(declare-datatypes ((array!22801 0))(
  ( (array!22802 (arr!10866 (Array (_ BitVec 32) ValueCell!4388)) (size!11218 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22801)

(declare-datatypes ((array!22803 0))(
  ( (array!22804 (arr!10867 (Array (_ BitVec 32) (_ BitVec 64))) (size!11219 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22803)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!385935 (= res!220325 (and (= (size!11218 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11219 _keys!658) (size!11218 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!385936 () Bool)

(declare-fun res!220328 () Bool)

(assert (=> b!385936 (=> (not res!220328) (not e!234179))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22803 (_ BitVec 32)) Bool)

(assert (=> b!385936 (= res!220328 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!385937 () Bool)

(declare-fun e!234178 () Bool)

(assert (=> b!385937 (= e!234178 false)))

(declare-fun defaultEntry!514 () Int)

(declare-fun lt!181698 () array!22803)

(declare-fun zeroValue!472 () V!13723)

(declare-fun v!373 () V!13723)

(declare-fun minValue!472 () V!13723)

(declare-datatypes ((tuple2!6368 0))(
  ( (tuple2!6369 (_1!3194 (_ BitVec 64)) (_2!3194 V!13723)) )
))
(declare-datatypes ((List!6246 0))(
  ( (Nil!6243) (Cons!6242 (h!7098 tuple2!6368) (t!11404 List!6246)) )
))
(declare-datatypes ((ListLongMap!5295 0))(
  ( (ListLongMap!5296 (toList!2663 List!6246)) )
))
(declare-fun lt!181699 () ListLongMap!5295)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!897 (array!22803 array!22801 (_ BitVec 32) (_ BitVec 32) V!13723 V!13723 (_ BitVec 32) Int) ListLongMap!5295)

(assert (=> b!385937 (= lt!181699 (getCurrentListMapNoExtraKeys!897 lt!181698 (array!22802 (store (arr!10866 _values!506) i!548 (ValueCellFull!4388 v!373)) (size!11218 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181697 () ListLongMap!5295)

(assert (=> b!385937 (= lt!181697 (getCurrentListMapNoExtraKeys!897 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun mapIsEmpty!15759 () Bool)

(declare-fun mapRes!15759 () Bool)

(assert (=> mapIsEmpty!15759 mapRes!15759))

(declare-fun b!385939 () Bool)

(declare-fun res!220323 () Bool)

(assert (=> b!385939 (=> (not res!220323) (not e!234179))))

(assert (=> b!385939 (= res!220323 (or (= (select (arr!10867 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10867 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!385940 () Bool)

(declare-fun e!234183 () Bool)

(declare-fun e!234181 () Bool)

(assert (=> b!385940 (= e!234183 (and e!234181 mapRes!15759))))

(declare-fun condMapEmpty!15759 () Bool)

(declare-fun mapDefault!15759 () ValueCell!4388)

