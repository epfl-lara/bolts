; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84282 () Bool)

(assert start!84282)

(declare-fun b_free!19955 () Bool)

(declare-fun b_next!19955 () Bool)

(assert (=> start!84282 (= b_free!19955 (not b_next!19955))))

(declare-fun tp!69470 () Bool)

(declare-fun b_and!32005 () Bool)

(assert (=> start!84282 (= tp!69470 b_and!32005)))

(declare-fun b!985603 () Bool)

(declare-fun e!555587 () Bool)

(declare-fun tp_is_empty!23057 () Bool)

(assert (=> b!985603 (= e!555587 tp_is_empty!23057)))

(declare-fun b!985604 () Bool)

(declare-fun res!659647 () Bool)

(declare-fun e!555585 () Bool)

(assert (=> b!985604 (=> (not res!659647) (not e!555585))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35725 0))(
  ( (V!35726 (val!11579 Int)) )
))
(declare-datatypes ((ValueCell!11047 0))(
  ( (ValueCellFull!11047 (v!14141 V!35725)) (EmptyCell!11047) )
))
(declare-datatypes ((array!62079 0))(
  ( (array!62080 (arr!29893 (Array (_ BitVec 32) ValueCell!11047)) (size!30373 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62079)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!62081 0))(
  ( (array!62082 (arr!29894 (Array (_ BitVec 32) (_ BitVec 64))) (size!30374 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62081)

(assert (=> b!985604 (= res!659647 (and (= (size!30373 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30374 _keys!1544) (size!30373 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!36614 () Bool)

(declare-fun mapRes!36614 () Bool)

(assert (=> mapIsEmpty!36614 mapRes!36614))

(declare-fun b!985605 () Bool)

(declare-fun res!659649 () Bool)

(assert (=> b!985605 (=> (not res!659649) (not e!555585))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!985605 (= res!659649 (validKeyInArray!0 (select (arr!29894 _keys!1544) from!1932)))))

(declare-fun b!985606 () Bool)

(declare-fun res!659652 () Bool)

(assert (=> b!985606 (=> (not res!659652) (not e!555585))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62081 (_ BitVec 32)) Bool)

(assert (=> b!985606 (= res!659652 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!985607 () Bool)

(declare-fun e!555586 () Bool)

(assert (=> b!985607 (= e!555586 (not (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!14918 0))(
  ( (tuple2!14919 (_1!7469 (_ BitVec 64)) (_2!7469 V!35725)) )
))
(declare-datatypes ((List!20835 0))(
  ( (Nil!20832) (Cons!20831 (h!21993 tuple2!14918) (t!29742 List!20835)) )
))
(declare-datatypes ((ListLongMap!13629 0))(
  ( (ListLongMap!13630 (toList!6830 List!20835)) )
))
(declare-fun lt!437325 () ListLongMap!13629)

(declare-fun lt!437326 () tuple2!14918)

(declare-fun lt!437322 () tuple2!14918)

(declare-fun +!3018 (ListLongMap!13629 tuple2!14918) ListLongMap!13629)

(assert (=> b!985607 (= (+!3018 (+!3018 lt!437325 lt!437326) lt!437322) (+!3018 (+!3018 lt!437325 lt!437322) lt!437326))))

(declare-fun lt!437324 () V!35725)

(assert (=> b!985607 (= lt!437322 (tuple2!14919 (select (arr!29894 _keys!1544) from!1932) lt!437324))))

(declare-fun minValue!1220 () V!35725)

(assert (=> b!985607 (= lt!437326 (tuple2!14919 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32711 0))(
  ( (Unit!32712) )
))
(declare-fun lt!437323 () Unit!32711)

(declare-fun addCommutativeForDiffKeys!680 (ListLongMap!13629 (_ BitVec 64) V!35725 (_ BitVec 64) V!35725) Unit!32711)

(assert (=> b!985607 (= lt!437323 (addCommutativeForDiffKeys!680 lt!437325 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29894 _keys!1544) from!1932) lt!437324))))

(declare-fun b!985608 () Bool)

(declare-fun res!659646 () Bool)

(assert (=> b!985608 (=> (not res!659646) (not e!555585))))

(assert (=> b!985608 (= res!659646 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!36614 () Bool)

(declare-fun tp!69469 () Bool)

(assert (=> mapNonEmpty!36614 (= mapRes!36614 (and tp!69469 e!555587))))

(declare-fun mapRest!36614 () (Array (_ BitVec 32) ValueCell!11047))

(declare-fun mapValue!36614 () ValueCell!11047)

(declare-fun mapKey!36614 () (_ BitVec 32))

(assert (=> mapNonEmpty!36614 (= (arr!29893 _values!1278) (store mapRest!36614 mapKey!36614 mapValue!36614))))

(declare-fun b!985609 () Bool)

(declare-fun res!659648 () Bool)

(assert (=> b!985609 (=> (not res!659648) (not e!555585))))

(declare-datatypes ((List!20836 0))(
  ( (Nil!20833) (Cons!20832 (h!21994 (_ BitVec 64)) (t!29743 List!20836)) )
))
(declare-fun arrayNoDuplicates!0 (array!62081 (_ BitVec 32) List!20836) Bool)

(assert (=> b!985609 (= res!659648 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20833))))

(declare-fun b!985610 () Bool)

(declare-fun e!555588 () Bool)

(assert (=> b!985610 (= e!555588 tp_is_empty!23057)))

(declare-fun res!659650 () Bool)

(assert (=> start!84282 (=> (not res!659650) (not e!555585))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84282 (= res!659650 (validMask!0 mask!1948))))

(assert (=> start!84282 e!555585))

(assert (=> start!84282 true))

(assert (=> start!84282 tp_is_empty!23057))

(declare-fun e!555589 () Bool)

(declare-fun array_inv!22973 (array!62079) Bool)

(assert (=> start!84282 (and (array_inv!22973 _values!1278) e!555589)))

(assert (=> start!84282 tp!69470))

(declare-fun array_inv!22974 (array!62081) Bool)

(assert (=> start!84282 (array_inv!22974 _keys!1544)))

(declare-fun b!985602 () Bool)

(assert (=> b!985602 (= e!555589 (and e!555588 mapRes!36614))))

(declare-fun condMapEmpty!36614 () Bool)

(declare-fun mapDefault!36614 () ValueCell!11047)

