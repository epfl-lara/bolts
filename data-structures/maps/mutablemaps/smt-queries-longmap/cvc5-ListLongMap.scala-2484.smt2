; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38730 () Bool)

(assert start!38730)

(declare-fun b_free!9259 () Bool)

(declare-fun b_next!9259 () Bool)

(assert (=> start!38730 (= b_free!9259 (not b_next!9259))))

(declare-fun tp!32900 () Bool)

(declare-fun b_and!16663 () Bool)

(assert (=> start!38730 (= tp!32900 b_and!16663)))

(declare-fun b!402868 () Bool)

(declare-fun res!232196 () Bool)

(declare-fun e!242618 () Bool)

(assert (=> b!402868 (=> (not res!232196) (not e!242618))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!24153 0))(
  ( (array!24154 (arr!11523 (Array (_ BitVec 32) (_ BitVec 64))) (size!11875 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24153)

(assert (=> b!402868 (= res!232196 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11875 _keys!709))))))

(declare-datatypes ((V!14627 0))(
  ( (V!14628 (val!5115 Int)) )
))
(declare-fun minValue!515 () V!14627)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4727 0))(
  ( (ValueCellFull!4727 (v!7358 V!14627)) (EmptyCell!4727) )
))
(declare-datatypes ((array!24155 0))(
  ( (array!24156 (arr!11524 (Array (_ BitVec 32) ValueCell!4727)) (size!11876 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24155)

(declare-fun lt!187964 () array!24153)

(declare-fun bm!28435 () Bool)

(declare-fun v!412 () V!14627)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun c!54770 () Bool)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!6740 0))(
  ( (tuple2!6741 (_1!3380 (_ BitVec 64)) (_2!3380 V!14627)) )
))
(declare-datatypes ((List!6683 0))(
  ( (Nil!6680) (Cons!6679 (h!7535 tuple2!6740) (t!11865 List!6683)) )
))
(declare-datatypes ((ListLongMap!5667 0))(
  ( (ListLongMap!5668 (toList!2849 List!6683)) )
))
(declare-fun call!28439 () ListLongMap!5667)

(declare-fun zeroValue!515 () V!14627)

(declare-fun getCurrentListMapNoExtraKeys!1060 (array!24153 array!24155 (_ BitVec 32) (_ BitVec 32) V!14627 V!14627 (_ BitVec 32) Int) ListLongMap!5667)

(assert (=> bm!28435 (= call!28439 (getCurrentListMapNoExtraKeys!1060 (ite c!54770 lt!187964 _keys!709) (ite c!54770 (array!24156 (store (arr!11524 _values!549) i!563 (ValueCellFull!4727 v!412)) (size!11876 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!402869 () Bool)

(declare-fun e!242617 () Bool)

(assert (=> b!402869 (= e!242617 (not true))))

(declare-fun e!242614 () Bool)

(assert (=> b!402869 e!242614))

(assert (=> b!402869 (= c!54770 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun k!794 () (_ BitVec 64))

(declare-datatypes ((Unit!12147 0))(
  ( (Unit!12148) )
))
(declare-fun lt!187965 () Unit!12147)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!336 (array!24153 array!24155 (_ BitVec 32) (_ BitVec 32) V!14627 V!14627 (_ BitVec 32) (_ BitVec 64) V!14627 (_ BitVec 32) Int) Unit!12147)

(assert (=> b!402869 (= lt!187965 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!336 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!402870 () Bool)

(declare-fun res!232200 () Bool)

(assert (=> b!402870 (=> (not res!232200) (not e!242617))))

(assert (=> b!402870 (= res!232200 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11875 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!16833 () Bool)

(declare-fun mapRes!16833 () Bool)

(declare-fun tp!32901 () Bool)

(declare-fun e!242616 () Bool)

(assert (=> mapNonEmpty!16833 (= mapRes!16833 (and tp!32901 e!242616))))

(declare-fun mapValue!16833 () ValueCell!4727)

(declare-fun mapRest!16833 () (Array (_ BitVec 32) ValueCell!4727))

(declare-fun mapKey!16833 () (_ BitVec 32))

(assert (=> mapNonEmpty!16833 (= (arr!11524 _values!549) (store mapRest!16833 mapKey!16833 mapValue!16833))))

(declare-fun res!232189 () Bool)

(assert (=> start!38730 (=> (not res!232189) (not e!242618))))

(assert (=> start!38730 (= res!232189 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11875 _keys!709))))))

(assert (=> start!38730 e!242618))

(declare-fun tp_is_empty!10141 () Bool)

(assert (=> start!38730 tp_is_empty!10141))

(assert (=> start!38730 tp!32900))

(assert (=> start!38730 true))

(declare-fun e!242619 () Bool)

(declare-fun array_inv!8422 (array!24155) Bool)

(assert (=> start!38730 (and (array_inv!8422 _values!549) e!242619)))

(declare-fun array_inv!8423 (array!24153) Bool)

(assert (=> start!38730 (array_inv!8423 _keys!709)))

(declare-fun b!402871 () Bool)

(declare-fun res!232190 () Bool)

(assert (=> b!402871 (=> (not res!232190) (not e!242618))))

(assert (=> b!402871 (= res!232190 (or (= (select (arr!11523 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11523 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!402872 () Bool)

(declare-fun e!242615 () Bool)

(assert (=> b!402872 (= e!242619 (and e!242615 mapRes!16833))))

(declare-fun condMapEmpty!16833 () Bool)

(declare-fun mapDefault!16833 () ValueCell!4727)

