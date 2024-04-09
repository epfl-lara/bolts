; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96034 () Bool)

(assert start!96034)

(declare-fun b_free!22651 () Bool)

(declare-fun b_next!22651 () Bool)

(assert (=> start!96034 (= b_free!22651 (not b_next!22651))))

(declare-fun tp!79803 () Bool)

(declare-fun b_and!35995 () Bool)

(assert (=> start!96034 (= tp!79803 b_and!35995)))

(declare-fun b!1088012 () Bool)

(declare-fun e!621516 () Bool)

(assert (=> b!1088012 (= e!621516 true)))

(declare-datatypes ((V!40665 0))(
  ( (V!40666 (val!13383 Int)) )
))
(declare-datatypes ((tuple2!17058 0))(
  ( (tuple2!17059 (_1!8539 (_ BitVec 64)) (_2!8539 V!40665)) )
))
(declare-datatypes ((List!23699 0))(
  ( (Nil!23696) (Cons!23695 (h!24904 tuple2!17058) (t!33415 List!23699)) )
))
(declare-datatypes ((ListLongMap!15039 0))(
  ( (ListLongMap!15040 (toList!7535 List!23699)) )
))
(declare-fun lt!484439 () ListLongMap!15039)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun lt!484449 () ListLongMap!15039)

(declare-fun -!815 (ListLongMap!15039 (_ BitVec 64)) ListLongMap!15039)

(assert (=> b!1088012 (= (-!815 lt!484439 k!904) lt!484449)))

(declare-fun lt!484442 () ListLongMap!15039)

(declare-datatypes ((Unit!35745 0))(
  ( (Unit!35746) )
))
(declare-fun lt!484448 () Unit!35745)

(declare-fun zeroValue!831 () V!40665)

(declare-fun addRemoveCommutativeForDiffKeys!53 (ListLongMap!15039 (_ BitVec 64) V!40665 (_ BitVec 64)) Unit!35745)

(assert (=> b!1088012 (= lt!484448 (addRemoveCommutativeForDiffKeys!53 lt!484442 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(declare-fun b!1088013 () Bool)

(declare-fun e!621518 () Bool)

(declare-fun e!621514 () Bool)

(assert (=> b!1088013 (= e!621518 e!621514)))

(declare-fun res!725726 () Bool)

(assert (=> b!1088013 (=> (not res!725726) (not e!621514))))

(declare-datatypes ((array!70198 0))(
  ( (array!70199 (arr!33769 (Array (_ BitVec 32) (_ BitVec 64))) (size!34306 (_ BitVec 32))) )
))
(declare-fun lt!484440 () array!70198)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70198 (_ BitVec 32)) Bool)

(assert (=> b!1088013 (= res!725726 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!484440 mask!1414))))

(declare-fun _keys!1070 () array!70198)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1088013 (= lt!484440 (array!70199 (store (arr!33769 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34306 _keys!1070)))))

(declare-fun b!1088014 () Bool)

(declare-fun e!621519 () Bool)

(declare-fun e!621513 () Bool)

(declare-fun mapRes!41734 () Bool)

(assert (=> b!1088014 (= e!621519 (and e!621513 mapRes!41734))))

(declare-fun condMapEmpty!41734 () Bool)

(declare-datatypes ((ValueCell!12617 0))(
  ( (ValueCellFull!12617 (v!16005 V!40665)) (EmptyCell!12617) )
))
(declare-datatypes ((array!70200 0))(
  ( (array!70201 (arr!33770 (Array (_ BitVec 32) ValueCell!12617)) (size!34307 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70200)

(declare-fun mapDefault!41734 () ValueCell!12617)

