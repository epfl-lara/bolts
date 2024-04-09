; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84248 () Bool)

(assert start!84248)

(declare-fun b_free!19921 () Bool)

(declare-fun b_next!19921 () Bool)

(assert (=> start!84248 (= b_free!19921 (not b_next!19921))))

(declare-fun tp!69367 () Bool)

(declare-fun b_and!31937 () Bool)

(assert (=> start!84248 (= tp!69367 b_and!31937)))

(declare-fun b!985007 () Bool)

(declare-fun res!659243 () Bool)

(declare-fun e!555280 () Bool)

(assert (=> b!985007 (=> (not res!659243) (not e!555280))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!62011 0))(
  ( (array!62012 (arr!29859 (Array (_ BitVec 32) (_ BitVec 64))) (size!30339 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62011)

(assert (=> b!985007 (= res!659243 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30339 _keys!1544))))))

(declare-fun b!985008 () Bool)

(declare-fun e!555281 () Bool)

(declare-fun tp_is_empty!23023 () Bool)

(assert (=> b!985008 (= e!555281 tp_is_empty!23023)))

(declare-fun b!985009 () Bool)

(declare-fun res!659241 () Bool)

(assert (=> b!985009 (=> (not res!659241) (not e!555280))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!985009 (= res!659241 (validKeyInArray!0 (select (arr!29859 _keys!1544) from!1932)))))

(declare-fun b!985010 () Bool)

(declare-fun res!659240 () Bool)

(assert (=> b!985010 (=> (not res!659240) (not e!555280))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!985010 (= res!659240 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!985011 () Bool)

(declare-fun res!659237 () Bool)

(assert (=> b!985011 (=> (not res!659237) (not e!555280))))

(declare-datatypes ((List!20811 0))(
  ( (Nil!20808) (Cons!20807 (h!21969 (_ BitVec 64)) (t!29684 List!20811)) )
))
(declare-fun arrayNoDuplicates!0 (array!62011 (_ BitVec 32) List!20811) Bool)

(assert (=> b!985011 (= res!659237 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20808))))

(declare-fun b!985012 () Bool)

(declare-fun res!659239 () Bool)

(assert (=> b!985012 (=> (not res!659239) (not e!555280))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62011 (_ BitVec 32)) Bool)

(assert (=> b!985012 (= res!659239 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!985013 () Bool)

(declare-fun e!555284 () Bool)

(assert (=> b!985013 (= e!555280 e!555284)))

(declare-fun res!659238 () Bool)

(assert (=> b!985013 (=> (not res!659238) (not e!555284))))

(assert (=> b!985013 (= res!659238 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!29859 _keys!1544) from!1932))))))

(declare-datatypes ((V!35681 0))(
  ( (V!35682 (val!11562 Int)) )
))
(declare-fun lt!437068 () V!35681)

(declare-datatypes ((ValueCell!11030 0))(
  ( (ValueCellFull!11030 (v!14124 V!35681)) (EmptyCell!11030) )
))
(declare-datatypes ((array!62013 0))(
  ( (array!62014 (arr!29860 (Array (_ BitVec 32) ValueCell!11030)) (size!30340 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62013)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15518 (ValueCell!11030 V!35681) V!35681)

(declare-fun dynLambda!1843 (Int (_ BitVec 64)) V!35681)

(assert (=> b!985013 (= lt!437068 (get!15518 (select (arr!29860 _values!1278) from!1932) (dynLambda!1843 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1220 () V!35681)

(declare-datatypes ((tuple2!14892 0))(
  ( (tuple2!14893 (_1!7456 (_ BitVec 64)) (_2!7456 V!35681)) )
))
(declare-datatypes ((List!20812 0))(
  ( (Nil!20809) (Cons!20808 (h!21970 tuple2!14892) (t!29685 List!20812)) )
))
(declare-datatypes ((ListLongMap!13603 0))(
  ( (ListLongMap!13604 (toList!6817 List!20812)) )
))
(declare-fun lt!437067 () ListLongMap!13603)

(declare-fun zeroValue!1220 () V!35681)

(declare-fun getCurrentListMapNoExtraKeys!3472 (array!62011 array!62013 (_ BitVec 32) (_ BitVec 32) V!35681 V!35681 (_ BitVec 32) Int) ListLongMap!13603)

(assert (=> b!985013 (= lt!437067 (getCurrentListMapNoExtraKeys!3472 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!985014 () Bool)

(declare-fun e!555283 () Bool)

(declare-fun e!555279 () Bool)

(declare-fun mapRes!36563 () Bool)

(assert (=> b!985014 (= e!555283 (and e!555279 mapRes!36563))))

(declare-fun condMapEmpty!36563 () Bool)

(declare-fun mapDefault!36563 () ValueCell!11030)

