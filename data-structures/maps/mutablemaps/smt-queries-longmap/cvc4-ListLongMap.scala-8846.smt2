; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107340 () Bool)

(assert start!107340)

(declare-fun mapIsEmpty!51070 () Bool)

(declare-fun mapRes!51070 () Bool)

(assert (=> mapIsEmpty!51070 mapRes!51070))

(declare-fun mapNonEmpty!51070 () Bool)

(declare-fun tp!97412 () Bool)

(declare-fun e!725258 () Bool)

(assert (=> mapNonEmpty!51070 (= mapRes!51070 (and tp!97412 e!725258))))

(declare-datatypes ((V!49183 0))(
  ( (V!49184 (val!16571 Int)) )
))
(declare-datatypes ((ValueCell!15643 0))(
  ( (ValueCellFull!15643 (v!19206 V!49183)) (EmptyCell!15643) )
))
(declare-datatypes ((array!83183 0))(
  ( (array!83184 (arr!40124 (Array (_ BitVec 32) ValueCell!15643)) (size!40661 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83183)

(declare-fun mapKey!51070 () (_ BitVec 32))

(declare-fun mapValue!51070 () ValueCell!15643)

(declare-fun mapRest!51070 () (Array (_ BitVec 32) ValueCell!15643))

(assert (=> mapNonEmpty!51070 (= (arr!40124 _values!1134) (store mapRest!51070 mapKey!51070 mapValue!51070))))

(declare-fun b!1271661 () Bool)

(declare-fun e!725255 () Bool)

(declare-fun e!725257 () Bool)

(assert (=> b!1271661 (= e!725255 (and e!725257 mapRes!51070))))

(declare-fun condMapEmpty!51070 () Bool)

(declare-fun mapDefault!51070 () ValueCell!15643)

