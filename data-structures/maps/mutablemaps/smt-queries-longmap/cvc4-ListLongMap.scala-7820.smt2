; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97704 () Bool)

(assert start!97704)

(declare-fun b!1116238 () Bool)

(declare-fun e!636041 () Bool)

(assert (=> b!1116238 (= e!636041 (not true))))

(declare-datatypes ((array!72638 0))(
  ( (array!72639 (arr!34968 (Array (_ BitVec 32) (_ BitVec 64))) (size!35505 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72638)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72638 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1116238 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36537 0))(
  ( (Unit!36538) )
))
(declare-fun lt!497084 () Unit!36537)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72638 (_ BitVec 64) (_ BitVec 32)) Unit!36537)

(assert (=> b!1116238 (= lt!497084 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1116239 () Bool)

(declare-fun e!636036 () Bool)

(declare-fun tp_is_empty!27899 () Bool)

(assert (=> b!1116239 (= e!636036 tp_is_empty!27899)))

(declare-fun b!1116240 () Bool)

(declare-fun res!745364 () Bool)

(declare-fun e!636039 () Bool)

(assert (=> b!1116240 (=> (not res!745364) (not e!636039))))

(assert (=> b!1116240 (= res!745364 (= (select (arr!34968 _keys!1208) i!673) k!934))))

(declare-fun b!1116242 () Bool)

(declare-fun res!745368 () Bool)

(assert (=> b!1116242 (=> (not res!745368) (not e!636039))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1116242 (= res!745368 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!43666 () Bool)

(declare-fun mapRes!43666 () Bool)

(assert (=> mapIsEmpty!43666 mapRes!43666))

(declare-fun b!1116243 () Bool)

(declare-fun res!745362 () Bool)

(assert (=> b!1116243 (=> (not res!745362) (not e!636039))))

(declare-datatypes ((List!24471 0))(
  ( (Nil!24468) (Cons!24467 (h!25676 (_ BitVec 64)) (t!34959 List!24471)) )
))
(declare-fun arrayNoDuplicates!0 (array!72638 (_ BitVec 32) List!24471) Bool)

(assert (=> b!1116243 (= res!745362 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24468))))

(declare-fun b!1116244 () Bool)

(declare-fun res!745369 () Bool)

(assert (=> b!1116244 (=> (not res!745369) (not e!636039))))

(assert (=> b!1116244 (= res!745369 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35505 _keys!1208))))))

(declare-fun b!1116245 () Bool)

(assert (=> b!1116245 (= e!636039 e!636041)))

(declare-fun res!745365 () Bool)

(assert (=> b!1116245 (=> (not res!745365) (not e!636041))))

(declare-fun lt!497085 () array!72638)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72638 (_ BitVec 32)) Bool)

(assert (=> b!1116245 (= res!745365 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497085 mask!1564))))

(assert (=> b!1116245 (= lt!497085 (array!72639 (store (arr!34968 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35505 _keys!1208)))))

(declare-fun b!1116246 () Bool)

(declare-fun e!636038 () Bool)

(declare-fun e!636040 () Bool)

(assert (=> b!1116246 (= e!636038 (and e!636040 mapRes!43666))))

(declare-fun condMapEmpty!43666 () Bool)

(declare-datatypes ((V!42325 0))(
  ( (V!42326 (val!14006 Int)) )
))
(declare-datatypes ((ValueCell!13240 0))(
  ( (ValueCellFull!13240 (v!16640 V!42325)) (EmptyCell!13240) )
))
(declare-datatypes ((array!72640 0))(
  ( (array!72641 (arr!34969 (Array (_ BitVec 32) ValueCell!13240)) (size!35506 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72640)

(declare-fun mapDefault!43666 () ValueCell!13240)

