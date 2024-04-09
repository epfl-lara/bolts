; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41198 () Bool)

(assert start!41198)

(declare-fun b_free!11059 () Bool)

(declare-fun b_next!11059 () Bool)

(assert (=> start!41198 (= b_free!11059 (not b_next!11059))))

(declare-fun tp!39012 () Bool)

(declare-fun b_and!19375 () Bool)

(assert (=> start!41198 (= tp!39012 b_and!19375)))

(declare-fun b!460424 () Bool)

(declare-fun e!268606 () Bool)

(declare-fun e!268608 () Bool)

(assert (=> b!460424 (= e!268606 (not e!268608))))

(declare-fun res!275386 () Bool)

(assert (=> b!460424 (=> res!275386 e!268608)))

(declare-datatypes ((array!28555 0))(
  ( (array!28556 (arr!13715 (Array (_ BitVec 32) (_ BitVec 64))) (size!14067 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28555)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!460424 (= res!275386 (not (validKeyInArray!0 (select (arr!13715 _keys!709) from!863))))))

(declare-datatypes ((V!17635 0))(
  ( (V!17636 (val!6243 Int)) )
))
(declare-datatypes ((tuple2!8202 0))(
  ( (tuple2!8203 (_1!4111 (_ BitVec 64)) (_2!4111 V!17635)) )
))
(declare-datatypes ((List!8304 0))(
  ( (Nil!8301) (Cons!8300 (h!9156 tuple2!8202) (t!14250 List!8304)) )
))
(declare-datatypes ((ListLongMap!7129 0))(
  ( (ListLongMap!7130 (toList!3580 List!8304)) )
))
(declare-fun lt!208600 () ListLongMap!7129)

(declare-fun lt!208601 () ListLongMap!7129)

(assert (=> b!460424 (= lt!208600 lt!208601)))

(declare-fun lt!208608 () ListLongMap!7129)

(declare-fun lt!208594 () tuple2!8202)

(declare-fun +!1599 (ListLongMap!7129 tuple2!8202) ListLongMap!7129)

(assert (=> b!460424 (= lt!208601 (+!1599 lt!208608 lt!208594))))

(declare-fun minValue!515 () V!17635)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!17635)

(declare-datatypes ((ValueCell!5855 0))(
  ( (ValueCellFull!5855 (v!8517 V!17635)) (EmptyCell!5855) )
))
(declare-datatypes ((array!28557 0))(
  ( (array!28558 (arr!13716 (Array (_ BitVec 32) ValueCell!5855)) (size!14068 (_ BitVec 32))) )
))
(declare-fun lt!208603 () array!28557)

(declare-fun lt!208599 () array!28555)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1748 (array!28555 array!28557 (_ BitVec 32) (_ BitVec 32) V!17635 V!17635 (_ BitVec 32) Int) ListLongMap!7129)

(assert (=> b!460424 (= lt!208600 (getCurrentListMapNoExtraKeys!1748 lt!208599 lt!208603 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun v!412 () V!17635)

(assert (=> b!460424 (= lt!208594 (tuple2!8203 k!794 v!412))))

(declare-fun _values!549 () array!28557)

(assert (=> b!460424 (= lt!208608 (getCurrentListMapNoExtraKeys!1748 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((Unit!13356 0))(
  ( (Unit!13357) )
))
(declare-fun lt!208595 () Unit!13356)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!751 (array!28555 array!28557 (_ BitVec 32) (_ BitVec 32) V!17635 V!17635 (_ BitVec 32) (_ BitVec 64) V!17635 (_ BitVec 32) Int) Unit!13356)

(assert (=> b!460424 (= lt!208595 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!751 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!460425 () Bool)

(declare-fun e!268612 () Unit!13356)

(declare-fun Unit!13358 () Unit!13356)

(assert (=> b!460425 (= e!268612 Unit!13358)))

(declare-fun lt!208597 () Unit!13356)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!28555 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!13356)

(assert (=> b!460425 (= lt!208597 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!460425 false))

(declare-fun b!460426 () Bool)

(declare-fun e!268607 () Bool)

(declare-fun e!268604 () Bool)

(assert (=> b!460426 (= e!268607 e!268604)))

(declare-fun res!275379 () Bool)

(assert (=> b!460426 (=> (not res!275379) (not e!268604))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28555 (_ BitVec 32)) Bool)

(assert (=> b!460426 (= res!275379 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!208599 mask!1025))))

(assert (=> b!460426 (= lt!208599 (array!28556 (store (arr!13715 _keys!709) i!563 k!794) (size!14067 _keys!709)))))

(declare-fun b!460427 () Bool)

(declare-fun res!275372 () Bool)

(assert (=> b!460427 (=> (not res!275372) (not e!268607))))

(assert (=> b!460427 (= res!275372 (or (= (select (arr!13715 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13715 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!460428 () Bool)

(declare-fun res!275381 () Bool)

(assert (=> b!460428 (=> (not res!275381) (not e!268607))))

(declare-fun arrayContainsKey!0 (array!28555 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!460428 (= res!275381 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!20245 () Bool)

(declare-fun mapRes!20245 () Bool)

(assert (=> mapIsEmpty!20245 mapRes!20245))

(declare-fun b!460429 () Bool)

(declare-fun e!268603 () Bool)

(declare-fun tp_is_empty!12397 () Bool)

(assert (=> b!460429 (= e!268603 tp_is_empty!12397)))

(declare-fun b!460430 () Bool)

(declare-fun res!275378 () Bool)

(assert (=> b!460430 (=> (not res!275378) (not e!268607))))

(assert (=> b!460430 (= res!275378 (and (= (size!14068 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!14067 _keys!709) (size!14068 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!20245 () Bool)

(declare-fun tp!39013 () Bool)

(assert (=> mapNonEmpty!20245 (= mapRes!20245 (and tp!39013 e!268603))))

(declare-fun mapKey!20245 () (_ BitVec 32))

(declare-fun mapValue!20245 () ValueCell!5855)

(declare-fun mapRest!20245 () (Array (_ BitVec 32) ValueCell!5855))

(assert (=> mapNonEmpty!20245 (= (arr!13716 _values!549) (store mapRest!20245 mapKey!20245 mapValue!20245))))

(declare-fun b!460431 () Bool)

(declare-fun res!275373 () Bool)

(assert (=> b!460431 (=> (not res!275373) (not e!268607))))

(assert (=> b!460431 (= res!275373 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!460432 () Bool)

(declare-fun res!275383 () Bool)

(assert (=> b!460432 (=> (not res!275383) (not e!268607))))

(declare-datatypes ((List!8305 0))(
  ( (Nil!8302) (Cons!8301 (h!9157 (_ BitVec 64)) (t!14251 List!8305)) )
))
(declare-fun arrayNoDuplicates!0 (array!28555 (_ BitVec 32) List!8305) Bool)

(assert (=> b!460432 (= res!275383 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8302))))

(declare-fun b!460433 () Bool)

(declare-fun e!268605 () Bool)

(assert (=> b!460433 (= e!268608 e!268605)))

(declare-fun res!275385 () Bool)

(assert (=> b!460433 (=> res!275385 e!268605)))

(assert (=> b!460433 (= res!275385 (= k!794 (select (arr!13715 _keys!709) from!863)))))

(assert (=> b!460433 (not (= (select (arr!13715 _keys!709) from!863) k!794))))

(declare-fun lt!208596 () Unit!13356)

(assert (=> b!460433 (= lt!208596 e!268612)))

(declare-fun c!56462 () Bool)

(assert (=> b!460433 (= c!56462 (= (select (arr!13715 _keys!709) from!863) k!794))))

(declare-fun lt!208607 () ListLongMap!7129)

(declare-fun lt!208598 () ListLongMap!7129)

(assert (=> b!460433 (= lt!208607 lt!208598)))

(declare-fun lt!208606 () tuple2!8202)

(assert (=> b!460433 (= lt!208598 (+!1599 lt!208601 lt!208606))))

(declare-fun lt!208605 () V!17635)

(assert (=> b!460433 (= lt!208606 (tuple2!8203 (select (arr!13715 _keys!709) from!863) lt!208605))))

(declare-fun get!6787 (ValueCell!5855 V!17635) V!17635)

(declare-fun dynLambda!907 (Int (_ BitVec 64)) V!17635)

(assert (=> b!460433 (= lt!208605 (get!6787 (select (arr!13716 _values!549) from!863) (dynLambda!907 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!460434 () Bool)

(assert (=> b!460434 (= e!268604 e!268606)))

(declare-fun res!275382 () Bool)

(assert (=> b!460434 (=> (not res!275382) (not e!268606))))

(assert (=> b!460434 (= res!275382 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(assert (=> b!460434 (= lt!208607 (getCurrentListMapNoExtraKeys!1748 lt!208599 lt!208603 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!460434 (= lt!208603 (array!28558 (store (arr!13716 _values!549) i!563 (ValueCellFull!5855 v!412)) (size!14068 _values!549)))))

(declare-fun lt!208604 () ListLongMap!7129)

(assert (=> b!460434 (= lt!208604 (getCurrentListMapNoExtraKeys!1748 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!460435 () Bool)

(declare-fun e!268610 () Bool)

(declare-fun e!268611 () Bool)

(assert (=> b!460435 (= e!268610 (and e!268611 mapRes!20245))))

(declare-fun condMapEmpty!20245 () Bool)

(declare-fun mapDefault!20245 () ValueCell!5855)

