; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37106 () Bool)

(assert start!37106)

(declare-fun b_free!8225 () Bool)

(declare-fun b_next!8225 () Bool)

(assert (=> start!37106 (= b_free!8225 (not b_next!8225))))

(declare-fun tp!29390 () Bool)

(declare-fun b_and!15485 () Bool)

(assert (=> start!37106 (= tp!29390 b_and!15485)))

(declare-fun b!373302 () Bool)

(declare-fun res!210347 () Bool)

(declare-fun e!227588 () Bool)

(assert (=> b!373302 (=> (not res!210347) (not e!227588))))

(declare-datatypes ((array!21653 0))(
  ( (array!21654 (arr!10292 (Array (_ BitVec 32) (_ BitVec 64))) (size!10644 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21653)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21653 (_ BitVec 32)) Bool)

(assert (=> b!373302 (= res!210347 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!373303 () Bool)

(declare-fun e!227590 () Bool)

(declare-fun e!227595 () Bool)

(assert (=> b!373303 (= e!227590 (not e!227595))))

(declare-fun res!210346 () Bool)

(assert (=> b!373303 (=> res!210346 e!227595)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!373303 (= res!210346 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!12935 0))(
  ( (V!12936 (val!4481 Int)) )
))
(declare-datatypes ((ValueCell!4093 0))(
  ( (ValueCellFull!4093 (v!6674 V!12935)) (EmptyCell!4093) )
))
(declare-datatypes ((array!21655 0))(
  ( (array!21656 (arr!10293 (Array (_ BitVec 32) ValueCell!4093)) (size!10645 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21655)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!5926 0))(
  ( (tuple2!5927 (_1!2973 (_ BitVec 64)) (_2!2973 V!12935)) )
))
(declare-datatypes ((List!5802 0))(
  ( (Nil!5799) (Cons!5798 (h!6654 tuple2!5926) (t!10960 List!5802)) )
))
(declare-datatypes ((ListLongMap!4853 0))(
  ( (ListLongMap!4854 (toList!2442 List!5802)) )
))
(declare-fun lt!171506 () ListLongMap!4853)

(declare-fun zeroValue!472 () V!12935)

(declare-fun minValue!472 () V!12935)

(declare-fun getCurrentListMap!1891 (array!21653 array!21655 (_ BitVec 32) (_ BitVec 32) V!12935 V!12935 (_ BitVec 32) Int) ListLongMap!4853)

(assert (=> b!373303 (= lt!171506 (getCurrentListMap!1891 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!171510 () array!21655)

(declare-fun lt!171517 () array!21653)

(declare-fun lt!171512 () ListLongMap!4853)

(assert (=> b!373303 (= lt!171512 (getCurrentListMap!1891 lt!171517 lt!171510 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!171518 () ListLongMap!4853)

(declare-fun lt!171508 () ListLongMap!4853)

(assert (=> b!373303 (and (= lt!171518 lt!171508) (= lt!171508 lt!171518))))

(declare-fun lt!171515 () ListLongMap!4853)

(declare-fun lt!171504 () tuple2!5926)

(declare-fun +!783 (ListLongMap!4853 tuple2!5926) ListLongMap!4853)

(assert (=> b!373303 (= lt!171508 (+!783 lt!171515 lt!171504))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun v!373 () V!12935)

(assert (=> b!373303 (= lt!171504 (tuple2!5927 k!778 v!373))))

(declare-datatypes ((Unit!11469 0))(
  ( (Unit!11470) )
))
(declare-fun lt!171505 () Unit!11469)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!42 (array!21653 array!21655 (_ BitVec 32) (_ BitVec 32) V!12935 V!12935 (_ BitVec 32) (_ BitVec 64) V!12935 (_ BitVec 32) Int) Unit!11469)

(assert (=> b!373303 (= lt!171505 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!42 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!709 (array!21653 array!21655 (_ BitVec 32) (_ BitVec 32) V!12935 V!12935 (_ BitVec 32) Int) ListLongMap!4853)

(assert (=> b!373303 (= lt!171518 (getCurrentListMapNoExtraKeys!709 lt!171517 lt!171510 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!373303 (= lt!171510 (array!21656 (store (arr!10293 _values!506) i!548 (ValueCellFull!4093 v!373)) (size!10645 _values!506)))))

(assert (=> b!373303 (= lt!171515 (getCurrentListMapNoExtraKeys!709 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!373304 () Bool)

(declare-fun e!227594 () Bool)

(declare-fun e!227589 () Bool)

(declare-fun mapRes!14874 () Bool)

(assert (=> b!373304 (= e!227594 (and e!227589 mapRes!14874))))

(declare-fun condMapEmpty!14874 () Bool)

(declare-fun mapDefault!14874 () ValueCell!4093)

