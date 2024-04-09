; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100498 () Bool)

(assert start!100498)

(declare-fun b_free!25785 () Bool)

(declare-fun b_next!25785 () Bool)

(assert (=> start!100498 (= b_free!25785 (not b_next!25785))))

(declare-fun tp!90345 () Bool)

(declare-fun b_and!42471 () Bool)

(assert (=> start!100498 (= tp!90345 b_and!42471)))

(declare-fun b!1199608 () Bool)

(declare-fun res!798584 () Bool)

(declare-fun e!681364 () Bool)

(assert (=> b!1199608 (=> (not res!798584) (not e!681364))))

(declare-datatypes ((array!77734 0))(
  ( (array!77735 (arr!37508 (Array (_ BitVec 32) (_ BitVec 64))) (size!38045 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77734)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1199608 (= res!798584 (= (select (arr!37508 _keys!1208) i!673) k0!934))))

(declare-fun b!1199609 () Bool)

(declare-fun res!798576 () Bool)

(assert (=> b!1199609 (=> (not res!798576) (not e!681364))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77734 (_ BitVec 32)) Bool)

(assert (=> b!1199609 (= res!798576 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1199610 () Bool)

(declare-fun e!681359 () Bool)

(declare-fun e!681358 () Bool)

(declare-fun mapRes!47576 () Bool)

(assert (=> b!1199610 (= e!681359 (and e!681358 mapRes!47576))))

(declare-fun condMapEmpty!47576 () Bool)

(declare-datatypes ((V!45779 0))(
  ( (V!45780 (val!15301 Int)) )
))
(declare-datatypes ((ValueCell!14535 0))(
  ( (ValueCellFull!14535 (v!17940 V!45779)) (EmptyCell!14535) )
))
(declare-datatypes ((array!77736 0))(
  ( (array!77737 (arr!37509 (Array (_ BitVec 32) ValueCell!14535)) (size!38046 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77736)

(declare-fun mapDefault!47576 () ValueCell!14535)

(assert (=> b!1199610 (= condMapEmpty!47576 (= (arr!37509 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14535)) mapDefault!47576)))))

(declare-fun b!1199611 () Bool)

(declare-fun res!798577 () Bool)

(assert (=> b!1199611 (=> (not res!798577) (not e!681364))))

(assert (=> b!1199611 (= res!798577 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38045 _keys!1208))))))

(declare-fun b!1199612 () Bool)

(declare-fun tp_is_empty!30489 () Bool)

(assert (=> b!1199612 (= e!681358 tp_is_empty!30489)))

(declare-fun mapIsEmpty!47576 () Bool)

(assert (=> mapIsEmpty!47576 mapRes!47576))

(declare-fun mapNonEmpty!47576 () Bool)

(declare-fun tp!90346 () Bool)

(declare-fun e!681361 () Bool)

(assert (=> mapNonEmpty!47576 (= mapRes!47576 (and tp!90346 e!681361))))

(declare-fun mapRest!47576 () (Array (_ BitVec 32) ValueCell!14535))

(declare-fun mapKey!47576 () (_ BitVec 32))

(declare-fun mapValue!47576 () ValueCell!14535)

(assert (=> mapNonEmpty!47576 (= (arr!37509 _values!996) (store mapRest!47576 mapKey!47576 mapValue!47576))))

(declare-fun res!798578 () Bool)

(assert (=> start!100498 (=> (not res!798578) (not e!681364))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100498 (= res!798578 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38045 _keys!1208))))))

(assert (=> start!100498 e!681364))

(assert (=> start!100498 tp_is_empty!30489))

(declare-fun array_inv!28488 (array!77734) Bool)

(assert (=> start!100498 (array_inv!28488 _keys!1208)))

(assert (=> start!100498 true))

(assert (=> start!100498 tp!90345))

(declare-fun array_inv!28489 (array!77736) Bool)

(assert (=> start!100498 (and (array_inv!28489 _values!996) e!681359)))

(declare-fun b!1199613 () Bool)

(declare-fun e!681363 () Bool)

(declare-fun e!681362 () Bool)

(assert (=> b!1199613 (= e!681363 (not e!681362))))

(declare-fun res!798580 () Bool)

(assert (=> b!1199613 (=> res!798580 e!681362)))

(assert (=> b!1199613 (= res!798580 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77734 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1199613 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39706 0))(
  ( (Unit!39707) )
))
(declare-fun lt!543778 () Unit!39706)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77734 (_ BitVec 64) (_ BitVec 32)) Unit!39706)

(assert (=> b!1199613 (= lt!543778 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1199614 () Bool)

(declare-fun res!798579 () Bool)

(assert (=> b!1199614 (=> (not res!798579) (not e!681363))))

(declare-fun lt!543780 () array!77734)

(declare-datatypes ((List!26558 0))(
  ( (Nil!26555) (Cons!26554 (h!27763 (_ BitVec 64)) (t!39330 List!26558)) )
))
(declare-fun arrayNoDuplicates!0 (array!77734 (_ BitVec 32) List!26558) Bool)

(assert (=> b!1199614 (= res!798579 (arrayNoDuplicates!0 lt!543780 #b00000000000000000000000000000000 Nil!26555))))

(declare-fun b!1199615 () Bool)

(declare-fun res!798575 () Bool)

(assert (=> b!1199615 (=> (not res!798575) (not e!681364))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1199615 (= res!798575 (and (= (size!38046 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38045 _keys!1208) (size!38046 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1199616 () Bool)

(declare-fun res!798585 () Bool)

(assert (=> b!1199616 (=> (not res!798585) (not e!681364))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1199616 (= res!798585 (validMask!0 mask!1564))))

(declare-fun b!1199617 () Bool)

(declare-fun res!798583 () Bool)

(assert (=> b!1199617 (=> (not res!798583) (not e!681364))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1199617 (= res!798583 (validKeyInArray!0 k0!934))))

(declare-fun b!1199618 () Bool)

(assert (=> b!1199618 (= e!681364 e!681363)))

(declare-fun res!798582 () Bool)

(assert (=> b!1199618 (=> (not res!798582) (not e!681363))))

(assert (=> b!1199618 (= res!798582 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543780 mask!1564))))

(assert (=> b!1199618 (= lt!543780 (array!77735 (store (arr!37508 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38045 _keys!1208)))))

(declare-fun b!1199619 () Bool)

(assert (=> b!1199619 (= e!681362 true)))

(declare-fun zeroValue!944 () V!45779)

(declare-datatypes ((tuple2!19726 0))(
  ( (tuple2!19727 (_1!9873 (_ BitVec 64)) (_2!9873 V!45779)) )
))
(declare-datatypes ((List!26559 0))(
  ( (Nil!26556) (Cons!26555 (h!27764 tuple2!19726) (t!39331 List!26559)) )
))
(declare-datatypes ((ListLongMap!17707 0))(
  ( (ListLongMap!17708 (toList!8869 List!26559)) )
))
(declare-fun lt!543781 () ListLongMap!17707)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45779)

(declare-fun getCurrentListMapNoExtraKeys!5282 (array!77734 array!77736 (_ BitVec 32) (_ BitVec 32) V!45779 V!45779 (_ BitVec 32) Int) ListLongMap!17707)

(declare-fun dynLambda!3213 (Int (_ BitVec 64)) V!45779)

(assert (=> b!1199619 (= lt!543781 (getCurrentListMapNoExtraKeys!5282 lt!543780 (array!77737 (store (arr!37509 _values!996) i!673 (ValueCellFull!14535 (dynLambda!3213 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38046 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!543779 () ListLongMap!17707)

(assert (=> b!1199619 (= lt!543779 (getCurrentListMapNoExtraKeys!5282 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1199620 () Bool)

(declare-fun res!798581 () Bool)

(assert (=> b!1199620 (=> (not res!798581) (not e!681364))))

(assert (=> b!1199620 (= res!798581 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26555))))

(declare-fun b!1199621 () Bool)

(assert (=> b!1199621 (= e!681361 tp_is_empty!30489)))

(assert (= (and start!100498 res!798578) b!1199616))

(assert (= (and b!1199616 res!798585) b!1199615))

(assert (= (and b!1199615 res!798575) b!1199609))

(assert (= (and b!1199609 res!798576) b!1199620))

(assert (= (and b!1199620 res!798581) b!1199611))

(assert (= (and b!1199611 res!798577) b!1199617))

(assert (= (and b!1199617 res!798583) b!1199608))

(assert (= (and b!1199608 res!798584) b!1199618))

(assert (= (and b!1199618 res!798582) b!1199614))

(assert (= (and b!1199614 res!798579) b!1199613))

(assert (= (and b!1199613 (not res!798580)) b!1199619))

(assert (= (and b!1199610 condMapEmpty!47576) mapIsEmpty!47576))

(assert (= (and b!1199610 (not condMapEmpty!47576)) mapNonEmpty!47576))

(get-info :version)

(assert (= (and mapNonEmpty!47576 ((_ is ValueCellFull!14535) mapValue!47576)) b!1199621))

(assert (= (and b!1199610 ((_ is ValueCellFull!14535) mapDefault!47576)) b!1199612))

(assert (= start!100498 b!1199610))

(declare-fun b_lambda!20999 () Bool)

(assert (=> (not b_lambda!20999) (not b!1199619)))

(declare-fun t!39329 () Bool)

(declare-fun tb!10593 () Bool)

(assert (=> (and start!100498 (= defaultEntry!1004 defaultEntry!1004) t!39329) tb!10593))

(declare-fun result!21755 () Bool)

(assert (=> tb!10593 (= result!21755 tp_is_empty!30489)))

(assert (=> b!1199619 t!39329))

(declare-fun b_and!42473 () Bool)

(assert (= b_and!42471 (and (=> t!39329 result!21755) b_and!42473)))

(declare-fun m!1106147 () Bool)

(assert (=> start!100498 m!1106147))

(declare-fun m!1106149 () Bool)

(assert (=> start!100498 m!1106149))

(declare-fun m!1106151 () Bool)

(assert (=> b!1199609 m!1106151))

(declare-fun m!1106153 () Bool)

(assert (=> b!1199608 m!1106153))

(declare-fun m!1106155 () Bool)

(assert (=> b!1199619 m!1106155))

(declare-fun m!1106157 () Bool)

(assert (=> b!1199619 m!1106157))

(declare-fun m!1106159 () Bool)

(assert (=> b!1199619 m!1106159))

(declare-fun m!1106161 () Bool)

(assert (=> b!1199619 m!1106161))

(declare-fun m!1106163 () Bool)

(assert (=> b!1199613 m!1106163))

(declare-fun m!1106165 () Bool)

(assert (=> b!1199613 m!1106165))

(declare-fun m!1106167 () Bool)

(assert (=> b!1199614 m!1106167))

(declare-fun m!1106169 () Bool)

(assert (=> mapNonEmpty!47576 m!1106169))

(declare-fun m!1106171 () Bool)

(assert (=> b!1199620 m!1106171))

(declare-fun m!1106173 () Bool)

(assert (=> b!1199618 m!1106173))

(declare-fun m!1106175 () Bool)

(assert (=> b!1199618 m!1106175))

(declare-fun m!1106177 () Bool)

(assert (=> b!1199617 m!1106177))

(declare-fun m!1106179 () Bool)

(assert (=> b!1199616 m!1106179))

(check-sat (not b!1199616) (not b_lambda!20999) b_and!42473 (not b_next!25785) (not b!1199614) (not b!1199618) tp_is_empty!30489 (not b!1199617) (not b!1199613) (not mapNonEmpty!47576) (not b!1199609) (not b!1199620) (not start!100498) (not b!1199619))
(check-sat b_and!42473 (not b_next!25785))
