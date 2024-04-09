; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21230 () Bool)

(assert start!21230)

(declare-fun b_free!5649 () Bool)

(declare-fun b_next!5649 () Bool)

(assert (=> start!21230 (= b_free!5649 (not b_next!5649))))

(declare-fun tp!20021 () Bool)

(declare-fun b_and!12545 () Bool)

(assert (=> start!21230 (= tp!20021 b_and!12545)))

(declare-fun b!213755 () Bool)

(declare-fun res!104676 () Bool)

(declare-fun e!138998 () Bool)

(assert (=> b!213755 (=> (not res!104676) (not e!138998))))

(declare-datatypes ((array!10224 0))(
  ( (array!10225 (arr!4851 (Array (_ BitVec 32) (_ BitVec 64))) (size!5176 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10224)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10224 (_ BitVec 32)) Bool)

(assert (=> b!213755 (= res!104676 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!213756 () Bool)

(declare-fun e!139003 () Bool)

(declare-fun tp_is_empty!5511 () Bool)

(assert (=> b!213756 (= e!139003 tp_is_empty!5511)))

(declare-fun res!104674 () Bool)

(assert (=> start!21230 (=> (not res!104674) (not e!138998))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!21230 (= res!104674 (validMask!0 mask!1149))))

(assert (=> start!21230 e!138998))

(declare-datatypes ((V!6995 0))(
  ( (V!6996 (val!2800 Int)) )
))
(declare-datatypes ((ValueCell!2412 0))(
  ( (ValueCellFull!2412 (v!4810 V!6995)) (EmptyCell!2412) )
))
(declare-datatypes ((array!10226 0))(
  ( (array!10227 (arr!4852 (Array (_ BitVec 32) ValueCell!2412)) (size!5177 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10226)

(declare-fun e!139000 () Bool)

(declare-fun array_inv!3199 (array!10226) Bool)

(assert (=> start!21230 (and (array_inv!3199 _values!649) e!139000)))

(assert (=> start!21230 true))

(assert (=> start!21230 tp_is_empty!5511))

(declare-fun array_inv!3200 (array!10224) Bool)

(assert (=> start!21230 (array_inv!3200 _keys!825)))

(assert (=> start!21230 tp!20021))

(declare-fun b!213757 () Bool)

(declare-fun res!104675 () Bool)

(assert (=> b!213757 (=> (not res!104675) (not e!138998))))

(declare-datatypes ((List!3142 0))(
  ( (Nil!3139) (Cons!3138 (h!3780 (_ BitVec 64)) (t!8103 List!3142)) )
))
(declare-fun arrayNoDuplicates!0 (array!10224 (_ BitVec 32) List!3142) Bool)

(assert (=> b!213757 (= res!104675 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3139))))

(declare-fun b!213758 () Bool)

(declare-fun res!104677 () Bool)

(assert (=> b!213758 (=> (not res!104677) (not e!138998))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!213758 (= res!104677 (validKeyInArray!0 k0!843))))

(declare-fun b!213759 () Bool)

(declare-fun mapRes!9368 () Bool)

(assert (=> b!213759 (= e!139000 (and e!139003 mapRes!9368))))

(declare-fun condMapEmpty!9368 () Bool)

(declare-fun mapDefault!9368 () ValueCell!2412)

(assert (=> b!213759 (= condMapEmpty!9368 (= (arr!4852 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2412)) mapDefault!9368)))))

(declare-fun b!213760 () Bool)

(declare-fun res!104680 () Bool)

(assert (=> b!213760 (=> (not res!104680) (not e!138998))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!213760 (= res!104680 (and (= (size!5177 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5176 _keys!825) (size!5177 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!9368 () Bool)

(assert (=> mapIsEmpty!9368 mapRes!9368))

(declare-fun b!213761 () Bool)

(declare-fun res!104679 () Bool)

(assert (=> b!213761 (=> (not res!104679) (not e!138998))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!213761 (= res!104679 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5176 _keys!825))))))

(declare-fun b!213762 () Bool)

(declare-fun res!104678 () Bool)

(assert (=> b!213762 (=> (not res!104678) (not e!138998))))

(assert (=> b!213762 (= res!104678 (= (select (arr!4851 _keys!825) i!601) k0!843))))

(declare-fun b!213763 () Bool)

(declare-fun e!139002 () Bool)

(assert (=> b!213763 (= e!139002 tp_is_empty!5511)))

(declare-fun mapNonEmpty!9368 () Bool)

(declare-fun tp!20020 () Bool)

(assert (=> mapNonEmpty!9368 (= mapRes!9368 (and tp!20020 e!139002))))

(declare-fun mapRest!9368 () (Array (_ BitVec 32) ValueCell!2412))

(declare-fun mapValue!9368 () ValueCell!2412)

(declare-fun mapKey!9368 () (_ BitVec 32))

(assert (=> mapNonEmpty!9368 (= (arr!4852 _values!649) (store mapRest!9368 mapKey!9368 mapValue!9368))))

(declare-fun b!213764 () Bool)

(declare-fun e!139001 () Bool)

(assert (=> b!213764 (= e!138998 (not e!139001))))

(declare-fun res!104673 () Bool)

(assert (=> b!213764 (=> res!104673 e!139001)))

(declare-datatypes ((tuple2!4234 0))(
  ( (tuple2!4235 (_1!2127 (_ BitVec 64)) (_2!2127 V!6995)) )
))
(declare-datatypes ((List!3143 0))(
  ( (Nil!3140) (Cons!3139 (h!3781 tuple2!4234) (t!8104 List!3143)) )
))
(declare-datatypes ((ListLongMap!3161 0))(
  ( (ListLongMap!3162 (toList!1596 List!3143)) )
))
(declare-fun lt!110613 () ListLongMap!3161)

(declare-fun lt!110609 () ListLongMap!3161)

(declare-fun lt!110614 () Bool)

(assert (=> b!213764 (= res!104673 (or (and (not lt!110614) (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!110614) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!110614) (not (= lt!110613 lt!110609))))))

(assert (=> b!213764 (= lt!110614 (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun lt!110615 () ListLongMap!3161)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6995)

(declare-fun zeroValue!615 () V!6995)

(declare-fun getCurrentListMap!1119 (array!10224 array!10226 (_ BitVec 32) (_ BitVec 32) V!6995 V!6995 (_ BitVec 32) Int) ListLongMap!3161)

(assert (=> b!213764 (= lt!110615 (getCurrentListMap!1119 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!110610 () array!10226)

(assert (=> b!213764 (= lt!110613 (getCurrentListMap!1119 _keys!825 lt!110610 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!110617 () ListLongMap!3161)

(assert (=> b!213764 (and (= lt!110609 lt!110617) (= lt!110617 lt!110609))))

(declare-fun lt!110612 () ListLongMap!3161)

(declare-fun lt!110611 () tuple2!4234)

(declare-fun +!589 (ListLongMap!3161 tuple2!4234) ListLongMap!3161)

(assert (=> b!213764 (= lt!110617 (+!589 lt!110612 lt!110611))))

(declare-fun v!520 () V!6995)

(assert (=> b!213764 (= lt!110611 (tuple2!4235 k0!843 v!520))))

(declare-datatypes ((Unit!6479 0))(
  ( (Unit!6480) )
))
(declare-fun lt!110616 () Unit!6479)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!236 (array!10224 array!10226 (_ BitVec 32) (_ BitVec 32) V!6995 V!6995 (_ BitVec 32) (_ BitVec 64) V!6995 (_ BitVec 32) Int) Unit!6479)

(assert (=> b!213764 (= lt!110616 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!236 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!518 (array!10224 array!10226 (_ BitVec 32) (_ BitVec 32) V!6995 V!6995 (_ BitVec 32) Int) ListLongMap!3161)

(assert (=> b!213764 (= lt!110609 (getCurrentListMapNoExtraKeys!518 _keys!825 lt!110610 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!213764 (= lt!110610 (array!10227 (store (arr!4852 _values!649) i!601 (ValueCellFull!2412 v!520)) (size!5177 _values!649)))))

(assert (=> b!213764 (= lt!110612 (getCurrentListMapNoExtraKeys!518 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!213765 () Bool)

(assert (=> b!213765 (= e!139001 (= (+!589 lt!110615 lt!110611) lt!110613))))

(assert (= (and start!21230 res!104674) b!213760))

(assert (= (and b!213760 res!104680) b!213755))

(assert (= (and b!213755 res!104676) b!213757))

(assert (= (and b!213757 res!104675) b!213761))

(assert (= (and b!213761 res!104679) b!213758))

(assert (= (and b!213758 res!104677) b!213762))

(assert (= (and b!213762 res!104678) b!213764))

(assert (= (and b!213764 (not res!104673)) b!213765))

(assert (= (and b!213759 condMapEmpty!9368) mapIsEmpty!9368))

(assert (= (and b!213759 (not condMapEmpty!9368)) mapNonEmpty!9368))

(get-info :version)

(assert (= (and mapNonEmpty!9368 ((_ is ValueCellFull!2412) mapValue!9368)) b!213763))

(assert (= (and b!213759 ((_ is ValueCellFull!2412) mapDefault!9368)) b!213756))

(assert (= start!21230 b!213759))

(declare-fun m!241643 () Bool)

(assert (=> b!213755 m!241643))

(declare-fun m!241645 () Bool)

(assert (=> mapNonEmpty!9368 m!241645))

(declare-fun m!241647 () Bool)

(assert (=> b!213764 m!241647))

(declare-fun m!241649 () Bool)

(assert (=> b!213764 m!241649))

(declare-fun m!241651 () Bool)

(assert (=> b!213764 m!241651))

(declare-fun m!241653 () Bool)

(assert (=> b!213764 m!241653))

(declare-fun m!241655 () Bool)

(assert (=> b!213764 m!241655))

(declare-fun m!241657 () Bool)

(assert (=> b!213764 m!241657))

(declare-fun m!241659 () Bool)

(assert (=> b!213764 m!241659))

(declare-fun m!241661 () Bool)

(assert (=> b!213765 m!241661))

(declare-fun m!241663 () Bool)

(assert (=> b!213757 m!241663))

(declare-fun m!241665 () Bool)

(assert (=> b!213758 m!241665))

(declare-fun m!241667 () Bool)

(assert (=> start!21230 m!241667))

(declare-fun m!241669 () Bool)

(assert (=> start!21230 m!241669))

(declare-fun m!241671 () Bool)

(assert (=> start!21230 m!241671))

(declare-fun m!241673 () Bool)

(assert (=> b!213762 m!241673))

(check-sat (not b!213765) tp_is_empty!5511 (not b!213755) (not start!21230) (not b!213757) (not mapNonEmpty!9368) b_and!12545 (not b!213764) (not b!213758) (not b_next!5649))
(check-sat b_and!12545 (not b_next!5649))
(get-model)

(declare-fun b!213807 () Bool)

(declare-fun e!139028 () Bool)

(declare-fun e!139030 () Bool)

(assert (=> b!213807 (= e!139028 e!139030)))

(declare-fun lt!110652 () (_ BitVec 64))

(assert (=> b!213807 (= lt!110652 (select (arr!4851 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!110653 () Unit!6479)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!10224 (_ BitVec 64) (_ BitVec 32)) Unit!6479)

(assert (=> b!213807 (= lt!110653 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!825 lt!110652 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!10224 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!213807 (arrayContainsKey!0 _keys!825 lt!110652 #b00000000000000000000000000000000)))

(declare-fun lt!110651 () Unit!6479)

(assert (=> b!213807 (= lt!110651 lt!110653)))

(declare-fun res!104709 () Bool)

(declare-datatypes ((SeekEntryResult!725 0))(
  ( (MissingZero!725 (index!5070 (_ BitVec 32))) (Found!725 (index!5071 (_ BitVec 32))) (Intermediate!725 (undefined!1537 Bool) (index!5072 (_ BitVec 32)) (x!22284 (_ BitVec 32))) (Undefined!725) (MissingVacant!725 (index!5073 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10224 (_ BitVec 32)) SeekEntryResult!725)

(assert (=> b!213807 (= res!104709 (= (seekEntryOrOpen!0 (select (arr!4851 _keys!825) #b00000000000000000000000000000000) _keys!825 mask!1149) (Found!725 #b00000000000000000000000000000000)))))

(assert (=> b!213807 (=> (not res!104709) (not e!139030))))

(declare-fun b!213808 () Bool)

(declare-fun call!20261 () Bool)

(assert (=> b!213808 (= e!139030 call!20261)))

(declare-fun d!58149 () Bool)

(declare-fun res!104710 () Bool)

(declare-fun e!139029 () Bool)

(assert (=> d!58149 (=> res!104710 e!139029)))

(assert (=> d!58149 (= res!104710 (bvsge #b00000000000000000000000000000000 (size!5176 _keys!825)))))

(assert (=> d!58149 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149) e!139029)))

(declare-fun b!213809 () Bool)

(assert (=> b!213809 (= e!139028 call!20261)))

(declare-fun bm!20258 () Bool)

(assert (=> bm!20258 (= call!20261 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!825 mask!1149))))

(declare-fun b!213810 () Bool)

(assert (=> b!213810 (= e!139029 e!139028)))

(declare-fun c!35958 () Bool)

(assert (=> b!213810 (= c!35958 (validKeyInArray!0 (select (arr!4851 _keys!825) #b00000000000000000000000000000000)))))

(assert (= (and d!58149 (not res!104710)) b!213810))

(assert (= (and b!213810 c!35958) b!213807))

(assert (= (and b!213810 (not c!35958)) b!213809))

(assert (= (and b!213807 res!104709) b!213808))

(assert (= (or b!213808 b!213809) bm!20258))

(declare-fun m!241707 () Bool)

(assert (=> b!213807 m!241707))

(declare-fun m!241709 () Bool)

(assert (=> b!213807 m!241709))

(declare-fun m!241711 () Bool)

(assert (=> b!213807 m!241711))

(assert (=> b!213807 m!241707))

(declare-fun m!241713 () Bool)

(assert (=> b!213807 m!241713))

(declare-fun m!241715 () Bool)

(assert (=> bm!20258 m!241715))

(assert (=> b!213810 m!241707))

(assert (=> b!213810 m!241707))

(declare-fun m!241717 () Bool)

(assert (=> b!213810 m!241717))

(assert (=> b!213755 d!58149))

(declare-fun bm!20273 () Bool)

(declare-fun call!20278 () ListLongMap!3161)

(declare-fun call!20277 () ListLongMap!3161)

(assert (=> bm!20273 (= call!20278 call!20277)))

(declare-fun b!213853 () Bool)

(declare-fun e!139059 () Bool)

(declare-fun call!20282 () Bool)

(assert (=> b!213853 (= e!139059 (not call!20282))))

(declare-fun b!213854 () Bool)

(declare-fun res!104736 () Bool)

(declare-fun e!139061 () Bool)

(assert (=> b!213854 (=> (not res!104736) (not e!139061))))

(declare-fun e!139064 () Bool)

(assert (=> b!213854 (= res!104736 e!139064)))

(declare-fun c!35973 () Bool)

(assert (=> b!213854 (= c!35973 (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!213855 () Bool)

(declare-fun e!139060 () Bool)

(assert (=> b!213855 (= e!139064 e!139060)))

(declare-fun res!104735 () Bool)

(declare-fun call!20279 () Bool)

(assert (=> b!213855 (= res!104735 call!20279)))

(assert (=> b!213855 (=> (not res!104735) (not e!139060))))

(declare-fun b!213856 () Bool)

(declare-fun lt!110716 () ListLongMap!3161)

(declare-fun apply!200 (ListLongMap!3161 (_ BitVec 64)) V!6995)

(assert (=> b!213856 (= e!139060 (= (apply!200 lt!110716 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!615))))

(declare-fun b!213857 () Bool)

(assert (=> b!213857 (= e!139061 e!139059)))

(declare-fun c!35975 () Bool)

(assert (=> b!213857 (= c!35975 (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!213858 () Bool)

(declare-fun e!139067 () Bool)

(assert (=> b!213858 (= e!139059 e!139067)))

(declare-fun res!104730 () Bool)

(assert (=> b!213858 (= res!104730 call!20282)))

(assert (=> b!213858 (=> (not res!104730) (not e!139067))))

(declare-fun b!213859 () Bool)

(assert (=> b!213859 (= e!139067 (= (apply!200 lt!110716 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!615))))

(declare-fun b!213860 () Bool)

(declare-fun e!139058 () Unit!6479)

(declare-fun lt!110702 () Unit!6479)

(assert (=> b!213860 (= e!139058 lt!110702)))

(declare-fun lt!110699 () ListLongMap!3161)

(assert (=> b!213860 (= lt!110699 (getCurrentListMapNoExtraKeys!518 _keys!825 lt!110610 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!110700 () (_ BitVec 64))

(assert (=> b!213860 (= lt!110700 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!110703 () (_ BitVec 64))

(assert (=> b!213860 (= lt!110703 (select (arr!4851 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!110718 () Unit!6479)

(declare-fun addStillContains!176 (ListLongMap!3161 (_ BitVec 64) V!6995 (_ BitVec 64)) Unit!6479)

(assert (=> b!213860 (= lt!110718 (addStillContains!176 lt!110699 lt!110700 zeroValue!615 lt!110703))))

(declare-fun contains!1421 (ListLongMap!3161 (_ BitVec 64)) Bool)

(assert (=> b!213860 (contains!1421 (+!589 lt!110699 (tuple2!4235 lt!110700 zeroValue!615)) lt!110703)))

(declare-fun lt!110704 () Unit!6479)

(assert (=> b!213860 (= lt!110704 lt!110718)))

(declare-fun lt!110701 () ListLongMap!3161)

(assert (=> b!213860 (= lt!110701 (getCurrentListMapNoExtraKeys!518 _keys!825 lt!110610 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!110707 () (_ BitVec 64))

(assert (=> b!213860 (= lt!110707 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!110719 () (_ BitVec 64))

(assert (=> b!213860 (= lt!110719 (select (arr!4851 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!110709 () Unit!6479)

(declare-fun addApplyDifferent!176 (ListLongMap!3161 (_ BitVec 64) V!6995 (_ BitVec 64)) Unit!6479)

(assert (=> b!213860 (= lt!110709 (addApplyDifferent!176 lt!110701 lt!110707 minValue!615 lt!110719))))

(assert (=> b!213860 (= (apply!200 (+!589 lt!110701 (tuple2!4235 lt!110707 minValue!615)) lt!110719) (apply!200 lt!110701 lt!110719))))

(declare-fun lt!110710 () Unit!6479)

(assert (=> b!213860 (= lt!110710 lt!110709)))

(declare-fun lt!110713 () ListLongMap!3161)

(assert (=> b!213860 (= lt!110713 (getCurrentListMapNoExtraKeys!518 _keys!825 lt!110610 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!110706 () (_ BitVec 64))

(assert (=> b!213860 (= lt!110706 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!110714 () (_ BitVec 64))

(assert (=> b!213860 (= lt!110714 (select (arr!4851 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!110715 () Unit!6479)

(assert (=> b!213860 (= lt!110715 (addApplyDifferent!176 lt!110713 lt!110706 zeroValue!615 lt!110714))))

(assert (=> b!213860 (= (apply!200 (+!589 lt!110713 (tuple2!4235 lt!110706 zeroValue!615)) lt!110714) (apply!200 lt!110713 lt!110714))))

(declare-fun lt!110717 () Unit!6479)

(assert (=> b!213860 (= lt!110717 lt!110715)))

(declare-fun lt!110708 () ListLongMap!3161)

(assert (=> b!213860 (= lt!110708 (getCurrentListMapNoExtraKeys!518 _keys!825 lt!110610 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!110698 () (_ BitVec 64))

(assert (=> b!213860 (= lt!110698 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!110711 () (_ BitVec 64))

(assert (=> b!213860 (= lt!110711 (select (arr!4851 _keys!825) #b00000000000000000000000000000000))))

(assert (=> b!213860 (= lt!110702 (addApplyDifferent!176 lt!110708 lt!110698 minValue!615 lt!110711))))

(assert (=> b!213860 (= (apply!200 (+!589 lt!110708 (tuple2!4235 lt!110698 minValue!615)) lt!110711) (apply!200 lt!110708 lt!110711))))

(declare-fun b!213861 () Bool)

(declare-fun e!139062 () ListLongMap!3161)

(declare-fun e!139063 () ListLongMap!3161)

(assert (=> b!213861 (= e!139062 e!139063)))

(declare-fun c!35976 () Bool)

(assert (=> b!213861 (= c!35976 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!213862 () Bool)

(declare-fun e!139066 () Bool)

(assert (=> b!213862 (= e!139066 (validKeyInArray!0 (select (arr!4851 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!213863 () Bool)

(declare-fun Unit!6483 () Unit!6479)

(assert (=> b!213863 (= e!139058 Unit!6483)))

(declare-fun b!213864 () Bool)

(declare-fun e!139069 () ListLongMap!3161)

(declare-fun call!20280 () ListLongMap!3161)

(assert (=> b!213864 (= e!139069 call!20280)))

(declare-fun d!58151 () Bool)

(assert (=> d!58151 e!139061))

(declare-fun res!104731 () Bool)

(assert (=> d!58151 (=> (not res!104731) (not e!139061))))

(assert (=> d!58151 (= res!104731 (or (bvsge #b00000000000000000000000000000000 (size!5176 _keys!825)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5176 _keys!825)))))))

(declare-fun lt!110712 () ListLongMap!3161)

(assert (=> d!58151 (= lt!110716 lt!110712)))

(declare-fun lt!110705 () Unit!6479)

(assert (=> d!58151 (= lt!110705 e!139058)))

(declare-fun c!35971 () Bool)

(declare-fun e!139057 () Bool)

(assert (=> d!58151 (= c!35971 e!139057)))

(declare-fun res!104733 () Bool)

(assert (=> d!58151 (=> (not res!104733) (not e!139057))))

(assert (=> d!58151 (= res!104733 (bvslt #b00000000000000000000000000000000 (size!5176 _keys!825)))))

(assert (=> d!58151 (= lt!110712 e!139062)))

(declare-fun c!35972 () Bool)

(assert (=> d!58151 (= c!35972 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!58151 (validMask!0 mask!1149)))

(assert (=> d!58151 (= (getCurrentListMap!1119 _keys!825 lt!110610 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!110716)))

(declare-fun b!213865 () Bool)

(declare-fun call!20276 () ListLongMap!3161)

(assert (=> b!213865 (= e!139063 call!20276)))

(declare-fun bm!20274 () Bool)

(assert (=> bm!20274 (= call!20277 (getCurrentListMapNoExtraKeys!518 _keys!825 lt!110610 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!213866 () Bool)

(declare-fun e!139065 () Bool)

(declare-fun get!2593 (ValueCell!2412 V!6995) V!6995)

(declare-fun dynLambda!538 (Int (_ BitVec 64)) V!6995)

(assert (=> b!213866 (= e!139065 (= (apply!200 lt!110716 (select (arr!4851 _keys!825) #b00000000000000000000000000000000)) (get!2593 (select (arr!4852 lt!110610) #b00000000000000000000000000000000) (dynLambda!538 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!213866 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5177 lt!110610)))))

(assert (=> b!213866 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5176 _keys!825)))))

(declare-fun b!213867 () Bool)

(declare-fun e!139068 () Bool)

(assert (=> b!213867 (= e!139068 e!139065)))

(declare-fun res!104737 () Bool)

(assert (=> b!213867 (=> (not res!104737) (not e!139065))))

(assert (=> b!213867 (= res!104737 (contains!1421 lt!110716 (select (arr!4851 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!213867 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5176 _keys!825)))))

(declare-fun b!213868 () Bool)

(declare-fun res!104734 () Bool)

(assert (=> b!213868 (=> (not res!104734) (not e!139061))))

(assert (=> b!213868 (= res!104734 e!139068)))

(declare-fun res!104732 () Bool)

(assert (=> b!213868 (=> res!104732 e!139068)))

(assert (=> b!213868 (= res!104732 (not e!139066))))

(declare-fun res!104729 () Bool)

(assert (=> b!213868 (=> (not res!104729) (not e!139066))))

(assert (=> b!213868 (= res!104729 (bvslt #b00000000000000000000000000000000 (size!5176 _keys!825)))))

(declare-fun bm!20275 () Bool)

(assert (=> bm!20275 (= call!20279 (contains!1421 lt!110716 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!213869 () Bool)

(declare-fun call!20281 () ListLongMap!3161)

(assert (=> b!213869 (= e!139062 (+!589 call!20281 (tuple2!4235 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615)))))

(declare-fun b!213870 () Bool)

(assert (=> b!213870 (= e!139057 (validKeyInArray!0 (select (arr!4851 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!213871 () Bool)

(assert (=> b!213871 (= e!139069 call!20276)))

(declare-fun bm!20276 () Bool)

(assert (=> bm!20276 (= call!20281 (+!589 (ite c!35972 call!20277 (ite c!35976 call!20278 call!20280)) (ite (or c!35972 c!35976) (tuple2!4235 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615) (tuple2!4235 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))))

(declare-fun bm!20277 () Bool)

(assert (=> bm!20277 (= call!20276 call!20281)))

(declare-fun b!213872 () Bool)

(assert (=> b!213872 (= e!139064 (not call!20279))))

(declare-fun bm!20278 () Bool)

(assert (=> bm!20278 (= call!20282 (contains!1421 lt!110716 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!20279 () Bool)

(assert (=> bm!20279 (= call!20280 call!20278)))

(declare-fun b!213873 () Bool)

(declare-fun c!35974 () Bool)

(assert (=> b!213873 (= c!35974 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!213873 (= e!139063 e!139069)))

(assert (= (and d!58151 c!35972) b!213869))

(assert (= (and d!58151 (not c!35972)) b!213861))

(assert (= (and b!213861 c!35976) b!213865))

(assert (= (and b!213861 (not c!35976)) b!213873))

(assert (= (and b!213873 c!35974) b!213871))

(assert (= (and b!213873 (not c!35974)) b!213864))

(assert (= (or b!213871 b!213864) bm!20279))

(assert (= (or b!213865 bm!20279) bm!20273))

(assert (= (or b!213865 b!213871) bm!20277))

(assert (= (or b!213869 bm!20273) bm!20274))

(assert (= (or b!213869 bm!20277) bm!20276))

(assert (= (and d!58151 res!104733) b!213870))

(assert (= (and d!58151 c!35971) b!213860))

(assert (= (and d!58151 (not c!35971)) b!213863))

(assert (= (and d!58151 res!104731) b!213868))

(assert (= (and b!213868 res!104729) b!213862))

(assert (= (and b!213868 (not res!104732)) b!213867))

(assert (= (and b!213867 res!104737) b!213866))

(assert (= (and b!213868 res!104734) b!213854))

(assert (= (and b!213854 c!35973) b!213855))

(assert (= (and b!213854 (not c!35973)) b!213872))

(assert (= (and b!213855 res!104735) b!213856))

(assert (= (or b!213855 b!213872) bm!20275))

(assert (= (and b!213854 res!104736) b!213857))

(assert (= (and b!213857 c!35975) b!213858))

(assert (= (and b!213857 (not c!35975)) b!213853))

(assert (= (and b!213858 res!104730) b!213859))

(assert (= (or b!213858 b!213853) bm!20278))

(declare-fun b_lambda!7833 () Bool)

(assert (=> (not b_lambda!7833) (not b!213866)))

(declare-fun t!8108 () Bool)

(declare-fun tb!2921 () Bool)

(assert (=> (and start!21230 (= defaultEntry!657 defaultEntry!657) t!8108) tb!2921))

(declare-fun result!5035 () Bool)

(assert (=> tb!2921 (= result!5035 tp_is_empty!5511)))

(assert (=> b!213866 t!8108))

(declare-fun b_and!12549 () Bool)

(assert (= b_and!12545 (and (=> t!8108 result!5035) b_and!12549)))

(declare-fun m!241719 () Bool)

(assert (=> b!213856 m!241719))

(assert (=> b!213866 m!241707))

(declare-fun m!241721 () Bool)

(assert (=> b!213866 m!241721))

(declare-fun m!241723 () Bool)

(assert (=> b!213866 m!241723))

(assert (=> b!213866 m!241707))

(declare-fun m!241725 () Bool)

(assert (=> b!213866 m!241725))

(assert (=> b!213866 m!241721))

(assert (=> b!213866 m!241723))

(declare-fun m!241727 () Bool)

(assert (=> b!213866 m!241727))

(declare-fun m!241729 () Bool)

(assert (=> b!213860 m!241729))

(declare-fun m!241731 () Bool)

(assert (=> b!213860 m!241731))

(assert (=> b!213860 m!241649))

(declare-fun m!241733 () Bool)

(assert (=> b!213860 m!241733))

(declare-fun m!241735 () Bool)

(assert (=> b!213860 m!241735))

(declare-fun m!241737 () Bool)

(assert (=> b!213860 m!241737))

(declare-fun m!241739 () Bool)

(assert (=> b!213860 m!241739))

(declare-fun m!241741 () Bool)

(assert (=> b!213860 m!241741))

(declare-fun m!241743 () Bool)

(assert (=> b!213860 m!241743))

(assert (=> b!213860 m!241737))

(assert (=> b!213860 m!241743))

(declare-fun m!241745 () Bool)

(assert (=> b!213860 m!241745))

(declare-fun m!241747 () Bool)

(assert (=> b!213860 m!241747))

(assert (=> b!213860 m!241729))

(declare-fun m!241749 () Bool)

(assert (=> b!213860 m!241749))

(assert (=> b!213860 m!241707))

(declare-fun m!241751 () Bool)

(assert (=> b!213860 m!241751))

(declare-fun m!241753 () Bool)

(assert (=> b!213860 m!241753))

(assert (=> b!213860 m!241735))

(declare-fun m!241755 () Bool)

(assert (=> b!213860 m!241755))

(declare-fun m!241757 () Bool)

(assert (=> b!213860 m!241757))

(declare-fun m!241759 () Bool)

(assert (=> bm!20275 m!241759))

(declare-fun m!241761 () Bool)

(assert (=> bm!20276 m!241761))

(declare-fun m!241763 () Bool)

(assert (=> b!213869 m!241763))

(assert (=> b!213862 m!241707))

(assert (=> b!213862 m!241707))

(assert (=> b!213862 m!241717))

(assert (=> bm!20274 m!241649))

(assert (=> b!213870 m!241707))

(assert (=> b!213870 m!241707))

(assert (=> b!213870 m!241717))

(declare-fun m!241765 () Bool)

(assert (=> bm!20278 m!241765))

(assert (=> d!58151 m!241667))

(assert (=> b!213867 m!241707))

(assert (=> b!213867 m!241707))

(declare-fun m!241767 () Bool)

(assert (=> b!213867 m!241767))

(declare-fun m!241769 () Bool)

(assert (=> b!213859 m!241769))

(assert (=> b!213764 d!58151))

(declare-fun b!213900 () Bool)

(declare-fun e!139088 () ListLongMap!3161)

(declare-fun call!20285 () ListLongMap!3161)

(assert (=> b!213900 (= e!139088 call!20285)))

(declare-fun b!213901 () Bool)

(declare-fun res!104747 () Bool)

(declare-fun e!139086 () Bool)

(assert (=> b!213901 (=> (not res!104747) (not e!139086))))

(declare-fun lt!110736 () ListLongMap!3161)

(assert (=> b!213901 (= res!104747 (not (contains!1421 lt!110736 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!213902 () Bool)

(declare-fun e!139090 () Bool)

(assert (=> b!213902 (= e!139086 e!139090)))

(declare-fun c!35986 () Bool)

(declare-fun e!139089 () Bool)

(assert (=> b!213902 (= c!35986 e!139089)))

(declare-fun res!104748 () Bool)

(assert (=> b!213902 (=> (not res!104748) (not e!139089))))

(assert (=> b!213902 (= res!104748 (bvslt #b00000000000000000000000000000000 (size!5176 _keys!825)))))

(declare-fun b!213903 () Bool)

(declare-fun lt!110739 () Unit!6479)

(declare-fun lt!110738 () Unit!6479)

(assert (=> b!213903 (= lt!110739 lt!110738)))

(declare-fun lt!110737 () V!6995)

(declare-fun lt!110735 () ListLongMap!3161)

(declare-fun lt!110740 () (_ BitVec 64))

(declare-fun lt!110734 () (_ BitVec 64))

(assert (=> b!213903 (not (contains!1421 (+!589 lt!110735 (tuple2!4235 lt!110740 lt!110737)) lt!110734))))

(declare-fun addStillNotContains!111 (ListLongMap!3161 (_ BitVec 64) V!6995 (_ BitVec 64)) Unit!6479)

(assert (=> b!213903 (= lt!110738 (addStillNotContains!111 lt!110735 lt!110740 lt!110737 lt!110734))))

(assert (=> b!213903 (= lt!110734 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!213903 (= lt!110737 (get!2593 (select (arr!4852 _values!649) #b00000000000000000000000000000000) (dynLambda!538 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!213903 (= lt!110740 (select (arr!4851 _keys!825) #b00000000000000000000000000000000))))

(assert (=> b!213903 (= lt!110735 call!20285)))

(assert (=> b!213903 (= e!139088 (+!589 call!20285 (tuple2!4235 (select (arr!4851 _keys!825) #b00000000000000000000000000000000) (get!2593 (select (arr!4852 _values!649) #b00000000000000000000000000000000) (dynLambda!538 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!213904 () Bool)

(declare-fun e!139084 () Bool)

(assert (=> b!213904 (= e!139090 e!139084)))

(declare-fun c!35987 () Bool)

(assert (=> b!213904 (= c!35987 (bvslt #b00000000000000000000000000000000 (size!5176 _keys!825)))))

(declare-fun b!213905 () Bool)

(declare-fun isEmpty!506 (ListLongMap!3161) Bool)

(assert (=> b!213905 (= e!139084 (isEmpty!506 lt!110736))))

(declare-fun bm!20282 () Bool)

(assert (=> bm!20282 (= call!20285 (getCurrentListMapNoExtraKeys!518 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657))))

(declare-fun b!213906 () Bool)

(assert (=> b!213906 (= e!139089 (validKeyInArray!0 (select (arr!4851 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!213906 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun d!58153 () Bool)

(assert (=> d!58153 e!139086))

(declare-fun res!104749 () Bool)

(assert (=> d!58153 (=> (not res!104749) (not e!139086))))

(assert (=> d!58153 (= res!104749 (not (contains!1421 lt!110736 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!139087 () ListLongMap!3161)

(assert (=> d!58153 (= lt!110736 e!139087)))

(declare-fun c!35985 () Bool)

(assert (=> d!58153 (= c!35985 (bvsge #b00000000000000000000000000000000 (size!5176 _keys!825)))))

(assert (=> d!58153 (validMask!0 mask!1149)))

(assert (=> d!58153 (= (getCurrentListMapNoExtraKeys!518 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!110736)))

(declare-fun b!213907 () Bool)

(assert (=> b!213907 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5176 _keys!825)))))

(assert (=> b!213907 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5177 _values!649)))))

(declare-fun e!139085 () Bool)

(assert (=> b!213907 (= e!139085 (= (apply!200 lt!110736 (select (arr!4851 _keys!825) #b00000000000000000000000000000000)) (get!2593 (select (arr!4852 _values!649) #b00000000000000000000000000000000) (dynLambda!538 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!213908 () Bool)

(assert (=> b!213908 (= e!139087 (ListLongMap!3162 Nil!3140))))

(declare-fun b!213909 () Bool)

(assert (=> b!213909 (= e!139090 e!139085)))

(assert (=> b!213909 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5176 _keys!825)))))

(declare-fun res!104746 () Bool)

(assert (=> b!213909 (= res!104746 (contains!1421 lt!110736 (select (arr!4851 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!213909 (=> (not res!104746) (not e!139085))))

(declare-fun b!213910 () Bool)

(assert (=> b!213910 (= e!139084 (= lt!110736 (getCurrentListMapNoExtraKeys!518 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657)))))

(declare-fun b!213911 () Bool)

(assert (=> b!213911 (= e!139087 e!139088)))

(declare-fun c!35988 () Bool)

(assert (=> b!213911 (= c!35988 (validKeyInArray!0 (select (arr!4851 _keys!825) #b00000000000000000000000000000000)))))

(assert (= (and d!58153 c!35985) b!213908))

(assert (= (and d!58153 (not c!35985)) b!213911))

(assert (= (and b!213911 c!35988) b!213903))

(assert (= (and b!213911 (not c!35988)) b!213900))

(assert (= (or b!213903 b!213900) bm!20282))

(assert (= (and d!58153 res!104749) b!213901))

(assert (= (and b!213901 res!104747) b!213902))

(assert (= (and b!213902 res!104748) b!213906))

(assert (= (and b!213902 c!35986) b!213909))

(assert (= (and b!213902 (not c!35986)) b!213904))

(assert (= (and b!213909 res!104746) b!213907))

(assert (= (and b!213904 c!35987) b!213910))

(assert (= (and b!213904 (not c!35987)) b!213905))

(declare-fun b_lambda!7835 () Bool)

(assert (=> (not b_lambda!7835) (not b!213903)))

(assert (=> b!213903 t!8108))

(declare-fun b_and!12551 () Bool)

(assert (= b_and!12549 (and (=> t!8108 result!5035) b_and!12551)))

(declare-fun b_lambda!7837 () Bool)

(assert (=> (not b_lambda!7837) (not b!213907)))

(assert (=> b!213907 t!8108))

(declare-fun b_and!12553 () Bool)

(assert (= b_and!12551 (and (=> t!8108 result!5035) b_and!12553)))

(assert (=> b!213911 m!241707))

(assert (=> b!213911 m!241707))

(assert (=> b!213911 m!241717))

(declare-fun m!241771 () Bool)

(assert (=> d!58153 m!241771))

(assert (=> d!58153 m!241667))

(assert (=> b!213906 m!241707))

(assert (=> b!213906 m!241707))

(assert (=> b!213906 m!241717))

(declare-fun m!241773 () Bool)

(assert (=> b!213905 m!241773))

(declare-fun m!241775 () Bool)

(assert (=> b!213901 m!241775))

(assert (=> b!213909 m!241707))

(assert (=> b!213909 m!241707))

(declare-fun m!241777 () Bool)

(assert (=> b!213909 m!241777))

(declare-fun m!241779 () Bool)

(assert (=> b!213903 m!241779))

(declare-fun m!241781 () Bool)

(assert (=> b!213903 m!241781))

(declare-fun m!241783 () Bool)

(assert (=> b!213903 m!241783))

(declare-fun m!241785 () Bool)

(assert (=> b!213903 m!241785))

(assert (=> b!213903 m!241785))

(assert (=> b!213903 m!241723))

(declare-fun m!241787 () Bool)

(assert (=> b!213903 m!241787))

(assert (=> b!213903 m!241707))

(declare-fun m!241789 () Bool)

(assert (=> b!213903 m!241789))

(assert (=> b!213903 m!241723))

(assert (=> b!213903 m!241781))

(declare-fun m!241791 () Bool)

(assert (=> b!213910 m!241791))

(assert (=> bm!20282 m!241791))

(assert (=> b!213907 m!241785))

(assert (=> b!213907 m!241707))

(declare-fun m!241793 () Bool)

(assert (=> b!213907 m!241793))

(assert (=> b!213907 m!241723))

(assert (=> b!213907 m!241785))

(assert (=> b!213907 m!241723))

(assert (=> b!213907 m!241787))

(assert (=> b!213907 m!241707))

(assert (=> b!213764 d!58153))

(declare-fun d!58155 () Bool)

(declare-fun e!139093 () Bool)

(assert (=> d!58155 e!139093))

(declare-fun res!104755 () Bool)

(assert (=> d!58155 (=> (not res!104755) (not e!139093))))

(declare-fun lt!110751 () ListLongMap!3161)

(assert (=> d!58155 (= res!104755 (contains!1421 lt!110751 (_1!2127 lt!110611)))))

(declare-fun lt!110750 () List!3143)

(assert (=> d!58155 (= lt!110751 (ListLongMap!3162 lt!110750))))

(declare-fun lt!110749 () Unit!6479)

(declare-fun lt!110752 () Unit!6479)

(assert (=> d!58155 (= lt!110749 lt!110752)))

(declare-datatypes ((Option!263 0))(
  ( (Some!262 (v!4815 V!6995)) (None!261) )
))
(declare-fun getValueByKey!257 (List!3143 (_ BitVec 64)) Option!263)

(assert (=> d!58155 (= (getValueByKey!257 lt!110750 (_1!2127 lt!110611)) (Some!262 (_2!2127 lt!110611)))))

(declare-fun lemmaContainsTupThenGetReturnValue!146 (List!3143 (_ BitVec 64) V!6995) Unit!6479)

(assert (=> d!58155 (= lt!110752 (lemmaContainsTupThenGetReturnValue!146 lt!110750 (_1!2127 lt!110611) (_2!2127 lt!110611)))))

(declare-fun insertStrictlySorted!148 (List!3143 (_ BitVec 64) V!6995) List!3143)

(assert (=> d!58155 (= lt!110750 (insertStrictlySorted!148 (toList!1596 lt!110612) (_1!2127 lt!110611) (_2!2127 lt!110611)))))

(assert (=> d!58155 (= (+!589 lt!110612 lt!110611) lt!110751)))

(declare-fun b!213916 () Bool)

(declare-fun res!104754 () Bool)

(assert (=> b!213916 (=> (not res!104754) (not e!139093))))

(assert (=> b!213916 (= res!104754 (= (getValueByKey!257 (toList!1596 lt!110751) (_1!2127 lt!110611)) (Some!262 (_2!2127 lt!110611))))))

(declare-fun b!213917 () Bool)

(declare-fun contains!1422 (List!3143 tuple2!4234) Bool)

(assert (=> b!213917 (= e!139093 (contains!1422 (toList!1596 lt!110751) lt!110611))))

(assert (= (and d!58155 res!104755) b!213916))

(assert (= (and b!213916 res!104754) b!213917))

(declare-fun m!241795 () Bool)

(assert (=> d!58155 m!241795))

(declare-fun m!241797 () Bool)

(assert (=> d!58155 m!241797))

(declare-fun m!241799 () Bool)

(assert (=> d!58155 m!241799))

(declare-fun m!241801 () Bool)

(assert (=> d!58155 m!241801))

(declare-fun m!241803 () Bool)

(assert (=> b!213916 m!241803))

(declare-fun m!241805 () Bool)

(assert (=> b!213917 m!241805))

(assert (=> b!213764 d!58155))

(declare-fun b!213918 () Bool)

(declare-fun e!139098 () ListLongMap!3161)

(declare-fun call!20286 () ListLongMap!3161)

(assert (=> b!213918 (= e!139098 call!20286)))

(declare-fun b!213919 () Bool)

(declare-fun res!104757 () Bool)

(declare-fun e!139096 () Bool)

(assert (=> b!213919 (=> (not res!104757) (not e!139096))))

(declare-fun lt!110755 () ListLongMap!3161)

(assert (=> b!213919 (= res!104757 (not (contains!1421 lt!110755 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!213920 () Bool)

(declare-fun e!139100 () Bool)

(assert (=> b!213920 (= e!139096 e!139100)))

(declare-fun c!35990 () Bool)

(declare-fun e!139099 () Bool)

(assert (=> b!213920 (= c!35990 e!139099)))

(declare-fun res!104758 () Bool)

(assert (=> b!213920 (=> (not res!104758) (not e!139099))))

(assert (=> b!213920 (= res!104758 (bvslt #b00000000000000000000000000000000 (size!5176 _keys!825)))))

(declare-fun b!213921 () Bool)

(declare-fun lt!110758 () Unit!6479)

(declare-fun lt!110757 () Unit!6479)

(assert (=> b!213921 (= lt!110758 lt!110757)))

(declare-fun lt!110753 () (_ BitVec 64))

(declare-fun lt!110756 () V!6995)

(declare-fun lt!110759 () (_ BitVec 64))

(declare-fun lt!110754 () ListLongMap!3161)

(assert (=> b!213921 (not (contains!1421 (+!589 lt!110754 (tuple2!4235 lt!110759 lt!110756)) lt!110753))))

(assert (=> b!213921 (= lt!110757 (addStillNotContains!111 lt!110754 lt!110759 lt!110756 lt!110753))))

(assert (=> b!213921 (= lt!110753 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!213921 (= lt!110756 (get!2593 (select (arr!4852 lt!110610) #b00000000000000000000000000000000) (dynLambda!538 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!213921 (= lt!110759 (select (arr!4851 _keys!825) #b00000000000000000000000000000000))))

(assert (=> b!213921 (= lt!110754 call!20286)))

(assert (=> b!213921 (= e!139098 (+!589 call!20286 (tuple2!4235 (select (arr!4851 _keys!825) #b00000000000000000000000000000000) (get!2593 (select (arr!4852 lt!110610) #b00000000000000000000000000000000) (dynLambda!538 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!213922 () Bool)

(declare-fun e!139094 () Bool)

(assert (=> b!213922 (= e!139100 e!139094)))

(declare-fun c!35991 () Bool)

(assert (=> b!213922 (= c!35991 (bvslt #b00000000000000000000000000000000 (size!5176 _keys!825)))))

(declare-fun b!213923 () Bool)

(assert (=> b!213923 (= e!139094 (isEmpty!506 lt!110755))))

(declare-fun bm!20283 () Bool)

(assert (=> bm!20283 (= call!20286 (getCurrentListMapNoExtraKeys!518 _keys!825 lt!110610 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657))))

(declare-fun b!213924 () Bool)

(assert (=> b!213924 (= e!139099 (validKeyInArray!0 (select (arr!4851 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!213924 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun d!58157 () Bool)

(assert (=> d!58157 e!139096))

(declare-fun res!104759 () Bool)

(assert (=> d!58157 (=> (not res!104759) (not e!139096))))

(assert (=> d!58157 (= res!104759 (not (contains!1421 lt!110755 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!139097 () ListLongMap!3161)

(assert (=> d!58157 (= lt!110755 e!139097)))

(declare-fun c!35989 () Bool)

(assert (=> d!58157 (= c!35989 (bvsge #b00000000000000000000000000000000 (size!5176 _keys!825)))))

(assert (=> d!58157 (validMask!0 mask!1149)))

(assert (=> d!58157 (= (getCurrentListMapNoExtraKeys!518 _keys!825 lt!110610 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!110755)))

(declare-fun b!213925 () Bool)

(assert (=> b!213925 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5176 _keys!825)))))

(assert (=> b!213925 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5177 lt!110610)))))

(declare-fun e!139095 () Bool)

(assert (=> b!213925 (= e!139095 (= (apply!200 lt!110755 (select (arr!4851 _keys!825) #b00000000000000000000000000000000)) (get!2593 (select (arr!4852 lt!110610) #b00000000000000000000000000000000) (dynLambda!538 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!213926 () Bool)

(assert (=> b!213926 (= e!139097 (ListLongMap!3162 Nil!3140))))

(declare-fun b!213927 () Bool)

(assert (=> b!213927 (= e!139100 e!139095)))

(assert (=> b!213927 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5176 _keys!825)))))

(declare-fun res!104756 () Bool)

(assert (=> b!213927 (= res!104756 (contains!1421 lt!110755 (select (arr!4851 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!213927 (=> (not res!104756) (not e!139095))))

(declare-fun b!213928 () Bool)

(assert (=> b!213928 (= e!139094 (= lt!110755 (getCurrentListMapNoExtraKeys!518 _keys!825 lt!110610 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657)))))

(declare-fun b!213929 () Bool)

(assert (=> b!213929 (= e!139097 e!139098)))

(declare-fun c!35992 () Bool)

(assert (=> b!213929 (= c!35992 (validKeyInArray!0 (select (arr!4851 _keys!825) #b00000000000000000000000000000000)))))

(assert (= (and d!58157 c!35989) b!213926))

(assert (= (and d!58157 (not c!35989)) b!213929))

(assert (= (and b!213929 c!35992) b!213921))

(assert (= (and b!213929 (not c!35992)) b!213918))

(assert (= (or b!213921 b!213918) bm!20283))

(assert (= (and d!58157 res!104759) b!213919))

(assert (= (and b!213919 res!104757) b!213920))

(assert (= (and b!213920 res!104758) b!213924))

(assert (= (and b!213920 c!35990) b!213927))

(assert (= (and b!213920 (not c!35990)) b!213922))

(assert (= (and b!213927 res!104756) b!213925))

(assert (= (and b!213922 c!35991) b!213928))

(assert (= (and b!213922 (not c!35991)) b!213923))

(declare-fun b_lambda!7839 () Bool)

(assert (=> (not b_lambda!7839) (not b!213921)))

(assert (=> b!213921 t!8108))

(declare-fun b_and!12555 () Bool)

(assert (= b_and!12553 (and (=> t!8108 result!5035) b_and!12555)))

(declare-fun b_lambda!7841 () Bool)

(assert (=> (not b_lambda!7841) (not b!213925)))

(assert (=> b!213925 t!8108))

(declare-fun b_and!12557 () Bool)

(assert (= b_and!12555 (and (=> t!8108 result!5035) b_and!12557)))

(assert (=> b!213929 m!241707))

(assert (=> b!213929 m!241707))

(assert (=> b!213929 m!241717))

(declare-fun m!241807 () Bool)

(assert (=> d!58157 m!241807))

(assert (=> d!58157 m!241667))

(assert (=> b!213924 m!241707))

(assert (=> b!213924 m!241707))

(assert (=> b!213924 m!241717))

(declare-fun m!241809 () Bool)

(assert (=> b!213923 m!241809))

(declare-fun m!241811 () Bool)

(assert (=> b!213919 m!241811))

(assert (=> b!213927 m!241707))

(assert (=> b!213927 m!241707))

(declare-fun m!241813 () Bool)

(assert (=> b!213927 m!241813))

(declare-fun m!241815 () Bool)

(assert (=> b!213921 m!241815))

(declare-fun m!241817 () Bool)

(assert (=> b!213921 m!241817))

(declare-fun m!241819 () Bool)

(assert (=> b!213921 m!241819))

(assert (=> b!213921 m!241721))

(assert (=> b!213921 m!241721))

(assert (=> b!213921 m!241723))

(assert (=> b!213921 m!241727))

(assert (=> b!213921 m!241707))

(declare-fun m!241821 () Bool)

(assert (=> b!213921 m!241821))

(assert (=> b!213921 m!241723))

(assert (=> b!213921 m!241817))

(declare-fun m!241823 () Bool)

(assert (=> b!213928 m!241823))

(assert (=> bm!20283 m!241823))

(assert (=> b!213925 m!241721))

(assert (=> b!213925 m!241707))

(declare-fun m!241825 () Bool)

(assert (=> b!213925 m!241825))

(assert (=> b!213925 m!241723))

(assert (=> b!213925 m!241721))

(assert (=> b!213925 m!241723))

(assert (=> b!213925 m!241727))

(assert (=> b!213925 m!241707))

(assert (=> b!213764 d!58157))

(declare-fun bm!20288 () Bool)

(declare-fun call!20292 () ListLongMap!3161)

(assert (=> bm!20288 (= call!20292 (getCurrentListMapNoExtraKeys!518 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun call!20291 () ListLongMap!3161)

(declare-fun bm!20289 () Bool)

(assert (=> bm!20289 (= call!20291 (getCurrentListMapNoExtraKeys!518 _keys!825 (array!10227 (store (arr!4852 _values!649) i!601 (ValueCellFull!2412 v!520)) (size!5177 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!213936 () Bool)

(declare-fun e!139106 () Bool)

(assert (=> b!213936 (= e!139106 (= call!20291 (+!589 call!20292 (tuple2!4235 k0!843 v!520))))))

(declare-fun b!213937 () Bool)

(assert (=> b!213937 (= e!139106 (= call!20291 call!20292))))

(declare-fun d!58159 () Bool)

(declare-fun e!139105 () Bool)

(assert (=> d!58159 e!139105))

(declare-fun res!104762 () Bool)

(assert (=> d!58159 (=> (not res!104762) (not e!139105))))

(assert (=> d!58159 (= res!104762 (and (or (not (bvsle #b00000000000000000000000000000000 i!601)) (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5177 _values!649)))) (or (bvsle #b00000000000000000000000000000000 i!601) (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5177 _values!649))))))))

(declare-fun lt!110762 () Unit!6479)

(declare-fun choose!1092 (array!10224 array!10226 (_ BitVec 32) (_ BitVec 32) V!6995 V!6995 (_ BitVec 32) (_ BitVec 64) V!6995 (_ BitVec 32) Int) Unit!6479)

(assert (=> d!58159 (= lt!110762 (choose!1092 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> d!58159 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!5176 _keys!825)))))

(assert (=> d!58159 (= (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!236 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657) lt!110762)))

(declare-fun b!213938 () Bool)

(assert (=> b!213938 (= e!139105 e!139106)))

(declare-fun c!35995 () Bool)

(assert (=> b!213938 (= c!35995 (bvsle #b00000000000000000000000000000000 i!601))))

(assert (= (and d!58159 res!104762) b!213938))

(assert (= (and b!213938 c!35995) b!213936))

(assert (= (and b!213938 (not c!35995)) b!213937))

(assert (= (or b!213936 b!213937) bm!20289))

(assert (= (or b!213936 b!213937) bm!20288))

(assert (=> bm!20288 m!241659))

(assert (=> bm!20289 m!241651))

(declare-fun m!241827 () Bool)

(assert (=> bm!20289 m!241827))

(declare-fun m!241829 () Bool)

(assert (=> b!213936 m!241829))

(declare-fun m!241831 () Bool)

(assert (=> d!58159 m!241831))

(assert (=> b!213764 d!58159))

(declare-fun bm!20290 () Bool)

(declare-fun call!20295 () ListLongMap!3161)

(declare-fun call!20294 () ListLongMap!3161)

(assert (=> bm!20290 (= call!20295 call!20294)))

(declare-fun b!213939 () Bool)

(declare-fun e!139109 () Bool)

(declare-fun call!20299 () Bool)

(assert (=> b!213939 (= e!139109 (not call!20299))))

(declare-fun b!213940 () Bool)

(declare-fun res!104770 () Bool)

(declare-fun e!139111 () Bool)

(assert (=> b!213940 (=> (not res!104770) (not e!139111))))

(declare-fun e!139114 () Bool)

(assert (=> b!213940 (= res!104770 e!139114)))

(declare-fun c!35998 () Bool)

(assert (=> b!213940 (= c!35998 (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!213941 () Bool)

(declare-fun e!139110 () Bool)

(assert (=> b!213941 (= e!139114 e!139110)))

(declare-fun res!104769 () Bool)

(declare-fun call!20296 () Bool)

(assert (=> b!213941 (= res!104769 call!20296)))

(assert (=> b!213941 (=> (not res!104769) (not e!139110))))

(declare-fun b!213942 () Bool)

(declare-fun lt!110781 () ListLongMap!3161)

(assert (=> b!213942 (= e!139110 (= (apply!200 lt!110781 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!615))))

(declare-fun b!213943 () Bool)

(assert (=> b!213943 (= e!139111 e!139109)))

(declare-fun c!36000 () Bool)

(assert (=> b!213943 (= c!36000 (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!213944 () Bool)

(declare-fun e!139117 () Bool)

(assert (=> b!213944 (= e!139109 e!139117)))

(declare-fun res!104764 () Bool)

(assert (=> b!213944 (= res!104764 call!20299)))

(assert (=> b!213944 (=> (not res!104764) (not e!139117))))

(declare-fun b!213945 () Bool)

(assert (=> b!213945 (= e!139117 (= (apply!200 lt!110781 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!615))))

(declare-fun b!213946 () Bool)

(declare-fun e!139108 () Unit!6479)

(declare-fun lt!110767 () Unit!6479)

(assert (=> b!213946 (= e!139108 lt!110767)))

(declare-fun lt!110764 () ListLongMap!3161)

(assert (=> b!213946 (= lt!110764 (getCurrentListMapNoExtraKeys!518 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!110765 () (_ BitVec 64))

(assert (=> b!213946 (= lt!110765 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!110768 () (_ BitVec 64))

(assert (=> b!213946 (= lt!110768 (select (arr!4851 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!110783 () Unit!6479)

(assert (=> b!213946 (= lt!110783 (addStillContains!176 lt!110764 lt!110765 zeroValue!615 lt!110768))))

(assert (=> b!213946 (contains!1421 (+!589 lt!110764 (tuple2!4235 lt!110765 zeroValue!615)) lt!110768)))

(declare-fun lt!110769 () Unit!6479)

(assert (=> b!213946 (= lt!110769 lt!110783)))

(declare-fun lt!110766 () ListLongMap!3161)

(assert (=> b!213946 (= lt!110766 (getCurrentListMapNoExtraKeys!518 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!110772 () (_ BitVec 64))

(assert (=> b!213946 (= lt!110772 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!110784 () (_ BitVec 64))

(assert (=> b!213946 (= lt!110784 (select (arr!4851 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!110774 () Unit!6479)

(assert (=> b!213946 (= lt!110774 (addApplyDifferent!176 lt!110766 lt!110772 minValue!615 lt!110784))))

(assert (=> b!213946 (= (apply!200 (+!589 lt!110766 (tuple2!4235 lt!110772 minValue!615)) lt!110784) (apply!200 lt!110766 lt!110784))))

(declare-fun lt!110775 () Unit!6479)

(assert (=> b!213946 (= lt!110775 lt!110774)))

(declare-fun lt!110778 () ListLongMap!3161)

(assert (=> b!213946 (= lt!110778 (getCurrentListMapNoExtraKeys!518 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!110771 () (_ BitVec 64))

(assert (=> b!213946 (= lt!110771 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!110779 () (_ BitVec 64))

(assert (=> b!213946 (= lt!110779 (select (arr!4851 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!110780 () Unit!6479)

(assert (=> b!213946 (= lt!110780 (addApplyDifferent!176 lt!110778 lt!110771 zeroValue!615 lt!110779))))

(assert (=> b!213946 (= (apply!200 (+!589 lt!110778 (tuple2!4235 lt!110771 zeroValue!615)) lt!110779) (apply!200 lt!110778 lt!110779))))

(declare-fun lt!110782 () Unit!6479)

(assert (=> b!213946 (= lt!110782 lt!110780)))

(declare-fun lt!110773 () ListLongMap!3161)

(assert (=> b!213946 (= lt!110773 (getCurrentListMapNoExtraKeys!518 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!110763 () (_ BitVec 64))

(assert (=> b!213946 (= lt!110763 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!110776 () (_ BitVec 64))

(assert (=> b!213946 (= lt!110776 (select (arr!4851 _keys!825) #b00000000000000000000000000000000))))

(assert (=> b!213946 (= lt!110767 (addApplyDifferent!176 lt!110773 lt!110763 minValue!615 lt!110776))))

(assert (=> b!213946 (= (apply!200 (+!589 lt!110773 (tuple2!4235 lt!110763 minValue!615)) lt!110776) (apply!200 lt!110773 lt!110776))))

(declare-fun b!213947 () Bool)

(declare-fun e!139112 () ListLongMap!3161)

(declare-fun e!139113 () ListLongMap!3161)

(assert (=> b!213947 (= e!139112 e!139113)))

(declare-fun c!36001 () Bool)

(assert (=> b!213947 (= c!36001 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!213948 () Bool)

(declare-fun e!139116 () Bool)

(assert (=> b!213948 (= e!139116 (validKeyInArray!0 (select (arr!4851 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!213949 () Bool)

(declare-fun Unit!6484 () Unit!6479)

(assert (=> b!213949 (= e!139108 Unit!6484)))

(declare-fun b!213950 () Bool)

(declare-fun e!139119 () ListLongMap!3161)

(declare-fun call!20297 () ListLongMap!3161)

(assert (=> b!213950 (= e!139119 call!20297)))

(declare-fun d!58161 () Bool)

(assert (=> d!58161 e!139111))

(declare-fun res!104765 () Bool)

(assert (=> d!58161 (=> (not res!104765) (not e!139111))))

(assert (=> d!58161 (= res!104765 (or (bvsge #b00000000000000000000000000000000 (size!5176 _keys!825)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5176 _keys!825)))))))

(declare-fun lt!110777 () ListLongMap!3161)

(assert (=> d!58161 (= lt!110781 lt!110777)))

(declare-fun lt!110770 () Unit!6479)

(assert (=> d!58161 (= lt!110770 e!139108)))

(declare-fun c!35996 () Bool)

(declare-fun e!139107 () Bool)

(assert (=> d!58161 (= c!35996 e!139107)))

(declare-fun res!104767 () Bool)

(assert (=> d!58161 (=> (not res!104767) (not e!139107))))

(assert (=> d!58161 (= res!104767 (bvslt #b00000000000000000000000000000000 (size!5176 _keys!825)))))

(assert (=> d!58161 (= lt!110777 e!139112)))

(declare-fun c!35997 () Bool)

(assert (=> d!58161 (= c!35997 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!58161 (validMask!0 mask!1149)))

(assert (=> d!58161 (= (getCurrentListMap!1119 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!110781)))

(declare-fun b!213951 () Bool)

(declare-fun call!20293 () ListLongMap!3161)

(assert (=> b!213951 (= e!139113 call!20293)))

(declare-fun bm!20291 () Bool)

(assert (=> bm!20291 (= call!20294 (getCurrentListMapNoExtraKeys!518 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun e!139115 () Bool)

(declare-fun b!213952 () Bool)

(assert (=> b!213952 (= e!139115 (= (apply!200 lt!110781 (select (arr!4851 _keys!825) #b00000000000000000000000000000000)) (get!2593 (select (arr!4852 _values!649) #b00000000000000000000000000000000) (dynLambda!538 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!213952 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5177 _values!649)))))

(assert (=> b!213952 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5176 _keys!825)))))

(declare-fun b!213953 () Bool)

(declare-fun e!139118 () Bool)

(assert (=> b!213953 (= e!139118 e!139115)))

(declare-fun res!104771 () Bool)

(assert (=> b!213953 (=> (not res!104771) (not e!139115))))

(assert (=> b!213953 (= res!104771 (contains!1421 lt!110781 (select (arr!4851 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!213953 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5176 _keys!825)))))

(declare-fun b!213954 () Bool)

(declare-fun res!104768 () Bool)

(assert (=> b!213954 (=> (not res!104768) (not e!139111))))

(assert (=> b!213954 (= res!104768 e!139118)))

(declare-fun res!104766 () Bool)

(assert (=> b!213954 (=> res!104766 e!139118)))

(assert (=> b!213954 (= res!104766 (not e!139116))))

(declare-fun res!104763 () Bool)

(assert (=> b!213954 (=> (not res!104763) (not e!139116))))

(assert (=> b!213954 (= res!104763 (bvslt #b00000000000000000000000000000000 (size!5176 _keys!825)))))

(declare-fun bm!20292 () Bool)

(assert (=> bm!20292 (= call!20296 (contains!1421 lt!110781 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!213955 () Bool)

(declare-fun call!20298 () ListLongMap!3161)

(assert (=> b!213955 (= e!139112 (+!589 call!20298 (tuple2!4235 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615)))))

(declare-fun b!213956 () Bool)

(assert (=> b!213956 (= e!139107 (validKeyInArray!0 (select (arr!4851 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!213957 () Bool)

(assert (=> b!213957 (= e!139119 call!20293)))

(declare-fun bm!20293 () Bool)

(assert (=> bm!20293 (= call!20298 (+!589 (ite c!35997 call!20294 (ite c!36001 call!20295 call!20297)) (ite (or c!35997 c!36001) (tuple2!4235 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615) (tuple2!4235 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))))

(declare-fun bm!20294 () Bool)

(assert (=> bm!20294 (= call!20293 call!20298)))

(declare-fun b!213958 () Bool)

(assert (=> b!213958 (= e!139114 (not call!20296))))

(declare-fun bm!20295 () Bool)

(assert (=> bm!20295 (= call!20299 (contains!1421 lt!110781 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!20296 () Bool)

(assert (=> bm!20296 (= call!20297 call!20295)))

(declare-fun b!213959 () Bool)

(declare-fun c!35999 () Bool)

(assert (=> b!213959 (= c!35999 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!213959 (= e!139113 e!139119)))

(assert (= (and d!58161 c!35997) b!213955))

(assert (= (and d!58161 (not c!35997)) b!213947))

(assert (= (and b!213947 c!36001) b!213951))

(assert (= (and b!213947 (not c!36001)) b!213959))

(assert (= (and b!213959 c!35999) b!213957))

(assert (= (and b!213959 (not c!35999)) b!213950))

(assert (= (or b!213957 b!213950) bm!20296))

(assert (= (or b!213951 bm!20296) bm!20290))

(assert (= (or b!213951 b!213957) bm!20294))

(assert (= (or b!213955 bm!20290) bm!20291))

(assert (= (or b!213955 bm!20294) bm!20293))

(assert (= (and d!58161 res!104767) b!213956))

(assert (= (and d!58161 c!35996) b!213946))

(assert (= (and d!58161 (not c!35996)) b!213949))

(assert (= (and d!58161 res!104765) b!213954))

(assert (= (and b!213954 res!104763) b!213948))

(assert (= (and b!213954 (not res!104766)) b!213953))

(assert (= (and b!213953 res!104771) b!213952))

(assert (= (and b!213954 res!104768) b!213940))

(assert (= (and b!213940 c!35998) b!213941))

(assert (= (and b!213940 (not c!35998)) b!213958))

(assert (= (and b!213941 res!104769) b!213942))

(assert (= (or b!213941 b!213958) bm!20292))

(assert (= (and b!213940 res!104770) b!213943))

(assert (= (and b!213943 c!36000) b!213944))

(assert (= (and b!213943 (not c!36000)) b!213939))

(assert (= (and b!213944 res!104764) b!213945))

(assert (= (or b!213944 b!213939) bm!20295))

(declare-fun b_lambda!7843 () Bool)

(assert (=> (not b_lambda!7843) (not b!213952)))

(assert (=> b!213952 t!8108))

(declare-fun b_and!12559 () Bool)

(assert (= b_and!12557 (and (=> t!8108 result!5035) b_and!12559)))

(declare-fun m!241833 () Bool)

(assert (=> b!213942 m!241833))

(assert (=> b!213952 m!241707))

(assert (=> b!213952 m!241785))

(assert (=> b!213952 m!241723))

(assert (=> b!213952 m!241707))

(declare-fun m!241835 () Bool)

(assert (=> b!213952 m!241835))

(assert (=> b!213952 m!241785))

(assert (=> b!213952 m!241723))

(assert (=> b!213952 m!241787))

(declare-fun m!241837 () Bool)

(assert (=> b!213946 m!241837))

(declare-fun m!241839 () Bool)

(assert (=> b!213946 m!241839))

(assert (=> b!213946 m!241659))

(declare-fun m!241841 () Bool)

(assert (=> b!213946 m!241841))

(declare-fun m!241843 () Bool)

(assert (=> b!213946 m!241843))

(declare-fun m!241845 () Bool)

(assert (=> b!213946 m!241845))

(declare-fun m!241847 () Bool)

(assert (=> b!213946 m!241847))

(declare-fun m!241849 () Bool)

(assert (=> b!213946 m!241849))

(declare-fun m!241851 () Bool)

(assert (=> b!213946 m!241851))

(assert (=> b!213946 m!241845))

(assert (=> b!213946 m!241851))

(declare-fun m!241853 () Bool)

(assert (=> b!213946 m!241853))

(declare-fun m!241855 () Bool)

(assert (=> b!213946 m!241855))

(assert (=> b!213946 m!241837))

(declare-fun m!241857 () Bool)

(assert (=> b!213946 m!241857))

(assert (=> b!213946 m!241707))

(declare-fun m!241859 () Bool)

(assert (=> b!213946 m!241859))

(declare-fun m!241861 () Bool)

(assert (=> b!213946 m!241861))

(assert (=> b!213946 m!241843))

(declare-fun m!241863 () Bool)

(assert (=> b!213946 m!241863))

(declare-fun m!241865 () Bool)

(assert (=> b!213946 m!241865))

(declare-fun m!241867 () Bool)

(assert (=> bm!20292 m!241867))

(declare-fun m!241869 () Bool)

(assert (=> bm!20293 m!241869))

(declare-fun m!241871 () Bool)

(assert (=> b!213955 m!241871))

(assert (=> b!213948 m!241707))

(assert (=> b!213948 m!241707))

(assert (=> b!213948 m!241717))

(assert (=> bm!20291 m!241659))

(assert (=> b!213956 m!241707))

(assert (=> b!213956 m!241707))

(assert (=> b!213956 m!241717))

(declare-fun m!241873 () Bool)

(assert (=> bm!20295 m!241873))

(assert (=> d!58161 m!241667))

(assert (=> b!213953 m!241707))

(assert (=> b!213953 m!241707))

(declare-fun m!241875 () Bool)

(assert (=> b!213953 m!241875))

(declare-fun m!241877 () Bool)

(assert (=> b!213945 m!241877))

(assert (=> b!213764 d!58161))

(declare-fun d!58163 () Bool)

(assert (=> d!58163 (= (validMask!0 mask!1149) (and (or (= mask!1149 #b00000000000000000000000000000111) (= mask!1149 #b00000000000000000000000000001111) (= mask!1149 #b00000000000000000000000000011111) (= mask!1149 #b00000000000000000000000000111111) (= mask!1149 #b00000000000000000000000001111111) (= mask!1149 #b00000000000000000000000011111111) (= mask!1149 #b00000000000000000000000111111111) (= mask!1149 #b00000000000000000000001111111111) (= mask!1149 #b00000000000000000000011111111111) (= mask!1149 #b00000000000000000000111111111111) (= mask!1149 #b00000000000000000001111111111111) (= mask!1149 #b00000000000000000011111111111111) (= mask!1149 #b00000000000000000111111111111111) (= mask!1149 #b00000000000000001111111111111111) (= mask!1149 #b00000000000000011111111111111111) (= mask!1149 #b00000000000000111111111111111111) (= mask!1149 #b00000000000001111111111111111111) (= mask!1149 #b00000000000011111111111111111111) (= mask!1149 #b00000000000111111111111111111111) (= mask!1149 #b00000000001111111111111111111111) (= mask!1149 #b00000000011111111111111111111111) (= mask!1149 #b00000000111111111111111111111111) (= mask!1149 #b00000001111111111111111111111111) (= mask!1149 #b00000011111111111111111111111111) (= mask!1149 #b00000111111111111111111111111111) (= mask!1149 #b00001111111111111111111111111111) (= mask!1149 #b00011111111111111111111111111111) (= mask!1149 #b00111111111111111111111111111111)) (bvsle mask!1149 #b00111111111111111111111111111111)))))

(assert (=> start!21230 d!58163))

(declare-fun d!58165 () Bool)

(assert (=> d!58165 (= (array_inv!3199 _values!649) (bvsge (size!5177 _values!649) #b00000000000000000000000000000000))))

(assert (=> start!21230 d!58165))

(declare-fun d!58167 () Bool)

(assert (=> d!58167 (= (array_inv!3200 _keys!825) (bvsge (size!5176 _keys!825) #b00000000000000000000000000000000))))

(assert (=> start!21230 d!58167))

(declare-fun d!58169 () Bool)

(assert (=> d!58169 (= (validKeyInArray!0 k0!843) (and (not (= k0!843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!213758 d!58169))

(declare-fun d!58171 () Bool)

(declare-fun e!139120 () Bool)

(assert (=> d!58171 e!139120))

(declare-fun res!104773 () Bool)

(assert (=> d!58171 (=> (not res!104773) (not e!139120))))

(declare-fun lt!110787 () ListLongMap!3161)

(assert (=> d!58171 (= res!104773 (contains!1421 lt!110787 (_1!2127 lt!110611)))))

(declare-fun lt!110786 () List!3143)

(assert (=> d!58171 (= lt!110787 (ListLongMap!3162 lt!110786))))

(declare-fun lt!110785 () Unit!6479)

(declare-fun lt!110788 () Unit!6479)

(assert (=> d!58171 (= lt!110785 lt!110788)))

(assert (=> d!58171 (= (getValueByKey!257 lt!110786 (_1!2127 lt!110611)) (Some!262 (_2!2127 lt!110611)))))

(assert (=> d!58171 (= lt!110788 (lemmaContainsTupThenGetReturnValue!146 lt!110786 (_1!2127 lt!110611) (_2!2127 lt!110611)))))

(assert (=> d!58171 (= lt!110786 (insertStrictlySorted!148 (toList!1596 lt!110615) (_1!2127 lt!110611) (_2!2127 lt!110611)))))

(assert (=> d!58171 (= (+!589 lt!110615 lt!110611) lt!110787)))

(declare-fun b!213960 () Bool)

(declare-fun res!104772 () Bool)

(assert (=> b!213960 (=> (not res!104772) (not e!139120))))

(assert (=> b!213960 (= res!104772 (= (getValueByKey!257 (toList!1596 lt!110787) (_1!2127 lt!110611)) (Some!262 (_2!2127 lt!110611))))))

(declare-fun b!213961 () Bool)

(assert (=> b!213961 (= e!139120 (contains!1422 (toList!1596 lt!110787) lt!110611))))

(assert (= (and d!58171 res!104773) b!213960))

(assert (= (and b!213960 res!104772) b!213961))

(declare-fun m!241879 () Bool)

(assert (=> d!58171 m!241879))

(declare-fun m!241881 () Bool)

(assert (=> d!58171 m!241881))

(declare-fun m!241883 () Bool)

(assert (=> d!58171 m!241883))

(declare-fun m!241885 () Bool)

(assert (=> d!58171 m!241885))

(declare-fun m!241887 () Bool)

(assert (=> b!213960 m!241887))

(declare-fun m!241889 () Bool)

(assert (=> b!213961 m!241889))

(assert (=> b!213765 d!58171))

(declare-fun bm!20299 () Bool)

(declare-fun call!20302 () Bool)

(declare-fun c!36004 () Bool)

(assert (=> bm!20299 (= call!20302 (arrayNoDuplicates!0 _keys!825 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!36004 (Cons!3138 (select (arr!4851 _keys!825) #b00000000000000000000000000000000) Nil!3139) Nil!3139)))))

(declare-fun b!213972 () Bool)

(declare-fun e!139130 () Bool)

(declare-fun contains!1423 (List!3142 (_ BitVec 64)) Bool)

(assert (=> b!213972 (= e!139130 (contains!1423 Nil!3139 (select (arr!4851 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!213973 () Bool)

(declare-fun e!139131 () Bool)

(assert (=> b!213973 (= e!139131 call!20302)))

(declare-fun d!58173 () Bool)

(declare-fun res!104780 () Bool)

(declare-fun e!139129 () Bool)

(assert (=> d!58173 (=> res!104780 e!139129)))

(assert (=> d!58173 (= res!104780 (bvsge #b00000000000000000000000000000000 (size!5176 _keys!825)))))

(assert (=> d!58173 (= (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3139) e!139129)))

(declare-fun b!213974 () Bool)

(assert (=> b!213974 (= e!139131 call!20302)))

(declare-fun b!213975 () Bool)

(declare-fun e!139132 () Bool)

(assert (=> b!213975 (= e!139129 e!139132)))

(declare-fun res!104781 () Bool)

(assert (=> b!213975 (=> (not res!104781) (not e!139132))))

(assert (=> b!213975 (= res!104781 (not e!139130))))

(declare-fun res!104782 () Bool)

(assert (=> b!213975 (=> (not res!104782) (not e!139130))))

(assert (=> b!213975 (= res!104782 (validKeyInArray!0 (select (arr!4851 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!213976 () Bool)

(assert (=> b!213976 (= e!139132 e!139131)))

(assert (=> b!213976 (= c!36004 (validKeyInArray!0 (select (arr!4851 _keys!825) #b00000000000000000000000000000000)))))

(assert (= (and d!58173 (not res!104780)) b!213975))

(assert (= (and b!213975 res!104782) b!213972))

(assert (= (and b!213975 res!104781) b!213976))

(assert (= (and b!213976 c!36004) b!213974))

(assert (= (and b!213976 (not c!36004)) b!213973))

(assert (= (or b!213974 b!213973) bm!20299))

(assert (=> bm!20299 m!241707))

(declare-fun m!241891 () Bool)

(assert (=> bm!20299 m!241891))

(assert (=> b!213972 m!241707))

(assert (=> b!213972 m!241707))

(declare-fun m!241893 () Bool)

(assert (=> b!213972 m!241893))

(assert (=> b!213975 m!241707))

(assert (=> b!213975 m!241707))

(assert (=> b!213975 m!241717))

(assert (=> b!213976 m!241707))

(assert (=> b!213976 m!241707))

(assert (=> b!213976 m!241717))

(assert (=> b!213757 d!58173))

(declare-fun b!213984 () Bool)

(declare-fun e!139138 () Bool)

(assert (=> b!213984 (= e!139138 tp_is_empty!5511)))

(declare-fun mapIsEmpty!9374 () Bool)

(declare-fun mapRes!9374 () Bool)

(assert (=> mapIsEmpty!9374 mapRes!9374))

(declare-fun mapNonEmpty!9374 () Bool)

(declare-fun tp!20030 () Bool)

(declare-fun e!139137 () Bool)

(assert (=> mapNonEmpty!9374 (= mapRes!9374 (and tp!20030 e!139137))))

(declare-fun mapRest!9374 () (Array (_ BitVec 32) ValueCell!2412))

(declare-fun mapValue!9374 () ValueCell!2412)

(declare-fun mapKey!9374 () (_ BitVec 32))

(assert (=> mapNonEmpty!9374 (= mapRest!9368 (store mapRest!9374 mapKey!9374 mapValue!9374))))

(declare-fun condMapEmpty!9374 () Bool)

(declare-fun mapDefault!9374 () ValueCell!2412)

(assert (=> mapNonEmpty!9368 (= condMapEmpty!9374 (= mapRest!9368 ((as const (Array (_ BitVec 32) ValueCell!2412)) mapDefault!9374)))))

(assert (=> mapNonEmpty!9368 (= tp!20020 (and e!139138 mapRes!9374))))

(declare-fun b!213983 () Bool)

(assert (=> b!213983 (= e!139137 tp_is_empty!5511)))

(assert (= (and mapNonEmpty!9368 condMapEmpty!9374) mapIsEmpty!9374))

(assert (= (and mapNonEmpty!9368 (not condMapEmpty!9374)) mapNonEmpty!9374))

(assert (= (and mapNonEmpty!9374 ((_ is ValueCellFull!2412) mapValue!9374)) b!213983))

(assert (= (and mapNonEmpty!9368 ((_ is ValueCellFull!2412) mapDefault!9374)) b!213984))

(declare-fun m!241895 () Bool)

(assert (=> mapNonEmpty!9374 m!241895))

(declare-fun b_lambda!7845 () Bool)

(assert (= b_lambda!7841 (or (and start!21230 b_free!5649) b_lambda!7845)))

(declare-fun b_lambda!7847 () Bool)

(assert (= b_lambda!7843 (or (and start!21230 b_free!5649) b_lambda!7847)))

(declare-fun b_lambda!7849 () Bool)

(assert (= b_lambda!7833 (or (and start!21230 b_free!5649) b_lambda!7849)))

(declare-fun b_lambda!7851 () Bool)

(assert (= b_lambda!7839 (or (and start!21230 b_free!5649) b_lambda!7851)))

(declare-fun b_lambda!7853 () Bool)

(assert (= b_lambda!7835 (or (and start!21230 b_free!5649) b_lambda!7853)))

(declare-fun b_lambda!7855 () Bool)

(assert (= b_lambda!7837 (or (and start!21230 b_free!5649) b_lambda!7855)))

(check-sat (not bm!20291) (not b!213870) (not b!213953) (not b!213860) (not bm!20282) (not b!213942) (not bm!20289) (not b!213956) (not b!213948) (not bm!20292) (not b!213869) (not b!213924) (not b!213921) (not b!213917) (not d!58159) (not d!58155) (not b!213866) (not d!58157) (not b!213916) (not b!213925) (not b!213903) (not b!213946) (not b!213952) (not b!213810) (not b_lambda!7849) b_and!12559 (not b!213929) (not bm!20293) (not b!213856) (not b!213928) (not b_lambda!7851) tp_is_empty!5511 (not b!213961) (not b!213927) (not mapNonEmpty!9374) (not d!58161) (not b_lambda!7845) (not b!213807) (not d!58171) (not d!58153) (not b!213975) (not b!213936) (not bm!20288) (not b!213909) (not b!213945) (not b!213859) (not b!213955) (not bm!20276) (not b!213906) (not b!213910) (not b!213907) (not b!213862) (not b_lambda!7847) (not b!213919) (not b!213960) (not b!213901) (not bm!20274) (not bm!20278) (not b!213976) (not b!213905) (not b!213911) (not b_next!5649) (not b!213867) (not b!213923) (not bm!20295) (not bm!20299) (not bm!20275) (not bm!20283) (not bm!20258) (not d!58151) (not b!213972) (not b_lambda!7855) (not b_lambda!7853))
(check-sat b_and!12559 (not b_next!5649))
