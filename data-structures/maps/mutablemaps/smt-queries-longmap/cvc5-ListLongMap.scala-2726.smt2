; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40182 () Bool)

(assert start!40182)

(declare-fun b_free!10441 () Bool)

(declare-fun b_next!10441 () Bool)

(assert (=> start!40182 (= b_free!10441 (not b_next!10441))))

(declare-fun tp!36851 () Bool)

(declare-fun b_and!18427 () Bool)

(assert (=> start!40182 (= tp!36851 b_and!18427)))

(declare-fun b!439745 () Bool)

(declare-fun res!260047 () Bool)

(declare-fun e!259168 () Bool)

(assert (=> b!439745 (=> (not res!260047) (not e!259168))))

(declare-datatypes ((array!26977 0))(
  ( (array!26978 (arr!12935 (Array (_ BitVec 32) (_ BitVec 64))) (size!13287 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26977)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16563 0))(
  ( (V!16564 (val!5841 Int)) )
))
(declare-datatypes ((ValueCell!5453 0))(
  ( (ValueCellFull!5453 (v!8084 V!16563)) (EmptyCell!5453) )
))
(declare-datatypes ((array!26979 0))(
  ( (array!26980 (arr!12936 (Array (_ BitVec 32) ValueCell!5453)) (size!13288 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26979)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!439745 (= res!260047 (and (= (size!13288 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13287 _keys!709) (size!13288 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!439746 () Bool)

(declare-fun res!260055 () Bool)

(assert (=> b!439746 (=> (not res!260055) (not e!259168))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!439746 (= res!260055 (validKeyInArray!0 k!794))))

(declare-fun b!439747 () Bool)

(declare-fun e!259167 () Bool)

(declare-fun tp_is_empty!11593 () Bool)

(assert (=> b!439747 (= e!259167 tp_is_empty!11593)))

(declare-fun b!439748 () Bool)

(declare-fun res!260046 () Bool)

(assert (=> b!439748 (=> (not res!260046) (not e!259168))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!439748 (= res!260046 (or (= (select (arr!12935 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12935 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!439749 () Bool)

(declare-fun e!259165 () Bool)

(declare-fun e!259170 () Bool)

(assert (=> b!439749 (= e!259165 e!259170)))

(declare-fun res!260054 () Bool)

(assert (=> b!439749 (=> (not res!260054) (not e!259170))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!439749 (= res!260054 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((tuple2!7682 0))(
  ( (tuple2!7683 (_1!3851 (_ BitVec 64)) (_2!3851 V!16563)) )
))
(declare-datatypes ((List!7724 0))(
  ( (Nil!7721) (Cons!7720 (h!8576 tuple2!7682) (t!13488 List!7724)) )
))
(declare-datatypes ((ListLongMap!6609 0))(
  ( (ListLongMap!6610 (toList!3320 List!7724)) )
))
(declare-fun lt!202391 () ListLongMap!6609)

(declare-fun minValue!515 () V!16563)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!202388 () array!26979)

(declare-fun zeroValue!515 () V!16563)

(declare-fun lt!202389 () array!26977)

(declare-fun getCurrentListMapNoExtraKeys!1502 (array!26977 array!26979 (_ BitVec 32) (_ BitVec 32) V!16563 V!16563 (_ BitVec 32) Int) ListLongMap!6609)

(assert (=> b!439749 (= lt!202391 (getCurrentListMapNoExtraKeys!1502 lt!202389 lt!202388 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16563)

(assert (=> b!439749 (= lt!202388 (array!26980 (store (arr!12936 _values!549) i!563 (ValueCellFull!5453 v!412)) (size!13288 _values!549)))))

(declare-fun lt!202392 () ListLongMap!6609)

(assert (=> b!439749 (= lt!202392 (getCurrentListMapNoExtraKeys!1502 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!439750 () Bool)

(declare-fun res!260048 () Bool)

(assert (=> b!439750 (=> (not res!260048) (not e!259168))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26977 (_ BitVec 32)) Bool)

(assert (=> b!439750 (= res!260048 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!439751 () Bool)

(declare-fun res!260051 () Bool)

(assert (=> b!439751 (=> (not res!260051) (not e!259165))))

(declare-datatypes ((List!7725 0))(
  ( (Nil!7722) (Cons!7721 (h!8577 (_ BitVec 64)) (t!13489 List!7725)) )
))
(declare-fun arrayNoDuplicates!0 (array!26977 (_ BitVec 32) List!7725) Bool)

(assert (=> b!439751 (= res!260051 (arrayNoDuplicates!0 lt!202389 #b00000000000000000000000000000000 Nil!7722))))

(declare-fun b!439752 () Bool)

(declare-fun res!260050 () Bool)

(assert (=> b!439752 (=> (not res!260050) (not e!259165))))

(assert (=> b!439752 (= res!260050 (bvsle from!863 i!563))))

(declare-fun b!439753 () Bool)

(declare-fun e!259169 () Bool)

(declare-fun mapRes!19011 () Bool)

(assert (=> b!439753 (= e!259169 (and e!259167 mapRes!19011))))

(declare-fun condMapEmpty!19011 () Bool)

(declare-fun mapDefault!19011 () ValueCell!5453)

