; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107184 () Bool)

(assert start!107184)

(declare-fun b!1270257 () Bool)

(declare-fun e!724086 () Bool)

(declare-fun tp_is_empty!32837 () Bool)

(assert (=> b!1270257 (= e!724086 tp_is_empty!32837)))

(declare-fun b!1270258 () Bool)

(declare-fun e!724087 () Bool)

(declare-fun mapRes!50836 () Bool)

(assert (=> b!1270258 (= e!724087 (and e!724086 mapRes!50836))))

(declare-fun condMapEmpty!50836 () Bool)

(declare-datatypes ((V!48975 0))(
  ( (V!48976 (val!16493 Int)) )
))
(declare-datatypes ((ValueCell!15565 0))(
  ( (ValueCellFull!15565 (v!19128 V!48975)) (EmptyCell!15565) )
))
(declare-datatypes ((array!82905 0))(
  ( (array!82906 (arr!39985 (Array (_ BitVec 32) ValueCell!15565)) (size!40522 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82905)

(declare-fun mapDefault!50836 () ValueCell!15565)

