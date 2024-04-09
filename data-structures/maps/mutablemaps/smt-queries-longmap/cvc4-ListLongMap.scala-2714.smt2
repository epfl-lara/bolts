; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40114 () Bool)

(assert start!40114)

(declare-fun b_free!10373 () Bool)

(declare-fun b_next!10373 () Bool)

(assert (=> start!40114 (= b_free!10373 (not b_next!10373))))

(declare-fun tp!36648 () Bool)

(declare-fun b_and!18359 () Bool)

(assert (=> start!40114 (= tp!36648 b_and!18359)))

(declare-fun b!438114 () Bool)

(declare-fun res!258725 () Bool)

(declare-fun e!258455 () Bool)

(assert (=> b!438114 (=> (not res!258725) (not e!258455))))

(declare-datatypes ((array!26847 0))(
  ( (array!26848 (arr!12870 (Array (_ BitVec 32) (_ BitVec 64))) (size!13222 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26847)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!26847 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!438114 (= res!258725 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!438115 () Bool)

(declare-fun e!258452 () Bool)

(assert (=> b!438115 (= e!258455 e!258452)))

(declare-fun res!258726 () Bool)

(assert (=> b!438115 (=> (not res!258726) (not e!258452))))

(declare-fun lt!201881 () array!26847)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26847 (_ BitVec 32)) Bool)

(assert (=> b!438115 (= res!258726 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!201881 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!438115 (= lt!201881 (array!26848 (store (arr!12870 _keys!709) i!563 k!794) (size!13222 _keys!709)))))

(declare-fun b!438116 () Bool)

(declare-fun e!258451 () Bool)

(declare-fun tp_is_empty!11525 () Bool)

(assert (=> b!438116 (= e!258451 tp_is_empty!11525)))

(declare-fun b!438117 () Bool)

(declare-fun res!258727 () Bool)

(assert (=> b!438117 (=> (not res!258727) (not e!258455))))

(assert (=> b!438117 (= res!258727 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!438118 () Bool)

(declare-fun e!258457 () Bool)

(assert (=> b!438118 (= e!258452 e!258457)))

(declare-fun res!258720 () Bool)

(assert (=> b!438118 (=> (not res!258720) (not e!258457))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!438118 (= res!258720 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!16471 0))(
  ( (V!16472 (val!5807 Int)) )
))
(declare-datatypes ((ValueCell!5419 0))(
  ( (ValueCellFull!5419 (v!8050 V!16471)) (EmptyCell!5419) )
))
(declare-datatypes ((array!26849 0))(
  ( (array!26850 (arr!12871 (Array (_ BitVec 32) ValueCell!5419)) (size!13223 (_ BitVec 32))) )
))
(declare-fun lt!201878 () array!26849)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16471)

(declare-datatypes ((tuple2!7632 0))(
  ( (tuple2!7633 (_1!3826 (_ BitVec 64)) (_2!3826 V!16471)) )
))
(declare-datatypes ((List!7675 0))(
  ( (Nil!7672) (Cons!7671 (h!8527 tuple2!7632) (t!13439 List!7675)) )
))
(declare-datatypes ((ListLongMap!6559 0))(
  ( (ListLongMap!6560 (toList!3295 List!7675)) )
))
(declare-fun lt!201879 () ListLongMap!6559)

(declare-fun minValue!515 () V!16471)

(declare-fun getCurrentListMapNoExtraKeys!1477 (array!26847 array!26849 (_ BitVec 32) (_ BitVec 32) V!16471 V!16471 (_ BitVec 32) Int) ListLongMap!6559)

(assert (=> b!438118 (= lt!201879 (getCurrentListMapNoExtraKeys!1477 lt!201881 lt!201878 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!26849)

(declare-fun v!412 () V!16471)

(assert (=> b!438118 (= lt!201878 (array!26850 (store (arr!12871 _values!549) i!563 (ValueCellFull!5419 v!412)) (size!13223 _values!549)))))

(declare-fun lt!201880 () ListLongMap!6559)

(assert (=> b!438118 (= lt!201880 (getCurrentListMapNoExtraKeys!1477 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!438119 () Bool)

(declare-fun res!258731 () Bool)

(assert (=> b!438119 (=> (not res!258731) (not e!258455))))

(assert (=> b!438119 (= res!258731 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13222 _keys!709))))))

(declare-fun mapIsEmpty!18909 () Bool)

(declare-fun mapRes!18909 () Bool)

(assert (=> mapIsEmpty!18909 mapRes!18909))

(declare-fun b!438120 () Bool)

(declare-fun res!258728 () Bool)

(assert (=> b!438120 (=> (not res!258728) (not e!258455))))

(assert (=> b!438120 (= res!258728 (or (= (select (arr!12870 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12870 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!438121 () Bool)

(declare-fun res!258729 () Bool)

(assert (=> b!438121 (=> (not res!258729) (not e!258455))))

(declare-datatypes ((List!7676 0))(
  ( (Nil!7673) (Cons!7672 (h!8528 (_ BitVec 64)) (t!13440 List!7676)) )
))
(declare-fun arrayNoDuplicates!0 (array!26847 (_ BitVec 32) List!7676) Bool)

(assert (=> b!438121 (= res!258729 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7673))))

(declare-fun b!438122 () Bool)

(declare-fun e!258456 () Bool)

(assert (=> b!438122 (= e!258456 tp_is_empty!11525)))

(declare-fun b!438123 () Bool)

(declare-fun res!258730 () Bool)

(assert (=> b!438123 (=> (not res!258730) (not e!258455))))

(assert (=> b!438123 (= res!258730 (and (= (size!13223 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13222 _keys!709) (size!13223 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!438124 () Bool)

(declare-fun res!258722 () Bool)

(assert (=> b!438124 (=> (not res!258722) (not e!258455))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!438124 (= res!258722 (validMask!0 mask!1025))))

(declare-fun b!438125 () Bool)

(declare-fun res!258723 () Bool)

(assert (=> b!438125 (=> (not res!258723) (not e!258452))))

(assert (=> b!438125 (= res!258723 (bvsle from!863 i!563))))

(declare-fun b!438126 () Bool)

(declare-fun res!258724 () Bool)

(assert (=> b!438126 (=> (not res!258724) (not e!258452))))

(assert (=> b!438126 (= res!258724 (arrayNoDuplicates!0 lt!201881 #b00000000000000000000000000000000 Nil!7673))))

(declare-fun b!438127 () Bool)

(declare-fun e!258453 () Bool)

(assert (=> b!438127 (= e!258453 (and e!258451 mapRes!18909))))

(declare-fun condMapEmpty!18909 () Bool)

(declare-fun mapDefault!18909 () ValueCell!5419)

