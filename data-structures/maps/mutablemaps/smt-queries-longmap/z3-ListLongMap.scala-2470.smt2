; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38648 () Bool)

(assert start!38648)

(declare-fun b_free!9177 () Bool)

(declare-fun b_next!9177 () Bool)

(assert (=> start!38648 (= b_free!9177 (not b_next!9177))))

(declare-fun tp!32654 () Bool)

(declare-fun b_and!16581 () Bool)

(assert (=> start!38648 (= tp!32654 b_and!16581)))

(declare-fun b!400777 () Bool)

(declare-fun res!230719 () Bool)

(declare-fun e!241756 () Bool)

(assert (=> b!400777 (=> (not res!230719) (not e!241756))))

(declare-datatypes ((array!23995 0))(
  ( (array!23996 (arr!11444 (Array (_ BitVec 32) (_ BitVec 64))) (size!11796 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23995)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23995 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!400777 (= res!230719 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!400778 () Bool)

(declare-fun res!230724 () Bool)

(assert (=> b!400778 (=> (not res!230724) (not e!241756))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14517 0))(
  ( (V!14518 (val!5074 Int)) )
))
(declare-datatypes ((ValueCell!4686 0))(
  ( (ValueCellFull!4686 (v!7317 V!14517)) (EmptyCell!4686) )
))
(declare-datatypes ((array!23997 0))(
  ( (array!23998 (arr!11445 (Array (_ BitVec 32) ValueCell!4686)) (size!11797 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23997)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!400778 (= res!230724 (and (= (size!11797 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11796 _keys!709) (size!11797 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!400779 () Bool)

(declare-fun e!241754 () Bool)

(declare-fun e!241755 () Bool)

(declare-fun mapRes!16710 () Bool)

(assert (=> b!400779 (= e!241754 (and e!241755 mapRes!16710))))

(declare-fun condMapEmpty!16710 () Bool)

(declare-fun mapDefault!16710 () ValueCell!4686)

(assert (=> b!400779 (= condMapEmpty!16710 (= (arr!11445 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4686)) mapDefault!16710)))))

(declare-fun b!400780 () Bool)

(declare-fun res!230721 () Bool)

(declare-fun e!241757 () Bool)

(assert (=> b!400780 (=> (not res!230721) (not e!241757))))

(declare-fun lt!187719 () array!23995)

(declare-datatypes ((List!6616 0))(
  ( (Nil!6613) (Cons!6612 (h!7468 (_ BitVec 64)) (t!11798 List!6616)) )
))
(declare-fun arrayNoDuplicates!0 (array!23995 (_ BitVec 32) List!6616) Bool)

(assert (=> b!400780 (= res!230721 (arrayNoDuplicates!0 lt!187719 #b00000000000000000000000000000000 Nil!6613))))

(declare-fun b!400781 () Bool)

(declare-fun res!230714 () Bool)

(assert (=> b!400781 (=> (not res!230714) (not e!241756))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!400781 (= res!230714 (or (= (select (arr!11444 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11444 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!400782 () Bool)

(assert (=> b!400782 (= e!241756 e!241757)))

(declare-fun res!230715 () Bool)

(assert (=> b!400782 (=> (not res!230715) (not e!241757))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23995 (_ BitVec 32)) Bool)

(assert (=> b!400782 (= res!230715 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187719 mask!1025))))

(assert (=> b!400782 (= lt!187719 (array!23996 (store (arr!11444 _keys!709) i!563 k0!794) (size!11796 _keys!709)))))

(declare-fun minValue!515 () V!14517)

(declare-fun zeroValue!515 () V!14517)

(declare-fun bm!28189 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun defaultEntry!557 () Int)

(declare-fun c!54647 () Bool)

(declare-fun v!412 () V!14517)

(declare-datatypes ((tuple2!6666 0))(
  ( (tuple2!6667 (_1!3343 (_ BitVec 64)) (_2!3343 V!14517)) )
))
(declare-datatypes ((List!6617 0))(
  ( (Nil!6614) (Cons!6613 (h!7469 tuple2!6666) (t!11799 List!6617)) )
))
(declare-datatypes ((ListLongMap!5593 0))(
  ( (ListLongMap!5594 (toList!2812 List!6617)) )
))
(declare-fun call!28193 () ListLongMap!5593)

(declare-fun getCurrentListMapNoExtraKeys!1026 (array!23995 array!23997 (_ BitVec 32) (_ BitVec 32) V!14517 V!14517 (_ BitVec 32) Int) ListLongMap!5593)

(assert (=> bm!28189 (= call!28193 (getCurrentListMapNoExtraKeys!1026 (ite c!54647 _keys!709 lt!187719) (ite c!54647 _values!549 (array!23998 (store (arr!11445 _values!549) i!563 (ValueCellFull!4686 v!412)) (size!11797 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun e!241753 () Bool)

(declare-fun call!28192 () ListLongMap!5593)

(declare-fun b!400783 () Bool)

(declare-fun +!1098 (ListLongMap!5593 tuple2!6666) ListLongMap!5593)

(assert (=> b!400783 (= e!241753 (= call!28192 (+!1098 call!28193 (tuple2!6667 k0!794 v!412))))))

(declare-fun b!400784 () Bool)

(declare-fun res!230718 () Bool)

(assert (=> b!400784 (=> (not res!230718) (not e!241756))))

(assert (=> b!400784 (= res!230718 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11796 _keys!709))))))

(declare-fun mapIsEmpty!16710 () Bool)

(assert (=> mapIsEmpty!16710 mapRes!16710))

(declare-fun b!400785 () Bool)

(declare-fun e!241758 () Bool)

(declare-fun tp_is_empty!10059 () Bool)

(assert (=> b!400785 (= e!241758 tp_is_empty!10059)))

(declare-fun res!230722 () Bool)

(assert (=> start!38648 (=> (not res!230722) (not e!241756))))

(assert (=> start!38648 (= res!230722 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11796 _keys!709))))))

(assert (=> start!38648 e!241756))

(assert (=> start!38648 tp_is_empty!10059))

(assert (=> start!38648 tp!32654))

(assert (=> start!38648 true))

(declare-fun array_inv!8374 (array!23997) Bool)

(assert (=> start!38648 (and (array_inv!8374 _values!549) e!241754)))

(declare-fun array_inv!8375 (array!23995) Bool)

(assert (=> start!38648 (array_inv!8375 _keys!709)))

(declare-fun b!400786 () Bool)

(declare-fun res!230720 () Bool)

(assert (=> b!400786 (=> (not res!230720) (not e!241756))))

(assert (=> b!400786 (= res!230720 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6613))))

(declare-fun b!400787 () Bool)

(declare-fun res!230716 () Bool)

(assert (=> b!400787 (=> (not res!230716) (not e!241756))))

(assert (=> b!400787 (= res!230716 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun bm!28190 () Bool)

(assert (=> bm!28190 (= call!28192 (getCurrentListMapNoExtraKeys!1026 (ite c!54647 lt!187719 _keys!709) (ite c!54647 (array!23998 (store (arr!11445 _values!549) i!563 (ValueCellFull!4686 v!412)) (size!11797 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!400788 () Bool)

(assert (=> b!400788 (= e!241757 (not true))))

(assert (=> b!400788 e!241753))

(assert (=> b!400788 (= c!54647 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12095 0))(
  ( (Unit!12096) )
))
(declare-fun lt!187718 () Unit!12095)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!310 (array!23995 array!23997 (_ BitVec 32) (_ BitVec 32) V!14517 V!14517 (_ BitVec 32) (_ BitVec 64) V!14517 (_ BitVec 32) Int) Unit!12095)

(assert (=> b!400788 (= lt!187718 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!310 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!400789 () Bool)

(declare-fun res!230713 () Bool)

(assert (=> b!400789 (=> (not res!230713) (not e!241756))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!400789 (= res!230713 (validKeyInArray!0 k0!794))))

(declare-fun b!400790 () Bool)

(assert (=> b!400790 (= e!241753 (= call!28193 call!28192))))

(declare-fun b!400791 () Bool)

(assert (=> b!400791 (= e!241755 tp_is_empty!10059)))

(declare-fun b!400792 () Bool)

(declare-fun res!230717 () Bool)

(assert (=> b!400792 (=> (not res!230717) (not e!241756))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!400792 (= res!230717 (validMask!0 mask!1025))))

(declare-fun b!400793 () Bool)

(declare-fun res!230723 () Bool)

(assert (=> b!400793 (=> (not res!230723) (not e!241757))))

(assert (=> b!400793 (= res!230723 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11796 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!16710 () Bool)

(declare-fun tp!32655 () Bool)

(assert (=> mapNonEmpty!16710 (= mapRes!16710 (and tp!32655 e!241758))))

(declare-fun mapValue!16710 () ValueCell!4686)

(declare-fun mapRest!16710 () (Array (_ BitVec 32) ValueCell!4686))

(declare-fun mapKey!16710 () (_ BitVec 32))

(assert (=> mapNonEmpty!16710 (= (arr!11445 _values!549) (store mapRest!16710 mapKey!16710 mapValue!16710))))

(assert (= (and start!38648 res!230722) b!400792))

(assert (= (and b!400792 res!230717) b!400778))

(assert (= (and b!400778 res!230724) b!400787))

(assert (= (and b!400787 res!230716) b!400786))

(assert (= (and b!400786 res!230720) b!400784))

(assert (= (and b!400784 res!230718) b!400789))

(assert (= (and b!400789 res!230713) b!400781))

(assert (= (and b!400781 res!230714) b!400777))

(assert (= (and b!400777 res!230719) b!400782))

(assert (= (and b!400782 res!230715) b!400780))

(assert (= (and b!400780 res!230721) b!400793))

(assert (= (and b!400793 res!230723) b!400788))

(assert (= (and b!400788 c!54647) b!400783))

(assert (= (and b!400788 (not c!54647)) b!400790))

(assert (= (or b!400783 b!400790) bm!28190))

(assert (= (or b!400783 b!400790) bm!28189))

(assert (= (and b!400779 condMapEmpty!16710) mapIsEmpty!16710))

(assert (= (and b!400779 (not condMapEmpty!16710)) mapNonEmpty!16710))

(get-info :version)

(assert (= (and mapNonEmpty!16710 ((_ is ValueCellFull!4686) mapValue!16710)) b!400785))

(assert (= (and b!400779 ((_ is ValueCellFull!4686) mapDefault!16710)) b!400791))

(assert (= start!38648 b!400779))

(declare-fun m!394831 () Bool)

(assert (=> b!400788 m!394831))

(declare-fun m!394833 () Bool)

(assert (=> b!400782 m!394833))

(declare-fun m!394835 () Bool)

(assert (=> b!400782 m!394835))

(declare-fun m!394837 () Bool)

(assert (=> b!400789 m!394837))

(declare-fun m!394839 () Bool)

(assert (=> b!400787 m!394839))

(declare-fun m!394841 () Bool)

(assert (=> bm!28190 m!394841))

(declare-fun m!394843 () Bool)

(assert (=> bm!28190 m!394843))

(declare-fun m!394845 () Bool)

(assert (=> start!38648 m!394845))

(declare-fun m!394847 () Bool)

(assert (=> start!38648 m!394847))

(declare-fun m!394849 () Bool)

(assert (=> b!400783 m!394849))

(declare-fun m!394851 () Bool)

(assert (=> b!400781 m!394851))

(declare-fun m!394853 () Bool)

(assert (=> b!400786 m!394853))

(declare-fun m!394855 () Bool)

(assert (=> mapNonEmpty!16710 m!394855))

(declare-fun m!394857 () Bool)

(assert (=> b!400780 m!394857))

(declare-fun m!394859 () Bool)

(assert (=> b!400792 m!394859))

(declare-fun m!394861 () Bool)

(assert (=> b!400777 m!394861))

(assert (=> bm!28189 m!394841))

(declare-fun m!394863 () Bool)

(assert (=> bm!28189 m!394863))

(check-sat (not b!400789) (not b!400786) (not b!400788) (not b!400777) (not start!38648) (not b!400783) (not b_next!9177) (not b!400787) (not b!400792) (not mapNonEmpty!16710) tp_is_empty!10059 (not bm!28189) (not bm!28190) b_and!16581 (not b!400780) (not b!400782))
(check-sat b_and!16581 (not b_next!9177))
