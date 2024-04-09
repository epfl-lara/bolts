; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39892 () Bool)

(assert start!39892)

(declare-fun b_free!10151 () Bool)

(declare-fun b_next!10151 () Bool)

(assert (=> start!39892 (= b_free!10151 (not b_next!10151))))

(declare-fun tp!35982 () Bool)

(declare-fun b_and!17979 () Bool)

(assert (=> start!39892 (= tp!35982 b_and!17979)))

(declare-fun b!431687 () Bool)

(declare-fun res!253931 () Bool)

(declare-fun e!255424 () Bool)

(assert (=> b!431687 (=> (not res!253931) (not e!255424))))

(declare-datatypes ((array!26419 0))(
  ( (array!26420 (arr!12656 (Array (_ BitVec 32) (_ BitVec 64))) (size!13008 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26419)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!431687 (= res!253931 (or (= (select (arr!12656 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12656 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!431688 () Bool)

(declare-fun res!253930 () Bool)

(assert (=> b!431688 (=> (not res!253930) (not e!255424))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26419 (_ BitVec 32)) Bool)

(assert (=> b!431688 (= res!253930 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!431689 () Bool)

(declare-fun res!253932 () Bool)

(assert (=> b!431689 (=> (not res!253932) (not e!255424))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!431689 (= res!253932 (validMask!0 mask!1025))))

(declare-fun b!431690 () Bool)

(declare-fun res!253933 () Bool)

(assert (=> b!431690 (=> (not res!253933) (not e!255424))))

(declare-datatypes ((V!16175 0))(
  ( (V!16176 (val!5696 Int)) )
))
(declare-datatypes ((ValueCell!5308 0))(
  ( (ValueCellFull!5308 (v!7939 V!16175)) (EmptyCell!5308) )
))
(declare-datatypes ((array!26421 0))(
  ( (array!26422 (arr!12657 (Array (_ BitVec 32) ValueCell!5308)) (size!13009 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26421)

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!431690 (= res!253933 (and (= (size!13009 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13008 _keys!709) (size!13009 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun res!253922 () Bool)

(assert (=> start!39892 (=> (not res!253922) (not e!255424))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39892 (= res!253922 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13008 _keys!709))))))

(assert (=> start!39892 e!255424))

(declare-fun tp_is_empty!11303 () Bool)

(assert (=> start!39892 tp_is_empty!11303))

(assert (=> start!39892 tp!35982))

(assert (=> start!39892 true))

(declare-fun e!255415 () Bool)

(declare-fun array_inv!9202 (array!26421) Bool)

(assert (=> start!39892 (and (array_inv!9202 _values!549) e!255415)))

(declare-fun array_inv!9203 (array!26419) Bool)

(assert (=> start!39892 (array_inv!9203 _keys!709)))

(declare-fun b!431691 () Bool)

(declare-fun res!253934 () Bool)

(assert (=> b!431691 (=> (not res!253934) (not e!255424))))

(declare-datatypes ((List!7501 0))(
  ( (Nil!7498) (Cons!7497 (h!8353 (_ BitVec 64)) (t!13109 List!7501)) )
))
(declare-fun arrayNoDuplicates!0 (array!26419 (_ BitVec 32) List!7501) Bool)

(assert (=> b!431691 (= res!253934 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7498))))

(declare-fun b!431692 () Bool)

(declare-fun e!255417 () Bool)

(declare-fun e!255421 () Bool)

(assert (=> b!431692 (= e!255417 e!255421)))

(declare-fun res!253925 () Bool)

(assert (=> b!431692 (=> res!253925 e!255421)))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!431692 (= res!253925 (= k!794 (select (arr!12656 _keys!709) from!863)))))

(assert (=> b!431692 (not (= (select (arr!12656 _keys!709) from!863) k!794))))

(declare-datatypes ((Unit!12701 0))(
  ( (Unit!12702) )
))
(declare-fun lt!197867 () Unit!12701)

(declare-fun e!255422 () Unit!12701)

(assert (=> b!431692 (= lt!197867 e!255422)))

(declare-fun c!55487 () Bool)

(assert (=> b!431692 (= c!55487 (= (select (arr!12656 _keys!709) from!863) k!794))))

(declare-datatypes ((tuple2!7448 0))(
  ( (tuple2!7449 (_1!3734 (_ BitVec 64)) (_2!3734 V!16175)) )
))
(declare-datatypes ((List!7502 0))(
  ( (Nil!7499) (Cons!7498 (h!8354 tuple2!7448) (t!13110 List!7502)) )
))
(declare-datatypes ((ListLongMap!6375 0))(
  ( (ListLongMap!6376 (toList!3203 List!7502)) )
))
(declare-fun lt!197876 () ListLongMap!6375)

(declare-fun lt!197873 () ListLongMap!6375)

(assert (=> b!431692 (= lt!197876 lt!197873)))

(declare-fun lt!197874 () ListLongMap!6375)

(declare-fun lt!197864 () tuple2!7448)

(declare-fun +!1349 (ListLongMap!6375 tuple2!7448) ListLongMap!6375)

(assert (=> b!431692 (= lt!197873 (+!1349 lt!197874 lt!197864))))

(declare-fun lt!197865 () V!16175)

(assert (=> b!431692 (= lt!197864 (tuple2!7449 (select (arr!12656 _keys!709) from!863) lt!197865))))

(declare-fun defaultEntry!557 () Int)

(declare-fun get!6292 (ValueCell!5308 V!16175) V!16175)

(declare-fun dynLambda!789 (Int (_ BitVec 64)) V!16175)

(assert (=> b!431692 (= lt!197865 (get!6292 (select (arr!12657 _values!549) from!863) (dynLambda!789 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!431693 () Bool)

(declare-fun e!255423 () Bool)

(assert (=> b!431693 (= e!255423 (not e!255417))))

(declare-fun res!253921 () Bool)

(assert (=> b!431693 (=> res!253921 e!255417)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!431693 (= res!253921 (not (validKeyInArray!0 (select (arr!12656 _keys!709) from!863))))))

(declare-fun lt!197870 () ListLongMap!6375)

(assert (=> b!431693 (= lt!197870 lt!197874)))

(declare-fun lt!197868 () ListLongMap!6375)

(declare-fun lt!197872 () tuple2!7448)

(assert (=> b!431693 (= lt!197874 (+!1349 lt!197868 lt!197872))))

(declare-fun minValue!515 () V!16175)

(declare-fun lt!197875 () array!26419)

(declare-fun zeroValue!515 () V!16175)

(declare-fun lt!197871 () array!26421)

(declare-fun getCurrentListMapNoExtraKeys!1397 (array!26419 array!26421 (_ BitVec 32) (_ BitVec 32) V!16175 V!16175 (_ BitVec 32) Int) ListLongMap!6375)

(assert (=> b!431693 (= lt!197870 (getCurrentListMapNoExtraKeys!1397 lt!197875 lt!197871 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun v!412 () V!16175)

(assert (=> b!431693 (= lt!197872 (tuple2!7449 k!794 v!412))))

(assert (=> b!431693 (= lt!197868 (getCurrentListMapNoExtraKeys!1397 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!197863 () Unit!12701)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!541 (array!26419 array!26421 (_ BitVec 32) (_ BitVec 32) V!16175 V!16175 (_ BitVec 32) (_ BitVec 64) V!16175 (_ BitVec 32) Int) Unit!12701)

(assert (=> b!431693 (= lt!197863 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!541 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!431694 () Bool)

(declare-fun e!255416 () Bool)

(declare-fun mapRes!18576 () Bool)

(assert (=> b!431694 (= e!255415 (and e!255416 mapRes!18576))))

(declare-fun condMapEmpty!18576 () Bool)

(declare-fun mapDefault!18576 () ValueCell!5308)

