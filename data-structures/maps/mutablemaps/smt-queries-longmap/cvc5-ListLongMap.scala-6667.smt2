; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84002 () Bool)

(assert start!84002)

(declare-fun b_free!19729 () Bool)

(declare-fun b_next!19729 () Bool)

(assert (=> start!84002 (= b_free!19729 (not b_next!19729))))

(declare-fun tp!68710 () Bool)

(declare-fun b_and!31565 () Bool)

(assert (=> start!84002 (= tp!68710 b_and!31565)))

(declare-fun mapIsEmpty!36194 () Bool)

(declare-fun mapRes!36194 () Bool)

(assert (=> mapIsEmpty!36194 mapRes!36194))

(declare-fun b!981162 () Bool)

(declare-fun res!656684 () Bool)

(declare-fun e!553164 () Bool)

(assert (=> b!981162 (=> (not res!656684) (not e!553164))))

(declare-datatypes ((array!61549 0))(
  ( (array!61550 (arr!29628 (Array (_ BitVec 32) (_ BitVec 64))) (size!30108 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61549)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61549 (_ BitVec 32)) Bool)

(assert (=> b!981162 (= res!656684 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun res!656681 () Bool)

(assert (=> start!84002 (=> (not res!656681) (not e!553164))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84002 (= res!656681 (validMask!0 mask!1948))))

(assert (=> start!84002 e!553164))

(assert (=> start!84002 true))

(declare-fun tp_is_empty!22777 () Bool)

(assert (=> start!84002 tp_is_empty!22777))

(declare-datatypes ((V!35353 0))(
  ( (V!35354 (val!11439 Int)) )
))
(declare-datatypes ((ValueCell!10907 0))(
  ( (ValueCellFull!10907 (v!14001 V!35353)) (EmptyCell!10907) )
))
(declare-datatypes ((array!61551 0))(
  ( (array!61552 (arr!29629 (Array (_ BitVec 32) ValueCell!10907)) (size!30109 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61551)

(declare-fun e!553163 () Bool)

(declare-fun array_inv!22789 (array!61551) Bool)

(assert (=> start!84002 (and (array_inv!22789 _values!1278) e!553163)))

(assert (=> start!84002 tp!68710))

(declare-fun array_inv!22790 (array!61549) Bool)

(assert (=> start!84002 (array_inv!22790 _keys!1544)))

(declare-fun b!981163 () Bool)

(declare-fun e!553162 () Bool)

(assert (=> b!981163 (= e!553162 tp_is_empty!22777)))

(declare-fun b!981164 () Bool)

(declare-fun res!656682 () Bool)

(assert (=> b!981164 (=> (not res!656682) (not e!553164))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!981164 (= res!656682 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30108 _keys!1544))))))

(declare-fun b!981165 () Bool)

(declare-fun res!656680 () Bool)

(assert (=> b!981165 (=> (not res!656680) (not e!553164))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!981165 (= res!656680 (validKeyInArray!0 (select (arr!29628 _keys!1544) from!1932)))))

(declare-fun b!981166 () Bool)

(declare-fun res!656685 () Bool)

(assert (=> b!981166 (=> (not res!656685) (not e!553164))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!981166 (= res!656685 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!981167 () Bool)

(declare-fun e!553165 () Bool)

(assert (=> b!981167 (= e!553165 tp_is_empty!22777)))

(declare-fun b!981168 () Bool)

(assert (=> b!981168 (= e!553164 false)))

(declare-fun minValue!1220 () V!35353)

(declare-fun zeroValue!1220 () V!35353)

(declare-fun defaultEntry!1281 () Int)

(declare-datatypes ((tuple2!14752 0))(
  ( (tuple2!14753 (_1!7386 (_ BitVec 64)) (_2!7386 V!35353)) )
))
(declare-datatypes ((List!20659 0))(
  ( (Nil!20656) (Cons!20655 (h!21817 tuple2!14752) (t!29350 List!20659)) )
))
(declare-datatypes ((ListLongMap!13463 0))(
  ( (ListLongMap!13464 (toList!6747 List!20659)) )
))
(declare-fun lt!435619 () ListLongMap!13463)

(declare-fun getCurrentListMapNoExtraKeys!3409 (array!61549 array!61551 (_ BitVec 32) (_ BitVec 32) V!35353 V!35353 (_ BitVec 32) Int) ListLongMap!13463)

(assert (=> b!981168 (= lt!435619 (getCurrentListMapNoExtraKeys!3409 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!981169 () Bool)

(declare-fun res!656679 () Bool)

(assert (=> b!981169 (=> (not res!656679) (not e!553164))))

(assert (=> b!981169 (= res!656679 (and (= (size!30109 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30108 _keys!1544) (size!30109 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!981170 () Bool)

(declare-fun res!656683 () Bool)

(assert (=> b!981170 (=> (not res!656683) (not e!553164))))

(declare-datatypes ((List!20660 0))(
  ( (Nil!20657) (Cons!20656 (h!21818 (_ BitVec 64)) (t!29351 List!20660)) )
))
(declare-fun arrayNoDuplicates!0 (array!61549 (_ BitVec 32) List!20660) Bool)

(assert (=> b!981170 (= res!656683 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20657))))

(declare-fun mapNonEmpty!36194 () Bool)

(declare-fun tp!68711 () Bool)

(assert (=> mapNonEmpty!36194 (= mapRes!36194 (and tp!68711 e!553165))))

(declare-fun mapValue!36194 () ValueCell!10907)

(declare-fun mapRest!36194 () (Array (_ BitVec 32) ValueCell!10907))

(declare-fun mapKey!36194 () (_ BitVec 32))

(assert (=> mapNonEmpty!36194 (= (arr!29629 _values!1278) (store mapRest!36194 mapKey!36194 mapValue!36194))))

(declare-fun b!981171 () Bool)

(assert (=> b!981171 (= e!553163 (and e!553162 mapRes!36194))))

(declare-fun condMapEmpty!36194 () Bool)

(declare-fun mapDefault!36194 () ValueCell!10907)

