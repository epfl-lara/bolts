; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40786 () Bool)

(assert start!40786)

(declare-fun b_free!10767 () Bool)

(declare-fun b_next!10767 () Bool)

(assert (=> start!40786 (= b_free!10767 (not b_next!10767))))

(declare-fun tp!38124 () Bool)

(declare-fun b_and!18839 () Bool)

(assert (=> start!40786 (= tp!38124 b_and!18839)))

(declare-fun b!451804 () Bool)

(declare-fun res!269129 () Bool)

(declare-fun e!264601 () Bool)

(assert (=> b!451804 (=> (not res!269129) (not e!264601))))

(declare-datatypes ((array!27979 0))(
  ( (array!27980 (arr!13431 (Array (_ BitVec 32) (_ BitVec 64))) (size!13783 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27979)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!451804 (= res!269129 (or (= (select (arr!13431 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13431 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!451805 () Bool)

(declare-fun e!264606 () Bool)

(declare-datatypes ((V!17245 0))(
  ( (V!17246 (val!6097 Int)) )
))
(declare-datatypes ((tuple2!7966 0))(
  ( (tuple2!7967 (_1!3993 (_ BitVec 64)) (_2!3993 V!17245)) )
))
(declare-datatypes ((List!8071 0))(
  ( (Nil!8068) (Cons!8067 (h!8923 tuple2!7966) (t!13869 List!8071)) )
))
(declare-datatypes ((ListLongMap!6893 0))(
  ( (ListLongMap!6894 (toList!3462 List!8071)) )
))
(declare-fun call!29912 () ListLongMap!6893)

(declare-fun call!29911 () ListLongMap!6893)

(assert (=> b!451805 (= e!264606 (= call!29912 call!29911))))

(declare-fun b!451806 () Bool)

(declare-fun res!269132 () Bool)

(assert (=> b!451806 (=> (not res!269132) (not e!264601))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!451806 (= res!269132 (validKeyInArray!0 k0!794))))

(declare-fun b!451807 () Bool)

(declare-fun res!269137 () Bool)

(assert (=> b!451807 (=> (not res!269137) (not e!264601))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!451807 (= res!269137 (validMask!0 mask!1025))))

(declare-fun b!451808 () Bool)

(declare-fun res!269138 () Bool)

(declare-fun e!264604 () Bool)

(assert (=> b!451808 (=> (not res!269138) (not e!264604))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!451808 (= res!269138 (bvsle from!863 i!563))))

(declare-fun b!451809 () Bool)

(declare-fun res!269126 () Bool)

(assert (=> b!451809 (=> (not res!269126) (not e!264604))))

(declare-fun lt!205034 () array!27979)

(declare-datatypes ((List!8072 0))(
  ( (Nil!8069) (Cons!8068 (h!8924 (_ BitVec 64)) (t!13870 List!8072)) )
))
(declare-fun arrayNoDuplicates!0 (array!27979 (_ BitVec 32) List!8072) Bool)

(assert (=> b!451809 (= res!269126 (arrayNoDuplicates!0 lt!205034 #b00000000000000000000000000000000 Nil!8069))))

(declare-fun res!269131 () Bool)

(assert (=> start!40786 (=> (not res!269131) (not e!264601))))

(assert (=> start!40786 (= res!269131 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13783 _keys!709))))))

(assert (=> start!40786 e!264601))

(declare-fun tp_is_empty!12105 () Bool)

(assert (=> start!40786 tp_is_empty!12105))

(assert (=> start!40786 tp!38124))

(assert (=> start!40786 true))

(declare-datatypes ((ValueCell!5709 0))(
  ( (ValueCellFull!5709 (v!8352 V!17245)) (EmptyCell!5709) )
))
(declare-datatypes ((array!27981 0))(
  ( (array!27982 (arr!13432 (Array (_ BitVec 32) ValueCell!5709)) (size!13784 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27981)

(declare-fun e!264607 () Bool)

(declare-fun array_inv!9724 (array!27981) Bool)

(assert (=> start!40786 (and (array_inv!9724 _values!549) e!264607)))

(declare-fun array_inv!9725 (array!27979) Bool)

(assert (=> start!40786 (array_inv!9725 _keys!709)))

(declare-fun b!451810 () Bool)

(declare-fun res!269128 () Bool)

(assert (=> b!451810 (=> (not res!269128) (not e!264601))))

(declare-fun arrayContainsKey!0 (array!27979 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!451810 (= res!269128 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!451811 () Bool)

(declare-fun res!269135 () Bool)

(assert (=> b!451811 (=> (not res!269135) (not e!264601))))

(assert (=> b!451811 (= res!269135 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13783 _keys!709))))))

(declare-fun b!451812 () Bool)

(declare-fun e!264602 () Bool)

(declare-fun mapRes!19794 () Bool)

(assert (=> b!451812 (= e!264607 (and e!264602 mapRes!19794))))

(declare-fun condMapEmpty!19794 () Bool)

(declare-fun mapDefault!19794 () ValueCell!5709)

(assert (=> b!451812 (= condMapEmpty!19794 (= (arr!13432 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5709)) mapDefault!19794)))))

(declare-fun b!451813 () Bool)

(declare-fun e!264609 () Bool)

(declare-fun e!264608 () Bool)

(assert (=> b!451813 (= e!264609 (not e!264608))))

(declare-fun res!269125 () Bool)

(assert (=> b!451813 (=> res!269125 e!264608)))

(assert (=> b!451813 (= res!269125 (validKeyInArray!0 (select (arr!13431 _keys!709) from!863)))))

(assert (=> b!451813 e!264606))

(declare-fun c!56024 () Bool)

(assert (=> b!451813 (= c!56024 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun minValue!515 () V!17245)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!17245)

(declare-datatypes ((Unit!13163 0))(
  ( (Unit!13164) )
))
(declare-fun lt!205032 () Unit!13163)

(declare-fun v!412 () V!17245)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!700 (array!27979 array!27981 (_ BitVec 32) (_ BitVec 32) V!17245 V!17245 (_ BitVec 32) (_ BitVec 64) V!17245 (_ BitVec 32) Int) Unit!13163)

(assert (=> b!451813 (= lt!205032 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!700 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!451814 () Bool)

(declare-fun e!264603 () Bool)

(assert (=> b!451814 (= e!264603 tp_is_empty!12105)))

(declare-fun bm!29908 () Bool)

(declare-fun lt!205031 () array!27981)

(declare-fun getCurrentListMapNoExtraKeys!1639 (array!27979 array!27981 (_ BitVec 32) (_ BitVec 32) V!17245 V!17245 (_ BitVec 32) Int) ListLongMap!6893)

(assert (=> bm!29908 (= call!29911 (getCurrentListMapNoExtraKeys!1639 (ite c!56024 lt!205034 _keys!709) (ite c!56024 lt!205031 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!451815 () Bool)

(declare-fun res!269133 () Bool)

(assert (=> b!451815 (=> (not res!269133) (not e!264601))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27979 (_ BitVec 32)) Bool)

(assert (=> b!451815 (= res!269133 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!19794 () Bool)

(assert (=> mapIsEmpty!19794 mapRes!19794))

(declare-fun b!451816 () Bool)

(assert (=> b!451816 (= e!264601 e!264604)))

(declare-fun res!269127 () Bool)

(assert (=> b!451816 (=> (not res!269127) (not e!264604))))

(assert (=> b!451816 (= res!269127 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!205034 mask!1025))))

(assert (=> b!451816 (= lt!205034 (array!27980 (store (arr!13431 _keys!709) i!563 k0!794) (size!13783 _keys!709)))))

(declare-fun b!451817 () Bool)

(declare-fun res!269130 () Bool)

(assert (=> b!451817 (=> (not res!269130) (not e!264601))))

(assert (=> b!451817 (= res!269130 (and (= (size!13784 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13783 _keys!709) (size!13784 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!451818 () Bool)

(assert (=> b!451818 (= e!264608 (bvslt from!863 (size!13784 _values!549)))))

(declare-fun lt!205033 () ListLongMap!6893)

(declare-fun +!1529 (ListLongMap!6893 tuple2!7966) ListLongMap!6893)

(declare-fun get!6626 (ValueCell!5709 V!17245) V!17245)

(declare-fun dynLambda!853 (Int (_ BitVec 64)) V!17245)

(assert (=> b!451818 (= lt!205033 (+!1529 (getCurrentListMapNoExtraKeys!1639 lt!205034 lt!205031 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7967 (select (arr!13431 lt!205034) from!863) (get!6626 (select (arr!13432 lt!205031) from!863) (dynLambda!853 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!451819 () Bool)

(assert (=> b!451819 (= e!264606 (= call!29911 (+!1529 call!29912 (tuple2!7967 k0!794 v!412))))))

(declare-fun bm!29909 () Bool)

(assert (=> bm!29909 (= call!29912 (getCurrentListMapNoExtraKeys!1639 (ite c!56024 _keys!709 lt!205034) (ite c!56024 _values!549 lt!205031) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!451820 () Bool)

(declare-fun res!269134 () Bool)

(assert (=> b!451820 (=> (not res!269134) (not e!264601))))

(assert (=> b!451820 (= res!269134 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8069))))

(declare-fun mapNonEmpty!19794 () Bool)

(declare-fun tp!38123 () Bool)

(assert (=> mapNonEmpty!19794 (= mapRes!19794 (and tp!38123 e!264603))))

(declare-fun mapRest!19794 () (Array (_ BitVec 32) ValueCell!5709))

(declare-fun mapKey!19794 () (_ BitVec 32))

(declare-fun mapValue!19794 () ValueCell!5709)

(assert (=> mapNonEmpty!19794 (= (arr!13432 _values!549) (store mapRest!19794 mapKey!19794 mapValue!19794))))

(declare-fun b!451821 () Bool)

(assert (=> b!451821 (= e!264602 tp_is_empty!12105)))

(declare-fun b!451822 () Bool)

(assert (=> b!451822 (= e!264604 e!264609)))

(declare-fun res!269136 () Bool)

(assert (=> b!451822 (=> (not res!269136) (not e!264609))))

(assert (=> b!451822 (= res!269136 (= from!863 i!563))))

(assert (=> b!451822 (= lt!205033 (getCurrentListMapNoExtraKeys!1639 lt!205034 lt!205031 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!451822 (= lt!205031 (array!27982 (store (arr!13432 _values!549) i!563 (ValueCellFull!5709 v!412)) (size!13784 _values!549)))))

(declare-fun lt!205035 () ListLongMap!6893)

(assert (=> b!451822 (= lt!205035 (getCurrentListMapNoExtraKeys!1639 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (= (and start!40786 res!269131) b!451807))

(assert (= (and b!451807 res!269137) b!451817))

(assert (= (and b!451817 res!269130) b!451815))

(assert (= (and b!451815 res!269133) b!451820))

(assert (= (and b!451820 res!269134) b!451811))

(assert (= (and b!451811 res!269135) b!451806))

(assert (= (and b!451806 res!269132) b!451804))

(assert (= (and b!451804 res!269129) b!451810))

(assert (= (and b!451810 res!269128) b!451816))

(assert (= (and b!451816 res!269127) b!451809))

(assert (= (and b!451809 res!269126) b!451808))

(assert (= (and b!451808 res!269138) b!451822))

(assert (= (and b!451822 res!269136) b!451813))

(assert (= (and b!451813 c!56024) b!451819))

(assert (= (and b!451813 (not c!56024)) b!451805))

(assert (= (or b!451819 b!451805) bm!29908))

(assert (= (or b!451819 b!451805) bm!29909))

(assert (= (and b!451813 (not res!269125)) b!451818))

(assert (= (and b!451812 condMapEmpty!19794) mapIsEmpty!19794))

(assert (= (and b!451812 (not condMapEmpty!19794)) mapNonEmpty!19794))

(get-info :version)

(assert (= (and mapNonEmpty!19794 ((_ is ValueCellFull!5709) mapValue!19794)) b!451814))

(assert (= (and b!451812 ((_ is ValueCellFull!5709) mapDefault!19794)) b!451821))

(assert (= start!40786 b!451812))

(declare-fun b_lambda!9575 () Bool)

(assert (=> (not b_lambda!9575) (not b!451818)))

(declare-fun t!13868 () Bool)

(declare-fun tb!3755 () Bool)

(assert (=> (and start!40786 (= defaultEntry!557 defaultEntry!557) t!13868) tb!3755))

(declare-fun result!7039 () Bool)

(assert (=> tb!3755 (= result!7039 tp_is_empty!12105)))

(assert (=> b!451818 t!13868))

(declare-fun b_and!18841 () Bool)

(assert (= b_and!18839 (and (=> t!13868 result!7039) b_and!18841)))

(declare-fun m!435565 () Bool)

(assert (=> b!451820 m!435565))

(declare-fun m!435567 () Bool)

(assert (=> b!451815 m!435567))

(declare-fun m!435569 () Bool)

(assert (=> b!451813 m!435569))

(assert (=> b!451813 m!435569))

(declare-fun m!435571 () Bool)

(assert (=> b!451813 m!435571))

(declare-fun m!435573 () Bool)

(assert (=> b!451813 m!435573))

(declare-fun m!435575 () Bool)

(assert (=> bm!29909 m!435575))

(declare-fun m!435577 () Bool)

(assert (=> b!451822 m!435577))

(declare-fun m!435579 () Bool)

(assert (=> b!451822 m!435579))

(declare-fun m!435581 () Bool)

(assert (=> b!451822 m!435581))

(declare-fun m!435583 () Bool)

(assert (=> b!451816 m!435583))

(declare-fun m!435585 () Bool)

(assert (=> b!451816 m!435585))

(declare-fun m!435587 () Bool)

(assert (=> b!451804 m!435587))

(declare-fun m!435589 () Bool)

(assert (=> mapNonEmpty!19794 m!435589))

(declare-fun m!435591 () Bool)

(assert (=> b!451819 m!435591))

(declare-fun m!435593 () Bool)

(assert (=> bm!29908 m!435593))

(declare-fun m!435595 () Bool)

(assert (=> b!451809 m!435595))

(declare-fun m!435597 () Bool)

(assert (=> b!451807 m!435597))

(declare-fun m!435599 () Bool)

(assert (=> b!451806 m!435599))

(declare-fun m!435601 () Bool)

(assert (=> b!451818 m!435601))

(declare-fun m!435603 () Bool)

(assert (=> b!451818 m!435603))

(declare-fun m!435605 () Bool)

(assert (=> b!451818 m!435605))

(assert (=> b!451818 m!435603))

(declare-fun m!435607 () Bool)

(assert (=> b!451818 m!435607))

(assert (=> b!451818 m!435601))

(declare-fun m!435609 () Bool)

(assert (=> b!451818 m!435609))

(declare-fun m!435611 () Bool)

(assert (=> b!451818 m!435611))

(assert (=> b!451818 m!435609))

(declare-fun m!435613 () Bool)

(assert (=> start!40786 m!435613))

(declare-fun m!435615 () Bool)

(assert (=> start!40786 m!435615))

(declare-fun m!435617 () Bool)

(assert (=> b!451810 m!435617))

(check-sat (not b!451807) (not b!451806) (not bm!29909) (not bm!29908) (not b!451809) (not b!451819) (not b_lambda!9575) (not b!451813) (not b!451816) (not b!451815) (not start!40786) (not b!451820) tp_is_empty!12105 (not b!451810) (not b_next!10767) (not mapNonEmpty!19794) (not b!451818) b_and!18841 (not b!451822))
(check-sat b_and!18841 (not b_next!10767))
