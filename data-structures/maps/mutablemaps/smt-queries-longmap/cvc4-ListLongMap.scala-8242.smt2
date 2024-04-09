; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100440 () Bool)

(assert start!100440)

(declare-fun b_free!25727 () Bool)

(declare-fun b_next!25727 () Bool)

(assert (=> start!100440 (= b_free!25727 (not b_next!25727))))

(declare-fun tp!90172 () Bool)

(declare-fun b_and!42357 () Bool)

(assert (=> start!100440 (= tp!90172 b_and!42357)))

(declare-fun b!1198334 () Bool)

(declare-fun res!797622 () Bool)

(declare-fun e!680750 () Bool)

(assert (=> b!1198334 (=> (not res!797622) (not e!680750))))

(declare-datatypes ((array!77624 0))(
  ( (array!77625 (arr!37453 (Array (_ BitVec 32) (_ BitVec 64))) (size!37990 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77624)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!45701 0))(
  ( (V!45702 (val!15272 Int)) )
))
(declare-datatypes ((ValueCell!14506 0))(
  ( (ValueCellFull!14506 (v!17911 V!45701)) (EmptyCell!14506) )
))
(declare-datatypes ((array!77626 0))(
  ( (array!77627 (arr!37454 (Array (_ BitVec 32) ValueCell!14506)) (size!37991 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77626)

(assert (=> b!1198334 (= res!797622 (and (= (size!37991 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37990 _keys!1208) (size!37991 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!47489 () Bool)

(declare-fun mapRes!47489 () Bool)

(assert (=> mapIsEmpty!47489 mapRes!47489))

(declare-fun b!1198335 () Bool)

(declare-fun res!797618 () Bool)

(assert (=> b!1198335 (=> (not res!797618) (not e!680750))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1198335 (= res!797618 (validKeyInArray!0 k!934))))

(declare-fun b!1198336 () Bool)

(declare-fun res!797625 () Bool)

(assert (=> b!1198336 (=> (not res!797625) (not e!680750))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77624 (_ BitVec 32)) Bool)

(assert (=> b!1198336 (= res!797625 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1198337 () Bool)

(declare-fun e!680754 () Bool)

(declare-fun tp_is_empty!30431 () Bool)

(assert (=> b!1198337 (= e!680754 tp_is_empty!30431)))

(declare-fun b!1198338 () Bool)

(declare-fun res!797621 () Bool)

(declare-fun e!680753 () Bool)

(assert (=> b!1198338 (=> (not res!797621) (not e!680753))))

(declare-fun lt!543433 () array!77624)

(declare-datatypes ((List!26513 0))(
  ( (Nil!26510) (Cons!26509 (h!27718 (_ BitVec 64)) (t!39227 List!26513)) )
))
(declare-fun arrayNoDuplicates!0 (array!77624 (_ BitVec 32) List!26513) Bool)

(assert (=> b!1198338 (= res!797621 (arrayNoDuplicates!0 lt!543433 #b00000000000000000000000000000000 Nil!26510))))

(declare-fun b!1198339 () Bool)

(assert (=> b!1198339 (= e!680750 e!680753)))

(declare-fun res!797626 () Bool)

(assert (=> b!1198339 (=> (not res!797626) (not e!680753))))

(assert (=> b!1198339 (= res!797626 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543433 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1198339 (= lt!543433 (array!77625 (store (arr!37453 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37990 _keys!1208)))))

(declare-fun b!1198340 () Bool)

(declare-fun e!680751 () Bool)

(assert (=> b!1198340 (= e!680751 (bvslt i!673 (size!37991 _values!996)))))

(declare-fun zeroValue!944 () V!45701)

(declare-datatypes ((tuple2!19686 0))(
  ( (tuple2!19687 (_1!9853 (_ BitVec 64)) (_2!9853 V!45701)) )
))
(declare-datatypes ((List!26514 0))(
  ( (Nil!26511) (Cons!26510 (h!27719 tuple2!19686) (t!39228 List!26514)) )
))
(declare-datatypes ((ListLongMap!17667 0))(
  ( (ListLongMap!17668 (toList!8849 List!26514)) )
))
(declare-fun lt!543432 () ListLongMap!17667)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!45701)

(declare-fun getCurrentListMapNoExtraKeys!5262 (array!77624 array!77626 (_ BitVec 32) (_ BitVec 32) V!45701 V!45701 (_ BitVec 32) Int) ListLongMap!17667)

(assert (=> b!1198340 (= lt!543432 (getCurrentListMapNoExtraKeys!5262 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun res!797624 () Bool)

(assert (=> start!100440 (=> (not res!797624) (not e!680750))))

(assert (=> start!100440 (= res!797624 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37990 _keys!1208))))))

(assert (=> start!100440 e!680750))

(assert (=> start!100440 tp_is_empty!30431))

(declare-fun array_inv!28448 (array!77624) Bool)

(assert (=> start!100440 (array_inv!28448 _keys!1208)))

(assert (=> start!100440 true))

(assert (=> start!100440 tp!90172))

(declare-fun e!680749 () Bool)

(declare-fun array_inv!28449 (array!77626) Bool)

(assert (=> start!100440 (and (array_inv!28449 _values!996) e!680749)))

(declare-fun b!1198341 () Bool)

(assert (=> b!1198341 (= e!680753 (not e!680751))))

(declare-fun res!797627 () Bool)

(assert (=> b!1198341 (=> res!797627 e!680751)))

(assert (=> b!1198341 (= res!797627 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77624 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1198341 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39664 0))(
  ( (Unit!39665) )
))
(declare-fun lt!543431 () Unit!39664)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77624 (_ BitVec 64) (_ BitVec 32)) Unit!39664)

(assert (=> b!1198341 (= lt!543431 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1198342 () Bool)

(declare-fun e!680752 () Bool)

(assert (=> b!1198342 (= e!680752 tp_is_empty!30431)))

(declare-fun b!1198343 () Bool)

(declare-fun res!797620 () Bool)

(assert (=> b!1198343 (=> (not res!797620) (not e!680750))))

(assert (=> b!1198343 (= res!797620 (= (select (arr!37453 _keys!1208) i!673) k!934))))

(declare-fun b!1198344 () Bool)

(assert (=> b!1198344 (= e!680749 (and e!680754 mapRes!47489))))

(declare-fun condMapEmpty!47489 () Bool)

(declare-fun mapDefault!47489 () ValueCell!14506)

