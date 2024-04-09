; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100046 () Bool)

(assert start!100046)

(declare-fun b_free!25589 () Bool)

(declare-fun b_next!25589 () Bool)

(assert (=> start!100046 (= b_free!25589 (not b_next!25589))))

(declare-fun tp!89481 () Bool)

(declare-fun b_and!42059 () Bool)

(assert (=> start!100046 (= tp!89481 b_and!42059)))

(declare-fun b!1191451 () Bool)

(declare-fun res!792589 () Bool)

(declare-fun e!677311 () Bool)

(assert (=> b!1191451 (=> (not res!792589) (not e!677311))))

(declare-datatypes ((array!77004 0))(
  ( (array!77005 (arr!37148 (Array (_ BitVec 32) (_ BitVec 64))) (size!37685 (_ BitVec 32))) )
))
(declare-fun lt!541808 () array!77004)

(declare-datatypes ((List!26327 0))(
  ( (Nil!26324) (Cons!26323 (h!27532 (_ BitVec 64)) (t!38915 List!26327)) )
))
(declare-fun arrayNoDuplicates!0 (array!77004 (_ BitVec 32) List!26327) Bool)

(assert (=> b!1191451 (= res!792589 (arrayNoDuplicates!0 lt!541808 #b00000000000000000000000000000000 Nil!26324))))

(declare-fun b!1191452 () Bool)

(declare-fun e!677315 () Bool)

(declare-fun tp_is_empty!30119 () Bool)

(assert (=> b!1191452 (= e!677315 tp_is_empty!30119)))

(declare-fun b!1191453 () Bool)

(declare-fun e!677310 () Bool)

(assert (=> b!1191453 (= e!677310 e!677311)))

(declare-fun res!792585 () Bool)

(assert (=> b!1191453 (=> (not res!792585) (not e!677311))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77004 (_ BitVec 32)) Bool)

(assert (=> b!1191453 (= res!792585 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!541808 mask!1564))))

(declare-fun _keys!1208 () array!77004)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1191453 (= lt!541808 (array!77005 (store (arr!37148 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37685 _keys!1208)))))

(declare-fun b!1191454 () Bool)

(declare-fun res!792584 () Bool)

(assert (=> b!1191454 (=> (not res!792584) (not e!677310))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1191454 (= res!792584 (= (select (arr!37148 _keys!1208) i!673) k!934))))

(declare-fun mapIsEmpty!47006 () Bool)

(declare-fun mapRes!47006 () Bool)

(assert (=> mapIsEmpty!47006 mapRes!47006))

(declare-fun b!1191455 () Bool)

(declare-fun res!792592 () Bool)

(assert (=> b!1191455 (=> (not res!792592) (not e!677310))))

(assert (=> b!1191455 (= res!792592 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1191456 () Bool)

(declare-fun e!677316 () Bool)

(declare-fun e!677312 () Bool)

(assert (=> b!1191456 (= e!677316 e!677312)))

(declare-fun res!792588 () Bool)

(assert (=> b!1191456 (=> res!792588 e!677312)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1191456 (= res!792588 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!45285 0))(
  ( (V!45286 (val!15116 Int)) )
))
(declare-fun zeroValue!944 () V!45285)

(declare-datatypes ((tuple2!19566 0))(
  ( (tuple2!19567 (_1!9793 (_ BitVec 64)) (_2!9793 V!45285)) )
))
(declare-datatypes ((List!26328 0))(
  ( (Nil!26325) (Cons!26324 (h!27533 tuple2!19566) (t!38916 List!26328)) )
))
(declare-datatypes ((ListLongMap!17547 0))(
  ( (ListLongMap!17548 (toList!8789 List!26328)) )
))
(declare-fun lt!541812 () ListLongMap!17547)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14350 0))(
  ( (ValueCellFull!14350 (v!17755 V!45285)) (EmptyCell!14350) )
))
(declare-datatypes ((array!77006 0))(
  ( (array!77007 (arr!37149 (Array (_ BitVec 32) ValueCell!14350)) (size!37686 (_ BitVec 32))) )
))
(declare-fun lt!541811 () array!77006)

(declare-fun minValue!944 () V!45285)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5203 (array!77004 array!77006 (_ BitVec 32) (_ BitVec 32) V!45285 V!45285 (_ BitVec 32) Int) ListLongMap!17547)

(assert (=> b!1191456 (= lt!541812 (getCurrentListMapNoExtraKeys!5203 lt!541808 lt!541811 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!77006)

(declare-fun dynLambda!3148 (Int (_ BitVec 64)) V!45285)

(assert (=> b!1191456 (= lt!541811 (array!77007 (store (arr!37149 _values!996) i!673 (ValueCellFull!14350 (dynLambda!3148 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37686 _values!996)))))

(declare-fun lt!541810 () ListLongMap!17547)

(assert (=> b!1191456 (= lt!541810 (getCurrentListMapNoExtraKeys!5203 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapNonEmpty!47006 () Bool)

(declare-fun tp!89482 () Bool)

(assert (=> mapNonEmpty!47006 (= mapRes!47006 (and tp!89482 e!677315))))

(declare-fun mapValue!47006 () ValueCell!14350)

(declare-fun mapRest!47006 () (Array (_ BitVec 32) ValueCell!14350))

(declare-fun mapKey!47006 () (_ BitVec 32))

(assert (=> mapNonEmpty!47006 (= (arr!37149 _values!996) (store mapRest!47006 mapKey!47006 mapValue!47006))))

(declare-fun res!792583 () Bool)

(assert (=> start!100046 (=> (not res!792583) (not e!677310))))

(assert (=> start!100046 (= res!792583 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37685 _keys!1208))))))

(assert (=> start!100046 e!677310))

(assert (=> start!100046 tp_is_empty!30119))

(declare-fun array_inv!28230 (array!77004) Bool)

(assert (=> start!100046 (array_inv!28230 _keys!1208)))

(assert (=> start!100046 true))

(assert (=> start!100046 tp!89481))

(declare-fun e!677313 () Bool)

(declare-fun array_inv!28231 (array!77006) Bool)

(assert (=> start!100046 (and (array_inv!28231 _values!996) e!677313)))

(declare-fun b!1191457 () Bool)

(declare-fun res!792586 () Bool)

(assert (=> b!1191457 (=> (not res!792586) (not e!677310))))

(assert (=> b!1191457 (= res!792586 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37685 _keys!1208))))))

(declare-fun b!1191458 () Bool)

(declare-fun res!792590 () Bool)

(assert (=> b!1191458 (=> (not res!792590) (not e!677310))))

(assert (=> b!1191458 (= res!792590 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26324))))

(declare-fun b!1191459 () Bool)

(declare-fun res!792591 () Bool)

(assert (=> b!1191459 (=> (not res!792591) (not e!677310))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1191459 (= res!792591 (validMask!0 mask!1564))))

(declare-fun b!1191460 () Bool)

(declare-fun e!677314 () Bool)

(assert (=> b!1191460 (= e!677313 (and e!677314 mapRes!47006))))

(declare-fun condMapEmpty!47006 () Bool)

(declare-fun mapDefault!47006 () ValueCell!14350)

