; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109504 () Bool)

(assert start!109504)

(declare-fun b_free!28957 () Bool)

(declare-fun b_next!28957 () Bool)

(assert (=> start!109504 (= b_free!28957 (not b_next!28957))))

(declare-fun tp!101991 () Bool)

(declare-fun b_and!47057 () Bool)

(assert (=> start!109504 (= tp!101991 b_and!47057)))

(declare-fun bm!63419 () Bool)

(declare-fun call!63423 () Bool)

(declare-fun call!63427 () Bool)

(assert (=> bm!63419 (= call!63423 call!63427)))

(declare-fun b!1296349 () Bool)

(declare-fun res!861666 () Bool)

(declare-fun e!739603 () Bool)

(assert (=> b!1296349 (=> (not res!861666) (not e!739603))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!86173 0))(
  ( (array!86174 (arr!41583 (Array (_ BitVec 32) (_ BitVec 64))) (size!42134 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86173)

(assert (=> b!1296349 (= res!861666 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42134 _keys!1741))))))

(declare-fun b!1296350 () Bool)

(declare-datatypes ((Unit!42894 0))(
  ( (Unit!42895) )
))
(declare-fun e!739604 () Unit!42894)

(declare-fun lt!580323 () Unit!42894)

(assert (=> b!1296350 (= e!739604 lt!580323)))

(declare-datatypes ((V!51233 0))(
  ( (V!51234 (val!17373 Int)) )
))
(declare-datatypes ((tuple2!22528 0))(
  ( (tuple2!22529 (_1!11274 (_ BitVec 64)) (_2!11274 V!51233)) )
))
(declare-datatypes ((List!29694 0))(
  ( (Nil!29691) (Cons!29690 (h!30899 tuple2!22528) (t!43265 List!29694)) )
))
(declare-datatypes ((ListLongMap!20197 0))(
  ( (ListLongMap!20198 (toList!10114 List!29694)) )
))
(declare-fun lt!580322 () ListLongMap!20197)

(declare-fun call!63422 () ListLongMap!20197)

(assert (=> b!1296350 (= lt!580322 call!63422)))

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun zeroValue!1387 () V!51233)

(declare-fun lt!580325 () Unit!42894)

(declare-fun addStillNotContains!459 (ListLongMap!20197 (_ BitVec 64) V!51233 (_ BitVec 64)) Unit!42894)

(assert (=> b!1296350 (= lt!580325 (addStillNotContains!459 lt!580322 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun lt!580332 () ListLongMap!20197)

(declare-fun call!63425 () ListLongMap!20197)

(assert (=> b!1296350 (= lt!580332 call!63425)))

(assert (=> b!1296350 (not call!63427)))

(declare-fun lt!580330 () Unit!42894)

(declare-fun call!63430 () Unit!42894)

(assert (=> b!1296350 (= lt!580330 call!63430)))

(declare-fun minValue!1387 () V!51233)

(declare-fun contains!8168 (ListLongMap!20197 (_ BitVec 64)) Bool)

(declare-fun +!4412 (ListLongMap!20197 tuple2!22528) ListLongMap!20197)

(assert (=> b!1296350 (not (contains!8168 (+!4412 lt!580322 (tuple2!22529 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205))))

(declare-fun lt!580335 () Unit!42894)

(declare-fun call!63431 () Unit!42894)

(assert (=> b!1296350 (= lt!580335 call!63431)))

(assert (=> b!1296350 false))

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!63 ((_ BitVec 64) (_ BitVec 64) V!51233 ListLongMap!20197) Unit!42894)

(assert (=> b!1296350 (= lt!580323 (lemmaInListMapAfterAddingDiffThenInBefore!63 k!1205 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 lt!580322))))

(declare-fun lt!580331 () Bool)

(declare-fun call!63429 () Bool)

(assert (=> b!1296350 (= lt!580331 call!63429)))

(declare-fun bm!63420 () Bool)

(declare-fun call!63428 () ListLongMap!20197)

(assert (=> bm!63420 (= call!63428 call!63425)))

(declare-fun mapIsEmpty!53456 () Bool)

(declare-fun mapRes!53456 () Bool)

(assert (=> mapIsEmpty!53456 mapRes!53456))

(declare-fun b!1296351 () Bool)

(declare-fun e!739608 () Bool)

(declare-fun tp_is_empty!34597 () Bool)

(assert (=> b!1296351 (= e!739608 tp_is_empty!34597)))

(declare-fun b!1296352 () Bool)

(declare-fun e!739606 () Bool)

(declare-fun e!739609 () Bool)

(assert (=> b!1296352 (= e!739606 (and e!739609 mapRes!53456))))

(declare-fun condMapEmpty!53456 () Bool)

(declare-datatypes ((ValueCell!16400 0))(
  ( (ValueCellFull!16400 (v!19974 V!51233)) (EmptyCell!16400) )
))
(declare-datatypes ((array!86175 0))(
  ( (array!86176 (arr!41584 (Array (_ BitVec 32) ValueCell!16400)) (size!42135 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86175)

(declare-fun mapDefault!53456 () ValueCell!16400)

