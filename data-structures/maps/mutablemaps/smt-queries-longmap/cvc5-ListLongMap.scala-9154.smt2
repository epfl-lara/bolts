; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109840 () Bool)

(assert start!109840)

(declare-fun b_free!29197 () Bool)

(declare-fun b_next!29197 () Bool)

(assert (=> start!109840 (= b_free!29197 (not b_next!29197))))

(declare-fun tp!102726 () Bool)

(declare-fun b_and!47321 () Bool)

(assert (=> start!109840 (= tp!102726 b_and!47321)))

(declare-fun b!1300657 () Bool)

(declare-fun e!741936 () Bool)

(declare-fun tp_is_empty!34837 () Bool)

(assert (=> b!1300657 (= e!741936 tp_is_empty!34837)))

(declare-fun b!1300658 () Bool)

(declare-fun c!124575 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun lt!581467 () Bool)

(assert (=> b!1300658 (= c!124575 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!581467))))

(declare-datatypes ((Unit!42993 0))(
  ( (Unit!42994) )
))
(declare-fun e!741939 () Unit!42993)

(declare-fun e!741938 () Unit!42993)

(assert (=> b!1300658 (= e!741939 e!741938)))

(declare-fun b!1300659 () Bool)

(declare-fun e!741941 () Bool)

(assert (=> b!1300659 (= e!741941 tp_is_empty!34837)))

(declare-fun bm!63720 () Bool)

(declare-fun call!63724 () Bool)

(declare-fun call!63728 () Bool)

(assert (=> bm!63720 (= call!63724 call!63728)))

(declare-fun b!1300660 () Bool)

(declare-fun res!864363 () Bool)

(declare-fun e!741940 () Bool)

(assert (=> b!1300660 (=> (not res!864363) (not e!741940))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!51553 0))(
  ( (V!51554 (val!17493 Int)) )
))
(declare-datatypes ((ValueCell!16520 0))(
  ( (ValueCellFull!16520 (v!20099 V!51553)) (EmptyCell!16520) )
))
(declare-datatypes ((array!86647 0))(
  ( (array!86648 (arr!41815 (Array (_ BitVec 32) ValueCell!16520)) (size!42366 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86647)

(declare-datatypes ((array!86649 0))(
  ( (array!86650 (arr!41816 (Array (_ BitVec 32) (_ BitVec 64))) (size!42367 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86649)

(assert (=> b!1300660 (= res!864363 (and (= (size!42366 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42367 _keys!1741) (size!42366 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun minValue!1387 () V!51553)

(declare-datatypes ((tuple2!22716 0))(
  ( (tuple2!22717 (_1!11368 (_ BitVec 64)) (_2!11368 V!51553)) )
))
(declare-datatypes ((List!29873 0))(
  ( (Nil!29870) (Cons!29869 (h!31078 tuple2!22716) (t!43454 List!29873)) )
))
(declare-datatypes ((ListLongMap!20385 0))(
  ( (ListLongMap!20386 (toList!10208 List!29873)) )
))
(declare-fun lt!581464 () ListLongMap!20385)

(declare-fun bm!63721 () Bool)

(declare-fun c!124576 () Bool)

(declare-fun lt!581465 () ListLongMap!20385)

(declare-fun lt!581468 () ListLongMap!20385)

(declare-fun call!63726 () Unit!42993)

(declare-fun zeroValue!1387 () V!51553)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun c!124577 () Bool)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!71 ((_ BitVec 64) (_ BitVec 64) V!51553 ListLongMap!20385) Unit!42993)

(assert (=> bm!63721 (= call!63726 (lemmaInListMapAfterAddingDiffThenInBefore!71 k!1205 (ite (or c!124577 c!124576) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!124577 c!124576) zeroValue!1387 minValue!1387) (ite c!124577 lt!581468 (ite c!124576 lt!581464 lt!581465))))))

(declare-fun b!1300661 () Bool)

(declare-fun e!741942 () Bool)

(declare-fun mapRes!53831 () Bool)

(assert (=> b!1300661 (= e!741942 (and e!741941 mapRes!53831))))

(declare-fun condMapEmpty!53831 () Bool)

(declare-fun mapDefault!53831 () ValueCell!16520)

