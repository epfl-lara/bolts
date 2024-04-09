; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20564 () Bool)

(assert start!20564)

(declare-fun b_free!5211 () Bool)

(declare-fun b_next!5211 () Bool)

(assert (=> start!20564 (= b_free!5211 (not b_next!5211))))

(declare-fun tp!18665 () Bool)

(declare-fun b_and!11975 () Bool)

(assert (=> start!20564 (= tp!18665 b_and!11975)))

(declare-fun mapNonEmpty!8669 () Bool)

(declare-fun mapRes!8669 () Bool)

(declare-fun tp!18664 () Bool)

(declare-fun e!133744 () Bool)

(assert (=> mapNonEmpty!8669 (= mapRes!8669 (and tp!18664 e!133744))))

(declare-fun mapKey!8669 () (_ BitVec 32))

(declare-datatypes ((V!6403 0))(
  ( (V!6404 (val!2578 Int)) )
))
(declare-datatypes ((ValueCell!2190 0))(
  ( (ValueCellFull!2190 (v!4544 V!6403)) (EmptyCell!2190) )
))
(declare-fun mapValue!8669 () ValueCell!2190)

(declare-datatypes ((array!9350 0))(
  ( (array!9351 (arr!4425 (Array (_ BitVec 32) ValueCell!2190)) (size!4750 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9350)

(declare-fun mapRest!8669 () (Array (_ BitVec 32) ValueCell!2190))

(assert (=> mapNonEmpty!8669 (= (arr!4425 _values!649) (store mapRest!8669 mapKey!8669 mapValue!8669))))

(declare-fun b!204396 () Bool)

(declare-fun res!98504 () Bool)

(declare-fun e!133745 () Bool)

(assert (=> b!204396 (=> (not res!98504) (not e!133745))))

(declare-datatypes ((array!9352 0))(
  ( (array!9353 (arr!4426 (Array (_ BitVec 32) (_ BitVec 64))) (size!4751 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9352)

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!204396 (= res!98504 (= (select (arr!4426 _keys!825) i!601) k0!843))))

(declare-fun b!204397 () Bool)

(declare-fun res!98505 () Bool)

(assert (=> b!204397 (=> (not res!98505) (not e!133745))))

(declare-datatypes ((List!2829 0))(
  ( (Nil!2826) (Cons!2825 (h!3467 (_ BitVec 64)) (t!7768 List!2829)) )
))
(declare-fun arrayNoDuplicates!0 (array!9352 (_ BitVec 32) List!2829) Bool)

(assert (=> b!204397 (= res!98505 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2826))))

(declare-fun b!204398 () Bool)

(declare-fun res!98506 () Bool)

(declare-fun e!133750 () Bool)

(assert (=> b!204398 (=> (not res!98506) (not e!133750))))

(declare-datatypes ((tuple2!3906 0))(
  ( (tuple2!3907 (_1!1963 (_ BitVec 64)) (_2!1963 V!6403)) )
))
(declare-datatypes ((List!2830 0))(
  ( (Nil!2827) (Cons!2826 (h!3468 tuple2!3906) (t!7769 List!2830)) )
))
(declare-datatypes ((ListLongMap!2833 0))(
  ( (ListLongMap!2834 (toList!1432 List!2830)) )
))
(declare-fun lt!103614 () ListLongMap!2833)

(declare-fun lt!103617 () tuple2!3906)

(declare-fun lt!103621 () ListLongMap!2833)

(declare-fun +!449 (ListLongMap!2833 tuple2!3906) ListLongMap!2833)

(assert (=> b!204398 (= res!98506 (= lt!103614 (+!449 lt!103621 lt!103617)))))

(declare-fun b!204399 () Bool)

(declare-fun e!133748 () Bool)

(declare-fun tp_is_empty!5067 () Bool)

(assert (=> b!204399 (= e!133748 tp_is_empty!5067)))

(declare-fun mapIsEmpty!8669 () Bool)

(assert (=> mapIsEmpty!8669 mapRes!8669))

(declare-fun b!204401 () Bool)

(declare-fun e!133747 () Bool)

(assert (=> b!204401 (= e!133747 (and e!133748 mapRes!8669))))

(declare-fun condMapEmpty!8669 () Bool)

(declare-fun mapDefault!8669 () ValueCell!2190)

(assert (=> b!204401 (= condMapEmpty!8669 (= (arr!4425 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2190)) mapDefault!8669)))))

(declare-fun b!204402 () Bool)

(declare-fun res!98508 () Bool)

(assert (=> b!204402 (=> (not res!98508) (not e!133745))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!204402 (= res!98508 (validKeyInArray!0 k0!843))))

(declare-fun b!204403 () Bool)

(declare-fun res!98509 () Bool)

(assert (=> b!204403 (=> (not res!98509) (not e!133745))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!204403 (= res!98509 (and (= (size!4750 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4751 _keys!825) (size!4750 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!204404 () Bool)

(declare-fun e!133749 () Bool)

(assert (=> b!204404 (= e!133749 true)))

(assert (=> b!204404 e!133750))

(declare-fun res!98500 () Bool)

(assert (=> b!204404 (=> (not res!98500) (not e!133750))))

(declare-fun lt!103620 () ListLongMap!2833)

(assert (=> b!204404 (= res!98500 (= lt!103614 (+!449 lt!103620 lt!103617)))))

(declare-fun minValue!615 () V!6403)

(assert (=> b!204404 (= lt!103617 (tuple2!3907 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!204405 () Bool)

(assert (=> b!204405 (= e!133745 (not e!133749))))

(declare-fun res!98501 () Bool)

(assert (=> b!204405 (=> res!98501 e!133749)))

(assert (=> b!204405 (= res!98501 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!103619 () ListLongMap!2833)

(declare-fun zeroValue!615 () V!6403)

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!1000 (array!9352 array!9350 (_ BitVec 32) (_ BitVec 32) V!6403 V!6403 (_ BitVec 32) Int) ListLongMap!2833)

(assert (=> b!204405 (= lt!103619 (getCurrentListMap!1000 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!103615 () array!9350)

(assert (=> b!204405 (= lt!103614 (getCurrentListMap!1000 _keys!825 lt!103615 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!204405 (and (= lt!103620 lt!103621) (= lt!103621 lt!103620))))

(declare-fun lt!103616 () ListLongMap!2833)

(declare-fun v!520 () V!6403)

(assert (=> b!204405 (= lt!103621 (+!449 lt!103616 (tuple2!3907 k0!843 v!520)))))

(declare-datatypes ((Unit!6197 0))(
  ( (Unit!6198) )
))
(declare-fun lt!103618 () Unit!6197)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!113 (array!9352 array!9350 (_ BitVec 32) (_ BitVec 32) V!6403 V!6403 (_ BitVec 32) (_ BitVec 64) V!6403 (_ BitVec 32) Int) Unit!6197)

(assert (=> b!204405 (= lt!103618 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!113 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!371 (array!9352 array!9350 (_ BitVec 32) (_ BitVec 32) V!6403 V!6403 (_ BitVec 32) Int) ListLongMap!2833)

(assert (=> b!204405 (= lt!103620 (getCurrentListMapNoExtraKeys!371 _keys!825 lt!103615 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!204405 (= lt!103615 (array!9351 (store (arr!4425 _values!649) i!601 (ValueCellFull!2190 v!520)) (size!4750 _values!649)))))

(assert (=> b!204405 (= lt!103616 (getCurrentListMapNoExtraKeys!371 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!204406 () Bool)

(declare-fun res!98507 () Bool)

(assert (=> b!204406 (=> (not res!98507) (not e!133745))))

(assert (=> b!204406 (= res!98507 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4751 _keys!825))))))

(declare-fun b!204407 () Bool)

(assert (=> b!204407 (= e!133744 tp_is_empty!5067)))

(declare-fun b!204408 () Bool)

(assert (=> b!204408 (= e!133750 (= lt!103619 (+!449 lt!103616 lt!103617)))))

(declare-fun res!98503 () Bool)

(assert (=> start!20564 (=> (not res!98503) (not e!133745))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20564 (= res!98503 (validMask!0 mask!1149))))

(assert (=> start!20564 e!133745))

(declare-fun array_inv!2913 (array!9350) Bool)

(assert (=> start!20564 (and (array_inv!2913 _values!649) e!133747)))

(assert (=> start!20564 true))

(assert (=> start!20564 tp_is_empty!5067))

(declare-fun array_inv!2914 (array!9352) Bool)

(assert (=> start!20564 (array_inv!2914 _keys!825)))

(assert (=> start!20564 tp!18665))

(declare-fun b!204400 () Bool)

(declare-fun res!98502 () Bool)

(assert (=> b!204400 (=> (not res!98502) (not e!133745))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9352 (_ BitVec 32)) Bool)

(assert (=> b!204400 (= res!98502 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(assert (= (and start!20564 res!98503) b!204403))

(assert (= (and b!204403 res!98509) b!204400))

(assert (= (and b!204400 res!98502) b!204397))

(assert (= (and b!204397 res!98505) b!204406))

(assert (= (and b!204406 res!98507) b!204402))

(assert (= (and b!204402 res!98508) b!204396))

(assert (= (and b!204396 res!98504) b!204405))

(assert (= (and b!204405 (not res!98501)) b!204404))

(assert (= (and b!204404 res!98500) b!204398))

(assert (= (and b!204398 res!98506) b!204408))

(assert (= (and b!204401 condMapEmpty!8669) mapIsEmpty!8669))

(assert (= (and b!204401 (not condMapEmpty!8669)) mapNonEmpty!8669))

(get-info :version)

(assert (= (and mapNonEmpty!8669 ((_ is ValueCellFull!2190) mapValue!8669)) b!204407))

(assert (= (and b!204401 ((_ is ValueCellFull!2190) mapDefault!8669)) b!204399))

(assert (= start!20564 b!204401))

(declare-fun m!231945 () Bool)

(assert (=> b!204402 m!231945))

(declare-fun m!231947 () Bool)

(assert (=> mapNonEmpty!8669 m!231947))

(declare-fun m!231949 () Bool)

(assert (=> b!204405 m!231949))

(declare-fun m!231951 () Bool)

(assert (=> b!204405 m!231951))

(declare-fun m!231953 () Bool)

(assert (=> b!204405 m!231953))

(declare-fun m!231955 () Bool)

(assert (=> b!204405 m!231955))

(declare-fun m!231957 () Bool)

(assert (=> b!204405 m!231957))

(declare-fun m!231959 () Bool)

(assert (=> b!204405 m!231959))

(declare-fun m!231961 () Bool)

(assert (=> b!204405 m!231961))

(declare-fun m!231963 () Bool)

(assert (=> b!204404 m!231963))

(declare-fun m!231965 () Bool)

(assert (=> b!204400 m!231965))

(declare-fun m!231967 () Bool)

(assert (=> b!204397 m!231967))

(declare-fun m!231969 () Bool)

(assert (=> b!204408 m!231969))

(declare-fun m!231971 () Bool)

(assert (=> b!204396 m!231971))

(declare-fun m!231973 () Bool)

(assert (=> b!204398 m!231973))

(declare-fun m!231975 () Bool)

(assert (=> start!20564 m!231975))

(declare-fun m!231977 () Bool)

(assert (=> start!20564 m!231977))

(declare-fun m!231979 () Bool)

(assert (=> start!20564 m!231979))

(check-sat (not b!204405) (not b!204402) (not b!204397) b_and!11975 (not b!204404) (not b!204408) (not mapNonEmpty!8669) (not start!20564) (not b!204398) (not b_next!5211) (not b!204400) tp_is_empty!5067)
(check-sat b_and!11975 (not b_next!5211))
