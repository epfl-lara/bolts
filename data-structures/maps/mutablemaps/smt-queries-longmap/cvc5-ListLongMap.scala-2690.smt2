; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39966 () Bool)

(assert start!39966)

(declare-fun b_free!10225 () Bool)

(declare-fun b_next!10225 () Bool)

(assert (=> start!39966 (= b_free!10225 (not b_next!10225))))

(declare-fun tp!36204 () Bool)

(declare-fun b_and!18127 () Bool)

(assert (=> start!39966 (= tp!36204 b_and!18127)))

(declare-fun b!433981 () Bool)

(declare-fun e!256533 () Bool)

(declare-fun tp_is_empty!11377 () Bool)

(assert (=> b!433981 (= e!256533 tp_is_empty!11377)))

(declare-fun b!433982 () Bool)

(declare-datatypes ((Unit!12820 0))(
  ( (Unit!12821) )
))
(declare-fun e!256529 () Unit!12820)

(declare-fun Unit!12822 () Unit!12820)

(assert (=> b!433982 (= e!256529 Unit!12822)))

(declare-fun mapNonEmpty!18687 () Bool)

(declare-fun mapRes!18687 () Bool)

(declare-fun tp!36203 () Bool)

(declare-fun e!256528 () Bool)

(assert (=> mapNonEmpty!18687 (= mapRes!18687 (and tp!36203 e!256528))))

(declare-datatypes ((V!16275 0))(
  ( (V!16276 (val!5733 Int)) )
))
(declare-datatypes ((ValueCell!5345 0))(
  ( (ValueCellFull!5345 (v!7976 V!16275)) (EmptyCell!5345) )
))
(declare-fun mapRest!18687 () (Array (_ BitVec 32) ValueCell!5345))

(declare-fun mapValue!18687 () ValueCell!5345)

(declare-fun mapKey!18687 () (_ BitVec 32))

(declare-datatypes ((array!26561 0))(
  ( (array!26562 (arr!12727 (Array (_ BitVec 32) ValueCell!5345)) (size!13079 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26561)

(assert (=> mapNonEmpty!18687 (= (arr!12727 _values!549) (store mapRest!18687 mapKey!18687 mapValue!18687))))

(declare-fun b!433983 () Bool)

(declare-fun e!256532 () Bool)

(declare-fun e!256525 () Bool)

(assert (=> b!433983 (= e!256532 e!256525)))

(declare-fun res!255590 () Bool)

(assert (=> b!433983 (=> (not res!255590) (not e!256525))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!433983 (= res!255590 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!199541 () array!26561)

(declare-fun minValue!515 () V!16275)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((array!26563 0))(
  ( (array!26564 (arr!12728 (Array (_ BitVec 32) (_ BitVec 64))) (size!13080 (_ BitVec 32))) )
))
(declare-fun lt!199531 () array!26563)

(declare-fun zeroValue!515 () V!16275)

(declare-datatypes ((tuple2!7514 0))(
  ( (tuple2!7515 (_1!3767 (_ BitVec 64)) (_2!3767 V!16275)) )
))
(declare-datatypes ((List!7563 0))(
  ( (Nil!7560) (Cons!7559 (h!8415 tuple2!7514) (t!13245 List!7563)) )
))
(declare-datatypes ((ListLongMap!6441 0))(
  ( (ListLongMap!6442 (toList!3236 List!7563)) )
))
(declare-fun lt!199534 () ListLongMap!6441)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1425 (array!26563 array!26561 (_ BitVec 32) (_ BitVec 32) V!16275 V!16275 (_ BitVec 32) Int) ListLongMap!6441)

(assert (=> b!433983 (= lt!199534 (getCurrentListMapNoExtraKeys!1425 lt!199531 lt!199541 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16275)

(assert (=> b!433983 (= lt!199541 (array!26562 (store (arr!12727 _values!549) i!563 (ValueCellFull!5345 v!412)) (size!13079 _values!549)))))

(declare-fun _keys!709 () array!26563)

(declare-fun lt!199528 () ListLongMap!6441)

(assert (=> b!433983 (= lt!199528 (getCurrentListMapNoExtraKeys!1425 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun res!255588 () Bool)

(declare-fun e!256534 () Bool)

(assert (=> start!39966 (=> (not res!255588) (not e!256534))))

(assert (=> start!39966 (= res!255588 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13080 _keys!709))))))

(assert (=> start!39966 e!256534))

(assert (=> start!39966 tp_is_empty!11377))

(assert (=> start!39966 tp!36204))

(assert (=> start!39966 true))

(declare-fun e!256530 () Bool)

(declare-fun array_inv!9254 (array!26561) Bool)

(assert (=> start!39966 (and (array_inv!9254 _values!549) e!256530)))

(declare-fun array_inv!9255 (array!26563) Bool)

(assert (=> start!39966 (array_inv!9255 _keys!709)))

(declare-fun b!433984 () Bool)

(assert (=> b!433984 (= e!256528 tp_is_empty!11377)))

(declare-fun b!433985 () Bool)

(declare-fun res!255592 () Bool)

(assert (=> b!433985 (=> (not res!255592) (not e!256534))))

(assert (=> b!433985 (= res!255592 (or (= (select (arr!12728 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12728 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!433986 () Bool)

(declare-fun Unit!12823 () Unit!12820)

(assert (=> b!433986 (= e!256529 Unit!12823)))

(declare-fun lt!199536 () Unit!12820)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26563 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12820)

(assert (=> b!433986 (= lt!199536 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!433986 false))

(declare-fun b!433987 () Bool)

(assert (=> b!433987 (= e!256530 (and e!256533 mapRes!18687))))

(declare-fun condMapEmpty!18687 () Bool)

(declare-fun mapDefault!18687 () ValueCell!5345)

