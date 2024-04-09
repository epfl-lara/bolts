; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41006 () Bool)

(assert start!41006)

(declare-fun b_free!10933 () Bool)

(declare-fun b_next!10933 () Bool)

(assert (=> start!41006 (= b_free!10933 (not b_next!10933))))

(declare-fun tp!38626 () Bool)

(declare-fun b_and!19093 () Bool)

(assert (=> start!41006 (= tp!38626 b_and!19093)))

(declare-fun b!456444 () Bool)

(declare-fun res!272492 () Bool)

(declare-fun e!266666 () Bool)

(assert (=> b!456444 (=> (not res!272492) (not e!266666))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!456444 (= res!272492 (bvsle from!863 i!563))))

(declare-fun b!456446 () Bool)

(declare-fun res!272485 () Bool)

(declare-fun e!266670 () Bool)

(assert (=> b!456446 (=> (not res!272485) (not e!266670))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!456446 (= res!272485 (validKeyInArray!0 k!794))))

(declare-fun b!456447 () Bool)

(declare-fun e!266665 () Bool)

(declare-datatypes ((V!17467 0))(
  ( (V!17468 (val!6180 Int)) )
))
(declare-datatypes ((ValueCell!5792 0))(
  ( (ValueCellFull!5792 (v!8442 V!17467)) (EmptyCell!5792) )
))
(declare-datatypes ((array!28309 0))(
  ( (array!28310 (arr!13595 (Array (_ BitVec 32) ValueCell!5792)) (size!13947 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28309)

(assert (=> b!456447 (= e!266665 (bvslt i!563 (size!13947 _values!549)))))

(declare-fun b!456448 () Bool)

(declare-fun res!272494 () Bool)

(assert (=> b!456448 (=> (not res!272494) (not e!266670))))

(declare-datatypes ((array!28311 0))(
  ( (array!28312 (arr!13596 (Array (_ BitVec 32) (_ BitVec 64))) (size!13948 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28311)

(assert (=> b!456448 (= res!272494 (or (= (select (arr!13596 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13596 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!20047 () Bool)

(declare-fun mapRes!20047 () Bool)

(declare-fun tp!38625 () Bool)

(declare-fun e!266669 () Bool)

(assert (=> mapNonEmpty!20047 (= mapRes!20047 (and tp!38625 e!266669))))

(declare-fun mapRest!20047 () (Array (_ BitVec 32) ValueCell!5792))

(declare-fun mapKey!20047 () (_ BitVec 32))

(declare-fun mapValue!20047 () ValueCell!5792)

(assert (=> mapNonEmpty!20047 (= (arr!13595 _values!549) (store mapRest!20047 mapKey!20047 mapValue!20047))))

(declare-fun b!456449 () Bool)

(declare-fun e!266668 () Bool)

(assert (=> b!456449 (= e!266668 (not e!266665))))

(declare-fun res!272490 () Bool)

(assert (=> b!456449 (=> res!272490 e!266665)))

(assert (=> b!456449 (= res!272490 (not (validKeyInArray!0 (select (arr!13596 _keys!709) from!863))))))

(declare-fun lt!206576 () array!28309)

(declare-fun minValue!515 () V!17467)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!206577 () array!28311)

(declare-fun zeroValue!515 () V!17467)

(declare-fun v!412 () V!17467)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((tuple2!8100 0))(
  ( (tuple2!8101 (_1!4060 (_ BitVec 64)) (_2!4060 V!17467)) )
))
(declare-datatypes ((List!8207 0))(
  ( (Nil!8204) (Cons!8203 (h!9059 tuple2!8100) (t!14043 List!8207)) )
))
(declare-datatypes ((ListLongMap!7027 0))(
  ( (ListLongMap!7028 (toList!3529 List!8207)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1705 (array!28311 array!28309 (_ BitVec 32) (_ BitVec 32) V!17467 V!17467 (_ BitVec 32) Int) ListLongMap!7027)

(declare-fun +!1551 (ListLongMap!7027 tuple2!8100) ListLongMap!7027)

(assert (=> b!456449 (= (getCurrentListMapNoExtraKeys!1705 lt!206577 lt!206576 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1551 (getCurrentListMapNoExtraKeys!1705 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!8101 k!794 v!412)))))

(declare-datatypes ((Unit!13227 0))(
  ( (Unit!13228) )
))
(declare-fun lt!206575 () Unit!13227)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!716 (array!28311 array!28309 (_ BitVec 32) (_ BitVec 32) V!17467 V!17467 (_ BitVec 32) (_ BitVec 64) V!17467 (_ BitVec 32) Int) Unit!13227)

(assert (=> b!456449 (= lt!206575 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!716 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!456450 () Bool)

(assert (=> b!456450 (= e!266666 e!266668)))

(declare-fun res!272498 () Bool)

(assert (=> b!456450 (=> (not res!272498) (not e!266668))))

(assert (=> b!456450 (= res!272498 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!206573 () ListLongMap!7027)

(assert (=> b!456450 (= lt!206573 (getCurrentListMapNoExtraKeys!1705 lt!206577 lt!206576 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!456450 (= lt!206576 (array!28310 (store (arr!13595 _values!549) i!563 (ValueCellFull!5792 v!412)) (size!13947 _values!549)))))

(declare-fun lt!206574 () ListLongMap!7027)

(assert (=> b!456450 (= lt!206574 (getCurrentListMapNoExtraKeys!1705 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!456451 () Bool)

(declare-fun res!272489 () Bool)

(assert (=> b!456451 (=> (not res!272489) (not e!266670))))

(declare-fun arrayContainsKey!0 (array!28311 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!456451 (= res!272489 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!456452 () Bool)

(declare-fun res!272488 () Bool)

(assert (=> b!456452 (=> (not res!272488) (not e!266670))))

(assert (=> b!456452 (= res!272488 (and (= (size!13947 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13948 _keys!709) (size!13947 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!456453 () Bool)

(declare-fun e!266672 () Bool)

(declare-fun tp_is_empty!12271 () Bool)

(assert (=> b!456453 (= e!266672 tp_is_empty!12271)))

(declare-fun b!456454 () Bool)

(declare-fun res!272491 () Bool)

(assert (=> b!456454 (=> (not res!272491) (not e!266670))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!456454 (= res!272491 (validMask!0 mask!1025))))

(declare-fun b!456455 () Bool)

(assert (=> b!456455 (= e!266669 tp_is_empty!12271)))

(declare-fun b!456456 () Bool)

(declare-fun e!266671 () Bool)

(assert (=> b!456456 (= e!266671 (and e!266672 mapRes!20047))))

(declare-fun condMapEmpty!20047 () Bool)

(declare-fun mapDefault!20047 () ValueCell!5792)

