; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84254 () Bool)

(assert start!84254)

(declare-fun b_free!19927 () Bool)

(declare-fun b_next!19927 () Bool)

(assert (=> start!84254 (= b_free!19927 (not b_next!19927))))

(declare-fun tp!69386 () Bool)

(declare-fun b_and!31949 () Bool)

(assert (=> start!84254 (= tp!69386 b_and!31949)))

(declare-fun b!985112 () Bool)

(declare-fun res!659313 () Bool)

(declare-fun e!555336 () Bool)

(assert (=> b!985112 (=> (not res!659313) (not e!555336))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!62023 0))(
  ( (array!62024 (arr!29865 (Array (_ BitVec 32) (_ BitVec 64))) (size!30345 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62023)

(assert (=> b!985112 (= res!659313 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30345 _keys!1544))))))

(declare-fun b!985113 () Bool)

(declare-fun res!659314 () Bool)

(assert (=> b!985113 (=> (not res!659314) (not e!555336))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!985113 (= res!659314 (validKeyInArray!0 (select (arr!29865 _keys!1544) from!1932)))))

(declare-fun b!985114 () Bool)

(declare-fun e!555337 () Bool)

(declare-fun tp_is_empty!23029 () Bool)

(assert (=> b!985114 (= e!555337 tp_is_empty!23029)))

(declare-fun b!985115 () Bool)

(declare-fun res!659311 () Bool)

(assert (=> b!985115 (=> (not res!659311) (not e!555336))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!985115 (= res!659311 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!659309 () Bool)

(assert (=> start!84254 (=> (not res!659309) (not e!555336))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84254 (= res!659309 (validMask!0 mask!1948))))

(assert (=> start!84254 e!555336))

(assert (=> start!84254 true))

(assert (=> start!84254 tp_is_empty!23029))

(declare-datatypes ((V!35689 0))(
  ( (V!35690 (val!11565 Int)) )
))
(declare-datatypes ((ValueCell!11033 0))(
  ( (ValueCellFull!11033 (v!14127 V!35689)) (EmptyCell!11033) )
))
(declare-datatypes ((array!62025 0))(
  ( (array!62026 (arr!29866 (Array (_ BitVec 32) ValueCell!11033)) (size!30346 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62025)

(declare-fun e!555334 () Bool)

(declare-fun array_inv!22951 (array!62025) Bool)

(assert (=> start!84254 (and (array_inv!22951 _values!1278) e!555334)))

(assert (=> start!84254 tp!69386))

(declare-fun array_inv!22952 (array!62023) Bool)

(assert (=> start!84254 (array_inv!22952 _keys!1544)))

(declare-fun b!985116 () Bool)

(declare-fun e!555335 () Bool)

(assert (=> b!985116 (= e!555335 (not true))))

(declare-datatypes ((tuple2!14898 0))(
  ( (tuple2!14899 (_1!7459 (_ BitVec 64)) (_2!7459 V!35689)) )
))
(declare-datatypes ((List!20817 0))(
  ( (Nil!20814) (Cons!20813 (h!21975 tuple2!14898) (t!29696 List!20817)) )
))
(declare-datatypes ((ListLongMap!13609 0))(
  ( (ListLongMap!13610 (toList!6820 List!20817)) )
))
(declare-fun lt!437112 () ListLongMap!13609)

(declare-fun lt!437116 () tuple2!14898)

(declare-fun lt!437114 () tuple2!14898)

(declare-fun +!3009 (ListLongMap!13609 tuple2!14898) ListLongMap!13609)

(assert (=> b!985116 (= (+!3009 (+!3009 lt!437112 lt!437116) lt!437114) (+!3009 (+!3009 lt!437112 lt!437114) lt!437116))))

(declare-fun lt!437113 () V!35689)

(assert (=> b!985116 (= lt!437114 (tuple2!14899 (select (arr!29865 _keys!1544) from!1932) lt!437113))))

(declare-fun minValue!1220 () V!35689)

(assert (=> b!985116 (= lt!437116 (tuple2!14899 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32693 0))(
  ( (Unit!32694) )
))
(declare-fun lt!437115 () Unit!32693)

(declare-fun addCommutativeForDiffKeys!671 (ListLongMap!13609 (_ BitVec 64) V!35689 (_ BitVec 64) V!35689) Unit!32693)

(assert (=> b!985116 (= lt!437115 (addCommutativeForDiffKeys!671 lt!437112 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29865 _keys!1544) from!1932) lt!437113))))

(declare-fun b!985117 () Bool)

(assert (=> b!985117 (= e!555336 e!555335)))

(declare-fun res!659316 () Bool)

(assert (=> b!985117 (=> (not res!659316) (not e!555335))))

(assert (=> b!985117 (= res!659316 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!29865 _keys!1544) from!1932))))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15523 (ValueCell!11033 V!35689) V!35689)

(declare-fun dynLambda!1846 (Int (_ BitVec 64)) V!35689)

(assert (=> b!985117 (= lt!437113 (get!15523 (select (arr!29866 _values!1278) from!1932) (dynLambda!1846 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!1220 () V!35689)

(declare-fun getCurrentListMapNoExtraKeys!3475 (array!62023 array!62025 (_ BitVec 32) (_ BitVec 32) V!35689 V!35689 (_ BitVec 32) Int) ListLongMap!13609)

(assert (=> b!985117 (= lt!437112 (getCurrentListMapNoExtraKeys!3475 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun mapIsEmpty!36572 () Bool)

(declare-fun mapRes!36572 () Bool)

(assert (=> mapIsEmpty!36572 mapRes!36572))

(declare-fun b!985118 () Bool)

(declare-fun res!659312 () Bool)

(assert (=> b!985118 (=> (not res!659312) (not e!555336))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62023 (_ BitVec 32)) Bool)

(assert (=> b!985118 (= res!659312 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!985119 () Bool)

(declare-fun res!659315 () Bool)

(assert (=> b!985119 (=> (not res!659315) (not e!555336))))

(assert (=> b!985119 (= res!659315 (and (= (size!30346 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30345 _keys!1544) (size!30346 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!985120 () Bool)

(declare-fun e!555333 () Bool)

(assert (=> b!985120 (= e!555334 (and e!555333 mapRes!36572))))

(declare-fun condMapEmpty!36572 () Bool)

(declare-fun mapDefault!36572 () ValueCell!11033)

