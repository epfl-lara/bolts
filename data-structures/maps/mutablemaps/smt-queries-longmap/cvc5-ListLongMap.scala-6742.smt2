; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84544 () Bool)

(assert start!84544)

(declare-fun b_free!20011 () Bool)

(declare-fun b_next!20011 () Bool)

(assert (=> start!84544 (= b_free!20011 (not b_next!20011))))

(declare-fun tp!69819 () Bool)

(declare-fun b_and!32123 () Bool)

(assert (=> start!84544 (= tp!69819 b_and!32123)))

(declare-fun mapIsEmpty!36879 () Bool)

(declare-fun mapRes!36879 () Bool)

(assert (=> mapIsEmpty!36879 mapRes!36879))

(declare-fun b!988342 () Bool)

(declare-fun e!557351 () Bool)

(declare-fun tp_is_empty!23227 () Bool)

(assert (=> b!988342 (= e!557351 tp_is_empty!23227)))

(declare-fun b!988343 () Bool)

(declare-fun res!661147 () Bool)

(declare-fun e!557350 () Bool)

(assert (=> b!988343 (=> (not res!661147) (not e!557350))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35953 0))(
  ( (V!35954 (val!11664 Int)) )
))
(declare-datatypes ((ValueCell!11132 0))(
  ( (ValueCellFull!11132 (v!14231 V!35953)) (EmptyCell!11132) )
))
(declare-datatypes ((array!62403 0))(
  ( (array!62404 (arr!30052 (Array (_ BitVec 32) ValueCell!11132)) (size!30532 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62403)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!62405 0))(
  ( (array!62406 (arr!30053 (Array (_ BitVec 32) (_ BitVec 64))) (size!30533 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62405)

(assert (=> b!988343 (= res!661147 (and (= (size!30532 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30533 _keys!1544) (size!30532 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!988344 () Bool)

(declare-fun res!661153 () Bool)

(assert (=> b!988344 (=> (not res!661153) (not e!557350))))

(declare-datatypes ((List!20910 0))(
  ( (Nil!20907) (Cons!20906 (h!22068 (_ BitVec 64)) (t!29855 List!20910)) )
))
(declare-fun arrayNoDuplicates!0 (array!62405 (_ BitVec 32) List!20910) Bool)

(assert (=> b!988344 (= res!661153 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20907))))

(declare-fun b!988345 () Bool)

(assert (=> b!988345 (= e!557350 false)))

(declare-datatypes ((tuple2!14958 0))(
  ( (tuple2!14959 (_1!7489 (_ BitVec 64)) (_2!7489 V!35953)) )
))
(declare-datatypes ((List!20911 0))(
  ( (Nil!20908) (Cons!20907 (h!22069 tuple2!14958) (t!29856 List!20911)) )
))
(declare-datatypes ((ListLongMap!13669 0))(
  ( (ListLongMap!13670 (toList!6850 List!20911)) )
))
(declare-fun lt!438468 () ListLongMap!13669)

(declare-fun minValue!1220 () V!35953)

(declare-fun zeroValue!1220 () V!35953)

(declare-fun defaultEntry!1281 () Int)

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3500 (array!62405 array!62403 (_ BitVec 32) (_ BitVec 32) V!35953 V!35953 (_ BitVec 32) Int) ListLongMap!13669)

(assert (=> b!988345 (= lt!438468 (getCurrentListMapNoExtraKeys!3500 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!988346 () Bool)

(declare-fun res!661151 () Bool)

(assert (=> b!988346 (=> (not res!661151) (not e!557350))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!988346 (= res!661151 (validKeyInArray!0 (select (arr!30053 _keys!1544) from!1932)))))

(declare-fun b!988347 () Bool)

(declare-fun res!661152 () Bool)

(assert (=> b!988347 (=> (not res!661152) (not e!557350))))

(assert (=> b!988347 (= res!661152 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30533 _keys!1544))))))

(declare-fun b!988348 () Bool)

(declare-fun e!557349 () Bool)

(assert (=> b!988348 (= e!557349 tp_is_empty!23227)))

(declare-fun res!661149 () Bool)

(assert (=> start!84544 (=> (not res!661149) (not e!557350))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84544 (= res!661149 (validMask!0 mask!1948))))

(assert (=> start!84544 e!557350))

(assert (=> start!84544 true))

(assert (=> start!84544 tp_is_empty!23227))

(declare-fun e!557348 () Bool)

(declare-fun array_inv!23075 (array!62403) Bool)

(assert (=> start!84544 (and (array_inv!23075 _values!1278) e!557348)))

(assert (=> start!84544 tp!69819))

(declare-fun array_inv!23076 (array!62405) Bool)

(assert (=> start!84544 (array_inv!23076 _keys!1544)))

(declare-fun b!988349 () Bool)

(declare-fun res!661148 () Bool)

(assert (=> b!988349 (=> (not res!661148) (not e!557350))))

(assert (=> b!988349 (= res!661148 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!36879 () Bool)

(declare-fun tp!69818 () Bool)

(assert (=> mapNonEmpty!36879 (= mapRes!36879 (and tp!69818 e!557351))))

(declare-fun mapRest!36879 () (Array (_ BitVec 32) ValueCell!11132))

(declare-fun mapKey!36879 () (_ BitVec 32))

(declare-fun mapValue!36879 () ValueCell!11132)

(assert (=> mapNonEmpty!36879 (= (arr!30052 _values!1278) (store mapRest!36879 mapKey!36879 mapValue!36879))))

(declare-fun b!988350 () Bool)

(declare-fun res!661150 () Bool)

(assert (=> b!988350 (=> (not res!661150) (not e!557350))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62405 (_ BitVec 32)) Bool)

(assert (=> b!988350 (= res!661150 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!988351 () Bool)

(assert (=> b!988351 (= e!557348 (and e!557349 mapRes!36879))))

(declare-fun condMapEmpty!36879 () Bool)

(declare-fun mapDefault!36879 () ValueCell!11132)

