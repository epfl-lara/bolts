; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97670 () Bool)

(assert start!97670)

(declare-fun b!1115575 () Bool)

(declare-fun res!744857 () Bool)

(declare-fun e!635733 () Bool)

(assert (=> b!1115575 (=> (not res!744857) (not e!635733))))

(declare-datatypes ((array!72570 0))(
  ( (array!72571 (arr!34934 (Array (_ BitVec 32) (_ BitVec 64))) (size!35471 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72570)

(declare-datatypes ((List!24456 0))(
  ( (Nil!24453) (Cons!24452 (h!25661 (_ BitVec 64)) (t!34944 List!24456)) )
))
(declare-fun arrayNoDuplicates!0 (array!72570 (_ BitVec 32) List!24456) Bool)

(assert (=> b!1115575 (= res!744857 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24453))))

(declare-fun mapNonEmpty!43615 () Bool)

(declare-fun mapRes!43615 () Bool)

(declare-fun tp!82860 () Bool)

(declare-fun e!635730 () Bool)

(assert (=> mapNonEmpty!43615 (= mapRes!43615 (and tp!82860 e!635730))))

(declare-datatypes ((V!42281 0))(
  ( (V!42282 (val!13989 Int)) )
))
(declare-datatypes ((ValueCell!13223 0))(
  ( (ValueCellFull!13223 (v!16623 V!42281)) (EmptyCell!13223) )
))
(declare-fun mapRest!43615 () (Array (_ BitVec 32) ValueCell!13223))

(declare-fun mapKey!43615 () (_ BitVec 32))

(declare-fun mapValue!43615 () ValueCell!13223)

(declare-datatypes ((array!72572 0))(
  ( (array!72573 (arr!34935 (Array (_ BitVec 32) ValueCell!13223)) (size!35472 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72572)

(assert (=> mapNonEmpty!43615 (= (arr!34935 _values!996) (store mapRest!43615 mapKey!43615 mapValue!43615))))

(declare-fun b!1115576 () Bool)

(declare-fun res!744856 () Bool)

(assert (=> b!1115576 (=> (not res!744856) (not e!635733))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1115576 (= res!744856 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35471 _keys!1208))))))

(declare-fun b!1115577 () Bool)

(declare-fun tp_is_empty!27865 () Bool)

(assert (=> b!1115577 (= e!635730 tp_is_empty!27865)))

(declare-fun b!1115579 () Bool)

(declare-fun res!744861 () Bool)

(assert (=> b!1115579 (=> (not res!744861) (not e!635733))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72570 (_ BitVec 32)) Bool)

(assert (=> b!1115579 (= res!744861 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1115580 () Bool)

(declare-fun res!744853 () Bool)

(assert (=> b!1115580 (=> (not res!744853) (not e!635733))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1115580 (= res!744853 (= (select (arr!34934 _keys!1208) i!673) k!934))))

(declare-fun b!1115581 () Bool)

(declare-fun res!744858 () Bool)

(declare-fun e!635732 () Bool)

(assert (=> b!1115581 (=> (not res!744858) (not e!635732))))

(declare-fun lt!496983 () array!72570)

(assert (=> b!1115581 (= res!744858 (arrayNoDuplicates!0 lt!496983 #b00000000000000000000000000000000 Nil!24453))))

(declare-fun b!1115582 () Bool)

(declare-fun e!635731 () Bool)

(assert (=> b!1115582 (= e!635731 tp_is_empty!27865)))

(declare-fun b!1115583 () Bool)

(declare-fun res!744859 () Bool)

(assert (=> b!1115583 (=> (not res!744859) (not e!635733))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1115583 (= res!744859 (validKeyInArray!0 k!934))))

(declare-fun b!1115584 () Bool)

(declare-fun res!744852 () Bool)

(assert (=> b!1115584 (=> (not res!744852) (not e!635733))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1115584 (= res!744852 (validMask!0 mask!1564))))

(declare-fun b!1115585 () Bool)

(assert (=> b!1115585 (= e!635733 e!635732)))

(declare-fun res!744854 () Bool)

(assert (=> b!1115585 (=> (not res!744854) (not e!635732))))

(assert (=> b!1115585 (= res!744854 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496983 mask!1564))))

(assert (=> b!1115585 (= lt!496983 (array!72571 (store (arr!34934 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35471 _keys!1208)))))

(declare-fun b!1115586 () Bool)

(declare-fun res!744855 () Bool)

(assert (=> b!1115586 (=> (not res!744855) (not e!635733))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1115586 (= res!744855 (and (= (size!35472 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35471 _keys!1208) (size!35472 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1115578 () Bool)

(declare-fun e!635735 () Bool)

(assert (=> b!1115578 (= e!635735 (and e!635731 mapRes!43615))))

(declare-fun condMapEmpty!43615 () Bool)

(declare-fun mapDefault!43615 () ValueCell!13223)

