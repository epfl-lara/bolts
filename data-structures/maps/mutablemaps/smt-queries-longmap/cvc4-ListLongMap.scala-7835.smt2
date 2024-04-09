; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97794 () Bool)

(assert start!97794)

(declare-fun b_free!23459 () Bool)

(declare-fun b_next!23459 () Bool)

(assert (=> start!97794 (= b_free!23459 (not b_next!23459))))

(declare-fun tp!83082 () Bool)

(declare-fun b_and!37755 () Bool)

(assert (=> start!97794 (= tp!83082 b_and!37755)))

(declare-fun b!1118028 () Bool)

(declare-fun e!636887 () Bool)

(declare-fun tp_is_empty!27989 () Bool)

(assert (=> b!1118028 (= e!636887 tp_is_empty!27989)))

(declare-fun mapIsEmpty!43801 () Bool)

(declare-fun mapRes!43801 () Bool)

(assert (=> mapIsEmpty!43801 mapRes!43801))

(declare-fun b!1118029 () Bool)

(declare-fun res!746749 () Bool)

(declare-fun e!636881 () Bool)

(assert (=> b!1118029 (=> (not res!746749) (not e!636881))))

(declare-datatypes ((array!72808 0))(
  ( (array!72809 (arr!35053 (Array (_ BitVec 32) (_ BitVec 64))) (size!35590 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72808)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72808 (_ BitVec 32)) Bool)

(assert (=> b!1118029 (= res!746749 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1118030 () Bool)

(declare-fun res!746750 () Bool)

(assert (=> b!1118030 (=> (not res!746750) (not e!636881))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1118030 (= res!746750 (validKeyInArray!0 k!934))))

(declare-fun b!1118031 () Bool)

(declare-fun e!636886 () Bool)

(assert (=> b!1118031 (= e!636886 (and e!636887 mapRes!43801))))

(declare-fun condMapEmpty!43801 () Bool)

(declare-datatypes ((V!42445 0))(
  ( (V!42446 (val!14051 Int)) )
))
(declare-datatypes ((ValueCell!13285 0))(
  ( (ValueCellFull!13285 (v!16685 V!42445)) (EmptyCell!13285) )
))
(declare-datatypes ((array!72810 0))(
  ( (array!72811 (arr!35054 (Array (_ BitVec 32) ValueCell!13285)) (size!35591 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72810)

(declare-fun mapDefault!43801 () ValueCell!13285)

