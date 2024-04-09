; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71172 () Bool)

(assert start!71172)

(declare-fun b_free!13315 () Bool)

(declare-fun b_next!13315 () Bool)

(assert (=> start!71172 (= b_free!13315 (not b_next!13315))))

(declare-fun tp!46705 () Bool)

(declare-fun b_and!22259 () Bool)

(assert (=> start!71172 (= tp!46705 b_and!22259)))

(declare-datatypes ((V!25035 0))(
  ( (V!25036 (val!7560 Int)) )
))
(declare-datatypes ((tuple2!10022 0))(
  ( (tuple2!10023 (_1!5021 (_ BitVec 64)) (_2!5021 V!25035)) )
))
(declare-datatypes ((List!15862 0))(
  ( (Nil!15859) (Cons!15858 (h!16987 tuple2!10022) (t!22217 List!15862)) )
))
(declare-datatypes ((ListLongMap!8859 0))(
  ( (ListLongMap!8860 (toList!4445 List!15862)) )
))
(declare-fun lt!373854 () ListLongMap!8859)

(declare-fun lt!373847 () tuple2!10022)

(declare-fun e!460107 () Bool)

(declare-fun b!826235 () Bool)

(declare-fun lt!373852 () tuple2!10022)

(declare-fun lt!373849 () ListLongMap!8859)

(declare-fun +!1906 (ListLongMap!8859 tuple2!10022) ListLongMap!8859)

(assert (=> b!826235 (= e!460107 (= lt!373854 (+!1906 (+!1906 lt!373849 lt!373847) lt!373852)))))

(declare-fun mapNonEmpty!24163 () Bool)

(declare-fun mapRes!24163 () Bool)

(declare-fun tp!46704 () Bool)

(declare-fun e!460106 () Bool)

(assert (=> mapNonEmpty!24163 (= mapRes!24163 (and tp!46704 e!460106))))

(declare-datatypes ((ValueCell!7097 0))(
  ( (ValueCellFull!7097 (v!9990 V!25035)) (EmptyCell!7097) )
))
(declare-fun mapRest!24163 () (Array (_ BitVec 32) ValueCell!7097))

(declare-datatypes ((array!46192 0))(
  ( (array!46193 (arr!22137 (Array (_ BitVec 32) ValueCell!7097)) (size!22558 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46192)

(declare-fun mapValue!24163 () ValueCell!7097)

(declare-fun mapKey!24163 () (_ BitVec 32))

(assert (=> mapNonEmpty!24163 (= (arr!22137 _values!788) (store mapRest!24163 mapKey!24163 mapValue!24163))))

(declare-fun b!826236 () Bool)

(declare-fun e!460110 () Bool)

(declare-fun e!460108 () Bool)

(assert (=> b!826236 (= e!460110 (and e!460108 mapRes!24163))))

(declare-fun condMapEmpty!24163 () Bool)

(declare-fun mapDefault!24163 () ValueCell!7097)

