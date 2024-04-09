; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100164 () Bool)

(assert start!100164)

(declare-fun res!794487 () Bool)

(declare-fun e!678617 () Bool)

(assert (=> start!100164 (=> (not res!794487) (not e!678617))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!77236 0))(
  ( (array!77237 (arr!37264 (Array (_ BitVec 32) (_ BitVec 64))) (size!37801 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77236)

(assert (=> start!100164 (= res!794487 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37801 _keys!1208))))))

(assert (=> start!100164 e!678617))

(declare-fun array_inv!28308 (array!77236) Bool)

(assert (=> start!100164 (array_inv!28308 _keys!1208)))

(assert (=> start!100164 true))

(declare-datatypes ((V!45443 0))(
  ( (V!45444 (val!15175 Int)) )
))
(declare-datatypes ((ValueCell!14409 0))(
  ( (ValueCellFull!14409 (v!17814 V!45443)) (EmptyCell!14409) )
))
(declare-datatypes ((array!77238 0))(
  ( (array!77239 (arr!37265 (Array (_ BitVec 32) ValueCell!14409)) (size!37802 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77238)

(declare-fun e!678619 () Bool)

(declare-fun array_inv!28309 (array!77238) Bool)

(assert (=> start!100164 (and (array_inv!28309 _values!996) e!678619)))

(declare-fun b!1193994 () Bool)

(declare-fun res!794490 () Bool)

(assert (=> b!1193994 (=> (not res!794490) (not e!678617))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1193994 (= res!794490 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37801 _keys!1208))))))

(declare-fun b!1193995 () Bool)

(declare-fun res!794489 () Bool)

(assert (=> b!1193995 (=> (not res!794489) (not e!678617))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77236 (_ BitVec 32)) Bool)

(assert (=> b!1193995 (= res!794489 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1193996 () Bool)

(declare-fun res!794488 () Bool)

(assert (=> b!1193996 (=> (not res!794488) (not e!678617))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1193996 (= res!794488 (validKeyInArray!0 k0!934))))

(declare-fun mapNonEmpty!47183 () Bool)

(declare-fun mapRes!47183 () Bool)

(declare-fun tp!89794 () Bool)

(declare-fun e!678621 () Bool)

(assert (=> mapNonEmpty!47183 (= mapRes!47183 (and tp!89794 e!678621))))

(declare-fun mapValue!47183 () ValueCell!14409)

(declare-fun mapKey!47183 () (_ BitVec 32))

(declare-fun mapRest!47183 () (Array (_ BitVec 32) ValueCell!14409))

(assert (=> mapNonEmpty!47183 (= (arr!37265 _values!996) (store mapRest!47183 mapKey!47183 mapValue!47183))))

(declare-fun b!1193997 () Bool)

(declare-fun res!794486 () Bool)

(assert (=> b!1193997 (=> (not res!794486) (not e!678617))))

(declare-datatypes ((List!26412 0))(
  ( (Nil!26409) (Cons!26408 (h!27617 (_ BitVec 64)) (t!39090 List!26412)) )
))
(declare-fun arrayNoDuplicates!0 (array!77236 (_ BitVec 32) List!26412) Bool)

(assert (=> b!1193997 (= res!794486 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26409))))

(declare-fun b!1193998 () Bool)

(declare-fun res!794491 () Bool)

(assert (=> b!1193998 (=> (not res!794491) (not e!678617))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1193998 (= res!794491 (and (= (size!37802 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37801 _keys!1208) (size!37802 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1193999 () Bool)

(declare-fun tp_is_empty!30237 () Bool)

(assert (=> b!1193999 (= e!678621 tp_is_empty!30237)))

(declare-fun b!1194000 () Bool)

(declare-fun e!678620 () Bool)

(assert (=> b!1194000 (= e!678620 tp_is_empty!30237)))

(declare-fun b!1194001 () Bool)

(assert (=> b!1194001 (= e!678619 (and e!678620 mapRes!47183))))

(declare-fun condMapEmpty!47183 () Bool)

(declare-fun mapDefault!47183 () ValueCell!14409)

(assert (=> b!1194001 (= condMapEmpty!47183 (= (arr!37265 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14409)) mapDefault!47183)))))

(declare-fun b!1194002 () Bool)

(declare-fun e!678622 () Bool)

(assert (=> b!1194002 (= e!678622 false)))

(declare-fun lt!542661 () Bool)

(declare-fun lt!542660 () array!77236)

(assert (=> b!1194002 (= lt!542661 (arrayNoDuplicates!0 lt!542660 #b00000000000000000000000000000000 Nil!26409))))

(declare-fun b!1194003 () Bool)

(declare-fun res!794483 () Bool)

(assert (=> b!1194003 (=> (not res!794483) (not e!678617))))

(assert (=> b!1194003 (= res!794483 (= (select (arr!37264 _keys!1208) i!673) k0!934))))

(declare-fun b!1194004 () Bool)

(declare-fun res!794484 () Bool)

(assert (=> b!1194004 (=> (not res!794484) (not e!678617))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1194004 (= res!794484 (validMask!0 mask!1564))))

(declare-fun b!1194005 () Bool)

(assert (=> b!1194005 (= e!678617 e!678622)))

(declare-fun res!794485 () Bool)

(assert (=> b!1194005 (=> (not res!794485) (not e!678622))))

(assert (=> b!1194005 (= res!794485 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542660 mask!1564))))

(assert (=> b!1194005 (= lt!542660 (array!77237 (store (arr!37264 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37801 _keys!1208)))))

(declare-fun mapIsEmpty!47183 () Bool)

(assert (=> mapIsEmpty!47183 mapRes!47183))

(assert (= (and start!100164 res!794487) b!1194004))

(assert (= (and b!1194004 res!794484) b!1193998))

(assert (= (and b!1193998 res!794491) b!1193995))

(assert (= (and b!1193995 res!794489) b!1193997))

(assert (= (and b!1193997 res!794486) b!1193994))

(assert (= (and b!1193994 res!794490) b!1193996))

(assert (= (and b!1193996 res!794488) b!1194003))

(assert (= (and b!1194003 res!794483) b!1194005))

(assert (= (and b!1194005 res!794485) b!1194002))

(assert (= (and b!1194001 condMapEmpty!47183) mapIsEmpty!47183))

(assert (= (and b!1194001 (not condMapEmpty!47183)) mapNonEmpty!47183))

(get-info :version)

(assert (= (and mapNonEmpty!47183 ((_ is ValueCellFull!14409) mapValue!47183)) b!1193999))

(assert (= (and b!1194001 ((_ is ValueCellFull!14409) mapDefault!47183)) b!1194000))

(assert (= start!100164 b!1194001))

(declare-fun m!1102107 () Bool)

(assert (=> b!1193996 m!1102107))

(declare-fun m!1102109 () Bool)

(assert (=> b!1194004 m!1102109))

(declare-fun m!1102111 () Bool)

(assert (=> b!1194002 m!1102111))

(declare-fun m!1102113 () Bool)

(assert (=> b!1194005 m!1102113))

(declare-fun m!1102115 () Bool)

(assert (=> b!1194005 m!1102115))

(declare-fun m!1102117 () Bool)

(assert (=> start!100164 m!1102117))

(declare-fun m!1102119 () Bool)

(assert (=> start!100164 m!1102119))

(declare-fun m!1102121 () Bool)

(assert (=> mapNonEmpty!47183 m!1102121))

(declare-fun m!1102123 () Bool)

(assert (=> b!1193995 m!1102123))

(declare-fun m!1102125 () Bool)

(assert (=> b!1194003 m!1102125))

(declare-fun m!1102127 () Bool)

(assert (=> b!1193997 m!1102127))

(check-sat (not start!100164) (not b!1193995) (not b!1194004) (not b!1194005) (not b!1193996) (not mapNonEmpty!47183) (not b!1194002) (not b!1193997) tp_is_empty!30237)
(check-sat)
