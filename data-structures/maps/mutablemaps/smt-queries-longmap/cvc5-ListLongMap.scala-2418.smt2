; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38244 () Bool)

(assert start!38244)

(declare-fun b_free!9073 () Bool)

(declare-fun b_next!9073 () Bool)

(assert (=> start!38244 (= b_free!9073 (not b_next!9073))))

(declare-fun tp!32006 () Bool)

(declare-fun b_and!16477 () Bool)

(assert (=> start!38244 (= tp!32006 b_and!16477)))

(declare-fun b!394303 () Bool)

(declare-fun res!226082 () Bool)

(declare-fun e!238689 () Bool)

(assert (=> b!394303 (=> (not res!226082) (not e!238689))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!23375 0))(
  ( (array!23376 (arr!11141 (Array (_ BitVec 32) (_ BitVec 64))) (size!11493 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23375)

(assert (=> b!394303 (= res!226082 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11493 _keys!658))))))

(declare-fun b!394304 () Bool)

(declare-fun res!226087 () Bool)

(assert (=> b!394304 (=> (not res!226087) (not e!238689))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23375 (_ BitVec 32)) Bool)

(assert (=> b!394304 (= res!226087 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!394305 () Bool)

(declare-fun res!226088 () Bool)

(declare-fun e!238692 () Bool)

(assert (=> b!394305 (=> (not res!226088) (not e!238692))))

(declare-fun lt!186918 () array!23375)

(declare-datatypes ((List!6452 0))(
  ( (Nil!6449) (Cons!6448 (h!7304 (_ BitVec 64)) (t!11634 List!6452)) )
))
(declare-fun arrayNoDuplicates!0 (array!23375 (_ BitVec 32) List!6452) Bool)

(assert (=> b!394305 (= res!226088 (arrayNoDuplicates!0 lt!186918 #b00000000000000000000000000000000 Nil!6449))))

(declare-fun b!394306 () Bool)

(assert (=> b!394306 (= e!238689 e!238692)))

(declare-fun res!226084 () Bool)

(assert (=> b!394306 (=> (not res!226084) (not e!238692))))

(assert (=> b!394306 (= res!226084 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!186918 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!394306 (= lt!186918 (array!23376 (store (arr!11141 _keys!658) i!548 k!778) (size!11493 _keys!658)))))

(declare-fun b!394307 () Bool)

(declare-fun e!238691 () Bool)

(assert (=> b!394307 (= e!238691 true)))

(declare-datatypes ((V!14099 0))(
  ( (V!14100 (val!4917 Int)) )
))
(declare-datatypes ((tuple2!6568 0))(
  ( (tuple2!6569 (_1!3294 (_ BitVec 64)) (_2!3294 V!14099)) )
))
(declare-datatypes ((List!6453 0))(
  ( (Nil!6450) (Cons!6449 (h!7305 tuple2!6568) (t!11635 List!6453)) )
))
(declare-datatypes ((ListLongMap!5495 0))(
  ( (ListLongMap!5496 (toList!2763 List!6453)) )
))
(declare-fun lt!186915 () ListLongMap!5495)

(declare-fun lt!186920 () ListLongMap!5495)

(declare-fun lt!186917 () tuple2!6568)

(declare-fun +!1061 (ListLongMap!5495 tuple2!6568) ListLongMap!5495)

(assert (=> b!394307 (= lt!186915 (+!1061 lt!186920 lt!186917))))

(declare-fun lt!186922 () ListLongMap!5495)

(declare-fun lt!186912 () ListLongMap!5495)

(assert (=> b!394307 (= lt!186922 lt!186912)))

(declare-fun mapNonEmpty!16218 () Bool)

(declare-fun mapRes!16218 () Bool)

(declare-fun tp!32007 () Bool)

(declare-fun e!238686 () Bool)

(assert (=> mapNonEmpty!16218 (= mapRes!16218 (and tp!32007 e!238686))))

(declare-datatypes ((ValueCell!4529 0))(
  ( (ValueCellFull!4529 (v!7158 V!14099)) (EmptyCell!4529) )
))
(declare-fun mapRest!16218 () (Array (_ BitVec 32) ValueCell!4529))

(declare-datatypes ((array!23377 0))(
  ( (array!23378 (arr!11142 (Array (_ BitVec 32) ValueCell!4529)) (size!11494 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23377)

(declare-fun mapValue!16218 () ValueCell!4529)

(declare-fun mapKey!16218 () (_ BitVec 32))

(assert (=> mapNonEmpty!16218 (= (arr!11142 _values!506) (store mapRest!16218 mapKey!16218 mapValue!16218))))

(declare-fun b!394308 () Bool)

(declare-fun res!226081 () Bool)

(assert (=> b!394308 (=> (not res!226081) (not e!238689))))

(declare-fun arrayContainsKey!0 (array!23375 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!394308 (= res!226081 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!16218 () Bool)

(assert (=> mapIsEmpty!16218 mapRes!16218))

(declare-fun res!226083 () Bool)

(assert (=> start!38244 (=> (not res!226083) (not e!238689))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!38244 (= res!226083 (validMask!0 mask!970))))

(assert (=> start!38244 e!238689))

(declare-fun e!238687 () Bool)

(declare-fun array_inv!8156 (array!23377) Bool)

(assert (=> start!38244 (and (array_inv!8156 _values!506) e!238687)))

(assert (=> start!38244 tp!32006))

(assert (=> start!38244 true))

(declare-fun tp_is_empty!9745 () Bool)

(assert (=> start!38244 tp_is_empty!9745))

(declare-fun array_inv!8157 (array!23375) Bool)

(assert (=> start!38244 (array_inv!8157 _keys!658)))

(declare-fun b!394309 () Bool)

(declare-fun e!238688 () Bool)

(assert (=> b!394309 (= e!238687 (and e!238688 mapRes!16218))))

(declare-fun condMapEmpty!16218 () Bool)

(declare-fun mapDefault!16218 () ValueCell!4529)

