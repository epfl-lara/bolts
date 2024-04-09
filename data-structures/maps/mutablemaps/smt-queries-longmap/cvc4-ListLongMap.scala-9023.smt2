; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108938 () Bool)

(assert start!108938)

(declare-fun b_free!28415 () Bool)

(declare-fun b_next!28415 () Bool)

(assert (=> start!108938 (= b_free!28415 (not b_next!28415))))

(declare-fun tp!100362 () Bool)

(declare-fun b_and!46501 () Bool)

(assert (=> start!108938 (= tp!100362 b_and!46501)))

(declare-fun b!1286373 () Bool)

(declare-fun res!854567 () Bool)

(declare-fun e!734749 () Bool)

(assert (=> b!1286373 (=> (not res!854567) (not e!734749))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50509 0))(
  ( (V!50510 (val!17102 Int)) )
))
(declare-datatypes ((ValueCell!16129 0))(
  ( (ValueCellFull!16129 (v!19702 V!50509)) (EmptyCell!16129) )
))
(declare-datatypes ((array!85117 0))(
  ( (array!85118 (arr!41056 (Array (_ BitVec 32) ValueCell!16129)) (size!41607 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85117)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85119 0))(
  ( (array!85120 (arr!41057 (Array (_ BitVec 32) (_ BitVec 64))) (size!41608 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85119)

(assert (=> b!1286373 (= res!854567 (and (= (size!41607 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41608 _keys!1741) (size!41607 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1286374 () Bool)

(declare-fun e!734743 () Bool)

(assert (=> b!1286374 (= e!734749 (not e!734743))))

(declare-fun res!854573 () Bool)

(assert (=> b!1286374 (=> res!854573 e!734743)))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1286374 (= res!854573 (= k!1205 (select (arr!41057 _keys!1741) from!2144)))))

(declare-datatypes ((tuple2!22066 0))(
  ( (tuple2!22067 (_1!11043 (_ BitVec 64)) (_2!11043 V!50509)) )
))
(declare-datatypes ((List!29271 0))(
  ( (Nil!29268) (Cons!29267 (h!30476 tuple2!22066) (t!42834 List!29271)) )
))
(declare-datatypes ((ListLongMap!19735 0))(
  ( (ListLongMap!19736 (toList!9883 List!29271)) )
))
(declare-fun contains!7937 (ListLongMap!19735 (_ BitVec 64)) Bool)

(assert (=> b!1286374 (not (contains!7937 (ListLongMap!19736 Nil!29268) k!1205))))

(declare-datatypes ((Unit!42460 0))(
  ( (Unit!42461) )
))
(declare-fun lt!577232 () Unit!42460)

(declare-fun emptyContainsNothing!6 ((_ BitVec 64)) Unit!42460)

(assert (=> b!1286374 (= lt!577232 (emptyContainsNothing!6 k!1205))))

(declare-fun lt!577226 () Unit!42460)

(declare-fun e!734744 () Unit!42460)

(assert (=> b!1286374 (= lt!577226 e!734744)))

(declare-fun c!124125 () Bool)

(declare-fun lt!577223 () Bool)

(assert (=> b!1286374 (= c!124125 (and (not lt!577223) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1286374 (= lt!577223 (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!52640 () Bool)

(declare-fun mapRes!52640 () Bool)

(assert (=> mapIsEmpty!52640 mapRes!52640))

(declare-fun res!854568 () Bool)

(assert (=> start!108938 (=> (not res!854568) (not e!734749))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108938 (= res!854568 (validMask!0 mask!2175))))

(assert (=> start!108938 e!734749))

(declare-fun tp_is_empty!34055 () Bool)

(assert (=> start!108938 tp_is_empty!34055))

(assert (=> start!108938 true))

(declare-fun e!734742 () Bool)

(declare-fun array_inv!31109 (array!85117) Bool)

(assert (=> start!108938 (and (array_inv!31109 _values!1445) e!734742)))

(declare-fun array_inv!31110 (array!85119) Bool)

(assert (=> start!108938 (array_inv!31110 _keys!1741)))

(assert (=> start!108938 tp!100362))

(declare-fun bm!62927 () Bool)

(declare-fun call!62930 () Unit!42460)

(declare-fun call!62931 () Unit!42460)

(assert (=> bm!62927 (= call!62930 call!62931)))

(declare-fun b!1286375 () Bool)

(declare-fun e!734746 () Unit!42460)

(declare-fun Unit!42462 () Unit!42460)

(assert (=> b!1286375 (= e!734746 Unit!42462)))

(declare-fun b!1286376 () Bool)

(declare-fun e!734741 () Bool)

(assert (=> b!1286376 (= e!734741 tp_is_empty!34055)))

(declare-fun bm!62928 () Bool)

(declare-fun call!62932 () ListLongMap!19735)

(declare-fun call!62935 () ListLongMap!19735)

(assert (=> bm!62928 (= call!62932 call!62935)))

(declare-fun b!1286377 () Bool)

(declare-fun c!124124 () Bool)

(assert (=> b!1286377 (= c!124124 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!577223))))

(declare-fun e!734747 () Unit!42460)

(assert (=> b!1286377 (= e!734747 e!734746)))

(declare-fun bm!62929 () Bool)

(declare-fun call!62934 () Bool)

(declare-fun call!62933 () Bool)

(assert (=> bm!62929 (= call!62934 call!62933)))

(declare-fun b!1286378 () Bool)

(declare-fun res!854566 () Bool)

(assert (=> b!1286378 (=> (not res!854566) (not e!734749))))

(assert (=> b!1286378 (= res!854566 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41608 _keys!1741))))))

(declare-fun b!1286379 () Bool)

(declare-fun lt!577222 () Unit!42460)

(assert (=> b!1286379 (= e!734744 lt!577222)))

(declare-fun lt!577228 () ListLongMap!19735)

(assert (=> b!1286379 (= lt!577228 call!62935)))

(declare-fun lt!577225 () ListLongMap!19735)

(declare-fun zeroValue!1387 () V!50509)

(declare-fun +!4289 (ListLongMap!19735 tuple2!22066) ListLongMap!19735)

(assert (=> b!1286379 (= lt!577225 (+!4289 lt!577228 (tuple2!22067 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!577230 () Unit!42460)

(assert (=> b!1286379 (= lt!577230 call!62931)))

(assert (=> b!1286379 call!62933))

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!29 ((_ BitVec 64) (_ BitVec 64) V!50509 ListLongMap!19735) Unit!42460)

(assert (=> b!1286379 (= lt!577222 (lemmaInListMapAfterAddingDiffThenInBefore!29 k!1205 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 lt!577228))))

(assert (=> b!1286379 (contains!7937 lt!577228 k!1205)))

(declare-fun b!1286380 () Bool)

(declare-fun lt!577224 () Unit!42460)

(assert (=> b!1286380 (= e!734746 lt!577224)))

(declare-fun lt!577231 () ListLongMap!19735)

(assert (=> b!1286380 (= lt!577231 call!62932)))

(assert (=> b!1286380 (= lt!577224 call!62930)))

(assert (=> b!1286380 call!62934))

(declare-fun bm!62930 () Bool)

(declare-fun c!124126 () Bool)

(declare-fun lt!577227 () ListLongMap!19735)

(assert (=> bm!62930 (= call!62933 (contains!7937 (ite c!124125 lt!577225 (ite c!124126 lt!577227 lt!577231)) k!1205))))

(declare-fun b!1286381 () Bool)

(declare-fun res!854571 () Bool)

(assert (=> b!1286381 (=> (not res!854571) (not e!734749))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85119 (_ BitVec 32)) Bool)

(assert (=> b!1286381 (= res!854571 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1286382 () Bool)

(assert (=> b!1286382 (= e!734744 e!734747)))

(assert (=> b!1286382 (= c!124126 (and (not lt!577223) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1286383 () Bool)

(assert (=> b!1286383 (= e!734742 (and e!734741 mapRes!52640))))

(declare-fun condMapEmpty!52640 () Bool)

(declare-fun mapDefault!52640 () ValueCell!16129)

