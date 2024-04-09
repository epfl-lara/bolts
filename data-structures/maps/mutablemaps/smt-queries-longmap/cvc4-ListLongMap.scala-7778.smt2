; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97452 () Bool)

(assert start!97452)

(declare-fun b_free!23387 () Bool)

(declare-fun b_next!23387 () Bool)

(assert (=> start!97452 (= b_free!23387 (not b_next!23387))))

(declare-fun tp!82460 () Bool)

(declare-fun b_and!37631 () Bool)

(assert (=> start!97452 (= tp!82460 b_and!37631)))

(declare-fun b!1111043 () Bool)

(declare-fun e!633620 () Bool)

(declare-datatypes ((V!41989 0))(
  ( (V!41990 (val!13880 Int)) )
))
(declare-datatypes ((tuple2!17626 0))(
  ( (tuple2!17627 (_1!8823 (_ BitVec 64)) (_2!8823 V!41989)) )
))
(declare-datatypes ((List!24361 0))(
  ( (Nil!24358) (Cons!24357 (h!25566 tuple2!17626) (t!34801 List!24361)) )
))
(declare-datatypes ((ListLongMap!15607 0))(
  ( (ListLongMap!15608 (toList!7819 List!24361)) )
))
(declare-fun call!46859 () ListLongMap!15607)

(declare-fun call!46858 () ListLongMap!15607)

(assert (=> b!1111043 (= e!633620 (= call!46859 call!46858))))

(declare-fun b!1111044 () Bool)

(declare-fun e!633623 () Bool)

(declare-fun tp_is_empty!27647 () Bool)

(assert (=> b!1111044 (= e!633623 tp_is_empty!27647)))

(declare-fun b!1111046 () Bool)

(declare-fun res!741518 () Bool)

(declare-fun e!633622 () Bool)

(assert (=> b!1111046 (=> (not res!741518) (not e!633622))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1111046 (= res!741518 (validMask!0 mask!1564))))

(declare-fun b!1111047 () Bool)

(declare-fun res!741509 () Bool)

(assert (=> b!1111047 (=> (not res!741509) (not e!633622))))

(declare-datatypes ((array!72158 0))(
  ( (array!72159 (arr!34728 (Array (_ BitVec 32) (_ BitVec 64))) (size!35265 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72158)

(declare-datatypes ((List!24362 0))(
  ( (Nil!24359) (Cons!24358 (h!25567 (_ BitVec 64)) (t!34802 List!24362)) )
))
(declare-fun arrayNoDuplicates!0 (array!72158 (_ BitVec 32) List!24362) Bool)

(assert (=> b!1111047 (= res!741509 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24359))))

(declare-fun b!1111048 () Bool)

(declare-fun res!741517 () Bool)

(assert (=> b!1111048 (=> (not res!741517) (not e!633622))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1111048 (= res!741517 (validKeyInArray!0 k!934))))

(declare-fun b!1111049 () Bool)

(declare-fun e!633618 () Bool)

(declare-fun mapRes!43288 () Bool)

(assert (=> b!1111049 (= e!633618 (and e!633623 mapRes!43288))))

(declare-fun condMapEmpty!43288 () Bool)

(declare-datatypes ((ValueCell!13114 0))(
  ( (ValueCellFull!13114 (v!16514 V!41989)) (EmptyCell!13114) )
))
(declare-datatypes ((array!72160 0))(
  ( (array!72161 (arr!34729 (Array (_ BitVec 32) ValueCell!13114)) (size!35266 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72160)

(declare-fun mapDefault!43288 () ValueCell!13114)

