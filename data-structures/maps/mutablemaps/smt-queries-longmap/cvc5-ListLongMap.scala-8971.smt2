; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108588 () Bool)

(assert start!108588)

(declare-fun b_free!28099 () Bool)

(declare-fun b_next!28099 () Bool)

(assert (=> start!108588 (= b_free!28099 (not b_next!28099))))

(declare-fun tp!99408 () Bool)

(declare-fun b_and!46169 () Bool)

(assert (=> start!108588 (= tp!99408 b_and!46169)))

(declare-fun b!1281289 () Bool)

(declare-fun e!732083 () Bool)

(declare-fun e!732088 () Bool)

(declare-fun mapRes!52160 () Bool)

(assert (=> b!1281289 (= e!732083 (and e!732088 mapRes!52160))))

(declare-fun condMapEmpty!52160 () Bool)

(declare-datatypes ((V!50089 0))(
  ( (V!50090 (val!16944 Int)) )
))
(declare-datatypes ((ValueCell!15971 0))(
  ( (ValueCellFull!15971 (v!19542 V!50089)) (EmptyCell!15971) )
))
(declare-datatypes ((array!84503 0))(
  ( (array!84504 (arr!40751 (Array (_ BitVec 32) ValueCell!15971)) (size!41302 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84503)

(declare-fun mapDefault!52160 () ValueCell!15971)

