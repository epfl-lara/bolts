; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37366 () Bool)

(assert start!37366)

(declare-fun b_free!8485 () Bool)

(declare-fun b_next!8485 () Bool)

(assert (=> start!37366 (= b_free!8485 (not b_next!8485))))

(declare-fun tp!30171 () Bool)

(declare-fun b_and!15745 () Bool)

(assert (=> start!37366 (= tp!30171 b_and!15745)))

(declare-fun b!379170 () Bool)

(declare-fun e!230713 () Bool)

(declare-fun tp_is_empty!9133 () Bool)

(assert (=> b!379170 (= e!230713 tp_is_empty!9133)))

(declare-fun b!379171 () Bool)

(declare-fun e!230714 () Bool)

(declare-fun e!230710 () Bool)

(assert (=> b!379171 (= e!230714 (not e!230710))))

(declare-fun res!215052 () Bool)

(assert (=> b!379171 (=> res!215052 e!230710)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!379171 (= res!215052 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!13283 0))(
  ( (V!13284 (val!4611 Int)) )
))
(declare-datatypes ((tuple2!6134 0))(
  ( (tuple2!6135 (_1!3077 (_ BitVec 64)) (_2!3077 V!13283)) )
))
(declare-datatypes ((List!6007 0))(
  ( (Nil!6004) (Cons!6003 (h!6859 tuple2!6134) (t!11165 List!6007)) )
))
(declare-datatypes ((ListLongMap!5061 0))(
  ( (ListLongMap!5062 (toList!2546 List!6007)) )
))
(declare-fun lt!177083 () ListLongMap!5061)

(declare-datatypes ((ValueCell!4223 0))(
  ( (ValueCellFull!4223 (v!6804 V!13283)) (EmptyCell!4223) )
))
(declare-datatypes ((array!22163 0))(
  ( (array!22164 (arr!10547 (Array (_ BitVec 32) ValueCell!4223)) (size!10899 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22163)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13283)

(declare-datatypes ((array!22165 0))(
  ( (array!22166 (arr!10548 (Array (_ BitVec 32) (_ BitVec 64))) (size!10900 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22165)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13283)

(declare-fun getCurrentListMap!1974 (array!22165 array!22163 (_ BitVec 32) (_ BitVec 32) V!13283 V!13283 (_ BitVec 32) Int) ListLongMap!5061)

(assert (=> b!379171 (= lt!177083 (getCurrentListMap!1974 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!177087 () array!22165)

(declare-fun lt!177085 () ListLongMap!5061)

(declare-fun lt!177084 () array!22163)

(assert (=> b!379171 (= lt!177085 (getCurrentListMap!1974 lt!177087 lt!177084 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!177089 () ListLongMap!5061)

(declare-fun lt!177088 () ListLongMap!5061)

(assert (=> b!379171 (and (= lt!177089 lt!177088) (= lt!177088 lt!177089))))

(declare-fun lt!177091 () ListLongMap!5061)

(declare-fun lt!177093 () tuple2!6134)

(declare-fun +!887 (ListLongMap!5061 tuple2!6134) ListLongMap!5061)

(assert (=> b!379171 (= lt!177088 (+!887 lt!177091 lt!177093))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun v!373 () V!13283)

(assert (=> b!379171 (= lt!177093 (tuple2!6135 k!778 v!373))))

(declare-datatypes ((Unit!11669 0))(
  ( (Unit!11670) )
))
(declare-fun lt!177090 () Unit!11669)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!125 (array!22165 array!22163 (_ BitVec 32) (_ BitVec 32) V!13283 V!13283 (_ BitVec 32) (_ BitVec 64) V!13283 (_ BitVec 32) Int) Unit!11669)

(assert (=> b!379171 (= lt!177090 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!125 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!792 (array!22165 array!22163 (_ BitVec 32) (_ BitVec 32) V!13283 V!13283 (_ BitVec 32) Int) ListLongMap!5061)

(assert (=> b!379171 (= lt!177089 (getCurrentListMapNoExtraKeys!792 lt!177087 lt!177084 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!379171 (= lt!177084 (array!22164 (store (arr!10547 _values!506) i!548 (ValueCellFull!4223 v!373)) (size!10899 _values!506)))))

(assert (=> b!379171 (= lt!177091 (getCurrentListMapNoExtraKeys!792 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!379172 () Bool)

(declare-fun e!230709 () Bool)

(assert (=> b!379172 (= e!230710 e!230709)))

(declare-fun res!215045 () Bool)

(assert (=> b!379172 (=> res!215045 e!230709)))

(assert (=> b!379172 (= res!215045 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!177092 () ListLongMap!5061)

(assert (=> b!379172 (= lt!177083 lt!177092)))

(declare-fun lt!177086 () tuple2!6134)

(assert (=> b!379172 (= lt!177092 (+!887 lt!177091 lt!177086))))

(declare-fun lt!177082 () ListLongMap!5061)

(assert (=> b!379172 (= lt!177085 lt!177082)))

(assert (=> b!379172 (= lt!177082 (+!887 lt!177088 lt!177086))))

(assert (=> b!379172 (= lt!177085 (+!887 lt!177089 lt!177086))))

(assert (=> b!379172 (= lt!177086 (tuple2!6135 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!379173 () Bool)

(declare-fun e!230715 () Bool)

(assert (=> b!379173 (= e!230715 e!230714)))

(declare-fun res!215046 () Bool)

(assert (=> b!379173 (=> (not res!215046) (not e!230714))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22165 (_ BitVec 32)) Bool)

(assert (=> b!379173 (= res!215046 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!177087 mask!970))))

(assert (=> b!379173 (= lt!177087 (array!22166 (store (arr!10548 _keys!658) i!548 k!778) (size!10900 _keys!658)))))

(declare-fun b!379174 () Bool)

(declare-fun res!215043 () Bool)

(assert (=> b!379174 (=> (not res!215043) (not e!230715))))

(assert (=> b!379174 (= res!215043 (or (= (select (arr!10548 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10548 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!379175 () Bool)

(declare-fun res!215048 () Bool)

(assert (=> b!379175 (=> (not res!215048) (not e!230714))))

(declare-datatypes ((List!6008 0))(
  ( (Nil!6005) (Cons!6004 (h!6860 (_ BitVec 64)) (t!11166 List!6008)) )
))
(declare-fun arrayNoDuplicates!0 (array!22165 (_ BitVec 32) List!6008) Bool)

(assert (=> b!379175 (= res!215048 (arrayNoDuplicates!0 lt!177087 #b00000000000000000000000000000000 Nil!6005))))

(declare-fun b!379176 () Bool)

(declare-fun e!230712 () Bool)

(declare-fun e!230708 () Bool)

(declare-fun mapRes!15264 () Bool)

(assert (=> b!379176 (= e!230712 (and e!230708 mapRes!15264))))

(declare-fun condMapEmpty!15264 () Bool)

(declare-fun mapDefault!15264 () ValueCell!4223)

