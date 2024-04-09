; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40902 () Bool)

(assert start!40902)

(declare-fun b_free!10829 () Bool)

(declare-fun b_next!10829 () Bool)

(assert (=> start!40902 (= b_free!10829 (not b_next!10829))))

(declare-fun tp!38313 () Bool)

(declare-fun b_and!18989 () Bool)

(assert (=> start!40902 (= tp!38313 b_and!18989)))

(declare-fun b!454082 () Bool)

(declare-fun e!265707 () Bool)

(assert (=> b!454082 (= e!265707 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((V!17327 0))(
  ( (V!17328 (val!6128 Int)) )
))
(declare-fun minValue!515 () V!17327)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5740 0))(
  ( (ValueCellFull!5740 (v!8390 V!17327)) (EmptyCell!5740) )
))
(declare-datatypes ((array!28103 0))(
  ( (array!28104 (arr!13492 (Array (_ BitVec 32) ValueCell!5740)) (size!13844 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28103)

(declare-fun zeroValue!515 () V!17327)

(declare-fun v!412 () V!17327)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((tuple2!8022 0))(
  ( (tuple2!8023 (_1!4021 (_ BitVec 64)) (_2!4021 V!17327)) )
))
(declare-datatypes ((List!8124 0))(
  ( (Nil!8121) (Cons!8120 (h!8976 tuple2!8022) (t!13960 List!8124)) )
))
(declare-datatypes ((ListLongMap!6949 0))(
  ( (ListLongMap!6950 (toList!3490 List!8124)) )
))
(declare-fun lt!206067 () ListLongMap!6949)

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!28105 0))(
  ( (array!28106 (arr!13493 (Array (_ BitVec 32) (_ BitVec 64))) (size!13845 (_ BitVec 32))) )
))
(declare-fun lt!206065 () array!28105)

(declare-fun getCurrentListMapNoExtraKeys!1666 (array!28105 array!28103 (_ BitVec 32) (_ BitVec 32) V!17327 V!17327 (_ BitVec 32) Int) ListLongMap!6949)

(assert (=> b!454082 (= lt!206067 (getCurrentListMapNoExtraKeys!1666 lt!206065 (array!28104 (store (arr!13492 _values!549) i!563 (ValueCellFull!5740 v!412)) (size!13844 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!206066 () ListLongMap!6949)

(declare-fun _keys!709 () array!28105)

(assert (=> b!454082 (= lt!206066 (getCurrentListMapNoExtraKeys!1666 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!454083 () Bool)

(declare-fun res!270602 () Bool)

(declare-fun e!265709 () Bool)

(assert (=> b!454083 (=> (not res!270602) (not e!265709))))

(assert (=> b!454083 (= res!270602 (and (= (size!13844 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13845 _keys!709) (size!13844 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!454084 () Bool)

(declare-fun res!270593 () Bool)

(assert (=> b!454084 (=> (not res!270593) (not e!265709))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28105 (_ BitVec 32)) Bool)

(assert (=> b!454084 (= res!270593 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!454085 () Bool)

(declare-fun res!270598 () Bool)

(assert (=> b!454085 (=> (not res!270598) (not e!265709))))

(assert (=> b!454085 (= res!270598 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13845 _keys!709))))))

(declare-fun mapIsEmpty!19891 () Bool)

(declare-fun mapRes!19891 () Bool)

(assert (=> mapIsEmpty!19891 mapRes!19891))

(declare-fun b!454086 () Bool)

(declare-fun e!265708 () Bool)

(declare-fun tp_is_empty!12167 () Bool)

(assert (=> b!454086 (= e!265708 tp_is_empty!12167)))

(declare-fun b!454087 () Bool)

(assert (=> b!454087 (= e!265709 e!265707)))

(declare-fun res!270595 () Bool)

(assert (=> b!454087 (=> (not res!270595) (not e!265707))))

(assert (=> b!454087 (= res!270595 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206065 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!454087 (= lt!206065 (array!28106 (store (arr!13493 _keys!709) i!563 k!794) (size!13845 _keys!709)))))

(declare-fun b!454088 () Bool)

(declare-fun res!270596 () Bool)

(assert (=> b!454088 (=> (not res!270596) (not e!265709))))

(declare-datatypes ((List!8125 0))(
  ( (Nil!8122) (Cons!8121 (h!8977 (_ BitVec 64)) (t!13961 List!8125)) )
))
(declare-fun arrayNoDuplicates!0 (array!28105 (_ BitVec 32) List!8125) Bool)

(assert (=> b!454088 (= res!270596 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8122))))

(declare-fun b!454089 () Bool)

(declare-fun res!270591 () Bool)

(assert (=> b!454089 (=> (not res!270591) (not e!265709))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!454089 (= res!270591 (validMask!0 mask!1025))))

(declare-fun b!454090 () Bool)

(declare-fun res!270597 () Bool)

(assert (=> b!454090 (=> (not res!270597) (not e!265707))))

(assert (=> b!454090 (= res!270597 (bvsle from!863 i!563))))

(declare-fun b!454092 () Bool)

(declare-fun res!270594 () Bool)

(assert (=> b!454092 (=> (not res!270594) (not e!265707))))

(assert (=> b!454092 (= res!270594 (arrayNoDuplicates!0 lt!206065 #b00000000000000000000000000000000 Nil!8122))))

(declare-fun b!454093 () Bool)

(declare-fun e!265711 () Bool)

(assert (=> b!454093 (= e!265711 (and e!265708 mapRes!19891))))

(declare-fun condMapEmpty!19891 () Bool)

(declare-fun mapDefault!19891 () ValueCell!5740)

