; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37750 () Bool)

(assert start!37750)

(declare-fun b_free!8845 () Bool)

(declare-fun b_next!8845 () Bool)

(assert (=> start!37750 (= b_free!8845 (not b_next!8845))))

(declare-fun tp!31286 () Bool)

(declare-fun b_and!16105 () Bool)

(assert (=> start!37750 (= tp!31286 b_and!16105)))

(declare-fun b!386987 () Bool)

(declare-fun res!221138 () Bool)

(declare-fun e!234666 () Bool)

(assert (=> b!386987 (=> (not res!221138) (not e!234666))))

(declare-datatypes ((array!22903 0))(
  ( (array!22904 (arr!10917 (Array (_ BitVec 32) (_ BitVec 64))) (size!11269 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22903)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22903 (_ BitVec 32)) Bool)

(assert (=> b!386987 (= res!221138 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapNonEmpty!15840 () Bool)

(declare-fun mapRes!15840 () Bool)

(declare-fun tp!31287 () Bool)

(declare-fun e!234665 () Bool)

(assert (=> mapNonEmpty!15840 (= mapRes!15840 (and tp!31287 e!234665))))

(declare-datatypes ((V!13795 0))(
  ( (V!13796 (val!4803 Int)) )
))
(declare-datatypes ((ValueCell!4415 0))(
  ( (ValueCellFull!4415 (v!6996 V!13795)) (EmptyCell!4415) )
))
(declare-datatypes ((array!22905 0))(
  ( (array!22906 (arr!10918 (Array (_ BitVec 32) ValueCell!4415)) (size!11270 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22905)

(declare-fun mapKey!15840 () (_ BitVec 32))

(declare-fun mapValue!15840 () ValueCell!4415)

(declare-fun mapRest!15840 () (Array (_ BitVec 32) ValueCell!4415))

(assert (=> mapNonEmpty!15840 (= (arr!10918 _values!506) (store mapRest!15840 mapKey!15840 mapValue!15840))))

(declare-fun b!386988 () Bool)

(declare-fun e!234669 () Bool)

(declare-fun tp_is_empty!9517 () Bool)

(assert (=> b!386988 (= e!234669 tp_is_empty!9517)))

(declare-fun b!386989 () Bool)

(declare-fun res!221135 () Bool)

(assert (=> b!386989 (=> (not res!221135) (not e!234666))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22903 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!386989 (= res!221135 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!386990 () Bool)

(declare-fun e!234664 () Bool)

(assert (=> b!386990 (= e!234664 false)))

(declare-fun lt!181941 () array!22903)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13795)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun v!373 () V!13795)

(declare-datatypes ((tuple2!6396 0))(
  ( (tuple2!6397 (_1!3208 (_ BitVec 64)) (_2!3208 V!13795)) )
))
(declare-datatypes ((List!6281 0))(
  ( (Nil!6278) (Cons!6277 (h!7133 tuple2!6396) (t!11439 List!6281)) )
))
(declare-datatypes ((ListLongMap!5323 0))(
  ( (ListLongMap!5324 (toList!2677 List!6281)) )
))
(declare-fun lt!181942 () ListLongMap!5323)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun minValue!472 () V!13795)

(declare-fun getCurrentListMapNoExtraKeys!911 (array!22903 array!22905 (_ BitVec 32) (_ BitVec 32) V!13795 V!13795 (_ BitVec 32) Int) ListLongMap!5323)

(assert (=> b!386990 (= lt!181942 (getCurrentListMapNoExtraKeys!911 lt!181941 (array!22906 (store (arr!10918 _values!506) i!548 (ValueCellFull!4415 v!373)) (size!11270 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181940 () ListLongMap!5323)

(assert (=> b!386990 (= lt!181940 (getCurrentListMapNoExtraKeys!911 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!386991 () Bool)

(assert (=> b!386991 (= e!234666 e!234664)))

(declare-fun res!221141 () Bool)

(assert (=> b!386991 (=> (not res!221141) (not e!234664))))

(assert (=> b!386991 (= res!221141 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!181941 mask!970))))

(assert (=> b!386991 (= lt!181941 (array!22904 (store (arr!10917 _keys!658) i!548 k!778) (size!11269 _keys!658)))))

(declare-fun b!386992 () Bool)

(declare-fun res!221132 () Bool)

(assert (=> b!386992 (=> (not res!221132) (not e!234666))))

(assert (=> b!386992 (= res!221132 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11269 _keys!658))))))

(declare-fun b!386993 () Bool)

(declare-fun res!221140 () Bool)

(assert (=> b!386993 (=> (not res!221140) (not e!234666))))

(declare-datatypes ((List!6282 0))(
  ( (Nil!6279) (Cons!6278 (h!7134 (_ BitVec 64)) (t!11440 List!6282)) )
))
(declare-fun arrayNoDuplicates!0 (array!22903 (_ BitVec 32) List!6282) Bool)

(assert (=> b!386993 (= res!221140 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6279))))

(declare-fun b!386994 () Bool)

(declare-fun res!221137 () Bool)

(assert (=> b!386994 (=> (not res!221137) (not e!234666))))

(assert (=> b!386994 (= res!221137 (or (= (select (arr!10917 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10917 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!386996 () Bool)

(assert (=> b!386996 (= e!234665 tp_is_empty!9517)))

(declare-fun b!386997 () Bool)

(declare-fun res!221133 () Bool)

(assert (=> b!386997 (=> (not res!221133) (not e!234666))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!386997 (= res!221133 (validKeyInArray!0 k!778))))

(declare-fun b!386998 () Bool)

(declare-fun e!234667 () Bool)

(assert (=> b!386998 (= e!234667 (and e!234669 mapRes!15840))))

(declare-fun condMapEmpty!15840 () Bool)

(declare-fun mapDefault!15840 () ValueCell!4415)

