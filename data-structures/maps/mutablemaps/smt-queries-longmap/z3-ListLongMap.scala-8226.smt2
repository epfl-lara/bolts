; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100302 () Bool)

(assert start!100302)

(declare-fun mapNonEmpty!47336 () Bool)

(declare-fun mapRes!47336 () Bool)

(declare-fun tp!89947 () Bool)

(declare-fun e!679595 () Bool)

(assert (=> mapNonEmpty!47336 (= mapRes!47336 (and tp!89947 e!679595))))

(declare-datatypes ((V!45571 0))(
  ( (V!45572 (val!15223 Int)) )
))
(declare-datatypes ((ValueCell!14457 0))(
  ( (ValueCellFull!14457 (v!17862 V!45571)) (EmptyCell!14457) )
))
(declare-fun mapRest!47336 () (Array (_ BitVec 32) ValueCell!14457))

(declare-fun mapValue!47336 () ValueCell!14457)

(declare-fun mapKey!47336 () (_ BitVec 32))

(declare-datatypes ((array!77428 0))(
  ( (array!77429 (arr!37357 (Array (_ BitVec 32) ValueCell!14457)) (size!37894 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77428)

(assert (=> mapNonEmpty!47336 (= (arr!37357 _values!996) (store mapRest!47336 mapKey!47336 mapValue!47336))))

(declare-fun b!1195997 () Bool)

(declare-fun res!795984 () Bool)

(declare-fun e!679599 () Bool)

(assert (=> b!1195997 (=> (not res!795984) (not e!679599))))

(declare-datatypes ((array!77430 0))(
  ( (array!77431 (arr!37358 (Array (_ BitVec 32) (_ BitVec 64))) (size!37895 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77430)

(declare-datatypes ((List!26454 0))(
  ( (Nil!26451) (Cons!26450 (h!27659 (_ BitVec 64)) (t!39132 List!26454)) )
))
(declare-fun arrayNoDuplicates!0 (array!77430 (_ BitVec 32) List!26454) Bool)

(assert (=> b!1195997 (= res!795984 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26451))))

(declare-fun b!1195998 () Bool)

(declare-fun res!795988 () Bool)

(assert (=> b!1195998 (=> (not res!795988) (not e!679599))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1195998 (= res!795988 (validKeyInArray!0 k0!934))))

(declare-fun b!1195999 () Bool)

(declare-fun e!679596 () Bool)

(declare-fun e!679600 () Bool)

(assert (=> b!1195999 (= e!679596 (and e!679600 mapRes!47336))))

(declare-fun condMapEmpty!47336 () Bool)

(declare-fun mapDefault!47336 () ValueCell!14457)

(assert (=> b!1195999 (= condMapEmpty!47336 (= (arr!37357 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14457)) mapDefault!47336)))))

(declare-fun res!795989 () Bool)

(assert (=> start!100302 (=> (not res!795989) (not e!679599))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100302 (= res!795989 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37895 _keys!1208))))))

(assert (=> start!100302 e!679599))

(declare-fun array_inv!28378 (array!77430) Bool)

(assert (=> start!100302 (array_inv!28378 _keys!1208)))

(assert (=> start!100302 true))

(declare-fun array_inv!28379 (array!77428) Bool)

(assert (=> start!100302 (and (array_inv!28379 _values!996) e!679596)))

(declare-fun b!1196000 () Bool)

(declare-fun res!795986 () Bool)

(assert (=> b!1196000 (=> (not res!795986) (not e!679599))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1196000 (= res!795986 (and (= (size!37894 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37895 _keys!1208) (size!37894 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1196001 () Bool)

(declare-fun res!795982 () Bool)

(declare-fun e!679597 () Bool)

(assert (=> b!1196001 (=> (not res!795982) (not e!679597))))

(declare-fun lt!542970 () array!77430)

(assert (=> b!1196001 (= res!795982 (arrayNoDuplicates!0 lt!542970 #b00000000000000000000000000000000 Nil!26451))))

(declare-fun b!1196002 () Bool)

(declare-fun res!795991 () Bool)

(assert (=> b!1196002 (=> (not res!795991) (not e!679599))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1196002 (= res!795991 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37895 _keys!1208))))))

(declare-fun b!1196003 () Bool)

(assert (=> b!1196003 (= e!679597 (not true))))

(declare-fun arrayContainsKey!0 (array!77430 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1196003 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39602 0))(
  ( (Unit!39603) )
))
(declare-fun lt!542969 () Unit!39602)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77430 (_ BitVec 64) (_ BitVec 32)) Unit!39602)

(assert (=> b!1196003 (= lt!542969 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1196004 () Bool)

(declare-fun res!795990 () Bool)

(assert (=> b!1196004 (=> (not res!795990) (not e!679599))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77430 (_ BitVec 32)) Bool)

(assert (=> b!1196004 (= res!795990 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!47336 () Bool)

(assert (=> mapIsEmpty!47336 mapRes!47336))

(declare-fun b!1196005 () Bool)

(declare-fun tp_is_empty!30333 () Bool)

(assert (=> b!1196005 (= e!679595 tp_is_empty!30333)))

(declare-fun b!1196006 () Bool)

(declare-fun res!795983 () Bool)

(assert (=> b!1196006 (=> (not res!795983) (not e!679599))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1196006 (= res!795983 (validMask!0 mask!1564))))

(declare-fun b!1196007 () Bool)

(declare-fun res!795987 () Bool)

(assert (=> b!1196007 (=> (not res!795987) (not e!679599))))

(assert (=> b!1196007 (= res!795987 (= (select (arr!37358 _keys!1208) i!673) k0!934))))

(declare-fun b!1196008 () Bool)

(assert (=> b!1196008 (= e!679599 e!679597)))

(declare-fun res!795985 () Bool)

(assert (=> b!1196008 (=> (not res!795985) (not e!679597))))

(assert (=> b!1196008 (= res!795985 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542970 mask!1564))))

(assert (=> b!1196008 (= lt!542970 (array!77431 (store (arr!37358 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37895 _keys!1208)))))

(declare-fun b!1196009 () Bool)

(assert (=> b!1196009 (= e!679600 tp_is_empty!30333)))

(assert (= (and start!100302 res!795989) b!1196006))

(assert (= (and b!1196006 res!795983) b!1196000))

(assert (= (and b!1196000 res!795986) b!1196004))

(assert (= (and b!1196004 res!795990) b!1195997))

(assert (= (and b!1195997 res!795984) b!1196002))

(assert (= (and b!1196002 res!795991) b!1195998))

(assert (= (and b!1195998 res!795988) b!1196007))

(assert (= (and b!1196007 res!795987) b!1196008))

(assert (= (and b!1196008 res!795985) b!1196001))

(assert (= (and b!1196001 res!795982) b!1196003))

(assert (= (and b!1195999 condMapEmpty!47336) mapIsEmpty!47336))

(assert (= (and b!1195999 (not condMapEmpty!47336)) mapNonEmpty!47336))

(get-info :version)

(assert (= (and mapNonEmpty!47336 ((_ is ValueCellFull!14457) mapValue!47336)) b!1196005))

(assert (= (and b!1195999 ((_ is ValueCellFull!14457) mapDefault!47336)) b!1196009))

(assert (= start!100302 b!1195999))

(declare-fun m!1103413 () Bool)

(assert (=> b!1195997 m!1103413))

(declare-fun m!1103415 () Bool)

(assert (=> b!1196007 m!1103415))

(declare-fun m!1103417 () Bool)

(assert (=> b!1196003 m!1103417))

(declare-fun m!1103419 () Bool)

(assert (=> b!1196003 m!1103419))

(declare-fun m!1103421 () Bool)

(assert (=> start!100302 m!1103421))

(declare-fun m!1103423 () Bool)

(assert (=> start!100302 m!1103423))

(declare-fun m!1103425 () Bool)

(assert (=> b!1196004 m!1103425))

(declare-fun m!1103427 () Bool)

(assert (=> b!1196001 m!1103427))

(declare-fun m!1103429 () Bool)

(assert (=> mapNonEmpty!47336 m!1103429))

(declare-fun m!1103431 () Bool)

(assert (=> b!1196008 m!1103431))

(declare-fun m!1103433 () Bool)

(assert (=> b!1196008 m!1103433))

(declare-fun m!1103435 () Bool)

(assert (=> b!1195998 m!1103435))

(declare-fun m!1103437 () Bool)

(assert (=> b!1196006 m!1103437))

(check-sat (not b!1196001) (not b!1196006) (not start!100302) (not mapNonEmpty!47336) (not b!1196004) (not b!1196008) tp_is_empty!30333 (not b!1196003) (not b!1195998) (not b!1195997))
(check-sat)
