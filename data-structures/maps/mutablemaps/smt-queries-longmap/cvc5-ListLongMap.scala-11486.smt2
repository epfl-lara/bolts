; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133746 () Bool)

(assert start!133746)

(declare-fun b_free!32077 () Bool)

(declare-fun b_next!32077 () Bool)

(assert (=> start!133746 (= b_free!32077 (not b_next!32077))))

(declare-fun tp!113437 () Bool)

(declare-fun b_and!51657 () Bool)

(assert (=> start!133746 (= tp!113437 b_and!51657)))

(declare-fun b!1563298 () Bool)

(declare-fun e!871298 () Bool)

(assert (=> b!1563298 (= e!871298 false)))

(declare-fun lt!671807 () Bool)

(declare-datatypes ((V!59937 0))(
  ( (V!59938 (val!19482 Int)) )
))
(declare-datatypes ((tuple2!25292 0))(
  ( (tuple2!25293 (_1!12656 (_ BitVec 64)) (_2!12656 V!59937)) )
))
(declare-datatypes ((List!36681 0))(
  ( (Nil!36678) (Cons!36677 (h!38124 tuple2!25292) (t!51535 List!36681)) )
))
(declare-datatypes ((ListLongMap!22739 0))(
  ( (ListLongMap!22740 (toList!11385 List!36681)) )
))
(declare-fun lt!671808 () ListLongMap!22739)

(declare-fun contains!10305 (ListLongMap!22739 (_ BitVec 64)) Bool)

(assert (=> b!1563298 (= lt!671807 (contains!10305 lt!671808 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1563299 () Bool)

(declare-fun res!1068848 () Bool)

(declare-fun e!871301 () Bool)

(assert (=> b!1563299 (=> (not res!1068848) (not e!871301))))

(declare-datatypes ((array!104255 0))(
  ( (array!104256 (arr!50315 (Array (_ BitVec 32) (_ BitVec 64))) (size!50866 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104255)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1563299 (= res!1068848 (not (validKeyInArray!0 (select (arr!50315 _keys!637) from!782))))))

(declare-fun b!1563300 () Bool)

(declare-fun res!1068847 () Bool)

(assert (=> b!1563300 (=> (not res!1068847) (not e!871301))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18368 0))(
  ( (ValueCellFull!18368 (v!22231 V!59937)) (EmptyCell!18368) )
))
(declare-datatypes ((array!104257 0))(
  ( (array!104258 (arr!50316 (Array (_ BitVec 32) ValueCell!18368)) (size!50867 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104257)

(assert (=> b!1563300 (= res!1068847 (and (= (size!50867 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50866 _keys!637) (size!50867 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1563301 () Bool)

(declare-fun e!871300 () Bool)

(declare-fun e!871299 () Bool)

(declare-fun mapRes!59571 () Bool)

(assert (=> b!1563301 (= e!871300 (and e!871299 mapRes!59571))))

(declare-fun condMapEmpty!59571 () Bool)

(declare-fun mapDefault!59571 () ValueCell!18368)

