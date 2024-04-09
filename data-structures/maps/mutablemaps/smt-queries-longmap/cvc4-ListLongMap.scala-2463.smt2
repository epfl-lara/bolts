; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38608 () Bool)

(assert start!38608)

(declare-fun b_free!9137 () Bool)

(declare-fun b_next!9137 () Bool)

(assert (=> start!38608 (= b_free!9137 (not b_next!9137))))

(declare-fun tp!32535 () Bool)

(declare-fun b_and!16541 () Bool)

(assert (=> start!38608 (= tp!32535 b_and!16541)))

(declare-fun b!399757 () Bool)

(declare-fun res!229999 () Bool)

(declare-fun e!241337 () Bool)

(assert (=> b!399757 (=> (not res!229999) (not e!241337))))

(declare-datatypes ((array!23917 0))(
  ( (array!23918 (arr!11405 (Array (_ BitVec 32) (_ BitVec 64))) (size!11757 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23917)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14463 0))(
  ( (V!14464 (val!5054 Int)) )
))
(declare-datatypes ((ValueCell!4666 0))(
  ( (ValueCellFull!4666 (v!7297 V!14463)) (EmptyCell!4666) )
))
(declare-datatypes ((array!23919 0))(
  ( (array!23920 (arr!11406 (Array (_ BitVec 32) ValueCell!4666)) (size!11758 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23919)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!399757 (= res!229999 (and (= (size!11758 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11757 _keys!709) (size!11758 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!399758 () Bool)

(declare-fun e!241333 () Bool)

(assert (=> b!399758 (= e!241333 (not true))))

(declare-fun e!241336 () Bool)

(assert (=> b!399758 e!241336))

(declare-fun c!54587 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!399758 (= c!54587 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun minValue!515 () V!14463)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!14463)

(declare-fun k!794 () (_ BitVec 64))

(declare-datatypes ((Unit!12071 0))(
  ( (Unit!12072) )
))
(declare-fun lt!187599 () Unit!12071)

(declare-fun v!412 () V!14463)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!298 (array!23917 array!23919 (_ BitVec 32) (_ BitVec 32) V!14463 V!14463 (_ BitVec 32) (_ BitVec 64) V!14463 (_ BitVec 32) Int) Unit!12071)

(assert (=> b!399758 (= lt!187599 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!298 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!229996 () Bool)

(assert (=> start!38608 (=> (not res!229996) (not e!241337))))

(assert (=> start!38608 (= res!229996 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11757 _keys!709))))))

(assert (=> start!38608 e!241337))

(declare-fun tp_is_empty!10019 () Bool)

(assert (=> start!38608 tp_is_empty!10019))

(assert (=> start!38608 tp!32535))

(assert (=> start!38608 true))

(declare-fun e!241339 () Bool)

(declare-fun array_inv!8346 (array!23919) Bool)

(assert (=> start!38608 (and (array_inv!8346 _values!549) e!241339)))

(declare-fun array_inv!8347 (array!23917) Bool)

(assert (=> start!38608 (array_inv!8347 _keys!709)))

(declare-fun b!399759 () Bool)

(declare-fun res!229994 () Bool)

(assert (=> b!399759 (=> (not res!229994) (not e!241337))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23917 (_ BitVec 32)) Bool)

(assert (=> b!399759 (= res!229994 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!399760 () Bool)

(assert (=> b!399760 (= e!241337 e!241333)))

(declare-fun res!229997 () Bool)

(assert (=> b!399760 (=> (not res!229997) (not e!241333))))

(declare-fun lt!187598 () array!23917)

(assert (=> b!399760 (= res!229997 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187598 mask!1025))))

(assert (=> b!399760 (= lt!187598 (array!23918 (store (arr!11405 _keys!709) i!563 k!794) (size!11757 _keys!709)))))

(declare-fun bm!28069 () Bool)

(declare-datatypes ((tuple2!6630 0))(
  ( (tuple2!6631 (_1!3325 (_ BitVec 64)) (_2!3325 V!14463)) )
))
(declare-datatypes ((List!6584 0))(
  ( (Nil!6581) (Cons!6580 (h!7436 tuple2!6630) (t!11766 List!6584)) )
))
(declare-datatypes ((ListLongMap!5557 0))(
  ( (ListLongMap!5558 (toList!2794 List!6584)) )
))
(declare-fun call!28072 () ListLongMap!5557)

(declare-fun getCurrentListMapNoExtraKeys!1010 (array!23917 array!23919 (_ BitVec 32) (_ BitVec 32) V!14463 V!14463 (_ BitVec 32) Int) ListLongMap!5557)

(assert (=> bm!28069 (= call!28072 (getCurrentListMapNoExtraKeys!1010 (ite c!54587 _keys!709 lt!187598) (ite c!54587 _values!549 (array!23920 (store (arr!11406 _values!549) i!563 (ValueCellFull!4666 v!412)) (size!11758 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!16650 () Bool)

(declare-fun mapRes!16650 () Bool)

(assert (=> mapIsEmpty!16650 mapRes!16650))

(declare-fun b!399761 () Bool)

(declare-fun res!230002 () Bool)

(assert (=> b!399761 (=> (not res!230002) (not e!241337))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!399761 (= res!230002 (validKeyInArray!0 k!794))))

(declare-fun mapNonEmpty!16650 () Bool)

(declare-fun tp!32534 () Bool)

(declare-fun e!241338 () Bool)

(assert (=> mapNonEmpty!16650 (= mapRes!16650 (and tp!32534 e!241338))))

(declare-fun mapRest!16650 () (Array (_ BitVec 32) ValueCell!4666))

(declare-fun mapKey!16650 () (_ BitVec 32))

(declare-fun mapValue!16650 () ValueCell!4666)

(assert (=> mapNonEmpty!16650 (= (arr!11406 _values!549) (store mapRest!16650 mapKey!16650 mapValue!16650))))

(declare-fun b!399762 () Bool)

(declare-fun e!241334 () Bool)

(assert (=> b!399762 (= e!241334 tp_is_empty!10019)))

(declare-fun b!399763 () Bool)

(declare-fun res!230004 () Bool)

(assert (=> b!399763 (=> (not res!230004) (not e!241337))))

(declare-datatypes ((List!6585 0))(
  ( (Nil!6582) (Cons!6581 (h!7437 (_ BitVec 64)) (t!11767 List!6585)) )
))
(declare-fun arrayNoDuplicates!0 (array!23917 (_ BitVec 32) List!6585) Bool)

(assert (=> b!399763 (= res!230004 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6582))))

(declare-fun b!399764 () Bool)

(assert (=> b!399764 (= e!241338 tp_is_empty!10019)))

(declare-fun b!399765 () Bool)

(declare-fun res!230001 () Bool)

(assert (=> b!399765 (=> (not res!230001) (not e!241333))))

(assert (=> b!399765 (= res!230001 (arrayNoDuplicates!0 lt!187598 #b00000000000000000000000000000000 Nil!6582))))

(declare-fun b!399766 () Bool)

(declare-fun res!230000 () Bool)

(assert (=> b!399766 (=> (not res!230000) (not e!241337))))

(assert (=> b!399766 (= res!230000 (or (= (select (arr!11405 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11405 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun call!28073 () ListLongMap!5557)

(declare-fun b!399767 () Bool)

(declare-fun +!1085 (ListLongMap!5557 tuple2!6630) ListLongMap!5557)

(assert (=> b!399767 (= e!241336 (= call!28073 (+!1085 call!28072 (tuple2!6631 k!794 v!412))))))

(declare-fun b!399768 () Bool)

(declare-fun res!229993 () Bool)

(assert (=> b!399768 (=> (not res!229993) (not e!241337))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!399768 (= res!229993 (validMask!0 mask!1025))))

(declare-fun b!399769 () Bool)

(declare-fun res!230003 () Bool)

(assert (=> b!399769 (=> (not res!230003) (not e!241337))))

(declare-fun arrayContainsKey!0 (array!23917 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!399769 (= res!230003 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun bm!28070 () Bool)

(assert (=> bm!28070 (= call!28073 (getCurrentListMapNoExtraKeys!1010 (ite c!54587 lt!187598 _keys!709) (ite c!54587 (array!23920 (store (arr!11406 _values!549) i!563 (ValueCellFull!4666 v!412)) (size!11758 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!399770 () Bool)

(assert (=> b!399770 (= e!241336 (= call!28072 call!28073))))

(declare-fun b!399771 () Bool)

(assert (=> b!399771 (= e!241339 (and e!241334 mapRes!16650))))

(declare-fun condMapEmpty!16650 () Bool)

(declare-fun mapDefault!16650 () ValueCell!4666)

