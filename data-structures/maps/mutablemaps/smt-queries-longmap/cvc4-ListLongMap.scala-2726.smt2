; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40186 () Bool)

(assert start!40186)

(declare-fun b_free!10445 () Bool)

(declare-fun b_next!10445 () Bool)

(assert (=> start!40186 (= b_free!10445 (not b_next!10445))))

(declare-fun tp!36864 () Bool)

(declare-fun b_and!18431 () Bool)

(assert (=> start!40186 (= tp!36864 b_and!18431)))

(declare-fun b!439841 () Bool)

(declare-fun res!260128 () Bool)

(declare-fun e!259211 () Bool)

(assert (=> b!439841 (=> (not res!260128) (not e!259211))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!439841 (= res!260128 (validMask!0 mask!1025))))

(declare-fun b!439843 () Bool)

(declare-fun res!260127 () Bool)

(assert (=> b!439843 (=> (not res!260127) (not e!259211))))

(declare-datatypes ((array!26985 0))(
  ( (array!26986 (arr!12939 (Array (_ BitVec 32) (_ BitVec 64))) (size!13291 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26985)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!439843 (= res!260127 (or (= (select (arr!12939 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12939 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!439844 () Bool)

(declare-fun e!259212 () Bool)

(assert (=> b!439844 (= e!259211 e!259212)))

(declare-fun res!260135 () Bool)

(assert (=> b!439844 (=> (not res!260135) (not e!259212))))

(declare-fun lt!202418 () array!26985)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26985 (_ BitVec 32)) Bool)

(assert (=> b!439844 (= res!260135 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!202418 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!439844 (= lt!202418 (array!26986 (store (arr!12939 _keys!709) i!563 k!794) (size!13291 _keys!709)))))

(declare-fun b!439845 () Bool)

(declare-fun res!260133 () Bool)

(assert (=> b!439845 (=> (not res!260133) (not e!259212))))

(declare-datatypes ((List!7728 0))(
  ( (Nil!7725) (Cons!7724 (h!8580 (_ BitVec 64)) (t!13492 List!7728)) )
))
(declare-fun arrayNoDuplicates!0 (array!26985 (_ BitVec 32) List!7728) Bool)

(assert (=> b!439845 (= res!260133 (arrayNoDuplicates!0 lt!202418 #b00000000000000000000000000000000 Nil!7725))))

(declare-fun b!439846 () Bool)

(declare-fun res!260132 () Bool)

(assert (=> b!439846 (=> (not res!260132) (not e!259211))))

(declare-fun arrayContainsKey!0 (array!26985 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!439846 (= res!260132 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!439847 () Bool)

(declare-fun res!260125 () Bool)

(assert (=> b!439847 (=> (not res!260125) (not e!259211))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!439847 (= res!260125 (validKeyInArray!0 k!794))))

(declare-fun b!439848 () Bool)

(declare-fun e!259209 () Bool)

(declare-fun tp_is_empty!11597 () Bool)

(assert (=> b!439848 (= e!259209 tp_is_empty!11597)))

(declare-fun b!439849 () Bool)

(declare-fun res!260136 () Bool)

(assert (=> b!439849 (=> (not res!260136) (not e!259211))))

(assert (=> b!439849 (= res!260136 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7725))))

(declare-fun b!439850 () Bool)

(declare-fun e!259213 () Bool)

(assert (=> b!439850 (= e!259213 (not true))))

(declare-datatypes ((V!16567 0))(
  ( (V!16568 (val!5843 Int)) )
))
(declare-fun minValue!515 () V!16567)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((ValueCell!5455 0))(
  ( (ValueCellFull!5455 (v!8086 V!16567)) (EmptyCell!5455) )
))
(declare-datatypes ((array!26987 0))(
  ( (array!26988 (arr!12940 (Array (_ BitVec 32) ValueCell!5455)) (size!13292 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26987)

(declare-fun zeroValue!515 () V!16567)

(declare-fun v!412 () V!16567)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!202421 () array!26987)

(declare-datatypes ((tuple2!7686 0))(
  ( (tuple2!7687 (_1!3853 (_ BitVec 64)) (_2!3853 V!16567)) )
))
(declare-datatypes ((List!7729 0))(
  ( (Nil!7726) (Cons!7725 (h!8581 tuple2!7686) (t!13493 List!7729)) )
))
(declare-datatypes ((ListLongMap!6613 0))(
  ( (ListLongMap!6614 (toList!3322 List!7729)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1504 (array!26985 array!26987 (_ BitVec 32) (_ BitVec 32) V!16567 V!16567 (_ BitVec 32) Int) ListLongMap!6613)

(declare-fun +!1459 (ListLongMap!6613 tuple2!7686) ListLongMap!6613)

(assert (=> b!439850 (= (getCurrentListMapNoExtraKeys!1504 lt!202418 lt!202421 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1459 (getCurrentListMapNoExtraKeys!1504 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7687 k!794 v!412)))))

(declare-datatypes ((Unit!13033 0))(
  ( (Unit!13034) )
))
(declare-fun lt!202419 () Unit!13033)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!637 (array!26985 array!26987 (_ BitVec 32) (_ BitVec 32) V!16567 V!16567 (_ BitVec 32) (_ BitVec 64) V!16567 (_ BitVec 32) Int) Unit!13033)

(assert (=> b!439850 (= lt!202419 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!637 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!439851 () Bool)

(declare-fun e!259208 () Bool)

(declare-fun mapRes!19017 () Bool)

(assert (=> b!439851 (= e!259208 (and e!259209 mapRes!19017))))

(declare-fun condMapEmpty!19017 () Bool)

(declare-fun mapDefault!19017 () ValueCell!5455)

