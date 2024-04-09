; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20708 () Bool)

(assert start!20708)

(declare-fun b_free!5355 () Bool)

(declare-fun b_next!5355 () Bool)

(assert (=> start!20708 (= b_free!5355 (not b_next!5355))))

(declare-fun tp!19097 () Bool)

(declare-fun b_and!12119 () Bool)

(assert (=> start!20708 (= tp!19097 b_and!12119)))

(declare-fun b!206892 () Bool)

(declare-fun res!100349 () Bool)

(declare-fun e!135158 () Bool)

(assert (=> b!206892 (=> (not res!100349) (not e!135158))))

(declare-datatypes ((array!9630 0))(
  ( (array!9631 (arr!4565 (Array (_ BitVec 32) (_ BitVec 64))) (size!4890 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9630)

(declare-datatypes ((List!2934 0))(
  ( (Nil!2931) (Cons!2930 (h!3572 (_ BitVec 64)) (t!7873 List!2934)) )
))
(declare-fun arrayNoDuplicates!0 (array!9630 (_ BitVec 32) List!2934) Bool)

(assert (=> b!206892 (= res!100349 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2931))))

(declare-fun b!206893 () Bool)

(declare-fun res!100350 () Bool)

(assert (=> b!206893 (=> (not res!100350) (not e!135158))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6595 0))(
  ( (V!6596 (val!2650 Int)) )
))
(declare-datatypes ((ValueCell!2262 0))(
  ( (ValueCellFull!2262 (v!4616 V!6595)) (EmptyCell!2262) )
))
(declare-datatypes ((array!9632 0))(
  ( (array!9633 (arr!4566 (Array (_ BitVec 32) ValueCell!2262)) (size!4891 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9632)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!206893 (= res!100350 (and (= (size!4891 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4890 _keys!825) (size!4891 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!8885 () Bool)

(declare-fun mapRes!8885 () Bool)

(assert (=> mapIsEmpty!8885 mapRes!8885))

(declare-fun b!206894 () Bool)

(assert (=> b!206894 (= e!135158 (not true))))

(declare-datatypes ((tuple2!4020 0))(
  ( (tuple2!4021 (_1!2020 (_ BitVec 64)) (_2!2020 V!6595)) )
))
(declare-datatypes ((List!2935 0))(
  ( (Nil!2932) (Cons!2931 (h!3573 tuple2!4020) (t!7874 List!2935)) )
))
(declare-datatypes ((ListLongMap!2947 0))(
  ( (ListLongMap!2948 (toList!1489 List!2935)) )
))
(declare-fun lt!105941 () ListLongMap!2947)

(declare-fun zeroValue!615 () V!6595)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6595)

(declare-fun getCurrentListMap!1051 (array!9630 array!9632 (_ BitVec 32) (_ BitVec 32) V!6595 V!6595 (_ BitVec 32) Int) ListLongMap!2947)

(assert (=> b!206894 (= lt!105941 (getCurrentListMap!1051 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105945 () array!9632)

(declare-fun lt!105946 () ListLongMap!2947)

(assert (=> b!206894 (= lt!105946 (getCurrentListMap!1051 _keys!825 lt!105945 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105942 () ListLongMap!2947)

(declare-fun lt!105943 () ListLongMap!2947)

(assert (=> b!206894 (and (= lt!105942 lt!105943) (= lt!105943 lt!105942))))

(declare-fun lt!105944 () ListLongMap!2947)

(declare-fun v!520 () V!6595)

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun +!506 (ListLongMap!2947 tuple2!4020) ListLongMap!2947)

(assert (=> b!206894 (= lt!105943 (+!506 lt!105944 (tuple2!4021 k0!843 v!520)))))

(declare-datatypes ((Unit!6307 0))(
  ( (Unit!6308) )
))
(declare-fun lt!105940 () Unit!6307)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!164 (array!9630 array!9632 (_ BitVec 32) (_ BitVec 32) V!6595 V!6595 (_ BitVec 32) (_ BitVec 64) V!6595 (_ BitVec 32) Int) Unit!6307)

(assert (=> b!206894 (= lt!105940 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!164 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!422 (array!9630 array!9632 (_ BitVec 32) (_ BitVec 32) V!6595 V!6595 (_ BitVec 32) Int) ListLongMap!2947)

(assert (=> b!206894 (= lt!105942 (getCurrentListMapNoExtraKeys!422 _keys!825 lt!105945 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!206894 (= lt!105945 (array!9633 (store (arr!4566 _values!649) i!601 (ValueCellFull!2262 v!520)) (size!4891 _values!649)))))

(assert (=> b!206894 (= lt!105944 (getCurrentListMapNoExtraKeys!422 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!206895 () Bool)

(declare-fun res!100351 () Bool)

(assert (=> b!206895 (=> (not res!100351) (not e!135158))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!206895 (= res!100351 (validKeyInArray!0 k0!843))))

(declare-fun b!206896 () Bool)

(declare-fun e!135156 () Bool)

(declare-fun e!135157 () Bool)

(assert (=> b!206896 (= e!135156 (and e!135157 mapRes!8885))))

(declare-fun condMapEmpty!8885 () Bool)

(declare-fun mapDefault!8885 () ValueCell!2262)

(assert (=> b!206896 (= condMapEmpty!8885 (= (arr!4566 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2262)) mapDefault!8885)))))

(declare-fun mapNonEmpty!8885 () Bool)

(declare-fun tp!19096 () Bool)

(declare-fun e!135160 () Bool)

(assert (=> mapNonEmpty!8885 (= mapRes!8885 (and tp!19096 e!135160))))

(declare-fun mapValue!8885 () ValueCell!2262)

(declare-fun mapRest!8885 () (Array (_ BitVec 32) ValueCell!2262))

(declare-fun mapKey!8885 () (_ BitVec 32))

(assert (=> mapNonEmpty!8885 (= (arr!4566 _values!649) (store mapRest!8885 mapKey!8885 mapValue!8885))))

(declare-fun b!206897 () Bool)

(declare-fun tp_is_empty!5211 () Bool)

(assert (=> b!206897 (= e!135157 tp_is_empty!5211)))

(declare-fun b!206898 () Bool)

(assert (=> b!206898 (= e!135160 tp_is_empty!5211)))

(declare-fun b!206899 () Bool)

(declare-fun res!100352 () Bool)

(assert (=> b!206899 (=> (not res!100352) (not e!135158))))

(assert (=> b!206899 (= res!100352 (= (select (arr!4565 _keys!825) i!601) k0!843))))

(declare-fun res!100354 () Bool)

(assert (=> start!20708 (=> (not res!100354) (not e!135158))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20708 (= res!100354 (validMask!0 mask!1149))))

(assert (=> start!20708 e!135158))

(declare-fun array_inv!3011 (array!9632) Bool)

(assert (=> start!20708 (and (array_inv!3011 _values!649) e!135156)))

(assert (=> start!20708 true))

(assert (=> start!20708 tp_is_empty!5211))

(declare-fun array_inv!3012 (array!9630) Bool)

(assert (=> start!20708 (array_inv!3012 _keys!825)))

(assert (=> start!20708 tp!19097))

(declare-fun b!206900 () Bool)

(declare-fun res!100348 () Bool)

(assert (=> b!206900 (=> (not res!100348) (not e!135158))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9630 (_ BitVec 32)) Bool)

(assert (=> b!206900 (= res!100348 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!206901 () Bool)

(declare-fun res!100353 () Bool)

(assert (=> b!206901 (=> (not res!100353) (not e!135158))))

(assert (=> b!206901 (= res!100353 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4890 _keys!825))))))

(assert (= (and start!20708 res!100354) b!206893))

(assert (= (and b!206893 res!100350) b!206900))

(assert (= (and b!206900 res!100348) b!206892))

(assert (= (and b!206892 res!100349) b!206901))

(assert (= (and b!206901 res!100353) b!206895))

(assert (= (and b!206895 res!100351) b!206899))

(assert (= (and b!206899 res!100352) b!206894))

(assert (= (and b!206896 condMapEmpty!8885) mapIsEmpty!8885))

(assert (= (and b!206896 (not condMapEmpty!8885)) mapNonEmpty!8885))

(get-info :version)

(assert (= (and mapNonEmpty!8885 ((_ is ValueCellFull!2262) mapValue!8885)) b!206898))

(assert (= (and b!206896 ((_ is ValueCellFull!2262) mapDefault!8885)) b!206897))

(assert (= start!20708 b!206896))

(declare-fun m!234657 () Bool)

(assert (=> b!206895 m!234657))

(declare-fun m!234659 () Bool)

(assert (=> b!206892 m!234659))

(declare-fun m!234661 () Bool)

(assert (=> start!20708 m!234661))

(declare-fun m!234663 () Bool)

(assert (=> start!20708 m!234663))

(declare-fun m!234665 () Bool)

(assert (=> start!20708 m!234665))

(declare-fun m!234667 () Bool)

(assert (=> mapNonEmpty!8885 m!234667))

(declare-fun m!234669 () Bool)

(assert (=> b!206900 m!234669))

(declare-fun m!234671 () Bool)

(assert (=> b!206899 m!234671))

(declare-fun m!234673 () Bool)

(assert (=> b!206894 m!234673))

(declare-fun m!234675 () Bool)

(assert (=> b!206894 m!234675))

(declare-fun m!234677 () Bool)

(assert (=> b!206894 m!234677))

(declare-fun m!234679 () Bool)

(assert (=> b!206894 m!234679))

(declare-fun m!234681 () Bool)

(assert (=> b!206894 m!234681))

(declare-fun m!234683 () Bool)

(assert (=> b!206894 m!234683))

(declare-fun m!234685 () Bool)

(assert (=> b!206894 m!234685))

(check-sat (not b!206892) (not b!206895) (not start!20708) (not b!206894) b_and!12119 (not mapNonEmpty!8885) (not b!206900) tp_is_empty!5211 (not b_next!5355))
(check-sat b_and!12119 (not b_next!5355))
