; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107256 () Bool)

(assert start!107256)

(declare-fun mapIsEmpty!50944 () Bool)

(declare-fun mapRes!50944 () Bool)

(assert (=> mapIsEmpty!50944 mapRes!50944))

(declare-fun b!1270905 () Bool)

(declare-fun e!724627 () Bool)

(declare-fun e!724625 () Bool)

(assert (=> b!1270905 (= e!724627 (and e!724625 mapRes!50944))))

(declare-fun condMapEmpty!50944 () Bool)

(declare-datatypes ((V!49071 0))(
  ( (V!49072 (val!16529 Int)) )
))
(declare-datatypes ((ValueCell!15601 0))(
  ( (ValueCellFull!15601 (v!19164 V!49071)) (EmptyCell!15601) )
))
(declare-datatypes ((array!83037 0))(
  ( (array!83038 (arr!40051 (Array (_ BitVec 32) ValueCell!15601)) (size!40588 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83037)

(declare-fun mapDefault!50944 () ValueCell!15601)

