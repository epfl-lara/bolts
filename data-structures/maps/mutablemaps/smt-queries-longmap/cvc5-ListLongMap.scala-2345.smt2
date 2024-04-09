; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37540 () Bool)

(assert start!37540)

(declare-fun b_free!8659 () Bool)

(declare-fun b_next!8659 () Bool)

(assert (=> start!37540 (= b_free!8659 (not b_next!8659))))

(declare-fun tp!30692 () Bool)

(declare-fun b_and!15919 () Bool)

(assert (=> start!37540 (= tp!30692 b_and!15919)))

(declare-fun b!382921 () Bool)

(declare-fun e!232638 () Bool)

(declare-fun e!232635 () Bool)

(assert (=> b!382921 (= e!232638 (not e!232635))))

(declare-fun res!218018 () Bool)

(assert (=> b!382921 (=> res!218018 e!232635)))

(declare-fun lt!179825 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!382921 (= res!218018 (or (and (not lt!179825) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!179825) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!179825)))))

(assert (=> b!382921 (= lt!179825 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-datatypes ((V!13515 0))(
  ( (V!13516 (val!4698 Int)) )
))
(declare-datatypes ((ValueCell!4310 0))(
  ( (ValueCellFull!4310 (v!6891 V!13515)) (EmptyCell!4310) )
))
(declare-datatypes ((array!22505 0))(
  ( (array!22506 (arr!10718 (Array (_ BitVec 32) ValueCell!4310)) (size!11070 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22505)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6270 0))(
  ( (tuple2!6271 (_1!3145 (_ BitVec 64)) (_2!3145 V!13515)) )
))
(declare-datatypes ((List!6138 0))(
  ( (Nil!6135) (Cons!6134 (h!6990 tuple2!6270) (t!11296 List!6138)) )
))
(declare-datatypes ((ListLongMap!5197 0))(
  ( (ListLongMap!5198 (toList!2614 List!6138)) )
))
(declare-fun lt!179833 () ListLongMap!5197)

(declare-fun zeroValue!472 () V!13515)

(declare-datatypes ((array!22507 0))(
  ( (array!22508 (arr!10719 (Array (_ BitVec 32) (_ BitVec 64))) (size!11071 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22507)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13515)

(declare-fun getCurrentListMap!2032 (array!22507 array!22505 (_ BitVec 32) (_ BitVec 32) V!13515 V!13515 (_ BitVec 32) Int) ListLongMap!5197)

(assert (=> b!382921 (= lt!179833 (getCurrentListMap!2032 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179824 () array!22507)

(declare-fun lt!179831 () array!22505)

(declare-fun lt!179826 () ListLongMap!5197)

(assert (=> b!382921 (= lt!179826 (getCurrentListMap!2032 lt!179824 lt!179831 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179829 () ListLongMap!5197)

(declare-fun lt!179832 () ListLongMap!5197)

(assert (=> b!382921 (and (= lt!179829 lt!179832) (= lt!179832 lt!179829))))

(declare-fun lt!179830 () ListLongMap!5197)

(declare-fun lt!179823 () tuple2!6270)

(declare-fun +!950 (ListLongMap!5197 tuple2!6270) ListLongMap!5197)

(assert (=> b!382921 (= lt!179832 (+!950 lt!179830 lt!179823))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun v!373 () V!13515)

(assert (=> b!382921 (= lt!179823 (tuple2!6271 k!778 v!373))))

(declare-datatypes ((Unit!11793 0))(
  ( (Unit!11794) )
))
(declare-fun lt!179828 () Unit!11793)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!183 (array!22507 array!22505 (_ BitVec 32) (_ BitVec 32) V!13515 V!13515 (_ BitVec 32) (_ BitVec 64) V!13515 (_ BitVec 32) Int) Unit!11793)

(assert (=> b!382921 (= lt!179828 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!183 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!850 (array!22507 array!22505 (_ BitVec 32) (_ BitVec 32) V!13515 V!13515 (_ BitVec 32) Int) ListLongMap!5197)

(assert (=> b!382921 (= lt!179829 (getCurrentListMapNoExtraKeys!850 lt!179824 lt!179831 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!382921 (= lt!179831 (array!22506 (store (arr!10718 _values!506) i!548 (ValueCellFull!4310 v!373)) (size!11070 _values!506)))))

(assert (=> b!382921 (= lt!179830 (getCurrentListMapNoExtraKeys!850 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun mapIsEmpty!15525 () Bool)

(declare-fun mapRes!15525 () Bool)

(assert (=> mapIsEmpty!15525 mapRes!15525))

(declare-fun res!218015 () Bool)

(declare-fun e!232637 () Bool)

(assert (=> start!37540 (=> (not res!218015) (not e!232637))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37540 (= res!218015 (validMask!0 mask!970))))

(assert (=> start!37540 e!232637))

(declare-fun e!232633 () Bool)

(declare-fun array_inv!7870 (array!22505) Bool)

(assert (=> start!37540 (and (array_inv!7870 _values!506) e!232633)))

(assert (=> start!37540 tp!30692))

(assert (=> start!37540 true))

(declare-fun tp_is_empty!9307 () Bool)

(assert (=> start!37540 tp_is_empty!9307))

(declare-fun array_inv!7871 (array!22507) Bool)

(assert (=> start!37540 (array_inv!7871 _keys!658)))

(declare-fun b!382922 () Bool)

(declare-fun e!232634 () Bool)

(assert (=> b!382922 (= e!232633 (and e!232634 mapRes!15525))))

(declare-fun condMapEmpty!15525 () Bool)

(declare-fun mapDefault!15525 () ValueCell!4310)

