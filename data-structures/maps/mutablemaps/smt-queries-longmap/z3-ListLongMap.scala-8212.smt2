; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100176 () Bool)

(assert start!100176)

(declare-fun b!1194210 () Bool)

(declare-fun e!678726 () Bool)

(declare-fun e!678725 () Bool)

(declare-fun mapRes!47201 () Bool)

(assert (=> b!1194210 (= e!678726 (and e!678725 mapRes!47201))))

(declare-fun condMapEmpty!47201 () Bool)

(declare-datatypes ((V!45459 0))(
  ( (V!45460 (val!15181 Int)) )
))
(declare-datatypes ((ValueCell!14415 0))(
  ( (ValueCellFull!14415 (v!17820 V!45459)) (EmptyCell!14415) )
))
(declare-datatypes ((array!77260 0))(
  ( (array!77261 (arr!37276 (Array (_ BitVec 32) ValueCell!14415)) (size!37813 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77260)

(declare-fun mapDefault!47201 () ValueCell!14415)

(assert (=> b!1194210 (= condMapEmpty!47201 (= (arr!37276 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14415)) mapDefault!47201)))))

(declare-fun b!1194211 () Bool)

(declare-fun tp_is_empty!30249 () Bool)

(assert (=> b!1194211 (= e!678725 tp_is_empty!30249)))

(declare-fun b!1194212 () Bool)

(declare-fun e!678729 () Bool)

(assert (=> b!1194212 (= e!678729 tp_is_empty!30249)))

(declare-fun b!1194213 () Bool)

(declare-fun res!794651 () Bool)

(declare-fun e!678728 () Bool)

(assert (=> b!1194213 (=> (not res!794651) (not e!678728))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1194213 (= res!794651 (validMask!0 mask!1564))))

(declare-fun b!1194214 () Bool)

(declare-fun res!794653 () Bool)

(assert (=> b!1194214 (=> (not res!794653) (not e!678728))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(declare-datatypes ((array!77262 0))(
  ( (array!77263 (arr!37277 (Array (_ BitVec 32) (_ BitVec 64))) (size!37814 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77262)

(assert (=> b!1194214 (= res!794653 (= (select (arr!37277 _keys!1208) i!673) k0!934))))

(declare-fun b!1194215 () Bool)

(declare-fun res!794646 () Bool)

(assert (=> b!1194215 (=> (not res!794646) (not e!678728))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1194215 (= res!794646 (validKeyInArray!0 k0!934))))

(declare-fun b!1194216 () Bool)

(declare-fun res!794648 () Bool)

(assert (=> b!1194216 (=> (not res!794648) (not e!678728))))

(declare-datatypes ((List!26417 0))(
  ( (Nil!26414) (Cons!26413 (h!27622 (_ BitVec 64)) (t!39095 List!26417)) )
))
(declare-fun arrayNoDuplicates!0 (array!77262 (_ BitVec 32) List!26417) Bool)

(assert (=> b!1194216 (= res!794648 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26414))))

(declare-fun b!1194217 () Bool)

(declare-fun res!794652 () Bool)

(assert (=> b!1194217 (=> (not res!794652) (not e!678728))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77262 (_ BitVec 32)) Bool)

(assert (=> b!1194217 (= res!794652 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1194218 () Bool)

(declare-fun e!678727 () Bool)

(assert (=> b!1194218 (= e!678727 false)))

(declare-fun lt!542697 () Bool)

(declare-fun lt!542696 () array!77262)

(assert (=> b!1194218 (= lt!542697 (arrayNoDuplicates!0 lt!542696 #b00000000000000000000000000000000 Nil!26414))))

(declare-fun b!1194219 () Bool)

(declare-fun res!794650 () Bool)

(assert (=> b!1194219 (=> (not res!794650) (not e!678728))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1194219 (= res!794650 (and (= (size!37813 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37814 _keys!1208) (size!37813 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!47201 () Bool)

(assert (=> mapIsEmpty!47201 mapRes!47201))

(declare-fun res!794649 () Bool)

(assert (=> start!100176 (=> (not res!794649) (not e!678728))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100176 (= res!794649 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37814 _keys!1208))))))

(assert (=> start!100176 e!678728))

(declare-fun array_inv!28316 (array!77262) Bool)

(assert (=> start!100176 (array_inv!28316 _keys!1208)))

(assert (=> start!100176 true))

(declare-fun array_inv!28317 (array!77260) Bool)

(assert (=> start!100176 (and (array_inv!28317 _values!996) e!678726)))

(declare-fun b!1194220 () Bool)

(declare-fun res!794647 () Bool)

(assert (=> b!1194220 (=> (not res!794647) (not e!678728))))

(assert (=> b!1194220 (= res!794647 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37814 _keys!1208))))))

(declare-fun mapNonEmpty!47201 () Bool)

(declare-fun tp!89812 () Bool)

(assert (=> mapNonEmpty!47201 (= mapRes!47201 (and tp!89812 e!678729))))

(declare-fun mapKey!47201 () (_ BitVec 32))

(declare-fun mapValue!47201 () ValueCell!14415)

(declare-fun mapRest!47201 () (Array (_ BitVec 32) ValueCell!14415))

(assert (=> mapNonEmpty!47201 (= (arr!37276 _values!996) (store mapRest!47201 mapKey!47201 mapValue!47201))))

(declare-fun b!1194221 () Bool)

(assert (=> b!1194221 (= e!678728 e!678727)))

(declare-fun res!794645 () Bool)

(assert (=> b!1194221 (=> (not res!794645) (not e!678727))))

(assert (=> b!1194221 (= res!794645 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542696 mask!1564))))

(assert (=> b!1194221 (= lt!542696 (array!77263 (store (arr!37277 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37814 _keys!1208)))))

(assert (= (and start!100176 res!794649) b!1194213))

(assert (= (and b!1194213 res!794651) b!1194219))

(assert (= (and b!1194219 res!794650) b!1194217))

(assert (= (and b!1194217 res!794652) b!1194216))

(assert (= (and b!1194216 res!794648) b!1194220))

(assert (= (and b!1194220 res!794647) b!1194215))

(assert (= (and b!1194215 res!794646) b!1194214))

(assert (= (and b!1194214 res!794653) b!1194221))

(assert (= (and b!1194221 res!794645) b!1194218))

(assert (= (and b!1194210 condMapEmpty!47201) mapIsEmpty!47201))

(assert (= (and b!1194210 (not condMapEmpty!47201)) mapNonEmpty!47201))

(get-info :version)

(assert (= (and mapNonEmpty!47201 ((_ is ValueCellFull!14415) mapValue!47201)) b!1194212))

(assert (= (and b!1194210 ((_ is ValueCellFull!14415) mapDefault!47201)) b!1194211))

(assert (= start!100176 b!1194210))

(declare-fun m!1102239 () Bool)

(assert (=> b!1194216 m!1102239))

(declare-fun m!1102241 () Bool)

(assert (=> b!1194218 m!1102241))

(declare-fun m!1102243 () Bool)

(assert (=> mapNonEmpty!47201 m!1102243))

(declare-fun m!1102245 () Bool)

(assert (=> start!100176 m!1102245))

(declare-fun m!1102247 () Bool)

(assert (=> start!100176 m!1102247))

(declare-fun m!1102249 () Bool)

(assert (=> b!1194217 m!1102249))

(declare-fun m!1102251 () Bool)

(assert (=> b!1194215 m!1102251))

(declare-fun m!1102253 () Bool)

(assert (=> b!1194213 m!1102253))

(declare-fun m!1102255 () Bool)

(assert (=> b!1194214 m!1102255))

(declare-fun m!1102257 () Bool)

(assert (=> b!1194221 m!1102257))

(declare-fun m!1102259 () Bool)

(assert (=> b!1194221 m!1102259))

(check-sat (not mapNonEmpty!47201) (not b!1194221) (not b!1194217) (not b!1194218) (not b!1194215) (not start!100176) tp_is_empty!30249 (not b!1194216) (not b!1194213))
(check-sat)
