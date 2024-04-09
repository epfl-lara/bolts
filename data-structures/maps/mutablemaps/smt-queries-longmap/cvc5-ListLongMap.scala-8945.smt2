; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108432 () Bool)

(assert start!108432)

(declare-fun b_free!27943 () Bool)

(declare-fun b_next!27943 () Bool)

(assert (=> start!108432 (= b_free!27943 (not b_next!27943))))

(declare-fun tp!98939 () Bool)

(declare-fun b_and!46013 () Bool)

(assert (=> start!108432 (= tp!98939 b_and!46013)))

(declare-fun b!1279222 () Bool)

(declare-fun e!730913 () Bool)

(assert (=> b!1279222 (= e!730913 false)))

(declare-datatypes ((V!49881 0))(
  ( (V!49882 (val!16866 Int)) )
))
(declare-fun zeroValue!1387 () V!49881)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!15893 0))(
  ( (ValueCellFull!15893 (v!19464 V!49881)) (EmptyCell!15893) )
))
(declare-datatypes ((array!84201 0))(
  ( (array!84202 (arr!40600 (Array (_ BitVec 32) ValueCell!15893)) (size!41151 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84201)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84203 0))(
  ( (array!84204 (arr!40601 (Array (_ BitVec 32) (_ BitVec 64))) (size!41152 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84203)

(declare-fun minValue!1387 () V!49881)

(declare-fun lt!575932 () Bool)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!21726 0))(
  ( (tuple2!21727 (_1!10873 (_ BitVec 64)) (_2!10873 V!49881)) )
))
(declare-datatypes ((List!28938 0))(
  ( (Nil!28935) (Cons!28934 (h!30143 tuple2!21726) (t!42485 List!28938)) )
))
(declare-datatypes ((ListLongMap!19395 0))(
  ( (ListLongMap!19396 (toList!9713 List!28938)) )
))
(declare-fun contains!7766 (ListLongMap!19395 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4733 (array!84203 array!84201 (_ BitVec 32) (_ BitVec 32) V!49881 V!49881 (_ BitVec 32) Int) ListLongMap!19395)

(assert (=> b!1279222 (= lt!575932 (contains!7766 (getCurrentListMap!4733 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1279223 () Bool)

(declare-fun res!849857 () Bool)

(assert (=> b!1279223 (=> (not res!849857) (not e!730913))))

(declare-datatypes ((List!28939 0))(
  ( (Nil!28936) (Cons!28935 (h!30144 (_ BitVec 64)) (t!42486 List!28939)) )
))
(declare-fun arrayNoDuplicates!0 (array!84203 (_ BitVec 32) List!28939) Bool)

(assert (=> b!1279223 (= res!849857 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28936))))

(declare-fun b!1279224 () Bool)

(declare-fun res!849855 () Bool)

(assert (=> b!1279224 (=> (not res!849855) (not e!730913))))

(assert (=> b!1279224 (= res!849855 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41152 _keys!1741))))))

(declare-fun b!1279225 () Bool)

(declare-fun e!730914 () Bool)

(declare-fun e!730915 () Bool)

(declare-fun mapRes!51926 () Bool)

(assert (=> b!1279225 (= e!730914 (and e!730915 mapRes!51926))))

(declare-fun condMapEmpty!51926 () Bool)

(declare-fun mapDefault!51926 () ValueCell!15893)

