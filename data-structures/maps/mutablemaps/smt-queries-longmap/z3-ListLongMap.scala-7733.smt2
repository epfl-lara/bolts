; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97164 () Bool)

(assert start!97164)

(declare-fun b!1104726 () Bool)

(declare-fun res!737161 () Bool)

(declare-fun e!630604 () Bool)

(assert (=> b!1104726 (=> (not res!737161) (not e!630604))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1104726 (= res!737161 (validMask!0 mask!1564))))

(declare-fun b!1104727 () Bool)

(declare-fun e!630605 () Bool)

(assert (=> b!1104727 (= e!630604 e!630605)))

(declare-fun res!737164 () Bool)

(assert (=> b!1104727 (=> (not res!737164) (not e!630605))))

(declare-datatypes ((array!71626 0))(
  ( (array!71627 (arr!34463 (Array (_ BitVec 32) (_ BitVec 64))) (size!35000 (_ BitVec 32))) )
))
(declare-fun lt!495174 () array!71626)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71626 (_ BitVec 32)) Bool)

(assert (=> b!1104727 (= res!737164 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495174 mask!1564))))

(declare-fun _keys!1208 () array!71626)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1104727 (= lt!495174 (array!71627 (store (arr!34463 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35000 _keys!1208)))))

(declare-fun res!737160 () Bool)

(assert (=> start!97164 (=> (not res!737160) (not e!630604))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97164 (= res!737160 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35000 _keys!1208))))))

(assert (=> start!97164 e!630604))

(declare-fun array_inv!26394 (array!71626) Bool)

(assert (=> start!97164 (array_inv!26394 _keys!1208)))

(assert (=> start!97164 true))

(declare-datatypes ((V!41627 0))(
  ( (V!41628 (val!13744 Int)) )
))
(declare-datatypes ((ValueCell!12978 0))(
  ( (ValueCellFull!12978 (v!16378 V!41627)) (EmptyCell!12978) )
))
(declare-datatypes ((array!71628 0))(
  ( (array!71629 (arr!34464 (Array (_ BitVec 32) ValueCell!12978)) (size!35001 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71628)

(declare-fun e!630607 () Bool)

(declare-fun array_inv!26395 (array!71628) Bool)

(assert (=> start!97164 (and (array_inv!26395 _values!996) e!630607)))

(declare-fun b!1104728 () Bool)

(declare-fun res!737158 () Bool)

(assert (=> b!1104728 (=> (not res!737158) (not e!630604))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1104728 (= res!737158 (= (select (arr!34463 _keys!1208) i!673) k0!934))))

(declare-fun mapNonEmpty!42877 () Bool)

(declare-fun mapRes!42877 () Bool)

(declare-fun tp!81798 () Bool)

(declare-fun e!630602 () Bool)

(assert (=> mapNonEmpty!42877 (= mapRes!42877 (and tp!81798 e!630602))))

(declare-fun mapRest!42877 () (Array (_ BitVec 32) ValueCell!12978))

(declare-fun mapValue!42877 () ValueCell!12978)

(declare-fun mapKey!42877 () (_ BitVec 32))

(assert (=> mapNonEmpty!42877 (= (arr!34464 _values!996) (store mapRest!42877 mapKey!42877 mapValue!42877))))

(declare-fun b!1104729 () Bool)

(declare-fun e!630606 () Bool)

(assert (=> b!1104729 (= e!630607 (and e!630606 mapRes!42877))))

(declare-fun condMapEmpty!42877 () Bool)

(declare-fun mapDefault!42877 () ValueCell!12978)

(assert (=> b!1104729 (= condMapEmpty!42877 (= (arr!34464 _values!996) ((as const (Array (_ BitVec 32) ValueCell!12978)) mapDefault!42877)))))

(declare-fun b!1104730 () Bool)

(declare-fun tp_is_empty!27375 () Bool)

(assert (=> b!1104730 (= e!630602 tp_is_empty!27375)))

(declare-fun b!1104731 () Bool)

(assert (=> b!1104731 (= e!630606 tp_is_empty!27375)))

(declare-fun mapIsEmpty!42877 () Bool)

(assert (=> mapIsEmpty!42877 mapRes!42877))

(declare-fun b!1104732 () Bool)

(declare-fun res!737157 () Bool)

(assert (=> b!1104732 (=> (not res!737157) (not e!630604))))

(assert (=> b!1104732 (= res!737157 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1104733 () Bool)

(declare-fun res!737163 () Bool)

(assert (=> b!1104733 (=> (not res!737163) (not e!630604))))

(assert (=> b!1104733 (= res!737163 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35000 _keys!1208))))))

(declare-fun b!1104734 () Bool)

(assert (=> b!1104734 (= e!630605 false)))

(declare-fun lt!495173 () Bool)

(declare-datatypes ((List!24184 0))(
  ( (Nil!24181) (Cons!24180 (h!25389 (_ BitVec 64)) (t!34456 List!24184)) )
))
(declare-fun arrayNoDuplicates!0 (array!71626 (_ BitVec 32) List!24184) Bool)

(assert (=> b!1104734 (= lt!495173 (arrayNoDuplicates!0 lt!495174 #b00000000000000000000000000000000 Nil!24181))))

(declare-fun b!1104735 () Bool)

(declare-fun res!737159 () Bool)

(assert (=> b!1104735 (=> (not res!737159) (not e!630604))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1104735 (= res!737159 (and (= (size!35001 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35000 _keys!1208) (size!35001 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1104736 () Bool)

(declare-fun res!737156 () Bool)

(assert (=> b!1104736 (=> (not res!737156) (not e!630604))))

(assert (=> b!1104736 (= res!737156 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24181))))

(declare-fun b!1104737 () Bool)

(declare-fun res!737162 () Bool)

(assert (=> b!1104737 (=> (not res!737162) (not e!630604))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1104737 (= res!737162 (validKeyInArray!0 k0!934))))

(assert (= (and start!97164 res!737160) b!1104726))

(assert (= (and b!1104726 res!737161) b!1104735))

(assert (= (and b!1104735 res!737159) b!1104732))

(assert (= (and b!1104732 res!737157) b!1104736))

(assert (= (and b!1104736 res!737156) b!1104733))

(assert (= (and b!1104733 res!737163) b!1104737))

(assert (= (and b!1104737 res!737162) b!1104728))

(assert (= (and b!1104728 res!737158) b!1104727))

(assert (= (and b!1104727 res!737164) b!1104734))

(assert (= (and b!1104729 condMapEmpty!42877) mapIsEmpty!42877))

(assert (= (and b!1104729 (not condMapEmpty!42877)) mapNonEmpty!42877))

(get-info :version)

(assert (= (and mapNonEmpty!42877 ((_ is ValueCellFull!12978) mapValue!42877)) b!1104730))

(assert (= (and b!1104729 ((_ is ValueCellFull!12978) mapDefault!42877)) b!1104731))

(assert (= start!97164 b!1104729))

(declare-fun m!1024479 () Bool)

(assert (=> b!1104736 m!1024479))

(declare-fun m!1024481 () Bool)

(assert (=> b!1104727 m!1024481))

(declare-fun m!1024483 () Bool)

(assert (=> b!1104727 m!1024483))

(declare-fun m!1024485 () Bool)

(assert (=> b!1104728 m!1024485))

(declare-fun m!1024487 () Bool)

(assert (=> b!1104726 m!1024487))

(declare-fun m!1024489 () Bool)

(assert (=> b!1104734 m!1024489))

(declare-fun m!1024491 () Bool)

(assert (=> mapNonEmpty!42877 m!1024491))

(declare-fun m!1024493 () Bool)

(assert (=> b!1104737 m!1024493))

(declare-fun m!1024495 () Bool)

(assert (=> b!1104732 m!1024495))

(declare-fun m!1024497 () Bool)

(assert (=> start!97164 m!1024497))

(declare-fun m!1024499 () Bool)

(assert (=> start!97164 m!1024499))

(check-sat tp_is_empty!27375 (not b!1104737) (not mapNonEmpty!42877) (not b!1104727) (not b!1104736) (not b!1104734) (not b!1104726) (not b!1104732) (not start!97164))
(check-sat)
