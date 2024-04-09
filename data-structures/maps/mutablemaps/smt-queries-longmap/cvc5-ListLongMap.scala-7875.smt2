; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98030 () Bool)

(assert start!98030)

(declare-fun b_free!23695 () Bool)

(declare-fun b_next!23695 () Bool)

(assert (=> start!98030 (= b_free!23695 (not b_next!23695))))

(declare-fun tp!83790 () Bool)

(declare-fun b_and!38195 () Bool)

(assert (=> start!98030 (= tp!83790 b_and!38195)))

(declare-fun b!1123866 () Bool)

(declare-fun e!639840 () Bool)

(declare-datatypes ((V!42761 0))(
  ( (V!42762 (val!14169 Int)) )
))
(declare-datatypes ((tuple2!17874 0))(
  ( (tuple2!17875 (_1!8947 (_ BitVec 64)) (_2!8947 V!42761)) )
))
(declare-datatypes ((List!24708 0))(
  ( (Nil!24705) (Cons!24704 (h!25913 tuple2!17874) (t!35402 List!24708)) )
))
(declare-datatypes ((ListLongMap!15855 0))(
  ( (ListLongMap!15856 (toList!7943 List!24708)) )
))
(declare-fun call!47369 () ListLongMap!15855)

(declare-fun call!47368 () ListLongMap!15855)

(assert (=> b!1123866 (= e!639840 (= call!47369 call!47368))))

(declare-fun b!1123868 () Bool)

(declare-fun res!750957 () Bool)

(declare-fun e!639838 () Bool)

(assert (=> b!1123868 (=> (not res!750957) (not e!639838))))

(declare-datatypes ((array!73276 0))(
  ( (array!73277 (arr!35287 (Array (_ BitVec 32) (_ BitVec 64))) (size!35824 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73276)

(declare-datatypes ((List!24709 0))(
  ( (Nil!24706) (Cons!24705 (h!25914 (_ BitVec 64)) (t!35403 List!24709)) )
))
(declare-fun arrayNoDuplicates!0 (array!73276 (_ BitVec 32) List!24709) Bool)

(assert (=> b!1123868 (= res!750957 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24706))))

(declare-fun b!1123869 () Bool)

(declare-fun res!750956 () Bool)

(declare-fun e!639845 () Bool)

(assert (=> b!1123869 (=> (not res!750956) (not e!639845))))

(declare-fun lt!499233 () array!73276)

(assert (=> b!1123869 (= res!750956 (arrayNoDuplicates!0 lt!499233 #b00000000000000000000000000000000 Nil!24706))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1123870 () Bool)

(declare-fun -!1097 (ListLongMap!15855 (_ BitVec 64)) ListLongMap!15855)

(assert (=> b!1123870 (= e!639840 (= call!47369 (-!1097 call!47368 k!934)))))

(declare-fun b!1123871 () Bool)

(declare-fun e!639843 () Bool)

(declare-fun e!639836 () Bool)

(declare-fun mapRes!44155 () Bool)

(assert (=> b!1123871 (= e!639843 (and e!639836 mapRes!44155))))

(declare-fun condMapEmpty!44155 () Bool)

(declare-datatypes ((ValueCell!13403 0))(
  ( (ValueCellFull!13403 (v!16803 V!42761)) (EmptyCell!13403) )
))
(declare-datatypes ((array!73278 0))(
  ( (array!73279 (arr!35288 (Array (_ BitVec 32) ValueCell!13403)) (size!35825 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73278)

(declare-fun mapDefault!44155 () ValueCell!13403)

