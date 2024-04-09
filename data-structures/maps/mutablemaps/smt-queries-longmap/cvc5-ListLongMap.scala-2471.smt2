; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38652 () Bool)

(assert start!38652)

(declare-fun b_free!9181 () Bool)

(declare-fun b_next!9181 () Bool)

(assert (=> start!38652 (= b_free!9181 (not b_next!9181))))

(declare-fun tp!32667 () Bool)

(declare-fun b_and!16585 () Bool)

(assert (=> start!38652 (= tp!32667 b_and!16585)))

(declare-fun b!400879 () Bool)

(declare-fun res!230791 () Bool)

(declare-fun e!241796 () Bool)

(assert (=> b!400879 (=> (not res!230791) (not e!241796))))

(declare-datatypes ((array!24003 0))(
  ( (array!24004 (arr!11448 (Array (_ BitVec 32) (_ BitVec 64))) (size!11800 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24003)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24003 (_ BitVec 32)) Bool)

(assert (=> b!400879 (= res!230791 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!400880 () Bool)

(declare-fun e!241799 () Bool)

(assert (=> b!400880 (= e!241796 e!241799)))

(declare-fun res!230792 () Bool)

(assert (=> b!400880 (=> (not res!230792) (not e!241799))))

(declare-fun lt!187730 () array!24003)

(assert (=> b!400880 (= res!230792 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187730 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!400880 (= lt!187730 (array!24004 (store (arr!11448 _keys!709) i!563 k!794) (size!11800 _keys!709)))))

(declare-fun b!400881 () Bool)

(assert (=> b!400881 (= e!241799 (not true))))

(declare-fun e!241801 () Bool)

(assert (=> b!400881 e!241801))

(declare-fun c!54653 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!400881 (= c!54653 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((V!14523 0))(
  ( (V!14524 (val!5076 Int)) )
))
(declare-fun minValue!515 () V!14523)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((ValueCell!4688 0))(
  ( (ValueCellFull!4688 (v!7319 V!14523)) (EmptyCell!4688) )
))
(declare-datatypes ((array!24005 0))(
  ( (array!24006 (arr!11449 (Array (_ BitVec 32) ValueCell!4688)) (size!11801 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24005)

(declare-fun zeroValue!515 () V!14523)

(declare-fun v!412 () V!14523)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((Unit!12097 0))(
  ( (Unit!12098) )
))
(declare-fun lt!187731 () Unit!12097)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!311 (array!24003 array!24005 (_ BitVec 32) (_ BitVec 32) V!14523 V!14523 (_ BitVec 32) (_ BitVec 64) V!14523 (_ BitVec 32) Int) Unit!12097)

(assert (=> b!400881 (= lt!187731 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!311 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapNonEmpty!16716 () Bool)

(declare-fun mapRes!16716 () Bool)

(declare-fun tp!32666 () Bool)

(declare-fun e!241797 () Bool)

(assert (=> mapNonEmpty!16716 (= mapRes!16716 (and tp!32666 e!241797))))

(declare-fun mapKey!16716 () (_ BitVec 32))

(declare-fun mapValue!16716 () ValueCell!4688)

(declare-fun mapRest!16716 () (Array (_ BitVec 32) ValueCell!4688))

(assert (=> mapNonEmpty!16716 (= (arr!11449 _values!549) (store mapRest!16716 mapKey!16716 mapValue!16716))))

(declare-fun mapIsEmpty!16716 () Bool)

(assert (=> mapIsEmpty!16716 mapRes!16716))

(declare-fun b!400882 () Bool)

(declare-fun res!230785 () Bool)

(assert (=> b!400882 (=> (not res!230785) (not e!241796))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!400882 (= res!230785 (validKeyInArray!0 k!794))))

(declare-fun res!230789 () Bool)

(assert (=> start!38652 (=> (not res!230789) (not e!241796))))

(assert (=> start!38652 (= res!230789 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11800 _keys!709))))))

(assert (=> start!38652 e!241796))

(declare-fun tp_is_empty!10063 () Bool)

(assert (=> start!38652 tp_is_empty!10063))

(assert (=> start!38652 tp!32667))

(assert (=> start!38652 true))

(declare-fun e!241800 () Bool)

(declare-fun array_inv!8376 (array!24005) Bool)

(assert (=> start!38652 (and (array_inv!8376 _values!549) e!241800)))

(declare-fun array_inv!8377 (array!24003) Bool)

(assert (=> start!38652 (array_inv!8377 _keys!709)))

(declare-fun b!400883 () Bool)

(declare-fun res!230795 () Bool)

(assert (=> b!400883 (=> (not res!230795) (not e!241799))))

(assert (=> b!400883 (= res!230795 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11800 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!400884 () Bool)

(assert (=> b!400884 (= e!241797 tp_is_empty!10063)))

(declare-fun b!400885 () Bool)

(declare-datatypes ((tuple2!6670 0))(
  ( (tuple2!6671 (_1!3345 (_ BitVec 64)) (_2!3345 V!14523)) )
))
(declare-datatypes ((List!6620 0))(
  ( (Nil!6617) (Cons!6616 (h!7472 tuple2!6670) (t!11802 List!6620)) )
))
(declare-datatypes ((ListLongMap!5597 0))(
  ( (ListLongMap!5598 (toList!2814 List!6620)) )
))
(declare-fun call!28205 () ListLongMap!5597)

(declare-fun call!28204 () ListLongMap!5597)

(assert (=> b!400885 (= e!241801 (= call!28205 call!28204))))

(declare-fun bm!28201 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1028 (array!24003 array!24005 (_ BitVec 32) (_ BitVec 32) V!14523 V!14523 (_ BitVec 32) Int) ListLongMap!5597)

(assert (=> bm!28201 (= call!28204 (getCurrentListMapNoExtraKeys!1028 (ite c!54653 lt!187730 _keys!709) (ite c!54653 (array!24006 (store (arr!11449 _values!549) i!563 (ValueCellFull!4688 v!412)) (size!11801 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!400886 () Bool)

(declare-fun res!230786 () Bool)

(assert (=> b!400886 (=> (not res!230786) (not e!241796))))

(assert (=> b!400886 (= res!230786 (or (= (select (arr!11448 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11448 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!400887 () Bool)

(declare-fun res!230790 () Bool)

(assert (=> b!400887 (=> (not res!230790) (not e!241796))))

(assert (=> b!400887 (= res!230790 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11800 _keys!709))))))

(declare-fun b!400888 () Bool)

(declare-fun +!1099 (ListLongMap!5597 tuple2!6670) ListLongMap!5597)

(assert (=> b!400888 (= e!241801 (= call!28204 (+!1099 call!28205 (tuple2!6671 k!794 v!412))))))

(declare-fun b!400889 () Bool)

(declare-fun res!230788 () Bool)

(assert (=> b!400889 (=> (not res!230788) (not e!241796))))

(declare-datatypes ((List!6621 0))(
  ( (Nil!6618) (Cons!6617 (h!7473 (_ BitVec 64)) (t!11803 List!6621)) )
))
(declare-fun arrayNoDuplicates!0 (array!24003 (_ BitVec 32) List!6621) Bool)

(assert (=> b!400889 (= res!230788 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6618))))

(declare-fun b!400890 () Bool)

(declare-fun res!230794 () Bool)

(assert (=> b!400890 (=> (not res!230794) (not e!241799))))

(assert (=> b!400890 (= res!230794 (arrayNoDuplicates!0 lt!187730 #b00000000000000000000000000000000 Nil!6618))))

(declare-fun b!400891 () Bool)

(declare-fun e!241795 () Bool)

(assert (=> b!400891 (= e!241800 (and e!241795 mapRes!16716))))

(declare-fun condMapEmpty!16716 () Bool)

(declare-fun mapDefault!16716 () ValueCell!4688)

