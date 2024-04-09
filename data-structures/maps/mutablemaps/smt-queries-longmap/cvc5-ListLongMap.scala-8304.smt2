; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101208 () Bool)

(assert start!101208)

(declare-fun b_free!26095 () Bool)

(declare-fun b_next!26095 () Bool)

(assert (=> start!101208 (= b_free!26095 (not b_next!26095))))

(declare-fun tp!91308 () Bool)

(declare-fun b_and!43317 () Bool)

(assert (=> start!101208 (= tp!91308 b_and!43317)))

(declare-datatypes ((array!78358 0))(
  ( (array!78359 (arr!37810 (Array (_ BitVec 32) (_ BitVec 64))) (size!38347 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78358)

(declare-fun e!689627 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun b!1214288 () Bool)

(assert (=> b!1214288 (= e!689627 (or (= from!1455 i!673) (bvsge from!1455 i!673) (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!38347 _keys!1208)))))))

(declare-datatypes ((V!46193 0))(
  ( (V!46194 (val!15456 Int)) )
))
(declare-fun zeroValue!944 () V!46193)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!552262 () array!78358)

(declare-datatypes ((tuple2!20006 0))(
  ( (tuple2!20007 (_1!10013 (_ BitVec 64)) (_2!10013 V!46193)) )
))
(declare-datatypes ((List!26825 0))(
  ( (Nil!26822) (Cons!26821 (h!28030 tuple2!20006) (t!39907 List!26825)) )
))
(declare-datatypes ((ListLongMap!17987 0))(
  ( (ListLongMap!17988 (toList!9009 List!26825)) )
))
(declare-fun lt!552263 () ListLongMap!17987)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14690 0))(
  ( (ValueCellFull!14690 (v!18110 V!46193)) (EmptyCell!14690) )
))
(declare-datatypes ((array!78360 0))(
  ( (array!78361 (arr!37811 (Array (_ BitVec 32) ValueCell!14690)) (size!38348 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78360)

(declare-fun minValue!944 () V!46193)

(declare-fun getCurrentListMapNoExtraKeys!5414 (array!78358 array!78360 (_ BitVec 32) (_ BitVec 32) V!46193 V!46193 (_ BitVec 32) Int) ListLongMap!17987)

(declare-fun dynLambda!3323 (Int (_ BitVec 64)) V!46193)

(assert (=> b!1214288 (= lt!552263 (getCurrentListMapNoExtraKeys!5414 lt!552262 (array!78361 (store (arr!37811 _values!996) i!673 (ValueCellFull!14690 (dynLambda!3323 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38348 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!552261 () ListLongMap!17987)

(assert (=> b!1214288 (= lt!552261 (getCurrentListMapNoExtraKeys!5414 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1214289 () Bool)

(declare-fun res!806239 () Bool)

(declare-fun e!689631 () Bool)

(assert (=> b!1214289 (=> (not res!806239) (not e!689631))))

(assert (=> b!1214289 (= res!806239 (and (= (size!38348 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38347 _keys!1208) (size!38348 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1214290 () Bool)

(declare-fun res!806248 () Bool)

(assert (=> b!1214290 (=> (not res!806248) (not e!689631))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1214290 (= res!806248 (validMask!0 mask!1564))))

(declare-fun res!806244 () Bool)

(assert (=> start!101208 (=> (not res!806244) (not e!689631))))

(assert (=> start!101208 (= res!806244 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38347 _keys!1208))))))

(assert (=> start!101208 e!689631))

(declare-fun tp_is_empty!30799 () Bool)

(assert (=> start!101208 tp_is_empty!30799))

(declare-fun array_inv!28698 (array!78358) Bool)

(assert (=> start!101208 (array_inv!28698 _keys!1208)))

(assert (=> start!101208 true))

(assert (=> start!101208 tp!91308))

(declare-fun e!689626 () Bool)

(declare-fun array_inv!28699 (array!78360) Bool)

(assert (=> start!101208 (and (array_inv!28699 _values!996) e!689626)))

(declare-fun mapNonEmpty!48073 () Bool)

(declare-fun mapRes!48073 () Bool)

(declare-fun tp!91307 () Bool)

(declare-fun e!689625 () Bool)

(assert (=> mapNonEmpty!48073 (= mapRes!48073 (and tp!91307 e!689625))))

(declare-fun mapValue!48073 () ValueCell!14690)

(declare-fun mapKey!48073 () (_ BitVec 32))

(declare-fun mapRest!48073 () (Array (_ BitVec 32) ValueCell!14690))

(assert (=> mapNonEmpty!48073 (= (arr!37811 _values!996) (store mapRest!48073 mapKey!48073 mapValue!48073))))

(declare-fun b!1214291 () Bool)

(declare-fun e!689629 () Bool)

(assert (=> b!1214291 (= e!689631 e!689629)))

(declare-fun res!806247 () Bool)

(assert (=> b!1214291 (=> (not res!806247) (not e!689629))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78358 (_ BitVec 32)) Bool)

(assert (=> b!1214291 (= res!806247 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!552262 mask!1564))))

(assert (=> b!1214291 (= lt!552262 (array!78359 (store (arr!37810 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38347 _keys!1208)))))

(declare-fun b!1214292 () Bool)

(declare-fun e!689628 () Bool)

(assert (=> b!1214292 (= e!689628 tp_is_empty!30799)))

(declare-fun b!1214293 () Bool)

(assert (=> b!1214293 (= e!689625 tp_is_empty!30799)))

(declare-fun b!1214294 () Bool)

(assert (=> b!1214294 (= e!689626 (and e!689628 mapRes!48073))))

(declare-fun condMapEmpty!48073 () Bool)

(declare-fun mapDefault!48073 () ValueCell!14690)

