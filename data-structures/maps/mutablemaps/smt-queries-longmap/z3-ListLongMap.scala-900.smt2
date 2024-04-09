; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20510 () Bool)

(assert start!20510)

(declare-fun b_free!5157 () Bool)

(declare-fun b_next!5157 () Bool)

(assert (=> start!20510 (= b_free!5157 (not b_next!5157))))

(declare-fun tp!18503 () Bool)

(declare-fun b_and!11921 () Bool)

(assert (=> start!20510 (= tp!18503 b_and!11921)))

(declare-fun b!203419 () Bool)

(declare-fun res!97771 () Bool)

(declare-fun e!133183 () Bool)

(assert (=> b!203419 (=> (not res!97771) (not e!133183))))

(declare-datatypes ((array!9248 0))(
  ( (array!9249 (arr!4374 (Array (_ BitVec 32) (_ BitVec 64))) (size!4699 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9248)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6331 0))(
  ( (V!6332 (val!2551 Int)) )
))
(declare-datatypes ((ValueCell!2163 0))(
  ( (ValueCellFull!2163 (v!4517 V!6331)) (EmptyCell!2163) )
))
(declare-datatypes ((array!9250 0))(
  ( (array!9251 (arr!4375 (Array (_ BitVec 32) ValueCell!2163)) (size!4700 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9250)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!203419 (= res!97771 (and (= (size!4700 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4699 _keys!825) (size!4700 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!203420 () Bool)

(declare-fun res!97769 () Bool)

(assert (=> b!203420 (=> (not res!97769) (not e!133183))))

(declare-datatypes ((List!2793 0))(
  ( (Nil!2790) (Cons!2789 (h!3431 (_ BitVec 64)) (t!7732 List!2793)) )
))
(declare-fun arrayNoDuplicates!0 (array!9248 (_ BitVec 32) List!2793) Bool)

(assert (=> b!203420 (= res!97769 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2790))))

(declare-fun mapNonEmpty!8588 () Bool)

(declare-fun mapRes!8588 () Bool)

(declare-fun tp!18502 () Bool)

(declare-fun e!133180 () Bool)

(assert (=> mapNonEmpty!8588 (= mapRes!8588 (and tp!18502 e!133180))))

(declare-fun mapKey!8588 () (_ BitVec 32))

(declare-fun mapRest!8588 () (Array (_ BitVec 32) ValueCell!2163))

(declare-fun mapValue!8588 () ValueCell!2163)

(assert (=> mapNonEmpty!8588 (= (arr!4375 _values!649) (store mapRest!8588 mapKey!8588 mapValue!8588))))

(declare-fun b!203421 () Bool)

(declare-fun res!97766 () Bool)

(assert (=> b!203421 (=> (not res!97766) (not e!133183))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9248 (_ BitVec 32)) Bool)

(assert (=> b!203421 (= res!97766 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!203422 () Bool)

(declare-fun tp_is_empty!5013 () Bool)

(assert (=> b!203422 (= e!133180 tp_is_empty!5013)))

(declare-fun mapIsEmpty!8588 () Bool)

(assert (=> mapIsEmpty!8588 mapRes!8588))

(declare-fun b!203423 () Bool)

(declare-fun e!133178 () Bool)

(assert (=> b!203423 (= e!133178 tp_is_empty!5013)))

(declare-fun b!203424 () Bool)

(declare-fun res!97767 () Bool)

(assert (=> b!203424 (=> (not res!97767) (not e!133183))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!203424 (= res!97767 (= (select (arr!4374 _keys!825) i!601) k0!843))))

(declare-fun b!203425 () Bool)

(declare-fun e!133181 () Bool)

(assert (=> b!203425 (= e!133181 (and e!133178 mapRes!8588))))

(declare-fun condMapEmpty!8588 () Bool)

(declare-fun mapDefault!8588 () ValueCell!2163)

(assert (=> b!203425 (= condMapEmpty!8588 (= (arr!4375 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2163)) mapDefault!8588)))))

(declare-fun b!203426 () Bool)

(declare-fun e!133179 () Bool)

(assert (=> b!203426 (= e!133183 (not e!133179))))

(declare-fun res!97770 () Bool)

(assert (=> b!203426 (=> res!97770 e!133179)))

(assert (=> b!203426 (= res!97770 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!3868 0))(
  ( (tuple2!3869 (_1!1944 (_ BitVec 64)) (_2!1944 V!6331)) )
))
(declare-datatypes ((List!2794 0))(
  ( (Nil!2791) (Cons!2790 (h!3432 tuple2!3868) (t!7733 List!2794)) )
))
(declare-datatypes ((ListLongMap!2795 0))(
  ( (ListLongMap!2796 (toList!1413 List!2794)) )
))
(declare-fun lt!102667 () ListLongMap!2795)

(declare-fun zeroValue!615 () V!6331)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6331)

(declare-fun getCurrentListMap!983 (array!9248 array!9250 (_ BitVec 32) (_ BitVec 32) V!6331 V!6331 (_ BitVec 32) Int) ListLongMap!2795)

(assert (=> b!203426 (= lt!102667 (getCurrentListMap!983 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!102668 () ListLongMap!2795)

(declare-fun lt!102664 () array!9250)

(assert (=> b!203426 (= lt!102668 (getCurrentListMap!983 _keys!825 lt!102664 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!102673 () ListLongMap!2795)

(declare-fun lt!102672 () ListLongMap!2795)

(assert (=> b!203426 (and (= lt!102673 lt!102672) (= lt!102672 lt!102673))))

(declare-fun lt!102670 () ListLongMap!2795)

(declare-fun lt!102666 () tuple2!3868)

(declare-fun +!430 (ListLongMap!2795 tuple2!3868) ListLongMap!2795)

(assert (=> b!203426 (= lt!102672 (+!430 lt!102670 lt!102666))))

(declare-fun v!520 () V!6331)

(assert (=> b!203426 (= lt!102666 (tuple2!3869 k0!843 v!520))))

(declare-datatypes ((Unit!6161 0))(
  ( (Unit!6162) )
))
(declare-fun lt!102663 () Unit!6161)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!96 (array!9248 array!9250 (_ BitVec 32) (_ BitVec 32) V!6331 V!6331 (_ BitVec 32) (_ BitVec 64) V!6331 (_ BitVec 32) Int) Unit!6161)

(assert (=> b!203426 (= lt!102663 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!96 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!354 (array!9248 array!9250 (_ BitVec 32) (_ BitVec 32) V!6331 V!6331 (_ BitVec 32) Int) ListLongMap!2795)

(assert (=> b!203426 (= lt!102673 (getCurrentListMapNoExtraKeys!354 _keys!825 lt!102664 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!203426 (= lt!102664 (array!9251 (store (arr!4375 _values!649) i!601 (ValueCellFull!2163 v!520)) (size!4700 _values!649)))))

(assert (=> b!203426 (= lt!102670 (getCurrentListMapNoExtraKeys!354 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!203427 () Bool)

(declare-fun e!133182 () Bool)

(assert (=> b!203427 (= e!133182 true)))

(declare-fun lt!102665 () ListLongMap!2795)

(declare-fun lt!102662 () ListLongMap!2795)

(assert (=> b!203427 (= lt!102665 (+!430 lt!102662 lt!102666))))

(declare-fun lt!102669 () Unit!6161)

(declare-fun addCommutativeForDiffKeys!142 (ListLongMap!2795 (_ BitVec 64) V!6331 (_ BitVec 64) V!6331) Unit!6161)

(assert (=> b!203427 (= lt!102669 (addCommutativeForDiffKeys!142 lt!102670 k0!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!203429 () Bool)

(declare-fun res!97772 () Bool)

(assert (=> b!203429 (=> (not res!97772) (not e!133183))))

(assert (=> b!203429 (= res!97772 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4699 _keys!825))))))

(declare-fun b!203430 () Bool)

(declare-fun res!97774 () Bool)

(assert (=> b!203430 (=> (not res!97774) (not e!133183))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!203430 (= res!97774 (validKeyInArray!0 k0!843))))

(declare-fun res!97768 () Bool)

(assert (=> start!20510 (=> (not res!97768) (not e!133183))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20510 (= res!97768 (validMask!0 mask!1149))))

(assert (=> start!20510 e!133183))

(declare-fun array_inv!2881 (array!9250) Bool)

(assert (=> start!20510 (and (array_inv!2881 _values!649) e!133181)))

(assert (=> start!20510 true))

(assert (=> start!20510 tp_is_empty!5013))

(declare-fun array_inv!2882 (array!9248) Bool)

(assert (=> start!20510 (array_inv!2882 _keys!825)))

(assert (=> start!20510 tp!18503))

(declare-fun b!203428 () Bool)

(assert (=> b!203428 (= e!133179 e!133182)))

(declare-fun res!97773 () Bool)

(assert (=> b!203428 (=> res!97773 e!133182)))

(assert (=> b!203428 (= res!97773 (= k0!843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!203428 (= lt!102668 lt!102665)))

(declare-fun lt!102671 () tuple2!3868)

(assert (=> b!203428 (= lt!102665 (+!430 lt!102672 lt!102671))))

(assert (=> b!203428 (= lt!102667 lt!102662)))

(assert (=> b!203428 (= lt!102662 (+!430 lt!102670 lt!102671))))

(assert (=> b!203428 (= lt!102668 (+!430 lt!102673 lt!102671))))

(assert (=> b!203428 (= lt!102671 (tuple2!3869 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(assert (= (and start!20510 res!97768) b!203419))

(assert (= (and b!203419 res!97771) b!203421))

(assert (= (and b!203421 res!97766) b!203420))

(assert (= (and b!203420 res!97769) b!203429))

(assert (= (and b!203429 res!97772) b!203430))

(assert (= (and b!203430 res!97774) b!203424))

(assert (= (and b!203424 res!97767) b!203426))

(assert (= (and b!203426 (not res!97770)) b!203428))

(assert (= (and b!203428 (not res!97773)) b!203427))

(assert (= (and b!203425 condMapEmpty!8588) mapIsEmpty!8588))

(assert (= (and b!203425 (not condMapEmpty!8588)) mapNonEmpty!8588))

(get-info :version)

(assert (= (and mapNonEmpty!8588 ((_ is ValueCellFull!2163) mapValue!8588)) b!203422))

(assert (= (and b!203425 ((_ is ValueCellFull!2163) mapDefault!8588)) b!203423))

(assert (= start!20510 b!203425))

(declare-fun m!230869 () Bool)

(assert (=> b!203420 m!230869))

(declare-fun m!230871 () Bool)

(assert (=> b!203428 m!230871))

(declare-fun m!230873 () Bool)

(assert (=> b!203428 m!230873))

(declare-fun m!230875 () Bool)

(assert (=> b!203428 m!230875))

(declare-fun m!230877 () Bool)

(assert (=> b!203421 m!230877))

(declare-fun m!230879 () Bool)

(assert (=> b!203426 m!230879))

(declare-fun m!230881 () Bool)

(assert (=> b!203426 m!230881))

(declare-fun m!230883 () Bool)

(assert (=> b!203426 m!230883))

(declare-fun m!230885 () Bool)

(assert (=> b!203426 m!230885))

(declare-fun m!230887 () Bool)

(assert (=> b!203426 m!230887))

(declare-fun m!230889 () Bool)

(assert (=> b!203426 m!230889))

(declare-fun m!230891 () Bool)

(assert (=> b!203426 m!230891))

(declare-fun m!230893 () Bool)

(assert (=> b!203424 m!230893))

(declare-fun m!230895 () Bool)

(assert (=> mapNonEmpty!8588 m!230895))

(declare-fun m!230897 () Bool)

(assert (=> b!203427 m!230897))

(declare-fun m!230899 () Bool)

(assert (=> b!203427 m!230899))

(declare-fun m!230901 () Bool)

(assert (=> start!20510 m!230901))

(declare-fun m!230903 () Bool)

(assert (=> start!20510 m!230903))

(declare-fun m!230905 () Bool)

(assert (=> start!20510 m!230905))

(declare-fun m!230907 () Bool)

(assert (=> b!203430 m!230907))

(check-sat (not mapNonEmpty!8588) (not b!203426) (not b!203421) (not b!203428) b_and!11921 (not b!203420) (not b!203427) (not start!20510) (not b!203430) tp_is_empty!5013 (not b_next!5157))
(check-sat b_and!11921 (not b_next!5157))
