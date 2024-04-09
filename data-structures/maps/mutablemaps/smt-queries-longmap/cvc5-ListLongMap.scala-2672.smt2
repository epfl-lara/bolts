; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39858 () Bool)

(assert start!39858)

(declare-fun b_free!10117 () Bool)

(declare-fun b_next!10117 () Bool)

(assert (=> start!39858 (= b_free!10117 (not b_next!10117))))

(declare-fun tp!35880 () Bool)

(declare-fun b_and!17911 () Bool)

(assert (=> start!39858 (= tp!35880 b_and!17911)))

(declare-fun b!430633 () Bool)

(declare-fun e!254912 () Bool)

(declare-fun e!254907 () Bool)

(assert (=> b!430633 (= e!254912 (not e!254907))))

(declare-fun res!253168 () Bool)

(assert (=> b!430633 (=> res!253168 e!254907)))

(declare-datatypes ((array!26351 0))(
  ( (array!26352 (arr!12622 (Array (_ BitVec 32) (_ BitVec 64))) (size!12974 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26351)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!430633 (= res!253168 (not (validKeyInArray!0 (select (arr!12622 _keys!709) from!863))))))

(declare-datatypes ((V!16131 0))(
  ( (V!16132 (val!5679 Int)) )
))
(declare-datatypes ((tuple2!7416 0))(
  ( (tuple2!7417 (_1!3718 (_ BitVec 64)) (_2!3718 V!16131)) )
))
(declare-datatypes ((List!7470 0))(
  ( (Nil!7467) (Cons!7466 (h!8322 tuple2!7416) (t!13044 List!7470)) )
))
(declare-datatypes ((ListLongMap!6343 0))(
  ( (ListLongMap!6344 (toList!3187 List!7470)) )
))
(declare-fun lt!197110 () ListLongMap!6343)

(declare-fun lt!197102 () ListLongMap!6343)

(assert (=> b!430633 (= lt!197110 lt!197102)))

(declare-fun lt!197100 () ListLongMap!6343)

(declare-fun lt!197101 () tuple2!7416)

(declare-fun +!1335 (ListLongMap!6343 tuple2!7416) ListLongMap!6343)

(assert (=> b!430633 (= lt!197102 (+!1335 lt!197100 lt!197101))))

(declare-fun minValue!515 () V!16131)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!16131)

(declare-fun lt!197105 () array!26351)

(declare-datatypes ((ValueCell!5291 0))(
  ( (ValueCellFull!5291 (v!7922 V!16131)) (EmptyCell!5291) )
))
(declare-datatypes ((array!26353 0))(
  ( (array!26354 (arr!12623 (Array (_ BitVec 32) ValueCell!5291)) (size!12975 (_ BitVec 32))) )
))
(declare-fun lt!197104 () array!26353)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1383 (array!26351 array!26353 (_ BitVec 32) (_ BitVec 32) V!16131 V!16131 (_ BitVec 32) Int) ListLongMap!6343)

(assert (=> b!430633 (= lt!197110 (getCurrentListMapNoExtraKeys!1383 lt!197105 lt!197104 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun v!412 () V!16131)

(assert (=> b!430633 (= lt!197101 (tuple2!7417 k!794 v!412))))

(declare-fun _values!549 () array!26353)

(assert (=> b!430633 (= lt!197100 (getCurrentListMapNoExtraKeys!1383 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((Unit!12648 0))(
  ( (Unit!12649) )
))
(declare-fun lt!197109 () Unit!12648)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!530 (array!26351 array!26353 (_ BitVec 32) (_ BitVec 32) V!16131 V!16131 (_ BitVec 32) (_ BitVec 64) V!16131 (_ BitVec 32) Int) Unit!12648)

(assert (=> b!430633 (= lt!197109 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!530 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!430634 () Bool)

(declare-fun e!254911 () Bool)

(declare-fun tp_is_empty!11269 () Bool)

(assert (=> b!430634 (= e!254911 tp_is_empty!11269)))

(declare-fun b!430635 () Bool)

(declare-fun res!253163 () Bool)

(declare-fun e!254906 () Bool)

(assert (=> b!430635 (=> (not res!253163) (not e!254906))))

(declare-datatypes ((List!7471 0))(
  ( (Nil!7468) (Cons!7467 (h!8323 (_ BitVec 64)) (t!13045 List!7471)) )
))
(declare-fun arrayNoDuplicates!0 (array!26351 (_ BitVec 32) List!7471) Bool)

(assert (=> b!430635 (= res!253163 (arrayNoDuplicates!0 lt!197105 #b00000000000000000000000000000000 Nil!7468))))

(declare-fun b!430637 () Bool)

(declare-fun e!254910 () Bool)

(assert (=> b!430637 (= e!254907 e!254910)))

(declare-fun res!253157 () Bool)

(assert (=> b!430637 (=> res!253157 e!254910)))

(assert (=> b!430637 (= res!253157 (= k!794 (select (arr!12622 _keys!709) from!863)))))

(assert (=> b!430637 (not (= (select (arr!12622 _keys!709) from!863) k!794))))

(declare-fun lt!197111 () Unit!12648)

(declare-fun e!254909 () Unit!12648)

(assert (=> b!430637 (= lt!197111 e!254909)))

(declare-fun c!55436 () Bool)

(assert (=> b!430637 (= c!55436 (= (select (arr!12622 _keys!709) from!863) k!794))))

(declare-fun lt!197099 () ListLongMap!6343)

(declare-fun lt!197098 () ListLongMap!6343)

(assert (=> b!430637 (= lt!197099 lt!197098)))

(declare-fun lt!197108 () tuple2!7416)

(assert (=> b!430637 (= lt!197098 (+!1335 lt!197102 lt!197108))))

(declare-fun lt!197107 () V!16131)

(assert (=> b!430637 (= lt!197108 (tuple2!7417 (select (arr!12622 _keys!709) from!863) lt!197107))))

(declare-fun get!6271 (ValueCell!5291 V!16131) V!16131)

(declare-fun dynLambda!778 (Int (_ BitVec 64)) V!16131)

(assert (=> b!430637 (= lt!197107 (get!6271 (select (arr!12623 _values!549) from!863) (dynLambda!778 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!430638 () Bool)

(declare-fun e!254914 () Bool)

(assert (=> b!430638 (= e!254914 e!254906)))

(declare-fun res!253166 () Bool)

(assert (=> b!430638 (=> (not res!253166) (not e!254906))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26351 (_ BitVec 32)) Bool)

(assert (=> b!430638 (= res!253166 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!197105 mask!1025))))

(assert (=> b!430638 (= lt!197105 (array!26352 (store (arr!12622 _keys!709) i!563 k!794) (size!12974 _keys!709)))))

(declare-fun mapNonEmpty!18525 () Bool)

(declare-fun mapRes!18525 () Bool)

(declare-fun tp!35879 () Bool)

(declare-fun e!254913 () Bool)

(assert (=> mapNonEmpty!18525 (= mapRes!18525 (and tp!35879 e!254913))))

(declare-fun mapKey!18525 () (_ BitVec 32))

(declare-fun mapValue!18525 () ValueCell!5291)

(declare-fun mapRest!18525 () (Array (_ BitVec 32) ValueCell!5291))

(assert (=> mapNonEmpty!18525 (= (arr!12623 _values!549) (store mapRest!18525 mapKey!18525 mapValue!18525))))

(declare-fun b!430639 () Bool)

(declare-fun res!253156 () Bool)

(assert (=> b!430639 (=> (not res!253156) (not e!254906))))

(assert (=> b!430639 (= res!253156 (bvsle from!863 i!563))))

(declare-fun b!430640 () Bool)

(declare-fun res!253167 () Bool)

(assert (=> b!430640 (=> (not res!253167) (not e!254914))))

(assert (=> b!430640 (= res!253167 (validKeyInArray!0 k!794))))

(declare-fun b!430641 () Bool)

(declare-fun res!253165 () Bool)

(assert (=> b!430641 (=> (not res!253165) (not e!254914))))

(declare-fun arrayContainsKey!0 (array!26351 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!430641 (= res!253165 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!430642 () Bool)

(declare-fun res!253159 () Bool)

(assert (=> b!430642 (=> (not res!253159) (not e!254914))))

(assert (=> b!430642 (= res!253159 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12974 _keys!709))))))

(declare-fun b!430643 () Bool)

(declare-fun res!253161 () Bool)

(assert (=> b!430643 (=> (not res!253161) (not e!254914))))

(assert (=> b!430643 (= res!253161 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7468))))

(declare-fun b!430644 () Bool)

(declare-fun e!254905 () Bool)

(assert (=> b!430644 (= e!254905 (and e!254911 mapRes!18525))))

(declare-fun condMapEmpty!18525 () Bool)

(declare-fun mapDefault!18525 () ValueCell!5291)

