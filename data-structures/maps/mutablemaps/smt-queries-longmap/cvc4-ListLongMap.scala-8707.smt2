; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105732 () Bool)

(assert start!105732)

(declare-fun b_free!27281 () Bool)

(declare-fun b_next!27281 () Bool)

(assert (=> start!105732 (= b_free!27281 (not b_next!27281))))

(declare-fun tp!95370 () Bool)

(declare-fun b_and!45175 () Bool)

(assert (=> start!105732 (= tp!95370 b_and!45175)))

(declare-fun b!1258916 () Bool)

(declare-fun e!716126 () Bool)

(declare-fun e!716127 () Bool)

(declare-fun mapRes!50071 () Bool)

(assert (=> b!1258916 (= e!716126 (and e!716127 mapRes!50071))))

(declare-fun condMapEmpty!50071 () Bool)

(declare-datatypes ((V!48275 0))(
  ( (V!48276 (val!16154 Int)) )
))
(declare-datatypes ((ValueCell!15328 0))(
  ( (ValueCellFull!15328 (v!18856 V!48275)) (EmptyCell!15328) )
))
(declare-datatypes ((array!81983 0))(
  ( (array!81984 (arr!39542 (Array (_ BitVec 32) ValueCell!15328)) (size!40079 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81983)

(declare-fun mapDefault!50071 () ValueCell!15328)

