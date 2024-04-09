; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100792 () Bool)

(assert start!100792)

(declare-fun b_free!25927 () Bool)

(declare-fun b_next!25927 () Bool)

(assert (=> start!100792 (= b_free!25927 (not b_next!25927))))

(declare-fun tp!90784 () Bool)

(declare-fun b_and!42851 () Bool)

(assert (=> start!100792 (= tp!90784 b_and!42851)))

(declare-fun bm!58448 () Bool)

(declare-fun call!58452 () Bool)

(declare-fun call!58454 () Bool)

(assert (=> bm!58448 (= call!58452 call!58454)))

(declare-fun b!1205371 () Bool)

(declare-fun res!801839 () Bool)

(declare-fun e!684564 () Bool)

(assert (=> b!1205371 (=> (not res!801839) (not e!684564))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1205371 (= res!801839 (validMask!0 mask!1564))))

(declare-fun bm!58449 () Bool)

(declare-datatypes ((Unit!39885 0))(
  ( (Unit!39886) )
))
(declare-fun call!58458 () Unit!39885)

(declare-fun call!58455 () Unit!39885)

(assert (=> bm!58449 (= call!58458 call!58455)))

(declare-fun b!1205372 () Bool)

(declare-fun e!684561 () Unit!39885)

(declare-fun lt!546686 () Unit!39885)

(assert (=> b!1205372 (= e!684561 lt!546686)))

(declare-fun lt!546690 () Unit!39885)

(assert (=> b!1205372 (= lt!546690 call!58455)))

(declare-datatypes ((V!45969 0))(
  ( (V!45970 (val!15372 Int)) )
))
(declare-datatypes ((tuple2!19850 0))(
  ( (tuple2!19851 (_1!9935 (_ BitVec 64)) (_2!9935 V!45969)) )
))
(declare-datatypes ((List!26677 0))(
  ( (Nil!26674) (Cons!26673 (h!27882 tuple2!19850) (t!39591 List!26677)) )
))
(declare-datatypes ((ListLongMap!17831 0))(
  ( (ListLongMap!17832 (toList!8931 List!26677)) )
))
(declare-fun lt!546692 () ListLongMap!17831)

(declare-fun lt!546693 () ListLongMap!17831)

(declare-fun zeroValue!944 () V!45969)

(declare-fun +!3963 (ListLongMap!17831 tuple2!19850) ListLongMap!17831)

(assert (=> b!1205372 (= lt!546692 (+!3963 lt!546693 (tuple2!19851 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(assert (=> b!1205372 call!58454))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun minValue!944 () V!45969)

(declare-fun addStillContains!1028 (ListLongMap!17831 (_ BitVec 64) V!45969 (_ BitVec 64)) Unit!39885)

(assert (=> b!1205372 (= lt!546686 (addStillContains!1028 lt!546692 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun call!58451 () ListLongMap!17831)

(declare-fun contains!6936 (ListLongMap!17831 (_ BitVec 64)) Bool)

(assert (=> b!1205372 (contains!6936 call!58451 k!934)))

(declare-fun b!1205373 () Bool)

(declare-fun res!801846 () Bool)

(assert (=> b!1205373 (=> (not res!801846) (not e!684564))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1205373 (= res!801846 (validKeyInArray!0 k!934))))

(declare-fun b!1205374 () Bool)

(declare-fun e!684560 () Bool)

(declare-fun e!684568 () Bool)

(declare-fun mapRes!47802 () Bool)

(assert (=> b!1205374 (= e!684560 (and e!684568 mapRes!47802))))

(declare-fun condMapEmpty!47802 () Bool)

(declare-datatypes ((ValueCell!14606 0))(
  ( (ValueCellFull!14606 (v!18017 V!45969)) (EmptyCell!14606) )
))
(declare-datatypes ((array!78020 0))(
  ( (array!78021 (arr!37647 (Array (_ BitVec 32) ValueCell!14606)) (size!38184 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78020)

(declare-fun mapDefault!47802 () ValueCell!14606)

