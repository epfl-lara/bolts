; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109938 () Bool)

(assert start!109938)

(declare-fun b_free!29227 () Bool)

(declare-fun b_next!29227 () Bool)

(assert (=> start!109938 (= b_free!29227 (not b_next!29227))))

(declare-fun tp!102819 () Bool)

(declare-fun b_and!47373 () Bool)

(assert (=> start!109938 (= tp!102819 b_and!47373)))

(declare-fun res!864923 () Bool)

(declare-fun e!742582 () Bool)

(assert (=> start!109938 (=> (not res!864923) (not e!742582))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109938 (= res!864923 (validMask!0 mask!2175))))

(assert (=> start!109938 e!742582))

(declare-fun tp_is_empty!34867 () Bool)

(assert (=> start!109938 tp_is_empty!34867))

(assert (=> start!109938 true))

(declare-datatypes ((V!51593 0))(
  ( (V!51594 (val!17508 Int)) )
))
(declare-datatypes ((ValueCell!16535 0))(
  ( (ValueCellFull!16535 (v!20117 V!51593)) (EmptyCell!16535) )
))
(declare-datatypes ((array!86705 0))(
  ( (array!86706 (arr!41843 (Array (_ BitVec 32) ValueCell!16535)) (size!42394 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86705)

(declare-fun e!742584 () Bool)

(declare-fun array_inv!31651 (array!86705) Bool)

(assert (=> start!109938 (and (array_inv!31651 _values!1445) e!742584)))

(declare-datatypes ((array!86707 0))(
  ( (array!86708 (arr!41844 (Array (_ BitVec 32) (_ BitVec 64))) (size!42395 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86707)

(declare-fun array_inv!31652 (array!86707) Bool)

(assert (=> start!109938 (array_inv!31652 _keys!1741)))

(assert (=> start!109938 tp!102819))

(declare-fun b!1301864 () Bool)

(declare-fun e!742579 () Bool)

(assert (=> b!1301864 (= e!742579 tp_is_empty!34867)))

(declare-fun b!1301865 () Bool)

(declare-fun e!742586 () Bool)

(assert (=> b!1301865 (= e!742582 (not e!742586))))

(declare-fun res!864921 () Bool)

(assert (=> b!1301865 (=> res!864921 e!742586)))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1301865 (= res!864921 (not (= k!1205 (select (arr!41844 _keys!1741) from!2144))))))

(declare-datatypes ((tuple2!22740 0))(
  ( (tuple2!22741 (_1!11380 (_ BitVec 64)) (_2!11380 V!51593)) )
))
(declare-datatypes ((List!29894 0))(
  ( (Nil!29891) (Cons!29890 (h!31099 tuple2!22740) (t!43487 List!29894)) )
))
(declare-datatypes ((ListLongMap!20409 0))(
  ( (ListLongMap!20410 (toList!10220 List!29894)) )
))
(declare-fun contains!8283 (ListLongMap!20409 (_ BitVec 64)) Bool)

(assert (=> b!1301865 (not (contains!8283 (ListLongMap!20410 Nil!29891) k!1205))))

(declare-datatypes ((Unit!43044 0))(
  ( (Unit!43045) )
))
(declare-fun lt!582287 () Unit!43044)

(declare-fun emptyContainsNothing!210 ((_ BitVec 64)) Unit!43044)

(assert (=> b!1301865 (= lt!582287 (emptyContainsNothing!210 k!1205))))

(declare-fun lt!582288 () Unit!43044)

(declare-fun e!742585 () Unit!43044)

(assert (=> b!1301865 (= lt!582288 e!742585)))

(declare-fun c!124821 () Bool)

(declare-fun lt!582281 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1301865 (= c!124821 (and (not lt!582281) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1301865 (= lt!582281 (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1301866 () Bool)

(declare-fun c!124823 () Bool)

(assert (=> b!1301866 (= c!124823 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!582281))))

(declare-fun e!742578 () Unit!43044)

(declare-fun e!742581 () Unit!43044)

(assert (=> b!1301866 (= e!742578 e!742581)))

(declare-fun b!1301867 () Bool)

(declare-fun call!64038 () Bool)

(assert (=> b!1301867 call!64038))

(declare-fun lt!582278 () Unit!43044)

(declare-fun call!64041 () Unit!43044)

(assert (=> b!1301867 (= lt!582278 call!64041)))

(declare-fun lt!582280 () ListLongMap!20409)

(declare-fun call!64042 () ListLongMap!20409)

(assert (=> b!1301867 (= lt!582280 call!64042)))

(assert (=> b!1301867 (= e!742578 lt!582278)))

(declare-fun b!1301868 () Bool)

(declare-fun res!864922 () Bool)

(assert (=> b!1301868 (=> (not res!864922) (not e!742582))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1301868 (= res!864922 (validKeyInArray!0 (select (arr!41844 _keys!1741) from!2144)))))

(declare-fun b!1301869 () Bool)

(declare-fun mapRes!53880 () Bool)

(assert (=> b!1301869 (= e!742584 (and e!742579 mapRes!53880))))

(declare-fun condMapEmpty!53880 () Bool)

(declare-fun mapDefault!53880 () ValueCell!16535)

