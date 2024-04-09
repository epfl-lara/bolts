; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38728 () Bool)

(assert start!38728)

(declare-fun b_free!9257 () Bool)

(declare-fun b_next!9257 () Bool)

(assert (=> start!38728 (= b_free!9257 (not b_next!9257))))

(declare-fun tp!32894 () Bool)

(declare-fun b_and!16661 () Bool)

(assert (=> start!38728 (= tp!32894 b_and!16661)))

(declare-fun b!402817 () Bool)

(declare-fun res!232155 () Bool)

(declare-fun e!242595 () Bool)

(assert (=> b!402817 (=> (not res!232155) (not e!242595))))

(declare-datatypes ((array!24149 0))(
  ( (array!24150 (arr!11521 (Array (_ BitVec 32) (_ BitVec 64))) (size!11873 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24149)

(declare-datatypes ((List!6681 0))(
  ( (Nil!6678) (Cons!6677 (h!7533 (_ BitVec 64)) (t!11863 List!6681)) )
))
(declare-fun arrayNoDuplicates!0 (array!24149 (_ BitVec 32) List!6681) Bool)

(assert (=> b!402817 (= res!232155 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6678))))

(declare-fun b!402818 () Bool)

(declare-fun res!232160 () Bool)

(assert (=> b!402818 (=> (not res!232160) (not e!242595))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!402818 (= res!232160 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!16830 () Bool)

(declare-fun mapRes!16830 () Bool)

(declare-fun tp!32895 () Bool)

(declare-fun e!242596 () Bool)

(assert (=> mapNonEmpty!16830 (= mapRes!16830 (and tp!32895 e!242596))))

(declare-datatypes ((V!14623 0))(
  ( (V!14624 (val!5114 Int)) )
))
(declare-datatypes ((ValueCell!4726 0))(
  ( (ValueCellFull!4726 (v!7357 V!14623)) (EmptyCell!4726) )
))
(declare-fun mapRest!16830 () (Array (_ BitVec 32) ValueCell!4726))

(declare-fun mapKey!16830 () (_ BitVec 32))

(declare-fun mapValue!16830 () ValueCell!4726)

(declare-datatypes ((array!24151 0))(
  ( (array!24152 (arr!11522 (Array (_ BitVec 32) ValueCell!4726)) (size!11874 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24151)

(assert (=> mapNonEmpty!16830 (= (arr!11522 _values!549) (store mapRest!16830 mapKey!16830 mapValue!16830))))

(declare-fun b!402819 () Bool)

(declare-fun res!232161 () Bool)

(assert (=> b!402819 (=> (not res!232161) (not e!242595))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!402819 (= res!232161 (validKeyInArray!0 k!794))))

(declare-fun b!402820 () Bool)

(declare-fun res!232159 () Bool)

(declare-fun e!242599 () Bool)

(assert (=> b!402820 (=> (not res!232159) (not e!242599))))

(declare-fun lt!187958 () array!24149)

(assert (=> b!402820 (= res!232159 (arrayNoDuplicates!0 lt!187958 #b00000000000000000000000000000000 Nil!6678))))

(declare-fun b!402821 () Bool)

(declare-fun e!242594 () Bool)

(declare-datatypes ((tuple2!6738 0))(
  ( (tuple2!6739 (_1!3379 (_ BitVec 64)) (_2!3379 V!14623)) )
))
(declare-datatypes ((List!6682 0))(
  ( (Nil!6679) (Cons!6678 (h!7534 tuple2!6738) (t!11864 List!6682)) )
))
(declare-datatypes ((ListLongMap!5665 0))(
  ( (ListLongMap!5666 (toList!2848 List!6682)) )
))
(declare-fun call!28432 () ListLongMap!5665)

(declare-fun call!28433 () ListLongMap!5665)

(assert (=> b!402821 (= e!242594 (= call!28432 call!28433))))

(declare-fun minValue!515 () V!14623)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun bm!28429 () Bool)

(declare-fun zeroValue!515 () V!14623)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun c!54767 () Bool)

(declare-fun v!412 () V!14623)

(declare-fun getCurrentListMapNoExtraKeys!1059 (array!24149 array!24151 (_ BitVec 32) (_ BitVec 32) V!14623 V!14623 (_ BitVec 32) Int) ListLongMap!5665)

(assert (=> bm!28429 (= call!28433 (getCurrentListMapNoExtraKeys!1059 (ite c!54767 lt!187958 _keys!709) (ite c!54767 (array!24152 (store (arr!11522 _values!549) i!563 (ValueCellFull!4726 v!412)) (size!11874 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!402822 () Bool)

(declare-fun res!232158 () Bool)

(assert (=> b!402822 (=> (not res!232158) (not e!242595))))

(assert (=> b!402822 (= res!232158 (and (= (size!11874 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11873 _keys!709) (size!11874 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!402823 () Bool)

(declare-fun +!1125 (ListLongMap!5665 tuple2!6738) ListLongMap!5665)

(assert (=> b!402823 (= e!242594 (= call!28433 (+!1125 call!28432 (tuple2!6739 k!794 v!412))))))

(declare-fun b!402824 () Bool)

(declare-fun e!242597 () Bool)

(declare-fun tp_is_empty!10139 () Bool)

(assert (=> b!402824 (= e!242597 tp_is_empty!10139)))

(declare-fun mapIsEmpty!16830 () Bool)

(assert (=> mapIsEmpty!16830 mapRes!16830))

(declare-fun res!232156 () Bool)

(assert (=> start!38728 (=> (not res!232156) (not e!242595))))

(assert (=> start!38728 (= res!232156 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11873 _keys!709))))))

(assert (=> start!38728 e!242595))

(assert (=> start!38728 tp_is_empty!10139))

(assert (=> start!38728 tp!32894))

(assert (=> start!38728 true))

(declare-fun e!242598 () Bool)

(declare-fun array_inv!8420 (array!24151) Bool)

(assert (=> start!38728 (and (array_inv!8420 _values!549) e!242598)))

(declare-fun array_inv!8421 (array!24149) Bool)

(assert (=> start!38728 (array_inv!8421 _keys!709)))

(declare-fun b!402825 () Bool)

(declare-fun res!232154 () Bool)

(assert (=> b!402825 (=> (not res!232154) (not e!242595))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24149 (_ BitVec 32)) Bool)

(assert (=> b!402825 (= res!232154 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!402826 () Bool)

(assert (=> b!402826 (= e!242599 (not true))))

(assert (=> b!402826 e!242594))

(assert (=> b!402826 (= c!54767 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12145 0))(
  ( (Unit!12146) )
))
(declare-fun lt!187959 () Unit!12145)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!335 (array!24149 array!24151 (_ BitVec 32) (_ BitVec 32) V!14623 V!14623 (_ BitVec 32) (_ BitVec 64) V!14623 (_ BitVec 32) Int) Unit!12145)

(assert (=> b!402826 (= lt!187959 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!335 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun bm!28430 () Bool)

(assert (=> bm!28430 (= call!28432 (getCurrentListMapNoExtraKeys!1059 (ite c!54767 _keys!709 lt!187958) (ite c!54767 _values!549 (array!24152 (store (arr!11522 _values!549) i!563 (ValueCellFull!4726 v!412)) (size!11874 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!402827 () Bool)

(assert (=> b!402827 (= e!242598 (and e!242597 mapRes!16830))))

(declare-fun condMapEmpty!16830 () Bool)

(declare-fun mapDefault!16830 () ValueCell!4726)

