; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38762 () Bool)

(assert start!38762)

(declare-fun b_free!9291 () Bool)

(declare-fun b_next!9291 () Bool)

(assert (=> start!38762 (= b_free!9291 (not b_next!9291))))

(declare-fun tp!32997 () Bool)

(declare-fun b_and!16695 () Bool)

(assert (=> start!38762 (= tp!32997 b_and!16695)))

(declare-fun c!54818 () Bool)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14669 0))(
  ( (V!14670 (val!5131 Int)) )
))
(declare-datatypes ((ValueCell!4743 0))(
  ( (ValueCellFull!4743 (v!7374 V!14669)) (EmptyCell!4743) )
))
(declare-datatypes ((array!24215 0))(
  ( (array!24216 (arr!11554 (Array (_ BitVec 32) ValueCell!4743)) (size!11906 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24215)

(declare-datatypes ((array!24217 0))(
  ( (array!24218 (arr!11555 (Array (_ BitVec 32) (_ BitVec 64))) (size!11907 (_ BitVec 32))) )
))
(declare-fun lt!188061 () array!24217)

(declare-fun zeroValue!515 () V!14669)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun bm!28531 () Bool)

(declare-fun v!412 () V!14669)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun _keys!709 () array!24217)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun minValue!515 () V!14669)

(declare-datatypes ((tuple2!6770 0))(
  ( (tuple2!6771 (_1!3395 (_ BitVec 64)) (_2!3395 V!14669)) )
))
(declare-datatypes ((List!6707 0))(
  ( (Nil!6704) (Cons!6703 (h!7559 tuple2!6770) (t!11889 List!6707)) )
))
(declare-datatypes ((ListLongMap!5697 0))(
  ( (ListLongMap!5698 (toList!2864 List!6707)) )
))
(declare-fun call!28534 () ListLongMap!5697)

(declare-fun getCurrentListMapNoExtraKeys!1074 (array!24217 array!24215 (_ BitVec 32) (_ BitVec 32) V!14669 V!14669 (_ BitVec 32) Int) ListLongMap!5697)

(assert (=> bm!28531 (= call!28534 (getCurrentListMapNoExtraKeys!1074 (ite c!54818 lt!188061 _keys!709) (ite c!54818 (array!24216 (store (arr!11554 _values!549) i!563 (ValueCellFull!4743 v!412)) (size!11906 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!403684 () Bool)

(declare-fun res!232772 () Bool)

(declare-fun e!242952 () Bool)

(assert (=> b!403684 (=> (not res!232772) (not e!242952))))

(assert (=> b!403684 (= res!232772 (and (= (size!11906 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11907 _keys!709) (size!11906 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun call!28535 () ListLongMap!5697)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun e!242955 () Bool)

(declare-fun b!403685 () Bool)

(declare-fun +!1135 (ListLongMap!5697 tuple2!6770) ListLongMap!5697)

(assert (=> b!403685 (= e!242955 (= call!28534 (+!1135 call!28535 (tuple2!6771 k0!794 v!412))))))

(declare-fun b!403686 () Bool)

(assert (=> b!403686 (= e!242955 (= call!28535 call!28534))))

(declare-fun b!403687 () Bool)

(declare-fun e!242950 () Bool)

(assert (=> b!403687 (= e!242950 (not true))))

(assert (=> b!403687 e!242955))

(assert (=> b!403687 (= c!54818 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12167 0))(
  ( (Unit!12168) )
))
(declare-fun lt!188060 () Unit!12167)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!346 (array!24217 array!24215 (_ BitVec 32) (_ BitVec 32) V!14669 V!14669 (_ BitVec 32) (_ BitVec 64) V!14669 (_ BitVec 32) Int) Unit!12167)

(assert (=> b!403687 (= lt!188060 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!346 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!232769 () Bool)

(assert (=> start!38762 (=> (not res!232769) (not e!242952))))

(assert (=> start!38762 (= res!232769 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11907 _keys!709))))))

(assert (=> start!38762 e!242952))

(declare-fun tp_is_empty!10173 () Bool)

(assert (=> start!38762 tp_is_empty!10173))

(assert (=> start!38762 tp!32997))

(assert (=> start!38762 true))

(declare-fun e!242956 () Bool)

(declare-fun array_inv!8440 (array!24215) Bool)

(assert (=> start!38762 (and (array_inv!8440 _values!549) e!242956)))

(declare-fun array_inv!8441 (array!24217) Bool)

(assert (=> start!38762 (array_inv!8441 _keys!709)))

(declare-fun b!403688 () Bool)

(declare-fun e!242953 () Bool)

(declare-fun mapRes!16881 () Bool)

(assert (=> b!403688 (= e!242956 (and e!242953 mapRes!16881))))

(declare-fun condMapEmpty!16881 () Bool)

(declare-fun mapDefault!16881 () ValueCell!4743)

(assert (=> b!403688 (= condMapEmpty!16881 (= (arr!11554 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4743)) mapDefault!16881)))))

(declare-fun b!403689 () Bool)

(declare-fun res!232774 () Bool)

(assert (=> b!403689 (=> (not res!232774) (not e!242952))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!403689 (= res!232774 (validMask!0 mask!1025))))

(declare-fun b!403690 () Bool)

(declare-fun res!232767 () Bool)

(assert (=> b!403690 (=> (not res!232767) (not e!242950))))

(declare-datatypes ((List!6708 0))(
  ( (Nil!6705) (Cons!6704 (h!7560 (_ BitVec 64)) (t!11890 List!6708)) )
))
(declare-fun arrayNoDuplicates!0 (array!24217 (_ BitVec 32) List!6708) Bool)

(assert (=> b!403690 (= res!232767 (arrayNoDuplicates!0 lt!188061 #b00000000000000000000000000000000 Nil!6705))))

(declare-fun b!403691 () Bool)

(declare-fun res!232773 () Bool)

(assert (=> b!403691 (=> (not res!232773) (not e!242952))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!403691 (= res!232773 (validKeyInArray!0 k0!794))))

(declare-fun mapIsEmpty!16881 () Bool)

(assert (=> mapIsEmpty!16881 mapRes!16881))

(declare-fun b!403692 () Bool)

(declare-fun res!232770 () Bool)

(assert (=> b!403692 (=> (not res!232770) (not e!242952))))

(assert (=> b!403692 (= res!232770 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11907 _keys!709))))))

(declare-fun mapNonEmpty!16881 () Bool)

(declare-fun tp!32996 () Bool)

(declare-fun e!242951 () Bool)

(assert (=> mapNonEmpty!16881 (= mapRes!16881 (and tp!32996 e!242951))))

(declare-fun mapRest!16881 () (Array (_ BitVec 32) ValueCell!4743))

(declare-fun mapKey!16881 () (_ BitVec 32))

(declare-fun mapValue!16881 () ValueCell!4743)

(assert (=> mapNonEmpty!16881 (= (arr!11554 _values!549) (store mapRest!16881 mapKey!16881 mapValue!16881))))

(declare-fun b!403693 () Bool)

(assert (=> b!403693 (= e!242953 tp_is_empty!10173)))

(declare-fun b!403694 () Bool)

(declare-fun res!232776 () Bool)

(assert (=> b!403694 (=> (not res!232776) (not e!242952))))

(assert (=> b!403694 (= res!232776 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6705))))

(declare-fun bm!28532 () Bool)

(assert (=> bm!28532 (= call!28535 (getCurrentListMapNoExtraKeys!1074 (ite c!54818 _keys!709 lt!188061) (ite c!54818 _values!549 (array!24216 (store (arr!11554 _values!549) i!563 (ValueCellFull!4743 v!412)) (size!11906 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!403695 () Bool)

(declare-fun res!232771 () Bool)

(assert (=> b!403695 (=> (not res!232771) (not e!242952))))

(declare-fun arrayContainsKey!0 (array!24217 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!403695 (= res!232771 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!403696 () Bool)

(assert (=> b!403696 (= e!242951 tp_is_empty!10173)))

(declare-fun b!403697 () Bool)

(assert (=> b!403697 (= e!242952 e!242950)))

(declare-fun res!232766 () Bool)

(assert (=> b!403697 (=> (not res!232766) (not e!242950))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24217 (_ BitVec 32)) Bool)

(assert (=> b!403697 (= res!232766 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!188061 mask!1025))))

(assert (=> b!403697 (= lt!188061 (array!24218 (store (arr!11555 _keys!709) i!563 k0!794) (size!11907 _keys!709)))))

(declare-fun b!403698 () Bool)

(declare-fun res!232768 () Bool)

(assert (=> b!403698 (=> (not res!232768) (not e!242952))))

(assert (=> b!403698 (= res!232768 (or (= (select (arr!11555 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11555 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!403699 () Bool)

(declare-fun res!232765 () Bool)

(assert (=> b!403699 (=> (not res!232765) (not e!242952))))

(assert (=> b!403699 (= res!232765 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!403700 () Bool)

(declare-fun res!232775 () Bool)

(assert (=> b!403700 (=> (not res!232775) (not e!242950))))

(assert (=> b!403700 (= res!232775 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11907 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(assert (= (and start!38762 res!232769) b!403689))

(assert (= (and b!403689 res!232774) b!403684))

(assert (= (and b!403684 res!232772) b!403699))

(assert (= (and b!403699 res!232765) b!403694))

(assert (= (and b!403694 res!232776) b!403692))

(assert (= (and b!403692 res!232770) b!403691))

(assert (= (and b!403691 res!232773) b!403698))

(assert (= (and b!403698 res!232768) b!403695))

(assert (= (and b!403695 res!232771) b!403697))

(assert (= (and b!403697 res!232766) b!403690))

(assert (= (and b!403690 res!232767) b!403700))

(assert (= (and b!403700 res!232775) b!403687))

(assert (= (and b!403687 c!54818) b!403685))

(assert (= (and b!403687 (not c!54818)) b!403686))

(assert (= (or b!403685 b!403686) bm!28531))

(assert (= (or b!403685 b!403686) bm!28532))

(assert (= (and b!403688 condMapEmpty!16881) mapIsEmpty!16881))

(assert (= (and b!403688 (not condMapEmpty!16881)) mapNonEmpty!16881))

(get-info :version)

(assert (= (and mapNonEmpty!16881 ((_ is ValueCellFull!4743) mapValue!16881)) b!403696))

(assert (= (and b!403688 ((_ is ValueCellFull!4743) mapDefault!16881)) b!403693))

(assert (= start!38762 b!403688))

(declare-fun m!396769 () Bool)

(assert (=> b!403685 m!396769))

(declare-fun m!396771 () Bool)

(assert (=> b!403697 m!396771))

(declare-fun m!396773 () Bool)

(assert (=> b!403697 m!396773))

(declare-fun m!396775 () Bool)

(assert (=> bm!28532 m!396775))

(declare-fun m!396777 () Bool)

(assert (=> bm!28532 m!396777))

(declare-fun m!396779 () Bool)

(assert (=> b!403687 m!396779))

(declare-fun m!396781 () Bool)

(assert (=> mapNonEmpty!16881 m!396781))

(declare-fun m!396783 () Bool)

(assert (=> b!403695 m!396783))

(declare-fun m!396785 () Bool)

(assert (=> b!403689 m!396785))

(declare-fun m!396787 () Bool)

(assert (=> b!403698 m!396787))

(declare-fun m!396789 () Bool)

(assert (=> b!403690 m!396789))

(declare-fun m!396791 () Bool)

(assert (=> start!38762 m!396791))

(declare-fun m!396793 () Bool)

(assert (=> start!38762 m!396793))

(assert (=> bm!28531 m!396775))

(declare-fun m!396795 () Bool)

(assert (=> bm!28531 m!396795))

(declare-fun m!396797 () Bool)

(assert (=> b!403694 m!396797))

(declare-fun m!396799 () Bool)

(assert (=> b!403699 m!396799))

(declare-fun m!396801 () Bool)

(assert (=> b!403691 m!396801))

(check-sat b_and!16695 (not b!403695) (not b!403689) (not start!38762) (not b!403699) (not b!403690) (not bm!28531) (not mapNonEmpty!16881) (not b!403691) (not b_next!9291) (not b!403697) (not b!403685) (not bm!28532) tp_is_empty!10173 (not b!403687) (not b!403694))
(check-sat b_and!16695 (not b_next!9291))
