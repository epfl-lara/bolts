; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96750 () Bool)

(assert start!96750)

(declare-fun b_free!23135 () Bool)

(declare-fun b_next!23135 () Bool)

(assert (=> start!96750 (= b_free!23135 (not b_next!23135))))

(declare-fun tp!81350 () Bool)

(declare-fun b_and!37035 () Bool)

(assert (=> start!96750 (= tp!81350 b_and!37035)))

(declare-fun b!1099998 () Bool)

(declare-fun e!627881 () Bool)

(declare-fun k!904 () (_ BitVec 64))

(assert (=> b!1099998 (= e!627881 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 k!904)))))

(declare-fun e!627883 () Bool)

(assert (=> b!1099998 e!627883))

(declare-fun res!734141 () Bool)

(assert (=> b!1099998 (=> (not res!734141) (not e!627883))))

(declare-datatypes ((V!41373 0))(
  ( (V!41374 (val!13649 Int)) )
))
(declare-datatypes ((tuple2!17412 0))(
  ( (tuple2!17413 (_1!8716 (_ BitVec 64)) (_2!8716 V!41373)) )
))
(declare-datatypes ((List!24087 0))(
  ( (Nil!24084) (Cons!24083 (h!25292 tuple2!17412) (t!34275 List!24087)) )
))
(declare-datatypes ((ListLongMap!15393 0))(
  ( (ListLongMap!15394 (toList!7712 List!24087)) )
))
(declare-fun lt!492712 () ListLongMap!15393)

(declare-fun lt!492715 () ListLongMap!15393)

(declare-fun lt!492713 () tuple2!17412)

(declare-fun +!3347 (ListLongMap!15393 tuple2!17412) ListLongMap!15393)

(assert (=> b!1099998 (= res!734141 (= lt!492712 (+!3347 lt!492715 lt!492713)))))

(declare-fun zeroValue!831 () V!41373)

(assert (=> b!1099998 (= lt!492713 (tuple2!17413 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1099999 () Bool)

(declare-fun e!627885 () Bool)

(declare-fun e!627880 () Bool)

(declare-fun mapRes!42556 () Bool)

(assert (=> b!1099999 (= e!627885 (and e!627880 mapRes!42556))))

(declare-fun condMapEmpty!42556 () Bool)

(declare-datatypes ((ValueCell!12883 0))(
  ( (ValueCellFull!12883 (v!16277 V!41373)) (EmptyCell!12883) )
))
(declare-datatypes ((array!71238 0))(
  ( (array!71239 (arr!34281 (Array (_ BitVec 32) ValueCell!12883)) (size!34818 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71238)

(declare-fun mapDefault!42556 () ValueCell!12883)

