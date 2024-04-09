; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84252 () Bool)

(assert start!84252)

(declare-fun b_free!19925 () Bool)

(declare-fun b_next!19925 () Bool)

(assert (=> start!84252 (= b_free!19925 (not b_next!19925))))

(declare-fun tp!69379 () Bool)

(declare-fun b_and!31945 () Bool)

(assert (=> start!84252 (= tp!69379 b_and!31945)))

(declare-fun b!985077 () Bool)

(declare-fun res!659291 () Bool)

(declare-fun e!555317 () Bool)

(assert (=> b!985077 (=> (not res!659291) (not e!555317))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!985077 (= res!659291 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!985078 () Bool)

(declare-fun e!555318 () Bool)

(declare-fun tp_is_empty!23027 () Bool)

(assert (=> b!985078 (= e!555318 tp_is_empty!23027)))

(declare-fun b!985079 () Bool)

(declare-fun res!659288 () Bool)

(assert (=> b!985079 (=> (not res!659288) (not e!555317))))

(declare-datatypes ((array!62019 0))(
  ( (array!62020 (arr!29863 (Array (_ BitVec 32) (_ BitVec 64))) (size!30343 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62019)

(declare-datatypes ((List!20815 0))(
  ( (Nil!20812) (Cons!20811 (h!21973 (_ BitVec 64)) (t!29692 List!20815)) )
))
(declare-fun arrayNoDuplicates!0 (array!62019 (_ BitVec 32) List!20815) Bool)

(assert (=> b!985079 (= res!659288 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20812))))

(declare-fun mapNonEmpty!36569 () Bool)

(declare-fun mapRes!36569 () Bool)

(declare-fun tp!69380 () Bool)

(declare-fun e!555320 () Bool)

(assert (=> mapNonEmpty!36569 (= mapRes!36569 (and tp!69380 e!555320))))

(declare-datatypes ((V!35685 0))(
  ( (V!35686 (val!11564 Int)) )
))
(declare-datatypes ((ValueCell!11032 0))(
  ( (ValueCellFull!11032 (v!14126 V!35685)) (EmptyCell!11032) )
))
(declare-datatypes ((array!62021 0))(
  ( (array!62022 (arr!29864 (Array (_ BitVec 32) ValueCell!11032)) (size!30344 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62021)

(declare-fun mapRest!36569 () (Array (_ BitVec 32) ValueCell!11032))

(declare-fun mapKey!36569 () (_ BitVec 32))

(declare-fun mapValue!36569 () ValueCell!11032)

(assert (=> mapNonEmpty!36569 (= (arr!29864 _values!1278) (store mapRest!36569 mapKey!36569 mapValue!36569))))

(declare-fun b!985080 () Bool)

(declare-fun res!659287 () Bool)

(assert (=> b!985080 (=> (not res!659287) (not e!555317))))

(declare-fun mask!1948 () (_ BitVec 32))

(assert (=> b!985080 (= res!659287 (and (= (size!30344 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30343 _keys!1544) (size!30344 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!985081 () Bool)

(declare-fun e!555319 () Bool)

(assert (=> b!985081 (= e!555319 (not true))))

(declare-datatypes ((tuple2!14896 0))(
  ( (tuple2!14897 (_1!7458 (_ BitVec 64)) (_2!7458 V!35685)) )
))
(declare-datatypes ((List!20816 0))(
  ( (Nil!20813) (Cons!20812 (h!21974 tuple2!14896) (t!29693 List!20816)) )
))
(declare-datatypes ((ListLongMap!13607 0))(
  ( (ListLongMap!13608 (toList!6819 List!20816)) )
))
(declare-fun lt!437097 () ListLongMap!13607)

(declare-fun lt!437100 () tuple2!14896)

(declare-fun lt!437101 () tuple2!14896)

(declare-fun +!3008 (ListLongMap!13607 tuple2!14896) ListLongMap!13607)

(assert (=> b!985081 (= (+!3008 (+!3008 lt!437097 lt!437100) lt!437101) (+!3008 (+!3008 lt!437097 lt!437101) lt!437100))))

(declare-fun lt!437098 () V!35685)

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!985081 (= lt!437101 (tuple2!14897 (select (arr!29863 _keys!1544) from!1932) lt!437098))))

(declare-fun minValue!1220 () V!35685)

(assert (=> b!985081 (= lt!437100 (tuple2!14897 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32691 0))(
  ( (Unit!32692) )
))
(declare-fun lt!437099 () Unit!32691)

(declare-fun addCommutativeForDiffKeys!670 (ListLongMap!13607 (_ BitVec 64) V!35685 (_ BitVec 64) V!35685) Unit!32691)

(assert (=> b!985081 (= lt!437099 (addCommutativeForDiffKeys!670 lt!437097 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29863 _keys!1544) from!1932) lt!437098))))

(declare-fun res!659285 () Bool)

(assert (=> start!84252 (=> (not res!659285) (not e!555317))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84252 (= res!659285 (validMask!0 mask!1948))))

(assert (=> start!84252 e!555317))

(assert (=> start!84252 true))

(assert (=> start!84252 tp_is_empty!23027))

(declare-fun e!555315 () Bool)

(declare-fun array_inv!22949 (array!62021) Bool)

(assert (=> start!84252 (and (array_inv!22949 _values!1278) e!555315)))

(assert (=> start!84252 tp!69379))

(declare-fun array_inv!22950 (array!62019) Bool)

(assert (=> start!84252 (array_inv!22950 _keys!1544)))

(declare-fun b!985082 () Bool)

(assert (=> b!985082 (= e!555317 e!555319)))

(declare-fun res!659290 () Bool)

(assert (=> b!985082 (=> (not res!659290) (not e!555319))))

(assert (=> b!985082 (= res!659290 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!29863 _keys!1544) from!1932))))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15520 (ValueCell!11032 V!35685) V!35685)

(declare-fun dynLambda!1845 (Int (_ BitVec 64)) V!35685)

(assert (=> b!985082 (= lt!437098 (get!15520 (select (arr!29864 _values!1278) from!1932) (dynLambda!1845 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!1220 () V!35685)

(declare-fun getCurrentListMapNoExtraKeys!3474 (array!62019 array!62021 (_ BitVec 32) (_ BitVec 32) V!35685 V!35685 (_ BitVec 32) Int) ListLongMap!13607)

(assert (=> b!985082 (= lt!437097 (getCurrentListMapNoExtraKeys!3474 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!985083 () Bool)

(declare-fun res!659292 () Bool)

(assert (=> b!985083 (=> (not res!659292) (not e!555317))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!985083 (= res!659292 (validKeyInArray!0 (select (arr!29863 _keys!1544) from!1932)))))

(declare-fun b!985084 () Bool)

(assert (=> b!985084 (= e!555320 tp_is_empty!23027)))

(declare-fun b!985085 () Bool)

(declare-fun res!659286 () Bool)

(assert (=> b!985085 (=> (not res!659286) (not e!555317))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62019 (_ BitVec 32)) Bool)

(assert (=> b!985085 (= res!659286 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!985086 () Bool)

(assert (=> b!985086 (= e!555315 (and e!555318 mapRes!36569))))

(declare-fun condMapEmpty!36569 () Bool)

(declare-fun mapDefault!36569 () ValueCell!11032)

