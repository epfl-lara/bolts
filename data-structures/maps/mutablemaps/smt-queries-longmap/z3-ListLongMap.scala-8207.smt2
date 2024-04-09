; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100146 () Bool)

(assert start!100146)

(declare-fun b!1193744 () Bool)

(declare-fun e!678480 () Bool)

(assert (=> b!1193744 (= e!678480 false)))

(declare-fun lt!542628 () Bool)

(declare-datatypes ((array!77200 0))(
  ( (array!77201 (arr!37246 (Array (_ BitVec 32) (_ BitVec 64))) (size!37783 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77200)

(declare-datatypes ((List!26404 0))(
  ( (Nil!26401) (Cons!26400 (h!27609 (_ BitVec 64)) (t!39082 List!26404)) )
))
(declare-fun arrayNoDuplicates!0 (array!77200 (_ BitVec 32) List!26404) Bool)

(assert (=> b!1193744 (= lt!542628 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26401))))

(declare-fun b!1193745 () Bool)

(declare-fun e!678477 () Bool)

(declare-fun tp_is_empty!30219 () Bool)

(assert (=> b!1193745 (= e!678477 tp_is_empty!30219)))

(declare-fun mapIsEmpty!47156 () Bool)

(declare-fun mapRes!47156 () Bool)

(assert (=> mapIsEmpty!47156 mapRes!47156))

(declare-fun res!794314 () Bool)

(assert (=> start!100146 (=> (not res!794314) (not e!678480))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100146 (= res!794314 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37783 _keys!1208))))))

(assert (=> start!100146 e!678480))

(declare-fun array_inv!28292 (array!77200) Bool)

(assert (=> start!100146 (array_inv!28292 _keys!1208)))

(assert (=> start!100146 true))

(declare-datatypes ((V!45419 0))(
  ( (V!45420 (val!15166 Int)) )
))
(declare-datatypes ((ValueCell!14400 0))(
  ( (ValueCellFull!14400 (v!17805 V!45419)) (EmptyCell!14400) )
))
(declare-datatypes ((array!77202 0))(
  ( (array!77203 (arr!37247 (Array (_ BitVec 32) ValueCell!14400)) (size!37784 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77202)

(declare-fun e!678481 () Bool)

(declare-fun array_inv!28293 (array!77202) Bool)

(assert (=> start!100146 (and (array_inv!28293 _values!996) e!678481)))

(declare-fun b!1193746 () Bool)

(declare-fun res!794315 () Bool)

(assert (=> b!1193746 (=> (not res!794315) (not e!678480))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1193746 (= res!794315 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!47156 () Bool)

(declare-fun tp!89767 () Bool)

(assert (=> mapNonEmpty!47156 (= mapRes!47156 (and tp!89767 e!678477))))

(declare-fun mapKey!47156 () (_ BitVec 32))

(declare-fun mapValue!47156 () ValueCell!14400)

(declare-fun mapRest!47156 () (Array (_ BitVec 32) ValueCell!14400))

(assert (=> mapNonEmpty!47156 (= (arr!37247 _values!996) (store mapRest!47156 mapKey!47156 mapValue!47156))))

(declare-fun b!1193747 () Bool)

(declare-fun res!794316 () Bool)

(assert (=> b!1193747 (=> (not res!794316) (not e!678480))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77200 (_ BitVec 32)) Bool)

(assert (=> b!1193747 (= res!794316 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1193748 () Bool)

(declare-fun e!678478 () Bool)

(assert (=> b!1193748 (= e!678481 (and e!678478 mapRes!47156))))

(declare-fun condMapEmpty!47156 () Bool)

(declare-fun mapDefault!47156 () ValueCell!14400)

(assert (=> b!1193748 (= condMapEmpty!47156 (= (arr!37247 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14400)) mapDefault!47156)))))

(declare-fun b!1193749 () Bool)

(declare-fun res!794317 () Bool)

(assert (=> b!1193749 (=> (not res!794317) (not e!678480))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1193749 (= res!794317 (and (= (size!37784 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37783 _keys!1208) (size!37784 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1193750 () Bool)

(assert (=> b!1193750 (= e!678478 tp_is_empty!30219)))

(assert (= (and start!100146 res!794314) b!1193746))

(assert (= (and b!1193746 res!794315) b!1193749))

(assert (= (and b!1193749 res!794317) b!1193747))

(assert (= (and b!1193747 res!794316) b!1193744))

(assert (= (and b!1193748 condMapEmpty!47156) mapIsEmpty!47156))

(assert (= (and b!1193748 (not condMapEmpty!47156)) mapNonEmpty!47156))

(get-info :version)

(assert (= (and mapNonEmpty!47156 ((_ is ValueCellFull!14400) mapValue!47156)) b!1193745))

(assert (= (and b!1193748 ((_ is ValueCellFull!14400) mapDefault!47156)) b!1193750))

(assert (= start!100146 b!1193748))

(declare-fun m!1101965 () Bool)

(assert (=> b!1193747 m!1101965))

(declare-fun m!1101967 () Bool)

(assert (=> b!1193744 m!1101967))

(declare-fun m!1101969 () Bool)

(assert (=> mapNonEmpty!47156 m!1101969))

(declare-fun m!1101971 () Bool)

(assert (=> b!1193746 m!1101971))

(declare-fun m!1101973 () Bool)

(assert (=> start!100146 m!1101973))

(declare-fun m!1101975 () Bool)

(assert (=> start!100146 m!1101975))

(check-sat (not b!1193747) (not b!1193746) tp_is_empty!30219 (not start!100146) (not mapNonEmpty!47156) (not b!1193744))
(check-sat)
