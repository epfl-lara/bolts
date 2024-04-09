; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100550 () Bool)

(assert start!100550)

(declare-fun b_free!25837 () Bool)

(declare-fun b_next!25837 () Bool)

(assert (=> start!100550 (= b_free!25837 (not b_next!25837))))

(declare-fun tp!90502 () Bool)

(declare-fun b_and!42575 () Bool)

(assert (=> start!100550 (= tp!90502 b_and!42575)))

(declare-fun b!1200877 () Bool)

(declare-fun res!799511 () Bool)

(declare-fun e!681991 () Bool)

(assert (=> b!1200877 (=> (not res!799511) (not e!681991))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1200877 (= res!799511 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!47654 () Bool)

(declare-fun mapRes!47654 () Bool)

(assert (=> mapIsEmpty!47654 mapRes!47654))

(declare-fun b!1200878 () Bool)

(declare-fun e!682000 () Bool)

(assert (=> b!1200878 (= e!681991 e!682000)))

(declare-fun res!799502 () Bool)

(assert (=> b!1200878 (=> (not res!799502) (not e!682000))))

(declare-datatypes ((array!77836 0))(
  ( (array!77837 (arr!37559 (Array (_ BitVec 32) (_ BitVec 64))) (size!38096 (_ BitVec 32))) )
))
(declare-fun lt!544182 () array!77836)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77836 (_ BitVec 32)) Bool)

(assert (=> b!1200878 (= res!799502 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!544182 mask!1564))))

(declare-fun _keys!1208 () array!77836)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1200878 (= lt!544182 (array!77837 (store (arr!37559 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38096 _keys!1208)))))

(declare-fun e!681993 () Bool)

(declare-fun b!1200879 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-datatypes ((V!45849 0))(
  ( (V!45850 (val!15327 Int)) )
))
(declare-datatypes ((tuple2!19766 0))(
  ( (tuple2!19767 (_1!9893 (_ BitVec 64)) (_2!9893 V!45849)) )
))
(declare-datatypes ((List!26599 0))(
  ( (Nil!26596) (Cons!26595 (h!27804 tuple2!19766) (t!39423 List!26599)) )
))
(declare-datatypes ((ListLongMap!17747 0))(
  ( (ListLongMap!17748 (toList!8889 List!26599)) )
))
(declare-fun call!57340 () ListLongMap!17747)

(declare-fun call!57339 () ListLongMap!17747)

(declare-fun -!1814 (ListLongMap!17747 (_ BitVec 64)) ListLongMap!17747)

(assert (=> b!1200879 (= e!681993 (= call!57339 (-!1814 call!57340 k!934)))))

(declare-fun b!1200880 () Bool)

(declare-fun e!681992 () Bool)

(declare-fun e!681997 () Bool)

(assert (=> b!1200880 (= e!681992 (and e!681997 mapRes!47654))))

(declare-fun condMapEmpty!47654 () Bool)

(declare-datatypes ((ValueCell!14561 0))(
  ( (ValueCellFull!14561 (v!17966 V!45849)) (EmptyCell!14561) )
))
(declare-datatypes ((array!77838 0))(
  ( (array!77839 (arr!37560 (Array (_ BitVec 32) ValueCell!14561)) (size!38097 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77838)

(declare-fun mapDefault!47654 () ValueCell!14561)

