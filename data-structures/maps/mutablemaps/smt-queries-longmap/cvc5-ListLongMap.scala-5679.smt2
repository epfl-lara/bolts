; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73886 () Bool)

(assert start!73886)

(declare-fun b_free!14773 () Bool)

(declare-fun b_next!14773 () Bool)

(assert (=> start!73886 (= b_free!14773 (not b_next!14773))))

(declare-fun tp!51823 () Bool)

(declare-fun b_and!24543 () Bool)

(assert (=> start!73886 (= tp!51823 b_and!24543)))

(declare-fun b!867417 () Bool)

(declare-fun e!483203 () Bool)

(declare-fun e!483204 () Bool)

(declare-fun mapRes!26963 () Bool)

(assert (=> b!867417 (= e!483203 (and e!483204 mapRes!26963))))

(declare-fun condMapEmpty!26963 () Bool)

(declare-datatypes ((V!27593 0))(
  ( (V!27594 (val!8502 Int)) )
))
(declare-datatypes ((ValueCell!8015 0))(
  ( (ValueCellFull!8015 (v!10923 V!27593)) (EmptyCell!8015) )
))
(declare-datatypes ((array!49958 0))(
  ( (array!49959 (arr!24006 (Array (_ BitVec 32) ValueCell!8015)) (size!24447 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49958)

(declare-fun mapDefault!26963 () ValueCell!8015)

