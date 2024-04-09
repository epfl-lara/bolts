; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78588 () Bool)

(assert start!78588)

(declare-fun b_free!16773 () Bool)

(declare-fun b_next!16773 () Bool)

(assert (=> start!78588 (= b_free!16773 (not b_next!16773))))

(declare-fun tp!58761 () Bool)

(declare-fun b_and!27413 () Bool)

(assert (=> start!78588 (= tp!58761 b_and!27413)))

(declare-fun b!915619 () Bool)

(declare-fun res!617408 () Bool)

(declare-fun e!513967 () Bool)

(assert (=> b!915619 (=> (not res!617408) (not e!513967))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!54566 0))(
  ( (array!54567 (arr!26224 (Array (_ BitVec 32) (_ BitVec 64))) (size!26684 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54566)

(assert (=> b!915619 (= res!617408 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26684 _keys!1487))))))

(declare-fun b!915620 () Bool)

(declare-fun e!513966 () Bool)

(declare-fun tp_is_empty!19281 () Bool)

(assert (=> b!915620 (= e!513966 tp_is_empty!19281)))

(declare-fun mapIsEmpty!30678 () Bool)

(declare-fun mapRes!30678 () Bool)

(assert (=> mapIsEmpty!30678 mapRes!30678))

(declare-fun b!915621 () Bool)

(assert (=> b!915621 (= e!513967 false)))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!30673 0))(
  ( (V!30674 (val!9691 Int)) )
))
(declare-datatypes ((ValueCell!9159 0))(
  ( (ValueCellFull!9159 (v!12209 V!30673)) (EmptyCell!9159) )
))
(declare-datatypes ((array!54568 0))(
  ( (array!54569 (arr!26225 (Array (_ BitVec 32) ValueCell!9159)) (size!26685 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54568)

(declare-fun defaultEntry!1235 () Int)

(declare-fun lt!411657 () Bool)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun zeroValue!1173 () V!30673)

(declare-fun minValue!1173 () V!30673)

(declare-datatypes ((tuple2!12638 0))(
  ( (tuple2!12639 (_1!6329 (_ BitVec 64)) (_2!6329 V!30673)) )
))
(declare-datatypes ((List!18497 0))(
  ( (Nil!18494) (Cons!18493 (h!19639 tuple2!12638) (t!26118 List!18497)) )
))
(declare-datatypes ((ListLongMap!11349 0))(
  ( (ListLongMap!11350 (toList!5690 List!18497)) )
))
(declare-fun contains!4710 (ListLongMap!11349 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2919 (array!54566 array!54568 (_ BitVec 32) (_ BitVec 32) V!30673 V!30673 (_ BitVec 32) Int) ListLongMap!11349)

(assert (=> b!915621 (= lt!411657 (contains!4710 (getCurrentListMap!2919 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235) k0!1099))))

(declare-fun b!915622 () Bool)

(declare-fun res!617407 () Bool)

(assert (=> b!915622 (=> (not res!617407) (not e!513967))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54566 (_ BitVec 32)) Bool)

(assert (=> b!915622 (= res!617407 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun res!617404 () Bool)

(assert (=> start!78588 (=> (not res!617404) (not e!513967))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78588 (= res!617404 (validMask!0 mask!1881))))

(assert (=> start!78588 e!513967))

(assert (=> start!78588 true))

(declare-fun e!513968 () Bool)

(declare-fun array_inv!20454 (array!54568) Bool)

(assert (=> start!78588 (and (array_inv!20454 _values!1231) e!513968)))

(assert (=> start!78588 tp!58761))

(declare-fun array_inv!20455 (array!54566) Bool)

(assert (=> start!78588 (array_inv!20455 _keys!1487)))

(assert (=> start!78588 tp_is_empty!19281))

(declare-fun mapNonEmpty!30678 () Bool)

(declare-fun tp!58760 () Bool)

(assert (=> mapNonEmpty!30678 (= mapRes!30678 (and tp!58760 e!513966))))

(declare-fun mapRest!30678 () (Array (_ BitVec 32) ValueCell!9159))

(declare-fun mapValue!30678 () ValueCell!9159)

(declare-fun mapKey!30678 () (_ BitVec 32))

(assert (=> mapNonEmpty!30678 (= (arr!26225 _values!1231) (store mapRest!30678 mapKey!30678 mapValue!30678))))

(declare-fun b!915623 () Bool)

(declare-fun res!617406 () Bool)

(assert (=> b!915623 (=> (not res!617406) (not e!513967))))

(assert (=> b!915623 (= res!617406 (and (= (size!26685 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26684 _keys!1487) (size!26685 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!915624 () Bool)

(declare-fun e!513965 () Bool)

(assert (=> b!915624 (= e!513968 (and e!513965 mapRes!30678))))

(declare-fun condMapEmpty!30678 () Bool)

(declare-fun mapDefault!30678 () ValueCell!9159)

(assert (=> b!915624 (= condMapEmpty!30678 (= (arr!26225 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9159)) mapDefault!30678)))))

(declare-fun b!915625 () Bool)

(assert (=> b!915625 (= e!513965 tp_is_empty!19281)))

(declare-fun b!915626 () Bool)

(declare-fun res!617405 () Bool)

(assert (=> b!915626 (=> (not res!617405) (not e!513967))))

(declare-datatypes ((List!18498 0))(
  ( (Nil!18495) (Cons!18494 (h!19640 (_ BitVec 64)) (t!26119 List!18498)) )
))
(declare-fun arrayNoDuplicates!0 (array!54566 (_ BitVec 32) List!18498) Bool)

(assert (=> b!915626 (= res!617405 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18495))))

(assert (= (and start!78588 res!617404) b!915623))

(assert (= (and b!915623 res!617406) b!915622))

(assert (= (and b!915622 res!617407) b!915626))

(assert (= (and b!915626 res!617405) b!915619))

(assert (= (and b!915619 res!617408) b!915621))

(assert (= (and b!915624 condMapEmpty!30678) mapIsEmpty!30678))

(assert (= (and b!915624 (not condMapEmpty!30678)) mapNonEmpty!30678))

(get-info :version)

(assert (= (and mapNonEmpty!30678 ((_ is ValueCellFull!9159) mapValue!30678)) b!915620))

(assert (= (and b!915624 ((_ is ValueCellFull!9159) mapDefault!30678)) b!915625))

(assert (= start!78588 b!915624))

(declare-fun m!849983 () Bool)

(assert (=> b!915621 m!849983))

(assert (=> b!915621 m!849983))

(declare-fun m!849985 () Bool)

(assert (=> b!915621 m!849985))

(declare-fun m!849987 () Bool)

(assert (=> b!915622 m!849987))

(declare-fun m!849989 () Bool)

(assert (=> mapNonEmpty!30678 m!849989))

(declare-fun m!849991 () Bool)

(assert (=> start!78588 m!849991))

(declare-fun m!849993 () Bool)

(assert (=> start!78588 m!849993))

(declare-fun m!849995 () Bool)

(assert (=> start!78588 m!849995))

(declare-fun m!849997 () Bool)

(assert (=> b!915626 m!849997))

(check-sat (not b!915621) tp_is_empty!19281 (not b_next!16773) b_and!27413 (not start!78588) (not b!915622) (not b!915626) (not mapNonEmpty!30678))
(check-sat b_and!27413 (not b_next!16773))
