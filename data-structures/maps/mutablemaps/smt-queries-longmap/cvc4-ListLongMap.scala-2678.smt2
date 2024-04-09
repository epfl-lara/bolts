; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39898 () Bool)

(assert start!39898)

(declare-fun b_free!10157 () Bool)

(declare-fun b_next!10157 () Bool)

(assert (=> start!39898 (= b_free!10157 (not b_next!10157))))

(declare-fun tp!35999 () Bool)

(declare-fun b_and!17991 () Bool)

(assert (=> start!39898 (= tp!35999 b_and!17991)))

(declare-fun mapIsEmpty!18585 () Bool)

(declare-fun mapRes!18585 () Bool)

(assert (=> mapIsEmpty!18585 mapRes!18585))

(declare-fun b!431873 () Bool)

(declare-fun res!254058 () Bool)

(declare-fun e!255512 () Bool)

(assert (=> b!431873 (=> (not res!254058) (not e!255512))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!431873 (= res!254058 (validKeyInArray!0 k!794))))

(declare-fun b!431874 () Bool)

(declare-fun e!255511 () Bool)

(assert (=> b!431874 (= e!255511 true)))

(declare-datatypes ((V!16183 0))(
  ( (V!16184 (val!5699 Int)) )
))
(declare-datatypes ((tuple2!7454 0))(
  ( (tuple2!7455 (_1!3737 (_ BitVec 64)) (_2!3737 V!16183)) )
))
(declare-fun lt!198000 () tuple2!7454)

(declare-datatypes ((List!7507 0))(
  ( (Nil!7504) (Cons!7503 (h!8359 tuple2!7454) (t!13121 List!7507)) )
))
(declare-datatypes ((ListLongMap!6381 0))(
  ( (ListLongMap!6382 (toList!3206 List!7507)) )
))
(declare-fun lt!198011 () ListLongMap!6381)

(declare-fun lt!198005 () ListLongMap!6381)

(declare-fun lt!198001 () tuple2!7454)

(declare-fun +!1352 (ListLongMap!6381 tuple2!7454) ListLongMap!6381)

(assert (=> b!431874 (= lt!198011 (+!1352 (+!1352 lt!198005 lt!198000) lt!198001))))

(declare-fun lt!198009 () V!16183)

(declare-datatypes ((Unit!12710 0))(
  ( (Unit!12711) )
))
(declare-fun lt!198006 () Unit!12710)

(declare-fun v!412 () V!16183)

(declare-datatypes ((array!26431 0))(
  ( (array!26432 (arr!12662 (Array (_ BitVec 32) (_ BitVec 64))) (size!13014 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26431)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun addCommutativeForDiffKeys!365 (ListLongMap!6381 (_ BitVec 64) V!16183 (_ BitVec 64) V!16183) Unit!12710)

(assert (=> b!431874 (= lt!198006 (addCommutativeForDiffKeys!365 lt!198005 k!794 v!412 (select (arr!12662 _keys!709) from!863) lt!198009))))

(declare-fun b!431875 () Bool)

(declare-fun res!254068 () Bool)

(assert (=> b!431875 (=> (not res!254068) (not e!255512))))

(declare-fun arrayContainsKey!0 (array!26431 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!431875 (= res!254068 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!431876 () Bool)

(declare-fun e!255514 () Bool)

(assert (=> b!431876 (= e!255512 e!255514)))

(declare-fun res!254059 () Bool)

(assert (=> b!431876 (=> (not res!254059) (not e!255514))))

(declare-fun lt!198002 () array!26431)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26431 (_ BitVec 32)) Bool)

(assert (=> b!431876 (= res!254059 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!198002 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!431876 (= lt!198002 (array!26432 (store (arr!12662 _keys!709) i!563 k!794) (size!13014 _keys!709)))))

(declare-fun b!431877 () Bool)

(declare-fun e!255508 () Bool)

(declare-fun e!255506 () Bool)

(assert (=> b!431877 (= e!255508 (not e!255506))))

(declare-fun res!254063 () Bool)

(assert (=> b!431877 (=> res!254063 e!255506)))

(assert (=> b!431877 (= res!254063 (not (validKeyInArray!0 (select (arr!12662 _keys!709) from!863))))))

(declare-fun lt!197998 () ListLongMap!6381)

(declare-fun lt!198004 () ListLongMap!6381)

(assert (=> b!431877 (= lt!197998 lt!198004)))

(assert (=> b!431877 (= lt!198004 (+!1352 lt!198005 lt!198001))))

(declare-fun minValue!515 () V!16183)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16183)

(declare-datatypes ((ValueCell!5311 0))(
  ( (ValueCellFull!5311 (v!7942 V!16183)) (EmptyCell!5311) )
))
(declare-datatypes ((array!26433 0))(
  ( (array!26434 (arr!12663 (Array (_ BitVec 32) ValueCell!5311)) (size!13015 (_ BitVec 32))) )
))
(declare-fun lt!198003 () array!26433)

(declare-fun getCurrentListMapNoExtraKeys!1400 (array!26431 array!26433 (_ BitVec 32) (_ BitVec 32) V!16183 V!16183 (_ BitVec 32) Int) ListLongMap!6381)

(assert (=> b!431877 (= lt!197998 (getCurrentListMapNoExtraKeys!1400 lt!198002 lt!198003 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!431877 (= lt!198001 (tuple2!7455 k!794 v!412))))

(declare-fun _values!549 () array!26433)

(assert (=> b!431877 (= lt!198005 (getCurrentListMapNoExtraKeys!1400 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!197999 () Unit!12710)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!544 (array!26431 array!26433 (_ BitVec 32) (_ BitVec 32) V!16183 V!16183 (_ BitVec 32) (_ BitVec 64) V!16183 (_ BitVec 32) Int) Unit!12710)

(assert (=> b!431877 (= lt!197999 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!544 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!431878 () Bool)

(declare-fun res!254062 () Bool)

(assert (=> b!431878 (=> (not res!254062) (not e!255512))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!431878 (= res!254062 (validMask!0 mask!1025))))

(declare-fun b!431879 () Bool)

(declare-fun e!255507 () Unit!12710)

(declare-fun Unit!12712 () Unit!12710)

(assert (=> b!431879 (= e!255507 Unit!12712)))

(declare-fun b!431881 () Bool)

(declare-fun res!254056 () Bool)

(assert (=> b!431881 (=> (not res!254056) (not e!255512))))

(assert (=> b!431881 (= res!254056 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13014 _keys!709))))))

(declare-fun b!431882 () Bool)

(declare-fun Unit!12713 () Unit!12710)

(assert (=> b!431882 (= e!255507 Unit!12713)))

(declare-fun lt!198008 () Unit!12710)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26431 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12710)

(assert (=> b!431882 (= lt!198008 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!431882 false))

(declare-fun b!431883 () Bool)

(declare-fun res!254067 () Bool)

(assert (=> b!431883 (=> (not res!254067) (not e!255512))))

(assert (=> b!431883 (= res!254067 (or (= (select (arr!12662 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12662 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!431884 () Bool)

(declare-fun res!254057 () Bool)

(assert (=> b!431884 (=> (not res!254057) (not e!255512))))

(assert (=> b!431884 (= res!254057 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!431885 () Bool)

(declare-fun e!255513 () Bool)

(declare-fun tp_is_empty!11309 () Bool)

(assert (=> b!431885 (= e!255513 tp_is_empty!11309)))

(declare-fun b!431886 () Bool)

(declare-fun res!254070 () Bool)

(assert (=> b!431886 (=> (not res!254070) (not e!255512))))

(assert (=> b!431886 (= res!254070 (and (= (size!13015 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13014 _keys!709) (size!13015 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!431887 () Bool)

(declare-fun res!254060 () Bool)

(assert (=> b!431887 (=> (not res!254060) (not e!255514))))

(assert (=> b!431887 (= res!254060 (bvsle from!863 i!563))))

(declare-fun mapNonEmpty!18585 () Bool)

(declare-fun tp!36000 () Bool)

(assert (=> mapNonEmpty!18585 (= mapRes!18585 (and tp!36000 e!255513))))

(declare-fun mapValue!18585 () ValueCell!5311)

(declare-fun mapKey!18585 () (_ BitVec 32))

(declare-fun mapRest!18585 () (Array (_ BitVec 32) ValueCell!5311))

(assert (=> mapNonEmpty!18585 (= (arr!12663 _values!549) (store mapRest!18585 mapKey!18585 mapValue!18585))))

(declare-fun b!431888 () Bool)

(declare-fun res!254065 () Bool)

(assert (=> b!431888 (=> (not res!254065) (not e!255514))))

(declare-datatypes ((List!7508 0))(
  ( (Nil!7505) (Cons!7504 (h!8360 (_ BitVec 64)) (t!13122 List!7508)) )
))
(declare-fun arrayNoDuplicates!0 (array!26431 (_ BitVec 32) List!7508) Bool)

(assert (=> b!431888 (= res!254065 (arrayNoDuplicates!0 lt!198002 #b00000000000000000000000000000000 Nil!7505))))

(declare-fun b!431889 () Bool)

(assert (=> b!431889 (= e!255514 e!255508)))

(declare-fun res!254066 () Bool)

(assert (=> b!431889 (=> (not res!254066) (not e!255508))))

(assert (=> b!431889 (= res!254066 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!198007 () ListLongMap!6381)

(assert (=> b!431889 (= lt!198007 (getCurrentListMapNoExtraKeys!1400 lt!198002 lt!198003 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!431889 (= lt!198003 (array!26434 (store (arr!12663 _values!549) i!563 (ValueCellFull!5311 v!412)) (size!13015 _values!549)))))

(declare-fun lt!198012 () ListLongMap!6381)

(assert (=> b!431889 (= lt!198012 (getCurrentListMapNoExtraKeys!1400 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!431890 () Bool)

(declare-fun res!254069 () Bool)

(assert (=> b!431890 (=> (not res!254069) (not e!255512))))

(assert (=> b!431890 (= res!254069 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7505))))

(declare-fun b!431880 () Bool)

(declare-fun e!255509 () Bool)

(assert (=> b!431880 (= e!255509 tp_is_empty!11309)))

(declare-fun res!254061 () Bool)

(assert (=> start!39898 (=> (not res!254061) (not e!255512))))

(assert (=> start!39898 (= res!254061 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13014 _keys!709))))))

(assert (=> start!39898 e!255512))

(assert (=> start!39898 tp_is_empty!11309))

(assert (=> start!39898 tp!35999))

(assert (=> start!39898 true))

(declare-fun e!255510 () Bool)

(declare-fun array_inv!9208 (array!26433) Bool)

(assert (=> start!39898 (and (array_inv!9208 _values!549) e!255510)))

(declare-fun array_inv!9209 (array!26431) Bool)

(assert (=> start!39898 (array_inv!9209 _keys!709)))

(declare-fun b!431891 () Bool)

(assert (=> b!431891 (= e!255510 (and e!255509 mapRes!18585))))

(declare-fun condMapEmpty!18585 () Bool)

(declare-fun mapDefault!18585 () ValueCell!5311)

