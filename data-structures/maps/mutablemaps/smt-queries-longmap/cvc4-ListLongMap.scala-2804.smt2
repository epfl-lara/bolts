; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40724 () Bool)

(assert start!40724)

(declare-fun b_free!10727 () Bool)

(declare-fun b_next!10727 () Bool)

(assert (=> start!40724 (= b_free!10727 (not b_next!10727))))

(declare-fun tp!38001 () Bool)

(declare-fun b_and!18753 () Bool)

(assert (=> start!40724 (= tp!38001 b_and!18753)))

(declare-fun b!450481 () Bool)

(declare-fun e!263966 () Bool)

(declare-datatypes ((V!17191 0))(
  ( (V!17192 (val!6077 Int)) )
))
(declare-datatypes ((tuple2!7928 0))(
  ( (tuple2!7929 (_1!3974 (_ BitVec 64)) (_2!3974 V!17191)) )
))
(declare-datatypes ((List!8037 0))(
  ( (Nil!8034) (Cons!8033 (h!8889 tuple2!7928) (t!13807 List!8037)) )
))
(declare-datatypes ((ListLongMap!6855 0))(
  ( (ListLongMap!6856 (toList!3443 List!8037)) )
))
(declare-fun call!29771 () ListLongMap!6855)

(declare-fun call!29770 () ListLongMap!6855)

(assert (=> b!450481 (= e!263966 (= call!29771 call!29770))))

(declare-fun b!450482 () Bool)

(declare-fun res!268223 () Bool)

(declare-fun e!263962 () Bool)

(assert (=> b!450482 (=> (not res!268223) (not e!263962))))

(declare-datatypes ((array!27897 0))(
  ( (array!27898 (arr!13391 (Array (_ BitVec 32) (_ BitVec 64))) (size!13743 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27897)

(declare-datatypes ((List!8038 0))(
  ( (Nil!8035) (Cons!8034 (h!8890 (_ BitVec 64)) (t!13808 List!8038)) )
))
(declare-fun arrayNoDuplicates!0 (array!27897 (_ BitVec 32) List!8038) Bool)

(assert (=> b!450482 (= res!268223 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8035))))

(declare-fun b!450484 () Bool)

(declare-fun res!268231 () Bool)

(assert (=> b!450484 (=> (not res!268231) (not e!263962))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27897 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!450484 (= res!268231 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!450485 () Bool)

(declare-fun v!412 () V!17191)

(declare-fun +!1514 (ListLongMap!6855 tuple2!7928) ListLongMap!6855)

(assert (=> b!450485 (= e!263966 (= call!29770 (+!1514 call!29771 (tuple2!7929 k!794 v!412))))))

(declare-fun b!450486 () Bool)

(declare-fun e!263963 () Bool)

(declare-fun tp_is_empty!12065 () Bool)

(assert (=> b!450486 (= e!263963 tp_is_empty!12065)))

(declare-fun b!450487 () Bool)

(declare-fun res!268222 () Bool)

(assert (=> b!450487 (=> (not res!268222) (not e!263962))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!450487 (= res!268222 (or (= (select (arr!13391 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13391 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!450488 () Bool)

(declare-fun e!263967 () Bool)

(assert (=> b!450488 (= e!263962 e!263967)))

(declare-fun res!268233 () Bool)

(assert (=> b!450488 (=> (not res!268233) (not e!263967))))

(declare-fun lt!204633 () array!27897)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27897 (_ BitVec 32)) Bool)

(assert (=> b!450488 (= res!268233 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204633 mask!1025))))

(assert (=> b!450488 (= lt!204633 (array!27898 (store (arr!13391 _keys!709) i!563 k!794) (size!13743 _keys!709)))))

(declare-fun b!450489 () Bool)

(declare-fun res!268221 () Bool)

(assert (=> b!450489 (=> (not res!268221) (not e!263962))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!450489 (= res!268221 (validKeyInArray!0 k!794))))

(declare-fun b!450490 () Bool)

(declare-fun e!263965 () Bool)

(declare-datatypes ((ValueCell!5689 0))(
  ( (ValueCellFull!5689 (v!8328 V!17191)) (EmptyCell!5689) )
))
(declare-datatypes ((array!27899 0))(
  ( (array!27900 (arr!13392 (Array (_ BitVec 32) ValueCell!5689)) (size!13744 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27899)

(assert (=> b!450490 (= e!263965 (bvslt i!563 (size!13744 _values!549)))))

(declare-fun b!450491 () Bool)

(declare-fun res!268224 () Bool)

(assert (=> b!450491 (=> (not res!268224) (not e!263962))))

(assert (=> b!450491 (= res!268224 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13743 _keys!709))))))

(declare-fun mapNonEmpty!19731 () Bool)

(declare-fun mapRes!19731 () Bool)

(declare-fun tp!38000 () Bool)

(assert (=> mapNonEmpty!19731 (= mapRes!19731 (and tp!38000 e!263963))))

(declare-fun mapKey!19731 () (_ BitVec 32))

(declare-fun mapValue!19731 () ValueCell!5689)

(declare-fun mapRest!19731 () (Array (_ BitVec 32) ValueCell!5689))

(assert (=> mapNonEmpty!19731 (= (arr!13392 _values!549) (store mapRest!19731 mapKey!19731 mapValue!19731))))

(declare-fun b!450492 () Bool)

(declare-fun res!268229 () Bool)

(assert (=> b!450492 (=> (not res!268229) (not e!263962))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!450492 (= res!268229 (and (= (size!13744 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13743 _keys!709) (size!13744 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!450493 () Bool)

(declare-fun e!263964 () Bool)

(assert (=> b!450493 (= e!263964 tp_is_empty!12065)))

(declare-fun b!450494 () Bool)

(declare-fun res!268228 () Bool)

(assert (=> b!450494 (=> (not res!268228) (not e!263967))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!450494 (= res!268228 (bvsle from!863 i!563))))

(declare-fun b!450495 () Bool)

(declare-fun e!263960 () Bool)

(assert (=> b!450495 (= e!263967 e!263960)))

(declare-fun res!268232 () Bool)

(assert (=> b!450495 (=> (not res!268232) (not e!263960))))

(assert (=> b!450495 (= res!268232 (= from!863 i!563))))

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!204635 () array!27899)

(declare-fun zeroValue!515 () V!17191)

(declare-fun lt!204634 () ListLongMap!6855)

(declare-fun minValue!515 () V!17191)

(declare-fun getCurrentListMapNoExtraKeys!1621 (array!27897 array!27899 (_ BitVec 32) (_ BitVec 32) V!17191 V!17191 (_ BitVec 32) Int) ListLongMap!6855)

(assert (=> b!450495 (= lt!204634 (getCurrentListMapNoExtraKeys!1621 lt!204633 lt!204635 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!450495 (= lt!204635 (array!27900 (store (arr!13392 _values!549) i!563 (ValueCellFull!5689 v!412)) (size!13744 _values!549)))))

(declare-fun lt!204636 () ListLongMap!6855)

(assert (=> b!450495 (= lt!204636 (getCurrentListMapNoExtraKeys!1621 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!450496 () Bool)

(declare-fun e!263961 () Bool)

(assert (=> b!450496 (= e!263961 (and e!263964 mapRes!19731))))

(declare-fun condMapEmpty!19731 () Bool)

(declare-fun mapDefault!19731 () ValueCell!5689)

