; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100384 () Bool)

(assert start!100384)

(declare-fun res!796983 () Bool)

(declare-fun e!680315 () Bool)

(assert (=> start!100384 (=> (not res!796983) (not e!680315))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!77546 0))(
  ( (array!77547 (arr!37415 (Array (_ BitVec 32) (_ BitVec 64))) (size!37952 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77546)

(assert (=> start!100384 (= res!796983 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37952 _keys!1208))))))

(assert (=> start!100384 e!680315))

(declare-fun array_inv!28420 (array!77546) Bool)

(assert (=> start!100384 (array_inv!28420 _keys!1208)))

(assert (=> start!100384 true))

(declare-datatypes ((V!45651 0))(
  ( (V!45652 (val!15253 Int)) )
))
(declare-datatypes ((ValueCell!14487 0))(
  ( (ValueCellFull!14487 (v!17892 V!45651)) (EmptyCell!14487) )
))
(declare-datatypes ((array!77548 0))(
  ( (array!77549 (arr!37416 (Array (_ BitVec 32) ValueCell!14487)) (size!37953 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77548)

(declare-fun e!680316 () Bool)

(declare-fun array_inv!28421 (array!77548) Bool)

(assert (=> start!100384 (and (array_inv!28421 _values!996) e!680316)))

(declare-fun b!1197463 () Bool)

(declare-fun e!680314 () Bool)

(declare-fun tp_is_empty!30393 () Bool)

(assert (=> b!1197463 (= e!680314 tp_is_empty!30393)))

(declare-fun b!1197464 () Bool)

(declare-fun res!796987 () Bool)

(assert (=> b!1197464 (=> (not res!796987) (not e!680315))))

(declare-datatypes ((List!26489 0))(
  ( (Nil!26486) (Cons!26485 (h!27694 (_ BitVec 64)) (t!39197 List!26489)) )
))
(declare-fun arrayNoDuplicates!0 (array!77546 (_ BitVec 32) List!26489) Bool)

(assert (=> b!1197464 (= res!796987 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26486))))

(declare-fun b!1197465 () Bool)

(declare-fun e!680317 () Bool)

(assert (=> b!1197465 (= e!680317 (not true))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!77546 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1197465 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39640 0))(
  ( (Unit!39641) )
))
(declare-fun lt!543258 () Unit!39640)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77546 (_ BitVec 64) (_ BitVec 32)) Unit!39640)

(assert (=> b!1197465 (= lt!543258 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun mapIsEmpty!47429 () Bool)

(declare-fun mapRes!47429 () Bool)

(assert (=> mapIsEmpty!47429 mapRes!47429))

(declare-fun b!1197466 () Bool)

(declare-fun res!796982 () Bool)

(assert (=> b!1197466 (=> (not res!796982) (not e!680315))))

(assert (=> b!1197466 (= res!796982 (= (select (arr!37415 _keys!1208) i!673) k0!934))))

(declare-fun b!1197467 () Bool)

(declare-fun res!796988 () Bool)

(assert (=> b!1197467 (=> (not res!796988) (not e!680315))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77546 (_ BitVec 32)) Bool)

(assert (=> b!1197467 (= res!796988 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1197468 () Bool)

(declare-fun res!796980 () Bool)

(assert (=> b!1197468 (=> (not res!796980) (not e!680315))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1197468 (= res!796980 (validKeyInArray!0 k0!934))))

(declare-fun b!1197469 () Bool)

(declare-fun res!796984 () Bool)

(assert (=> b!1197469 (=> (not res!796984) (not e!680315))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1197469 (= res!796984 (validMask!0 mask!1564))))

(declare-fun b!1197470 () Bool)

(declare-fun res!796989 () Bool)

(assert (=> b!1197470 (=> (not res!796989) (not e!680317))))

(declare-fun lt!543257 () array!77546)

(assert (=> b!1197470 (= res!796989 (arrayNoDuplicates!0 lt!543257 #b00000000000000000000000000000000 Nil!26486))))

(declare-fun b!1197471 () Bool)

(assert (=> b!1197471 (= e!680315 e!680317)))

(declare-fun res!796981 () Bool)

(assert (=> b!1197471 (=> (not res!796981) (not e!680317))))

(assert (=> b!1197471 (= res!796981 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543257 mask!1564))))

(assert (=> b!1197471 (= lt!543257 (array!77547 (store (arr!37415 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37952 _keys!1208)))))

(declare-fun b!1197472 () Bool)

(assert (=> b!1197472 (= e!680316 (and e!680314 mapRes!47429))))

(declare-fun condMapEmpty!47429 () Bool)

(declare-fun mapDefault!47429 () ValueCell!14487)

(assert (=> b!1197472 (= condMapEmpty!47429 (= (arr!37416 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14487)) mapDefault!47429)))))

(declare-fun b!1197473 () Bool)

(declare-fun res!796985 () Bool)

(assert (=> b!1197473 (=> (not res!796985) (not e!680315))))

(assert (=> b!1197473 (= res!796985 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37952 _keys!1208))))))

(declare-fun b!1197474 () Bool)

(declare-fun e!680318 () Bool)

(assert (=> b!1197474 (= e!680318 tp_is_empty!30393)))

(declare-fun mapNonEmpty!47429 () Bool)

(declare-fun tp!90085 () Bool)

(assert (=> mapNonEmpty!47429 (= mapRes!47429 (and tp!90085 e!680318))))

(declare-fun mapRest!47429 () (Array (_ BitVec 32) ValueCell!14487))

(declare-fun mapKey!47429 () (_ BitVec 32))

(declare-fun mapValue!47429 () ValueCell!14487)

(assert (=> mapNonEmpty!47429 (= (arr!37416 _values!996) (store mapRest!47429 mapKey!47429 mapValue!47429))))

(declare-fun b!1197475 () Bool)

(declare-fun res!796986 () Bool)

(assert (=> b!1197475 (=> (not res!796986) (not e!680315))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1197475 (= res!796986 (and (= (size!37953 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37952 _keys!1208) (size!37953 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(assert (= (and start!100384 res!796983) b!1197469))

(assert (= (and b!1197469 res!796984) b!1197475))

(assert (= (and b!1197475 res!796986) b!1197467))

(assert (= (and b!1197467 res!796988) b!1197464))

(assert (= (and b!1197464 res!796987) b!1197473))

(assert (= (and b!1197473 res!796985) b!1197468))

(assert (= (and b!1197468 res!796980) b!1197466))

(assert (= (and b!1197466 res!796982) b!1197471))

(assert (= (and b!1197471 res!796981) b!1197470))

(assert (= (and b!1197470 res!796989) b!1197465))

(assert (= (and b!1197472 condMapEmpty!47429) mapIsEmpty!47429))

(assert (= (and b!1197472 (not condMapEmpty!47429)) mapNonEmpty!47429))

(get-info :version)

(assert (= (and mapNonEmpty!47429 ((_ is ValueCellFull!14487) mapValue!47429)) b!1197474))

(assert (= (and b!1197472 ((_ is ValueCellFull!14487) mapDefault!47429)) b!1197463))

(assert (= start!100384 b!1197472))

(declare-fun m!1104545 () Bool)

(assert (=> mapNonEmpty!47429 m!1104545))

(declare-fun m!1104547 () Bool)

(assert (=> b!1197468 m!1104547))

(declare-fun m!1104549 () Bool)

(assert (=> b!1197467 m!1104549))

(declare-fun m!1104551 () Bool)

(assert (=> start!100384 m!1104551))

(declare-fun m!1104553 () Bool)

(assert (=> start!100384 m!1104553))

(declare-fun m!1104555 () Bool)

(assert (=> b!1197470 m!1104555))

(declare-fun m!1104557 () Bool)

(assert (=> b!1197466 m!1104557))

(declare-fun m!1104559 () Bool)

(assert (=> b!1197464 m!1104559))

(declare-fun m!1104561 () Bool)

(assert (=> b!1197469 m!1104561))

(declare-fun m!1104563 () Bool)

(assert (=> b!1197471 m!1104563))

(declare-fun m!1104565 () Bool)

(assert (=> b!1197471 m!1104565))

(declare-fun m!1104567 () Bool)

(assert (=> b!1197465 m!1104567))

(declare-fun m!1104569 () Bool)

(assert (=> b!1197465 m!1104569))

(check-sat (not mapNonEmpty!47429) (not start!100384) tp_is_empty!30393 (not b!1197464) (not b!1197468) (not b!1197471) (not b!1197465) (not b!1197467) (not b!1197470) (not b!1197469))
(check-sat)
