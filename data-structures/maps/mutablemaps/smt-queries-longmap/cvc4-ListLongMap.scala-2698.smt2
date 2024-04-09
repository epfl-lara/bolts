; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40018 () Bool)

(assert start!40018)

(declare-fun b_free!10277 () Bool)

(declare-fun b_next!10277 () Bool)

(assert (=> start!40018 (= b_free!10277 (not b_next!10277))))

(declare-fun tp!36359 () Bool)

(declare-fun b_and!18231 () Bool)

(assert (=> start!40018 (= tp!36359 b_and!18231)))

(declare-fun b!435593 () Bool)

(declare-fun res!256756 () Bool)

(declare-fun e!257309 () Bool)

(assert (=> b!435593 (=> (not res!256756) (not e!257309))))

(declare-datatypes ((array!26661 0))(
  ( (array!26662 (arr!12777 (Array (_ BitVec 32) (_ BitVec 64))) (size!13129 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26661)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!435593 (= res!256756 (or (= (select (arr!12777 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12777 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!18765 () Bool)

(declare-fun mapRes!18765 () Bool)

(assert (=> mapIsEmpty!18765 mapRes!18765))

(declare-fun mapNonEmpty!18765 () Bool)

(declare-fun tp!36360 () Bool)

(declare-fun e!257307 () Bool)

(assert (=> mapNonEmpty!18765 (= mapRes!18765 (and tp!36360 e!257307))))

(declare-datatypes ((V!16343 0))(
  ( (V!16344 (val!5759 Int)) )
))
(declare-datatypes ((ValueCell!5371 0))(
  ( (ValueCellFull!5371 (v!8002 V!16343)) (EmptyCell!5371) )
))
(declare-datatypes ((array!26663 0))(
  ( (array!26664 (arr!12778 (Array (_ BitVec 32) ValueCell!5371)) (size!13130 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26663)

(declare-fun mapValue!18765 () ValueCell!5371)

(declare-fun mapRest!18765 () (Array (_ BitVec 32) ValueCell!5371))

(declare-fun mapKey!18765 () (_ BitVec 32))

(assert (=> mapNonEmpty!18765 (= (arr!12778 _values!549) (store mapRest!18765 mapKey!18765 mapValue!18765))))

(declare-fun b!435594 () Bool)

(declare-datatypes ((Unit!12898 0))(
  ( (Unit!12899) )
))
(declare-fun e!257310 () Unit!12898)

(declare-fun Unit!12900 () Unit!12898)

(assert (=> b!435594 (= e!257310 Unit!12900)))

(declare-fun b!435595 () Bool)

(declare-fun res!256759 () Bool)

(assert (=> b!435595 (=> (not res!256759) (not e!257309))))

(assert (=> b!435595 (= res!256759 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13129 _keys!709))))))

(declare-fun b!435596 () Bool)

(declare-fun e!257311 () Bool)

(declare-fun e!257312 () Bool)

(assert (=> b!435596 (= e!257311 (not e!257312))))

(declare-fun res!256769 () Bool)

(assert (=> b!435596 (=> res!256769 e!257312)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!435596 (= res!256769 (not (validKeyInArray!0 (select (arr!12777 _keys!709) from!863))))))

(declare-datatypes ((tuple2!7560 0))(
  ( (tuple2!7561 (_1!3790 (_ BitVec 64)) (_2!3790 V!16343)) )
))
(declare-datatypes ((List!7605 0))(
  ( (Nil!7602) (Cons!7601 (h!8457 tuple2!7560) (t!13339 List!7605)) )
))
(declare-datatypes ((ListLongMap!6487 0))(
  ( (ListLongMap!6488 (toList!3259 List!7605)) )
))
(declare-fun lt!200705 () ListLongMap!6487)

(declare-fun lt!200701 () ListLongMap!6487)

(assert (=> b!435596 (= lt!200705 lt!200701)))

(declare-fun lt!200710 () ListLongMap!6487)

(declare-fun lt!200712 () tuple2!7560)

(declare-fun +!1403 (ListLongMap!6487 tuple2!7560) ListLongMap!6487)

(assert (=> b!435596 (= lt!200701 (+!1403 lt!200710 lt!200712))))

(declare-fun minValue!515 () V!16343)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16343)

(declare-fun lt!200699 () array!26663)

(declare-fun lt!200708 () array!26661)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1443 (array!26661 array!26663 (_ BitVec 32) (_ BitVec 32) V!16343 V!16343 (_ BitVec 32) Int) ListLongMap!6487)

(assert (=> b!435596 (= lt!200705 (getCurrentListMapNoExtraKeys!1443 lt!200708 lt!200699 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun v!412 () V!16343)

(assert (=> b!435596 (= lt!200712 (tuple2!7561 k!794 v!412))))

(assert (=> b!435596 (= lt!200710 (getCurrentListMapNoExtraKeys!1443 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!200707 () Unit!12898)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!583 (array!26661 array!26663 (_ BitVec 32) (_ BitVec 32) V!16343 V!16343 (_ BitVec 32) (_ BitVec 64) V!16343 (_ BitVec 32) Int) Unit!12898)

(assert (=> b!435596 (= lt!200707 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!583 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!435597 () Bool)

(declare-fun res!256758 () Bool)

(assert (=> b!435597 (=> (not res!256758) (not e!257309))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!435597 (= res!256758 (validMask!0 mask!1025))))

(declare-fun b!435598 () Bool)

(declare-fun e!257305 () Bool)

(declare-fun e!257314 () Bool)

(assert (=> b!435598 (= e!257305 (and e!257314 mapRes!18765))))

(declare-fun condMapEmpty!18765 () Bool)

(declare-fun mapDefault!18765 () ValueCell!5371)

