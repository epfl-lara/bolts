; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40950 () Bool)

(assert start!40950)

(declare-fun b_free!10877 () Bool)

(declare-fun b_next!10877 () Bool)

(assert (=> start!40950 (= b_free!10877 (not b_next!10877))))

(declare-fun tp!38457 () Bool)

(declare-fun b_and!19037 () Bool)

(assert (=> start!40950 (= tp!38457 b_and!19037)))

(declare-fun mapNonEmpty!19963 () Bool)

(declare-fun mapRes!19963 () Bool)

(declare-fun tp!38458 () Bool)

(declare-fun e!266140 () Bool)

(assert (=> mapNonEmpty!19963 (= mapRes!19963 (and tp!38458 e!266140))))

(declare-datatypes ((V!17391 0))(
  ( (V!17392 (val!6152 Int)) )
))
(declare-datatypes ((ValueCell!5764 0))(
  ( (ValueCellFull!5764 (v!8414 V!17391)) (EmptyCell!5764) )
))
(declare-fun mapRest!19963 () (Array (_ BitVec 32) ValueCell!5764))

(declare-datatypes ((array!28199 0))(
  ( (array!28200 (arr!13540 (Array (_ BitVec 32) ValueCell!5764)) (size!13892 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28199)

(declare-fun mapValue!19963 () ValueCell!5764)

(declare-fun mapKey!19963 () (_ BitVec 32))

(assert (=> mapNonEmpty!19963 (= (arr!13540 _values!549) (store mapRest!19963 mapKey!19963 mapValue!19963))))

(declare-fun b!455162 () Bool)

(declare-fun res!271465 () Bool)

(declare-fun e!266139 () Bool)

(assert (=> b!455162 (=> (not res!271465) (not e!266139))))

(declare-datatypes ((array!28201 0))(
  ( (array!28202 (arr!13541 (Array (_ BitVec 32) (_ BitVec 64))) (size!13893 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28201)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!28201 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!455162 (= res!271465 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!455163 () Bool)

(declare-fun res!271456 () Bool)

(assert (=> b!455163 (=> (not res!271456) (not e!266139))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!455163 (= res!271456 (validMask!0 mask!1025))))

(declare-fun b!455164 () Bool)

(declare-fun res!271461 () Bool)

(assert (=> b!455164 (=> (not res!271461) (not e!266139))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!455164 (= res!271461 (and (= (size!13892 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13893 _keys!709) (size!13892 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!455166 () Bool)

(declare-fun res!271460 () Bool)

(assert (=> b!455166 (=> (not res!271460) (not e!266139))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!455166 (= res!271460 (or (= (select (arr!13541 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13541 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!455167 () Bool)

(declare-fun e!266144 () Bool)

(assert (=> b!455167 (= e!266144 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun minValue!515 () V!17391)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!17391)

(declare-datatypes ((tuple2!8050 0))(
  ( (tuple2!8051 (_1!4035 (_ BitVec 64)) (_2!4035 V!17391)) )
))
(declare-datatypes ((List!8157 0))(
  ( (Nil!8154) (Cons!8153 (h!9009 tuple2!8050) (t!13993 List!8157)) )
))
(declare-datatypes ((ListLongMap!6977 0))(
  ( (ListLongMap!6978 (toList!3504 List!8157)) )
))
(declare-fun lt!206283 () ListLongMap!6977)

(declare-fun v!412 () V!17391)

(declare-fun lt!206281 () array!28201)

(declare-fun getCurrentListMapNoExtraKeys!1680 (array!28201 array!28199 (_ BitVec 32) (_ BitVec 32) V!17391 V!17391 (_ BitVec 32) Int) ListLongMap!6977)

(assert (=> b!455167 (= lt!206283 (getCurrentListMapNoExtraKeys!1680 lt!206281 (array!28200 (store (arr!13540 _values!549) i!563 (ValueCellFull!5764 v!412)) (size!13892 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!206282 () ListLongMap!6977)

(assert (=> b!455167 (= lt!206282 (getCurrentListMapNoExtraKeys!1680 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!455168 () Bool)

(declare-fun res!271466 () Bool)

(assert (=> b!455168 (=> (not res!271466) (not e!266144))))

(declare-datatypes ((List!8158 0))(
  ( (Nil!8155) (Cons!8154 (h!9010 (_ BitVec 64)) (t!13994 List!8158)) )
))
(declare-fun arrayNoDuplicates!0 (array!28201 (_ BitVec 32) List!8158) Bool)

(assert (=> b!455168 (= res!271466 (arrayNoDuplicates!0 lt!206281 #b00000000000000000000000000000000 Nil!8155))))

(declare-fun b!455169 () Bool)

(declare-fun e!266141 () Bool)

(declare-fun tp_is_empty!12215 () Bool)

(assert (=> b!455169 (= e!266141 tp_is_empty!12215)))

(declare-fun b!455170 () Bool)

(declare-fun e!266143 () Bool)

(assert (=> b!455170 (= e!266143 (and e!266141 mapRes!19963))))

(declare-fun condMapEmpty!19963 () Bool)

(declare-fun mapDefault!19963 () ValueCell!5764)

