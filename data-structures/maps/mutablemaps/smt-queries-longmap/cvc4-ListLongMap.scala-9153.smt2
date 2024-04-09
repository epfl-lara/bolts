; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109838 () Bool)

(assert start!109838)

(declare-fun b_free!29195 () Bool)

(declare-fun b_next!29195 () Bool)

(assert (=> start!109838 (= b_free!29195 (not b_next!29195))))

(declare-fun tp!102720 () Bool)

(declare-fun b_and!47319 () Bool)

(assert (=> start!109838 (= tp!102720 b_and!47319)))

(declare-fun bm!63702 () Bool)

(declare-fun call!63707 () Bool)

(declare-fun call!63708 () Bool)

(assert (=> bm!63702 (= call!63707 call!63708)))

(declare-fun b!1300606 () Bool)

(declare-fun c!124566 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun lt!581432 () Bool)

(assert (=> b!1300606 (= c!124566 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!581432))))

(declare-datatypes ((Unit!42991 0))(
  ( (Unit!42992) )
))
(declare-fun e!741915 () Unit!42991)

(declare-fun e!741917 () Unit!42991)

(assert (=> b!1300606 (= e!741915 e!741917)))

(declare-fun bm!63703 () Bool)

(declare-datatypes ((V!51549 0))(
  ( (V!51550 (val!17492 Int)) )
))
(declare-datatypes ((tuple2!22714 0))(
  ( (tuple2!22715 (_1!11367 (_ BitVec 64)) (_2!11367 V!51549)) )
))
(declare-datatypes ((List!29872 0))(
  ( (Nil!29869) (Cons!29868 (h!31077 tuple2!22714) (t!43453 List!29872)) )
))
(declare-datatypes ((ListLongMap!20383 0))(
  ( (ListLongMap!20384 (toList!10207 List!29872)) )
))
(declare-fun call!63710 () ListLongMap!20383)

(declare-fun call!63705 () ListLongMap!20383)

(assert (=> bm!63703 (= call!63710 call!63705)))

(declare-fun b!1300607 () Bool)

(declare-fun e!741914 () Bool)

(declare-fun tp_is_empty!34835 () Bool)

(assert (=> b!1300607 (= e!741914 tp_is_empty!34835)))

(declare-fun b!1300608 () Bool)

(declare-fun res!864338 () Bool)

(declare-fun e!741918 () Bool)

(assert (=> b!1300608 (=> (not res!864338) (not e!741918))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((array!86643 0))(
  ( (array!86644 (arr!41813 (Array (_ BitVec 32) (_ BitVec 64))) (size!42364 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86643)

(assert (=> b!1300608 (= res!864338 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42364 _keys!1741))))))

(declare-fun lt!581434 () ListLongMap!20383)

(declare-fun c!124568 () Bool)

(declare-fun lt!581437 () ListLongMap!20383)

(declare-fun bm!63704 () Bool)

(declare-fun lt!581431 () ListLongMap!20383)

(declare-fun c!124567 () Bool)

(declare-fun contains!8269 (ListLongMap!20383 (_ BitVec 64)) Bool)

(assert (=> bm!63704 (= call!63708 (contains!8269 (ite c!124568 lt!581431 (ite c!124567 lt!581437 lt!581434)) k!1205))))

(declare-fun mapNonEmpty!53828 () Bool)

(declare-fun mapRes!53828 () Bool)

(declare-fun tp!102719 () Bool)

(declare-fun e!741916 () Bool)

(assert (=> mapNonEmpty!53828 (= mapRes!53828 (and tp!102719 e!741916))))

(declare-datatypes ((ValueCell!16519 0))(
  ( (ValueCellFull!16519 (v!20098 V!51549)) (EmptyCell!16519) )
))
(declare-fun mapValue!53828 () ValueCell!16519)

(declare-fun mapRest!53828 () (Array (_ BitVec 32) ValueCell!16519))

(declare-datatypes ((array!86645 0))(
  ( (array!86646 (arr!41814 (Array (_ BitVec 32) ValueCell!16519)) (size!42365 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86645)

(declare-fun mapKey!53828 () (_ BitVec 32))

(assert (=> mapNonEmpty!53828 (= (arr!41814 _values!1445) (store mapRest!53828 mapKey!53828 mapValue!53828))))

(declare-fun b!1300610 () Bool)

(assert (=> b!1300610 call!63707))

(declare-fun lt!581429 () Unit!42991)

(declare-fun call!63709 () Unit!42991)

(assert (=> b!1300610 (= lt!581429 call!63709)))

(assert (=> b!1300610 (= lt!581437 call!63710)))

(assert (=> b!1300610 (= e!741915 lt!581429)))

(declare-fun b!1300611 () Bool)

(declare-fun e!741919 () Bool)

(assert (=> b!1300611 (= e!741919 (and e!741914 mapRes!53828))))

(declare-fun condMapEmpty!53828 () Bool)

(declare-fun mapDefault!53828 () ValueCell!16519)

