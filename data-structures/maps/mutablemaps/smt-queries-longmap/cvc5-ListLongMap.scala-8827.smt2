; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107222 () Bool)

(assert start!107222)

(declare-fun mapIsEmpty!50893 () Bool)

(declare-fun mapRes!50893 () Bool)

(assert (=> mapIsEmpty!50893 mapRes!50893))

(declare-fun b!1270599 () Bool)

(declare-fun e!724370 () Bool)

(declare-fun e!724371 () Bool)

(assert (=> b!1270599 (= e!724370 (and e!724371 mapRes!50893))))

(declare-fun condMapEmpty!50893 () Bool)

(declare-datatypes ((V!49027 0))(
  ( (V!49028 (val!16512 Int)) )
))
(declare-datatypes ((ValueCell!15584 0))(
  ( (ValueCellFull!15584 (v!19147 V!49027)) (EmptyCell!15584) )
))
(declare-datatypes ((array!82975 0))(
  ( (array!82976 (arr!40020 (Array (_ BitVec 32) ValueCell!15584)) (size!40557 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82975)

(declare-fun mapDefault!50893 () ValueCell!15584)

