; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84404 () Bool)

(assert start!84404)

(declare-fun b_free!19963 () Bool)

(declare-fun b_next!19963 () Bool)

(assert (=> start!84404 (= b_free!19963 (not b_next!19963))))

(declare-fun tp!69664 () Bool)

(declare-fun b_and!32015 () Bool)

(assert (=> start!84404 (= tp!69664 b_and!32015)))

(declare-fun b!986805 () Bool)

(declare-fun res!660301 () Bool)

(declare-fun e!556501 () Bool)

(assert (=> b!986805 (=> (not res!660301) (not e!556501))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!62305 0))(
  ( (array!62306 (arr!30006 (Array (_ BitVec 32) (_ BitVec 64))) (size!30486 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62305)

(assert (=> b!986805 (= res!660301 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30486 _keys!1544))))))

(declare-fun mapIsEmpty!36797 () Bool)

(declare-fun mapRes!36797 () Bool)

(assert (=> mapIsEmpty!36797 mapRes!36797))

(declare-fun b!986806 () Bool)

(declare-fun res!660300 () Bool)

(assert (=> b!986806 (=> (not res!660300) (not e!556501))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62305 (_ BitVec 32)) Bool)

(assert (=> b!986806 (= res!660300 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!986807 () Bool)

(declare-fun e!556502 () Bool)

(declare-fun tp_is_empty!23179 () Bool)

(assert (=> b!986807 (= e!556502 tp_is_empty!23179)))

(declare-fun b!986808 () Bool)

(declare-fun e!556505 () Bool)

(assert (=> b!986808 (= e!556505 tp_is_empty!23179)))

(declare-fun b!986809 () Bool)

(declare-fun res!660302 () Bool)

(assert (=> b!986809 (=> (not res!660302) (not e!556501))))

(declare-datatypes ((V!35889 0))(
  ( (V!35890 (val!11640 Int)) )
))
(declare-datatypes ((ValueCell!11108 0))(
  ( (ValueCellFull!11108 (v!14202 V!35889)) (EmptyCell!11108) )
))
(declare-datatypes ((array!62307 0))(
  ( (array!62308 (arr!30007 (Array (_ BitVec 32) ValueCell!11108)) (size!30487 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62307)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!986809 (= res!660302 (and (= (size!30487 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30486 _keys!1544) (size!30487 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!36797 () Bool)

(declare-fun tp!69665 () Bool)

(assert (=> mapNonEmpty!36797 (= mapRes!36797 (and tp!69665 e!556502))))

(declare-fun mapRest!36797 () (Array (_ BitVec 32) ValueCell!11108))

(declare-fun mapKey!36797 () (_ BitVec 32))

(declare-fun mapValue!36797 () ValueCell!11108)

(assert (=> mapNonEmpty!36797 (= (arr!30007 _values!1278) (store mapRest!36797 mapKey!36797 mapValue!36797))))

(declare-fun b!986810 () Bool)

(declare-fun res!660297 () Bool)

(assert (=> b!986810 (=> (not res!660297) (not e!556501))))

(declare-datatypes ((List!20873 0))(
  ( (Nil!20870) (Cons!20869 (h!22031 (_ BitVec 64)) (t!29780 List!20873)) )
))
(declare-fun arrayNoDuplicates!0 (array!62305 (_ BitVec 32) List!20873) Bool)

(assert (=> b!986810 (= res!660297 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20870))))

(declare-fun b!986812 () Bool)

(assert (=> b!986812 (= e!556501 (bvsge from!1932 (size!30487 _values!1278)))))

(declare-fun minValue!1220 () V!35889)

(declare-fun zeroValue!1220 () V!35889)

(declare-fun defaultEntry!1281 () Int)

(declare-datatypes ((tuple2!14924 0))(
  ( (tuple2!14925 (_1!7472 (_ BitVec 64)) (_2!7472 V!35889)) )
))
(declare-datatypes ((List!20874 0))(
  ( (Nil!20871) (Cons!20870 (h!22032 tuple2!14924) (t!29781 List!20874)) )
))
(declare-datatypes ((ListLongMap!13635 0))(
  ( (ListLongMap!13636 (toList!6833 List!20874)) )
))
(declare-fun lt!437509 () ListLongMap!13635)

(declare-fun +!3021 (ListLongMap!13635 tuple2!14924) ListLongMap!13635)

(declare-fun getCurrentListMapNoExtraKeys!3486 (array!62305 array!62307 (_ BitVec 32) (_ BitVec 32) V!35889 V!35889 (_ BitVec 32) Int) ListLongMap!13635)

(assert (=> b!986812 (= lt!437509 (+!3021 (getCurrentListMapNoExtraKeys!3486 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) (tuple2!14925 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))

(declare-fun b!986813 () Bool)

(declare-fun res!660298 () Bool)

(assert (=> b!986813 (=> (not res!660298) (not e!556501))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!986813 (= res!660298 (validKeyInArray!0 (select (arr!30006 _keys!1544) from!1932)))))

(declare-fun b!986814 () Bool)

(declare-fun e!556504 () Bool)

(assert (=> b!986814 (= e!556504 (and e!556505 mapRes!36797))))

(declare-fun condMapEmpty!36797 () Bool)

(declare-fun mapDefault!36797 () ValueCell!11108)

