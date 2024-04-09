; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20408 () Bool)

(assert start!20408)

(declare-fun b_free!5055 () Bool)

(declare-fun b_next!5055 () Bool)

(assert (=> start!20408 (= b_free!5055 (not b_next!5055))))

(declare-fun tp!18197 () Bool)

(declare-fun b_and!11819 () Bool)

(assert (=> start!20408 (= tp!18197 b_and!11819)))

(declare-fun b!201574 () Bool)

(declare-fun e!132109 () Bool)

(assert (=> b!201574 (= e!132109 true)))

(declare-datatypes ((V!6195 0))(
  ( (V!6196 (val!2500 Int)) )
))
(declare-datatypes ((tuple2!3782 0))(
  ( (tuple2!3783 (_1!1901 (_ BitVec 64)) (_2!1901 V!6195)) )
))
(declare-datatypes ((List!2718 0))(
  ( (Nil!2715) (Cons!2714 (h!3356 tuple2!3782) (t!7657 List!2718)) )
))
(declare-datatypes ((ListLongMap!2709 0))(
  ( (ListLongMap!2710 (toList!1370 List!2718)) )
))
(declare-fun lt!100632 () ListLongMap!2709)

(declare-fun lt!100638 () ListLongMap!2709)

(declare-fun lt!100642 () tuple2!3782)

(declare-fun lt!100630 () tuple2!3782)

(declare-fun +!387 (ListLongMap!2709 tuple2!3782) ListLongMap!2709)

(assert (=> b!201574 (= (+!387 lt!100632 lt!100642) (+!387 lt!100638 lt!100630))))

(declare-fun minValue!615 () V!6195)

(declare-fun v!520 () V!6195)

(declare-fun k0!843 () (_ BitVec 64))

(declare-datatypes ((Unit!6081 0))(
  ( (Unit!6082) )
))
(declare-fun lt!100631 () Unit!6081)

(declare-fun lt!100641 () ListLongMap!2709)

(declare-fun addCommutativeForDiffKeys!108 (ListLongMap!2709 (_ BitVec 64) V!6195 (_ BitVec 64) V!6195) Unit!6081)

(assert (=> b!201574 (= lt!100631 (addCommutativeForDiffKeys!108 lt!100641 k0!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!201575 () Bool)

(declare-fun res!96387 () Bool)

(declare-fun e!132111 () Bool)

(assert (=> b!201575 (=> (not res!96387) (not e!132111))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!201575 (= res!96387 (validKeyInArray!0 k0!843))))

(declare-fun b!201576 () Bool)

(declare-fun e!132110 () Bool)

(assert (=> b!201576 (= e!132111 (not e!132110))))

(declare-fun res!96381 () Bool)

(assert (=> b!201576 (=> res!96381 e!132110)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!201576 (= res!96381 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((ValueCell!2112 0))(
  ( (ValueCellFull!2112 (v!4466 V!6195)) (EmptyCell!2112) )
))
(declare-datatypes ((array!9050 0))(
  ( (array!9051 (arr!4275 (Array (_ BitVec 32) ValueCell!2112)) (size!4600 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9050)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!6195)

(declare-fun lt!100645 () ListLongMap!2709)

(declare-datatypes ((array!9052 0))(
  ( (array!9053 (arr!4276 (Array (_ BitVec 32) (_ BitVec 64))) (size!4601 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9052)

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!953 (array!9052 array!9050 (_ BitVec 32) (_ BitVec 32) V!6195 V!6195 (_ BitVec 32) Int) ListLongMap!2709)

(assert (=> b!201576 (= lt!100645 (getCurrentListMap!953 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!100643 () ListLongMap!2709)

(declare-fun lt!100637 () array!9050)

(assert (=> b!201576 (= lt!100643 (getCurrentListMap!953 _keys!825 lt!100637 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!100634 () ListLongMap!2709)

(declare-fun lt!100635 () ListLongMap!2709)

(assert (=> b!201576 (and (= lt!100634 lt!100635) (= lt!100635 lt!100634))))

(declare-fun lt!100639 () ListLongMap!2709)

(assert (=> b!201576 (= lt!100635 (+!387 lt!100639 lt!100630))))

(assert (=> b!201576 (= lt!100630 (tuple2!3783 k0!843 v!520))))

(declare-fun lt!100633 () Unit!6081)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!66 (array!9052 array!9050 (_ BitVec 32) (_ BitVec 32) V!6195 V!6195 (_ BitVec 32) (_ BitVec 64) V!6195 (_ BitVec 32) Int) Unit!6081)

(assert (=> b!201576 (= lt!100633 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!66 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!324 (array!9052 array!9050 (_ BitVec 32) (_ BitVec 32) V!6195 V!6195 (_ BitVec 32) Int) ListLongMap!2709)

(assert (=> b!201576 (= lt!100634 (getCurrentListMapNoExtraKeys!324 _keys!825 lt!100637 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!201576 (= lt!100637 (array!9051 (store (arr!4275 _values!649) i!601 (ValueCellFull!2112 v!520)) (size!4600 _values!649)))))

(assert (=> b!201576 (= lt!100639 (getCurrentListMapNoExtraKeys!324 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!201577 () Bool)

(declare-fun res!96385 () Bool)

(assert (=> b!201577 (=> (not res!96385) (not e!132111))))

(declare-datatypes ((List!2719 0))(
  ( (Nil!2716) (Cons!2715 (h!3357 (_ BitVec 64)) (t!7658 List!2719)) )
))
(declare-fun arrayNoDuplicates!0 (array!9052 (_ BitVec 32) List!2719) Bool)

(assert (=> b!201577 (= res!96385 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2716))))

(declare-fun b!201578 () Bool)

(declare-fun res!96386 () Bool)

(assert (=> b!201578 (=> (not res!96386) (not e!132111))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9052 (_ BitVec 32)) Bool)

(assert (=> b!201578 (= res!96386 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!201579 () Bool)

(declare-fun e!132107 () Bool)

(declare-fun tp_is_empty!4911 () Bool)

(assert (=> b!201579 (= e!132107 tp_is_empty!4911)))

(declare-fun b!201580 () Bool)

(assert (=> b!201580 (= e!132110 e!132109)))

(declare-fun res!96388 () Bool)

(assert (=> b!201580 (=> res!96388 e!132109)))

(assert (=> b!201580 (= res!96388 (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!100636 () ListLongMap!2709)

(assert (=> b!201580 (= lt!100636 lt!100632)))

(assert (=> b!201580 (= lt!100632 (+!387 lt!100641 lt!100630))))

(declare-fun lt!100640 () Unit!6081)

(assert (=> b!201580 (= lt!100640 (addCommutativeForDiffKeys!108 lt!100639 k0!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(assert (=> b!201580 (= lt!100643 (+!387 lt!100636 lt!100642))))

(declare-fun lt!100644 () tuple2!3782)

(assert (=> b!201580 (= lt!100636 (+!387 lt!100635 lt!100644))))

(assert (=> b!201580 (= lt!100645 lt!100638)))

(assert (=> b!201580 (= lt!100638 (+!387 lt!100641 lt!100642))))

(assert (=> b!201580 (= lt!100641 (+!387 lt!100639 lt!100644))))

(assert (=> b!201580 (= lt!100643 (+!387 (+!387 lt!100634 lt!100644) lt!100642))))

(assert (=> b!201580 (= lt!100642 (tuple2!3783 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!201580 (= lt!100644 (tuple2!3783 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun mapNonEmpty!8435 () Bool)

(declare-fun mapRes!8435 () Bool)

(declare-fun tp!18196 () Bool)

(declare-fun e!132106 () Bool)

(assert (=> mapNonEmpty!8435 (= mapRes!8435 (and tp!18196 e!132106))))

(declare-fun mapKey!8435 () (_ BitVec 32))

(declare-fun mapValue!8435 () ValueCell!2112)

(declare-fun mapRest!8435 () (Array (_ BitVec 32) ValueCell!2112))

(assert (=> mapNonEmpty!8435 (= (arr!4275 _values!649) (store mapRest!8435 mapKey!8435 mapValue!8435))))

(declare-fun b!201581 () Bool)

(declare-fun res!96384 () Bool)

(assert (=> b!201581 (=> (not res!96384) (not e!132111))))

(assert (=> b!201581 (= res!96384 (and (= (size!4600 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4601 _keys!825) (size!4600 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!201582 () Bool)

(assert (=> b!201582 (= e!132106 tp_is_empty!4911)))

(declare-fun res!96382 () Bool)

(assert (=> start!20408 (=> (not res!96382) (not e!132111))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20408 (= res!96382 (validMask!0 mask!1149))))

(assert (=> start!20408 e!132111))

(declare-fun e!132108 () Bool)

(declare-fun array_inv!2813 (array!9050) Bool)

(assert (=> start!20408 (and (array_inv!2813 _values!649) e!132108)))

(assert (=> start!20408 true))

(assert (=> start!20408 tp_is_empty!4911))

(declare-fun array_inv!2814 (array!9052) Bool)

(assert (=> start!20408 (array_inv!2814 _keys!825)))

(assert (=> start!20408 tp!18197))

(declare-fun b!201583 () Bool)

(declare-fun res!96383 () Bool)

(assert (=> b!201583 (=> (not res!96383) (not e!132111))))

(assert (=> b!201583 (= res!96383 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4601 _keys!825))))))

(declare-fun b!201584 () Bool)

(declare-fun res!96380 () Bool)

(assert (=> b!201584 (=> (not res!96380) (not e!132111))))

(assert (=> b!201584 (= res!96380 (= (select (arr!4276 _keys!825) i!601) k0!843))))

(declare-fun mapIsEmpty!8435 () Bool)

(assert (=> mapIsEmpty!8435 mapRes!8435))

(declare-fun b!201585 () Bool)

(assert (=> b!201585 (= e!132108 (and e!132107 mapRes!8435))))

(declare-fun condMapEmpty!8435 () Bool)

(declare-fun mapDefault!8435 () ValueCell!2112)

(assert (=> b!201585 (= condMapEmpty!8435 (= (arr!4275 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2112)) mapDefault!8435)))))

(assert (= (and start!20408 res!96382) b!201581))

(assert (= (and b!201581 res!96384) b!201578))

(assert (= (and b!201578 res!96386) b!201577))

(assert (= (and b!201577 res!96385) b!201583))

(assert (= (and b!201583 res!96383) b!201575))

(assert (= (and b!201575 res!96387) b!201584))

(assert (= (and b!201584 res!96380) b!201576))

(assert (= (and b!201576 (not res!96381)) b!201580))

(assert (= (and b!201580 (not res!96388)) b!201574))

(assert (= (and b!201585 condMapEmpty!8435) mapIsEmpty!8435))

(assert (= (and b!201585 (not condMapEmpty!8435)) mapNonEmpty!8435))

(get-info :version)

(assert (= (and mapNonEmpty!8435 ((_ is ValueCellFull!2112) mapValue!8435)) b!201582))

(assert (= (and b!201585 ((_ is ValueCellFull!2112) mapDefault!8435)) b!201579))

(assert (= start!20408 b!201585))

(declare-fun m!228601 () Bool)

(assert (=> b!201575 m!228601))

(declare-fun m!228603 () Bool)

(assert (=> start!20408 m!228603))

(declare-fun m!228605 () Bool)

(assert (=> start!20408 m!228605))

(declare-fun m!228607 () Bool)

(assert (=> start!20408 m!228607))

(declare-fun m!228609 () Bool)

(assert (=> b!201576 m!228609))

(declare-fun m!228611 () Bool)

(assert (=> b!201576 m!228611))

(declare-fun m!228613 () Bool)

(assert (=> b!201576 m!228613))

(declare-fun m!228615 () Bool)

(assert (=> b!201576 m!228615))

(declare-fun m!228617 () Bool)

(assert (=> b!201576 m!228617))

(declare-fun m!228619 () Bool)

(assert (=> b!201576 m!228619))

(declare-fun m!228621 () Bool)

(assert (=> b!201576 m!228621))

(declare-fun m!228623 () Bool)

(assert (=> b!201574 m!228623))

(declare-fun m!228625 () Bool)

(assert (=> b!201574 m!228625))

(declare-fun m!228627 () Bool)

(assert (=> b!201574 m!228627))

(declare-fun m!228629 () Bool)

(assert (=> b!201578 m!228629))

(declare-fun m!228631 () Bool)

(assert (=> mapNonEmpty!8435 m!228631))

(declare-fun m!228633 () Bool)

(assert (=> b!201580 m!228633))

(declare-fun m!228635 () Bool)

(assert (=> b!201580 m!228635))

(declare-fun m!228637 () Bool)

(assert (=> b!201580 m!228637))

(declare-fun m!228639 () Bool)

(assert (=> b!201580 m!228639))

(declare-fun m!228641 () Bool)

(assert (=> b!201580 m!228641))

(declare-fun m!228643 () Bool)

(assert (=> b!201580 m!228643))

(assert (=> b!201580 m!228643))

(declare-fun m!228645 () Bool)

(assert (=> b!201580 m!228645))

(declare-fun m!228647 () Bool)

(assert (=> b!201580 m!228647))

(declare-fun m!228649 () Bool)

(assert (=> b!201577 m!228649))

(declare-fun m!228651 () Bool)

(assert (=> b!201584 m!228651))

(check-sat (not b!201580) (not b!201578) (not b!201575) (not mapNonEmpty!8435) (not b!201576) tp_is_empty!4911 b_and!11819 (not b!201574) (not b!201577) (not start!20408) (not b_next!5055))
(check-sat b_and!11819 (not b_next!5055))
