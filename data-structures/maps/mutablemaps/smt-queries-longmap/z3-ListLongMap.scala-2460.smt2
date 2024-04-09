; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38588 () Bool)

(assert start!38588)

(declare-fun b_free!9117 () Bool)

(declare-fun b_next!9117 () Bool)

(assert (=> start!38588 (= b_free!9117 (not b_next!9117))))

(declare-fun tp!32474 () Bool)

(declare-fun b_and!16521 () Bool)

(assert (=> start!38588 (= tp!32474 b_and!16521)))

(declare-fun b!399248 () Bool)

(declare-fun res!229643 () Bool)

(declare-fun e!241129 () Bool)

(assert (=> b!399248 (=> (not res!229643) (not e!241129))))

(declare-datatypes ((array!23877 0))(
  ( (array!23878 (arr!11385 (Array (_ BitVec 32) (_ BitVec 64))) (size!11737 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23877)

(declare-datatypes ((List!6566 0))(
  ( (Nil!6563) (Cons!6562 (h!7418 (_ BitVec 64)) (t!11748 List!6566)) )
))
(declare-fun arrayNoDuplicates!0 (array!23877 (_ BitVec 32) List!6566) Bool)

(assert (=> b!399248 (= res!229643 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6563))))

(declare-fun b!399249 () Bool)

(declare-datatypes ((V!14437 0))(
  ( (V!14438 (val!5044 Int)) )
))
(declare-datatypes ((tuple2!6612 0))(
  ( (tuple2!6613 (_1!3316 (_ BitVec 64)) (_2!3316 V!14437)) )
))
(declare-datatypes ((List!6567 0))(
  ( (Nil!6564) (Cons!6563 (h!7419 tuple2!6612) (t!11749 List!6567)) )
))
(declare-datatypes ((ListLongMap!5539 0))(
  ( (ListLongMap!5540 (toList!2785 List!6567)) )
))
(declare-fun call!28013 () ListLongMap!5539)

(declare-fun call!28012 () ListLongMap!5539)

(declare-fun e!241126 () Bool)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun v!412 () V!14437)

(declare-fun +!1077 (ListLongMap!5539 tuple2!6612) ListLongMap!5539)

(assert (=> b!399249 (= e!241126 (= call!28013 (+!1077 call!28012 (tuple2!6613 k0!794 v!412))))))

(declare-fun b!399250 () Bool)

(declare-fun e!241123 () Bool)

(assert (=> b!399250 (= e!241129 e!241123)))

(declare-fun res!229635 () Bool)

(assert (=> b!399250 (=> (not res!229635) (not e!241123))))

(declare-fun lt!187539 () array!23877)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23877 (_ BitVec 32)) Bool)

(assert (=> b!399250 (= res!229635 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187539 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!399250 (= lt!187539 (array!23878 (store (arr!11385 _keys!709) i!563 k0!794) (size!11737 _keys!709)))))

(declare-fun mapNonEmpty!16620 () Bool)

(declare-fun mapRes!16620 () Bool)

(declare-fun tp!32475 () Bool)

(declare-fun e!241124 () Bool)

(assert (=> mapNonEmpty!16620 (= mapRes!16620 (and tp!32475 e!241124))))

(declare-datatypes ((ValueCell!4656 0))(
  ( (ValueCellFull!4656 (v!7287 V!14437)) (EmptyCell!4656) )
))
(declare-datatypes ((array!23879 0))(
  ( (array!23880 (arr!11386 (Array (_ BitVec 32) ValueCell!4656)) (size!11738 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23879)

(declare-fun mapRest!16620 () (Array (_ BitVec 32) ValueCell!4656))

(declare-fun mapKey!16620 () (_ BitVec 32))

(declare-fun mapValue!16620 () ValueCell!4656)

(assert (=> mapNonEmpty!16620 (= (arr!11386 _values!549) (store mapRest!16620 mapKey!16620 mapValue!16620))))

(declare-fun b!399251 () Bool)

(declare-fun e!241128 () Bool)

(declare-fun tp_is_empty!9999 () Bool)

(assert (=> b!399251 (= e!241128 tp_is_empty!9999)))

(declare-fun b!399252 () Bool)

(declare-fun res!229637 () Bool)

(assert (=> b!399252 (=> (not res!229637) (not e!241129))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!399252 (= res!229637 (and (= (size!11738 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11737 _keys!709) (size!11738 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun minValue!515 () V!14437)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!14437)

(declare-fun bm!28009 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun c!54557 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1001 (array!23877 array!23879 (_ BitVec 32) (_ BitVec 32) V!14437 V!14437 (_ BitVec 32) Int) ListLongMap!5539)

(assert (=> bm!28009 (= call!28013 (getCurrentListMapNoExtraKeys!1001 (ite c!54557 lt!187539 _keys!709) (ite c!54557 (array!23880 (store (arr!11386 _values!549) i!563 (ValueCellFull!4656 v!412)) (size!11738 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!399253 () Bool)

(assert (=> b!399253 (= e!241123 (not true))))

(assert (=> b!399253 e!241126))

(assert (=> b!399253 (= c!54557 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12055 0))(
  ( (Unit!12056) )
))
(declare-fun lt!187538 () Unit!12055)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!290 (array!23877 array!23879 (_ BitVec 32) (_ BitVec 32) V!14437 V!14437 (_ BitVec 32) (_ BitVec 64) V!14437 (_ BitVec 32) Int) Unit!12055)

(assert (=> b!399253 (= lt!187538 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!290 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!16620 () Bool)

(assert (=> mapIsEmpty!16620 mapRes!16620))

(declare-fun b!399254 () Bool)

(declare-fun res!229639 () Bool)

(assert (=> b!399254 (=> (not res!229639) (not e!241129))))

(assert (=> b!399254 (= res!229639 (or (= (select (arr!11385 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11385 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!399255 () Bool)

(assert (=> b!399255 (= e!241126 (= call!28012 call!28013))))

(declare-fun res!229642 () Bool)

(assert (=> start!38588 (=> (not res!229642) (not e!241129))))

(assert (=> start!38588 (= res!229642 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11737 _keys!709))))))

(assert (=> start!38588 e!241129))

(assert (=> start!38588 tp_is_empty!9999))

(assert (=> start!38588 tp!32474))

(assert (=> start!38588 true))

(declare-fun e!241127 () Bool)

(declare-fun array_inv!8332 (array!23879) Bool)

(assert (=> start!38588 (and (array_inv!8332 _values!549) e!241127)))

(declare-fun array_inv!8333 (array!23877) Bool)

(assert (=> start!38588 (array_inv!8333 _keys!709)))

(declare-fun b!399247 () Bool)

(declare-fun res!229638 () Bool)

(assert (=> b!399247 (=> (not res!229638) (not e!241123))))

(assert (=> b!399247 (= res!229638 (arrayNoDuplicates!0 lt!187539 #b00000000000000000000000000000000 Nil!6563))))

(declare-fun b!399256 () Bool)

(declare-fun res!229641 () Bool)

(assert (=> b!399256 (=> (not res!229641) (not e!241129))))

(declare-fun arrayContainsKey!0 (array!23877 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!399256 (= res!229641 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!399257 () Bool)

(assert (=> b!399257 (= e!241127 (and e!241128 mapRes!16620))))

(declare-fun condMapEmpty!16620 () Bool)

(declare-fun mapDefault!16620 () ValueCell!4656)

(assert (=> b!399257 (= condMapEmpty!16620 (= (arr!11386 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4656)) mapDefault!16620)))))

(declare-fun b!399258 () Bool)

(declare-fun res!229636 () Bool)

(assert (=> b!399258 (=> (not res!229636) (not e!241129))))

(assert (=> b!399258 (= res!229636 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!399259 () Bool)

(declare-fun res!229634 () Bool)

(assert (=> b!399259 (=> (not res!229634) (not e!241123))))

(assert (=> b!399259 (= res!229634 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11737 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun b!399260 () Bool)

(declare-fun res!229633 () Bool)

(assert (=> b!399260 (=> (not res!229633) (not e!241129))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!399260 (= res!229633 (validKeyInArray!0 k0!794))))

(declare-fun b!399261 () Bool)

(declare-fun res!229640 () Bool)

(assert (=> b!399261 (=> (not res!229640) (not e!241129))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!399261 (= res!229640 (validMask!0 mask!1025))))

(declare-fun b!399262 () Bool)

(assert (=> b!399262 (= e!241124 tp_is_empty!9999)))

(declare-fun bm!28010 () Bool)

(assert (=> bm!28010 (= call!28012 (getCurrentListMapNoExtraKeys!1001 (ite c!54557 _keys!709 lt!187539) (ite c!54557 _values!549 (array!23880 (store (arr!11386 _values!549) i!563 (ValueCellFull!4656 v!412)) (size!11738 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!399263 () Bool)

(declare-fun res!229644 () Bool)

(assert (=> b!399263 (=> (not res!229644) (not e!241129))))

(assert (=> b!399263 (= res!229644 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11737 _keys!709))))))

(assert (= (and start!38588 res!229642) b!399261))

(assert (= (and b!399261 res!229640) b!399252))

(assert (= (and b!399252 res!229637) b!399258))

(assert (= (and b!399258 res!229636) b!399248))

(assert (= (and b!399248 res!229643) b!399263))

(assert (= (and b!399263 res!229644) b!399260))

(assert (= (and b!399260 res!229633) b!399254))

(assert (= (and b!399254 res!229639) b!399256))

(assert (= (and b!399256 res!229641) b!399250))

(assert (= (and b!399250 res!229635) b!399247))

(assert (= (and b!399247 res!229638) b!399259))

(assert (= (and b!399259 res!229634) b!399253))

(assert (= (and b!399253 c!54557) b!399249))

(assert (= (and b!399253 (not c!54557)) b!399255))

(assert (= (or b!399249 b!399255) bm!28009))

(assert (= (or b!399249 b!399255) bm!28010))

(assert (= (and b!399257 condMapEmpty!16620) mapIsEmpty!16620))

(assert (= (and b!399257 (not condMapEmpty!16620)) mapNonEmpty!16620))

(get-info :version)

(assert (= (and mapNonEmpty!16620 ((_ is ValueCellFull!4656) mapValue!16620)) b!399262))

(assert (= (and b!399257 ((_ is ValueCellFull!4656) mapDefault!16620)) b!399251))

(assert (= start!38588 b!399257))

(declare-fun m!393811 () Bool)

(assert (=> b!399254 m!393811))

(declare-fun m!393813 () Bool)

(assert (=> b!399247 m!393813))

(declare-fun m!393815 () Bool)

(assert (=> b!399261 m!393815))

(declare-fun m!393817 () Bool)

(assert (=> b!399248 m!393817))

(declare-fun m!393819 () Bool)

(assert (=> bm!28009 m!393819))

(declare-fun m!393821 () Bool)

(assert (=> bm!28009 m!393821))

(declare-fun m!393823 () Bool)

(assert (=> b!399253 m!393823))

(declare-fun m!393825 () Bool)

(assert (=> b!399249 m!393825))

(declare-fun m!393827 () Bool)

(assert (=> b!399258 m!393827))

(declare-fun m!393829 () Bool)

(assert (=> b!399256 m!393829))

(declare-fun m!393831 () Bool)

(assert (=> b!399260 m!393831))

(assert (=> bm!28010 m!393819))

(declare-fun m!393833 () Bool)

(assert (=> bm!28010 m!393833))

(declare-fun m!393835 () Bool)

(assert (=> start!38588 m!393835))

(declare-fun m!393837 () Bool)

(assert (=> start!38588 m!393837))

(declare-fun m!393839 () Bool)

(assert (=> b!399250 m!393839))

(declare-fun m!393841 () Bool)

(assert (=> b!399250 m!393841))

(declare-fun m!393843 () Bool)

(assert (=> mapNonEmpty!16620 m!393843))

(check-sat (not b!399250) tp_is_empty!9999 (not start!38588) (not b!399260) (not b!399256) (not b!399247) (not bm!28009) (not b_next!9117) (not mapNonEmpty!16620) (not b!399248) (not b!399249) (not b!399253) (not b!399261) b_and!16521 (not b!399258) (not bm!28010))
(check-sat b_and!16521 (not b_next!9117))
