; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38724 () Bool)

(assert start!38724)

(declare-fun b_free!9253 () Bool)

(declare-fun b_next!9253 () Bool)

(assert (=> start!38724 (= b_free!9253 (not b_next!9253))))

(declare-fun tp!32882 () Bool)

(declare-fun b_and!16657 () Bool)

(assert (=> start!38724 (= tp!32882 b_and!16657)))

(declare-fun b!402715 () Bool)

(declare-fun res!232085 () Bool)

(declare-fun e!242552 () Bool)

(assert (=> b!402715 (=> (not res!232085) (not e!242552))))

(declare-datatypes ((array!24141 0))(
  ( (array!24142 (arr!11517 (Array (_ BitVec 32) (_ BitVec 64))) (size!11869 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24141)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!402715 (= res!232085 (or (= (select (arr!11517 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11517 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!402716 () Bool)

(declare-fun res!232087 () Bool)

(declare-fun e!242557 () Bool)

(assert (=> b!402716 (=> (not res!232087) (not e!242557))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!402716 (= res!232087 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11869 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!402717 () Bool)

(declare-fun res!232091 () Bool)

(assert (=> b!402717 (=> (not res!232091) (not e!242552))))

(declare-datatypes ((List!6677 0))(
  ( (Nil!6674) (Cons!6673 (h!7529 (_ BitVec 64)) (t!11859 List!6677)) )
))
(declare-fun arrayNoDuplicates!0 (array!24141 (_ BitVec 32) List!6677) Bool)

(assert (=> b!402717 (= res!232091 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6674))))

(declare-fun b!402718 () Bool)

(declare-fun res!232086 () Bool)

(assert (=> b!402718 (=> (not res!232086) (not e!242552))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!402718 (= res!232086 (validKeyInArray!0 k!794))))

(declare-fun mapIsEmpty!16824 () Bool)

(declare-fun mapRes!16824 () Bool)

(assert (=> mapIsEmpty!16824 mapRes!16824))

(declare-datatypes ((V!14619 0))(
  ( (V!14620 (val!5112 Int)) )
))
(declare-datatypes ((tuple2!6734 0))(
  ( (tuple2!6735 (_1!3377 (_ BitVec 64)) (_2!3377 V!14619)) )
))
(declare-datatypes ((List!6678 0))(
  ( (Nil!6675) (Cons!6674 (h!7530 tuple2!6734) (t!11860 List!6678)) )
))
(declare-datatypes ((ListLongMap!5661 0))(
  ( (ListLongMap!5662 (toList!2846 List!6678)) )
))
(declare-fun call!28420 () ListLongMap!5661)

(declare-fun minValue!515 () V!14619)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!187946 () array!24141)

(declare-datatypes ((ValueCell!4724 0))(
  ( (ValueCellFull!4724 (v!7355 V!14619)) (EmptyCell!4724) )
))
(declare-datatypes ((array!24143 0))(
  ( (array!24144 (arr!11518 (Array (_ BitVec 32) ValueCell!4724)) (size!11870 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24143)

(declare-fun zeroValue!515 () V!14619)

(declare-fun bm!28417 () Bool)

(declare-fun c!54761 () Bool)

(declare-fun v!412 () V!14619)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1057 (array!24141 array!24143 (_ BitVec 32) (_ BitVec 32) V!14619 V!14619 (_ BitVec 32) Int) ListLongMap!5661)

(assert (=> bm!28417 (= call!28420 (getCurrentListMapNoExtraKeys!1057 (ite c!54761 _keys!709 lt!187946) (ite c!54761 _values!549 (array!24144 (store (arr!11518 _values!549) i!563 (ValueCellFull!4724 v!412)) (size!11870 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!402720 () Bool)

(declare-fun res!232083 () Bool)

(assert (=> b!402720 (=> (not res!232083) (not e!242552))))

(declare-fun arrayContainsKey!0 (array!24141 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!402720 (= res!232083 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!402721 () Bool)

(assert (=> b!402721 (= e!242557 (not true))))

(declare-fun e!242556 () Bool)

(assert (=> b!402721 e!242556))

(assert (=> b!402721 (= c!54761 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12141 0))(
  ( (Unit!12142) )
))
(declare-fun lt!187947 () Unit!12141)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!333 (array!24141 array!24143 (_ BitVec 32) (_ BitVec 32) V!14619 V!14619 (_ BitVec 32) (_ BitVec 64) V!14619 (_ BitVec 32) Int) Unit!12141)

(assert (=> b!402721 (= lt!187947 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!333 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun call!28421 () ListLongMap!5661)

(declare-fun b!402722 () Bool)

(declare-fun +!1123 (ListLongMap!5661 tuple2!6734) ListLongMap!5661)

(assert (=> b!402722 (= e!242556 (= call!28421 (+!1123 call!28420 (tuple2!6735 k!794 v!412))))))

(declare-fun b!402723 () Bool)

(declare-fun e!242554 () Bool)

(declare-fun tp_is_empty!10135 () Bool)

(assert (=> b!402723 (= e!242554 tp_is_empty!10135)))

(declare-fun b!402724 () Bool)

(declare-fun res!232084 () Bool)

(assert (=> b!402724 (=> (not res!232084) (not e!242557))))

(assert (=> b!402724 (= res!232084 (arrayNoDuplicates!0 lt!187946 #b00000000000000000000000000000000 Nil!6674))))

(declare-fun mapNonEmpty!16824 () Bool)

(declare-fun tp!32883 () Bool)

(assert (=> mapNonEmpty!16824 (= mapRes!16824 (and tp!32883 e!242554))))

(declare-fun mapRest!16824 () (Array (_ BitVec 32) ValueCell!4724))

(declare-fun mapValue!16824 () ValueCell!4724)

(declare-fun mapKey!16824 () (_ BitVec 32))

(assert (=> mapNonEmpty!16824 (= (arr!11518 _values!549) (store mapRest!16824 mapKey!16824 mapValue!16824))))

(declare-fun b!402725 () Bool)

(assert (=> b!402725 (= e!242556 (= call!28420 call!28421))))

(declare-fun bm!28418 () Bool)

(assert (=> bm!28418 (= call!28421 (getCurrentListMapNoExtraKeys!1057 (ite c!54761 lt!187946 _keys!709) (ite c!54761 (array!24144 (store (arr!11518 _values!549) i!563 (ValueCellFull!4724 v!412)) (size!11870 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!402726 () Bool)

(declare-fun e!242555 () Bool)

(declare-fun e!242551 () Bool)

(assert (=> b!402726 (= e!242555 (and e!242551 mapRes!16824))))

(declare-fun condMapEmpty!16824 () Bool)

(declare-fun mapDefault!16824 () ValueCell!4724)

