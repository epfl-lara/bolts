; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40146 () Bool)

(assert start!40146)

(declare-fun b_free!10405 () Bool)

(declare-fun b_next!10405 () Bool)

(assert (=> start!40146 (= b_free!10405 (not b_next!10405))))

(declare-fun tp!36744 () Bool)

(declare-fun b_and!18391 () Bool)

(assert (=> start!40146 (= tp!36744 b_and!18391)))

(declare-fun b!438881 () Bool)

(declare-fun res!259348 () Bool)

(declare-fun e!258793 () Bool)

(assert (=> b!438881 (=> (not res!259348) (not e!258793))))

(declare-datatypes ((array!26907 0))(
  ( (array!26908 (arr!12900 (Array (_ BitVec 32) (_ BitVec 64))) (size!13252 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26907)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!438881 (= res!259348 (or (= (select (arr!12900 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12900 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!438882 () Bool)

(declare-fun e!258788 () Bool)

(declare-fun e!258792 () Bool)

(assert (=> b!438882 (= e!258788 e!258792)))

(declare-fun res!259349 () Bool)

(assert (=> b!438882 (=> (not res!259349) (not e!258792))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!438882 (= res!259349 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!202121 () array!26907)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((V!16515 0))(
  ( (V!16516 (val!5823 Int)) )
))
(declare-datatypes ((tuple2!7654 0))(
  ( (tuple2!7655 (_1!3837 (_ BitVec 64)) (_2!3837 V!16515)) )
))
(declare-datatypes ((List!7698 0))(
  ( (Nil!7695) (Cons!7694 (h!8550 tuple2!7654) (t!13462 List!7698)) )
))
(declare-datatypes ((ListLongMap!6581 0))(
  ( (ListLongMap!6582 (toList!3306 List!7698)) )
))
(declare-fun lt!202119 () ListLongMap!6581)

(declare-fun minValue!515 () V!16515)

(declare-datatypes ((ValueCell!5435 0))(
  ( (ValueCellFull!5435 (v!8066 V!16515)) (EmptyCell!5435) )
))
(declare-datatypes ((array!26909 0))(
  ( (array!26910 (arr!12901 (Array (_ BitVec 32) ValueCell!5435)) (size!13253 (_ BitVec 32))) )
))
(declare-fun lt!202122 () array!26909)

(declare-fun zeroValue!515 () V!16515)

(declare-fun getCurrentListMapNoExtraKeys!1488 (array!26907 array!26909 (_ BitVec 32) (_ BitVec 32) V!16515 V!16515 (_ BitVec 32) Int) ListLongMap!6581)

(assert (=> b!438882 (= lt!202119 (getCurrentListMapNoExtraKeys!1488 lt!202121 lt!202122 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!26909)

(declare-fun v!412 () V!16515)

(assert (=> b!438882 (= lt!202122 (array!26910 (store (arr!12901 _values!549) i!563 (ValueCellFull!5435 v!412)) (size!13253 _values!549)))))

(declare-fun lt!202120 () ListLongMap!6581)

(assert (=> b!438882 (= lt!202120 (getCurrentListMapNoExtraKeys!1488 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!438883 () Bool)

(declare-fun e!258791 () Bool)

(declare-fun tp_is_empty!11557 () Bool)

(assert (=> b!438883 (= e!258791 tp_is_empty!11557)))

(declare-fun b!438884 () Bool)

(declare-fun res!259355 () Bool)

(assert (=> b!438884 (=> (not res!259355) (not e!258793))))

(assert (=> b!438884 (= res!259355 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13252 _keys!709))))))

(declare-fun b!438885 () Bool)

(assert (=> b!438885 (= e!258793 e!258788)))

(declare-fun res!259354 () Bool)

(assert (=> b!438885 (=> (not res!259354) (not e!258788))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26907 (_ BitVec 32)) Bool)

(assert (=> b!438885 (= res!259354 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!202121 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!438885 (= lt!202121 (array!26908 (store (arr!12900 _keys!709) i!563 k!794) (size!13252 _keys!709)))))

(declare-fun b!438886 () Bool)

(declare-fun e!258790 () Bool)

(assert (=> b!438886 (= e!258790 tp_is_empty!11557)))

(declare-fun b!438887 () Bool)

(declare-fun e!258789 () Bool)

(declare-fun mapRes!18957 () Bool)

(assert (=> b!438887 (= e!258789 (and e!258790 mapRes!18957))))

(declare-fun condMapEmpty!18957 () Bool)

(declare-fun mapDefault!18957 () ValueCell!5435)

