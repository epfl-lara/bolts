; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133894 () Bool)

(assert start!133894)

(declare-fun b_free!32123 () Bool)

(declare-fun b_next!32123 () Bool)

(assert (=> start!133894 (= b_free!32123 (not b_next!32123))))

(declare-fun tp!113665 () Bool)

(declare-fun b_and!51703 () Bool)

(assert (=> start!133894 (= tp!113665 b_and!51703)))

(declare-fun b!1564844 () Bool)

(declare-fun res!1069849 () Bool)

(declare-fun e!872239 () Bool)

(assert (=> b!1564844 (=> (not res!1069849) (not e!872239))))

(declare-datatypes ((array!104453 0))(
  ( (array!104454 (arr!50411 (Array (_ BitVec 32) (_ BitVec 64))) (size!50962 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104453)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1564844 (= res!1069849 (validKeyInArray!0 (select (arr!50411 _keys!637) from!782)))))

(declare-fun res!1069850 () Bool)

(assert (=> start!133894 (=> (not res!1069850) (not e!872239))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133894 (= res!1069850 (validMask!0 mask!947))))

(assert (=> start!133894 e!872239))

(assert (=> start!133894 tp!113665))

(declare-fun tp_is_empty!38897 () Bool)

(assert (=> start!133894 tp_is_empty!38897))

(assert (=> start!133894 true))

(declare-fun array_inv!39097 (array!104453) Bool)

(assert (=> start!133894 (array_inv!39097 _keys!637)))

(declare-datatypes ((V!60069 0))(
  ( (V!60070 (val!19532 Int)) )
))
(declare-datatypes ((ValueCell!18418 0))(
  ( (ValueCellFull!18418 (v!22283 V!60069)) (EmptyCell!18418) )
))
(declare-datatypes ((array!104455 0))(
  ( (array!104456 (arr!50412 (Array (_ BitVec 32) ValueCell!18418)) (size!50963 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104455)

(declare-fun e!872242 () Bool)

(declare-fun array_inv!39098 (array!104455) Bool)

(assert (=> start!133894 (and (array_inv!39098 _values!487) e!872242)))

(declare-fun mapNonEmpty!59731 () Bool)

(declare-fun mapRes!59731 () Bool)

(declare-fun tp!113666 () Bool)

(declare-fun e!872243 () Bool)

(assert (=> mapNonEmpty!59731 (= mapRes!59731 (and tp!113666 e!872243))))

(declare-fun mapKey!59731 () (_ BitVec 32))

(declare-fun mapRest!59731 () (Array (_ BitVec 32) ValueCell!18418))

(declare-fun mapValue!59731 () ValueCell!18418)

(assert (=> mapNonEmpty!59731 (= (arr!50412 _values!487) (store mapRest!59731 mapKey!59731 mapValue!59731))))

(declare-fun b!1564845 () Bool)

(declare-fun e!872240 () Bool)

(assert (=> b!1564845 (= e!872240 tp_is_empty!38897)))

(declare-fun mapIsEmpty!59731 () Bool)

(assert (=> mapIsEmpty!59731 mapRes!59731))

(declare-fun b!1564846 () Bool)

(assert (=> b!1564846 (= e!872239 false)))

(declare-fun defaultEntry!495 () Int)

(declare-fun zeroValue!453 () V!60069)

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!60069)

(declare-datatypes ((tuple2!25360 0))(
  ( (tuple2!25361 (_1!12690 (_ BitVec 64)) (_2!12690 V!60069)) )
))
(declare-datatypes ((List!36747 0))(
  ( (Nil!36744) (Cons!36743 (h!38190 tuple2!25360) (t!51601 List!36747)) )
))
(declare-datatypes ((ListLongMap!22807 0))(
  ( (ListLongMap!22808 (toList!11419 List!36747)) )
))
(declare-fun lt!672047 () ListLongMap!22807)

(declare-fun getCurrentListMapNoExtraKeys!6759 (array!104453 array!104455 (_ BitVec 32) (_ BitVec 32) V!60069 V!60069 (_ BitVec 32) Int) ListLongMap!22807)

(assert (=> b!1564846 (= lt!672047 (getCurrentListMapNoExtraKeys!6759 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1564847 () Bool)

(declare-fun res!1069854 () Bool)

(assert (=> b!1564847 (=> (not res!1069854) (not e!872239))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104453 (_ BitVec 32)) Bool)

(assert (=> b!1564847 (= res!1069854 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1564848 () Bool)

(declare-fun res!1069853 () Bool)

(assert (=> b!1564848 (=> (not res!1069853) (not e!872239))))

(assert (=> b!1564848 (= res!1069853 (and (= (size!50963 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50962 _keys!637) (size!50963 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1564849 () Bool)

(declare-fun res!1069851 () Bool)

(assert (=> b!1564849 (=> (not res!1069851) (not e!872239))))

(assert (=> b!1564849 (= res!1069851 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50962 _keys!637)) (bvslt from!782 (size!50962 _keys!637))))))

(declare-fun b!1564850 () Bool)

(declare-fun res!1069852 () Bool)

(assert (=> b!1564850 (=> (not res!1069852) (not e!872239))))

(declare-datatypes ((List!36748 0))(
  ( (Nil!36745) (Cons!36744 (h!38191 (_ BitVec 64)) (t!51602 List!36748)) )
))
(declare-fun arrayNoDuplicates!0 (array!104453 (_ BitVec 32) List!36748) Bool)

(assert (=> b!1564850 (= res!1069852 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36745))))

(declare-fun b!1564851 () Bool)

(assert (=> b!1564851 (= e!872243 tp_is_empty!38897)))

(declare-fun b!1564852 () Bool)

(assert (=> b!1564852 (= e!872242 (and e!872240 mapRes!59731))))

(declare-fun condMapEmpty!59731 () Bool)

(declare-fun mapDefault!59731 () ValueCell!18418)

