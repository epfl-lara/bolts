; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38650 () Bool)

(assert start!38650)

(declare-fun b_free!9179 () Bool)

(declare-fun b_next!9179 () Bool)

(assert (=> start!38650 (= b_free!9179 (not b_next!9179))))

(declare-fun tp!32661 () Bool)

(declare-fun b_and!16583 () Bool)

(assert (=> start!38650 (= tp!32661 b_and!16583)))

(declare-fun mapIsEmpty!16713 () Bool)

(declare-fun mapRes!16713 () Bool)

(assert (=> mapIsEmpty!16713 mapRes!16713))

(declare-datatypes ((V!14519 0))(
  ( (V!14520 (val!5075 Int)) )
))
(declare-fun minValue!515 () V!14519)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((ValueCell!4687 0))(
  ( (ValueCellFull!4687 (v!7318 V!14519)) (EmptyCell!4687) )
))
(declare-datatypes ((array!23999 0))(
  ( (array!24000 (arr!11446 (Array (_ BitVec 32) ValueCell!4687)) (size!11798 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23999)

(declare-fun zeroValue!515 () V!14519)

(declare-datatypes ((tuple2!6668 0))(
  ( (tuple2!6669 (_1!3344 (_ BitVec 64)) (_2!3344 V!14519)) )
))
(declare-datatypes ((List!6618 0))(
  ( (Nil!6615) (Cons!6614 (h!7470 tuple2!6668) (t!11800 List!6618)) )
))
(declare-datatypes ((ListLongMap!5595 0))(
  ( (ListLongMap!5596 (toList!2813 List!6618)) )
))
(declare-fun call!28199 () ListLongMap!5595)

(declare-fun c!54650 () Bool)

(declare-fun v!412 () V!14519)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((array!24001 0))(
  ( (array!24002 (arr!11447 (Array (_ BitVec 32) (_ BitVec 64))) (size!11799 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24001)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun bm!28195 () Bool)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun lt!187725 () array!24001)

(declare-fun getCurrentListMapNoExtraKeys!1027 (array!24001 array!23999 (_ BitVec 32) (_ BitVec 32) V!14519 V!14519 (_ BitVec 32) Int) ListLongMap!5595)

(assert (=> bm!28195 (= call!28199 (getCurrentListMapNoExtraKeys!1027 (ite c!54650 lt!187725 _keys!709) (ite c!54650 (array!24000 (store (arr!11446 _values!549) i!563 (ValueCellFull!4687 v!412)) (size!11798 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun bm!28196 () Bool)

(declare-fun call!28198 () ListLongMap!5595)

(assert (=> bm!28196 (= call!28198 (getCurrentListMapNoExtraKeys!1027 (ite c!54650 _keys!709 lt!187725) (ite c!54650 _values!549 (array!24000 (store (arr!11446 _values!549) i!563 (ValueCellFull!4687 v!412)) (size!11798 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!400828 () Bool)

(declare-fun res!230758 () Bool)

(declare-fun e!241779 () Bool)

(assert (=> b!400828 (=> (not res!230758) (not e!241779))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24001 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!400828 (= res!230758 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!400829 () Bool)

(declare-fun e!241777 () Bool)

(assert (=> b!400829 (= e!241779 e!241777)))

(declare-fun res!230750 () Bool)

(assert (=> b!400829 (=> (not res!230750) (not e!241777))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24001 (_ BitVec 32)) Bool)

(assert (=> b!400829 (= res!230750 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187725 mask!1025))))

(assert (=> b!400829 (= lt!187725 (array!24002 (store (arr!11447 _keys!709) i!563 k!794) (size!11799 _keys!709)))))

(declare-fun b!400830 () Bool)

(declare-fun res!230753 () Bool)

(assert (=> b!400830 (=> (not res!230753) (not e!241779))))

(declare-datatypes ((List!6619 0))(
  ( (Nil!6616) (Cons!6615 (h!7471 (_ BitVec 64)) (t!11801 List!6619)) )
))
(declare-fun arrayNoDuplicates!0 (array!24001 (_ BitVec 32) List!6619) Bool)

(assert (=> b!400830 (= res!230753 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6616))))

(declare-fun b!400831 () Bool)

(declare-fun res!230757 () Bool)

(assert (=> b!400831 (=> (not res!230757) (not e!241777))))

(assert (=> b!400831 (= res!230757 (arrayNoDuplicates!0 lt!187725 #b00000000000000000000000000000000 Nil!6616))))

(declare-fun b!400832 () Bool)

(declare-fun e!241780 () Bool)

(declare-fun tp_is_empty!10061 () Bool)

(assert (=> b!400832 (= e!241780 tp_is_empty!10061)))

(declare-fun b!400833 () Bool)

(declare-fun res!230751 () Bool)

(assert (=> b!400833 (=> (not res!230751) (not e!241779))))

(assert (=> b!400833 (= res!230751 (and (= (size!11798 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11799 _keys!709) (size!11798 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!400834 () Bool)

(declare-fun res!230759 () Bool)

(assert (=> b!400834 (=> (not res!230759) (not e!241779))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!400834 (= res!230759 (validMask!0 mask!1025))))

(declare-fun b!400835 () Bool)

(declare-fun e!241775 () Bool)

(assert (=> b!400835 (= e!241775 (and e!241780 mapRes!16713))))

(declare-fun condMapEmpty!16713 () Bool)

(declare-fun mapDefault!16713 () ValueCell!4687)

