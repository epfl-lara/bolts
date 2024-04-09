; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40180 () Bool)

(assert start!40180)

(declare-fun b_free!10439 () Bool)

(declare-fun b_next!10439 () Bool)

(assert (=> start!40180 (= b_free!10439 (not b_next!10439))))

(declare-fun tp!36845 () Bool)

(declare-fun b_and!18425 () Bool)

(assert (=> start!40180 (= tp!36845 b_and!18425)))

(declare-fun b!439697 () Bool)

(declare-fun e!259145 () Bool)

(declare-fun tp_is_empty!11591 () Bool)

(assert (=> b!439697 (= e!259145 tp_is_empty!11591)))

(declare-fun b!439698 () Bool)

(declare-fun res!260011 () Bool)

(declare-fun e!259144 () Bool)

(assert (=> b!439698 (=> (not res!260011) (not e!259144))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!439698 (= res!260011 (bvsle from!863 i!563))))

(declare-fun b!439699 () Bool)

(declare-fun e!259149 () Bool)

(assert (=> b!439699 (= e!259149 e!259144)))

(declare-fun res!260018 () Bool)

(assert (=> b!439699 (=> (not res!260018) (not e!259144))))

(declare-datatypes ((array!26973 0))(
  ( (array!26974 (arr!12933 (Array (_ BitVec 32) (_ BitVec 64))) (size!13285 (_ BitVec 32))) )
))
(declare-fun lt!202374 () array!26973)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26973 (_ BitVec 32)) Bool)

(assert (=> b!439699 (= res!260018 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!202374 mask!1025))))

(declare-fun _keys!709 () array!26973)

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!439699 (= lt!202374 (array!26974 (store (arr!12933 _keys!709) i!563 k!794) (size!13285 _keys!709)))))

(declare-fun b!439700 () Bool)

(declare-fun res!260015 () Bool)

(assert (=> b!439700 (=> (not res!260015) (not e!259149))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16559 0))(
  ( (V!16560 (val!5840 Int)) )
))
(declare-datatypes ((ValueCell!5452 0))(
  ( (ValueCellFull!5452 (v!8083 V!16559)) (EmptyCell!5452) )
))
(declare-datatypes ((array!26975 0))(
  ( (array!26976 (arr!12934 (Array (_ BitVec 32) ValueCell!5452)) (size!13286 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26975)

(assert (=> b!439700 (= res!260015 (and (= (size!13286 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13285 _keys!709) (size!13286 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun res!260008 () Bool)

(assert (=> start!40180 (=> (not res!260008) (not e!259149))))

(assert (=> start!40180 (= res!260008 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13285 _keys!709))))))

(assert (=> start!40180 e!259149))

(assert (=> start!40180 tp_is_empty!11591))

(assert (=> start!40180 tp!36845))

(assert (=> start!40180 true))

(declare-fun e!259147 () Bool)

(declare-fun array_inv!9382 (array!26975) Bool)

(assert (=> start!40180 (and (array_inv!9382 _values!549) e!259147)))

(declare-fun array_inv!9383 (array!26973) Bool)

(assert (=> start!40180 (array_inv!9383 _keys!709)))

(declare-fun b!439701 () Bool)

(declare-fun e!259146 () Bool)

(assert (=> b!439701 (= e!259146 tp_is_empty!11591)))

(declare-fun b!439702 () Bool)

(declare-fun res!260013 () Bool)

(assert (=> b!439702 (=> (not res!260013) (not e!259149))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!439702 (= res!260013 (validKeyInArray!0 k!794))))

(declare-fun b!439703 () Bool)

(declare-fun res!260009 () Bool)

(assert (=> b!439703 (=> (not res!260009) (not e!259149))))

(assert (=> b!439703 (= res!260009 (or (= (select (arr!12933 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12933 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!439704 () Bool)

(declare-fun e!259148 () Bool)

(assert (=> b!439704 (= e!259144 e!259148)))

(declare-fun res!260007 () Bool)

(assert (=> b!439704 (=> (not res!260007) (not e!259148))))

(assert (=> b!439704 (= res!260007 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!16559)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!202376 () array!26975)

(declare-fun zeroValue!515 () V!16559)

(declare-datatypes ((tuple2!7680 0))(
  ( (tuple2!7681 (_1!3850 (_ BitVec 64)) (_2!3850 V!16559)) )
))
(declare-datatypes ((List!7722 0))(
  ( (Nil!7719) (Cons!7718 (h!8574 tuple2!7680) (t!13486 List!7722)) )
))
(declare-datatypes ((ListLongMap!6607 0))(
  ( (ListLongMap!6608 (toList!3319 List!7722)) )
))
(declare-fun lt!202373 () ListLongMap!6607)

(declare-fun getCurrentListMapNoExtraKeys!1501 (array!26973 array!26975 (_ BitVec 32) (_ BitVec 32) V!16559 V!16559 (_ BitVec 32) Int) ListLongMap!6607)

(assert (=> b!439704 (= lt!202373 (getCurrentListMapNoExtraKeys!1501 lt!202374 lt!202376 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16559)

(assert (=> b!439704 (= lt!202376 (array!26976 (store (arr!12934 _values!549) i!563 (ValueCellFull!5452 v!412)) (size!13286 _values!549)))))

(declare-fun lt!202375 () ListLongMap!6607)

(assert (=> b!439704 (= lt!202375 (getCurrentListMapNoExtraKeys!1501 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!439705 () Bool)

(declare-fun res!260012 () Bool)

(assert (=> b!439705 (=> (not res!260012) (not e!259149))))

(declare-fun arrayContainsKey!0 (array!26973 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!439705 (= res!260012 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!439706 () Bool)

(declare-fun res!260016 () Bool)

(assert (=> b!439706 (=> (not res!260016) (not e!259149))))

(assert (=> b!439706 (= res!260016 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!439707 () Bool)

(declare-fun res!260017 () Bool)

(assert (=> b!439707 (=> (not res!260017) (not e!259144))))

(declare-datatypes ((List!7723 0))(
  ( (Nil!7720) (Cons!7719 (h!8575 (_ BitVec 64)) (t!13487 List!7723)) )
))
(declare-fun arrayNoDuplicates!0 (array!26973 (_ BitVec 32) List!7723) Bool)

(assert (=> b!439707 (= res!260017 (arrayNoDuplicates!0 lt!202374 #b00000000000000000000000000000000 Nil!7720))))

(declare-fun b!439708 () Bool)

(declare-fun res!260010 () Bool)

(assert (=> b!439708 (=> (not res!260010) (not e!259149))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!439708 (= res!260010 (validMask!0 mask!1025))))

(declare-fun b!439709 () Bool)

(declare-fun res!260019 () Bool)

(assert (=> b!439709 (=> (not res!260019) (not e!259149))))

(assert (=> b!439709 (= res!260019 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13285 _keys!709))))))

(declare-fun mapIsEmpty!19008 () Bool)

(declare-fun mapRes!19008 () Bool)

(assert (=> mapIsEmpty!19008 mapRes!19008))

(declare-fun b!439710 () Bool)

(declare-fun res!260014 () Bool)

(assert (=> b!439710 (=> (not res!260014) (not e!259149))))

(assert (=> b!439710 (= res!260014 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7720))))

(declare-fun b!439711 () Bool)

(assert (=> b!439711 (= e!259147 (and e!259146 mapRes!19008))))

(declare-fun condMapEmpty!19008 () Bool)

(declare-fun mapDefault!19008 () ValueCell!5452)

