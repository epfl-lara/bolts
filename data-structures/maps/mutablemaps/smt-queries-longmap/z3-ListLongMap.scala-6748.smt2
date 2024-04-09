; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84652 () Bool)

(assert start!84652)

(declare-fun b_free!20049 () Bool)

(declare-fun b_next!20049 () Bool)

(assert (=> start!84652 (= b_free!20049 (not b_next!20049))))

(declare-fun tp!69940 () Bool)

(declare-fun b_and!32199 () Bool)

(assert (=> start!84652 (= tp!69940 b_and!32199)))

(declare-fun b!989525 () Bool)

(declare-fun e!558010 () Bool)

(declare-fun tp_is_empty!23265 () Bool)

(assert (=> b!989525 (= e!558010 tp_is_empty!23265)))

(declare-fun b!989526 () Bool)

(declare-fun res!661812 () Bool)

(declare-fun e!558012 () Bool)

(assert (=> b!989526 (=> (not res!661812) (not e!558012))))

(declare-datatypes ((array!62479 0))(
  ( (array!62480 (arr!30088 (Array (_ BitVec 32) (_ BitVec 64))) (size!30568 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62479)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62479 (_ BitVec 32)) Bool)

(assert (=> b!989526 (= res!661812 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!989527 () Bool)

(declare-fun res!661810 () Bool)

(assert (=> b!989527 (=> (not res!661810) (not e!558012))))

(declare-datatypes ((V!36003 0))(
  ( (V!36004 (val!11683 Int)) )
))
(declare-datatypes ((ValueCell!11151 0))(
  ( (ValueCellFull!11151 (v!14253 V!36003)) (EmptyCell!11151) )
))
(declare-datatypes ((array!62481 0))(
  ( (array!62482 (arr!30089 (Array (_ BitVec 32) ValueCell!11151)) (size!30569 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62481)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!989527 (= res!661810 (and (= (size!30569 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30568 _keys!1544) (size!30569 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!989528 () Bool)

(declare-fun res!661811 () Bool)

(assert (=> b!989528 (=> (not res!661811) (not e!558012))))

(assert (=> b!989528 (= res!661811 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!989529 () Bool)

(declare-fun res!661815 () Bool)

(assert (=> b!989529 (=> (not res!661815) (not e!558012))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!989529 (= res!661815 (validKeyInArray!0 (select (arr!30088 _keys!1544) from!1932)))))

(declare-fun b!989530 () Bool)

(declare-fun e!558014 () Bool)

(assert (=> b!989530 (= e!558014 tp_is_empty!23265)))

(declare-fun b!989531 () Bool)

(declare-fun e!558011 () Bool)

(declare-fun mapRes!36943 () Bool)

(assert (=> b!989531 (= e!558011 (and e!558010 mapRes!36943))))

(declare-fun condMapEmpty!36943 () Bool)

(declare-fun mapDefault!36943 () ValueCell!11151)

(assert (=> b!989531 (= condMapEmpty!36943 (= (arr!30089 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11151)) mapDefault!36943)))))

(declare-fun mapNonEmpty!36943 () Bool)

(declare-fun tp!69939 () Bool)

(assert (=> mapNonEmpty!36943 (= mapRes!36943 (and tp!69939 e!558014))))

(declare-fun mapValue!36943 () ValueCell!11151)

(declare-fun mapRest!36943 () (Array (_ BitVec 32) ValueCell!11151))

(declare-fun mapKey!36943 () (_ BitVec 32))

(assert (=> mapNonEmpty!36943 (= (arr!30089 _values!1278) (store mapRest!36943 mapKey!36943 mapValue!36943))))

(declare-fun res!661816 () Bool)

(assert (=> start!84652 (=> (not res!661816) (not e!558012))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84652 (= res!661816 (validMask!0 mask!1948))))

(assert (=> start!84652 e!558012))

(assert (=> start!84652 true))

(assert (=> start!84652 tp_is_empty!23265))

(declare-fun array_inv!23103 (array!62481) Bool)

(assert (=> start!84652 (and (array_inv!23103 _values!1278) e!558011)))

(assert (=> start!84652 tp!69940))

(declare-fun array_inv!23104 (array!62479) Bool)

(assert (=> start!84652 (array_inv!23104 _keys!1544)))

(declare-fun b!989532 () Bool)

(declare-fun res!661813 () Bool)

(assert (=> b!989532 (=> (not res!661813) (not e!558012))))

(assert (=> b!989532 (= res!661813 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30568 _keys!1544))))))

(declare-fun b!989533 () Bool)

(assert (=> b!989533 (= e!558012 false)))

(declare-fun minValue!1220 () V!36003)

(declare-fun zeroValue!1220 () V!36003)

(declare-datatypes ((tuple2!14986 0))(
  ( (tuple2!14987 (_1!7503 (_ BitVec 64)) (_2!7503 V!36003)) )
))
(declare-datatypes ((List!20936 0))(
  ( (Nil!20933) (Cons!20932 (h!22094 tuple2!14986) (t!29901 List!20936)) )
))
(declare-datatypes ((ListLongMap!13697 0))(
  ( (ListLongMap!13698 (toList!6864 List!20936)) )
))
(declare-fun lt!439046 () ListLongMap!13697)

(declare-fun defaultEntry!1281 () Int)

(declare-fun getCurrentListMapNoExtraKeys!3514 (array!62479 array!62481 (_ BitVec 32) (_ BitVec 32) V!36003 V!36003 (_ BitVec 32) Int) ListLongMap!13697)

(assert (=> b!989533 (= lt!439046 (getCurrentListMapNoExtraKeys!3514 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!989534 () Bool)

(declare-fun res!661814 () Bool)

(assert (=> b!989534 (=> (not res!661814) (not e!558012))))

(declare-datatypes ((List!20937 0))(
  ( (Nil!20934) (Cons!20933 (h!22095 (_ BitVec 64)) (t!29902 List!20937)) )
))
(declare-fun arrayNoDuplicates!0 (array!62479 (_ BitVec 32) List!20937) Bool)

(assert (=> b!989534 (= res!661814 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20934))))

(declare-fun mapIsEmpty!36943 () Bool)

(assert (=> mapIsEmpty!36943 mapRes!36943))

(assert (= (and start!84652 res!661816) b!989527))

(assert (= (and b!989527 res!661810) b!989526))

(assert (= (and b!989526 res!661812) b!989534))

(assert (= (and b!989534 res!661814) b!989532))

(assert (= (and b!989532 res!661813) b!989529))

(assert (= (and b!989529 res!661815) b!989528))

(assert (= (and b!989528 res!661811) b!989533))

(assert (= (and b!989531 condMapEmpty!36943) mapIsEmpty!36943))

(assert (= (and b!989531 (not condMapEmpty!36943)) mapNonEmpty!36943))

(get-info :version)

(assert (= (and mapNonEmpty!36943 ((_ is ValueCellFull!11151) mapValue!36943)) b!989530))

(assert (= (and b!989531 ((_ is ValueCellFull!11151) mapDefault!36943)) b!989525))

(assert (= start!84652 b!989531))

(declare-fun m!917151 () Bool)

(assert (=> b!989526 m!917151))

(declare-fun m!917153 () Bool)

(assert (=> b!989533 m!917153))

(declare-fun m!917155 () Bool)

(assert (=> mapNonEmpty!36943 m!917155))

(declare-fun m!917157 () Bool)

(assert (=> start!84652 m!917157))

(declare-fun m!917159 () Bool)

(assert (=> start!84652 m!917159))

(declare-fun m!917161 () Bool)

(assert (=> start!84652 m!917161))

(declare-fun m!917163 () Bool)

(assert (=> b!989529 m!917163))

(assert (=> b!989529 m!917163))

(declare-fun m!917165 () Bool)

(assert (=> b!989529 m!917165))

(declare-fun m!917167 () Bool)

(assert (=> b!989534 m!917167))

(check-sat (not b!989534) (not start!84652) (not b!989533) (not b!989529) tp_is_empty!23265 (not b!989526) b_and!32199 (not mapNonEmpty!36943) (not b_next!20049))
(check-sat b_and!32199 (not b_next!20049))
