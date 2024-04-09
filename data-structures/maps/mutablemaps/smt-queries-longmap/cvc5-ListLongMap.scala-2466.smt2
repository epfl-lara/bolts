; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38622 () Bool)

(assert start!38622)

(declare-fun b_free!9151 () Bool)

(declare-fun b_next!9151 () Bool)

(assert (=> start!38622 (= b_free!9151 (not b_next!9151))))

(declare-fun tp!32577 () Bool)

(declare-fun b_and!16555 () Bool)

(assert (=> start!38622 (= tp!32577 b_and!16555)))

(declare-fun b!400114 () Bool)

(declare-fun res!230255 () Bool)

(declare-fun e!241486 () Bool)

(assert (=> b!400114 (=> (not res!230255) (not e!241486))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!400114 (= res!230255 (validKeyInArray!0 k!794))))

(declare-fun b!400115 () Bool)

(declare-fun e!241482 () Bool)

(assert (=> b!400115 (= e!241482 (not true))))

(declare-fun e!241484 () Bool)

(assert (=> b!400115 e!241484))

(declare-fun c!54608 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!400115 (= c!54608 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((V!14483 0))(
  ( (V!14484 (val!5061 Int)) )
))
(declare-fun minValue!515 () V!14483)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4673 0))(
  ( (ValueCellFull!4673 (v!7304 V!14483)) (EmptyCell!4673) )
))
(declare-datatypes ((array!23943 0))(
  ( (array!23944 (arr!11418 (Array (_ BitVec 32) ValueCell!4673)) (size!11770 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23943)

(declare-fun zeroValue!515 () V!14483)

(declare-fun v!412 () V!14483)

(declare-datatypes ((array!23945 0))(
  ( (array!23946 (arr!11419 (Array (_ BitVec 32) (_ BitVec 64))) (size!11771 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23945)

(declare-fun defaultEntry!557 () Int)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((Unit!12079 0))(
  ( (Unit!12080) )
))
(declare-fun lt!187640 () Unit!12079)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!302 (array!23945 array!23943 (_ BitVec 32) (_ BitVec 32) V!14483 V!14483 (_ BitVec 32) (_ BitVec 64) V!14483 (_ BitVec 32) Int) Unit!12079)

(assert (=> b!400115 (= lt!187640 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!302 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!16671 () Bool)

(declare-fun mapRes!16671 () Bool)

(assert (=> mapIsEmpty!16671 mapRes!16671))

(declare-fun b!400116 () Bool)

(declare-fun res!230253 () Bool)

(assert (=> b!400116 (=> (not res!230253) (not e!241486))))

(declare-fun arrayContainsKey!0 (array!23945 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!400116 (= res!230253 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!400117 () Bool)

(declare-fun res!230247 () Bool)

(assert (=> b!400117 (=> (not res!230247) (not e!241486))))

(assert (=> b!400117 (= res!230247 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11771 _keys!709))))))

(declare-datatypes ((tuple2!6642 0))(
  ( (tuple2!6643 (_1!3331 (_ BitVec 64)) (_2!3331 V!14483)) )
))
(declare-datatypes ((List!6596 0))(
  ( (Nil!6593) (Cons!6592 (h!7448 tuple2!6642) (t!11778 List!6596)) )
))
(declare-datatypes ((ListLongMap!5569 0))(
  ( (ListLongMap!5570 (toList!2800 List!6596)) )
))
(declare-fun call!28114 () ListLongMap!5569)

(declare-fun lt!187641 () array!23945)

(declare-fun bm!28111 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1016 (array!23945 array!23943 (_ BitVec 32) (_ BitVec 32) V!14483 V!14483 (_ BitVec 32) Int) ListLongMap!5569)

(assert (=> bm!28111 (= call!28114 (getCurrentListMapNoExtraKeys!1016 (ite c!54608 lt!187641 _keys!709) (ite c!54608 (array!23944 (store (arr!11418 _values!549) i!563 (ValueCellFull!4673 v!412)) (size!11770 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!400118 () Bool)

(declare-fun res!230251 () Bool)

(assert (=> b!400118 (=> (not res!230251) (not e!241486))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23945 (_ BitVec 32)) Bool)

(assert (=> b!400118 (= res!230251 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!230254 () Bool)

(assert (=> start!38622 (=> (not res!230254) (not e!241486))))

(assert (=> start!38622 (= res!230254 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11771 _keys!709))))))

(assert (=> start!38622 e!241486))

(declare-fun tp_is_empty!10033 () Bool)

(assert (=> start!38622 tp_is_empty!10033))

(assert (=> start!38622 tp!32577))

(assert (=> start!38622 true))

(declare-fun e!241481 () Bool)

(declare-fun array_inv!8358 (array!23943) Bool)

(assert (=> start!38622 (and (array_inv!8358 _values!549) e!241481)))

(declare-fun array_inv!8359 (array!23945) Bool)

(assert (=> start!38622 (array_inv!8359 _keys!709)))

(declare-fun b!400119 () Bool)

(declare-fun res!230246 () Bool)

(assert (=> b!400119 (=> (not res!230246) (not e!241486))))

(assert (=> b!400119 (= res!230246 (or (= (select (arr!11419 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11419 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!400120 () Bool)

(declare-fun call!28115 () ListLongMap!5569)

(assert (=> b!400120 (= e!241484 (= call!28115 call!28114))))

(declare-fun b!400121 () Bool)

(declare-fun e!241483 () Bool)

(assert (=> b!400121 (= e!241483 tp_is_empty!10033)))

(declare-fun b!400122 () Bool)

(declare-fun res!230248 () Bool)

(assert (=> b!400122 (=> (not res!230248) (not e!241482))))

(declare-datatypes ((List!6597 0))(
  ( (Nil!6594) (Cons!6593 (h!7449 (_ BitVec 64)) (t!11779 List!6597)) )
))
(declare-fun arrayNoDuplicates!0 (array!23945 (_ BitVec 32) List!6597) Bool)

(assert (=> b!400122 (= res!230248 (arrayNoDuplicates!0 lt!187641 #b00000000000000000000000000000000 Nil!6594))))

(declare-fun b!400123 () Bool)

(declare-fun +!1088 (ListLongMap!5569 tuple2!6642) ListLongMap!5569)

(assert (=> b!400123 (= e!241484 (= call!28114 (+!1088 call!28115 (tuple2!6643 k!794 v!412))))))

(declare-fun b!400124 () Bool)

(declare-fun res!230245 () Bool)

(assert (=> b!400124 (=> (not res!230245) (not e!241486))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!400124 (= res!230245 (validMask!0 mask!1025))))

(declare-fun bm!28112 () Bool)

(assert (=> bm!28112 (= call!28115 (getCurrentListMapNoExtraKeys!1016 (ite c!54608 _keys!709 lt!187641) (ite c!54608 _values!549 (array!23944 (store (arr!11418 _values!549) i!563 (ValueCellFull!4673 v!412)) (size!11770 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!400125 () Bool)

(declare-fun res!230250 () Bool)

(assert (=> b!400125 (=> (not res!230250) (not e!241486))))

(assert (=> b!400125 (= res!230250 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6594))))

(declare-fun b!400126 () Bool)

(declare-fun res!230256 () Bool)

(assert (=> b!400126 (=> (not res!230256) (not e!241482))))

(assert (=> b!400126 (= res!230256 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11771 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!400127 () Bool)

(assert (=> b!400127 (= e!241486 e!241482)))

(declare-fun res!230249 () Bool)

(assert (=> b!400127 (=> (not res!230249) (not e!241482))))

(assert (=> b!400127 (= res!230249 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187641 mask!1025))))

(assert (=> b!400127 (= lt!187641 (array!23946 (store (arr!11419 _keys!709) i!563 k!794) (size!11771 _keys!709)))))

(declare-fun mapNonEmpty!16671 () Bool)

(declare-fun tp!32576 () Bool)

(declare-fun e!241485 () Bool)

(assert (=> mapNonEmpty!16671 (= mapRes!16671 (and tp!32576 e!241485))))

(declare-fun mapValue!16671 () ValueCell!4673)

(declare-fun mapRest!16671 () (Array (_ BitVec 32) ValueCell!4673))

(declare-fun mapKey!16671 () (_ BitVec 32))

(assert (=> mapNonEmpty!16671 (= (arr!11418 _values!549) (store mapRest!16671 mapKey!16671 mapValue!16671))))

(declare-fun b!400128 () Bool)

(declare-fun res!230252 () Bool)

(assert (=> b!400128 (=> (not res!230252) (not e!241486))))

(assert (=> b!400128 (= res!230252 (and (= (size!11770 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11771 _keys!709) (size!11770 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!400129 () Bool)

(assert (=> b!400129 (= e!241485 tp_is_empty!10033)))

(declare-fun b!400130 () Bool)

(assert (=> b!400130 (= e!241481 (and e!241483 mapRes!16671))))

(declare-fun condMapEmpty!16671 () Bool)

(declare-fun mapDefault!16671 () ValueCell!4673)

