; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36884 () Bool)

(assert start!36884)

(declare-fun b_free!8003 () Bool)

(declare-fun b_next!8003 () Bool)

(assert (=> start!36884 (= b_free!8003 (not b_next!8003))))

(declare-fun tp!28725 () Bool)

(declare-fun b_and!15263 () Bool)

(assert (=> start!36884 (= tp!28725 b_and!15263)))

(declare-fun b!368903 () Bool)

(declare-fun e!225529 () Bool)

(assert (=> b!368903 (= e!225529 false)))

(declare-datatypes ((V!12639 0))(
  ( (V!12640 (val!4370 Int)) )
))
(declare-datatypes ((ValueCell!3982 0))(
  ( (ValueCellFull!3982 (v!6563 V!12639)) (EmptyCell!3982) )
))
(declare-datatypes ((array!21225 0))(
  ( (array!21226 (arr!10078 (Array (_ BitVec 32) ValueCell!3982)) (size!10430 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21225)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!5786 0))(
  ( (tuple2!5787 (_1!2903 (_ BitVec 64)) (_2!2903 V!12639)) )
))
(declare-datatypes ((List!5646 0))(
  ( (Nil!5643) (Cons!5642 (h!6498 tuple2!5786) (t!10804 List!5646)) )
))
(declare-datatypes ((ListLongMap!4713 0))(
  ( (ListLongMap!4714 (toList!2372 List!5646)) )
))
(declare-fun lt!169619 () ListLongMap!4713)

(declare-datatypes ((array!21227 0))(
  ( (array!21228 (arr!10079 (Array (_ BitVec 32) (_ BitVec 64))) (size!10431 (_ BitVec 32))) )
))
(declare-fun lt!169620 () array!21227)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun v!373 () V!12639)

(declare-fun zeroValue!472 () V!12639)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun i!548 () (_ BitVec 32))

(declare-fun minValue!472 () V!12639)

(declare-fun getCurrentListMapNoExtraKeys!640 (array!21227 array!21225 (_ BitVec 32) (_ BitVec 32) V!12639 V!12639 (_ BitVec 32) Int) ListLongMap!4713)

(assert (=> b!368903 (= lt!169619 (getCurrentListMapNoExtraKeys!640 lt!169620 (array!21226 (store (arr!10078 _values!506) i!548 (ValueCellFull!3982 v!373)) (size!10430 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!169621 () ListLongMap!4713)

(declare-fun _keys!658 () array!21227)

(assert (=> b!368903 (= lt!169621 (getCurrentListMapNoExtraKeys!640 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!368904 () Bool)

(declare-fun res!206949 () Bool)

(declare-fun e!225533 () Bool)

(assert (=> b!368904 (=> (not res!206949) (not e!225533))))

(assert (=> b!368904 (= res!206949 (or (= (select (arr!10079 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10079 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!368905 () Bool)

(declare-fun res!206953 () Bool)

(assert (=> b!368905 (=> (not res!206953) (not e!225533))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21227 (_ BitVec 32)) Bool)

(assert (=> b!368905 (= res!206953 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!368907 () Bool)

(declare-fun e!225534 () Bool)

(declare-fun e!225530 () Bool)

(declare-fun mapRes!14541 () Bool)

(assert (=> b!368907 (= e!225534 (and e!225530 mapRes!14541))))

(declare-fun condMapEmpty!14541 () Bool)

(declare-fun mapDefault!14541 () ValueCell!3982)

