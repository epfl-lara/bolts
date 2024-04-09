; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107102 () Bool)

(assert start!107102)

(declare-fun b_free!27571 () Bool)

(declare-fun b_next!27571 () Bool)

(assert (=> start!107102 (= b_free!27571 (not b_next!27571))))

(declare-fun tp!96941 () Bool)

(declare-fun b_and!45613 () Bool)

(assert (=> start!107102 (= tp!96941 b_and!45613)))

(declare-fun b!1269289 () Bool)

(declare-fun e!723472 () Bool)

(declare-fun e!723469 () Bool)

(declare-fun mapRes!50713 () Bool)

(assert (=> b!1269289 (= e!723472 (and e!723469 mapRes!50713))))

(declare-fun condMapEmpty!50713 () Bool)

(declare-datatypes ((V!48867 0))(
  ( (V!48868 (val!16452 Int)) )
))
(declare-datatypes ((ValueCell!15524 0))(
  ( (ValueCellFull!15524 (v!19087 V!48867)) (EmptyCell!15524) )
))
(declare-datatypes ((array!82747 0))(
  ( (array!82748 (arr!39906 (Array (_ BitVec 32) ValueCell!15524)) (size!40443 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82747)

(declare-fun mapDefault!50713 () ValueCell!15524)

