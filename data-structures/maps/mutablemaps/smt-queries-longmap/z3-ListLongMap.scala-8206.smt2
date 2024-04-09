; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100140 () Bool)

(assert start!100140)

(declare-fun b_free!25677 () Bool)

(declare-fun b_next!25677 () Bool)

(assert (=> start!100140 (= b_free!25677 (not b_next!25677))))

(declare-fun tp!89754 () Bool)

(declare-fun b_and!42235 () Bool)

(assert (=> start!100140 (= tp!89754 b_and!42235)))

(declare-fun b!1193649 () Bool)

(declare-fun e!678430 () Bool)

(declare-fun tp_is_empty!30213 () Bool)

(assert (=> b!1193649 (= e!678430 tp_is_empty!30213)))

(declare-fun mapIsEmpty!47147 () Bool)

(declare-fun mapRes!47147 () Bool)

(assert (=> mapIsEmpty!47147 mapRes!47147))

(declare-fun b!1193650 () Bool)

(declare-fun res!794260 () Bool)

(declare-fun e!678429 () Bool)

(assert (=> b!1193650 (=> (not res!794260) (not e!678429))))

(declare-datatypes ((array!77190 0))(
  ( (array!77191 (arr!37241 (Array (_ BitVec 32) (_ BitVec 64))) (size!37778 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77190)

(declare-datatypes ((List!26400 0))(
  ( (Nil!26397) (Cons!26396 (h!27605 (_ BitVec 64)) (t!39076 List!26400)) )
))
(declare-fun arrayNoDuplicates!0 (array!77190 (_ BitVec 32) List!26400) Bool)

(assert (=> b!1193650 (= res!794260 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26397))))

(declare-fun res!794254 () Bool)

(assert (=> start!100140 (=> (not res!794254) (not e!678429))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100140 (= res!794254 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37778 _keys!1208))))))

(assert (=> start!100140 e!678429))

(assert (=> start!100140 tp_is_empty!30213))

(declare-fun array_inv!28290 (array!77190) Bool)

(assert (=> start!100140 (array_inv!28290 _keys!1208)))

(assert (=> start!100140 true))

(assert (=> start!100140 tp!89754))

(declare-datatypes ((V!45411 0))(
  ( (V!45412 (val!15163 Int)) )
))
(declare-datatypes ((ValueCell!14397 0))(
  ( (ValueCellFull!14397 (v!17802 V!45411)) (EmptyCell!14397) )
))
(declare-datatypes ((array!77192 0))(
  ( (array!77193 (arr!37242 (Array (_ BitVec 32) ValueCell!14397)) (size!37779 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77192)

(declare-fun e!678425 () Bool)

(declare-fun array_inv!28291 (array!77192) Bool)

(assert (=> start!100140 (and (array_inv!28291 _values!996) e!678425)))

(declare-fun b!1193651 () Bool)

(declare-fun e!678426 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1193651 (= e!678426 (or (= from!1455 i!673) (bvslt from!1455 i!673)))))

(declare-fun zeroValue!944 () V!45411)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45411)

(declare-fun lt!542607 () array!77190)

(declare-datatypes ((tuple2!19642 0))(
  ( (tuple2!19643 (_1!9831 (_ BitVec 64)) (_2!9831 V!45411)) )
))
(declare-datatypes ((List!26401 0))(
  ( (Nil!26398) (Cons!26397 (h!27606 tuple2!19642) (t!39077 List!26401)) )
))
(declare-datatypes ((ListLongMap!17623 0))(
  ( (ListLongMap!17624 (toList!8827 List!26401)) )
))
(declare-fun lt!542610 () ListLongMap!17623)

(declare-fun getCurrentListMapNoExtraKeys!5241 (array!77190 array!77192 (_ BitVec 32) (_ BitVec 32) V!45411 V!45411 (_ BitVec 32) Int) ListLongMap!17623)

(declare-fun dynLambda!3178 (Int (_ BitVec 64)) V!45411)

(assert (=> b!1193651 (= lt!542610 (getCurrentListMapNoExtraKeys!5241 lt!542607 (array!77193 (store (arr!37242 _values!996) i!673 (ValueCellFull!14397 (dynLambda!3178 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37779 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!542608 () ListLongMap!17623)

(assert (=> b!1193651 (= lt!542608 (getCurrentListMapNoExtraKeys!5241 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1193652 () Bool)

(declare-fun res!794252 () Bool)

(assert (=> b!1193652 (=> (not res!794252) (not e!678429))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1193652 (= res!794252 (= (select (arr!37241 _keys!1208) i!673) k0!934))))

(declare-fun b!1193653 () Bool)

(declare-fun res!794253 () Bool)

(assert (=> b!1193653 (=> (not res!794253) (not e!678429))))

(assert (=> b!1193653 (= res!794253 (and (= (size!37779 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37778 _keys!1208) (size!37779 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1193654 () Bool)

(declare-fun e!678428 () Bool)

(assert (=> b!1193654 (= e!678429 e!678428)))

(declare-fun res!794256 () Bool)

(assert (=> b!1193654 (=> (not res!794256) (not e!678428))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77190 (_ BitVec 32)) Bool)

(assert (=> b!1193654 (= res!794256 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542607 mask!1564))))

(assert (=> b!1193654 (= lt!542607 (array!77191 (store (arr!37241 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37778 _keys!1208)))))

(declare-fun b!1193655 () Bool)

(declare-fun res!794255 () Bool)

(assert (=> b!1193655 (=> (not res!794255) (not e!678429))))

(assert (=> b!1193655 (= res!794255 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1193656 () Bool)

(declare-fun res!794251 () Bool)

(assert (=> b!1193656 (=> (not res!794251) (not e!678429))))

(assert (=> b!1193656 (= res!794251 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37778 _keys!1208))))))

(declare-fun b!1193657 () Bool)

(declare-fun res!794250 () Bool)

(assert (=> b!1193657 (=> (not res!794250) (not e!678429))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1193657 (= res!794250 (validKeyInArray!0 k0!934))))

(declare-fun b!1193658 () Bool)

(declare-fun e!678424 () Bool)

(assert (=> b!1193658 (= e!678424 tp_is_empty!30213)))

(declare-fun b!1193659 () Bool)

(assert (=> b!1193659 (= e!678428 (not e!678426))))

(declare-fun res!794259 () Bool)

(assert (=> b!1193659 (=> res!794259 e!678426)))

(assert (=> b!1193659 (= res!794259 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77190 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1193659 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39540 0))(
  ( (Unit!39541) )
))
(declare-fun lt!542609 () Unit!39540)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77190 (_ BitVec 64) (_ BitVec 32)) Unit!39540)

(assert (=> b!1193659 (= lt!542609 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun mapNonEmpty!47147 () Bool)

(declare-fun tp!89755 () Bool)

(assert (=> mapNonEmpty!47147 (= mapRes!47147 (and tp!89755 e!678430))))

(declare-fun mapValue!47147 () ValueCell!14397)

(declare-fun mapKey!47147 () (_ BitVec 32))

(declare-fun mapRest!47147 () (Array (_ BitVec 32) ValueCell!14397))

(assert (=> mapNonEmpty!47147 (= (arr!37242 _values!996) (store mapRest!47147 mapKey!47147 mapValue!47147))))

(declare-fun b!1193660 () Bool)

(declare-fun res!794258 () Bool)

(assert (=> b!1193660 (=> (not res!794258) (not e!678429))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1193660 (= res!794258 (validMask!0 mask!1564))))

(declare-fun b!1193661 () Bool)

(assert (=> b!1193661 (= e!678425 (and e!678424 mapRes!47147))))

(declare-fun condMapEmpty!47147 () Bool)

(declare-fun mapDefault!47147 () ValueCell!14397)

(assert (=> b!1193661 (= condMapEmpty!47147 (= (arr!37242 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14397)) mapDefault!47147)))))

(declare-fun b!1193662 () Bool)

(declare-fun res!794257 () Bool)

(assert (=> b!1193662 (=> (not res!794257) (not e!678428))))

(assert (=> b!1193662 (= res!794257 (arrayNoDuplicates!0 lt!542607 #b00000000000000000000000000000000 Nil!26397))))

(assert (= (and start!100140 res!794254) b!1193660))

(assert (= (and b!1193660 res!794258) b!1193653))

(assert (= (and b!1193653 res!794253) b!1193655))

(assert (= (and b!1193655 res!794255) b!1193650))

(assert (= (and b!1193650 res!794260) b!1193656))

(assert (= (and b!1193656 res!794251) b!1193657))

(assert (= (and b!1193657 res!794250) b!1193652))

(assert (= (and b!1193652 res!794252) b!1193654))

(assert (= (and b!1193654 res!794256) b!1193662))

(assert (= (and b!1193662 res!794257) b!1193659))

(assert (= (and b!1193659 (not res!794259)) b!1193651))

(assert (= (and b!1193661 condMapEmpty!47147) mapIsEmpty!47147))

(assert (= (and b!1193661 (not condMapEmpty!47147)) mapNonEmpty!47147))

(get-info :version)

(assert (= (and mapNonEmpty!47147 ((_ is ValueCellFull!14397) mapValue!47147)) b!1193649))

(assert (= (and b!1193661 ((_ is ValueCellFull!14397) mapDefault!47147)) b!1193658))

(assert (= start!100140 b!1193661))

(declare-fun b_lambda!20839 () Bool)

(assert (=> (not b_lambda!20839) (not b!1193651)))

(declare-fun t!39075 () Bool)

(declare-fun tb!10497 () Bool)

(assert (=> (and start!100140 (= defaultEntry!1004 defaultEntry!1004) t!39075) tb!10497))

(declare-fun result!21553 () Bool)

(assert (=> tb!10497 (= result!21553 tp_is_empty!30213)))

(assert (=> b!1193651 t!39075))

(declare-fun b_and!42237 () Bool)

(assert (= b_and!42235 (and (=> t!39075 result!21553) b_and!42237)))

(declare-fun m!1101885 () Bool)

(assert (=> mapNonEmpty!47147 m!1101885))

(declare-fun m!1101887 () Bool)

(assert (=> start!100140 m!1101887))

(declare-fun m!1101889 () Bool)

(assert (=> start!100140 m!1101889))

(declare-fun m!1101891 () Bool)

(assert (=> b!1193657 m!1101891))

(declare-fun m!1101893 () Bool)

(assert (=> b!1193651 m!1101893))

(declare-fun m!1101895 () Bool)

(assert (=> b!1193651 m!1101895))

(declare-fun m!1101897 () Bool)

(assert (=> b!1193651 m!1101897))

(declare-fun m!1101899 () Bool)

(assert (=> b!1193651 m!1101899))

(declare-fun m!1101901 () Bool)

(assert (=> b!1193655 m!1101901))

(declare-fun m!1101903 () Bool)

(assert (=> b!1193654 m!1101903))

(declare-fun m!1101905 () Bool)

(assert (=> b!1193654 m!1101905))

(declare-fun m!1101907 () Bool)

(assert (=> b!1193652 m!1101907))

(declare-fun m!1101909 () Bool)

(assert (=> b!1193659 m!1101909))

(declare-fun m!1101911 () Bool)

(assert (=> b!1193659 m!1101911))

(declare-fun m!1101913 () Bool)

(assert (=> b!1193650 m!1101913))

(declare-fun m!1101915 () Bool)

(assert (=> b!1193662 m!1101915))

(declare-fun m!1101917 () Bool)

(assert (=> b!1193660 m!1101917))

(check-sat b_and!42237 (not b!1193659) (not b!1193654) (not b_next!25677) (not b!1193655) (not b!1193660) (not start!100140) (not b!1193650) (not b!1193651) (not b!1193657) (not b_lambda!20839) (not b!1193662) tp_is_empty!30213 (not mapNonEmpty!47147))
(check-sat b_and!42237 (not b_next!25677))
