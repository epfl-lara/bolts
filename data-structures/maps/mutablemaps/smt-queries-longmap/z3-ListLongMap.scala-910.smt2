; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20570 () Bool)

(assert start!20570)

(declare-fun b_free!5217 () Bool)

(declare-fun b_next!5217 () Bool)

(assert (=> start!20570 (= b_free!5217 (not b_next!5217))))

(declare-fun tp!18682 () Bool)

(declare-fun b_and!11981 () Bool)

(assert (=> start!20570 (= tp!18682 b_and!11981)))

(declare-fun b!204508 () Bool)

(declare-fun res!98585 () Bool)

(declare-fun e!133807 () Bool)

(assert (=> b!204508 (=> (not res!98585) (not e!133807))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!204508 (= res!98585 (validKeyInArray!0 k0!843))))

(declare-fun b!204509 () Bool)

(declare-fun res!98592 () Bool)

(assert (=> b!204509 (=> (not res!98592) (not e!133807))))

(declare-datatypes ((array!9362 0))(
  ( (array!9363 (arr!4431 (Array (_ BitVec 32) (_ BitVec 64))) (size!4756 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9362)

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!204509 (= res!98592 (= (select (arr!4431 _keys!825) i!601) k0!843))))

(declare-fun b!204510 () Bool)

(declare-fun e!133810 () Bool)

(assert (=> b!204510 (= e!133807 (not e!133810))))

(declare-fun res!98586 () Bool)

(assert (=> b!204510 (=> res!98586 e!133810)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!204510 (= res!98586 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!6411 0))(
  ( (V!6412 (val!2581 Int)) )
))
(declare-datatypes ((ValueCell!2193 0))(
  ( (ValueCellFull!2193 (v!4547 V!6411)) (EmptyCell!2193) )
))
(declare-datatypes ((array!9364 0))(
  ( (array!9365 (arr!4432 (Array (_ BitVec 32) ValueCell!2193)) (size!4757 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9364)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-datatypes ((tuple2!3910 0))(
  ( (tuple2!3911 (_1!1965 (_ BitVec 64)) (_2!1965 V!6411)) )
))
(declare-datatypes ((List!2832 0))(
  ( (Nil!2829) (Cons!2828 (h!3470 tuple2!3910) (t!7771 List!2832)) )
))
(declare-datatypes ((ListLongMap!2837 0))(
  ( (ListLongMap!2838 (toList!1434 List!2832)) )
))
(declare-fun lt!103713 () ListLongMap!2837)

(declare-fun zeroValue!615 () V!6411)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6411)

(declare-fun getCurrentListMap!1002 (array!9362 array!9364 (_ BitVec 32) (_ BitVec 32) V!6411 V!6411 (_ BitVec 32) Int) ListLongMap!2837)

(assert (=> b!204510 (= lt!103713 (getCurrentListMap!1002 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!103712 () array!9364)

(declare-fun lt!103714 () ListLongMap!2837)

(assert (=> b!204510 (= lt!103714 (getCurrentListMap!1002 _keys!825 lt!103712 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!103717 () ListLongMap!2837)

(declare-fun lt!103711 () ListLongMap!2837)

(assert (=> b!204510 (and (= lt!103717 lt!103711) (= lt!103711 lt!103717))))

(declare-fun lt!103716 () ListLongMap!2837)

(declare-fun lt!103708 () tuple2!3910)

(declare-fun +!451 (ListLongMap!2837 tuple2!3910) ListLongMap!2837)

(assert (=> b!204510 (= lt!103711 (+!451 lt!103716 lt!103708))))

(declare-fun v!520 () V!6411)

(assert (=> b!204510 (= lt!103708 (tuple2!3911 k0!843 v!520))))

(declare-datatypes ((Unit!6201 0))(
  ( (Unit!6202) )
))
(declare-fun lt!103706 () Unit!6201)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!115 (array!9362 array!9364 (_ BitVec 32) (_ BitVec 32) V!6411 V!6411 (_ BitVec 32) (_ BitVec 64) V!6411 (_ BitVec 32) Int) Unit!6201)

(assert (=> b!204510 (= lt!103706 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!115 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!373 (array!9362 array!9364 (_ BitVec 32) (_ BitVec 32) V!6411 V!6411 (_ BitVec 32) Int) ListLongMap!2837)

(assert (=> b!204510 (= lt!103717 (getCurrentListMapNoExtraKeys!373 _keys!825 lt!103712 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!204510 (= lt!103712 (array!9365 (store (arr!4432 _values!649) i!601 (ValueCellFull!2193 v!520)) (size!4757 _values!649)))))

(assert (=> b!204510 (= lt!103716 (getCurrentListMapNoExtraKeys!373 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!204511 () Bool)

(declare-fun res!98590 () Bool)

(assert (=> b!204511 (=> (not res!98590) (not e!133807))))

(declare-datatypes ((List!2833 0))(
  ( (Nil!2830) (Cons!2829 (h!3471 (_ BitVec 64)) (t!7772 List!2833)) )
))
(declare-fun arrayNoDuplicates!0 (array!9362 (_ BitVec 32) List!2833) Bool)

(assert (=> b!204511 (= res!98590 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2830))))

(declare-fun res!98588 () Bool)

(assert (=> start!20570 (=> (not res!98588) (not e!133807))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20570 (= res!98588 (validMask!0 mask!1149))))

(assert (=> start!20570 e!133807))

(declare-fun e!133811 () Bool)

(declare-fun array_inv!2915 (array!9364) Bool)

(assert (=> start!20570 (and (array_inv!2915 _values!649) e!133811)))

(assert (=> start!20570 true))

(declare-fun tp_is_empty!5073 () Bool)

(assert (=> start!20570 tp_is_empty!5073))

(declare-fun array_inv!2916 (array!9362) Bool)

(assert (=> start!20570 (array_inv!2916 _keys!825)))

(assert (=> start!20570 tp!18682))

(declare-fun b!204512 () Bool)

(declare-fun res!98587 () Bool)

(assert (=> b!204512 (=> (not res!98587) (not e!133807))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9362 (_ BitVec 32)) Bool)

(assert (=> b!204512 (= res!98587 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!204513 () Bool)

(declare-fun e!133809 () Bool)

(assert (=> b!204513 (= e!133809 tp_is_empty!5073)))

(declare-fun b!204514 () Bool)

(declare-fun e!133812 () Bool)

(declare-fun mapRes!8678 () Bool)

(assert (=> b!204514 (= e!133811 (and e!133812 mapRes!8678))))

(declare-fun condMapEmpty!8678 () Bool)

(declare-fun mapDefault!8678 () ValueCell!2193)

(assert (=> b!204514 (= condMapEmpty!8678 (= (arr!4432 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2193)) mapDefault!8678)))))

(declare-fun b!204515 () Bool)

(declare-fun e!133808 () Bool)

(assert (=> b!204515 (= e!133810 e!133808)))

(declare-fun res!98589 () Bool)

(assert (=> b!204515 (=> res!98589 e!133808)))

(assert (=> b!204515 (= res!98589 (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!103707 () ListLongMap!2837)

(assert (=> b!204515 (= lt!103713 lt!103707)))

(declare-fun lt!103710 () tuple2!3910)

(assert (=> b!204515 (= lt!103707 (+!451 lt!103716 lt!103710))))

(declare-fun lt!103715 () ListLongMap!2837)

(assert (=> b!204515 (= lt!103714 lt!103715)))

(assert (=> b!204515 (= lt!103715 (+!451 lt!103711 lt!103710))))

(assert (=> b!204515 (= lt!103714 (+!451 lt!103717 lt!103710))))

(assert (=> b!204515 (= lt!103710 (tuple2!3911 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!204516 () Bool)

(declare-fun res!98591 () Bool)

(assert (=> b!204516 (=> (not res!98591) (not e!133807))))

(assert (=> b!204516 (= res!98591 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4756 _keys!825))))))

(declare-fun b!204517 () Bool)

(declare-fun res!98593 () Bool)

(assert (=> b!204517 (=> (not res!98593) (not e!133807))))

(assert (=> b!204517 (= res!98593 (and (= (size!4757 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4756 _keys!825) (size!4757 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!8678 () Bool)

(assert (=> mapIsEmpty!8678 mapRes!8678))

(declare-fun mapNonEmpty!8678 () Bool)

(declare-fun tp!18683 () Bool)

(assert (=> mapNonEmpty!8678 (= mapRes!8678 (and tp!18683 e!133809))))

(declare-fun mapKey!8678 () (_ BitVec 32))

(declare-fun mapValue!8678 () ValueCell!2193)

(declare-fun mapRest!8678 () (Array (_ BitVec 32) ValueCell!2193))

(assert (=> mapNonEmpty!8678 (= (arr!4432 _values!649) (store mapRest!8678 mapKey!8678 mapValue!8678))))

(declare-fun b!204518 () Bool)

(assert (=> b!204518 (= e!133808 true)))

(assert (=> b!204518 (= lt!103715 (+!451 lt!103707 lt!103708))))

(declare-fun lt!103709 () Unit!6201)

(declare-fun addCommutativeForDiffKeys!157 (ListLongMap!2837 (_ BitVec 64) V!6411 (_ BitVec 64) V!6411) Unit!6201)

(assert (=> b!204518 (= lt!103709 (addCommutativeForDiffKeys!157 lt!103716 k0!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!204519 () Bool)

(assert (=> b!204519 (= e!133812 tp_is_empty!5073)))

(assert (= (and start!20570 res!98588) b!204517))

(assert (= (and b!204517 res!98593) b!204512))

(assert (= (and b!204512 res!98587) b!204511))

(assert (= (and b!204511 res!98590) b!204516))

(assert (= (and b!204516 res!98591) b!204508))

(assert (= (and b!204508 res!98585) b!204509))

(assert (= (and b!204509 res!98592) b!204510))

(assert (= (and b!204510 (not res!98586)) b!204515))

(assert (= (and b!204515 (not res!98589)) b!204518))

(assert (= (and b!204514 condMapEmpty!8678) mapIsEmpty!8678))

(assert (= (and b!204514 (not condMapEmpty!8678)) mapNonEmpty!8678))

(get-info :version)

(assert (= (and mapNonEmpty!8678 ((_ is ValueCellFull!2193) mapValue!8678)) b!204513))

(assert (= (and b!204514 ((_ is ValueCellFull!2193) mapDefault!8678)) b!204519))

(assert (= start!20570 b!204514))

(declare-fun m!232057 () Bool)

(assert (=> b!204511 m!232057))

(declare-fun m!232059 () Bool)

(assert (=> start!20570 m!232059))

(declare-fun m!232061 () Bool)

(assert (=> start!20570 m!232061))

(declare-fun m!232063 () Bool)

(assert (=> start!20570 m!232063))

(declare-fun m!232065 () Bool)

(assert (=> b!204512 m!232065))

(declare-fun m!232067 () Bool)

(assert (=> b!204509 m!232067))

(declare-fun m!232069 () Bool)

(assert (=> b!204515 m!232069))

(declare-fun m!232071 () Bool)

(assert (=> b!204515 m!232071))

(declare-fun m!232073 () Bool)

(assert (=> b!204515 m!232073))

(declare-fun m!232075 () Bool)

(assert (=> b!204510 m!232075))

(declare-fun m!232077 () Bool)

(assert (=> b!204510 m!232077))

(declare-fun m!232079 () Bool)

(assert (=> b!204510 m!232079))

(declare-fun m!232081 () Bool)

(assert (=> b!204510 m!232081))

(declare-fun m!232083 () Bool)

(assert (=> b!204510 m!232083))

(declare-fun m!232085 () Bool)

(assert (=> b!204510 m!232085))

(declare-fun m!232087 () Bool)

(assert (=> b!204510 m!232087))

(declare-fun m!232089 () Bool)

(assert (=> b!204518 m!232089))

(declare-fun m!232091 () Bool)

(assert (=> b!204518 m!232091))

(declare-fun m!232093 () Bool)

(assert (=> mapNonEmpty!8678 m!232093))

(declare-fun m!232095 () Bool)

(assert (=> b!204508 m!232095))

(check-sat (not b_next!5217) b_and!11981 (not mapNonEmpty!8678) (not b!204515) tp_is_empty!5073 (not b!204511) (not b!204510) (not start!20570) (not b!204508) (not b!204512) (not b!204518))
(check-sat b_and!11981 (not b_next!5217))
