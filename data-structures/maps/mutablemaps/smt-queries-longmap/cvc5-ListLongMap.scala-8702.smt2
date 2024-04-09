; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105682 () Bool)

(assert start!105682)

(declare-fun b_free!27247 () Bool)

(declare-fun b_next!27247 () Bool)

(assert (=> start!105682 (= b_free!27247 (not b_next!27247))))

(declare-fun tp!95264 () Bool)

(declare-fun b_and!45131 () Bool)

(assert (=> start!105682 (= tp!95264 b_and!45131)))

(declare-fun mapIsEmpty!50017 () Bool)

(declare-fun mapRes!50017 () Bool)

(assert (=> mapIsEmpty!50017 mapRes!50017))

(declare-fun b!1258343 () Bool)

(declare-fun e!715713 () Bool)

(declare-fun e!715711 () Bool)

(assert (=> b!1258343 (= e!715713 (and e!715711 mapRes!50017))))

(declare-fun condMapEmpty!50017 () Bool)

(declare-datatypes ((V!48231 0))(
  ( (V!48232 (val!16137 Int)) )
))
(declare-datatypes ((ValueCell!15311 0))(
  ( (ValueCellFull!15311 (v!18839 V!48231)) (EmptyCell!15311) )
))
(declare-datatypes ((array!81917 0))(
  ( (array!81918 (arr!39510 (Array (_ BitVec 32) ValueCell!15311)) (size!40047 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81917)

(declare-fun mapDefault!50017 () ValueCell!15311)

