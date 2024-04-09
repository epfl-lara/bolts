; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40170 () Bool)

(assert start!40170)

(declare-fun b_free!10429 () Bool)

(declare-fun b_next!10429 () Bool)

(assert (=> start!40170 (= b_free!10429 (not b_next!10429))))

(declare-fun tp!36815 () Bool)

(declare-fun b_and!18415 () Bool)

(assert (=> start!40170 (= tp!36815 b_and!18415)))

(declare-fun b!439457 () Bool)

(declare-fun e!259045 () Bool)

(assert (=> b!439457 (= e!259045 (not true))))

(declare-datatypes ((V!16547 0))(
  ( (V!16548 (val!5835 Int)) )
))
(declare-fun minValue!515 () V!16547)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5447 0))(
  ( (ValueCellFull!5447 (v!8078 V!16547)) (EmptyCell!5447) )
))
(declare-datatypes ((array!26953 0))(
  ( (array!26954 (arr!12923 (Array (_ BitVec 32) ValueCell!5447)) (size!13275 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26953)

(declare-fun lt!202301 () array!26953)

(declare-fun zeroValue!515 () V!16547)

(declare-fun k!794 () (_ BitVec 64))

(declare-datatypes ((array!26955 0))(
  ( (array!26956 (arr!12924 (Array (_ BitVec 32) (_ BitVec 64))) (size!13276 (_ BitVec 32))) )
))
(declare-fun lt!202298 () array!26955)

(declare-fun v!412 () V!16547)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun _keys!709 () array!26955)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!7670 0))(
  ( (tuple2!7671 (_1!3845 (_ BitVec 64)) (_2!3845 V!16547)) )
))
(declare-datatypes ((List!7714 0))(
  ( (Nil!7711) (Cons!7710 (h!8566 tuple2!7670) (t!13478 List!7714)) )
))
(declare-datatypes ((ListLongMap!6597 0))(
  ( (ListLongMap!6598 (toList!3314 List!7714)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1496 (array!26955 array!26953 (_ BitVec 32) (_ BitVec 32) V!16547 V!16547 (_ BitVec 32) Int) ListLongMap!6597)

(declare-fun +!1453 (ListLongMap!6597 tuple2!7670) ListLongMap!6597)

(assert (=> b!439457 (= (getCurrentListMapNoExtraKeys!1496 lt!202298 lt!202301 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1453 (getCurrentListMapNoExtraKeys!1496 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7671 k!794 v!412)))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((Unit!13021 0))(
  ( (Unit!13022) )
))
(declare-fun lt!202302 () Unit!13021)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!631 (array!26955 array!26953 (_ BitVec 32) (_ BitVec 32) V!16547 V!16547 (_ BitVec 32) (_ BitVec 64) V!16547 (_ BitVec 32) Int) Unit!13021)

(assert (=> b!439457 (= lt!202302 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!631 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!439458 () Bool)

(declare-fun res!259815 () Bool)

(declare-fun e!259041 () Bool)

(assert (=> b!439458 (=> (not res!259815) (not e!259041))))

(assert (=> b!439458 (= res!259815 (or (= (select (arr!12924 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12924 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!439459 () Bool)

(declare-fun res!259820 () Bool)

(assert (=> b!439459 (=> (not res!259820) (not e!259041))))

(assert (=> b!439459 (= res!259820 (and (= (size!13275 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13276 _keys!709) (size!13275 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!439460 () Bool)

(declare-fun e!259039 () Bool)

(declare-fun e!259042 () Bool)

(declare-fun mapRes!18993 () Bool)

(assert (=> b!439460 (= e!259039 (and e!259042 mapRes!18993))))

(declare-fun condMapEmpty!18993 () Bool)

(declare-fun mapDefault!18993 () ValueCell!5447)

