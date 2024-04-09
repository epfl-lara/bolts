; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20372 () Bool)

(assert start!20372)

(declare-fun b_free!5019 () Bool)

(declare-fun b_next!5019 () Bool)

(assert (=> start!20372 (= b_free!5019 (not b_next!5019))))

(declare-fun tp!18088 () Bool)

(declare-fun b_and!11783 () Bool)

(assert (=> start!20372 (= tp!18088 b_and!11783)))

(declare-fun b!200926 () Bool)

(declare-fun e!131731 () Bool)

(declare-fun e!131730 () Bool)

(assert (=> b!200926 (= e!131731 (not e!131730))))

(declare-fun res!95901 () Bool)

(assert (=> b!200926 (=> res!95901 e!131730)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!200926 (= res!95901 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!6147 0))(
  ( (V!6148 (val!2482 Int)) )
))
(declare-datatypes ((ValueCell!2094 0))(
  ( (ValueCellFull!2094 (v!4448 V!6147)) (EmptyCell!2094) )
))
(declare-datatypes ((array!8978 0))(
  ( (array!8979 (arr!4239 (Array (_ BitVec 32) ValueCell!2094)) (size!4564 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8978)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!6147)

(declare-datatypes ((array!8980 0))(
  ( (array!8981 (arr!4240 (Array (_ BitVec 32) (_ BitVec 64))) (size!4565 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8980)

(declare-fun defaultEntry!657 () Int)

(declare-datatypes ((tuple2!3750 0))(
  ( (tuple2!3751 (_1!1885 (_ BitVec 64)) (_2!1885 V!6147)) )
))
(declare-datatypes ((List!2690 0))(
  ( (Nil!2687) (Cons!2686 (h!3328 tuple2!3750) (t!7629 List!2690)) )
))
(declare-datatypes ((ListLongMap!2677 0))(
  ( (ListLongMap!2678 (toList!1354 List!2690)) )
))
(declare-fun lt!99781 () ListLongMap!2677)

(declare-fun minValue!615 () V!6147)

(declare-fun getCurrentListMap!938 (array!8980 array!8978 (_ BitVec 32) (_ BitVec 32) V!6147 V!6147 (_ BitVec 32) Int) ListLongMap!2677)

(assert (=> b!200926 (= lt!99781 (getCurrentListMap!938 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!99776 () array!8978)

(declare-fun lt!99766 () ListLongMap!2677)

(assert (=> b!200926 (= lt!99766 (getCurrentListMap!938 _keys!825 lt!99776 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!99774 () ListLongMap!2677)

(declare-fun lt!99779 () ListLongMap!2677)

(assert (=> b!200926 (and (= lt!99774 lt!99779) (= lt!99779 lt!99774))))

(declare-fun lt!99773 () ListLongMap!2677)

(declare-fun lt!99768 () tuple2!3750)

(declare-fun +!371 (ListLongMap!2677 tuple2!3750) ListLongMap!2677)

(assert (=> b!200926 (= lt!99779 (+!371 lt!99773 lt!99768))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun v!520 () V!6147)

(assert (=> b!200926 (= lt!99768 (tuple2!3751 k0!843 v!520))))

(declare-datatypes ((Unit!6049 0))(
  ( (Unit!6050) )
))
(declare-fun lt!99771 () Unit!6049)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!51 (array!8980 array!8978 (_ BitVec 32) (_ BitVec 32) V!6147 V!6147 (_ BitVec 32) (_ BitVec 64) V!6147 (_ BitVec 32) Int) Unit!6049)

(assert (=> b!200926 (= lt!99771 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!51 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!309 (array!8980 array!8978 (_ BitVec 32) (_ BitVec 32) V!6147 V!6147 (_ BitVec 32) Int) ListLongMap!2677)

(assert (=> b!200926 (= lt!99774 (getCurrentListMapNoExtraKeys!309 _keys!825 lt!99776 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!200926 (= lt!99776 (array!8979 (store (arr!4239 _values!649) i!601 (ValueCellFull!2094 v!520)) (size!4564 _values!649)))))

(assert (=> b!200926 (= lt!99773 (getCurrentListMapNoExtraKeys!309 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!200927 () Bool)

(declare-fun e!131729 () Bool)

(assert (=> b!200927 (= e!131730 e!131729)))

(declare-fun res!95896 () Bool)

(assert (=> b!200927 (=> res!95896 e!131729)))

(assert (=> b!200927 (= res!95896 (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!99767 () ListLongMap!2677)

(declare-fun lt!99775 () ListLongMap!2677)

(assert (=> b!200927 (= lt!99767 lt!99775)))

(declare-fun lt!99780 () ListLongMap!2677)

(assert (=> b!200927 (= lt!99775 (+!371 lt!99780 lt!99768))))

(declare-fun lt!99769 () Unit!6049)

(declare-fun addCommutativeForDiffKeys!92 (ListLongMap!2677 (_ BitVec 64) V!6147 (_ BitVec 64) V!6147) Unit!6049)

(assert (=> b!200927 (= lt!99769 (addCommutativeForDiffKeys!92 lt!99773 k0!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun lt!99772 () tuple2!3750)

(assert (=> b!200927 (= lt!99766 (+!371 lt!99767 lt!99772))))

(declare-fun lt!99770 () tuple2!3750)

(assert (=> b!200927 (= lt!99767 (+!371 lt!99779 lt!99770))))

(declare-fun lt!99778 () ListLongMap!2677)

(assert (=> b!200927 (= lt!99781 lt!99778)))

(assert (=> b!200927 (= lt!99778 (+!371 lt!99780 lt!99772))))

(assert (=> b!200927 (= lt!99780 (+!371 lt!99773 lt!99770))))

(assert (=> b!200927 (= lt!99766 (+!371 (+!371 lt!99774 lt!99770) lt!99772))))

(assert (=> b!200927 (= lt!99772 (tuple2!3751 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!200927 (= lt!99770 (tuple2!3751 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!200929 () Bool)

(declare-fun e!131733 () Bool)

(declare-fun tp_is_empty!4875 () Bool)

(assert (=> b!200929 (= e!131733 tp_is_empty!4875)))

(declare-fun b!200930 () Bool)

(declare-fun res!95898 () Bool)

(assert (=> b!200930 (=> (not res!95898) (not e!131731))))

(assert (=> b!200930 (= res!95898 (and (= (size!4564 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4565 _keys!825) (size!4564 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!200931 () Bool)

(declare-fun res!95900 () Bool)

(assert (=> b!200931 (=> (not res!95900) (not e!131731))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8980 (_ BitVec 32)) Bool)

(assert (=> b!200931 (= res!95900 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!200932 () Bool)

(declare-fun res!95899 () Bool)

(assert (=> b!200932 (=> (not res!95899) (not e!131731))))

(assert (=> b!200932 (= res!95899 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4565 _keys!825))))))

(declare-fun mapNonEmpty!8381 () Bool)

(declare-fun mapRes!8381 () Bool)

(declare-fun tp!18089 () Bool)

(assert (=> mapNonEmpty!8381 (= mapRes!8381 (and tp!18089 e!131733))))

(declare-fun mapRest!8381 () (Array (_ BitVec 32) ValueCell!2094))

(declare-fun mapValue!8381 () ValueCell!2094)

(declare-fun mapKey!8381 () (_ BitVec 32))

(assert (=> mapNonEmpty!8381 (= (arr!4239 _values!649) (store mapRest!8381 mapKey!8381 mapValue!8381))))

(declare-fun b!200933 () Bool)

(declare-fun res!95902 () Bool)

(assert (=> b!200933 (=> (not res!95902) (not e!131731))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!200933 (= res!95902 (validKeyInArray!0 k0!843))))

(declare-fun b!200934 () Bool)

(declare-fun res!95895 () Bool)

(assert (=> b!200934 (=> (not res!95895) (not e!131731))))

(assert (=> b!200934 (= res!95895 (= (select (arr!4240 _keys!825) i!601) k0!843))))

(declare-fun b!200935 () Bool)

(declare-fun e!131732 () Bool)

(assert (=> b!200935 (= e!131732 tp_is_empty!4875)))

(declare-fun mapIsEmpty!8381 () Bool)

(assert (=> mapIsEmpty!8381 mapRes!8381))

(declare-fun b!200936 () Bool)

(declare-fun e!131734 () Bool)

(assert (=> b!200936 (= e!131734 (and e!131732 mapRes!8381))))

(declare-fun condMapEmpty!8381 () Bool)

(declare-fun mapDefault!8381 () ValueCell!2094)

(assert (=> b!200936 (= condMapEmpty!8381 (= (arr!4239 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2094)) mapDefault!8381)))))

(declare-fun b!200937 () Bool)

(assert (=> b!200937 (= e!131729 true)))

(assert (=> b!200937 (= (+!371 lt!99775 lt!99772) (+!371 lt!99778 lt!99768))))

(declare-fun lt!99777 () Unit!6049)

(assert (=> b!200937 (= lt!99777 (addCommutativeForDiffKeys!92 lt!99780 k0!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!200928 () Bool)

(declare-fun res!95894 () Bool)

(assert (=> b!200928 (=> (not res!95894) (not e!131731))))

(declare-datatypes ((List!2691 0))(
  ( (Nil!2688) (Cons!2687 (h!3329 (_ BitVec 64)) (t!7630 List!2691)) )
))
(declare-fun arrayNoDuplicates!0 (array!8980 (_ BitVec 32) List!2691) Bool)

(assert (=> b!200928 (= res!95894 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2688))))

(declare-fun res!95897 () Bool)

(assert (=> start!20372 (=> (not res!95897) (not e!131731))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20372 (= res!95897 (validMask!0 mask!1149))))

(assert (=> start!20372 e!131731))

(declare-fun array_inv!2779 (array!8978) Bool)

(assert (=> start!20372 (and (array_inv!2779 _values!649) e!131734)))

(assert (=> start!20372 true))

(assert (=> start!20372 tp_is_empty!4875))

(declare-fun array_inv!2780 (array!8980) Bool)

(assert (=> start!20372 (array_inv!2780 _keys!825)))

(assert (=> start!20372 tp!18088))

(assert (= (and start!20372 res!95897) b!200930))

(assert (= (and b!200930 res!95898) b!200931))

(assert (= (and b!200931 res!95900) b!200928))

(assert (= (and b!200928 res!95894) b!200932))

(assert (= (and b!200932 res!95899) b!200933))

(assert (= (and b!200933 res!95902) b!200934))

(assert (= (and b!200934 res!95895) b!200926))

(assert (= (and b!200926 (not res!95901)) b!200927))

(assert (= (and b!200927 (not res!95896)) b!200937))

(assert (= (and b!200936 condMapEmpty!8381) mapIsEmpty!8381))

(assert (= (and b!200936 (not condMapEmpty!8381)) mapNonEmpty!8381))

(get-info :version)

(assert (= (and mapNonEmpty!8381 ((_ is ValueCellFull!2094) mapValue!8381)) b!200929))

(assert (= (and b!200936 ((_ is ValueCellFull!2094) mapDefault!8381)) b!200935))

(assert (= start!20372 b!200936))

(declare-fun m!227665 () Bool)

(assert (=> b!200926 m!227665))

(declare-fun m!227667 () Bool)

(assert (=> b!200926 m!227667))

(declare-fun m!227669 () Bool)

(assert (=> b!200926 m!227669))

(declare-fun m!227671 () Bool)

(assert (=> b!200926 m!227671))

(declare-fun m!227673 () Bool)

(assert (=> b!200926 m!227673))

(declare-fun m!227675 () Bool)

(assert (=> b!200926 m!227675))

(declare-fun m!227677 () Bool)

(assert (=> b!200926 m!227677))

(declare-fun m!227679 () Bool)

(assert (=> b!200931 m!227679))

(declare-fun m!227681 () Bool)

(assert (=> b!200928 m!227681))

(declare-fun m!227683 () Bool)

(assert (=> b!200927 m!227683))

(declare-fun m!227685 () Bool)

(assert (=> b!200927 m!227685))

(declare-fun m!227687 () Bool)

(assert (=> b!200927 m!227687))

(declare-fun m!227689 () Bool)

(assert (=> b!200927 m!227689))

(declare-fun m!227691 () Bool)

(assert (=> b!200927 m!227691))

(declare-fun m!227693 () Bool)

(assert (=> b!200927 m!227693))

(declare-fun m!227695 () Bool)

(assert (=> b!200927 m!227695))

(declare-fun m!227697 () Bool)

(assert (=> b!200927 m!227697))

(assert (=> b!200927 m!227695))

(declare-fun m!227699 () Bool)

(assert (=> b!200937 m!227699))

(declare-fun m!227701 () Bool)

(assert (=> b!200937 m!227701))

(declare-fun m!227703 () Bool)

(assert (=> b!200937 m!227703))

(declare-fun m!227705 () Bool)

(assert (=> b!200933 m!227705))

(declare-fun m!227707 () Bool)

(assert (=> start!20372 m!227707))

(declare-fun m!227709 () Bool)

(assert (=> start!20372 m!227709))

(declare-fun m!227711 () Bool)

(assert (=> start!20372 m!227711))

(declare-fun m!227713 () Bool)

(assert (=> b!200934 m!227713))

(declare-fun m!227715 () Bool)

(assert (=> mapNonEmpty!8381 m!227715))

(check-sat (not b!200927) (not mapNonEmpty!8381) tp_is_empty!4875 (not b!200931) (not b!200928) (not b!200937) (not start!20372) (not b_next!5019) b_and!11783 (not b!200926) (not b!200933))
(check-sat b_and!11783 (not b_next!5019))
