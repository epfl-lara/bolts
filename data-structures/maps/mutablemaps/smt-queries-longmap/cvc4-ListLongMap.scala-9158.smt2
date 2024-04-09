; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109936 () Bool)

(assert start!109936)

(declare-fun b_free!29225 () Bool)

(declare-fun b_next!29225 () Bool)

(assert (=> start!109936 (= b_free!29225 (not b_next!29225))))

(declare-fun tp!102813 () Bool)

(declare-fun b_and!47369 () Bool)

(assert (=> start!109936 (= tp!102813 b_and!47369)))

(declare-fun mapNonEmpty!53877 () Bool)

(declare-fun mapRes!53877 () Bool)

(declare-fun tp!102814 () Bool)

(declare-fun e!742557 () Bool)

(assert (=> mapNonEmpty!53877 (= mapRes!53877 (and tp!102814 e!742557))))

(declare-datatypes ((V!51589 0))(
  ( (V!51590 (val!17507 Int)) )
))
(declare-datatypes ((ValueCell!16534 0))(
  ( (ValueCellFull!16534 (v!20116 V!51589)) (EmptyCell!16534) )
))
(declare-fun mapRest!53877 () (Array (_ BitVec 32) ValueCell!16534))

(declare-fun mapKey!53877 () (_ BitVec 32))

(declare-datatypes ((array!86701 0))(
  ( (array!86702 (arr!41841 (Array (_ BitVec 32) ValueCell!16534)) (size!42392 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86701)

(declare-fun mapValue!53877 () ValueCell!16534)

(assert (=> mapNonEmpty!53877 (= (arr!41841 _values!1445) (store mapRest!53877 mapKey!53877 mapValue!53877))))

(declare-fun bm!64017 () Bool)

(declare-datatypes ((tuple2!22738 0))(
  ( (tuple2!22739 (_1!11379 (_ BitVec 64)) (_2!11379 V!51589)) )
))
(declare-datatypes ((List!29893 0))(
  ( (Nil!29890) (Cons!29889 (h!31098 tuple2!22738) (t!43486 List!29893)) )
))
(declare-datatypes ((ListLongMap!20407 0))(
  ( (ListLongMap!20408 (toList!10219 List!29893)) )
))
(declare-fun call!64021 () ListLongMap!20407)

(declare-fun call!64023 () ListLongMap!20407)

(assert (=> bm!64017 (= call!64021 call!64023)))

(declare-fun lt!582254 () ListLongMap!20407)

(declare-fun call!64024 () Bool)

(declare-fun lt!582246 () ListLongMap!20407)

(declare-fun c!124813 () Bool)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun lt!582250 () ListLongMap!20407)

(declare-fun c!124812 () Bool)

(declare-fun bm!64018 () Bool)

(declare-fun contains!8282 (ListLongMap!20407 (_ BitVec 64)) Bool)

(assert (=> bm!64018 (= call!64024 (contains!8282 (ite c!124812 lt!582250 (ite c!124813 lt!582246 lt!582254)) k!1205))))

(declare-fun b!1301808 () Bool)

(declare-datatypes ((Unit!43041 0))(
  ( (Unit!43042) )
))
(declare-fun e!742552 () Unit!43041)

(declare-fun Unit!43043 () Unit!43041)

(assert (=> b!1301808 (= e!742552 Unit!43043)))

(declare-fun b!1301809 () Bool)

(declare-fun res!864894 () Bool)

(declare-fun e!742555 () Bool)

(assert (=> b!1301809 (=> (not res!864894) (not e!742555))))

(declare-datatypes ((array!86703 0))(
  ( (array!86704 (arr!41842 (Array (_ BitVec 32) (_ BitVec 64))) (size!42393 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86703)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1301809 (= res!864894 (validKeyInArray!0 (select (arr!41842 _keys!1741) from!2144)))))

(declare-fun b!1301810 () Bool)

(declare-fun res!864888 () Bool)

(assert (=> b!1301810 (=> (not res!864888) (not e!742555))))

(assert (=> b!1301810 (= res!864888 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42393 _keys!1741))))))

(declare-fun b!1301811 () Bool)

(declare-fun res!864895 () Bool)

(assert (=> b!1301811 (=> (not res!864895) (not e!742555))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1301811 (= res!864895 (and (= (size!42392 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42393 _keys!1741) (size!42392 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1301812 () Bool)

(declare-fun res!864893 () Bool)

(assert (=> b!1301812 (=> (not res!864893) (not e!742555))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86703 (_ BitVec 32)) Bool)

(assert (=> b!1301812 (= res!864893 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1301813 () Bool)

(declare-fun e!742553 () Unit!43041)

(declare-fun lt!582255 () Unit!43041)

(assert (=> b!1301813 (= e!742553 lt!582255)))

(assert (=> b!1301813 (= lt!582250 call!64023)))

(declare-fun lt!582251 () ListLongMap!20407)

(declare-fun zeroValue!1387 () V!51589)

(declare-fun +!4442 (ListLongMap!20407 tuple2!22738) ListLongMap!20407)

(assert (=> b!1301813 (= lt!582251 (+!4442 lt!582250 (tuple2!22739 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!582247 () Unit!43041)

(declare-fun call!64022 () Unit!43041)

(assert (=> b!1301813 (= lt!582247 call!64022)))

(assert (=> b!1301813 (contains!8282 lt!582251 k!1205)))

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!82 ((_ BitVec 64) (_ BitVec 64) V!51589 ListLongMap!20407) Unit!43041)

(assert (=> b!1301813 (= lt!582255 (lemmaInListMapAfterAddingDiffThenInBefore!82 k!1205 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 lt!582250))))

(assert (=> b!1301813 call!64024))

(declare-fun bm!64019 () Bool)

(declare-fun call!64025 () Unit!43041)

(assert (=> bm!64019 (= call!64025 call!64022)))

(declare-fun b!1301814 () Bool)

(declare-fun e!742558 () Bool)

(declare-fun e!742559 () Bool)

(assert (=> b!1301814 (= e!742558 (and e!742559 mapRes!53877))))

(declare-fun condMapEmpty!53877 () Bool)

(declare-fun mapDefault!53877 () ValueCell!16534)

